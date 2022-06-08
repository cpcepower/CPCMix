IFDEF DEBUG:list
;-------------------------------------------------------------------------------
; CPCMix_Menu_int - $VER 1.1 (c) 2022 by Megachur 
; ---------------------------
; Interruption code
; ---------------------------
; af, bc and hl preserved by z80_int
;-------------------------------------------------------------------------------
nolist:ENDIF
;-------------------------------------------------------------------------------
Z80_INT_PUSH_DE equ 1
; ---------------------------
	read "../include/z80_int.asm"
; ---------------------------
INT1:
; ---------------------------
	call fdc_sense_interrupt
	call keyboard_scan
	Z80_INT_END 1
; ------------------------------------------------------------------------------
