; Music of Boulder Dash 3 (1984)(First Star Software)()()
; Ripped by Megachur the 06/02/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOULDED3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #1818

	read "music_header.asm"

.l1818
	push bc
	push af
	ld b,a
	ld a,c
	ld c,b
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
	pop af
	pop bc
	ret
;
.init_music
.play_music
;
	ld a,#3c
	ld c,#07
	call l1818
	ld a,(l00ef)
	or a
	jr nz,l1890
	ld e,(iy+#2e)
	inc (iy+#2e)
	inc (iy+#2e)
	ld hl,l697a
	ld d,#00
	add hl,de
	push hl
	ld e,(hl)
	sla e
	rl d
	ld hl,l6a79
	add hl,de
	ld a,(hl)
	ld c,#00
	call l1818
	inc hl
	inc c
	ld a,(hl)
	call l1818
	pop hl
	dec hl
	ld d,#00
	ld e,(hl)
	sla e
	rl d
	ld hl,l6a79
	add hl,de
	ld a,(hl)
	inc c
	call l1818
	inc hl
	inc c
	ld a,(hl)
	call l1818
	ld a,(l00ee)
	or a
	jr nz,l1890
	inc (iy+#30)
.l1890
	ld a,(l00ef)
	add #07
	ld c,#09
	call l1818
	ld a,(l00ef)
	xor #07
	add #09
	dec c
	call l1818
	ld a,#07
	inc (iy+#2f)
	and (iy+#2f)
	ld (l00ef),a
	bit 0,(iy-#49)
	jr z,l18c1
	ld a,(l00f0)
	cp #02
	jr nz,l18c1
	ld (iy+#31),#01
.l18c1
	ret
	ret
	
.l00c0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#04,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l00ef equ $ + 7
.l00ee equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l00f0
	db #00,#00,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #0f,#01,#01,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#01,#02,#00,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#05,#00,#c0,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#00,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	
.l697a
	db #22,#1d,#26,#22,#29,#25,#2e,#14
	db #24,#1f,#27,#20,#29,#27,#30,#12
	db #2a,#12,#2c,#1e,#2e,#12,#31,#20
	db #2c,#33,#37,#21,#2d,#31,#35,#16
	db #22,#16,#2e,#16,#1d,#16,#24,#14
	db #20,#14,#30,#14,#24,#14,#20,#16
	db #22,#16,#2e,#16,#1d,#16,#24,#1e
	db #2a,#1e,#3a,#1e,#2e,#1e,#2a,#14
	db #20,#14,#2c,#14,#1b,#14,#22,#1c
	db #28,#1c,#38,#1c,#2c,#1c,#28,#11
	db #1d,#29,#2d,#11,#1f,#29,#2e,#0f
	db #27,#0f,#27,#16,#33,#16,#27,#16
	db #2e,#16,#2e,#16,#2e,#16,#2e,#22
	db #2e,#22,#2e,#16,#2e,#16,#2e,#14
	db #2e,#14,#2e,#14,#2e,#14,#2e,#20
	db #2e,#20,#2e,#14,#2e,#14,#2e,#16
	db #2e,#32,#2e,#16,#2e,#33,#2e,#22
	db #2e,#32,#2e,#16,#2e,#33,#2e,#14
	db #2e,#32,#2e,#14,#2e,#33,#2e,#20
	db #2c,#30,#2c,#14,#2c,#31,#2c,#16
	db #2e,#16,#3a,#16,#2e,#35,#38,#22
	db #2e,#22,#37,#16,#2e,#31,#35,#14
	db #2c,#14,#38,#14,#2c,#14,#38,#20
	db #2c,#20,#33,#14,#2c,#14,#38,#16
	db #2e,#32,#2e,#16,#2e,#33,#2e,#22
	db #2e,#32,#2e,#16,#2e,#33,#2e,#14
	db #2e,#32,#2e,#14,#2e,#33,#2e,#20
	db #2c,#30,#2c,#14,#2c,#31,#2c,#2e
	db #32,#29,#2e,#26,#29,#22,#26,#2c
	db #30,#27,#2c,#24,#27,#14,#20,#35
	db #32,#32,#2e,#2e,#29,#29,#26,#27
.l6a79 equ $ + 7
	db #30,#24,#2c,#20,#27,#14,#20,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
	dw #0575,#0527,#04dd,#0497
	dw #0455,#0417,#03dc,#03a4
	dw #0370,#033f,#0310,#02e4
	dw #02ba,#0293,#026e,#024b
	dw #022a,#020b,#01ee,#01d2
	dw #01b8,#019f,#0188,#0172
	dw #015d,#0149,#0137,#0125
	dw #0115,#0105,#00f7,#00e9
	dw #00dc,#00cf,#00c4,#00b9
	dw #00ae,#00a4,#009b,#0092
	dw #008a,#0082,#007b,#0074
	dw #006e,#0067,#0062,#005c
	dw #0057
	db #6c,#6c,#6c,#6c,#6c,#6c,#6c,#6c
	db #6c,#6c,#6c,#6c,#6c,#6c,#6c,#6c
	db #6c,#6c,#6c,#6c,#6d,#6b,#6b,#6b
	db #6b,#6b,#6b,#6b,#6b,#6b,#6b,#6b
	db #6b,#6b,#6b,#6b,#6b,#6b,#6b,#6e
	db #6d,#60,#61,#62,#6b,#6b,#6b,#6b
	db #6b,#6b,#6b,#6b,#6b,#6b,#6b,#6b
	db #6b,#6b,#6b,#6e,#6d,#60,#6b,#63
	db #60,#61,#65,#66,#63,#60,#6b,#65
	db #61,#62,#60,#61,#65,#61,#62,#6e
	db #6d,#60,#61,#64,#60,#65,#65,#66
	db #63,#60,#6b,#65,#66,#63,#60,#6b
	db #65,#66,#63,#6e,#6d,#60,#61,#62
	db #60,#65,#65,#66,#63,#60,#6b,#65
	db #66,#63,#60,#66,#65,#61,#64,#6e
	db #6d,#60,#6b,#63,#60,#65,#65,#66
	db #63,#60,#6b,#65,#66,#63,#60,#6b
	db #65,#61,#62,#6e,#6d,#60,#61,#66
	db #60,#61,#65,#61,#66,#60,#61,#65
	db #61,#66,#60,#61,#65,#66,#63,#6e
	db #6d,#60,#61,#64,#60,#61,#65,#61
	db #66,#60,#61,#65,#61,#64,#60,#61
	db #65,#66,#63,#6e,#6d,#6b,#6b,#6b
	db #6b,#6b,#6b,#6b,#6b,#6b,#6b,#6b
	db #6b,#6b,#6b,#6b,#6b,#6b,#6b,#6e
	db #6d,#6b,#6b,#65,#61,#69,#6b,#6b
	db #6b,#6b,#6b,#6b,#6b,#6b,#6b,#6b
	db #6b,#6b,#6b,#6e,#6d,#6b,#6b,#65
	db #66,#65,#6b,#60,#62,#60,#61,#65
	db #66,#65,#6b,#60,#61,#62,#6b,#6e
	db #6d,#6b,#6b,#65,#66,#65,#65,#66
	db #63,#60,#6b,#65,#66,#65,#6b,#6b
	db #6b,#63,#6b,#6e,#6d,#6b,#6b,#65
	db #66,#65,#65,#61,#66,#60,#61,#65
	db #61,#61,#6b,#6b,#6b,#63,#6b,#6e
	db #6d,#6b,#6b,#65,#66,#65,#65,#66
	db #63,#6b,#60,#65,#66,#65,#6b,#6b
	db #60,#66,#6b,#6e,#6d,#6b,#6b,#65
	db #61,#61,#65,#66,#63,#60,#61,#65
	db #66,#65,#6b,#6b,#6b,#63,#6b,#6e
	db #6d,#6b,#6b,#65,#61,#6a,#65,#66
	db #63,#60,#61,#65,#66,#65,#6b,#60
	db #61,#64,#6b,#6e,#6d,#6b,#6b,#6b
	db #6b,#6b,#6b,#6b,#6b,#6b,#6b,#6b
	db #6b,#6b,#6b,#6b,#6b,#6b,#6b,#6e
	db #6c,#6c,#6c,#6c,#6c,#6c,#6c,#6c
	db #6c,#6c,#6c,#6c,#6c,#6c,#6c,#6c
	db #6c,#6c,#6c,#6c
;
.music_info
	db "Boulder Dash 3 (1984)(First Star Software)()",0
	db "same music for all Boulder Dash Series !!!",0

	read "music_end.asm"
