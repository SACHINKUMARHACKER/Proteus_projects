
_main:

;lcd_interface_with_pic.c,15 :: 		void main() {
;lcd_interface_with_pic.c,16 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;lcd_interface_with_pic.c,17 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcd_interface_with_pic.c,18 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcd_interface_with_pic.c,19 :: 		Lcd_Out(1,1, "Hello World");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_lcd_interface_with_pic+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lcd_interface_with_pic.c,20 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
