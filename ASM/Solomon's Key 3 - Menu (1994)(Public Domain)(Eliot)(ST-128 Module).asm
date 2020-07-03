; Music of Solomon's Key 3 - Menu (1994)(Public Domain)(Eliot)(ST-128 Module)
; Ripped by Megachur the 09/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SOLOMK3M.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 06
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
	ld (hl),#05
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
.l64a5 equ $ + 5
	db #6f,#64,#75,#6c,#65
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
	db #04,#38,#00,#00,#05,#30,#01,#04
.l64cf equ $ + 2
.l64ce equ $ + 1
	db #38,#00,#00
.l64d0
	dw l6353,l6366,l6365,l638a
	dw l6387,l639a,l63ab,l63d3
	dw l63ed,l63d3,l6407,l6410
	dw l6432,l643a,l6459
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
	dw #000f
.l65b4 equ $ + 4
.l65b0
	db #08,#00,#01,#08,#1c,#01,#00,#2d
.l65be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#60,#68
	db #a0,#68,#40,#68,#00,#00,#0a,#16
.l65cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #39,#6a,#46,#69,#00,#40,#00,#00
.l65de equ $ + 6
	db #00,#00,#00,#00,#01,#01,#09,#02
.l65e2 equ $ + 2
	db #03,#10,#70,#04,#00,#15,#00,#00
.l65ec equ $ + 4
	db #00,#00,#00,#00,#e0,#67,#20,#68
	db #40,#68,#00,#00,#0a,#16,#0f,#00
.l65fd equ $ + 5
	db #02,#00,#00,#00,#00,#01,#cf,#6b
	db #6a,#69,#00,#30,#00,#00,#00,#00
.l660c equ $ + 4
	db #00,#00,#01,#01,#0a,#04,#05,#20
.l6610
	db #5f,#00,#00,#40,#00,#00,#00,#00
.l661a equ $ + 2
	db #00,#00,#60,#68,#20,#69,#40,#68
	db #00,#00,#05,#1b,#00,#01,#00,#00
.l662b equ $ + 3
	db #00,#00,#00,#03,#3a,#6d,#8e,#69
	db #00,#70,#00,#00,#00,#00,#00,#00
.l663a equ $ + 2
	db #01,#01,#40,#69,#64,#69,#88,#69
.l6640
	db #e0,#66,#20,#67,#40,#67,#07,#00
	db #60,#67,#a0,#67,#c0,#67,#1a,#00
	db #d1,#1f,#d1,#1f,#d1,#1f,#ff,#ff
	db #e0,#67,#20,#68,#40,#68,#00,#00
	db #60,#68,#a0,#68,#40,#68,#00,#00
	db #d1,#1f,#d1,#1f,#d1,#1f,#ff,#ff
	db #c0,#68,#00,#69,#40,#68,#00,#00
	db #60,#68,#20,#69,#40,#68,#00,#00
	db #d1,#1f,#d1,#1f,#d1,#1f,#ff,#ff
	db #d1,#1f,#d1,#1f,#d1,#1f,#ff,#ff
	db #d1,#1f,#d1,#1f,#d1,#1f,#ff,#ff
	db #d1,#1f,#d1,#1f,#d1,#1f,#ff,#ff
	db #d1,#1f,#d1,#1f,#d1,#1f,#ff,#ff
	db #d1,#1f,#d1,#1f,#d1,#1f,#ff,#ff
	db #d1,#1f,#d1,#1f,#d1,#1f,#ff,#ff
	db #d1,#1f,#d1,#1f,#d1,#1f,#ff,#ff
.l66c0
	db #d1,#1f,#d1,#1f,#d1,#1f,#d1,#1f
	db #d1,#1f,#d1,#1f,#d1,#1f,#d1,#1f
	db #d1,#1f,#d2,#1f,#d2,#1f,#d2,#1f
	db #d2,#1f,#d2,#1f,#d2,#1f,#d2,#1f
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0d,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #11,#00,#00,#00,#00,#00,#00,#00
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
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0e,#0d,#0d,#0c
	db #0c,#0b,#0b,#0a,#0a,#09,#09,#08
	db #08,#07,#06,#04,#01,#00,#00,#00
	db #04,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#03
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0b,#09,#07
	db #05,#04,#03,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #20,#00,#40,#00,#60,#00,#80,#00
	db #a0,#00,#c0,#00,#e0,#00,#00,#01
	db #20,#01,#40,#01,#60,#01,#80,#01
	db #a0,#01,#c0,#01,#e0,#01,#00,#02
	db #20,#02,#40,#02,#60,#02,#80,#02
	db #a0,#02,#c0,#02,#e0,#02,#00,#03
	db #20,#03,#40,#03,#60,#03,#80,#03
	db #a0,#03,#c0,#03,#e0,#03,#00,#04
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0e,#0e,#0f,#0f,#0f,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0a
	db #09,#08,#07,#06,#05,#03,#01,#00
	db #00,#8e,#6a,#00,#1d,#6a,#00,#1d
	db #6a,#00,#ac,#69,#00,#1d,#6a,#00
	db #ac,#69,#00,#1d,#6a,#00,#1d,#6a
	db #00,#ac,#69,#00,#1d,#6a,#00,#ac
	db #69,#80,#43,#69,#00,#4e,#6c,#00
	db #a5,#6b,#00,#a5,#6b,#00,#fc,#6a
	db #00,#a5,#6b,#00,#fc,#6a,#00,#a5
	db #6b,#00,#a5,#6b,#00,#fc,#6a,#00
	db #a5,#6b,#00,#fc,#6a,#80,#67,#69
	db #00,#5c,#6d,#00,#25,#6d,#00,#25
	db #6d,#00,#b1,#6c,#00,#25,#6d,#00
	db #b1,#6c,#00,#e8,#6c,#00,#e8,#6c
	db #00,#b1,#6c,#00,#e8,#6c,#00,#b1
	db #6c,#80,#8b,#69,#3d,#4c,#30,#02
	db #49,#40,#02,#3d,#4c,#31,#02,#49
	db #40,#02,#3d,#4c,#30,#02,#49,#40
	db #02,#3d,#4c,#31,#02,#49,#40,#02
	db #3d,#4c,#30,#02,#49,#40,#02,#3d
	db #4c,#31,#02,#49,#40,#02,#3d,#4c
	db #30,#02,#49,#40,#02,#3d,#4c,#31
	db #02,#49,#40,#02,#3b,#4c,#30,#02
	db #47,#40,#02,#3b,#4c,#31,#02,#47
	db #40,#02,#3b,#4c,#30,#02,#47,#40
	db #02,#3b,#4c,#31,#02,#47,#40,#02
	db #3b,#4c,#30,#02,#47,#40,#02,#3b
	db #4c,#31,#02,#47,#40,#02,#3b,#4c
	db #30,#02,#47,#40,#02,#3b,#4c,#31
	db #02,#47,#40,#02,#ff,#31,#4c,#30
	db #02,#3d,#40,#02,#31,#4c,#31,#02
	db #3d,#40,#02,#31,#4c,#30,#02,#3d
	db #40,#02,#31,#4c,#31,#02,#3d,#40
	db #02,#31,#4c,#30,#02,#3d,#40,#02
	db #31,#4c,#31,#02,#3d,#40,#02,#31
	db #4c,#30,#02,#3d,#40,#02,#31,#4c
	db #31,#02,#3d,#40,#02,#2f,#4c,#30
	db #02,#3b,#40,#02,#2f,#4c,#31,#02
	db #3b,#40,#02,#2f,#4c,#30,#02,#3b
	db #40,#02,#2f,#4c,#31,#02,#3b,#40
	db #02,#2c,#4c,#30,#02,#38,#40,#02
	db #2c,#4c,#31,#02,#38,#40,#02,#2c
	db #4c,#30,#02,#38,#40,#02,#2c,#4c
	db #31,#02,#38,#40,#02,#ff,#49,#3b
	db #25,#3d,#3b,#25,#3d,#3b,#14,#49
	db #3b,#24,#3d,#3b,#24,#49,#3b,#23
	db #3d,#3b,#13,#3d,#3b,#12,#49,#3b
	db #32,#49,#3b,#21,#3d,#3b,#21,#3d
	db #3b,#10,#49,#3b,#20,#3d,#3b,#20
	db #49,#3b,#20,#3d,#3b,#10,#3d,#3b
	db #10,#49,#3b,#30,#47,#30,#02,#3b
	db #30,#02,#bb,#30,#47,#30,#02,#3b
	db #30,#02,#47,#30,#02,#bb,#30,#bb
	db #30,#47,#30,#03,#44,#3c,#00,#02
	db #38,#3c,#01,#02,#b8,#3c,#00,#44
	db #30,#02,#38,#3c,#01,#02,#44,#3c
	db #00,#02,#b8,#3c,#01,#b8,#30,#44
	db #3c,#00,#03,#ff,#31,#3b,#13,#3d
	db #3b,#12,#31,#3b,#12,#3d,#3b,#11
	db #31,#3b,#11,#3d,#3b,#10,#31,#3b
	db #20,#31,#3b,#13,#3d,#3b,#12,#31
	db #3b,#12,#3d,#3b,#11,#31,#3b,#11
	db #3d,#3b,#10,#31,#3b,#20,#31,#3b
	db #13,#3d,#3b,#12,#31,#3b,#12,#3d
	db #3b,#11,#31,#3b,#11,#3d,#3b,#10
	db #31,#3b,#20,#31,#3b,#13,#3d,#3b
	db #12,#31,#3b,#12,#3d,#3b,#11,#31
	db #3b,#11,#3d,#3b,#10,#31,#3b,#20
	db #2f,#3b,#13,#3b,#3b,#12,#2f,#3b
	db #12,#3b,#3b,#11,#2f,#3b,#11,#3b
	db #3b,#10,#2f,#3b,#20,#2f,#3b,#13
	db #3b,#3b,#12,#2f,#3b,#12,#3b,#3b
	db #11,#2f,#3b,#11,#3b,#3b,#10,#2f
	db #3b,#20,#2f,#3b,#13,#3b,#3b,#12
	db #2f,#3b,#12,#3b,#3b,#11,#2f,#3b
	db #11,#3b,#3b,#10,#2f,#3b,#20,#2f
	db #3b,#13,#3b,#3b,#12,#2f,#3b,#12
	db #3b,#3b,#11,#2f,#3b,#11,#3b,#3b
	db #10,#2f,#3b,#20,#ff,#25,#3b,#13
	db #31,#3b,#12,#25,#3b,#12,#31,#3b
	db #11,#25,#3b,#11,#31,#3b,#10,#25
	db #3b,#20,#25,#3b,#13,#31,#3b,#12
	db #25,#3b,#12,#31,#3b,#11,#25,#3b
	db #11,#31,#3b,#10,#25,#3b,#20,#25
	db #3b,#13,#31,#3b,#12,#25,#3b,#12
	db #31,#3b,#11,#25,#3b,#11,#31,#3b
	db #10,#25,#3b,#20,#25,#3b,#13,#31
	db #3b,#12,#25,#3b,#12,#31,#3b,#11
	db #25,#3b,#11,#31,#3b,#10,#25,#3b
	db #20,#23,#3b,#13,#2f,#3b,#12,#23
	db #3b,#12,#2f,#3b,#11,#23,#3b,#11
	db #2f,#3b,#10,#23,#3b,#20,#23,#3b
	db #13,#2f,#3b,#12,#23,#3b,#12,#2f
	db #3b,#11,#23,#3b,#11,#2f,#3b,#10
	db #23,#3b,#20,#20,#3b,#13,#2c,#3b
	db #12,#20,#3b,#12,#2c,#3b,#11,#20
	db #3b,#11,#2c,#3b,#10,#20,#3b,#20
	db #20,#3b,#13,#2c,#3b,#12,#20,#3b
	db #12,#2c,#3b,#11,#20,#3b,#11,#2c
	db #3b,#10,#20,#3b,#20,#ff,#44,#7b
	db #25,#50,#7b,#25,#44,#7b,#24,#50
	db #7b,#24,#44,#7b,#23,#50,#7b,#23
	db #44,#7b,#22,#50,#7b,#22,#44,#7b
	db #21,#50,#7b,#21,#44,#7b,#20,#50
	db #70,#02,#44,#70,#02,#50,#70,#02
	db #44,#70,#02,#50,#70,#02,#47,#70
	db #02,#53,#70,#02,#47,#70,#02,#53
	db #70,#02,#47,#70,#02,#53,#70,#02
	db #47,#70,#02,#53,#70,#02,#49,#70
	db #02,#55,#70,#02,#49,#70,#02,#55
	db #70,#02,#49,#70,#02,#55,#70,#02
	db #49,#70,#02,#d5,#70,#0e,#f0,#01
	db #ff,#55,#70,#02,#57,#70,#02,#55
	db #70,#02,#55,#70,#04,#55,#70,#04
	db #53,#70,#03,#50,#70,#02,#4e,#70
	db #02,#50,#70,#0b,#55,#70,#02,#57
	db #70,#02,#55,#70,#02,#55,#70,#04
	db #55,#70,#04,#53,#70,#03,#50,#70
	db #02,#4e,#70,#02,#49,#70,#0b,#ff
	db #51,#7e,#01,#04,#51,#70,#02,#50
	db #70,#03,#50,#70,#02,#4e,#70,#02
	db #50,#70,#02,#51,#70,#03,#51,#70
	db #02,#50,#70,#0c,#51,#70,#04,#51
	db #70,#02,#50,#70,#03,#50,#70,#02
	db #4e,#70,#02,#50,#70,#02,#51,#70
	db #03,#51,#70,#02,#50,#70,#02,#53
	db #70,#09,#01,#10,#ff,#50,#70,#03
	db #53,#70,#03,#57,#70,#03,#53,#70
	db #02,#55,#70,#02,#53,#70,#02,#50
	db #70,#03,#4e,#70,#03,#50,#70,#0a
	db #4e,#70,#03,#51,#70,#03,#55,#70
	db #03,#51,#70,#02,#53,#70,#02,#51
	db #70,#02,#4e,#70,#02,#51,#70,#03
	db #50,#70,#0d,#ff,#00,#30,#4c,#60
	db #02,#4e,#60,#02,#50,#60,#02,#51
	db #60,#02,#53,#60,#02,#55,#60,#02
	db #57,#60,#02,#58,#60,#02,#ff
;
.music_info
	db "Solomon's Key 3 - Menu (1994)(Public Domain)(Eliot)",0
	db "ST-128 Module",0

	read "music_end.asm"
