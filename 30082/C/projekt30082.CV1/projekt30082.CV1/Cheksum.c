/*
 * Cheksum.c
 *
 * Created: 05-01-2023 11:59:28
 *  Author: Saad, Felix & Hakim
 */ 

int checksumvalue(unsigned char *bufferptr, int Datasize)
{
	unsigned int X = 0;
	
	for (int i=0; i < (Datasize); i++)
	{
		X ^= bufferptr[i];
	}
	
	return X;
}

int checksum(unsigned char checksumm, unsigned int package, unsigned char * Arr)
{

	checksumm ^= checksumvalue(Arr,(package-2));
	
	return checksumm;
}
