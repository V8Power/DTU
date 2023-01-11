
#include <avr/io.h>
#include <stdio.h>
#include <stdlib.h>
#include "stdbool.h"

void SPI_init_master(bool CPOLc, bool CPHAc);
void SPI_init_slave();
char SPI_read();
void SPI_write(unsigned char data);
unsigned char SPI_read_write(char dat_in);