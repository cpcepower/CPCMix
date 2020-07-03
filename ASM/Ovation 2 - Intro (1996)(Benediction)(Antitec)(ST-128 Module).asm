; Music of Ovation 2 - Intro (1996)(Benediction)(Antitec)(ST-128 Module)
; Ripped by Megachur the 26/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OVATI2IN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #2ee0

	read "music_header.asm"

	jp l2ee9
	jp l2f7d
	jp l2f61
;
.init_music
.l2ee9
;
	xor a
	ld hl,l3494
	call l2f5a
	ld hl,l34c2
	call l2f5a
	ld hl,l34f0
	call l2f5a
	ld ix,l3490
	ld iy,l351a
	ld de,#002e
	ld b,#03
.l2f09
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
	djnz l2f09
	ld hl,l33a9
	ld (hl),#06
	inc hl
	ld (hl),#50
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l33a5),hl
	ld (l33a7),hl
	ld a,#0c
	ld c,d
	call l3385
	ld a,#0d
	ld c,d
	jp l3385
.l2f5a
	ld b,#2a
.l2f5c
	ld (hl),a
	inc hl
	djnz l2f5c
	ret
;
.stop_music
.l2f61
;
	ld a,#07
	ld c,#3f
	call l3385
	ld a,#08
	ld c,#00
	call l3385
	ld a,#09
	ld c,#00
	call l3385
	ld a,#0a
	ld c,#00
	jp l3385
;
.play_music
.l2f7d
;
	ld hl,l33ab
	dec (hl)
	ld ix,l3490
	ld bc,l349e
	call l301f
	ld ix,l34be
	ld bc,l34cc
	call l301f
	ld ix,l34ec
	ld bc,l34fa
	call l301f
	ld hl,l33a4
	ld de,l33ab
	ld b,#06
	call l2ffc
	ld b,#07
	call l2ffc
	ld b,#0b
	call l2ffc
	ld b,#0d
	call l2ffc
	ld de,l33ab
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#50
	ld hl,l34af
	call l2fd5
	ld hl,l34dd
	call l2fd5
	ld hl,l350b
.l2fd5
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
	jr nz,l2fea
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l2fea
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
.l2ffc
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l3385
.l3007
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l3385
.l301f
	ld a,(l33ab)
	or a
	jp nz,l30d7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l30d7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l3007
	or a
	jp z,l30cc
	ld r,a
	and #7f
	cp #10
	jr c,l30a7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l321f
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
	jr z,l3080
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l3080
	rrca
	ld c,a
	ld hl,l3520
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
	jr z,l309f
	ld (ix+#1e),b
.l309f
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l30c0
.l30a7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l33b0
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
.l30c0
	ld a,d
	or a
	jr nz,l30ce
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l30ce
.l30cc
	ld a,(hl)
	inc hl
.l30ce
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l30d7
	ld a,(ix+#17)
	or a
	jr nz,l30ed
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l30ed
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l3103
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l3103
	ld a,(ix+#0d)
	or a
	jr z,l3111
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l312f
.l3111
	ld a,(ix+#1a)
	or a
	jp z,l3136
	ld c,a
	cp #03
	jr nz,l311e
	xor a
.l311e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l312f
	ld a,(ix+#18)
	dec c
	jr z,l312f
	ld a,(ix+#19)
.l312f
	add (ix+#07)
	ld b,d
	call l321f
.l3136
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l315e
	dec (ix+#1b)
	jr nz,l315e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l3196
.l315e
	ld a,(ix+#29)
	or a
	jr z,l3196
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l318d
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l3184
	ld (ix+#29),#ff
	jr l318d
.l3184
	cp (ix+#2b)
	jr nz,l318d
	ld (ix+#29),#01
.l318d
	ld b,d
	or a
	jp p,l3193
	dec b
.l3193
	ld c,a
	jr l31a1
.l3196
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l31a1
	pop hl
	bit 7,(ix+#14)
	jr z,l31aa
	ld h,d
	ld l,d
.l31aa
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l3385
	ld c,h
	ld a,(ix+#02)
	call l3385
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l31fd
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l31ec
	dec (ix+#09)
	jr nz,l31ec
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l31e4
	xor a
	jr l31e9
.l31e4
	cp #10
	jr nz,l31e9
	dec a
.l31e9
	ld (ix+#1e),a
.l31ec
	ld a,b
	sub (ix+#1e)
	jr nc,l31f3
	xor a
.l31f3
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l3385
.l31fd
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l33ac)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l321b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l321b
	ld (l33ac),hl
	ret
.l321f
	ld hl,l33ce
	cp #61
	jr nc,l3229
	add a
	ld c,a
	add hl,bc
.l3229
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l3233
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l3358
	ld (ix+#1e),a
	jp l30c0
.l3245
	dec b
.l3246
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l3251
	neg
.l3251
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
	jp l30c0
.l3267
	dec b
	jr l326b
.l326a
	inc b
.l326b
	call l3358
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l30c0
.l327a
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
	jp l333d
.l328b
	ld a,(hl)
	inc hl
	or a
	jr z,l32ad
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
.l32ad
	ld (ix+#29),a
	jp l30c0
.l32b3
	dec hl
	ld a,(hl)
	and #0f
	ld (l33af),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l33ae),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l30c0
.l32cd
	ld a,(hl)
	or a
	jr z,l32de
	call l335a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l30c0
.l32de
	ld hl,#0101
	ld (l33aa),hl
	jp l30c0
.l32e7
	call l3358
	ld (ix+#1e),a
	jp l30c0
.l32f0
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l3369
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l3369
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l30c0
.l3312
	ld a,(hl)
	inc hl
	ld (l33a9),a
	jp l30c0
.l331a
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
	jp l30c0
.l3339
	call l3358
	add a
.l333d
	ld b,#00
	ld c,a
	push hl
	ld hl,l35a0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l30c0
.l3358
	ld a,(hl)
	inc hl
.l335a
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
.l3369
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l3520
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l3385
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
.l33a4
	ret
.l33ac equ $ + 7
.l33ab equ $ + 6
.l33aa equ $ + 5
.l33a9 equ $ + 4
.l33a7 equ $ + 2
.l33a5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l33af equ $ + 2
.l33ae equ $ + 1
	db #38,#00,#00
.l33b0
	dw l3233,l3246,l3245,l326a
	dw l3267,l327a,l328b,l32b3
	dw l32cd,l32b3,l32e7,l32f0
	dw l3312,l331a,l3339
.l33ce
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
.l3494 equ $ + 4
.l3490
	db #08,#00,#01,#08,#00,#00,#00,#00
.l349e equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l34af equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l34be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l34c2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l34cc equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l34dd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l34ec equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l34f0
	db #00,#00,#00,#00,#00,#00,#00,#00
.l34fa equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l350b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l351a equ $ + 2
	db #00,#00,#80,#37,#92,#37,#a4,#37
.l3520
	db #b2,#ee,#b2,#ee,#b2,#ee,#00,#00
	db #b2,#ee,#b2,#ee,#b2,#ee,#00,#00
	db #b2,#ee,#b2,#ee,#b2,#ee,#00,#00
	db #c0,#35,#00,#36,#20,#36,#00,#00
	db #b2,#ee,#b2,#ee,#b2,#ee,#00,#00
	db #b2,#ee,#b2,#ee,#b2,#ee,#00,#00
	db #40,#36,#80,#36,#a0,#36,#00,#00
	db #c0,#36,#00,#37,#20,#36,#18,#07
	db #20,#37,#60,#37,#20,#36,#18,#07
	db #b2,#ee,#b2,#ee,#b2,#ee,#00,#00
	db #b2,#ee,#b2,#ee,#b2,#ee,#00,#00
	db #b2,#ee,#b2,#ee,#b2,#ee,#00,#00
	db #b2,#ee,#b2,#ee,#b2,#ee,#00,#00
	db #b2,#ee,#b2,#ee,#b2,#ee,#00,#00
	db #b2,#ee,#b2,#ee,#b2,#ee,#00,#00
	db #b2,#ee,#b2,#ee,#b2,#ee,#00,#00
.l35a0
	db #b2,#ee,#b2,#ee,#b2,#ee,#b2,#ee
	db #b2,#ee,#b2,#ee,#b2,#ee,#b2,#ee
	db #b2,#ee,#b2,#ee,#b2,#ee,#b2,#ee
	db #b2,#ee,#b2,#ee,#b2,#ee,#b2,#ee
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #0c,#0f,#0f,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #0f,#0f,#0e,#0d,#0c,#0c,#0b,#0a
	db #09,#09,#08,#08,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #04,#06,#07,#09,#0c,#11,#17,#1d
	db #15,#10,#0c,#09,#06,#05,#04,#04
	db #03,#03,#03,#02,#02,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0e,#0e,#0e,#0d,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#08,#08,#08,#07
	db #07,#07,#06,#06,#06,#05,#05,#05
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #0e,#0e,#0e,#0d,#0d,#0d,#0c,#0c
	db #0b,#0a,#09,#07,#05,#07,#09,#0b
	db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #00,#0f,#38,#00,#b6,#37,#00,#b6
	db #37,#00,#e3,#37,#00,#e3,#37,#80
	db #83,#37,#00,#12,#38,#00,#12,#38
	db #00,#12,#38,#00,#90,#38,#00,#90
	db #38,#80,#95,#37,#00,#0e,#39,#00
	db #0e,#39,#00,#0e,#39,#00,#87,#39
	db #00,#00,#3a,#80,#a7,#37,#4c,#70
	db #0e,#4e,#70,#02,#4c,#70,#04,#49
	db #70,#02,#ca,#70,#4c,#70,#07,#4c
	db #70,#02,#4a,#70,#06,#4a,#70,#02
	db #c9,#70,#45,#70,#05,#45,#70,#02
	db #44,#70,#02,#c4,#70,#c5,#70,#47
	db #70,#1c,#ff,#4a,#70,#03,#ca,#70
	db #47,#70,#0c,#4a,#70,#02,#c7,#70
	db #49,#70,#02,#4a,#70,#0b,#4c,#70
	db #02,#ca,#70,#4c,#70,#02,#4e,#70
	db #0f,#ce,#70,#cc,#70,#ce,#70,#cc
	db #70,#ca,#70,#47,#70,#17,#ff,#00
	db #50,#ff,#34,#80,#02,#34,#80,#02
	db #b4,#80,#34,#80,#02,#34,#80,#02
	db #34,#80,#02,#b4,#80,#34,#80,#02
	db #34,#80,#02,#34,#80,#02,#b4,#80
	db #34,#80,#02,#34,#80,#02,#34,#80
	db #02,#b4,#80,#34,#80,#02,#34,#80
	db #02,#34,#80,#02,#3b,#80,#02,#3b
	db #80,#02,#bb,#80,#3b,#80,#02,#3b
	db #80,#02,#39,#80,#02,#39,#80,#02
	db #b9,#80,#39,#80,#02,#34,#80,#02
	db #34,#80,#02,#b4,#80,#34,#80,#02
	db #34,#80,#02,#34,#80,#02,#b4,#80
	db #34,#80,#02,#34,#80,#02,#3b,#80
	db #02,#3b,#80,#02,#bb,#80,#3b,#80
	db #02,#39,#80,#02,#39,#80,#02,#b9
	db #80,#39,#80,#02,#39,#80,#02,#ff
	db #3b,#80,#02,#3b,#80,#02,#bb,#80
	db #3b,#80,#02,#3b,#80,#02,#3b,#80
	db #02,#bb,#80,#3b,#80,#02,#3b,#80
	db #02,#3e,#80,#02,#be,#80,#3e,#80
	db #02,#3e,#80,#02,#3e,#80,#02,#be
	db #80,#3e,#80,#02,#3e,#80,#02,#3e
	db #80,#02,#42,#80,#02,#42,#80,#02
	db #c2,#80,#42,#80,#02,#42,#80,#02
	db #42,#80,#02,#42,#80,#02,#c2,#80
	db #42,#80,#02,#42,#80,#02,#42,#80
	db #02,#c2,#80,#42,#80,#02,#42,#80
	db #02,#3b,#80,#02,#bb,#80,#3b,#80
	db #02,#39,#80,#02,#39,#80,#02,#b9
	db #80,#39,#80,#02,#39,#80,#02,#38
	db #80,#02,#38,#80,#02,#b8,#80,#38
	db #80,#02,#38,#80,#02,#ff,#28,#30
	db #02,#34,#30,#02,#34,#60,#02,#34
	db #30,#02,#28,#30,#02,#34,#30,#02
	db #34,#60,#02,#34,#30,#02,#28,#30
	db #02,#34,#30,#02,#34,#60,#02,#34
	db #30,#02,#28,#30,#02,#34,#30,#02
	db #34,#60,#02,#34,#30,#02,#2f,#30
	db #02,#3b,#30,#02,#3b,#60,#02,#3b
	db #30,#02,#2d,#30,#02,#39,#30,#02
	db #39,#60,#02,#39,#30,#02,#28,#30
	db #02,#34,#30,#02,#34,#60,#02,#34
	db #30,#02,#28,#30,#02,#34,#30,#02
	db #34,#60,#02,#34,#30,#02,#2f,#30
	db #02,#3b,#30,#02,#3b,#60,#02,#3b
	db #30,#02,#2d,#30,#02,#39,#30,#02
	db #39,#60,#02,#39,#30,#02,#ff,#2f
	db #30,#02,#3b,#30,#02,#34,#60,#02
	db #3b,#30,#02,#2f,#30,#02,#3b,#30
	db #02,#34,#60,#02,#3b,#30,#02,#3e
	db #30,#02,#32,#30,#02,#34,#60,#02
	db #32,#30,#02,#3e,#30,#02,#32,#30
	db #02,#34,#60,#02,#32,#30,#02,#2a
	db #30,#02,#36,#30,#02,#3b,#60,#02
	db #36,#30,#02,#2a,#30,#02,#36,#30
	db #02,#2a,#60,#02,#36,#30,#02,#2a
	db #30,#02,#36,#30,#02,#36,#60,#02
	db #36,#30,#02,#2a,#30,#02,#3b,#30
	db #02,#2d,#60,#02,#39,#30,#02,#2d
	db #30,#02,#39,#30,#02,#2c,#60,#02
	db #38,#30,#02,#2c,#30,#02,#38,#30
	db #02,#2c,#60,#02,#38,#80,#02,#ff
	db #2f,#30,#02,#3b,#30,#02,#34,#60
	db #02,#3b,#30,#02,#2f,#30,#02,#3b
	db #30,#02,#34,#60,#02,#3b,#30,#02
	db #3e,#30,#02,#32,#30,#02,#34,#60
	db #02,#32,#30,#02,#3e,#30,#02,#32
	db #30,#02,#34,#60,#02,#32,#30,#02
	db #2a,#30,#02,#36,#30,#02,#3b,#60
	db #02,#36,#30,#02,#2a,#30,#02,#36
	db #30,#02,#2a,#60,#02,#36,#30,#02
	db #2a,#30,#02,#36,#30,#02,#36,#60
	db #02,#36,#30,#02,#2a,#30,#02,#3b
	db #30,#02,#2d,#60,#02,#39,#30,#02
	db #2d,#30,#02,#39,#30,#02,#2c,#60
	db #02,#38,#30,#02,#2c,#30,#02,#38
	db #30,#02,#b4,#60,#b4,#60,#b4,#60
	db #b4,#60,#ff

;
.music_info
	db "Ovation 2 - Intro (1996)(Benediction)(Antitec)",0
	db "ST-128 Module",0

	read "music_end.asm"
