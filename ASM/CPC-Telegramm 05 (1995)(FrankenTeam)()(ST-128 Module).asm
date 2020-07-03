; Music of CPC-Telegramm 05 (1995)(FrankenTeam)()(ST-128 Module)
; Ripped by Megachur the 11/03/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPCTEL05.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
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
	ld (hl),#05
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
	add b
	add (hl)
	add a
	add a
	add h
	add l
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
	db #c0,#28,#ea,#28,#14,#29,#e0,#26
	db #20,#27,#40,#27,#00,#00,#0c,#0d
	db #ff,#16,#11,#1e,#29,#19,#f9,#12
	db #f8,#f6,#f1,#0a,#30,#27,#ed,#f8
	db #f1,#05,#f6,#ff,#1a,#20,#f0,#fe
	db #f8,#fe,#fb,#18,#2a,#25,#09,#18
	db #03,#11,#04,#1d,#42,#3f,#60,#27
	db #a0,#27,#40,#27,#1a,#00,#12,#1f
	db #16,#25,#12,#25,#40,#34,#0e,#24
	db #10,#1b,#10,#1f,#37,#31,#03,#18
	db #12,#27,#13,#15,#35,#34,#0b,#24
	db #ff,#06,#05,#1f,#40,#39,#02,#08
	db #03,#17,#0c,#19,#33,#35,#06,#15
	db #0b,#1d,#16,#1a,#37,#45,#1f,#24
	db #0a,#0f,#0e,#29,#4d,#4e,#c0,#27
	db #00,#28,#20,#28,#0c,#00,#40,#28
.l26c0 equ $ + 6
	db #80,#28,#a0,#28,#00,#00,#16,#15
	db #08,#14,#0a,#15,#03,#17,#18,#20
	db #f8,#12,#12,#20,#0e,#05,#f7,#0e
	db #06,#0e,#05,#21,#fe,#03,#01,#1a
	db #02,#0d,#0b,#1f,#0b,#1a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#02,#00,#03,#00,#02,#00
	db #01,#00,#ff,#ff,#fe,#ff,#fd,#ff
	db #fe,#ff,#ff,#ff,#01,#00,#03,#00
	db #05,#00,#03,#00,#01,#00,#ff,#ff
	db #fd,#ff,#fb,#ff,#fd,#ff,#ff,#ff
	db #01,#00,#04,#00,#07,#00,#04,#00
	db #01,#00,#ff,#ff,#fc,#ff,#f9,#ff
	db #fc,#ff,#ff,#ff,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0d,#0d,#0d,#0c
	db #0c,#0c,#0c,#0c,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0c,#0d,#0d
	db #0d,#0d,#0d,#0c,#0c,#0c,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #20,#00,#40,#00,#60,#00,#a0,#00
	db #e0,#00,#00,#00,#20,#00,#40,#00
	db #60,#00,#a0,#00,#e0,#00,#00,#00
	db #20,#00,#40,#00,#60,#00,#80,#00
	db #a0,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#06,#05,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09,#09
	db #08,#06,#06,#07,#08,#09,#0b,#0a
	db #09,#06,#06,#08,#08,#07,#06,#05
	db #06,#07,#08,#0a,#0a,#09,#07,#06
	db #07,#08,#08,#0a,#09,#09,#00,#3e
	db #29,#00,#72,#29,#00,#7d,#29,#00
	db #a7,#29,#00,#7d,#29,#00,#a7,#29
	db #00,#cb,#29,#00,#e4,#29,#00,#03
	db #2a,#00,#25,#2a,#00,#03,#2a,#00
	db #25,#2a,#00,#72,#29,#80,#c3,#28
	db #00,#3e,#2a,#00,#75,#2a,#00,#a5
	db #2a,#00,#a5,#2a,#00,#a5,#2a,#00
	db #a5,#2a,#00,#d5,#2a,#00,#75,#2a
	db #00,#75,#2a,#00,#08,#2b,#00,#75
	db #2a,#00,#08,#2b,#00,#75,#2a,#80
	db #ed,#28,#00,#37,#2b,#00,#68,#2b
	db #00,#68,#2b,#00,#68,#2b,#00,#68
	db #2b,#00,#68,#2b,#00,#a9,#2b,#00
	db #ea,#2b,#00,#a9,#2b,#00,#2b,#2c
	db #00,#a9,#2b,#00,#2b,#2c,#00,#68
	db #2b,#80,#17,#29,#25,#01,#20,#25
	db #00,#02,#25,#00,#02,#a5,#00,#20
	db #00,#02,#20,#00,#02,#20,#00,#02
	db #a0,#00,#20,#00,#02,#2a,#00,#02
	db #2a,#00,#02,#2a,#00,#02,#aa,#00
	db #25,#00,#03,#cb,#60,#ce,#60,#cb
	db #60,#ce,#60,#cb,#60,#ce,#60,#ff
	db #fe,#1c,#bd,#00,#bd,#00,#bd,#00
	db #bd,#00,#ff,#3d,#00,#02,#38,#00
	db #04,#41,#00,#02,#3f,#00,#02,#38
	db #00,#04,#44,#00,#02,#46,#00,#02
	db #c4,#00,#42,#00,#03,#46,#00,#02
	db #44,#00,#02,#41,#00,#02,#44,#00
	db #02,#44,#00,#02,#ff,#46,#00,#02
	db #44,#00,#04,#46,#00,#02,#41,#00
	db #02,#3f,#00,#02,#38,#00,#02,#38
	db #00,#02,#42,#00,#02,#41,#00,#02
	db #3d,#00,#02,#ba,#00,#3d,#00,#09
	db #ff,#42,#00,#02,#42,#00,#04,#42
	db #00,#02,#42,#00,#03,#42,#00,#03
	db #46,#00,#02,#44,#00,#02,#41,#00
	db #0e,#ff,#42,#00,#02,#42,#00,#04
	db #42,#00,#02,#42,#00,#03,#42,#00
	db #03,#46,#00,#02,#44,#00,#02,#41
	db #00,#04,#3f,#00,#08,#44,#00,#02
	db #ff,#46,#00,#02,#44,#00,#04,#42
	db #00,#04,#3d,#00,#02,#3a,#00,#02
	db #46,#00,#02,#44,#00,#02,#44,#00
	db #04,#46,#00,#04,#44,#00,#04,#38
	db #00,#02,#ff,#38,#00,#02,#3c,#00
	db #02,#3f,#00,#02,#42,#00,#04,#3f
	db #00,#02,#3c,#00,#02,#38,#00,#02
	db #3d,#00,#10,#ff,#25,#08,#24,#02
	db #25,#00,#02,#25,#00,#02,#a5,#00
	db #20,#08,#2f,#02,#20,#00,#02,#20
	db #00,#02,#a0,#00,#20,#00,#02,#2a
	db #08,#1b,#02,#2a,#00,#02,#2a,#00
	db #02,#aa,#00,#25,#08,#24,#02,#25
	db #00,#02,#25,#00,#02,#a5,#00,#25
	db #00,#02,#ff,#34,#e1,#20,#40,#f0
	db #02,#34,#e0,#02,#40,#f0,#02,#34
	db #e0,#02,#40,#f0,#02,#34,#e0,#02
	db #40,#f0,#02,#34,#e0,#02,#40,#f0
	db #02,#34,#e0,#02,#40,#f0,#02,#34
	db #e0,#02,#40,#f0,#02,#b4,#e0,#40
	db #f0,#03,#ff,#34,#e0,#02,#40,#f0
	db #02,#34,#e0,#02,#40,#f0,#02,#34
	db #e0,#02,#40,#f0,#02,#34,#e0,#02
	db #40,#f0,#02,#34,#e0,#02,#40,#f0
	db #02,#34,#e0,#02,#40,#f0,#02,#34
	db #e0,#02,#40,#f0,#02,#b4,#e0,#40
	db #f0,#03,#ff,#34,#e0,#02,#40,#f0
	db #02,#34,#e0,#02,#40,#f0,#02,#34
	db #e0,#02,#40,#f0,#02,#34,#e0,#02
	db #40,#f0,#02,#34,#e0,#02,#40,#f0
	db #02,#34,#e0,#02,#40,#f0,#02,#34
	db #e0,#02,#40,#f0,#02,#bd,#f0,#bb
	db #f0,#b9,#f0,#b8,#f0,#ff,#34,#e0
	db #02,#40,#f0,#02,#34,#e0,#02,#40
	db #f0,#02,#34,#e0,#02,#40,#f0,#02
	db #34,#e0,#02,#40,#f0,#02,#3b,#f0
	db #04,#3b,#f0,#04,#bb,#f0,#bb,#f0
	db #bb,#f0,#bb,#f0,#bb,#f0,#bb,#f0
	db #bb,#f0,#bb,#f0,#ff,#31,#01,#20
	db #35,#00,#02,#38,#00,#02,#35,#00
	db #02,#2c,#00,#02,#30,#00,#02,#33
	db #00,#02,#30,#00,#02,#36,#00,#02
	db #3a,#00,#02,#3d,#00,#02,#3a,#00
	db #02,#31,#00,#02,#35,#00,#02,#38
	db #00,#02,#35,#00,#02,#ff,#25,#08
	db #24,#02,#29,#08,#1c,#02,#2c,#08
	db #18,#02,#29,#08,#1c,#02,#20,#08
	db #2f,#02,#24,#08,#26,#02,#27,#08
	db #20,#02,#24,#08,#26,#02,#2a,#08
	db #1b,#02,#2e,#08,#15,#02,#31,#08
	db #12,#02,#2e,#08,#15,#02,#25,#08
	db #24,#02,#29,#08,#1c,#02,#2c,#08
	db #18,#02,#29,#08,#1c,#02,#ff,#2a
	db #08,#1b,#02,#2a,#08,#1b,#02,#2a
	db #08,#1b,#02,#2a,#08,#1b,#02,#2a
	db #08,#1b,#02,#2a,#08,#1b,#02,#29
	db #08,#1c,#02,#27,#08,#20,#02,#25
	db #08,#24,#02,#25,#08,#24,#02,#25
	db #08,#24,#02,#25,#08,#24,#02,#25
	db #08,#24,#02,#25,#08,#24,#02,#25
	db #08,#24,#02,#25,#08,#24,#02,#ff
	db #2a,#08,#1b,#02,#2a,#08,#1b,#02
	db #2a,#08,#1b,#02,#2a,#08,#1b,#02
	db #2a,#08,#1b,#02,#2a,#08,#1b,#02
	db #29,#08,#1c,#02,#2a,#08,#1b,#02
	db #2c,#08,#18,#02,#2c,#08,#18,#02
	db #2c,#08,#18,#02,#2c,#08,#18,#02
	db #2c,#08,#18,#02,#2c,#08,#18,#02
	db #2c,#08,#18,#02,#2c,#08,#18,#02
	db #ff,#2c,#08,#18,#02,#2c,#08,#18
	db #02,#2c,#08,#18,#02,#2c,#08,#18
	db #02,#2c,#08,#18,#02,#2c,#08,#18
	db #02,#2e,#08,#15,#02,#30,#08,#13
	db #02,#31,#08,#12,#02,#31,#08,#12
	db #02,#31,#08,#12,#02,#31,#08,#12
	db #02,#31,#08,#12,#02,#31,#08,#12
	db #02,#31,#08,#12,#02,#31,#08,#12
	db #02,#ff
;
;org #03a9
;push ix
;call #2000
;pop ix
;ld hl,#abf0
;ld de,l03bc
;ld bc,#80ff
;jp #bcd7
;.l03bc
;push ix
;call #2003
;pop ix
;ret
;ld hl,#abf0
;call #bcdd
;jp #2006
;
;
.music_info
	db "CPC-Telegramm 05 (1995)(FrankenTeam)()",0
	db "ST-128 Module",0

	read "music_end.asm"
