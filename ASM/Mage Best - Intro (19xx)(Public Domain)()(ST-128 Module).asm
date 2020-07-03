; Music of Mage Best - Intro (19xx)(Public Domain)()(ST-128 Module)
; Ripped by Megachur the 11/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MAGEBESI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #3200

	read "music_header.asm"

	jp l3209
	jp l329d
	jp l3281
;
.init_music
.l3209
;
	xor a
	ld hl,l37b4
	call l327a
	ld hl,l37e2
	call l327a
	ld hl,l3810
	call l327a
	ld ix,l37b0
	ld iy,l383a
	ld de,#002e
	ld b,#03
.l3229
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
	djnz l3229
	ld hl,l36c9
	ld (hl),#06
	inc hl
	ld (hl),#20
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l36c5),hl
	ld (l36c7),hl
	ld a,#0c
	ld c,d
	call l36a5
	ld a,#0d
	ld c,d
	jp l36a5
.l327a
	ld b,#2a
.l327c
	ld (hl),a
	inc hl
	djnz l327c
	ret
;
.stop_music
.l3281
;
	ld a,#07
	ld c,#3f
	call l36a5
	ld a,#08
	ld c,#00
	call l36a5
	ld a,#09
	ld c,#00
	call l36a5
	ld a,#0a
	ld c,#00
	jp l36a5
;
.play_music
.l329d
;
	ld hl,l36cb
	dec (hl)
	ld ix,l37b0
	ld bc,l37be
	call l333f
	ld ix,l37de
	ld bc,l37ec
	call l333f
	ld ix,l380c
	ld bc,l381a
	call l333f
	ld hl,l36c4
	ld de,l36cb
	ld b,#06
	call l331c
	ld b,#07
	call l331c
	ld b,#0b
	call l331c
	ld b,#0d
	call l331c
	ld de,l36cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,l37cf
	call l32f5
	ld hl,l37fd
	call l32f5
	ld hl,l382b
.l32f5
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
	jr nz,l330a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l330a
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
.l331c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l36a5
.l3327
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l36a5
.l333f
	ld a,(l36cb)
	or a
	jp nz,l33f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l33f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l3327
	or a
	jp z,l33ec
	ld r,a
	and #7f
	cp #10
	jr c,l33c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l353f
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
	jr z,l33a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l33a0
	rrca
	ld c,a
	ld hl,l3840
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
	jr z,l33bf
	ld (ix+#1e),b
.l33bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l33e0
.l33c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l36d0
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
.l33e0
	ld a,d
	or a
	jr nz,l33ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l33ee
.l33ec
	ld a,(hl)
	inc hl
.l33ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l33f7
	ld a,(ix+#17)
	or a
	jr nz,l340d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l340d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l3423
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l3423
	ld a,(ix+#0d)
	or a
	jr z,l3431
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l344f
.l3431
	ld a,(ix+#1a)
	or a
	jp z,l3456
	ld c,a
	cp #03
	jr nz,l343e
	xor a
.l343e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l344f
	ld a,(ix+#18)
	dec c
	jr z,l344f
	ld a,(ix+#19)
.l344f
	add (ix+#07)
	ld b,d
	call l353f
.l3456
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l347e
	dec (ix+#1b)
	jr nz,l347e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l34b6
.l347e
	ld a,(ix+#29)
	or a
	jr z,l34b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l34ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l34a4
	ld (ix+#29),#ff
	jr l34ad
.l34a4
	cp (ix+#2b)
	jr nz,l34ad
	ld (ix+#29),#01
.l34ad
	ld b,d
	or a
	jp p,l34b3
	dec b
.l34b3
	ld c,a
	jr l34c1
.l34b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l34c1
	pop hl
	bit 7,(ix+#14)
	jr z,l34ca
	ld h,d
	ld l,d
.l34ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l36a5
	ld c,h
	ld a,(ix+#02)
	call l36a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l351d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l350c
	dec (ix+#09)
	jr nz,l350c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l3504
	xor a
	jr l3509
.l3504
	cp #10
	jr nz,l3509
	dec a
.l3509
	ld (ix+#1e),a
.l350c
	ld a,b
	sub (ix+#1e)
	jr nc,l3513
	xor a
.l3513
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l36a5
.l351d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l36cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l353b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l353b
	ld (l36cc),hl
	ret
.l353f
	ld hl,l36ee
	cp #61
	jr nc,l3549
	add a
	ld c,a
	add hl,bc
.l3549
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l3553
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l3678
	ld (ix+#1e),a
	jp l33e0
.l3565
	dec b
.l3566
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l3571
	neg
.l3571
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
	jp l33e0
.l3587
	dec b
	jr l358b
.l358a
	inc b
.l358b
	call l3678
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l33e0
.l359a
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
	jp l365d
.l35ab
	ld a,(hl)
	inc hl
	or a
	jr z,l35cd
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
.l35cd
	ld (ix+#29),a
	jp l33e0
.l35d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l36cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l36ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l33e0
.l35ed
	ld a,(hl)
	or a
	jr z,l35fe
	call l367a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l33e0
.l35fe
	ld hl,#0101
	ld (l36ca),hl
	jp l33e0
.l3607
	call l3678
	ld (ix+#1e),a
	jp l33e0
.l3610
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l3689
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l3689
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l33e0
.l3632
	ld a,(hl)
	inc hl
	ld (l36c9),a
	jp l33e0
.l363a
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
	jp l33e0
.l3659
	call l3678
	add a
.l365d
	ld b,#00
	ld c,a
	push hl
	ld hl,l38c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l33e0
.l3678
	ld a,(hl)
	inc hl
.l367a
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
.l3689
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l3840
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l36a5
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
.l36c4
	ret
.l36cc equ $ + 7
.l36cb equ $ + 6
.l36ca equ $ + 5
.l36c9 equ $ + 4
.l36c7 equ $ + 2
.l36c5
	db #01,#38,#1b,#08,#06,#19,#03,#01
.l36cf equ $ + 2
.l36ce equ $ + 1
	db #38,#1b,#08
.l36d0
	dw l3553,l3566,l3565,l358a
	dw l3587,l359a,l35ab,l35d3
	dw l35ed,l35d3,l3607,l3610
	dw l3632,l363a,l3659
.l36ee
	db #00,#00,#18,#0e,#4d,#0d,#8e,#0c
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
.l37b4 equ $ + 4
.l37b0
	db #08,#00,#01,#08,#8e,#00,#00,#3e
.l37be equ $ + 6
	db #00,#00,#00,#00,#00,#3b,#e0,#38
	db #20,#39,#40,#39,#00,#00,#04,#1c
.l37cf equ $ + 7
	db #00,#00,#00,#01,#02,#00,#00,#02
	db #10,#3c,#69,#3b,#00,#00,#00,#00
.l37de equ $ + 6
	db #00,#00,#00,#00,#01,#01,#09,#02
.l37e2 equ $ + 2
	db #03,#10,#a9,#00,#00,#36,#00,#00
.l37ec equ $ + 4
	db #00,#00,#00,#00,#a0,#3a,#e0,#3a
	db #40,#39,#16,#0a,#1e,#02,#00,#00
.l37fd equ $ + 5
	db #00,#00,#00,#00,#00,#0a,#71,#3d
	db #96,#3b,#00,#a0,#00,#00,#00,#00
.l380c equ $ + 4
	db #00,#00,#01,#01,#0a,#04,#05,#20
.l3810
	db #53,#03,#10,#1a,#00,#00,#00,#00
.l381a equ $ + 2
	db #00,#00,#20,#3a,#60,#3a,#80,#3a
	db #16,#0a,#04,#1c,#00,#00,#00,#00
.l382b equ $ + 3
	db #00,#00,#00,#04,#f5,#3d,#c3,#3b
	db #00,#50,#00,#00,#00,#00,#00,#00
.l383a equ $ + 2
	db #01,#01,#60,#3b,#8d,#3b,#ba,#3b
.l3840
	db #e0,#38,#20,#39,#40,#39,#00,#00
	db #e0,#38,#20,#39,#60,#39,#00,#00
	db #e0,#38,#80,#39,#40,#39,#1a,#06
	db #35,#fa,#44,#72,#6b,#ef,#cc,#90
	db #a0,#39,#e0,#39,#00,#3a,#00,#00
	db #20,#3a,#60,#3a,#80,#3a,#16,#0a
	db #9d,#82,#93,#a8,#74,#62,#9d,#db
	db #96,#e1,#68,#e2,#67,#62,#cb,#fd
	db #c9,#ca,#68,#b6,#9d,#02,#12,#53
	db #ba,#f1,#8d,#2b,#35,#ce,#bf,#de
	db #a0,#3a,#e0,#3a,#40,#39,#16,#0a
	db #92,#97,#28,#79,#28,#04,#f4,#a4
	db #12,#2b,#95,#e3,#ff,#e1,#8b,#de
	db #9b,#9a,#2c,#65,#29,#91,#8c,#f0
	db #a2,#8c,#d2,#f1,#d2,#f1,#00,#00
	db #d2,#f1,#d2,#f1,#d2,#f1,#00,#00
.l38c0
	db #d2,#f1,#00,#3b,#20,#3b,#d2,#f1
	db #d2,#f1,#d2,#f1,#d2,#f1,#40,#3b
	db #d2,#f1,#d2,#f1,#d2,#f1,#d2,#f1
	db #d2,#f1,#d2,#f1,#d2,#f1,#d2,#f1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0d,#0d,#0d,#0e,#0e,#0e,#0e
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0e
	db #0e,#0e,#0e,#0e,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #a0,#00,#e0,#00,#00,#00,#20,#00
	db #40,#00,#60,#00,#a0,#00,#e0,#00
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #80,#00,#a0,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#06,#05
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#06,#08,#0b,#10,#02,#00
	db #06,#08,#0b,#10,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0c,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#ff,#ff,#fe,#ff
	db #fd,#ff,#fe,#ff,#ff,#ff,#02,#00
	db #03,#00,#04,#00,#03,#00,#02,#00
	db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0b,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0d,#0d,#0d,#0d,#0d
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#fb,#fb
	db #f8,#f8,#00,#00,#fb,#fb,#f8,#f8
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #00,#00,#fd,#fd,#f9,#f9,#00,#00
	db #fd,#fd,#f9,#f9,#00,#00,#fd,#fd
	db #f9,#f9,#00,#00,#fd,#fd,#f9,#f9
	db #00,#00,#fd,#fd,#f9,#f9,#00,#00
	db #00,#00,#03,#03,#07,#07,#00,#00
	db #03,#03,#07,#07,#00,#00,#03,#03
	db #07,#07,#00,#00,#03,#03,#07,#07
	db #00,#00,#03,#03,#07,#07,#00,#00
	db #00,#e7,#3b,#00,#e7,#3b,#00,#03
	db #3c,#00,#38,#3c,#00,#6d,#3c,#00
	db #a2,#3c,#00,#d7,#3c,#00,#dc,#3c
	db #00,#e1,#3c,#00,#00,#3d,#00,#d7
	db #3c,#00,#dc,#3c,#00,#e1,#3c,#00
	db #00,#3d,#80,#66,#3b,#00,#1f,#3d
	db #00,#1f,#3d,#00,#6e,#3d,#00,#7f
	db #3d,#00,#9a,#3d,#00,#a1,#3d,#00
	db #ae,#3d,#00,#ca,#3d,#00,#d9,#3d
	db #00,#e3,#3d,#00,#ae,#3d,#00,#ca
	db #3d,#00,#d9,#3d,#00,#e3,#3d,#80
	db #93,#3b,#00,#e6,#3d,#00,#e6,#3d
	db #00,#e6,#3d,#00,#1b,#3e,#00,#50
	db #3e,#00,#85,#3e,#00,#ba,#3e,#00
	db #f3,#3e,#00,#2c,#3f,#00,#65,#3f
	db #00,#ba,#3e,#00,#f3,#3e,#00,#2c
	db #3f,#00,#65,#3f,#80,#c0,#3b,#42
	db #a0,#18,#02,#12,#01,#02,#12,#01
	db #02,#12,#01,#02,#12,#01,#02,#12
	db #01,#02,#12,#01,#02,#12,#01,#02
	db #12,#01,#ff,#4e,#0f,#21,#ce,#00
	db #4e,#00,#02,#ce,#00,#4e,#00,#02
	db #4e,#00,#02,#ce,#00,#4e,#00,#02
	db #ce,#00,#4e,#00,#02,#4e,#00,#02
	db #ce,#00,#4e,#00,#02,#ce,#00,#4e
	db #00,#02,#4e,#00,#02,#ce,#00,#4e
	db #00,#02,#ce,#00,#4e,#00,#02,#ff
	db #4a,#0f,#21,#ca,#00,#4a,#00,#02
	db #ca,#00,#4a,#00,#02,#4a,#00,#02
	db #ca,#00,#4a,#00,#02,#ca,#00,#4a
	db #00,#02,#4a,#00,#02,#ca,#00,#4a
	db #00,#02,#ca,#00,#4a,#00,#02,#4a
	db #00,#02,#ca,#00,#4a,#00,#02,#ca
	db #00,#4a,#00,#02,#ff,#47,#0f,#21
	db #c7,#00,#47,#00,#02,#c7,#00,#47
	db #00,#02,#47,#00,#02,#c7,#00,#47
	db #00,#02,#c7,#00,#47,#00,#02,#47
	db #00,#02,#c7,#00,#47,#00,#02,#c7
	db #00,#47,#00,#02,#47,#00,#02,#c7
	db #00,#47,#00,#02,#c7,#00,#47,#00
	db #02,#ff,#49,#0f,#21,#c9,#00,#49
	db #00,#02,#c9,#00,#49,#00,#02,#49
	db #00,#02,#c9,#00,#49,#00,#02,#c9
	db #00,#49,#00,#02,#49,#00,#02,#c9
	db #00,#49,#00,#02,#c9,#00,#49,#00
	db #02,#49,#00,#02,#c9,#00,#49,#00
	db #02,#c9,#00,#49,#00,#02,#ff,#49
	db #2f,#02,#20,#ff,#4a,#2f,#01,#20
	db #ff,#47,#1f,#47,#47,#10,#03,#47
	db #10,#03,#47,#10,#03,#47,#10,#03
	db #47,#10,#04,#47,#10,#03,#47,#10
	db #03,#47,#10,#03,#47,#10,#03,#ff
	db #4c,#1f,#41,#4c,#10,#03,#4c,#10
	db #03,#4c,#10,#03,#4c,#10,#03,#4c
	db #10,#04,#4c,#10,#03,#4c,#10,#03
	db #4c,#10,#03,#4c,#10,#03,#ff,#42
	db #0b,#10,#49,#0b,#13,#42,#0b,#15
	db #42,#0b,#13,#42,#0b,#20,#42,#0b
	db #15,#42,#0b,#13,#42,#0b,#20,#42
	db #0b,#15,#42,#0b,#13,#42,#0b,#20
	db #49,#0b,#10,#42,#0b,#13,#42,#0b
	db #10,#49,#0b,#13,#42,#0b,#15,#42
	db #0b,#13,#42,#0b,#20,#42,#0b,#15
	db #42,#0b,#13,#42,#0b,#20,#42,#0b
	db #15,#42,#0b,#13,#42,#0b,#20,#49
	db #0b,#10,#42,#0b,#13,#ff,#46,#a0
	db #10,#47,#a0,#06,#49,#a0,#06,#46
	db #a2,#10,#03,#02,#11,#01,#ff,#45
	db #a0,#0c,#42,#a0,#04,#45,#a0,#04
	db #42,#a0,#04,#c9,#a0,#02,#11,#01
	db #02,#11,#01,#02,#11,#01,#47,#a0
	db #04,#ff,#42,#a0,#1f,#03,#12,#01
	db #ff,#44,#a0,#14,#45,#a0,#04,#47
	db #a0,#04,#4a,#a0,#04,#ff,#49,#00
	db #04,#47,#00,#02,#45,#00,#04,#49
	db #00,#0c,#42,#00,#02,#49,#00,#02
	db #49,#00,#02,#47,#00,#02,#45,#00
	db #02,#ff,#00,#18,#45,#00,#02,#47
	db #00,#02,#49,#00,#02,#45,#00,#02
	db #ff,#47,#00,#1c,#45,#00,#02,#47
	db #00,#02,#ff,#00,#20,#ff,#28,#58
	db #1e,#02,#2a,#58,#1b,#02,#38,#41
	db #20,#2a,#58,#1b,#04,#2a,#58,#1b
	db #02,#38,#41,#20,#2a,#58,#1b,#02
	db #28,#58,#1e,#02,#2a,#58,#1b,#02
	db #38,#41,#20,#2a,#58,#1b,#04,#2a
	db #58,#1b,#02,#38,#41,#20,#25,#58
	db #24,#02,#ff,#25,#58,#24,#02,#26
	db #58,#22,#02,#38,#41,#20,#26,#58
	db #22,#04,#26,#58,#22,#02,#38,#41
	db #20,#21,#58,#2d,#02,#25,#58,#24
	db #02,#26,#58,#22,#02,#38,#41,#20
	db #26,#58,#22,#04,#26,#58,#22,#02
	db #38,#41,#20,#21,#58,#2d,#02,#ff
	db #2d,#58,#16,#02,#2f,#58,#14,#02
	db #38,#41,#20,#2f,#58,#14,#04,#2f
	db #58,#14,#02,#38,#41,#20,#2a,#58
	db #1b,#02,#2d,#58,#16,#02,#2f,#58
	db #14,#02,#38,#41,#20,#2f,#58,#14
	db #04,#2f,#58,#14,#02,#38,#41,#20
	db #2a,#58,#1b,#02,#ff,#2f,#58,#14
	db #02,#31,#58,#12,#02,#38,#41,#20
	db #31,#58,#12,#04,#31,#58,#12,#02
	db #38,#41,#20,#2c,#58,#18,#02,#2f
	db #58,#14,#02,#31,#58,#12,#02,#38
	db #41,#20,#31,#58,#12,#04,#31,#58
	db #12,#02,#38,#41,#20,#2c,#58,#18
	db #02,#ff,#2a,#51,#20,#aa,#50,#aa
	db #50,#b8,#40,#aa,#50,#2a,#50,#02
	db #2a,#50,#02,#aa,#50,#aa,#50,#b8
	db #40,#aa,#50,#2a,#50,#02,#2a,#50
	db #02,#aa,#50,#aa,#50,#b8,#40,#aa
	db #50,#2a,#50,#02,#2a,#50,#02,#aa
	db #50,#aa,#50,#b8,#40,#aa,#50,#28
	db #50,#02,#ff,#26,#51,#20,#a6,#50
	db #a6,#50,#b8,#40,#a6,#50,#26,#50
	db #02,#26,#50,#02,#a6,#50,#a6,#50
	db #b8,#40,#a6,#50,#26,#50,#02,#26
	db #50,#02,#a6,#50,#a6,#50,#b8,#40
	db #a6,#50,#26,#50,#02,#26,#50,#02
	db #a6,#50,#a6,#50,#b8,#40,#a6,#50
	db #25,#50,#02,#ff,#2f,#51,#20,#af
	db #50,#af,#50,#b8,#40,#af,#50,#2f
	db #50,#02,#2f,#50,#02,#af,#50,#af
	db #50,#b8,#40,#af,#50,#2f,#50,#02
	db #2f,#50,#02,#af,#50,#af,#50,#b8
	db #40,#af,#50,#2f,#50,#02,#2f,#50
	db #02,#af,#50,#af,#50,#b8,#40,#af
	db #50,#2f,#50,#02,#ff,#28,#51,#20
	db #a8,#50,#a8,#50,#b8,#40,#a8,#50
	db #28,#50,#02,#28,#50,#02,#a8,#50
	db #a8,#50,#b8,#40,#a8,#50,#28,#50
	db #02,#28,#50,#02,#a8,#50,#a8,#50
	db #b8,#40,#a8,#50,#28,#50,#02,#28
	db #50,#02,#a8,#50,#a8,#50,#b8,#40
	db #a8,#50,#28,#50,#02,#ff
;
.music_info
	db "Mage Best - Intro (19xx)(Public Domain)()",0
	db "ST-128 Module",0

	read "music_end.asm"
