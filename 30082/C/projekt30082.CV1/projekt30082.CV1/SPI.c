
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
	PORTB &= ~(1 << PB0);
	SPDR = dat_in;
	while(!(SPSR &(1<<SPIF))) ;
	unsigned char data = SPDR;
	return data;
	PORTB |= (1 << PB0);
	
	
	
}


void SPI_write(unsigned char data){
	
	PORTB &= ~(1 << PB0);
	SPDR = data;
	while(!(SPSR &(1<<SPIF))) ;
	 
	PORTB |= (1 << PB0);
	
	
	
}