/*
 * ADC.c
 *
 * Created: 06-01-2023 11:49:39
 *  Author: Abdel, SAAD
 */ 

#include <avr/io.h>

void init_ADC(){
	/*
	ADMUX|=(1<<ADLAR)|(1<<REFS0);
	ADCSRA|=((1<<ADEN)|(1<<ADATE)|(1<<ADIE)|(1<<ADPS1)|(1<<ADPS2));
	ADCSRA|=(1<<ADSC);
	//DIDR0 = 0xfe; //enabler ADC0
	//DIDR2 = 0xff; //disabler alt andet
	ADCSRB |=(1<<ADTS1)|(1<<ADTS2); //sæt auto trigger source til timer/counter0 overflow.
	*/
	
		ADMUX|=(1<<ADLAR)|(1<<REFS0); // Brug AVcc som reference spændningen, dvs 5 V hvis valgt på pin i arduino
		ADCSRA|=(1<<ADEN)|(1<<ADATE)|(1<<ADPS2); //enable adc, auto triggermode, og 128 prescalling => clock=125 kh
		ADCSRA|= (1<<ADIE)|(1<<ADSC);; // ENABLE interrupt. start sample (start convertion)
		ADCSRB|=(1<<ADTS2)|(1<<ADTS1); // Timer1 overflow interrupt som trigger source til adc converteren.
		//DIDR0 =~DIDR0;
		//DIDR2 =0xff; 
}