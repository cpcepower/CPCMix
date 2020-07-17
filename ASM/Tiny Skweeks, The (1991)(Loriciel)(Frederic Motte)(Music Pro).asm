; Music of Tiny Skweeks, The (1991)(Loriciel)(Frederic Motte)(Music Pro)
; Ripped by Megachur the 17/03/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TINYSKWE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #8900

	read "music_header.asm"

	jp l90ed
	jp l90df
;
.init_music
.l8906
;
	xor a
	ld (l8e43),a
	ld a,#ff
	ld (l8e4a),a
	ld a,(l9200)
	ld (l9138),a
	ld hl,l8e52
	ld (hl),#00
	ld de,l8e53
	ld bc,#0128
	ldir
	ld bc,l9201
	ld a,(l9202)
	ld (l8f7b),a
	ld hl,(l9203)
	add hl,bc
	ld (l8f7c),hl
	ld hl,(l9205)
	add hl,bc
	ld (l8f7e),hl
	ld hl,(l9207)
	add hl,bc
	ld (l8f80),hl
	ld hl,(l9209)
	add hl,bc
	ld (l8e57),hl
	ld hl,(l920b)
	add hl,bc
	ld (l8e92),hl
	ld hl,(l920d)
	add hl,bc
	ld (l8ecd),hl
	ld a,#0f
	ld (l8f83),a
	ld hl,l8e4c
	ld de,l8e52
	ld bc,#0005
	ldir
	ld hl,l8e4c
	ld de,l8e8d
	ld bc,#0005
	ldir
	ld hl,l8e4c
	ld de,l8ec8
	ld bc,#0005
	ldir
	ld c,#38
	ld a,#07
	call l905e
	ld a,#ff
	ld (l8e43),a
	ret
.l8988
	ei
;
.play_music
;
	ld a,(l8e43)
	or a
	ret z
	xor a
	ld (l8e43),a
	ld a,#08
	ld (l8e45),a
	cpl
	ld (l8e46),a
	ld a,(l8f83)
	ld e,a
	ld b,#03
	ld hl,l8ee7
.l89a4
	ld a,(hl)
	ld c,a
	ld a,(l8e4b)
	or b
	sub #03
	ld a,#00
	jr c,l89b5
	ld a,c
	cp e
	jr c,l89b5
	ld a,e
.l89b5
	ld c,a
	ld a,b
	add #07
	push de
	call l905e
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l89a4
	ld hl,l8f7b
	dec (hl)
	ld ix,l8e52
	xor a
.l89cf
	ld (l8f82),a
	ld a,(ix+#07)
	or a
	jp nz,l8c87
.l89d9
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l89e3
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jr nz,l8a50
	ld l,(ix+#01)
	ld h,(ix+#02)
.l89f4
	ld a,(hl)
	cp #ff
	jr nz,l8a2f
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l8e4a)
	or a
	jr nz,l89f4
	push hl
	push bc
	push de
	ld a,(l8f82)
	ld c,a
	ld b,#00
	ld hl,l8e47
	add hl,bc
	push hl
	ld e,(hl)
	add a
	ld c,a
	ld hl,l9209
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	push bc
	pop hl
	ld (hl),e
	pop hl
	xor a
	ld (hl),a
	pop de
	pop bc
	pop hl
	jp l89f4
.l8a2f
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l8f7c)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	push bc
	pop hl
	ld bc,l9201
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l89e3
.l8a50
	bit 7,a
	jr nz,l8aba
	ld hl,l8f8a
	or a
	jr z,l8a5d
	add (ix+#20)
.l8a5d
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
	ld a,(l8f82)
	inc a
	ld hl,l8eef
	ld bc,#0014
.l8a8f
	add hl,bc
	dec a
	jr nz,l8a8f
	ldir
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l8f82)
	inc a
	ld hl,l8f2b
	ld bc,#0014
.l8aa7
	add hl,bc
	dec a
	jr nz,l8aa7
	ldir
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l8c73
.l8aba
	bit 6,a
	jr nz,l8b11
	bit 5,a
	jp z,l8afe
	push af
	xor a
	ld (l8f84),a
	pop af
.l8ac9
	and #1f
	ld b,a
	jr z,l8ae3
	ld a,(l8e44)
	push hl
	ld hl,l8e46
	and (hl)
	ld (l8e44),a
	pop hl
	ld c,a
	ld a,#07
	call l905e
	jp l8af5
.l8ae3
	ld a,(l8e44)
	push hl
	ld hl,l8e45
	or (hl)
	ld (l8e44),a
	pop hl
	ld c,a
	ld a,#07
	call l905e
.l8af5
	ld c,b
	ld a,#06
	call l905e
	jp l8c73
.l8afe
	and #1f
	ld hl,l9052
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l8c73
.l8b11
	bit 5,a
	jr nz,l8b7e
	and #1f
	add a
	add a
	add a
	ld hl,(l8f7e)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l8b2c
	ld a,(de)
	bit 7,a
	jr nz,l8b3e
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l8b56
.l8b3e
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
	jr nz,l8b50
	ld b,#01
.l8b50
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l8b56
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jr nz,l8b2c
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l8eef
	ld a,(l8f82)
	inc a
.l8b74
	add hl,bc
	dec a
	jr nz,l8b74
	ex de,hl
	ldir
	jp l8c73
.l8b7e
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l8b95
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
.l8b95
	sbc l
	adc e
	push af
	adc e
	pop af
	adc e
	and l
	adc e
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l8c73
	pop hl
	ld a,(hl)
	ld (l8f84),a
	and #3f
	ld (l8f86),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l8f87),a
	ld a,(l8f84)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l8f84),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l8f84
	or (hl)
	ld (l8f84),a
	ld (l8f85),a
	ld a,(l8f86)
	ld (l8f89),a
	ld hl,l8f87
	ld b,#ff
	cp (hl)
	jr nc,l8be7
	ld b,#01
.l8be7
	ld a,b
	ld (l8f88),a
	ld a,(l8f89)
	jp l8ac9
	ld a,#02
	jr l8bf7
	ld a,#01
.l8bf7
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jr z,l8c68
	add a
	add a
	add a
	ld hl,(l8f80)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l8c15
	ld a,(de)
	bit 7,a
	jr nz,l8c29
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
	jp l8c41
.l8c29
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
	jr nz,l8c3b
	ld b,#ff
.l8c3b
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l8c41
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jr nz,l8c15
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l8f2b
	ld a,(l8f82)
	inc a
.l8c5f
	add hl,bc
	dec a
	jr nz,l8c5f
	ex de,hl
	ldir
	jr l8c6d
.l8c68
	ld a,#00
	ld (ix+#09),a
.l8c6d
	ld a,(ix+#09)
	ld (ix+#3a),a
.l8c73
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l89d9
.l8c87
	ld a,(l8f7b)
	or a
	jr nz,l8c90
	dec (ix+#07)
.l8c90
	ld a,(ix+#0a)
	cp #04
	jp z,l8cda
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
	jr nz,l8cbd
	dec (hl)
	jr nz,l8cb0
	inc (ix+#0a)
.l8cb0
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l8cda
.l8cbd
	dec (hl)
	jr nz,l8cd2
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
	jp l8cd4
.l8cd2
	inc hl
	inc hl
.l8cd4
	dec (hl)
	jr nz,l8cda
	inc (ix+#0a)
.l8cda
	ld a,(ix+#09)
	or a
	jp z,l8d77
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
	jr nz,l8d18
	dec (hl)
	jr nz,l8cfc
	inc (ix+#21)
.l8cfc
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jr nz,l8d08
	ld b,#00
.l8d08
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l8d46
.l8d18
	dec (hl)
	jr nz,l8d3e
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
	jr nz,l8d2c
	ld b,#00
.l8d2c
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l8d40
.l8d3e
	inc hl
	inc hl
.l8d40
	dec (hl)
	jr nz,l8d46
	inc (ix+#21)
.l8d46
	ld a,(ix+#21)
	cp #04
	jr nz,l8d77
	ld a,(ix+#09)
	cp #02
	jr nz,l8d5b
	ld a,#00
	ld (ix+#09),a
	jr l8d77
.l8d5b
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l8f82)
	inc a
	ld hl,l8f2b
	ld bc,#0014
.l8d71
	add hl,bc
	dec a
	jr nz,l8d71
	ldir
.l8d77
	ld c,(ix+#36)
	ld a,(l8f82)
	add a
	call l905e
	ld c,(ix+#37)
	inc a
	call l905e
	ld bc,#003b
	add ix,bc
	ld a,(l8e45)
	rlc a
	ld (l8e45),a
	cpl
	ld (l8e46),a
	ld a,(l8f82)
	inc a
	cp #03
	jp nz,l89cf
	ld a,(l8f84)
	or a
	jr z,l8dd9
	dec a
	ld (l8f84),a
	or a
	jr nz,l8dd9
	ld a,(l8f85)
	ld (l8f84),a
	ld a,(l8f89)
	ld hl,l8f88
	add (hl)
	ld (l8f89),a
	ld c,a
	ld hl,l8f86
	cp (hl)
	jr z,l8dcc
	ld hl,l8f87
	cp (hl)
	jr nz,l8dd4
.l8dcc
	ld a,(l8f88)
	xor #fe
	ld (l8f88),a
.l8dd4
	ld a,#06
	call l905e
.l8dd9
	ld a,(l8f7b)
	or a
	jr nz,l8de5
	ld a,(l9202)
	ld (l8f7b),a
.l8de5
	ld a,#ff
	ld (l8e43),a
	ret
	push hl
	push de
	push bc
	push af
	xor a
	ld (l8e43),a
	ld a,e
	ld (l8e47),a
	ld a,b
	ld (l8e48),a
	ld a,c
	ld (l8e49),a
	ld hl,l8e4c
	ld de,l8e52
	ldi
	ldi
	ldi
	ldi
	ldi
	ld hl,l8e4c
	ld de,l8e8d
	ldi
	ldi
	ldi
	ldi
	ldi
	ld hl,l8e4c
	ld de,l8ec8
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l8e59),a
	ld (l8e94),a
	ld (l8ecf),a
	ld a,#ff
	ld (l8e43),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.l8e4a equ $ + 7
.l8e49 equ $ + 6
.l8e48 equ $ + 5
.l8e47 equ $ + 4
.l8e46 equ $ + 3
.l8e45 equ $ + 2
.l8e44 equ $ + 1
.l8e43
	db #ff,#28,#40,#bf,#00,#00,#00,#ff
.l8e4c equ $ + 1
.l8e4b
	db #ff,#00
	db #51,#8e,#51,#8e
.l8e52 equ $ + 1
.l8e51
	db #ff,#00
.l8e57 equ $ + 4
.l8e53
	dw l8e51,l8e51,l920f
.l8e59
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8e8d equ $ + 4
	db #00,#00,#00,#00,#00
.l8e92 equ $ + 4
	dw l8e51,l8e51,l926d
.l8e94
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8ec8 equ $ + 4
	db #00,#00,#00,#00,#00
.l8ecd equ $ + 4
	dw l8e51,l8e51,l9276
.l8ecf
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8ee7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8eef
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8f2b equ $ + 4
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
.l8f7b equ $ + 4
	db #00,#00,#00,#00,#03
.l8f80 equ $ + 4
.l8f7e equ $ + 2
.l8f7c
	dw l92a3,l98e8,l99e8
.l8f89 equ $ + 7
.l8f88 equ $ + 6
.l8f87 equ $ + 5
.l8f86 equ $ + 4
.l8f85 equ $ + 3
.l8f84 equ $ + 2
.l8f83 equ $ + 1
.l8f82
	db #02,#0f,#00,#00,#00,#00,#00,#00
.l8f8a
	db #00,#00
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
	dw #0010,#000f,#000e,#000d
	dw #000c,#000b,#000a
.l9052
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
.l905e
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
	db #00
	db #48,#04,#42,#04,#45,#20,#45,#80	; keyboard data values
	db #40,#02,#41,#01,#40,#04,#40,#01
	db #21,#81,#90,#01,#0e,#f4,#ed,#49	; keyboard test code
	db #06,#f6,#ed,#78,#e6,#30,#4f,#f6
	db #c0,#ed,#79,#ed,#49,#04,#3e,#92
	db #ed,#79,#c5,#11,#00,#08,#7e,#23
	db #06,#f6,#ed,#79,#06,#f4,#ed,#78
	db #2f,#a6,#28,#01,#37,#cb,#13,#23
	db #15,#20,#eb,#06,#f6,#3e,#49,#ed
	db #79,#06,#f4,#ed,#78,#2f,#e6,#1f
	db #b3,#5f,#32,#80,#90,#c1,#3e,#82
	db #ed,#79,#05,#ed,#49,#c9
;
.stop_music
.l90df
;
	di
	ld a,#00
	ld (l8f83),a
	call l911e
	call #bca7
	ei
	ret
.l90ed
	call l8906	; init music
	call l90f4
	ret
.l90f4
	di
	ld hl,(#0039)
	ld de,l911b
	ldi
	ldi
	ldi
	dec hl
	dec hl
	dec hl
	ld (hl),#c3
	inc hl
	ld de,l912c
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	inc hl
	ld (l9154),hl
	ld bc,#0033
	add hl,bc
	ld (l9151),hl
	ei
	ret
.l911b
	db #f3,#08,#38
.l911e
	ld de,(#0039)
	ld hl,l911b
	ldi
	ldi
	ldi
	ret
.l912c
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld a,(l9156)
.l9138 equ $ + 1
	cp #06
	jr nz,l9142
	call l8988
	xor a
	ld (l9156),a
.l9142
	inc a
	ld (l9156),a
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	di
	ex af,af'
.l9151 equ $ + 1
	jp c,#b978
.l9154 equ $ + 1
	jp #b945
.l9156
	db #02,#30,#09,#09,#20,#20,#3b,#20
	db #44,#32,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9205 equ $ + 7
.l9203 equ $ + 5
.l9202 equ $ + 4
.l9201 equ $ + 3
.l9200 equ $ + 2
	db #00,#00,#06,#2a,#03,#a2,#00,#e7
.l920d equ $ + 7
.l920b equ $ + 5
.l9209 equ $ + 3
.l9207 equ $ + 1
	db #06,#e7,#07,#0e,#00,#6c,#00,#75
.l920f equ $ + 1
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#03,#02,#03,#02,#03,#02,#03
	db #02,#00,#01,#00,#01,#00,#01,#00
	db #01,#04,#04,#04,#04,#05,#06,#07
	db #08,#04,#04,#04,#04,#05,#06,#07
	db #08,#04,#04,#04,#04,#05,#06,#07
	db #08,#04,#04,#04,#04,#05,#06,#07
	db #08,#04,#04,#04,#04,#05,#06,#07
	db #08,#09,#0a,#0b,#0b,#0c,#0c,#0d
	db #0d,#0d,#0d,#0e,#0e,#0e,#0e,#0d
	db #0d,#0d,#0d,#0e,#0e,#0e,#0e,#0f
.l926d equ $ + 7
	db #0f,#10,#00,#01,#00,#01,#ff,#11
	db #11,#11,#12,#11,#11,#11,#11,#ff
.l9276
	db #13,#13,#14,#15,#13,#13,#16,#17
	db #16,#17,#18,#19,#1a,#1b,#1c,#1d
	db #1e,#1f,#20,#21,#22,#22,#23,#23
	db #23,#23,#23,#23,#23,#23,#23,#23
	db #23,#23,#23,#23,#23,#23,#24,#25
.l92a3 equ $ + 5
	db #26,#27,#28,#29,#ff,#f8,#00,#09
	db #01,#1a,#01,#26,#01,#37,#01,#52
	db #01,#6d,#01,#88,#01,#a3,#01,#be
	db #01,#01,#02,#3c,#02,#6b,#02,#95
	db #02,#a7,#02,#b9,#02,#e9,#02,#0d
	db #03,#43,#03,#80,#03,#af,#03,#d2
	db #03,#f4,#03,#15,#04,#4c,#04,#94
	db #04,#dc,#04,#01,#05,#1c,#05,#41
	db #05,#5c,#05,#93,#05,#c4,#05,#eb
	db #05,#02,#06,#1a,#06,#2c,#06,#45
	db #06,#5e,#06,#81,#06,#a4,#06,#c6
	db #06,#5f,#9b,#e0,#00,#a0,#c6,#e2
	db #07,#84,#18,#13,#83,#18,#80,#18
	db #82,#13,#18,#ff,#e0,#00,#a0,#c6
	db #e2,#07,#84,#16,#11,#83,#16,#80
	db #16,#82,#11,#16,#ff,#e0,#00,#a0
	db #c6,#e2,#07,#84,#22,#1d,#22,#1d
	db #ff,#e0,#00,#a0,#c6,#e2,#07,#84
	db #20,#1b,#83,#20,#80,#20,#82,#1b
	db #20,#ff,#e0,#00,#a0,#c6,#e2,#07
	db #82,#18,#c0,#80,#0c,#c6,#18,#c0
	db #82,#18,#c6,#80,#13,#83,#16,#84
	db #18,#80,#22,#24,#ff,#e0,#00,#a0
	db #c6,#e2,#07,#82,#14,#c0,#80,#0c
	db #c6,#14,#c0,#82,#18,#c6,#80,#0f
	db #83,#1f,#84,#14,#80,#1f,#20,#ff
	db #e0,#00,#a0,#c6,#e2,#07,#82,#16
	db #c0,#80,#0c,#c6,#16,#c0,#82,#18
	db #c6,#80,#11,#83,#20,#84,#16,#80
	db #20,#22,#ff,#e0,#00,#a0,#c6,#e2
	db #07,#82,#11,#c0,#80,#0c,#c6,#11
	db #c0,#82,#18,#c6,#80,#18,#83,#1b
	db #84,#11,#80,#18,#1b,#ff,#e0,#00
	db #a0,#c6,#e2,#07,#82,#11,#c0,#80
	db #0c,#c6,#11,#c0,#82,#18,#c6,#80
	db #0c,#83,#1b,#84,#1d,#80,#20,#22
	db #ff,#e0,#00,#a0,#c6,#e2,#07,#83
	db #0f,#1b,#80,#0e,#82,#0f,#80,#0f
	db #1b,#0f,#11,#1d,#82,#11,#83,#13
	db #1f,#80,#0e,#83,#11,#84,#13,#80
	db #1d,#1f,#83,#0f,#1b,#80,#1a,#82
	db #1b,#80,#1b,#18,#16,#11,#11,#82
	db #0f,#83,#13,#82,#1f,#80,#1a,#1d
	db #1f,#82,#1d,#80,#1d,#82,#1a,#80
	db #1a,#82,#1d,#ff,#e0,#00,#a0,#c6
	db #e2,#07,#83,#0f,#1b,#80,#0e,#82
	db #0f,#80,#0f,#1b,#0f,#11,#1d,#82
	db #11,#83,#13,#1f,#80,#0e,#83,#11
	db #84,#13,#80,#1d,#1f,#83,#0f,#1b
	db #80,#1a,#82,#1b,#80,#1b,#18,#16
	db #11,#11,#82,#0f,#83,#13,#82,#1f
	db #80,#1a,#1d,#1f,#86,#1f,#ff,#e0
	db #00,#a0,#c6,#e2,#07,#84,#17,#82
	db #1a,#17,#84,#15,#82,#19,#15,#84
	db #13,#82,#17,#13,#84,#15,#82,#19
	db #15,#84,#17,#82,#1a,#17,#84,#15
	db #82,#19,#15,#84,#10,#82,#13,#10
	db #84,#15,#82,#19,#15,#ff,#e0,#00
	db #a0,#c6,#e2,#07,#85,#13,#82,#13
	db #13,#10,#13,#86,#15,#82,#15,#12
	db #12,#15,#17,#84,#17,#82,#1a,#17
	db #84,#15,#82,#19,#15,#84,#13,#82
	db #17,#13,#84,#15,#82,#19,#15,#ff
	db #e0,#00,#a0,#c6,#e2,#07,#83,#17
	db #17,#80,#12,#83,#15,#84,#17,#82
	db #15,#ff,#e0,#00,#a0,#c6,#e2,#07
	db #83,#1f,#1f,#80,#1a,#83,#1e,#84
	db #1f,#82,#1e,#ff,#e0,#00,#a0,#c6
	db #e2,#07,#85,#1c,#82,#1c,#84,#1c
	db #82,#17,#86,#1a,#82,#15,#80,#17
	db #1a,#82,#15,#80,#17,#15,#82,#13
	db #84,#10,#86,#1c,#82,#1c,#86,#1a
	db #80,#15,#16,#82,#17,#1a,#80,#1f
	db #1e,#82,#1c,#ff,#e0,#00,#a0,#c6
	db #e2,#07,#85,#18,#82,#18,#84,#18
	db #82,#13,#86,#16,#82,#16,#84,#16
	db #13,#85,#18,#82,#18,#84,#18,#82
	db #13,#85,#16,#84,#11,#16,#11,#ff
	db #e0,#00,#a2,#d0,#e2,#00,#80,#00
	db #a1,#ce,#00,#cf,#00,#ce,#00,#a5
	db #d1,#e1,#02,#32,#a1,#ce,#e2,#00
	db #00,#cf,#00,#ce,#00,#a2,#d0,#00
	db #a1,#ce,#00,#cf,#00,#ce,#00,#a5
	db #d1,#e1,#02,#32,#a1,#ce,#e2,#00
	db #00,#cf,#00,#ce,#00,#ff,#e0,#00
	db #a2,#d0,#e2,#00,#80,#00,#a1,#ce
	db #00,#cf,#00,#ce,#00,#a5,#d1,#e1
	db #02,#32,#a1,#ce,#e2,#00,#00,#cf
	db #00,#a5,#d1,#e1,#02,#32,#a2,#d0
	db #e2,#00,#00,#a1,#ce,#00,#cf,#00
	db #ce,#00,#a5,#d1,#e1,#02,#32,#a1
	db #cf,#e2,#00,#00,#a5,#d1,#e1,#02
	db #32,#32,#ff,#e0,#00,#a0,#c8,#e1
	db #07,#82,#37,#86,#34,#82,#34,#35
	db #37,#80,#3a,#3c,#3e,#3c,#82,#3a
	db #85,#37,#84,#35,#82,#34,#86,#37
	db #82,#3c,#3e,#40,#80,#41,#43,#41
	db #40,#82,#3e,#84,#3c,#82,#39,#84
	db #37,#ff,#e0,#00,#a0,#c8,#e1,#07
	db #87,#38,#c0,#82,#3c,#c8,#3c,#3a
	db #38,#37,#84,#37,#82,#38,#35,#37
	db #85,#38,#82,#38,#3c,#3f,#41,#88
	db #3a,#c0,#82,#3a,#ff,#e0,#00,#a0
	db #c8,#e1,#07,#85,#3c,#84,#3c,#82
	db #3f,#3e,#3c,#3e,#3c,#3a,#85,#3a
	db #84,#37,#85,#38,#82,#3a,#38,#37
	db #35,#88,#35,#c0,#82,#35,#ff,#e0
	db #00,#a0,#c8,#e1,#07,#89,#3c,#c0
	db #85,#3c,#c8,#80,#40,#41,#85,#40
	db #82,#43,#41,#40,#3c,#40,#87,#3e
	db #c0,#82,#3e,#c8,#80,#35,#37,#ff
	db #e0,#00,#a0,#c8,#e1,#07,#85,#3f
	db #84,#3f,#82,#41,#3f,#86,#3e,#80
	db #3e,#3f,#82,#3e,#3c,#3a,#3e,#88
	db #3c,#c0,#85,#3c,#c1,#e2,#05,#80
	db #3c,#3a,#c8,#e1,#07,#39,#3a,#c1
	db #e2,#05,#39,#37,#c8,#e1,#07,#39
	db #37,#c1,#e2,#05,#35,#37,#ff,#e0
	db #00,#a0,#c1,#e2,#05,#80,#30,#37
	db #3c,#37,#3c,#37,#3a,#3c,#30,#37
	db #3c,#37,#35,#36,#37,#34,#30,#37
	db #3c,#37,#3c,#37,#3a,#3c,#30,#37
	db #3c,#37,#35,#36,#37,#34,#30,#37
	db #3c,#37,#3c,#37,#3a,#3c,#43,#42
	db #41,#40,#3c,#3a,#37,#3a,#30,#37
	db #3c,#30,#3c,#37,#3a,#3c,#30,#37
	db #3c,#35,#36,#37,#43,#42,#ff,#e0
	db #00,#a0,#c1,#e2,#05,#80,#30,#37
	db #3c,#37,#3c,#37,#3a,#3c,#30,#37
	db #3c,#37,#35,#36,#37,#33,#30,#37
	db #3c,#37,#3c,#37,#3a,#3c,#30,#37
	db #3c,#37,#35,#36,#37,#33,#30,#37
	db #3c,#37,#3c,#37,#3a,#3c,#43,#42
	db #41,#3f,#3c,#3a,#37,#3a,#30,#37
	db #3c,#30,#3c,#37,#3a,#3c,#30,#37
	db #3c,#35,#36,#37,#43,#42,#ff,#e0
	db #00,#a0,#c8,#e1,#07,#85,#43,#84
	db #43,#82,#40,#41,#43,#41,#40,#3c
	db #84,#3e,#3e,#82,#3e,#40,#43,#41
	db #84,#40,#82,#3e,#3c,#87,#37,#82
	db #3c,#84,#3e,#ff,#e0,#00,#a0,#c8
	db #e1,#07,#85,#3f,#84,#3f,#82,#3e
	db #3c,#84,#3a,#37,#82,#37,#36,#35
	db #33,#8a,#30,#c0,#82,#30,#ff,#e0
	db #00,#a0,#c8,#e1,#07,#85,#43,#84
	db #43,#82,#40,#41,#43,#46,#45,#41
	db #84,#43,#82,#43,#41,#3e,#3f,#40
	db #43,#84,#41,#82,#40,#3c,#88,#3e
	db #c0,#82,#3e,#ff,#e0,#00,#a0,#c8
	db #e1,#07,#85,#3f,#84,#43,#82,#41
	db #3f,#3c,#3e,#3c,#3a,#84,#3a,#82
	db #3c,#84,#3e,#88,#3c,#39,#ff,#e0
	db #00,#a0,#c8,#e1,#07,#87,#2e,#c0
	db #82,#2e,#c8,#80,#2e,#30,#83,#32
	db #35,#82,#37,#80,#3a,#39,#37,#35
	db #32,#30,#2e,#2b,#87,#2b,#c0,#82
	db #24,#c8,#80,#32,#35,#37,#35,#32
	db #30,#32,#30,#2e,#2b,#29,#2b,#2e
	db #30,#32,#35,#37,#3a,#ff,#e0,#00
	db #a0,#c8,#e1,#07,#86,#3a,#c0,#82
	db #3a,#c8,#37,#35,#84,#37,#35,#80
	db #32,#35,#82,#32,#30,#2e,#2b,#85
	db #2e,#80,#2e,#30,#82,#32,#35,#37
	db #84,#37,#35,#80,#32,#35,#37,#39
	db #3b,#3c,#3e,#35,#37,#39,#ff,#e0
	db #00,#a0,#c8,#e1,#07,#88,#3b,#c0
	db #82,#3b,#c8,#39,#36,#84,#36,#82
	db #34,#32,#34,#32,#88,#2f,#c0,#84
	db #2f,#c8,#80,#2d,#2a,#29,#28,#26
	db #25,#26,#28,#29,#2a,#ff,#e0,#00
	db #a0,#c8,#e1,#07,#88,#2f,#c0,#82
	db #2f,#c8,#32,#36,#84,#34,#82,#2f
	db #32,#34,#8a,#2f,#ff,#e0,#00,#a0
	db #c8,#e1,#07,#85,#43,#84,#43,#82
	db #42,#40,#86,#3d,#82,#3b,#39,#3b
	db #3d,#39,#8a,#3b,#ff,#e0,#00,#a0
	db #c3,#e2,#05,#80,#3b,#3d,#3e,#3b
	db #c4,#42,#c3,#40,#3e,#3d,#ff,#e0
	db #00,#a0,#c8,#e1,#07,#89,#3b,#c0
	db #85,#3b,#c8,#82,#3d,#3e,#84,#3d
	db #3b,#36,#88,#3b,#c0,#82,#3b,#ff
	db #e0,#00,#a0,#c8,#e1,#07,#89,#3b
	db #c0,#85,#3b,#c8,#82,#3d,#3e,#84
	db #3d,#3e,#42,#88,#3b,#c0,#82,#3b
	db #ff,#e0,#00,#a0,#c8,#e1,#07,#86
	db #44,#c0,#82,#44,#c8,#42,#44,#84
	db #45,#44,#82,#40,#84,#42,#44,#82
	db #44,#42,#86,#40,#82,#40,#88,#3e
	db #c0,#82,#3c,#ff,#e0,#00,#a0,#c8
	db #e1,#07,#86,#44,#c0,#82,#44,#c8
	db #47,#44,#84,#45,#44,#82,#40,#84
	db #3e,#3b,#82,#40,#3f,#86,#40,#82
	db #3b,#88,#3e,#c0,#82,#3c,#ff,#e0
	db #00,#a0,#c8,#e1,#07,#86,#30,#c0
	db #82,#30,#c8,#2b,#30,#84,#2e,#2e
	db #80,#29,#2a,#82,#2b,#29,#84,#27
	db #82,#29,#27,#87,#24,#c0,#88,#24
	db #ff,#e0,#00,#a0,#c8,#e1,#07,#86
	db #34,#c0,#82,#34,#c8,#35,#37,#84
	db #3a,#37,#80,#3a,#37,#82,#3a,#3c
	db #80,#3f,#3c,#82,#3a,#88,#3c,#c0
.l98e8 equ $ + 2
	db #3c,#ff,#0f,#00,#0f,#00,#0f,#00
	db #0f,#00,#01,#0f,#0f,#ff,#01,#00
	db #01,#00,#01,#0d,#0d,#ff,#01,#00
	db #01,#00,#01,#0b,#0b,#ff,#01,#00
	db #01,#00,#01,#09,#09,#ff,#01,#00
	db #01,#00,#01,#07,#07,#ff,#01,#00
	db #01,#00,#01,#0f,#82,#88,#08,#00
	db #83,#a1,#01,#0a,#01,#00,#03,#00
	db #84,#a8,#01,#0c,#01,#00,#03,#00
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
.l99e8 equ $ + 2
	db #0e,#ff,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#84,#08,#82,#88
	db #84,#08,#01,#00,#01,#3c,#03,#ec
	db #01,#ef,#86,#86,#01,#f1,#01,#2b
	db #01,#e5,#88,#08,#82,#04,#04,#fe
	db #03,#02,#04,#00,#82,#04,#04,#ff
	db #82,#04,#85,#0a,#03,#fd,#85,#0a
	db #01,#05,#01,#00,#82,#02,#02,#ff
	db #82,#02,#06,#00,#01,#01,#01,#fe
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
	db #01,#ff,#01,#00,#01,#63,#02,#d8
	db #01,#d1,#06,#00,#01,#ff,#01,#00
	db #01,#01,#08,#00,#01,#01,#01,#fe
	db #01,#01,#08,#00,#01,#01,#01,#01
	db #01,#01,#01,#00,#01,#00,#01,#01
	db #01,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.music_info
	db "Tiny Skweeks, The (1991)(Loriciel)(Frederic Motte)",0
	db "Music Pro",0

	read "music_end.asm"
