
_main:

;MyProject2.c,1 :: 		void main() {
;MyProject2.c,2 :: 		TRISB.F0=0;
	BCF        TRISB+0, 0
;MyProject2.c,3 :: 		while(1)
L_main0:
;MyProject2.c,5 :: 		PORTB.F0=1;
	BSF        PORTB+0, 0
;MyProject2.c,6 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_main2:
	DECFSZ     R13, 1
	GOTO       L_main2
	DECFSZ     R12, 1
	GOTO       L_main2
	DECFSZ     R11, 1
	GOTO       L_main2
	NOP
	NOP
;MyProject2.c,7 :: 		PORTB.F0=0;
	BCF        PORTB+0, 0
;MyProject2.c,8 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_main3:
	DECFSZ     R13, 1
	GOTO       L_main3
	DECFSZ     R12, 1
	GOTO       L_main3
	DECFSZ     R11, 1
	GOTO       L_main3
	NOP
	NOP
;MyProject2.c,9 :: 		}
	GOTO       L_main0
;MyProject2.c,10 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
