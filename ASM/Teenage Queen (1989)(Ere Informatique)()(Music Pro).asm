; Music of Teenage Queen (1989)(Ere Informatique)()(Music Pro)
; Ripped by Megachur the 07/03/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TEENAGEQ.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 07
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #80bc

	read "music_header.asm"
;
.init_music
;
	xor a
	ld (l854c),a
	ld (l8550),a
	ld hl,l8557
	ld (hl),#00
	ld de,l8558
	ld bc,#0128
	ldir
	ld a,(l8781)
	ld (l8680),a
	ld bc,l8780
	ld hl,(l8782)
	add hl,bc
	ld (l8683),hl
	ld hl,(l8784)
	add hl,bc
	ld (l8685),hl
	ld hl,(l8786)
	add hl,bc
	ld (l855c),hl
	ld hl,(l8788)
	add hl,bc
	ld (l8597),hl
	ld hl,(l878a)
	add hl,bc
	ld (l85d2),hl
	ld hl,l878c
	ld (l8681),hl
	ld a,#0f
	ld (l8688),a
	ld hl,l8551
	ld de,l8557
	ld bc,#0005
	ldir
	ld hl,l8551
	ld de,l8592
	ld bc,#0005
	ldir
	ld hl,l8551
	ld de,l85cd
	ld bc,#0005
	ldir
	ld a,#ff
	ld (l854c),a
	ld c,#38
	ld a,#07
	jp l875e
;
.play_music
;
	ld a,(l854c)
	or a
	ret z
	xor a
	ld (l854c),a
	ld a,#08
	ld (l868b),a
	cpl
	ld (l868a),a
	ld a,(l8688)
	ld e,a
	ld b,#03
	ld hl,l85ec
.l814f
	ld a,(hl)
	ld c,a
	ld a,c
	cp e
	jp c,l8157
	ld a,e
.l8157
	ld c,a
	ld a,b
	add #07
	push de
	call l875e
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l814f
	ld hl,l8680
	dec (hl)
	ld ix,l8557
	xor a
.l8171
	ld (l8687),a
	ld a,(ix+#07)
	or a
	jp nz,l83e8
.l817b
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l8185
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jp nz,l81f5
	ld l,(ix+#01)
	ld h,(ix+#02)
.l8197
	ld a,(hl)
	cp #ff
	jp nz,l81d6
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l8550)
	or a
	jp z,l8197
	push hl
	push bc
	push de
	ld a,(l8687)
	ld c,a
	ld b,#00
	ld hl,l854d
	add hl,bc
	push hl
	ld e,(hl)
	add a
	ld c,a
	ld hl,l8786
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l8780
	add hl,bc
	ld (hl),e
	pop hl
	xor a
	ld (hl),a
	pop de
	pop bc
	pop hl
	jp l8197
.l81d6
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l8681)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l8780
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l8185
.l81f5
	bit 7,a
	jp nz,l8265
	ld hl,l8692
	or a
	jp z,l8204
	add (ix+#20)
.l8204
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld e,(hl)
	ld (ix+#36),e
	ld (ix+#38),e
	inc hl
	ld e,(hl)
	ld (ix+#37),e
	ld (ix+#39),e
	ld (ix+#0a),#00
	ld (ix+#21),#00
	ld (ix+#1f),#00
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ex de,hl
	ld a,(l8687)
	inc a
	ld hl,l85f4
	ld bc,#0014
.l8236
	add hl,bc
	dec a
	jp nz,l8236
	call l8523
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l8687)
	inc a
	ld hl,l8630
	ld bc,#0014
.l8250
	add hl,bc
	dec a
	jp nz,l8250
	call l8523
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l83d4
.l8265
	bit 6,a
	jp nz,l82b2
	bit 5,a
	jp z,l829f
	and #1f
	ld b,a
	jp z,l8287
	ld a,(l8689)
	push hl
	ld hl,l868a
	and (hl)
	pop hl
	ld c,a
	ld a,#07
	call l875e
	jp l8296
.l8287
	ld a,(l8689)
	push hl
	ld hl,l868b
	or (hl)
	pop hl
	ld c,a
	ld a,#07
	call l875e
.l8296
	ld c,b
	ld a,#06
	call l875e
	jp l83d4
.l829f
	and #1f
	ld hl,l8752
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l83d4
.l82b2
	bit 5,a
	jp nz,l8325
	and #1f
	add a
	add a
	add a
	ld hl,(l8683)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l82ce
	ld a,(de)
	bit 7,a
	jp nz,l82e1
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l82fa
.l82e1
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#ff
	bit 7,a
	jp nz,l82f4
	ld b,#01
.l82f4
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l82fa
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jp nz,l82ce
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l85f4
	ld a,(l8687)
	inc a
.l8319
	add hl,bc
	dec a
	jp nz,l8319
	ex de,hl
	call l8523
	jp l83d4
.l8325
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l833c
	and #1f
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l833c
	ld b,d
	add e
	ld c,a
	add e
	ld c,d
	add e
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l83d4
	ld a,#02
	jp l8351
	ld a,#01
.l8351
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jp z,l83c9
	add a
	add a
	add a
	ld hl,(l8685)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l8370
	ld a,(de)
	bit 7,a
	jp nz,l8385
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	neg
	ld (hl),a
	jp l839e
.l8385
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#01
	bit 7,a
	jp nz,l8398
	ld b,#ff
.l8398
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l839e
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jp nz,l8370
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l8630
	ld a,(l8687)
	inc a
.l83bd
	add hl,bc
	dec a
	jp nz,l83bd
	ex de,hl
	call l8523
	jp l83ce
.l83c9
	ld a,#00
	ld (ix+#09),a
.l83ce
	ld a,(ix+#09)
	ld (ix+#3a),a
.l83d4
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l817b
.l83e8
	ld a,(l8680)
	or a
	jp nz,l83f2
	dec (ix+#07)
.l83f2
	ld a,(ix+#0a)
	cp #04
	jp z,l8440
	push ix
	pop hl
	ld b,a
	add a
	add a
	add b
	add #0b
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	or a
	jp nz,l8421
	dec (hl)
	jp nz,l8414
	inc (ix+#0a)
.l8414
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l8440
.l8421
	dec (hl)
	jp nz,l8437
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	dec hl
	jp l8439
.l8437
	inc hl
	inc hl
.l8439
	dec (hl)
	jp nz,l8440
	inc (ix+#0a)
.l8440
	ld a,(ix+#09)
	or a
	jp z,l84e5
	push ix
	pop hl
	ld a,(ix+#21)
	ld b,a
	add a
	add a
	add b
	add #22
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	or a
	jp nz,l8480
	dec (hl)
	jp nz,l8464
	inc (ix+#21)
.l8464
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,l8470
	inc b
.l8470
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l84b0
.l8480
	dec (hl)
	jp nz,l84a7
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	push hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,l8495
	inc b
.l8495
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l84a9
.l84a7
	inc hl
	inc hl
.l84a9
	dec (hl)
	jp nz,l84b0
	inc (ix+#21)
.l84b0
	ld a,(ix+#21)
	cp #04
	jp nz,l84e5
	ld a,(ix+#09)
	cp #02
	jp nz,l84c7
	xor a
	ld (ix+#09),a
	jp l84e5
.l84c7
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l8687)
	inc a
	ld hl,l8630
	ld bc,#0014
.l84dd
	add hl,bc
	dec a
	jp nz,l84dd
	call l8523
.l84e5
	ld c,(ix+#36)
	ld a,(l8687)
	add a
	call l875e
	ld c,(ix+#37)
	inc a
	call l875e
	ld bc,#003b
	add ix,bc
	ld a,(l868b)
	rlc a
	ld (l868b),a
	cpl
	ld (l868a),a
	ld a,(l8687)
	inc a
	cp #03
	jp nz,l8171
	ld a,(l8680)
	or a
	jp nz,l851d
	ld a,(l8781)
	ld (l8680),a
.l851d
	ld a,#ff
	ld (l854c),a
	ret
.l8523
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ret
.l8551 equ $ + 5
.l8550 equ $ + 4
.l854d equ $ + 1
.l854c
	db #ff,#00,#00,#00,#ff,#00,#56,#85
.l8558 equ $ + 4
.l8557 equ $ + 3
	db #56,#85,#ff,#00,#00,#00,#00,#00
.l855c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8592 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8597 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85d2 equ $ + 6
.l85cd equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85ec
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85f4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8630 equ $ + 4
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
.l8683 equ $ + 7
.l8681 equ $ + 5
.l8680 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l868b equ $ + 7
.l868a equ $ + 6
.l8689 equ $ + 5
.l8688 equ $ + 4
.l8687 equ $ + 3
.l8685 equ $ + 1
	db #00,#00,#00,#00,#00,#38,#00,#00
.l8692 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	dw #0c9c,#0be7,#0b3c,#0a9b
	dw #0a02,#0973,#08eb,#086b
	dw #07f2,#0780,#0714,#06ae
	dw #064e,#05f4,#059e,#054d
	dw #0501,#0469,#0475,#0435
	dw #03f9,#03c0,#038a,#0357
	dw #0327,#02fa,#02cf,#02a7
	dw #0281,#025d,#023b,#021b
	dw #01fc,#01e0,#01c5,#01ac
	dw #0194,#017d,#0168,#0153
	dw #0140,#012e,#011d,#010d
	dw #00fe,#00f0,#00e2,#00d6
	dw #00ca,#00be,#00b4,#00aa
	dw #00a0,#0097,#008f,#0087
	dw #007f,#0078,#0071,#006b
	dw #0065,#005f,#005a,#0055
	dw #0050,#004c,#0047,#0043
	dw #0040,#003c,#0039,#0035
	dw #0032,#0030,#002d,#002a
	dw #0028,#0026,#0024,#0022
	dw #0020,#001e,#001c,#001b
	dw #0019,#0018,#0016,#0015
	dw #0014,#0013,#0012,#0011
	dw #0010,#000f,#000e
.l8752
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
.l875e
	push af
	push bc
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
	pop bc
	pop af
	ret
.l8786 equ $ + 6
.l8784 equ $ + 4
.l8782 equ $ + 2
.l8781 equ $ + 1
.l8780
	db #00,#05,#bf,#04,#bf,#05,#46,#00
.l878c equ $ + 4
.l878a equ $ + 2
.l8788
	db #58,#00,#6d,#00,#89,#00,#bd,#00
	db #f4,#00,#33,#01,#54,#01,#6f,#01
	db #8e,#01,#a7,#01,#af,#01,#d5,#01
	db #0c,#02,#40,#02,#77,#02,#ae,#02
	db #e5,#02,#ff,#02,#1e,#03,#40,#03
	db #5d,#03,#7e,#03,#99,#03,#b4,#03
	db #cf,#03,#ec,#03,#06,#04,#26,#04
	db #46,#04,#74,#04,#9a,#04,#00,#01
	db #02,#03,#04,#05,#04,#06,#07,#08
	db #09,#00,#01,#0a,#0b,#0c,#0d,#ff
	db #0e,#0f,#10,#0e,#11,#12,#13,#14
	db #13,#15,#16,#17,#10,#0e,#0f,#10
	db #18,#19,#18,#1a,#ff
	db #1b,#1b,#1b,#1b,#1b,#1b,#1b,#1b
	db #1b,#1b,#1c,#1b,#1b,#1b,#1b,#1b
	db #1b,#1b,#1b,#1b,#1b,#1b,#1b,#1b
	db #1b,#1b,#1c,#ff,#e0,#00,#a0,#c0
	db #84,#30,#80,#30,#c3,#e2,#05,#83
	db #2e,#c1,#e1,#09,#80,#30,#83,#2e
	db #35,#82,#34,#84,#33,#82,#30,#84
	db #27,#c0,#82,#18,#c3,#e2,#05,#83
	db #27,#c1,#e1,#09,#80,#29,#83,#27
	db #2e,#82,#2d,#84,#2c,#83,#2e,#ff
	db #e0,#00,#a0,#c1,#e1,#09,#84,#2b
	db #c0,#80,#2b,#c3,#e2,#05,#83,#30
	db #c1,#e1,#09,#80,#32,#83,#30,#33
	db #82,#32,#84,#30,#82,#32,#83,#2e
	db #80,#2e,#82,#2c,#80,#2b,#82,#2c
	db #80,#2c,#82,#30,#80,#33,#83,#2b
	db #82,#2a,#84,#29,#83,#22,#ff,#e0
	db #00,#a0,#c0,#82,#2e,#80,#27,#29
	db #2c,#c3,#e2,#05,#83,#2e,#c1,#e1
	db #09,#80,#30,#82,#2e,#c8,#e2,#05
	db #80,#34,#c1,#e1,#09,#83,#35,#82
	db #34,#84,#33,#82,#30,#84,#27,#c0
	db #82,#27,#c3,#e2,#05,#83,#30,#c1
	db #e1,#09,#80,#32,#83,#30,#33,#82
	db #32,#84,#30,#83,#32,#ff,#e0,#00
	db #a0,#c1,#e1,#09,#82,#2e,#83,#2b
	db #80,#29,#82,#2e,#83,#2b,#80,#29
	db #82,#30,#2c,#2b,#80,#29,#c8,#e2
	db #05,#2c,#2e,#30,#33,#30,#ff,#e0
	db #00,#a0,#c1,#e1,#09,#87,#33,#c0
	db #83,#33,#80,#33,#c1,#30,#2e,#85
	db #2c,#c0,#83,#2c,#c1,#80,#33,#35
	db #33,#ff,#e0,#00,#a0,#c1,#e1,#09
	db #80,#37,#2e,#82,#30,#33,#84,#38
	db #80,#37,#35,#85,#33,#c0,#80,#33
	db #c8,#e2,#05,#30,#33,#30,#2e,#2c
	db #ff,#e0,#00,#a0,#c1,#e1,#09,#80
	db #37,#2e,#82,#30,#33,#84,#3b,#80
	db #3a,#38,#84,#37,#80,#35,#33,#85
	db #35,#ff,#e0,#00,#a0,#c0,#87,#30
	db #30,#ff,#e0,#00,#a0,#c0,#85,#33
	db #83,#33,#c8,#e2,#05,#80,#33,#35
	db #33,#37,#33,#c1,#e1,#09,#82,#31
	db #c8,#e2,#05,#80,#3c,#3a,#c1,#e1
	db #09,#82,#37,#3a,#80,#37,#33,#ff
	db #e0,#00,#a0,#c1,#e1,#09,#84,#30
	db #c0,#80,#2b,#c3,#e2,#05,#83,#30
	db #c1,#e1,#09,#80,#32,#83,#30,#33
	db #82,#32,#84,#30,#82,#32,#83,#2e
	db #80,#2e,#82,#2c,#80,#2b,#82,#2c
	db #80,#2c,#82,#30,#80,#33,#83,#2b
	db #82,#2a,#84,#29,#83,#22,#ff,#e0
	db #00,#a0,#c0,#84,#30,#80,#30,#c3
	db #e2,#05,#83,#33,#c1,#e1,#09,#80
	db #35,#83,#33,#37,#82,#33,#84,#31
	db #82,#3d,#84,#3c,#c0,#82,#3c,#c3
	db #e2,#05,#83,#38,#c1,#e1,#09,#80
	db #3a,#83,#38,#3c,#82,#3a,#84,#38
	db #83,#36,#ff,#e0,#00,#a0,#c1,#e1
	db #09,#84,#35,#c0,#80,#30,#c3,#e2
	db #05,#83,#35,#c1,#e1,#09,#80,#37
	db #83,#35,#38,#82,#35,#84,#32,#82
	db #38,#84,#37,#c0,#82,#3c,#c3,#e2
	db #05,#83,#37,#c1,#e1,#09,#80,#38
	db #83,#37,#3a,#82,#37,#84,#33,#83
	db #31,#ff,#e0,#00,#a0,#c1,#e1,#09
	db #84,#30,#c0,#80,#30,#c3,#e2,#05
	db #83,#33,#c1,#e1,#09,#80,#35,#83
	db #33,#37,#82,#33,#84,#31,#82,#3d
	db #84,#3c,#c0,#82,#3c,#c3,#e2,#05
	db #83,#38,#c1,#e1,#09,#80,#3a,#83
	db #38,#3c,#82,#3a,#84,#38,#83,#36
	db #ff,#e0,#00,#a0,#c1,#e1,#09,#84
	db #35,#c0,#80,#30,#c3,#e2,#05,#83
	db #35,#c1,#e1,#09,#80,#37,#83,#35
	db #38,#82,#35,#84,#32,#82,#38,#84
	db #37,#c0,#82,#3c,#c3,#e2,#05,#83
	db #37,#c1,#e1,#09,#80,#38,#83,#37
	db #3a,#82,#37,#84,#33,#83,#31,#ff
	db #e0,#00,#a0,#c2,#e2,#05,#84,#1b
	db #c0,#80,#1b,#c2,#1d,#84,#1f,#c0
	db #80,#1f,#c2,#22,#83,#22,#21,#1f
	db #1b,#ff,#e0,#00,#a0,#c2,#e2,#05
	db #82,#20,#80,#22,#85,#20,#c0,#80
	db #1b,#c2,#1b,#1d,#82,#20,#80,#22
	db #82,#20,#83,#23,#80,#22,#83,#20
	db #ff,#e0,#00,#a0,#c2,#e2,#05,#83
	db #18,#1a,#1b,#1f,#24,#26,#27,#21
	db #22,#21,#82,#20,#80,#20,#82,#24
	db #80,#27,#83,#24,#82,#23,#84,#22
	db #83,#16,#ff,#e0,#00,#a0,#c2,#e2
	db #05,#82,#20,#80,#22,#85,#20,#c0
	db #80,#1b,#c2,#1b,#1d,#82,#20,#80
	db #22,#83,#20,#82,#20,#1f,#1d,#ff
	db #e0,#00,#a0,#c2,#e2,#05,#82,#1b
	db #83,#27,#80,#1b,#82,#1d,#80,#27
	db #82,#1d,#83,#20,#80,#27,#82,#20
	db #83,#22,#80,#20,#82,#1f,#80,#1d
	db #ff,#e0,#00,#a0,#c2,#e2,#05,#83
	db #1b,#1f,#22,#82,#24,#80,#22,#83
	db #20,#82,#1d,#80,#1b,#83,#20,#82
	db #1f,#80,#1d,#ff,#e0,#00,#a0,#c2
	db #e2,#05,#83,#1b,#1f,#25,#82,#24
	db #80,#22,#83,#20,#82,#1d,#80,#1b
	db #83,#20,#82,#1f,#80,#1d,#ff,#e0
	db #00,#a0,#c2,#e2,#05,#83,#1b,#1f
	db #20,#82,#1f,#80,#1d,#83,#1b,#82
	db #1a,#80,#18,#83,#16,#82,#18,#80
	db #1a,#ff,#e0,#00,#a0,#c2,#e2,#05
	db #84,#1b,#c0,#80,#1b,#c2,#1d,#84
	db #1f,#c0,#80,#1f,#c2,#22,#83,#22
	db #82,#21,#84,#20,#83,#1d,#ff,#e0
	db #00,#a0,#c2,#e2,#05,#84,#1b,#c0
	db #80,#1b,#c2,#1d,#84,#1f,#c0,#80
	db #1f,#c2,#25,#83,#25,#22,#1f,#1b
	db #ff,#e0,#00,#a0,#c2,#e2,#05,#83
	db #1b,#1d,#1f,#82,#1d,#80,#1b,#83
	db #22,#1f,#1d,#1b,#20,#22,#24,#82
	db #22,#80,#20,#83,#27,#24,#22,#20
	db #ff,#e0,#00,#a0,#c2,#e2,#05,#83
	db #1d,#1f,#20,#82,#1f,#80,#1d,#83
	db #24,#20,#1f,#1d,#1b,#1d,#1f,#82
	db #1d,#80,#1b,#83,#22,#1f,#1d,#1b
	db #ff,#e0,#00,#a0,#c2,#e2,#05,#83
	db #1d,#1f,#20,#82,#1f,#80,#1d,#83
	db #24,#20,#1f,#1d,#82,#1b,#80,#1b
	db #82,#1b,#80,#24,#82,#22,#80,#22
	db #83,#22,#82,#1f,#80,#20,#82,#1f
	db #83,#1d,#80,#1a,#83,#16,#ff,#e0
	db #00,#a2,#c6,#e2,#00,#83,#00,#82
	db #00,#c7,#80,#00,#c6,#83,#00,#82
	db #00,#c7,#80,#00,#c6,#83,#00,#82
	db #00,#c7,#80,#00,#c6,#83,#00,#82
	db #00,#c7,#80,#00,#ff,#e0,#00,#a2
	db #c6,#e2,#00,#83,#00,#82,#00,#c7
	db #80,#00,#c6,#83,#00,#82,#00,#c7
	db #80,#00,#c6,#83,#00,#82,#00,#c7
	db #80,#00,#c6,#82,#00,#c7,#00,#c6
	db #00,#ff,#0f,#00,#0f,#00,#0f,#00
	db #0f,#00,#01,#0f,#83,#ad,#01,#00
	db #01,#00,#01,#0f,#82,#9e,#01,#00
	db #01,#00,#0f,#01,#83,#ad,#01,#00
	db #01,#00,#01,#09,#09,#ff,#01,#00
	db #01,#00,#01,#07,#07,#ff,#01,#00
	db #01,#00,#01,#0f,#03,#fd,#86,#92
	db #86,#92,#01,#0e,#07,#fe,#03,#00
	db #28,#00,#01,#0c,#01,#00,#03,#00
	db #18,#00,#01,#0e,#01,#00,#03,#00
	db #01,#00,#01,#0e,#01,#00,#03,#00
	db #87,#e2,#01,#0e,#01,#00,#82,#9c
	db #62,#00,#01,#0f,#07,#00,#84,#bc
	db #01,#00,#01,#0f,#04,#ff,#08,#00
	db #88,#d3,#01,#0a,#01,#00,#01,#f6
	db #01,#00,#01,#0c,#01,#00,#01,#f4
	db #01,#00,#01,#0e,#01,#00,#01,#f2
	db #01,#00,#01,#0f,#0f,#ff,#01,#00
	db #01,#00,#01,#0d,#0d,#ff,#01,#00
	db #01,#00,#01,#0b,#0b,#ff,#01,#00
	db #01,#00,#01,#09,#09,#ff,#01,#00
	db #01,#00,#01,#0e,#01,#00,#01,#f2
	db #01,#00,#01,#0c,#91,#e3,#a1,#63
	db #a1,#63,#82,#14,#0c,#00,#01,#00
	db #82,#94,#01,#0d,#04,#ff,#08,#00
	db #8a,#d3,#01,#0b,#04,#ff,#08,#00
	db #8c,#d3,#01,#09,#04,#ff,#08,#00
	db #95,#d3,#01,#07,#04,#ff,#08,#00
	db #9e,#da,#01,#0d,#03,#00,#08,#ff
	db #05,#00,#01,#0e,#86,#92,#89,#89
	db #82,#92,#01,#0f,#02,#00,#0c,#ff
	db #0c,#01,#01,#0d,#0c,#ff,#0d,#01
	db #0e,#ff,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#84,#08,#82,#88
	db #84,#08,#01,#00,#01,#3c,#03,#ec
	db #01,#ef,#86,#86,#01,#f1,#01,#2b
	db #01,#e5,#88,#08,#82,#04,#04,#fe
	db #03,#02,#04,#00,#82,#04,#04,#ff
	db #82,#04,#85,#0a,#03,#fd,#85,#0a
	db #01,#05,#01,#00,#01,#63,#03,#e2
	db #01,#d1,#01,#04,#01,#38,#03,#ec
	db #01,#f1,#04,#00,#84,#04,#82,#84
	db #84,#04,#82,#04,#04,#02,#04,#fc
	db #04,#02,#01,#00,#01,#00,#01,#01
	db #01,#ff,#01,#00,#01,#63,#02,#d8
	db #01,#d1,#06,#00,#01,#ff,#01,#00
	db #01,#01,#08,#00,#01,#01,#01,#fe
	db #01,#01,#08,#00,#01,#01,#01,#01
	db #01,#01,#01,#00,#01,#00,#01,#01
	db #01,#ff,#01,#00,#01,#63,#02,#d8
	db #01,#d1,#06,#00,#01,#ff,#01,#00
	db #01,#01,#08,#00,#01,#01,#01,#fe
	db #01,#01,#08,#00,#01,#01,#01,#01
	db #01,#01,#01,#00,#01,#00,#01,#01
	db #01,#ff,#01,#00,#01,#63,#02,#d8
	db #01,#d1,#06,#00,#01,#ff,#01,#00
	db #01,#01,#08,#00,#01,#01,#01,#fe
	db #01,#01,#08,#00,#01,#01,#01,#01
	db #01,#01,#01,#00,#01,#00,#01,#01
	db #01,#ff,#01,#00,#01,#63,#02,#d8
	db #01,#d1,#06,#00,#01,#ff,#01,#00
	db #01,#01,#08,#00,#01,#01,#01,#fe
	db #01,#01,#08,#00,#01,#01,#01,#01
	db #01,#01,#01,#00,#01,#00,#01,#01
	db #01,#ff,#00,#af,#48,#10,#8d,#e0
	db #01,#be,#c1,#45,#52,#c6,#76,#a1
	db #bf,#b1,#fe,#81,#bd,#8d,#2d,#1e
	db #81,#d9,#8d,#2e,#1e,#7a,#6a,#5a
	db #72,#90,#1e,#5e,#9b,#9b,#6e,#7e
	db #b3,#c6,#59,#b0,#41,#b5,#9f,#b8
	db #c6,#59,#4f,#49,#be,#f0,#ab,#af
	db #5b,#76,#72,#c9,#76,#85,#2e,#1e
	db #b9,#af,#9d,#dd,#01,#d8,#d6,#9d
	db #cb,#01,#f7,#9e,#f9,#1e,#7c,#40
	db #79,#95,#cb,#01,#be,#c1,#44,#c3
	db #72,#e3,#76,#c4,#72,#e3,#76,#c5
	db #72,#e3,#76,#10,#72,#e3,#76,#c2
	db #72,#e3,#76,#85,#2d,#1e,#72,#e3
	db #76,#c2,#72,#e3,#76,#81,#ae,#72
	db #e6,#76,#81,#40,#72,#3e,#1e,#44
	db #72,#b8,#76,#67,#7f,#85,#f2,#01
	db #38,#67,#10,#76,#4c,#72,#e3,#76
	db #c3,#95,#dd,#01,#41,#f4,#65,#4a
	db #79,#7c,#5a,#79,#d9,#be,#bf,#00
	db #00
;
.music_info
	db "Teenage Queen (1989)(Ere Informatique)()",0
	db "Music Pro",0

	read "music_end.asm"
