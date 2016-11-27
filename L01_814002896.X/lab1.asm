		    include	    <p18F452.inc>
		   
		    UDATA	    0x480
MapName		    RES		    2		    ;reserving one byte in memory for variable. 
		    
		    CODE
init
						    ;Places Message "0b110!!" in Registers
		    LFSR	    FSR0,0x480
		    MOVLW	    0x30	    ;ASCII "0"
		    MOVWF	    POSTINC0	    
		    MOVLW	    0x62	    ;ASCII "b"
		    MOVWF	    POSTINC0
		    MOVLW	    0x31	    ;ASCII "1"
		    MOVWF	    POSTINC0
		    MOVWF	    POSTINC0
		    MOVLW	    0x30	    ;ASCII "0"
		    MOVWF	    POSTINC0
		    MOVLW	    0x21	    ;ASCII "!"
		    MOVWF	    POSTINC0
		    MOVWF	    POSTINC0
		    MOVLW	    0x00	    ;ASCII NULL
		    MOVWF	    POSTINC0
getMapChar
		    EXTERN	    MapIndex	    ;Declares Label as C variable reference
		    LFSR	    FSR0,0x480	    ;Places the MapName memory location in the FSR
		    MOVF	    MapIndex,W	    ;Gets the MapIndex Value from the c program
		    SUBLW	    0x007	    ;Checks of the MapIndex Value is larger than 7 
		    BTFSS	    STATUS,0	    ;Checks Carry flag to determine sign of the result
		    goto	    VALUE_TOO_LARGE ;If MapIndex is larger than 7 program goes here
		    MOVF	    MapIndex,W	    ;If MapIndex is smaller than 7 the character is determined
		    MOVF	    PLUSW0,W	    ;Indirect Addressing to place the char in WREG
		    RETURN			    ;The character is returned
VALUE_TOO_LARGE
		    MOVLW	    0xFF	    ;Since MapIndex greater than 7, 255 is placed in WREG
		    RETURN			    ;255 is returned

		    GLOBAL	    getMapChar	    ;makes the labels accessible to External C file
		    GLOBAL	    MapName	    ;Makes the label accessible to External C file
		    GLOBAL	    init	    ;Initalizes the registers
		    END
