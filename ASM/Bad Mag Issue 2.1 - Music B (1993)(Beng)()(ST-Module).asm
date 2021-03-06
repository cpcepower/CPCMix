; Music of Bad Mag Issue 2.1 - Music B (1993)(Beng)()(ST-Module)
; Ripped by Megachur the 17/02/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BADMAG2B.BIN"
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
	ld a,#0c
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
	db #ff,#ff,#ff,#ff,#62,#2e,#bc,#2e
	db #16,#2f
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
	db #62,#29,#a2,#29,#c2,#29,#00,#00
	db #e2,#29,#22,#2a,#c2,#29,#00,#00
	db #42,#2a,#82,#2a,#c2,#29,#18,#08
	db #62,#29,#a2,#2a,#c2,#29,#1d,#03
	db #c2,#2a,#02,#2b,#c2,#29,#00,#00
	db #22,#2b,#02,#2b,#c2,#29,#00,#00
	db #e2,#28,#62,#2b,#42,#29,#00,#00
	db #82,#2b,#02,#2b,#c2,#29,#00,#00
	db #62,#29,#c2,#2b,#c2,#29,#1d,#03
	db #62,#29,#e2,#2b,#c2,#29,#00,#00
	db #62,#29,#02,#2c,#c2,#29,#00,#00
	db #22,#2c,#62,#2c,#c2,#29,#00,#00
	db #62,#29,#82,#2c,#c2,#29,#00,#00
	db #a2,#2c,#62,#2c,#c2,#29,#00,#00
	db #e2,#2c,#62,#2c,#c2,#29,#00,#00
.l28c2
	db #22,#2d,#42,#2d,#62,#2d,#82,#2d
	db #a2,#2d,#c2,#2d,#e2,#2d,#02,#2e
	db #22,#2e,#42,#2e,#dc,#22,#dc,#22
	db #dc,#22,#dc,#22,#dc,#22,#dc,#22
	db #30,#02,#30,#03,#d0,#04,#10,#06
	db #10,#05,#90,#05,#c0,#04,#70,#05
	db #d0,#04,#10,#06,#30,#02,#30,#03
	db #d0,#04,#10,#06,#10,#05,#90,#05
	db #f0,#04,#70,#05,#00,#05,#90,#05
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0c,#0d,#0b,#0c,#0a,#0b,#09
	db #0a,#08,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#02,#03,#05,#07,#09,#0c,#0f
	db #16,#1f,#01,#02,#03,#05,#07,#09
	db #0c,#0f,#15,#1f,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#0b,#0b,#0a,#0a,#09,#09,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#07,#07,#06,#06,#05
	db #05,#04,#04,#03,#03,#02,#02,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #30,#02,#30,#03,#d0,#04,#10,#06
	db #10,#05,#90,#05,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#ff,#ff,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0d,#0d,#0d,#0d,#0d,#0d,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #f9,#ff,#eb,#ff,#df,#ff,#d6,#ff
	db #d6,#ff,#d6,#ff,#d6,#ff,#d6,#ff
	db #d6,#ff,#d6,#ff,#d6,#ff,#d6,#ff
	db #d6,#ff,#d6,#ff,#d6,#ff,#d6,#ff
	db #d6,#ff,#d6,#ff,#d6,#ff,#d6,#ff
	db #d6,#ff,#d6,#ff,#d6,#ff,#d6,#ff
	db #d6,#ff,#d6,#ff,#d6,#ff,#d6,#ff
	db #d6,#ff,#d6,#ff,#d6,#ff,#d6,#ff
	db #0d,#0d,#0d,#0d,#0d,#0d,#0c,#0c
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #fe,#ff,#fc,#ff,#fa,#ff,#f8,#ff
	db #f6,#ff,#f4,#ff,#f4,#ff,#f4,#ff
	db #f4,#ff,#f4,#ff,#f4,#ff,#f4,#ff
	db #f4,#ff,#f4,#ff,#f4,#ff,#f4,#ff
	db #f4,#ff,#f4,#ff,#f4,#ff,#f4,#ff
	db #f4,#ff,#f4,#ff,#f4,#ff,#f4,#ff
	db #f4,#ff,#f4,#ff,#f4,#ff,#f4,#ff
	db #f4,#ff,#f4,#ff,#f4,#ff,#f4,#ff
	db #0f,#0d,#0e,#0c,#0d,#0b,#0c,#0a
	db #0b,#09,#0d,#0b,#0c,#0a,#0b,#09
	db #0a,#08,#09,#07,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#fd,#ff,#fc,#ff
	db #fb,#ff,#fa,#ff,#f9,#ff,#f8,#ff
	db #f7,#ff,#f7,#ff,#f7,#ff,#f7,#ff
	db #f7,#ff,#f7,#ff,#f7,#ff,#f7,#ff
	db #f7,#ff,#f7,#ff,#f7,#ff,#f7,#ff
	db #f7,#ff,#f7,#ff,#f7,#ff,#f7,#ff
	db #f7,#ff,#f7,#ff,#f7,#ff,#f7,#ff
	db #f7,#ff,#f7,#ff,#f7,#ff,#f7,#ff
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0f,#0f,#0e,#0e,#0e,#0d,#0d,#0d
	db #0c,#0c,#0c,#0b,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0e,#0e,#0d,#0d,#0d,#0d
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#09,#09,#09,#09
	db #08,#08,#08,#08,#07,#07,#07,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0e,#0e
	db #0e,#0e,#0e,#0e,#0d,#0d,#0d,#0d
	db #0d,#0d,#0c,#0c,#0c,#0c,#0c,#0b
	db #0b,#0b,#0b,#0b,#0a,#0a,#0a,#0a
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#09,#09,#08,#08,#07
	db #07,#06,#06,#05,#05,#04,#04,#03
	db #04,#00,#fe,#ff,#f8,#ff,#f2,#ff
	db #ec,#ff,#e6,#ff,#e0,#ff,#da,#ff
	db #d4,#ff,#ce,#ff,#c8,#ff,#c2,#ff
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#0a,#00,#10,#00,#16,#00
	db #1c,#00,#22,#00,#28,#00,#2e,#00
	db #34,#00,#3a,#00,#40,#00,#46,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #00,#02,#07,#00,#02,#07,#00,#02
	db #07,#00,#02,#07,#00,#02,#07,#00
	db #02,#07,#00,#02,#07,#00,#02,#07
	db #00,#02,#07,#00,#02,#07,#00,#02
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #00,#03,#08,#00,#03,#08,#00,#03
	db #08,#00,#03,#08,#00,#03,#08,#00
	db #03,#08,#00,#03,#08,#00,#03,#08
	db #00,#03,#08,#00,#03,#08,#00,#03
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #00,#04,#09,#00,#04,#09,#00,#04
	db #09,#00,#04,#09,#00,#04,#09,#00
	db #04,#09,#00,#04,#09,#00,#04,#09
	db #00,#04,#09,#00,#04,#09,#00,#04
	db #00,#05,#07,#00,#05,#07,#00,#05
	db #07,#00,#05,#07,#00,#05,#07,#00
	db #05,#07,#00,#05,#07,#00,#05,#07
	db #00,#05,#07,#00,#05,#07,#00,#05
	db #00,#05,#08,#00,#05,#08,#00,#05
	db #08,#00,#05,#08,#00,#05,#08,#00
	db #05,#08,#00,#05,#08,#00,#05,#08
	db #00,#05,#08,#00,#05,#08,#00,#05
	db #00,#05,#09,#00,#05,#09,#00,#05
	db #09,#00,#05,#09,#00,#05,#09,#00
	db #05,#09,#00,#05,#09,#00,#05,#09
	db #00,#05,#09,#00,#05,#09,#00,#05
	db #00,#05,#0a,#00,#05,#0a,#00,#05
	db #0a,#00,#05,#0a,#00,#05,#0a,#00
	db #05,#0a,#00,#05,#0a,#00,#05,#0a
	db #00,#05,#0a,#00,#05,#0a,#00,#05
	db #00,#07,#0c,#00,#07,#0c,#00,#07
	db #0c,#00,#07,#0c,#00,#07,#0c,#00
	db #07,#0c,#00,#07,#0c,#00,#07,#0c
	db #00,#07,#0c,#00,#07,#0c,#00,#07
	db #00,#70,#2f,#00,#f2,#2f,#00,#70
	db #2f,#00,#73,#30,#00,#f4,#30,#00
	db #b5,#31,#00,#f4,#30,#00,#76,#32
	db #00,#f4,#30,#00,#76,#32,#00,#37
	db #33,#00,#c0,#33,#00,#c0,#33,#00
	db #71,#34,#00,#b3,#34,#00,#b3,#34
	db #00,#b3,#34,#00,#b3,#34,#00,#f7
	db #34,#00,#13,#35,#00,#95,#35,#00
	db #95,#35,#00,#95,#35,#00,#95,#35
	db #00,#95,#35,#00,#95,#35,#00,#95
	db #35,#00,#95,#35,#00,#95,#35,#80
	db #62,#2e,#00,#17,#36,#00,#28,#36
	db #00,#17,#36,#00,#39,#36,#00,#4a
	db #36,#00,#8e,#36,#00,#cb,#36,#00
	db #ed,#36,#00,#cb,#36,#00,#ed,#36
	db #00,#1f,#37,#00,#39,#37,#00,#39
	db #37,#00,#61,#37,#00,#15,#38,#00
	db #84,#37,#00,#84,#37,#00,#84,#37
	db #00,#a6,#38,#00,#c6,#38,#00,#c9
	db #38,#00,#f5,#38,#00,#c9,#38,#00
	db #f5,#38,#00,#41,#39,#00,#c9,#38
	db #00,#f5,#38,#00,#41,#39,#00,#c3
	db #39,#80,#bc,#2e,#00,#f6,#39,#00
	db #3b,#3a,#00,#f6,#39,#00,#72,#3a
	db #00,#9f,#3a,#00,#0a,#3b,#00,#75
	db #3b,#00,#f7,#3b,#00,#75,#3b,#00
	db #f7,#3b,#00,#78,#3c,#00,#dd,#3c
	db #00,#dd,#3c,#00,#5e,#3d,#00,#97
	db #3d,#00,#61,#3d,#00,#61,#3d,#00
	db #9a,#3d,#00,#d4,#3d,#00,#02,#3e
	db #00,#0d,#3e,#00,#02,#3e,#00,#0d
	db #3e,#00,#02,#3e,#00,#02,#3e,#00
	db #0d,#3e,#00,#02,#3e,#00,#02,#3e
	db #00,#02,#3e,#80,#16,#2f,#a9,#d1
	db #0c,#ae,#01,#b1,#01,#a9,#01,#ae
	db #01,#b1,#01,#a9,#01,#ae,#01,#b1
	db #01,#a9,#01,#ae,#01,#b1,#01,#a9
	db #01,#ae,#01,#b1,#01,#a9,#01,#a9
	db #01,#ae,#01,#b0,#01,#a9,#01,#ae
	db #01,#b0,#01,#a9,#01,#ae,#01,#b0
	db #01,#a9,#01,#ae,#01,#b0,#01,#a9
	db #01,#ae,#01,#b0,#01,#a9,#01,#a9
	db #01,#ac,#01,#b0,#01,#a9,#01,#ac
	db #01,#b0,#01,#a9,#01,#ac,#01,#b0
	db #01,#a9,#01,#ac,#01,#b0,#01,#a9
	db #01,#ac,#01,#b0,#01,#ac,#01,#a9
	db #01,#ae,#01,#b1,#01,#a9,#01,#ae
	db #01,#b1,#01,#a9,#01,#ae,#01,#b1
	db #01,#a9,#01,#ae,#01,#b1,#01,#a9
	db #01,#ae,#01,#b1,#01,#a9,#01,#ff
	db #aa,#01,#ae,#01,#b1,#01,#aa,#01
	db #ae,#01,#b1,#01,#aa,#01,#ae,#01
	db #b1,#01,#aa,#01,#ae,#01,#b1,#01
	db #aa,#01,#ae,#01,#b1,#01,#aa,#01
	db #aa,#01,#ae,#01,#b3,#01,#aa,#01
	db #ae,#01,#b3,#01,#aa,#01,#ae,#01
	db #b3,#01,#aa,#01,#ae,#01,#b3,#01
	db #aa,#01,#ae,#01,#b3,#01,#aa,#01
	db #a9,#01,#ae,#01,#b1,#01,#a9,#01
	db #ae,#01,#b1,#01,#a9,#01,#ae,#01
	db #b1,#01,#a9,#01,#ae,#01,#b1,#01
	db #a9,#01,#ae,#01,#b1,#01,#a9,#01
	db #a9,#01,#ad,#01,#b0,#01,#a9,#01
	db #ad,#01,#b0,#01,#a9,#01,#ad,#01
	db #b0,#01,#a9,#01,#ad,#01,#b0,#01
	db #a9,#01,#ad,#01,#b0,#01,#ad,#01
	db #ff,#aa,#01,#ae,#01,#b1,#01,#aa
	db #01,#ae,#01,#b1,#01,#aa,#01,#ae
	db #01,#b1,#01,#aa,#01,#ae,#01,#b1
	db #01,#aa,#01,#ae,#01,#b1,#01,#aa
	db #01,#aa,#01,#ae,#01,#b3,#01,#aa
	db #01,#ae,#01,#b3,#01,#aa,#01,#ae
	db #01,#b3,#01,#aa,#01,#ae,#01,#b3
	db #01,#aa,#01,#ae,#01,#b3,#01,#aa
	db #01,#a9,#01,#ae,#01,#b1,#01,#a9
	db #01,#ae,#01,#b1,#01,#a9,#01,#ae
	db #01,#b1,#01,#a9,#01,#ae,#01,#b1
	db #01,#a9,#01,#ae,#01,#b1,#01,#a9
	db #01,#a9,#01,#ad,#01,#b0,#01,#a9
	db #01,#ad,#01,#b0,#01,#a9,#01,#ad
	db #01,#b0,#01,#a9,#01,#ad,#01,#b0
	db #01,#a9,#01,#ad,#01,#b0,#01,#ad
	db #01,#ff,#ae,#f9,#01,#a9,#f9,#06
	db #ae,#f9,#01,#a9,#f9,#06,#a2,#f9
	db #01,#a9,#f9,#06,#a2,#f9,#01,#a9
	db #f9,#06,#ae,#f9,#01,#a9,#f9,#06
	db #ae,#f9,#01,#a9,#f9,#06,#a2,#f9
	db #01,#a9,#f9,#06,#a2,#f9,#01,#a9
	db #f9,#06,#b0,#f9,#08,#a9,#f9,#05
	db #b0,#f9,#08,#a9,#f9,#05,#a4,#f9
	db #08,#a9,#f9,#05,#a4,#f9,#08,#a9
	db #f9,#05,#b0,#f9,#08,#a9,#f9,#05
	db #b0,#f9,#08,#a9,#f9,#05,#a4,#f9
	db #08,#a9,#f9,#05,#a4,#f9,#08,#a9
	db #f9,#05,#b0,#f9,#06,#a9,#f9,#01
	db #b0,#f9,#06,#a9,#f9,#01,#a4,#f9
	db #06,#a9,#f9,#01,#a4,#f9,#06,#a9
	db #f9,#01,#b0,#f9,#06,#a9,#f9,#01
	db #b0,#f9,#06,#a9,#f9,#01,#a4,#f9
	db #06,#a9,#f9,#01,#a4,#f9,#06,#a9
	db #f9,#01,#ae,#f9,#01,#a9,#f9,#06
	db #ae,#f9,#01,#a9,#f9,#06,#a2,#f9
	db #01,#a9,#f9,#06,#a2,#f9,#01,#a9
	db #f9,#06,#ae,#f9,#01,#a9,#f9,#06
	db #ae,#f9,#01,#a9,#f9,#06,#a2,#f9
	db #01,#a9,#f9,#06,#a2,#f9,#01,#a9
	db #f9,#06,#ff,#b1,#f9,#07,#aa,#f9
	db #03,#b1,#f9,#07,#aa,#f9,#03,#a5
	db #f9,#07,#aa,#f9,#03,#a5,#f9,#07
	db #aa,#f9,#03,#b1,#f9,#07,#aa,#f9
	db #03,#b1,#f9,#07,#aa,#f9,#03,#a5
	db #f9,#07,#aa,#f9,#03,#a5,#f9,#07
	db #aa,#f9,#03,#b3,#f9,#01,#aa,#f9
	db #04,#b3,#f9,#01,#aa,#f9,#04,#a7
	db #f9,#01,#aa,#f9,#04,#a7,#f9,#01
	db #aa,#f9,#04,#b3,#f9,#01,#aa,#f9
	db #04,#b3,#f9,#01,#aa,#f9,#04,#a7
	db #f9,#01,#aa,#f9,#04,#a7,#f9,#01
	db #aa,#f9,#04,#b1,#f9,#04,#a9,#f9
	db #06,#b1,#f9,#04,#a9,#f9,#06,#a5
	db #f9,#04,#a9,#f9,#06,#a5,#f9,#04
	db #a9,#f9,#06,#b1,#f9,#04,#a9,#f9
	db #06,#b1,#f9,#04,#a9,#f9,#06,#a5
	db #f9,#04,#a9,#f9,#06,#a5,#f9,#04
	db #a9,#f9,#06,#b0,#f9,#07,#a9,#f9
	db #03,#b0,#f9,#07,#a9,#f9,#03,#a4
	db #f9,#07,#a9,#f9,#03,#a4,#f9,#07
	db #a9,#f9,#03,#b0,#f9,#07,#a9,#f9
	db #03,#b0,#f9,#07,#a9,#f9,#03,#a4
	db #f9,#07,#a9,#f9,#03,#a4,#f9,#07
	db #a9,#f9,#03,#ff,#b1,#f9,#07,#aa
	db #f9,#03,#b1,#f9,#07,#aa,#f9,#03
	db #a5,#f9,#07,#aa,#f9,#03,#a5,#f9
	db #07,#aa,#f9,#03,#b1,#f9,#07,#aa
	db #f9,#03,#b1,#f9,#07,#aa,#f9,#03
	db #a5,#f9,#07,#aa,#f9,#03,#a5,#f9
	db #07,#aa,#f9,#03,#b3,#f9,#01,#aa
	db #f9,#04,#b3,#f9,#01,#aa,#f9,#04
	db #a7,#f9,#01,#aa,#f9,#04,#a7,#f9
	db #01,#aa,#f9,#04,#b3,#f9,#01,#aa
	db #f9,#04,#b3,#f9,#01,#aa,#f9,#04
	db #a7,#f9,#01,#aa,#f9,#04,#a7,#f9
	db #01,#aa,#f9,#04,#b1,#f9,#04,#a9
	db #f9,#06,#b1,#f9,#04,#a9,#f9,#06
	db #a5,#f9,#04,#a9,#f9,#06,#a5,#f9
	db #04,#a9,#f9,#06,#b1,#f9,#04,#a9
	db #f9,#06,#b1,#f9,#04,#a9,#f9,#06
	db #a5,#f9,#04,#a9,#f9,#06,#a5,#f9
	db #04,#a9,#f9,#06,#b0,#f9,#07,#a9
	db #f9,#03,#b0,#f9,#07,#a9,#f9,#03
	db #a4,#f9,#07,#a9,#f9,#03,#a4,#f9
	db #07,#a9,#f9,#03,#b0,#f9,#07,#a9
	db #f9,#03,#b0,#f9,#07,#a9,#f9,#03
	db #a4,#f9,#07,#a9,#f9,#03,#a4,#f9
	db #07,#a9,#f9,#03,#ff,#a2,#1d,#a5
	db #0d,#a9,#0d,#ae,#0d,#b1,#0d,#ae
	db #0d,#b1,#0d,#b5,#0d,#ba,#0d,#ba
	db #bd,#00,#ba,#bd,#01,#ba,#bd,#02
	db #ba,#bd,#03,#ba,#bd,#04,#3a,#04
	db #bd,#05,#ba,#07,#ba,#b7,#03,#ba
	db #b7,#05,#ba,#b7,#00,#ba,#b7,#03
	db #ba,#b7,#05,#ba,#02,#ba,#b2,#03
	db #ba,#b2,#00,#ba,#b2,#03,#ba,#07
	db #ba,#b7,#03,#ba,#b7,#05,#ba,#b7
	db #07,#3a,#02,#b7,#09,#3a,#02,#b7
	db #0b,#3a,#02,#b7,#00,#3a,#02,#b7
	db #03,#3a,#02,#b7,#05,#3a,#02,#b7
	db #00,#3a,#02,#b7,#03,#3a,#02,#b7
	db #05,#3a,#02,#02,#3a,#02,#b2,#03
	db #3a,#02,#b2,#00,#3a,#02,#b2,#03
	db #3a,#02,#07,#3a,#82,#3a,#02,#b7
	db #03,#3a,#02,#b7,#05,#ff,#ba,#02
	db #ba,#b2,#03,#ba,#b2,#05,#ba,#b2
	db #00,#ba,#07,#ba,#b7,#03,#ba,#b7
	db #05,#ba,#b7,#00,#ba,#02,#ba,#b2
	db #03,#ba,#b2,#00,#ba,#b2,#03,#ba
	db #07,#ba,#b7,#03,#ba,#b7,#05,#ba
	db #b7,#07,#ba,#02,#ba,#b2,#03,#ba
	db #b2,#05,#ba,#b2,#00,#ba,#07,#ba
	db #b7,#03,#ba,#b7,#05,#ba,#b7,#00
	db #ba,#02,#ba,#b2,#03,#ba,#b2,#00
	db #ba,#b2,#03,#ba,#07,#ba,#b7,#03
	db #ba,#b7,#05,#ba,#b7,#07,#ba,#02
	db #ba,#b2,#03,#ba,#b2,#05,#ba,#b2
	db #00,#ba,#07,#ba,#b7,#03,#ba,#b7
	db #05,#ba,#b7,#00,#ba,#02,#ba,#b2
	db #03,#ba,#b2,#00,#ba,#b2,#03,#ba
	db #07,#ba,#b7,#03,#ba,#b7,#05,#ba
	db #b7,#07,#ba,#02,#ba,#b2,#03,#ba
	db #b2,#05,#ba,#b2,#00,#ba,#07,#ba
	db #b7,#03,#ba,#b7,#05,#ba,#b7,#00
	db #ba,#02,#ba,#b2,#03,#ba,#b2,#00
	db #ba,#b2,#03,#ba,#07,#ba,#b7,#03
	db #ba,#b7,#05,#ba,#b7,#07,#ff,#3a
	db #02,#d7,#06,#3a,#02,#b7,#03,#3a
	db #02,#b7,#05,#3a,#02,#b7,#07,#3a
	db #02,#b7,#09,#3a,#02,#b7,#0b,#3a
	db #02,#b7,#0d,#3a,#02,#b7,#0f,#3a
	db #84,#3a,#04,#b0,#00,#3a,#04,#00
	db #3a,#04,#02,#3a,#04,#00,#3a,#84
	db #3a,#04,#02,#3a,#04,#00,#3a,#84
	db #3a,#04,#02,#3a,#04,#00,#3a,#84
	db #ff,#3a,#02,#d2,#0c,#3a,#02,#00
	db #3a,#82,#3a,#02,#02,#3a,#02,#00
	db #3a,#82,#3a,#02,#02,#3a,#02,#00
	db #3a,#82,#3a,#02,#02,#3a,#02,#00
	db #3a,#82,#3a,#02,#02,#3a,#02,#00
	db #3a,#82,#3a,#02,#02,#3a,#04,#d0
	db #06,#3a,#04,#00,#3a,#04,#02,#3a
	db #04,#00,#3a,#84,#3a,#04,#02,#3a
	db #04,#00,#3a,#84,#ff,#3a,#02,#d2
	db #0c,#3a,#02,#00,#3a,#82,#3a,#02
	db #02,#3a,#02,#00,#3a,#82,#3a,#02
	db #02,#3a,#02,#00,#3a,#82,#3a,#ae
	db #ff,#a2,#bb,#01,#a5,#0b,#a9,#0b
	db #a5,#0b,#ae,#0b,#a9,#0b,#a5,#0b
	db #a9,#0b,#a2,#0b,#a5,#0b,#a9,#0b
	db #a5,#0b,#ae,#0b,#a9,#0b,#a5,#0b
	db #a9,#0b,#a2,#0b,#a5,#0b,#a9,#0b
	db #a5,#0b,#ae,#0b,#a9,#0b,#a5,#0b
	db #a9,#0b,#a2,#0b,#a5,#0b,#a9,#0b
	db #a5,#0b,#ae,#0b,#a9,#0b,#a5,#0b
	db #a9,#0b,#a2,#0b,#a5,#0b,#a9,#0b
	db #a5,#0b,#ae,#0b,#a9,#0b,#a5,#0b
	db #a9,#0b,#a2,#0b,#a5,#0b,#a9,#0b
	db #a5,#0b,#ae,#0b,#a9,#0b,#a5,#0b
	db #a9,#0b,#a0,#0b,#a4,#0b,#a7,#0b
	db #a4,#0b,#ac,#0b,#a7,#0b,#a4,#0b
	db #a7,#0b,#a0,#0b,#a4,#0b,#a7,#0b
	db #a4,#0b,#ac,#0b,#a7,#0b,#a4,#0b
	db #a7,#0b,#ff,#a2,#bb,#01,#a5,#0b
	db #a9,#0b,#a5,#0b,#ae,#0b,#a9,#0b
	db #a5,#0b,#a9,#0b,#a2,#0b,#a5,#0b
	db #a9,#0b,#a5,#0b,#ae,#0b,#a9,#0b
	db #a5,#0b,#a9,#0b,#a0,#0b,#a4,#0b
	db #a7,#0b,#a4,#0b,#ac,#0b,#a7,#0b
	db #a4,#0b,#a7,#0b,#a0,#0b,#a4,#0b
	db #a7,#0b,#a4,#0b,#ac,#0b,#a7,#0b
	db #a4,#0b,#a7,#0b,#a2,#0b,#a5,#0b
	db #a9,#0b,#a5,#0b,#ae,#0b,#a9,#0b
	db #a5,#0b,#a9,#0b,#a2,#0b,#a5,#0b
	db #a9,#0b,#a5,#0b,#ae,#0b,#a9,#0b
	db #a5,#0b,#a9,#0b,#a0,#0b,#a4,#0b
	db #a7,#0b,#a4,#0b,#ac,#0b,#a7,#0b
	db #a4,#0b,#a7,#0b,#a0,#0b,#a4,#0b
	db #a7,#0b,#a4,#0b,#ac,#0b,#a7,#0b
	db #a4,#0b,#a7,#0b,#ff,#2e,#10,#f4
	db #01,#2e,#10,#f4,#00,#2c,#10,#f4
	db #04,#2e,#10,#f4,#01,#ff,#2e,#10
	db #f4,#02,#2e,#10,#f4,#06,#2e,#10
	db #f4,#01,#30,#10,#f4,#07,#ff,#2e
	db #10,#f4,#02,#2e,#10,#f4,#06,#2e
	db #10,#f4,#01,#35,#10,#f4,#03,#ff
	db #3a,#06,#13,#bc,#03,#bd,#03,#3f
	db #82,#bd,#03,#bc,#03,#bd,#03,#bc
	db #03,#3a,#82,#3c,#88,#38,#86,#35
	db #82,#38,#86,#ba,#03,#bc,#03,#3d
	db #82,#bc,#03,#ba,#03,#bc,#03,#ba
	db #03,#38,#82,#3a,#88,#ba,#b3,#00
	db #ba,#b3,#01,#ba,#b3,#03,#ba,#b3
	db #04,#ba,#b3,#06,#ba,#b3,#09,#3a
	db #02,#b3,#0f,#ff,#fe,#02,#3c,#03
	db #06,#3c,#03,#03,#3f,#83,#3d,#83
	db #3c,#82,#3c,#02,#b3,#03,#3c,#03
	db #06,#3c,#03,#03,#3f,#83,#41,#83
	db #42,#82,#40,#0c,#08,#c1,#03,#c2
	db #03,#c1,#03,#bf,#03,#40,#08,#08
	db #bf,#03,#bd,#43,#bc,#43,#ba,#43
	db #bc,#43,#ba,#43,#b9,#43,#b5,#43
	db #ff,#22,#0c,#4c,#a5,#4c,#a4,#4c
	db #a2,#4c,#a4,#4c,#20,#8c,#a5,#4c
	db #a4,#4c,#a2,#4c,#a4,#4c,#20,#8c
	db #a5,#4c,#a4,#4c,#a2,#4c,#a4,#4c
	db #22,#90,#ff,#1e,#08,#4c,#25,#82
	db #24,#82,#22,#82,#20,#82,#1e,#88
	db #25,#82,#24,#82,#22,#82,#20,#82
	db #1d,#8c,#9d,#4c,#9e,#4c,#9d,#4c
	db #9b,#4c,#1d,#88,#9d,#4c,#9e,#4c
	db #9d,#4c,#9b,#4c,#9d,#4c,#9e,#4c
	db #a0,#4c,#9d,#4c,#ff,#16,#07,#dc
	db #0c,#96,#0e,#97,#0e,#98,#3e,#99
	db #3e,#9a,#3e,#9b,#3e,#9c,#3e,#9d
	db #3e,#9e,#3e,#20,#30,#3c,#ff,#16
	db #18,#dc,#0c,#97,#0e,#98,#3e,#99
	db #3e,#9a,#3e,#9b,#3e,#9c,#3e,#9d
	db #3e,#9e,#3e,#20,#18,#3c,#9f,#0f
	db #9e,#0f,#9d,#3f,#9c,#3f,#9b,#3f
	db #9a,#3f,#99,#3f,#98,#3f,#ff,#16
	db #02,#bc,#00,#16,#02,#bc,#01,#16
	db #02,#bc,#03,#16,#02,#bc,#04,#16
	db #02,#bc,#06,#16,#02,#bc,#09,#16
	db #02,#bc,#0f,#16,#82,#16,#82,#16
	db #ae,#ff,#a2,#bb,#01,#a2,#bb,#04
	db #a9,#bb,#01,#a7,#bb,#01,#a9,#bb
	db #01,#a7,#bb,#01,#9e,#bb,#01,#9e
	db #bb,#04,#a5,#bb,#01,#a4,#bb,#01
	db #a5,#bb,#01,#a4,#bb,#01,#a2,#bb
	db #01,#a2,#bb,#04,#a9,#bb,#01,#a7
	db #bb,#01,#a9,#bb,#01,#a7,#bb,#01
	db #9e,#bb,#01,#9e,#bb,#04,#a5,#bb
	db #01,#a5,#bb,#04,#a4,#bb,#01,#a4
	db #bb,#04,#a2,#bb,#01,#a2,#bb,#04
	db #a9,#bb,#01,#a7,#bb,#01,#a9,#bb
	db #01,#a7,#bb,#01,#9e,#bb,#01,#9e
	db #bb,#04,#25,#02,#bb,#01,#24,#82
	db #25,#82,#24,#82,#22,#82,#22,#02
	db #bb,#04,#29,#02,#bb,#01,#27,#82
	db #29,#82,#27,#82,#25,#82,#25,#02
	db #bb,#04,#24,#02,#bb,#01,#24,#02
	db #bb,#04,#20,#02,#bb,#01,#20,#02
	db #bb,#04,#ff,#a2,#bb,#01,#a2,#bb
	db #04,#a9,#bb,#01,#a7,#bb,#01,#a9
	db #bb,#01,#a7,#bb,#01,#9e,#bb,#01
	db #9e,#bb,#04,#a5,#bb,#01,#a4,#bb
	db #01,#a5,#bb,#01,#a4,#bb,#01,#a2
	db #bb,#01,#a2,#bb,#04,#a9,#bb,#01
	db #a7,#bb,#01,#a9,#bb,#01,#a7,#bb
	db #01,#9e,#bb,#01,#9e,#bb,#04,#a5
	db #bb,#01,#a5,#bb,#04,#a4,#bb,#01
	db #a4,#bb,#04,#a2,#bb,#01,#a2,#bb
	db #04,#a9,#bb,#01,#a7,#bb,#01,#a9
	db #bb,#01,#a7,#bb,#01,#9e,#bb,#01
	db #9e,#bb,#04,#25,#02,#bb,#01,#24
	db #82,#25,#82,#24,#82,#22,#82,#22
	db #02,#bb,#04,#29,#02,#bb,#01,#27
	db #82,#29,#82,#27,#82,#25,#82,#25
	db #02,#bb,#04,#24,#02,#bb,#01,#24
	db #02,#bb,#04,#20,#02,#bb,#01,#20
	db #02,#bb,#04,#ff,#a2,#0b,#a2,#bb
	db #00,#a2,#bb,#01,#a2,#bb,#03,#a2
	db #bb,#04,#a2,#bb,#06,#a2,#bb,#09
	db #a2,#bb,#0f,#a2,#bb,#0f,#a2,#bb
	db #0f,#22,#b6,#ff,#fe,#40,#ff,#46
	db #08,#b3,#01,#44,#03,#03,#41,#83
	db #3f,#82,#44,#88,#3f,#86,#44,#82
	db #46,#88,#4d,#83,#4b,#83,#49,#82
	db #4b,#86,#c9,#03,#c8,#03,#49,#82
	db #c8,#03,#c6,#03,#48,#82,#c6,#03
	db #c4,#03,#ff,#46,#02,#b3,#01,#bc
	db #43,#44,#82,#bc,#43,#46,#82,#46
	db #02,#03,#bc,#43,#44,#02,#03,#bc
	db #43,#46,#02,#03,#3c,#82,#bf,#43
	db #3c,#82,#c4,#43,#3c,#82,#c6,#03
	db #3c,#02,#43,#c8,#43,#3c,#82,#49
	db #02,#03,#48,#83,#46,#03,#43,#49
	db #82,#48,#03,#03,#46,#83,#49,#82
	db #48,#83,#44,#03,#43,#49,#02,#03
	db #48,#83,#44,#83,#49,#82,#ff,#c6
	db #b3,#01,#c8,#03,#c9,#03,#c6,#03
	db #c8,#03,#c9,#03,#c6,#03,#c8,#03
	db #c9,#03,#c6,#03,#c8,#03,#c9,#03
	db #cd,#03,#cb,#03,#c9,#03,#c8,#03
	db #c4,#03,#c6,#03,#c8,#03,#c4,#03
	db #c6,#03,#c8,#03,#c4,#03,#c6,#03
	db #c8,#03,#c4,#03,#c6,#03,#c8,#03
	db #cb,#03,#c9,#03,#c8,#03,#c4,#03
	db #c6,#03,#c1,#03,#c8,#03,#c1,#03
	db #c9,#03,#c1,#03,#cb,#03,#c1,#03
	db #cd,#03,#c1,#03,#cb,#03,#c1,#03
	db #c9,#03,#c1,#03,#c8,#03,#c1,#03
	db #c4,#03,#bf,#03,#c6,#03,#bf,#03
	db #c8,#03,#bf,#03,#c9,#03,#bf,#03
	db #cb,#03,#bf,#03,#c9,#03,#bf,#03
	db #c8,#03,#bf,#03,#cb,#03,#bf,#03
	db #ff,#46,#08,#03,#44,#83,#41,#83
	db #3f,#82,#44,#88,#3f,#83,#3c,#83
	db #3f,#82,#3a,#86,#ba,#b3,#02,#ba
	db #b3,#03,#ba,#b3,#04,#ba,#b3,#05
	db #ba,#b3,#06,#ba,#b3,#07,#ba,#b3
	db #08,#ba,#b3,#09,#ba,#b3,#0a,#3a
	db #11,#b3,#0f,#ff,#2e,#06,#13,#b0
	db #03,#b1,#03,#31,#02,#05,#b1,#03
	db #b0,#03,#b1,#03,#b0,#03,#2e,#82
	db #30,#88,#2c,#86,#29,#82,#2c,#86
	db #ae,#03,#b0,#03,#31,#82,#b0,#03
	db #ae,#03,#b0,#03,#ae,#03,#2c,#82
	db #2e,#88,#ae,#b3,#02,#ae,#b3,#03
	db #ae,#b3,#04,#ae,#b3,#05,#ae,#b3
	db #06,#ae,#b3,#09,#2e,#02,#b3,#0f
	db #ff,#fe,#02,#31,#03,#03,#30,#83
	db #33,#83,#31,#83,#30,#82,#30,#02
	db #b3,#03,#31,#03,#b3,#00,#30,#03
	db #03,#33,#83,#31,#83,#33,#82,#35
	db #8e,#b3,#03,#b1,#03,#30,#88,#b9
	db #03,#b5,#03,#b0,#03,#ad,#03,#a9
	db #03,#a4,#03,#a9,#03,#ad,#03,#ff
	db #fe,#02,#31,#03,#03,#30,#83,#33
	db #83,#31,#83,#30,#82,#30,#02,#b3
	db #03,#31,#03,#b3,#00,#30,#03,#03
	db #33,#83,#35,#83,#36,#82,#35,#8c
	db #b5,#03,#b6,#03,#b5,#03,#b3,#03
	db #35,#88,#39,#88,#ff,#22,#02,#da
	db #0c,#22,#02,#0a,#46,#02,#f4,#01
	db #ba,#04,#a2,#1a,#22,#02,#0a,#22
	db #82,#46,#02,#f4,#01,#ba,#04,#a2
	db #1a,#20,#02,#0a,#20,#82,#46,#02
	db #f4,#00,#ba,#04,#a0,#1a,#20,#02
	db #0a,#20,#82,#46,#02,#f4,#00,#ba
	db #04,#a0,#1a,#20,#02,#0a,#20,#82
	db #44,#02,#f4,#04,#b8,#04,#a0,#1a
	db #20,#02,#0a,#20,#82,#44,#02,#f4
	db #04,#b8,#04,#a2,#1a,#22,#02,#0a
	db #22,#82,#46,#02,#f4,#01,#ba,#04
	db #a2,#1a,#22,#02,#0a,#22,#82,#46
	db #02,#f4,#01,#ba,#04,#a2,#1a,#ff
	db #1e,#02,#da,#0c,#1e,#02,#0a,#46
	db #02,#f4,#02,#ba,#04,#9e,#1a,#1e
	db #02,#0a,#1e,#82,#46,#02,#f4,#02
	db #ba,#04,#9e,#1a,#1e,#02,#0a,#1e
	db #82,#46,#02,#f4,#06,#ba,#04,#9e
	db #1a,#1e,#02,#0a,#1e,#82,#46,#02
	db #f4,#06,#ba,#04,#9e,#1a,#29,#02
	db #0a,#29,#82,#46,#02,#f4,#01,#ba
	db #04,#9d,#1a,#29,#02,#0a,#29,#82
	db #46,#02,#f4,#01,#ba,#04,#9d,#1a
	db #29,#02,#0a,#29,#82,#41,#02,#f4
	db #03,#b5,#04,#9d,#1a,#29,#02,#0a
	db #29,#82,#a9,#0a,#a9,#0a,#a9,#0a
	db #a9,#0a,#ff,#a2,#da,#0c,#a2,#0a
	db #a2,#0a,#a2,#0a,#a2,#0a,#a2,#0a
	db #a2,#0a,#a2,#0a,#a2,#0a,#a2,#0a
	db #a2,#0a,#a2,#0a,#a2,#0a,#a2,#0a
	db #a2,#0a,#a2,#0a,#a0,#0a,#a0,#0a
	db #a0,#0a,#a0,#0a,#a0,#0a,#a0,#0a
	db #a0,#0a,#a0,#0a,#a0,#0a,#a0,#0a
	db #a0,#0a,#a0,#0a,#a0,#0a,#a0,#0a
	db #a0,#0a,#a0,#0a,#a0,#0a,#a0,#0a
	db #a0,#0a,#a0,#0a,#a0,#0a,#a0,#0a
	db #a0,#0a,#a0,#0a,#a0,#0a,#a0,#0a
	db #a0,#0a,#a0,#0a,#a4,#0a,#a4,#0a
	db #a0,#0a,#a0,#0a,#a2,#0a,#a2,#0a
	db #a2,#0a,#a2,#0a,#a2,#0a,#a2,#0a
	db #a2,#0a,#a2,#0a,#a2,#0a,#a2,#0a
	db #a2,#0a,#a2,#0a,#a2,#0a,#a2,#0a
	db #a2,#0a,#a2,#0a,#ff,#9e,#0a,#9e
	db #0a,#9e,#0a,#9e,#0a,#9e,#0a,#9e
	db #0a,#9e,#0a,#9e,#0a,#9e,#0a,#9e
	db #0a,#9e,#0a,#9e,#0a,#9e,#0a,#9e
	db #0a,#9e,#0a,#9e,#0a,#9e,#0a,#9e
	db #0a,#9e,#0a,#9e,#0a,#9e,#0a,#9e
	db #0a,#9e,#0a,#9e,#0a,#9e,#0a,#9e
	db #0a,#9e,#0a,#9e,#0a,#9e,#0a,#9e
	db #0a,#9e,#0a,#9e,#0a,#9d,#0a,#9d
	db #0a,#9d,#0a,#9d,#0a,#9d,#0a,#9d
	db #0a,#9d,#0a,#9d,#0a,#9d,#0a,#9d
	db #0a,#9d,#0a,#9d,#0a,#9d,#0a,#9d
	db #0a,#9d,#0a,#9d,#0a,#9d,#0a,#9d
	db #0a,#9d,#0a,#9d,#0a,#9d,#0a,#9d
	db #0a,#9d,#0a,#9d,#0a,#9d,#0a,#9d
	db #0a,#9d,#0a,#9d,#0a,#9d,#0a,#9d
	db #0a,#9d,#0a,#9d,#0a,#ff,#a2,#da
	db #0c,#a2,#0a,#a2,#0a,#a2,#0a,#a2
	db #0a,#a2,#0a,#a2,#0a,#a2,#0a,#a2
	db #0a,#a2,#0a,#a2,#0a,#a2,#0a,#a2
	db #0a,#a2,#0a,#a2,#0a,#a2,#0a,#a0
	db #0a,#a0,#0a,#a0,#0a,#a0,#0a,#a0
	db #0a,#a0,#0a,#a0,#0a,#a0,#0a,#a0
	db #0a,#a0,#0a,#a0,#0a,#a0,#0a,#a0
	db #0a,#a0,#0a,#a0,#0a,#a0,#0a,#20
	db #02,#da,#06,#20,#02,#0a,#20,#82
	db #20,#82,#20,#82,#20,#82,#20,#82
	db #20,#82,#20,#82,#20,#82,#20,#82
	db #20,#82,#24,#82,#24,#82,#20,#82
	db #20,#82,#ff,#a2,#0a,#a2,#0a,#a2
	db #0a,#a2,#0a,#a2,#0a,#a2,#0a,#a2
	db #0a,#a2,#0a,#a2,#0a,#a2,#0a,#a2
	db #0a,#a2,#0a,#a2,#0a,#a2,#0a,#a2
	db #0a,#a2,#0a,#a2,#0a,#a2,#0a,#a2
	db #0a,#a2,#0a,#a2,#0a,#a2,#0a,#a2
	db #0a,#a2,#0a,#a2,#0a,#a2,#0a,#a2
	db #0a,#a2,#0a,#a2,#0a,#a2,#0a,#a2
	db #0a,#a2,#0a,#a0,#0a,#a0,#0a,#a0
	db #0a,#a0,#0a,#a0,#0a,#a0,#0a,#a0
	db #0a,#a0,#0a,#a0,#0a,#a0,#0a,#a0
	db #0a,#a0,#0a,#a0,#0a,#a0,#0a,#a0
	db #0a,#a0,#0a,#a0,#0a,#a0,#0a,#a0
	db #0a,#a0,#0a,#a0,#0a,#a0,#0a,#a0
	db #0a,#a0,#0a,#a0,#0a,#a0,#0a,#a0
	db #0a,#a0,#0a,#a0,#0a,#a0,#0a,#a0
	db #0a,#a0,#0a,#ff,#fe,#40,#ff,#2e
	db #03,#0b,#ae,#0b,#2e,#82,#2a,#84
	db #31,#82,#ae,#0b,#2e,#82,#ae,#0b
	db #2e,#82,#2a,#82,#29,#82,#27,#82
	db #ae,#0b,#2e,#82,#ae,#0b,#2e,#82
	db #2a,#82,#31,#84,#30,#84,#2e,#82
	db #2e,#84,#2e,#82,#2e,#84,#31,#84
	db #30,#84,#2c,#84,#ff,#fe,#40,#ff
	db #2e,#02,#0b,#b5,#0b,#b3,#0b,#b5
	db #0b,#b6,#0b,#36,#82,#35,#82,#33
	db #82,#35,#82,#33,#82,#31,#82,#33
	db #82,#31,#82,#30,#82,#2e,#82,#b5
	db #0b,#b3,#0b,#b5,#0b,#b8,#0b,#36
	db #82,#35,#84,#33,#84,#35,#84,#33
	db #84,#31,#84,#33,#84,#31,#84,#30
	db #84,#ff,#ae,#0b,#ae,#bb,#00,#ae
	db #bb,#01,#ae,#bb,#03,#ae,#bb,#04
	db #ae,#bb,#06,#ae,#bb,#09,#ae,#bb
	db #0f,#ae,#bb,#0f,#ae,#bb,#0f,#ae
	db #bb,#0f,#ae,#bb,#0f,#2e,#94,#3a
	db #10,#f4,#01,#38,#10,#f4,#03,#ff
	db #3a,#10,#f4,#09,#38,#90,#3a,#90
	db #38,#90,#ff,#3a,#10,#f4,#09,#38
	db #90,#3a,#90,#38,#90,#ff
;
.music_info
	db "Bad Mag Issue 2.1 - Music B (1993)(Beng)()",0
	db "ST-Module",0

	read "music_end.asm"
