/*
 * ADC.c
 *
 * Created: 05-01-2023 09:17:56
 *  Author: Saad, Hakim, Felix
 */ 

#include <avr/interrupt.h>
#include <avr/io.h>
#include <stdio.h>

void ADCinit (){
	ADCSRA |= (1<<ADEN) | (1<<ADIE) | (1<<ADPS2)  | (1<<ADATE); // ADC ENABLE
	ADCSRB |= (1<<ADTS2) | (1<<ADTS0); //TIMER COUNTER COMPARE MATCH
	ADMUX  |= (1<< ADLAR);
}

