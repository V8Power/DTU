/*
 * Timer.c
 *
 * Created: 06-01-2023 11:33:33
 *  Author: abid
 */ 


#include <avr/io.h>
#include <stdio.h>
#include <stdlib.h>
#include <avr/interrupt.h>

#define F_CPU 16000000UL
#define BAUD 115200
#define UBRR ((F_CPU/8/BAUD)-1)


void timerinit(){
 	DDRB |= (1 << PB7);
 	TCNT1 = 0x0000; // timer1 counter reset
 	TCCR1B |= (1 << CS11) | (1 << CS10); // clk/64
 	TCCR1B |= (1 << WGM12); // CTC  operation mode
 	TIMSK1 |= (1 << OCIE1A);
 	OCR1AH = 0x00;
 	OCR1AL = 0x18; // 250    247   250 is theoretical val, 247 is checked with oscilloscope
 	sei();
 }
