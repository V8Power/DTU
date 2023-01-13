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
#include "SPI.h"


#define F_CPU 16000000UL
#define BAUD 115200
#define UBRR ((F_CPU/8/BAUD)-1)


//transmit
uint16_t samplerate=1000;
unsigned int length;
uint8_t button_data;
uint8_t sw_data;

unsigned int record_length=50;
unsigned char array_transmit[1007];
unsigned char array_transmit2[1007]; 
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
uint8_t shape_out = 0;
uint8_t Ampl_out = 0;
uint8_t Freq_out = 0;


uint16_t sample_rate_raw = 62500;

ISR(ADC_vect)
{	
	static int i=5;
	
	
	if (i<(record_length+5) && (control==0))
	{
		array_transmit[i++]=ADCH;
		
		if (i==(record_length+5))
		{
			control=1;
			i=5;
		}
		
	}

	else if (i<((record_length+5)) && (control==1))
	{
		array_transmit2[i++]= ADCH;
		
			if (i==(record_length+5))
			{
				control=0;
				i=5;
			}	

	}
}



ISR(TIMER1_OVF_vect) 
{
	
  TCNT1=sample_rate_raw;
  timer_count++;
  //TCNT1 = 65536 - (250000/samplerate);

}


int main(void)
{
	
	
	init_timer();
	init_ADC();
	uart_Init(MYUBRRF);
	setRecievei();
	calculateLRC();
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
	
  
	 if (receiveflag==1 ){
		 
		receiveflag=0;
		
		switch(array_receive[4])
		{
			
			case 0x01: //BTN pressed is Generator tab , 0x00~BTN0, 0x01~BTN1, 0x02~BTN2, 0x03~BTN3, 9 elementer i array_receive.
			
			//DDRG|=(1<<PG5);
			//PORTG^=(1<<PG5);
			
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
			
			case 0x02: // Oscilloscope data, Send pressed in osc tab, 
			
			record_length=((array_receive[7]<<8)|(array_receive[8]));
			length=(record_length+7);
			samplerate =((array_receive[5]<<8)|(array_receive[6]));
			sample_rate_raw = 65536-(250000/samplerate);
			
				
				array_transmit[2]=(length>>8);
				array_transmit[3]= length;
				array_transmit[length]=0x00;
				//array_transmit[length-1]=calculateLRC(array_receive,length);
				array_transmit[length-1]=0x00;
				
				
				array_transmit2[2]= (length>>8);
				array_transmit2[3]= length;
				array_transmit2[length]=0x00;
				//array_transmit2[length-1]=calculateLRC(array_receive,length);
				array_transmit2[length-1]=0x00;
				
		
		}

	  
	   	
	
  }
  
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
	  

	if (timer_count >= (samplerate / 10)){    //SPI send @10Hz
		uint8_t data_ok = 0;
		uint8_t freq = 0;
		uint8_t shape = 0;
		uint8_t ampl = 0;
		
		
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
		
		
		putchUSART0(0x55);
		putchUSART0(0xAA);
		putchUSART0(0x00);
		putchUSART0(0x0B); //length
		putchUSART0(0x01);
		putchUSART0(indicator);   //indicator
		putchUSART0(shape);
		putchUSART0(ampl);
		putchUSART0(freq);
		/*putchUSART0(shape_out);
		putchUSART0(Ampl_out);
		putchUSART0(Freq_out);*/
		
		putchUSART0(0x00);
		putchUSART0(0x00);
		
		PORTB = (run << PB7);
		fpga_send_data(run, Ampl_out, Freq_out, shape_out);
		
	}
	 }
	  	
}

	
ISR(USART0_RX_vect)
{	
	
	
	static unsigned int i=0;
	array_receive[i]= UDR0;
	
	if ((array_receive[0] == 0x55) && (array_receive[1] == 0xAA) && (i==array_receive[3]))
	{
		receiveflag = 1;
		i=0;
	}
	
	i++;
	}





 int calculateLRC(unsigned char*msgpointer, unsigned int length)
{
	unsigned char LRC = 0;
	for (int i = 0; i < length; i++)
	{
		LRC ^= msgpointer[i];
	}
	return LRC;
}










  