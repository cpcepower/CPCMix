; Music of The Long Dark Knight Of The Soul - Melon-Glo-Mania (2019)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 06/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TLDKSMGM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #c17a

	read "music_header.asm"

	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#d5,#01,#b2,#c1,#bb,#c1
	db #c6,#c1,#d1,#c1,#ee,#c1,#f4,#c1
	db #0b,#c2,#1c,#c2,#39,#c2,#43,#c2
	db #5a,#c2,#6e,#c2,#82,#c2,#9f,#c2
	db #a8,#c2,#c8,#c2,#d3,#c2,#de,#c2
	db #fb,#c2,#18,#c3,#35,#c3,#4a,#c3
	db #00,#00,#00,#00,#00,#00,#0d,#b4
	db #c1,#01,#00,#28,#7c,#03,#7c,#07
	db #3c,#0d,#be,#c1,#01,#00,#28,#7c
	db #04,#7c,#07,#3c,#0d,#c9,#c1,#01
	db #00,#a8,#fe,#ff,#b4,#fe,#ff,#bc
	db #fe,#ff,#bc,#02,#00,#bc,#02,#00
	db #bc,#02,#00,#bc,#fe,#ff,#bc,#fe
	db #ff,#0d,#d9,#c1,#01,#00,#3c,#0d
	db #f0,#c1,#01,#00,#bc,#fe,#ff,#bc
	db #fe,#ff,#bc,#fe,#ff,#bc,#02,#00
	db #bc,#02,#00,#bc,#02,#00,#0d,#f6
	db #c1,#01,#00,#3a,#65,#d5,#00,#36
	db #67,#52,#01,#32,#69,#aa,#01,#0d
	db #b4,#c1,#01,#00,#3a,#65,#c3,#01
	db #36,#60,#fa,#01,#32,#60,#a4,#02
	db #09,#2c,#18,#09,#2c,#18,#09,#2c
	db #18,#09,#2e,#24,#0d,#33,#c2,#01
	db #00,#2a,#05,#09,#2e,#24,#0d,#3d
	db #c2,#01,#00,#2a,#05,#05,#5c,#05
	db #5c,#09,#2c,#18,#09,#2c,#18,#09
	db #2c,#18,#09,#2e,#24,#0d,#54,#c2
	db #01,#00,#3a,#65,#d5,#00,#36,#67
	db #52,#01,#32,#69,#aa,#01,#09,#2e
	db #24,#0d,#68,#c2,#01,#00,#3a,#65
	db #c3,#01,#36,#60,#fa,#01,#32,#60
	db #a4,#02,#09,#2e,#24,#0d,#7c,#c2
	db #01,#00,#3a,#65,#d5,#00,#36,#67
	db #52,#01,#32,#69,#aa,#01,#09,#2c
	db #18,#09,#2c,#18,#09,#2c,#18,#09
	db #2e,#24,#0d,#99,#c2,#01,#00,#28
	db #34,#3c,#38,#0d,#a4,#c2,#01,#00
	db #a8,#ff,#ff,#b4,#fe,#ff,#bc,#ff
	db #ff,#b8,#01,#00,#b8,#02,#00,#b8
	db #01,#00,#b8,#ff,#ff,#b8,#fe,#ff
	db #b8,#ff,#ff,#0d,#b3,#c2,#01,#00
	db #28,#34,#3c,#34,#2c,#24,#0d,#b4
	db #c1,#01,#00,#28,#34,#3c,#38,#30
	db #2c,#0d,#b4,#c1,#01,#00,#3a,#25
	db #76,#27,#04,#72,#29,#07,#34,#74
	db #04,#74,#07,#2a,#05,#74,#04,#74
	db #07,#34,#74,#04,#74,#07,#0d,#b4
	db #c1,#01,#00,#3a,#25,#76,#27,#03
	db #72,#29,#08,#34,#74,#03,#74,#08
	db #2a,#05,#74,#03,#74,#08,#34,#74
	db #03,#74,#08,#0d,#b4,#c1,#01,#00
	db #3a,#25,#76,#27,#03,#72,#29,#07
	db #34,#74,#03,#74,#07,#2a,#05,#74
	db #03,#74,#07,#34,#74,#03,#74,#07
	db #0d,#b4,#c1,#01,#00,#68,#e8,#74
	db #f4,#3c,#bc,#ff,#ff,#bc,#ff,#ff
	db #bc,#ff,#ff,#3c,#3c,#0d,#3b,#c3
	db #01,#00,#3c,#3c,#3c,#bc,#ff,#ff
	db #bc,#ff,#ff,#bc,#ff,#ff,#0d,#4c
	db #c3,#40,#00,#00,#00,#e2,#c3,#00
	db #eb,#c3,#e3,#c3,#17,#c4,#00,#eb
	db #c3,#53,#c4,#17,#c4,#00,#bb,#c4
	db #f1,#c4,#17,#c4,#00,#5c,#c5,#d8
	db #c5,#53,#c4,#00,#5c,#c5,#98,#c6
	db #f1,#c4,#00,#5c,#c5,#d8,#c5,#54
	db #c7,#00,#5c,#c5,#d8,#c5,#f1,#c7
	db #00,#5c,#c5,#8d,#c8,#59,#c9,#00
	db #5c,#c5,#8d,#c8,#59,#c9,#00,#9f
	db #c9,#e3,#c9,#98,#ca,#00,#1b,#cb
	db #5f,#cb,#14,#cc,#00,#9f,#c9,#e3
	db #c9,#98,#ca,#00,#87,#cc,#cb,#cc
	db #7c,#cd,#00,#f1,#cd,#35,#ce,#d8
	db #ce,#00,#5c,#c5,#8d,#c8,#59,#c9
	db #00,#5c,#c5,#8d,#c8,#59,#c9,#00
	db #5c,#c5,#d8,#c5,#54,#c7,#00,#5c
	db #c5,#d8,#c5,#25,#cf,#01,#76,#c3
	db #00,#42,#60,#00,#42,#80,#00,#00
	db #00,#ba,#e7,#00,#00,#01,#42,#0d
	db #ba,#47,#42,#0d,#ba,#47,#7b,#42
	db #0d,#ba,#47,#42,#0d,#42,#1f,#2c
	db #b2,#67,#02,#42,#0d,#b2,#47,#42
	db #0d,#b2,#47,#73,#42,#0d,#b2,#47
	db #42,#0d,#42,#1f,#00,#42,#60,#00
	db #42,#80,#00,#00,#1c,#b0,#67,#01
	db #42,#0d,#b0,#47,#42,#0d,#b0,#47
	db #71,#42,#0d,#b0,#47,#71,#42,#0d
	db #42,#1f,#2a,#ac,#47,#42,#0d,#ac
	db #47,#6d,#42,#0d,#ac,#47,#6d,#42
	db #0d,#b0,#67,#02,#42,#0d,#b0,#47
	db #42,#0d,#b0,#47,#42,#0d,#b0,#47
	db #71,#8a,#e5,#00,#00,#03,#02,#42
	db #07,#02,#42,#09,#02,#8e,#45,#02
	db #42,#07,#02,#42,#09,#02,#90,#45
	db #42,#07,#90,#e5,#06,#00,#04,#42
	db #80,#05,#00,#42,#00,#8e,#e0,#00
	db #00,#05,#0c,#42,#07,#02,#42,#09
	db #02,#8e,#65,#03,#02,#42,#07,#02
	db #90,#45,#02,#42,#07,#02,#42,#09
	db #02,#94,#45,#02,#42,#07,#02,#42
	db #09,#02,#98,#45,#02,#42,#07,#02
	db #9e,#45,#02,#42,#07,#02,#98,#45
	db #02,#42,#07,#02,#94,#45,#42,#07
	db #98,#45,#02,#42,#07,#02,#42,#09
	db #00,#ba,#e7,#00,#00,#01,#42,#0d
	db #ba,#47,#42,#0d,#ba,#47,#7b,#42
	db #0d,#ba,#47,#42,#0d,#42,#1f,#2c
	db #b2,#67,#02,#42,#0d,#b2,#47,#42
	db #0d,#b2,#47,#73,#42,#0d,#b2,#47
	db #42,#0d,#42,#1f,#1c,#8a,#61,#06
	db #4b,#4b,#4b,#4b,#4b,#4b,#4b,#a2
	db #e5,#00,#00,#03,#02,#42,#07,#02
	db #42,#09,#02,#a8,#45,#02,#42,#07
	db #02,#42,#09,#02,#a2,#45,#42,#07
	db #a2,#e5,#07,#00,#04,#42,#80,#06
	db #00,#42,#00,#9e,#e0,#00,#00,#05
	db #0c,#42,#07,#02,#98,#65,#03,#42
	db #07,#9e,#45,#42,#07,#98,#45,#42
	db #07,#94,#45,#02,#42,#07,#02,#42
	db #09,#02,#98,#45,#02,#42,#07,#02
	db #42,#09,#02,#9e,#45,#02,#42,#07
	db #02,#a8,#45,#02,#42,#07,#02,#a6
	db #45,#02,#42,#07,#02,#a2,#45,#42
	db #07,#a0,#45,#02,#42,#07,#02,#42
	db #09,#00,#ba,#e7,#00,#00,#01,#42
	db #0d,#ba,#47,#42,#0d,#ba,#47,#7b
	db #42,#0d,#ba,#47,#42,#0d,#ba,#47
	db #42,#0d,#ba,#47,#7b,#42,#0d,#ba
	db #47,#42,#0d,#b0,#47,#42,#0d,#b0
	db #47,#42,#0d,#b0,#47,#71,#42,#0d
	db #b0,#47,#71,#42,#0d,#b0,#47,#42
	db #0d,#b0,#47,#71,#42,#0d,#b0,#47
	db #b2,#60,#02,#42,#0d,#b2,#47,#42
	db #0d,#b2,#47,#73,#42,#0d,#b2,#47
	db #42,#0d,#b2,#47,#42,#0d,#b2,#47
	db #73,#42,#0d,#b2,#47,#42,#0d,#ac
	db #67,#01,#42,#0d,#ac,#47,#6d,#42
	db #0d,#ac,#47,#6d,#42,#0d,#b0,#67
	db #02,#42,#0d,#b0,#47,#42,#0d,#b0
	db #47,#42,#0d,#b0,#47,#71,#a2,#e1
	db #00,#00,#07,#a2,#60,#08,#a2,#60
	db #09,#a2,#60,#08,#a2,#60,#0a,#a2
	db #60,#08,#98,#60,#07,#63,#a2,#60
	db #08,#a2,#60,#07,#63,#a2,#60,#08
	db #a2,#60,#0a,#a2,#60,#08,#a2,#e0
	db #18,#00,#07,#98,#e0,#00,#00,#09
	db #98,#60,#07,#98,#60,#08,#98,#60
	db #09,#98,#60,#08,#98,#60,#0a,#98
	db #60,#08,#8e,#60,#09,#94,#60,#07
	db #98,#60,#09,#98,#60,#0b,#98,#60
	db #07,#98,#60,#09,#98,#60,#0a,#98
	db #60,#09,#9c,#60,#07,#9e,#60,#09
	db #9a,#60,#07,#9a,#60,#08,#9a,#60
	db #09,#9a,#60,#08,#9a,#60,#0a,#9a
	db #60,#08,#90,#60,#07,#9a,#60,#09
	db #9a,#60,#0b,#b2,#60,#07,#5b,#9a
	db #60,#08,#9a,#60,#0c,#b2,#60,#09
	db #98,#60,#07,#b0,#60,#09,#94,#60
	db #07,#94,#60,#08,#ac,#60,#07,#ac
	db #60,#08,#94,#60,#0c,#ac,#60,#09
	db #ac,#60,#0b,#94,#60,#07,#b0,#60
	db #09,#b0,#60,#0b,#98,#60,#07,#b0
	db #60,#09,#b0,#60,#0a,#b0,#60,#09
	db #98,#60,#07,#98,#60,#08,#a2,#e1
	db #00,#00,#07,#a2,#60,#08,#a2,#60
	db #09,#a2,#60,#08,#a2,#60,#0a,#a2
	db #60,#08,#98,#60,#07,#63,#a2,#60
	db #08,#a2,#60,#07,#63,#a2,#60,#08
	db #a2,#60,#0a,#a2,#60,#08,#a2,#e0
	db #18,#00,#07,#98,#e0,#00,#00,#09
	db #98,#60,#07,#98,#60,#08,#98,#60
	db #09,#98,#60,#08,#98,#60,#0a,#98
	db #60,#08,#8e,#60,#09,#94,#60,#07
	db #98,#60,#09,#98,#60,#0b,#98,#60
	db #07,#98,#60,#09,#98,#60,#0a,#98
	db #60,#09,#9c,#60,#07,#9e,#60,#09
	db #9a,#60,#07,#9a,#60,#08,#9a,#60
	db #09,#9a,#60,#08,#9a,#60,#0a,#9a
	db #60,#08,#90,#60,#07,#9a,#60,#09
	db #9a,#60,#0b,#b2,#60,#07,#5b,#9a
	db #60,#08,#9a,#60,#0c,#b2,#60,#09
	db #98,#60,#07,#b0,#60,#09,#94,#60
	db #07,#94,#60,#08,#ac,#60,#07,#ac
	db #60,#08,#94,#60,#0c,#ac,#60,#09
	db #ac,#60,#0b,#94,#60,#07,#b0,#60
	db #0c,#b0,#60,#0a,#98,#60,#0c,#71
	db #b0,#60,#0a,#b0,#60,#0c,#59,#98
	db #60,#0a,#42,#60,#00,#42,#80,#00
	db #00,#a6,#e3,#f8,#ff,#0d,#a8,#e5
	db #00,#00,#04,#a2,#63,#0d,#9e,#60
	db #0e,#42,#07,#a2,#43,#42,#05,#a8
	db #43,#42,#05,#a8,#63,#0d,#63,#9e
	db #65,#04,#98,#63,#0d,#94,#65,#04
	db #98,#63,#0e,#42,#05,#02,#42,#07
	db #a6,#43,#42,#05,#02,#b0,#43,#42
	db #05,#b0,#63,#0d,#a6,#60,#0e,#42
	db #05,#ac,#63,#0d,#b0,#60,#0e,#42
	db #05,#b0,#63,#0d,#71,#b2,#65,#04
	db #b0,#63,#0f,#ac,#60,#0e,#42,#05
	db #a8,#43,#42,#05,#02,#b0,#63,#0d
	db #b2,#65,#04,#b0,#63,#0f,#ac,#60
	db #0e,#42,#05,#a8,#43,#42,#05,#02
	db #aa,#e3,#f9,#ff,#0d,#ac,#e5,#00
	db #00,#04,#b0,#63,#0e,#42,#05,#b6
	db #43,#42,#05,#b0,#63,#10,#ac,#60
	db #0e,#42,#05,#b0,#43,#42,#05,#02
	db #42,#07,#b0,#63,#10,#77,#71,#ba
	db #e3,#00,#00,#0e,#42,#05,#b0,#43
	db #42,#05,#b6,#43,#42,#05,#ba,#63
	db #0d,#b0,#60,#0e,#42,#05,#b6,#43
	db #42,#05,#ba,#63,#0d,#b6,#60,#0e
	db #42,#05,#ac,#43,#42,#05,#ae,#e3
	db #f9,#ff,#0d,#b0,#e5,#00,#00,#04
	db #b0,#63,#0e,#42,#05,#b6,#63,#0d
	db #b0,#65,#04,#b6,#63,#0f,#ba,#60
	db #0e,#42,#05,#be,#43,#42,#05,#be
	db #63,#0d,#81,#be,#65,#04,#ba,#63
	db #0d,#be,#65,#04,#c0,#63,#0e,#42
	db #05,#b2,#43,#42,#05,#ba,#43,#42
	db #05,#c0,#63,#0d,#ca,#60,#0e,#42
	db #05,#ca,#63,#0f,#c0,#60,#0e,#42
	db #05,#ba,#43,#42,#05,#b2,#43,#42
	db #05,#ba,#43,#42,#05,#b2,#43,#42
	db #05,#ac,#43,#42,#05,#ba,#63,#10
	db #be,#60,#0e,#42,#05,#be,#63,#10
	db #b8,#60,#0e,#42,#05,#b0,#63,#10
	db #71,#79,#71,#a2,#e1,#00,#00,#07
	db #a2,#60,#08,#ba,#60,#09,#ba,#60
	db #08,#a2,#60,#0c,#ba,#60,#09,#ba
	db #60,#0b,#a2,#60,#07,#ba,#60,#09
	db #ba,#60,#0b,#ba,#60,#07,#a2,#60
	db #09,#a2,#60,#0a,#ba,#60,#09,#c0
	db #60,#07,#c0,#e0,#10,#00,#08,#98
	db #e0,#00,#00,#07,#98,#60,#08,#b0
	db #60,#09,#b0,#60,#08,#98,#60,#0c
	db #b0,#60,#09,#b0,#60,#08,#98,#60
	db #07,#b0,#60,#09,#b0,#60,#0b,#b0
	db #60,#07,#98,#60,#09,#98,#60,#0a
	db #b0,#60,#09,#b6,#60,#07,#b6,#e0
	db #10,#00,#08,#9a,#e0,#00,#00,#07
	db #9a,#60,#08,#b2,#60,#09,#b2,#60
	db #08,#9a,#60,#0c,#b2,#60,#09,#b2
	db #60,#0b,#9a,#60,#09,#b2,#60,#07
	db #b2,#60,#0b,#b2,#60,#07,#ba,#60
	db #09,#9a,#60,#0c,#b2,#60,#09,#98
	db #60,#07,#b0,#60,#09,#94,#60,#07
	db #94,#60,#08,#ac,#60,#07,#ac,#60
	db #08,#94,#60,#0c,#ac,#60,#09,#ac
	db #60,#0b,#94,#60,#07,#b0,#60,#09
	db #b0,#60,#0b,#98,#60,#07,#b0,#60
	db #09,#b0,#60,#0a,#b0,#60,#0c,#b8
	db #60,#07,#a0,#e0,#10,#00,#0a,#ba
	db #e5,#00,#00,#0d,#b6,#67,#04,#7b
	db #71,#7b,#77,#7b,#71,#7b,#77,#7b
	db #71,#7b,#77,#7b,#7f,#81,#7f,#7b
	db #77,#7b,#77,#71,#6d,#71,#6d,#69
	db #67,#63,#5f,#59,#55,#5b,#51,#5b
	db #63,#69,#63,#69,#73,#7b,#73,#7b
	db #81,#8b,#81,#7b,#73,#6d,#73,#7b
	db #85,#8b,#85,#7b,#73,#71,#79,#7f
	db #89,#91,#89,#7f,#79,#c0,#e7,#00
	db #00,#0f,#89,#8f,#89,#81,#89,#8f
	db #89,#81,#89,#8f,#89,#81,#89,#8f
	db #89,#77,#7f,#85,#7f,#77,#7f,#85
	db #7f,#77,#7f,#85,#7f,#77,#7f,#85
	db #77,#7b,#81,#89,#81,#7b,#81,#89
	db #81,#7b,#81,#89,#81,#7b,#89,#85
	db #81,#73,#7b,#81,#7b,#73,#7b,#81
	db #7b,#73,#7b,#81,#7b,#73,#81,#85
	db #8b,#a8,#e1,#00,#00,#07,#a8,#60
	db #08,#a8,#60,#09,#a8,#60,#08,#c0
	db #60,#11,#02,#9e,#60,#09,#a8,#60
	db #07,#a8,#60,#0b,#a8,#60,#0c,#a8
	db #60,#07,#a8,#60,#08,#c0,#60,#11
	db #02,#b0,#e0,#10,#00,#09,#a8,#c0
	db #00,#00,#9e,#60,#07,#9e,#60,#08
	db #9e,#60,#09,#9e,#60,#08,#be,#60
	db #12,#02,#9e,#60,#09,#a6,#60,#07
	db #a6,#60,#0b,#a6,#60,#0c,#ac,#60
	db #07,#ac,#60,#0b,#be,#60,#12,#02
	db #9e,#60,#09,#9e,#60,#0a,#a2,#60
	db #07,#a2,#60,#08,#a2,#60,#09,#a2
	db #60,#08,#ba,#60,#13,#02,#98,#60
	db #09,#a2,#60,#07,#a2,#60,#0b,#a2
	db #60,#0c,#a8,#60,#07,#a8,#60,#08
	db #ba,#60,#13,#02,#a8,#60,#09,#a8
	db #60,#08,#9a,#60,#07,#9a,#60,#08
	db #9a,#60,#09,#9a,#60,#08,#ba,#60
	db #12,#02,#90,#60,#09,#9a,#60,#07
	db #9a,#60,#0b,#9a,#60,#0c,#a2,#60
	db #07,#a2,#60,#08,#ba,#60,#12,#02
	db #a2,#60,#0c,#a2,#60,#0a,#de,#e5
	db #00,#00,#14,#de,#e0,#ff,#ff,#04
	db #e0,#c0,#00,#00,#e0,#60,#15,#42
	db #07,#42,#09,#d8,#65,#14,#04,#42
	db #07,#42,#09,#42,#0b,#ce,#45,#02
	db #ce,#e0,#fc,#ff,#04,#42,#00,#42
	db #00,#42,#80,#fd,#ff,#dc,#e0,#00
	db #00,#15,#06,#42,#07,#42,#09,#42
	db #0b,#42,#0d,#ce,#65,#14,#02,#93
	db #02,#97,#02,#99,#04,#42,#07,#42
	db #09,#42,#0b,#d2,#45,#04,#42,#07
	db #42,#09,#42,#0b,#c8,#45,#42,#07
	db #42,#09,#42,#0b,#ca,#45,#42,#07
	db #42,#09,#42,#0b,#ce,#45,#02,#91
	db #d0,#e0,#fe,#ff,#04,#d2,#e7,#00
	db #00,#15,#ce,#65,#14,#42,#07,#42
	db #09,#ca,#45,#42,#07,#42,#09,#42
	db #0b,#c0,#e7,#00,#00,#0f,#89,#8f
	db #89,#81,#89,#8f,#89,#81,#89,#8f
	db #89,#81,#89,#8f,#89,#77,#7f,#85
	db #7f,#77,#7f,#85,#7f,#77,#7f,#85
	db #7f,#77,#7f,#85,#77,#7b,#81,#89
	db #81,#7b,#81,#89,#81,#7b,#81,#89
	db #81,#7b,#89,#85,#81,#73,#7b,#81
	db #7b,#73,#7b,#81,#7b,#77,#7f,#85
	db #7f,#77,#85,#81,#7f,#a8,#e1,#00
	db #00,#07,#a8,#60,#08,#a8,#60,#09
	db #a8,#60,#08,#c0,#60,#11,#02,#9e
	db #60,#09,#a8,#60,#07,#a8,#60,#0b
	db #a8,#60,#0c,#a8,#60,#07,#a8,#60
	db #08,#c0,#60,#11,#02,#b0,#e0,#10
	db #00,#09,#a8,#c0,#00,#00,#9e,#60
	db #07,#9e,#60,#08,#9e,#60,#09,#9e
	db #60,#08,#be,#60,#12,#02,#9e,#60
	db #09,#a6,#60,#07,#a6,#60,#0b,#a6
	db #60,#0c,#ac,#60,#07,#ac,#60,#0b
	db #be,#60,#12,#02,#9e,#60,#09,#9e
	db #60,#0a,#a2,#60,#07,#a2,#60,#08
	db #a2,#60,#09,#a2,#60,#08,#ba,#60
	db #13,#02,#98,#60,#09,#a2,#60,#07
	db #a2,#60,#0b,#a2,#60,#0c,#a8,#60
	db #07,#a8,#60,#08,#ba,#60,#13,#02
	db #a8,#60,#09,#a8,#60,#08,#9a,#60
	db #07,#9a,#60,#08,#9a,#60,#09,#9a
	db #60,#08,#ba,#60,#12,#02,#9a,#60
	db #09,#9e,#60,#07,#9e,#60,#0b,#9e
	db #60,#0c,#9e,#60,#07,#9e,#60,#08
	db #be,#60,#12,#02,#9e,#60,#0c,#9e
	db #60,#0a,#c8,#e5,#00,#00,#14,#42
	db #07,#42,#09,#42,#0b,#ca,#45,#42
	db #07,#ca,#45,#ca,#e0,#fd,#ff,#04
	db #42,#80,#fe,#ff,#ce,#e7,#00,#00
	db #15,#ca,#65,#14,#42,#07,#42,#09
	db #c8,#45,#42,#07,#42,#09,#c4,#45
	db #0a,#42,#07,#42,#09,#42,#0b,#42
	db #0d,#c4,#45,#42,#07,#c0,#45,#42
	db #07,#c4,#45,#42,#07,#c8,#45,#04
	db #42,#07,#42,#09,#42,#0b,#d2,#45
	db #04,#42,#07,#42,#09,#42,#0b,#d6
	db #45,#02,#99,#04,#42,#07,#42,#09
	db #42,#0b,#d6,#45,#02,#93,#04,#42
	db #07,#42,#09,#42,#0b,#d6,#45,#42
	db #07,#42,#09,#42,#0b,#c0,#e7,#00
	db #00,#0f,#89,#8f,#89,#81,#89,#8f
	db #89,#81,#89,#8f,#89,#81,#89,#8f
	db #89,#77,#7f,#85,#7f,#77,#7f,#85
	db #7f,#77,#7f,#85,#7f,#77,#7f,#85
	db #77,#79,#7f,#89,#7f,#79,#7f,#89
	db #7f,#79,#7f,#89,#7f,#79,#89,#85
	db #7f,#7b,#81,#89,#81,#7b,#81,#89
	db #81,#77,#7f,#85,#7f,#77,#85,#81
	db #7f,#a8,#e1,#00,#00,#07,#a8,#60
	db #08,#a8,#60,#09,#a8,#60,#08,#c0
	db #60,#11,#02,#9e,#60,#09,#a8,#60
	db #07,#a8,#60,#0b,#a8,#60,#0c,#a8
	db #60,#07,#a8,#60,#08,#c0,#60,#11
	db #02,#b0,#e0,#10,#00,#09,#a8,#c0
	db #00,#00,#9e,#60,#07,#9e,#60,#08
	db #9e,#60,#09,#9e,#60,#08,#be,#60
	db #12,#02,#9e,#60,#09,#a6,#60,#07
	db #a6,#60,#0b,#a6,#60,#0c,#ac,#60
	db #07,#ac,#60,#0b,#be,#60,#12,#02
	db #9e,#60,#09,#9e,#60,#0a,#a0,#60
	db #07,#a0,#60,#08,#a0,#60,#09,#a0
	db #60,#08,#b8,#60,#12,#02,#96,#60
	db #09,#a0,#60,#07,#a0,#60,#0b,#a0
	db #60,#0c,#a0,#60,#07,#a0,#60,#08
	db #b8,#60,#12,#02,#a0,#60,#09,#79
	db #a2,#60,#07,#a2,#60,#08,#a2,#60
	db #09,#a2,#60,#08,#ba,#60,#13,#02
	db #a2,#60,#09,#9e,#60,#07,#9e,#60
	db #0b,#9e,#60,#0c,#b6,#60,#07,#b6
	db #60,#08,#be,#60,#12,#02,#9e,#60
	db #0c,#77,#c8,#e5,#00,#00,#14,#42
	db #07,#42,#09,#42,#0b,#ca,#45,#42
	db #07,#ca,#45,#ca,#e0,#fd,#ff,#04
	db #42,#80,#fe,#ff,#ce,#e7,#00,#00
	db #15,#ca,#65,#14,#42,#07,#42,#09
	db #c8,#45,#42,#07,#42,#09,#c4,#45
	db #0a,#42,#07,#42,#09,#42,#0b,#42
	db #0d,#c4,#45,#42,#07,#c0,#45,#42
	db #07,#c4,#45,#42,#07,#c8,#45,#04
	db #42,#07,#ca,#45,#42,#07,#c8,#45
	db #04,#42,#07,#c4,#45,#42,#07,#42
	db #09,#42,#0b,#c0,#45,#06,#42,#07
	db #42,#09,#42,#0b,#42,#0d,#be,#45
	db #04,#42,#07,#42,#09,#42,#0b,#c0
	db #45,#42,#07,#42,#09,#42,#0b,#ba
	db #e7,#00,#00,#0f,#81,#8b,#81,#7b
	db #81,#8b,#81,#7b,#81,#8b,#81,#7b
	db #81,#8b,#81,#7f,#85,#8f,#85,#7f
	db #85,#8f,#85,#7f,#85,#8f,#85,#7f
	db #85,#8f,#85,#81,#89,#8f,#89,#81
	db #89,#8f,#89,#81,#89,#8f,#89,#81
	db #89,#8f,#89,#81,#89,#8f,#89,#81
	db #89,#8f,#89,#81,#89,#8f,#89,#81
	db #89,#8f,#89,#9a,#e1,#00,#00,#07
	db #9a,#60,#08,#9a,#60,#09,#73,#ba
	db #60,#12,#02,#9a,#60,#09,#b2,#60
	db #07,#73,#b2,#60,#0a,#b2,#60,#07
	db #9a,#60,#09,#ba,#60,#12,#02,#9a
	db #e0,#10,#00,#09,#b2,#c0,#00,#00
	db #9e,#60,#07,#9e,#60,#08,#9e,#60
	db #09,#77,#be,#60,#12,#02,#9e,#60
	db #09,#b6,#60,#07,#77,#b6,#60,#0a
	db #b6,#60,#07,#5f,#be,#60,#12,#02
	db #9e,#60,#09,#77,#a8,#60,#07,#a8
	db #60,#08,#a8,#60,#09,#a8,#60,#08
	db #c0,#60,#11,#02,#9e,#60,#09,#a8
	db #60,#07,#a8,#60,#0b,#a8,#60,#0c
	db #a8,#60,#07,#a8,#60,#08,#c0,#60
	db #11,#02,#9e,#60,#09,#67,#a8,#60
	db #07,#a8,#60,#08,#a8,#60,#09,#a8
	db #60,#08,#c0,#60,#11,#02,#9e,#60
	db #09,#a6,#60,#07,#69,#a8,#60,#0a
	db #a8,#60,#07,#a8,#60,#09,#c0,#60
	db #11,#02,#9e,#60,#0c,#67,#ba,#e5
	db #00,#00,#14,#04,#42,#07,#42,#09
	db #42,#0b,#ba,#45,#42,#07,#42,#09
	db #42,#0b,#be,#45,#42,#07,#42,#09
	db #c0,#45,#42,#07,#42,#09,#c8,#45
	db #04,#42,#07,#42,#09,#42,#0b,#c4
	db #45,#04,#42,#07,#42,#09,#42,#0b
	db #c0,#45,#42,#07,#c4,#45,#42,#07
	db #c0,#45,#2e,#42,#07,#42,#09,#42
	db #0b,#42,#0d,#42,#0f,#42,#11,#42
	db #13,#42,#15,#ba,#e3,#00,#00,#0e
	db #42,#05,#b0,#43,#42,#05,#b6,#43
	db #42,#05,#ba,#63,#0d,#b0,#60,#0e
	db #42,#05,#b6,#43,#42,#05,#ba,#63
	db #0d,#b6,#60,#0e,#42,#05,#ac,#43
	db #42,#05,#ae,#e3,#f8,#ff,#0d,#b0
	db #e5,#00,#00,#04,#b0,#63,#0e,#42
	db #05,#b6,#63,#0d,#b0,#65,#04,#b6
	db #63,#0f,#ba,#60,#0e,#42,#05,#be
	db #43,#42,#05,#be,#63,#0d,#81,#be
	db #65,#04,#ba,#63,#0d,#be,#65,#04
	db #c0,#63,#0e,#42,#05,#b2,#43,#42
	db #05,#ba,#43,#42,#05,#c0,#63,#0d
	db #ca,#60,#0e,#42,#05,#ca,#63,#0f
	db #c0,#60,#0e,#42,#05,#ba,#43,#42
	db #05,#b2,#43,#42,#05,#ba,#43,#42
	db #05,#b2,#43,#42,#05,#ac,#43,#42
	db #05,#ba,#63,#10,#be,#60,#0e,#42
	db #05,#be,#63,#10,#b8,#60,#0e,#42
	db #05,#98,#63,#0d,#42,#05,#42,#07
	db #42,#09,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00

	read "The Long Dark Knight Of The Soul - stArkos Player (2019)(Epyteor)(SuTeKH)(StArkos).asm"

;
.music_info
	db "The Long Dark Knight Of The Soul - Melon-Glo-Mania (2019)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"