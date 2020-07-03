; Music of Subway Vigilante (1989)(Players Premier)()()
; Ripped by Megachur the 11/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SUBWAYVI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #9000

	read "music_header.asm"

	jp l9143        ; init music
	jp l921a        ; play music
.l900a equ $ + 4
.l9009 equ $ + 3
.l9008 equ $ + 2
.music_end equ $ + 1
.l9007 equ $ + 1
.l9006
	db #00,#01,#00,#00,#00,#00,#00,#00
.l9015 equ $ + 7
	db #00,#00,#30,#30,#30,#30,#00,#0f
.l9019 equ $ + 3
.l9018 equ $ + 2
.l9017 equ $ + 1
.l9016
	db #00,#00,#00,#00,#00
.l901b
	ld a,(l9017)
	and a
	ld b,a
	ret z
	ld a,(l9019)
	cp #80
	jp z,l9044
	ld a,(l9018)
	dec a
	ld (l9018),a
	ret nz
	ld a,(l9019)
	ld (l9018),a
	ld a,(l9015)
	add b
	bit 4,a
	jp nz,l9053
	ld (l9015),a
	ret
.l9044
	ld a,b
	cp #01
	ld a,#0f
	jp z,l904d
	xor a
.l904d
	ld (l9015),a
	jp l9053
.l9053
	xor a
	ld (l9017),a
	ld a,(l9016)
	and a
	jp nz,l91e6
	ret
.l905f
	ld a,#00
	ld (l9015),a
	ld a,#01
.l9066
	ld (l9017),a
	inc hl
	ld a,(hl)
	ld (l9019),a
	ld (l9018),a
	inc hl
	jp l9539
.l9075
	ld a,#0f
	ld (l9015),a
	ld a,#ff
	jp l9066
.l907f
	ld a,h
	ld c,l
	push af
	cp #07
	jp nz,l908b
	res 7,c
	res 6,c
.l908b
	ld a,#c0
	ld b,#f6
	out (c),a
	ld b,#f4
	pop af
	out (c),a
	ld b,#f6
	ld a,#80
	out (c),a
	ld b,#f4
	out (c),c
	xor a
	ld b,#f6
	out (c),a
	ret
.l90ad equ $ + 7
.l90ac equ $ + 6
.l90a7 equ $ + 1
.l90a6
	db #00,#01,#00,#00,#00,#00,#00,#f8
.l90b3 equ $ + 5
.l90b1 equ $ + 3
.l90b0 equ $ + 2
.l90af equ $ + 1
.l90ae
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
	db #0c,#05,#00,#08,#01,#ff,#00,#00
	db #00,#01,#08,#00,#00,#04,#00,#00
	db #00,#00,#00,#f7,#14,#0a,#01,#01
	db #00,#08,#04
	dw l99b6
	db #01
	dw l99b6
.l90dc equ $ + 6
	db #00,#0a,#00,#02,#00,#fe,#00,#00
.l90de
	db #00,#00,#00,#0f,#01,#01,#02,#01
	db #ff,#00,#00,#02,#03,#09,#00,#00
	db #01,#00,#00,#00,#00,#00,#ef,#ff
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9109 equ $ + 3
.l9107 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#0f,#0a
	db #01,#02,#02,#ff,#00,#00,#04,#05
	db #0a,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#df,#ff,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l9137
	ld a,#0f
	ld (l9015),a
	xor a
	ld (l9017),a
	ld (l9016),a
.l9143
	call l91ee
	ld a,(l9009)
	cp #ff
	jp nz,l9152
	inc a
;
.init_music     ; a = 0
;
	ld (l9009),a
.l9152
	ld a,#01
	ld (l90b3),a
	ld (l90de),a
	ld (l9109),a
	xor a
	ld (l9008),a
	push ix
	ld ix,l90b1
	ld a,(l9009)
	add a
	ld b,a
	add a
	add b
	ld l,a
	ld h,#00
	ld de,l999a
	add hl,de
	ld (l9183),hl
	inc hl
	inc hl
	ld (l918d),hl
	inc hl
	inc hl
	ld (l9197),hl
.l9183 equ $ + 1
	ld hl,(l99b6)
	call l91bc
	ld ix,l90dc
.l918d equ $ + 1
	ld hl,(l99c9)
	call l91bc
	ld ix,l9107
.l9197 equ $ + 1
	ld hl,(l99d2)
	call l91bc
	ld a,#01
	ld (l9007),a
	ld h,#07
	ld l,#f8
	call l907f
	ld a,(l9009)
	cp #01
	pop ix
	ret
.l91b0
	halt                            ; test player
	call l921a
	ld a,(l9007)
	and a
	jp nz,l91b0
	ret
.l91bc
	ld (ix+#20),l
	ld (ix+#23),l
	ld (ix+#00),l
	ld (ix+#21),h
	ld (ix+#24),h
	ld (ix+#01),h
	call l963e
	ld (ix+#02),#01
	ld (ix+#0c),#00
	ld (ix+#05),#00
	ld (ix+#04),#00
	ld (ix+#17),#00
	ret
;
.stop_music
.l91e6
;
	call l91ee
	xor a
	ld (l9007),a
	ret
.l91ee
	ld h,#07
	ld l,#ff
	call l907f
	ld hl,l90a6
	ld de,l90a7
	ld bc,#000a
	ld (hl),#00
	ldir
	ld a,#f8
	ld (l90ad),a
.l9207
	ld b,#0b
	ld h,#00
	ld de,l90a6
.l920e
	ld a,(de)
	ld l,a
	push bc
	call l907f
	pop bc
	inc h
	inc de
	djnz l920e
	ret
;
.play_music
.l921a
;
	ld a,(l9006)
	and a
	jp z,l924a
	ld b,a
	xor a
	ld (l9006),a
	ld a,b
	cp #ff
	jp z,l91e6
	cp #fe
	jp nz,l9243
	ld a,#01
	ld (l9016),a
	ld a,#ff
	ld (l9017),a
	ld a,#0a
	ld (l9019),a
	jp l924a
.l9243
	dec a
	ld (l9009),a
	jp l9137
.l924a
	call l901b
	ld a,(l9007)
	and a
	jr z,l92ac
	push ix
	ld ix,l90b1
	bit 7,(ix+#0c)
	call z,l92ad
	ld ix,l90dc
	bit 7,(ix+#0c)
	call z,l92ad
	ld ix,l9107
	bit 7,(ix+#0c)
	call z,l92ad
	ld a,(l9015)
	cpl
	and #0f
	ld b,a
	ld a,(l9008)
	and a
	ld a,#10
	jp nz,l928e
	ld a,(l90ae)
	sub b
	jp nc,l928e
	xor a
.l928e
	ld (l90ae),a
	ld a,(l90af)
	sub b
	jp nc,l9299
	xor a
.l9299
	ld (l90af),a
	ld a,(l90b0)
	sub b
	jp nc,l92a4
	xor a
.l92a4
	ld (l90b0),a
	call l9207
	pop ix
.l92ac
	ret
.l92ad
	ld a,(ix+#02)
	dec (ix+#02)
	jp z,l9437
.l92b6
	ld a,(ix+#0c)
	and #03
	jp z,l9376
	cp #01
	jp z,l92d0
	cp #02
	jp z,l9310
	cp #03
	jp z,l935a
	jp l93a7
.l92d0
	ld a,(ix+#0b)
	and a
	jr z,l92dc
	dec (ix+#0b)
	jp l93a7
.l92dc
	ld a,(ix+#04)
	ld b,(ix+#08)
	add b
	ld (ix+#04),a
	ld b,(ix+#05)
	cp b
	jr z,l92fd
	jr nc,l92f7
	ld a,(ix+#07)
	ld (ix+#0b),a
	jp l93a7
.l92f7
	ld a,(ix+#05)
	ld (ix+#04),a
.l92fd
	ld a,(ix+#0c)
	and #fc
	or #02
	ld (ix+#0c),a
	ld a,(ix+#09)
	ld (ix+#25),a
	jp l93a7
.l9310
	ld a,(ix+#25)
	and a
	jr z,l931c
	dec (ix+#25)
	jp l93a7
.l931c
	ld a,(ix+#04)
	ld b,(ix+#0a)
	add b
	ld (ix+#04),a
	bit 7,a
	jp nz,l933b
	ld b,(ix+#26)
	cp b
	jr z,l9348
	jr c,l9342
	ld a,(ix+#09)
	ld (ix+#25),a
	jr l93a7
.l933b
	ld (ix+#04),#00
	jp l9348
.l9342
	ld a,(ix+#26)
	ld (ix+#04),a
.l9348
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	ld a,(ix+#06)
	ld (ix+#27),a
	jr l93a7
.l935a
	ld a,(ix+#27)
	and a
	jr z,l9365
	dec (ix+#27)
	jr l93a7
.l9365
	ld a,(ix+#0c)
	and #fc
	ld (ix+#0c),a
	ld a,(ix+#2a)
	ld (ix+#29),a
	jp l93a7
.l9376
	ld a,(ix+#29)
	and a
	jr z,l9381
	dec (ix+#29)
	jr l93a7
.l9381
	ld a,(ix+#04)
	ld b,(ix+#28)
	add b
	ld (ix+#04),a
	bit 7,a
	jr nz,l9397
	ld a,(ix+#2a)
	ld (ix+#29),a
	jr l93a7
.l9397
	ld (ix+#04),#00
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	jr l93a7
.l93a7
	ld a,(ix+#04)
	ld hl,l90a6
	ld d,#00
	ld e,(ix+#0f)
	add hl,de
	ld (hl),a
	ld h,(ix+#14)
	ld l,(ix+#13)
	ld d,#00
	ld e,(ix+#10)
	add hl,de
	ld a,(ix+#03)
	push af
	ld a,(hl)
	add (ix+#03)
	ld (ix+#03),a
	call l94b6
	pop af
	ld (ix+#03),a
	inc (ix+#10)
	ld a,(ix+#12)
	xor (ix+#10)
	jr nz,l93e3
	ld a,(ix+#11)
	ld (ix+#10),a
.l93e3
	ld a,(ix+#1a)
	cp #ff
	jr z,l9433
	and a
	jr z,l93f2
	dec (ix+#1a)
	jr nz,l9433
.l93f2
	dec (ix+#1f)
	jr nz,l9405
	ld a,(ix+#1e)
	ld (ix+#1f),a
	ld a,(ix+#1c)
	xor #01
	ld (ix+#1c),a
.l9405
	bit 0,(ix+#1c)
	ld b,(ix+#1b)
	ld a,(ix+#1d)
	jr z,l9414
	add b
	jr l9415
.l9414
	sub b
.l9415
	ld (ix+#1d),a
	ld c,a
	ld b,#ff
	bit 7,a
	jr nz,l9421
	ld b,#00
.l9421
	ld hl,l90a6
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	add hl,bc
	ex de,hl
	ld (hl),d
	dec hl
	ld (hl),e
.l9433
	ld a,(ix+#02)
	ret
.l9437
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (ix+#10),#00
.l9441
	ld a,(hl)
	cp #60
	jr z,l94b4
	cp #61
	jp z,l9542
	cp #64
	jp z,l9505
	cp #65
	jp z,l9516
	cp #fc
	jp z,l905f
	cp #fd
	jp z,l9075
	cp #fe
	jp z,l9524
	cp #ff
	jp z,l950e
	ld b,a
	ld a,(ix+#0c)
	and #fc
	or #01
	ld (ix+#0c),a
	ld a,b
.l9476 equ $ + 1
	sub #00
	ld (ix+#03),a
.l947a
	inc hl
	ld a,(hl)
	dec a
	push hl
	ld h,#00
	ld l,a
	ld de,(l900a)
	add hl,de
	ld a,(hl)
	pop hl
	inc hl
	ld (ix+#02),a
	ld a,(ix+#07)
	ld (ix+#0b),a
	ld (ix+#00),l
	ld (ix+#01),h
	call l94b6
	ld a,(ix+#19)
	ld (ix+#1a),a
	ld a,(ix+#1e)
	srl a
	ld (ix+#1f),a
	ld (ix+#1c),#01
	ld (ix+#1d),#00
	jp l92b6
.l94b4
	jr l947a
.l94b6
	ld a,(ix+#17)
	and a
	call nz,l94fa
	ld a,(ix+#03)
	inc a
	inc a
	add a
	ld d,#00
	ld e,a
	ld hl,l9693
	add hl,de
	push hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l90a6
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	pop hl
	ld a,(l9008)
	and a
	ret z
	ld a,(ix+#0f)
	cp #08
	ret nz
	ld de,#00c0
	add hl,de
	ex de,hl
	ld h,#0b
	ld a,(de)
	ld l,a
	call l907f
	inc de
	inc h
	ld a,(de)
	ld l,a
	call l907f
	ret
.l94fa
	ld a,(ix+#03)
	neg
	and #1f
	ld (l90ac),a
	ret
.l9505
	inc hl
	ld a,(hl)
	inc hl
	ld (l90ac),a
	jp l9539
.l950e
	inc hl
	ld (ix+#04),#00
	jp l9539
.l9516
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld h,#0d
	ld l,a
	call l907f
	pop hl
	jp l9539
.l9524
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jr nz,l9533
	jp l9630
	jp l9441
.l9533
	ld l,(ix+#15)
	ld h,(ix+#16)
.l9539
	ld (ix+#01),h
	ld (ix+#00),l
	jp l9441
.l9542
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld b,a
	add a
	ld h,#00
	ld l,a
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,l9824
	add hl,de
	ld d,#00
	add b
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	inc hl
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld a,(hl)
	ld (ix+#2a),a
	inc hl
	ld a,(hl)
	ld (ix+#28),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	inc hl
	ld a,(hl)
	ld (ix+#11),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld (ix+#14),h
	ld (ix+#13),l
	ld (ix+#10),#00
	ld de,#0010
	add hl,de
	ld a,(hl)
	ld (ix+#17),#00
	and a
	jp z,l95cd
	ld b,a
	or #c0
	ld (l90ad),a
	ld a,b
	bit 7,a
	jp z,l95cd
	cpl
	and #38
	ld (ix+#17),a
.l95cd
	inc hl
	ld a,(ix+#0f)
	cp #08
	jp nz,l95e9
	ld a,(hl)
	ld (l9008),a
	and a
	jp z,l95e9
	inc hl
	inc hl
	ld a,(hl)
	push hl
	ld h,#0d
	ld l,a
	call l907f
	pop hl
.l95e9
	pop hl
	jp l9441
.l95ed
	inc hl
	ld a,(hl)
	inc hl
	push hl
	add a
	add a
	add a
	ld h,#00
	ld l,a
	ld de,l97e3
	add hl,de
	ld (l900a),hl
	pop hl
	jp l9644
.l9602
	inc hl
	ld a,(hl)
	inc hl
	ld (l9476),a
	jp l9644
.l960b
	inc hl
	ld b,(hl)
	inc hl
	ld a,(l9476)
	add b
	ld (l9476),a
	jp l9644
	ld (ix+#0c),#ff
	ld (ix+#03),#00
	ld (ix+#04),#00
	inc hl
	ld a,(hl)
	and a
	jp z,l92b6
	call l91e6
	jp l92b6
.l9630
	call l963e
	jp l9437
.l9636
	pop bc
	jp l91e6
.l963a
	pop bc
	jp l9143
.l963e
	ld l,(ix+#20)
	ld h,(ix+#21)
.l9644
	ld a,(hl)
	cp #fa
	jp z,l960b
	cp #fb
	jp z,l9602
	cp #fc
	jp z,l95ed
	cp #fd
	jp z,l963a
	cp #fe
	jr z,l9687
	cp #ff
	jr z,l9636
	push hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l9982
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#00),e
	ld (ix+#01),d
	ld (ix+#15),e
	ld (ix+#16),d
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#22),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ret
.l9687
	ld l,(ix+#23)
	ld h,(ix+#24)
	jr l9644
.l9693 equ $ + 4
	dw #0000,#0000,#0000,#0e18
	dw #0d4d,#0c8e,#0bda,#0b2f
	dw #0a8f,#09f7,#0968,#08e1
	dw #0861,#07e9,#0777,#070c
	dw #06a7,#0647,#05ed,#0598
	dw #0547,#04fc,#04d4,#0470
	dw #0431,#03f4,#03dc,#0386
	dw #0353,#0324,#02f6,#02cc
	dw #02a4,#027e,#025a,#0238
	dw #0218,#01fa,#01de,#01c3
	dw #01aa,#0192,#017b,#0166
	dw #0152,#013f,#012d,#011c
	dw #010c,#00fd,#00ef,#00e1
	dw #00d5,#00c9,#00be,#00b3
	dw #00a9,#009f,#0096,#008e
	dw #0086,#007f,#0077,#0071
	dw #006a,#0064,#005f,#0059
	dw #0054,#0050,#004b,#0047
	dw #0043,#003f,#003c,#0038
	dw #0035,#0032,#002f,#002d
	dw #002a,#0028,#0026,#0024
	dw #0022,#0020,#001e,#001c
	dw #001b,#0019,#0018,#0016
	dw #0015,#0014,#0013,#0012
	dw #0011,#0010
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #6a,#00,#64,#00,#5e,#00,#5a,#00
	db #54,#00,#4f,#00,#4a,#00,#47,#00
	db #43,#00,#3f,#00,#3b,#00,#38,#00
	db #35,#00,#32,#00,#2f,#00,#2d,#00
	db #2a,#00,#28,#00,#25,#00,#23,#00
	db #21,#00,#20,#00,#1e,#00,#1c,#00
	db #1b,#00,#19,#00,#18,#00,#16,#00
	db #15,#00,#14,#00,#13,#00,#12,#00
	db #11,#00,#10,#00,#0f,#00,#0e,#00
	db #0d,#00,#0c,#00,#0b,#00,#0a,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l97e3
	db #01,#02,#03,#04,#06,#08,#0c,#10
	db #02,#04,#06,#08,#0c,#10,#18,#20
	db #03,#06,#09,#0c,#12,#18,#24,#30
	db #04,#08,#0c,#10,#18,#20,#30,#40
	db #05,#0a,#0f,#14,#1e,#28,#3c,#50
	db #06,#0c,#12,#18,#24,#30,#48,#54
	db #60,#07,#0e,#15,#1c,#2a,#38,#54
	db #70,#08,#10,#18,#20,#30,#40,#60
.l9824 equ $ + 1
	db #80,#01,#0f,#05,#03,#ff,#0b,#64
	db #03,#ff,#1e,#01,#04,#00,#06,#00
	db #0c,#00,#0c,#00,#00,#18,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#0f,#0f,#02
	db #fe,#00,#00,#03,#ff,#00,#05,#01
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#e8,#00,#00,#00,#00,#00
	db #0f,#0f,#01,#ff,#00,#00,#03,#ff
	db #ff,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#00,#00,#09,#09,#01,#f7,#00
	db #00,#00,#ff,#ff,#00,#00,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #aa,#00,#00,#00,#00,#00,#0f,#0f
	db #01,#ff,#00,#00,#03,#ff,#00,#02
	db #03,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#0f,#05,#03,#ff,#0b,#64,#03
	db #ff,#ff,#00,#00,#00,#03,#00,#03
	db #07,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#0f,#05,#03,#ff
	db #0b,#64,#03,#ff,#ff,#00,#00,#00
	db #03,#00,#04,#07,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#0f
	db #05,#03,#ff,#0b,#64,#03,#ff,#ff
	db #00,#00,#00,#03,#00,#05,#07,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#ff,#00,#ff,#00,#00
	db #00,#ff,#00,#05,#05,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#0f,#05,#03
	db #ff,#0b,#64,#03,#ff,#1e,#01,#04
	db #00,#03,#00,#00,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
.l9982
	dw l9a11,l9a16,l9a25,l9a40
	dw l9a7b,l9ab4,l9a55,l9a8e
	dw l9a68,l9aa1,l9ac9,l9af4
.l999a
	dw l99b6,l99c9,l99d2
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00
.l99b6
	db #fc,#05,#fb,#0b,#04,#04,#07,#02
	db #09,#02,#05,#02,#0a,#02,#0b,#02
.l99c9 equ $ + 3
	db #00,#08,#fe,#02,#07,#01,#01,#02
.l99d2 equ $ + 4
	db #07,#01,#01,#fe,#03,#04,#06,#02
	db #08,#02,#03,#04,#06,#02,#08,#02
	db #03,#04,#06,#02,#08,#02,#03,#04
	db #06,#02,#08,#02,#03,#04,#06,#02
	db #08,#02,#03,#04,#06,#02,#08,#02
	db #03,#04,#06,#02,#08,#02,#03,#04
	db #06,#02,#08,#02,#03,#04,#06,#02
	db #08,#02,#00,#04,#03,#04,#06,#02
.l9a11 equ $ + 3
	db #08,#02,#fe,#61,#08,#0d,#09,#fe
.l9a16
	db #61,#01,#64,#1e,#31,#01,#31,#02
.l9a25 equ $ + 7
	db #31,#02,#31,#01,#31,#02,#fe,#61
	db #03,#64,#1e,#49,#01,#49,#01,#49
	db #01,#49,#01,#61,#01,#64,#1e,#31
	db #02,#61,#03,#64,#1e,#49,#01,#49
.l9a40 equ $ + 2
	db #01,#fe,#61,#02,#65,#0e,#19,#01
	db #19,#01,#23,#01,#25,#01,#28,#01
.l9a55 equ $ + 7
	db #19,#01,#2f,#01,#31,#01,#fe,#61
	db #02,#17,#01,#17,#01,#21,#01,#23
	db #01,#27,#01,#17,#01,#2d,#01,#2f
.l9a68 equ $ + 2
	db #01,#fe,#61,#02,#12,#01,#12,#01
	db #1c,#01,#1e,#01,#22,#01,#12,#01
.l9a7b equ $ + 5
	db #28,#01,#2a,#01,#fe,#61,#04,#19
	db #01,#19,#01,#23,#01,#25,#01,#28
	db #01,#19,#01,#2f,#01,#31,#01,#fe
.l9a8e
	db #61,#04,#17,#01,#17,#01,#21,#01
	db #23,#01,#27,#01,#17,#01,#2d,#01
.l9aa1 equ $ + 3
	db #2f,#01,#fe,#61,#04,#12,#01,#12
	db #01,#1c,#01,#1e,#01,#22,#01,#12
.l9ab4 equ $ + 6
	db #01,#28,#01,#2a,#01,#fe,#61,#05
	db #3d,#09,#3d,#09,#61,#06,#3b,#09
	db #36,#05,#61,#07,#36,#05,#61,#06
.l9ac9 equ $ + 3
	db #36,#04,#fe,#61,#00,#3d,#08,#3b
	db #02,#3d,#05,#42,#05,#44,#04,#40
	db #05,#42,#05,#3f,#04,#40,#05,#3f
	db #05,#3d,#04,#44,#08,#42,#02,#44
	db #05,#49,#05,#47,#04,#44,#05,#47
.l9af4 equ $ + 6
	db #05,#40,#04,#3d,#09,#fe,#61,#00
	db #49,#08,#4b,#02,#4c,#07,#47,#02
	db #4c,#02,#4b,#07,#4c,#02,#4e,#02
	db #50,#02,#51,#02,#4e,#06,#4c,#04
	db #fe,#00,#00
;
.music_info
	db "Subway Vigilante (1989)(Players Premier)()",0
	db "",0

	read "music_end.asm"
