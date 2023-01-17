/*
 * Uart1.c
 *
 * Created: 13-01-2023 12:02:29
 *  Author: Abdel
 */ 

#include <avr/io.h>




void uart_Init1(unsigned int ubrr){
	// enable receive and transmit and receive complete interrupt
	UCSR1A=(1<<U2X1);    //full duplex
	UCSR1B|=(1<<RXEN1)|(1<<TXEN1);//;|(1<<TXCIE0));  //enable transmit complete interrupt by removing the //
	// frame: 1 start bit, 8 data bit, no parity:
	UCSR1C|=(1<<UCSZ10)|(1<<UCSZ11);
	//baud rate values up to 16 bit therefore to registers
	UBRR1H = (unsigned char)(ubrr>>8);
	UBRR1L = (unsigned char)ubrr;

}
char getchUSART1(void)
{
	while(!(UCSR1A&(1<<RXC1))); //wait till char received
	return UDR1;
}
void putchUSART1(char tx)
{
	while(!(UCSR1A & (1<<UDRE1)));   // wait for empty transmit buffer
	UDR1 = tx;
}
void putsUSART1(unsigned char ptr[], int length){
	int i=0;
	while(i<length){
		putchUSART1(ptr[i]);
		
		i++;
		
	}
	
}

void setRecievei1(void)
{
	UCSR1B|=(1<<RXCIE1);
}
