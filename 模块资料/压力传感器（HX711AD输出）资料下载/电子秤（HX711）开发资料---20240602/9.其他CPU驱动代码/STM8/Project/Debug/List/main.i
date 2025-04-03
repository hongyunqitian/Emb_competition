#line 1 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\USER\\main.c"
#line 1 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"
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
#line 75 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"


/* Comment the line below if you will not use the peripherals drivers.
   In this case, these drivers will not be included and the application code will be
   based on direct access to peripherals registers */



/**
  * @brief  In the following line adjust the value of External High Speed oscillator (HSE)
   used in your application

   Tip: To avoid modifying this file each time you need to use different HSE, you
        can define the HSE value in your toolchain compiler preprocessor.
  */
#line 97 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

/**
  * @brief  Definition of Device on-chip RC oscillator frequencies
  */



#line 130 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

/* For FLASH routines, select whether pointer will be declared as near (2 bytes,
   to handle code smaller than 64KB) or far (3 bytes, to handle code larger 
   than 64K) */





/*!< Used with memory Models for code higher than 64K */



/* Uncomment the line below to enable the FLASH functions execution from RAM */

/* #define RAM_EXECUTION  (1) */


#line 159 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

/*!< [31:16] STM8S Standard Peripheral Library main version */
#line 169 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

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
#line 211 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"



//typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus, BitStatus, BitAction;
#line 221 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

//typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;






//typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;




#line 243 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

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
#line 370 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"
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

#line 532 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/** @addtogroup CLK_Registers_Bits_Definition
  * @{
  */
#line 546 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"
















#line 573 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"



















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

#line 674 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/** @addtogroup TIM1_Registers_Bits_Definition
  * @{
  */
/* CR1*/
#line 690 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"
/* CR2*/




/* SMCR*/



/*ETR*/




/*IER*/
#line 713 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"
/*SR1*/
#line 722 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"
/*SR2*/




/*EGR*/
#line 736 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"
/*CCMR*/
#line 743 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"


/*CCER1*/
#line 754 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"
/*CCER2*/
#line 761 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"
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
#line 794 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"
/*DTR*/

/*OISR*/
#line 804 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"
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

#line 868 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

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

#line 984 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

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

#line 1074 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

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

#line 1164 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

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
#line 1274 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

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

#line 1354 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/** @addtogroup I2C_Registers_Bits_Definition
  * @{
  */






















#line 1391 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"
























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

#line 1529 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

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

#line 1710 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/** @addtogroup SPI_Registers_Bits_Definition
  * @{
  */

#line 1725 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

#line 1733 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"






#line 1746 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

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

#line 1786 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/** @addtogroup UART1_Registers_Bits_Definition
  * @{
  */

#line 1803 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"






#line 1817 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

#line 1826 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

#line 1833 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"












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

#line 1886 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/** @addtogroup UART2_Registers_Bits_Definition
  * @{
  */

#line 1903 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"






#line 1917 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

#line 1926 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

#line 1933 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"












#line 1951 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

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

#line 1989 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/** @addtogroup UART3_Registers_Bits_Definition
  * @{
  */

#line 2006 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"






#line 2020 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

#line 2029 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"









#line 2044 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

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
#line 2231 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

/* CAN Master Status Register bits */
#line 2239 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

/* CAN Transmit Status Register bits */
#line 2248 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

#line 2256 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"
/* CAN Receive FIFO Register bits */





/* CAN Interrupt Register bits */







/* CAN diagnostic Register bits */







/* CAN page select Register bits */




/*********************Tx MailBox & Fifo Page common bits***********************/
#line 2290 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"








/*************************Filter Page******************************************/

/* CAN Error Status Register bits */
#line 2308 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

/* CAN Error Status Register bits */






/* CAN transmit error counter Register bits(CAN_TECR) */
#line 2325 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

/* CAN RECEIVE error counter Register bits(CAN_TECR) */
#line 2335 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

/* CAN filter mode register bits (CAN_FMR) */
#line 2345 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"






/* CAN filter Config register bits (CAN_FCR) */
#line 2358 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

#line 2371 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"



/**
  * @}
  */

/** @addtogroup CAN_Registers_Reset_Value
  * @{
  */

#line 2390 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

#line 2400 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"





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
#line 2486 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

/**
  * @}
  */

/******************************************************************************/
/*                          Peripherals declarations                          */
/******************************************************************************/
































































































#line 1 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\USER\\stm8s_conf.h"
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
#line 28 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\USER\\stm8s_conf.h"

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
#line 42 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\USER\\stm8s_conf.h"
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
#line 45 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\USER\\stm8s_conf.h"
/*#include "stm8s_i2c.h"*/
/*#include "stm8s_itc.h"*/
/*#include "stm8s_iwdg.h"*/
/*#include "stm8s_rst.h"*/
/*#include "stm8s_spi.h"*/
/*#include "stm8s_tim1.h"*/

 /*#include "stm8s_tim2.h"*/



 /*#include "stm8s_tim3.h"*/


 /*#include "stm8s_tim4.h"*/
#line 67 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\USER\\stm8s_conf.h"
 /*#include "stm8s_uart1.h"*/





/* #include "stm8s_uart3.h"*/

/*#include "stm8s_wwdg.h"*/

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Uncomment the line below to expanse the "assert_param" macro in the
   Standard Peripheral Library drivers code */


/* Exported macro ------------------------------------------------------------*/
#line 100 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\USER\\stm8s_conf.h"



/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
#line 2592 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"


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

#line 2618 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"
#line 2627 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

/*============================== Interrupt vector Handling ========================*/











#line 2650 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s.h"

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
#line 2 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\USER\\main.c"
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
#line 5 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\USER\\main.c"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\stdio.h"
/* stdio.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */




  #pragma system_include


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2010 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __INTRINSIC
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that intrinsic support could be turned off
 * individually for each file.
 */










/* __STM8ABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */






#line 67 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\ycheck.h"




/* A definiton for a function of what effects it has.
   NS  = no_state, i.e. it uses no internal or external state. It may write
         to errno though
   NE  = no_state, no_errno,  i.e. it uses no internal or external state,
         not even writing to errno. 
   NRx = no_read(x), i.e. it doesn't read through pointer parameter x.
   NWx = no_write(x), i.e. it doesn't write through pointer parameter x.
*/

#line 99 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\ycheck.h"









#line 11 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\stdio.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"
/* yvals.h internal configuration header file. */
/* Copyright 2001-2010 IAR Systems AB. */





  #pragma system_include


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2010 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __INTRINSIC
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that intrinsic support could be turned off
 * individually for each file.
 */










/* __STM8ABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */






#line 67 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\ycheck.h"

#line 12 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"

                /* Convenience macros */









/* Used to refer to '__stm8abi' symbols in the library. */ 


                /* Versions */










/*
 * Support for some C99 or other symbols
 *
 * This setting makes available some macros, functions, etc that are
 * beneficial.
 *
 * Default is to include them.
 *
 * Disabling this in C++ mode will not compile (some C++ functions uses C99
 * functionality).
 */


  /* Default turned on when compiling C++, EC++, or C99. */
#line 59 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"





#line 70 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"

                /* Configuration */
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\DLib_Defaults.h"
/***************************************************
 *
 * DLib_Defaults.h is the library configuration manager.
 *
 * Copyright 2003-2010 IAR Systems AB.  
 *
 * This configuration header file performs the following tasks:
 *
 * 1. Includes the configuration header file, defined by _DLIB_CONFIG_FILE,
 *    that sets up a particular runtime environment.
 *
 * 2. Includes the product configuration header file, DLib_Product.h, that
 *    specifies default values for the product and makes sure that the
 *    configuration is valid.
 *
 * 3. Sets up default values for all remaining configuration symbols.
 *
 * This configuration header file, the one defined by _DLIB_CONFIG_FILE, and
 * DLib_Product.h configures how the runtime environment should behave. This
 * includes all system headers and the library itself, i.e. all system headers
 * includes this configuration header file, and the library has been built
 * using this configuration header file.
 *
 ***************************************************
 *
 * DO NOT MODIFY THIS FILE!
 *
 ***************************************************/





  #pragma system_include


/* Include the main configuration header file. */
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\LIB\\dlstm8smf.h"
/* Customer-specific DLib configuration. */
/* Copyright (C) 2003 IAR Systems.  All rights reserved. */





  #pragma system_include


/* Turn on locale support. */


/* Turn on FILE descriptor support. */


/* Turn on multibyte formatting. */


/* Turn on support for hex-floats in strtod. */


#line 40 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\DLib_Defaults.h"
  /* _DLIB_CONFIG_FILE_STRING is the quoted variant of above */
#line 47 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\DLib_Defaults.h"

/* Include the product specific header file. */
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\DLib_Product.h"
/* STM8-specific DLib configuration. */
/* Copyright 2010 IAR Systems AB.    */
/* $Revision: 3172 $                  */






  #pragma system_include


/*
 * Avoid large data structures and too much precision...
 */


/*
 * Use function pointers directly in difunct table instead of offsets.
 */


/*
 * Use hand coded floating point support functions
 */


/*
 * Use short pointers in float helper funcitons
 */


/*
 * No weak calls in the library
 */


/*
 * Uncomment the following line to enable thread support
 */
/*
#define _DLIB_THREAD_SUPPORT 3
*/



#line 51 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\DLib_Defaults.h"



/*
 * The remainder of the file sets up defaults for a number of
 * configuration symbols, each corresponds to a feature in the
 * libary.
 *
 * The value of the symbols should either be 1, if the feature should
 * be supported, or 0 if it shouldn't. (Except where otherwise
 * noted.)
 */


/*
 * Small or Large target
 *
 * This define determines whether the target is large or small. It must be 
 * setup in the DLib_Product header or in the compiler itself.
 *
 * For a small target some functionality in the library will not deliver 
 * the best available results. For instance the _accurate variants will not use
 * the extra precision packet for large arguments.
 * 
 */







/*
 * File handling
 *
 * Determines whether FILE descriptors and related functions exists or not.
 * When this feature is selected, i.e. set to 1, then FILE descriptors and
 * related functions (e.g. fprintf, fopen) exist. All files, even stdin,
 * stdout, and stderr will then be handled with a file system mechanism that
 * buffers files before accessing the lowlevel I/O interface (__open, __read,
 * __write, etc).
 *
 * If not selected, i.e. set to 0, then FILE descriptors and related functions
 * (e.g. fprintf, fopen) does not exist. All functions that normally uses
 * stderr will use stdout instead. Functions that uses stdout and stdin (like
 * printf and scanf) will access the lowlevel I/O interface directly (__open,
 * __read, __write, etc), i.e. there will not be any buffering.
 *
 * The default is not to have support for FILE descriptors.
 */





/*
 * Use static buffers for stdout
 *
 * This setting controls whether the stream stdout uses a static 80 bytes
 * buffer or uses a one byte buffer allocated in the file descriptor. This
 * setting is only applicable if the FILE descriptors are enabled above.
 *
 * Default is to use a static 80 byte buffer.
 */





/*
 * Support of locale interface
 *
 * "Locale" is the system in C that support language- and
 * contry-specific settings for a number of areas, including currency
 * symbols, date and time, and multibyte encodings.
 *
 * This setting determines whether the locale interface exist or not.
 * When this feature is selected, i.e. set to 1, the locale interface exist
 * (setlocale, etc). A number of preselected locales can be activated during
 * runtime. The preselected locales and encodings is choosen by defining any
 * number of _LOCALE_USE_xxx and _ENCODING_USE_xxx symbols. The application
 * will start with the "C" locale choosen. (Single byte encoding is always
 * supported in this mode.)
 *
 *
 * If not selected, i.e. set to 0, the locale interface (setlocale, etc) does
 * not exist. One preselected locale and one preselected encoding is then used
 * directly. That locale can not be changed during runtime. The preselected
 * locale and encoding is choosen by defining at most one of _LOCALE_USE_xxx
 * and at most one of _ENCODING_USE_xxx. The default is to use the "C" locale
 * and the single byte encoding, respectively.
 *
 * The default is not to have support for the locale interface with the "C"
 * locale and the single byte encoding.
 *
 * Supported locales
 * -----------------
 * _LOCALE_USE_C                  C standard locale (the default)
 * _LOCALE_USE_POSIX ISO-8859-1   Posix locale
 * _LOCALE_USE_CS_CZ ISO-8859-2   Czech language locale for Czech Republic
 * _LOCALE_USE_DA_DK ISO-8859-1   Danish language locale for Denmark
 * _LOCALE_USE_DA_EU ISO-8859-15  Danish language locale for Europe
 * _LOCALE_USE_DE_AT ISO-8859-1   German language locale for Austria
 * _LOCALE_USE_DE_BE ISO-8859-1   German language locale for Belgium
 * _LOCALE_USE_DE_CH ISO-8859-1   German language locale for Switzerland
 * _LOCALE_USE_DE_DE ISO-8859-1   German language locale for Germany
 * _LOCALE_USE_DE_EU ISO-8859-15  German language locale for Europe
 * _LOCALE_USE_DE_LU ISO-8859-1   German language locale for Luxemburg
 * _LOCALE_USE_EL_EU ISO-8859-7x  Greek language locale for Europe
 *                                (Euro symbol added)
 * _LOCALE_USE_EL_GR ISO-8859-7   Greek language locale for Greece
 * _LOCALE_USE_EN_AU ISO-8859-1   English language locale for Australia
 * _LOCALE_USE_EN_CA ISO-8859-1   English language locale for Canada
 * _LOCALE_USE_EN_DK ISO_8859-1   English language locale for Denmark
 * _LOCALE_USE_EN_EU ISO-8859-15  English language locale for Europe
 * _LOCALE_USE_EN_GB ISO-8859-1   English language locale for United Kingdom
 * _LOCALE_USE_EN_IE ISO-8859-1   English language locale for Ireland
 * _LOCALE_USE_EN_NZ ISO-8859-1   English language locale for New Zealand
 * _LOCALE_USE_EN_US ISO-8859-1   English language locale for USA
 * _LOCALE_USE_ES_AR ISO-8859-1   Spanish language locale for Argentina
 * _LOCALE_USE_ES_BO ISO-8859-1   Spanish language locale for Bolivia
 * _LOCALE_USE_ES_CL ISO-8859-1   Spanish language locale for Chile
 * _LOCALE_USE_ES_CO ISO-8859-1   Spanish language locale for Colombia
 * _LOCALE_USE_ES_DO ISO-8859-1   Spanish language locale for Dominican Republic
 * _LOCALE_USE_ES_EC ISO-8859-1   Spanish language locale for Equador
 * _LOCALE_USE_ES_ES ISO-8859-1   Spanish language locale for Spain
 * _LOCALE_USE_ES_EU ISO-8859-15  Spanish language locale for Europe
 * _LOCALE_USE_ES_GT ISO-8859-1   Spanish language locale for Guatemala
 * _LOCALE_USE_ES_HN ISO-8859-1   Spanish language locale for Honduras
 * _LOCALE_USE_ES_MX ISO-8859-1   Spanish language locale for Mexico
 * _LOCALE_USE_ES_PA ISO-8859-1   Spanish language locale for Panama
 * _LOCALE_USE_ES_PE ISO-8859-1   Spanish language locale for Peru
 * _LOCALE_USE_ES_PY ISO-8859-1   Spanish language locale for Paraguay
 * _LOCALE_USE_ES_SV ISO-8859-1   Spanish language locale for Salvador
 * _LOCALE_USE_ES_US ISO-8859-1   Spanish language locale for USA
 * _LOCALE_USE_ES_UY ISO-8859-1   Spanish language locale for Uruguay
 * _LOCALE_USE_ES_VE ISO-8859-1   Spanish language locale for Venezuela
 * _LOCALE_USE_ET_EE ISO-8859-1   Estonian language for Estonia
 * _LOCALE_USE_EU_ES ISO-8859-1   Basque language locale for Spain
 * _LOCALE_USE_FI_EU ISO-8859-15  Finnish language locale for Europe
 * _LOCALE_USE_FI_FI ISO-8859-1   Finnish language locale for Finland
 * _LOCALE_USE_FO_FO ISO-8859-1   Faroese language locale for Faroe Islands
 * _LOCALE_USE_FR_BE ISO-8859-1   French language locale for Belgium
 * _LOCALE_USE_FR_CA ISO-8859-1   French language locale for Canada
 * _LOCALE_USE_FR_CH ISO-8859-1   French language locale for Switzerland
 * _LOCALE_USE_FR_EU ISO-8859-15  French language locale for Europe
 * _LOCALE_USE_FR_FR ISO-8859-1   French language locale for France
 * _LOCALE_USE_FR_LU ISO-8859-1   French language locale for Luxemburg
 * _LOCALE_USE_GA_EU ISO-8859-15  Irish language locale for Europe
 * _LOCALE_USE_GA_IE ISO-8859-1   Irish language locale for Ireland
 * _LOCALE_USE_GL_ES ISO-8859-1   Galician language locale for Spain
 * _LOCALE_USE_HR_HR ISO-8859-2   Croatian language locale for Croatia
 * _LOCALE_USE_HU_HU ISO-8859-2   Hungarian language locale for Hungary
 * _LOCALE_USE_ID_ID ISO-8859-1   Indonesian language locale for Indonesia
 * _LOCALE_USE_IS_EU ISO-8859-15  Icelandic language locale for Europe
 * _LOCALE_USE_IS_IS ISO-8859-1   Icelandic language locale for Iceland
 * _LOCALE_USE_IT_EU ISO-8859-15  Italian language locale for Europe
 * _LOCALE_USE_IT_IT ISO-8859-1   Italian language locale for Italy
 * _LOCALE_USE_IW_IL ISO-8859-8   Hebrew language locale for Israel
 * _LOCALE_USE_KL_GL ISO-8859-1   Greenlandic language locale for Greenland
 * _LOCALE_USE_LT_LT   BALTIC     Lithuanian languagelocale for Lithuania
 * _LOCALE_USE_LV_LV   BALTIC     Latvian languagelocale for Latvia
 * _LOCALE_USE_NL_BE ISO-8859-1   Dutch language locale for Belgium
 * _LOCALE_USE_NL_EU ISO-8859-15  Dutch language locale for Europe
 * _LOCALE_USE_NL_NL ISO-8859-9   Dutch language locale for Netherlands
 * _LOCALE_USE_NO_EU ISO-8859-15  Norwegian language locale for Europe
 * _LOCALE_USE_NO_NO ISO-8859-1   Norwegian language locale for Norway
 * _LOCALE_USE_PL_PL ISO-8859-2   Polish language locale for Poland
 * _LOCALE_USE_PT_BR ISO-8859-1   Portugese language locale for Brazil
 * _LOCALE_USE_PT_EU ISO-8859-15  Portugese language locale for Europe
 * _LOCALE_USE_PT_PT ISO-8859-1   Portugese language locale for Portugal
 * _LOCALE_USE_RO_RO ISO-8859-2   Romanian language locale for Romania
 * _LOCALE_USE_RU_RU ISO-8859-5   Russian language locale for Russia
 * _LOCALE_USE_SL_SI ISO-8859-2   Slovenian language locale for Slovenia
 * _LOCALE_USE_SV_EU ISO-8859-15  Swedish language locale for Europe
 * _LOCALE_USE_SV_FI ISO-8859-1   Swedish language locale for Finland
 * _LOCALE_USE_SV_SE ISO-8859-1   Swedish language locale for Sweden
 * _LOCALE_USE_TR_TR ISO-8859-9   Turkish language locale for Turkey
 *
 *  Supported encodings
 *  -------------------
 * n/a                            Single byte (used if no other is defined).
 * _ENCODING_USE_UTF8             UTF8 encoding.
 */






/* We need to have the "C" locale if we have full locale support. */






/*
 * Support of multibytes in printf- and scanf-like functions
 *
 * This is the default value for _DLIB_PRINTF_MULTIBYTE and
 * _DLIB_SCANF_MULTIBYTE. See them for a description.
 *
 * Default is to not have support for multibytes in printf- and scanf-like
 * functions.
 */






/*
 * Throw handling in the EC++ library
 *
 * This setting determines what happens when the EC++ part of the library
 * fails (where a normal C++ library 'throws').
 *
 * The following alternatives exists (setting of the symbol):
 * 0                - The application does nothing, i.e. continues with the
 *                    next statement.
 * 1                - The application terminates by calling the 'abort'
 *                    function directly.
 * <anything else>  - An object of class "exception" is created.  This
 *                    object contains a string describing the problem.
 *                    This string is later emitted on "stderr" before
 *                    the application terminates by calling the 'abort'
 *                    function directly.
 *
 * Default is to do nothing.
 */






/*
 * Hexadecimal floating-point numbers in strtod
 *
 * If selected, i.e. set to 1, strtod supports C99 hexadecimal floating-point
 * numbers. This also enables hexadecimal floating-points in internal functions
 * used for converting strings and wide strings to float, double, and long
 * double.
 *
 * If not selected, i.e. set to 0, C99 hexadecimal floating-point numbers
 * aren't supported.
 *
 * Default is not to support hexadecimal floating-point numbers.
 */






/*
 * Printf configuration symbols.
 *
 * All the configuration symbols described further on controls the behaviour
 * of printf, sprintf, and the other printf variants.
 *
 * The library proves four formatters for printf: 'tiny', 'small',
 * 'large', and 'default'.  The setup in this file controls all except
 * 'tiny'.  Note that both small' and 'large' explicitly removes
 * some features.
 */

/*
 * Handle multibytes in printf
 *
 * This setting controls whether multibytes and wchar_ts are supported in
 * printf. Set to 1 to support them, otherwise set to 0.
 *
 * See _DLIB_FORMATTED_MULTIBYTE for the default setting.
 */





/*
 * Long long formatting in printf
 *
 * This setting controls long long support (%lld) in printf. Set to 1 to
 * support it, otherwise set to 0.

 * Note, if long long should not be supported and 'intmax_t' is larger than
 * an ordinary 'long', then %jd and %jn will not be supported.
 *
 * Default is to support long long formatting.
 */

#line 351 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\DLib_Defaults.h"






/*
 * Floating-point formatting in printf
 *
 * This setting controls whether printf supports floating-point formatting.
 * Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support floating-point formatting.
 */





/*
 * Hexadecimal floating-point formatting in printf
 *
 * This setting controls whether the %a format, i.e. the output of
 * floating-point numbers in the C99 hexadecimal format. Set to 1 to support
 * it, otherwise set to 0.
 *
 * Default is to support %a in printf.
 */





/*
 * Output count formatting in printf
 *
 * This setting controls whether the output count specifier (%n) is supported
 * or not in printf. Set to 1 to support it, otherwise set to 0.
 *
 * Default is to support %n in printf.
 */





/*
 * Support of qualifiers in printf
 *
 * This setting controls whether qualifiers that enlarges the input value
 * [hlLjtz] is supported in printf or not. Set to 1 to support them, otherwise
 * set to 0. See also _DLIB_PRINTF_INT_TYPE_IS_INT and
 * _DLIB_PRINTF_INT_TYPE_IS_LONG.
 *
 * Default is to support [hlLjtz] qualifiers in printf.
 */





/*
 * Support of flags in printf
 *
 * This setting controls whether flags (-+ #0) is supported in printf or not.
 * Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support flags in printf.
 */





/*
 * Support widths and precisions in printf
 *
 * This setting controls whether widths and precisions are supported in printf.
 * Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support widths and precisions in printf.
 */





/*
 * Support of unsigned integer formatting in printf
 *
 * This setting controls whether unsigned integer formatting is supported in
 * printf. Set to 1 to support it, otherwise set to 0.
 *
 * Default is to support unsigned integer formatting in printf.
 */





/*
 * Support of signed integer formatting in printf
 *
 * This setting controls whether signed integer formatting is supported in
 * printf. Set to 1 to support it, otherwise set to 0.
 *
 * Default is to support signed integer formatting in printf.
 */





/*
 * Support of formatting anything larger than int in printf
 *
 * This setting controls if 'int' should be used internally in printf, rather
 * than the largest existing integer type. If 'int' is used, any integer or
 * pointer type formatting use 'int' as internal type even though the
 * formatted type is larger. Set to 1 to use 'int' as internal type, otherwise
 * set to 0.
 *
 * See also next configuration.
 *
 * Default is to internally use largest existing internally type.
 */





/*
 * Support of formatting anything larger than long in printf
 *
 * This setting controls if 'long' should be used internally in printf, rather
 * than the largest existing integer type. If 'long' is used, any integer or
 * pointer type formatting use 'long' as internal type even though the
 * formatted type is larger. Set to 1 to use 'long' as internal type,
 * otherwise set to 0.
 *
 * See also previous configuration.
 *
 * Default is to internally use largest existing internally type.
 */









/*
 * Emit a char a time in printf
 *
 * This setting controls internal output handling. If selected, i.e. set to 1,
 * then printf emits one character at a time, which requires less code but
 * can be slightly slower for some types of output.
 *
 * If not selected, i.e. set to 0, then printf buffers some outputs.
 *
 * Note that it is recommended to either use full file support (see
 * _DLIB_FILE_DESCRIPTOR) or -- for debug output -- use the linker
 * option "-e__write_buffered=__write" to enable buffered I/O rather
 * than deselecting this feature.
 */






/*
 * Scanf configuration symbols.
 *
 * All the configuration symbols described here controls the
 * behaviour of scanf, sscanf, and the other scanf variants.
 *
 * The library proves three formatters for scanf: 'small', 'large',
 * and 'default'.  The setup in this file controls all, however both
 * 'small' and 'large' explicitly removes some features.
 */

/*
 * Handle multibytes in scanf
 *
 * This setting controls whether multibytes and wchar_t:s are supported in
 * scanf. Set to 1 to support them, otherwise set to 0.
 *
 * See _DLIB_FORMATTED_MULTIBYTE for the default.
 */





/*
 * Long long formatting in scanf
 *
 * This setting controls whether scanf supports long long support (%lld). It
 * also controls, if 'intmax_t' is larger than an ordinary 'long', i.e. how
 * the %jd and %jn specifiers behaves. Set to 1 to support them, otherwise set
 * to 0.
 *
 * Default is to support long long formatting in scanf.
 */

#line 566 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\DLib_Defaults.h"





/*
 * Support widths in scanf
 *
 * This controls whether scanf supports widths. Set to 1 to support them,
 * otherwise set to 0.
 *
 * Default is to support widths in scanf.
 */





/*
 * Support qualifiers [hjltzL] in scanf
 *
 * This setting controls whether scanf supports qualifiers [hjltzL] or not. Set
 * to 1 to support them, otherwise set to 0.
 *
 * Default is to support qualifiers in scanf.
 */





/*
 * Support floating-point formatting in scanf
 *
 * This setting controls whether scanf supports floating-point formatting. Set
 * to 1 to support them, otherwise set to 0.
 *
 * Default is to support floating-point formatting in scanf.
 */





/*
 * Support output count formatting (%n)
 *
 * This setting controls whether scanf supports output count formatting (%n).
 * Set to 1 to support it, otherwise set to 0.
 *
 * Default is to support output count formatting in scanf.
 */





/*
 * Support scansets ([]) in scanf
 *
 * This setting controls whether scanf supports scansets ([]) or not. Set to 1
 * to support them, otherwise set to 0.
 *
 * Default is to support scansets in scanf.
 */





/*
 * Support signed integer formatting in scanf
 *
 * This setting controls whether scanf supports signed integer formatting or
 * not. Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support signed integer formatting in scanf.
 */





/*
 * Support unsigned integer formatting in scanf
 *
 * This setting controls whether scanf supports unsigned integer formatting or
 * not. Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support unsigned integer formatting in scanf.
 */





/*
 * Support assignment suppressing [*] in scanf
 *
 * This setting controls whether scanf supports assignment suppressing [*] or
 * not. Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support assignment suppressing in scanf.
 */





/*
 * Handle multibytes in asctime and strftime.
 *
 * This setting controls whether multibytes and wchar_ts are
 * supported.Set to 1 to support them, otherwise set to 0.
 *
 * See _DLIB_FORMATTED_MULTIBYTE for the default setting.
 */





/*
 * True if "qsort" should be implemented using bubble sort.
 *
 * Bubble sort is less efficient than quick sort but requires less RAM
 * and ROM resources.
 */





/*
 * Set Buffert size used in qsort
 */





/*
 * The default "rand" function uses an array of 32 long:s of memory to
 * store the current state.
 *
 * The simple "rand" function uses only a single long. However, the
 * quality of the generated psuedo-random numbers are not as good as
 * the default implementation.
 */





/*
 * Wide character and multi byte character support in library.
 */





/*
 * Set attributes on the function used by the C-SPY debug interface to set a
 * breakpoint in.
 */





/*
 * Support threading in the library
 *
 * 0    No thread support
 * 1    Thread support with a, b, and d.
 * 2    Thread support with a, b, and e.
 * 3    Thread support with all thread-local storage in a dynamically allocated
 *        memory area and a, and b.
 *      a. Lock on heap accesses
 *      b. Optional lock on file accesses (see _DLIB_FILE_OP_LOCKS below)
 *      d. Use an external thread-local storage interface for all the
 *         libraries static and global variables.
 *      e. Static and global variables aren't safe for access from several
 *         threads.
 *
 * Note that if locks are used the following symbols must be defined:
 *
 *   _DLIB_THREAD_LOCK_ONCE_TYPE
 *   _DLIB_THREAD_LOCK_ONCE_MACRO(control_variable, init_function)
 *   _DLIB_THREAD_LOCK_ONCE_TYPE_INIT
 *
 * They will be used to initialize the needed locks only once. TYPE is the
 * type for the static control variable, MACRO is the expression that will be
 * evaluated at each usage of a lock, and INIT is the initializer for the
 * control variable.
 *
 * Note that if thread model 3 is used the symbol _DLIB_TLS_POINTER must be
 * defined. It is a thread local pointer to a dynamic memory area that
 * contains all used TLS variables for the library. Optionally the following
 * symbols can be defined as well (default is to use the default const data
 * and data memories):
 *
 *   _DLIB_TLS_INITIALIZER_MEMORY The memory to place the initializers for the
 *                                TLS memory area
 *   _DLIB_TLS_MEMORY             The memory to use for the TLS memory area. A
 *                                pointer to this memory must be castable to a
 *                                default pointer and back.
 *   _DLIB_TLS_REQUIRE_INIT       Set to 1 to require __cstart_init_tls
 *                                when needed to initialize the TLS data
 *                                segment for the main thread.
 *   _DLIB_TLS_SEGMENT_DATA       The name of the TLS RAM data segment
 *   _DLIB_TLS_SEGMENT_INIT       The name of the used to initialize the
 *                                TLS data segment.
 *
 * See DLib_Threads.h for a description of what interfaces needs to be
 * defined for thread support.
 */





/*
 * Used by products where one runtime library can be used by applications
 * with different data models, in order to reduce the total number of
 * libraries required. Typically, this is used when the pointer types does
 * not change over the data models used, but the placement of data variables
 * or/and constant variables do.
 *
 * If defined, this symbol is typically defined to the memory attribute that
 * is used by the runtime library. The actual define must use a
 * _Pragma("type_attribute = xxx") construct. In the header files, it is used
 * on all statically linked data objects seen by the application.
 */




#line 812 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\DLib_Defaults.h"


/*
 * Turn on support for the Target-specific ABI. The ABI is based on the
 * ARM AEABI. A target, except ARM, may deviate from it.
 */

#line 826 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\DLib_Defaults.h"


  /* Possible AEABI deviations */
#line 836 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\DLib_Defaults.h"

#line 844 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\DLib_Defaults.h"
  /*
   * The "difunc" table contains information about C++ objects that
   * should be dynamically initialized, where each entry in the table
   * represents an initialization function that should be called. When
   * the symbol _DLIB_STM8ABI_DIFUNC_CONTAINS_OFFSETS is true, each
   * entry in the table is encoded as an offset from the entry
   * location. When false, the entries contain the actual addresses to
   * call.
   */






/*
 * Turn on usage of a pragma to tell the linker the number of elements used
 * in a setjmp jmp_buf.
 */





/*
 * If true, the product supplies a "DLib_Product_string.h" file that
 * is included from "string.h".
 */





/*
 * Determine whether the math fma routines are fast or not.
 */




/*
 * Rtti support.
 */

#line 899 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\DLib_Defaults.h"

/*
 * Use the "pointers to short" or "pointers to long" implementation of 
 * the basic floating point routines (like Dnorm, Dtest, Dscale, and Dunscale).
 */




/*
 * Use 64-bit long long as intermediary type in Dtest, and fabs.
 * Default is to do this if long long is 64-bits.
 */




/*
 * Favor speed versus some size enlargements in floating point functions.
 */




/*
 * Include dlmalloc as an alternative heap manager in product.
 *
 * Typically, an application will use a "malloc" heap manager that is
 * relatively small but not that efficient. An application can
 * optionally use the "dlmalloc" package, which provides a more
 * effective "malloc" heap manager, if it is included in the product
 * and supported by the settings.
 *
 * See the product documentation on how to use it, and whether or not
 * it is included in the product.
 */

  /* size_t/ptrdiff_t must be a 4 bytes unsigned integer. */
#line 943 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\DLib_Defaults.h"





/*
 * Allow the 64-bit time_t interface?
 *
 * Default is yes if long long is 64 bits.
 */

  #pragma language = save 
  #pragma language = extended





  #pragma language = restore






/*
 * Is time_t 64 or 32 bits?
 *
 * Default is 32 bits.
 */




/*
 * Do we include math functions that demands lots of constant bytes?
 * (like erf, erfc, expm1, fma, lgamma, tgamma, and *_accurate)
 *
 */




/*
 * Set this to __weak, if supported.
 *
 */
#line 997 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\DLib_Defaults.h"


/*
 * Deleted options
 *
 */







#line 73 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"











                /* Floating-point */

/*
 * Whenever a floating-point type is equal to another, we try to fold those
 * two types into one. This means that if float == double then we fold float to
 * use double internally. Example sinf(float) will use _Sin(double, uint).
 *
 * _X_FNAME is a redirector for internal support routines. The X can be
 *          D (double), F (float), or L (long double). It redirects by using
 *          another prefix. Example calls to Dtest will be __iar_Dtest,
 *          __iar_FDtest, or __iarLDtest.
 * _X_FUN   is a redirector for functions visible to the customer. As above, the
 *          X can be D, F, or L. It redirects by using another suffix. Example
 *          calls to sin will be sin, sinf, or sinl.
 * _X_TYPE  The type that one type is folded to.
 * _X_PTRCAST is a redirector for a cast operation involving a pointer.
 * _X_CAST  is a redirector for a cast involving the float type.
 *
 * _FLOAT_IS_DOUBLE signals that all internal float routines aren't needed.
 * _LONG_DOUBLE_IS_DOUBLE signals that all internal long double routines
 *                        aren't needed.
 */
#line 147 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"





                /* NAMING PROPERTIES */


/* Has support for fixed point types */




/* Has support for secure functions (printf_s, scanf_s, etc) */
/* Will not compile if enabled */
#line 170 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"

/* Has support for complex C types */




/* If is Embedded C++ language */






/* If is true C++ language */






/* True C++ language setup */
#line 233 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"











                /* NAMESPACE CONTROL */
#line 292 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"









#line 308 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"








#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\xencoding_limits.h"
/* xencoding_limits.h internal header file */
/* Copyright 2003-2010 IAR Systems AB.  */





  #pragma system_include


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2010 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __INTRINSIC
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that intrinsic support could be turned off
 * individually for each file.
 */










/* __STM8ABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */






#line 67 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\ycheck.h"

#line 12 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\xencoding_limits.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"
/* yvals.h internal configuration header file. */
/* Copyright 2001-2010 IAR Systems AB. */

#line 707 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 13 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\xencoding_limits.h"

                                /* Multibyte encoding length. */


#line 24 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\xencoding_limits.h"








#line 38 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\xencoding_limits.h"



#line 55 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\xencoding_limits.h"



#line 317 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"



                /* FLOATING-POINT PROPERTIES */

                /* float properties */
#line 335 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"

                /* double properties */
#line 360 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"

                /* long double properties */
                /* (must be same as double) */




#line 382 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"


                /* INTEGER PROPERTIES */

                                /* MB_LEN_MAX */







  #pragma language=save
  #pragma language=extended
  typedef long long _Longlong;
  typedef unsigned long long _ULonglong;
  #pragma language=restore
#line 405 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"






  typedef unsigned short int _Wchart;
  typedef unsigned short int _Wintt;


#line 424 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"

#line 432 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"

                /* POINTER PROPERTIES */


typedef signed short int  _Ptrdifft;
typedef unsigned short int     _Sizet;

/* IAR doesn't support restrict  */


                /* stdarg PROPERTIES */





  typedef struct __va_list
  {
    char  *_Ap;
  } __va_list;
  typedef __va_list __Va_list;





__intrinsic __nounwind void __iar_Atexit(void (*)(void));


#line 471 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"
  typedef struct
  {       /* state of a multibyte translation */
    unsigned long _Wchar;      /* Used as an intermediary value (up to 32-bits) */
    unsigned long _State;      /* Used as a state value (only some bits used) */
  } _Mbstatet;






  typedef struct __FILE _Filet;




typedef struct
{       /* file position */

  _Longlong _Off;    /* can be system dependent */



  _Mbstatet _Wstate;
} _Fpost;







                /* THREAD AND LOCALE CONTROL */

#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\DLib_Threads.h"
/***************************************************
 *
 * DLib_Threads.h is the library threads manager.
 *
 * Copyright 2004-2010 IAR Systems AB.  
 *
 * This configuration header file sets up how the thread support in the library
 * should work.
 *
 ***************************************************
 *
 * DO NOT MODIFY THIS FILE!
 *
 ***************************************************/





  #pragma system_include


/*
 * DLib can support a multithreaded environment. The preprocessor symbol 
 * _DLIB_THREAD_SUPPORT governs the support. It can be 0 (no support), 
 * 1 (currently not supported), 2 (locks only), and 3 (simulated TLS and locks).
 */

/*
 * This header sets the following symbols that governs the rest of the
 * library:
 * ------------------------------------------
 * _DLIB_MULTI_THREAD     0 No thread support
 *                        1 Multithread support
 * _DLIB_GLOBAL_VARIABLES 0 Use external TLS interface for the libraries global
 *                          and static variables
 *                        1 Use a lock for accesses to the locale and no 
 *                          security for accesses to other global and static
 *                          variables in the library
 * _DLIB_FILE_OP_LOCKS    0 No file-atomic locks
 *                        1 File-atomic locks

 * _DLIB_COMPILER_TLS     0 No Thread-Local-Storage support in the compiler
 *                        1 Thread-Local-Storage support in the compiler
 * _DLIB_TLS_QUAL         The TLS qualifier, define only if _COMPILER_TLS == 1
 *
 * _DLIB_THREAD_MACRO_SETUP_DONE Whether to use the standard definitions of
 *                               TLS macros defined in xtls.h or the definitions
 *                               are provided here.
 *                        0 Use default macros
 *                        1 Macros defined for xtls.h
 *
 * _DLIB_THREAD_LOCK_ONCE_TYPE
 *                        type for control variable in once-initialization of 
 *                        locks
 * _DLIB_THREAD_LOCK_ONCE_MACRO(control_variable, init_function)
 *                        expression that will be evaluated at each lock access
 *                        to determine if an initialization must be done
 * _DLIB_THREAD_LOCK_ONCE_TYPE_INIT
 *                        initial value for the control variable
 *
 ****************************************************************************
 * Description
 * -----------
 *
 * If locks are to be used (_DLIB_MULTI_THREAD != 0), the following options
 * has to be used in ilink: 
 *   --redirect __iar_Locksyslock=__iar_Locksyslock_mtx
 *   --redirect __iar_Unlocksyslock=__iar_Unlocksyslock_mtx
 *   --redirect __iar_Lockfilelock=__iar_Lockfilelock_mtx
 *   --redirect __iar_Unlockfilelock=__iar_Unlockfilelock_mtx
 *   --keep     __iar_Locksyslock_mtx
 * and, if C++ is used, also:
 *   --redirect __iar_Initdynamicfilelock=__iar_Initdynamicfilelock_mtx
 *   --redirect __iar_Dstdynamicfilelock=__iar_Dstdynamicfilelock_mtx
 *   --redirect __iar_Lockdynamicfilelock=__iar_Lockdynamicfilelock_mtx
 *   --redirect __iar_Unlockdynamicfilelock=__iar_Unlockdynamicfilelock_mtx
 * Xlink uses similar options (-e and -g). The following lock interface must
 * also be implemented: 
 *   typedef void *__iar_Rmtx;                   // Lock info object
 *
 *   void __iar_system_Mtxinit(__iar_Rmtx *);    // Initialize a system lock
 *   void __iar_system_Mtxdst(__iar_Rmtx *);     // Destroy a system lock
 *   void __iar_system_Mtxlock(__iar_Rmtx *);    // Lock a system lock
 *   void __iar_system_Mtxunlock(__iar_Rmtx *);  // Unlock a system lock
 * The interface handles locks for the heap, the locale, the file system
 * structure, the initialization of statics in functions, etc. 
 *
 * The following lock interface is optional to be implemented:
 *   void __iar_file_Mtxinit(__iar_Rmtx *);    // Initialize a file lock
 *   void __iar_file_Mtxdst(__iar_Rmtx *);     // Destroy a file lock
 *   void __iar_file_Mtxlock(__iar_Rmtx *);    // Lock a file lock
 *   void __iar_file_Mtxunlock(__iar_Rmtx *);  // Unlock a file lock
 * The interface handles locks for each file stream.
 * 
 * These three once-initialization symbols must also be defined, if the 
 * default initialization later on in this file doesn't work (done in 
 * DLib_product.h):
 *
 *   _DLIB_THREAD_LOCK_ONCE_TYPE
 *   _DLIB_THREAD_LOCK_ONCE_MACRO(control_variable, init_function)
 *   _DLIB_THREAD_LOCK_ONCE_TYPE_INIT
 *
 * If an external TLS interface is used, the following must
 * be defined:
 *   typedef int __iar_Tlskey_t;
 *   typedef void (*__iar_Tlsdtor_t)(void *);
 *   int __iar_Tlsalloc(__iar_Tlskey_t *, __iar_Tlsdtor_t); 
 *                                                    // Allocate a TLS element
 *   int __iar_Tlsfree(__iar_Tlskey_t);               // Free a TLS element
 *   int __iar_Tlsset(__iar_Tlskey_t, void *);        // Set a TLS element
 *   void *__iar_Tlsget(__iar_Tlskey_t);              // Get a TLS element
 *
 */

/* We don't have a compiler that supports tls declarations */





  /* No support for threading. */





#line 296 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\DLib_Threads.h"

  
  typedef void *__iar_Rmtx;
  
#line 326 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\DLib_Threads.h"



#line 348 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\DLib_Threads.h"












#line 506 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"

#line 516 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"

                /* THREAD-LOCAL STORAGE */
#line 524 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"


                /* MULTITHREAD PROPERTIES */
#line 564 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"

                /* LOCK MACROS */
#line 572 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"

#line 690 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"

                /* MISCELLANEOUS MACROS AND FUNCTIONS*/





#line 705 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\yvals.h"



/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 12 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\stdio.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\ysizet.h"
/* ysizet.h internal header file. */
/* Copyright 2003-2010 IAR Systems AB.  */





  #pragma system_include


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2010 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __INTRINSIC
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that intrinsic support could be turned off
 * individually for each file.
 */










/* __STM8ABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */






#line 67 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\ycheck.h"

#line 12 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\ysizet.h"



                /* type definitions */




typedef _Sizet size_t;




typedef unsigned char __tiny_size_t; typedef unsigned short __near_size_t; typedef unsigned short __far_size_t; typedef unsigned long __huge_size_t; typedef unsigned short __eeprom_size_t;











#line 13 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\stdio.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\ystdio.h"
/* ystdio.h internal header */
/* Copyright 2009-2010 IAR Systems AB. */




  #pragma system_include

















    struct __FILE
    {       /* file control information */
      unsigned short _Mode;
      unsigned char _Lockno;
      signed char _Handle;

      /* _Buf points to first byte in buffer. */
      /* _Bend points to one beyond last byte in buffer. */
      /* _Next points to next character to read or write. */
      unsigned char *_Buf, *_Bend, *_Next;
      /* _Rend points to one beyond last byte that can be read. */
      /* _Wend points to one beyond last byte that can be written. */
      /* _Rback points to last pushed back character in _Back. If it has value 
         one beyond the _Back array no pushed back chars exists. */ 
      unsigned char *_Rend, *_Wend, *_Rback;

      /* _WRback points to last pushed back wchar_t in _WBack. If it has value 
         one beyond the _WBack array no pushed back wchar_ts exists. */ 
      _Wchart *_WRback, _WBack[2];

      /* _Rsave holds _Rend if characters have been pushed back. */
      /* _WRend points to one byte beyond last wchar_t that can be read. */
      /* _WWend points to one byte beyond last wchar_t that can be written. */
      unsigned char *_Rsave, *_WRend, *_WWend;

      _Mbstatet _Wstate;
      char *_Tmpnam;
      unsigned char _Back[1], _Cbuf;
    };


    

  
/* File system functions that have debug variants. They are agnostic on 
   whether the library is full or normal. */

__intrinsic __nounwind int remove(const char *);
__intrinsic __nounwind int rename(const char *, const char *);











/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.042:0576 */
#line 14 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\stdio.h"



/* Module consistency. */
#pragma rtmodel="__dlib_file_descriptor","1"

                /* macros */





  typedef _Filet FILE;


#line 66 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\stdio.h"

#line 78 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\stdio.h"
      
      extern  FILE __iar_Stdin;
      extern  FILE __iar_Stdout;
      extern  FILE __iar_Stderr;
      






#line 99 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\stdio.h"










                /* type definitions */
typedef _Fpost fpos_t;

                /* printf and scanf pragma support */
#pragma language=save
#pragma language=extended

#line 125 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\stdio.h"


                /* declarations */
  

  __intrinsic __nounwind void clearerr(FILE *);
  __intrinsic __nounwind int fclose(FILE *);
  __intrinsic __nounwind int feof(FILE *);
  __intrinsic __nounwind int ferror(FILE *);
  __intrinsic __nounwind int fflush(FILE *);
  __intrinsic __nounwind int fgetc(FILE *);
  __intrinsic __nounwind int fgetpos(FILE *, fpos_t *);
  __intrinsic __nounwind char * fgets(char *, int, FILE *);
  __intrinsic __nounwind FILE * fopen(const char *, const char *);
  _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int fprintf(FILE *, const char *, 
                                      ...);
  __intrinsic __nounwind int fputc(int, FILE *);
  __intrinsic __nounwind int fputs(const char *, FILE *);
  __intrinsic __nounwind size_t fread(void *, size_t, size_t, FILE *);
  __intrinsic __nounwind FILE * freopen(const char *, const char *,
                              FILE *);
  _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown") __intrinsic __nounwind int fscanf(FILE *, const char *, 
                                    ...);
  __intrinsic __nounwind int fseek(FILE *, long, int);
  __intrinsic __nounwind int fsetpos(FILE *, const fpos_t *);
  __intrinsic __nounwind long ftell(FILE *);
  __intrinsic __nounwind size_t fwrite(const void *, size_t, size_t, 
                             FILE *);

  __intrinsic __nounwind void rewind(FILE *);
  __intrinsic __nounwind void setbuf(FILE *, char *);
  __intrinsic __nounwind int setvbuf(FILE *, char *, int, size_t);
  __intrinsic __nounwind FILE * tmpfile(void);
  __intrinsic __nounwind int ungetc(int, FILE *);
  _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vfprintf(FILE *, 
                                       const char *, __Va_list);

    _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int vfscanf(FILE *, const char *,
                                        __Va_list);



    __intrinsic __nounwind FILE * fdopen(signed char, const char *);
    __intrinsic __nounwind signed char fileno(FILE *);
    __intrinsic __nounwind int getw(FILE *);
    __intrinsic __nounwind int putw(int, FILE *);


  __intrinsic __nounwind int getc(FILE *);
  __intrinsic __nounwind int putc(int, FILE *);
  



             /* Corresponds to fgets(char *, int, stdin); */
_Pragma("function_effects = no_read(1)")    __intrinsic __nounwind char * __gets(char *, int);
_Pragma("function_effects = no_read(1)")    __intrinsic __nounwind char * gets(char *);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind void perror(const char *);
_Pragma("function_effects = no_write(1)")    _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int printf(const char *, ...);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind int puts(const char *);
_Pragma("function_effects = no_write(1)")    _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int scanf(const char *, ...);
_Pragma("function_effects = no_read(1), no_write(2)") _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int sprintf(char *, 
                                                 const char *, ...);
_Pragma("function_effects = no_write(1,2)") _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int sscanf(const char *, 
                                                const char *, ...);
             __intrinsic __nounwind char * tmpnam(char *);
             /* Corresponds to "ungetc(c, stdout)" */
             __intrinsic __nounwind int __ungetchar(int);
_Pragma("function_effects = no_write(1)")    _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vprintf(const char *,
                                                 __Va_list);

  _Pragma("function_effects = no_write(1)")    _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int vscanf(const char *, 
                                                  __Va_list);
  _Pragma("function_effects = no_write(1,2)") _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int vsscanf(const char *, 
                                                   const char *, 
                                                   __Va_list);

_Pragma("function_effects = no_read(1), no_write(2)")  _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vsprintf(char *, 
                                                   const char *,
                                                   __Va_list);
              /* Corresponds to fwrite(p, x, y, stdout); */
_Pragma("function_effects = no_write(1)")      __intrinsic __nounwind size_t __write_array(const void *, size_t, size_t);

  _Pragma("function_effects = no_read(1), no_write(3)") _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int snprintf(char *, size_t, 
                                                    const char *, ...);
  _Pragma("function_effects = no_read(1), no_write(3)") _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vsnprintf(char *, size_t,
                                                     const char *, 
                                                     __Va_list);


              __intrinsic __nounwind int getchar(void);
              __intrinsic __nounwind int putchar(int);



#pragma language=restore



            /* inlines, for C and C++ */
  #pragma inline
  int (getc)(FILE *_Str)
  {
    return fgetc(_Str);
  }

  #pragma inline
  int (putc)(int _C, FILE *_Str)
  {
    return fputc(_C, _Str);
  }






#line 292 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\stdio.h"

/*
 * Copyright (c) 1992-2002 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 6 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\USER\\main.c"
#line 1 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_uart1.h"
/**
  ********************************************************************************
  * @file    stm8s_uart1.h
  * @author  MCD Application Team
  * @version V2.0.0
  * @date    25-February-2011
  * @brief   This file contains all functions prototypes and macros for the UART1 peripheral.
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


/** @addtogroup STM8S_StdPeriph_Driver
  * @{
  */

/* Exported types ------------------------------------------------------------*/

/** @addtogroup UART1_Exported_Types
  * @{
  */


/**
  * @brief  UART1 Irda Modes
  */

typedef enum { UART1_IRDAMODE_NORMAL    = (uint8_t)0x00, /**< 0x00 Irda Normal Mode   */
               UART1_IRDAMODE_LOWPOWER  = (uint8_t)0x01  /**< 0x01 Irda Low Power Mode */
             } UART1_IrDAMode_TypeDef;

/**
  * @brief  UART1 WakeUP Modes
  */
typedef enum { UART1_WAKEUP_IDLELINE       = (uint8_t)0x00, /**< 0x01 Idle Line wake up                */
               UART1_WAKEUP_ADDRESSMARK    = (uint8_t)0x08  /**< 0x02 Address Mark wake up          */
             } UART1_WakeUp_TypeDef;

/**
  * @brief  UART1 LIN Break detection length possible values
  */
typedef enum { UART1_LINBREAKDETECTIONLENGTH_10BITS = (uint8_t)0x00, /**< 0x01 10 bits Lin Break detection            */
               UART1_LINBREAKDETECTIONLENGTH_11BITS = (uint8_t)0x01  /**< 0x02 11 bits Lin Break detection          */
             } UART1_LINBreakDetectionLength_TypeDef;

/**
  * @brief  UART1 stop bits possible values
  */

typedef enum { UART1_STOPBITS_1   = (uint8_t)0x00,    /**< One stop bit is  transmitted at the end of frame*/
               UART1_STOPBITS_0_5 = (uint8_t)0x10,    /**< Half stop bits is transmitted at the end of frame*/
               UART1_STOPBITS_2   = (uint8_t)0x20,    /**< Two stop bits are  transmitted at the end of frame*/
               UART1_STOPBITS_1_5 = (uint8_t)0x30     /**< One and half stop bits*/
             } UART1_StopBits_TypeDef;

/**
  * @brief  UART1 parity possible values
  */
typedef enum { UART1_PARITY_NO     = (uint8_t)0x00,      /**< No Parity*/
               UART1_PARITY_EVEN   = (uint8_t)0x04,      /**< Even Parity*/
               UART1_PARITY_ODD    = (uint8_t)0x06       /**< Odd Parity*/
             } UART1_Parity_TypeDef;

/**
  * @brief  UART1 Synchrone modes
  */
typedef enum { UART1_SYNCMODE_CLOCK_DISABLE    = (uint8_t)0x80, /**< 0x80 Sync mode Disable, SLK pin Disable */
               UART1_SYNCMODE_CLOCK_ENABLE     = (uint8_t)0x08, /**< 0x08 Sync mode Enable, SLK pin Enable     */
               UART1_SYNCMODE_CPOL_LOW         = (uint8_t)0x40, /**< 0x40 Steady low value on SCLK pin outside transmission window */
               UART1_SYNCMODE_CPOL_HIGH        = (uint8_t)0x04, /**< 0x04 Steady high value on SCLK pin outside transmission window */
               UART1_SYNCMODE_CPHA_MIDDLE      = (uint8_t)0x20, /**< 0x20 SCLK clock line activated in middle of data bit     */
               UART1_SYNCMODE_CPHA_BEGINING    = (uint8_t)0x02, /**< 0x02 SCLK clock line activated at beginning of data bit  */
               UART1_SYNCMODE_LASTBIT_DISABLE  = (uint8_t)0x10, /**< 0x10 The clock pulse of the last data bit is not output to the SCLK pin */
               UART1_SYNCMODE_LASTBIT_ENABLE   = (uint8_t)0x01  /**< 0x01 The clock pulse of the last data bit is output to the SCLK pin */
             } UART1_SyncMode_TypeDef;

/**
  * @brief  UART1 Word length possible values
  */
typedef enum { UART1_WORDLENGTH_8D = (uint8_t)0x00,/**< 0x00 8 bits Data  */
               UART1_WORDLENGTH_9D = (uint8_t)0x10 /**< 0x10 9 bits Data  */
             } UART1_WordLength_TypeDef;

/**
  * @brief  UART1 Mode possible values
  */
typedef enum { UART1_MODE_RX_ENABLE     = (uint8_t)0x08,  /**< 0x08 Receive Enable */
               UART1_MODE_TX_ENABLE     = (uint8_t)0x04,  /**< 0x04 Transmit Enable */
               UART1_MODE_TX_DISABLE    = (uint8_t)0x80,  /**< 0x80 Transmit Disable */
               UART1_MODE_RX_DISABLE    = (uint8_t)0x40,  /**< 0x40 Single-wire Half-duplex mode */
               UART1_MODE_TXRX_ENABLE   = (uint8_t)0x0C  /**< 0x0C Transmit Enable and Receive Enable */
             } UART1_Mode_TypeDef;

/**
  * @brief  UART1 Flag possible values
  */
typedef enum { UART1_FLAG_TXE   = (uint16_t)0x0080, /*!< Transmit Data Register Empty flag */
               UART1_FLAG_TC    = (uint16_t)0x0040, /*!< Transmission Complete flag */
               UART1_FLAG_RXNE  = (uint16_t)0x0020, /*!< Read Data Register Not Empty flag */
               UART1_FLAG_IDLE  = (uint16_t)0x0010, /*!< Idle line detected flag */
               UART1_FLAG_OR    = (uint16_t)0x0008, /*!< OverRun error flag */
               UART1_FLAG_NF    = (uint16_t)0x0004, /*!< Noise error flag */
               UART1_FLAG_FE    = (uint16_t)0x0002, /*!< Framing Error flag */
               UART1_FLAG_PE    = (uint16_t)0x0001, /*!< Parity Error flag */
               UART1_FLAG_LBDF  = (uint16_t)0x0210, /*!< Line Break Detection Flag */
               UART1_FLAG_SBK   = (uint16_t)0x0101  /*!< Send Break characters Flag */
             } UART1_Flag_TypeDef;

/**
  * @brief  UART1 Interrupt definition
  * UART1_IT possible values
  * Elements values convention: 0xZYX
  * X: Position of the corresponding Interrupt
  *   - For the following values, X means the interrupt position in the CR2 register.
  *     UART1_IT_TXE
  *     UART1_IT_TC
  *     UART1_IT_RXNE
  *     UART1_IT_IDLE 
  *     UART1_IT_OR 
  *   - For the UART1_IT_PE value, X means the flag position in the CR1 register.
  *   - For the UART1_IT_LBDF value, X means the flag position in the CR4 register.
  * Y: Flag position
  *  - For the following values, Y means the flag (pending bit) position in the SR register.
  *     UART1_IT_TXE
  *     UART1_IT_TC
  *     UART1_IT_RXNE
  *     UART1_IT_IDLE 
  *     UART1_IT_OR
  *     UART1_IT_PE
  *  - For the UART1_IT_LBDF value, Y means the flag position in the CR4 register.
  * Z: Register index: indicate in which register the dedicated interrupt source is:
  *  - 1==> CR1 register
  *  - 2==> CR2 register
  *  - 3==> CR4 register
  */
typedef enum { UART1_IT_TXE        = (uint16_t)0x0277, /*!< Transmit interrupt */
               UART1_IT_TC         = (uint16_t)0x0266, /*!< Transmission Complete interrupt */
               UART1_IT_RXNE       = (uint16_t)0x0255, /*!< Receive interrupt */
               UART1_IT_IDLE       = (uint16_t)0x0244, /*!< IDLE line interrupt */
               UART1_IT_OR         = (uint16_t)0x0235, /*!< Overrun Error interrupt */
               UART1_IT_PE         = (uint16_t)0x0100, /*!< Parity Error interrupt */
               UART1_IT_LBDF       = (uint16_t)0x0346, /**< LIN break detection interrupt */
               UART1_IT_RXNE_OR    = (uint16_t)0x0205  /*!< Receive/Overrun interrupt */
             } UART1_IT_TypeDef;

/**
  * @}
  */

/* Exported constants --------------------------------------------------------*/
/* Exported macros ------------------------------------------------------------*/

/* Private macros ------------------------------------------------------------*/

/** @addtogroup UART1_Private_Macros
  * @{
  */

/**
  * @brief  Macro used by the assert function to check the different functions parameters.
  */

/**
 * @brief Macro used by the assert_param function in order to check the different
 *        sensitivity values for the MODEs possible combination should be one of
 *        the following
 */
#line 194 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_uart1.h"

/**
 * @brief Macro used by the assert_param function in order to check the different
 *        sensitivity values for the WordLengths
 */




/**
  * @brief  Macro used by the assert_param function in order to check the different
  *         sensitivity values for the SyncModes; it should exclude values such 
  *         as  UART1_CLOCK_ENABLE|UART1_CLOCK_DISABLE
  */






/**
  * @brief  Macro used by the assert_param function in order to check the different
  *         sensitivity values for the FLAGs
  */
#line 229 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_uart1.h"
/**
  * @brief  Macro used by the assert_param function in order to check the different
  *         sensitivity values for the FLAGs that can be cleared by writing 0
  */






/**
  * @brief  Macro used by the assert_param function in order to check the different 
  *         sensitivity values for the Interrupts
  */

#line 251 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_uart1.h"

/**
  * @brief  Macro used by the assert function in order to check the different 
  *         sensitivity values for the pending bit
  */
#line 264 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_uart1.h"

/**
  * @brief  Macro used by the assert function in order to check the different 
  *         sensitivity values for the pending bit that can be cleared by writing 0
  */





/**
 * @brief Macro used by the assert_param function in order to check the different
 *        sensitivity values for the IrDAModes
 */




/**
  * @brief  Macro used by the assert_param function in order to check the different
  *         sensitivity values for the WakeUps
  */




/**
  * @brief  Macro used by the assert_param function in order to check the different 
  *        sensitivity values for the LINBreakDetectionLengths
  */




/**
  * @brief  Macro used by the assert_param function in order to check the different
  *         sensitivity values for the UART1_StopBits
  */





/**
 * @brief Macro used by the assert_param function in order to check the different
 *        sensitivity values for the Paritys
 */




/**
 * @brief Macro used by the assert_param function in order to check the maximum
 *        baudrate value
 */



/**
 * @brief Macro used by the assert_param function in order to check the address
 *        of the UART1 or UART node
 */



/**
  * @}
  */

/* Exported functions ------------------------------------------------------- */

/** @addtogroup UART1_Exported_Functions
  * @{
  */

void UART1_DeInit(void);
void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
                UART1_StopBits_TypeDef StopBits, UART1_Parity_TypeDef Parity, 
                UART1_SyncMode_TypeDef SyncMode, UART1_Mode_TypeDef Mode);
void UART1_Cmd(_Bool NewState);
void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, _Bool NewState);
void UART1_HalfDuplexCmd(_Bool NewState);
void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode);
void UART1_IrDACmd(_Bool NewState);
void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength);
void UART1_LINCmd(_Bool NewState);
void UART1_SmartCardCmd(_Bool NewState);
void UART1_SmartCardNACKCmd(_Bool NewState);
void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp);
void UART1_ReceiverWakeUpCmd(_Bool NewState);
uint8_t UART1_ReceiveData8(void);
uint16_t UART1_ReceiveData9(void);
void UART1_SendData8(uint8_t Data);
void UART1_SendData9(uint16_t Data);
void UART1_SendBreak(void);
void UART1_SetAddress(uint8_t UART1_Address);
void UART1_SetGuardTime(uint8_t UART1_GuardTime);
void UART1_SetPrescaler(uint8_t UART1_Prescaler);
_Bool UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG);
void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG);
_Bool UART1_GetITStatus(UART1_IT_TypeDef UART1_IT);
void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT);

/**
  * @}
  */



/**
  * @}
  */
/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
#line 7 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\USER\\main.c"
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
#line 8 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\USER\\main.c"
#line 1 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_exti.h"
/**
  ******************************************************************************
  * @file    stm8s_exti.h
  * @author  MCD Application Team
  * @version V2.0.0
  * @date    25-February-2011
  * @brief   This file contains all functions prototype and macros for the EXTI peripheral.
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


/* Exported types ------------------------------------------------------------*/

/** @addtogroup EXTI_Exported_Types
  * @{
  */

/**
  * @brief  EXTI Sensitivity values for PORTA to PORTE
  */
typedef enum {
  EXTI_SENSITIVITY_FALL_LOW  = (uint8_t)0x00, /*!< Interrupt on Falling edge and Low level */
  EXTI_SENSITIVITY_RISE_ONLY = (uint8_t)0x01, /*!< Interrupt on Rising edge only */
  EXTI_SENSITIVITY_FALL_ONLY = (uint8_t)0x02, /*!< Interrupt on Falling edge only */
  EXTI_SENSITIVITY_RISE_FALL = (uint8_t)0x03  /*!< Interrupt on Rising and Falling edges */
} EXTI_Sensitivity_TypeDef;

/**
  * @brief  EXTI Sensitivity values for TLI
  */
typedef enum {
  EXTI_TLISENSITIVITY_FALL_ONLY = (uint8_t)0x00, /*!< Top Level Interrupt on Falling edge only */
  EXTI_TLISENSITIVITY_RISE_ONLY = (uint8_t)0x04  /*!< Top Level Interrupt on Rising edge only */
} EXTI_TLISensitivity_TypeDef;

/**
  * @brief  EXTI PortNum possible values
  */
typedef enum {
  EXTI_PORT_GPIOA = (uint8_t)0x00, /*!< GPIO Port A */
  EXTI_PORT_GPIOB = (uint8_t)0x01, /*!< GPIO Port B */
  EXTI_PORT_GPIOC = (uint8_t)0x02, /*!< GPIO Port C */
  EXTI_PORT_GPIOD = (uint8_t)0x03, /*!< GPIO Port D */
  EXTI_PORT_GPIOE = (uint8_t)0x04  /*!< GPIO Port E */
} EXTI_Port_TypeDef;

/**
  * @}
  */

/* Private macros ------------------------------------------------------------*/

/** @addtogroup EXTI_Private_Macros
  * @{
  */

/**
  * @brief  Macro used by the assert function in order to check the different sensitivity values for PORTA to PORTE.
  */






/**
  * @brief  Macro used by the assert function in order to check the different sensitivity values for TLI.
  */




/**
  * @brief  Macro used by the assert function in order to check the different Port values
  */
#line 99 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\Project\\..\\FWlib\\inc\\stm8s_exti.h"

/**
  * @brief  Macro used by the assert function in order to check the different values of the EXTI PinMask
  */


/**
  * @}
  */

/* Exported functions ------------------------------------------------------- */

/** @addtogroup EXTI_Exported_Functions
  * @{
  */

void EXTI_DeInit(void);
void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue);
void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue);
EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port);
EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void);

/**
  * @}
  */



/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
#line 9 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\USER\\main.c"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\string.h"
/* string.h standard header */
/* Copyright 2009-2010 IAR Systems AB. */




  #pragma system_include


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2010 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __INTRINSIC
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that intrinsic support could be turned off
 * individually for each file.
 */










/* __STM8ABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */






#line 67 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\ycheck.h"

#line 11 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\string.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\ysizet.h"
/* ysizet.h internal header file. */
/* Copyright 2003-2010 IAR Systems AB.  */

#line 30 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\ysizet.h"







#line 13 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\string.h"






                /* macros */




                /* declarations */

_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind int        memcmp(const void *, const void *,
                                                size_t);
_Pragma("function_effects = no_state, no_errno, no_read(1), no_write(2), returns 1") __intrinsic __nounwind void *     memcpy(void *, 
                                                const void *, size_t);
_Pragma("function_effects = no_state, no_errno, no_read(1), no_write(2), returns 1") __intrinsic __nounwind void *     memmove(void *, const void *, size_t);
_Pragma("function_effects = no_state, no_errno, no_read(1), returns 1")    __intrinsic __nounwind void *     memset(void *, int, size_t);
_Pragma("function_effects = no_state, no_errno, no_write(2), returns 1")    __intrinsic __nounwind char *     strcat(char *, 
                                                const char *);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind int        strcmp(const char *, const char *);
_Pragma("function_effects = no_write(1,2)")     __intrinsic __nounwind int        strcoll(const char *, const char *);
_Pragma("function_effects = no_state, no_errno, no_read(1), no_write(2), returns 1") __intrinsic __nounwind char *     strcpy(char *, 
                                                const char *);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind size_t     strcspn(const char *, const char *);
                 __intrinsic __nounwind char *     strerror(int);
_Pragma("function_effects = no_state, no_errno, no_write(1)")      __intrinsic __nounwind size_t     strlen(const char *);
_Pragma("function_effects = no_state, no_errno, no_write(2), returns 1")    __intrinsic __nounwind char *     strncat(char *, 
                                                 const char *, size_t);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind int        strncmp(const char *, const char *, 
                                                 size_t);
_Pragma("function_effects = no_state, no_errno, no_read(1), no_write(2), returns 1") __intrinsic __nounwind char *     strncpy(char *, 
                                                 const char *, size_t);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind size_t     strspn(const char *, const char *);
_Pragma("function_effects = no_write(2)")        __intrinsic __nounwind char *     strtok(char *, 
                                                const char *);
_Pragma("function_effects = no_write(2)")        __intrinsic __nounwind size_t     strxfrm(char *, 
                                                 const char *, size_t);


  _Pragma("function_effects = no_write(1)")      __intrinsic __nounwind char *   strdup(const char *);
  _Pragma("function_effects = no_write(1,2)")   __intrinsic __nounwind int      strcasecmp(const char *, const char *);
  _Pragma("function_effects = no_write(1,2)")   __intrinsic __nounwind int      strncasecmp(const char *, const char *, 
                                                   size_t);
  _Pragma("function_effects = no_state, no_errno, no_write(2)")    __intrinsic __nounwind char *   strtok_r(char *, const char *, char **);
  _Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind size_t   strnlen(char const *, size_t);




#line 81 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\string.h"
  _Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind void *memchr(const void *_S, int _C, size_t _N);
  _Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind char *strchr(const char *_S, int _C);
  _Pragma("function_effects = no_state, no_errno, no_write(1,2)") __intrinsic __nounwind char *strpbrk(const char *_S, const char *_P);
  _Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind char *strrchr(const char *_S, int _C);
  _Pragma("function_effects = no_state, no_errno, no_write(1,2)") __intrinsic __nounwind char *strstr(const char *_S, const char *_P);




                /* Inline definitions. */


                /* The implementations. */

_Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind void *__iar_Memchr(const void *, int, size_t);
_Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind char *__iar_Strchr(const char *, int);
               __intrinsic __nounwind char *__iar_Strerror(int, char *);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)") __intrinsic __nounwind char *__iar_Strpbrk(const char *, const char *);
_Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind char *__iar_Strrchr(const char *, int);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)") __intrinsic __nounwind char *__iar_Strstr(const char *, const char *);


                /* inlines and overloads, for C and C++ */
#line 168 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\string.h"
                /* Then the overloads for C. */
    #pragma inline
    void *memchr(const void *_S, int _C, size_t _N)
    {
      return (__iar_Memchr(_S, _C, _N));
    }

    #pragma inline
    char *strchr(const char *_S, int _C)
    {
      return (__iar_Strchr(_S, _C));
    }

    #pragma inline
    char *strpbrk(const char *_S, const char *_P)
    {
      return (__iar_Strpbrk(_S, _P));
    }

    #pragma inline
    char *strrchr(const char *_S, int _C)
    {
      return (__iar_Strrchr(_S, _C));
    }

    #pragma inline
    char *strstr(const char *_S, const char *_P)
    {
      return (__iar_Strstr(_S, _P));
    }


  #pragma inline
  char *strerror(int _Err)
  {
    return (__iar_Strerror(_Err, 0));
  }

#line 451 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\string.h"






#line 479 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\stm8\\inc\\c\\string.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 10 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\USER\\main.c"
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
#line 11 "C:\\Users\\SDMSJY\\Desktop\\\301\372\261\363\273\324\\\306\370\261\303\\STM8\\USER\\main.c"
//#include "stm8s_adc2.h"





typedef unsigned char  uchar;
typedef unsigned short ushort;
typedef unsigned int   uint;

uchar CKJS[32];//串口接收数组
uchar CKNUM=0;//串口接收计数

int djzt=0;//电机状态 1=关闭 0=打开

float dqdy=12.3781;

unsigned char dqdysljz[4]={0x00,0x00,0x00,0x00};


/*******************************************************************************
//浮点数转十六进制
*******************************************************************************/
void FloatToByte(float floatNum,unsigned char* byteArry)
{
  int i;
  char* pchar=(char*)&floatNum;
  for(i=0;i<sizeof(float);i++)
  {
    *byteArry=*pchar;
    pchar++;
    byteArry++;
  }
}
/*******************************************************************************
//十六进制转浮点数
*******************************************************************************/
float Hex_To_Decimal(unsigned char *Byte)
{
  return *((float*)Byte);
}
/*******************************************************************************
微秒级延时函数
*******************************************************************************/
void Delayus(void)   
{    
    asm("nop"); //一个asm("nop")函数经过示波器测试代表100ns   
    asm("nop");   
    asm("nop");   
    asm("nop");    
}   
/*******************************************************************************
毫秒级延时函数
*******************************************************************************/
void Delayms(unsigned int time)   
{   
    unsigned int i;   
    while(time--)     
    for(i=900;i>0;i--)   
    Delayus();    
} 
/*******************************************************************************
GPIO初始化
*******************************************************************************/
void IO_Init()
{
  GPIO_Init(((GPIO_TypeDef *) 0x500A), GPIO_PIN_3, GPIO_MODE_OUT_PP_HIGH_SLOW);//红色LED
  GPIO_Init(((GPIO_TypeDef *) 0x5005), GPIO_PIN_4, GPIO_MODE_OUT_PP_HIGH_SLOW);//绿色LED
  GPIO_Init(((GPIO_TypeDef *) 0x5005), GPIO_PIN_5, GPIO_MODE_OUT_PP_HIGH_SLOW);//蓝色LED
  
  GPIO_Init(((GPIO_TypeDef *) 0x500F), GPIO_PIN_4, GPIO_MODE_OUT_PP_HIGH_SLOW);//电机
}
/*******************************************************************************
外部中断初始化
*******************************************************************************/
void EXTI_Init()
{
  GPIO_DeInit(((GPIO_TypeDef *) 0x5000));
  GPIO_Init(((GPIO_TypeDef *) 0x5000), GPIO_PIN_3, GPIO_MODE_IN_PU_IT);//输入
  EXTI_DeInit();
  EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOA,EXTI_SENSITIVITY_FALL_ONLY);
}
/*******************************************************************************
串口初始化
*******************************************************************************/
void Uart_Init(void)
{
  UART1_DeInit();
  UART1_Init((u32)115200, UART1_WORDLENGTH_8D,UART1_STOPBITS_1,  UART1_PARITY_NO,UART1_SYNCMODE_CLOCK_DISABLE,UART1_MODE_TXRX_ENABLE);

  UART1_ITConfig(UART1_IT_RXNE_OR,1);
  UART1_Cmd(1);
}
/*******************************************************************************
串口发送一个字节
*******************************************************************************/
void UART1_SendByte(u8 data)
{
    UART1_SendData8((unsigned char)data);
  /* Loop until the end of transmission */
  while (UART1_GetFlagStatus(UART1_FLAG_TXE) == 0);
}
/*******************************************************************************
串口发送多个字节
*******************************************************************************/
void UART_printf(uchar *ptr,uchar len)
{
  int i=0;
  for(i=0;i<len;i++)
  {
    Delayms(1);
    UART1_SendByte(*ptr);
    ptr++;
  }
}
/*******************************************************************************
串口接收中断
*******************************************************************************/
#pragma vector=0x14
__interrupt void UART1_RX_IRQHandler(void)
{ 
  if(UART1_GetITStatus(UART1_IT_RXNE )!= 0)  
  {
    CKJS[CKNUM]=UART1_ReceiveData8();
    CKNUM++;
    if(CKNUM>=10)
    {
      CKNUM=0;
    }
    
    if(CKJS[0]!=0x5A){CKNUM=0;}
    if(CKNUM>=2&&CKJS[1]!=0xA5){CKNUM=0;}
    
    if(CKNUM>=1)
    {
      //if(CKJS[0]==0x5A&&CKJS[1]==0x5A&&CKJS[2]=='C'&&CKJS[3]=='X'&&CKJS[4]=='S'&&CKJS[5]=='J')
      //{
        FloatToByte(dqdy,dqdysljz);
        UART_printf(dqdysljz,4);
      //}
    }
  }
}
/*******************************************************************************
定时器初始化
*******************************************************************************/
void Tim1_Init()
{
  TIM1_TimeBaseInit(32, TIM1_COUNTERMODE_UP, 480, 0);
  TIM1_ARRPreloadConfig(1);
  TIM1_ITConfig(TIM1_IT_UPDATE , 1);
  TIM1_Cmd(1);
}
/*******************************************************************************
定时器中断
*******************************************************************************/
#pragma vector=0xd
__interrupt 
void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void)
{

  TIM1_ClearITPendingBit(TIM1_IT_UPDATE);//清定时器标志位
}
/*******************************************************************************
内部存储器初始化
*******************************************************************************/
void EEPROM_INIT(void)
{
  FLASH_DeInit();
  FLASH_Unlock(FLASH_MEMTYPE_DATA);
  FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
}

/*******************************************************************************
主程序启动入口
*******************************************************************************/
int main(void)
{
  /*设置内部高速时钟16M为主时钟*/ 
  CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
  IO_Init();
  Uart_Init();
  EEPROM_INIT();
  EXTI_Init();
  Tim1_Init();

  GPIO_WriteLow(((GPIO_TypeDef *) 0x500A), GPIO_PIN_3);//打开红色LED
  UART_printf("1234",4);
     
  __enable_interrupt();   
  while(1)
  {   

    Delayms(100);
    
    if(djzt==0)//判断电机状态 1=关闭 0=打开
    {
      GPIO_WriteHigh(((GPIO_TypeDef *) 0x500F), GPIO_PIN_4);//关闭电机
      GPIO_WriteHigh(((GPIO_TypeDef *) 0x5005), GPIO_PIN_5);//关闭蓝色LED
    }
    else
    {
      GPIO_WriteLow(((GPIO_TypeDef *) 0x500F), GPIO_PIN_4);//打开电机
      GPIO_WriteLow(((GPIO_TypeDef *) 0x5005), GPIO_PIN_5);//打开蓝色LED
    }
    
    
  }
}

#pragma vector=5
__interrupt void EXIT_PORTA_IRQHander(void)
{
  if(GPIO_ReadInputPin(((GPIO_TypeDef *) 0x5000), GPIO_PIN_3)==0)
  {
    Delayms(10);
    if(GPIO_ReadInputPin(((GPIO_TypeDef *) 0x5000), GPIO_PIN_3)==0)
    {
      if(djzt==0){djzt=1;}else{djzt=0;}//改变电机状态
    }
    while(GPIO_ReadInputPin(((GPIO_TypeDef *) 0x5000), GPIO_PIN_3)==0);
  }
}
