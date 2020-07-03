; Music of Jarlac (1986)(CpcRetroDev.ByteRealms)(Jose A. Martin)(StArkos)
; Ripped by Megachur the 07/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JARLAC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 07
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0040

	read "music_header.asm"

.l0040
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#03,#76,#00,#58,#00,#61,#00
	db #6d,#00,#7c,#00,#83,#00,#a8,#00
	db #00,#00,#00,#00,#00,#00,#0d,#5a
	db #00,#01,#00,#36,#01,#3c,#38,#34
	db #30,#2c,#0d,#5a,#00,#01,#00,#7c
	db #18,#7c,#0c,#78,#18,#78,#0c,#78
	db #18,#0d,#5a,#00,#05,#00,#05,#48
	db #0d,#7e,#00,#05,#00,#34,#34,#b0
	db #ff,#ff,#ac,#01,#00,#a8,#fe,#ff
	db #a4,#02,#00,#a4,#fd,#ff,#a0,#03
	db #00,#9c,#fd,#ff,#98,#03,#00,#94
	db #fe,#ff,#90,#02,#00,#0d,#5a,#00
	db #01,#00,#7e,#2e,#08,#7e,#21,#06
	db #7c,#04,#70,#02,#ec,#fe,#ff,#0c
	db #ac,#fe,#ff,#e8,#02,#00,#0c,#0d
	db #5a,#00,#40,#00,#00,#00,#3b,#01
	db #00,#11,#05,#b6,#01,#3c,#01,#00
	db #11,#05,#b6,#01,#d5,#05,#00,#4b
	db #06,#b6,#01,#9a,#06,#00,#ee,#01
	db #b6,#01,#fc,#02,#00,#ab,#04,#b6
	db #01,#57,#02,#00,#ee,#01,#b6,#01
	db #fc,#02,#00,#47,#04,#b6,#01,#a0
	db #03,#00,#11,#05,#b6,#01,#10,#07
	db #00,#9a,#07,#b6,#01,#10,#07,#00
	db #11,#05,#b6,#01,#10,#07,#00,#4b
	db #06,#b6,#01,#9a,#06,#00,#f5,#08
	db #b6,#01,#4a,#05,#00,#f5,#08,#b6
	db #01,#4a,#05,#00,#7b,#08,#b6,#01
	db #f0,#07,#00,#7b,#08,#b6,#01,#f0
	db #07,#00,#11,#05,#b6,#01,#3c,#01
	db #01,#c8,#00,#00,#7a,#e1,#00,#00
	db #01,#42,#00,#8e,#65,#02,#42,#00
	db #7a,#61,#01,#02,#92,#6b,#02,#42
	db #00,#61,#02,#92,#4d,#02,#7a,#61
	db #01,#42,#00,#a0,#6f,#02,#42,#00
	db #7a,#61,#01,#02,#92,#6d,#02,#02
	db #88,#41,#02,#61,#02,#3b,#02,#a0
	db #4b,#02,#9c,#41,#02,#9c,#45,#42
	db #00,#7a,#61,#01,#42,#00,#9c,#65
	db #02,#42,#00,#7a,#61,#01,#02,#9c
	db #6d,#02,#02,#9c,#47,#02,#9c,#4f
	db #02,#7a,#61,#01,#42,#00,#9c,#6b
	db #02,#42,#00,#7a,#61,#01,#42,#00
	db #9c,#73,#02,#02,#9c,#4d,#02,#9c
	db #4b,#02,#9c,#53,#02,#9c,#4d,#02
	db #9c,#55,#02,#9c,#57,#00,#42,#80
	db #00,#00,#0e,#42,#00,#06,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#04,#42,#00,#04,#42,#00
	db #42,#00,#06,#42,#00,#42,#00,#42
	db #00,#42,#00,#02,#42,#00,#42,#00
	db #08,#42,#00,#0a,#42,#00,#42,#00
	db #42,#00,#16,#42,#00,#00,#9c,#e0
	db #00,#00,#03,#02,#42,#00,#02,#84
	db #61,#02,#02,#84,#49,#42,#00,#b8
	db #61,#04,#02,#42,#00,#42,#00,#42
	db #00,#02,#42,#00,#42,#00,#75,#42
	db #00,#04,#42,#00,#04,#42,#00,#42
	db #00,#04,#42,#00,#9c,#60,#03,#02
	db #42,#00,#42,#00,#8a,#60,#02,#02
	db #63,#42,#00,#4b,#02,#8a,#4b,#a2
	db #49,#8a,#47,#02,#8a,#4d,#a2,#49
	db #84,#41,#02,#5d,#42,#00,#45,#02
	db #84,#4b,#9c,#49,#84,#47,#02,#84
	db #4d,#9c,#49,#88,#41,#02,#61,#42
	db #00,#49,#02,#88,#4b,#a0,#49,#80
	db #e0,#00,#00,#05,#68,#60,#04,#68
	db #60,#01,#68,#60,#04,#68,#6b,#01
	db #68,#60,#04,#68,#61,#01,#68,#49
	db #98,#61,#05,#02,#98,#4b,#42,#00
	db #68,#63,#01,#68,#60,#04,#68,#61
	db #01,#80,#69,#04,#80,#61,#05,#80
	db #6b,#01,#68,#41,#68,#67,#04,#80
	db #61,#05,#80,#6b,#01,#68,#41,#68
	db #67,#04,#98,#61,#05,#02,#98,#4b
	db #02,#68,#63,#01,#68,#60,#04,#68
	db #61,#01,#68,#67,#04,#7a,#61,#05
	db #7a,#60,#04,#62,#60,#01,#62,#60
	db #04,#7a,#60,#05,#7a,#6b,#04,#62
	db #61,#01,#62,#49,#92,#61,#05,#02
	db #92,#4b,#02,#7a,#41,#02,#7a,#60
	db #01,#7a,#60,#04,#62,#6b,#01,#62
	db #60,#04,#7a,#61,#01,#7a,#60,#04
	db #7a,#60,#05,#42,#00,#62,#60,#01
	db #62,#69,#04,#92,#61,#05,#02,#92
	db #4b,#02,#96,#41,#42,#00,#66,#60
	db #01,#7e,#60,#04,#84,#e1,#00,#00
	db #05,#6c,#60,#04,#6c,#60,#01,#6c
	db #60,#04,#6c,#6b,#01,#6c,#60,#04
	db #6c,#61,#01,#6c,#49,#9c,#61,#05
	db #02,#9c,#47,#42,#00,#6c,#63,#01
	db #6c,#60,#04,#6c,#61,#01,#6c,#4b
	db #84,#61,#05,#84,#6b,#01,#6c,#41
	db #6c,#67,#04,#84,#61,#05,#84,#6b
	db #01,#6c,#41,#6c,#67,#04,#9c,#61
	db #05,#02,#9c,#47,#02,#6c,#63,#01
	db #6c,#60,#04,#6c,#61,#01,#6c,#67
	db #04,#7c,#61,#05,#7c,#60,#04,#64
	db #60,#01,#64,#60,#04,#7c,#60,#05
	db #7c,#6b,#04,#64,#61,#01,#64,#49
	db #94,#61,#05,#02,#94,#47,#02,#7c
	db #41,#64,#69,#01,#64,#43,#64,#60
	db #04,#64,#61,#01,#64,#6b,#04,#64
	db #61,#01,#64,#49,#7c,#61,#05,#42
	db #00,#64,#60,#01,#64,#69,#04,#94
	db #61,#05,#02,#94,#47,#02,#98,#41
	db #42,#00,#68,#60,#01,#80,#60,#04
	db #80,#e0,#00,#00,#05,#68,#60,#04
	db #68,#60,#01,#68,#60,#04,#68,#6b
	db #01,#68,#60,#04,#68,#61,#01,#68
	db #49,#98,#61,#05,#02,#98,#47,#42
	db #00,#68,#63,#01,#68,#60,#04,#68
	db #61,#01,#80,#69,#04,#80,#61,#05
	db #80,#6b,#01,#68,#41,#68,#67,#04
	db #80,#61,#05,#80,#6b,#01,#68,#41
	db #68,#67,#04,#98,#61,#05,#02,#98
	db #47,#02,#68,#63,#01,#68,#60,#04
	db #68,#61,#01,#68,#67,#04,#82,#61
	db #05,#82,#60,#04,#6a,#60,#01,#6a
	db #60,#04,#82,#60,#05,#82,#6b,#04
	db #6a,#61,#01,#6a,#49,#9a,#61,#05
	db #02,#9a,#47,#02,#82,#41,#6a,#60
	db #04,#82,#60,#01,#82,#60,#04,#6a
	db #6b,#01,#6a,#60,#04,#82,#61,#01
	db #82,#60,#04,#82,#60,#05,#42,#00
	db #6a,#60,#01,#6a,#69,#04,#9a,#61
	db #05,#02,#9a,#4b,#02,#9a,#41,#42
	db #00,#6a,#60,#01,#82,#60,#04,#98
	db #e0,#00,#00,#03,#02,#42,#00,#02
	db #8e,#61,#02,#02,#8e,#4b,#02,#be
	db #61,#04,#06,#42,#00,#02,#42,#00
	db #42,#00,#79,#42,#00,#04,#42,#00
	db #04,#42,#00,#42,#00,#06,#42,#00
	db #02,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#02,#7a,#60,#02,#02
	db #53,#42,#00,#7a,#4b,#02,#92,#49
	db #02,#7a,#41,#02,#92,#40,#42,#00
	db #7a,#4b,#02,#92,#49,#02,#9a,#60
	db #03,#02,#42,#00,#02,#70,#61,#02
	db #02,#88,#40,#42,#00,#70,#4b,#02
	db #88,#49,#00,#98,#e0,#00,#00,#03
	db #02,#42,#00,#02,#76,#61,#02,#02
	db #76,#49,#42,#00,#be,#61,#04,#02
	db #42,#00,#02,#42,#00,#02,#42,#00
	db #42,#00,#79,#42,#00,#04,#42,#00
	db #04,#42,#00,#42,#00,#06,#98,#60
	db #03,#02,#42,#00,#42,#00,#84,#60
	db #02,#02,#5d,#42,#00,#45,#02,#84
	db #4b,#9c,#49,#84,#47,#02,#84,#4d
	db #9c,#49,#84,#41,#02,#5d,#42,#00
	db #45,#02,#84,#4b,#9c,#49,#84,#47
	db #02,#84,#4d,#9c,#49,#80,#41,#02
	db #59,#42,#00,#41,#02,#80,#4b,#98
	db #49,#84,#e1,#00,#00,#02,#02,#5d
	db #02,#3b,#02,#9c,#4b,#42,#00,#aa
	db #61,#04,#08,#42,#00,#04,#6d,#0e
	db #75,#06,#42,#00,#04,#42,#00,#6b
	db #06,#42,#00,#0a,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #67,#06,#42,#00,#0a,#42,#00,#42
	db #00,#00,#84,#e0,#00,#00,#05,#42
	db #00,#84,#60,#01,#84,#47,#9c,#60
	db #03,#02,#84,#61,#01,#84,#47,#8e
	db #61,#05,#02,#8e,#47,#02,#9c,#60
	db #03,#02,#6c,#61,#01,#02,#84,#60
	db #05,#42,#00,#84,#60,#01,#84,#47
	db #9c,#61,#03,#02,#84,#60,#01,#84
	db #47,#8e,#61,#05,#02,#8e,#47,#02
	db #9c,#61,#03,#02,#6c,#60,#01,#42
	db #00,#86,#60,#05,#42,#00,#6e,#60
	db #01,#6e,#47,#9e,#61,#03,#02,#86
	db #60,#01,#86,#47,#8e,#61,#05,#02
	db #8e,#47,#02,#9e,#61,#03,#02,#6e
	db #60,#01,#02,#86,#60,#05,#42,#00
	db #6e,#60,#01,#6e,#47,#9e,#61,#03
	db #02,#86,#60,#01,#86,#47,#8e,#61
	db #05,#02,#8e,#47,#02,#9e,#61,#03
	db #02,#6e,#60,#01,#00,#84,#e1,#00
	db #00,#05,#42,#00,#6c,#60,#01,#02
	db #6c,#4b,#02,#6c,#41,#42,#00,#2d
	db #02,#6c,#4b,#02,#6c,#4f,#02,#6c
	db #41,#02,#84,#60,#05,#02,#6c,#60
	db #01,#02,#84,#60,#05,#02,#6c,#60
	db #01,#42,#00,#2d,#02,#6c,#4b,#02
	db #6c,#4f,#02,#6c,#41,#42,#00,#86
	db #60,#05,#42,#00,#6e,#60,#01,#02
	db #86,#60,#05,#02,#6e,#60,#01,#42
	db #00,#2f,#02,#6e,#4b,#02,#86,#61
	db #05,#02,#6e,#60,#01,#02,#6e,#4b
	db #02,#6e,#41,#02,#86,#60,#05,#02
	db #6e,#60,#01,#42,#00,#2f,#02,#6e
	db #4b,#02,#86,#61,#05,#02,#86,#60
	db #01,#42,#00,#84,#e0,#00,#00,#02
	db #02,#5d,#02,#3b,#02,#9c,#4b,#42
	db #00,#aa,#61,#04,#08,#42,#00,#04
	db #6d,#0a,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#0a,#7a,#6b,#02
	db #02,#53,#02,#2d,#02,#92,#55,#42
	db #00,#7a,#47,#02,#53,#02,#2d,#02
	db #92,#51,#42,#00,#7a,#45,#02,#53
	db #02,#2d,#02,#92,#4f,#42,#00,#7a
	db #43,#02,#53,#02,#2d,#02,#92,#4d
	db #42,#00,#84,#e0,#00,#00,#05,#42
	db #00,#6c,#60,#01,#02,#6c,#4b,#02
	db #6c,#41,#42,#00,#2d,#02,#6c,#4b
	db #02,#6c,#4f,#02,#6c,#41,#02,#84
	db #60,#05,#02,#6c,#60,#01,#02,#84
	db #60,#05,#02,#6c,#60,#01,#42,#00
	db #2d,#02,#6c,#4b,#02,#6c,#4f,#02
	db #84,#41,#42,#00,#84,#60,#05,#42
	db #00,#62,#60,#01,#02,#42,#00,#02
	db #23,#42,#00,#7a,#60,#05,#42,#00
	db #62,#60,#01,#02,#42,#00,#02,#23
	db #02,#7a,#60,#05,#42,#00,#62,#60
	db #01,#02,#42,#00,#02,#23,#42,#00
	db #7a,#60,#05,#42,#00,#62,#60,#01
	db #42,#00,#42,#00,#02,#23,#42,#00
	db #84,#e0,#00,#00,#05,#42,#00,#6c
	db #60,#01,#02,#9c,#60,#03,#02,#6c
	db #61,#01,#42,#00,#b4,#60,#03,#02
	db #6c,#6b,#01,#02,#9c,#60,#03,#02
	db #6c,#61,#01,#02,#84,#60,#05,#02
	db #6c,#60,#01,#02,#9c,#60,#03,#02
	db #6c,#60,#01,#42,#00,#b4,#60,#03
	db #02,#6c,#6b,#01,#02,#9c,#60,#03
	db #02,#6c,#61,#01,#42,#00,#86,#60
	db #05,#42,#00,#6e,#60,#01,#02,#9e
	db #60,#03,#02,#6e,#60,#01,#42,#00
	db #b6,#60,#03,#02,#6e,#6b,#01,#02
	db #9e,#60,#03,#02,#6e,#61,#01,#02
	db #86,#60,#05,#42,#00,#6e,#60,#01
	db #02,#9e,#60,#03,#02,#6e,#60,#01
	db #42,#00,#b6,#60,#03,#02,#6e,#6b
	db #01,#02,#9e,#61,#03,#02,#6e,#60
	db #01,#00,#9c,#e0,#f5,#ff,#03,#42
	db #80,#00,#00,#45,#04,#5d,#02,#a8
	db #67,#04,#aa,#41,#06,#42,#00,#02
	db #42,#00,#42,#80,#09,#00,#84,#e0
	db #00,#00,#03,#02,#75,#04,#5d,#02
	db #a4,#67,#04,#a6,#41,#0a,#42,#00
	db #02,#9e,#60,#03,#02,#47,#04,#5f
	db #02,#a8,#67,#04,#aa,#41,#42,#00
	db #08,#42,#00,#02,#86,#60,#03,#02
	db #77,#04,#5f,#04,#a6,#60,#04,#02
	db #42,#00,#02,#71,#02,#42,#00,#00
	db #76,#e1,#00,#00,#05,#42,#00,#76
	db #60,#01,#76,#47,#8e,#61,#03,#02
	db #76,#60,#01,#76,#47,#8e,#61,#05
	db #02,#8e,#47,#02,#8e,#61,#03,#02
	db #5e,#60,#01,#02,#76,#60,#05,#42
	db #00,#76,#60,#01,#76,#47,#8e,#61
	db #03,#02,#76,#60,#01,#76,#47,#8e
	db #61,#05,#02,#8e,#47,#02,#8e,#61
	db #03,#02,#5e,#60,#01,#42,#00,#7c
	db #60,#05,#42,#00,#64,#60,#01,#64
	db #47,#94,#61,#03,#02,#7c,#60,#01
	db #7c,#47,#8e,#61,#05,#02,#8e,#47
	db #02,#94,#61,#03,#02,#64,#60,#01
	db #02,#7c,#60,#05,#42,#00,#64,#60
	db #01,#64,#47,#94,#61,#03,#02,#7c
	db #60,#01,#7c,#47,#8e,#61,#05,#02
	db #8e,#47,#02,#94,#61,#03,#02,#64
	db #60,#01,#00,#8e,#e0,#00,#00,#03
	db #02,#67,#04,#5d,#84,#61,#02,#84
	db #47,#b4,#60,#03,#42,#00,#8e,#61
	db #01,#8e,#47,#84,#61,#02,#42,#00
	db #84,#49,#42,#00,#8e,#60,#03,#02
	db #71,#04,#4f,#8a,#61,#02,#8a,#47
	db #94,#60,#03,#02,#76,#61,#01,#76
	db #47,#8a,#61,#02,#02,#8a,#49,#42
	db #00,#8a,#60,#03,#02,#63,#04,#63
	db #84,#61,#02,#84,#47,#ba,#60,#03
	db #02,#7c,#61,#01,#7c,#47,#84,#61
	db #02,#42,#00,#84,#49,#42,#00,#8a
	db #60,#03,#02,#63,#04,#63,#84,#61
	db #02,#84,#47,#ba,#60,#03,#02,#7c
	db #61,#01,#7c,#47,#76,#61,#02,#42
	db #00,#76,#49,#42,#00,#9c,#e0,#00
	db #00,#03,#02,#75,#04,#5d,#7a,#61
	db #02,#7a,#47,#b4,#60,#03,#42,#00
	db #84,#61,#01,#84,#47,#7a,#61,#02
	db #42,#00,#7a,#49,#42,#00,#9c,#60
	db #03,#02,#75,#04,#5d,#80,#61,#02
	db #80,#47,#b4,#60,#03,#02,#84,#61
	db #01,#84,#47,#86,#61,#02,#02,#86
	db #49,#42,#00,#9e,#60,#03,#02,#47
	db #04,#5f,#80,#61,#02,#80,#47,#b6
	db #60,#03,#02,#86,#61,#01,#86,#47
	db #76,#61,#02,#42,#00,#76,#49,#42
	db #00,#86,#60,#03,#02,#77,#04,#5f
	db #80,#61,#02,#80,#47,#b6,#60,#03
	db #02,#86,#61,#01,#86,#47,#76,#61
	db #02,#42,#00,#76,#49,#42,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#44
	db #a6,#48,#84,#19,#a2,#f3,#48,#d9
	db #d9,#84,#e6,#66,#b3,#48,#84,#e6
	db #73,#d9,#66,#b3,#59,#26,#99,#99
	db #cc,#b3,#19,#8c,#cc,#cc,#cc,#66
	db #4c,#8c,#cc,#4c,#84,#84,#e2,#cc
	db #c4,#0c,#c8,#19,#b3,#48,#8c,#84
	db #c0,#cc,#66,#c0,#48,#40,#48,#c4
	db #8c,#84,#80,#40,#c0,#48,#48,#68
	db #80,#40,#34,#84,#c0,#b4,#80,#00
	db #d0,#68,#d0,#68,#00,#00,#90,#b4
	db #78,#60,#00,#00,#40,#34,#34,#80
	db #00,#00,#00,#90,#68,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#02,#01,#03,#08,#0a,#09
	db #0b,#04,#06,#05,#07,#0c,#0e,#0d
	db #0f,#20,#22,#21,#23,#28,#2a,#29
	db #2b,#24,#26,#25,#27,#2c,#2e,#2d
	db #2f,#10,#12,#11,#13,#18,#1a,#19
	db #1b,#14,#16,#15,#17,#1c,#1e,#1d
	db #1f,#30,#32,#31,#33,#38,#3a,#39
	db #3b,#34,#36,#35,#37,#3c,#3e,#3d
	db #3f,#80,#82,#81,#83,#88,#8a,#89
	db #8b,#84,#86,#85,#87,#8c,#8e,#8d
	db #8f,#a0,#a2,#a1,#a3,#a8,#aa,#a9
	db #ab,#a4,#a6,#a5,#a7,#ac,#ae,#ad
	db #af,#90,#92,#91,#93,#98,#9a,#99
	db #9b,#94,#96,#95,#97,#9c,#9e,#9d
	db #9f,#b0,#b2,#b1,#b3,#b8,#ba,#b9
	db #bb,#b4,#b6,#b5,#b7,#bc,#be,#bd
	db #bf,#40,#42,#41,#43,#48,#4a,#49
	db #4b,#44,#46,#45,#47,#4c,#4e,#4d
	db #4f,#60,#62,#61,#63,#68,#6a,#69
	db #6b,#64,#66,#65,#67,#6c,#6e,#6d
	db #6f,#50,#52,#51,#53,#58,#5a,#59
	db #5b,#54,#56,#55,#57,#5c,#5e,#5d
	db #5f,#70,#72,#71,#73,#78,#7a,#79
	db #7b,#74,#76,#75,#77,#7c,#7e,#7d
	db #7f,#c0,#c2,#c1,#c3,#c8,#ca,#c9
	db #cb,#c4,#c6,#c5,#c7,#cc,#ce,#cd
	db #cf,#e0,#e2,#e1,#e3,#e8,#ea,#e9
	db #eb,#e4,#e6,#e5,#e7,#ec,#ee,#ed
	db #ef,#d0,#d2,#d1,#d3,#d8,#da,#d9
	db #db,#d4,#d6,#d5,#d7,#dc,#de,#dd
	db #df,#f0,#f2,#f1,#f3,#f8,#fa,#f9
	db #fb,#f4,#f6,#f5,#f7,#fc,#fe,#fd
	db #ff,#ff,#aa,#55,#00,#aa,#aa,#00
	db #00,#55,#00,#55,#00,#00,#00,#00
	db #00,#aa,#aa,#00,#00,#aa,#aa,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#55,#00,#55,#00,#00,#00,#00
	db #00,#55,#00,#55,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#aa,#aa,#00,#00,#aa,#aa,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#aa,#aa,#00,#00,#aa,#aa,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#55,#00,#55,#00,#00,#00,#00
	db #00,#55,#00,#55,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#55,#00,#55,#00,#00,#00,#00
	db #00,#55,#00,#55,#00,#00,#00,#00
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
	db #00,#c9
;
; #6d14 - reallocated by Megachur
;
.l6d14
	db #00
;
.play_music
;
	push ix
	push iy
	xor a
	ld (#6d13),a
.l6d1e equ $ + 1
	ld a,#01
	dec a
	jp nz,l6ef1
.l6d24 equ $ + 1
	ld a,#01
	dec a
	jr nz,l6d97
.l6d29 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l6d3e
	ld a,(l6d14)
	inc a
	ld (l6d14),a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l6d3e
	rra
	jr nc,l6d46
	ld de,l6de7
	ldi
.l6d46
	rra
	jr nc,l6d4e
	ld de,l6e4c
	ldi
.l6d4e
	rra
	jr nc,l6d56
	ld de,l6eb1
	ldi
.l6d56
	ld de,l6dc6
	ldi
	ldi
	ld de,l6e2b
	ldi
	ldi
	ld de,l6e90
	ldi
	ldi
	rra
	jr nc,l6d73
	ld de,l6d96
	ldi
.l6d73
	rra
	jr nc,l6d7e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l6d82),de
.l6d7e
	ld (l6d29),hl
.l6d82 equ $ + 1
	ld hl,#0000
	ld (l6da0),hl
	ld a,#01
	ld (l6d9b),a
	ld (l6dc1),a
	ld (l6e26),a
	ld (l6e8b),a
.l6d96 equ $ + 1
	ld a,#01
.l6d97
	ld (l6d24),a
.l6d9b equ $ + 1
	ld a,#01
	dec a
	jr nz,l6dbd
.l6da0 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l6dba
	srl a
	jr nz,l6dae
	ld a,(hl)
	inc hl
.l6dae
	jr nc,l6db5
	ld (#6d13),a
	jr l6db8
.l6db5
	ld (l6ef0),a
.l6db8
	ld a,#01
.l6dba
	ld (l6da0),hl
.l6dbd
	ld (l6d9b),a
.l6dc1 equ $ + 1
	ld a,#01
	dec a
	jr nz,l6e22
.l6dc6 equ $ + 1
	ld hl,#0000
	call l72c4
	ld (l6dc6),hl
	jr c,l6e22
	ld a,d
	rra
	jr nc,l6dd9
	and #0f
	ld (l6fc9),a
.l6dd9
	rl d
	jr nc,l6de1
	ld (l6fb7),ix
.l6de1
	rl d
	jr nc,l6e20
	ld a,e
.l6de7 equ $ + 1
	add #00
	ld (l6fc8),a
	ld hl,#0000
	ld (l6fb4),hl
	rl d
	jr c,l6e00
.l6df6 equ $ + 1
	ld hl,#0000
	ld a,(l6fd9)
	ld (l6fd1),a
	jr l6e1d
.l6e00
	ld l,b
	add hl,hl
.l6e03 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l6fd9),a
	ld (l6fd1),a
	ld a,(hl)
	or a
	jr z,l6e19
	ld (l70e6),a
.l6e19
	inc hl
	ld (l6df6),hl
.l6e1d
	ld (l6fcb),hl
.l6e20
	ld a,#01
.l6e22
	ld (l6dc1),a
.l6e26 equ $ + 1
	ld a,#01
	dec a
	jr nz,l6e87
.l6e2b equ $ + 1
	ld hl,#0000
	call l72c4
	ld (l6e2b),hl
	jr c,l6e87
	ld a,d
	rra
	jr nc,l6e3e
	and #0f
	ld (l6f6a),a
.l6e3e
	rl d
	jr nc,l6e46
	ld (l6f58),ix
.l6e46
	rl d
	jr nc,l6e85
	ld a,e
.l6e4c equ $ + 1
	add #00
	ld (l6f69),a
	ld hl,#0000
	ld (l6f55),hl
	rl d
	jr c,l6e65
.l6e5b equ $ + 1
	ld hl,#0000
	ld a,(l6f7a)
	ld (l6f72),a
	jr l6e82
.l6e65
	ld l,b
	add hl,hl
.l6e68 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l6f7a),a
	ld (l6f72),a
	ld a,(hl)
	or a
	jr z,l6e7e
	ld (l70e6),a
.l6e7e
	inc hl
	ld (l6e5b),hl
.l6e82
	ld (l6f6c),hl
.l6e85
	ld a,#01
.l6e87
	ld (l6e26),a
.l6e8b equ $ + 1
	ld a,#01
	dec a
	jr nz,l6eec
.l6e90 equ $ + 1
	ld hl,#0000
	call l72c4
	ld (l6e90),hl
	jr c,l6eec
	ld a,d
	rra
	jr nc,l6ea3
	and #0f
	ld (l6f0e),a
.l6ea3
	rl d
	jr nc,l6eab
	ld (l6efc),ix
.l6eab
	rl d
	jr nc,l6eea
	ld a,e
.l6eb1 equ $ + 1
	add #00
	ld (l6f0d),a
	ld hl,#0000
	ld (l6ef9),hl
	rl d
	jr c,l6eca
.l6ec0 equ $ + 1
	ld hl,#0000
	ld a,(l6f1e)
	ld (l6f16),a
	jr l6ee7
.l6eca
	ld l,b
	add hl,hl
.l6ecd equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l6f1e),a
	ld (l6f16),a
	ld a,(hl)
	or a
	jr z,l6ee3
	ld (l70e6),a
.l6ee3
	inc hl
	ld (l6ec0),hl
.l6ee7
	ld (l6f10),hl
.l6eea
	ld a,#01
.l6eec
	ld (l6e8b),a
.l6ef0 equ $ + 1
	ld a,#01
.l6ef1
	ld (l6d1e),a
	ld iy,l70fd
.l6ef9 equ $ + 1
	ld hl,#0000
.l6efc equ $ + 1
	ld de,#0000
	add hl,de
	ld (l6ef9),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l6f0e equ $ + 2
.l6f0d equ $ + 1
	ld de,#0000
.l6f10 equ $ + 1
	ld hl,#0000
	call l7108
.l6f16 equ $ + 1
	ld a,#01
	dec a
	jr nz,l6f1f
	ld (l6f10),hl
.l6f1e equ $ + 1
	ld a,#06
.l6f1f
	ld (l6f16),a
.l6f22
	ld de,#0000
	exx
	ld de,#0000
.l6f2a equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l6f4d
	ld a,#01
	ld (l7237),a
	call l7108
	xor a
	ld (l7237),a
	ld a,l
	or h
	jr z,l6f45
.l6f41 equ $ + 1
	ld a,#01
	dec a
	jr nz,l6f4a
.l6f45
	ld (l6f2a),hl
	ld a,#06
.l6f4a
	ld (l6f41),a
.l6f4d
	ld a,lx
	ex af,af'
	ld iy,l70fb
.l6f55 equ $ + 1
	ld hl,#0000
.l6f58 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l6f55),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l6f6a equ $ + 2
.l6f69 equ $ + 1
	ld de,#0000
.l6f6c equ $ + 1
	ld hl,#0000
	call l7108
.l6f72 equ $ + 1
	ld a,#01
	dec a
	jr nz,l6f7b
	ld (l6f6c),hl
.l6f7a equ $ + 1
	ld a,#06
.l6f7b
	ld (l6f72),a
.l6f7e
	ld de,#0000
	exx
	ld de,#0000
.l6f86 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l6fa9
	ld a,#01
	ld (l7237),a
	call l7108
	xor a
	ld (l7237),a
	ld a,l
	or h
	jr z,l6fa1
.l6f9d equ $ + 1
	ld a,#01
	dec a
	jr nz,l6fa6
.l6fa1
	ld (l6f86),hl
	ld a,#06
.l6fa6
	ld (l6f9d),a
.l6fa9
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l70f9
.l6fb4 equ $ + 1
	ld hl,#0000
.l6fb7 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l6fb4),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l6fc9 equ $ + 2
.l6fc8 equ $ + 1
	ld de,#0000
.l6fcb equ $ + 1
	ld hl,#0000
	call l7108
.l6fd1 equ $ + 1
	ld a,#01
	dec a
	jr nz,l6fda
	ld (l6fcb),hl
.l6fd9 equ $ + 1
	ld a,#06
.l6fda
	ld (l6fd1),a
.l6fdd
	ld de,#0000
	exx
	ld de,#0000
.l6fe5 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l7008
	ld a,#01
	ld (l7237),a
	call l7108
	xor a
	ld (l7237),a
	ld a,l
	or h
	jr z,l7000
.l6ffc equ $ + 1
	ld a,#01
	dec a
	jr nz,l7005
.l7000
	ld (l6fe5),hl
	ld a,#06
.l7005
	ld (l6ffc),a
.l7008
	ex af,af'
	or lx
.l700b
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l70f9
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
.l70e6 equ $ + 1
	cp #ff
	ret z
	ld (l70e6),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l70f9
	nop
	nop
.l70fb
	nop
	nop
.l70fd
	nop
	nop
.l70ff
	nop
.l7100
	nop
	nop
	nop
	nop
	nop
.l7105
	nop
	nop
.l7107
	nop
.l7108
	ld b,(hl)
	inc hl
	rr b
	jp c,l7166
	rr b
	jr c,l7136
	ld a,b
	and #0f
	jr nz,l711f
	ld (iy+#07),a
	ld lx,#09
	ret
.l711f
	ld lx,#08
	sub d
	jr nc,l7126
	xor a
.l7126
	ld (iy+#07),a
	rr b
	call l7298
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l7136
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l7146
	ld (l70ff),a
	ld lx,#00
.l7146
	ld a,b
	and #0f
	sub d
	jr nc,l714d
	xor a
.l714d
	ld (iy+#07),a
	bit 5,c
	jr nz,l7157
	inc lx
	ret
.l7157
	rr b
	bit 6,c
	call l728a
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l7166
	rr b
	jr nc,l7179
	ld a,(l6fd1)
	ld c,a
	ld a,(l6fd9)
	cp c
	jr nz,l7179
	ld a,#fe
	ld (l70e6),a
.l7179
	bit 1,b
	jp nz,l7232
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l7107),a
	bit 0,b
	jr z,l71e8
	bit 2,b
	call l728a
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l71a8),a
	ld a,b
	exx
.l71a8 equ $ + 1
	jr l71a9
.l71a9
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
	jr nc,l71c8
	inc hl
.l71c8
	bit 5,a
	jr z,l71d8
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
.l71d8
	ld (l7105),hl
	exx
.l71dc
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l70ff),a
	ld lx,#00
	ret
.l71e8
	bit 2,b
	call l728a
	ld (l7105),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l71fc),a
	ld a,b
	exx
.l71fc equ $ + 1
	jr l71fd
.l71fd
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
	jr z,l7229
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
.l7229
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l71dc
.l7232
	bit 0,b
	jr z,l7246
.l7237 equ $ + 1
	ld a,#00
	or a
	jr z,l723f
	ld hl,#0000
	ret
.l723f
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l7108
.l7246
	ld (iy+#07),#10
	bit 5,b
	jr nz,l7253
	ld lx,#09
	jr l7266
.l7253
	ld lx,#08
	ld hx,e
	bit 2,b
	call l728a
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l7266
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l7107),a
	rr b
	rr b
	bit 2,b
	call l728a
	ld (l7105),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l70ff),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l728a
	jr z,l7298
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
.l7298
	bit 4,b
	jr z,l72a8
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
.l72a8
	ld a,e
	bit 3,b
	jr z,l72b5
	add (hl)
	inc hl
	cp #90
	jr c,l72b5
	ld a,#8f
.l72b5
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l72f8
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l72c4
	ld a,(hl)
	inc hl
	srl a
	jr c,l72eb
	sub #20
	jr c,l72f5
	jr z,l72e7
	dec a
	ld e,a
.l72d2
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l72e0
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l72e0
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l72e7
	ld e,(hl)
	inc hl
	jr l72d2
.l72eb
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l72f5
	add #20
	ret
.l72f8
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
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
;
.real_init_music
;
	xor a
	ld (l6d14),a
	ld hl,#0009
	add hl,de
	ld de,l6ef0
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l6e03),hl
	ld (l6e68),hl
	ld (l6ecd),hl
	add hl,bc
	ld de,l6d96
	ldi
	ld de,l6de7
	ldi
	ld de,l6e4c
	ldi
	ld de,l6eb1
	ldi
	ld de,l6d82
	ldi
	ldi
	ld (l6d29),hl
	ld a,#01
	ld (l6d1e),a
	ld (l6d24),a
	ld a,#ff
	ld (l7107),a
	ld hl,(l6e03)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l6fcb),hl
	ld (l6f6c),hl
	ld (l6f10),hl
	ret

	push ix
	push iy
	ld hl,l7100
	ld bc,#0500
.l7482
	ld (hl),c
	inc hl
	djnz l7482
	ld a,#3f
	jp l700b

	ld hl,#0002
	add hl,sp
	ld a,(hl)
	rrca
	jp c,l74a0
	rrca
	jp c,l749c
	ld hl,(l6f2a)
	ret
.l749c
	ld hl,(l6f86)
	ret
.l74a0
	ld hl,(l6fe5)
	ret
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,#000c
	add hl,de
	ld (l74ff),hl
	ld hl,#0000
	ld (l6fe5),hl
	ld (l6f86),hl
	ld (l6f2a),hl
	ret
	ld (l751b),ix
	pop af
	pop hl
	pop de
	pop bc
	pop ix
	push ix
	push bc
	push de
	push hl
	push af
	ld a,lx
	rrca
	jp c,l74e7
	rrca
	jp c,l74e0
	ld ix,l6f22
	jp l74eb
.l74e0
	ld ix,l6f7e
	jp l74eb
.l74e7
	ld ix,l6fdd
.l74eb
	ld (ix+#01),c
	ld (ix+#02),b
	ld a,e
	ld (ix+#05),a
	ld a,#0f
	sub h
	ld (ix+#06),a
	ld h,#00
	add hl,hl
.l74ff equ $ + 1
	ld bc,#b5fc
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,d
	or a
	jr nz,l750b
	ld a,(hl)
.l750b
	ld (ix+#27),a
	ld (ix+#1f),a
	inc hl
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
.l751b equ $ + 2
	ld ix,#0000
	ret
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	ld hl,#0000
	rrca
	jp nc,l752d
	ld (l6fe5),hl
.l752d
	rrca
	jp nc,l7534
	ld (l6f86),hl
.l7534
	rrca
	jp z,l753b
	ld (l6f2a),hl
.l753b
	ret
;
; #df37
; ld hl,#0040
; push hl
; call #7418	; init
; pop af
; 
; #796d
; call #6d15	; play
;
;
.init_music		; added by Megachur
;
	ld de,l0040
	jp real_init_music
;
.music_info
	db "Jarlac (1986)(CpcRetroDev.ByteRealms)(Jose A. Martin)",0
	db "StArkos",0

	read "music_end.asm"
