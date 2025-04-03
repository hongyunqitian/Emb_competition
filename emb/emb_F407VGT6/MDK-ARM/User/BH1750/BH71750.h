#ifndef __BH71750_H
#define __BH71750_H
#include "system.h"
/*
addr接地
BH1750地址：0100011 ，最后一位表示i2c读或写
write:01000110 0x46
read:01000111 0x47
VCC接5V
i2C使用模拟IO口，引脚查看i2C_hal.h文件
BH71750内部已有上拉电阻，单片机引脚无需再上拉
CSDN相关资料链接：https://blog.csdn.net/ShenZhen_zixian/article/details/137750786?fromshare=blogdetail&sharetype=blogdetail&sharerId=137750786&sharerefer=PC&sharesource=2301_80825409&sharefrom=from_link
库完成时间：2025-03-30 10：42
author:LUHan
*/
#define BH1750_Write_ADD 0x46
#define BH1750_Read_ADD 0x47
/*bh1750 registers define */
#define BH1750_POWER_ON			0x01	// power on
#define BH1750_POWER_DOWN   	0x00	// power down
#define BH1750_RESET			0x07	// reset	
#define BH1750_CON_H_RES_MODE	0x10	// Continuously H-Resolution Mode
#define BH1750_CON_H_RES_MODE2	0x11	// Continuously H-Resolution Mode2 
#define BH1750_CON_L_RES_MODE	0x13	// Continuously L-Resolution Mode
#define BH1750_ONE_H_RES_MODE	0x20	// One Time H-Resolution Mode
#define BH1750_ONE_H_RES_MODE2	0x21	// One Time H-Resolution Mode2
#define BH1750_ONE_L_RES_MODE	0x23	// One Time L-Resolution Mode

void BH1750_Init(void);//初始化BH1750
float BH1750_Read(void);//读取BH1750数据
void BH1750_Stop(void);//进入休眠状态




#endif





