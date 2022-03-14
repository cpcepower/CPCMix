; Music of The Plot (1987)(Firebird)()()
; Ripped by Megachur the 12/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THEPLOT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #166b

	read "music_header.asm"

;
.init_music
;
	ld hl,l1969
	ld (l1b3b),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l1b37),hl
	ld (l1b39),de
	ld a,8		; #01 - modified by Megachur
	ld (l1b2d),a
	ld (l16ab),a
	ld a,#08
	ld b,#03
	ld c,#00
.l168d
	call l174e
	inc a
	djnz l168d
	ld a,#07
	ld c,#38
	call l174e
	xor a
	ld h,a
	ld l,a
	ld (l1b32),hl
	ld (l1864),a
	ld (l186b),a
	ld (l1863),a
	ret
;
.play_music
.l16aa
;
.l16ab equ $ + 1
	ld a,#00
	dec a
	jr nz,l16b2
	ld a,(l1b2d)
.l16b2
	ld (l16ab),a
	ret nz
	call l16e8
	jr nc,l16e4
	ld hl,(l1b3b)	; change pattern
	inc hl
	inc hl
	ld (l1b3b),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,e
	or d
	jr nz,l16d6
	ld e,(hl)	; reset music
	inc hl
	ld d,(hl)
	ld (l1b3b),de
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
.l16d6
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l1b39),de
	ld (l1b37),hl
	call l16e8
.l16e4
	call l1712
	ret
.l16e8
	ld hl,(l1b37)
	inc hl
	ld a,(hl)
	ld (l1b37),hl
	cp #ff
	jr nz,l16f6
	scf
	ret
.l16f6
	ld a,(hl)
	add a
	ret z
	ld hl,l18eb
	call l0018		; rst #18 - modified by Megachur
	ld c,(hl)
	ld a,#02
	call l174e
	inc hl
	ld c,(hl)
	inc a
	call l174e
	ld c,#0c
	ld a,#09
	call l174e
	or a
	ret
.l1712
	ld hl,(l1b39)
	inc hl
	ld (l1b39),hl
	ld a,(hl)
	or a
	jr nz,l1725
	ld a,#0a
	ld c,#00
	call l174e
	ret
.l1725
	ld hl,l18eb
	add a
	call l0018		; rst #18 - modified by Megachur
	ld c,(hl)
	ld a,#04
	call l174e
	inc hl
	ld c,(hl)
	ld a,#05
	call l174e
	ld c,#0c
	ld a,#0a
	call l174e
	ret
	ld a,#08
	ld c,#00
	di
	ld b,#03
.l1746
	call l174e
	inc a
	djnz l1746
	ei
	ret
.l174e
	push af
	push bc
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	pop bc
	pop af
	ret
	call l1776
	jp l17dd
.l1776
	ld hl,l1b33
	ld a,(hl)
	or a
	jr z,l17a3
	ld (hl),#00
	ld hl,l18e1
	dec a
	call l0010		; rst #10 - modified by Megachur
	xor a
	ld (l1b32),a
	ld a,#07
	ld c,#31
	call l174e
	ld a,#01
	ld (l1863),a
	ld de,l1864
	ld bc,#0006
	ldi
	ld a,(hl)
	ldi
	ld (de),a
	inc de
	ldir
.l17a3
	ld a,(l1863)
	cp #01
	ret nz
	ld hl,l1864
	ld a,(hl)
	or a
	ret z
	dec (hl)
	jr nz,l17be
	ld a,#08
	ld c,#00
	call l174e
	xor a
	ld (l1863),a
	ret
.l17be
	inc hl
	ld a,(hl)
	inc hl
	dec (hl)
	ret nz
	ld (hl),a
	inc hl
	ld e,(hl)
	inc hl
	ld a,#06
	ld c,(hl)
	call l174e
	ld a,e
	add (hl)
	ld (hl),a
	inc hl
	ld e,(hl)
	inc hl
	ld a,#08
	ld c,(hl)
	call l174e
	ld a,e
	add (hl)
	ld (hl),a
	ret
.l17dd
	ld hl,l1b32
	ld a,(hl)
	or a
	jr z,l17ff
	ld (hl),#00
	ld hl,l18d7
	dec a
	call l0010		; rst #10 - modified by Megachur
	ld a,#07
	ld c,#38
	call l174e
	ld a,#02
	ld (l1863),a
	ld de,l186b
	ld bc,#000d
	ldir
.l17ff
	ld a,(l1863)
	cp #02
	ret nz
	ld hl,(l186b)
	ld a,l
	or a
	ret z
	dec l
	jr nz,l182c
	dec h
	jr nz,l1820
	ld (l186b),hl
	ld a,#08
	ld c,#00
	call l174e
	xor a
	ld (l1863),a
	ret
.l1820
	ld a,(l186d)
	ld l,a
	ld de,(l1876)
	ld (l1870),de
.l182c
	ld (l186b),hl
	ld hl,(l186e)
	dec l
	jr nz,l183f
	ld l,h
	ld de,(l1874)
	ld a,e
	add d
	ld (l1874),a
.l183f
	ld (l186e),hl
	ld de,(l1870)
	ld hl,(l1872)
	ld a,#00
	ld c,e
	call l174e
	ld a,#01
	ld c,d
	call l174e
	add hl,de
	ld (l1870),hl
	ld a,#08
	ld bc,(l1874)
	call l174e
	ret
.l1864 equ $ + 1
.l1863
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1872 equ $ + 7
.l1870 equ $ + 5
.l186e equ $ + 3
.l186d equ $ + 2
.l186b
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1878 equ $ + 5
.l1876 equ $ + 3
.l1874 equ $ + 1
	db #00,#00,#00,#00,#00,#01,#0a,#10
	db #07,#07,#00,#00,#07,#00,#0f,#ff
.l1885 equ $ + 2
	db #00,#01,#01,#20,#06,#07,#07,#00
.l1892 equ $ + 7
	db #00,#19,#00,#0f,#ff,#00,#00,#01
	db #0c,#08,#07,#07,#00,#00,#20,#00
.l189f equ $ + 4
	db #0f,#ff,#00,#01,#01,#20,#06,#07
	db #07,#00,#00,#80,#ff,#0f,#ff,#00
.l18ac equ $ + 1
	db #02,#01,#02,#80,#07,#07,#00,#01
.l18b9 equ $ + 6
	db #02,#00,#0f,#ff,#80,#00,#1e,#02
.l18bf equ $ + 4
	db #00,#1f,#ff,#0f,#0f,#02,#03,#00
.l18c5 equ $ + 2
	db #ff,#0f,#78,#04,#ff,#1f,#00,#0f
.l18d1 equ $ + 6
.l18cb
	db #1f,#02,#f8,#1f,#ff,#0f,#78,#03
	db #01,#00,#00,#0f
.l18d7
	dw l1878,l1885,l1892,l189f
.l18e1 equ $ + 2
	dw l18ac,l18b9,l18bf,l18c5
	dw l18cb,l18d1
.l18eb
	dw #03bc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
	dw #00ef,#00e1,#00d5,#00c9
	dw #00be,#00b3,#00a9,#009f
	dw #0096,#008e,#0086,#007f
	dw #0077,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
.l1963
	dw l1abb,#0000,l1963
.l1969
	dw l1a52,l1a52,l1abf,l1a85
	dw l1a85,l1a52,l1a52,l1abf
	dw l1abf,l1aa0,l1aa0,l1a52
	dw l1a52,l1adf,l1adf,l1b12
	dw l1b12,#0000,l1969
	db #03,#00,#0f,#03,#00,#0f,#03,#00
	db #0f,#03,#00,#0f,#0a,#00,#16,#0a
	db #00,#16,#0a,#00,#16,#0a,#00,#16
	db #0b,#00,#17,#0b,#00,#17,#0b,#00
	db #17,#0b,#00,#17,#06,#00,#12,#06
	db #00,#12,#06,#00,#12,#06,#00,#12
	db #06,#00,#12,#06,#00,#12,#06,#00
	db #12,#06,#0d,#12,#09,#00,#15,#09
	db #00,#15,#09,#00,#15,#09,#10,#15
	db #09,#00,#15,#09,#00,#15,#09,#00
	db #15,#09,#00,#15,#06,#00,#12,#06
	db #00,#12,#06,#00,#12,#06,#00,#12
	db #00,#00,#06,#00,#12,#06,#00,#12
	db #0d,#10,#12,#0d,#10,#12,#09,#00
	db #15,#09,#00,#15,#0d,#10,#12,#0d
	db #10,#12,#00,#0a,#00,#16,#0a,#00
	db #16,#0a,#00,#16,#0a,#0f,#11,#0b
	db #00,#17,#0b,#00,#17,#0b,#00,#17
	db #0b,#11,#12,#0d,#00,#19,#0d,#00
	db #19,#0d,#00,#19,#0d,#14,#19,#0d
	db #00,#19,#0d,#00,#19,#0d,#00,#19
	db #0d,#14,#19,#0f,#00,#00,#03,#00
	db #00,#00,#00,#01,#0d,#00,#0f,#0a
	db #00,#00,#16,#00,#00,#14,#00,#14
.l1a52 equ $ + 3
	db #16,#00,#16,#8e,#19,#2a,#00,#22
	db #2a,#00,#29,#00,#00,#27,#00,#00
	db #00,#25,#00,#27,#29,#00,#22,#00
	db #00,#00,#00,#00,#22,#27,#00,#1e
	db #27,#00,#25,#00,#00,#23,#00,#00
	db #25,#00,#00,#00,#00,#00,#00,#00
.l1a85 equ $ + 6
	db #00,#00,#00,#00,#00,#ff,#be,#19
	db #2a,#00,#00,#25,#00,#23,#00,#00
	db #00,#25,#00,#00,#21,#00,#00,#28
	db #00,#26,#00,#00,#00,#28,#00,#00
.l1aa0 equ $ + 1
	db #ff,#d6,#19,#21,#00,#00,#20,#00
	db #00,#21,#00,#00,#1c,#00,#00,#21
	db #20,#21,#28,#21,#20,#21,#20,#21
.l1abb equ $ + 4
	db #28,#21,#20,#ff,#ee,#19,#00,#ff
.l1abf
	db #f0,#19,#12,#00,#1e,#12,#00,#1e
	db #19,#1c,#1e,#19,#1c,#1e,#15,#00
	db #21,#15,#00,#21,#19,#1c,#1e,#19
	db #1c,#1e,#ff,#08,#1a,#00,#00,#ff
.l1adf
	db #09,#1a,#22,#1d,#16,#22,#1d,#16
	db #22,#1d,#16,#22,#1b,#1d,#23,#1e
	db #17,#23,#1e,#17,#23,#1e,#17,#23
	db #1d,#1e,#19,#20,#19,#20,#19,#20
	db #19,#20,#19,#20,#19,#20,#19,#1d
	db #19,#1d,#19,#1d,#19,#1d,#19,#1d
	db #19,#1d,#ff
.l1b12
	db #39,#1a,#1b,#00,#00,#0f,#00,#00
	db #00,#00,#0d,#19,#00,#1b,#16,#00
	db #00,#22,#00,#00,#20,#00,#20,#22
.l1b2d equ $ + 3
	db #00,#22,#ff,#00
.l1b2f equ $ + 1
	dw #0000,l1b2f
.l1b39 equ $ + 7
.l1b37 equ $ + 5
.l1b33 equ $ + 1
.l1b32
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1b3b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
;
; #0101
;	call #166b	; init music
;
; #c7a4
;	call #16aa	; play music interrupt

; #0010
; rst #10
.l0010
	add a
	call l0018		; rst #18 - modified by Megachur
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ret
	nop
; rst #18
.l0018
	add l
	ld l,a
	adc h
	sub l
	ld h,a
	ret
;	nop
;	nop
;	ld a,b
;	dec hl
;	nop
;	nop
;	nop
;	nop
;	nop
;	nop
;	ei
;	ld b,#00
;.l002b
;	halt
;	djnz l002b
;	ret
;	nop
;	nop
;	nop
;	nop
;	nop
;	nop
;	nop
;	nop
;	nop
;	jp #075c
;
;
.music_info
	db "The Plot (1987)(Firebird)()",0
	db "",0

	read "music_end.asm"
