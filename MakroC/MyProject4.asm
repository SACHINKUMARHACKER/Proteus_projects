
_main:

;MyProject4.c,1 :: 		void main() {
;MyProject4.c,2 :: 		TRISB.F0 = 0;
	BCF        TRISB+0, 0
;MyProject4.c,3 :: 		TRISB.F1 = 1;
	BSF        TRISB+0, 1
;MyProject4.c,4 :: 		while(1){
L_main0:
;MyProject4.c,5 :: 		if(PORTB.F1 == 1){
	BTFSS      PORTB+0, 1
	GOTO       L_main2
;MyProject4.c,6 :: 		PORTB.F0 = 1;
	BSF        PORTB+0, 0
;MyProject4.c,7 :: 		}
	GOTO       L_main3
L_main2:
;MyProject4.c,9 :: 		PORTB.F0 =0;
	BCF        PORTB+0, 0
;MyProject4.c,10 :: 		}
L_main3:
;MyProject4.c,11 :: 		}
	GOTO       L_main0
;MyProject4.c,12 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
