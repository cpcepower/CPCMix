; Music of Prohibition 128ko Theme 1 (1990)(Infogrames)(Charles Callet)(Music Pro)
; Ripped by Megachur the 31/03/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PROHIBD1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 31
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #2832

	read "music_header.asm"

;
.init_music
.l2832
;
	ld hl,l2d16
	ld (hl),#00
	ld de,l2d17
	ld bc,#0128
	ldir
	ld a,(l2f1b)
	ld (l2e3f),a
	ld bc,l2f1a
	ld hl,(l2f1c)
	add hl,bc
	ld (l2e42),hl
	ld hl,(l2f1e)
	add hl,bc
	ld (l2e44),hl
	ld hl,(l2f20)
	add hl,bc
	ld (l2d1b),hl
	ld hl,(l2f22)
	add hl,bc
	ld (l2d56),hl
	ld hl,(l2f24)
	add hl,bc
	ld (l2d91),hl
	ld hl,l2f26
	ld (l2e40),hl
	ld a,#0f
	ld (l2e47),a
	ld hl,l2d10
	ld de,l2d16
	ld bc,#0005
	ldir
	ld hl,l2d10
	ld de,l2d51
	ld bc,#0005
	ldir
	ld hl,l2d10
	ld de,l2d8c
	ld bc,#0005
	ldir
	ld c,#38
	ld a,#07
	call l2cc1
	ret
	ei
;
.play_music
;
	ld a,(l2e47)
	ld e,a
	ld b,#03
	ld hl,l2dab
.l28a9
	ld a,(hl)
	ld c,a
	ld a,(l2d0f)
	or b
	sub #03
	ld a,#00
	jr c,l28ba
	ld a,c
	cp e
	jr c,l28ba
	ld a,e
.l28ba
	ld c,a
	ld a,b
	add #07
	push de
	call l2cc1
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l28a9
	ld hl,l2e3f
	dec (hl)
	ld ix,l2d16
	xor a
.l28d4
	ld (l2e46),a
	ld a,(ix+#07)
	or a
	jp nz,l2b6e
.l28de
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l28e8
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jr nz,l294d
	ld l,(ix+#01)
	ld h,(ix+#02)
.l28f9
	ld a,(hl)
	cp #ff
	jr nz,l292e
	ld l,(ix+#05)		; reinit music
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l2e46)
	cp #02
	jr nz,l28f9
	ld a,(l2d0e)
	and a
	jr nz,l28f9
	push hl
	push bc
	ld hl,(l2f24)
	ld bc,l2f1a
	add hl,bc
	ld a,(l2d0d)
	ld (hl),a
	pop bc
	pop hl
	ld a,#30
	ld (l2d0d),a
	jp l28f9
.l292e
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l2e40)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l2f1a
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l28e8
.l294d
	bit 7,a
	jr nz,l29b7
	ld hl,l2e4e
	or a
	jr z,l295a
	add (ix+#20)
.l295a
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
	ld a,(l2e46)
	inc a
	ld hl,l2db3
	ld bc,#0014
.l298c
	add hl,bc
	dec a
	jr nz,l298c
	ldir
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l2e46)
	inc a
	ld hl,l2def
	ld bc,#0014
.l29a4
	add hl,bc
	dec a
	jr nz,l29a4
	ldir
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l2b5a
.l29b7
	bit 6,a
	jr nz,l29f8
	bit 5,a
	jp z,l29e5
	push af
	xor a
	ld (l2e48),a
	pop af
.l29c6
	and #1f
	ld b,a
	jr z,l29d5
	ld c,#18
	ld a,#07
	call l2cc1
	jp l29dc
.l29d5
	ld c,#38
	ld a,#07
	call l2cc1
.l29dc
	ld c,b
	ld a,#06
	call l2cc1
	jp l2b5a
.l29e5
	and #1f
	ld hl,l2f0e
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l2b5a
.l29f8
	bit 5,a
	jr nz,l2a65
	and #1f
	add a
	add a
	add a
	ld hl,(l2e42)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l2a13
	ld a,(de)
	bit 7,a
	jr nz,l2a25
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l2a3d
.l2a25
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
	jr nz,l2a37
	ld b,#01
.l2a37
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l2a3d
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jr nz,l2a13
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l2db3
	ld a,(l2e46)
	inc a
.l2a5b
	add hl,bc
	dec a
	jr nz,l2a5b
	ex de,hl
	ldir
	jp l2b5a
.l2a65
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l2a7c
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
.l2a7c
	add h
	ld hl,(l2adc)
	ret c
	ld hl,(l2a8c)
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l2b5a
.l2a8c
	pop hl
	ld a,(hl)
	ld (l2e48),a
	and #3f
	ld (l2e4a),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l2e4b),a
	ld a,(l2e48)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l2e48),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l2e48
	or (hl)
	ld (l2e48),a
	ld (l2e49),a
	ld a,(l2e4a)
	ld (l2e4d),a
	ld hl,l2e4b
	ld b,#ff
	cp (hl)
	jr nc,l2ace
	ld b,#01
.l2ace
	ld a,b
	ld (l2e4c),a
	ld a,(l2e4d)
	jp l29c6
	ld a,#02
	jr l2ade
.l2adc
	ld a,#01
.l2ade
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jr z,l2b4f
	add a
	add a
	add a
	ld hl,(l2e44)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l2afc
	ld a,(de)
	bit 7,a
	jr nz,l2b10
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
	jp l2b28
.l2b10
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
	jr nz,l2b22
	ld b,#ff
.l2b22
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l2b28
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jr nz,l2afc
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l2def
	ld a,(l2e46)
	inc a
.l2b46
	add hl,bc
	dec a
	jr nz,l2b46
	ex de,hl
	ldir
	jr l2b54
.l2b4f
	ld a,#00
	ld (ix+#09),a
.l2b54
	ld a,(ix+#09)
	ld (ix+#3a),a
.l2b5a
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l28de
.l2b6e
	ld a,(l2e3f)
	or a
	jr nz,l2b77
	dec (ix+#07)
.l2b77
	ld a,(ix+#0a)
	cp #04
	jp z,l2bc1
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
	jr nz,l2ba4
	dec (hl)
	jr nz,l2b97
	inc (ix+#0a)
.l2b97
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l2bc1
.l2ba4
	dec (hl)
	jr nz,l2bb9
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
	jp l2bbb
.l2bb9
	inc hl
	inc hl
.l2bbb
	dec (hl)
	jr nz,l2bc1
	inc (ix+#0a)
.l2bc1
	ld a,(ix+#09)
	or a
	jp z,l2c5e
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
	jr nz,l2bff
	dec (hl)
	jr nz,l2be3
	inc (ix+#21)
.l2be3
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jr nz,l2bef
	ld b,#00
.l2bef
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l2c2d
.l2bff
	dec (hl)
	jr nz,l2c25
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
	jr nz,l2c13
	ld b,#00
.l2c13
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l2c27
.l2c25
	inc hl
	inc hl
.l2c27
	dec (hl)
	jr nz,l2c2d
	inc (ix+#21)
.l2c2d
	ld a,(ix+#21)
	cp #04
	jr nz,l2c5e
	ld a,(ix+#09)
	cp #02
	jr nz,l2c42
	ld a,#00
	ld (ix+#09),a
	jr l2c5e
.l2c42
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l2e46)
	inc a
	ld hl,l2def
	ld bc,#0014
.l2c58
	add hl,bc
	dec a
	jr nz,l2c58
	ldir
.l2c5e
	ld c,(ix+#36)
	ld a,(l2e46)
	add a
	call l2cc1
	ld c,(ix+#37)
	inc a
	call l2cc1
	ld bc,#003b
	add ix,bc
	ld a,(l2e46)
	inc a
	cp #03
	jp nz,l28d4
	ld a,(l2e48)
	or a
	jr z,l2cb4
	dec a
	ld (l2e48),a
	or a
	jr nz,l2cb4
	ld a,(l2e49)
	ld (l2e48),a
	ld a,(l2e4d)
	ld hl,l2e4c
	add (hl)
	ld (l2e4d),a
	ld c,a
	ld hl,l2e4a
	cp (hl)
	jr z,l2ca7
	ld hl,l2e4b
	cp (hl)
	jr nz,l2caf
.l2ca7
	ld a,(l2e4c)
	xor #fe
	ld (l2e4c),a
.l2caf
	ld a,#06
	call l2cc1
.l2cb4
	ld a,(l2e3f)
	or a
	jr nz,l2cc0
	ld a,(l2f1b)
	ld (l2e3f),a
.l2cc0
	ret
.l2cc1
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
	push hl
	push de
	push bc
	push af
	ld hl,l2d10
	ld de,l2d8c
	ld a,#ff
	ld (l2d0c),a
	ld a,b
	ld (l2d0d),a
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l2d93),a
	ld (l2d0c),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.l2d10 equ $ + 4
.l2d0f equ $ + 3
.l2d0e equ $ + 2
.l2d0d equ $ + 1
.l2d0c
	db #00,#30,#ff,#ff,#00,#15,#2d,#15
.l2d1b equ $ + 7
.l2d17 equ $ + 3
.l2d16 equ $ + 2
	db #2d,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2d51 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2d56 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2d93 equ $ + 7
.l2d91 equ $ + 5
.l2d8c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2dab equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2db3 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2def equ $ + 3
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
.l2e42 equ $ + 6
.l2e40 equ $ + 4
.l2e3f equ $ + 3
	db #00,#00,#00,#f9,#00,#00,#00,#00
.l2e4b equ $ + 7
.l2e4a equ $ + 6
.l2e49 equ $ + 5
.l2e48 equ $ + 4
.l2e47 equ $ + 3
.l2e46 equ $ + 2
.l2e44
	db #00,#00,#02,#0f,#00,#00,#00,#00
.l2e4d equ $ + 1
.l2e4c
	db #00,#00
.l2e4e
	dw #0000,#0c9c,#0be7,#0b3c
	dw #0a9b,#0a02,#0973,#08eb
	dw #086b,#07f2,#0780,#0714
	dw #06ae,#064e,#05f4,#059e
	dw #054d,#0501,#0469,#0475
	dw #0435,#03f9,#03c0,#038a
	dw #0357,#0327,#02fa,#02cf
	dw #02a7,#0281,#025d,#023b
	dw #021b,#01fc,#01e0,#01c5
	dw #01ac,#0194,#017d,#0168
	dw #0153,#0140,#012e,#011d
	dw #010d,#00fe,#00f0,#00e2
	dw #00d6,#00ca,#00be,#00b4
	dw #00aa,#00a0,#0097,#008f
	dw #0087,#007f,#0078,#0071
	dw #006b,#0065,#005f,#005a
	dw #0055,#0050,#004c,#0047
	dw #0043,#0040,#003c,#0039
	dw #0035,#0032,#0030,#002d
	dw #002a,#0028,#0026,#0024
	dw #0022,#0020,#001e,#001c
	dw #001b,#0019,#0018,#0016
	dw #0015,#0014,#0013,#0012
	dw #0011,#0010,#000f,#000e
.l2f0e
	db #02,#03,#04,#06,#08,#0c,#10,#18
.l2f1c equ $ + 6
.l2f1b equ $ + 5
.l2f1a equ $ + 4
	db #20,#30,#40,#60,#00,#01,#f5,#00
.l2f24 equ $ + 6
.l2f22 equ $ + 4
.l2f20 equ $ + 2
.l2f1e
	db #f5,#01,#8a,#00,#ad,#00,#c8,#00
.l2f26
	db #f5,#02,#fb,#02,#14,#03,#1a,#03
	db #33,#03,#39,#03,#52,#03,#5a,#03
	db #75,#03,#8f,#03,#bf,#03,#d8,#03
	db #08,#04,#4c,#04,#4c,#04,#98,#04
	db #ad,#04,#c2,#04,#d7,#04,#ec,#04
	db #0d,#05,#50,#05,#c1,#05,#f3,#05
	db #1f,#06,#4d,#06,#79,#06,#cb,#06
	db #0f,#07,#73,#07,#27,#08,#27,#08
	db #27,#08,#27,#08,#27,#08,#30,#08
	db #30,#08,#30,#08,#30,#08,#3b,#08
	db #47,#08,#47,#08,#47,#08,#47,#08
	db #66,#08,#66,#08,#66,#08,#66,#08
	db #66,#08,#6b,#08,#73,#08,#7a,#08
	db #7a,#08,#7a,#08,#84,#08,#8b,#08
	db #8b,#08,#8b,#08,#8b,#08,#b1,#08
	db #d7,#08,#e0,#08,#e0,#08,#00,#00
	db #01,#02,#00,#03,#04,#00,#05,#06
	db #07,#08,#08,#09,#00,#0a,#0b,#06
	db #07,#08,#08,#09,#08,#0a,#0c,#0e
	db #0e,#08,#0b,#08,#06,#06,#00,#00
	db #ff,#0f,#0f,#0f,#10,#11,#12,#0f
	db #0f,#0f,#10,#11,#12,#13,#0f,#0f
	db #0f,#10,#11,#12,#14,#15,#15,#15
	db #0f,#0f,#0f,#ff,#17,#16,#17,#17
	db #18,#17,#17,#17,#19,#19,#17,#17
	db #19,#19,#17,#17,#18,#17,#17,#17
	db #19,#19,#17,#17,#1a,#1b,#1b,#18
	db #18,#17,#17,#19,#19,#17,#17,#1b
	db #1d,#1d,#1c,#1b,#18,#19,#18,#19
	db #ff,#0f,#00,#0f,#00,#0f,#00,#0f
	db #00,#01,#0f,#82,#86,#01,#fb,#07
	db #ff,#88,#65,#83,#a7,#01,#00,#01
	db #00,#01,#0d,#88,#ff,#01,#00,#01
	db #00,#01,#0b,#01,#00,#01,#00,#01
	db #00,#01,#0f,#03,#00,#03,#ff,#84
	db #b0,#01,#0f,#01,#00,#83,#ad,#01
	db #00,#02,#07,#02,#ff,#02,#00,#0c
	db #ff,#01,#0f,#82,#86,#04,#00,#83
	db #9b,#01,#0a,#82,#94,#01,#00,#0b
	db #00,#01,#0f,#01,#fb,#08,#00,#0a
	db #ff,#05,#03,#02,#00,#01,#0f,#09
	db #00,#01,#0c,#02,#00,#0c,#ff,#01
	db #00,#01,#0f,#04,#ff,#08,#00,#0b
	db #ff,#01,#0d,#82,#84,#02,#00,#0b
	db #ff,#01,#0f,#05,#00,#07,#fe,#01
	db #ff,#01,#0e,#01,#00,#01,#f2,#01
	db #00,#01,#0f,#02,#00,#0f,#ff,#01
	db #00,#01,#0f,#02,#00,#82,#9e,#01
	db #00,#01,#0a,#01,#00,#01,#f6,#01
	db #00,#01,#0c,#01,#00,#01,#f4,#01
	db #00,#01,#0e,#01,#00,#01,#f2,#01
	db #00,#01,#0c,#04,#00,#0b,#ff,#01
	db #00,#01,#0f,#01,#00,#05,#fd,#01
	db #00,#01,#0e,#03,#00,#04,#fd,#01
	db #00,#05,#03,#02,#00,#03,#ff,#0c
	db #ff,#01,#0e,#03,#00,#04,#fd,#01
	db #fe,#01,#0f,#03,#00,#08,#ff,#01
	db #00,#01,#0d,#03,#00,#08,#ff,#05
	db #00,#01,#0f,#09,#ff,#09,#01,#0f
	db #ff,#01,#0f,#02,#00,#0c,#ff,#0c
	db #01,#01,#0d,#0c,#ff,#0d,#01,#0e
	db #ff,#01,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#82,#02,#82,#84,#82
	db #02,#01,#ff,#01,#08,#03,#01,#01
	db #01,#02,#03,#01,#05,#03,#09,#01
	db #05,#01,#00,#81,#0f,#81,#8f,#01
	db #00,#01,#fc,#01,#fa,#01,#f9,#01
	db #fd,#03,#00,#07,#01,#07,#ff,#01
	db #00,#01,#00,#01,#7f,#03,#d8,#01
	db #d1,#03,#04,#02,#ef,#03,#f8,#84
	db #df,#03,#00,#01,#01,#02,#ff,#01
	db #01,#08,#00,#01,#01,#01,#01,#01
	db #01,#01,#00,#01,#00,#01,#01,#01
	db #ff,#01,#00,#01,#7f,#03,#d8,#01
	db #d1,#06,#00,#01,#ff,#01,#00,#01
	db #01,#08,#00,#01,#01,#01,#fe,#01
	db #01,#08,#00,#01,#01,#01,#01,#01
	db #01,#01,#00,#01,#00,#01,#01,#01
	db #ff,#01,#00,#01,#7f,#03,#d8,#01
	db #d1,#06,#00,#01,#ff,#01,#00,#01
	db #01,#08,#00,#01,#01,#01,#fe,#01
	db #01,#08,#00,#01,#01,#01,#01,#01
	db #01,#01,#00,#01,#00,#01,#01,#01
	db #ff,#01,#00,#01,#7f,#03,#d8,#01
	db #d1,#06,#00,#01,#ff,#01,#00,#01
	db #01,#08,#00,#01,#01,#01,#fe,#01
	db #01,#08,#00,#01,#01,#01,#01,#01
	db #01,#01,#00,#01,#00,#01,#01,#01
	db #ff,#01,#00,#01,#7f,#03,#d8,#01
	db #d1,#06,#00,#01,#ff,#01,#00,#01
	db #01,#08,#00,#01,#01,#01,#fe,#01
	db #01,#08,#00,#01,#01,#01,#01,#01
	db #01,#01,#00,#01,#00,#01,#01,#01
	db #ff,#c0,#e1,#00,#8b,#00,#ff,#c0
	db #e1,#00,#85,#00,#c1,#22,#29,#22
	db #87,#28,#85,#22,#87,#27,#85,#22
	db #25,#22,#87,#27,#85,#25,#22,#ff
	db #c2,#e1,#03,#8b,#19,#ff,#c0,#e1
	db #01,#85,#00,#c1,#22,#29,#22,#87
	db #28,#85,#22,#87,#27,#85,#22,#25
	db #22,#87,#27,#85,#25,#24,#ff,#c2
	db #e1,#02,#8b,#26,#ff,#c0,#e1,#01
	db #85,#00,#c1,#25,#2e,#25,#87,#31
	db #85,#2e,#87,#30,#85,#2c,#2e,#2c
	db #87,#30,#85,#2c,#29,#ff,#c2,#e1
	db #04,#8b,#3d,#c3,#3d,#ff,#c0,#e1
	db #04,#85,#00,#c1,#e1,#01,#3a,#41
	db #3a,#87,#40,#85,#3a,#87,#3f,#85
	db #3a,#3d,#3a,#87,#3f,#85,#3d,#3a
	db #ff,#d3,#e1,#02,#83,#4e,#d4,#44
	db #d5,#39,#39,#d3,#4e,#d4,#44,#d5
	db #39,#39,#c1,#e1,#04,#85,#44,#3d
	db #39,#32,#ff,#c0,#e1,#01,#85,#00
	db #c1,#3a,#41,#3a,#87,#40,#85,#3a
	db #87,#3f,#85,#3a,#3d,#3a,#87,#3f
	db #85,#3d,#3c,#c4,#e1,#04,#83,#45
	db #50,#45,#50,#df,#22,#16,#22,#16
	db #c4,#39,#45,#39,#45,#df,#16,#22
	db #16,#22,#ff,#c0,#e1,#01,#85,#00
	db #c1,#3a,#3d,#3a,#87,#3f,#85,#3d
	db #87,#3c,#85,#38,#3c,#38,#87,#3d
	db #85,#3c,#3a,#ff,#cc,#e1,#06,#83
	db #39,#45,#39,#45,#2e,#2e,#c0,#00
	db #cc,#2c,#2c,#c0,#00,#cc,#2a,#2a
	db #c0,#00,#cc,#29,#30,#35,#cf,#e1
	db #02,#20,#22,#22,#16,#20,#22,#22
	db #16,#e1,#06,#22,#24,#24,#1d,#22
	db #24,#24,#1d,#ff,#d8,#e1,#01,#83
	db #3d,#d7,#3d,#d8,#3d,#d7,#3d,#d8
	db #3a,#d7,#3a,#d8,#3a,#d7,#3a,#d8
	db #3f,#d7,#3f,#d8,#3f,#d7,#3f,#d8
	db #3c,#d7,#3c,#d8,#3c,#d7,#3c,#d8
	db #41,#d7,#41,#d8,#41,#d7,#41,#d8
	db #3d,#d7,#3d,#d8,#3d,#d7,#3d,#d8
	db #42,#d7,#42,#d8,#42,#d7,#42,#d8
	db #41,#d7,#41,#d8,#41,#d7,#41,#ff
	db #c8,#e1,#09,#87,#41,#c4,#83,#30
	db #2e,#31,#2e,#c8,#85,#48,#46,#c4
	db #83,#33,#31,#35,#31,#c8,#87,#44
	db #c4,#83,#2c,#2a,#2e,#2a,#c8,#85
	db #42,#c4,#83,#30,#2e,#31,#2e,#c8
	db #85,#42,#41,#3f,#c4,#83,#29,#27
	db #2a,#27,#c8,#85,#42,#c4,#83,#2c
	db #2a,#2e,#2a,#c8,#85,#3f,#3d,#3c
	db #c4,#83,#25,#24,#c8,#85,#44,#42
	db #41,#49,#48,#ff,#c1,#e1,#01,#85
	db #16,#16,#18,#16,#19,#16,#1b,#19
	db #16,#16,#18,#16,#19,#16,#1b,#19
	db #ff,#c1,#e1,#01,#85,#16,#16,#18
	db #16,#19,#16,#1b,#19,#16,#16,#18
	db #16,#19,#16,#1b,#1d,#ff,#c1,#e1
	db #01,#85,#1d,#1d,#1f,#1d,#20,#1d
	db #22,#20,#1d,#1d,#1f,#1d,#20,#1d
	db #22,#20,#ff,#c1,#e1,#01,#85,#1e
	db #1e,#20,#1e,#22,#1e,#25,#1e,#20
	db #20,#22,#20,#24,#20,#27,#20,#ff
	db #c1,#e1,#01,#85,#16,#16,#18,#16
	db #19,#16,#1b,#19,#d7,#83,#20,#22
	db #22,#2e,#20,#22,#22,#2e,#e1,#06
	db #2e,#30,#30,#35,#2e,#30,#30,#35
	db #ff,#c1,#e1,#01,#85,#16,#c0,#83
	db #00,#dd,#16,#c1,#85,#18,#c0,#83
	db #00,#d7,#18,#c1,#85,#19,#c0,#83
	db #00,#d7,#19,#c1,#85,#1b,#c0,#83
	db #00,#d7,#1b,#c1,#85,#1d,#c0,#83
	db #00,#d7,#1d,#c1,#85,#1e,#c0,#83
	db #00,#d7,#1e,#c1,#85,#20,#c0,#83
	db #00,#d7,#20,#c1,#85,#21,#c0,#83
	db #00,#d7,#21,#ff,#c1,#e1,#01,#85
	db #16,#d7,#83,#16,#c1,#85,#16,#d7
	db #83,#16,#c1,#85,#16,#d7,#83,#16
	db #16,#c1,#85,#16,#d7,#83,#16,#16
	db #c1,#85,#16,#19,#d7,#83,#19,#c1
	db #85,#19,#d7,#83,#19,#c1,#85,#19
	db #d7,#83,#19,#19,#c1,#85,#19,#d7
	db #83,#19,#19,#c1,#85,#19,#1b,#d7
	db #83,#1b,#c1,#85,#1b,#d7,#83,#1b
	db #c1,#85,#1b,#d7,#83,#1b,#1b,#c1
	db #85,#1b,#d7,#83,#1b,#1b,#c1,#85
	db #1b,#18,#d7,#83,#18,#c1,#85,#18
	db #d7,#83,#18,#c1,#85,#18,#d7,#83
	db #1d,#1d,#c1,#85,#1d,#d7,#83,#1d
	db #1d,#c1,#85,#1d,#ff,#e3,#1f,#42
	db #dd,#e1,#00,#83,#00,#a1,#d3,#00
	db #d4,#00,#d5,#00,#a7,#c1,#85,#00
	db #a1,#d3,#83,#00,#d4,#00,#e3,#1f
	db #42,#dd,#00,#a1,#d5,#00,#d3,#00
	db #d4,#00,#a6,#c1,#00,#a8,#d4,#00
	db #aa,#d3,#00,#ad,#d5,#00,#ff,#bf
	db #df,#e1,#00,#83,#00,#a1,#d5,#00
	db #d3,#00,#d4,#00,#a5,#dd,#85,#00
	db #a1,#d4,#83,#00,#d5,#00,#be,#df
	db #00,#a1,#d5,#00,#d3,#00,#d4,#00
	db #a5,#c1,#00,#a1,#d5,#00,#d3,#00
	db #d4,#00,#ff,#e3,#01,#5f,#d3,#e1
	db #02,#83,#5a,#d4,#5a,#d5,#4e,#4e
	db #a5,#dd,#e1,#00,#00,#a1,#d5,#00
	db #d3,#00,#d4,#00,#be,#df,#00,#a1
	db #d5,#00,#d3,#00,#d4,#00,#a5,#dd
	db #85,#00,#a1,#d4,#83,#00,#d5,#00
	db #ff,#e3,#01,#5f,#d3,#e1,#02,#83
	db #4a,#d4,#4a,#d5,#3f,#3f,#dd,#e1
	db #03,#85,#29,#a1,#d5,#e1,#00,#83
	db #00,#d4,#00,#dd,#e1,#03,#31,#27
	db #df,#32,#27,#d3,#e1,#00,#00,#d4
	db #00,#00,#d5,#00,#ff,#e3,#01,#5f
	db #dd,#e1,#01,#83,#2e,#2e,#3a,#3a
	db #a1,#d3,#e1,#00,#00,#d4,#00,#d5
	db #00,#a7,#dd,#e1,#01,#3a,#36,#a1
	db #d3,#e1,#00,#00,#d5,#00,#ab,#dd
	db #e1,#01,#38,#a1,#d5,#e1,#00,#00
	db #e3,#01,#5f,#dd,#3d,#3c,#a1,#d3
	db #00,#d7,#e1,#05,#3a,#a2,#3c,#a3
	db #3c,#a4,#30,#a5,#3a,#a6,#3c,#a7
	db #3c,#a8,#30,#a1,#e1,#08,#38,#3a
	db #3a,#34,#38,#3a,#3a,#34,#ff,#a1
	db #d7,#e1,#08,#83,#3d,#a2,#3d,#a3
	db #3d,#a4,#3d,#a5,#3d,#a6,#3d,#a7
	db #3d,#a8,#3d,#a9,#3d,#aa,#3d,#ab
	db #3d,#ac,#3d,#ad,#3d,#ae,#3d,#af
	db #3d,#b0,#3d,#a1,#3d,#a3,#3d,#a5
	db #3d,#a7,#3d,#a9,#3d,#ab,#3d,#3d
	db #ad,#3d,#af,#3d,#b1,#3d,#b3,#3d
	db #b5,#3d,#b7,#3d,#b9,#3d,#bb,#3d
	db #bd,#3d,#ff,#e3,#01,#5f,#df,#e1
	db #09,#83,#2e,#dd,#2e,#df,#2e,#dd
	db #2e,#df,#30,#2e,#31,#2e,#2e,#dd
	db #2e,#df,#2e,#dd,#2e,#df,#30,#2e
	db #31,#2e,#2c,#dd,#2a,#df,#2a,#dd
	db #2a,#df,#2c,#2a,#2e,#2a,#2c,#2a
	db #2a,#2a,#2c,#2a,#2e,#2a,#29,#dd
	db #27,#df,#27,#dd,#27,#df,#29,#27
	db #2a,#27,#29,#dd,#27,#df,#27,#dd
	db #27,#df,#29,#27,#2a,#27,#25,#dd
	db #24,#df,#24,#dd,#24,#df,#25,#24
	db #2c,#2a,#2a,#dd,#29,#df,#29,#dd
	db #29,#df,#2a,#29,#30,#29,#ff,#b9
	db #df,#e1,#09,#83,#2e,#a1,#d5,#2e
	db #d3,#2e,#d4,#2e,#e3,#01,#5f,#dd
	db #30,#a1,#d3,#2e,#d5,#31,#d4,#2e
	db #b5,#dd,#2e,#a1,#d5,#2e,#d3,#2e
	db #d4,#2e,#e3,#01,#5f,#dd,#30,#a1
	db #d4,#2e,#d5,#31,#d3,#2e,#b4,#dd
	db #2c,#a1,#d5,#2a,#d3,#2a,#d4,#2a
	db #e3,#01,#5f,#dd,#2c,#a1,#d4,#2a
	db #d5,#2e,#d3,#2a,#b8,#dd,#2a,#a1
	db #d5,#2a,#d3,#2a,#d4,#2a,#e3,#01
	db #5f,#dd,#2c,#a1,#d4,#2a,#d5,#2e
	db #d3,#2a,#b4,#dd,#29,#a1,#d5,#27
	db #d3,#27,#d4,#27,#e3,#01,#5f,#dd
	db #29,#a1,#d4,#27,#d5,#2a,#d3,#27
	db #b5,#dd,#27,#a1,#d5,#27,#d3,#27
	db #d4,#27,#e3,#01,#5f,#dd,#29,#a1
	db #d5,#27,#d3,#2a,#d4,#27,#b3,#dd
	db #25,#a1,#d5,#24,#d3,#24,#d4,#24
	db #e3,#01,#5f,#dd,#25,#a1,#d4,#24
	db #d5,#2c,#d3,#2a,#b9,#dd,#2a,#a1
	db #d5,#29,#d3,#29,#d4,#29,#e3,#01
	db #5f,#dd,#2e,#a1,#d5,#2d,#d3,#31
	db #d4,#30,#ff,#e3,#01,#5f,#d2,#e1
	db #05,#88,#38,#ff,#e3,#db,#c3,#d2
	db #e1,#05,#83,#31,#88,#44,#ff,#e3
	db #db,#c3,#d1,#e1,#05,#82,#25,#d2
	db #88,#00,#ff,#a7,#d7,#e1,#08,#80
	db #2d,#2d,#2d,#2d,#2d,#2d,#2d,#2d
	db #84,#2d,#80,#d7,#2d,#2d,#2d,#2d
	db #2d,#2d,#84,#2d,#80,#2d,#2d,#84
	db #2d,#ff,#80,#c0,#a0,#00,#ff,#a0
	db #d0,#e1,#00,#83,#49,#49,#ff,#a0
	db #d0,#e1,#00,#84,#49,#ff,#a0,#ca
	db #e1,#03,#82,#4a,#c0,#80,#00,#ff
	db #a0,#d0,#e1,#00,#80,#55,#ff,#a0
	db #c4,#e1,#08,#83,#50,#4e,#4d,#4b
	db #49,#48,#46,#44,#42,#41,#3f,#3d
	db #3c,#3a,#38,#36,#35,#33,#31,#30
	db #2e,#2c,#2a,#29,#27,#25,#24,#22
	db #20,#1e,#1d,#1b,#ff,#a0,#c4,#e1
	db #03,#83,#0d,#0f,#11,#12,#14,#16
	db #18,#19,#1b,#1d,#1e,#20,#22,#24
	db #25,#27,#29,#2a,#2c,#2e,#30,#31
	db #33,#35,#36,#38,#3a,#3c,#3d,#3f
	db #41,#42,#ff,#e3,#0f,#45,#d9,#e1
	db #0a,#87,#49,#ff
;
.music_info
	db "Prohibition 128ko Theme 1 (1990)(Infogrames)(Charles Callet)",0
	db "Music Pro - Original Disk 128ko Version Theme 1",0

	read "music_end.asm"
