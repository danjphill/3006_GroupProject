#include <p18f452.h>
#include "xlcd2.h"
#include <xc.h>

#define _XTAL_FREQ 4000000UL

#pragma config OSC = HS
#pragma config WDT = OFF
#pragma config LVP = OFF


extern void init(void);
extern char getMapChar(void);
extern unsigned int MapNamep;
volatile unsigned int MapIndex;

void DelayFor18TCY(void){
 _delay(18);        
}

void DelayXLCD(void){
    __delay_ms(5);
}


void DelayPORXLCD(void){
   __delay_ms(15);
}

void main(void){
   

    char Char[8];
    int i;
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
    WriteCmdXLCD( BLINK_OFF & CURSOR_OFF);
    while( BusyXLCD() );
    putsXLCD(Char);
    while( BusyXLCD() );
    
    SLEEP();
}
