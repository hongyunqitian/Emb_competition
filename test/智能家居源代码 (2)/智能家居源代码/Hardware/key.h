#include "sys.h"
#include "stm32f4xx_conf.h"
#include "delay.h"


#ifndef _KEY_BOARD
#define _KEY_BOARD

#define KEY1	PEout(2)
#define KEY2	PEout(3)
#define KEY3	PEout(4)
#define KEY4	PEout(5)

#define KEY5 	PEin(7)
#define KEY6 	PEin(8)
#define KEY7 	PEin(9)
#define KEY8 	PEin(10)

void Key_Init(void);
uint8_t Key_scan(void);

#endif

