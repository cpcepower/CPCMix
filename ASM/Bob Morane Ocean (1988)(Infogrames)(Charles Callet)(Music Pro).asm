; Music of Bob Morane Ocean (1988)(Infogrames)(Charles Callet)(Music Pro)
; Ripped by Megachur the 03/04/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOBMORAO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #0da3

	read "music_header.asm"

;
.init_music
;
	xor a
	ld (l1348),a
	ld (l134c),a
	ld hl,l15be
	ld de,(l131c)
	ld (hl),d
	inc hl
	ld (hl),e
	xor a
	ld (l1348),a
	ld (l134c),a
	ld hl,l1353
	ld (hl),#00
	ld de,l1354
	ld bc,#0128
	ldir
	ld a,(l157d)
	ld (l147c),a
	ld bc,l157c
	ld hl,(l157e)
	add hl,bc
	ld (l147f),hl
	ld hl,(l1580)
	add hl,bc
	ld (l1481),hl
	ld hl,(l1582)
	add hl,bc
	ld (l1358),hl
	ld hl,(l1584)
	add hl,bc
	ld (l1393),hl
	ld hl,(l1586)
	add hl,bc
	ld (l13ce),hl
	ld hl,l1588
	ld (l147d),hl
	ld a,#0f
	ld (l1484),a
	ld hl,l134d
	ld de,l1353
	ld bc,#0005
	ldir
	ld hl,l134d
	ld de,l138e
	ld bc,#0005
	ldir
	ld hl,l134d
	ld de,l13c9
	ld bc,#0005
	ldir
	ld a,#ff
	ld (l1348),a
	ld c,#38
	ld a,#07
	jp l155a
	ld a,#0f
.l0e2e
	push af
	ld a,#0a
	ld (#0695),a
.l0e34
	ld a,(#0695)
	cp #14
	jr nz,l0e34
	pop af
	dec a
	ld (l1484),a
	or a
	jr nz,l0e2e
	ret
;
.play_music
;
	ld a,(l1348)
	or a
	ret z
	xor a
	ld (l1348),a
	ld a,#08
	ld (l1487),a
	cpl
	ld (l1486),a
	ld a,(l1484)
	ld e,a
	ld b,#03
	ld hl,l13e8
.l0e5f
	ld a,(hl)
	ld c,a
	ld a,c
	cp e
	jp c,l0e67
	ld a,e
.l0e67
	ld c,a
	ld a,b
	add #07
	push de
	call l155a
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l0e5f
	ld hl,l147c
	dec (hl)
	ld ix,l1353
	xor a
.l0e81
	ld (l1483),a
	ld a,(ix+#07)
	or a
	jp nz,l1138
.l0e8b
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l0e95
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jp nz,l0ef0
	ld l,(ix+#01)
	ld h,(ix+#02)
.l0ea7
	ld a,(hl)
	cp #ff
	jp nz,l0ed1
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l134c)
	or a
	jp z,l0ea7
	push hl
	push bc
	ld a,(l1349)
	ld (l15be),a
	xor a
	ld (l1349),a
	pop bc
	pop hl
	jp l0ea7
.l0ed1
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l147d)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l157c
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l0e95
.l0ef0
	bit 7,a
	jp nz,l0f60
	ld hl,l148e
	or a
	jp z,l0eff
	add (ix+#20)
.l0eff
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
	ld a,(l1483)
	inc a
	ld hl,l13f0
	ld bc,#0014
.l0f31
	add hl,bc
	dec a
	jp nz,l0f31
	call l12ae
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l1483)
	inc a
	ld hl,l142c
	ld bc,#0014
.l0f4b
	add hl,bc
	dec a
	jp nz,l0f4b
	call l12ae
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l1124
.l0f60
	bit 6,a
	jp nz,l0fb3
	bit 5,a
	jp z,l0fa0
	push af
	xor a
	ld (l1488),a
	pop af
.l0f70
	and #1f
	ld b,a
	jp z,l0f88
	ld a,(l1485)
	push hl
	ld hl,l1486
	and (hl)
	pop hl
	ld c,a
	ld a,#07
	call l155a
	jp l0f97
.l0f88
	ld a,(l1485)
	push hl
	ld hl,l1487
	or (hl)
	pop hl
	ld c,a
	ld a,#07
	call l155a
.l0f97
	ld c,b
	ld a,#06
	call l155a
	jp l1124
.l0fa0
	and #1f
	ld hl,l154e
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l1124
.l0fb3
	bit 5,a
	jp nz,l1026
	and #1f
	add a
	add a
	add a
	ld hl,(l147f)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l0fcf
	ld a,(de)
	bit 7,a
	jp nz,l0fe2
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
.l0fdc
	inc de
	ld a,(de)
	ld (hl),a
.l0fdf
	jp l0ffb
.l0fe2
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
	jp nz,l0ff5
	ld b,#01
.l0ff5
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l0ffb
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jp nz,l0fcf
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l13f0
	ld a,(l1483)
	inc a
.l101a
	add hl,bc
	dec a
	jp nz,l101a
	ex de,hl
	call l12ae
	jp l1124
.l1026
	inc hl
.l1027
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l103d
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
.l103d
	ld b,l
	djnz l0fdf
	djnz l0fdc
	djnz l1091
	djnz l1027
	ld a,(hl)
	ld (ix+#20),a
	jp l1124
	pop hl
	ld a,(hl)
	ld (l1488),a
	and #3f
	ld (l148a),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l148b),a
	ld a,(l1488)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l1488),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l1488
	or (hl)
	ld (l1488),a
	ld (l1489),a
	ld a,(l148a)
	ld (l148d),a
	ld hl,l148b
	ld b,#ff
	cp (hl)
	jp nc,l1090
	ld b,#01
.l1090
	ld a,b
.l1091
	ld (l148c),a
	ld a,(l148d)
	jp l0f70
	ld a,#02
	jp l10a1
	ld a,#01
.l10a1
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jp z,l1119
	add a
	add a
	add a
	ld hl,(l1481)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l10c0
	ld a,(de)
	bit 7,a
	jp nz,l10d5
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
	jp l10ee
.l10d5
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
	jp nz,l10e8
	ld b,#ff
.l10e8
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l10ee
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jp nz,l10c0
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l142c
	ld a,(l1483)
	inc a
.l110d
	add hl,bc
	dec a
	jp nz,l110d
	ex de,hl
	call l12ae
	jp l111e
.l1119
	ld a,#00
	ld (ix+#09),a
.l111e
	ld a,(ix+#09)
	ld (ix+#3a),a
.l1124
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l0e8b
.l1138
	ld a,(l147c)
	or a
	jp nz,l1142
	dec (ix+#07)
.l1142
	ld a,(ix+#0a)
	cp #04
	jp z,l1190
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
	jp nz,l1171
	dec (hl)
	jp nz,l1164
	inc (ix+#0a)
.l1164
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l1190
.l1171
	dec (hl)
	jp nz,l1187
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
	jp l1189
.l1187
	inc hl
	inc hl
.l1189
	dec (hl)
	jp nz,l1190
	inc (ix+#0a)
.l1190
	ld a,(ix+#09)
	or a
	jp z,l1235
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
	jp nz,l11d0
	dec (hl)
	jp nz,l11b4
	inc (ix+#21)
.l11b4
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,l11c0
	inc b
.l11c0
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l1200
.l11d0
	dec (hl)
	jp nz,l11f7
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
	jp nz,l11e5
	inc b
.l11e5
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l11f9
.l11f7
	inc hl
	inc hl
.l11f9
	dec (hl)
	jp nz,l1200
	inc (ix+#21)
.l1200
	ld a,(ix+#21)
	cp #04
	jp nz,l1235
	ld a,(ix+#09)
	cp #02
	jp nz,l1217
	xor a
	ld (ix+#09),a
	jp l1235
.l1217
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l1483)
	inc a
	ld hl,l142c
	ld bc,#0014
.l122d
	add hl,bc
	dec a
	jp nz,l122d
	call l12ae
.l1235
	ld c,(ix+#36)
	ld a,(l1483)
	add a
	call l155a
	ld c,(ix+#37)
	inc a
	call l155a
	ld bc,#003b
	add ix,bc
	ld a,(l1487)
	rlc a
	ld (l1487),a
	cpl
	ld (l1486),a
	ld a,(l1483)
	inc a
	cp #03
	jp nz,l0e81
	ld a,(l1488)
	or a
	jp z,l129b
	dec a
	ld (l1488),a
	or a
	jp nz,l129b
	ld a,(l1489)
	ld (l1488),a
	ld a,(l148d)
	ld hl,l148c
	add (hl)
	ld (l148d),a
	ld c,a
	ld hl,l148a
	cp (hl)
	jp z,l128e
	ld hl,l148b
	cp (hl)
	jp nz,l1296
.l128e
	ld a,(l148c)
	xor #fe
	ld (l148c),a
.l1296
	ld a,#06
	call l155a
.l129b
	ld a,(l147c)
	or a
	jp nz,l12a8
	ld a,(l157d)
	ld (l147c),a
.l12a8
	ld a,#ff
	ld (l1348),a
	ret
.l12ae
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
	ld e,a
	ld d,#00
	add hl,de
	add hl,de
	ld a,(hl)
	inc hl
	ld b,(hl)
	ld l,a
	ld h,b
	ret
	push bc
	push hl
	push de
	push af
	xor a
	ld (l1348),a
	ld hl,l15be
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld (l131c),de
	ld (hl),#ff
	dec hl
	ld (hl),#00
	ld hl,l134d
	ld de,l1353
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l135a),a
	ld (l1349),a
	dec a
	ld (l1348),a
	ld (l134c),a
	pop af
	pop de
	pop hl
	pop bc
	ret
.l131c
	nop
	nop
	push hl
	push de
	push bc
	push af
	xor a
	ld (l1348),a
	pop af
	push af
	ld (l1349),a
	ld hl,l134d
	ld de,l1353
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l135a),a
	dec a
	ld (l1348),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.l134d equ $ + 5
.l134c equ $ + 4
.l1349 equ $ + 1
.l1348
	db #ff,#00,#00,#00,#00,#00
	dw l1352,l1352
.l1352
	db #ff
.l1353
	db #00
.l1358 equ $ + 4
.l1354
	dw l1352,l1352,l15be
.l135a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l138e equ $ + 4
	db #00,#00,#00,#00,#00,#52,#13,#52
.l1393 equ $ + 1
	db #13,#d0,#15,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l13c9 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l13ce equ $ + 4
	dw l1352,l1352,l15e2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l13e8
	db #00,#00,#00,#00,#00,#00,#00,#00
.l13f0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l142c equ $ + 4
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
.l147c equ $ + 4
	db #00,#00,#00,#00,#03
.l1481 equ $ + 4
.l147f equ $ + 2
.l147d
	dw l1588,l1cad,l1dad
.l148a equ $ + 7
.l1489 equ $ + 6
.l1488 equ $ + 5
.l1487 equ $ + 4
.l1486 equ $ + 3
.l1485 equ $ + 2
.l1484 equ $ + 1
.l1483
	db #00,#0f,#38,#00,#00,#00,#00,#00
.l148e equ $ + 3
.l148d equ $ + 2
.l148c equ $ + 1
.l148b
	db #00,#00,#00,#00,#00
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
.l154e
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
.l155a
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
.l1582 equ $ + 6
.l1580 equ $ + 4
.l157e equ $ + 2
.l157d equ $ + 1
.l157c
	db #00,#03,#31,#07,#31,#08,#42,#00
.l1588 equ $ + 4
.l1586 equ $ + 2
.l1584
	db #54,#00,#66,#00,#78,#00,#a5,#00
	db #bb,#00,#d1,#00,#f4,#00,#21,#01
	db #4b,#01,#58,#01,#7b,#01,#a5,#01
	db #cd,#01,#f5,#01,#1d,#02,#72,#02
	db #a7,#02,#07,#03,#53,#03,#62,#03
	db #b7,#03,#d6,#03,#4f,#04,#c7,#04
	db #4b,#05,#cf,#05,#31,#06,#45,#06
.l15be equ $ + 2
	db #b9,#06,#00,#01,#02,#01,#02,#03
	db #03,#05,#06,#01,#02,#01,#02,#03
	db #03,#07,#07,#ff,#0e,#0a,#0b,#0a
	db #0b,#0c,#0c,#0f,#10,#0a,#0b,#0a
.l15e2 equ $ + 6
	db #0b,#0c,#0c,#11,#11,#ff,#16,#13
	db #13,#13,#13,#14,#14,#17,#18,#13
	db #13,#13,#19,#14,#14,#1a,#1a,#ff
	db #e0,#0c,#a0,#c1,#e1,#05,#84,#29
	db #29,#80,#29,#83,#29,#c0,#80,#29
	db #c1,#82,#29,#28,#c0,#80,#29,#c1
	db #82,#28,#80,#28,#82,#28,#c0,#80
	db #28,#c1,#82,#28,#80,#28,#82,#28
	db #cc,#e1,#03,#1c,#ff,#e0,#80,#a0
	db #c0,#80,#35,#c1,#e1,#05,#82,#35
	db #35,#35,#35,#34,#34,#c0,#83,#34
	db #88,#34,#ff,#e0,#00,#a0,#c0,#80
	db #35,#c1,#e1,#05,#82,#35,#35,#35
	db #35,#37,#37,#c0,#83,#34,#88,#34
	db #ff,#e0,#00,#a0,#c1,#e1,#05,#83
	db #32,#35,#82,#32,#85,#3e,#80,#39
	db #3a,#82,#39,#80,#37,#83,#35,#80
	db #35,#37,#82,#35,#80,#34,#83,#32
	db #c0,#82,#32,#ff,#e0,#04,#a0,#c1
	db #e1,#05,#84,#29,#29,#80,#29,#83
	db #29,#c0,#80,#29,#c1,#82,#29,#28
	db #c0,#80,#29,#c1,#82,#28,#80,#28
	db #82,#28,#c0,#80,#28,#c1,#82,#28
	db #80,#28,#82,#28,#c3,#80,#28,#34
	db #ff,#e0,#0c,#a0,#c1,#e1,#05,#80
	db #29,#83,#29,#c0,#80,#29,#c1,#82
	db #29,#28,#c0,#80,#29,#c1,#82,#28
	db #80,#28,#82,#28,#c0,#80,#28,#c1
	db #82,#28,#80,#28,#82,#28,#c3,#80
	db #28,#34,#ff,#e0,#0c,#a0,#c1,#e1
	db #05,#80,#29,#c3,#22,#29,#35,#ff
	db #e0,#fd,#a0,#c1,#e1,#05,#83,#32
	db #35,#82,#32,#85,#3e,#80,#39,#3a
	db #82,#39,#80,#37,#83,#35,#80,#35
	db #37,#82,#35,#80,#34,#83,#32,#c0
	db #82,#32,#ff,#e0,#0e,#a0,#c1,#e1
	db #05,#84,#24,#24,#80,#24,#83,#24
	db #c0,#80,#24,#c1,#82,#24,#22,#c0
	db #80,#24,#c1,#82,#22,#80,#22,#82
	db #22,#c0,#80,#22,#c1,#82,#22,#80
	db #22,#82,#22,#16,#ff,#e0,#00,#a0
	db #c5,#e1,#04,#80,#24,#30,#3c,#37
	db #30,#3c,#24,#2b,#30,#3c,#2a,#30
	db #36,#30,#2a,#3c,#24,#2b,#30,#3c
	db #37,#30,#2b,#30,#24,#2b,#30,#36
	db #3c,#39,#40,#3c,#ff,#e0,#fe,#a0
	db #c5,#e1,#04,#80,#24,#30,#3c,#30
	db #30,#30,#24,#30,#30,#2b,#2a,#2b
	db #36,#30,#2a,#3c,#24,#2b,#30,#3c
	db #37,#30,#2b,#30,#24,#2b,#30,#36
	db #3c,#39,#40,#3c,#ff,#e0,#fe,#a0
	db #c5,#e1,#04,#80,#24,#30,#3c,#30
	db #30,#30,#24,#30,#30,#32,#2a,#32
	db #36,#30,#2a,#3c,#24,#2b,#30,#3c
	db #37,#30,#2b,#30,#24,#2b,#30,#36
	db #3c,#39,#40,#3c,#ff,#e0,#00,#a0
	db #c1,#e1,#06,#80,#26,#c3,#e1,#05
	db #26,#26,#c1,#e1,#06,#29,#c3,#e1
	db #05,#26,#26,#c1,#e1,#06,#26,#c3
	db #e1,#05,#26,#c1,#e1,#06,#32,#c3
	db #e1,#05,#26,#26,#26,#26,#26,#c1
	db #e1,#06,#2d,#2e,#2d,#c3,#e1,#05
	db #26,#c1,#e1,#06,#2b,#29,#c3,#e1
	db #05,#2b,#26,#c1,#e1,#06,#29,#2b
	db #29,#c3,#e1,#05,#24,#c1,#e1,#06
	db #28,#26,#c3,#e1,#05,#26,#26,#26
	db #26,#ff,#e0,#00,#a0,#c1,#e1,#06
	db #80,#32,#c3,#e1,#05,#2e,#2e,#2e
	db #c1,#e1,#06,#32,#c3,#e1,#05,#2e
	db #2e,#2e,#c1,#e1,#06,#32,#c3,#e1
	db #05,#2e,#2e,#2e,#2e,#c1,#e1,#06
	db #32,#c3,#e1,#05,#2e,#c1,#e1,#06
	db #30,#c3,#e1,#05,#2b,#2b,#ff,#e0
	db #00,#a0,#c1,#e1,#06,#80,#32,#c3
	db #e1,#05,#2e,#2e,#2e,#c1,#e1,#06
	db #32,#c3,#e1,#05,#2e,#2e,#2e,#c1
	db #e1,#06,#32,#c3,#e1,#05,#2e,#2e
	db #2e,#2e,#c1,#e1,#06,#32,#c3,#e1
	db #05,#2e,#c1,#e1,#06,#30,#c3,#e1
	db #05,#2b,#2b,#c1,#e1,#06,#30,#c3
	db #e1,#05,#2b,#c1,#e1,#06,#30,#30
	db #c3,#e1,#05,#2b,#2b,#c1,#e1,#06
	db #30,#c3,#e1,#05,#2b,#c1,#e1,#06
	db #30,#30,#c3,#e1,#05,#2b,#c1,#e1
	db #06,#30,#c3,#e1,#05,#2b,#ff,#e0
	db #00,#a0,#c1,#e1,#06,#80,#32,#c3
	db #e1,#05,#2e,#2e,#2e,#2e,#c1,#e1
	db #06,#32,#c3,#e1,#05,#2e,#c1,#e1
	db #06,#30,#c3,#e1,#05,#2b,#2b,#c1
	db #e1,#06,#30,#c3,#e1,#05,#2b,#c1
	db #e1,#06,#30,#30,#c3,#e1,#05,#2b
	db #2b,#c1,#e1,#06,#30,#c3,#e1,#05
	db #2b,#c1,#e1,#06,#30,#30,#c3,#e1
	db #05,#2b,#c1,#e1,#06,#30,#c3,#e1
	db #05,#2b,#ff,#e0,#00,#a0,#c1,#e1
	db #06,#80,#32,#c3,#e1,#05,#2e,#2e
	db #2e,#ff,#e0,#fd,#a0,#c1,#e1,#06
	db #80,#26,#c3,#e1,#05,#26,#26,#c1
	db #e1,#06,#29,#c3,#e1,#05,#26,#26
	db #c1,#e1,#06,#26,#c3,#e1,#05,#26
	db #c1,#e1,#06,#32,#c3,#e1,#05,#26
	db #26,#26,#26,#26,#c1,#e1,#06,#2d
	db #2e,#2d,#c3,#e1,#05,#26,#c1,#e1
	db #06,#2b,#29,#c3,#e1,#05,#2b,#26
	db #c1,#e1,#06,#29,#2b,#29,#c3,#e1
	db #05,#24,#c1,#e1,#06,#28,#26,#c3
	db #e1,#05,#26,#26,#26,#26,#ff,#e0
	db #07,#a0,#c1,#e1,#06,#84,#16,#16
	db #80,#16,#83,#16,#c0,#80,#16,#c1
	db #82,#16,#16,#c0,#80,#16,#c1,#82
	db #16,#80,#16,#82,#16,#ff,#e0,#00
	db #a0,#c1,#e1,#06,#80,#16,#a1,#cf
	db #e2,#00,#00,#a2,#d0,#00,#a0,#c1
	db #e1,#06,#16,#a5,#d1,#e1,#02,#2f
	db #d2,#2f,#a0,#c1,#e1,#06,#1c,#a1
	db #cf,#e2,#00,#00,#a2,#d0,#00,#a1
	db #cf,#00,#ce,#00,#cf,#00,#a5,#d1
	db #e1,#02,#30,#d2,#30,#a1,#cf,#e2
	db #00,#00,#ce,#00,#a0,#c1,#e1,#06
	db #1d,#a1,#cf,#e2,#00,#00,#a2,#d0
	db #00,#a0,#c1,#e1,#06,#1d,#a5,#d1
	db #e1,#02,#2f,#d2,#2f,#a0,#c1,#e1
	db #06,#1c,#a1,#cf,#e2,#00,#00,#a2
	db #d0,#00,#a1,#cf,#00,#ce,#00,#cf
	db #00,#a5,#d1,#e1,#02,#30,#d2,#30
	db #a0,#c1,#e1,#06,#1d,#1c,#ff,#e0
	db #00,#a0,#c1,#e1,#06,#80,#1d,#1c
	db #a1,#cf,#e2,#00,#00,#a0,#c1,#e1
	db #06,#1a,#a5,#d1,#e1,#02,#25,#a0
	db #c1,#e1,#06,#18,#26,#a2,#d0,#e2
	db #00,#00,#a0,#c1,#e1,#06,#1a,#a1
	db #ce,#e2,#00,#00,#cf,#00,#a2,#d0
	db #00,#a5,#d1,#e1,#02,#25,#d2,#25
	db #a2,#d0,#e2,#00,#00,#a1,#cf,#00
	db #a2,#d0,#00,#a1,#cf,#00,#a0,#c1
	db #e1,#06,#1d,#1c,#a5,#d1,#e1,#02
	db #25,#d2,#25,#a1,#cf,#e2,#00,#00
	db #a2,#d0,#00,#a1,#ce,#00,#cf,#00
	db #a0,#c1,#e1,#06,#1d,#1c,#a5,#d1
	db #e1,#02,#25,#a0,#c1,#e1,#06,#1d
	db #1c,#a2,#d0,#e2,#00,#00,#ff,#e0
	db #00,#a0,#c1,#e1,#06,#80,#18,#a1
	db #cf,#e2,#00,#00,#a2,#d0,#00,#a1
	db #cf,#00,#a0,#c1,#e1,#06,#18,#a5
	db #d2,#e1,#02,#25,#a2,#d0,#e2,#00
	db #00,#a1,#cf,#00,#a0,#c1,#e1,#06
	db #18,#18,#a1,#cf,#e2,#00,#00,#a2
	db #d0,#00,#a5,#d1,#e1,#02,#25,#a0
	db #c1,#e1,#06,#18,#a1,#cf,#e2,#00
	db #00,#a0,#c1,#e1,#06,#1f,#a1,#cf
	db #e2,#00,#00,#a2,#d0,#00,#a0,#c1
	db #e1,#06,#18,#a2,#d0,#e2,#00,#00
	db #a0,#c1,#e1,#06,#13,#18,#a2,#d0
	db #e2,#00,#00,#a1,#cf,#00,#a0,#c1
	db #e1,#06,#18,#a1,#cf,#e2,#00,#00
	db #a0,#c1,#e1,#06,#13,#18,#a2,#d0
	db #e2,#00,#00,#a5,#d1,#e1,#02,#25
	db #d3,#25,#ff,#e0,#00,#a0,#c1,#e1
	db #06,#80,#16,#a1,#cf,#e2,#00,#00
	db #a2,#d0,#00,#a1,#cf,#00,#a0,#c1
	db #e1,#06,#16,#a5,#d2,#e1,#02,#25
	db #a2,#d0,#e2,#00,#00,#a1,#cf,#00
	db #a0,#c1,#e1,#06,#16,#16,#a1,#cf
	db #e2,#00,#00,#a2,#d0,#00,#a5,#d1
	db #e1,#02,#25,#a0,#c1,#e1,#06,#16
	db #a1,#cf,#e2,#00,#00,#a0,#c1,#e1
	db #06,#11,#a1,#cf,#e2,#00,#00,#a2
	db #d0,#00,#a0,#c1,#e1,#06,#1d,#a2
	db #d0,#e2,#00,#00,#a0,#c1,#e1,#06
	db #16,#1d,#a2,#d0,#e2,#00,#00,#a1
	db #cf,#00,#a0,#c1,#e1,#06,#1d,#a1
	db #cf,#e2,#00,#00,#a0,#c1,#e1,#06
	db #16,#11,#a2,#d0,#e2,#00,#00,#a5
	db #d1,#e1,#02,#25,#d3,#25,#ff,#e0
	db #00,#a0,#c1,#e1,#06,#80,#16,#16
	db #a1,#cf,#e2,#00,#00,#a2,#d0,#00
	db #a5,#d1,#e1,#02,#25,#a0,#c1,#e1
	db #06,#16,#a1,#cf,#e2,#00,#00,#a0
	db #c1,#e1,#06,#11,#a1,#cf,#e2,#00
	db #00,#a2,#d0,#00,#a0,#c1,#e1,#06
	db #1d,#a2,#d0,#e2,#00,#00,#a0,#c1
	db #e1,#06,#16,#1d,#a2,#d0,#e2,#00
	db #00,#a1,#cf,#00,#a0,#c1,#e1,#06
	db #1d,#a1,#cf,#e2,#00,#00,#a0,#c1
	db #e1,#06,#16,#11,#a2,#d0,#e2,#00
	db #00,#a5,#d1,#e1,#02,#25,#d3,#25
	db #ff,#e0,#00,#a0,#c1,#e1,#06,#80
	db #16,#a1,#cf,#e2,#00,#00,#a2,#d0
	db #00,#a1,#cf,#00,#ff,#e0,#00,#a0
	db #c1,#e1,#06,#80,#16,#a1,#cf,#e2
	db #00,#00,#a2,#d0,#00,#a0,#c1,#e1
	db #06,#16,#a5,#d1,#e1,#02,#2f,#d2
	db #2f,#a0,#c1,#e1,#06,#1c,#a1,#cf
	db #e2,#00,#00,#a2,#d0,#00,#a1,#cf
	db #00,#ce,#00,#cf,#00,#a5,#d1,#e1
	db #02,#30,#d2,#30,#a1,#cf,#e2,#00
	db #00,#ce,#00,#a0,#c1,#e1,#06,#1d
	db #a1,#cf,#e2,#00,#00,#a2,#d0,#00
	db #a0,#c1,#e1,#06,#1d,#a5,#d1,#e1
	db #02,#2f,#d2,#2f,#a0,#c1,#e1,#06
	db #1c,#a1,#cf,#e2,#00,#00,#a2,#d0
	db #00,#a1,#cf,#00,#a5,#d1,#e1,#02
	db #29,#d2,#27,#d1,#23,#21,#1f,#1b
	db #ff,#e0,#fd,#a0,#c1,#e1,#06,#80
	db #1d,#1c,#a1,#cf,#e2,#00,#00,#a0
	db #c1,#e1,#06,#1a,#a5,#d1,#e1,#02
	db #25,#a0,#c1,#e1,#06,#18,#26,#a2
	db #d0,#e2,#00,#00,#a0,#c1,#e1,#06
	db #1a,#a1,#ce,#e2,#00,#00,#cf,#00
	db #a2,#d0,#00,#a5,#d1,#e1,#02,#25
	db #d2,#25,#a2,#d0,#e2,#00,#00,#a1
	db #cf,#00,#a2,#d0,#00,#a1,#cf,#00
	db #a0,#c1,#e1,#06,#1d,#1c,#a5,#d1
	db #e1,#02,#25,#d2,#25,#a1,#cf,#e2
	db #00,#00,#a2,#d0,#00,#a1,#ce,#00
	db #cf,#00,#a0,#c1,#e1,#06,#1d,#1c
	db #a5,#d1,#e1,#02,#25,#a0,#c1,#e1
	db #06,#1d,#1c,#a2,#d0,#e2,#00,#00
.l1cad equ $ + 1
	db #ff,#0f,#00,#0f,#00,#0f,#00,#0f
	db #00,#01,#0f,#0f,#ff,#01,#00,#01
	db #00,#01,#0d,#82,#9a,#01,#00,#01
	db #00,#01,#0b,#0b,#ff,#01,#00,#01
	db #00,#01,#09,#09,#ff,#01,#00,#01
	db #00,#01,#0f,#05,#fd,#01,#00,#01
	db #00,#01,#0d,#0d,#ff,#08,#00,#01
	db #00,#01,#0a,#01,#00,#03,#00,#84
	db #a8,#01,#0c,#01,#00,#03,#00,#18
	db #00,#01,#0e,#01,#00,#03,#00,#01
	db #00,#01,#0e,#01,#00,#03,#00,#87
	db #e2,#01,#0e,#01,#00,#82,#9c,#62
	db #00,#01,#0f,#07,#00,#84,#bc,#01
	db #00,#01,#0f,#04,#ff,#08,#00,#88
	db #d3,#01,#0a,#01,#00,#01,#f6,#01
	db #00,#01,#0c,#01,#00,#01,#f4,#01
	db #00,#01,#0e,#01,#00,#01,#f2,#01
	db #00,#01,#0f,#0f,#ff,#01,#00,#01
	db #00,#01,#0d,#0d,#ff,#01,#00,#01
	db #00,#01,#0b,#0b,#ff,#01,#00,#01
	db #00,#01,#09,#09,#ff,#01,#00,#01
	db #00,#01,#0e,#01,#00,#01,#f2,#01
	db #00,#01,#0c,#91,#e3,#a1,#63,#a1
	db #63,#82,#14,#0c,#00,#01,#00,#82
	db #94,#01,#0d,#04,#ff,#08,#00,#8a
	db #d3,#01,#0b,#04,#ff,#08,#00,#8c
	db #d3,#01,#09,#04,#ff,#08,#00,#95
	db #d3,#01,#07,#04,#ff,#08,#00,#9e
	db #da,#01,#0d,#03,#00,#08,#ff,#05
	db #00,#01,#0e,#86,#92,#89,#89,#82
	db #92,#01,#0f,#02,#00,#0c,#ff,#0c
	db #01,#01,#0d,#0c,#ff,#0d,#01,#0e
.l1dad equ $ + 1
	db #ff,#01,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#84,#08,#82,#88,#84
	db #08,#01,#00,#01,#3c,#03,#ec,#01
	db #ef,#86,#86,#01,#f1,#01,#2b,#01
	db #e5,#01,#00,#02,#01,#02,#fe,#02
	db #01,#04,#00,#82,#04,#04,#ff,#82
	db #04,#85,#0a,#03,#fd,#85,#0a,#01
	db #05,#01,#00,#01,#63,#03,#e2,#01
	db #d1,#01,#04,#01,#38,#03,#ec,#01
	db #f1,#08,#00,#01,#01,#01,#fe,#01
	db #01,#82,#04,#04,#02,#04,#fc,#04
	db #02,#01,#00,#01,#fd,#01,#ff,#01
	db #fd,#01,#00,#01,#63,#02,#d8,#01
	db #d1,#06,#00,#01,#ff,#01,#00,#01
	db #01,#08,#00,#01,#01,#01,#fe,#01
	db #01,#08,#00,#01,#01,#01,#01,#01
	db #01,#01,#00,#01,#00,#01,#01,#01
	db #ff,#01,#00,#01,#63,#02,#d8,#01
	db #d1,#06,#00,#01,#ff,#01,#00,#01
	db #01,#08,#00,#01,#01,#01,#fe,#01
	db #01,#08,#00,#01,#01,#01,#01,#01
	db #01,#01,#00,#01,#00,#01,#01,#01
	db #ff,#01,#00,#01,#63,#02,#d8,#01
	db #d1,#06,#00,#01,#ff,#01,#00,#01
	db #01,#08,#00,#01,#01,#01,#fe,#01
	db #01,#08,#00,#01,#01,#01,#01,#01
	db #01,#01,#00,#01,#00,#01,#01,#01
	db #ff,#01,#00,#01,#63,#02,#d8,#01
	db #d1,#06,#00,#01,#ff,#01,#00,#01
	db #01,#08,#00,#01,#01,#01,#fe,#01
	db #01,#08,#00,#01,#01,#01,#01,#01
	db #01,#01,#00,#01,#00,#01,#01,#01
	db #ff
;
.music_info
	db "Bob Morane Ocean (1988)(Infogrames)(Charles Callet)",0
	db "Music Pro",0

	read "music_end.asm"
