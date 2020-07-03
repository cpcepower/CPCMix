; Music of Disc Mac Challenge Issue 20 - Invitation (1996)(Hypnomega)()(ST-Module)
; Ripped by Megachur the 05/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DIMCI20N.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #5b90

	read "music_header.asm"

	jp l5b9b
	jp l5c23
	jp l5c07
	db #66,#04
;
.init_music
.l5b9b
;
	ld b,#03
	ld ix,l5f6a
	ld iy,l5e96
	ld de,#001c
.l5ba8
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
	djnz l5ba8
	ld a,#06
	ld (l5c4b),a
	ld a,d
	ld (l5c5f),a
	inc a
	ld (l5c46),a
	ld a,#38
	ld (l5c50),a
	ld a,#ff
	ld (l5e92),a
	ld (l5e93),a
	ld (l5e94),a
	ld (l5e95),a
	ld a,#0c
	ld c,d
	call l5e74
	ld a,#0d
	ld c,d
	jp l5e74
;
.stop_music
.l5c07
;
	ld a,#07
	ld c,#3f
	call l5e74
	ld a,#08
	ld c,#00
	call l5e74
	ld a,#09
	ld c,#00
	call l5e74
	ld a,#0a
	ld c,#00
	jp l5e74
;
.play_music
.l5c23
;
	ld hl,l5c46
	dec (hl)
	ld ix,l5f6a
	ld bc,l5f78
	call l5cd9
	ld ix,l5f86
	ld bc,l5f94
	call l5cd9
	ld ix,l5fa2
	ld bc,l5fb0
	call l5cd9
.l5c46 equ $ + 1
	ld a,#00
	or a
	jr nz,l5c4f
.l5c4b equ $ + 1
	ld a,#00
	ld (l5c46),a
.l5c50 equ $ + 1
.l5c4f
	ld a,#00
	ld hl,l5e93
	cp (hl)
	jr z,l5c5e
	ld (hl),a
	ld c,a
	ld a,#07
	call l5e74
.l5c5f equ $ + 1
.l5c5e
	ld a,#00
	ld hl,l5e92
	cp (hl)
	jr z,l5c6d
	ld (hl),a
	ld c,a
	ld a,#06
	call l5e74
.l5c6e equ $ + 1
.l5c6d
	ld a,#00
	ld hl,l5e94
	cp (hl)
	jr z,l5c7c
	ld (hl),a
	ld c,a
	ld a,#0b
	call l5e74
.l5c7d equ $ + 1
.l5c7c
	ld a,#00
	ld hl,l5e95
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l5e74
.l5c8a
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l5d8a
.l5c99
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
	jp l5e74
.l5cb3
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l5cc8
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l5cc8
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l5cec
.l5cd9
	ld a,(l5c46)
	or a
	jp nz,l5d8a
	dec (ix+#06)
	jp nz,l5d8a
	ld l,(ix+#00)
	ld h,(ix+#01)
.l5cec
	ld a,(hl)
	or a
	jr z,l5c8a
	cp #fe
	jr z,l5c99
	cp #ff
	jr z,l5cb3
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l5e9c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l5d28
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l5d28
	and #7f
	ld (ix+#06),a
	jr l5d7b
.l5d28
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l5d3c
	ld (ix+#05),a
	ld (ix+#0a),d
.l5d3c
	add a
	add a
	add a
	ld e,a
	ld hl,l5fd2
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
	jr z,l5d7b
	cp #f0
	jp z,l5e30
	cp #d0
	jp z,l5e4c
	cp #b0
	jp z,l5e54
	cp #80
	jp nc,l5e5c
	cp #10
	jr nz,l5d7b
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l5d7b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l5d8a
	ld a,(ix+#17)
	or a
	jr nz,l5d9e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l5d9e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l5dc9
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l5e9c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l5dc9
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
	call l5e74
	ld c,h
	ld a,(ix+#03)
	call l5e74
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l5e07
	and #0f
	sub (ix+#0a)
	jr nc,l5dfd
	xor a
.l5dfd
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l5e74
.l5e07
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
	jr z,l5e24
	ld b,a
	ld a,c
	ld (l5c5f),a
	ld a,b
	sub #40
.l5e24
	ld (l5e2b),a
	ld a,(l5c50)
.l5e2b equ $ + 1
	bit 0,a
	ld (l5c50),a
	ret
.l5e30
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l6052
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l5d7b
.l5e4c
	inc hl
	ld a,(hl)
	ld (l5c4b),a
	jp l5d7b
.l5e54
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l5d7b
.l5e5c
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l5c7d),a
	inc hl
	ld a,(hl)
	ld (l5c6e),a
	jp l5d7b
.l5e74
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
.l5e95 equ $ + 3
.l5e94 equ $ + 2
.l5e93 equ $ + 1
.l5e92
	db #ff,#ff,#ff,#ff
.l5e96
	dw l62f2,l630d,l6328
.l5e9c
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
.l5f6a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l5f78 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5f86
	db #00,#00,#02,#03,#09,#00,#00,#00
.l5f94 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5fa2 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l5fb0 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l5fd2 equ $ + 4
	db #75,#6c,#65,#2e,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#72,#60,#b2,#60
	db #d2,#60,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#f2,#60,#32,#61
	db #52,#61,#00,#00,#72,#61,#b2,#61
	db #d2,#61,#00,#00,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#f2,#61,#32,#62
	db #52,#62,#00,#00,#72,#62,#b2,#62
	db #52,#61,#10,#10,#00,#3f,#00,#3f
	db #00,#3f,#00,#00,#00,#3f,#46,#c5
	db #66,#c4,#07,#18,#66,#c5,#a6,#c5
	db #66,#c4,#00,#00,#c6,#c5,#06,#c6
	db #66,#c4,#07,#18,#46,#04,#46,#02
	db #66,#02,#07,#00,#00,#f4,#00,#f4
	db #00,#f4,#00,#00,#00,#f4,#00,#f4
	db #00,#f4,#00,#00,#00,#f4,#00,#f4
.l6052 equ $ + 4
	db #00,#f4,#00,#00,#d2,#62,#26,#c6
	db #46,#c6,#66,#c6,#46,#86,#d2,#5e
	db #00,#f4,#00,#f4,#a6,#3f,#c6,#3f
	db #86,#04,#a6,#be,#c6,#be,#00,#f4
	db #00,#f4,#00,#f4,#80,#00,#00,#01
	db #80,#01,#00,#02,#80,#02,#00,#03
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0b,#0a,#09,#09,#08,#08,#07
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#38,#00,#60,#00
	db #b0,#00,#18,#01,#48,#01,#80,#01
	db #c8,#01,#10,#02,#58,#02,#b0,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0c,#0b,#09,#07,#06,#03,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#06,#06,#05
	db #04,#04,#03,#02,#01,#00,#00,#00
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
	db #00,#00,#00,#00,#0f,#0d,#0b,#09
	db #07,#05,#03,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0b,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l62f2 equ $ + 4
	db #00,#00,#00,#00,#00,#43,#63,#00
	db #43,#63,#00,#43,#63,#00,#43,#63
	db #00,#43,#63,#00,#43,#63,#00,#43
.l630d equ $ + 7
	db #63,#00,#43,#63,#80,#f2,#62,#00
	db #c5,#63,#00,#c5,#63,#00,#11,#64
	db #00,#11,#64,#00,#c5,#63,#00,#c5
	db #63,#00,#85,#64,#00,#85,#64,#80
.l6328 equ $ + 2
	db #0d,#63,#00,#cd,#64,#00,#cd,#64
	db #00,#4e,#65,#00,#4e,#65,#00,#cd
	db #64,#00,#cd,#64,#00,#cd,#64,#00
	db #cd,#64,#80,#28,#63,#a4,#f3,#00
	db #b0,#03,#bc,#03,#a4,#03,#b0,#03
	db #bc,#03,#a4,#03,#bc,#03,#a4,#03
	db #b0,#03,#bc,#03,#a4,#03,#b0,#03
	db #bc,#03,#a4,#03,#bc,#03,#a4,#03
	db #b0,#03,#bc,#03,#a4,#03,#b0,#03
	db #bc,#03,#a4,#03,#bc,#03,#a4,#03
	db #b0,#03,#bc,#03,#a4,#03,#b0,#03
	db #bc,#03,#a4,#03,#bc,#03,#a2,#03
	db #ae,#03,#ba,#03,#a2,#03,#ae,#03
	db #ba,#03,#a2,#03,#ba,#03,#a2,#03
	db #ae,#03,#ba,#03,#a2,#03,#ae,#03
	db #ba,#03,#a2,#03,#ba,#03,#9d,#03
	db #a9,#03,#b5,#03,#9d,#03,#a9,#03
	db #b5,#03,#9d,#03,#b5,#03,#9d,#03
	db #a9,#03,#b5,#03,#9d,#03,#a9,#03
	db #b5,#03,#9d,#03,#b5,#03,#ff,#48
	db #02,#f7,#00,#48,#02,#07,#c6,#07
	db #48,#82,#c8,#07,#48,#82,#48,#82
	db #46,#82,#48,#83,#48,#82,#c8,#07
	db #c6,#07,#48,#83,#cb,#07,#cb,#07
	db #4a,#82,#4b,#82,#4a,#82,#46,#82
	db #46,#82,#c4,#07,#46,#83,#c6,#07
	db #46,#82,#c6,#07,#44,#82,#46,#82
	db #4d,#82,#4d,#82,#cb,#07,#4d,#82
	db #4d,#82,#cd,#07,#4b,#82,#4d,#82
	db #4b,#82,#ff,#bc,#f7,#00,#bc,#07
	db #bf,#07,#bf,#07,#c3,#07,#c3,#07
	db #c8,#07,#c8,#07,#cb,#07,#cb,#07
	db #ca,#07,#ca,#07,#c8,#07,#c8,#07
	db #cf,#07,#cf,#07,#bc,#07,#bc,#07
	db #bf,#07,#bf,#07,#c3,#07,#c3,#07
	db #c8,#07,#c8,#07,#cb,#07,#cb,#07
	db #ca,#07,#ca,#07,#c8,#07,#c8,#07
	db #cf,#07,#cf,#07,#ba,#07,#ba,#07
	db #be,#07,#be,#07,#c1,#07,#c1,#07
	db #c6,#07,#c6,#07,#ca,#07,#ca,#07
	db #c8,#07,#c8,#07,#c6,#07,#c6,#07
	db #c8,#07,#c8,#07,#4d,#82,#48,#82
	db #c6,#07,#48,#82,#4d,#82,#cd,#07
	db #48,#82,#46,#82,#48,#82,#ff,#cf
	db #f7,#00,#cb,#07,#ca,#07,#cb,#07
	db #ca,#07,#cb,#07,#ca,#07,#48,#83
	db #43,#82,#48,#82,#cb,#07,#4a,#82
	db #ca,#07,#4b,#82,#4a,#82,#48,#8a
	db #cf,#07,#ca,#07,#c8,#07,#ca,#07
	db #c8,#07,#ca,#07,#c8,#07,#46,#83
	db #4f,#82,#4d,#82,#cf,#07,#4d,#82
	db #cb,#07,#ca,#07,#4b,#82,#ca,#07
	db #c8,#07,#c6,#07,#41,#88,#ff,#ba
	db #11,#e0,#06,#e0,#06,#e0,#06,#ba
	db #04,#e0,#06,#e0,#06,#ba,#01,#e0
	db #06,#ba,#01,#ba,#01,#e0,#06,#ba
	db #04,#e0,#06,#e0,#06,#e0,#06,#ba
	db #01,#e0,#06,#e0,#06,#e0,#06,#ba
	db #04,#e0,#06,#ba,#01,#ba,#01,#ba
	db #01,#e0,#06,#e0,#06,#e0,#06,#ba
	db #04,#ba,#04,#e0,#06,#ba,#04,#ba
	db #01,#de,#06,#de,#06,#de,#06,#ba
	db #04,#de,#06,#de,#06,#ba,#01,#de
	db #06,#ba,#01,#ba,#01,#de,#06,#ba
	db #04,#de,#06,#de,#06,#de,#06,#ba
	db #01,#d9,#06,#d9,#06,#d9,#06,#ba
	db #04,#d9,#06,#ba,#01,#ba,#01,#ba
	db #01,#d9,#06,#d9,#06,#d9,#06,#ba
	db #04,#ba,#04,#ba,#04,#ba,#04,#ff
	db #ba,#11,#e0,#06,#e0,#06,#e0,#06
	db #ba,#04,#e0,#06,#e0,#06,#ba,#01
	db #e0,#06,#ba,#01,#ba,#01,#e0,#06
	db #ba,#04,#e0,#06,#e0,#06,#e0,#06
	db #ba,#01,#e0,#06,#e0,#06,#e0,#06
	db #ba,#04,#e0,#06,#ba,#01,#ba,#01
	db #ba,#01,#e0,#06,#e0,#06,#e0,#06
	db #ba,#04,#ba,#04,#e0,#06,#ba,#04
	db #ba,#01,#de,#06,#de,#06,#de,#06
	db #ba,#04,#de,#06,#de,#06,#ba,#01
	db #de,#06,#ba,#01,#ba,#01,#de,#06
	db #ba,#04,#de,#06,#de,#06,#de,#06
	db #ba,#01,#d9,#06,#d9,#06,#d9,#06
	db #ba,#04,#d9,#06,#ba,#01,#ba,#01
	db #ba,#01,#d9,#06,#d9,#06,#d9,#06
	db #ba,#04,#ba,#04,#ba,#04,#ba,#04
	db #ff
;
.music_info
	db "Disc Mac Challenge Issue 20 - Invitation (1996)(Hypnomega)()",0
	db "ST-Module",0

	read "music_end.asm"
