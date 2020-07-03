; Music of CPC-Telegramm 11 - Rene Quackernack (1996)(FrankenTeam)(Kangaroo)(ST-128 Module)
; Ripped by Megachur the 16/03/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPC11REN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
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
	db #00,#29,#27,#29,#4e,#29,#d2,#df
	db #d2,#df,#d2,#df,#00,#00,#e0,#26
	db #20,#27,#40,#27,#18,#07,#d2,#df
	db #d2,#df,#d2,#df,#00,#00,#60,#27
	db #a0,#27,#c0,#27,#00,#00,#d2,#df
	db #d2,#df,#d2,#df,#00,#00,#d2,#df
	db #d2,#df,#d2,#df,#00,#00,#e0,#27
	db #20,#28,#40,#27,#00,#00,#d2,#df
	db #d2,#df,#d2,#df,#00,#00,#40,#28
	db #80,#28,#a0,#28,#0c,#00,#d2,#df
	db #d2,#df,#d2,#df,#00,#00,#d2,#df
	db #d2,#df,#d2,#df,#00,#00,#d2,#df
	db #d2,#df,#d2,#df,#00,#00,#d2,#df
	db #d2,#df,#d2,#df,#00,#00,#d2,#df
	db #d2,#df,#d2,#df,#00,#00,#d2,#df
	db #d2,#df,#d2,#df,#00,#00,#d2,#df
.l26c0 equ $ + 6
	db #d2,#df,#d2,#df,#00,#00,#d2,#df
	db #c0,#28,#e0,#28,#d2,#df,#d2,#df
	db #d2,#df,#d2,#df,#d2,#df,#d2,#df
	db #d2,#df,#d2,#df,#d2,#df,#d2,#df
	db #d2,#df,#d2,#df,#d2,#df,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0e,#0d
	db #0c,#0a,#08,#0a,#0c,#0e,#0e,#0e
	db #0e,#0e,#0e,#0d,#0d,#0d,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#38,#00
	db #60,#00,#b0,#00,#18,#01,#48,#01
	db #80,#01,#c8,#01,#10,#02,#58,#02
	db #b0,#02,#f0,#02,#60,#03,#b0,#03
	db #30,#04,#90,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0e,#0d,#0d,#0c,#0b,#0a,#0a
	db #09,#08,#07,#07,#06,#05,#04,#04
	db #03,#02,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#06,#06
	db #06,#05,#04,#04,#83,#82,#81,#80
	db #80,#80,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#0f,#0f
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #32,#00,#64,#00,#91,#00,#be,#00
	db #eb,#00,#22,#01,#4a,#01,#7c,#01
	db #a9,#01,#d6,#01,#08,#02,#3a,#02
	db #6c,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0f,#0f,#0e,#0e,#0d,#0c,#0a
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#00,#75
	db #29,#00,#75,#29,#00,#ce,#29,#00
	db #27,#2a,#00,#27,#2a,#00,#27,#2a
	db #00,#27,#2a,#00,#27,#2a,#00,#27
	db #2a,#00,#27,#2a,#00,#27,#2a,#00
	db #27,#2a,#80,#00,#29,#00,#8c,#2a
	db #00,#8c,#2a,#00,#cc,#2a,#00,#cc
	db #2a,#00,#0c,#2b,#00,#0c,#2b,#00
	db #cc,#2a,#00,#cc,#2a,#00,#0c,#2b
	db #00,#0c,#2b,#00,#0c,#2b,#00,#0c
	db #2b,#80,#27,#29,#00,#75,#2b,#00
	db #75,#2b,#00,#b8,#2b,#00,#b8,#2b
	db #00,#fe,#2b,#00,#fe,#2b,#00,#b8
	db #2b,#00,#b8,#2b,#00,#3b,#2c,#00
	db #3b,#2c,#00,#b3,#2c,#00,#b3,#2c
	db #80,#4e,#29,#34,#80,#04,#34,#80
	db #02,#b4,#80,#34,#80,#02,#b4,#80
	db #34,#80,#02,#34,#80,#02,#34,#80
	db #02,#34,#80,#04,#34,#80,#02,#b4
	db #80,#34,#80,#02,#b4,#80,#34,#80
	db #02,#34,#80,#02,#34,#80,#02,#34
	db #80,#04,#34,#80,#02,#b4,#80,#34
	db #80,#02,#b4,#80,#34,#80,#02,#34
	db #80,#02,#34,#80,#02,#34,#80,#04
	db #34,#80,#02,#b4,#80,#34,#80,#02
	db #b4,#80,#34,#80,#02,#34,#80,#02
	db #34,#80,#02,#ff,#34,#80,#04,#40
	db #30,#02,#b4,#80,#34,#80,#02,#b4
	db #80,#34,#80,#02,#40,#30,#02,#34
	db #80,#02,#34,#80,#04,#40,#30,#02
	db #b4,#80,#34,#80,#02,#b4,#80,#34
	db #80,#02,#40,#30,#02,#34,#80,#02
	db #34,#80,#04,#40,#30,#02,#b4,#80
	db #34,#80,#02,#b4,#80,#34,#80,#02
	db #40,#30,#02,#34,#80,#02,#34,#80
	db #04,#40,#30,#02,#b4,#80,#34,#80
	db #02,#b4,#80,#34,#80,#02,#40,#30
	db #02,#34,#80,#02,#ff,#34,#80,#02
	db #4c,#6f,#21,#40,#31,#20,#b4,#80
	db #34,#80,#02,#b4,#80,#34,#80,#02
	db #40,#30,#02,#34,#80,#02,#34,#80
	db #02,#48,#6f,#22,#40,#31,#20,#b4
	db #80,#34,#80,#02,#b4,#80,#34,#80
	db #02,#40,#30,#02,#34,#80,#02,#34
	db #80,#02,#4a,#6f,#22,#40,#31,#20
	db #b4,#80,#34,#80,#02,#b4,#80,#34
	db #80,#02,#40,#30,#02,#34,#80,#02
	db #34,#80,#02,#47,#6f,#22,#40,#31
	db #20,#b4,#80,#34,#80,#02,#b4,#80
	db #34,#80,#02,#40,#30,#02,#34,#80
	db #02,#ff,#28,#61,#40,#28,#60,#04
	db #28,#60,#04,#28,#60,#02,#28,#60
	db #02,#2b,#60,#04,#2b,#60,#04,#2b
	db #60,#04,#2b,#60,#02,#2b,#60,#02
	db #26,#60,#04,#26,#60,#04,#26,#60
	db #04,#26,#60,#02,#26,#60,#02,#23
	db #60,#04,#23,#60,#04,#23,#60,#02
	db #23,#60,#02,#23,#60,#02,#26,#60
	db #02,#ff,#28,#60,#04,#28,#60,#04
	db #28,#60,#04,#28,#60,#02,#28,#60
	db #02,#24,#60,#04,#24,#60,#04,#24
	db #60,#04,#24,#60,#02,#24,#60,#02
	db #26,#60,#04,#26,#60,#04,#26,#60
	db #04,#26,#60,#02,#26,#60,#02,#23
	db #60,#04,#23,#60,#04,#23,#60,#02
	db #23,#60,#02,#23,#60,#02,#26,#60
	db #02,#ff,#34,#60,#02,#34,#60,#02
	db #34,#60,#02,#b4,#60,#b4,#60,#34
	db #60,#02,#34,#60,#02,#34,#60,#02
	db #b4,#60,#b4,#60,#30,#60,#02,#30
	db #60,#02,#30,#60,#02,#b0,#60,#b0
	db #60,#30,#60,#02,#30,#60,#02,#30
	db #60,#02,#b0,#60,#b0,#60,#32,#60
	db #02,#32,#60,#02,#32,#60,#02,#b2
	db #60,#b2,#60,#32,#60,#02,#32,#60
	db #02,#32,#60,#02,#32,#60,#02,#2f
	db #60,#02,#2f,#60,#02,#2f,#60,#02
	db #af,#60,#af,#60,#32,#60,#02,#b2
	db #60,#b2,#60,#32,#60,#02,#b2,#60
	db #b2,#60,#ff,#47,#61,#60,#45,#60
	db #02,#47,#60,#04,#40,#60,#02,#40
	db #60,#02,#43,#60,#02,#43,#60,#02
	db #43,#60,#02,#45,#60,#02,#47,#60
	db #02,#40,#60,#04,#45,#60,#04,#45
	db #60,#02,#45,#60,#02,#43,#60,#02
	db #45,#60,#02,#47,#60,#02,#45,#60
	db #02,#47,#60,#04,#47,#60,#02,#45
	db #60,#02,#47,#60,#0a,#ff,#4c,#60
	db #04,#4c,#60,#02,#4e,#60,#02,#4f
	db #60,#02,#4e,#60,#02,#4c,#60,#02
	db #48,#60,#04,#48,#60,#04,#48,#60
	db #02,#4c,#60,#04,#4f,#60,#04,#4e
	db #60,#04,#4a,#60,#04,#4a,#60,#02
	db #4c,#60,#02,#4a,#60,#02,#47,#60
	db #04,#47,#60,#02,#4e,#60,#04,#4f
	db #60,#02,#4e,#60,#02,#4c,#60,#02
	db #4a,#60,#02,#ff,#58,#10,#06,#53
	db #10,#02,#4c,#10,#02,#53,#10,#02
	db #56,#10,#02,#58,#10,#02,#56,#10
	db #06,#53,#10,#02,#4c,#10,#02,#4f
	db #10,#02,#51,#10,#02,#53,#10,#02
	db #51,#10,#06,#4e,#10,#02,#4a,#10
	db #02,#47,#10,#02,#4a,#10,#02,#4e
	db #10,#02,#4f,#10,#08,#4e,#10,#08
	db #ff,#00,#02,#58,#61,#10,#fe,#01
	db #d8,#60,#fe,#01,#d6,#60,#d8,#60
	db #fe,#01,#d8,#60,#d6,#60,#fe,#01
	db #d8,#60,#fe,#01,#d6,#60,#fe,#01
	db #d8,#60,#fe,#01,#d8,#60,#fe,#01
	db #d8,#60,#fe,#01,#d6,#60,#db,#60
	db #fe,#01,#db,#60,#da,#60,#fe,#01
	db #d8,#60,#fe,#01,#d6,#60,#fe,#01
	db #d8,#60,#fe,#01,#d8,#60,#fe,#01
	db #d8,#60,#fe,#01,#d6,#60,#d8,#60
	db #fe,#01,#d8,#60,#d6,#60,#fe,#01
	db #d8,#60,#fe,#01,#d6,#60,#fe,#01
	db #d3,#60,#fe,#02,#d3,#60,#fe,#02
	db #d6,#60,#fe,#01,#d3,#60,#fe,#02
	db #d6,#60,#fe,#02,#d8,#60,#fe,#01
	db #ff,#5f,#61,#20,#5b,#60,#02,#5a
	db #60,#02,#db,#60,#5a,#60,#02,#58
	db #60,#03,#5a,#60,#02,#5b,#60,#02
	db #5f,#60,#02,#5f,#60,#02,#5b,#60
	db #02,#df,#60,#5a,#60,#02,#5b,#60
	db #03,#5a,#60,#02,#5b,#60,#02,#5a
	db #60,#03,#5a,#60,#03,#5b,#60,#02
	db #5d,#60,#03,#5f,#60,#03,#60,#60
	db #02,#5f,#60,#03,#5f,#60,#03,#5f
	db #60,#02,#63,#60,#04,#64,#60,#04
	db #ff
;
.music_info
	db "CPC-Telegramm 11 - Rene Quackernack (1996)(FrankenTeam)(Kangaroo)",0
	db "ST-128 Module",0

	read "music_end.asm"
