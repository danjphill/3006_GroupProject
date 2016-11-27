#include <p18cxxx.h>
#include <timers.h>

#pragma config OSC = HS
#pragma config WDT = OFF
#pragma config LVP = OFF


//void main(){
//INTCONbits.GIE = 1;
//INTCONbits.T0IF = 0;
//
//OpenTimer0(TIMER_INT_ON & T0_16BIT & T0_SOURCE_INT & T0_PS_1_1); 
//WriteTimer0(0xd8ef);
//while(!INTCONbits.T0IF);
//Nop();
#define PI 		3.14159
#define MIN(a,b) 	((a)>(b)?(b):(a))
#define RADTODEG(x) (x * 57.29578)

//double a,b,c;
//void init()
//{
//a = PI;
//}

int main()
{
//	init();
//	b=5.0;
//	c=MIN(++a,b);
//	b=RADTODEG(c+b);
//	a=PI;
 TRISB = 0x00;
    LATB =0x00;
    while(LATB < 0xF)
    {
      Delay10KTCYx(10000);   
    LATB++;
      }
}


