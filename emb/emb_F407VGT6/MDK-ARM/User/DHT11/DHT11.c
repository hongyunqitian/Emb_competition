#include "DHT11.h"

/*
 * 初始化DHT11引脚

*/
void DHT11_Init(void){
	
	
    GPIO_InitTypeDef GPIO_InitStruct = {0};
    __HAL_RCC_GPIOA_CLK_ENABLE();
    GPIO_InitStruct.Pin = DHT11_PIN;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
    HAL_GPIO_Init(DHT11_PORT, &GPIO_InitStruct);
}   


/*
 * 读取DHT11的1位数据
*/
uint8_t DHT11_ReadBit(void){
    uint8_t retry = 0;
    while(HAL_GPIO_ReadPin(DHT11_PORT, DHT11_PIN) == 0 && retry < 100){//等待DHT11响应
        delay_us(1);
        retry++;
    }
    retry = 0;
    while(HAL_GPIO_ReadPin(DHT11_PORT, DHT11_PIN) == 1 && retry < 100){//等待高电平
        delay_us(1);
        retry++;
    }
    delay_us(40);//延时40us
    if(HAL_GPIO_ReadPin(DHT11_PORT, DHT11_PIN) == 0){//如果低电平，返回0    
        return 0;
    }else{//如果高电平，返回1   
        return 1;
    }
}

/*
 * 读取DHT11的1个字节
*/
uint8_t DHT11_ReadByte(void){
    uint8_t byte=0;
    for(uint8_t i=0;i<8;i++){
        byte=byte<<1;
        byte|=DHT11_ReadBit();
    }
    return byte;
}

/*
 * 检测DHT11是否响应
 * 返回值：0-DHT11响应，1-DHT11未响应
*/
uint8_t DHT11_Check(void){

    uint8_t retry = 0;
    HAL_GPIO_WritePin(DHT11_PORT, DHT11_PIN, GPIO_PIN_RESET);//拉低至少18ms
    delay_ms(30);
    HAL_GPIO_WritePin(DHT11_PORT, DHT11_PIN, GPIO_PIN_SET);//拉高20~40us
    delay_us(20);//延时30us

    while(HAL_GPIO_ReadPin(DHT11_PORT, DHT11_PIN) == 0 && retry < 100){//等待DHT11响应
        retry++;
        delay_us(1);
    }
    if(retry >= 100){return 1;}//如果DHT11没有响应，返回1
    retry = 0;
    while(HAL_GPIO_ReadPin(DHT11_PORT, DHT11_PIN) == 1 && retry < 100){//等待DHT11响应
        retry++;
        delay_us(1);
    }
    if(retry >= 100){return 1;}//如果DHT11没有响应，返回1
    return 0;
}

uint8_t DHT11_ReadData(uint8_t *humi,uint8_t *temp){
    uint8_t data[5];
    if(DHT11_Check() == 0){
        for(uint8_t i=0;i<5;i++){
            data[i] = DHT11_ReadByte();
        }
        if(data[4] == (data[0] + data[1] + data[2] + data[3])){ //校验数据  
            *temp = data[2];    //温度整数部分
            *humi = data[0];    //湿度整数部分
            return 0;
        }
    }


        return 1;

}



