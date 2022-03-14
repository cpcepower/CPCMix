; Music of ReSeT 8 - ReSeT Your Party (2012)(Public Domain)(V0yager)(StArkos)
; Ripped by Megachur the 22/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RESE8RYP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000

	read "music_header.asm"

.l4000
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#fa,#01,#30,#40,#39,#40
	db #6e,#40,#75,#40,#8a,#40,#ad,#40
	db #bb,#40,#cd,#40,#d6,#40,#e7,#40
	db #00,#41,#4d,#41,#9b,#41,#b0,#41
	db #c9,#41,#d5,#41,#de,#41,#e4,#41
	db #00,#00,#00,#00,#00,#00,#0d,#32
	db #40,#01,#00,#3c,#7c,#0c,#38,#78
	db #0c,#74,#18,#34,#70,#0c,#30,#6c
	db #0c,#6c,#18,#28,#68,#0c,#24,#64
	db #0c,#60,#18,#20,#5c,#0c,#1c,#58
	db #0c,#58,#18,#14,#54,#0c,#10,#50
	db #0c,#4c,#18,#0c,#48,#0c,#08,#44
	db #0c,#44,#18,#0d,#32,#40,#01,#00
	db #05,#1a,#0d,#70,#40,#01,#00,#3e
	db #01,#36,#01,#2e,#01,#26,#01,#1e
	db #01,#16,#01,#0e,#01,#06,#01,#0d
	db #32,#40,#01,#00,#3e,#01,#3a,#01
	db #36,#01,#32,#01,#2e,#01,#2a,#01
	db #26,#01,#22,#01,#1e,#01,#1a,#01
	db #16,#01,#12,#01,#0e,#01,#0a,#01
	db #06,#01,#0d,#32,#40,#01,#00,#7e
	db #24,#09,#7c,#06,#7c,#04,#78,#02
	db #0d,#32,#40,#01,#00,#7e,#29,#0d
	db #7c,#09,#7c,#06,#76,#25,#04,#6e
	db #25,#02,#0d,#32,#40,#02,#00,#01
	db #58,#01,#6c,#0d,#cf,#40,#01,#00
	db #7c,#f4,#78,#f4,#34,#30,#2c,#28
	db #24,#20,#1c,#18,#0d,#e3,#40,#01
	db #00,#3c,#38,#74,#0c,#74,#18,#70
	db #0c,#6c,#18,#28,#24,#20,#1c,#18
	db #14,#10,#0c,#08,#04,#0d,#32,#40
	db #01,#00,#f0,#ff,#ff,#18,#f8,#ff
	db #ff,#0c,#38,#78,#0c,#74,#18,#74
	db #0c,#34,#74,#0c,#f4,#ff,#ff,#18
	db #f0,#ff,#ff,#0c,#30,#70,#0c,#70
	db #18,#70,#0c,#30,#70,#0c,#f8,#ff
	db #ff,#18,#f4,#ff,#ff,#0c,#30,#6c
	db #0c,#68,#18,#68,#0c,#28,#68,#0c
	db #f4,#ff,#ff,#18,#f0,#ff,#ff,#0c
	db #2c,#68,#0c,#64,#18,#64,#0c,#24
	db #60,#0c,#0d,#38,#41,#02,#00,#7c
	db #18,#78,#0c,#74,#18,#74,#0c,#70
	db #18,#70,#18,#70,#0c,#2c,#6c,#0c
	db #6c,#18,#6c,#18,#68,#0c,#28,#68
	db #0c,#64,#18,#64,#18,#64,#0c,#24
	db #60,#0c,#60,#18,#60,#18,#5c,#0c
	db #1c,#5c,#0c,#5c,#18,#58,#18,#58
	db #0c,#18,#54,#0c,#54,#18,#54,#18
	db #50,#0c,#10,#4c,#0c,#4c,#18,#4c
	db #18,#48,#0c,#08,#48,#0c,#44,#18
	db #0d,#32,#40,#01,#00,#7c,#24,#7c
	db #24,#74,#18,#74,#18,#38,#38,#74
	db #0c,#74,#0c,#38,#38,#0d,#a3,#41
	db #01,#00,#3c,#38,#34,#30,#2c,#28
	db #a4,#ff,#ff,#a4,#fe,#ff,#a4,#ff
	db #ff,#24,#24,#24,#24,#24,#0d,#b8
	db #41,#06,#00,#3c,#20,#30,#18,#24
	db #10,#18,#0d,#d0,#41,#02,#00,#bc
	db #10,#00,#3c,#0d,#da,#41,#01,#00
	db #3c,#0d,#e0,#41,#01,#00,#25,#48
	db #0c,#25,#48,#0c,#78,#0c,#38,#74
	db #0c,#70,#0c,#30,#6c,#f4,#2c,#68
	db #0c,#68,#18,#68,#0c,#28,#68,#18
	db #68,#f4,#28,#0d,#f7,#41,#40,#00
	db #00,#00,#ce,#42,#20,#b9,#47,#00
	db #43,#b9,#47,#ce,#42,#20,#d8,#42
	db #00,#43,#20,#43,#cc,#42,#00,#d8
	db #42,#00,#43,#20,#43,#00,#71,#43
	db #99,#43,#b9,#43,#00,#39,#44,#99
	db #43,#b9,#43,#00,#78,#44,#99,#43
	db #b9,#43,#00,#c1,#44,#00,#43,#20
	db #43,#00,#d8,#44,#00,#43,#20,#43
	db #00,#00,#45,#00,#43,#b9,#43,#00
	db #40,#45,#00,#43,#b9,#43,#00,#df
	db #45,#00,#43,#20,#43,#00,#df,#45
	db #00,#43,#23,#46,#00,#23,#46,#00
	db #43,#83,#46,#00,#9e,#45,#00,#43
	db #83,#46,#00,#9e,#45,#00,#43,#83
	db #46,#00,#c1,#44,#00,#43,#20,#43
	db #00,#d8,#44,#00,#43,#20,#43,#00
	db #e3,#46,#00,#43,#20,#43,#00,#e3
	db #46,#00,#43,#4b,#47,#00,#8f,#47
	db #00,#43,#4b,#47,#20,#8f,#47,#00
	db #43,#4b,#47,#ce,#42,#20,#8f,#47
	db #00,#43,#4b,#47,#d0,#42,#20,#c1
	db #47,#ea,#47,#0a,#48,#d2,#42,#20
	db #50,#48,#73,#48,#a6,#48,#d4,#42
	db #20,#da,#45,#97,#48,#a1,#48,#d6
	db #42,#01,#0c,#42,#15,#00,#19,#00
	db #1d,#00,#21,#00,#25,#00,#41,#00
	db #92,#e0,#00,#00,#01,#02,#7b,#06
	db #6b,#02,#79,#0e,#53,#06,#53,#06
	db #53,#02,#4f,#0a,#53,#02,#63,#06
	db #53,#02,#61,#0a,#53,#02,#59,#06
	db #5d,#02,#61,#02,#53,#06,#4f,#00
	db #7a,#e0,#00,#00,#02,#02,#23,#0a
	db #31,#06,#49,#06,#3b,#0a,#2d,#06
	db #37,#0a,#3b,#06,#33,#06,#31,#06
	db #3b,#06,#29,#0a,#31,#0a,#37,#00
	db #42,#80,#00,#00,#02,#f2,#6b,#03
	db #02,#f2,#41,#02,#f2,#4d,#f2,#41
	db #04,#f2,#6d,#04,#06,#f2,#41,#06
	db #f2,#6b,#03,#02,#f2,#41,#02,#f2
	db #4d,#f2,#41,#04,#f2,#6d,#04,#06
	db #f2,#41,#06,#f2,#6b,#03,#02,#f2
	db #41,#02,#f2,#4d,#f2,#41,#04,#f2
	db #6d,#04,#06,#f2,#41,#06,#f2,#6b
	db #03,#02,#f2,#41,#02,#f2,#4d,#f2
	db #41,#04,#f2,#6d,#04,#06,#f2,#41
	db #00,#92,#e0,#00,#00,#01,#02,#7b
	db #06,#6b,#02,#79,#0e,#53,#06,#53
	db #06,#53,#02,#4f,#0a,#53,#02,#63
	db #06,#53,#02,#61,#0a,#53,#02,#59
	db #06,#5d,#02,#61,#02,#53,#06,#4f
	db #00,#7a,#e0,#00,#00,#02,#02,#23
	db #0a,#31,#06,#49,#06,#3b,#0a,#2d
	db #06,#37,#0a,#3b,#06,#33,#06,#31
	db #06,#3b,#06,#29,#0a,#31,#0a,#37
	db #00,#72,#e1,#00,#00,#05,#02,#f2
	db #6b,#03,#02,#f2,#41,#02,#72,#60
	db #05,#f2,#60,#03,#7c,#60,#06,#02
	db #f2,#6d,#04,#02,#72,#61,#05,#72
	db #60,#06,#f2,#60,#04,#02,#72,#60
	db #05,#02,#f2,#6b,#03,#02,#f2,#41
	db #02,#7c,#60,#06,#f2,#60,#03,#7c
	db #60,#06,#02,#f2,#6d,#04,#06,#f2
	db #41,#02,#72,#60,#05,#02,#f2,#6b
	db #03,#02,#f2,#41,#02,#72,#60,#05
	db #f2,#60,#03,#7c,#60,#06,#02,#f2
	db #6d,#04,#02,#72,#61,#05,#72,#60
	db #06,#f2,#60,#04,#02,#72,#60,#05
	db #02,#f2,#6b,#03,#02,#f2,#41,#02
	db #7c,#60,#06,#f2,#60,#03,#7c,#60
	db #06,#02,#f2,#6d,#04,#06,#f2,#41
	db #00,#f2,#e1,#00,#00,#07,#02,#cb
	db #42,#00,#b3,#42,#00,#a9,#42,#00
	db #b3,#42,#00,#b9,#42,#00,#af,#42
	db #00,#a9,#42,#00,#b8,#60,#08,#06
	db #6b,#16,#f2,#60,#07,#02,#cb,#02
	db #c1,#02,#af,#02,#b3,#02,#b9,#02
	db #a5,#02,#a9,#02,#aa,#60,#08,#0a
	db #a5,#06,#af,#02,#b3,#02,#9b,#00
	db #f2,#e1,#00,#00,#07,#02,#cb,#42
	db #00,#b3,#42,#00,#a9,#42,#00,#b3
	db #42,#00,#b9,#42,#00,#af,#42,#00
	db #a9,#42,#00,#b8,#60,#08,#02,#79
	db #02,#7f,#42,#00,#04,#6b,#02,#79
	db #0a,#f2,#60,#07,#02,#cb,#02,#c1
	db #02,#af,#02,#b3,#02,#b9,#02,#a5
	db #02,#a9,#02,#aa,#60,#08,#0a,#71
	db #02,#75,#02,#79,#02,#7f,#02,#75
	db #00,#42,#80,#00,#00,#06,#aa,#60
	db #09,#0e,#6b,#0e,#6b,#0e,#6b,#0e
	db #71,#0e,#6b,#0e,#61,#0e,#67,#00
	db #b4,#e0,#00,#00,#09,#02,#79,#02
	db #6b,#0e,#6b,#0e,#6b,#02,#67,#0a
	db #6b,#06,#67,#02,#6b,#02,#71,#06
	db #67,#06,#6b,#06,#5d,#06,#61,#02
	db #59,#06,#61,#02,#67,#02,#71,#00
	db #b4,#e0,#00,#00,#09,#02,#79,#02
	db #6b,#02,#92,#60,#0a,#0a,#aa,#60
	db #09,#06,#98,#60,#0a,#06,#aa,#60
	db #09,#02,#67,#02,#a0,#60,#0b,#06
	db #aa,#60,#09,#06,#67,#02,#6b,#02
	db #71,#06,#67,#06,#6b,#06,#5d,#06
	db #61,#02,#59,#02,#92,#60,#0c,#02
	db #a0,#60,#09,#02,#67,#02,#71,#00
	db #b4,#e0,#00,#00,#09,#02,#79,#02
	db #6b,#02,#92,#60,#0a,#02,#7a,#60
	db #0c,#06,#aa,#60,#09,#02,#98,#60
	db #0c,#02,#98,#60,#0a,#06,#aa,#60
	db #09,#02,#67,#02,#a0,#60,#0b,#02
	db #88,#60,#0c,#02,#aa,#60,#09,#06
	db #67,#02,#6b,#02,#71,#02,#80,#60
	db #0c,#02,#a6,#60,#09,#02,#76,#60
	db #0c,#02,#aa,#60,#09,#02,#7a,#60
	db #0c,#02,#9c,#60,#09,#06,#61,#02
	db #59,#02,#92,#60,#0c,#02,#a0,#60
	db #09,#02,#67,#02,#71,#00,#be,#e0
	db #00,#00,#0d,#85,#7f,#02,#83,#02
	db #6d,#02,#55,#02,#3b,#02,#41,#02
	db #53,#02,#6b,#02,#79,#02,#7f,#02
	db #85,#02,#83,#02,#7f,#02,#79,#75
	db #67,#4f,#53,#06,#53,#06,#6b,#06
	db #91,#02,#9d,#02,#97,#06,#61,#02
	db #49,#02,#31,#02,#37,#02,#1f,#02
	db #59,#00,#42,#80,#00,#00,#00,#c2
	db #e5,#00,#00,#0e,#02,#97,#02,#9d
	db #02,#97,#02,#9b,#02,#97,#02,#91
	db #02,#97,#02,#83,#02,#75,#02,#79
	db #02,#7f,#02,#6b,#02,#83,#02,#7f
	db #02,#85,#02,#75,#02,#7f,#02,#91
	db #02,#6b,#02,#7f,#02,#83,#02,#75
	db #02,#79,#02,#67,#02,#79,#02,#8d
	db #02,#91,#02,#7f,#02,#89,#02,#83
	db #02,#6b,#00,#c2,#e1,#00,#00,#0d
	db #02,#97,#02,#9d,#02,#97,#c2,#60
	db #0f,#da,#60,#0d,#02,#97,#02,#91
	db #02,#97,#c2,#60,#0f,#c2,#60,#0d
	db #02,#75,#02,#79,#02,#7f,#c2,#60
	db #0f,#aa,#60,#0d,#02,#83,#02,#7f
	db #02,#85,#b4,#60,#0f,#b4,#60,#0d
	db #02,#7f,#02,#91,#02,#6b,#be,#60
	db #0f,#be,#60,#0d,#02,#83,#02,#75
	db #02,#79,#be,#60,#0f,#a6,#60,#0d
	db #02,#79,#02,#8d,#02,#91,#be,#60
	db #0f,#be,#60,#0d,#02,#89,#02,#83
	db #02,#6b,#00,#72,#e1,#00,#00,#05
	db #02,#72,#40,#02,#f2,#60,#03,#02
	db #f2,#4d,#f2,#41,#04,#72,#60,#05
	db #02,#7c,#60,#06,#02,#f2,#60,#04
	db #06,#f2,#6b,#03,#02,#f2,#41,#02
	db #f2,#4d,#f2,#41,#04,#f2,#6d,#04
	db #06,#f2,#41,#02,#72,#60,#05,#02
	db #72,#40,#02,#f2,#60,#03,#02,#f2
	db #4d,#f2,#41,#04,#f2,#6d,#04,#02
	db #7c,#61,#06,#02,#f2,#60,#04,#06
	db #f2,#6b,#03,#02,#f2,#41,#02,#f2
	db #4d,#f2,#41,#04,#f2,#6d,#04,#06
	db #f2,#41,#00,#aa,#e5,#00,#00,#10
	db #02,#83,#02,#89,#02,#7f,#02,#6b
	db #02,#83,#02,#91,#02,#7f,#02,#6b
	db #02,#83,#02,#8d,#02,#91,#42,#60
	db #00,#cc,#60,#10,#42,#60,#00,#c8
	db #60,#10,#42,#60,#00,#c6,#60,#10
	db #42,#60,#00,#be,#60,#10,#42,#60
	db #00,#92,#60,#10,#02,#6b,#02,#71
	db #02,#67,#02,#59,#02,#5d,#02,#67
	db #02,#61,#02,#4f,#02,#5d,#02,#67
	db #02,#6b,#42,#60,#00,#ae,#60,#10
	db #42,#60,#00,#b0,#60,#10,#42,#60
	db #00,#c6,#60,#10,#42,#60,#00,#a6
	db #60,#10,#87,#aa,#e9,#00,#00,#11
	db #02,#83,#02,#89,#02,#7f,#02,#6b
	db #02,#83,#02,#79,#02,#7f,#02,#6b
	db #02,#83,#02,#75,#02,#79,#02,#75
	db #02,#71,#02,#6f,#02,#67,#02,#6b
	db #02,#83,#02,#71,#02,#7f,#02,#71
	db #02,#75,#02,#6b,#02,#79,#02,#7f
	db #02,#75,#02,#67,#02,#6b,#02,#6f
	db #02,#71,#02,#87,#02,#7f,#87,#b8
	db #e5,#00,#00,#0e,#12,#aa,#60,#0f
	db #06,#53,#02,#6b,#06,#53,#06,#42
	db #60,#00,#0e,#c2,#60,#0e,#12,#aa
	db #60,#0f,#06,#53,#02,#6b,#06,#79
	db #06,#42,#60,#00,#06,#be,#60,#0e
	db #00,#42,#60,#00,#42,#80,#00,#00
	db #00,#42,#80,#00,#00,#12,#aa,#65
	db #0f,#06,#53,#02,#6b,#06,#53,#06
	db #42,#60,#00,#0e,#c2,#60,#0e,#12
	db #aa,#60,#0f,#06,#53,#02,#6b,#06
	db #79,#06,#42,#60,#00,#06,#be,#60
	db #0e,#00,#7a,#e0,#00,#00,#02,#02
	db #23,#0a,#31,#06,#49,#06,#3b,#0a
	db #2d,#06,#37,#0a,#3b,#06,#33,#06
	db #31,#06,#3b,#06,#29,#0a,#31,#0a
	db #37,#00,#aa,#e9,#00,#00,#11,#02
	db #83,#02,#89,#02,#7f,#02,#42,#60
	db #00,#06,#b8,#60,#11,#02,#7f,#02
	db #6b,#02,#83,#02,#75,#02,#42,#60
	db #00,#0a,#ae,#60,#11,#02,#67,#02
	db #6b,#02,#42,#60,#00,#06,#be,#60
	db #11,#02,#71,#02,#75,#02,#42,#60
	db #00,#0e,#a6,#60,#11,#02,#6b,#02
	db #42,#60,#00,#0a,#be,#60,#11,#87
	db #42,#80,#00,#00,#1a,#92,#60,#0f
	db #02,#6b,#06,#53,#06,#42,#60,#00
	db #0e,#c2,#60,#0e,#06,#42,#60,#00
	db #12,#92,#60,#0f,#02,#6b,#06,#42
	db #60,#00,#00,#7a,#e0,#00,#00,#02
	db #02,#23,#0a,#31,#06,#49,#06,#3b
	db #0a,#2d,#06,#37,#0a,#3b,#06,#33
	db #06,#31,#06,#3b,#06,#29,#0a,#31
	db #0a,#37,#02,#42,#60,#00,#00,#7a
	db #e0,#00,#00,#02,#26,#42,#60,#00
	db #00,#42,#80,#00,#00,#00,#aa,#e9
	db #00,#00,#11,#02,#42,#60,#00,#06
	db #be,#60,#11,#02,#42,#60,#00,#06
	db #b8,#60,#11,#02,#7f,#02,#42,#60
	db #00,#06,#b4,#60,#11,#02,#42,#60
	db #00,#0a,#ae,#60,#11,#0a,#42,#60
	db #00,#06,#be,#60,#11,#0a,#42,#60
	db #00,#0c,#42,#60,#00,#00

.l48de
	jp l4f52
.l48e1
	jp l48e8
	jp l4fa7
.l48e7
	db #00
;
.play_music
.l48e8
;
	xor a
	ld (l48e7),a
.l48ed equ $ + 1
	ld a,#01
	dec a
	jp nz,l4ab9
.l48f3 equ $ + 1
	ld a,#01
	dec a
	jr nz,l495f
.l48f8 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l4906
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l4906
	rra
	jr nc,l490e
	ld de,l49af
	ldi
.l490e
	rra
	jr nc,l4916
	ld de,l4a14
	ldi
.l4916
	rra
	jr nc,l491e
	ld de,l4a79
	ldi
.l491e
	ld de,l498e
	ldi
	ldi
	ld de,l49f3
	ldi
	ldi
	ld de,l4a58
	ldi
	ldi
	rra
	jr nc,l493b
	ld de,l495e
	ldi
.l493b
	rra
	jr nc,l4946
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l494a),de
.l4946
	ld (l48f8),hl
.l494a equ $ + 1
	ld hl,#0000
	ld (l4968),hl
	ld a,#01
	ld (l4963),a
	ld (l4989),a
	ld (l49ee),a
	ld (l4a53),a
.l495e equ $ + 1
	ld a,#01
.l495f
	ld (l48f3),a
.l4963 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4985
.l4968 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l4982
	srl a
	jr nz,l4976
	ld a,(hl)
	inc hl
.l4976
	jr nc,l497d
	ld (l48e7),a
	jr l4980
.l497d
	ld (l4ab8),a
.l4980
	ld a,#01
.l4982
	ld (l4968),hl
.l4985
	ld (l4963),a
.l4989 equ $ + 1
	ld a,#01
	dec a
	jr nz,l49ea
.l498e equ $ + 1
	ld hl,#0000
	call l4dfe
	ld (l498e),hl
	jr c,l49ea
	ld a,d
	rra
	jr nc,l49a1
	and #0f
	ld (l4b3b),a
.l49a1
	rl d
	jr nc,l49a9
	ld (l4b29),ix
.l49a9
	rl d
	jr nc,l49e8
	ld a,e
.l49af equ $ + 1
	add #00
	ld (l4b3a),a
	ld hl,#0000
	ld (l4b26),hl
	rl d
	jr c,l49c8
.l49be equ $ + 1
	ld hl,#0000
	ld a,(l4b4b)
	ld (l4b43),a
	jr l49e5
.l49c8
	ld l,b
	add hl,hl
.l49cb equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l4b4b),a
	ld (l4b43),a
	ld a,(hl)
	or a
	jr z,l49e1
	ld (l4c29),a
.l49e1
	inc hl
	ld (l49be),hl
.l49e5
	ld (l4b3d),hl
.l49e8
	ld a,#01
.l49ea
	ld (l4989),a
.l49ee equ $ + 1
	ld a,#01
	dec a
	jr nz,l4a4f
.l49f3 equ $ + 1
	ld hl,#0000
	call l4dfe
	ld (l49f3),hl
	jr c,l4a4f
	ld a,d
	rra
	jr nc,l4a06
	and #0f
	ld (l4b07),a
.l4a06
	rl d
	jr nc,l4a0e
	ld (l4af5),ix
.l4a0e
	rl d
	jr nc,l4a4d
	ld a,e
.l4a14 equ $ + 1
	add #00
	ld (l4b06),a
	ld hl,#0000
	ld (l4af2),hl
	rl d
	jr c,l4a2d
.l4a23 equ $ + 1
	ld hl,#0000
	ld a,(l4b17)
	ld (l4b0f),a
	jr l4a4a
.l4a2d
	ld l,b
	add hl,hl
.l4a30 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l4b17),a
	ld (l4b0f),a
	ld a,(hl)
	or a
	jr z,l4a46
	ld (l4c29),a
.l4a46
	inc hl
	ld (l4a23),hl
.l4a4a
	ld (l4b09),hl
.l4a4d
	ld a,#01
.l4a4f
	ld (l49ee),a
.l4a53 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4ab4
.l4a58 equ $ + 1
	ld hl,#0000
	call l4dfe
	ld (l4a58),hl
	jr c,l4ab4
	ld a,d
	rra
	jr nc,l4a6b
	and #0f
	ld (l4ad6),a
.l4a6b
	rl d
	jr nc,l4a73
	ld (l4ac4),ix
.l4a73
	rl d
	jr nc,l4ab2
	ld a,e
.l4a79 equ $ + 1
	add #00
	ld (l4ad5),a
	ld hl,#0000
	ld (l4ac1),hl
	rl d
	jr c,l4a92
.l4a88 equ $ + 1
	ld hl,#0000
	ld a,(l4ae6)
	ld (l4ade),a
	jr l4aaf
.l4a92
	ld l,b
	add hl,hl
.l4a95 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l4ae6),a
	ld (l4ade),a
	ld a,(hl)
	or a
	jr z,l4aab
	ld (l4c29),a
.l4aab
	inc hl
	ld (l4a88),hl
.l4aaf
	ld (l4ad8),hl
.l4ab2
	ld a,#01
.l4ab4
	ld (l4a53),a
.l4ab8 equ $ + 1
	ld a,#01
.l4ab9
	ld (l48ed),a
	ld iy,l4c40
.l4ac1 equ $ + 1
	ld hl,#0000
.l4ac4 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4ac1),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l4ad6 equ $ + 2
.l4ad5 equ $ + 1
	ld de,#0000
.l4ad8 equ $ + 1
	ld hl,#0000
	call l4c4b
.l4ade equ $ + 1
	ld a,#01
	dec a
	jr nz,l4ae7
	ld (l4ad8),hl
.l4ae6 equ $ + 1
	ld a,#06
.l4ae7
	ld (l4ade),a
	ld a,lx
	ex af,af'
	ld iy,l4c3e
.l4af2 equ $ + 1
	ld hl,#0000
.l4af5 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4af2),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l4b07 equ $ + 2
.l4b06 equ $ + 1
	ld de,#0000
.l4b09 equ $ + 1
	ld hl,#0000
	call l4c4b
.l4b0f equ $ + 1
	ld a,#01
	dec a
	jr nz,l4b18
	ld (l4b09),hl
.l4b17 equ $ + 1
	ld a,#06
.l4b18
	ld (l4b0f),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l4c3c
.l4b26 equ $ + 1
	ld hl,#0000
.l4b29 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4b26),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l4b3b equ $ + 2
.l4b3a equ $ + 1
	ld de,#0000
.l4b3d equ $ + 1
	ld hl,#0000
	call l4c4b
.l4b43 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4b4c
	ld (l4b3d),hl
.l4b4b equ $ + 1
	ld a,#06
.l4b4c
	ld (l4b43),a
	ex af,af'
	or lx
.l4b52
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l4c3c
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
.l4c29 equ $ + 1
	cp #ff
	ret z
	ld (l4c29),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l4c3c
	nop
	nop
.l4c3e
	nop
	nop
.l4c40
	nop
	nop
.l4c42
	nop
.l4c43
	nop
	nop
	nop
	nop
	nop
.l4c48
	nop
	nop
.l4c4a
	nop
.l4c4b
	ld b,(hl)
	inc hl
	rr b
	jp c,l4ca9
	rr b
	jr c,l4c79
	ld a,b
	and #0f
	jr nz,l4c62
	ld (iy+#07),a
	ld lx,#09
	ret
.l4c62
	ld lx,#08
	sub d
	jr nc,l4c69
	xor a
.l4c69
	ld (iy+#07),a
	rr b
	call l4dd2
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l4c79
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l4c89
	ld (l4c42),a
	ld lx,#00
.l4c89
	ld a,b
	and #0f
	sub d
	jr nc,l4c90
	xor a
.l4c90
	ld (iy+#07),a
	bit 5,c
	jr nz,l4c9a
	inc lx
	ret
.l4c9a
	rr b
	bit 6,c
	call l4dc4
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l4ca9
	rr b
	jr nc,l4cbc
	ld a,(l4b43)
	ld c,a
	ld a,(l4b4b)
	cp c
	jr nz,l4cbc
	ld a,#fe
	ld (l4c29),a
.l4cbc
	bit 1,b
	jp nz,l4d75
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l4c4a),a
	bit 0,b
	jr z,l4d2b
	bit 2,b
	call l4dc4
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l4ceb),a
	ld a,b
	exx
.l4ceb equ $ + 1
	jr l4cec
.l4cec
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
	jr nc,l4d0b
	inc hl
.l4d0b
	bit 5,a
	jr z,l4d1b
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
.l4d1b
	ld (l4c48),hl
	exx
.l4d1f
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l4c42),a
	ld lx,#00
	ret
.l4d2b
	bit 2,b
	call l4dc4
	ld (l4c48),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l4d3f),a
	ld a,b
	exx
.l4d3f equ $ + 1
	jr l4d40
.l4d40
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
	jr z,l4d6c
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
.l4d6c
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l4d1f
.l4d75
	bit 0,b
	jr z,l4d80
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l4c4b
.l4d80
	ld (iy+#07),#10
	bit 5,b
	jr nz,l4d8d
	ld lx,#09
	jr l4da0
.l4d8d
	ld lx,#08
	ld hx,e
	bit 2,b
	call l4dc4
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l4da0
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l4c4a),a
	rr b
	rr b
	bit 2,b
	call l4dc4
	ld (l4c48),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l4c42),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l4dc4
	jr z,l4dd2
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
.l4dd2
	bit 4,b
	jr z,l4de2
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
.l4de2
	ld a,e
	bit 3,b
	jr z,l4def
	add (hl)
	inc hl
	cp #90
	jr c,l4def
	ld a,#8f
.l4def
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l4e32
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l4dfe
	ld a,(hl)
	inc hl
	srl a
	jr c,l4e25
	sub #20
	jr c,l4e2f
	jr z,l4e21
	dec a
	ld e,a
.l4e0c
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l4e1a
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l4e1a
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l4e21
	ld e,(hl)
	inc hl
	jr l4e0c
.l4e25
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l4e2f
	add #20
	ret
.l4e32
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
.l4f52
;
	ld hl,#0009
	add hl,de
	ld de,l4ab8
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l49cb),hl
	ld (l4a30),hl
	ld (l4a95),hl
	add hl,bc
	ld de,l495e
	ldi
	ld de,l49af
	ldi
	ld de,l4a14
	ldi
	ld de,l4a79
	ldi
	ld de,l494a
	ldi
	ldi
	ld (l48f8),hl
	ld a,#01
	ld (l48ed),a
	ld (l48f3),a
	ld a,#ff
	ld (l4c4a),a
	ld hl,(l49cb)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l4b3d),hl
	ld (l4b09),hl
	ld (l4ad8),hl
	ret
;
.stop_music
.l4fa7
;
	ld hl,l4c43
	ld bc,#0300
.l4fad
	ld (hl),c
	inc hl
	djnz l4fad
	ld a,#3f
	jp l4b52
.l4fb6		; basic call player !
	di
	ld hl,#c9fb
	ld (#0038),hl
	ld de,#4000
	call l48de
.l4fc3
	ld b,#f5
.l4fc5
	in a,(c)
	rra
	jr nc,l4fc5
	ei
	nop
	halt
	halt
	ld bc,#7f10
	out (c),c
	ld a,#4b
	out (c),a
	call l48e1
	ld bc,#7f44
	out (c),c
	halt
	di
	ld bc,#7f54
	out (c),c
	jr l4fc3
;
; 10 MEMORY &3FFF
; 20 LOAD"VOYAGER .BIN",&4000
; 30 CALL &4FB6
;
;
.init_music
;
	ld de,l4000
	jp real_init_music
;
.music_info
	db "ReSeT 8 - ReSeT Your Party (2012)(Public Domain)(V0yager)",0
	db "StArkos",0

	read "music_end.asm"
