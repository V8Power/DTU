/*
 * projektCkodeV2.c
 *
 * Created: 06-01-2023 11:13:46
 * Author : abid
 */ 

#include <avr/io.h>
#include <stdio.h>
#include <stdlib.h>
#include <avr/interrupt.h>

#include "SPI.h"
#include "adc.h"
#include "uart.h"
#include "timer.h"
#include "cheksum.h"

#define F_CPU 16000000UL
#define BAUD 115200
#define UBRR ((F_CPU/8/BAUD)-1)



//timers
uint8_t a = 0;
uint32_t micro = 0;
uint16_t cycle_time = 1;
uint32_t prev_cycle_time = 0;

unsigned char ADCBUFFERTest[1001];
unsigned char ADCBUFFERTest2[1001];
unsigned char TransmitTest[1007];
unsigned char TransmitTest2[1007];
unsigned int recordL = 100;

//unsigned int samplerate 

unsigned int ControlAdc = 0;
unsigned int ADC_ReadyTest = 0;
int lenght;



uint32_t micros(){
	return micro;
}
ISR(TIMER1_COMPA_vect){ //interrupt every 1ms, set through timer prescale and counter compare
	micro++;
	TCNT1 = 0x0000;   // reset counter for next COMPA event
	//PORTB ^= (1 << PB7);
}


ISR (ADC_vect) 
{
	static unsigned int index = 5;
	
	if( ControlAdc == 0)
	{
		ADCBUFFERTest[index]= ADCH;
	}
	else
	{
		ADCBUFFERTest2[index] = ADCH;
	}
	
	index++;
	
	if (index >= recordL)
	{
		ControlAdc ^= 1;
		ADC_ReadyTest = 1;
		index = 0;
	}
}



int main (void){
	
	sei();
	timerinit();
	uart_init(115200);
	
	lenght = recordL+7;
	
	TransmitTest[0] = 0x55;	//Sync byte 1
	TransmitTest[1] = 0xAA;	//Sync byte 2
	TransmitTest[2] = ((lenght)>>8);
	TransmitTest[3] = (lenght);
	TransmitTest[4] = 0x02;	//Type osilliscope data
	
	
     while(1){
		 
	   //  if(micros() - prev_cycle_time >= 1000){
	   //  prev_cycle_time = micros();
	
	for (int i = 0; i < recordL; i++){ 
		
		if ((i >= 5) && (i<recordL-2)){
		
		if(ADCBUFFERTest == 0)
		{
			TransmitTest[5+i] = ADCBUFFERTest2[i];
			 
		}
		else
		{
			TransmitTest[5+i] = ADCBUFFERTest[i];
			  
		}
  
	}
	   
	 
	    TransmitTest[recordL+5] = 0x00;
	    TransmitTest[recordL+6] = checksumvalue(TransmitTest,recordL+5);
		//TransmitTest[i]=recordL+7;
	
	     uart_send_char(TransmitTest[i]); // data-transmit
		 
		  
		  

	  }
	  
	    
	
	    }
    }
  
//}
   

 
	
	//TXBUFFERTest = (recordL+7);
	// uart_send_char(TXBUFFERTest[recordL+7]);
	//uart_send_char(ADCBUFFERTest);
	