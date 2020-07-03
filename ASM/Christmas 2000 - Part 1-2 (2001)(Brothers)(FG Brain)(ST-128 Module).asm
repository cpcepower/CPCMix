; Music of Christmas 2000 - Part 1-2 (2001)(Brothers)(FG Brain)(ST-128 Module)
; Ripped by Megachur the 03/09/2017
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "CHRI2P12.BIN"
	ENDIF

music_date_rip_day		equ 03
music_date_rip_month	equ 09
music_date_rip_year		equ 2017
music_adr				equ &6100

	read "music_header.asm"

	jp l6109
	jp l619d
	jp l6181
;
.init_music
.l6109
;
	xor a
	ld hl,l66b4
	call l617a
	ld hl,l66e2
	call l617a
	ld hl,l6710
	call l617a
	ld ix,l66b0
	ld iy,l673a
	ld de,#002e
	ld b,#03
.l6129
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
	djnz l6129
	ld hl,l65c9
	ld (hl),#09
	inc hl
	ld (hl),#30
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l65c5),hl
	ld (l65c7),hl
	ld a,#0c
	ld c,d
	call l65a5
	ld a,#0d
	ld c,d
	jp l65a5
.l617a
	ld b,#2a
.l617c
	ld (hl),a
	inc hl
	djnz l617c
	ret
;
.stop_music
.l6181
;
	ld a,#07
	ld c,#3f
	call l65a5
	ld a,#08
	ld c,#00
	call l65a5
	ld a,#09
	ld c,#00
	call l65a5
	ld a,#0a
	ld c,#00
	jp l65a5
;
.play_music
.l619d
;
	ld hl,l65cb
	dec (hl)
	ld ix,l66b0
	ld bc,l66be
	call l623f
	ld ix,l66de
	ld bc,l66ec
	call l623f
	ld ix,l670c
	ld bc,l671a
	call l623f
	ld hl,l65c4
	ld de,l65cb
	ld b,#06
	call l621c
	ld b,#07
	call l621c
	ld b,#0b
	call l621c
	ld b,#0d
	call l621c
	ld de,l65cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#30
	ld hl,l66cf
	call l61f5
	ld hl,l66fd
	call l61f5
	ld hl,l672b
.l61f5
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
	jr nz,l620a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l620a
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
.l621c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l65a5
.l6227
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l65a5
.l623f
	ld a,(l65cb)
	or a
	jp nz,l62f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l62f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l6227
	or a
	jp z,l62ec
	ld r,a
	and #7f
	cp #10
	jr c,l62c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l643f
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
	jr z,l62a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l62a0
	rrca
	ld c,a
	ld hl,l6740
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
	jr z,l62bf
	ld (ix+#1e),b
.l62bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l62e0
.l62c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l65d0
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
.l62e0
	ld a,d
	or a
	jr nz,l62ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l62ee
.l62ec
	ld a,(hl)
	inc hl
.l62ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l62f7
	ld a,(ix+#17)
	or a
	jr nz,l630d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l630d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l6323
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l6323
	ld a,(ix+#0d)
	or a
	jr z,l6331
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l634f
.l6331
	ld a,(ix+#1a)
	or a
	jp z,l6356
	ld c,a
	cp #03
	jr nz,l633e
	xor a
.l633e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l634f
	ld a,(ix+#18)
	dec c
	jr z,l634f
	ld a,(ix+#19)
.l634f
	add (ix+#07)
	ld b,d
	call l643f
.l6356
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l637e
	dec (ix+#1b)
	jr nz,l637e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l63b6
.l637e
	ld a,(ix+#29)
	or a
	jr z,l63b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l63ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l63a4
	ld (ix+#29),#ff
	jr l63ad
.l63a4
	cp (ix+#2b)
	jr nz,l63ad
	ld (ix+#29),#01
.l63ad
	ld b,d
	or a
	jp p,l63b3
	dec b
.l63b3
	ld c,a
	jr l63c1
.l63b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l63c1
	pop hl
	bit 7,(ix+#14)
	jr z,l63ca
	ld h,d
	ld l,d
.l63ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l65a5
	ld c,h
	ld a,(ix+#02)
	call l65a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l641d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l640c
	dec (ix+#09)
	jr nz,l640c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l6404
	xor a
	jr l6409
.l6404
	cp #10
	jr nz,l6409
	dec a
.l6409
	ld (ix+#1e),a
.l640c
	ld a,b
	sub (ix+#1e)
	jr nc,l6413
	xor a
.l6413
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l65a5
.l641d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l65cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l643b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l643b
	ld (l65cc),hl
	ret
.l643f
	ld hl,l65ee
	cp #61
	jr nc,l6449
	add a
	ld c,a
	add hl,bc
.l6449
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6578
	ld (ix+#1e),a
	jp l62e0
	dec b
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l6471
	neg
.l6471
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
	jp l62e0
	dec b
	jr l648b
	inc b
.l648b
	call l6578
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l62e0
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
	jp l655d
	ld a,(hl)
	inc hl
	or a
	jr z,l64cd
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
.l64cd
	ld (ix+#29),a
	jp l62e0
	dec hl
	ld a,(hl)
	and #0f
	ld (l65cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l65ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l62e0
	ld a,(hl)
	or a
	jr z,l64fe
	call l657a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l62e0
.l64fe
	ld hl,#0101
	ld (l65ca),hl
	jp l62e0
	call l6578
	ld (ix+#1e),a
	jp l62e0
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l6589
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l6589
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l62e0
	ld a,(hl)
	inc hl
	ld (l65c9),a
	jp l62e0
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
	jp l62e0
	call l6578
	add a
.l655d
	ld b,#00
	ld c,a
	push hl
	ld hl,l67c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l62e0
.l6578
	ld a,(hl)
	inc hl
.l657a
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
.l6589
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l6740
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l65a5
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
.l65c4
	ret
.l65cc equ $ + 7
.l65cb equ $ + 6
.l65ca equ $ + 5
.l65c9 equ $ + 4
.l65c7 equ $ + 2
.l65c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l65cf equ $ + 2
.l65ce equ $ + 1
	db #38,#00,#00
.l65d0
	dw #6453,#6466,#6465,#648a
	dw #6487,#649a,#64ab,#64d3
	dw #64ed,#64d3,#6507,#6510
	dw #6532,#653a,#6559
.l65ee
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
.l66b0 equ $ + 2
	dw #000f,#0008
.l66b4 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l66be equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l66cf equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l66de equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l66e2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l66ec equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l66fd equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6710 equ $ + 6
.l670c equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l671a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l672b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6740 equ $ + 6
.l673a
	db #00,#6a,#18,#6a,#30,#6a,#e0,#67
	db #20,#68,#40,#68,#c0,#00,#d2,#20
	db #d2,#20,#d2,#20,#00,#00,#d2,#20
	db #d2,#20,#d2,#20,#00,#00,#60,#68
	db #a0,#68,#c0,#68,#80,#00,#d2,#20
	db #d2,#20,#d2,#20,#00,#00,#e0,#68
	db #20,#69,#40,#69,#9a,#06,#d2,#20
	db #d2,#20,#d2,#20,#00,#00,#60,#69
	db #a0,#69,#c0,#69,#48,#08,#d2,#20
	db #d2,#20,#d2,#20,#00,#00,#e0,#68
	db #e0,#69,#c0,#69,#00,#00,#d2,#20
	db #d2,#20,#d2,#20,#00,#00,#d2,#20
	db #d2,#20,#d2,#20,#00,#00,#d2,#20
	db #d2,#20,#d2,#20,#00,#00,#d2,#20
	db #d2,#20,#d2,#20,#00,#00,#d2,#20
	db #d2,#20,#d2,#20,#00,#00,#d2,#20
.l67c0 equ $ + 6
	db #d2,#20,#d2,#20,#00,#00,#d2,#20
	db #d2,#20,#d2,#20,#d2,#20,#d2,#20
	db #d2,#20,#d2,#20,#d2,#20,#d2,#20
	db #93,#e2,#d2,#20,#d2,#20,#d2,#20
	db #13,#62,#d2,#20,#d2,#20,#00,#00
	db #65,#01,#3e,#01,#00,#00,#c3,#04
	db #65,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0d,#0c,#0b,#0a,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#06,#07,#07,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#0d,#0e
	db #0e,#0e,#0d,#0d,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#08,#00
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
	db #00,#00,#00,#00,#00,#00,#0d,#0b
	db #09,#07,#05,#03,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#0c,#0b
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0d,#0d,#0d,#0c,#0c,#0c,#0c,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#07,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#00,#48
	db #6a,#00,#7e,#6a,#00,#b0,#6a,#00
	db #de,#6a,#00,#0f,#6b,#00,#47,#6b
	db #00,#82,#6b,#80,#00,#6a,#00,#a9
	db #6b,#00,#e3,#6b,#00,#17,#6c,#00
	db #4b,#6c,#00,#84,#6c,#00,#be,#6c
	db #00,#01,#6d,#80,#18,#6a,#00,#2e
	db #6d,#00,#2e,#6d,#00,#2e,#6d,#00
	db #2e,#6d,#00,#2e,#6d,#00,#2e,#6d
	db #00,#77,#6d,#80,#30,#6a,#40,#90
	db #06,#42,#90,#02,#44,#90,#04,#44
	db #90,#02,#44,#90,#02,#c5,#90,#c4
	db #90,#45,#90,#02,#44,#90,#0a,#40
	db #90,#02,#40,#90,#02,#42,#90,#02
	db #44,#90,#02,#44,#90,#02,#44,#90
	db #02,#44,#90,#02,#c5,#90,#c4,#90
	db #45,#90,#02,#ff,#44,#90,#0a,#42
	db #90,#02,#44,#90,#02,#45,#90,#02
	db #47,#90,#02,#47,#90,#02,#47,#90
	db #02,#49,#90,#02,#c7,#90,#c5,#90
	db #44,#90,#02,#42,#90,#0a,#42,#90
	db #02,#44,#90,#02,#45,#90,#02,#47
	db #90,#02,#47,#90,#02,#ff,#47,#90
	db #02,#49,#90,#02,#ca,#90,#c9,#90
	db #47,#90,#02,#45,#90,#04,#c9,#90
	db #c7,#90,#45,#90,#02,#44,#90,#04
	db #c7,#90,#c5,#90,#44,#90,#02,#42
	db #90,#0c,#40,#90,#06,#42,#90,#02
	db #44,#90,#04,#ff,#44,#90,#02,#44
	db #90,#02,#c5,#90,#c4,#90,#45,#90
	db #02,#44,#90,#08,#c2,#90,#c0,#90
	db #42,#90,#02,#40,#90,#08,#40,#90
	db #06,#42,#90,#02,#44,#90,#04,#44
	db #90,#02,#44,#90,#02,#c5,#90,#c4
	db #90,#45,#90,#02,#ff,#44,#90,#06
	db #40,#90,#02,#40,#90,#02,#42,#90
	db #02,#44,#90,#02,#44,#90,#02,#44
	db #90,#02,#44,#90,#02,#c5,#90,#c4
	db #90,#45,#90,#02,#44,#90,#0a,#42
	db #90,#02,#44,#90,#02,#45,#90,#02
	db #47,#90,#02,#47,#90,#02,#47,#90
	db #02,#49,#90,#02,#ff,#c7,#90,#c5
	db #90,#44,#90,#02,#42,#90,#0a,#42
	db #90,#02,#44,#90,#02,#45,#90,#02
	db #47,#90,#02,#47,#90,#02,#47,#90
	db #02,#49,#90,#02,#ca,#90,#c9,#90
	db #47,#90,#02,#45,#90,#04,#c9,#90
	db #c7,#90,#45,#90,#02,#44,#90,#04
	db #c7,#90,#c5,#90,#44,#90,#02,#ff
	db #42,#90,#0c,#40,#90,#04,#42,#90
	db #02,#44,#90,#04,#44,#90,#02,#44
	db #90,#02,#c5,#90,#c4,#90,#45,#90
	db #02,#44,#90,#06,#c2,#90,#c0,#90
	db #42,#90,#02,#40,#90,#08,#ff,#40
	db #7b,#64,#42,#7b,#24,#44,#7b,#44
	db #44,#7b,#24,#44,#7b,#24,#45,#7b
	db #14,#44,#7b,#14,#45,#7b,#24,#44
	db #7b,#a4,#40,#7b,#24,#40,#7b,#24
	db #42,#7b,#24,#44,#7b,#24,#44,#7b
	db #24,#44,#7b,#24,#44,#7b,#24,#45
	db #7b,#14,#44,#7b,#14,#45,#7b,#24
	db #ff,#44,#7b,#a4,#42,#7b,#24,#44
	db #7b,#24,#45,#7b,#24,#47,#7b,#24
	db #47,#7b,#24,#47,#7b,#24,#49,#7b
	db #24,#47,#7b,#14,#45,#7b,#14,#44
	db #7b,#24,#42,#7b,#a4,#42,#7b,#24
	db #44,#7b,#24,#45,#7b,#24,#47,#7b
	db #24,#47,#7b,#24,#ff,#47,#7b,#24
	db #49,#7b,#24,#4a,#7b,#14,#49,#7b
	db #14,#47,#7b,#24,#45,#7b,#44,#49
	db #7b,#14,#47,#7b,#14,#45,#7b,#24
	db #44,#7b,#44,#47,#7b,#14,#45,#7b
	db #14,#44,#7b,#24,#42,#7b,#c4,#40
	db #7b,#64,#42,#7b,#24,#44,#7b,#44
	db #ff,#44,#7b,#24,#44,#7b,#24,#45
	db #7b,#14,#44,#7b,#14,#45,#7b,#24
	db #44,#7b,#84,#42,#7b,#14,#40,#7b
	db #14,#42,#7b,#24,#40,#7b,#74,#fe
	db #01,#40,#7b,#64,#42,#7b,#24,#44
	db #7b,#44,#44,#7b,#24,#44,#7b,#24
	db #45,#7b,#14,#44,#7b,#14,#45,#7b
	db #24,#ff,#44,#7b,#64,#40,#7b,#24
	db #40,#7b,#24,#42,#7b,#24,#44,#7b
	db #24,#44,#7b,#24,#44,#7b,#24,#44
	db #7b,#24,#45,#7b,#14,#44,#7b,#14
	db #45,#7b,#24,#44,#7b,#a4,#42,#7b
	db #24,#44,#7b,#24,#45,#7b,#24,#47
	db #7b,#24,#47,#7b,#24,#47,#7b,#24
	db #49,#7b,#24,#ff,#47,#7b,#14,#45
	db #7b,#14,#44,#7b,#24,#42,#7b,#a4
	db #42,#7b,#24,#44,#7b,#24,#45,#7b
	db #24,#47,#7b,#24,#47,#7b,#24,#47
	db #7b,#24,#49,#7b,#24,#4a,#7b,#14
	db #49,#7b,#14,#47,#7b,#24,#45,#7b
	db #44,#49,#7b,#14,#47,#7b,#14,#45
	db #7b,#24,#44,#7b,#44,#47,#7b,#14
	db #45,#7b,#14,#44,#7b,#24,#ff,#42
	db #7b,#c4,#40,#7b,#44,#42,#7b,#24
	db #44,#7b,#44,#44,#7b,#24,#44,#7b
	db #24,#45,#7b,#14,#44,#7b,#14,#45
	db #7b,#24,#44,#7b,#64,#42,#7b,#14
	db #40,#7b,#14,#42,#7b,#24,#40,#7b
	db #74,#fe,#01,#ff,#44,#30,#02,#44
	db #50,#02,#44,#00,#02,#44,#50,#02
	db #44,#30,#02,#44,#50,#02,#44,#00
	db #02,#44,#50,#02,#44,#30,#02,#44
	db #50,#02,#44,#00,#02,#44,#50,#02
	db #44,#30,#02,#44,#50,#02,#44,#00
	db #02,#44,#50,#02,#44,#30,#02,#44
	db #50,#02,#44,#00,#02,#44,#50,#02
	db #44,#30,#02,#44,#50,#02,#44,#00
	db #02,#44,#50,#02,#ff,#44,#30,#02
	db #44,#50,#02,#44,#00,#02,#44,#50
	db #02,#44,#30,#02,#44,#50,#02,#44
	db #00,#02,#44,#50,#02,#44,#30,#02
	db #44,#50,#02,#44,#00,#02,#44,#50
	db #02,#44,#30,#02,#44,#50,#02,#44
	db #00,#02,#44,#50,#02,#44,#30,#02
	db #44,#50,#02,#44,#00,#02,#44,#50
	db #02,#44,#30,#02,#44,#50,#02,#44
	db #00,#02,#44,#00,#02,#ff
;
.music_info
	db "Christmas 2000 - Part 1-2 (2001)(Brothers)(FG Brain)",0
	db "ST-128 Module",0

	read "music_end.asm"
