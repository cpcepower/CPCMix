; Music of Bebetes Show (1993)(Crack'n'Rom)()(ST-Module)
; Ripped by Megachur the 03/09/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BEBESHOW.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #2000

	read "music_header.asm"

	jp l200b
	jp l2093
	jp l2077
	db #66,#04
;
.init_music
.l200b
;
	ld b,#03
	ld ix,l23da
	ld iy,l2306
	ld de,#001c
.l2018
	push bc
	ld (ix+#06),#01
	ld (ix+#09),d
	ld (ix+#1b),d
	ld (ix+#05),#10
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#00),c
	ld (ix+#01),b
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l2018
	ld a,#06
	ld (l20bb),a
	ld a,d
	ld (l20cf),a
	inc a
	ld (l20b6),a
	ld a,#38
	ld (l20c0),a
	ld a,#ff
	ld (l2302),a
	ld (l2303),a
	ld (l2304),a
	ld (l2305),a
	ld a,#0c
	ld c,d
	call l22e4
	ld a,#0d
	ld c,d
	jp l22e4
;
.stop_music
.l2077
;
	ld a,#07
	ld c,#3f
	call l22e4
	ld a,#08
	ld c,#00
	call l22e4
	ld a,#09
	ld c,#00
	call l22e4
	ld a,#0a
	ld c,#00
	jp l22e4
;
.play_music
.l2093
;
	ld hl,l20b6
	dec (hl)
	ld ix,l23da
	ld bc,l23e8
	call l2149
	ld ix,l23f6
	ld bc,l2404
	call l2149
	ld ix,l2412
	ld bc,l2420
	call l2149
.l20b6 equ $ + 1
	ld a,#01
	or a
	jr nz,l20bf
.l20bb equ $ + 1
	ld a,#06
	ld (l20b6),a
.l20c0 equ $ + 1
.l20bf
	ld a,#38
	ld hl,l2303
	cp (hl)
	jr z,l20ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l22e4
.l20cf equ $ + 1
.l20ce
	ld a,#00
	ld hl,l2302
	cp (hl)
	jr z,l20dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l22e4
.l20de equ $ + 1
.l20dd
	ld a,#00
	ld hl,l2304
	cp (hl)
	jr z,l20ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l22e4
.l20ed equ $ + 1
.l20ec
	ld a,#00
	ld hl,l2305
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l22e4
.l20fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l21fa
.l2109
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	xor a
	ld (ix+#17),a
	ld (ix+#15),a
	ld c,a
	ld a,(ix+#04)
	jp l22e4
.l2123
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l2138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l2138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l215c
.l2149
	ld a,(l20b6)
	or a
	jp nz,l21fa
	dec (ix+#06)
	jp nz,l21fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l215c
	ld a,(hl)
	or a
	jr z,l20fa
	cp #fe
	jr z,l2109
	cp #ff
	jr z,l2123
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l230c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l2198
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l2198
	and #7f
	ld (ix+#06),a
	jr l21eb
.l2198
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l21ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l21ac
	add a
	add a
	add a
	ld e,a
	ld hl,l2442
	add hl,de
	ld d,b
	ld e,c
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop af
	pop hl
	and #f0
	jr z,l21eb
	cp #f0
	jp z,l22a0
	cp #d0
	jp z,l22bc
	cp #b0
	jp z,l22c4
	cp #80
	jp nc,l22cc
	cp #10
	jr nz,l21eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l21eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l21fa
	ld a,(ix+#17)
	or a
	jr nz,l220e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l220e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l2239
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l230c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l2239
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,(ix+#18)
	ld h,(ix+#19)
	add hl,bc
	ld c,l
	ld a,(ix+#02)
	call l22e4
	ld c,h
	ld a,(ix+#03)
	call l22e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l2277
	and #0f
	sub (ix+#0a)
	jr nc,l226d
	xor a
.l226d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l22e4
.l2277
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld a,(hl)
	bit 7,a
	ret nz
	and #1f
	ld b,(ix+#0b)
	ld c,a
	or a
	ld a,b
	jr z,l2294
	ld b,a
	ld a,c
	ld (l20cf),a
	ld a,b
	sub #40
.l2294
	ld (l229b),a
	ld a,(l20c0)
.l229b equ $ + 1
	bit 0,a
	ld (l20c0),a
	ret
.l22a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l24c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l21eb
.l22bc
	inc hl
	ld a,(hl)
	ld (l20bb),a
	jp l21eb
.l22c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l21eb
.l22cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l20ed),a
	inc hl
	ld a,(hl)
	ld (l20de),a
	jp l21eb
.l22e4
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
	ret
.l2305 equ $ + 3
.l2304 equ $ + 2
.l2303 equ $ + 1
.l2302
	db #ff,#ff,#ff,#ff
.l2306
	dw l2862,l28c5,l2928
.l230c
	dw #0eee,#0e18,#0d4d,#0c8e
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
	db #00,#00,#00,#00,#00,#00,#00,#00
.l23da equ $ + 4
	db #00,#00,#00,#00,#8b,#29,#00,#01
	db #08,#10,#01,#00,#00,#00,#00,#df
.l23e8 equ $ + 2
	db #65,#28,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l23f6
	db #fd,#2b,#02,#03,#09,#10,#01,#00
.l2404 equ $ + 6
	db #00,#00,#00,#e7,#c8,#28,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2412 equ $ + 4
	db #00,#00,#00,#00,#0b,#30,#04,#05
	db #0a,#10,#01,#00,#00,#00,#00,#ef
.l2420 equ $ + 2
	db #2b,#29,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l2442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#24,#22,#25
	db #42,#25,#00,#00,#62,#25,#a2,#25
	db #c2,#25,#00,#00,#62,#25,#e2,#25
	db #c2,#25,#00,#00,#02,#26,#42,#26
	db #c2,#25,#08,#00,#62,#25,#62,#26
	db #c2,#25,#08,#18,#02,#26,#82,#26
	db #c2,#25,#00,#00,#02,#26,#a2,#26
	db #c2,#25,#08,#18,#62,#25,#c2,#26
	db #e2,#26,#00,#00,#02,#27,#42,#27
	db #62,#27,#00,#00,#82,#27,#c2,#27
	db #e2,#27,#00,#00,#94,#5c,#b8,#3d
	db #94,#5c,#b8,#3d,#62,#25,#02,#28
	db #22,#28,#00,#00,#be,#46,#de,#46
	db #b8,#3d,#dc,#1e,#b8,#3d,#b8,#3d
	db #b8,#3d,#dc,#1e,#b8,#3d,#b8,#3d
	db #b8,#3d,#dc,#1e,#b8,#3d,#b8,#3d
.l24c2 equ $ + 4
	db #dc,#1e,#00,#00,#42,#28,#dc,#1e
	db #dc,#1e,#dc,#1e,#dc,#1e,#dc,#1e
	db #dc,#1e,#dc,#1e,#dc,#1e,#dc,#1e
	db #dc,#1e,#dc,#1e,#dc,#1e,#dc,#1e
	db #dc,#1e,#dc,#1e,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0a,#0a,#09,#09
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#02,#00,#00,#00
	db #00,#00,#00,#00,#04,#06,#07,#09
	db #0c,#11,#17,#1d,#15,#10,#0c,#09
	db #06,#05,#04,#04,#03,#03,#03,#02
	db #02,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0a,#0e,#0d,#0c,#0b,#0a,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0d,#0c,#0c
	db #0b,#0b,#0a,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#08
	db #08,#07,#07,#06,#06,#05,#04,#03
	db #01,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#09,#08,#08,#08
	db #08,#07,#07,#07,#07,#06,#06,#06
	db #05,#04,#02,#00,#0c,#0e,#0e,#0d
	db #0c,#0b,#0a,#09,#09,#09,#0a,#0a
	db #0a,#09,#09,#09,#0a,#0a,#0a,#09
	db #09,#09,#0a,#0a,#0a,#09,#09,#09
	db #0a,#0a,#0a,#09,#0f,#0f,#0e,#0e
	db #0d,#0c,#0b,#0b,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#06,#05,#04,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0a,#0b,#0c,#8c
	db #8c,#8c,#8d,#8d,#8d,#8c,#8c,#8c
	db #8d,#8d,#8d,#8c,#8c,#8c,#8d,#8d
	db #8d,#8c,#8c,#8c,#8d,#8d,#8d,#8c
	db #8c,#8c,#8d,#8d,#0f,#0e,#0d,#0c
	db #0b,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#00,#00,#01
	db #80,#01,#00,#02,#80,#02,#00,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0c,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#2f,#00
	db #5e,#00,#8d,#00,#bc,#00,#eb,#00
	db #1a,#01,#49,#01,#78,#01,#a7,#01
	db #d6,#01,#05,#02,#34,#02,#63,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#06,#05,#04,#03
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#06,#0c,#12
	db #18,#1e,#04,#0a,#10,#16,#1c,#02
	db #08,#0e,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2862 equ $ + 4
	db #00,#00,#00,#00,#00,#8b,#29,#00
	db #f4,#29,#00,#f4,#29,#00,#5d,#2a
	db #00,#a8,#2a,#00,#02,#2b,#00,#02
	db #2b,#00,#5e,#2b,#00,#5e,#2b,#00
	db #5d,#2a,#00,#a8,#2a,#00,#02,#2b
	db #00,#02,#2b,#00,#5e,#2b,#00,#5e
	db #2b,#00,#85,#2b,#00,#85,#2b,#00
	db #a8,#2b,#00,#be,#2b,#00,#a8,#2b
	db #00,#be,#2b,#00,#dd,#2b,#00,#dd
	db #2b,#00,#f4,#29,#00,#85,#2b,#00
	db #85,#2b,#00,#a8,#2b,#00,#be,#2b
	db #00,#a8,#2b,#00,#be,#2b,#00,#dd
.l28c5 equ $ + 7
	db #2b,#00,#dd,#2b,#80,#62,#28,#00
	db #fd,#2b,#00,#59,#2c,#00,#59,#2c
	db #00,#da,#2c,#00,#59,#2c,#00,#5b
	db #2d,#00,#5b,#2d,#00,#dc,#2d,#00
	db #dc,#2d,#00,#da,#2c,#00,#59,#2c
	db #00,#5b,#2d,#00,#5b,#2d,#00,#dc
	db #2d,#00,#dc,#2d,#00,#5d,#2e,#00
	db #5d,#2e,#00,#de,#2e,#00,#5f,#2f
	db #00,#de,#2e,#00,#5f,#2f,#00,#e0
	db #2f,#00,#e0,#2f,#00,#59,#2c,#00
	db #5d,#2e,#00,#5d,#2e,#00,#de,#2e
	db #00,#5f,#2f,#00,#de,#2e,#00,#5f
	db #2f,#00,#e0,#2f,#00,#e0,#2f,#80
.l2928 equ $ + 2
	db #c5,#28,#00,#0b,#30,#00,#74,#30
	db #00,#74,#30,#00,#74,#30,#00,#74
	db #30,#00,#bc,#30,#00,#bc,#30,#00
	db #00,#31,#00,#00,#31,#00,#74,#30
	db #00,#74,#30,#00,#bc,#30,#00,#bc
	db #30,#00,#00,#31,#00,#00,#31,#00
	db #44,#31,#00,#44,#31,#00,#87,#31
	db #00,#cc,#31,#00,#87,#31,#00,#cc
	db #31,#00,#11,#32,#00,#11,#32,#00
	db #74,#30,#00,#44,#31,#00,#44,#31
	db #00,#87,#31,#00,#cc,#31,#00,#87
	db #31,#00,#cc,#31,#00,#11,#32,#00
	db #11,#32,#80,#28,#29,#00,#01,#c3
	db #12,#ca,#02,#c6,#02,#c8,#02,#c8
	db #02,#c6,#02,#ca,#02,#c3,#02,#41
	db #82,#c3,#02,#c8,#02,#46,#82,#48
	db #83,#ca,#02,#cb,#02,#cd,#02,#ca
	db #02,#c8,#02,#41,#82,#46,#82,#48
	db #83,#c6,#02,#48,#82,#c3,#02,#ca
	db #02,#c6,#02,#c8,#02,#c8,#02,#c6
	db #02,#ca,#02,#c3,#02,#41,#82,#c3
	db #02,#c8,#02,#46,#82,#48,#82,#cb
	db #02,#cb,#02,#ca,#02,#ca,#02,#c8
	db #02,#c8,#02,#c6,#02,#c1,#02,#c8
	db #02,#c8,#02,#c6,#02,#c5,#02,#c3
	db #02,#c1,#02,#be,#02,#ff,#00,#01
	db #c3,#12,#ca,#02,#c6,#02,#c8,#02
	db #c8,#02,#c6,#02,#ca,#02,#c3,#02
	db #41,#82,#c3,#02,#c8,#02,#46,#82
	db #48,#83,#ca,#02,#cb,#02,#cd,#02
	db #ca,#02,#c8,#02,#41,#82,#46,#82
	db #48,#83,#c6,#02,#48,#82,#c3,#02
	db #ca,#02,#c6,#02,#c8,#02,#c8,#02
	db #c6,#02,#ca,#02,#c3,#02,#41,#82
	db #c3,#02,#c8,#02,#46,#82,#48,#82
	db #cb,#02,#cb,#02,#ca,#02,#ca,#02
	db #c8,#02,#c8,#02,#c6,#02,#c1,#02
	db #c8,#02,#c8,#02,#c6,#02,#c5,#02
	db #c3,#02,#c1,#02,#be,#02,#ff,#46
	db #02,#15,#45,#02,#05,#43,#82,#c1
	db #05,#43,#83,#46,#82,#48,#82,#4a
	db #82,#41,#82,#46,#82,#4a,#82,#48
	db #85,#c3,#05,#cf,#05,#cd,#05,#cf
	db #05,#cd,#05,#4f,#82,#4a,#82,#48
	db #82,#46,#82,#43,#82,#46,#82,#48
	db #82,#ca,#05,#c1,#05,#cb,#05,#cb
	db #05,#4a,#82,#46,#82,#48,#82,#cf
	db #06,#52,#82,#cf,#06,#54,#82,#56
	db #82,#ff,#43,#02,#15,#4a,#02,#05
	db #46,#82,#43,#82,#be,#05,#c1,#05
	db #43,#82,#c8,#05,#c6,#05,#c8,#05
	db #ca,#05,#cd,#05,#cd,#05,#4b,#82
	db #4a,#82,#c6,#05,#48,#83,#c6,#05
	db #ca,#05,#c6,#05,#c1,#05,#c3,#05
	db #c1,#05,#3e,#82,#4a,#82,#48,#82
	db #46,#82,#43,#82,#45,#82,#46,#82
	db #48,#82,#4a,#82,#4b,#82,#4d,#82
	db #48,#82,#b7,#f4,#00,#b7,#04,#b9
	db #04,#b9,#04,#ba,#04,#ba,#04,#bc
	db #04,#bc,#04,#ff,#43,#02,#15,#4b
	db #02,#03,#41,#02,#05,#43,#82,#4b
	db #02,#03,#46,#02,#05,#4b,#02,#03
	db #41,#02,#05,#4a,#02,#03,#3e,#02
	db #05,#48,#02,#03,#3c,#02,#05,#4d
	db #04,#03,#48,#82,#3e,#02,#05,#46
	db #82,#4a,#82,#46,#02,#03,#43,#02
	db #05,#4a,#04,#03,#46,#84,#b7,#f2
	db #00,#c3,#02,#b9,#02,#c5,#02,#ba
	db #02,#c6,#02,#bc,#02,#c8,#02,#be
	db #02,#ca,#02,#bf,#02,#cb,#02,#c1
	db #02,#cd,#02,#c3,#02,#cf,#02,#ff
	db #c6,#12,#c6,#02,#43,#82,#3e,#82
	db #3a,#82,#37,#82,#4a,#06,#03,#48
	db #86,#46,#88,#bc,#f2,#00,#3e,#13
	db #02,#46,#02,#f4,#00,#46,#02,#04
	db #46,#82,#c8,#04,#4a,#87,#ff,#3a
	db #06,#16,#39,#02,#06,#3a,#86,#39
	db #82,#37,#86,#32,#82,#3c,#86,#3e
	db #82,#3a,#8e,#41,#86,#3f,#82,#3e
	db #82,#3a,#84,#3c,#82,#ba,#03,#bc
	db #03,#ff,#4a,#10,#16,#48,#10,#16
	db #4a,#06,#16,#48,#06,#16,#46,#04
	db #16,#3f,#08,#16,#3c,#08,#16,#ff
	db #3e,#0c,#16,#3f,#02,#16,#41,#0e
	db #16,#43,#02,#16,#45,#02,#16,#46
	db #04,#16,#48,#04,#16,#4a,#04,#16
	db #46,#04,#16,#3f,#10,#16,#ff,#3a
	db #10,#16,#3c,#10,#06,#3a,#8c,#46
	db #02,#04,#4b,#82,#37,#02,#06,#4b
	db #02,#04,#4a,#82,#46,#84,#41,#02
	db #03,#41,#02,#04,#46,#82,#ff,#2b
	db #02,#17,#2b,#02,#01,#37,#02,#07
	db #2b,#02,#01,#2b,#02,#07,#2b,#02
	db #01,#37,#02,#07,#2b,#02,#01,#2e
	db #02,#07,#2e,#02,#01,#3a,#02,#07
	db #2e,#02,#01,#27,#02,#07,#33,#02
	db #01,#29,#02,#07,#35,#82,#2b,#82
	db #2b,#02,#01,#37,#02,#07,#2b,#02
	db #01,#2b,#02,#07,#2b,#02,#01,#37
	db #02,#07,#2b,#02,#01,#2e,#02,#07
	db #2e,#02,#01,#3a,#02,#07,#2e,#02
	db #01,#27,#02,#07,#33,#82,#29,#82
	db #35,#82,#ff,#ba,#18,#ab,#07,#b7
	db #07,#ab,#01,#b7,#00,#b7,#01,#ab
	db #07,#b7,#07,#ba,#08,#ab,#07,#b7
	db #07,#ab,#01,#b7,#00,#b7,#01,#ab
	db #07,#b7,#07,#ba,#08,#ae,#07,#ba
	db #07,#ae,#01,#b7,#00,#ba,#01,#ae
	db #07,#ba,#07,#ba,#08,#a7,#07,#b3
	db #07,#a7,#01,#b7,#00,#a9,#01,#b5
	db #07,#a9,#07,#ba,#08,#ab,#07,#b7
	db #07,#ab,#01,#b7,#00,#b7,#01,#ab
	db #07,#b7,#07,#ba,#08,#ab,#07,#b7
	db #07,#ab,#01,#b7,#00,#b7,#01,#ab
	db #07,#b7,#07,#ba,#08,#ae,#07,#ba
	db #07,#ae,#01,#b7,#00,#ba,#01,#ae
	db #07,#ba,#07,#ba,#08,#a7,#07,#b3
	db #07,#a7,#01,#b7,#00,#a9,#01,#b7
	db #00,#b7,#00,#ff,#ba,#18,#ab,#07
	db #b7,#07,#ab,#01,#b7,#00,#b7,#01
	db #ab,#07,#b7,#07,#ba,#08,#ab,#07
	db #b7,#07,#ab,#01,#b7,#00,#b7,#01
	db #ab,#07,#b7,#07,#ba,#08,#ae,#07
	db #ba,#07,#ae,#01,#b7,#00,#ba,#01
	db #ae,#07,#ba,#07,#ba,#08,#a7,#07
	db #b3,#07,#a7,#01,#b7,#00,#a9,#01
	db #b5,#07,#a9,#07,#ba,#08,#ab,#07
	db #b7,#07,#ab,#01,#b7,#00,#b7,#01
	db #ab,#07,#b7,#07,#ba,#08,#ab,#07
	db #b7,#07,#ab,#01,#b7,#00,#b7,#01
	db #ab,#07,#b7,#07,#ba,#08,#ae,#07
	db #ba,#07,#ae,#01,#b7,#00,#ba,#01
	db #ae,#07,#ba,#07,#ba,#08,#a7,#07
	db #b3,#07,#a7,#01,#b7,#00,#a9,#01
	db #b7,#00,#b7,#00,#ff,#ba,#18,#a7
	db #07,#b3,#07,#a7,#01,#b7,#00,#b3
	db #01,#a7,#07,#b3,#07,#ba,#08,#a7
	db #07,#b3,#07,#a7,#01,#b7,#00,#b3
	db #01,#a7,#07,#b3,#07,#ba,#08,#a9
	db #07,#b5,#07,#a9,#01,#b7,#00,#b5
	db #01,#a9,#07,#b5,#07,#ba,#08,#a9
	db #07,#b5,#07,#a9,#01,#b7,#00,#b5
	db #01,#a9,#07,#b5,#07,#ba,#08,#ab
	db #07,#b7,#07,#ab,#01,#b7,#00,#b7
	db #01,#ab,#07,#b7,#07,#ba,#08,#ab
	db #07,#b7,#07,#ab,#01,#b7,#00,#b7
	db #01,#ab,#07,#b7,#07,#ba,#08,#ab
	db #07,#b7,#07,#ab,#01,#b7,#00,#b7
	db #01,#ab,#07,#b7,#07,#ba,#08,#ab
	db #07,#b7,#07,#ab,#01,#b7,#00,#b7
	db #01,#b7,#00,#b7,#00,#ff,#ba,#18
	db #ab,#07,#b7,#07,#ab,#01,#b7,#00
	db #b7,#01,#ab,#07,#b7,#07,#ba,#08
	db #a9,#07,#b5,#07,#a9,#01,#b7,#00
	db #b5,#01,#a9,#07,#b5,#07,#ba,#08
	db #a6,#07,#b2,#07,#a6,#01,#b7,#00
	db #b2,#01,#a6,#07,#b2,#07,#ba,#08
	db #a7,#07,#b3,#07,#a7,#01,#b7,#00
	db #b3,#01,#b7,#00,#b7,#00,#ba,#08
	db #ab,#07,#b7,#07,#ab,#01,#b7,#00
	db #b7,#01,#ab,#07,#b7,#07,#ba,#08
	db #a4,#01,#b0,#07,#a4,#07,#b7,#00
	db #b0,#01,#a4,#07,#b0,#07,#ba,#08
	db #a2,#07,#ae,#07,#a2,#01,#b7,#00
	db #ae,#01,#a2,#07,#ae,#07,#ba,#08
	db #a9,#07,#b5,#07,#a9,#01,#b7,#00
	db #a9,#01,#b7,#00,#b7,#00,#ff,#ba
	db #18,#ab,#07,#b7,#07,#ab,#01,#b7
	db #00,#b7,#01,#ab,#07,#b7,#07,#ba
	db #08,#ab,#07,#b7,#07,#ab,#01,#b7
	db #00,#b7,#01,#a9,#07,#b5,#07,#ba
	db #08,#a7,#07,#b3,#07,#a7,#01,#b7
	db #00,#b3,#01,#a7,#07,#b3,#07,#ba
	db #08,#a9,#07,#b5,#07,#a9,#01,#b7
	db #00,#b5,#01,#a9,#07,#b5,#07,#ba
	db #08,#ab,#07,#b7,#07,#ab,#01,#b7
	db #00,#ab,#01,#b7,#07,#ab,#07,#ba
	db #08,#ab,#07,#b7,#07,#ab,#01,#b7
	db #00,#b7,#01,#a9,#07,#b5,#07,#ba
	db #08,#a7,#07,#b3,#07,#a7,#01,#b7
	db #00,#b3,#01,#a7,#07,#b3,#07,#ba
	db #08,#a9,#07,#b5,#07,#a9,#01,#b7
	db #00,#a9,#01,#b7,#00,#b5,#00,#ff
	db #ba,#18,#a2,#07,#ae,#07,#a2,#01
	db #b7,#00,#a2,#01,#ae,#07,#a2,#07
	db #ba,#08,#a2,#07,#ae,#07,#a2,#01
	db #b7,#00,#a2,#01,#ae,#07,#a2,#07
	db #ba,#08,#a9,#07,#b5,#07,#a9,#01
	db #b7,#00,#a9,#01,#b5,#07,#a9,#07
	db #ba,#08,#a9,#07,#b5,#07,#a9,#01
	db #b7,#00,#a9,#01,#b5,#07,#a9,#07
	db #ba,#08,#ab,#07,#b7,#07,#ab,#01
	db #b7,#00,#ab,#01,#b7,#07,#ab,#07
	db #ba,#08,#ab,#07,#b7,#07,#ab,#01
	db #b7,#00,#ab,#01,#a9,#07,#b5,#07
	db #ba,#08,#a7,#07,#b3,#07,#a7,#01
	db #b7,#00,#a7,#01,#b3,#07,#a7,#07
	db #ba,#08,#a7,#01,#b3,#07,#a7,#07
	db #b7,#00,#b3,#01,#a9,#07,#b5,#07
	db #ff,#ba,#18,#a2,#07,#ae,#07,#a2
	db #01,#b7,#00,#a2,#01,#ae,#07,#a2
	db #07,#ba,#08,#a2,#07,#ae,#07,#a2
	db #01,#b7,#00,#a2,#01,#ae,#07,#a2
	db #07,#ba,#08,#a9,#07,#b5,#07,#a9
	db #01,#b7,#00,#a9,#01,#b5,#07,#a9
	db #07,#ba,#08,#a9,#07,#b5,#07,#a9
	db #01,#b7,#00,#a9,#01,#b5,#07,#a9
	db #07,#ba,#08,#ab,#07,#b7,#07,#ab
	db #01,#b7,#00,#ab,#01,#b7,#07,#ab
	db #07,#ba,#08,#ab,#07,#b7,#07,#ab
	db #01,#b7,#00,#ab,#01,#a9,#07,#b5
	db #07,#ba,#08,#a7,#07,#b3,#07,#a7
	db #01,#b7,#00,#a7,#01,#b3,#07,#a7
	db #07,#ba,#08,#a7,#07,#b3,#07,#a7
	db #01,#b7,#00,#b7,#00,#a9,#01,#b7
	db #00,#ff,#35,#04,#16,#3f,#04,#03
	db #3e,#84,#43,#82,#41,#88,#3c,#86
	db #3c,#82,#3e,#86,#3e,#84,#3a,#84
	db #3a,#82,#3f,#84,#3f,#82,#3e,#82
	db #3a,#84,#3c,#82,#b5,#02,#b2,#02
	db #b7,#09,#b7,#09,#ff,#c3,#12,#ca
	db #02,#c6,#02,#c8,#02,#c8,#02,#c6
	db #02,#ca,#02,#c3,#02,#41,#82,#c3
	db #02,#c8,#02,#46,#82,#48,#83,#ca
	db #02,#cb,#02,#cd,#02,#ca,#02,#c8
	db #02,#41,#82,#46,#82,#48,#83,#c6
	db #02,#48,#82,#c3,#02,#ca,#02,#c6
	db #02,#c8,#02,#c8,#02,#c6,#02,#ca
	db #02,#c3,#02,#41,#82,#c3,#02,#c8
	db #02,#46,#82,#48,#82,#cb,#02,#cb
	db #02,#ca,#02,#ca,#02,#c8,#02,#c8
	db #02,#c6,#02,#c1,#02,#c8,#02,#c8
	db #02,#c6,#02,#c5,#02,#c3,#02,#c1
	db #02,#be,#02,#c6,#02,#ff,#3a,#02
	db #f3,#00,#39,#02,#03,#37,#82,#35
	db #82,#3f,#82,#3e,#82,#3a,#82,#35
	db #82,#3a,#82,#3c,#82,#3e,#82,#43
	db #82,#41,#82,#bc,#03,#be,#03,#3a
	db #82,#39,#82,#3a,#82,#35,#82,#3a
	db #82,#39,#82,#3a,#82,#35,#82,#3a
	db #82,#35,#82,#33,#82,#32,#82,#37
	db #82,#3a,#82,#3c,#82,#35,#82,#b2
	db #03,#ba,#03,#35,#82,#ff,#3c,#02
	db #f3,#00,#3c,#02,#03,#3c,#82,#3a
	db #82,#3c,#82,#3c,#82,#3c,#82,#3a
	db #82,#39,#82,#39,#82,#39,#82,#37
	db #82,#39,#82,#39,#82,#39,#82,#37
	db #82,#3a,#82,#37,#82,#32,#82,#37
	db #82,#3a,#82,#37,#82,#32,#82,#37
	db #82,#3a,#82,#37,#82,#32,#82,#37
	db #82,#3a,#82,#37,#82,#32,#82,#37
	db #82,#ff,#3a,#02,#f3,#00,#39,#02
	db #03,#3a,#82,#37,#82,#3c,#82,#3a
	db #82,#3c,#82,#39,#82,#35,#82,#32
	db #82,#37,#82,#39,#82,#3a,#82,#39
	db #82,#3a,#82,#37,#82,#3a,#82,#39
	db #82,#3a,#82,#37,#82,#35,#82,#32
	db #82,#30,#82,#32,#82,#33,#82,#35
	db #82,#37,#82,#3a,#82,#39,#82,#3a
	db #82,#3c,#82,#35,#82,#ff,#4a,#02
	db #13,#43,#02,#03,#4b,#82,#4d,#82
	db #48,#82,#41,#82,#4a,#82,#41,#82
	db #46,#82,#3f,#82,#3a,#82,#46,#82
	db #48,#82,#41,#82,#48,#82,#4d,#82
	db #4a,#82,#43,#82,#4b,#82,#4d,#82
	db #48,#82,#41,#82,#4a,#82,#41,#82
	db #46,#82,#3f,#82,#3a,#82,#46,#82
	db #48,#82,#41,#82,#48,#82,#4d,#82
	db #ff,#be,#13,#be,#03,#3c,#82,#3e
	db #82,#bc,#03,#3e,#82,#be,#03,#3c
	db #82,#3e,#82,#3a,#82,#3c,#82,#3a
	db #82,#bc,#03,#be,#03,#ba,#03,#3c
	db #87,#ba,#03,#bc,#03,#be,#03,#be
	db #03,#3c,#82,#3e,#82,#bc,#03,#3e
	db #82,#be,#03,#3c,#82,#3e,#82,#3a
	db #82,#3f,#82,#3e,#82,#3a,#82,#33
	db #88,#ba,#04,#bc,#04,#ff,#be,#13
	db #be,#03,#3c,#82,#3e,#82,#bc,#03
	db #3e,#82,#be,#03,#3c,#82,#3e,#82
	db #3a,#82,#3c,#82,#3a,#82,#bc,#03
	db #be,#03,#ba,#03,#3c,#87,#ba,#03
	db #bc,#03,#be,#03,#be,#03,#3c,#82
	db #3e,#82,#bc,#03,#3e,#82,#be,#03
	db #3c,#82,#3e,#82,#3a,#82,#3f,#82
	db #3e,#82,#3a,#82,#33,#88,#ba,#03
	db #bc,#03,#ff,#32,#04,#1b,#32,#02
	db #0b,#33,#06,#06,#33,#04,#0b,#33
	db #88,#29,#84,#29,#82,#37,#02,#06
	db #37,#04,#0b,#37,#8a,#37,#82,#27
	db #04,#06,#27,#04,#0b,#2e,#02,#03
	db #3a,#02,#04,#41,#82,#46,#02,#03
	db #ff
;
.music_info
	db "Bebetes Show (1993)(Crack'n'Rom)()",0
	db "ST-Module",0

	read "music_end.asm"