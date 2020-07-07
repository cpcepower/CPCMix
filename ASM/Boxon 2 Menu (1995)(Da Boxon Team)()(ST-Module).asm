; Music of Boxon 2 Menu (1995)(Da Boxon Team)()(ST-Module)
; Ripped by Megachur the 06/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOXON2ME.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #8300

	read "music_header.asm"

	jp l830b
	jp l8393
	jp l8377
	ld h,(hl)
	inc b
;
.init_music
.l830b
;
	ld b,#03
	ld ix,l86da
	ld iy,l8606
	ld de,#001c
.l8318
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
	djnz l8318
	ld a,#05
	ld (l83bb),a
	ld a,d
	ld (l83cf),a
	inc a
	ld (l83b6),a
	ld a,#38
	ld (l83c0),a
	ld a,#ff
	ld (l8602),a
	ld (l8603),a
	ld (l8604),a
	ld (l8605),a
	ld a,#0c
	ld c,d
	call l85e4
	ld a,#0d
	ld c,d
	jp l85e4
;
.stop_music
.l8377
;
	ld a,#07
	ld c,#3f
	call l85e4
	ld a,#08
	ld c,#00
	call l85e4
	ld a,#09
	ld c,#00
	call l85e4
	ld a,#0a
	ld c,#00
	jp l85e4
;
.play_music
.l8393
;
	ld hl,l83b6
	dec (hl)
	ld ix,l86da
	ld bc,l86e8
	call l8449
	ld ix,l86f6
	ld bc,l8704
	call l8449
	ld ix,l8712
	ld bc,l8720
	call l8449
.l83b6 equ $ + 1
	ld a,#01
	or a
	jr nz,l83bf
.l83bb equ $ + 1
	ld a,#05
	ld (l83b6),a
.l83c0 equ $ + 1
.l83bf
	ld a,#38
	ld hl,l8603
	cp (hl)
	jr z,l83ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l85e4
.l83cf equ $ + 1
.l83ce
	ld a,#00
	ld hl,l8602
	cp (hl)
	jr z,l83dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l85e4
.l83de equ $ + 1
.l83dd
	ld a,#00
	ld hl,l8604
	cp (hl)
	jr z,l83ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l85e4
.l83ed equ $ + 1
.l83ec
	ld a,#00
	ld hl,l8605
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l85e4
.l83fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l84fa
.l8409
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
	jp l85e4
.l8423
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l8438
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l8438
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l845c
.l8449
	ld a,(l83b6)
	or a
	jp nz,l84fa
	dec (ix+#06)
	jp nz,l84fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l845c
	ld a,(hl)
	or a
	jr z,l83fa
	cp #fe
	jr z,l8409
	cp #ff
	jr z,l8423
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l860c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l8498
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l8498
	and #7f
	ld (ix+#06),a
	jr l84eb
.l8498
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l84ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l84ac
	add a
	add a
	add a
	ld e,a
	ld hl,l8742
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
	jr z,l84eb
	cp #f0
	jp z,l85a0
	cp #d0
	jp z,l85bc
	cp #b0
	jp z,l85c4
	cp #80
	jp nc,l85cc
	cp #10
	jr nz,l84eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l84eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l84fa
	ld a,(ix+#17)
	or a
	jr nz,l850e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l850e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l8539
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l860c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l8539
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
	call l85e4
	ld c,h
	ld a,(ix+#03)
	call l85e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l8577
	and #0f
	sub (ix+#0a)
	jr nc,l856d
	xor a
.l856d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l85e4
.l8577
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
	jr z,l8594
	ld b,a
	ld a,c
	ld (l83cf),a
	ld a,b
	sub #40
.l8594
	ld (l859b),a
	ld a,(l83c0)
.l859b equ $ + 1
	bit 0,a
	ld (l83c0),a
	ret
.l85a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l87c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l84eb
.l85bc
	inc hl
	ld a,(hl)
	ld (l83bb),a
	jp l84eb
.l85c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l84eb
.l85cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l83ed),a
	inc hl
	ld a,(hl)
	ld (l83de),a
	jp l84eb
.l85e4
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
.l8605 equ $ + 3
.l8604 equ $ + 2
.l8603 equ $ + 1
.l8602
	db #ff,#ff,#ff,#ff
.l8606
	dw l89c2,l89dd,l89f8
.l860c
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
.l86da equ $ + 4
	db #00,#00,#00,#00,#13,#7a,#00,#01
	db #08,#10,#01,#00,#00,#00,#00,#df
.l86e8 equ $ + 2
	db #c5,#79,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l86f6
	db #a9,#7a,#02,#03,#09,#10,#01,#00
.l8704 equ $ + 6
	db #00,#00,#00,#e7,#e0,#79,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8712 equ $ + 4
	db #00,#00,#00,#00,#f3,#7a,#04,#05
	db #0a,#10,#01,#00,#00,#00,#00,#ef
.l8720 equ $ + 2
	db #fb,#79,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l8742 equ $ + 4
	db #75,#6c,#65,#2e,#dc,#71,#dc,#71
	db #dc,#71,#00,#00,#e2,#87,#22,#88
	db #42,#88,#00,#00,#dc,#71,#dc,#71
	db #dc,#71,#00,#00,#dc,#71,#dc,#71
	db #dc,#71,#00,#00,#dc,#71,#dc,#71
	db #dc,#71,#00,#00,#dc,#71,#dc,#71
	db #dc,#71,#00,#00,#62,#88,#a2,#88
	db #c2,#88,#0b,#15,#dc,#71,#dc,#71
	db #dc,#71,#00,#00,#62,#88,#e2,#88
	db #c2,#88,#00,#00,#02,#89,#42,#89
	db #c2,#88,#08,#18,#94,#55,#b8,#e3
	db #94,#55,#b8,#e3,#b8,#e3,#dc,#71
	db #be,#eb,#02,#7a,#b8,#e3,#b8,#e3
	db #b8,#e3,#dc,#71,#b8,#e3,#b8,#e3
	db #b8,#e3,#dc,#71,#b8,#e3,#b8,#e3
	db #b8,#e3,#dc,#71,#b8,#e3,#b8,#e3
.l87c2 equ $ + 4
	db #dc,#71,#00,#00,#dc,#71,#62,#89
	db #82,#89,#a2,#89,#dc,#71,#dc,#71
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
.l89c2 equ $ + 4
	db #04,#07,#00,#04,#00,#13,#8a,#00
	db #16,#8a,#00,#16,#8a,#00,#36,#8a
	db #00,#36,#8a,#00,#52,#8a,#00,#52
.l89dd equ $ + 7
	db #8a,#00,#78,#8a,#80,#c2,#89,#00
	db #a9,#8a,#00,#a9,#8a,#00,#a9,#8a
	db #00,#a9,#8a,#00,#a9,#8a,#00,#a9
	db #8a,#00,#a9,#8a,#00,#a9,#8a,#80
.l89f8 equ $ + 2
	db #dd,#89,#00,#f3,#8a,#00,#02,#8b
	db #00,#02,#8b,#00,#11,#8b,#00,#11
	db #8b,#00,#20,#8b,#00,#20,#8b,#00
	db #2f,#8b,#80,#f8,#89,#00,#40,#ff
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
	db "Boxon 2 Menu (1995)(Da Boxon Team)()",0
	db "ST-Module",0

	read "music_end.asm"
