; Music of Agent 006 (2017)(CpcRetroDev.ByteRealms)(Luis Gonzalez Aracil)(StArkos)
; Ripped by Megachur the 15/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AGENT006.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0040
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

.l0040
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#80,#00,#56,#00,#5f,#00
	db #94,#00,#a7,#00,#bb,#00,#00,#00
	db #00,#00,#00,#00,#0d,#58,#00,#01
	db #00,#3c,#38,#34,#30,#30,#2c,#2c
	db #2c,#28,#28,#28,#28,#28,#28,#24
	db #24,#24,#20,#20,#20,#20,#20,#20
	db #20,#1c,#1c,#18,#18,#18,#18,#18
	db #18,#18,#14,#10,#10,#10,#10,#0c
	db #0c,#0c,#0c,#0c,#0c,#08,#08,#04
	db #04,#0d,#58,#00,#01,#00,#36,#23
	db #3c,#38,#34,#30,#2c,#28,#24,#20
	db #1c,#18,#14,#10,#0d,#58,#00,#01
	db #00,#3c,#38,#34,#30,#2c,#28,#24
	db #20,#1c,#18,#14,#10,#0c,#08,#04
	db #0d,#58,#00,#01,#00,#1c,#1c,#24
	db #24,#1c,#1c,#18,#18,#1c,#1c,#1c
	db #18,#0d,#c8,#00,#40,#00,#00,#00
	db #14,#01,#10,#15,#01,#17,#02,#45
	db #01,#40,#10,#d1,#01,#7c,#02,#ba
	db #02,#38,#10,#5b,#02,#f6,#02,#12
	db #03,#18,#10,#15,#01,#17,#02,#8d
	db #01,#40,#10,#d1,#01,#7c,#02,#2e
	db #03,#38,#10,#00,#02,#6a,#03,#8b
	db #03,#18,#10,#a7,#03,#ba,#02,#cf
	db #03,#38,#00,#a7,#03,#2e,#03,#cf
	db #03,#01,#d2,#00,#00,#92,#e0,#00
	db #00,#01,#0a,#89,#8d,#83,#04,#7f
	db #04,#79,#7f,#83,#0a,#59,#57,#4b
	db #02,#4b,#59,#02,#57,#4b,#02,#53
	db #0a,#89,#8d,#83,#04,#7f,#04,#79
	db #7f,#83,#0a,#59,#57,#4b,#02,#4b
	db #59,#02,#57,#4b,#00,#9c,#e0,#00
	db #00,#02,#02,#63,#02,#5d,#02,#63
	db #02,#5d,#02,#63,#02,#9c,#60,#03
	db #02,#a2,#60,#02,#02,#57,#02,#6f
	db #02,#57,#02,#6f,#02,#57,#02,#6f
	db #02,#57,#02,#6f,#02,#5d,#02,#63
	db #02,#5d,#02,#63,#02,#5d,#02,#63
	db #02,#5d,#02,#63,#02,#57,#02,#6f
	db #02,#57,#02,#6f,#02,#57,#02,#6f
	db #02,#57,#02,#6f,#00,#b4,#e0,#00
	db #00,#02,#02,#7b,#02,#75,#02,#7b
	db #02,#75,#02,#7b,#02,#75,#02,#7b
	db #02,#6f,#02,#87,#02,#6f,#02,#87
	db #02,#6f,#02,#87,#02,#6f,#02,#87
	db #02,#75,#02,#7b,#02,#75,#02,#7b
	db #02,#75,#02,#7b,#02,#75,#02,#7b
	db #02,#6f,#02,#87,#02,#6f,#02,#87
	db #02,#6f,#02,#87,#02,#6f,#02,#87
	db #00,#8a,#e0,#00,#00,#01,#42,#00
	db #02,#4b,#04,#45,#02,#41,#04,#41
	db #04,#8d,#91,#89,#04,#89,#04,#91
	db #02,#8d,#0a,#45,#49,#4b,#04,#4b
	db #04,#45,#02,#41,#04,#41,#04,#8d
	db #91,#89,#04,#89,#04,#91,#42,#00
	db #da,#e0,#00,#00,#01,#0a,#a1,#a5
	db #97,#0a,#a1,#a5,#97,#02,#42,#00
	db #02,#7f,#02,#be,#60,#03,#00,#9c
	db #e0,#00,#00,#02,#53,#63,#53,#5d
	db #53,#63,#53,#5d,#53,#63,#53,#5d
	db #53,#63,#53,#57,#61,#6f,#61,#57
	db #61,#6f,#61,#57,#61,#6f,#61,#57
	db #61,#6f,#61,#5d,#53,#63,#53,#5d
	db #53,#63,#53,#5d,#53,#63,#53,#5d
	db #53,#63,#53,#57,#61,#6f,#61,#57
	db #61,#6f,#61,#57,#61,#6f,#61,#57
	db #61,#6f,#61,#cc,#e0,#00,#00,#01
	db #42,#00,#02,#8d,#42,#00,#02,#8d
	db #42,#00,#91,#42,#00,#02,#91,#42
	db #00,#02,#91,#91,#91,#02,#91,#02
	db #91,#02,#91,#00,#a0,#e0,#00,#00
	db #02,#53,#61,#53,#61,#53,#61,#53
	db #67,#75,#67,#75,#67,#75,#67,#75
	db #5d,#6f,#5d,#6f,#5d,#6f,#5d,#6f
	db #63,#71,#63,#71,#63,#71,#63,#71
	db #61,#53,#61,#53,#61,#53,#61,#53
	db #67,#75,#67,#75,#67,#75,#67,#75
	db #5d,#6f,#5d,#6f,#5d,#6f,#5d,#ae
	db #60,#03,#a0,#e0,#00,#00,#02,#02
	db #61,#02,#61,#02,#61,#02,#67,#02
	db #67,#02,#67,#02,#67,#02,#5d,#02
	db #5d,#02,#5d,#02,#5d,#02,#63,#02
	db #63,#02,#63,#02,#63,#02,#61,#02
	db #61,#02,#61,#02,#61,#02,#67,#02
	db #67,#02,#67,#02,#67,#02,#5d,#02
	db #5d,#02,#5d,#02,#5d,#00,#aa,#e0
	db #00,#00,#01,#79,#6b,#79,#6b,#79
	db #67,#75,#63,#71,#63,#71,#63,#71
	db #63,#71,#63,#71,#63,#71,#63,#71
	db #63,#71,#aa,#e0,#00,#00,#03,#02
	db #6b,#02,#6b,#02,#67,#02,#63,#02
	db #63,#02,#63,#02,#63,#02,#63,#02
	db #63,#02,#63,#02,#63,#00,#b8,#e0
	db #00,#00,#02,#02,#79,#02,#79,#02
	db #79,#02,#7f,#02,#7f,#02,#7f,#02
	db #7f,#02,#75,#02,#75,#02,#75,#02
	db #75,#02,#7b,#02,#7b,#02,#7b,#02
	db #7b,#02,#79,#02,#79,#02,#79,#02
	db #79,#02,#7f,#02,#7f,#02,#7f,#02
	db #7f,#02,#75,#02,#75,#02,#75,#02
	db #75,#00,#b4,#e0,#00,#00,#01,#83
	db #71,#7f,#6f,#7b,#63,#71,#67,#75
	db #63,#71,#61,#6f,#5f,#6b,#5d,#42
	db #00,#5d,#42,#00,#84,#60,#03,#42
	db #00,#45,#00,#cc,#e0,#00,#00,#03
	db #02,#89,#02,#87,#02,#7b,#02,#7f
	db #02,#7b,#02,#79,#02,#77,#02,#75
	db #02,#75,#02,#5d,#02,#5d,#00,#a0
	db #e0,#00,#00,#01,#02,#61,#04,#61
	db #04,#4f,#02,#4f,#0a,#45,#02,#45
	db #0a,#4b,#02,#4b,#0a,#49,#02,#49
	db #0a,#4f,#02,#4f,#0a,#45,#02,#45
	db #02,#84,#60,#03,#02,#45,#00,#88
	db #e0,#00,#00,#04,#02,#49,#04,#49
	db #04,#37,#02,#37,#0a,#2d,#02,#2d
	db #0a,#33,#02,#33,#0a,#31,#02,#31
	db #0a,#37,#02,#37,#0a,#2d,#02,#2d
	db #02,#3b,#02,#45,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
	ds #0500-$,#00
;
.l0500
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#2d,#00,#10,#05,#19,#05
	db #00,#00,#00,#00,#00,#00,#0d,#12
	db #05,#01,#00,#3e,#3f,#3a,#3b,#36
	db #39,#32,#37,#2e,#34,#2a,#31,#26
	db #30,#22,#2e,#1e,#2d,#1a,#2a,#16
	db #27,#12,#26,#0c,#08,#04,#0d,#12
	db #05,#01,#00,#00,#00,#49,#05,#00
	db #4a,#05,#4f,#05,#53,#05,#01,#3f
	db #05,#00,#a2,#e0,#00,#00,#01,#42
	db #80,#00,#00,#42,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0560
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#6d,#00,#74,#05,#7d,#05
	db #b2,#05,#c5,#05,#00,#00,#00,#00
	db #00,#00,#0d,#76,#05,#01,#00,#3c
	db #38,#34,#30,#30,#2c,#2c,#2c,#28
	db #28,#28,#28,#28,#28,#24,#24,#24
	db #20,#20,#20,#20,#20,#20,#20,#1c
	db #1c,#18,#18,#18,#18,#18,#18,#18
	db #14,#10,#10,#10,#10,#0c,#0c,#0c
	db #0c,#0c,#0c,#08,#08,#04,#04,#0d
	db #76,#05,#01,#00,#36,#23,#3c,#38
	db #34,#30,#2c,#28,#24,#20,#1c,#18
	db #14,#10,#0d,#76,#05,#01,#00,#3c
	db #38,#34,#30,#2c,#28,#24,#20,#1c
	db #18,#14,#10,#0c,#08,#04,#0d,#76
	db #05,#38,#00,#00,#00,#e9,#05,#00
	db #ea,#05,#19,#06,#57,#06,#01,#df
	db #05,#00,#8a,#e0,#00,#00,#01,#42
	db #00,#02,#4b,#04,#45,#02,#41,#04
	db #41,#04,#45,#49,#41,#04,#41,#04
	db #49,#02,#45,#0a,#45,#49,#4b,#04
	db #4b,#04,#45,#02,#41,#04,#41,#04
	db #45,#49,#41,#04,#41,#04,#49,#42
	db #00,#a0,#e0,#00,#00,#02,#53,#61
	db #53,#61,#53,#61,#53,#67,#75,#67
	db #75,#67,#75,#67,#75,#5d,#6f,#5d
	db #6f,#5d,#6f,#5d,#6f,#63,#71,#63
	db #71,#63,#71,#63,#71,#61,#53,#61
	db #53,#61,#53,#61,#53,#67,#75,#67
	db #75,#67,#75,#67,#75,#5d,#6f,#5d
	db #6f,#5d,#6f,#5d,#ae,#60,#03,#aa
	db #e0,#00,#00,#02,#02,#6b,#02,#6b
	db #02,#6b,#02,#71,#02,#71,#02,#71
	db #02,#71,#02,#67,#02,#67,#02,#67
	db #02,#67,#02,#6d,#02,#6d,#02,#6d
	db #02,#6d,#02,#6b,#02,#6b,#02,#6b
	db #02,#6b,#02,#71,#02,#71,#02,#71
	db #02,#71,#02,#67,#02,#67,#02,#67
	db #02,#67,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l06a0
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#21,#00,#b0,#06,#b9,#06
	db #00,#00,#00,#00,#00,#00,#0d,#b2
	db #06,#01,#00,#3c,#38,#34,#30,#2c
	db #28,#24,#20,#1c,#18,#14,#10,#0c
	db #08,#04,#0d,#b2,#06,#0a,#00,#00
	db #00,#dd,#06,#00,#de,#06,#ec,#06
	db #fa,#06,#01,#d3,#06,#00,#a2,#e0
	db #00,#00,#01,#67,#6b,#6d,#71,#75
	db #71,#6d,#6b,#67,#b0,#e0,#00,#00
	db #01,#75,#79,#7b,#7f,#7f,#83,#7b
	db #79,#75,#c8,#e0,#00,#00,#01,#02
	db #91,#02,#97,#02,#9b,#02,#91,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #c9,#ef,#cf,#cf,#df,#ef,#cf,#cf
	db #df,#8f,#0f,#0f,#4f,#8f,#0f,#0f
	db #4f,#8f,#0f,#0f,#4f,#8f,#5f,#af
	db #4f,#8f,#af,#5f,#4f,#df,#0f,#0f
	db #ef,#8f,#5f,#af,#4f,#8f,#af,#5f
	db #4f,#df,#0f,#0f,#ef,#8f,#0f,#0f
	db #4f,#8f,#0f,#0f,#4f,#8f,#0f,#0f
	db #4f,#ef,#cf,#cf,#df,#ef,#cf,#cf
	db #df,#fa,#f0,#f0,#f5,#fa,#f0,#f0
	db #f5,#e4,#cc,#cc,#d8,#e4,#dd,#ee
	db #d8,#f5,#dd,#ee,#fa,#e4,#ee,#dd
	db #d8,#e4,#dd,#ee,#d8,#e4,#dd,#ee
	db #d8,#e4,#dd,#ee,#d8,#e4,#dd,#ee
	db #d8,#e4,#dd,#ee,#d8,#e4,#ee,#dd
	db #d8,#f5,#cc,#cc,#fa,#e4,#cc,#cc
	db #d8,#fa,#f0,#f0,#f5,#fa,#f0,#f0
	db #f5,#00,#00,#00,#00,#00,#ff,#00
	db #a7,#50,#02,#ff,#00,#a7,#1e,#02
	db #23,#8f,#2d,#02,#ff,#00,#8f,#50
	db #02,#ff,#00,#8f,#19,#02,#1e,#a7
	db #2d,#02,#ff,#00,#a7,#1e,#02,#32
	db #a7,#1e,#02,#23,#8f,#08,#02,#ff
	db #00,#a7,#32,#02,#37,#8f,#0f,#02
	db #ff,#00,#8f,#1b,#02,#25,#77,#2b
	db #02,#ff,#32,#a7,#1e,#02,#21,#8f
	db #0b,#02,#00,#77,#16,#02,#ff,#00
	db #a7,#1b,#02,#35,#a7,#1e,#02,#ff
	db #00,#8f,#19,#02,#26,#77,#0e,#02
	db #37,#5f,#05,#02,#ff,#28,#a7,#28
	db #02,#23,#77,#05,#02,#00,#5f,#16
	db #02,#ff,#00,#a7,#50,#02,#1e,#77
	db #37,#02,#ff,#00,#00,#00,#00,#00
	db #00,#00,#c9,#10,#30,#30,#20,#00
	db #64,#4e,#0f,#1a,#00,#64,#cc,#cc
	db #8d,#20,#64,#cd,#cf,#30,#00,#64
	db #cf,#65,#20,#00,#64,#cd,#cf,#20
	db #00,#10,#65,#cf,#20,#00,#00,#30
	db #30,#20,#00,#00,#30,#30,#00,#00
	db #10,#61,#ba,#20,#00,#10,#ba,#d7
	db #20,#00,#30,#75,#30,#30,#30,#61
	db #30,#ff,#ba,#30,#30,#30,#30,#30
	db #20,#00,#75,#ba,#10,#00,#00,#24
	db #18,#10,#00,#00,#10,#30,#30,#20
	db #00,#25,#0f,#8d,#98,#10,#4e,#cc
	db #cc,#98,#00,#30,#cf,#ce,#98,#00
	db #10,#9a,#cf,#98,#00,#10,#cf,#ce
	db #98,#00,#10,#cf,#9a,#20,#00,#10
	db #30,#30,#00,#00,#00,#30,#30,#00
	db #00,#10,#75,#92,#20,#00,#10,#eb
	db #75,#20,#30,#30,#30,#ba,#30,#30
	db #75,#ff,#30,#92,#10,#30,#30,#30
	db #30,#00,#20,#75,#ba,#00,#00,#20
	db #24,#18,#00,#00,#c9,#00,#61,#ba
	db #00,#00,#00,#61,#ba,#00,#00,#00
	db #10,#d7,#20,#00,#00,#10,#61,#ba
	db #00,#00,#10,#61,#ba,#00,#00,#75
	db #75,#20,#00,#10,#eb,#75,#20,#00
	db #10,#61,#75,#20,#00,#10,#90,#24
	db #30,#00,#00,#60,#60,#0c,#20,#00
	db #10,#30,#30,#00,#00,#61,#ba,#20
	db #00,#00,#61,#ba,#92,#00,#30,#61
	db #ba,#d7,#20,#60,#61,#ba,#ff,#20
	db #60,#61,#ba,#30,#00,#10,#61,#ba
	db #00,#00,#00,#75,#ba,#00,#00,#10
	db #d7,#20,#00,#00,#10,#18,#20,#00
	db #00,#10,#84,#18,#00,#00,#10,#30
	db #20,#00,#00,#00,#61,#ba,#00,#00
	db #00,#61,#ba,#00,#00,#00,#61,#ba
	db #00,#00,#00,#10,#d7,#20,#00,#00
	db #10,#d7,#20,#00,#00,#61,#ba,#00
	db #00,#10,#d7,#30,#20,#00,#60,#18
	db #61,#ba,#00,#24,#20,#10,#18,#20
	db #24,#20,#10,#84,#18,#10,#00,#10
	db #30,#20,#00,#61,#ff,#20,#00,#00
	db #30,#61,#ba,#00,#30,#30,#c3,#ff
	db #20,#60,#49,#ff,#30,#20,#60,#75
	db #30,#00,#00,#24,#30,#ba,#00,#00
	db #10,#61,#ba,#00,#00,#00,#61,#ba
	db #00,#00,#00,#24,#30,#00,#00,#00
	db #60,#0c,#20,#00,#00,#30,#30,#00
	db #00,#00,#00,#75,#92,#00,#00,#00
	db #75,#92,#00,#00,#10,#eb,#20,#00
	db #00,#75,#92,#20,#00,#00,#75,#92
	db #20,#00,#00,#10,#ba,#ba,#00,#00
	db #10,#ba,#d7,#20,#00,#10,#ba,#92
	db #20,#00,#30,#18,#60,#20,#10,#0c
	db #90,#90,#00,#00,#30,#30,#20,#00
	db #00,#10,#75,#92,#00,#00,#61,#75
	db #92,#00,#10,#eb,#75,#92,#30,#10
	db #ff,#75,#92,#90,#00,#30,#75,#92
	db #90,#00,#00,#75,#92,#20,#00,#00
	db #75,#ba,#00,#00,#00,#10,#eb,#20
	db #00,#00,#10,#24,#20,#00,#00,#24
	db #48,#20,#00,#00,#10,#30,#20,#00
	db #00,#75,#92,#00,#00,#00,#75,#92
	db #00,#00,#00,#75,#92,#00,#00,#10
	db #eb,#20,#00,#00,#10,#eb,#20,#00
	db #00,#00,#75,#92,#00,#00,#10,#30
	db #eb,#20,#00,#75,#92,#24,#90,#10
	db #24,#20,#10,#18,#24,#48,#20,#10
	db #18,#10,#30,#20,#00,#20,#00,#10
	db #ff,#92,#00,#00,#75,#92,#30,#00
	db #10,#ff,#c3,#30,#30,#10,#30,#ff
	db #86,#90,#00,#00,#30,#ba,#90,#00
	db #00,#75,#30,#18,#00,#00,#75,#92
	db #20,#00,#00,#75,#92,#00,#00,#00
	db #30,#18,#00,#00,#10,#0c,#90,#00
	db #00,#00,#30,#30,#00,#00,#00,#00
	db #c9,#15,#00,#00,#00,#51,#a2,#00
	db #00,#3f,#3f,#00,#00,#22,#11,#22
	db #00,#8a,#00,#cf,#00,#2a,#00,#15
	db #2a,#2a,#00,#00,#2a,#a2,#00,#51
	db #a2,#f3,#00,#51,#a2,#59,#f3,#f3
	db #00,#0c,#04,#08,#00,#0c,#00,#00
	db #00,#0c,#00,#00,#00,#c0,#00,#00
	db #00,#c0,#80,#00,#00,#c0,#80,#00
	db #00,#00,#15,#2a,#00,#00,#51,#a2
	db #00,#00,#3f,#00,#00,#00,#33,#00
	db #00,#00,#cf,#00,#00,#15,#3f,#00
	db #00,#15,#3f,#00,#00,#51,#f3,#00
	db #00,#f3,#f3,#a2,#00,#a6,#04,#f3
	db #00,#0c,#00,#0c,#00,#0c,#00,#04
	db #08,#0c,#00,#04,#08,#c0,#00,#40
	db #80,#c0,#00,#40,#80,#c0,#00,#c0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#15,#3f
	db #00,#00,#3f,#15,#2a,#00,#a2,#00
	db #a2,#00,#00,#51,#a2,#00,#51,#a6
	db #a2,#00,#0c,#00,#08,#04,#08,#00
	db #08,#04,#00,#00,#08,#40,#00,#40
	db #80,#40,#80,#c0,#00,#00,#c0,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
; #727d - reallocated by Megachur
;
;
.play_music
;
	push ix
	push iy
	xor a
	ld (#727b),a
.l7286 equ $ + 1
	ld a,#01
	dec a
	jp nz,l7459
.l728c equ $ + 1
	ld a,#01
	dec a
	jr nz,l72ff
.l7291 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l72a6
	ld a,(#727c)
	inc a
	ld (#727c),a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l72a6
	rra
	jr nc,l72ae
	ld de,l734f
	ldi
.l72ae
	rra
	jr nc,l72b6
	ld de,l73b4
	ldi
.l72b6
	rra
	jr nc,l72be
	ld de,l7419
	ldi
.l72be
	ld de,l732e
	ldi
	ldi
	ld de,l7393
	ldi
	ldi
	ld de,l73f8
	ldi
	ldi
	rra
	jr nc,l72db
	ld de,l72fe
	ldi
.l72db
	rra
	jr nc,l72e6
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l72ea),de
.l72e6
	ld (l7291),hl
.l72ea equ $ + 1
	ld hl,#0000
	ld (l7308),hl
	ld a,#01
	ld (l7303),a
	ld (l7329),a
	ld (l738e),a
	ld (l73f3),a
.l72fe equ $ + 1
	ld a,#01
.l72ff
	ld (l728c),a
.l7303 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7325
.l7308 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l7322
	srl a
	jr nz,l7316
	ld a,(hl)
	inc hl
.l7316
	jr nc,l731d
	ld (#727b),a
	jr l7320
.l731d
	ld (l7458),a
.l7320
	ld a,#01
.l7322
	ld (l7308),hl
.l7325
	ld (l7303),a
.l7329 equ $ + 1
	ld a,#01
	dec a
	jr nz,l738a
.l732e equ $ + 1
	ld hl,#0000
	call l782c
	ld (l732e),hl
	jr c,l738a
	ld a,d
	rra
	jr nc,l7341
	and #0f
	ld (l7531),a
.l7341
	rl d
	jr nc,l7349
	ld (l751f),ix
.l7349
	rl d
	jr nc,l7388
	ld a,e
.l734f equ $ + 1
	add #00
	ld (l7530),a
	ld hl,#0000
	ld (l751c),hl
	rl d
	jr c,l7368
.l735e equ $ + 1
	ld hl,#0000
	ld a,(l7541)
	ld (l7539),a
	jr l7385
.l7368
	ld l,b
	add hl,hl
.l736b equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l7541),a
	ld (l7539),a
	ld a,(hl)
	or a
	jr z,l7381
	ld (l764e),a
.l7381
	inc hl
	ld (l735e),hl
.l7385
	ld (l7533),hl
.l7388
	ld a,#01
.l738a
	ld (l7329),a
.l738e equ $ + 1
	ld a,#01
	dec a
	jr nz,l73ef
.l7393 equ $ + 1
	ld hl,#0000
	call l782c
	ld (l7393),hl
	jr c,l73ef
	ld a,d
	rra
	jr nc,l73a6
	and #0f
	ld (l74d2),a
.l73a6
	rl d
	jr nc,l73ae
	ld (l74c0),ix
.l73ae
	rl d
	jr nc,l73ed
	ld a,e
.l73b4 equ $ + 1
	add #00
	ld (l74d1),a
	ld hl,#0000
	ld (l74bd),hl
	rl d
	jr c,l73cd
.l73c3 equ $ + 1
	ld hl,#0000
	ld a,(l74e2)
	ld (l74da),a
	jr l73ea
.l73cd
	ld l,b
	add hl,hl
.l73d0 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l74e2),a
	ld (l74da),a
	ld a,(hl)
	or a
	jr z,l73e6
	ld (l764e),a
.l73e6
	inc hl
	ld (l73c3),hl
.l73ea
	ld (l74d4),hl
.l73ed
	ld a,#01
.l73ef
	ld (l738e),a
.l73f3 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7454
.l73f8 equ $ + 1
	ld hl,#0000
	call l782c
	ld (l73f8),hl
	jr c,l7454
	ld a,d
	rra
	jr nc,l740b
	and #0f
	ld (l7476),a
.l740b
	rl d
	jr nc,l7413
	ld (l7464),ix
.l7413
	rl d
	jr nc,l7452
	ld a,e
.l7419 equ $ + 1
	add #00
	ld (l7475),a
	ld hl,#0000
	ld (l7461),hl
	rl d
	jr c,l7432
.l7428 equ $ + 1
	ld hl,#0000
	ld a,(l7486)
	ld (l747e),a
	jr l744f
.l7432
	ld l,b
	add hl,hl
.l7435 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l7486),a
	ld (l747e),a
	ld a,(hl)
	or a
	jr z,l744b
	ld (l764e),a
.l744b
	inc hl
	ld (l7428),hl
.l744f
	ld (l7478),hl
.l7452
	ld a,#01
.l7454
	ld (l73f3),a
.l7458 equ $ + 1
	ld a,#01
.l7459
	ld (l7286),a
	ld iy,l7665
.l7461 equ $ + 1
	ld hl,#0000
.l7464 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l7461),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l7476 equ $ + 2
.l7475 equ $ + 1
	ld de,#0000
.l7478 equ $ + 1
	ld hl,#0000
	call l7670
.l747e equ $ + 1
	ld a,#01
	dec a
	jr nz,l7487
	ld (l7478),hl
.l7486 equ $ + 1
	ld a,#06
.l7487
	ld (l747e),a
.l748a
	ld de,#0000
	exx
	ld de,#0000
.l7492 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l74b5
	ld a,#01
	ld (l779f),a
	call l7670
	xor a
	ld (l779f),a
	ld a,l
	or h
	jr z,l74ad
.l74a9 equ $ + 1
	ld a,#01
	dec a
	jr nz,l74b2
.l74ad
	ld (l7492),hl
	ld a,#06
.l74b2
	ld (l74a9),a
.l74b5
	ld a,lx
	ex af,af'
	ld iy,l7663
.l74bd equ $ + 1
	ld hl,#0000
.l74c0 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l74bd),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l74d2 equ $ + 2
.l74d1 equ $ + 1
	ld de,#0000
.l74d4 equ $ + 1
	ld hl,#0000
	call l7670
.l74da equ $ + 1
	ld a,#01
	dec a
	jr nz,l74e3
	ld (l74d4),hl
.l74e2 equ $ + 1
	ld a,#06
.l74e3
	ld (l74da),a
.l74e6
	ld de,#0000
	exx
	ld de,#0000
.l74ee equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l7511
	ld a,#01
	ld (l779f),a
	call l7670
	xor a
	ld (l779f),a
	ld a,l
	or h
	jr z,l7509
.l7505 equ $ + 1
	ld a,#01
	dec a
	jr nz,l750e
.l7509
	ld (l74ee),hl
	ld a,#06
.l750e
	ld (l7505),a
.l7511
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l7661
.l751c equ $ + 1
	ld hl,#0000
.l751f equ $ + 1
	ld de,#0000
	add hl,de
	ld (l751c),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l7531 equ $ + 2
.l7530 equ $ + 1
	ld de,#0000
.l7533 equ $ + 1
	ld hl,#0000
	call l7670
.l7539 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7542
	ld (l7533),hl
.l7541 equ $ + 1
	ld a,#06
.l7542
	ld (l7539),a
.l7545
	ld de,#0000
	exx
	ld de,#0000
.l754d equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l7570
	ld a,#01
	ld (l779f),a
	call l7670
	xor a
	ld (l779f),a
	ld a,l
	or h
	jr z,l7568
.l7564 equ $ + 1
	ld a,#01
	dec a
	jr nz,l756d
.l7568
	ld (l754d),hl
	ld a,#06
.l756d
	ld (l7564),a
.l7570
	ex af,af'
	or lx
.l7573
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l7661
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
.l764e equ $ + 1
	cp #ff
	ret z
	ld (l764e),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l7661
	nop
	nop
.l7663
	nop
	nop
.l7665
	nop
	nop
.l7667
	nop
.l7668
	nop
	nop
	nop
	nop
	nop
.l766d
	nop
	nop
.l766f
	nop
.l7670
	ld b,(hl)
	inc hl
	rr b
	jp c,l76ce
	rr b
	jr c,l769e
	ld a,b
	and #0f
	jr nz,l7687
	ld (iy+#07),a
	ld lx,#09
	ret
.l7687
	ld lx,#08
	sub d
	jr nc,l768e
	xor a
.l768e
	ld (iy+#07),a
	rr b
	call l7800
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l769e
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l76ae
	ld (l7667),a
	ld lx,#00
.l76ae
	ld a,b
	and #0f
	sub d
	jr nc,l76b5
	xor a
.l76b5
	ld (iy+#07),a
	bit 5,c
	jr nz,l76bf
	inc lx
	ret
.l76bf
	rr b
	bit 6,c
	call l77f2
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l76ce
	rr b
	jr nc,l76e1
	ld a,(l7539)
	ld c,a
	ld a,(l7541)
	cp c
	jr nz,l76e1
	ld a,#fe
	ld (l764e),a
.l76e1
	bit 1,b
	jp nz,l779a
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l766f),a
	bit 0,b
	jr z,l7750
	bit 2,b
	call l77f2
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l7710),a
	ld a,b
	exx
.l7710 equ $ + 1
	jr l7711
.l7711
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
	jr nc,l7730
	inc hl
.l7730
	bit 5,a
	jr z,l7740
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
.l7740
	ld (l766d),hl
	exx
.l7744
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l7667),a
	ld lx,#00
	ret
.l7750
	bit 2,b
	call l77f2
	ld (l766d),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l7764),a
	ld a,b
	exx
.l7764 equ $ + 1
	jr l7765
.l7765
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
	jr z,l7791
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
.l7791
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l7744
.l779a
	bit 0,b
	jr z,l77ae
.l779f equ $ + 1
	ld a,#00
	or a
	jr z,l77a7
	ld hl,#0000
	ret
.l77a7
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l7670
.l77ae
	ld (iy+#07),#10
	bit 5,b
	jr nz,l77bb
	ld lx,#09
	jr l77ce
.l77bb
	ld lx,#08
	ld hx,e
	bit 2,b
	call l77f2
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l77ce
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l766f),a
	rr b
	rr b
	bit 2,b
	call l77f2
	ld (l766d),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l7667),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l77f2
	jr z,l7800
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
.l7800
	bit 4,b
	jr z,l7810
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
.l7810
	ld a,e
	bit 3,b
	jr z,l781d
	add (hl)
	inc hl
	cp #90
	jr c,l781d
	ld a,#8f
.l781d
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l7860
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l782c
	ld a,(hl)
	inc hl
	srl a
	jr c,l7853
	sub #20
	jr c,l785d
	jr z,l784f
	dec a
	ld e,a
.l783a
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l7848
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l7848
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l784f
	ld e,(hl)
	inc hl
	jr l783a
.l7853
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l785d
	add #20
	ret
.l7860
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
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
;
.real_init_music
;
	xor a
	ld (#727c),a
	ld hl,#0009
	add hl,de
	ld de,l7458
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l736b),hl
	ld (l73d0),hl
	ld (l7435),hl
	add hl,bc
	ld de,l72fe
	ldi
	ld de,l734f
	ldi
	ld de,l73b4
	ldi
	ld de,l7419
	ldi
	ld de,l72ea
	ldi
	ldi
	ld (l7291),hl
	ld a,#01
	ld (l7286),a
	ld (l728c),a
	ld a,#ff
	ld (l766f),a
	ld hl,(l736b)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l7533),hl
	ld (l74d4),hl
	ld (l7478),hl
	ret
	push ix
	push iy
	ld hl,l7668
	ld bc,#0500
.l79ea
	ld (hl),c
	inc hl
	djnz l79ea
	ld a,#3f
	jp l7573
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	rrca
	jp c,l7a08
	rrca
	jp c,l7a04
	ld hl,(l7492)
	ret
.l7a04
	ld hl,(l74ee)
	ret
.l7a08
	ld hl,(l754d)
	ret
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,#000c
	add hl,de
	ld (l7a67),hl
	ld hl,#0000
	ld (l754d),hl
	ld (l74ee),hl
	ld (l7492),hl
	ret
	ld (l7a83),ix
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
	jp c,l7a4f
	rrca
	jp c,l7a48
	ld ix,l748a
	jp l7a53
.l7a48
	ld ix,l74e6
	jp l7a53
.l7a4f
	ld ix,l7545
.l7a53
	ld (ix+#01),c
	ld (ix+#02),b
	ld a,e
	ld (ix+#05),a
	ld a,#0f
	sub h
	ld (ix+#06),a
	ld h,#00
	add hl,hl
.l7a67 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,d
	or a
	jr nz,l7a73
	ld a,(hl)
.l7a73
	ld (ix+#27),a
	ld (ix+#1f),a
	inc hl
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
.l7a83 equ $ + 2
	ld ix,#0000
	ret
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	ld hl,#0000
	rrca
	jp nc,l7a95
	ld (l754d),hl
.l7a95
	rrca
	jp nc,l7a9c
	ld (l74ee),hl
.l7a9c
	rrca
	jp z,l7aa3
	ld (l7492),hl
.l7aa3
	ret
;
; #727d -> play!
;
; 7980 init (not used ?)
;
; #8a58
; ld de,#0560
; call #7987
;
; #8b00
; ld de,#8000 ???? - no data !!!
; call #7987
;
; #3346
; ld de,#0040
; call #7987

; #64ba
; ld de,#06a0
; call #7987
;
.init_music	 ; added by Megachur
;
	ld de,l0040
	or a
	jp z,real_init_music
;	ld de,l0500	; sound fx ?
	ld de,l0560
	dec a
	jp z,real_init_music
	ld de,l06a0
	jp real_init_music
;
.music_info
	db "Agent 006 (2017)(CpcRetroDev.ByteRealms)(Luis Gonzalez Aracil)",0
	db "StArkos",0

	read "music_end.asm"
