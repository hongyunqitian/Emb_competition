
/*---------------------------------------------------------------------*/
/* --- 电子秤(HX711)入门级教程 ----------------------------------------*/
/* --- MCU：STC89C52RC ------------------------------------------------*/
/* --- 作者：深圳小余电子 ---------------------------------------------*/
/* --- 来源：https://nmcu.taobao.com/----------------------------------*/
/* --- 本例程支持串口打印,外部晶振11.0592 , 波特率为9600---------------*/
/* --- 如果要在程序中使用此代码,请在程序中注明使用了作者的资料及程序 --*/
/*---------------------------------------------------------------------*/

#include "main.h"
#include "HX711.h"
#include "Sprint.h"
#include "LCD1602.h"

long          Weight_Shiwu = 0;     //定义重量数据变量
unsigned long HX711_Buffer = 0;     //定义AD临时数据
unsigned long Weight_Maopi = 0;     //定义毛皮变量
unsigned long HX711_Data[12] = {0}; //定义12个数组并且初始化为0
unsigned char Average_times=3;      //平均滤波深度
unsigned int  weight_warn=5000;     //定义的超重报警值


sbit Speak= P1^7; //定义的蜂鸣器超重报警 低电平驱动     在使用中可以不用接这个,不影响使用。


#define GapValue 395
//GapValue 为校准参数
//由于称重传感器特性曲线通常不是很一致.   因此,每一个传感器需要矫正这里这个参数才能使测量值很准确。
//当发现测试出来的重量偏大时,增加该数值。
//如果测试出来的重量偏小时,减小改数值。
//该值可以为小数




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
//获取毛皮重量的AD值
//****************************************************
void Get_Maopi()   //连续读N次然后取平均值作为毛皮AD,这样有助于稳定性。
{
	 unsigned char i;
	 HX711_Buffer=0;
	
   for(i=0;i<Average_times;i++)	//读N次的数据然后取平均
		{
		 HX711_Data[i]=HX711_Read();
     HX711_Buffer=HX711_Buffer+HX711_Data[i];
    }
    Weight_Maopi =HX711_Buffer/Average_times;	
} 


//****************************************************
//扫描按键   用于去皮操作 
//如果需要其他按键功能,可以添加在这个函数中。
//****************************************************
void Scan_Key()
{
	if(KEY1 == 0)  //KEY1为去皮按键
	{
		Delay_ms(5);        //抖动延迟
		if(KEY1 == 0)       //再次检测按键是否按下
		{
			while(KEY1 == 0); //等待按键弹起
			Get_Maopi();			//去皮
			Speak=0;          //蜂鸣器提示音
			Delay_ms(50);			
			Speak=1;	
		}	
	}
}

//****************************************************
//读取AD平均值
//****************************************************
unsigned long Get_AD()   //连续读N次然后取平均值作为毛皮AD,这样有助于稳定性。
{
	 static unsigned char times=0; //定义局部变量
	 unsigned char i;
	 HX711_Buffer=0;
		 
	 HX711_Data[times]=HX711_Read(); //读AD值存放在数组中
	 times++;
	 if(times>=Average_times) times=0;
	
	 for(i=0;i<Average_times;i++)	//读连续周期平均值
		{
		 HX711_Buffer=HX711_Buffer+HX711_Data[i];			
		}
		HX711_Buffer=HX711_Buffer/Average_times;
		
		return(HX711_Buffer);
}	


//****************************************************
//显示数据以及超重报警处理函数
//****************************************************
void Dispaly_and_Warn()   //
{
 	Weight_Shiwu = Weight_Shiwu - Weight_Maopi;		//将AD的变化差值 作为物体的净重AD值
	if(Weight_Shiwu >= 0)		//当为正数时	
	{	
		Weight_Shiwu = (unsigned int)(Weight_Shiwu/GapValue); 	//计算实物的实际重量
		
		if(Weight_Shiwu > weight_warn)		//超重报警
		{
		  printf("超重!!!\n");
			LCD1602_write_com(0x80+0x40+1);
			LCD1602_write_word("ERROR ");
			Speak=0;	
		}
		else
		{
			Speak=1;
      printf("当前重量: %u g \r\n",(unsigned int)Weight_Shiwu);  	//串口打印重量数据

			LCD1602_write_com(0x80+0x40);
			LCD1602_write_word(" ");
			LCD1602_write_data(Weight_Shiwu%10000/1000 + 0X30);
			LCD1602_write_data(Weight_Shiwu%1000/100 + 0X30);
			LCD1602_write_data(Weight_Shiwu%100/10 + 0X30);
			LCD1602_write_data(Weight_Shiwu%10 + 0X30);
			LCD1602_write_word("g");
		}
	}
	
	else    //当为负数时
	{
			Weight_Shiwu = -Weight_Shiwu;
		  Weight_Shiwu = (unsigned int)(Weight_Shiwu/GapValue); 	//计算实物的实际重量
			if(Weight_Shiwu>0)
			{ 
        printf("当前重量:-%u g \r\n",(unsigned int)Weight_Shiwu);  	//串口打印重量数据
				
				LCD1602_write_com(0x80+0x40);
				LCD1602_write_word("-");
				LCD1602_write_data(Weight_Shiwu%10000/1000 + 0X30);
				LCD1602_write_data(Weight_Shiwu%1000/100 + 0X30);
				LCD1602_write_data(Weight_Shiwu%100/10 + 0X30);
				LCD1602_write_data(Weight_Shiwu%10 + 0X30);
				LCD1602_write_word("g");
			}
 }
}


//****************************************************
//称重数据处理
//****************************************************
void Get_Weight()
{
	static unsigned char Shuaxin=0; //定义局部变量
	
	Weight_Shiwu = Get_AD(); //先读取AD值赋值给Weight_Shiwu
	
	Shuaxin++;
	if(Shuaxin>=2) //AD为10HZ,每次约200ms  这里是读取2次约200ms开始刷新液晶显示屏和串口打印数据,目的是防止刷新速度太快影响感观
	 {
		Shuaxin=0;
		Dispaly_and_Warn();
	 }
		
}

//****************************************************
//主函数
//****************************************************
void main()
{ 
	unsigned char i;
	
	Uart_Init();      //串口打印初始化
	printf("欢迎使用电子秤教程!\n");
  printf("来源：https://nmcu.taobao.com \n");  // 
	
	Init_LCD1602();   //液晶初始化
	LCD1602_write_com(0x80);
	LCD1602_write_word("Welcome to use!");
	Delay_ms(200);		 //延时,等待传感器稳定

	Get_Maopi();				//称毛皮重量
	
	while(1)
	{ 
	 for(i=0;i<100;i++)	//延迟100ms
		{
			Delay_ms(1);	
		 	Scan_Key();   //去皮按键扫描		
		}
		Get_Weight();	  //称重数据处理
	}
}







