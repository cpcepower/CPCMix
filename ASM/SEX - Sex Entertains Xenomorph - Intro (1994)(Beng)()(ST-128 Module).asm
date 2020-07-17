; Music of SEX - Sex Entertains Xenomorph - Intro (1994)(Beng)()(ST-128 Module)
; Ripped by Megachur the 28/02/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SEXENTXI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #6500

	read "music_header.asm"

	jr l6504
	jr l6513
.l6504
	call l6537
	ld hl,l6524
	ld de,l651c
	ld bc,#81ff
	jp #bcd7
.l6513
	ld hl,l6524
	call #bcdd
	jp l65af
.l651c
	push ix
	call l65cb
	pop ix
	ret
.l6524
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l6537
	jp l65cb
	jp l65af
;
.init_music
.l6537
;
	xor a
	ld hl,l6ae2
	call l65a8
	ld hl,l6b10
	call l65a8
	ld hl,l6b3e
	call l65a8
	ld ix,l6ade
	ld iy,l6b68
	ld de,#002e
	ld b,#03
.l6557
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
	djnz l6557
	ld hl,l69f7
	ld (hl),#06
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l69f3),hl
	ld (l69f5),hl
	ld a,#0c
	ld c,d
	call l69d3
	ld a,#0d
	ld c,d
	jp l69d3
.l65a8
	ld b,#2a
.l65aa
	ld (hl),a
	inc hl
	djnz l65aa
	ret
;
.stop_music
.l65af
;
	ld a,#07
	ld c,#3f
	call l69d3
	ld a,#08
	ld c,#00
	call l69d3
	ld a,#09
	ld c,#00
	call l69d3
	ld a,#0a
	ld c,#00
	jp l69d3
;
.play_music
.l65cb
;
	ld hl,l69f9
	dec (hl)
	ld ix,l6ade
	ld bc,l6aec
	call l666d
	ld ix,l6b0c
	ld bc,l6b1a
	call l666d
	ld ix,l6b3a
	ld bc,l6b48
	call l666d
	ld hl,l69f2
	ld de,l69f9
	ld b,#06
	call l664a
	ld b,#07
	call l664a
	ld b,#0b
	call l664a
	ld b,#0d
	call l664a
	ld de,l69f9
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l6afd
	call l6623
	ld hl,l6b2b
	call l6623
	ld hl,l6b59
.l6623
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
	jr nz,l6638
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l6638
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
.l664a
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l69d3
.l6655
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l69d3
.l666d
	ld a,(l69f9)
	or a
	jp nz,l6725
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l6725
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l6655
	or a
	jp z,l671a
	ld r,a
	and #7f
	cp #10
	jr c,l66f5
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l686d
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
	jr z,l66ce
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l66ce
	rrca
	ld c,a
	ld hl,l6b6e
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
	jr z,l66ed
	ld (ix+#1e),b
.l66ed
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l670e
.l66f5
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l69fe
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
	add a
.l670e
	ld a,d
	or a
	jr nz,l671c
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l671c
.l671a
	ld a,(hl)
	inc hl
.l671c
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l6725
	ld a,(ix+#17)
	or a
	jr nz,l673b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l673b
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l6751
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l6751
	ld a,(ix+#0d)
	or a
	jr z,l675f
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l677d
.l675f
	ld a,(ix+#1a)
	or a
	jp z,l6784
	ld c,a
	cp #03
	jr nz,l676c
	xor a
.l676c
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l677d
	ld a,(ix+#18)
	dec c
	jr z,l677d
	ld a,(ix+#19)
.l677d
	add (ix+#07)
	ld b,d
	call l686d
.l6784
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l67ac
	dec (ix+#1b)
	jr nz,l67ac
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l67e4
.l67ac
	ld a,(ix+#29)
	or a
	jr z,l67e4
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l67db
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l67d2
	ld (ix+#29),#ff
	jr l67db
.l67d2
	cp (ix+#2b)
	jr nz,l67db
	ld (ix+#29),#01
.l67db
	ld b,d
	or a
	jp p,l67e1
	dec b
.l67e1
	ld c,a
	jr l67ef
.l67e4
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l67ef
	pop hl
	bit 7,(ix+#14)
	jr z,l67f8
	ld h,d
	ld l,d
.l67f8
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l69d3
	ld c,h
	ld a,(ix+#02)
	call l69d3
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l684b
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l683a
	dec (ix+#09)
	jr nz,l683a
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l6832
	xor a
	jr l6837
.l6832
	cp #10
	jr nz,l6837
	dec a
.l6837
	ld (ix+#1e),a
.l683a
	ld a,b
	sub (ix+#1e)
	jr nc,l6841
	xor a
.l6841
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l69d3
.l684b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l69fa)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l6869
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l6869
	ld (l69fa),hl
	ret
.l686d
	ld hl,l6a1c
	cp #61
	jr nc,l6877
	add a
	ld c,a
	add hl,bc
.l6877
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l6881
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l69a6
	ld (ix+#1e),a
	jp l670e
.l6893
	dec b
.l6894
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l689f
	neg
.l689f
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
	jp l670e
.l68b5
	dec b
	jr l68b9
.l68b8
	inc b
.l68b9
	call l69a6
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l670e
.l68c8
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
	jp l698b
.l68d9
	ld a,(hl)
	inc hl
	or a
	jr z,l68fb
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
.l68fb
	ld (ix+#29),a
	jp l670e
.l6901
	dec hl
	ld a,(hl)
	and #0f
	ld (l69fd),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l69fc),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l670e
.l691b
	ld a,(hl)
	or a
	jr z,l692c
	call l69a8
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l670e
.l692c
	ld hl,#0101
	ld (l69f8),hl
	jp l670e
.l6935
	call l69a6
	ld (ix+#1e),a
	jp l670e
.l693e
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l69b7
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l69b7
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l670e
.l6960
	ld a,(hl)
	inc hl
	ld (l69f7),a
	jp l670e
.l6968
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
	jp l670e
.l6987
	call l69a6
	add a
.l698b
	ld b,#00
	ld c,a
	push hl
	ld hl,l6bee
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l670e
.l69a6
	ld a,(hl)
	inc hl
.l69a8
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
.l69b7
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l6b6e
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l69d3
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
.l69f2
	ret
.l69fa equ $ + 7
.l69f9 equ $ + 6
.l69f8 equ $ + 5
.l69f7 equ $ + 4
.l69f5 equ $ + 2
.l69f3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l69fd equ $ + 2
.l69fc equ $ + 1
	db #38,#00,#00
.l69fe
	dw l6881,l6894,l6893,l68b8
	dw l68b5,l68c8,l68d9,l6901
	dw l691b,l6901,l6935,l693e
	dw l6960,l6968,l6987
.l6a1c
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
.l6ae2 equ $ + 4
.l6ade
	db #08,#00,#01,#08,#00,#00,#00,#00
.l6aec equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6afd equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6b0c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l6b10 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l6b1a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6b2b equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6b3a equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l6b3e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6b48 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6b59 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l6b6e equ $ + 6
.l6b68
	dw l6e2e,l6e34,l6e3a,l6c0e
	dw l6c4e,l6c6e,#00c0,#2500
	dw #9260,#92a0,l6dc0,#2d48
	dw #49d2,#49d2,#24d2,l6c8e
	dw l6cce,l6cee,#0080,#2500
	dw #49d2,#49d2,#24d2,l6d0e
	dw l6d4e,l6d6e,#069a,#2500
	dw #49d2,#49d2,#24d2,l6d8e
	dw l6dce,l6dee,#0848,#2500
	dw #49d2,#49d2,#24d2,l6d0e
	dw l6e0e,l6dee,#0000
	db #00,#25,#d2,#49,#d2,#49,#d2,#24
	db #d2,#49,#d2,#49,#d2,#49,#d2,#24
	db #d2,#49,#d2,#49,#d2,#49,#d2,#24
	db #d2,#49,#d2,#49,#d2,#49,#d2,#24
	db #d2,#49,#00,#25,#65,#26,#3e,#01
	db #00,#25,#c3,#29,#65,#26,#00,#00
.l6bee
	db #00,#25,#00,#25,#00,#25,#00,#25
	db #00,#25,#00,#25,#00,#25,#00,#25
	db #00,#25,#00,#25,#00,#25,#00,#25
	db #00,#25,#00,#25,#00,#25,#00,#25
.l6c0e
	db #00,#00,#65,#01,#3e,#01,#00,#00
	db #c3,#04,#65,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6c4e
	db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6c6e
	db #06,#00,#00,#06,#07,#07,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6c8e
	db #90,#01,#e0,#01,#30,#02,#80,#02
	db #d0,#02,#20,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6cce
	db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6cee
	db #08,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6d0e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6d4e
	db #0d,#0b,#09,#07,#05,#03,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6d6e
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6d8e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
.l6dc0 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
.l6dce
	db #0f,#0e,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
.l6dee
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e0e
	db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#07,#07,#06
	db #05,#04,#03,#02,#01,#00,#00,#00
.l6e34 equ $ + 6
.l6e2e
	db #00,#40,#6e,#80,#2e,#6e,#00,#01
.l6e3a equ $ + 4
	db #6f,#80,#34,#6e,#00,#60,#6f,#80
	db #3a,#6e,#1c,#0b,#13,#24,#5b,#13
	db #31,#0b,#13,#1d,#3b,#13,#27,#0b
	db #13,#24,#5b,#13,#31,#0b,#13,#1d
	db #3b,#13,#1c,#0b,#13,#24,#5b,#13
	db #31,#0b,#13,#1c,#3b,#13,#27,#0b
	db #13,#24,#5b,#13,#1d,#0b,#13,#1d
	db #3b,#13,#1c,#0b,#13,#24,#5b,#13
	db #31,#0b,#13,#1d,#3b,#13,#27,#0b
	db #13,#24,#5b,#13,#31,#0b,#13,#1d
	db #3b,#13,#1c,#0b,#13,#24,#5b,#13
	db #31,#0b,#13,#29,#3b,#13,#27,#0b
	db #13,#24,#5b,#13,#1d,#0b,#13,#1d
	db #3b,#13,#1c,#0b,#13,#24,#5b,#13
	db #31,#0b,#13,#1d,#3b,#13,#27,#0b
	db #13,#24,#5b,#13,#31,#0b,#13,#1d
	db #3b,#13,#1c,#0b,#13,#24,#5b,#13
	db #31,#0b,#13,#1d,#3b,#13,#27,#0b
	db #13,#24,#5b,#13,#1d,#0b,#13,#1d
	db #3b,#13,#1c,#0b,#13,#24,#5b,#13
	db #31,#0b,#13,#1d,#3b,#13,#27,#0b
	db #13,#24,#5b,#13,#31,#0b,#13,#1d
	db #3b,#13,#1c,#0b,#13,#24,#5b,#13
	db #31,#0b,#13,#1d,#3b,#13,#31,#0b
	db #13,#31,#5b,#13,#31,#0b,#13,#31
	db #3b,#13,#ff,#29,#90,#02,#35,#90
	db #02,#29,#90,#02,#b5,#90,#b5,#90
	db #29,#90,#02,#35,#90,#02,#29,#90
	db #02,#b5,#90,#b5,#90,#30,#90,#02
	db #3c,#90,#02,#30,#90,#02,#bc,#90
	db #3c,#90,#05,#28,#90,#04,#2e,#90
	db #02,#3a,#90,#02,#2e,#90,#02,#ba
	db #90,#ba,#90,#2e,#90,#02,#3a,#90
	db #02,#2e,#90,#02,#ba,#90,#ba,#90
	db #2b,#90,#02,#37,#90,#02,#2b,#90
	db #02,#b7,#90,#37,#90,#02,#b7,#90
	db #3a,#90,#02,#37,#90,#02,#35,#90
	db #02,#ff,#b5,#70,#fe,#03,#c1,#70
	db #fe,#07,#b5,#70,#fe,#01,#b5,#70
	db #fe,#01,#bc,#70,#fe,#01,#bc,#70
	db #b7,#70,#fe,#02,#b5,#70,#bc,#70
	db #fe,#08,#b5,#70,#fe,#01,#b5,#70
	db #bc,#70,#fe,#01,#b5,#70,#fe,#01
	db #b5,#70,#bc,#70,#fe,#01,#bc,#70
	db #fe,#01,#b7,#70,#fe,#01,#bc,#70
	db #fe,#01,#b7,#70,#bc,#70,#fe,#01
	db #bc,#70,#b7,#70,#fe,#01,#b5,#70
	db #bc,#70,#fe,#04,#bf,#70,#bf,#70
	db #bf,#70,#bf,#70,#ff
;
.music_info
	db "SEX - Sex Entertains Xenomorph - Intro (1994)(Beng)()",0
	db "ST-128 Module",0

	read "music_end.asm"
