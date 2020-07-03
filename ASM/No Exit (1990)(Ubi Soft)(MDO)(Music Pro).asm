; Music of No Exit (1990)(Ubi Soft)(MDO)(Music Pro)
; Ripped by Megachur the 04/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "NOEXIT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
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
	db #ff,#30,#40,#bf,#00,#00,#00,#ff
.l8e52 equ $ + 7
.l8e4c equ $ + 1
.l8e4b
	db #ff,#00,#51,#8e,#51,#8e,#ff,#ff
.l8e59 equ $ + 6
.l8e57 equ $ + 4
.l8e53
	db #18,#92,#25,#93,#0f,#92,#06,#08
	db #00,#01,#00,#00,#00,#00,#0d,#00
	db #09,#00,#00,#ff,#ff,#0a,#0a,#0a
	db #ff,#00,#03,#00,#00,#00,#0a,#00
	db #00,#00,#01,#00,#00,#00,#00,#01
	db #00,#00,#c4,#00,#03,#00,#00,#14
	db #00,#01,#00,#00,#11,#be,#00,#be
.l8e92 equ $ + 7
.l8e8d equ $ + 2
	db #00,#00,#ff,#2e,#92,#b6,#93,#1d
.l8e94 equ $ + 1
	db #92,#08,#08,#00,#01,#00,#00,#00
	db #00,#0d,#ff,#02,#02,#12,#ff,#ff
	db #05,#05,#05,#ff,#ff,#03,#03,#03
	db #ff,#0d,#11,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8ec8 equ $ + 5
	db #a7,#02,#a7,#02,#00,#ff,#3f,#92
.l8ecf equ $ + 4
.l8ecd equ $ + 2
	db #26,#95,#34,#92,#04,#04,#01,#01
	db #00,#00,#00,#00,#0e,#00,#01,#02
	db #00,#00,#ff,#02,#02,#1c,#ff,#00
.l8ee7 equ $ + 4
	db #62,#18,#46,#00,#0e,#05,#01,#00
.l8eef equ $ + 4
	db #00,#0f,#00,#01,#00,#02,#02,#04
	db #ff,#00,#02,#00,#00,#01,#ff,#02
	db #02,#02,#ff,#ab,#00,#aa,#00,#01
	db #00,#01,#00,#00,#0d,#00,#0c,#00
	db #00,#ff,#ff,#0a,#0a,#0a,#ff,#00
	db #03,#00,#00,#00,#00,#01,#00,#00
	db #0d,#ff,#02,#02,#12,#ff,#ff,#05
	db #05,#05,#ff,#ff,#03,#03,#03,#ff
.l8f2b
	db #00,#01,#00,#00,#0e,#00,#01,#02
	db #00,#00,#ff,#02,#02,#1c,#ff,#00
	db #62,#18,#46,#00,#00,#01,#00,#00
	db #00,#00,#01,#00,#00,#c4,#00,#03
	db #00,#00,#14,#00,#01,#00,#00,#11
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#0f,#00
	db #01,#00,#02,#02,#04,#ff,#00,#02
	db #00,#00,#01,#ff,#02,#02,#02,#ff
.l8f82 equ $ + 7
.l8f80 equ $ + 5
.l8f7e equ $ + 3
.l8f7c equ $ + 1
.l8f7b
	db #01,#44,#92,#5c,#95,#5c,#96,#02
.l8f8a equ $ + 7
.l8f89 equ $ + 6
.l8f88 equ $ + 5
.l8f87 equ $ + 4
.l8f86 equ $ + 3
.l8f85 equ $ + 2
.l8f84 equ $ + 1
.l8f83
	db #00,#00,#09,#01,#1f,#01,#02,#00
	db #00,#9c,#0c,#e7,#0b,#3c,#0b,#9b
	db #0a,#02,#0a,#73,#09,#eb,#08,#6b
	db #08,#f2,#07,#80,#07,#14,#07,#ae
	db #06,#4e,#06,#f4,#05,#9e,#05,#4d
	db #05,#01,#05,#69,#04,#75,#04,#35
	db #04,#f9,#03,#c0,#03,#8a,#03,#57
	db #03,#27,#03,#fa,#02,#cf,#02,#a7
	db #02,#81,#02,#5d,#02,#3b,#02,#1b
	db #02,#fc,#01,#e0,#01,#c5,#01,#ac
	db #01,#94,#01,#7d,#01,#68,#01,#53
	db #01,#40,#01,#2e,#01,#1d,#01,#0d
	db #01,#fe,#00,#f0,#00,#e2,#00,#d6
	db #00,#ca,#00,#be,#00,#b4,#00,#aa
	db #00,#a0,#00,#97,#00,#8f,#00,#87
	db #00,#7f,#00,#78,#00,#71,#00,#6b
	db #00,#65,#00,#5f,#00,#5a,#00,#55
	db #00,#50,#00,#4c,#00,#47,#00,#43
	db #00,#40,#00,#3c,#00,#39,#00,#35
	db #00,#32,#00,#30,#00,#2d,#00,#2a
	db #00,#28,#00,#26,#00,#24,#00,#22
	db #00,#20,#00,#1e,#00,#1c,#00,#1b
	db #00,#19,#00,#18,#00,#16,#00,#15
	db #00,#14,#00,#13,#00,#12,#00,#11
	db #00,#10,#00,#0f,#00,#0e,#00,#0d
	db #00,#0c,#00,#0b,#00,#0a,#00
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
	db #80,#40,#02,#41
	db #01,#40,#04,#40,#01
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
.l90df			; stop music & interrupt
	di
	ld a,#00
	ld (l8f83),a
	call l911e
	call #bca7
	ei
	ret
.l90ed			; init music & interrupt
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
	db #c3,#2c,#91
.l911e
	ld de,(#0039)
	ld hl,l911b
	ldi
	ldi
	ldi
	ret
.l912c		; play music interrupt
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld a,(l9156)
.l9138 equ $ + 1
	cp #04
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
	db #03,#30,#09,#09,#20,#20,#3b,#20
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
	db #00,#00,#04,#18,#02,#43,#00,#5b
.l920d equ $ + 7
.l920b equ $ + 5
.l9209 equ $ + 3
.l9207 equ $ + 1
	db #03,#5b,#04,#0e,#00,#1c,#00,#33
	db #00,#00,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#02,#03,#03,#ff,#04
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#07,#07,#07
	db #07,#07,#08,#09,#09,#ff,#0c,#0d
	db #0e,#0f,#0f,#10,#11,#11,#12,#12
	db #14,#14,#13,#15,#15,#ff,#75,#00
	db #c0,#00,#63,#01,#6c,#01,#73,#01
	db #7d,#01,#9f,#01,#a8,#01,#ca,#01
	db #d3,#01,#dc,#01,#e5,#01,#ee,#01
	db #f8,#01,#17,#02,#36,#02,#50,#02
	db #7f,#02,#c7,#02,#ef,#02,#f8,#02
	db #40,#03,#49,#03,#52,#03,#d3,#97
	db #e0,#00,#e3,#81,#5f,#d1,#e1,#02
	db #88,#32,#32,#84,#32,#82,#c4,#e2
	db #00,#54,#54,#84,#d1,#e1,#02,#32
	db #82,#c4,#e2,#00,#54,#54,#84,#d1
	db #e1,#02,#32,#82,#c4,#e2,#00,#54
	db #54,#84,#d1,#e1,#02,#32,#82,#c4
	db #e2,#00,#54,#54,#a2,#d3,#00,#84
	db #00,#82,#00,#84,#00,#82,#00,#84
	db #00,#82,#00,#84,#00,#82,#00,#00
	db #00,#00,#ff,#e0,#00,#e3,#81,#5f
	db #d1,#e1,#02,#84,#32,#82,#c4,#e2
	db #00,#54,#54,#a2,#d3,#84,#32,#e3
	db #81,#5f,#c4,#82,#54,#54,#84,#d1
	db #e1,#02,#32,#32,#a2,#d3,#e2,#00
	db #00,#e3,#81,#5f,#c4,#82,#54,#54
	db #84,#d1,#e1,#02,#00,#82,#c4,#e2
	db #00,#54,#54,#a2,#d3,#84,#32,#e3
	db #81,#5f,#c4,#82,#54,#54,#84,#d1
	db #e1,#02,#32,#32,#a2,#d3,#e2,#00
	db #00,#e3,#81,#5f,#c4,#82,#54,#54
	db #84,#d1,#e1,#02,#00,#82,#c4,#e2
	db #00,#54,#54,#a2,#d3,#84,#32,#e3
	db #81,#5f,#c4,#82,#54,#54,#84,#d1
	db #e1,#02,#32,#32,#a2,#d3,#e2,#00
	db #00,#e3,#81,#5f,#c4,#82,#54,#54
	db #84,#d1,#e1,#02,#00,#82,#c4,#e2
	db #00,#54,#54,#a2,#d3,#84,#32,#e3
	db #81,#5f,#c4,#82,#54,#54,#d1,#e1
	db #02,#00,#a2,#d3,#e2,#00,#00,#00
	db #00,#00,#00,#00,#00,#ff,#e0,#00
	db #a0,#de,#e1,#05,#8b,#2f,#ff,#e0
	db #00,#a0,#c0,#8b,#2d,#ff,#e0,#00
	db #e3,#01,#42,#c0,#8b,#31,#32,#ff
	db #e0,#0c,#a0,#c1,#e2,#00,#84,#0b
	db #0b,#82,#0b,#84,#0b,#0b,#0b,#0b
	db #82,#0b,#84,#0c,#09,#09,#82,#09
	db #84,#09,#09,#09,#09,#82,#09,#84
	db #0c,#ff,#e0,#00,#e3,#01,#42,#c0
	db #86,#30,#ff,#e0,#11,#a0,#c1,#e2
	db #00,#84,#0b,#0b,#82,#0b,#84,#0b
	db #0b,#0b,#0b,#82,#0b,#84,#0c,#09
	db #09,#82,#09,#84,#09,#09,#09,#09
	db #82,#09,#84,#0c,#ff,#e0,#00,#a0
	db #de,#e1,#05,#8b,#32,#ff,#e0,#00
	db #e3,#01,#42,#c0,#8b,#31,#ff,#e0
	db #00,#e3,#01,#42,#c0,#86,#30,#ff
	db #e0,#00,#e3,#01,#42,#c0,#86,#30
	db #ff,#e0,#00,#e3,#01,#42,#c0,#8b
	db #30,#30,#ff,#e0,#00,#a0,#cd,#e1
	db #04,#85,#33,#89,#36,#c0,#85,#35
	db #cd,#84,#39,#82,#39,#84,#38,#85
	db #38,#84,#36,#36,#2d,#8a,#2f,#c0
	db #2f,#ff,#e0,#00,#a0,#cd,#e1,#04
	db #85,#33,#89,#36,#c0,#85,#36,#cd
	db #84,#39,#82,#39,#84,#38,#85,#38
	db #84,#36,#36,#32,#8a,#33,#c0,#33
	db #ff,#e0,#00,#a0,#c1,#e2,#00,#85
	db #36,#36,#84,#36,#85,#35,#35,#84
	db #35,#85,#35,#35,#84,#35,#34,#34
	db #35,#36,#ff,#e0,#00,#a0,#cd,#e1
	db #04,#85,#36,#89,#39,#c0,#85,#2d
	db #cd,#84,#2d,#82,#2d,#84,#2d,#85
	db #2d,#84,#2f,#30,#2d,#85,#2f,#89
	db #36,#c0,#85,#36,#cd,#84,#2d,#82
	db #2d,#84,#2d,#85,#2d,#84,#2f,#30
	db #2d,#ff,#e0,#00,#a0,#cb,#e1,#01
	db #82,#2f,#2f,#2f,#2f,#2f,#2f,#2f
	db #36,#2f,#2f,#35,#2f,#2f,#34,#32
	db #34,#2d,#2d,#2d,#2d,#2d,#2d,#2d
	db #32,#2d,#2d,#34,#2d,#2d,#36,#34
	db #36,#2f,#2f,#2f,#2f,#2f,#2f,#2f
	db #36,#2f,#2f,#35,#2f,#2f,#34,#32
	db #2f,#2d,#2d,#2d,#2d,#2d,#2d,#2d
	db #30,#2d,#2d,#32,#2d,#2d,#30,#32
	db #30,#ff,#e0,#00,#a0,#de,#e1,#05
	db #82,#2a,#26,#23,#2a,#26,#23,#2a
	db #26,#23,#2a,#26,#23,#2a,#26,#23
	db #26,#28,#24,#21,#28,#24,#21,#24
	db #28,#2a,#26,#23,#2a,#26,#23,#84
	db #26,#ff,#e0,#00,#a0,#de,#e1,#05
	db #8b,#36,#ff,#e0,#05,#a0,#cb,#e1
	db #01,#82,#2f,#2f,#2f,#2f,#2f,#2f
	db #2f,#36,#2f,#2f,#35,#2f,#2f,#34
	db #32,#34,#2d,#2d,#2d,#2d,#2d,#2d
	db #2d,#32,#2d,#2d,#34,#2d,#2d,#36
	db #34,#36,#2f,#2f,#2f,#2f,#2f,#2f
	db #2f,#36,#2f,#2f,#35,#2f,#2f,#34
	db #32,#2f,#2d,#2d,#2d,#2d,#2d,#2d
	db #2d,#30,#2d,#2d,#32,#2d,#2d,#30
	db #32,#30,#ff,#e0,#00,#e3,#01,#42
	db #c0,#8b,#30,#ff,#e0,#00,#e3,#01
	db #42,#c0,#86,#30,#ff,#e0,#00,#a0
	db #de,#e1,#05,#8b,#36,#ff,#0f,#00
	db #0f,#00,#0f,#00,#0f,#00,#01,#0d
	db #82,#92,#85,#85,#83,#83,#01,#0d
	db #0d,#ff,#01,#00,#01,#00,#01,#0b
	db #0b,#ff,#01,#00,#01,#00,#01,#09
	db #09,#ff,#01,#00,#01,#00,#01,#07
	db #07,#ff,#01,#00,#01,#00,#01,#0f
	db #82,#88,#08,#00,#83,#a1,#01,#0a
	db #01,#00,#03,#00,#84,#a8,#01,#0c
	db #01,#00,#03,#00,#18,#00,#01,#0e
	db #01,#00,#03,#00,#01,#00,#01,#0e
	db #01,#00,#03,#00,#87,#e2,#01,#0e
	db #01,#00,#82,#9c,#62,#00,#01,#0f
	db #07,#00,#84,#bc,#01,#00,#01,#0d
	db #82,#84,#08,#00,#89,#d3,#01,#0a
	db #01,#00,#01,#f6,#01,#00,#01,#0c
	db #01,#00,#01,#f4,#01,#00,#01,#0e
	db #01,#00,#01,#f2,#01,#00,#01,#0b
	db #0b,#ff,#01,#00,#01,#00,#01,#0d
	db #0d,#ff,#01,#00,#01,#00,#01,#0d
	db #0c,#ff,#8a,#8a,#03,#00,#01,#09
	db #09,#ff,#01,#00,#01,#00,#01,#0e
	db #01,#00,#01,#f2,#01,#00,#01,#0c
	db #91,#e3,#a1,#63,#a1,#63,#82,#14
	db #0c,#00,#01,#00,#82,#94,#01,#0d
	db #04,#ff,#08,#00,#8a,#d3,#01,#0b
	db #04,#ff,#08,#00,#8c,#d3,#01,#09
	db #04,#ff,#08,#00,#95,#d3,#01,#07
	db #04,#ff,#08,#00,#9e,#da,#01,#0d
	db #03,#00,#08,#ff,#05,#00,#01,#0e
	db #86,#92,#89,#89,#82,#92,#01,#0b
	db #12,#00,#cf,#cf,#98,#c6,#01,#0d
	db #0c,#ff,#0d,#01,#0e,#ff,#82,#04
	db #01,#fb,#01,#05,#04,#ff,#01,#ff
	db #02,#01,#02,#ff,#82,#02,#01,#00
	db #01,#3c,#03,#ec,#01,#ef,#86,#86
	db #01,#f1,#01,#2b,#01,#e5,#8f,#0f
	db #84,#08,#06,#fe,#03,#03,#04,#00
	db #82,#04,#04,#ff,#82,#04,#85,#0a
	db #03,#fd,#85,#0a,#01,#05,#01,#00
	db #01,#63,#03,#e2,#01,#d1,#01,#04
	db #01,#38,#03,#ec,#01,#f1,#08,#00
	db #01,#01,#01,#fe,#01,#01,#82,#04
	db #04,#02,#04,#fc,#04,#02,#01,#00
	db #01,#00,#01,#01,#01,#ff,#01,#00
	db #01,#63,#02,#d8,#01,#d1,#06,#00
	db #01,#ff,#01,#00,#01,#01,#08,#00
	db #01,#01,#01,#fe,#01,#01,#08,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #01,#00,#01,#01,#01,#ff,#01,#00
	db #01,#63,#02,#d8,#01,#d1,#06,#00
	db #01,#ff,#01,#00,#01,#01,#08,#00
	db #01,#01,#01,#fe,#01,#01,#08,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #01,#00,#01,#01,#01,#ff,#01,#00
	db #01,#63,#02,#d8,#01,#d1,#06,#00
	db #01,#ff,#01,#00,#01,#01,#08,#00
	db #01,#01,#01,#fe,#01,#01,#08,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #01,#00,#01,#01,#01,#ff,#01,#00
	db #01,#63,#02,#d8,#01,#d1,#06,#00
	db #01,#ff,#01,#00,#01,#01,#08,#00
	db #01,#01,#01,#fe,#01,#01,#08,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #01,#00,#01,#01,#01,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	; db #00,#00,#00,#00,#00,#00,#00,#00
	; db #00,#00,#00,#00,#00,#00,#00,#00
	; db #00,#00,#00,#00,#00,#00,#00,#00
	; db #00,#00,#00,#00,#00,#00,#00,#00
	; db #00,#00,#00,#00,#00,#00,#00,#00
	; db #00,#00,#00,#00,#00,#00,#00,#00
	; db #00,#00,#00,#00,#00,#00,#00,#00
	; db #00,#00,#00,#00,#00,#00,#00,#00
	; db #00,#00,#00,#00,#00,#00,#00,#00
	; db #00,#00,#00,#00,#00,#00,#00,#00
	; db #00,#00,#00,#00,#00,#00,#00,#00
	; db #00,#00,#00,#00,#00,#00,#00,#00
	; db #00,#00,#00,#00,#00,#00,#00,#00
	; db #00,#00,#00,#00,#00,#00,#00,#00
	; db #00,#00,#00,#00,#00,#00,#00,#00
	; db #00,#00,#00,#00,#00,#00,#00,#00
	; db #00,#00,#00,#00,#00,#00,#00,#00
	; db #00,#00,#00,#00,#00,#00,#00,#00
	; db #00,#00,#00,#00,#00,#00,#00,#00
	; db #00,#00,#01,#00,#01,#00,#01,#0e
	; db #01,#00,#01,#f2,#01,#00,#01,#0c
	; db #91,#e3,#a1,#63,#a1,#63,#82,#14
	; db #0c,#00,#01,#00,#82,#94,#01,#0d
	; db #04,#ff,#08,#00,#8a,#d3,#01,#0b
	; db #04,#ff,#08,#00,#8c,#d3,#01,#09
	; db #04,#ff,#08,#00,#95,#d3,#01,#07
	; db #04,#ff,#08,#00,#9e,#da,#01,#0d
	; db #03,#00,#08,#ff,#05,#00,#01,#0e
	; db #86,#92,#89,#89,#82,#92,#01,#0b
	; db #12,#00,#cf,#cf,#98,#c6,#01,#0d
	; db #0c,#ff,#0d,#01,#0e,#ff,#82,#04
	; db #01,#fb,#01,#05,#04,#ff,#01,#ff
	; db #02,#01,#02,#ff,#82,#02,#01,#00
	; db #01,#3c,#03,#ec,#01,#ef,#86,#86
	; db #01,#f1,#01,#2b,#01,#e5,#8f,#0f
	; db #84,#08,#00,#00,#00,#00,#00,#00
	; db #00,#00,#00,#00,#00,#00,#00,#00
;
; #0530
; call #8900
;
.music_info
	db "No Exit (1990)(Ubi Soft)(MDO)",0
	db "Music Pro",0

	read "music_end.asm"
