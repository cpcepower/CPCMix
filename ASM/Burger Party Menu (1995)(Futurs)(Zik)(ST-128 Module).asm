; Music of Burger Party Menu (1995)(Futurs)(Zik)(ST-128 Module)
; Ripped by Megachur the 03/04/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BURGERPA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #2000

	read "music_header.asm"

	jp l2009
	jp l209d
	jp l2081
;
.init_music
.l2009
;
	xor a
	ld hl,l25b4
	call l207a
	ld hl,l25e2
	call l207a
	ld hl,l2610
	call l207a
	ld ix,l25b0
	ld iy,l263a
	ld de,#002e
	ld b,#03
.l2029
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
	djnz l2029
	ld hl,l24c9
	ld (hl),#08
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l24c5),hl
	ld (l24c7),hl
	ld a,#0c
	ld c,d
	call l24a5
	ld a,#0d
	ld c,d
	jp l24a5
.l207a
	ld b,#2a
.l207c
	ld (hl),a
	inc hl
	djnz l207c
	ret
;
.stop_music
.l2081
;
	ld a,#07
	ld c,#3f
	call l24a5
	ld a,#08
	ld c,#00
	call l24a5
	ld a,#09
	ld c,#00
	call l24a5
	ld a,#0a
	ld c,#00
	jp l24a5
;
.play_music
.l209d
;
	ld hl,l24cb
	dec (hl)
	ld ix,l25b0
	ld bc,l25be
	call l213f
	ld ix,l25de
	ld bc,l25ec
	call l213f
	ld ix,l260c
	ld bc,l261a
	call l213f
	ld hl,l24c4
	ld de,l24cb
	ld b,#06
	call l211c
	ld b,#07
	call l211c
	ld b,#0b
	call l211c
	ld b,#0d
	call l211c
	ld de,l24cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l25cf
	call l20f5
	ld hl,l25fd
	call l20f5
	ld hl,l262b
.l20f5
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
	jr nz,l210a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l210a
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
.l211c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l24a5
.l2127
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l24a5
.l213f
	ld a,(l24cb)
	or a
	jp nz,l21f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l21f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l2127
	or a
	jp z,l21ec
	ld r,a
	and #7f
	cp #10
	jr c,l21c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l233f
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
	jr z,l21a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l21a0
	rrca
	ld c,a
	ld hl,l2640
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
	jr z,l21bf
	ld (ix+#1e),b
.l21bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l21e0
.l21c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l24d0
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
.l21e0
	ld a,d
	or a
	jr nz,l21ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l21ee
.l21ec
	ld a,(hl)
	inc hl
.l21ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l21f7
	ld a,(ix+#17)
	or a
	jr nz,l220d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l220d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l2223
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l2223
	ld a,(ix+#0d)
	or a
	jr z,l2231
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l224f
.l2231
	ld a,(ix+#1a)
	or a
	jp z,l2256
	ld c,a
	cp #03
	jr nz,l223e
	xor a
.l223e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l224f
	ld a,(ix+#18)
	dec c
	jr z,l224f
	ld a,(ix+#19)
.l224f
	add (ix+#07)
	ld b,d
	call l233f
.l2256
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l227e
	dec (ix+#1b)
	jr nz,l227e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l22b6
.l227e
	ld a,(ix+#29)
	or a
	jr z,l22b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l22ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l22a4
	ld (ix+#29),#ff
	jr l22ad
.l22a4
	cp (ix+#2b)
	jr nz,l22ad
	ld (ix+#29),#01
.l22ad
	ld b,d
	or a
	jp p,l22b3
	dec b
.l22b3
	ld c,a
	jr l22c1
.l22b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l22c1
	pop hl
	bit 7,(ix+#14)
	jr z,l22ca
	ld h,d
	ld l,d
.l22ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l24a5
	ld c,h
	ld a,(ix+#02)
	call l24a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l231d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l230c
	dec (ix+#09)
	jr nz,l230c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l2304
	xor a
	jr l2309
.l2304
	cp #10
	jr nz,l2309
	dec a
.l2309
	ld (ix+#1e),a
.l230c
	ld a,b
	sub (ix+#1e)
	jr nc,l2313
	xor a
.l2313
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l24a5
.l231d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l24cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l233b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l233b
	ld (l24cc),hl
	ret
.l233f
	ld hl,l24ee
	cp #61
	jr nc,l2349
	add a
	ld c,a
	add hl,bc
.l2349
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l2353
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l2478
	ld (ix+#1e),a
	jp l21e0
.l2365
	dec b
.l2366
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l2371
	neg
.l2371
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
	jp l21e0
.l2387
	dec b
	jr l238b
.l238a
	inc b
.l238b
	call l2478
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l21e0
.l239a
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
	jp l245d
.l23ab
	ld a,(hl)
	inc hl
	or a
	jr z,l23cd
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
.l23cd
	ld (ix+#29),a
	jp l21e0
.l23d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l24cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l24ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l21e0
.l23ed
	ld a,(hl)
	or a
	jr z,l23fe
	call l247a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l21e0
.l23fe
	ld hl,#0101
	ld (l24ca),hl
	jp l21e0
.l2407
	call l2478
	ld (ix+#1e),a
	jp l21e0
.l2410
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l2489
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l2489
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l21e0
.l2432
	ld a,(hl)
	inc hl
	ld (l24c9),a
	jp l21e0
.l243a
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
	jp l21e0
.l2459
	call l2478
	add a
.l245d
	ld b,#00
	ld c,a
	push hl
	ld hl,l26c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l21e0
.l2478
	ld a,(hl)
	inc hl
.l247a
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
.l2489
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l2640
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l24a5
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
.l24c4
	ret
.l24cc equ $ + 7
.l24cb equ $ + 6
.l24ca equ $ + 5
.l24c9 equ $ + 4
.l24c7 equ $ + 2
.l24c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l24cf equ $ + 2
.l24ce equ $ + 1
	db #38,#00,#00
.l24d0
	dw l2353,l2366,l2365,l238a
	dw l2387,l239a,l23ab,l23d3
	dw l23ed,l23d3,l2407,l2410
	dw l2432,l243a,l2459
.l24ee
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
.l25b4 equ $ + 4
.l25b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l25be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l25cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l25de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l25e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l25ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l25fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l260c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l2610
	db #00,#00,#00,#00,#00,#00,#00,#00
.l261a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l262b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l2640 equ $ + 6
.l263a
	dw l2980,l29a1,l29c2,l26e0
	dw l2720,l2740,#0000,l2760
	dw l27a0,l2740,#1010,l27c0
	dw l2800,l2740,#0000,#3527
	dw #8a7c,#8a7c,#5555,l2820
	dw l2860,l2740,#0000,#3527
	dw #8a7c,#8a7c,#5555,l2880
	dw l28c0,l28e0,#0000
	dw #3527,#8a7c,#8a7c,#5555
	dw l2900,l2940,l2960,#0000
	db #27,#35,#7c,#8a,#7c,#8a,#55,#55
	db #27,#35,#7c,#9a,#5c,#6a,#55,#55
	db #c7,#b5,#5c,#8a,#5c,#ca,#f5,#55
	db #17,#35,#bc,#8a,#7c,#0a,#f5,#d5
	db #27,#31,#bc,#9a,#5c,#8a,#75,#45
	db #27,#25,#bc,#8a,#dc,#19,#f5,#f5
	db #17,#21,#7c,#9a,#bc,#9a,#f5,#d5
.l26c0
	db #e7,#34,#5c,#8a,#dc,#99,#c7,#35
	db #17,#35,#7c,#8a,#5c,#9a,#27,#b5
	db #17,#35,#27,#35,#17,#31,#7c,#8a
	db #7c,#8a,#c7,#55,#17,#35,#7c,#8a
.l26e0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2720
	db #0e,#0e,#0e,#0d,#0b,#08,#05,#03
	db #02,#02,#04,#05,#05,#05,#04,#03
	db #02,#01,#00,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
.l2740
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2760
	db #fe,#ff,#fe,#ff,#fe,#ff,#fe,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#fe,#ff,#fe,#ff,#fe,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#fe,#ff,#fe,#ff,#fe,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#fe,#ff,#fe,#ff,#fe,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
.l27a0
	db #0e,#0e,#0d,#0c,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
.l27c0
	db #00,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#00,#00,#01,#00,#02,#00
	db #02,#00,#02,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#02,#00
	db #02,#00,#02,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2800
	db #0f,#0d,#0c,#0b,#8a,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
.l2820
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
.l2860
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0d,#0a,#09,#0c,#0e,#0c,#0a,#04
	db #04,#04,#04,#84,#84,#84,#84,#84
	db #04,#04,#04,#04,#04,#04,#00,#00
.l2880
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l28c0
	db #0d,#0d,#0c,#0c,#0b,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l28e0
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2900
	db #00,#00,#10,#00,#20,#00,#30,#00
	db #40,#00,#50,#00,#60,#00,#70,#00
	db #80,#00,#90,#00,#a0,#00,#b0,#00
	db #c0,#00,#d0,#00,#e0,#00,#f0,#00
	db #00,#01,#10,#01,#20,#01,#30,#01
	db #40,#01,#50,#01,#60,#01,#70,#01
	db #90,#01,#b0,#01,#d0,#01,#00,#02
	db #30,#02,#60,#02,#80,#02,#a0,#02
.l2940
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2960
	db #0e,#0a,#0e,#10,#1f,#0e,#0c,#08
	db #07,#07,#07,#07,#07,#06,#04,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2980
	db #00,#a4,#2a,#00,#e3,#29,#00,#4d
	db #2a,#00,#02,#2a,#00,#b6,#2a,#00
	db #02,#2a,#00,#b6,#2a,#00,#4d,#2a
	db #00,#04,#2b,#00,#50,#2b,#80,#80
.l29a1 equ $ + 1
	db #29,#00,#9e,#2b,#00,#9e,#2b,#00
	db #9e,#2b,#00,#0a,#2c,#00,#71,#2c
	db #00,#0a,#2c,#00,#71,#2c,#00,#9e
	db #2b,#00,#0a,#2c,#00,#b1,#2c,#80
.l29c2 equ $ + 2
	db #a1,#29,#00,#1b,#2d,#00,#1b,#2d
	db #00,#68,#2d,#00,#44,#2d,#00,#97
	db #2d,#00,#44,#2d,#00,#97,#2d,#00
	db #68,#2d,#00,#ec,#2d,#00,#42,#2e
	db #80,#c2,#29,#34,#1b,#d1,#b2,#10
	db #2f,#10,#02,#32,#10,#10,#37,#10
	db #07,#b6,#10,#37,#10,#08,#39,#10
	db #07,#be,#10,#3d,#10,#04,#3b,#10
	db #04,#ff,#34,#10,#02,#b4,#60,#b4
	db #60,#b4,#60,#b4,#60,#34,#60,#02
	db #34,#80,#02,#34,#10,#02,#b4,#60
	db #b4,#60,#34,#60,#02,#b4,#60,#b4
	db #60,#34,#60,#06,#34,#80,#02,#32
	db #10,#02,#2f,#10,#02,#34,#80,#02
	db #32,#10,#06,#b4,#60,#b4,#60,#34
	db #80,#02,#32,#10,#0a,#34,#60,#04
	db #34,#60,#02,#34,#60,#02,#34,#60
	db #02,#34,#80,#02,#ff,#34,#10,#03
	db #34,#10,#02,#34,#10,#02,#b4,#10
	db #34,#10,#02,#34,#10,#02,#b4,#10
	db #b2,#10,#2f,#10,#02,#32,#10,#02
	db #36,#1b,#11,#b2,#10,#2f,#1b,#12
	db #b2,#10,#36,#1b,#13,#b9,#10,#be
	db #10,#b9,#10,#36,#1b,#13,#b2,#10
	db #2d,#1b,#12,#2f,#1b,#11,#36,#1b
	db #10,#b2,#10,#37,#10,#06,#b4,#10
	db #b6,#10,#37,#10,#05,#34,#10,#03
	db #39,#10,#07,#be,#10,#3d,#10,#04
	db #3b,#10,#04,#ff,#fe,#36,#3e,#1b
	db #29,#3d,#1b,#28,#36,#10,#02,#3e
	db #10,#02,#39,#10,#02,#ff,#34,#10
	db #02,#b4,#60,#b4,#60,#b4,#60,#b4
	db #60,#34,#60,#02,#34,#80,#06,#36
	db #10,#02,#37,#10,#04,#34,#60,#02
	db #b4,#60,#b4,#60,#34,#60,#02,#34
	db #60,#02,#b4,#60,#b4,#60,#34,#60
	db #02,#39,#10,#02,#34,#60,#02,#34
	db #60,#06,#34,#60,#04,#3e,#10,#02
	db #3d,#10,#04,#34,#60,#04,#3b,#10
	db #02,#34,#60,#02,#b4,#60,#b4,#60
	db #34,#80,#02,#ff,#34,#1d,#06,#02
	db #b4,#60,#b4,#60,#b4,#60,#b4,#60
	db #34,#60,#02,#34,#80,#02,#34,#10
	db #02,#b4,#60,#b4,#60,#34,#60,#02
	db #b4,#60,#b4,#60,#34,#60,#06,#34
	db #80,#02,#32,#10,#02,#2f,#10,#02
	db #34,#80,#02,#32,#10,#06,#b4,#60
	db #b4,#60,#34,#80,#02,#32,#10,#0a
	db #34,#60,#04,#34,#60,#02,#34,#60
	db #02,#34,#60,#02,#34,#80,#02,#ff
	db #34,#11,#20,#b4,#60,#b4,#60,#b4
	db #60,#b4,#60,#34,#60,#02,#34,#80
	db #06,#36,#10,#02,#37,#10,#04,#34
	db #60,#02,#b4,#60,#b4,#60,#34,#60
	db #02,#34,#60,#02,#b4,#60,#b4,#60
	db #34,#60,#02,#39,#10,#02,#34,#60
	db #02,#34,#60,#06,#34,#60,#04,#3e
	db #10,#02,#3d,#10,#04,#34,#60,#04
	db #3b,#10,#02,#34,#60,#02,#b4,#60
	db #b4,#60,#34,#80,#02,#ff,#4c,#0e
	db #37,#02,#cc,#00,#4c,#00,#02,#cc
	db #00,#4c,#00,#02,#4c,#00,#02,#cc
	db #00,#4c,#00,#02,#cc,#00,#4c,#00
	db #02,#4a,#0e,#49,#02,#ca,#00,#4a
	db #00,#02,#ca,#00,#4a,#00,#02,#4a
	db #00,#02,#ca,#00,#4a,#00,#02,#ca
	db #00,#4a,#00,#02,#43,#0e,#47,#02
	db #c3,#00,#43,#00,#02,#c3,#00,#43
	db #00,#02,#43,#00,#02,#c3,#00,#43
	db #00,#02,#c3,#00,#43,#00,#02,#45
	db #00,#02,#c5,#00,#45,#00,#02,#c5
	db #00,#45,#00,#02,#45,#00,#02,#c5
	db #00,#45,#00,#02,#c5,#00,#45,#00
	db #02,#ff,#4c,#0e,#37,#02,#40,#0b
	db #25,#4c,#0b,#20,#4c,#00,#02,#40
	db #0b,#25,#4c,#0b,#21,#4c,#00,#02
	db #40,#0b,#26,#4c,#0b,#23,#40,#0b
	db #28,#4c,#0b,#25,#4c,#00,#02,#40
	db #0b,#28,#4c,#0b,#26,#4c,#00,#02
	db #40,#0b,#19,#0b,#10,#4a,#0e,#49
	db #02,#3e,#0b,#25,#4a,#0b,#20,#4a
	db #00,#02,#3e,#0b,#25,#4a,#0b,#21
	db #4a,#00,#02,#3e,#0b,#26,#4a,#0b
	db #23,#3e,#0b,#28,#4a,#0b,#25,#4a
	db #00,#02,#3e,#0b,#28,#4a,#0b,#26
	db #4a,#00,#02,#3e,#0b,#19,#0b,#10
	db #ff,#43,#0e,#47,#04,#43,#00,#02
	db #43,#00,#04,#43,#00,#02,#43,#00
	db #04,#43,#00,#04,#43,#00,#02,#43
	db #00,#04,#43,#00,#02,#43,#00,#04
	db #45,#0e,#57,#04,#45,#00,#02,#45
	db #00,#04,#45,#00,#02,#45,#00,#04
	db #45,#0e,#47,#04,#45,#00,#02,#45
	db #00,#04,#45,#00,#02,#45,#00,#04
	db #ff,#43,#0e,#47,#02,#37,#0b,#25
	db #43,#0b,#20,#43,#00,#02,#37,#0b
	db #25,#43,#0b,#21,#43,#00,#02,#37
	db #0b,#26,#43,#0b,#23,#37,#0b,#28
	db #43,#0b,#25,#43,#00,#02,#37,#0b
	db #28,#43,#0b,#25,#43,#00,#02,#37
	db #0b,#18,#0b,#10,#45,#0e,#57,#02
	db #39,#0b,#25,#45,#0b,#20,#45,#00
	db #02,#39,#0b,#25,#45,#0b,#21,#45
	db #00,#02,#39,#0b,#16,#0b,#10,#45
	db #0e,#47,#02,#39,#0b,#25,#45,#0b
	db #20,#45,#00,#02,#39,#0b,#25,#45
	db #0b,#21,#45,#00,#02,#39,#0b,#16
	db #0b,#10,#ff,#51,#4d,#08,#06,#53
	db #40,#08,#4f,#40,#02,#4e,#40,#06
	db #53,#40,#05,#56,#40,#02,#d6,#40
	db #55,#40,#03,#d8,#40,#4f,#40,#0e
	db #d5,#40,#53,#40,#03,#51,#40,#08
	db #53,#40,#04,#ff,#4f,#4d,#04,#02
	db #4c,#4b,#22,#47,#4b,#24,#4c,#4b
	db #26,#4f,#4b,#00,#14,#51,#40,#02
	db #4f,#4b,#21,#4e,#4b,#22,#4a,#4b
	db #24,#47,#4b,#06,#1b,#0b,#10,#ff
	db #51,#4d,#08,#06,#53,#40,#08,#4f
	db #40,#02,#4e,#40,#06,#53,#40,#05
	db #56,#40,#02,#d6,#40,#55,#40,#03
	db #d8,#40,#4f,#40,#0e,#d5,#40,#53
	db #40,#03,#51,#40,#03,#36,#1b,#14
	db #2d,#1b,#44,#53,#4b,#40,#ff,#45
	db #4d,#04,#02,#47,#40,#02,#4e,#40
	db #02,#4a,#40,#02,#4f,#40,#04,#4e
	db #4b,#25,#4a,#40,#02,#4f,#40,#04
	db #4e,#4b,#20,#4f,#40,#02,#51,#40
	db #06,#53,#40,#02,#ca,#40,#49,#4b
	db #12,#c5,#40,#40,#4b,#13,#be,#40
	db #3d,#4b,#14,#b9,#40,#34,#4b,#75
	db #3e,#2b,#21,#3d,#20,#02,#39,#20
	db #02,#34,#2b,#22,#32,#20,#02,#31
	db #20,#02,#2d,#2b,#23,#2a,#20,#02
	db #28,#2b,#24,#ff,#28,#4a,#0f,#02
	db #34,#40,#02,#28,#40,#02,#34,#40
	db #02,#28,#40,#02,#34,#40,#02,#28
	db #40,#02,#34,#40,#02,#28,#40,#02
	db #34,#40,#02,#28,#40,#02,#34,#40
	db #02,#28,#40,#02,#34,#40,#02,#28
	db #40,#02,#b4,#40,#28,#41,#10,#be
	db #40,#c3,#40,#c2,#40,#be,#40,#b9
	db #40,#b6,#40,#b2,#40,#ad,#40,#aa
	db #40,#a8,#40,#26,#40,#10,#ad,#40
	db #b2,#40,#b7,#40,#b6,#40,#32,#40
	db #02,#ff,#00,#1f,#01,#00,#21,#ff
;
.music_info
	db "Burger Party Menu (1995)(Futurs)(Zik)",0
	db "ST-128 Module",0

	read "music_end.asm"
