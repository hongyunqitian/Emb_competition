#line 1 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\src\\stm8s_adc1.c"
/**
  ******************************************************************************
  * @file    stm8s_adc1.c
  * @author  MCD Application Team
  * @version V2.0.0
  * @date    25-February-2011
  * @brief   This file contains all the functions/macros for the ADC1 peripheral.
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
#line 1 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_adc1.h"
/**
  ******************************************************************************
  * @file    stm8s_adc1.h
  * @author  MCD Application Team
  * @version V2.0.0
  * @date    25-February-2011
  * @brief   This file contains all the prototypes/macros for the ADC1 peripheral.
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
#line 27 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_adc1.h"

/* Exported types ------------------------------------------------------------*/

/** @addtogroup ADC1_Exported_Types
  * @{
  */

/**
  * @brief  ADC1 clock prescaler selection
  */

typedef enum 
{
  ADC1_PRESSEL_FCPU_D2  = (uint8_t)0x00, /**< Prescaler selection fADC1 = fcpu/2 */
  ADC1_PRESSEL_FCPU_D3  = (uint8_t)0x10, /**< Prescaler selection fADC1 = fcpu/3 */
  ADC1_PRESSEL_FCPU_D4  = (uint8_t)0x20, /**< Prescaler selection fADC1 = fcpu/4 */
  ADC1_PRESSEL_FCPU_D6  = (uint8_t)0x30, /**< Prescaler selection fADC1 = fcpu/6 */
  ADC1_PRESSEL_FCPU_D8  = (uint8_t)0x40, /**< Prescaler selection fADC1 = fcpu/8 */
  ADC1_PRESSEL_FCPU_D10 = (uint8_t)0x50, /**< Prescaler selection fADC1 = fcpu/10 */
  ADC1_PRESSEL_FCPU_D12 = (uint8_t)0x60, /**< Prescaler selection fADC1 = fcpu/12 */
  ADC1_PRESSEL_FCPU_D18 = (uint8_t)0x70  /**< Prescaler selection fADC1 = fcpu/18 */
} ADC1_PresSel_TypeDef;

/**
  * @brief   ADC1 External conversion trigger event selection
  */
typedef enum 
{
  ADC1_EXTTRIG_TIM   = (uint8_t)0x00, /**< Conversion from Internal TIM1 TRGO event */
  ADC1_EXTTRIG_GPIO  = (uint8_t)0x10  /**< Conversion from External interrupt on ADC_ETR pin*/
} ADC1_ExtTrig_TypeDef;

/**
  * @brief  ADC1 data alignment
  */
typedef enum 
{
  ADC1_ALIGN_LEFT  = (uint8_t)0x00, /**< Data alignment left */
  ADC1_ALIGN_RIGHT = (uint8_t)0x08  /**< Data alignment right */
} ADC1_Align_TypeDef;

/**
  * @brief  ADC1 Interrupt source
  */
typedef enum 
{
  ADC1_IT_AWDIE = (uint16_t)0x010, /**< Analog WDG interrupt enable */
  ADC1_IT_EOCIE = (uint16_t)0x020, /**< EOC interrupt enable */
  ADC1_IT_AWD   = (uint16_t)0x140, /**< Analog WDG status */
  ADC1_IT_AWS0  = (uint16_t)0x110, /**< Analog channel 0 status */
  ADC1_IT_AWS1  = (uint16_t)0x111, /**< Analog channel 1 status */
  ADC1_IT_AWS2  = (uint16_t)0x112, /**< Analog channel 2 status */
  ADC1_IT_AWS3  = (uint16_t)0x113, /**< Analog channel 3 status */
  ADC1_IT_AWS4  = (uint16_t)0x114, /**< Analog channel 4 status */
  ADC1_IT_AWS5  = (uint16_t)0x115, /**< Analog channel 5 status */
  ADC1_IT_AWS6  = (uint16_t)0x116, /**< Analog channel 6 status */
  ADC1_IT_AWS7  = (uint16_t)0x117, /**< Analog channel 7 status */
  ADC1_IT_AWS8  = (uint16_t)0x118, /**< Analog channel 8 status */
  ADC1_IT_AWS9  = (uint16_t)0x119, /**< Analog channel 9 status */
  ADC1_IT_AWS12 = (uint16_t)0x11C, /**< Analog channel 12 status */
                                   /* refer to product datasheet for channel 12 availability */
  ADC1_IT_EOC   = (uint16_t)0x080  /**< EOC pending bit */

} ADC1_IT_TypeDef;

/**
  * @brief  ADC1 Flags
  */
typedef enum 
{
  ADC1_FLAG_OVR   = (uint8_t)0x41, /**< Overrun status flag */
  ADC1_FLAG_AWD   = (uint8_t)0x40, /**< Analog WDG status */
  ADC1_FLAG_AWS0  = (uint8_t)0x10, /**< Analog channel 0 status */
  ADC1_FLAG_AWS1  = (uint8_t)0x11, /**< Analog channel 1 status */
  ADC1_FLAG_AWS2  = (uint8_t)0x12, /**< Analog channel 2 status */
  ADC1_FLAG_AWS3  = (uint8_t)0x13, /**< Analog channel 3 status */
  ADC1_FLAG_AWS4  = (uint8_t)0x14, /**< Analog channel 4 status */
  ADC1_FLAG_AWS5  = (uint8_t)0x15, /**< Analog channel 5 status */
  ADC1_FLAG_AWS6  = (uint8_t)0x16, /**< Analog channel 6 status */
  ADC1_FLAG_AWS7  = (uint8_t)0x17, /**< Analog channel 7 status */
  ADC1_FLAG_AWS8  = (uint8_t)0x18, /**< Analog channel 8  status*/
  ADC1_FLAG_AWS9  = (uint8_t)0x19, /**< Analog channel 9 status */
  ADC1_FLAG_AWS12 = (uint8_t)0x1C, /**< Analog channel 12 status */
                                  /* refer to product datasheet for channel 12 availability */
  ADC1_FLAG_EOC   = (uint8_t)0x80  /**< EOC falg */
}ADC1_Flag_TypeDef;


/**
  * @brief  ADC1 schmitt Trigger
  */
typedef enum 
{
  ADC1_SCHMITTTRIG_CHANNEL0  = (uint8_t)0x00, /**< Schmitt trigger disable on AIN0 */
  ADC1_SCHMITTTRIG_CHANNEL1  = (uint8_t)0x01, /**< Schmitt trigger disable on AIN1 */
  ADC1_SCHMITTTRIG_CHANNEL2  = (uint8_t)0x02, /**< Schmitt trigger disable on AIN2 */
  ADC1_SCHMITTTRIG_CHANNEL3  = (uint8_t)0x03, /**< Schmitt trigger disable on AIN3 */
  ADC1_SCHMITTTRIG_CHANNEL4  = (uint8_t)0x04, /**< Schmitt trigger disable on AIN4 */
  ADC1_SCHMITTTRIG_CHANNEL5  = (uint8_t)0x05, /**< Schmitt trigger disable on AIN5 */
  ADC1_SCHMITTTRIG_CHANNEL6  = (uint8_t)0x06, /**< Schmitt trigger disable on AIN6 */
  ADC1_SCHMITTTRIG_CHANNEL7  = (uint8_t)0x07, /**< Schmitt trigger disable on AIN7 */
  ADC1_SCHMITTTRIG_CHANNEL8  = (uint8_t)0x08, /**< Schmitt trigger disable on AIN8 */
  ADC1_SCHMITTTRIG_CHANNEL9  = (uint8_t)0x09, /**< Schmitt trigger disable on AIN9 */
  ADC1_SCHMITTTRIG_CHANNEL12 = (uint8_t)0x0C, /**< Schmitt trigger disable on AIN12 */  
                                              /* refer to product datasheet for channel 12 availability */ 
  ADC1_SCHMITTTRIG_ALL       = (uint8_t)0xFF /**< Schmitt trigger disable on All channels */ 
} ADC1_SchmittTrigg_TypeDef;

/**
  * @brief  ADC1 conversion mode selection
  */

typedef enum 
{
  ADC1_CONVERSIONMODE_SINGLE     = (uint8_t)0x00, /**< Single conversion mode */
  ADC1_CONVERSIONMODE_CONTINUOUS = (uint8_t)0x01  /**< Continuous conversion mode */
} ADC1_ConvMode_TypeDef;

/**
  * @brief  ADC1 analog channel selection
  */

typedef enum 
{
  ADC1_CHANNEL_0  = (uint8_t)0x00, /**< Analog channel 0 */
  ADC1_CHANNEL_1  = (uint8_t)0x01, /**< Analog channel 1 */
  ADC1_CHANNEL_2  = (uint8_t)0x02, /**< Analog channel 2 */
  ADC1_CHANNEL_3  = (uint8_t)0x03, /**< Analog channel 3 */
  ADC1_CHANNEL_4  = (uint8_t)0x04, /**< Analog channel 4 */
  ADC1_CHANNEL_5  = (uint8_t)0x05, /**< Analog channel 5 */
  ADC1_CHANNEL_6  = (uint8_t)0x06, /**< Analog channel 6 */
  ADC1_CHANNEL_7  = (uint8_t)0x07, /**< Analog channel 7 */
  ADC1_CHANNEL_8  = (uint8_t)0x08, /**< Analog channel 8 */
  ADC1_CHANNEL_9  = (uint8_t)0x09, /**< Analog channel 9 */
  ADC1_CHANNEL_12 = (uint8_t)0x0C /**< Analog channel 12 */ 
                 /* refer to product datasheet for channel 12 availability */
} ADC1_Channel_TypeDef;

/**
  * @}
  */

/* Exported constants --------------------------------------------------------*/

/* Exported macros ------------------------------------------------------------*/

/* Private macros ------------------------------------------------------------*/

/** @addtogroup ADC1_Private_Macros
  * @brief  Macros used by the assert function to check the different functions parameters.
  * @{
  */

/**
  * @brief  Macro used by the assert function to check the different prescaler's values.
  */
#line 191 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_adc1.h"

/**
  * @brief  Macro used by the assert function to check the different external trigger values.
  */



/**
  * @brief  Macro used by the assert function to check the different alignment modes.
  */



/**
  * @brief  Macro used by the assert function to check the Interrupt source.
  */



/**
  * @brief  Macro used by the assert function to check the ADC1 Flag.
  */
#line 226 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_adc1.h"

/**
  * @brief  Macro used by the assert function to check the ADC1 pending bits.
  */
#line 243 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_adc1.h"

/**
  * @brief  Macro used by the assert function to check the different schmitt trigger values.
  */
#line 259 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_adc1.h"

/**
  * @brief  Macro used by the assert function to check the different conversion modes.
  */



/**
  * @brief  Macro used by the assert function to check the different channels values.
  */
#line 280 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_adc1.h"

/**
  * @brief  Macro used by the assert function to check the possible buffer values.
  */


/**
  * @}
  */

/* Exported functions ------------------------------------------------------- */

/** @addtogroup ADC1_Exported_Functions
  * @{
  */
void ADC1_DeInit(void);
void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, 
               ADC1_Channel_TypeDef ADC1_Channel,
               ADC1_PresSel_TypeDef ADC1_PrescalerSelection, 
               ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, 
               _Bool ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, 
               ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, 
               _Bool ADC1_SchmittTriggerState);
void ADC1_Cmd(_Bool NewState);
void ADC1_ScanModeCmd(_Bool NewState);
void ADC1_DataBufferCmd(_Bool NewState);
void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, _Bool NewState);
void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler);
void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel,
                              _Bool NewState);
void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, 
                           ADC1_Channel_TypeDef ADC1_Channel, 
                           ADC1_Align_TypeDef ADC1_Align);
void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, _Bool NewState);
void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, _Bool NewState);
void ADC1_StartConversion(void);
uint16_t ADC1_GetConversionValue(void);
void ADC1_SetHighThreshold(uint16_t Threshold);
void ADC1_SetLowThreshold(uint16_t Threshold);
uint16_t ADC1_GetBufferValue(uint8_t Buffer);
_Bool ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel);
_Bool ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag);
void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag);
_Bool ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit);
void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit);
/**
  * @}
  */



/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
#line 24 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\FWlib\\src\\stm8s_adc1.c"

/** @addtogroup STM8S_StdPeriph_Driver
  * @{
  */
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/* Public functions ----------------------------------------------------------*/

/**
  * @addtogroup ADC1_Public_Functions
  * @{
  */

/**
  * @brief  Deinitializes the ADC1 peripheral registers to their default reset
  * values.
  * @param  None
  * @retval None
  */
void ADC1_DeInit(void)
{
    ADC1->CSR  = ADC1_CSR_RESET_VALUE;
    ADC1->CR1  = ADC1_CR1_RESET_VALUE;
    ADC1->CR2  = ADC1_CR2_RESET_VALUE;
    ADC1->CR3  = ADC1_CR3_RESET_VALUE;
    ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
    ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
    ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
    ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
    ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
    ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
    ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
    ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
}


/**
  * @brief  Initializes the ADC1 peripheral according to the specified parameters
  * @param   ADC1_ConversionMode: specifies the conversion mode
  * can be one of the values of @ref ADC1_ConvMode_TypeDef.
  * @param   ADC1_Channel: specifies the channel to convert
  * can be one of the values of @ref ADC1_Channel_TypeDef.
  * @param   ADC1_PrescalerSelection: specifies the ADC1 prescaler
  * can be one of the values of @ref ADC1_PresSel_TypeDef.
  * @param   ADC1_ExtTrigger: specifies the external trigger
  * can be one of the values of @ref ADC1_ExtTrig_TypeDef.
  * @param   ADC1_ExtTriggerState: specifies the external trigger new state
  * can be one of the values of @ref FunctionalState.
  * @param   ADC1_Align: specifies the converted data alignment
  * can be one of the values of @ref ADC1_Align_TypeDef.
  * @param   ADC1_SchmittTriggerChannel: specifies the schmitt trigger channel
  * can be one of the values of @ref ADC1_SchmittTrigg_TypeDef.
  * @param   ADC1_SchmittTriggerState: specifies the schmitt trigger state
  * can be one of the values of @ref FunctionalState.
  * @retval None
  */
void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, _Bool ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, _Bool ADC1_SchmittTriggerState)
{

    /* Check the parameters */
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);
    ((void)0);

    /*-----------------CR1 & CSR configuration --------------------*/
    /* Configure the conversion mode and the channel to convert
    respectively according to ADC1_ConversionMode & ADC1_Channel values  &  ADC1_Align values */
    ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
    /* Select the prescaler division factor according to ADC1_PrescalerSelection values */
    ADC1_PrescalerConfig(ADC1_PrescalerSelection);

    /*-----------------CR2 configuration --------------------*/
    /* Configure the external trigger state and event respectively
    according to NewState, ADC1_ExtTrigger */
    ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);

    /*------------------TDR configuration ---------------------------*/
    /* Configure the schmitt trigger channel and state respectively
    according to ADC1_SchmittTriggerChannel & ADC1_SchmittTriggerNewState  values */
    ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);

    /* Enable the ADC1 peripheral */
    ADC1->CR1 |= ADC1_CR1_ADON;

}


/**
  * @brief  Enables or Disables the ADC1 peripheral.
  * @param   NewState: specifies the peripheral enabled or disabled state.
  * @retval None
  */
void ADC1_Cmd(_Bool NewState)
{

    /* Check the parameters */
    ((void)0);

    if (NewState != 0)
    {
        ADC1->CR1 |= ADC1_CR1_ADON;
    }
    else /* NewState == DISABLE */
    {
        ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
    }

}

/**
  * @brief  Enables or Disables the ADC1 scan mode.
  * @param   NewState: specifies the selected mode enabled or disabled state.
  * @retval None
  */
void ADC1_ScanModeCmd(_Bool NewState)
{

    /* Check the parameters */
    ((void)0);

    if (NewState != 0)
    {
        ADC1->CR2 |= ADC1_CR2_SCAN;
    }
    else /* NewState == DISABLE */
    {
        ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
    }

}

/**
  * @brief  Enables or Disables the ADC1 data store into the Data Buffer registers rather than in the Data Register
  * @param   NewState: specifies the selected mode enabled or disabled state.
  * @retval None
  */
void ADC1_DataBufferCmd(_Bool NewState)
{

    /* Check the parameters */
    ((void)0);

    if (NewState != 0)
    {
        ADC1->CR3 |= ADC1_CR3_DBUF;
    }
    else /* NewState == DISABLE */
    {
        ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
    }

}

/**
  * @brief  Enables or disables the ADC1 interrupt.
  * @param   ADC1_IT specifies the name of the interrupt to enable or disable.
  * This parameter can be one of the following values:
  *    - ADC1_IT_AWDITEN : Analog WDG interrupt enable
  *    - ADC1_IT_EOCITEN  : EOC iterrupt enable
  * @param   NewState specifies the state of the interrupt to apply.
  * @retval None
  */
void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, _Bool NewState)
{

    /* Check the parameters */
    ((void)0);
    ((void)0);

    if (NewState != 0)
    {
        /* Enable the ADC1 interrupts */
        ADC1->CSR |= (uint8_t)ADC1_IT;
    }
    else  /* NewState == DISABLE */
    {
        /* Disable the ADC1 interrupts */
        ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
    }

}

/**
  * @brief  Configure the ADC1 prescaler division factor.
  * @param   ADC1_Prescaler: the selected precaler.
  * It can be one of the values of @ref ADC1_PresSel_TypeDef.
  * @retval None
  */
void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
{

    /* Check the parameter */
    ((void)0);

    /* Clear the SPSEL bits */
    ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
    /* Select the prescaler division factor according to ADC1_PrescalerSelection values */
    ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);

}


/**
  * @brief  Enables or disables the ADC1 Schmitt Trigger on a selected channel.
  * @param   ADC1_SchmittTriggerChannel specifies the desired Channel.
  * It can be set of the values of @ref ADC1_SchmittTrigg_TypeDef.
  * @param   NewState specifies Channel new status.
  * can have one of the values of @ref FunctionalState.
  * @retval None
  */
void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, _Bool NewState)
{

    /* Check the parameters */
    ((void)0);
    ((void)0);

    if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
    {
        if (NewState != 0)
        {
            ADC1->TDRL &= (uint8_t)0x0;
            ADC1->TDRH &= (uint8_t)0x0;
        }
        else /* NewState == DISABLE */
        {
            ADC1->TDRL |= (uint8_t)0xFF;
            ADC1->TDRH |= (uint8_t)0xFF;
        }
    }
    else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
    {
        if (NewState != 0)
        {
            ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
        }
        else /* NewState == DISABLE */
        {
            ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
        }
    }
    else /* ADC1_SchmittTriggerChannel >= ADC1_SCHMITTTRIG_CHANNEL8 */
    {
        if (NewState != 0)
        {
            ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
        }
        else /* NewState == DISABLE */
        {
            ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
        }
    }

}


/**
  * @brief  Configure the ADC1 conversion on selected channel.
  * @param   ADC1_ConversionMode Specifies the conversion type.
  * It can be set of the values of @ref ADC1_ConvMode_TypeDef
  * @param   ADC1_Channel specifies the ADC1 Channel.
  * It can be set of the values of @ref ADC1_Channel_TypeDef
  * @param   ADC1_Align specifies the conerted data alignment.
  * It can be set of the values of @ref ADC1_Align_TypeDef
  * @retval None
  */
void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
{

    /* Check the parameters */
    ((void)0);
    ((void)0);
    ((void)0);

    /* Clear the align bit */
    ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
    /* Configure the data alignment */
    ADC1->CR2 |= (uint8_t)(ADC1_Align);

    if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
    {
        /* Set the continuous coversion mode */
        ADC1->CR1 |= ADC1_CR1_CONT;
    }
    else /* ADC1_ConversionMode == ADC1_CONVERSIONMODE_SINGLE */
    {
        /* Set the single conversion mode */
        ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
    }

    /* Clear the ADC1 channels */
    ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
    /* Select the ADC1 channel */
    ADC1->CSR |= (uint8_t)(ADC1_Channel);

}


/**
  * @brief  Configure the ADC1 conversion on external trigger event.
  * @par Full description:
  * The selected external trigger evant can be enabled or disabled.
  * @param   ADC1_ExtTrigger to select the External trigger event.
  * can have one of the values of @ref ADC1_ExtTrig_TypeDef.
  * @param   NewState to enable/disable the selected external trigger
  * can have one of the values of @ref FunctionalState.
  * @retval None
  */
void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, _Bool NewState)
{

    /* Check the parameters */
    ((void)0);
    ((void)0);

    /* Clear the external trigger selection bits */
    ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);

    if (NewState != 0)
    {
        /* Enable the selected external Trigger */
        ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
    }
    else /* NewState == DISABLE */
    {
        /* Disable the selected external trigger */
        ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
    }

    /* Set the selected external trigger */
    ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);

}


/**
  * @brief  Start ADC1 conversion
  * @par Full description:
  * This function  triggers the start of conversion, after ADC1 configuration.
  * @param  None
  * @retval None
  * @par Required preconditions:
  * Enable the ADC1 peripheral before calling this function
  */
void ADC1_StartConversion(void)
{
    ADC1->CR1 |= ADC1_CR1_ADON;
}

/**
  * @brief  Get one sample of measured signal.
  * @param  None
  * @retval ConversionValue:  value of the measured signal.
  * @par Required preconditions:
  * ADC1 conversion finished.
  */
uint16_t ADC1_GetConversionValue(void)
{

    uint16_t temph = 0;
    uint8_t templ = 0;

    if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
    {
        /* Read LSB first */
        templ = ADC1->DRL;
        /* Then read MSB */
        temph = ADC1->DRH;

        temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
    }
    else /* Left alignment */
    {
        /* Read MSB firts*/
        temph = ADC1->DRH;
        /* Then read LSB */
        templ = ADC1->DRL;

        temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
    }

    return ((uint16_t)temph);

}

/**
  * @brief  Enables or disables the analog watchdog for the given channel.
  * @param   Channel specifies the desired Channel.
  * It can be set of the values of @ref ADC1_Channel_TypeDef.
  * @param   NewState specifies the analog watchdog new state.
  * can have one of the values of @ref FunctionalState.
  * @retval None
  */
void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, _Bool NewState)
{
    /* Check the parameters */
    ((void)0);
    ((void)0);

    if (Channel < (uint8_t)8)
    {
        if (NewState != 0)
        {
            ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
        }
        else /* NewState == DISABLE */
        {
            ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
        }
    }
    else
    {
        if (NewState != 0)
        {
            ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
        }
        else /* NewState == DISABLE */
        {
            ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
        }
    }
}

/**
  * @brief  Sets the high threshold of the analog watchdog.
  * @param   Threshold specifies the high threshold value.
  * this value depends on the reference voltage range.
  * @retval None
  */
void ADC1_SetHighThreshold(uint16_t Threshold)
{
    ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
    ADC1->HTRL = (uint8_t)Threshold;
}

/**
  * @brief  Sets the low threshold of the analog watchdog.
  * @param   Threshold specifies the low threshold value.
  * this value depends on the reference voltage range.
  * @retval None
  */
void ADC1_SetLowThreshold(uint16_t Threshold)
{
    ADC1->LTRL = (uint8_t)Threshold;
    ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
}

/**
  * @brief  Get one sample of measured signal.
  * @param   Buffer specifies the buffer to read.
  * @retval BufferValue:  value read from the given buffer.
  * @par Required preconditions:
  * ADC1 conversion finished.
  */
uint16_t ADC1_GetBufferValue(uint8_t Buffer)
{

    uint16_t temph = 0;
    uint8_t templ = 0;

    /* Check the parameters */
    ((void)0);

    if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
    {
        /* Read LSB first */
        templ = *(uint8_t*)(uint16_t)((uint16_t)0x53E0 + (uint8_t)(Buffer << 1) + 1);
        /* Then read MSB */
        temph = *(uint8_t*)(uint16_t)((uint16_t)0x53E0 + (uint8_t)(Buffer << 1));

        temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
    }
    else /* Left alignment */
    {
        /* Read MSB firts*/
        temph = *(uint8_t*)(uint16_t)((uint16_t)0x53E0 + (uint8_t)(Buffer << 1));
        /* Then read LSB */
        templ = *(uint8_t*)(uint16_t)((uint16_t)0x53E0 + (uint8_t)(Buffer << 1) + 1);

        temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
    }

    return ((uint16_t)temph);

}

/**
  * @brief  Checks the specified analog watchdog channel status.
  * @param   Channel: specify the channel of which to check the analog watchdog
  * can be one of the values of @ref ADC1_Channel_TypeDef.
  * @retval FlagStatus Status of the analog watchdog.
  */
_Bool ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
{
    uint8_t status = 0;

    /* Check the parameters */
    ((void)0);

    if (Channel < (uint8_t)8)
    {
        status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
    }
    else /* Channel = 8 | 9 */
    {
        status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
    }

    return ((_Bool)status);
}

/**
  * @brief  Checks the specified ADC1 flag status.
  * @param   Flag: ADC1 flag.
  * can be one of the values of @ref ADC1_Flag_TypeDef.
  * @retval FlagStatus Status of the ADC1 flag.
  */
_Bool ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
{
    uint8_t flagstatus = 0;
    uint8_t temp = 0;

    /* Check the parameters */
    ((void)0);

    if ((Flag & 0x0F) == 0x01)
    {
        /* Get OVR flag status */
        flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
    }
    else if ((Flag & 0xF0) == 0x10)
    {
        /* Get analog watchdog channel status */
        temp = (uint8_t)(Flag & (uint8_t)0x0F);
        if (temp < 8)
        {
            flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
        }
        else
        {
            flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
        }
    }
    else  /* Get EOC | AWD flag status */
    {
        flagstatus = (uint8_t)(ADC1->CSR & Flag);
    }
    return ((_Bool)flagstatus);

}

/**
  * @brief  Clear the specified ADC1 Flag.
  * @param   Flag: ADC1 flag.
  * can be one of the values of @ref ADC1_Flag_TypeDef.
  * @retval None
  */
void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
{
    uint8_t temp = 0;

    /* Check the parameters */
    ((void)0);

    if ((Flag & 0x0F) == 0x01)
    {
        /* Clear OVR flag status */
        ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
    }
    else if ((Flag & 0xF0) == 0x10)
    {
        /* Clear analog watchdog channel status */
        temp = (uint8_t)(Flag & (uint8_t)0x0F);
        if (temp < 8)
        {
            ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
        }
        else
        {
            ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
        }
    }
    else  /* Clear EOC | AWD flag status */
    {
        ADC1->CSR &= (uint8_t) (~Flag);
    }
}

/**
  * @brief  Returns the specified pending bit status
  * @param   ITPendingBit : the IT pending bit to check.
  * This parameter can be one of the following values:
  *    - ADC1_IT_AWD   : Analog WDG IT status
  *    - ADC1_IT_AWS0 : Analog channel 0 IT status
  *    - ADC1_IT_AWS1 : Analog channel 1 IT status
  *    - ADC1_IT_AWS2 : Analog channel 2 IT status
  *    - ADC1_IT_AWS3 : Analog channel 3 IT status
  *    - ADC1_IT_AWS4 : Analog channel 4 IT status
  *    - ADC1_IT_AWS5 : Analog channel 5 IT status
  *    - ADC1_IT_AWS6 : Analog channel 6 IT status
  *    - ADC1_IT_AWS7 : Analog channel 7 IT status
  *    - ADC1_IT_AWS8 : Analog channel 8 IT status
  *    - ADC1_IT_AWS9 : Analog channel 9 IT status
  *    - ADC1_IT_EOC    : EOC pending bit
  * @retval ITStatus: status of the specified pending bit.
  */
_Bool ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
{
    _Bool itstatus = 0;
    uint8_t temp = 0;

    /* Check the parameters */
    ((void)0);

    if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
    {
        /* Get analog watchdog channel status */
        temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
        if (temp < 8)
        {
            itstatus = (_Bool)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
        }
        else
        {
            itstatus = (_Bool)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
        }
    }
    else  /* Get EOC | AWD flag status */
    {
        itstatus = (_Bool)(ADC1->CSR & (uint8_t)ITPendingBit);
    }
    return ((_Bool)itstatus);

}

/**
  * @brief  Clear the ADC1 End of Conversion pending bit.
  * @param   ITPendingBit : the IT pending bit to clear.
  * This parameter can be one of the following values:
  *    - ADC1_IT_AWD   : Analog WDG IT status
  *    - ADC1_IT_AWS0 : Analog channel 0 IT status
  *    - ADC1_IT_AWS1 : Analog channel 1 IT status
  *    - ADC1_IT_AWS2 : Analog channel 2 IT status
  *    - ADC1_IT_AWS3 : Analog channel 3 IT status
  *    - ADC1_IT_AWS4 : Analog channel 4 IT status
  *    - ADC1_IT_AWS5 : Analog channel 5 IT status
  *    - ADC1_IT_AWS6 : Analog channel 6 IT status
  *    - ADC1_IT_AWS7 : Analog channel 7 IT status
  *    - ADC1_IT_AWS8 : Analog channel 8 IT status
  *    - ADC1_IT_AWS9 : Analog channel 9 IT status
  *    - ADC1_IT_EOC  : EOC pending bit
  * @retval None
  */
void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
{
    uint8_t temp = 0;

    /* Check the parameters */
    ((void)0);

    if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
    {
        /* Clear analog watchdog channel status */
        temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
        if (temp < 8)
        {
            ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
        }
        else
        {
            ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
        }
    }
    else  /* Clear EOC | AWD flag status */
    {
        ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
    }
}

/**
  * @}
  */
  
/**
  * @}
  */
  
/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
