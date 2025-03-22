#ifndef __APPS_H
#define __APPS_H

#include "stm32f4xx.h"
#include "stm32f4xx_conf.h"
#include "sys.h"

void Apps_Init(void);


void Fan_On(void);
void Fan_Off(void);

void InDoor_On(void);
void InDoor_Off(void);

void OutDoor_On(void);
void OutDoor_Off(void);

void HVAC_On(void);
void HVAC_Off(void);


#endif
