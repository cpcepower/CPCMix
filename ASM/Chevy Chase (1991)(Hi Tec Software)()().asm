; Music of Chevy Chase (1991)(Hi Tec Software)()()
; Ripped by Megachur the 30/07/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CHEVYCHA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 30
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #0a80

	read "music_header.asm"

	jp l0a86	; init music
	jp l0ae7	; play music
;
.init_music
.l0a86
;
	ld hl,l10b5
	ld de,l12cf
	ld bc,l16b6
	ld (l0abb),hl
	ld (l0acd),de
	ld (l0adf),bc
	xor a
	ld (l0ab1),a
	ld (l0ab2),a
	ld (l0ac3),a
	ld (l0ac4),a
	ld (l0ad5),a
	ld (l0ad6),a
	ld (l0cc8),a
	ret
.l0ab2 equ $ + 1
.l0ab1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0abb equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0ac4 equ $ + 3
.l0ac3 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0acd equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0ad6 equ $ + 5
.l0ad5 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0adf equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
;
.play_music
.l0ae7
;
	ld a,(l0cc8)
	or a
	jr z,l0af1
	dec a
	ld (l0cc8),a
.l0af1
	ld ix,l0ab1
	ld de,#0008
	call l0b0c
	ld ix,l0ac3
	ld de,#0209
	call l0b0c
	ld ix,l0ad5
	ld de,#040a
.l0b0c
	ld a,d
	ld (l0c8b),a
	inc a
	ld (l0c92),a
	ld a,e
	ld (l0cde),a
.l0b18
	ld a,(ix+#00)
	cp (ix+#01)
	jp nz,l0c23
.l0b21
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	ld a,(hl)
	inc hl
	cp #10
	jp c,l0b70
	jp z,l0c07
	cp #12
	jp c,l0c15
	jp z,l0b4b
	cp #14
	jp z,l0bee
	cp #16
	jp nc,l0bae
	ld a,(l0cde)
	ld c,#00
	jp l1020
.l0b4b
	ld a,(hl)
	call l1040
	ld (ix+#01),a
	ld (ix+#00),#00
	ld (ix+#0f),#00
	ld (ix+#10),#00
	ld (ix+#11),#00
	inc hl
	ld (ix+#0a),l
	ld (ix+#0b),h
	set 0,(ix+#0c)
	jp l0b18
.l0b70
	ld (ix+#0a),l
	ld (ix+#0b),h
	add a
	add a
	add a
	ld e,a
	ld d,#00
	ld hl,l0d5c
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#02),e
	ld (ix+#03),d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#04),e
	ld (ix+#05),d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#06),e
	ld (ix+#07),d
	res 7,(ix+#0c)
	ld a,(hl)
	and #80
	or (ix+#0c)
	ld (ix+#0c),a
	jp l0b21
.l0bae
	res 0,(ix+#0c)
	sub #10
	ld (ix+#0e),a
	add a
	ld e,a
	ld d,#00
	ld iy,l0f78
	add iy,de
	ld e,(iy+#00)
	ld d,(iy+#01)
	ld (ix+#08),e
	ld (ix+#09),d
	ld a,(hl)
	call l1040
	ld (ix+#01),a
	ld (ix+#00),#00
	ld (ix+#0f),#00
	ld (ix+#10),#00
	ld (ix+#11),#00
	inc hl
	ld (ix+#0a),l
	ld (ix+#0b),h
	jp l0b18
.l0bee
	ld a,(hl)
	inc hl
	ld (ix+#0a),l
	ld (ix+#0b),h
	add a
	add a
	add a
	add a
	ld l,a
	ld h,#00
	ld de,l1065
	add hl,de
	ld (l1048),hl
	jp l0b21
.l0c07
	ld a,(hl)
	ld (ix+#0d),a
	inc hl
	ld (ix+#0a),l
	ld (ix+#0b),h
	jp l0b21
.l0c15
	ld (ix+#0a),l
	ld (ix+#0b),h
	ld a,#ff
	ld (l0cc8),a
	jp l0b21
.l0c23
	inc (ix+#00)
	inc (ix+#0f)
	inc (ix+#10)
	inc (ix+#11)
	bit 0,(ix+#0c)
	jp nz,l0c98
.l0c36
	ld a,(ix+#0f)
	ld e,a
	ld d,#00
	ld l,(ix+#02)
	ld h,(ix+#03)
	add hl,de
	ld a,(hl)
	cp #80
	jr nz,l0c4e
	ld (ix+#0f),#01
	jr l0c36
.l0c4e
	ld c,a
	ld a,#07
	call l1020
.l0c54
	ld a,(ix+#10)
	ld e,a
	ld d,#00
	ld l,(ix+#04)
	ld h,(ix+#05)
	add hl,de
	ld a,(hl)
	cp #80
	jr nz,l0c6c
	ld (ix+#10),#01
	jr l0c54
.l0c6c
	push af
	cp #80
	call c,l0ce9
	pop af
	cp #81
	call nc,l0ce2
	bit 7,(ix+#0c)
	jr z,l0c82
	srl h
	rr l
.l0c82
	ld a,l
	ld (l0c8d),a
	ld a,h
	ld (l0c94),a
.l0c8b equ $ + 1
	ld a,#00
.l0c8d equ $ + 1
	ld c,#00
	call l1020
.l0c92 equ $ + 1
	ld a,#01
.l0c94 equ $ + 1
	ld c,#00
	call l1020
.l0c98
	ld e,(ix+#11)
	ld d,#00
	ld l,(ix+#06)
	ld h,(ix+#07)
	add hl,de
	ld a,(hl)
	cp #80
	jr nz,l0cb2
	inc hl
	ld a,e
	sub (hl)
	ld e,a
	ld (ix+#11),e
	jr l0c98
.l0cb2
	ld c,a
	bit 0,(ix+#0c)
	jr z,l0cbb
	ld c,#00
.l0cbb
	ld a,c
	or a
	jr z,l0cc7
	sub (ix+#0d)
	ld c,a
	jr nc,l0cc7
	ld c,#00
.l0cc8 equ $ + 1
.l0cc7
	ld a,#00
	or a
	jr z,l0cdd
	neg
	srl a
	srl a
	srl a
	srl a
	ld b,a
	ld a,c
	sub b
	jr nc,l0cdc
	xor a
.l0cdc
	ld c,a
.l0cde equ $ + 1
.l0cdd
	ld a,#08
	jp l1020
.l0ce2
	ld hl,l0d06
	neg
	jr l0cec
.l0ce9
	ld hl,l0d10
.l0cec
	ld e,a
	ld d,#00
	push hl
	ld a,(ix+#0e)
	srl a
	srl a
	add a
	ld hl,l0d32
	add l
	jp nc,l0d00
	inc h
.l0d00
	ld l,a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l0d06
	ld l,(ix+#08)
	ld h,(ix+#09)
	xor a
	sbc hl,de
	ret
.l0d10
	ld l,(ix+#08)
	ld h,(ix+#09)
	add hl,de
	ret
.l0d18
	sla e
	rl d
.l0d1c
	sla e
	rl d
.l0d20
	sla e
	rl d
.l0d24
	ret
.l0d25
	srl d
	rr e
.l0d29
	srl d
	rr e
.l0d2d
	srl d
	rr e
	ret
.l0d32
	dw l0d18,l0d18,l0d18,l0d1c
	dw l0d1c,l0d1c,l0d20,l0d20
	dw l0d20,l0d24,l0d24,l0d24
	dw l0d2d,l0d2d,l0d2d,l0d29
	dw l0d29,l0d29,l0d25,l0d25
.l0d5c equ $ + 2
	dw l0d25,l0dab,l0dad,l0db6
	dw #0000,l0dcc,l0dce,l0dd5
	dw #0000,l0df1,l0df3,l0dfe
	dw #0000,l0e1e,l0e23,l0e28
	dw #0000,l0e2e,l0e33,l0e3c
	dw #0000,l0e45,l0e47,l0e50
	dw #0000,l0e5e,l0e60,l0e6b
	dw #0000,l0e6e,l0e70,l0e76
	dw #0000,l0e84,l0e86,l0e90
	dw #0000,l0eaa,l0eac,l0eb5
.l0dab equ $ + 1
	dw #0000
.l0dad equ $ + 1
	db #38,#80,#00,#01,#02,#03,#03,#02
.l0db6 equ $ + 2
	db #01,#00,#80,#0e,#0d,#0c,#0c,#0e
	db #0f,#0f,#0d,#0c,#0c,#0d,#0e,#0e
	db #0d,#0c,#0c,#0c,#0c,#0c,#0b,#80
.l0dce equ $ + 2
.l0dcc
	db #01,#38,#80,#00,#00,#00,#01,#01
.l0dd5 equ $ + 1
	db #01,#80,#0f,#0e,#0d,#0d,#0e,#0f
	db #0f,#0f,#0f,#0f,#0f,#0e,#0e,#0e
	db #0e,#0e,#0d,#0d,#0d,#0d,#0d,#0d
.l0df3 equ $ + 7
.l0df1 equ $ + 5
	db #0d,#0d,#0d,#0c,#80,#01,#38,#80
	db #00,#00,#00,#01,#02,#02,#03,#02
.l0dfe equ $ + 2
	db #02,#01,#80,#0e,#0e,#0e,#0e,#0d
	db #0d,#0d,#0e,#0e,#0e,#0e,#0d,#0d
	db #0d,#0d,#0d,#0c,#0c,#0b,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.l0e23 equ $ + 7
.l0e1e equ $ + 2
	db #00,#80,#01,#18,#38,#18,#18,#80
.l0e28 equ $ + 4
	db #00,#00,#00,#00,#80,#07,#07,#07
.l0e33 equ $ + 7
.l0e2e equ $ + 2
	db #00,#80,#01,#18,#18,#38,#18,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0e3c
	db #80,#09,#09,#09,#09,#06,#03,#00
.l0e47 equ $ + 3
.l0e45 equ $ + 1
	db #80,#01,#38,#80,#00,#01,#02,#01
.l0e50 equ $ + 4
	db #00,#ff,#fe,#ff,#80,#0e,#0f,#0f
	db #0e,#0e,#0f,#0f,#0e,#0e,#0f,#0f
.l0e60 equ $ + 4
.l0e5e equ $ + 2
	db #0e,#80,#0c,#38,#80,#00,#00,#00
.l0e6b equ $ + 7
	db #00,#00,#02,#02,#02,#02,#02,#80
.l0e70 equ $ + 4
.l0e6e equ $ + 2
	db #0f,#80,#01,#38,#80,#00,#00,#01
.l0e76 equ $ + 2
	db #02,#03,#80,#0d,#0e,#0f,#0e,#0d
	db #0e,#0f,#0e,#0d,#0e,#0f,#0e,#80
.l0e86 equ $ + 2
.l0e84
	db #0c,#38,#80,#00,#03,#04,#03,#00
.l0e90 equ $ + 4
	db #fe,#fd,#fe,#00,#80,#0f,#0f,#0e
	db #0e,#0f,#0f,#0f,#0f,#0e,#0e,#0f
	db #0f,#0f,#0f,#0e,#0e,#0f,#0f,#0f
.l0eaa equ $ + 6
	db #0f,#0e,#0e,#0f,#0f,#80,#0c,#38
.l0eac
	db #80,#00,#01,#02,#03,#03,#02,#01
.l0eb5 equ $ + 1
	db #00,#80,#0f,#0f,#0f,#0e,#0e,#0e
	db #0d,#0d,#0d,#0e,#0e,#0e,#0f,#0f
	db #0f,#0e,#0e,#0e,#0f,#0f,#0f,#0e
	db #0e,#0e,#0f,#0f,#0f,#0e,#0e,#0e
	db #0f,#0f,#0f,#0e,#0e,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0e,#0e,#0e,#0d
	db #0d,#0d,#0e,#0e,#0e,#0d,#0d,#0d
	db #0e,#0e,#0e,#0d,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0d,#0d,#0d,#0c
	db #0c,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#0a,#0a,#09,#09,#09
	db #0a,#0a,#0a,#09,#09,#09,#09,#09
	db #09,#08,#08,#08,#09,#09,#09,#08
	db #08,#08,#08,#08,#08,#07,#07,#07
	db #08,#08,#08,#07,#07,#07,#07,#07
	db #07,#06,#06,#06,#07,#07,#07,#06
	db #06,#06,#06,#06,#06,#05,#05,#05
	db #06,#06,#06,#05,#05,#05,#05,#05
	db #05,#04,#04,#04,#05,#05,#05,#04
	db #04,#04,#04,#04,#04,#03,#03,#03
	db #04,#04,#04,#03,#03,#03,#03,#03
	db #03,#02,#02,#02,#03,#03,#03,#02
	db #02,#02,#80,#0c
.l0f78
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
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
.l1020
	di
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
	ei
	ret
.l1040
	dec a
	push bc
	push de
	ld e,a
	and #0f
	push hl
.l1048 equ $ + 1
	ld hl,l1065
	add l
	jp nc,l104f
	inc h
.l104f
	ld l,a
	ld a,e
	ld e,(hl)
	cp #10
	jr c,l1060
	ld hl,(l1048)
	ld bc,#000f
	add hl,bc
	ld a,e
	add (hl)
	ld e,a
.l1060
	ld a,e
	pop hl
	pop de
	pop bc
	ret
.l1065
	db #01,#02,#03,#04,#05,#06,#07,#08
	db #09,#0a,#0b,#0c,#0d,#0e,#0f,#10
	db #02,#04,#06,#08,#0a,#0c,#0e,#10
	db #12,#14,#16,#18,#1a,#1c,#1e,#20
	db #03,#06,#09,#0c,#0f,#12,#15,#18
	db #1b,#1e,#21,#24,#27,#2a,#2d,#30
	db #04,#08,#0c,#10,#14,#18,#1c,#20
	db #24,#28,#2c,#30,#34,#38,#3c,#40
	db #05,#0a,#0f,#14,#19,#1e,#23,#28
	db #2d,#32,#37,#3c,#41,#46,#4b,#50
.l10b5
	db #14,#03,#06,#10,#06,#3f,#10,#3f
	db #0c,#3d,#04,#3b,#10,#3b,#0c,#3d
	db #04,#3f,#10,#3f,#0c,#3d,#04,#3b
	db #10,#3b,#0c,#3d,#04,#08,#5c,#18
	db #5a,#04,#55,#04,#57,#06,#5a,#1a
	db #5c,#0c,#5e,#04,#5f,#06,#5e,#06
	db #5c,#04,#57,#06,#5a,#1a,#5c,#10
	db #5a,#06,#55,#06,#58,#04,#57,#20
	db #5c,#0c,#5e,#04,#5f,#06,#5e,#06
	db #5c,#04,#57,#06,#5a,#1a,#05,#50
	db #18,#52,#08,#50,#06,#4d,#1a,#50
	db #02,#50,#02,#50,#02,#50,#02,#50
	db #02,#50,#02,#50,#02,#50,#02,#50
	db #02,#50,#02,#50,#02,#50,#02,#52
	db #02,#52,#02,#52,#02,#52,#02,#50
	db #02,#50,#02,#50,#02,#4d,#02,#4d
	db #02,#4d,#02,#4d,#02,#4d,#02,#4d
	db #02,#4d,#02,#4d,#0c,#01,#10,#05
	db #40,#01,#44,#01,#47,#01,#44,#01
	db #10,#04,#40,#01,#44,#01,#47,#01
	db #44,#01,#10,#05,#40,#01,#44,#01
	db #47,#01,#44,#01,#10,#07,#40,#01
	db #44,#01,#47,#01,#44,#01,#10,#05
	db #42,#01,#46,#01,#49,#01,#46,#01
	db #10,#04,#42,#01,#46,#01,#49,#01
	db #46,#01,#10,#05,#42,#01,#46,#01
	db #49,#01,#46,#01,#10,#07,#42,#01
	db #46,#01,#49,#01,#46,#01,#10,#05
	db #3d,#01,#41,#01,#44,#01,#41,#01
	db #10,#04,#3d,#01,#41,#01,#44,#01
	db #41,#01,#10,#05,#3d,#01,#41,#01
	db #44,#01,#41,#01,#10,#07,#3d,#01
	db #41,#01,#44,#01,#41,#01,#10,#05
	db #3d,#01,#41,#01,#44,#01,#41,#01
	db #10,#04,#3d,#01,#41,#01,#44,#01
	db #41,#01,#10,#05,#3d,#01,#41,#01
	db #44,#01,#41,#01,#10,#07,#3d,#01
	db #41,#01,#44,#01,#41,#01,#10,#05
	db #40,#01,#44,#01,#47,#01,#44,#01
	db #10,#04,#40,#01,#44,#01,#47,#01
	db #44,#01,#10,#05,#40,#01,#44,#01
	db #47,#01,#44,#01,#10,#07,#40,#01
	db #44,#01,#47,#01,#44,#01,#10,#05
	db #42,#01,#46,#01,#49,#01,#46,#01
	db #10,#04,#42,#01,#46,#01,#49,#01
	db #46,#01,#10,#05,#42,#01,#46,#01
	db #49,#01,#46,#01,#10,#07,#42,#01
	db #46,#01,#49,#01,#46,#01,#10,#05
	db #3d,#01,#41,#01,#44,#01,#41,#01
	db #10,#04,#3d,#01,#41,#01,#44,#01
	db #41,#01,#10,#05,#3d,#01,#41,#01
	db #44,#01,#41,#01,#10,#07,#3d,#01
	db #41,#01,#44,#01,#41,#01,#10,#05
	db #3d,#01,#41,#01,#44,#01,#41,#01
	db #10,#04,#3d,#01,#41,#01,#44,#01
	db #41,#01,#10,#05,#3d,#01,#41,#01
	db #44,#01,#41,#01,#10,#07,#3d,#01
	db #41,#01,#44,#01,#41,#01,#09,#10
	db #05,#3f,#1c,#3d,#04,#3b,#1c,#3a
	db #04,#38,#0c,#3f,#04,#3d,#0c,#42
	db #04,#3f,#20,#3f,#1c,#3d,#04,#3b
	db #1c,#3a,#04,#38,#0c,#3f,#04,#3d
	db #0c,#42,#04,#3f,#20,#3f,#1c,#3d
	db #04,#3b,#1c,#3a,#04,#38,#0c,#3f
	db #04,#3d,#0c,#42,#04,#3f,#20,#3f
	db #1c,#3d,#04,#3b,#1c,#3a,#04,#38
	db #0c,#3f,#04,#3d,#0c,#42,#04,#3f
.l12cf equ $ + 2
	db #20,#13,#14,#03,#10,#04,#02,#2c
	db #02,#2c,#02,#38,#02,#2c,#02,#2c
	db #02,#2c,#02,#38,#02,#2c,#02,#2c
	db #02,#2c,#02,#38,#02,#2c,#02,#38
	db #04,#36,#04,#28,#02,#28,#02,#34
	db #02,#28,#02,#28,#02,#28,#02,#34
	db #02,#28,#02,#28,#02,#28,#02,#34
	db #02,#28,#02,#28,#04,#2a,#04,#2c
	db #02,#2c,#02,#38,#02,#2c,#02,#2c
	db #02,#2c,#02,#38,#02,#2c,#02,#2c
	db #02,#2c,#02,#38,#02,#2c,#02,#38
	db #04,#36,#04,#28,#02,#28,#02,#34
	db #02,#28,#02,#28,#02,#28,#02,#34
	db #02,#28,#02,#28,#02,#28,#02,#34
	db #02,#28,#02,#28,#04,#2a,#04,#2c
	db #02,#2c,#02,#38,#02,#2c,#02,#2c
	db #02,#2c,#02,#38,#02,#2c,#02,#2c
	db #02,#2c,#02,#38,#02,#2c,#02,#38
	db #04,#36,#04,#2c,#02,#2c,#02,#38
	db #02,#2c,#02,#2c,#02,#2c,#02,#38
	db #02,#2c,#02,#2c,#02,#2c,#02,#38
	db #02,#2c,#02,#38,#04,#36,#04,#28
	db #02,#28,#02,#34,#02,#28,#02,#28
	db #02,#28,#02,#34,#02,#28,#02,#28
	db #02,#28,#02,#34,#02,#2f,#02,#34
	db #04,#36,#04,#2c,#02,#2c,#02,#38
	db #02,#2c,#02,#2c,#02,#2c,#02,#38
	db #02,#2c,#02,#2c,#02,#2c,#02,#38
	db #02,#2c,#02,#38,#04,#36,#04,#2c
	db #02,#2c,#02,#38,#02,#2c,#02,#2c
	db #02,#2c,#02,#38,#02,#2c,#02,#2c
	db #02,#2c,#02,#38,#02,#2c,#02,#38
	db #04,#36,#04,#2c,#02,#2c,#02,#38
	db #02,#2c,#02,#2c,#02,#2c,#02,#38
	db #02,#2c,#02,#2c,#02,#2c,#02,#38
	db #02,#2c,#02,#38,#04,#36,#04,#28
	db #02,#28,#02,#34,#02,#28,#02,#28
	db #02,#28,#02,#34,#02,#28,#02,#28
	db #02,#28,#02,#34,#02,#2f,#02,#34
	db #04,#36,#04,#2c,#02,#2c,#02,#38
	db #02,#2c,#02,#2c,#02,#2c,#02,#38
	db #02,#2c,#02,#2c,#02,#2c,#02,#38
	db #02,#2c,#02,#38,#04,#36,#04,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#34
	db #02,#34,#02,#34,#02,#34,#02,#34
	db #02,#34,#02,#34,#02,#34,#02,#36
	db #02,#36,#02,#36,#02,#36,#02,#36
	db #02,#36,#02,#36,#02,#36,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#33,#02,#33,#02,#34
	db #02,#34,#02,#34,#02,#34,#02,#34
	db #02,#34,#02,#34,#02,#34,#02,#36
	db #02,#36,#02,#36,#02,#36,#02,#36
	db #02,#36,#02,#36,#02,#36,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#38
	db #02,#38,#02,#38,#02,#38,#02,#38
	db #04,#33,#02,#38,#04,#38,#02,#38
	db #02,#38,#02,#38,#02,#38,#02,#36
	db #02,#36,#02,#34,#02,#34,#02,#34
	db #02,#34,#02,#34,#04,#2f,#02,#34
	db #04,#34,#02,#34,#02,#34,#02,#34
	db #02,#34,#02,#33,#02,#34,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #04,#38,#02,#33,#04,#33,#02,#33
	db #02,#33,#02,#33,#04,#3a,#02,#33
	db #02,#38,#02,#38,#02,#38,#02,#38
	db #02,#38,#04,#33,#02,#38,#0a,#34
	db #04,#33,#04,#38,#02,#38,#02,#38
	db #02,#38,#02,#38,#04,#33,#02,#38
	db #04,#38,#02,#38,#02,#38,#02,#38
	db #02,#38,#02,#36,#02,#36,#02,#34
	db #02,#34,#02,#34,#02,#34,#02,#34
	db #04,#2f,#02,#34,#04,#34,#02,#34
	db #02,#34,#02,#34,#02,#34,#02,#33
	db #02,#34,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#04,#38,#02,#33
	db #04,#33,#02,#33,#02,#33,#02,#33
	db #04,#3a,#02,#33,#02,#38,#02,#38
	db #02,#38,#02,#38,#02,#38,#04,#33
	db #02,#38,#0a,#34,#04,#33,#04,#38
	db #02,#38,#02,#38,#02,#38,#02,#38
	db #04,#33,#02,#38,#04,#38,#02,#38
	db #02,#38,#02,#38,#02,#38,#02,#36
	db #02,#36,#02,#34,#02,#34,#02,#34
	db #02,#34,#02,#34,#04,#2f,#02,#34
	db #04,#34,#02,#34,#02,#34,#02,#34
	db #02,#34,#02,#33,#02,#34,#02,#31
	db #02,#31,#02,#31,#02,#31,#02,#31
	db #04,#38,#02,#33,#04,#33,#02,#33
	db #02,#33,#02,#33,#04,#3a,#02,#33
	db #02,#38,#02,#38,#02,#38,#02,#38
	db #02,#38,#04,#33,#02,#38,#0a,#34
	db #04,#33,#04,#38,#02,#38,#02,#38
	db #02,#38,#02,#38,#04,#33,#02,#38
	db #04,#38,#02,#38,#02,#38,#02,#38
	db #02,#38,#02,#36,#02,#36,#02,#34
	db #02,#34,#02,#34,#02,#34,#02,#34
	db #04,#2f,#02,#34,#04,#34,#02,#34
	db #02,#34,#02,#34,#02,#34,#02,#33
	db #02,#34,#02,#31,#02,#31,#02,#31
	db #02,#31,#02,#31,#04,#38,#02,#33
	db #04,#33,#02,#33,#02,#33,#02,#33
	db #04,#3a,#02,#33,#02,#38,#02,#38
	db #02,#38,#02,#38,#02,#38,#04,#11
	db #33,#02,#38,#0a,#34,#04,#33,#04
	db #13
.l16b6
	db #14,#03,#10,#00,#03,#31,#02,#31
	db #02,#04,#3d,#02,#03,#31,#04,#31
	db #02,#04,#3d,#02,#03,#31,#02,#03
	db #31,#02,#31,#02,#04,#3d,#02,#03
	db #31,#02,#31,#02,#31,#02,#04,#3d
	db #02,#03,#31,#02,#03,#31,#02,#31
	db #02,#04,#3d,#02,#03,#31,#04,#31
	db #02,#04,#3d,#02,#03,#31,#02,#03
	db #31,#02,#31,#02,#04,#3d,#02,#03
	db #31,#02,#31,#02,#31,#02,#04,#3d
	db #02,#03,#31,#02,#03,#31,#02,#31
	db #02,#04,#3d,#02,#03,#31,#04,#31
	db #02,#04,#3d,#02,#03,#31,#02,#03
	db #31,#02,#31,#02,#04,#3d,#02,#03
	db #31,#02,#31,#02,#31,#02,#04,#3d
	db #02,#03,#31,#02,#03,#31,#02,#31
	db #02,#04,#3d,#02,#03,#31,#04,#31
	db #02,#04,#3d,#02,#03,#31,#02,#03
	db #31,#02,#31,#02,#04,#3d,#02,#03
	db #31,#02,#31,#02,#31,#02,#04,#3d
	db #02,#03,#31,#02,#03,#31,#02,#31
	db #02,#04,#3d,#02,#03,#31,#04,#31
	db #02,#04,#3d,#02,#03,#31,#02,#03
	db #31,#02,#31,#02,#04,#3d,#02,#03
	db #31,#02,#31,#02,#31,#02,#04,#3d
	db #02,#03,#31,#02,#03,#31,#02,#31
	db #02,#04,#3d,#02,#03,#31,#04,#31
	db #02,#04,#3d,#02,#03,#31,#02,#03
	db #31,#02,#31,#02,#04,#3d,#02,#03
	db #31,#02,#31,#02,#31,#02,#04,#3d
	db #02,#03,#31,#02,#03,#31,#02,#31
	db #02,#04,#3d,#02,#03,#31,#04,#31
	db #02,#04,#3d,#02,#03,#31,#02,#03
	db #31,#02,#31,#02,#04,#3d,#02,#03
	db #31,#02,#31,#02,#31,#02,#04,#3d
	db #02,#03,#31,#02,#03,#31,#02,#31
	db #02,#04,#3d,#02,#03,#31,#04,#31
	db #02,#04,#3d,#02,#03,#31,#02,#03
	db #31,#02,#31,#02,#04,#3d,#02,#03
	db #31,#02,#31,#02,#31,#02,#04,#3d
	db #02,#03,#31,#02,#03,#31,#02,#31
	db #02,#04,#3d,#02,#03,#31,#04,#31
	db #02,#04,#3d,#02,#03,#31,#02,#03
	db #31,#02,#31,#02,#04,#3d,#02,#03
	db #31,#02,#31,#02,#31,#02,#04,#3d
	db #02,#03,#31,#02,#03,#31,#02,#31
	db #02,#04,#3d,#02,#03,#31,#04,#31
	db #02,#04,#3d,#02,#03,#31,#02,#03
	db #31,#02,#31,#02,#04,#3d,#02,#03
	db #31,#02,#31,#02,#31,#02,#04,#3d
	db #02,#03,#31,#02,#03,#31,#02,#31
	db #02,#04,#3d,#02,#03,#31,#04,#31
	db #02,#04,#3d,#02,#03,#31,#02,#03
	db #31,#02,#31,#02,#04,#3d,#02,#03
	db #31,#02,#31,#02,#31,#02,#04,#3d
	db #02,#03,#31,#02,#03,#31,#02,#31
	db #02,#04,#3d,#02,#03,#31,#04,#31
	db #02,#04,#3d,#02,#03,#31,#02,#03
	db #31,#02,#31,#02,#04,#3d,#02,#03
	db #31,#02,#31,#02,#31,#02,#04,#3d
	db #02,#03,#31,#02,#03,#2f,#02,#2f
	db #02,#04,#3d,#02,#03,#31,#02,#31
	db #02,#31,#02,#04,#3d,#02,#03,#31
	db #02,#03,#2f,#02,#2f,#02,#04,#3d
	db #02,#03,#31,#02,#31,#02,#31,#02
	db #04,#3d,#02,#03,#31,#02,#03,#2f
	db #02,#2f,#02,#04,#3d,#02,#03,#31
	db #02,#31,#02,#31,#02,#04,#3d,#02
	db #03,#31,#02,#03,#2f,#02,#2f,#02
	db #04,#3d,#02,#03,#31,#02,#31,#02
	db #31,#02,#04,#3d,#02,#03,#31,#02
	db #03,#2f,#02,#2f,#02,#04,#3d,#02
	db #03,#31,#02,#31,#02,#31,#02,#04
	db #3d,#02,#03,#31,#02,#03,#2f,#02
	db #2f,#02,#04,#3d,#02,#03,#31,#02
	db #31,#02,#31,#02,#04,#3d,#02,#03
	db #31,#02,#03,#2f,#02,#2f,#02,#04
	db #3d,#02,#03,#31,#02,#31,#02,#31
	db #02,#04,#3d,#02,#03,#31,#02,#03
	db #2f,#02,#2f,#02,#04,#3d,#02,#03
	db #2f,#02,#2f,#02,#2f,#02,#04,#3d
	db #02,#3d,#01,#3d,#01,#03,#2f,#02
	db #2f,#02,#04,#3d,#02,#03,#31,#02
	db #31,#02,#31,#02,#04,#3d,#02,#03
	db #31,#02,#03,#2f,#02,#2f,#02,#04
	db #3d,#02,#03,#31,#02,#31,#02,#31
	db #02,#04,#3d,#02,#03,#31,#02,#03
	db #2f,#02,#2f,#02,#04,#3d,#02,#03
	db #31,#02,#31,#02,#31,#02,#04,#3d
	db #02,#03,#31,#02,#03,#2f,#02,#2f
	db #02,#04,#3d,#02,#03,#31,#02,#31
	db #02,#31,#02,#04,#3d,#02,#03,#31
	db #02,#03,#2f,#02,#2f,#02,#04,#3d
	db #02,#03,#31,#02,#31,#02,#31,#02
	db #04,#3d,#02,#03,#31,#02,#03,#2f
	db #02,#2f,#02,#04,#3d,#02,#03,#31
	db #02,#31,#02,#31,#02,#04,#3d,#02
	db #03,#31,#02,#03,#2f,#02,#2f,#02
	db #04,#3d,#02,#03,#31,#02,#31,#02
	db #31,#02,#04,#3d,#02,#03,#31,#02
	db #03,#2f,#02,#2f,#02,#04,#3d,#02
	db #03,#2f,#02,#2f,#02,#2f,#02,#04
	db #3d,#02,#3d,#01,#3d,#01,#03,#2f
	db #04,#2f,#04,#2f,#04,#2f,#04,#2f
	db #04,#2f,#04,#2f,#04,#2f,#04,#2f
	db #04,#2f,#04,#2f,#04,#2f,#04,#2f
	db #04,#2f,#04,#2f,#04,#2f,#04,#2f
	db #04,#2f,#04,#2f,#04,#2f,#04,#2f
	db #04,#2f,#04,#2f,#04,#2f,#04,#2f
	db #04,#2f,#04,#2f,#04,#2f,#04,#2f
	db #04,#2f,#04,#2f,#04,#2f,#04,#2f
	db #04,#2f,#04,#2f,#04,#2f,#04,#2f
	db #04,#2f,#04,#2f,#04,#2f,#04,#2f
	db #04,#2f,#04,#2f,#04,#2f,#04,#2f
	db #04,#2f,#04,#2f,#04,#2f,#04,#2f
	db #04,#2f,#04,#2f,#04,#2f,#04,#2f
	db #04,#2f,#04,#2f,#04,#2f,#04,#2f
	db #04,#2f,#04,#2f,#04,#2f,#04,#2f
	db #04,#2f,#04,#2f,#04,#2f,#04,#03
	db #2f,#02,#2f,#02,#04,#3d,#02,#03
	db #2f,#04,#2f,#02,#04,#3d,#02,#03
	db #2f,#02,#2f,#02,#2f,#02,#04,#3d
	db #02,#03,#2f,#02,#2f,#02,#2f,#02
	db #04,#3d,#02,#03,#2f,#02,#03,#2f
	db #02,#2f,#02,#04,#3d,#02,#03,#2f
	db #04,#2f,#02,#04,#3d,#02,#03,#2f
	db #02,#2f,#02,#2f,#02,#04,#3d,#02
	db #03,#2f,#02,#2f,#02,#2f,#02,#04
	db #3d,#02,#03,#2f,#02,#03,#2f,#02
	db #2f,#02,#04,#3d,#02,#03,#2f,#04
	db #2f,#02,#04,#3d,#02,#03,#2f,#02
	db #2f,#02,#2f,#02,#04,#3d,#02,#03
	db #2f,#02,#2f,#02,#2f,#02,#04,#3d
	db #02,#03,#2f,#02,#03,#2f,#02,#2f
	db #02,#04,#3d,#02,#03,#2f,#04,#2f
	db #02,#04,#3d,#02,#03,#2f,#02,#2f
	db #02,#2f,#02,#04,#3d,#02,#03,#2f
	db #02,#2f,#02,#2f,#02,#04,#3d,#02
	db #03,#2f,#02,#03,#2f,#02,#2f,#02
	db #04,#3d,#02,#03,#2f,#04,#2f,#02
	db #04,#3d,#02,#03,#2f,#02,#2f,#02
	db #2f,#02,#04,#3d,#02,#03,#2f,#02
	db #2f,#02,#2f,#02,#04,#3d,#02,#03
	db #2f,#02,#03,#2f,#02,#2f,#02,#04
	db #3d,#02,#03,#2f,#04,#2f,#02,#04
	db #3d,#02,#03,#2f,#02,#2f,#02,#2f
	db #02,#04,#3d,#02,#03,#2f,#02,#2f
	db #02,#2f,#02,#04,#3d,#02,#03,#2f
	db #02,#03,#2f,#02,#2f,#02,#04,#3d
	db #02,#03,#2f,#04,#2f,#02,#04,#3d
	db #02,#03,#2f,#02,#2f,#02,#2f,#02
	db #04,#3d,#02,#03,#2f,#02,#2f,#02
	db #2f,#02,#04,#3d,#02,#03,#2f,#02
	db #03,#2f,#02,#2f,#02,#04,#3d,#02
	db #03,#2f,#04,#2f,#02,#04,#3d,#02
	db #03,#2f,#02,#2f,#02,#2f,#02,#04
	db #3d,#02,#03,#2f,#02,#2f,#02,#2f
	db #02,#04,#3d,#02,#03,#2f,#02,#13
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00
;
.music_info
	db "Chevy Chase (1991)(Hi Tec Software)()",0
	db "",0

	read "music_end.asm"
