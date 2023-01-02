/*
 * CheckSum.c
 *
 * Created: 16-08-2020 14:18:51
 *  Author: AK
 */ 


int checksumCalc(unsigned char *bufferpointer, int Datalength)
{
	unsigned int LRC = 0;
	
	for (int i=0; i < (Datalength); i++)
	{
		LRC ^= bufferpointer[i];
	}
	
	return LRC;
}

int checksumCheck(unsigned char checksum, unsigned int pack, unsigned char * ARR)
{

	checksum ^= checksumCalc(ARR,(pack-2));
	
	return checksum;
}