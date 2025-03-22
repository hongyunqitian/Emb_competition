#include "key.h"


void Key_Init(void)
{
    GPIO_InitTypeDef  GPIO_InitStructure;
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOE ,ENABLE);
	
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2 | GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOE ,&GPIO_InitStructure);
	
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_7 | GPIO_Pin_8 | GPIO_Pin_9 | GPIO_Pin_10;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
	GPIO_Init(GPIOE ,&GPIO_InitStructure);
}

uint8_t Key_scan(void)
{
    uint8_t key_val=0;
	
	
/*************Scan  1st Line************************/
	GPIO_ResetBits(GPIOE ,GPIO_Pin_2 | GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5);

	GPIO_ResetBits(GPIOE ,GPIO_Pin_2);
	GPIO_SetBits(GPIOE ,GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5);


    if(KEY5 == 0 || KEY6 == 0 || KEY7 == 0 || KEY8 == 0)
    {
        Delay_ms(15);

        if(KEY5 == 0)
			key_val = 1;
			
		else if(KEY6 == 0)
			key_val = 2;
			
		else if(KEY7 == 0)
			key_val = 3;
			
		else if(KEY8 == 0)
			key_val = 13;
			
        else
			key_val = 0;

    }


    
/*************Scan  2st Line************************/
	GPIO_ResetBits(GPIOE ,GPIO_Pin_2 | GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5);

	GPIO_ResetBits(GPIOE ,GPIO_Pin_3);
	GPIO_SetBits(GPIOE ,GPIO_Pin_2 | GPIO_Pin_4 | GPIO_Pin_5);


    if(KEY5 == 0 || KEY6 == 0 || KEY7 == 0 || KEY8 == 0)
    {
        Delay_ms(15);

        if(KEY5 == 0)
			key_val = 4;
			
		else if(KEY6 == 0)
			key_val = 5;
			
		else if(KEY7 == 0)
			key_val = 6;
			
		else if(KEY8 == 0)
			key_val = 14;
			
        else
			key_val = 0;

    }



/*************Scan  3st Line************************/
	GPIO_ResetBits(GPIOE ,GPIO_Pin_2 | GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5);

	GPIO_ResetBits(GPIOE ,GPIO_Pin_4);
	GPIO_SetBits(GPIOE ,GPIO_Pin_2 | GPIO_Pin_3 | GPIO_Pin_5);


    if(KEY5 == 0 || KEY6 == 0 || KEY7 == 0 || KEY8 == 0)
    {
        Delay_ms(15);

        if(KEY5 == 0)
			key_val = 7;
			
		else if(KEY6 == 0)
			key_val = 8;
			
		else if(KEY7 == 0)
			key_val = 9;
			
		else if(KEY8 == 0)
			key_val = 15;
			
        else
			key_val = 0;

    }



/*************Scan  4st Line************************/
	GPIO_ResetBits(GPIOE ,GPIO_Pin_2 | GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5);

	GPIO_ResetBits(GPIOE ,GPIO_Pin_5);
	GPIO_SetBits(GPIOE ,GPIO_Pin_2 | GPIO_Pin_3 | GPIO_Pin_4);


    if(KEY5 == 0 || KEY6 == 0 || KEY7 == 0 || KEY8 == 0)
    {
        Delay_ms(15);

        if(KEY5 == 0)
			key_val = 11;
			
		else if(KEY6 == 0)
			key_val = 10;
			
		else if(KEY7 == 0)
			key_val = 12;
			
		else if(KEY8 == 0)
			key_val = 16;
			
        else
			key_val = 0;
			
    }
	
	Delay_ms(25);
    return key_val;
}

