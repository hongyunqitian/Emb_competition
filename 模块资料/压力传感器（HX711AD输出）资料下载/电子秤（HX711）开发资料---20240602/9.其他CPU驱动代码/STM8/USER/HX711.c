#include "HX711.h"
#include "delay.h"

u32 HX711_Buffer;
u32 Weight_Maopi;
s32 Weight_Shiwu;
u8 Flag_Error = 0;

//校准参数
//因为不同的传感器特性曲线不是很一致，因此，每一个传感器需要矫正这里这个参数才能使测量值很准确。
//当发现测试出来的重量偏大时，增加该数值。
//如果测试出来的重量偏小时，减小改数值。
//该值可以为小数
#define GapValue 48.5


void Init_HX711pin(void)
{
  GPIO_Init(GPIOA, GPIO_PIN_3, GPIO_MODE_OUT_PP_HIGH_FAST);//HX711_SCK
  GPIO_Init(GPIOA, GPIO_PIN_2, GPIO_MODE_IN_PU_NO_IT);//HX711_DOUT
  HX711_SCK(0); 
}
//****************************************************
//读取HX711
//****************************************************
u32 HX711_Read(void)	//增益128
{
  unsigned long count; 
  unsigned char i; 
  HX711_DOUT_SETOUT;
  HX711_DOUT_OUT(1); 
  HX711_DOUT_SETIN;
  delay_us(10);
  HX711_SCK(0); 
  count=0; 
  while(HX711_DOUT_GET); 
  for(i=0;i<24;i++)
  { 
    HX711_SCK(1); 
    count=count<<1; 
    delay_us(10);
    HX711_SCK(0); 
    if(HX711_DOUT_GET)
      count++; 
    delay_us(10);
  } 
  HX711_SCK(1); 
  count=count^0x800000;//第25个脉冲下降沿来时，转换数据
  delay_us(10);
  HX711_SCK(0);  
  return(count);
}

//****************************************************
//获取毛皮重量
//****************************************************
void Get_Maopi(void)
{
  Weight_Maopi = HX711_Read();	
} 

//****************************************************
//称重
//****************************************************
void Get_Weight(void)
{
  HX711_Buffer = HX711_Read();
  if(HX711_Buffer > Weight_Maopi)			
  {
    Weight_Shiwu = HX711_Buffer;
    Weight_Shiwu = Weight_Shiwu - Weight_Maopi;				//获取实物的AD采样数值。
    
    Weight_Shiwu = (s32)((float)Weight_Shiwu/GapValue); 	//计算实物的实际重量
    //因为不同的传感器特性曲线不一样，因此，每一个传感器需要矫正这里的GapValue这个除数。
    //当发现测试出来的重量偏大时，增加该数值。
    //如果测试出来的重量偏小时，减小改数值。
  }
  
  
}
