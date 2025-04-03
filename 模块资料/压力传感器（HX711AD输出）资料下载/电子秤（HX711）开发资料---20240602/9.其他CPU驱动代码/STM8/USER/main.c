#include "stm8s.h"
#include "stm8s_clk.h"
#include "stm8s_gpio.h"
#include "delay.h"
#include "stm8s_uart1.h"
#include "string.h"
#include "stdio.h"
#include "HX711.h"

/*******************************************************************************
串口初始化
*******************************************************************************/
void Uart_Init(void)
{
  UART1_DeInit();
  UART1_Init((u32)115200, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);
  UART1_ITConfig(UART1_IT_RXNE_OR,ENABLE);
  UART1_Cmd(ENABLE);
}
/*******************************************************************************
串口接收中断
*******************************************************************************/
#pragma vector=0x14
__interrupt void UART1_RX_IRQHandler(void)
{ 
  if(UART1_GetITStatus(UART1_IT_RXNE )!= RESET)  
  {

  }
}
/*******************************************************************************
改写putchar函数
*******************************************************************************/
int putchar(int c)  
{  
  UART1_SendData8((unsigned char)c);
  while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET);
  return (c);  
}
/*******************************************************************************
主程序
*******************************************************************************/
void main(void)
{ 
  CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);//提高时钟频率
  CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
 
  delay_init(16);
  Uart_Init();
  Init_HX711pin();
  Get_Maopi();//称毛皮重量
  delay_ms(1000);
  delay_ms(1000);
  Get_Maopi();//重新获取毛皮重量
  while (1)
  {
    Get_Weight();
    printf("净重量 = %ld g\r\n",(u32)Weight_Shiwu); //打印 
    
    delay_ms(1000);
  }
}
