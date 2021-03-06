; Music of Puffy's Saga (1990)(UBI Soft)()(Music Pro)
; Ripped by Megachur the 06/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PUFFYSAG.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8900

	read "music_header.asm"

; 28/08/2020 - new asm extraction !

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
	call lbca7	; #bca7 - modified by Megachur
	ei
	ret
.l90ed
	call l8906
	call l90f4
	ret
.l90f4
	ld a,#f5
	in a,(#00)
	rrca
	jr nc,l90f4
.l90fb
	ld a,#f5
	in a,(#00)
	rrca
	jr c,l90fb
	push bc
	ld bc,#fee8
	out (c),c
	ld bc,#df00
	out (c),c
	ld bc,#7f84
	out (c),c
	ld a,(#c000)
	cp #80
	jp z,l9121
	ld hl,l9121
.l911d
	ld (hl),l
.l911e
	inc hl
	jr l911d
.l9121
	ld bc,#7f8c
	out (c),c
	pop bc
	ret
	and b
	ldi
	ret
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
	jp c,#0000
	jp #0000
.l9156
	db #00,#30,#09,#09,#20,#20,#3b,#20
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
	db #00,#00
.l9207 equ $ + 7
.l9205 equ $ + 5
.l9203 equ $ + 3
.l9202 equ $ + 2
.l9201 equ $ + 1
.l9200
	db #06,#1e,#03,#63,#00,#d2,#02,#d2
.l920d equ $ + 5
.l920b equ $ + 3
.l9209 equ $ + 1
	db #03,#0e,#00,#2e,#00,#4c,#00,#03
	db #02,#00,#00,#00,#01,#00,#00,#00
	db #01,#00,#00,#00,#01,#00,#00,#00
	db #01,#00,#00,#00,#01,#00,#00,#00
	db #01,#00,#01,#00,#00,#04,#ff,#09
	db #08,#06,#07,#06,#07,#06,#07,#06
	db #07,#06,#07,#06,#07,#06,#07,#06
	db #07,#06,#07,#06,#07,#06,#07,#06
	db #07,#06,#07,#0a,#ff,#0e,#0d,#0c
	db #11,#0d,#10,#12,#11,#0d,#0d,#11
	db #15,#16,#15,#17,#18,#19,#18,#1a
	db #1b,#1c,#1d,#ff,#a1,#00,#b4,#00
	db #d0,#00,#e8,#00,#05,#01,#0c,#01
	db #13,#01,#25,#01,#37,#01,#3e,#01
	db #5b,#01,#6e,#01,#75,#01,#83,#01
	db #8a,#01,#a5,#01,#b9,#01,#c9,#01
	db #de,#01,#ee,#01,#01,#02,#28,#02
	db #42,#02,#5a,#02,#6c,#02,#7d,#02
	db #8e,#02,#9f,#02,#af,#02,#bf,#02
	db #4a,#97,#e0,#00,#a5,#d3,#e1,#02
	db #82,#2c,#2c,#d2,#32,#d3,#2c,#2c
	db #2c,#d2,#32,#32,#ff,#e0,#00,#a5
	db #d3,#e1,#02,#82,#2c,#2c,#d2,#32
	db #d3,#80,#2c,#d2,#32,#d3,#2c,#d2
	db #2c,#d3,#82,#2c,#d2,#32,#d3,#2c
	db #ff,#e0,#00,#a5,#d2,#e1,#02,#80
	db #2c,#2c,#2c,#2c,#2c,#2c,#2c,#2c
	db #2c,#2c,#2c,#2c,#2c,#2c,#2c,#2c
	db #ff,#e0,#00,#a0,#ca,#e1,#03,#85
	db #18,#83,#1a,#84,#1b,#18,#86,#1e
	db #84,#1b,#1a,#85,#18,#83,#1a,#84
	db #1b,#18,#86,#22,#21,#ff,#e0,#00
	db #a0,#c0,#86,#3c,#ff,#e0,#00,#a0
	db #c0,#86,#30,#ff,#e0,#00,#a0,#d1
	db #e2,#01,#82,#18,#18,#80,#1b,#1d
	db #82,#1f,#84,#16,#18,#ff,#e0,#00
	db #a0,#d1,#e2,#01,#82,#18,#18,#80
	db #1b,#1d,#82,#1f,#84,#22,#21,#ff
	db #e0,#00,#a0,#c0,#88,#26,#ff,#e0
	db #00,#a0,#ca,#e1,#04,#85,#18,#83
	db #1a,#84,#1b,#18,#86,#1e,#84,#1b
	db #1a,#85,#18,#83,#1a,#84,#1b,#18
	db #86,#22,#21,#ff,#e0,#00,#a0,#ca
	db #e1,#04,#86,#1f,#1d,#84,#1b,#1a
	db #18,#82,#18,#16,#86,#18,#ff,#e0
	db #86,#a0,#c0,#86,#30,#ff,#e0,#00
	db #a0,#d6,#e1,#03,#8b,#30,#ca,#e1
	db #09,#88,#3f,#ff,#e0,#00,#a0,#c0
	db #88,#30,#ff,#e0,#00,#a0,#c0,#85
	db #02,#83,#02,#84,#02,#02,#86,#02
	db #84,#02,#02,#85,#02,#83,#02,#84
	db #02,#02,#86,#02,#02,#ff,#e0,#00
	db #e3,#81,#5f,#c8,#e2,#00,#84,#00
	db #00,#c0,#00,#82,#c8,#00,#88,#c0
	db #05,#ff,#e0,#02,#a0,#c1,#e1,#0e
	db #82,#24,#24,#24,#24,#24,#24,#24
	db #24,#ff,#e0,#00,#a0,#c1,#e1,#02
	db #82,#2b,#c0,#2b,#2b,#c1,#2b,#2b
	db #c0,#2b,#c1,#2b,#c0,#2b,#ff,#e0
	db #02,#a0,#c1,#e1,#0e,#82,#30,#30
	db #30,#30,#30,#30,#30,#30,#ff,#e0
	db #00,#a0,#cc,#e1,#03,#8a,#35,#e3
	db #01,#42,#c8,#e1,#0b,#43,#82,#c0
	db #30,#ff,#e0,#00,#a0,#d1,#e2,#05
	db #82,#2b,#c0,#85,#2b,#d1,#82,#29
	db #c0,#85,#24,#d1,#82,#27,#c0,#85
	db #24,#d1,#82,#26,#c0,#85,#24,#d1
	db #86,#24,#82,#24,#85,#22,#86,#24
	db #ff,#e0,#00,#a0,#d1,#e2,#05,#85
	db #30,#82,#33,#83,#35,#33,#84,#37
	db #35,#82,#33,#81,#30,#33,#83,#35
	db #82,#33,#ff,#e0,#00,#a0,#d1,#e2
	db #05,#86,#30,#82,#2b,#84,#2e,#86
	db #30,#82,#2e,#81,#2b,#2e,#83,#30
	db #82,#33,#ff,#e0,#00,#a0,#d1,#e2
	db #05,#86,#30,#82,#2b,#84,#2e,#88
	db #30,#c0,#82,#30,#ff,#e0,#00,#a0
	db #c0,#82,#30,#d1,#e2,#05,#30,#33
	db #30,#35,#30,#2e,#30,#ff,#e0,#00
	db #a0,#c0,#82,#30,#d1,#e2,#05,#30
	db #33,#30,#37,#35,#33,#37,#ff,#e0
	db #00,#a0,#c0,#82,#30,#d1,#e2,#05
	db #30,#33,#30,#2e,#2b,#2e,#30,#ff
	db #e0,#00,#a0,#d1,#e2,#05,#86,#30
	db #c0,#82,#30,#d1,#30,#2e,#30,#ff
	db #e0,#00,#a0,#d1,#e2,#05,#86,#30
	db #c0,#82,#30,#d1,#30,#33,#30,#ff
	db #e0,#00,#a0,#d1,#e2,#05,#86,#37
	db #35,#84,#33,#32,#30,#82,#30,#2e
	db #86,#30,#ff,#0f,#00,#0f,#00,#0f
	db #00,#0f,#00,#01,#0a,#85,#93,#82
	db #8a,#01,#ff,#01,#0d,#83,#a7,#01
	db #00,#01,#00,#01,#0b,#83,#a1,#01
	db #00,#01,#00,#01,#09,#83,#9b,#01
	db #00,#01,#00,#01,#07,#83,#95,#01
	db #00,#01,#00,#01,#0a,#9e,#3c,#09
	db #00,#01,#00,#01,#0c,#01,#00,#03
	db #00,#01,#00,#0c,#01,#97,#97,#84
	db #aa,#01,#00,#01,#0d,#01,#00,#03
	db #00,#01,#00,#01,#0a,#07,#00,#8c
	db #ae,#90,#cd,#01,#0e,#01,#00,#82
	db #9c,#62,#00,#01,#0f,#07,#00,#84
	db #bc,#01,#00,#01,#0f,#87,#b6,#01
	db #f9,#01,#00,#01,#0b,#02,#00,#01
	db #f5,#01,#00,#01,#0d,#02,#00,#01
	db #f3,#01,#00,#01,#0f,#02,#00,#01
	db #f1,#01,#00,#01,#0b,#86,#97,#01
	db #fa,#01,#00,#01,#0e,#07,#fe,#01
	db #00,#01,#00,#01,#0f,#01,#f5,#01
	db #fc,#01,#00,#01,#09,#09,#ff,#01
	db #00,#01,#00,#01,#0e,#01,#00,#01
	db #f2,#01,#00,#01,#0a,#86,#a5,#27
	db #00,#87,#26,#82,#14,#0c,#00,#01
	db #00,#82,#94,#01,#0d,#04,#ff,#08
	db #00,#8a,#d3,#01,#0b,#04,#ff,#08
	db #00,#8c,#d3,#01,#09,#04,#ff,#08
	db #00,#95,#d3,#01,#0c,#04,#00,#83
	db #a4,#53,#00,#01,#0d,#03,#00,#08
	db #ff,#05,#00,#01,#0f,#09,#ff,#09
	db #01,#0f,#ff,#01,#0f,#02,#00,#0c
	db #ff,#0c,#01,#01,#0d,#0c,#ff,#0d
	db #01,#0e,#ff,#85,#09,#8a,#8a,#83
	db #8a,#01,#03,#01,#02,#84,#08,#82
	db #88,#84,#08,#01,#21,#01,#1d,#03
	db #ee,#01,#fc,#86,#86,#01,#f1,#01
	db #2b,#01,#e5,#88,#08,#82,#04,#04
	db #fe,#03,#02,#08,#00,#84,#08,#82
	db #88,#84,#08,#85,#0a,#03,#fd,#85
	db #0a,#01,#05,#01,#00,#01,#63,#03
	db #e2,#01,#d1,#01,#04,#01,#38,#03
	db #ec,#01,#f1,#03,#00,#04,#02,#04
	db #fc,#01,#05,#82,#04,#04,#02,#04
	db #fc,#04,#02,#01,#00,#01,#00,#01
	db #fd,#01,#00,#01,#00,#01,#63,#02
	db #d8,#01,#d1,#06,#00,#01,#ff,#01
	db #00,#01,#01,#05,#00,#01,#00,#09
	db #03,#01,#e4,#08,#00,#01,#01,#01
	db #01,#01,#01,#01,#00,#01,#00,#01
	db #01,#01,#ff,#01,#00,#01,#63,#02
	db #d8,#01,#d1,#06,#00,#01,#ff,#01
	db #00,#01,#01,#08,#00,#01,#01,#01
	db #fe,#01,#01,#08,#00,#01,#01,#01
	db #01,#01,#01,#01,#00,#01,#00,#01
	db #01,#01,#ff,#01,#00,#01,#63,#02
	db #d8,#01,#d1,#06,#00,#01,#ff,#01
	db #00,#01,#01,#08,#00,#01,#01,#01
	db #fe,#01,#01,#08,#00,#01,#01,#01
	db #01,#01,#01,#01,#00,#01,#00,#01
	db #01,#01,#ff,#01,#00,#01,#63,#02
	db #d8,#01,#d1,#06,#00,#01,#ff,#01
	db #00,#01,#01,#08,#00,#01,#01,#01
	db #fe,#01,#01,#08,#00,#01,#01,#01
	db #01,#01,#01,#01,#00,#01,#00,#01
	db #01,#01,#ff,#e0,#00,#00,#00
;
; #3f9e
; call #8906	; init
;
; #3fc3
; call #8989	; play !
;
; #8833	; stop ! -> bca7 - added by Megachur
;
.lbca7
	xor a
	ld de,#000e
.l8837
	ld b,#f4
	out (c),d
	ld bc,#f6c0
	out (c),c
	out (c),a
	dec b
	outi
	ld bc,#f680
	out (c),c
	out (c),a
	inc d
	dec e
	jr nz,l8837
	ret
;
.music_info
	db "Puffy's Saga (1990)(UBI Soft)()",0
	db "Music Pro",0

	read "music_end.asm"
