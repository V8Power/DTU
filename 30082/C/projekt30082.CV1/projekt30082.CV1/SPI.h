
#include <avr/io.h>
#include <stdio.h>
#include <stdlib.h>
#include "stdbool.h"

void SPI_init_master(bool CPOLc, bool CPHAc);
void SPI_init_slave();
unsigned char SPI_read();
void SPI_write(unsigned char data);