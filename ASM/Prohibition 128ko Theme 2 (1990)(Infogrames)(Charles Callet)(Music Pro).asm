; Music of Prohibition 128ko Theme 2 (1990)(Infogrames)(Charles Callet)(Music Pro)
; Ripped by Megachur the 31/03/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PROHIBD2.BIN"
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
	db #00,#00,#00,#01,#26,#2f,#0f,#30
.l2e4b equ $ + 7
.l2e4a equ $ + 6
.l2e49 equ $ + 5
.l2e48 equ $ + 4
.l2e47 equ $ + 3
.l2e46 equ $ + 2
.l2e44
	db #0f,#31,#02,#0f,#00,#01,#01,#1f
.l2e4d equ $ + 1
.l2e4c
	db #ff,#1d
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
	db #20,#30,#40,#60,#00,#03,#bd,#00
.l2f24 equ $ + 6
.l2f22 equ $ + 4
.l2f20 equ $ + 2
.l2f1e
	db #bd,#01,#8a,#00,#96,#00,#aa,#00
.l2f26
	db #bd,#02,#1a,#03,#cb,#03,#52,#04
	db #cc,#04,#e9,#04,#1a,#05,#3b,#05
	db #8a,#05,#dd,#05,#2e,#06,#7a,#06
	db #7a,#06,#d9,#06,#0d,#07,#4e,#07
	db #66,#07,#84,#07,#99,#07,#c9,#07
	db #2e,#08,#93,#08,#f6,#08,#0c,#09
	db #22,#09,#30,#09,#3e,#09,#61,#09
	db #0f,#0a,#67,#0a,#98,#0a,#e0,#0a
	db #19,#0b,#4a,#0b,#8d,#0b,#96,#0b
	db #96,#0b,#96,#0b,#96,#0b,#a1,#0b
	db #ad,#0b,#ad,#0b,#ad,#0b,#ad,#0b
	db #cd,#0b,#cd,#0b,#cd,#0b,#cd,#0b
	db #cd,#0b,#d2,#0b,#da,#0b,#e1,#0b
	db #e1,#0b,#e1,#0b,#eb,#0b,#f2,#0b
	db #f2,#0b,#f2,#0b,#f2,#0b,#18,#0c
	db #3e,#0c,#47,#0c,#47,#0c,#00,#01
	db #02,#03,#04,#05,#06,#07,#08,#09
	db #0a,#ff,#16,#16,#17,#17,#18,#18
	db #19,#19,#1a,#0c,#0d,#0e,#0f,#10
	db #11,#12,#13,#14,#15,#ff,#1b,#1d
	db #1c,#1c,#1c,#1c,#20,#1f,#1e,#1e
	db #1e,#21,#1e,#1e,#1e,#1e,#1e,#21
	db #ff,#0f,#00,#0f,#00,#0f,#00,#0f
	db #00,#01,#0f,#0f,#ff,#01,#00,#01
	db #00,#01,#0d,#0d,#ff,#01,#00,#01
	db #00,#01,#0e,#82,#9c,#01,#00,#01
	db #00,#01,#0f,#02,#00,#82,#9e,#01
	db #00,#01,#0f,#02,#00,#0f,#ff,#01
	db #00,#01,#0f,#09,#ff,#09,#01,#0f
	db #ff,#01,#0f,#01,#00,#05,#fd,#01
	db #00,#01,#0e,#01,#00,#01,#f2,#01
	db #00,#01,#0f,#01,#fb,#08,#00,#0a
	db #ff,#01,#0b,#01,#00,#01,#00,#01
	db #00,#05,#03,#02,#00,#03,#ff,#0c
	db #ff,#01,#0c,#02,#00,#0c,#ff,#01
	db #00,#01,#0f,#04,#ff,#08,#00,#0b
	db #ff,#01,#0d,#82,#84,#02,#00,#0b
	db #ff,#01,#0d,#02,#00,#06,#fe,#01
	db #ff,#01,#0e,#01,#00,#01,#f2,#01
	db #00,#01,#0f,#02,#00,#0f,#ff,#01
	db #00,#01,#0f,#02,#00,#82,#9e,#01
	db #00,#01,#0a,#01,#00,#01,#f6,#01
	db #00,#01,#0c,#01,#00,#01,#f4,#01
	db #00,#01,#0e,#01,#00,#01,#f2,#01
	db #00,#01,#0c,#04,#00,#0b,#ff,#01
	db #00,#01,#0e,#04,#00,#0b,#ff,#04
	db #00,#01,#0f,#04,#00,#0f,#ff,#01
	db #00,#01,#0c,#03,#00,#04,#fd,#01
	db #00,#01,#0e,#03,#00,#04,#fd,#01
	db #fe,#01,#0f,#03,#00,#08,#ff,#01
	db #00,#01,#0d,#03,#00,#08,#ff,#05
	db #00,#01,#0f,#09,#ff,#09,#01,#0f
	db #ff,#01,#0f,#02,#00,#0c,#ff,#0c
	db #01,#01,#0d,#0c,#ff,#0d,#01,#0e
	db #ff,#01,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#82,#02,#82,#84,#82
	db #02,#01,#00,#83,#03,#83,#86,#83
	db #03,#01,#00,#84,#04,#84,#88,#84
	db #04,#02,#00,#01,#01,#01,#fe,#01
	db #01,#08,#00,#01,#01,#01,#01,#01
	db #01,#04,#00,#01,#02,#01,#02,#01
	db #02,#03,#00,#01,#fd,#01,#fd,#01
	db #fd,#01,#02,#01,#ff,#01,#ff,#01
	db #ff,#08,#00,#01,#01,#01,#fe,#01
	db #01,#01,#fc,#01,#fa,#01,#f9,#01
	db #fd,#02,#03,#01,#05,#03,#09,#01
	db #05,#01,#00,#82,#02,#82,#84,#82
	db #02,#03,#04,#02,#ef,#03,#f8,#84
	db #df,#08,#00,#01,#01,#01,#01,#01
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
	db #ff,#c2,#e1,#08,#83,#e0,#f4,#25
	db #22,#20,#82,#22,#c1,#83,#25,#c2
	db #80,#25,#83,#22,#20,#c1,#22,#27
	db #24,#22,#82,#24,#83,#27,#c2,#80
	db #27,#c1,#83,#24,#22,#24,#29,#26
	db #29,#82,#26,#83,#2b,#c2,#80,#2b
	db #c1,#83,#28,#26,#28,#29,#c0,#82
	db #00,#c2,#80,#26,#c1,#82,#24,#c2
	db #80,#21,#c1,#82,#1f,#84,#1d,#c0
	db #80,#00,#e1,#04,#00,#c2,#30,#c1
	db #82,#35,#c2,#80,#37,#c1,#82,#39
	db #c2,#80,#3c,#e0,#00,#ff,#c1,#e1
	db #04,#82,#e0,#00,#39,#c2,#80,#35
	db #c1,#82,#32,#c2,#80,#30,#c1,#82
	db #39,#c2,#80,#35,#c1,#82,#32,#c2
	db #80,#30,#c1,#82,#39,#c2,#80,#3a
	db #c1,#82,#3b,#c2,#80,#3c,#c3,#83
	db #39,#c1,#82,#37,#c2,#80,#35,#c1
	db #82,#37,#c2,#80,#39,#82,#3b,#80
	db #3c,#c1,#82,#3e,#c3,#83,#41,#c2
	db #80,#41,#c1,#82,#40,#c2,#80,#3e
	db #c1,#82,#3b,#c2,#80,#39,#c1,#82
	db #37,#c2,#80,#30,#c1,#82,#32,#c2
	db #80,#33,#c1,#82,#34,#c2,#80,#3c
	db #c1,#82,#34,#c2,#80,#33,#c1,#82
	db #32,#c2,#80,#3a,#c1,#82,#32,#c2
	db #80,#31,#c1,#82,#30,#c2,#80,#39
	db #c1,#82,#30,#c2,#80,#2f,#c1,#82
	db #2e,#c2,#80,#37,#c1,#82,#35,#c2
	db #80,#34,#c3,#85,#35,#c1,#82,#35
	db #c2,#80,#37,#c1,#82,#39,#c2,#80
	db #41,#c3,#83,#40,#c1,#82,#3e,#c2
	db #80,#3b,#c1,#82,#3c,#c2,#80,#3e
	db #c1,#82,#3c,#c2,#80,#38,#ff,#c1
	db #e1,#04,#82,#e0,#00,#39,#c2,#80
	db #3c,#c1,#82,#3a,#c2,#80,#39,#c1
	db #82,#37,#c2,#80,#3a,#c1,#82,#39
	db #c2,#80,#37,#c1,#82,#35,#c2,#80
	db #39,#c1,#82,#37,#c2,#80,#35,#c1
	db #82,#32,#c2,#80,#35,#c1,#82,#34
	db #c2,#80,#32,#c3,#83,#34,#c1,#82
	db #37,#c2,#80,#3a,#c1,#82,#3e,#c3
	db #83,#41,#40,#c2,#80,#3e,#c1,#82
	db #37,#c2,#80,#39,#c3,#83,#3a,#c1
	db #82,#32,#c2,#80,#33,#c1,#82,#34
	db #c2,#80,#3c,#c1,#82,#34,#c2,#80
	db #33,#c1,#82,#32,#c2,#80,#3a,#c1
	db #82,#32,#c2,#80,#31,#c1,#82,#30
	db #c2,#80,#39,#c1,#82,#30,#c2,#80
	db #2f,#c1,#82,#2e,#c2,#80,#37,#c1
	db #82,#35,#c2,#80,#34,#ff,#c3,#e1
	db #04,#83,#e0,#00,#35,#c1,#82,#35
	db #c2,#80,#37,#c3,#83,#39,#c1,#82
	db #41,#c3,#83,#3e,#c0,#80,#00,#c1
	db #82,#3e,#c2,#80,#3c,#c1,#82,#3e
	db #c2,#80,#3c,#c1,#82,#3a,#c2,#80
	db #39,#c3,#83,#37,#c1,#82,#37,#c2
	db #80,#39,#c3,#83,#3b,#c1,#82,#43
	db #c3,#83,#40,#c0,#80,#00,#c1,#82
	db #40,#c2,#80,#3e,#c1,#82,#40,#c2
	db #80,#3e,#c1,#82,#3c,#c2,#80,#3e
	db #c3,#83,#40,#c1,#82,#40,#c2,#80
	db #3c,#c3,#83,#3a,#c1,#82,#3a,#c2
	db #80,#41,#c3,#83,#39,#c1,#82,#39
	db #c2,#80,#37,#c1,#82,#39,#c2,#80
	db #37,#c1,#82,#34,#c2,#80,#30,#ff
	db #c1,#e1,#04,#82,#e0,#00,#35,#c2
	db #80,#37,#c1,#82,#39,#c2,#80,#3e
	db #c1,#82,#40,#c2,#80,#3e,#c3,#83
	db #3c,#c1,#87,#41,#ff,#c0,#e1,#00
	db #82,#e0,#00,#00,#c2,#e1,#04,#80
	db #38,#c1,#82,#39,#c2,#80,#3c,#c1
	db #82,#39,#c3,#83,#37,#c2,#80,#38
	db #c1,#82,#39,#c2,#80,#3c,#c1,#82
	db #39,#c3,#83,#35,#c2,#80,#39,#c1
	db #82,#37,#c2,#80,#35,#ff,#c1,#e1
	db #04,#83,#e0,#00,#37,#82,#37,#c2
	db #80,#35,#c1,#82,#39,#c2,#80,#37
	db #c1,#82,#35,#c3,#85,#2f,#c2,#80
	db #31,#c1,#83,#32,#c3,#34,#ff,#c1
	db #e1,#04,#82,#e0,#00,#35,#c2,#80
	db #34,#c1,#82,#35,#c3,#83,#38,#c2
	db #80,#38,#c1,#82,#37,#c2,#80,#35
	db #c1,#82,#3c,#c2,#80,#3b,#c1,#82
	db #3a,#c3,#83,#39,#c2,#80,#3d,#c1
	db #82,#3e,#c2,#80,#41,#c1,#82,#3e
	db #c2,#80,#38,#c1,#82,#39,#c2,#80
	db #3c,#c1,#82,#39,#c2,#80,#38,#c1
	db #82,#37,#c3,#83,#35,#c0,#80,#00
	db #c3,#83,#39,#3a,#3c,#ff,#c3,#e1
	db #04,#83,#e0,#00,#3e,#c1,#82,#3e
	db #c2,#80,#3d,#c3,#83,#3e,#c1,#82
	db #3e,#c2,#80,#3d,#c3,#83,#3e,#c1
	db #82,#3a,#c2,#80,#3c,#c1,#82,#3e
	db #c2,#80,#40,#c1,#82,#41,#c2,#80
	db #3e,#c3,#83,#40,#c1,#82,#40,#c2
	db #80,#3f,#c3,#83,#40,#c1,#82,#40
	db #c2,#80,#3f,#c3,#83,#40,#c1,#82
	db #3c,#c2,#80,#3e,#c1,#82,#40,#c2
	db #80,#41,#c1,#82,#43,#c2,#80,#40
	db #ff,#c3,#e1,#04,#83,#e0,#00,#41
	db #c1,#82,#41,#c2,#80,#40,#c3,#83
	db #41,#c1,#82,#41,#c2,#80,#3e,#c3
	db #83,#40,#c1,#82,#40,#80,#3f,#82
	db #40,#c2,#80,#3e,#c1,#82,#40,#c2
	db #80,#3c,#c3,#83,#3e,#c1,#82,#3e
	db #c2,#80,#3d,#c3,#83,#3e,#c1,#82
	db #3e,#c2,#80,#3a,#c3,#83,#3c,#c1
	db #82,#3c,#c2,#80,#3b,#c1,#82,#3c
	db #c2,#80,#3b,#c1,#82,#3c,#c2,#80
	db #39,#ff,#c3,#e1,#04,#83,#e0,#00
	db #3a,#c1,#82,#3a,#c2,#80,#39,#c3
	db #83,#3a,#c1,#82,#3c,#c2,#80,#37
	db #c3,#83,#39,#c1,#82,#41,#c2,#80
	db #40,#c1,#82,#3e,#c2,#80,#39,#c1
	db #82,#37,#c2,#80,#35,#c3,#83,#37
	db #39,#3a,#c1,#82,#3b,#c3,#83,#3c
	db #c2,#80,#37,#c1,#82,#39,#c2,#80
	db #3c,#c1,#82,#39,#c2,#80,#35,#c1
	db #82,#32,#c2,#80,#30,#ff,#c1,#e1
	db #05,#83,#e0,#00,#29,#26,#24,#21
	db #1d,#82,#1a,#83,#18,#c2,#80,#18
	db #c1,#82,#1a,#c2,#80,#18,#c1,#83
	db #17,#1a,#1d,#82,#1f,#83,#1d,#c2
	db #80,#1d,#c1,#82,#1f,#c2,#80,#1d
	db #c1,#82,#1a,#c2,#80,#1d,#c1,#82
	db #1c,#c2,#80,#1a,#c1,#83,#18,#1c
	db #1d,#16,#15,#18,#82,#13,#c2,#80
	db #16,#c1,#82,#18,#c2,#80,#1c,#c1
	db #83,#1d,#1a,#1d,#82,#1a,#83,#1f
	db #c2,#80,#1f,#c1,#83,#1c,#1a,#82
	db #1c,#c2,#80,#1d,#ff,#c1,#e1,#05
	db #83,#e0,#00,#35,#32,#30,#2d,#29
	db #26,#18,#1c,#82,#18,#c2,#80,#1a
	db #c1,#82,#1c,#c2,#80,#1d,#c1,#82
	db #1f,#c2,#80,#21,#c1,#82,#22,#c2
	db #80,#24,#c1,#83,#22,#21,#1f,#18
	db #1c,#18,#1d,#16,#15,#18,#13,#18
	db #ff,#c1,#e1,#05,#83,#e0,#00,#1d
	db #1d,#1a,#18,#82,#11,#c2,#80,#15
	db #c1,#83,#18,#1a,#1d,#1f,#1f,#1c
	db #1a,#82,#12,#c2,#80,#17,#c1,#83
	db #1a,#1c,#1f,#82,#24,#c2,#80,#22
	db #c1,#82,#21,#c2,#80,#24,#c1,#83
	db #1f,#1c,#18,#82,#1a,#c2,#80,#1c
	db #c1,#82,#1d,#c2,#80,#1f,#c1,#83
	db #1c,#ff,#c1,#e1,#05,#83,#e0,#00
	db #1d,#82,#1d,#c2,#80,#1a,#c1,#82
	db #18,#c2,#80,#15,#c1,#83,#13,#87
	db #11,#ff,#c1,#e1,#05,#83,#e0,#00
	db #1d,#1c,#1a,#18,#82,#15,#c2,#80
	db #17,#c1,#83,#18,#82,#1d,#c2,#80
	db #21,#c1,#82,#1f,#c2,#80,#1d,#ff
	db #c1,#e1,#05,#83,#e0,#00,#1f,#1d
	db #1c,#1a,#82,#13,#c2,#80,#1a,#c1
	db #83,#1d,#1a,#1c,#ff,#c1,#e1,#05
	db #83,#e0,#00,#17,#82,#17,#c2,#80
	db #17,#c1,#83,#1a,#1c,#1d,#21,#26
	db #21,#22,#22,#18,#18,#82,#1d,#c2
	db #80,#1d,#c1,#82,#1c,#c2,#80,#1c
	db #c1,#82,#1a,#c2,#80,#1a,#c1,#82
	db #18,#c2,#80,#18,#ff,#c1,#e1,#05
	db #82,#e0,#00,#16,#c2,#80,#22,#c1
	db #82,#21,#c2,#80,#21,#c1,#82,#1f
	db #c2,#80,#1f,#c1,#82,#1d,#c2,#80
	db #1d,#c1,#82,#16,#c2,#80,#22,#c1
	db #82,#21,#c2,#80,#21,#c1,#82,#1f
	db #c2,#80,#1f,#c1,#82,#1d,#c2,#80
	db #1d,#c1,#82,#18,#c2,#80,#24,#c1
	db #82,#22,#c2,#80,#22,#c1,#82,#21
	db #c2,#80,#21,#c1,#82,#1f,#c2,#80
	db #1f,#c1,#82,#18,#c2,#80,#24,#c1
	db #82,#22,#c2,#80,#22,#c1,#82,#21
	db #c2,#80,#21,#c1,#82,#1f,#c2,#80
	db #1f,#ff,#c1,#e1,#05,#82,#e0,#00
	db #1a,#c2,#80,#26,#c1,#82,#1c,#c2
	db #80,#28,#c1,#82,#1d,#c2,#80,#29
	db #c1,#82,#1a,#c2,#80,#26,#c1,#82
	db #18,#c2,#80,#24,#c1,#82,#1a,#c2
	db #80,#26,#c1,#82,#1c,#c2,#80,#28
	db #c1,#82,#18,#c2,#80,#24,#c1,#82
	db #16,#c2,#80,#22,#c1,#82,#18,#c2
	db #80,#24,#c1,#82,#1a,#c2,#80,#26
	db #c1,#82,#16,#c2,#80,#22,#c1,#82
	db #15,#c2,#80,#21,#c1,#82,#16,#c2
	db #80,#22,#c1,#82,#18,#c2,#80,#24
	db #c1,#82,#11,#c2,#80,#1d,#ff,#c1
	db #e1,#05,#82,#e0,#00,#13,#80,#1f
	db #82,#15,#c2,#80,#21,#c1,#82,#16
	db #c2,#80,#22,#c1,#82,#18,#c2,#80
	db #24,#c1,#82,#1d,#c2,#80,#29,#c1
	db #82,#1c,#c2,#80,#28,#c1,#82,#1a
	db #c2,#80,#26,#c1,#82,#18,#c2,#80
	db #24,#c1,#82,#16,#c2,#80,#22,#c1
	db #82,#15,#c2,#80,#21,#c1,#82,#13
	db #c2,#80,#1f,#c1,#82,#17,#c2,#80
	db #23,#c1,#82,#18,#c2,#80,#24,#c1
	db #82,#16,#c2,#80,#22,#c1,#82,#15
	db #c2,#80,#21,#c1,#82,#13,#c2,#80
	db #1f,#ff,#c2,#e1,#05,#82,#e0,#00
	db #25,#80,#25,#82,#22,#80,#1d,#82
	db #20,#80,#20,#82,#22,#80,#20,#ff
	db #c2,#e1,#05,#82,#e0,#00,#27,#80
	db #27,#82,#24,#80,#1f,#82,#22,#80
	db #22,#82,#24,#80,#22,#ff,#c2,#e1
	db #05,#82,#e0,#00,#29,#80,#29,#82
	db #26,#80,#24,#ff,#c2,#e1,#05,#82
	db #e0,#00,#2b,#80,#2b,#82,#28,#80
	db #24,#ff,#c2,#e1,#05,#82,#e0,#00
	db #29,#80,#26,#82,#24,#80,#26,#82
	db #24,#80,#21,#82,#1f,#83,#1d,#c0
	db #00,#c2,#80,#3c,#82,#3c,#80,#3a
	db #82,#39,#80,#37,#ff,#a1,#c3,#e1
	db #00,#83,#e0,#00,#00,#c1,#82,#00
	db #c2,#80,#00,#a2,#c3,#83,#00,#a1
	db #c1,#82,#00,#c2,#80,#00,#c3,#83
	db #00,#c1,#82,#00,#c2,#80,#00,#a2
	db #c3,#83,#00,#a1,#c1,#82,#00,#c2
	db #80,#00,#c3,#82,#00,#c2,#80,#00
	db #c1,#82,#00,#c2,#80,#00,#a2,#c3
	db #83,#00,#a1,#c1,#82,#00,#c2,#80
	db #00,#c3,#83,#00,#c1,#82,#00,#c2
	db #80,#00,#a2,#c3,#83,#00,#a1,#c1
	db #82,#00,#c2,#80,#00,#c3,#83,#00
	db #c1,#82,#00,#c2,#80,#00,#a2,#c3
	db #83,#00,#a1,#c1,#82,#00,#c2,#80
	db #00,#a2,#c3,#82,#00,#a1,#c2,#80
	db #00,#c1,#82,#00,#c2,#80,#00,#a2
	db #c3,#83,#00,#a1,#c1,#82,#00,#c2
	db #80,#00,#c3,#83,#00,#c1,#82,#00
	db #c2,#80,#00,#a2,#c3,#83,#00,#c1
	db #82,#00,#e3,#01,#5f,#c3,#e1,#07
	db #86,#58,#a1,#d3,#e1,#00,#80,#00
	db #a2,#00,#a3,#d4,#00,#a4,#00,#a6
	db #d5,#00,#ff,#a1,#c3,#e1,#00,#83
	db #e0,#00,#00,#c1,#82,#00,#c2,#80
	db #00,#a2,#c3,#83,#00,#a1,#c1,#82
	db #00,#c2,#80,#00,#c3,#83,#00,#c1
	db #82,#00,#c2,#80,#00,#a2,#c3,#83
	db #00,#a1,#c1,#82,#00,#80,#00,#c3
	db #82,#00,#c2,#80,#00,#c1,#82,#00
	db #c2,#80,#00,#a2,#c3,#83,#00,#a1
	db #c1,#82,#00,#c2,#80,#00,#c3,#83
	db #00,#c1,#82,#00,#c2,#80,#00,#a2
	db #c3,#83,#00,#a1,#c1,#82,#00,#c2
	db #80,#00,#ff,#aa,#c3,#e1,#00,#83
	db #e0,#00,#00,#a1,#c1,#82,#00,#c2
	db #80,#00,#a2,#c3,#83,#00,#a1,#c1
	db #82,#00,#c2,#80,#00,#c3,#82,#00
	db #c2,#80,#00,#c1,#82,#00,#c2,#80
	db #00,#a2,#c3,#83,#00,#c1,#82,#00
	db #c2,#80,#00,#ff,#af,#c1,#e1,#05
	db #80,#e0,#00,#00,#a1,#d5,#00,#d4
	db #00,#a5,#dd,#e1,#00,#00,#a1,#d3
	db #00,#d4,#00,#b4,#dd,#00,#a1,#d4
	db #00,#d5,#00,#a5,#dd,#00,#a1,#d3
	db #00,#d4,#00,#b2,#dd,#00,#a1,#d4
	db #00,#d5,#00,#a6,#dd,#00,#a1,#d3
	db #00,#d4,#00,#b5,#dd,#00,#a1,#d4
	db #00,#d5,#00,#a6,#dd,#00,#a1,#d3
	db #00,#d4,#00,#ff,#a1,#c3,#e1,#00
	db #83,#e0,#00,#00,#c1,#82,#00,#c2
	db #80,#00,#a2,#c3,#83,#00,#a1,#c1
	db #80,#00,#a4,#d4,#00,#a7,#d5,#00
	db #c1,#82,#00,#a2,#c3,#83,#00,#a1
	db #c2,#80,#00,#a5,#d3,#00,#a7,#d4
	db #00,#ab,#c1,#00,#ae,#d3,#00,#b0
	db #c1,#00,#b5,#00,#ff,#a1,#c3,#e1
	db #00,#83,#e0,#00,#00,#c1,#82,#00
	db #c2,#80,#00,#a2,#c3,#83,#00,#c1
	db #82,#00,#c2,#80,#00,#c3,#82,#00
	db #a1,#c2,#80,#00,#c1,#82,#00,#c2
	db #80,#00,#a2,#c3,#83,#00,#a1,#c1
	db #82,#00,#c2,#80,#00,#ff,#b3,#c1
	db #e1,#00,#80,#e0,#00,#00,#a1,#d4
	db #00,#d5,#00,#a5,#dd,#00,#a1,#d3
	db #00,#d4,#00,#b5,#dd,#00,#a1,#d4
	db #00,#d5,#00,#a5,#dd,#00,#a1,#d3
	db #00,#d4,#00,#b8,#dd,#00,#a1,#d3
	db #00,#a2,#00,#a3,#00,#a4,#d4,#00
	db #a5,#00,#a6,#00,#a7,#d5,#00,#a8
	db #00,#a9,#00,#ab,#df,#00,#ae,#00
	db #ff,#e3,#01,#5f,#c4,#e1,#0a,#86
	db #38,#ff,#e3,#db,#c3,#c4,#e1,#0a
	db #80,#31,#88,#44,#ff,#e3,#db,#c3
	db #c5,#e1,#0a,#80,#25,#c4,#86,#00
	db #ff,#e7,#0d,#c7,#80,#a1,#2d,#2d
	db #2d,#2d,#2d,#2d,#2d,#2d,#82,#2d
	db #80,#c7,#2d,#2d,#2d,#2d,#2d,#2d
	db #84,#c7,#2d,#80,#2d,#2d,#82,#2d
	db #ff,#80,#c0,#a0,#00,#ff,#a0,#c8
	db #e1,#00,#80,#49,#49,#ff,#a0,#c8
	db #e1,#00,#81,#49,#ff,#a0,#c9,#e1
	db #0b,#80,#4a,#c0,#80,#00,#ff,#a0
	db #c8,#e1,#00,#80,#55,#ff,#a0,#ca
	db #e1,#0d,#80,#50,#4e,#4d,#4b,#49
	db #48,#46,#44,#42,#41,#3f,#3d,#3c
	db #3a,#38,#36,#35,#33,#31,#30,#2e
	db #2c,#2a,#29,#27,#25,#24,#22,#20
	db #1e,#1d,#1b,#ff,#a0,#ca,#e1,#0b
	db #80,#0d,#0f,#11,#12,#14,#16,#18
	db #19,#1b,#1d,#1e,#20,#22,#24,#25
	db #27,#29,#2a,#2c,#2e,#30,#31,#33
	db #35,#36,#38,#3a,#3c,#3d,#3f,#41
	db #42,#ff,#e3,#0f,#45,#cb,#e1,#0e
	db #85,#49,#ff
;
.music_info
	db "Prohibition 128ko Theme 2 (1990)(Infogrames)(Charles Callet)",0
	db "Music Pro - Original Disk 128ko Version Theme 2",0

	read "music_end.asm"
