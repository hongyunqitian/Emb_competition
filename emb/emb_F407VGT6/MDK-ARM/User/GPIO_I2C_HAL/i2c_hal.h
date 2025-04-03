#ifndef __I2C_HAL_H
#define __I2C_HAL_H
#include "main.h"
#define SDA_PIN GPIO_PIN_7
#define SDA_PORT GPIOB
#define SCL_PIN GPIO_PIN_6
#define SCL_PORT GPIOB



void I2CStart(void);
void I2CStop(void);
unsigned char I2CWaitAck(void);
void I2CSendAck(void);
void I2CSendNotAck(void);
void I2CSendByte(unsigned char cSendByte);
unsigned char I2CReceiveByte(void);
void I2CInit(void);

#endif
