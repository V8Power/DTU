/*
 * Functions.c
 *
 * Created: 06-01-2023 12:42:39
 *  Author: abid



void updateTimer(unsigned int newSPS)
{
	OCR1A=((F_CPU/(64*newSPS))-1);
	OCR1B=((F_CPU/(64*newSPS))-1);
}

void oscillipskopUpdate(unsigned int recordL)
{
	TXBUFFERTest[0] = 0x55;	//Sync1
	TXBUFFERTest[1] = 0xAA;	//Sync2
	TXBUFFERTest[2] = ((recordL+7)>>8);
	TXBUFFERTest[3] = (recordL+7);
	TXBUFFERTest[4] = 0x02;	//Type
	
	
	
	for (int i = 0; i < recordL; i++)
	{
		if(ADCBufferTest == 0)
		{
			TXBUFFERTest[5+i] = ADCBUFFERTest[i];
		}
		else
		{
			TXBUFFERTest[5+i] = ADCBUFFER1[i];
		}

	}
	TXBUFFERTest[recordL+5] = 0x00;
	TXBUFFERTest[recordL+6] = checksumCalc(TXBUFFERTest,recordL+5);

	uart_send(TXBUFFERTest,(recordL+7));
	
}
void generatorUpdate(unsigned char btnV, unsigned char swV)
{
	static unsigned int RUN_STOP=0;

	TXGenBUFFER[0] = 0x55;	//Sync1
	TXGenBUFFER[1] = 0xAA;	//Sync2
	TXGenBUFFER[2] = 0x00;
	TXGenBUFFER[3] = 0x0B;	//Packetlength
	TXGenBUFFER[4] = 0x01;	//Type

	if (btnV == 0x00)// Enter Værdi
	{
		
		TXGenBUFFER[5] = ledBtnValue;
		TXGenBUFFER[6+ledBtnValue] = swV;
		spiUpdate(TXGenBUFFER[5],TXGenBUFFER[6+ledBtnValue]);
	}
	else if (btnV == 0x01) //Select BTN
	{
		TXGenBUFFER[5] = ledBtnValue;

		if(ledBtnValue == 2)// if 2 : reset only count 3 times
		{
			ledBtnValue = 0x00;
		}
		else
		{
			ledBtnValue++;
		}
		

	}
	else if (btnV == 0x02) // run / stop
	{
		
		if (RUN_STOP == 0) // test om det fungere.
		{
			SPI_START_STOP(0x1C); //run addr
			
		}
		if (RUN_STOP == 1)
		{
			SPI_START_STOP(0x1D); // stop addr
			RUN_STOP = 0;
		}
		RUN_STOP++;
	}
	else if(btnV == 0x03)
	{
		for(int i=0; i<5;i++)
		{
			TXGenBUFFER[5+i]=0x00;
			
		}
	}
	TXGenBUFFER[9]=0x00;
	TXGenBUFFER[10]= checksumCalc(TXGenBUFFER, 9);
	uart_send(TXGenBUFFER,(TXGenBUFFER[3]));
}
void bodePlotUpdate()

{
	
	 */ 

//unsigned char TXGenBUFFER[11];
//unsigned char PacketLength = 0x00;
//unsigned char btnValue = 0x00;
//unsigned char swValue = 0x00;
//unsigned int ledBtnValue;

// int
//unsigned int SampleRateTest = 10000;
//unsigned int Record_LengthTest = 500;
//unsigned int ActiveADCBuffer = 0;
//unsigned int ADCReadyTest = 0;
//unsigned int RXPacketReadyTest = 0;



//unsigned char TXGenBUFFER[11];
//unsigned char PacketLength = 0x00;
//unsigned char btnValue = 0x00;
//unsigned char swValue = 0x00;
//unsigned int ledBtnValue;

// int
//unsigned int SampleRateTest = 10000;
//unsigned int Record_LengthTest = 500;
//unsigned int ActiveADCBuffer = 0;
//unsigned int ADCReadyTest = 0;
//unsigned int RXPacketReadyTest = 0;