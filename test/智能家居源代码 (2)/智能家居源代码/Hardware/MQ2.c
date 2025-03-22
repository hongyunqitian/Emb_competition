#include "MQ2.h"
#include "Delay.h"

void Adc_Init(void)
{
	//GPIO ADC1 时钟使能
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA,ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1,ENABLE);
	//GPIO参数 PA1
	GPIO_InitTypeDef GPIO_InitStructure={0};
	GPIO_InitStructure.GPIO_Mode=GPIO_Mode_AN;//模拟输入
	GPIO_InitStructure.GPIO_OType=GPIO_OType_PP;//推挽
	GPIO_InitStructure.GPIO_Pin=GPIO_Pin_1;//引脚配置
	GPIO_InitStructure.GPIO_PuPd=GPIO_PuPd_NOPULL;//浮空
	GPIO_InitStructure.GPIO_Speed=GPIO_High_Speed;//高速
	GPIO_Init(GPIOA,&GPIO_InitStructure);
	
	//ADC通道配置
	ADC_CommonInitTypeDef ADC_CommonInitStructure={0};
	ADC_CommonInitStructure.ADC_DMAAccessMode=ADC_DMAAccessMode_Disabled;//不使用DMA
	ADC_CommonInitStructure.ADC_Mode=ADC_Mode_Independent;//独立模式
	ADC_CommonInitStructure.ADC_Prescaler=ADC_Prescaler_Div4;//时钟分频
						//ADCCLK=PCLK2/4=84/4=21Mhz,ADC 时钟最好不要超过 36Mhz
	ADC_CommonInitStructure.ADC_TwoSamplingDelay=ADC_TwoSamplingDelay_5Cycles;//采样间隔
						//两个采样阶段之间的延迟 5 个时钟
	ADC_CommonInit(&ADC_CommonInitStructure);
	
	//ADC参数
	ADC_InitTypeDef ADC_InitStructure={0};
	ADC_InitStructure.ADC_ContinuousConvMode=DISABLE;//关闭连续转换
	ADC_InitStructure.ADC_DataAlign=ADC_DataAlign_Right;//数据右对齐
	ADC_InitStructure.ADC_ExternalTrigConvEdge=ADC_ExternalTrigConvEdge_None;//禁止触发检测，使用软件触发
	ADC_InitStructure.ADC_NbrOfConversion=1;//1 个转换在规则序列中(ADC转换次数)
	ADC_InitStructure.ADC_Resolution=ADC_Resolution_12b;//分辨率
	ADC_InitStructure.ADC_ScanConvMode=DISABLE;//非扫描模式
	ADC_Init(ADC1,&ADC_InitStructure);
	
	//使能ADC1
	ADC_Cmd(ADC1,ENABLE);
}
 
 
//获取ADC采样的值
uint16_t Get_Adc_Data(uint8_t ch)
{
	//设置指定 ADC 的规则组通道，一个序列，采样时间
	ADC_RegularChannelConfig(ADC1,ch,1,ADC_SampleTime_480Cycles);
	ADC_SoftwareStartConv(ADC1);//使能指定的 ADC1 的软件转换启动功能
	while(!ADC_GetFlagStatus(ADC1,ADC_FLAG_EOC));//等待转换结束
	return ADC_GetConversionValue(ADC1); //返回最近一次 ADC1 规则组的转换结果		
}
//获取通道 ch 的转换值，取 times 次,然后平均
//ch:通道编号 times:获取次数
//返回值:通道 ch 的 times 次转换结果平均值
uint16_t Get_Adc_Average(uint8_t ch,uint8_t times)
{
	uint32_t temp_val=0; uint8_t t;
	for(t=0;t<times;t++)
	{
		temp_val+=Get_Adc_Data(ch); Delay_ms(5);
	}
	return temp_val/times;
}
