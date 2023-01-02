/*
 * GccApplication1.c
 *
 * Created: 13-08-2020 15:54:25
 * Author : Andreas and AK
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>
#include "SPI.h"
#include "UART0.h"
#include "CheckSum.h"
#include "stdint.h"


#define F_CPU 16000000UL
#define BAUD 115200
#define UBRR ((F_CPU/8/BAUD)-1)

//Global Array's 
unsigned char RX_BUFFER0[11];
unsigned char ADC_BUFFER0[1001];
unsigned char ADC_BUFFER1[1001];
unsigned char TX_BUFFER[1007];
unsigned char TX_GenBUFFER[11];


//Global Variabler
	//Int
unsigned int ADC_Active_Buffer = 0;
unsigned int ADC_Packet_Ready = 0;
unsigned int RX_Packet_Ready = 0;
unsigned int SampleRate = 10000;
unsigned int Record_Length = 500;

	//Char
unsigned char PacketLength = 0x00; 
unsigned char btnValue = 0x00;
unsigned char swValue = 0x00;
unsigned int ledBtnValue;


enum STATE {waitingOrder, osciUpdate, rxUpdate}state;

//intialize func's

void initTimer (); // initialize timer1 CTC mode 4
void initADC (); //start ADC
void initUART0 (); //initialize UART0
void initMaster(); //Initialize atmega2560 as Master 

void receiveUpdate(); //RX
void oscillipskopUpdate(unsigned int recordL);  //continuous oscilloscope update
void generatorUpdate(unsigned char btnV, unsigned char swV); // update Slave fpga with data from generator tab
void updateTimer(unsigned int newSPS); //update timer compare match value
void bodePlot(); 





////////////////////////////////////////////////////////// M A I N /////////////////////////////////////////////////////////////////////
int main(void)
{
	initTimer ();
	initADC ();
	initUART0 (16);
	initMaster();
	sei();
	oscillipskopUpdate(Record_Length);
	state = waitingOrder;
	
	while (1) 
	{
		switch(state)
		{
			case waitingOrder:
			
				if(ADC_Packet_Ready == 1) 
				{
					state = osciUpdate;
					ADC_Packet_Ready = 0;
				} if(RX_Packet_Ready == 1)
				{
					state = rxUpdate;
					RX_Packet_Ready=0;
				}
			break;
					
			case osciUpdate:
				oscillipskopUpdate(Record_Length);
				
				state = waitingOrder;
			break;
			
			case rxUpdate:
				receiveUpdate();
				
				state = waitingOrder;
			break;
			
			default :
			state = waitingOrder;
			
		}
	}
}


//Intialize functions

void initTimer ()//done
{
	TCCR1B |= (1<<CS11) | (1<<CS10);
	TCCR1B |= (1<<WGM12); //Wavegeneration CTC mode 4.
	TIMSK1 |= (1<<OCIE1B); // timer counter 1 Output compare interrupt enable.
	OCR1A=((F_CPU/64*SampleRate)-1);
	OCR1B=((F_CPU/64*SampleRate)-1);
	ADCSRA |= (1<<ADSC); // start AD conversion.
	
}
void initADC () 
{
	ADCSRA |= (1<<ADEN) | (1<<ADIE) | (1<<ADPS2)  | (1<<ADATE); // ADC ENABLE 
	ADCSRB |= (1<<ADTS2) | (1<<ADTS0); //TIMER COUNTER COMPARE MATCH 
	ADMUX  |= (1<< ADLAR); 
	
}
void initMaster()//done
{
	DDRB |= (1<<DDB2)|(1<<DDB1)|(1<<DDB0);  //enabler pins B2: MOSI, BI: serial clock
	SPCR |= (1<<SPE)|(1<<MSTR) | (1<<CPOL);  //SPE(1): enable SPI, MSTR(1): CPOL(0)
	SPCR |= (1<<SPR1); // 250kHZ
	SPSR |= (1<<SPI2X);
}
void updateTimer(unsigned int newSPS)
{
	OCR1A=((F_CPU/(64*newSPS))-1);
	OCR1B=((F_CPU/(64*newSPS))-1);
}

//Program Functions
void receiveUpdate()
{
	if (checksumCheck(RX_BUFFER0[PacketLength-1], PacketLength, RX_BUFFER0) == 0)
	{
		switch(RX_BUFFER0[4]) 
		{
			
		case 0x01: //BTN pressed in generator tab		
			
			btnValue = RX_BUFFER0[5];
			swValue  = RX_BUFFER0[6];
			generatorUpdate(RX_BUFFER0[5],RX_BUFFER0[6]);
		break;
	
		case 0x02: // Oscilloscope send pressed 
			SampleRate = ((RX_BUFFER0[5]<<8) |RX_BUFFER0[6]);
			Record_Length = ((RX_BUFFER0[7]<<8) |RX_BUFFER0[8]);
			updateTimer(SampleRate);
			oscillipskopUpdate(Record_Length);
					
		break;
			
		case 0x03: //BodePlot start xD
			for (int i=0; i<4; i++)
			{
				/*SPI_START_STOP();*/
			}			
		break;
		default:
		receiveUpdate();
		}
	}
}
void oscillipskopUpdate(unsigned int recordL)
{
	TX_BUFFER[0] = 0x55;	//Sync1 
	TX_BUFFER[1] = 0xAA;	//Sync2 
	TX_BUFFER[2] = ((recordL+7)>>8); 
	TX_BUFFER[3] = (recordL+7); 
	TX_BUFFER[4] = 0x02;	//Type
		
		
		
	for (int i = 0; i < recordL; i++)
	{
		if(ADC_Active_Buffer == 0)
		{
			TX_BUFFER[5+i] = ADC_BUFFER0[i];
		}
		else
		{
			TX_BUFFER[5+i] = ADC_BUFFER1[i];
		}

	}
	TX_BUFFER[recordL+5] = 0x00; 
	TX_BUFFER[recordL+6] = checksumCalc(TX_BUFFER,recordL+5);

	sendStringUART0(TX_BUFFER,(recordL+7));
		
}
void generatorUpdate(unsigned char btnV, unsigned char swV)
{
	static unsigned int RUN_STOP=0;

	TX_GenBUFFER[0] = 0x55;	//Sync1
	TX_GenBUFFER[1] = 0xAA;	//Sync2
	TX_GenBUFFER[2] = 0x00;
	TX_GenBUFFER[3] = 0x0B;	//Packetlength
	TX_GenBUFFER[4] = 0x01;	//Type

	if (btnV == 0x00)// Enter Værdi
	{	
		
		TX_GenBUFFER[5] = ledBtnValue;
		TX_GenBUFFER[6+ledBtnValue] = swV;
		spiUpdate(TX_GenBUFFER[5],TX_GenBUFFER[6+ledBtnValue]);
	}
	else if (btnV == 0x01) //Select BTN
	{
		TX_GenBUFFER[5] = ledBtnValue;

		if(ledBtnValue == 2)// if 2 : reset only count 3 times
		{
			ledBtnValue = 0x00;
		}
		else
		{
			ledBtnValue++;
		}
		

	}
	else if (btnV == 0x02) // run / stop
	{
		
		if (RUN_STOP == 0) // test om det fungere.
		{
			 SPI_START_STOP(0x1C); //run addr
			 
		}
		if (RUN_STOP == 1)
		{
			SPI_START_STOP(0x1D); // stop addr
			RUN_STOP = 0;
		}
		RUN_STOP++;
	}
	else if(btnV == 0x03)
	{
		for(int i=0; i<5;i++)
		{
			TX_GenBUFFER[5+i]=0x00; 
			
		}
	}
	TX_GenBUFFER[9]=0x00;
	TX_GenBUFFER[10]= checksumCalc(TX_GenBUFFER, 9);
	sendStringUART0(TX_GenBUFFER,(TX_GenBUFFER[3]));
} 
void bodePlotUpdate()
{
	//amplitude/frekvens MAKS amplitude, frekvens starter som laveste værdi og stigertil MAKS. data sættes i telemetry data array og sendes til labview.
	

	
	
}

///////////////////////////////////////////////////////// I S R ///////////////////////////////////////////////////////////////////////
ISR (ADC_vect)
{
	static unsigned int index_counter = 0;
		
	if( ADC_Active_Buffer == 0)
	{
		ADC_BUFFER0[index_counter]= ADCH;
	}
	else
	{
		ADC_BUFFER1[index_counter] = ADCH;
	}
	
	index_counter++;
	
	//ADC: INDEX NULSTIL/BUFFER SKIFT OG ADC_PACKET_READY
	if (index_counter == Record_Length)
	{ 
		ADC_Active_Buffer ^= 1;
		ADC_Packet_Ready = 1; 
		index_counter = 0;
	}
}
ISR (TIMER1_COMPB_vect)
{
	
}
ISR (USART0_RX_vect)
{
	static unsigned int index_counter = 0;
		
	RX_BUFFER0[index_counter]= UDR0;
			
	if ((RX_BUFFER0[0] == 0x55) && (RX_BUFFER0[1] == 0xAA) && (index_counter == RX_BUFFER0[3]))
	{		
		PacketLength = RX_BUFFER0[3];
		RX_Packet_Ready = 1; 
		index_counter = 0;
 	}
else if((RX_BUFFER0[0]!=0x55) || (index_counter == 0x0b))
	{
		index_counter = 0;
	}
	index_counter++; 
}
