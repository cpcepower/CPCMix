; Music of The Twister - Cheat Part (1996)(OdieSoft)(OdieSoft)(ST-Module)
; Ripped by Megachur the 03/01/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THETWICP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #5000

	read "music_header.asm"

	jp l500b
	jp l5093
	jp l5077
	db #66,#04
;
.init_music
.l500b
;
	ld b,#03
	ld ix,l53da
	ld iy,l5306
	ld de,#001c
.l5018
	push bc
	ld (ix+#06),#01
	ld (ix+#09),d
	ld (ix+#1b),d
	ld (ix+#05),#10
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#00),c
	ld (ix+#01),b
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l5018
	ld a,#05
	ld (l50bb),a
	ld a,d
	ld (l50cf),a
	inc a
	ld (l50b6),a
	ld a,#38
	ld (l50c0),a
	ld a,#ff
	ld (l5302),a
	ld (l5303),a
	ld (l5304),a
	ld (l5305),a
	ld a,#0c
	ld c,d
	call l52e4
	ld a,#0d
	ld c,d
	jp l52e4
;
.stop_music
.l5077
;
	ld a,#07
	ld c,#3f
	call l52e4
	ld a,#08
	ld c,#00
	call l52e4
	ld a,#09
	ld c,#00
	call l52e4
	ld a,#0a
	ld c,#00
	jp l52e4
;
.play_music
.l5093
;
	ld hl,l50b6
	dec (hl)
	ld ix,l53da
	ld bc,l53e8
	call l5149
	ld ix,l53f6
	ld bc,l5404
	call l5149
	ld ix,l5412
	ld bc,l5420
	call l5149
.l50b6 equ $ + 1
	ld a,#00
	or a
	jr nz,l50bf
.l50bb equ $ + 1
	ld a,#00
	ld (l50b6),a
.l50c0 equ $ + 1
.l50bf
	ld a,#00
	ld hl,l5303
	cp (hl)
	jr z,l50ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l52e4
.l50cf equ $ + 1
.l50ce
	ld a,#00
	ld hl,l5302
	cp (hl)
	jr z,l50dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l52e4
.l50de equ $ + 1
.l50dd
	ld a,#00
	ld hl,l5304
	cp (hl)
	jr z,l50ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l52e4
.l50ed equ $ + 1
.l50ec
	ld a,#00
	ld hl,l5305
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l52e4
.l50fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l51fa
.l5109
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	xor a
	ld (ix+#17),a
	ld (ix+#15),a
	ld c,a
	ld a,(ix+#04)
	jp l52e4
.l5123
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l5138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l5138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l515c
.l5149
	ld a,(l50b6)
	or a
	jp nz,l51fa
	dec (ix+#06)
	jp nz,l51fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l515c
	ld a,(hl)
	or a
	jr z,l50fa
	cp #fe
	jr z,l5109
	cp #ff
	jr z,l5123
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l530c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l5198
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l5198
	and #7f
	ld (ix+#06),a
	jr l51eb
.l5198
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l51ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l51ac
	add a
	add a
	add a
	ld e,a
	ld hl,l5442
	add hl,de
	ld d,b
	ld e,c
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop af
	pop hl
	and #f0
	jr z,l51eb
	cp #f0
	jp z,l52a0
	cp #d0
	jp z,l52bc
	cp #b0
	jp z,l52c4
	cp #80
	jp nc,l52cc
	cp #10
	jr nz,l51eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l51eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l51fa
	ld a,(ix+#17)
	or a
	jr nz,l520e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l520e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l5239
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l530c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l5239
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,(ix+#18)
	ld h,(ix+#19)
	add hl,bc
	ld c,l
	ld a,(ix+#02)
	call l52e4
	ld c,h
	ld a,(ix+#03)
	call l52e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l5277
	and #0f
	sub (ix+#0a)
	jr nc,l526d
	xor a
.l526d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l52e4
.l5277
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld a,(hl)
	bit 7,a
	ret nz
	and #1f
	ld b,(ix+#0b)
	ld c,a
	or a
	ld a,b
	jr z,l5294
	ld b,a
	ld a,c
	ld (l50cf),a
	ld a,b
	sub #40
.l5294
	ld (l529b),a
	ld a,(l50c0)
.l529b equ $ + 1
	bit 0,a
	ld (l50c0),a
	ret
.l52a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l54c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l51eb
.l52bc
	inc hl
	ld a,(hl)
	ld (l50bb),a
	jp l51eb
.l52c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l51eb
.l52cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l50ed),a
	inc hl
	ld a,(hl)
	ld (l50de),a
	jp l51eb
.l52e4
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
	ret
.l5305 equ $ + 3
.l5304 equ $ + 2
.l5303 equ $ + 1
.l5302
	db #ff,#ff,#ff,#ff
.l5306
	dw l57e2,l57fd,l5818
.l530c
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
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
	dw #000f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l53da equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l53e8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l53f6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l5404 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5412 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l5420 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l5442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#54,#22,#55
	db #42,#55,#00,#00,#dc,#4e,#dc,#4e
	db #dc,#4e,#00,#00,#dc,#4e,#dc,#4e
	db #dc,#4e,#00,#00,#dc,#4e,#dc,#4e
	db #dc,#4e,#00,#00,#62,#55,#a2,#55
	db #c2,#55,#00,#00,#e2,#55,#22,#56
	db #42,#56,#16,#0a,#62,#56,#a2,#56
	db #c2,#56,#00,#00,#e2,#54,#e2,#56
	db #42,#55,#00,#00,#02,#57,#42,#57
	db #42,#55,#1a,#00,#dc,#4e,#dc,#4e
	db #dc,#4e,#00,#00,#62,#57,#a2,#57
	db #42,#55,#16,#0a,#dc,#4e,#dc,#4e
	db #dc,#4e,#00,#00,#dc,#4e,#dc,#4e
	db #dc,#4e,#00,#00,#dc,#4e,#dc,#4e
	db #dc,#4e,#00,#00,#dc,#4e,#dc,#4e
	db #dc,#4e,#00,#00,#dc,#4e,#dc,#4e
.l54c2 equ $ + 4
	db #dc,#4e,#00,#00,#dc,#4e,#dc,#4e
	db #dc,#4e,#c2,#57,#dc,#4e,#dc,#4e
	db #dc,#4e,#dc,#4e,#dc,#4e,#dc,#4e
	db #dc,#4e,#dc,#4e,#dc,#4e,#dc,#4e
	db #dc,#4e,#dc,#4e,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#20,#00
	db #40,#00,#60,#00,#a0,#00,#e0,#00
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #a0,#00,#e0,#00,#00,#00,#20,#00
	db #40,#00,#60,#00,#80,#00,#a0,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0a,#0a,#09,#09
	db #08,#08,#06,#05,#02,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#02,#00,#06,#08
	db #0b,#10,#02,#00,#06,#08,#0b,#10
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0c,#0c,#0c,#0b
	db #0b,#0b,#0c,#0c,#0c,#0c,#0c,#0b
	db #0b,#0b,#0b,#0b,#0c,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #fe,#ff,#fd,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#fd,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#fd,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0c,#0b,#0a,#08,#07,#07,#08,#08
	db #09,#09,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #03,#02,#02,#02,#00,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0c,#0c,#0c,#0b
	db #0b,#0a,#0a,#09,#09,#08,#08,#07
	db #07,#06,#06,#05,#05,#04,#04,#04
	db #04,#04,#04,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#fe,#ff,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#02,#00,#03,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#fe,#ff,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0b,#0a,#0a,#09,#0a,#09
	db #09,#08,#09,#08,#08,#07,#08,#07
	db #07,#06,#07,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#03,#00,#02,#00,#01,#00
	db #ff,#ff,#fe,#ff,#fd,#ff,#fe,#ff
	db #ff,#ff,#02,#00,#03,#00,#04,#00
	db #03,#00,#02,#00,#0f,#0f,#0e,#0e
	db #0e,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0c,#0c,#0c,#0c,#0c,#0c,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0e
	db #0e,#0e,#0e,#0e,#0c,#00,#00,#0c
	db #0c,#00,#00,#0c,#0c,#00,#00,#0c
	db #0c,#00,#00,#0c,#0c,#00,#00,#0c
	db #0c,#00,#00,#0c,#0c,#00,#00,#0c
.l57e2 equ $ + 4
	db #0c,#00,#00,#0c,#00,#33,#58,#00
	db #58,#58,#00,#6b,#58,#00,#bd,#58
	db #00,#02,#59,#00,#9d,#59,#00,#38
.l57fd equ $ + 7
	db #5a,#00,#38,#5a,#80,#e2,#57,#00
	db #d3,#5a,#00,#2a,#5b,#00,#6e,#5b
	db #00,#c5,#5b,#00,#09,#5c,#00,#42
	db #5c,#00,#77,#5c,#00,#77,#5c,#80
.l5818 equ $ + 2
	db #fd,#57,#00,#f8,#5c,#00,#58,#5d
	db #00,#b9,#5d,#00,#19,#5e,#00,#7a
	db #5e,#00,#58,#5d,#00,#7a,#5e,#00
	db #7a,#5e,#80,#18,#58,#c3,#c6,#09
	db #c8,#c6,#07,#c3,#c6,#09,#c8,#c6
	db #07,#43,#08,#c6,#09,#fe,#14,#c3
	db #c6,#09,#c8,#c6,#07,#c3,#c6,#09
	db #c8,#c6,#07,#43,#08,#c6,#09,#fe
	db #14,#ff,#c3,#c6,#09,#c8,#c6,#07
	db #c3,#c6,#09,#c8,#c6,#07,#43,#08
	db #c7,#09,#fe,#34,#ff,#c3,#c6,#09
	db #c8,#c6,#07,#c3,#c6,#09,#c8,#c6
	db #07,#43,#08,#c6,#09,#bc,#17,#be
	db #07,#bf,#07,#c1,#07,#43,#84,#43
	db #82,#c1,#07,#3f,#82,#be,#07,#3c
	db #82,#3a,#82,#3c,#82,#c3,#c6,#09
	db #c8,#c6,#07,#c3,#c6,#09,#c8,#c6
	db #07,#43,#08,#c6,#09,#bc,#17,#41
	db #02,#07,#bc,#07,#43,#82,#46,#82
	db #46,#82,#c3,#07,#46,#82,#c3,#07
	db #46,#82,#48,#82,#46,#82,#ff,#c3
	db #c6,#09,#c8,#c6,#07,#c3,#c6,#09
	db #c8,#c6,#07,#43,#08,#c7,#09,#c3
	db #17,#c1,#07,#bf,#07,#be,#07,#3a
	db #82,#ba,#07,#bc,#07,#3e,#82,#bf
	db #07,#3e,#83,#3a,#82,#3c,#82,#3e
	db #82,#3f,#82,#3e,#82,#3c,#84,#3a
	db #82,#3c,#82,#3a,#84,#3c,#84,#3e
	db #84,#3f,#84,#c1,#07,#c3,#07,#c6
	db #07,#c8,#07,#ff,#3c,#02,#ba,#00
	db #c8,#ba,#00,#3c,#02,#ba,#03,#c8
	db #ba,#03,#48,#02,#ba,#00,#c6,#ba
	db #00,#48,#02,#ba,#03,#c6,#ba,#03
	db #43,#02,#ba,#00,#c6,#ba,#05,#c3
	db #ba,#03,#3c,#02,#ba,#00,#c8,#ba
	db #00,#bc,#ba,#03,#c6,#ba,#00,#c8
	db #ba,#03,#c3,#ba,#00,#c6,#ba,#03
	db #c1,#ba,#00,#c3,#ba,#00,#c6,#ba
	db #05,#bf,#ba,#00,#43,#02,#ba,#03
	db #bc,#ba,#00,#c3,#ba,#05,#bc,#ba
	db #00,#bc,#ba,#03,#c8,#ba,#00,#bc
	db #ba,#03,#bc,#ba,#05,#c8,#ba,#03
	db #48,#02,#ba,#00,#c6,#ba,#00,#48
	db #02,#ba,#03,#c6,#ba,#03,#48,#02
	db #ba,#00,#cb,#ba,#00,#48,#02,#ba
	db #03,#4b,#83,#4a,#03,#ba,#00,#ca
	db #ba,#03,#46,#02,#ba,#00,#ca,#ba
	db #05,#c6,#ba,#03,#48,#02,#ba,#00
	db #c6,#ba,#05,#c8,#ba,#03,#ff,#3c
	db #02,#ba,#00,#c8,#ba,#00,#3c,#02
	db #ba,#03,#c8,#ba,#03,#48,#02,#ba
	db #00,#c6,#ba,#00,#48,#02,#ba,#03
	db #c6,#ba,#03,#43,#02,#ba,#00,#c6
	db #ba,#05,#c3,#ba,#03,#3c,#02,#ba
	db #00,#c8,#ba,#00,#bc,#ba,#03,#c6
	db #ba,#00,#c8,#ba,#03,#c3,#ba,#00
	db #c6,#ba,#03,#c1,#ba,#00,#c3,#ba
	db #00,#c6,#ba,#05,#bf,#ba,#00,#43
	db #02,#ba,#03,#bc,#ba,#00,#c3,#ba
	db #05,#bc,#ba,#00,#bc,#ba,#03,#c8
	db #ba,#00,#bc,#ba,#03,#bc,#ba,#05
	db #c8,#ba,#03,#48,#02,#ba,#00,#c6
	db #ba,#00,#48,#02,#ba,#03,#c6,#ba
	db #03,#48,#02,#ba,#00,#cb,#ba,#00
	db #48,#02,#ba,#03,#4b,#83,#4a,#03
	db #ba,#00,#ca,#ba,#03,#46,#02,#ba
	db #00,#ca,#ba,#05,#c6,#ba,#03,#48
	db #02,#ba,#00,#c6,#ba,#05,#c8,#ba
	db #03,#ff,#3c,#02,#fa,#03,#c8,#ba
	db #00,#3c,#02,#ba,#03,#c8,#ba,#03
	db #48,#02,#ba,#00,#c6,#ba,#00,#48
	db #02,#ba,#03,#c6,#ba,#03,#43,#02
	db #ba,#00,#c6,#ba,#05,#c3,#ba,#03
	db #3c,#02,#ba,#00,#c8,#ba,#00,#bc
	db #ba,#03,#c6,#ba,#00,#c8,#ba,#03
	db #c3,#ba,#00,#c6,#ba,#03,#c1,#ba
	db #00,#c3,#ba,#00,#c6,#ba,#05,#bf
	db #ba,#00,#43,#02,#ba,#03,#bc,#ba
	db #00,#c3,#ba,#05,#bc,#ba,#00,#bc
	db #ba,#03,#c8,#ba,#00,#bc,#ba,#03
	db #bc,#ba,#05,#c8,#ba,#03,#48,#02
	db #ba,#00,#c6,#ba,#00,#48,#02,#ba
	db #03,#c6,#ba,#03,#48,#02,#ba,#00
	db #cb,#ba,#00,#48,#02,#ba,#03,#4b
	db #83,#4a,#03,#ba,#00,#ca,#ba,#03
	db #46,#02,#ba,#00,#ca,#ba,#05,#c6
	db #ba,#03,#48,#02,#ba,#00,#c6,#ba
	db #05,#c8,#ba,#03,#ff,#c3,#16,#c8
	db #b6,#00,#c3,#b6,#00,#c8,#b6,#00
	db #c3,#b6,#00,#c3,#b6,#03,#c8,#b6
	db #03,#c3,#b6,#03,#c3,#b6,#05,#c8
	db #b6,#05,#43,#82,#3f,#04,#c0,#16
	db #41,#04,#c0,#14,#3c,#0c,#c0,#1b
	db #c3,#16,#c8,#b6,#00,#c3,#b6,#00
	db #c8,#b6,#00,#c3,#b6,#00,#c3,#b6
	db #03,#c8,#b6,#03,#c3,#b6,#03,#c3
	db #b6,#05,#c8,#b6,#05,#43,#82,#3f
	db #04,#c0,#16,#41,#04,#c0,#14,#46
	db #0c,#c0,#0f,#ff,#c3,#16,#c8,#b6
	db #00,#c3,#b6,#00,#c8,#b6,#00,#c3
	db #b6,#00,#c3,#b6,#03,#c8,#b6,#03
	db #c3,#b6,#03,#c3,#b6,#05,#c8,#b6
	db #05,#43,#82,#3f,#04,#c0,#16,#3e
	db #02,#c0,#18,#3c,#02,#c0,#1b,#3a
	db #08,#c0,#1e,#3c,#02,#c0,#1b,#3e
	db #02,#c0,#18,#3f,#08,#c0,#16,#41
	db #08,#c0,#14,#3c,#10,#c0,#1b,#ff
	db #c3,#16,#c8,#b6,#00,#c3,#b6,#00
	db #c8,#b6,#00,#c3,#b6,#00,#c3,#b6
	db #03,#c8,#b6,#03,#c3,#b6,#03,#c3
	db #b6,#05,#c8,#b6,#05,#43,#82,#3f
	db #04,#c0,#16,#41,#04,#c0,#14,#3c
	db #0c,#c0,#1b,#c3,#16,#c8,#b6,#00
	db #c3,#b6,#00,#c8,#b6,#00,#c3,#b6
	db #00,#c3,#b6,#03,#c8,#b6,#03,#c3
	db #b6,#03,#c3,#b6,#05,#c8,#b6,#05
	db #43,#82,#3f,#04,#c0,#16,#41,#04
	db #c0,#14,#46,#0c,#c0,#0f,#ff,#c3
	db #16,#c8,#b6,#00,#c3,#b6,#00,#c8
	db #b6,#00,#c3,#b6,#00,#c3,#b6,#03
	db #c8,#b6,#03,#c3,#b6,#03,#c3,#b6
	db #05,#c8,#b6,#05,#43,#82,#3f,#04
	db #c0,#16,#3e,#02,#c0,#18,#3c,#02
	db #c0,#1b,#3a,#08,#c0,#1e,#3c,#02
	db #c0,#1b,#3e,#02,#c0,#18,#3f,#08
	db #c0,#16,#41,#08,#c0,#14,#3c,#10
	db #c0,#1b,#ff,#c3,#c6,#09,#c8,#c6
	db #07,#c3,#c6,#09,#c8,#c6,#07,#43
	db #08,#c6,#09,#3f,#04,#c0,#16,#41
	db #04,#c0,#14,#3c,#0c,#c0,#1b,#c3
	db #c6,#09,#c8,#c6,#07,#c3,#c6,#09
	db #c8,#c6,#07,#43,#08,#c6,#09,#3f
	db #04,#c0,#16,#41,#04,#c0,#14,#46
	db #0c,#c0,#0f,#ff,#c3,#c6,#09,#c8
	db #c6,#07,#c3,#c6,#09,#c8,#c6,#07
	db #43,#08,#c6,#09,#3f,#04,#c0,#16
	db #3e,#02,#c0,#18,#3c,#02,#c0,#1b
	db #3a,#08,#c0,#1e,#3c,#02,#c0,#1b
	db #3e,#02,#c0,#18,#3f,#08,#c0,#16
	db #41,#08,#c0,#14,#3c,#10,#c0,#1b
	db #ff,#c3,#17,#c8,#07,#c3,#07,#c8
	db #07,#cb,#07,#ca,#07,#c8,#07,#c6
	db #07,#c3,#07,#c8,#07,#c3,#07,#c8
	db #07,#cb,#07,#ca,#07,#c8,#07,#c6
	db #07,#c4,#07,#c8,#07,#c4,#07,#c8
	db #07,#cb,#07,#ca,#07,#c8,#07,#c6
	db #07,#c6,#07,#ca,#07,#c6,#07,#ca
	db #07,#cd,#07,#cb,#07,#ca,#07,#c8
	db #07,#c3,#07,#c8,#07,#c3,#07,#c8
	db #07,#cb,#07,#ca,#07,#c8,#07,#c6
	db #07,#c3,#07,#c8,#07,#c3,#07,#c8
	db #07,#cb,#07,#ca,#07,#c8,#07,#c6
	db #07,#c3,#07,#c1,#07,#c3,#07,#bf
	db #07,#c1,#07,#c3,#07,#c1,#07,#bf
	db #07,#c1,#07,#c3,#07,#c1,#07,#bf
	db #07,#be,#07,#bc,#07,#ba,#07,#b7
	db #07,#ff,#a4,#05,#24,#82,#a4,#05
	db #33,#02,#04,#24,#02,#05,#a4,#05
	db #24,#82,#a4,#05,#33,#02,#04,#24
	db #02,#05,#a0,#05,#20,#82,#a0,#05
	db #33,#02,#04,#20,#02,#05,#a0,#05
	db #20,#82,#a0,#05,#33,#02,#04,#20
	db #02,#05,#a4,#05,#24,#82,#a4,#05
	db #33,#02,#04,#24,#02,#05,#a4,#05
	db #24,#82,#a4,#05,#33,#02,#04,#24
	db #02,#05,#a2,#05,#22,#82,#a2,#05
	db #33,#02,#04,#22,#02,#05,#a2,#05
	db #22,#82,#a2,#05,#33,#02,#04,#33
	db #82,#ff,#a4,#05,#24,#82,#a4,#05
	db #33,#02,#04,#24,#02,#05,#a4,#05
	db #24,#82,#a4,#05,#33,#02,#04,#24
	db #02,#05,#a2,#05,#22,#82,#a2,#05
	db #33,#02,#04,#22,#02,#05,#a2,#05
	db #22,#82,#a2,#05,#33,#02,#04,#22
	db #02,#05,#a0,#05,#20,#82,#a0,#05
	db #33,#02,#04,#20,#02,#05,#a2,#05
	db #22,#82,#a2,#05,#33,#02,#04,#22
	db #02,#05,#a4,#05,#24,#82,#a4,#05
	db #33,#02,#04,#24,#02,#05,#a4,#05
	db #24,#82,#a4,#05,#33,#02,#04,#24
	db #02,#05,#ff,#a4,#05,#24,#82,#a4
	db #05,#33,#02,#04,#24,#02,#05,#a4
	db #05,#24,#82,#a4,#05,#33,#02,#04
	db #24,#02,#05,#a0,#05,#20,#82,#a0
	db #05,#33,#02,#04,#20,#02,#05,#a0
	db #05,#20,#82,#a0,#05,#33,#02,#04
	db #20,#02,#05,#a4,#05,#24,#82,#a4
	db #05,#33,#02,#04,#24,#02,#05,#a4
	db #05,#24,#82,#a4,#05,#33,#02,#04
	db #24,#02,#05,#a2,#05,#22,#82,#a2
	db #05,#33,#02,#04,#22,#02,#05,#a2
	db #05,#22,#82,#a2,#05,#33,#02,#04
	db #33,#82,#ff,#a4,#05,#24,#82,#a4
	db #05,#33,#02,#04,#24,#02,#05,#a4
	db #05,#24,#82,#a4,#05,#33,#02,#04
	db #24,#02,#05,#a2,#05,#22,#82,#a2
	db #05,#33,#02,#04,#22,#02,#05,#a2
	db #05,#22,#82,#a2,#05,#33,#02,#04
	db #22,#02,#05,#a0,#05,#20,#82,#a0
	db #05,#33,#02,#04,#20,#02,#05,#a2
	db #05,#22,#82,#a2,#05,#33,#02,#04
	db #22,#02,#05,#a4,#05,#24,#82,#a4
	db #05,#33,#02,#04,#24,#02,#05,#a4
	db #05,#24,#82,#a4,#05,#33,#02,#04
	db #24,#02,#05,#ff,#a4,#05,#a4,#05
	db #c3,#06,#a4,#05,#b3,#04,#c3,#06
	db #24,#02,#05,#a4,#05,#24,#82,#a4
	db #05,#33,#02,#04,#24,#02,#05,#a0
	db #05,#20,#82,#a0,#05,#33,#02,#04
	db #20,#02,#05,#a0,#05,#20,#82,#a0
	db #05,#33,#02,#04,#20,#02,#05,#a4
	db #05,#a4,#05,#c3,#06,#a4,#05,#b3
	db #04,#c3,#06,#24,#02,#05,#a4,#05
	db #24,#82,#a4,#05,#33,#02,#04,#24
	db #02,#05,#a2,#05,#22,#82,#a2,#05
	db #33,#02,#04,#22,#02,#05,#a2,#05
	db #22,#82,#a2,#05,#33,#02,#04,#33
	db #82,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#22,#55,#55,#55,#55,#55,#52
	db #52,#52,#52,#52,#4b,#4b,#4b,#4b
	db #4b,#4b,#01,#00,#00,#00,#37,#45
	db #4c,#43,#4f,#4d,#45,#00,#54,#4f
	db #00,#54,#48,#45,#00,#43,#48,#45
	db #41,#54,#00,#50,#41,#52,#54,#00
	db #4f,#46,#00,#54,#48,#49,#53,#00
	db #44,#45,#4d,#4f,#01,#00,#24,#4f
	db #4e,#07,#54,#00,#42,#45,#00,#41
	db #46,#52,#41,#49,#44,#0c,#00,#49
	db #54,#00,#57,#4f,#4e,#07,#54,#00
	db #48,#55,#52,#54,#00,#08,#46,#4f
	db #52,#00,#4c,#4f,#4e,#47,#0e,#0e
	db #0e,#0e,#00,#0a,#53,#4d,#49,#4c
	db #45,#0a,#09,#0e,#00,#00,#00,#00
	db #29,#4e,#00,#53,#4f,#4d,#45,#00
	db #4f,#46,#00,#4d,#59,#00,#4f,#54
	db #48,#45,#52,#00,#50,#41,#52,#54
	db #53,#00,#41,#52,#45,#00,#41,#4c
	db #53,#4f,#00,#48,#49,#44,#44,#45
	db #4e,#00,#53,#43,#52,#45,#45,#4e
	db #53,#0c,#00,#50,#41,#52,#54,#53
	db #00,#41,#4e,#44,#00,#4f,#54,#48
	db #45,#52,#00,#53,#54,#55,#46,#46
	db #0e,#00,#34,#52,#59,#00,#54,#4f
	db #00,#46,#49,#4e,#44,#00,#54,#48
	db #45,#4d,#0e,#00,#00,#00,#00,#00
	db #00,#29,#46,#00,#59,#4f,#55,#07
	db #56,#45,#00,#43,#4f,#4d,#45,#00
	db #49,#4e,#54,#4f,#00,#54,#48,#49
	db #53,#00,#50,#41,#52,#54,#00,#42
	db #59,#00,#f4,#60,#f4,#60,#f4,#60
	db #bf,#10,#f4,#60,#f4,#60,#f4,#60
	db #bf,#40,#f4,#60,#f4,#60,#f4,#60
	db #bf,#10,#f4,#60,#f4,#60,#f4,#60
	db #bf,#40,#f4,#60,#f4,#60,#f4,#60
	db #bf,#10,#f4,#60,#f4,#60,#f4,#60
	db #bf,#40,#f4,#60,#f4,#60,#f4,#60
	db #bf,#10,#f4,#60,#f4,#60,#f4,#60
	db #bf,#40,#f4,#60,#f4,#60,#f4,#60
	db #bf,#10,#f4,#60,#f4,#60,#f4,#60
	db #bf,#40,#f4,#60,#f4,#60,#f4,#60
	db #bf,#10,#f4,#60,#f4,#60,#f4,#60
	db #bf,#40,#f4,#60,#bf,#40,#bf,#40
	db #ff
;
.music_info
	db "The Twister - Cheat Part (1996)(OdieSoft)(OdieSoft)",0
	db "ST-Module",0

	read "music_end.asm"
