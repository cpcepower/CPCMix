; Music of Still Scrolling (2018)(Public Domain)(Steph)(StArkos)
; Ripped by Megachur the 30/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "STILLSCR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 30
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

.l8000
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#0a,#01,#24,#80,#2d,#80
	db #37,#80,#4e,#80,#65,#80,#7d,#80
	db #92,#80,#b5,#80,#c7,#80,#d3,#80
	db #f5,#80,#0d,#81,#00,#00,#00,#00
	db #00,#00,#0d,#26,#80,#03,#fe,#25
	db #3a,#0c,#05,#3a,#0d,#2f,#80,#01
	db #00,#18,#5c,#03,#58,#07,#14,#60
	db #03,#68,#07,#28,#68,#03,#6c,#07
	db #28,#6c,#03,#0d,#46,#80,#01,#00
	db #24,#5c,#04,#58,#0b,#14,#60,#04
	db #68,#0b,#28,#68,#04,#6c,#0b,#28
	db #6c,#04,#0d,#5d,#80,#01,#00,#7e
	db #21,#f4,#7c,#f4,#78,#f4,#38,#34
	db #30,#2c,#28,#24,#20,#1c,#18,#14
	db #10,#0c,#0d,#26,#80,#01,#00,#3e
	db #01,#36,#01,#2e,#01,#26,#01,#1e
	db #01,#16,#01,#0e,#01,#06,#01,#0d
	db #26,#80,#01,#00,#3e,#12,#3a,#01
	db #36,#01,#32,#01,#2e,#01,#2a,#01
	db #26,#01,#22,#01,#1e,#01,#1a,#01
	db #16,#01,#12,#01,#0e,#01,#0a,#01
	db #06,#01,#0d,#26,#80,#01,#00,#3e
	db #21,#7c,#04,#3c,#78,#fc,#78,#f8
	db #74,#f8,#70,#f4,#0d,#26,#80,#06
	db #00,#2c,#14,#1c,#14,#1c,#08,#10
	db #0d,#ce,#80,#01,#00,#25,#48,#0c
	db #25,#48,#0c,#78,#0c,#38,#74,#0c
	db #70,#0c,#30,#6c,#f4,#2c,#68,#0c
	db #68,#18,#68,#0c,#28,#68,#18,#68
	db #f4,#28,#0d,#e6,#80,#01,#00,#3e
	db #21,#7c,#0c,#20,#60,#0c,#34,#74
	db #0c,#18,#58,#0c,#2c,#6c,#0c,#14
	db #54,#0c,#0d,#26,#80,#01,#00,#89
	db #18,#01,#00,#0d,#0f,#81,#40,#00
	db #00,#00,#b2,#81,#00,#32,#83,#1a
	db #84,#89,#84,#00,#32,#83,#1a,#84
	db #89,#84,#00,#f8,#84,#6c,#85,#ee
	db #85,#00,#48,#87,#12,#82,#cc,#82
	db #00,#54,#87,#12,#82,#9f,#83,#00
	db #b3,#81,#12,#82,#cc,#82,#00,#db
	db #81,#12,#82,#9f,#83,#00,#aa,#82
	db #10,#83,#9f,#83,#00,#aa,#82,#10
	db #83,#9f,#83,#00,#aa,#82,#12,#82
	db #9f,#83,#00,#48,#87,#12,#82,#fe
	db #86,#00,#54,#87,#12,#82,#24,#87
	db #00,#48,#87,#12,#82,#02,#82,#00
	db #54,#87,#12,#82,#f4,#81,#00,#e3
	db #83,#12,#82,#9f,#83,#00,#e3,#83
	db #12,#82,#9f,#83,#00,#cc,#82,#12
	db #82,#02,#82,#00,#54,#87,#12,#82
	db #f4,#81,#00,#db,#81,#12,#82,#fa
	db #83,#00,#db,#81,#12,#82,#fa,#83
	db #00,#58,#86,#b7,#86,#c6,#86,#01
	db #1c,#81,#00,#84,#e0,#00,#00,#01
	db #06,#45,#02,#45,#02,#45,#02,#41
	db #02,#45,#02,#49,#0e,#3b,#12,#53
	db #06,#53,#02,#53,#02,#53,#02,#4f
	db #02,#53,#02,#4f,#06,#4f,#0a,#4b
	db #06,#49,#00,#84,#e0,#00,#00,#01
	db #06,#45,#02,#45,#02,#45,#02,#41
	db #02,#45,#02,#49,#0e,#3b,#02,#42
	db #00,#0e,#47,#00,#b4,#e0,#00,#00
	db #02,#1e,#79,#42,#00,#1c,#b6,#60
	db #03,#00,#b4,#e0,#00,#00,#02,#1e
	db #79,#1e,#a2,#60,#03,#1e,#b8,#60
	db #02,#00,#84,#e0,#00,#00,#04,#7c
	db #60,#05,#9c,#60,#04,#5d,#7a,#60
	db #06,#42,#00,#84,#60,#07,#02,#9c
	db #60,#04,#7c,#60,#05,#9c,#60,#04
	db #5d,#62,#60,#06,#42,#00,#92,#60
	db #04,#02,#61,#7c,#60,#05,#a0,#60
	db #04,#61,#7a,#60,#06,#42,#00,#92
	db #60,#04,#02,#7a,#60,#07,#7c,#60
	db #05,#92,#60,#04,#53,#7a,#60,#06
	db #42,#00,#92,#60,#04,#02,#7a,#60
	db #07,#7c,#60,#05,#92,#60,#04,#53
	db #7a,#60,#06,#42,#00,#92,#60,#04
	db #02,#7a,#60,#07,#7c,#60,#05,#92
	db #60,#04,#53,#7a,#60,#06,#42,#00
	db #92,#60,#04,#02,#7a,#60,#07,#7c
	db #60,#05,#92,#60,#04,#53,#7a,#60
	db #06,#42,#00,#92,#60,#04,#02,#7a
	db #60,#07,#7c,#60,#05,#92,#60,#04
	db #53,#7a,#60,#06,#42,#00,#92,#60
	db #04,#00,#b4,#e0,#00,#00,#08,#04
	db #75,#04,#75,#04,#75,#04,#75,#04
	db #7b,#04,#87,#04,#87,#04,#87,#04
	db #87,#04,#87,#02,#42,#60,#00,#2e
	db #b0,#60,#09,#00,#a2,#e0,#00,#00
	db #08,#6b,#75,#63,#6b,#75,#63,#6b
	db #75,#63,#6b,#75,#63,#6b,#75,#6b
	db #67,#6f,#79,#67,#6f,#79,#67,#6f
	db #79,#67,#6f,#79,#67,#6f,#79,#6f
	db #6b,#71,#79,#6b,#71,#79,#6b,#71
	db #79,#6b,#71,#79,#6b,#71,#79,#71
	db #79,#7f,#87,#79,#7f,#87,#79,#7f
	db #87,#79,#7f,#87,#79,#7f,#87,#7f
	db #42,#80,#00,#00,#ba,#60,#08,#04
	db #7b,#04,#7b,#04,#7b,#04,#7b,#04
	db #79,#04,#79,#04,#79,#04,#79,#04
	db #79,#06,#42,#60,#00,#2e,#b0,#60
	db #09,#00,#a2,#e0,#00,#00,#08,#42
	db #00,#42,#00,#63,#42,#00,#42,#00
	db #63,#42,#00,#42,#00,#63,#42,#00
	db #42,#00,#63,#42,#00,#42,#00,#6b
	db #42,#00,#42,#00,#79,#42,#00,#42
	db #00,#79,#42,#00,#42,#00,#79,#42
	db #00,#42,#00,#79,#42,#00,#42,#00
	db #79,#42,#00,#42,#00,#71,#42,#00
	db #42,#00,#71,#42,#00,#42,#00,#71
	db #42,#00,#42,#00,#71,#42,#00,#42
	db #00,#71,#42,#00,#42,#00,#79,#42
	db #00,#42,#00,#79,#42,#00,#42,#00
	db #79,#42,#00,#42,#00,#79,#42,#00
	db #42,#00,#79,#42,#00,#02,#79,#a2
	db #e0,#00,#00,#08,#6b,#75,#63,#6b
	db #75,#63,#6b,#75,#63,#6b,#75,#63
	db #6b,#75,#6b,#67,#6f,#79,#67,#6f
	db #79,#67,#6f,#79,#67,#6f,#79,#67
	db #6f,#79,#6f,#67,#6d,#75,#67,#6d
	db #75,#67,#6d,#75,#67,#6d,#75,#67
	db #6d,#75,#6d,#67,#6d,#75,#67,#6d
	db #75,#67,#6d,#75,#67,#6d,#75,#67
	db #6d,#75,#6d,#b4,#e0,#00,#00,#09
	db #0e,#79,#02,#7b,#02,#42,#00,#06
	db #75,#0e,#79,#02,#7b,#0a,#75,#2e
	db #71,#00,#d6,#e0,#00,#00,#0a,#04
	db #91,#04,#93,#04,#8d,#04,#91,#02
	db #89,#02,#8d,#04,#85,#04,#89,#04
	db #83,#04,#63,#06,#67,#1a,#67,#69
	db #67,#00,#42,#80,#00,#00,#42,#00
	db #b4,#60,#08,#42,#00,#42,#00,#75
	db #42,#00,#42,#00,#75,#42,#00,#42
	db #00,#75,#42,#00,#42,#00,#75,#42
	db #00,#42,#00,#6f,#42,#00,#42,#00
	db #6f,#42,#00,#42,#00,#6f,#42,#00
	db #42,#00,#6f,#42,#00,#42,#00,#6f
	db #42,#00,#42,#00,#6b,#42,#00,#42
	db #00,#6b,#42,#00,#42,#00,#6b,#42
	db #00,#42,#00,#6b,#42,#00,#42,#00
	db #6b,#42,#00,#42,#00,#71,#42,#00
	db #42,#00,#87,#42,#00,#42,#00,#87
	db #42,#00,#42,#00,#87,#42,#00,#42
	db #00,#87,#42,#00,#42,#00,#87,#42
	db #00,#42,#80,#00,#00,#aa,#60,#08
	db #42,#00,#42,#00,#6b,#42,#00,#42
	db #00,#6b,#42,#00,#42,#00,#6b,#42
	db #00,#42,#00,#6b,#42,#00,#42,#00
	db #67,#42,#00,#42,#00,#67,#42,#00
	db #42,#00,#67,#42,#00,#42,#00,#67
	db #42,#00,#42,#00,#67,#42,#00,#42
	db #00,#6f,#42,#00,#42,#00,#79,#42
	db #00,#42,#00,#79,#42,#00,#42,#00
	db #79,#42,#00,#42,#00,#79,#42,#00
	db #42,#00,#79,#42,#00,#42,#00,#7f
	db #42,#00,#42,#00,#7f,#42,#00,#42
	db #00,#7f,#42,#00,#42,#00,#7f,#42
	db #00,#42,#00,#7f,#42,#00,#42,#00
	db #a2,#e0,#00,#00,#08,#42,#00,#42
	db #00,#63,#42,#00,#42,#00,#63,#42
	db #00,#42,#00,#63,#42,#00,#42,#00
	db #63,#42,#00,#72,#60,#04,#aa,#60
	db #08,#76,#60,#04,#42,#00,#b8,#60
	db #08,#42,#00,#42,#00,#79,#42,#00
	db #42,#00,#79,#42,#00,#42,#00,#79
	db #42,#00,#42,#00,#79,#42,#00,#42
	db #00,#6d,#42,#00,#42,#00,#6d,#42
	db #00,#42,#00,#6d,#42,#00,#42,#00
	db #6d,#42,#00,#42,#00,#6d,#42,#00
	db #42,#00,#67,#42,#00,#42,#00,#67
	db #42,#00,#42,#00,#67,#42,#00,#42
	db #00,#67,#42,#00,#42,#00,#67,#42
	db #00,#42,#00,#6d,#72,#e0,#00,#00
	db #04,#aa,#60,#08,#42,#00,#42,#00
	db #6b,#42,#00,#42,#00,#6b,#42,#00
	db #42,#00,#6b,#42,#00,#42,#00,#6b
	db #42,#00,#42,#00,#67,#42,#00,#42
	db #00,#67,#42,#00,#42,#00,#67,#42
	db #00,#42,#00,#67,#42,#00,#42,#00
	db #67,#42,#00,#42,#00,#6f,#76,#60
	db #04,#42,#00,#b4,#60,#08,#42,#00
	db #42,#00,#75,#42,#00,#42,#00,#75
	db #42,#00,#42,#00,#75,#42,#00,#42
	db #00,#75,#42,#00,#76,#60,#04,#ac
	db #60,#08,#42,#00,#76,#60,#04,#ac
	db #60,#08,#42,#00,#76,#60,#04,#ac
	db #60,#08,#42,#00,#8a,#60,#04,#ac
	db #60,#08,#42,#00,#76,#60,#04,#ac
	db #60,#08,#76,#60,#04,#33,#76,#e0
	db #00,#00,#04,#42,#00,#b4,#60,#08
	db #42,#00,#42,#00,#75,#42,#00,#42
	db #00,#75,#42,#00,#42,#00,#75,#42
	db #00,#42,#00,#75,#42,#00,#42,#00
	db #6f,#42,#00,#42,#00,#6f,#42,#00
	db #42,#00,#6f,#42,#00,#42,#00,#6f
	db #42,#00,#42,#00,#6f,#42,#00,#42
	db #00,#67,#42,#00,#42,#00,#67,#42
	db #00,#42,#00,#67,#42,#00,#42,#00
	db #67,#42,#00,#42,#00,#67,#42,#00
	db #42,#00,#6d,#42,#00,#42,#00,#75
	db #42,#00,#42,#00,#75,#42,#00,#42
	db #00,#75,#42,#00,#42,#00,#75,#00
	db #6c,#e0,#00,#00,#04,#6e,#60,#05
	db #84,#60,#04,#45,#6c,#60,#06,#42
	db #00,#84,#60,#07,#02,#6c,#60,#04
	db #6e,#60,#05,#84,#60,#04,#45,#6c
	db #60,#06,#42,#00,#84,#60,#04,#02
	db #2d,#6e,#60,#05,#84,#60,#04,#45
	db #6c,#60,#06,#42,#00,#84,#60,#04
	db #02,#2d,#6e,#60,#05,#84,#60,#04
	db #45,#6c,#60,#06,#42,#00,#84,#60
	db #04,#02,#2d,#6e,#60,#05,#84,#60
	db #04,#45,#6c,#60,#06,#42,#00,#84
	db #60,#07,#06,#42,#60,#00,#00,#84
	db #e0,#00,#00,#01,#3e,#0e,#be,#60
	db #06,#04,#42,#60,#00,#00,#84,#e0
	db #00,#00,#04,#2c,#42,#80,#01,#00
	db #42,#80,#00,#00,#1a,#6c,#c0,#01
	db #00,#42,#00,#42,#80,#02,#00,#42
	db #80,#01,#00,#42,#60,#00,#42,#80
	db #00,#00,#1e,#6c,#e0,#01,#00,#0b
	db #42,#00,#42,#80,#02,#00,#42,#80
	db #01,#00,#42,#80,#00,#00,#b8,#e0
	db #00,#00,#09,#06,#79,#02,#75,#0a
	db #6b,#06,#79,#06,#79,#02,#75,#0a
	db #6b,#06,#79,#06,#79,#02,#75,#0a
	db #6b,#06,#71,#06,#71,#02,#6f,#06
	db #6b,#04,#67,#00,#b8,#e0,#00,#00
	db #09,#06,#79,#02,#75,#0a,#6b,#06
	db #79,#06,#79,#02,#75,#0a,#6b,#06
	db #71,#0e,#75,#06,#77,#02,#75,#0a
	db #71,#02,#6d,#0a,#71,#02,#6b,#00
	db #84,#e0,#00,#00,#01,#1e,#49,#1e
	db #53,#1e,#4f,#00,#84,#e0,#00,#00
	db #01,#1e,#49,#1e,#47,#00,#00,#00
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
	db #00,#0d,#32,#08,#13,#0d,#20,#08
	db #13,#0d,#20,#08,#13,#0d,#20,#08
	db #13,#0d,#20,#08,#13,#0d,#20,#08
	db #13,#0d,#20,#08,#00,#0d,#32,#08
	db #00,#0d,#32,#08,#00,#0d,#32,#08
	db #00,#0d,#32,#08,#00,#0d,#32,#08
;
	jp l8e2a	; init music de=music data
	jp l8832
	jp l8e7f	; stop music
.l8831
	db #00
;
.play_music
.l8832
;
	xor a
	ld (l8831),a
.l8837 equ $ + 1
	ld a,#01
	dec a
	jp nz,l89f6
.l883d equ $ + 1
	ld a,#01
	dec a
	jr nz,l88a9
.l8842 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l8850
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l8850
	rra
	jr nc,l8858
	ld de,l88ec
	ldi
.l8858
	rra
	jr nc,l8860
	ld de,l8951
	ldi
.l8860
	rra
	jr nc,l8868
	ld de,l89b6
	ldi
.l8868
	ld de,l88cb
	ldi
	ldi
	ld de,l8930
	ldi
	ldi
	ld de,l8995
	ldi
	ldi
	rra
	jr nc,l8885
	ld de,l88a8
	ldi
.l8885
	rra
	jr nc,l8890
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l8894),de
.l8890
	ld (l8842),hl
.l8894 equ $ + 1
	ld hl,#0000
	ld (l88b2),hl
	ld a,#01
	ld (l88ad),a
	ld (l88c6),a
	ld (l892b),a
	ld (l8990),a
.l88a8 equ $ + 1
	ld a,#01
.l88a9
	ld (l883d),a
.l88ad equ $ + 1
	ld a,#01
	dec a
	jr nz,l88c2
.l88b2 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l88bf
	ld (l89f5),a
	ld a,#01
.l88bf
	ld (l88b2),hl
.l88c2
	ld (l88ad),a
.l88c6 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8927
.l88cb equ $ + 1
	ld hl,#0000
	call l8cd6
	ld (l88cb),hl
	jr c,l8927
	ld a,d
	rra
	jr nc,l88de
	and #0f
	ld (l8a78),a
.l88de
	rl d
	jr nc,l88e6
	ld (l8a66),ix
.l88e6
	rl d
	jr nc,l8925
	ld a,e
.l88ec equ $ + 1
	add #00
	ld (l8a77),a
	ld hl,#0000
	ld (l8a63),hl
	rl d
	jr c,l8905
.l88fb equ $ + 1
	ld hl,#0000
	ld a,(l8a88)
	ld (l8a80),a
	jr l8922
.l8905
	ld l,b
	add hl,hl
.l8908 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l8a88),a
	ld (l8a80),a
	ld a,(hl)
	or a
	jr z,l891e
	ld (l8b66),a
.l891e
	inc hl
	ld (l88fb),hl
.l8922
	ld (l8a7a),hl
.l8925
	ld a,#01
.l8927
	ld (l88c6),a
.l892b equ $ + 1
	ld a,#01
	dec a
	jr nz,l898c
.l8930 equ $ + 1
	ld hl,#0000
	call l8cd6
	ld (l8930),hl
	jr c,l898c
	ld a,d
	rra
	jr nc,l8943
	and #0f
	ld (l8a44),a
.l8943
	rl d
	jr nc,l894b
	ld (l8a32),ix
.l894b
	rl d
	jr nc,l898a
	ld a,e
.l8951 equ $ + 1
	add #00
	ld (l8a43),a
	ld hl,#0000
	ld (l8a2f),hl
	rl d
	jr c,l896a
.l8960 equ $ + 1
	ld hl,#0000
	ld a,(l8a54)
	ld (l8a4c),a
	jr l8987
.l896a
	ld l,b
	add hl,hl
.l896d equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l8a54),a
	ld (l8a4c),a
	ld a,(hl)
	or a
	jr z,l8983
	ld (l8b66),a
.l8983
	inc hl
	ld (l8960),hl
.l8987
	ld (l8a46),hl
.l898a
	ld a,#01
.l898c
	ld (l892b),a
.l8990 equ $ + 1
	ld a,#01
	dec a
	jr nz,l89f1
.l8995 equ $ + 1
	ld hl,#0000
	call l8cd6
	ld (l8995),hl
	jr c,l89f1
	ld a,d
	rra
	jr nc,l89a8
	and #0f
	ld (l8a13),a
.l89a8
	rl d
	jr nc,l89b0
	ld (l8a01),ix
.l89b0
	rl d
	jr nc,l89ef
	ld a,e
.l89b6 equ $ + 1
	add #00
	ld (l8a12),a
	ld hl,#0000
	ld (l89fe),hl
	rl d
	jr c,l89cf
.l89c5 equ $ + 1
	ld hl,#0000
	ld a,(l8a23)
	ld (l8a1b),a
	jr l89ec
.l89cf
	ld l,b
	add hl,hl
.l89d2 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l8a23),a
	ld (l8a1b),a
	ld a,(hl)
	or a
	jr z,l89e8
	ld (l8b66),a
.l89e8
	inc hl
	ld (l89c5),hl
.l89ec
	ld (l8a15),hl
.l89ef
	ld a,#01
.l89f1
	ld (l8990),a
.l89f5 equ $ + 1
	ld a,#01
.l89f6
	ld (l8837),a
	ld iy,l8b7d
.l89fe equ $ + 1
	ld hl,#0000
.l8a01 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l89fe),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l8a13 equ $ + 2
.l8a12 equ $ + 1
	ld de,#0000
.l8a15 equ $ + 1
	ld hl,#0000
	call l8b88
.l8a1b equ $ + 1
	ld a,#01
	dec a
	jr nz,l8a24
	ld (l8a15),hl
.l8a23 equ $ + 1
	ld a,#06
.l8a24
	ld (l8a1b),a
	ld a,lx
	ex af,af'
	ld iy,l8b7b
.l8a2f equ $ + 1
	ld hl,#0000
.l8a32 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8a2f),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l8a44 equ $ + 2
.l8a43 equ $ + 1
	ld de,#0000
.l8a46 equ $ + 1
	ld hl,#0000
	call l8b88
.l8a4c equ $ + 1
	ld a,#01
	dec a
	jr nz,l8a55
	ld (l8a46),hl
.l8a54 equ $ + 1
	ld a,#06
.l8a55
	ld (l8a4c),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l8b79
.l8a63 equ $ + 1
	ld hl,#0000
.l8a66 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8a63),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l8a78 equ $ + 2
.l8a77 equ $ + 1
	ld de,#0000
.l8a7a equ $ + 1
	ld hl,#0000
	call l8b88
.l8a80 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8a89
	ld (l8a7a),hl
.l8a88 equ $ + 1
	ld a,#06
.l8a89
	ld (l8a80),a
	ex af,af'
	or lx
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l8b79
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
	ld a,(hl)
.l8b66 equ $ + 1
	cp #ff
	ret z
	ld (l8b66),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l8b79
	nop
	nop
.l8b7b
	nop
	nop
.l8b7d
	nop
	nop
.l8b7f
	nop
	nop
	nop
	nop
	nop
	nop
.l8b85
	nop
	nop
.l8b87
	nop
.l8b88
	ld b,(hl)
	inc hl
	rr b
	jp c,l8be6
	rr b
	jr c,l8bb6
	ld a,b
	and #0f
	jr nz,l8b9f
	ld (iy+#07),a
	ld lx,#09
	ret
.l8b9f
	ld lx,#08
	sub d
	jr nc,l8ba6
	xor a
.l8ba6
	ld (iy+#07),a
	rr b
	call l8caa
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l8bb6
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l8bc6
	ld (l8b7f),a
	ld lx,#00
.l8bc6
	ld a,b
	and #0f
	sub d
	jr nc,l8bcd
	xor a
.l8bcd
	ld (iy+#07),a
	bit 5,c
	jr nz,l8bd7
	inc lx
	ret
.l8bd7
	rr b
	bit 6,c
	call l8c9c
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l8be6
	rr b
	jr nc,l8bf9
	ld a,(l8a80)
	ld c,a
	ld a,(l8a88)
	cp c
	jr nz,l8bf9
	ld a,#fe
	ld (l8b66),a
.l8bf9
	bit 1,b
	jp nz,l8c4d
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l8b87),a
	bit 2,b
	call l8c9c
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l8c24),a
	ld a,b
	exx
.l8c24 equ $ + 1
	jr l8c25
.l8c25
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
	jr nc,l8c44
	inc hl
.l8c44
	bit 5,a
	jr z,l8c48
.l8c48
	ld (l8b85),hl
	exx
	ret
.l8c4d
	bit 0,b
	jr z,l8c58
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l8b88
.l8c58
	ld (iy+#07),#10
	bit 5,b
	jr nz,l8c65
	ld lx,#09
	jr l8c78
.l8c65
	ld lx,#08
	ld hx,e
	bit 2,b
	call l8c9c
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l8c78
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l8b87),a
	rr b
	rr b
	bit 2,b
	call l8c9c
	ld (l8b85),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l8b7f),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l8c9c
	jr z,l8caa
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
.l8caa
	bit 4,b
	jr z,l8cba
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
.l8cba
	ld a,e
	bit 3,b
	jr z,l8cc7
	add (hl)
	inc hl
	cp #90
	jr c,l8cc7
	ld a,#8f
.l8cc7
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l8d0a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l8cd6
	ld a,(hl)
	inc hl
	srl a
	jr c,l8cfd
	sub #20
	jr c,l8d07
	jr z,l8cf9
	dec a
	ld e,a
.l8ce4
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l8cf2
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l8cf2
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l8cf9
	ld e,(hl)
	inc hl
	jr l8ce4
.l8cfd
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l8d07
	add #20
	ret
.l8d0a
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
	dw #03bc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
	dw #00ef,#00e1,#00d5,#00c9
	dw #00be,#00b3,#00a9,#009f
	dw #0096,#008e,#0086,#007f
	dw #0077,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
	dw #000f,#000e,#000d,#000d
	dw #000c,#000b,#000b,#000a
	dw #0009,#0009,#0008,#0008
	dw #0007,#0007,#0007,#0006
	dw #0006,#0006,#0005,#0005
	dw #0005,#0004,#0004,#0004
	dw #0004,#0004,#0003,#0003
	dw #0003,#0003,#0003,#0002
	dw #0002,#0002,#0002,#0002
	dw #0002,#0002,#0002,#0002
	dw #0001,#0001,#0001,#0001
	dw #0001,#0001,#0001,#0001
;
.real_init_music
.l8e2a
;
	ld hl,#0009
	add hl,de
	ld de,l89f5
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l8908),hl
	ld (l896d),hl
	ld (l89d2),hl
	add hl,bc
	ld de,l88a8
	ldi
	ld de,l88ec
	ldi
	ld de,l8951
	ldi
	ld de,l89b6
	ldi
	ld de,l8894
	ldi
	ldi
	ld (l8842),hl
	ld a,#01
	ld (l8837),a
	ld (l883d),a
	ld a,#ff
	ld (l8b87),a
	ld hl,(l8908)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l8a7a),hl
	ld (l8a46),hl
	ld (l8a15),hl
	ret
;
.stop_music
.l8e7f
;
	ld de,#4000
	ld bc,#f782
	out (c),c
	ld b,#f4
	out (c),a
	ld bc,#f6c0
	out (c),c
	out (c),e
	ld bc,#f792
	out (c),c
	dec b
	out (c),d
	ld b,#f4
	in a,(c)
	ld bc,#f782
	out (c),c
	dec b
	out (c),e
	ret
;
; #9014
; ld de,#8000
; call #8828
;
.init_music
	ld de,l8000
	jp real_init_music
;
.music_info
	db "Still Scrolling (2018)(Public Domain)(Steph)",0
	db "StArkos",0

	read "music_end.asm"
