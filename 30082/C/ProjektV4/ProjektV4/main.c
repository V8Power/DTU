/*
 * main.c
 *
 * Created: 06-01-2023 14:06:06
 *  Author: Abdel, SAAD
 */ 
#include <stdio.h>
#include <avr/io.h>
#include <stdlib.h>
#include <avr/interrupt.h>


#include "ADC.h"
#include "timer.h"
#include "UART.h"

#define F_CPU 16000000UL
#define BAUD 115200
#define UBRR ((F_CPU/8/BAUD)-1)


//transmit
unsigned int samplerate = 10000;
unsigned char array_transmit[1007];
unsigned char array_transmit2[1007]; 
unsigned int record_length = 500;
volatile char tx_done=0;
volatile char control=0;
unsigned int length;


// receive
unsigned char array_receive[11];
unsigned char Packagesize = 0x00;
volatile char receiveflag = 0; 



ISR(ADC_vect)
{
	static int i=5;
	
	
	if (i<(record_length+5) && (control==0))
	{
		array_transmit[i++]=ADCH;
		//putchUSART0(array_transmit[i-1]);
		
		
		if (i==(record_length+5)){
		//putchUSART0('a');
			control=1;
			i=5;
		}
		
	}

	else if (i<((record_length+5)) && (control==1))
	{
		array_transmit2[i++]= ADCH;
		
			if (i==(record_length+5))
			{
				//putchUSART0('b');
				control=0;
				i=5;
			}	

			}
	}

ISR(TIMER1_OVF_vect) 
{
	
	TCNT1=62535-(62500/samplerate);
	
}

ISR (USART0_RX_vect)
{
	static unsigned int index = 0;
	
    
	array_receive[index]= UDR0;
	
	
	if ((array_receive[0] == 0x55) && (array_receive[1] == 0xAA) && (index == array_receive[3])){
		//putchUSART0('a');
		
		Packagesize = array_receive[3];
		receiveflag = 1;
		index = 0;
		
	}
	else if((array_receive[0]!=0x55) || (index == 0x0b))
	{
		index = 0;
	}
	index++;
}

int main(void){
	
	
	DDRB|=(1<<PB7);
	
	length = record_length+7;
	
     //// ARRAY1 DATA PACKAGE
	array_transmit[0]=0x55;
	array_transmit[1]=0xAA;
	array_transmit[2]= (length>>8);
	array_transmit[3]= length;
	array_transmit[4]= 0x02;
    array_transmit[length-1]=0x00;
	array_transmit[length-2]=0x00;

      ////ARRAY 2 DATA PACKAGE
	array_transmit2[0]=0x55;
    array_transmit2[1]=0xAA;
    array_transmit2[2]= (length>>8);
    array_transmit2[3]= length;
    array_transmit2[4]= 0x02;
    array_transmit2[length-1]=0x00;
    array_transmit2[length-2]=0x00;
  
	
	init_timer();
	init_ADC();
	uart_Init(MYUBRRF);
    setRecievei();
	sei();	
	
	while (1)
	{
		if ((control==1) && (tx_done==0))
		{
			
			putsUSART0(array_transmit,length);
		    tx_done=1;
		
		}
		if ((control==0) && (tx_done==1))
		{
			putsUSART0(array_transmit2,length);
			tx_done=0;
			
		}	
	  
	   if (receiveflag==1){
		   
		   record_length = ((array_receive[7]<<8) | array_receive[8]);
		   samplerate = ((array_receive[5]<<8) | array_receive[6]);
		  
		   putchUSART0('a');
		   
		   receiveflag=0;
		   
	   }
	
  
  }
}


