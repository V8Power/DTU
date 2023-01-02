/*
 * IncFile1.h
 *
 * Created: 12-08-2020 02:55:44
 *  Author: AK
 */ 


#ifndef SPI_H_
#define SPI_H_


unsigned char SPI_ARR[4];
unsigned char SPI_ARR2[3];
extern void sendByteSPI(unsigned char SPI_TX);
extern void sendStringSPI(unsigned char * SPI_TX_ARR, int PacketLengthSPI);
extern void spiUpdate(unsigned char ldbtn, unsigned char swVal);
extern void SPI_START_STOP(unsigned char addr);

#endif /* SPI_H_ */