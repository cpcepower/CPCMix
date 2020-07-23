; Music of Reset 10 - EgoTrip Player 3-3 (2019)(Public Domain)(EgoTrip)(StArkos)
; Ripped by Megachur the 13/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "EGOTRIP3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 13
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

.l8000
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#7a,#01,#24,#80,#2d,#80
	db #48,#80,#56,#80,#6a,#80,#7f,#80
	db #94,#80,#a9,#80,#c2,#80,#e6,#80
	db #02,#81,#44,#81,#00,#00,#00,#00
	db #00,#00,#0d,#26,#80,#01,#00,#7e
	db #26,#0c,#7c,#0a,#74,#09,#74,#08
	db #6c,#05,#6c,#04,#64,#03,#5c,#02
	db #5c,#01,#58,#01,#18,#0d,#26,#80
	db #01,#00,#3e,#21,#3e,#24,#3c,#3c
	db #2c,#14,#04,#0d,#26,#80,#01,#00
	db #7e,#29,#0d,#7e,#30,#09,#7e,#2b
	db #06,#76,#25,#04,#6e,#25,#02,#0d
	db #26,#80,#01,#00,#3c,#78,#03,#34
	db #70,#03,#2c,#68,#03,#24,#60,#03
	db #20,#60,#03,#20,#0d,#76,#80,#01
	db #00,#3c,#78,#05,#34,#70,#05,#2c
	db #68,#05,#24,#60,#05,#20,#60,#05
	db #20,#0d,#8b,#80,#01,#00,#3c,#78
	db #07,#34,#70,#07,#2c,#68,#07,#24
	db #60,#07,#20,#60,#07,#20,#0d,#a0
	db #80,#01,#00,#3c,#3c,#38,#30,#2c
	db #28,#a4,#ff,#ff,#a4,#fe,#ff,#a4
	db #ff,#ff,#24,#24,#24,#24,#24,#0d
	db #b1,#80,#01,#00,#3c,#7c,#f4,#38
	db #38,#74,#f4,#34,#30,#30,#2c,#2c
	db #28,#28,#24,#24,#20,#20,#1c,#1c
	db #18,#18,#14,#14,#10,#10,#0c,#0c
	db #08,#08,#04,#0d,#26,#80,#02,#00
	db #3c,#20,#38,#1c,#34,#18,#30,#14
	db #2c,#10,#28,#0c,#24,#08,#20,#04
	db #1c,#18,#14,#10,#0c,#08,#04,#0d
	db #26,#80,#02,#00,#02,#20,#04,#44
	db #02,#48,#03,#48,#0c,#4c,#0e,#4c
	db #0f,#50,#18,#50,#1a,#54,#1b,#54
	db #24,#58,#26,#58,#27,#5c,#30,#5c
	db #32,#60,#33,#60,#3c,#64,#3e,#64
	db #3f,#68,#48,#68,#4a,#6c,#4b,#6c
	db #54,#70,#56,#70,#57,#74,#60,#74
	db #62,#78,#63,#78,#6c,#7c,#6c,#7c
	db #6c,#0d,#04,#81,#02,#00,#02,#20
	db #04,#44,#04,#48,#05,#48,#0c,#4c
	db #10,#4c,#11,#50,#18,#50,#1c,#54
	db #1d,#54,#24,#58,#28,#58,#29,#5c
	db #30,#5c,#34,#60,#35,#60,#3c,#64
	db #40,#64,#41,#68,#48,#68,#4c,#6c
	db #4d,#6c,#54,#70,#58,#70,#59,#74
	db #60,#74,#64,#78,#65,#78,#6c,#7c
	db #6c,#7c,#6c,#0d,#46,#81,#80,#00
	db #00,#00,#ea,#81,#00,#b6,#85,#1f
	db #86,#eb,#81,#00,#55,#83,#74,#85
	db #42,#84,#00,#be,#83,#f3,#81,#e7
	db #82,#00,#be,#83,#78,#84,#e7,#82
	db #00,#be,#83,#f3,#81,#42,#84,#00
	db #be,#83,#78,#84,#42,#84,#00,#55
	db #83,#74,#85,#e7,#82,#00,#5a,#86
	db #9e,#86,#20,#87,#00,#67,#87,#a9
	db #87,#a5,#88,#00,#be,#83,#f3,#81
	db #e7,#82,#00,#be,#83,#78,#84,#e7
	db #82,#00,#be,#83,#f3,#81,#42,#84
	db #00,#be,#83,#78,#84,#42,#84,#01
	db #8c,#81,#00,#42,#60,#00,#42,#80
	db #00,#00,#00,#6a,#e1,#00,#00,#01
	db #02,#82,#60,#02,#2b,#6a,#60,#03
	db #02,#82,#60,#02,#2b,#6a,#60,#01
	db #02,#82,#60,#02,#2b,#6a,#60,#03
	db #02,#82,#60,#02,#2b,#6a,#60,#01
	db #02,#82,#60,#02,#2b,#6a,#60,#03
	db #02,#82,#60,#02,#2b,#6a,#60,#01
	db #02,#82,#60,#02,#2b,#6a,#60,#03
	db #02,#82,#60,#02,#2b,#6a,#60,#01
	db #02,#7e,#60,#02,#27,#6a,#60,#03
	db #02,#7e,#60,#02,#27,#6a,#60,#01
	db #02,#7e,#60,#02,#27,#6a,#60,#03
	db #02,#7e,#60,#02,#27,#6a,#60,#01
	db #02,#7a,#60,#02,#23,#6a,#60,#03
	db #02,#7a,#60,#02,#23,#6a,#60,#01
	db #02,#7a,#60,#02,#23,#6a,#60,#03
	db #02,#7a,#60,#02,#23,#6a,#60,#01
	db #02,#82,#60,#02,#2b,#6a,#60,#03
	db #02,#82,#60,#02,#2b,#6a,#60,#01
	db #02,#82,#60,#02,#2b,#6a,#60,#03
	db #02,#82,#60,#02,#2b,#6a,#60,#01
	db #02,#82,#60,#02,#2b,#6a,#60,#03
	db #02,#82,#60,#02,#2b,#6a,#60,#01
	db #02,#82,#60,#02,#2b,#6a,#60,#03
	db #02,#82,#60,#02,#2b,#6a,#60,#01
	db #02,#7e,#60,#02,#27,#6a,#60,#03
	db #02,#7e,#60,#02,#27,#6a,#60,#01
	db #02,#7e,#60,#02,#27,#6a,#60,#03
	db #02,#7e,#60,#02,#27,#6a,#60,#01
	db #02,#2b,#02,#2b,#02,#2b,#02,#2f
	db #2f,#2f,#2f,#2f,#2f,#2f,#00,#b2
	db #e1,#00,#00,#04,#04,#73,#04,#73
	db #02,#73,#04,#73,#04,#73,#02,#73
	db #04,#73,#04,#73,#02,#73,#04,#73
	db #04,#73,#02,#ae,#60,#05,#04,#6f
	db #04,#6f,#02,#6f,#04,#6f,#04,#6f
	db #02,#aa,#60,#06,#04,#6b,#04,#6b
	db #02,#6b,#04,#6b,#04,#6b,#02,#b2
	db #60,#04,#04,#73,#04,#73,#02,#73
	db #04,#73,#04,#73,#02,#73,#04,#73
	db #04,#73,#02,#73,#04,#73,#04,#73
	db #02,#ae,#60,#05,#04,#6f,#04,#6f
	db #02,#6f,#04,#6f,#04,#6f,#02,#aa
	db #60,#06,#04,#6b,#04,#6b,#02,#6b
	db #04,#6b,#04,#6b,#00,#b8,#e1,#00
	db #00,#07,#02,#77,#02,#73,#02,#79
	db #02,#77,#02,#73,#0a,#b8,#40,#02
	db #77,#02,#73,#02,#79,#02,#77,#02
	db #73,#0a,#79,#02,#77,#02,#6f,#02
	db #79,#02,#77,#02,#6f,#0a,#7d,#02
	db #79,#02,#6b,#02,#7d,#02,#79,#02
	db #6b,#0a,#79,#02,#77,#02,#73,#02
	db #79,#02,#77,#02,#73,#0a,#79,#02
	db #77,#02,#73,#02,#79,#02,#77,#02
	db #73,#0a,#79,#02,#77,#02,#6f,#02
	db #79,#02,#77,#02,#6f,#0a,#7d,#02
	db #79,#02,#6b,#02,#7d,#02,#79,#02
	db #6b,#02,#7d,#02,#79,#00,#82,#e1
	db #00,#00,#07,#02,#61,#5b,#5f,#02
	db #43,#5b,#43,#02,#61,#5b,#5f,#02
	db #43,#5b,#43,#02,#61,#5b,#5f,#02
	db #43,#5b,#43,#02,#61,#5b,#5f,#02
	db #43,#5b,#3f,#02,#61,#57,#5f,#02
	db #3f,#5b,#3f,#02,#61,#57,#5f,#02
	db #3f,#5b,#3b,#02,#61,#53,#5f,#02
	db #3b,#5b,#3b,#02,#61,#53,#5f,#02
	db #3b,#5b,#43,#02,#61,#5b,#5f,#02
	db #43,#5b,#43,#02,#61,#5b,#5f,#02
	db #43,#5b,#43,#02,#61,#5b,#5f,#02
	db #43,#5b,#43,#02,#61,#5b,#5f,#02
	db #43,#5b,#3f,#02,#61,#57,#5f,#02
	db #3f,#61,#3f,#02,#61,#57,#5f,#02
	db #3f,#61,#3b,#02,#61,#53,#5f,#02
	db #3b,#61,#3b,#02,#61,#53,#5f,#02
	db #3b,#61,#b2,#e1,#00,#00,#08,#12
	db #91,#02,#8f,#06,#73,#12,#91,#02
	db #8f,#06,#6f,#12,#91,#02,#8f,#06
	db #6b,#0e,#73,#0e,#8b,#12,#91,#02
	db #8f,#06,#73,#12,#91,#02,#8f,#06
	db #6f,#12,#91,#02,#8f,#06,#6b,#0e
	db #9b,#02,#87,#02,#8b,#02,#8f,#00
	db #6a,#e0,#00,#00,#01,#02,#82,#60
	db #02,#2b,#6a,#60,#03,#02,#82,#60
	db #02,#2b,#6a,#60,#01,#02,#82,#60
	db #02,#2b,#6a,#60,#03,#02,#82,#60
	db #02,#2b,#6a,#60,#01,#02,#82,#60
	db #02,#2b,#6a,#60,#03,#02,#82,#60
	db #02,#2b,#6a,#60,#01,#02,#82,#60
	db #02,#2b,#6a,#60,#03,#02,#82,#60
	db #02,#2b,#6a,#60,#01,#02,#7e,#60
	db #02,#27,#6a,#60,#03,#02,#7e,#60
	db #02,#27,#6a,#60,#01,#02,#7e,#60
	db #02,#27,#6a,#60,#03,#02,#7e,#60
	db #02,#27,#6a,#60,#01,#02,#7a,#60
	db #02,#23,#6a,#60,#03,#02,#7a,#60
	db #02,#23,#6a,#60,#01,#02,#7a,#60
	db #02,#23,#6a,#60,#03,#02,#7a,#60
	db #02,#23,#6a,#60,#01,#02,#82,#60
	db #02,#2b,#6a,#60,#03,#02,#82,#60
	db #02,#2b,#6a,#60,#01,#02,#82,#60
	db #02,#2b,#6a,#60,#03,#02,#82,#60
	db #02,#2b,#6a,#60,#01,#02,#82,#60
	db #02,#2b,#6a,#60,#03,#02,#82,#60
	db #02,#2b,#6a,#60,#01,#02,#82,#60
	db #02,#2b,#6a,#60,#03,#02,#82,#60
	db #02,#2b,#6a,#60,#01,#02,#7e,#60
	db #02,#27,#6a,#60,#03,#02,#7e,#60
	db #02,#27,#6a,#60,#01,#02,#7e,#60
	db #02,#27,#6a,#60,#03,#02,#7e,#60
	db #02,#27,#6a,#60,#01,#02,#7a,#60
	db #02,#23,#6a,#60,#01,#02,#7a,#60
	db #02,#23,#6e,#60,#01,#02,#2f,#02
	db #2f,#02,#2f,#2f,#6a,#e1,#00,#00
	db #09,#08,#52,#60,#0a,#14,#6a,#60
	db #09,#08,#52,#60,#0a,#14,#66,#60
	db #09,#08,#4e,#60,#0b,#14,#4a,#60
	db #09,#1e,#2b,#08,#52,#60,#0a,#14
	db #6a,#60,#09,#08,#52,#60,#0a,#14
	db #66,#60,#09,#08,#4e,#60,#0b,#14
	db #4a,#60,#09,#0e,#82,#60,#03,#02
	db #43,#02,#43,#02,#43,#43,#b8,#e1
	db #00,#00,#07,#02,#77,#02,#73,#02
	db #79,#02,#77,#02,#73,#0a,#b8,#40
	db #02,#77,#02,#73,#02,#79,#02,#73
	db #0e,#b8,#40,#02,#77,#02,#73,#02
	db #79,#02,#77,#02,#73,#0a,#b8,#40
	db #02,#77,#02,#73,#02,#79,#02,#73
	db #06,#57,#06,#b8,#40,#02,#77,#02
	db #73,#02,#79,#02,#77,#02,#73,#0a
	db #b8,#40,#02,#77,#02,#73,#02,#79
	db #02,#73,#0e,#b8,#40,#02,#77,#02
	db #73,#02,#79,#02,#77,#02,#73,#0a
	db #b8,#40,#02,#77,#02,#73,#02,#79
	db #02,#73,#06,#96,#60,#09,#00,#6a
	db #e1,#00,#00,#09,#08,#52,#60,#0a
	db #14,#6a,#60,#09,#0e,#2b,#0e,#6a
	db #40,#08,#52,#60,#0a,#14,#6a,#60
	db #09,#0e,#2b,#06,#27,#06,#6a,#40
	db #08,#52,#60,#0a,#14,#6a,#60,#09
	db #0e,#2b,#0e,#6a,#40,#08,#52,#60
	db #0a,#14,#6a,#60,#09,#0e,#2b,#06
	db #3f,#00,#ca,#e0,#00,#00,#09,#06
	db #8b,#06,#87,#06,#87,#06,#8b,#06
	db #8b,#06,#8f,#06,#8f,#06,#8b,#06
	db #8b,#06,#87,#06,#87,#06,#8b,#06
	db #8b,#06,#91,#06,#8f,#06,#73,#06
	db #73,#06,#6f,#06,#6f,#06,#73,#06
	db #73,#06,#77,#06,#77,#06,#73,#06
	db #73,#06,#6f,#06,#6f,#06,#73,#06
	db #73,#06,#79,#06,#77,#00,#6a,#e0
	db #00,#00,#01,#06,#6a,#60,#03,#06
	db #6a,#60,#01,#06,#6a,#60,#03,#06
	db #6a,#60,#01,#06,#6a,#60,#03,#06
	db #6a,#60,#01,#06,#6a,#60,#03,#06
	db #6a,#60,#01,#06,#6a,#60,#03,#06
	db #6a,#60,#01,#06,#6a,#60,#03,#06
	db #6a,#60,#01,#06,#6a,#60,#03,#06
	db #6a,#60,#01,#06,#6a,#60,#03,#06
	db #6a,#60,#01,#06,#6a,#60,#03,#06
	db #6a,#60,#01,#06,#6a,#60,#03,#06
	db #6a,#60,#01,#06,#6a,#60,#03,#06
	db #6a,#60,#01,#06,#6a,#60,#03,#06
	db #6a,#60,#01,#06,#6a,#60,#03,#06
	db #6a,#60,#01,#06,#6a,#60,#03,#06
	db #6a,#60,#01,#06,#6a,#60,#03,#06
	db #6a,#60,#01,#06,#6a,#60,#03,#00
	db #42,#80,#00,#00,#02,#ca,#60,#09
	db #06,#8b,#06,#87,#06,#87,#06,#8b
	db #06,#8b,#06,#8f,#06,#8f,#06,#8b
	db #06,#8b,#06,#87,#06,#87,#06,#8b
	db #06,#8b,#06,#91,#06,#8f,#06,#73
	db #06,#73,#06,#6f,#06,#6f,#06,#73
	db #06,#73,#06,#77,#06,#77,#06,#73
	db #06,#73,#06,#6f,#06,#6f,#06,#73
	db #06,#73,#06,#79,#06,#77,#00,#9a
	db #e0,#00,#00,#09,#06,#5b,#06,#57
	db #06,#57,#06,#5b,#06,#5b,#06,#5f
	db #06,#5f,#06,#5b,#06,#5b,#06,#57
	db #06,#57,#06,#5b,#06,#5b,#06,#61
	db #06,#5f,#06,#43,#06,#43,#06,#3f
	db #06,#3f,#06,#43,#06,#43,#06,#47
	db #06,#47,#06,#43,#06,#43,#06,#3f
	db #06,#3f,#06,#43,#06,#52,#60,#0a
	db #00,#6a,#e0,#00,#00,#01,#02,#6a
	db #60,#02,#13,#6a,#60,#03,#02,#6a
	db #60,#02,#13,#6a,#60,#01,#02,#6a
	db #60,#02,#13,#6a,#60,#03,#02,#6a
	db #60,#02,#13,#6a,#60,#01,#02,#6a
	db #60,#02,#13,#6a,#60,#03,#02,#6a
	db #60,#02,#13,#6a,#60,#01,#02,#6a
	db #60,#02,#13,#6a,#60,#03,#02,#6a
	db #60,#02,#13,#6a,#60,#01,#02,#6a
	db #60,#02,#13,#6a,#60,#03,#02,#6a
	db #60,#02,#13,#6a,#60,#01,#02,#6a
	db #60,#02,#13,#6a,#60,#03,#02,#6a
	db #60,#02,#13,#6a,#60,#01,#02,#6a
	db #60,#02,#13,#6a,#60,#03,#02,#6a
	db #60,#02,#13,#6a,#60,#01,#02,#6a
	db #60,#02,#13,#6a,#60,#03,#02,#6a
	db #60,#02,#13,#6a,#60,#01,#02,#6a
	db #60,#02,#13,#6a,#60,#03,#02,#6a
	db #60,#02,#13,#6a,#60,#01,#02,#6a
	db #60,#02,#13,#6a,#60,#03,#02,#6a
	db #60,#02,#13,#6a,#60,#01,#02,#6a
	db #60,#02,#13,#6a,#60,#03,#02,#6a
	db #60,#02,#13,#6a,#60,#01,#02,#6a
	db #60,#02,#13,#6a,#60,#03,#02,#6a
	db #60,#02,#13,#6a,#60,#01,#02,#6a
	db #60,#02,#13,#6a,#60,#03,#02,#6a
	db #60,#02,#13,#6a,#60,#01,#02,#6a
	db #60,#02,#13,#6a,#60,#03,#02,#6a
	db #60,#02,#13,#6a,#60,#01,#02,#6a
	db #60,#02,#13,#6a,#60,#03,#02,#6a
	db #60,#02,#02,#2b,#02,#2b,#02,#6a
	db #60,#03,#02,#2b,#2b,#42,#80,#00
	db #00,#02,#9a,#60,#09,#06,#5b,#06
	db #57,#06,#57,#06,#5b,#06,#5b,#06
	db #5f,#06,#5f,#06,#5b,#06,#5b,#06
	db #57,#06,#57,#06,#5b,#06,#5b,#06
	db #61,#06,#5f,#06,#43,#06,#43,#06
	db #3f,#06,#3f,#06,#43,#06,#43,#06
	db #47,#06,#47,#06,#43,#06,#43,#06
	db #3f,#06,#3f,#06,#43,#02,#52,#60
	db #0a,#00,#00,#00,#00,#00,#00,#00
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
	db "Reset 10 - EgoTrip Player 3-3 (2019)(Public Domain)(EgoTrip)",0
	db "StArkos",0

	read "music_end.asm"
