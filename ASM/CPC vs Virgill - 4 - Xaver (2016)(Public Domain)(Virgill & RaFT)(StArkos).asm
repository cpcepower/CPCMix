; Music of CPC vs Virgill - 4 - Xaver (2016)(Public Domain)(Virgill & RaFT)(StArkos)
; Ripped by Megachur the 18/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPCVSVI4.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6000

	read "music_header.asm"
;
; f4 Xaver
;
.l6000
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#08,#88,#01,#22,#60,#2b,#60
	db #32,#60,#4a,#60,#63,#60,#9a,#60
	db #ca,#60,#2e,#61,#35,#61,#79,#61
	db #84,#61,#00,#00,#00,#00,#00,#00
	db #0d,#24,#60,#01,#fe,#05,#48,#0d
	db #2d,#60,#01,#00,#3e,#21,#7c,#0c
	db #20,#60,#0c,#34,#74,#0c,#18,#58
	db #0c,#2c,#6c,#0c,#14,#54,#0c,#0d
	db #24,#60,#01,#00,#2c,#30,#30,#38
	db #bc,#01,#00,#38,#34,#30,#2c,#2c
	db #28,#28,#24,#24,#20,#20,#1c,#20
	db #0d,#5e,#60,#01,#00,#7e,#29,#0c
	db #7c,#08,#7c,#03,#76,#25,#02,#72
	db #25,#01,#38,#3c,#38,#34,#30,#2c
	db #2c,#28,#28,#24,#24,#20,#6e,#29
	db #0c,#6c,#08,#6c,#03,#6a,#25,#02
	db #66,#25,#01,#1c,#a0,#01,#00,#1c
	db #20,#1c,#20,#1c,#20,#1c,#20,#0d
	db #7e,#60,#01,#00,#7e,#26,#0c,#7c
	db #09,#74,#05,#74,#03,#32,#00,#78
	db #0c,#fc,#01,#00,#0c,#78,#0c,#74
	db #0c,#70,#0c,#6c,#0c,#6c,#0c,#68
	db #0c,#68,#0c,#64,#0c,#64,#0c,#60
	db #0c,#60,#0c,#5c,#0c,#60,#0c,#0d
	db #c3,#60,#01,#00,#28,#2c,#70,#0c
	db #74,#0c,#34,#74,#0c,#f8,#ff,#ff
	db #0c,#b8,#ff,#ff,#f8,#ff,#ff,#0c
	db #78,#0c,#38,#78,#0c,#74,#0c,#34
	db #34,#f4,#ff,#ff,#0c,#f0,#ff,#ff
	db #0c,#b0,#ff,#ff,#70,#0c,#70,#0c
	db #2c,#68,#0c,#68,#0c,#28,#e4,#ff
	db #ff,#0c,#e4,#ff,#ff,#0c,#a4,#ff
	db #ff,#60,#0c,#60,#0c,#20,#60,#0c
	db #60,#0c,#20,#a0,#ff,#ff,#e0,#ff
	db #ff,#0c,#dc,#ff,#ff,#0c,#1c,#5c
	db #0c,#5c,#0c,#1c,#5c,#0c,#5c,#0c
	db #9c,#ff,#ff,#0d,#1a,#61,#05,#00
	db #05,#58,#0d,#24,#60,#0e,#00,#06
	db #10,#06,#0f,#0a,#0e,#0a,#0d,#0e
	db #0c,#12,#0b,#16,#0a,#1a,#09,#1a
	db #08,#1e,#07,#1e,#05,#22,#06,#22
	db #07,#26,#08,#26,#0a,#26,#0a,#22
	db #0c,#22,#0d,#1e,#0e,#1e,#0f,#1a
	db #10,#1a,#11,#16,#12,#16,#12,#12
	db #12,#12,#12,#0e,#12,#0e,#11,#0a
	db #10,#0a,#10,#06,#11,#00,#0d,#24
	db #60,#01,#00,#34,#30,#30,#30,#34
	db #30,#0d,#24,#60,#01,#00,#7e,#26
	db #0c,#7c,#09,#74,#05,#74,#03,#02
	db #20,#0d,#8f,#61,#40,#00,#00,#00
	db #f1,#61,#00,#bb,#62,#cd,#62,#dc
	db #62,#00,#07,#63,#6a,#63,#32,#63
	db #00,#db,#64,#93,#63,#32,#63,#00
	db #8d,#65,#bc,#65,#01,#66,#00,#bc
	db #63,#ea,#63,#2f,#64,#00,#6d,#64
	db #88,#64,#a3,#64,#00,#09,#65,#4e
	db #65,#39,#66,#00,#f2,#61,#30,#62
	db #75,#62,#00,#7d,#66,#c1,#66,#06
	db #67,#00,#52,#67,#90,#67,#d5,#67
	db #00,#1b,#68,#3f,#68,#75,#68,#00
	db #93,#68,#9b,#68,#a5,#68,#01,#9a
	db #61,#00,#9c,#e0,#00,#00,#01,#0e
	db #42,#60,#00,#0e,#b4,#61,#01,#06
	db #67,#06,#cc,#63,#02,#02,#cc,#4f
	db #02,#be,#43,#02,#be,#4f,#02,#ac
	db #61,#01,#06,#5d,#06,#c4,#63,#02
	db #02,#c4,#4f,#02,#b4,#43,#02,#b4
	db #4f,#02,#9e,#61,#01,#06,#53,#06
	db #42,#60,#00,#06,#8e,#60,#01,#00
	db #64,#e0,#00,#00,#03,#0e,#62,#60
	db #04,#42,#00,#0c,#46,#60,#05,#02
	db #07,#42,#00,#42,#00,#06,#5e,#60
	db #04,#42,#00,#08,#46,#60,#05,#02
	db #17,#42,#00,#42,#00,#02,#42,#00
	db #06,#6e,#60,#04,#42,#00,#0c,#50
	db #60,#05,#42,#00,#11,#42,#00,#42
	db #00,#06,#68,#60,#04,#42,#00,#08
	db #50,#60,#05,#42,#00,#9c,#e9,#00
	db #00,#06,#02,#a6,#60,#07,#02,#7f
	db #02,#97,#02,#4f,#02,#67,#02,#7f
	db #02,#97,#02,#cc,#60,#06,#06,#be
	db #40,#02,#d6,#60,#07,#0a,#7f,#02
	db #67,#02,#c4,#60,#06,#06,#b4,#40
	db #02,#d6,#60,#07,#0a,#7f,#02,#67
	db #02,#b6,#60,#06,#06,#6b,#bc,#60
	db #07,#83,#89,#8f,#95,#9b,#a1,#b3
	db #ad,#a7,#a1,#42,#81,#00,#00,#06
	db #42,#00,#0e,#d6,#60,#08,#2e,#42
	db #00,#0e,#42,#00,#00,#42,#81,#00
	db #00,#0e,#d6,#60,#08,#2e,#42,#00
	db #0e,#42,#00,#00,#42,#81,#00,#00
	db #1e,#8e,#60,#09,#02,#67,#02,#7f
	db #02,#97,#0a,#7f,#02,#67,#02,#4f
	db #02,#67,#02,#7f,#02,#97,#0a,#7f
	db #02,#67,#02,#4f,#02,#67,#02,#7f
	db #02,#97,#0a,#7f,#02,#67,#00,#42
	db #80,#00,#00,#0e,#42,#01,#06,#42
	db #00,#06,#b4,#60,#06,#06,#67,#06
	db #b4,#4d,#06,#67,#06,#ac,#41,#06
	db #5d,#06,#ac,#4d,#06,#5d,#06,#9e
	db #41,#06,#53,#06,#9e,#4d,#06,#9e
	db #41,#00,#8e,#e0,#00,#00,#09,#02
	db #67,#02,#7f,#02,#97,#02,#4f,#02
	db #67,#02,#7f,#02,#97,#02,#4f,#02
	db #67,#02,#7f,#02,#97,#0a,#7f,#02
	db #67,#02,#4f,#02,#67,#02,#7f,#02
	db #97,#0a,#7f,#02,#67,#02,#4f,#02
	db #67,#02,#7f,#02,#97,#0a,#7f,#02
	db #67,#00,#42,#80,#00,#00,#06,#42
	db #01,#16,#46,#60,#05,#02,#07,#42
	db #00,#42,#00,#12,#07,#02,#17,#42
	db #00,#42,#00,#02,#42,#00,#16,#11
	db #42,#00,#11,#42,#00,#42,#00,#12
	db #11,#42,#00,#64,#e0,#00,#00,#03
	db #0e,#23,#0e,#46,#60,#05,#02,#07
	db #42,#00,#42,#00,#12,#07,#02,#17
	db #42,#00,#42,#00,#02,#42,#00,#16
	db #11,#42,#00,#11,#42,#00,#42,#00
	db #12,#11,#42,#00,#b4,#e1,#00,#00
	db #06,#06,#a6,#4b,#06,#b4,#40,#06
	db #a6,#4d,#06,#cc,#41,#06,#7f,#06
	db #cc,#4b,#06,#7f,#06,#c4,#41,#06
	db #75,#06,#c4,#4b,#06,#75,#06,#b6
	db #41,#06,#6b,#06,#b6,#4b,#06,#a6
	db #41,#00,#64,#e0,#00,#00,#03,#0e
	db #62,#60,#04,#42,#00,#0c,#46,#60
	db #05,#02,#07,#42,#00,#42,#00,#06
	db #5e,#60,#04,#42,#00,#08,#46,#60
	db #05,#02,#17,#42,#00,#42,#00,#02
	db #42,#00,#06,#6e,#60,#04,#42,#00
	db #0c,#50,#60,#05,#42,#00,#11,#42
	db #00,#42,#00,#06,#68,#60,#04,#42
	db #00,#08,#50,#60,#05,#42,#00,#8e
	db #e0,#00,#00,#09,#02,#67,#02,#7f
	db #02,#97,#02,#4f,#02,#67,#02,#7f
	db #02,#97,#02,#4f,#02,#67,#02,#7f
	db #02,#97,#0a,#7f,#02,#67,#02,#4f
	db #02,#67,#02,#7f,#02,#97,#0a,#7f
	db #02,#67,#02,#9e,#60,#07,#67,#6b
	db #71,#77,#7d,#83,#89,#8f,#95,#9b
	db #a1,#b3,#ad,#a7,#a1,#a4,#e1,#00
	db #00,#06,#06,#a6,#4b,#06,#a4,#40
	db #06,#a6,#4d,#06,#76,#61,#01,#1e
	db #42,#60,#00,#1e,#76,#60,#01,#00
	db #6c,#e0,#00,#00,#03,#0e,#6c,#60
	db #04,#42,#00,#0c,#46,#60,#05,#20
	db #42,#60,#00,#1c,#46,#60,#05,#06
	db #42,#01,#00,#8c,#e0,#00,#00,#07
	db #02,#65,#02,#7d,#02,#95,#02,#4d
	db #02,#65,#02,#7d,#02,#65,#02,#4f
	db #02,#67,#02,#7f,#02,#97,#0a,#7f
	db #02,#67,#02,#4f,#02,#67,#02,#7f
	db #02,#97,#0a,#7f,#02,#67,#02,#4f
	db #02,#67,#02,#7f,#02,#97,#0a,#7f
	db #02,#67,#00,#9c,#e1,#00,#00,#06
	db #06,#9e,#4d,#06,#9c,#40,#06,#9e
	db #4f,#06,#cc,#41,#06,#7f,#06,#cc
	db #4d,#06,#7f,#06,#c4,#41,#06,#75
	db #06,#c4,#4d,#06,#75,#06,#b6,#41
	db #06,#6b,#06,#b6,#4d,#06,#a6,#41
	db #00,#42,#60,#00,#42,#80,#00,#00
	db #04,#76,#61,#08,#42,#00,#02,#42
	db #00,#10,#b4,#60,#01,#06,#67,#06
	db #cc,#63,#02,#02,#cc,#4f,#02,#be
	db #43,#02,#be,#4f,#02,#ac,#61,#01
	db #06,#5d,#06,#c4,#63,#02,#02,#c4
	db #4f,#02,#b4,#43,#02,#b4,#4f,#02
	db #9e,#61,#01,#06,#53,#06,#42,#60
	db #00,#06,#8e,#60,#01,#00,#46,#e0
	db #00,#00,#0a,#1e,#46,#60,#05,#02
	db #07,#42,#00,#42,#00,#06,#5e,#60
	db #04,#42,#00,#08,#46,#60,#05,#02
	db #17,#42,#00,#42,#00,#02,#42,#00
	db #06,#6e,#60,#04,#42,#00,#0c,#50
	db #60,#05,#42,#00,#11,#42,#00,#42
	db #00,#06,#68,#60,#04,#42,#00,#08
	db #50,#60,#05,#42,#00,#a4,#e1,#00
	db #00,#06,#06,#a6,#4d,#06,#a4,#40
	db #06,#a6,#4f,#06,#cc,#41,#06,#7f
	db #06,#cc,#4d,#06,#7f,#06,#c4,#41
	db #06,#75,#06,#c4,#4d,#06,#b4,#40
	db #06,#b6,#41,#06,#6b,#06,#b6,#4d
	db #06,#b6,#41,#00,#6c,#e0,#00,#00
	db #03,#0e,#6c,#60,#04,#42,#00,#0c
	db #46,#60,#05,#02,#07,#42,#00,#42
	db #00,#06,#5e,#60,#04,#42,#00,#08
	db #46,#60,#05,#02,#17,#42,#00,#42
	db #00,#02,#42,#00,#06,#6e,#60,#04
	db #42,#00,#0c,#50,#60,#05,#42,#00
	db #11,#42,#00,#42,#00,#06,#68,#60
	db #04,#42,#00,#08,#50,#60,#05,#42
	db #00,#8c,#e0,#00,#00,#09,#02,#65
	db #02,#7d,#02,#95,#02,#4d,#02,#65
	db #02,#7d,#02,#65,#02,#4f,#02,#67
	db #02,#7f,#02,#97,#0a,#7f,#02,#67
	db #02,#4f,#02,#67,#02,#7f,#02,#97
	db #0a,#7f,#02,#67,#02,#4f,#02,#67
	db #02,#7f,#02,#97,#0a,#7f,#02,#67
	db #00,#8e,#e0,#00,#00,#07,#02,#67
	db #02,#7f,#02,#97,#02,#4f,#02,#67
	db #02,#7f,#02,#97,#02,#b4,#69,#06
	db #06,#a6,#40,#02,#d6,#60,#07,#0a
	db #7f,#02,#67,#02,#ac,#60,#06,#06
	db #5d,#02,#d6,#60,#07,#0a,#7f,#02
	db #67,#02,#9e,#60,#06,#06,#92,#40
	db #02,#d6,#60,#07,#0a,#8e,#60,#06
	db #02,#a6,#60,#07,#00,#8c,#e1,#00
	db #00,#01,#06,#42,#0b,#06,#42,#60
	db #00,#06,#42,#0d,#06,#b4,#61,#01
	db #06,#67,#06,#cc,#63,#02,#02,#cc
	db #4f,#02,#be,#43,#02,#be,#4f,#02
	db #c4,#61,#01,#06,#75,#06,#c4,#63
	db #02,#02,#c4,#4f,#02,#b4,#43,#02
	db #b4,#4f,#02,#b6,#61,#01,#06,#6b
	db #06,#42,#60,#00,#06,#a6,#60,#01
	db #00,#6c,#e0,#00,#00,#03,#0e,#6c
	db #60,#04,#42,#00,#0c,#46,#60,#05
	db #02,#07,#42,#00,#42,#00,#06,#5e
	db #60,#04,#42,#00,#08,#46,#60,#05
	db #02,#17,#42,#00,#42,#00,#02,#42
	db #00,#06,#6e,#60,#04,#42,#00,#0c
	db #50,#60,#05,#42,#00,#11,#42,#00
	db #42,#00,#06,#68,#60,#04,#42,#00
	db #08,#50,#60,#05,#42,#00,#8c,#e0
	db #00,#00,#07,#02,#65,#02,#7d,#02
	db #95,#02,#4d,#02,#65,#02,#7d,#02
	db #65,#02,#cc,#69,#06,#42,#00,#02
	db #42,#00,#be,#40,#42,#00,#d6,#60
	db #07,#42,#00,#08,#7f,#02,#67,#02
	db #c4,#60,#06,#06,#b4,#40,#02,#d6
	db #61,#07,#0a,#7f,#02,#67,#02,#b6
	db #69,#06,#06,#aa,#40,#02,#d6,#61
	db #07,#0a,#a6,#69,#06,#02,#a6,#61
	db #07,#00,#b4,#e0,#00,#00,#01,#0e
	db #42,#60,#00,#0e,#cc,#61,#01,#06
	db #7f,#06,#cc,#63,#02,#02,#cc,#4f
	db #02,#be,#43,#02,#be,#4f,#02,#c4
	db #61,#01,#06,#75,#06,#c4,#63,#02
	db #02,#c4,#4f,#02,#b4,#43,#02,#b4
	db #4f,#02,#b6,#61,#01,#06,#6b,#06
	db #42,#60,#00,#06,#a6,#60,#01,#00
	db #64,#e0,#00,#00,#03,#0e,#62,#60
	db #04,#42,#00,#0c,#46,#60,#05,#02
	db #07,#42,#00,#42,#00,#06,#5e,#60
	db #04,#42,#00,#08,#46,#60,#05,#02
	db #17,#42,#00,#42,#00,#02,#42,#00
	db #06,#6e,#60,#04,#42,#00,#0c,#50
	db #60,#05,#42,#00,#11,#42,#00,#42
	db #00,#06,#68,#60,#04,#42,#00,#08
	db #50,#60,#05,#42,#00,#b4,#e9,#00
	db #00,#06,#02,#a6,#60,#07,#02,#7f
	db #02,#97,#02,#4f,#02,#67,#02,#7f
	db #02,#97,#02,#cc,#60,#06,#06,#7f
	db #02,#d6,#60,#07,#0a,#7f,#02,#67
	db #02,#c4,#60,#06,#06,#b4,#40,#02
	db #d6,#60,#07,#0a,#7f,#02,#67,#02
	db #b6,#60,#06,#06,#aa,#40,#bc,#60
	db #07,#83,#89,#8f,#95,#9b,#a1,#b3
	db #ad,#a7,#a1,#a4,#e1,#00,#00,#01
	db #06,#42,#60,#00,#06,#42,#60,#00
	db #06,#42,#60,#00,#06,#76,#60,#01
	db #02,#42,#00,#0a,#42,#00,#0e,#42
	db #60,#00,#1e,#76,#60,#01,#00,#6c
	db #e0,#00,#00,#03,#0e,#6c,#60,#04
	db #42,#00,#0c,#46,#60,#05,#02,#07
	db #02,#d6,#61,#08,#12,#46,#60,#05
	db #02,#46,#60,#0a,#02,#42,#60,#00
	db #02,#42,#00,#06,#42,#00,#0e,#46
	db #60,#05,#02,#07,#02,#42,#60,#00
	db #12,#46,#60,#05,#00,#8c,#e9,#00
	db #00,#07,#02,#65,#02,#7d,#02,#95
	db #02,#4d,#02,#65,#02,#7d,#02,#65
	db #02,#4f,#0e,#d6,#61,#08,#2e,#8e
	db #60,#07,#00,#42,#60,#00,#42,#80
	db #00,#00,#00,#46,#e0,#00,#00,#0a
	db #02,#42,#60,#00,#00,#42,#60,#00
	db #42,#80,#00,#00,#00,#00,#00,#00
;
; #10b7 - player reallocated by Megachur
;
	jp l172b
	jp l10c1
	jp l1780
.l10c0
	db #00
;
.play_music
.l10c1
;
	xor a
	ld (l10c0),a
.l10c6 equ $ + 1
	ld a,#01
	dec a
	jp nz,l1292
.l10cc equ $ + 1
	ld a,#01
	dec a
	jr nz,l1138
.l10d1 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l10df
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l10df
	rra
	jr nc,l10e7
	ld de,l1188
	ldi
.l10e7
	rra
	jr nc,l10ef
	ld de,l11ed
	ldi
.l10ef
	rra
	jr nc,l10f7
	ld de,l1252
	ldi
.l10f7
	ld de,l1167
	ldi
	ldi
	ld de,l11cc
	ldi
	ldi
	ld de,l1231
	ldi
	ldi
	rra
	jr nc,l1114
	ld de,l1137
	ldi
.l1114
	rra
	jr nc,l111f
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1123),de
.l111f
	ld (l10d1),hl
.l1123 equ $ + 1
	ld hl,#0000
	ld (l1141),hl
	ld a,#01
	ld (l113c),a
	ld (l1162),a
	ld (l11c7),a
	ld (l122c),a
.l1137 equ $ + 1
	ld a,#01
.l1138
	ld (l10cc),a
.l113c equ $ + 1
	ld a,#01
	dec a
	jr nz,l115e
.l1141 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l115b
	srl a
	jr nz,l114f
	ld a,(hl)
	inc hl
.l114f
	jr nc,l1156
	ld (l10c0),a
	jr l1159
.l1156
	ld (l1291),a
.l1159
	ld a,#01
.l115b
	ld (l1141),hl
.l115e
	ld (l113c),a
.l1162 equ $ + 1
	ld a,#01
	dec a
	jr nz,l11c3
.l1167 equ $ + 1
	ld hl,#0000
	call l15d7
	ld (l1167),hl
	jr c,l11c3
	ld a,d
	rra
	jr nc,l117a
	and #0f
	ld (l1314),a
.l117a
	rl d
	jr nc,l1182
	ld (l1302),ix
.l1182
	rl d
	jr nc,l11c1
	ld a,e
.l1188 equ $ + 1
	add #00
	ld (l1313),a
	ld hl,#0000
	ld (l12ff),hl
	rl d
	jr c,l11a1
.l1197 equ $ + 1
	ld hl,#0000
	ld a,(l1324)
	ld (l131c),a
	jr l11be
.l11a1
	ld l,b
	add hl,hl
.l11a4 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l1324),a
	ld (l131c),a
	ld a,(hl)
	or a
	jr z,l11ba
	ld (l1402),a
.l11ba
	inc hl
	ld (l1197),hl
.l11be
	ld (l1316),hl
.l11c1
	ld a,#01
.l11c3
	ld (l1162),a
.l11c7 equ $ + 1
	ld a,#01
	dec a
	jr nz,l1228
.l11cc equ $ + 1
	ld hl,#0000
	call l15d7
	ld (l11cc),hl
	jr c,l1228
	ld a,d
	rra
	jr nc,l11df
	and #0f
	ld (l12e0),a
.l11df
	rl d
	jr nc,l11e7
	ld (l12ce),ix
.l11e7
	rl d
	jr nc,l1226
	ld a,e
.l11ed equ $ + 1
	add #00
	ld (l12df),a
	ld hl,#0000
	ld (l12cb),hl
	rl d
	jr c,l1206
.l11fc equ $ + 1
	ld hl,#0000
	ld a,(l12f0)
	ld (l12e8),a
	jr l1223
.l1206
	ld l,b
	add hl,hl
.l1209 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l12f0),a
	ld (l12e8),a
	ld a,(hl)
	or a
	jr z,l121f
	ld (l1402),a
.l121f
	inc hl
	ld (l11fc),hl
.l1223
	ld (l12e2),hl
.l1226
	ld a,#01
.l1228
	ld (l11c7),a
.l122c equ $ + 1
	ld a,#01
	dec a
	jr nz,l128d
.l1231 equ $ + 1
	ld hl,#0000
	call l15d7
	ld (l1231),hl
	jr c,l128d
	ld a,d
	rra
	jr nc,l1244
	and #0f
	ld (l12af),a
.l1244
	rl d
	jr nc,l124c
	ld (l129d),ix
.l124c
	rl d
	jr nc,l128b
	ld a,e
.l1252 equ $ + 1
	add #00
	ld (l12ae),a
	ld hl,#0000
	ld (l129a),hl
	rl d
	jr c,l126b
.l1261 equ $ + 1
	ld hl,#0000
	ld a,(l12bf)
	ld (l12b7),a
	jr l1288
.l126b
	ld l,b
	add hl,hl
.l126e equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l12bf),a
	ld (l12b7),a
	ld a,(hl)
	or a
	jr z,l1284
	ld (l1402),a
.l1284
	inc hl
	ld (l1261),hl
.l1288
	ld (l12b1),hl
.l128b
	ld a,#01
.l128d
	ld (l122c),a
.l1291 equ $ + 1
	ld a,#01
.l1292
	ld (l10c6),a
	ld iy,l1419
.l129a equ $ + 1
	ld hl,#0000
.l129d equ $ + 1
	ld de,#0000
	add hl,de
	ld (l129a),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l12af equ $ + 2
.l12ae equ $ + 1
	ld de,#0000
.l12b1 equ $ + 1
	ld hl,#0000
	call l1424
.l12b7 equ $ + 1
	ld a,#01
	dec a
	jr nz,l12c0
	ld (l12b1),hl
.l12bf equ $ + 1
	ld a,#06
.l12c0
	ld (l12b7),a
	ld a,lx
	ex af,af'
	ld iy,l1417
.l12cb equ $ + 1
	ld hl,#0000
.l12ce equ $ + 1
	ld de,#0000
	add hl,de
	ld (l12cb),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l12e0 equ $ + 2
.l12df equ $ + 1
	ld de,#0000
.l12e2 equ $ + 1
	ld hl,#0000
	call l1424
.l12e8 equ $ + 1
	ld a,#01
	dec a
	jr nz,l12f1
	ld (l12e2),hl
.l12f0 equ $ + 1
	ld a,#06
.l12f1
	ld (l12e8),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l1415
.l12ff equ $ + 1
	ld hl,#0000
.l1302 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l12ff),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l1314 equ $ + 2
.l1313 equ $ + 1
	ld de,#0000
.l1316 equ $ + 1
	ld hl,#0000
	call l1424
.l131c equ $ + 1
	ld a,#01
	dec a
	jr nz,l1325
	ld (l1316),hl
.l1324 equ $ + 1
	ld a,#06
.l1325
	ld (l131c),a
	ex af,af'
	or lx
.l132b
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l1415
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
.l1402 equ $ + 1
	cp #ff
	ret z
	ld (l1402),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l1415
	nop
	nop
.l1417
	nop
	nop
.l1419
	nop
	nop
.l141b
	nop
.l141c
	nop
	nop
	nop
	nop
	nop
.l1421
	nop
	nop
.l1423
	nop
.l1424
	ld b,(hl)
	inc hl
	rr b
	jp c,l1482
	rr b
	jr c,l1452
	ld a,b
	and #0f
	jr nz,l143b
	ld (iy+#07),a
	ld lx,#09
	ret
.l143b
	ld lx,#08
	sub d
	jr nc,l1442
	xor a
.l1442
	ld (iy+#07),a
	rr b
	call l15ab
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l1452
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l1462
	ld (l141b),a
	ld lx,#00
.l1462
	ld a,b
	and #0f
	sub d
	jr nc,l1469
	xor a
.l1469
	ld (iy+#07),a
	bit 5,c
	jr nz,l1473
	inc lx
	ret
.l1473
	rr b
	bit 6,c
	call l159d
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l1482
	rr b
	jr nc,l1495
	ld a,(l131c)
	ld c,a
	ld a,(l1324)
	cp c
	jr nz,l1495
	ld a,#fe
	ld (l1402),a
.l1495
	bit 1,b
	jp nz,l154e
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l1423),a
	bit 0,b
	jr z,l1504
	bit 2,b
	call l159d
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l14c4),a
	ld a,b
	exx
.l14c4 equ $ + 1
	jr l14c5
.l14c5
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
	jr nc,l14e4
	inc hl
.l14e4
	bit 5,a
	jr z,l14f4
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
.l14f4
	ld (l1421),hl
	exx
.l14f8
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l141b),a
	ld lx,#00
	ret
.l1504
	bit 2,b
	call l159d
	ld (l1421),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l1518),a
	ld a,b
	exx
.l1518 equ $ + 1
	jr l1519
.l1519
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
	jr z,l1545
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
.l1545
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l14f8
.l154e
	bit 0,b
	jr z,l1559
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l1424
.l1559
	ld (iy+#07),#10
	bit 5,b
	jr nz,l1566
	ld lx,#09
	jr l1579
.l1566
	ld lx,#08
	ld hx,e
	bit 2,b
	call l159d
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l1579
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l1423),a
	rr b
	rr b
	bit 2,b
	call l159d
	ld (l1421),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l141b),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l159d
	jr z,l15ab
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
.l15ab
	bit 4,b
	jr z,l15bb
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
.l15bb
	ld a,e
	bit 3,b
	jr z,l15c8
	add (hl)
	inc hl
	cp #90
	jr c,l15c8
	ld a,#8f
.l15c8
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l160b
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l15d7
	ld a,(hl)
	inc hl
	srl a
	jr c,l15fe
	sub #20
	jr c,l1608
	jr z,l15fa
	dec a
	ld e,a
.l15e5
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l15f3
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l15f3
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l15fa
	ld e,(hl)
	inc hl
	jr l15e5
.l15fe
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l1608
	add #20
	ret
.l160b
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
.l172b
;
	ld hl,#0009
	add hl,de
	ld de,l1291
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l11a4),hl
	ld (l1209),hl
	ld (l126e),hl
	add hl,bc
	ld de,l1137
	ldi
	ld de,l1188
	ldi
	ld de,l11ed
	ldi
	ld de,l1252
	ldi
	ld de,l1123
	ldi
	ldi
	ld (l10d1),hl
	ld a,#01
	ld (l10c6),a
	ld (l10cc),a
	ld a,#ff
	ld (l1423),a
	ld hl,(l11a4)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l1316),hl
	ld (l12e2),hl
	ld (l12b1),hl
	ret
;
.stop_music
.l1780
;
	ld hl,l141c
	ld bc,#0300
.l1786
	ld (hl),c
	inc hl
	djnz l1786
	ld a,#3f
	jp l132b
;
.init_music		; added by Megachur
;
	ld de,l6000
	jp real_init_music
;
.music_info
	db "CPC vs Virgill - 4 - Xaver (2016)(Public Domain)(Virgill & RaFT)",0
	db "StArkos",0

	read "music_end.asm"
