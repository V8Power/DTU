

#include <avr/io.h>


int length; 

 void uart_Init(unsigned int ubrr){
// enable receive and transmit and receive complete interrupt
UCSR0A=(1<<U2X0);    //full duplex
UCSR0B|=(1<<RXEN0)|(1<<TXEN0);//;|(1<<TXCIE0));  //enable transmit complete interrupt by removing the //
// frame: 1 start bit, 8 data bit, no parity:
UCSR0C|=(1<<UCSZ10)|(1<<UCSZ11);
//baud rate values up to 16 bit therefore to registers
UBRR0H = (unsigned char)(ubrr>>8);
UBRR0L = (unsigned char)ubrr;

}
char getchUSART0(void)
{
	while(!(UCSR0A&(1<<RXC0))); //wait till char received
	return UDR0;
}
void putchUSART0(char tx)
{
	while(!(UCSR0A & (1<<UDRE0)));   // wait for empty transmit buffer
	UDR0 = tx;
}
void putsUSART0(char *ptr, int length){
	int i=0;
	while(i<length){
		putchUSART0(*ptr);
		ptr++;
		i++;
		
	}
	
}

void setRecievei(void)
{
	UCSR0B|=(1<<RXCIE0);
}
