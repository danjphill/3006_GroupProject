/*
*********************************************************************************************************
*                                                uC/OS-II
*                                          The Real-Time Kernel
*                            ATMEL  AVR32 UC3  Application Configuration File
*
*                                 (c) Copyright 2007; Micrium; Weston, FL
*                                           All Rights Reserved
*
* File    : APP_CFG.H
* By      : Fabiano Kovalski
*********************************************************************************************************
*/


/*
**************************************************************************************************************
*                                               STACK SIZES
**************************************************************************************************************
*/

#ifndef APP_CFG_H
	#define APP_CFG_H
	#define APP_TASKA_STKSIZE                  128
    #define APP_TASKB_STKSIZE                  200
	#define  OS_TASK_TMR_PRIO                  0

#endif