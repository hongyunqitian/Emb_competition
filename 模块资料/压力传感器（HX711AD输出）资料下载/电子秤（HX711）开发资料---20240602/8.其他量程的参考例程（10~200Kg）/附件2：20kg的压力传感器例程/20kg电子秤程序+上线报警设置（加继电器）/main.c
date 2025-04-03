/*---------------------------------------------------------------------------------------------*/
/* --- 电子秤(HX711)入门级教程 ----------------------------------------------------------------*/
/* --- MCU：STC89C52RC ------------------------------------------------------------------------*/
/* --- 作者：深圳小余电子 ---------------------------------------------------------------------*/
/* --- 来源：https://nmcu.taobao.com/----------------------------------------------------------*/

/* --- 功能：----------------------------------------------------------------------------------*/
/* --- 按键K1为去皮功能,K2和K3是修改报警参数值.  K2加,K3减.  ----------------------------------*/
/* --- 当所测重量大于设置的报警值时,P3.0驱动继电器工作,继电器可以接报警装置等.-----------------*/

/* --- 校正方法：(校正系数具有断电保存功能)----------------------------------------------------*/
/* --- 如果所测重量偏小。则按住K3键不放,再按下K1键.直到显示重量为正确重量时再放开K1和K3按键 ---*/
/* --- 如果所测重量偏大。则按住K2键不放,再按下K1键.直到显示重量为正确重量时再放开K1和K2按键 ---*/
/* --- 如果要在程序中使用此代码,请在程序中注明使用了作者的资料及程序 --------------------------*/
/*---------------------------------------------------------------------------------------------*/

#include "main.h"
#include "LCD1602.h"
#include "HX711.h"
#define uchar unsigned char  //无符号字符型 宏定义	变量范围0~255
#define uint  unsigned int	 //无符号整型 宏定义	变量范围0~65535


#include "eeprom52.h"
//定义变量
unsigned char KEY_NUM = 0;   //用来存放按键按下的键值
unsigned long HX711_Buffer = 0;  //用来存放HX711读取出来的数据
unsigned long Weight_Maopi = 0; //用来存放毛皮数据
long Weight_Shiwu = 0;          //用来存放实物重量
unsigned char Max_Value;             //用来存放设置最大值

unsigned char state = 0;    //用来存放设置状态
unsigned char Blink_Speed = 0;
#define Blink_Speed_Max 6          //该值可以改变设置指针闪烁频率


uint GapValue= 104;	   //传感器曲率

unsigned char num1,num2,times; //num1 和 num2  是存储在单片机eeprom内部的。

sbit JDQ=P3^0;

//报警值，单位是g
#define AlarmValue 20000			



/******************把数据保存到单片机内部eeprom中******************/
void write_eeprom()
{  
    num1=GapValue/256;
	num2=GapValue%256;

    SectorErase(0x2000);
	byte_write(0x2001,Max_Value);
	byte_write(0x2002,  num1);
	byte_write(0x2003,  num2);

    byte_write(0x2060, a_a);	
}

/******************把数据从单片机内部eeprom中读出来*****************/
void read_eeprom()
{
	Max_Value = byte_read(0x2001);
	num1   = byte_read(0x2002);
	num2   = byte_read(0x2003);
	
    a_a      = byte_read(0x2060);
	GapValue= num1*256+num2;
}

/**************开机自检eeprom初始化*****************/
void init_eeprom()
{
	read_eeprom();		//先读
	if(a_a != 20)		//新的单片机初始单片机内问eeprom
	{
	   a_a =20;
	   Max_Value = 10;
	   GapValue= 106;
       write_eeprom();
	}	
	
	
	
}


//扫描按键
void Scan_Key()
{
	if(KEY1 == 0 && KEY2 ==1 && KEY3 ==1 )
	{
		Delay_ms(5);
		if(KEY1 == 0 && KEY2 ==1 && KEY3 ==1 )
		{
			while(KEY1 == 0 && KEY2 ==1 && KEY3 ==1 );
		    Get_Maopi();
			Buzzer_Di();
		}	
	}

	if(KEY2 == 0 && KEY1 ==1 && KEY3 ==1 )
	{
		Delay_ms(5);
		if(KEY2 == 0 && KEY1 ==1 && KEY3 ==1 )
		{
			while(KEY2 == 0 && KEY1 ==1 && KEY3 ==1 );
		    if(Max_Value<20)	 { Max_Value++;}
		    write_eeprom();       //保存数据
			Buzzer_Di();
			LCD1602_write_com(0x80+0x40);
            LCD1602_write_word("JDQ=");
            LCD1602_write_data(Max_Value/100 + 0x30);
            LCD1602_write_data(Max_Value%100/10 + 0x30);
            LCD1602_write_data(Max_Value%10 + 0x30);
		}	
	}

	if(KEY3 == 0 && KEY1 ==1 && KEY2 ==1 )
	{
		Delay_ms(5);
		if(KEY3 == 0 && KEY1 ==1 && KEY2 ==1)
		{
			while(KEY3 == 0 && KEY1 ==1 && KEY2 ==1);
	    	if(Max_Value>1)	 { Max_Value--; }
			 write_eeprom();       //保存数据
			 Buzzer_Di();
			 LCD1602_write_com(0x80+0x40);
            LCD1602_write_word("JDQ=");
            LCD1602_write_data(Max_Value/100 + 0x30);
            LCD1602_write_data(Max_Value%100/10 + 0x30);
            LCD1602_write_data(Max_Value%10 + 0x30);
		}	
	}


   //=======================对实物进行重量校正================================
	if( KEY1 == 0 && KEY2 ==0)
	{
		Delay_ms(25);
		if( KEY1 == 0 && KEY2 ==0)
		{
		    times=0;
			Buzzer =0;
			Delay_ms(25);
			Buzzer =1;
		    if(GapValue<999)  { GapValue++; }
			write_eeprom();       //保存数据
			LCD1602_write_com(0x80+0x40+11);
            LCD1602_write_word("K=");
	        LCD1602_write_data(GapValue/100 + 0x30);
            LCD1602_write_data(GapValue%100/10 + 0x30);
            LCD1602_write_data(GapValue%10 + 0x30);

		}	
	}

	if(KEY1 == 0 && KEY3 ==0)
	{
		Delay_ms(25);
		if(KEY1 == 0 && KEY3 ==0)
		{	
		    times=0; 
			Buzzer =0;
			Delay_ms(25);
			Buzzer =1;
	    	if(GapValue>1)  { 	GapValue--; }
			 write_eeprom();       //保存数据
			LCD1602_write_com(0x80+0x40+11);
            LCD1602_write_word("K=");
	        LCD1602_write_data(GapValue/100 + 0x30);
            LCD1602_write_data(GapValue%100/10 + 0x30);
            LCD1602_write_data(GapValue%10 + 0x30);

		}	
	}

}



//****************************************************
//主函数
//****************************************************
void main()
{
	Init_LCD1602();						//初始化LCD1602
	init_eeprom();      			//读eeprom数据
	LCD1602_write_com(0x80);			//设置LCD1602指针
	LCD1602_write_word("Welcome to use!");
	
	Get_Maopi();
	Get_Maopi();
	Delay_ms(2000);		 //延时2s
	Get_Maopi();
	Get_Maopi();				//称毛皮重量	//多次测量有利于HX711稳定
    LCD1602_write_com(0x01);    //清屏
    
	LCD1602_write_com(0x80+0x40);
    LCD1602_write_word("JDQ=");
	LCD1602_write_data(Max_Value/100 + 0x30);
    LCD1602_write_data(Max_Value%100/10 + 0x30);
    LCD1602_write_data(Max_Value%10 + 0x30);
    LCD1602_write_word("Kg");
   		Buzzer =0;
			Delay_ms(25);
			Buzzer =1;

	while(1)
	{
	   
	    Scan_Key();
        Get_Weight();		
	
		//显示当前重量
		LCD1602_write_com(0x80);
        LCD1602_write_word("Weight=");
        LCD1602_write_data(Weight_Shiwu/10000 + 0x30);
		LCD1602_write_data(Weight_Shiwu%10000/1000 + 0x30);
		LCD1602_write_data('.');
		LCD1602_write_data(Weight_Shiwu%1000/100 + 0x30);
 		LCD1602_write_data(Weight_Shiwu%100/10 + 0x30);
		LCD1602_write_data(Weight_Shiwu%10 + 0x30);	
        
		LCD1602_write_word("Kg");

	
        
        //超限报警
        if(Weight_Shiwu/1000 >= Max_Value || Weight_Shiwu >= AlarmValue)	        //超过设置最大值或者传感器本身量程最大值报警	
		{
			JDQ = 0; Buzzer=0;	
		}
		else
		{
			JDQ = 1; Buzzer=1;
		}

	    times++;
		if(times>=50)
		{
		    times=0;
		    LCD1602_write_com(0x80+0x40+11);
            LCD1602_write_word("     ");
	       
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
	if(Weight_Shiwu >= 0)			
	{	
		Weight_Shiwu = (unsigned long)((float)Weight_Shiwu/GapValue); 	//计算实物的实际重量
	}
	else
	{
		Weight_Shiwu = 0;
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

//****************************************************
//蜂鸣器程序
//****************************************************
void Buzzer_Di()
{
	Buzzer = 0;
	Delay_ms(10);
	Buzzer = 1;
	Delay_ms(10);
}

