; Music of The Long Dark Knight Of The Soul - Squicky Chippy (2019)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 06/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TLDKSSQC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #c17a

	read "music_header.asm"

	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#89,#01,#ac,#c1,#b5,#c1
	db #c6,#c1,#dd,#c1,#f7,#c1,#0e,#c2
	db #25,#c2,#3b,#c2,#4c,#c2,#5d,#c2
	db #6c,#c2,#7d,#c2,#8e,#c2,#a8,#c2
	db #ae,#c2,#c8,#c2,#d3,#c2,#ed,#c2
	db #fe,#c2,#00,#00,#00,#00,#00,#00
	db #0d,#ae,#c1,#01,#00,#05,#3c,#05
	db #3c,#05,#4c,#05,#4c,#05,#5c,#05
	db #5c,#0d,#ae,#c1,#01,#00,#09,#2c
	db #30,#09,#2c,#30,#09,#2c,#24,#09
	db #2c,#24,#09,#2c,#18,#09,#2c,#18
	db #0d,#ae,#c1,#01,#00,#3e,#65,#d5
	db #00,#3a,#69,#52,#01,#36,#6d,#aa
	db #01,#09,#2c,#24,#09,#2c,#18,#09
	db #2c,#18,#0d,#ae,#c1,#01,#00,#3e
	db #65,#d5,#00,#3a,#69,#52,#01,#36
	db #6d,#aa,#01,#05,#4c,#05,#5c,#05
	db #5c,#0d,#ae,#c1,#01,#00,#3a,#65
	db #c3,#01,#36,#60,#fa,#01,#32,#60
	db #a4,#02,#05,#4c,#05,#5c,#05,#5c
	db #0d,#ae,#c1,#01,#00,#2a,#05,#09
	db #2c,#30,#09,#2c,#24,#09,#2c,#24
	db #09,#2c,#18,#09,#2c,#18,#0d,#ae
	db #c1,#01,#00,#2a,#05,#05,#3c,#05
	db #4c,#05,#4c,#05,#5c,#05,#5c,#0d
	db #ae,#c1,#01,#00,#36,#05,#2e,#03
	db #26,#01,#05,#4c,#05,#5c,#05,#5c
	db #0d,#ae,#c1,#01,#00,#7c,#18,#7c
	db #18,#78,#0c,#78,#0c,#34,#34,#0d
	db #ae,#c1,#01,#00,#7c,#fa,#7c,#fd
	db #7c,#01,#7c,#fa,#7c,#fd,#7c,#01
	db #0d,#ae,#c1,#01,#00,#7c,#fa,#78
	db #fd,#74,#01,#70,#fa,#6c,#fd,#68
	db #01,#0d,#ae,#c1,#01,#00,#a8,#ff
	db #ff,#bc,#fe,#ff,#bc,#ff,#ff,#bc
	db #01,#00,#bc,#02,#00,#bc,#01,#00
	db #bc,#ff,#ff,#0d,#93,#c2,#01,#00
	db #3c,#0d,#aa,#c2,#01,#00,#a8,#ff
	db #ff,#bc,#fe,#ff,#b8,#ff,#ff,#b4
	db #01,#00,#b0,#02,#00,#ac,#01,#00
	db #a8,#ff,#ff,#0d,#ae,#c1,#01,#00
	db #38,#38,#38,#34,#34,#34,#0d,#ca
	db #c2,#01,#00,#a8,#ff,#ff,#bc,#fe
	db #ff,#bc,#ff,#ff,#b8,#01,#00,#b8
	db #02,#00,#b4,#01,#00,#b4,#ff,#ff
	db #0d,#ae,#c1,#01,#00,#7c,#f8,#7c
	db #fc,#7c,#ff,#7c,#f8,#7c,#fc,#7c
	db #ff,#0d,#ae,#c1,#01,#00,#7c,#f8
	db #78,#fc,#74,#ff,#70,#f8,#6c,#fc
	db #68,#ff,#0d,#ae,#c1,#40,#00,#00
	db #00,#73,#c3,#00,#9a,#c4,#7c,#c3
	db #74,#c3,#00,#f0,#c4,#e0,#c3,#74
	db #c3,#00,#de,#c5,#34,#c6,#44,#c5
	db #00,#ee,#c6,#34,#c6,#44,#c5,#00
	db #44,#c7,#34,#c6,#44,#c5,#00,#44
	db #c7,#34,#c6,#44,#c5,#00,#ba,#c7
	db #71,#c8,#2b,#c9,#00,#c5,#c9,#62
	db #ca,#1c,#cb,#00,#44,#c7,#34,#c6
	db #44,#c5,#00,#44,#c7,#34,#c6,#44
	db #c5,#00,#ba,#c7,#71,#c8,#2b,#c9
	db #00,#b6,#cb,#62,#ca,#1c,#cb,#00
	db #51,#cc,#34,#c6,#44,#c5,#01,#2a
	db #c3,#00,#42,#60,#00,#42,#80,#00
	db #00,#00,#8a,#e1,#00,#00,#01,#8a
	db #60,#02,#a2,#60,#01,#4b,#63,#63
	db #4b,#4b,#63,#4b,#59,#63,#8a,#60
	db #02,#a2,#60,#01,#59,#5f,#4b,#8a
	db #60,#02,#a2,#60,#01,#4b,#63,#63
	db #4b,#4b,#63,#4b,#5f,#63,#8a,#60
	db #02,#98,#60,#01,#5f,#63,#4b,#8a
	db #60,#02,#a2,#60,#01,#4b,#63,#63
	db #4b,#4b,#63,#4b,#5f,#63,#8a,#60
	db #02,#98,#60,#01,#5f,#63,#4b,#8a
	db #60,#02,#a2,#60,#01,#4b,#63,#63
	db #4b,#4b,#63,#4b,#5f,#63,#8a,#60
	db #03,#98,#60,#04,#5f,#63,#8a,#e1
	db #00,#00,#05,#8a,#60,#06,#a2,#60
	db #05,#8a,#60,#07,#a2,#60,#04,#a2
	db #60,#05,#4b,#8a,#60,#04,#a2,#60
	db #08,#8a,#60,#04,#98,#60,#05,#a2
	db #60,#07,#8a,#60,#03,#a2,#60,#07
	db #98,#60,#08,#9e,#60,#04,#8a,#60
	db #05,#8a,#60,#06,#a2,#60,#05,#8a
	db #60,#07,#a2,#60,#04,#a2,#60,#05
	db #4b,#8a,#60,#04,#a2,#60,#08,#8a
	db #60,#04,#9e,#60,#05,#a2,#60,#07
	db #8a,#60,#03,#98,#60,#07,#9e,#60
	db #08,#a2,#60,#04,#8a,#60,#05,#8a
	db #60,#06,#a2,#60,#05,#8a,#60,#07
	db #a2,#60,#04,#a2,#60,#05,#4b,#8a
	db #60,#04,#a2,#60,#08,#8a,#60,#04
	db #9e,#60,#05,#a2,#60,#07,#8a,#60
	db #03,#98,#60,#07,#9e,#60,#08,#a2
	db #60,#04,#8a,#60,#05,#8a,#60,#06
	db #a2,#60,#05,#8a,#60,#07,#a2,#60
	db #04,#a2,#60,#05,#4b,#8a,#60,#04
	db #a2,#60,#08,#8a,#60,#04,#9e,#60
	db #05,#a2,#60,#07,#8a,#60,#03,#98
	db #60,#07,#9e,#60,#08,#a2,#60,#04
	db #42,#60,#00,#5a,#e9,#00,#00,#09
	db #5a,#4d,#72,#49,#1b,#33,#33,#1b
	db #1b,#33,#1b,#29,#33,#5a,#4d,#72
	db #49,#29,#2f,#1b,#5a,#4d,#72,#49
	db #1b,#33,#33,#1b,#1b,#33,#1b,#2f
	db #33,#5a,#4d,#68,#49,#2f,#33,#1b
	db #5a,#4d,#72,#49,#1b,#33,#33,#1b
	db #1b,#33,#1b,#2f,#33,#5a,#4d,#68
	db #49,#2f,#33,#1b,#5a,#4d,#72,#49
	db #1b,#33,#33,#1b,#1b,#33,#1b,#2f
	db #33,#5a,#4d,#68,#49,#2f,#72,#e9
	db #00,#00,#09,#1b,#5a,#4d,#72,#49
	db #1b,#33,#33,#1b,#1b,#33,#1b,#29
	db #33,#5a,#4d,#72,#49,#29,#2f,#1b
	db #5a,#4d,#72,#49,#1b,#33,#33,#1b
	db #1b,#33,#1b,#2f,#33,#5a,#4d,#68
	db #49,#2f,#33,#1b,#5a,#4d,#72,#49
	db #1b,#33,#33,#1b,#1b,#33,#1b,#2f
	db #33,#5a,#4d,#68,#49,#2f,#33,#1b
	db #5a,#4d,#72,#49,#1b,#33,#33,#1b
	db #1b,#33,#1b,#2f,#33,#5a,#4d,#68
	db #49,#2f,#c6,#e7,#00,#00,#0a,#c6
	db #60,#0b,#87,#87,#c6,#60,#0a,#c6
	db #60,#0b,#87,#c6,#60,#0a,#c6,#60
	db #0b,#87,#87,#87,#c6,#60,#0a,#c6
	db #60,#0b,#c6,#60,#0a,#c6,#60,#0b
	db #c6,#60,#0a,#c6,#60,#0b,#87,#87
	db #c6,#60,#0a,#c6,#60,#0b,#87,#c6
	db #60,#0a,#c6,#60,#0b,#87,#87,#c6
	db #60,#0a,#87,#c6,#60,#0b,#c6,#60
	db #0a,#c6,#60,#0b,#bc,#60,#0a,#bc
	db #60,#0b,#7d,#7d,#bc,#60,#0a,#bc
	db #60,#0b,#7d,#bc,#60,#0a,#bc,#60
	db #0b,#bc,#60,#0a,#bc,#60,#0b,#bc
	db #60,#0a,#7d,#bc,#60,#0b,#bc,#60
	db #0a,#bc,#60,#0b,#bc,#60,#0a,#bc
	db #60,#0b,#7d,#7d,#bc,#60,#0a,#bc
	db #60,#0b,#7d,#bc,#60,#0a,#bc,#60
	db #0b,#bc,#60,#0a,#bc,#60,#0b,#7d
	db #bc,#60,#0a,#bc,#60,#0b,#bc,#60
	db #0a,#bc,#60,#0b,#72,#e9,#00,#00
	db #08,#5a,#60,#09,#5a,#4d,#72,#49
	db #1b,#33,#33,#1b,#1b,#33,#1b,#29
	db #33,#5a,#4d,#72,#49,#29,#2f,#1b
	db #5a,#4d,#72,#49,#1b,#33,#33,#1b
	db #1b,#33,#1b,#2f,#33,#5a,#4d,#68
	db #49,#2f,#33,#29,#68,#4d,#80,#49
	db #29,#41,#41,#29,#29,#41,#29,#3d
	db #41,#5a,#4d,#76,#49,#3d,#41,#29
	db #5a,#4d,#72,#49,#29,#41,#41,#29
	db #29,#41,#29,#3d,#41,#5a,#4d,#76
	db #49,#3d,#8a,#e1,#00,#00,#05,#8a
	db #60,#06,#a2,#60,#05,#8a,#60,#07
	db #a2,#60,#04,#a2,#60,#05,#4b,#8a
	db #60,#04,#a2,#60,#08,#8a,#60,#04
	db #98,#60,#05,#a2,#60,#07,#8a,#60
	db #03,#a2,#60,#07,#98,#60,#08,#9e
	db #60,#04,#8a,#60,#05,#8a,#60,#06
	db #a2,#60,#05,#8a,#60,#07,#a2,#60
	db #04,#a2,#60,#05,#4b,#8a,#60,#04
	db #a2,#60,#08,#8a,#60,#04,#9e,#60
	db #05,#a2,#60,#07,#8a,#60,#03,#98
	db #60,#07,#9e,#60,#08,#a2,#60,#04
	db #98,#60,#05,#8a,#60,#06,#b0,#60
	db #05,#98,#60,#07,#b0,#60,#04,#b0
	db #60,#05,#59,#98,#60,#04,#b0,#60
	db #08,#98,#60,#04,#ac,#60,#05,#b0
	db #60,#07,#8a,#60,#03,#a6,#60,#07
	db #ac,#60,#08,#b0,#60,#04,#98,#60
	db #05,#8a,#60,#06,#b0,#60,#05,#98
	db #60,#07,#b0,#60,#04,#b0,#60,#05
	db #59,#98,#60,#04,#b0,#60,#08,#98
	db #60,#04,#ac,#60,#05,#b0,#60,#07
	db #8a,#60,#03,#a6,#60,#07,#ac,#60
	db #08,#b0,#60,#04,#80,#e9,#00,#00
	db #08,#5a,#60,#09,#5a,#4d,#72,#49
	db #1b,#33,#33,#1b,#1b,#33,#1b,#29
	db #33,#5a,#4d,#72,#49,#29,#2f,#1b
	db #5a,#4d,#72,#49,#1b,#33,#33,#1b
	db #1b,#33,#1b,#2f,#33,#5a,#4d,#68
	db #49,#2f,#33,#29,#68,#4d,#80,#49
	db #29,#41,#41,#29,#29,#41,#29,#3d
	db #41,#5a,#4d,#76,#49,#3d,#41,#29
	db #5a,#4d,#72,#49,#29,#41,#41,#29
	db #29,#41,#29,#3d,#41,#5a,#4d,#76
	db #49,#3d,#ba,#e3,#00,#00,#0c,#42
	db #1f,#b6,#43,#42,#1f,#ba,#43,#42
	db #1f,#be,#43,#81,#02,#42,#05,#42
	db #07,#c0,#e9,#20,#00,#0d,#42,#0b
	db #b0,#e3,#00,#00,#0e,#77,#71,#ba
	db #60,#0c,#42,#1f,#b6,#43,#42,#1f
	db #ba,#43,#42,#1f,#c0,#43,#89,#02
	db #42,#05,#42,#07,#c8,#e9,#20,#00
	db #0d,#42,#0b,#c8,#e3,#00,#00,#0e
	db #85,#81,#c4,#60,#0c,#42,#1f,#c0
	db #43,#42,#1f,#be,#43,#42,#1f,#ba
	db #43,#77,#08,#b6,#e5,#0c,#00,#0d
	db #42,#07,#42,#09,#42,#0b,#ac,#e3
	db #00,#00,#0c,#71,#42,#1f,#b0,#43
	db #42,#1f,#10,#b0,#63,#0e,#77,#7f
	db #ac,#e3,#00,#00,#0c,#0a,#42,#05
	db #ac,#e0,#40,#00,#0f,#b2,#e3,#00
	db #00,#0c,#02,#42,#05,#b2,#e0,#40
	db #00,#0f,#ba,#e3,#00,#00,#0c,#ba
	db #e0,#40,#00,#0f,#c4,#e0,#00,#00
	db #0c,#06,#42,#05,#c4,#e0,#40,#00
	db #0f,#c0,#e3,#00,#00,#0c,#c0,#e0
	db #40,#00,#0f,#c4,#e0,#00,#00,#0c
	db #02,#42,#05,#c4,#e0,#40,#00,#0f
	db #c0,#e3,#00,#00,#0c,#42,#05,#c0
	db #e0,#40,#00,#0f,#be,#e3,#00,#00
	db #0c,#02,#be,#e0,#60,#00,#0f,#ba
	db #e0,#00,#00,#0c,#ba,#e0,#40,#00
	db #0f,#be,#e0,#00,#00,#0c,#be,#e0
	db #40,#00,#0f,#ba,#e0,#00,#00,#0c
	db #ba,#e0,#40,#00,#0f,#b6,#e0,#00
	db #00,#0c,#06,#71,#04,#6d,#04,#71
	db #02,#42,#05,#b0,#e0,#40,#00,#0f
	db #b0,#e3,#00,#00,#0c,#02,#42,#05
	db #b0,#e0,#40,#00,#0f,#b6,#e3,#00
	db #00,#0c,#02,#42,#05,#b6,#e0,#40
	db #00,#0f,#be,#e3,#00,#00,#0c,#02
	db #42,#05,#be,#e0,#40,#00,#0f,#94
	db #e1,#00,#00,#05,#94,#60,#06,#ac
	db #60,#05,#94,#60,#07,#ac,#60,#04
	db #ac,#60,#05,#55,#94,#60,#04,#ac
	db #60,#08,#94,#60,#04,#a2,#60,#05
	db #ac,#60,#07,#94,#60,#03,#ac,#60
	db #07,#a2,#60,#08,#a8,#60,#04,#94
	db #60,#05,#94,#60,#06,#ac,#60,#05
	db #94,#60,#07,#ac,#60,#04,#ac,#60
	db #05,#55,#94,#60,#04,#ac,#60,#08
	db #94,#60,#04,#a8,#60,#05,#ac,#60
	db #07,#94,#60,#03,#a2,#60,#07,#a8
	db #60,#08,#ac,#60,#04,#98,#60,#05
	db #98,#60,#06,#b0,#60,#05,#98,#60
	db #07,#b0,#60,#04,#b0,#60,#05,#59
	db #98,#60,#04,#b0,#60,#08,#98,#60
	db #04,#ac,#60,#05,#b0,#60,#07,#98
	db #60,#03,#a6,#60,#07,#ac,#60,#08
	db #b0,#60,#04,#98,#60,#05,#98,#60
	db #06,#b0,#60,#05,#98,#60,#07,#b0
	db #60,#04,#b0,#60,#05,#59,#98,#60
	db #04,#b0,#60,#08,#98,#60,#04,#ac
	db #60,#05,#b0,#60,#07,#98,#60,#03
	db #a6,#60,#07,#ac,#60,#08,#b0,#60
	db #04,#b8,#e7,#00,#00,#0a,#b8,#60
	db #0b,#79,#79,#b8,#60,#0a,#b8,#60
	db #0b,#79,#b8,#60,#0a,#b8,#60,#0b
	db #79,#79,#79,#b8,#60,#0a,#b8,#60
	db #0b,#b8,#60,#0a,#b8,#60,#0b,#b8
	db #60,#0a,#b8,#60,#0b,#79,#79,#b8
	db #60,#0a,#b8,#60,#0b,#79,#b8,#60
	db #0a,#b8,#60,#0b,#79,#79,#b8,#60
	db #0a,#79,#b8,#60,#0b,#b8,#60,#0a
	db #b8,#60,#0b,#bc,#60,#0a,#bc,#60
	db #0b,#7d,#7d,#bc,#60,#0a,#bc,#60
	db #0b,#7d,#bc,#60,#0a,#bc,#60,#0b
	db #bc,#60,#0a,#bc,#60,#0b,#bc,#60
	db #0a,#7d,#bc,#60,#0b,#bc,#60,#0a
	db #bc,#60,#0b,#bc,#60,#0a,#bc,#60
	db #0b,#7d,#7d,#bc,#60,#0a,#bc,#60
	db #0b,#7d,#bc,#60,#0a,#bc,#60,#0b
	db #bc,#60,#0a,#bc,#60,#0b,#7d,#bc
	db #60,#0a,#bc,#60,#0b,#bc,#60,#0a
	db #bc,#60,#0b,#ac,#e3,#00,#00,#0c
	db #0a,#42,#05,#ac,#e0,#40,#00,#0f
	db #b2,#e3,#00,#00,#0c,#02,#42,#05
	db #b2,#e0,#40,#00,#0f,#ba,#e3,#00
	db #00,#0c,#ba,#e0,#40,#00,#0f,#c4
	db #e0,#00,#00,#0c,#06,#42,#05,#c4
	db #e0,#40,#00,#0f,#c8,#e3,#00,#00
	db #0c,#c8,#e0,#40,#00,#0f,#ca,#e0
	db #00,#00,#0c,#02,#42,#05,#ca,#e0
	db #40,#00,#0f,#c8,#e3,#00,#00,#0c
	db #42,#05,#c8,#e0,#40,#00,#0f,#c4
	db #e3,#00,#00,#0c,#02,#c4,#e0,#60
	db #00,#0f,#be,#e0,#00,#00,#10,#81
	db #7f,#81,#7f,#81,#7f,#81,#7f,#81
	db #7f,#81,#7f,#81,#7f,#7b,#be,#60
	db #0c,#06,#42,#05,#02,#42,#07,#be
	db #e0,#40,#00,#0f,#c0,#e3,#00,#00
	db #0c,#42,#05,#be,#43,#be,#e5,#40
	db #00,#0f,#ba,#e3,#00,#00,#0c,#42
	db #05,#be,#43,#be,#e5,#40,#00,#0f
	db #94,#e1,#00,#00,#05,#94,#60,#06
	db #ac,#60,#05,#94,#60,#07,#ac,#60
	db #04,#ac,#60,#05,#55,#94,#60,#04
	db #ac,#60,#08,#94,#60,#04,#a2,#60
	db #05,#ac,#60,#07,#94,#60,#03,#ac
	db #60,#07,#a2,#60,#08,#a8,#60,#04
	db #94,#60,#05,#94,#60,#06,#ac,#60
	db #05,#94,#60,#07,#ac,#60,#04,#ac
	db #60,#05,#55,#94,#60,#04,#ac,#60
	db #08,#94,#60,#04,#a8,#60,#05,#ac
	db #60,#07,#94,#60,#03,#a2,#60,#07
	db #a8,#60,#08,#ac,#60,#04,#9e,#60
	db #05,#9e,#60,#06,#b6,#60,#05,#9e
	db #60,#07,#b6,#60,#04,#b6,#60,#05
	db #5f,#9e,#60,#04,#b6,#60,#08,#9e
	db #60,#04,#b2,#60,#05,#b6,#60,#07
	db #9e,#60,#03,#ac,#60,#07,#b2,#60
	db #08,#b6,#60,#04,#9e,#60,#05,#9e
	db #60,#06,#b6,#60,#05,#9e,#60,#07
	db #b6,#60,#04,#b6,#60,#05,#5f,#b6
	db #60,#04,#b0,#60,#08,#98,#60,#04
	db #ac,#60,#05,#b0,#60,#07,#98,#60
	db #03,#a6,#60,#07,#ac,#60,#08,#b0
	db #60,#04,#b8,#e7,#00,#00,#0a,#b8
	db #60,#0b,#79,#79,#b8,#60,#0a,#b8
	db #60,#0b,#79,#b8,#60,#0a,#b8,#60
	db #0b,#79,#79,#79,#b8,#60,#0a,#b8
	db #60,#0b,#b8,#60,#0a,#b8,#60,#0b
	db #b8,#60,#0a,#b8,#60,#0b,#79,#79
	db #b8,#60,#0a,#b8,#60,#0b,#79,#b8
	db #60,#0a,#b8,#60,#0b,#79,#79,#b8
	db #60,#0a,#79,#b8,#60,#0b,#b8,#60
	db #0a,#b8,#60,#0b,#c6,#60,#11,#c6
	db #60,#12,#87,#87,#c6,#60,#11,#c6
	db #60,#12,#87,#c6,#60,#11,#c6,#60
	db #12,#c6,#60,#11,#c6,#60,#12,#c6
	db #60,#11,#87,#c6,#60,#12,#c6,#60
	db #11,#c6,#60,#12,#c6,#60,#11,#c6
	db #60,#12,#87,#87,#c6,#60,#11,#c6
	db #60,#12,#87,#c6,#60,#11,#c0,#60
	db #12,#c0,#60,#11,#c0,#60,#12,#81
	db #c0,#60,#11,#c0,#60,#12,#c0,#60
	db #11,#c0,#60,#12,#ac,#e3,#00,#00
	db #0c,#0a,#42,#05,#ac,#e0,#40,#00
	db #0f,#b2,#e3,#00,#00,#0c,#02,#42
	db #05,#b2,#e0,#40,#00,#0f,#ba,#e3
	db #00,#00,#0c,#ba,#e0,#40,#00,#0f
	db #c4,#e0,#00,#00,#0c,#06,#42,#05
	db #c4,#e0,#40,#00,#0f,#c8,#e3,#00
	db #00,#0c,#c8,#e0,#40,#00,#0f,#ca
	db #e0,#00,#00,#0c,#02,#42,#05,#ca
	db #e0,#40,#00,#0f,#c8,#e3,#00,#00
	db #0c,#42,#05,#c8,#e0,#40,#00,#0f
	db #c4,#e3,#00,#00,#0c,#02,#c4,#e0
	db #60,#00,#0f,#be,#e0,#00,#00,#10
	db #81,#7f,#81,#7f,#81,#7f,#81,#7f
	db #81,#7f,#81,#7f,#81,#7f,#7b,#be
	db #60,#0c,#06,#42,#05,#02,#42,#07
	db #be,#e0,#40,#00,#0f,#c0,#e3,#00
	db #00,#0c,#42,#05,#be,#43,#be,#e5
	db #40,#00,#0f,#ba,#e3,#00,#00,#0c
	db #42,#05,#be,#43,#42,#60,#00,#42
	db #60,#00,#5a,#e9,#00,#00,#09,#5a
	db #4d,#72,#49,#1b,#33,#33,#1b,#1b
	db #33,#1b,#29,#33,#5a,#4d,#72,#49
	db #29,#2f,#1b,#5a,#4d,#72,#49,#1b
	db #33,#33,#1b,#1b,#33,#1b,#2f,#33
	db #5a,#4d,#68,#49,#2f,#33,#29,#68
	db #4d,#80,#49,#29,#41,#41,#29,#29
	db #41,#29,#3d,#41,#5a,#4d,#76,#49
	db #3d,#41,#29,#5a,#4d,#72,#49,#29
	db #41,#41,#29,#29,#41,#29,#3d,#41
	db #5a,#4d,#76,#49,#3d,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00

	read "The Long Dark Knight Of The Soul - stArkos Player (2019)(Epyteor)(SuTeKH)(StArkos).asm"

;
.music_info
	db "The Long Dark Knight Of The Soul - Squicky Chippy (2019)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
