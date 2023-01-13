/*
* main.c
*
* Created: 9/1/2022 8:15:36 AM
*  Author: felix
*/









#include <avr/io.h>
#include <stdio.h>
#include <stdlib.h>
#include <avr/interrupt.h>



#include "SPI.h"

#include "uart.h"


uint16_t a = 0;
uint32_t micro = 0;

char test_data[20] = {0x55, 0xAA,0x00,0x14,0x02,0x20,0x23,0x56,0x78, 0x98, 0xA5, 0xE5, 0xFF, 0xC3, 0xA4, 0x99, 0x78, 0x50, 0x00, 0x00};
//timers
uint16_t cycle_time = 1;
uint32_t prev_cycle_time = 0;
//char SPI_read_data[10];

//generator
uint8_t data_ok = 0;
uint8_t freq = 0;
uint8_t shape = 0;
uint8_t ampl = 0;
uint32_t micros(){
	return micro;
}
ISR(TIMER1_COMPA_vect){     //interrupt every 1ms, set through timer prescale and counter compare
	
	micro++;
	TCNT1 = 0x0000;   // reset counter for next COMPA event
	//PORTB ^= (1 << PB7);
}


void init(){
	DDRB |= (1 << PB7);
	PORTB |= (1 << PB6);
	
	
	TCNT1 = 0x0000; // timer1 counter reset
	TCCR1B |= (1 << CS11) | (1 << CS10); // clk/64
	TCCR1B |= (1 << WGM12); // CTC  operation mode
	TIMSK1 |= (1 << OCIE1A);
	
	OCR1AH = 0x00;
	//OCR1AL = 0xFA; // 250    247   250 is theoretical val, 247 is checked with oscilloscope
	OCR1AL = 0x18; // 250    247   250 is theoretical val, 247 is checked with oscilloscope
	
	
	sei();
}
int main (void){
	
	init();
	SPI_init_master(0,0);
	uart_init(115200);
	
	while (1){
		if (micros() - prev_cycle_time >= 1){
			prev_cycle_time = micros();
			
			
			//char spi_data = SPI_read();
			/*if (PINB & (1 << PB6)){
			SPI_write(0xAA);
			}
			PORTB &= ~(1 << PB0);
			char spi_data = SPI_read_write(0xA1);
			PORTB |= (1 << PB0);
			uart_send_char(spi_data);*/
			
			/*if (a== 255){
			a=0;
			}
			if (a < 5) {
			SPI_read();
			
			}
			else if (a == 5) {
			PORTB &= ~(1 << PB0);
			
			
			SPI_read_data[a -5] = SPI_read_write(0xAA);
			PORTB |= (1 << PB0);
			}
			else {
			SPI_read_data[a-5] = SPI_read();
			}
			a++;
			*/
			/*for (int d = 0; d < 14; d++){
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
			}*/
			//a++;
			//SPI_read_data[9] = 0xAA ^ 0xFF ^ 0x21 ^ 0x23 ^ 0x61;
			
			uint8_t spi_out[8] = {0xDC, 0xCA, 0x01, 0xFF, 0xea, 0x98, 0x00};
				
			if (a > 8){
				a = 0;
				for (int v = 0; v < 8 ; v++){
					PORTB &= ~(1 << PB0);
					SPI_write(spi_out[v]);
					PORTB |= (1 << PB0);
				}
				
			}
			/*data_ok = 0;
			freq = 0;
			ampl = 0;
			shape = 0;
			uint32_t test = 0;
			test = fpga_get_data();
			data_ok |= (test >> 24) & 0xFF000000;
			freq |= (test >> 16);
			ampl |= (test >> 8); 
			shape |= test & 0xFF;
			uart_send_char(data_ok);
			uart_send_char(freq);
			uart_send_char(ampl);
			uart_send_char(shape);  */
			a++;;
			
		}
		
		
		

		
	}
}








