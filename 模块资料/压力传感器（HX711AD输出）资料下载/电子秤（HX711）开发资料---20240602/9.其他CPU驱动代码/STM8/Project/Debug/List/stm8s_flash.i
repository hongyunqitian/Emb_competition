#line 1 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\src\\stm8s_flash.c"
/**
  ******************************************************************************
  * @file    stm8s_flash.c
  * @author  MCD Application Team
  * @version V2.0.0
  * @date    25-February-2011
  * @brief   This file contains all the functions for the FLASH peripheral.
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
#line 1 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_flash.h"
/**
  ******************************************************************************
  * @file    stm8s_flash.h
  * @author  MCD Application Team
  * @version V2.0.0
  * @date    25-February-2011
  * @brief   This file contains all functions prototype and macros for the FLASH peripheral.
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
#line 28 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_flash.h"

/* Exported constants --------------------------------------------------------*/

/** @addtogroup FLASH_Exported_Constants
  * @{
  */



#line 45 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_flash.h"

#line 54 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_flash.h"

#line 63 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_flash.h"








/**
  * @}
  */

/* Exported types ------------------------------------------------------------*/

/** @addtogroup FLASH_Exported_Types
  * @{
  */

/**
  * @brief  FLASH Memory types
  */
typedef enum {
    FLASH_MEMTYPE_PROG      = (uint8_t)0xFD, /*!< Program memory */
    FLASH_MEMTYPE_DATA      = (uint8_t)0xF7  /*!< Data EEPROM memory */
} FLASH_MemType_TypeDef;

/**
  * @brief  FLASH programming modes
  */
typedef enum {
    FLASH_PROGRAMMODE_STANDARD = (uint8_t)0x00, /*!< Standard programming mode */
    FLASH_PROGRAMMODE_FAST     = (uint8_t)0x10  /*!< Fast programming mode */
} FLASH_ProgramMode_TypeDef;

/**
  * @brief  FLASH fixed programming time
  */
typedef enum {
    FLASH_PROGRAMTIME_STANDARD = (uint8_t)0x00, /*!< Standard programming time fixed at 1/2 tprog */
    FLASH_PROGRAMTIME_TPROG    = (uint8_t)0x01  /*!< Programming time fixed at tprog */
} FLASH_ProgramTime_TypeDef;

/**
  * @brief  FLASH Low Power mode select
  */
typedef enum {
    FLASH_LPMODE_POWERDOWN         = (uint8_t)0x04, /*!< HALT: Power-Down / ACTIVE-HALT: Power-Down */
    FLASH_LPMODE_STANDBY           = (uint8_t)0x08, /*!< HALT: Standby    / ACTIVE-HALT: Standby */
    FLASH_LPMODE_POWERDOWN_STANDBY = (uint8_t)0x00, /*!< HALT: Power-Down / ACTIVE-HALT: Standby */
    FLASH_LPMODE_STANDBY_POWERDOWN = (uint8_t)0x0C  /*!< HALT: Standby    / ACTIVE-HALT: Power-Down */
}
FLASH_LPMode_TypeDef;

/**
  * @brief  FLASH status of the last operation
  */
typedef enum {


		FLASH_STATUS_END_HIGH_VOLTAGE           = (uint8_t)0x40, /*!< End of high voltage */

		FLASH_STATUS_SUCCESSFUL_OPERATION       = (uint8_t)0x04, /*!< End of operation flag */
		FLASH_STATUS_TIMEOUT = (uint8_t)0x02, /*!< Time out error */
    FLASH_STATUS_WRITE_PROTECTION_ERROR     = (uint8_t)0x01 /*!< Write attempted to protected page */
} FLASH_Status_TypeDef;

/**
  * @brief  FLASH flags definition
 * - Warning : FLAG value = mapping position register
  */
typedef enum {


    FLASH_FLAG_HVOFF     = (uint8_t)0x40,     /*!< End of high voltage flag */

    FLASH_FLAG_DUL       = (uint8_t)0x08,     /*!< Data EEPROM unlocked flag */
    FLASH_FLAG_EOP       = (uint8_t)0x04,     /*!< End of programming (write or erase operation) flag */
    FLASH_FLAG_PUL       = (uint8_t)0x02,     /*!< Flash Program memory unlocked flag */
    FLASH_FLAG_WR_PG_DIS = (uint8_t)0x01      /*!< Write attempted to protected page flag */
} FLASH_Flag_TypeDef;

/**
  * @}
  */

/* Private macros ------------------------------------------------------------*/

/**
  * @brief  Macros used by the assert function in order to check the different functions parameters.
  * @addtogroup FLASH_Private_Macros
  * @{
  */

/**
  * @brief  Macro used by the assert function in order to check the different sensitivity values for the flash program Address
  */




/**
  * @brief  Macro used by the assert function in order to check the different sensitivity values for the data eeprom Address
  */




/**
  * @brief  Macro used by the assert function in order to check the different sensitivity values for the data eeprom and flash program Address
  */



/**
  * @brief  Macro used by the assert function in order to check the different sensitivity values for the flash program Block number
  */


/**
  * @brief  Macro used by the assert function in order to check the different sensitivity values for the data eeprom Block number
  */


/**
  * @brief  Macro used by the assert function in order to check the different sensitivity values for the flash memory type
  */




/**
  * @brief  Macro used by the assert function in order to check the different sensitivity values for the flash program mode
  */




/**
  * @brief  Macro used by the assert function in order to check the program time mode
  */




/**
  * @brief  Macro used by the assert function in order to check the different 
  *         sensitivity values for the low power mode
  */






/**
  * @brief  Macro used by the assert function in order to check the different 
  *         sensitivity values for the option bytes Address
  */




/**
  * @brief  Macro used by the assert function in order to check the different flags values
  */
#line 241 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_flash.h"
/**
  * @}
  */

/* Exported functions ------------------------------------------------------- */

/** @addtogroup FLASH_Exported_Functions
  * @{
  */
void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType);
void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType);
void FLASH_DeInit(void);
void FLASH_ITConfig(_Bool NewState);
void FLASH_EraseByte(uint32_t Address);
void FLASH_ProgramByte(uint32_t Address, uint8_t Data);
uint8_t FLASH_ReadByte(uint32_t Address);
void FLASH_ProgramWord(uint32_t Address, uint32_t Data);
uint16_t FLASH_ReadOptionByte(uint16_t Address);
void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data);
void FLASH_EraseOptionByte(uint16_t Address);
void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode);
void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime);
FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void);
FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void);
uint32_t FLASH_GetBootSize(void);
_Bool FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG);

/**
@code
 All the functions declared below must be executed from RAM exclusively, except 
 for the FLASH_WaitForLastOperation function which can be executed from Flash.
 
 Steps of the execution from RAM differs from one toolchain to another.
 for more details refer to stm8s_flash.c file.
 
 To enable execution from RAM you can either uncomment the following define 
 in the stm8s.h file or define it in your toolchain compiler preprocessor
 - #define RAM_EXECUTION  (1) 

@endcode
*/
void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType);

void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer);
FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType);

/**
  * @}
  */



/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
#line 24 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\src\\stm8s_flash.c"

/** @addtogroup STM8S_StdPeriph_Driver
  * @{
  */
/**
@code
 This driver provides functions to configure and program the Flash memory of all
 STM8S devices.

 It includes as well functions that can be either executed from RAM or not, and
 other functions that must be executed from RAM otherwise useless.

 The table below lists the functions that can be executed from RAM.

 +--------------------------------------------------------------------------------|
 |   Functions prototypes      |    RAM execution            |     Comments       |
 ---------------------------------------------------------------------------------|
 |                             | Mandatory in case of block  | Can be executed    |
 | FLASH_WaitForLastOperation  | Operation:                  | from Flash in case |
 |                             | - Block programming         | of byte and word   |
 |                             | - Block erase               | Operations         |
 |--------------------------------------------------------------------------------|
 | FLASH_ProgramBlock          |       Exclusively           | useless from Flash |
 |--------------------------------------------------------------------------------|
 | FLASH_EraseBlock            |       Exclusively           | useless from Flash |
 |--------------------------------------------------------------------------------|

 To be able to execute functions from RAM several steps have to be followed.
 These steps may differ from one toolchain to another.
 A detailed description is available below within this driver.
 You can also refer to the FLASH examples provided within the
 STM8S_StdPeriph_Lib package.

@endcode
*/


/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/



/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private Constants ---------------------------------------------------------*/

/** @addtogroup FLASH_Public_functions
  * @{
  */

/**
  * @brief   Unlocks the program or data EEPROM memory
  * @param  FLASH_MemType : Memory type to unlock
  *         This parameter can be a value of @ref FLASH_MemType_TypeDef
  * @retval None
  */
void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
{
    /* Check parameter */
    ((void)0);

    /* Unlock program memory */
    if (FLASH_MemType == FLASH_MEMTYPE_PROG)
    {
        ((FLASH_TypeDef *) 0x505A)->PUKR = ((uint8_t)0x56);
        ((FLASH_TypeDef *) 0x505A)->PUKR = ((uint8_t)0xAE);
    }
    /* Unlock data memory */
    else
    {
        ((FLASH_TypeDef *) 0x505A)->DUKR = ((uint8_t)0xAE); /* Warning: keys are reversed on data memory !!! */
        ((FLASH_TypeDef *) 0x505A)->DUKR = ((uint8_t)0x56);
    }
}

/**
  * @brief   Locks the program or data EEPROM memory
  * @param  FLASH_MemType : Memory type
  *         This parameter can be a value of @ref FLASH_MemType_TypeDef
  * @retval None
  */
void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
{
    /* Check parameter */
    ((void)0);

  /* Lock memory */
  ((FLASH_TypeDef *) 0x505A)->IAPSR &= (uint8_t)FLASH_MemType;
}

/**
  * @brief   Deinitializes the FLASH registers to their default reset values.
  * @param  None
  * @retval None
  */
void FLASH_DeInit(void)
{
    ((FLASH_TypeDef *) 0x505A)->CR1 = ((uint8_t)0x00);
    ((FLASH_TypeDef *) 0x505A)->CR2 = ((uint8_t)0x00);
    ((FLASH_TypeDef *) 0x505A)->NCR2 = ((uint8_t)0xFF);
    ((FLASH_TypeDef *) 0x505A)->IAPSR &= (uint8_t)(~((uint8_t)0x08));
    ((FLASH_TypeDef *) 0x505A)->IAPSR &= (uint8_t)(~((uint8_t)0x02));
    (void) ((FLASH_TypeDef *) 0x505A)->IAPSR; /* Reading of this register causes the clearing of status flags */
}

/**
  * @brief   Enables or Disables the Flash interrupt mode
  * @param  NewState : The new state of the flash interrupt mode
  *         This parameter can be a value of @ref FunctionalState enumeration.
  * @retval None
  */
void FLASH_ITConfig(_Bool NewState)
{
      /* Check parameter */
  ((void)0);
  
    if (NewState != 0)
    {
        ((FLASH_TypeDef *) 0x505A)->CR1 |= ((uint8_t)0x02); /* Enables the interrupt sources */
    }
    else
    {
        ((FLASH_TypeDef *) 0x505A)->CR1 &= (uint8_t)(~((uint8_t)0x02)); /* Disables the interrupt sources */
    }
}

/**
  * @brief   Erases one byte in the program or data EEPROM memory
  * @note   PointerAttr define is declared in the stm8s.h file to select if 
  *         the pointer will be declared as near (2 bytes) or far (3 bytes).
  * @param  Address : Address of the byte to erase
  * @retval None
  */
void FLASH_EraseByte(uint32_t Address)
{
    /* Check parameter */
    ((void)0);
    
    /* Erase byte */
   *(__far uint8_t*) (uint16_t)Address = ((uint8_t)0x00); 

}

/**
  * @brief   Programs one byte in program or data EEPROM memory
  * @note   PointerAttr define is declared in the stm8s.h file to select if 
  *         the pointer will be declared as near (2 bytes) or far (3 bytes).
  * @param  Address : Address where the byte will be programmed
  * @param  Data : Value to be programmed
  * @retval None
  */
void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
{
    /* Check parameters */
    ((void)0);
    *(__far uint8_t*) (uint16_t)Address = Data;
}

/**
  * @brief   Reads any byte from flash memory
  * @note   PointerAttr define is declared in the stm8s.h file to select if 
  *         the pointer will be declared as near (2 bytes) or far (3 bytes).
  * @param  Address : Address to read
  * @retval Value of the byte
  */
uint8_t FLASH_ReadByte(uint32_t Address)
{
    /* Check parameter */
    ((void)0);
    
    /* Read byte */
    return(*(__far uint8_t *) (uint16_t)Address); 

}
/**
  * @brief   Programs one word (4 bytes) in program or data EEPROM memory
  * @note   PointerAttr define is declared in the stm8s.h file to select if 
  *         the pointer will be declared as near (2 bytes) or far (3 bytes).
  * @param  Address : The address where the data will be programmed
  * @param  Data : Value to be programmed
  * @retval None
  */
void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
{
    /* Check parameters */
    ((void)0);

    /* Enable Word Write Once */
    ((FLASH_TypeDef *) 0x505A)->CR2 |= ((uint8_t)0x40);
    ((FLASH_TypeDef *) 0x505A)->NCR2 &= (uint8_t)(~((uint8_t)0x40));

    /* Write one byte - from lowest address*/
    *((__far uint8_t*)(uint16_t)Address)       = *((uint8_t*)(&Data));
    /* Write one byte*/
    *(((__far uint8_t*)(uint16_t)Address) + 1) = *((uint8_t*)(&Data)+1); 
    /* Write one byte*/    
    *(((__far uint8_t*)(uint16_t)Address) + 2) = *((uint8_t*)(&Data)+2); 
    /* Write one byte - from higher address*/
    *(((__far uint8_t*)(uint16_t)Address) + 3) = *((uint8_t*)(&Data)+3); 
}

/**
  * @brief   Programs option byte
  * @param  Address : option byte address to program
  * @param  Data : Value to write
  * @retval None
  */
void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
{
    /* Check parameter */
    ((void)0);

    /* Enable write access to option bytes */
    ((FLASH_TypeDef *) 0x505A)->CR2 |= ((uint8_t)0x80);
    ((FLASH_TypeDef *) 0x505A)->NCR2 &= (uint8_t)(~((uint8_t)0x80));

    /* check if the option byte to program is ROP*/
    if (Address == 0x4800)
    {
       /* Program option byte*/
       *((__near uint8_t*)Address) = Data;
    }
    else
    {
       /* Program option byte and his complement */
       *((__near uint8_t*)Address) = Data;
       *((__near uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
    }
    FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);

    /* Disable write access to option bytes */
    ((FLASH_TypeDef *) 0x505A)->CR2 &= (uint8_t)(~((uint8_t)0x80));
    ((FLASH_TypeDef *) 0x505A)->NCR2 |= ((uint8_t)0x80);
}

/**
  * @brief   Erases option byte
  * @param  Address : Option byte address to erase
  * @retval None
  */
void FLASH_EraseOptionByte(uint16_t Address)
{
    /* Check parameter */
    ((void)0);

    /* Enable write access to option bytes */
    ((FLASH_TypeDef *) 0x505A)->CR2 |= ((uint8_t)0x80);
    ((FLASH_TypeDef *) 0x505A)->NCR2 &= (uint8_t)(~((uint8_t)0x80));

     /* check if the option byte to erase is ROP */
     if (Address == 0x4800)
    {
       /* Erase option byte */
       *((__near uint8_t*)Address) = ((uint8_t)0x00);
    }
    else
    {
       /* Erase option byte and his complement */
       *((__near uint8_t*)Address) = ((uint8_t)0x00);
       *((__near uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = ((uint8_t)0xFF);
    }
    FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);

    /* Disable write access to option bytes */
    ((FLASH_TypeDef *) 0x505A)->CR2 &= (uint8_t)(~((uint8_t)0x80));
    ((FLASH_TypeDef *) 0x505A)->NCR2 |= ((uint8_t)0x80);
}
/**
  * @brief   Reads one option byte
  * @param  Address  option byte address to read.
  * @retval Option byte read value + its complement
  */
uint16_t FLASH_ReadOptionByte(uint16_t Address)
{
    uint8_t value_optbyte, value_optbyte_complement = 0;
    uint16_t res_value = 0;

    /* Check parameter */
    ((void)0);


    value_optbyte = *((__near uint8_t*)Address); /* Read option byte */
    value_optbyte_complement = *(((__near uint8_t*)Address) + 1); /* Read option byte complement */

    /* Read-out protection option byte */
    if (Address == 0x4800)	 
    {
        res_value =	 value_optbyte;
    }
    else
    {
        if (value_optbyte == (uint8_t)(~value_optbyte_complement))
        {
            res_value = (uint16_t)((uint16_t)value_optbyte << 8);
            res_value = res_value | (uint16_t)value_optbyte_complement;
        }
        else
        {
            res_value = ((uint16_t)0x5555);
        }
    }
    return(res_value);
}

/**
  * @brief   Select the Flash behaviour in low power mode
  * @param  FLASH_LPMode Low power mode selection
  *         This parameter can be any of the @ref FLASH_LPMode_TypeDef values.
  * @retval None
  */
void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
{
    /* Check parameter */
    ((void)0);

    /* Clears the two bits */
    ((FLASH_TypeDef *) 0x505A)->CR1 &= (uint8_t)(~(((uint8_t)0x08) | ((uint8_t)0x04))); 
    
    /* Sets the new mode */
    ((FLASH_TypeDef *) 0x505A)->CR1 |= (uint8_t)FLASH_LPMode; 
}

/**
  * @brief   Sets the fixed programming time
  * @param  FLASH_ProgTime Indicates the programming time to be fixed
  *         This parameter can be any of the @ref FLASH_ProgramTime_TypeDef values.
  * @retval None
  */
void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
{
    /* Check parameter */
    ((void)0);

    ((FLASH_TypeDef *) 0x505A)->CR1 &= (uint8_t)(~((uint8_t)0x01));
    ((FLASH_TypeDef *) 0x505A)->CR1 |= (uint8_t)FLASH_ProgTime;
}

/**
  * @brief  Returns the Flash behaviour type in low power mode
  * @param  None
  * @retval FLASH_LPMode_TypeDef Flash behaviour type in low power mode
  */
FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
{
    return((FLASH_LPMode_TypeDef)(((FLASH_TypeDef *) 0x505A)->CR1 & (uint8_t)(((uint8_t)0x08) | ((uint8_t)0x04))));
}

/**
  * @brief  Returns the fixed programming time
  * @param  None
  * @retval FLASH_ProgramTime_TypeDef Fixed programming time value
  */
FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
{
    return((FLASH_ProgramTime_TypeDef)(((FLASH_TypeDef *) 0x505A)->CR1 & ((uint8_t)0x01)));
}

/**
  * @brief  Returns the Boot memory size in bytes
  * @param  None
  * @retval Boot memory size in bytes
  */
uint32_t FLASH_GetBootSize(void)
{
    uint32_t temp = 0;

    /* Calculates the number of bytes */
    temp = (uint32_t)((uint32_t)((FLASH_TypeDef *) 0x505A)->FPR * (uint32_t)512);

    /* Correction because size of 127.5 kb doesn't exist */
    if (((FLASH_TypeDef *) 0x505A)->FPR == 0xFF)
    {
        temp += 512;
    }

    /* Return value */
    return(temp);
}

/**
  * @brief  Checks whether the specified SPI flag is set or not.
  * @param  FLASH_FLAG : Specifies the flag to check.
  *         This parameter can be any of the @ref FLASH_Flag_TypeDef enumeration.
  * @retval FlagStatus : Indicates the state of FLASH_FLAG.
  *         This parameter can be any of the @ref FlagStatus enumeration.
  * @note   This function can clear the EOP, WR_PG_DIS flags in the IAPSR register.
  */
_Bool FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
{
    _Bool status = 0;
    /* Check parameters */
    ((void)0);

    /* Check the status of the specified FLASH flag */
    if ((((FLASH_TypeDef *) 0x505A)->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)0)
    {
        status = 1; /* FLASH_FLAG is set */
    }
    else
    {
        status = 0; /* FLASH_FLAG is reset*/
    }

    /* Return the FLASH_FLAG status */
    return status;
}

/**
@code
 All the functions defined below must be executed from RAM exclusively, except
 for the FLASH_WaitForLastOperation function which can be executed from Flash.

 Steps of the execution from RAM differs from one toolchain to another:
 - For Cosmic Compiler:
    1- Define a segment FLASH_CODE by the mean of " #pragma section (FLASH_CODE)".
    This segment is defined in the stm8s_flash.c file.
  2- Uncomment the "#define RAM_EXECUTION  (1)" line in the stm8s.h file,
    or define it in Cosmic compiler preprocessor to enable the FLASH_CODE segment
   definition.
  3- In STVD Select Project\Settings\Linker\Category "input" and in the RAM section
    add the FLASH_CODE segment with "-ic" options.
  4- In main.c file call the _fctcpy() function with first segment character as 
    parameter "_fctcpy('F');" to load the declared moveable code segment
    (FLASH_CODE) in RAM before execution.
  5- By default the _fctcpy function is packaged in the Cosmic machine library,
    so the function prototype "int _fctcopy(char name);" must be added in main.c
    file.

  - For Raisonance Compiler
   1- Use the inram keyword in the function declaration to specify that it can be
    executed from RAM.
    This is done within the stm8s_flash.c file, and it's conditioned by 
    RAM_EXECUTION definition.
   2- Uncomment the "#define RAM_EXECUTION  (1)" line in the stm8s.h file, or 
   define it in Raisonance compiler preprocessor to enable the access for the 
   inram functions.
   3- An inram function code is copied from Flash to RAM by the C startup code. 
   In some applications, the RAM area where the code was initially stored may be
   erased or corrupted, so it may be desirable to perform the copy again. 
   Depending on the application memory model, the memcpy() or fmemcpy() functions
   should be used to perform the copy.
      • In case your project uses the SMALL memory model (code smaller than 64K),
       memcpy()function is recommended to perform the copy
      • In case your project uses the LARGE memory model, functions can be 
      everywhenre in the 24-bits address space (not limited to the first 64KB of
      code), In this case, the use of memcpy() function will not be appropriate,
      you need to use the specific fmemcpy() function (which copies objects with
      24-bit addresses).
      - The linker automatically defines 2 symbols for each inram function:
           • __address__functionname is a symbol that holds the Flash address 
           where the given function code is stored.
           • __size__functionname is a symbol that holds the function size in bytes.
     And we already have the function address (which is itself a pointer)
  4- In main.c file these two steps should be performed for each inram function:
     • Import the "__address__functionname" and "__size__functionname" symbols
       as global variables:
         extern int __address__functionname; // Symbol holding the flash address
         extern int __size__functionname;    // Symbol holding the function size
     • In case of SMALL memory model use, Call the memcpy() function to copy the
      inram function to the RAM destination address:
                memcpy(functionname, // RAM destination address
                      (void*)&__address__functionname, // Flash source address
                      (int)&__size__functionname); // Code size of the function
     • In case of LARGE memory model use, call the fmemcpy() function to copy 
     the inram function to the RAM destination address:
                 memcpy(functionname, // RAM destination address
                      (void @far*)&__address__functionname, // Flash source address
                      (int)&__size__functionname); // Code size of the function

 - For IAR Compiler:
    1- Use the __ramfunc keyword in the function declaration to specify that it 
    can be executed from RAM..
    This is done within the stm8s_flash.c file, and it's conditioned by 
    RAM_EXECUTION definition.
    2- Uncomment the "#define RAM_EXECUTION  (1)" line in the stm8s.h file, or 
   define it in IAR compiler preprocessor to enable the access for the 
   __ramfunc functions.
 
 The FLASH examples given within the STM8S_StdPeriph_Lib package, details all 
 the steps described above.

@endcode
*/

/**
  * @brief
  *******************************************************************************
  *                         Execution from RAM enable
  *******************************************************************************
  *
  * To enable execution from RAM you can either uncomment the following define 
  * in the stm8s.h file or define it in your toolchain compiler preprocessor
  * - #define RAM_EXECUTION  (1) 
  */
  



/**
  * @brief  Wait for a Flash operation to complete.
  * @note   The call and execution of this function must be done from RAM in case
  *         of Block operation, otherwise it can be executed from Flash
  * @param  FLASH_MemType : Memory type
  *         This parameter can be a value of @ref FLASH_MemType_TypeDef
  * @retval FLASH status
  */
FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType) 
{
    uint8_t flagstatus = 0x00;
    uint32_t timeout = ((uint32_t)0xFFFFF);
    
    /* Wait until operation completion or write protection page occurred */


    if (FLASH_MemType == FLASH_MEMTYPE_PROG)
    {
        while ((flagstatus == 0x00) && (timeout != 0x00))
        {
            flagstatus = (uint8_t)(((FLASH_TypeDef *) 0x505A)->IAPSR & (uint8_t)(((uint8_t)0x04) |
                                              ((uint8_t)0x01)));
            timeout--;
        }
    }
    else
    {
        while ((flagstatus == 0x00) && (timeout != 0x00))
        {
            flagstatus = (uint8_t)(((FLASH_TypeDef *) 0x505A)->IAPSR & (uint8_t)(((uint8_t)0x40) |
                                              ((uint8_t)0x01)));
            timeout--;
        }
    }
#line 565 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\src\\stm8s_flash.c"
    
    if (timeout == 0x00 )
    {
        flagstatus = FLASH_STATUS_TIMEOUT;
    }

    return((FLASH_Status_TypeDef)flagstatus);
}

/**
  * @brief  Erases a block in the program or data memory.
  * @note   This function should be called and executed from RAM.
  * @param  FLASH_MemType :  The type of memory to erase
  * @param  BlockNum : Indicates the block number to erase
  * @retval None.
  */
void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType)
{
  uint32_t startaddress = 0;
    



  uint8_t __far  *pwFlash;


  /* Check parameters */
  ((void)0);
  if (FLASH_MemType == FLASH_MEMTYPE_PROG)
  {
      ((void)0);
      startaddress = ((uint32_t)0x008000);
  }
  else
  {
      ((void)0);
      startaddress = ((uint32_t)0x004000);
  }

    /* Point to the first block address */

    pwFlash = (__far uint8_t *)(uint32_t)(startaddress + ((uint32_t)BlockNum * ((uint8_t)128)));




    /* Enable erase block mode */
    ((FLASH_TypeDef *) 0x505A)->CR2 |= ((uint8_t)0x20);
    ((FLASH_TypeDef *) 0x505A)->NCR2 &= (uint8_t)(~((uint8_t)0x20));




  *pwFlash = (uint8_t)0;
  *(pwFlash + 1) = (uint8_t)0;
  *(pwFlash + 2) = (uint8_t)0;
  *(pwFlash + 3) = (uint8_t)0;    

}

/**
  * @brief  Programs a memory block
  * @note   This function should be called and executed from RAM.
  * @param  FLASH_MemType : The type of memory to program
  * @param  BlockNum : The block number
  * @param  FLASH_ProgMode : The programming mode.
  * @param  Buffer : Pointer to buffer containing source data.
  * @retval None.
  */

void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer)
{
    uint16_t Count = 0;
    uint32_t startaddress = 0;

    /* Check parameters */
    ((void)0);
    ((void)0);
    if (FLASH_MemType == FLASH_MEMTYPE_PROG)
    {
        ((void)0);
        startaddress = ((uint32_t)0x008000);
    }
    else
    {
        ((void)0);
        startaddress = ((uint32_t)0x004000);
    }

    /* Point to the first block address */
    startaddress = startaddress + ((uint32_t)BlockNum * ((uint8_t)128));

    /* Selection of Standard or Fast programming mode */
    if (FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
    {
        /* Standard programming mode */ /*No need in standard mode */
        ((FLASH_TypeDef *) 0x505A)->CR2 |= ((uint8_t)0x01);
        ((FLASH_TypeDef *) 0x505A)->NCR2 &= (uint8_t)(~((uint8_t)0x01));
    }
    else
    {
        /* Fast programming mode */
        ((FLASH_TypeDef *) 0x505A)->CR2 |= ((uint8_t)0x10);
        ((FLASH_TypeDef *) 0x505A)->NCR2 &= (uint8_t)(~((uint8_t)0x10));
    }

    /* Copy data bytes from RAM to FLASH memory */
    for (Count = 0; Count < ((uint8_t)128); Count++)
    {


  *((__far uint8_t*) (uint16_t)startaddress + Count) = ((uint8_t)(Buffer[Count]));



    }
}







/**
  * @}
  */
  
/**
  * @}
  */
  
/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
