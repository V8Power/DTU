/*
 * Timer.c
 *
 * Created: 06-01-2023 12:10:00
 *  Author: Abdel, SAAD
 */ 


#include <avr/io.h>




void init_timer()
{
   	TCCR1A=0; // Timer1 i normal mode.
	TCCR1B|=(1<<CS11) | (1<<CS10); // prescaler værdi 256
	TIMSK1|=(1<<TOIE1); // enable overflow interrupt.
	//TCNT1=1; 

}
	



