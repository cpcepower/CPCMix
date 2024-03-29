; Music of Meeting Carpentras NPS - Part 2 (1994)(Crack'n'Rom)()(ST-Module)
; Ripped by Megachur the 23/08/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MEETCNP2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #890e

	read "music_header.asm"

	call l893d
	ld hl,la600
	ld de,l892a
	ld bc,#0081
	call #bcd7
	xor a
	ld (#a604),a
	ld a,#84
	ld (#a605),a
	ret
	jp l89a9
.l892a
	push ix
	call l89c5
	pop ix
	ret
	jp l893d
	jp l89c5
	jp l89a9
	db #66,#04
;
.init_music
.l893d
;
	ld b,#03
	ld ix,l8d0c
	ld iy,l8c38
	ld de,#001c
.l894a
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
	djnz l894a
	ld a,#06
	ld (l89ed),a
	ld a,d
	ld (l8a01),a
	inc a
	ld (l89e8),a
	ld a,#38
	ld (l89f2),a
	ld a,#ff
	ld (l8c34),a
	ld (l8c35),a
	ld (l8c36),a
	ld (l8c37),a
	ld a,#0c
	ld c,d
	call l8c16
	ld a,#0d
	ld c,d
	jp l8c16
;
.stop_music
.l89a9
;
	ld a,#07
	ld c,#3f
	call l8c16
	ld a,#08
	ld c,#00
	call l8c16
	ld a,#09
	ld c,#00
	call l8c16
	ld a,#0a
	ld c,#00
	jp l8c16
;
.play_music
.l89c5
;
	ld hl,l89e8
	dec (hl)
	ld ix,l8d0c
	ld bc,l8d1a
	call l8a7b
	ld ix,l8d28
	ld bc,l8d36
	call l8a7b
	ld ix,l8d44
	ld bc,l8d52
	call l8a7b
.l89e8 equ $ + 1
	ld a,#02
	or a
	jr nz,l89f1
.l89ed equ $ + 1
	ld a,#06
	ld (l89e8),a
.l89f2 equ $ + 1
.l89f1
	ld a,#38
	ld hl,l8c35
	cp (hl)
	jr z,l8a00
	ld (hl),a
	ld c,a
	ld a,#07
	call l8c16
.l8a01 equ $ + 1
.l8a00
	ld a,#00
	ld hl,l8c34
	cp (hl)
	jr z,l8a0f
	ld (hl),a
	ld c,a
	ld a,#06
	call l8c16
.l8a10 equ $ + 1
.l8a0f
	ld a,#00
	ld hl,l8c36
	cp (hl)
	jr z,l8a1e
	ld (hl),a
	ld c,a
	ld a,#0b
	call l8c16
.l8a1f equ $ + 1
.l8a1e
	ld a,#00
	ld hl,l8c37
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l8c16
.l8a2c
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l8b2c
.l8a3b
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
	jp l8c16
.l8a55
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l8a6a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l8a6a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l8a8e
.l8a7b
	ld a,(l89e8)
	or a
	jp nz,l8b2c
	dec (ix+#06)
	jp nz,l8b2c
	ld l,(ix+#00)
	ld h,(ix+#01)
.l8a8e
	ld a,(hl)
	or a
	jr z,l8a2c
	cp #fe
	jr z,l8a3b
	cp #ff
	jr z,l8a55
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l8c3e
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l8aca
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l8aca
	and #7f
	ld (ix+#06),a
	jr l8b1d
.l8aca
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l8ade
	ld (ix+#05),a
	ld (ix+#0a),d
.l8ade
	add a
	add a
	add a
	ld e,a
	ld hl,l8d74
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
	jr z,l8b1d
	cp #f0
	jp z,l8bd2
	cp #d0
	jp z,l8bee
	cp #b0
	jp z,l8bf6
	cp #80
	jp nc,l8bfe
	cp #10
	jr nz,l8b1d
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l8b1d
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l8b2c
	ld a,(ix+#17)
	or a
	jr nz,l8b40
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l8b40
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l8b6b
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l8c3e
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l8b6b
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
	call l8c16
	ld c,h
	ld a,(ix+#03)
	call l8c16
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l8ba9
	and #0f
	sub (ix+#0a)
	jr nc,l8b9f
	xor a
.l8b9f
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l8c16
.l8ba9
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
	jr z,l8bc6
	ld b,a
	ld a,c
	ld (l8a01),a
	ld a,b
	sub #40
.l8bc6
	ld (l8bcd),a
	ld a,(l89f2)
.l8bcd equ $ + 1
	set 4,a
	ld (l89f2),a
	ret
.l8bd2
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l8df4
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l8b1d
.l8bee
	inc hl
	ld a,(hl)
	ld (l89ed),a
	jp l8b1d
.l8bf6
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l8b1d
.l8bfe
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l8a1f),a
	inc hl
	ld a,(hl)
	ld (l8a10),a
	jp l8b1d
.l8c16
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
.l8c37 equ $ + 3
.l8c36 equ $ + 2
.l8c35 equ $ + 1
.l8c34
	db #00,#38,#00,#00
.l8c38
	db #f4,#90,#15,#91,#36,#91
.l8c3e
	db #ee,#0e,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
	db #0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8d0c equ $ + 4
	db #00,#00,#00,#00,#59,#91,#00,#01
	db #08,#10,#34,#30,#00,#00,#00,#df
.l8d1a equ $ + 2
	db #f7,#90,#14,#8e,#54,#8e,#74,#8e
	db #00,#00,#03,#00,#9f,#00,#b4,#00
.l8d28
	db #d6,#91,#02,#03,#09,#08,#02,#1f
.l8d36 equ $ + 6
	db #00,#00,#00,#e7,#18,#91,#14,#8f
	db #d4,#8f,#74,#8f,#00,#00,#05,#1b
.l8d44 equ $ + 4
	db #7e,#02,#d4,#90,#91,#92,#04,#05
	db #0a,#10,#30,#43,#00,#00,#00,#ef
.l8d52 equ $ + 2
	db #39,#91,#14,#8f,#94,#8f,#b4,#8f
	db #00,#00,#03,#00,#50,#00,#d4,#00
	db #fe,#00,#00,#00,#00,#81,#2a,#89
	db #ff,#00,#53,#54,#2d,#4d,#6f,#64
.l8d74 equ $ + 4
	db #75,#6c,#65,#2e,#14,#8e,#54,#8e
	db #74,#8e,#00,#00,#94,#8e,#d4,#8e
	db #f4,#8e,#00,#00,#0e,#88,#0e,#88
	db #0e,#88,#00,#00,#0e,#88,#0e,#88
	db #0e,#88,#00,#00,#0e,#88,#0e,#88
	db #0e,#88,#00,#00,#0e,#88,#0e,#88
	db #0e,#88,#00,#00,#14,#8f,#54,#8f
	db #74,#8f,#00,#00,#14,#8f,#94,#8f
	db #b4,#8f,#00,#00,#14,#8f,#d4,#8f
	db #74,#8f,#00,#00,#f4,#8f,#34,#90
	db #74,#8f,#08,#18,#54,#90,#94,#90
	db #74,#8f,#18,#08,#0e,#88,#0e,#88
	db #0e,#88,#00,#00,#0e,#88,#0e,#88
	db #0e,#88,#00,#00,#0e,#88,#0e,#88
	db #0e,#88,#00,#00,#0e,#88,#0e,#88
	db #0e,#88,#00,#00,#0e,#88,#0e,#88
.l8df4 equ $ + 4
	db #0e,#88,#00,#00,#0e,#88,#b4,#90
	db #0e,#88,#0e,#88,#d4,#90,#0e,#88
	db #0e,#88,#0e,#88,#0e,#88,#0e,#88
	db #0e,#88,#0e,#88,#0e,#88,#0e,#88
	db #0e,#88,#0e,#88,#80,#00,#00,#01
	db #80,#01,#00,#02,#80,#02,#00,#03
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0a,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#06
	db #06,#06,#06,#06,#06,#05,#04,#03
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#04,#86,#87,#89
	db #8c,#91,#97,#9d,#95,#90,#8c,#89
	db #86,#85,#84,#84,#83,#83,#83,#82
	db #82,#82,#81,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#0e,#0f,#0e
	db #0d,#0c,#0b,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0d,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#09,#08
	db #08,#08,#07,#07,#07,#06,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#01
	db #00,#00,#00,#00,#00,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0d
	db #0c,#0b,#0b,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0d,#0c,#8b
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#fe,#ff
	db #fd,#ff,#fc,#ff,#fb,#ff,#fa,#ff
	db #f9,#ff,#f8,#ff,#f6,#ff,#f7,#ff
	db #f7,#ff,#f7,#ff,#f8,#ff,#f7,#ff
	db #f7,#ff,#f7,#ff,#09,#0b,#0d,#0c
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#57,#91,#00
	db #5a,#91,#00,#5a,#91,#00,#5a,#91
	db #00,#5a,#91,#00,#5a,#91,#00,#5a
	db #91,#00,#5a,#91,#00,#5a,#91,#00
	db #5a,#91,#80,#f7,#90,#00,#c6,#91
	db #00,#09,#92,#00,#4c,#92,#00,#09
	db #92,#00,#09,#92,#00,#09,#92,#00
	db #09,#92,#00,#4c,#92,#00,#09,#92
	db #00,#09,#92,#80,#18,#91,#00,#8f
	db #92,#00,#99,#92,#00,#e1,#92,#00
	db #99,#92,#00,#29,#93,#00,#99,#92
	db #00,#02,#93,#00,#e1,#92,#00,#99
	db #92,#00,#99,#92,#80,#39,#91,#fe
	db #40,#ff,#3a,#02,#00,#52,#02,#f6
	db #01,#37,#02,#11,#52,#02,#f6,#01
	db #3a,#02,#00,#4d,#02,#06,#37,#02
	db #11,#4d,#02,#f6,#01,#3a,#02,#00
	db #4b,#02,#06,#37,#02,#11,#4b,#02
	db #f6,#01,#3a,#02,#00,#4d,#02,#06
	db #37,#02,#11,#4d,#02,#f6,#01,#3a
	db #02,#00,#52,#02,#06,#37,#02,#11
	db #52,#02,#f6,#01,#3a,#02,#00,#4d
	db #02,#06,#37,#02,#11,#4d,#02,#f6
	db #01,#3a,#02,#00,#4b,#02,#06,#37
	db #02,#11,#4b,#02,#f6,#01,#ba,#00
	db #4d,#02,#06,#cd,#06,#b7,#11,#cd
	db #f6,#01,#4d,#02,#06,#ff,#2e,#03
	db #f8,#04,#ae,#08,#2e,#82,#2e,#82
	db #29,#83,#a9,#08,#29,#82,#29,#82
	db #27,#83,#a7,#08,#27,#82,#27,#82
	db #29,#83,#a9,#08,#29,#82,#29,#82
	db #2e,#83,#ae,#08,#2e,#82,#2e,#82
	db #29,#83,#a9,#08,#29,#82,#29,#82
	db #27,#83,#a7,#08,#27,#82,#27,#82
	db #29,#83,#a9,#08,#29,#82,#29,#82
	db #ff,#2e,#03,#f8,#04,#ae,#08,#2e
	db #82,#2e,#82,#29,#83,#a9,#08,#29
	db #82,#29,#82,#27,#83,#a7,#08,#27
	db #82,#27,#82,#29,#83,#a9,#08,#29
	db #82,#29,#82,#2e,#83,#ae,#08,#2e
	db #82,#2e,#82,#29,#83,#a9,#08,#29
	db #82,#29,#82,#27,#83,#a7,#08,#27
	db #82,#27,#82,#29,#83,#a9,#08,#29
	db #82,#29,#82,#ff,#2e,#03,#f8,#04
	db #ae,#08,#2e,#82,#2e,#82,#29,#83
	db #a9,#08,#29,#82,#29,#82,#27,#83
	db #a7,#08,#27,#82,#27,#82,#29,#83
	db #a9,#08,#29,#82,#29,#82,#2e,#83
	db #ae,#08,#2e,#82,#2e,#82,#29,#83
	db #a9,#08,#29,#82,#29,#82,#27,#83
	db #a7,#08,#27,#82,#27,#82,#29,#83
	db #a9,#08,#29,#82,#29,#82,#ff,#fe
	db #3c,#c6,#f7,#04,#ca,#07,#4b,#82
	db #ff,#4d,#02,#f7,#04,#4d,#02,#07
	db #4d,#82,#ca,#07,#48,#83,#48,#82
	db #48,#82,#ca,#07,#c8,#07,#46,#82
	db #46,#82,#46,#82,#43,#82,#cb,#07
	db #4b,#83,#4a,#82,#48,#82,#4d,#82
	db #4d,#82,#4d,#82,#ca,#07,#48,#83
	db #48,#82,#48,#82,#ca,#07,#c8,#07
	db #46,#82,#46,#82,#46,#82,#43,#82
	db #cb,#07,#4d,#83,#4f,#82,#4d,#82
	db #ff,#46,#08,#19,#41,#08,#09,#46
	db #04,#0a,#48,#02,#09,#4a,#84,#48
	db #82,#4d,#84,#52,#88,#4d,#88,#52
	db #84,#4f,#82,#4d,#84,#4f,#82,#4d
	db #84,#ff,#3e,#0a,#19,#3c,#02,#09
	db #3a,#82,#ba,#09,#3a,#87,#3a,#82
	db #3c,#04,#0a,#41,#04,#09,#3e,#8a
	db #3c,#82,#3a,#82,#ba,#09,#3a,#89
	db #46,#84,#c3,#09,#41,#82,#c3,#09
	db #ff,#c6,#b6,#05,#ca,#06,#cd,#b6
	db #03,#d2,#06,#d6,#b6,#01,#d2,#06
	db #cd,#b6,#00,#ca,#06,#c6,#b6,#01
	db #ca,#06,#cd,#b6,#02,#d2,#06,#d6
	db #b6,#03,#d2,#06,#4d,#02,#b6,#04
	db #c3,#b6,#05,#c6,#06,#cb,#b6,#03
	db #cf,#06,#d2,#b6,#01,#cf,#06,#cb
	db #b6,#00,#c6,#06,#c3,#b6,#01,#c6
	db #06,#cb,#b6,#02,#cf,#06,#d2,#b6
	db #03,#cf,#06,#4b,#02,#b6,#04,#c1
	db #b6,#05,#c6,#06,#ca,#b6,#03,#cd
	db #06,#d2,#b6,#01,#cd,#06,#ca,#b6
	db #00,#c6,#06,#c1,#b6,#01,#c6,#06
	db #ca,#b6,#02,#cd,#06,#d2,#b6,#03
	db #cd,#06,#4a,#02,#b6,#04,#bf,#b6
	db #05,#c3,#06,#c6,#b6,#03,#cb,#06
	db #cf,#b6,#01,#cb,#06,#c6,#b6,#00
	db #c3,#06,#bf,#b6,#01,#c3,#06,#c6
	db #b6,#02,#cb,#06,#cf,#b6,#03,#cb
	db #06,#46,#02,#b6,#04,#ff
; #a600
.la600
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.music_info
	db "Meeting Carpentras NPS - Part 2 (1994)(Crack'n'Rom)()",0
	db "ST-Module",0

	read "music_end.asm"
