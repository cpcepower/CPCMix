; Music of Dracula Fanz Issue 5 - Intro Part (1995)(Dracula Fanz Team)(Epsilon)(ST-128 Module)
; Ripped by Megachur the 28/05/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DRFI5INP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2022
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
	ld (hl),#03
	inc hl
	ld (hl),#40
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
	ld (hl),#40
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
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6478
	ld (ix+#1e),a
	jp l61e0
	dec b
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
	dec b
	jr l638b
	inc b
.l638b
	call l6478
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l61e0
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
	call l6478
	ld (ix+#1e),a
	jp l61e0
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
	ld a,(hl)
	inc hl
	ld (l64c9),a
	jp l61e0
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
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
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
	db #53,#63,#66,#63,#65,#63,#8a,#63
	db #87,#63,#9a,#63,#ab,#63,#d3,#63
	db #ed,#63,#d3,#63,#07,#64,#10,#64
	db #32,#64,#3a,#64,#59,#64
.l64ee
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
.l65b0 equ $ + 2
	dw #000f,#0008
.l65b4 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l65be equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l65cf equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l65de equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l65e2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l65ec equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l65fd equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6610 equ $ + 6
.l660c equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l661a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l662b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6640 equ $ + 6
.l663a
	db #60,#68,#96,#68,#cc,#68,#f1,#ce
	db #31,#1f,#e1,#1f,#00,#00,#e0,#66
	db #20,#67,#40,#67,#07,#00,#d2,#1f
	db #d2,#1f,#d2,#1f,#00,#00,#d2,#1f
	db #d2,#1f,#d2,#1f,#00,#00,#60,#67
	db #a0,#67,#c0,#67,#c0,#00,#d2,#1f
	db #d2,#1f,#d2,#1f,#00,#00,#d2,#1f
	db #42,#93,#25,#27,#25,#34,#e0,#67
	db #20,#68,#40,#68,#10,#10,#61,#cf
	db #31,#1f,#c0,#20,#00,#00,#d2,#1f
	db #d2,#1f,#d2,#1f,#00,#00,#d2,#1f
	db #b2,#0c,#3e,#4c,#a4,#e0,#94,#e2
	db #1c,#42,#f4,#01,#6a,#a6,#00,#ec
	db #1e,#a8,#d2,#1f,#00,#00,#d2,#1f
	db #d2,#1f,#d2,#1f,#00,#00,#d2,#1f
	db #f0,#9e,#31,#2f,#ad,#f8,#ca,#18
.l66c0 equ $ + 6
	db #ad,#a8,#5a,#18,#da,#ad,#e1,#4e
	db #a9,#17,#b3,#20,#d2,#1f,#d2,#1f
	db #d2,#1f,#d2,#1f,#d2,#1f,#d2,#1f
	db #92,#e8,#1a,#2c,#56,#a4,#56,#3f
	db #d2,#1f,#d2,#16,#1e,#e4,#80,#00
	db #00,#01,#80,#01,#00,#02,#80,#02
	db #00,#03,#00,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #65,#01,#3e,#01,#00,#00,#c3,#04
	db #65,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0d,#0c,#0a,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#06,#07,#07,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#8b,#89,#88
	db #88,#87,#87,#86,#85,#84,#83,#82
	db #81,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #69,#00,#6d,#6a,#00,#6d,#6a,#00
	db #36,#6b,#00,#36,#6b,#00,#f9,#6a
	db #00,#f9,#6a,#00,#30,#6a,#00,#30
	db #6a,#00,#b6,#6a,#00,#b6,#6a,#00
	db #5a,#69,#00,#5a,#69,#00,#05,#69
	db #00,#05,#69,#00,#af,#69,#00,#af
	db #69,#80,#63,#68,#00,#67,#6b,#00
	db #67,#6b,#00,#67,#6b,#00,#67,#6b
	db #00,#67,#6b,#00,#67,#6b,#00,#67
	db #6b,#00,#67,#6b,#00,#67,#6b,#00
	db #67,#6b,#00,#67,#6b,#00,#67,#6b
	db #00,#67,#6b,#00,#67,#6b,#00,#67
	db #6b,#00,#67,#6b,#00,#67,#6b,#80
	db #99,#68,#00,#e8,#6b,#00,#08,#6c
	db #00,#08,#6c,#00,#08,#6c,#00,#08
	db #6c,#00,#08,#6c,#00,#08,#6c,#00
	db #08,#6c,#00,#08,#6c,#00,#08,#6c
	db #00,#08,#6c,#00,#08,#6c,#00,#08
	db #6c,#00,#08,#6c,#00,#08,#6c,#00
	db #08,#6c,#00,#08,#6c,#80,#cf,#68
	db #00,#40,#ff,#3d,#70,#04,#3d,#70
	db #02,#3d,#70,#02,#3b,#70,#02,#3d
	db #70,#02,#40,#70,#02,#3d,#70,#02
	db #38,#70,#04,#38,#70,#02,#38,#70
	db #02,#36,#70,#02,#38,#70,#02,#3b
	db #70,#02,#38,#70,#02,#3b,#70,#04
	db #3b,#70,#02,#3b,#70,#02,#39,#70
	db #02,#3b,#70,#02,#3f,#70,#02,#3b
	db #70,#02,#36,#70,#04,#36,#70,#02
	db #36,#70,#02,#34,#70,#02,#36,#70
	db #02,#39,#70,#02,#36,#70,#02,#ff
	db #3d,#70,#04,#3d,#70,#02,#3d,#70
	db #02,#3b,#70,#02,#3d,#70,#02,#3b
	db #70,#02,#3d,#70,#02,#38,#70,#04
	db #38,#70,#02,#38,#70,#02,#36,#70
	db #02,#38,#70,#02,#36,#70,#02,#38
	db #70,#02,#3b,#70,#04,#3b,#70,#02
	db #3b,#70,#02,#39,#70,#02,#3b,#70
	db #02,#39,#70,#02,#3b,#70,#02,#36
	db #70,#04,#36,#70,#02,#36,#70,#02
	db #34,#70,#02,#36,#70,#02,#34,#70
	db #02,#36,#70,#02,#ff,#b1,#70,#fe
	db #01,#bd,#70,#fe,#01,#c9,#70,#fe
	db #01,#bd,#70,#fe,#01,#b1,#70,#fe
	db #01,#bd,#70,#fe,#01,#c9,#70,#fe
	db #01,#bd,#70,#fe,#01,#ac,#70,#fe
	db #01,#b8,#70,#fe,#01,#c4,#70,#fe
	db #01,#b8,#70,#fe,#01,#ac,#70,#fe
	db #01,#b8,#70,#fe,#01,#c4,#70,#fe
	db #01,#b8,#70,#fe,#01,#af,#70,#fe
	db #01,#bb,#70,#fe,#01,#c7,#70,#fe
	db #01,#bb,#70,#fe,#01,#af,#70,#fe
	db #01,#bb,#70,#fe,#01,#c7,#70,#fe
	db #01,#bb,#70,#fe,#01,#aa,#70,#fe
	db #01,#b6,#70,#fe,#01,#c2,#70,#fe
	db #01,#b6,#70,#fe,#01,#aa,#70,#fe
	db #01,#b6,#70,#fe,#01,#c2,#70,#fe
	db #01,#b6,#70,#fe,#01,#ff,#3d,#70
	db #04,#3d,#70,#02,#3d,#70,#02,#3b
	db #70,#04,#39,#70,#04,#38,#70,#04
	db #38,#70,#02,#38,#70,#02,#3b,#70
	db #04,#38,#70,#04,#3b,#70,#04,#3b
	db #70,#02,#3b,#70,#02,#39,#70,#04
	db #38,#70,#04,#36,#70,#04,#36,#70
	db #02,#36,#70,#02,#39,#70,#04,#36
	db #70,#04,#ff,#31,#70,#04,#31,#70
	db #02,#31,#70,#02,#3d,#70,#04,#31
	db #70,#02,#3d,#70,#02,#2c,#70,#04
	db #2c,#70,#02,#2c,#70,#02,#38,#70
	db #04,#2c,#70,#02,#38,#70,#02,#2f
	db #70,#04,#2f,#70,#02,#2f,#70,#02
	db #3b,#70,#04,#2f,#70,#02,#3b,#70
	db #02,#2a,#70,#04,#2a,#70,#02,#2a
	db #70,#02,#36,#70,#04,#2a,#70,#02
	db #36,#70,#02,#ff,#3d,#70,#04,#3d
	db #70,#02,#3d,#70,#02,#38,#70,#02
	db #3d,#70,#02,#3f,#70,#02,#40,#70
	db #02,#38,#70,#04,#38,#70,#02,#38
	db #70,#02,#3b,#70,#08,#3b,#70,#04
	db #3b,#70,#02,#3b,#70,#02,#36,#70
	db #02,#3b,#70,#02,#3d,#70,#02,#3f
	db #70,#02,#36,#70,#04,#36,#70,#02
	db #36,#70,#02,#3d,#70,#08,#ff,#3d
	db #70,#04,#3d,#70,#02,#3d,#70,#02
	db #38,#70,#04,#3d,#70,#04,#38,#70
	db #04,#38,#70,#02,#38,#70,#02,#3b
	db #70,#04,#38,#70,#04,#3b,#70,#04
	db #3b,#70,#02,#3b,#70,#02,#36,#70
	db #04,#3b,#70,#04,#36,#70,#04,#36
	db #70,#02,#36,#70,#02,#3d,#70,#04
	db #36,#70,#04,#ff,#3d,#70,#08,#3d
	db #70,#02,#3f,#70,#02,#40,#70,#02
	db #42,#70,#02,#44,#70,#0c,#44,#70
	db #02,#3f,#70,#02,#3b,#70,#08,#3b
	db #70,#02,#3d,#70,#02,#3f,#70,#02
	db #40,#70,#02,#42,#70,#08,#42,#70
	db #04,#3b,#70,#04,#ff,#31,#78,#12
	db #02,#31,#78,#12,#02,#3d,#78,#12
	db #02,#31,#78,#12,#02,#31,#78,#12
	db #02,#31,#78,#12,#02,#3d,#78,#12
	db #02,#31,#78,#12,#02,#2c,#78,#18
	db #02,#2c,#78,#18,#02,#38,#78,#18
	db #02,#2c,#78,#18,#02,#2c,#78,#18
	db #02,#2c,#78,#18,#02,#38,#78,#18
	db #02,#2c,#78,#18,#02,#2f,#78,#14
	db #02,#2f,#78,#14,#02,#3b,#78,#14
	db #02,#2f,#78,#14,#02,#2f,#78,#14
	db #02,#2f,#78,#14,#02,#3b,#78,#14
	db #02,#2f,#78,#14,#02,#2a,#78,#1b
	db #02,#2a,#78,#1b,#02,#36,#78,#1b
	db #02,#2a,#78,#1b,#02,#2a,#78,#1b
	db #02,#2a,#78,#1b,#02,#36,#78,#1b
	db #02,#2a,#78,#1b,#02,#ff,#00,#28
	db #3f,#40,#04,#3f,#40,#04,#3f,#40
	db #04,#3f,#40,#02,#3f,#40,#02,#3f
	db #40,#02,#3f,#40,#02,#bf,#40,#bf
	db #40,#bf,#40,#bf,#40,#ff,#3f,#10
	db #08,#3f,#40,#08,#3f,#10,#08,#3f
	db #40,#08,#3f,#10,#08,#3f,#40,#04
	db #3f,#40,#04,#3f,#40,#04,#3f,#40
	db #02,#3f,#40,#02,#3f,#40,#02,#3f
	db #40,#02,#bf,#40,#bf,#40,#bf,#40
	db #bf,#40,#ff

;
.music_info
	db "Dracula Fanz Issue 5 - Intro Part (1995)(Dracula Fanz Team)(Epsilon)",0
	db "ST-128 Module",0

	read "music_end.asm"
