/**********************************************************************
作者: 深圳小余电子  QQ：562409206   

该例程是专门为淘宝信泰微店铺的压力传感器 调试的测试代码！

转载请注明出处。

***********************************************************************/

#include "main.h"
#include "HX711.h"
#include "LCD1602.h"

unsigned long HX711_Buffer = 0;
unsigned long Weight_Maopi = 0;
long Weight_Shiwu = 0;

unsigned char flag = 0;
bit Flag_ERROR = 0;
sbit speak= P1^7;

//校准参数
//因为不同的传感器特性曲线不是很一致，因此，每一个传感器需要矫正这里这个参数才能使测量值很准确。
//当发现测试出来的重量偏大时，增加该数值。
//如果测试出来的重量偏小时，减小改数值。
//该值可以为小数
#define GapValue 400


//****************************************************
//主函数
//****************************************************
void main()
{
  P1=0xf0;  
	/*这里为什么要给P1.0 1.1 1.2 1.3置0,因为这个开发板的液晶驱动和数码管驱动共用了,
	NPN三极管是高电平导通的,因为单片机的IO口默认开机都是1,为了给数码管断开,
	所以需要给数码管驱动手动置0. */
	Init_LCD1602();
	LCD1602_write_com(0x80);
	LCD1602_write_word("Welcome to use!");
	Delay_ms(1000);		 //延时,等待传感器稳定

	Get_Maopi();				//称毛皮重量
	
	while(1)
	{
		EA = 0;
		Get_Weight();			//称重
		EA = 1;

		Scan_Key();

		//显示当前重量
		if( Flag_ERROR == 1)
		{
    	LCD1602_write_com(0x80+0x40);
			LCD1602_write_word("ERROR ");
			speak=0;
		}		
		else
		{         
			speak=1;
			LCD1602_write_com(0x80+0x40);
			LCD1602_write_data(Weight_Shiwu/1000 + 0X30);
      LCD1602_write_data(Weight_Shiwu%1000/100 + 0X30);
      LCD1602_write_data(Weight_Shiwu%100/10 + 0X30);
      LCD1602_write_data(Weight_Shiwu%10 + 0X30);
			LCD1602_write_word(" g");
		}
		
	}
}

//扫描按键
void Scan_Key()
{
	if(KEY1 == 0)
	{
		Delay_ms(5);
		if(KEY1 == 0)
		{
			while(KEY1 == 0);
			Get_Maopi();			//去皮
		}	
	}
}

//****************************************************
//称重
//****************************************************
void Get_Weight()
{
	Weight_Shiwu = HX711_Read();
	Weight_Shiwu = Weight_Shiwu - Weight_Maopi;		//获取净重
	if(Weight_Shiwu > 0)			
	{	
		Weight_Shiwu = (unsigned int)((float)Weight_Shiwu/GapValue); 	//计算实物的实际重量
																		
																		
		if(Weight_Shiwu > 5000)		//超重报警
		{
			Flag_ERROR = 1;	
		}
		else
		{
			Flag_ERROR = 0;
		}
	}
	else
	{
		Weight_Shiwu = 0;
	//	Flag_ERROR = 1;				//负重报警
	}
	
}

//****************************************************
//获取毛皮重量
//****************************************************
void Get_Maopi()
{
	Weight_Maopi = HX711_Read();	
} 

//****************************************************
//MS延时函数(12M晶振下测试)
//****************************************************
void Delay_ms(unsigned int n)
{
	unsigned int  i,j;
	for(i=0;i<n;i++)
		for(j=0;j<123;j++);
}