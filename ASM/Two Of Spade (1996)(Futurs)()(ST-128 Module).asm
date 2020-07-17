; Music of Two Of Spade (1996)(Futurs)()(ST-128 Module)
; Ripped by Megachur the 23/02/2016
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TWOOFSPA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2016
music_adr				equ #1ec6

	read "music_header.asm"
	
	jp l1ecf
	jp l1f63
	jp l1f47
;
.init_music
.l1ecf
;
	xor a
	ld hl,l247a
	call l1f40
	ld hl,l24a8
	call l1f40
	ld hl,l24d6
	call l1f40
	ld ix,l2476
	ld iy,l2500
	ld de,#002e
	ld b,#03
.l1eef
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
	djnz l1eef
	ld hl,l238f
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
	ld (l238b),hl
	ld (l238d),hl
	ld a,#0c
	ld c,d
	call l236b
	ld a,#0d
	ld c,d
	jp l236b
.l1f40
	ld b,#2a
.l1f42
	ld (hl),a
	inc hl
	djnz l1f42
	ret
;
.stop_music
.l1f47
;
	ld a,#07
	ld c,#3f
	call l236b
	ld a,#08
	ld c,#00
	call l236b
	ld a,#09
	ld c,#00
	call l236b
	ld a,#0a
	ld c,#00
	jp l236b
;
.play_music
.l1f63
;
	ld hl,l2391
	dec (hl)
	ld ix,l2476
	ld bc,l2484
	call l2005
	ld ix,l24a4
	ld bc,l24b2
	call l2005
	ld ix,l24d2
	ld bc,l24e0
	call l2005
	ld hl,l238a
	ld de,l2391
	ld b,#06
	call l1fe2
	ld b,#07
	call l1fe2
	ld b,#0b
	call l1fe2
	ld b,#0d
	call l1fe2
	ld de,l2391
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l2495
	call l1fbb
	ld hl,l24c3
	call l1fbb
	ld hl,l24f1
.l1fbb
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
	jr nz,l1fd0
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l1fd0
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
.l1fe2
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l236b
.l1fed
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l236b
.l2005
	ld a,(l2391)
	or a
	jp nz,l20bd
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l20bd
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l1fed
	or a
	jp z,l20b2
	ld r,a
	and #7f
	cp #10
	jr c,l208d
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l2205
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
	jr z,l2066
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l2066
	rrca
	ld c,a
	ld hl,l2506
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
	jr z,l2085
	ld (ix+#1e),b
.l2085
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l20a6
.l208d
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l2396
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
.l20a6
	ld a,d
	or a
	jr nz,l20b4
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l20b4
.l20b2
	ld a,(hl)
	inc hl
.l20b4
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l20bd
	ld a,(ix+#17)
	or a
	jr nz,l20d3
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l20d3
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l20e9
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l20e9
	ld a,(ix+#0d)
	or a
	jr z,l20f7
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l2115
.l20f7
	ld a,(ix+#1a)
	or a
	jp z,l211c
	ld c,a
	cp #03
	jr nz,l2104
	xor a
.l2104
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l2115
	ld a,(ix+#18)
	dec c
	jr z,l2115
	ld a,(ix+#19)
.l2115
	add (ix+#07)
	ld b,d
	call l2205
.l211c
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l2144
	dec (ix+#1b)
	jr nz,l2144
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l217c
.l2144
	ld a,(ix+#29)
	or a
	jr z,l217c
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l2173
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l216a
	ld (ix+#29),#ff
	jr l2173
.l216a
	cp (ix+#2b)
	jr nz,l2173
	ld (ix+#29),#01
.l2173
	ld b,d
	or a
	jp p,l2179
	dec b
.l2179
	ld c,a
	jr l2187
.l217c
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l2187
	pop hl
	bit 7,(ix+#14)
	jr z,l2190
	ld h,d
	ld l,d
.l2190
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l236b
	ld c,h
	ld a,(ix+#02)
	call l236b
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l21e3
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l21d2
	dec (ix+#09)
	jr nz,l21d2
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l21ca
	xor a
	jr l21cf
.l21ca
	cp #10
	jr nz,l21cf
	dec a
.l21cf
	ld (ix+#1e),a
.l21d2
	ld a,b
	sub (ix+#1e)
	jr nc,l21d9
	xor a
.l21d9
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l236b
.l21e3
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l2392)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l2201
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l2201
	ld (l2392),hl
	ret
.l2205
	ld hl,l23b4
	cp #61
	jr nc,l220f
	add a
	ld c,a
	add hl,bc
.l220f
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l2219
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l233e
	ld (ix+#1e),a
	jp l20a6
.l222b
	dec b
.l222c
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l2237
	neg
.l2237
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
	jp l20a6
.l224d
	dec b
	jr l2251
.l2250
	inc b
.l2251
	call l233e
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l20a6
.l2260
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
	jp l2323
.l2271
	ld a,(hl)
	inc hl
	or a
	jr z,l2293
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
.l2293
	ld (ix+#29),a
	jp l20a6
.l2299
	dec hl
	ld a,(hl)
	and #0f
	ld (l2395),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l2394),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l20a6
.l22b3
	ld a,(hl)
	or a
	jr z,l22c4
	call l2340
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l20a6
.l22c4
	ld hl,#0101
	ld (l2390),hl
	jp l20a6
.l22cd
	call l233e
	ld (ix+#1e),a
	jp l20a6
.l22d6
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l234f
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l234f
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l20a6
.l22f8
	ld a,(hl)
	inc hl
	ld (l238f),a
	jp l20a6
.l2300
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
	jp l20a6
.l231f
	call l233e
	add a
.l2323
	ld b,#00
	ld c,a
	push hl
	ld hl,l2586
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l20a6
.l233e
	ld a,(hl)
	inc hl
.l2340
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
.l234f
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l2506
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l236b
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
.l238a
	ret
.l2392 equ $ + 7
.l2391 equ $ + 6
.l2390 equ $ + 5
.l238f equ $ + 4
.l238d equ $ + 2
.l238b
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2395 equ $ + 2
.l2394 equ $ + 1
	db #38,#00,#00
.l2396
	dw l2219,l222c,l222b,l2250
	dw l224d,l2260,l2271,l2299
	dw l22b3,l2299,l22cd,l22d6
	dw l22f8,l2300,l231f
.l23b4
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
.l2476 equ $ + 2
	dw #000f,#0008
.l247a equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l2484 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2495 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l24a4 equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l24a8
	db #00,#00,#00,#00,#00,#00,#00,#00
.l24b2 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l24c3 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l24d6 equ $ + 6
.l24d2 equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l24e0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l24f1 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2506 equ $ + 6
.l2500
	db #c6,#27,#3e,#28,#b6,#28,#b2,#de
	db #78,#05,#38,#07,#c0,#28,#a6,#25
	db #e6,#25,#06,#26,#00,#00,#a6,#25
	db #26,#26,#06,#26,#00,#00,#46,#26
	db #86,#26,#a6,#26,#07,#00,#a6,#25
	db #c6,#26,#06,#26,#00,#00,#e6,#26
	db #26,#27,#46,#27,#1a,#00,#a6,#25
	db #66,#27,#86,#27,#09,#00,#98,#de
	db #6a,#be,#6a,#be,#d2,#df,#98,#de
	db #6a,#be,#6a,#be,#d2,#df,#98,#de
	db #6a,#be,#6a,#be,#d2,#df,#98,#de
	db #6a,#be,#6a,#be,#d2,#df,#6a,#be
	db #78,#07,#6a,#be,#d2,#df,#6a,#be
	db #6a,#be,#6a,#be,#d2,#df,#6a,#be
	db #6a,#be,#6a,#be,#d2,#df,#6a,#be
	db #98,#de,#98,#de,#00,#00,#98,#de
.l2586 equ $ + 6
	db #98,#de,#98,#de,#00,#00,#98,#de
	db #98,#de,#98,#de,#98,#de,#a6,#27
	db #98,#de,#98,#de,#98,#de,#98,#de
	db #98,#de,#98,#de,#98,#de,#98,#de
	db #98,#de,#98,#de,#98,#de,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0d,#0c
	db #0c,#0b,#0b,#0a,#0a,#09,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0d,#0d
	db #0d,#0d,#0d,#0d,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#80,#00
	db #00,#01,#80,#01,#00,#02,#80,#02
	db #00,#03,#00,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0f,#0e,#0f,#0e,#0f,#0e,#0f,#0d
	db #0e,#0c,#0d,#0b,#0c,#0a,#0b,#09
	db #0a,#08,#09,#07,#08,#06,#07,#05
	db #06,#04,#05,#03,#04,#00,#00,#00
	db #30,#00,#60,#00,#90,#00,#c0,#00
	db #f0,#00,#20,#01,#50,#01,#80,#01
	db #b0,#01,#e0,#01,#10,#02,#40,#02
	db #70,#02,#a0,#02,#d0,#02,#00,#03
	db #20,#03,#40,#03,#60,#03,#70,#03
	db #80,#03,#90,#03,#a0,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#07,#07,#06,#06,#05
	db #05,#04,#04,#03,#03,#02,#02,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#0f,#0d
	db #0b,#09,#07,#05,#03,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#f4
	db #00,#0c,#00,#f4,#00,#0c,#00,#f4
	db #00,#0c,#00,#f4,#00,#0c,#00,#f4
	db #00,#0c,#00,#f4,#00,#0c,#00,#f4
	db #00,#0c,#00,#f4,#00,#0c,#00,#2e
	db #29,#00,#df,#2b,#00,#31,#29,#00
	db #31,#29,#00,#b3,#29,#00,#d5,#29
	db #00,#b3,#29,#00,#d5,#29,#00,#05
	db #2a,#00,#05,#2a,#00,#b3,#29,#00
	db #d5,#29,#00,#05,#2a,#00,#30,#2a
	db #00,#b3,#29,#00,#d5,#29,#00,#05
	db #2a,#00,#30,#2a,#00,#62,#2a,#00
	db #62,#2a,#00,#b3,#29,#00,#d5,#29
	db #00,#2e,#29,#00,#31,#29,#00,#b3
	db #29,#00,#d5,#29,#00,#e2,#2a,#00
	db #60,#2b,#00,#05,#2a,#00,#30,#2a
	db #00,#62,#2a,#00,#62,#2a,#00,#e2
	db #2a,#00,#e2,#2a,#00,#60,#2b,#00
	db #60,#2b,#00,#2e,#29,#00,#b3,#29
	db #00,#d5,#29,#80,#d2,#27,#00,#f2
	db #2b,#00,#f2,#2b,#00,#f2,#2b,#00
	db #f2,#2b,#00,#f2,#2b,#00,#f2,#2b
	db #00,#f2,#2b,#00,#f2,#2b,#00,#f2
	db #2b,#00,#f2,#2b,#00,#f2,#2b,#00
	db #f2,#2b,#00,#f2,#2b,#00,#f2,#2b
	db #00,#f2,#2b,#00,#f2,#2b,#00,#f2
	db #2b,#00,#f2,#2b,#00,#f2,#2b,#00
	db #f2,#2b,#00,#f2,#2b,#00,#f2,#2b
	db #00,#f2,#2b,#00,#f2,#2b,#00,#f2
	db #2b,#00,#f2,#2b,#00,#f2,#2b,#00
	db #f2,#2b,#00,#f2,#2b,#00,#f2,#2b
	db #00,#f2,#2b,#00,#f2,#2b,#00,#f2
	db #2b,#00,#f2,#2b,#00,#f2,#2b,#00
	db #f2,#2b,#00,#f2,#2b,#00,#2e,#29
	db #00,#74,#2c,#80,#4a,#28,#00,#31
	db #29,#00,#31,#29,#00,#f6,#2c,#00
	db #f6,#2c,#00,#f6,#2c,#00,#f6,#2c
	db #00,#f6,#2c,#00,#f6,#2c,#00,#f6
	db #2c,#00,#f6,#2c,#00,#f6,#2c,#00
	db #f6,#2c,#00,#f6,#2c,#00,#f6,#2c
	db #00,#f6,#2c,#00,#f6,#2c,#00,#f6
	db #2c,#00,#f6,#2c,#00,#b5,#2d,#00
	db #b5,#2d,#00,#f6,#2c,#00,#f6,#2c
	db #00,#31,#29,#00,#f6,#2c,#00,#f6
	db #2c,#00,#f6,#2c,#00,#f6,#2c,#00
	db #f6,#2c,#00,#f6,#2c,#00,#f6,#2c
	db #00,#b5,#2d,#00,#b5,#2d,#00,#f6
	db #2c,#00,#f6,#2c,#00,#f6,#2c,#00
	db #f6,#2c,#00,#31,#29,#00,#f6,#2c
	db #00,#f6,#2c,#80,#c2,#28,#00,#40
	db #ff,#74,#61,#10,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#ff,#51,#4f,#64,#58,#40
	db #06,#5d,#40,#04,#5b,#40,#0a,#58
	db #40,#02,#5b,#40,#02,#5d,#40,#02
	db #56,#40,#06,#54,#40,#06,#56,#40
	db #02,#58,#40,#12,#ff,#51,#4f,#64
	db #58,#40,#06,#5d,#40,#04,#5b,#40
	db #0a,#58,#40,#02,#5b,#40,#02,#5d
	db #40,#02,#5f,#40,#02,#60,#40,#02
	db #5f,#40,#02,#dd,#40,#5b,#40,#03
	db #5d,#40,#02,#5b,#40,#02,#58,#40
	db #02,#5d,#40,#10,#ff,#51,#4f,#64
	db #51,#40,#04,#51,#40,#02,#51,#40
	db #02,#4f,#40,#02,#4f,#40,#10,#4f
	db #40,#02,#4f,#40,#02,#4f,#40,#02
	db #51,#40,#02,#53,#40,#02,#54,#40
	db #02,#53,#40,#02,#51,#40,#12,#ff
	db #51,#4f,#64,#58,#40,#04,#58,#40
	db #02,#59,#40,#02,#58,#40,#02,#56
	db #40,#10,#56,#40,#02,#56,#40,#02
	db #5b,#40,#02,#5d,#40,#02,#5f,#40
	db #02,#5f,#40,#02,#60,#40,#02,#5f
	db #40,#02,#dd,#40,#db,#40,#5d,#40
	db #0e,#ff,#58,#11,#10,#d4,#10,#d1
	db #10,#d8,#10,#d4,#10,#d1,#10,#d8
	db #10,#d4,#10,#d1,#10,#d8,#10,#d4
	db #10,#d1,#10,#d8,#10,#d4,#10,#d1
	db #10,#d4,#10,#d6,#10,#d3,#10,#cf
	db #10,#d6,#10,#d3,#10,#cf,#10,#d6
	db #10,#d3,#10,#cf,#10,#d6,#10,#d3
	db #10,#cf,#10,#d6,#10,#d3,#10,#4f
	db #10,#02,#d6,#10,#d3,#10,#cf,#10
	db #d6,#10,#d3,#10,#cf,#10,#d6,#10
	db #d3,#10,#cf,#10,#d6,#10,#d3,#10
	db #cf,#10,#d6,#10,#d3,#10,#cf,#10
	db #d6,#10,#d8,#10,#d4,#10,#d1,#10
	db #d8,#10,#d4,#10,#d1,#10,#d8,#10
	db #d4,#10,#d1,#10,#d8,#10,#d4,#10
	db #d1,#10,#d8,#10,#d4,#10,#51,#10
	db #02,#ff,#51,#4f,#14,#d3,#40,#d4
	db #40,#d1,#40,#d1,#40,#d3,#40,#d4
	db #40,#d1,#40,#d1,#40,#d1,#40,#d3
	db #40,#d4,#40,#d1,#40,#d1,#40,#d3
	db #40,#d4,#40,#53,#40,#02,#d4,#40
	db #d1,#40,#d3,#40,#d4,#40,#d1,#40
	db #d1,#40,#d3,#40,#54,#40,#03,#d4
	db #40,#d3,#40,#d3,#40,#d4,#40,#d3
	db #40,#cf,#40,#d3,#40,#cf,#40,#d4
	db #40,#d3,#40,#d3,#40,#d4,#40,#d3
	db #40,#cf,#40,#d3,#40,#cf,#40,#d4
	db #40,#d3,#40,#d3,#40,#d4,#40,#d3
	db #40,#cf,#40,#d4,#40,#d3,#40,#d1
	db #40,#cf,#40,#d1,#40,#cf,#40,#d1
	db #40,#d1,#40,#d4,#40,#d1,#40,#d1
	db #40,#d1,#40,#d4,#40,#d1,#40,#ff
	db #51,#4f,#14,#d1,#40,#d8,#40,#dd
	db #40,#d1,#40,#d1,#40,#d8,#40,#dd
	db #40,#d1,#40,#d8,#40,#dd,#40,#d1
	db #40,#d1,#40,#d8,#40,#dd,#40,#d1
	db #40,#d8,#40,#dd,#40,#d1,#40,#d1
	db #40,#d8,#40,#dd,#40,#d1,#40,#d1
	db #40,#d1,#40,#d8,#40,#d8,#40,#dd
	db #40,#51,#40,#03,#cf,#40,#cf,#40
	db #d6,#40,#db,#40,#cf,#40,#cf,#40
	db #d6,#40,#cf,#40,#d6,#40,#d6,#40
	db #d6,#40,#d6,#40,#cf,#40,#cf,#40
	db #d6,#40,#db,#40,#d1,#40,#d8,#40
	db #dd,#40,#d1,#40,#d1,#40,#d8,#40
	db #d8,#40,#dd,#40,#d8,#40,#d1,#40
	db #d1,#40,#d1,#40,#dd,#40,#d1,#40
	db #dd,#40,#d1,#40,#dd,#40,#ff,#00
	db #38,#bf,#50,#bf,#50,#bf,#50,#bf
	db #50,#bf,#50,#bf,#50,#bf,#50,#bf
	db #50,#ff,#40,#31,#10,#ad,#20,#b9
	db #20,#ad,#20,#c0,#50,#b9,#20,#ad
	db #20,#c0,#30,#b9,#20,#ad,#20,#c0
	db #30,#b9,#20,#c0,#50,#ad,#20,#b9
	db #20,#ad,#20,#c0,#30,#b9,#20,#ad
	db #20,#b9,#20,#c0,#50,#ad,#20,#b9
	db #20,#c0,#30,#ad,#20,#b9,#20,#c0
	db #30,#ad,#20,#c0,#50,#b9,#20,#ad
	db #20,#b9,#20,#c0,#30,#ab,#20,#b7
	db #20,#ab,#20,#c0,#50,#b7,#20,#ab
	db #20,#c0,#30,#b7,#20,#ab,#20,#c0
	db #30,#b7,#20,#c0,#50,#ab,#20,#b7
	db #20,#ab,#20,#c0,#30,#ad,#20,#b9
	db #20,#ad,#20,#c0,#50,#b9,#20,#ad
	db #20,#c0,#30,#b9,#20,#ad,#20,#c0
	db #30,#b9,#20,#c0,#50,#ad,#20,#c0
	db #50,#c0,#50,#ff,#2d,#21,#10,#b9
	db #20,#ad,#20,#b9,#20,#ad,#20,#b9
	db #20,#ad,#20,#b9,#20,#ad,#20,#b9
	db #20,#ad,#20,#b9,#20,#ad,#20,#b9
	db #20,#ad,#20,#b9,#20,#ab,#20,#b7
	db #20,#ab,#20,#b7,#20,#ab,#20,#b7
	db #20,#ab,#20,#b7,#20,#ab,#20,#b7
	db #20,#ab,#20,#b7,#20,#ab,#20,#b7
	db #20,#ab,#20,#b7,#20,#ab,#20,#b7
	db #20,#ab,#20,#b7,#20,#ab,#20,#b7
	db #20,#ab,#20,#b7,#20,#ab,#20,#b7
	db #20,#ab,#20,#b7,#20,#ab,#20,#b7
	db #20,#ab,#20,#b7,#20,#ad,#20,#b9
	db #20,#ad,#20,#b9,#20,#ad,#20,#b9
	db #20,#ad,#20,#b9,#20,#ad,#20,#b9
	db #20,#b9,#20,#b9,#20,#b9,#20,#b9
	db #20,#ad,#20,#ad,#20,#ff,#cc,#18
	db #0f,#c8,#18,#13,#c5,#18,#16,#cc
	db #18,#0f,#c8,#18,#13,#c5,#18,#16
	db #cc,#18,#0f,#c8,#18,#13,#c5,#18
	db #16,#cc,#18,#0f,#c8,#18,#13,#c5
	db #18,#16,#cc,#18,#0f,#c8,#18,#13
	db #c5,#18,#16,#c8,#18,#13,#ca,#18
	db #11,#c7,#18,#14,#c3,#18,#19,#ca
	db #18,#11,#c7,#18,#14,#c3,#18,#19
	db #ca,#18,#11,#c7,#18,#14,#c3,#18
	db #19,#ca,#18,#11,#c7,#18,#14,#c3
	db #18,#19,#ca,#18,#11,#c7,#18,#14
	db #c3,#18,#19,#fe,#01,#ca,#18,#11
	db #c7,#18,#14,#c3,#18,#19,#ca,#18
	db #11,#c7,#18,#14,#c3,#18,#19,#ca
	db #18,#11,#c7,#18,#14,#c3,#18,#19
	db #ca,#18,#11,#c7,#18,#14,#c3,#18
	db #19,#ca,#18,#11,#c7,#18,#14,#c3
	db #18,#19,#ca,#18,#11,#cc,#18,#0f
	db #c8,#18,#13,#c5,#18,#16,#cc,#18
	db #0f,#c8,#18,#13,#c5,#18,#16,#cc
	db #18,#0f,#c8,#18,#13,#c5,#18,#16
	db #cc,#18,#0f,#c8,#18,#13,#c5,#18
	db #16,#cc,#18,#0f,#c8,#18,#13,#c5
	db #18,#16,#fe,#01,#ff,#00,#01,#58
	db #11,#10,#d4,#10,#d1,#10,#d8,#10
	db #d4,#10,#d1,#10,#d8,#10,#d4,#10
	db #d1,#10,#d8,#10,#d4,#10,#d1,#10
	db #d8,#10,#d4,#10,#d1,#10,#d4,#10
	db #d6,#10,#d3,#10,#cf,#10,#d6,#10
	db #d3,#10,#cf,#10,#d6,#10,#d3,#10
	db #cf,#10,#d6,#10,#d3,#10,#cf,#10
	db #d6,#10,#d3,#10,#4f,#10,#02,#d6
	db #10,#d3,#10,#cf,#10,#d6,#10,#d3
	db #10,#cf,#10,#d6,#10,#d3,#10,#cf
	db #10,#d6,#10,#d3,#10,#cf,#10,#d6
	db #10,#d3,#10,#cf,#10,#d6,#10,#d8
	db #10,#d4,#10,#d1,#10,#d8,#10,#d4
	db #10,#d1,#10,#d8,#10,#d4,#10,#d1
	db #10,#d8,#10,#d4,#10,#d1,#10,#d8
	db #10,#d4,#10,#d1,#10,#ff
;
.music_info
	db "Two Of Spade (1996)(Futurs)()",0
	db "ST-128 Module",0

	read "music_end.asm"
