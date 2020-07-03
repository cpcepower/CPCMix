; Music of Voyage '93 MegaDemo - Intro 1 (1993)(Beng!)(Kangaroo)(ST-Module)
; Ripped by Megachur the 01/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "VO93MEI1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7000

	read "music_header.asm"

	jp l700b
	jp l7093
	jp l7077
	db #66,#04
;
.init_music
.l700b
;
	ld b,#03
	ld ix,l73da
	ld iy,l7306
	ld de,#001c
.l7018
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
	djnz l7018
	ld a,#06
	ld (l70bb),a
	ld a,d
	ld (l70cf),a
	inc a
	ld (l70b6),a
	ld a,#38
	ld (l70c0),a
	ld a,#ff
	ld (l7302),a
	ld (l7303),a
	ld (l7304),a
	ld (l7305),a
	ld a,#0c
	ld c,d
	call l72e4
	ld a,#0d
	ld c,d
	jp l72e4
;
.stop_music
.l7077
;
	ld a,#07
	ld c,#3f
	call l72e4
	ld a,#08
	ld c,#00
	call l72e4
	ld a,#09
	ld c,#00
	call l72e4
	ld a,#0a
	ld c,#00
	jp l72e4
;
.play_music
.l7093
;
	ld hl,l70b6
	dec (hl)
	ld ix,l73da
	ld bc,l73e8
	call l7149
	ld ix,l73f6
	ld bc,l7404
	call l7149
	ld ix,l7412
	ld bc,l7420
	call l7149
.l70b6 equ $ + 1
	ld a,#00
	or a
	jr nz,l70bf
.l70bb equ $ + 1
	ld a,#00
	ld (l70b6),a
.l70c0 equ $ + 1
.l70bf
	ld a,#00
	ld hl,l7303
	cp (hl)
	jr z,l70ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l72e4
.l70cf equ $ + 1
.l70ce
	ld a,#00
	ld hl,l7302
	cp (hl)
	jr z,l70dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l72e4
.l70de equ $ + 1
.l70dd
	ld a,#00
	ld hl,l7304
	cp (hl)
	jr z,l70ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l72e4
.l70ed equ $ + 1
.l70ec
	ld a,#00
	ld hl,l7305
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l72e4
.l70fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l71fa
.l7109
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
	jp l72e4
.l7123
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l7138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l7138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l715c
.l7149
	ld a,(l70b6)
	or a
	jp nz,l71fa
	dec (ix+#06)
	jp nz,l71fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l715c
	ld a,(hl)
	or a
	jr z,l70fa
	cp #fe
	jr z,l7109
	cp #ff
	jr z,l7123
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l730c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l7198
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l7198
	and #7f
	ld (ix+#06),a
	jr l71eb
.l7198
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l71ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l71ac
	add a
	add a
	add a
	ld e,a
	ld hl,l7442
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
	jr z,l71eb
	cp #f0
	jp z,l72a0
	cp #d0
	jp z,l72bc
	cp #b0
	jp z,l72c4
	cp #80
	jp nc,l72cc
	cp #10
	jr nz,l71eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l71eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l71fa
	ld a,(ix+#17)
	or a
	jr nz,l720e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l720e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l7239
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l730c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l7239
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
	call l72e4
	ld c,h
	ld a,(ix+#03)
	call l72e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l7277
	and #0f
	sub (ix+#0a)
	jr nc,l726d
	xor a
.l726d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l72e4
.l7277
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
	jr z,l7294
	ld b,a
	ld a,c
	ld (l70cf),a
	ld a,b
	sub #40
.l7294
	ld (l729b),a
	ld a,(l70c0)
.l729b equ $ + 1
	bit 0,a
	ld (l70c0),a
	ret
.l72a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l74c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l71eb
.l72bc
	inc hl
	ld a,(hl)
	ld (l70bb),a
	jp l71eb
.l72c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l71eb
.l72cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l70ed),a
	inc hl
	ld a,(hl)
	ld (l70de),a
	jp l71eb
.l72e4
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
.l7305 equ $ + 3
.l7304 equ $ + 2
.l7303 equ $ + 1
.l7302
	db #ff,#ff,#ff,#ff
.l7306
	dw l7762,l7777,l778c
.l730c
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
.l73da equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l73e8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l73f6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l7404 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7412 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l7420 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l7442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#74,#22,#75
	db #42,#75,#00,#00,#dc,#6e,#dc,#6e
	db #dc,#6e,#00,#00,#62,#75,#a2,#75
	db #c2,#75,#00,#00,#e2,#75,#22,#76
	db #42,#76,#00,#00,#62,#76,#a2,#76
	db #c2,#76,#00,#00,#dc,#6e,#dc,#6e
	db #dc,#6e,#00,#00,#dc,#6e,#dc,#6e
	db #dc,#6e,#00,#00,#dc,#6e,#dc,#6e
	db #dc,#6e,#00,#00,#dc,#6e,#dc,#6e
	db #dc,#6e,#00,#00,#e2,#76,#22,#77
	db #42,#75,#08,#18,#dc,#6e,#dc,#6e
	db #dc,#6e,#00,#00,#dc,#6e,#dc,#6e
	db #dc,#6e,#00,#00,#62,#76,#42,#77
	db #42,#75,#00,#00,#dc,#6e,#dc,#6e
	db #dc,#6e,#00,#00,#dc,#6e,#dc,#6e
	db #dc,#6e,#00,#00,#dc,#6e,#dc,#6e
.l74c2 equ $ + 4
	db #dc,#6e,#00,#00,#dc,#6e,#dc,#6e
	db #dc,#6e,#dc,#6e,#dc,#6e,#dc,#6e
	db #dc,#6e,#dc,#6e,#dc,#6e,#dc,#6e
	db #dc,#6e,#dc,#6e,#dc,#6e,#dc,#6e
	db #dc,#6e,#dc,#6e,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#40,#00
	db #80,#00,#c0,#00,#00,#01,#40,#01
	db #80,#01,#c0,#01,#00,#02,#40,#02
	db #80,#02,#c0,#02,#00,#03,#40,#03
	db #80,#03,#c0,#03,#00,#04,#40,#04
	db #80,#04,#c0,#04,#00,#05,#40,#05
	db #80,#05,#c0,#05,#00,#06,#40,#06
	db #80,#06,#c0,#06,#00,#07,#40,#07
	db #80,#07,#c0,#07,#0f,#0f,#0f,#0e
	db #0e,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#08,#07,#07,#07,#06
	db #06,#06,#03,#00,#00,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#30,#00
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
	db #00,#00,#00,#00,#0e,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #80,#80,#80,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7762 equ $ + 4
	db #00,#00,#00,#00,#00,#a1,#77,#00
	db #b1,#77,#00,#14,#78,#00,#14,#78
	db #00,#b1,#77,#00,#b1,#77,#80,#68
.l7777 equ $ + 1
	db #77,#00,#77,#78,#00,#a4,#78,#00
	db #d1,#78,#00,#d1,#78,#00,#fe,#78
.l778c equ $ + 6
	db #00,#fe,#78,#80,#7d,#77,#00,#2b
	db #79,#00,#2e,#79,#00,#31,#79,#00
	db #31,#79,#00,#45,#79,#00,#45,#79
	db #80,#92,#77,#00,#30,#37,#03,#02
	db #35,#83,#33,#83,#32,#83,#30,#82
	db #2e,#82,#ff,#ae,#02,#ed,#04,#ed
	db #04,#ed,#04,#ed,#04,#ed,#04,#ed
	db #04,#ed,#04,#3a,#02,#03,#6d,#02
	db #04,#6d,#82,#2e,#02,#02,#ae,#02
	db #ed,#04,#ed,#04,#ed,#04,#ed,#04
	db #ed,#04,#ed,#04,#ed,#04,#3a,#02
	db #03,#6d,#02,#04,#6d,#82,#6d,#82
	db #2e,#02,#02,#6d,#02,#04,#6d,#82
	db #6d,#82,#3a,#02,#03,#6d,#02,#04
	db #6d,#82,#2e,#02,#02,#ae,#02,#ed
	db #04,#6d,#82,#6d,#82,#ed,#04,#ed
	db #04,#ba,#03,#ed,#04,#6d,#82,#ed
	db #04,#ed,#04,#6d,#82,#ff,#ae,#02
	db #ed,#04,#ed,#04,#ed,#04,#ed,#04
	db #ed,#04,#ed,#04,#ed,#04,#3a,#02
	db #03,#6d,#02,#04,#6d,#82,#2e,#02
	db #02,#ae,#02,#ed,#04,#ed,#04,#ed
	db #04,#ed,#04,#ed,#04,#ed,#04,#ed
	db #04,#3a,#02,#03,#6d,#02,#04,#6d
	db #82,#6d,#82,#2e,#02,#02,#6d,#02
	db #04,#6d,#82,#6d,#82,#3a,#02,#03
	db #6d,#02,#04,#6d,#82,#2e,#02,#02
	db #ae,#02,#ed,#04,#6d,#82,#6d,#82
	db #ed,#04,#ed,#04,#ba,#03,#ed,#04
	db #6d,#82,#ed,#04,#ed,#04,#6d,#82
	db #ff,#27,#0e,#c0,#1e,#27,#82,#2a
	db #08,#cc,#19,#2c,#02,#c0,#16,#2d
	db #02,#c0,#15,#2c,#02,#c0,#16,#2a
	db #02,#c0,#19,#27,#0e,#c0,#1e,#27
	db #82,#2a,#06,#c0,#19,#25,#06,#c0
	db #21,#26,#04,#c0,#20,#ff,#27,#0e
	db #c0,#1e,#27,#82,#2a,#08,#cc,#19
	db #2c,#02,#c0,#16,#2d,#02,#c0,#15
	db #2c,#02,#c0,#16,#2a,#02,#c0,#19
	db #27,#0e,#c0,#1e,#27,#82,#2a,#06
	db #c0,#19,#25,#06,#c0,#21,#26,#04
	db #c0,#20,#ff,#27,#0e,#c0,#1e,#27
	db #82,#2a,#08,#cc,#19,#2c,#02,#c0
	db #16,#2d,#02,#c0,#15,#2c,#02,#c0
	db #16,#2a,#02,#c0,#19,#27,#0e,#c0
	db #1e,#27,#82,#2a,#06,#c0,#19,#25
	db #06,#c0,#21,#26,#04,#c0,#20,#ff
	db #27,#0e,#c0,#1e,#27,#82,#2a,#08
	db #cc,#19,#2c,#02,#c0,#16,#2d,#02
	db #c0,#15,#2c,#02,#c0,#16,#2a,#02
	db #c0,#19,#27,#0e,#c0,#1e,#27,#82
	db #2a,#06,#c0,#19,#25,#06,#c0,#21
	db #26,#04,#c0,#20,#ff,#00,#40,#ff
	db #00,#40,#ff,#46,#06,#09,#44,#86
	db #42,#84,#3f,#8c,#3d,#82,#3f,#92
	db #44,#86,#42,#86,#41,#84,#ff,#46
	db #04,#09,#49,#82,#4b,#84,#46,#82
	db #49,#82,#4b,#82,#4e,#83,#50,#83
	db #4e,#83,#4b,#83,#4e,#82,#4b,#82
	db #46,#84,#49,#82,#4b,#84,#46,#82
	db #49,#82,#44,#82,#46,#90,#ff

;
.music_info
	db "Voyage '93 MegaDemo - Intro 1 (1993)(Beng!)(Kangaroo)",0
	db "ST-Module",0

	read "music_end.asm"
