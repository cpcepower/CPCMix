; Music of Fractale SlideShow 2 - Music 2 (1992)(Nephilim)(Charles Callet)(Music Pro)
; Ripped by Megachur the 30/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FRACS2M2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 30
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
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
.play_music
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
	ld l,(ix+#05)	; reset music
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
	dw l8b9d,l8bf5,l8bf1,l8ba5
.l8b9d
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l8c73
.l8ba5
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
.l8bf1
	ld a,#02
	jr l8bf7
.l8bf5
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
	db #ff,#18,#40,#bf,#00,#00,#00,#ff
.l8e4c equ $ + 1
.l8e4b
	db #ff,#00
	dw l8e51,l8e51
.l8e52 equ $ + 1
.l8e51
	db #ff,#ff
.l8e57 equ $ + 4
.l8e53
	dw l9216,l92ca,l920f
.l8e59
	db #02,#04,#02,#01,#00,#00,#00,#00
	db #0f,#ff,#01,#02,#05,#ff,#00,#08
	db #00,#00,#00,#ff,#03,#03,#21,#ff
	db #0e,#0e,#01,#00,#00,#00,#00,#00
	db #ff,#02,#02,#04,#ff,#00,#04,#00
	db #00,#01,#ff,#02,#02,#04,#ff,#5f
.l8e8d equ $ + 4
	db #00,#5f,#00,#02,#ff,#31,#92,#05
.l8e94 equ $ + 3
.l8e92 equ $ + 1
	db #94,#2a,#92,#02,#04,#02,#01,#00
	db #00,#00,#00,#0f,#ff,#01,#02,#05
	db #ff,#00,#08,#00,#00,#00,#ff,#03
	db #03,#21,#ff,#0e,#02,#01,#00,#00
	db #00,#00,#00,#ff,#02,#02,#04,#ff
	db #00,#04,#00,#00,#01,#ff,#02,#02
.l8ec8 equ $ + 7
	db #04,#ff,#fe,#00,#fe,#00,#02,#ff
.l8ecf equ $ + 6
.l8ecd equ $ + 4
	db #48,#92,#0a,#95,#41,#92,#02,#04
	db #02,#01,#00,#00,#00,#00,#0f,#00
	db #0c,#00,#00,#ff,#00,#01,#00,#00
.l8ee7 equ $ + 6
	db #00,#00,#01,#00,#00,#00,#0c,#00
.l8eef equ $ + 6
	db #00,#ff,#02,#06,#02,#01,#00,#01
	db #00,#00,#0f,#00,#01,#00,#00,#d5
	db #00,#01,#00,#00,#1b,#47,#00,#47
	db #00,#02,#00,#01,#00,#00,#0f,#ff
	db #02,#02,#08,#ff,#00,#08,#00,#00
	db #00,#ff,#03,#03,#21,#ff,#00,#01
	db #00,#00,#0f,#ff,#02,#02,#08,#ff
	db #00,#08,#00,#00,#00,#ff,#03,#03
.l8f2b equ $ + 2
	db #21,#ff,#00,#01,#00,#00,#0f,#00
	db #0f,#00,#00,#ff,#00,#01,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#04
	db #00,#00,#00,#ff,#02,#02,#04,#ff
	db #00,#04,#00,#00,#01,#ff,#02,#02
	db #04,#ff,#00,#04,#00,#00,#00,#ff
	db #02,#02,#04,#ff,#00,#04,#00,#00
	db #01,#ff,#02,#02,#04,#ff,#ff,#06
	db #06,#06,#01,#00,#01,#00,#00,#0f
	db #00,#01,#00,#00,#d5,#00,#01,#00
.l8f7b equ $ + 2
	db #00,#1b,#02
.l8f80 equ $ + 4
.l8f7e equ $ + 2
.l8f7c
	dw l925f,l9627,l9727
.l8f89 equ $ + 7
.l8f88 equ $ + 6
.l8f87 equ $ + 5
.l8f86 equ $ + 4
.l8f85 equ $ + 3
.l8f84 equ $ + 2
.l8f83 equ $ + 1
.l8f82
	db #02,#00,#00,#01,#01,#02,#01,#01
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
;
;.stop_music_interrupt
.l90df
;
	di
	ld a,#00
	ld (l8f83),a
	call l911e
	call #bca7
	ei
	ret
;
;.init_music_interrupt
.l90ed
;
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
.l910c
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
	di
	ex af,af'
.l911e equ $ + 1
	jr c,l910c
	ld e,e
	add hl,sp
	nop
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
	db #04,#30,#09,#09,#20,#20,#3b,#20
	db #44,#32,#20,#3a,#20,#64,#75,#72
	db #65,#65,#20,#32,#20,#65,#6e,#76
	db #65,#6c,#6f,#70,#70,#65,#0d,#09
	db #64,#65,#66,#62,#20,#30,#09,#09
	db #20,#20,#00,#8a,#df,#df,#8a,#00
	db #aa,#d3,#f3,#00,#51,#15,#3f,#4e
	db #05,#0f,#8f,#0a,#22,#23,#3b,#16
	db #13,#22,#22,#00,#45,#0a,#0e,#1e
	db #1e,#00,#05,#0d,#50,#a0,#00,#4e
	db #04,#f0,#4e,#05,#c0,#c1,#c1,#c2
	db #c0,#c0,#d0,#4e,#05,#00,#05,#0a
	db #14,#28,#4f,#4e,#05,#00,#54,#54
	db #00,#41,#45,#e3,#82,#41,#c3,#82
	db #51,#a2,#a2,#f3,#00,#e3,#c3,#d3
	db #c3,#f3,#41,#c3,#b6,#3f,#3f,#4e
	db #05,#0f,#3d,#00,#2a,#22,#22,#03
	db #01,#17,#13,#22,#00,#45,#4e,#06
	db #00,#f0,#00,#50,#f0,#e0,#c0,#c0
	db #c1,#c1,#c2,#4e,#06,#c0,#a0,#0c
	db #00,#4f,#1e,#04,#05,#00,#0f,#00
.l9205 equ $ + 7
.l9203 equ $ + 5
.l9202 equ $ + 4
.l9201 equ $ + 3
.l9200 equ $ + 2
	db #3c,#1e,#06,#17,#02,#5e,#00,#26
.l920d equ $ + 7
.l920b equ $ + 5
.l9209 equ $ + 3
.l9207 equ $ + 1
	db #04,#26,#05,#0e,#00,#29,#00,#40
.l920f equ $ + 1
	db #00,#01,#01,#00,#00,#00,#00,#02
.l9216
	db #02,#02,#02,#03,#03,#05,#05,#06
	db #08,#00,#00,#00,#00,#07,#07,#07
	db #07,#07,#09,#ff,#0b,#0b,#0a,#0a
	db #0a,#0a,#0d,#0d,#0e,#0f,#0f,#10
	db #10,#12,#12,#0a,#0a,#11,#11,#11
	db #11,#0b,#ff,#15,#13,#15,#13,#13
	db #13,#13,#13,#13,#14,#14,#14,#14
	db #14,#14,#14,#14,#14,#14,#14,#14
	db #13,#13,#16,#16,#16,#16,#16,#16
.l925f equ $ + 1
	db #ff,#8e,#00,#a6,#00,#ba,#00,#d2
	db #00,#ea,#00,#fa,#00,#14,#01,#41
	db #01,#57,#01,#84,#01,#9a,#01,#c8
	db #01,#d0,#01,#f0,#01,#1e,#02,#4c
	db #02,#74,#02,#a2,#02,#ba,#02,#e8
	db #02,#72,#03,#b2,#03,#06,#04,#9e
	db #98,#e0,#0c,#a0,#c6,#e2,#05,#84
	db #26,#82,#2b,#2f,#84,#32,#82,#30
	db #2f,#2d,#2b,#2d,#2f,#84,#2d,#2a
	db #ff,#e0,#00,#a0,#c0,#8a,#30,#c1
	db #e1,#02,#32,#c0,#32,#e3,#01,#42
	db #ca,#e2,#00,#32,#ff,#e0,#0e,#a0
	db #c6,#e2,#05,#84,#26,#82,#2b,#2f
.l92ca equ $ + 4
	db #84,#32,#82,#30,#2f,#2d,#2b,#2d
	db #2f,#84,#2d,#2a,#ff,#e0,#11,#a0
	db #c6,#e2,#05,#84,#26,#82,#2b,#2f
	db #84,#32,#82,#30,#2f,#2d,#2b,#2d
	db #2f,#84,#2d,#2a,#ff,#e0,#00,#a0
	db #cd,#e1,#06,#82,#1a,#1a,#1a,#18
	db #18,#1a,#1f,#1f,#ff,#e0,#00,#a0
	db #cd,#e1,#04,#86,#37,#3e,#84,#3c
	db #3b,#39,#3b,#34,#36,#37,#39,#3b
	db #82,#3c,#85,#39,#84,#36,#ff,#e0
	db #fe,#a0,#cd,#e2,#04,#86,#37,#3e
	db #84,#3c,#3b,#39,#3b,#34,#36,#37
	db #39,#3b,#82,#3c,#85,#39,#84,#36
	db #86,#37,#3e,#84,#3c,#3b,#39,#3b
	db #34,#36,#37,#39,#3b,#82,#3c,#85
	db #39,#84,#37,#ff,#e0,#00,#a0,#c9
	db #e2,#05,#84,#2b,#82,#2b,#84,#32
	db #82,#2b,#32,#2b,#84,#32,#30,#2f
	db #2d,#ff,#e0,#fb,#a0,#cd,#e2,#04
	db #86,#37,#3e,#84,#3c,#3b,#39,#3b
	db #34,#36,#37,#39,#3b,#82,#3c,#85
	db #39,#84,#36,#86,#37,#3e,#84,#3c
	db #3b,#39,#3b,#34,#36,#37,#39,#3b
	db #82,#3c,#85,#39,#84,#37,#ff,#e0
	db #00,#a0,#c9,#e2,#05,#84,#2b,#82
	db #30,#84,#2f,#82,#2b,#2d,#2a,#c7
	db #e1,#04,#88,#2b,#ff,#e0,#00,#a0
	db #c6,#e2,#05,#82,#1f,#2b,#1f,#2b
	db #c1,#e2,#00,#2b,#c6,#e2,#05,#1f
	db #2b,#1f,#1c,#28,#1c,#28,#28,#1c
	db #28,#1c,#18,#24,#18,#24,#24,#18
	db #24,#18,#1a,#26,#1a,#26,#26,#1a
	db #26,#1a,#ff,#e0,#00,#a0,#c0,#8a
	db #30,#30,#ff,#e0,#00,#a0,#c6,#e2
	db #05,#82,#39,#3b,#3c,#3b,#39,#3b
	db #35,#37,#3e,#3c,#3b,#39,#32,#37
	db #35,#32,#34,#36,#37,#39,#3e,#3c
	db #3b,#39,#ff,#e0,#02,#a0,#c6,#e2
	db #05,#82,#1f,#2b,#1f,#2b,#c1,#e2
	db #00,#2b,#c6,#e2,#05,#1f,#2b,#1f
	db #1c,#28,#1c,#28,#28,#1c,#28,#1c
	db #18,#24,#18,#24,#24,#18,#24,#18
	db #1a,#26,#1a,#26,#26,#1a,#26,#1a
	db #ff,#e0,#05,#a0,#c6,#e2,#05,#82
	db #1f,#2b,#1f,#2b,#c1,#e2,#00,#2b
	db #c6,#e2,#05,#1f,#2b,#1f,#1c,#28
	db #1c,#28,#28,#1c,#28,#1c,#18,#24
	db #18,#24,#24,#18,#24,#18,#1a,#26
	db #1a,#26,#26,#1a,#26,#1a,#ff,#e0
	db #00,#a0,#c1,#e2,#00,#82,#1f,#26
	db #1f,#26,#1f,#26,#1f,#26,#1d,#18
	db #1d,#24,#1d,#24,#1d,#24,#1a,#21
	db #1a,#21,#1a,#21,#1a,#21,#21,#26
	db #21,#26,#21,#26,#21,#26,#ff,#e0
	db #fe,#a0,#c6,#e2,#05,#82,#1f,#2b
	db #1f,#2b,#c1,#e2,#00,#2b,#c6,#e2
	db #05,#1f,#2b,#1f,#1c,#28,#1c,#28
	db #28,#1c,#28,#1c,#18,#24,#18,#24
	db #24,#18,#24,#18,#1a,#26,#1a,#26
	db #26,#1a,#26,#1a,#ff,#e0,#00,#a0
	db #cd,#e1,#06,#82,#1f,#1f,#1f,#26
	db #1f,#1f,#1f,#1f,#1c,#1c,#1c,#23
	db #1c,#1c,#1c,#1c,#ff,#e0,#fb,#a0
	db #c6,#e2,#05,#82,#1f,#2b,#1f,#2b
	db #c1,#e2,#00,#2b,#c6,#e2,#05,#1f
	db #2b,#1f,#1c,#28,#1c,#28,#28,#1c
	db #28,#1c,#18,#24,#18,#24,#24,#18
	db #24,#18,#1a,#26,#1a,#26,#26,#1a
	db #26,#1a,#ff,#e0,#00,#a2,#d0,#e2
	db #00,#82,#00,#a1,#cf,#00,#a2,#d1
	db #e2,#03,#43,#a1,#cf,#e2,#00,#00
	db #a5,#d1,#e1,#02,#32,#d3,#32,#a2
	db #d1,#e2,#03,#43,#a1,#cf,#e2,#00
	db #00,#a2,#d0,#00,#a1,#cf,#00,#a2
	db #d1,#e2,#03,#43,#a1,#cf,#e2,#00
	db #00,#a5,#d1,#e1,#02,#32,#d3,#32
	db #a2,#d1,#e2,#03,#43,#a1,#cf,#e2
	db #00,#00,#a2,#d0,#00,#a1,#cf,#00
	db #a2,#d1,#e2,#03,#43,#a1,#cf,#e2
	db #00,#00,#a5,#d1,#e1,#02,#32,#d3
	db #32,#a2,#d1,#e2,#03,#43,#a1,#cf
	db #e2,#00,#00,#a2,#d0,#00,#a1,#cf
	db #00,#a2,#d1,#e2,#03,#43,#a1,#cf
	db #e2,#00,#00,#a2,#d1,#e2,#03,#43
	db #a5,#e1,#02,#32,#a2,#e2,#03,#43
	db #a5,#e1,#02,#32,#ff,#e0,#00,#a2
	db #d0,#e2,#00,#82,#00,#a1,#cf,#00
	db #a5,#d1,#e1,#02,#32,#d2,#32,#a2
	db #d0,#e2,#00,#00,#a1,#cf,#00,#a5
	db #d1,#e1,#02,#32,#d2,#32,#a2,#d0
	db #e2,#00,#00,#a1,#cf,#00,#a5,#d1
	db #e1,#02,#32,#d2,#32,#a2,#d0,#e2
	db #00,#00,#a1,#cf,#00,#a5,#d1,#e1
	db #02,#32,#d2,#32,#ff,#e0,#00,#a2
	db #d0,#e2,#00,#82,#00,#a1,#ce,#00
	db #00,#00,#a5,#d3,#e1,#02,#32,#a1
	db #ce,#e2,#00,#00,#00,#00,#a2,#d0
	db #00,#a1,#ce,#00,#00,#00,#a5,#d3
	db #e1,#02,#32,#a1,#ce,#e2,#00,#00
	db #00,#00,#a2,#d0,#00,#a1,#ce,#00
	db #00,#00,#a5,#d3,#e1,#02,#32,#a1
	db #ce,#e2,#00,#00,#00,#00,#a5,#d1
	db #e1,#02,#32,#a1,#c0,#00,#a5,#d1
	db #32,#32,#c0,#32,#d1,#32,#32,#32
	db #ff,#e0,#00,#a1,#cf,#e2,#00,#82
	db #00,#00,#00,#00,#a2,#d0,#00,#a1
	db #cf,#00,#00,#00,#00,#00,#00,#00
	db #a2,#d0,#00,#a1,#cf,#00,#00,#00
.l9627 equ $ + 1
	db #ff,#0f,#00,#0f,#00,#0f,#00,#0f
	db #00,#01,#0f,#83,#ad,#01,#00,#01
	db #00,#01,#0d,#0d,#ff,#01,#00,#01
	db #00,#01,#0b,#0b,#ff,#01,#00,#01
	db #00,#01,#09,#09,#ff,#01,#00,#01
	db #00,#01,#07,#07,#ff,#01,#00,#01
	db #00,#01,#0f,#82,#88,#08,#00,#83
	db #a1,#01,#0a,#01,#00,#03,#00,#84
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
.l9727 equ $ + 1
	db #ff,#01,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#84,#08,#82,#88,#84
	db #08,#01,#00,#01,#3c,#03,#ec,#01
	db #ef,#86,#86,#01,#f1,#01,#2b,#01
	db #e5,#88,#08,#82,#04,#04,#fe,#03
	db #02,#04,#00,#82,#04,#04,#ff,#82
	db #04,#85,#0a,#03,#fd,#85,#0a,#01
	db #05,#01,#00,#01,#63,#03,#e2,#01
	db #d1,#01,#04,#01,#38,#03,#ec,#01
	db #f1,#08,#00,#01,#01,#01,#fe,#01
	db #01,#82,#04,#04,#02,#04,#fc,#04
	db #02,#01,#00,#01,#00,#01,#01,#01
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
	db #ff,#01,#00,#01,#63,#02,#d8,#01
	db #d1,#06,#00,#01,#ff,#01,#00,#01
	db #01,#08,#00,#01,#01,#01,#fe,#01
	db #01,#08,#00,#01,#01,#01,#01,#01
	db #01,#01,#00,#01,#00,#01,#01,#01
	db #ff,#82,#37,#fe,#fd,#ca,#f9,#99
	db #e6,#07
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
; #a003
; call #8900	; init music
;
; #a09b
; call #8903	; play music
;
.music_info
	db "Fractale SlideShow 2 - Music 2 (1992)(Nephilim)(Charles Callet)",0
	db "Music Pro",0

	read "music_end.asm"
