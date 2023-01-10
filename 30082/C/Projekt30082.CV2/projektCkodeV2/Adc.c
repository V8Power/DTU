/*
 * Adc.c
 *
 * Created: 06-01-2023 11:14:07
 *  Author: abid
 */ 

#include <avr/io.h>
#include <stdio.h>
#include <stdlib.h>
#include <avr/interrupt.h>
#include "ADC.h"

void enable_ADC(){

	ADMUX |= (1 << REFS0);
	ADCSRA |= (1 << ADEN) | (1 << ADSC) | ( 0<< ADATE) | (1 << ADPS2) | (1 <<
	ADPS1) | (1 << ADPS0) | (0 << ADIE) ;
}
void ADC_set_channel(uint8_t channel){
	//ADMUX &= 0xF8 + (channel & 0x07); //only allow the first 7 channles andkeep the rest of ADMUX untouched
	
	DIDR0 |= ( 1 << ADC0D);
}
uint16_t ADC_get_result(){
	//ADCSRA |= (1 << ADSC);
	//ADCSRA &= ~(1 << ADIF);
	uint16_t result = 0;
	result |= ADCL;
	result |= ADCH << 8;
	return result;
}
void ADC_start_conversion(){
	ADCSRA |= (1 << ADSC);
}