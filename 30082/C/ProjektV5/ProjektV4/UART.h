


#define BAUD 115200
#define F_CPU 16000000UL
#define MYUBRRF F_CPU/8/BAUD-1

extern void uart_Init(unsigned int ubrr);
extern char getchUSART0(void);
extern void putchUSART0(char tx);
extern void putsUSART0(unsigned char ptr[],int length);
extern void setRecievei(void);
/*
extern void uart_Init1(unsigned int ubrr);
extern char getchUSART1(void);
extern void putchUSART1(char tx);
extern void putsUSART1(unsigned char ptr[],int length);
extern void setRecievei1(void);
*/