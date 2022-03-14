; Music of Generation CPC Issue 2 - Edito (1990)(Public Domain)()(Music Pro)
; Ripped by Megachur the 04/03/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GENECI2E.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #8900

	read "music_header.asm"

	jp l90ed	; init music interrupt
	jp l90df	; stop music interrupt
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
;
.real_play_music
.l8988
;
	ei
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
	db #ff,#38,#00,#00,#00,#00,#00,#ff
.l8e4c equ $ + 1
.l8e4b
	db #ff,#00
	dw l8e51,l8e51
.l8e57 equ $ + 6
.l8e53 equ $ + 2
.l8e52 equ $ + 1
.l8e51
	db #ff,#00,#00,#00,#00,#00,#00,#00
.l8e59
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8e8d equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8e94 equ $ + 3
.l8e92 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8ec8 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8ecf equ $ + 6
.l8ecd equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8ee7 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8eef equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8f2b equ $ + 2
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
.l8f80 equ $ + 7
.l8f7e equ $ + 5
.l8f7c equ $ + 3
.l8f7b equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8f88 equ $ + 7
.l8f87 equ $ + 6
.l8f86 equ $ + 5
.l8f85 equ $ + 4
.l8f84 equ $ + 3
.l8f83 equ $ + 2
.l8f82 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8f8a equ $ + 1
.l8f89
	db #00,#00,#00
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
.l9080
	nop
	ld c,b
	inc b
	ld b,d
	inc b
	ld b,l
	jr nz,l90cd
	add b
	ld b,b
	ld (bc),a
	ld b,c
	ld bc,#0440
	ld b,b
	ld bc,#8121
	sub b
	ld bc,#f40e
	out (c),c
	ld b,#f6
	in a,(c)
	and #30
	ld c,a
	or #c0
	out (c),a
	out (c),c
	inc b
	ld a,#92
	out (c),a
	push bc
	ld de,#0800
.l90af
	ld a,(hl)
	inc hl
	ld b,#f6
	out (c),a
	ld b,#f4
	in a,(c)
	cpl
	and (hl)
	jr z,l90be
	scf
.l90be
	rl e
	inc hl
	dec d
	jr nz,l90af
	ld b,#f6
	ld a,#49
	out (c),a
	ld b,#f4
.l90cd equ $ + 1
	in a,(c)
	cpl
	and #1f
	or e
	ld e,a
	ld (l9080),a
	pop bc
	ld a,#82
	out (c),a
	dec b
	out (c),c
	ret
.l90df
	di
	ld a,#00
	ld (l8f83),a
	call l911e
	call #bca7
	ei
	ret
.l90ed
	call l8906
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
	nop
	nop
	nop
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
	jp c,#0000
.l9154 equ $ + 1
	jp #0000
.l9156
	db #00,#30,#09,#09,#20,#20,#3b,#20
	db #44,#32,#20,#3a,#20,#64,#75,#72
	db #65,#65,#20,#32,#20,#65,#6e,#76
	db #65,#6c,#6f,#70,#70,#65,#0d,#09
	db #64,#65,#66,#62,#20,#30,#09,#09
	db #20,#20
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
.l9207 equ $ + 7
.l9205 equ $ + 5
.l9203 equ $ + 3
.l9202 equ $ + 2
.l9201 equ $ + 1
.l9200
	db #03,#3a,#03,#65,#00,#59,#0c,#59
.l920d equ $ + 5
.l920b equ $ + 3
.l9209 equ $ + 1
	db #0d,#0e,#00,#2a,#00,#45,#00,#00
	db #04,#05,#06,#03,#07,#06,#08,#03
	db #07,#08,#0a,#08,#0f,#11,#11,#0b
	db #0d,#0b,#0d,#12,#13,#14,#0e,#13
	db #13,#15,#ff,#16,#17,#18,#18,#18
	db #19,#1a,#1a,#18,#19,#1c,#1d,#1a
	db #23,#24,#1e,#22,#1e,#22,#25,#27
	db #27,#26,#27,#27,#28,#ff,#29,#2a
	db #2c,#2c,#2c,#2d,#2c,#2e,#2c,#2d
	db #31,#31,#31,#31,#30,#33,#30,#30
	db #35,#35,#32,#32,#32,#34,#36,#38
	db #38,#37,#38,#38,#39,#ff,#db,#00
	db #e4,#00,#07,#01,#2d,#01,#5c,#01
	db #c1,#01,#26,#02,#46,#02,#66,#02
	db #86,#02,#a6,#02,#c6,#02,#3b,#03
	db #45,#03,#ba,#03,#da,#03,#17,#04
	db #3f,#04,#7a,#04,#9a,#04,#ba,#04
	db #e9,#04,#0f,#05,#18,#05,#21,#05
	db #41,#05,#61,#05,#81,#05,#a1,#05
	db #c1,#05,#e4,#05,#08,#06,#20,#06
	db #40,#06,#60,#06,#84,#06,#c0,#06
	db #e7,#06,#07,#07,#27,#07,#47,#07
	db #6d,#07,#76,#07,#c4,#07,#13,#08
	db #61,#08,#a9,#08,#ed,#08,#31,#09
	db #95,#09,#c5,#09,#15,#0a,#7f,#0a
	db #ea,#0a,#4e,#0b,#92,#0b,#da,#0b
	db #1e,#0c,#d1,#a0,#e0,#00,#a0,#d6
	db #e1,#03,#8b,#30,#ff,#e0,#00,#a0
	db #d1,#e2,#05,#82,#30,#3c,#d2,#e2
	db #01,#30,#3c,#d1,#e2,#05,#30,#3c
	db #d2,#e2,#01,#30,#3c,#d1,#e2,#05
	db #30,#3c,#d2,#e2,#01,#30,#3c,#ff
	db #e0,#fe,#a0,#d1,#e2,#05,#82,#3f
	db #3c,#38,#3c,#3f,#3c,#c9,#e2,#01
	db #3e,#d1,#e2,#05,#37,#c9,#e2,#01
	db #3e,#d1,#e2,#05,#37,#c9,#e2,#01
	db #3f,#d1,#e2,#05,#3e,#ff,#e0,#00
	db #a0,#d2,#e2,#01,#82,#30,#d1,#e2
	db #05,#3c,#d2,#e2,#01,#37,#d1,#e2
	db #05,#33,#d2,#e2,#01,#32,#d1,#e2
	db #05,#30,#32,#3e,#37,#35,#33,#32
	db #33,#3f,#37,#33,#35,#37,#38,#3f
	db #3c,#3e,#3f,#3c,#ff,#e0,#00,#a0
	db #d1,#e2,#05,#82,#24,#d2,#e2,#01
	db #24,#d1,#e2,#05,#24,#d2,#e2,#01
	db #24,#d1,#e2,#05,#24,#d2,#e2,#01
	db #24,#d1,#e2,#05,#24,#d2,#e2,#01
	db #24,#d1,#e2,#05,#24,#d2,#e2,#01
	db #24,#d1,#e2,#05,#24,#d2,#e2,#01
	db #24,#d1,#e2,#05,#24,#d2,#e2,#01
	db #24,#d1,#e2,#05,#24,#d2,#e2,#01
	db #24,#d1,#e2,#05,#24,#d2,#e2,#01
	db #24,#d1,#e2,#05,#24,#d2,#e2,#01
	db #24,#d1,#e2,#05,#24,#d2,#e2,#01
	db #24,#d1,#e2,#05,#24,#d2,#e2,#01
	db #24,#ff,#e0,#00,#a0,#d1,#e2,#05
	db #82,#24,#d2,#e2,#01,#24,#d1,#e2
	db #05,#24,#d2,#e2,#01,#24,#d1,#e2
	db #05,#24,#d2,#e2,#01,#24,#d1,#e2
	db #05,#26,#d2,#e2,#01,#26,#d1,#e2
	db #05,#26,#d2,#e2,#01,#26,#d1,#e2
	db #05,#26,#d2,#e2,#01,#26,#d1,#e2
	db #05,#27,#d2,#e2,#01,#27,#d1,#e2
	db #05,#27,#d2,#e2,#01,#27,#d1,#e2
	db #05,#27,#d2,#e2,#01,#27,#d1,#e2
	db #05,#29,#d2,#e2,#01,#29,#d1,#e2
	db #05,#29,#d2,#e2,#01,#29,#d1,#e2
	db #05,#29,#d2,#e2,#01,#29,#ff,#e0
	db #00,#a0,#c9,#e2,#01,#82,#2b,#27
	db #24,#27,#2b,#27,#2c,#29,#24,#29
	db #2c,#29,#30,#2b,#27,#2b,#30,#2b
	db #30,#2c,#29,#2c,#30,#2c,#ff,#e0
	db #00,#a0,#d1,#e2,#05,#82,#3e,#37
	db #36,#37,#3f,#3e,#3c,#33,#32,#33
	db #3e,#3c,#3a,#33,#32,#33,#3c,#3a
	db #38,#35,#34,#35,#3a,#38,#ff,#e0
	db #0c,#a0,#c9,#e2,#01,#82,#2b,#27
	db #24,#27,#2b,#27,#2c,#29,#24,#29
	db #2c,#29,#30,#2b,#27,#2b,#30,#2b
	db #30,#2c,#29,#2c,#30,#2c,#ff,#e0
	db #00,#a0,#c9,#e2,#01,#82,#37,#2f
	db #32,#2f,#37,#35,#33,#30,#33,#30
	db #35,#33,#38,#30,#33,#30,#3a,#38
	db #37,#2f,#32,#2f,#37,#2b,#ff,#e0
	db #00,#a0,#c9,#e2,#01,#82,#37,#33
	db #30,#33,#37,#33,#85,#38,#82,#30
	db #33,#30,#85,#39,#82,#30,#33,#30
	db #85,#38,#82,#32,#33,#35,#ff,#e0
	db #02,#a0,#d2,#e2,#01,#82,#43,#d1
	db #e2,#05,#43,#d2,#e2,#01,#41,#d1
	db #e2,#05,#3f,#d2,#e2,#01,#3f,#d1
	db #e2,#05,#43,#d2,#e2,#01,#3f,#d1
	db #e2,#05,#41,#d2,#e2,#01,#41,#d1
	db #e2,#05,#3f,#d2,#e2,#01,#41,#d1
	db #e2,#05,#41,#d2,#e2,#01,#41,#d1
	db #e2,#05,#43,#d2,#e2,#01,#44,#d1
	db #e2,#05,#44,#d2,#e2,#01,#43,#d1
	db #e2,#05,#41,#d2,#e2,#01,#41,#d1
	db #e2,#05,#44,#d2,#e2,#01,#41,#d1
	db #e2,#05,#3f,#d2,#e2,#01,#3f,#d1
	db #e2,#05,#3e,#d2,#e2,#01,#3c,#d1
	db #e2,#05,#3c,#d2,#e2,#01,#3f,#d1
	db #e2,#05,#43,#ff,#e0,#02,#a0,#d6
	db #e1,#03,#89,#30,#2b,#ff,#e0,#02
	db #a0,#d2,#e2,#01,#82,#48,#d1,#e2
	db #05,#48,#d2,#e2,#01,#46,#d1,#e2
	db #05,#44,#d2,#e2,#01,#44,#d1,#e2
	db #05,#48,#d2,#e2,#01,#44,#d1,#e2
	db #05,#46,#d2,#e2,#01,#46,#d1,#e2
	db #05,#43,#d2,#e2,#01,#3f,#d1,#e2
	db #05,#3f,#d2,#e2,#01,#41,#d1,#e2
	db #05,#43,#d2,#e2,#01,#44,#d1,#e2
	db #05,#44,#d2,#e2,#01,#43,#d1,#e2
	db #05,#43,#d2,#e2,#01,#41,#d1,#e2
	db #05,#41,#d2,#e2,#01,#44,#d1,#e2
	db #05,#41,#d2,#e2,#01,#43,#d1,#e2
	db #05,#43,#d2,#e2,#01,#41,#d1,#e2
	db #05,#43,#d2,#e2,#01,#43,#d1,#e2
	db #05,#43,#ff,#e0,#10,#a0,#d1,#e2
	db #05,#82,#3e,#37,#36,#37,#3f,#3e
	db #3c,#33,#32,#33,#3e,#3c,#3a,#33
	db #32,#33,#3c,#3a,#38,#35,#34,#35
	db #3a,#38,#ff,#e0,#00,#a0,#d6,#e1
	db #03,#85,#2b,#37,#d1,#e2,#05,#82
	db #1f,#21,#23,#24,#26,#27,#d6,#e1
	db #03,#8b,#30,#c1,#e1,#02,#89,#30
	db #c0,#87,#30,#85,#30,#e3,#01,#42
	db #c6,#e2,#00,#00,#a0,#c1,#e1,#02
	db #89,#30,#c0,#85,#30,#87,#30,#e3
	db #01,#42,#c6,#e2,#00,#85,#00,#ff
	db #e0,#02,#a0,#c1,#e1,#02,#89,#30
	db #c0,#87,#30,#85,#30,#e3,#01,#42
	db #c6,#e2,#00,#00,#a0,#c1,#e1,#02
	db #89,#30,#c0,#85,#30,#87,#30,#e3
	db #01,#42,#c6,#e2,#00,#85,#00,#ff
	db #e0,#00,#a0,#c6,#e1,#05,#82,#3e
	db #d2,#e2,#01,#3e,#d1,#e2,#05,#3e
	db #3c,#3b,#39,#c6,#85,#41,#d2,#e2
	db #01,#82,#41,#d1,#e2,#05,#40,#3e
	db #c6,#85,#40,#d2,#e2,#01,#82,#40
	db #d1,#e2,#05,#3e,#3c,#c6,#85,#41
	db #d2,#e2,#01,#82,#41,#d1,#e2,#05
	db #40,#3c,#ff,#e0,#0e,#a0,#c9,#e2
	db #01,#82,#2b,#27,#24,#27,#2b,#27
	db #2c,#29,#24,#29,#2c,#29,#30,#2b
	db #27,#2b,#30,#2b,#30,#2c,#29,#2c
	db #30,#2c,#ff,#e0,#10,#a0,#c9,#e2
	db #01,#82,#2b,#27,#24,#27,#2b,#27
	db #2c,#29,#24,#29,#2c,#29,#30,#2b
	db #27,#2b,#30,#2b,#30,#2c,#29,#2c
	db #30,#2c,#ff,#e0,#10,#a0,#d2,#e2
	db #01,#82,#30,#d1,#e2,#05,#3c,#d2
	db #e2,#01,#37,#d1,#e2,#05,#33,#d2
	db #e2,#01,#32,#d1,#e2,#05,#30,#32
	db #3e,#37,#35,#33,#32,#33,#3f,#37
	db #33,#35,#37,#38,#3f,#3c,#3e,#3f
	db #3c,#ff,#e0,#00,#a0,#c9,#e2,#01
	db #82,#3b,#37,#34,#37,#3b,#37,#3c
	db #39,#36,#37,#3b,#39,#3b,#c0,#3b
	db #3b,#e3,#01,#42,#c6,#e2,#00,#85
	db #00,#a0,#c1,#e1,#02,#89,#24,#ff
	db #e0,#00,#a0,#d6,#e1,#03,#8b,#2f
	db #ff,#e0,#00,#a0,#d6,#e1,#03,#8b
	db #3c,#ff,#e0,#00,#a0,#c9,#e2,#01
	db #82,#27,#24,#1f,#24,#27,#24,#29
	db #26,#1f,#26,#29,#26,#2b,#27,#24
	db #27,#2b,#27,#2c,#29,#24,#29,#2c
	db #29,#ff,#e0,#00,#a0,#c9,#e2,#01
	db #82,#2b,#26,#1f,#26,#2b,#29,#27
	db #24,#1f,#24,#29,#27,#27,#20,#1f
	db #20,#2b,#27,#29,#22,#21,#22,#2e
	db #2c,#ff,#e0,#0c,#a0,#c9,#e2,#01
	db #82,#27,#24,#1f,#24,#27,#24,#29
	db #26,#1f,#26,#29,#26,#2b,#27,#24
	db #27,#2b,#27,#2c,#29,#24,#29,#2c
	db #29,#ff,#e0,#00,#a0,#c9,#e2,#01
	db #82,#2b,#1f,#2b,#1f,#29,#1f,#27
	db #20,#27,#20,#26,#20,#24,#1b,#24
	db #1b,#22,#1b,#24,#1f,#24,#1f,#26
	db #1f,#ff,#e0,#00,#a0,#c7,#e1,#05
	db #82,#3c,#3a,#39,#37,#33,#32,#85
	db #3c,#82,#37,#33,#30,#85,#3f,#82
	db #37,#33,#30,#85,#3e,#82,#37,#33
	db #37,#ff,#e0,#00,#a0,#c7,#e1,#05
	db #82,#3c,#3a,#39,#37,#33,#32,#85
	db #3c,#82,#37,#33,#30,#85,#3f,#82
	db #37,#33,#30,#85,#3e,#c9,#e2,#01
	db #82,#37,#38,#3a,#ff,#e0,#f6,#a0
	db #c7,#e1,#05,#82,#3f,#3c,#37,#3c
	db #3f,#3c,#3f,#41,#3e,#37,#3e,#41
	db #3e,#41,#44,#41,#3c,#41,#44,#41
	db #44,#43,#3f,#3c,#3f,#43,#3f,#43
	db #ff,#e0,#07,#a0,#c1,#e1,#08,#89
	db #3c,#84,#3c,#82,#3c,#84,#3c,#82
	db #3c,#84,#3c,#82,#3c,#3c,#84,#3c
	db #ff,#e0,#00,#a0,#c7,#e1,#05,#82
	db #37,#33,#30,#33,#37,#30,#38,#30
	db #33,#30,#33,#30,#3a,#30,#33,#30
	db #37,#30,#38,#30,#33,#30,#38,#30
	db #ff,#e0,#0c,#a0,#c7,#e1,#05,#82
	db #2b,#26,#1f,#26,#2b,#29,#27,#24
	db #1f,#24,#29,#27,#27,#20,#1f,#20
	db #2b,#27,#29,#22,#21,#22,#2e,#2c
	db #ff,#e0,#02,#a0,#c7,#e1,#05,#82
	db #38,#33,#30,#33,#38,#33,#38,#3a
	db #37,#33,#37,#3a,#37,#3a,#30,#38
	db #35,#38,#3c,#38,#3c,#3e,#3b,#37
	db #3b,#3e,#3b,#3e,#ff,#e0,#00,#a0
	db #d6,#e1,#03,#85,#24,#30,#c1,#e1
	db #02,#82,#43,#41,#40,#3e,#3c,#3b
	db #d6,#e1,#03,#8b,#3b,#c1,#e1,#02
	db #89,#3b,#c0,#87,#3b,#85,#3b,#e3
	db #01,#42,#c6,#e2,#00,#00,#a0,#c1
	db #e1,#02,#89,#3c,#c0,#87,#3c,#85
	db #3c,#e3,#01,#42,#c6,#e2,#00,#00
	db #ff,#e0,#02,#a0,#c1,#e1,#02,#89
	db #3b,#c0,#87,#3b,#85,#3b,#e3,#01
	db #42,#c6,#e2,#00,#00,#a0,#c1,#e1
	db #02,#89,#3c,#c0,#87,#3c,#85,#3c
	db #e3,#01,#42,#c6,#e2,#00,#00,#ff
	db #e0,#0e,#a0,#c9,#e2,#01,#82,#27
	db #24,#1f,#24,#27,#24,#29,#26,#1f
	db #26,#29,#26,#2b,#27,#24,#27,#2b
	db #27,#2c,#29,#24,#29,#2c,#29,#ff
	db #e0,#10,#a0,#c7,#e1,#05,#82,#2b
	db #26,#1f,#26,#2b,#29,#27,#24,#1f
	db #24,#29,#27,#27,#20,#1f,#20,#2b
	db #27,#29,#22,#21,#22,#2e,#2c,#ff
	db #e0,#10,#a0,#c7,#e1,#05,#82,#27
	db #24,#1f,#24,#27,#24,#29,#26,#1f
	db #26,#29,#26,#2b,#27,#24,#27,#2b
	db #27,#2c,#29,#24,#29,#2c,#29,#ff
	db #e0,#00,#a0,#c9,#e2,#01,#82,#40
	db #3b,#37,#3b,#43,#40,#42,#3b,#3a
	db #3b,#43,#42,#40,#c0,#40,#40,#e3
	db #01,#42,#c6,#e2,#00,#85,#00,#a0
	db #c1,#e1,#02,#89,#30,#ff,#e0,#00
	db #a0,#d6,#e1,#03,#8b,#2e,#ff,#e0
	db #00,#a0,#d1,#e2,#00,#84,#18,#a5
	db #cd,#e1,#02,#82,#2c,#d2,#2c,#a0
	db #d1,#e2,#00,#18,#d2,#18,#d1,#84
	db #18,#a5,#cd,#e1,#02,#82,#2c,#d2
	db #2c,#a0,#d1,#e2,#00,#18,#d2,#18
	db #d1,#84,#18,#a5,#cd,#e1,#02,#82
	db #2c,#d2,#2c,#a0,#d1,#e2,#00,#18
	db #d2,#18,#d1,#84,#18,#a5,#cd,#e1
	db #02,#82,#2c,#d2,#2c,#a0,#d1,#e2
	db #00,#18,#d2,#18,#ff,#e0,#00,#a0
	db #d1,#e2,#00,#82,#1f,#d2,#1f,#a5
	db #cd,#e1,#02,#2c,#d2,#2c,#a0,#d1
	db #e2,#00,#1f,#d2,#1f,#d1,#18,#d2
	db #18,#a5,#cd,#e1,#02,#2c,#d2,#2c
	db #a0,#d1,#e2,#00,#18,#d2,#18,#d1
	db #22,#d2,#22,#a5,#cd,#e1,#02,#2c
	db #d2,#2c,#a0,#d1,#e2,#00,#22,#d2
	db #22,#d1,#1b,#d2,#1b,#a5,#cd,#e1
	db #02,#2c,#d2,#2c,#a0,#d1,#e2,#00
	db #1b,#d2,#1b,#ff,#e0,#00,#a0,#d1
	db #e2,#00,#84,#18,#a5,#cd,#e1,#02
	db #82,#2c,#d2,#2c,#a0,#d1,#e2,#00
	db #18,#d2,#18,#d1,#84,#1a,#a5,#cd
	db #e1,#02,#82,#2c,#d2,#2c,#a0,#d1
	db #e2,#00,#1a,#d2,#1a,#d1,#84,#1b
	db #a5,#cd,#e1,#02,#82,#2c,#d2,#2c
	db #a0,#d1,#e2,#00,#1b,#d2,#1b,#d1
	db #84,#20,#a5,#cd,#e1,#02,#82,#2c
	db #d2,#2c,#a0,#d1,#e2,#00,#20,#d2
	db #20,#ff,#e0,#00,#a0,#d1,#e2,#00
	db #82,#1f,#d2,#1f,#a5,#cd,#e1,#02
	db #2c,#d2,#2c,#a0,#d1,#e2,#00,#1d
	db #1f,#20,#d2,#20,#a5,#cd,#e1,#02
	db #2c,#d2,#2c,#a0,#d1,#e2,#00,#1f
	db #20,#22,#d2,#22,#a5,#cd,#e1,#02
	db #2c,#d2,#2c,#a0,#d1,#e2,#00,#1b
	db #22,#24,#d2,#24,#a5,#cd,#e1,#02
	db #2c,#d2,#2c,#a0,#d1,#e2,#00,#22
	db #20,#ff,#e0,#00,#a0,#d1,#e2,#05
	db #82,#18,#24,#a5,#cd,#e1,#02,#2c
	db #d2,#2c,#a0,#d1,#e2,#05,#24,#18
	db #1a,#26,#a5,#cd,#e1,#02,#2c,#d2
	db #2c,#a0,#d1,#e2,#05,#26,#1a,#1b
	db #27,#a5,#cd,#e1,#02,#2c,#d2,#2c
	db #a0,#d1,#e2,#05,#27,#1b,#20,#2c
	db #a5,#cd,#e1,#02,#2c,#d2,#2c,#a0
	db #d1,#e2,#05,#2c,#20,#ff,#e0,#00
	db #a0,#d2,#e2,#00,#82,#1f,#1f,#a5
	db #cd,#e1,#02,#2c,#d2,#2c,#a0,#d1
	db #e2,#00,#1f,#1d,#1b,#1b,#a5,#cd
	db #e1,#02,#2c,#d2,#2c,#a0,#d1,#e2
	db #00,#1d,#1b,#20,#20,#a5,#cd,#e1
	db #02,#2c,#d2,#2c,#a0,#d1,#e2,#00
	db #22,#20,#1f,#1f,#a5,#cd,#e1,#02
	db #2c,#d2,#2c,#a0,#d1,#e2,#00,#1f
	db #1f,#ff,#e0,#00,#a0,#c1,#e1,#0a
	db #82,#18,#d1,#e2,#05,#18,#d2,#e2
	db #01,#18,#d1,#e2,#05,#18,#a5,#cd
	db #e1,#02,#2c,#d2,#2c,#a0,#c1,#e1
	db #0a,#20,#d1,#e2,#05,#20,#d2,#e2
	db #01,#20,#d1,#e2,#05,#20,#a5,#cd
	db #e1,#02,#2c,#d2,#2c,#a0,#c1,#e1
	db #0a,#21,#d1,#e2,#05,#21,#d2,#e2
	db #01,#21,#d1,#e2,#05,#21,#a5,#cd
	db #e1,#02,#2c,#d2,#2c,#a0,#c1,#e1
	db #0a,#20,#d1,#e2,#05,#20,#d2,#e2
	db #01,#20,#d1,#e2,#05,#20,#a5,#cd
	db #e1,#02,#2c,#d2,#2c,#ff,#e0,#00
	db #a0,#d6,#e1,#03,#84,#24,#c1,#e1
	db #02,#82,#24,#a2,#d0,#e2,#00,#00
	db #a5,#cd,#e1,#02,#2c,#d2,#2c,#a0
	db #cd,#e1,#04,#42,#d2,#e2,#01,#43
	db #a2,#d1,#e2,#03,#5b,#4f,#a5,#cd
	db #e1,#02,#2c,#d2,#2c,#ff,#e0,#02
	db #a0,#d2,#e2,#00,#82,#18,#a1,#cf
	db #00,#a0,#d1,#24,#a2,#d0,#00,#a0
	db #cd,#1f,#1b,#a2,#d0,#00,#a0,#d2
	db #1d,#a1,#cf,#00,#a0,#d1,#1d,#a2
	db #d0,#00,#a0,#cd,#29,#24,#d1,#1d
	db #d2,#1f,#a1,#cf,#00,#a0,#d1,#2b
	db #a2,#d0,#00,#a0,#cd,#26,#23,#a2
	db #d0,#00,#a0,#d2,#24,#a1,#cf,#00
	db #a0,#d1,#24,#a2,#d0,#00,#a0,#cd
	db #1f,#1b,#a2,#d0,#00,#ff,#e0,#00
	db #a0,#c1,#e1,#0a,#82,#18,#a5,#cd
	db #e1,#02,#38,#d2,#37,#a2,#d0,#e2
	db #00,#00,#a1,#cf,#00,#a5,#cd,#e1
	db #02,#2c,#d2,#32,#30,#2f,#2d,#2b
	db #29,#a0,#cd,#e2,#00,#18,#d1,#18
	db #a5,#cd,#e1,#02,#2c,#d2,#2c,#a0
	db #cd,#e2,#00,#18,#d1,#18,#cd,#18
	db #d1,#18,#a5,#cd,#e1,#02,#2c,#d2
	db #2c,#a0,#cd,#e2,#00,#18,#d1,#18
	db #c1,#e1,#0a,#18,#a5,#cd,#e1,#02
	db #38,#d2,#37,#a2,#d0,#e2,#00,#00
	db #a1,#cf,#00,#a5,#cd,#e1,#02,#2c
	db #d2,#32,#30,#2f,#2d,#2b,#29,#ff
	db #e0,#02,#a0,#d6,#e1,#03,#84,#24
	db #cd,#e1,#04,#82,#3e,#d2,#e2,#01
	db #3e,#a2,#d1,#e2,#03,#56,#4a,#a5
	db #cd,#e1,#02,#2c,#a0,#d6,#e1,#03
	db #84,#24,#cd,#e1,#04,#82,#42,#d2
	db #e2,#01,#43,#a2,#d1,#e2,#03,#5b
	db #4f,#a5,#cd,#e1,#02,#2c,#a0,#d6
	db #e1,#03,#84,#24,#cd,#e1,#04,#82
	db #3e,#d2,#e2,#01,#3e,#a2,#d1,#e2
	db #03,#56,#4a,#a5,#cd,#e1,#02,#2c
	db #a0,#d6,#e1,#03,#84,#24,#cd,#e1
	db #04,#82,#42,#d2,#e2,#01,#43,#a2
	db #d1,#e2,#03,#5b,#4f,#a5,#cd,#e1
	db #02,#2c,#ff,#e0,#02,#a0,#c1,#e1
	db #0a,#82,#18,#d1,#e2,#05,#18,#d2
	db #e2,#01,#18,#d1,#e2,#05,#18,#a5
	db #cd,#e1,#02,#2c,#d2,#2c,#a0,#c1
	db #e1,#0a,#20,#d1,#e2,#05,#20,#d2
	db #e2,#01,#20,#d1,#e2,#05,#20,#a5
	db #cd,#e1,#02,#2c,#d2,#2c,#a0,#c1
	db #e1,#0a,#21,#d1,#e2,#05,#21,#d2
	db #e2,#01,#21,#d1,#e2,#05,#21,#a5
	db #cd,#e1,#02,#2c,#d2,#2c,#a0,#c1
	db #e1,#0a,#20,#d1,#e2,#05,#20,#d2
	db #e2,#01,#20,#d1,#e2,#05,#20,#a5
	db #cd,#e1,#02,#2c,#d2,#2c,#ff,#e0
	db #02,#a0,#d1,#e2,#05,#82,#18,#24
	db #a5,#cd,#e1,#02,#2c,#d2,#2c,#a0
	db #d1,#e2,#05,#24,#18,#1a,#26,#a5
	db #cd,#e1,#02,#2c,#d2,#2c,#a0,#d1
	db #e2,#05,#26,#1a,#1b,#27,#a5,#cd
	db #e1,#02,#2c,#d2,#2c,#a0,#d1,#e2
	db #05,#27,#1b,#20,#2c,#a5,#cd,#e1
	db #02,#2c,#d2,#2c,#a0,#d1,#e2,#05
	db #2c,#20,#ff,#e0,#04,#a0,#d1,#e2
	db #00,#82,#1f,#d2,#1f,#a5,#cd,#e1
	db #02,#2c,#d2,#2c,#a0,#d1,#e2,#00
	db #1d,#1f,#20,#d2,#20,#a5,#cd,#e1
	db #02,#2c,#d2,#2c,#a0,#d1,#e2,#00
	db #1f,#20,#22,#d2,#22,#a5,#cd,#e1
	db #02,#2c,#d2,#2c,#a0,#d1,#e2,#00
	db #1b,#22,#24,#d2,#24,#a5,#cd,#e1
	db #02,#2c,#d2,#2c,#a0,#d1,#e2,#00
	db #22,#20,#ff,#e0,#04,#a0,#d1,#e2
	db #05,#82,#18,#24,#a5,#cd,#e1,#02
	db #2c,#d2,#2c,#a0,#d1,#e2,#05,#24
	db #18,#1a,#26,#a5,#cd,#e1,#02,#2c
	db #d2,#2c,#a0,#d1,#e2,#05,#26,#1a
	db #1b,#27,#a5,#cd,#e1,#02,#2c,#d2
	db #2c,#a0,#d1,#e2,#05,#27,#1b,#20
	db #2c,#a5,#cd,#e1,#02,#2c,#d2,#2c
	db #a0,#d1,#e2,#05,#2c,#20,#ff,#e0
	db #00,#a0,#d1,#e2,#00,#82,#1c,#d2
	db #1c,#a5,#cd,#e1,#02,#2c,#d2,#2c
	db #a0,#d1,#e2,#00,#1c,#d2,#1c,#d1
	db #1e,#d2,#1e,#a5,#cd,#e1,#02,#2c
	db #d2,#2c,#a0,#d1,#e2,#00,#1f,#d2
	db #1e,#1c,#d1,#1c,#d2,#1c,#d1,#1c
	db #d2,#1c,#d1,#1c,#c1,#e1,#02,#89
	db #1c,#ff,#0f,#00,#0f,#00,#0f,#00
	db #0f,#00,#01,#0f,#83,#ad,#01,#00
	db #01,#00,#01,#0d,#83,#a7,#01,#00
	db #01,#00,#01,#0b,#83,#a1,#01,#00
	db #01,#00,#01,#09,#83,#9b,#01,#00
	db #01,#00,#01,#07,#83,#95,#01,#00
	db #01,#00,#82,#1e,#87,#87,#89,#89
	db #01,#f3,#01,#0a,#01,#00,#03,#00
	db #01,#00,#85,#46,#01,#00,#03,#00
	db #01,#00,#01,#0d,#01,#00,#03,#00
	db #01,#00,#01,#0e,#01,#00,#03,#00
	db #87,#e2,#01,#0e,#01,#00,#82,#9c
	db #62,#00,#01,#0f,#07,#00,#84,#bc
	db #01,#00,#01,#0f,#04,#ff,#08,#00
	db #88,#d3,#01,#0b,#02,#00,#01,#f5
	db #01,#00,#01,#0d,#02,#00,#01,#f3
	db #01,#00,#01,#0f,#02,#00,#01,#f1
	db #01,#00,#01,#0f,#0f,#ff,#01,#00
	db #01,#00,#01,#0d,#0d,#ff,#01,#00
	db #01,#00,#01,#0b,#0b,#ff,#01,#00
	db #01,#00,#01,#09,#09,#ff,#01,#00
	db #01,#00,#01,#0e,#01,#00,#01,#f2
	db #01,#00,#01,#0f,#8c,#d4,#63,#00
	db #8d,#5b,#82,#14,#0c,#00,#01,#00
	db #82,#94,#01,#0d,#04,#ff,#08,#00
	db #8a,#d3,#01,#0b,#04,#ff,#08,#00
	db #8c,#d3,#01,#09,#04,#ff,#08,#00
	db #95,#d3,#01,#07,#04,#ff,#08,#00
	db #9c,#d3,#01,#0d,#03,#00,#08,#ff
	db #05,#00,#01,#0f,#09,#ff,#09,#01
	db #0f,#ff,#01,#0f,#02,#00,#0c,#ff
	db #0c,#01,#01,#0d,#0c,#ff,#0d,#01
	db #0e,#ff,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#84,#08,#82,#88
	db #84,#08,#01,#00,#01,#3c,#03,#ec
	db #01,#ef,#86,#86,#01,#f1,#01,#2b
	db #01,#e5,#88,#08,#82,#04,#04,#fe
	db #03,#02,#08,#00,#84,#08,#82,#88
	db #84,#08,#85,#0a,#03,#fd,#85,#0a
	db #01,#05,#01,#00,#01,#63,#03,#e2
	db #01,#d1,#01,#04,#01,#38,#03,#ec
	db #01,#f1,#03,#00,#04,#02,#04,#fc
	db #04,#02,#82,#04,#04,#02,#04,#fc
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
	db #a0,#ed,#a0
;	org #a31f
;	call #8906
;.la322
;	call #8988
;	halt
;	halt
;	halt
;	ld a,#2f
;	call #bb1e
;	jp z,la322
;
.play_music		; added by Megachur
;
	call real_play_music
	jp real_play_music
;
.music_info
	db "Generation CPC Issue 2 - Edito (1990)(Public Domain)()",0
	db "Music Pro",0

	read "music_end.asm"
