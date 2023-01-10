/*
 * Cheksum.c
 *
 * Created: 06-01-2023 12:59:24
 *  Author: abid
 */ 

int checksumvalue(unsigned char *bufferptr, int Datasize)
{
	unsigned int LRC = 0;
	
	for (int i=0; i < (Datasize); i++)
	{
		LRC ^= bufferptr[i];
	}
	
	return LRC;
}

int checksum(unsigned char checksumm, unsigned int package, unsigned char * Arr)
{

	checksumm ^= checksumvalue(Arr,(package-2));
	
	return checksumm;
}
