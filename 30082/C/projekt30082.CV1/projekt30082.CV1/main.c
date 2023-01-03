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


uint8_t a = 0;
uint32_t milli = 0;


//timers
uint16_t cycle_time = 1;
uint32_t prev_cycle_time = 0;

uint32_t millis(){
	return milli;
}
ISR(TIMER1_COMPA_vect){     //interrupt every 1ms, set through timer prescale and counter compare
	
	milli++;           
	TCNT1 = 0x0000;   // reset counter for next COMPA event
	//PORTB ^= (1 << PB7);
}


void init(){
	DDRB |= (1 << PB7);  
	
	
	
	TCNT1 = 0x0000; // timer1 counter reset
	TCCR1B |= (1 << CS11) | (1 << CS10); // clk/64
	TCCR1B |= (1 << WGM12); // CTC  operation mode
	TIMSK1 |= (1 << OCIE1A);
	
	OCR1AH = 0x00;
	OCR1AL = 0xFA; // 250    247   250 is theoretical val, 247 is checked with oscilloscope
	
	
	sei();
}
int main (void){
	
	init();
	SPI_init_master(0,0);
	uart_init(19200);
	
	while (1){
		if (millis() - prev_cycle_time >= 20){    
				prev_cycle_time = millis();
				
				SPI_write(0xC3);
				SPI_write(a);
				a++;
			}
			
			
			

		
	}
	
	
	
	
	
}


