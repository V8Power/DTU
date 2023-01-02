/*
 * UART2.h
 *
 * Created: 14-08-2020 15:34:24
 *  Author: AK
 */ 


#ifndef UART0_H_
#define UART0_H_

extern void initUART0 (int ubrr);
extern void sendStringUART0(unsigned char *cx,int Index);
extern void sendCharUART0 (char tx);



#endif /* UART0_H_ */