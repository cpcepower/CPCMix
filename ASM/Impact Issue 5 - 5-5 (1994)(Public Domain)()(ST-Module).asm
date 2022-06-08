; Music of Impact Issue 5 - 5-5 (1994)(Public Domain)()(ST-Module)
; Ripped by Megachur the 31/03/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "IMPACI55.BIN"
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
	ld a,#01
	or a
	jr nz,l54bf
.l54bb equ $ + 1
	ld a,#06
	ld (l54b6),a
.l54c0 equ $ + 1
.l54bf
	ld a,#18
	ld hl,l5703
	cp (hl)
	jr z,l54ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l56e4
.l54cf equ $ + 1
.l54ce
	ld a,#01
	ld hl,l5702
	cp (hl)
	jr z,l54dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l56e4
.l54de equ $ + 1
.l54dd
	ld a,#00
	ld hl,l5704
	cp (hl)
	jr z,l54ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l56e4
.l54ed equ $ + 1
.l54ec
	ld a,#00
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
	res 5,a
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
	db #01,#18,#00,#00
.l5706
	dw l5ce2,l5d3c,l5d96
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
	db #00,#00,#fb,#5d,#00,#01,#08,#00
	db #01,#35,#00,#00,#00,#df,#21,#5d
.l57e8
	db #e2,#58,#22,#59,#42,#59,#07,#00
.l57f6 equ $ + 6
	db #06,#1a,#b3,#00,#a2,#5c,#c7,#5f
	db #02,#03,#09,#04,#0a,#29,#00,#00
.l5804 equ $ + 4
	db #00,#e7,#7b,#5d,#82,#5a,#c2,#5a
	db #42,#59,#08,#18,#12,#0e,#66,#01
.l5812 equ $ + 2
	db #00,#00,#07,#61,#04,#05,#0a,#02
	db #02,#29,#00,#00,#00,#ef,#d5,#5d
.l5820
	db #82,#59,#c2,#59,#e2,#59,#1a,#00
	db #12,#0e,#66,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #53,#54,#2d,#4d,#6f,#64,#75,#6c
.l5842 equ $ + 2
	db #65,#2e,#e2,#58,#22,#59,#42,#59
	db #07,#00,#e2,#58,#62,#59,#42,#59
	db #00,#00,#82,#59,#c2,#59,#e2,#59
	db #1a,#00,#02,#5a,#42,#5a,#62,#5a
	db #07,#00,#82,#5a,#c2,#5a,#42,#59
	db #08,#18,#dc,#52,#dc,#52,#dc,#52
	db #00,#00,#e2,#5a,#22,#5b,#42,#59
	db #00,#00,#e2,#58,#42,#5b,#62,#5b
	db #06,#00,#82,#5b,#c2,#5b,#42,#59
	db #00,#00,#e2,#58,#e2,#5b,#42,#59
	db #1b,#00,#e2,#58,#22,#59,#02,#5c
	db #00,#00,#e2,#58,#22,#5c,#42,#5c
	db #00,#00,#dc,#52,#dc,#52,#dc,#52
	db #00,#00,#dc,#52,#dc,#52,#dc,#52
	db #00,#00,#dc,#52,#dc,#52,#dc,#52
	db #00,#00,#dc,#52,#dc,#52,#dc,#52
.l58c2 equ $ + 2
	db #00,#00,#62,#5c,#82,#5c,#dc,#52
	db #dc,#1e,#dc,#52,#dc,#52,#dc,#52
	db #dc,#1e,#a2,#5c,#dc,#52,#c2,#5c
	db #dc,#1e,#dc,#52,#dc,#52,#dc,#52
	db #dc,#1e,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#0f,#0e,#0d,#0c,#0c
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#0a,#08,#06,#04
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#0e,#0e,#0d,#0d,#0c
	db #0c,#0b,#0b,#0b,#0b,#0b,#0a,#0a
	db #0a,#0a,#0a,#09,#09,#09,#09,#09
	db #08,#08,#08,#08,#08,#07,#06,#04
	db #02,#00,#00,#00,#30,#00,#60,#00
	db #90,#00,#c0,#00,#f0,#00,#20,#01
	db #50,#01,#80,#01,#b0,#01,#e0,#01
	db #10,#02,#40,#02,#70,#02,#a0,#02
	db #d0,#02,#00,#03,#20,#03,#40,#03
	db #60,#03,#70,#03,#80,#03,#90,#03
	db #a0,#03,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#0e,#0e,#0d,#0d,#0c
	db #0c,#0b,#0a,#0a,#09,#09,#08,#07
	db #07,#06,#06,#05,#05,#04,#04,#03
	db #03,#02,#02,#00,#00,#00,#00,#00
	db #00,#00,#05,#00,#00,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#80,#00,#00,#01,#80,#01
	db #00,#02,#80,#02,#00,#03,#00,#04
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
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0a,#0a,#0b,#0b,#0c,#0c
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#0f,#0e,#0d,#0c,#0c,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#0f,#0c,#09,#06,#03,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#ff,#ff,#fe,#ff
	db #fe,#ff,#fd,#ff,#fd,#ff,#fc,#ff
	db #fc,#ff,#fb,#ff,#fb,#ff,#fa,#ff
	db #fa,#ff,#f9,#ff,#f9,#ff,#f8,#ff
	db #f8,#ff,#f7,#ff,#f7,#ff,#f6,#ff
	db #f6,#ff,#f5,#ff,#f5,#ff,#f4,#ff
	db #f4,#ff,#f3,#ff,#f3,#ff,#f2,#ff
	db #f2,#ff,#f1,#ff,#f1,#ff,#f0,#ff
	db #ee,#ff,#0c,#0c,#0c,#0c,#0c,#0c
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#0c,#0c,#0c,#0c,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#07,#07,#06,#06,#05
	db #04,#03,#02,#01,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#0d,#0b,#09,#07,#05
	db #04,#06,#08,#06,#04,#02,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#07,#0b,#0f,#13,#17,#1b
	db #1f,#13,#08,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#0c,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#f4,#00,#0c,#00,#f4
	db #00,#0c,#00,#f4,#00,#0c,#00,#f4
	db #00,#0c,#00,#f4,#00,#0c,#00,#f4
	db #00,#0c,#00,#f4,#00,#0c,#00,#f4
.l5ce2 equ $ + 2
	db #00,#0c,#00,#3c,#5e,#00,#43,#5e
	db #00,#43,#5e,#00,#9e,#5e,#00,#16
	db #5e,#00,#f0,#5d,#00,#16,#5e,#00
	db #49,#5e,#00,#80,#5e,#00,#49,#5e
	db #00,#80,#5e,#00,#9a,#5e,#00,#c5
	db #5e,#00,#c8,#5e,#00,#e5,#5e,#00
	db #0a,#5f,#00,#e5,#5e,#00,#2f,#5f
	db #00,#9e,#5e,#00,#16,#5e,#00,#f0
	db #5d,#00,#16,#5e,#00,#aa,#5f,#00
	db #ad,#5f,#00,#56,#5f,#00,#72,#5f
	db #00,#56,#5f,#00,#8a,#5f,#00,#bd
.l5d3c equ $ + 4
	db #5f,#80,#e5,#5c,#00,#d9,#5f,#00
	db #df,#5f,#00,#e6,#5f,#00,#c4,#5f
	db #00,#cf,#5f,#00,#c4,#5f,#00,#cf
	db #5f,#00,#fb,#5f,#00,#05,#60,#00
	db #fb,#5f,#00,#05,#60,#00,#0f,#60
	db #00,#18,#60,#00,#2d,#60,#00,#4a
	db #60,#00,#64,#60,#00,#4a,#60,#00
	db #6c,#60,#00,#c4,#5f,#00,#cf,#5f
	db #00,#c4,#5f,#00,#cf,#5f,#00,#e1
	db #60,#00,#e4,#60,#00,#74,#60,#00
	db #86,#60,#00,#98,#60,#00,#bd,#60
.l5d96 equ $ + 6
	db #00,#fa,#60,#80,#3f,#5d,#00,#43
	db #61,#00,#49,#61,#00,#81,#61,#00
	db #0f,#62,#00,#1e,#61,#00,#01,#61
	db #00,#1e,#61,#00,#b6,#61,#00,#d3
	db #61,#00,#b6,#61,#00,#d3,#61,#00
	db #f0,#61,#00,#2c,#62,#00,#49,#62
	db #00,#68,#62,#00,#85,#62,#00,#68
	db #62,#00,#68,#62,#00,#0f,#62,#00
	db #1e,#61,#00,#01,#61,#00,#1e,#61
	db #00,#04,#63,#00,#23,#63,#00,#a2
	db #62,#00,#bf,#62,#00,#a2,#62,#00
	db #dc,#62,#00,#47,#63,#80,#99,#5d
	db #3f,#02,#00,#bf,#00,#c6,#00,#4b
	db #82,#bf,#00,#c6,#00,#4b,#82,#4b
	db #82,#cb,#00,#49,#83,#49,#82,#c9
	db #00,#49,#82,#49,#82,#c9,#00,#48
	db #82,#49,#82,#46,#84,#ff,#3f,#02
	db #00,#bf,#00,#c6,#00,#4b,#82,#bf
	db #00,#c6,#00,#4b,#82,#4b,#82,#cb
	db #00,#49,#83,#4e,#82,#ce,#00,#4e
	db #82,#4e,#82,#ce,#00,#4d,#82,#49
	db #82,#4b,#84,#ff,#27,#18,#14,#46
	db #08,#04,#ff,#4b,#10,#04,#46,#90
	db #ff,#46,#02,#16,#3f,#02,#00,#4b
	db #02,#06,#bf,#00,#49,#02,#06,#bf
	db #00,#c6,#06,#bf,#00,#c4,#06,#bf
	db #00,#c6,#06,#bf,#00,#46,#82,#3f
	db #82,#4b,#02,#06,#bf,#00,#49,#02
	db #06,#bf,#00,#c6,#06,#bf,#00,#c4
	db #06,#bf,#00,#c6,#06,#bf,#00,#ff
	db #49,#03,#06,#4b,#83,#46,#83,#44
	db #83,#42,#82,#44,#82,#42,#83,#41
	db #83,#3f,#83,#42,#83,#41,#82,#3d
	db #82,#ff,#3f,#20,#04,#ff,#3f,#02
	db #f0,#08,#bf,#00,#c6,#00,#4b,#82
	db #bf,#00,#c6,#00,#4b,#82,#4b,#82
	db #cb,#00,#49,#83,#49,#82,#c9,#00
	db #49,#82,#49,#82,#c9,#00,#48,#82
	db #44,#82,#46,#84,#ff,#fe,#20,#ff
	db #00,#02,#4b,#04,#03,#4b,#83,#4b
	db #82,#4b,#83,#4b,#84,#4b,#84,#4b
	db #82,#3f,#82,#3f,#82,#3f,#02,#02
	db #bf,#02,#bf,#02,#ff,#00,#02,#48
	db #02,#fa,#00,#c8,#0a,#48,#82,#48
	db #82,#48,#82,#48,#82,#c8,#0a,#48
	db #84,#48,#82,#c8,#0a,#48,#82,#48
	db #82,#48,#82,#48,#82,#c8,#0a,#48
	db #82,#ff,#00,#02,#4b,#02,#f0,#01
	db #cb,#0a,#4b,#82,#4b,#82,#4b,#82
	db #4b,#82,#cb,#0a,#4b,#84,#46,#82
	db #c6,#0a,#46,#82,#46,#82,#46,#82
	db #46,#82,#c6,#0a,#46,#82,#ff,#00
	db #02,#52,#02,#f0,#01,#d2,#00,#52
	db #82,#52,#82,#52,#82,#52,#82,#d2
	db #00,#52,#84,#46,#02,#f0,#01,#c6
	db #00,#46,#82,#46,#82,#46,#82,#46
	db #82,#c6,#00,#46,#82,#ff,#4b,#08
	db #f0,#0a,#4d,#02,#00,#ce,#00,#4d
	db #82,#cb,#00,#49,#82,#4b,#88,#4d
	db #82,#ce,#00,#4d,#82,#cb,#00,#49
	db #82,#ff,#47,#08,#f0,#0a,#47,#02
	db #00,#c9,#00,#4b,#82,#c9,#00,#47
	db #82,#44,#83,#46,#83,#47,#82,#46
	db #88,#ff,#47,#08,#f0,#0a,#47,#02
	db #00,#c9,#00,#4b,#82,#c9,#00,#47
	db #82,#44,#83,#46,#83,#47,#82,#46
	db #84,#9b,#0b,#9b,#0b,#9b,#0b,#9b
	db #0b,#ff,#fe,#20,#ff,#fe,#18,#3f
	db #02,#07,#3f,#82,#bf,#07,#9b,#02
	db #9b,#02,#9b,#02,#ff,#27,#18,#14
	db #46,#08,#04,#ff,#33,#10,#14,#31
	db #08,#04,#30,#84,#2e,#84,#ff,#33
	db #10,#04,#36,#88,#2e,#84,#33,#84
	db #ff,#00,#08,#3a,#18,#14,#ff,#3f
	db #10,#04,#3f,#10,#01,#ff,#3f,#10
	db #04,#41,#04,#03,#41,#84,#41,#82
	db #41,#82,#c1,#0b,#c1,#02,#c1,#0b
	db #c1,#02,#ff,#3f,#08,#00,#3a,#88
	db #3f,#88,#3a,#88,#ff,#3f,#08,#06
	db #3d,#88,#3b,#88,#3a,#88,#ff,#3d
	db #1c,#08,#3f,#02,#02,#3f,#82,#ff
	db #fe,#10,#ba,#02,#3a,#82,#36,#82
	db #36,#82,#3a,#82,#36,#82,#36,#82
	db #b6,#02,#36,#82,#ff,#fe,#10,#ba
	db #02,#3a,#82,#36,#82,#36,#82,#b6
	db #02,#ba,#02,#ba,#02,#b6,#02,#b6
	db #02,#b3,#02,#b3,#02,#b6,#02,#b6
	db #02,#ff,#43,#0c,#06,#bc,#06,#be
	db #06,#bf,#06,#c1,#06,#43,#88,#bc
	db #06,#be,#06,#bf,#06,#c1,#06,#43
	db #83,#c8,#06,#ff,#46,#0d,#06,#48
	db #83,#41,#90,#ff,#4a,#0d,#06,#4b
	db #83,#46,#90,#ff,#3f,#04,#0a,#3a
	db #84,#3f,#84,#3a,#84,#3f,#84,#3a
	db #84,#3f,#84,#3a,#84,#ff,#3b,#04
	db #0a,#36,#84,#3b,#84,#36,#84,#38
	db #84,#33,#84,#3e,#84,#3a,#84,#ff
	db #4e,#04,#f0,#0a,#3a,#04,#1a,#50
	db #02,#f0,#0a,#d2,#00,#50,#82,#ce
	db #00,#4d,#82,#4e,#84,#3a,#04,#1a
	db #50,#02,#f0,#0a,#d2,#00,#50,#82
	db #ce,#00,#4d,#82,#ff,#4b,#04,#f0
	db #0a,#36,#04,#1a,#4b,#02,#f0,#0a
	db #cd,#00,#4e,#82,#cd,#00,#4b,#82
	db #47,#83,#49,#83,#4b,#82,#4a,#84
	db #ba,#1a,#8f,#0b,#8f,#0b,#8f,#0b
	db #ff,#fe,#20,#ff,#fe,#10,#27,#04
	db #0b,#27,#02,#02,#27,#04,#0b,#27
	db #82,#a7,#02,#a7,#02,#a7,#02,#a7
	db #02,#ff,#27,#08,#02,#3a,#18,#14
	db #ff,#27,#04,#13,#33,#04,#02,#27
	db #02,#03,#27,#82,#33,#04,#02,#27
	db #04,#03,#33,#04,#02,#27,#02,#03
	db #27,#82,#33,#04,#02,#ff,#27,#04
	db #03,#33,#04,#02,#27,#02,#03,#27
	db #82,#33,#04,#02,#27,#04,#03,#33
	db #04,#02,#b3,#03,#b3,#03,#b3,#03
	db #b3,#03,#bf,#03,#bf,#03,#bf,#03
	db #bf,#03,#ff,#00,#10,#3f,#10,#14
	db #ff,#cb,#0a,#cb,#0a,#cb,#0a,#cb
	db #0a,#cb,#0a,#cb,#0a,#c9,#0a,#4b
	db #82,#4b,#82,#c9,#0a,#cb,#0a,#cb
	db #0a,#49,#82,#cb,#0a,#cb,#0a,#cb
	db #0a,#cb,#0a,#cb,#0a,#cb,#0a,#c9
	db #0a,#cb,#0a,#cb,#09,#4b,#02,#0a
	db #c9,#0a,#cb,#0a,#cb,#0a,#49,#82
	db #ff,#cb,#0a,#cb,#0a,#cb,#0a,#cb
	db #0a,#cb,#0a,#cb,#0a,#c9,#0a,#4b
	db #82,#4b,#82,#c9,#0a,#cb,#0a,#cb
	db #0a,#49,#82,#cb,#0a,#cb,#0a,#cb
	db #0a,#cb,#0a,#cb,#0a,#cb,#0a,#c9
	db #0a,#4b,#82,#4b,#82,#c9,#0a,#cb
	db #0a,#cb,#0a,#49,#82,#ff,#33,#04
	db #0b,#33,#04,#02,#33,#02,#0b,#33
	db #82,#33,#04,#02,#33,#04,#0b,#33
	db #04,#02,#33,#02,#0b,#33,#82,#33
	db #04,#02,#ff,#3f,#04,#0b,#3f,#04
	db #02,#3f,#02,#0b,#3f,#82,#3f,#04
	db #02,#3f,#04,#0b,#3f,#04,#02,#3f
	db #02,#0b,#3f,#82,#3f,#04,#02,#ff
	db #3f,#04,#0b,#3f,#04,#02,#3f,#02
	db #0b,#3f,#82,#3f,#04,#02,#3f,#04
	db #0b,#3f,#04,#02,#33,#02,#0b,#33
	db #82,#3f,#02,#02,#3f,#82,#ff,#33
	db #04,#03,#33,#04,#02,#33,#02,#03
	db #33,#82,#33,#04,#02,#35,#04,#03
	db #33,#04,#02,#33,#02,#03,#33,#82
	db #33,#04,#02,#ff,#33,#04,#0b,#3f
	db #04,#02,#33,#02,#0b,#33,#82,#3f
	db #04,#02,#33,#04,#0b,#3f,#04,#02
	db #33,#02,#0b,#33,#82,#3f,#04,#02
	db #ff,#33,#04,#0b,#3f,#04,#02,#33
	db #02,#0b,#33,#82,#3f,#04,#02,#33
	db #04,#0b,#3f,#04,#02,#33,#02,#0b
	db #33,#83,#3f,#02,#02,#bf,#02,#ff
	db #33,#04,#0b,#33,#04,#02,#33,#02
	db #0b,#33,#82,#33,#04,#02,#35,#04
	db #0b,#33,#04,#02,#33,#02,#0b,#33
	db #82,#33,#04,#02,#ff,#33,#04,#0b
	db #33,#04,#02,#33,#02,#0b,#33,#82
	db #33,#04,#02,#35,#04,#0b,#33,#04
	db #02,#33,#02,#0b,#33,#82,#33,#04
	db #02,#ff,#27,#04,#0b,#33,#02,#02
	db #27,#04,#0b,#27,#82,#33,#04,#02
	db #27,#04,#0b,#33,#02,#02,#27,#04
	db #0b,#27,#82,#33,#04,#02,#ff,#27
	db #04,#0b,#33,#02,#02,#27,#04,#0b
	db #27,#82,#33,#04,#02,#27,#04,#0b
	db #33,#02,#02,#27,#04,#0b,#27,#82
	db #33,#04,#02,#ff,#27,#04,#0b,#33
	db #02,#02,#27,#04,#0b,#27,#82,#33
	db #04,#02,#27,#04,#0b,#33,#02,#02
	db #27,#02,#0b,#a7,#0b,#a7,#0b,#a7
	db #0b,#a7,#0b,#a7,#0b,#a7,#0b,#a7
	db #0b,#a7,#0b,#ff,#33,#04,#0b,#3f
	db #04,#02,#33,#02,#0b,#33,#82,#3f
	db #04,#02,#33,#02,#0b,#33,#82,#3f
	db #02,#02,#33,#04,#0b,#33,#82,#3f
	db #04,#02,#ff,#33,#04,#0b,#3f,#04
	db #02,#33,#02,#0b,#33,#82,#3f,#04
	db #02,#33,#02,#0b,#33,#82,#3f,#02
	db #02,#33,#04,#0b,#33,#82,#bf,#02
	db #b3,#02,#b3,#02,#b3,#02,#ff,#1b
	db #10,#02,#3f,#10,#14,#ff

;
.music_info
	db "Impact Issue 5 - 5-5 (1994)(Public Domain)()",0
	db "ST-Module",0

	read "music_end.asm"
