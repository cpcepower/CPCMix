; Music of The Long Dark Knight Of The Soul - Chubby Chip Chip (2019)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 06/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TLDKSCCC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #c17a

	read "music_header.asm"

	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#7f,#07,#f8,#c1,#01,#c2
	db #1c,#c2,#28,#c2,#45,#c2,#62,#c2
	db #7f,#c2,#9c,#c2,#a6,#c2,#c3,#c2
	db #da,#c2,#fa,#c2,#0e,#c3,#2e,#c3
	db #4b,#c3,#69,#c3,#84,#c3,#9f,#c3
	db #ba,#c3,#d5,#c3,#f0,#c3,#0b,#c4
	db #26,#c4,#41,#c4,#5c,#c4,#79,#c4
	db #96,#c4,#b3,#c4,#d0,#c4,#ed,#c4
	db #0a,#c5,#27,#c5,#44,#c5,#61,#c5
	db #7e,#c5,#9b,#c5,#b8,#c5,#d5,#c5
	db #f2,#c5,#0f,#c6,#2c,#c6,#49,#c6
	db #60,#c6,#66,#c6,#73,#c6,#81,#c6
	db #9c,#c6,#a4,#c6,#27,#c7,#b4,#c7
	db #14,#c8,#6d,#c8,#84,#c8,#9f,#c8
	db #bd,#c8,#d1,#c8,#e8,#c8,#00,#00
	db #00,#00,#00,#00,#0d,#fa,#c1,#01
	db #00,#bc,#01,#00,#fc,#ff,#ff,#03
	db #fc,#01,#00,#07,#bc,#ff,#ff,#fc
	db #01,#00,#03,#fc,#ff,#ff,#07,#0d
	db #fa,#c1,#01,#00,#74,#0c,#3c,#38
	db #34,#30,#2c,#0d,#fa,#c1,#01,#00
	db #fc,#01,#00,#fe,#fc,#ff,#ff,#03
	db #fc,#01,#00,#07,#fc,#ff,#ff,#fe
	db #fc,#01,#00,#03,#fc,#ff,#ff,#07
	db #0d,#fa,#c1,#01,#00,#fc,#01,#00
	db #fe,#fc,#ff,#ff,#02,#fc,#01,#00
	db #05,#fc,#ff,#ff,#fe,#fc,#01,#00
	db #02,#fc,#ff,#ff,#05,#0d,#fa,#c1
	db #01,#00,#fc,#fe,#ff,#fe,#fc,#fe
	db #ff,#02,#fc,#fe,#ff,#05,#fc,#02
	db #00,#fe,#fc,#02,#00,#02,#fc,#02
	db #00,#05,#0d,#fa,#c1,#01,#00,#3a
	db #65,#c3,#01,#36,#60,#fa,#01,#32
	db #60,#a4,#02,#09,#2c,#18,#09,#2c
	db #18,#09,#2c,#18,#09,#2e,#24,#0d
	db #96,#c2,#01,#00,#2a,#05,#09,#2e
	db #24,#0d,#a0,#c2,#01,#00,#3a,#25
	db #76,#27,#03,#72,#29,#07,#34,#74
	db #03,#74,#07,#2a,#05,#74,#03,#74
	db #07,#34,#74,#03,#74,#07,#0d,#fa
	db #c1,#01,#00,#2a,#05,#05,#5c,#05
	db #5c,#09,#2c,#18,#09,#2c,#18,#09
	db #2c,#18,#09,#2e,#24,#0d,#d4,#c2
	db #01,#00,#7a,#25,#fe,#76,#27,#03
	db #72,#29,#07,#74,#fe,#74,#03,#74
	db #07,#2a,#05,#74,#03,#74,#07,#74
	db #fe,#74,#03,#74,#07,#0d,#fa,#c1
	db #01,#00,#3a,#65,#c3,#01,#36,#60
	db #fa,#01,#32,#60,#a4,#02,#09,#2e
	db #24,#0d,#08,#c3,#01,#00,#7a,#25
	db #fe,#76,#27,#02,#72,#29,#05,#74
	db #fe,#74,#02,#74,#05,#2a,#05,#74
	db #02,#74,#05,#74,#fe,#74,#02,#74
	db #05,#0d,#fa,#c1,#01,#00,#3a,#65
	db #d5,#00,#36,#67,#52,#01,#32,#69
	db #aa,#01,#09,#2c,#18,#09,#2c,#18
	db #09,#2c,#18,#09,#2e,#24,#0d,#45
	db #c3,#01,#00,#7a,#25,#fe,#74,#02
	db #70,#05,#74,#fe,#74,#02,#74,#05
	db #2a,#05,#74,#02,#74,#05,#74,#fe
	db #74,#02,#74,#05,#0d,#fa,#c1,#01
	db #00,#bc,#ff,#ff,#f4,#01,#00,#03
	db #ec,#ff,#ff,#07,#a4,#01,#00,#dc
	db #ff,#ff,#03,#d4,#01,#00,#07,#0d
	db #fa,#c1,#01,#00,#bc,#ff,#ff,#f4
	db #01,#00,#03,#ec,#ff,#ff,#07,#a4
	db #01,#00,#dc,#ff,#ff,#03,#d8,#01
	db #00,#07,#0d,#fa,#c1,#01,#00,#bc
	db #ff,#ff,#f4,#01,#00,#03,#ec,#ff
	db #ff,#07,#a4,#01,#00,#e0,#ff,#ff
	db #03,#dc,#01,#00,#07,#0d,#fa,#c1
	db #01,#00,#bc,#ff,#ff,#f4,#01,#00
	db #03,#ec,#ff,#ff,#07,#a8,#01,#00
	db #e4,#ff,#ff,#03,#e0,#01,#00,#07
	db #0d,#fa,#c1,#01,#00,#bc,#fe,#ff
	db #fc,#fe,#ff,#03,#fc,#fe,#ff,#07
	db #bc,#02,#00,#fc,#02,#00,#03,#fc
	db #02,#00,#07,#0d,#fa,#c1,#01,#00
	db #bc,#ff,#ff,#f8,#01,#00,#03,#f4
	db #ff,#ff,#07,#b0,#01,#00,#ec,#ff
	db #ff,#03,#e8,#01,#00,#07,#0d,#fa
	db #c1,#01,#00,#bc,#ff,#ff,#f8,#01
	db #00,#03,#f4,#ff,#ff,#07,#b0,#01
	db #00,#f0,#ff,#ff,#03,#ec,#01,#00
	db #07,#0d,#fa,#c1,#01,#00,#bc,#ff
	db #ff,#f8,#01,#00,#03,#f8,#ff,#ff
	db #07,#b4,#01,#00,#f4,#ff,#ff,#03
	db #f0,#01,#00,#07,#0d,#fa,#c1,#01
	db #00,#bc,#ff,#ff,#fc,#01,#00,#03
	db #f8,#ff,#ff,#07,#b8,#01,#00,#f4
	db #ff,#ff,#03,#f4,#01,#00,#07,#0d
	db #fa,#c1,#01,#00,#fc,#ff,#ff,#fe
	db #f4,#01,#00,#03,#ec,#ff,#ff,#07
	db #e4,#01,#00,#fe,#dc,#ff,#ff,#03
	db #d4,#01,#00,#07,#0d,#fa,#c1,#01
	db #00,#fc,#ff,#ff,#fe,#f4,#01,#00
	db #03,#ec,#ff,#ff,#07,#e4,#01,#00
	db #fe,#dc,#ff,#ff,#03,#d8,#01,#00
	db #07,#0d,#fa,#c1,#01,#00,#fc,#ff
	db #ff,#fe,#f4,#01,#00,#03,#ec,#ff
	db #ff,#07,#e4,#01,#00,#fe,#e0,#ff
	db #ff,#03,#dc,#01,#00,#07,#0d,#fa
	db #c1,#01,#00,#fc,#ff,#ff,#fe,#f4
	db #01,#00,#03,#ec,#ff,#ff,#07,#e8
	db #01,#00,#fe,#e4,#ff,#ff,#03,#e0
	db #01,#00,#07,#0d,#fa,#c1,#01,#00
	db #fc,#fe,#ff,#fe,#fc,#fe,#ff,#03
	db #fc,#fe,#ff,#07,#fc,#02,#00,#fe
	db #fc,#02,#00,#03,#fc,#02,#00,#07
	db #0d,#fa,#c1,#01,#00,#fc,#ff,#ff
	db #fe,#f8,#01,#00,#03,#f4,#ff,#ff
	db #07,#f0,#01,#00,#fe,#ec,#ff,#ff
	db #03,#e8,#01,#00,#07,#0d,#fa,#c1
	db #01,#00,#fc,#ff,#ff,#fe,#f8,#01
	db #00,#03,#f4,#ff,#ff,#07,#f0,#01
	db #00,#fe,#f0,#ff,#ff,#03,#ec,#01
	db #00,#07,#0d,#fa,#c1,#01,#00,#fc
	db #ff,#ff,#fe,#f8,#01,#00,#03,#f8
	db #ff,#ff,#07,#f4,#01,#00,#fe,#f4
	db #ff,#ff,#03,#f0,#01,#00,#07,#0d
	db #fa,#c1,#01,#00,#fc,#ff,#ff,#fe
	db #fc,#01,#00,#03,#f8,#ff,#ff,#07
	db #f8,#01,#00,#fe,#f4,#ff,#ff,#03
	db #f4,#01,#00,#07,#0d,#fa,#c1,#01
	db #00,#fc,#ff,#ff,#fe,#f4,#01,#00
	db #02,#ec,#ff,#ff,#05,#e4,#01,#00
	db #fe,#dc,#ff,#ff,#02,#d4,#01,#00
	db #05,#0d,#fa,#c1,#01,#00,#fc,#ff
	db #ff,#fe,#f4,#01,#00,#02,#ec,#ff
	db #ff,#05,#e4,#01,#00,#fe,#dc,#ff
	db #ff,#02,#d8,#01,#00,#05,#0d,#fa
	db #c1,#01,#00,#fc,#ff,#ff,#fe,#f4
	db #01,#00,#02,#ec,#ff,#ff,#05,#e4
	db #01,#00,#fe,#e0,#ff,#ff,#02,#dc
	db #01,#00,#05,#0d,#fa,#c1,#01,#00
	db #fc,#ff,#ff,#fe,#f4,#01,#00,#02
	db #ec,#ff,#ff,#05,#e8,#01,#00,#fe
	db #e4,#ff,#ff,#02,#e0,#01,#00,#05
	db #0d,#fa,#c1,#01,#00,#fc,#ff,#ff
	db #fe,#f8,#01,#00,#02,#f4,#ff,#ff
	db #05,#f0,#01,#00,#fe,#ec,#ff,#ff
	db #02,#e8,#01,#00,#05,#0d,#fa,#c1
	db #01,#00,#fc,#ff,#ff,#fe,#f8,#01
	db #00,#02,#f4,#ff,#ff,#05,#f0,#01
	db #00,#fe,#f0,#ff,#ff,#02,#ec,#01
	db #00,#05,#0d,#fa,#c1,#01,#00,#fc
	db #ff,#ff,#fe,#f8,#01,#00,#02,#f8
	db #ff,#ff,#05,#f4,#01,#00,#fe,#f4
	db #ff,#ff,#02,#f0,#01,#00,#05,#0d
	db #fa,#c1,#01,#00,#fc,#ff,#ff,#fe
	db #fc,#01,#00,#02,#f8,#ff,#ff,#05
	db #f8,#01,#00,#fe,#f4,#ff,#ff,#02
	db #f4,#01,#00,#05,#0d,#fa,#c1,#01
	db #00,#bc,#ff,#ff,#bc,#ff,#ff,#bc
	db #ff,#ff,#bc,#01,#00,#bc,#01,#00
	db #bc,#01,#00,#0d,#4b,#c6,#01,#00
	db #3c,#0d,#62,#c6,#01,#00,#68,#0c
	db #3c,#7c,#0c,#3c,#7c,#f4,#0d,#6a
	db #c6,#01,#00,#68,#0c,#3c,#78,#0c
	db #34,#70,#f4,#2c,#0d,#fa,#c1,#01
	db #00,#f0,#ff,#ff,#0c,#bc,#fe,#ff
	db #bc,#ff,#ff,#bc,#01,#00,#bc,#02
	db #00,#bc,#01,#00,#bc,#ff,#ff,#0d
	db #87,#c6,#01,#00,#70,#0c,#3c,#0d
	db #a0,#c6,#01,#00,#b8,#ff,#ff,#b8
	db #fe,#ff,#b8,#ff,#ff,#b4,#01,#00
	db #b4,#02,#00,#b4,#01,#00,#b0,#ff
	db #ff,#b0,#fe,#ff,#b0,#ff,#ff,#ac
	db #01,#00,#ac,#02,#00,#ac,#01,#00
	db #a8,#ff,#ff,#a8,#fe,#ff,#a8,#ff
	db #ff,#a4,#01,#00,#a4,#02,#00,#a4
	db #01,#00,#a0,#ff,#ff,#a0,#fe,#ff
	db #a0,#ff,#ff,#9c,#01,#00,#9c,#02
	db #00,#9c,#01,#00,#98,#ff,#ff,#98
	db #fe,#ff,#98,#ff,#ff,#94,#01,#00
	db #94,#02,#00,#94,#01,#00,#90,#ff
	db #ff,#90,#fe,#ff,#90,#ff,#ff,#8c
	db #01,#00,#8c,#02,#00,#8c,#01,#00
	db #88,#ff,#ff,#88,#fe,#ff,#88,#ff
	db #ff,#84,#01,#00,#84,#02,#00,#84
	db #01,#00,#0d,#fa,#c1,#01,#00,#f0
	db #ff,#ff,#0c,#bc,#fe,#ff,#bc,#ff
	db #ff,#b8,#01,#00,#b8,#02,#00,#b8
	db #01,#00,#b4,#ff,#ff,#b4,#fe,#ff
	db #b4,#ff,#ff,#b0,#01,#00,#b0,#02
	db #00,#b0,#01,#00,#ac,#ff,#ff,#ac
	db #fe,#ff,#ac,#ff,#ff,#a8,#01,#00
	db #a8,#02,#00,#a8,#01,#00,#a4,#ff
	db #ff,#a4,#fe,#ff,#a4,#ff,#ff,#a0
	db #01,#00,#a0,#02,#00,#a0,#01,#00
	db #9c,#ff,#ff,#9c,#fe,#ff,#9c,#ff
	db #ff,#98,#01,#00,#98,#02,#00,#98
	db #01,#00,#94,#ff,#ff,#94,#fe,#ff
	db #94,#ff,#ff,#90,#01,#00,#90,#02
	db #00,#90,#01,#00,#8c,#ff,#ff,#8c
	db #fe,#ff,#8c,#ff,#ff,#88,#01,#00
	db #88,#02,#00,#88,#01,#00,#84,#ff
	db #ff,#84,#fe,#ff,#84,#ff,#ff,#0d
	db #fa,#c1,#01,#00,#f0,#ff,#ff,#0c
	db #bc,#fe,#ff,#b8,#ff,#ff,#b8,#01
	db #00,#b4,#02,#00,#b4,#01,#00,#b0
	db #ff,#ff,#b0,#fe,#ff,#ac,#ff,#ff
	db #ac,#01,#00,#a8,#02,#00,#a8,#01
	db #00,#a4,#ff,#ff,#a4,#fe,#ff,#a0
	db #ff,#ff,#a0,#01,#00,#9c,#02,#00
	db #9c,#01,#00,#98,#ff,#ff,#98,#fe
	db #ff,#94,#ff,#ff,#94,#01,#00,#90
	db #02,#00,#90,#01,#00,#8c,#ff,#ff
	db #8c,#fe,#ff,#88,#ff,#ff,#88,#01
	db #00,#84,#02,#00,#84,#01,#00,#0d
	db #fa,#c1,#01,#00,#b8,#ff,#ff,#b8
	db #fe,#ff,#b4,#ff,#ff,#b4,#01,#00
	db #b0,#02,#00,#b0,#01,#00,#ac,#ff
	db #ff,#ac,#fe,#ff,#a8,#ff,#ff,#a8
	db #01,#00,#a4,#02,#00,#a4,#01,#00
	db #a0,#ff,#ff,#a0,#fe,#ff,#9c,#ff
	db #ff,#9c,#01,#00,#98,#02,#00,#98
	db #01,#00,#94,#ff,#ff,#94,#fe,#ff
	db #90,#ff,#ff,#90,#01,#00,#8c,#02
	db #00,#8c,#01,#00,#88,#ff,#ff,#88
	db #fe,#ff,#84,#ff,#ff,#84,#01,#00
	db #0d,#fa,#c1,#01,#00,#bc,#ff,#ff
	db #bc,#fe,#ff,#bc,#ff,#ff,#bc,#01
	db #00,#bc,#02,#00,#bc,#01,#00,#0d
	db #6f,#c8,#01,#00,#3a,#25,#74,#03
	db #70,#07,#34,#74,#03,#74,#07,#2a
	db #05,#74,#03,#74,#07,#34,#74,#03
	db #74,#07,#0d,#fa,#c1,#01,#00,#7a
	db #25,#fe,#74,#03,#70,#07,#74,#fe
	db #74,#03,#74,#07,#2a,#05,#74,#03
	db #74,#07,#74,#fe,#74,#03,#74,#07
	db #0d,#fa,#c1,#01,#00,#3a,#65,#d5
	db #00,#36,#67,#52,#01,#32,#69,#aa
	db #01,#09,#2e,#24,#0d,#cb,#c8,#01
	db #00,#7c,#0c,#7c,#0c,#38,#38,#b4
	db #ff,#ff,#b4,#ff,#ff,#b4,#01,#00
	db #b4,#01,#00,#0d,#d9,#c8,#01,#00
	db #3a,#25,#76,#27,#03,#72,#29,#08
	db #34,#74,#03,#74,#08,#2a,#05,#74
	db #03,#74,#08,#34,#74,#03,#74,#08
	db #0d,#fa,#c1,#40,#00,#00,#00,#c4
	db #c9,#00,#c5,#c9,#57,#ca,#01,#cb
	db #00,#c5,#c9,#57,#ca,#01,#cb,#00
	db #c3,#cb,#57,#ca,#d6,#cb,#00,#f1
	db #cb,#57,#ca,#03,#cc,#00,#c5,#c9
	db #57,#ca,#13,#cc,#00,#c5,#c9,#57
	db #ca,#9f,#cc,#00,#c5,#c9,#57,#ca
	db #2b,#cd,#00,#c5,#c9,#57,#ca,#bb
	db #cd,#00,#c5,#c9,#57,#ca,#2b,#cd
	db #00,#c5,#c9,#57,#ca,#bb,#cd,#00
	db #c5,#c9,#57,#ca,#13,#cc,#00,#c5
	db #c9,#57,#ca,#9f,#cc,#00,#c5,#c9
	db #57,#ca,#01,#cb,#00,#c5,#c9,#57
	db #ca,#01,#cb,#00,#60,#ce,#f2,#ce
	db #b3,#cf,#00,#60,#ce,#f2,#ce,#21
	db #d0,#00,#8c,#d0,#1e,#d1,#df,#d1
	db #00,#52,#d2,#e4,#d2,#a1,#d3,#00
	db #60,#ce,#f2,#ce,#b3,#cf,#00,#60
	db #ce,#f2,#ce,#21,#d0,#00,#8c,#d0
	db #1e,#d1,#df,#d1,#00,#52,#d2,#e4
	db #d2,#a1,#d3,#00,#c5,#c9,#57,#ca
	db #13,#cc,#00,#c5,#c9,#57,#ca,#9f
	db #cc,#00,#c5,#c9,#57,#ca,#13,#cc
	db #00,#c5,#c9,#57,#ca,#9f,#cc,#01
	db #0b,#c9,#00,#ba,#e9,#00,#00,#01
	db #a2,#60,#02,#ba,#60,#01,#b0,#60
	db #02,#7b,#ba,#60,#01,#a8,#60,#02
	db #63,#ba,#60,#01,#a2,#60,#02,#69
	db #71,#7b,#71,#ba,#60,#01,#a2,#60
	db #02,#ba,#60,#03,#a8,#60,#02,#ba
	db #60,#03,#b6,#60,#02,#81,#ba,#60
	db #03,#b0,#60,#02,#69,#ba,#60,#03
	db #a8,#60,#02,#71,#77,#81,#77,#ba
	db #60,#03,#a8,#60,#02,#ba,#60,#04
	db #a6,#60,#02,#ba,#60,#04,#ac,#60
	db #02,#77,#ba,#60,#04,#ac,#60,#02
	db #67,#ba,#60,#04,#a6,#60,#02,#6d
	db #77,#7f,#77,#ba,#60,#04,#a6,#60
	db #02,#ba,#60,#01,#a2,#60,#02,#ba
	db #60,#01,#b0,#60,#02,#7b,#ba,#60
	db #01,#a8,#60,#02,#63,#b6,#60,#05
	db #a2,#60,#02,#69,#73,#ba,#60,#04
	db #a6,#60,#02,#6d,#77,#a2,#e1,#00
	db #00,#06,#a2,#60,#07,#a2,#60,#06
	db #a2,#60,#07,#ba,#60,#08,#02,#98
	db #60,#09,#9e,#60,#06,#63,#a2,#60
	db #07,#a2,#60,#09,#63,#ba,#60,#08
	db #02,#a6,#60,#09,#a6,#60,#07,#a8
	db #60,#06,#a8,#60,#07,#a8,#60,#06
	db #a8,#60,#07,#ba,#60,#0a,#9e,#60
	db #09,#9e,#60,#07,#9e,#60,#0b,#90
	db #60,#06,#90,#60,#07,#90,#60,#0b
	db #a8,#60,#09,#ba,#60,#0a,#02,#a2
	db #60,#09,#a2,#60,#07,#9e,#60,#06
	db #9e,#60,#07,#9e,#60,#06,#b6,#60
	db #09,#ba,#60,#0c,#02,#9e,#60,#09
	db #b6,#60,#06,#77,#b6,#60,#07,#b6
	db #60,#09,#5f,#ba,#60,#0c,#02,#9e
	db #60,#06,#9e,#60,#07,#a2,#60,#06
	db #a2,#60,#07,#a2,#60,#06,#a2,#60
	db #07,#ba,#60,#08,#02,#98,#60,#09
	db #9e,#60,#06,#5b,#9a,#60,#0d,#b6
	db #60,#0e,#02,#9e,#60,#0d,#9e,#60
	db #06,#ba,#60,#0e,#ba,#60,#0c,#ba
	db #e9,#00,#00,#0f,#ba,#60,#10,#ba
	db #60,#11,#ba,#60,#12,#ba,#60,#13
	db #ba,#60,#14,#ba,#60,#15,#ba,#60
	db #16,#ba,#60,#17,#ba,#60,#16,#ba
	db #60,#15,#ba,#60,#14,#ba,#60,#13
	db #ba,#60,#12,#ba,#60,#11,#ba,#60
	db #10,#ba,#60,#18,#ba,#60,#19,#ba
	db #60,#1a,#ba,#60,#1b,#ba,#60,#1c
	db #ba,#60,#1d,#ba,#60,#1e,#ba,#60
	db #1f,#ba,#60,#20,#ba,#60,#1f,#ba
	db #60,#1e,#ba,#60,#1d,#ba,#60,#1c
	db #ba,#60,#1b,#ba,#60,#1a,#ba,#60
	db #19,#ba,#60,#21,#ba,#60,#22,#ba
	db #60,#23,#ba,#60,#24,#ba,#60,#05
	db #ba,#60,#25,#ba,#60,#26,#ba,#60
	db #27,#ba,#60,#28,#ba,#60,#27,#ba
	db #60,#26,#ba,#60,#25,#ba,#60,#05
	db #ba,#60,#24,#ba,#60,#23,#ba,#60
	db #22,#ba,#60,#0f,#ba,#60,#10,#ba
	db #60,#11,#ba,#60,#12,#ba,#60,#13
	db #ba,#60,#14,#ba,#60,#15,#ba,#60
	db #16,#b6,#60,#28,#b6,#60,#27,#b6
	db #60,#26,#b6,#60,#25,#ba,#60,#05
	db #ba,#60,#24,#ba,#60,#23,#ba,#60
	db #22,#42,#9f,#00,#00,#0e,#c8,#69
	db #29,#1e,#8f,#1e,#85,#0e,#81,#0e
	db #81,#06,#7f,#00,#c8,#e9,#10,#00
	db #2a,#42,#80,#0c,#00,#ba,#c0,#00
	db #00,#ba,#60,#29,#18,#81,#1e,#77
	db #1e,#7b,#0e,#73,#06,#77,#00,#b0
	db #e9,#00,#00,#29,#0e,#7b,#1e,#81
	db #1e,#7f,#0e,#81,#0e,#7b,#06,#77
	db #00,#c0,#e9,#00,#00,#29,#1e,#89
	db #1e,#8f,#1e,#89,#0e,#81,#06,#7f
	db #00,#c0,#e3,#00,#00,#2b,#42,#0b
	db #ba,#43,#42,#0b,#c0,#43,#42,#0b
	db #ba,#63,#2c,#c0,#60,#2b,#42,#0b
	db #c0,#43,#7b,#42,#0b,#c0,#43,#42
	db #0b,#ba,#43,#42,#0b,#c8,#43,#42
	db #0b,#c0,#43,#42,#0b,#b6,#63,#2c
	db #c0,#60,#2b,#42,#0b,#b0,#43,#42
	db #0b,#42,#0d,#42,#0f,#c0,#63,#2c
	db #81,#7f,#ba,#60,#2b,#42,#0b,#be
	db #43,#42,#0b,#b6,#43,#42,#0b,#be
	db #43,#42,#0b,#b6,#63,#2c,#c4,#60
	db #2b,#42,#0b,#c4,#63,#2c,#be,#60
	db #2b,#42,#0b,#ce,#43,#42,#0b,#be
	db #43,#42,#0b,#c4,#43,#42,#0b,#c0
	db #43,#42,#0b,#be,#63,#2c,#c0,#60
	db #2b,#42,#0b,#ba,#43,#42,#0b,#42
	db #0d,#42,#0f,#42,#11,#b6,#43,#42
	db #0b,#42,#0d,#42,#0f,#c0,#e3,#00
	db #00,#2b,#42,#0b,#ba,#43,#42,#0b
	db #c0,#43,#42,#0b,#ba,#63,#2c,#c8
	db #60,#2b,#42,#0b,#c8,#43,#81,#42
	db #0b,#c8,#43,#42,#0b,#c0,#43,#42
	db #0b,#ce,#43,#42,#0b,#c8,#43,#42
	db #0b,#c0,#63,#2c,#c8,#60,#2b,#42
	db #0b,#b6,#43,#42,#0b,#42,#0d,#42
	db #0f,#c0,#63,#2c,#81,#7f,#ba,#60
	db #2b,#42,#0b,#b6,#43,#42,#0b,#b6
	db #43,#42,#0b,#be,#43,#42,#0b,#c4
	db #63,#2c,#ce,#60,#2b,#42,#0b,#ce
	db #63,#2c,#c4,#60,#2b,#42,#0b,#be
	db #43,#42,#0b,#b6,#43,#42,#0b,#ba
	db #43,#42,#0b,#c0,#43,#42,#0b,#be
	db #63,#2c,#ba,#60,#2b,#42,#0b,#b2
	db #43,#42,#0b,#42,#0d,#42,#0f,#42
	db #11,#ac,#43,#42,#0b,#42,#0d,#42
	db #0f,#ba,#e3,#00,#00,#2d,#ba,#e0
	db #f3,#ff,#2a,#be,#e0,#00,#00,#2d
	db #02,#7b,#02,#b4,#e0,#fb,#ff,#2e
	db #b6,#e0,#00,#00,#2a,#b6,#60,#2f
	db #02,#ba,#60,#30,#02,#b6,#60,#31
	db #71,#6d,#69,#ac,#60,#30,#02,#ae
	db #e0,#f9,#ff,#2e,#ac,#e0,#00,#00
	db #30,#02,#71,#a8,#60,#2d,#02,#a8
	db #60,#2f,#02,#b0,#60,#30,#02,#ac
	db #60,#31,#02,#69,#02,#a6,#60,#30
	db #02,#67,#02,#6d,#67,#02,#77,#02
	db #77,#ac,#60,#2d,#ac,#e0,#fa,#ff
	db #2a,#42,#80,#d5,#ff,#be,#e0,#00
	db #00,#32,#b6,#60,#31,#02,#c0,#60
	db #30,#7f,#be,#e0,#fc,#ff,#2a,#c0
	db #e0,#00,#00,#33,#ba,#60,#30,#02
	db #c8,#60,#2d,#02,#c8,#60,#2f,#c8
	db #60,#30,#04,#c4,#60,#31,#81,#7f
	db #77,#ba,#e3,#00,#00,#2d,#ba,#e0
	db #f3,#ff,#2a,#be,#e0,#00,#00,#2d
	db #02,#7b,#02,#c6,#e0,#fd,#ff,#2e
	db #c8,#e0,#00,#00,#2a,#c8,#60,#2f
	db #02,#c8,#60,#30,#02,#c4,#60,#31
	db #81,#7f,#7b,#81,#c0,#e0,#f3,#ff
	db #2a,#c4,#e0,#00,#00,#30,#02,#81
	db #02,#ce,#60,#2d,#02,#ce,#60,#2f
	db #02,#ce,#60,#30,#02,#c8,#60,#31
	db #85,#81,#7f,#77,#b6,#e0,#e2,#ff
	db #2a,#c0,#e0,#00,#00,#2d,#02,#c0
	db #e0,#04,#00,#2a,#be,#c0,#00,#00
	db #ce,#60,#2d,#ce,#60,#2f,#02,#ce
	db #eb,#20,#00,#2a,#ce,#e3,#00,#00
	db #2d,#ce,#e0,#0e,#00,#2a,#c4,#c0
	db #00,#00,#c0,#60,#31,#7f,#77,#7b
	db #ba,#e0,#f3,#ff,#2a,#be,#e0,#00
	db #00,#2d,#02,#be,#e0,#08,#00,#2a
	db #ba,#c0,#00,#00,#c8,#60,#2d,#02
	db #c8,#60,#2f,#02,#c8,#60,#30,#02
	db #c4,#60,#31,#81,#7f,#77,#c4,#e9
	db #00,#00,#01,#ac,#60,#02,#c4,#60
	db #01,#ba,#60,#02,#85,#c4,#60,#01
	db #b2,#60,#02,#6d,#c4,#60,#01,#ac
	db #60,#02,#73,#7b,#85,#7b,#c4,#60
	db #01,#ac,#60,#02,#c4,#60,#01,#ac
	db #60,#02,#c4,#60,#01,#ba,#60,#02
	db #85,#c4,#60,#01,#b2,#60,#02,#6d
	db #c4,#60,#01,#ac,#60,#02,#73,#7b
	db #85,#7b,#c4,#60,#01,#ac,#60,#02
	db #ba,#60,#04,#ac,#60,#02,#ba,#60
	db #04,#be,#60,#02,#85,#ba,#60,#04
	db #b6,#60,#02,#6d,#ba,#60,#04,#ac
	db #60,#02,#77,#7f,#85,#7f,#ba,#60
	db #04,#ac,#60,#02,#ba,#60,#04,#ac
	db #60,#02,#ba,#60,#04,#be,#60,#02
	db #85,#ba,#60,#04,#b6,#60,#02,#6d
	db #ba,#60,#04,#ac,#60,#02,#77,#7f
	db #ba,#60,#04,#be,#60,#02,#77,#6d
	db #94,#e1,#00,#00,#06,#94,#60,#07
	db #c4,#60,#34,#02,#ac,#60,#0d,#ac
	db #60,#07,#ac,#e0,#26,#00,#0b,#a8
	db #e0,#00,#00,#06,#a8,#60,#0b,#a2
	db #60,#0d,#a2,#60,#09,#a2,#60,#07
	db #c4,#60,#08,#02,#ac,#60,#09,#ac
	db #60,#07,#94,#60,#06,#94,#60,#0b
	db #c4,#60,#34,#02,#ac,#60,#0d,#ac
	db #60,#07,#ac,#c0,#26,#00,#a8,#e0
	db #00,#00,#06,#a8,#60,#0b,#a2,#60
	db #0d,#a2,#60,#06,#a2,#60,#07,#c4
	db #60,#08,#02,#ac,#60,#09,#ac,#e0
	db #26,#00,#07,#9e,#e0,#00,#00,#06
	db #9e,#60,#07,#c8,#60,#35,#02,#9e
	db #60,#0d,#9a,#60,#09,#9a,#60,#0b
	db #9a,#60,#06,#5f,#9e,#60,#36,#9e
	db #60,#07,#b6,#60,#09,#c8,#60,#0a
	db #94,#60,#09,#9a,#60,#06,#9c,#60
	db #09,#9e,#60,#06,#9e,#60,#07,#c8
	db #60,#35,#02,#9e,#60,#0d,#9a,#60
	db #09,#9a,#60,#07,#9e,#60,#06,#9e
	db #60,#0b,#9e,#60,#0d,#c8,#60,#0a
	db #9e,#60,#06,#9a,#60,#0d,#9a,#60
	db #0b,#b6,#60,#0d,#b6,#e0,#46,#00
	db #36,#c0,#e3,#00,#00,#37,#c4,#4b
	db #c4,#43,#c0,#4b,#ba,#43,#c4,#4b
	db #ca,#43,#ba,#4b,#02,#8b,#7b,#7b
	db #85,#8b,#ce,#43,#c4,#4b,#d2,#43
	db #ce,#4b,#ce,#43,#93,#ce,#4b,#ce
	db #43,#93,#d2,#4b,#8f,#8f,#d2,#43
	db #ce,#4b,#ce,#43,#d2,#4b,#d2,#43
	db #ce,#4b,#d6,#43,#d2,#4b,#ce,#43
	db #d6,#4b,#c4,#43,#8f,#d6,#4b,#be
	db #43,#42,#0b,#85,#7f,#02,#c4,#51
	db #d6,#43,#97,#93,#97,#c4,#4b,#ce
	db #43,#d6,#4b,#c4,#43,#8f,#d6,#4b
	db #be,#43,#42,#0b,#85,#7f,#be,#43
	db #81,#be,#4b,#c4,#43,#c0,#4b,#ca
	db #e3,#00,#00,#37,#c4,#4b,#c8,#43
	db #ca,#4b,#c4,#43,#c8,#4b,#d2,#43
	db #c4,#4b,#02,#93,#c4,#51,#02,#93
	db #c4,#43,#8f,#93,#8b,#ce,#4b,#c8
	db #43,#ca,#4b,#c4,#43,#c8,#4b,#d2
	db #43,#c4,#4b,#02,#d2,#43,#93,#d2
	db #4b,#ce,#43,#85,#93,#85,#97,#c4
	db #4b,#ce,#43,#c4,#4b,#c4,#43,#8f
	db #c4,#4b,#be,#43,#02,#c4,#4b,#7f
	db #02,#c4,#51,#d6,#43,#97,#93,#97
	db #c4,#4b,#ce,#43,#d6,#4b,#c4,#43
	db #8f,#d6,#4b,#be,#43,#02,#c4,#4b
	db #7f,#be,#43,#81,#be,#4b,#c4,#43
	db #c0,#4b,#b0,#e9,#00,#00,#01,#b0
	db #60,#02,#b0,#60,#01,#be,#60,#02
	db #89,#b0,#60,#01,#b6,#60,#02,#71
	db #b0,#60,#01,#b0,#60,#02,#77,#7f
	db #89,#7f,#b0,#60,#01,#b0,#60,#02
	db #b0,#60,#01,#b0,#60,#02,#b0,#60
	db #01,#be,#60,#02,#89,#b0,#60,#01
	db #b6,#60,#02,#71,#b0,#60,#01,#b0
	db #60,#02,#77,#7f,#89,#7f,#b0,#60
	db #01,#b0,#60,#02,#be,#60,#04,#b0
	db #60,#02,#be,#60,#04,#c2,#60,#02
	db #89,#be,#60,#04,#ba,#60,#02,#71
	db #be,#60,#04,#b0,#60,#02,#7b,#83
	db #89,#83,#be,#60,#04,#b0,#60,#02
	db #be,#60,#04,#b0,#60,#02,#be,#60
	db #04,#c2,#60,#02,#89,#be,#60,#04
	db #ba,#60,#02,#71,#be,#60,#04,#b0
	db #60,#02,#7b,#83,#be,#60,#04,#c2
	db #60,#02,#7b,#71,#98,#e1,#00,#00
	db #06,#98,#60,#07,#c8,#60,#34,#02
	db #b0,#60,#0d,#b0,#60,#07,#b0,#e0
	db #26,#00,#0b,#ac,#e0,#00,#00,#06
	db #ac,#60,#0b,#a6,#60,#0d,#a6,#60
	db #09,#a6,#60,#07,#c8,#60,#08,#02
	db #b0,#60,#09,#b0,#60,#07,#98,#60
	db #06,#98,#60,#0b,#c8,#60,#34,#02
	db #b0,#60,#0d,#b0,#60,#07,#b0,#c0
	db #26,#00,#ac,#e0,#00,#00,#06,#ac
	db #60,#0b,#a6,#60,#0d,#a6,#60,#06
	db #a6,#60,#07,#c8,#60,#08,#02,#b0
	db #60,#09,#b0,#e0,#26,#00,#07,#a2
	db #e0,#00,#00,#06,#a2,#60,#07,#cc
	db #60,#35,#02,#a2,#60,#0d,#9e,#60
	db #09,#9e,#60,#0b,#9e,#60,#06,#63
	db #a2,#60,#36,#a2,#60,#07,#ba,#60
	db #09,#cc,#60,#0a,#98,#60,#09,#9e
	db #60,#06,#a0,#60,#09,#a2,#60,#06
	db #a2,#60,#07,#cc,#60,#35,#02,#a2
	db #60,#0d,#9e,#60,#09,#9e,#60,#07
	db #a2,#60,#06,#a2,#60,#0b,#a2,#60
	db #0d,#cc,#60,#0a,#a2,#60,#06,#9e
	db #60,#0d,#9e,#60,#0b,#ba,#60,#0d
	db #ba,#e0,#46,#00,#36,#c8,#e3,#00
	db #00,#37,#be,#4b,#cc,#43,#c8,#4b
	db #c8,#43,#cc,#4b,#d6,#43,#c8,#4b
	db #02,#97,#c8,#51,#02,#d6,#43,#c8
	db #4b,#d6,#43,#d2,#4b,#dc,#43,#d6
	db #4b,#d6,#43,#dc,#4b,#d2,#43,#97
	db #dc,#4b,#c8,#43,#d6,#4b,#c8,#43
	db #be,#4b,#c8,#43,#8d,#be,#4b,#ce
	db #43,#cc,#4b,#d2,#43,#ce,#4b,#ce
	db #43,#93,#ce,#4b,#ce,#43,#93,#ce
	db #4b,#02,#93,#c8,#43,#be,#4b,#c8
	db #43,#d2,#4b,#ce,#43,#c8,#4b,#d2
	db #43,#ce,#4b,#ce,#43,#93,#ce,#4b
	db #ce,#43,#93,#ce,#4b,#d6,#43,#d2
	db #4b,#d6,#43,#9d,#97,#93,#8f,#93
	db #b0,#e9,#00,#00,#01,#b0,#60,#02
	db #b0,#60,#01,#be,#60,#02,#89,#b0
	db #60,#01,#b6,#60,#02,#71,#b0,#60
	db #01,#b0,#60,#02,#77,#7f,#89,#7f
	db #b0,#60,#01,#b0,#60,#02,#b0,#60
	db #01,#b0,#60,#02,#b0,#60,#01,#be
	db #60,#02,#89,#b0,#60,#01,#b6,#60
	db #02,#71,#b0,#60,#01,#b0,#60,#02
	db #77,#7f,#89,#7f,#b0,#60,#01,#b0
	db #60,#02,#be,#60,#04,#b0,#60,#02
	db #be,#60,#04,#c2,#60,#02,#89,#be
	db #60,#04,#ba,#60,#02,#71,#be,#60
	db #04,#b0,#60,#02,#7b,#83,#89,#83
	db #be,#60,#04,#b0,#60,#02,#b6,#60
	db #04,#b2,#60,#02,#b6,#60,#04,#c0
	db #60,#02,#8b,#b6,#60,#04,#ba,#60
	db #02,#73,#ba,#60,#04,#b6,#60,#02
	db #7f,#85,#ba,#60,#04,#c4,#60,#02
	db #7f,#77,#98,#e1,#00,#00,#06,#98
	db #60,#07,#c8,#60,#34,#02,#b0,#60
	db #0d,#b0,#60,#07,#b0,#e0,#26,#00
	db #0b,#ac,#e0,#00,#00,#06,#ac,#60
	db #0b,#a6,#60,#0d,#a6,#60,#09,#a6
	db #60,#07,#c8,#60,#08,#02,#b0,#60
	db #09,#b0,#60,#07,#98,#60,#06,#98
	db #60,#0b,#c8,#60,#34,#02,#b0,#60
	db #0d,#b0,#60,#07,#b0,#c0,#26,#00
	db #ac,#e0,#00,#00,#06,#ac,#60,#0b
	db #a6,#60,#0d,#a6,#60,#06,#a6,#60
	db #07,#c8,#60,#08,#02,#b0,#60,#09
	db #b0,#e0,#26,#00,#07,#a2,#e0,#00
	db #00,#06,#a2,#60,#07,#cc,#60,#35
	db #02,#a2,#60,#0d,#9e,#60,#09,#9e
	db #60,#0b,#9e,#60,#06,#63,#a2,#60
	db #36,#a2,#60,#07,#ba,#60,#09,#cc
	db #60,#0a,#98,#60,#09,#9e,#60,#06
	db #a0,#60,#09,#9a,#60,#06,#9a,#60
	db #07,#9a,#60,#06,#9a,#60,#07,#c4
	db #60,#0a,#02,#9a,#60,#09,#9e,#60
	db #06,#9e,#60,#0b,#9e,#60,#0d,#5f
	db #9e,#60,#0b,#be,#60,#38,#02,#b6
	db #60,#0d,#b6,#e0,#46,#00,#36,#d6
	db #e3,#00,#00,#37,#c8,#4b,#dc,#43
	db #d6,#4b,#d6,#43,#dc,#4b,#e0,#43
	db #d6,#4b,#02,#a1,#e0,#43,#d6,#4b
	db #dc,#43,#a1,#d6,#4b,#e0,#43,#a7
	db #d6,#4b,#e0,#43,#e6,#4b,#dc,#43
	db #a1,#e6,#4b,#d6,#43,#e0,#4b,#d6
	db #43,#d6,#4b,#d6,#43,#93,#d6,#4b
	db #ce,#43,#d2,#4b,#d2,#43,#ce,#4b
	db #ce,#43,#93,#ce,#4b,#ce,#43,#93
	db #ce,#4b,#02,#93,#d2,#43,#93,#8f
	db #93,#ce,#4b,#89,#d2,#43,#ce,#4b
	db #ce,#43,#93,#ca,#4b,#d2,#43,#97
	db #99,#97,#ce,#4b,#d2,#43,#97,#c4
	db #4b,#d6,#43,#99,#97,#00,#00,#00

	read "The Long Dark Knight Of The Soul - stArkos Player (2019)(Epyteor)(SuTeKH)(StArkos).asm"

;
.music_info
	db "The Long Dark Knight Of The Soul - Chubby Chip Chip (2019)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
