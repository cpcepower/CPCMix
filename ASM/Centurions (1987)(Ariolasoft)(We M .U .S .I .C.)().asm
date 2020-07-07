; Music of Centurions (1987)(Ariolasoft)(We M .U .S .I .C.)()
; Ripped by Megachur the 23/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CENTURIO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #63e0

	read "music_header.asm"

.l63e0
	db #c1,#00,#62,#01
.l63e4
	db #02,#18,#0d,#40,#0a,#0c,#05,#3c
	db #01,#0f,#11,#08,#95,#08,#95,#04
	db #95,#04,#95,#08,#1c,#a1,#01,#00
	db #95,#08,#a1,#08,#95,#08,#95,#08
	db #95,#08,#1c,#93,#01,#00,#95,#08
	db #a1,#08,#10,#06,#13,#06,#11,#00
	db #95,#08,#95,#04,#95,#04,#95,#08
	db #1c,#7d,#01,#00,#95,#08,#a1,#08
	db #95,#08,#95,#08,#95,#08,#1c,#6f
	db #01,#00,#95,#08,#a1,#08,#10,#08
	db #11,#08,#98,#08,#98,#04,#98,#04
	db #98,#08,#1c,#5b,#01,#00,#98,#08
	db #a4,#08,#98,#08,#98,#08,#98,#08
	db #1c,#4d,#01,#00,#98,#08,#a4,#08
	db #10,#08,#11,#02,#9a,#08,#9a,#04
	db #9a,#04,#9a,#08,#1c,#39,#01,#00
	db #9a,#08,#a6,#08,#9a,#08,#9a,#08
	db #9a,#08,#1c,#2b,#01,#00,#9a,#08
	db #a6,#08,#10,#06,#11,#b2,#9c,#08
	db #9c,#04,#9c,#04,#9c,#08,#1c,#17
	db #01,#00,#9c,#08,#a8,#08,#9c,#08
	db #9c,#08,#9c,#08,#1c,#09,#01,#00
	db #9c,#08,#a8,#08,#10,#02,#02,#26
	db #12,#03,#a1,#10,#1e,#01,#00,#00
.l64a5 equ $ + 1
	db #1a,#14,#07,#0f,#02,#0d,#0a,#06
	db #01,#02,#17,#0a,#49,#15,#00,#11
	db #0b,#b9,#08,#b9,#04,#b9,#04,#b9
	db #08,#b5,#08,#b5,#08,#b5,#08,#b2
	db #08,#b2,#08,#b2,#08,#b0,#08,#b0
	db #08,#b0,#08,#14,#00,#10,#02,#02
	db #19,#0a,#49,#0b,#14,#07,#02,#15
	db #00,#03,#00,#0f,#00,#11,#be,#b0
	db #08
	db #af,#08,#ad,#08,#b2,#10,#ab,#80
	db #b0,#08,#b0,#10,#10,#02,#13,#10
	db #11,#c0,#b0,#08,#af,#08,#ad,#08
	db #b2,#10,#ab,#30,#ad,#60,#b0,#08
	db #10,#04,#11,#c5,#b4,#08,#b2,#08
	db #b0,#08,#b5,#10,#ab,#80,#ab,#18
	db #10,#04,#11,#00,#b6,#08,#b4,#08
	db #b2,#08,#b7,#10,#ad,#80,#ad,#18
	db #10,#03,#15,#12,#04,#02,#11,#02
	db #ac,#08,#10,#15,#02,#2a,#a8,#08
	db #a8,#08,#a8,#08,#15,#00,#03,#00
	db #12,#03,#ad,#10,#1e,#01,#00,#00
	db #1a
.l6546
	db #0a,#0a,#0b,#0a,#07,#01,#00,#f0
	db #00,#f0,#00,#60,#02,#2e,#1c,#5c
	db #00,#01,#1c,#e5,#00,#02,#02,#69
	db #0a,#ad,#15,#12,#04,#02,#07,#05
	db #0b,#0a,#1c,#48,#00,#01,#1c,#d1
	db #00,#02,#07,#00,#02,#5b,#0a,#0a
	db #06,#02,#0f,#01,#14,#f4,#19,#0c
	db #0d,#1e,#0b,#1e,#08,#00,#0c,#01
	db #15,#00,#03,#00,#1c,#26,#00,#01
	db #1c,#af,#00,#02,#c5,#10,#1e,#01
	db #00,#00,#1a,#15,#f1,#14,#00,#05
	db #3c,#0f,#00,#08,#01,#ab,#08,#15
	db #00,#08,#00,#0f,#01,#19,#0c,#03
	db #00,#1d,#11,#20,#b9,#20,#b4,#08
	db #b9,#08,#bb,#20,#b9,#08,#bb,#08
	db #bc,#08,#bb,#08,#b9,#08,#bb,#48
	db #b9,#20,#b4,#08,#b9,#08,#bb,#18
	db #b9,#08,#bb,#08,#bc,#08,#c0,#60
	db #10,#02,#11,#20,#bc,#20,#b7,#08
	db #bc,#08,#be,#20,#bc,#08,#be,#08
	db #c0,#08,#be,#08,#bc,#08,#be,#30
	db #b7,#18,#bc,#20,#b7,#08,#bc,#08
	db #be,#18,#c0,#08,#be,#08,#bc,#08
	db #c3,#60,#10,#02,#c5,#20,#c2,#08
	db #c2,#08,#c2,#18,#c2,#08,#c0,#08
	db #be,#08,#c0,#10,#b9,#08,#b9,#48
	db #c5,#20,#c2,#08,#c2,#08,#c2,#18
	db #c2,#08,#c0,#08,#be,#08,#c0,#60
	db #c5,#20,#ca,#08,#c5,#08,#c2,#18
	db #c2,#08,#c0,#08,#be,#08,#c0,#10
	db #b9,#08,#b9,#30,#be,#18,#1d,#02
	db #18,#c0,#08,#c0,#04,#c0,#04,#11
	db #08,#c0,#08,#10,#0a,#c0,#08,#c0
	db #04,#c0,#04,#11,#08,#c0,#08,#10
	db #07,#c3,#08,#c0,#08,#c3,#08,#1d
	db #08,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#08,#09,#09,#0a,#00,#01
	db #02,#03,#04,#05,#06,#07,#0b,#0c
	db #0c,#0d,#76,#37,#30,#31,#74,#34
	db #32,#33,#38,#36,#35,#37,#76,#75
	db #74,#39,#28,#43,#44,#3e,#42,#45
	db #46,#3f,#42,#47,#48,#3f,#29,#40
	db #40,#27,#28,#49,#4a,#3e,#42,#4b
	db #46,#3f,#42,#47,#48,#3f,#29,#40
	db #40,#27,#28,#4d,#4e,#3e,#42,#4f
	db #50,#3f,#42,#47,#48,#3f,#29,#40
	db #40,#27,#28,#51,#52,#3e,#42,#53
	db #54,#3f,#42,#47,#48,#3f,#29,#40
	db #40,#27,#28,#55,#56,#3e,#42,#45
	db #46,#3f,#42,#47,#48,#3f,#29,#40
	db #40,#27,#28,#5a,#59,#3e,#42,#5b
	db #46,#3f,#42,#47,#48,#3f,#29,#40
	db #40,#27,#28,#5c,#5d,#3e,#42,#5e
	db #5f,#3f,#42,#47,#48,#3f,#29,#40
	db #40,#27,#28,#4c,#57,#3e,#42,#45
	db #46,#3f,#42,#47,#48,#3f,#29,#40
	db #40,#27,#28,#7b,#7b,#3e,#42,#7b
	db #7b,#3f,#42,#47,#48,#3f,#29,#40
	db #40,#27,#60,#60,#60,#60,#66,#61
	db #67,#68,#60,#60,#60,#60,#69,#69
	db #69,#69,#6a,#60,#60,#60,#6c,#65
	db #64,#61,#6a,#60,#60,#60,#69,#69
	db #69,#69,#6a,#60,#60,#60,#6c,#61
	db #62,#63,#6a,#60,#60,#60,#69,#69
	db #69,#69,#6e,#6f,#6e,#73,#74,#72
	db #71,#70,#6e,#73,#6e,#6f,#71,#70
	db #74,#72,#6e,#6f,#6e,#6a,#74,#72
	db #71,#6c,#6e,#73,#6e,#6a,#71,#70
	db #74,#69,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#81,#80,#80,#92,#82,#83
	db #83,#93,#82,#84,#84,#87,#82,#95
	db #95,#82,#91,#80,#80,#92,#8f,#83
	db #83,#93,#b2,#86,#86,#94,#85,#85
	db #85,#85,#8e,#97,#97,#82,#8f,#84
	db #84,#82,#b2,#86,#86,#89,#85,#85
	db #85,#85,#82,#97,#97,#82,#82,#84
	db #84,#82,#82,#84,#84,#82,#82,#95
	db #95,#82,#82,#97,#97,#8a,#82,#84
	db #84,#8b,#b1,#86,#86,#94,#8d,#85
	db #85,#85,#91,#80,#80,#8c,#8f,#83
	db #99,#82,#90,#84,#84,#82,#82,#95
	db #95,#82,#81,#80,#80,#8c,#82,#83
	db #83,#82,#82,#84,#84,#82,#82,#95
	db #95,#82,#82,#97,#97,#82,#82,#84
	db #84,#82,#b1,#86,#86,#89,#8d,#85
	db #85,#85,#91,#80,#80,#8c,#8f,#83
	db #99,#82,#b2,#86,#86,#89,#85,#85
	db #85,#85,#81,#80,#80,#92,#82,#83
	db #83,#93,#b1,#86,#86,#94,#8d,#85
	db #85,#85,#82,#97,#97,#8a,#82,#84
	db #84,#8b,#82,#84,#84,#87,#82,#95
	db #95,#82,#8e,#97,#97,#82,#8f,#84
	db #84,#82,#90,#84,#84,#82,#82,#95
	db #95,#82,#79,#78,#79,#79,#41,#41
	db #41,#41,#41,#41,#41,#41,#77,#77
	db #77,#77,#7a,#7a,#7a,#7a,#41,#41
	db #41,#41,#41,#41,#41,#41,#77,#77
	db #77,#77,#91,#80,#80,#8c,#8f,#83
	db #99,#82,#b2,#86,#86,#89,#85,#85
	db #85,#98,#81,#80,#80,#92,#82,#83
	db #83,#93,#b1,#86,#86,#94,#96,#85
	db #85,#85,#e0,#e5,#e6,#e6,#df,#dd
	db #23,#dd,#de,#e1,#23,#e1,#23,#e4
	db #e3,#e4,#e5,#e5,#e6,#db,#dd,#dc
	db #23,#da,#e1,#23,#e1,#e2,#e3,#e3
	db #e4,#22,#e2,#e5,#e6,#db,#de,#dd
	db #dc,#da,#de,#e1,#e1,#e2,#22,#e3
	db #e4,#25
.l6930
	db #7b,#00,#b0,#00,#01,#0f,#0f,#02
	db #0d,#05,#02,#17,#0a,#0a,#b9,#08
	db #b9,#04,#b9,#04,#b9,#08,#b5,#08
	db #b5,#08,#b5,#08,#b2,#08,#b2,#04
	db #b2,#04,#b2,#08,#b0,#08,#b0,#08
	db #b0,#08,#05,#37,#02,#18,#0a,#0a
	db #11,#06,#0f,#00,#95,#08,#95,#04
	db #95,#04,#95,#08,#1c,#ef,#00,#00
	db #95,#08,#a1,#08,#95,#08,#95,#08
	db #95,#08,#1c,#e1,#00,#00,#95,#08
	db #a1,#08,#10,#08,#13,#08,#11,#08
	db #98,#08,#98,#04,#98,#04,#98,#08
	db #1c,#cb,#00,#00,#98,#08,#a4,#08
	db #98,#08,#98,#08,#98,#08,#1c,#bd
	db #00,#00,#98,#08,#a4,#08,#10,#02
	db #14,#04,#12,#02,#95,#20,#1a,#02
	db #35,#0a,#49,#0b,#0a,#07,#02,#00
	db #60,#11,#9a,#b0,#08,#af,#08,#ad
	db #08,#b2,#10,#ab,#98,#10,#04,#b4
	db #08,#b2,#08,#b0,#08,#b5,#10,#ab
	db #80,#ab,#18,#02,#19,#11,#9c,#ac
	db #08,#10,#15,#a8,#08,#a8,#08,#a8
	db #08,#ad,#20,#1a,#02,#1a,#0b,#0a
	db #07,#00,#1e,#01,#00,#e0,#b9,#20
	db #b4,#08,#b9,#08,#0b,#32,#bb,#20
	db #0b,#0a,#b9,#08,#bb,#08,#bc,#08
	db #bb,#08,#b9,#08,#0b,#32,#bb,#48
	db #0b,#0a,#b9,#20,#b4,#08,#b9,#08
	db #bb,#18,#b9,#08,#bb,#08,#bc,#08
	db #0b,#32,#c0,#60,#0b,#0a,#bc,#20
	db #b7,#08,#bc,#08,#be,#20,#bc,#08
	db #be,#08,#c0,#08,#be,#08,#bc,#08
	db #0b,#32,#be,#30,#0b,#0a,#bc,#18
	db #02,#18,#c0,#08,#c0,#04,#c0,#04
	db #11,#10,#c0,#08,#10,#0a,#c0,#08
	db #c0,#04,#c0,#04,#11,#b2,#c0,#08
	db #10,#07,#c3,#08,#c0,#08,#c3,#08
	db #c5,#20,#1a,#15,#01,#08,#01,#ab
	db #08,#08,#00,#03,#00,#15,#00,#1d
	db #00,#10
.l6a6a
	db #3f,#00,#8c,#00,#01,#0f,#02,#18
	db #0a,#0c,#05,#3c,#00,#c0,#13,#08
	db #14,#00,#11,#04,#98,#08,#98,#04
	db #98,#04,#1c,#c3,#00,#00,#98,#08
	db #98,#08,#1c,#bb,#00,#00,#10,#08
	db #14,#02,#11,#37,#98,#08,#98,#04
	db #98,#04,#1c,#ab,#00,#00,#98,#08
	db #98,#08,#1c,#a3,#00,#00,#10,#08
	db #12,#ff,#1a,#14,#07,#0f,#02,#0d
	db #32,#15,#12,#04,#02,#02,#17,#0a
	db #0a,#11,#10,#b9,#08,#b9,#04,#b9
	db #04,#b9,#08,#b5,#08,#b5,#08,#b5
	db #08,#b2,#08,#b2,#08,#b2,#08,#b0
	db #08,#b0,#08,#b0,#08,#14,#00,#10
	db #02,#15,#00,#03,#00,#02,#35,#0a
	db #49,#0b,#0a,#07,#02,#0f,#00,#13
	db #35,#14,#00,#1c,#6d,#00,#01,#14
	db #02,#1c,#67,#00,#01,#12,#ff,#1a
	db #02,#36,#0a,#0a,#07,#01,#00,#60
	db #11,#b2,#98,#08,#9c,#08,#9f,#08
	db #18,#0c,#10,#04,#0b,#5a,#14,#00
	db #02,#1d,#06,#03,#13,#00,#15,#00
	db #03,#00,#1c,#57,#00,#02,#15,#12
	db #04,#02,#1c,#4f,#00,#02,#07,#00
	db #15,#00,#03,#00,#19,#0c,#08,#01
	db #1c,#41,#00,#02,#19,#f4,#0f,#01
	db #08,#00,#0d,#14,#1c,#35,#00,#02
	db #0f,#00,#12,#ff,#1a,#98,#08,#03
	db #00,#15,#02,#04,#04,#ab,#08,#15
	db #00,#03,#00,#98,#08,#98,#08,#1d
	db #11,#08,#b4,#08,#b2,#08,#b0,#08
	db #b2,#10,#b7,#38,#b4,#08,#b2,#08
	db #b0,#08,#b2,#10,#ab,#38,#10,#04
	db #1d,#11,#20,#bc,#20,#02,#3a,#b7
	db #08,#bc,#08,#02,#4a,#be,#20,#bc
	db #08,#be,#08,#c0,#08,#be,#08,#bc
	db #08,#be,#30,#b7,#18,#bc,#20,#02
	db #19,#0a,#aa,#b7,#08,#bc,#08,#0a
	db #0a,#be,#18,#c0,#08,#be,#08,#bc
	db #08,#c3,#60,#10,#02,#02,#6e,#c5
	db #20,#02,#6a,#c2,#08,#c2,#08,#c2
	db #18,#c2,#08,#c0,#08,#be,#08,#c0
	db #10,#b9,#08,#b9,#48,#02,#6e,#c5
	db #20,#02,#6a,#c2,#08,#c2,#08,#c2
	db #18,#c2,#08,#c0,#08,#be,#08,#c0
	db #60,#02,#6e,#c5,#20,#02,#6a,#be
	db #08,#c5,#08,#c2,#18,#c2,#08,#c0
	db #08,#be,#08,#c0,#10,#b9,#08,#b9
	db #30,#be,#18,#02,#6e,#c5,#20,#02
	db #6a,#c5,#08,#c5,#08,#ca,#18,#c2
	db #08,#c0,#08,#be,#08,#0b,#32,#c0
	db #60,#0b,#0a,#02,#19,#1d,#0d,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#fa,#fe
	db #fe,#fe,#fb,#ff,#ff,#ff,#fb,#ff
	db #ff,#ff,#f9,#fd,#fd,#fd,#fa,#fe
	db #fe,#fe,#fb,#fc,#fc,#fc,#fb,#fc
	db #fc,#fc,#f9,#fd,#fd,#fd,#fa,#fe
	db #fe,#fe,#fb,#f8,#f8,#f8,#fb,#f8
	db #f8,#f8,#f9,#fd,#fd,#fd,#fa,#fe
	db #fe,#fe,#f6,#f7,#f7,#f7,#f6,#f7
	db #f7,#f7,#f9,#fd,#fd,#fd,#d3,#d2
	db #d3,#d2,#d8,#20,#20,#20,#d9,#20
	db #20,#20,#d8,#20,#20,#20,#d2,#d3
	db #d3,#d2,#20,#20,#20,#20,#20,#20
	db #20,#20,#d5,#d6,#d5,#d6,#d3,#d2
	db #d3,#ee,#20,#20,#20,#d7,#20,#20
	db #20,#d4,#20,#20,#20,#d7,#d9,#20
	db #20,#d7,#d8,#20,#20,#d4,#d9,#20
	db #20,#d7,#d8,#20,#20,#d4,#20,#20
	db #20,#d7,#20,#20,#20,#d7,#20,#20
	db #20,#d4,#d5,#d6,#d5,#ed,#d3,#d2
	db #d3,#d2,#20,#20,#20,#20,#20,#20
	db #20,#20,#d5,#d6,#d5,#d6,#d9,#20
	db #20,#20,#d8,#20,#20,#20,#d9,#20
	db #20,#20,#d5,#d5,#d6,#d5,#d9,#20
	db #20,#d4,#d8,#20,#20,#d7,#d8,#20
	db #20,#d4,#d9,#20,#20,#d7,#e7,#f4
	db #f3,#f3,#e9,#f5,#f5,#f5,#ea,#f5
	db #f5,#f5,#ea,#f5,#f5,#f5,#f4,#f3
	db #f4,#f2,#f5,#f5,#f5,#f5,#f5,#f5
	db #f5,#f5,#f5,#ec,#eb,#f5,#f2,#f3
	db #f3,#ee,#f5,#f5,#f5,#f1,#f5,#f5
	db #f5,#f1,#f5,#f5,#f5,#ef,#f5,#f5
	db #f5,#f1,#e9,#f5,#f5,#f0,#ea,#f5
	db #f5,#ef,#e9,#f5,#f5,#f0,#f5,#f5
	db #f5,#ef,#f5,#f5,#f5,#f0,#f5,#f5
	db #f5,#f1,#eb,#ec,#ec,#ed,#f2,#f4
	db #f3,#f4,#f5,#f5,#f5,#f5,#f5,#f5
	db #f5,#f5,#eb,#ec,#ec,#eb,#ea,#f5
	db #f5,#f5,#e9,#f5,#f5,#f5,#e9,#f5
	db #f5,#f5,#e8,#ec,#ec,#ec,#e9,#f5
	db #f5,#f5,#ea,#f5,#f5,#ef,#e9,#f5
	db #f5,#f0,#ea,#f5,#f5,#f0,#cb,#cb
	db #cc,#cb,#c7,#cf,#cf,#cf,#c8,#cf
	db #cf,#cf,#c7,#cf,#cf,#cf,#cc,#cb
	db #cc,#cb,#cf,#cf,#cf,#cf,#cf,#cf
	db #cf,#cf,#c9,#ca,#c9,#ca,#cb,#cc
	db #cb,#ee,#cf,#cf,#cf,#cd,#cf,#cf
	db #cf,#ce,#cf,#cf,#cf,#ce,#c8,#cf
	db #cf,#cd,#c7,#cf,#cf,#ce,#c8,#cf
	db #cf,#cd,#c7,#cf,#cf,#ce,#cf,#cf
	db #cf,#cd,#cf,#cf,#cf,#ce,#cf,#cf
	db #cf,#cd,#c9,#ca,#c9,#ed,#cb,#cc
	db #cb,#cc,#cf,#cf,#cf,#cf,#cf,#cf
	db #cf,#cf,#ca,#c9,#ca,#c9,#c7,#cf
	db #cf,#cf,#c8,#cf,#cf,#cf,#c7,#cf
	db #cf,#cf,#c8,#c9,#ca,#c9,#c7,#cf
	db #cf,#cd,#c7,#cf,#cf,#ce,#c8,#cf
	db #cf,#cd,#c8,#cf,#cf,#ce,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#9d,#a2
	db #a2,#a4,#9f,#9e,#a1,#a5,#9f,#a0
	db #a0,#a5,#a3,#85,#85,#a7,#9d,#a2
	db #a2,#a4,#9f,#a9,#aa,#a5,#9f,#a0
	db #a0,#a5,#a3,#85,#85,#a7,#9d,#b3
	db #b4,#a4,#9f,#9b,#9c,#a5,#9f,#b5
	db #b6,#a5,#a3,#85,#85,#a7,#9d,#a2
	db #a2,#a4,#9f,#a6,#a8,#a5,#9f,#a0
	db #a0,#a5,#a3,#85,#85,#a7,#9d,#a2
	db #a2,#a4,#9f,#ab,#ac,#a5,#9f,#a0
	db #a0,#a5,#a3,#85,#85,#a7,#9d,#a2
	db #a2,#a4,#9f,#ad,#ae,#a5,#9f,#a0
	db #a0,#a5,#a3,#85,#85,#a7,#9d,#a2
	db #a2,#a4,#9f,#af,#ba,#a5,#9f,#a0
	db #a0,#a5,#a3,#85,#85,#a7,#9d,#a2
	db #a2,#a4,#9f,#bb,#bc,#a5,#9f,#a0
	db #a0,#a5,#a3,#85,#85,#a7,#00,#7c
	db #00,#7c,#20,#06,#15,#20,#08,#00
	db #00,#20,#c8,#08,#00,#01,#00,#85
	db #00,#7c,#20,#06,#15,#20,#08,#00
	db #00,#20,#c8,#08,#00,#01,#20,#20
	db #20,#20,#20,#06,#15,#20,#20,#20
	db #20,#20,#20,#20,#20,#00,#20,#20
	db #20,#20,#20,#06,#15,#20,#20,#20
	db #20,#20,#20,#20,#20,#00,#20,#20
	db #20,#20,#20,#06,#15,#20,#20,#20
	db #20,#20,#20,#20,#20,#00,#20,#20
	db #20,#20,#20,#06,#15,#20,#20,#20
	db #20,#20,#20,#20,#20,#00,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#00
.music_end
.l7000
	db #00
	jp l7046	;play
;	ld l,(ix+#00)	; modified by Megachur
;	ld h,(ix+#01)
	defs 3,0
;
.init_music	;700a
;
	ld hl,l63e0	; added by Megachur
	push hl
	ld hl,l7796
	ld de,l7797
	ld bc,#0092
	ld (hl),#00
	ldir
	pop hl
	ld (l7712),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld a,l
	ld (l77ad),a
	ld a,h
	ld (l77ae),a
	push hl
	add hl,de
	ld a,l
	ld (l77de),a
	ld a,h
	ld (l77df),a
	pop hl
	add hl,bc
	ld a,l
	ld (l780f),a
	ld a,h
	ld (l7810),a
	ld a,#01
	ld (l7000),a
	ret
;
.play_music
.l7046
;
	ld a,(l7000)
	or a
	ret z
	xor a
	ld (l7715),a
	ld ix,l7796
	call l706b
	ld a,#01
	ld (l7715),a
	ld ix,l77c7
	call l706b
	ld a,#02
	ld (l7715),a
	ld ix,l77f8
.l706b
	ld a,(ix+#00)
	or (ix+#13)
	jr z,l70a6
	ld c,(ix+#00)
	ld b,(ix+#13)
	dec bc
	ld (ix+#00),c
	ld (ix+#13),b
	ld a,(ix+#2e)
	or a
	jr z,l7089
	dec (ix+#2e)
.l7089
	ld a,(ix+#12)
	or a
	jr z,l7094
	dec (ix+#12)
	jr l709a
.l7094
	ld a,(ix+#14)
	ld (ix+#12),a
.l709a
	ld a,(ix+#08)
	or a
	jr z,l70a8
	dec a
	ld (ix+#08),a
	jr l70bd
.l70a6
	jr l7103
.l70a8
	ld a,(ix+#0a)
	or a
	jr z,l70b4
	dec a
	ld (ix+#0a),a
	jr l70bd
.l70b4
	ld a,(ix+#09)
	ld (ix+#0a),a
	inc (ix+#0b)
.l70bd
	ld a,(ix+#01)
	and #03
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l7732
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	call l715e
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(ix+#01)
	srl a
	srl a
	srl a
	and #07
	ld b,a
	call nz,l73ad
	ld a,(ix+#01)
	rlca
	rlca
	and #03
	ld b,a
	call nz,l72c9
	call l72fd
	ld a,(ix+#02)
	and #03
	call nz,l736b
	call l71a4
	call l715f
	ret
.l7103
	ld a,(l7000)
	or a
	ret z
	ld a,(ix+#16)
	ld (ix+#24),a
	ld l,(ix+#17)
	ld h,(ix+#18)
	ld a,(hl)
	or a
	jp z,l7401
	bit 7,a
	jp nz,l7414
	cp #1f
	jp nc,l7146
	push hl
	pop iy
	dec a
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l773a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	call l715e
	ld l,(ix+#17)
	ld h,(ix+#18)
	inc hl
	inc hl
	ld (ix+#17),l
	ld (ix+#18),h
	jr l7103
.l7146
	ld l,(ix+#17)
	ld h,(ix+#18)
	inc hl
	inc hl
	ld (ix+#17),l
	ld (ix+#18),h
	jp l706b
;
.stop_music
.l7157
;
	xor a
	ld (l7000),a
	jp l2d13
.l715e
	jp (hl)
.l715f
	ld a,(ix+#28)
	bit 7,a
	ld c,#00
	jr z,l716a
	ld c,#ff
.l716a
	add l
	ld l,a
	ld a,h
	adc c
	ld h,a
	ld a,(l7715)
	add a
	ld e,a
	ld c,l
	call l2d17
	ld a,e
	inc a
	ld c,h
	call l2d17
	ld a,(ix+#06)
	ld c,a
	ld a,(l7715)
	add #08
	call l2d17
	bit 2,(ix+#02)
	jr z,l7198
	ld c,(ix+#20)
	ld a,#06
	call l2d17
.l7198
	ld a,(l7714)
	or #80
	ld c,a
	ld a,#07
	call l2d17
	ret
.l71a4
	call l71c6
	ld a,(ix+#0c)
	or (ix+#0d)
	call z,l7204
	bit 2,(ix+#02)
	call nz,l71e4
	bit 3,(ix+#02)
	call nz,l721e
	bit 4,(ix+#02)
	call nz,l7209
	ret
.l71c6
	ld a,(l7715)
	ld d,#08
	ld e,#01
.l71cd
	or a
	jr z,l71d7
	dec a
	rlc d
	rlc e
	jr l71cd
.l71d7
	ld a,e
	xor #ff
	ld e,a
	ld a,(l7714)
	and e
	or d
	ld (l7714),a
	ret
.l71e4
	ld a,(ix+#0c)
	or (ix+#0d)
	ret z
	ld a,(l7715)
	ld d,#08
.l71f0
	or a
	jr z,l71f8
	dec a
	rlc d
	jr l71f0
.l71f8
	ld a,d
	xor #ff
	ld d,a
	ld a,(l7714)
	and d
	ld (l7714),a
	ret
.l7204
	or a
	ld (ix+#06),a
	ret
.l7209
	ld a,(l7715)
	ld d,#01
.l720e
	or a
	jr z,l7216
	dec a
	rlc d
	jr l720e
.l7216
	ld a,(l7714)
	or d
	ld (l7714),a
	ret
.l721e
	push hl
	ld b,#06
.l7221
	srl h
	rr l
	djnz l7221
	ld a,l
	pop hl
	ld (ix+#20),a
	ret
.l722d
	dec (ix+#27)
	ret nz
	ld a,(ix+#25)
	ld (ix+#27),a
	ld a,(ix+#04)
	srl a
	srl a
	srl a
	srl a
	add (ix+#06)
	cp (ix+#03)
	jr c,l7254
	inc (ix+#01)
	ld a,(ix+#03)
	ld (ix+#27),#01
.l7254
	ld (ix+#06),a
	ret
.l7258
	dec (ix+#27)
	ret nz
	ld a,(ix+#26)
	ld (ix+#27),a
	ld a,(ix+#04)
	and #0f
	ld b,a
	ld c,(ix+#05)
	srl c
	srl c
	srl c
	srl c
	ld a,(ix+#03)
	cp c
	jr nc,l727a
	ld c,a
.l727a
	ld a,(ix+#06)
	sub b
	jr c,l7283
	cp c
	jr nc,l7287
.l7283
	inc (ix+#01)
	ld a,c
.l7287
	ld (ix+#06),a
	ret
.l728b
	ld a,(ix+#2e)
	or a
	ret nz
	inc (ix+#01)
	ld (ix+#27),#01
	ret
.l7298
	dec (ix+#27)
	ret nz
	ld a,(ix+#11)
	ld (ix+#27),a
	ld a,(ix+#05)
	and #0f
	ld b,a
	ld a,(ix+#06)
	sub b
	ld (ix+#06),a
	ret nc
	ld (ix+#06),#00
	ret
.l72b5
	ld a,(ix+#01)
	xor #04
	ld (ix+#01),a
	and #04
	ret z
	ld a,(ix+#02)
	xor #20
	ld (ix+#02),a
	ret
.l72c9
	ld a,(ix+#0a)
	or a
	call z,l72b5
	ld a,b
	cp #03
	jr nz,l72e0
	ld a,(ix+#01)
	and #04
	ret z
	srl h
	rr l
	ret
.l72e0
	ld a,(ix+#01)
	and #04
	ret z
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	ld a,b
	cp #02
	ret nz
	ld a,(ix+#02)
	and #20
	ret z
	ld l,(ix+#2c)
	ld h,(ix+#2d)
	ret
.l72fd
	ld a,(ix+#0b)
	and #07
	jr nz,l7318
	ld a,(ix+#19)
	add (ix+#22)
	ld (ix+#19),a
	cp (ix+#21)
	jr c,l7318
	ld a,(ix+#21)
	ld (ix+#19),a
.l7318
	ld a,(ix+#12)
	or a
	ret nz
	ld a,(ix+#02)
	rlc a
	rlc a
	inc a
	and #03
	ld c,a
	rrc a
	rrc a
	ld b,a
	ld a,(ix+#02)
	and #3f
	or b
	ld (ix+#02),a
	ld a,c
	bit 0,a
	ret z
	and #03
	cp #02
	jr c,l7346
	ld a,(ix+#19)
	add l
	ld l,a
	ret
.l7346
	ld a,l
	sub (ix+#19)
	ld l,a
	ret
.l734c
	push af
	ld a,(ix+#30)
	and #f0
	jr z,l7365
	srl a
	srl a
	srl a
	or #01
	ld (ix+#20),a
	res 3,(ix+#02)
	pop af
	ret
.l7365
	set 3,(ix+#02)
	pop af
	ret
.l736b
	call l734c
	cp #01
	jr z,l7397
	ld a,(ix+#24)
	or a
	jr z,l73a4
	dec (ix+#24)
	cp (ix+#16)
	jr z,l73a4
.l7380
	set 2,(ix+#02)
	bit 2,(ix+#30)
	ret z
	set 4,(ix+#02)
	ret
.l738e
	ld a,(ix+#30)
	xor #08
	ld (ix+#30),a
	ret
.l7397
	ld a,(ix+#0a)
	or a
	call z,l738e
	bit 3,(ix+#30)
	jr z,l7380
.l73a4
	res 2,(ix+#02)
	res 4,(ix+#02)
	ret
.l73ad
	ld a,(ix+#08)
	or a
	ret nz
	ld a,b
	cp #01
	jr z,l73d2
	ld e,(ix+#10)
	ld d,#00
	cp #03
	jr nz,l73ca
	ld a,e
	cpl
	add #01
	ld e,a
	ld a,d
	cpl
	adc #00
	ld d,a
.l73ca
	add hl,de
	ld (ix+#0c),l
	ld (ix+#0d),h
	ret
.l73d2
	push hl
	ld c,(ix+#10)
	ld b,#00
	ld e,(ix+#0e)
	ld d,(ix+#0f)
	or a
	sbc hl,de
	pop hl
	ret z
	jr c,l73f1
	or a
	sbc hl,bc
	push hl
	or a
	sbc hl,de
	pop hl
	jr nc,l73fa
	jr l73f9
.l73f1
	add hl,bc
	push hl
	or a
	sbc hl,de
	pop hl
	jr c,l73fa
.l73f9
	ex de,hl
.l73fa
	ld (ix+#0c),l
	ld (ix+#0d),h
	ret
.l7401
	ld (ix+#0c),#00
	ld (ix+#0d),#00
.l7409
	inc hl
	ld a,(hl)
	ld (ix+#00),a
	call l74b0
	jp l7146
.l7414
	push hl
	res 7,a
	add (ix+#15)
	ld b,(ix+#29)
	ld c,(ix+#23)
	ld (ix+#23),b
	ld (ix+#29),c
	call l7472
	ld b,(ix+#29)
	ld c,(ix+#23)
	ld (ix+#23),b
	ld (ix+#29),c
	ld b,(ix+#0e)
	ld (ix+#2c),b
	ld b,(ix+#0f)
	ld (ix+#2d),b
	call l7472
	ld b,#00
.l7446
	cp #0c
	jr c,l744f
	sub #0c
	inc b
	jr l7446
.l744f
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l7716
	add hl,de
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld a,b
	or a
	jr z,l7409
.l7465
	srl (ix+#0d)
	rr (ix+#0c)
	djnz l7465
	jp l7409
.l7472
	push af
	ld a,(ix+#29)
	or a
	jr z,l74a8
	pop af
	push af
	add (ix+#29)
.l747e
	ld b,#00
.l7480
	cp #0c
	jr c,l7489
	sub #0c
	inc b
	jr l7480
.l7489
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l7716
	add hl,de
	ld a,(hl)
	ld (ix+#0e),a
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	ld a,b
	or a
	jr z,l74a8
.l749e
	srl (ix+#0f)
	rr (ix+#0e)
	djnz l749e
.l74a8
	pop af
	ret
.l74aa
	ld a,(iy+#01)
	push af
	jr l747e
.l74b0
	ld (ix+#06),#00
	ld a,(ix+#07)
	ld (ix+#08),a
	ld a,(ix+#01)
	and #fc
	ld (ix+#01),a
	ld (ix+#27),#01
	ld a,(ix+#2f)
	ld (ix+#2e),a
	ld a,(ix+#16)
	ld (ix+#24),a
	ld a,(ix+#22)
	or a
	ret z
	xor a
	ld (ix+#19),a
	ret
.l74dc
	ld a,(iy+#01)
	bit 7,a
	jr z,l74e9
	and #0f
	ld (ix+#03),a
	ret
.l74e9
	push ix
	and #0f
	ld ix,l7796
	ld (ix+#03),a
	ld ix,l77c7
	ld (ix+#03),a
	ld ix,l77f8
	ld (ix+#03),a
	pop ix
	ret
.l7505
	push hl
	push de
	push bc
	ld a,(iy+#01)
	srl a
	srl a
	srl a
	srl a
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l7776
	add hl,de
	ld c,(hl)
	sla c
	sla c
	sla c
	sla c
	inc hl
	ld a,(hl)
	ld (ix+#25),a
	ld a,(iy+#01)
	and #0f
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l7776
	add hl,de
	ld a,(hl)
	and #0f
	or c
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	ld (ix+#27),#01
	pop bc
	pop de
	pop hl
	ret
.l754a
	ld a,(iy+#01)
	or a
	jr z,l755c
	set 2,(ix+#02)
	cp #20
	jr nc,l7565
	ld (ix+#20),a
	ret
.l755c
	ld a,(ix+#02)
	and #03
	ld (ix+#02),a
	ret
.l7565
	set 3,(ix+#02)
	cp #21
	ret c
	set 4,(ix+#02)
	bit 6,a
	ret z
	res 6,a
	res 4,a
	ld (ix+#20),a
	ret
.l757b
	ld a,(iy+#01)
	ld (ix+#13),a
	ret
.l7582
	ld a,(iy+#01)
	ld (ix+#16),a
	ld (ix+#24),a
	ret
.l758c
	ld a,(iy+#01)
	ld (ix+#09),a
	ld (ix+#0a),a
	ret
.l7596
	ld a,(iy+#01)
	ld (ix+#14),a
	ld (ix+#12),a
	ret
.l75a0
	ld a,(iy+#01)
	and #03
	rrca
	rrca
	ld b,a
	ld a,(ix+#01)
	and #3f
	or b
	ld (ix+#01),a
	ret
.l75b2
	ld a,(iy+#01)
	ld (ix+#07),a
	ret
.l75b9
	ld a,(iy+#01)
	and #f0
	ld (ix+#05),a
	push hl
	push de
	push bc
	ld a,(iy+#01)
	and #0f
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l7776
	add hl,de
	ld c,(hl)
	inc hl
	ld a,(hl)
	ld (ix+#11),a
	ld a,(ix+#05)
	or c
	ld (ix+#05),a
	pop bc
	pop de
	pop hl
	ret
.l75e2
	ld a,(iy+#01)
	cpl
	srl a
	srl a
	srl a
	srl a
	srl a
	srl a
	ld (ix+#19),a
	ld (ix+#21),a
	ret
.l75f9
	ld a,(iy+#01)
	sra a
	sra a
	ld (ix+#22),a
	ret
.l7604
	ld a,(iy+#01)
	ld (ix+#10),a
	ret
.l760b
	ld a,(iy+#01)
	and #07
	ld b,a
	sla b
	sla b
	sla b
	ld a,(ix+#01)
	and #c7
	or b
	ld (ix+#01),a
	ret
.l7621
	ld a,(ix+#1c)
	or a
	jr nz,l762a
	ld a,(iy+#01)
.l762a
	dec a
	ld (ix+#1c),a
	ret z
	ld a,(ix+#1a)
	ld (ix+#17),a
	ld a,(ix+#1b)
	ld (ix+#18),a
	ret
.l763c
	ld a,(ix+#17)
	ld (ix+#1a),a
	ld a,(ix+#18)
	ld (ix+#1b),a
	ret
.l7649
	ld a,(ix+#1f)
	or a
	jr nz,l7652
	ld a,(iy+#01)
.l7652
	dec a
	ld (ix+#1f),a
	ret z
	ld a,(ix+#1d)
	ld (ix+#17),a
	ld a,(ix+#1e)
	ld (ix+#18),a
	ret
.l7664
	ld a,(ix+#17)
	ld (ix+#1d),a
	ld a,(ix+#18)
	ld (ix+#1e),a
	ret
.l7671
	ld a,(iy+#01)
	ld (ix+#15),a
	ret
.l7678
	ld a,(iy+#01)
	ld (ix+#28),a
	ret
.l767f
	ld a,(iy+#01)
	push ix
	ld c,a
	ld ix,l7796
	add (ix+#03)
	ld (ix+#03),a
	ld a,c
	ld ix,l77c7
	add (ix+#03)
	ld (ix+#03),a
	ld a,c
	ld ix,l77f8
	add (ix+#03)
	ld (ix+#03),a
	pop ix
	ret
.l76a8
	ld a,(iy+#01)
	ld (ix+#30),a
	and #03
	ld c,a
	ld a,(ix+#02)
	and #fc
	or c
	ld (ix+#02),a
	ret
.l76bb
	ld a,(iy+#01)
	add (ix+#15)
	ld (ix+#15),a
	ret
.l76c5
	ld a,(iy+#01)
	ld (ix+#29),a
	ret
.l76cc
	ld a,(iy+#01)
	ld (ix+#23),a
	ret
.l76d3
	ld a,(iy+#01)
	ld (ix+#2e),a
	ld (ix+#2f),a
	ret
.l76dd
	ld l,(ix+#17)
	ld h,(ix+#18)
	inc hl
	inc hl
	inc hl
	inc hl
	ld (ix+#2a),l
	ld (ix+#2b),h
	ld l,(ix+#17)
	ld h,(ix+#18)
	ld e,(iy+#01)
	ld d,(iy+#02)
	add hl,de
	dec hl
	dec hl
	ld (ix+#17),l
	ld (ix+#18),h
	ret
.l7703
	ld l,(ix+#2a)
	ld h,(ix+#2b)
	dec hl
	dec hl
	ld (ix+#17),l
	ld (ix+#18),h
	ret
.l7712
	dw l63e0
.l7716 equ $ + 2
.l7715 equ $ + 1
.l7714
	dw #0000,#0edd,#0e07,#0d3e
	dw #0c80,#0bcc,#0b23,#0a83
	dw #09ec,#095d,#08d6,#0857
	dw #07e0
	db #44,#41,#54,#41	;"DATA"
.l7732
	dw l722d,l7258,l728b,l7298
.l773a
	dw l74dc,l7505,l754a,l7582
	dw l74aa,l758c,l7596,l75a0
	dw l75b2,l75b9,l75e2,l75f9
	dw l7604,l76cc,l760b,l7621
	dw l763c,l7649,l7664,l7671
	dw l76a8,l7678,l767f,l76bb
	dw l76c5,l7157,l76d3,l76dd
	dw l7703,l757b
.l7776
	db #00,#00,#0f,#01,#0d,#01,#0b,#01
	db #09,#01,#07,#01,#05,#01,#03,#01
	db #02,#01,#01,#01,#01,#0a,#01,#1e
	db #01,#46,#01,#6e,#01,#b4,#01,#f0
.l7797 equ $ + 1
.l7796
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
.l77ae equ $ + 1
.l77ad
	dw 0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l77c7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
.l77df equ $ + 1
.l77de
	dw 0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l77f8
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
.l780f
	db 0
.l7810
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2d13
	ld a,#07
	ld c,#bf
.l2d17
	di
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	ei
	ret
;
;ld hl,l63e0	;&6930 &6a6a
;call init_music
;
; #2cb9
;ld a,(#7000)
;or a
;ret nz
;jp #700a	; init music
;
.music_info
	db "Centurions (1987)(Ariolasoft)(We M .U .S .I .C.)",0
	db "",0

	read "music_end.asm"
