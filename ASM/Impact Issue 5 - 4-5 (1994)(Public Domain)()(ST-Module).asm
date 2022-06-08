; Music of Impact Issue 5 - 4-5 (1994)(Public Domain)()(ST-Module)
; Ripped by Megachur the 31/03/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "IMPACI54.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 31
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #5400

	read "music_header.asm"

	jp l540b
	jp l5493
	jp l5477
	ld h,(hl)
	inc b
;
.init_music
.l540b
;
	ld b,#03
	ld ix,l57da
	ld iy,l5706
	ld de,#001c
.l5418
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
	djnz l5418
	ld a,#06
	ld (l54bb),a
	ld a,d
	ld (l54cf),a
	inc a
	ld (l54b6),a
	ld a,#38
	ld (l54c0),a
	ld a,#ff
	ld (l5702),a
	ld (l5703),a
	ld (l5704),a
	ld (l5705),a
	ld a,#0c
	ld c,d
	call l56e4
	ld a,#0d
	ld c,d
	jp l56e4
;
.stop_music
.l5477
;
	ld a,#07
	ld c,#3f
	call l56e4
	ld a,#08
	ld c,#00
	call l56e4
	ld a,#09
	ld c,#00
	call l56e4
	ld a,#0a
	ld c,#00
	jp l56e4
;
.play_music
.l5493
;
	ld hl,l54b6
	dec (hl)
	ld ix,l57da
	ld bc,l57e8
	call l5549
	ld ix,l57f6
	ld bc,l5804
	call l5549
	ld ix,l5812
	ld bc,l5820
	call l5549
.l54b6 equ $ + 1
	ld a,#04
	or a
	jr nz,l54bf
.l54bb equ $ + 1
	ld a,#06
	ld (l54b6),a
.l54c0 equ $ + 1
.l54bf
	ld a,#30
	ld hl,l5703
	cp (hl)
	jr z,l54ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l56e4
.l54cf equ $ + 1
.l54ce
	ld a,#06
	ld hl,l5702
	cp (hl)
	jr z,l54dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l56e4
.l54de equ $ + 1
.l54dd
	ld a,#14
	ld hl,l5704
	cp (hl)
	jr z,l54ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l56e4
.l54ed equ $ + 1
.l54ec
	ld a,#8c
	ld hl,l5705
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l56e4
.l54fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l55fa
.l5509
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
	jp l56e4
.l5523
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l5538
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l5538
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l555c
.l5549
	ld a,(l54b6)
	or a
	jp nz,l55fa
	dec (ix+#06)
	jp nz,l55fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l555c
	ld a,(hl)
	or a
	jr z,l54fa
	cp #fe
	jr z,l5509
	cp #ff
	jr z,l5523
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l570c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l5598
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l5598
	and #7f
	ld (ix+#06),a
	jr l55eb
.l5598
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l55ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l55ac
	add a
	add a
	add a
	ld e,a
	ld hl,l5842
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
	jr z,l55eb
	cp #f0
	jp z,l56a0
	cp #d0
	jp z,l56bc
	cp #b0
	jp z,l56c4
	cp #80
	jp nc,l56cc
	cp #10
	jr nz,l55eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l55eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l55fa
	ld a,(ix+#17)
	or a
	jr nz,l560e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l560e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l5639
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l570c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l5639
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
	call l56e4
	ld c,h
	ld a,(ix+#03)
	call l56e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l5677
	and #0f
	sub (ix+#0a)
	jr nc,l566d
	xor a
.l566d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l56e4
.l5677
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
	jr z,l5694
	ld b,a
	ld a,c
	ld (l54cf),a
	ld a,b
	sub #40
.l5694
	ld (l569b),a
	ld a,(l54c0)
.l569b equ $ + 1
	set 5,a
	ld (l54c0),a
	ret
.l56a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l58c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l55eb
.l56bc
	inc hl
	ld a,(hl)
	ld (l54bb),a
	jp l55eb
.l56c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l55eb
.l56cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l54ed),a
	inc hl
	ld a,(hl)
	ld (l54de),a
	jp l55eb
.l56e4
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
.l5705 equ $ + 3
.l5704 equ $ + 2
.l5703 equ $ + 1
.l5702
	db #06,#30,#14,#8c
.l5706
	dw l5ac2,l5add,l5af8
.l570c
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
	nop
	nop
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57da equ $ + 2
	db #00,#00,#ae,#5b,#00,#01,#08,#06
	db #01,#3c,#00,#00,#00,#df,#c8,#5a
.l57e8
	db #e2,#59,#22,#5a,#42,#5a,#00,#00
.l57f6 equ $ + 6
	db #03,#1d,#77,#00,#00,#00,#4e,#5e
	db #02,#03,#09,#08,#04,#32,#00,#00
.l5804 equ $ + 4
	db #00,#e7,#e3,#5a,#62,#5a,#a2,#5a
	db #42,#59,#18,#07,#09,#17,#d5,#00
.l5812 equ $ + 2
	db #00,#00,#21,#5f,#04,#05,#0a,#08
	db #04,#1f,#00,#10,#00,#ef,#fe,#5a
.l5820
	db #62,#5a,#a2,#5a,#42,#59,#18,#07
	db #19,#06,#7e,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #53,#54,#2d,#4d,#6f,#64,#75,#6c
.l5842 equ $ + 2
	db #65,#2e,#e2,#58,#22,#59,#42,#59
	db #00,#00,#62,#59,#a2,#59,#c2,#59
	db #00,#00,#25,#a6,#21,#07,#fc,#54
	db #00,#ff,#db,#52,#fd,#e4,#4c,#b1
	db #23,#56,#ff,#53,#ec,#52,#e5,#d0
	db #23,#4e,#da,#52,#a6,#53,#74,#51
	db #50,#30,#e2,#59,#22,#5a,#42,#5a
	db #00,#00,#c8,#51,#7c,#83,#e4,#28
	db #4d,#4f,#62,#5a,#a2,#5a,#42,#59
	db #18,#07,#e5,#28,#dc,#52,#dc,#52
	db #00,#00,#dc,#52,#dc,#52,#dc,#52
	db #00,#00,#dc,#52,#dc,#52,#dc,#52
	db #00,#00,#dc,#52,#dc,#52,#dc,#52
	db #00,#00,#dc,#52,#dc,#52,#dc,#52
	db #00,#00,#dc,#52,#dc,#52,#dc,#52
	db #00,#00,#dc,#52,#dc,#52,#dc,#52
.l58c2 equ $ + 2
	db #00,#00,#dc,#52,#dc,#52,#dc,#52
	db #00,#3f,#dc,#52,#dc,#52,#dc,#52
	db #00,#3f,#dc,#52,#dc,#52,#dc,#52
	db #00,#3f,#dc,#52,#dc,#52,#dc,#52
	db #00,#3f,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#0f,#0f,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#02,#02,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#80,#00,#40,#01
	db #a0,#01,#40,#02,#e8,#02,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#0f,#0e,#0e,#0d,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#06,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#38,#00,#60,#00,#b0,#00
	db #18,#01,#48,#01,#80,#01,#c8,#01
	db #10,#02,#58,#02,#b0,#02,#00,#00
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#0e,#0e,#0d,#0c,#0b
	db #09,#07,#06,#03,#01,#00,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#06,#06,#06,#05,#04,#04
	db #03,#02,#01,#00,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0e,#0d,#0c,#0a,#08,#0a
	db #0c,#0e,#0e,#0e,#0e,#0e,#0e,#0d
	db #0d,#0d,#0c,#0c,#0c,#0c,#0c,#0c
.l5ac2 equ $ + 2
	db #0c,#0c,#00,#13,#5b,#00,#94,#5b
	db #00,#15,#5c,#00,#96,#5c,#00,#17
	db #5d,#00,#98,#5d,#00,#15,#5c,#00
.l5add equ $ + 5
	db #96,#5c,#80,#c2,#5a,#00,#19,#5e
	db #00,#43,#5e,#00,#71,#5e,#00,#8e
	db #5e,#00,#aa,#5e,#00,#de,#5e,#00
	db #71,#5e,#00,#8e,#5e,#80,#dd,#5a
.l5af8
	db #00,#0a,#5f,#00,#1d,#5f,#00,#30
	db #5f,#00,#41,#5f,#00,#52,#5f,#00
	db #67,#5f,#00,#30,#5f,#00,#41,#5f
	db #80,#f8,#5a,#ba,#01,#a9,#00,#ba
	db #01,#a9,#00,#c6,#06,#a9,#00,#ba
	db #01,#c6,#06,#ba,#01,#c6,#06,#ba
	db #01,#a9,#00,#c6,#06,#a9,#00,#a9
	db #00,#a9,#00,#ba,#01,#a6,#00,#ba
	db #01,#a6,#00,#c6,#06,#a6,#00,#ba
	db #01,#c6,#06,#ba,#01,#c6,#06,#ba
	db #01,#a6,#00,#c6,#06,#a6,#00,#a6
	db #00,#a6,#00,#ba,#01,#a4,#00,#ba
	db #01,#a4,#00,#c6,#06,#a4,#00,#ba
	db #01,#c6,#06,#ba,#01,#c6,#06,#ba
	db #01,#a4,#00,#c6,#06,#a4,#00,#a4
	db #00,#a4,#00,#ba,#01,#a2,#00,#ba
	db #01,#a2,#00,#c6,#06,#a2,#00,#ba
	db #01,#c6,#06,#ba,#01,#c6,#06,#ba
	db #01,#a9,#00,#c6,#06,#a9,#00,#c6
	db #06,#c6,#06,#ff,#ba,#01,#a9,#00
	db #ba,#01,#a9,#00,#c6,#06,#a9,#00
	db #ba,#01,#c6,#06,#ba,#01,#c6,#06
	db #ba,#01,#a9,#00,#c6,#06,#a9,#00
	db #a9,#00,#a9,#00,#ba,#01,#a6,#00
	db #ba,#01,#a6,#00,#c6,#06,#a6,#00
	db #ba,#01,#c6,#06,#ba,#01,#c6,#06
	db #ba,#01,#a6,#00,#c6,#06,#a6,#00
	db #a6,#00,#a6,#00,#ba,#01,#a4,#00
	db #ba,#01,#a4,#00,#c6,#06,#a4,#00
	db #ba,#01,#c6,#06,#ba,#01,#c6,#06
	db #ba,#01,#a4,#00,#c6,#06,#a4,#00
	db #a4,#00,#a4,#00,#ba,#01,#a2,#00
	db #ba,#01,#a2,#00,#c6,#06,#a2,#00
	db #ba,#01,#c6,#06,#ba,#01,#c6,#06
	db #ba,#01,#a9,#00,#c6,#06,#a9,#00
	db #c6,#06,#c6,#06,#ff,#ba,#01,#a9
	db #00,#ba,#01,#a9,#00,#c6,#06,#a9
	db #00,#ba,#01,#c6,#06,#ba,#01,#c6
	db #06,#ba,#01,#a9,#00,#c6,#06,#a9
	db #00,#a9,#00,#a9,#00,#ba,#01,#a4
	db #00,#ba,#01,#a4,#00,#c6,#06,#a4
	db #00,#ba,#01,#c6,#06,#ba,#01,#c6
	db #06,#ba,#01,#a4,#00,#c6,#06,#a4
	db #00,#a4,#00,#a4,#00,#ba,#01,#a6
	db #00,#ba,#01,#a6,#00,#c6,#06,#a6
	db #00,#ba,#01,#c6,#06,#ba,#01,#c6
	db #06,#ba,#01,#a6,#00,#c6,#06,#a6
	db #00,#a6,#00,#a6,#00,#ba,#01,#a2
	db #00,#ba,#01,#a2,#00,#c6,#06,#a2
	db #00,#ba,#01,#c6,#06,#ba,#01,#c6
	db #06,#ba,#01,#a2,#00,#c6,#06,#a2
	db #00,#c6,#06,#c6,#06,#ff,#ba,#01
	db #a9,#00,#ba,#01,#a9,#00,#c6,#06
	db #a9,#00,#ba,#01,#c6,#06,#ba,#01
	db #c6,#06,#ba,#01,#a9,#00,#c6,#06
	db #a9,#00,#a9,#00,#a9,#00,#ba,#01
	db #a4,#00,#ba,#01,#a4,#00,#c6,#06
	db #a4,#00,#ba,#01,#c6,#06,#ba,#01
	db #c6,#06,#ba,#01,#a4,#00,#c6,#06
	db #a4,#00,#a4,#00,#a4,#00,#ba,#01
	db #a2,#00,#ba,#01,#a2,#00,#c6,#06
	db #a2,#00,#ba,#01,#c6,#06,#ba,#01
	db #c6,#06,#ba,#01,#a2,#00,#c6,#06
	db #a2,#00,#a2,#00,#a2,#00,#ba,#01
	db #a9,#00,#ba,#01,#a9,#00,#c6,#06
	db #a9,#00,#ba,#01,#c6,#06,#ba,#01
	db #c6,#06,#ba,#01,#a9,#00,#c6,#06
	db #a9,#00,#c6,#06,#c6,#06,#ff,#ba
	db #01,#a9,#00,#cb,#06,#a9,#00,#ba
	db #01,#a9,#00,#cb,#06,#a9,#00,#ba
	db #01,#a4,#00,#cb,#06,#cb,#06,#ba
	db #01,#a4,#00,#cb,#06,#a4,#00,#ba
	db #01,#a9,#00,#cb,#06,#a9,#00,#ba
	db #01,#a9,#00,#cb,#06,#a9,#00,#ba
	db #01,#a9,#00,#cb,#06,#cb,#06,#ba
	db #01,#a9,#00,#cb,#06,#a9,#00,#ba
	db #01,#a2,#00,#cb,#06,#a2,#00,#ba
	db #01,#a2,#00,#cb,#06,#a2,#00,#ba
	db #01,#a9,#00,#cb,#06,#cb,#06,#ba
	db #01,#a9,#00,#cb,#06,#a9,#00,#ba
	db #01,#a4,#00,#cb,#06,#a4,#00,#ba
	db #01,#a4,#00,#cb,#06,#a4,#00,#ba
	db #01,#a4,#00,#cb,#06,#a4,#00,#cb
	db #06,#a4,#00,#cb,#06,#a4,#00,#ff
	db #ba,#01,#a6,#00,#ca,#06,#a6,#00
	db #ba,#01,#a6,#00,#ca,#06,#a6,#00
	db #ba,#01,#a4,#00,#ca,#06,#ca,#06
	db #ba,#01,#a4,#00,#ca,#06,#a4,#00
	db #ba,#01,#a2,#00,#ca,#06,#a2,#00
	db #ba,#01,#a2,#00,#ca,#06,#a2,#00
	db #ba,#01,#a9,#00,#ca,#06,#ca,#06
	db #ba,#01,#a9,#00,#ca,#06,#a9,#00
	db #ba,#01,#a4,#00,#ca,#06,#a4,#00
	db #ba,#01,#a4,#00,#ca,#06,#a4,#00
	db #ba,#01,#a4,#00,#ca,#06,#a4,#00
	db #ba,#01,#a4,#00,#ca,#06,#a4,#00
	db #ba,#01,#a4,#00,#ca,#06,#a4,#00
	db #ba,#01,#a4,#00,#ca,#06,#a4,#00
	db #c3,#01,#c3,#01,#bf,#01,#bf,#01
	db #be,#01,#be,#01,#bc,#01,#bc,#01
	db #ff,#00,#04,#3c,#02,#08,#3c,#82
	db #3e,#83,#3c,#85,#3e,#82,#3c,#82
	db #3e,#82,#c1,#08,#41,#8d,#43,#82
	db #43,#82,#45,#83,#43,#85,#3e,#82
	db #3e,#82,#3e,#82,#bc,#08,#3e,#82
	db #41,#87,#ff,#00,#04,#3c,#02,#08
	db #3c,#82,#3e,#83,#3c,#85,#3e,#82
	db #41,#82,#41,#82,#c5,#08,#45,#8d
	db #43,#82,#43,#82,#45,#83,#43,#85
	db #3e,#82,#41,#82,#41,#82,#c3,#08
	db #41,#85,#41,#82,#c3,#08,#c5,#08
	db #ff,#00,#0c,#c5,#08,#c3,#08,#c1
	db #08,#43,#8d,#45,#82,#c3,#08,#41
	db #8d,#45,#82,#c8,#08,#4a,#8d,#4a
	db #82,#c6,#08,#c8,#08,#ff,#00,#02
	db #45,#0a,#08,#c5,#08,#c3,#08,#c1
	db #08,#43,#83,#45,#8a,#45,#82,#c3
	db #08,#41,#8d,#41,#82,#c3,#08,#41
	db #91,#ff,#00,#02,#41,#02,#08,#41
	db #82,#41,#82,#40,#82,#40,#82,#41
	db #82,#43,#82,#45,#82,#45,#82,#45
	db #82,#c3,#08,#41,#89,#46,#82,#46
	db #82,#46,#82,#c6,#08,#46,#83,#45
	db #82,#43,#82,#c1,#08,#43,#85,#43
	db #82,#c5,#08,#43,#89,#ff,#45,#02
	db #08,#45,#82,#45,#82,#45,#82,#43
	db #82,#43,#82,#43,#82,#43,#82,#41
	db #84,#41,#82,#c3,#08,#41,#85,#41
	db #82,#c1,#08,#43,#8d,#43,#82,#c5
	db #08,#46,#8d,#41,#82,#c3,#08,#c5
	db #08,#ff,#29,#10,#c8,#14,#26,#10
	db #c8,#18,#24,#10,#c8,#1b,#22,#08
	db #c8,#14,#29,#88,#ff,#29,#10,#c8
	db #14,#26,#10,#c8,#18,#24,#10,#c8
	db #1b,#22,#08,#c8,#14,#29,#88,#ff
	db #29,#10,#c8,#14,#24,#10,#c8,#1b
	db #26,#10,#c8,#18,#22,#10,#c8,#14
	db #ff,#29,#10,#c8,#14,#24,#10,#c8
	db #1b,#22,#10,#c8,#1e,#29,#10,#c8
	db #14,#ff,#29,#08,#c8,#14,#24,#08
	db #c8,#1b,#29,#10,#c8,#14,#22,#88
	db #29,#88,#24,#10,#c8,#1b,#ff,#26
	db #08,#c8,#18,#24,#08,#c8,#1b,#22
	db #08,#c8,#14,#29,#88,#24,#10,#c8
	db #1b,#24,#90,#ff

;
.music_info
	db "Impact Issue 5 - 4-5 (1994)(Public Domain)()",0
	db "ST-Module",0

	read "music_end.asm"
