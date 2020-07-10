; Music of Iznogoud (1987)(Infogrames)(Charles Callet)(Music Pro)
; Ripped by Megachur the 20/03/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "IZNOGOUD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #8100

	read "music_header.asm"

;
.init_music
;
	xor a
	ld (l8590),a
	ld (l8594),a
	ld hl,l859b
	ld (hl),#00
	ld de,l859c
	ld bc,#0128
	ldir
	ld a,(l87c5)
	ld (l86c4),a
	ld bc,l87c4
	ld hl,(l87c6)
	add hl,bc
	ld (l86c7),hl
	ld hl,(l87c8)
	add hl,bc
	ld (l86c9),hl
	ld hl,(l87ca)
	add hl,bc
	ld (l85a0),hl
	ld hl,(l87cc)
	add hl,bc
	ld (l85db),hl
	ld hl,(l87ce)
	add hl,bc
	ld (l8616),hl
	ld hl,l87d0
	ld (l86c5),hl
	ld a,#0f
	ld (l86cc),a
	ld hl,l8595
	ld de,l859b
	ld bc,#0005
	ldir
	ld hl,l8595
	ld de,l85d6
	ld bc,#0005
	ldir
	ld hl,l8595
	ld de,l8611
	ld bc,#0005
	ldir
	ld a,#ff
	ld (l8590),a
	ld c,#38
	ld a,#07
	jp l87a2
;
.play_music
;
	ld a,(l8590)
	or a
	ret z
	xor a
	ld (l8590),a
	ld a,#08
	ld (l86cf),a
	cpl
	ld (l86ce),a
	ld a,(l86cc)
	ld e,a
	ld b,#03
	ld hl,l8630
.l8193
	ld a,(hl)
	ld c,a
	ld a,c
	cp e
	jp c,l819b
	ld a,e
.l819b
	ld c,a
	ld a,b
	add #07
	push de
	call l87a2
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l8193
	ld hl,l86c4
	dec (hl)
	ld ix,l859b
	xor a
.l81b5
	ld (l86cb),a
	ld a,(ix+#07)
	or a
	jp nz,l842c
.l81bf
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l81c9
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jp nz,l8239
	ld l,(ix+#01)
	ld h,(ix+#02)
.l81db
	ld a,(hl)
	cp #ff
	jp nz,l821a
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l8594)
	or a
	jp z,l81db
	push hl
	push bc
	push de
	ld a,(l86cb)
	ld c,a
	ld b,#00
	ld hl,l8591
	add hl,bc
	push hl
	ld e,(hl)
	add a
	ld c,a
	ld hl,l87ca
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l87c4
	add hl,bc
	ld (hl),e
	pop hl
	xor a
	ld (hl),a
	pop de
	pop bc
	pop hl
	jp l81db
.l821a
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l86c5)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l87c4
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l81c9
.l8239
	bit 7,a
	jp nz,l82a9
	ld hl,l86d6
	or a
	jp z,l8248
	add (ix+#20)
.l8248
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
	ld a,(l86cb)
	inc a
	ld hl,l8638
	ld bc,#0014
.l827a
	add hl,bc
	dec a
	jp nz,l827a
	call l8567
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l86cb)
	inc a
	ld hl,l8674
	ld bc,#0014
.l8294
	add hl,bc
	dec a
	jp nz,l8294
	call l8567
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l8418
.l82a9
	bit 6,a
	jp nz,l82f6
	bit 5,a
	jp z,l82e3
	and #1f
	ld b,a
	jp z,l82cb
	ld a,(l86cd)
	push hl
	ld hl,l86ce
	and (hl)
	pop hl
	ld c,a
	ld a,#07
	call l87a2
	jp l82da
.l82cb
	ld a,(l86cd)
	push hl
	ld hl,l86cf
	or (hl)
	pop hl
	ld c,a
	ld a,#07
	call l87a2
.l82da
	ld c,b
	ld a,#06
	call l87a2
	jp l8418
.l82e3
	and #1f
	ld hl,l8796
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l8418
.l82f6
	bit 5,a
	jp nz,l8369
	and #1f
	add a
	add a
	add a
	ld hl,(l86c7)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l8312
	ld a,(de)
	bit 7,a
	jp nz,l8325
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l833e
.l8325
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
	jp nz,l8338
	ld b,#01
.l8338
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l833e
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jp nz,l8312
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l8638
	ld a,(l86cb)
	inc a
.l835d
	add hl,bc
	dec a
	jp nz,l835d
	ex de,hl
	call l8567
	jp l8418
.l8369
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l8380
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
.l8380
	add (hl)
	add e
	sub e
	add e
	adc (hl)
	add e
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l8418
	ld a,#02
	jp l8395
	ld a,#01
.l8395
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jp z,l840d
	add a
	add a
	add a
	ld hl,(l86c9)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l83b4
	ld a,(de)
	bit 7,a
	jp nz,l83c9
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
	jp l83e2
.l83c9
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
	jp nz,l83dc
	ld b,#ff
.l83dc
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l83e2
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jp nz,l83b4
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l8674
	ld a,(l86cb)
	inc a
.l8401
	add hl,bc
	dec a
	jp nz,l8401
	ex de,hl
	call l8567
	jp l8412
.l840d
	ld a,#00
	ld (ix+#09),a
.l8412
	ld a,(ix+#09)
	ld (ix+#3a),a
.l8418
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l81bf
.l842c
	ld a,(l86c4)
	or a
	jp nz,l8436
	dec (ix+#07)
.l8436
	ld a,(ix+#0a)
	cp #04
	jp z,l8484
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
	jp nz,l8465
	dec (hl)
	jp nz,l8458
	inc (ix+#0a)
.l8458
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l8484
.l8465
	dec (hl)
	jp nz,l847b
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
	jp l847d
.l847b
	inc hl
	inc hl
.l847d
	dec (hl)
	jp nz,l8484
	inc (ix+#0a)
.l8484
	ld a,(ix+#09)
	or a
	jp z,l8529
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
	jp nz,l84c4
	dec (hl)
	jp nz,l84a8
	inc (ix+#21)
.l84a8
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,l84b4
	inc b
.l84b4
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l84f4
.l84c4
	dec (hl)
	jp nz,l84eb
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
	jp nz,l84d9
	inc b
.l84d9
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l84ed
.l84eb
	inc hl
	inc hl
.l84ed
	dec (hl)
	jp nz,l84f4
	inc (ix+#21)
.l84f4
	ld a,(ix+#21)
	cp #04
	jp nz,l8529
	ld a,(ix+#09)
	cp #02
	jp nz,l850b
	xor a
	ld (ix+#09),a
	jp l8529
.l850b
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l86cb)
	inc a
	ld hl,l8674
	ld bc,#0014
.l8521
	add hl,bc
	dec a
	jp nz,l8521
	call l8567
.l8529
	ld c,(ix+#36)
	ld a,(l86cb)
	add a
	call l87a2
	ld c,(ix+#37)
	inc a
	call l87a2
	ld bc,#003b
	add ix,bc
	ld a,(l86cf)
	rlc a
	ld (l86cf),a
	cpl
	ld (l86ce),a
	ld a,(l86cb)
	inc a
	cp #03
	jp nz,l81b5
	ld a,(l86c4)
	or a
	jp nz,l8561
	ld a,(l87c5)
	ld (l86c4),a
.l8561
	ld a,#ff
	ld (l8590),a
	ret
.l8567
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
.l8595 equ $ + 5
.l8594 equ $ + 4
.l8591 equ $ + 1
.music_end
.l8590
	db #ff,#00,#00,#00,#ff,#00
	dw l859a,l859a
.l85a0 equ $ + 6
.l859c equ $ + 2
.l859b equ $ + 1
.l859a
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85d6 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85db equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8611 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8616 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8630 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8638 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8674 equ $ + 2
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
.l86c9 equ $ + 7
.l86c7 equ $ + 5
.l86c5 equ $ + 3
.l86c4 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l86cf equ $ + 5
.l86ce equ $ + 4
.l86cd equ $ + 3
.l86cc equ $ + 2
.l86cb equ $ + 1
	db #00,#00,#00,#38,#00,#00,#00,#00
.l86d6 equ $ + 4
	db #00,#00,#00,#00,#00,#00
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
.l8796
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
.l87a2
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
.l87ca equ $ + 6
.l87c8 equ $ + 4
.l87c6 equ $ + 2
.l87c5 equ $ + 1
.l87c4
	db #00,#02,#6c,#07,#6c,#08,#76,#00
.l87d0 equ $ + 4
.l87ce equ $ + 2
.l87cc
	db #9a,#00,#be,#00,#e2,#00,#fd,#00
	db #12,#01,#27,#01,#54,#01,#69,#01
	db #7e,#01,#93,#01,#ab,#01,#c2,#01
	db #d9,#01,#fc,#01,#17,#02,#28,#02
	db #3f,#02,#56,#02,#6d,#02,#88,#02
	db #9d,#02,#b2,#02,#d2,#02,#f4,#02
	db #16,#03,#44,#03,#59,#03,#6e,#03
	db #83,#03,#9b,#03,#aa,#03,#da,#03
	db #f8,#03,#08,#04,#17,#04,#26,#04
	db #35,#04,#55,#04,#76,#04,#b2,#04
	db #20,#05,#55,#05,#8f,#05,#c0,#05
	db #da,#05,#fb,#05,#27,#06,#53,#06
	db #6c,#06,#85,#06,#d1,#06,#11,#07
	db #27,#07,#40,#07,#59,#07,#00,#00
	db #01,#02,#00,#00,#01,#02,#03,#03
	db #04,#04,#05,#06,#06,#07,#00,#00
	db #01,#02,#00,#00,#01,#02,#08,#08
	db #0a,#0b,#0a,#0c,#08,#0d,#0e,#0f
	db #07,#ff,#10,#10,#11,#12,#13,#13
	db #14,#15,#16,#16,#17,#17,#18,#19
	db #19,#1a,#10,#10,#11,#12,#13,#13
	db #14,#15,#1b,#1b,#1c,#1d,#1c,#1e
	db #1b,#1f,#20,#21,#1a,#ff,#24,#24
	db #24,#24,#24,#24,#24,#24,#25,#25
	db #26,#26,#27,#28,#29,#2a,#2b,#2b
	db #2b,#2b,#2b,#2b,#2c,#2c,#2d,#2d
	db #2f,#30,#2f,#31,#2d,#32,#33,#34
	db #2a,#ff,#e0,#00,#a0,#c7,#e2,#04
	db #83,#3c,#81,#3b,#39,#83,#37,#81
	db #36,#34,#83,#36,#81,#36,#37,#83
	db #36,#81,#32,#30,#ff,#e0,#00,#a0
	db #c7,#e2,#04,#83,#3f,#81,#3e,#3f
	db #3e,#3c,#3c,#3e,#83,#3f,#3e,#85
	db #3c,#ff,#e0,#f4,#a0,#c7,#e2,#04
	db #83,#3f,#81,#3e,#3f,#3e,#3c,#3c
	db #3e,#83,#3f,#3e,#85,#3c,#ff,#e0
	db #00,#a0,#c7,#e2,#04,#83,#36,#81
	db #37,#34,#83,#36,#81,#37,#39,#83
	db #39,#37,#36,#cc,#e1,#03,#81,#36
	db #2a,#c7,#e2,#04,#83,#36,#81,#37
	db #34,#83,#36,#81,#37,#39,#83,#37
	db #36,#85,#34,#ff,#e0,#00,#a0,#c7
	db #e2,#05,#83,#3f,#81,#3e,#3f,#3e
	db #3c,#3c,#3e,#83,#3f,#3e,#85,#3c
	db #ff,#e0,#00,#a0,#c7,#e2,#05,#83
	db #3e,#81,#3c,#3e,#3c,#3a,#3a,#3c
	db #83,#3e,#3c,#85,#3a,#ff,#e0,#fe
	db #a0,#c7,#e2,#05,#83,#3e,#81,#3c
	db #3e,#3c,#3a,#3a,#3c,#83,#3e,#3c
	db #85,#3a,#ff,#e0,#00,#a0,#c7,#e2
	db #05,#81,#37,#35,#33,#32,#37,#35
	db #33,#32,#29,#2b,#30,#32,#35,#37
	db #3c,#3e,#ff,#e0,#00,#a0,#d1,#e2
	db #0e,#81,#3c,#d2,#3c,#d1,#37,#d2
	db #37,#d1,#38,#d2,#38,#d1,#37,#d2
	db #37,#ff,#e0,#02,#a0,#d1,#e2,#0e
	db #81,#3c,#d2,#3c,#d1,#37,#d2,#37
	db #d1,#38,#d2,#38,#d1,#37,#d2,#37
	db #ff,#e0,#00,#a0,#d2,#e2,#0e,#81
	db #32,#d1,#32,#30,#2f,#d2,#2c,#d1
	db #2c,#d2,#2b,#d1,#2b,#d2,#2c,#d1
	db #2c,#d2,#2b,#d1,#2b,#d2,#32,#d1
	db #2f,#2b,#2a,#ff,#e0,#00,#a0,#d2
	db #e2,#0e,#81,#29,#2a,#29,#27,#24
	db #d1,#24,#d2,#22,#d1,#21,#20,#2f
	db #32,#33,#35,#33,#2b,#37,#ff,#e0
	db #00,#a0,#d2,#e2,#0e,#81,#3c,#d1
	db #3c,#30,#32,#35,#37,#3c,#3e,#ff
	db #e0,#02,#a0,#d1,#e2,#0e,#81,#3c
	db #d2,#3c,#d1,#37,#d2,#37,#d1,#38
	db #d2,#38,#d1,#37,#d2,#37,#ff,#e0
	db #03,#a0,#d1,#e2,#0e,#81,#3c,#d2
	db #3c,#d1,#37,#d2,#37,#d1,#38,#d2
	db #38,#d1,#37,#d2,#37,#ff,#e0,#00
	db #a0,#d1,#e2,#0e,#81,#40,#d2,#40
	db #d1,#3b,#d2,#3b,#d1,#3c,#d2,#3c
	db #d1,#3b,#d2,#3b,#ff,#e0,#00,#a0
	db #c7,#e2,#05,#83,#3c,#81,#3b,#39
	db #83,#37,#81,#36,#34,#83,#36,#81
	db #36,#37,#83,#36,#81,#32,#30,#ff
	db #e0,#00,#a0,#c7,#e2,#05,#83,#3f
	db #81,#3e,#3f,#3e,#3c,#3c,#3e,#83
	db #3f,#3e,#85,#3c,#ff,#e0,#f4,#a0
	db #c7,#e2,#05,#83,#3f,#81,#3e,#3f
	db #3e,#3c,#3c,#3e,#83,#3f,#3e,#85
	db #3c,#ff,#e0,#00,#a0,#d1,#e2,#0e
	db #81,#48,#d2,#48,#d1,#47,#45,#43
	db #d2,#43,#d1,#42,#40,#42,#d2,#42
	db #d1,#42,#43,#42,#d2,#42,#d1,#3e
	db #3c,#ff,#e0,#00,#a0,#d1,#e2,#0e
	db #81,#4b,#d2,#4b,#d1,#4a,#4b,#4a
	db #48,#48,#4a,#4b,#d2,#4b,#d1,#4a
	db #d2,#4a,#d1,#48,#d2,#48,#cc,#e1
	db #03,#83,#30,#ff,#e0,#f4,#a0,#d1
	db #e2,#0e,#81,#4b,#d2,#4b,#d1,#4a
	db #4b,#4a,#48,#48,#4a,#4b,#d2,#4b
	db #d1,#4a,#d2,#4a,#d1,#48,#d2,#48
	db #cc,#e1,#03,#83,#30,#ff,#e0,#00
	db #a0,#c7,#e2,#05,#83,#36,#81,#37
	db #34,#83,#36,#81,#37,#39,#83,#39
	db #37,#81,#36,#d2,#e2,#0e,#42,#4e
	db #42,#c7,#e2,#05,#83,#36,#81,#37
	db #34,#83,#36,#81,#37,#39,#83,#37
	db #36,#85,#34,#ff,#e0,#00,#a0,#c7
	db #e2,#04,#83,#3f,#81,#3e,#3f,#3e
	db #3c,#3c,#3e,#83,#3f,#3e,#85,#3c
	db #ff,#e0,#00,#a0,#c7,#e2,#04,#83
	db #3e,#81,#3c,#3e,#3c,#3a,#3a,#3c
	db #83,#3e,#3c,#85,#3a,#ff,#e0,#fe
	db #a0,#c7,#e2,#04,#83,#3e,#81,#3c
	db #3e,#3c,#3a,#3a,#3c,#83,#3e,#3c
	db #85,#3a,#ff,#e0,#00,#a0,#c7,#e2
	db #04,#81,#37,#35,#33,#32,#37,#35
	db #33,#32,#29,#2b,#30,#32,#35,#37
	db #3c,#3e,#ff,#e0,#00,#a0,#cd,#e1
	db #0a,#83,#3a,#81,#36,#36,#83,#37
	db #36,#ff,#e0,#00,#a0,#d1,#e2,#0e
	db #81,#3e,#c7,#e2,#04,#3e,#d1,#e2
	db #0e,#3c,#3b,#38,#c7,#e2,#04,#38
	db #d1,#e2,#0e,#37,#d2,#37,#d1,#38
	db #c7,#e2,#04,#38,#d1,#e2,#0e,#37
	db #d2,#37,#cd,#e1,#0a,#37,#3b,#37
	db #36,#ff,#e0,#00,#a0,#cd,#e1,#0a
	db #81,#35,#36,#35,#32,#d1,#e2,#0e
	db #30,#37,#48,#41,#3f,#3e,#3b,#3e
	db #3f,#3e,#cd,#e1,#0b,#83,#3b,#ff
	db #e0,#00,#a0,#cd,#e1,#0a,#83,#3a
	db #81,#30,#32,#35,#37,#3c,#3d,#ff
	db #e0,#02,#a0,#cd,#e1,#0a,#83,#3a
	db #81,#36,#36,#83,#37,#36,#ff,#e0
	db #03,#a0,#cd,#e1,#0a,#83,#3a,#81
	db #36,#36,#83,#37,#36,#ff,#e0,#00
	db #a0,#cd,#e1,#0a,#83,#3f,#81,#3a
	db #3a,#83,#3a,#39,#ff,#e0,#00,#a0
	db #d1,#e2,#0e,#83,#18,#18,#18,#d2
	db #81,#18,#d1,#18,#d2,#18,#d1,#18
	db #d2,#18,#d1,#18,#d2,#18,#d1,#18
	db #d2,#18,#d1,#18,#ff,#e0,#00,#a0
	db #d2,#e2,#0e,#81,#1b,#d1,#1b,#1a
	db #1b,#1a,#18,#18,#1a,#d2,#1b,#d1
	db #1b,#d2,#1a,#d1,#1a,#d2,#18,#d1
	db #18,#d2,#18,#d1,#18,#ff,#e0,#00
	db #a0,#d1,#e2,#0e,#81,#18,#d2,#18
	db #a1,#ce,#e2,#00,#00,#d0,#00,#a5
	db #d1,#e1,#02,#35,#d2,#35,#a2,#d0
	db #e2,#00,#00,#a1,#00,#a0,#d1,#e2
	db #0e,#18,#d2,#18,#a1,#ce,#e2,#00
	db #00,#d0,#00,#a5,#d1,#e1,#02,#35
	db #d2,#35,#a2,#d0,#e2,#00,#00,#a1
	db #00,#ff,#e0,#00,#a0,#d2,#e2,#0e
	db #81,#1e,#d1,#1e,#a1,#ce,#e2,#00
	db #00,#a0,#d1,#e2,#0e,#1c,#a5,#d2
	db #e1,#02,#35,#a0,#d1,#e2,#0e,#1a
	db #1f,#d2,#21,#d1,#21,#a1,#ce,#e2
	db #00,#00,#a0,#d1,#e2,#0e,#1f,#1e
	db #a5,#e1,#02,#35,#d2,#35,#d3,#35
	db #d4,#35,#a0,#d2,#e2,#0e,#1e,#d1
	db #1e,#a1,#ce,#e2,#00,#00,#a0,#d1
	db #e2,#0e,#1c,#a5,#d2,#e1,#02,#35
	db #a0,#d1,#e2,#0e,#1a,#1f,#d2,#21
	db #d1,#1f,#a1,#ce,#e2,#00,#00,#a0
	db #d1,#e2,#0e,#1e,#1c,#a5,#e1,#02
	db #35,#d2,#41,#d3,#35,#d4,#29,#ff
	db #e0,#00,#a0,#d1,#e2,#0e,#81,#18
	db #24,#a5,#e1,#02,#29,#a2,#d0,#e2
	db #00,#00,#a0,#d1,#e2,#0e,#18,#24
	db #a5,#e1,#02,#29,#a2,#d0,#e2,#00
	db #00,#a5,#d3,#e1,#02,#29,#d2,#29
	db #d1,#29,#d2,#29,#d3,#29,#d2,#29
	db #d1,#29,#d2,#29,#ff,#e0,#00,#a0
	db #d1,#e2,#0e,#81,#13,#13,#a5,#e1
	db #02,#29,#a2,#d0,#e2,#00,#00,#a0
	db #d1,#e2,#0e,#1a,#1a,#a5,#e1,#02
	db #29,#a2,#d0,#e2,#00,#00,#a0,#d1
	db #e2,#0e,#1f,#d2,#1f,#a5,#e1,#02
	db #29,#a0,#d1,#e2,#0e,#1d,#1b,#1a
	db #a5,#e1,#02,#29,#d2,#29,#ff,#e0
	db #00,#a0,#d1,#e2,#0e,#81,#14,#a2
	db #d0,#e2,#00,#00,#a0,#d1,#e2,#0e
	db #1b,#a2,#d0,#e2,#00,#00,#a0,#d2
	db #e2,#0e,#26,#a5,#d1,#e1,#02,#33
	db #a0,#e2,#0e,#18,#1a,#cd,#e1,#0a
	db #83,#32,#31,#2f,#e1,#0b,#39,#ff
	db #e0,#05,#a0,#cd,#e1,#0a,#83,#32
	db #81,#32,#33,#32,#30,#30,#32,#83
	db #32,#31,#2f,#d1,#e2,#0e,#81,#1f
	db #18,#ff,#e0,#00,#a5,#d1,#e1,#02
	db #83,#29,#d2,#29,#d1,#81,#29,#83
	db #29,#d2,#29,#d1,#81,#29,#d2,#29
	db #d3,#29,#d1,#29,#d2,#29,#d3,#29
	db #d4,#29,#ff,#e0,#00,#a0,#d1,#e2
	db #0e,#81,#18,#d2,#18,#24,#30,#a5
	db #d1,#e1,#02,#35,#d2,#35,#a0,#d1
	db #e2,#0e,#1b,#1a,#18,#d2,#18,#24
	db #30,#a5,#d1,#e1,#02,#35,#d2,#35
	db #a0,#d1,#e2,#0e,#1b,#1a,#ff,#e0
	db #00,#a0,#d1,#e2,#0e,#81,#1b,#d2
	db #1b,#26,#27,#a5,#d1,#e1,#02,#35
	db #d2,#35,#a0,#d1,#e2,#0e,#18,#1a
	db #1b,#d2,#1b,#26,#32,#a5,#d1,#e1
	db #02,#35,#d2,#35,#a0,#d1,#e2,#0e
	db #24,#18,#ff,#e0,#00,#a5,#d1,#e1
	db #02,#81,#2b,#a0,#e2,#0e,#1f,#a5
	db #e1,#02,#23,#23,#25,#d2,#25,#d3
	db #25,#d4,#25,#ff,#e0,#02,#a5,#d1
	db #e1,#02,#81,#2b,#a0,#e2,#0e,#1f
	db #a5,#e1,#02,#23,#23,#25,#d2,#25
	db #d3,#25,#d4,#25,#ff,#e0,#00,#a0
	db #d1,#e2,#0e,#81,#13,#1f,#a5,#d2
	db #e1,#02,#29,#a0,#d1,#e2,#0e,#2b
	db #a1,#d0,#e2,#00,#00,#a0,#d1,#e2
	db #0e,#20,#a5,#e1,#02,#29,#a0,#e2
	db #0e,#1f,#a1,#d0,#e2,#00,#00,#a0
	db #d1,#e2,#0e,#23,#a5,#d2,#e1,#02
	db #29,#a0,#d1,#e2,#0e,#24,#a2,#d0
	db #e2,#00,#00,#a0,#d1,#e2,#0e,#17
	db #a5,#e1,#02,#29,#a0,#e2,#0e,#1e
	db #ff,#e0,#00,#a0,#d2,#e2,#0e,#81
	db #3c,#d1,#3c,#a5,#e1,#02,#29,#d2
	db #29,#a0,#d1,#e2,#0e,#30,#33,#a1
	db #d0,#e2,#00,#00,#a0,#d1,#e2,#0e
	db #32,#a5,#d2,#e1,#02,#29,#d3,#29
	db #a0,#d1,#e2,#0e,#2b,#a1,#ce,#e2
	db #00,#00,#a0,#d1,#e2,#0e,#2c,#a5
	db #e1,#02,#29,#a0,#e2,#0e,#32,#30
	db #ff,#e0,#00,#a0,#d1,#e2,#0e,#81
	db #18,#a5,#e1,#02,#29,#a0,#e2,#0e
	db #24,#22,#1f,#23,#1f,#1a,#ff,#e0
	db #02,#a5,#d1,#e1,#02,#81,#2b,#a0
	db #e2,#0e,#1f,#a5,#e1,#02,#23,#23
	db #25,#d2,#25,#d3,#25,#d4,#25,#ff
	db #e0,#03,#a5,#d1,#e1,#02,#81,#2b
	db #a0,#e2,#0e,#1f,#a5,#e1,#02,#23
	db #23,#25,#d2,#25,#d3,#25,#d4,#25
	db #ff,#e0,#00,#a5,#d1,#e1,#02,#81
	db #2b,#23,#23,#25,#d2,#25,#d3,#25
	db #d4,#25,#24,#ff,#0f,#00,#0f,#00
	db #0f,#00,#0f,#00,#01,#0f,#83,#ad
	db #01,#00,#01,#00,#01,#0d,#83,#a7
	db #01,#00,#01,#00,#01,#0b,#83,#a1
	db #01,#00,#01,#00,#01,#09,#83,#9b
	db #01,#00,#01,#00,#01,#07,#83,#95
	db #01,#00,#01,#00,#86,#48,#01,#00
	db #03,#00,#01,#00,#01,#0a,#01,#00
	db #03,#00,#01,#00,#01,#08,#01,#00
	db #03,#00,#01,#00,#01,#0f,#88,#9e
	db #02,#00,#83,#a1,#0f,#01,#03,#fe
	db #02,#00,#83,#9b,#09,#01,#8f,#9e
	db #02,#00,#85,#a1,#01,#0f,#07,#00
	db #84,#bc,#01,#00,#01,#0f,#04,#ff
	db #08,#00,#88,#d3,#01,#0b,#01,#00
	db #01,#f5,#01,#00,#01,#0d,#01,#00
	db #01,#f3,#01,#00,#01,#0f,#01,#00
	db #01,#f1,#01,#00,#01,#0f,#0f,#ff
	db #01,#00,#01,#00,#01,#0d,#0d,#ff
	db #01,#00,#01,#00,#01,#0b,#0b,#ff
	db #01,#00,#01,#00,#01,#09,#09,#ff
	db #01,#00,#01,#00,#01,#0e,#01,#00
	db #01,#f2,#01,#00,#01,#0c,#04,#00
	db #0b,#ff,#01,#00,#01,#0e,#04,#00
	db #0b,#ff,#04,#00,#01,#0f,#04,#00
	db #0f,#ff,#01,#00,#01,#0c,#03,#00
	db #04,#fd,#01,#00,#01,#0e,#03,#00
	db #04,#fd,#01,#fe,#01,#0f,#03,#00
	db #08,#ff,#01,#00,#01,#0d,#03,#00
	db #08,#ff,#05,#00,#01,#0f,#09,#ff
	db #09,#01,#0f,#ff,#01,#0f,#02,#00
	db #0c,#ff,#0c,#01,#01,#0d,#0c,#ff
	db #0d,#01,#0e,#ff,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#82,#04
	db #04,#ff,#82,#04,#01,#00,#01,#3c
	db #03,#ec,#01,#ef,#83,#83,#01,#f1
	db #01,#2b,#01,#e5,#84,#04,#82,#02
	db #02,#ff,#82,#02,#04,#00,#82,#02
	db #02,#ff,#82,#02,#01,#00,#01,#01
	db #01,#fe,#01,#01,#01,#00,#01,#49
	db #02,#e0,#01,#d1,#01,#00,#01,#04
	db #01,#f8,#01,#04,#04,#00,#03,#01
	db #03,#fe,#03,#01,#01,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#04,#02
	db #04,#fc,#03,#02,#01,#00,#04,#04
	db #04,#f8,#04,#04,#04,#00,#01,#fc
	db #01,#fe,#01,#04,#08,#00,#01,#03
	db #01,#00,#01,#01,#08,#00,#01,#01
	db #01,#01,#01,#01,#06,#00,#01,#11
	db #01,#0e,#01,#2f,#01,#00,#01,#63
	db #02,#d8,#01,#d1,#02,#00,#01,#07
	db #01,#07,#01,#07,#08,#00,#01,#01
	db #01,#fe,#01,#01,#01,#00,#04,#02
	db #04,#fc,#01,#00,#01,#00,#01,#00
	db #01,#01,#01,#ff,#01,#00,#01,#63
	db #02,#d8,#01,#d1,#06,#00,#01,#ff
	db #01,#00,#01,#01,#08,#00,#01,#01
	db #01,#fe,#01,#01,#08,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#01,#01,#ff,#01,#00,#01,#63
	db #02,#d8,#01,#d1,#06,#00,#01,#ff
	db #01,#00,#01,#01,#08,#00,#01,#01
	db #01,#fe,#01,#01,#08,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#01,#01,#ff,#f7,#fb,#00,#00
	db #00,#55,#ff,#2a,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#a8
	db #00,#00,#85,#80,#00,#00,#00,#01
	db #02,#00,#00,#05,#00,#03,#00,#05
	db #00,#00,#04,#0c,#00,#03,#00,#02
	db #40,#00,#00,#6e,#ff,#b9,#00,#00
	db #a8,#c0,#0a,#15,#2e,#fc,#3f,#00
	db #00,#22,#40,#00,#15,#13,#3f,#3f
	db #00,#11,#00,#00,#0a,#01,#bf,#ff
	db #3f,#00,#2a,#00,#a8,#00,#02,#ff
	db #57,#bf,#3f,#2a,#01,#02,#15,#00
	db #ab,#e9,#ae,#3f,#00,#54,#00,#3f
	db #55,#ff,#b3,#ff,#1d,#aa,#00,#15
	db #aa,#51,#e3,#bb,#77,#ff,#aa,#00
	db #55,#00,#fb,#c3,#93,#ff,#df,#00
	db #00,#55,#00,#fb,#d7,#77,#ff,#82
	db #00,#00,#00,#aa,#eb,#bf,#eb,#ef
	db #aa,#00,#00,#aa,#00,#ff,#40,#d7
	db #ff,#0a,#00,#00,#55,#aa,#00,#40
	db #ff,#0f,#80,#00,#00,#00,#00,#00
	db #00,#af,#ea,#0a,#00,#00,#00,#00
	db #00,#55,#2f,#c0,#00,#00,#00,#00
	db #00,#00,#55,#e2,#ea,#00,#00,#00
	db #00,#00,#00,#bf,#ea,#ea,#00,#00
	db #00,#00,#00,#00,#2a,#ea,#ea,#00
	db #00,#00,#00,#00,#00,#55,#ea,#ea
	db #00,#00,#00,#00,#00,#00,#55,#ea
	db #af,#aa,#00,#00,#00,#00,#00,#55
	db #c0,#af,#aa,#00,#00,#00,#00,#00
	db #ff,#62,#ff,#4a,#00,#00,#00,#00
	db #55,#d7,#bb,#af,#d5,#82,#00,#00
	db #00,#55,#eb,#d7,#af,#d5,#c3,#00
	db #00,#00,#55,#c3,#e3,#0f,#5f,#eb
	db #c3,#00,#00,#41,#eb,#ff,#5f,#aa
	db #05,#c3,#00,#00,#55,#eb,#0f,#e9
	db #aa,#05,#c7,#00,#00,#55,#0f,#5e
	db #49,#aa,#00,#0f,#00,#00,#00,#af
	db #0b,#41,#d7,#00,#00,#00,#00,#00
	db #54,#a8,#41,#c3,#aa,#00,#00,#00
	db #00,#00,#00,#05,#c3,#aa,#00,#00
	db #00,#00,#00,#00,#00,#0f,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#e3,#cb,#8a,#00
	db #00,#00,#00,#00,#51,#c3,#97,#02
	db #c3,#00,#00,#00,#00,#41,#c3,#97
	db #eb,#c3,#82,#00,#00,#00,#51,#d3
	db #97,#7b,#c3,#00,#00,#00,#00,#51
	db #b7,#6b,#97,#bf,#00,#00,#00,#00
	db #55,#7f,#c3,#c7,#a2,#00,#00,#00
	db #00,#00,#7f,#cf,#ff,#aa,#00,#00
	db #00,#00,#00,#f7,#df,#c3,#8a,#00
	db #00,#00,#00,#00,#eb,#cf,#c7,#8a
	db #00,#00,#00,#00,#55,#ff,#e7,#cf
	db #8a
;
.music_info
	db "Iznogoud (1987)(Infogrames)(Charles Callet)",0
	db "Music Pro",0

	read "music_end.asm"
