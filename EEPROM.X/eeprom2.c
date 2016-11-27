#include <p18f452.h>
#include <delays.h>
#include <p18cxxx.h>

#pragma config OSC = HS
#pragma config WDT = OFF
#pragma config LVP = OFF

void OutputToRegister(int output){
    int i;
    int mask;
    mask = 0x80;
    for(i = 7;i>=0;i-- ){
    LATCbits.LATC2 = (mask & output)>> i;
    mask = mask/2;
    Delay1TCY(); 
    LATCbits.LATC3 = 1;
    Delay1TCY();
    LATCbits.LATC3 = 0;
    }
}

int readInFromRegister(){
    int i;
    int input;
    input = 0;
    LATCbits.LATC3 = 1;
    for(i = 0;i<8;i++ ){
    LATCbits.LATC2 =  LATCbits.LATC2 ^ 1;
    input = input<< 1;
    input = input | LATCbits.LATC2; //adding bit to the end 
    Delay1TCY(); 
    LATCbits.LATC3 = 0;
    Delay1TCY();
    LATCbits.LATC3 = 1;
    }
    return input;
}
     
    

void main(void){
    int recieved; 
    TRISCbits.RC2 = 0;
    TRISCbits.RC3 = 0;
    LATCbits.LATC2 = 0;
    LATCbits.LATC3 = 0;
    recieved = readInFromRegister();
 OutputToRegister(0x00);
 Nop();
 OutputToRegister(0xAA);
  Nop();
OutputToRegister(0xFF);
 Nop();
 OutputToRegister(0x80);
 Nop();
}


