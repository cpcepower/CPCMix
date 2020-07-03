; Music of FOReVER XIII - CPC In Wonderland (2012)(Public Domain)(Electro)(StarkOs)
; Ripped by Megachur the 21/02/2016
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "FOREXCIW.BIN"
	ENDIF

music_date_rip_day		equ 21
music_date_rip_month	equ 02
music_date_rip_year		equ 2016
music_adr				equ &4000

	read "music_header.asm"

.l4000
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#ff,#00,#22,#40,#2b,#40
	db #37,#40,#4f,#40,#84,#40,#8b,#40
	db #99,#40,#a9,#40,#c4,#40,#d3,#40
	db #e8,#40,#00,#00,#00,#00,#00,#00
	db #0d,#24,#40,#06,#00,#3c,#20,#30
	db #18,#24,#10,#18,#0d,#32,#40,#01
	db #00,#25,#28,#f4,#25,#28,#f4,#7c
	db #18,#78,#0c,#25,#28,#f4,#25,#28
	db #f4,#30,#6c,#0c,#0d,#43,#40,#01
	db #00,#3c,#7c,#0c,#38,#78,#0c,#74
	db #18,#34,#70,#0c,#30,#6c,#0c,#6c
	db #18,#28,#68,#0c,#24,#64,#0c,#60
	db #18,#20,#5c,#0c,#1c,#58,#0c,#58
	db #18,#14,#54,#0c,#10,#50,#0c,#4c
	db #18,#0c,#48,#0c,#08,#44,#0c,#44
	db #18,#0d,#24,#40,#06,#fe,#05,#3a
	db #0d,#24,#40,#01,#00,#74,#18,#34
	db #70,#0c,#2c,#28,#64,#18,#0d,#8d
	db #40,#01,#00,#78,#0c,#25,#28,#f4
	db #25,#28,#f4,#30,#6c,#0c,#0d,#9d
	db #40,#01,#00,#7e,#26,#0c,#7c,#0a
	db #74,#09,#74,#08,#6c,#05,#6c,#04
	db #64,#03,#5c,#02,#5c,#01,#58,#01
	db #18,#0d,#24,#40,#02,#00,#7c,#18
	db #78,#0c,#34,#30,#2c,#28,#24,#20
	db #0d,#cf,#40,#01,#00,#3e,#01,#36
	db #01,#2e,#01,#26,#01,#1e,#01,#16
	db #01,#0e,#01,#06,#01,#0d,#24,#40
	db #01,#00,#3e,#01,#3a,#01,#36,#01
	db #32,#01,#2e,#01,#2a,#01,#26,#01
	db #22,#01,#1e,#01,#1a,#01,#16,#01
	db #12,#01,#0e,#01,#0a,#01,#06,#01
	db #0d,#24,#40,#40,#00,#00,#00,#71
	db #41,#10,#58,#44,#23,#49,#9c,#44
	db #40,#00,#58,#44,#23,#49,#c3,#45
	db #00,#14,#44,#72,#46,#44,#4a,#00
	db #14,#44,#db,#49,#44,#4a,#00,#14
	db #43,#be,#46,#73,#41,#00,#54,#43
	db #59,#47,#d1,#41,#00,#94,#43,#f3
	db #47,#2f,#42,#00,#d4,#43,#8b,#48
	db #9e,#42,#00,#58,#44,#23,#49,#9c
	db #44,#00,#58,#44,#23,#49,#fa,#44
	db #00,#2e,#46,#23,#49,#58,#45,#00
	db #2e,#46,#23,#49,#c3,#45,#10,#3c
	db #4a,#3c,#4a,#0c,#43,#10,#01,#11
	db #41,#1d,#00,#92,#e0,#00,#00,#01
	db #92,#60,#02,#0c,#8e,#60,#01,#8e
	db #60,#02,#0c,#92,#60,#01,#92,#60
	db #02,#42,#00,#96,#60,#01,#96,#60
	db #02,#02,#98,#60,#01,#98,#60,#02
	db #8e,#60,#01,#8e,#60,#02,#08,#42
	db #60,#00,#02,#92,#60,#01,#92,#60
	db #02,#0c,#8e,#60,#01,#8e,#60,#02
	db #0c,#92,#60,#01,#92,#60,#02,#42
	db #00,#96,#60,#01,#96,#60,#02,#02
	db #98,#60,#01,#98,#60,#02,#9c,#60
	db #01,#9c,#60,#02,#08,#42,#60,#00
	db #00,#92,#e0,#00,#00,#01,#92,#60
	db #02,#0c,#8e,#60,#01,#8e,#60,#02
	db #0c,#92,#60,#01,#92,#60,#02,#42
	db #00,#96,#60,#01,#96,#60,#02,#02
	db #98,#60,#01,#98,#60,#02,#8e,#60
	db #01,#8e,#60,#02,#08,#42,#60,#00
	db #02,#92,#60,#01,#92,#60,#02,#0c
	db #8e,#60,#01,#8e,#60,#02,#0c,#92
	db #60,#01,#92,#60,#02,#42,#00,#a0
	db #60,#01,#a0,#60,#02,#02,#98,#60
	db #01,#98,#60,#02,#9c,#60,#01,#9c
	db #60,#02,#08,#42,#60,#00,#00,#92
	db #e0,#00,#00,#01,#92,#60,#02,#42
	db #00,#0a,#98,#60,#01,#98,#60,#02
	db #42,#00,#0a,#92,#60,#01,#92,#60
	db #02,#42,#00,#a0,#60,#01,#a0,#60
	db #02,#02,#98,#60,#01,#98,#60,#02
	db #9c,#60,#01,#9c,#60,#02,#08,#42
	db #60,#00,#02,#92,#60,#01,#92,#60
	db #02,#02,#96,#60,#01,#96,#60,#02
	db #02,#98,#60,#01,#98,#60,#02,#8e
	db #60,#01,#8e,#60,#02,#0c,#92,#60
	db #01,#92,#60,#02,#42,#00,#96,#60
	db #01,#96,#60,#02,#02,#98,#60,#01
	db #98,#60,#02,#96,#60,#01,#96,#60
	db #02,#08,#42,#60,#00,#00,#92,#e0
	db #00,#00,#01,#92,#60,#02,#0c,#98
	db #60,#01,#98,#60,#02,#42,#00,#0a
	db #92,#60,#01,#92,#60,#02,#42,#00
	db #a0,#60,#01,#a0,#60,#02,#42,#00
	db #98,#60,#01,#98,#60,#02,#9c,#60
	db #01,#9c,#60,#02,#08,#42,#60,#00
	db #02,#92,#60,#01,#92,#60,#02,#02
	db #96,#60,#01,#96,#60,#02,#02,#98
	db #60,#01,#98,#60,#02,#8e,#60,#01
	db #8e,#60,#02,#0c,#92,#60,#01,#92
	db #60,#02,#42,#00,#96,#60,#01,#96
	db #60,#02,#02,#98,#60,#01,#98,#60
	db #02,#a6,#60,#01,#a6,#60,#02,#08
	db #42,#60,#00,#00,#92,#e0,#00,#00
	db #01,#0e,#4f,#00,#92,#e0,#00,#00
	db #03,#04,#53,#42,#00,#02,#53,#02
	db #4f,#06,#4f,#42,#00,#4f,#02,#53
	db #04,#53,#04,#53,#02,#4f,#06,#4f
	db #02,#4f,#02,#53,#04,#53,#42,#00
	db #02,#53,#02,#4f,#06,#4f,#42,#00
	db #4f,#02,#53,#02,#42,#00,#53,#42
	db #00,#02,#53,#02,#4f,#42,#00,#04
	db #4f,#02,#4f,#00,#92,#e0,#00,#00
	db #03,#04,#53,#42,#00,#02,#53,#02
	db #4f,#06,#4f,#42,#00,#4f,#02,#53
	db #04,#53,#04,#53,#02,#4f,#06,#4f
	db #02,#4f,#02,#53,#04,#53,#42,#00
	db #02,#53,#02,#4f,#06,#4f,#42,#00
	db #4f,#02,#53,#02,#42,#00,#53,#42
	db #00,#02,#53,#02,#5d,#42,#00,#04
	db #5d,#02,#5d,#00,#92,#e0,#00,#00
	db #03,#04,#53,#42,#00,#02,#53,#02
	db #59,#06,#59,#42,#00,#59,#02,#53
	db #04,#53,#04,#53,#02,#5d,#06,#5d
	db #02,#5d,#02,#53,#04,#53,#42,#00
	db #02,#53,#02,#4f,#06,#4f,#42,#00
	db #4f,#02,#53,#02,#42,#00,#53,#42
	db #00,#02,#53,#02,#57,#42,#00,#04
	db #57,#02,#57,#00,#92,#e0,#00,#00
	db #03,#04,#53,#42,#00,#02,#53,#02
	db #59,#06,#59,#42,#00,#59,#02,#53
	db #04,#53,#04,#53,#02,#5d,#06,#5d
	db #02,#5d,#02,#53,#04,#53,#42,#00
	db #02,#53,#02,#4f,#06,#4f,#42,#00
	db #4f,#02,#53,#02,#42,#00,#53,#42
	db #00,#02,#53,#02,#4f,#42,#00,#04
	db #4f,#02,#4f,#00,#92,#e0,#00,#00
	db #04,#5d,#61,#53,#5d,#61,#53,#5d
	db #4f,#59,#5d,#4f,#59,#5d,#4f,#59
	db #53,#5d,#61,#53,#5d,#61,#53,#5d
	db #4f,#59,#5d,#59,#4f,#59,#5d,#4f
	db #53,#5d,#61,#53,#5d,#61,#53,#5d
	db #4f,#59,#5d,#4f,#59,#5d,#4f,#59
	db #53,#5d,#61,#53,#5d,#61,#53,#5d
	db #4f,#59,#5d,#4f,#4f,#59,#5d,#4f
	db #92,#e0,#00,#00,#05,#5d,#61,#53
	db #5d,#61,#53,#5d,#4f,#59,#5d,#4f
	db #59,#5d,#4f,#59,#53,#5d,#61,#53
	db #5d,#61,#53,#5d,#4f,#59,#5d,#59
	db #4f,#59,#5d,#4f,#53,#5d,#61,#53
	db #5d,#61,#53,#5d,#4f,#59,#5d,#4f
	db #59,#5d,#4f,#59,#53,#5d,#61,#53
	db #5d,#61,#53,#5d,#4f,#59,#5d,#4f
	db #4f,#59,#5d,#4f,#92,#e0,#00,#00
	db #01,#92,#60,#06,#0c,#8e,#60,#01
	db #8e,#60,#06,#0c,#92,#60,#01,#92
	db #60,#06,#42,#00,#96,#60,#01,#96
	db #60,#06,#02,#98,#60,#01,#98,#60
	db #06,#8e,#60,#01,#8e,#60,#06,#08
	db #42,#60,#00,#02,#92,#60,#01,#92
	db #60,#06,#0c,#8e,#60,#01,#8e,#60
	db #06,#0c,#92,#60,#01,#92,#60,#06
	db #42,#00,#96,#60,#01,#96,#60,#06
	db #02,#98,#60,#01,#98,#60,#06,#9c
	db #60,#01,#9c,#60,#06,#08,#42,#60
	db #00,#00,#92,#e0,#00,#00,#01,#92
	db #60,#06,#0c,#8e,#60,#01,#8e,#60
	db #06,#0c,#92,#60,#01,#92,#60,#06
	db #42,#00,#96,#60,#01,#96,#60,#06
	db #02,#98,#60,#01,#98,#60,#06,#8e
	db #60,#01,#8e,#60,#06,#08,#42,#60
	db #00,#02,#92,#60,#01,#92,#60,#06
	db #0c,#8e,#60,#01,#8e,#60,#06,#0c
	db #92,#60,#01,#92,#60,#06,#42,#00
	db #a0,#60,#01,#a0,#60,#06,#02,#98
	db #60,#01,#98,#60,#06,#a6,#60,#01
	db #a6,#60,#06,#08,#42,#60,#00,#00
	db #92,#e0,#00,#00,#01,#92,#60,#06
	db #0c,#98,#60,#01,#98,#60,#06,#0c
	db #92,#60,#01,#92,#60,#06,#42,#00
	db #a0,#60,#01,#a0,#60,#06,#02,#98
	db #60,#01,#98,#60,#06,#9c,#60,#01
	db #9c,#60,#06,#08,#42,#60,#00,#02
	db #92,#60,#01,#92,#60,#06,#02,#96
	db #60,#01,#96,#60,#06,#02,#98,#60
	db #01,#98,#60,#06,#8e,#60,#01,#8e
	db #60,#06,#0c,#92,#60,#01,#92,#60
	db #06,#42,#00,#96,#60,#01,#96,#60
	db #06,#02,#98,#60,#01,#98,#60,#06
	db #96,#60,#01,#96,#60,#06,#08,#42
	db #60,#00,#00,#92,#e0,#00,#00,#01
	db #92,#60,#06,#0c,#98,#60,#01,#98
	db #60,#06,#0c,#92,#60,#01,#92,#60
	db #06,#42,#00,#a0,#60,#01,#a0,#60
	db #06,#02,#98,#60,#01,#98,#60,#06
	db #9c,#60,#01,#9c,#60,#06,#08,#42
	db #60,#00,#02,#92,#60,#01,#92,#60
	db #06,#02,#96,#60,#01,#96,#60,#06
	db #02,#98,#60,#01,#98,#60,#06,#8e
	db #60,#01,#8e,#60,#06,#0c,#92,#60
	db #01,#92,#60,#06,#42,#00,#96,#60
	db #01,#96,#60,#06,#02,#98,#60,#01
	db #98,#60,#06,#a6,#60,#01,#a6,#60
	db #06,#08,#42,#60,#00,#00,#92,#e0
	db #00,#00,#05,#5d,#61,#53,#5d,#61
	db #53,#5d,#4f,#59,#5d,#4f,#59,#5d
	db #4f,#59,#53,#5d,#61,#53,#5d,#61
	db #53,#5d,#4f,#59,#5d,#59,#4f,#59
	db #5d,#4f,#53,#5d,#61,#57,#5d,#61
	db #53,#5d,#4f,#59,#5d,#4f,#59,#5d
	db #4f,#59,#53,#5d,#61,#57,#5d,#61
	db #53,#5d,#4f,#59,#5d,#4f,#4f,#59
	db #5d,#4f,#72,#e0,#00,#00,#07,#02
	db #42,#00,#02,#33,#02,#42,#00,#02
	db #33,#02,#42,#00,#02,#33,#06,#33
	db #02,#42,#00,#02,#33,#02,#42,#00
	db #02,#33,#02,#42,#00,#02,#33,#02
	db #33,#02,#33,#02,#42,#00,#02,#33
	db #02,#42,#00,#02,#33,#02,#42,#00
	db #02,#33,#06,#33,#02,#42,#00,#02
	db #33,#02,#42,#00,#02,#33,#02,#42
	db #00,#33,#33,#02,#33,#00,#72,#e0
	db #00,#00,#07,#92,#60,#08,#42,#00
	db #72,#60,#07,#92,#60,#08,#02,#42
	db #00,#02,#72,#60,#07,#8e,#60,#08
	db #42,#00,#42,#00,#72,#60,#07,#8e
	db #60,#08,#72,#60,#07,#02,#33,#92
	db #60,#08,#42,#00,#72,#60,#07,#92
	db #60,#08,#02,#42,#00,#02,#72,#60
	db #07,#8e,#60,#08,#42,#00,#72,#60
	db #07,#33,#8e,#60,#08,#72,#60,#07
	db #8e,#60,#08,#72,#60,#07,#92,#60
	db #08,#42,#00,#72,#60,#07,#92,#60
	db #08,#02,#42,#00,#02,#72,#60,#07
	db #8e,#60,#08,#42,#00,#02,#72,#60
	db #07,#8e,#60,#08,#72,#60,#07,#8e
	db #60,#08,#72,#60,#07,#92,#60,#08
	db #42,#00,#72,#60,#07,#92,#60,#08
	db #02,#42,#00,#02,#72,#60,#07,#9c
	db #60,#08,#42,#00,#72,#60,#07,#33
	db #9c,#60,#08,#72,#60,#07,#9c,#60
	db #08,#72,#e0,#00,#00,#07,#92,#60
	db #08,#42,#00,#72,#60,#07,#92,#60
	db #08,#02,#42,#00,#02,#72,#60,#07
	db #8e,#60,#08,#42,#00,#42,#00,#72
	db #60,#07,#8e,#60,#08,#72,#60,#07
	db #02,#33,#92,#60,#08,#42,#00,#72
	db #60,#07,#92,#60,#08,#02,#42,#00
	db #02,#72,#60,#07,#8e,#60,#08,#42
	db #00,#72,#60,#07,#33,#8e,#60,#08
	db #72,#60,#07,#8e,#60,#08,#72,#60
	db #07,#92,#60,#08,#42,#00,#72,#60
	db #07,#92,#60,#08,#02,#42,#00,#02
	db #72,#60,#07,#8e,#60,#08,#42,#00
	db #02,#72,#60,#07,#8e,#60,#08,#72
	db #60,#07,#8e,#60,#08,#72,#60,#07
	db #92,#60,#08,#42,#00,#72,#60,#07
	db #a0,#60,#08,#02,#59,#02,#72,#60
	db #07,#9c,#60,#08,#42,#00,#72,#60
	db #07,#33,#9c,#60,#08,#72,#60,#07
	db #9c,#60,#08,#72,#e0,#00,#00,#07
	db #92,#60,#08,#42,#00,#72,#60,#07
	db #92,#60,#08,#02,#42,#00,#02,#72
	db #60,#07,#98,#60,#08,#42,#00,#42
	db #00,#72,#60,#07,#98,#60,#08,#72
	db #60,#07,#02,#33,#92,#60,#08,#42
	db #00,#72,#60,#07,#a0,#60,#08,#02
	db #59,#02,#72,#60,#07,#9c,#60,#08
	db #42,#00,#72,#60,#07,#33,#9c,#60
	db #08,#72,#60,#07,#9c,#60,#08,#72
	db #60,#07,#92,#60,#08,#42,#00,#72
	db #60,#07,#96,#60,#08,#02,#59,#02
	db #72,#60,#07,#8e,#60,#08,#42,#00
	db #02,#72,#60,#07,#8e,#60,#08,#72
	db #60,#07,#8e,#60,#08,#72,#60,#07
	db #92,#60,#08,#42,#00,#72,#60,#07
	db #96,#60,#08,#02,#59,#02,#72,#60
	db #07,#96,#60,#08,#42,#00,#72,#60
	db #07,#33,#96,#60,#08,#72,#60,#07
	db #96,#60,#08,#72,#e0,#00,#00,#07
	db #92,#60,#08,#42,#00,#72,#60,#07
	db #92,#60,#08,#02,#42,#00,#02,#72
	db #60,#07,#98,#60,#08,#42,#00,#42
	db #00,#72,#60,#07,#98,#60,#08,#72
	db #60,#07,#02,#33,#92,#60,#08,#42
	db #00,#72,#60,#07,#a0,#60,#08,#02
	db #59,#02,#72,#60,#07,#9c,#60,#08
	db #42,#00,#72,#60,#07,#33,#9c,#60
	db #08,#72,#60,#07,#9c,#60,#08,#72
	db #60,#07,#92,#60,#08,#42,#00,#72
	db #60,#07,#96,#60,#08,#02,#59,#02
	db #72,#60,#07,#8e,#60,#08,#42,#00
	db #02,#72,#60,#07,#8e,#60,#08,#72
	db #60,#07,#8e,#60,#08,#72,#60,#07
	db #92,#60,#08,#42,#00,#72,#60,#07
	db #96,#60,#08,#02,#59,#02,#72,#60
	db #07,#8e,#60,#08,#42,#00,#72,#60
	db #07,#33,#a6,#60,#08,#72,#60,#07
	db #a6,#60,#08,#72,#e0,#00,#00,#07
	db #8a,#60,#09,#8a,#60,#0a,#8a,#60
	db #09,#72,#60,#07,#8a,#60,#09,#8a
	db #60,#0a,#8a,#60,#09,#72,#60,#07
	db #8a,#60,#09,#8a,#60,#0a,#8a,#60
	db #09,#72,#60,#07,#8a,#60,#09,#8a
	db #60,#0a,#8a,#60,#09,#72,#60,#07
	db #8a,#60,#09,#8a,#60,#0a,#72,#60
	db #07,#8a,#60,#09,#4b,#8a,#60,#0a
	db #8a,#60,#09,#72,#60,#07,#8a,#60
	db #09,#8a,#60,#0a,#8a,#60,#09,#72
	db #60,#07,#8a,#60,#09,#72,#60,#07
	db #8a,#60,#09,#72,#60,#07,#8a,#60
	db #09,#8a,#60,#0a,#8a,#60,#09,#72
	db #60,#07,#8a,#60,#09,#8a,#60,#0a
	db #8a,#60,#09,#72,#60,#07,#8a,#60
	db #09,#8a,#60,#0a,#8a,#60,#09,#72
	db #60,#07,#8a,#60,#09,#8a,#60,#0a
	db #8a,#60,#09,#72,#60,#07,#8a,#60
	db #09,#4b,#72,#60,#07,#8a,#60,#09
	db #4b,#8a,#60,#0a,#8a,#60,#09,#72
	db #60,#07,#8a,#60,#09,#4b,#72,#60
	db #07,#33,#8a,#60,#09,#72,#60,#07
	db #8a,#60,#09,#92,#e0,#00,#00,#01
	db #02,#42,#00,#02,#72,#60,#07,#02
	db #42,#00,#02,#8e,#60,#01,#02,#42
	db #00,#02,#72,#60,#07,#06,#33,#02
	db #42,#00,#02,#33,#02,#42,#00,#02
	db #33,#02,#42,#00,#02,#33,#02,#33
	db #02,#92,#60,#01,#02,#42,#00,#02
	db #72,#60,#07,#02,#42,#00,#02,#8e
	db #60,#01,#02,#42,#00,#02,#72,#60
	db #07,#06,#92,#60,#01,#02,#42,#00
	db #57,#72,#60,#07,#02,#98,#60,#01
	db #02,#67,#02,#42,#00,#72,#60,#07
	db #33,#02,#33,#00,#42,#60,#00,#42
	db #80,#00,#00,#00,#92,#e0,#00,#00
	db #08,#5d,#61,#53,#5d,#61,#53,#5d
	db #4f,#59,#5d,#4f,#59,#5d,#4f,#59
	db #53,#5d,#61,#53,#5d,#61,#53,#5d
	db #4f,#59,#5d,#59,#4f,#59,#5d,#4f
	db #53,#5d,#61,#53,#5d,#61,#53,#5d
	db #4f,#59,#5d,#4f,#59,#5d,#4f,#59
	db #53,#5d,#61,#53,#5d,#61,#53,#5d
	db #4f,#59,#5d,#4f,#4f,#59,#5d,#4f
	jp l5186
	jp l4a92
	jp l51db
.l4a91
	db #00
;
.play_music
.l4a92
;
	xor a
	ld (l4a91),a
.l4a97 equ $ + 1
	ld a,#01
	dec a
	jp nz,l4c63
.l4a9d equ $ + 1
	ld a,#01
	dec a
	jr nz,l4b09
.l4aa2 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l4ab0
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l4ab0
	rra
	jr nc,l4ab8
	ld de,l4b59
	ldi
.l4ab8
	rra
	jr nc,l4ac0
	ld de,l4bbe
	ldi
.l4ac0
	rra
	jr nc,l4ac8
	ld de,l4c23
	ldi
.l4ac8
	ld de,l4b38
	ldi
	ldi
	ld de,l4b9d
	ldi
	ldi
	ld de,l4c02
	ldi
	ldi
	rra
	jr nc,l4ae5
	ld de,l4b08
	ldi
.l4ae5
	rra
	jr nc,l4af0
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4af4),de
.l4af0
	ld (l4aa2),hl
.l4af4 equ $ + 1
	ld hl,#0000
	ld (l4b12),hl
	ld a,#01
	ld (l4b0d),a
	ld (l4b33),a
	ld (l4b98),a
	ld (l4bfd),a
.l4b08 equ $ + 1
	ld a,#01
.l4b09
	ld (l4a9d),a
.l4b0d equ $ + 1
	ld a,#01
	dec a
	jr nz,l4b2f
.l4b12 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l4b2c
	srl a
	jr nz,l4b20
	ld a,(hl)
	inc hl
.l4b20
	jr nc,l4b27
	ld (l4a91),a
	jr l4b2a
.l4b27
	ld (l4c62),a
.l4b2a
	ld a,#01
.l4b2c
	ld (l4b12),hl
.l4b2f
	ld (l4b0d),a
.l4b33 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4b94
.l4b38 equ $ + 1
	ld hl,#0000
	call l5032
	ld (l4b38),hl
	jr c,l4b94
	ld a,d
	rra
	jr nc,l4b4b
	and #0f
	ld (l4d3b),a
.l4b4b
	rl d
	jr nc,l4b53
	ld (l4d29),ix
.l4b53
	rl d
	jr nc,l4b92
	ld a,e
.l4b59 equ $ + 1
	add #00
	ld (l4d3a),a
	ld hl,#0000
	ld (l4d26),hl
	rl d
	jr c,l4b72
.l4b68 equ $ + 1
	ld hl,#0000
	ld a,(l4d4b)
	ld (l4d43),a
	jr l4b8f
.l4b72
	ld l,b
	add hl,hl
.l4b75 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l4d4b),a
	ld (l4d43),a
	ld a,(hl)
	or a
	jr z,l4b8b
	ld (l4e54),a
.l4b8b
	inc hl
	ld (l4b68),hl
.l4b8f
	ld (l4d3d),hl
.l4b92
	ld a,#01
.l4b94
	ld (l4b33),a
.l4b98 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4bf9
.l4b9d equ $ + 1
	ld hl,#0000
	call l5032
	ld (l4b9d),hl
	jr c,l4bf9
	ld a,d
	rra
	jr nc,l4bb0
	and #0f
	ld (l4cdc),a
.l4bb0
	rl d
	jr nc,l4bb8
	ld (l4cca),ix
.l4bb8
	rl d
	jr nc,l4bf7
	ld a,e
.l4bbe equ $ + 1
	add #00
	ld (l4cdb),a
	ld hl,#0000
	ld (l4cc7),hl
	rl d
	jr c,l4bd7
.l4bcd equ $ + 1
	ld hl,#0000
	ld a,(l4cec)
	ld (l4ce4),a
	jr l4bf4
.l4bd7
	ld l,b
	add hl,hl
.l4bda equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l4cec),a
	ld (l4ce4),a
	ld a,(hl)
	or a
	jr z,l4bf0
	ld (l4e54),a
.l4bf0
	inc hl
	ld (l4bcd),hl
.l4bf4
	ld (l4cde),hl
.l4bf7
	ld a,#01
.l4bf9
	ld (l4b98),a
.l4bfd equ $ + 1
	ld a,#01
	dec a
	jr nz,l4c5e
.l4c02 equ $ + 1
	ld hl,#0000
	call l5032
	ld (l4c02),hl
	jr c,l4c5e
	ld a,d
	rra
	jr nc,l4c15
	and #0f
	ld (l4c80),a
.l4c15
	rl d
	jr nc,l4c1d
	ld (l4c6e),ix
.l4c1d
	rl d
	jr nc,l4c5c
	ld a,e
.l4c23 equ $ + 1
	add #00
	ld (l4c7f),a
	ld hl,#0000
	ld (l4c6b),hl
	rl d
	jr c,l4c3c
.l4c32 equ $ + 1
	ld hl,#0000
	ld a,(l4c90)
	ld (l4c88),a
	jr l4c59
.l4c3c
	ld l,b
	add hl,hl
.l4c3f equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l4c90),a
	ld (l4c88),a
	ld a,(hl)
	or a
	jr z,l4c55
	ld (l4e54),a
.l4c55
	inc hl
	ld (l4c32),hl
.l4c59
	ld (l4c82),hl
.l4c5c
	ld a,#01
.l4c5e
	ld (l4bfd),a
.l4c62 equ $ + 1
	ld a,#01
.l4c63
	ld (l4a97),a
	ld iy,l4e6b
.l4c6b equ $ + 1
	ld hl,#0000
.l4c6e equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4c6b),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l4c80 equ $ + 2
.l4c7f equ $ + 1
	ld de,#0000
.l4c82 equ $ + 1
	ld hl,#0000
	call l4e76
.l4c88 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4c91
	ld (l4c82),hl
.l4c90 equ $ + 1
	ld a,#06
.l4c91
	ld (l4c88),a
.l4c94
	ld de,#0000
	exx
	ld de,#0000
.l4c9c equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l4cbf
	ld a,#01
	ld (l4fa5),a
	call l4e76
	xor a
	ld (l4fa5),a
	ld a,l
	or h
	jr z,l4cb7
.l4cb3 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4cbc
.l4cb7
	ld (l4c9c),hl
	ld a,#06
.l4cbc
	ld (l4cb3),a
.l4cbf
	ld a,lx
	ex af,af'
	ld iy,l4e69
.l4cc7 equ $ + 1
	ld hl,#0000
.l4cca equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4cc7),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l4cdc equ $ + 2
.l4cdb equ $ + 1
	ld de,#0000
.l4cde equ $ + 1
	ld hl,#0000
	call l4e76
.l4ce4 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4ced
	ld (l4cde),hl
.l4cec equ $ + 1
	ld a,#06
.l4ced
	ld (l4ce4),a
.l4cf0
	ld de,#0000
	exx
	ld de,#0000
.l4cf8 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l4d1b
	ld a,#01
	ld (l4fa5),a
	call l4e76
	xor a
	ld (l4fa5),a
	ld a,l
	or h
	jr z,l4d13
.l4d0f equ $ + 1
	ld a,#01
	dec a
	jr nz,l4d18
.l4d13
	ld (l4cf8),hl
	ld a,#06
.l4d18
	ld (l4d0f),a
.l4d1b
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l4e67
.l4d26 equ $ + 1
	ld hl,#0000
.l4d29 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4d26),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l4d3b equ $ + 2
.l4d3a equ $ + 1
	ld de,#0000
.l4d3d equ $ + 1
	ld hl,#0000
	call l4e76
.l4d43 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4d4c
	ld (l4d3d),hl
.l4d4b equ $ + 1
	ld a,#06
.l4d4c
	ld (l4d43),a
.l4d4f
	ld de,#0000
	exx
	ld de,#0000
.l4d57 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l4d7a
	ld a,#01
	ld (l4fa5),a
	call l4e76
	xor a
	ld (l4fa5),a
	ld a,l
	or h
	jr z,l4d72
.l4d6e equ $ + 1
	ld a,#01
	dec a
	jr nz,l4d77
.l4d72
	ld (l4d57),hl
	ld a,#06
.l4d77
	ld (l4d6e),a
.l4d7a
	ex af,af'
	or lx
.l4d7d
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l4e67
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
.l4e54 equ $ + 1
	cp #ff
	ret z
	ld (l4e54),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l4e6e equ $ + 7
.l4e6d equ $ + 6
.l4e6b equ $ + 4
.l4e69 equ $ + 2
.l4e67
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4e75 equ $ + 6
.l4e73 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00
.l4e76
	ld b,(hl)
	inc hl
	rr b
	jp c,l4ed4
	rr b
	jr c,l4ea4
	ld a,b
	and #0f
	jr nz,l4e8d
	ld (iy+#07),a
	ld lx,#09
	ret
.l4e8d
	ld lx,#08
	sub d
	jr nc,l4e94
	xor a
.l4e94
	ld (iy+#07),a
	rr b
	call l5006
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l4ea4
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l4eb4
	ld (l4e6d),a
	ld lx,#00
.l4eb4
	ld a,b
	and #0f
	sub d
	jr nc,l4ebb
	xor a
.l4ebb
	ld (iy+#07),a
	bit 5,c
	jr nz,l4ec5
	inc lx
	ret
.l4ec5
	rr b
	bit 6,c
	call l4ff8
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l4ed4
	rr b
	jr nc,l4ee7
	ld a,(l4d43)
	ld c,a
	ld a,(l4d4b)
	cp c
	jr nz,l4ee7
	ld a,#fe
	ld (l4e54),a
.l4ee7
	bit 1,b
	jp nz,l4fa0
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l4e75),a
	bit 0,b
	jr z,l4f56
	bit 2,b
	call l4ff8
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l4f16),a
	ld a,b
	exx
.l4f16 equ $ + 1
	jr l4f17
.l4f17
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
	jr nc,l4f36
	inc hl
.l4f36
	bit 5,a
	jr z,l4f46
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
.l4f46
	ld (l4e73),hl
	exx
.l4f4a
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l4e6d),a
	ld lx,#00
	ret
.l4f56
	bit 2,b
	call l4ff8
	ld (l4e73),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l4f6a),a
	ld a,b
	exx
.l4f6a equ $ + 1
	jr l4f6b
.l4f6b
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
	jr z,l4f97
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
.l4f97
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l4f4a
.l4fa0
	bit 0,b
	jr z,l4fb4
.l4fa5 equ $ + 1
	ld a,#00
	or a
	jr z,l4fad
	ld hl,#0000
	ret
.l4fad
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l4e76
.l4fb4
	ld (iy+#07),#10
	bit 5,b
	jr nz,l4fc1
	ld lx,#09
	jr l4fd4
.l4fc1
	ld lx,#08
	ld hx,e
	bit 2,b
	call l4ff8
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l4fd4
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l4e75),a
	rr b
	rr b
	bit 2,b
	call l4ff8
	ld (l4e73),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l4e6d),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l4ff8
	jr z,l5006
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
.l5006
	bit 4,b
	jr z,l5016
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
.l5016
	ld a,e
	bit 3,b
	jr z,l5023
	add (hl)
	inc hl
	cp #90
	jr c,l5023
	ld a,#8f
.l5023
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l5066
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l5032
	ld a,(hl)
	inc hl
	srl a
	jr c,l5059
	sub #20
	jr c,l5063
	jr z,l5055
	dec a
	ld e,a
.l5040
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l504e
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l504e
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l5055
	ld e,(hl)
	inc hl
	jr l5040
.l5059
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l5063
	add #20
	ret
.l5066
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
.l5186
;
	ld hl,#0009
	add hl,de
	ld de,l4c62
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l4b75),hl
	ld (l4bda),hl
	ld (l4c3f),hl
	add hl,bc
	ld de,l4b08
	ldi
	ld de,l4b59
	ldi
	ld de,l4bbe
	ldi
	ld de,l4c23
	ldi
	ld de,l4af4
	ldi
	ldi
	ld (l4aa2),hl
	ld a,#01
	ld (l4a97),a
	ld (l4a9d),a
	ld a,#ff
	ld (l4e75),a
	ld hl,(l4b75)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l4d3d),hl
	ld (l4cde),hl
	ld (l4c82),hl
	ret
;
.stop_music
.l51db
;
	ld hl,l4e6e
	ld bc,#0300
.l51e1
	ld (hl),c
	inc hl
	djnz l51e1
	ld a,#3f
	jp l4d7d
	ld hl,#000c
	add hl,de
	ld (l5224),hl
	ld hl,#0000
	ld (l4d57),hl
	ld (l4cf8),hl
	ld (l4c9c),hl
	ret
	ld ix,l4d4f
	or a
	jr z,l5210
	ld ix,l4cf0
	dec a
	jr z,l5210
	ld ix,l4c94
.l5210
	ld (ix+#01),c
	ld (ix+#02),b
	ld a,e
	ld (ix+#05),a
	ld a,#0f
	sub h
	ld (ix+#06),a
	ld h,#00
	add hl,hl
.l5224 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,d
	or a
	jr nz,l5230
	ld a,(hl)
.l5230
	ld (ix+#27),a
	ld (ix+#1f),a
	inc hl
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
	ret
	ld a,e
	ld hl,l4d57
	or a
	jr z,l5250
	ld hl,l4cf8
	dec a
	jr z,l5250
	ld hl,l4c9c
	dec a
.l5250
	ld (hl),a
	inc hl
	ld (hl),a
	ret
;
.init_music		; added by Megachur
;
	ld de,l4000
	jp real_init_music
;
.music_info
	db "FOReVER XIII - CPC In Wonderland (2012)(Public Domain)(Electro)",0
	db "StarkOs",0

	read "music_end.asm"