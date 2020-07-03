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

	jp l90ed	; init music & interrupt
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
	db #ff,#38,#00,#00,#00,#00,#00,#ff
.l8e52 equ $ + 7
.l8e4c equ $ + 1
.l8e4b
	db #ff,#00,#51,#8e,#51,#8e,#ff,#00
.l8e59 equ $ + 6
.l8e57 equ $ + 4
.l8e53
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8e92 equ $ + 7
.l8e8d equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8e94 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8ec8 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8ecf equ $ + 4
.l8ecd equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8ee7 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8eef equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8f2b
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
.l8f82 equ $ + 7
.l8f80 equ $ + 5
.l8f7e equ $ + 3
.l8f7c equ $ + 1
.l8f7b
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8f8a equ $ + 7
.l8f89 equ $ + 6
.l8f88 equ $ + 5
.l8f87 equ $ + 4
.l8f86 equ $ + 3
.l8f85 equ $ + 2
.l8f84 equ $ + 1
.l8f83
	db #00,#00,#00,#00,#00,#00,#00,#00
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
.l9072
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
	db #00,#00,#00
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
	db #00,#00,#06,#1e,#03,#63,#00,#d2
.l920d equ $ + 7
.l920b equ $ + 5
.l9209 equ $ + 3
.l9207 equ $ + 1
	db #02,#d2,#03,#0e,#00,#2e,#00,#4c
	db #00,#03,#02,#00,#00,#00,#01,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #00,#00,#01,#00,#01,#00,#00,#04
	db #ff,#09,#08,#06,#07,#06,#07,#06
	db #07,#06,#07,#06,#07,#06,#07,#06
	db #07,#06,#07,#06,#07,#06,#07,#06
	db #07,#06,#07,#06,#07,#0a,#ff,#0e
	db #0d,#0c,#11,#0d,#10,#12,#11,#0d
	db #0d,#11,#15,#16,#15,#17,#18,#19
	db #18,#1a,#1b,#1c,#1d,#ff,#a1,#00
	db #b4,#00,#d0,#00,#e8,#00,#05,#01
	db #0c,#01,#13,#01,#25,#01,#37,#01
	db #3e,#01,#5b,#01,#6e,#01,#75,#01
	db #83,#01,#8a,#01,#a5,#01,#b9,#01
	db #c9,#01,#de,#01,#ee,#01,#01,#02
	db #28,#02,#42,#02,#5a,#02,#6c,#02
	db #7d,#02,#8e,#02,#9f,#02,#af,#02
	db #bf,#02,#4a,#97,#e0,#00,#a5,#d3
	db #e1,#02,#82,#2c,#2c,#d2,#32,#d3
	db #2c,#2c,#2c,#d2,#32,#32,#ff,#e0
	db #00,#a5,#d3,#e1,#02,#82,#2c,#2c
	db #d2,#32,#d3,#80,#2c,#d2,#32,#d3
	db #2c,#d2,#2c,#d3,#82,#2c,#d2,#32
	db #d3,#2c,#ff,#e0,#00,#a5,#d2,#e1
	db #02,#80,#2c,#2c,#2c,#2c,#2c,#2c
	db #2c,#2c,#2c,#2c,#2c,#2c,#2c,#2c
	db #2c,#2c,#ff,#e0,#00,#a0,#ca,#e1
	db #03,#85,#18,#83,#1a,#84,#1b,#18
	db #86,#1e,#84,#1b,#1a,#85,#18,#83
	db #1a,#84,#1b,#18,#86,#22,#21,#ff
	db #e0,#00,#a0,#c0,#86,#3c,#ff,#e0
	db #00,#a0,#c0,#86,#30,#ff,#e0,#00
	db #a0,#d1,#e2,#01,#82,#18,#18,#80
	db #1b,#1d,#82,#1f,#84,#16,#18,#ff
	db #e0,#00,#a0,#d1,#e2,#01,#82,#18
	db #18,#80,#1b,#1d,#82,#1f,#84,#22
	db #21,#ff,#e0,#00,#a0,#c0,#88,#26
	db #ff,#e0,#00,#a0,#ca,#e1,#04,#85
	db #18,#83,#1a,#84,#1b,#18,#86,#1e
	db #84,#1b,#1a,#85,#18,#83,#1a,#84
	db #1b,#18,#86,#22,#21,#ff,#e0,#00
	db #a0,#ca,#e1,#04,#86,#1f,#1d,#84
	db #1b,#1a,#18,#82,#18,#16,#86,#18
	db #ff,#e0,#86,#a0,#c0,#86,#30,#ff
	db #e0,#00,#a0,#d6,#e1,#03,#8b,#30
	db #ca,#e1,#09,#88,#3f,#ff,#e0,#00
	db #a0,#c0,#88,#30,#ff,#e0,#00,#a0
	db #c0,#85,#02,#83,#02,#84,#02,#02
	db #86,#02,#84,#02,#02,#85,#02,#83
	db #02,#84,#02,#02,#86,#02,#02,#ff
	db #e0,#00,#e3,#81,#5f,#c8,#e2,#00
	db #84,#00,#00,#c0,#00,#82,#c8,#00
	db #88,#c0,#05,#ff,#e0,#02,#a0,#c1
	db #e1,#0e,#82,#24,#24,#24,#24,#24
	db #24,#24,#24,#ff,#e0,#00,#a0,#c1
	db #e1,#02,#82,#2b,#c0,#2b,#2b,#c1
	db #2b,#2b,#c0,#2b,#c1,#2b,#c0,#2b
	db #ff,#e0,#02,#a0,#c1,#e1,#0e,#82
	db #30,#30,#30,#30,#30,#30,#30,#30
	db #ff,#e0,#00,#a0,#cc,#e1,#03,#8a
	db #35,#e3,#01,#42,#c8,#e1,#0b,#43
	db #82,#c0,#30,#ff,#e0,#00,#a0,#d1
	db #e2,#05,#82,#2b,#c0,#85,#2b,#d1
	db #82,#29,#c0,#85,#24,#d1,#82,#27
	db #c0,#85,#24,#d1,#82,#26,#c0,#85
	db #24,#d1,#86,#24,#82,#24,#85,#22
	db #86,#24,#ff,#e0,#00,#a0,#d1,#e2
	db #05,#85,#30,#82,#33,#83,#35,#33
	db #84,#37,#35,#82,#33,#81,#30,#33
	db #83,#35,#82,#33,#ff,#e0,#00,#a0
	db #d1,#e2,#05,#86,#30,#82,#2b,#84
	db #2e,#86,#30,#82,#2e,#81,#2b,#2e
	db #83,#30,#82,#33,#ff,#e0,#00,#a0
	db #d1,#e2,#05,#86,#30,#82,#2b,#84
	db #2e,#88,#30,#c0,#82,#30,#ff,#e0
	db #00,#a0,#c0,#82,#30,#d1,#e2,#05
	db #30,#33,#30,#35,#30,#2e,#30,#ff
	db #e0,#00,#a0,#c0,#82,#30,#d1,#e2
	db #05,#30,#33,#30,#37,#35,#33,#37
	db #ff,#e0,#00,#a0,#c0,#82,#30,#d1
	db #e2,#05,#30,#33,#30,#2e,#2b,#2e
	db #30,#ff,#e0,#00,#a0,#d1,#e2,#05
	db #86,#30,#c0,#82,#30,#d1,#30,#2e
	db #30,#ff,#e0,#00,#a0,#d1,#e2,#05
	db #86,#30,#c0,#82,#30,#d1,#30,#33
	db #30,#ff,#e0,#00,#a0,#d1,#e2,#05
	db #86,#37,#35,#84,#33,#32,#30,#82
	db #30,#2e,#86,#30,#ff,#0f,#00,#0f
	db #00,#0f,#00,#0f,#00,#01,#0a,#85
	db #93,#82,#8a,#01,#ff,#01,#0d,#83
	db #a7,#01,#00,#01,#00,#01,#0b,#83
	db #a1,#01,#00,#01,#00,#01,#09,#83
	db #9b,#01,#00,#01,#00,#01,#07,#83
	db #95,#01,#00,#01,#00,#01,#0a,#9e
	db #3c,#09,#00,#01,#00,#01,#0c,#01
	db #00,#03,#00,#01,#00,#0c,#01,#97
	db #97,#84,#aa,#01,#00,#01,#0d,#01
	db #00,#03,#00,#01,#00,#01,#0a,#07
	db #00,#8c,#ae,#90,#cd,#01,#0e,#01
	db #00,#82,#9c,#62,#00,#01,#0f,#07
	db #00,#84,#bc,#01,#00,#01,#0f,#87
	db #b6,#01,#f9,#01,#00,#01,#0b,#02
	db #00,#01,#f5,#01,#00,#01,#0d,#02
	db #00,#01,#f3,#01,#00,#01,#0f,#02
	db #00,#01,#f1,#01,#00,#01,#0b,#86
	db #97,#01,#fa,#01,#00,#01,#0e,#07
	db #fe,#01,#00,#01,#00,#01,#0f,#01
	db #f5,#01,#fc,#01,#00,#01,#09,#09
	db #ff,#01,#00,#01,#00,#01,#0e,#01
	db #00,#01,#f2,#01,#00,#01,#0a,#86
	db #a5,#27,#00,#87,#26,#82,#14,#0c
	db #00,#01,#00,#82,#94,#01,#0d,#04
	db #ff,#08,#00,#8a,#d3,#01,#0b,#04
	db #ff,#08,#00,#8c,#d3,#01,#09,#04
	db #ff,#08,#00,#95,#d3,#01,#0c,#04
	db #00,#83,#a4,#53,#00,#01,#0d,#03
	db #00,#08,#ff,#05,#00,#01,#0f,#09
	db #ff,#09,#01,#0f,#ff,#01,#0f,#02
	db #00,#0c,#ff,#0c,#01,#01,#0d,#0c
	db #ff,#0d,#01,#0e,#ff,#85,#09,#8a
	db #8a,#83,#8a,#01,#03,#01,#02,#84
	db #08,#82,#88,#84,#08,#01,#21,#01
	db #1d,#03,#ee,#01,#fc,#86,#86,#01
	db #f1,#01,#2b,#01,#e5,#88,#08,#82
	db #04,#04,#fe,#03,#02,#08,#00,#84
	db #08,#82,#88,#84,#08,#85,#0a,#03
	db #fd,#85,#0a,#01,#05,#01,#00,#01
	db #63,#03,#e2,#01,#d1,#01,#04,#01
	db #38,#03,#ec,#01,#f1,#03,#00,#04
	db #02,#04,#fc,#01,#05,#82,#04,#04
	db #02,#04,#fc,#04,#02,#01,#00,#01
	db #00,#01,#fd,#01,#00,#01,#00,#01
	db #63,#02,#d8,#01,#d1,#06,#00,#01
	db #ff,#01,#00,#01,#01,#05,#00,#01
	db #00,#09,#03,#01,#e4,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff,#01,#00,#01
	db #63,#02,#d8,#01,#d1,#06,#00,#01
	db #ff,#01,#00,#01,#01,#08,#00,#01
	db #01,#01,#fe,#01,#01,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff,#01,#00,#01
	db #63,#02,#d8,#01,#d1,#06,#00,#01
	db #ff,#01,#00,#01,#01,#08,#00,#01
	db #01,#01,#fe,#01,#01,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff,#01,#00,#01
	db #63,#02,#d8,#01,#d1,#06,#00,#01
	db #ff,#01,#00,#01,#01,#08,#00,#01
	db #01,#01,#fe,#01,#01,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff,#e0,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#c0,#00,#00,#00
	db #00,#40,#30,#20,#00,#00,#00,#10
	db #00,#70,#30,#30,#00,#10,#00,#64
	db #b0,#30,#aa,#10,#00,#75,#ff,#f0
	db #aa,#50,#30,#f5,#00,#f0,#aa,#00
	db #f0,#ff,#00,#55,#aa,#00,#55,#aa
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#30,#07,#80,#4f
	db #c4,#fe,#4f,#e7,#ce,#3c,#61,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#10,#00,#00,#00,#00,#00,#40
	db #00,#00,#00,#00,#00,#40,#00,#00
	db #00,#00,#60,#c0,#c0,#20,#00,#00
	db #40,#60,#20,#00,#00,#00,#10,#40
	db #70,#30,#30,#00,#10,#10,#64,#b0
	db #30,#aa,#10,#00,#75,#ff,#f0,#aa
	db #50,#30,#f5,#00,#f0,#aa,#00,#f0
	db #ff,#00,#55,#aa,#00,#55,#aa,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #10,#01,#00,#fe,#07,#80,#5f,#c5
	db #fe,#4f,#e7,#ce,#3c,#61,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#10,#00
	db #00,#00,#00,#00,#40,#00,#00,#00
	db #00,#10,#c0,#90,#00,#20,#00,#40
	db #60,#20,#10,#90,#00,#10,#10,#70
	db #30,#30,#00,#10,#00,#64,#b0,#30
	db #aa,#10,#00,#75,#ff,#f0,#aa,#50
	db #30,#f5,#00,#f0,#aa,#00,#f0,#ff
	db #00,#55,#aa,#00,#55,#aa,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#10
	db #01,#00,#7c,#87,#9c,#5f,#c4,#fe
	db #4f,#e7,#ce,#3c,#61,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#10,#00,#00,#20,#00
	db #00,#60,#20,#00,#80,#00,#40,#30
	db #20,#60,#c0,#20,#10,#00,#70,#30
	db #90,#00,#10,#00,#64,#b0,#30,#aa
	db #10,#00,#75,#ff,#f0,#aa,#50,#30
	db #f5,#00,#f0,#aa,#00,#f0,#ff,#00
	db #55,#aa,#00,#55,#aa,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#38,#87,#be,#4f,#c4,#fe,#4f
	db #e7,#ce,#3c,#61,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#20
	db #00,#00,#00,#00,#00,#80,#00,#00
	db #c0,#00,#00,#80,#00,#40,#30,#30
	db #c0,#c0,#90,#10,#00,#70,#30,#90
	db #00,#10,#00,#64,#b0,#90,#aa,#10
	db #00,#75,#ff,#70,#aa,#50,#30,#f5
	db #00,#f0,#aa,#00,#f0,#ff,#00,#55
	db #aa,#00,#55,#aa,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#80,#08
	db #30,#87,#ff,#4f,#c4,#fe,#4f,#e7
	db #ce,#3c,#61,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#55,#03,#03
	db #aa,#00,#00,#fe,#3c,#3c,#7d,#00
	db #00,#fe,#3c,#94,#57,#00,#55,#a9
	db #3c,#c0,#06,#aa,#55,#a9,#3c,#68
	db #2c,#aa,#55,#a9,#16,#68,#2c,#aa
	db #55,#a9,#16,#3c,#2c,#aa,#55,#a9
	db #16,#3c,#06,#aa,#00,#fe,#03,#3c
	db #0c,#aa,#00,#fe,#03,#03,#0c,#00
	db #00,#55,#fc,#ac,#5d,#00,#00,#55
	db #0c,#0c,#aa,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0f,#01,#f8,#3f,#c3,#fc,#7f
	db #e7,#fe,#7f,#e7,#fe,#7f,#e3,#fe
	db #3f,#c1,#fc,#1f,#80,#f0,#00,#00
	db #00,#00,#40,#c0,#c0,#08,#00,#00
	db #40,#3c,#7c,#08,#00,#00,#94,#3c
	db #fc,#0e,#00,#00,#94,#7c,#fc,#ac
	db #00,#40,#2c,#0c,#0c,#ad,#08,#40
	db #2c,#0c,#5c,#d4,#08,#94,#2c,#0f
	db #bc,#d4,#0e,#94,#2c,#5e,#bc,#d4
	db #ac,#94,#ac,#fc,#3c,#d4,#ac,#94
	db #2c,#bc,#bc,#d4,#ac,#94,#ac,#7c
	db #3c,#d4,#ac,#94,#ac,#3c,#3c,#d4
	db #0e,#40,#ac,#e8,#c0,#d4,#08,#40
	db #7c,#c0,#c0,#85,#08,#00,#d4,#fc
	db #fc,#ac,#00,#00,#94,#fc,#fc,#0e
	db #00,#00,#40,#fc,#fc,#08,#00,#00
	db #40,#0c,#0c,#08,#00,#1f,#81,#f8
	db #3f,#c3,#fc,#7f,#e7,#fe,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#7f
	db #e7,#fe,#3f,#c3,#fc,#1f,#81,#f8
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #50,#88,#00,#00,#00,#00,#24,#0c
	db #00,#00,#00,#50,#08,#ee,#08,#00
	db #00,#44,#08,#ee,#08,#00,#00,#50
	db #08,#fa,#08,#00,#00,#44,#08,#ee
	db #08,#00,#00,#44,#08,#fa,#08,#00
	db #00,#44,#5d,#ba,#08,#00,#00,#55
	db #4c,#a4,#00,#00,#00,#00,#ae,#5d
	db #00,#00,#00,#00,#18,#06,#00,#00
	db #00,#04,#42,#29,#08,#00,#00,#04
	db #3c,#7c,#08,#00,#00,#04,#38,#07
	db #08,#00,#00,#04,#42,#a7,#08,#00
	db #00,#00,#58,#0e,#00,#00,#00,#00
	db #04,#08,#00,#00,#00,#00,#60,#0f
	db #01,#b8,#1b,#81,#b8,#1b,#81,#b8
	db #1f,#81,#f0,#0f,#00,#f0,#1f,#81
	db #f8,#1f,#81,#f8,#0f,#00,#60,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#00,#00,#00,#00,#04,#a4,#00
	db #00,#00,#00,#18,#08,#00,#00,#00
	db #0c,#84,#00,#00,#00,#04,#da,#08
	db #00,#00,#00,#4d,#e0,#08,#00,#00
	db #0c,#da,#c4,#08,#00,#00,#04,#e0
	db #8c,#00,#00,#00,#04,#c4,#08,#00
	db #00,#aa,#e8,#0c,#00,#00,#00,#55
	db #d1,#04,#00,#00,#00,#55,#a6,#04
	db #00,#00,#00,#00,#aa,#00,#00,#00
	db #00,#00,#aa,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#30
	db #07,#00,#e0,#3c,#07,#80,#f8,#3f
	db #81,#f0,#1e,#0b,#c0,#74,#07,#40
	db #20,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#15,#80
	db #00,#00,#00,#00,#97,#c5,#00,#00
	db #00,#00,#3f,#c0,#00,#00,#00,#41
	db #3f,#c0,#8a,#00,#00,#15,#3f,#c0
	db #80,#00,#00,#97,#3f,#c0,#c5,#00
	db #41,#3f,#3f,#c0,#c0,#8a,#15,#3f
	db #3f,#c0,#c0,#80,#41,#c3,#c3,#33
	db #33,#22,#04,#c3,#c3,#33,#33,#82
	db #00,#49,#c3,#33,#63,#00,#00,#41
	db #c3,#33,#22,#00,#00,#04,#c3,#33
	db #82,#00,#00,#00,#c3,#33,#00,#00
	db #00,#00,#49,#63,#00,#00,#00,#00
	db #41,#22,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#60,#0f,#00,#f0
	db #1f,#81,#f8,#3f,#c7,#fe,#7f,#e7
	db #fe,#7f,#e3,#fc,#1f,#81,#f8,#0f
	db #00,#f0,#06,#00,#00,#00,#00,#00
	db #00,#00,#0c,#00,#00,#00,#00,#5d
	db #cc,#00,#00,#00,#5d,#dd,#f0,#00
	db #00,#55,#dd,#f5,#c0,#00,#00,#5d
	db #f5,#d5,#30,#00,#04,#f5,#d5,#75
	db #f0,#0c,#48,#d5,#75,#f5,#f0,#c0
	db #d0,#f5,#f5,#f5,#e4,#cc,#cc,#dd
	db #dd,#dd,#d8,#00,#04,#5d,#f5,#f5
	db #e4,#ff,#ff,#5d,#5d,#5d,#0c,#ff
	db #ff,#ff,#dd,#dd,#cc,#ff,#ff,#ff
	db #5d,#5d,#0c,#00,#00,#55,#ff,#5d
	db #0c,#00,#00,#00,#ff,#ff,#0c,#00
	db #00,#00,#00,#ff,#ff,#00,#00,#00
	db #00,#00,#ff,#00,#00,#00,#00,#00
	db #00,#00,#30,#0f,#03,#f0,#7f,#0f
	db #f1,#ff,#ff,#ff,#ff,#ff,#f1,#ff
	db #ff,#ff,#ff,#ff,#f0,#7f,#03,#f0
	db #0f,#00,#30,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#f0,#a0,#00
	db #00,#00,#50,#c0,#f0,#00,#00,#00
	db #e0,#70,#d0,#08,#00,#50,#90,#f0
	db #a4,#08,#00,#e0,#70,#f0,#18,#08
	db #50,#cc,#f0,#a4,#c8,#08,#a4,#0c
	db #58,#18,#e0,#08,#0c,#0c,#0c,#c8
	db #d8,#08,#0c,#0c,#0c,#b0,#4c,#08
	db #d8,#70,#e4,#d8,#4c,#08,#4c,#cc
	db #8c,#cc,#cc,#08,#4c,#cc,#8c,#cc
	db #cc,#08,#4c,#cc,#8c,#cc,#8c,#aa
	db #4c,#cc,#8c,#cc,#5d,#00,#4c,#cc
	db #8c,#8c,#aa,#00,#0c,#0c,#0c,#5d
	db #00,#00,#0c,#0c,#0c,#aa,#00,#00
	db #00,#00,#38,#07,#c0,#fe,#1f,#e3
	db #fe,#7f,#ef,#fe,#ff,#ef,#fe,#ff
	db #ef,#fe,#ff,#ef,#fe,#ff,#cf,#f8
	db #ff,#0f,#e0,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#b0,#00,#00,#00,#00
	db #00,#30,#75,#00,#00,#00,#d8,#b0
	db #75,#00,#00,#d8,#f0,#cc,#ff,#00
	db #44,#f0,#e4,#e4,#aa,#00,#d8,#f0
	db #d8,#8c,#aa,#00,#a4,#4c,#e4,#0c
	db #aa,#44,#4c,#8c,#8c,#5d,#aa,#04
	db #c8,#cc,#0c,#5d,#00,#04,#c8,#e4
	db #0c,#ff,#00,#04,#d8,#cc,#0c,#aa
	db #00,#00,#4c,#8c,#5d,#aa,#00,#00
	db #ae,#0c,#ff,#00,#00,#00,#55,#ff
	db #aa,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#c0,#0f,#03,#f0,#ff
	db #1f,#e3,#fe,#3f,#e7,#fe,#7f,#c7
	db #fc,#7f,#83,#f8,#3f,#01,#e0,#00
	db #00,#00,#ae,#08,#55,#5d,#55,#0c
	db #18,#aa,#ae,#aa,#ae,#5d,#5d,#55
	db #f5,#55,#a4,#aa,#aa,#ba,#aa,#fa
	db #5d,#00,#55,#75,#55,#f0,#aa,#55
	db #ae,#aa,#fa,#f5,#00,#ae,#5d,#55
	db #70,#aa,#55,#0c,#aa,#fa,#30,#00
	db #fa,#5d,#55,#f0,#e0,#f5,#a4,#aa
	db #fa,#5d,#e0,#70,#f5,#55,#0c,#aa
	db #50,#70,#aa,#ae,#5d,#00,#fa,#75
	db #55,#a4,#aa,#55,#f0,#aa,#fa,#5d
	db #00,#fa,#f5,#55,#30,#aa,#55,#f0
	db #aa,#ba,#75,#55,#ae,#5d,#55,#f0
	db #aa,#ae,#0c,#aa,#fa,#5d,#55,#24
	db #5d,#00,#a4,#aa,#ff,#75,#e7,#7e
	db #ef,#dd,#eb,#bc,#77,#9e,#f3,#de
	db #7b,#cf,#7f,#ef,#fd,#e7,#bc,#f7
	db #9e,#f3,#de,#7b,#df,#7b,#ef,#7c
	db #ef,#ae,#08,#55,#5d,#55,#0c,#58
	db #aa,#ae,#aa,#ae,#5d,#5d,#55,#75
	db #55,#a4,#aa,#aa,#ba,#aa,#fa,#5d
	db #00,#55,#f5,#55,#70,#aa,#55,#ae
	db #aa,#ba,#75,#00,#ae,#5d,#55,#b0
	db #aa,#55,#0c,#aa,#ba,#f0,#00,#fa
	db #5d,#55,#30,#e0,#f5,#24,#aa,#fa
	db #5d,#e0,#b0,#75,#55,#0c,#aa,#50
	db #b0,#aa,#ae,#5d,#00,#ba,#f5,#55
	db #24,#aa,#55,#30,#aa,#ba,#5d,#00
	db #fa,#75,#55,#b0,#aa,#55,#f0,#aa
	db #ba,#f5,#55,#ae,#5d,#55,#30,#aa
	db #ae,#0c,#aa,#fa,#5d,#55,#a4,#5d
	db #00,#a4,#aa,#ff,#f5,#e7,#7e,#ef
	db #dd,#eb,#bc,#77,#9e,#f3,#de,#7b
	db #cf,#7f,#ef,#fd,#e7,#bc,#f7,#9e
	db #f3,#de,#7b,#df,#7b,#ef,#7c,#ef
	db #ae,#08,#55,#5d,#55,#0c,#58,#aa
	db #ae,#aa,#ae,#5d,#5d,#55,#75,#55
	db #a4,#aa,#aa,#fa,#aa,#ba,#5d,#00
	db #55,#f5,#55,#30,#aa,#55,#ae,#aa
	db #fa,#75,#00,#ae,#5d,#55,#f0,#aa
	db #55,#0c,#aa,#fa,#f0,#00,#ba,#5d
	db #55,#70,#e0,#f5,#24,#aa,#ba,#5d
	db #f0,#f0,#75,#55,#0c,#aa,#50,#f0
	db #aa,#ae,#5d,#00,#fa,#f5,#55,#24
	db #aa,#55,#70,#aa,#fa,#5d,#00,#ba
	db #75,#55,#f0,#aa,#55,#b0,#aa,#fa
	db #f5,#55,#ae,#5d,#55,#70,#aa,#ae
	db #0c,#aa,#ba,#5d,#55,#a4,#5d,#00
	db #a4,#aa,#ff,#f5,#e7,#7e,#ef,#dd
	db #eb,#bc,#77,#9e,#f3,#de,#7b,#cf
	db #7f,#ef,#fd,#e7,#bc,#f7,#9e,#f3
	db #de,#7b,#df,#7b,#ef,#7c,#ef,#ae
	db #08,#55,#5d,#55,#0c,#58,#aa,#ae
	db #aa,#ae,#5d,#5d,#55,#f5,#55,#24
	db #aa,#aa,#fa,#aa,#ba,#5d,#00,#55
	db #f5,#55,#b0,#aa,#55,#ae,#aa,#fa
	db #f5,#00,#ae,#5d,#55,#f0,#aa,#55
	db #0c,#aa,#fa,#f0,#00,#ba,#5d,#55
	db #f0,#e0,#f5,#a4,#aa,#ba,#5d,#f0
	db #f0,#f5,#55,#0c,#aa,#50,#f0,#aa
	db #ae,#5d,#00,#fa,#f5,#55,#a4,#aa
	db #55,#f0,#aa,#fa,#5d,#00,#ba,#f5
	db #55,#f0,#aa,#55,#30,#aa,#fa,#f5
	db #55,#ae,#5d,#55,#f0,#aa,#ae,#0c
	db #aa,#ba,#5d,#55,#a4,#5d,#00,#a4
	db #aa,#ff,#f5,#e7,#7e,#ef,#dd,#eb
	db #bc,#77,#9e,#f3,#de,#7b,#cf,#7f
	db #ef,#fd,#e7,#bc,#f7,#9e,#f3,#de
	db #7b,#df,#7b,#ef,#7c,#ef,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
;
; #3e54
; call #8906	; init music
;
.music_info
	db "Puffy's Saga (1990)(UBI Soft)()",0
	db "Music Pro",0

	read "music_end.asm"
