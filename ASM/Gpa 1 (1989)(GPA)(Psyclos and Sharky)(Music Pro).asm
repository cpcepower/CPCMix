; Music of Gpa 1 (1989)(GPA)(Psyclos and Sharky)(Music Pro)
; Ripped by Megachur the 24/05/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GPA1DEMO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #8900

	read "music_header.asm"

	jp l90ed	; init music interrupt ?
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
	ld l,(ix+#05)		; reinit music
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
	db #ff,#18,#40,#bf,#00,#00,#00,#ff
.l8e52 equ $ + 7
.l8e4c equ $ + 1
.l8e4b
	db #ff,#00,#51,#8e,#51,#8e,#ff,#ff
.l8e59 equ $ + 6
.l8e57 equ $ + 4
.l8e53
	db #23,#92,#57,#93,#0f,#92,#08,#0c
	db #02,#01,#00,#00,#00,#00,#0f,#00
	db #03,#00,#00,#00,#00,#0f,#00,#00
	db #ff,#00,#01,#00,#00,#00,#0f,#00
	db #01,#00,#00,#00,#00,#fe,#ff,#01
	db #04,#05,#ff,#ff,#02,#02,#08,#01
	db #ff,#04,#04,#08,#ff,#7d,#00,#7f
.l8e92 equ $ + 7
.l8e8d equ $ + 2
	db #00,#02,#ff,#4d,#92,#dd,#95,#39
.l8e94 equ $ + 1
	db #92,#08,#0c,#02,#01,#00,#00,#00
	db #00,#0f,#00,#03,#00,#00,#00,#00
	db #0f,#00,#00,#ff,#00,#01,#00,#00
	db #00,#0f,#00,#01,#00,#00,#00,#00
	db #fe,#ff,#01,#04,#05,#ff,#ff,#02
	db #02,#08,#01,#ff,#04,#04,#08,#ff
.l8ec8 equ $ + 5
	db #f8,#02,#fa,#02,#02,#ff,#7c,#92
.l8ecf equ $ + 4
.l8ecd equ $ + 2
	db #36,#97,#65,#92,#02,#06,#01,#01
	db #00,#00,#00,#00,#0d,#00,#0a,#00
	db #00,#ff,#00,#01,#00,#00,#00,#00
.l8ee7 equ $ + 4
	db #01,#00,#00,#00,#0a,#05,#02,#00
.l8eef equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #c4,#00,#01,#00,#00,#14,#00,#01
	db #00,#00,#11,#51,#00,#65,#00,#01
	db #00,#01,#00,#00,#0f,#00,#06,#00
	db #00,#00,#00,#0f,#00,#00,#ff,#00
	db #01,#00,#00,#00,#00,#01,#00,#00
	db #0f,#00,#06,#00,#00,#00,#00,#0f
	db #00,#00,#ff,#00,#01,#00,#00,#00
.l8f2b
	db #00,#01,#00,#00,#0d,#00,#0d,#00
	db #00,#ff,#00,#01,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#01,#00,#00
	db #fe,#ff,#04,#04,#08,#ff,#ff,#02
	db #02,#08,#01,#ff,#04,#04,#08,#ff
	db #00,#01,#00,#00,#fe,#ff,#04,#04
	db #08,#ff,#ff,#02,#02,#08,#01,#ff
	db #04,#04,#08,#ff,#00,#01,#00,#00
	db #00,#00,#01,#00,#00,#c4,#00,#03
	db #00,#00,#14,#00,#01,#00,#00,#11
.l8f82 equ $ + 7
.l8f80 equ $ + 5
.l8f7e equ $ + 3
.l8f7c equ $ + 1
.l8f7b
	db #01,#9a,#92,#4d,#97,#4d,#98,#02
.l8f8a equ $ + 7
.l8f89 equ $ + 6
.l8f88 equ $ + 5
.l8f87 equ $ + 4
.l8f86 equ $ + 3
.l8f85 equ $ + 2
.l8f84 equ $ + 1
.l8f83
	db #0f,#00,#00,#00,#00,#00,#00,#00
	db #00
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
.l9081 equ $ + 1
.l9080
	db #00,#48,#04,#42,#04,#45,#20,#45
	db #80,#40,#02,#41,#01,#40,#04,#40
	db #01
	ld hl,l9081
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
	db #06,#30,#09,#09,#20,#20,#3b,#20
	db #44,#32,#20,#3a,#20,#64,#75,#72
	db #65,#65,#20,#32,#20,#65,#6e,#76
	db #65,#6c,#6f,#70,#70,#65,#0d,#09
	db #64,#65,#66,#62,#20,#30,#09,#09
	db #20,#20,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#06,#3a,#01,#99,#00,#4c
.l920d equ $ + 7
.l920b equ $ + 5
.l9209 equ $ + 3
.l9207 equ $ + 1
	db #05,#4c,#06,#0e,#00,#38,#00,#64
	db #00,#07,#07,#07,#07,#07,#00,#01
	db #02,#03,#04,#05,#06,#0a,#0b,#0c
	db #0c,#0d,#00,#01,#02,#03,#04,#05
	db #06,#04,#09,#0e,#0f,#10,#09,#0e
	db #0f,#03,#14,#11,#0c,#0c,#0c,#0c
	db #0c,#0c,#ff,#1c,#15,#16,#17,#18
	db #15,#16,#17,#18,#19,#1a,#1b,#19
	db #1f,#20,#21,#20,#22,#23,#24,#25
	db #26,#27,#28,#26,#29,#2a,#2b,#2c
	db #29,#2a,#2b,#25,#22,#22,#22,#2d
	db #20,#20,#20,#20,#20,#20,#ff,#2e
	db #2e,#2e,#2e,#2e,#2e,#2e,#2e,#2e
	db #2e,#2e,#2e,#2e,#32,#34,#33,#33
	db #36,#36,#36,#36,#36,#36,#36,#36
	db #36,#36,#36,#36,#36,#36,#36,#36
	db #36,#36,#36,#36,#36,#36,#36,#36
	db #36,#36,#36,#36,#35,#33,#33,#33
	db #33,#33,#33,#ff,#0f,#01,#27,#01
	db #3f,#01,#57,#01,#6f,#01,#87,#01
	db #9f,#01,#b7,#01,#cb,#01,#e6,#01
	db #f2,#01,#0a,#02,#1b,#02,#25,#02
	db #31,#02,#3d,#02,#49,#02,#55,#02
	db #72,#02,#79,#02,#80,#02,#99,#02
	db #ae,#02,#c3,#02,#d8,#02,#ed,#02
	db #02,#03,#17,#03,#2c,#03,#42,#03
	db #5b,#03,#6f,#03,#7f,#03,#89,#03
	db #95,#03,#ad,#03,#c5,#03,#dd,#03
	db #f5,#03,#0d,#04,#25,#04,#3d,#04
	db #49,#04,#55,#04,#61,#04,#6d,#04
	db #90,#04,#a6,#04,#ad,#04,#c3,#04
	db #dc,#04,#ee,#04,#f8,#04,#04,#05
	db #21,#05,#37,#05,#3e,#05,#45,#05
	db #c4,#99,#e0,#00,#a0,#d1,#e2,#01
	db #85,#36,#38,#39,#3d,#36,#38,#39
	db #3d,#36,#38,#39,#3d,#36,#38,#39
	db #3d,#ff,#e0,#00,#a0,#d1,#e2,#01
	db #85,#34,#36,#38,#3b,#34,#36,#38
	db #3b,#34,#36,#38,#3b,#34,#36,#38
	db #3b,#ff,#e0,#00,#a0,#d1,#e2,#01
	db #85,#32,#34,#36,#39,#32,#34,#36
	db #39,#32,#34,#36,#39,#32,#34,#36
	db #39,#ff,#e0,#00,#a0,#d1,#e2,#01
	db #85,#31,#36,#38,#3d,#31,#36,#38
	db #3d,#31,#35,#38,#3d,#31,#35,#38
	db #3d,#ff,#e0,#00,#a0,#d1,#e2,#01
	db #85,#39,#3b,#3d,#40,#39,#3b,#3d
	db #40,#39,#3b,#3d,#40,#39,#3b,#3d
	db #40,#ff,#e0,#00,#a0,#d1,#e2,#01
	db #85,#37,#3d,#3e,#40,#37,#3d,#3e
	db #40,#37,#3d,#3e,#40,#37,#3d,#3e
	db #40,#ff,#e0,#00,#a0,#d1,#e2,#01
	db #85,#32,#39,#3d,#3e,#32,#39,#3d
	db #3e,#32,#39,#3d,#3e,#32,#39,#3d
	db #3e,#ff,#e0,#00,#a0,#c0,#87,#30
	db #30,#30,#85,#30,#30,#87,#30,#30
	db #85,#30,#30,#30,#30,#ff,#e0,#00
	db #a0,#d1,#e2,#01,#85,#31,#36,#38
	db #3d,#31,#36,#38,#3d,#31,#35,#38
	db #86,#3d,#31,#35,#87,#38,#88,#3d
	db #ff,#e0,#00,#a0,#d1,#e2,#01,#85
	db #36,#38,#39,#3d,#ff,#e0,#00,#a0
	db #d1,#e2,#01,#85,#39,#3b,#3d,#40
	db #39,#3b,#3d,#40,#39,#3b,#3d,#40
	db #39,#3b,#3d,#40,#ff,#e0,#00,#a0
	db #c0,#83,#2f,#2f,#2f,#2f,#85,#2f
	db #a5,#d2,#e1,#02,#38,#ff,#e0,#00
	db #a0,#c0,#83,#30,#30,#30,#30,#ff
	db #e0,#00,#a5,#d2,#e1,#02,#83,#2c
	db #2c,#2c,#2c,#ff,#e0,#00,#a0,#d1
	db #e2,#01,#85,#34,#36,#38,#3b,#ff
	db #e0,#00,#a0,#d1,#e2,#01,#85,#32
	db #34,#36,#39,#ff,#e0,#00,#a0,#d1
	db #e2,#01,#85,#31,#36,#38,#3d,#ff
	db #e0,#00,#a0,#c0,#83,#30,#30,#30
	db #30,#30,#30,#30,#30,#30,#30,#30
	db #30,#85,#31,#31,#83,#31,#85,#31
	db #31,#31,#8b,#31,#ff,#e0,#39,#a0
	db #c0,#86,#30,#ff,#e0,#00,#a0,#c0
	db #86,#30,#ff,#e0,#00,#a0,#d1,#e2
	db #01,#85,#36,#38,#39,#3d,#36,#38
	db #39,#3d,#36,#38,#39,#3d,#d6,#e1
	db #07,#89,#36,#ff,#e0,#00,#a0,#d1
	db #e2,#01,#87,#1e,#1e,#1e,#85,#1e
	db #1e,#87,#1e,#1e,#1e,#85,#1e,#1e
	db #ff,#e0,#00,#a0,#d1,#e2,#01,#87
	db #1c,#1c,#1c,#85,#1c,#1c,#87,#1c
	db #1c,#1c,#85,#1c,#1c,#ff,#e0,#00
	db #a0,#d1,#e2,#01,#87,#1a,#1a,#1a
	db #85,#1a,#1a,#87,#1a,#1a,#1a,#85
	db #1a,#1a,#ff,#e0,#00,#a0,#d1,#e2
	db #01,#87,#19,#19,#19,#85,#19,#19
	db #87,#19,#19,#19,#85,#19,#19,#ff
	db #e0,#00,#a0,#d1,#e2,#01,#87,#21
	db #21,#21,#85,#21,#21,#87,#21,#21
	db #21,#85,#21,#21,#ff,#e0,#00,#a0
	db #d1,#e2,#01,#87,#1f,#1f,#1f,#85
	db #1f,#1f,#87,#1f,#1f,#1f,#85,#1f
	db #1f,#ff,#e0,#00,#a0,#d1,#e2,#01
	db #87,#1a,#1a,#1a,#85,#1a,#1a,#87
	db #1a,#1a,#1a,#85,#1a,#1a,#ff,#e0
	db #00,#a0,#c0,#85,#30,#30,#30,#30
	db #30,#30,#30,#30,#30,#30,#30,#30
	db #30,#30,#30,#30,#ff,#e0,#00,#a0
	db #c0,#85,#30,#30,#30,#30,#30,#30
	db #30,#30,#30,#30,#30,#86,#30,#30
	db #30,#87,#30,#88,#30,#ff,#e0,#00
	db #a0,#c0,#87,#30,#30,#30,#85,#30
	db #30,#87,#30,#30,#85,#30,#30,#30
	db #30,#ff,#e0,#00,#a5,#d2,#e1,#02
	db #83,#2c,#2c,#2c,#2c,#c0,#85,#2c
	db #2c,#ff,#e0,#00,#a0,#c0,#83,#30
	db #30,#30,#30,#ff,#e0,#00,#a5,#d2
	db #e1,#02,#83,#2c,#2c,#2c,#2c,#ff
	db #e0,#00,#a0,#d1,#e2,#01,#85,#1e
	db #1e,#1e,#1e,#1e,#1e,#1e,#1e,#1e
	db #1e,#1e,#1e,#1e,#1e,#1e,#1e,#ff
	db #e0,#00,#a0,#d1,#e2,#01,#85,#1c
	db #1c,#1c,#1c,#1c,#1c,#1c,#1c,#1c
	db #1c,#1c,#1c,#1c,#1c,#1c,#1c,#ff
	db #e0,#00,#a0,#d1,#e2,#01,#85,#1a
	db #1a,#1a,#1a,#1a,#1a,#1a,#1a,#1a
	db #1a,#1a,#1a,#1a,#1a,#1a,#1a,#ff
	db #e0,#00,#a0,#d1,#e2,#01,#85,#19
	db #19,#19,#19,#19,#19,#19,#19,#19
	db #19,#19,#19,#19,#19,#19,#19,#ff
	db #e0,#00,#a0,#d1,#e2,#01,#85,#21
	db #21,#21,#21,#21,#21,#21,#21,#21
	db #21,#21,#21,#21,#21,#21,#21,#ff
	db #e0,#00,#a0,#d1,#e2,#01,#85,#1f
	db #1f,#1f,#1f,#1f,#1f,#1f,#1f,#1f
	db #1f,#1f,#1f,#1f,#1f,#1f,#1f,#ff
	db #e0,#00,#a0,#d1,#e2,#01,#85,#1a
	db #1a,#1a,#1a,#1a,#1a,#1a,#1a,#1a
	db #1a,#1a,#1a,#1a,#1a,#1a,#1a,#ff
	db #e0,#00,#a0,#d1,#e2,#01,#85,#1e
	db #1e,#1e,#1e,#ff,#e0,#00,#a0,#d1
	db #e2,#01,#85,#1c,#1c,#1c,#1c,#ff
	db #e0,#00,#a0,#d1,#e2,#01,#85,#1a
	db #1a,#1a,#1a,#ff,#e0,#00,#a0,#d1
	db #e2,#01,#85,#19,#19,#19,#19,#ff
	db #e0,#00,#a5,#d2,#e1,#02,#83,#38
	db #38,#38,#38,#2c,#2c,#2c,#2c,#20
	db #20,#20,#20,#85,#14,#14,#83,#20
	db #85,#14,#14,#c0,#14,#c1,#e1,#04
	db #8b,#24,#ff,#e0,#00,#a5,#d2,#e1
	db #02,#87,#2c,#38,#2c,#85,#38,#2c
	db #87,#2c,#38,#85,#2c,#2c,#38,#2c
	db #ff,#e0,#00,#a0,#c0,#86,#30,#ff
	db #e0,#00,#a0,#c0,#85,#30,#30,#30
	db #30,#30,#30,#30,#30,#30,#30,#30
	db #30,#30,#30,#30,#30,#ff,#e0,#00
	db #a0,#c0,#85,#30,#30,#30,#30,#30
	db #30,#30,#30,#30,#30,#30,#86,#30
	db #30,#30,#87,#30,#88,#30,#ff,#e0
	db #00,#a0,#c0,#83,#33,#33,#33,#33
	db #a5,#d2,#e1,#02,#85,#38,#c0,#38
	db #ff,#e0,#00,#a0,#c0,#83,#30,#30
	db #30,#30,#ff,#e0,#00,#a5,#d2,#e1
	db #02,#83,#2c,#2c,#2c,#2c,#ff,#e0
	db #00,#a0,#c0,#83,#30,#30,#30,#30
	db #30,#30,#30,#30,#30,#30,#30,#30
	db #85,#30,#30,#83,#30,#85,#30,#30
	db #30,#8b,#30,#ff,#e0,#05,#a5,#d2
	db #e1,#02,#85,#2c,#38,#2c,#83,#38
	db #2c,#85,#2c,#38,#83,#2c,#2c,#38
	db #2c,#ff,#e0,#00,#a0,#c0,#86,#30
	db #ff,#e0,#00,#a0,#c0,#86,#30,#ff
	db #e0,#00,#a0,#c0,#86,#30,#ff,#0f
	db #00,#0f,#00,#0f,#00,#0f,#00,#01
	db #0f,#94,#e3,#94,#e3,#94,#e3,#01
	db #0d,#83,#a7,#01,#00,#01,#00,#01
	db #0b,#83,#a1,#01,#00,#01,#00,#01
	db #09,#83,#9b,#01,#00,#01,#00,#01
	db #07,#83,#95,#01,#00,#01,#00,#01
	db #0a,#9e,#3c,#09,#00,#01,#00,#01
	db #0c,#01,#00,#03,#00,#01,#00,#0f
	db #01,#97,#97,#83,#aa,#01,#00,#01
	db #0d,#01,#00,#03,#00,#01,#00,#07
	db #02,#46,#00,#87,#b1,#8c,#c6,#01
	db #0e,#01,#00,#82,#9c,#62,#00,#01
	db #0f,#07,#00,#84,#bc,#01,#00,#05
	db #03,#5a,#00,#5a,#00,#87,#e2,#01
	db #0b,#02,#00,#01,#f5,#01,#00,#01
	db #0d,#02,#00,#01,#f3,#01,#00,#01
	db #0f,#02,#00,#01,#f1,#01,#00,#01
	db #0f,#06,#00,#0f,#ff,#01,#00,#01
	db #0d,#0d,#ff,#01,#00,#01,#00,#01
	db #0b,#0b,#ff,#01,#00,#01,#00,#01
	db #09,#09,#ff,#01,#00,#01,#00,#01
	db #0e,#01,#00,#01,#f2,#01,#00,#01
	db #0f,#05,#00,#87,#a3,#82,#94,#82
	db #14,#0c,#00,#01,#00,#82,#94,#01
	db #0d,#04,#ff,#08,#00,#8a,#d3,#01
	db #0b,#04,#ff,#08,#00,#8c,#d3,#01
	db #09,#04,#ff,#08,#00,#95,#d3,#01
	db #0c,#04,#00,#83,#a4,#53,#00,#01
	db #0d,#03,#00,#08,#ff,#05,#00,#01
	db #0f,#09,#ff,#09,#01,#0f,#ff,#01
	db #0f,#02,#00,#0c,#ff,#0c,#01,#01
	db #0d,#0c,#ff,#0d,#01,#0e,#ff,#01
	db #02,#84,#08,#82,#88,#84,#08,#01
	db #02,#84,#08,#82,#88,#84,#08,#01
	db #00,#01,#3c,#03,#ec,#01,#ef,#86
	db #86,#01,#f1,#01,#2b,#01,#e5,#01
	db #00,#01,#3c,#03,#ec,#01,#ef,#08
	db #00,#84,#08,#82,#88,#84,#08,#85
	db #0a,#03,#fd,#85,#0a,#01,#05,#01
	db #02,#84,#08,#82,#88,#84,#08,#01
	db #04,#01,#38,#03,#ec,#01,#f1,#03
	db #00,#04,#02,#04,#fc,#01,#05,#82
	db #04,#04,#02,#04,#fc,#04,#02,#01
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #00,#01,#63,#02,#d8,#01,#d1,#06
	db #00,#01,#ff,#01,#00,#01,#01,#10
	db #00,#01,#05,#01,#05,#01,#05,#08
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #00,#01,#00,#01,#01,#01,#ff,#01
	db #00,#01,#63,#02,#d8,#01,#d1,#06
	db #00,#01,#ff,#01,#00,#01,#01,#08
	db #00,#01,#01,#01,#fe,#01,#01,#08
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #00,#01,#00,#01,#01,#01,#ff,#01
	db #00,#01,#63,#02,#d8,#01,#d1,#06
	db #00,#01,#ff,#01,#00,#01,#01,#08
	db #00,#01,#01,#01,#fe,#01,#01,#08
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #00,#01,#00,#01,#01,#01,#ff,#01
	db #00,#01,#63,#02,#d8,#01,#d1,#06
	db #00,#01,#ff,#01,#00,#01,#01,#08
	db #00,#01,#01,#01,#fe,#01,#01,#08
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #00,#01,#00,#01,#01,#01,#ff

; #9f58
;	call #8900

;
.music_info
	db "Gpa 1 (1989)(GPA)(Psyclos and Sharky)",0
	db "Music Pro",0

	read "music_end.asm"
