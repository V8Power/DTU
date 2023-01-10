/*
 * Timer.c
 *
 * Created: 06-01-2023 12:10:00
 *  Author: Abdel, SAAD
 */ 


#include <avr/io.h>




void init_timer()
{
    /*
	TCCR1A=0; // Timer1 i normal mode.
	TCCR1B|=(1<<CS12)|(1<<CS11); // prescaler værdi på 125
	TIMSK1|=(1<<TOIE1); // enable overflow interrupt.
	TCNT0 =35; //sample rate på 10.
	*/

     
	TCCR1A=0; // Timer1 i normal mode.
	TCCR1B|=(1<<CS12); // prescaler værdi 256
	TIMSK1|=(1<<TOIE1); // enable overflow interrupt.
	TCNT1=40536; // Overflow value= 2^16-1*10^-3 s * 16*10^6/64, TIME DELAY 100ms

}
	



