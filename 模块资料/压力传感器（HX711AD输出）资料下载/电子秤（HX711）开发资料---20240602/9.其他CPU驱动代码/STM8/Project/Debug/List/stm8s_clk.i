#line 1 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\src\\stm8s_clk.c"
/**
  ******************************************************************************
  * @file    stm8s_clk.c
  * @author  MCD Application Team
  * @version V2.0.0
  * @date    25-February-2011
  * @brief   This file contains all the functions for the CLK peripheral.
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

#line 1 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_clk.h"
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
#line 374 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\inc\\stm8s_clk.h"

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
#line 30 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_clk.h"

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
#line 256 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_clk.h"

/**
  * @brief  Macros used by the assert function in order to check the different clocks to output.
  */
#line 273 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_clk.h"

/**
  * @brief  Macros used by the assert function in order to check the different peripheral's clock.
  */
#line 291 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_clk.h"

/**
  * @brief  Macros used by the assert function in order to check the different clock flags.
  */
#line 304 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_clk.h"

/**
  * @brief  Macros used by the assert function in order to check the different clock IT pending bits.
  */


/**
  * @brief  Macros used by the assert function in order to check the different HSI prescaler values.
  */





/**
  * @brief  Macros used by the assert function in order to check the different clock  prescaler values.
  */
#line 333 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_clk.h"

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
#line 25 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\src\\stm8s_clk.c"

/** @addtogroup STM8S_StdPeriph_Driver
  * @{
  */
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/

/* Private Constants ---------------------------------------------------------*/

/**
  * @addtogroup CLK_Private_Constants
  * @{
  */

const uint8_t HSIDivFactor[4] = {1, 2, 4, 8}; /*!< Holds the different HSI Divider factors */
const uint8_t CLKPrescTable[8] = {1, 2, 4, 8, 10, 16, 20, 40}; /*!< Holds the different CLK prescaler values */

/**
  * @}
  */

/* Public functions ----------------------------------------------------------*/
/**
  * @addtogroup CLK_Public_Functions
  * @{
  */

/**
  * @brief  Deinitializes the CLK peripheral registers to their default reset
  * values.
  * @param  None
  * @retval None
  * @par Warning:
  * Resetting the CCOR register: \n
  * When the CCOEN bit is set, the reset of the CCOR register require
  * two consecutive write instructions in order to reset first the CCOEN bit
  * and the second one is to reset the CCOSEL bits.
  */
void CLK_DeInit(void)
{

    ((CLK_TypeDef *) 0x50C0)->ICKR = ((uint8_t)0x01);
    ((CLK_TypeDef *) 0x50C0)->ECKR = ((uint8_t)0x00);
    ((CLK_TypeDef *) 0x50C0)->SWR  = ((uint8_t)0xE1);
    ((CLK_TypeDef *) 0x50C0)->SWCR = ((uint8_t)0x00);
    ((CLK_TypeDef *) 0x50C0)->CKDIVR = ((uint8_t)0x18);
    ((CLK_TypeDef *) 0x50C0)->PCKENR1 = ((uint8_t)0xFF);
    ((CLK_TypeDef *) 0x50C0)->PCKENR2 = ((uint8_t)0xFF);
    ((CLK_TypeDef *) 0x50C0)->CSSR = ((uint8_t)0x00);
    ((CLK_TypeDef *) 0x50C0)->CCOR = ((uint8_t)0x00);
    while ((((CLK_TypeDef *) 0x50C0)->CCOR & ((uint8_t)0x01))!= 0)
    {}
    ((CLK_TypeDef *) 0x50C0)->CCOR = ((uint8_t)0x00);
    ((CLK_TypeDef *) 0x50C0)->HSITRIMR = ((uint8_t)0x00);
    ((CLK_TypeDef *) 0x50C0)->SWIMCCR = ((uint8_t)0x00);

}

/**
  * @brief   Configures the High Speed Internal oscillator (HSI).
  * @par Full description:
  * If CLK_FastHaltWakeup is enabled, HSI oscillator is automatically
  * switched-on (HSIEN=1) and selected as next clock master
  * (CKM=SWI=HSI) when resuming from HALT/ActiveHalt modes.\n
  * @param   NewState this parameter is the Wake-up Mode state.
  * @retval None
  */
void CLK_FastHaltWakeUpCmd(_Bool NewState)
{

    /* check the parameters */
    ((void)0);

    if (NewState != 0)
    {
        /* Set FHWU bit (HSI oscillator is automatically switched-on) */
        ((CLK_TypeDef *) 0x50C0)->ICKR |= ((uint8_t)0x04);
    }
    else  /* FastHaltWakeup = DISABLE */
    {
        /* Reset FHWU bit */
        ((CLK_TypeDef *) 0x50C0)->ICKR &= (uint8_t)(~((uint8_t)0x04));
    }

}

/**
  * @brief  Enable or Disable the External High Speed oscillator (HSE).
  * @param   NewState new state of HSEEN, value accepted ENABLE, DISABLE.
  * @retval None
  */
void CLK_HSECmd(_Bool NewState)
{

    /* Check the parameters */
    ((void)0);

    if (NewState != 0)
    {
        /* Set HSEEN bit */
        ((CLK_TypeDef *) 0x50C0)->ECKR |= ((uint8_t)0x01);
    }
    else
    {
        /* Reset HSEEN bit */
        ((CLK_TypeDef *) 0x50C0)->ECKR &= (uint8_t)(~((uint8_t)0x01));
    }

}

/**
  * @brief  Enables or disables the Internal High Speed oscillator (HSI).
  * @param   NewState new state of HSIEN, value accepted ENABLE, DISABLE.
  * @retval None
  */
void CLK_HSICmd(_Bool NewState)
{

    /* Check the parameters */
    ((void)0);

    if (NewState != 0)
    {
        /* Set HSIEN bit */
        ((CLK_TypeDef *) 0x50C0)->ICKR |= ((uint8_t)0x01);
    }
    else
    {
        /* Reset HSIEN bit */
        ((CLK_TypeDef *) 0x50C0)->ICKR &= (uint8_t)(~((uint8_t)0x01));
    }

}

/**
  * @brief  Enables or disables the Internal Low Speed oscillator (LSI).
  * @param    NewState new state of LSIEN, value accepted ENABLE, DISABLE.
  * @retval None
  */
void CLK_LSICmd(_Bool NewState)
{

    /* Check the parameters */
    ((void)0);

    if (NewState != 0)
    {
        /* Set LSIEN bit */
        ((CLK_TypeDef *) 0x50C0)->ICKR |= ((uint8_t)0x08);
    }
    else
    {
        /* Reset LSIEN bit */
        ((CLK_TypeDef *) 0x50C0)->ICKR &= (uint8_t)(~((uint8_t)0x08));
    }

}

/**
  * @brief  Enables or disablle the Configurable Clock Output (CCO).
  * @param   NewState : New state of CCEN bit (CCO register).
  * This parameter can be any of the @ref FunctionalState enumeration.
  * @retval None
  */
void CLK_CCOCmd(_Bool NewState)
{

    /* Check the parameters */
    ((void)0);

    if (NewState != 0)
    {
        /* Set CCOEN bit */
        ((CLK_TypeDef *) 0x50C0)->CCOR |= ((uint8_t)0x01);
    }
    else
    {
        /* Reset CCOEN bit */
        ((CLK_TypeDef *) 0x50C0)->CCOR &= (uint8_t)(~((uint8_t)0x01));
    }

}

/**
  * @brief  Starts or Stops manually the clock switch execution.
  * @par Full description:
  * NewState parameter set the SWEN.
  * @param   NewState new state of SWEN, value accepted ENABLE, DISABLE.
  * @retval None
  */
void CLK_ClockSwitchCmd(_Bool NewState)
{

    /* Check the parameters */
    ((void)0);

    if (NewState != 0 )
    {
        /* Enable the Clock Switch */
        ((CLK_TypeDef *) 0x50C0)->SWCR |= ((uint8_t)0x02);
    }
    else
    {
        /* Disable the Clock Switch */
        ((CLK_TypeDef *) 0x50C0)->SWCR &= (uint8_t)(~((uint8_t)0x02));
    }

}

/**
  * @brief  Configures the slow active halt wake up
  * @param   NewState: specifies the Slow Active Halt wake up state.
  * can be set of the following values:
  * - DISABLE: Slow Active Halt mode disabled;
  * - ENABLE:  Slow Active Halt mode enabled.
  * @retval None
  */
void CLK_SlowActiveHaltWakeUpCmd(_Bool NewState)
{

    /* check the parameters */
    ((void)0);

    if (NewState != 0)
    {
        /* Set S_ACTHALT bit */
        ((CLK_TypeDef *) 0x50C0)->ICKR |= ((uint8_t)0x20);
    }
    else
    {
        /* Reset S_ACTHALT bit */
        ((CLK_TypeDef *) 0x50C0)->ICKR &= (uint8_t)(~((uint8_t)0x20));
    }

}

/**
  * @brief   Enables or disables the specified peripheral CLK.
  * @param   CLK_Peripheral : This parameter specifies the peripheral clock to gate.
  * This parameter can be any of the  @ref CLK_Peripheral_TypeDef enumeration.
  * @param   NewState : New state of specified peripheral clock.
  * This parameter can be any of the @ref FunctionalState enumeration.
  * @retval None
  */
void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, _Bool NewState)
{

    /* Check the parameters */
    ((void)0);
    ((void)0);

    if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
    {
        if (NewState != 0)
        {
            /* Enable the peripheral Clock */
            ((CLK_TypeDef *) 0x50C0)->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
        }
        else
        {
            /* Disable the peripheral Clock */
            ((CLK_TypeDef *) 0x50C0)->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
        }
    }
    else
    {
        if (NewState != 0)
        {
            /* Enable the peripheral Clock */
            ((CLK_TypeDef *) 0x50C0)->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
        }
        else
        {
            /* Disable the peripheral Clock */
            ((CLK_TypeDef *) 0x50C0)->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
        }
    }

}

/**
  * @brief  configures the Switch from one clock to another
  * @param   CLK_SwitchMode select the clock switch mode.
  * It can be set of the values of @ref CLK_SwitchMode_TypeDef
  * @param   CLK_NewClock choice of the future clock.
  * It can be set of the values of @ref CLK_Source_TypeDef
  * @param   NewState Enable or Disable the Clock Switch interrupt.
  * @param   CLK_CurrentClockState current clock to switch OFF or to keep ON.
  * It can be set of the values of @ref CLK_CurrentClockState_TypeDef
  * @retval ErrorStatus this shows the clock switch status (ERROR/SUCCESS).
  */
_Bool CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, _Bool ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
{

    CLK_Source_TypeDef clock_master;
    uint16_t DownCounter = ((uint16_t)0x491);
    _Bool Swif = 0;

    /* Check the parameters */
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);

    /* Current clock master saving */
    clock_master = (CLK_Source_TypeDef)((CLK_TypeDef *) 0x50C0)->CMSR;

    /* Automatic switch mode management */
    if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
    {

        /* Enables Clock switch */
        ((CLK_TypeDef *) 0x50C0)->SWCR |= ((uint8_t)0x02);

        /* Enables or Disables Switch interrupt */
        if (ITState != 0)
        {
            ((CLK_TypeDef *) 0x50C0)->SWCR |= ((uint8_t)0x04);
        }
        else
        {
            ((CLK_TypeDef *) 0x50C0)->SWCR &= (uint8_t)(~((uint8_t)0x04));
        }

        /* Selection of the target clock source */
        ((CLK_TypeDef *) 0x50C0)->SWR = (uint8_t)CLK_NewClock;

        while ((((((CLK_TypeDef *) 0x50C0)->SWCR & ((uint8_t)0x01)) != 0 )&& (DownCounter != 0)))
        {
            DownCounter--;
        }

        if (DownCounter != 0)
        {
            Swif = 1;
        }
        else
        {
            Swif = 0;
        }

    }
    else /* CLK_SwitchMode == CLK_SWITCHMODE_MANUAL */
    {

        /* Enables or Disables Switch interrupt  if required  */
        if (ITState != 0)
        {
            ((CLK_TypeDef *) 0x50C0)->SWCR |= ((uint8_t)0x04);
        }
        else
        {
            ((CLK_TypeDef *) 0x50C0)->SWCR &= (uint8_t)(~((uint8_t)0x04));
        }

        /* Selection of the target clock source */
        ((CLK_TypeDef *) 0x50C0)->SWR = (uint8_t)CLK_NewClock;

        /* In manual mode, there is no risk to be stuck in a loop, value returned
          is then always SUCCESS */
        Swif = 1;

    }

    /* Switch OFF current clock if required */
    if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
    {
        ((CLK_TypeDef *) 0x50C0)->ICKR &= (uint8_t)(~((uint8_t)0x01));
    }
    else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
    {
        ((CLK_TypeDef *) 0x50C0)->ICKR &= (uint8_t)(~((uint8_t)0x08));
    }
    else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
    {
        ((CLK_TypeDef *) 0x50C0)->ECKR &= (uint8_t)(~((uint8_t)0x01));
    }

    return(Swif);

}

/**
  * @brief  Configures the HSI clock dividers.
  * @param   HSIPrescaler : Specifies the HSI clock divider to apply.
  * This parameter can be any of the @ref CLK_Prescaler_TypeDef enumeration.
  * @retval None
  */
void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
{

    /* check the parameters */
    ((void)0);

    /* Clear High speed internal clock prescaler */
    ((CLK_TypeDef *) 0x50C0)->CKDIVR &= (uint8_t)(~((uint8_t)0x18));

    /* Set High speed internal clock prescaler */
    ((CLK_TypeDef *) 0x50C0)->CKDIVR |= (uint8_t)HSIPrescaler;

}

/**
  * @brief  Output the selected clock on a dedicated I/O pin.
  * @param   CLK_CCO : Specifies the clock source.
  * This parameter can be any of the  @ref CLK_Output_TypeDef enumeration.
  * @retval None
  * @par Required preconditions:
  * The dedicated I/O pin must be set at 1 in the corresponding Px_CR1 register \n
  * to be set as input with pull-up or push-pull output.
  */
void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
{

    /* check the parameters */
    ((void)0);

    /* Clears of the CCO type bits part */
    ((CLK_TypeDef *) 0x50C0)->CCOR &= (uint8_t)(~((uint8_t)0x1E));

    /* Selects the source provided on cco_ck output */
    ((CLK_TypeDef *) 0x50C0)->CCOR |= (uint8_t)CLK_CCO;

    /* Enable the clock output */
    ((CLK_TypeDef *) 0x50C0)->CCOR |= ((uint8_t)0x01);

}

/**
  * @brief   Enables or disables the specified CLK interrupts.
  * @param   CLK_IT This parameter specifies the interrupt sources.
  * It can be one of the values of @ref CLK_IT_TypeDef.
  * @param   NewState New state of the Interrupt.
  * Value accepted ENABLE, DISABLE.
  * @retval None
  */
void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, _Bool NewState)
{

    /* check the parameters */
    ((void)0);
    ((void)0);

    if (NewState != 0)
    {
        switch (CLK_IT)
        {
        case CLK_IT_SWIF: /* Enable the clock switch interrupt */
            ((CLK_TypeDef *) 0x50C0)->SWCR |= ((uint8_t)0x04);
            break;
        case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
            ((CLK_TypeDef *) 0x50C0)->CSSR |= ((uint8_t)0x04);
            break;
        default:
            break;
        }
    }
    else  /*(NewState == DISABLE)*/
    {
        switch (CLK_IT)
        {
        case CLK_IT_SWIF: /* Disable the clock switch interrupt */
            ((CLK_TypeDef *) 0x50C0)->SWCR  &= (uint8_t)(~((uint8_t)0x04));
            break;
        case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
            ((CLK_TypeDef *) 0x50C0)->CSSR &= (uint8_t)(~((uint8_t)0x04));
            break;
        default:
            break;
        }
    }

}

/**
  * @brief  Configures the HSI and CPU clock dividers.
  * @param   ClockPrescaler Specifies the HSI or CPU clock divider to apply.
  * @retval None
  */
void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
{

    /* check the parameters */
    ((void)0);

    if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
    {
        ((CLK_TypeDef *) 0x50C0)->CKDIVR &= (uint8_t)(~((uint8_t)0x18));
        ((CLK_TypeDef *) 0x50C0)->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)((uint8_t)0x18));
    }
    else /* Bit7 = 1 means CPU divider */
    {
        ((CLK_TypeDef *) 0x50C0)->CKDIVR &= (uint8_t)(~((uint8_t)0x07));
        ((CLK_TypeDef *) 0x50C0)->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)((uint8_t)0x07));
    }

}
/**
  * @brief  Configures the SWIM clock frequency on the fly.
  * @param   CLK_SWIMDivider Specifies the SWIM clock divider to apply.
  * can be one of the value of @ref CLK_SWIMDivider_TypeDef
  * @retval None
  */
void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
{

    /* check the parameters */
    ((void)0);

    if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
    {
        /* SWIM clock is not divided by 2 */
        ((CLK_TypeDef *) 0x50C0)->SWIMCCR |= ((uint8_t)0x01);
    }
    else /* CLK_SWIMDivider == CLK_SWIMDIVIDER_2 */
    {
        /* SWIM clock is divided by 2 */
        ((CLK_TypeDef *) 0x50C0)->SWIMCCR &= (uint8_t)(~((uint8_t)0x01));
    }

}

/**
  * @brief  Enables the Clock Security System.
  * @par Full description:
  * once CSS is enabled it cannot be disabled until the next reset.
  * @param  None
  * @retval None
  */
void CLK_ClockSecuritySystemEnable(void)
{
    /* Set CSSEN bit */
    ((CLK_TypeDef *) 0x50C0)->CSSR |= ((uint8_t)0x01);
}

/**
  * @brief  Returns the clock source used as system clock.
  * @param  None
  * @retval  Clock source used.
  * can be one of the values of @ref CLK_Source_TypeDef
  */
CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
{
    return((CLK_Source_TypeDef)((CLK_TypeDef *) 0x50C0)->CMSR);
}

/**
  * @brief  This function returns the frequencies of different on chip clocks.
  * @param  None
  * @retval the master clock frequency
  */
uint32_t CLK_GetClockFreq(void)
{

    uint32_t clockfrequency = 0;
    CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
    uint8_t tmp = 0, presc = 0;

    /* Get CLK source. */
    clocksource = (CLK_Source_TypeDef)((CLK_TypeDef *) 0x50C0)->CMSR;

    if (clocksource == CLK_SOURCE_HSI)
    {
        tmp = (uint8_t)(((CLK_TypeDef *) 0x50C0)->CKDIVR & ((uint8_t)0x18));
        tmp = (uint8_t)(tmp >> 3);
        presc = HSIDivFactor[tmp];
        clockfrequency = ((uint32_t)16000000) / presc;
    }
    else if ( clocksource == CLK_SOURCE_LSI)
    {
        clockfrequency = ((uint32_t)128000);
    }
    else
    {
        clockfrequency = ((u32)24000000);
    }

    return((uint32_t)clockfrequency);

}

/**
  * @brief  Adjusts the Internal High Speed oscillator (HSI) calibration value.
  * @par Full description:
  * @param   CLK_HSICalibrationValue calibration trimming value.
  * can be one of the values of @ref CLK_HSITrimValue_TypeDef
  * @retval None
  */
void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
{

    /* check the parameters */
    ((void)0);

    /* Store the new value */
    ((CLK_TypeDef *) 0x50C0)->HSITRIMR = (uint8_t)( (uint8_t)(((CLK_TypeDef *) 0x50C0)->HSITRIMR & (uint8_t)(~((uint8_t)0x07)))|((uint8_t)CLK_HSICalibrationValue));

}

/**
  * @brief  Reset the SWBSY flag (SWICR Reister)
  * @par Full description:
  * This function reset SWBSY flag in order to reset clock switch operations (target
  * oscillator is broken, stabilization is longing too much, etc.).  If at the same time \n
  * software attempts to set SWEN and clear SWBSY, SWBSY action takes precedence.
  * @param  None
  * @retval None
  */
void CLK_SYSCLKEmergencyClear(void)
{
    ((CLK_TypeDef *) 0x50C0)->SWCR &= (uint8_t)(~((uint8_t)0x01));
}

/**
  * @brief  Checks whether the specified CLK flag is set or not.
  * @par Full description:
  * @param   CLK_FLAG Flag to check.
  * can be one of the values of @ref CLK_Flag_TypeDef
  * @retval FlagStatus, status of the checked flag
  */
_Bool CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
{

    uint16_t statusreg = 0;
    uint8_t tmpreg = 0;
    _Bool bitstatus = 0;

    /* check the parameters */
    ((void)0);

    /* Get the CLK register index */
    statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);


    if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
    {
        tmpreg = ((CLK_TypeDef *) 0x50C0)->ICKR;
    }
    else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
    {
        tmpreg = ((CLK_TypeDef *) 0x50C0)->ECKR;
    }
    else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
    {
        tmpreg = ((CLK_TypeDef *) 0x50C0)->SWCR;
    }
    else if (statusreg == 0x0400) /* The flag to check is in CSS register */
    {
        tmpreg = ((CLK_TypeDef *) 0x50C0)->CSSR;
    }
    else /* The flag to check is in CCO register */
    {
        tmpreg = ((CLK_TypeDef *) 0x50C0)->CCOR;
    }

    if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)0)
    {
        bitstatus = 1;
    }
    else
    {
        bitstatus = 0;
    }

    /* Return the flag status */
    return((_Bool)bitstatus);

}

/**
  * @brief  Checks whether the specified CLK interrupt has is enabled or not.
  * @param   CLK_IT specifies the CLK interrupt.
  * can be one of the values of @ref CLK_IT_TypeDef
  * @retval ITStatus, new state of CLK_IT (SET or RESET).
  */
_Bool CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
{

    _Bool bitstatus = 0;

    /* check the parameters */
    ((void)0);

    if (CLK_IT == CLK_IT_SWIF)
    {
        /* Check the status of the clock switch interrupt */
        if ((((CLK_TypeDef *) 0x50C0)->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
        {
            bitstatus = 1;
        }
        else
        {
            bitstatus = 0;
        }
    }
    else /* CLK_IT == CLK_IT_CSSDIE */
    {
        /* Check the status of the security system detection interrupt */
        if ((((CLK_TypeDef *) 0x50C0)->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
        {
            bitstatus = 1;
        }
        else
        {
            bitstatus = 0;
        }
    }

    /* Return the CLK_IT status */
    return bitstatus;

}

/**
  * @brief  Clears the CLK’s interrupt pending bits.
  * @param   CLK_IT specifies the interrupt pending bits.
  * can be one of the values of @ref CLK_IT_TypeDef
  * @retval None
  */
void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
{

    /* check the parameters */
    ((void)0);

    if (CLK_IT == (uint8_t)CLK_IT_CSSD)
    {
        /* Clear the status of the security system detection interrupt */
        ((CLK_TypeDef *) 0x50C0)->CSSR &= (uint8_t)(~((uint8_t)0x08));
    }
    else /* CLK_PendingBit == (uint8_t)CLK_IT_SWIF */
    {
        /* Clear the status of the clock switch interrupt */
        ((CLK_TypeDef *) 0x50C0)->SWCR &= (uint8_t)(~((uint8_t)0x08));
    }

}
/**
  * @}
  */
  
/**
  * @}
  */
  
/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
