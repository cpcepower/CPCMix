; Music of Boxon 2 Edito B (1995)(Da Boxon Team)()(ST-Module)
; Ripped by Megachur the 06/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOXON2EB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #7400

	read "music_header.asm"

	jp l740b
	jp l7493
	jp l7477
	ld h,(hl)
	inc b
;
.init_music
.l740b
;
	ld b,#03
	ld ix,l77da
	ld iy,l7706
	ld de,#001c
.l7418
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
	djnz l7418
	ld a,#06
	ld (l74bb),a
	ld a,d
	ld (l74cf),a
	inc a
	ld (l74b6),a
	ld a,#38
	ld (l74c0),a
	ld a,#ff
	ld (l7702),a
	ld (l7703),a
	ld (l7704),a
	ld (l7705),a
	ld a,#0c
	ld c,d
	call l76e4
	ld a,#0d
	ld c,d
	jp l76e4
;
.stop_music
.l7477
;
	ld a,#07
	ld c,#3f
	call l76e4
	ld a,#08
	ld c,#00
	call l76e4
	ld a,#09
	ld c,#00
	call l76e4
	ld a,#0a
	ld c,#00
	jp l76e4
;
.play_music
.l7493
;
	ld hl,l74b6
	dec (hl)
	ld ix,l77da
	ld bc,l77e8
	call l7549
	ld ix,l77f6
	ld bc,l7804
	call l7549
	ld ix,l7812
	ld bc,l7820
	call l7549
.l74b6 equ $ + 1
	ld a,#04
	or a
	jr nz,l74bf
.l74bb equ $ + 1
	ld a,#06
	ld (l74b6),a
.l74c0 equ $ + 1
.l74bf
	ld a,#28
	ld hl,l7703
	cp (hl)
	jr z,l74ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l76e4
.l74cf equ $ + 1
.l74ce
	ld a,#01
	ld hl,l7702
	cp (hl)
	jr z,l74dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l76e4
.l74de equ $ + 1
.l74dd
	ld a,#0a
	ld hl,l7704
	cp (hl)
	jr z,l74ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l76e4
.l74ed equ $ + 1
.l74ec
	ld a,#0e
	ld hl,l7705
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l76e4
.l74fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l75fa
.l7509
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
	jp l76e4
.l7523
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l7538
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l7538
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l755c
.l7549
	ld a,(l74b6)
	or a
	jp nz,l75fa
	dec (ix+#06)
	jp nz,l75fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l755c
	ld a,(hl)
	or a
	jr z,l74fa
	cp #fe
	jr z,l7509
	cp #ff
	jr z,l7523
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l770c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l7598
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l7598
	and #7f
	ld (ix+#06),a
	jr l75eb
.l7598
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l75ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l75ac
	add a
	add a
	add a
	ld e,a
	ld hl,l7842
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
	jr z,l75eb
	cp #f0
	jp z,l76a0
	cp #d0
	jp z,l76bc
	cp #b0
	jp z,l76c4
	cp #80
	jp nc,l76cc
	cp #10
	jr nz,l75eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l75eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l75fa
	ld a,(ix+#17)
	or a
	jr nz,l760e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l760e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l7639
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l770c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l7639
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
	call l76e4
	ld c,h
	ld a,(ix+#03)
	call l76e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l7677
	and #0f
	sub (ix+#0a)
	jr nc,l766d
	xor a
.l766d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l76e4
.l7677
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
	jr z,l7694
	ld b,a
	ld a,c
	ld (l74cf),a
	ld a,b
	sub #40
.l7694
	ld (l769b),a
	ld a,(l74c0)
.l769b equ $ + 1
	res 4,a
	ld (l74c0),a
	ret
.l76a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l78c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l75eb
.l76bc
	inc hl
	ld a,(hl)
	ld (l74bb),a
	jp l75eb
.l76c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l75eb
.l76cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l74ed),a
	inc hl
	ld a,(hl)
	ld (l74de),a
	jp l75eb
.l76e4
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
.l7705 equ $ + 3
.l7704 equ $ + 2
.l7703 equ $ + 1
.l7702
	dw #2801,#0e0a
.l7706
	dw l7b02,l7b23,l7b44
.l770c
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
.l77da equ $ + 4
	db #00,#00,#00,#00,#9c,#7b,#00,#01
	db #08,#00,#01,#24,#00,#10,#00,#df
.l77e8 equ $ + 2
	db #05,#7b,#e2,#78,#22,#79,#42,#79
	db #08,#00,#03,#1d,#de,#01,#00,#00
.l77f6
	db #ad,#7c,#02,#03,#09,#02,#06,#24
.l7804 equ $ + 6
	db #00,#00,#00,#e7,#26,#7b,#e2,#79
	db #22,#7a,#42,#7a,#00,#00,#0f,#11
.l7812 equ $ + 4
	db #de,#01,#00,#00,#ca,#7c,#04,#05
	db #0a,#10,#26,#00,#00,#00,#00,#ef
.l7820 equ $ + 2
	db #47,#7b,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l7842 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#78,#22,#79
	db #42,#79,#08,#00,#62,#79,#a2,#79
	db #c2,#79,#00,#00,#e2,#79,#22,#7a
	db #42,#7a,#00,#00,#62,#7a,#a2,#7a
	db #42,#79,#10,#10,#e2,#78,#c2,#7a
	db #42,#79,#00,#00,#e2,#78,#e2,#7a
	db #42,#79,#00,#00,#dc,#72,#dc,#72
	db #dc,#72,#00,#00,#dc,#72,#dc,#72
	db #dc,#72,#00,#00,#dc,#72,#dc,#72
	db #dc,#72,#00,#00,#dc,#72,#dc,#72
	db #dc,#72,#00,#00,#dc,#72,#dc,#72
	db #dc,#72,#00,#00,#dc,#72,#dc,#72
	db #dc,#72,#00,#00,#dc,#72,#dc,#72
	db #dc,#72,#00,#00,#dc,#72,#dc,#72
	db #dc,#72,#00,#00,#dc,#72,#dc,#72
	db #dc,#72,#00,#00,#dc,#72,#dc,#72
.l78c2 equ $ + 4
	db #dc,#72,#00,#00,#dc,#72,#dc,#72
	db #dc,#72,#dc,#72,#dc,#72,#dc,#72
	db #dc,#72,#dc,#72,#dc,#72,#dc,#72
	db #dc,#72,#dc,#72,#dc,#72,#dc,#72
	db #dc,#72,#dc,#72,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#09,#08,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#80,#00,#00,#01
	db #80,#01,#00,#02,#80,#02,#00,#03
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#00,#00,#00,#05,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#0b,#0b,#0b,#0a
	db #09,#07,#06,#04,#03,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0b,#08,#05,#09
	db #06,#03,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7b02 equ $ + 4
	db #00,#00,#00,#00,#00,#65,#7b,#00
	db #65,#7b,#00,#65,#7b,#00,#65,#7b
	db #00,#65,#7b,#00,#65,#7b,#00,#e7
	db #7b,#00,#e7,#7b,#00,#e7,#7b,#00
.l7b23 equ $ + 5
	db #e7,#7b,#80,#02,#7b,#00,#a1,#7c
	db #00,#a1,#7c,#00,#88,#7c,#00,#88
	db #7c,#00,#a1,#7c,#00,#88,#7c,#00
	db #88,#7c,#00,#88,#7c,#00,#88,#7c
.l7b44 equ $ + 6
	db #00,#88,#7c,#80,#23,#7b,#00,#c8
	db #7c,#00,#c8,#7c,#00,#ba,#7c,#00
	db #ba,#7c,#00,#c8,#7c,#00,#cb,#7c
	db #00,#f1,#7c,#00,#f1,#7c,#00,#f1
	db #7c,#00,#f1,#7c,#80,#44,#7b,#ae
	db #e0,#0a,#fe,#01,#ae,#00,#fe,#01
	db #ae,#00,#fe,#01,#ae,#00,#fe,#01
	db #ae,#00,#fe,#01,#ae,#00,#fe,#01
	db #ae,#00,#fe,#01,#ae,#00,#fe,#01
	db #ae,#00,#fe,#01,#ae,#00,#fe,#01
	db #ae,#00,#fe,#01,#ae,#00,#fe,#01
	db #ae,#00,#fe,#01,#ae,#00,#fe,#01
	db #ae,#00,#fe,#01,#ae,#00,#fe,#01
	db #ae,#00,#fe,#01,#ae,#00,#fe,#01
	db #ae,#00,#fe,#01,#ae,#00,#fe,#01
	db #ae,#00,#fe,#01,#ae,#00,#fe,#01
	db #ae,#00,#fe,#01,#ae,#00,#fe,#01
	db #ae,#00,#fe,#01,#ae,#00,#fe,#01
	db #ae,#00,#fe,#01,#ae,#00,#fe,#01
	db #ae,#00,#fe,#01,#ae,#00,#fe,#01
	db #ae,#00,#fe,#01,#ae,#00,#fe,#01
	db #ff,#ae,#e0,#0a,#fe,#01,#ae,#e0
	db #0a,#fe,#01,#ae,#c0,#0a,#fe,#01
	db #ae,#e0,#0a,#fe,#01,#ae,#e0,#0a
	db #fe,#01,#ae,#e0,#0a,#fe,#01,#ae
	db #e0,#0a,#fe,#01,#ae,#e0,#0a,#fe
	db #01,#ae,#e0,#0a,#fe,#01,#ae,#e0
	db #0a,#fe,#01,#ae,#e0,#0a,#fe,#01
	db #ae,#e0,#0a,#fe,#01,#ae,#c0,#0a
	db #fe,#01,#ae,#e0,#0a,#fe,#01,#ae
	db #e0,#0a,#fe,#01,#ae,#e0,#0a,#fe
	db #01,#ad,#e0,#1f,#fe,#01,#ad,#e0
	db #1f,#fe,#01,#ad,#c0,#08,#fe,#01
	db #ad,#e0,#1f,#fe,#01,#ad,#e0,#1f
	db #fe,#01,#ad,#e0,#1f,#fe,#01,#ad
	db #e5,#1f,#fe,#01,#ad,#e0,#1f,#fe
	db #01,#ad,#e0,#1f,#fe,#01,#ad,#e0
	db #1f,#fe,#01,#ad,#e0,#1f,#fe,#01
	db #ad,#c0,#08,#fe,#01,#ad,#e0,#1f
	db #fe,#01,#ad,#e0,#1f,#fe,#01,#ad
	db #c0,#08,#fe,#01,#ad,#e0,#1f,#fe
	db #01,#ff,#2e,#08,#01,#2e,#08,#02
	db #2e,#08,#01,#2e,#08,#02,#2e,#08
	db #01,#2e,#08,#02,#2e,#08,#01,#2e
	db #08,#02,#ff,#2e,#08,#01,#2e,#08
	db #02,#2e,#08,#01,#2e,#08,#02,#2e
	db #08,#01,#2e,#08,#02,#2e,#08,#01
	db #2e,#08,#02,#ff,#22,#08,#03,#29
	db #94,#2b,#82,#29,#82,#27,#88,#29
	db #98,#ff,#fe,#40,#ff,#2e,#02,#04
	db #30,#82,#31,#82,#ae,#04,#30,#82
	db #31,#82,#ae,#04,#30,#82,#31,#92
	db #2e,#82,#30,#82,#31,#82,#ae,#04
	db #30,#82,#31,#82,#ae,#04,#30,#82
	db #31,#92,#ff,#bd,#05,#ba,#05,#bc
	db #05,#ba,#05,#bd,#05,#ba,#05,#bc
	db #05,#ba,#05,#bd,#05,#ba,#05,#bc
	db #05,#ba,#05,#bd,#05,#ba,#05,#bc
	db #05,#ba,#05,#bd,#05,#ba,#05,#bc
	db #05,#ba,#05,#bd,#05,#ba,#05,#bc
	db #05,#ba,#05,#bd,#05,#ba,#05,#bc
	db #05,#ba,#05,#bd,#05,#ba,#05,#bc
	db #05,#ba,#05,#bc,#05,#b9,#05,#ba
	db #05,#b9,#05,#bc,#05,#b9,#05,#ba
	db #05,#b9,#05,#bc,#05,#b9,#05,#ba
	db #05,#b9,#05,#bc,#05,#b9,#05,#ba
	db #05,#b9,#05,#bc,#05,#b9,#05,#ba
	db #05,#b9,#05,#bc,#05,#b9,#05,#ba
	db #05,#b9,#05,#bc,#05,#b9,#05,#ba
	db #05,#b9,#05,#bc,#05,#b9,#05,#ba
	db #05,#b9,#05,#ff
;
.music_info
	db "Boxon 2 Edito B (1995)(Da Boxon Team)()",0
	db "ST-Module",0

	read "music_end.asm"
