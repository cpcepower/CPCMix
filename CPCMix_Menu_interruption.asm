;-------------------------------------------------------------------------------
IFDEF DEBUG:list
; CPCMix_Menu_interruption.asm - $VER 1.0
nolist:ENDIF
;-------------------------------------------------------------------------------
	jr INT1:nop
	jr z80_interruption_back_noINT:nop	; INT2
	jr z80_interruption_back_noINT:nop	; INT3
	jr z80_interruption_back_noINT:nop	; INT4
	jr z80_interruption_back_noINT:nop	; INT5
	jr z80_interruption_back_noINT:nop	; INT6
; ---------------------------
INT1:
; ---------------------------
	call fdc_sense_interrupt
	call keyboard_scan
	jr z80_interruption_back
; ------------------------------------------------------------------------------
