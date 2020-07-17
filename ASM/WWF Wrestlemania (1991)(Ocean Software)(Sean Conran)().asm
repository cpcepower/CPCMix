; Music of WWF Wrestlemania (1991)(Ocean Software)(Sean Conran)()
; Ripped by Megachur the 24/07/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "WWFWREST.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #0940

	read "music_header.asm"

.l0940
	db #44
	db #11,#34,#11,#24,#11,#14,#11,#04
	db #11,#f4,#10,#e3,#10,#d3,#10,#c3
	db #10,#b3,#10,#a4,#10,#95,#10,#86
	db #10,#77,#10,#68,#10,#59,#10,#4a
	db #10,#3b,#10,#2c,#10,#1d,#10,#0e
	db #10,#00,#10,#f1,#0f,#e2,#0f,#d3
	db #0f,#c4,#0f,#b6,#0f,#a7,#0f,#99
	db #0f,#8b,#0f,#7d,#0f,#6e,#0f,#60
	db #0f,#52,#0f,#44,#0f,#35,#0f,#27
	db #0f,#19,#0f,#0b,#0f,#fc,#0e,#ee
	db #0e,#e0,#0e,#d3,#0e,#c6,#0e,#b9
	db #0e,#ac,#0e,#9e,#0e,#91,#0e,#84
	db #0e,#77,#0e,#6a,#0e,#5d,#0e,#50
	db #0e,#43,#0e,#36,#0e,#29,#0e,#1c
	db #0e,#0f,#0e,#02,#0e,#f5,#0d,#e8
	db #0d,#db,#0d,#ce,#0d,#c1,#0d,#b4
	db #0d,#a7,#0d,#9a,#0d,#8d,#0d,#80
	db #0d,#74,#0d,#67,#0d,#5a,#0d,#4d
	db #0d,#40,#0d,#34,#0d,#28,#0d,#1c
	db #0d,#10,#0d,#04,#0d,#f8,#0c,#ec
	db #0c,#e0,#0c,#d4,#0c,#c8,#0c,#bc
	db #0c,#b0,#0c,#a4,#0c,#98,#0c,#8c
	db #0c,#80,#0c,#75,#0c,#6a,#0c,#5f
	db #0c,#54,#0c,#49,#0c,#3e,#0c,#33
.l0a03 equ $ + 2
	db #0c,#28,#0c,#1d,#0c,#12,#0c,#07
	db #0c,#fc,#0b,#f1,#0b,#e6,#0b,#db
	db #0b,#d0,#0b,#c5,#0b,#bb,#0b,#b0
	db #0b,#a6,#0b,#9b,#0b,#91,#0b,#86
	db #0b,#7c,#0b,#71,#0b,#67,#0b,#5c
	db #0b,#52,#0b,#47,#0b,#3d,#0b,#32
	db #0b,#28,#0b,#1e,#0b,#14,#0b,#0a
	db #0b,#00,#0b,#f6,#0a,#ec,#0a,#e2
	db #0a,#d8,#0a,#cd,#0a,#c3,#0a,#b9
	db #0a,#af,#0a,#a5,#0a,#9b,#0a,#91
	db #0a,#87,#0a,#7e,#0a,#74,#0a,#6b
	db #0a,#61,#0a,#58,#0a,#4e,#0a,#45
.l0a61
	db #0a,#3b,#0a,#32,#0a,#28,#0a,#1f
	db #0a,#15,#0a,#0c,#0a,#02,#0a,#f9
	db #09,#ef,#09,#e6,#09,#dd,#09,#d4
	db #09,#cb,#09,#c2,#09,#b9,#09,#b0
	db #09,#a7,#09,#9e,#09,#95,#09,#8c
	db #09,#83,#09,#7a,#09,#71,#09,#68
	db #09,#5f,#09,#57,#09,#4f,#09,#46
	db #09,#3e,#09,#36,#09,#2e,#09,#25
	db #09,#1d,#09,#15,#09,#0c,#09,#04
	db #09,#fc,#08,#f4,#08,#eb,#08,#e3
	db #08,#db,#08,#d3,#08,#cb,#08,#c2
	db #08,#ba,#08,#b2,#08,#aa,#08,#a2
	db #08,#9a,#08,#92,#08,#8a,#08,#82
	db #08,#7a,#08,#72,#08,#69,#08,#61
	db #08,#59,#08,#52,#08,#4a,#08,#43
	db #08,#3b,#08,#34,#08,#2c,#08,#25
	db #08,#1e,#08,#16,#08,#0f,#08,#07
	db #08,#00,#08,#f8,#07,#f1,#07,#e9
	db #07,#11,#30,#63,#19
;
.real_init_music
.l0af6
;
	xor a
	ld (l0c4c),a
	ld a,h
	ld (l1120),a
	sla l
	ld a,l
	add a
	add l
	ld l,a
	ld h,#00
	ld de,l1189
	add hl,de
	ld a,(hl)
	inc hl
	push hl
	ld h,(hl)
	ld l,a
	ld de,l0b19
	ld (l0ba6),de
	jp l0b85
.l0b19
	ld de,l0c57
	ld (l0ba6),de
	pop hl
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld h,(hl)
	ld l,a
	ld de,l0b31
	ld (l0bce),de
	jp l0bad
.l0b31
	ld de,l0f14
	ld (l0bce),de
	pop hl
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l0b48
	ld (l0bf5),de
	jp l0bd5
.l0b48
	ld de,l0dab
	ld (l0bf5),de
	ld a,#06
	ld (l1188),a
	xor a
	ld (l1106),a
	ld (l0ce0),a
	ld (l0fac),a
	ld (l0e34),a
	inc a
	ld (l0c66),a
	ld (l0f23),a
	ld (l0dba),a
	ld a,#3f
	ld (l1187),a
	ld a,#ff
	ld (l1143),a
	ld (l0c4c),a
	ld (l0bfc),a
	ret
.l0b7c
	ld a,(hl)
	cp b
	jr z,l0bf7
	ld e,a
	xor a
	ld d,a
	sbc hl,de
.l0b85
	ld a,(hl)
	inc hl
	jp l0b93
.l0b8b equ $ + 1
.l0b8a
	ld hl,#c100
	ld a,(hl)
	inc hl
	cp b
	jp z,l0b7c
.l0b93
	ld (l0b8b),hl
	ld de,l11c7
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l0c58),hl
.l0ba6 equ $ + 1
	jp l0bb2
.l0ba8
	ld e,(hl)
	ld d,#00
	sbc hl,de
.l0bad
	ld a,(hl)
	inc hl
	jp l0bbb
.l0bb3 equ $ + 1
.l0bb2
	ld hl,#c102
	ld a,(hl)
	inc hl
	cp b
	jp z,l0ba8
.l0bbb
	ld (l0bb3),hl
	ld de,l11d3
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l0f15),hl
.l0bce equ $ + 1
	jp l0bda
.l0bd0
	ld e,(hl)
	ld d,#00
	sbc hl,de
.l0bd5
	ld a,(hl)
	inc hl
	jp l0be2
.l0bdb equ $ + 1
.l0bda
	ld hl,#c104
	ld a,(hl)
	inc hl
	cp b
	jr z,l0bd0
.l0be2
	ld (l0bdb),hl
	ld de,l11df
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l0dac),hl
.l0bf5 equ $ + 1
	jp l0b8a
.l0bf7
	inc a
	ld (l0c4c),a
.l0bfc equ $ + 1
.l0bfb
	ld a,#00
	and a
	jp z,l1142
	inc a
	ld (l1184),a
	ld (l1185),a
	ld (l1186),a
	ld (l0bfc),a
	ld a,#3f
	ld (l1187),a
	jp l1142
;
.real_play_music
.l0c16
;
	ld de,#f6f4
	ld l,#00
	ld bc,#f707
	ld a,#86
	out (c),a
	ld b,e
	out (c),c
	ld b,d
	ld a,#c0
	out (c),l
	out (c),a
	out (c),l
	ld b,#f7
	ld a,#96
	out (c),a
	ld b,d
	ld a,#40
	out (c),a
	ld b,e
	in a,(c)
	ld b,d
	out (c),l
	ld b,#ff
	and #c0
	ld c,a
	ld a,(l1187)
	and #3f
	or c
	ld c,a
.l0c4c equ $ + 1
	ld a,#00
	and a
	jr z,l0bfb
	ld hl,l0c66
	dec (hl)
	jp nz,l0d35
.l0c58 equ $ + 1
.l0c57
	ld hl,#c000
.l0c5a
	ld e,(hl)
	inc hl
	ld ix,l0c67
	ld d,#00
	add ix,de
	jp (ix)
.l0c67 equ $ + 1
.l0c66
	ld bc,#b9c3
	inc c
	jp l0cc1
	jp l0cc9
	jp l0cd4
	jp l0cdf
	jp l0cdf
	jp l0cee
	jp l0cfd
	jp l0cfd
	jp l0cfd
	jp l0cfd
	jp l0c9e
	jp l0cfd
	jp l0cfd
	jp l0d04
	jp l0b8a
	ld a,b
	ld (l0d3b),a
	ld (l0d5b),a
.l0c9e
	ld a,b
	ld (l0d36),a
	ld (l0d56),a
	ld a,(hl)
	inc hl
	ld (l0d69),a
	ld a,(hl)
	inc hl
	ld (l0c66),a
	ld (l0c58),hl
	set 3,c
	res 0,c
	jp l0d35
	ld a,(hl)
	inc hl
	ld (l0d49),a
	jp l0c5a
.l0cc1
	ld a,(hl)
	inc hl
	ld (l0d7a),a
	jp l0c5a
.l0cc9
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l0d10),de
	jp l0c5a
.l0cd4
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l0d23),de
	jp l0c5a
.l0ce0 equ $ + 1
.l0cdf
	ld a,#00
	inc a
	jp nz,l0c5a
	ld (l0ce0),a
.l0ce9 equ $ + 1
	ld hl,#ce3f
	jp l0c5a
.l0cee
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l0ce9),hl
	ld a,b
	ld (l0ce0),a
	ex de,hl
	jp l0c5a
.l0cfd
	ld a,b
	ld (l0d3b),a
	ld (l0d5b),a
.l0d04
	ld a,(hl)
	inc hl
	ld (l0c66),a
	ld (l0c58),hl
	jp l0d35
.l0d10 equ $ + 1
.l0d0f
	ld hl,#c3d1
	xor a
	ld (l0d3b),a
	jp l0d42
.l0d19
	ld e,(hl)
	inc e
	ld d,#00
	sbc hl,de
	jp l0d42
.l0d23 equ $ + 1
.l0d22
	ld hl,#cf3a
	xor a
	ld (l0d5b),a
	jp l0d62
.l0d2c
	ld e,(hl)
	inc e
	ld d,#00
	sbc hl,de
	jp l0d62
.l0d36 equ $ + 1
.l0d35
	ld a,#00
	and a
	jr z,l0d55
.l0d3b equ $ + 1
	ld a,#ff
	inc a
	jr z,l0d0f
.l0d40 equ $ + 1
	ld hl,#c5a2
.l0d42
	ld a,(hl)
	inc hl
	cp #80
	jr z,l0d19
.l0d49 equ $ + 1
	ld d,#01
	add d
	jp p,l0d4f
	xor a
.l0d4f
	ld (l1125),a
	ld (l0d40),hl
.l0d56 equ $ + 1
.l0d55
	ld a,#00
	and a
	jr z,l0da4
.l0d5b equ $ + 1
	ld a,#ff
	inc a
	jr z,l0d22
.l0d60 equ $ + 1
	ld hl,#c624
.l0d62
	ld a,(hl)
	inc hl
	cp #80
	jr z,l0d2c
.l0d69 equ $ + 1
	ld d,#01
	add d
	ld (l0d60),hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l0940
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l0d7a equ $ + 1
	ld a,#01
	ld hl,l0d84
	add l
	ld l,a
	jr nc,l0d83
	inc h
.l0d83
	jp (hl)
.l0d84
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	ld (l117c),de
.l0da4
	ld hl,l0dba
	dec (hl)
	jp nz,l0e9e
.l0dac equ $ + 1
.l0dab
	ld hl,#c28b
.l0dae
	ld e,(hl)
	inc hl
	ld ix,l0dbb
	ld d,#00
	add ix,de
	jp (ix)
.l0dba
	ld (bc),a
.l0dbb
	jp l0e0d
	jp l0e15
	jp l0e1d
	jp l0e28
	jp l0e33
	jp l0e33
	jp l0e42
	jp l0e51
	jp l0e51
	jp l0e66
	jp l0e66
	jp l0df2
	jp l0e66
	jp l0e66
	jp l0e6d
	jp l0bda
	ld a,b
	ld (l0ea4),a
	ld (l0ec4),a
.l0df2
	ld a,b
	ld (l0e9f),a
	ld (l0ebf),a
	ld a,(hl)
	inc hl
	ld (l0ed2),a
	ld a,(hl)
	inc hl
	ld (l0dba),a
	ld (l0dac),hl
	set 5,c
	res 2,c
	jp l0e9e
.l0e0d
	ld a,(hl)
	inc hl
	ld (l0eb2),a
	jp l0dae
.l0e15
	ld a,(hl)
	inc hl
	ld (l0ee3),a
	jp l0dae
.l0e1d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l0e79),de
	jp l0dae
.l0e28
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l0e8c),de
	jp l0dae
.l0e34 equ $ + 1
.l0e33
	ld a,#00
	inc a
	jp nz,l0dae
	ld (l0e34),a
.l0e3d equ $ + 1
	ld hl,#c64a
	jp l0dae
.l0e42
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l0e3d),hl
	ld a,b
	ld (l0e34),a
	ex de,hl
	jp l0dae
.l0e51
	xor a
	ld (l0e9f),a
	ld (l0ebf),a
	ld (l1139),a
	ld a,(hl)
	inc hl
	ld (l0dba),a
	ld (l0dac),hl
	jp l0f0d
.l0e66
	ld a,b
	ld (l0ea4),a
	ld (l0ec4),a
.l0e6d
	ld a,(hl)
	inc hl
	ld (l0dba),a
	ld (l0dac),hl
	jp l0e9e
.l0e79 equ $ + 1
.l0e78
	ld hl,#c90c
	xor a
	ld (l0ea4),a
	jp l0eab
.l0e82
	ld e,(hl)
	inc e
	ld d,#00
	sbc hl,de
	jp l0eab
.l0e8c equ $ + 1
.l0e8b
	ld hl,#c351
	xor a
	ld (l0ec4),a
	jp l0ecb
.l0e95
	ld e,(hl)
	inc e
	ld d,#00
	sbc hl,de
	jp l0ecb
.l0e9f equ $ + 1
.l0e9e
	ld a,#00
	and a
	jr z,l0ebe
.l0ea4 equ $ + 1
	ld a,#ff
	inc a
	jr z,l0e78
.l0ea9 equ $ + 1
	ld hl,#c427
.l0eab
	ld a,(hl)
	inc hl
	cp #80
	jr z,l0e82
.l0eb2 equ $ + 1
	ld d,#02
	add d
	jp p,l0eb8
	xor a
.l0eb8
	ld (l1139),a
	ld (l0ea9),hl
.l0ebf equ $ + 1
.l0ebe
	ld a,#00
	and a
	jr z,l0f0d
.l0ec4 equ $ + 1
	ld a,#ff
	inc a
	jr z,l0e8b
.l0ec9 equ $ + 1
	ld hl,#c7f9
.l0ecb
	ld a,(hl)
	inc hl
	cp #80
	jr z,l0e95
.l0ed2 equ $ + 1
	ld d,#02
	add d
	ld (l0ec9),hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l0940
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l0ee3 equ $ + 1
	ld a,#02
	ld hl,l0eed
	add l
	ld l,a
	jr nc,l0eec
	inc h
.l0eec
	jp (hl)
.l0eed
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	ld (l1180),de
.l0f0d
	ld hl,l0f23
	dec (hl)
	jp nz,l1077
.l0f15 equ $ + 1
.l0f14
	ld hl,#c5da
.l0f17
	ld e,(hl)
	inc hl
	ld ix,l0f24
	ld d,#00
	add ix,de
	jp (ix)
.l0f23
	inc bc
.l0f24
	jp l0f7a
	jp l0f82
	jp l0f8a
	jp l0f95
	jp l0fa0
	jp l0fab
	jp l0fba
	jp l0fc9
	jp l0fc9
	jp l0fe1
	jp l0feb
	jp l0f5b
	jp l1009
	jp l1029
	jp l1033
	jp l0bb2
	ld a,b
	ld (l107d),a
	ld (l109d),a
.l0f5b
	ld a,b
	ld (l1078),a
	ld (l1098),a
	xor a
	ld (l10e7),a
	ld a,(hl)
	inc hl
	ld (l10ab),a
	ld a,(hl)
	inc hl
	ld (l0f23),a
	ld (l0f15),hl
	set 4,c
	res 1,c
	jp l1077
.l0f7a
	ld a,(hl)
	inc hl
	ld (l108b),a
	jp l0f17
.l0f82
	ld a,(hl)
	inc hl
	ld (l10bc),a
	jp l0f17
.l0f8a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l103f),de
	jp l0f17
.l0f95
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1052),de
	jp l0f17
.l0fa0
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1065),de
	jp l0f17
.l0fac equ $ + 1
.l0fab
	ld a,#00
	inc a
	jp nz,l0f17
	ld (l0fac),a
.l0fb5 equ $ + 1
	ld hl,#c621
	jp l0f17
.l0fba
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l0fb5),hl
	ld a,b
	ld (l0fac),a
	ex de,hl
	jp l0f17
.l0fc9
	xor a
	ld (l1078),a
	ld (l1098),a
	ld (l10e7),a
	ld (l112f),a
	ld a,(hl)
	inc hl
	ld (l0f23),a
	ld (l0f15),hl
	jp l1101
.l0fe1
	ld a,b
	ld (l107d),a
	ld (l109d),a
	ld (l10ec),a
.l0feb
	ld a,b
	ld (l1078),a
	ld (l1098),a
	ld (l10e7),a
	ld a,(hl)
	inc hl
	ld (l10ab),a
	ld a,(hl)
	inc hl
	ld (l0f23),a
	ld (l0f15),hl
	res 4,c
	res 1,c
	jp l1077
.l1009
	ld a,b
	ld (l107d),a
	ld (l10ec),a
	ld (l1078),a
	ld (l10e7),a
	xor a
	ld (l1098),a
	ld a,(hl)
	inc hl
	ld (l0f23),a
	ld (l0f15),hl
	res 4,c
	set 1,c
	jp l1077
.l1029
	ld a,b
	ld (l107d),a
	ld (l109d),a
	ld (l10ec),a
.l1033
	ld a,(hl)
	inc hl
	ld (l0f23),a
	ld (l0f15),hl
	jp l1077
.l103f equ $ + 1
.l103e
	ld hl,#c7fd
	xor a
	ld (l107d),a
	jp l1084
.l1048
	ld e,(hl)
	inc e
	ld d,#00
	sbc hl,de
	jp l1084
.l1052 equ $ + 1
.l1051
	ld hl,#c2a0
	xor a
	ld (l109d),a
	jp l10a4
.l105b
	ld e,(hl)
	inc e
	ld d,#00
	sbc hl,de
	jp l10a4
.l1065 equ $ + 1
.l1064
	ld hl,#c82c
	xor a
	ld (l10ec),a
	jp l10f4
.l106e
	ld e,(hl)
	inc e
	ld d,#00
	sbc hl,de
	jp l10f4
.l1078 equ $ + 1
.l1077
	ld a,#00
	and a
	jr z,l1097
.l107d equ $ + 1
	ld a,#ff
	inc a
	jr z,l103e
.l1082 equ $ + 1
	ld hl,#c38b
.l1084
	ld a,(hl)
	inc hl
	cp #80
	jr z,l1048
.l108b equ $ + 1
	ld d,#03
	add d
	jp p,l1091
	xor a
.l1091
	ld (l112f),a
	ld (l1082),hl
.l1098 equ $ + 1
.l1097
	ld a,#00
	and a
	jr z,l10e6
.l109d equ $ + 1
	ld a,#ff
	inc a
	jr z,l1051
.l10a2 equ $ + 1
	ld hl,#cecd
.l10a4
	ld a,(hl)
	inc hl
	cp #80
	jr z,l105b
.l10ab equ $ + 1
	ld d,#03
	add d
	ld (l10a2),hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l0940
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l10bc equ $ + 1
	ld a,#03
	ld hl,l10c6
	add l
	ld l,a
	jr nc,l10c5
	inc h
.l10c5
	jp (hl)
.l10c6
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	ld (l117e),de
.l10e7 equ $ + 1
.l10e6
	ld a,#00
	and a
	jr z,l1101
.l10ec equ $ + 1
	ld a,#ff
	inc a
	jp z,l1064
.l10f2 equ $ + 1
	ld hl,#c96a
.l10f4
	ld a,(hl)
	inc hl
	cp #80
	jp z,l106e
	ld (l1182),a
	ld (l10f2),hl
.l1101
	ld a,c
	ld (l1187),a
.l1106 equ $ + 1
	ld a,#00
	and a
	jp z,l111f
	ld hl,l1188
	dec (hl)
	jp nz,l111f
	ld (hl),#06
	ld hl,l1120
	dec (hl)
	jp nz,l111f
	xor a
	ld (l0c4c),a
.l1120 equ $ + 1
.l111f
	ld a,#0f
	sub #0f
	ld d,a
.l1125 equ $ + 1
	ld a,#01
	add d
	jp p,l112b
	xor a
.l112b
	ld (l1184),a
.l112f equ $ + 1
	ld a,#02
	add d
	jp p,l1135
	xor a
.l1135
	ld (l1185),a
.l1139 equ $ + 1
	ld a,#03
	add d
	jp p,l113f
	xor a
.l113f
	ld (l1186),a
.l1143 equ $ + 1
.l1142
	ld a,#00
	and a
	ret z
	ld a,c
	ld (l1183),a
	ld hl,l1186
	ld de,#f600
	ld bc,#f70a
	ld a,#86
	out (c),a
.l1157
	ld b,#f4
	out (c),c
	ld b,d
	ld a,#c0
	out (c),a
	out (c),e
	ld b,#f4
	ld a,(hl)
	out (c),a
	ld b,d
	ld a,#80
	out (c),a
	out (c),e
	dec hl
	dec c
	jp p,l1157
	ld a,(l0c4c)
	and a
	ret nz
	ld (l1143),a
	ret
.l117c
	dw 0
.l117e
	dw 0
.l1180
	dw 0
.l1182
	db 0
.l1183
	db 0
.l1184
	db 0
.l1185
	db 0
.l1186
	db 0
.l1187
	db 0
.l1188
	db 0
.l1189
	dw l1195,l119d,l11b1,l11c1
	dw l11c1,l11c4
.l1195
	db #00,#01,#02,#03,#02,#04,#ff,#06
.l119d
	db #00,#04,#01,#01,#01,#01,#02,#02
	db #01,#01,#01,#01,#02,#02,#03,#03
.l11b1 equ $ + 4
	db #03,#04,#ff,#11,#00,#01,#01,#01
	db #01,#02,#02,#01,#01,#01,#01,#02
.l11c4 equ $ + 7
.l11c1 equ $ + 4
	db #02,#03,#ff,#0e,#05,#ff,#ff,#04
	db #ff,#ff
.l11c7
	dw l1405,l145b,l14ff,l1589
.l11d3 equ $ + 4
	dw l1638,l193c,l1649,l166e
	dw l16d0,l1653,l174c,l19b8
.l11df
	dw l177e,l17d4,l180d,l18e2
	dw l1a4b
	db #fd,#fe,#ff,#00,#00,#00,#00,#fe
	db #fc,#ff,#ff,#ff,#ff,#fd,#fb,#fe
	db #fe,#fe,#fe,#fc,#fa,#fd,#fd,#fd
	db #fd,#fb,#f9,#fc,#fc,#fc,#fc,#fa
	db #f8,#fb,#fb,#fb,#fb,#f9,#f7,#80
	db #06,#00,#00,#00,#00,#ff,#fe,#ff
	db #ff,#ff,#ff,#fe,#fd,#fe,#fe,#fe
	db #fe,#fd,#fc,#fd,#fd,#fd,#fd,#fc
	db #fb,#80,#01,#fe,#ff,#00,#00,#00
	db #00,#ff,#ff,#ff,#ff,#ff,#ff,#fe
	db #fe,#fe,#fe,#fe,#fe,#fd,#fd,#fd
	db #fd,#fd,#fd,#fc,#fc,#fc,#fc,#fc
	db #fc,#fb,#80,#01,#00,#00,#00,#ff
	db #fe,#fd,#fb,#f9,#f7,#f5,#f3,#f1
	db #80,#0c,#00,#00,#ff,#fe,#fc,#fa
	db #fd,#fd,#fc,#fb,#f9,#f7,#80,#0c
	db #00,#00,#00,#fe,#fc,#fa,#fe,#fe
	db #fe,#fc,#fa,#f8,#fc,#fc,#fc,#fa
	db #f8,#f6,#80,#06,#00,#00,#00,#ff
	db #fe,#fd,#ff,#ff,#ff,#fe,#fd,#fc
	db #fe,#fe,#fe,#fd,#fc,#fb,#fd,#fd
	db #fd,#fc,#fb,#fa,#80,#01,#fe,#ff
	db #00,#00,#00,#ff,#ff,#ff,#ff,#ff
	db #fe,#fe,#fe,#fe,#fe,#fd,#fd,#fd
	db #fd,#fd,#fc,#fc,#fc,#fc,#fc,#fb
	db #80,#01,#00,#00,#ff,#fe,#fd,#fc
	db #fb,#fa,#f9,#f8,#80,#0a,#00,#ff
	db #fe,#fc,#fa,#fd,#fc,#fb,#f9,#f7
	db #80,#0a,#00,#00,#fe,#fc,#fa,#fe
	db #fe,#fc,#fa,#f8,#fc,#fc,#fa,#f8
	db #f6,#80,#05,#10,#08,#04,#02,#01
	db #00,#f8,#fc,#fe,#ff,#00,#04,#08
	db #04,#02,#01,#00,#fc,#80,#0c,#f6
	db #fb,#fd,#03,#05,#0a,#f8,#fc,#fe
	db #02,#04,#08,#fa,#fd,#ff,#01,#03
	db #06,#fc,#fe,#00,#00,#02,#04,#fa
	db #fd,#ff,#01,#03,#06,#80,#18,#08
	db #04,#02,#00,#ff,#00,#00,#ff,#fe
	db #fd,#fe,#ff,#00,#01,#02,#03,#02
	db #01,#00,#fe,#fc,#fa,#fc,#fe,#00
	db #02,#04,#06,#04,#02,#00,#fd,#fa
	db #f7,#fa,#fd,#00,#03,#06,#09,#06
	db #03,#00,#fc,#f8,#f4,#f8,#fc,#00
	db #04,#08,#0c,#08,#04,#80,#0c,#00
	db #03,#06,#00,#fd,#fa,#00,#02,#04
	db #00,#fe,#fc,#00,#01,#02,#00,#ff
	db #fe,#80,#06,#ff,#ff,#ff,#01,#01
	db #01,#fe,#fe,#fe,#02,#02,#02,#fd
	db #fd,#fd,#03,#03,#03,#fc,#fc,#fc
	db #04,#04,#04,#fb,#fb,#fb,#05,#05
	db #05,#80,#0c,#f8,#fa,#fc,#fe,#ff
	db #00,#01,#01,#01,#ff,#ff,#ff,#02
	db #02,#02,#fe,#fe,#fe,#03,#03,#03
	db #fd,#fd,#fd,#04,#04,#04,#fc,#fc
	db #fc,#80,#06,#08,#04,#02,#00,#00
	db #ff,#fe,#fd,#fe,#ff,#01,#02,#03
	db #02,#01,#fe,#fc,#fa,#fc,#fe,#02
	db #04,#06,#04,#02,#fd,#fa,#f7,#fa
	db #fd,#03,#06,#09,#06,#03,#fc,#f8
	db #f4,#f8,#fc,#04,#08,#0c,#08,#04
	db #80,#0a,#00,#03,#06,#fd,#fa,#00
	db #02,#04,#fe,#fc,#00,#01,#02,#ff
	db #fe,#80,#05,#ff,#ff,#00,#01,#01
	db #fe,#fe,#00,#02,#02,#fd,#fd,#00
	db #03,#03,#fc,#fc,#00,#04,#04,#fb
	db #fb,#00,#05,#05,#80,#0a,#1e,#0b
	db #09,#0c,#0d,#0b,#0e,#0f,#0d,#10
.l1405 equ $ + 4
	db #11,#0f,#80,#0c,#09,#dc,#12,#06
	db #ec,#11,#00,#0e,#03,#10,#30,#18
	db #06,#30,#38,#06,#30,#48,#12,#30
	db #38,#12,#03,#14,#30,#98,#0c,#30
	db #b8,#84,#03,#10,#30,#38,#06,#30
	db #48,#06,#30,#98,#12,#30,#88,#12
	db #30,#48,#0c,#30,#68,#90,#30,#48
	db #12,#30,#38,#12,#03,#14,#30,#98
	db #0c,#30,#b8,#84,#03,#10,#30,#38
	db #06,#30,#48,#06,#30,#88,#12,#30
	db #98,#12,#30,#68,#0c,#30,#b8,#90
.l145b equ $ + 2
	db #0f,#2d,#09,#f0,#12,#06,#12,#12
	db #00,#0f,#03,#10,#30,#88,#13,#30
	db #48,#13,#03,#14,#30,#b8,#0d,#03
	db #10,#30,#18,#75,#30,#28,#18,#30
	db #48,#13,#30,#28,#13,#03,#14,#30
	db #68,#0d,#30,#98,#8d,#03,#10,#30
	db #88,#13,#30,#48,#13,#03,#14,#30
	db #b8,#0d,#03,#10,#30,#18,#75,#30
	db #28,#18,#30,#48,#13,#30,#68,#13
	db #30,#48,#0d,#03,#14,#30,#98,#8d
	db #03,#10,#30,#88,#13,#30,#48,#13
	db #03,#14,#30,#b8,#25,#03,#10,#30
	db #18,#5d,#30,#28,#18,#30,#48,#13
	db #30,#28,#13,#03,#14,#30,#68,#25
	db #30,#98,#75,#03,#10,#30,#88,#13
	db #30,#48,#13,#03,#14,#30,#b8,#0d
	db #03,#10,#30,#18,#75,#30,#28,#18
	db #30,#48,#13,#30,#68,#13,#30,#48
	db #0d,#30,#98,#69,#09,#10,#13,#06
	db #2c,#12,#30,#18,#0c,#03,#14,#30
.l14ff equ $ + 6
	db #b8,#0c,#30,#98,#0c,#2d,#30,#48
	db #18,#30,#98,#0c,#30,#b8,#18,#03
	db #10,#30,#18,#60,#0f,#30,#18,#0c
	db #03,#14,#30,#b8,#0c,#30,#98,#0c
	db #0f,#12,#ff,#14,#03,#14,#30,#98
	db #0c,#30,#b8,#0c,#03,#10,#30,#18
	db #0c,#0f,#30,#28,#12,#30,#18,#12
	db #03,#14,#30,#98,#0c,#0f,#30,#b8
	db #90,#03,#10,#12,#2b,#15,#30,#48
	db #6c,#09,#16,#13,#06,#32,#12,#03
	db #0c,#30,#48,#0c,#30,#88,#0c,#30
	db #b8,#0c,#09,#10,#13,#06,#2c,#12
	db #03,#14,#12,#ff,#14,#12,#0e,#15
	db #12,#ff,#14,#12,#1d,#15,#12,#2b
	db #15,#30,#b8,#90,#03,#10,#12,#2b
	db #15,#30,#68,#6c,#09,#16,#13,#06
	db #32,#12,#03,#0c,#30,#88,#0c,#30
	db #48,#0c,#03,#10,#30,#b8,#0c,#2d
.l1589
	db #09,#f0,#12,#06,#12,#12,#30,#88
	db #13,#30,#48,#13,#03,#14,#30,#b8
	db #0d,#03,#10,#30,#18,#75,#30,#28
	db #18,#30,#48,#13,#30,#28,#13,#03
	db #14,#30,#68,#0d,#30,#98,#75,#03
	db #10,#30,#18,#18,#30,#88,#13,#30
	db #48,#13,#03,#14,#30,#b8,#0d,#03
	db #10,#30,#18,#75,#30,#28,#18,#30
	db #48,#13,#30,#68,#13,#30,#48,#0d
	db #03,#14,#30,#98,#5d,#03,#10,#30
	db #48,#12,#30,#68,#12,#30,#48,#0c
	db #30,#88,#13,#30,#48,#13,#03,#14
	db #30,#b8,#0d,#03,#10,#30,#18,#75
	db #30,#28,#18,#30,#48,#13,#30,#28
	db #13,#03,#14,#30,#68,#25,#30,#98
	db #5d,#03,#10,#30,#18,#18,#30,#88
	db #13,#30,#48,#13,#03,#14,#30,#b8
	db #0d,#03,#10,#30,#18,#75,#30,#28
	db #18,#30,#48,#13,#30,#68,#13,#30
	db #48,#0d,#30,#98,#69,#09,#10,#13
	db #06,#2c,#12,#30,#18,#0c,#03,#14
.l1638 equ $ + 7
	db #30,#b8,#0c,#30,#98,#0c,#2d,#09
	db #dc,#12,#06,#ec,#11,#03,#10,#00
	db #0e,#12,#15,#14,#12,#15,#14,#2d
.l1649
	db #18,#0c,#09,#48,#13,#0c,#f7,#13
.l1653 equ $ + 2
	db #00,#0f,#03,#1c,#12,#d2,#16,#12
	db #d2,#16,#12,#d2,#16,#12,#d2,#16
	db #12,#d2,#16,#12,#d2,#16,#12,#d2
.l166e equ $ + 5
	db #16,#12,#d2,#16,#2d,#03,#18,#06
	db #4d,#12,#1b,#68,#01,#21,#68,#0b
	db #27,#06,#27,#06,#06,#5b,#12,#24
	db #0c,#06,#4d,#12,#30,#68,#06,#27
	db #06,#0f,#12,#70,#16,#12,#70,#16
	db #06,#4d,#12,#1b,#68,#01,#21,#68
	db #0b,#27,#06,#27,#06,#06,#5b,#12
	db #24,#0c,#06,#4d,#12,#30,#48,#06
	db #27,#06,#06,#4d,#12,#1b,#28,#01
	db #21,#28,#0b,#27,#06,#27,#06,#06
	db #5b,#12,#24,#0c,#06,#4d,#12,#30
	db #28,#06,#27,#06,#0f,#12,#ab,#16
.l16d0 equ $ + 7
	db #12,#ab,#16,#12,#ab,#16,#2d,#03
	db #1c,#06,#4d,#12,#1b,#98,#01,#21
	db #98,#0b,#27,#06,#27,#06,#06,#5b
	db #12,#24,#0c,#06,#4d,#12,#30,#98
	db #06,#27,#06,#0f,#12,#d2,#16,#12
	db #d2,#16,#12,#d2,#16,#12,#d2,#16
	db #12,#d2,#16,#12,#d2,#16,#12,#d2
	db #16,#06,#4d,#12,#1b,#78,#01,#21
	db #78,#0b,#27,#06,#27,#06,#06,#5b
	db #12,#24,#0c,#06,#4d,#12,#30,#78
	db #06,#27,#06,#0f,#12,#02,#17,#12
	db #02,#17,#12,#02,#17,#03,#18,#12
	db #ab,#16,#12,#ab,#16,#12,#ab,#16
	db #06,#4d,#12,#1b,#28,#01,#21,#28
	db #0b,#27,#06,#27,#06,#06,#5b,#12
	db #24,#0c,#06,#4d,#12,#30,#48,#06
.l174c equ $ + 3
	db #27,#06,#2d,#03,#1c,#12,#d2,#16
	db #12,#d2,#16,#12,#d2,#16,#12,#d2
	db #16,#12,#d2,#16,#12,#d2,#16,#12
	db #d2,#16,#06,#4d,#12,#1b,#98,#01
	db #21,#98,#0b,#27,#06,#27,#06,#06
	db #5b,#12,#24,#0c,#00,#0e,#27,#06
.l177e equ $ + 5
	db #27,#06,#00,#0f,#2d,#09,#dc,#12
	db #06,#e9,#11,#00,#0e,#03,#0c,#30
	db #18,#06,#30,#38,#06,#30,#48,#12
	db #30,#38,#12,#03,#10,#30,#98,#0c
	db #30,#b8,#84,#03,#0c,#30,#38,#06
	db #30,#48,#06,#30,#98,#12,#30,#88
	db #12,#30,#48,#0c,#30,#68,#90,#30
	db #48,#12,#30,#38,#12,#03,#10,#30
	db #98,#0c,#30,#b8,#84,#03,#0c,#30
	db #38,#06,#30,#48,#06,#30,#88,#12
	db #30,#98,#12,#30,#68,#0c,#30,#b8
.l17d4 equ $ + 3
	db #90,#0f,#2d,#09,#5c,#13,#06,#69
	db #12,#00,#0d,#03,#0c,#30,#18,#12
	db #27,#1e,#27,#0c,#27,#06,#27,#1e
	db #03,#10,#30,#b8,#12,#27,#1e,#30
	db #98,#0c,#27,#06,#27,#1e,#27,#12
	db #27,#1e,#27,#0c,#27,#06,#27,#1e
	db #30,#b8,#12,#27,#1e,#27,#0c,#27
.l180d equ $ + 4
	db #06,#27,#1e,#2d,#09,#7c,#13,#06
	db #7d,#12,#00,#0d,#03,#04,#30,#88
	db #01,#03,#0c,#2a,#11,#03,#04,#30
	db #98,#01,#03,#0c,#2a,#11,#03,#04
	db #27,#01,#03,#0c,#2a,#17,#00,#0c
	db #03,#04,#27,#01,#03,#0c,#2a,#17
	db #00,#0b,#03,#04,#27,#01,#03,#0c
	db #2a,#0b,#0f,#00,#0d,#03,#04,#30
	db #b8,#01,#03,#0c,#2a,#11,#03,#04
	db #30,#98,#01,#03,#0c,#2a,#11,#03
	db #04,#27,#01,#03,#0c,#2a,#17,#00
	db #0c,#03,#04,#27,#01,#03,#0c,#2a
	db #17,#00,#0b,#03,#04,#27,#01,#03
	db #0c,#2a,#0b,#0f,#12,#13,#18,#12
	db #44,#18,#00,#0d,#03,#04,#30,#78
	db #01,#03,#0c,#2a,#11,#03,#04,#30
	db #98,#01,#03,#0c,#2a,#11,#03,#04
	db #27,#01,#03,#0c,#2a,#17,#00,#0c
	db #03,#04,#27,#01,#03,#0c,#2a,#17
	db #00,#0b,#03,#04,#27,#01,#03,#0c
	db #2a,#0b,#12,#44,#18,#00,#0d,#03
	db #04,#30,#68,#01,#03,#0c,#2a,#11
	db #03,#04,#30,#98,#01,#03,#0c,#2a
	db #11,#03,#04,#27,#01,#03,#0c,#2a
	db #17,#00,#0c,#03,#04,#27,#01,#03
	db #0c,#2a,#17,#00,#0b,#03,#04,#27
	db #01,#03,#0c,#2a,#0b,#12,#44,#18
.l18e2 equ $ + 1
	db #2d,#09,#dc,#12,#06,#e9,#11,#00
	db #0e,#03,#0c,#12,#8e,#17,#12,#8e
	db #17,#2d,#2a,#20,#20,#20,#5a,#38
	db #30,#20,#6d,#75,#73,#69,#63,#20
	db #70,#6c,#61,#79,#65,#72,#20,#61
	db #6e,#64,#20,#6d,#75,#73,#69,#63
	db #20,#28,#63,#29,#20,#53,#65,#61
	db #6e,#20,#43,#6f,#6e,#72,#61,#6e
	db #20,#31,#39,#39,#31,#20,#2a,#20
	db #74,#65,#6c,#20,#30,#34,#34,#32
	db #20,#38,#36,#33,#39,#33,#39,#20
.l193c equ $ + 3
	db #20,#20,#2a,#09,#9c,#13,#06,#97
	db #12,#03,#10,#00,#0e,#30,#48,#0a
	db #30,#78,#0a,#30,#68,#0a,#30,#28
	db #0a,#30,#48,#32,#2a,#32,#27,#0a
	db #30,#28,#0a,#03,#14,#30,#c8,#0a
	db #03,#10,#30,#78,#0a,#30,#68,#0a
	db #30,#48,#0a,#30,#b8,#32,#2a,#32
	db #30,#b8,#0a,#30,#98,#0a,#30,#78
	db #0a,#30,#98,#0a,#27,#0a,#27,#0a
	db #27,#0a,#27,#0a,#30,#78,#0a,#30
	db #68,#0a,#30,#28,#0a,#2a,#46,#30
	db #48,#0a,#30,#78,#0a,#30,#68,#0a
	db #30,#28,#0a,#30,#48,#0a,#00,#0c
	db #27,#0a,#00,#0a,#27,#0a,#00,#08
	db #27,#0a,#00,#06,#27,#0a,#00,#04
.l19b8 equ $ + 7
	db #27,#0a,#00,#02,#27,#0a,#2d,#18
	db #0a,#09,#cb,#13,#0c,#f7,#13,#00
	db #0f,#03,#18,#06,#b3,#12,#1b,#48
	db #01,#21,#48,#09,#27,#0a,#06,#bf
	db #12,#24,#0a,#06,#b3,#12,#30,#48
	db #0a,#0f,#12,#c4,#19,#12,#c4,#19
	db #12,#c4,#19,#03,#1c,#06,#b3,#12
	db #1b,#c8,#01,#21,#c8,#09,#27,#0a
	db #06,#bf,#12,#24,#0a,#06,#b3,#12
	db #30,#c8,#0a,#0f,#12,#e6,#19,#12
	db #e6,#19,#12,#e6,#19,#03,#18,#06
	db #b3,#12,#1b,#28,#01,#21,#28,#09
	db #27,#0a,#06,#bf,#12,#24,#0a,#06
	db #b3,#12,#30,#28,#0a,#0f,#12,#08
	db #1a,#12,#08,#1a,#12,#08,#1a,#30
	db #78,#0a,#30,#68,#0a,#30,#28,#0a
	db #30,#48,#0a,#00,#0a,#27,#0a,#00
	db #08,#27,#0a,#00,#06,#27,#0a,#00
	db #04,#27,#0a,#00,#02,#27,#0a,#18
.l1a4b equ $ + 2
	db #0a,#2d,#18,#0a,#09,#dc,#13,#06
	db #cb,#12,#00,#0d,#03,#0c,#30,#b8
	db #0a,#27,#14,#27,#1e,#27,#14,#0f
	db #12,#57,#1a,#30,#78,#0a,#27,#14
	db #27,#1e,#27,#14,#0f,#12,#64,#1a
	db #30,#98,#0a,#27,#14,#27,#1e,#27
	db #14,#0f,#12,#71,#1a,#30,#78,#0a
	db #30,#98,#0a,#30,#b8,#0a,#03,#08
	db #30,#48,#0a,#00,#0b,#27,#0a,#00
.l1a93 equ $ + 2
	db #09,#27,#0a,#00,#07,#27,#0a,#00
	db #05,#27,#0a,#00,#03,#27,#0a,#00
	db #01,#27,#0a,#2d,#0a,#3f,#20,#2a
	db #8e,#26,#00,#18,#1f,#00,#07,#00
	db #00,#30,#00,#00,#00,#54,#4b,#4c
	db #5b,#54,#56,#55,#4a,#4e,#5c,#47
	db #44,#46,#5a,#5f,#40
;
; #18f2
; db "-*   Z80 music player and music (c) Sean Conran 1991 * tel 0442 863939   *	"
;
.init_music		; #67df - added by Megachur
;
	ld hl,#0f00
	jp real_init_music	; #0af6
;
.play_music		; #67e6 - added by Megachur
;
	ld bc,#f40e
	out (c),c
	ld b,#f6
	in a,(c)
	and #30
	ld (l67f8),a
	call real_play_music	; #0c16
.l67f8 equ $ + 1
	ld a,#00
	ld bc,#f782
	out (c),c
	dec b
	out (c),a
	ret
;
.music_info
	db "WWF Wrestlemania (1991)(Ocean Software)(Sean Conran)",0
	db "-*   Z80 music player and music (c) Sean Conran 1991 * tel 0442 863939   *",0

	read "music_end.asm"
