; Music of Flash Gordon (1988)(Mastertronic)(Tiny William)()
; Ripped by Megachur the 11/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FLASHGOR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #a080
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

;
.init_music
;
	ex af,af'
	xor a
	ld (la5bb),a
	ld (la5bc),a
	ex af,af'
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,la74f
	add hl,bc
	ld a,(hl)
	ld (la169),a
	inc hl
	ld ix,la0d9
	ld c,#20
	ld a,#03
.la0a2
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#03),e
	ld (ix+#04),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	pop hl
	ld (ix+#01),e
	ld (ix+#02),d
	add ix,bc
	dec a
	jr nz,la0a2
	ld (la3f0),a
	inc a
	ld (la139),a
	ld (la5bb),a
	ret
.la0d9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.la0f9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.la119
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
.la139
	db #00
;
.play_music
;
	call la613
	ld a,(la5bb)
	or a
	jp z,la196
.la145 equ $ + 1
	ld a,#00
	ld (la192),a
	ld hl,la139
	dec (hl)
	jr nz,la16a
	ld b,(hl)
	ld ix,la0d9
	call la306
	ld ix,la0f9
	call la306
	ld ix,la119
	call la306
	ld hl,la139
.la169 equ $ + 1
	ld (hl),#01
.la16a
	ld ix,la0d9
	call la3a4
	ld (la4b3),hl
	ld (la4bb),a
	ld ix,la0f9
	call la3a4
	ld (la4b5),hl
	ld (la4bc),a
	ld ix,la119
	call la3a4
	ld (la4b7),hl
	ld (la4bd),a
.la192 equ $ + 1
	ld a,#00
	ld (la4b9),a
.la196
	ld a,(la5bc)
	or a
	jr z,la1c6
	ld hl,(la4c0)
	ld (la4b3),hl
	ld hl,(la4c4)
	ld (la4b7),hl
	ld a,(la4c6)
	ld (la4b9),a
	ld a,(la4ba)
	or #2d
.la1b3
	ld hl,la4c7
	and (hl)
	ld (la4ba),a
	ld a,(la4c8)
	ld (la4bb),a
	ld a,(la4ca)
	ld (la4bd),a
.la1c6
	ld a,(la5bb)
	ld hl,la5bc
	or (hl)
	jr nz,la1e5
	ret
;
.stop_music
.la1d0
;
	xor a
	ld (la5bb),a
	ld (la5bc),a
	call la20b
	xor a
	ld (la4bb),a
	ld (la4bc),a
	ld (la4bd),a
	ret
.la1e5
	ld hl,la4be
	ld d,#0b
.la1ea
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,la1ea
	ret
.la20b
	ld de,#0d00
.la20e
	call la218
	dec d
	jp p,la20e
	ld de,#073f
.la218
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	ret
	db #ca,#b2,#b6,#bb,#79,#a8,#a3,#10
	db #92,#8a,#4f,#39,#61,#b7,#01
	xor a
	ld (la5bb),a
	pop hl
	jp la1d0
	ld c,(ix+#05)
	ld b,(ix+#06)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,la26c
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.la26c
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp la314
	ld a,(ix+#1f)
	ld c,a
	and #07
	ld hl,la498
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp la314
	ld a,(ix+#1f)
	ld c,a
	and #38
	ld hl,la498
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp la314
	ld hl,la498
	ld a,(ix+#1f)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr la314
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr la314
	ld a,(de)
	inc de
	ld (la3f0),a
	jr la314
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr la314
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr la314
	ld (ix+#1d),b
	jr la314
	ld (ix+#1d),#40
	jr la314
	ld (ix+#1d),#c0
	jr la314
	set 1,(ix+#00)
	jr la314
	ld (ix+#13),b
	res 5,(ix+#00)
	jr la340
.la306
	dec (ix+#10)
	jr nz,la34d
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.la314
	ld a,(de)
	inc de
	or a
	jp m,la35e
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,la326
	ld (la145),a
.la326
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.la340
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.la34d
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,la35a
	inc (ix+#12)
	ret
.la35a
	dec (ix+#12)
	ret
.la35e
	cp #c0
	jr c,la39c
	add #20
	jr c,la381
	add #10
	jr c,la387
	add #10
	ld c,a
	ld hl,la575
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr la314
.la381
	inc a
	ld (ix+#11),a
	jr la314
.la387
	ld (ix+#19),a
	ld a,(de)
	inc de
	ld (ix+#14),a
	ld a,(de)
	inc de
	ld (ix+#15),a
	ld a,(de)
	inc de
	ld (ix+#17),a
	jp la314
.la39c
	ld hl,la1b3
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.la3a4
	ld c,(ix+#00)
	bit 5,c
	jr z,la3ef
	ld a,(ix+#16)
	sub #10
	jr nc,la3d7
	bit 6,c
	jr z,la3dc
	add (ix+#13)
	jr nc,la3bc
	sbc a
.la3bc
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,la3d2
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr la3ef
.la3d2
	ld (ix+#18),a
	jr la3ef
.la3d7
	ld (ix+#16),a
	jr la3ef
.la3dc
	cpl
	sub #0f
	add (ix+#13)
	jr c,la3e5
	sub a
.la3e5
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,la3ef
	res 5,c
.la3f0 equ $ + 1
.la3ef
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,la407
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.la407
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,la4b5
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,la469
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,la432
	bit 0,c
	jr nz,la450
.la432
	bit 5,l
	jr nz,la442
	sub (ix+#1b)
	jr nc,la44d
	set 5,(ix+#1d)
	sub a
	jr la44d
.la442
	add (ix+#1b)
	cp b
	jr c,la44d
	res 5,(ix+#1d)
	ld a,b
.la44d
	ld (ix+#1c),a
.la450
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,la45b
	dec d
.la45b
	add #a0
	jr c,la467
.la45f
	sla e
	rl d
	add #18
	jr nc,la45f
.la467
	add hl,de
	ex de,hl
.la469
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,la494
	ld b,(ix+#0e)
	djnz la491
	ld c,(ix+#0d)
	bit 7,c
	jr z,la480
	dec b
.la480
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr la494
.la491
	ld (ix+#0e),b
.la494
	cpl
	and #03
.la498 equ $ + 1
	ld a,#38
	jr nz,la4a5
	ld a,(la145)
	xor #08
	ld (la192),a
	ld a,#07
.la4a5
	ld hl,la4ba
	xor (hl)
	and (ix+#1f)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.la4ba equ $ + 7
.la4b9 equ $ + 6
.la4b7 equ $ + 4
.la4b5 equ $ + 2
.la4b3
	db #00,#00,#00,#00,#00,#00,#00,#3f
.la4c1 equ $ + 6
.la4c0 equ $ + 5
.la4be equ $ + 3
.la4bd equ $ + 2
.la4bc equ $ + 1
.la4bb
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.la4ca equ $ + 7
.la4c8 equ $ + 5
.la4c7 equ $ + 4
.la4c6 equ $ + 3
.la4c4 equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00,#ff
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010b,#00fc
	dw #00ef,#00e1,#00d6,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0085,#007e
	dw #0077,#0070,#006b,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0042,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
.la575
	db #0f
	db #10,#13,#16,#19,#1d,#20,#23,#26
	db #29,#2b,#2d,#2f,#31,#33,#00,#87
	db #00,#03,#07,#87,#00,#04,#07,#87
	db #00,#02,#07,#87,#00,#04,#07,#0c
	db #87,#07,#0c,#0f,#87,#07,#0c,#10
	db #87,#03,#07,#0c,#87,#04,#07,#0c
	db #87,#00,#0c,#87,#00,#03,#87,#00
	db #04,#87,#00,#05,#87,#00,#07,#87
.la5bc equ $ + 6
.la5bb equ $ + 5
.music_end equ $ + 5
	db #00,#00,#0c,#0c,#87,#00,#00
	ld hl,la5bc
	ld (hl),#00
	ld hl,la6ab
	add a
	add l
	ld l,a
	jr nc,la5ca
.la5ca
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,la71d
.la5d2
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz la5d2
	ld a,(la71e)
	ld (la72e),a
	ld hl,(la71f)
	ld (la4c0),hl
	ld de,(la721)
	ld (la4c4),de
	ld a,l
	ld (la4c6),a
	ld a,(la724)
	ld (la4c7),a
	ld a,(la723)
	ld e,a
	ld d,#0c
	call la218
	ld a,(la72d)
	ld e,a
	ld d,#0d
	call la218
	ld hl,la5bc
	inc (hl)
	ret
.la60d
	ld (la5bc),a
	jp la20b
.la613
	call la730
	ld a,(la5bc)
	or a
	ret z
	ld a,(la71d)
	or a
	jr z,la60d
	dec a
	ld (la71d),a
	ld a,(la72e)
	or a
	jr nz,la65a
	ld a,(la72b)
	or a
	ret z
	dec a
	ld (la72b),a
	ld a,(la71e)
	ld (la72e),a
	ld a,(la72c)
	or a
	jr z,la643
	ld a,(la74b)
.la643
	ld b,a
	ld a,(la71f)
	add b
	ld (la4c0),a
	ld a,(la720)
	add b
	and #0f
	ld (la4c1),a
	ld hl,(la721)
	ld (la4c4),hl
.la65a
	ld hl,la72e
	dec (hl)
	ld a,(la729)
	or a
	jr z,la681
	jp p,la674
	ld hl,(la4c0)
	ld de,(la725)
	add hl,de
	ld (la4c0),hl
	jr la681
.la674
	ld hl,(la4c0)
	ld de,(la725)
	or a
	sbc hl,de
	ld (la4c0),hl
.la681
	ld a,(la72a)
	or a
	jr z,la6a4
	jp p,la697
	ld hl,(la4c4)
	ld de,(la727)
	add hl,de
	ld (la4c4),hl
	jr la6a4
.la697
	ld hl,(la4c4)
	ld de,(la727)
	or a
	sbc hl,de
	ld (la4c4),hl
.la6a4
	ld a,(la4c0)
	ld (la4c6),a
	ret
.la6ab
	dw la6b7,la6c8,la6d9,la6ea
	dw la6fb,la70c
.la6b7
	db #2d,#0a,#08,#00,#0b,#00,#0f,#fa
	db #08,#00,#08,#00,#ff,#ff,#0a,#00
.la6c8 equ $ + 1
	db #00,#8c,#46,#40,#01,#20,#01,#1e
	db #d7,#01,#00,#01,#00,#ff,#ff,#02
.la6d9 equ $ + 2
	db #01,#00,#19,#07,#10,#00,#40,#00
	db #0f,#fa,#08,#00,#08,#00,#ff,#ff
.la6ea equ $ + 3
	db #05,#00,#00,#08,#04,#80,#04,#90
	db #04,#0f,#fa,#98,#00,#98,#00,#ff
.la6fb equ $ + 4
	db #ff,#03,#00,#00,#50,#06,#0a,#02
	db #00,#02,#0d,#fa,#40,#00,#40,#00
.la70c equ $ + 5
	db #01,#01,#0f,#01,#0e,#50,#06,#8a
	db #02,#60,#02,#0d,#fa,#40,#00,#40
.la71e equ $ + 7
.la71d equ $ + 6
	db #00,#01,#01,#0f,#01,#0e,#00,#00
.la725 equ $ + 6
.la724 equ $ + 5
.la723 equ $ + 4
.la721 equ $ + 2
.la720 equ $ + 1
.la71f
	db #00,#00,#00,#00,#00,#00,#00,#00
.la72e equ $ + 7
.la72d equ $ + 6
.la72c equ $ + 5
.la72b equ $ + 4
.la72a equ $ + 3
.la729 equ $ + 2
.la727
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.la730
	ld a,(la74b)
	and #48
	adc #38
	sla a
	sla a
	ld hl,la74e
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.la74e equ $ + 3
.la74b
	db #ff,#80,#1b,#34
.la74f
	db #04
	dw la75d,la7bb,la7f3
	db #04
	dw la855,la859,la855
.la75d
	dw lacac,la968,la968,la981
	dw la8b5,la8b5,la8b5,la8b5
	dw la8b5,la8b5,la8b5,la8b5
	dw la8c4,la8c4,la8de,la8de
	dw la8c4,la8c4,la8ee,la8ee
	dw la8de,la8de,la8c4,la8c4
	dw la8de,la8de,la8c4,la8c4
	dw la8ee,la8ee,la90d,la90d
	dw la92c,la92c,la93e,la93e
	dw la948,la99a,lad1d,lad1d
	dw laa55,laa8f,laaec,laaec
.la7bb equ $ + 6
	dw laaec,laaec,laaaa,lacce
	dw la952,la952,laa3c,laa1c
	dw laa1c,laa1c,laa1c,laa1c
	dw laa2b,la9cf,la9b1,lab2e
	dw lab2e,la9b1,la9ee,lab2e
	dw lab2e,lab4e,lad1d,lad1d
	dw laaad,lac5a,lab08,lab08
.la7f3 equ $ + 6
	dw lab21,lab21,laae5,lacf6
	dw lad1d,lad1d,lad1d,lad1d
	dw lad1d,lad1d,lad1d,lad1d
	dw lad1d,lad1d,lad1d,lad1d
	dw labb1,labb1,labb1,labb1
	dw labb1,labb1,lac0a,lac0a
	dw lac0a,lac0a,labb1,labb1
	dw labb1,labb1,labb1,labb1
	dw labb1,labb1,lac0a,lac0a
	dw lac0a,lac0a,lac0a,lac0a
	dw lac0a,lac0a,lac0a,lac0a
	dw lac0a,lac33,lad1d,lad1a
	dw lac7f,lac9f,lac9f,laae5
.la855
	dw lad1d,#0000
.la859
	dw la86b,la86b,la86b,la86b
	dw la88f,la88f,la86b,la86b
	dw #0000
.la86b
	db #dd,#00,#11,#04,#c0,#8a,#88,#01
	db #02,#82,#e1,#0c,#0c,#0f,#0c,#0c
	db #0f,#0c,#0c,#0f,#0c,#0c,#11,#de
	db #00,#11,#04,#0c,#0f,#df,#00,#11
.la88f equ $ + 4
	db #04,#11,#0f,#87,#dd,#00,#11,#04
	db #c0,#8a,#88,#01,#02,#82,#e1,#11
	db #11,#14,#11,#11,#14,#11,#11,#14
	db #11,#11,#14,#de,#00,#11,#04,#11
	db #11,#df,#00,#11,#04,#c0,#8a,#16
.la8b5 equ $ + 2
	db #18,#87,#db,#00,#22,#06,#c0,#e1
	db #30,#30,#35,#35,#3c,#3c,#35,#35
.la8c4 equ $ + 1
	db #87,#df,#00,#11,#04,#c0,#8a,#88
	db #01,#02,#82,#e7,#18,#e1,#1b,#1c
	db #80,#18,#80,#18,#80,#18,#1d,#1c
.la8de equ $ + 3
	db #e3,#80,#87,#e7,#1d,#e1,#20,#21
	db #80,#1d,#80,#1d,#80,#1d,#22,#21
.la8ee equ $ + 3
	db #e3,#80,#87,#e7,#1b,#e1,#1a,#1b
	db #80,#1b,#80,#1b,#80,#1b,#1a,#1b
	db #e3,#80,#e7,#16,#e1,#15,#16,#80
	db #16,#80,#16,#80,#16,#1b,#1a,#e3
.la90d equ $ + 2
	db #80,#87,#e7,#1a,#e1,#18,#1a,#80
	db #1a,#80,#1a,#80,#1a,#18,#1a,#e3
	db #80,#e7,#1b,#e1,#1a,#1b,#80,#1b
	db #80,#1b,#80,#1b,#1a,#1b,#80,#80
.la92c equ $ + 1
	db #87,#e1,#1a,#80,#80,#1a,#18,#1a
	db #80,#80,#14,#80,#80,#14,#13,#14
.la93e equ $ + 3
	db #80,#80,#87,#e1,#1e,#1e,#80,#1e
.la948 equ $ + 5
	db #1b,#1b,#80,#1b,#87,#e1,#80,#1e
.la952 equ $ + 7
	db #80,#1b,#80,#1e,#80,#1b,#87,#82
	db #88,#01,#02,#c0,#df,#00,#11,#03
	db #e7,#30,#37,#e3,#39,#35,#e7,#37
.la968 equ $ + 5
	db #3a,#37,#33,#2e,#87,#82,#88,#01
	db #02,#c0,#dc,#00,#11,#03,#e0,#80
	db #e7,#3c,#43,#e3,#45,#41,#e7,#43
.la981 equ $ + 6
	db #46,#43,#3f,#e6,#3a,#87,#dc,#00
	db #11,#03,#c0,#e0,#80,#ef,#37,#38
	db #39,#3c,#e7,#3b,#34,#2f,#34,#30
.la99a equ $ + 7
	db #37,#e3,#39,#35,#e6,#37,#87,#88
	db #01,#02,#82,#c0,#de,#11,#f1,#1f
	db #f3,#80,#e3,#3c,#3e,#e1,#3a,#de
.la9b1 equ $ + 6
	db #11,#f1,#14,#ff,#3c,#87,#88,#01
	db #02,#c0,#82,#de,#11,#11,#13,#e3
	db #80,#35,#37,#e1,#33,#f5,#35,#e3
	db #35,#37,#e1,#33,#e5,#35,#e3,#3e
.la9cf equ $ + 4
	db #e1,#3a,#e9,#3c,#88,#01,#02,#c0
	db #82,#de,#11,#11,#13,#e3,#30,#32
	db #e1,#2e,#f5,#30,#e3,#37,#39,#e1
	db #35,#e5,#37,#e3,#35,#e1,#34,#32
.la9ee equ $ + 3
	db #e3,#30,#87,#88,#01,#02,#c0,#82
	db #de,#11,#11,#13,#e3,#80,#35,#37
	db #e1,#33,#f5,#35,#e3,#35,#37,#e1
	db #33,#f5,#35,#e3,#30,#32,#e1,#2e
	db #f5,#30,#e3,#37,#39,#e1,#35,#e5
	db #37,#e3,#3c,#e1,#3a,#39,#e3,#37
.laa1c equ $ + 1
	db #87,#d9,#00,#22,#06,#c0,#e1,#3c
	db #3c,#41,#41,#48,#48,#41,#41,#87
.laa2b
	db #d9,#00,#22,#06,#c0,#e1,#3c,#3c
	db #41,#41,#48,#48,#41,#41,#80,#80
.laa3c equ $ + 1
	db #87,#df,#00,#11,#03,#8a,#ef,#2b
	db #2c,#2d,#30,#e7,#2f,#28,#23,#28
	db #24,#2b,#e3,#2d,#29,#e7,#2b,#ff
.laa55 equ $ + 2
	db #28,#87,#dd,#11,#11,#24,#8a,#c0
	db #88,#01,#02,#82,#e1,#80,#ef,#3c
	db #e7,#44,#41,#ff,#43,#ef,#3c,#e7
	db #46,#43,#ff,#44,#e9,#3c,#84,#fc
	db #01,#e5,#3c,#ef,#46,#ff,#43,#e9
	db #3c,#e5,#84,#fc,#01,#3c,#ef,#46
	db #ff,#43,#e7,#44,#40,#3f,#43,#42
.laa8f equ $ + 4
	db #3e,#3d,#41,#87,#da,#11,#11,#11
	db #8a,#ce,#81,#ef,#30,#30,#30,#31
	db #30,#30,#30,#31,#30,#ff,#34,#ef
.laaaa equ $ + 7
	db #31,#30,#ff,#34,#ef,#30,#87,#ff
.laaad equ $ + 2
	db #46,#8e,#dd,#11,#11,#24,#8a,#c0
	db #88,#00,#82,#ef,#3c,#e7,#44,#41
	db #ff,#43,#ef,#3c,#e7,#46,#43,#ff
	db #44,#e9,#3c,#e5,#84,#fc,#01,#3c
	db #ef,#46,#ff,#43,#e9,#3c,#e5,#84
	db #fc,#01,#3c,#ef,#46,#ff,#43,#e7
	db #44,#40,#3f,#43,#42,#3e,#3d,#e9
.laae5 equ $ + 2
	db #41,#87,#88,#02,#04,#82,#ff,#35
.laaec equ $ + 1
	db #8e,#df,#00,#11,#06,#c0,#8a,#88
	db #01,#02,#82,#e3,#18,#1c,#1d,#1f
	db #24,#1f,#1d,#1c,#1b,#1f,#20,#22
.lab08 equ $ + 5
	db #27,#22,#20,#1f,#87,#de,#11,#11
	db #14,#c0,#88,#01,#02,#e7,#43,#37
	db #3c,#e3,#46,#43,#e7,#46,#e3,#45
.lab21 equ $ + 6
	db #43,#3f,#3a,#39,#37,#87,#e7,#3c
	db #43,#e3,#45,#41,#e7,#43,#46,#43
.lab2e equ $ + 3
	db #3f,#3a,#87,#de,#00,#11,#04,#c9
	db #e7,#3f,#e5,#3e,#e3,#3c,#e1,#3f
	db #3e,#3f,#3e,#e5,#3c,#e7,#3e,#e5
	db #3c,#e3,#3a,#e1,#3e,#3c,#3e,#3c
.lab4e equ $ + 3
	db #e5,#3a,#87,#de,#00,#11,#04,#c9
	db #ff,#39,#3a,#3c,#3f,#ef,#3e,#44
	db #45,#48,#e7,#42,#3f,#42,#3f,#e3
	db #42,#3f,#42,#3f,#db,#11,#11,#11
	db #c0,#e7,#2b,#24,#f7,#2b,#d9,#11
	db #11,#18,#f5,#2b,#87
	db #4d,#75,#73,#69,#63,#20,#77,#72
	db #69,#74,#74,#65,#6e,#20,#62,#79
	db #20,#52,#6f,#62,#20,#48,#75,#62
	db #62,#61,#72,#64,#20,#61,#6e,#64
	db #20,#61,#64,#61,#70,#74,#65,#64
	db #20,#62,#79,#20,#54,#69,#6e,#79
	db #20,#57,#69,#6c,#6c,#69,#61,#6d
	db #73
.labb1
	db #88,#01,#02,#82,#dc,#00,#22,#06
	db #c0,#8a,#e1,#30,#30,#dc,#00,#11
	db #0a,#81,#85,#e1,#8b,#8d,#27,#27
	db #dc,#00,#22,#06,#c0,#8a,#e1,#3c
	db #3c,#dc,#00,#11,#0a,#81,#85,#e1
	db #8b,#8d,#27,#80,#88,#01,#02,#82
	db #dc,#00,#22,#06,#c0,#8a,#e1,#30
	db #30,#dc,#00,#11,#0a,#81,#85,#e1
	db #8b,#8d,#27,#27,#dc,#00,#22,#06
	db #c0,#8a,#e1,#3c,#3c,#dc,#00,#11
	db #0a,#81,#85,#e1,#8b,#8d,#27,#80
.lac0a equ $ + 1
	db #87,#88,#01,#02,#82,#e3,#80,#dc
	db #00,#11,#0a,#81,#85,#e1,#8b,#8d
	db #27,#27,#e3,#80,#27,#88,#01,#02
	db #82,#e3,#80,#dc,#00,#11,#0a,#81
	db #85,#e1,#8b,#8d,#27,#27,#e3,#80
.lac33 equ $ + 2
	db #27,#87,#dc,#00,#11,#0a,#81,#85
	db #e1,#8b,#8d,#80,#27,#80,#27,#80
	db #27,#80,#27,#db,#11,#11,#11,#8a
	db #c0,#88,#02,#04,#82,#e7,#37,#30
	db #f7,#37,#d8,#11,#11,#18,#f9,#37
.lac5a equ $ + 1
	db #87,#de,#11,#11,#14,#8a,#c0,#88
	db #02,#04,#82,#ef,#43,#46,#43,#e7
	db #44,#47,#ef,#48,#49,#46,#e7,#47
	db #4a,#ef,#48,#49,#46,#e7,#47,#4a
.lac7f equ $ + 6
	db #ef,#48,#49,#ff,#46,#87,#dc,#00
	db #11,#01,#8a,#c0,#88,#02,#04,#82
	db #ff,#13,#13,#13,#13,#13,#13,#13
	db #13,#13,#13,#13,#13,#13,#13,#13
.lac9f equ $ + 6
	db #13,#13,#13,#e1,#13,#87,#db,#11
	db #11,#14,#8a,#c9,#81,#ff,#37,#3a
.lacac equ $ + 3
	db #37,#3a,#87,#df,#00,#41,#1f,#8a
	db #c0,#84,#0a,#01,#e3,#48,#84,#0a
	db #01,#48,#84,#0a,#01,#48,#80,#84
	db #0a,#01,#48,#84,#0a,#01,#48,#84
.lacce equ $ + 5
	db #0a,#01,#48,#80,#87,#df,#00,#41
	db #1f,#8a,#c0,#e1,#80,#e3,#84,#0a
	db #01,#48,#84,#0a,#01,#48,#84,#0a
	db #01,#4f,#84,#0a,#01,#4f,#84,#0a
	db #01,#48,#84,#0a,#01,#4f,#84,#0a
.lacf6 equ $ + 5
	db #01,#48,#e1,#80,#87,#df,#00,#41
	db #1f,#8a,#c0,#e4,#80,#e3,#84,#0a
	db #01,#4f,#80,#84,#0a,#01,#4f,#84
	db #0a,#01,#4f,#84,#0a,#01,#4f,#84
	db #0a,#01,#4f,#e2,#84,#0a,#01,#4f
.lad1d equ $ + 4
.lad1a equ $ + 1
	db #87,#fb,#80,#87,#ff,#80,#87
;
; #ab78
; db "Music written by Rob Hubbard and adapted by Tiny William"
;
.music_info
	db "Flash Gordon (1988)(Mastertronic)(Tiny William)",0
	db "Music written by Rob Hubbard and adapted by Tiny William",0

	read "music_end.asm"
