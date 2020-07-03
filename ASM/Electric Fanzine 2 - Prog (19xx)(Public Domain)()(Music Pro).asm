; Music of Electric Fanzine 2 - Prog (19xx)(Public Domain)()(Music Pro)
; Ripped by Megachur the 07/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ELECTF2P.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 07
MUSIC_DATE_RIP_MONTH	equ 05
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
	db #ff,#38,#00,#00,#00,#00,#00,#ff
.l8e4c equ $ + 1
.l8e4b
	db #ff,#00
	db #51,#8e,#51,#8e
.l8e57 equ $ + 6
.l8e53 equ $ + 2
.l8e52 equ $ + 1
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
	db #00,#00,#06,#25,#02,#52,#00,#9d
.l920d equ $ + 7
.l920b equ $ + 5
.l9209 equ $ + 3
.l9207 equ $ + 1
	db #06,#9d,#07,#0e,#00,#22,#00,#36
	db #00,#00,#00,#01,#02,#03,#04,#05
	db #06,#07,#08,#08,#09,#0a,#0b,#0c
	db #09,#0a,#0b,#0c,#ff,#0d,#0d,#0d
	db #0e,#0f,#10,#11,#12,#13,#14,#14
	db #15,#16,#17,#18,#15,#16,#17,#18
	db #ff,#19,#1a,#19,#1a,#1b,#1c,#1d
	db #1e,#1e,#1e,#1e,#1f,#20,#21,#22
	db #22,#23,#24,#22,#1f,#20,#21,#22
	db #22,#23,#24,#22,#ff,#9e,#00,#a6
	db #00,#c8,#00,#dd,#00,#f2,#00,#17
	db #01,#3c,#01,#61,#01,#86,#01,#aa
	db #01,#e5,#01,#20,#02,#4f,#02,#8a
	db #02,#b2,#02,#ca,#02,#e2,#02,#f7
	db #02,#0c,#03,#21,#03,#36,#03,#58
	db #03,#66,#03,#74,#03,#84,#03,#92
	db #03,#00,#04,#6a,#04,#c6,#04,#f8
	db #04,#2a,#05,#71,#05,#a3,#05,#d5
	db #05,#07,#06,#39,#06,#6b,#06,#15
	db #9b,#e0,#00,#a0,#c0,#8a,#30,#30
	db #ff,#e0,#00,#a0,#c1,#e2,#05,#84
	db #30,#3c,#3a,#82,#37,#84,#3c,#82
	db #3c,#84,#3c,#3a,#37,#2e,#38,#37
	db #82,#33,#84,#38,#82,#38,#84,#38
	db #37,#33,#ff,#e0,#00,#a0,#c1,#e2
	db #05,#84,#2e,#37,#35,#82,#2e,#84
	db #37,#82,#37,#84,#37,#35,#2e,#ff
	db #e0,#02,#a0,#c1,#e2,#05,#84,#2e
	db #36,#35,#82,#2e,#84,#36,#82,#36
	db #84,#36,#35,#2c,#ff,#e0,#f4,#a0
	db #c1,#e2,#05,#82,#30,#3c,#c2,#3c
	db #c3,#3c,#c1,#3a,#c2,#3a,#c1,#37
	db #3c,#c2,#3c,#c3,#3c,#c4,#3c,#c3
	db #3c,#c1,#3a,#c2,#3a,#c1,#37,#c2
	db #37,#ff,#e0,#f4,#a0,#c1,#e2,#05
	db #82,#2e,#3a,#c2,#38,#c3,#38,#c1
	db #37,#c2,#37,#c1,#33,#38,#c2,#38
	db #c3,#38,#c4,#38,#c3,#38,#c1,#37
	db #c2,#37,#c1,#33,#c2,#33,#ff,#e0
	db #f4,#a0,#c1,#e2,#05,#82,#2e,#3a
	db #c2,#37,#c3,#37,#c1,#35,#c2,#35
	db #c1,#32,#37,#c2,#37,#c3,#37,#c4
	db #37,#c3,#37,#c1,#35,#c2,#35,#c1
	db #32,#c2,#32,#ff,#e0,#f6,#a0,#c1
	db #e2,#05,#82,#2e,#3a,#c2,#36,#c3
	db #36,#c1,#35,#c2,#35,#c1,#2e,#36
	db #c2,#36,#c3,#36,#c4,#36,#c3,#36
	db #c1,#35,#c2,#35,#c1,#2c,#c2,#2c
	db #ff,#e0,#00,#a0,#ca,#e1,#04,#8a
	db #18,#1e,#86,#21,#84,#20,#87,#1c
	db #86,#28,#27,#84,#26,#88,#22,#e3
	db #81,#5f,#cd,#82,#46,#a0,#c1,#e2
	db #00,#80,#52,#46,#ff,#e0,#00,#a0
	db #c1,#e2,#05,#82,#30,#c2,#30,#c3
	db #30,#c4,#30,#c1,#32,#c2,#32,#c3
	db #32,#c4,#32,#c1,#33,#c2,#33,#c3
	db #33,#c4,#33,#c1,#35,#c2,#35,#c3
	db #35,#c4,#35,#c1,#37,#36,#35,#32
	db #c2,#37,#36,#35,#32,#c3,#37,#36
	db #35,#32,#c4,#37,#36,#35,#32,#ff
	db #e0,#00,#a0,#c1,#e2,#05,#82,#33
	db #c2,#33,#c3,#33,#c4,#33,#c1,#35
	db #c2,#35,#c3,#35,#c4,#35,#c1,#37
	db #c2,#37,#c3,#37,#c4,#37,#c1,#38
	db #c2,#38,#c3,#38,#c4,#38,#c1,#3a
	db #39,#38,#35,#c2,#3a,#39,#38,#35
	db #c3,#3a,#39,#38,#35,#c4,#3a,#39
	db #38,#35,#ff,#e0,#00,#a0,#c1,#e2
	db #05,#82,#3c,#3b,#3a,#37,#c2,#3c
	db #3b,#3a,#37,#c3,#3c,#3b,#3a,#37
	db #c4,#3c,#3b,#3a,#37,#c1,#38,#37
	db #33,#2e,#c2,#38,#37,#33,#2e,#c3
	db #38,#37,#33,#2e,#c4,#38,#37,#33
	db #2e,#ff,#e0,#00,#a0,#c1,#e2,#05
	db #82,#38,#c2,#38,#c3,#38,#c4,#38
	db #c1,#37,#c2,#37,#c3,#37,#c4,#37
	db #c1,#35,#c2,#35,#c3,#35,#c4,#35
	db #c1,#33,#c2,#33,#c3,#33,#c4,#33
	db #c1,#37,#35,#32,#2e,#c2,#37,#35
	db #32,#2e,#c3,#37,#35,#32,#2e,#c4
	db #37,#35,#32,#2e,#ff,#e0,#00,#a0
	db #c1,#e2,#05,#82,#18,#24,#18,#24
	db #18,#24,#18,#24,#18,#24,#18,#24
	db #18,#24,#1a,#26,#1b,#27,#1b,#27
	db #1b,#27,#1b,#27,#1b,#27,#1b,#27
	db #1b,#27,#1a,#26,#ff,#e0,#00,#a0
	db #c1,#e2,#05,#82,#16,#22,#16,#22
	db #16,#22,#16,#22,#16,#22,#16,#22
	db #16,#22,#16,#22,#ff,#e0,#02,#a0
	db #c1,#e2,#05,#82,#16,#22,#16,#22
	db #16,#22,#16,#22,#16,#22,#16,#22
	db #16,#22,#14,#20,#ff,#e0,#00,#a0
	db #c6,#e1,#07,#84,#30,#3c,#3a,#82
	db #37,#84,#3c,#82,#3c,#84,#3c,#3a
	db #37,#ff,#e0,#00,#a0,#c6,#e1,#07
	db #84,#2e,#38,#37,#82,#33,#84,#38
	db #82,#38,#84,#38,#37,#33,#ff,#e0
	db #00,#a0,#c6,#e1,#07,#84,#2e,#37
	db #35,#82,#32,#84,#37,#82,#37,#84
	db #37,#35,#32,#ff,#e0,#02,#a0,#c6
	db #e1,#07,#84,#2e,#36,#35,#82,#2e
	db #84,#36,#82,#36,#84,#36,#35,#2c
	db #ff,#e0,#00,#a0,#ca,#e1,#03,#88
	db #18,#1f,#1e,#1a,#86,#21,#84,#20
	db #87,#1c,#86,#28,#27,#84,#26,#88
	db #22,#c1,#e2,#05,#80,#52,#82,#46
	db #80,#52,#ff,#e0,#00,#a0,#ca,#e1
	db #04,#86,#30,#32,#33,#35,#8a,#32
	db #ff,#e0,#00,#a0,#ca,#e1,#04,#86
	db #33,#35,#37,#38,#8a,#3a,#ff,#e0
	db #00,#a0,#ca,#e1,#04,#86,#3c,#3a
	db #38,#35,#3a,#37,#33,#2e,#ff,#e0
	db #00,#a0,#ca,#e1,#04,#86,#38,#37
	db #35,#33,#8a,#35,#ff,#e0,#00,#a1
	db #cf,#e2,#00,#82,#00,#a2,#d0,#00
	db #a1,#cf,#00,#ce,#00,#a5,#d1,#e1
	db #02,#32,#d2,#32,#a1,#cf,#e2,#00
	db #00,#a2,#d0,#00,#a1,#cf,#00,#a2
	db #d0,#00,#a1,#cf,#00,#ce,#00,#a5
	db #d1,#e1,#02,#32,#d2,#32,#a1,#cf
	db #e2,#00,#00,#a2,#d0,#00,#a1,#cf
	db #00,#a2,#d0,#00,#a1,#cf,#00,#ce
	db #00,#a5,#d1,#e1,#02,#32,#d2,#32
	db #a1,#cf,#e2,#00,#00,#a2,#d0,#00
	db #a1,#cf,#00,#a2,#d0,#00,#a1,#cf
	db #00,#ce,#00,#a5,#d1,#e1,#02,#32
	db #d2,#32,#a1,#cf,#e2,#00,#00,#a2
	db #d0,#00,#ff,#e0,#00,#a1,#cf,#e2
	db #00,#82,#00,#a2,#d0,#00,#a1,#cf
	db #00,#ce,#00,#a5,#d1,#e1,#02,#32
	db #d2,#32,#a1,#cf,#e2,#00,#00,#a2
	db #d0,#00,#a1,#cf,#00,#a2,#d0,#00
	db #a1,#cf,#00,#ce,#00,#a5,#d1,#e1
	db #02,#32,#d2,#32,#a1,#cf,#e2,#00
	db #00,#a2,#d0,#00,#a1,#cf,#00,#a2
	db #d0,#00,#a1,#cf,#00,#ce,#00,#a5
	db #d1,#e1,#02,#32,#d2,#32,#a1,#cf
	db #e2,#00,#00,#a2,#d0,#00,#a1,#cf
	db #00,#a2,#d0,#00,#a1,#cf,#00,#ce
	db #00,#a5,#d1,#e1,#02,#32,#d2,#32
	db #d1,#32,#d2,#32,#ff,#e0,#00,#a0
	db #c1,#e2,#00,#82,#18,#24,#a2,#d0
	db #00,#a1,#cf,#00,#a5,#d1,#e1,#02
	db #32,#d2,#32,#a0,#c1,#e2,#00,#18
	db #24,#18,#24,#a2,#d0,#00,#a1,#cf
	db #00,#a5,#d1,#e1,#02,#32,#d2,#32
	db #a0,#c1,#e2,#00,#1a,#26,#1b,#27
	db #a2,#d0,#00,#a1,#cf,#00,#a5,#d1
	db #e1,#02,#32,#d2,#32,#a0,#c1,#e2
	db #00,#1b,#27,#1b,#27,#a2,#d0,#00
	db #a1,#cf,#00,#a5,#d1,#e1,#02,#32
	db #d2,#32,#a0,#c1,#e2,#00,#1a,#26
	db #ff,#e0,#00,#a0,#c1,#e2,#00,#82
	db #16,#22,#a2,#d0,#00,#a1,#cf,#00
	db #a5,#d1,#e1,#02,#32,#d2,#32,#a0
	db #c1,#e2,#00,#16,#22,#16,#22,#a2
	db #d0,#00,#a1,#cf,#00,#a5,#d1,#e1
	db #02,#32,#d2,#32,#a0,#c1,#e2,#00
	db #16,#22,#ff,#e0,#02,#a0,#c1,#e2
	db #00,#82,#16,#22,#a2,#d0,#00,#a1
	db #cf,#00,#a5,#d1,#e1,#02,#32,#d2
	db #32,#a0,#c1,#e2,#00,#16,#22,#16
	db #22,#a2,#d0,#00,#a1,#cf,#00,#a5
	db #d1,#e1,#02,#32,#d2,#32,#a0,#c1
	db #e2,#00,#14,#20,#ff,#e0,#00,#a5
	db #d1,#e1,#02,#82,#32,#d2,#32,#d3
	db #32,#d1,#32,#d2,#32,#d3,#32,#d1
	db #32,#d2,#32,#d1,#32,#d2,#32,#d3
	db #32,#d1,#32,#d2,#32,#d3,#32,#d1
	db #32,#d2,#32,#d1,#32,#d2,#32,#d3
	db #32,#d1,#32,#d2,#32,#d3,#32,#d1
	db #32,#d2,#32,#d1,#32,#d2,#32,#d3
	db #32,#d1,#32,#d2,#32,#d3,#32,#d1
	db #32,#d2,#32,#ff,#e0,#00,#a0,#c1
	db #e2,#00,#82,#18,#18,#a1,#cf,#00
	db #a2,#d0,#00,#a5,#d1,#e1,#02,#32
	db #d2,#32,#a0,#c1,#e2,#00,#18,#24
	db #18,#18,#a1,#cf,#00,#a2,#d0,#00
	db #a5,#d1,#e1,#02,#32,#d2,#32,#a0
	db #c1,#e2,#00,#18,#24,#ff,#e0,#00
	db #a0,#c1,#e2,#00,#82,#13,#13,#a1
	db #cf,#00,#a2,#d0,#00,#a5,#d1,#e1
	db #02,#32,#d2,#32,#a0,#c1,#e2,#00
	db #13,#1f,#13,#13,#a1,#cf,#00,#a2
	db #d0,#00,#a5,#d1,#e1,#02,#32,#d2
	db #32,#a0,#c1,#e2,#00,#13,#1f,#ff
	db #e0,#00,#a0,#c1,#e2,#00,#82,#1b
	db #1b,#a1,#cf,#00,#a2,#d0,#00,#a5
	db #d1,#e1,#02,#32,#d2,#32,#a0,#c1
	db #e2,#00,#1b,#27,#1b,#1b,#a1,#cf
	db #00,#a2,#d0,#00,#a5,#d1,#e1,#02
	db #32,#d2,#32,#a0,#c1,#e2,#00,#1b
	db #27,#ff,#e0,#00,#a0,#c1,#e2,#00
	db #82,#16,#16,#a1,#cf,#00,#a2,#d0
	db #00,#a5,#d1,#e1,#02,#32,#d2,#32
	db #a0,#c1,#e2,#00,#16,#22,#16,#16
	db #a1,#cf,#00,#a2,#d0,#00,#a5,#d1
	db #e1,#02,#32,#d2,#32,#a0,#c1,#e2
	db #00,#16,#22,#ff,#e0,#00,#a0,#c1
	db #e2,#00,#82,#1b,#1b,#a1,#cf,#00
	db #a2,#d0,#00,#a5,#d1,#e1,#02,#32
	db #d2,#32,#a0,#c1,#e2,#00,#1b,#27
	db #1b,#1b,#a1,#cf,#00,#a2,#d0,#00
	db #a5,#d1,#e1,#02,#32,#d2,#32,#a0
	db #c1,#e2,#00,#1b,#27,#ff,#e0,#00
	db #a0,#c1,#e2,#00,#82,#1b,#1b,#a1
	db #cf,#00,#a2,#d0,#00,#a5,#d1,#e1
	db #02,#32,#d2,#32,#a0,#c1,#e2,#00
	db #1a,#26,#18,#18,#a1,#cf,#00,#a2
	db #d0,#00,#a5,#d1,#e1,#02,#32,#d2
	db #32,#a0,#c1,#e2,#00,#18,#24,#ff
	db #0f,#00,#0f,#00,#0f,#00,#0f,#00
	db #01,#0f,#0f,#ff,#01,#00,#01,#00
	db #01,#0d,#0d,#ff,#01,#00,#01,#00
	db #01,#0b,#0b,#ff,#01,#00,#01,#00
	db #01,#09,#09,#ff,#01,#00,#01,#00
	db #01,#07,#07,#ff,#01,#00,#01,#00
	db #01,#0f,#82,#88,#08,#00,#83,#a1
	db #01,#0a,#01,#00,#03,#00,#84,#a8
	db #01,#0c,#01,#00,#03,#00,#18,#00
	db #01,#0e,#01,#00,#03,#00,#01,#00
	db #01,#0f,#04,#00,#8a,#bc,#8b,#e2
	db #01,#0e,#01,#00,#82,#9c,#62,#00
	db #01,#0f,#07,#00,#84,#bc,#01,#00
	db #01,#0f,#04,#ff,#08,#00,#88,#d3
	db #01,#0a,#01,#00,#01,#f6,#01,#00
	db #01,#0c,#01,#00,#01,#f4,#01,#00
	db #01,#0e,#01,#00,#01,#f2,#01,#00
	db #01,#0f,#0f,#ff,#01,#00,#01,#00
	db #01,#0d,#0d,#ff,#01,#00,#01,#00
	db #01,#0b,#0b,#ff,#01,#00,#01,#00
	db #01,#09,#09,#ff,#01,#00,#01,#00
	db #01,#0e,#01,#00,#01,#f2,#01,#00
	db #01,#0c,#91,#e3,#a1,#63,#a1,#63
	db #82,#14,#0c,#00,#01,#00,#82,#94
	db #01,#0d,#04,#ff,#08,#00,#8a,#d3
	db #01,#0b,#04,#ff,#08,#00,#8c,#d3
	db #01,#09,#04,#ff,#08,#00,#95,#d3
	db #01,#07,#04,#ff,#08,#00,#9e,#da
	db #01,#0d,#03,#00,#08,#ff,#05,#00
	db #01,#0e,#86,#92,#89,#89,#82,#92
	db #01,#0f,#02,#00,#0c,#ff,#0c,#01
	db #01,#0d,#0c,#ff,#0d,#01,#0e,#ff
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#84,#08,#82,#88,#84,#08
	db #01,#00,#01,#3c,#03,#ec,#01,#ef
	db #86,#86,#01,#f1,#01,#2b,#01,#e5
	db #88,#08,#82,#04,#04,#fe,#03,#02
	db #04,#00,#82,#04,#04,#ff,#82,#04
	db #85,#0a,#03,#fd,#85,#0a,#01,#05
	db #01,#00,#82,#02,#02,#ff,#82,#02
	db #06,#00,#01,#01,#01,#fe,#01,#01
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #08,#00,#01,#01,#01,#01,#01,#01
	db #01,#00,#01,#00,#01,#01,#01,#ff
	db #01,#00,#01,#63,#02,#d8,#01,#d1
	db #06,#00,#01,#ff,#01,#00,#01,#01
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #08,#00,#01,#01,#01,#01,#01,#01
	db #01,#00,#01,#00,#01,#01,#01,#ff
	db #01,#00,#01,#63,#02,#d8,#01,#d1
	db #06,#00,#01,#ff,#01,#00,#01,#01
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #08,#00,#01,#01,#01,#01,#01,#01
	db #01,#00,#01,#00,#01,#01,#01,#ff
	db #01,#00,#01,#63,#02,#d8,#01,#d1
	db #06,#00,#01,#ff,#01,#00,#01,#01
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #08,#00,#01,#01,#01,#01,#01,#01
	db #01,#00,#01,#00,#01,#01,#01,#ff
	db #01,#00,#01,#63,#02,#d8,#01,#d1
	db #06,#00,#01,#ff,#01,#00,#01,#01
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #08,#00,#01,#01,#01,#01,#01,#01
	db #01,#00,#01,#00,#01,#01,#01,#ff
	db #e1,#02,#00,#00,#00,#00,#00,#00
;
.music_info
	db "Electric Fanzine 2 - Prog (19xx)(Public Domain)()",0
	db "Music Pro",0

	read "music_end.asm"
