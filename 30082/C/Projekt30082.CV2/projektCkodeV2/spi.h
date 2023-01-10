/*
 * spi.h
 *
 * Created: 06-01-2023 12:57:01
 *  Author: abid
 */ 


#include <avr/io.h>
#include <stdio.h>
#include <stdlib.h>
#include "stdbool.h"

void SPI_init_master(bool CPOLc, bool CPHAc);
void SPI_init_slave();
unsigned char SPI_read();
void SPI_write(unsigned char data);
extern void sendStringSPI(unsigned char * SPI_TX_ARR, int PacketLengthSPI);
extern void spiUpdate(unsigned char ldbtn, unsigned char swVal);
extern void SPI_START_STOP(unsigned char addr);
