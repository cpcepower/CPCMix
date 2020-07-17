; Music of Tree Issue 2 - Editorial (2002)(Brothers)()(ST-128 Module)
; Ripped by Megachur the 09/09/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TREEI2ED.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2017
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
	db #00,#38,#00,#00,#06,#3d,#05,#00
.l64cf equ $ + 2
.l64ce equ $ + 1
	db #38,#00,#00
.l64d0
	dw l6353,l6366,l6365,l638a
	dw l6387,l639a,l63ab,l63d3
	dw l63ed,l63d3,l6407,l6410
.l64ee equ $ + 6
	dw l6432,l643a,l6459,#0000
	dw #0e18,#0d4d,#0c8e,#0bda
	dw #0b2f,#0a8f,#09f7,#0968
	dw #08e1,#0861,#07e9,#0777
	dw #070c,#06a7,#0647,#05ed
	dw #0598,#0547,#04fc,#04b4
	dw #0470,#0431,#03f4,#03bc
	dw #0386,#0353,#0324,#02f6
	dw #02cc,#02a4,#027e,#025a
	dw #0238,#0218,#01fa,#01de
	dw #01c3,#01aa,#0192,#017b
	dw #0166,#0152,#013f,#012d
	dw #011c,#010c,#00fd,#00ef
	dw #00e1,#00d5,#00c9,#00be
	dw #00b3,#00a9,#009f,#0096
	dw #008e,#0086,#007f,#0077
	dw #0071,#006a,#0064,#005f
	dw #0059,#0054,#0050,#004b
	dw #0047,#0043,#003f,#003c
	dw #0038,#0035,#0032,#002f
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010,#000f
.l65b4 equ $ + 4
.l65b0
	db #08,#00,#01,#08,#de,#01,#00,#24
.l65be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#60,#68
	db #a0,#68,#40,#68,#18,#07,#02,#1e
.l65cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #d2,#69,#63,#69,#00,#80,#00,#00
.l65de equ $ + 6
	db #00,#00,#00,#00,#01,#01,#09,#02
.l65e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l65ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l65fd equ $ + 5
	db #00,#00,#00,#00,#00,#3e,#92,#6a
	db #87,#69,#00,#ff,#00,#00,#00,#00
.l660c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l6610
	db #00,#00,#00,#00,#00,#00,#00,#00
.l661a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l662b equ $ + 3
	db #00,#00,#00,#3e,#92,#6a,#ab,#69
	db #00,#ff,#00,#00,#00,#00,#00,#00
.l663a equ $ + 2
	db #00,#00,#60,#69,#84,#69,#a8,#69
.l6640
	db #d2,#1f,#d2,#1f,#d2,#1f,#00,#00
	db #e0,#66,#20,#67,#40,#67,#00,#00
	db #d2,#1f,#d2,#1f,#d2,#1f,#00,#00
	db #d2,#1f,#d2,#1f,#d2,#1f,#00,#00
	db #d2,#1f,#d2,#1f,#d2,#1f,#00,#00
	db #d2,#1f,#d2,#1f,#d2,#1f,#00,#00
	db #60,#67,#a0,#67,#c0,#67,#00,#00
	db #e0,#67,#20,#68,#40,#68,#18,#07
	db #60,#68,#a0,#68,#40,#68,#18,#07
	db #c0,#68,#00,#69,#20,#69,#08,#18
	db #d2,#1f,#d2,#1f,#d2,#1f,#00,#00
	db #d2,#1f,#d2,#1f,#d2,#1f,#00,#00
	db #d2,#1f,#d2,#1f,#d2,#1f,#00,#00
	db #d2,#1f,#d2,#1f,#d2,#1f,#00,#00
	db #d2,#1f,#d2,#1f,#d2,#1f,#00,#00
	db #d2,#1f,#d2,#1f,#d2,#1f,#00,#00
.l66c0
	db #d2,#1f,#40,#69,#d2,#1f,#d2,#1f
	db #d2,#1f,#d2,#1f,#d2,#1f,#d2,#1f
	db #d2,#1f,#d2,#1f,#d2,#1f,#d2,#1f
	db #d2,#1f,#d2,#1f,#d2,#1f,#d2,#1f
	db #00,#00,#80,#00,#40,#01,#a0,#01
	db #40,#02,#e8,#02,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #02,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #02,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #02,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #02,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #0d,#0d,#0c,#0c,#0c,#0c,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#18,#24,#00,#18,#24,#00,#18
	db #24,#00,#18,#24,#00,#18,#24,#00
	db #18,#24,#00,#18,#24,#00,#18,#24
	db #00,#18,#24,#00,#18,#24,#00,#18
	db #00,#cc,#69,#00,#2e,#6a,#00,#2e
	db #6a,#00,#2e,#6a,#00,#2e,#6a,#00
	db #2e,#6a,#00,#2e,#6a,#00,#2e,#6a
	db #00,#2e,#6a,#00,#2e,#6a,#00,#2e
	db #6a,#80,#66,#69,#00,#90,#6a,#00
	db #93,#6a,#00,#da,#6a,#00,#93,#6a
	db #00,#da,#6a,#00,#25,#6b,#00,#86
	db #6b,#00,#93,#6a,#00,#da,#6a,#00
	db #e7,#6b,#00,#e7,#6b,#80,#8a,#69
	db #00,#90,#6a,#00,#48,#6c,#00,#90
	db #6a,#00,#4b,#6c,#00,#6d,#6c,#00
	db #6d,#6c,#00,#6d,#6c,#00,#4b,#6c
	db #00,#6d,#6c,#00,#cd,#6c,#00,#cd
	db #6c,#80,#ae,#69,#34,#81,#20,#34
	db #80,#02,#34,#80,#02,#34,#80,#02
	db #39,#80,#02,#39,#80,#02,#39,#80
	db #02,#39,#80,#02,#3b,#80,#02,#3b
	db #80,#02,#3b,#80,#02,#3b,#80,#02
	db #39,#80,#02,#39,#80,#02,#b9,#80
	db #bb,#80,#39,#80,#02,#34,#80,#02
	db #34,#80,#02,#34,#80,#02,#34,#80
	db #02,#39,#80,#02,#39,#80,#02,#39
	db #80,#02,#39,#80,#02,#3b,#80,#02
	db #3b,#80,#02,#3b,#80,#02,#3b,#80
	db #02,#39,#80,#02,#39,#80,#02,#39
	db #80,#02,#39,#80,#02,#ff,#34,#80
	db #02,#34,#80,#02,#34,#80,#02,#34
	db #80,#02,#39,#80,#02,#39,#80,#02
	db #39,#80,#02,#39,#80,#02,#3b,#80
	db #02,#3b,#80,#02,#3b,#80,#02,#3b
	db #80,#02,#39,#80,#02,#39,#80,#02
	db #b9,#80,#bb,#80,#39,#80,#02,#34
	db #80,#02,#34,#80,#02,#34,#80,#02
	db #34,#80,#02,#39,#80,#02,#39,#80
	db #02,#39,#80,#02,#39,#80,#02,#3b
	db #80,#02,#3b,#80,#02,#3b,#80,#02
	db #3b,#80,#02,#39,#80,#02,#39,#80
	db #02,#39,#80,#02,#39,#80,#02,#ff
	db #fe,#40,#ff,#00,#02,#50,#70,#03
	db #4c,#70,#03,#49,#70,#03,#4c,#70
	db #03,#4e,#70,#04,#4e,#70,#04,#4e
	db #70,#02,#50,#70,#02,#4e,#70,#02
	db #4c,#70,#02,#ce,#70,#4c,#70,#03
	db #50,#70,#03,#4c,#70,#03,#49,#70
	db #03,#4c,#70,#03,#4e,#70,#04,#4e
	db #70,#02,#4e,#70,#02,#4e,#70,#02
	db #50,#70,#03,#50,#70,#03,#4e,#70
	db #02,#ff,#4c,#70,#02,#50,#70,#03
	db #4c,#70,#03,#49,#70,#03,#4c,#70
	db #03,#4e,#70,#04,#4e,#70,#02,#4e
	db #70,#02,#4c,#70,#02,#50,#70,#02
	db #4e,#70,#02,#cc,#70,#4e,#70,#02
	db #4c,#70,#03,#50,#70,#04,#4c,#70
	db #02,#49,#70,#03,#4c,#70,#03,#4e
	db #70,#04,#4e,#70,#02,#4e,#70,#02
	db #4c,#70,#02,#4b,#70,#03,#49,#70
	db #03,#4b,#70,#02,#ff,#34,#8f,#21
	db #38,#80,#02,#3b,#80,#02,#38,#80
	db #02,#36,#80,#02,#39,#80,#02,#3d
	db #80,#02,#39,#80,#02,#3b,#80,#02
	db #3d,#80,#02,#3b,#80,#02,#3d,#80
	db #02,#3b,#80,#02,#39,#80,#02,#38
	db #80,#02,#36,#80,#02,#34,#80,#02
	db #38,#80,#02,#3b,#80,#02,#38,#80
	db #02,#36,#80,#02,#39,#80,#02,#3d
	db #80,#02,#39,#80,#02,#3b,#80,#02
	db #3d,#80,#02,#3b,#80,#02,#3d,#80
	db #02,#3f,#80,#02,#40,#80,#02,#42
	db #80,#02,#3f,#80,#02,#ff,#40,#8f
	db #21,#44,#80,#02,#47,#80,#02,#44
	db #80,#02,#42,#80,#02,#45,#80,#02
	db #49,#80,#02,#45,#80,#02,#47,#80
	db #02,#49,#80,#02,#47,#80,#02,#49
	db #80,#02,#47,#80,#02,#45,#80,#02
	db #44,#80,#02,#42,#80,#02,#40,#80
	db #02,#44,#80,#02,#47,#80,#02,#44
	db #80,#02,#42,#80,#02,#45,#80,#02
	db #49,#80,#02,#45,#80,#02,#47,#80
	db #02,#49,#80,#02,#47,#80,#02,#49
	db #80,#02,#4b,#80,#02,#4c,#80,#02
	db #4e,#80,#02,#4b,#80,#02,#ff,#4c
	db #71,#20,#4c,#70,#02,#50,#70,#02
	db #53,#70,#02,#51,#70,#02,#53,#70
	db #02,#55,#70,#02,#58,#70,#02,#5a
	db #70,#02,#57,#70,#02,#53,#70,#02
	db #57,#70,#02,#58,#70,#02,#5a,#70
	db #02,#58,#70,#02,#57,#70,#02,#58
	db #70,#02,#53,#70,#02,#50,#70,#02
	db #53,#70,#02,#51,#70,#02,#55,#70
	db #02,#58,#70,#02,#55,#70,#02,#57
	db #70,#02,#57,#70,#02,#57,#70,#02
	db #58,#70,#02,#5a,#70,#02,#5c,#70
	db #02,#5d,#70,#02,#5a,#70,#02,#ff
	db #00,#40,#ff,#40,#10,#08,#40,#10
	db #08,#40,#10,#08,#40,#10,#06,#40
	db #10,#02,#40,#10,#08,#40,#10,#08
	db #40,#10,#04,#40,#10,#04,#40,#10
	db #04,#40,#10,#04,#ff,#40,#10,#02
	db #40,#60,#02,#40,#10,#02,#40,#60
	db #02,#40,#10,#02,#40,#60,#02,#40
	db #10,#02,#40,#60,#02,#40,#10,#02
	db #40,#60,#02,#40,#10,#02,#40,#60
	db #02,#40,#10,#02,#40,#60,#02,#c0
	db #10,#40,#60,#03,#40,#10,#02,#40
	db #60,#02,#40,#10,#02,#40,#60,#02
	db #40,#10,#02,#40,#60,#02,#40,#10
	db #02,#40,#60,#02,#40,#10,#02,#40
	db #60,#02,#40,#10,#02,#40,#60,#02
	db #40,#10,#02,#40,#60,#02,#40,#10
	db #02,#40,#60,#02,#ff,#44,#9f,#21
	db #40,#61,#20,#40,#10,#02,#40,#60
	db #02,#45,#9f,#21,#40,#61,#20,#40
	db #10,#02,#40,#60,#02,#42,#9f,#21
	db #40,#61,#20,#40,#10,#02,#40,#60
	db #02,#45,#9f,#21,#40,#61,#20,#42
	db #9f,#11,#40,#61,#30,#44,#9f,#21
	db #40,#61,#20,#40,#10,#02,#40,#60
	db #02,#45,#9f,#21,#40,#61,#20,#40
	db #10,#02,#40,#60,#02,#42,#9f,#21
	db #40,#60,#02,#40,#10,#02,#40,#60
	db #02,#45,#9f,#21,#40,#60,#02,#40
	db #10,#02,#40,#60,#02,#ff
;
.music_info
	db "Tree Issue 2 - Editorial (2002)(Brothers)()",0
	db "ST-128 Module",0

	read "music_end.asm"
