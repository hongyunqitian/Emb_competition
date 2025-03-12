

#include "Dis_Picture.h" 
										    

//////////////////////////////////////////////////////////////////////////////////	 
/******************************************************************************/	 
//图片显示 驱动代码	



 
/******************************************************************************/							  


//16位 垂直扫描  右到左  高位在前
void Show_Picture(void)
{
	u32 i,j,k=0;
	
	u16 picH,picL;
	
	LCD_Clear(WHITE);//清屏
	
	Draw_Font16B(24,16,BLUE,"3: 图片显示测试");	
	
	delay_ms(1000);    //延时显示
	
	LCD_Clear(WHITE);  //清屏
	
	#if USE_HORIZONTAL==1	//使用横屏	

	{
	
		LCD_Set_Window(0,0,lcddev.width,lcddev.height);//设置一个自动换行显示区域窗口

		LCD_WriteRAM_Prepare();     	//开始写入GRAM	
						
		for(i=0;i<lcddev.width;i++)
		for(j=0;j<lcddev.height;j++)
		{
			picH=gImage_LCD280[k++];
			picL=gImage_LCD280[k++];
			
			LCD_WR_DATA8(picH);  //写8位显示数据
			LCD_WR_DATA8(picL);
			
		}			
	}	

		
	#else	
	
	{
		
		LCD_Set_Window(0,0,lcddev.width,lcddev.height);//设置一个自动换行显示区域窗口

		LCD_WriteRAM_Prepare();     	//开始写入GRAM	
						
		for(i=0;i<lcddev.height;i++)
		for(j=0;j<lcddev.width;j++)
		{
			picH=gImage_LCD280[k++];
			picL=gImage_LCD280[k++];
			
			LCD_WR_DATA8(picH);  //写8位显示数据
			LCD_WR_DATA8(picL);
		}	
	}

	
	#endif
	
} 





/*******************************************************************************/




 
/*******************************************************************************/

















		  






