#ifndef __HX711_H
#define __HX711_H

#include "stm8s.h"

#define HX711_SCK(a) if(a){GPIO_WriteHigh(GPIOA, GPIO_PIN_3);}else{GPIO_WriteLow(GPIOA, GPIO_PIN_3);}//PA3

#define HX711_DOUT_SETIN GPIO_Init(GPIOA, GPIO_PIN_2, GPIO_MODE_IN_PU_NO_IT)//PA2
#define HX711_DOUT_SETOUT GPIO_Init(GPIOA, GPIO_PIN_2, GPIO_MODE_OUT_PP_HIGH_FAST)//PA2
#define HX711_DOUT_GET GPIO_ReadInputPin(GPIOA, GPIO_PIN_2)//PA2
#define HX711_DOUT_OUT(a) if(a){GPIO_WriteHigh(GPIOA, GPIO_PIN_2);}else{GPIO_WriteLow(GPIOA, GPIO_PIN_2);}//PA2

extern void Init_HX711pin(void);
extern u32 HX711_Read(void);
extern void Get_Maopi(void);
extern void Get_Weight(void);

extern u32 HX711_Buffer;
extern u32 Weight_Maopi;
extern s32 Weight_Shiwu;
extern u8 Flag_Error;

#endif

