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
#include "string.h"
#include "stdbool.h"


#include "ADC.h"
#include "timer.h"
#include "UART.h"
#include "Uart1.h"
#include "SPI.h"

#define F_CPU 16000000UL
#define BAUD 115200
#define UBRR ((F_CPU/8/BAUD)-1)


//transmit
uint16_t samplerate=1000;
unsigned int length;
unsigned int button_data;
unsigned int sw_data;

uint16_t record_length=50;
uint16_t record_length_tmp=50;
unsigned char array_transmit[1107];
unsigned char array_transmit2[1107]; 
volatile char tx_done=0;
volatile char control=0;

// receive
unsigned char array_receive[11];
volatile char receiveflag = 0; 
char UDATA[15]={'\0'}; 


//SPI shit
uint16_t timer_count = 0;
uint8_t indicator;
bool run = 0;
uint16_t receive_count = 0;
uint8_t shape_out = 3;
uint8_t Ampl_out = 255;
uint8_t Freq_out = 2;

//fixes
uint16_t sample_rate_raw = 62500;
uint16_t sample_rate_raw_tmp = 62500;
uint16_t  i=5;




ISR(ADC_vect)
{
	//static int i=5;
	
	
	if (i<(record_length+5) && (control==0))
	{
		array_transmit[i++]=ADCH;
		
		if (i>=(record_length+5))
		{
			control=1;
			i=5;
		}
		
	}

	else if (i<((record_length+5)) && (control==1))
	{
		array_transmit2[i++]= ADCH;
		
		if (i>=(record_length+5))
		{
			control=0;
			i=5;
		}

	}
}

ISR(TIMER1_OVF_vect)
{
	timer_count++;
TCNT1=sample_rate_raw;
}

int main(void)
{
	init_timer();
	init_ADC();
	uart_Init(16);
	uart_Init1(16);
	//setRecievei();
	setRecievei1();
	calculateLRC(array_transmit,length);
	calculateLRC(array_transmit2,length);
	SPI_init_master(0,0);
	DDRB |= (1 << PB7);
	sei();
	
	
	array_transmit[0]=0x55;
	array_transmit[1]=0xAA;
	array_transmit[4]=0x02;	
	array_transmit2[0]=0x55;
	array_transmit2[1]=0xAA;
	array_transmit2[4]=0x02;
	
	while (1)
 
	{
		if (i <= 5 ){
			record_length = record_length_tmp;
			sample_rate_raw = sample_rate_raw_tmp;
			length=(record_length+7);
			
			array_transmit[2]=(length>>8);
			array_transmit[3]= length;
			array_transmit[length-2]=0x00;
			
			
			array_transmit2[2]= (length>>8);
			array_transmit2[3]= length;
			array_transmit2[length-2]=0x00;
			
		}
	

  
	 if (receiveflag==1){
		 
		receiveflag=0; 
	
		
		switch(array_receive[4])
		{
			
			case 0x01: //BTN pressed is Generator tab , 0x00~BTN0, 0x01~BTN1, 0x02~BTN2, 0x03~BTN3, 9 elementer i array_receive.
			
			button_data = array_receive[5]; //button data
			sw_data = array_receive[6]; // sw data
			
			if (button_data == 0x00) {  //enter
				if (indicator == 0x00) {
					if (sw_data <= 0x03){
						shape_out = sw_data;
					}
				}
				else if (indicator == 0x01){
					Ampl_out = sw_data;
				}
				else if (indicator == 0x02){
					Freq_out = sw_data;
				}
			}
			else if(button_data == 0x01){   //select
				if (indicator < 2) {
					indicator++;
				}
				else {
					indicator = 0;
				}
			}
			else if(button_data == 0x02){   //run/stop
				run = !run;
			}
			else if(button_data == 0x03){   //reset
				Freq_out = 0;
				Ampl_out = 0;
				shape_out = 0;
				indicator = 0;
			}
			
			
			
			break;
			
			case 0x02:
			
			
			record_length_tmp=((array_receive[7]<<8)|(array_receive[8]));
			//length=(record_length+7);
			samplerate =((array_receive[5]<<8)|(array_receive[6]));
			sample_rate_raw_tmp = 65536-(250000/samplerate);
			
			
	
			
			/*	array_transmit[2]=(length>>8);
				array_transmit[3]= length;
				array_transmit[length-1]=calculateLRC(array_transmit,length);
				array_transmit[length-2]=0x00;
				
				
				array_transmit2[2]= (length>>8);
				array_transmit2[3]= length;
				array_transmit2[length-1]=calculateLRC(array_transmit2,length);
				array_transmit2[length-2]=0x00;*/
				
				
				putchUSART0(array_transmit[length-1]);
					
			
					
				break;
			}
		}
		
		
		
	
	  	if ((control==1) && (tx_done==0))
	  	{	array_transmit[length-1]=calculateLRC(array_transmit,length);
		  	putsUSART1(array_transmit,length);
		  	tx_done=1;
			  
		  
	  	}
	  	if ((control==0) && (tx_done==1))
	  	{	array_transmit2[length-1]=calculateLRC(array_transmit2,length);
		  	putsUSART1(array_transmit2,length);
		  	tx_done=0;
			 
		  	
	  	}
	   	
		   
		   
		   if (timer_count >= (samplerate / 10)){    //SPI send @10Hz
			   uint8_t data_ok = 0;
			   uint8_t freq = 0;
			   uint8_t shape = 0;
			   uint8_t ampl = 0;
			   uint8_t check = 0;
			   
			   timer_count = 0;
			   data_ok = 0;
			   freq = 0;
			   ampl = 0;
			   shape = 0;
			   uint32_t test = 0;
			   test = fpga_get_data();
			   data_ok |= (test >> 24) & 0xFF000000;
			   freq |= (test >> 16);
			   shape |= (test >> 8);
			   ampl |= test & 0xFF;
			   
			   //putsUSART0(data_ok);
			   
			   
			   putchUSART1(0x55);
			   putchUSART1(0xAA);
			   putchUSART1(0x00);
			   putchUSART1(0x0B); //length
			   putchUSART1(0x01);
			   putchUSART1(indicator);   //indicator
			   putchUSART1(shape);
			   putchUSART1(ampl);
			   putchUSART1(freq);
			   
			   check = 0x55 ^ 0xAA ^ 0x00 ^ 0x0B ^ 0x01 ^ indicator ^ shape ^ ampl ^ freq;
			   putchUSART1(0x00);
			   putchUSART1(check);
			   //putchUSART1(0x00);
			   
			   PORTB = (run << PB7);
			   fpga_send_data(run, Ampl_out, Freq_out, shape_out);
			   
		   }
	
  }
  
  
	  

	 }
	

ISR(USART1_RX_vect)
{
	
	static unsigned int g=0;
	
	array_receive[g]=UDR1;
	
	g++;
	if ((array_receive[0] == 0x55) && (array_receive[1] == 0xAA) && (g==(array_receive[3])))
	{
		
		receiveflag=1;
		g=0;
	}
	
	
}


	
int calculateLRC(unsigned char *msgpointer, unsigned int length)
{
	static unsigned char LRC8 = 0;
	LRC8 = 0;
	for (int a = 0; a<(length-2); a++)
	{
		
		LRC8 ^= msgpointer[a];
		
	}
	return LRC8;
	
}		  


	
















  