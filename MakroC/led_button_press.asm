
_main:

;led_button_press.c,1 :: 		void main() {
;led_button_press.c,2 :: 		TRISD.F0 = 1; // INPUT
	BSF        TRISD+0, 0
;led_button_press.c,3 :: 		TRISB.F0 = 0; // OUTPUT
	BCF        TRISB+0, 0
;led_button_press.c,4 :: 		PORTB.F0 = 0; // LED OFF
	BCF        PORTB+0, 0
;led_button_press.c,5 :: 		do
L_main0:
;led_button_press.c,7 :: 		if (PORTD.F0 == 0) // IF THE SWITCH IS PRESSED
	BTFSC      PORTD+0, 0
	GOTO       L_main3
;led_button_press.c,9 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
;led_button_press.c,10 :: 		if(PORTD.F0 == 0){
	BTFSC      PORTD+0, 0
	GOTO       L_main5
;led_button_press.c,11 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
;led_button_press.c,12 :: 		if (PORTD.F0 == 0){
	BTFSC      PORTD+0, 0
	GOTO       L_main7
;led_button_press.c,14 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;led_button_press.c,16 :: 		}
L_main7:
;led_button_press.c,17 :: 		}
L_main5:
;led_button_press.c,18 :: 		}
L_main3:
;led_button_press.c,19 :: 		}while(1);
	GOTO       L_main0
;led_button_press.c,20 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
