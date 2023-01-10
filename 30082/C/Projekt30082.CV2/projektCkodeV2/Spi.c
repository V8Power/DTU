/*
 * Spi.c
 *
 * Created: 06-01-2023 12:56:32
 *  Author: abid
 */ 

//#include "SPI.h"

#include <string.h>
#include <avr/io.h>
#include <stdio.h>
#include <stdlib.h>
#include <avr/interrupt.h>

#include "uart.h"
#include "cheksum.h"

unsigned char SPI_ARR[4];
unsigned char SPI_ARR2[3];


void SPI_init_master(bool CPOLc, bool CPHAc){
	DDRB |= (1 << PB0) | (1 << PB1) | (1 << PB2);
	PORTB &= ~(1 << PB0);
	PORTB |= (1<< PB3);
	SPCR = 0;
	SPCR|= (0 << SPIE) | ( 1 << MSTR) | ( 1 << SPR1) | (0<< SPR0) | (1 << SPE) | (CPOLc <<CPOL | CPHAc << CPHA) ;
	SPDR = 0;
	//SPSR |= (1 << SPI2X);
	
}
void SPI_init_slave(){
	DDRB |=  (1 << PB3) ;
	PORTB |= (1 << PB0) | (1 << PB1) | (1 << PB2);
	SPCR|= (0 << SPIE) |  ( 1 << SPR1) | (0<< SPR0) | (1 << SPE) | (1<<CPOL) ;
	SPDR = 0;
}


unsigned char SPI_read(){
	PORTB &= ~(1 << PB0);
	SPDR = 0;
	while(!(SPSR &(1<<SPIF))) ;
	unsigned char data = SPDR;
	return data;
	PORTB |= (1 << PB0);
}



void SPI_write(unsigned char data){
	
	PORTB &= ~(1 << PB0);
	SPDR = data;
	while(!(SPSR &(1<<SPIF))) ;
	
	PORTB |= (1 << PB0);
}

void sendStringSPI(unsigned char * SPI_TX_ARR, int PacketLengthSPI)
{

	for(int i=0;i<PacketLengthSPI;i++)
	{
		PORTB &=~ (1<<PB0); // SS sat lav
		SPDR = SPI_TX_ARR[i];
		while(!(SPSR&(1<<SPIF)));
		PORTB ^= (1<<PB0); // SS sat høj
		
	}
	
}


void spiUpdate(unsigned char ldbtn, unsigned char swVal)
{
	SPI_ARR[0] = 0xAA;
	SPI_ARR[1] = ldbtn;
	SPI_ARR[2] = swVal;
	SPI_ARR[3] = checksumvalue(SPI_ARR,3);
	
	//SPI_write(SPI_ARR,3);
}

void SPI_START_STOP(unsigned char addr) // sæt adresse på ønskede handling
{
	SPI_ARR2[0] = 0xAA;
	SPI_ARR2[1] = addr;
	SPI_ARR2[2] = 0x00;
	SPI_ARR2[3] = checksumvalue(SPI_ARR2,4);
	
	//SPI_write(SPI_ARR2,3);
}
