; Music of The Twister - Intro (1996)(OdieSoft)(OdieSoft)(ST-128 Module)
; Ripped by Megachur the 03/01/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THETWISI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #5200

	read "music_header.asm"

	jp l5209
	jp l529d
	jp l5281
;
.init_music
.l5209
;
	xor a
	ld hl,l57b4
	call l527a
	ld hl,l57e2
	call l527a
	ld hl,l5810
	call l527a
	ld ix,l57b0
	ld iy,l583a
	ld de,#002e
	ld b,#03
.l5229
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
	djnz l5229
	ld hl,l56c9
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
	ld (l56c5),hl
	ld (l56c7),hl
	ld a,#0c
	ld c,d
	call l56a5
	ld a,#0d
	ld c,d
	jp l56a5
.l527a
	ld b,#2a
.l527c
	ld (hl),a
	inc hl
	djnz l527c
	ret
;
.stop_music
.l5281
;
	ld a,#07
	ld c,#3f
	call l56a5
	ld a,#08
	ld c,#00
	call l56a5
	ld a,#09
	ld c,#00
	call l56a5
	ld a,#0a
	ld c,#00
	jp l56a5
;
.play_music
.l529d
;
	ld hl,l56cb
	dec (hl)
	ld ix,l57b0
	ld bc,l57be
	call l533f
	ld ix,l57de
	ld bc,l57ec
	call l533f
	ld ix,l580c
	ld bc,l581a
	call l533f
	ld hl,l56c4
	ld de,l56cb
	ld b,#06
	call l531c
	ld b,#07
	call l531c
	ld b,#0b
	call l531c
	ld b,#0d
	call l531c
	ld de,l56cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l57cf
	call l52f5
	ld hl,l57fd
	call l52f5
	ld hl,l582b
.l52f5
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
	jr nz,l530a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l530a
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
.l531c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l56a5
.l5327
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l56a5
.l533f
	ld a,(l56cb)
	or a
	jp nz,l53f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l53f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l5327
	or a
	jp z,l53ec
	ld r,a
	and #7f
	cp #10
	jr c,l53c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l553f
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
	jr z,l53a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l53a0
	rrca
	ld c,a
	ld hl,l5840
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
	jr z,l53bf
	ld (ix+#1e),b
.l53bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l53e0
.l53c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l56d0
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
	add (hl)
	adc c
	add b
	add a
	adc b
.l53e0
	ld a,d
	or a
	jr nz,l53ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l53ee
.l53ec
	ld a,(hl)
	inc hl
.l53ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l53f7
	ld a,(ix+#17)
	or a
	jr nz,l540d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l540d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l5423
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l5423
	ld a,(ix+#0d)
	or a
	jr z,l5431
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l544f
.l5431
	ld a,(ix+#1a)
	or a
	jp z,l5456
	ld c,a
	cp #03
	jr nz,l543e
	xor a
.l543e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l544f
	ld a,(ix+#18)
	dec c
	jr z,l544f
	ld a,(ix+#19)
.l544f
	add (ix+#07)
	ld b,d
	call l553f
.l5456
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l547e
	dec (ix+#1b)
	jr nz,l547e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l54b6
.l547e
	ld a,(ix+#29)
	or a
	jr z,l54b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l54ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l54a4
	ld (ix+#29),#ff
	jr l54ad
.l54a4
	cp (ix+#2b)
	jr nz,l54ad
	ld (ix+#29),#01
.l54ad
	ld b,d
	or a
	jp p,l54b3
	dec b
.l54b3
	ld c,a
	jr l54c1
.l54b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l54c1
	pop hl
	bit 7,(ix+#14)
	jr z,l54ca
	ld h,d
	ld l,d
.l54ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l56a5
	ld c,h
	ld a,(ix+#02)
	call l56a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l551d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l550c
	dec (ix+#09)
	jr nz,l550c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l5504
	xor a
	jr l5509
.l5504
	cp #10
	jr nz,l5509
	dec a
.l5509
	ld (ix+#1e),a
.l550c
	ld a,b
	sub (ix+#1e)
	jr nc,l5513
	xor a
.l5513
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l56a5
.l551d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l56cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l553b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l553b
	ld (l56cc),hl
	ret
.l553f
	ld hl,l56ee
	cp #61
	jr nc,l5549
	add a
	ld c,a
	add hl,bc
.l5549
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l5553
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l5678
	ld (ix+#1e),a
	jp l53e0
.l5565
	dec b
.l5566
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l5571
	neg
.l5571
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
	jp l53e0
.l5587
	dec b
	jr l558b
.l558a
	inc b
.l558b
	call l5678
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l53e0
.l559a
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
	jp l565d
.l55ab
	ld a,(hl)
	inc hl
	or a
	jr z,l55cd
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
.l55cd
	ld (ix+#29),a
	jp l53e0
.l55d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l56cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l56ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l53e0
.l55ed
	ld a,(hl)
	or a
	jr z,l55fe
	call l567a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l53e0
.l55fe
	ld hl,#0101
	ld (l56ca),hl
	jp l53e0
.l5607
	call l5678
	ld (ix+#1e),a
	jp l53e0
.l5610
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l5689
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l5689
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l53e0
.l5632
	ld a,(hl)
	inc hl
	ld (l56c9),a
	jp l53e0
.l563a
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
	jp l53e0
.l5659
	call l5678
	add a
.l565d
	ld b,#00
	ld c,a
	push hl
	ld hl,l58c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l53e0
.l5678
	ld a,(hl)
	inc hl
.l567a
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
.l5689
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l5840
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l56a5
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
.l56c4
	ret
.l56cc equ $ + 7
.l56cb equ $ + 6
.l56ca equ $ + 5
.l56c9 equ $ + 4
.l56c7 equ $ + 2
.l56c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56cf equ $ + 2
.l56ce equ $ + 1
	db #38,#00,#00
.l56d0
	dw l5553,l5566,l5565,l558a
	dw l5587,l559a,l55ab,l55d3
	dw l55ed,l55d3,l5607,l5610
	dw l5632,l563a,l5659
.l56ee
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
.l57b4 equ $ + 4
.l57b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l57be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l57e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l57ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l580c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l5810
	db #00,#00,#00,#00,#00,#00,#00,#00
.l581a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l582b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l583a equ $ + 2
	db #00,#00,#00,#5c,#33,#5c,#66,#5c
.l5840
	db #e0,#58,#20,#59,#40,#59,#00,#00
	db #60,#59,#a0,#59,#c0,#59,#07,#00
	db #e0,#59,#20,#5a,#40,#59,#10,#00
	db #40,#5a,#80,#5a,#40,#59,#14,#00
	db #a0,#5a,#e0,#5a,#00,#5b,#1a,#00
	db #f2,#72,#40,#76,#f2,#85,#68,#69
	db #e0,#59,#20,#5b,#40,#5b,#09,#00
	db #1b,#39,#48,#77,#f2,#79,#61,#64
	db #f2,#72,#f2,#7d,#41,#86,#20,#6f
	db #38,#32,#46,#7b,#3f,#77,#20,#74
	db #41,#32,#39,#77,#46,#32,#62,#6f
	db #44,#77,#36,#33,#f2,#31,#20,#20
	db #f2,#31,#f2,#65,#3a,#77,#20,#77
	db #41,#84,#45,#86,#f2,#85,#68,#69
	db #40,#79,#f2,#88,#33,#85,#2c,#20
	db #60,#5b,#a0,#5b,#c0,#5b,#00,#00
.l58c0
	db #e0,#5b,#f2,#77,#47,#86,#3b,#7e
	db #37,#32,#45,#77,#33,#84,#35,#7a
	db #f2,#88,#33,#85,#f2,#85,#3a,#73
	db #46,#32,#46,#7a,#37,#85,#37,#32
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0b,#0b,#0a,#09,#07,#05,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0d,#0c,#0b,#0a,#0a
	db #09,#09,#08,#07,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#00,#00
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
	db #0f,#0d,#0b,#09,#07,#05,#03,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#40,#00,#80,#00,#c0,#00
	db #00,#01,#40,#01,#80,#01,#c0,#01
	db #00,#02,#40,#02,#80,#02,#c0,#02
	db #00,#03,#40,#03,#80,#03,#c0,#03
	db #00,#04,#40,#04,#80,#04,#c0,#04
	db #00,#05,#40,#05,#80,#05,#c0,#05
	db #00,#06,#40,#06,#80,#06,#c0,#06
	db #00,#07,#40,#07,#80,#07,#c0,#07
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#09,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#03,#00
	db #00,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#99,#5c,#00,#1b,#5d,#00,#9e
	db #5d,#00,#9e,#5d,#00,#d2,#5e,#00
	db #d2,#5e,#00,#f6,#5d,#00,#f6,#5d
	db #00,#4f,#5e,#00,#4f,#5e,#00,#51
	db #5f,#00,#51,#5f,#00,#d2,#5e,#00
	db #f6,#5d,#00,#9e,#5d,#00,#4f,#5e
	db #80,#03,#5c,#00,#d2,#5f,#00,#99
	db #5c,#00,#99,#5c,#00,#99,#5c,#00
	db #99,#5c,#00,#99,#5c,#00,#99,#5c
	db #00,#99,#5c,#00,#99,#5c,#00,#99
	db #5c,#00,#99,#5c,#00,#99,#5c,#00
	db #99,#5c,#00,#99,#5c,#00,#99,#5c
	db #00,#99,#5c,#80,#36,#5c,#00,#e3
	db #5f,#00,#e6,#5f,#00,#e6,#5f,#00
	db #e6,#5f,#00,#e6,#5f,#00,#e6,#5f
	db #00,#e6,#5f,#00,#e6,#5f,#00,#e6
	db #5f,#00,#e6,#5f,#00,#e6,#5f,#00
	db #e6,#5f,#00,#e6,#5f,#00,#e6,#5f
	db #00,#e6,#5f,#00,#e6,#5f,#80,#69
	db #5c,#27,#3f,#10,#a7,#30,#a7,#30
	db #b3,#30,#a7,#30,#a7,#30,#a7,#30
	db #a5,#30,#a7,#30,#a7,#30,#a7,#30
	db #b3,#30,#a7,#30,#a7,#30,#a7,#30
	db #a5,#30,#aa,#30,#aa,#30,#aa,#30
	db #b6,#30,#aa,#30,#aa,#30,#aa,#30
	db #a8,#30,#aa,#30,#aa,#30,#aa,#30
	db #b6,#30,#aa,#30,#aa,#30,#aa,#30
	db #a8,#30,#ac,#30,#ac,#30,#ac,#30
	db #b8,#30,#ac,#30,#ac,#30,#ac,#30
	db #aa,#30,#ac,#30,#ac,#30,#ac,#30
	db #b8,#30,#ac,#30,#ac,#30,#ac,#30
	db #aa,#30,#aa,#30,#aa,#30,#aa,#30
	db #b6,#30,#aa,#30,#aa,#30,#aa,#30
	db #a8,#30,#aa,#30,#aa,#30,#aa,#30
	db #b6,#30,#aa,#30,#aa,#30,#aa,#30
	db #a8,#30,#ff,#27,#3f,#10,#a7,#30
	db #a7,#30,#b3,#30,#a7,#30,#a7,#30
	db #a7,#30,#a5,#30,#a7,#30,#a7,#30
	db #a7,#30,#b3,#30,#a7,#30,#a7,#30
	db #a7,#30,#a5,#30,#aa,#30,#aa,#30
	db #aa,#30,#b6,#30,#aa,#30,#aa,#30
	db #aa,#30,#a8,#30,#aa,#30,#aa,#30
	db #aa,#30,#b6,#30,#aa,#30,#aa,#30
	db #aa,#30,#a8,#30,#ac,#30,#ac,#30
	db #ac,#30,#b8,#30,#ac,#30,#ac,#30
	db #ac,#30,#aa,#30,#ac,#30,#ac,#30
	db #ac,#30,#b8,#30,#ac,#30,#ac,#30
	db #ac,#30,#aa,#30,#aa,#30,#aa,#30
	db #aa,#30,#b6,#30,#aa,#30,#aa,#30
	db #aa,#30,#a8,#30,#aa,#30,#aa,#30
	db #aa,#30,#b6,#30,#aa,#30,#aa,#30
	db #aa,#30,#28,#31,#10,#ff,#c9,#0c
	db #30,#c9,#00,#49,#0c,#30,#02,#49
	db #0c,#30,#02,#49,#0c,#30,#02,#4c
	db #0c,#30,#08,#cc,#0c,#30,#cc,#0c
	db #30,#4c,#0c,#30,#02,#4c,#0c,#30
	db #02,#4c,#0c,#30,#02,#50,#0c,#30
	db #08,#cb,#0c,#30,#cb,#0c,#30,#4b
	db #0c,#30,#02,#4b,#0c,#30,#02,#4c
	db #0c,#30,#02,#4b,#0c,#30,#08,#c9
	db #0c,#30,#c9,#0c,#30,#49,#0c,#30
	db #02,#4b,#0c,#30,#02,#47,#0c,#30
	db #02,#49,#0c,#30,#08,#ff,#3f,#00
	db #02,#3f,#00,#02,#c0,#00,#40,#00
	db #02,#c0,#00,#3f,#00,#02,#3f,#00
	db #02,#3d,#00,#04,#42,#00,#02,#42
	db #00,#02,#c5,#00,#45,#00,#02,#c5
	db #00,#44,#00,#02,#44,#00,#02,#40
	db #00,#04,#40,#00,#02,#40,#00,#02
	db #c2,#00,#42,#00,#02,#c2,#00,#40
	db #00,#02,#40,#00,#02,#3d,#00,#04
	db #44,#00,#02,#44,#00,#02,#c5,#00
	db #45,#00,#02,#c5,#00,#44,#00,#02
	db #44,#00,#02,#40,#00,#04,#ff,#33
	db #3f,#10,#b3,#30,#b3,#30,#bf,#30
	db #b3,#30,#b3,#30,#b3,#30,#b1,#30
	db #b3,#30,#b3,#30,#b3,#30,#bf,#30
	db #b3,#30,#b3,#30,#b3,#30,#b1,#30
	db #b6,#30,#b6,#30,#b6,#30,#c2,#30
	db #b6,#30,#b6,#30,#b6,#30,#b4,#30
	db #b6,#30,#b6,#30,#b6,#30,#c2,#30
	db #b6,#30,#b6,#30,#b6,#30,#b4,#30
	db #b8,#30,#b8,#30,#b8,#30,#c4,#30
	db #b8,#30,#b8,#30,#b8,#30,#b6,#30
	db #b8,#30,#b8,#30,#b8,#30,#c4,#30
	db #b8,#30,#b8,#30,#b8,#30,#b6,#30
	db #b6,#30,#b6,#30,#b6,#30,#c2,#30
	db #b6,#30,#b6,#30,#b6,#30,#b4,#30
	db #b6,#30,#b6,#30,#b6,#30,#c2,#30
	db #b6,#30,#b6,#30,#b6,#30,#34,#31
	db #10,#ff,#3f,#0b,#10,#3f,#0b,#23
	db #3f,#0b,#20,#3f,#0b,#13,#3f,#0b
	db #10,#3f,#0b,#13,#40,#0b,#10,#40
	db #0b,#23,#40,#0b,#20,#40,#0b,#13
	db #40,#0b,#10,#40,#0b,#13,#3d,#0b
	db #10,#3d,#0b,#23,#3d,#0b,#20,#3d
	db #0b,#13,#3d,#0b,#10,#3d,#0b,#13
	db #3f,#0b,#10,#3f,#0b,#33,#3f,#0b
	db #40,#4b,#0b,#10,#4b,#0b,#23,#4b
	db #0b,#20,#4b,#0b,#13,#4b,#0b,#10
	db #4b,#0b,#13,#4c,#0b,#10,#4c,#0b
	db #23,#4c,#0b,#20,#4c,#0b,#13,#4c
	db #0b,#10,#4c,#0b,#13,#49,#0b,#10
	db #49,#0b,#23,#49,#0b,#20,#49,#0b
	db #13,#49,#0b,#10,#49,#0b,#13,#4b
	db #0b,#10,#4b,#0b,#33,#4b,#0b,#40
	db #ff,#c0,#00,#c0,#00,#c0,#00,#b3
	db #20,#bf,#00,#a7,#20,#bb,#00,#a5
	db #20,#a7,#20,#a7,#20,#a7,#20,#b3
	db #20,#a7,#20,#a7,#20,#a7,#20,#a5
	db #20,#bd,#00,#bd,#00,#bd,#00,#b6
	db #20,#c0,#00,#aa,#20,#bf,#00,#a8
	db #20,#aa,#20,#aa,#20,#aa,#20,#b6
	db #20,#aa,#20,#aa,#20,#aa,#20,#a8
	db #20,#c2,#00,#c2,#00,#c2,#00,#b8
	db #20,#c0,#00,#ac,#20,#bb,#00,#aa
	db #20,#ac,#20,#ac,#20,#ac,#20,#b8
	db #20,#ac,#20,#ac,#20,#ac,#20,#aa
	db #20,#bb,#00,#bb,#00,#bb,#00,#b6
	db #20,#c0,#00,#aa,#20,#bf,#00,#a8
	db #20,#aa,#20,#aa,#20,#aa,#20,#b6
	db #20,#aa,#20,#aa,#20,#aa,#20,#a8
	db #20,#ff,#34,#f0,#35,#34,#f0,#04
	db #34,#f0,#02,#b4,#f0,#b4,#f0,#34
	db #f0,#03,#ff,#00,#40,#ff,#bf,#10
	db #f4,#60,#f4,#60,#f4,#60,#bf,#40
	db #f4,#60,#f4,#60,#f4,#60,#bf,#10
	db #f4,#60,#f4,#60,#f4,#60,#bf,#40
	db #f4,#60,#f4,#60,#f4,#60,#bf,#10
	db #f4,#60,#f4,#60,#f4,#60,#bf,#40
	db #f4,#60,#f4,#60,#f4,#60,#bf,#10
	db #f4,#60,#f4,#60,#f4,#60,#bf,#40
	db #f4,#60,#f4,#60,#f4,#60,#bf,#10
	db #f4,#60,#f4,#60,#f4,#60,#bf,#40
	db #f4,#60,#f4,#60,#f4,#60,#bf,#10
	db #f4,#60,#f4,#60,#f4,#60,#bf,#40
	db #f4,#60,#f4,#60,#f4,#60,#bf,#10
	db #f4,#60,#f4,#60,#f4,#60,#bf,#40
	db #f4,#60,#f4,#60,#f4,#60,#bf,#10
	db #f4,#60,#f4,#60,#f4,#60,#bf,#40
	db #f4,#60,#bf,#40,#bf,#40,#ff
;
.music_info
	db "The Twister - Intro (1996)(OdieSoft)(OdieSoft)",0
	db "ST-128 Module",0

	read "music_end.asm"
