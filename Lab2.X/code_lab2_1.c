///////////////////////////////////////////////////////////////////
//Student ID No.:814002896
//Date:11/4/2016
///////////////////////////////////////////////////////////////////

#include    "includes.h"
#include    <timers.h>
#include    "xlcd.h"

/*  Write the appropriate code to set configuration bits:
* - set HS oscillator
* - disable watchdog timer
* - disable low voltage programming
*/

#pragma config OSC = HS
#pragma config WDT = OFF
#pragma config LVP = OFF
/* Write LCD delay functions */
void DelayFor18TCY( void )
{
  /* Create a delay of 18 cycles  */
	int i;
	for (i=0;i<18;i++) Nop();
   
}

void DelayPORXLCD (void)
{
  /* Create a delay of 15 ms  */  
	OSTimeDly(3); // 30ms - minimum 20 ms
     //Delay10KTCYx(6);
     
}

void DelayXLCD (void)
{
  /* Create a delay of 5 ms  */  
	OSTimeDly(2); //20 ms - minimum 10 ms
   // Delay1KTCYx(20);
}


/* Write the appropriate code to do the following:
* define the stack sizes for task1 and task2 in app_cfg.h file
* use the defines to assign stack sizes here.
*/

 OS_STK  TaskAStk[APP_TASKA_STKSIZE]; 
 OS_STK  TaskBStk[APP_TASKB_STKSIZE];

/* Write the appropriate code to do the following:
* Configure PORTB pin 1 as an output
* TaskA will loop until the global variable stopped is set.
* Within the loop -- print string "Task 1 rocks! \n" to LCD top row
*                 -- toggle PORTB pin 1
*                 -- delay for 1 second using OSTimeDlyHMSM( )
* TaskA will delete itself if the loop is exited.
*/
void TaskA(void *pdata)
{
    TRISBbits.RB1 = 0;
    SetDDRamAddr(0x00);
    while( BusyXLCD());
    putrsXLCD("Task 1 rocks!");
    while( BusyXLCD() );
    LATBbits.LATB1 = LATBbits.LATB1 ^ 1;
    OSTimeDlyHMSM(0,0,1,0);
 
}

/* Write the appropriate code to do the following:
* Configuee PORTB pin 2 as an output
* TaskB will loop until the global variable stopped is set.
* Within the loop -- print string "Task 2 rules?\n" to LCD bottom row
*                 -- toggle PORTB pin 2
*                 -- delay of 200 ticks using OSTimeDly( )
* TaskB will delete itself if the loop is exited.
*/
void TaskB(void *pdata)
{
  TRISBbits.RB2 = 0;
    SetDDRamAddr(0x50);
    while( BusyXLCD());
    putrsXLCD("Task 2 rules?");
    while( BusyXLCD() );
    LATBbits.LATB2 = LATBbits.LATB2 ^ 1;
    OSTimeDly(200);
}

void main (void)
{
    
  // Write the appropriate code to disable all interrupts 
    INTCONbits.GIE = 0;
  // Write the appropriate code to initialise uC/OS II kernel
       OSInit();
  /* Write the appropriate code to enable timer0, 
   * 
  *   using 16 bit mode on internal clk source and pre-scalar of 1.
  */
    
    OpenTimer0(TIMER_INT_ON & T0_16BIT & T0_SOURCE_INT & T0_PS_1_1); 
    WriteTimer0(0xd8a0);
  /* Write the appropriate code to set timer0 registers 
  *   such that timer0 expires at 10ms using 4 Mhz oscillator.
  *   Do the same in vectors.c in CPUlowInterruptHook( ).
  */

        OSTimeTick();    
    

  /* Write the appropriate code to define the priorities for taskA
  *   and taskB in app_cfg.h. Use these defines to assign priorities 
  *   when creating taskA and taskB with OSTaskCreate( )
  */
      

      

  // Initialise the LCD display
   
    PORTD = 0X00;
    TRISB = 0X00;
    OpenXLCD(FOUR_BIT & LINES_5X7);
    while( BusyXLCD() );
    SetDDRamAddr(0x00);
    WriteCmdXLCD( SHIFT_DISP_LEFT );
    while( BusyXLCD() );
    WriteCmdXLCD( BLINK_OFF & CURSOR_OFF);
    while( BusyXLCD() );

  // Write the appropriate code to start uC/OS II kernel
 
    OSTaskCreate(TaskA,(void *)0,&TaskAStk[0],0);
    OSTaskCreate(TaskB,(void *)0,&TaskBStk[0],1);
    OSStart();
}
