
#include "SPI.h"



void SPI_init_master(bool CPOLc, bool CPHAc){
	DDRB |= (1 << PB0) | (1 << PB1) | (1 << PB2);
	//PORTB &= ~(1 << PB0);
	PORTB |= (1 << PB0);
	PORTB |= (1<< PB3);
	SPCR = 0;
	SPCR|= (0 << SPIE) | ( 1 << MSTR) | ( 1 << SPR1) | (0<< SPR0) | (1 << SPE) | (CPOLc <<CPOL | CPHAc << CPHA) ;
	SPDR = 0;
	//SPSR |= (1 << SPI2X);
	
}
void SPI_init_slave(){
	DDRB |=  (1 << PB3) ;
	PORTB |= (1 << PB0) | (1 << PB1) | (1 << PB2);
	
	
	
	SPCR|= (0 << SPIE) |  ( 1 << SPR1) | (0<< SPR0) | (1 << SPE) | (1<<CPOL) ;
	SPDR = 0;
}


char SPI_read(){
	//PORTB &= ~(1 << PB0);
	SPDR = 0;
	while(!(SPSR &(1<<SPIF))) ; 
	unsigned char data = SPDR;
	return data;
	//PORTB |= (1 << PB0);
	
	
	
}
unsigned char SPI_read_write(char dat_in){
	//PORTB &= ~(1 << PB0);
	SPDR = dat_in;
	while(!(SPSR &(1<<SPIF))) ;
	unsigned char data = SPDR;
	return data;
	//PORTB |= (1 << PB0);
	
	
	
}


void SPI_write(unsigned char data){
	
	//PORTB &= ~(1 << PB0);
	SPDR = data;
	while(!(SPSR &(1<<SPIF))) ;
	 
	//PORTB |= (1 << PB0);
	
	
	
}

uint32_t fpga_get_data() {
	uint8_t SPI_read_data[10];
	uint8_t xor8 = 0;
	uint32_t gen_data = 0;
	for (int d = 0; d < 14; d++){
		if (d < 4){
			PORTB &= ~(1 << PB0);
			SPI_write(0xA1);
			PORTB |= (1 << PB0);
		}
		else if (d == 4) {
			PORTB &= ~(1 << PB0);
			SPI_read_data[0] = SPI_read_write(0xAA);
			PORTB |= (1 << PB0);
		}
		else if (d == 5){
			PORTB &= ~(1 << PB0);
			
			SPI_read_data[2] = SPI_read_write(0xAA);
			
			
			PORTB |= (1 << PB0);
		}
		else if (d > 4 && d < 14){
			PORTB &= ~(1 << PB0);
			SPI_read_data[(d - 5)] = SPI_read();
			PORTB |= (1 << PB0);
		}
	}
	xor8 = SPI_read_data[2] ^ SPI_read_data[3] ^ SPI_read_data[4] ^ SPI_read_data[5] ^  SPI_read_data[6] ;
	if ((xor8 == SPI_read_data[7]) && (SPI_read_data[2] == 0xAA) && (SPI_read_data[3] == 0xFF)){
	
	gen_data |= SPI_read_data[4] ;
	gen_data  <<= 16;
	
	gen_data |= (SPI_read_data[5] << 8);
	gen_data |= SPI_read_data[6] ;
	}
	else {
		gen_data = 0x37000000;
	}
	/*for (int v = 0; v < 10 ; v++){
		uart_send_char(SPI_read_data[v]);
		//uart_send_char(v);
	}*/
	return gen_data;
}