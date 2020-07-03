; Music of Byte 98 Hide Part (1999)(Mortel)()(ST-128 Module)
; Ripped by Megachur the 03/10/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "BYTE98HP.BIN"
	ENDIF

music_date_rip_day		equ 03
music_date_rip_month	equ 10
music_date_rip_year		equ 2014
music_adr				equ &60d6

	read "music_header.asm"

;
.init_music
;
	xor a
	ld hl,l6681
	call l6147
	ld hl,l66af
	call l6147
	ld hl,l66dd
	call l6147
	ld ix,l667d
	ld iy,l6707
	ld de,#002e
	ld b,#03
.l60f6
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
	djnz l60f6
	ld hl,l6596
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
	ld (l6592),hl
	ld (l6594),hl
	ld a,#0c
	ld c,d
	call l6572
	ld a,#0d
	ld c,d
	jp l6572
.l6147
	ld b,#2a
.l6149
	ld (hl),a
	inc hl
	djnz l6149
	ret
;
.stop_music
;
	ld a,#07
	ld c,#3f
	call l6572
	ld a,#08
	ld c,#00
	call l6572
	ld a,#09
	ld c,#00
	call l6572
	ld a,#0a
	ld c,#00
	jp l6572
;
.play_music
;
	ld hl,l6598
	dec (hl)
	ld ix,l667d
	ld bc,l668b
	call l620c
	ld ix,l66ab
	ld bc,l66b9
	call l620c
	ld ix,l66d9
	ld bc,l66e7
	call l620c
	ld hl,l6591
	ld de,l6598
	ld b,#06
	call l61e9
	ld b,#07
	call l61e9
	ld b,#0b
	call l61e9
	ld b,#0d
	call l61e9
	ld de,l6598
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,l669c
	call l61c2
	ld hl,l66ca
	call l61c2
	ld hl,l66f8
.l61c2
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
	jr nz,l61d7
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l61d7
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
.l61e9
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l6572
.l61f4
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l6572
.l620c
	ld a,(l6598)
	or a
	jp nz,l62c4
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l62c4
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l61f4
	or a
	jp z,l62b9
	ld r,a
	and #7f
	cp #10
	jr c,l6294
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l640c
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
	jr z,l626d
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l626d
	rrca
	ld c,a
	ld hl,l670d
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
	jr z,l628c
	ld (ix+#1e),b
.l628c
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l62ad
.l6294
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l659d
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
.l62ad
	ld a,d
	or a
	jr nz,l62bb
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l62bb
.l62b9
	ld a,(hl)
	inc hl
.l62bb
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l62c4
	ld a,(ix+#17)
	or a
	jr nz,l62da
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l62da
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l62f0
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l62f0
	ld a,(ix+#0d)
	or a
	jr z,l62fe
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l631c
.l62fe
	ld a,(ix+#1a)
	or a
	jp z,l6323
	ld c,a
	cp #03
	jr nz,l630b
	xor a
.l630b
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l631c
	ld a,(ix+#18)
	dec c
	jr z,l631c
	ld a,(ix+#19)
.l631c
	add (ix+#07)
	ld b,d
	call l640c
.l6323
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l634b
	dec (ix+#1b)
	jr nz,l634b
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l6383
.l634b
	ld a,(ix+#29)
	or a
	jr z,l6383
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l637a
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l6371
	ld (ix+#29),#ff
	jr l637a
.l6371
	cp (ix+#2b)
	jr nz,l637a
	ld (ix+#29),#01
.l637a
	ld b,d
	or a
	jp p,l6380
	dec b
.l6380
	ld c,a
	jr l638e
.l6383
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l638e
	pop hl
	bit 7,(ix+#14)
	jr z,l6397
	ld h,d
	ld l,d
.l6397
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l6572
	ld c,h
	ld a,(ix+#02)
	call l6572
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l63ea
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l63d9
	dec (ix+#09)
	jr nz,l63d9
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l63d1
	xor a
	jr l63d6
.l63d1
	cp #10
	jr nz,l63d6
	dec a
.l63d6
	ld (ix+#1e),a
.l63d9
	ld a,b
	sub (ix+#1e)
	jr nc,l63e0
	xor a
.l63e0
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l6572
.l63ea
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l6599)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l6408
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l6408
	ld (l6599),hl
	ret
.l640c
	ld hl,l65bb
	cp #61
	jr nc,l6416
	add a
	ld c,a
	add hl,bc
.l6416
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l6420
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6545
	ld (ix+#1e),a
	jp l62ad
.l6432
	dec b
.l6433
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l643e
	neg
.l643e
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
	jp l62ad
.l6454
	dec b
	jr l6458
.l6457
	inc b
.l6458
	call l6545
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l62ad
.l6467
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
	jp l652a
.l6478
	ld a,(hl)
	inc hl
	or a
	jr z,l649a
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
.l649a
	ld (ix+#29),a
	jp l62ad
.l64a0
	dec hl
	ld a,(hl)
	and #0f
	ld (l659c),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l659b),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l62ad
.l64ba
	ld a,(hl)
	or a
	jr z,l64cb
	call l6547
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l62ad
.l64cb
	ld hl,#0101
	ld (l6597),hl
	jp l62ad
.l64d4
	call l6545
	ld (ix+#1e),a
	jp l62ad
.l64dd
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l6556
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l6556
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l62ad
.l64ff
	ld a,(hl)
	inc hl
	ld (l6596),a
	jp l62ad
.l6507
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
	jp l62ad
.l6526
	call l6545
	add a
.l652a
	ld b,#00
	ld c,a
	push hl
	ld hl,l678d
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l62ad
.l6545
	ld a,(hl)
	inc hl
.l6547
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
.l6556
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l670d
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l6572
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
.l6591
	ret
.l6599 equ $ + 7
.l6598 equ $ + 6
.l6597 equ $ + 5
.l6596 equ $ + 4
.l6594 equ $ + 2
.l6592
	db #00,#00,#00,#00,#00,#00,#00,#00
.l659c equ $ + 2
.l659b equ $ + 1
	db #38,#00,#00
.l659d
	dw l6420,l6433,l6432,l6457
	dw l6454,l6467,l6478,l64a0
	dw l64ba,l64a0,l64d4,l64dd
	dw l64ff,l6507,l6526
.l65bb
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
.l667d equ $ + 2
	dw #000f,#0008
.l6681 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l668b equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l669c equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l66ab equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l66af
	db #00,#00,#00,#00,#00,#00,#00,#00
.l66b9 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l66ca equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l66dd equ $ + 6
.l66d9 equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l66e7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l66f8 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l670d equ $ + 6
.l6707
	db #2d,#6a,#48,#6a,#63,#6a,#ad,#67
	db #ed,#67,#0d,#68,#00,#00,#2d,#68
	db #6d,#68,#8d,#68,#80,#00,#ad,#68
	db #ed,#68,#0d,#69,#80,#00,#9f,#20
	db #9f,#20,#9f,#20,#00,#00,#9f,#20
	db #9f,#20,#9f,#20,#00,#00,#9f,#20
	db #9f,#20,#9f,#20,#00,#00,#2d,#69
	db #6d,#69,#0d,#68,#08,#08,#ad,#67
	db #8d,#69,#0d,#68,#00,#00,#9f,#20
	db #9f,#20,#9f,#20,#00,#00,#9f,#20
	db #9f,#20,#9f,#20,#00,#00,#9f,#20
	db #9f,#20,#9f,#20,#00,#00,#9f,#20
	db #9f,#20,#9f,#20,#00,#00,#9f,#20
	db #9f,#20,#9f,#20,#00,#00,#9f,#20
	db #9f,#20,#9f,#20,#00,#00,#9f,#20
	db #9f,#20,#9f,#20,#00,#00,#9f,#20
.l678d equ $ + 6
	db #9f,#20,#9f,#20,#00,#00,#ad,#69
	db #9f,#20,#cd,#69,#9f,#20,#9f,#20
	db #9f,#20,#ed,#69,#9f,#20,#0d,#6a
	db #9f,#20,#9f,#20,#9f,#20,#9f,#20
	db #9f,#20,#9f,#20,#9f,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0c,#0a,#08,#05,#02,#01,#02,#04
	db #06,#08,#07,#05,#03,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#90,#02
	db #e0,#01,#60,#03,#c0,#02,#d0,#02
	db #40,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0e,#0c,#09,#06,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#70,#01
	db #00,#00,#00,#04,#80,#02,#d0,#01
	db #30,#01,#50,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#05,#04,#04,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0e,#0e,#0d,#0d,#0e,#0e,#0d,#0d
	db #0b,#0b,#0a,#0a,#09,#09,#08,#07
	db #06,#04,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#05
	db #07,#07,#00,#05,#07,#07,#00,#05
	db #07,#07,#00,#05,#07,#07,#00,#05
	db #07,#07,#00,#05,#07,#07,#00,#05
	db #07,#07,#00,#05,#07,#07,#00,#04
	db #07,#07,#00,#04,#07,#07,#00,#04
	db #07,#07,#00,#04,#07,#07,#00,#04
	db #07,#07,#00,#04,#07,#07,#00,#04
	db #07,#07,#00,#04,#07,#07,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#05
	db #09,#09,#00,#05,#09,#09,#00,#05
	db #09,#09,#00,#05,#09,#09,#00,#05
	db #09,#09,#00,#05,#09,#09,#00,#05
	db #09,#09,#00,#05,#09,#09,#00,#7e
	db #6a,#00,#7e,#6a,#00,#9f,#6a,#00
	db #9f,#6a,#00,#e1,#6a,#00,#e1,#6a
	db #00,#23,#6b,#00,#23,#6b,#80,#39
	db #6a,#00,#64,#6b,#00,#64,#6b,#00
	db #64,#6b,#00,#64,#6b,#00,#6a,#6b
	db #00,#6a,#6b,#00,#6a,#6b,#00,#6a
	db #6b,#80,#54,#6a,#00,#c1,#6b,#00
	db #c1,#6b,#00,#c1,#6b,#00,#c1,#6b
	db #00,#e6,#6b,#00,#e6,#6b,#00,#e6
	db #6b,#00,#e6,#6b,#80,#6f,#6a,#28
	db #6a,#1e,#04,#2c,#6a,#0c,#04,#2d
	db #6a,#16,#04,#2f,#6a,#14,#04,#31
	db #6a,#12,#04,#33,#6a,#10,#04,#34
	db #6a,#05,#04,#2f,#6a,#14,#04,#ff
	db #28,#7f,#16,#a8,#70,#b4,#70,#a8
	db #70,#ac,#70,#b8,#70,#ac,#70,#b8
	db #70,#ad,#70,#ad,#70,#b9,#70,#ad
	db #70,#af,#70,#bb,#70,#af,#70,#bb
	db #70,#b1,#70,#b1,#70,#bd,#70,#b1
	db #70,#b3,#70,#bf,#70,#b3,#70,#bf
	db #70,#b4,#70,#b4,#70,#c0,#70,#b4
	db #70,#af,#70,#bb,#70,#af,#70,#bb
	db #70,#ff,#28,#1f,#16,#a8,#70,#b4
	db #70,#a8,#70,#ac,#20,#b8,#70,#ac
	db #70,#b8,#10,#ad,#70,#ad,#70,#b9
	db #10,#ad,#70,#af,#20,#bb,#70,#af
	db #20,#bb,#70,#b1,#10,#b1,#70,#bd
	db #70,#b1,#70,#b3,#20,#bf,#70,#b3
	db #70,#bf,#10,#b4,#70,#b4,#70,#c0
	db #10,#b4,#70,#af,#20,#bb,#70,#af
	db #20,#bb,#70,#ff,#64,#78,#1e,#02
	db #6b,#78,#14,#02,#6d,#78,#12,#02
	db #6b,#78,#14,#02,#69,#78,#16,#02
	db #6b,#78,#14,#02,#6d,#78,#12,#02
	db #6b,#78,#14,#02,#69,#78,#16,#02
	db #6b,#78,#14,#02,#6d,#78,#12,#02
	db #6b,#78,#14,#02,#64,#78,#1e,#02
	db #69,#78,#16,#02,#68,#78,#1e,#02
	db #66,#78,#1b,#02,#ff,#fe,#01,#01
	db #00,#1f,#ff,#4c,#76,#20,#02,#44
	db #71,#10,#4c,#7f,#22,#47,#71,#10
	db #4c,#7f,#12,#4c,#7f,#18,#49,#71
	db #10,#47,#7b,#11,#45,#7b,#12,#47
	db #7b,#13,#45,#7b,#14,#44,#7b,#15
	db #42,#7b,#16,#44,#7b,#17,#4c,#76
	db #80,#02,#44,#71,#10,#4c,#7f,#28
	db #47,#71,#10,#4c,#7f,#10,#4c,#7f
	db #12,#40,#71,#10,#45,#7b,#11,#47
	db #7b,#12,#45,#7b,#13,#44,#7b,#14
	db #45,#7b,#15,#44,#7b,#16,#42,#7b
	db #17,#ff,#4c,#67,#12,#04,#4b,#60
	db #03,#c6,#60,#49,#60,#02,#47,#60
	db #02,#45,#60,#02,#42,#60,#02,#40
	db #60,#04,#42,#60,#04,#44,#60,#05
	db #c0,#60,#c4,#60,#c7,#60,#ff,#4c
	db #0f,#16,#d0,#70,#d3,#70,#d0,#70
	db #d8,#00,#d3,#70,#d0,#70,#d3,#00
	db #d1,#70,#d5,#70,#d8,#00,#d5,#70
	db #dd,#00,#d8,#70,#d5,#00,#d8,#70
	db #d1,#00,#d3,#70,#d5,#70,#d3,#70
	db #d7,#00,#d5,#70,#d3,#70,#d5,#00
	db #d3,#70,#d5,#70,#d3,#00,#d1,#70
	db #d0,#00,#d1,#70,#d0,#00,#ce,#70
	db #ff
;
.music_info
	db "Byte 98 Hide Part (1999)(Mortel)()",0
	db "ST-128 Module",0

	read "music_end.asm"
