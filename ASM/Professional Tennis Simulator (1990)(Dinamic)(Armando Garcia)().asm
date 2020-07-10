; Music of Professional Tennis Simulator (1990)(Dinamic)(Armando Garcia)()
; Ripped by Megachur the 18/10/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PROFFETS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #c000
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

.lc007 equ $ + 7
.lc006 equ $ + 6
.lc005 equ $ + 5
.lc004 equ $ + 4
.lc003 equ $ + 3
	db #be,#be,#be,#ff,#07,#08,#ff,#ff
.lc00a equ $ + 2
.lc009 equ $ + 1
.lc008
	db #00,#ff,#d1,#c0,#10,#c0,#83,#c1
	db #9c,#00,#bb,#00,#09,#01,#00,#01
	db #02,#00,#03,#04,#00,#06,#02,#00
	db #03,#04,#08,#09,#0a,#0b,#03,#0c
	db #0e,#06,#0f,#0b,#03,#0c,#10,#09
	db #0f,#0b,#03,#0c,#0e,#06,#0f,#0b
	db #03,#0c,#0e,#06,#0f,#0b,#03,#0c
	db #10,#11,#12,#0b,#15,#16,#18,#19
	db #08,#1a,#1b,#0b,#1c,#1d,#0e,#1e
	db #1b,#0b,#1f,#20,#21,#23,#1b,#24
	db #25,#1d,#26,#27,#1b,#28,#29,#20
	db #2a,#2c,#1b,#2d,#2f,#30,#01,#31
	db #1b,#1a,#32,#1d,#33,#34,#1b,#1a
	db #35,#36,#37,#38,#1b,#39,#3a,#1d
	db #3b,#3c,#1b,#3d,#3f,#36,#40,#1a
	db #1b,#0b,#1c,#1d,#0e,#1e,#1b,#0b
	db #1f,#20,#21,#23,#1b,#24,#25,#1d
	db #26,#27,#1b,#28,#29,#20,#2a,#2c
	db #1b,#2d,#08,#44,#0d,#0b,#03,#0d
	db #0e,#06,#0d,#0b,#03,#0d,#0e,#06
	db #0d,#0b,#03,#0d,#0e,#45,#46,#0b
	db #49,#16,#05,#07,#0d,#0d,#0d,#0d
	db #0d,#13,#14,#17,#0d,#0d,#22,#0d
	db #2b,#2e,#0d,#0d,#0d,#3e,#41,#0d
	db #0d,#42,#0d,#43,#0d,#0d,#0d,#47
	db #48,#a8,#00,#ac,#00,#00,#01,#4a
	db #4b,#00,#4c,#4d,#4e,#4f,#50,#00
	db #51,#52,#4e,#53,#54,#00,#4c,#4d
	db #4e,#55,#56,#00,#57,#58,#59,#5a
	db #5b,#5c,#5d,#5e,#5f,#60,#61,#62
	db #64,#65,#66,#67,#68,#62,#69,#6a
	db #5f,#6b,#6c,#6d,#6e,#6f,#70,#5a
	db #71,#72,#5d,#5e,#73,#60,#61,#74
	db #64,#65,#76,#67,#68,#77,#69,#6a
	db #78,#6b,#6c,#79,#6e,#6f,#7a,#7b
	db #7c,#7d,#4c,#5e,#7e,#4f,#7c,#7f
	db #51,#80,#81,#53,#7c,#82,#4c,#5e
	db #81,#55,#83,#84,#57,#85,#86,#7b
	db #00,#87,#4c,#00,#88,#4f,#00,#87
	db #51,#00,#88,#53,#00,#87,#4c,#00
	db #88,#55,#00,#87,#89,#8a,#8b,#7b
	db #8d,#00,#4c,#4d,#4e,#4f,#50,#00
	db #51,#52,#4e,#53,#54,#00,#4c,#4d
	db #4e,#55,#56,#00,#57,#58,#59,#00
	db #8e,#7d,#00,#8f,#90,#00,#91,#92
	db #00,#8f,#93,#00,#91,#94,#00,#8f
	db #95,#00,#91,#92,#96,#97,#98,#63
	db #75,#8c,#99,#54,#00,#5c,#00,#86
	db #00,#00,#9a,#00,#00,#9b,#00,#00
	db #9b,#00,#00,#9b,#00,#9d,#9b,#9e
	db #9f,#9b,#9e,#a0,#a1,#a2,#a3,#9b
	db #a2,#a5,#a6,#a7,#a8,#9b,#a7,#a9
	db #aa,#9e,#9f,#9b,#9e,#9f,#9b,#9e
	db #9f,#9b,#9e,#a0,#a1,#a2,#a3,#9b
	db #a2,#a5,#a6,#a7,#a8,#9b,#a7,#a9
	db #aa,#9e,#9f,#9b,#9e,#ae,#9b,#9e
	db #af,#9b,#9e,#b0,#a1,#a2,#b2,#9b
	db #a2,#b3,#a6,#a7,#b4,#9b,#a7,#b6
	db #aa,#9e,#b7,#9b,#9e,#9c,#a4,#ab
.lc1e3 equ $ + 3
	db #ac,#ad,#b1,#b5,#b8,#0d,#c2,#16
	db #c2,#27,#c2,#36,#c2,#3f,#c2,#4c
	db #c2,#a9,#c2,#ba,#c2,#cb,#c2,#06
	db #c3,#47,#c3,#8a,#c3,#a3,#c3,#ba
	db #c3,#d5,#c3,#f0,#c3,#09,#c4,#26
	db #c4,#53,#c4,#80,#c4,#04,#36,#6f
	db #37,#5c,#38,#4a,#39,#38,#08,#5f
	db #df,#53,#5f,#4d,#2f,#28,#4f,#00
	db #9c,#e0,#f9,#e0,#f6,#e0,#f2,#07
	db #e0,#ff,#e0,#ff,#e0,#fd,#e0,#fb
	db #e0,#f9,#e0,#f7,#e0,#f5,#04,#56
	db #8f,#57,#6c,#59,#4a,#5a,#28,#06
	db #e0,#fc,#e0,#fa,#e0,#f9,#e0,#f7
	db #e0,#f5,#e0,#f3,#2e,#ea,#ff,#ea
	db #ff,#ea,#ff,#eb,#ff,#eb,#ff,#eb
	db #fe,#eb,#fe,#eb,#fe,#eb,#fd,#eb
	db #fd,#eb,#fc,#eb,#fc,#eb,#fc,#eb
	db #fb,#eb,#fa,#eb,#fa,#eb,#fa,#eb
	db #fa,#eb,#fa,#eb,#f9,#eb,#f9,#eb
	db #f9,#eb,#f9,#eb,#f8,#eb,#f8,#eb
	db #f8,#eb,#f7,#eb,#f7,#eb,#f7,#eb
	db #f7,#eb,#f6,#eb,#f6,#eb,#f6,#eb
	db #f6,#eb,#f5,#eb,#f5,#eb,#f5,#eb
	db #f5,#eb,#f4,#eb,#f4,#eb,#f4,#eb
	db #f4,#eb,#f3,#eb,#f3,#eb,#f3,#eb
	db #f3,#08,#ee,#fd,#ee,#fc,#ef,#fa
	db #f0,#f7,#f1,#f5,#f1,#f4,#e0,#f3
	db #e0,#f2,#08,#e5,#fd,#e5,#fd,#e5
	db #fb,#e5,#f9,#e5,#f8,#e5,#f8,#e5
	db #f7,#e5,#f7,#9d,#3b,#f0,#36,#f0
	db #3b,#e0,#40,#e0,#3b,#d0,#36,#d0
	db #3b,#c0,#40,#c0,#3b,#b0,#36,#b0
	db #3b,#a0,#40,#a0,#3b,#90,#36,#90
	db #3b,#80,#40,#80,#40,#70,#3b,#70
	db #36,#60,#3b,#60,#40,#50,#3b,#50
	db #36,#40,#3b,#40,#40,#30,#3b,#30
	db #36,#20,#3b,#20,#40,#10,#a0,#35
	db #f0,#30,#f0,#35,#e0,#3a,#e0,#35
	db #d0,#30,#d0,#35,#c0,#3a,#c0,#35
	db #b0,#30,#b0,#35,#a0,#3a,#a0,#35
	db #90,#30,#90,#35,#80,#3a,#80,#35
	db #70,#30,#70,#35,#60,#3a,#60,#35
	db #50,#30,#50,#35,#40,#3a,#40,#35
	db #30,#30,#30,#35,#20,#3a,#20,#35
	db #10,#30,#80,#35,#80,#3a,#80,#a1
	db #42,#f0,#3d,#f0,#42,#e0,#47,#e0
	db #42,#d0,#3d,#d0,#42,#c0,#47,#c0
	db #42,#b0,#3d,#b0,#42,#a0,#47,#a0
	db #42,#90,#3d,#90,#42,#80,#47,#80
	db #42,#70,#3d,#70,#42,#60,#47,#60
	db #42,#50,#3d,#50,#42,#40,#47,#40
	db #42,#30,#3d,#30,#42,#20,#47,#20
	db #42,#10,#3d,#80,#42,#80,#47,#80
	db #3c,#80,#8c,#07,#fb,#07,#eb,#07
	db #db,#07,#cb,#07,#bb,#07,#ab,#07
	db #9b,#07,#8b,#07,#7b,#07,#6b,#07
	db #5b,#07,#4b,#8b,#b3,#f7,#b3,#e7
	db #b3,#d7,#b3,#c7,#b3,#b7,#b3,#a7
	db #b3,#97,#b3,#87,#b3,#77,#b3,#67
	db #b3,#57,#8d,#ff,#ff,#ff,#ef,#ff
	db #df,#ff,#cf,#ff,#bf,#ff,#af,#ff
	db #9f,#ff,#8f,#ff,#7f,#ff,#6f,#ff
	db #5f,#ff,#4f,#ff,#3f,#8d,#e1,#fb
	db #d7,#eb,#cd,#db,#c3,#cb,#b9,#bb
	db #af,#ab,#a5,#9b,#9b,#8b,#91,#7b
	db #87,#6b,#7e,#5b,#74,#4b,#6a,#3b
	db #8c,#80,#f8,#8b,#db,#7c,#bb,#6d
	db #9b,#5e,#7b,#4f,#5b,#40,#5b,#31
	db #4b,#31,#4b,#31,#4b,#31,#3b,#31
	db #3b,#0e,#e2,#f3,#e2,#f4,#e2,#f5
	db #e2,#f6,#e2,#f7,#e2,#f9,#e2,#fa
	db #e2,#fc,#f9,#ff,#f9,#fe,#f9,#fc
	db #f9,#f8,#f9,#f5,#f9,#f2,#16,#e2
	db #f3,#e2,#f4,#e2,#f5,#e2,#f6,#e2
	db #f7,#e2,#f9,#e2,#fa,#e2,#fb,#e2
	db #fc,#e2,#fc,#e2,#fc,#e2,#fc,#f9
	db #fe,#f9,#ff,#f9,#fd,#f9,#fa,#f9
	db #f9,#f9,#f7,#f9,#f3,#f9,#f2,#f9
	db #f2,#f9,#f1,#16,#e2,#f3,#e2,#f4
	db #e2,#f5,#e2,#f6,#e2,#f7,#e2,#f9
	db #e2,#fa,#e2,#fb,#e2,#fc,#e2,#fc
	db #e2,#fc,#e2,#fc,#f9,#fe,#f9,#ff
	db #f9,#fd,#e0,#fa,#e0,#f9,#e0,#f7
	db #e0,#f3,#e0,#f2,#e0,#f2,#e0,#f1
	db #18,#e2,#f3,#e2,#f4,#e2,#f5,#e2
	db #f6,#e2,#f7,#e2,#f9,#e2,#fa,#e2
	db #fb,#e2,#fc,#e2,#fc,#e2,#fc,#e2
	db #fc,#e2,#f0,#e2,#f0,#e2,#f0,#e2
	db #f0,#fc,#fe,#fd,#ff,#fe,#fe,#e0
	db #f9,#e0,#f6,#e0,#f3,#e0,#f2,#e0
.lc4b1 equ $ + 1
	db #f1,#0f,#0e,#0b,#0a,#09,#00,#00
	db #00,#08,#09,#0b,#0b,#0b,#0a,#0a
	db #09,#0f,#0e,#0c,#0a,#09,#07,#06
	db #05,#08,#07,#07,#06,#06,#05,#05
	db #04,#0b,#0d,#0b,#08,#0a,#08,#05
	db #07,#06,#07,#08,#07,#07,#07,#07
	db #06,#0d,#0c,#0b,#0a,#07,#05,#04
	db #00,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #00,#09,#08,#08,#07,#05,#01,#00
	db #00,#07,#06,#06,#05,#05,#04,#04
	db #03
.lc501
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#04,#08,#10,#10,#08,#04,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ec,#00,#00,#00,#00,#00,#00,#00
	db #00,#0c,#f4,#0c,#f4,#0c,#f4,#0c
	db #00,#0c,#00,#00,#0c,#00,#f4,#f4
	db #18,#f4,#f4,#0c,#0c,#f4,#f4,#0c
	db #00,#ff,#fe,#fd,#fc,#fb,#fa,#f9
.lc551
	db #ff,#ff,#ff,#ff,#ff,#ff,#cd,#04
	db #10,#41,#00,#10,#bb,#fb,#3f,#bf
	db #fb,#3f,#41,#04,#1b,#15,#06,#d0
	db #bb,#fb,#3f,#bf,#fb,#ef,#34,#7a
	db #40,#00,#00,#00,#4d,#04,#10,#41
	db #00,#10,#00,#00,#03,#d1,#ca,#40
	db #cd,#06,#d0,#75,#00,#13,#5d,#04
	db #10,#41,#00,#10,#bb,#fb,#3f,#bf
	db #fa,#bf,#15,#06,#c5,#41,#b1,#50
	db #bb,#fa,#bf,#bf,#fb,#ef,#00,#00
	db #00,#00,#00,#00,#79,#06,#d0,#75
	db #00,#13,#bb,#fa,#bf,#bf,#fa,#bf
	db #49,#06,#d0,#75,#00,#13,#5d,#04
	db #10,#41,#00,#16,#bb,#fa,#bf,#bf
	db #ff,#eb,#00,#00,#00,#00,#39,#00
	db #d2,#79,#00,#d2,#79,#03,#00,#c7
	db #91,#01,#d7,#de,#ae,#ba,#ab,#ae
	db #aa,#ea,#49,#cf,#67,#29,#27,#00
	db #d5,#04,#10,#41,#00,#10,#b4,#74
	db #10,#bc,#00,#10,#41,#04,#10,#10
	db #c1,#0c,#b8,#04,#1b,#bd,#5b,#ef
	db #09,#07,#10,#41,#04,#00,#b8,#e4
	db #10,#bc,#00,#10,#40,#06,#c5,#10
	db #c1,#0c,#19,#07,#10,#41,#06,#c5
	db #b8,#24,#10,#bc,#00,#10,#69,#04
	db #d0,#55,#00,#37,#00,#00,#00,#c0
	db #30,#03,#40,#00,#00,#01,#03,#8f
	db #21,#0d,#c8,#43,#72,#10,#05,#06
	db #d0,#41,#07,#48,#79,#05,#10,#4d
	db #00,#00,#40,#00,#00,#01,#03,#43
	db #01,#04,#1d,#31,#05,#03,#09,#04
	db #10,#6d,#07,#48,#3d,#07,#10,#6d
	db #07,#8f,#00,#00,#00,#00,#00,#c9
	db #43,#ff,#ff,#ff,#ff,#ff,#41,#80
	db #00,#00,#00,#00,#40,#31,#7f,#67
	db #29,#00,#cd,#06,#d0,#75,#00,#00
	db #b4,#04,#10,#bc,#00,#10,#70,#40
	db #42,#14,#43,#04,#39,#07,#10,#6d
	db #00,#00,#09,#07,#10,#41,#00,#10
	db #74,#31,#42,#08,#c1,#0c,#19,#07
	db #10,#6d,#00,#00,#b4,#24,#10,#bc
	db #00,#10,#19,#07,#10,#41,#00,#14
	db #c0,#c2,#cd,#30,#40,#e0,#41,#c4
	db #1b,#14,#43,#04,#39,#07,#10,#6d
	db #07,#4c,#39,#07,#10,#41,#00,#10
	db #41,#44,#13,#41,#54,#16,#41,#04
	db #10,#2c,#20,#cd,#00,#00,#00,#00
	db #00,#b4,#dd,#04,#10,#41,#00,#10
	db #81,#06,#d0,#75,#00,#13,#76,#90
	db #00,#00,#00,#00,#30,#0c,#00,#c0
	db #00,#00,#00,#00,#32,#50,#00,#00
	db #41,#04,#10,#41,#00,#10,#4d,#04
	db #10,#41,#00,#18,#00,#00,#00,#00
	db #00,#2b,#00,#00,#00,#39,#00,#d2
	db #79,#00,#d2,#79,#03,#49,#00,#b6
	db #94,#01,#d4,#5f,#db,#f0,#0b,#14
	db #20,#80,#88,#0a,#40,#a8,#0a,#40
	db #fc,#0f,#c0,#3b,#f3,#bf,#00,#0a
	db #40,#3c,#00,#69,#ff,#ff,#ff,#ff
	db #fa,#7f,#37,#f0,#0b,#14,#20,#40
	db #34,#0a,#40,#a8,#0a,#40,#fc,#0f
	db #c0,#3f,#f3,#bf,#00,#0a,#40,#38
	db #00,#a9,#33,#f0,#0b,#14,#20,#80
	db #30,#0a,#40,#a8,#0a,#40,#0b,#f0
	db #0b,#14,#20,#80,#08,#0a,#40,#a8
	db #0a,#40,#fc,#0f,#c0,#07,#f0,#bf
	db #00,#0a,#40,#08,#00,#80,#ff,#ff
	db #ff,#fe,#9a,#69,#08,#c0,#82,#fc
	db #0f,#c0,#04,#0a,#40,#00,#0a,#40
	db #ca,#a0,#00,#02,#a0,#00,#00,#00
	db #c0,#38,#03,#ff,#00,#0a,#40,#3c
	db #0a,#69,#02,#a0,#00,#08,#00,#80
	db #30,#d0,#81,#fc,#0f,#c0,#78,#0a
	db #40,#40,#0a,#40,#26,#a0,#00,#02
	db #a0,#00,#b8,#45,#8b,#40,#c0,#34
	db #00,#01,#00,#38,#03,#bf,#00,#0a
	db #40,#39,#0a,#69,#02,#a0,#00,#08
	db #00,#40,#34,#c0,#82,#fc,#0f,#c0
	db #78,#0a,#40,#00,#0a,#40,#00,#0f
	db #c0,#20,#09,#ff,#00,#0a,#40,#8c
	db #0a,#69,#08,#0f,#c0,#fc,#0f,#c0
	db #94,#0a,#40,#00,#0a,#40,#0a,#a0
	db #00,#02,#a0,#00,#20,#03,#80,#3c
	db #03,#80,#8e,#93,#a9,#3e,#93,#a9
	db #04,#03,#c0,#04,#00,#80,#38,#0a
	db #40,#00,#0a,#40,#97,#f0,#00,#00
	db #e0,#81,#3f,#f0,#00,#38,#00,#8e
	db #3b,#f0,#00,#00,#f0,#42,#0c,#00
	db #f0,#d0,#30,#0d,#3b,#f0,#00,#00
	db #f0,#4f,#3b,#f0,#00,#00,#e0,#83
	db #37,#f0,#02,#0c,#03,#8d,#0b,#f0
	db #00,#03,#f0,#00,#20,#03,#80,#08
	db #00,#82,#3b,#f0,#0b,#14,#20,#80
	db #38,#0a,#40,#a8,#0a,#40,#44,#00
	db #00,#00,#00,#00,#98,#00,#00,#00
	db #00,#00,#08,#00,#00,#00,#00,#00
	db #00,#0a,#40,#38,#0a,#69,#2c,#00
	db #00,#00,#00,#00,#04,#00,#00,#00
	db #00,#00,#0c,#0a,#40,#a8,#0a,#40
	db #1c,#00,#00,#00,#00,#82,#00,#0a
	db #40,#0a,#9a,#69,#00,#00,#00,#00
	db #00,#3f,#ff,#fa,#7f,#ff,#fa,#7f
	db #ff,#fa,#7f,#ff,#fa,#69,#fc,#0f
	db #c0,#fc,#10,#80,#ff,#f4,#40,#34
	db #03,#80,#ff,#fa,#69,#ae,#ba,#28
	db #03,#00,#3c,#dc,#6e,#43,#5c,#0a
	db #40,#a8,#0a,#40,#ff,#fa,#7f,#ab
	db #fa,#7f,#ab,#fa,#7f,#aa,#aa,#69
	db #00,#00,#00,#3c,#00,#00,#ab,#fa
	db #7f,#ab,#fa,#7f,#38,#00,#00,#00
	db #00,#00,#00,#00,#03,#3c,#03,#80
	db #30,#00,#00,#00,#00,#00,#00,#00
	db #00,#10,#20,#44,#ff,#fc,#80,#38
	db #03,#80,#aa,#9a,#e9,#ae,#9a,#e9
	db #24,#01,#00,#0c,#01,#40,#00,#c8
	db #5e,#40,#01,#ff,#c0,#08,#e3,#b8
	db #08,#c0,#8c,#08,#e3,#b8,#08,#c0
	db #75,#73,#33,#33,#33,#1d,#dc,#df
	db #c3,#37,#f3,#8d,#e3,#ff,#ff,#ff
	db #ff,#ff,#20,#df,#c3,#37,#f3,#8d
	db #8c,#cf,#c4,#33,#f3,#4e,#98,#08
	db #e3,#b8,#08,#c0,#e7,#ff,#ff,#ff
	db #ff,#ff,#80,#cf,#c4,#33,#f1,#01
	db #9f,#33,#30,#cc,#33,#1d,#08,#bf
	db #c5,#2f,#f3,#4c,#d8,#08,#e3,#b8
	db #08,#c0,#eb,#ff,#ff,#ff,#ff,#ff
	db #8c,#bf,#c5,#2f,#f3,#8f,#04,#df
	db #c3,#37,#f3,#8d,#78,#08,#e3,#b8
	db #08,#c0,#1c,#c3,#33,#57,#33,#33
	db #33,#30,#cc,#33,#1d,#1c,#c3,#33
	db #57,#33,#33,#32,#14,#00,#81,#3c
	db #e2,#d0,#54,#00,#81,#3c,#e2,#d0
	db #60,#00,#82,#38,#e2,#d0,#87,#32
	db #87,#32,#87,#32,#54,#00,#82,#38
	db #e2,#d0,#c0,#e0,#0e,#3c,#c3,#8d
	db #94,#e0,#0e,#3c,#c8,#0e,#81,#74
	db #73,#0c,#c3,#57,#2c,#00,#81,#3c
	db #e0,#89,#14,#00,#0e,#34,#83,#cc
	db #33,#30,#01,#ff,#ff,#ff
;
.play_music
;
	ld hl,lce00
	ld de,lce01
	ld bc,#000d
	ld (hl),#00
	ldir
	ld a,#38
	ld (lce07),a
	call lca8c
	call lca13
	ld hl,lce0d
	ld b,#0e
.lc9c4
	push bc
	ld a,b
	dec a
	ld c,(hl)
	dec hl
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
	pop bc
	djnz lc9c4
	ret
;
.init_music
;
	push af
	call lca00
	pop af		; added by Megachur
	;ld a,c
	;xor a
	ld (lc008),a
	ld a,#ff
	ld (lc009),a
	ld (lc003),a
	;ld a,b
	;ld (lc008),a	; modified by Megachur
	defs 4,0
	;pop af	; modified by Megachur
	ret
.lca00
	xor a
	ld (lc003),a
	dec a
	ld (lc006),a
	ld (lc007),a
	ld a,(lc005)
	dec a
	ld (lc004),a
	ret
.lca13
	ld ix,lce10
	ld b,#08
.lca19
	push bc
	call lca25
	inc ix
	inc ix
	pop bc
	djnz lca19
	ret
.lca25
	ld a,(ix+#00)
	inc a
	ret z
	ld e,(ix+#01)
	ld hl,lc1e3
	call lcb2e
	ld a,(hl)
	ld d,#00
	add hl,de
	add hl,de
	inc hl
	ld d,a
	and #7f
	inc e
	cp e
	jr nz,lca44
	ld (ix+#00),#ff
.lca44
	ld (ix+#01),e
	call lcb31
	rl d
	ex de,hl
	ld hl,lce0a
	jr nc,lca61
	ld a,d
	rrca
	rrca
	rrca
	rrca
	and #0f
	cp (hl)
	ret c
	ld (hl),a
	ld (lce04),de
	ret
.lca61
	ld a,d
	and #0f
	dec hl
	cp (hl)
	ret c
	ld (hl),a
	ld a,e
	ld (lce06),a
	rrca
	and #70
	ld e,a
	ld a,d
	rrca
	rrca
	rrca
	rrca
	and #0f
	or e
	ld e,a
	call lcb2b
	ld (lce02),hl
	ld a,e
	cp #7f
	ld a,#2a
	jr z,lca88
	ld a,#28
.lca88
	ld (lce07),a
	ret
.lca8c
	ld a,(lc003)
	and a
	ret z
	ld hl,lc004
	ld a,(lc005)
	inc (hl)
	cp (hl)
	call z,lcb8e
	ld ix,lcd04
	ld iy,lce00
	ld b,#03
.lcaa6
	bit 7,(ix+#00)
	jr nz,lcb06
	ld a,#0b
	sub b
	ld (lcadc),a
	add a
	sub #10
	ld (lcb02),a
	inc a
	ld (lcb05),a
	ld a,(ix+#01)
	cp #0a
	jr nc,lcada
	add a
	add a
	add a
	ld d,a
	ld hl,lc4b1
	ld a,(lc005)
	cp #09
	ld a,(lc004)
	jr c,lcad5
	rra
.lcad5
	add d
	call lcb37
	ld a,(hl)
.lcadc equ $ + 2
.lcada
	ld (iy+#00),a
	ld a,(ix+#02)
	add a
	add a
	add a
	ld d,a
	ld hl,lc501
	ld a,(lc004)
	and #07
	add d
	call lcb37
	ld a,(hl)
	bit 7,(ix+#03)
	jr z,lcb0e
	add (ix+#00)
	ld (ix+#00),a
	call lcb2b
.lcb02 equ $ + 2
.lcb00
	ld (iy+#00),l
.lcb05 equ $ + 2
	ld (iy+#00),h
.lcb06
	ld de,#000c
	add ix,de
	djnz lcaa6
	ret
.lcb0e
	ld d,a
	ld a,(ix+#00)
	call lcb2b
	ld a,d
	add a
	add a
	ld d,h
	ld e,l
.lcb1a
	bit 3,d
	jr nz,lcb26
	srl a
	rl e
	rl d
	jr lcb1a
.lcb26
	call lcb37
	jr lcb00
.lcb2b
	ld hl,lcd58
.lcb2e
	call lcb36
.lcb31
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ret
.lcb36
	add a
.lcb37
	add l
	ld l,a
	adc h
	sub l
	ld h,a
	ret
.lcb3d
	ld hl,lcd04
	ld de,lcd05
	ld bc,#0023
	ld (hl),#00
	ldir
	ld a,(lc008)
	ld hl,lc00a
	call lcb2e
	push hl
	pop ix
	ld bc,#0006
	add hl,bc
	ld (lcd28),hl
	ex de,hl
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (lcbbc),hl
	add hl,de
	ld (lcd2d),hl
	ld l,(ix+#02)
	ld h,(ix+#03)
	add hl,de
	ld (lcd2a),hl
	ld l,(ix+#04)
	ld h,(ix+#05)
	add hl,de
	ld (lcd2f),hl
	xor a
	ld (lcd2c),a
	ld (lcd31),a
	ld (lcd32),a
	ld (lcbc3),a
	jr lcbc7
.lcb8e
	ld a,(lc009)
	inc a
	jr nz,lcb9e
	ld (lc009),a
	ld de,#ffff
	ld (lc006),de
.lcb9e
	ld (hl),#00
	ld hl,(lc006)
	inc hl
.lcba4
	ld (lc006),hl
	ld a,h
	or l
	jr z,lcb3d
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld d,h
	ld e,l
	add hl,hl
	add hl,de
.lcbbc equ $ + 1
	ld de,#0000
	sbc hl,de
	jr z,lcba4
.lcbc3 equ $ + 1
	ld a,#00
	inc a
	and #07
.lcbc7
	jr nz,lcbe0
	ld iy,lcd28
	ld hl,lcd0a
	call lccc6
	ld hl,lcd16
	call lccc6
	ld hl,lcd22
	call lccc6
	xor a
.lcbe0
	ld (lcbc3),a
	ld ix,lcd04
	ld b,#03
.lcbe9
	push bc
	push ix
	ld a,b
	rra
	ld a,#30
	jr nc,lcbf3
	xor a
.lcbf3
	ld (lcc23),a
	pop hl
	ld bc,#000b
	add hl,bc
	ld bc,#0600
.lcbfe
	call lccee
	djnz lcbfe
	ld a,c
	bit 5,a
	jr nz,lcc6a
	and #0f
	cp #09
	jr c,lcc10
	sub #10
.lcc10
	add (ix+#05)
	ld b,#30
	cp b
	jr c,lcc1d
	add b
	jr c,lcc1d
	sub #60
.lcc1d
	ld (ix+#05),a
	add #0c
.lcc23 equ $ + 1
	cp #00
	jr c,lcc28
	add #0c
.lcc28
	ld (ix+#00),a
	bit 4,c
	jr z,lcc61
	ld b,#02
	call lcca0
	cp #01
	jr c,lcc55
	jr z,lcc95
	cp #02
	jr z,lcc4d
	ld b,#04
	call lcca0
	ld (ix+#02),a
	cp #05
	ccf
	sbc a
	ld (ix+#03),a
.lcc4d
	ld b,#04
	call lcca0
	ld (ix+#04),a
.lcc55
	ld l,(ix+#01)
	ld h,(ix+#04)
	ld (ix+#04),l
	ld (ix+#01),h
.lcc61
	ld bc,#000c
	add ix,bc
	pop bc
	djnz lcbe9
	ret
.lcc6a
	bit 3,a
	jr nz,lcc80
	and #07
	ld d,a
	ld b,#02
	push bc
	call lcca0
	pop bc
	add a
	add a
	add a
	or d
	add #09
	jr lcc10
.lcc80
	rra
	xor c
	and #08
	xor c
	and #0f
	cp #0f
	jr z,lcc8e
	call lcd39
.lcc8e
	ld a,#80
	ld (ix+#00),a
	jr lcc61
.lcc95
	ld a,(ix+#01)
	dec a
	and #0f
	ld (ix+#01),a
	jr lcc61
.lcca0
	push hl
	ld c,#00
	ld a,(lcd32)
.lcca6
	and a
	jr z,lccb8
	dec a
.lccaa
	ld hl,lcd38
	call lccee
	djnz lcca6
	ld (lcd32),a
	ld a,c
	pop hl
	ret
.lccb8
	ld iy,lcd2d
	ld hl,lcd33
	call lccc6
	ld a,#2f
	jr lccaa
.lccc6
	push bc
	push de
	ld e,(iy+#00)
	ld d,(iy+#01)
	ld a,(de)
	inc de
	ld (iy+#00),e
	ld (iy+#01),d
	ld c,a
	ld b,#00
	sla c
	rl b
	ex de,hl
	ld h,b
	ld l,c
	add hl,hl
	add hl,bc
	ld bc,lc551
	add hl,bc
	ld bc,#0006
	ldir
	pop de
	pop bc
	ret
.lccee
	push hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	rl c
	pop hl
	ret
.lcd0a equ $ + 6
.lcd05 equ $ + 1
.lcd04
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lcd16 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.lcd22 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.lcd2a equ $ + 6
.lcd28 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.lcd33 equ $ + 7
.lcd32 equ $ + 6
.lcd31 equ $ + 5
.lcd2f equ $ + 3
.lcd2d equ $ + 1
.lcd2c
	db #00,#00,#00,#00,#00,#00,#00,#00
.lcd38 equ $ + 4
	db #00,#00,#00,#00,#00
.lcd39
	ld (lce0e),a
	ld a,#ff
	ld (lce20),a
	ld hl,lce10
	ld bc,#0002
.lcd47
	ld a,(hl)
	inc a
	jr z,lcd51
	inc hl
	inc hl
	inc c
	inc c
	jr lcd47
.lcd51
	ld d,h
	ld e,l
	inc de
	dec hl
	lddr
	ret
.lcd58
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
.lce07 equ $ + 7
.lce06 equ $ + 6
.lce04 equ $ + 4
.lce02 equ $ + 2
.lce01 equ $ + 1
.lce00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lce0e equ $ + 6
.lce0d equ $ + 5
.lce0a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.lce10
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
.lce20
	db #ff
;
.music_info
	db "Professional Tennis Simulator (1990)(Dinamic)(Armando Garcia)",0
	db "",0

	read "music_end.asm"
