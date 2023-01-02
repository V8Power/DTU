/*
 * UART2.c
 *
 * Created: 14-08-2020 15:34:09
 *  Author: AK
 */ 
#include "UART0.h"
#include <avr/io.h>
#include <string.h>

void initUART0 (int ubrr)
{
	UCSR0B |= (1<<RXEN0) |(1<<TXEN0) /*|(1<<RXCIE0) |(1<<TXCIE0)*/;		//Enable TX and RX, remove comment to enable complete interrupt.
	UCSR0C |= (1<<UCSZ00) |(1<<UCSZ01); //1 start bit, 8 data bit, no parity.
	UBRR0H = (unsigned char)(ubrr>>8); //2 registers for 16 bit data transfer.
	UBRR0L = (unsigned char)ubrr;
	UCSR0A = (1<<U2X0);	//full duplex.
	UCSR0B |= (1<<RXCIE0);
}


void sendCharUART0 (unsigned char tx)//done
{
	while(!(UCSR0A & (1<< UDRE0)))
	{
		UDR0 = tx;
	}
}
void sendStringUART0(unsigned char *cx,unsigned int Index) //Pakkelængde på index plads
{
	int i=0;

	for(i=0;i<Index;i++)
	{
		while(!(UCSR0A&(1<<UDRE0)));
		UDR0 = cx[i];
	}
}

