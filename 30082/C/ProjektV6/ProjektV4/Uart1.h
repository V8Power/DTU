/*
 * Uart1.h
 *
 * Created: 13-01-2023 12:02:53
 *  Author: Abdel
 */ 

extern void uart_Init1(unsigned int ubrr);
extern char getchUSART1(void);
extern void putchUSART1(char tx);
extern void putsUSART1(unsigned char ptr[],int length);
extern void setRecievei1(void);