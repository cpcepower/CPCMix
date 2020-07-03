; Music of Apocalypse The Last Chance - Preview v3.0 (1993)(Public Domain)()(ST-128 Module)
; Ripped by Megachur the 05/09/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "APOTLCP3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6000

	read "music_header.asm"

	jp l6009
	jp l609d
	jp l6081
;
.init_music
.l6009
;
	xor a
	ld hl,l65b4
	call l607a
	ld hl,l65e2
	call l607a
	ld hl,l6610
	call l607a
	ld ix,l65b0
	ld iy,l663a
	ld de,#002e
	ld b,#03
.l6029
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
	djnz l6029
	ld hl,l64c9
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
	ld (l64c5),hl
	ld (l64c7),hl
	ld a,#0c
	ld c,d
	call l64a5
	ld a,#0d
	ld c,d
	jp l64a5
.l607a
	ld b,#2a
.l607c
	ld (hl),a
	inc hl
	djnz l607c
	ret
;
.stop_music
.l6081
;
	ld a,#07
	ld c,#3f
	call l64a5
	ld a,#08
	ld c,#00
	call l64a5
	ld a,#09
	ld c,#00
	call l64a5
	ld a,#0a
	ld c,#00
	jp l64a5
;
.play_music
.l609d
;
	ld hl,l64cb
	dec (hl)
	ld ix,l65b0
	ld bc,l65be
	call l613f
	ld ix,l65de
	ld bc,l65ec
	call l613f
	ld ix,l660c
	ld bc,l661a
	call l613f
	ld hl,l64c4
	ld de,l64cb
	ld b,#06
	call l611c
	ld b,#07
	call l611c
	ld b,#0b
	call l611c
	ld b,#0d
	call l611c
	ld de,l64cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,l65cf
	call l60f5
	ld hl,l65fd
	call l60f5
	ld hl,l662b
.l60f5
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
	jr nz,l610a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l610a
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
.l611c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l64a5
.l6127
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l64a5
.l613f
	ld a,(l64cb)
	or a
	jp nz,l61f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l61f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l6127
	or a
	jp z,l61ec
	ld r,a
	and #7f
	cp #10
	jr c,l61c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l633f
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
	jr z,l61a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l61a0
	rrca
	ld c,a
	ld hl,l6640
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
	jr z,l61bf
	ld (ix+#1e),b
.l61bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l61e0
.l61c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l64d0
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
.l61e0
	ld a,d
	or a
	jr nz,l61ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l61ee
.l61ec
	ld a,(hl)
	inc hl
.l61ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l61f7
	ld a,(ix+#17)
	or a
	jr nz,l620d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l620d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l6223
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l6223
	ld a,(ix+#0d)
	or a
	jr z,l6231
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l624f
.l6231
	ld a,(ix+#1a)
	or a
	jp z,l6256
	ld c,a
	cp #03
	jr nz,l623e
	xor a
.l623e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l624f
	ld a,(ix+#18)
	dec c
	jr z,l624f
	ld a,(ix+#19)
.l624f
	add (ix+#07)
	ld b,d
	call l633f
.l6256
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l627e
	dec (ix+#1b)
	jr nz,l627e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l62b6
.l627e
	ld a,(ix+#29)
	or a
	jr z,l62b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l62ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l62a4
	ld (ix+#29),#ff
	jr l62ad
.l62a4
	cp (ix+#2b)
	jr nz,l62ad
	ld (ix+#29),#01
.l62ad
	ld b,d
	or a
	jp p,l62b3
	dec b
.l62b3
	ld c,a
	jr l62c1
.l62b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l62c1
	pop hl
	bit 7,(ix+#14)
	jr z,l62ca
	ld h,d
	ld l,d
.l62ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l64a5
	ld c,h
	ld a,(ix+#02)
	call l64a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l631d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l630c
	dec (ix+#09)
	jr nz,l630c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l6304
	xor a
	jr l6309
.l6304
	cp #10
	jr nz,l6309
	dec a
.l6309
	ld (ix+#1e),a
.l630c
	ld a,b
	sub (ix+#1e)
	jr nc,l6313
	xor a
.l6313
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l64a5
.l631d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l64cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l633b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l633b
	ld (l64cc),hl
	ret
.l633f
	ld hl,l64ee
	cp #61
	jr nc,l6349
	add a
	ld c,a
	add hl,bc
.l6349
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l6353
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6478
	ld (ix+#1e),a
	jp l61e0
.l6365
	dec b
.l6366
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l6371
	neg
.l6371
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
	jp l61e0
.l6387
	dec b
	jr l638b
.l638a
	inc b
.l638b
	call l6478
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l61e0
.l639a
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
	jp l645d
.l63ab
	ld a,(hl)
	inc hl
	or a
	jr z,l63cd
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
.l63cd
	ld (ix+#29),a
	jp l61e0
.l63d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l64cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l64ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l61e0
.l63ed
	ld a,(hl)
	or a
	jr z,l63fe
	call l647a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l61e0
.l63fe
	ld hl,#0101
	ld (l64ca),hl
	jp l61e0
.l6407
	call l6478
	ld (ix+#1e),a
	jp l61e0
.l6410
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l6489
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l6489
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l61e0
.l6432
	ld a,(hl)
	inc hl
	ld (l64c9),a
	jp l61e0
.l643a
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
	jp l61e0
.l6459
	call l6478
	add a
.l645d
	ld b,#00
	ld c,a
	push hl
	ld hl,l66c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l61e0
.l6478
	ld a,(hl)
	inc hl
.l647a
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
.l6489
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l6640
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	ld d,e
	ld d,h
	dec l
	ld sp,#3832
	jr nz,l64ed
	ld l,a
	ld h,h
	ld (hl),l
	ld l,h
	ld h,l
.l64a5
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
.l64c4
	ret
.l64cc equ $ + 7
.l64cb equ $ + 6
.l64ca equ $ + 5
.l64c9 equ $ + 4
.l64c7 equ $ + 2
.l64c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l64cf equ $ + 2
.l64ce equ $ + 1
	db #38,#00,#00
.l64d0
	dw l6353,l6366,l6365,l638a
	dw l6387,l639a,l63ab,l63d3
	dw l63ed,l63d3,l6407,l6410
.l64ed equ $ + 5
	dw l6432,l643a,l6459
.l64ee
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
.l65b4 equ $ + 4
.l65b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l65be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l65cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l65de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l65e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l65ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l65fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l660c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l6610
	db #00,#00,#00,#00,#00,#00,#00,#00
.l661a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l662b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l663a equ $ + 2
	db #00,#00,#c0,#69,#f9,#69,#32,#6a
.l6640
	db #e0,#66,#20,#67,#40,#67,#00,#00
	db #60,#67,#a0,#67,#c0,#67,#00,#00
	db #d2,#1f,#d2,#1f,#d2,#1f,#00,#00
	db #d2,#1f,#d2,#1f,#d2,#1f,#00,#00
	db #e0,#67,#20,#68,#40,#68,#08,#18
	db #d2,#1f,#d2,#1f,#d2,#1f,#00,#00
	db #e0,#67,#60,#68,#40,#68,#00,#00
	db #e0,#67,#80,#68,#40,#68,#00,#00
	db #e0,#67,#a0,#68,#40,#68,#00,#00
	db #c0,#68,#00,#69,#40,#68,#08,#18
	db #20,#69,#60,#69,#40,#68,#18,#08
	db #d2,#1f,#d2,#1f,#d2,#1f,#00,#00
	db #d2,#1f,#d2,#1f,#d2,#1f,#00,#00
	db #d2,#1f,#d2,#1f,#d2,#1f,#00,#00
	db #d2,#1f,#d2,#1f,#d2,#1f,#00,#00
	db #d2,#1f,#d2,#1f,#d2,#1f,#00,#00
.l66c0
	db #d2,#1f,#80,#69,#d2,#1f,#d2,#1f
	db #a0,#69,#d2,#1f,#d2,#1f,#d2,#1f
	db #d2,#1f,#d2,#1f,#d2,#1f,#d2,#1f
	db #d2,#1f,#d2,#1f,#d2,#1f,#d2,#1f
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
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
	db #0f,#0f,#0e,#0e,#0d,#0c,#0b,#0a
	db #0a,#09,#09,#08,#07,#06,#06,#06
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0d,#0c,#0b,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0e,#0f,#0e,#0d,#0c,#0b,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#00
	db #0e,#0e,#0d,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#09,#08,#08,#08,#07,#07
	db #07,#06,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#01,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0d,#0c,#8b,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#fd,#ff,#fc,#ff
	db #fb,#ff,#fa,#ff,#f9,#ff,#f8,#ff
	db #f6,#ff,#f7,#ff,#f7,#ff,#f7,#ff
	db #f8,#ff,#f7,#ff,#f7,#ff,#f7,#ff
	db #09,#0b,#0d,#0c,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#6b,#6a,#00,#7e,#6a,#00,#99
	db #6a,#00,#d0,#6a,#00,#99,#6a,#00
	db #d0,#6a,#00,#99,#6a,#00,#d0,#6a
	db #00,#99,#6a,#00,#d0,#6a,#00,#99
	db #6a,#00,#d0,#6a,#00,#99,#6a,#00
	db #d0,#6a,#00,#99,#6a,#00,#d0,#6a
	db #00,#99,#6a,#00,#d0,#6a,#80,#c0
	db #69,#00,#07,#6b,#00,#07,#6b,#00
	db #07,#6b,#00,#07,#6b,#00,#07,#6b
	db #00,#07,#6b,#00,#07,#6b,#00,#07
	db #6b,#00,#07,#6b,#00,#07,#6b,#00
	db #07,#6b,#00,#07,#6b,#00,#07,#6b
	db #00,#07,#6b,#00,#07,#6b,#00,#07
	db #6b,#00,#07,#6b,#00,#07,#6b,#80
	db #f9,#69,#00,#34,#6b,#00,#5c,#6b
	db #00,#88,#6b,#00,#b8,#6b,#00,#e8
	db #6b,#00,#fe,#6b,#00,#88,#6b,#00
	db #b8,#6b,#00,#43,#6c,#00,#8e,#6c
	db #00,#14,#6c,#00,#2b,#6c,#00,#d9
	db #6c,#00,#ee,#6c,#00,#e8,#6b,#00
	db #fe,#6b,#00,#e8,#6b,#00,#0b,#6d
	db #80,#32,#6a,#4c,#4f,#81,#47,#40
	db #08,#45,#60,#02,#45,#60,#04,#45
	db #60,#02,#47,#40,#08,#ff,#4c,#4f
	db #81,#47,#40,#08,#45,#60,#02,#45
	db #60,#04,#45,#60,#02,#47,#60,#04
	db #4c,#7f,#14,#d0,#70,#51,#70,#02
	db #ff,#40,#01,#20,#4c,#6f,#21,#40
	db #11,#20,#4c,#6f,#21,#40,#00,#02
	db #47,#6f,#21,#40,#11,#20,#47,#6f
	db #11,#40,#11,#10,#40,#00,#02,#45
	db #6f,#21,#40,#11,#20,#45,#6f,#21
	db #40,#00,#02,#47,#6f,#21,#40,#11
	db #20,#47,#6f,#11,#40,#11,#10,#ff
	db #40,#00,#02,#4c,#6f,#21,#40,#11
	db #20,#4c,#6f,#21,#40,#00,#02,#47
	db #6f,#21,#40,#11,#20,#47,#6f,#11
	db #40,#11,#10,#40,#00,#02,#45,#6f
	db #21,#40,#11,#20,#45,#6f,#21,#40
	db #01,#10,#c0,#10,#47,#6f,#21,#40
	db #11,#20,#c0,#10,#c0,#10,#ff,#34
	db #8f,#34,#b4,#80,#34,#80,#02,#34
	db #80,#02,#2f,#80,#03,#af,#80,#2f
	db #80,#02,#2f,#80,#02,#2d,#80,#03
	db #ad,#80,#2d,#80,#02,#2d,#80,#02
	db #2f,#80,#03,#af,#80,#2f,#80,#02
	db #2f,#80,#02,#ff,#40,#0d,#06,#04
	db #40,#10,#03,#c0,#00,#40,#00,#02
	db #40,#00,#02,#40,#10,#03,#c0,#10
	db #40,#00,#04,#40,#10,#03,#c0,#00
	db #40,#00,#02,#40,#00,#02,#40,#10
	db #03,#c0,#10,#ff,#40,#00,#04,#40
	db #10,#03,#c0,#00,#40,#00,#02,#40
	db #00,#02,#40,#10,#03,#c0,#10,#40
	db #00,#04,#40,#10,#03,#c0,#00,#c0
	db #10,#c0,#10,#c0,#10,#c0,#10,#c0
	db #10,#c0,#10,#c0,#10,#c0,#10,#ff
	db #53,#7f,#24,#53,#70,#02,#53,#70
	db #02,#d0,#70,#4e,#70,#03,#4e,#70
	db #02,#4e,#70,#02,#d0,#70,#ce,#70
	db #4c,#70,#02,#4c,#70,#02,#4c,#70
	db #02,#49,#70,#02,#d1,#70,#51,#70
	db #03,#50,#70,#02,#4e,#70,#02,#ff
	db #53,#70,#02,#53,#70,#02,#53,#70
	db #02,#d0,#70,#4e,#70,#03,#4e,#70
	db #02,#4e,#70,#02,#d0,#70,#ce,#70
	db #4c,#70,#02,#4c,#70,#02,#4c,#70
	db #02,#49,#70,#02,#d1,#70,#53,#70
	db #03,#55,#70,#02,#53,#70,#02,#ff
	db #4c,#91,#80,#47,#90,#08,#4c,#a0
	db #04,#4e,#90,#02,#50,#90,#04,#4e
	db #90,#02,#53,#90,#04,#ff,#58,#90
	db #08,#53,#90,#08,#58,#90,#04,#55
	db #90,#02,#53,#90,#04,#55,#90,#02
	db #53,#90,#04,#ff,#44,#41,#60,#fe
	db #04,#42,#40,#02,#40,#40,#02,#40
	db #40,#06,#fe,#02,#42,#40,#06,#47
	db #40,#04,#ff,#44,#40,#06,#fe,#04
	db #42,#40,#02,#40,#40,#02,#40,#40
	db #08,#4c,#90,#02,#4e,#a0,#04,#53
	db #90,#04,#ff,#4c,#6b,#15,#d0,#60
	db #53,#6b,#14,#d8,#60,#5c,#6b,#13
	db #d8,#60,#53,#6b,#12,#d0,#60,#4c
	db #6b,#11,#d0,#60,#53,#6b,#10,#d8
	db #60,#dc,#60,#d8,#60,#53,#60,#02
	db #49,#6b,#15,#cc,#60,#51,#6b,#14
	db #d5,#60,#58,#6b,#13,#d5,#60,#51
	db #6b,#12,#cc,#60,#49,#6b,#11,#cc
	db #60,#51,#6b,#10,#d5,#60,#d8,#60
	db #d5,#60,#51,#60,#02,#ff,#47,#6b
	db #15,#cc,#60,#50,#6b,#14,#d3,#60
	db #58,#6b,#13,#d3,#60,#50,#6b,#12
	db #cc,#60,#47,#6b,#11,#cc,#60,#50
	db #6b,#10,#d3,#60,#d8,#60,#d3,#60
	db #50,#60,#02,#45,#6b,#15,#c9,#60
	db #4c,#6b,#14,#d1,#60,#55,#6b,#13
	db #d1,#60,#4c,#6b,#12,#c9,#60,#45
	db #6b,#11,#c9,#60,#4c,#6b,#10,#d1
	db #60,#d5,#60,#d1,#60,#4c,#60,#02
	db #ff,#44,#41,#60,#fe,#04,#42,#40
	db #02,#40,#40,#02,#40,#40,#08,#49
	db #40,#06,#47,#40,#04,#ff,#44,#40
	db #06,#fe,#04,#42,#40,#02,#40,#40
	db #02,#c0,#40,#40,#40,#07,#4c,#90
	db #04,#fe,#02,#c9,#90,#47,#90,#02
	db #c9,#90,#ff,#4c,#90,#08,#47,#90
	db #08,#4c,#90,#04,#49,#90,#02,#47
	db #90,#04,#49,#90,#02,#47,#90,#04
	db #ff
;
.music_info
	db "Apocalypse The Last Chance - Preview v3.0 (1993)(Public Domain)()",0
	db "ST-128 Module",0

	read "music_end.asm"
