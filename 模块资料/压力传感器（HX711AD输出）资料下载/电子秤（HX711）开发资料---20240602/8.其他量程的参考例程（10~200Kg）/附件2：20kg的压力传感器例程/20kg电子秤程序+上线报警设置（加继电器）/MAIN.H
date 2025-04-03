/**********************************************************************
淘宝店铺：深圳小余电子
店铺地址：https://nmcu.taobao.com
技术QQ：562409206
支持定制各种电子秤模块,自定义协议,modbus协议等,可按照客户要求定制......
***********************************************************************/
#ifndef __MAIN_H__
#define __MAIN_H__

#include <reg52.h>


sbit Buzzer = P1^7;

//按键 IO设置
sbit KEY1 = P3^2;
sbit KEY2 = P3^3;
sbit KEY3 = P3^4;



//函数或者变量声明
extern void Delay_ms(unsigned int n);
extern void Buzzer_Di();
extern void Get_Maopi();
extern void Get_Weight();
extern void Scan_Key();
extern unsigned char KEY_NUM;

#endif