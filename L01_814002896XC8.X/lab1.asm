		    #include	    <xc.inc>
		    
		    GLOBAL	    _getMapChar	    ;makes the labels accessible to External C file
		    GLOBAL	    _MapName	    ;Makes the label accessible to External C file
		    GLOBAL	    _init	    ;Initalizes the registers		    
		    GLOBAL	    _MapIndex
		   	    
_MapName	    EQU		    0x480   ;reserving one byte in memory for variable. 	
		    
		
	    PSECT mytext,local,class=CODE,reloc=2 
_init:
						    ;Places Message "0b110!!" in Registers
		    MOVLW	    0x80
		    MOVWF	    FSR0
		    MOVLW	    0x04
		    MOVWF	    FSR1
		    CLRF	    FSR2			    
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
_getMapChar:
		    MOVLW	    0x80	    ;Places the MapName memory location in the FSR
		    MOVWF	    FSR0
		    MOVLW	    0x04
		    MOVWF	    FSR1
		    CLRF	    FSR2
		    MOVF	    _MapIndex,W	    ;Gets the MapIndex Value from the c program
		    SUBLW	    0x007	    ;Checks of the MapIndex Value is larger than 7 
		    BTFSS	    STATUS,0	    ;Checks Carry flag to determine sign of the result
		    goto	    VALUE_TOO_LARGE ;If MapIndex is larger than 7 program goes here
		    MOVF	    _MapIndex,W	    ;If MapIndex is smaller than 7 the character is determined
		    MOVF	    PLUSW0,W	    ;Indirect Addressing to place the char in WREG
		    RETURN			    ;The character is returned
VALUE_TOO_LARGE:
		    MOVLW	    0xFF	    ;Since MapIndex greater than 7, 255 is placed in WREG
		    RETURN			    ;255 is returned

		    
		    END
