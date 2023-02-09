/*
 * ADC.c
 *
 * Created: 06-01-2023 11:49:39
 *  Author: Abdel, SAAD
 */ 

#include <avr/io.h>

void init_ADC(){
	
		ADMUX|=(1<<ADLAR)|(1<<REFS0); // Use Vref as reference. 3.3V connected
		ADCSRA|=(1<<ADEN)|(1<<ADATE)|(1<<ADPS2); 
		ADCSRA|= (1<<ADIE)|(1<<ADSC);; // ENABLE interrupt. start sample (start convertion)
		ADCSRB|=(1<<ADTS2)|(1<<ADTS1); // Timer1 overflow interrupt som trigger source til adc converteren.
		//DIDR0 =~DIDR0;
		//DIDR2 =0xff; 
}