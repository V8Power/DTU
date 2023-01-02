/*
 * SPI.c
 *
 * Created: 14-08-2020 11:54:20
 *  Author: AK
 */ 

#include <avr/io.h>
#include "SPI.h"
#include "UART0.h"
#include "CheckSum.h"
#include <string.h>

void sendByteSPI(unsigned char SPI_TX)
{
	
	PORTB &=~ (1<<PB0); // SS sat lav
	SPDR = SPI_TX;
	while(!(SPSR&(1<<SPIF)));
	PORTB ^= (1<<PB0); // SS sat høj

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
	SPI_ARR[3] = checksumCalc(SPI_ARR,3);
	
	sendStringSPI(SPI_ARR,3);
}

void SPI_START_STOP(unsigned char addr) // sæt adresse på ønskede handling
{
	SPI_ARR2[0] = 0xAA;
	SPI_ARR2[1] = addr;
	SPI_ARR2[2] = 0x00;
	SPI_ARR2[3] = checksumCalc(SPI_ARR2,4);
	
	sendStringSPI(SPI_ARR2,3);
}
