/*
 * CheckSum.h
 *
 * Created: 16-08-2020 14:18:36
 *  Author: AK
 */ 


#ifndef CHECKSUM_H_
#define CHECKSUM_H_

extern int checksumCalc(unsigned char *bufferpointer, int Datalength);
extern int checksumCheck(unsigned char checksum,unsigned int pack, unsigned char * ARR);



#endif /* CHECKSUM_H_ */