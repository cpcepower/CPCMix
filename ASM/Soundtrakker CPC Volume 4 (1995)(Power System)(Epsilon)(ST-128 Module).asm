; Music of Soundtrakker CPC Volume 4 (1995)(Power System)(Epsilon)(ST-128 Module)
; Ripped by Megachur the 02/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SOUNTCV4.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #3000

	read "music_header.asm"

	jp l3009
	jp l309d
	jp l3081
;
.init_music
.l3009
;
	xor a
	ld hl,l35b4
	call l307a
	ld hl,l35e2
	call l307a
	ld hl,l3610
	call l307a
	ld ix,l35b0
	ld iy,l363a
	ld de,#002e
	ld b,#03
.l3029
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
	djnz l3029
	ld hl,l34c9
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
	ld (l34c5),hl
	ld (l34c7),hl
	ld a,#0c
	ld c,d
	call l34a5
	ld a,#0d
	ld c,d
	jp l34a5
.l307a
	ld b,#2a
.l307c
	ld (hl),a
	inc hl
	djnz l307c
	ret
;
.stop_music
.l3081
;
	ld a,#07
	ld c,#3f
	call l34a5
	ld a,#08
	ld c,#00
	call l34a5
	ld a,#09
	ld c,#00
	call l34a5
	ld a,#0a
	ld c,#00
	jp l34a5
;
.play_music
.l309d
;
	ld hl,l34cb
	dec (hl)
	ld ix,l35b0
	ld bc,l35be
	call l313f
	ld ix,l35de
	ld bc,l35ec
	call l313f
	ld ix,l360c
	ld bc,l361a
	call l313f
	ld hl,l34c4
	ld de,l34cb
	ld b,#06
	call l311c
	ld b,#07
	call l311c
	ld b,#0b
	call l311c
	ld b,#0d
	call l311c
	ld de,l34cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l35cf
	call l30f5
	ld hl,l35fd
	call l30f5
	ld hl,l362b
.l30f5
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
	jr nz,l310a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l310a
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
.l311c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l34a5
.l3127
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l34a5
.l313f
	ld a,(l34cb)
	or a
	jp nz,l31f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l31f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l3127
	or a
	jp z,l31ec
	ld r,a
	and #7f
	cp #10
	jr c,l31c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l333f
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
	jr z,l31a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l31a0
	rrca
	ld c,a
	ld hl,l3640
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
	jr z,l31bf
	ld (ix+#1e),b
.l31bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l31e0
.l31c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l34d0
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
.l31e0
	ld a,d
	or a
	jr nz,l31ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l31ee
.l31ec
	ld a,(hl)
	inc hl
.l31ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l31f7
	ld a,(ix+#17)
	or a
	jr nz,l320d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l320d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l3223
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l3223
	ld a,(ix+#0d)
	or a
	jr z,l3231
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l324f
.l3231
	ld a,(ix+#1a)
	or a
	jp z,l3256
	ld c,a
	cp #03
	jr nz,l323e
	xor a
.l323e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l324f
	ld a,(ix+#18)
	dec c
	jr z,l324f
	ld a,(ix+#19)
.l324f
	add (ix+#07)
	ld b,d
	call l333f
.l3256
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l327e
	dec (ix+#1b)
	jr nz,l327e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l32b6
.l327e
	ld a,(ix+#29)
	or a
	jr z,l32b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l32ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l32a4
	ld (ix+#29),#ff
	jr l32ad
.l32a4
	cp (ix+#2b)
	jr nz,l32ad
	ld (ix+#29),#01
.l32ad
	ld b,d
	or a
	jp p,l32b3
	dec b
.l32b3
	ld c,a
	jr l32c1
.l32b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l32c1
	pop hl
	bit 7,(ix+#14)
	jr z,l32ca
	ld h,d
	ld l,d
.l32ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l34a5
	ld c,h
	ld a,(ix+#02)
	call l34a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l331d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l330c
	dec (ix+#09)
	jr nz,l330c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l3304
	xor a
	jr l3309
.l3304
	cp #10
	jr nz,l3309
	dec a
.l3309
	ld (ix+#1e),a
.l330c
	ld a,b
	sub (ix+#1e)
	jr nc,l3313
	xor a
.l3313
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l34a5
.l331d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l34cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l333b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l333b
	ld (l34cc),hl
	ret
.l333f
	ld hl,l34ee
	cp #61
	jr nc,l3349
	add a
	ld c,a
	add hl,bc
.l3349
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l3478
	ld (ix+#1e),a
	jp l31e0
	dec b
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l3371
	neg
.l3371
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
	jp l31e0
	dec b
	jr l338b
	inc b
.l338b
	call l3478
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l31e0
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
	jp l345d
	ld a,(hl)
	inc hl
	or a
	jr z,l33cd
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
.l33cd
	ld (ix+#29),a
	jp l31e0
	dec hl
	ld a,(hl)
	and #0f
	ld (l34cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l34ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l31e0
	ld a,(hl)
	or a
	jr z,l33fe
	call l347a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l31e0
.l33fe
	ld hl,#0101
	ld (l34ca),hl
	jp l31e0
	call l3478
	ld (ix+#1e),a
	jp l31e0
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l3489
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l3489
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l31e0
	ld a,(hl)
	inc hl
	ld (l34c9),a
	jp l31e0
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
	jp l31e0
	call l3478
	add a
.l345d
	ld b,#00
	ld c,a
	push hl
	ld hl,l36c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l31e0
.l3478
	ld a,(hl)
	inc hl
.l347a
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
.l3489
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l3640
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l34a5
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
.l34c4
	ret
.l34cc equ $ + 7
.l34cb equ $ + 6
.l34ca equ $ + 5
.l34c9 equ $ + 4
.l34c7 equ $ + 2
.l34c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l34cf equ $ + 2
.l34ce equ $ + 1
	db #38,#00,#00
.l34d0
	db #53,#33,#66,#33,#65,#33,#8a,#33
	db #87,#33,#9a,#33,#ab,#33,#d3,#33
	db #ed,#33,#d3,#33,#07,#34,#10,#34
	db #32,#34,#3a,#34,#59,#34
.l34ee
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
.l35b4 equ $ + 4
.l35b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l35be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l35cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l35de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l35e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l35ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l35fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l360c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l3610
	db #00,#00,#00,#00,#00,#00,#00,#00
.l361a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l362b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l363a equ $ + 2
	db #00,#00,#e0,#39,#0d,#3a,#3a,#3a
.l3640
	db #e0,#36,#20,#37,#40,#37,#1a,#06
	db #60,#37,#a0,#37,#c0,#37,#80,#00
	db #e0,#37,#20,#38,#40,#38,#9a,#06
	db #60,#38,#a0,#38,#40,#37,#48,#00
	db #d2,#ef,#d2,#ef,#d2,#ef,#00,#00
	db #c0,#38,#00,#39,#20,#39,#c0,#00
	db #d2,#ef,#d2,#ef,#d2,#ef,#00,#00
	db #d2,#ef,#d2,#ef,#d2,#ef,#00,#00
	db #d2,#ef,#d2,#ef,#d2,#ef,#00,#00
	db #40,#39,#80,#39,#40,#37,#08,#18
	db #d2,#ef,#d2,#ef,#d2,#ef,#00,#00
	db #d2,#ef,#d2,#ef,#d2,#ef,#00,#00
	db #42,#76,#c2,#4d,#b3,#a8,#03,#60
	db #d8,#e7,#ee,#d0,#5a,#f0,#74,#86
	db #c2,#4d,#b3,#f8,#d2,#4f,#06,#f8
	db #2e,#70,#02,#f3,#32,#f6,#f8,#0c
.l36c0
	db #d2,#1f,#d5,#ef,#d2,#ef,#a0,#39
	db #c0,#39,#d2,#ef,#d2,#ef,#d2,#ef
	db #d2,#ef,#d2,#ef,#d2,#ef,#d2,#ef
	db #d2,#ef,#d2,#e7,#ee,#d0,#0c,#c3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#ff,#ff,#ff,#ff
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #0f,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #90,#01,#e0,#01,#30,#02,#80,#02
	db #d0,#02,#20,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #08,#00,#00,#00,#00,#00,#00,#00
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
	db #0d,#0b,#09,#07,#05,#03,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0f,#0e,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #00,#00,#65,#01,#3e,#01,#00,#00
	db #c3,#04,#65,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0d,#0c,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#06,#07,#07,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#0b,#0b,#0a,#0a
	db #0b,#0b,#0c,#0c,#0b,#0b,#0a,#0a
	db #0b,#0b,#0c,#0c,#0b,#0b,#0a,#0a
	db #0b,#0b,#0c,#0c,#0b,#0b,#0a,#0a
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #f4,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#17,#3c,#00,#80,#3a,#00,#67
	db #3a,#00,#0a,#3b,#00,#67,#3a,#00
	db #0a,#3b,#00,#9c,#3c,#00,#9c,#3c
	db #00,#23,#3b,#00,#9d,#3b,#00,#23
	db #3b,#00,#9d,#3b,#00,#1a,#3c,#00
	db #1a,#3c,#80,#e3,#39,#00,#bb,#3c
	db #00,#bb,#3c,#00,#bb,#3c,#00,#bb
	db #3c,#00,#bb,#3c,#00,#bb,#3c,#00
	db #bb,#3c,#00,#bb,#3c,#00,#bb,#3c
	db #00,#bb,#3c,#00,#bb,#3c,#00,#bb
	db #3c,#00,#bb,#3c,#00,#bb,#3c,#80
	db #10,#3a,#00,#17,#3c,#00,#21,#3d
	db #00,#21,#3d,#00,#21,#3d,#00,#21
	db #3d,#00,#21,#3d,#00,#21,#3d,#00
	db #21,#3d,#00,#21,#3d,#00,#21,#3d
	db #00,#21,#3d,#00,#21,#3d,#00,#21
	db #3d,#00,#21,#3d,#80,#3d,#3a,#4c
	db #9f,#c3,#4e,#90,#04,#4c,#90,#08
	db #47,#90,#08,#49,#90,#0c,#4b,#90
	db #04,#49,#90,#08,#44,#90,#08,#ff
	db #28,#0a,#0f,#02,#a8,#0a,#0f,#a8
	db #0a,#0f,#34,#0a,#0f,#02,#28,#0a
	db #0f,#02,#28,#0a,#0f,#02,#28,#0a
	db #0f,#02,#34,#0a,#0f,#02,#28,#0a
	db #0f,#02,#23,#0a,#14,#02,#a3,#0a
	db #14,#a3,#0a,#14,#2f,#0a,#14,#02
	db #23,#0a,#14,#02,#23,#0a,#14,#02
	db #23,#0a,#14,#02,#2f,#0a,#14,#02
	db #23,#0a,#14,#02,#25,#0a,#12,#02
	db #a5,#0a,#12,#a5,#0a,#12,#31,#0a
	db #12,#02,#25,#0a,#12,#02,#25,#0a
	db #12,#02,#25,#0a,#12,#02,#31,#0a
	db #12,#02,#25,#0a,#12,#02,#20,#0a
	db #18,#02,#a0,#0a,#18,#a0,#0a,#18
	db #2c,#0a,#18,#02,#20,#0a,#18,#02
	db #20,#0a,#18,#02,#20,#0a,#18,#02
	db #2c,#0a,#18,#02,#a0,#0a,#18,#01
	db #10,#ff,#40,#9f,#c3,#42,#90,#04
	db #40,#90,#08,#3b,#90,#08,#3d,#90
	db #0c,#3f,#90,#04,#3d,#90,#08,#38
	db #90,#08,#ff,#40,#0f,#13,#c0,#00
	db #b4,#00,#c0,#00,#b4,#00,#c0,#00
	db #34,#00,#02,#c0,#00,#c0,#00,#b4
	db #00,#c0,#00,#b4,#00,#c0,#00,#34
	db #00,#02,#bb,#00,#bb,#00,#af,#00
	db #bb,#00,#af,#00,#bb,#00,#2f,#00
	db #02,#bb,#00,#bb,#00,#af,#00,#bb
	db #00,#af,#00,#bb,#00,#2f,#00,#02
	db #bd,#00,#bd,#00,#b1,#00,#bd,#00
	db #b1,#00,#bd,#00,#31,#00,#02,#bd
	db #00,#bd,#00,#b1,#00,#bd,#00,#b1
	db #00,#bd,#00,#31,#00,#02,#b8,#00
	db #b8,#00,#ac,#00,#b8,#00,#ac,#00
	db #b8,#00,#2c,#00,#02,#b8,#00,#b8
	db #00,#ac,#00,#b8,#00,#ac,#00,#b8
	db #00,#2c,#00,#02,#ff,#34,#0f,#13
	db #b4,#00,#a8,#00,#b4,#00,#a8,#00
	db #b4,#00,#28,#00,#02,#b4,#00,#b4
	db #00,#a8,#00,#b4,#00,#a8,#00,#b4
	db #00,#28,#00,#02,#af,#00,#af,#00
	db #a3,#00,#af,#00,#a3,#00,#af,#00
	db #23,#00,#02,#af,#00,#af,#00,#a3
	db #00,#af,#00,#a3,#00,#af,#00,#23
	db #00,#02,#b1,#00,#b1,#00,#a5,#00
	db #b1,#00,#a5,#00,#b1,#00,#25,#00
	db #02,#b1,#00,#b1,#00,#a5,#00,#b1
	db #00,#a5,#00,#b1,#00,#25,#00,#02
	db #ac,#00,#ac,#00,#a0,#00,#ac,#00
	db #a0,#00,#ac,#00,#20,#00,#02,#ac
	db #00,#ac,#00,#a0,#00,#ac,#00,#a0
	db #00,#ac,#00,#20,#00,#02,#ff,#00
	db #40,#ff,#40,#0f,#14,#fe,#01,#c0
	db #00,#c0,#00,#c4,#00,#fe,#01,#c0
	db #00,#fe,#01,#c4,#00,#fe,#01,#c0
	db #00,#fe,#01,#c4,#00,#fe,#01,#c0
	db #00,#fe,#01,#bb,#00,#fe,#01,#bb
	db #00,#bb,#00,#bf,#00,#fe,#01,#bb
	db #00,#fe,#01,#bf,#00,#fe,#01,#bb
	db #00,#fe,#01,#bf,#00,#fe,#01,#bb
	db #00,#fe,#01,#bd,#00,#fe,#01,#bd
	db #00,#bd,#00,#c0,#00,#fe,#01,#bd
	db #00,#fe,#01,#c0,#00,#fe,#01,#bd
	db #00,#fe,#01,#c0,#00,#fe,#01,#bd
	db #00,#fe,#01,#b8,#00,#fe,#01,#b8
	db #00,#b8,#00,#bb,#00,#fe,#01,#b8
	db #00,#fe,#01,#bb,#00,#fe,#01,#b8
	db #00,#fe,#01,#bb,#00,#fe,#01,#b8
	db #00,#fe,#01,#ff,#40,#90,#0c,#3f
	db #90,#02,#3d,#90,#02,#3b,#90,#0c
	db #3b,#90,#02,#3c,#90,#02,#3d,#90
	db #0c,#3d,#90,#02,#3b,#90,#02,#38
	db #90,#10,#ff,#28,#3f,#23,#a8,#37
	db #12,#a8,#30,#34,#30,#02,#28,#30
	db #02,#28,#30,#02,#28,#30,#02,#34
	db #30,#02,#28,#30,#02,#23,#30,#02
	db #a3,#30,#a3,#30,#2f,#30,#02,#23
	db #30,#02,#23,#30,#02,#23,#30,#02
	db #2f,#30,#02,#23,#30,#02,#25,#30
	db #02,#a5,#30,#a5,#30,#31,#30,#02
	db #25,#30,#02,#25,#30,#02,#25,#30
	db #02,#31,#30,#02,#25,#30,#02,#20
	db #30,#02,#a0,#30,#a0,#30,#2c,#30
	db #02,#20,#30,#02,#20,#30,#02,#20
	db #30,#02,#2c,#30,#02,#20,#30,#02
	db #ff,#bf,#10,#f4,#20,#f4,#20,#f4
	db #20,#bf,#50,#f4,#20,#f4,#20,#f4
	db #20,#bf,#10,#bf,#10,#f4,#20,#bf
	db #10,#bf,#50,#f4,#20,#f4,#20,#f4
	db #20,#bf,#10,#f4,#20,#f4,#20,#f4
	db #20,#bf,#50,#f4,#20,#f4,#20,#f4
	db #20,#bf,#10,#bf,#10,#f4,#20,#bf
	db #10,#bf,#50,#f4,#20,#bf,#10,#f4
	db #20,#bf,#10,#f4,#20,#f4,#20,#f4
	db #20,#bf,#50,#f4,#20,#f4,#20,#f4
	db #20,#bf,#10,#bf,#10,#f4,#20,#bf
	db #10,#bf,#50,#f4,#20,#f4,#20,#f4
	db #20,#bf,#10,#f4,#20,#f4,#20,#f4
	db #20,#bf,#50,#f4,#20,#f4,#20,#f4
	db #20,#bf,#10,#bf,#10,#f4,#20,#bf
	db #10,#bf,#50,#bf,#50,#bf,#50,#bf
	db #50,#ff
;
.music_info
	db "Soundtrakker CPC Volume 4 (1995)(Power System)(Epsilon)",0
	db "ST-128 Module",0

	read "music_end.asm"
