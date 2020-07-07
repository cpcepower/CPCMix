; Music of Bad Mag Issue 2.1 - Music J (1993)(Beng)()(ST-Module)
; Ripped by Megachur the 17/02/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BADMAG2J.BIN"
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
	ld a,#06
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
	db #ff,#ff,#ff,#ff,#c2,#2b,#f5,#2b
	db #28,#2c
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
	ld l,#dc
	db #22,#dc,#22,#dc,#22,#00,#00
	db #e2,#28,#22,#29,#42,#29,#00,#00
	db #62,#29,#a2,#29,#c2,#29,#00,#00
	db #db,#22,#fd,#b4,#4c,#81,#23,#56
	db #e2,#29,#22,#2a,#42,#2a,#00,#00
	db #da,#22,#a6,#23,#74,#21,#50,#30
	db #62,#2a,#a2,#2a,#c2,#2a,#00,#00
	db #e2,#29,#e2,#2a,#c2,#29,#00,#00
	db #e2,#22,#8b,#3b,#51,#21,#f0,#30
	db #e5,#f8,#b8,#45,#94,#68,#b8,#45
	db #02,#2b,#42,#2b,#62,#2b,#00,#00
	db #b8,#45,#0c,#23,#18,#46,#62,#2b
	db #5e,#4e,#a8,#46,#d8,#46,#2c,#24
	db #38,#47,#68,#47,#98,#47,#ec,#24
	db #f8,#47,#28,#48,#58,#48,#ac,#25
	db #b8,#48,#d8,#48,#5c,#23,#00,#01
.l28c2
	db #5c,#24,#82,#2b,#5c,#25,#dc,#25
	db #dc,#26,#dc,#22,#a2,#2b,#dc,#22
	db #dc,#22,#dc,#22,#dc,#22,#dc,#22
	db #dc,#22,#dc,#22,#dc,#22,#dc,#22
	db #00,#00,#80,#00,#40,#01,#a0,#01
	db #40,#02,#e8,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0d,#0d,#0b,#0b,#09,#08
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #38,#00,#60,#00,#b0,#00,#18,#01
	db #48,#01,#80,#01,#c8,#01,#10,#02
	db #58,#02,#b0,#02,#00,#00,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0c,#0b,#09,#07
	db #06,#03,#01,#00,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#06,#06,#05,#04,#04,#03,#02
	db #01,#00,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#07,#07,#06
	db #05,#04,#03,#02,#01,#00,#00,#00
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
	db #0a,#0a,#09,#09,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #04,#06,#07,#09,#0c,#11,#17,#1d
	db #15,#10,#0c,#09,#06,#05,#04,#04
	db #03,#03,#03,#02,#02,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#18,#24,#00,#18,#24,#00,#18
	db #24,#00,#18,#24,#00,#18,#24,#00
	db #18,#24,#00,#18,#24,#00,#18,#24
	db #00,#18,#24,#00,#18,#24,#00,#18
	db #00,#0c,#f4,#00,#0c,#f4,#00,#0c
	db #f4,#00,#0c,#f4,#00,#0c,#f4,#00
	db #0c,#f4,#00,#0c,#f4,#00,#0c,#f4
	db #00,#0c,#f4,#00,#0c,#f4,#00,#0c
	db #00,#5b,#2c,#00,#5e,#2c,#00,#98
	db #2c,#00,#98,#2c,#00,#98,#2c,#00
	db #98,#2c,#00,#98,#2c,#00,#98,#2c
	db #00,#98,#2c,#00,#98,#2c,#00,#fc
	db #2c,#00,#ff,#2c,#00,#49,#2d,#00
	db #ca,#2d,#00,#ca,#2d,#00,#4b,#2e
	db #80,#c2,#2b,#00,#aa,#2e,#00,#ad
	db #2e,#00,#b0,#2e,#00,#b0,#2e,#00
	db #b0,#2e,#00,#b0,#2e,#00,#b0,#2e
	db #00,#b0,#2e,#00,#b0,#2e,#00,#b0
	db #2e,#00,#e4,#2e,#00,#1f,#2f,#00
	db #e4,#2e,#00,#5a,#2f,#00,#5a,#2f
	db #00,#98,#2f,#80,#f5,#2b,#00,#19
	db #30,#00,#4d,#30,#00,#81,#30,#00
	db #81,#30,#00,#b2,#30,#00,#b2,#30
	db #00,#81,#30,#00,#81,#30,#00,#ea
	db #30,#00,#ea,#30,#00,#10,#31,#00
	db #4b,#31,#00,#86,#31,#00,#89,#31
	db #00,#89,#31,#00,#c4,#31,#80,#28
	db #2c,#00,#40,#ff,#6b,#04,#04,#6b
	db #84,#6b,#84,#6b,#84,#6b,#84,#6b
	db #84,#6b,#84,#6b,#84,#6b,#84,#6b
	db #84,#6b,#84,#6b,#84,#c5,#01,#c5
	db #01,#c5,#01,#c5,#01,#c1,#01,#c1
	db #01,#c1,#01,#c1,#01,#be,#01,#be
	db #01,#be,#01,#be,#01,#ba,#01,#ba
	db #01,#ba,#01,#ba,#01,#ff,#46,#02
	db #01,#46,#02,#04,#46,#02,#06,#c6
	db #04,#c6,#01,#46,#02,#04,#46,#02
	db #01,#46,#02,#06,#46,#02,#01,#46
	db #82,#46,#02,#04,#46,#02,#06,#ba
	db #01,#ba,#01,#46,#02,#04,#46,#02
	db #01,#c6,#04,#c6,#06,#46,#02,#04
	db #46,#02,#01,#46,#02,#04,#46,#02
	db #06,#46,#02,#04,#46,#82,#46,#02
	db #01,#46,#02,#06,#46,#02,#01,#c6
	db #01,#c6,#01,#46,#82,#46,#02,#06
	db #46,#02,#04,#c6,#04,#c6,#01,#c6
	db #04,#c6,#01,#46,#02,#06,#46,#02
	db #01,#ff,#00,#40,#ff,#6b,#04,#04
	db #6b,#84,#6b,#84,#6b,#84,#6b,#84
	db #6b,#84,#6b,#84,#6b,#84,#6b,#82
	db #6b,#82,#6b,#82,#6b,#82,#eb,#04
	db #eb,#04,#eb,#04,#eb,#04,#eb,#04
	db #eb,#04,#eb,#04,#eb,#04,#c5,#01
	db #c5,#01,#c5,#01,#c5,#01,#c1,#01
	db #c1,#01,#c1,#01,#c1,#01,#be,#01
	db #be,#01,#be,#01,#be,#01,#ba,#01
	db #ba,#01,#ba,#01,#ba,#01,#ff,#ba
	db #01,#c6,#04,#c6,#04,#c6,#04,#ba
	db #06,#c6,#04,#ba,#01,#c6,#04,#c6
	db #04,#ba,#01,#c6,#04,#c6,#04,#ba
	db #06,#c6,#04,#ba,#06,#ba,#06,#ba
	db #01,#c6,#04,#ba,#01,#ba,#01,#ba
	db #06,#ba,#01,#ba,#01,#c6,#04,#ba
	db #01,#ba,#06,#ba,#01,#c6,#04,#ba
	db #06,#c6,#04,#c6,#04,#c6,#04,#ba
	db #01,#c6,#04,#ba,#01,#ba,#01,#ba
	db #06,#ba,#01,#ba,#01,#c6,#04,#ba
	db #01,#c6,#04,#c6,#04,#c6,#04,#ba
	db #06,#c6,#04,#ba,#06,#ba,#06,#ba
	db #01,#c6,#04,#ba,#01,#ba,#01,#ba
	db #06,#ba,#01,#c6,#04,#c6,#04,#ba
	db #01,#ba,#06,#ba,#01,#c6,#04,#ba
	db #06,#ba,#01,#c6,#04,#c6,#04,#ff
	db #ba,#01,#c6,#04,#c6,#04,#c6,#04
	db #ba,#06,#c6,#04,#ba,#01,#c6,#04
	db #c6,#04,#ba,#01,#c6,#04,#c6,#04
	db #ba,#06,#c6,#04,#ba,#06,#ba,#06
	db #ba,#01,#c6,#04,#ba,#01,#ba,#01
	db #ba,#06,#ba,#01,#ba,#01,#c6,#04
	db #ba,#01,#ba,#06,#ba,#01,#c6,#04
	db #ba,#06,#c6,#04,#c6,#04,#c6,#04
	db #ba,#01,#c6,#04,#ba,#01,#ba,#01
	db #ba,#06,#ba,#01,#ba,#01,#c6,#04
	db #ba,#01,#c6,#04,#c6,#04,#c6,#04
	db #ba,#06,#c6,#04,#ba,#06,#ba,#06
	db #ba,#01,#c6,#04,#ba,#01,#ba,#01
	db #ba,#06,#ba,#01,#c6,#04,#c6,#04
	db #ba,#01,#ba,#06,#ba,#01,#c6,#04
	db #ba,#06,#ba,#01,#c6,#04,#c6,#04
	db #ff,#ba,#01,#c6,#04,#c6,#04,#c6
	db #04,#ba,#06,#c6,#04,#ba,#01,#c6
	db #04,#c6,#04,#ba,#01,#c6,#04,#c6
	db #04,#ba,#06,#c6,#04,#ba,#06,#ba
	db #06,#ba,#01,#c6,#04,#ba,#01,#ba
	db #01,#ba,#06,#ba,#01,#ba,#01,#c6
	db #04,#ba,#01,#ba,#06,#ba,#01,#c6
	db #04,#ba,#06,#c6,#04,#c6,#04,#c6
	db #04,#3a,#02,#01,#3a,#82,#3a,#82
	db #3a,#84,#3a,#84,#3a,#84,#3a,#84
	db #3a,#82,#3a,#02,#0a,#3a,#82,#ba
	db #0a,#ba,#0a,#ba,#0a,#ba,#0a,#ff
	db #00,#40,#ff,#00,#40,#ff,#24,#04
	db #07,#24,#83,#22,#82,#a2,#07,#1f
	db #82,#22,#82,#1f,#82,#24,#84,#24
	db #85,#1f,#82,#9f,#07,#22,#82,#24
	db #82,#20,#84,#20,#83,#22,#82,#a2
	db #07,#1f,#82,#22,#82,#24,#82,#24
	db #89,#1f,#82,#9f,#07,#22,#82,#24
	db #82,#ff,#a4,#02,#a4,#02,#24,#82
	db #27,#82,#24,#84,#29,#82,#2b,#84
	db #24,#82,#a4,#02,#27,#83,#24,#82
	db #22,#82,#22,#82,#24,#84,#a4,#02
	db #a4,#02,#a4,#02,#a4,#02,#27,#82
	db #24,#84,#29,#82,#2b,#84,#24,#82
	db #a4,#02,#27,#83,#24,#82,#22,#82
	db #22,#82,#24,#84,#ff,#a4,#02,#a4
	db #02,#24,#82,#27,#82,#24,#84,#29
	db #82,#2b,#84,#24,#82,#a4,#02,#27
	db #83,#24,#82,#22,#82,#22,#82,#24
	db #84,#a4,#02,#a4,#02,#a4,#02,#a4
	db #02,#27,#82,#24,#84,#29,#82,#2b
	db #84,#24,#82,#a4,#02,#27,#83,#24
	db #82,#22,#82,#22,#82,#24,#84,#ff
	db #a4,#02,#a4,#02,#24,#82,#27,#82
	db #24,#84,#29,#82,#2b,#84,#24,#82
	db #a4,#02,#27,#83,#24,#82,#22,#82
	db #22,#82,#24,#84,#a4,#02,#a4,#02
	db #a4,#02,#a4,#02,#27,#82,#24,#84
	db #29,#82,#2b,#84,#24,#82,#a4,#02
	db #27,#83,#24,#82,#22,#82,#22,#82
	db #24,#82,#3a,#02,#0a,#ff,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#ff,#24
	db #04,#07,#24,#83,#22,#82,#a2,#07
	db #1f,#82,#22,#82,#1f,#82,#24,#84
	db #24,#85,#1f,#82,#9f,#07,#22,#82
	db #24,#82,#20,#84,#20,#83,#22,#82
	db #a2,#07,#1f,#82,#22,#82,#24,#82
	db #24,#89,#1f,#82,#9f,#07,#22,#82
	db #24,#82,#ff,#24,#04,#07,#24,#83
	db #22,#82,#a2,#07,#1f,#82,#22,#82
	db #1f,#82,#24,#84,#24,#85,#1f,#82
	db #9f,#07,#22,#82,#24,#82,#20,#84
	db #20,#83,#22,#82,#a2,#07,#1f,#82
	db #22,#82,#24,#82,#24,#89,#22,#82
	db #9f,#07,#1d,#82,#1b,#82,#ff,#3c
	db #04,#17,#3f,#03,#07,#3c,#82,#bc
	db #07,#41,#82,#3c,#82,#3a,#82,#3c
	db #84,#43,#83,#3c,#82,#bc,#07,#44
	db #82,#43,#82,#3f,#82,#3c,#82,#43
	db #82,#48,#82,#bc,#07,#3a,#82,#ba
	db #07,#37,#82,#3e,#82,#3c,#92,#ff
	db #43,#04,#f7,#06,#43,#03,#07,#46
	db #82,#46,#82,#c6,#07,#c5,#07,#c6
	db #07,#45,#84,#43,#82,#43,#83,#46
	db #82,#c6,#07,#45,#88,#3f,#82,#3f
	db #82,#3f,#82,#bf,#07,#41,#82,#41
	db #83,#41,#84,#43,#82,#43,#82,#43
	db #82,#c1,#07,#43,#82,#43,#85,#ff
	db #48,#06,#f7,#01,#46,#06,#07,#43
	db #86,#41,#86,#3f,#84,#3c,#84,#3a
	db #02,#11,#3a,#02,#01,#3a,#82,#ba
	db #01,#3a,#82,#ba,#01,#3a,#82,#3a
	db #82,#3a,#82,#3a,#90,#ff,#b0,#02
	db #b0,#02,#30,#82,#33,#82,#30,#84
	db #35,#82,#37,#84,#30,#82,#b0,#02
	db #33,#83,#30,#82,#2e,#82,#2e,#82
	db #30,#84,#b0,#02,#b0,#02,#b0,#02
	db #b0,#02,#33,#82,#30,#84,#35,#82
	db #37,#84,#30,#82,#b0,#02,#33,#83
	db #30,#82,#2e,#82,#2e,#82,#30,#84
	db #ff,#b0,#02,#b0,#02,#30,#82,#33
	db #82,#30,#84,#35,#82,#37,#84,#30
	db #82,#b0,#02,#33,#83,#30,#82,#2e
	db #82,#2e,#82,#30,#84,#b0,#02,#b0
	db #02,#b0,#02,#b0,#02,#33,#82,#30
	db #84,#35,#82,#37,#84,#30,#82,#b0
	db #02,#33,#83,#30,#82,#2e,#82,#2e
	db #82,#30,#84,#ff,#00,#40,#ff,#3c
	db #04,#07,#3a,#82,#3c,#84,#3c,#82
	db #3a,#82,#3c,#82,#3f,#82,#3f,#82
	db #bc,#07,#3f,#82,#41,#82,#41,#83
	db #43,#82,#3f,#82,#3c,#84,#3a,#82
	db #3c,#84,#3c,#82,#3a,#82,#3c,#84
	db #3c,#82,#3f,#82,#bc,#07,#41,#82
	db #c1,#07,#3f,#82,#3e,#82,#3a,#02
	db #0a,#ff,#46,#02,#04,#46,#82,#46
	db #02,#06,#c6,#04,#c6,#01,#46,#02
	db #04,#46,#02,#01,#46,#02,#06,#46
	db #02,#01,#46,#82,#46,#02,#04,#46
	db #02,#06,#ba,#01,#ba,#01,#46,#02
	db #04,#46,#02,#01,#c6,#04,#c6,#06
	db #46,#1a,#04,#2e,#02,#0a,#2e,#82
	db #ae,#0a,#ae,#0a,#ae,#0a,#ae,#0a
	db #ff
;
.music_info
	db "Bad Mag Issue 2.1 - Music J (1993)(Beng)()",0
	db "ST-Module",0

	read "music_end.asm"
