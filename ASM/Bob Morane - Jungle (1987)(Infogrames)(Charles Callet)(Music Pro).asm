; Music of Bob Morane - Jungle (1987)(Infogrames)(Charles Callet)(Music Pro)
; Ripped by Megachur the 18/03/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOBMORAJ.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #8100

	read "music_header.asm"

;
.init_music
;
	xor a		; init music
	ld (l8674),a
	ld (l8678),a
	ld hl,l867f
	ld (hl),#00
	ld de,l8680
	ld bc,#0128
	ldir
	ld a,(l8887)
	ld (l87a8),a
	ld bc,l8886
	ld hl,(l8888)
	add hl,bc
	ld (l87ab),hl
	ld hl,(l888a)
	add hl,bc
	ld (l87ad),hl
	ld hl,(l888c)
	add hl,bc
	ld (l8684),hl
	ld hl,(l888e)
	add hl,bc
	ld (l86bf),hl
	ld hl,(l8890)
	add hl,bc
	ld (l86fa),hl
	ld hl,l8892
	ld (l87a9),hl
	ld a,#0f
	ld (l87b0),a
	ld hl,l8679
	ld de,l867f
	ld bc,#0005
	ldir
	ld hl,l8679
	ld de,l86ba
	ld bc,#0005
	ldir
	ld hl,l8679
	ld de,l86f5
	ld bc,#0005
	ldir
	ld a,#ff
	ld (l8674),a
	ld c,#38
	ld a,#07
	jp l8652
;
.real_play_music
;
	ld a,(l8674)
	or a
	ret z
	xor a
	ld (l8674),a
	ld a,#08
	ld (l87b3),a
	cpl
	ld (l87b2),a
	ld a,(l87b0)
	ld e,a
	ld b,#03
	ld hl,l8714
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
	call l8652
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l8193
	ld hl,l87a8
	dec (hl)
	ld ix,l867f
	xor a
.l81b5
	ld (l87af),a
	ld a,(ix+#07)
	or a
	jp nz,l84b3
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
	ld a,(l8678)
	or a
	jp z,l81db
	push hl
	push bc
	push de
	ld a,(l87af)
	ld c,a
	ld b,#00
	ld hl,l8675
	add hl,bc
	push hl
	ld e,(hl)
	add a
	ld c,a
	ld hl,l888c
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l8886
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
	ld hl,(l87a9)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l8886
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l81c9
.l8239
	bit 7,a
	jp nz,l82a9
	ld hl,l87ba
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
	ld a,(l87af)
	inc a
	ld hl,l871c
	ld bc,#0014
.l827a
	add hl,bc
	dec a
	jp nz,l827a
	call l8629
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l87af)
	inc a
	ld hl,l8758
	ld bc,#0014
.l8294
	add hl,bc
	dec a
	jp nz,l8294
	call l8629
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l849f
.l82a9
	bit 6,a
	jp nz,l82fc
	bit 5,a
	jp z,l82e9
	push af
	xor a
	ld (l87b4),a
	pop af
.l82b9
	and #1f
	ld b,a
	jp z,l82d1
	ld a,(l87b1)
	push hl
	ld hl,l87b2
	and (hl)
	pop hl
	ld c,a
	ld a,#07
	call l8652
	jp l82e0
.l82d1
	ld a,(l87b1)
	push hl
	ld hl,l87b3
	or (hl)
	pop hl
	ld c,a
	ld a,#07
	call l8652
.l82e0
	ld c,b
	ld a,#06
	call l8652
	jp l849f
.l82e9
	and #1f
	ld hl,l887a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l849f
.l82fc
	bit 5,a
	jp nz,l83a1
	and #1f
	add a
	add a
	add a
	ld hl,(l87ab)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l8318
	ld a,(de)
	bit 7,a
	jp nz,l832b
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l8344
.l832b
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
	jp nz,l833e
	ld b,#01
.l833e
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l8344
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jp nz,l8318
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l871c
	ld a,(l87af)
	inc a
.l8363
	add hl,bc
	dec a
	jp nz,l8363
	ex de,hl
	call l8629
	jp l849f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l83a1
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l83b8
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
.l83b8
	ret nz
	add e
	ld a,(de)
	add h
	dec d
	add h
	ret z
	add e
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l849f
	pop hl
	ld a,(hl)
	ld (l87b4),a
	and #3f
	ld (l87b6),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l87b7),a
	ld a,(l87b4)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l87b4),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l87b4
	or (hl)
	ld (l87b4),a
	ld (l87b5),a
	ld a,(l87b6)
	ld (l87b9),a
	ld hl,l87b7
	ld b,#ff
	cp (hl)
	jp nc,l840b
	ld b,#01
.l840b
	ld a,b
	ld (l87b8),a
	ld a,(l87b9)
	jp l82b9
	ld a,#02
	jp l841c
	ld a,#01
.l841c
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jp z,l8494
	add a
	add a
	add a
	ld hl,(l87ad)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l843b
	ld a,(de)
	bit 7,a
	jp nz,l8450
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
	jp l8469
.l8450
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
	jp nz,l8463
	ld b,#ff
.l8463
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l8469
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jp nz,l843b
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l8758
	ld a,(l87af)
	inc a
.l8488
	add hl,bc
	dec a
	jp nz,l8488
	ex de,hl
	call l8629
	jp l8499
.l8494
	ld a,#00
	ld (ix+#09),a
.l8499
	ld a,(ix+#09)
	ld (ix+#3a),a
.l849f
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l81bf
.l84b3
	ld a,(l87a8)
	or a
	jp nz,l84bd
	dec (ix+#07)
.l84bd
	ld a,(ix+#0a)
	cp #04
	jp z,l850b
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
	jp nz,l84ec
	dec (hl)
	jp nz,l84df
	inc (ix+#0a)
.l84df
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l850b
.l84ec
	dec (hl)
	jp nz,l8502
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
	jp l8504
.l8502
	inc hl
	inc hl
.l8504
	dec (hl)
	jp nz,l850b
	inc (ix+#0a)
.l850b
	ld a,(ix+#09)
	or a
	jp z,l85b0
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
	jp nz,l854b
	dec (hl)
	jp nz,l852f
	inc (ix+#21)
.l852f
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,l853b
	inc b
.l853b
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l857b
.l854b
	dec (hl)
	jp nz,l8572
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
	jp nz,l8560
	inc b
.l8560
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l8574
.l8572
	inc hl
	inc hl
.l8574
	dec (hl)
	jp nz,l857b
	inc (ix+#21)
.l857b
	ld a,(ix+#21)
	cp #04
	jp nz,l85b0
	ld a,(ix+#09)
	cp #02
	jp nz,l8592
	xor a
	ld (ix+#09),a
	jp l85b0
.l8592
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l87af)
	inc a
	ld hl,l8758
	ld bc,#0014
.l85a8
	add hl,bc
	dec a
	jp nz,l85a8
	call l8629
.l85b0
	ld c,(ix+#36)
	ld a,(l87af)
	add a
	call l8652
	ld c,(ix+#37)
	inc a
	call l8652
	ld bc,#003b
	add ix,bc
	ld a,(l87b3)
	rlc a
	ld (l87b3),a
	cpl
	ld (l87b2),a
	ld a,(l87af)
	inc a
	cp #03
	jp nz,l81b5
	ld a,(l87b4)
	or a
	jp z,l8616
	dec a
	ld (l87b4),a
	or a
	jp nz,l8616
	ld a,(l87b5)
	ld (l87b4),a
	ld a,(l87b9)
	ld hl,l87b8
	add (hl)
	ld (l87b9),a
	ld c,a
	ld hl,l87b6
	cp (hl)
	jp z,l8609
	ld hl,l87b7
	cp (hl)
	jp nz,l8611
.l8609
	ld a,(l87b8)
	xor #fe
	ld (l87b8),a
.l8611
	ld a,#06
	call l8652
.l8616
	ld a,(l87a8)
	or a
	jp nz,l8623
	ld a,(l8887)
	ld (l87a8),a
.l8623
	ld a,#ff
	ld (l8674),a
	ret
.l8629
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
.l8652
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
.l8679 equ $ + 5
.l8678 equ $ + 4
.l8675 equ $ + 1
.l8674
	db #00,#00,#00,#00,#ff,#00
	dw l867e,l867e
.l8684 equ $ + 6
.l8680 equ $ + 2
.l867f equ $ + 1
.l867e
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l86ba equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l86bf equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l86f5 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l86fa equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8714 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l871c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8758 equ $ + 2
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
.l87ad equ $ + 7
.l87ab equ $ + 5
.l87a9 equ $ + 3
.l87a8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l87b5 equ $ + 7
.l87b4 equ $ + 6
.l87b3 equ $ + 5
.l87b2 equ $ + 4
.l87b1 equ $ + 3
.l87b0 equ $ + 2
.l87af equ $ + 1
	db #00,#00,#00,#38,#00,#00,#00,#00
.l87ba equ $ + 4
.l87b9 equ $ + 3
.l87b8 equ $ + 2
.l87b7 equ $ + 1
.l87b6
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
.l887a
	db #02,#03,#04,#06,#08,#0c,#10,#18
.l8888 equ $ + 6
.l8887 equ $ + 5
.l8886 equ $ + 4
	db #20,#30,#40,#60,#00,#02,#29,#06
.l8890 equ $ + 6
.l888e equ $ + 4
.l888c equ $ + 2
.l888a
	db #29,#07,#52,#00,#77,#00,#aa,#00
.l8892
	db #dc,#00,#ea,#00,#32,#01,#4b,#01
	db #6f,#01,#93,#01,#b9,#01,#f9,#01
	db #39,#02,#4f,#02,#59,#02,#7a,#02
	db #9b,#02,#bc,#02,#cc,#02,#ec,#02
	db #0c,#03,#2e,#03,#46,#03,#5e,#03
	db #76,#03,#92,#03,#9c,#03,#b8,#03
	db #d4,#03,#f5,#03,#16,#04,#37,#04
	db #45,#04,#91,#04,#e2,#04,#32,#05
	db #82,#05,#d2,#05,#d9,#05,#03,#03
	db #04,#04,#00,#01,#01,#04,#04,#05
	db #03,#03,#04,#04,#05,#03,#03,#02
	db #02,#06,#07,#06,#07,#08,#09,#09
	db #06,#07,#0a,#0a,#0a,#0a,#0b,#0b
	db #0a,#0c,#ff,#0e,#0e,#0f,#0f,#0d
	db #0d,#0e,#0e,#0f,#0f,#10,#11,#11
	db #12,#12,#10,#11,#11,#0e,#0e,#11
	db #11,#11,#11,#13,#13,#11,#11,#13
	db #13,#14,#14,#14,#14,#14,#14,#16
	db #16,#14,#14,#17,#17,#14,#14,#18
	db #18,#19,#19,#18,#1a,#ff,#1c,#1c
	db #1c,#1c,#1b,#1b,#1c,#1c,#1c,#1c
	db #1d,#1e,#1e,#1f,#1f,#1d,#1e,#1e
	db #1b,#1e,#1e,#1e,#1e,#20,#20,#1e
	db #1e,#20,#20,#1e,#1e,#1e,#1e,#1e
	db #1e,#1f,#1f,#1e,#1e,#20,#20,#1c
	db #1c,#1e,#1e,#1f,#1f,#1e,#22,#ff
	db #e0,#00,#e3,#01,#41,#cd,#e1,#0d
	db #8a,#00,#00,#00,#00,#ff,#e0,#00
	db #a0,#c5,#e2,#05,#82,#37,#33,#32
	db #30,#2f,#30,#33,#37,#37,#33,#32
	db #30,#2f,#30,#33,#37,#37,#33,#32
	db #30,#2f,#30,#33,#37,#37,#33,#32
	db #30,#2f,#30,#33,#37,#38,#33,#32
	db #30,#2f,#30,#33,#37,#38,#33,#32
	db #30,#2f,#30,#33,#37,#38,#33,#32
	db #30,#2f,#30,#33,#37,#38,#33,#32
	db #30,#2f,#30,#33,#37,#ff,#e0,#00
	db #a0,#c1,#e2,#05,#86,#3c,#3c,#37
	db #3c,#88,#3b,#86,#38,#37,#33,#32
	db #37,#35,#37,#35,#32,#33,#ff,#e0
	db #00,#a0,#c2,#e2,#05,#84,#24,#c1
	db #24,#c0,#24,#c2,#24,#2b,#c1,#2b
	db #c0,#2b,#c1,#2b,#c0,#2b,#c2,#2c
	db #c1,#2c,#c0,#2c,#c2,#26,#c1,#26
	db #27,#26,#ff,#e0,#05,#a0,#c2,#e2
	db #05,#84,#24,#c1,#24,#c0,#24,#c2
	db #24,#2b,#c1,#2b,#c0,#2b,#c1,#2b
	db #c0,#2b,#c2,#2c,#c1,#2c,#c0,#2c
	db #c2,#26,#c1,#26,#27,#26,#ff,#e0
	db #f4,#a0,#c1,#e2,#05,#84,#37,#c0
	db #37,#c2,#3e,#c1,#3e,#c0,#3e,#c1
	db #37,#c0,#37,#c1,#35,#c0,#35,#c2
	db #3c,#c1,#3c,#c0,#3c,#c1,#37,#2b
	db #c0,#2b,#c1,#1f,#ff,#e0,#00,#a0
	db #cd,#e2,#04,#84,#33,#c0,#33,#cd
	db #33,#c0,#33,#cd,#30,#c0,#30,#cd
	db #30,#35,#c0,#35,#cd,#35,#c0,#35
	db #cd,#32,#c0,#32,#cd,#32,#33,#32
	db #33,#c0,#33,#cd,#33,#c0,#33,#cd
	db #30,#c0,#30,#cd,#30,#38,#c0,#35
	db #cd,#38,#c0,#35,#cd,#35,#c0,#32
	db #cd,#35,#37,#32,#ff,#e0,#00,#a0
	db #cd,#e2,#04,#84,#3a,#c0,#33,#cd
	db #3a,#c0,#33,#cd,#33,#c0,#30,#cd
	db #33,#3c,#c0,#35,#cd,#3c,#c0,#35
	db #cd,#35,#c0,#32,#cd,#35,#37,#38
	db #3a,#c0,#33,#cd,#3a,#c0,#33,#cd
	db #33,#c0,#30,#cd,#33,#38,#c0,#35
	db #cd,#38,#c0,#35,#cd,#32,#c0,#32
	db #cd,#32,#33,#32,#ff,#e0,#00,#a0
	db #cd,#e1,#04,#88,#3c,#3a,#39,#37
	db #3a,#39,#35,#32,#8a,#30,#c0,#30
	db #30,#30,#ff,#e0,#00,#a0,#c0,#8a
	db #30,#30,#30,#30,#ff,#e0,#00,#a0
	db #cd,#e2,#04,#86,#18,#cc,#e1,#08
	db #18,#cb,#18,#ca,#18,#c5,#e2,#05
	db #84,#11,#c4,#13,#c3,#16,#18,#c2
	db #1d,#1f,#c1,#24,#26,#ff,#e0,#05
	db #a0,#cd,#e2,#04,#86,#18,#cc,#e1
	db #08,#18,#cb,#18,#ca,#18,#c5,#e2
	db #05,#84,#11,#c4,#13,#c3,#16,#18
	db #c2,#1d,#1f,#c1,#24,#26,#ff,#e0
	db #05,#a0,#cd,#e2,#04,#86,#1a,#cc
	db #e1,#08,#1a,#cb,#1a,#ca,#1a,#c5
	db #e2,#05,#84,#11,#c4,#13,#c3,#16
	db #18,#c2,#1d,#1f,#c1,#24,#26,#ff
	db #e0,#00,#a0,#cd,#e2,#04,#88,#18
	db #1b,#1a,#18,#16,#1a,#18,#16,#ff
	db #e0,#00,#a0,#cd,#e2,#04,#84,#18
	db #24,#18,#c0,#18,#cd,#18,#c0,#18
	db #cd,#24,#18,#c0,#18,#cd,#24,#18
	db #24,#18,#24,#c0,#24,#cd,#18,#ff
	db #e0,#05,#a0,#cd,#e2,#04,#84,#18
	db #24,#18,#c0,#18,#cd,#18,#c0,#18
	db #cd,#24,#18,#c0,#18,#cd,#24,#18
	db #24,#18,#24,#c0,#24,#cd,#18,#ff
	db #e0,#00,#a0,#cd,#e2,#04,#84,#1f
	db #1f,#c0,#1f,#cd,#1f,#1f,#c0,#1d
	db #cd,#1f,#1d,#c0,#1b,#cd,#1d,#1d
	db #c0,#1a,#cd,#1f,#c0,#1f,#cd,#1a
	db #1f,#ff,#e0,#00,#a0,#ca,#e1,#08
	db #84,#18,#18,#1a,#1a,#1b,#1b,#1a
	db #1a,#18,#18,#1a,#1a,#1b,#1b,#1a
	db #1a,#ff,#e0,#05,#a0,#ca,#e1,#08
	db #84,#18,#18,#1a,#1a,#1b,#1b,#1a
	db #1a,#18,#18,#1a,#1a,#1b,#1b,#1a
	db #1a,#ff,#e0,#03,#a0,#ca,#e1,#08
	db #84,#18,#18,#1a,#1a,#1c,#1c,#1a
	db #1a,#18,#18,#1a,#1a,#1c,#1c,#1a
	db #1a,#ff,#e0,#00,#a0,#c1,#e2,#05
	db #84,#1b,#1a,#18,#c2,#1b,#1a,#18
	db #c3,#1b,#1a,#18,#c4,#1b,#1a,#18
	db #c5,#1b,#1a,#18,#24,#ff,#e0,#00
	db #a0,#c0,#8a,#30,#30,#30,#30,#ff
	db #e0,#05,#a0,#c1,#e2,#05,#84,#1b
	db #1a,#18,#c2,#1b,#1a,#18,#c3,#1b
	db #1a,#18,#c4,#1b,#1a,#18,#c5,#1b
	db #1a,#18,#24,#ff,#e0,#03,#a0,#c1
	db #e2,#05,#84,#1c,#1a,#18,#c2,#1c
	db #1a,#18,#c3,#1c,#1a,#18,#c4,#1c
	db #1a,#18,#c5,#1c,#1a,#18,#24,#ff
	db #e0,#00,#a0,#cd,#e2,#04,#86,#18
	db #cc,#e1,#08,#18,#cb,#18,#ca,#18
	db #c5,#e2,#05,#84,#1d,#c4,#1f,#c3
	db #22,#24,#c2,#29,#2b,#c1,#30,#32
	db #ff,#e0,#05,#a0,#cd,#e2,#04,#86
	db #18,#cc,#e1,#08,#18,#cb,#18,#ca
	db #18,#c5,#e2,#05,#84,#1d,#c4,#1f
	db #c3,#22,#24,#c2,#29,#2b,#c1,#30
	db #32,#ff,#e0,#05,#a0,#cd,#e2,#04
	db #86,#1a,#cc,#e1,#08,#1a,#cb,#1a
	db #ca,#1a,#c5,#e2,#05,#84,#1d,#c4
	db #1f,#c3,#22,#24,#c2,#29,#2b,#c1
	db #30,#32,#ff,#e0,#00,#e3,#01,#41
	db #cd,#e1,#0d,#8a,#00,#00,#00,#00
	db #ff,#e0,#00,#a1,#cf,#e2,#00,#84
	db #00,#a2,#d0,#00,#a5,#d1,#e1,#02
	db #31,#d2,#31,#a1,#cf,#e2,#00,#00
	db #e3,#01,#41,#cd,#e1,#0d,#00,#a5
	db #d1,#e1,#02,#31,#d2,#31,#a1,#cf
	db #e2,#00,#00,#e3,#01,#41,#cd,#e1
	db #0d,#00,#a5,#d1,#e1,#02,#31,#d2
	db #31,#e3,#01,#41,#cd,#e1,#0d,#00
	db #a2,#d0,#e2,#00,#00,#a5,#d1,#e1
	db #02,#31,#d2,#31,#ff,#e0,#00,#a1
	db #cf,#e2,#00,#84,#00,#a2,#d0,#00
	db #a5,#d1,#e1,#02,#31,#d2,#31,#a1
	db #cf,#e2,#00,#00,#e3,#01,#41,#cd
	db #e1,#0d,#00,#a5,#d1,#e1,#02,#31
	db #d2,#31,#a1,#cf,#e2,#00,#00,#e3
	db #01,#41,#cd,#e1,#0d,#00,#a5,#d1
	db #e1,#02,#30,#e3,#01,#41,#cd,#e1
	db #0d,#00,#a5,#d1,#e1,#02,#2d,#e3
	db #01,#41,#cd,#e1,#0d,#00,#a5,#d1
	db #e1,#02,#2a,#d2,#24,#ff,#e0,#00
	db #a0,#cd,#e2,#04,#84,#18,#24,#a5
	db #d1,#e1,#02,#31,#d2,#31,#a0,#cd
	db #e2,#04,#18,#e3,#01,#41,#e1,#0d
	db #00,#a5,#d1,#e1,#02,#31,#a0,#cd
	db #e2,#04,#18,#a1,#cf,#e2,#00,#00
	db #a0,#cd,#e2,#04,#24,#a5,#d1,#e1
	db #02,#30,#e3,#01,#41,#cd,#e1,#0d
	db #00,#a0,#e2,#04,#18,#e3,#01,#41
	db #e1,#0d,#00,#a5,#d1,#e1,#02,#2a
	db #a0,#cd,#e2,#04,#18,#ff,#e0,#00
	db #a0,#cd,#e2,#04,#84,#1d,#29,#a5
	db #d1,#e1,#02,#31,#d2,#31,#a0,#cd
	db #e2,#04,#1d,#e3,#01,#41,#e1,#0d
	db #00,#a5,#d1,#e1,#02,#31,#a0,#cd
	db #e2,#04,#1d,#a1,#cf,#e2,#00,#00
	db #a0,#cd,#e2,#04,#29,#a5,#d1,#e1
	db #02,#30,#e3,#01,#41,#cd,#e1,#0d
	db #00,#a0,#e2,#04,#1d,#e3,#01,#41
	db #e1,#0d,#00,#a5,#d1,#e1,#02,#2a
	db #a0,#cd,#e2,#04,#1d,#ff,#e0,#00
	db #a0,#cd,#e2,#04,#84,#1b,#27,#a5
	db #d1,#e1,#02,#31,#d2,#31,#a0,#cd
	db #e2,#04,#1b,#e3,#01,#41,#e1,#0d
	db #00,#a5,#d1,#e1,#02,#31,#a0,#cd
	db #e2,#04,#1b,#a1,#cf,#e2,#00,#00
	db #a0,#cd,#e2,#04,#27,#a5,#d1,#e1
	db #02,#30,#e3,#01,#41,#cd,#e1,#0d
	db #00,#a0,#e2,#04,#1b,#e3,#01,#41
	db #e1,#0d,#00,#a5,#d1,#e1,#02,#2a
	db #a0,#cd,#e2,#04,#1b,#ff,#e0,#00
	db #a0,#c0,#86,#30,#ff,#e0,#00,#a0
	db #cd,#e2,#04,#84,#1f,#2b,#a5,#d1
	db #e1,#02,#31,#d2,#31,#a0,#cd,#e2
	db #04,#1f,#e3,#01,#41,#e1,#0d,#00
	db #a5,#d1,#e1,#02,#31,#a0,#cd,#e2
	db #04,#1f,#a1,#cf,#e2,#00,#00,#a0
	db #cd,#e2,#04,#29,#a5,#d1,#e1,#02
	db #30,#e3,#01,#41,#cd,#e1,#0d,#00
	db #a0,#e2,#04,#1b,#e3,#01,#41,#e1
	db #0d,#00,#a5,#d1,#e1,#02,#2a,#a0
	db #cd,#e2,#04,#1a,#ff,#0f,#00,#0f
	db #00,#0f,#00,#0f,#00,#01,#0f,#83
	db #ad,#01,#00,#01,#00,#01,#0d,#83
	db #a7,#01,#00,#01,#00,#01,#0b,#83
	db #a1,#01,#00,#01,#00,#01,#09,#83
	db #9b,#01,#00,#01,#00,#01,#07,#83
	db #95,#01,#00,#01,#00,#86,#46,#01
	db #00,#03,#00,#01,#00,#01,#0a,#01
	db #00,#03,#00,#01,#00,#85,#46,#01
	db #00,#03,#00,#01,#00,#01,#0e,#01
	db #00,#03,#00,#01,#00,#01,#09,#04
	db #ff,#08,#00,#9c,#d3,#01,#0b,#04
	db #ff,#08,#00,#8e,#d3,#01,#0d,#04
	db #ff,#08,#00,#8c,#d3,#01,#0f,#04
	db #ff,#08,#00,#88,#d3,#01,#0b,#02
	db #00,#01,#f5,#01,#00,#01,#0d,#02
	db #00,#01,#f3,#01,#00,#01,#0f,#02
	db #00,#01,#f1,#01,#00,#01,#0f,#0f
	db #ff,#01,#00,#01,#00,#01,#0d,#0d
	db #ff,#01,#00,#01,#00,#01,#0b,#0b
	db #ff,#01,#00,#01,#00,#01,#09,#09
	db #ff,#01,#00,#01,#00,#01,#0e,#01
	db #00,#01,#f2,#01,#00,#01,#0c,#91
	db #e3,#a1,#63,#a1,#63,#82,#14,#0c
	db #00,#01,#00,#82,#94,#01,#0d,#04
	db #ff,#08,#00,#8a,#d3,#01,#0b,#04
	db #ff,#08,#00,#8c,#d3,#01,#09,#04
	db #ff,#08,#00,#95,#d3,#01,#07,#04
	db #ff,#08,#00,#9c,#d3,#01,#0d,#03
	db #00,#08,#ff,#05,#00,#01,#0f,#09
	db #ff,#09,#01,#0f,#ff,#01,#0f,#02
	db #00,#0c,#ff,#0c,#01,#01,#0d,#0c
	db #ff,#0d,#01,#0e,#ff,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#84
	db #08,#82,#88,#84,#08,#01,#00,#01
	db #3c,#03,#ec,#01,#ef,#86,#86,#01
	db #f1,#01,#2b,#01,#e5,#88,#08,#82
	db #04,#04,#fe,#03,#02,#08,#00,#84
	db #08,#82,#88,#84,#08,#85,#0a,#03
	db #fd,#85,#0a,#01,#05,#01,#00,#01
	db #63,#03,#e2,#01,#d1,#0c,#00,#0c
	db #fc,#0c,#fc,#45,#00,#08,#00,#01
	db #01,#01,#fe,#01,#01,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff,#01,#00,#01
	db #63,#02,#d8,#01,#d1,#06,#00,#01
	db #ff,#01,#00,#01,#01,#08,#00,#01
	db #01,#01,#fe,#01,#01,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff,#01,#00,#01
	db #63,#02,#d8,#01,#d1,#06,#00,#01
	db #ff,#01,#00,#01,#01,#08,#00,#01
	db #01,#01,#fe,#01,#01,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff,#01,#00,#01
	db #63,#02,#d8,#01,#d1,#06,#00,#01
	db #ff,#01,#00,#01,#01,#08,#00,#01
	db #01,#01,#fe,#01,#01,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff,#01,#00,#01
	db #63,#02,#d8,#01,#d1,#06,#00,#01
	db #ff,#01,#00,#01,#01,#08,#00,#01
	db #01,#01,#fe,#01,#01,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#fc,#00
	db #00,#00,#00,#00,#00,#54,#fc,#a8
	db #00,#00,#00,#00,#00,#fc,#c4,#a8
	db #00,#00,#00,#11,#33,#fc,#98,#00
	db #00,#00,#00,#33,#3c,#66,#cc,#00
	db #00,#00,#00,#36,#3c,#39,#8c,#00
	db #00,#00,#00,#3c,#94,#39,#22,#00
	db #00,#00,#00,#68,#3c,#68,#00,#00
	db #00,#00,#14,#68,#2c,#68,#00,#00
	db #00,#00,#14,#3c,#3c,#80,#00,#00
;
; #0119	; stop music
; ld c,#00
; ld a,#08
; call #8652
; inc a
; call #8652
; inc a
; call #8652
;
.play_music		; added by Megachur
;
	call real_play_music
	jp real_play_music
;
.music_info
	db "Bob Morane - Jungle (1987)(Infogrames)(Charles Callet)",0
	db "Music Pro",0

	read "music_end.asm"
