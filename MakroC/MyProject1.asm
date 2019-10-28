
_main:

;MyProject1.c,1 :: 		void main() {
;MyProject1.c,2 :: 		TRISB.F0 = 0;
	BCF        TRISB+0, 0
;MyProject1.c,3 :: 		TRISD.F0 = 1;
	BSF        TRISD+0, 0
;MyProject1.c,5 :: 		while(1){
L_main0:
;MyProject1.c,6 :: 		if(PORTD.F0 == 1){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;MyProject1.c,7 :: 		PORTB.F0 =0;
	BCF        PORTB+0, 0
;MyProject1.c,8 :: 		}
	GOTO       L_main3
L_main2:
;MyProject1.c,9 :: 		else if(PORTD.F0 == 0)
	BTFSC      PORTD+0, 0
	GOTO       L_main4
;MyProject1.c,11 :: 		PORTB.F0 = 1;
	BSF        PORTB+0, 0
;MyProject1.c,12 :: 		}
L_main4:
L_main3:
;MyProject1.c,14 :: 		}
	GOTO       L_main0
;MyProject1.c,15 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
