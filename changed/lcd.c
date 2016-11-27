#include <p18cxxx.h>
#include <delays.h>
#include "xlcd2.h"



void DelayFor18TCY( void )
{
Nop();
Nop();
Nop();
Nop();
Nop();
Nop();
Nop();
Nop();
Nop();
Nop();
Nop();
Nop();
Nop();
Nop();
Nop();
Nop();
Nop();
Nop();
}
void DelayPORXLCD (void)
{
Delay1KTCYx(75);
return;
}
void DelayXLCD (void)
{
Delay1KTCYx(25);
return;
}
void main() {
//TRISD = 0x05;
while( BusyXLCD() );
OpenXLCD( FOUR_BIT & LINE_5X10 );
while( BusyXLCD() );
WriteCmdXLCD( BLINK_OFF );
while( BusyXLCD() );
putrsXLCD( "Hello uP" );
Sleep();
}