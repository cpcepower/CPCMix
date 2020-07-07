; Music of Bad Mag Issue 2.1 - Music L (1993)(Beng)()(ST-Module)
; Ripped by Megachur the 17/02/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BADMAG2L.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #2400

	read "music_header.asm"

	jp l240b
	jp l2493
	jp l2477
	ld h,(hl)
	inc b
;
.init_music
.l240b
;
	ld b,#03
	ld ix,l27da
	ld iy,l2706
	ld de,#001c
.l2418
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
	djnz l2418
	ld a,#05
	ld (l24bb),a
	ld a,d
	ld (l24cf),a
	inc a
	ld (l24b6),a
	ld a,#38
	ld (l24c0),a
	ld a,#ff
	ld (l2702),a
	ld (l2703),a
	ld (l2704),a
	ld (l2705),a
	ld a,#0c
	ld c,d
	call l26e4
	ld a,#0d
	ld c,d
	jp l26e4
;
.stop_music
.l2477
;
	ld a,#07
	ld c,#3f
	call l26e4
	ld a,#08
	ld c,#00
	call l26e4
	ld a,#09
	ld c,#00
	call l26e4
	ld a,#0a
	ld c,#00
	jp l26e4
;
.play_music
.l2493
;
	ld hl,l24b6
	dec (hl)
	ld ix,l27da
	ld bc,l27e8
	call l2549
	ld ix,l27f6
	ld bc,l2804
	call l2549
	ld ix,l2812
	ld bc,l2820
	call l2549
.l24b6 equ $ + 1
	ld a,#00
	or a
	jr nz,l24bf
.l24bb equ $ + 1
	ld a,#00
	ld (l24b6),a
.l24c0 equ $ + 1
.l24bf
	ld a,#00
	ld hl,l2703
	cp (hl)
	jr z,l24ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l26e4
.l24cf equ $ + 1
.l24ce
	ld a,#00
	ld hl,l2702
	cp (hl)
	jr z,l24dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l26e4
.l24de equ $ + 1
.l24dd
	ld a,#00
	ld hl,l2704
	cp (hl)
	jr z,l24ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l26e4
.l24ed equ $ + 1
.l24ec
	ld a,#00
	ld hl,l2705
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l26e4
.l24fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l25fa
.l2509
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
	jp l26e4
.l2523
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l2538
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l2538
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l255c
.l2549
	ld a,(l24b6)
	or a
	jp nz,l25fa
	dec (ix+#06)
	jp nz,l25fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l255c
	ld a,(hl)
	or a
	jr z,l24fa
	cp #fe
	jr z,l2509
	cp #ff
	jr z,l2523
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l270c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l2598
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l2598
	and #7f
	ld (ix+#06),a
	jr l25eb
.l2598
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l25ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l25ac
	add a
	add a
	add a
	ld e,a
	ld hl,l2842
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
	jr z,l25eb
	cp #f0
	jp z,l26a0
	cp #d0
	jp z,l26bc
	cp #b0
	jp z,l26c4
	cp #80
	jp nc,l26cc
	cp #10
	jr nz,l25eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l25eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l25fa
	ld a,(ix+#17)
	or a
	jr nz,l260e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l260e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l2639
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l270c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l2639
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
	call l26e4
	ld c,h
	ld a,(ix+#03)
	call l26e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l2677
	and #0f
	sub (ix+#0a)
	jr nc,l266d
	xor a
.l266d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l26e4
.l2677
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
	jr z,l2694
	ld b,a
	ld a,c
	ld (l24cf),a
	ld a,b
	sub #40
.l2694
	ld (l269b),a
	ld a,(l24c0)
.l269b equ $ + 1
	bit 0,a
	ld (l24c0),a
	ret
.l26a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l28c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l25eb
.l26bc
	inc hl
	ld a,(hl)
	ld (l24bb),a
	jp l25eb
.l26c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l25eb
.l26cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l24ed),a
	inc hl
	ld a,(hl)
	ld (l24de),a
	jp l25eb
.l26e4
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
.l2706 equ $ + 4
.l2705 equ $ + 3
.l2704 equ $ + 2
.l2703 equ $ + 1
.l2702
	db #ff,#ff,#ff,#ff,#a2,#2b,#bd,#2b
	db #d8,#2b
.l270c
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
	db #0f,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l27da
	db #00,#00,#00,#01,#08,#00,#00,#00
	db #00,#00,#00,#df
.l27e8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	nop
	nop
	nop
	nop
	nop
	nop
.l27f6
	nop
	nop
	ld (bc),a
	inc bc
	add hl,bc
	nop
	nop
	nop
	nop
	nop
	nop
	rst #20
	nop
	nop
.l2804
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l2812
	nop
	nop
	inc b
	dec b
	ld a,(bc)
	nop
	nop
	nop
	nop
	nop
	nop
	rst #28
	nop
	nop
.l2820
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld d,e
	ld d,h
	dec l
	ld c,l
	ld l,a
	ld h,h
	ld (hl),l
	ld l,h
	ld h,l
.l2842 equ $ + 1
	ld l,#e2
	db #28,#22,#29,#42,#29,#00,#00
	db #dc,#22,#21,#71,#30,#43,#4e,#4f
	db #25,#76,#21,#d7,#fc,#24,#00,#ff
	db #db,#22,#fd,#b4,#4c,#81,#23,#56
	db #62,#29,#a2,#29,#c2,#29,#00,#00
	db #62,#29,#e2,#29,#c2,#29,#00,#00
	db #e4,#5e,#2b,#29,#dc,#0f,#b0,#18
	db #02,#2a,#42,#2a,#62,#2a,#08,#18
	db #62,#29,#82,#2a,#c2,#29,#00,#00
	db #a2,#2a,#e2,#2a,#62,#2a,#08,#18
	db #02,#2b,#42,#2b,#62,#2a,#00,#00
	db #b8,#45,#dc,#22,#b8,#45,#dc,#22
	db #1e,#4e,#b8,#45,#3e,#4e,#dc,#22
	db #b8,#45,#b8,#45,#b8,#45,#dc,#22
	db #b8,#45,#b8,#45,#b8,#45,#dc,#22
	db #b8,#45,#b8,#45,#dc,#22,#30,#00
.l28c2
	db #3c,#23,#62,#2b,#82,#2b,#cc,#23
	db #fc,#23,#2c,#24,#5c,#24,#8c,#24
	db #bc,#24,#ec,#24,#1c,#25,#4c,#25
	db #7c,#25,#ac,#25,#dc,#25,#fc,#25
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0a,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#80,#00,#00,#00,#00,#00
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
	db #0f,#0e,#0d,#0c,#0b,#80,#80,#80
	db #80,#80,#80,#80,#80,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0f,#0e,#0d,#0c,#0b,#0a,#0a
	db #0a,#0a,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #0e,#0d,#0c,#0c,#0b,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0d,#0c,#0b,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#07,#06,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #0e,#0d,#0c,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#ff,#ff,#fe,#ff
	db #fe,#ff,#fd,#ff,#fd,#ff,#fc,#ff
	db #fc,#ff,#fb,#ff,#fb,#ff,#fa,#ff
	db #fa,#ff,#f9,#ff,#f9,#ff,#f9,#ff
	db #f9,#ff,#f9,#ff,#f9,#ff,#f9,#ff
	db #f9,#ff,#f9,#ff,#f9,#ff,#f9,#ff
	db #f9,#ff,#f9,#ff,#f9,#ff,#f9,#ff
	db #0c,#0c,#0c,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #00,#f3,#2b,#00,#36,#2c,#00,#78
	db #2c,#00,#c5,#2c,#00,#78,#2c,#00
	db #12,#2d,#00,#78,#2c,#00,#12,#2d
	db #80,#a8,#2b,#00,#5f,#2d,#00,#62
	db #2d,#00,#65,#2d,#00,#a7,#2d,#00
	db #65,#2d,#00,#a7,#2d,#00,#65,#2d
	db #00,#a7,#2d,#80,#c3,#2b,#00,#e9
	db #2d,#00,#ed,#2d,#00,#f5,#2d,#00
	db #f8,#2d,#00,#fb,#2d,#00,#1e,#2e
	db #00,#fb,#2d,#00,#1e,#2e,#80,#de
	db #2b,#52,#02,#18,#4b,#02,#08,#4e
	db #82,#4b,#82,#52,#82,#4b,#82,#4e
	db #82,#4b,#82,#52,#82,#4b,#82,#4e
	db #82,#4b,#82,#52,#82,#4b,#82,#4e
	db #82,#4b,#82,#52,#82,#4b,#82,#4e
	db #82,#4b,#82,#52,#82,#4b,#82,#4e
	db #82,#4b,#82,#52,#82,#4b,#82,#4e
	db #82,#4b,#82,#52,#82,#4b,#82,#4e
	db #82,#4b,#82,#ff,#53,#02,#08,#4b
	db #82,#4e,#82,#4b,#82,#53,#82,#4b
	db #82,#4e,#82,#4b,#82,#53,#82,#4b
	db #82,#4e,#82,#4b,#82,#53,#82,#4b
	db #82,#4e,#82,#4b,#82,#52,#82,#49
	db #82,#4e,#82,#49,#82,#52,#82,#49
	db #82,#4e,#82,#49,#82,#50,#82,#49
	db #82,#4d,#82,#49,#82,#50,#82,#49
	db #82,#4d,#82,#49,#82,#ff,#27,#04
	db #14,#3f,#02,#f5,#01,#27,#04,#14
	db #27,#02,#14,#3f,#02,#f5,#01,#3f
	db #02,#05,#27,#04,#14,#3f,#02,#f5
	db #01,#27,#04,#14,#27,#82,#3f,#02
	db #f5,#01,#27,#02,#14,#27,#84,#3f
	db #02,#f5,#01,#27,#04,#14,#27,#82
	db #3f,#02,#f5,#01,#3f,#02,#05,#27
	db #04,#14,#3f,#02,#f5,#01,#27,#04
	db #14,#27,#82,#3f,#02,#f5,#01,#27
	db #02,#14,#ff,#2f,#04,#14,#47,#02
	db #f5,#02,#2f,#04,#14,#2f,#82,#47
	db #02,#f5,#02,#47,#02,#05,#2f,#04
	db #14,#47,#02,#f5,#02,#2f,#04,#14
	db #2f,#82,#47,#02,#f5,#02,#47,#02
	db #05,#2a,#04,#14,#42,#02,#f5,#02
	db #2a,#04,#14,#2a,#82,#42,#02,#f5
	db #02,#2a,#02,#14,#25,#04,#14,#3d
	db #02,#f5,#02,#25,#04,#14,#25,#82
	db #3d,#02,#f5,#02,#3d,#02,#05,#ff
	db #2f,#04,#14,#47,#02,#f5,#02,#2f
	db #04,#14,#2f,#82,#47,#02,#f5,#02
	db #47,#02,#05,#2f,#04,#14,#47,#02
	db #f5,#02,#2f,#04,#14,#2f,#82,#47
	db #02,#f5,#02,#47,#02,#05,#2a,#04
	db #14,#42,#02,#f5,#02,#2a,#04,#14
	db #2a,#82,#42,#02,#f5,#02,#2a,#02
	db #14,#25,#04,#14,#3d,#02,#f5,#02
	db #25,#04,#14,#25,#82,#3d,#02,#f5
	db #02,#3d,#02,#05,#ff,#fe,#40,#ff
	db #00,#40,#ff,#52,#02,#08,#4b,#82
	db #4e,#82,#4b,#82,#52,#82,#4b,#82
	db #4e,#82,#4b,#82,#52,#82,#4b,#82
	db #4e,#82,#4b,#82,#52,#82,#4b,#82
	db #4e,#82,#4b,#82,#52,#82,#4b,#82
	db #4e,#82,#4b,#82,#52,#82,#4b,#82
	db #4e,#82,#4b,#82,#52,#82,#4b,#82
	db #4e,#82,#4b,#82,#52,#82,#4b,#82
	db #4e,#82,#4b,#82,#ff,#53,#02,#08
	db #4b,#82,#4e,#82,#4b,#82,#53,#82
	db #4b,#82,#4e,#82,#4b,#82,#53,#82
	db #4b,#82,#4e,#82,#4b,#82,#53,#82
	db #4b,#82,#4e,#82,#4b,#82,#52,#82
	db #49,#82,#4e,#82,#49,#82,#52,#82
	db #49,#82,#4e,#82,#49,#82,#50,#82
	db #49,#82,#4d,#82,#49,#82,#50,#82
	db #49,#82,#4d,#82,#49,#82,#ff,#27
	db #40,#17,#ff,#2f,#20,#07,#2a,#90
	db #25,#90,#ff,#fe,#40,#ff,#00,#40
	db #ff,#46,#08,#09,#44,#84,#46,#82
	db #3f,#88,#3f,#82,#42,#84,#c4,#09
	db #44,#03,#0a,#46,#08,#09,#44,#84
	db #49,#82,#46,#8a,#42,#84,#c4,#09
	db #44,#03,#0a,#ff,#46,#08,#09,#44
	db #84,#46,#82,#3d,#88,#3d,#82,#42
	db #84,#c4,#09,#44,#03,#0a,#46,#06
	db #09,#47,#86,#49,#84,#46,#86,#44
	db #86,#42,#82,#44,#82,#ff
;
.music_info
	db "Bad Mag Issue 2.1 - Music L (1993)(Beng)()",0
	db "ST-Module",0

	read "music_end.asm"
