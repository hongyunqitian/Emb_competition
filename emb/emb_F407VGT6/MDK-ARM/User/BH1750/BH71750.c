#include "BH71750.h"
/*
 * @brief 初始化BH1750
 * @param 初始化为单次高分辨率模式
*/
void BH1750_Init(void){
    I2CInit();//蓝桥杯的I2C驱动
    //先设置为通电模式
    I2CStart();
    I2CSendByte(BH1750_Write_ADD);
    I2CWaitAck();//等待从机应答
    I2CSendByte(BH1750_POWER_ON);//0x01
    I2CWaitAck();//等待从机应答
    I2CStop();//停止
    HAL_Delay(10);//等待10ms
    //设置为单次高分辨率模式
    I2CStart();
    I2CSendByte(BH1750_Write_ADD);
    I2CWaitAck();//等待从机应答
    I2CSendByte(BH1750_CON_H_RES_MODE);//单次高分辨率模式,0x20
    I2CWaitAck();//等待从机应答
    I2CStop();//停止
    HAL_Delay(10);//等待10ms
}

/*
 * @brief 读取BH1750
 * @param 无
 * @return 光照强度:(float)((data[0]<<8)|data[1])/1.2
 * @note 注意看手册的时序图，和I2c读E2PROM的有一点不一样
 * @经过串口测试没有问题
 * @How to calculate when the data High Byte
 * @is "00000001" and Low Byte is "00010000"(28+ 24)/1.2 = 227 [x]
 * @读出来的数据与实际lux的转换公式：lux = ((data[0]<<8)|data[1])/1.2
*/
float BH1750_Read(void){
    uint8_t data[2];
    I2CStart();
    I2CSendByte(BH1750_Read_ADD);//读地址
    I2CWaitAck();//等待从机应答
    data[0]=I2CReceiveByte();//高8位
    //printf("data[0]:%x\n",data[0]);
    I2CSendAck();//发送应答
    data[1]=I2CReceiveByte();//低八位
    //printf("data[1]:%x\n",data[1]);
    I2CSendNotAck();//发送非应答
    I2CStop();
    return (float)((data[0]<<8)|data[1])/1.2f;
}

/*
 * @brief 进入休眠状态
 * @param BH1750_POWER_DOWN :0x00
 * @return 无
 * @note 进入休眠状态后，BH1750将停止工作，直到再次被唤醒
 * @经过串口测试没有问题
 * @可以停止测量
*/
void BH1750_Stop(void){
    I2CInit();//蓝桥杯的I2C驱动
    //先设置为通电模式
    I2CStart();
    I2CSendByte(BH1750_Write_ADD);
    I2CWaitAck();//等待从机应答
    I2CSendByte(BH1750_POWER_DOWN);//0x00
    I2CWaitAck();//等待从机应答
    I2CStop();//停止
    HAL_Delay(10);//等待10ms
}



