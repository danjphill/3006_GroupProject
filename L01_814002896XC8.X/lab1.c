/* Lab 1 first file - ID number 814002896 */
#include <p18f452.h>
/* Set configuration bits for use with ICD2 */
#pragma config OSC = HS
#pragma config WDT = OFF
#pragma config LVP = OFF

void main(void)
{
int i = 0;
TRISB = 0x00;
LATB =0x00;
    while(LATB < 0xF)
    {
    LATB++;
        }
Sleep();
}

