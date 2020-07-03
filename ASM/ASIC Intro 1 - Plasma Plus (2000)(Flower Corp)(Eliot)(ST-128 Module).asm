; Music of ASIC Intro 1 - Plasma Plus (2000)(Flower Corp)(Eliot)(ST-128 Module)
; Ripped by Megachur the 02/10/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "ASICI1PP.BIN"
	ENDIF

music_date_rip_day		equ 02
music_date_rip_month	equ 10
music_date_rip_year		equ 2014
music_adr				equ &6094

	read "music_header.asm"

;
.init_music
;
	xor a
	ld hl,l663f
	call l6105
	ld hl,l666d
	call l6105
	ld hl,l669b
	call l6105
	ld ix,l663b
	ld iy,l66c5
	ld de,#002e
	ld b,#03
.l60b4
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
	djnz l60b4
	ld hl,l6554
	ld (hl),#04
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l6550),hl
	ld (l6552),hl
	ld a,#0c
	ld c,d
	call l6530
	ld a,#0d
	ld c,d
	jp l6530
.l6105
	ld b,#2a
.l6107
	ld (hl),a
	inc hl
	djnz l6107
	ret
;
.stop_music
;
	ld a,#07
	ld c,#3f
	call l6530
	ld a,#08
	ld c,#00
	call l6530
	ld a,#09
	ld c,#00
	call l6530
	ld a,#0a
	ld c,#00
	jp l6530
;
.play_music
;
	ld hl,l6556
	dec (hl)
	ld ix,l663b
	ld bc,l6649
	call l61ca
	ld ix,l6669
	ld bc,l6677
	call l61ca
	ld ix,l6697
	ld bc,l66a5
	call l61ca
	ld hl,l654f
	ld de,l6556
	ld b,#06
	call l61a7
	ld b,#07
	call l61a7
	ld b,#0b
	call l61a7
	ld b,#0d
	call l61a7
	ld de,l6556
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l665a
	call l6180
	ld hl,l6688
	call l6180
	ld hl,l66b6
.l6180
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
	jr nz,l6195
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l6195
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
.l61a7
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l6530
.l61b2
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l6530
.l61ca
	ld a,(l6556)
	or a
	jp nz,l6282
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l6282
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l61b2
	or a
	jp z,l6277
	ld r,a
	and #7f
	cp #10
	jr c,l6252
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l63ca
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
	jr z,l622b
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l622b
	rrca
	ld c,a
	ld hl,l66cb
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
	jr z,l624a
	ld (ix+#1e),b
.l624a
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l626b
.l6252
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l655b
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
.l626b
	ld a,d
	or a
	jr nz,l6279
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l6279
.l6277
	ld a,(hl)
	inc hl
.l6279
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l6282
	ld a,(ix+#17)
	or a
	jr nz,l6298
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l6298
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l62ae
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l62ae
	ld a,(ix+#0d)
	or a
	jr z,l62bc
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l62da
.l62bc
	ld a,(ix+#1a)
	or a
	jp z,l62e1
	ld c,a
	cp #03
	jr nz,l62c9
	xor a
.l62c9
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l62da
	ld a,(ix+#18)
	dec c
	jr z,l62da
	ld a,(ix+#19)
.l62da
	add (ix+#07)
	ld b,d
	call l63ca
.l62e1
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l6309
	dec (ix+#1b)
	jr nz,l6309
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l6341
.l6309
	ld a,(ix+#29)
	or a
	jr z,l6341
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l6338
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l632f
	ld (ix+#29),#ff
	jr l6338
.l632f
	cp (ix+#2b)
	jr nz,l6338
	ld (ix+#29),#01
.l6338
	ld b,d
	or a
	jp p,l633e
	dec b
.l633e
	ld c,a
	jr l634c
.l6341
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l634c
	pop hl
	bit 7,(ix+#14)
	jr z,l6355
	ld h,d
	ld l,d
.l6355
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l6530
	ld c,h
	ld a,(ix+#02)
	call l6530
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l63a8
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l6397
	dec (ix+#09)
	jr nz,l6397
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l638f
	xor a
	jr l6394
.l638f
	cp #10
	jr nz,l6394
	dec a
.l6394
	ld (ix+#1e),a
.l6397
	ld a,b
	sub (ix+#1e)
	jr nc,l639e
	xor a
.l639e
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l6530
.l63a8
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l6557)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l63c6
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l63c6
	ld (l6557),hl
	ret
.l63ca
	ld hl,l6579
	cp #61
	jr nc,l63d4
	add a
	ld c,a
	add hl,bc
.l63d4
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l63de
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6503
	ld (ix+#1e),a
	jp l626b
.l63f0
	dec b
.l63f1
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l63fc
	neg
.l63fc
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
	jp l626b
.l6412
	dec b
	jr l6416
.l6415
	inc b
.l6416
	call l6503
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l626b
.l6425
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
	jp l64e8
.l6436
	ld a,(hl)
	inc hl
	or a
	jr z,l6458
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
.l6458
	ld (ix+#29),a
	jp l626b
.l645e
	dec hl
	ld a,(hl)
	and #0f
	ld (l655a),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l6559),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l626b
.l6478
	ld a,(hl)
	or a
	jr z,l6489
	call l6505
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l626b
.l6489
	ld hl,#0101
	ld (l6555),hl
	jp l626b
.l6492
	call l6503
	ld (ix+#1e),a
	jp l626b
.l649b
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l6514
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l6514
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l626b
.l64bd
	ld a,(hl)
	inc hl
	ld (l6554),a
	jp l626b
.l64c5
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
	jp l626b
.l64e4
	call l6503
	add a
.l64e8
	ld b,#00
	ld c,a
	push hl
	ld hl,l674b
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l626b
.l6503
	ld a,(hl)
	inc hl
.l6505
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
.l6514
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l66cb
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l6530
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
.l654f
	ret
.l6557 equ $ + 7
.l6556 equ $ + 6
.l6555 equ $ + 5
.l6554 equ $ + 4
.l6552 equ $ + 2
.l6550
	db #00,#00,#00,#00,#00,#00,#00,#00
.l655a equ $ + 2
.l6559 equ $ + 1
	db #38,#00,#00
.l655b
	dw l63de,l63f1,l63f0,l6415
	dw l6412,l6425,l6436,l645e
	dw l6478,l645e,l6492,l649b
	dw l64bd,l64c5,l64e4
.l6579
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
.l663b equ $ + 2
	dw #000f,#0008
.l663f equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l6649 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l665a equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6669 equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l666d
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6677 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6688 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l669b equ $ + 6
.l6697 equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l66a5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l66b6 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l66cb equ $ + 6
.l66c5
	db #0b,#6a,#26,#6a,#41,#6a,#6b,#67
	db #ab,#67,#cb,#67,#00,#00,#b2,#75
	db #07,#cb,#07,#cb,#55,#55,#b2,#75
	db #07,#cb,#07,#cb,#55,#55,#eb,#67
	db #2b,#68,#4b,#68,#00,#00,#b2,#75
	db #07,#cb,#07,#cb,#55,#55,#b2,#75
	db #07,#cb,#07,#cb,#55,#55,#b2,#75
	db #07,#cb,#07,#cb,#55,#55,#b2,#75
	db #07,#cb,#07,#cb,#55,#55,#6b,#67
	db #6b,#68,#8b,#68,#00,#00,#b2,#75
	db #07,#cb,#07,#cb,#55,#55,#b2,#75
	db #07,#cb,#07,#cb,#55,#55,#b2,#75
	db #07,#cb,#07,#cb,#55,#55,#b2,#75
	db #07,#cb,#07,#cb,#55,#55,#ab,#68
	db #eb,#68,#0b,#69,#80,#00,#2b,#69
	db #6b,#69,#8b,#69,#14,#0c,#b2,#75
.l674b equ $ + 6
	db #07,#cb,#07,#cb,#55,#55,#ab,#69
	db #cb,#69,#eb,#69,#b2,#75,#b2,#75
	db #07,#cb,#07,#cb,#b2,#75,#b2,#75
	db #b2,#75,#b2,#75,#07,#cb,#07,#cb
	db #b2,#75,#b2,#75,#07,#cb,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0c,#0a,#08,#07,#05,#04,#01,#00
	db #80,#81,#81,#81,#81,#81,#81,#81
	db #81,#81,#81,#81,#81,#81,#81,#81
	db #81,#81,#81,#81,#81,#81,#0c,#0a
	db #09,#08,#06,#05,#04,#03,#03,#02
	db #02,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#00
	db #0c,#00,#0c,#00,#00,#00,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#08
	db #04,#00,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#01,#01,#00,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0e,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#07,#06,#05,#04,#03
	db #03,#02,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#90,#01
	db #e0,#01,#30,#02,#80,#02,#d0,#02
	db #20,#03,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0f
	db #0c,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#fe,#ff,#fe,#ff
	db #00,#00,#00,#00,#00,#00,#02,#00
	db #03,#00,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#0a,#0b
	db #0b,#0b,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#03,#00
	db #03,#07,#03,#00,#03,#07,#03,#00
	db #03,#07,#03,#00,#03,#07,#03,#00
	db #03,#07,#03,#00,#03,#07,#03,#00
	db #03,#07,#03,#00,#03,#07,#03,#00
	db #04,#07,#03,#00,#04,#07,#03,#00
	db #04,#07,#03,#00,#04,#07,#03,#00
	db #04,#07,#03,#00,#04,#07,#03,#00
	db #04,#07,#03,#00,#04,#07,#00,#5c
	db #6a,#00,#5c,#6a,#00,#5c,#6a,#00
	db #bf,#6a,#00,#5c,#6a,#00,#5c,#6a
	db #00,#5c,#6a,#00,#5c,#6a,#80,#0b
	db #6a,#00,#59,#6b,#00,#1a,#6c,#00
	db #59,#6b,#00,#1a,#6c,#00,#59,#6b
	db #00,#59,#6b,#00,#59,#6b,#00,#1a
	db #6c,#80,#26,#6a,#00,#de,#6c,#00
	db #db,#6c,#00,#de,#6c,#00,#db,#6c
	db #00,#e1,#6c,#00,#1c,#6d,#00,#34
	db #6d,#00,#67,#6d,#80,#41,#6a,#40
	db #d0,#02,#47,#30,#02,#40,#00,#02
	db #40,#d0,#02,#40,#d0,#02,#47,#30
	db #02,#40,#00,#02,#c7,#30,#c0,#d0
	db #47,#30,#02,#40,#d0,#02,#40,#00
	db #02,#40,#d0,#02,#40,#d0,#02,#47
	db #30,#02,#40,#00,#02,#47,#30,#02
	db #40,#d0,#02,#47,#30,#02,#40,#00
	db #02,#40,#d0,#02,#40,#d0,#02,#47
	db #30,#02,#40,#00,#02,#c7,#30,#c0
	db #d0,#47,#30,#02,#40,#d0,#02,#40
	db #00,#02,#40,#d0,#02,#40,#d0,#02
	db #47,#30,#02,#40,#00,#02,#47,#30
	db #02,#ff,#40,#d0,#02,#47,#30,#02
	db #40,#00,#02,#40,#d0,#02,#40,#d0
	db #02,#47,#30,#02,#40,#00,#02,#c7
	db #30,#c0,#d0,#47,#30,#02,#40,#d0
	db #02,#40,#00,#02,#40,#d0,#02,#40
	db #d0,#02,#47,#30,#02,#40,#00,#02
	db #47,#30,#02,#40,#d0,#02,#47,#30
	db #02,#40,#00,#02,#40,#d0,#02,#40
	db #d0,#02,#47,#30,#02,#40,#00,#02
	db #c7,#30,#c0,#d0,#47,#30,#02,#40
	db #d0,#02,#40,#00,#02,#40,#d0,#02
	db #c0,#00,#c0,#00,#47,#30,#02,#c0
	db #00,#c0,#00,#c0,#00,#c0,#00,#ff
	db #41,#e1,#c0,#41,#e0,#04,#41,#e0
	db #06,#43,#e0,#06,#41,#e0,#04,#c4
	db #e0,#45,#e0,#0f,#45,#e0,#02,#c8
	db #e0,#c5,#e0,#c3,#e0,#c8,#e0,#c5
	db #e0,#c3,#e0,#c8,#e0,#c5,#e0,#c1
	db #e0,#c5,#e0,#c3,#e0,#c1,#e0,#c0
	db #e0,#be,#e0,#ff,#d1,#86,#03,#ca
	db #86,#07,#ca,#86,#10,#d1,#86,#07
	db #ca,#86,#03,#c5,#86,#07,#d1,#86
	db #03,#ca,#86,#07,#ca,#86,#10,#d1
	db #86,#07,#ca,#86,#03,#c5,#86,#07
	db #d1,#86,#03,#ca,#86,#07,#ca,#86
	db #10,#d1,#86,#07,#d1,#86,#03,#ca
	db #86,#07,#ca,#86,#10,#d1,#86,#07
	db #ca,#86,#03,#c5,#86,#07,#d1,#86
	db #03,#ca,#86,#07,#ca,#86,#10,#d1
	db #86,#07,#ca,#86,#03,#c5,#86,#07
	db #d1,#86,#03,#ca,#86,#07,#ca,#86
	db #10,#d1,#86,#07,#d4,#86,#03,#ca
	db #86,#07,#c8,#86,#20,#d1,#86,#07
	db #ca,#86,#03,#c5,#86,#07,#d1,#86
	db #03,#ca,#86,#07,#c8,#86,#20,#d1
	db #86,#07,#ca,#86,#03,#c5,#86,#07
	db #d1,#86,#03,#ca,#86,#07,#c8,#86
	db #20,#d1,#86,#07,#d4,#86,#03,#ca
	db #86,#07,#c8,#86,#20,#d1,#86,#07
	db #ca,#86,#03,#c5,#86,#07,#d1,#86
	db #03,#ca,#86,#07,#c8,#86,#10,#d1
	db #86,#07,#ca,#86,#03,#c5,#86,#07
	db #d1,#86,#03,#ca,#86,#07,#c8,#86
	db #20,#d1,#86,#07,#ff,#d1,#86,#03
	db #ca,#86,#07,#c6,#86,#20,#d1,#86
	db #07,#ca,#86,#03,#c5,#86,#07,#d1
	db #86,#03,#ca,#86,#07,#c6,#86,#20
	db #d1,#86,#07,#ca,#86,#03,#c5,#86
	db #07,#d1,#86,#03,#ca,#86,#07,#c6
	db #86,#20,#d1,#86,#07,#d1,#86,#03
	db #ca,#86,#07,#c8,#86,#20,#d1,#86
	db #07,#ca,#86,#03,#c5,#86,#07,#d1
	db #86,#03,#ca,#86,#07,#c8,#86,#20
	db #d1,#86,#07,#ca,#86,#03,#c5,#86
	db #07,#d1,#86,#03,#ca,#86,#07,#c8
	db #86,#20,#d1,#86,#07,#d1,#86,#03
	db #ca,#86,#07,#ca,#86,#10,#d1,#86
	db #07,#ca,#86,#03,#c5,#86,#07,#d1
	db #86,#03,#ca,#86,#07,#ca,#86,#10
	db #d1,#86,#07,#ca,#86,#03,#c5,#86
	db #07,#d1,#86,#03,#ca,#86,#07,#ca
	db #86,#10,#d1,#86,#07,#d1,#86,#03
	db #ca,#86,#07,#ca,#86,#10,#d1,#86
	db #07,#ca,#86,#03,#c5,#86,#07,#d1
	db #86,#03,#ca,#86,#07,#ca,#86,#10
	db #d1,#86,#07,#ca,#86,#03,#c5,#86
	db #07,#d1,#86,#03,#ca,#86,#07,#ca
	db #86,#10,#d1,#86,#07,#ff,#00,#40
	db #ff,#fe,#40,#ff,#4a,#e0,#12,#45
	db #e0,#02,#4d,#e0,#02,#4a,#e0,#02
	db #cf,#e3,#12,#d1,#e3,#11,#54,#eb
	db #10,#0b,#12,#4f,#eb,#10,#d0,#e2
	db #11,#4d,#e0,#02,#ce,#e3,#11,#4f
	db #e0,#03,#51,#e0,#02,#d3,#e0,#54
	db #e0,#03,#51,#e0,#04,#4f,#e0,#0e
	db #4d,#e0,#02,#4c,#e0,#02,#ff,#4d
	db #e0,#0c,#4d,#e0,#02,#4f,#e0,#02
	db #4d,#e0,#06,#4f,#e0,#06,#4d,#e0
	db #04,#c9,#e0,#4a,#e0,#1f,#ff,#4a
	db #e0,#12,#45,#e0,#02,#4d,#e0,#02
	db #4a,#e0,#02,#cf,#e3,#12,#d1,#e3
	db #11,#54,#eb,#10,#0b,#12,#4f,#eb
	db #10,#d0,#e2,#11,#4d,#e0,#02,#ce
	db #e3,#11,#4f,#e0,#03,#51,#e0,#02
	db #4f,#e0,#16,#4d,#e0,#02,#4c,#e0
	db #02,#ff,#4d,#e0,#0c,#4d,#e0,#02
	db #4f,#e0,#02,#4d,#e0,#06,#4f,#e0
	db #06,#4d,#e0,#04,#d0,#e0,#51,#e0
	db #0f,#51,#e0,#02,#54,#eb,#10,#51
	db #eb,#11,#4f,#eb,#10,#54,#eb,#11
	db #51,#eb,#10,#4f,#eb,#11,#54,#eb
	db #10,#51,#eb,#11,#4d,#eb,#10,#51
	db #eb,#11,#4f,#eb,#10,#4d,#eb,#11
	db #4c,#eb,#10,#4a,#eb,#11,#ff,#01
	db #e0,#43,#e0,#08,#43,#e0,#06,#41
	db #e0,#04,#c4,#e0,#45,#e0,#0f,#45
	db #e0,#02,#c8,#ee,#01,#c5,#e0,#c3
	db #e0,#c8,#e0,#c5,#e0,#c3,#e0,#c8
	db #e0,#c5,#e0,#c1,#e0,#c5,#e0,#c3
	db #e0,#c1,#e0,#c0,#e0,#be,#e0,#ff
;
.music_info
	db "ASIC Intro 1 - Plasma Plus (2000)(Flower Corp)(Eliot)",0
	db "ST-128 Module",0

	read "music_end.asm"