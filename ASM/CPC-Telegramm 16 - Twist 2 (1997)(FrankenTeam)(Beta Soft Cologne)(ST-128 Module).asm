; Music of CPC-Telegramm 16 - Twist 2 (1997)(FrankenTeam)(Beta Soft Cologne)(ST-128 Module)
; Ripped by Megachur the 17/03/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPC16TW2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
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
.l25b0 equ $ + 2
	dw #000f,#0008
.l25b4 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l25be equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l25cf equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l25de equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l25e2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l25ec equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l25fd equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2610 equ $ + 6
.l260c equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l261a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l262b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2640 equ $ + 6
.l263a
	db #20,#2a,#4d,#2a,#7a,#2a,#e0,#26
	db #20,#27,#40,#27,#00,#00,#60,#27
	db #a0,#27,#c0,#27,#00,#00,#d2,#df
	db #d2,#df,#d2,#df,#00,#00,#d2,#df
	db #d2,#df,#d2,#df,#00,#00,#d2,#df
	db #d2,#df,#d2,#df,#00,#00,#e0,#27
	db #20,#28,#40,#28,#14,#09,#e0,#27
	db #60,#28,#80,#28,#00,#00,#e0,#27
	db #a0,#28,#40,#28,#00,#00,#d2,#df
	db #d2,#df,#d2,#df,#00,#00,#d2,#df
	db #d2,#df,#d2,#df,#00,#00,#d2,#df
	db #d2,#df,#d2,#df,#00,#00,#e0,#27
	db #a0,#28,#c0,#28,#00,#00,#d2,#df
	db #d2,#df,#d2,#df,#00,#00,#d2,#df
	db #d2,#df,#d2,#df,#00,#00,#d2,#df
	db #d2,#df,#d2,#df,#00,#00,#d2,#df
.l26c0 equ $ + 6
	db #d2,#df,#d2,#df,#00,#00,#d2,#df
	db #e0,#28,#00,#29,#20,#29,#40,#29
	db #d2,#df,#60,#29,#d2,#df,#80,#29
	db #a0,#29,#c0,#29,#e0,#29,#00,#2a
	db #d2,#df,#d2,#df,#d2,#df,#80,#00
	db #00,#01,#80,#01,#00,#02,#80,#02
	db #00,#03,#00,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0a,#00,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #30,#00,#60,#00,#90,#00,#c0,#00
	db #f0,#00,#20,#01,#50,#01,#80,#01
	db #b0,#01,#e0,#01,#10,#02,#40,#02
	db #70,#02,#a0,#02,#d0,#02,#00,#03
	db #20,#03,#40,#03,#60,#03,#70,#03
	db #80,#03,#90,#03,#a0,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0d,#0c,#0c,#0b,#0a,#09,#09
	db #08,#08,#08,#07,#07,#06,#06,#05
	db #05,#04,#04,#03,#03,#02,#02,#00
	db #00,#00,#00,#00,#00,#00,#04,#06
	db #07,#09,#0c,#11,#17,#1d,#15,#10
	db #0c,#09,#06,#05,#04,#04,#03,#03
	db #03,#02,#02,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0d,#0c,#8b,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0d,#0c,#0b,#0a,#89,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0d
	db #0b,#0a,#09,#08,#08,#07,#07,#06
	db #06,#05,#05,#05,#04,#04,#04,#03
	db #03,#03,#02,#02,#02,#02,#01,#01
	db #01,#01,#00,#00,#00,#00,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#f8,#fd
	db #00,#f8,#fd,#00,#f8,#fd,#00,#f8
	db #fd,#00,#f8,#fd,#00,#f8,#fd,#00
	db #f8,#fd,#00,#f8,#fd,#00,#f8,#fd
	db #00,#f8,#fd,#00,#f8,#fd,#f9,#fd
	db #00,#f9,#fd,#00,#f9,#fd,#00,#f9
	db #fd,#00,#f9,#fd,#00,#f9,#fd,#00
	db #f9,#fd,#00,#f9,#fd,#00,#f9,#fd
	db #00,#f9,#fd,#00,#f9,#fd,#f7,#fc
	db #00,#f7,#fc,#00,#f7,#fc,#00,#f7
	db #fc,#00,#f7,#fc,#00,#f7,#fc,#00
	db #f7,#fc,#00,#f7,#fc,#00,#f7,#fc
	db #00,#f7,#fc,#00,#f7,#fc,#f9,#fe
	db #00,#f9,#fe,#00,#f9,#fe,#00,#f9
	db #fe,#00,#f9,#fe,#00,#f9,#fe,#00
	db #f9,#fe,#00,#f9,#fe,#00,#f9,#fe
	db #00,#f9,#fe,#00,#f9,#fe,#f4,#f9
	db #00,#f4,#f9,#00,#f4,#f9,#00,#f4
	db #f9,#00,#f4,#f9,#00,#f4,#f9,#00
	db #f4,#f9,#00,#f4,#f9,#00,#f4,#f9
	db #00,#f4,#f9,#00,#f4,#f9,#f8,#fb
	db #00,#f8,#fb,#00,#f8,#fb,#00,#f8
	db #fb,#00,#f8,#fb,#00,#f8,#fb,#00
	db #f8,#fb,#00,#f8,#fb,#00,#f8,#fb
	db #00,#f8,#fb,#00,#f8,#fb,#f6,#fb
	db #00,#f6,#fb,#00,#f6,#fb,#00,#f6
	db #fb,#00,#f6,#fb,#00,#f6,#fb,#00
	db #f6,#fb,#00,#f6,#fb,#00,#f6,#fb
	db #00,#f6,#fb,#00,#f6,#fb,#f9,#fc
	db #00,#f9,#fc,#00,#f9,#fc,#00,#f9
	db #fc,#00,#f9,#fc,#00,#f9,#fc,#00
	db #f9,#fc,#00,#f9,#fc,#00,#f9,#fc
	db #00,#f9,#fc,#00,#f9,#fc,#f7,#fb
	db #00,#f7,#fb,#00,#f7,#fb,#00,#f7
	db #fb,#00,#f7,#fb,#00,#f7,#fb,#00
	db #f7,#fb,#00,#f7,#fb,#00,#f7,#fb
	db #00,#f7,#fb,#00,#f7,#fb,#f5,#f9
	db #00,#f5,#f9,#00,#f5,#f9,#00,#f5
	db #f9,#00,#f5,#f9,#00,#f5,#f9,#00
	db #f5,#f9,#00,#f5,#f9,#00,#f5,#f9
	db #00,#f5,#f9,#00,#f5,#f9,#00,#a7
	db #2a,#00,#29,#2b,#00,#e9,#2b,#00
	db #e9,#2b,#00,#aa,#2c,#00,#aa,#2c
	db #00,#6b,#2d,#00,#6b,#2d,#00,#e9
	db #2b,#00,#e9,#2b,#00,#29,#2b,#00
	db #29,#2b,#00,#2c,#2e,#00,#2c,#2e
	db #80,#20,#2a,#00,#ed,#2e,#00,#6f
	db #2f,#00,#f1,#2f,#00,#f1,#2f,#00
	db #73,#30,#00,#73,#30,#00,#f5,#30
	db #00,#f5,#30,#00,#f1,#2f,#00,#f1
	db #2f,#00,#6f,#2f,#00,#6f,#2f,#00
	db #11,#31,#00,#11,#31,#80,#4d,#2a
	db #00,#93,#31,#00,#93,#31,#00,#15
	db #32,#00,#15,#32,#00,#52,#32,#00
	db #52,#32,#00,#95,#32,#00,#95,#32
	db #00,#15,#32,#00,#15,#32,#00,#93
	db #31,#00,#93,#31,#00,#d2,#32,#00
	db #d2,#32,#80,#7a,#2a,#25,#58,#24
	db #02,#31,#58,#12,#02,#25,#58,#24
	db #02,#31,#58,#12,#02,#25,#58,#24
	db #02,#31,#58,#12,#02,#25,#58,#24
	db #02,#31,#58,#12,#02,#21,#58,#2d
	db #02,#39,#58,#2d,#02,#21,#58,#2d
	db #02,#39,#58,#2d,#02,#21,#58,#2d
	db #02,#39,#58,#2d,#02,#21,#58,#2d
	db #02,#39,#58,#2d,#02,#1e,#58,#36
	db #02,#2a,#58,#1b,#02,#1e,#58,#36
	db #02,#2a,#58,#1b,#02,#1e,#58,#36
	db #02,#2a,#58,#1b,#02,#1e,#58,#36
	db #02,#2a,#58,#1b,#02,#23,#58,#28
	db #02,#2f,#58,#14,#02,#23,#58,#28
	db #02,#2f,#58,#14,#02,#23,#58,#28
	db #02,#2f,#58,#14,#02,#40,#11,#10
	db #c0,#10,#c0,#10,#c0,#10,#ff,#bd
	db #00,#a5,#58,#24,#b1,#58,#24,#b1
	db #58,#24,#40,#11,#10,#a5,#58,#24
	db #b1,#58,#24,#b1,#58,#24,#3d,#01
	db #10,#a5,#58,#24,#b1,#58,#24,#b1
	db #58,#24,#40,#11,#10,#a5,#58,#24
	db #b1,#58,#24,#b1,#58,#24,#3d,#01
	db #10,#a1,#58,#2d,#ad,#58,#2d,#ad
	db #58,#2d,#40,#11,#10,#a1,#58,#2d
	db #ad,#58,#2d,#ad,#58,#2d,#3d,#01
	db #10,#a1,#58,#2d,#ad,#58,#2d,#ad
	db #58,#2d,#40,#11,#10,#a1,#58,#2d
	db #ad,#58,#2d,#ad,#58,#2d,#3d,#01
	db #10,#9e,#58,#36,#aa,#58,#36,#aa
	db #58,#36,#40,#11,#10,#9e,#58,#36
	db #aa,#58,#36,#aa,#58,#36,#3d,#01
	db #10,#9e,#58,#36,#aa,#58,#36,#aa
	db #58,#36,#40,#11,#10,#9e,#58,#36
	db #aa,#58,#36,#aa,#58,#36,#3d,#01
	db #10,#a3,#58,#28,#af,#58,#28,#af
	db #58,#28,#40,#11,#10,#a3,#58,#28
	db #af,#58,#28,#af,#58,#28,#3d,#01
	db #10,#a3,#58,#28,#af,#58,#28,#af
	db #58,#28,#40,#11,#10,#a3,#58,#28
	db #40,#11,#10,#40,#11,#10,#ff,#3d
	db #01,#10,#a5,#58,#24,#b1,#58,#24
	db #b1,#58,#24,#40,#11,#10,#a5,#58
	db #24,#b1,#58,#24,#b1,#58,#24,#3d
	db #01,#10,#a5,#58,#24,#b1,#58,#24
	db #b1,#58,#24,#40,#11,#10,#a5,#58
	db #24,#b1,#58,#24,#b1,#58,#24,#3d
	db #01,#10,#a1,#58,#2d,#ad,#58,#2d
	db #ad,#58,#2d,#40,#11,#10,#a1,#58
	db #2d,#ad,#58,#2d,#ad,#58,#2d,#3d
	db #01,#10,#40,#11,#10,#ad,#58,#2d
	db #3d,#01,#10,#40,#11,#10,#a1,#58
	db #2d,#40,#11,#10,#40,#11,#10,#3d
	db #01,#10,#a3,#58,#28,#af,#58,#28
	db #af,#58,#28,#40,#11,#10,#a3,#58
	db #28,#af,#58,#28,#af,#58,#28,#3d
	db #01,#10,#a3,#58,#28,#af,#58,#28
	db #af,#58,#28,#40,#11,#10,#a3,#58
	db #28,#af,#58,#28,#af,#58,#28,#3d
	db #01,#10,#a5,#58,#24,#b1,#58,#24
	db #b1,#58,#24,#40,#11,#10,#a5,#58
	db #24,#b1,#58,#24,#b1,#58,#24,#3d
	db #01,#10,#a1,#58,#2d,#ad,#58,#2d
	db #ad,#58,#2d,#40,#11,#10,#af,#58
	db #28,#40,#11,#10,#40,#11,#10,#ff
	db #3d,#01,#10,#a0,#58,#30,#ac,#58
	db #30,#ac,#58,#30,#40,#11,#10,#a0
	db #58,#30,#ac,#58,#30,#ac,#58,#30
	db #3d,#01,#10,#a0,#58,#30,#ac,#58
	db #30,#ac,#58,#30,#40,#11,#10,#a0
	db #58,#30,#ac,#58,#30,#ac,#58,#30
	db #3d,#01,#10,#a1,#58,#2d,#ad,#58
	db #2d,#ad,#58,#2d,#40,#11,#10,#a1
	db #58,#2d,#ad,#58,#2d,#ad,#58,#2d
	db #3d,#01,#10,#a1,#58,#2d,#ad,#58
	db #2d,#ad,#58,#2d,#40,#11,#10,#a1
	db #58,#2d,#ad,#58,#2d,#ad,#58,#2d
	db #3d,#01,#10,#a3,#58,#28,#af,#58
	db #28,#af,#58,#28,#40,#11,#10,#a3
	db #58,#28,#af,#58,#28,#af,#58,#28
	db #3d,#01,#10,#a3,#58,#28,#af,#58
	db #28,#af,#58,#28,#40,#11,#10,#a3
	db #58,#28,#af,#58,#28,#af,#58,#28
	db #3d,#01,#10,#a8,#58,#1e,#b4,#58
	db #1e,#b4,#58,#1e,#40,#11,#10,#a8
	db #58,#1e,#b4,#58,#1e,#b4,#58,#1e
	db #3d,#01,#10,#a3,#58,#28,#af,#58
	db #28,#af,#58,#28,#40,#11,#10,#a3
	db #58,#28,#40,#11,#10,#40,#11,#10
	db #ff,#3d,#01,#10,#a8,#58,#1e,#b4
	db #68,#1e,#b4,#68,#1e,#40,#11,#10
	db #a8,#58,#1e,#b4,#68,#1e,#b4,#68
	db #1e,#3d,#01,#10,#a8,#58,#1e,#b4
	db #68,#1e,#b4,#68,#1e,#40,#11,#10
	db #a8,#58,#1e,#b4,#68,#1e,#b4,#68
	db #1e,#3d,#01,#10,#aa,#58,#1b,#b6
	db #68,#1b,#b6,#68,#1b,#40,#11,#10
	db #aa,#58,#1b,#b6,#68,#1b,#b6,#68
	db #1b,#3d,#01,#10,#aa,#58,#1b,#b6
	db #68,#1b,#b6,#68,#1b,#40,#11,#10
	db #aa,#58,#1b,#b6,#68,#1b,#40,#11
	db #10,#3d,#01,#10,#a1,#58,#2d,#ad
	db #68,#2d,#ad,#68,#2d,#40,#11,#10
	db #a1,#58,#2d,#ad,#68,#2d,#ad,#68
	db #2d,#3d,#01,#10,#a1,#58,#2d,#ad
	db #68,#2d,#ad,#68,#2d,#40,#11,#10
	db #a1,#58,#2d,#ad,#68,#2d,#ad,#68
	db #2d,#3d,#01,#10,#a3,#58,#28,#af
	db #68,#28,#af,#68,#28,#40,#11,#10
	db #a3,#58,#28,#af,#68,#28,#af,#68
	db #28,#3d,#01,#10,#a3,#58,#28,#af
	db #68,#28,#af,#68,#28,#40,#11,#10
	db #a3,#58,#28,#40,#11,#10,#40,#11
	db #10,#ff,#3d,#01,#10,#a5,#58,#24
	db #b1,#58,#24,#b1,#58,#24,#40,#11
	db #10,#a5,#58,#24,#b1,#58,#24,#b1
	db #58,#24,#3d,#01,#10,#a5,#58,#24
	db #b1,#58,#24,#b1,#58,#24,#40,#11
	db #10,#a5,#58,#24,#b1,#58,#24,#b1
	db #58,#24,#3d,#01,#10,#a1,#58,#2d
	db #ad,#58,#2d,#ad,#58,#2d,#40,#11
	db #10,#a1,#58,#2d,#ad,#58,#2d,#ad
	db #58,#2d,#3d,#01,#10,#a3,#58,#28
	db #af,#58,#28,#af,#58,#28,#40,#11
	db #10,#a3,#58,#28,#af,#58,#28,#af
	db #58,#28,#3d,#01,#10,#a8,#58,#1e
	db #b4,#58,#1e,#b4,#58,#1e,#40,#11
	db #10,#a8,#58,#1e,#b4,#58,#1e,#b4
	db #58,#1e,#3d,#01,#10,#a8,#58,#1e
	db #b4,#58,#1e,#b4,#58,#1e,#40,#11
	db #10,#a8,#58,#1e,#b4,#58,#1e,#b4
	db #58,#1e,#3d,#01,#10,#aa,#58,#1b
	db #b6,#58,#1b,#b6,#58,#1b,#40,#11
	db #10,#aa,#58,#1b,#b6,#58,#1b,#b6
	db #58,#1b,#3d,#01,#10,#aa,#58,#1b
	db #b6,#58,#1b,#b6,#58,#1b,#40,#11
	db #10,#aa,#58,#1b,#b6,#58,#1b,#b6
	db #58,#1b,#ff,#4c,#71,#10,#cc,#70
	db #ce,#70,#ce,#70,#cc,#70,#cc,#70
	db #cb,#70,#cb,#70,#cc,#70,#cc,#70
	db #ce,#70,#ce,#70,#cc,#70,#cc,#70
	db #cb,#70,#cb,#70,#cc,#70,#cc,#70
	db #ce,#70,#ce,#70,#cc,#70,#cc,#70
	db #cb,#70,#cb,#70,#cc,#70,#cc,#70
	db #ce,#70,#ce,#70,#cc,#70,#cc,#70
	db #cb,#70,#cb,#70,#cc,#70,#cc,#70
	db #ce,#70,#ce,#70,#cc,#70,#cc,#70
	db #cb,#70,#cb,#70,#cc,#70,#cc,#70
	db #ce,#70,#ce,#70,#cc,#70,#cc,#70
	db #cb,#70,#cb,#70,#cb,#70,#cb,#70
	db #cc,#70,#cc,#70,#cb,#70,#cb,#70
	db #c9,#70,#c9,#70,#cb,#70,#cb,#70
	db #cc,#70,#cc,#70,#cb,#70,#cb,#70
	db #c9,#70,#c9,#70,#ff,#4c,#71,#10
	db #ce,#70,#cc,#b0,#cb,#b0,#cc,#70
	db #ce,#70,#cc,#b0,#cb,#b0,#cc,#70
	db #ce,#70,#cc,#b0,#cb,#b0,#cc,#70
	db #ce,#70,#cc,#b0,#cb,#b0,#cc,#70
	db #ce,#70,#cc,#b0,#cb,#b0,#cc,#70
	db #ce,#70,#cc,#b0,#cb,#b0,#cc,#70
	db #ce,#70,#cc,#b0,#cb,#b0,#cc,#70
	db #ce,#70,#cc,#b0,#cb,#b0,#cc,#70
	db #ce,#70,#cc,#b0,#cb,#b0,#cc,#70
	db #ce,#70,#cc,#b0,#cb,#b0,#cc,#70
	db #ce,#70,#cc,#b0,#cb,#b0,#cc,#70
	db #ce,#70,#cc,#b0,#cb,#b0,#cb,#70
	db #cc,#70,#cb,#b0,#c9,#b0,#cb,#70
	db #cc,#70,#cb,#b0,#c9,#b0,#cb,#70
	db #cc,#70,#cb,#b0,#c9,#b0,#cb,#70
	db #cc,#70,#cb,#70,#c9,#70,#ff,#4c
	db #71,#10,#cb,#70,#c9,#b0,#cb,#b0
	db #cc,#70,#cb,#70,#c9,#b0,#cb,#b0
	db #cc,#70,#cb,#70,#c9,#b0,#cb,#b0
	db #cc,#70,#cb,#70,#c9,#b0,#cb,#b0
	db #d1,#70,#cc,#70,#c9,#b0,#cc,#b0
	db #d1,#70,#cc,#70,#c9,#b0,#cc,#b0
	db #d1,#70,#cc,#70,#c9,#b0,#cc,#70
	db #d1,#70,#cc,#70,#c9,#70,#cc,#70
	db #ce,#70,#cb,#70,#c7,#b0,#cb,#b0
	db #ce,#70,#cb,#70,#c7,#b0,#cb,#b0
	db #ce,#70,#cb,#70,#c7,#b0,#cb,#b0
	db #ce,#70,#cb,#70,#c7,#b0,#cb,#b0
	db #d0,#70,#cc,#70,#c9,#b0,#cc,#b0
	db #d0,#70,#cc,#70,#c9,#b0,#cc,#b0
	db #d1,#70,#cc,#70,#c9,#b0,#cc,#b0
	db #d3,#70,#ce,#b0,#cb,#70,#ce,#70
	db #ff,#4b,#71,#10,#c8,#70,#c4,#b0
	db #c8,#b0,#cb,#70,#c8,#70,#c4,#b0
	db #c8,#b0,#cb,#70,#c8,#70,#c4,#b0
	db #c8,#b0,#cb,#70,#c8,#70,#c4,#b0
	db #c8,#b0,#cc,#70,#c9,#70,#c5,#b0
	db #c9,#b0,#cc,#70,#c9,#70,#c5,#b0
	db #c9,#b0,#cc,#70,#c9,#70,#c5,#b0
	db #c9,#b0,#cc,#70,#c9,#70,#c5,#b0
	db #c9,#b0,#ce,#70,#cb,#70,#c7,#b0
	db #cb,#b0,#ce,#70,#cb,#70,#c7,#b0
	db #cb,#b0,#ce,#70,#cb,#70,#c7,#b0
	db #cb,#b0,#ce,#70,#cb,#70,#c7,#b0
	db #cb,#b0,#d0,#70,#cc,#70,#c7,#b0
	db #cc,#b0,#d0,#70,#cc,#70,#c7,#b0
	db #cc,#b0,#ce,#70,#cb,#70,#c7,#b0
	db #cb,#b0,#ce,#70,#cb,#70,#c7,#70
	db #cb,#70,#ff,#58,#5f,#08,#10,#4e
	db #5f,#c8,#4e,#5f,#18,#50,#5f,#14
	db #4e,#5f,#18,#50,#5f,#14,#51,#5f
	db #08,#10,#53,#5f,#08,#10,#ff,#49
	db #71,#10,#c4,#70,#c0,#b0,#c4,#b0
	db #c9,#70,#c4,#70,#c0,#b0,#c4,#b0
	db #c9,#70,#c4,#70,#c0,#b0,#c4,#b0
	db #c9,#70,#c4,#70,#cc,#b0,#c9,#b0
	db #d1,#70,#cc,#70,#c9,#b0,#cc,#b0
	db #d1,#70,#cc,#70,#c9,#b0,#cc,#b0
	db #ce,#70,#cb,#70,#c7,#b0,#cb,#b0
	db #ce,#70,#cb,#70,#d3,#b0,#ce,#b0
	db #d0,#70,#cc,#70,#c7,#b0,#cc,#b0
	db #d0,#70,#cc,#70,#c7,#b0,#cc,#b0
	db #d0,#70,#cc,#70,#c7,#b0,#cc,#b0
	db #d0,#70,#cc,#70,#d3,#b0,#d0,#b0
	db #d2,#70,#ce,#70,#c9,#b0,#ce,#b0
	db #d2,#70,#ce,#70,#c9,#b0,#ce,#b0
	db #d2,#70,#ce,#70,#c9,#b0,#ce,#b0
	db #d2,#70,#ce,#70,#c9,#b0,#ce,#b0
	db #ff,#49,#71,#10,#c9,#70,#c9,#70
	db #c9,#70,#c9,#70,#c9,#70,#c9,#70
	db #c9,#70,#c9,#70,#c9,#70,#c9,#70
	db #c9,#70,#c9,#70,#c9,#70,#c9,#70
	db #c9,#70,#c9,#70,#c9,#70,#c9,#70
	db #c9,#70,#c9,#70,#c9,#70,#c9,#70
	db #c9,#70,#c9,#70,#c9,#70,#c9,#70
	db #c9,#70,#c9,#70,#c9,#70,#c9,#70
	db #c9,#70,#c9,#70,#c9,#70,#c9,#70
	db #c9,#70,#c9,#70,#c9,#70,#c9,#70
	db #c9,#70,#c9,#70,#c9,#70,#c9,#70
	db #c9,#70,#c9,#70,#c9,#70,#c9,#70
	db #c9,#70,#c7,#70,#c7,#70,#c7,#70
	db #c7,#70,#c7,#70,#c7,#70,#c7,#70
	db #c7,#70,#c7,#70,#c7,#70,#c7,#70
	db #c7,#70,#c7,#70,#c7,#70,#c7,#70
	db #c7,#70,#ff,#58,#5f,#41,#57,#5f
	db #24,#55,#5f,#4b,#55,#5f,#2b,#57
	db #5f,#24,#58,#5f,#21,#5d,#5f,#48
	db #5c,#5f,#4c,#5a,#5f,#4b,#58,#5f
	db #42,#5a,#5f,#42,#57,#5f,#23,#53
	db #5f,#48,#53,#5f,#28,#55,#5f,#24
	db #57,#5f,#23,#58,#5f,#41,#57,#5f
	db #44,#55,#5f,#43,#57,#5f,#43,#ff
	db #57,#5f,#42,#54,#5f,#23,#50,#5f
	db #48,#54,#5f,#23,#57,#5f,#22,#5a
	db #5f,#29,#58,#5f,#46,#55,#5f,#23
	db #51,#5f,#48,#51,#5f,#28,#55,#5f
	db #23,#58,#5f,#22,#5a,#5f,#42,#57
	db #5f,#23,#53,#5f,#48,#57,#5f,#23
	db #5a,#5f,#22,#5d,#5f,#28,#5c,#5f
	db #43,#58,#5f,#28,#5a,#5f,#46,#53
	db #5f,#68,#ff,#5c,#5f,#43,#58,#5f
	db #28,#53,#5f,#42,#58,#5f,#28,#5c
	db #5f,#23,#5f,#5f,#22,#5e,#5f,#43
	db #5a,#5f,#28,#55,#5f,#62,#55,#5f
	db #22,#57,#5f,#24,#58,#5f,#42,#55
	db #5f,#23,#51,#5f,#48,#55,#5f,#23
	db #58,#5f,#22,#5c,#5f,#2a,#5a,#5f
	db #42,#57,#5f,#23,#53,#5f,#a8,#ff
	db #55,#5f,#0b,#10,#55,#5f,#83,#57
	db #5f,#43,#53,#5f,#48,#50,#5f,#03
	db #10,#4e,#5f,#48,#50,#5f,#44,#52
	db #5f,#43,#4e,#5f,#48,#ff
;
.music_info
	db "CPC-Telegramm 16 - Twist 2 (1997)(FrankenTeam)(Beta Soft Cologne)",0
	db "ST-128 Module",0

	read "music_end.asm"
