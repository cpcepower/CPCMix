; Music of Voyage '93 MegaDemo - Part 3-3 (1993)(Beng!)(Crown)(ST-Module)
; Ripped by Megachur the 01/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "VO93MP33.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7300

	read "music_header.asm"

	jp l730b
	jp l7393
	jp l7377
	db #66,#04
;
.init_music
.l730b
;
	ld b,#03
	ld ix,l76da
	ld iy,l7606
	ld de,#001c
.l7318
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
	djnz l7318
	ld a,#05
	ld (l73bb),a
	ld a,d
	ld (l73cf),a
	inc a
	ld (l73b6),a
	ld a,#38
	ld (l73c0),a
	ld a,#ff
	ld (l7602),a
	ld (l7603),a
	ld (l7604),a
	ld (l7605),a
	ld a,#0c
	ld c,d
	call l75e4
	ld a,#0d
	ld c,d
	jp l75e4
;
.stop_music
.l7377
;
	ld a,#07
	ld c,#3f
	call l75e4
	ld a,#08
	ld c,#00
	call l75e4
	ld a,#09
	ld c,#00
	call l75e4
	ld a,#0a
	ld c,#00
	jp l75e4
;
.play_music
.l7393
;
	ld hl,l73b6
	dec (hl)
	ld ix,l76da
	ld bc,l76e8
	call l7449
	ld ix,l76f6
	ld bc,l7704
	call l7449
	ld ix,l7712
	ld bc,l7720
	call l7449
.l73b6 equ $ + 1
	ld a,#00
	or a
	jr nz,l73bf
.l73bb equ $ + 1
	ld a,#00
	ld (l73b6),a
.l73c0 equ $ + 1
.l73bf
	ld a,#00
	ld hl,l7603
	cp (hl)
	jr z,l73ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l75e4
.l73cf equ $ + 1
.l73ce
	ld a,#00
	ld hl,l7602
	cp (hl)
	jr z,l73dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l75e4
.l73de equ $ + 1
.l73dd
	ld a,#00
	ld hl,l7604
	cp (hl)
	jr z,l73ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l75e4
.l73ed equ $ + 1
.l73ec
	ld a,#00
	ld hl,l7605
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l75e4
.l73fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l74fa
.l7409
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
	jp l75e4
.l7423
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l7438
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l7438
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l745c
.l7449
	ld a,(l73b6)
	or a
	jp nz,l74fa
	dec (ix+#06)
	jp nz,l74fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l745c
	ld a,(hl)
	or a
	jr z,l73fa
	cp #fe
	jr z,l7409
	cp #ff
	jr z,l7423
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l760c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l7498
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l7498
	and #7f
	ld (ix+#06),a
	jr l74eb
.l7498
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l74ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l74ac
	add a
	add a
	add a
	ld e,a
	ld hl,l7742
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
	jr z,l74eb
	cp #f0
	jp z,l75a0
	cp #d0
	jp z,l75bc
	cp #b0
	jp z,l75c4
	cp #80
	jp nc,l75cc
	cp #10
	jr nz,l74eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l74eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l74fa
	ld a,(ix+#17)
	or a
	jr nz,l750e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l750e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l7539
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l760c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l7539
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
	call l75e4
	ld c,h
	ld a,(ix+#03)
	call l75e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l7577
	and #0f
	sub (ix+#0a)
	jr nc,l756d
	xor a
.l756d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l75e4
.l7577
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
	jr z,l7594
	ld b,a
	ld a,c
	ld (l73cf),a
	ld a,b
	sub #40
.l7594
	ld (l759b),a
	ld a,(l73c0)
.l759b equ $ + 1
	bit 0,a
	ld (l73c0),a
	ret
.l75a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l77c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l74eb
.l75bc
	inc hl
	ld a,(hl)
	ld (l73bb),a
	jp l74eb
.l75c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l74eb
.l75cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l73ed),a
	inc hl
	ld a,(hl)
	ld (l73de),a
	jp l74eb
.l75e4
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
.l7605 equ $ + 3
.l7604 equ $ + 2
.l7603 equ $ + 1
.l7602
	db #ff,#ff,#ff,#ff
.l7606
	dw l79c2,l79dd,l79f8
.l760c
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
.l76da equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l76e8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l76f6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l7704 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7712 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l7720 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l7742 equ $ + 4
	db #75,#6c,#65,#2e,#dc,#71,#dc,#71
	db #dc,#71,#00,#00,#e2,#77,#22,#78
	db #42,#78,#00,#00,#dc,#71,#dc,#71
	db #dc,#71,#00,#00,#dc,#71,#dc,#71
	db #dc,#71,#00,#00,#dc,#71,#dc,#71
	db #dc,#71,#00,#00,#dc,#71,#dc,#71
	db #dc,#71,#00,#00,#62,#78,#a2,#78
	db #c2,#78,#0b,#15,#dc,#71,#dc,#71
	db #dc,#71,#00,#00,#62,#78,#e2,#78
	db #c2,#78,#00,#00,#02,#79,#42,#79
	db #c2,#78,#08,#18,#94,#55,#b8,#e3
	db #94,#55,#b8,#e3,#b8,#e3,#dc,#71
	db #be,#eb,#02,#7a,#b8,#e3,#b8,#e3
	db #b8,#e3,#dc,#71,#b8,#e3,#b8,#e3
	db #b8,#e3,#dc,#71,#b8,#e3,#b8,#e3
	db #b8,#e3,#dc,#71,#b8,#e3,#b8,#e3
.l77c2 equ $ + 4
	db #dc,#71,#00,#00,#dc,#71,#62,#79
	db #82,#79,#a2,#79,#dc,#71,#dc,#71
	db #dc,#71,#dc,#71,#dc,#71,#dc,#71
	db #dc,#71,#dc,#71,#dc,#71,#dc,#71
	db #dc,#71,#dc,#71,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#0d,#0c,#0c
	db #0b,#0a,#09,#08,#08,#07,#07,#06
	db #05,#04,#04,#04,#04,#03,#02,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#06,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#06,#06,#07
	db #07,#07,#08,#08,#08,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0e,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0a,#0a,#0a,#09
	db #09,#08,#08,#07,#06,#05,#04,#03
	db #02,#01,#01,#01,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#0d,#0c,#0b,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
.l79c2 equ $ + 4
	db #04,#07,#00,#04,#00,#13,#7a,#00
	db #16,#7a,#00,#16,#7a,#00,#36,#7a
	db #00,#36,#7a,#00,#52,#7a,#00,#52
.l79dd equ $ + 7
	db #7a,#00,#78,#7a,#80,#c2,#79,#00
	db #a9,#7a,#00,#a9,#7a,#00,#a9,#7a
	db #00,#a9,#7a,#00,#a9,#7a,#00,#a9
	db #7a,#00,#a9,#7a,#00,#a9,#7a,#80
.l79f8 equ $ + 2
	db #dd,#79,#00,#f3,#7a,#00,#02,#7b
	db #00,#02,#7b,#00,#11,#7b,#00,#11
	db #7b,#00,#20,#7b,#00,#20,#7b,#00
	db #2f,#7b,#80,#f8,#79,#00,#40,#ff
	db #43,#06,#09,#45,#86,#43,#82,#45
	db #86,#41,#84,#41,#82,#43,#82,#45
	db #84,#40,#86,#41,#86,#40,#82,#43
	db #86,#41,#84,#40,#82,#41,#86,#ff
	db #3e,#0c,#09,#40,#82,#41,#8a,#40
	db #84,#41,#82,#3c,#8a,#41,#82,#40
	db #82,#41,#84,#3e,#84,#40,#82,#41
	db #84,#40,#86,#ff,#45,#08,#08,#45
	db #82,#43,#82,#45,#82,#48,#86,#45
	db #82,#43,#82,#45,#82,#4a,#82,#45
	db #82,#43,#82,#41,#84,#43,#84,#43
	db #8a,#45,#84,#46,#82,#45,#84,#43
	db #84,#ff,#45,#08,#08,#45,#82,#43
	db #82,#45,#82,#48,#86,#45,#02,#b8
	db #01,#43,#02,#08,#45,#82,#4a,#82
	db #45,#82,#43,#82,#41,#04,#b8,#02
	db #43,#04,#08,#43,#8a,#45,#04,#b8
	db #03,#46,#02,#b8,#05,#45,#04,#08
	db #43,#84,#ff,#26,#02,#08,#26,#82
	db #26,#82,#26,#82,#3a,#02,#01,#26
	db #02,#08,#26,#82,#26,#82,#24,#82
	db #26,#82,#26,#82,#26,#82,#3a,#02
	db #01,#26,#02,#08,#2b,#82,#29,#82
	db #24,#82,#24,#82,#24,#82,#24,#82
	db #3a,#02,#01,#24,#02,#08,#24,#82
	db #24,#82,#29,#82,#2b,#82,#28,#82
	db #29,#82,#3a,#02,#01,#28,#02,#08
	db #29,#82,#28,#82,#ff,#4a,#10,#f6
	db #02,#43,#90,#48,#10,#f6,#01,#45
	db #10,#f6,#03,#ff,#4a,#10,#f6,#02
	db #43,#90,#48,#10,#f6,#01,#45,#10
	db #f6,#03,#ff,#4a,#10,#f6,#02,#43
	db #90,#48,#10,#f6,#01,#45,#10,#f6
	db #03,#ff,#4a,#10,#f6,#02,#43,#90
	db #48,#10,#f6,#01,#45,#10,#f6,#03
	db #ff,#4a,#10,#f6,#02,#43,#90,#48
	db #10,#f6,#01,#45,#10,#f6,#03,#ff
;
.music_info
	db "Voyage '93 MegaDemo - Part 3-3 (1993)(Beng!)(Crown)",0
	db "ST-Module",0

	read "music_end.asm"
