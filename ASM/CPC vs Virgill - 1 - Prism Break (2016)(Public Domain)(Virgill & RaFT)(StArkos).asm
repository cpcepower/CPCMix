; Music of CPC vs Virgill - 1 - Prism Break (2016)(Public Domain)(Virgill & RaFT)(StArkos)
; Ripped by Megachur the 18/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPCVSVI1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7000

	read "music_header.asm"
;
; f1 Prism Break
;
.l7000
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#ec,#00,#1a,#70,#23,#70
	db #a7,#70,#b1,#70,#c6,#70,#d4,#70
	db #e8,#70,#00,#00,#00,#00,#00,#00
	db #0d,#1c,#70,#02,#00,#7c,#18,#78
	db #0c,#74,#18,#74,#0c,#70,#18,#70
	db #18,#70,#0c,#2c,#6c,#0c,#6c,#18
	db #6c,#18,#68,#0c,#28,#68,#0c,#64
	db #18,#64,#18,#64,#0c,#24,#60,#0c
	db #60,#18,#60,#18,#5c,#0c,#1c,#5c
	db #0c,#5c,#18,#58,#18,#58,#0c,#18
	db #58,#0c,#58,#18,#58,#18,#54,#0c
	db #14,#54,#0c,#54,#18,#54,#18,#54
	db #0c,#14,#50,#0c,#50,#18,#50,#18
	db #50,#0c,#10,#50,#0c,#50,#18,#50
	db #18,#50,#0c,#10,#50,#0c,#50,#18
	db #50,#18,#4c,#0c,#0c,#4c,#0c,#4c
	db #18,#4c,#18,#4c,#0c,#0c,#4c,#0c
	db #4c,#18,#4c,#18,#4c,#0c,#08,#48
	db #0c,#48,#18,#48,#18,#48,#0c,#08
	db #48,#0c,#48,#18,#0d,#1c,#70,#01
	db #00,#a1,#2a,#3c,#ff,#ff,#0d,#a9
	db #70,#10,#00,#38,#34,#34,#30,#2c
	db #2c,#2c,#28,#28,#24,#20,#1c,#18
	db #14,#0c,#04,#0d,#1c,#70,#01,#00
	db #7e,#26,#0c,#78,#0a,#6c,#09,#60
	db #08,#0d,#1c,#70,#01,#00,#3c,#38
	db #34,#30,#2c,#28,#24,#20,#1c,#18
	db #14,#10,#0c,#08,#04,#0d,#1c,#70
	db #01,#00,#3c,#3e,#02,#3e,#01,#7c
	db #fc,#7c,#fb,#78,#f9,#0d,#1c,#70
	db #40,#00,#00,#00,#7f,#71,#00,#bc
	db #71,#19,#73,#b8,#72,#00,#1d,#72
	db #7f,#73,#1e,#73,#00,#bc,#71,#8e
	db #71,#80,#71,#00,#1d,#72,#8c,#72
	db #7e,#72,#00,#bc,#71,#8e,#71,#80
	db #71,#00,#1d,#72,#8c,#72,#7e,#72
	db #00,#c3,#73,#98,#73,#8a,#73,#00
	db #6d,#74,#32,#74,#24,#74,#00,#bc
	db #71,#94,#77,#80,#71,#00,#1d,#72
	db #36,#78,#7e,#72,#00,#bc,#71,#94
	db #77,#80,#71,#00,#1d,#72,#36,#78
	db #7e,#72,#00,#c3,#73,#d1,#78,#8a
	db #73,#00,#6d,#74,#72,#79,#24,#74
	db #00,#7d,#75,#dc,#74,#ce,#74,#00
	db #8a,#76,#ea,#75,#dc,#75,#00,#f6
	db #76,#5a,#77,#eb,#76,#00,#f1,#76
	db #19,#73,#29,#77,#01,#fe,#70,#00
	db #96,#e3,#00,#00,#01,#16,#4d,#16
	db #57,#0a,#4d,#02,#49,#00,#66,#e5
	db #00,#00,#02,#04,#66,#6f,#03,#18
	db #64,#61,#04,#66,#73,#03,#0c,#6c
	db #65,#02,#04,#6c,#6f,#03,#08,#6a
	db #65,#02,#04,#6a,#6f,#03,#18,#64
	db #61,#04,#6a,#73,#03,#16,#42,#00
	db #58,#65,#02,#00,#96,#e3,#00,#00
	db #05,#02,#9c,#40,#96,#4b,#a4,#43
	db #9c,#4b,#ae,#43,#a4,#4b,#5d,#6f
	db #a4,#4d,#5d,#6f,#a4,#4f,#5d,#6f
	db #a4,#51,#5d,#6f,#a4,#53,#5d,#6f
	db #a4,#55,#5d,#6f,#a4,#40,#5d,#6f
	db #a4,#40,#5d,#6f,#a4,#40,#96,#43
	db #02,#9a,#40,#96,#4b,#a0,#43,#9a
	db #4b,#ae,#43,#a0,#4b,#5b,#6f,#a0
	db #4d,#5b,#6f,#a0,#4f,#5b,#6f,#a0
	db #51,#5b,#6f,#a0,#53,#5b,#6f,#a0
	db #55,#5b,#6f,#a0,#40,#5b,#6f,#a0
	db #40,#5b,#6f,#a0,#40,#96,#e3,#00
	db #00,#05,#02,#a0,#40,#96,#4b,#a6
	db #43,#a0,#4b,#ae,#43,#a6,#4b,#61
	db #6f,#a6,#4d,#61,#6f,#a6,#4f,#61
	db #6f,#a6,#51,#61,#6f,#a6,#53,#61
	db #6f,#a6,#55,#61,#6f,#a6,#40,#61
	db #6f,#a6,#40,#61,#6f,#a6,#40,#9a
	db #43,#02,#9e,#40,#96,#4b,#a4,#43
	db #9e,#4b,#ae,#43,#a4,#4b,#5f,#6f
	db #a4,#4d,#5f,#6f,#a4,#4f,#5f,#6f
	db #a4,#51,#5f,#6f,#a4,#53,#5f,#6f
	db #a4,#55,#5f,#6f,#a4,#40,#5f,#6f
	db #a4,#40,#5f,#6f,#a4,#40,#8e,#e0
	db #00,#00,#01,#16,#3f,#16,#4f,#0a
	db #3f,#02,#4d,#00,#70,#e5,#00,#00
	db #02,#04,#70,#6f,#03,#18,#64,#61
	db #04,#70,#73,#03,#0c,#6a,#65,#02
	db #04,#6a,#6f,#03,#08,#66,#65,#02
	db #04,#66,#6f,#03,#18,#64,#61,#04
	db #66,#73,#03,#18,#4e,#65,#02,#00
	db #42,#80,#00,#00,#96,#63,#05,#02
	db #9c,#40,#96,#4b,#a4,#43,#9c,#4b
	db #ae,#43,#a4,#4b,#5d,#6f,#a4,#4d
	db #5d,#6f,#a4,#4f,#5d,#6f,#a4,#51
	db #5d,#6f,#a4,#53,#5d,#6f,#a4,#55
	db #5d,#6f,#a4,#40,#5d,#6f,#a4,#40
	db #5d,#6f,#a4,#40,#96,#43,#02,#9a
	db #40,#96,#4b,#a0,#43,#9a,#4b,#ae
	db #43,#a0,#4b,#5b,#6f,#a0,#4d,#5b
	db #6f,#a0,#4f,#5b,#6f,#a0,#51,#5b
	db #6f,#a0,#53,#5b,#6f,#a0,#55,#5b
	db #6f,#a0,#40,#5b,#6f,#a0,#40,#5b
	db #6f,#42,#80,#00,#00,#00,#42,#80
	db #00,#00,#96,#63,#05,#02,#a0,#40
	db #96,#4b,#a6,#43,#a0,#4b,#ae,#43
	db #a6,#4b,#61,#6f,#a6,#4d,#61,#6f
	db #a6,#4f,#61,#6f,#a6,#51,#61,#6f
	db #a6,#53,#61,#6f,#a6,#55,#61,#6f
	db #a6,#40,#61,#6f,#a6,#40,#61,#6f
	db #a6,#40,#9a,#43,#02,#9e,#40,#96
	db #4b,#a4,#43,#9e,#4b,#ae,#43,#a4
	db #4b,#5f,#6f,#a4,#4d,#5f,#6f,#a4
	db #4f,#5f,#6f,#a4,#51,#5f,#6f,#a4
	db #53,#5f,#6f,#a4,#55,#5f,#6f,#a4
	db #40,#5f,#6f,#a4,#40,#5f,#6f,#42
	db #80,#00,#00,#3e,#3c,#4e,#60,#02
	db #42,#00,#9a,#e3,#00,#00,#01,#16
	db #4d,#16,#5b,#0a,#4d,#02,#5d,#00
	db #74,#e5,#00,#00,#02,#04,#74,#6f
	db #03,#18,#64,#61,#04,#74,#73,#03
	db #0c,#62,#65,#02,#04,#62,#6f,#03
	db #08,#66,#65,#02,#04,#66,#6f,#03
	db #18,#64,#65,#04,#66,#73,#03,#18
	db #42,#00,#00,#92,#e3,#00,#00,#05
	db #02,#9a,#40,#92,#4b,#a4,#43,#9a
	db #4b,#aa,#43,#a4,#4b,#5b,#6b,#a4
	db #4d,#5b,#6b,#a4,#4f,#5b,#6b,#a4
	db #51,#5b,#6b,#a4,#53,#5b,#6b,#a4
	db #55,#5b,#6b,#a4,#40,#5b,#6b,#a4
	db #40,#5b,#6b,#a4,#40,#96,#43,#02
	db #9c,#40,#96,#4b,#a4,#43,#9c,#4b
	db #aa,#43,#a4,#4b,#5d,#6b,#a4,#4d
	db #5d,#6b,#a4,#4f,#5d,#6b,#a4,#51
	db #5d,#6b,#a4,#53,#5d,#6b,#a4,#55
	db #5d,#6b,#a4,#40,#5d,#6b,#a4,#40
	db #5d,#6b,#a4,#40,#96,#e0,#00,#00
	db #01,#16,#49,#16,#57,#0a,#49,#02
	db #5b,#00,#70,#e5,#00,#00,#02,#04
	db #70,#6f,#03,#18,#64,#61,#04,#70
	db #73,#03,#0c,#6a,#65,#02,#04,#6a
	db #6f,#03,#08,#7a,#65,#02,#04,#7a
	db #6f,#03,#18,#64,#61,#04,#7a,#73
	db #03,#04,#42,#00,#42,#00,#42,#00
	db #02,#aa,#61,#06,#04,#42,#00,#6b
	db #42,#00,#6b,#42,#00,#96,#e3,#00
	db #00,#05,#02,#9a,#40,#96,#4b,#a4
	db #43,#9a,#4b,#ae,#43,#a4,#4b,#5b
	db #6f,#a4,#4d,#5b,#6f,#a4,#4f,#5b
	db #6f,#a4,#51,#5b,#6f,#a4,#53,#5b
	db #6f,#a4,#55,#5b,#6f,#a4,#40,#5b
	db #6f,#a4,#40,#5b,#6f,#a4,#40,#92
	db #43,#02,#a0,#40,#92,#4b,#aa,#43
	db #a0,#4b,#b2,#43,#aa,#4b,#61,#73
	db #aa,#4d,#61,#73,#aa,#4f,#61,#73
	db #aa,#51,#61,#73,#aa,#53,#61,#73
	db #aa,#55,#61,#73,#aa,#40,#61,#73
	db #aa,#40,#61,#73,#aa,#40,#9a,#e0
	db #00,#00,#01,#16,#4d,#16,#5b,#0a
	db #61,#02,#5d,#00,#74,#e5,#00,#00
	db #02,#02,#74,#40,#42,#60,#00,#74
	db #60,#02,#42,#60,#00,#66,#61,#04
	db #02,#aa,#60,#06,#02,#74,#65,#02
	db #42,#60,#00,#74,#60,#02,#42,#60
	db #00,#64,#60,#04,#02,#64,#41,#02
	db #74,#65,#02,#42,#60,#00,#74,#60
	db #02,#42,#60,#00,#64,#60,#05,#02
	db #62,#60,#02,#02,#62,#40,#42,#60
	db #00,#62,#60,#02,#42,#60,#00,#62
	db #60,#02,#42,#60,#00,#66,#60,#02
	db #02,#66,#40,#42,#60,#00,#66,#60
	db #02,#42,#60,#00,#66,#61,#04,#02
	db #aa,#60,#06,#02,#66,#65,#02,#42
	db #60,#00,#66,#60,#02,#42,#60,#00
	db #64,#60,#04,#02,#64,#41,#02,#66
	db #65,#02,#42,#60,#00,#66,#60,#02
	db #42,#60,#00,#66,#61,#04,#02,#aa
	db #60,#06,#02,#66,#65,#02,#42,#60
	db #00,#66,#60,#02,#42,#60,#00,#66
	db #60,#02,#42,#60,#00,#92,#e1,#00
	db #00,#05,#02,#9a,#40,#92,#4b,#a4
	db #41,#9a,#4b,#aa,#41,#a4,#4b,#5b
	db #6b,#a4,#4d,#5b,#6b,#a4,#4f,#5b
	db #6b,#a4,#51,#5b,#6b,#a4,#53,#5b
	db #6b,#a4,#55,#5b,#6b,#a4,#40,#5b
	db #6b,#a4,#40,#5b,#6b,#02,#96,#41
	db #02,#9c,#40,#96,#4b,#a4,#41,#9c
	db #4b,#aa,#41,#a4,#4b,#5d,#6b,#a4
	db #4d,#5d,#6b,#a4,#4f,#5d,#6b,#a4
	db #51,#5d,#6b,#a4,#53,#5d,#6b,#a4
	db #55,#5d,#6b,#a4,#40,#5d,#6b,#a4
	db #40,#5d,#6b,#00,#96,#e0,#00,#00
	db #01,#16,#49,#16,#61,#0a,#5d,#02
	db #5b,#00,#70,#e5,#00,#00,#02,#02
	db #70,#40,#42,#60,#00,#70,#60,#02
	db #42,#60,#00,#66,#61,#04,#02,#aa
	db #65,#06,#02,#70,#60,#02,#42,#60
	db #00,#70,#60,#02,#42,#60,#00,#64
	db #60,#04,#02,#64,#41,#02,#70,#65
	db #02,#42,#60,#00,#70,#60,#02,#42
	db #60,#00,#64,#60,#04,#02,#6a,#60
	db #02,#02,#6a,#40,#42,#60,#00,#6a
	db #60,#02,#42,#60,#00,#6a,#60,#02
	db #42,#60,#00,#7a,#60,#02,#02,#7a
	db #40,#42,#60,#00,#7a,#60,#02,#42
	db #60,#00,#66,#61,#04,#02,#aa,#60
	db #06,#02,#78,#65,#02,#42,#60,#00
	db #78,#60,#02,#42,#60,#00,#64,#60
	db #04,#02,#78,#61,#02,#42,#60,#00
	db #78,#60,#02,#42,#60,#00,#78,#60
	db #02,#42,#60,#00,#66,#60,#04,#02
	db #aa,#60,#06,#02,#6b,#02,#78,#60
	db #02,#42,#60,#00,#78,#60,#02,#42
	db #60,#00,#96,#e3,#00,#00,#05,#02
	db #9a,#40,#96,#4b,#a4,#43,#9a,#4b
	db #ae,#43,#a4,#4b,#5b,#6f,#a4,#4d
	db #5b,#6f,#a4,#4f,#5b,#6f,#a4,#51
	db #5b,#6f,#a4,#53,#5b,#6f,#a4,#55
	db #5b,#6f,#a4,#40,#5b,#6f,#a4,#40
	db #5b,#6f,#a4,#40,#92,#43,#02,#a0
	db #40,#92,#4b,#aa,#43,#a0,#4b,#b2
	db #43,#aa,#4b,#61,#73,#aa,#4d,#61
	db #73,#aa,#4f,#61,#73,#aa,#51,#61
	db #73,#aa,#53,#61,#73,#aa,#55,#61
	db #73,#aa,#40,#61,#73,#aa,#40,#61
	db #73,#aa,#40,#8c,#e0,#00,#00,#01
	db #00,#42,#80,#00,#00,#00,#8c,#e3
	db #00,#00,#05,#02,#92,#40,#8c,#4b
	db #9a,#43,#92,#4b,#a4,#43,#9a,#4b
	db #53,#65,#9a,#4d,#53,#65,#9a,#4f
	db #53,#65,#9a,#51,#53,#65,#9a,#53
	db #53,#65,#9a,#55,#53,#65,#9a,#40
	db #53,#65,#9a,#40,#53,#65,#9a,#40
	db #00,#8c,#e7,#00,#00,#05,#02,#92
	db #40,#8c,#4d,#9a,#47,#92,#4d,#a4
	db #47,#9a,#4d,#53,#65,#9a,#4f,#53
	db #65,#9a,#51,#53,#65,#9a,#53,#53
	db #65,#9a,#55,#53,#65,#9a,#40,#53
	db #65,#9a,#57,#53,#65,#9a,#40,#53
	db #65,#00,#5c,#e5,#00,#00,#02,#02
	db #42,#60,#00,#3a,#8c,#60,#05,#02
	db #92,#40,#8c,#4b,#9a,#45,#92,#4b
	db #a4,#45,#9a,#4b,#53,#65,#9a,#4d
	db #53,#65,#9a,#4f,#53,#65,#9a,#51
	db #53,#65,#9a,#53,#53,#65,#9a,#55
	db #53,#65,#9a,#40,#53,#65,#9a,#40
	db #53,#65,#9a,#40,#66,#e5,#00,#00
	db #02,#02,#66,#40,#42,#60,#00,#66
	db #60,#02,#42,#60,#00,#66,#61,#04
	db #02,#aa,#60,#06,#02,#66,#65,#02
	db #42,#60,#00,#66,#60,#02,#42,#60
	db #00,#64,#60,#04,#02,#64,#41,#02
	db #66,#65,#02,#42,#60,#00,#66,#60
	db #02,#42,#60,#00,#64,#60,#04,#02
	db #6c,#60,#02,#02,#6c,#40,#42,#60
	db #00,#6c,#60,#02,#42,#60,#00,#6c
	db #60,#02,#42,#60,#00,#6a,#60,#02
	db #42,#00,#6a,#40,#42,#60,#00,#6a
	db #60,#02,#42,#60,#00,#66,#61,#04
	db #02,#aa,#60,#06,#02,#6a,#65,#02
	db #42,#60,#00,#6a,#60,#02,#42,#60
	db #00,#64,#60,#04,#02,#64,#41,#02
	db #6a,#65,#02,#42,#60,#00,#6a,#60
	db #02,#42,#60,#00,#66,#61,#04,#02
	db #aa,#60,#06,#02,#6a,#65,#02,#42
	db #60,#00,#6a,#60,#02,#42,#60,#00
	db #58,#60,#02,#42,#60,#00,#70,#e5
	db #00,#00,#02,#02,#70,#40,#42,#60
	db #00,#70,#60,#02,#42,#60,#00,#66
	db #61,#04,#02,#aa,#65,#06,#02,#70
	db #60,#02,#42,#60,#00,#70,#60,#02
	db #42,#60,#00,#64,#60,#04,#02,#64
	db #41,#02,#70,#65,#02,#42,#60,#00
	db #70,#60,#02,#42,#60,#00,#64,#60
	db #04,#02,#6a,#60,#02,#02,#6a,#40
	db #42,#60,#00,#6a,#60,#02,#42,#60
	db #00,#6a,#60,#02,#42,#60,#00,#66
	db #60,#02,#02,#66,#40,#42,#60,#00
	db #66,#60,#02,#42,#60,#00,#66,#61
	db #04,#02,#aa,#60,#06,#02,#66,#65
	db #02,#42,#60,#00,#66,#60,#02,#42
	db #60,#00,#64,#60,#04,#02,#64,#41
	db #02,#66,#65,#02,#42,#60,#00,#66
	db #60,#02,#42,#60,#00,#66,#61,#04
	db #02,#aa,#60,#06,#02,#6b,#02,#66
	db #65,#02,#42,#60,#00,#4e,#60,#02
	db #00,#74,#e5,#00,#00,#02,#02,#74
	db #40,#42,#60,#00,#74,#60,#02,#42
	db #60,#00,#66,#61,#04,#02,#aa,#60
	db #06,#02,#74,#65,#02,#42,#60,#00
	db #74,#60,#02,#42,#60,#00,#64,#60
	db #04,#02,#64,#41,#02,#74,#65,#02
	db #42,#60,#00,#74,#60,#02,#42,#60
	db #00,#64,#60,#04,#02,#62,#60,#02
	db #02,#62,#40,#42,#60,#00,#62,#60
	db #02,#42,#60,#00,#62,#60,#02,#42
	db #60,#00,#66,#60,#02,#02,#66,#40
	db #42,#60,#00,#66,#60,#02,#42,#60
	db #00,#66,#61,#04,#02,#aa,#60,#06
	db #02,#66,#65,#02,#42,#60,#00,#66
	db #60,#02,#42,#60,#00,#64,#60,#04
	db #02,#64,#41,#02,#66,#65,#02,#42
	db #60,#00,#66,#60,#02,#42,#60,#00
	db #66,#61,#04,#02,#aa,#60,#06,#02
	db #66,#65,#02,#42,#60,#00,#66,#60
	db #02,#42,#60,#00,#66,#60,#02,#42
	db #60,#00,#70,#e5,#00,#00,#02,#02
	db #70,#40,#42,#60,#00,#70,#60,#02
	db #42,#60,#00,#66,#61,#04,#02,#aa
	db #65,#06,#02,#70,#60,#02,#42,#60
	db #00,#70,#60,#02,#42,#60,#00,#64
	db #60,#04,#02,#64,#41,#02,#70,#65
	db #02,#42,#60,#00,#70,#60,#02,#42
	db #60,#00,#64,#60,#04,#02,#6a,#60
	db #02,#02,#6a,#40,#42,#60,#00,#6a
	db #60,#02,#42,#60,#00,#6a,#60,#02
	db #42,#60,#00,#7a,#60,#02,#02,#7a
	db #40,#42,#60,#00,#7a,#60,#02,#42
	db #60,#00,#66,#61,#04,#02,#aa,#60
	db #06,#02,#7a,#65,#02,#42,#60,#00
	db #7a,#60,#02,#42,#60,#00,#64,#60
	db #04,#02,#64,#41,#02,#78,#65,#02
	db #42,#60,#00,#78,#60,#02,#42,#60
	db #00,#66,#61,#04,#02,#aa,#60,#06
	db #02,#6b,#02,#78,#65,#02,#42,#60
	db #00,#78,#60,#02,#00,#00,#00,#00
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
; #02b4
; ld de,#7000
; call #10b7
;
.init_music		; added by Megachur
;
	ld de,l7000
	jp real_init_music
;
.music_info
	db "CPC vs Virgill - 1 - Prism Break (2016)(Public Domain)(Virgill & RaFT)",0
	db "StArkos",0

	read "music_end.asm"
