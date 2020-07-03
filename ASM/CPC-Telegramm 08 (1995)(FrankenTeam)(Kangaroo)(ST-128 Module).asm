; Music of CPC-Telegramm 08 (1995)(FrankenTeam)(Kangaroo)(ST-128 Module)
; Ripped by Megachur the 14/03/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPC08MB2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2019
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
	ld (hl),#20
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
	ld sp,#3332
	inc (hl)
	dec (hl)
.l21e0 equ $ + 1
	ld (hl),#7a
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
.l263a equ $ + 2
	db #00,#00,#a0,#29,#1b,#2a,#96,#2a
.l2640
	db #d2,#df,#d2,#df,#d2,#df,#00,#00
	db #d2,#df,#d2,#df,#d2,#df,#00,#00
	db #e0,#26,#20,#27,#40,#27,#00,#00
	db #60,#27,#a0,#27,#40,#27,#00,#00
	db #c0,#27,#00,#28,#40,#27,#08,#18
	db #20,#28,#60,#28,#40,#27,#08,#18
	db #c0,#27,#60,#28,#40,#27,#08,#18
	db #d2,#df,#d2,#df,#d2,#df,#00,#00
	db #d2,#df,#d2,#df,#d2,#df,#00,#00
	db #e0,#26,#80,#28,#40,#27,#08,#00
	db #a0,#28,#e0,#28,#00,#29,#00,#00
	db #d2,#df,#d2,#df,#d2,#df,#00,#00
	db #d2,#df,#d2,#df,#d2,#df,#00,#00
	db #e0,#26,#20,#29,#40,#27,#0b,#15
	db #d2,#df,#d2,#df,#d2,#df,#00,#00
	db #d2,#df,#d2,#df,#d2,#df,#00,#00
.l26c0
	db #40,#29,#60,#29,#80,#29,#d2,#df
	db #d2,#df,#d2,#df,#d2,#df,#d2,#df
	db #d2,#df,#d2,#df,#d2,#df,#d2,#df
	db #d2,#df,#d2,#df,#d2,#df,#d2,#df
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#07,#07,#06
	db #05,#04,#03,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #0c,#0b,#0a,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #07,#00,#06,#00,#05,#00,#04,#00
	db #03,#00,#02,#00,#01,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #0e,#0d,#0c,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #0f,#0f,#0f,#0e,#0d,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#00,#00,#00
	db #05,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #07,#07,#07,#08,#08,#08,#09,#09
	db #09,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #00,#fc,#f9,#00,#fc,#f9,#00,#fc
	db #f9,#00,#fc,#f9,#00,#fc,#f9,#00
	db #fc,#f9,#00,#fc,#f9,#00,#fc,#f9
	db #00,#fc,#f9,#00,#fc,#f9,#00,#fc
	db #00,#fb,#f8,#00,#fb,#f8,#00,#fb
	db #f8,#00,#fb,#f8,#00,#fb,#f8,#00
	db #fb,#f8,#00,#fb,#f8,#00,#fb,#f8
	db #00,#fb,#f8,#00,#fb,#f8,#00,#fb
	db #00,#fd,#f9,#00,#fd,#f9,#00,#fd
	db #f9,#00,#fd,#f9,#00,#fd,#f9,#00
	db #fd,#f9,#00,#fd,#f9,#00,#fd,#f9
	db #00,#fd,#f9,#00,#fd,#f9,#00,#fd
	db #00,#11,#2b,#00,#19,#2b,#00,#11
	db #2b,#00,#19,#2b,#00,#24,#2b,#00
	db #11,#2b,#00,#19,#2b,#00,#11,#2b
	db #00,#19,#2b,#00,#11,#2b,#00,#19
	db #2b,#00,#19,#2b,#00,#19,#2b,#00
	db #11,#2b,#00,#19,#2b,#00,#11,#2b
	db #00,#19,#2b,#00,#11,#2b,#00,#19
	db #2b,#00,#11,#2b,#00,#19,#2b,#00
	db #11,#2b,#00,#19,#2b,#00,#11,#2b
	db #00,#19,#2b,#00,#29,#2b,#00,#38
	db #2b,#00,#29,#2b,#00,#38,#2b,#00
	db #19,#2b,#00,#19,#2b,#00,#11,#2b
	db #00,#19,#2b,#00,#11,#2b,#00,#19
	db #2b,#00,#11,#2b,#00,#19,#2b,#00
	db #11,#2b,#00,#19,#2b,#00,#11,#2b
	db #80,#b8,#29,#00,#4d,#2b,#00,#6e
	db #2b,#00,#4d,#2b,#00,#95,#2b,#00
	db #b6,#2b,#00,#ba,#2b,#00,#ef,#2b
	db #00,#ba,#2b,#00,#ef,#2b,#00,#ba
	db #2b,#00,#25,#2c,#00,#25,#2c,#00
	db #25,#2c,#00,#ba,#2b,#00,#25,#2c
	db #00,#ba,#2b,#00,#25,#2c,#00,#ba
	db #2b,#00,#25,#2c,#00,#ba,#2b,#00
	db #25,#2c,#00,#5a,#2c,#00,#ef,#2b
	db #00,#5a,#2c,#00,#ef,#2b,#00,#5a
	db #2c,#00,#5a,#2c,#00,#90,#2c,#00
	db #c4,#2c,#00,#ef,#2b,#00,#ef,#2b
	db #00,#f8,#2c,#00,#32,#2d,#00,#f8
	db #2c,#00,#32,#2d,#00,#5a,#2c,#00
	db #ef,#2b,#00,#5a,#2c,#00,#ef,#2b
	db #00,#5a,#2c,#80,#33,#2a,#00,#6c
	db #2d,#00,#8c,#2d,#00,#6c,#2d,#00
	db #b2,#2d,#00,#d3,#2d,#00,#b6,#2b
	db #00,#d9,#2d,#00,#b6,#2b,#00,#d9
	db #2d,#00,#dc,#2d,#00,#ec,#2d,#00
	db #ec,#2d,#00,#f9,#2d,#00,#09,#2e
	db #00,#09,#2e,#00,#09,#2e,#00,#09
	db #2e,#00,#3d,#2e,#00,#7f,#2e,#00
	db #3d,#2e,#00,#ce,#2e,#00,#16,#2f
	db #00,#d9,#2d,#00,#16,#2f,#00,#d9
	db #2d,#00,#1b,#2f,#00,#36,#2f,#00
	db #4e,#2f,#00,#97,#2f,#00,#d9,#2d
	db #00,#d9,#2d,#00,#4e,#2f,#00,#97
	db #2f,#00,#4e,#2f,#00,#97,#2f,#00
	db #da,#2f,#00,#e7,#2f,#00,#f7,#2f
	db #00,#04,#30,#00,#16,#2f,#80,#ae
	db #2a,#55,#df,#00,#1c,#55,#d0,#04
	db #ff,#56,#df,#01,#10,#58,#df,#81
	db #53,#df,#82,#ff,#55,#df,#00,#20
	db #ff,#00,#02,#49,#2f,#40,#49,#2f
	db #c0,#49,#2f,#40,#49,#2f,#a0,#ff
	db #00,#02,#4a,#2f,#41,#4a,#20,#0c
	db #4a,#20,#04,#4a,#20,#04,#49,#2f
	db #40,#49,#2f,#20,#ff,#00,#02,#42
	db #40,#02,#51,#40,#04,#50,#40,#02
	db #4e,#40,#08,#42,#40,#02,#51,#40
	db #04,#50,#40,#02,#4e,#40,#02,#49
	db #40,#02,#4a,#40,#02,#ff,#00,#02
	db #4a,#40,#02,#51,#40,#04,#50,#40
	db #02,#4e,#40,#04,#4c,#40,#04,#4c
	db #40,#02,#50,#40,#02,#4c,#40,#02
	db #53,#40,#02,#51,#40,#02,#50,#40
	db #02,#4e,#40,#02,#ff,#00,#02,#4a
	db #40,#02,#51,#40,#04,#50,#40,#02
	db #4e,#40,#04,#4c,#40,#04,#4c,#40
	db #02,#50,#40,#02,#4c,#40,#02,#53
	db #40,#04,#58,#40,#04,#ff,#5a,#40
	db #20,#ff,#aa,#30,#2a,#30,#02,#aa
	db #30,#c0,#a0,#2a,#30,#02,#aa,#30
	db #28,#30,#02,#2a,#30,#02,#40,#a0
	db #02,#28,#30,#02,#aa,#30,#2a,#30
	db #02,#aa,#30,#c0,#a0,#2a,#30,#02
	db #aa,#30,#28,#30,#02,#2a,#30,#02
	db #40,#a0,#02,#28,#30,#02,#ff,#2f
	db #31,#10,#2f,#30,#02,#af,#30,#c0
	db #a0,#2f,#30,#02,#af,#30,#2d,#30
	db #02,#2f,#30,#02,#40,#a0,#02,#2f
	db #30,#02,#b1,#30,#31,#30,#02,#b1
	db #30,#c0,#a0,#31,#30,#02,#b1,#30
	db #2f,#30,#02,#31,#30,#02,#40,#a0
	db #02,#2c,#30,#02,#ff,#af,#30,#2f
	db #30,#02,#af,#30,#c0,#a0,#2f,#30
	db #02,#af,#30,#2d,#30,#02,#2f,#30
	db #02,#40,#a0,#02,#2f,#30,#02,#b1
	db #30,#31,#30,#02,#b1,#30,#c0,#a0
	db #31,#30,#02,#b1,#30,#2f,#30,#02
	db #31,#30,#02,#40,#a0,#02,#2c,#30
	db #02,#ff,#2a,#31,#10,#2a,#30,#02
	db #aa,#30,#c0,#a0,#2a,#30,#02,#aa
	db #30,#28,#30,#02,#2a,#30,#02,#40
	db #a0,#02,#28,#30,#02,#aa,#30,#2a
	db #30,#02,#aa,#30,#c0,#a0,#2a,#30
	db #02,#aa,#30,#28,#30,#02,#2a,#30
	db #02,#40,#a0,#02,#28,#30,#02,#ff
	db #2a,#21,#10,#2a,#20,#02,#aa,#20
	db #40,#a0,#02,#2a,#20,#02,#2a,#20
	db #02,#2a,#20,#02,#40,#a0,#02,#2a
	db #20,#02,#aa,#20,#2a,#20,#02,#aa
	db #20,#40,#a0,#02,#2a,#20,#02,#2a
	db #20,#02,#2a,#20,#02,#40,#a0,#02
	db #2a,#20,#02,#ff,#26,#21,#10,#26
	db #20,#02,#a6,#20,#40,#a0,#02,#26
	db #20,#02,#26,#20,#02,#26,#20,#02
	db #40,#a0,#02,#26,#20,#02,#a6,#20
	db #26,#20,#02,#a6,#20,#40,#a0,#02
	db #26,#20,#02,#26,#20,#02,#26,#20
	db #02,#40,#a0,#02,#26,#20,#02,#ff
	db #2a,#21,#10,#aa,#20,#49,#2f,#10
	db #2a,#21,#10,#40,#a0,#02,#49,#2f
	db #20,#2a,#21,#20,#2a,#20,#02,#40
	db #a0,#02,#2a,#20,#02,#aa,#20,#aa
	db #20,#49,#2f,#10,#2a,#21,#10,#40
	db #a0,#02,#49,#2f,#20,#2a,#21,#20
	db #2a,#20,#02,#40,#a0,#02,#2a,#20
	db #02,#ff,#26,#21,#10,#a6,#20,#4a
	db #2f,#11,#26,#21,#10,#40,#a0,#02
	db #4a,#2f,#21,#26,#21,#20,#26,#20
	db #02,#40,#a0,#02,#26,#20,#02,#a6
	db #20,#a6,#20,#4a,#2f,#11,#26,#21
	db #10,#40,#a0,#02,#4a,#2f,#21,#26
	db #21,#20,#49,#2f,#20,#40,#a1,#20
	db #49,#2f,#20,#ff,#00,#03,#42,#40
	db #02,#51,#40,#04,#50,#40,#02,#4e
	db #40,#08,#42,#40,#02,#51,#40,#04
	db #50,#40,#02,#4e,#40,#02,#49,#40
	db #02,#ca,#40,#ff,#00,#03,#4a,#40
	db #02,#51,#40,#04,#50,#40,#02,#4e
	db #40,#04,#4c,#40,#04,#4c,#40,#02
	db #50,#40,#02,#4c,#40,#02,#53,#40
	db #02,#51,#40,#02,#50,#40,#02,#ce
	db #40,#ff,#00,#03,#4a,#40,#02,#51
	db #40,#04,#50,#40,#02,#4e,#40,#04
	db #4c,#40,#04,#4c,#40,#02,#50,#40
	db #02,#4c,#40,#02,#53,#40,#04,#58
	db #40,#03,#ff,#00,#01,#5a,#40,#1f
	db #ff,#00,#20,#ff,#42,#50,#14,#42
	db #60,#02,#44,#60,#02,#45,#60,#04
	db #49,#60,#04,#ff,#4a,#60,#08,#45
	db #60,#08,#44,#60,#08,#40,#60,#08
	db #ff,#4a,#60,#08,#45,#60,#08,#47
	db #60,#08,#4c,#60,#04,#50,#60,#04
	db #ff,#53,#9b,#10,#51,#9b,#20,#50
	db #9b,#10,#51,#9b,#13,#51,#9b,#10
	db #4e,#9b,#10,#51,#9b,#15,#51,#9b
	db #13,#4e,#9b,#23,#51,#9b,#15,#4e
	db #9b,#e5,#49,#9b,#10,#4c,#9b,#10
	db #4e,#9b,#10,#49,#9b,#13,#50,#9b
	db #10,#4e,#9b,#13,#ff,#00,#02,#42
	db #6b,#20,#51,#6b,#10,#42,#6b,#23
	db #51,#6b,#13,#50,#6b,#20,#4e,#6b
	db #10,#50,#6b,#23,#4e,#6b,#13,#50
	db #6b,#25,#4e,#6b,#25,#42,#6b,#20
	db #51,#6b,#10,#42,#6b,#23,#51,#6b
	db #13,#50,#6b,#20,#4e,#6b,#10,#50
	db #6b,#13,#49,#6b,#10,#4e,#6b,#13
	db #4a,#6b,#10,#49,#6b,#13,#ff,#4e
	db #6b,#15,#4a,#6b,#13,#4a,#6b,#20
	db #51,#6b,#10,#4a,#6b,#23,#51,#6b
	db #13,#50,#6b,#20,#4e,#6b,#10,#50
	db #6b,#23,#4e,#6b,#13,#4c,#6b,#20
	db #4e,#6b,#15,#4c,#6b,#13,#4c,#6b
	db #20,#50,#6b,#10,#4c,#6b,#15,#4c
	db #6b,#10,#50,#6b,#13,#53,#6b,#10
	db #4c,#6b,#13,#51,#6b,#10,#53,#6b
	db #13,#50,#6b,#10,#51,#6b,#13,#4e
	db #6b,#10,#50,#6b,#13,#ff,#00,#02
	db #4a,#6b,#20,#51,#6b,#10,#4a,#6b
	db #23,#51,#6b,#13,#50,#6b,#20,#4e
	db #6b,#10,#50,#6b,#23,#4e,#6b,#13
	db #4c,#6b,#20,#4e,#6b,#15,#4c,#6b
	db #13,#4c,#6b,#20,#50,#6b,#10,#4c
	db #6b,#13,#4c,#6b,#10,#50,#6b,#13
	db #53,#6b,#10,#4c,#6b,#13,#50,#6b
	db #15,#53,#6b,#13,#58,#6b,#20,#53
	db #6b,#15,#58,#6b,#13,#ff,#5a,#6b
	db #00,#20,#ff,#c9,#90,#c7,#90,#c5
	db #90,#c4,#90,#42,#90,#0a,#49,#90
	db #02,#4a,#90,#04,#45,#90,#04,#44
	db #90,#04,#40,#90,#04,#ff,#c9,#90
	db #c7,#90,#c5,#90,#c4,#90,#42,#90
	db #0a,#42,#90,#02,#40,#90,#04,#44
	db #90,#04,#42,#90,#08,#ff,#49,#9b
	db #10,#47,#9b,#10,#45,#9b,#10,#44
	db #9b,#10,#42,#9b,#10,#45,#9b,#13
	db #44,#9b,#13,#42,#9b,#13,#45,#9b
	db #15,#44,#9b,#15,#42,#9b,#45,#49
	db #9b,#20,#4a,#9b,#10,#49,#9b,#23
	db #4a,#9b,#13,#45,#9b,#20,#4a,#9b
	db #15,#45,#9b,#13,#44,#9b,#20,#45
	db #9b,#15,#44,#9b,#13,#40,#9b,#20
	db #44,#9b,#15,#40,#9b,#13,#ff,#49
	db #9b,#10,#47,#9b,#10,#45,#9b,#10
	db #44,#9b,#10,#42,#9b,#10,#45,#9b
	db #13,#44,#9b,#13,#42,#9b,#13,#45
	db #9b,#15,#44,#9b,#15,#42,#9b,#45
	db #42,#9b,#20,#40,#9b,#10,#42,#9b
	db #23,#40,#9b,#13,#44,#9b,#20,#40
	db #9b,#15,#44,#9b,#13,#42,#9b,#20
	db #44,#9b,#15,#42,#9b,#33,#42,#9b
	db #25,#ff,#42,#60,#18,#45,#60,#02
	db #44,#60,#02,#42,#60,#04,#ff,#47
	db #60,#08,#4a,#60,#08,#49,#60,#08
	db #44,#60,#04,#45,#60,#04,#ff,#42
	db #60,#18,#49,#60,#02,#4c,#60,#02
	db #49,#60,#04,#ff,#4e,#60,#08,#51
	db #60,#08,#55,#60,#08,#58,#60,#08
	db #ff
;
.music_info
	db "CPC-Telegramm 08 (1995)(FrankenTeam)(Kangaroo)",0
	db "ST-128 Module - My Boy II",0

	read "music_end.asm"
