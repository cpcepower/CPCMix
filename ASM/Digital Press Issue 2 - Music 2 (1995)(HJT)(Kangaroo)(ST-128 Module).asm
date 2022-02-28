; Music of Digital Press Issue 2 - Music 2 (1995)(HJT)(Kangaroo)(ST-128 Module)
; Ripped by Megachur the 07/11/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DIGIPI22.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 07
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #1ef0

	read "music_header.asm"

	jp l1ef9
	jp l1f8d
	jp l1f71
;
.init_music
.l1ef9
;
	xor a
	ld hl,l24a4
	call l1f6a
	ld hl,l24d2
	call l1f6a
	ld hl,l2500
	call l1f6a
	ld ix,l24a0
	ld iy,l252a
	ld de,#002e
	ld b,#03
.l1f19
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
	djnz l1f19
	ld hl,l23b9
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
	ld (l23b5),hl
	ld (l23b7),hl
	ld a,#0c
	ld c,d
	call l2395
	ld a,#0d
	ld c,d
	jp l2395
.l1f6a
	ld b,#2a
.l1f6c
	ld (hl),a
	inc hl
	djnz l1f6c
	ret
;
.stop_music
.l1f71
;
	ld a,#07
	ld c,#3f
	call l2395
	ld a,#08
	ld c,#00
	call l2395
	ld a,#09
	ld c,#00
	call l2395
	ld a,#0a
	ld c,#00
	jp l2395
;
.play_music
.l1f8d
;
	ld hl,l23bb
	dec (hl)
	ld ix,l24a0
	ld bc,l24ae
	call l202f
	ld ix,l24ce
	ld bc,l24dc
	call l202f
	ld ix,l24fc
	ld bc,l250a
	call l202f
	ld hl,l23b4
	ld de,l23bb
	ld b,#06
	call l200c
	ld b,#07
	call l200c
	ld b,#0b
	call l200c
	ld b,#0d
	call l200c
	ld de,l23bb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,l24bf
	call l1fe5
	ld hl,l24ed
	call l1fe5
	ld hl,l251b
.l1fe5
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
	jr nz,l1ffa
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l1ffa
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
.l200c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l2395
.l2017
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l2395
.l202f
	ld a,(l23bb)
	or a
	jp nz,l20e7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l20e7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l2017
	or a
	jp z,l20dc
	ld r,a
	and #7f
	cp #10
	jr c,l20b7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l222f
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
	jr z,l2090
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l2090
	rrca
	ld c,a
	ld hl,l2530
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
	jr z,l20af
	ld (ix+#1e),b
.l20af
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l20d0
.l20b7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l23c0
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
	add (hl)
.l20d0
	ld a,d
	or a
	jr nz,l20de
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l20de
.l20dc
	ld a,(hl)
	inc hl
.l20de
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l20e7
	ld a,(ix+#17)
	or a
	jr nz,l20fd
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l20fd
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l2113
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l2113
	ld a,(ix+#0d)
	or a
	jr z,l2121
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l213f
.l2121
	ld a,(ix+#1a)
	or a
	jp z,l2146
	ld c,a
	cp #03
	jr nz,l212e
	xor a
.l212e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l213f
	ld a,(ix+#18)
	dec c
	jr z,l213f
	ld a,(ix+#19)
.l213f
	add (ix+#07)
	ld b,d
	call l222f
.l2146
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l216e
	dec (ix+#1b)
	jr nz,l216e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l21a6
.l216e
	ld a,(ix+#29)
	or a
	jr z,l21a6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l219d
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l2194
	ld (ix+#29),#ff
	jr l219d
.l2194
	cp (ix+#2b)
	jr nz,l219d
	ld (ix+#29),#01
.l219d
	ld b,d
	or a
	jp p,l21a3
	dec b
.l21a3
	ld c,a
	jr l21b1
.l21a6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l21b1
	pop hl
	bit 7,(ix+#14)
	jr z,l21ba
	ld h,d
	ld l,d
.l21ba
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l2395
	ld c,h
	ld a,(ix+#02)
	call l2395
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l220d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l21fc
	dec (ix+#09)
	jr nz,l21fc
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l21f4
	xor a
	jr l21f9
.l21f4
	cp #10
	jr nz,l21f9
	dec a
.l21f9
	ld (ix+#1e),a
.l21fc
	ld a,b
	sub (ix+#1e)
	jr nc,l2203
	xor a
.l2203
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l2395
.l220d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l23bc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l222b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l222b
	ld (l23bc),hl
	ret
.l222f
	ld hl,l23de
	cp #61
	jr nc,l2239
	add a
	ld c,a
	add hl,bc
.l2239
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l2243
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l2368
	ld (ix+#1e),a
	jp l20d0
.l2255
	dec b
.l2256
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l2261
	neg
.l2261
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
	jp l20d0
.l2277
	dec b
	jr l227b
.l227a
	inc b
.l227b
	call l2368
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l20d0
.l228a
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
	jp l234d
.l229b
	ld a,(hl)
	inc hl
	or a
	jr z,l22bd
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
.l22bd
	ld (ix+#29),a
	jp l20d0
.l22c3
	dec hl
	ld a,(hl)
	and #0f
	ld (l23bf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l23be),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l20d0
.l22dd
	ld a,(hl)
	or a
	jr z,l22ee
	call l236a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l20d0
.l22ee
	ld hl,#0101
	ld (l23ba),hl
	jp l20d0
.l22f7
	call l2368
	ld (ix+#1e),a
	jp l20d0
.l2300
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l2379
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l2379
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l20d0
.l2322
	ld a,(hl)
	inc hl
	ld (l23b9),a
	jp l20d0
.l232a
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
	jp l20d0
.l2349
	call l2368
	add a
.l234d
	ld b,#00
	ld c,a
	push hl
	ld hl,l25b0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l20d0
.l2368
	ld a,(hl)
	inc hl
.l236a
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
.l2379
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l2530
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l2395
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
.l23b4
	ret
.l23bc equ $ + 7
.l23bb equ $ + 6
.l23ba equ $ + 5
.l23b9 equ $ + 4
.l23b7 equ $ + 2
.l23b5
	db #02,#38,#1e,#08,#06,#0b,#05,#02
.l23bf equ $ + 2
.l23be equ $ + 1
	db #38,#1e,#08
.l23c0
	dw l2243,l2256,l2255,l227a
	dw l2277,l228a,l229b,l22c3
	dw l22dd,l22c3,l22f7,l2300
	dw l2322,l232a,l2349
.l23de
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
.l24a4 equ $ + 4
.l24a0
	db #08,#00,#01,#08,#ef,#00,#00,#30
.l24ae equ $ + 6
	db #00,#00,#00,#00,#70,#27,#d0,#25
	db #10,#26,#30,#26,#00,#00,#08,#18
.l24bf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #4d,#28,#f3,#27,#00,#00,#00,#00
.l24ce equ $ + 6
	db #00,#00,#00,#00,#01,#01,#09,#02
.l24d2 equ $ + 2
	db #03,#10,#ef,#00,#00,#30,#00,#00
.l24dc equ $ + 4
	db #00,#00,#00,#00,#f0,#26,#30,#27
	db #50,#27,#00,#00,#02,#1e,#00,#00
.l24ed equ $ + 5
	db #00,#00,#00,#00,#00,#02,#b6,#28
	db #08,#28,#00,#c0,#00,#00,#00,#00
.l24fc equ $ + 4
	db #00,#00,#01,#01,#0a,#04,#05,#20
.l2500
	db #00,#00,#00,#00,#00,#00,#00,#00
.l250a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l251b equ $ + 3
	db #00,#00,#00,#0c,#f3,#28,#1d,#28
	db #00,#ff,#00,#00,#00,#00,#00,#00
.l252a equ $ + 2
	db #00,#00,#f0,#27,#05,#28,#1a,#28
.l2530
	db #d0,#25,#10,#26,#30,#26,#00,#00
	db #c1,#de,#93,#ae,#94,#ae,#d2,#cf
	db #c1,#de,#22,#f7,#62,#f7,#c0,#17
	db #c2,#de,#93,#ae,#94,#ae,#d2,#cf
	db #c1,#de,#93,#ae,#94,#ae,#d2,#cf
	db #c1,#de,#93,#ae,#94,#ae,#d2,#cf
	db #50,#26,#90,#26,#b0,#26,#0b,#15
	db #50,#26,#d0,#26,#b0,#26,#1a,#00
	db #c1,#de,#93,#ae,#94,#ae,#d2,#cf
	db #c1,#de,#93,#ae,#94,#ae,#d2,#cf
	db #c1,#de,#82,#f7,#94,#ae,#e0,#18
	db #c2,#f7,#e2,#f7,#94,#ae,#d2,#cf
	db #f0,#26,#30,#27,#50,#27,#00,#00
	db #94,#ae,#94,#ae,#93,#ae,#d1,#cf
	db #94,#ae,#c2,#de,#f2,#de,#60,#00
	db #52,#df,#82,#df,#b2,#df,#20,#01
.l25b0
	db #70,#27,#90,#27,#b0,#27,#d0,#27
	db #d2,#e0,#02,#e1,#32,#e1,#62,#e1
	db #92,#e1,#c2,#e1,#e2,#e1,#02,#e2
	db #22,#e2,#32,#e2,#42,#e2,#52,#e2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#09,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#ff,#ff,#fe,#ff
	db #fd,#ff,#fe,#ff,#ff,#ff,#01,#00
	db #03,#00,#05,#00,#03,#00,#01,#00
	db #ff,#ff,#fd,#ff,#fb,#ff,#fd,#ff
	db #ff,#ff,#01,#00,#04,#00,#07,#00
	db #04,#00,#01,#00,#ff,#ff,#fc,#ff
	db #f9,#ff,#fc,#ff,#ff,#ff,#00,#00
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0d,#0d,#0e,#0e,#0e,#0e,#0e
	db #0d,#0d,#0d,#0d,#0d,#0e,#0e,#0e
	db #0e,#0e,#0d,#0d,#0d,#0d,#0d,#0e
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#89,#89,#88,#88
	db #87,#87,#86,#86,#85,#85,#84,#84
	db #83,#83,#82,#82,#81,#81,#80,#00
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #a0,#00,#e0,#00,#00,#00,#20,#00
	db #40,#00,#60,#00,#a0,#00,#e0,#00
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #80,#00,#a0,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#06,#05
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#06,#08,#0b,#10,#02,#00
	db #06,#08,#0b,#10,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#03,#03,#07,#07,#00,#00
	db #03,#03,#07,#07,#00,#00,#03,#03
	db #07,#07,#00,#00,#03,#03,#07,#07
	db #00,#00,#03,#03,#07,#07,#00,#00
	db #00,#00,#04,#04,#07,#07,#00,#00
	db #04,#04,#07,#07,#00,#00,#04,#04
	db #07,#07,#00,#00,#04,#04,#07,#07
	db #00,#00,#04,#04,#07,#07,#00,#00
	db #00,#00,#03,#03,#08,#08,#00,#00
	db #03,#03,#08,#08,#00,#00,#03,#03
	db #08,#08,#00,#00,#03,#03,#08,#08
	db #00,#00,#03,#03,#08,#08,#00,#00
	db #00,#00,#04,#04,#09,#09,#00,#00
	db #04,#04,#09,#09,#00,#00,#04,#04
	db #09,#09,#00,#00,#04,#04,#09,#09
	db #00,#00,#04,#04,#09,#09,#00,#00
	db #00,#2f,#28,#00,#2f,#28,#00,#2f
	db #28,#00,#2f,#28,#00,#2f,#28,#00
	db #5c,#28,#80,#f0,#27,#00,#93,#28
	db #00,#c2,#28,#00,#93,#28,#00,#c2
	db #28,#00,#c2,#28,#00,#c2,#28,#80
	db #05,#28,#00,#f1,#28,#00,#f1,#28
	db #00,#f4,#28,#00,#13,#29,#00,#40
	db #29,#00,#59,#29,#80,#1a,#28,#40
	db #0f,#20,#c0,#00,#40,#00,#02,#c0
	db #00,#40,#00,#02,#3e,#0f,#21,#40
	db #0f,#22,#40,#0f,#40,#40,#0f,#20
	db #c0,#00,#40,#00,#02,#c0,#00,#40
	db #00,#02,#3e,#0f,#21,#3c,#0f,#21
	db #37,#0f,#43,#ff,#4c,#0f,#20,#cc
	db #00,#4c,#00,#02,#cc,#00,#4c,#00
	db #02,#4c,#00,#02,#4c,#0f,#12,#4c
	db #00,#02,#cc,#00,#4c,#00,#02,#4c
	db #0f,#20,#cc,#00,#4c,#00,#02,#cc
	db #00,#4c,#00,#02,#4c,#00,#02,#4c
	db #0f,#12,#4c,#00,#02,#cc,#00,#4c
	db #00,#02,#ff,#40,#78,#1e,#03,#c0
	db #78,#1e,#40,#c1,#20,#32,#78,#11
	db #04,#2d,#78,#16,#02,#40,#c1,#20
	db #28,#78,#1e,#02,#40,#78,#1e,#03
	db #c0,#78,#1e,#40,#c1,#20,#32,#78
	db #11,#04,#2d,#78,#16,#02,#40,#c1
	db #40,#ff,#40,#78,#1e,#03,#c0,#78
	db #1e,#40,#c1,#20,#32,#78,#11,#04
	db #2d,#78,#16,#02,#40,#c1,#20,#28
	db #78,#1e,#02,#40,#78,#1e,#03,#c0
	db #78,#1e,#40,#c1,#20,#2d,#78,#16
	db #04,#2b,#78,#19,#02,#40,#c1,#40
	db #ff,#00,#20,#ff,#40,#60,#06,#40
	db #60,#04,#43,#60,#02,#45,#60,#02
	db #47,#60,#06,#45,#60,#02,#43,#60
	db #02,#45,#60,#02,#47,#60,#02,#43
	db #60,#04,#ff,#48,#60,#02,#47,#60
	db #02,#45,#60,#02,#43,#60,#02,#45
	db #60,#02,#47,#60,#02,#43,#60,#02
	db #40,#60,#08,#c0,#60,#c2,#60,#c3
	db #60,#c0,#60,#c2,#60,#c3,#60,#c5
	db #60,#c2,#60,#c3,#60,#c5,#60,#ff
	db #48,#60,#02,#47,#60,#02,#45,#60
	db #02,#43,#60,#02,#45,#60,#02,#47
	db #60,#02,#43,#60,#02,#40,#60,#12
	db #ff,#cf,#00,#ce,#00,#cc,#00,#ca
	db #00,#4c,#00,#06,#ca,#00,#4c,#00
	db #02,#c7,#00,#4c,#00,#02,#ca,#00
	db #4c,#00,#02,#c7,#00,#4c,#00,#02
	db #45,#00,#02,#4c,#00,#02,#c3,#00
	db #4c,#00,#02,#c2,#00,#4c,#00,#02
	db #ff
;
.music_info
	db "Digital Press Issue 2 - Music 2 (1995)(HJT)(Kangaroo)",0
	db "ST-128 Module",0

	read "music_end.asm"
