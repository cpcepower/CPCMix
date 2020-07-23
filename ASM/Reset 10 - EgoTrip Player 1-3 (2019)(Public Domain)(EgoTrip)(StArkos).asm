; Music of Reset 10 - EgoTrip Player 1-3 (2019)(Public Domain)(EgoTrip)(StArkos)
; Ripped by Megachur the 13/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "EGOTRIP1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 13
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

.l8000
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#05,#ca,#01,#26,#80,#2f,#80
	db #48,#80,#98,#80,#ad,#80,#c2,#80
	db #d7,#80,#f2,#80,#07,#81,#27,#81
	db #30,#81,#80,#81,#cd,#81,#00,#00
	db #00,#00,#00,#00,#0d,#28,#80,#01
	db #00,#38,#34,#30,#2c,#28,#24,#a4
	db #ff,#ff,#a4,#fe,#ff,#a4,#ff,#ff
	db #24,#24,#24,#24,#24,#0d,#37,#80
	db #02,#00,#24,#26,#21,#26,#23,#26
	db #24,#26,#25,#26,#26,#a6,#27,#ff
	db #ff,#a6,#28,#fe,#ff,#a6,#29,#ff
	db #ff,#26,#2a,#26,#2b,#26,#2c,#26
	db #2d,#26,#2e,#26,#2f,#26,#30,#26
	db #31,#26,#32,#26,#33,#2a,#34,#2a
	db #35,#2e,#36,#2e,#37,#72,#38,#0c
	db #72,#39,#18,#76,#3a,#24,#76,#3b
	db #30,#7a,#3c,#3c,#7a,#3d,#48,#7e
	db #3e,#54,#7e,#3f,#60,#0d,#28,#80
	db #01,#00,#3c,#78,#03,#34,#70,#03
	db #2c,#68,#03,#24,#60,#03,#20,#60
	db #03,#20,#0d,#a4,#80,#01,#00,#3c
	db #78,#04,#34,#70,#04,#2c,#68,#04
	db #24,#60,#04,#20,#60,#04,#20,#0d
	db #b9,#80,#01,#00,#3c,#78,#05,#34
	db #70,#05,#2c,#68,#05,#24,#60,#05
	db #20,#60,#05,#20,#0d,#ce,#80,#01
	db #00,#7e,#26,#0c,#7c,#0a,#74,#09
	db #74,#08,#6c,#05,#6c,#04,#64,#03
	db #5c,#02,#5c,#01,#58,#01,#18,#0d
	db #28,#80,#01,#00,#3e,#01,#36,#01
	db #2e,#01,#26,#01,#1e,#01,#16,#01
	db #0e,#01,#06,#01,#0d,#28,#80,#01
	db #00,#7e,#26,#0c,#7e,#28,#0a,#76
	db #2b,#09,#76,#2f,#08,#6e,#2b,#05
	db #6e,#25,#04,#64,#03,#5c,#02,#5c
	db #01,#58,#01,#18,#0d,#28,#80,#02
	db #fe,#89,#18,#01,#00,#0d,#29,#81
	db #01,#00,#24,#26,#21,#26,#23,#26
	db #24,#26,#25,#26,#26,#a6,#27,#ff
	db #ff,#a6,#28,#fe,#ff,#a6,#29,#ff
	db #ff,#26,#2a,#26,#2b,#26,#2c,#26
	db #2d,#26,#2e,#26,#2f,#26,#30,#26
	db #31,#26,#32,#26,#33,#2a,#34,#2a
	db #35,#2e,#36,#2e,#37,#72,#38,#0c
	db #72,#39,#18,#76,#3a,#24,#76,#3b
	db #30,#7a,#3c,#3c,#7a,#3d,#48,#7e
	db #3e,#54,#7e,#3f,#60,#0d,#28,#80
	db #01,#00,#bc,#e8,#ff,#bc,#e9,#ff
	db #bc,#ea,#ff,#bc,#eb,#ff,#bc,#ec
	db #ff,#bc,#ed,#ff,#bc,#ee,#ff,#bc
	db #ef,#ff,#bc,#f0,#ff,#bc,#f1,#ff
	db #bc,#f2,#ff,#bc,#f3,#ff,#bc,#f4
	db #ff,#bc,#f5,#ff,#bc,#f6,#ff,#bc
	db #f7,#ff,#bc,#f8,#ff,#bc,#f9,#ff
	db #bc,#fa,#ff,#bc,#fb,#ff,#bc,#fc
	db #ff,#bc,#fd,#ff,#bc,#fe,#ff,#bc
	db #ff,#ff,#0d,#28,#80,#02,#fe,#89
	db #18,#12,#00,#0d,#cf,#81,#80,#00
	db #00,#00,#54,#82,#10,#91,#82,#5d
	db #82,#87,#83,#80,#10,#91,#82,#54
	db #83,#87,#83,#70,#10,#32,#87,#02
	db #88,#12,#88,#10,#10,#4a,#84,#2f
	db #8a,#cc,#85,#80,#00,#4a,#84,#4d
	db #87,#cc,#85,#00,#50,#86,#92,#84
	db #91,#87,#10,#50,#86,#92,#84,#91
	db #87,#70,#10,#2d,#88,#36,#88,#40
	db #88,#10,#10,#49,#88,#55,#82,#6e
	db #89,#80,#00,#6c,#88,#92,#84,#c0
	db #89,#10,#6c,#88,#92,#84,#c0,#89
	db #70,#10,#b2,#89,#0e,#8a,#13,#8a
	db #10,#10,#50,#86,#92,#84,#91,#87
	db #80,#10,#50,#86,#92,#84,#91,#87
	db #70,#10,#2d,#88,#36,#88,#40,#88
	db #10,#01,#dc,#81,#00,#42,#60,#00
	db #42,#80,#00,#00,#00,#84,#fd,#00
	db #00,#01,#0e,#84,#5b,#0e,#84,#59
	db #0e,#84,#57,#0e,#84,#55,#0e,#84
	db #53,#0e,#84,#51,#0e,#84,#4f,#0e
	db #84,#4d,#0e,#84,#4b,#0e,#84,#49
	db #0e,#84,#47,#0e,#84,#45,#0e,#84
	db #43,#0e,#84,#41,#06,#84,#60,#02
	db #00,#b4,#e7,#00,#00,#01,#02,#b4
	db #49,#02,#ba,#47,#02,#42,#09,#02
	db #b4,#47,#02,#b4,#49,#02,#ba,#47
	db #02,#42,#09,#02,#b4,#47,#02,#b4
	db #49,#02,#ba,#47,#02,#42,#09,#02
	db #aa,#47,#02,#aa,#49,#02,#b0,#47
	db #02,#42,#09,#02,#b4,#47,#02,#b4
	db #49,#02,#ba,#47,#02,#42,#09,#02
	db #b4,#47,#02,#b4,#49,#02,#ba,#47
	db #02,#42,#09,#02,#b4,#47,#02,#b4
	db #49,#02,#ba,#47,#02,#42,#09,#02
	db #c2,#47,#02,#c2,#49,#02,#be,#47
	db #02,#42,#09,#02,#b4,#47,#02,#b4
	db #49,#02,#ba,#47,#02,#42,#09,#02
	db #b4,#47,#02,#b4,#49,#02,#ba,#47
	db #02,#42,#09,#02,#b4,#47,#02,#b4
	db #49,#02,#ba,#47,#02,#42,#09,#02
	db #aa,#47,#02,#aa,#49,#02,#b0,#47
	db #02,#42,#09,#02,#b4,#47,#02,#b4
	db #49,#02,#ba,#47,#02,#42,#09,#02
	db #b4,#47,#02,#b4,#49,#02,#ba,#47
	db #02,#42,#09,#02,#b4,#47,#02,#b4
	db #49,#02,#ba,#47,#02,#42,#09,#02
	db #c2,#47,#02,#c2,#49,#02,#be,#47
	db #02,#42,#09,#00,#84,#e1,#00,#00
	db #01,#06,#53,#02,#4f,#06,#4b,#0a
	db #45,#10,#42,#00,#0c,#45,#06,#53
	db #02,#4f,#06,#4b,#0a,#45,#06,#84
	db #60,#02,#16,#84,#60,#01,#06,#53
	db #02,#4f,#06,#4b,#0a,#45,#1e,#45
	db #06,#53,#02,#4f,#06,#4b,#00,#b4
	db #e7,#00,#00,#01,#02,#42,#09,#02
	db #ba,#47,#02,#ba,#49,#02,#b4,#47
	db #02,#42,#09,#02,#ba,#47,#02,#ba
	db #49,#02,#b4,#47,#02,#42,#09,#02
	db #ba,#47,#02,#ba,#49,#02,#aa,#47
	db #02,#42,#09,#02,#b0,#47,#02,#b0
	db #49,#02,#b4,#47,#02,#42,#09,#02
	db #ba,#47,#02,#ba,#49,#02,#b4,#47
	db #02,#42,#09,#02,#ba,#47,#02,#ba
	db #49,#02,#b4,#47,#02,#42,#09,#02
	db #ba,#47,#02,#ba,#49,#02,#c2,#47
	db #02,#42,#09,#02,#be,#47,#02,#be
	db #49,#02,#b4,#47,#02,#42,#09,#02
	db #ba,#47,#02,#ba,#49,#02,#b4,#47
	db #02,#42,#09,#02,#ba,#47,#02,#ba
	db #49,#02,#b4,#47,#02,#42,#09,#02
	db #ba,#47,#02,#ba,#49,#02,#aa,#47
	db #02,#42,#09,#02,#b0,#47,#02,#b0
	db #49,#02,#b4,#47,#02,#42,#09,#02
	db #ba,#47,#02,#ba,#49,#02,#b4,#47
	db #02,#42,#09,#02,#ba,#47,#02,#ba
	db #49,#02,#b4,#47,#02,#42,#09,#02
	db #ba,#47,#02,#ba,#49,#02,#c2,#47
	db #02,#42,#09,#02,#be,#47,#02,#be
	db #49,#00,#b4,#e1,#00,#00,#03,#0a
	db #75,#0a,#75,#06,#79,#0a,#79,#0a
	db #79,#06,#ba,#60,#04,#0a,#7b,#0a
	db #7b,#0a,#7b,#0a,#ba,#60,#05,#06
	db #7b,#06,#c2,#60,#03,#0a,#83,#0a
	db #c4,#60,#04,#06,#be,#60,#03,#0a
	db #7f,#0a,#be,#60,#05,#06,#ba,#60
	db #04,#0a,#7b,#0a,#ba,#60,#05,#06
	db #b8,#60,#03,#0a,#79,#0a,#b8,#60
	db #05,#00,#6c,#e1,#00,#00,#06,#6c
	db #6b,#07,#6c,#41,#6c,#49,#6c,#61
	db #08,#6c,#67,#07,#6c,#41,#6c,#49
	db #6c,#61,#06,#6c,#6b,#07,#6c,#41
	db #6c,#49,#6c,#61,#08,#6c,#67,#07
	db #6c,#41,#6c,#49,#6c,#61,#06,#6c
	db #6b,#07,#6c,#41,#6c,#49,#6c,#61
	db #08,#6c,#67,#07,#6c,#41,#6c,#49
	db #6c,#61,#06,#6c,#6b,#07,#6c,#41
	db #6c,#49,#6c,#61,#08,#6c,#67,#07
	db #6c,#41,#6c,#49,#6c,#61,#06,#6c
	db #6b,#07,#6c,#41,#6c,#49,#6c,#61
	db #08,#6c,#67,#07,#6c,#41,#6c,#49
	db #6c,#61,#06,#6c,#6b,#07,#6c,#41
	db #6c,#49,#6c,#61,#08,#6c,#67,#07
	db #6c,#41,#6c,#49,#6c,#61,#06,#6c
	db #6b,#07,#6c,#41,#6c,#49,#6c,#61
	db #08,#6c,#67,#07,#6c,#41,#6c,#49
	db #6c,#61,#06,#6c,#6b,#07,#6c,#41
	db #6c,#49,#6c,#61,#08,#6c,#67,#07
	db #6c,#61,#08,#6c,#69,#07,#6c,#61
	db #06,#6c,#6b,#07,#6c,#41,#6c,#49
	db #6c,#61,#08,#6c,#67,#07,#6c,#41
	db #6c,#49,#6c,#61,#06,#6c,#6b,#07
	db #6c,#41,#6c,#49,#6c,#61,#08,#6c
	db #67,#07,#6c,#41,#6c,#49,#6c,#61
	db #06,#6c,#6b,#07,#6c,#41,#6c,#49
	db #6c,#61,#08,#6c,#67,#07,#6c,#41
	db #6c,#49,#6c,#61,#06,#6c,#6b,#07
	db #6c,#41,#6c,#49,#6c,#61,#08,#6c
	db #67,#07,#6c,#41,#6c,#49,#6c,#61
	db #06,#6c,#6b,#07,#6c,#41,#6c,#49
	db #6c,#61,#08,#6c,#67,#07,#6c,#41
	db #6c,#49,#6c,#61,#06,#6c,#6b,#07
	db #6c,#41,#6c,#49,#6c,#61,#08,#6c
	db #67,#07,#6c,#41,#6c,#49,#6c,#61
	db #06,#6c,#6b,#07,#6c,#41,#6c,#49
	db #6c,#61,#06,#6c,#67,#07,#6c,#41
	db #6c,#49,#6c,#61,#08,#02,#2d,#02
	db #2d,#02,#2d,#00,#84,#e5,#00,#00
	db #01,#02,#2d,#02,#45,#02,#2d,#02
	db #45,#02,#2d,#02,#45,#02,#2d,#02
	db #49,#02,#31,#02,#49,#02,#31,#02
	db #49,#02,#31,#02,#49,#02,#31,#02
	db #4b,#02,#33,#02,#4b,#02,#33,#02
	db #4b,#02,#33,#02,#4b,#02,#33,#02
	db #4b,#02,#33,#02,#4b,#02,#33,#02
	db #4b,#02,#63,#02,#33,#02,#1b,#02
	db #53,#02,#3b,#02,#53,#02,#3b,#02
	db #53,#02,#3b,#02,#53,#02,#3b,#02
	db #4f,#02,#37,#02,#4f,#02,#37,#02
	db #4f,#02,#37,#02,#4f,#02,#37,#02
	db #4b,#02,#33,#02,#4b,#02,#33,#02
	db #4b,#02,#33,#02,#4b,#02,#33,#02
	db #49,#02,#31,#02,#49,#02,#31,#02
	db #49,#02,#31,#02,#49,#02,#61,#00
	db #b4,#e1,#00,#00,#03,#02,#84,#60
	db #01,#02,#45,#02,#b4,#60,#03,#02
	db #84,#60,#01,#02,#45,#02,#b4,#60
	db #03,#02,#84,#60,#01,#02,#b8,#60
	db #03,#02,#88,#60,#01,#02,#49,#02
	db #b8,#60,#03,#02,#88,#60,#01,#02
	db #49,#02,#b8,#60,#03,#02,#88,#60
	db #01,#02,#ba,#60,#04,#02,#8a,#60
	db #01,#02,#4b,#02,#ba,#60,#04,#02
	db #8a,#60,#01,#02,#4b,#02,#ba,#60
	db #04,#02,#8a,#60,#01,#02,#4b,#02
	db #ba,#60,#04,#02,#8a,#60,#01,#02
	db #4b,#02,#ba,#60,#05,#02,#8a,#60
	db #01,#02,#ba,#60,#05,#02,#8a,#60
	db #01,#02,#c2,#60,#03,#02,#92,#60
	db #01,#02,#53,#02,#c2,#60,#03,#02
	db #92,#60,#01,#02,#53,#02,#c4,#60
	db #04,#02,#94,#60,#01,#02,#be,#60
	db #03,#02,#8e,#60,#01,#02,#4f,#02
	db #be,#60,#03,#02,#8e,#60,#01,#02
	db #4f,#02,#be,#60,#05,#02,#8e,#60
	db #01,#02,#ba,#60,#04,#02,#8a,#60
	db #01,#02,#4b,#02,#ba,#60,#04,#02
	db #8a,#60,#01,#02,#4b,#02,#ba,#60
	db #05,#02,#8a,#60,#01,#02,#b8,#60
	db #03,#02,#88,#60,#01,#02,#49,#02
	db #b8,#60,#03,#02,#88,#60,#01,#02
	db #49,#02,#b8,#60,#05,#02,#88,#60
	db #01,#00,#c2,#e7,#00,#00,#01,#02
	db #c2,#49,#02,#b8,#47,#02,#42,#09
	db #02,#ba,#47,#02,#ba,#49,#02,#b0
	db #47,#02,#42,#09,#00,#6c,#e0,#00
	db #00,#06,#0e,#2d,#0e,#2d,#0e,#2d
	db #0e,#2d,#0e,#2d,#0e,#2d,#0e,#2d
	db #0e,#2d,#06,#2d,#06,#2d,#06,#2d
	db #06,#2d,#06,#2d,#06,#2d,#06,#2d
	db #06,#2d,#02,#2d,#02,#2d,#02,#2d
	db #02,#2d,#02,#2d,#02,#2d,#02,#2d
	db #02,#2d,#2d,#2d,#2d,#2d,#2d,#2d
	db #2d,#2d,#2d,#2d,#2d,#2d,#2d,#2d
	db #2d,#b4,#e1,#00,#00,#01,#06,#b4
	db #47,#02,#b8,#41,#06,#b8,#47,#02
	db #ba,#41,#06,#c2,#40,#06,#c2,#47
	db #02,#be,#41,#06,#be,#47,#02,#b8
	db #41,#06,#b4,#40,#16,#b4,#60,#02
	db #02,#42,#00,#12,#c4,#60,#01,#02
	db #be,#40,#02,#ba,#40,#06,#b8,#40
	db #06,#b8,#47,#02,#ba,#41,#06,#ba
	db #47,#02,#be,#41,#06,#c4,#40,#06
	db #c4,#47,#02,#c2,#41,#06,#c2,#47
	db #02,#be,#41,#06,#ba,#40,#06,#ba
	db #47,#02,#be,#41,#06,#be,#47,#02
	db #c2,#41,#06,#b8,#40,#06,#b8,#47
	db #02,#ba,#41,#06,#ba,#47,#02,#be
	db #41,#00,#6c,#e0,#00,#00,#06,#06
	db #2d,#06,#2d,#02,#2d,#02,#2d,#02
	db #2d,#2d,#c2,#e7,#00,#00,#01,#02
	db #42,#09,#02,#b8,#47,#02,#b8,#49
	db #02,#ba,#47,#02,#42,#09,#02,#b0
	db #47,#02,#b0,#49,#00,#b8,#e0,#00
	db #00,#03,#06,#42,#00,#00,#6c,#e1
	db #00,#00,#06,#06,#6c,#60,#02,#00
	db #b8,#e1,#00,#00,#01,#06,#42,#00
	db #00,#84,#e0,#00,#00,#09,#06,#42
	db #00,#06,#5d,#0e,#33,#0e,#3d,#0e
	db #3b,#3e,#45,#0e,#5d,#0e,#33,#0e
	db #3d,#0e,#3b,#2e,#b4,#60,#0a,#0a
	db #e4,#60,#09,#00,#84,#e0,#00,#00
	db #09,#02,#84,#60,#01,#02,#6c,#60
	db #09,#02,#84,#60,#01,#02,#9c,#60
	db #09,#02,#84,#60,#01,#02,#84,#60
	db #09,#02,#84,#60,#01,#02,#72,#60
	db #09,#02,#84,#60,#01,#02,#5a,#60
	db #09,#02,#84,#60,#01,#02,#7c,#60
	db #09,#02,#84,#60,#01,#02,#7c,#60
	db #09,#02,#84,#60,#01,#02,#7a,#60
	db #09,#02,#84,#60,#01,#02,#62,#60
	db #09,#02,#84,#60,#01,#02,#7a,#60
	db #09,#02,#84,#60,#01,#02,#62,#60
	db #09,#02,#84,#60,#01,#02,#7a,#60
	db #09,#02,#84,#60,#01,#02,#62,#60
	db #09,#02,#84,#60,#01,#02,#7a,#60
	db #09,#02,#84,#60,#01,#02,#62,#60
	db #09,#02,#84,#60,#01,#02,#84,#60
	db #09,#02,#84,#60,#01,#02,#6c,#60
	db #09,#02,#84,#60,#01,#02,#9c,#60
	db #09,#02,#84,#60,#01,#02,#84,#60
	db #09,#02,#84,#60,#01,#02,#72,#60
	db #09,#02,#84,#60,#01,#02,#5a,#60
	db #09,#02,#84,#60,#01,#02,#7c,#60
	db #09,#02,#84,#60,#01,#02,#7c,#60
	db #09,#02,#84,#60,#01,#02,#7a,#60
	db #09,#02,#84,#60,#01,#02,#62,#60
	db #09,#02,#84,#60,#01,#02,#7a,#60
	db #09,#02,#84,#60,#01,#02,#62,#60
	db #09,#02,#84,#60,#01,#02,#7a,#60
	db #09,#02,#84,#60,#01,#02,#92,#60
	db #09,#02,#84,#60,#01,#02,#7a,#60
	db #09,#02,#84,#60,#01,#02,#92,#60
	db #09,#02,#84,#60,#01,#00,#6c,#e5
	db #00,#00,#0b,#0a,#2d,#02,#6c,#61
	db #01,#2e,#7a,#65,#0b,#0a,#3b,#02
	db #7a,#61,#01,#2e,#9c,#65,#0b,#0a
	db #5d,#02,#9c,#61,#01,#2e,#aa,#65
	db #0b,#0a,#6b,#02,#aa,#61,#01,#0e
	db #e4,#6d,#0b,#02,#e4,#4b,#02,#e4
	db #49,#02,#e4,#47,#02,#e4,#45,#02
	db #e4,#43,#02,#e4,#41,#02,#e4,#60
	db #0c,#00,#9c,#e0,#00,#00,#02,#0e
	db #b4,#60,#0a,#0a,#b4,#60,#09,#00
	db #cc,#e9,#00,#00,#0b,#42,#00,#08
	db #8d,#42,#00,#8d,#42,#00,#0c,#42
	db #00,#42,#00,#0c,#84,#60,#0a,#45
	db #0c,#cc,#60,#0b,#0a,#8d,#02,#8d
	db #1e,#a5,#04,#a5,#04,#a5,#02,#8d
	db #42,#00,#08,#8d,#42,#00,#8d,#42
	db #00,#0c,#42,#00,#42,#00,#0c,#84
	db #60,#0a,#45,#0c,#cc,#60,#0b,#0a
	db #8d,#02,#8d,#1e,#a5,#02,#a5,#02
	db #a5,#02,#cc,#60,#0c,#00,#42,#80
	db #00,#00,#00,#e4,#ed,#00,#00,#0b
	db #02,#e4,#4b,#02,#e4,#49,#02,#e4
	db #47,#02,#e4,#45,#02,#e4,#43,#02
	db #e4,#41,#02,#e4,#60,#0c,#00,#42
;
; #4000 - player reallocated by Megachur
;
	jp l468c
	jp l400a
	jp l46e1
.l4009
	db #00
;
.play_music
.l400a
;
	call l46fb
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l4009),a
.l401a equ $ + 1
	ld a,#01
	dec a
	jp nz,l41e6
.l4020 equ $ + 1
	ld a,#01
	dec a
	jr nz,l408c
.l4025 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l4033
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l4033
	rra
	jr nc,l403b
	ld de,l40dc
	ldi
.l403b
	rra
	jr nc,l4043
	ld de,l4141
	ldi
.l4043
	rra
	jr nc,l404b
	ld de,l41a6
	ldi
.l404b
	ld de,l40bb
	ldi
	ldi
	ld de,l4120
	ldi
	ldi
	ld de,l4185
	ldi
	ldi
	rra
	jr nc,l4068
	ld de,l408b
	ldi
.l4068
	rra
	jr nc,l4073
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4077),de
.l4073
	ld (l4025),hl
.l4077 equ $ + 1
	ld hl,#0000
	ld (l4095),hl
	ld a,#01
	ld (l4090),a
	ld (l40b6),a
	ld (l411b),a
	ld (l4180),a
.l408b equ $ + 1
	ld a,#01
.l408c
	ld (l4020),a
.l4090 equ $ + 1
	ld a,#01
	dec a
	jr nz,l40b2
.l4095 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l40af
	srl a
	jr nz,l40a3
	ld a,(hl)
	inc hl
.l40a3
	jr nc,l40aa
	ld (l4009),a
	jr l40ad
.l40aa
	ld (l41e5),a
.l40ad
	ld a,#01
.l40af
	ld (l4095),hl
.l40b2
	ld (l4090),a
.l40b6 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4117
.l40bb equ $ + 1
	ld hl,#0000
	call l4538
	ld (l40bb),hl
	jr c,l4117
	ld a,d
	rra
	jr nc,l40ce
	and #0f
	ld (l4268),a
.l40ce
	rl d
	jr nc,l40d6
	ld (l4256),ix
.l40d6
	rl d
	jr nc,l4115
	ld a,e
.l40dc equ $ + 1
	add #00
	ld (l4267),a
	ld hl,#0000
	ld (l4253),hl
	rl d
	jr c,l40f5
.l40eb equ $ + 1
	ld hl,#0000
	ld a,(l4278)
	ld (l4270),a
	jr l4112
.l40f5
	ld l,b
	add hl,hl
.l40f8 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l4278),a
	ld (l4270),a
	ld a,(hl)
	or a
	jr z,l410e
	ld (l4363),a
.l410e
	inc hl
	ld (l40eb),hl
.l4112
	ld (l426a),hl
.l4115
	ld a,#01
.l4117
	ld (l40b6),a
.l411b equ $ + 1
	ld a,#01
	dec a
	jr nz,l417c
.l4120 equ $ + 1
	ld hl,#0000
	call l4538
	ld (l4120),hl
	jr c,l417c
	ld a,d
	rra
	jr nc,l4133
	and #0f
	ld (l4234),a
.l4133
	rl d
	jr nc,l413b
	ld (l4222),ix
.l413b
	rl d
	jr nc,l417a
	ld a,e
.l4141 equ $ + 1
	add #00
	ld (l4233),a
	ld hl,#0000
	ld (l421f),hl
	rl d
	jr c,l415a
.l4150 equ $ + 1
	ld hl,#0000
	ld a,(l4244)
	ld (l423c),a
	jr l4177
.l415a
	ld l,b
	add hl,hl
.l415d equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l4244),a
	ld (l423c),a
	ld a,(hl)
	or a
	jr z,l4173
	ld (l4363),a
.l4173
	inc hl
	ld (l4150),hl
.l4177
	ld (l4236),hl
.l417a
	ld a,#01
.l417c
	ld (l411b),a
.l4180 equ $ + 1
	ld a,#01
	dec a
	jr nz,l41e1
.l4185 equ $ + 1
	ld hl,#0000
	call l4538
	ld (l4185),hl
	jr c,l41e1
	ld a,d
	rra
	jr nc,l4198
	and #0f
	ld (l4203),a
.l4198
	rl d
	jr nc,l41a0
	ld (l41f1),ix
.l41a0
	rl d
	jr nc,l41df
	ld a,e
.l41a6 equ $ + 1
	add #00
	ld (l4202),a
	ld hl,#0000
	ld (l41ee),hl
	rl d
	jr c,l41bf
.l41b5 equ $ + 1
	ld hl,#0000
	ld a,(l4213)
	ld (l420b),a
	jr l41dc
.l41bf
	ld l,b
	add hl,hl
.l41c2 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l4213),a
	ld (l420b),a
	ld a,(hl)
	or a
	jr z,l41d8
	ld (l4363),a
.l41d8
	inc hl
	ld (l41b5),hl
.l41dc
	ld (l4205),hl
.l41df
	ld a,#01
.l41e1
	ld (l4180),a
.l41e5 equ $ + 1
	ld a,#01
.l41e6
	ld (l401a),a
	ld iy,l437a
.l41ee equ $ + 1
	ld hl,#0000
.l41f1 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l41ee),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l4203 equ $ + 2
.l4202 equ $ + 1
	ld de,#0000
.l4205 equ $ + 1
	ld hl,#0000
	call l4385
.l420b equ $ + 1
	ld a,#01
	dec a
	jr nz,l4214
	ld (l4205),hl
.l4213 equ $ + 1
	ld a,#06
.l4214
	ld (l420b),a
	ld a,lx
	ex af,af'
	ld iy,l4378
.l421f equ $ + 1
	ld hl,#0000
.l4222 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l421f),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l4234 equ $ + 2
.l4233 equ $ + 1
	ld de,#0000
.l4236 equ $ + 1
	ld hl,#0000
	call l4385
.l423c equ $ + 1
	ld a,#01
	dec a
	jr nz,l4245
	ld (l4236),hl
.l4244 equ $ + 1
	ld a,#06
.l4245
	ld (l423c),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l4376
.l4253 equ $ + 1
	ld hl,#0000
.l4256 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4253),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l4268 equ $ + 2
.l4267 equ $ + 1
	ld de,#0000
.l426a equ $ + 1
	ld hl,#0000
	call l4385
.l4270 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4279
	ld (l426a),hl
.l4278 equ $ + 1
	ld a,#06
.l4279
	ld (l4270),a
	ex af,af'
	or lx
.l427f
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l4376
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
	call l4361
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
.l435f
	nop
	ret
.l4361
	ld a,(hl)
.l4363 equ $ + 1
	cp #ff
	ret z
	ld (l4363),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l4376
	nop
	nop
.l4378
	nop
	nop
.l437a
	nop
	nop
.l437c
	nop
.l437d
	nop
	nop
	nop
	nop
	nop
.l4382
	nop
	nop
.l4384
	nop
.l4385
	ld b,(hl)
	inc hl
	rr b
	jp c,l43e3
	rr b
	jr c,l43b3
	ld a,b
	and #0f
	jr nz,l439c
	ld (iy+#07),a
	ld lx,#09
	ret
.l439c
	ld lx,#08
	sub d
	jr nc,l43a3
	xor a
.l43a3
	ld (iy+#07),a
	rr b
	call l450c
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l43b3
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l43c3
	ld (l437c),a
	ld lx,#00
.l43c3
	ld a,b
	and #0f
	sub d
	jr nc,l43ca
	xor a
.l43ca
	ld (iy+#07),a
	bit 5,c
	jr nz,l43d4
	inc lx
	ret
.l43d4
	rr b
	bit 6,c
	call l44fe
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l43e3
	rr b
	jr nc,l43f6
	ld a,(l4270)
	ld c,a
	ld a,(l4278)
	cp c
	jr nz,l43f6
	ld a,#fe
	ld (l4363),a
.l43f6
	bit 1,b
	jp nz,l44af
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l4384),a
	bit 0,b
	jr z,l4465
	bit 2,b
	call l44fe
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l4425),a
	ld a,b
	exx
.l4425 equ $ + 1
	jr l4426
.l4426
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
	jr nc,l4445
	inc hl
.l4445
	bit 5,a
	jr z,l4455
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
.l4455
	ld (l4382),hl
	exx
.l4459
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l437c),a
	ld lx,#00
	ret
.l4465
	bit 2,b
	call l44fe
	ld (l4382),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l4479),a
	ld a,b
	exx
.l4479 equ $ + 1
	jr l447a
.l447a
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
	jr z,l44a6
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
.l44a6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l4459
.l44af
	bit 0,b
	jr z,l44ba
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l4385
.l44ba
	ld (iy+#07),#10
	bit 5,b
	jr nz,l44c7
	ld lx,#09
	jr l44da
.l44c7
	ld lx,#08
	ld hx,e
	bit 2,b
	call l44fe
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l44da
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l4384),a
	rr b
	rr b
	bit 2,b
	call l44fe
	ld (l4382),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l437c),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l44fe
	jr z,l450c
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
.l450c
	bit 4,b
	jr z,l451c
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
.l451c
	ld a,e
	bit 3,b
	jr z,l4529
	add (hl)
	inc hl
	cp #90
	jr c,l4529
	ld a,#8f
.l4529
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l456c
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l4538
	ld a,(hl)
	inc hl
	srl a
	jr c,l455f
	sub #20
	jr c,l4569
	jr z,l455b
	dec a
	ld e,a
.l4546
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l4554
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l4554
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l455b
	ld e,(hl)
	inc hl
	jr l4546
.l455f
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l4569
	add #20
	ret
.l456c
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
.l468c
;
	ld hl,#0009
	add hl,de
	ld de,l41e5
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l40f8),hl
	ld (l415d),hl
	ld (l41c2),hl
	add hl,bc
	ld de,l408b
	ldi
	ld de,l40dc
	ldi
	ld de,l4141
	ldi
	ld de,l41a6
	ldi
	ld de,l4077
	ldi
	ldi
	ld (l4025),hl
	ld a,#01
	ld (l401a),a
	ld (l4020),a
	ld a,#ff
	ld (l4384),a
	ld hl,(l40f8)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l426a),hl
	ld (l4236),hl
	ld (l4205),hl
	ret
;
.stop_music
.l46e1
;
	call l46fb
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	ld hl,l437d
	ld bc,#0300
.l46f2
	ld (hl),c
	inc hl
	djnz l46f2
	ld a,#3f
	jp l427f
.l46fb
	ld a,i
	di
	ld a,#f3
	jp po,l4705
	ld a,#fb
.l4705
	ld (l435f),a
	ret
;
.init_music	; added by Megachur
;
	ld de,l8000
	jp real_init_music
;
.music_info
	db "Reset 10 - EgoTrip Player 1-3 (2019)(Public Domain)(EgoTrip)",0
	db "StArkos",0

	read "music_end.asm"
