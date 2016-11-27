opt subtitle "Microchip Technology Omniscient Code Generator v1.38 (Free mode) build 201607010351"

opt pagewidth 120

	opt lm

	processor	18F452
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTA equ 0F80h ;# 
# 195 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTB equ 0F81h ;# 
# 319 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTC equ 0F82h ;# 
# 488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTD equ 0F83h ;# 
# 608 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTE equ 0F84h ;# 
# 731 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATA equ 0F89h ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 980 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1112 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1301 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1306 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1498 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1503 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1742 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRC equ 0F94h ;# 
# 1976 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISD equ 0F95h ;# 
# 1981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2197 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2202 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2427 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2506 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2585 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2671 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2779 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2785 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 2791 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 2797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 2802 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3321 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3326 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3332 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3337 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3343 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3354 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3482 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3494 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3581 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3587 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3593 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3599 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3677 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3683 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3689 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3695 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3762 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 3902 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 3908 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 3914 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 3920 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 3981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4317 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4323 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4329 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4399 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4404 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4508 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4514 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4622 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4634 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4640 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCON equ 0FD0h ;# 
# 4782 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 4809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 4885 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 4954 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 4960 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 4966 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 4972 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5056 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5062 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5068 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5074 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5080 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5086 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5098 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5104 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5110 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5116 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5122 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5128 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5134 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5140 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5146 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5152 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5163 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5169 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5175 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5181 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5187 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5193 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5199 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5205 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5211 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5302 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5378 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5383 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5615 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5621 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5627 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5641 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5647 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5653 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5661 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5668 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PC equ 0FF9h ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5680 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5686 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5692 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 5797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOS equ 0FFDh ;# 
# 5803 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 5809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 5815 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTA equ 0F80h ;# 
# 195 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTB equ 0F81h ;# 
# 319 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTC equ 0F82h ;# 
# 488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTD equ 0F83h ;# 
# 608 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTE equ 0F84h ;# 
# 731 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATA equ 0F89h ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 980 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1112 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1301 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1306 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1498 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1503 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1742 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRC equ 0F94h ;# 
# 1976 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISD equ 0F95h ;# 
# 1981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2197 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2202 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2427 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2506 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2585 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2671 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2779 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2785 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 2791 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 2797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 2802 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3321 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3326 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3332 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3337 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3343 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3354 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3482 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3494 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3581 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3587 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3593 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3599 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3677 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3683 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3689 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3695 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3762 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 3902 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 3908 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 3914 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 3920 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 3981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4317 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4323 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4329 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4399 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4404 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4508 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4514 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4622 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4634 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4640 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCON equ 0FD0h ;# 
# 4782 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 4809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 4885 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 4954 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 4960 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 4966 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 4972 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5056 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5062 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5068 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5074 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5080 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5086 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5098 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5104 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5110 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5116 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5122 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5128 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5134 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5140 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5146 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5152 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5163 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5169 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5175 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5181 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5187 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5193 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5199 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5205 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5211 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5302 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5378 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5383 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5615 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5621 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5627 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5641 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5647 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5653 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5661 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5668 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PC equ 0FF9h ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5680 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5686 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5692 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 5797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOS equ 0FFDh ;# 
# 5803 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 5809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 5815 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTA equ 0F80h ;# 
# 195 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTB equ 0F81h ;# 
# 319 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTC equ 0F82h ;# 
# 488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTD equ 0F83h ;# 
# 608 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTE equ 0F84h ;# 
# 731 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATA equ 0F89h ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 980 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1112 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1301 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1306 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1498 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1503 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1742 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRC equ 0F94h ;# 
# 1976 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISD equ 0F95h ;# 
# 1981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2197 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2202 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2427 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2506 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2585 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2671 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2779 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2785 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 2791 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 2797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 2802 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3321 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3326 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3332 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3337 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3343 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3354 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3482 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3494 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3581 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3587 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3593 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3599 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3677 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3683 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3689 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3695 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3762 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 3902 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 3908 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 3914 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 3920 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 3981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4317 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4323 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4329 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4399 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4404 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4508 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4514 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4622 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4634 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4640 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCON equ 0FD0h ;# 
# 4782 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 4809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 4885 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 4954 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 4960 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 4966 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 4972 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5056 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5062 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5068 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5074 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5080 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5086 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5098 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5104 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5110 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5116 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5122 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5128 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5134 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5140 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5146 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5152 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5163 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5169 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5175 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5181 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5187 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5193 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5199 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5205 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5211 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5302 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5378 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5383 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5615 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5621 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5627 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5641 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5647 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5653 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5661 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5668 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PC equ 0FF9h ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5680 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5686 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5692 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 5797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOS equ 0FFDh ;# 
# 5803 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 5809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 5815 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTA equ 0F80h ;# 
# 195 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTB equ 0F81h ;# 
# 319 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTC equ 0F82h ;# 
# 488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTD equ 0F83h ;# 
# 608 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTE equ 0F84h ;# 
# 731 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATA equ 0F89h ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 980 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1112 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1301 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1306 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1498 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1503 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1742 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRC equ 0F94h ;# 
# 1976 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISD equ 0F95h ;# 
# 1981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2197 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2202 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2427 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2506 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2585 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2671 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2779 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2785 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 2791 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 2797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 2802 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3321 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3326 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3332 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3337 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3343 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3354 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3482 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3494 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3581 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3587 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3593 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3599 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3677 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3683 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3689 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3695 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3762 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 3902 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 3908 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 3914 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 3920 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 3981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4317 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4323 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4329 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4399 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4404 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4508 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4514 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4622 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4634 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4640 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCON equ 0FD0h ;# 
# 4782 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 4809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 4885 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 4954 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 4960 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 4966 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 4972 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5056 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5062 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5068 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5074 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5080 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5086 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5098 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5104 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5110 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5116 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5122 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5128 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5134 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5140 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5146 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5152 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5163 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5169 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5175 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5181 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5187 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5193 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5199 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5205 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5211 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5302 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5378 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5383 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5615 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5621 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5627 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5641 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5647 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5653 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5661 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5668 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PC equ 0FF9h ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5680 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5686 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5692 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 5797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOS equ 0FFDh ;# 
# 5803 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 5809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 5815 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTA equ 0F80h ;# 
# 195 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTB equ 0F81h ;# 
# 319 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTC equ 0F82h ;# 
# 488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTD equ 0F83h ;# 
# 608 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTE equ 0F84h ;# 
# 731 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATA equ 0F89h ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 980 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1112 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1301 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1306 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1498 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1503 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1742 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRC equ 0F94h ;# 
# 1976 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISD equ 0F95h ;# 
# 1981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2197 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2202 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2427 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2506 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2585 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2671 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2779 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2785 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 2791 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 2797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 2802 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3321 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3326 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3332 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3337 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3343 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3354 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3482 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3494 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3581 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3587 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3593 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3599 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3677 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3683 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3689 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3695 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3762 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 3902 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 3908 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 3914 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 3920 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 3981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4317 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4323 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4329 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4399 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4404 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4508 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4514 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4622 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4634 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4640 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCON equ 0FD0h ;# 
# 4782 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 4809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 4885 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 4954 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 4960 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 4966 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 4972 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5056 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5062 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5068 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5074 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5080 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5086 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5098 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5104 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5110 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5116 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5122 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5128 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5134 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5140 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5146 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5152 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5163 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5169 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5175 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5181 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5187 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5193 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5199 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5205 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5211 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5302 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5378 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5383 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5615 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5621 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5627 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5641 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5647 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5653 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5661 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5668 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PC equ 0FF9h ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5680 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5686 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5692 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 5797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOS equ 0FFDh ;# 
# 5803 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 5809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 5815 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTA equ 0F80h ;# 
# 195 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTB equ 0F81h ;# 
# 319 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTC equ 0F82h ;# 
# 488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTD equ 0F83h ;# 
# 608 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTE equ 0F84h ;# 
# 731 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATA equ 0F89h ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 980 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1112 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1301 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1306 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1498 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1503 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1742 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRC equ 0F94h ;# 
# 1976 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISD equ 0F95h ;# 
# 1981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2197 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2202 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2427 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2506 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2585 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2671 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2779 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2785 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 2791 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 2797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 2802 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3321 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3326 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3332 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3337 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3343 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3354 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3482 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3494 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3581 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3587 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3593 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3599 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3677 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3683 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3689 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3695 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3762 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 3902 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 3908 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 3914 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 3920 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 3981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4317 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4323 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4329 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4399 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4404 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4508 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4514 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4622 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4634 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4640 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCON equ 0FD0h ;# 
# 4782 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 4809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 4885 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 4954 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 4960 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 4966 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 4972 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5056 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5062 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5068 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5074 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5080 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5086 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5098 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5104 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5110 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5116 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5122 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5128 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5134 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5140 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5146 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5152 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5163 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5169 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5175 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5181 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5187 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5193 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5199 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5205 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5211 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5302 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5378 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5383 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5615 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5621 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5627 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5641 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5647 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5653 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5661 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5668 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PC equ 0FF9h ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5680 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5686 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5692 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 5797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOS equ 0FFDh ;# 
# 5803 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 5809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 5815 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTA equ 0F80h ;# 
# 195 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTB equ 0F81h ;# 
# 319 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTC equ 0F82h ;# 
# 488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTD equ 0F83h ;# 
# 608 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTE equ 0F84h ;# 
# 731 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATA equ 0F89h ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 980 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1112 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1301 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1306 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1498 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1503 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1742 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRC equ 0F94h ;# 
# 1976 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISD equ 0F95h ;# 
# 1981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2197 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2202 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2427 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2506 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2585 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2671 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2779 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2785 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 2791 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 2797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 2802 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3321 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3326 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3332 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3337 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3343 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3354 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3482 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3494 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3581 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3587 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3593 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3599 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3677 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3683 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3689 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3695 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3762 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 3902 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 3908 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 3914 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 3920 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 3981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4317 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4323 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4329 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4399 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4404 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4508 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4514 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4622 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4634 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4640 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCON equ 0FD0h ;# 
# 4782 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 4809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 4885 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 4954 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 4960 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 4966 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 4972 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5056 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5062 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5068 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5074 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5080 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5086 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5098 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5104 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5110 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5116 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5122 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5128 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5134 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5140 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5146 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5152 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5163 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5169 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5175 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5181 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5187 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5193 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5199 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5205 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5211 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5302 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5378 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5383 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5615 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5621 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5627 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5641 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5647 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5653 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5661 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5668 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PC equ 0FF9h ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5680 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5686 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5692 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 5797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOS equ 0FFDh ;# 
# 5803 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 5809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 5815 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTA equ 0F80h ;# 
# 195 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTB equ 0F81h ;# 
# 319 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTC equ 0F82h ;# 
# 488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTD equ 0F83h ;# 
# 608 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTE equ 0F84h ;# 
# 731 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATA equ 0F89h ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 980 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1112 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1301 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1306 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1498 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1503 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1742 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRC equ 0F94h ;# 
# 1976 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISD equ 0F95h ;# 
# 1981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2197 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2202 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2427 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2506 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2585 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2671 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2779 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2785 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 2791 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 2797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 2802 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3321 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3326 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3332 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3337 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3343 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3354 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3482 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3494 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3581 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3587 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3593 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3599 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3677 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3683 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3689 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3695 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3762 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 3902 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 3908 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 3914 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 3920 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 3981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4317 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4323 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4329 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4399 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4404 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4508 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4514 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4622 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4634 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4640 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCON equ 0FD0h ;# 
# 4782 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 4809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 4885 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 4954 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 4960 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 4966 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 4972 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5056 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5062 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5068 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5074 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5080 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5086 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5098 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5104 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5110 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5116 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5122 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5128 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5134 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5140 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5146 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5152 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5163 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5169 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5175 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5181 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5187 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5193 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5199 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5205 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5211 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5302 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5378 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5383 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5615 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5621 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5627 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5641 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5647 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5653 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5661 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5668 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PC equ 0FF9h ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5680 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5686 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5692 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 5797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOS equ 0FFDh ;# 
# 5803 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 5809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 5815 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTA equ 0F80h ;# 
# 195 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTB equ 0F81h ;# 
# 319 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTC equ 0F82h ;# 
# 488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTD equ 0F83h ;# 
# 608 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTE equ 0F84h ;# 
# 731 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATA equ 0F89h ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 980 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1112 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1301 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1306 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1498 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1503 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1742 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRC equ 0F94h ;# 
# 1976 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISD equ 0F95h ;# 
# 1981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2197 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2202 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2427 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2506 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2585 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2671 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2779 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2785 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 2791 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 2797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 2802 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3321 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3326 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3332 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3337 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3343 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3354 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3482 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3494 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3581 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3587 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3593 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3599 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3677 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3683 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3689 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3695 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3762 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 3902 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 3908 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 3914 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 3920 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 3981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4317 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4323 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4329 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4399 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4404 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4508 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4514 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4622 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4634 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4640 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCON equ 0FD0h ;# 
# 4782 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 4809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 4885 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 4954 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 4960 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 4966 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 4972 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5056 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5062 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5068 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5074 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5080 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5086 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5098 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5104 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5110 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5116 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5122 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5128 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5134 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5140 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5146 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5152 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5163 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5169 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5175 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5181 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5187 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5193 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5199 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5205 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5211 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5302 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5378 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5383 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5615 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5621 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5627 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5641 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5647 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5653 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5661 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5668 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PC equ 0FF9h ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5680 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5686 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5692 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 5797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOS equ 0FFDh ;# 
# 5803 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 5809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 5815 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTA equ 0F80h ;# 
# 195 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTB equ 0F81h ;# 
# 319 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTC equ 0F82h ;# 
# 488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTD equ 0F83h ;# 
# 608 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTE equ 0F84h ;# 
# 731 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATA equ 0F89h ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 980 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1112 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1301 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1306 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1498 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1503 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1742 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRC equ 0F94h ;# 
# 1976 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISD equ 0F95h ;# 
# 1981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2197 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2202 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2427 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2506 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2585 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2671 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2779 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2785 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 2791 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 2797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 2802 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3321 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3326 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3332 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3337 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3343 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3354 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3482 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3494 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3581 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3587 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3593 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3599 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3677 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3683 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3689 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3695 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3762 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 3902 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 3908 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 3914 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 3920 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 3981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4317 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4323 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4329 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4399 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4404 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4508 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4514 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4622 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4634 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4640 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCON equ 0FD0h ;# 
# 4782 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 4809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 4885 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 4954 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 4960 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 4966 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 4972 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5056 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5062 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5068 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5074 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5080 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5086 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5098 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5104 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5110 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5116 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5122 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5128 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5134 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5140 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5146 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5152 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5163 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5169 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5175 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5181 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5187 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5193 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5199 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5205 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5211 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5302 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5378 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5383 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5615 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5621 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5627 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5641 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5647 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5653 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5661 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5668 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PC equ 0FF9h ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5680 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5686 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5692 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 5797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOS equ 0FFDh ;# 
# 5803 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 5809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 5815 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTA equ 0F80h ;# 
# 195 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTB equ 0F81h ;# 
# 319 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTC equ 0F82h ;# 
# 488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTD equ 0F83h ;# 
# 608 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PORTE equ 0F84h ;# 
# 731 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATA equ 0F89h ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 980 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1112 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1301 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1306 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1498 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1503 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1742 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRC equ 0F94h ;# 
# 1976 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISD equ 0F95h ;# 
# 1981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2197 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2202 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2427 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2506 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2585 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2671 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2779 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2785 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 2791 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 2797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 2802 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3321 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3326 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3332 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3337 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3343 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3348 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3354 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3482 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3488 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3494 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3581 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3587 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3593 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3599 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3677 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3683 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3689 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3695 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3762 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 3902 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 3908 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 3914 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 3920 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 3981 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4317 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4323 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4329 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4399 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4404 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4508 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4514 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4622 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4628 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4634 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4640 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
RCON equ 0FD0h ;# 
# 4782 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 4809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 4885 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 4954 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 4960 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 4966 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 4972 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5056 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5062 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5068 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5074 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5080 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5086 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5098 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5104 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5110 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5116 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5122 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5128 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5134 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5140 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5146 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5152 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5163 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5169 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5175 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5181 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5187 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5193 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5199 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5205 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5211 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5302 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5378 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5383 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5615 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5621 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5627 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5641 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5647 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5653 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5661 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5668 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PC equ 0FF9h ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5680 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5686 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5692 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 5797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOS equ 0FFDh ;# 
# 5803 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 5809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 5815 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f452.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_BusyXLCD
	FNCALL	_main,_OpenXLCD
	FNCALL	_main,_SetDDRamAddr
	FNCALL	_main,_WriteCmdXLCD
	FNCALL	_main,_getMapChar
	FNCALL	_main,_init
	FNCALL	_main,_putsXLCD
	FNCALL	_putsXLCD,_BusyXLCD
	FNCALL	_putsXLCD,_WriteDataXLCD
	FNCALL	_WriteDataXLCD,_DelayFor18TCY
	FNCALL	_OpenXLCD,_BusyXLCD
	FNCALL	_OpenXLCD,_Delay10KTCYx
	FNCALL	_OpenXLCD,_DelayPORXLCD
	FNCALL	_OpenXLCD,_SetDDRamAddr
	FNCALL	_OpenXLCD,_WriteCmdXLCD
	FNCALL	_WriteCmdXLCD,_DelayFor18TCY
	FNCALL	_SetDDRamAddr,_DelayFor18TCY
	FNCALL	_BusyXLCD,_DelayFor18TCY
	FNROOT	_main
	global	_MapIndex
	global	_LATDbits
_LATDbits	set	0xF8C
	global	_PORTD
_PORTD	set	0xF83
	global	_TRISD
_TRISD	set	0xF95
	global	_TRISDbits
_TRISDbits	set	0xF95
; #config settings
global __CFG_OSC$HS
__CFG_OSC$HS equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
	file	"dist/default/debug\L01_814002896XC8.X.debug.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_MapIndex
_MapIndex:
       ds      2
	file	"dist/default/debug\L01_814002896XC8.X.debug.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (2 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_init:	; 1 bytes @ 0x0
??_init:	; 1 bytes @ 0x0
?_getMapChar:	; 1 bytes @ 0x0
??_getMapChar:	; 1 bytes @ 0x0
?_OpenXLCD:	; 1 bytes @ 0x0
?_BusyXLCD:	; 1 bytes @ 0x0
??_BusyXLCD:	; 1 bytes @ 0x0
?_SetDDRamAddr:	; 1 bytes @ 0x0
??_SetDDRamAddr:	; 1 bytes @ 0x0
?_WriteCmdXLCD:	; 1 bytes @ 0x0
??_WriteCmdXLCD:	; 1 bytes @ 0x0
?_Delay10KTCYx:	; 1 bytes @ 0x0
??_Delay10KTCYx:	; 1 bytes @ 0x0
?_WriteDataXLCD:	; 1 bytes @ 0x0
??_WriteDataXLCD:	; 1 bytes @ 0x0
?_DelayFor18TCY:	; 1 bytes @ 0x0
??_DelayFor18TCY:	; 1 bytes @ 0x0
?_DelayPORXLCD:	; 1 bytes @ 0x0
??_DelayPORXLCD:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	SetDDRamAddr@DDaddr
SetDDRamAddr@DDaddr:	; 1 bytes @ 0x0
	global	WriteCmdXLCD@cmd
WriteCmdXLCD@cmd:	; 1 bytes @ 0x0
	global	WriteDataXLCD@data
WriteDataXLCD@data:	; 1 bytes @ 0x0
	ds   1
?_putsXLCD:	; 1 bytes @ 0x1
	global	Delay10KTCYx@unit
Delay10KTCYx@unit:	; 1 bytes @ 0x1
	global	putsXLCD@buffer
putsXLCD@buffer:	; 2 bytes @ 0x1
	ds   1
??_OpenXLCD:	; 1 bytes @ 0x2
	global	OpenXLCD@lcdtype
OpenXLCD@lcdtype:	; 1 bytes @ 0x2
	ds   1
??_putsXLCD:	; 1 bytes @ 0x3
??_main:	; 1 bytes @ 0x3
	ds   1
	global	main@Char
main@Char:	; 8 bytes @ 0x4
	ds   8
	global	main@i
main@i:	; 2 bytes @ 0xC
	ds   2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127     14      16
;!    BANK0           128      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           239      0       0

;!
;!Pointer List with Targets:
;!
;!    putsXLCD@buffer	PTR unsigned char  size(2) Largest target is 8
;!		 -> main@Char(COMRAM[8]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_OpenXLCD
;!    _main->_putsXLCD
;!    _putsXLCD->_WriteDataXLCD
;!    _OpenXLCD->_Delay10KTCYx
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                11    11      0     427
;!                                              3 COMRAM    11    11      0
;!                           _BusyXLCD
;!                           _OpenXLCD
;!                       _SetDDRamAddr
;!                       _WriteCmdXLCD
;!                         _getMapChar
;!                               _init
;!                           _putsXLCD
;! ---------------------------------------------------------------------------------
;! (1) _putsXLCD                                             2     0      2     139
;!                                              1 COMRAM     2     0      2
;!                           _BusyXLCD
;!                      _WriteDataXLCD
;! ---------------------------------------------------------------------------------
;! (2) _WriteDataXLCD                                        1     1      0      30
;!                                              0 COMRAM     1     1      0
;!                      _DelayFor18TCY
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _getMapChar                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _OpenXLCD                                             1     1      0      90
;!                                              2 COMRAM     1     1      0
;!                           _BusyXLCD
;!                       _Delay10KTCYx
;!                       _DelayPORXLCD
;!                       _SetDDRamAddr
;!                       _WriteCmdXLCD
;! ---------------------------------------------------------------------------------
;! (1) _WriteCmdXLCD                                         1     1      0      30
;!                                              0 COMRAM     1     1      0
;!                      _DelayFor18TCY
;! ---------------------------------------------------------------------------------
;! (1) _SetDDRamAddr                                         1     1      0      30
;!                                              0 COMRAM     1     1      0
;!                      _DelayFor18TCY
;! ---------------------------------------------------------------------------------
;! (2) _DelayPORXLCD                                         1     1      0       0
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _Delay10KTCYx                                         2     2      0      15
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _BusyXLCD                                             0     0      0       0
;!                      _DelayFor18TCY
;! ---------------------------------------------------------------------------------
;! (3) _DelayFor18TCY                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _BusyXLCD
;!     _DelayFor18TCY
;!   _OpenXLCD
;!     _BusyXLCD
;!       _DelayFor18TCY
;!     _Delay10KTCYx
;!     _DelayPORXLCD
;!     _SetDDRamAddr
;!       _DelayFor18TCY
;!     _WriteCmdXLCD
;!       _DelayFor18TCY
;!   _SetDDRamAddr
;!     _DelayFor18TCY
;!   _WriteCmdXLCD
;!     _DelayFor18TCY
;!   _getMapChar
;!   _init
;!   _putsXLCD
;!     _BusyXLCD
;!       _DelayFor18TCY
;!     _WriteDataXLCD
;!       _DelayFor18TCY
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5EE      0       0      16        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK4           100      0       0      11        0.0%
;!BANK4              100      0       0      12        0.0%
;!BITBANK3           100      0       0       9        0.0%
;!BANK3              100      0       0      10        0.0%
;!BITBANK2           100      0       0       7        0.0%
;!BANK2              100      0       0       8        0.0%
;!BITBANK1           100      0       0       5        0.0%
;!BANK1              100      0       0       6        0.0%
;!BITBANK5            EF      0       0      15        0.0%
;!BANK5               EF      0       0      13        0.0%
;!BITBANK0            80      0       0       3        0.0%
;!BANK0               80      0       0       4        0.0%
;!BITCOMRAM           7F      0       0       0        0.0%
;!COMRAM              7F      E      10       1       12.6%
;!BITSFR_5             0      0       0      40        0.0%
;!SFR_5                0      0       0      40        0.0%
;!BITSFR_4             0      0       0      40        0.0%
;!SFR_4                0      0       0      40        0.0%
;!BITSFR_3             0      0       0      40        0.0%
;!SFR_3                0      0       0      40        0.0%
;!BITSFR_2             0      0       0      40        0.0%
;!SFR_2                0      0       0      40        0.0%
;!BITSFR_1             0      0       0      40        0.0%
;!SFR_1                0      0       0      40        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      10      14        0.0%
;!DATA                 0      0      10      17        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 30 in file "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/lab1asm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Char            8    4[COMRAM] unsigned char [8]
;;  i               2   12[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, btemp+8, btemp+9, btemp+10, btemp+11, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        10       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_BusyXLCD
;;		_OpenXLCD
;;		_SetDDRamAddr
;;		_WriteCmdXLCD
;;		_getMapChar
;;		_init
;;		_putsXLCD
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/lab1asm.c"
	line	30
global __ptext0
__ptext0:
psect	text0
	file	"C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/lab1asm.c"
	line	30
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 28
	line	35
	
l1118:
;lab1asm.c: 33: char Char[8];
;lab1asm.c: 34: int i;
;lab1asm.c: 35: init();
	call	_init	;wreg free
	line	37
	
l1120:
;lab1asm.c: 37: for(i = 0; i < 8; i++){
	movlw	high(0)
	movwf	((c:main@i+1)),c
	movlw	low(0)
	movwf	((c:main@i)),c
	
l1122:
	btfsc	((c:main@i+1)),c,7
	goto	u211
	movf	((c:main@i+1)),c,w
	bnz	u210
	movlw	8
	subwf	 ((c:main@i)),c,w
	btfss	status,0
	goto	u211
	goto	u210

u211:
	goto	l34
u210:
	goto	l1132
	
l1124:
	goto	l1132
	
l34:
	line	38
;lab1asm.c: 38: MapIndex = i;
	movff	(c:main@i),(c:_MapIndex)	;volatile
	movff	(c:main@i+1),(c:_MapIndex+1)	;volatile
	line	39
	
l1126:
;lab1asm.c: 39: Char[i] = getMapChar();
	call	_getMapChar	;wreg free
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(main@Char)
	addwf	((c:main@i)),c,w
	movwf	c:fsr2l
	movlw	high(main@Char)
	addwfc	((c:main@i+1)),c,w
	movwf	1+c:fsr2l
	movff	(??_main+0+0),indf2

	line	37
	
l1128:
	infsnz	((c:main@i)),c
	incf	((c:main@i+1)),c
	
l1130:
	btfsc	((c:main@i+1)),c,7
	goto	u221
	movf	((c:main@i+1)),c,w
	bnz	u220
	movlw	8
	subwf	 ((c:main@i)),c,w
	btfss	status,0
	goto	u221
	goto	u220

u221:
	goto	l34
u220:
	goto	l1132
	
l35:
	line	42
	
l1132:
;lab1asm.c: 40: }
;lab1asm.c: 42: PORTD = 0X00;
	movlw	low(0)
	movwf	((c:3971)),c	;volatile
	line	43
;lab1asm.c: 43: TRISD = 0X00;
	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	line	45
	
l1134:
;lab1asm.c: 45: OpenXLCD(0b00101100 & 0b00111000);
	movlw	(028h)&0ffh
	
	call	_OpenXLCD
	line	46
;lab1asm.c: 46: while( BusyXLCD() );
	goto	l1136
	
l37:
	goto	l1136
	
l36:
	
l1136:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u231
	goto	u230
u231:
	goto	l1136
u230:
	goto	l1138
	
l38:
	line	47
	
l1138:
;lab1asm.c: 47: SetDDRamAddr(0x00);
	movlw	(0)&0ffh
	
	call	_SetDDRamAddr
	line	48
;lab1asm.c: 48: WriteCmdXLCD( 0b00000110 );
	movlw	(06h)&0ffh
	
	call	_WriteCmdXLCD
	line	49
;lab1asm.c: 49: while( BusyXLCD() );
	goto	l1140
	
l40:
	goto	l1140
	
l39:
	
l1140:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u241
	goto	u240
u241:
	goto	l1140
u240:
	goto	l1142
	
l41:
	line	50
	
l1142:
;lab1asm.c: 50: WriteCmdXLCD( 0b00001110 & 0b00001101);
	movlw	(0Ch)&0ffh
	
	call	_WriteCmdXLCD
	line	51
;lab1asm.c: 51: while( BusyXLCD() );
	goto	l1144
	
l43:
	goto	l1144
	
l42:
	
l1144:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u251
	goto	u250
u251:
	goto	l1144
u250:
	goto	l1146
	
l44:
	line	52
	
l1146:
;lab1asm.c: 52: putsXLCD(Char);
		movlw	low(main@Char)
	movwf	((c:putsXLCD@buffer)),c
	movlw	high(main@Char)
	movwf	((c:putsXLCD@buffer+1)),c

	call	_putsXLCD	;wreg free
	line	53
;lab1asm.c: 53: while( BusyXLCD() );
	goto	l1148
	
l46:
	goto	l1148
	
l45:
	
l1148:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u261
	goto	u260
u261:
	goto	l1148
u260:
	
l47:
	line	55
# 55 "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/lab1asm.c"
sleep ;# 
psect	text0
	line	56
	
l48:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_putsXLCD

;; *************** function _putsXLCD *****************
;; Defined at:
;;		line 16 in file "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/putsxlcd.c"
;; Parameters:    Size  Location     Type
;;  buffer          2    1[COMRAM] PTR unsigned char 
;;		 -> main@Char(8), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_BusyXLCD
;;		_WriteDataXLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/putsxlcd.c"
	line	16
global __ptext1
__ptext1:
psect	text1
	file	"C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/putsxlcd.c"
	line	16
	global	__size_of_putsXLCD
	__size_of_putsXLCD	equ	__end_of_putsXLCD-_putsXLCD
	
_putsXLCD:
;incstack = 0
	opt	stack 28
	line	18
	
l1108:
;putsxlcd.c: 18: while(*buffer)
	goto	l1116
	
l122:
	line	20
;putsxlcd.c: 19: {
;putsxlcd.c: 20: while(BusyXLCD());
	goto	l1110
	
l124:
	goto	l1110
	
l123:
	
l1110:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u191
	goto	u190
u191:
	goto	l1110
u190:
	goto	l1112
	
l125:
	line	21
	
l1112:
;putsxlcd.c: 21: WriteDataXLCD(*buffer);
	movff	(c:putsXLCD@buffer),fsr2l
	movff	(c:putsXLCD@buffer+1),fsr2h
	movf	indf2,w
	
	call	_WriteDataXLCD
	line	22
	
l1114:
;putsxlcd.c: 22: buffer++;
	infsnz	((c:putsXLCD@buffer)),c
	incf	((c:putsXLCD@buffer+1)),c
	goto	l1116
	line	23
	
l121:
	line	18
	
l1116:
	movff	(c:putsXLCD@buffer),fsr2l
	movff	(c:putsXLCD@buffer+1),fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u201
	goto	u200
u201:
	goto	l1110
u200:
	goto	l127
	
l126:
	line	25
;putsxlcd.c: 23: }
;putsxlcd.c: 24: return;
	
l127:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_putsXLCD
	__end_of_putsXLCD:
	signat	_putsXLCD,4217
	global	_WriteDataXLCD

;; *************** function _WriteDataXLCD *****************
;; Defined at:
;;		line 16 in file "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/writdata.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayFor18TCY
;; This function is called by:
;;		_putsXLCD
;;		_putrsXLCD
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/writdata.c"
	line	16
global __ptext2
__ptext2:
psect	text2
	file	"C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/writdata.c"
	line	16
	global	__size_of_WriteDataXLCD
	__size_of_WriteDataXLCD	equ	__end_of_WriteDataXLCD-_WriteDataXLCD
	
_WriteDataXLCD:
;incstack = 0
	opt	stack 28
;WriteDataXLCD@data stored from wreg
	movwf	((c:WriteDataXLCD@data)),c
	line	31
	
l902:
;writdata.c: 31: TRISD &= 0x0f;
	movlw	(0Fh)&0ffh
	andwf	((c:3989)),c	;volatile
	line	32
;writdata.c: 32: PORTD &= 0x0f;
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	33
;writdata.c: 33: PORTD |= data&0xf0;
	movf	((c:WriteDataXLCD@data)),c,w
	andlw	low(0F0h)
	iorwf	((c:3971)),c	;volatile
	line	39
	
l904:
;writdata.c: 39: LATDbits.LATD1 = 1;
	bsf	((c:3980)),c,1	;volatile
	line	40
	
l906:
;writdata.c: 40: LATDbits.LATD0 = 0;
	bcf	((c:3980)),c,0	;volatile
	line	41
	
l908:
;writdata.c: 41: DelayFor18TCY();
	call	_DelayFor18TCY	;wreg free
	line	42
	
l910:
;writdata.c: 42: LATDbits.LATD2 = 1;
	bsf	((c:3980)),c,2	;volatile
	line	43
	
l912:
;writdata.c: 43: DelayFor18TCY();
	call	_DelayFor18TCY	;wreg free
	line	44
	
l914:
;writdata.c: 44: LATDbits.LATD2 = 0;
	bcf	((c:3980)),c,2	;volatile
	line	46
;writdata.c: 46: PORTD &= 0x0f;
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	47
;writdata.c: 47: PORTD |= ((data<<4)&0xf0);
	swapf	((c:WriteDataXLCD@data)),c,w
	andlw	(0ffh shl 4) & 0ffh
	andlw	low(0F0h)
	iorwf	((c:3971)),c	;volatile
	line	52
	
l916:
;writdata.c: 52: DelayFor18TCY();
	call	_DelayFor18TCY	;wreg free
	line	53
	
l918:
;writdata.c: 53: LATDbits.LATD2 = 1;
	bsf	((c:3980)),c,2	;volatile
	line	54
	
l920:
;writdata.c: 54: DelayFor18TCY();
	call	_DelayFor18TCY	;wreg free
	line	55
	
l922:
;writdata.c: 55: LATDbits.LATD2 = 0;
	bcf	((c:3980)),c,2	;volatile
	line	57
;writdata.c: 57: TRISD |= 0xf0;
	movlw	(0F0h)&0ffh
	iorwf	((c:3989)),c	;volatile
	goto	l189
	line	62
	
l924:
	line	63
;writdata.c: 62: return;
	
l189:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_WriteDataXLCD
	__end_of_WriteDataXLCD:
	signat	_WriteDataXLCD,4217
	global	_init
	global	_getMapChar
	global	_OpenXLCD

;; *************** function _OpenXLCD *****************
;; Defined at:
;;		line 19 in file "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/openxlcd.c"
;; Parameters:    Size  Location     Type
;;  lcdtype         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lcdtype         1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_BusyXLCD
;;		_Delay10KTCYx
;;		_DelayPORXLCD
;;		_SetDDRamAddr
;;		_WriteCmdXLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/openxlcd.c"
	line	19
global __ptext3
__ptext3:
psect	text3
	file	"C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/openxlcd.c"
	line	19
	global	__size_of_OpenXLCD
	__size_of_OpenXLCD	equ	__end_of_OpenXLCD-_OpenXLCD
	
_OpenXLCD:
;incstack = 0
	opt	stack 28
;OpenXLCD@lcdtype stored from wreg
	movwf	((c:OpenXLCD@lcdtype)),c
	line	28
	
l926:
;openxlcd.c: 28: PORTD &= 0x0f;
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	29
;openxlcd.c: 29: TRISD &= 0x0F;
	movlw	(0Fh)&0ffh
	andwf	((c:3989)),c	;volatile
	line	35
	
l928:
;openxlcd.c: 35: TRISDbits.TRISD0 = 0;
	bcf	((c:3989)),c,0	;volatile
	line	36
	
l930:
;openxlcd.c: 36: TRISDbits.TRISD1 = 0;
	bcf	((c:3989)),c,1	;volatile
	line	37
	
l932:
;openxlcd.c: 37: TRISDbits.TRISD2 = 0;
	bcf	((c:3989)),c,2	;volatile
	line	38
	
l934:
;openxlcd.c: 38: LATDbits.LATD0 = 0;
	bcf	((c:3980)),c,0	;volatile
	line	39
	
l936:
;openxlcd.c: 39: LATDbits.LATD1 = 0;
	bcf	((c:3980)),c,1	;volatile
	line	40
	
l938:
;openxlcd.c: 40: LATDbits.LATD2 = 0;
	bcf	((c:3980)),c,2	;volatile
	line	43
	
l940:
;openxlcd.c: 43: DelayPORXLCD();
	call	_DelayPORXLCD	;wreg free
	line	45
	
l942:
;openxlcd.c: 45: WriteCmdXLCD(0x30);
	movlw	(030h)&0ffh
	
	call	_WriteCmdXLCD
	line	46
	
l944:
;openxlcd.c: 46: Delay10KTCYx(0x05);
	movlw	(05h)&0ffh
	
	call	_Delay10KTCYx
	line	48
	
l946:
;openxlcd.c: 48: WriteCmdXLCD(0x30);
	movlw	(030h)&0ffh
	
	call	_WriteCmdXLCD
	line	49
	
l948:
;openxlcd.c: 49: Delay10KTCYx(0x01);
	movlw	(01h)&0ffh
	
	call	_Delay10KTCYx
	line	52
	
l950:
;openxlcd.c: 52: WriteCmdXLCD(0x32);
	movlw	(032h)&0ffh
	
	call	_WriteCmdXLCD
	line	53
;openxlcd.c: 53: while( BusyXLCD() );
	goto	l952
	
l81:
	goto	l952
	
l80:
	
l952:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l952
u20:
	goto	l954
	
l82:
	line	58
;openxlcd.c: 58: while(BusyXLCD());
	goto	l954
	
l84:
	goto	l954
	
l83:
	
l954:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u31
	goto	u30
u31:
	goto	l954
u30:
	goto	l956
	
l85:
	line	59
	
l956:
;openxlcd.c: 59: WriteCmdXLCD(lcdtype);
	movf	((c:OpenXLCD@lcdtype)),c,w
	
	call	_WriteCmdXLCD
	line	62
;openxlcd.c: 62: while(BusyXLCD());
	goto	l958
	
l87:
	goto	l958
	
l86:
	
l958:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u41
	goto	u40
u41:
	goto	l958
u40:
	goto	l960
	
l88:
	line	63
	
l960:
;openxlcd.c: 63: WriteCmdXLCD(0b00001011&0b00001101&0b00001110);
	movlw	(08h)&0ffh
	
	call	_WriteCmdXLCD
	line	64
;openxlcd.c: 64: while(BusyXLCD());
	goto	l962
	
l90:
	goto	l962
	
l89:
	
l962:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u51
	goto	u50
u51:
	goto	l962
u50:
	goto	l964
	
l91:
	line	65
	
l964:
;openxlcd.c: 65: WriteCmdXLCD(0b00001111&0b00001111&0b00001111);
	movlw	(0Fh)&0ffh
	
	call	_WriteCmdXLCD
	line	68
;openxlcd.c: 68: while(BusyXLCD());
	goto	l966
	
l93:
	goto	l966
	
l92:
	
l966:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u61
	goto	u60
u61:
	goto	l966
u60:
	goto	l968
	
l94:
	line	69
	
l968:
;openxlcd.c: 69: WriteCmdXLCD(0x01);
	movlw	(01h)&0ffh
	
	call	_WriteCmdXLCD
	line	72
;openxlcd.c: 72: while(BusyXLCD());
	goto	l970
	
l96:
	goto	l970
	
l95:
	
l970:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u71
	goto	u70
u71:
	goto	l970
u70:
	goto	l972
	
l97:
	line	73
	
l972:
;openxlcd.c: 73: WriteCmdXLCD(0b00000100);
	movlw	(04h)&0ffh
	
	call	_WriteCmdXLCD
	line	76
;openxlcd.c: 76: while(BusyXLCD());
	goto	l974
	
l99:
	goto	l974
	
l98:
	
l974:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u81
	goto	u80
u81:
	goto	l974
u80:
	goto	l976
	
l100:
	line	77
	
l976:
;openxlcd.c: 77: SetDDRamAddr(0x80);
	movlw	(080h)&0ffh
	
	call	_SetDDRamAddr
	goto	l101
	line	79
	
l978:
	line	80
;openxlcd.c: 79: return;
	
l101:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_OpenXLCD
	__end_of_OpenXLCD:
	signat	_OpenXLCD,4217
	global	_WriteCmdXLCD

;; *************** function _WriteCmdXLCD *****************
;; Defined at:
;;		line 13 in file "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/wcmdxlcd.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayFor18TCY
;; This function is called by:
;;		_main
;;		_OpenXLCD
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/wcmdxlcd.c"
	line	13
global __ptext4
__ptext4:
psect	text4
	file	"C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/wcmdxlcd.c"
	line	13
	global	__size_of_WriteCmdXLCD
	__size_of_WriteCmdXLCD	equ	__end_of_WriteCmdXLCD-_WriteCmdXLCD
	
_WriteCmdXLCD:
;incstack = 0
	opt	stack 29
;WriteCmdXLCD@cmd stored from wreg
	movwf	((c:WriteCmdXLCD@cmd)),c
	line	28
	
l874:
;wcmdxlcd.c: 28: TRISD &= 0x0f;
	movlw	(0Fh)&0ffh
	andwf	((c:3989)),c	;volatile
	line	29
;wcmdxlcd.c: 29: PORTD &= 0x0f;
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	30
;wcmdxlcd.c: 30: PORTD |= cmd&0xf0;
	movf	((c:WriteCmdXLCD@cmd)),c,w
	andlw	low(0F0h)
	iorwf	((c:3971)),c	;volatile
	line	36
	
l876:
;wcmdxlcd.c: 36: LATDbits.LATD0 = 0;
	bcf	((c:3980)),c,0	;volatile
	line	37
	
l878:
;wcmdxlcd.c: 37: LATDbits.LATD1 = 0;
	bcf	((c:3980)),c,1	;volatile
	line	38
	
l880:
;wcmdxlcd.c: 38: DelayFor18TCY();
	call	_DelayFor18TCY	;wreg free
	line	39
	
l882:
;wcmdxlcd.c: 39: LATDbits.LATD2 = 1;
	bsf	((c:3980)),c,2	;volatile
	line	40
	
l884:
;wcmdxlcd.c: 40: DelayFor18TCY();
	call	_DelayFor18TCY	;wreg free
	line	41
	
l886:
;wcmdxlcd.c: 41: LATDbits.LATD2 = 0;
	bcf	((c:3980)),c,2	;volatile
	line	43
;wcmdxlcd.c: 43: PORTD &= 0x0f;
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	44
;wcmdxlcd.c: 44: PORTD |= (cmd<<4)&0xf0;
	swapf	((c:WriteCmdXLCD@cmd)),c,w
	andlw	(0ffh shl 4) & 0ffh
	andlw	low(0F0h)
	iorwf	((c:3971)),c	;volatile
	line	49
	
l888:
;wcmdxlcd.c: 49: DelayFor18TCY();
	call	_DelayFor18TCY	;wreg free
	line	50
	
l890:
;wcmdxlcd.c: 50: LATDbits.LATD2 = 1;
	bsf	((c:3980)),c,2	;volatile
	line	51
	
l892:
;wcmdxlcd.c: 51: DelayFor18TCY();
	call	_DelayFor18TCY	;wreg free
	line	52
	
l894:
;wcmdxlcd.c: 52: LATDbits.LATD2 = 0;
	bcf	((c:3980)),c,2	;volatile
	line	54
;wcmdxlcd.c: 54: TRISD |= 0xf0;
	movlw	(0F0h)&0ffh
	iorwf	((c:3989)),c	;volatile
	goto	l178
	line	59
	
l896:
	line	60
;wcmdxlcd.c: 59: return;
	
l178:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_WriteCmdXLCD
	__end_of_WriteCmdXLCD:
	signat	_WriteCmdXLCD,4217
	global	_SetDDRamAddr

;; *************** function _SetDDRamAddr *****************
;; Defined at:
;;		line 13 in file "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/setddram.c"
;; Parameters:    Size  Location     Type
;;  DDaddr          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DDaddr          1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayFor18TCY
;; This function is called by:
;;		_main
;;		_OpenXLCD
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/setddram.c"
	line	13
global __ptext5
__ptext5:
psect	text5
	file	"C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/setddram.c"
	line	13
	global	__size_of_SetDDRamAddr
	__size_of_SetDDRamAddr	equ	__end_of_SetDDRamAddr-_SetDDRamAddr
	
_SetDDRamAddr:
;incstack = 0
	opt	stack 29
;SetDDRamAddr@DDaddr stored from wreg
	movwf	((c:SetDDRamAddr@DDaddr)),c
	line	28
	
l850:
;setddram.c: 28: TRISD &= 0x0f;
	movlw	(0Fh)&0ffh
	andwf	((c:3989)),c	;volatile
	line	29
;setddram.c: 29: PORTD &= 0x0f;
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	30
;setddram.c: 30: PORTD |= ((DDaddr | 0b10000000) & 0xf0);
	movf	((c:SetDDRamAddr@DDaddr)),c,w
	iorlw	low(080h)
	andlw	low(0F0h)
	iorwf	((c:3971)),c	;volatile
	line	36
	
l852:
;setddram.c: 36: LATDbits.LATD0 = 0;
	bcf	((c:3980)),c,0	;volatile
	line	37
	
l854:
;setddram.c: 37: LATDbits.LATD1 = 0;
	bcf	((c:3980)),c,1	;volatile
	line	38
	
l856:
;setddram.c: 38: DelayFor18TCY();
	call	_DelayFor18TCY	;wreg free
	line	39
	
l858:
;setddram.c: 39: LATDbits.LATD2 = 1;
	bsf	((c:3980)),c,2	;volatile
	line	40
	
l860:
;setddram.c: 40: DelayFor18TCY();
	call	_DelayFor18TCY	;wreg free
	line	41
	
l862:
;setddram.c: 41: LATDbits.LATD2 = 0;
	bcf	((c:3980)),c,2	;volatile
	line	43
;setddram.c: 43: PORTD &= 0x0f;
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	44
;setddram.c: 44: PORTD |= ((DDaddr<<4)&0xf0);
	swapf	((c:SetDDRamAddr@DDaddr)),c,w
	andlw	(0ffh shl 4) & 0ffh
	andlw	low(0F0h)
	iorwf	((c:3971)),c	;volatile
	line	49
	
l864:
;setddram.c: 49: DelayFor18TCY();
	call	_DelayFor18TCY	;wreg free
	line	50
	
l866:
;setddram.c: 50: LATDbits.LATD2 = 1;
	bsf	((c:3980)),c,2	;volatile
	line	51
	
l868:
;setddram.c: 51: DelayFor18TCY();
	call	_DelayFor18TCY	;wreg free
	line	52
	
l870:
;setddram.c: 52: LATDbits.LATD2 = 0;
	bcf	((c:3980)),c,2	;volatile
	line	54
;setddram.c: 54: TRISD |= 0xf0;
	movlw	(0F0h)&0ffh
	iorwf	((c:3989)),c	;volatile
	goto	l167
	line	59
	
l872:
	line	60
;setddram.c: 59: return;
	
l167:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_SetDDRamAddr
	__end_of_SetDDRamAddr:
	signat	_SetDDRamAddr,4217
	global	_DelayPORXLCD

;; *************** function _DelayPORXLCD *****************
;; Defined at:
;;		line 26 in file "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/lab1asm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_OpenXLCD
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/lab1asm.c"
	line	26
global __ptext6
__ptext6:
psect	text6
	file	"C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/lab1asm.c"
	line	26
	global	__size_of_DelayPORXLCD
	__size_of_DelayPORXLCD	equ	__end_of_DelayPORXLCD-_DelayPORXLCD
	
_DelayPORXLCD:
;incstack = 0
	opt	stack 29
	line	27
	
l812:
;lab1asm.c: 27: _delay((unsigned long)((15)*(4000000UL/4000.0)));
	movlw	15
movwf	(??_DelayPORXLCD+0+0)&0ffh,c,f
	movlw	158
u277:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	goto	u277
	decfsz	(??_DelayPORXLCD+0+0)&0ffh,c,f
	goto	u277

	line	28
	
l31:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_DelayPORXLCD
	__end_of_DelayPORXLCD:
	signat	_DelayPORXLCD,89
	global	_Delay10KTCYx

;; *************** function _Delay10KTCYx *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\pic18\d10ktcyx.c"
;; Parameters:    Size  Location     Type
;;  unit            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  unit            1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_OpenXLCD
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\pic18\d10ktcyx.c"
	line	8
global __ptext7
__ptext7:
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\pic18\d10ktcyx.c"
	line	8
	global	__size_of_Delay10KTCYx
	__size_of_Delay10KTCYx	equ	__end_of_Delay10KTCYx-_Delay10KTCYx
	
_Delay10KTCYx:
;incstack = 0
	opt	stack 29
;Delay10KTCYx@unit stored from wreg
	movwf	((c:Delay10KTCYx@unit)),c
	line	10
	
l391:
	line	11
	
l898:
	movlw	10
movwf	(??_Delay10KTCYx+0+0)&0ffh,c,f
	movlw	190
u287:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	goto	u287
	decfsz	(??_Delay10KTCYx+0+0)&0ffh,c,f
	goto	u287
	nop2

	line	12
	
l900:
	decfsz	((c:Delay10KTCYx@unit)),c
	
	goto	l391
	goto	l393
	
l392:
	line	13
	
l393:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Delay10KTCYx
	__end_of_Delay10KTCYx:
	signat	_Delay10KTCYx,4217
	global	_BusyXLCD

;; *************** function _BusyXLCD *****************
;; Defined at:
;;		line 11 in file "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/busyxlcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayFor18TCY
;; This function is called by:
;;		_main
;;		_OpenXLCD
;;		_putsXLCD
;;		_putrsXLCD
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/busyxlcd.c"
	line	11
global __ptext8
__ptext8:
psect	text8
	file	"C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/busyxlcd.c"
	line	11
	global	__size_of_BusyXLCD
	__size_of_BusyXLCD	equ	__end_of_BusyXLCD-_BusyXLCD
	
_BusyXLCD:
;incstack = 0
	opt	stack 28
	line	13
	
l814:
;busyxlcd.c: 13: LATDbits.LATD0 = 1;
	bsf	((c:3980)),c,0	;volatile
	line	14
;busyxlcd.c: 14: LATDbits.LATD1 = 0;
	bcf	((c:3980)),c,1	;volatile
	line	15
	
l816:
;busyxlcd.c: 15: DelayFor18TCY();
	call	_DelayFor18TCY	;wreg free
	line	16
	
l818:
;busyxlcd.c: 16: LATDbits.LATD2 = 1;
	bsf	((c:3980)),c,2	;volatile
	line	17
;busyxlcd.c: 17: DelayFor18TCY();
	call	_DelayFor18TCY	;wreg free
	line	33
	
l820:
;busyxlcd.c: 33: if(PORTD&0x80)
	
	btfss	((c:3971)),c,(7)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l57
u10:
	line	38
	
l822:
;busyxlcd.c: 37: {
;busyxlcd.c: 38: LATDbits.LATD2 = 0;
	bcf	((c:3980)),c,2	;volatile
	line	39
	
l824:
;busyxlcd.c: 39: DelayFor18TCY();
	call	_DelayFor18TCY	;wreg free
	line	40
	
l826:
;busyxlcd.c: 40: LATDbits.LATD2 = 1;
	bsf	((c:3980)),c,2	;volatile
	line	41
;busyxlcd.c: 41: DelayFor18TCY();
	call	_DelayFor18TCY	;wreg free
	line	42
	
l828:
;busyxlcd.c: 42: LATDbits.LATD2 = 0;
	bcf	((c:3980)),c,2	;volatile
	line	43
	
l830:
;busyxlcd.c: 43: LATDbits.LATD0 = 0;
	bcf	((c:3980)),c,0	;volatile
	line	44
	
l832:
;busyxlcd.c: 44: return 1;
	movlw	(01h)&0ffh
	goto	l58
	
l834:
	goto	l58
	line	45
	
l836:
;busyxlcd.c: 45: }
	goto	l58
	line	46
	
l57:
	line	48
;busyxlcd.c: 46: else
;busyxlcd.c: 47: {
;busyxlcd.c: 48: LATDbits.LATD2 = 0;
	bcf	((c:3980)),c,2	;volatile
	line	49
	
l838:
;busyxlcd.c: 49: DelayFor18TCY();
	call	_DelayFor18TCY	;wreg free
	line	50
	
l840:
;busyxlcd.c: 50: LATDbits.LATD2 = 1;
	bsf	((c:3980)),c,2	;volatile
	line	51
;busyxlcd.c: 51: DelayFor18TCY();
	call	_DelayFor18TCY	;wreg free
	line	52
	
l842:
;busyxlcd.c: 52: LATDbits.LATD2 = 0;
	bcf	((c:3980)),c,2	;volatile
	line	53
	
l844:
;busyxlcd.c: 53: LATDbits.LATD0 = 0;
	bcf	((c:3980)),c,0	;volatile
	line	54
	
l846:
;busyxlcd.c: 54: return 0;
	movlw	(0)&0ffh
	goto	l58
	
l848:
	goto	l58
	line	55
	
l59:
	line	57
	
l58:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_BusyXLCD
	__end_of_BusyXLCD:
	signat	_BusyXLCD,89
	global	_DelayFor18TCY

;; *************** function _DelayFor18TCY *****************
;; Defined at:
;;		line 17 in file "C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/lab1asm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_BusyXLCD
;;		_SetDDRamAddr
;;		_WriteCmdXLCD
;;		_WriteDataXLCD
;;		_ReadAddrXLCD
;;		_ReadDataXLCD
;;		_SetCGRamAddr
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	file	"C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/lab1asm.c"
	line	17
global __ptext9
__ptext9:
psect	text9
	file	"C:/Users/Daniel Phillips/Documents/UWI/Year 3/ECNG 3006/Projects/L01_814002896XC8.X/lab1asm.c"
	line	17
	global	__size_of_DelayFor18TCY
	__size_of_DelayFor18TCY	equ	__end_of_DelayFor18TCY-_DelayFor18TCY
	
_DelayFor18TCY:
;incstack = 0
	opt	stack 28
	line	18
	
l810:
;lab1asm.c: 18: _delay(18);
	movlw	4
u297:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	goto	u297
	nop2	;nop

	line	19
	
l25:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_DelayFor18TCY
	__end_of_DelayFor18TCY:
	signat	_DelayFor18TCY,89
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 16
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
