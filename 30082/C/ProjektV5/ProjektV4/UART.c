

#include <avr/io.h>




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
void putsUSART0(unsigned char ptr[], int length){
	int i=0;
	while(i<length){
		putchUSART0(ptr[i]);
		
		i++;
		
	}
	
}

void setRecievei(void)
{
	UCSR0B|=(1<<RXCIE0);
}



/////////////////////////////////////////////UART1 ///////////////////////////////////////////////
/*
 void uart_Init1(unsigned int ubrr){
	 // enable receive and transmit and receive complete interrupt
	 UCSR1A=(1<<U2X1);    //full duplex
	 UCSR1B|=(1<<RXEN1)|(1<<TXEN1);//;|(1<<TXCIE0));  //enable transmit complete interrupt by removing the //
	 // frame: 1 start bit, 8 data bit, no parity:
	 UCSR1C|=(1<<UCSZ10)|(1<<UCSZ11);
	 //baud rate values up to 16 bit therefore to registers
	 UBRR0H = (unsigned char)(ubrr>>8);
	 UBRR0L = (unsigned char)ubrr;

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
	 int x=0;
	 while(x<length){
		 putchUSART1(ptr[x]);
		 
		 x++;
		 
	 }
	 
 }

 void setRecievei1(void)
 {
	 UCSR1B|=(1<<RXCIE1);
 }
 */