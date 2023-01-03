#include <avr/io.h>
#include <stdio.h>
#include <stdlib.h>
#include <avr/interrupt.h>
#include "stdbool.h"

//uint8_t uart0_full = 0;

void uart_init(uint32_t baud);
void uart_send_char(char data);
char uart_receive(uint8_t pos);
void uart_send(char *str);
void uart_clear();