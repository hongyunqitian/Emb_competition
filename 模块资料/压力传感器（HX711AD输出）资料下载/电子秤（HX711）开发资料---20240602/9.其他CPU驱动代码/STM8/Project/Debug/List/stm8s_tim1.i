#line 1 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\src\\stm8s_tim1.c"
/**
  ******************************************************************************
  * @file    stm8s_tim1.c
  * @author  MCD Application Team
  * @version V2.0.0
  * @date    25-February-2011
  * @brief   This file contains all the functions for the TIM1 peripheral.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#line 1 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_tim1.h"
/**
  ******************************************************************************
  * @file    stm8s_tim1.h
  * @author  MCD Application Team
  * @version V2.0.0
  * @date    25-February-2011
  * @brief   This file contains all functions prototype and macros for the TIM1 peripheral.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Define to prevent recursive inclusion -------------------------------------*/



/* Includes ------------------------------------------------------------------*/
#line 1 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"
/**
  ******************************************************************************
  * @file    stm8s.h
  * @author  MCD Application Team
  * @version V2.0.0
  * @date    25-February-2011
  * @brief   This file contains all HW registers definitions and memory mapping.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Define to prevent recursive inclusion -------------------------------------*/



/** @addtogroup STM8S_StdPeriph_Driver
  * @{
  */
  
/* Uncomment the line below according to the target STM8S or STM8A device used in your
   application. */

 /* #define STM8S208 */      /*!< STM8S High density devices with CAN */

 /* #define STM8AF52Ax */    /*!< STM8A High density devices with CAN */
 /* #define STM8AF62Ax */    /*!< STM8A High density devices without CAN */
 /* #define STM8S105 */      /*!< STM8S Medium density devices */
 /* #define STM8AF626x */    /*!< STM8A Medium density devices */
 /* #define STM8S103 */      /*!< STM8S Low density devices */
 /* #define STM8S903 */      /*!< STM8S Low density devices */

/*   Tip: To avoid modifying this file each time you need to switch between these
        devices, you can define the device in your toolchain compiler preprocessor. 

  - High-Density STM8A devices are the STM8AF52xx STM8AF6269/8x/Ax,
    STM8AF51xx, and STM8AF6169/7x/8x/9x/Ax microcontrollers where the Flash memory
    density ranges between 32 to 128 Kbytes
  - Medium-Density STM8A devices are the STM8AF622x/4x, STM8AF6266/68,
    STM8AF612x/4x, and STM8AF6166/68 microcontrollers where the Flash memory 
    density ranges between 8 to 32 Kbytes
  - High-Density STM8S devices are the STM8S207xx and STM8S208xx microcontrollers
    where the Flash memory density ranges between 32 to 128 Kbytes.
  - Medium-Density STM8S devices are the STM8S105x microcontrollers where the Flash
    memory density ranges between 16 to 32-Kbytes.
  - Low-Density STM8S devices are the STM8S103xx and STM8S903xx microcontrollers
    where the Flash density is 8 Kbytes. */





/******************************************************************************/
/*                   Library configuration section                            */
/******************************************************************************/
/* Check the used compiler */
#line 75 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"


/* Comment the line below if you will not use the peripherals drivers.
   In this case, these drivers will not be included and the application code will be
   based on direct access to peripherals registers */



/**
  * @brief  In the following line adjust the value of External High Speed oscillator (HSE)
   used in your application

   Tip: To avoid modifying this file each time you need to use different HSE, you
        can define the HSE value in your toolchain compiler preprocessor.
  */
#line 97 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/**
  * @brief  Definition of Device on-chip RC oscillator frequencies
  */



#line 130 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/* For FLASH routines, select whether pointer will be declared as near (2 bytes,
   to handle code smaller than 64KB) or far (3 bytes, to handle code larger 
   than 64K) */





/*!< Used with memory Models for code higher than 64K */



/* Uncomment the line below to enable the FLASH functions execution from RAM */

/* #define RAM_EXECUTION  (1) */


#line 159 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/*!< [31:16] STM8S Standard Peripheral Library main version */
#line 169 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/******************************************************************************/

/* Includes ------------------------------------------------------------------*/

/* Exported types and constants ----------------------------------------------*/

/** @addtogroup Exported_types
  * @{
  */

/**
 * IO definitions
 *
 * define access restrictions to peripheral registers
 */




/*!< Signed integer types  */
typedef   signed char     int8_t;
typedef   signed short    int16_t;
typedef   signed long     int32_t;

/*!< Unsigned integer types  */
typedef unsigned char     uint8_t;
typedef unsigned short    uint16_t;
typedef unsigned long     uint32_t;

/*!< STM8 Standard Peripheral Library old types (maintained for legacy purpose) */

typedef int32_t  s32;
typedef int16_t s16;
typedef int8_t  s8;

typedef uint32_t  u32;
typedef uint16_t u16;
typedef uint8_t  u8;

//typedef enum {FALSE = 0, TRUE = !FALSE} bool;
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\stdbool.h"
/* stdbool.h header */
/* Copyright 2003-2010 IAR Systems AB.  */

/* NOTE: IAR Extensions must be enabled in order to use the bool type! */





  #pragma system_include















/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 211 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"



//typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus, BitStatus, BitAction;
#line 221 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

//typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;






//typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;




#line 243 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */
  
/** @addtogroup MAP_FILE_Exported_Types_and_Constants
  * @{
  */

/******************************************************************************/
/*                          IP registers structures                           */
/******************************************************************************/

/**
  * @brief  General Purpose I/Os (GPIO)
  */
typedef struct GPIO_struct
{
  volatile uint8_t ODR; /*!< Output Data Register */
  volatile uint8_t IDR; /*!< Input Data Register */
  volatile uint8_t DDR; /*!< Data Direction Register */
  volatile uint8_t CR1; /*!< Configuration Register 1 */
  volatile uint8_t CR2; /*!< Configuration Register 2 */
}
GPIO_TypeDef;

/** @addtogroup GPIO_Registers_Reset_Value
  * @{
  */






/**
  * @}
  */

/*----------------------------------------------------------------------------*/
#line 370 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"
/**
  * @}
  */

/*----------------------------------------------------------------------------*/
/**
  * @brief  Analog to Digital Converter (ADC2)
  */

 typedef struct ADC2_struct
 {
  volatile uint8_t CSR;        /*!< ADC2 control status register */
  volatile uint8_t CR1;        /*!< ADC2 configuration register 1 */
  volatile uint8_t CR2;        /*!< ADC2 configuration register 2 */
  uint8_t RESERVED;        /*!< Reserved byte */
  volatile uint8_t DRH;        /*!< ADC2 Data high */
  volatile uint8_t DRL;        /*!< ADC2 Data low */
  volatile uint8_t TDRH;       /*!< ADC2 Schmitt trigger disable register high  */
  volatile uint8_t TDRL;       /*!< ADC2 Schmitt trigger disable register low */
 }
 ADC2_TypeDef;

/** @addtogroup ADC2_Registers_Reset_Value
  * @{
  */





/**
  * @}
  */

/** @addtogroup ADC2_Registers_Bits_Definition
  * @{
  */













/**
  * @}
  */

/*----------------------------------------------------------------------------*/

/**
  * @brief  Auto Wake Up (AWU) peripheral registers.
  */
typedef struct AWU_struct
{
  volatile uint8_t CSR; /*!< AWU Control status register */
  volatile uint8_t APR; /*!< AWU Asynchronous prescaler buffer */
  volatile uint8_t TBR; /*!< AWU Time base selection register */
}
AWU_TypeDef;

/** @addtogroup AWU_Registers_Reset_Value
  * @{
  */




/**
  * @}
  */

/** @addtogroup AWU_Registers_Bits_Definition
  * @{
  */









/**
  * @}
  */

/*----------------------------------------------------------------------------*/
/**
  * @brief  Beeper (BEEP) peripheral registers.
  */

typedef struct BEEP_struct
{
  volatile uint8_t CSR; /*!< BEEP Control status register */
}
BEEP_TypeDef;

/** @addtogroup BEEP_Registers_Reset_Value
  * @{
  */

/**
  * @}
  */

/** @addtogroup BEEP_Registers_Bits_Definition
  * @{
  */



/**
  * @}
  */

/*----------------------------------------------------------------------------*/
/**
  * @brief  Clock Controller (CLK)
  */
typedef struct CLK_struct
{
  volatile uint8_t ICKR;     /*!< Internal Clocks Control Register */
  volatile uint8_t ECKR;     /*!< External Clocks Control Register */
  uint8_t RESERVED;      /*!< Reserved byte */
  volatile uint8_t CMSR;     /*!< Clock Master Status Register */
  volatile uint8_t SWR;      /*!< Clock Master Switch Register */
  volatile uint8_t SWCR;     /*!< Switch Control Register */
  volatile uint8_t CKDIVR;   /*!< Clock Divider Register */
  volatile uint8_t PCKENR1;  /*!< Peripheral Clock Gating Register 1 */
  volatile uint8_t CSSR;     /*!< Clock Security System Register */
  volatile uint8_t CCOR;     /*!< Configurable Clock Output Register */
  volatile uint8_t PCKENR2;  /*!< Peripheral Clock Gating Register 2 */
  uint8_t RESERVED1;     /*!< Reserved byte */
  volatile uint8_t HSITRIMR; /*!< HSI Calibration Trimmer Register */
  volatile uint8_t SWIMCCR;  /*!< SWIM clock control register */
}
CLK_TypeDef;

/** @addtogroup CLK_Registers_Reset_Value
  * @{
  */

#line 532 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/** @addtogroup CLK_Registers_Bits_Definition
  * @{
  */
#line 546 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"
















#line 573 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"



















/**
  * @}
  */

/*----------------------------------------------------------------------------*/
/**
  * @brief  16-bit timer with complementary PWM outputs (TIM1)
  */

typedef struct TIM1_struct
{
  volatile uint8_t CR1;   /*!< control register 1 */
  volatile uint8_t CR2;   /*!< control register 2 */
  volatile uint8_t SMCR;  /*!< Synchro mode control register */
  volatile uint8_t ETR;   /*!< external trigger register */
  volatile uint8_t IER;   /*!< interrupt enable register*/
  volatile uint8_t SR1;   /*!< status register 1 */
  volatile uint8_t SR2;   /*!< status register 2 */
  volatile uint8_t EGR;   /*!< event generation register */
  volatile uint8_t CCMR1; /*!< CC mode register 1 */
  volatile uint8_t CCMR2; /*!< CC mode register 2 */
  volatile uint8_t CCMR3; /*!< CC mode register 3 */
  volatile uint8_t CCMR4; /*!< CC mode register 4 */
  volatile uint8_t CCER1; /*!< CC enable register 1 */
  volatile uint8_t CCER2; /*!< CC enable register 2 */
  volatile uint8_t CNTRH; /*!< counter high */
  volatile uint8_t CNTRL; /*!< counter low */
  volatile uint8_t PSCRH; /*!< prescaler high */
  volatile uint8_t PSCRL; /*!< prescaler low */
  volatile uint8_t ARRH;  /*!< auto-reload register high */
  volatile uint8_t ARRL;  /*!< auto-reload register low */
  volatile uint8_t RCR;   /*!< Repetition Counter register */
  volatile uint8_t CCR1H; /*!< capture/compare register 1 high */
  volatile uint8_t CCR1L; /*!< capture/compare register 1 low */
  volatile uint8_t CCR2H; /*!< capture/compare register 2 high */
  volatile uint8_t CCR2L; /*!< capture/compare register 2 low */
  volatile uint8_t CCR3H; /*!< capture/compare register 3 high */
  volatile uint8_t CCR3L; /*!< capture/compare register 3 low */
  volatile uint8_t CCR4H; /*!< capture/compare register 3 high */
  volatile uint8_t CCR4L; /*!< capture/compare register 3 low */
  volatile uint8_t BKR;   /*!< Break Register */
  volatile uint8_t DTR;   /*!< dead-time register */
  volatile uint8_t OISR;  /*!< Output idle register */
}
TIM1_TypeDef;

/** @addtogroup TIM1_Registers_Reset_Value
  * @{
  */

#line 674 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/** @addtogroup TIM1_Registers_Bits_Definition
  * @{
  */
/* CR1*/
#line 690 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"
/* CR2*/




/* SMCR*/



/*ETR*/




/*IER*/
#line 713 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"
/*SR1*/
#line 722 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"
/*SR2*/




/*EGR*/
#line 736 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"
/*CCMR*/
#line 743 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"


/*CCER1*/
#line 754 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"
/*CCER2*/
#line 761 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"
/*CNTRH*/

/*CNTRL*/

/*PSCH*/

/*PSCL*/

/*ARR*/


/*RCR*/

/*CCR1*/


/*CCR2*/


/*CCR3*/


/*CCR4*/


/*BKR*/
#line 794 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"
/*DTR*/

/*OISR*/
#line 804 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"
/**
  * @}
  */

/*----------------------------------------------------------------------------*/
/**
  * @brief  16-bit timer (TIM2)
  */

typedef struct TIM2_struct
{
  volatile uint8_t CR1;   /*!< control register 1 */




  volatile uint8_t IER;   /*!< interrupt enable register */
  volatile uint8_t SR1;   /*!< status register 1 */
  volatile uint8_t SR2;   /*!< status register 2 */
  volatile uint8_t EGR;   /*!< event generation register */
  volatile uint8_t CCMR1; /*!< CC mode register 1 */
  volatile uint8_t CCMR2; /*!< CC mode register 2 */
  volatile uint8_t CCMR3; /*!< CC mode register 3 */
  volatile uint8_t CCER1; /*!< CC enable register 1 */
  volatile uint8_t CCER2; /*!< CC enable register 2 */
  volatile uint8_t CNTRH; /*!< counter high */
  volatile uint8_t CNTRL; /*!< counter low */
  volatile uint8_t PSCR;  /*!< prescaler register */
  volatile uint8_t ARRH;  /*!< auto-reload register high */
  volatile uint8_t ARRL;  /*!< auto-reload register low */
  volatile uint8_t CCR1H; /*!< capture/compare register 1 high */
  volatile uint8_t CCR1L; /*!< capture/compare register 1 low */
  volatile uint8_t CCR2H; /*!< capture/compare register 2 high */
  volatile uint8_t CCR2L; /*!< capture/compare register 2 low */
  volatile uint8_t CCR3H; /*!< capture/compare register 3 high */
  volatile uint8_t CCR3L; /*!< capture/compare register 3 low */
}
TIM2_TypeDef;

/** @addtogroup TIM2_Registers_Reset_Value
  * @{
  */

#line 868 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/** @addtogroup TIM2_Registers_Bits_Definition
  * @{
  */
/*CR1*/





/*IER*/




/*SR1*/




/*SR2*/



/*EGR*/




/*CCMR*/





/*CCER1*/




/*CCER2*/


/*CNTR*/


/*PSCR*/

/*ARR*/


/*CCR1*/


/*CCR2*/


/*CCR3*/



/**
  * @}
  */

/*----------------------------------------------------------------------------*/
/**
  * @brief  16-bit timer (TIM3)
  */
typedef struct TIM3_struct
{
  volatile uint8_t CR1;   /*!< control register 1 */
  volatile uint8_t IER;   /*!< interrupt enable register */
  volatile uint8_t SR1;   /*!< status register 1 */
  volatile uint8_t SR2;   /*!< status register 2 */
  volatile uint8_t EGR;   /*!< event generation register */
  volatile uint8_t CCMR1; /*!< CC mode register 1 */
  volatile uint8_t CCMR2; /*!< CC mode register 2 */
  volatile uint8_t CCER1; /*!< CC enable register 1 */
  volatile uint8_t CNTRH; /*!< counter high */
  volatile uint8_t CNTRL; /*!< counter low */
  volatile uint8_t PSCR;  /*!< prescaler register */
  volatile uint8_t ARRH;  /*!< auto-reload register high */
  volatile uint8_t ARRL;  /*!< auto-reload register low */
  volatile uint8_t CCR1H; /*!< capture/compare register 1 high */
  volatile uint8_t CCR1L; /*!< capture/compare register 1 low */
  volatile uint8_t CCR2H; /*!< capture/compare register 2 high */
  volatile uint8_t CCR2L; /*!< capture/compare register 2 low */
}
TIM3_TypeDef;

/** @addtogroup TIM3_Registers_Reset_Value
  * @{
  */

#line 984 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/** @addtogroup TIM3_Registers_Bits_Definition
  * @{
  */
/*CR1*/





/*IER*/



/*SR1*/



/*SR2*/


/*EGR*/



/*CCMR*/





/*CCER1*/




/*CNTR*/


/*PSCR*/

/*ARR*/


/*CCR1*/


/*CCR2*/


/**
  * @}
  */

/*----------------------------------------------------------------------------*/
/**
  * @brief  8-bit system timer (TIM4)
  */

typedef struct TIM4_struct
{
  volatile uint8_t CR1;  /*!< control register 1 */




  volatile uint8_t IER;  /*!< interrupt enable register */
  volatile uint8_t SR1;  /*!< status register 1 */
  volatile uint8_t EGR;  /*!< event generation register */
  volatile uint8_t CNTR; /*!< counter register */
  volatile uint8_t PSCR; /*!< prescaler register */
  volatile uint8_t ARR;  /*!< auto-reload register */
}
TIM4_TypeDef;

/** @addtogroup TIM4_Registers_Reset_Value
  * @{
  */

#line 1074 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/** @addtogroup TIM4_Registers_Bits_Definition
  * @{
  */
/*CR1*/





/*IER*/

/*SR1*/

/*EGR*/

/*CNTR*/

/*PSCR*/

/*ARR*/


/**
  * @}
  */

/*----------------------------------------------------------------------------*/
/**
  * @brief  16-bit timer with synchro module (TIM5)
  */

typedef struct TIM5_struct
{
  volatile uint8_t CR1;       /*!<TIM5 Control Register 1                */
  volatile uint8_t CR2;       /*!<TIM5 Control Register 2                */
  volatile uint8_t SMCR;      /*!<TIM5 Slave Mode Control Register       */
  volatile uint8_t IER;       /*!<TIM5 Interrupt Enable Register         */
  volatile uint8_t SR1;       /*!<TIM5 Status Register 1                 */
  volatile uint8_t SR2;       /*!<TIM5 Status Register 2                 */
  volatile uint8_t EGR;       /*!<TIM5 Event Generation Register         */
  volatile uint8_t CCMR1;     /*!<TIM5 Capture/Compare Mode Register 1   */
  volatile uint8_t CCMR2;     /*!<TIM5 Capture/Compare Mode Register 2   */
  volatile uint8_t CCMR3;     /*!<TIM5 Capture/Compare Mode Register 3   */
  volatile uint8_t CCER1;     /*!<TIM5 Capture/Compare Enable Register 1 */
  volatile uint8_t CCER2;     /*!<TIM5 Capture/Compare Enable Register 2 */
  volatile uint8_t CNTRH;     /*!<TIM5 Counter High                      */
  volatile uint8_t CNTRL;     /*!<TIM5 Counter Low                       */
  volatile uint8_t PSCR;      /*!<TIM5 Prescaler Register                */
  volatile uint8_t ARRH;      /*!<TIM5 Auto-Reload Register High         */
  volatile uint8_t ARRL;      /*!<TIM5 Auto-Reload Register Low          */
  volatile uint8_t CCR1H;     /*!<TIM5 Capture/Compare Register 1 High   */
  volatile uint8_t CCR1L;     /*!<TIM5 Capture/Compare Register 1 Low    */
  volatile uint8_t CCR2H;     /*!<TIM5 Capture/Compare Register 2 High   */
  volatile uint8_t CCR2L;     /*!<TIM5 Capture/Compare Register 2 Low    */
  volatile uint8_t CCR3H;     /*!<TIM5 Capture/Compare Register 3 High   */
  volatile uint8_t CCR3L;     /*!<TIM5 Capture/Compare Register 3 Low    */
}TIM5_TypeDef;

/** @addtogroup TIM5_Registers_Reset_Value
  * @{
  */

#line 1164 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/** @addtogroup TIM5_Registers_Bits_Definition
  * @{
  */
/* CR1*/





/* CR2*/


/* SMCR*/



/*IER*/





/*SR1*/





/*SR2*/



/*EGR*/





/*CCMR*/





/*CCER1*/




/*CCER2*/


/*CNTR*/


/*PSCR*/

/*ARR*/


/*CCR1*/


/*CCR2*/


/*CCR3*/


/*CCMR*/

/**
  * @}
  */
	
/*----------------------------------------------------------------------------*/
/**
  * @brief  8-bit system timer  with synchro module(TIM6)
  */

typedef struct TIM6_struct
{
    volatile uint8_t CR1; 	/*!< control register 1 */
    volatile uint8_t CR2; 	/*!< control register 2 */
    volatile uint8_t SMCR; 	/*!< Synchro mode control register */
    volatile uint8_t IER; 	/*!< interrupt enable register  */
    volatile uint8_t SR1; 	/*!< status register 1    */
    volatile uint8_t EGR; 	/*!< event generation register */
    volatile uint8_t CNTR; 	/*!< counter register  */
    volatile uint8_t PSCR; 	/*!< prescaler register */
    volatile uint8_t ARR; 	/*!< auto-reload register */
}
TIM6_TypeDef;
/** @addtogroup TIM6_Registers_Reset_Value
  * @{
  */
#line 1274 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/**
* @}
*/

/** @addtogroup TIM6_Registers_Bits_Definition
  * @{
  */
/* CR1*/





/* CR2*/

/* SMCR*/



/* IER*/


/* SR1*/


/* EGR*/


/* CNTR*/

/* PSCR*/



/**
  * @}
  */
/*----------------------------------------------------------------------------*/
/**
  * @brief  Inter-Integrated Circuit (I2C)
  */

typedef struct I2C_struct
{
  volatile uint8_t CR1;       /*!< I2C control register 1 */
  volatile uint8_t CR2;       /*!< I2C control register 2 */
  volatile uint8_t FREQR;     /*!< I2C frequency register */
  volatile uint8_t OARL;      /*!< I2C own address register LSB */
  volatile uint8_t OARH;      /*!< I2C own address register MSB */
  uint8_t RESERVED1;      /*!< Reserved byte */
  volatile uint8_t DR;        /*!< I2C data register */
  volatile uint8_t SR1;       /*!< I2C status register 1 */
  volatile uint8_t SR2;       /*!< I2C status register 2 */
  volatile uint8_t SR3;       /*!< I2C status register 3 */
  volatile uint8_t ITR;       /*!< I2C interrupt register */
  volatile uint8_t CCRL;      /*!< I2C clock control register low */
  volatile uint8_t CCRH;      /*!< I2C clock control register high */
  volatile uint8_t TRISER;    /*!< I2C maximum rise time register */
  uint8_t RESERVED2;      /*!< Reserved byte */
}
I2C_TypeDef;

/** @addtogroup I2C_Registers_Reset_Value
  * @{
  */

#line 1354 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/** @addtogroup I2C_Registers_Bits_Definition
  * @{
  */






















#line 1391 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"
























/**
  * @}
  */

/*----------------------------------------------------------------------------*/
/**
  * @brief  Interrupt Controller (ITC)
  */

typedef struct ITC_struct
{
  volatile uint8_t ISPR1; /*!< Interrupt Software Priority register 1 */
  volatile uint8_t ISPR2; /*!< Interrupt Software Priority register 2 */
  volatile uint8_t ISPR3; /*!< Interrupt Software Priority register 3 */
  volatile uint8_t ISPR4; /*!< Interrupt Software Priority register 4 */
  volatile uint8_t ISPR5; /*!< Interrupt Software Priority register 5 */
  volatile uint8_t ISPR6; /*!< Interrupt Software Priority register 6 */
  volatile uint8_t ISPR7; /*!< Interrupt Software Priority register 7 */
  volatile uint8_t ISPR8; /*!< Interrupt Software Priority register 8 */
}
ITC_TypeDef;

/** @addtogroup ITC_Registers_Reset_Value
  * @{
  */



/**
  * @}
  */

/** @addtogroup CPU_Registers_Bits_Definition
  * @{
  */



/**
  * @}
  */

/*----------------------------------------------------------------------------*/
/**
  * @brief  External Interrupt Controller (EXTI)
  */

typedef struct EXTI_struct
{
  volatile uint8_t CR1; /*!< External Interrupt Control Register for PORTA to PORTD */
  volatile uint8_t CR2; /*!< External Interrupt Control Register for PORTE and TLI */
}
EXTI_TypeDef;

/** @addtogroup EXTI_Registers_Reset_Value
  * @{
  */




/**
  * @}
  */

/** @addtogroup EXTI_Registers_Bits_Definition
  * @{
  */









/**
  * @}
  */



/*----------------------------------------------------------------------------*/
/**
  * @brief  FLASH program and Data memory (FLASH)
  */

typedef struct FLASH_struct
{
  volatile uint8_t CR1;       /*!< Flash control register 1 */
  volatile uint8_t CR2;       /*!< Flash control register 2 */
  volatile uint8_t NCR2;      /*!< Flash complementary control register 2 */
  volatile uint8_t FPR;       /*!< Flash protection register */
  volatile uint8_t NFPR;      /*!< Flash complementary protection register */
  volatile uint8_t IAPSR;     /*!< Flash in-application programming status register */
  uint8_t RESERVED1;      /*!< Reserved byte */
  uint8_t RESERVED2;      /*!< Reserved byte */
  volatile uint8_t PUKR;      /*!< Flash program memory unprotection register */
  uint8_t RESERVED3;      /*!< Reserved byte */
  volatile uint8_t DUKR;      /*!< Data EEPROM unprotection register */
}
FLASH_TypeDef;

/** @addtogroup FLASH_Registers_Reset_Value
  * @{
  */

#line 1529 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/** @addtogroup FLASH_Registers_Bits_Definition
  * @{
  */




























/**
  * @}
  */

/*----------------------------------------------------------------------------*/
/**
  * @brief  Option Bytes (OPT)
  */
typedef struct OPT_struct
{
  volatile uint8_t OPT0;  /*!< Option byte 0: Read-out protection (not accessible in IAP mode) */
  volatile uint8_t OPT1;  /*!< Option byte 1: User boot code */
  volatile uint8_t NOPT1; /*!< Complementary Option byte 1 */
  volatile uint8_t OPT2;  /*!< Option byte 2: Alternate function remapping */
  volatile uint8_t NOPT2; /*!< Complementary Option byte 2 */
  volatile uint8_t OPT3;  /*!< Option byte 3: Watchdog option */
  volatile uint8_t NOPT3; /*!< Complementary Option byte 3 */
  volatile uint8_t OPT4;  /*!< Option byte 4: Clock option */
  volatile uint8_t NOPT4; /*!< Complementary Option byte 4 */
  volatile uint8_t OPT5;  /*!< Option byte 5: HSE clock startup */
  volatile uint8_t NOPT5; /*!< Complementary Option byte 5 */
  uint8_t RESERVED1;  /*!< Reserved Option byte*/
  uint8_t RESERVED2; /*!< Reserved Option byte*/
  volatile uint8_t OPT7;  /*!< Option byte 7: flash wait states */
  volatile uint8_t NOPT7; /*!< Complementary Option byte 7 */
}
OPT_TypeDef;

/*----------------------------------------------------------------------------*/
/**
  * @brief  Independent Watchdog (IWDG)
  */

typedef struct IWDG_struct
{
  volatile uint8_t KR;  /*!< Key Register */
  volatile uint8_t PR;  /*!< Prescaler Register */
  volatile uint8_t RLR; /*!< Reload Register */
}
IWDG_TypeDef;

/** @addtogroup IWDG_Registers_Reset_Value
  * @{
  */




/**
  * @}
  */

/*----------------------------------------------------------------------------*/
/**
  * @brief  Window Watchdog (WWDG)
  */

typedef struct WWDG_struct
{
  volatile uint8_t CR; /*!< Control Register */
  volatile uint8_t WR; /*!< Window Register */
}
WWDG_TypeDef;

/** @addtogroup WWDG_Registers_Reset_Value
  * @{
  */




/**
  * @}
  */

/** @addtogroup WWDG_Registers_Bits_Definition
  * @{
  */








/**
  * @}
  */

/*----------------------------------------------------------------------------*/
/**
  * @brief  Reset Controller (RST)
  */

typedef struct RST_struct
{
  volatile uint8_t SR; /*!< Reset status register */
}
RST_TypeDef;

/** @addtogroup RST_Registers_Bits_Definition
  * @{
  */







/**
  * @}
  */

/*----------------------------------------------------------------------------*/
/**
  * @brief  Serial Peripheral Interface (SPI)
  */

typedef struct SPI_struct
{
  volatile uint8_t CR1;    /*!< SPI control register 1 */
  volatile uint8_t CR2;    /*!< SPI control register 2 */
  volatile uint8_t ICR;    /*!< SPI interrupt control register */
  volatile uint8_t SR;     /*!< SPI status register */
  volatile uint8_t DR;     /*!< SPI data I/O register */
  volatile uint8_t CRCPR;  /*!< SPI CRC polynomial register */
  volatile uint8_t RXCRCR; /*!< SPI Rx CRC register */
  volatile uint8_t TXCRCR; /*!< SPI Tx CRC register */
}
SPI_TypeDef;

/** @addtogroup SPI_Registers_Reset_Value
  * @{
  */

#line 1710 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/** @addtogroup SPI_Registers_Bits_Definition
  * @{
  */

#line 1725 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

#line 1733 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"






#line 1746 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/*----------------------------------------------------------------------------*/
/**
  * @brief  Universal Synchronous Asynchronous Receiver Transmitter (UART1)
  */

typedef struct UART1_struct
{
  volatile uint8_t SR;   /*!< UART1 status register */
  volatile uint8_t DR;   /*!< UART1 data register */
  volatile uint8_t BRR1; /*!< UART1 baud rate register */
  volatile uint8_t BRR2; /*!< UART1 DIV mantissa[11:8] SCIDIV fraction */
  volatile uint8_t CR1;  /*!< UART1 control register 1 */
  volatile uint8_t CR2;  /*!< UART1 control register 2 */
  volatile uint8_t CR3;  /*!< UART1 control register 3 */
  volatile uint8_t CR4;  /*!< UART1 control register 4 */
  volatile uint8_t CR5;  /*!< UART1 control register 5 */
  volatile uint8_t GTR;  /*!< UART1 guard time register */
  volatile uint8_t PSCR; /*!< UART1 prescaler register */
}
UART1_TypeDef;

/** @addtogroup UART1_Registers_Reset_Value
  * @{
  */

#line 1786 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/** @addtogroup UART1_Registers_Bits_Definition
  * @{
  */

#line 1803 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"






#line 1817 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

#line 1826 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

#line 1833 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"












/**
  * @}
  */

/*----------------------------------------------------------------------------*/
/**
  * @brief  Universal Synchronous Asynchronous Receiver Transmitter (UART2)
  */

typedef struct UART2_struct
{
  volatile uint8_t SR;   /*!< UART1 status register */
  volatile uint8_t DR;   /*!< UART1 data register */
  volatile uint8_t BRR1; /*!< UART1 baud rate register */
  volatile uint8_t BRR2; /*!< UART1 DIV mantissa[11:8] SCIDIV fraction */
  volatile uint8_t CR1;  /*!< UART1 control register 1 */
  volatile uint8_t CR2;  /*!< UART1 control register 2 */
  volatile uint8_t CR3;  /*!< UART1 control register 3 */
  volatile uint8_t CR4;  /*!< UART1 control register 4 */
  volatile uint8_t CR5;  /*!< UART1 control register 5 */
	volatile uint8_t CR6;  /*!< UART1 control register 6 */
  volatile uint8_t GTR;  /*!< UART1 guard time register */
  volatile uint8_t PSCR; /*!< UART1 prescaler register */
}
UART2_TypeDef;

/** @addtogroup UART2_Registers_Reset_Value
  * @{
  */

#line 1886 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/** @addtogroup UART2_Registers_Bits_Definition
  * @{
  */

#line 1903 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"






#line 1917 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

#line 1926 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

#line 1933 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"












#line 1951 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */


/*----------------------------------------------------------------------------*/
/**
  * @brief  LIN Universal Asynchronous Receiver Transmitter (UART3)
  */

typedef struct UART3_struct
{
  volatile uint8_t SR;       /*!< status register */
  volatile uint8_t DR;       /*!< data register */
  volatile uint8_t BRR1;     /*!< baud rate register */
  volatile uint8_t BRR2;     /*!< DIV mantissa[11:8] SCIDIV fraction */
  volatile uint8_t CR1;      /*!< control register 1 */
  volatile uint8_t CR2;      /*!< control register 2 */
  volatile uint8_t CR3;      /*!< control register 3 */
  volatile uint8_t CR4;      /*!< control register 4 */
  uint8_t RESERVED; /*!< Reserved byte */
  volatile uint8_t CR6;      /*!< control register 5 */
}
UART3_TypeDef;

/** @addtogroup UART3_Registers_Reset_Value
  * @{
  */

#line 1989 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/** @addtogroup UART3_Registers_Bits_Definition
  * @{
  */

#line 2006 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"






#line 2020 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

#line 2029 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"









#line 2044 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */


/*----------------------------------------------------------------------------*/
/**
  * @brief  Controller Area Network  (CAN)
  */

typedef struct
{
  volatile uint8_t MCR;    /*!< CAN master control register */
  volatile uint8_t MSR;    /*!< CAN master status register */
  volatile uint8_t TSR;    /*!< CAN transmit status register */
  volatile uint8_t TPR;    /*!< CAN transmit priority register */
  volatile uint8_t RFR;    /*!< CAN receive FIFO register */
  volatile uint8_t IER;    /*!< CAN interrupt enable register */
  volatile uint8_t DGR;    /*!< CAN diagnosis register */
  volatile uint8_t PSR;    /*!< CAN page selection register */

  union
  {
    struct
    {
      volatile uint8_t MCSR;
      volatile uint8_t MDLCR;
      volatile uint8_t MIDR1;
      volatile uint8_t MIDR2;
      volatile uint8_t MIDR3;
      volatile uint8_t MIDR4;
      volatile uint8_t MDAR1;
      volatile uint8_t MDAR2;
      volatile uint8_t MDAR3;
      volatile uint8_t MDAR4;
      volatile uint8_t MDAR5;
      volatile uint8_t MDAR6;
      volatile uint8_t MDAR7;
      volatile uint8_t MDAR8;
      volatile uint8_t MTSRL;
      volatile uint8_t MTSRH;
    }
	  TxMailbox;

	struct
    {
      volatile uint8_t FR01;
      volatile uint8_t FR02;
      volatile uint8_t FR03;
      volatile uint8_t FR04;
      volatile uint8_t FR05;
      volatile uint8_t FR06;
      volatile uint8_t FR07;
      volatile uint8_t FR08;

      volatile uint8_t FR09;
      volatile uint8_t FR10;
      volatile uint8_t FR11;
      volatile uint8_t FR12;
      volatile uint8_t FR13;
      volatile uint8_t FR14;
      volatile uint8_t FR15;
      volatile uint8_t FR16;
    }
	Filter;
	  

    struct
    {
      volatile uint8_t F0R1;
      volatile uint8_t F0R2;
      volatile uint8_t F0R3;
      volatile uint8_t F0R4;
      volatile uint8_t F0R5;
      volatile uint8_t F0R6;
      volatile uint8_t F0R7;
      volatile uint8_t F0R8;

      volatile uint8_t F1R1;
      volatile uint8_t F1R2;
      volatile uint8_t F1R3;
      volatile uint8_t F1R4;
      volatile uint8_t F1R5;
      volatile uint8_t F1R6;
      volatile uint8_t F1R7;
	  volatile uint8_t F1R8;
    }
	  Filter01;
    
    struct
    {
      volatile uint8_t F2R1;
      volatile uint8_t F2R2;
      volatile uint8_t F2R3;
      volatile uint8_t F2R4;
      volatile uint8_t F2R5;
      volatile uint8_t F2R6;
      volatile uint8_t F2R7;
      volatile uint8_t F2R8;
	
      volatile uint8_t F3R1;
      volatile uint8_t F3R2;
      volatile uint8_t F3R3;
      volatile uint8_t F3R4;
      volatile uint8_t F3R5;
      volatile uint8_t F3R6;
      volatile uint8_t F3R7;
      volatile uint8_t F3R8;
    }
	  Filter23;
    
    struct
    {
      volatile uint8_t F4R1;
      volatile uint8_t F4R2;
      volatile uint8_t F4R3;
      volatile uint8_t F4R4;
      volatile uint8_t F4R5;
      volatile uint8_t F4R6;
      volatile uint8_t F4R7;
      volatile uint8_t F4R8;
			
      volatile uint8_t F5R1;
      volatile uint8_t F5R2;
      volatile uint8_t F5R3;
      volatile uint8_t F5R4;
      volatile uint8_t F5R5;
      volatile uint8_t F5R6;
      volatile uint8_t F5R7;
      volatile uint8_t F5R8;
    }
	  Filter45;
    
    struct
    {
      volatile uint8_t ESR;
      volatile uint8_t EIER;
      volatile uint8_t TECR;
      volatile uint8_t RECR;
      volatile uint8_t BTR1;
      volatile uint8_t BTR2;
      u8 Reserved1[2];
      volatile uint8_t FMR1;
      volatile uint8_t FMR2;
      volatile uint8_t FCR1;
      volatile uint8_t FCR2;
      volatile uint8_t FCR3;
      u8 Reserved2[3];
    }
		Config;
    
    struct
    {
      volatile uint8_t MFMI;
      volatile uint8_t MDLCR;
      volatile uint8_t MIDR1;
      volatile uint8_t MIDR2;
      volatile uint8_t MIDR3;
      volatile uint8_t MIDR4;
      volatile uint8_t MDAR1;
      volatile uint8_t MDAR2;
      volatile uint8_t MDAR3;
      volatile uint8_t MDAR4;
      volatile uint8_t MDAR5;
      volatile uint8_t MDAR6;
      volatile uint8_t MDAR7;
      volatile uint8_t MDAR8;
      volatile uint8_t MTSRL;
      volatile uint8_t MTSRH;
    }
	  RxFIFO;
  }Page; 
} CAN_TypeDef;
/** @addtogroup CAN_Registers_Bits_Definition
  * @{
  */
/*******************************Common****************************************/
/* CAN Master Control Register bits */
#line 2231 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/* CAN Master Status Register bits */
#line 2239 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/* CAN Transmit Status Register bits */
#line 2248 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

#line 2256 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"
/* CAN Receive FIFO Register bits */





/* CAN Interrupt Register bits */







/* CAN diagnostic Register bits */







/* CAN page select Register bits */




/*********************Tx MailBox & Fifo Page common bits***********************/
#line 2290 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"








/*************************Filter Page******************************************/

/* CAN Error Status Register bits */
#line 2308 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/* CAN Error Status Register bits */






/* CAN transmit error counter Register bits(CAN_TECR) */
#line 2325 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/* CAN RECEIVE error counter Register bits(CAN_TECR) */
#line 2335 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/* CAN filter mode register bits (CAN_FMR) */
#line 2345 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"






/* CAN filter Config register bits (CAN_FCR) */
#line 2358 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

#line 2371 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"



/**
  * @}
  */

/** @addtogroup CAN_Registers_Reset_Value
  * @{
  */

#line 2390 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

#line 2400 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"





/**
  * @}
  */

/**
  * @brief  Configuration Registers (CFG)
  */

typedef struct CFG_struct
{
  volatile uint8_t GCR; /*!< Global Configuration register */
}
CFG_TypeDef;

/** @addtogroup CFG_Registers_Reset_Value
  * @{
  */



/**
  * @}
  */

/** @addtogroup CFG_Registers_Bits_Definition
  * @{
  */




/**
  * @}
  */

/**
  * @}
  */

/******************************************************************************/
/*                          Peripherals Base Address                          */
/******************************************************************************/

/** @addtogroup MAP_FILE_Base_Addresses
  * @{
  */
#line 2486 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/******************************************************************************/
/*                          Peripherals declarations                          */
/******************************************************************************/
































































































#line 1 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\USER\\stm8s_conf.h"
/**
  ******************************************************************************
  * @file     stm8s_conf.h
  * @author   MCD Application Team
  * @version  V2.0.0
  * @date     25-February-2011
  * @brief    This file is used to configure the Library.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */ 

/* Define to prevent recursive inclusion -------------------------------------*/



/* Includes ------------------------------------------------------------------*/
#line 1 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"
/**
  ******************************************************************************
  * @file    stm8s.h
  * @author  MCD Application Team
  * @version V2.0.0
  * @date    25-February-2011
  * @brief   This file contains all HW registers definitions and memory mapping.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Define to prevent recursive inclusion -------------------------------------*/
#line 2711 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/**
  * @}
  */
/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
#line 28 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\USER\\stm8s_conf.h"

/* Uncomment the line below to enable peripheral header file inclusion */




 /*#include "stm8s_adc2.h"*/

/*#include "stm8s_awu.h"*/
/*#include "stm8s_beep.h"*/
#line 1 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s_clk.h"
/**
  ******************************************************************************
  * @file    stm8s_clk.h
  * @author  MCD Application Team
  * @version V2.0.0
  * @date    25-February-2011
  * @brief   This file contains all functions prototype and macros for the CLK peripheral.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */


/* Define to prevent recursive inclusion -------------------------------------*/



/* Includes ------------------------------------------------------------------*/
/* Contains the description of all STM8 hardware registers */


/* Exported types ------------------------------------------------------------*/
/** @addtogroup CLK_Exported_Types
  * @{
  */

/**
   * @brief  Switch Mode Auto, Manual.
   */
typedef enum {
  CLK_SWITCHMODE_MANUAL = (uint8_t)0x00, /*!< Enable the manual clock switching mode */
  CLK_SWITCHMODE_AUTO   = (uint8_t)0x01  /*!< Enable the automatic clock switching mode */
} CLK_SwitchMode_TypeDef;

/**
   * @brief  Current Clock State.
   */
typedef enum {
  CLK_CURRENTCLOCKSTATE_DISABLE = (uint8_t)0x00, /*!< Current clock disable */
  CLK_CURRENTCLOCKSTATE_ENABLE  = (uint8_t)0x01  /*!< Current clock enable */
} CLK_CurrentClockState_TypeDef;

/**
   * @brief   Clock security system configuration.
   */
typedef enum {
  CLK_CSSCONFIG_ENABLEWITHIT = (uint8_t)0x05, /*!< Enable CSS with detection interrupt */
  CLK_CSSCONFIG_ENABLE    = (uint8_t)0x01, /*!< Enable CSS without detection interrupt */
  CLK_CSSCONFIG_DISABLE      = (uint8_t)0x00  /*!< Leave CSS desactivated (to be used in CLK_Init() function) */
} CLK_CSSConfig_TypeDef;

/**
   * @brief   CLK Clock Source.
   */
typedef enum {
  CLK_SOURCE_HSI    = (uint8_t)0xE1, /*!< Clock Source HSI. */
  CLK_SOURCE_LSI    = (uint8_t)0xD2, /*!< Clock Source LSI. */
  CLK_SOURCE_HSE    = (uint8_t)0xB4 /*!< Clock Source HSE. */
} CLK_Source_TypeDef;

/**
   * @brief   CLK HSI Calibration Value.
   */
typedef enum {
  CLK_HSITRIMVALUE_0   = (uint8_t)0x00, /*!< HSI Calibtation Value 0 */
  CLK_HSITRIMVALUE_1   = (uint8_t)0x01, /*!< HSI Calibtation Value 1 */
  CLK_HSITRIMVALUE_2   = (uint8_t)0x02, /*!< HSI Calibtation Value 2 */
  CLK_HSITRIMVALUE_3   = (uint8_t)0x03, /*!< HSI Calibtation Value 3 */
  CLK_HSITRIMVALUE_4   = (uint8_t)0x04, /*!< HSI Calibtation Value 4 */
  CLK_HSITRIMVALUE_5   = (uint8_t)0x05, /*!< HSI Calibtation Value 5 */
  CLK_HSITRIMVALUE_6   = (uint8_t)0x06, /*!< HSI Calibtation Value 6 */
  CLK_HSITRIMVALUE_7   = (uint8_t)0x07  /*!< HSI Calibtation Value 7 */
} CLK_HSITrimValue_TypeDef;

/**
   * @brief    CLK  Clock Output
   */
typedef enum {
  CLK_OUTPUT_HSI      = (uint8_t)0x00, /*!< Clock Output HSI */
  CLK_OUTPUT_LSI      = (uint8_t)0x02, /*!< Clock Output LSI */
  CLK_OUTPUT_HSE      = (uint8_t)0x04, /*!< Clock Output HSE */
  CLK_OUTPUT_CPU      = (uint8_t)0x08, /*!< Clock Output CPU */
  CLK_OUTPUT_CPUDIV2  = (uint8_t)0x0A, /*!< Clock Output CPU/2 */
  CLK_OUTPUT_CPUDIV4  = (uint8_t)0x0C, /*!< Clock Output CPU/4 */
  CLK_OUTPUT_CPUDIV8  = (uint8_t)0x0E, /*!< Clock Output CPU/8 */
  CLK_OUTPUT_CPUDIV16 = (uint8_t)0x10, /*!< Clock Output CPU/16 */
  CLK_OUTPUT_CPUDIV32 = (uint8_t)0x12, /*!< Clock Output CPU/32 */
  CLK_OUTPUT_CPUDIV64 = (uint8_t)0x14, /*!< Clock Output CPU/64 */
  CLK_OUTPUT_HSIRC    = (uint8_t)0x16, /*!< Clock Output HSI RC */
  CLK_OUTPUT_MASTER   = (uint8_t)0x18, /*!< Clock Output Master */
  CLK_OUTPUT_OTHERS   = (uint8_t)0x1A  /*!< Clock Output OTHER */
} CLK_Output_TypeDef;

/**
   * @brief    CLK Enable peripheral
   */
/* Elements values convention: 0xXY
    X = choice between the peripheral registers
        X = 0 : PCKENR1
        X = 1 : PCKENR2
    Y = Peripheral position in the register
*/
typedef enum {
  CLK_PERIPHERAL_I2C     = (uint8_t)0x00, /*!< Peripheral Clock Enable 1, I2C */
  CLK_PERIPHERAL_SPI     = (uint8_t)0x01, /*!< Peripheral Clock Enable 1, SPI */

  CLK_PERIPHERAL_UART1   = (uint8_t)0x02, /*!< Peripheral Clock Enable 1, UART1 */



  CLK_PERIPHERAL_UART2   = (uint8_t)0x03, /*!< Peripheral Clock Enable 1, UART2 */
  CLK_PERIPHERAL_UART3   = (uint8_t)0x03, /*!< Peripheral Clock Enable 1, UART3 */
  CLK_PERIPHERAL_TIMER6  = (uint8_t)0x04, /*!< Peripheral Clock Enable 1, Timer6 */
  CLK_PERIPHERAL_TIMER4  = (uint8_t)0x04, /*!< Peripheral Clock Enable 1, Timer4 */
  CLK_PERIPHERAL_TIMER5  = (uint8_t)0x05, /*!< Peripheral Clock Enable 1, Timer5 */
  CLK_PERIPHERAL_TIMER2  = (uint8_t)0x05, /*!< Peripheral Clock Enable 1, Timer2 */
  CLK_PERIPHERAL_TIMER3  = (uint8_t)0x06, /*!< Peripheral Clock Enable 1, Timer3 */
  CLK_PERIPHERAL_TIMER1  = (uint8_t)0x07, /*!< Peripheral Clock Enable 1, Timer1 */
  CLK_PERIPHERAL_AWU     = (uint8_t)0x12, /*!< Peripheral Clock Enable 2, AWU */
  CLK_PERIPHERAL_ADC     = (uint8_t)0x13, /*!< Peripheral Clock Enable 2, ADC */
  CLK_PERIPHERAL_CAN     = (uint8_t)0x17 /*!< Peripheral Clock Enable 2, CAN */
} CLK_Peripheral_TypeDef;

/**
   * @brief   CLK Flags.
   */
/* Elements values convention: 0xXZZ
    X = choice between the flags registers
        X = 1 : ICKR
        X = 2 : ECKR
        X = 3 : SWCR
    X = 4 : CSSR
 X = 5 : CCOR
   ZZ = flag mask in the register (same as map file)
*/
typedef enum {
  CLK_FLAG_LSIRDY  = (uint16_t)0x0110, /*!< Low speed internal oscillator ready Flag */
  CLK_FLAG_HSIRDY  = (uint16_t)0x0102, /*!< High speed internal oscillator ready Flag */
  CLK_FLAG_HSERDY  = (uint16_t)0x0202, /*!< High speed external oscillator ready Flag */
  CLK_FLAG_SWIF    = (uint16_t)0x0308, /*!< Clock switch interrupt Flag */
  CLK_FLAG_SWBSY   = (uint16_t)0x0301, /*!< Switch busy Flag */
  CLK_FLAG_CSSD    = (uint16_t)0x0408, /*!< Clock security system detection Flag */
  CLK_FLAG_AUX     = (uint16_t)0x0402, /*!< Auxiliary oscillator connected to master clock */
  CLK_FLAG_CCOBSY  = (uint16_t)0x0504, /*!< Configurable clock output busy */
  CLK_FLAG_CCORDY  = (uint16_t)0x0502 /*!< Configurable clock output ready */

}CLK_Flag_TypeDef;

/**
   * @brief  CLK interrupt configuration and Flags cleared by software.
   */
typedef enum {
  CLK_IT_CSSD   = (uint8_t)0x0C, /*!< Clock security system detection Flag */
  CLK_IT_SWIF   = (uint8_t)0x1C /*!< Clock switch interrupt Flag */
}CLK_IT_TypeDef;

/**
   * @brief   CLK Clock Divisor.
   */
/* Warning:
   0xxxxxx = HSI divider
   1xxxxxx = CPU divider
   Other bits correspond to the divider's bits mapping
*/
typedef enum {
  CLK_PRESCALER_HSIDIV1   = (uint8_t)0x00, /*!< High speed internal clock prescaler: 1 */
  CLK_PRESCALER_HSIDIV2   = (uint8_t)0x08, /*!< High speed internal clock prescaler: 2 */
  CLK_PRESCALER_HSIDIV4   = (uint8_t)0x10, /*!< High speed internal clock prescaler: 4 */
  CLK_PRESCALER_HSIDIV8   = (uint8_t)0x18, /*!< High speed internal clock prescaler: 8 */
  CLK_PRESCALER_CPUDIV1   = (uint8_t)0x80, /*!< CPU clock division factors 1 */
  CLK_PRESCALER_CPUDIV2   = (uint8_t)0x81, /*!< CPU clock division factors 2 */
  CLK_PRESCALER_CPUDIV4   = (uint8_t)0x82, /*!< CPU clock division factors 4 */
  CLK_PRESCALER_CPUDIV8   = (uint8_t)0x83, /*!< CPU clock division factors 8 */
  CLK_PRESCALER_CPUDIV16  = (uint8_t)0x84, /*!< CPU clock division factors 16 */
  CLK_PRESCALER_CPUDIV32  = (uint8_t)0x85, /*!< CPU clock division factors 32 */
  CLK_PRESCALER_CPUDIV64  = (uint8_t)0x86, /*!< CPU clock division factors 64 */
  CLK_PRESCALER_CPUDIV128 = (uint8_t)0x87  /*!< CPU clock division factors 128 */
} CLK_Prescaler_TypeDef;

/**
   * @brief   SWIM Clock divider.
   */
typedef enum {
  CLK_SWIMDIVIDER_2 = (uint8_t)0x00, /*!< SWIM clock is divided by 2 */
  CLK_SWIMDIVIDER_OTHER = (uint8_t)0x01 /*!< SWIM clock is not divided by 2 */
}CLK_SWIMDivider_TypeDef;

/**
  * @}
  */

/* Exported constants --------------------------------------------------------*/

/** @addtogroup CLK_Exported_Constants
  * @{
  */

/**
  * @}
  */

/* Private macros ------------------------------------------------------------*/
/** @addtogroup CLK_Private_Macros
  * @{
  */

/**
  * @brief  Macros used by the assert function in order to check the different functions parameters.
  */

/**
  * @brief  Macros used by the assert function in order to check the clock switching modes.
  */


/**
  * @brief  Macros used by the assert function in order to check the current clock state.
  */



/**
  * @brief  Macros used by the assert function in order to check the CSS configuration.
  */




/**
  * @brief  Macros used by the assert function in order to check the different clock sources.
  */




/**
  * @brief  Macros used by the assert function in order to check the different HSI trimming values.
  */
#line 256 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s_clk.h"

/**
  * @brief  Macros used by the assert function in order to check the different clocks to output.
  */
#line 273 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s_clk.h"

/**
  * @brief  Macros used by the assert function in order to check the different peripheral's clock.
  */
#line 291 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s_clk.h"

/**
  * @brief  Macros used by the assert function in order to check the different clock flags.
  */
#line 304 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s_clk.h"

/**
  * @brief  Macros used by the assert function in order to check the different clock IT pending bits.
  */


/**
  * @brief  Macros used by the assert function in order to check the different HSI prescaler values.
  */





/**
  * @brief  Macros used by the assert function in order to check the different clock  prescaler values.
  */
#line 333 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s_clk.h"

/**
  * @brief  Macros used by the assert function in order to check the different SWIM dividers values.
  */


/**
  * @}
  */

/** @addtogroup CLK_Exported_functions
  * @{
  */
void CLK_DeInit(void);
void CLK_HSECmd(_Bool NewState);
void CLK_HSICmd(_Bool NewState);
void CLK_LSICmd(_Bool NewState);
void CLK_CCOCmd(_Bool NewState);
void CLK_ClockSwitchCmd(_Bool NewState);
void CLK_FastHaltWakeUpCmd(_Bool NewState);
void CLK_SlowActiveHaltWakeUpCmd(_Bool NewState);
void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, _Bool NewState);
_Bool CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, _Bool ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState);
void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler);
void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO);
void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, _Bool NewState);
void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler);
void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider);
void CLK_ClockSecuritySystemEnable(void);
void CLK_SYSCLKEmergencyClear(void);
void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue);
uint32_t CLK_GetClockFreq(void);
CLK_Source_TypeDef CLK_GetSYSCLKSource(void);
_Bool CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG);
_Bool CLK_GetITStatus(CLK_IT_TypeDef CLK_IT);
void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT);

/**
  * @}
  */


/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
#line 42 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\USER\\stm8s_conf.h"
/*#include "stm8s_exti.h"*/
/*#include "stm8s_flash.h"*/
#line 1 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s_gpio.h"
/**
  ******************************************************************************
  * @file    stm8s_gpio.h
  * @author  MCD Application Team
  * @version V2.0.0
  * @date    25-February-2011
  * @brief   This file contains all functions prototype and macros for the GPIO peripheral.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Define to prevent recursive inclusion -------------------------------------*/



/* Includes ------------------------------------------------------------------*/


/* Exported variables ------------------------------------------------------- */
/* Exported types ------------------------------------------------------------*/

/** @addtogroup GPIO_Exported_Types
  * @{
  */

/**
  * @brief  GPIO modes
  *
  * Bits definitions:
  * - Bit 7: 0 = INPUT mode
  *          1 = OUTPUT mode
  *          1 = PULL-UP (input) or PUSH-PULL (output)
  * - Bit 5: 0 = No external interrupt (input) or No slope control (output)
  *          1 = External interrupt (input) or Slow control enabled (output)
  * - Bit 4: 0 = Low level (output)
  *          1 = High level (output push-pull) or HI-Z (output open-drain)
  */
typedef enum
{
  GPIO_MODE_IN_FL_NO_IT      = (uint8_t)0x00,  /*!< Input floating, no external interrupt */
  GPIO_MODE_IN_PU_NO_IT      = (uint8_t)0x40,  /*!< Input pull-up, no external interrupt */
  GPIO_MODE_IN_FL_IT         = (uint8_t)0x20,  /*!< Input floating, external interrupt */
  GPIO_MODE_IN_PU_IT         = (uint8_t)0x60,  /*!< Input pull-up, external interrupt */
  GPIO_MODE_OUT_OD_LOW_FAST  = (uint8_t)0xA0,  /*!< Output open-drain, low level, 10MHz */
  GPIO_MODE_OUT_PP_LOW_FAST  = (uint8_t)0xE0,  /*!< Output push-pull, low level, 10MHz */
  GPIO_MODE_OUT_OD_LOW_SLOW  = (uint8_t)0x80,  /*!< Output open-drain, low level, 2MHz */
  GPIO_MODE_OUT_PP_LOW_SLOW  = (uint8_t)0xC0,  /*!< Output push-pull, low level, 2MHz */
  GPIO_MODE_OUT_OD_HIZ_FAST  = (uint8_t)0xB0,  /*!< Output open-drain, high-impedance level,10MHz */
  GPIO_MODE_OUT_PP_HIGH_FAST = (uint8_t)0xF0,  /*!< Output push-pull, high level, 10MHz */
  GPIO_MODE_OUT_OD_HIZ_SLOW  = (uint8_t)0x90,  /*!< Output open-drain, high-impedance level, 2MHz */
  GPIO_MODE_OUT_PP_HIGH_SLOW = (uint8_t)0xD0   /*!< Output push-pull, high level, 2MHz */
}GPIO_Mode_TypeDef;

/**
  * @brief  Definition of the GPIO pins. Used by the @ref GPIO_Init function in
  * order to select the pins to be initialized.
  */

typedef enum
{
  GPIO_PIN_0    = ((uint8_t)0x01),  /*!< Pin 0 selected */
  GPIO_PIN_1    = ((uint8_t)0x02),  /*!< Pin 1 selected */
  GPIO_PIN_2    = ((uint8_t)0x04),  /*!< Pin 2 selected */
  GPIO_PIN_3    = ((uint8_t)0x08),   /*!< Pin 3 selected */
  GPIO_PIN_4    = ((uint8_t)0x10),  /*!< Pin 4 selected */
  GPIO_PIN_5    = ((uint8_t)0x20),  /*!< Pin 5 selected */
  GPIO_PIN_6    = ((uint8_t)0x40),  /*!< Pin 6 selected */
  GPIO_PIN_7    = ((uint8_t)0x80),  /*!< Pin 7 selected */
  GPIO_PIN_LNIB = ((uint8_t)0x0F),  /*!< Low nibble pins selected */
  GPIO_PIN_HNIB = ((uint8_t)0xF0),  /*!< High nibble pins selected */
  GPIO_PIN_ALL  = ((uint8_t)0xFF)   /*!< All pins selected */
}GPIO_Pin_TypeDef;

/**
  * @}
  */

/* Exported constants --------------------------------------------------------*/
/* Exported macros -----------------------------------------------------------*/
/* Private macros ------------------------------------------------------------*/

/** @addtogroup GPIO_Private_Macros
  * @{
  */

/**
  * @brief  Macro used by the assert function to check the different functions parameters.
  */

/**
  * @brief  Macro used by the assert function in order to check the different
  * values of GPIOMode_TypeDef.
  */
#line 117 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s_gpio.h"

/**
  * @brief  Macro used by the assert function in order to check the different
  * values of GPIO_Pins.
  */


/**
  * @}
  */

/* Exported functions ------------------------------------------------------- */
/** @addtogroup GPIO_Exported_Functions
  * @{
  */

void GPIO_DeInit(GPIO_TypeDef* GPIOx);
void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode);
void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal);
void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins);
void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins);
void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins);
uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx);
uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx);
_Bool GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin);
void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, _Bool NewState);
/**
  * @}
  */



/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
#line 45 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\USER\\stm8s_conf.h"
/*#include "stm8s_i2c.h"*/
/*#include "stm8s_itc.h"*/
/*#include "stm8s_iwdg.h"*/
/*#include "stm8s_rst.h"*/
/*#include "stm8s_spi.h"*/
/*#include "stm8s_tim1.h"*/

 /*#include "stm8s_tim2.h"*/



 /*#include "stm8s_tim3.h"*/


 /*#include "stm8s_tim4.h"*/
#line 67 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\USER\\stm8s_conf.h"
 /*#include "stm8s_uart1.h"*/





/* #include "stm8s_uart3.h"*/

/*#include "stm8s_wwdg.h"*/

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Uncomment the line below to expanse the "assert_param" macro in the
   Standard Peripheral Library drivers code */


/* Exported macro ------------------------------------------------------------*/
#line 100 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\USER\\stm8s_conf.h"



/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
#line 2592 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"


/* Exported macro --------------------------------------------------------------*/

/*============================== Interrupts ====================================*/
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\intrinsics.h"
/**************************************************
 *
 * Intrinsic functions.
 *
 * Copyright 2010 IAR Systems AB.
 *
 * $Revision: 2677 $
 *
 **************************************************/





  #pragma system_include


#pragma language=save
#pragma language=extended


/*
 * The return type of "__get_interrupt_state".
 */

typedef unsigned char __istate_t;






  __intrinsic void __enable_interrupt(void);     /* RIM */
  __intrinsic void __disable_interrupt(void);    /* SIM */

  __intrinsic __istate_t __get_interrupt_state(void);
  __intrinsic void       __set_interrupt_state(__istate_t);

  /* Special instruction intrinsics */
  __intrinsic void __no_operation(void);         /* NOP */
  __intrinsic void __halt(void);                 /* HALT */
  __intrinsic void __trap(void);                 /* TRAP */
  __intrinsic void __wait_for_event(void);       /* WFE */
  __intrinsic void __wait_for_interrupt(void);   /* WFI */

  /* Bit manipulation */
  __intrinsic void __BCPL(unsigned char __near *, unsigned char);
  __intrinsic void __BRES(unsigned char __near *, unsigned char);
  __intrinsic void __BSET(unsigned char __near *, unsigned char);






#pragma language=restore

#line 2618 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"
#line 2627 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/*============================== Interrupt vector Handling ========================*/











#line 2650 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s.h"

/*============================== Interrupt Handler declaration ========================*/






/*============================== Handling bits ====================================*/
/*-----------------------------------------------------------------------------
Method : I
Description : Handle the bit from the character variables.
Comments :    The different parameters of commands are
              - VAR : Name of the character variable where the bit is located.
              - Place : Bit position in the variable (7 6 5 4 3 2 1 0)
              - Value : Can be 0 (reset bit) or not 0 (set bit)
              The "MskBit" command allows to select some bits in a source
              variables and copy it in a destination var (return the value).
              The "ValBit" command returns the value of a bit in a char
              variable: the bit is reset if it returns 0 else the bit is set.
              This method generates not an optimised code yet.
-----------------------------------------------------------------------------*/
















/*============================== Assert Macros ====================================*/




/*-----------------------------------------------------------------------------
Method : II
Description : Handle directly the bit.
Comments :    The idea is to handle directly with the bit name. For that, it is
              necessary to have RAM area descriptions (example: HW register...)
              and the following command line for each area.
              This method generates the most optimized code.
-----------------------------------------------------------------------------*/







/* Exported functions ------------------------------------------------------- */



/**
  * @}
  */

/**
  * @}
  */
/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
#line 28 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_tim1.h"

/** @addtogroup STM8S_StdPeriph_Driver
  * @{
  */
  
/** @addtogroup TIM1_Exported_Types
 * @{
 */

/** TIM1 Output Compare and PWM modes */

typedef enum
{
  TIM1_OCMODE_TIMING     = ((uint8_t)0x00),
  TIM1_OCMODE_ACTIVE     = ((uint8_t)0x10),
  TIM1_OCMODE_INACTIVE   = ((uint8_t)0x20),
  TIM1_OCMODE_TOGGLE     = ((uint8_t)0x30),
  TIM1_OCMODE_PWM1       = ((uint8_t)0x60),
  TIM1_OCMODE_PWM2       = ((uint8_t)0x70)
}TIM1_OCMode_TypeDef;

#line 55 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_tim1.h"

#line 64 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_tim1.h"

/** TIM1 One Pulse Mode */
typedef enum
{
  TIM1_OPMODE_SINGLE                 = ((uint8_t)0x01),
  TIM1_OPMODE_REPETITIVE             = ((uint8_t)0x00)
}TIM1_OPMode_TypeDef;




/** TIM1 Channel */

typedef enum
{
  TIM1_CHANNEL_1                     = ((uint8_t)0x00),
  TIM1_CHANNEL_2                     = ((uint8_t)0x01),
  TIM1_CHANNEL_3                     = ((uint8_t)0x02),
  TIM1_CHANNEL_4                     = ((uint8_t)0x03)
}TIM1_Channel_TypeDef;















/** TIM1 Counter Mode */
typedef enum
{
  TIM1_COUNTERMODE_UP                = ((uint8_t)0x00),
  TIM1_COUNTERMODE_DOWN              = ((uint8_t)0x10),
  TIM1_COUNTERMODE_CENTERALIGNED1    = ((uint8_t)0x20),
  TIM1_COUNTERMODE_CENTERALIGNED2    = ((uint8_t)0x40),
  TIM1_COUNTERMODE_CENTERALIGNED3    = ((uint8_t)0x60)
}TIM1_CounterMode_TypeDef;







/** TIM1 Output Compare Polarity */
typedef enum
{
  TIM1_OCPOLARITY_HIGH               = ((uint8_t)0x00),
  TIM1_OCPOLARITY_LOW                = ((uint8_t)0x22)
}TIM1_OCPolarity_TypeDef;




/** TIM1 Output Compare N Polarity */
typedef enum
{
  TIM1_OCNPOLARITY_HIGH              = ((uint8_t)0x00),
  TIM1_OCNPOLARITY_LOW               = ((uint8_t)0x88)
}TIM1_OCNPolarity_TypeDef;




/** TIM1 Output Compare states */
typedef enum
{
  TIM1_OUTPUTSTATE_DISABLE           = ((uint8_t)0x00),
  TIM1_OUTPUTSTATE_ENABLE            = ((uint8_t)0x11)
}TIM1_OutputState_TypeDef;




/** TIM1 Output Compare N States */
typedef enum
{
  TIM1_OUTPUTNSTATE_DISABLE = ((uint8_t)0x00),
  TIM1_OUTPUTNSTATE_ENABLE  = ((uint8_t)0x44)
} TIM1_OutputNState_TypeDef;




/** TIM1 Break Input enable/disable */
typedef enum
{
  TIM1_BREAK_ENABLE                  = ((uint8_t)0x10),
  TIM1_BREAK_DISABLE                 = ((uint8_t)0x00)
}TIM1_BreakState_TypeDef;



/** TIM1 Break Polarity */
typedef enum
{
  TIM1_BREAKPOLARITY_LOW             = ((uint8_t)0x00),
  TIM1_BREAKPOLARITY_HIGH            = ((uint8_t)0x20)
}TIM1_BreakPolarity_TypeDef;



/** TIM1 AOE Bit Set/Reset */
typedef enum
{
  TIM1_AUTOMATICOUTPUT_ENABLE        = ((uint8_t)0x40),
  TIM1_AUTOMATICOUTPUT_DISABLE       = ((uint8_t)0x00)
}TIM1_AutomaticOutput_TypeDef;




/** TIM1 Lock levels */
typedef enum
{
  TIM1_LOCKLEVEL_OFF                 = ((uint8_t)0x00),
  TIM1_LOCKLEVEL_1                   = ((uint8_t)0x01),
  TIM1_LOCKLEVEL_2                   = ((uint8_t)0x02),
  TIM1_LOCKLEVEL_3                   = ((uint8_t)0x03)
}TIM1_LockLevel_TypeDef;






/** TIM1 OSSI: Off-State Selection for Idle mode states */
typedef enum
{
  TIM1_OSSISTATE_ENABLE              = ((uint8_t)0x04),
  TIM1_OSSISTATE_DISABLE             = ((uint8_t)0x00)
}TIM1_OSSIState_TypeDef;




/** TIM1 Output Compare Idle State */
typedef enum
{
  TIM1_OCIDLESTATE_SET               = ((uint8_t)0x55),
  TIM1_OCIDLESTATE_RESET             = ((uint8_t)0x00)
}TIM1_OCIdleState_TypeDef;




/** TIM1 Output Compare N Idle State */
typedef enum
{
  TIM1_OCNIDLESTATE_SET             = ((uint8_t)0x2A),
  TIM1_OCNIDLESTATE_RESET           = ((uint8_t)0x00)
}TIM1_OCNIdleState_TypeDef;




/** TIM1 Input Capture Polarity */
typedef enum
{
  TIM1_ICPOLARITY_RISING            = ((uint8_t)0x00),
  TIM1_ICPOLARITY_FALLING           = ((uint8_t)0x01)
}TIM1_ICPolarity_TypeDef;




/** TIM1 Input Capture Selection */
typedef enum
{
  TIM1_ICSELECTION_DIRECTTI          = ((uint8_t)0x01),
  TIM1_ICSELECTION_INDIRECTTI        = ((uint8_t)0x02),
  TIM1_ICSELECTION_TRGI              = ((uint8_t)0x03)
}TIM1_ICSelection_TypeDef;





/** TIM1 Input Capture Prescaler */
typedef enum
{
  TIM1_ICPSC_DIV1                    = ((uint8_t)0x00),
  TIM1_ICPSC_DIV2                    = ((uint8_t)0x04),
  TIM1_ICPSC_DIV4                    = ((uint8_t)0x08),
  TIM1_ICPSC_DIV8                    = ((uint8_t)0x0C)
}TIM1_ICPSC_TypeDef;






/** TIM1 Input Capture Filer Value */



/** TIM1 External Trigger Filer Value */


/** TIM1 interrupt sources */
typedef enum
{
  TIM1_IT_UPDATE                     = ((uint8_t)0x01),
  TIM1_IT_CC1                        = ((uint8_t)0x02),
  TIM1_IT_CC2                        = ((uint8_t)0x04),
  TIM1_IT_CC3                        = ((uint8_t)0x08),
  TIM1_IT_CC4                        = ((uint8_t)0x10),
  TIM1_IT_COM                        = ((uint8_t)0x20),
  TIM1_IT_TRIGGER                    = ((uint8_t)0x40),
  TIM1_IT_BREAK                      = ((uint8_t)0x80)
}TIM1_IT_TypeDef;



#line 293 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_tim1.h"


/** TIM1 External Trigger Prescaler */
typedef enum
{
  TIM1_EXTTRGPSC_OFF                 = ((uint8_t)0x00),
  TIM1_EXTTRGPSC_DIV2                = ((uint8_t)0x10),
  TIM1_EXTTRGPSC_DIV4                = ((uint8_t)0x20),
  TIM1_EXTTRGPSC_DIV8                = ((uint8_t)0x30)
}TIM1_ExtTRGPSC_TypeDef;






/** TIM1 Internal Trigger Selection */
typedef enum
{
  TIM1_TS_TIM6                       = ((uint8_t)0x00),  /*!< TRIG Input source =  TIM6 TRIG Output  */
  TIM1_TS_TIM5                       = ((uint8_t)0x30),  /*!< TRIG Input source =  TIM5 TRIG Output  */
  TIM1_TS_TI1F_ED                    = ((uint8_t)0x40),
  TIM1_TS_TI1FP1                     = ((uint8_t)0x50),
  TIM1_TS_TI2FP2                     = ((uint8_t)0x60),
  TIM1_TS_ETRF                       = ((uint8_t)0x70)
}TIM1_TS_TypeDef;

#line 326 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_tim1.h"






/** TIM1 TIx External Clock Source */
typedef enum
{
  TIM1_TIXEXTERNALCLK1SOURCE_TI1ED   = ((uint8_t)0x40),
  TIM1_TIXEXTERNALCLK1SOURCE_TI1     = ((uint8_t)0x50),
  TIM1_TIXEXTERNALCLK1SOURCE_TI2     = ((uint8_t)0x60)
}TIM1_TIxExternalCLK1Source_TypeDef;





/** TIM1 External Trigger Polarity */
typedef enum
{
  TIM1_EXTTRGPOLARITY_INVERTED       = ((uint8_t)0x80),
  TIM1_EXTTRGPOLARITY_NONINVERTED    = ((uint8_t)0x00)
}TIM1_ExtTRGPolarity_TypeDef;




/** TIM1 Prescaler Reload Mode */
typedef enum
{
  TIM1_PSCRELOADMODE_UPDATE          = ((uint8_t)0x00),
  TIM1_PSCRELOADMODE_IMMEDIATE       = ((uint8_t)0x01)
}TIM1_PSCReloadMode_TypeDef;




/** TIM1 Encoder Mode */
typedef enum
{
  TIM1_ENCODERMODE_TI1               = ((uint8_t)0x01),
  TIM1_ENCODERMODE_TI2               = ((uint8_t)0x02),
  TIM1_ENCODERMODE_TI12              = ((uint8_t)0x03)
}TIM1_EncoderMode_TypeDef;





/** TIM1 Event Source */
typedef enum
{
  TIM1_EVENTSOURCE_UPDATE            = ((uint8_t)0x01),
  TIM1_EVENTSOURCE_CC1               = ((uint8_t)0x02),
  TIM1_EVENTSOURCE_CC2               = ((uint8_t)0x04),
  TIM1_EVENTSOURCE_CC3               = ((uint8_t)0x08),
  TIM1_EVENTSOURCE_CC4               = ((uint8_t)0x10),
  TIM1_EVENTSOURCE_COM               = ((uint8_t)0x20),
  TIM1_EVENTSOURCE_TRIGGER           = ((uint8_t)0x40),
  TIM1_EVENTSOURCE_BREAK             = ((uint8_t)0x80)
}TIM1_EventSource_TypeDef;



/** TIM1 Update Source */
typedef enum
{
  TIM1_UPDATESOURCE_GLOBAL           = ((uint8_t)0x00),
  TIM1_UPDATESOURCE_REGULAR          = ((uint8_t)0x01)
}TIM1_UpdateSource_TypeDef;




/** TIM1 Trigger Output Source */
typedef enum
{
  TIM1_TRGOSOURCE_RESET              = ((uint8_t)0x00),
  TIM1_TRGOSOURCE_ENABLE             = ((uint8_t)0x10),
  TIM1_TRGOSOURCE_UPDATE             = ((uint8_t)0x20),
  TIM1_TRGOSource_OC1                = ((uint8_t)0x30),
  TIM1_TRGOSOURCE_OC1REF             = ((uint8_t)0x40),
  TIM1_TRGOSOURCE_OC2REF             = ((uint8_t)0x50),
  TIM1_TRGOSOURCE_OC3REF             = ((uint8_t)0x60)
}TIM1_TRGOSource_TypeDef;

#line 420 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_tim1.h"

/** TIM1 Slave Mode */
typedef enum
{
  TIM1_SLAVEMODE_RESET               = ((uint8_t)0x04),
  TIM1_SLAVEMODE_GATED               = ((uint8_t)0x05),
  TIM1_SLAVEMODE_TRIGGER             = ((uint8_t)0x06),
  TIM1_SLAVEMODE_EXTERNAL1           = ((uint8_t)0x07)
}TIM1_SlaveMode_TypeDef;






/** TIM1 Flags */
typedef enum
{
  TIM1_FLAG_UPDATE                   = ((uint16_t)0x0001),
  TIM1_FLAG_CC1                      = ((uint16_t)0x0002),
  TIM1_FLAG_CC2                      = ((uint16_t)0x0004),
  TIM1_FLAG_CC3                      = ((uint16_t)0x0008),
  TIM1_FLAG_CC4                      = ((uint16_t)0x0010),
  TIM1_FLAG_COM                      = ((uint16_t)0x0020),
  TIM1_FLAG_TRIGGER                  = ((uint16_t)0x0040),
  TIM1_FLAG_BREAK                    = ((uint16_t)0x0080),
  TIM1_FLAG_CC1OF                    = ((uint16_t)0x0200),
  TIM1_FLAG_CC2OF                    = ((uint16_t)0x0400),
  TIM1_FLAG_CC3OF                    = ((uint16_t)0x0800),
  TIM1_FLAG_CC4OF                    = ((uint16_t)0x1000)
}TIM1_FLAG_TypeDef;

#line 464 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_tim1.h"



/** TIM1 Forced Action */
typedef enum
{
  TIM1_FORCEDACTION_ACTIVE           = ((uint8_t)0x50),
  TIM1_FORCEDACTION_INACTIVE         = ((uint8_t)0x40)
}TIM1_ForcedAction_TypeDef;



/**
  * @}
  */

/* Exported macro ------------------------------------------------------------*/

/* Exported functions --------------------------------------------------------*/

/** @addtogroup TIM1_Exported_Functions
  * @{
  */

void TIM1_DeInit(void);
void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler, 
                       TIM1_CounterMode_TypeDef TIM1_CounterMode,
                       uint16_t TIM1_Period, uint8_t TIM1_RepetitionCounter);
void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode, 
                  TIM1_OutputState_TypeDef TIM1_OutputState, 
                  TIM1_OutputNState_TypeDef TIM1_OutputNState, 
                  uint16_t TIM1_Pulse, TIM1_OCPolarity_TypeDef TIM1_OCPolarity, 
                  TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity, 
                  TIM1_OCIdleState_TypeDef TIM1_OCIdleState, 
                  TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState);
void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode, 
                  TIM1_OutputState_TypeDef TIM1_OutputState, 
                  TIM1_OutputNState_TypeDef TIM1_OutputNState, 
                  uint16_t TIM1_Pulse, TIM1_OCPolarity_TypeDef TIM1_OCPolarity, 
                  TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity, 
                  TIM1_OCIdleState_TypeDef TIM1_OCIdleState, 
                  TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState);
void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode, 
                  TIM1_OutputState_TypeDef TIM1_OutputState, 
                  TIM1_OutputNState_TypeDef TIM1_OutputNState, 
                  uint16_t TIM1_Pulse, TIM1_OCPolarity_TypeDef TIM1_OCPolarity, 
                  TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity, 
                  TIM1_OCIdleState_TypeDef TIM1_OCIdleState, 
                  TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState);
void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode, 
                  TIM1_OutputState_TypeDef TIM1_OutputState, uint16_t TIM1_Pulse,
                  TIM1_OCPolarity_TypeDef TIM1_OCPolarity, 
                  TIM1_OCIdleState_TypeDef TIM1_OCIdleState);
void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState, 
                     TIM1_LockLevel_TypeDef TIM1_LockLevel, uint8_t TIM1_DeadTime,
                     TIM1_BreakState_TypeDef TIM1_Break, 
                     TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity, 
                     TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput);
void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel, 
                 TIM1_ICPolarity_TypeDef TIM1_ICPolarity, 
                 TIM1_ICSelection_TypeDef TIM1_ICSelection, 
                 TIM1_ICPSC_TypeDef TIM1_ICPrescaler, uint8_t TIM1_ICFilter);
void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel, 
                     TIM1_ICPolarity_TypeDef TIM1_ICPolarity, 
                     TIM1_ICSelection_TypeDef TIM1_ICSelection, 
                     TIM1_ICPSC_TypeDef TIM1_ICPrescaler, uint8_t TIM1_ICFilter);
void TIM1_Cmd(_Bool NewState);
void TIM1_CtrlPWMOutputs(_Bool NewState);
void TIM1_ITConfig(TIM1_IT_TypeDef TIM1_IT, _Bool NewState);
void TIM1_InternalClockConfig(void);
void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler, 
                              TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity, 
                              uint8_t ExtTRGFilter);
void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler, 
                              TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity, 
                              uint8_t ExtTRGFilter);
void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler, 
                    TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity, 
                    uint8_t ExtTRGFilter);
void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource, 
                                 TIM1_ICPolarity_TypeDef TIM1_ICPolarity, 
                                 uint8_t ICFilter);
void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource);
void TIM1_UpdateDisableConfig(_Bool NewState);
void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource);
void TIM1_SelectHallSensor(_Bool NewState);
void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode);
void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource);
void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode);
void TIM1_SelectMasterSlaveMode(_Bool NewState);
void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode, 
                                 TIM1_ICPolarity_TypeDef TIM1_IC1Polarity, 
                                 TIM1_ICPolarity_TypeDef TIM1_IC2Polarity);
void TIM1_PrescalerConfig(uint16_t Prescaler, TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode);
void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode);
void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction);
void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction);
void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction);
void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction);
void TIM1_ARRPreloadConfig(_Bool NewState);
void TIM1_SelectCOM(_Bool NewState);
void TIM1_CCPreloadControl(_Bool NewState);
void TIM1_OC1PreloadConfig(_Bool NewState);
void TIM1_OC2PreloadConfig(_Bool NewState);
void TIM1_OC3PreloadConfig(_Bool NewState);
void TIM1_OC4PreloadConfig(_Bool NewState);
void TIM1_OC1FastConfig(_Bool NewState);
void TIM1_OC2FastConfig(_Bool NewState);
void TIM1_OC3FastConfig(_Bool NewState);
void TIM1_OC4FastConfig(_Bool NewState);
void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource);
void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity);
void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity);
void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity);
void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity);
void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity);
void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity);
void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity);
void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, _Bool NewState);
void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, _Bool NewState);
void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode);
void TIM1_SetCounter(uint16_t Counter);
void TIM1_SetAutoreload(uint16_t Autoreload);
void TIM1_SetCompare1(uint16_t Compare1);
void TIM1_SetCompare2(uint16_t Compare2);
void TIM1_SetCompare3(uint16_t Compare3);
void TIM1_SetCompare4(uint16_t Compare4);
void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler);
void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler);
void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler);
void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler);
uint16_t TIM1_GetCapture1(void);
uint16_t TIM1_GetCapture2(void);
uint16_t TIM1_GetCapture3(void);
uint16_t TIM1_GetCapture4(void);
uint16_t TIM1_GetCounter(void);
uint16_t TIM1_GetPrescaler(void);
_Bool TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG);
void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG);
_Bool TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT);
void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT);

/**
  * @}
  */



/**
  * @}
  */

/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
#line 24 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\src\\stm8s_tim1.c"

/** @addtogroup STM8S_StdPeriph_Driver
  * @{
  */
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
static void TI1_Config(uint8_t TIM1_ICPolarity, uint8_t TIM1_ICSelection,
                       uint8_t TIM1_ICFilter);
static void TI2_Config(uint8_t TIM1_ICPolarity, uint8_t TIM1_ICSelection,
                       uint8_t TIM1_ICFilter);
static void TI3_Config(uint8_t TIM1_ICPolarity, uint8_t TIM1_ICSelection,
                       uint8_t TIM1_ICFilter);
static void TI4_Config(uint8_t TIM1_ICPolarity, uint8_t TIM1_ICSelection,
                       uint8_t TIM1_ICFilter);

/**
  * @addtogroup TIM1_Public_Functions
  * @{
  */

/**
  * @brief  Deinitializes the TIM1 peripheral registers to their default reset values.
  * @param  None
  * @retval None
  */
void TIM1_DeInit(void)
{
    ((TIM1_TypeDef *) 0x5250)->CR1  = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->CR2  = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->SMCR = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->ETR  = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->IER  = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->SR2  = ((uint8_t)0x00);
    /* Disable channels */
    ((TIM1_TypeDef *) 0x5250)->CCER1 = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->CCER2 = ((uint8_t)0x00);
    /* Configure channels as inputs: it is necessary if lock level is equal to 2 or 3 */
    ((TIM1_TypeDef *) 0x5250)->CCMR1 = 0x01;
    ((TIM1_TypeDef *) 0x5250)->CCMR2 = 0x01;
    ((TIM1_TypeDef *) 0x5250)->CCMR3 = 0x01;
    ((TIM1_TypeDef *) 0x5250)->CCMR4 = 0x01;
    /* Then reset channel registers: it also works if lock level is equal to 2 or 3 */
    ((TIM1_TypeDef *) 0x5250)->CCER1 = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->CCER2 = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->CCMR1 = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->CCMR2 = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->CCMR3 = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->CCMR4 = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->CNTRH = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->CNTRL = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->PSCRH = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->PSCRL = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->ARRH  = ((uint8_t)0xFF);
    ((TIM1_TypeDef *) 0x5250)->ARRL  = ((uint8_t)0xFF);
    ((TIM1_TypeDef *) 0x5250)->CCR1H = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->CCR1L = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->CCR2H = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->CCR2L = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->CCR3H = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->CCR3L = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->CCR4H = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->CCR4L = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->OISR  = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->EGR   = 0x01; /* TIM1_EGR_UG */
    ((TIM1_TypeDef *) 0x5250)->DTR   = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->BKR   = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->RCR   = ((uint8_t)0x00);
    ((TIM1_TypeDef *) 0x5250)->SR1   = ((uint8_t)0x00);
}

/**
  * @brief  Initializes the TIM1 Time Base Unit according to the specified parameters.
  * @param  TIM1_Prescaler specifies the Prescaler value.
  * @param  TIM1_CounterMode specifies the counter mode  from @ref TIM1_CounterMode_TypeDef .
  * @param  TIM1_Period specifies the Period value.
  * @param  TIM1_RepetitionCounter specifies the Repetition counter value
  * @retval None
  */
void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
                       TIM1_CounterMode_TypeDef TIM1_CounterMode,
                       uint16_t TIM1_Period,
                       uint8_t TIM1_RepetitionCounter)
{

    /* Check parameters */
    ((void)0);

    /* Set the Autoreload value */
    ((TIM1_TypeDef *) 0x5250)->ARRH = (uint8_t)(TIM1_Period >> 8);
    ((TIM1_TypeDef *) 0x5250)->ARRL = (uint8_t)(TIM1_Period);

    /* Set the Prescaler value */
    ((TIM1_TypeDef *) 0x5250)->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
    ((TIM1_TypeDef *) 0x5250)->PSCRL = (uint8_t)(TIM1_Prescaler);

    /* Select the Counter Mode */
    ((TIM1_TypeDef *) 0x5250)->CR1 = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CR1 & (uint8_t)(~(((uint8_t)0x60) | ((uint8_t)0x10))))
                           | (uint8_t)(TIM1_CounterMode));

    /* Set the Repetition Counter value */
    ((TIM1_TypeDef *) 0x5250)->RCR = TIM1_RepetitionCounter;

}

/**
  * @brief  Initializes the TIM1 Channel1 according to the specified parameters.
  * @param  TIM1_OCMode specifies the Output Compare mode from 
  *         @ref TIM1_OCMode_TypeDef.
  * @param  TIM1_OutputState specifies the Output State from 
  *         @ref TIM1_OutputState_TypeDef.
  * @param  TIM1_OutputNState specifies the Complementary Output State 
  *         from @ref TIM1_OutputNState_TypeDef.
  * @param  TIM1_Pulse specifies the Pulse width value.
  * @param  TIM1_OCPolarity specifies the Output Compare Polarity from 
  *         @ref TIM1_OCPolarity_TypeDef.
  * @param  TIM1_OCNPolarity specifies the Complementary Output Compare Polarity
  *         from @ref TIM1_OCNPolarity_TypeDef.
  * @param  TIM1_OCIdleState specifies the Output Compare Idle State from 
  *         @ref TIM1_OCIdleState_TypeDef.
  * @param  TIM1_OCNIdleState specifies the Complementary Output Compare Idle 
  *         State from @ref TIM1_OCIdleState_TypeDef.
  * @retval None
  */
void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                  TIM1_OutputState_TypeDef TIM1_OutputState,
                  TIM1_OutputNState_TypeDef TIM1_OutputNState,
                  uint16_t TIM1_Pulse,
                  TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
                  TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
                  TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
                  TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
{
    /* Check the parameters */
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);

    /* Disable the Channel 1: Reset the CCE Bit, Set the Output State , 
       the Output N State, the Output Polarity & the Output N Polarity*/
    ((TIM1_TypeDef *) 0x5250)->CCER1 &= (uint8_t)(~( ((uint8_t)0x01) | ((uint8_t)0x04) 
                               | ((uint8_t)0x02) | ((uint8_t)0x08)));
    /* Set the Output State & Set the Output N State & Set the Output Polarity &
       Set the Output N Polarity */
  ((TIM1_TypeDef *) 0x5250)->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & ((uint8_t)0x01))
                                     | (uint8_t)(TIM1_OutputNState & ((uint8_t)0x04)))
                           | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & ((uint8_t)0x02))
                                        | (uint8_t)(TIM1_OCNPolarity & ((uint8_t)0x08))));

    /* Reset the Output Compare Bits & Set the Output Compare Mode */
    ((TIM1_TypeDef *) 0x5250)->CCMR1 = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR1 & (uint8_t)(~((uint8_t)0x70))) | 
                            (uint8_t)TIM1_OCMode);

    /* Reset the Output Idle state & the Output N Idle state bits */
    ((TIM1_TypeDef *) 0x5250)->OISR &= (uint8_t)(~(((uint8_t)0x01) | ((uint8_t)0x02)));
    /* Set the Output Idle state & the Output N Idle state configuration */
    ((TIM1_TypeDef *) 0x5250)->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & ((uint8_t)0x01) ) | 
                            (uint8_t)( TIM1_OCNIdleState & ((uint8_t)0x02) ));

    /* Set the Pulse value */
    ((TIM1_TypeDef *) 0x5250)->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
    ((TIM1_TypeDef *) 0x5250)->CCR1L = (uint8_t)(TIM1_Pulse);
}

/**
  * @brief  Initializes the TIM1 Channel2 according to the specified parameters.
  * @param  TIM1_OCMode specifies the Output Compare mode from
  *         @ref TIM1_OCMode_TypeDef.
  * @param  TIM1_OutputState specifies the Output State from 
  *         @ref TIM1_OutputState_TypeDef.
  * @param  TIM1_OutputNState specifies the Complementary Output State from 
  *         @ref TIM1_OutputNState_TypeDef.
  * @param  TIM1_Pulse specifies the Pulse width value.
  * @param  TIM1_OCPolarity specifies the Output Compare Polarity from 
  *         @ref TIM1_OCPolarity_TypeDef.
  * @param  TIM1_OCNPolarity specifies the Complementary Output Compare Polarity
  *         from @ref TIM1_OCNPolarity_TypeDef.
  * @param  TIM1_OCIdleState specifies the Output Compare Idle State from 
  *         @ref TIM1_OCIdleState_TypeDef.
  * @param  TIM1_OCNIdleState specifies the Complementary Output Compare Idle 
  *         State from @ref TIM1_OCIdleState_TypeDef.
  * @retval None
  */
void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                  TIM1_OutputState_TypeDef TIM1_OutputState,
                  TIM1_OutputNState_TypeDef TIM1_OutputNState,
                  uint16_t TIM1_Pulse,
                  TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
                  TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
                  TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
                  TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
{
    /* Check the parameters */
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);

    /* Disable the Channel 1: Reset the CCE Bit, Set the Output State , 
       the Output N State, the Output Polarity & the Output N Polarity*/
    ((TIM1_TypeDef *) 0x5250)->CCER1 &= (uint8_t)(~( ((uint8_t)0x10) | ((uint8_t)0x40) | 
                                ((uint8_t)0x20) | ((uint8_t)0x80)));

    /* Set the Output State & Set the Output N State & Set the Output Polarity &
       Set the Output N Polarity */
    ((TIM1_TypeDef *) 0x5250)->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & ((uint8_t)0x10)  ) | 
                             (uint8_t)(TIM1_OutputNState & ((uint8_t)0x40) )) | 
                             (uint8_t)((uint8_t)(TIM1_OCPolarity  & ((uint8_t)0x20)  ) | 
                             (uint8_t)(TIM1_OCNPolarity & ((uint8_t)0x80) )));

    /* Reset the Output Compare Bits & Set the Output Compare Mode */
    ((TIM1_TypeDef *) 0x5250)->CCMR2 = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR2 & (uint8_t)(~((uint8_t)0x70))) | 
                             (uint8_t)TIM1_OCMode);

    /* Reset the Output Idle state & the Output N Idle state bits */
    ((TIM1_TypeDef *) 0x5250)->OISR &= (uint8_t)(~(((uint8_t)0x04) | ((uint8_t)0x08)));
    /* Set the Output Idle state & the Output N Idle state configuration */
    ((TIM1_TypeDef *) 0x5250)->OISR |= (uint8_t)((uint8_t)(((uint8_t)0x04) & TIM1_OCIdleState) | 
                            (uint8_t)(((uint8_t)0x08) & TIM1_OCNIdleState));

    /* Set the Pulse value */
    ((TIM1_TypeDef *) 0x5250)->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
    ((TIM1_TypeDef *) 0x5250)->CCR2L = (uint8_t)(TIM1_Pulse);

}

/**
  * @brief  Initializes the TIM1 Channel3 according to the specified parameters.
  * @param  TIM1_OCMode specifies the Output Compare mode  from 
  *         @ref TIM1_OCMode_TypeDef.
  * @param  TIM1_OutputState specifies the Output State  
  *         from @ref TIM1_OutputState_TypeDef.
  * @param  TIM1_OutputNState specifies the Complementary Output State
  *         from @ref TIM1_OutputNState_TypeDef.
  * @param  TIM1_Pulse specifies the Pulse width value.
  * @param  TIM1_OCPolarity specifies the Output Compare Polarity  from 
  *         @ref TIM1_OCPolarity_TypeDef.
  * @param  TIM1_OCNPolarity specifies the Complementary  Output Compare 
  *         Polarity from @ref TIM1_OCNPolarity_TypeDef.
  * @param  TIM1_OCIdleState specifies the Output Compare Idle State
  *         from @ref TIM1_OCIdleState_TypeDef.
  * @param  TIM1_OCNIdleState specifies the Complementary Output Compare 
  *         Idle State  from @ref TIM1_OCIdleState_TypeDef.
  * @retval None
  */
void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                  TIM1_OutputState_TypeDef TIM1_OutputState,
                  TIM1_OutputNState_TypeDef TIM1_OutputNState,
                  uint16_t TIM1_Pulse,
                  TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
                  TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
                  TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
                  TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
{
    /* Check the parameters */
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);

    /* Disable the Channel 1: Reset the CCE Bit, Set the Output State , 
       the Output N State, the Output Polarity & the Output N Polarity*/
    ((TIM1_TypeDef *) 0x5250)->CCER2 &= (uint8_t)(~( ((uint8_t)0x01) | ((uint8_t)0x04) | 
                                ((uint8_t)0x02) | ((uint8_t)0x08)));
    /* Set the Output State & Set the Output N State & Set the Output Polarity &
       Set the Output N Polarity */
    ((TIM1_TypeDef *) 0x5250)->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & ((uint8_t)0x01)   ) |
                             (uint8_t)(TIM1_OutputNState & ((uint8_t)0x04)  )) | 
                             (uint8_t)((uint8_t)(TIM1_OCPolarity   & ((uint8_t)0x02)   ) | 
                             (uint8_t)(TIM1_OCNPolarity  & ((uint8_t)0x08)  )));

    /* Reset the Output Compare Bits & Set the Output Compare Mode */
    ((TIM1_TypeDef *) 0x5250)->CCMR3 = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR3 & (uint8_t)(~((uint8_t)0x70))) | 
                             (uint8_t)TIM1_OCMode);

    /* Reset the Output Idle state & the Output N Idle state bits */
    ((TIM1_TypeDef *) 0x5250)->OISR &= (uint8_t)(~(((uint8_t)0x10) | ((uint8_t)0x20)));
    /* Set the Output Idle state & the Output N Idle state configuration */
    ((TIM1_TypeDef *) 0x5250)->OISR |= (uint8_t)((uint8_t)(((uint8_t)0x10) & TIM1_OCIdleState) | 
                            (uint8_t)(((uint8_t)0x20) & TIM1_OCNIdleState));

    /* Set the Pulse value */
    ((TIM1_TypeDef *) 0x5250)->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
    ((TIM1_TypeDef *) 0x5250)->CCR3L = (uint8_t)(TIM1_Pulse);

}

/**
  * @brief  Initializes the TIM1 Channel4 according to the specified parameters.
  * @param  TIM1_OCMode specifies the Output Compare mode  from 
  *         @ref TIM1_OCMode_TypeDef.
  * @param  TIM1_OutputState specifies the Output State
  *         from @ref TIM1_OutputState_TypeDef.
  * @param  TIM1_Pulse specifies the Pulse width  value.
  * @param  TIM1_OCPolarity specifies the Output Compare Polarity
  *         from @ref TIM1_OCPolarity_TypeDef.
  * @param  TIM1_OCIdleState specifies the Output Compare Idle State
  *         from @ref TIM1_OCIdleState_TypeDef.
  * @retval None
  */
void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                  TIM1_OutputState_TypeDef TIM1_OutputState,
                  uint16_t TIM1_Pulse,
                  TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
                  TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
{
    /* Check the parameters */
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);

    /* Disable the Channel 4: Reset the CCE Bit */
    ((TIM1_TypeDef *) 0x5250)->CCER2 &= (uint8_t)(~(((uint8_t)0x10) | ((uint8_t)0x20)));
    /* Set the Output State  &  the Output Polarity */
    ((TIM1_TypeDef *) 0x5250)->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & ((uint8_t)0x10) ) |  
                             (uint8_t)(TIM1_OCPolarity  & ((uint8_t)0x20) ));

    /* Reset the Output Compare Bit  and Set the Output Compare Mode */
    ((TIM1_TypeDef *) 0x5250)->CCMR4 = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR4 & (uint8_t)(~((uint8_t)0x70))) | 
                            TIM1_OCMode);

    /* Set the Output Idle state */
    if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
    {
        ((TIM1_TypeDef *) 0x5250)->OISR |= (uint8_t)(~((uint8_t)0x20));
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->OISR &= (uint8_t)(~((uint8_t)0x40));
    }

    /* Set the Pulse value */
    ((TIM1_TypeDef *) 0x5250)->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
    ((TIM1_TypeDef *) 0x5250)->CCR4L = (uint8_t)(TIM1_Pulse);

}

/**
  * @brief  Configures the Break feature, dead time, Lock level, the OSSI,
  *         and the AOE(automatic output enable).
  * @param  TIM1_OSSIState specifies the OSSIS State from @ref TIM1_OSSIState_TypeDef.
  * @param  TIM1_LockLevel specifies the lock level from @ref TIM1_LockLevel_TypeDef.
  * @param  TIM1_DeadTime specifies the dead time value.
  * @param  TIM1_Break specifies the Break state @ref TIM1_BreakState_TypeDef.
  * @param  TIM1_BreakPolarity specifies the Break polarity from 
  *         @ref TIM1_BreakPolarity_TypeDef.
  * @param  TIM1_AutomaticOutput specifies the Automatic Output configuration 
  *         from @ref TIM1_AutomaticOutput_TypeDef.
  * @retval None
  */
void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
                     TIM1_LockLevel_TypeDef TIM1_LockLevel,
                     uint8_t TIM1_DeadTime,
                     TIM1_BreakState_TypeDef TIM1_Break,
                     TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
                     TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
{
    /* Check the parameters */
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);

    ((TIM1_TypeDef *) 0x5250)->DTR = (uint8_t)(TIM1_DeadTime);
    /* Set the Lock level, the Break enable Bit and the Polarity, the OSSI State,
              the dead time value  and the Automatic Output Enable Bit */

    ((TIM1_TypeDef *) 0x5250)->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
                            (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
                            (uint8_t)TIM1_AutomaticOutput));

}

/**
  * @brief  Initializes the TIM1 peripheral according to the specified parameters.
  * @param  TIM1_Channel specifies the input capture channel from TIM1_Channel_TypeDef.
  * @param  TIM1_ICPolarity specifies the Input capture polarity from  
  *         TIM1_ICPolarity_TypeDef .
  * @param  TIM1_ICSelection specifies the Input capture source selection from 
  *         TIM1_ICSelection_TypeDef.
  * @param  TIM1_ICPrescaler specifies the Input capture Prescaler from
  *         TIM1_ICPSC_TypeDef.
  * @param  TIM1_ICFilter specifies the Input capture filter value.
  * @retval None
  */
void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
                 TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
                 TIM1_ICSelection_TypeDef TIM1_ICSelection,
                 TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
                 uint8_t TIM1_ICFilter)
{

    /* Check the parameters */
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);

    if (TIM1_Channel == TIM1_CHANNEL_1)
    {
        /* TI1 Configuration */
        TI1_Config((uint8_t)TIM1_ICPolarity,
                   (uint8_t)TIM1_ICSelection,
                   (uint8_t)TIM1_ICFilter);
        /* Set the Input Capture Prescaler value */
        TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
    }
    else if (TIM1_Channel == TIM1_CHANNEL_2)
    {
        /* TI2 Configuration */
        TI2_Config((uint8_t)TIM1_ICPolarity,
                   (uint8_t)TIM1_ICSelection,
                   (uint8_t)TIM1_ICFilter);
        /* Set the Input Capture Prescaler value */
        TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
    }
    else if (TIM1_Channel == TIM1_CHANNEL_3)
    {
        /* TI3 Configuration */
        TI3_Config((uint8_t)TIM1_ICPolarity,
                   (uint8_t)TIM1_ICSelection,
                   (uint8_t)TIM1_ICFilter);
        /* Set the Input Capture Prescaler value */
        TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
    }
    else
    {
        /* TI4 Configuration */
        TI4_Config((uint8_t)TIM1_ICPolarity,
                   (uint8_t)TIM1_ICSelection,
                   (uint8_t)TIM1_ICFilter);
        /* Set the Input Capture Prescaler value */
        TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
    }

}

/**
  * @brief  Configures the TIM1 peripheral in PWM Input Mode according to the 
  *         specified parameters.
  * @param  TIM1_Channel specifies the input capture channel from 
  *         @ref TIM1_Channel_TypeDef.
  * @param  TIM1_ICPolarity specifies the Input capture polarity from  
  *         @ref TIM1_ICPolarity_TypeDef .
  * @param  TIM1_ICSelection specifies the Input capture source selection  from
  *         @ref TIM1_ICSelection_TypeDef.
  * @param  TIM1_ICPrescaler specifies the Input capture Prescaler from  
  *         @ref TIM1_ICPSC_TypeDef.
  * @param  TIM1_ICFilter specifies the Input capture filter value.
  * @retval None
  */
void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
                     TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
                     TIM1_ICSelection_TypeDef TIM1_ICSelection,
                     TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
                     uint8_t TIM1_ICFilter)
{
    uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
    uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;

    /* Check the parameters */
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);

    /* Select the Opposite Input Polarity */
    if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
    {
        icpolarity = TIM1_ICPOLARITY_FALLING;
    }
    else
    {
        icpolarity = TIM1_ICPOLARITY_RISING;
    }

    /* Select the Opposite Input */
    if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
    {
        icselection = TIM1_ICSELECTION_INDIRECTTI;
    }
    else
    {
        icselection = TIM1_ICSELECTION_DIRECTTI;
    }

    if (TIM1_Channel == TIM1_CHANNEL_1)
    {
        /* TI1 Configuration */
        TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
                   (uint8_t)TIM1_ICFilter);

        /* Set the Input Capture Prescaler value */
        TIM1_SetIC1Prescaler(TIM1_ICPrescaler);

        /* TI2 Configuration */
        TI2_Config(icpolarity, icselection, TIM1_ICFilter);

        /* Set the Input Capture Prescaler value */
        TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
    }
    else
    {
        /* TI2 Configuration */
        TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
                   (uint8_t)TIM1_ICFilter);

        /* Set the Input Capture Prescaler value */
        TIM1_SetIC2Prescaler(TIM1_ICPrescaler);

        /* TI1 Configuration */
        TI1_Config(icpolarity, icselection, TIM1_ICFilter);

        /* Set the Input Capture Prescaler value */
        TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
    }
}

/**
  * @brief  Enables or disables the TIM1 peripheral.
  * @param  NewState new state of the TIM1 peripheral.
	*         This parameter can be ENABLE or DISABLE.
  * @retval None
  */
void TIM1_Cmd(_Bool NewState)
{
    /* Check the parameters */
    ((void)0);

    /* set or Reset the CEN Bit */
    if (NewState != 0)
    {
        ((TIM1_TypeDef *) 0x5250)->CR1 |= ((uint8_t)0x01);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CR1 &= (uint8_t)(~((uint8_t)0x01));
    }
}

/**
  * @brief  Enables or disables the TIM1 peripheral Main Outputs.
  * @param  NewState new state of the TIM1 peripheral.
	*         This parameter can be ENABLE or DISABLE.
  * @retval None
  */
void TIM1_CtrlPWMOutputs(_Bool NewState)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the MOE Bit */

    if (NewState != 0)
    {
        ((TIM1_TypeDef *) 0x5250)->BKR |= ((uint8_t)0x80);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->BKR &= (uint8_t)(~((uint8_t)0x80));
    }
}

/**
  * @brief  Enables or disables the specified TIM1 interrupts.
  * @param  NewState new state of the TIM1 peripheral.
  *         This parameter can be: ENABLE or DISABLE.
  * @param  TIM1_IT specifies the TIM1 interrupts sources to be enabled or disabled.
  *         This parameter can be any combination of the following values:
  *           - TIM1_IT_UPDATE: TIM1 update Interrupt source
  *           - TIM1_IT_CC1: TIM1 Capture Compare 1 Interrupt source
  *           - TIM1_IT_CC2: TIM1 Capture Compare 2 Interrupt source
  *           - TIM1_IT_CC3: TIM1 Capture Compare 3 Interrupt source
  *           - TIM1_IT_CC4: TIM1 Capture Compare 4 Interrupt source
  *           - TIM1_IT_CCUpdate: TIM1 Capture Compare Update Interrupt source
  *           - TIM1_IT_TRIGGER: TIM1 Trigger Interrupt source
  *           - TIM1_IT_BREAK: TIM1 Break Interrupt source
  * @param  NewState new state of the TIM1 peripheral.
  * @retval None
  */
void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, _Bool NewState)
{
    /* Check the parameters */
    ((void)0);
    ((void)0);

    if (NewState != 0)
    {
        /* Enable the Interrupt sources */
        ((TIM1_TypeDef *) 0x5250)->IER |= (uint8_t)TIM1_IT;
    }
    else
    {
        /* Disable the Interrupt sources */
        ((TIM1_TypeDef *) 0x5250)->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
    }
}

/**
  * @brief  Configures the TIM1 internal Clock.
  * @param  None
  * @retval None
  */
void TIM1_InternalClockConfig(void)
{
    /* Disable slave mode to clock the prescaler directly with the internal clock */
    ((TIM1_TypeDef *) 0x5250)->SMCR &= (uint8_t)(~((uint8_t)0x07));
}

/**
  * @brief  Configures the TIM1 External clock Mode1.
  * @param  TIM1_ExtTRGPrescaler specifies the external Trigger Prescaler.
  *         This parameter can be one of the following values:
  *                       - TIM1_EXTTRGPSC_OFF
  *                       - TIM1_EXTTRGPSC_DIV2
  *                       - TIM1_EXTTRGPSC_DIV4
  *                       - TIM1_EXTTRGPSC_DIV8.
  * @param  TIM1_ExtTRGPolarity specifies the external Trigger Polarity.
  *         This parameter can be one of the following values:
  *                       - TIM1_EXTTRGPOLARITY_INVERTED
  *                       - TIM1_EXTTRGPOLARITY_NONINVERTED
  * @param  ExtTRGFilter specifies the External Trigger Filter.
  *         This parameter must be a value between 0x00 and 0x0F
  * @retval None
  */
void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                              TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
                              uint8_t ExtTRGFilter)
{
    /* Check the parameters */
    ((void)0);
    ((void)0);

    /* Configure the ETR Clock source */
    TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);

    /* Select the External clock mode1 & Select the Trigger selection : ETRF */
    ((TIM1_TypeDef *) 0x5250)->SMCR = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->SMCR & (uint8_t)(~(uint8_t)(((uint8_t)0x07) | ((uint8_t)0x70) )))
                           | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
}

/**
  * @brief  Configures the TIM1 External clock Mode2.
  * @param  TIM1_ExtTRGPrescaler specifies the external Trigger Prescaler.
  *         This parameter can be one of the following values:
  *                       - TIM1_EXTTRGPSC_OFF
  *                       - TIM1_EXTTRGPSC_DIV2
  *                       - TIM1_EXTTRGPSC_DIV4
  *                       - TIM1_EXTTRGPSC_DIV8.
  * @param  TIM1_ExtTRGPolarity specifies the external Trigger Polarity.
  *         This parameter can be one of the following values:
  *                       - TIM1_EXTTRGPOLARITY_INVERTED
  *                       - TIM1_EXTTRGPOLARITY_NONINVERTED
  * @param  ExtTRGFilter specifies the External Trigger Filter.
  *         This parameter must be a value between 0x00 and 0x0F
  * @retval None
  */
void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                              TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
                              uint8_t ExtTRGFilter)
{
    /* Check the parameters */
    ((void)0);
    ((void)0);

    /* Configure the ETR Clock source */
    TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);

    /* Enable the External clock mode2 */
    ((TIM1_TypeDef *) 0x5250)->ETR |= ((uint8_t)0x40);
}

/**
  * @brief  Configures the TIM1 External Trigger.
  * @param  TIM1_ExtTRGPrescaler specifies the external Trigger Prescaler.
  *         This parameter can be one of the following values:
  *                       - TIM1_EXTTRGPSC_OFF
  *                       - TIM1_EXTTRGPSC_DIV2
  *                       - TIM1_EXTTRGPSC_DIV4
  *                       - TIM1_EXTTRGPSC_DIV8.
  * @param  TIM1_ExtTRGPolarity specifies the external Trigger Polarity.
  *         This parameter can be one of the following values:
  *                       - TIM1_EXTTRGPOLARITY_INVERTED
  *                       - TIM1_EXTTRGPOLARITY_NONINVERTED
  * @param  ExtTRGFilter specifies the External Trigger Filter.
  *         This parameter must be a value between 0x00 and 0x0F
  * @retval None
  */
void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                    TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
                    uint8_t ExtTRGFilter)
{
    /* Check the parameters */
    ((void)0);
    /* Set the Prescaler, the Filter value and the Polarity */
    ((TIM1_TypeDef *) 0x5250)->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
                      (uint8_t)ExtTRGFilter );
}

/**
  * @brief  Configures the TIM1 Trigger as External Clock.
  * @param  TIM1_TIxExternalCLKSource specifies Trigger source.
  *         This parameter can be one of the following values:
  *                     - TIM1_TIXEXTERNALCLK1SOURCE_TI1: TI1 Edge Detector
  *                     - TIM1_TIXEXTERNALCLK1SOURCE_TI2: Filtered TIM1 Input 1
  *                     - TIM1_TIXEXTERNALCLK1SOURCE_TI1ED: Filtered TIM1 Input 2
  * @param  TIM1_ICPolarity specifies the TIx Polarity.
  *         This parameter can be:
  *                     - TIM1_ICPOLARITY_RISING
  *                     - TIM1_ICPOLARITY_FALLING
  * @param  ICFilter specifies the filter value.
  *         This parameter must be a value between 0x00 and 0x0F
  * @retval None
  */
void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
                                 TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
                                 uint8_t ICFilter)
{
    /* Check the parameters */
    ((void)0);
    ((void)0);
    ((void)0);

    /* Configure the TIM1 Input Clock Source */
    if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
    {
        TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
    }
    else
    {
        TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
    }

    /* Select the Trigger source */
    TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);

    /* Select the External clock mode1 */
    ((TIM1_TypeDef *) 0x5250)->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
}

/**
  * @brief  Selects the TIM1 Input Trigger source.
  * @param   TIM1_InputTriggerSource specifies Input Trigger source.
  * This parameter can be one of the following values:
  *                       - TIM1_TS_TI1F_ED: TI1 Edge Detector
  *                       - TIM1_TS_TI1FP1: Filtered Timer Input 1
  *                       - TIM1_TS_TI2FP2: Filtered Timer Input 2
  *                       - TIM1_TS_ETRF: External Trigger input
  * @retval None
  */
void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
{
    /* Check the parameters */
    ((void)0);

    /* Select the Tgigger Source */
    ((TIM1_TypeDef *) 0x5250)->SMCR = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->SMCR & (uint8_t)(~((uint8_t)0x70))) | (uint8_t)TIM1_InputTriggerSource);
}


/**
  * @brief  Enables or Disables the TIM1 Update event.
  * @param   NewState new state of the TIM1 peripheral Preload register. This parameter can
  * be ENABLE or DISABLE.
  * @retval None
  */

void TIM1_UpdateDisableConfig(_Bool NewState)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the UDIS Bit */
    if (NewState != 0)
    {
        ((TIM1_TypeDef *) 0x5250)->CR1 |= ((uint8_t)0x02);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CR1 &= (uint8_t)(~((uint8_t)0x02));
    }
}

/**
  * @brief  Selects the TIM1 Update Request Interrupt source.
  * @param   TIM1_UpdateSource specifies the Update source.
  * This parameter can be one of the following values
  *                       - TIM1_UPDATESOURCE_REGULAR
  *                       - TIM1_UPDATESOURCE_GLOBAL
  * @retval None
  */
void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the URS Bit */
    if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
    {
        ((TIM1_TypeDef *) 0x5250)->CR1 |= ((uint8_t)0x04);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CR1 &= (uint8_t)(~((uint8_t)0x04));
    }
}


/**
  * @brief  Enables or Disables the TIM1’s Hall sensor interface.
  * @param   NewState new state of the TIM1 Hall sensor interface.This parameter can
  * be ENABLE or DISABLE.
  * @retval None
  */
void TIM1_SelectHallSensor(_Bool NewState)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the TI1S Bit */
    if (NewState != 0)
    {
        ((TIM1_TypeDef *) 0x5250)->CR2 |= ((uint8_t)0x80);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CR2 &= (uint8_t)(~((uint8_t)0x80));
    }
}


/**
  * @brief  Selects the TIM1’s One Pulse Mode.
  * @param   TIM1_OPMode specifies the OPM Mode to be used.
  * This parameter can be one of the following values
  *                    - TIM1_OPMODE_SINGLE
  *                    - TIM1_OPMODE_REPETITIVE
  * @retval None
  */
void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the OPM Bit */
    if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
    {
        ((TIM1_TypeDef *) 0x5250)->CR1 |= ((uint8_t)0x08);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CR1 &= (uint8_t)(~((uint8_t)0x08));
    }

}


/**
  * @brief  Selects the TIM1 Trigger Output Mode.
  * @param   TIM1_TRGOSource specifies the Trigger Output source.
  * This parameter can be one of the following values
  *                       - TIM1_TRGOSOURCE_RESET
  *                       - TIM1_TRGOSOURCE_ENABLE
  *                       - TIM1_TRGOSOURCE_UPDATE
  *                       - TIM1_TRGOSource_OC1
  *                       - TIM1_TRGOSOURCE_OC1REF
  *                       - TIM1_TRGOSOURCE_OC2REF
  *                       - TIM1_TRGOSOURCE_OC3REF
  * @retval None
  */
void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
{
    /* Check the parameters */
    ((void)0);
    
    /* Reset the MMS Bits & Select the TRGO source */
    ((TIM1_TypeDef *) 0x5250)->CR2 = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CR2 & (uint8_t)(~((uint8_t)0x70))) | 
                          (uint8_t) TIM1_TRGOSource);
}

/**
  * @brief  Selects the TIM1 Slave Mode.
  * @param   TIM1_SlaveMode specifies the TIM1 Slave Mode.
  * This parameter can be one of the following values
  *                       - TIM1_SLAVEMODE_RESET
  *                       - TIM1_SLAVEMODE_GATED
  *                       - TIM1_SLAVEMODE_TRIGGER
  *                       - TIM1_SLAVEMODE_EXTERNAL1
  * @retval None
  */
void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
{

    /* Check the parameters */
    ((void)0);

    /* Reset the SMS Bits */ /* Select the Slave Mode */
    ((TIM1_TypeDef *) 0x5250)->SMCR = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->SMCR & (uint8_t)(~((uint8_t)0x07))) |
                           (uint8_t)TIM1_SlaveMode);

}

/**
  * @brief  Sets or Resets the TIM1 Master/Slave Mode.
  * @param   NewState new state of the synchronization between TIM1 and its slaves
  *  (through TRGO). This parameter can be ENABLE or DISABLE.
  * @retval None
  */
void TIM1_SelectMasterSlaveMode(_Bool NewState)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the MSM Bit */
    if (NewState != 0)
    {
        ((TIM1_TypeDef *) 0x5250)->SMCR |= ((uint8_t)0x80);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->SMCR &= (uint8_t)(~((uint8_t)0x80));
    }
}

/**
  * @brief  Configures the TIM1 Encoder Interface.
  * @param   TIM1_EncoderMode specifies the TIM1 Encoder Mode.
  * This parameter can be one of the following values
  * - TIM1_ENCODERMODE_TI1: Counter counts on TI1FP1 edge
	* depending on TI2FP2 level.
  * - TIM1_ENCODERMODE_TI2: Counter counts on TI2FP2 edge
  *	depending on TI1FP1 level.
  * - TIM1_ENCODERMODE_TI12: Counter counts on both TI1FP1 and
  * TI2FP2 edges depending on the level of the other input.
  * @param   TIM1_IC1Polarity specifies the IC1 Polarity.
  * This parameter can be one of the following values
  *                       - TIM1_ICPOLARITY_FALLING
  *                       - TIM1_ICPOLARITY_RISING
  * @param   TIM1_IC2Polarity specifies the IC2 Polarity.
  * This parameter can be one of the following values
  *                       - TIM1_ICPOLARITY_FALLING
  *                       - TIM1_ICPOLARITY_RISING
  * @retval None
  */
void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
                                 TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
                                 TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
{


    /* Check the parameters */
    ((void)0);
    ((void)0);
    ((void)0);

    /* Set the TI1 and the TI2 Polarities */
    if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
    {
        ((TIM1_TypeDef *) 0x5250)->CCER1 |= ((uint8_t)0x02);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCER1 &= (uint8_t)(~((uint8_t)0x02));
    }

    if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
    {
        ((TIM1_TypeDef *) 0x5250)->CCER1 |= ((uint8_t)0x20);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCER1 &= (uint8_t)(~((uint8_t)0x20));
    }
    /* Set the encoder Mode */
    ((TIM1_TypeDef *) 0x5250)->SMCR = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->SMCR & (uint8_t)(((uint8_t)0x80) | ((uint8_t)0x70)))
                           | (uint8_t) TIM1_EncoderMode);

    /* Select the Capture Compare 1 and the Capture Compare 2 as input */
    ((TIM1_TypeDef *) 0x5250)->CCMR1 = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR1 & (uint8_t)(~((uint8_t)0x03))) 
                            | (uint8_t) ((uint8_t)0x01));
    ((TIM1_TypeDef *) 0x5250)->CCMR2 = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR2 & (uint8_t)(~((uint8_t)0x03)))
                            | (uint8_t) ((uint8_t)0x01));

}

/**
  * @brief  Configures the TIM1 Prescaler.
  * @param   Prescaler specifies the Prescaler Register value
  * This parameter must be a value between 0x0000 and 0xFFFF
  * @param   TIM1_PSCReloadMode specifies the TIM1 Prescaler Reload mode.
  * This parameter can be one of the following values
  * - TIM1_PSCRELOADMODE_IMMEDIATE: The Prescaler is loaded immediately.
  * - TIM1_PSCRELOADMODE_UPDATE: The Prescaler is loaded at the update event.
  * @retval None
  */

void TIM1_PrescalerConfig(uint16_t Prescaler,
                          TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
{
    /* Check the parameters */
    ((void)0);

    /* Set the Prescaler value */
    ((TIM1_TypeDef *) 0x5250)->PSCRH = (uint8_t)(Prescaler >> 8);
    ((TIM1_TypeDef *) 0x5250)->PSCRL = (uint8_t)(Prescaler);

    /* Set or reset the UG Bit */
    ((TIM1_TypeDef *) 0x5250)->EGR = (uint8_t)TIM1_PSCReloadMode;

}

/**
  * @brief  Specifies the TIM1 Counter Mode to be used.
  * @param   TIM1_CounterMode specifies the Counter Mode to be used
  * This parameter can be one of the following values:
  * - TIM1_COUNTERMODE_UP: TIM1 Up Counting Mode
  * - TIM1_COUNTERMODE_DOWN: TIM1 Down Counting Mode
  * - TIM1_COUNTERMODE_CENTERALIGNED1: TIM1 Center Aligned Mode1
  * - TIM1_CounterMode_CenterAligned2: TIM1 Center Aligned Mode2
  * - TIM1_COUNTERMODE_CENTERALIGNED3: TIM1 Center Aligned Mode3
  * @retval None
  */
void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
{
    /* Check the parameters */
    ((void)0);


    /* Reset the CMS and DIR Bits & Set the Counter Mode */
    ((TIM1_TypeDef *) 0x5250)->CR1 = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CR1 & (uint8_t)((uint8_t)(~((uint8_t)0x60)) & (uint8_t)(~((uint8_t)0x10))))
                          | (uint8_t)TIM1_CounterMode);
}


/**
  * @brief  Forces the TIM1 Channel1 output waveform to active or inactive level.
  * @param   TIM1_ForcedAction specifies the forced Action to be set to the output waveform.
  * This parameter can be one of the following values:
  * - TIM1_FORCEDACTION_ACTIVE: Force active level on OC1REF
  * - TIM1_FORCEDACTION_INACTIVE: Force inactive level on OC1REF.
  * @retval None
  */
void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
{
    /* Check the parameters */
    ((void)0);

    /* Reset the OCM Bits & Configure the Forced output Mode */
    ((TIM1_TypeDef *) 0x5250)->CCMR1 =  (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR1 & (uint8_t)(~((uint8_t)0x70)))|
                             (uint8_t)TIM1_ForcedAction);
}


/**
  * @brief  Forces the TIM1 Channel2 output waveform to active or inactive level.
  * @param   TIM1_ForcedAction specifies the forced Action to be set to the output waveform.
  * This parameter can be one of the following values:
  * - TIM1_FORCEDACTION_ACTIVE: Force active level on OC2REF
  * - TIM1_FORCEDACTION_INACTIVE: Force inactive level on OC2REF.
  * @retval None
  */
void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
{
    /* Check the parameters */
    ((void)0);

    /* Reset the OCM Bits & Configure the Forced output Mode */
    ((TIM1_TypeDef *) 0x5250)->CCMR2  =  (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR2 & (uint8_t)(~((uint8_t)0x70)))
                              | (uint8_t)TIM1_ForcedAction);
}


/**
  * @brief  Forces the TIM1 Channel3 output waveform to active or inactive level.
  * @param   TIM1_ForcedAction specifies the forced Action to be set to the output waveform.
  * This parameter can be one of the following values:
  *                       - TIM1_FORCEDACTION_ACTIVE: Force active level on OC3REF
  *                       - TIM1_FORCEDACTION_INACTIVE: Force inactive level on
  *                         OC3REF.
  * @retval None
  */
void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
{
    /* Check the parameters */
    ((void)0);

    /* Reset the OCM Bits */ /* Configure The Forced output Mode */
    ((TIM1_TypeDef *) 0x5250)->CCMR3  =  (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR3 & (uint8_t)(~((uint8_t)0x70)))  
                              | (uint8_t)TIM1_ForcedAction);
}


/**
  * @brief  Forces the TIM1 Channel4 output waveform to active or inactive level.
  * @param   TIM1_ForcedAction specifies the forced Action to be set to the output waveform.
  * This parameter can be one of the following values:
  *                       - TIM1_FORCEDACTION_ACTIVE: Force active level on OC4REF
  *                       - TIM1_FORCEDACTION_INACTIVE: Force inactive level on
  *                         OC4REF.
  * @retval None
  */
void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
{
    /* Check the parameters */
    ((void)0);

    /* Reset the OCM Bits & Configure the Forced output Mode */
    ((TIM1_TypeDef *) 0x5250)->CCMR4  =  (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR4 & (uint8_t)(~((uint8_t)0x70))) 
                              | (uint8_t)TIM1_ForcedAction);
}


/**
  * @brief  Enables or disables TIM1 peripheral Preload register on ARR.
  * @param   NewState new state of the TIM1 peripheral Preload register.
  * This parameter can be ENABLE or DISABLE.
  * @retval None
  */
void TIM1_ARRPreloadConfig(_Bool NewState)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the ARPE Bit */
    if (NewState != 0)
    {
        ((TIM1_TypeDef *) 0x5250)->CR1 |= ((uint8_t)0x80);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CR1 &= (uint8_t)(~((uint8_t)0x80));
    }
}


/**
  * @brief  Selects the TIM1 peripheral Commutation event.
  * @param   NewState new state of the Commutation event.
  * This parameter can be ENABLE or DISABLE.
  * @retval None
  */
void TIM1_SelectCOM(_Bool NewState)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the COMS Bit */
    if (NewState != 0)
    {
        ((TIM1_TypeDef *) 0x5250)->CR2 |= ((uint8_t)0x04);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CR2 &= (uint8_t)(~((uint8_t)0x04));
    }
}

/**
  * @brief  Sets or Resets the TIM1 peripheral Capture Compare Preload Control bit.
  * @param   NewState new state of the Capture Compare Preload Control bit.
  * This parameter can be ENABLE or DISABLE.
  * @retval None
  */
void TIM1_CCPreloadControl(_Bool NewState)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the CCPC Bit */
    if (NewState != 0)
    {
        ((TIM1_TypeDef *) 0x5250)->CR2 |= ((uint8_t)0x01);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CR2 &= (uint8_t)(~((uint8_t)0x01));
    }
}


/**
  * @brief  Enables or disables the TIM1 peripheral Preload Register on CCR1.
  * @param   NewState new state of the Capture Compare Preload register.
  * This parameter can be ENABLE or DISABLE.
  * @retval None
  */
void TIM1_OC1PreloadConfig(_Bool NewState)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the OC1PE Bit */
    if (NewState != 0)
    {
        ((TIM1_TypeDef *) 0x5250)->CCMR1 |= ((uint8_t)0x08);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCMR1 &= (uint8_t)(~((uint8_t)0x08));
    }
}


/**
  * @brief  Enables or disables the TIM1 peripheral Preload Register on CCR2.
  * @param   NewState new state of the Capture Compare Preload register.
  * This parameter can be ENABLE or DISABLE.
  * @retval None
  */
void TIM1_OC2PreloadConfig(_Bool NewState)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the OC2PE Bit */
    if (NewState != 0)
    {
        ((TIM1_TypeDef *) 0x5250)->CCMR2 |= ((uint8_t)0x08);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCMR2 &= (uint8_t)(~((uint8_t)0x08));
    }
}


/**
  * @brief  Enables or disables the TIM1 peripheral Preload Register on CCR3.
  * @param   NewState new state of the Capture Compare Preload register.
  * This parameter can be ENABLE or DISABLE.
  * @retval None
  */
void TIM1_OC3PreloadConfig(_Bool NewState)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the OC3PE Bit */
    if (NewState != 0)
    {
        ((TIM1_TypeDef *) 0x5250)->CCMR3 |= ((uint8_t)0x08);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCMR3 &= (uint8_t)(~((uint8_t)0x08));
    }
}


/**
  * @brief  Enables or disables the TIM1 peripheral Preload Register on CCR4.
  * @param   NewState new state of the Capture Compare Preload register.
  * This parameter can be ENABLE or DISABLE.
  * @retval None
  */

void TIM1_OC4PreloadConfig(_Bool NewState)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the OC4PE Bit */
    if (NewState != 0)
    {
        ((TIM1_TypeDef *) 0x5250)->CCMR4 |= ((uint8_t)0x08);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCMR4 &= (uint8_t)(~((uint8_t)0x08));
    }
}

/**
  * @brief  Configures the TIM1 Capture Compare 1 Fast feature.
  * @param   NewState new state of the Output Compare Fast Enable bit.
  * This parameter can be ENABLE or DISABLE.
  * @retval None
  */
void TIM1_OC1FastConfig(_Bool NewState)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the OC1FE Bit */
    if (NewState != 0)
    {
        ((TIM1_TypeDef *) 0x5250)->CCMR1 |= ((uint8_t)0x04);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCMR1 &= (uint8_t)(~((uint8_t)0x04));
    }
}


/**
  * @brief  Configures the TIM1 Capture Compare 2 Fast feature.
  * @param   NewState new state of the Output Compare Fast Enable bit.
  * This parameter can be ENABLE or DISABLE.
  * @retval None
  */

void TIM1_OC2FastConfig(_Bool NewState)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the OC2FE Bit */
    if (NewState != 0)
    {
        ((TIM1_TypeDef *) 0x5250)->CCMR2 |= ((uint8_t)0x04);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCMR2 &= (uint8_t)(~((uint8_t)0x04));
    }
}


/**
  * @brief  Configures the TIM1 Capture Compare 3 Fast feature.
  * @param   NewState new state of the Output Compare Fast Enable bit.
  * This parameter can be ENABLE or DISABLE.
  * @retval None
  */
void TIM1_OC3FastConfig(_Bool NewState)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the OC3FE Bit */
    if (NewState != 0)
    {
        ((TIM1_TypeDef *) 0x5250)->CCMR3 |= ((uint8_t)0x04);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCMR3 &= (uint8_t)(~((uint8_t)0x04));
    }
}


/**
  * @brief  Configures the TIM1 Capture Compare 4 Fast feature.
  * @param   NewState new state of the Output Compare Fast Enable bit.
  * This parameter can be ENABLE or DISABLE.
  * @retval None
  */
void TIM1_OC4FastConfig(_Bool NewState)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the OC4FE Bit */
    if (NewState != 0)
    {
        ((TIM1_TypeDef *) 0x5250)->CCMR4 |= ((uint8_t)0x04);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCMR4 &= (uint8_t)(~((uint8_t)0x04));
    }
}


/**
  * @brief  Configures the TIM1 event to be generated by software.
  * @param   TIM1_EventSource specifies the event source.
  * This parameter can be one of the following values:
  *                       - TIM1_EVENTSOURCE_UPDATE: TIM1 update Event source
  *                       - TIM1_EVENTSOURCE_CC1: TIM1 Capture Compare 1 Event source
  *                       - TIM1_EVENTSOURCE_CC2: TIM1 Capture Compare 2 Event source
  *                       - TIM1_EVENTSOURCE_CC3: TIM1 Capture Compare 3 Event source
  *                       - TIM1_EVENTSOURCE_CC4: TIM1 Capture Compare 4 Event source
  *                       - TIM1_EVENTSOURCE_COM: TIM1 COM Event source
  *                       - TIM1_EVENTSOURCE_TRIGGER: TIM1 Trigger Event source
  *                       - TIM1_EventSourceBreak: TIM1 Break Event source
  * @retval None
  */
void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
{
    /* Check the parameters */
    ((void)0);

    /* Set the event sources */
    ((TIM1_TypeDef *) 0x5250)->EGR = (uint8_t)TIM1_EventSource;
}


/**
  * @brief  Configures the TIM1 Channel 1 polarity.
  * @param   TIM1_OCPolarity specifies the OC1 Polarity.
  * This parameter can be one of the following values:
  *                       - TIM1_OCPOLARITY_LOW: Output Compare active low
  *                       - TIM1_OCPOLARITY_HIGH: Output Compare active high
  * @retval None
  */
void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the CC1P Bit */
    if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
    {
        ((TIM1_TypeDef *) 0x5250)->CCER1 |= ((uint8_t)0x02);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCER1 &= (uint8_t)(~((uint8_t)0x02));
    }
}


/**
  * @brief  Configures the TIM1 Channel 1N polarity.
  * @param   TIM1_OCNPolarity specifies the OC1N Polarity.
  * This parameter can be one of the following values:
  *                       - TIM1_OCNPOLARITY_LOW: Output Compare active low
  *                       - TIM1_OCNPOLARITY_HIGH: Output Compare active high
  * @retval None
  */
void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the CC3P Bit */
    if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
    {
        ((TIM1_TypeDef *) 0x5250)->CCER1 |= ((uint8_t)0x08);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCER1 &= (uint8_t)(~((uint8_t)0x08));
    }
}


/**
  * @brief  Configures the TIM1 Channel 2 polarity.
  * @param   TIM1_OCPolarity specifies the OC2 Polarity.
  * This parameter can be one of the following values:
  *                       - TIM1_OCPOLARITY_LOW: Output Compare active low
  *                       - TIM1_OCPOLARITY_HIGH: Output Compare active high
  * @retval None
  */
void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the CC2P Bit */
    if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
    {
        ((TIM1_TypeDef *) 0x5250)->CCER1 |= ((uint8_t)0x20);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCER1 &= (uint8_t)(~((uint8_t)0x20));
    }
}

/**
  * @brief  Configures the TIM1 Channel 2N polarity.
  * @param   TIM1_OCNPolarity specifies the OC2N Polarity.
  * This parameter can be one of the following values:
  *                       - TIM1_OCNPOLARITY_LOW: Output Compare active low
  *                       - TIM1_OCNPOLARITY_HIGH: Output Compare active high
  * @retval None
  */
void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the CC3P Bit */
    if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
    {
        ((TIM1_TypeDef *) 0x5250)->CCER1 |= ((uint8_t)0x80);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCER1 &= (uint8_t)(~((uint8_t)0x80));
    }
}


/**
  * @brief  Configures the TIM1 Channel 3 polarity.
  * @param   TIM1_OCPolarity specifies the OC3 Polarity.
  * This parameter can be one of the following values:
  *                       - TIM1_OCPOLARITY_LOW: Output Compare active low
  *                       - TIM1_OCPOLARITY_HIGH: Output Compare active high
  * @retval None
  */
void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the CC3P Bit */
    if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
    {
        ((TIM1_TypeDef *) 0x5250)->CCER2 |= ((uint8_t)0x02);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCER2 &= (uint8_t)(~((uint8_t)0x02));
    }
}


/**
  * @brief  Configures the TIM1 Channel 3N polarity.
  * @param   TIM1_OCNPolarity specifies the OC3N Polarity.
  * This parameter can be one of the following values:
  *                       - TIM1_OCNPOLARITY_LOW: Output Compare active low
  *                       - TIM1_OCNPOLARITY_HIGH: Output Compare active high
  * @retval None
  */
void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the CC3P Bit */
    if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
    {
        ((TIM1_TypeDef *) 0x5250)->CCER2 |= ((uint8_t)0x08);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCER2 &= (uint8_t)(~((uint8_t)0x08));
    }
}

/**
  * @brief  Configures the TIM1 Channel 4 polarity.
  * @param   TIM1_OCPolarity specifies the OC4 Polarity.
  * This parameter can be one of the following values:
  *                       - TIM1_OCPOLARITY_LOW: Output Compare active low
  *                       - TIM1_OCPOLARITY_HIGH: Output Compare active high
  * @retval None
  */
void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
{
    /* Check the parameters */
    ((void)0);

    /* Set or Reset the CC4P Bit */
    if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
    {
        ((TIM1_TypeDef *) 0x5250)->CCER2 |= ((uint8_t)0x20);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCER2 &= (uint8_t)(~((uint8_t)0x20));
    }
}


/**
  * @brief  Enables or disables the TIM1 Capture Compare Channel x (x=1,..,4).
  * @param   TIM1_Channel specifies the TIM1 Channel.
  * This parameter can be one of the following values:
  *                       - TIM1_CHANNEL_1: TIM1 Channel1
  *                       - TIM1_CHANNEL_2: TIM1 Channel2
  *                       - TIM1_CHANNEL_3: TIM1 Channel3
  *                       - TIM1_CHANNEL_4: TIM1 Channel4
  * @param   NewState specifies the TIM1 Channel CCxE bit new state.
  * This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, _Bool NewState)
{
    /* Check the parameters */
    ((void)0);
    ((void)0);

    if (TIM1_Channel == TIM1_CHANNEL_1)
    {
        /* Set or Reset the CC1E Bit */
        if (NewState != 0)
        {
            ((TIM1_TypeDef *) 0x5250)->CCER1 |= ((uint8_t)0x01);
        }
        else
        {
            ((TIM1_TypeDef *) 0x5250)->CCER1 &= (uint8_t)(~((uint8_t)0x01));
        }

    }
    else if (TIM1_Channel == TIM1_CHANNEL_2)
    {
        /* Set or Reset the CC2E Bit */
        if (NewState != 0)
        {
            ((TIM1_TypeDef *) 0x5250)->CCER1 |= ((uint8_t)0x10);
        }
        else
        {
            ((TIM1_TypeDef *) 0x5250)->CCER1 &= (uint8_t)(~((uint8_t)0x10));
        }
    }
    else if (TIM1_Channel == TIM1_CHANNEL_3)
    {
        /* Set or Reset the CC3E Bit */
        if (NewState != 0)
        {
            ((TIM1_TypeDef *) 0x5250)->CCER2 |= ((uint8_t)0x01);
        }
        else
        {
            ((TIM1_TypeDef *) 0x5250)->CCER2 &= (uint8_t)(~((uint8_t)0x01));
        }
    }
    else
    {
        /* Set or Reset the CC4E Bit */
        if (NewState != 0)
        {
            ((TIM1_TypeDef *) 0x5250)->CCER2 |= ((uint8_t)0x10);
        }
        else
        {
            ((TIM1_TypeDef *) 0x5250)->CCER2 &= (uint8_t)(~((uint8_t)0x10));
        }
    }
}

/**
  * @brief  Enables or disables the TIM1 Capture Compare Channel xN (xN=1,..,3).
  * @param   TIM1_Channel specifies the TIM1 Channel.
  * This parameter can be one of the following values:
  *                       - TIM1_CHANNEL_1: TIM1 Channel1
  *                       - TIM1_CHANNEL_2: TIM1 Channel2
  *                       - TIM1_CHANNEL_3: TIM1 Channel3
  * @param   NewState specifies the TIM1 Channel CCxNE bit new state.
  * This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, _Bool NewState)
{
    /* Check the parameters */
    ((void)0);
    ((void)0);

    if (TIM1_Channel == TIM1_CHANNEL_1)
    {
        /* Set or Reset the CC1NE Bit */
        if (NewState != 0)
        {
            ((TIM1_TypeDef *) 0x5250)->CCER1 |= ((uint8_t)0x04);
        }
        else
        {
            ((TIM1_TypeDef *) 0x5250)->CCER1 &= (uint8_t)(~((uint8_t)0x04));
        }
    }
    else if (TIM1_Channel == TIM1_CHANNEL_2)
    {
        /* Set or Reset the CC2NE Bit */
        if (NewState != 0)
        {
            ((TIM1_TypeDef *) 0x5250)->CCER1 |= ((uint8_t)0x40);
        }
        else
        {
            ((TIM1_TypeDef *) 0x5250)->CCER1 &= (uint8_t)(~((uint8_t)0x40));
        }
    }
    else
    {
        /* Set or Reset the CC3NE Bit */
        if (NewState != 0)
        {
            ((TIM1_TypeDef *) 0x5250)->CCER2 |= ((uint8_t)0x04);
        }
        else
        {
            ((TIM1_TypeDef *) 0x5250)->CCER2 &= (uint8_t)(~((uint8_t)0x04));
        }
    }
}


/**
  * @brief  Selects the TIM1 Output Compare Mode. This function disables the
  * selected channel before changing the Output Compare Mode. User has to
  * enable this channel using TIM1_CCxCmd and TIM1_CCxNCmd functions.
  * @param   TIM1_Channel specifies the TIM1 Channel.
  * This parameter can be one of the following values:
  *                       - TIM1_CHANNEL_1: TIM1 Channel1
  *                       - TIM1_CHANNEL_2: TIM1 Channel2
  *                       - TIM1_CHANNEL_3: TIM1 Channel3
  *                       - TIM1_CHANNEL_4: TIM1 Channel4
  * @param   TIM1_OCMode specifies the TIM1 Output Compare Mode.
  * This paramter can be one of the following values:
  *                       - TIM1_OCMODE_TIMING
  *                       - TIM1_OCMODE_ACTIVE
  *                       - TIM1_OCMODE_TOGGLE
  *                       - TIM1_OCMODE_PWM1
  *                       - TIM1_OCMODE_PWM2
  *                       - TIM1_FORCEDACTION_ACTIVE
  *                       - TIM1_FORCEDACTION_INACTIVE
  * @retval None
  */
void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
{
    /* Check the parameters */
    ((void)0);
    ((void)0);

    if (TIM1_Channel == TIM1_CHANNEL_1)
    {
        /* Disable the Channel 1: Reset the CCE Bit */
        ((TIM1_TypeDef *) 0x5250)->CCER1 &= (uint8_t)(~((uint8_t)0x01));

        /* Reset the Output Compare Bits & Set the Output Compare Mode */
        ((TIM1_TypeDef *) 0x5250)->CCMR1 = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR1 & (uint8_t)(~((uint8_t)0x70))) 
                                | (uint8_t)TIM1_OCMode);
    }
    else if (TIM1_Channel == TIM1_CHANNEL_2)
    {
        /* Disable the Channel 2: Reset the CCE Bit */
        ((TIM1_TypeDef *) 0x5250)->CCER1 &= (uint8_t)(~((uint8_t)0x10));

        /* Reset the Output Compare Bits & Set the Output Compare Mode */
        ((TIM1_TypeDef *) 0x5250)->CCMR2 = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR2 & (uint8_t)(~((uint8_t)0x70)))
                                | (uint8_t)TIM1_OCMode);
    }
    else if (TIM1_Channel == TIM1_CHANNEL_3)
    {
        /* Disable the Channel 3: Reset the CCE Bit */
        ((TIM1_TypeDef *) 0x5250)->CCER2 &= (uint8_t)(~((uint8_t)0x01));

        /* Reset the Output Compare Bits & Set the Output Compare Mode */
        ((TIM1_TypeDef *) 0x5250)->CCMR3 = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR3 & (uint8_t)(~((uint8_t)0x70))) 
                                | (uint8_t)TIM1_OCMode);
    }
    else
    {
        /* Disable the Channel 4: Reset the CCE Bit */
        ((TIM1_TypeDef *) 0x5250)->CCER2 &= (uint8_t)(~((uint8_t)0x10));

        /* Reset the Output Compare Bits & Set the Output Compare Mode */
        ((TIM1_TypeDef *) 0x5250)->CCMR4 = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR4 & (uint8_t)(~((uint8_t)0x70))) 
                                | (uint8_t)TIM1_OCMode);
    }
}


/**
  * @brief  Sets the TIM1 Counter Register value.
  * @param   Counter specifies the Counter register new value.
  * This parameter is between 0x0000 and 0xFFFF.
  * @retval None
  */
void TIM1_SetCounter(uint16_t Counter)
{
    /* Set the Counter Register value */
    ((TIM1_TypeDef *) 0x5250)->CNTRH = (uint8_t)(Counter >> 8);
    ((TIM1_TypeDef *) 0x5250)->CNTRL = (uint8_t)(Counter);

}


/**
  * @brief  Sets the TIM1 Autoreload Register value.
  * @param   Autoreload specifies the Autoreload register new value.
  * This parameter is between 0x0000 and 0xFFFF.
  * @retval None
  */
void TIM1_SetAutoreload(uint16_t Autoreload)
{

    /* Set the Autoreload Register value */
    ((TIM1_TypeDef *) 0x5250)->ARRH = (uint8_t)(Autoreload >> 8);
    ((TIM1_TypeDef *) 0x5250)->ARRL = (uint8_t)(Autoreload);

}


/**
  * @brief  Sets the TIM1 Capture Compare1 Register value.
  * @param   Compare1 specifies the Capture Compare1 register new value.
  * This parameter is between 0x0000 and 0xFFFF.
  * @retval None
  */
void TIM1_SetCompare1(uint16_t Compare1)
{
    /* Set the Capture Compare1 Register value */
    ((TIM1_TypeDef *) 0x5250)->CCR1H = (uint8_t)(Compare1 >> 8);
    ((TIM1_TypeDef *) 0x5250)->CCR1L = (uint8_t)(Compare1);

}


/**
  * @brief  Sets the TIM1 Capture Compare2 Register value.
  * @param   Compare2 specifies the Capture Compare2 register new value.
  * This parameter is between 0x0000 and 0xFFFF.
  * @retval None
  */
void TIM1_SetCompare2(uint16_t Compare2)
{
    /* Set the Capture Compare2 Register value */
    ((TIM1_TypeDef *) 0x5250)->CCR2H = (uint8_t)(Compare2 >> 8);
    ((TIM1_TypeDef *) 0x5250)->CCR2L = (uint8_t)(Compare2);

}


/**
  * @brief  Sets the TIM1 Capture Compare3 Register value.
  * @param   Compare3 specifies the Capture Compare3 register new value.
  * This parameter is between 0x0000 and 0xFFFF.
  * @retval None
  */
void TIM1_SetCompare3(uint16_t Compare3)
{
    /* Set the Capture Compare3 Register value */
    ((TIM1_TypeDef *) 0x5250)->CCR3H = (uint8_t)(Compare3 >> 8);
    ((TIM1_TypeDef *) 0x5250)->CCR3L = (uint8_t)(Compare3);

}


/**
  * @brief  Sets the TIM1 Capture Compare4 Register value.
  * @param   Compare4 specifies the Capture Compare4 register new value.
  * This parameter is between 0x0000 and 0xFFFF.
  * @retval None
  */
void TIM1_SetCompare4(uint16_t Compare4)
{
    /* Set the Capture Compare4 Register value */
    ((TIM1_TypeDef *) 0x5250)->CCR4H = (uint8_t)(Compare4 >> 8);
    ((TIM1_TypeDef *) 0x5250)->CCR4L = (uint8_t)(Compare4);
}


/**
  * @brief  Sets the TIM1 Input Capture 1 prescaler.
  * @param   TIM1_IC1Prescaler specifies the Input Capture prescaler new value
  * This parameter can be one of the following values:
  *                       - TIM1_ICPSC_DIV1: no prescaler
  *                       - TIM1_ICPSC_DIV2: capture is done once every 2 events
  *                       - TIM1_ICPSC_DIV4: capture is done once every 4 events
  *                       - TIM1_ICPSC_DIV8: capture is done once every 8 events
  * @retval None
  */
void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
{
    /* Check the parameters */
    ((void)0);

    /* Reset the IC1PSC Bits */ /* Set the IC1PSC value */
    ((TIM1_TypeDef *) 0x5250)->CCMR1 = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR1 & (uint8_t)(~((uint8_t)0x0C))) 
                            | (uint8_t)TIM1_IC1Prescaler);

}

/**
  * @brief  Sets the TIM1 Input Capture 2 prescaler.
  * @param   TIM1_IC2Prescaler specifies the Input Capture prescaler new value
  * This parameter can be one of the following values:
  *                       - TIM1_ICPSC_DIV1: no prescaler
  *                       - TIM1_ICPSC_DIV2: capture is done once every 2 events
  *                       - TIM1_ICPSC_DIV4: capture is done once every 4 events
  *                       - TIM1_ICPSC_DIV8: capture is done once every 8 events
  * @retval None
  */
void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
{

    /* Check the parameters */
    ((void)0);

    /* Reset the IC1PSC Bits */ /* Set the IC1PSC value */
    ((TIM1_TypeDef *) 0x5250)->CCMR2 = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR2 & (uint8_t)(~((uint8_t)0x0C)))
                            | (uint8_t)TIM1_IC2Prescaler);
}


/**
  * @brief  Sets the TIM1 Input Capture 3 prescaler.
  * @param   TIM1_IC3Prescaler specifies the Input Capture prescaler new value
  * This parameter can be one of the following values:
  *                       - TIM1_ICPSC_DIV1: no prescaler
  *                       - TIM1_ICPSC_DIV2: capture is done once every 2 events
  *                       - TIM1_ICPSC_DIV4: capture is done once every 4 events
  *                       - TIM1_ICPSC_DIV8: capture is done once every 8 events
  * @retval None
  */
void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
{

    /* Check the parameters */
    ((void)0);

    /* Reset the IC1PSC Bits & Set the IC1PSC value */
    ((TIM1_TypeDef *) 0x5250)->CCMR3 = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR3 & (uint8_t)(~((uint8_t)0x0C))) | 
                            (uint8_t)TIM1_IC3Prescaler);
}

/**
  * @brief  Sets the TIM1 Input Capture 4 prescaler.
  * @param  TIM1_IC4Prescaler specifies the Input Capture prescaler new value
  *         This parameter can be one of the following values:
  *                       - TIM1_ICPSC_DIV1: no prescaler
  *                       - TIM1_ICPSC_DIV2: capture is done once every 2 events
  *                       - TIM1_ICPSC_DIV4: capture is done once every 4 events
  *                       - TIM1_ICPSC_DIV8: capture is done once every 8 events
  * @retval None
  */
void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
{

    /* Check the parameters */
    ((void)0);

    /* Reset the IC1PSC Bits &  Set the IC1PSC value */
    ((TIM1_TypeDef *) 0x5250)->CCMR4 = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR4 & (uint8_t)(~((uint8_t)0x0C))) |
                            (uint8_t)TIM1_IC4Prescaler);
}

/**
  * @brief  Gets the TIM1 Input Capture 1 value.
  * @param  None
  * @retval Capture Compare 1 Register value.
  */
uint16_t TIM1_GetCapture1(void)
{
    /* Get the Capture 1 Register value */

    uint16_t tmpccr1 = 0;
    uint8_t tmpccr1l=0, tmpccr1h=0;

    tmpccr1h = ((TIM1_TypeDef *) 0x5250)->CCR1H;
    tmpccr1l = ((TIM1_TypeDef *) 0x5250)->CCR1L;

    tmpccr1 = (uint16_t)(tmpccr1l);
    tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
    /* Get the Capture 1 Register value */
    return (uint16_t)tmpccr1;
}

/**
  * @brief  Gets the TIM1 Input Capture 2 value.
  * @param  None
  * @retval Capture Compare 2 Register value.
  */
uint16_t TIM1_GetCapture2(void)
{
    /* Get the Capture 2 Register value */

    uint16_t tmpccr2 = 0;
    uint8_t tmpccr2l=0, tmpccr2h=0;

    tmpccr2h = ((TIM1_TypeDef *) 0x5250)->CCR2H;
    tmpccr2l = ((TIM1_TypeDef *) 0x5250)->CCR2L;

    tmpccr2 = (uint16_t)(tmpccr2l);
    tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
    /* Get the Capture 2 Register value */
    return (uint16_t)tmpccr2;
}

/**
  * @brief  Gets the TIM1 Input Capture 3 value.
  * @param  None
  * @retval Capture Compare 3 Register value.
  */
uint16_t TIM1_GetCapture3(void)
{
    /* Get the Capture 3 Register value */
    uint16_t tmpccr3 = 0;
    uint8_t tmpccr3l=0, tmpccr3h=0;

    tmpccr3h = ((TIM1_TypeDef *) 0x5250)->CCR3H;
    tmpccr3l = ((TIM1_TypeDef *) 0x5250)->CCR3L;

    tmpccr3 = (uint16_t)(tmpccr3l);
    tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
    /* Get the Capture 3 Register value */
    return (uint16_t)tmpccr3;
}

/**
  * @brief  Gets the TIM1 Input Capture 4 value.
  * @param  None
  * @retval Capture Compare 4 Register value.
  */
uint16_t TIM1_GetCapture4(void)
{
    /* Get the Capture 4 Register value */
    uint16_t tmpccr4 = 0;
    uint8_t tmpccr4l=0, tmpccr4h=0;

    tmpccr4h = ((TIM1_TypeDef *) 0x5250)->CCR4H;
    tmpccr4l = ((TIM1_TypeDef *) 0x5250)->CCR4L;

    tmpccr4 = (uint16_t)(tmpccr4l);
    tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
    /* Get the Capture 4 Register value */
    return (uint16_t)tmpccr4;
}

/**
  * @brief  Gets the TIM1 Counter value.
  * @param  None
  * @retval Counter Register value.
  */
uint16_t TIM1_GetCounter(void)
{
  uint16_t tmpcntr = 0;
  
  tmpcntr = ((uint16_t)((TIM1_TypeDef *) 0x5250)->CNTRH << 8);
   
  /* Get the Counter Register value */
    return (uint16_t)(tmpcntr | (uint16_t)(((TIM1_TypeDef *) 0x5250)->CNTRL));
}

/**
  * @brief  Gets the TIM1 Prescaler value.
  * @param  None
  * @retval Prescaler Register value.
  */
uint16_t TIM1_GetPrescaler(void)
{
   uint16_t temp = 0;
   
   temp = ((uint16_t)((TIM1_TypeDef *) 0x5250)->PSCRH << 8);
   
  /* Get the Prescaler Register value */
    return (uint16_t)( temp | (uint16_t)(((TIM1_TypeDef *) 0x5250)->PSCRL));
}

/**
  * @brief  Checks whether the specified TIM1 flag is set or not.
  * @param  TIM1_FLAG specifies the flag to check.
  *         This parameter can be one of the following values:
  *                   - TIM1_FLAG_UPDATE: TIM1 update Flag
  *                   - TIM1_FLAG_CC1: TIM1 Capture Compare 1 Flag
  *                   - TIM1_FLAG_CC2: TIM1 Capture Compare 2 Flag
  *                   - TIM1_FLAG_CC3: TIM1 Capture Compare 3 Flag
  *                   - TIM1_FLAG_CC4: TIM1 Capture Compare 4 Flag
  *                   - TIM1_FLAG_COM: TIM1 Commutation Flag
  *                   - TIM1_FLAG_TRIGGER: TIM1 Trigger Flag
  *                   - TIM1_FLAG_BREAK: TIM1 Break Flag
  *                   - TIM1_FLAG_CC1OF: TIM1 Capture Compare 1 overcapture Flag
  *                   - TIM1_FLAG_CC2OF: TIM1 Capture Compare 2 overcapture Flag
  *                   - TIM1_FLAG_CC3OF: TIM1 Capture Compare 3 overcapture Flag
  *                   - TIM1_FLAG_CC4OF: TIM1 Capture Compare 4 overcapture Flag
  * @retval FlagStatus The new state of TIM1_FLAG (SET or RESET).
  */
_Bool TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
{
    _Bool bitstatus = 0;
    uint8_t tim1_flag_l = 0, tim1_flag_h = 0;

    /* Check the parameters */
    ((void)0);

    tim1_flag_l = (uint8_t)(((TIM1_TypeDef *) 0x5250)->SR1 & (uint8_t)TIM1_FLAG);
    tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);

    if ((tim1_flag_l | (uint8_t)(((TIM1_TypeDef *) 0x5250)->SR2 & tim1_flag_h)) != 0)
    {
        bitstatus = 1;
    }
    else
    {
        bitstatus = 0;
    }
    return (_Bool)(bitstatus);
}

/**
  * @brief  Clears the TIM1’s pending flags.
  * @param  TIM1_FLAG specifies the flag to clear.
  *         This parameter can be one of the following values:
  *                       - TIM1_FLAG_UPDATE: TIM1 update Flag
  *                       - TIM1_FLAG_CC1: TIM1 Capture Compare 1 Flag
  *                       - TIM1_FLAG_CC2: TIM1 Capture Compare 2 Flag
  *                       - TIM1_FLAG_CC3: TIM1 Capture Compare 3 Flag
  *                       - TIM1_FLAG_CC4: TIM1 Capture Compare 4 Flag
  *                       - TIM1_FLAG_COM: TIM1 Commutation Flag
  *                       - TIM1_FLAG_TRIGGER: TIM1 Trigger Flag
  *                       - TIM1_FLAG_BREAK: TIM1 Break Flag
  *                       - TIM1_FLAG_CC1OF: TIM1 Capture Compare 1 overcapture Flag
  *                       - TIM1_FLAG_CC2OF: TIM1 Capture Compare 2 overcapture Flag
  *                       - TIM1_FLAG_CC3OF: TIM1 Capture Compare 3 overcapture Flag
  *                       - TIM1_FLAG_CC4OF: TIM1 Capture Compare 4 overcapture Flag
  * @retval None.
  */
void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
{
    /* Check the parameters */
    ((void)0);

    /* Clear the flags (rc_w0) clear this bit by writing 0. Writing ‘1’ has no effect*/
    ((TIM1_TypeDef *) 0x5250)->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
    ((TIM1_TypeDef *) 0x5250)->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
                          (uint8_t)0x1E);
}

/**
  * @brief  Checks whether the TIM1 interrupt has occurred or not.
  * @param  TIM1_IT specifies the TIM1 interrupt source to check.
  *         This parameter can be one of the following values:
  *                       - TIM1_IT_UPDATE: TIM1 update Interrupt source
  *                       - TIM1_IT_CC1: TIM1 Capture Compare 1 Interrupt source
  *                       - TIM1_IT_CC2: TIM1 Capture Compare 2 Interrupt source
  *                       - TIM1_IT_CC3: TIM1 Capture Compare 3 Interrupt source
  *                       - TIM1_IT_CC4: TIM1 Capture Compare 4 Interrupt source
  *                       - TIM1_IT_COM: TIM1 Commutation Interrupt source
  *                       - TIM1_IT_TRIGGER: TIM1 Trigger Interrupt source
  *                       - TIM1_IT_BREAK: TIM1 Break Interrupt source
  * @retval ITStatus The new state of the TIM1_IT(SET or RESET).
  */
_Bool TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
{
    _Bool bitstatus = 0;
    uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;

    /* Check the parameters */
    ((void)0);

    TIM1_itStatus = (uint8_t)(((TIM1_TypeDef *) 0x5250)->SR1 & (uint8_t)TIM1_IT);

    TIM1_itEnable = (uint8_t)(((TIM1_TypeDef *) 0x5250)->IER & (uint8_t)TIM1_IT);

    if ((TIM1_itStatus != (uint8_t)0 ) && (TIM1_itEnable != (uint8_t)0 ))
    {
        bitstatus = 1;
    }
    else
    {
        bitstatus = 0;
    }
    return (_Bool)(bitstatus);
}

/**
  * @brief  Clears the TIM1's interrupt pending bits.
  * @param  TIM1_IT specifies the pending bit to clear.
  *         This parameter can be one of the following values:
  *                       - TIM1_IT_UPDATE: TIM1 update Interrupt source
  *                       - TIM1_IT_CC1: TIM1 Capture Compare 1 Interrupt source
  *                       - TIM1_IT_CC2: TIM1 Capture Compare 2 Interrupt source
  *                       - TIM1_IT_CC3: TIM1 Capture Compare 3 Interrupt source
  *                       - TIM1_IT_CC4: TIM1 Capture Compare 4 Interrupt source
  *                       - TIM1_IT_COM: TIM1 Commutation Interrupt source
  *                       - TIM1_IT_TRIGGER: TIM1 Trigger Interrupt source
  *                       - TIM1_IT_BREAK: TIM1 Break Interrupt source
  * @retval None.
  */
void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
{
    /* Check the parameters */
    ((void)0);

    /* Clear the IT pending Bit */
    ((TIM1_TypeDef *) 0x5250)->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
}

/**
  * @brief  Configure the TI1 as Input.
  * @param  TIM1_ICPolarity  The Input Polarity.
  *         This parameter can be one of the following values:
  *                       - TIM1_ICPOLARITY_FALLING
  *                       - TIM1_ICPOLARITY_RISING
  * @param  TIM1_ICSelection specifies the input to be used.
  *         This parameter can be one of the following values:
  *                       - TIM1_ICSELECTION_DIRECTTI: TIM1 Input 1 is selected to
  *                         be connected to IC1.
  *                       - TIM1_ICSELECTION_INDIRECTTI: TIM1 Input 1 is selected to
  *                         be connected to IC2.
  * @param  TIM1_ICFilter Specifies the Input Capture Filter.
  *         This parameter must be a value between 0x00 and 0x0F.
  * @retval None
  */
static void TI1_Config(uint8_t TIM1_ICPolarity,
                       uint8_t TIM1_ICSelection,
                       uint8_t TIM1_ICFilter)
{

    /* Disable the Channel 1: Reset the CCE Bit */
    ((TIM1_TypeDef *) 0x5250)->CCER1 &= (uint8_t)(~((uint8_t)0x01));

    /* Select the Input and set the filter */
    ((TIM1_TypeDef *) 0x5250)->CCMR1 = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR1 & (uint8_t)(~(uint8_t)( ((uint8_t)0x03) | ((uint8_t)0xF0) ))) | 
                            (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));

    /* Select the Polarity */
    if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
    {
        ((TIM1_TypeDef *) 0x5250)->CCER1 |= ((uint8_t)0x02);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCER1 &= (uint8_t)(~((uint8_t)0x02));
    }

    /* Set the CCE Bit */
    ((TIM1_TypeDef *) 0x5250)->CCER1 |=  ((uint8_t)0x01);
}

/**
  * @brief  Configure the TI2 as Input.
  * @param  TIM1_ICPolarity  The Input Polarity.
  *         This parameter can be one of the following values:
  *                       - TIM1_ICPOLARITY_FALLING
  *                       - TIM1_ICPOLARITY_RISING
  * @param  TIM1_ICSelection specifies the input to be used.
  *         This parameter can be one of the following values:
  *                       - TIM1_ICSELECTION_DIRECTTI: TIM1 Input 2 is selected to
  *                         be connected to IC2.
  *                       - TIM1_ICSELECTION_INDIRECTTI: TIM1 Input 2 is selected to
  *                         be connected to IC1.
  * @param  TIM1_ICFilter Specifies the Input Capture Filter.
  *         This parameter must be a value between 0x00 and 0x0F.
  * @retval None
  */
static void TI2_Config(uint8_t TIM1_ICPolarity,
                       uint8_t TIM1_ICSelection,
                       uint8_t TIM1_ICFilter)
{
    /* Disable the Channel 2: Reset the CCE Bit */
    ((TIM1_TypeDef *) 0x5250)->CCER1 &=  (uint8_t)(~((uint8_t)0x10));

    /* Select the Input and set the filter */
    ((TIM1_TypeDef *) 0x5250)->CCMR2  = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR2 & (uint8_t)(~(uint8_t)( ((uint8_t)0x03) | ((uint8_t)0xF0) ))) 
                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
    /* Select the Polarity */
    if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
    {
        ((TIM1_TypeDef *) 0x5250)->CCER1 |= ((uint8_t)0x20);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCER1 &= (uint8_t)(~((uint8_t)0x20));
    }
    /* Set the CCE Bit */
    ((TIM1_TypeDef *) 0x5250)->CCER1 |=  ((uint8_t)0x10);
}

/**
  * @brief  Configure the TI3 as Input.
  * @param  TIM1_ICPolarity  The Input Polarity.
  *         This parameter can be one of the following values:
  *                       - TIM1_ICPOLARITY_FALLING
  *                       - TIM1_ICPOLARITY_RISING
  * @param  TIM1_ICSelection specifies the input to be used.
  *         This parameter can be one of the following values:
  *                       - TIM1_ICSELECTION_DIRECTTI: TIM1 Input 3 is selected to
  *                         be connected to IC3.
  *                       - TIM1_ICSELECTION_INDIRECTTI: TIM1 Input 3 is selected to
  *                         be connected to IC4.
  * @param  TIM1_ICFilter Specifies the Input Capture Filter.
  *         This parameter must be a value between 0x00 and 0x0F.
  * @retval None
  */
static void TI3_Config(uint8_t TIM1_ICPolarity,
                       uint8_t TIM1_ICSelection,
                       uint8_t TIM1_ICFilter)
{
    /* Disable the Channel 3: Reset the CCE Bit */
    ((TIM1_TypeDef *) 0x5250)->CCER2 &=  (uint8_t)(~((uint8_t)0x01));

    /* Select the Input and set the filter */
    ((TIM1_TypeDef *) 0x5250)->CCMR3 = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR3 & (uint8_t)(~(uint8_t)( ((uint8_t)0x03) | ((uint8_t)0xF0)))) 
                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));

    /* Select the Polarity */
    if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
    {
        ((TIM1_TypeDef *) 0x5250)->CCER2 |= ((uint8_t)0x02);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCER2 &= (uint8_t)(~((uint8_t)0x02));
    }
    /* Set the CCE Bit */
    ((TIM1_TypeDef *) 0x5250)->CCER2 |=  ((uint8_t)0x01);
}


/**
  * @brief  Configure the TI4 as Input.
  * @param  TIM1_ICPolarity  The Input Polarity.
  *         This parameter can be one of the following values:
  *                       - TIM1_ICPOLARITY_FALLING
  *                       - TIM1_ICPOLARITY_RISING
  * @param  TIM1_ICSelection specifies the input to be used.
  *         This parameter can be one of the following values:
  *                       - TIM1_ICSELECTION_DIRECTTI: TIM1 Input 4 is selected to
  *                         be connected to IC4.
  *                       - TIM1_ICSELECTION_INDIRECTTI: TIM1 Input 4 is selected to
  *                         be connected to IC3.
  * @param  TIM1_ICFilter Specifies the Input Capture Filter.
  *         This parameter must be a value between 0x00 and 0x0F.
  * @retval None
  */
static void TI4_Config(uint8_t TIM1_ICPolarity,
                       uint8_t TIM1_ICSelection,
                       uint8_t TIM1_ICFilter)
{

    /* Disable the Channel 4: Reset the CCE Bit */
    ((TIM1_TypeDef *) 0x5250)->CCER2 &=  (uint8_t)(~((uint8_t)0x10));

    /* Select the Input and set the filter */
    ((TIM1_TypeDef *) 0x5250)->CCMR4 = (uint8_t)((uint8_t)(((TIM1_TypeDef *) 0x5250)->CCMR4 & (uint8_t)(~(uint8_t)( ((uint8_t)0x03) | ((uint8_t)0xF0) )))
                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));

    /* Select the Polarity */
    if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
    {
        ((TIM1_TypeDef *) 0x5250)->CCER2 |= ((uint8_t)0x20);
    }
    else
    {
        ((TIM1_TypeDef *) 0x5250)->CCER2 &= (uint8_t)(~((uint8_t)0x20));
    }

    /* Set the CCE Bit */
    ((TIM1_TypeDef *) 0x5250)->CCER2 |=  ((uint8_t)0x10);
}


/**
  * @}
  */
  
/**
  * @}
  */
  
/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
