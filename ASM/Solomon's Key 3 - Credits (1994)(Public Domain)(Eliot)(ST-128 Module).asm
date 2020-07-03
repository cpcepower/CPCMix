; Music of Solomon's Key 3 - Credits (1994)(Public Domain)(Eliot)(ST-128 Module)
; Ripped by Megachur the 09/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SOLOMK3C.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6d78

	read "music_header.asm"

	jr l6d7c
	jr l6d8b
.l6d7c
	call l6daf
	ld hl,l6d9c
	ld de,l6d94
	ld bc,#81ff
	jp #bcd7
.l6d8b
	ld hl,l6d9c
	call #bcdd
	jp l6e27
.l6d94
	push ix
	call l6e43
	pop ix
	ret
.l6d9c
	db #00,#00,#00,#00,#00,#81,#94,#6d
	db #ff,#00
	jp l6daf
	jp l6e43
	jp l6e27
;
.init_music
.l6daf
;
	xor a
	ld hl,l735a
	call l6e20
	ld hl,l7388
	call l6e20
	ld hl,l73b6
	call l6e20
	ld ix,l7356
	ld iy,l73e0
	ld de,#002e
	ld b,#03
.l6dcf
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l6dcf
	ld hl,l726f
	ld (hl),#05
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l726b),hl
	ld (l726d),hl
	ld a,#0c
	ld c,d
	call l724b
	ld a,#0d
	ld c,d
	jp l724b
.l6e20
	ld b,#2a
.l6e22
	ld (hl),a
	inc hl
	djnz l6e22
	ret
;
.stop_music
.l6e27
;
	ld a,#07
	ld c,#3f
	call l724b
	ld a,#08
	ld c,#00
	call l724b
	ld a,#09
	ld c,#00
	call l724b
	ld a,#0a
	ld c,#00
	jp l724b
;
.play_music
.l6e43
;
	ld hl,l7271
	dec (hl)
	ld ix,l7356
	ld bc,l7364
	call l6ee5
	ld ix,l7384
	ld bc,l7392
	call l6ee5
	ld ix,l73b2
	ld bc,l73c0
	call l6ee5
	ld hl,l726a
	ld de,l7271
	ld b,#06
	call l6ec2
	ld b,#07
	call l6ec2
	ld b,#0b
	call l6ec2
	ld b,#0d
	call l6ec2
	ld de,l7271
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l7375
	call l6e9b
	ld hl,l73a3
	call l6e9b
	ld hl,l73d1
.l6e9b
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l6eb0
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l6eb0
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l6ec2
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l724b
.l6ecd
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l724b
.l6ee5
	ld a,(l7271)
	or a
	jp nz,l6f9d
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l6f9d
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l6ecd
	or a
	jp z,l6f92
	ld r,a
	and #7f
	cp #10
	jr c,l6f6d
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l70e5
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l6f46
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l6f46
	rrca
	ld c,a
	ld hl,l73e6
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l6f65
	ld (ix+#1e),b
.l6f65
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l6f86
.l6f6d
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l7276
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add e
	add h
	add l
	add (hl)
	add h
.l6f86
	ld a,d
	or a
	jr nz,l6f94
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l6f94
.l6f92
	ld a,(hl)
	inc hl
.l6f94
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l6f9d
	ld a,(ix+#17)
	or a
	jr nz,l6fb3
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l6fb3
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l6fc9
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l6fc9
	ld a,(ix+#0d)
	or a
	jr z,l6fd7
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l6ff5
.l6fd7
	ld a,(ix+#1a)
	or a
	jp z,l6ffc
	ld c,a
	cp #03
	jr nz,l6fe4
	xor a
.l6fe4
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l6ff5
	ld a,(ix+#18)
	dec c
	jr z,l6ff5
	ld a,(ix+#19)
.l6ff5
	add (ix+#07)
	ld b,d
	call l70e5
.l6ffc
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l7024
	dec (ix+#1b)
	jr nz,l7024
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l705c
.l7024
	ld a,(ix+#29)
	or a
	jr z,l705c
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l7053
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l704a
	ld (ix+#29),#ff
	jr l7053
.l704a
	cp (ix+#2b)
	jr nz,l7053
	ld (ix+#29),#01
.l7053
	ld b,d
	or a
	jp p,l7059
	dec b
.l7059
	ld c,a
	jr l7067
.l705c
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l7067
	pop hl
	bit 7,(ix+#14)
	jr z,l7070
	ld h,d
	ld l,d
.l7070
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l724b
	ld c,h
	ld a,(ix+#02)
	call l724b
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l70c3
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l70b2
	dec (ix+#09)
	jr nz,l70b2
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l70aa
	xor a
	jr l70af
.l70aa
	cp #10
	jr nz,l70af
	dec a
.l70af
	ld (ix+#1e),a
.l70b2
	ld a,b
	sub (ix+#1e)
	jr nc,l70b9
	xor a
.l70b9
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l724b
.l70c3
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l7272)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l70e1
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l70e1
	ld (l7272),hl
	ret
.l70e5
	ld hl,l7294
	cp #61
	jr nc,l70ef
	add a
	ld c,a
	add hl,bc
.l70ef
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l70f9
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l721e
	ld (ix+#1e),a
	jp l6f86
.l710b
	dec b
.l710c
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l7117
	neg
.l7117
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l6f86
.l712d
	dec b
	jr l7131
.l7130
	inc b
.l7131
	call l721e
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l6f86
.l7140
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l7203
.l7151
	ld a,(hl)
	inc hl
	or a
	jr z,l7173
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l7173
	ld (ix+#29),a
	jp l6f86
.l7179
	dec hl
	ld a,(hl)
	and #0f
	ld (l7275),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l7274),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l6f86
.l7193
	ld a,(hl)
	or a
	jr z,l71a4
	call l7220
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l6f86
.l71a4
	ld hl,#0101
	ld (l7270),hl
	jp l6f86
.l71ad
	call l721e
	ld (ix+#1e),a
	jp l6f86
.l71b6
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l722f
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l722f
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l6f86
.l71d8
	ld a,(hl)
	inc hl
	ld (l726f),a
	jp l6f86
.l71e0
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l6f86
.l71ff
	call l721e
	add a
.l7203
	ld b,#00
	ld c,a
	push hl
	ld hl,l7466
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l6f86
.l721e
	ld a,(hl)
	inc hl
.l7220
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l722f
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l73e6
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l724b
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
.l726a
	ret
.l7272 equ $ + 7
.l7271 equ $ + 6
.l7270 equ $ + 5
.l726f equ $ + 4
.l726d equ $ + 2
.l726b
	db #06,#38,#00,#00,#05,#33,#03,#06
.l7275 equ $ + 2
.l7274 equ $ + 1
	db #38,#00,#00
.l7276
	dw l70f9,l710c,l710b,l7130
	dw l712d,l7140,l7151,l7179
	dw l7193,l7179,l71ad,l71b6
	dw l71d8,l71e0,l71ff
.l7294
	dw #0000,#0e18,#0d4d,#0c8e
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
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
	dw #000f
.l735a equ $ + 4
.l7356
	db #08,#00,#01,#08,#a9,#00,#00,#36
.l7364 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#86,#75
	db #66,#76,#e6,#75,#00,#00,#08,#18
.l7375 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #ce,#76,#8c,#76,#00,#70,#00,#00
.l7384 equ $ + 6
	db #00,#00,#00,#00,#01,#01,#09,#02
.l7388 equ $ + 2
	db #03,#10,#f6,#02,#00,#1c,#00,#00
.l7392 equ $ + 4
	db #00,#00,#00,#00,#86,#75,#c6,#75
	db #66,#75,#00,#00,#03,#1d,#00,#00
.l73a3 equ $ + 5
	db #00,#00,#00,#00,#00,#02,#6b,#77
	db #9e,#76,#00,#20,#00,#00,#00,#00
.l73b2 equ $ + 4
	db #00,#00,#01,#01,#0a,#04,#05,#20
.l73b6
	db #7b,#01,#00,#28,#00,#00,#00,#00
.l73c0 equ $ + 2
	db #00,#00,#06,#76,#46,#76,#e6,#75
	db #00,#00,#03,#1d,#00,#00,#00,#00
.l73d1 equ $ + 3
	db #00,#00,#00,#02,#49,#78,#b0,#76
	db #00,#30,#00,#00,#00,#00,#00,#00
.l73e0 equ $ + 2
	db #01,#01,#86,#76,#98,#76,#aa,#76
.l73e6
	db #86,#74,#c6,#74,#e6,#74,#07,#00
	db #06,#75,#46,#75,#66,#75,#1a,#00
	db #86,#75,#c6,#75,#e6,#75,#00,#00
	db #06,#76,#46,#76,#e6,#75,#00,#00
	db #77,#2d,#49,#4d,#49,#4d,#d1,#1f
	db #77,#2d,#49,#4d,#49,#4d,#d1,#1f
	db #77,#2d,#49,#4d,#49,#4d,#d1,#1f
	db #86,#75,#66,#76,#e6,#75,#00,#00
	db #77,#2d,#49,#4d,#49,#4d,#d1,#1f
	db #77,#2d,#49,#4d,#49,#4d,#d1,#1f
	db #77,#2d,#49,#4d,#49,#4d,#d1,#1f
	db #49,#4d,#49,#4d,#49,#4d,#d1,#1f
	db #49,#4d,#49,#4d,#4a,#4d,#d2,#1f
	db #4a,#4d,#4a,#4d,#4a,#4d,#d2,#1f
	db #4a,#4d,#f8,#2d,#78,#2e,#80,#01
	db #78,#2f,#f8,#2f,#78,#30,#00,#04
.l7466
	db #78,#2d,#78,#2d,#78,#2d,#78,#2d
	db #78,#2d,#78,#2d,#78,#2d,#78,#2d
	db #78,#2d,#78,#2d,#78,#2d,#78,#2d
	db #78,#2d,#78,#2d,#78,#2d,#78,#2d
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#07,#07,#06
	db #05,#04,#03,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#02,#02,#01,#01
	db #0e,#0e,#0f,#0f,#0f,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0a
	db #09,#08,#07,#06,#05,#03,#01,#00
	db #00,#bc,#76,#00,#bc,#76,#00,#0b
	db #77,#00,#bc,#76,#00,#0b,#77,#80
	db #86,#76,#00,#52,#77,#00,#52,#77
	db #00,#c3,#77,#00,#52,#77,#00,#c3
	db #77,#80,#98,#76,#00,#34,#78,#00
	db #34,#78,#00,#95,#78,#00,#34,#78
	db #00,#95,#78,#80,#aa,#76,#44,#70
	db #02,#44,#70,#02,#44,#70,#02,#47
	db #70,#02,#44,#70,#03,#46,#70,#02
	db #46,#70,#02,#c5,#70,#c4,#70,#42
	db #70,#02,#44,#70,#05,#47,#70,#02
	db #47,#70,#02,#47,#70,#02,#4b,#70
	db #02,#47,#70,#03,#4a,#70,#02,#4a
	db #70,#02,#c9,#70,#c7,#70,#45,#70
	db #02,#47,#70,#05,#4a,#70,#02,#4a
	db #70,#02,#c9,#70,#c7,#70,#45,#70
	db #02,#47,#70,#08,#ff,#49,#70,#03
	db #49,#70,#03,#49,#70,#02,#47,#70
	db #02,#45,#70,#04,#49,#70,#03,#4c
	db #70,#02,#4b,#70,#02,#49,#70,#02
	db #4b,#70,#09,#44,#70,#02,#44,#70
	db #02,#44,#70,#02,#47,#70,#02,#44
	db #70,#03,#46,#70,#02,#46,#70,#02
	db #c5,#70,#c4,#70,#42,#70,#02,#44
	db #70,#05,#45,#70,#02,#44,#70,#02
	db #42,#70,#04,#ff,#2c,#2c,#20,#02
	db #38,#20,#02,#2c,#2c,#21,#02,#38
	db #20,#02,#2c,#2c,#20,#02,#38,#20
	db #02,#2c,#2c,#21,#02,#38,#20,#02
	db #2c,#2c,#20,#02,#38,#20,#02,#2c
	db #2c,#21,#02,#38,#20,#02,#2f,#2c
	db #20,#02,#3b,#20,#02,#2f,#2c,#21
	db #02,#3b,#20,#02,#2f,#2c,#20,#02
	db #3b,#20,#02,#2f,#2c,#21,#02,#3b
	db #20,#02,#2f,#2c,#20,#02,#3b,#20
	db #02,#2f,#2c,#21,#02,#3b,#20,#02
	db #32,#2c,#20,#02,#3e,#20,#02,#32
	db #2c,#21,#02,#3e,#20,#02,#32,#2c
	db #20,#02,#3e,#20,#02,#32,#2c,#21
	db #02,#3e,#20,#02,#ff,#31,#2c,#20
	db #02,#3d,#20,#02,#31,#2c,#21,#02
	db #3d,#20,#02,#31,#2c,#20,#02,#3d
	db #20,#02,#31,#2c,#21,#02,#3d,#20
	db #02,#31,#2c,#20,#02,#3d,#20,#02
	db #31,#2c,#21,#02,#3d,#20,#02,#31
	db #2c,#20,#02,#3d,#20,#02,#31,#2c
	db #21,#02,#3d,#20,#02,#2c,#2c,#20
	db #02,#38,#20,#02,#2c,#2c,#21,#02
	db #38,#20,#02,#2c,#2c,#20,#02,#38
	db #20,#02,#2c,#2c,#21,#02,#38,#20
	db #02,#2c,#2c,#20,#02,#38,#20,#02
	db #2c,#2c,#21,#02,#38,#20,#02,#2d
	db #2c,#20,#02,#39,#20,#02,#2d,#2c
	db #21,#02,#39,#20,#02,#ff,#38,#30
	db #02,#38,#30,#02,#38,#30,#02,#38
	db #30,#02,#38,#30,#02,#38,#30,#02
	db #38,#30,#02,#38,#30,#02,#38,#30
	db #02,#38,#30,#02,#38,#30,#02,#38
	db #30,#02,#3b,#30,#02,#3b,#30,#02
	db #3b,#30,#02,#3b,#30,#02,#3b,#30
	db #02,#3b,#30,#02,#3b,#30,#02,#3b
	db #30,#02,#3b,#30,#02,#3b,#30,#02
	db #3b,#30,#02,#3b,#30,#02,#3e,#30
	db #02,#3e,#30,#02,#3e,#30,#02,#3e
	db #30,#02,#3e,#30,#02,#3e,#30,#02
	db #3e,#30,#02,#3e,#30,#02,#ff,#3d
	db #30,#02,#3d,#30,#02,#3d,#30,#02
	db #3d,#30,#02,#3d,#30,#02,#3d,#30
	db #02,#3d,#30,#02,#3d,#30,#02,#3d
	db #30,#02,#3d,#30,#02,#3d,#30,#02
	db #3d,#30,#02,#3d,#30,#02,#3d,#30
	db #02,#3d,#30,#02,#3d,#30,#02,#38
	db #30,#02,#38,#30,#02,#38,#30,#02
	db #38,#30,#02,#38,#30,#02,#38,#30
	db #02,#38,#30,#02,#38,#30,#02,#38
	db #30,#02,#38,#30,#02,#38,#30,#02
	db #38,#30,#02,#39,#30,#02,#39,#30
	db #02,#39,#30,#02,#39,#30,#02,#ff
;
.music_info
	db "Solomon's Key 3 - Credits (1994)(Public Domain)(Eliot)",0
	db "ST-128 Module",0

	read "music_end.asm"
