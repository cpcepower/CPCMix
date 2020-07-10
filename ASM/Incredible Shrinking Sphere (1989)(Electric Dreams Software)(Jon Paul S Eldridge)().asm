; Music of Incredible Shrinking Sphere (1989)(Electric Dreams Software)(Jon Paul S Eldridge)()
; Ripped by Megachur the 18/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "INCREISS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #9abe
FIRST_THEME				equ 1
LAST_THEME				equ 3

	read "music_header.asm"

;
.real_init_music	; a=0 then a=1,2,3
;
	cp #00
	jr z,l9b22
	dec a
	add a
	add a
	add a
	ld c,a
	ld b,#00
	ld iy,la194
	add iy,bc
	ld a,(iy+#00)
	ld (l9b8a),a
	ld a,(iy+#01)
	ld (l9f9c),a
	ld l,(iy+#02)
	ld h,(iy+#03)
	ld ix,l9fa4
	call l9b03
	ld l,(iy+#04)
	ld h,(iy+#05)
	ld ix,l9fc6
	call l9b03
	ld l,(iy+#06)
	ld h,(iy+#07)
	ld ix,l9fe8
	call l9b03
	ret
.l9b03
	set 7,(ix+#1e)
	ld (ix+#08),l
	ld (ix+#09),h
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	inc hl
	ld (ix+#06),l
	ld (ix+#07),h
	ld (ix+#03),#01
	ret
;
.stop_music     		; needed to stop before init !!!
.l9b22
;
	xor a
	ld ix,l9fa4
	ld (ix+#1e),a
	ld (ix+#40),a
	ld (ix+#62),a
	set 7,(ix+#1f)
	set 7,(ix+#41)
	set 7,(ix+#63)
	set 7,(ix+#20)
	set 7,(ix+#42)
	set 7,(ix+#64)
	ld bc,#f6c0
	out (c),c
	ld bc,#f407
	out (c),c
	ld bc,#f680
	out (c),c
	ld bc,#f43f
	out (c),c
	ld d,#08
	ld a,#03
.l9b60
	ld bc,#f6c0
	out (c),c
	ld b,#f4
	out (c),d
	inc d
	ld bc,#f680
	out (c),c
	ld bc,#f400
	out (c),c
	dec a
	jr nz,l9b60
	ld bc,#f600
	out (c),c
	ret
;
.play_music
;
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld a,(l9f9e)
	inc a
.l9b8a equ $ + 1
	cp #06
	jr z,l9b8e
	xor a
.l9b8e
	ld (l9f9e),a
	jr nz,l9bc9
	ld ix,l9fa4
	call l9bd2
	ld ix,l9fc6
	call l9bd2
	ld ix,l9fe8
	call l9bd2
	ld ix,l9fa4
	bit 7,(ix+#1e)
	call nz,l9be3
	ld ix,l9fc6
	bit 7,(ix+#1e)
	call nz,l9be3
	ld ix,l9fe8
	bit 7,(ix+#1e)
	call nz,l9be3
.l9bc9
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l9bd2
	bit 7,(ix+#1e)
	jr nz,l9bdd
	bit 7,(ix+#1f)
	ret nz
.l9bdd
	call l9e2b
	jp l9eab
.l9be3
	dec (ix+#03)
	ret nz
	xor a
	ld (l9f9d),a
.l9beb
	ld l,(ix+#04)
	ld h,(ix+#05)
	ld c,(hl)
	bit 7,c
	jr z,l9c48
	ld l,(ix+#06)
	ld h,(ix+#07)
.l9bfc
	inc hl
	inc hl
	ld (ix+#06),l
	ld (ix+#07),h
	dec hl
	ld a,(hl)
	dec hl
	cp #ff
	jr z,l9c16
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	jr l9beb
.l9c16
	ld l,(ix+#08)
	ld (ix+#06),l
	ld h,(ix+#09)
	ld (ix+#07),h
	ld a,(l9f9c)
	bit 7,a
	jr nz,l9bfc
	res 7,(ix+#1e)
	ld bc,#f6c0
	out (c),c
	ld b,#f4
	ld c,(ix+#00)
	out (c),c
	ld bc,#f680
	out (c),c
	ld bc,#f400
	out (c),c
	ld b,#f6
	out (c),c
	ret
.l9c48
	ld a,#66
	cp c
	jp z,l9ce8
	ld a,#64
	cp c
	jp z,l9dc4
	bit 7,(ix+#1f)
	jr z,l9c5e
	inc a
	cp c
	jr nz,l9c89
.l9c5e
	inc hl
	ld c,(hl)
	ld (ix+#03),c
	inc hl
	ld (ix+#04),l
	ld (ix+#05),h
	ret
.l9c6b
	inc hl
	ld a,(hl)
	ld (ix+#20),a
	inc hl
	ld (ix+#04),l
	ld (ix+#05),h
	jp l9beb
.l9c7a
	inc hl
	ld a,(hl)
	ld (ix+#21),a
	inc hl
	ld (ix+#04),l
	ld (ix+#05),h
	jp l9beb
.l9c89
	bit 6,(ix+#1e)
	call nz,l9d32
	rlc c
	ld b,#00
	ld iy,la00a
	add iy,bc
	ld e,(iy+#00)
	ld (ix+#14),e
	ld d,(iy+#01)
	ld (ix+#15),d
	call l9ed7
	inc hl
	ld c,(hl)
	ld (ix+#03),c
	inc hl
	ld (ix+#04),l
	ld (ix+#05),h
	ld a,(l9f9d)
	cp #01
	ret z
.l9cbb
	ld a,#01
	ld (ix+#0b),a
	ld (ix+#0d),a
	ld (ix+#0e),a
	ld l,(ix+#11)
	ld h,(ix+#12)
	ld (ix+#0f),l
	ld (ix+#10),h
	ld a,(ix+#13)
	ld (ix+#0a),a
	ld l,(ix+#1a)
	ld h,(ix+#1b)
	ld (ix+#1c),l
	ld (ix+#1d),h
	ld a,(hl)
	jp l9f1d
.l9ce8
	bit 7,(ix+#1f)
	jp z,l9c7a
	inc hl
	ld a,(hl)
	ld bc,#f6c0
	out (c),c
	ld bc,#f406
	out (c),c
	ld (ix+#21),a
	ld bc,#f680
	out (c),c
	ld b,#f4
	out (c),a
	inc hl
	ld (ix+#04),l
	ld (ix+#05),h
	ld d,#38
	cp #00
	jr z,l9d17
	ld d,(ix+#02)
.l9d17
	ld bc,#f6c0
	out (c),c
	ld bc,#f407
	out (c),c
	ld bc,#f680
	out (c),c
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	jp l9beb
.l9d32
	res 6,(ix+#1e)
	ld e,(ix+#20)
	ld a,(ix+#21)
.l9d3c
	push bc
	push hl
	ld bc,#f6c0
	out (c),c
	ld bc,#f406
	out (c),c
	ld bc,#f680
	out (c),c
	ld b,#f4
	out (c),a
	ld d,#38
	cp #00
	jr z,l9d5a
	ld d,(ix+#02)
.l9d5a
	ld bc,#f6c0
	out (c),c
	ld bc,#f407
	out (c),c
	ld bc,#f680
	out (c),c
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld b,#00
	ld c,e
	sla c
	sla c
	rl b
	ld iy,la104
	add iy,bc
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#0a),a
	ld (ix+#13),a
	inc hl
	ld (ix+#0f),l
	ld (ix+#10),h
	ld (ix+#11),l
	ld (ix+#12),h
	ld l,(iy+#02)
	ld h,(iy+#03)
	ld (ix+#1a),l
	ld (ix+#1b),h
	ld (ix+#1c),l
	ld (ix+#1d),h
	ld a,#01
	ld (ix+#0b),a
	ld (ix+#0d),a
	ld (ix+#0e),a
	ld (ix+#16),a
	ld (ix+#18),a
	ld (ix+#19),a
	pop hl
	pop bc
	ret
.l9dc4
	bit 7,(ix+#1f)
	jp z,l9c6b
	inc hl
	ld b,#00
	ld c,(hl)
	ld (ix+#20),c
	sla c
	sla c
	rl b
	inc hl
	ld (ix+#04),l
	ld (ix+#05),h
	ld iy,la104
	add iy,bc
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#0a),a
	ld (ix+#13),a
	inc hl
	ld (ix+#0f),l
	ld (ix+#10),h
	ld (ix+#11),l
	ld (ix+#12),h
	ld l,(iy+#02)
	ld h,(iy+#03)
	ld (ix+#1a),l
	ld (ix+#1b),h
	ld (ix+#1c),l
	ld (ix+#1d),h
	ld a,#01
	ld (ix+#0b),a
	ld (ix+#0d),a
	ld (ix+#0e),a
	ld (ix+#16),a
	ld (ix+#18),a
	ld (ix+#19),a
	ld (l9f9d),a
	jp l9beb
.l9e2b
	bit 7,(ix+#0e)
	ret nz
	dec (ix+#0e)
	ret nz
	ld a,(ix+#0d)
	ld (ix+#0e),a
	ld a,(ix+#0a)
	ld bc,#f6c0
	out (c),c
	ld b,#f4
	ld c,(ix+#00)
	out (c),c
	ld bc,#f680
	out (c),c
	ld b,#f4
	out (c),a
	ld bc,#f600
	out (c),c
	add (ix+#0c)
	ld (ix+#0a),a
	dec (ix+#0b)
	bit 7,(ix+#0b)
	ret z
	ld l,(ix+#0f)
	ld h,(ix+#10)
	ld a,(hl)
	bit 7,a
	jr z,l9e92
	bit 0,a
	jp nz,l9cbb
	set 7,(ix+#0e)
	set 7,(ix+#1f)
	bit 6,(ix+#1e)
	jr nz,l9e8d
	bit 7,(ix+#1f)
	ret nz
	set 7,(ix+#1f)
	ret
.l9e8d
	set 7,(ix+#1e)
	ret
.l9e92
	inc a
	ld (ix+#0b),a
	inc hl
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	ld (ix+#0e),a
	inc hl
	ld (ix+#0f),l
	ld (ix+#10),h
	ret
.l9eab
	bit 7,(ix+#19)
	ret nz
	dec (ix+#19)
	ret nz
	ld a,(ix+#18)
	ld (ix+#19),a
	dec (ix+#16)
	jr z,l9f05
	ld l,(ix+#14)
	ld h,(ix+#15)
	ld b,#00
	ld c,(ix+#17)
	bit 7,c
	jr z,l9ecf
	dec b
.l9ecf
	add hl,bc
	ld (ix+#14),l
	ld (ix+#15),h
	ex de,hl
.l9ed7
	ld bc,#f6c0
	out (c),c
	ld b,#f4
	ld a,(ix+#01)
	out (c),a
	ld bc,#f680
	out (c),c
	ld b,#f4
	out (c),e
	ld bc,#f6c0
	out (c),c
	ld b,#f4
	inc a
	out (c),a
	ld bc,#f680
	out (c),c
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ret
.l9f05
	ld l,(ix+#1c)
	ld h,(ix+#1d)
	ld a,(hl)
	bit 7,a
	jr z,l9f1d
	ld l,(ix+#1a)
	ld h,(ix+#1b)
	ld (ix+#1c),l
	ld (ix+#1d),h
	ld a,(hl)
.l9f1d
	inc a
	ld (ix+#16),a
	inc hl
	ld a,(hl)
	ld (ix+#17),a
	inc hl
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#19),a
	inc hl
	ld (ix+#1c),l
	ld (ix+#1d),h
	ret
	cp #00
	jp z,l9b22
	dec a
	add a
	add a
	ld b,#00
	ld c,a
	ld iy,la528
	add iy,bc
.l9f47
	ld hl,l9fa1
	ld b,#00
	ld c,(iy+#03)
	res 7,c
	add hl,bc
	ld c,(hl)
	ld ix,l9fa4
	add ix,bc
	bit 7,(ix+#1e)
	jr z,l9f63
	set 6,(ix+#1e)
.l9f63
	ld (ix+#1f),b
	ld e,(iy+#02)
	ld a,(iy+#00)
	ld c,(iy+#01)
	rlc c
	push iy
	call l9d3c
	ld iy,la00a
	add iy,bc
	ld e,(iy+#00)
	ld (ix+#14),e
	ld d,(iy+#01)
	ld (ix+#15),d
	call l9ed7
	pop iy
	bit 7,(iy+#03)
	ret z
	inc iy
	inc iy
	inc iy
	inc iy
	jr l9f47
.l9fa1 equ $ + 5
.l9f9e equ $ + 2
.l9f9d equ $ + 1
.l9f9c
	db #00,#00,#00,#00,#00,#00,#22,#44
.l9fa4
	db #08,#00,#30,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9fc6 equ $ + 2
	db #00,#00,#09,#02,#28,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9fe8 equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#18,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.la00a
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
	dw #0000
;org #a0cc
;db "*** (C) 1988 DIGITAL HARMONICS - JON PAUL S ELDRIDGE ***"
	db #2a,#2a,#2a,#20,#28,#43,#29,#20
	db #31,#39,#38,#38,#20,#44,#49,#47
	db #49,#54,#41,#4c,#20,#48,#41,#52
	db #4d,#4f,#4e,#49,#43,#53,#20,#2d
	db #20,#4a,#4f,#4e,#20,#50,#41,#55
	db #4c,#20,#53,#20,#45,#4c,#44,#52
	db #49,#44,#47,#45,#20,#2a,#2a,#2a
.la104
	dw la128,la12d,la131,la136
	dw la13d,la145,la14f,la154
	dw la15b,la160,la167,la16c
	dw la173,la178,la17f,la184
	dw la188,la18d
.la12d equ $ + 5
.la128
	db #00,#7f,#00,#7f,#80,#01,#00,#01
.la136 equ $ + 6
.la131 equ $ + 1
	db #ff,#0d,#0d,#ff,#03,#80,#01,#01
.la13d equ $ + 5
	db #01,#01,#ff,#01,#ff,#0f,#04,#ff
.la145 equ $ + 5
	db #06,#0b,#ff,#0e,#80,#01,#ff,#01
.la14f equ $ + 7
	db #02,#01,#01,#01,#ff,#01,#ff,#0f
.la154 equ $ + 4
	db #0f,#ff,#1a,#80,#02,#01,#01,#02
.la15b equ $ + 3
	db #ff,#01,#ff,#0f,#0f,#ff,#03,#80
.la167 equ $ + 7
.la160
	db #02,#01,#01,#02,#ff,#01,#ff,#0f
.la16c equ $ + 4
	db #0f,#ff,#08,#80,#04,#f8,#01,#01
.la173 equ $ + 3
	db #20,#01,#ff,#0f,#0f,#ff,#08,#80
.la17f equ $ + 7
.la178
	db #03,#fa,#01,#03,#06,#01,#ff,#0f
.la184 equ $ + 4
	db #0f,#ff,#02,#80,#01,#0c,#01,#ff
.la18d equ $ + 5
.la188
	db #0f,#0f,#ff,#06,#80,#05,#04,#01
	db #05,#fc,#01,#ff
.la194
	db #06,#ff
	dw la1ac,la204,la23e
	db #06,#00
	dw la250,la254,la258
	db #06,#00
	dw la25c,la260,la264
.la1ac
	dw la2ee,la2ee,la2ee,la2ee
	dw la2ee,la357,la357,la357
	dw la357,la490,la490,la490
	dw la490,la507,la507,la507
	dw la507,la490,la490,la490
	dw la490,la507,la507,la507
	dw la507,la4cd,la4cd,la4ea
	dw la4ea,la357,la357,la490
	dw la490,la507,la507,la507
	dw la507,la4cd,la4cd,la4ea
	dw la4ea,la357,la357,#ffff
.la204
	dw la323,la394,la394,la394
	dw la394,la3df,la3df,la3df
	dw la3df,la394,la3ca,la3ca
	dw la3df,la3df,la3df,la3df
	dw la3b9,la3ca,la394,la3ca
	dw la3ca,la3df,la3df,la3df
	dw la3df,la3b9,la3ca,la394
	dw #ffff
.la23e
	dw la334,la3e8,la3e8,la40b
	dw la40b,la44e,la467,la467
	dw #ffff
.la250
	dw la268,#ffff
.la254
	dw la27d,#ffff
.la258
	dw la292,#ffff
.la25c
	dw la2a9,#ffff
.la260
	dw la2c0,#ffff
.la264
	dw la2d7,#ffff
.la268
	db #64,#02,#66,#00,#3c,#10,#3c,#08
	db #3b,#18,#39,#10,#3e,#18,#3c,#18
.la27d equ $ + 5
	db #3b,#10,#39,#80,#ff,#64,#02,#66
	db #00,#40,#10,#40,#08,#3e,#18,#3c
	db #10,#41,#18,#40,#18,#3e,#10,#3c
.la292 equ $ + 2
	db #80,#ff,#64,#02,#66,#00,#29,#10
	db #29,#10,#29,#10,#29,#10,#2b,#10
	db #2b,#10,#2b,#10,#2b,#10,#2d,#80
.la2a9 equ $ + 1
	db #ff,#64,#02,#66,#00,#3c,#10,#3c
	db #08,#37,#08,#3c,#08,#3e,#10,#3c
	db #10,#40,#08,#43,#10,#48,#20,#ff
.la2c0
	db #64,#01,#66,#00,#30,#10,#30,#08
	db #2b,#08,#30,#08,#32,#10,#30,#10
.la2d7 equ $ + 7
	db #34,#08,#37,#10,#3c,#20,#ff,#64
	db #02,#66,#00,#34,#10,#34,#08,#2f
	db #08,#34,#08,#35,#10,#34,#10,#37
.la2ee equ $ + 6
	db #08,#3b,#10,#40,#20,#ff,#64,#01
	db #66,#00,#48,#05,#43,#05,#41,#06
	db #3c,#05,#41,#05,#43,#06,#48,#05
	db #43,#05,#41,#06,#3c,#05,#41,#05
	db #43,#06,#48,#05,#43,#05,#41,#06
	db #3c,#05,#41,#05,#43,#06,#48,#05
	db #43,#05,#41,#06,#3c,#05,#41,#05
.la323 equ $ + 3
	db #43,#06,#ff,#64,#02,#66,#00,#39
	db #80,#38,#80,#3e,#80,#64,#03,#39
.la334 equ $ + 4
	db #80,#3d,#80,#ff,#64,#02,#66,#00
	db #2d,#20,#2d,#20,#2d,#20,#2d,#20
	db #2c,#20,#2c,#20,#2c,#20,#2c,#20
	db #32,#20,#32,#20,#32,#20,#32,#20
.la357 equ $ + 7
	db #64,#03,#3c,#80,#39,#80,#ff,#64
	db #04,#66,#00,#18,#08,#18,#08,#66
	db #0f,#60,#08,#66,#00,#18,#04,#18
	db #04,#21,#08,#24,#08,#66,#01,#60
	db #08,#66,#00,#18,#04,#18,#04,#18
	db #08,#18,#08,#66,#0f,#60,#08,#66
	db #00,#18,#04,#18,#04,#21,#08,#24
	db #08,#66,#01,#60,#08,#66,#00,#18
.la394 equ $ + 4
	db #04,#18,#04,#ff,#64,#04,#66,#00
	db #2b,#10,#2b,#10,#2b,#10,#2b,#10
	db #2b,#10,#2b,#10,#2b,#10,#2b,#10
	db #2b,#10,#2b,#10,#2b,#10,#2b,#10
	db #2b,#10,#2b,#10,#2b,#10,#2b,#10
.la3b9 equ $ + 1
	db #ff,#2c,#10,#2c,#10,#2c,#10,#2c
	db #10,#2c,#10,#2c,#10,#2c,#10,#2c
.la3ca equ $ + 2
	db #10,#ff,#64,#04,#66,#00,#32,#10
	db #32,#10,#32,#10,#32,#10,#32,#10
.la3df equ $ + 7
	db #32,#10,#32,#10,#32,#10,#ff,#30
	db #10,#30,#10,#30,#10,#30,#10,#ff
.la3e8
	db #3f,#08,#3e,#08,#3f,#08,#3c,#08
	db #3f,#08,#3e,#08,#3f,#08,#3c,#08
	db #3f,#08,#3e,#08,#3f,#08,#3c,#08
	db #3f,#08,#3e,#08,#3f,#08,#3c,#48
.la40b equ $ + 3
	db #65,#40,#ff,#41,#04,#40,#04,#41
	db #04,#3e,#04,#41,#04,#40,#04,#41
	db #04,#3e,#04,#41,#04,#40,#04,#41
	db #04,#3e,#04,#41,#04,#40,#04,#41
	db #04,#3e,#04,#41,#04,#40,#04,#41
	db #04,#3e,#04,#41,#04,#40,#04,#41
	db #04,#3e,#04,#41,#04,#40,#04,#41
	db #04,#3e,#04,#41,#04,#40,#04,#41
.la44e equ $ + 6
	db #04,#3e,#44,#65,#40,#ff,#41,#20
	db #3c,#20,#3a,#20,#3c,#20,#39,#40
	db #39,#15,#37,#15,#35,#16,#37,#40
.la467 equ $ + 7
	db #65,#40,#65,#60,#60,#20,#ff,#3e
	db #15,#3c,#15,#3a,#16,#39,#20,#3a
	db #20,#65,#60,#44,#10,#45,#10,#3e
	db #40,#65,#40,#65,#40,#65,#40,#3c
	db #60,#3e,#20,#3f,#40,#65,#40,#65
	db #40,#3c,#40,#65,#60,#60,#20,#ff
.la490
	db #64,#04,#66,#00,#22,#08,#22,#08
	db #66,#0f,#60,#08,#66,#00,#22,#04
	db #22,#04,#1f,#08,#2e,#08,#66,#01
	db #60,#08,#66,#00,#22,#04,#22,#04
	db #22,#08,#22,#08,#66,#0f,#60,#08
	db #66,#00,#22,#04,#22,#04,#1f,#08
	db #2e,#08,#66,#01,#60,#08,#66,#00
.la4cd equ $ + 5
	db #22,#04,#22,#04,#ff,#1b,#08,#1b
	db #08,#66,#0f,#60,#08,#66,#00,#1b
	db #04,#1b,#04,#0c,#08,#27,#08,#66
	db #01,#60,#08,#66,#00,#1b,#04,#1b
.la4ea equ $ + 2
	db #04,#ff,#20,#08,#20,#08,#66,#0f
	db #60,#08,#66,#00,#20,#04,#20,#04
	db #1d,#08,#2c,#08,#66,#01,#60,#08
.la507 equ $ + 7
	db #66,#00,#20,#04,#20,#04,#ff,#64
	db #04,#66,#00,#1d,#08,#1d,#08,#66
	db #0f,#60,#08,#66,#00,#1d,#04,#1d
	db #04,#21,#08,#1d,#08,#66,#01,#60
	db #08,#66,#00,#1d,#04,#1d,#04,#ff
.la528
	db #01,#3c,#05,#81,#01,#40,#05,#02
	db #00,#48,#06,#04,#0f,#2d,#07,#04
	db #00,#30,#08,#81,#00,#28,#08,#02
	db #06,#39,#07,#04,#00,#49,#08,#81
	db #00,#52,#08,#02,#00,#34,#05,#01
	db #00,#01,#07,#01,#02,#47,#05,#10
	db #68,#06,#00,#00,#01,#07,#01,#02
	db #47
;
; #0046
; xor a
; call #9abe	; stop
; ld a,#01
; call #9abe	; init theme 1
;
.init_music		; added by Megachur
;
	push af
	xor a
	call real_init_music
	pop af
	jp real_init_music
;
.music_info
	db "Incredible Shrinking Sphere (1989)(Electric Dreams Software)(Jon Paul S Eldridge)",0
	db "*** (C) 1988 DIGITAL HARMONICS - JON PAUL S ELDRIDGE ***",0

	read "music_end.asm"
