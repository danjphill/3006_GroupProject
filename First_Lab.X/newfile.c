#include <p18cxxx.h>
#include <delays.h>

void main(){
    unsigned char delay;
    int a;
    int ans;
    a = 1;
    TRISA = 0x0;
    delay = 5;
    
    
    while(a>0){
        ans = a%2;
        if(ans == 0){
            LATA = 0xFF;
        }else{
            LATA = 0x00;
        }
        a++;
    Delay1KTCYx(delay);
    }
    
    
    //Sleep();
}