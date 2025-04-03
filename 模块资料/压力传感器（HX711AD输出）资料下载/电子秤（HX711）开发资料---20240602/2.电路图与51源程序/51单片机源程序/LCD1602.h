
/*---------------------------------------------------------------------*/
/* --- 电子秤(HX711)入门级教程 ----------------------------------------*/
/* --- MCU：STC89C52RC ------------------------------------------------*/
/* --- 作者：深圳小余电子 ---------------------------------------------*/
/* --- 来源：https://nmcu.taobao.com/----------------------------------*/
/* --- 本例程支持串口打印,外部晶振11.0592 , 波特率为9600---------------*/
/* --- 如果要在程序中使用此代码,请在程序中注明使用了作者的资料及程序 --*/
/*---------------------------------------------------------------------*/

#ifndef __LCD1602_H__
#define __LCD1602_H__


#include <reg52.h>

//LCD1602 IO设置           //液晶显示屏IO口配置；  请根据自己的硬件线路,正确配置IO口
#define LCD1602_PORT P0    //液晶数据总线P0
sbit LCD1602_RS = P2^5;    //LCD_RS
sbit LCD1602_RW = P2^6;    //LCD_RW
sbit LCD1602_EN = P2^7;    //LCD_EN

//函数或者变量声明
extern void LCD1602_delay_ms(unsigned int n);
extern void LCD1602_write_com(unsigned char com);
extern void LCD1602_write_data(unsigned char dat);
extern void LCD1602_write_word(unsigned char *s);
extern void Init_LCD1602();

#endif