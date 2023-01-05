#include "uart.h"


//#define UBBRLbaud F_CPU/8/BAUD-1

char uart0_in [20];
uint8_t i = 0;
uint8_t uart0_full = 0;

ISR(USART0_RX_vect){      //rx interrupt
	if (i <=19){    //buffer not full, read data
	uart0_in[i] = UDR0;
	i++;
	uart0_full = 0;
	}
	else {  //buffer full, ignore data and set flag
		i = 0;
		uart0_full = 1;
	}
	//PORTB |= (1 << PB7);
}


void uart_init(uint32_t baud){
UCSR0B |= (1 << RXEN0) | (1 << TXEN0);   //enable RX, TX
UCSR0A |= (1 << U2X0);              
//baud = 115200;
UBRR0H = (16000000/8/(baud-1)) >> 8;             //set baudrate high bits
UBRR0L = 16000000/8/(baud-1);                     //set baudrate low byte
UCSR0C |= (1 << UCSZ00) | (1 <<  UCSZ01);
UCSR0B |= (1 << RXCIE0);                   //enable rx interrupt
UDR0 = 0;
	
}
void uart_send_char(char data){
	
	
	
	while(!(UCSR0A & (1<<UDRE0)));   // wait for empty transmit buffer
	UDR0 = data;                //then send data
	
}
char uart_receive(uint8_t bufferpos){       //read char in specific buffer position
	i = 0;                     //clear buffer index
	return uart0_in[bufferpos];
	
	
}

void uart_send(char *str){                //send a string by sending each char 
	while(*str){
	 uart_send_char(*str);
	str++;
	}
}   
 void uart_clear(){                       //clear uasart buffer
	 for(int b =0; b < 20; b++){
	 uart0_in[b] = 0;
	 }
 }