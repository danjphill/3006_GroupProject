#include <p18f452.h>
#include "xlcd2.h"
#include <delays.h>

#pragma config OSC = HS
#pragma config WDT = OFF
#pragma config LVP = OFF

unsigned int MapIndex;
extern void init(void);
extern char getMapChar(void);
extern unsigned int MapNamep;

void DelayFor18TCY(void){
  Delay10TCYx(1);
  Nop();
  Nop();
  Nop();
  Nop();
  Nop();
  Nop();
  Nop();
  Nop();
}

void DelayXLCD(void){
    Delay1KTCYx(20);
}


void DelayPORXLCD(void){
    Delay10KTCYx(6);
}

void main(void){

    char Char[8];
    int i = 0;
        init();
    
    for(i = 0; i < 8;  i++){
        MapIndex = i;
        Char[i] = getMapChar();
    }
        
    PORTD = 0X00;
    TRISD = 0X00;
    OpenXLCD(FOUR_BIT & LINES_5X7);
    while( BusyXLCD() );
    SetDDRamAddr(0x00);
    WriteCmdXLCD( SHIFT_DISP_LEFT );
    while( BusyXLCD() );
    WriteCmdXLCD( BLINK_OFF );
    while( BusyXLCD() );
    putrsXLCD(Char);
    while( BusyXLCD() );
    Sleep();
}
