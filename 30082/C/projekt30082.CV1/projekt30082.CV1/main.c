/*
* main.c
*
* Created: 9/1/2022 8:15:36 AM
*  Author: felix, Saad, Hakim
*/
#include <avr/io.h>
#include <stdio.h>
#include <stdlib.h>
#include <avr/interrupt.h>

#include "SPI.h"
#include "uart.h"
#include "timer.h"
#include "ADC.h"


uint8_t a = 0;
uint32_t micro= 0;

//char buffer
unsigned char RXBufffer[12];
unsigned char ADCBuffer[1001];
unsigned char ADCBuffer2[1003];
unsigned char TXBuffer[1010];
unsigned char TXgenrator[12];

// int buffer
unsigned int ADCstart= 0;
unsigned int ADCready = 0;
unsigned int RXready = 0;
unsigned int SampleRate = 10000;
unsigned int sample_length = 500;

//Char
unsigned char Packets = 0x00;
unsigned char buttonVal = 0x00;
unsigned char switchval = 0x00;
unsigned int ledval;


//timers
uint16_t cycle_time = 1;
uint32_t prev_cycle_time = 0;

uint32_t micros(){
	return micro;
}





// (Timer Interrupt)
ISR(TIMER1_COMPA_vect){     //interrupt every 1ms, set through timer prescale and counter compare
	micro++;           
	TCNT1 = 0x0000;   // reset counter for next COMPA event
}





	
	
	

int main (void){
	
	SPI_init_master(0,0);
	uart_init(115200);
	timerinit();
	
	while (1){
		if (micros() - prev_cycle_time >= 200){    
				prev_cycle_time = micros();
				
				(0xC3);
				SPI_write(a);
				a++;
			}
			
			
			

		
	}
	
	
	
	
	
}


