#include "delay.h"

/**
 * @brief 初始化延时函数
 * @retval None
 */
void delay_init(void)
{
    uint32_t systemClock = HAL_RCC_GetSysClockFreq();
    if (systemClock == 0) {
        while (1); // 系统时钟未配置，错误处理
    }
    
    /* 使能 DWT 功能 */
    CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;
    
    /* 使能 DWT CYCCNT 寄存器计数 */
    DWT->CTRL |= DWT_CTRL_CYCCNTENA_Msk;
    
    /* 重置计数器 */
    DWT->CYCCNT = 0;
}

/**
 * @brief 微秒级延时
 * @param us: 延时的微秒数
 * @retval None
 */
void delay_us(uint32_t us)
{
    if (us == 0) return;
    
    /* 重新获取系统时钟，确保获取正确的频率 */
    uint32_t systemClock = HAL_RCC_GetSysClockFreq();
    uint32_t ticks = (uint32_t)((float)us * (systemClock / 1000000.0f));
    
    /* 使用 volatile 变量防止编译器优化 */
    volatile uint32_t told = DWT->CYCCNT;
    volatile uint32_t tcnt = 0;
    volatile uint32_t tnow;
    
    while (tcnt < ticks)
    {
        tnow = DWT->CYCCNT;
        if (tnow != told)
        {
            if (tnow > told)
            {
                tcnt += (tnow - told);
            }
            else  // 处理计数器溢出
            {
                tcnt += (UINT32_MAX - told + tnow);
            }
            told = tnow;
        }
        /* 插入 NOP，防止循环被优化掉 */
        __asm volatile ("nop");
    }
}

/**
 * @brief 毫秒级延时
 * @param ms: 延时的毫秒数
 * @retval None
 */
void delay_ms(uint32_t ms)
{
    while (ms--)
    {
        delay_us(1000);
    }
}

/**
 * @brief 基于循环计数的延时函数，适用于不同的 MCU
 * @param cycles: 延时的周期数
 * @retval None
 */
void delay_cycles(uint32_t cycles)
{
    volatile uint32_t start;
    
    /* 使能 DWT 功能 */
    CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;
    
    /* 使能 DWT CYCCNT 寄存器计数 */
    DWT->CTRL |= DWT_CTRL_CYCCNTENA_Msk; 
    
    /* 重置计数器 */
    DWT->CYCCNT = 0;
    
    /* 读取当前计数值 */
    start = DWT->CYCCNT;
    
    /* 等待直到经过了足够的周期 */
    while ((DWT->CYCCNT - start) < cycles)
    {
        __asm volatile ("nop");
    }
}
