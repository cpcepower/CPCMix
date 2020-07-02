; Music of Balls (2017)(CpcRetroDev.ByteRealms)(Manuel Alberola Torres)(StArkos)
; Ripped by Megachur the 08/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BALLS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0047

	read "music_header.asm"

.l0047
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#ad,#01,#69,#00,#72,#00
	db #8d,#00,#a1,#00,#b3,#00,#d6,#00
	db #0b,#01,#4a,#01,#73,#01,#af,#01
	db #e1,#01,#00,#00,#00,#00,#00,#00
	db #0d,#6b,#00,#01,#00,#7e,#26,#0c
	db #7c,#0a,#74,#09,#74,#08,#6c,#05
	db #6c,#04,#64,#03,#5c,#02,#5c,#01
	db #58,#01,#18,#0d,#6b,#00,#01,#00
	db #7c,#0c,#34,#30,#2c,#28,#24,#20
	db #1c,#18,#14,#10,#0c,#08,#04,#0d
	db #6b,#00,#01,#00,#7e,#29,#0d,#7c
	db #09,#7c,#06,#76,#25,#04,#6e,#25
	db #02,#0d,#6b,#00,#01,#00,#3c,#74
	db #04,#6c,#07,#68,#04,#24,#60,#04
	db #38,#70,#04,#68,#07,#64,#04,#20
	db #5c,#04,#34,#6c,#04,#64,#07,#60
	db #04,#1c,#58,#04,#0d,#6b,#00,#01
	db #00,#3c,#7c,#04,#78,#07,#38,#74
	db #04,#74,#07,#30,#70,#04,#6c,#07
	db #2c,#68,#04,#68,#07,#24,#64,#04
	db #60,#07,#20,#5c,#04,#5c,#07,#18
	db #58,#04,#54,#07,#14,#50,#04,#50
	db #07,#0c,#4c,#04,#48,#07,#08,#44
	db #04,#0d,#6b,#00,#01,#00,#7c,#07
	db #7c,#0c,#78,#10,#78,#07,#74,#0c
	db #74,#10,#70,#07,#70,#0c,#6c,#10
	db #6c,#07,#68,#0c,#68,#10,#64,#07
	db #64,#0c,#60,#10,#60,#07,#5c,#0c
	db #5c,#10,#58,#07,#58,#0c,#54,#10
	db #54,#07,#50,#0c,#50,#10,#4c,#07
	db #4c,#0c,#48,#10,#48,#07,#44,#0c
	db #0d,#6b,#00,#01,#00,#7c,#07,#74
	db #0c,#6c,#10,#68,#0c,#64,#07,#60
	db #0c,#78,#07,#70,#0c,#68,#10,#64
	db #0c,#60,#07,#5c,#0c,#74,#07,#6c
	db #0c,#64,#10,#60,#0c,#5c,#07,#58
	db #0c,#0d,#6b,#00,#01,#00,#7c,#0c
	db #bc,#ff,#ff,#bc,#ff,#ff,#b8,#ff
	db #ff,#38,#38,#38,#34,#34,#34,#b4
	db #ff,#ff,#b0,#ff,#ff,#b0,#ff,#ff
	db #30,#30,#2c,#28,#28,#28,#a4,#ff
	db #ff,#a4,#ff,#ff,#a4,#ff,#ff,#20
	db #20,#20,#20,#20,#a0,#ff,#ff,#a0
	db #ff,#ff,#a0,#ff,#ff,#0d,#9e,#01
	db #01,#00,#3c,#bc,#ff,#ff,#38,#b8
	db #01,#00,#34,#b4,#ff,#ff,#30,#b0
	db #01,#00,#2c,#ac,#ff,#ff,#28,#a8
	db #01,#00,#24,#a4,#ff,#ff,#20,#9c
	db #01,#00,#18,#94,#ff,#ff,#10,#8c
	db #01,#00,#08,#84,#ff,#ff,#00,#0d
	db #6b,#00,#01,#00,#7e,#2b,#0c,#7a
	db #2a,#0d,#76,#29,#10,#72,#28,#09
	db #2e,#27,#66,#26,#09,#5e,#25,#0e
	db #16,#24,#0e,#23,#06,#22,#0d,#6b
	db #00,#40,#00,#00,#00,#81,#02,#00
	db #82,#02,#de,#03,#de,#03,#0e,#00
	db #00,#00,#0f,#04,#c6,#05,#33,#03
	db #00,#82,#02,#83,#03,#33,#03,#00
	db #0f,#04,#83,#03,#33,#03,#0e,#07
	db #02,#07,#0f,#04,#e6,#03,#33,#03
	db #0e,#05,#05,#05,#82,#02,#c0,#04
	db #43,#05,#00,#0f,#04,#c0,#04,#43
	db #05,#0e,#00,#fb,#00,#82,#02,#e6
	db #03,#33,#03,#04,#00,#0f,#04,#c0
	db #04,#33,#03,#0e,#07,#02,#07,#82
	db #02,#e6,#03,#33,#03,#0e,#05,#05
	db #05,#82,#02,#c6,#05,#33,#03,#00
	db #0f,#04,#83,#03,#33,#03,#0e,#fb
	db #fb,#fb,#82,#02,#c0,#04,#43,#05
	db #00,#0f,#04,#c0,#04,#33,#03,#01
	db #0d,#02,#00,#72,#e1,#00,#00,#01
	db #5e,#60,#02,#37,#72,#63,#01,#8a
	db #61,#03,#8e,#60,#02,#67,#8a,#63
	db #03,#72,#61,#01,#76,#60,#02,#72
	db #63,#01,#5e,#61,#02,#8a,#60,#03
	db #8e,#60,#02,#72,#60,#01,#8a,#60
	db #03,#72,#60,#01,#5e,#60,#02,#37
	db #72,#63,#01,#8a,#61,#03,#8e,#60
	db #02,#67,#8a,#63,#03,#72,#61,#01
	db #76,#60,#02,#72,#63,#01,#5e,#61
	db #02,#8a,#60,#03,#8e,#60,#02,#72
	db #60,#01,#8a,#60,#03,#72,#60,#01
	db #68,#60,#02,#41,#72,#63,#01,#8a
	db #61,#03,#98,#60,#02,#71,#8a,#63
	db #03,#72,#61,#01,#80,#60,#02,#72
	db #63,#01,#68,#61,#02,#8a,#60,#03
	db #8e,#60,#02,#72,#60,#01,#8a,#60
	db #03,#72,#60,#01,#54,#60,#02,#2d
	db #72,#63,#01,#8a,#61,#03,#84,#60
	db #02,#5d,#8a,#63,#03,#72,#61,#01
	db #6c,#60,#02,#72,#63,#01,#54,#61
	db #02,#8a,#60,#03,#8e,#60,#02,#8a
	db #63,#03,#8a,#41,#a6,#e3,#00,#00
	db #04,#04,#a6,#60,#05,#04,#a6,#60
	db #06,#02,#a6,#60,#04,#04,#a6,#60
	db #05,#08,#a6,#60,#04,#04,#a6,#60
	db #05,#04,#a6,#60,#06,#02,#a6,#60
	db #04,#04,#a6,#60,#05,#08,#98,#60
	db #07,#04,#98,#60,#06,#04,#71,#02
	db #98,#60,#07,#04,#a6,#60,#05,#08
	db #9c,#60,#04,#04,#9c,#60,#05,#04
	db #9c,#60,#07,#04,#a6,#60,#06,#02
	db #a6,#60,#05,#00,#c6,#e1,#00,#00
	db #08,#0e,#42,#03,#42,#05,#d0,#61
	db #02,#8d,#87,#c6,#69,#08,#c2,#43
	db #87,#c8,#41,#0a,#b4,#47,#02,#cc
	db #41,#04,#89,#04,#87,#02,#7f,#08
	db #42,#03,#be,#61,#02,#7d,#7f,#02
	db #b4,#60,#08,#b4,#65,#02,#b4,#61
	db #08,#42,#03,#42,#05,#42,#07,#bc
	db #6b,#09,#be,#49,#bc,#47,#b8,#4b
	db #bc,#49,#b8,#47,#b4,#4b,#b0,#49
	db #ae,#47,#b8,#4b,#b4,#49,#02,#b4
	db #6b,#08,#02,#cc,#49,#cc,#47,#42
	db #60,#00,#42,#80,#00,#00,#00,#b8
	db #e1,#00,#00,#08,#02,#b8,#47,#12
	db #a6,#41,#02,#79,#7b,#7f,#02,#be
	db #47,#0a,#c2,#41,#02,#c2,#47,#c6
	db #41,#02,#c6,#47,#c8,#41,#02,#7f
	db #02,#be,#47,#1a,#42,#60,#00,#00
	db #72,#e1,#00,#00,#01,#5e,#60,#02
	db #37,#72,#63,#01,#8a,#61,#03,#8e
	db #60,#02,#67,#8a,#63,#03,#72,#61
	db #01,#76,#60,#02,#72,#63,#01,#5e
	db #61,#02,#8a,#60,#03,#8e,#60,#02
	db #72,#60,#01,#8a,#60,#03,#72,#60
	db #01,#5e,#60,#02,#37,#72,#63,#01
	db #8a,#61,#03,#8e,#60,#02,#67,#8a
	db #63,#03,#72,#61,#01,#76,#60,#02
	db #72,#63,#01,#5e,#61,#02,#8a,#60
	db #03,#8e,#60,#02,#72,#60,#01,#8a
	db #60,#03,#72,#60,#01,#68,#60,#02
	db #41,#72,#63,#01,#8a,#61,#03,#98
	db #60,#02,#71,#8a,#63,#03,#72,#61
	db #01,#80,#60,#02,#72,#63,#01,#68
	db #61,#02,#8a,#60,#03,#8e,#60,#02
	db #72,#60,#01,#8a,#60,#03,#72,#60
	db #01,#54,#60,#02,#2d,#72,#63,#01
	db #8a,#61,#03,#84,#60,#02,#5d,#8a
	db #63,#03,#8a,#61,#01,#6c,#60,#02
	db #8a,#63,#03,#54,#61,#02,#94,#60
	db #0a,#8e,#60,#02,#94,#60,#0a,#94
	db #40,#ae,#e1,#00,#00,#09,#96,#4d
	db #a6,#43,#8e,#4b,#ae,#45,#ae,#49
	db #a6,#41,#a6,#4d,#ae,#43,#c6,#4b
	db #a6,#45,#be,#49,#ae,#41,#ae,#4d
	db #a6,#43,#a6,#4b,#ae,#45,#96,#49
	db #a6,#41,#8e,#4d,#ae,#43,#ae,#4b
	db #a6,#45,#a6,#49,#ae,#41,#c6,#4d
	db #a6,#43,#be,#4b,#ae,#45,#ae,#49
	db #a6,#41,#a6,#4d,#b4,#43,#9c,#4b
	db #a6,#45,#8e,#49,#b8,#41,#b8,#4d
	db #b0,#43,#b0,#4b,#bc,#45,#d4,#49
	db #be,#41,#d6,#4d,#b4,#43,#b4,#4b
	db #a6,#45,#a6,#49,#aa,#41,#92,#4d
	db #a4,#43,#8c,#4b,#aa,#45,#aa,#49
	db #a4,#41,#a4,#4d,#ae,#43,#c6,#4b
	db #a6,#45,#be,#49,#ae,#41,#ae,#4d
	db #a6,#43,#a6,#4b,#42,#80,#00,#00
	db #ae,#67,#09,#96,#53,#a6,#49,#8e
	db #51,#ae,#4b,#ae,#4f,#a6,#47,#a6
	db #53,#ae,#49,#c6,#51,#a6,#4b,#be
	db #4f,#ae,#47,#ae,#53,#a6,#49,#a6
	db #51,#ae,#4b,#96,#4f,#a6,#47,#8e
	db #53,#ae,#49,#ae,#51,#a6,#4b,#a6
	db #4f,#ae,#47,#c6,#53,#a6,#49,#be
	db #51,#ae,#4b,#ae,#4f,#a6,#47,#a6
	db #53,#b4,#49,#9c,#51,#a6,#4b,#8e
	db #4f,#b8,#47,#b8,#53,#b0,#49,#b0
	db #51,#bc,#4b,#d4,#4f,#be,#47,#d6
	db #53,#b4,#49,#b4,#51,#a6,#4b,#a6
	db #4f,#aa,#47,#92,#53,#a4,#49,#8c
	db #51,#aa,#4b,#aa,#4f,#a4,#47,#a4
	db #53,#ae,#49,#c6,#51,#a6,#4b,#be
	db #4f,#ae,#47,#ae,#53,#a6,#49,#42
	db #60,#00,#42,#80,#00,#00,#a6,#69
	db #04,#04,#a6,#60,#05,#04,#a6,#60
	db #06,#02,#a6,#60,#04,#04,#a6,#60
	db #05,#08,#a6,#60,#04,#04,#a6,#60
	db #05,#04,#a6,#60,#06,#02,#a6,#60
	db #04,#04,#a6,#60,#05,#08,#98,#60
	db #07,#04,#98,#60,#06,#04,#71,#02
	db #98,#60,#07,#04,#a6,#60,#05,#08
	db #9c,#60,#04,#04,#9c,#60,#05,#04
	db #9c,#60,#07,#04,#a6,#60,#06,#02
	db #a6,#60,#05,#00,#00,#00,#00,#00
	db #00
.l805b
	db #00
.l805c
	db #00
;
.play_music
.l805d
;
	push ix
	push iy
	xor a
	ld (l805b),a
.l8066 equ $ + 1
	ld a,#01
	dec a
	jp nz,l8239
.l806c equ $ + 1
	ld a,#01
	dec a
	jr nz,l80df
.l8071 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l8086
	ld a,(l805c)
	inc a
	ld (l805c),a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l8086
	rra
	jr nc,l808e
	ld de,l812f
	ldi
.l808e
	rra
	jr nc,l8096
	ld de,l8194
	ldi
.l8096
	rra
	jr nc,l809e
	ld de,l81f9
	ldi
.l809e
	ld de,l810e
	ldi
	ldi
	ld de,l8173
	ldi
	ldi
	ld de,l81d8
	ldi
	ldi
	rra
	jr nc,l80bb
	ld de,l80de
	ldi
.l80bb
	rra
	jr nc,l80c6
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l80ca),de
.l80c6
	ld (l8071),hl
.l80ca equ $ + 1
	ld hl,#0000
	ld (l80e8),hl
	ld a,#01
	ld (l80e3),a
	ld (l8109),a
	ld (l816e),a
	ld (l81d3),a
.l80de equ $ + 1
	ld a,#01
.l80df
	ld (l806c),a
.l80e3 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8105
.l80e8 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l8102
	srl a
	jr nz,l80f6
	ld a,(hl)
	inc hl
.l80f6
	jr nc,l80fd
	ld (l805b),a
	jr l8100
.l80fd
	ld (l8238),a
.l8100
	ld a,#01
.l8102
	ld (l80e8),hl
.l8105
	ld (l80e3),a
.l8109 equ $ + 1
	ld a,#01
	dec a
	jr nz,l816a
.l810e equ $ + 1
	ld hl,#0000
	call l860c
	ld (l810e),hl
	jr c,l816a
	ld a,d
	rra
	jr nc,l8121
	and #0f
	ld (l8311),a
.l8121
	rl d
	jr nc,l8129
	ld (l82ff),ix
.l8129
	rl d
	jr nc,l8168
	ld a,e
.l812f equ $ + 1
	add #00
	ld (l8310),a
	ld hl,#0000
	ld (l82fc),hl
	rl d
	jr c,l8148
.l813e equ $ + 1
	ld hl,#0000
	ld a,(l8321)
	ld (l8319),a
	jr l8165
.l8148
	ld l,b
	add hl,hl
.l814b equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l8321),a
	ld (l8319),a
	ld a,(hl)
	or a
	jr z,l8161
	ld (l842e),a
.l8161
	inc hl
	ld (l813e),hl
.l8165
	ld (l8313),hl
.l8168
	ld a,#01
.l816a
	ld (l8109),a
.l816e equ $ + 1
	ld a,#01
	dec a
	jr nz,l81cf
.l8173 equ $ + 1
	ld hl,#0000
	call l860c
	ld (l8173),hl
	jr c,l81cf
	ld a,d
	rra
	jr nc,l8186
	and #0f
	ld (l82b2),a
.l8186
	rl d
	jr nc,l818e
	ld (l82a0),ix
.l818e
	rl d
	jr nc,l81cd
	ld a,e
.l8194 equ $ + 1
	add #00
	ld (l82b1),a
	ld hl,#0000
	ld (l829d),hl
	rl d
	jr c,l81ad
.l81a3 equ $ + 1
	ld hl,#0000
	ld a,(l82c2)
	ld (l82ba),a
	jr l81ca
.l81ad
	ld l,b
	add hl,hl
.l81b0 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l82c2),a
	ld (l82ba),a
	ld a,(hl)
	or a
	jr z,l81c6
	ld (l842e),a
.l81c6
	inc hl
	ld (l81a3),hl
.l81ca
	ld (l82b4),hl
.l81cd
	ld a,#01
.l81cf
	ld (l816e),a
.l81d3 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8234
.l81d8 equ $ + 1
	ld hl,#0000
	call l860c
	ld (l81d8),hl
	jr c,l8234
	ld a,d
	rra
	jr nc,l81eb
	and #0f
	ld (l8256),a
.l81eb
	rl d
	jr nc,l81f3
	ld (l8244),ix
.l81f3
	rl d
	jr nc,l8232
	ld a,e
.l81f9 equ $ + 1
	add #00
	ld (l8255),a
	ld hl,#0000
	ld (l8241),hl
	rl d
	jr c,l8212
.l8208 equ $ + 1
	ld hl,#0000
	ld a,(l8266)
	ld (l825e),a
	jr l822f
.l8212
	ld l,b
	add hl,hl
.l8215 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l8266),a
	ld (l825e),a
	ld a,(hl)
	or a
	jr z,l822b
	ld (l842e),a
.l822b
	inc hl
	ld (l8208),hl
.l822f
	ld (l8258),hl
.l8232
	ld a,#01
.l8234
	ld (l81d3),a
.l8238 equ $ + 1
	ld a,#01
.l8239
	ld (l8066),a
	ld iy,l8445
.l8241 equ $ + 1
	ld hl,#0000
.l8244 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8241),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l8256 equ $ + 2
.l8255 equ $ + 1
	ld de,#0000
.l8258 equ $ + 1
	ld hl,#0000
	call l8450
.l825e equ $ + 1
	ld a,#01
	dec a
	jr nz,l8267
	ld (l8258),hl
.l8266 equ $ + 1
	ld a,#06
.l8267
	ld (l825e),a
.l826a
	ld de,#0000
	exx
	ld de,#0000
.l8272 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l8295
	ld a,#01
	ld (l857f),a
	call l8450
	xor a
	ld (l857f),a
	ld a,l
	or h
	jr z,l828d
.l8289 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8292
.l828d
	ld (l8272),hl
	ld a,#06
.l8292
	ld (l8289),a
.l8295
	ld a,lx
	ex af,af'
	ld iy,l8443
.l829d equ $ + 1
	ld hl,#0000
.l82a0 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l829d),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l82b2 equ $ + 2
.l82b1 equ $ + 1
	ld de,#0000
.l82b4 equ $ + 1
	ld hl,#0000
	call l8450
.l82ba equ $ + 1
	ld a,#01
	dec a
	jr nz,l82c3
	ld (l82b4),hl
.l82c2 equ $ + 1
	ld a,#06
.l82c3
	ld (l82ba),a
.l82c6
	ld de,#0000
	exx
	ld de,#0000
.l82ce equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l82f1
	ld a,#01
	ld (l857f),a
	call l8450
	xor a
	ld (l857f),a
	ld a,l
	or h
	jr z,l82e9
.l82e5 equ $ + 1
	ld a,#01
	dec a
	jr nz,l82ee
.l82e9
	ld (l82ce),hl
	ld a,#06
.l82ee
	ld (l82e5),a
.l82f1
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l8441
.l82fc equ $ + 1
	ld hl,#0000
.l82ff equ $ + 1
	ld de,#0000
	add hl,de
	ld (l82fc),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l8311 equ $ + 2
.l8310 equ $ + 1
	ld de,#0000
.l8313 equ $ + 1
	ld hl,#0000
	call l8450
.l8319 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8322
	ld (l8313),hl
.l8321 equ $ + 1
	ld a,#06
.l8322
	ld (l8319),a
.l8325
	ld de,#0000
	exx
	ld de,#0000
.l832d equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l8350
	ld a,#01
	ld (l857f),a
	call l8450
	xor a
	ld (l857f),a
	ld a,l
	or h
	jr z,l8348
.l8344 equ $ + 1
	ld a,#01
	dec a
	jr nz,l834d
.l8348
	ld (l832d),hl
	ld a,#06
.l834d
	ld (l8344),a
.l8350
	ex af,af'
	or lx
.l8353
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l8441
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	out (c),a
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	pop iy
	pop ix
	ld a,(hl)
.l842e equ $ + 1
	cp #ff
	ret z
	ld (l842e),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l8441
	nop
	nop
.l8443
	nop
	nop
.l8445
	nop
	nop
.l8447
	nop
.l8448
	nop
	nop
	nop
	nop
	nop
.l844d
	nop
	nop
.l844f
	nop
.l8450
	ld b,(hl)
	inc hl
	rr b
	jp c,l84ae
	rr b
	jr c,l847e
	ld a,b
	and #0f
	jr nz,l8467
	ld (iy+#07),a
	ld lx,#09
	ret
.l8467
	ld lx,#08
	sub d
	jr nc,l846e
	xor a
.l846e
	ld (iy+#07),a
	rr b
	call l85e0
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l847e
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l848e
	ld (l8447),a
	ld lx,#00
.l848e
	ld a,b
	and #0f
	sub d
	jr nc,l8495
	xor a
.l8495
	ld (iy+#07),a
	bit 5,c
	jr nz,l849f
	inc lx
	ret
.l849f
	rr b
	bit 6,c
	call l85d2
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l84ae
	rr b
	jr nc,l84c1
	ld a,(l8319)
	ld c,a
	ld a,(l8321)
	cp c
	jr nz,l84c1
	ld a,#fe
	ld (l842e),a
.l84c1
	bit 1,b
	jp nz,l857a
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l844f),a
	bit 0,b
	jr z,l8530
	bit 2,b
	call l85d2
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l84f0),a
	ld a,b
	exx
.l84f0 equ $ + 1
	jr l84f1
.l84f1
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	jr nc,l8510
	inc hl
.l8510
	bit 5,a
	jr z,l8520
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l8520
	ld (l844d),hl
	exx
.l8524
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l8447),a
	ld lx,#00
	ret
.l8530
	bit 2,b
	call l85d2
	ld (l844d),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l8544),a
	ld a,b
	exx
.l8544 equ $ + 1
	jr l8545
.l8545
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	bit 5,a
	jr z,l8571
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l8571
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l8524
.l857a
	bit 0,b
	jr z,l858e
.l857f equ $ + 1
	ld a,#00
	or a
	jr z,l8587
	ld hl,#0000
	ret
.l8587
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l8450
.l858e
	ld (iy+#07),#10
	bit 5,b
	jr nz,l859b
	ld lx,#09
	jr l85ae
.l859b
	ld lx,#08
	ld hx,e
	bit 2,b
	call l85d2
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l85ae
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l844f),a
	rr b
	rr b
	bit 2,b
	call l85d2
	ld (l844d),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l8447),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l85d2
	jr z,l85e0
	ld a,(hl)
	inc hl
	exx
	add e
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld h,a
	ret
.l85e0
	bit 4,b
	jr z,l85f0
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld d,a
	exx
.l85f0
	ld a,e
	bit 3,b
	jr z,l85fd
	add (hl)
	inc hl
	cp #90
	jr c,l85fd
	ld a,#8f
.l85fd
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l8640
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l860c
	ld a,(hl)
	inc hl
	srl a
	jr c,l8633
	sub #20
	jr c,l863d
	jr z,l862f
	dec a
	ld e,a
.l861a
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l8628
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l8628
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l862f
	ld e,(hl)
	inc hl
	jr l861a
.l8633
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l863d
	add #20
	ret
.l8640
	db #ee,#0e,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
	db #0f,#00,#0e,#00,#0d,#00,#0d,#00
	db #0c,#00,#0b,#00,#0b,#00,#0a,#00
	db #09,#00,#09,#00,#08,#00,#08,#00
	db #07,#00,#07,#00,#07,#00,#06,#00
	db #06,#00,#06,#00,#05,#00,#05,#00
	db #05,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#03,#00,#03,#00
	db #03,#00,#03,#00,#03,#00,#02,#00
	db #02,#00,#02,#00,#02,#00,#02,#00
	db #02,#00,#02,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
;
;	player reallocated by Megachur
;

	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
;
.real_init_music	; #8767
;
	xor a
	ld (l805c),a
	ld hl,#0009
	add hl,de
	ld de,l8238
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l814b),hl
	ld (l81b0),hl
	ld (l8215),hl
	add hl,bc
	ld de,l80de
	ldi
	ld de,l812f
	ldi
	ld de,l8194
	ldi
	ld de,l81f9
	ldi
	ld de,l80ca
	ldi
	ldi
	ld (l8071),hl
	ld a,#01
	ld (l8066),a
	ld (l806c),a
	ld a,#ff
	ld (l844f),a
	ld hl,(l814b)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l8313),hl
	ld (l82b4),hl
	ld (l8258),hl
	ret
	; push ix
	; push iy
	; ld hl,l8448
	; ld bc,#0500
; .l87ca
	; ld (hl),c
	; inc hl
	; djnz l87ca
	; ld a,#3f
	; jp l8353
	; ld hl,#0002
	; add hl,sp
	; ld a,(hl)
	; rrca
	; jp c,l87e8
	; rrca
	; jp c,l87e4
	; ld hl,(l8272)
	; ret
; .l87e4
	; ld hl,(l82ce)
	; ret
; .l87e8
	; ld hl,(l832d)
	; ret
	; ld hl,#0002
	; add hl,sp
	; ld e,(hl)
	; inc hl
	; ld d,(hl)
	; ld hl,#000c
	; add hl,de
	; ld (l8847),hl
	; ld hl,#0000
	; ld (l832d),hl
	; ld (l82ce),hl
	; ld (l8272),hl
	; ret
	; ld (l8863),ix
	; pop af
	; pop hl
	; pop de
	; pop bc
	; pop ix
	; push ix
	; push bc
	; push de
	; push hl
	; push af
	; ld a,lx
	; rrca
	; jp c,l882f
	; rrca
	; jp c,l8828
	; ld ix,l826a
	; jp l8833
; .l8828
	; ld ix,l82c6
	; jp l8833
; .l882f
	; ld ix,l8325
; .l8833
	; ld (ix+#01),c
	; ld (ix+#02),b
	; ld a,e
	; ld (ix+#05),a
	; ld a,#0f
	; sub h
	; ld (ix+#06),a
	; ld h,#00
	; add hl,hl
; .l8847 equ $ + 1
	; ld bc,#0000
	; add hl,bc
	; ld a,(hl)
	; inc hl
	; ld h,(hl)
	; ld l,a
	; ld a,d
	; or a
	; jr nz,l8853
	; ld a,(hl)
; .l8853
	; ld (ix+#27),a
	; ld (ix+#1f),a
	; inc hl
	; inc hl
	; ld (ix+#08),l
	; ld (ix+#09),h
; .l8863 equ $ + 2
	; ld ix,#0000
	; ret
	; ld hl,#0002
	; add hl,sp
	; ld a,(hl)
	; ld hl,#0000
	; rrca
	; jp nc,l8875
	; ld (l832d),hl
; .l8875
	; rrca
	; jp nc,l887c
	; ld (l82ce),hl
; .l887c
	; rrca
	; jp z,l8883
	; ld (l8272),hl
; .l8883
	; ret

	; di
	; ld hl,(#0039)
	; ex de,hl
	; im 1
	; ld hl,#c9fb
	; ld (#0038),hl
	; ei
	; ex de,hl
	; ret
	; ld h,d
	; ld l,e
	; ld (de),a
	; inc de
	; push hl
	; dec c
	; ld a,#7e
	; sub c
	; sub c
	; ld (l88a9),a
	; jr l88a6
; .l88a3
	; push de
	; ldi
; .l88a6
	; ld c,#ff
; .l88a9 equ $ + 1
	; jr l88aa
; .l88aa
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; ldi
	; pop hl
	; dec b
	; ret z
	; ld e,l
	; ld a,h
	; add #08
	; ld d,a
	; and #38
	; jp nz,l88a3
	; ld a,e
	; add #50
	; ld e,a
	; ld a,d
	; adc #c0
	; ld d,a
	; jp l88a3
	; ld a,d
	; ld b,e
	; ld c,#09
	; ldi
	; ldi
	; add #08
	; ld d,a
	; ld e,b
	; ldi
	; ldi
	; add #08
	; ld d,a
	; ld e,b
	; ldi
	; ldi
	; add #08
	; ld d,a
	; ld e,b
	; ldi
	; ldi
	; ret
	; sbc h
	; ld a,e
	; add c
	; ld e,a
	; adc d
	; sub e
	; ld d,a
	; ld a,b
	; and #f8
	; ld l,a
	; ld h,#00
	; ld a,b
	; add hl,hl
	; ld b,h
	; ld c,l
	; add hl,hl
	; add hl,hl
	; add hl,bc
	; and #07
	; rlca
	; rlca
	; rlca
	; add h
	; ld h,a
	; add hl,de
	; ret
	; di
	; ld bc,#f782
	; out (c),c
	; ld bc,#f40e
	; ld e,b
	; out (c),c
	; ld bc,#f6c0
	; ld d,b
	; out (c),c
	; db #ed,#71 ; out (c),0
	; ld bc,#f792
	; out (c),c
	; ld a,#40
	; ld c,#0a
	; ld hl,#7e31
; .l899e
	; ld b,d
	; out (c),a
	; ld b,e
	; ini
	; inc a
	; dec c
	; jr nz,l899e
	; ld bc,#f782
	; out (c),c
	; ei
	; ret
;
; #7a78
; call #805d	; play music
;
; #7a57
; ld de,#0047
; call #8767	; init music
;
.init_music		; added by Megachur
;
	ld de,l0047
	jp real_init_music
;
.music_info
	db "Balls (2017)(CpcRetroDev.ByteRealms)(Manuel Alberola Torres)",0
	db "StArkos",0

	read "music_end.asm"
