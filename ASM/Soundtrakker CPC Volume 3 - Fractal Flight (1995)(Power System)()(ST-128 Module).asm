; Music of Soundtrakker CPC Volume 3 - Fractal Flight (1995)(Power System)()(ST-128 Module)
; Ripped by Megachur the 01/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SOUCV3FF.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8500

	read "music_header.asm"

	jp l8509
	jp l859d
	jp l8581
;
.init_music
.l8509
;
	xor a
	ld hl,l8ab4
	call l857a
	ld hl,l8ae2
	call l857a
	ld hl,l8b10
	call l857a
	ld ix,l8ab0
	ld iy,l8b3a
	ld de,#002e
	ld b,#03
.l8529
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
	djnz l8529
	ld hl,l89c9
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
	ld (l89c5),hl
	ld (l89c7),hl
	ld a,#0c
	ld c,d
	call l89a5
	ld a,#0d
	ld c,d
	jp l89a5
.l857a
	ld b,#2a
.l857c
	ld (hl),a
	inc hl
	djnz l857c
	ret
;
.stop_music
.l8581
;
	ld a,#07
	ld c,#3f
	call l89a5
	ld a,#08
	ld c,#00
	call l89a5
	ld a,#09
	ld c,#00
	call l89a5
	ld a,#0a
	ld c,#00
	jp l89a5
;
.play_music
.l859d
;
	ld hl,l89cb
	dec (hl)
	ld ix,l8ab0
	ld bc,l8abe
	call l863f
	ld ix,l8ade
	ld bc,l8aec
	call l863f
	ld ix,l8b0c
	ld bc,l8b1a
	call l863f
	ld hl,l89c4
	ld de,l89cb
	ld b,#06
	call l861c
	ld b,#07
	call l861c
	ld b,#0b
	call l861c
	ld b,#0d
	call l861c
	ld de,l89cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,l8acf
	call l85f5
	ld hl,l8afd
	call l85f5
	ld hl,l8b2b
.l85f5
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
	jr nz,l860a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l860a
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
.l861c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l89a5
.l8627
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l89a5
.l863f
	ld a,(l89cb)
	or a
	jp nz,l86f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l86f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l8627
	or a
	jp z,l86ec
	ld r,a
	and #7f
	cp #10
	jr c,l86c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l883f
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
	jr z,l86a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l86a0
	rrca
	ld c,a
	ld hl,l8b40
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
	jr z,l86bf
	ld (ix+#1e),b
.l86bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l86e0
.l86c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l89d0
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
	add a
	add a
	add h
	add (hl)
.l86e0
	ld a,d
	or a
	jr nz,l86ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l86ee
.l86ec
	ld a,(hl)
	inc hl
.l86ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l86f7
	ld a,(ix+#17)
	or a
	jr nz,l870d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l870d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l8723
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l8723
	ld a,(ix+#0d)
	or a
	jr z,l8731
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l874f
.l8731
	ld a,(ix+#1a)
	or a
	jp z,l8756
	ld c,a
	cp #03
	jr nz,l873e
	xor a
.l873e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l874f
	ld a,(ix+#18)
	dec c
	jr z,l874f
	ld a,(ix+#19)
.l874f
	add (ix+#07)
	ld b,d
	call l883f
.l8756
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l877e
	dec (ix+#1b)
	jr nz,l877e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l87b6
.l877e
	ld a,(ix+#29)
	or a
	jr z,l87b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l87ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l87a4
	ld (ix+#29),#ff
	jr l87ad
.l87a4
	cp (ix+#2b)
	jr nz,l87ad
	ld (ix+#29),#01
.l87ad
	ld b,d
	or a
	jp p,l87b3
	dec b
.l87b3
	ld c,a
	jr l87c1
.l87b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l87c1
	pop hl
	bit 7,(ix+#14)
	jr z,l87ca
	ld h,d
	ld l,d
.l87ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l89a5
	ld c,h
	ld a,(ix+#02)
	call l89a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l881d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l880c
	dec (ix+#09)
	jr nz,l880c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l8804
	xor a
	jr l8809
.l8804
	cp #10
	jr nz,l8809
	dec a
.l8809
	ld (ix+#1e),a
.l880c
	ld a,b
	sub (ix+#1e)
	jr nc,l8813
	xor a
.l8813
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l89a5
.l881d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l89cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l883b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l883b
	ld (l89cc),hl
	ret
.l883f
	ld hl,l89ee
	cp #61
	jr nc,l8849
	add a
	ld c,a
	add hl,bc
.l8849
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l8978
	ld (ix+#1e),a
	jp l86e0
	dec b
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l8871
	neg
.l8871
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
	jp l86e0
	dec b
	jr l888b
	inc b
.l888b
	call l8978
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l86e0
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
	jp l895d
	ld a,(hl)
	inc hl
	or a
	jr z,l88cd
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
.l88cd
	ld (ix+#29),a
	jp l86e0
	dec hl
	ld a,(hl)
	and #0f
	ld (l89cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l89ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l86e0
	ld a,(hl)
	or a
	jr z,l88fe
	call l897a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l86e0
.l88fe
	ld hl,#0101
	ld (l89ca),hl
	jp l86e0
	call l8978
	ld (ix+#1e),a
	jp l86e0
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l8989
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l8989
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l86e0
	ld a,(hl)
	inc hl
	ld (l89c9),a
	jp l86e0
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
	jp l86e0
	call l8978
	add a
.l895d
	ld b,#00
	ld c,a
	push hl
	ld hl,l8bc0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l86e0
.l8978
	ld a,(hl)
	inc hl
.l897a
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
.l8989
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l8b40
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l89a5
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
.l89c4
	ret
.l89cc equ $ + 7
.l89cb equ $ + 6
.l89ca equ $ + 5
.l89c9 equ $ + 4
.l89c7 equ $ + 2
.l89c5
	db #01,#38,#0a,#08,#06,#04,#00,#06
.l89cf equ $ + 2
.l89ce equ $ + 1
	db #28,#14,#08
.l89d0
	db #53,#88,#66,#88,#65,#88,#8a,#88
	db #87,#88,#9a,#88,#ab,#88,#d3,#88
	db #ed,#88,#d3,#88,#07,#89,#10,#89
	db #32,#89,#3a,#89,#59,#89
.l89ee
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
.l8ab4 equ $ + 4
.l8ab0
	db #08,#00,#01,#08,#bc,#03,#10,#18
.l8abe equ $ + 6
	db #00,#00,#00,#00,#00,#00,#40,#8f
	db #80,#8f,#40,#8e,#00,#00,#01,#1f
.l8acf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#04
	db #6c,#90,#af,#8f,#00,#80,#00,#00
.l8ade equ $ + 6
	db #00,#00,#00,#00,#01,#01,#09,#02
.l8ae2 equ $ + 2
	db #03,#10,#bc,#03,#00,#18,#00,#00
.l8aec equ $ + 4
	db #00,#00,#00,#00,#60,#8c,#a0,#8c
	db #c0,#8c,#00,#00,#01,#1f,#00,#00
.l8afd equ $ + 5
	db #00,#00,#00,#00,#00,#01,#4d,#91
	db #e5,#8f,#00,#10,#00,#00,#00,#00
.l8b0c equ $ + 4
	db #00,#00,#01,#01,#0a,#04,#05,#20
.l8b10
	db #d5,#00,#00,#32,#00,#00,#00,#00
.l8b1a equ $ + 2
	db #00,#00,#e0,#8d,#20,#8e,#40,#8e
	db #00,#00,#00,#20,#00,#00,#00,#00
.l8b2b equ $ + 3
	db #00,#00,#00,#00,#0f,#92,#1b,#90
	db #00,#40,#00,#00,#00,#00,#00,#00
.l8b3a equ $ + 2
	db #01,#01,#a0,#8f,#d6,#8f,#0c,#90
.l8b40
	db #e0,#8b,#20,#8c,#40,#8c,#00,#00
	db #60,#8c,#a0,#8c,#c0,#8c,#00,#00
	db #e0,#8c,#20,#8d,#40,#8d,#00,#00
	db #60,#8d,#a0,#8d,#c0,#8d,#00,#00
	db #e0,#8d,#20,#8e,#40,#8e,#00,#00
	db #60,#8e,#a0,#8e,#c0,#8e,#1a,#00
	db #e0,#8e,#20,#8f,#40,#8e,#00,#00
	db #d1,#44,#d2,#44,#d2,#44,#ff,#ff
	db #40,#8f,#80,#8f,#40,#8e,#00,#00
	db #d1,#44,#d2,#44,#d2,#44,#ff,#ff
	db #d1,#44,#d2,#44,#d2,#44,#ff,#ff
	db #d1,#44,#d2,#44,#d2,#44,#ff,#ff
	db #d1,#44,#d2,#44,#d2,#44,#ff,#ff
	db #d1,#44,#d2,#44,#d2,#44,#ff,#ff
	db #d1,#44,#d2,#44,#d2,#44,#ff,#ff
	db #d1,#44,#d2,#44,#d2,#44,#ff,#ff
.l8bc0
	db #d1,#44,#d2,#44,#d2,#44,#d1,#44
	db #d1,#44,#d2,#44,#d2,#44,#d1,#44
	db #d1,#44,#d1,#44,#d1,#44,#d2,#44
	db #d2,#44,#d1,#44,#d1,#44,#d2,#44
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#00,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #38,#00,#60,#00,#b0,#00,#18,#01
	db #48,#01,#80,#01,#c8,#01,#10,#02
	db #58,#02,#b0,#02,#00,#00,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0c,#0b,#09,#07
	db #06,#03,#01,#00,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#06,#06,#05,#04,#04,#03,#02
	db #01,#00,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#80,#00,#00,#01,#80,#01
	db #00,#02,#80,#02,#00,#03,#00,#04
	db #00,#00,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0b,#09,#07,#04,#01
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0a,#0a,#09,#0e,#05,#0a,#07,#03
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#00,#0c,#00,#0c,#00,#00,#00
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0a,#04,#00,#00,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#00,#00,#00,#00,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #0f,#0e,#0c,#09,#07,#05,#0d,#0c
	db #0b,#0a,#09,#08,#07,#05,#06,#07
	db #08,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#ff,#ff,#fe,#ff
	db #fd,#ff,#fe,#ff,#ff,#ff,#01,#00
	db #03,#00,#05,#00,#03,#00,#01,#00
	db #ff,#ff,#fd,#ff,#fb,#ff,#fd,#ff
	db #ff,#ff,#01,#00,#04,#00,#07,#00
	db #04,#00,#01,#00,#ff,#ff,#fc,#ff
	db #f9,#ff,#fc,#ff,#ff,#ff,#00,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0b,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0c,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#fe,#ff,#fd,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#03,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#fd,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#03,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#fd,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#0b,#0a,#08,#06
	db #06,#07,#08,#09,#09,#09,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#03,#02,#02,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#86,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#42,#90,#00,#42,#90,#00,#42
	db #90,#00,#42,#90,#00,#42,#90,#00
	db #42,#90,#00,#42,#90,#00,#42,#90
	db #00,#42,#90,#00,#42,#90,#00,#42
	db #90,#00,#42,#90,#00,#42,#90,#00
	db #42,#90,#00,#6d,#90,#00,#6d,#90
	db #00,#42,#90,#80,#a3,#8f,#00,#a1
	db #90,#00,#a1,#90,#00,#d2,#90,#00
	db #d2,#90,#00,#13,#91,#00,#13,#91
	db #00,#13,#91,#00,#13,#91,#00,#54
	db #91,#00,#54,#91,#00,#13,#91,#00
	db #13,#91,#00,#13,#91,#00,#13,#91
	db #00,#13,#91,#00,#9c,#91,#00,#13
	db #91,#80,#d9,#8f,#00,#e1,#91,#00
	db #e1,#91,#00,#e4,#91,#00,#e4,#91
	db #00,#e7,#91,#00,#e7,#91,#00,#16
	db #92,#00,#e7,#91,#00,#3d,#92,#00
	db #3d,#92,#00,#b0,#92,#00,#6f,#92
	db #00,#6f,#92,#00,#e0,#92,#00,#21
	db #93,#00,#6f,#92,#00,#21,#93,#80
	db #0f,#90,#31,#88,#18,#03,#fe,#01
	db #31,#88,#18,#04,#fe,#02,#a9,#88
	db #1c,#fe,#01,#29,#88,#1c,#04,#33
	db #88,#15,#03,#fe,#01,#33,#88,#15
	db #04,#fe,#02,#b4,#88,#0a,#fe,#01
	db #28,#88,#14,#04,#ff,#31,#88,#18
	db #04,#af,#68,#10,#b1,#68,#12,#27
	db #68,#1f,#02,#29,#68,#1c,#03,#a8
	db #68,#1e,#a7,#68,#1f,#a6,#68,#22
	db #25,#68,#23,#02,#27,#68,#1f,#04
	db #ac,#68,#10,#a1,#68,#16,#ac,#68
	db #10,#aa,#68,#1b,#28,#68,#1e,#08
	db #ff,#28,#81,#20,#28,#80,#02,#28
	db #80,#02,#28,#80,#02,#a9,#80,#29
	db #80,#02,#29,#80,#02,#a9,#80,#29
	db #80,#02,#29,#80,#02,#33,#80,#02
	db #33,#80,#02,#33,#80,#02,#b3,#80
	db #28,#80,#02,#28,#80,#02,#28,#80
	db #03,#ff,#c9,#30,#bd,#30,#a8,#80
	db #b1,#30,#a8,#80,#bd,#30,#a8,#80
	db #c9,#30,#a9,#00,#a9,#80,#b5,#30
	db #a9,#80,#a9,#30,#a9,#80,#a9,#80
	db #c1,#30,#a9,#00,#bf,#30,#b3,#80
	db #b3,#30,#b3,#80,#d7,#30,#b3,#80
	db #cb,#30,#b3,#00,#a8,#80,#b4,#30
	db #a8,#80,#a8,#10,#a8,#80,#a8,#10
	db #a8,#20,#ff,#c9,#30,#bd,#30,#a8
	db #80,#b1,#30,#a8,#10,#bd,#30,#a8
	db #80,#c9,#30,#a9,#00,#a9,#80,#b5
	db #30,#a9,#80,#a9,#10,#a9,#80,#a9
	db #10,#c1,#30,#a9,#00,#bf,#30,#b3
	db #80,#b3,#30,#b3,#10,#d7,#30,#b3
	db #80,#cb,#30,#b3,#00,#a8,#80,#b4
	db #30,#a8,#80,#a8,#10,#a8,#80,#a8
	db #10,#a8,#20,#ff,#c9,#30,#bd,#30
	db #a8,#80,#b1,#30,#a8,#10,#bd,#30
	db #a8,#80,#c9,#30,#a9,#00,#a9,#80
	db #b5,#30,#a9,#80,#a9,#10,#a9,#80
	db #a9,#10,#c1,#30,#a9,#00,#bf,#30
	db #b3,#80,#b3,#30,#b3,#10,#d7,#30
	db #b3,#80,#cb,#30,#b3,#00,#28,#1b
	db #16,#34,#1b,#15,#28,#1b,#14,#28
	db #1b,#13,#28,#1b,#12,#28,#1b,#11
	db #28,#1b,#10,#ff,#c9,#30,#bd,#30
	db #a8,#80,#b1,#30,#a8,#10,#bd,#30
	db #a8,#80,#c9,#30,#a9,#00,#a9,#80
	db #b5,#30,#a9,#80,#a9,#10,#a9,#80
	db #a9,#10,#c1,#30,#a9,#00,#bf,#30
	db #b3,#80,#b3,#30,#b3,#10,#d7,#30
	db #b3,#80,#cb,#30,#b3,#00,#a8,#80
	db #b4,#30,#a8,#80,#28,#1b,#12,#28
	db #1b,#11,#28,#1b,#10,#28,#1b,#10
	db #ff,#fe,#20,#ff,#00,#20,#ff,#49
	db #40,#02,#44,#60,#02,#3d,#60,#02
	db #c4,#60,#49,#40,#03,#44,#60,#02
	db #3d,#60,#02,#44,#60,#02,#49,#40
	db #02,#45,#60,#02,#c4,#60,#45,#60
	db #03,#45,#40,#02,#44,#40,#02,#42
	db #40,#02,#44,#40,#02,#ff,#49,#50
	db #02,#49,#40,#04,#c9,#40,#c9,#40
	db #42,#50,#05,#c2,#40,#c2,#40,#c2
	db #40,#4a,#50,#02,#4a,#40,#04,#ca
	db #40,#ca,#40,#49,#50,#02,#49,#40
	db #03,#49,#40,#03,#ff,#49,#50,#02
	db #44,#50,#02,#3d,#50,#04,#b8,#50
	db #b8,#40,#b8,#50,#b8,#40,#b8,#50
	db #b8,#40,#b9,#40,#b8,#50,#38,#50
	db #02,#36,#50,#02,#35,#50,#02,#36
	db #50,#02,#38,#50,#02,#b8,#40,#b8
	db #50,#b8,#40,#38,#40,#03,#ff,#c9
	db #50,#c4,#50,#c0,#50,#c4,#50,#c9
	db #50,#c4,#50,#bd,#50,#c4,#50,#c9
	db #50,#c5,#50,#c4,#50,#bd,#50,#c5
	db #50,#c4,#50,#c0,#50,#c5,#50,#c2
	db #50,#bb,#50,#bf,#50,#bb,#50,#b6
	db #50,#ba,#50,#bd,#50,#c2,#50,#bf
	db #50,#bb,#50,#b8,#50,#bb,#50,#c0
	db #50,#c2,#50,#c0,#50,#bf,#40,#ff
	db #c9,#60,#c4,#60,#c0,#60,#b8,#60
	db #3d,#60,#04,#49,#60,#08,#c9,#60
	db #c5,#60,#c4,#60,#45,#60,#02,#44
	db #60,#03,#4b,#60,#02,#34,#1b,#14
	db #34,#1b,#13,#28,#1b,#12,#28,#1b
	db #11,#1c,#1b,#10,#1c,#1b,#10,#ff
	db #bd,#50,#c4,#40,#c9,#50,#c4,#50
	db #bd,#50,#c4,#40,#c9,#50,#c4,#50
	db #c5,#50,#ca,#40,#cc,#50,#ca,#50
	db #c5,#50,#ca,#40,#cb,#50,#ca,#50
	db #c7,#50,#c5,#40,#c4,#50,#bf,#50
	db #d0,#50,#cf,#40,#cb,#50,#c6,#50
	db #d3,#50,#d2,#40,#c4,#40,#c2,#50
	db #c7,#50,#cc,#20,#c0,#20,#c0,#40
	db #ff,#49,#60,#02,#44,#60,#02,#c0
	db #60,#44,#60,#03,#49,#60,#02,#45
	db #60,#02,#c4,#60,#45,#60,#03,#42
	db #60,#02,#3f,#60,#02,#47,#60,#02
	db #44,#60,#02,#44,#60,#02,#47,#60
	db #02,#4c,#60,#02,#4b,#60,#02,#ff
;
.music_info
	db "Soundtrakker CPC Volume 3 - Fractal Flight (1995)(Power System)()",0
	db "ST-128 Module",0

	read "music_end.asm"
