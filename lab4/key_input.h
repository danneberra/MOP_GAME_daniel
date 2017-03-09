void appInit_alt (void)
{
	GPIO_D.moder  &= 0x0000FFFF;
	GPIO_D.moder  |= 0x55000000;
	GPIO_D.otyper &= 0x00FF;
	GPIO_D.pupdr  = 0x0000FFFF;
	GPIO_D.pupdr  |= 0xAAAA00000;
}


void kbdActivate (unsigned int row)
{ /* aktiverar angiven rad hos tangentbordet, eller deaktivera samtliga */

	switch (row) 
	{
		case 1: GPIO_D.odrHigh = 0x10; break;
		case 2: GPIO_D.odrHigh = 0x20; break;
		case 3: GPIO_D.odrHigh = 0x40; break;
		case 4: GPIO_D.odrHigh = 0x80; break;
		case 0: GPIO_D.odrHigh = 0x00; break;
	}
}



int kbdGetCol (void)
{ /* om någon tangent (i aktiverad rad) är nedtryckt, returnera dess kolumner, annars, returnera 0 */
	unsigned char c;
	c = GPIO_D.idrHigh;
	if (c & 0x8) return 4;
	if (c & 0x4) return 3;
	if (c & 0x2) return 2;
	if (c & 0x1) return 1;
	return 0;
}




unsigned char keyb (void)
{
	unsigned char key[]= {1,2,3,0xA,4,5,6,0xB,7,8,9,0xC,0xE,0,0xF,0xD};
	int row, col;
	for (row=1; row <= 4; row++){
		kbdActivate(row);
		if((col = kbdGetCol() ))
		{
			kbdActivate(0);
			return key [4*(row-1)+(col-1)];
		}
	}
	kbdActivate(0);
	return 1;
}


void out7seg(unsigned char key_)
{
	if (key_ > 0xF)
	{
	GPIO_E.odrLow = 0x00;
	}
	else
	{
	
	unsigned char SegCodes[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x67,0x77,0x7C,0x58,0x5E,0x79,0x71};
	GPIO_E.odrLow = SegCodes[key_];
	}

}