; Music of Ice Slider (2016)(CpcRetroDev.ByteRealms)(EgoTrip)(StArkos)
; Ripped by Megachur the 17/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ICESLIDE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #1000
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

.l1000
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#0b,#00,#0e,#10,#00,#00
	db #00,#00,#00,#00,#0d,#10,#10,#10
	db #00,#00,#00,#27,#10,#00,#28,#10
	db #30,#10,#38,#10,#01,#1d,#10,#00
	db #42,#60,#00,#42,#80,#00,#00,#00
	db #42,#60,#00,#42,#80,#00,#00,#00
	db #42,#60,#00,#42,#80,#00,#00,#00
.l1040
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#05,#d3,#00,#5e,#10,#67,#10
	db #82,#10,#97,#10,#bb,#10,#ca,#10
	db #da,#10,#f3,#10,#0a,#11,#00,#00
	db #00,#00,#00,#00,#0d,#60,#10,#01
	db #00,#7e,#26,#0c,#7c,#0a,#74,#09
	db #74,#08,#6c,#05,#6c,#04,#64,#03
	db #5c,#02,#5c,#01,#58,#01,#18,#0d
	db #60,#10,#01,#00,#3e,#01,#36,#01
	db #2e,#01,#26,#01,#1e,#01,#16,#01
	db #0e,#01,#06,#01,#0d,#60,#10,#01
	db #00,#7e,#2b,#0c,#7e,#2a,#0a,#76
	db #27,#09,#76,#26,#08,#6e,#28,#05
	db #6e,#27,#04,#66,#26,#03,#5e,#24
	db #02,#5e,#23,#01,#5a,#22,#01,#18
	db #0d,#60,#10,#01,#00,#3c,#3c,#3c
	db #3c,#38,#34,#30,#2c,#20,#1c,#0d
	db #c5,#10,#02,#00,#7c,#18,#78,#0c
	db #36,#00,#30,#2c,#28,#24,#20,#0d
	db #d6,#10,#01,#00,#3c,#38,#34,#30
	db #2c,#28,#a4,#ff,#ff,#a4,#fe,#ff
	db #a4,#ff,#ff,#24,#24,#24,#24,#24
	db #0d,#e2,#10,#01,#00,#3c,#7c,#03
	db #78,#07,#38,#74,#03,#70,#07,#2c
	db #68,#03,#68,#07,#28,#68,#03,#0d
	db #02,#11,#01,#00,#3c,#7c,#05,#38
	db #78,#05,#34,#74,#05,#30,#68,#05
	db #28,#68,#05,#28,#0d,#16,#11,#40
	db #00,#00,#00,#77,#11,#00,#79,#11
	db #96,#12,#79,#11,#10,#15,#13,#3b
	db #13,#47,#13,#40,#10,#15,#13,#81
	db #11,#47,#13,#30,#10,#63,#12,#04
	db #13,#74,#13,#10,#10,#2d,#12,#81
	db #11,#f9,#11,#40,#10,#2d,#12,#81
	db #11,#f9,#11,#30,#10,#7a,#13,#04
	db #13,#90,#13,#10,#10,#2d,#12,#69
	db #12,#f9,#11,#40,#10,#86,#13,#69
	db #12,#f9,#11,#30,#10,#7a,#13,#9c
	db #13,#90,#13,#10,#01,#2c,#11,#19
	db #00,#42,#60,#00,#42,#80,#00,#00
	db #00,#62,#e1,#00,#00,#01,#02,#da
	db #60,#02,#42,#00,#7a,#60,#03,#02
	db #62,#60,#01,#02,#23,#02,#da,#60
	db #02,#02,#7a,#60,#03,#02,#da,#60
	db #02,#02,#62,#60,#01,#02,#da,#60
	db #02,#02,#7a,#60,#03,#02,#62,#60
	db #01,#02,#23,#02,#da,#60,#02,#02
	db #7a,#60,#03,#02,#da,#60,#02,#42
	db #00,#62,#60,#01,#02,#da,#60,#02
	db #02,#7a,#60,#03,#02,#62,#60,#01
	db #02,#23,#02,#da,#60,#02,#02,#7a
	db #60,#03,#06,#62,#60,#01,#02,#da
	db #60,#02,#02,#7a,#60,#03,#02,#62
	db #60,#01,#02,#23,#02,#da,#60,#02
	db #02,#7a,#60,#03,#62,#60,#01,#23
	db #23,#7a,#e3,#00,#00,#04,#04,#3b
	db #04,#3b,#04,#3b,#04,#3b,#02,#3b
	db #02,#31,#04,#31,#04,#31,#04,#31
	db #04,#31,#02,#31,#02,#37,#04,#37
	db #04,#37,#04,#37,#04,#37,#02,#37
	db #02,#2d,#04,#2d,#04,#2d,#04,#2d
	db #04,#2d,#02,#2d,#00,#aa,#e7,#00
	db #00,#05,#02,#6b,#02,#6b,#02,#71
	db #06,#71,#02,#6f,#06,#61,#02,#61
	db #02,#61,#02,#67,#06,#67,#02,#6b
	db #06,#67,#02,#67,#02,#67,#02,#6f
	db #06,#6f,#02,#6b,#06,#cc,#63,#06
	db #02,#83,#06,#8d,#02,#83,#06,#8d
	db #02,#83,#00,#98,#e0,#00,#00,#07
	db #00,#c2,#e0,#00,#00,#06,#04,#7f
	db #04,#89,#42,#00,#04,#83,#0a,#83
	db #04,#7f,#04,#89,#42,#00,#10,#83
	db #04,#7f,#04,#89,#42,#00,#04,#83
	db #0a,#83,#04,#42,#00,#08,#d5,#cb
	db #c3,#bd,#bd,#b3,#ab,#a5,#92,#ef
	db #00,#00,#04,#92,#5d,#c2,#4f,#c2
	db #5d,#92,#4d,#92,#5b,#cc,#4d,#cc
	db #5b,#92,#4b,#92,#59,#c8,#4b,#c8
	db #59,#92,#49,#92,#57,#d0,#49,#d0
	db #57,#92,#47,#92,#55,#c2,#47,#c2
	db #55,#92,#45,#92,#53,#cc,#45,#cc
	db #53,#92,#43,#92,#51,#c8,#43,#c8
	db #51,#92,#43,#92,#4f,#ba,#41,#ba
	db #4f,#92,#41,#92,#4f,#c2,#41,#c2
	db #4f,#92,#41,#92,#4f,#cc,#41,#cc
	db #4f,#92,#41,#92,#4f,#c8,#41,#c8
	db #4f,#92,#41,#92,#4f,#d0,#41,#d0
	db #4f,#92,#41,#02,#aa,#60,#08,#0a
	db #aa,#60,#07,#00,#62,#e0,#00,#00
	db #01,#0e,#40,#69,#60,#06,#cb,#c3
	db #bd,#bd,#b3,#ab,#a5,#92,#e7,#00
	db #00,#07,#04,#53,#04,#6b,#02,#61
	db #0e,#59,#04,#59,#04,#59,#02,#5d
	db #0e,#53,#04,#53,#04,#6b,#02,#61
	db #0e,#59,#04,#59,#04,#59,#02,#5d
	db #06,#4f,#00,#7a,#e0,#00,#00,#06
	db #1e,#53,#1e,#6b,#1e,#83,#00,#aa
	db #e7,#00,#00,#06,#04,#71,#04,#79
	db #02,#6f,#0e,#71,#04,#6b,#42,#00
	db #02,#67,#02,#6b,#0e,#6b,#04,#71
	db #04,#79,#02,#6f,#0e,#71,#04,#6b
	db #42,#00,#02,#67,#02,#6b,#04,#6b
	db #75,#02,#71,#00,#b0,#e0,#00,#00
	db #06,#00,#cc,#e3,#00,#00,#06,#02
	db #83,#06,#8d,#02,#83,#00,#aa,#e7
	db #00,#00,#07,#1e,#79,#1e,#67,#00
	db #6c,#e0,#00,#00,#04,#04,#2d,#04
	db #2d,#02,#2d,#00,#42,#80,#00,#00
	db #00
.data_mus2
	db #41,#54,#31,#30,#01,#40,#42
	db #0f,#02,#06,#44,#00,#b3,#13,#bc
	db #13,#df,#13,#00,#00,#00,#00,#00
	db #00,#0d,#b5,#13,#01,#00,#3c,#3c
	db #38,#38,#34,#34,#30,#30,#2c,#2c
	db #28,#28,#24,#24,#20,#20,#1c,#1c
	db #18,#18,#14,#14,#10,#10,#0c,#0c
	db #08,#08,#04,#04,#0d,#b5,#13,#01
	db #00,#3c,#3c,#38,#38,#34,#34,#34
	db #34,#30,#30,#2c,#2c,#28,#0d,#ed
	db #13,#40,#00,#00,#00,#16,#14,#00
	db #1f,#14,#17,#14,#82,#14,#00,#8a
	db #14,#17,#14,#ee,#14,#00,#1f,#14
	db #17,#14,#06,#15,#00,#20,#15,#17
	db #14,#7c,#15,#01,#f7,#13,#00,#42
	db #60,#00,#42,#80,#00,#00,#00,#c2
	db #e1,#00,#00,#01,#02,#c2,#47,#02
	db #c2,#4d,#02,#c2,#51,#02,#cc,#41
	db #02,#cc,#47,#02,#cc,#4d,#02,#cc
	db #51,#02,#c4,#41,#02,#c4,#47,#02
	db #c4,#4d,#02,#c4,#51,#02,#d0,#41
	db #02,#d0,#47,#02,#d0,#4d,#02,#d0
	db #51,#02,#c2,#41,#02,#c2,#47,#02
	db #c2,#4d,#02,#c2,#51,#02,#cc,#41
	db #02,#cc,#47,#02,#cc,#4d,#02,#cc
	db #51,#02,#c4,#41,#02,#c4,#47,#02
	db #c4,#4d,#02,#c4,#51,#02,#d2,#41
	db #02,#d2,#47,#02,#d2,#4d,#02,#d2
	db #51,#00,#7a,#e1,#00,#00,#02,#3e
	db #3b,#00,#da,#e1,#00,#00,#02,#02
	db #da,#47,#02,#da,#4d,#02,#da,#51
	db #02,#da,#55,#02,#da,#51,#02,#da
	db #4d,#02,#da,#47,#02,#c4,#61,#01
	db #02,#c4,#47,#02,#c4,#4d,#02,#c4
	db #51,#02,#d0,#41,#02,#d0,#47,#02
	db #d0,#4d,#02,#d0,#51,#02,#c2,#41
	db #02,#c2,#47,#02,#c2,#4d,#02,#c2
	db #51,#02,#cc,#41,#02,#cc,#47,#02
	db #cc,#4d,#02,#cc,#51,#02,#c4,#41
	db #02,#c4,#47,#02,#c4,#4d,#02,#c4
	db #51,#02,#ba,#41,#02,#ba,#47,#02
	db #ba,#4d,#02,#ba,#51,#00,#7a,#e1
	db #00,#00,#02,#04,#3b,#04,#3b,#06
	db #3b,#0a,#3b,#1e,#3b,#04,#3b,#04
	db #3b,#06,#3b,#0a,#41,#00,#7a,#e1
	db #00,#00,#02,#04,#3b,#04,#3b,#06
	db #3b,#0a,#41,#1e,#3b,#04,#3b,#04
	db #3b,#06,#3b,#0a,#41,#0e,#33,#00
	db #da,#e1,#00,#00,#02,#02,#da,#47
	db #02,#da,#4d,#02,#da,#51,#02,#da
	db #55,#02,#da,#51,#02,#da,#4d,#02
	db #da,#47,#02,#c4,#61,#01,#02,#c4
	db #47,#02,#c4,#4d,#02,#c4,#51,#02
	db #d0,#41,#02,#d0,#47,#02,#d0,#4d
	db #02,#d0,#51,#02,#da,#41,#02,#da
	db #47,#02,#da,#4d,#02,#da,#51,#02
	db #cc,#41,#02,#cc,#47,#02,#cc,#4d
	db #02,#cc,#51,#02,#c4,#41,#02,#c4
	db #47,#02,#c4,#4d,#02,#c4,#51,#02
	db #ba,#61,#02,#00,#7a,#e1,#00,#00
	db #02,#04,#3b,#04,#3b,#06,#3b,#0a
	db #41,#1e,#3b,#04,#3b,#04,#3b,#06
	db #3b,#0a,#41,#0e,#72,#60,#01,#02
	db #72,#47,#02,#72,#4d,#02,#72,#51
	db #00
.data_mus3
	db #41,#54,#31,#30,#01,#40,#42
	db #0f,#02,#06,#3c,#00,#b3,#15,#bc
	db #15,#d0,#15,#00,#00,#00,#00,#00
	db #00,#0d,#b5,#15,#01,#00,#3c,#38
	db #34,#30,#2c,#28,#24,#20,#1c,#18
	db #14,#10,#0c,#08,#04,#0d,#b5,#15
	db #01,#00,#3c,#38,#34,#30,#2c,#28
	db #a4,#ff,#ff,#a4,#fe,#ff,#a4,#ff
	db #ff,#24,#24,#24,#24,#24,#0d,#d8
	db #15,#40,#00,#00,#00,#00,#16,#00
	db #01,#16,#31,#16,#39,#16,#00,#4d
	db #16,#7b,#16,#83,#16,#01,#ef,#15
	db #00,#92,#e5,#00,#00,#01,#02,#6b
	db #02,#75,#02,#53,#02,#71,#0e,#53
	db #02,#6b,#02,#75,#02,#53,#02,#6d
	db #0e,#53,#02,#6b,#02,#75,#02,#53
	db #02,#71,#0e,#6d,#06,#75,#02,#53
	db #02,#71,#02,#6d,#02,#67,#02,#6b
	db #00,#42,#60,#00,#42,#80,#00,#00
	db #00,#7a,#e1,#00,#00,#02,#0a,#41
	db #12,#3b,#12,#37,#0a,#3b,#0a,#41
	db #12,#3d,#0e,#33,#00,#92,#e0,#00
	db #00,#01,#02,#6b,#02,#75,#02,#53
	db #02,#71,#0e,#53,#02,#6b,#02,#75
	db #02,#53,#02,#6d,#0e,#53,#02,#6b
	db #02,#75,#02,#53,#02,#71,#0e,#a0
	db #60,#02,#0e,#a5,#02,#9b,#02,#93
	db #02,#8d,#00,#42,#60,#00,#42,#80
	db #00,#00,#00,#7a,#e0,#00,#00,#02
	db #0a,#41,#12,#3b,#12,#37,#0a,#3b
	db #0a,#41,#12,#49,#10,#a5,#02,#9b
	db #02,#93,#02,#8d
.data_mus4
	db #41,#54,#31,#30
	db #01,#40,#42,#0f,#02,#06,#64,#00
	db #ae,#16,#b7,#16,#cb,#16,#00,#00
	db #00,#00,#00,#00,#0d,#b0,#16,#01
	db #00,#7e,#21,#f4,#7c,#f4,#3c,#38
	db #34,#28,#24,#20,#1c,#98,#ff,#ff
	db #0d,#c4,#16,#01,#00,#3c,#3c,#b8
	db #ff,#ff,#34,#b0,#ff,#ff,#2c,#a8
	db #ff,#ff,#a8,#fe,#ff,#a4,#ff,#ff
	db #24,#a0,#ff,#ff,#a0,#fe,#ff,#9c
	db #ff,#ff,#1c,#98,#ff,#ff,#98,#fe
	db #ff,#94,#ff,#ff,#14,#90,#ff,#ff
	db #90,#fe,#ff,#8c,#ff,#ff,#0c,#88
	db #ff,#ff,#88,#fe,#ff,#84,#ff,#ff
	db #04,#0d,#b0,#16,#80,#00,#00,#00
	db #31,#17,#00,#32,#17,#de,#17,#e6
	db #17,#00,#32,#17,#ee,#17,#f3,#17
	db #00,#32,#17,#d8,#18,#dd,#18,#00
	db #32,#17,#ee,#17,#f3,#17,#01,#12
	db #17,#00,#92,#e1,#00,#00,#01,#02
	db #53,#02,#53,#02,#55,#02,#42,#60
	db #00,#02,#94,#60,#01,#02,#55,#02
	db #42,#60,#00,#02,#96,#60,#01,#02
	db #57,#02,#57,#02,#55,#02,#42,#60
	db #00,#02,#94,#60,#01,#02,#55,#02
	db #42,#60,#00,#02,#92,#60,#01,#02
	db #53,#02,#53,#02,#55,#02,#42,#60
	db #00,#02,#94,#60,#01,#02,#55,#02
	db #42,#60,#00,#02,#8c,#60,#01,#06
	db #4d,#06,#4f,#06,#4f,#06,#53,#02
	db #53,#02,#53,#02,#55,#02,#42,#60
	db #00,#02,#94,#60,#01,#02,#55,#02
	db #42,#60,#00,#02,#96,#60,#01,#02
	db #57,#02,#57,#02,#55,#02,#42,#60
	db #00,#02,#94,#60,#01,#02,#55,#02
	db #42,#60,#00,#02,#92,#60,#01,#02
	db #53,#02,#53,#02,#55,#02,#42,#60
	db #00,#02,#94,#60,#01,#02,#55,#02
	db #42,#60,#00,#02,#9e,#60,#01,#02
	db #5d,#02,#5b,#02,#59,#02,#5b,#02
	db #59,#02,#57,#02,#55,#00,#42,#60
	db #00,#42,#80,#00,#00,#00,#42,#60
	db #00,#42,#80,#00,#00,#00,#42,#80
	db #00,#00,#00,#aa,#e5,#00,#00,#02
	db #b0,#40,#aa,#40,#b0,#40,#aa,#47
	db #b0,#40,#aa,#40,#b0,#40,#aa,#49
	db #b0,#40,#aa,#40,#b0,#40,#aa,#47
	db #b0,#40,#aa,#40,#b0,#40,#aa,#45
	db #b0,#40,#aa,#40,#b0,#40,#aa,#47
	db #b0,#40,#aa,#40,#b0,#40,#aa,#49
	db #b0,#40,#aa,#40,#b0,#40,#aa,#47
	db #b0,#40,#aa,#40,#b0,#40,#aa,#45
	db #b0,#40,#aa,#40,#b0,#40,#aa,#47
	db #b0,#40,#aa,#40,#b0,#40,#aa,#49
	db #b0,#40,#aa,#40,#b0,#40,#aa,#47
	db #b0,#40,#aa,#40,#b0,#40,#ae,#45
	db #02,#6f,#02,#69,#02,#69,#02,#6d
	db #02,#6d,#02,#67,#02,#67,#02,#aa
	db #49,#b0,#40,#aa,#40,#b0,#40,#aa
	db #47,#b0,#40,#aa,#40,#b0,#40,#aa
	db #45,#b0,#40,#aa,#40,#b0,#40,#aa
	db #47,#b0,#40,#aa,#40,#b0,#40,#aa
	db #49,#b0,#40,#aa,#40,#b0,#40,#aa
	db #47,#b0,#40,#aa,#40,#b0,#40,#aa
	db #45,#b0,#40,#aa,#40,#b0,#40,#aa
	db #47,#b0,#40,#aa,#40,#b0,#40,#aa
	db #49,#b0,#40,#aa,#40,#b0,#40,#aa
	db #47,#b0,#40,#aa,#40,#b0,#40,#aa
	db #45,#b0,#40,#aa,#40,#b0,#40,#aa
	db #47,#b0,#40,#aa,#40,#b0,#40,#ae
	db #45,#02,#6f,#02,#69,#02,#69,#02
	db #6d,#02,#6d,#02,#67,#02,#67,#00
	db #42,#80,#00,#00,#00,#42,#60,#00
	db #42,#80,#00,#00,#14,#aa,#65,#02
	db #02,#6d,#02,#6f,#42,#00,#6d,#02
	db #6b,#02,#42,#00,#02,#42,#00,#02
	db #42,#00,#02,#42,#00,#02,#42,#00
	db #02,#42,#00,#02,#42,#00,#02,#42
	db #00,#02,#42,#00,#02,#42,#00,#02
	db #42,#00,#02,#79,#02,#7b,#02,#7d
	db #42,#00,#7b,#02,#79,#2e,#6b,#02
	db #6d,#02,#6f,#42,#00,#6d,#02,#6b
	db #0e,#79,#02,#7b,#02,#7d,#42,#00
	db #7b,#02,#79,#0e,#83,#02,#85,#02
	db #85,#42,#00,#83,#02,#81,#02,#7f
	db #02,#81,#02,#7f,#02,#7d,#02,#7b
	db #00
;.data_mus5
	db #41,#54,#31,#30,#01,#40,#42
	db #0f,#02,#ff,#f3,#01,#6b,#19,#74
	db #19,#a1,#19,#b3,#19,#d0,#19,#ef
	db #19,#62,#1a,#93,#1a,#c0,#1a,#ed
	db #1a,#3b,#1b,#00,#00,#00,#00,#00
	db #00,#0d,#6d,#19,#01,#00,#3c,#38
	db #28,#14,#10,#0c,#7c,#0c,#74,#0c
	db #6c,#0c,#68,#0c,#68,#0c,#68,#0c
	db #64,#0c,#64,#0c,#60,#0c,#58,#0c
	db #50,#0c,#48,#0c,#4c,#0c,#4c,#0c
	db #48,#0c,#44,#0c,#02,#20,#0d,#6d
	db #19,#01,#00,#3e,#01,#3e,#21,#3e
	db #07,#7a,#27,#0c,#36,#10,#32,#29
	db #0d,#6d,#19,#01,#00,#3c,#78,#06
	db #74,#0c,#70,#12,#6c,#18,#68,#1e
	db #68,#24,#68,#1e,#6c,#18,#70,#12
	db #74,#0c,#78,#06,#3c,#0d,#6d,#19
	db #01,#00,#7c,#f4,#78,#fa,#34,#70
	db #06,#6c,#0c,#68,#12,#68,#18,#3c
	db #78,#06,#74,#0c,#70,#12,#6c,#18
	db #68,#1e,#68,#24,#0d,#6d,#19,#02
	db #00,#3c,#fc,#ff,#ff,#ff,#fc,#fe
	db #ff,#fe,#fc,#fd,#ff,#fd,#fc,#fc
	db #ff,#fc,#fc,#fb,#ff,#fb,#fc,#fa
	db #ff,#fa,#fc,#f9,#ff,#f9,#fc,#f8
	db #ff,#f8,#fc,#f7,#ff,#f7,#fc,#f6
	db #ff,#f6,#fc,#f5,#ff,#f5,#fc,#f4
	db #ff,#f4,#f8,#f3,#ff,#f4,#f4,#f2
	db #ff,#f3,#f0,#f1,#ff,#f2,#ec,#f0
	db #ff,#f1,#e8,#ef,#ff,#f0,#e4,#ee
	db #ff,#ef,#e0,#ed,#ff,#ee,#dc,#ec
	db #ff,#ed,#d8,#eb,#ff,#ec,#d4,#ea
	db #ff,#eb,#d0,#e9,#ff,#ea,#cc,#e8
	db #ff,#e9,#c8,#e7,#ff,#e8,#c4,#e6
	db #ff,#e8,#c2,#20,#e5,#ff,#e8,#0d
	db #f1,#19,#02,#00,#3c,#34,#28,#18
	db #7c,#03,#70,#03,#64,#03,#54,#03
	db #7c,#07,#74,#07,#68,#07,#58,#07
	db #7c,#0a,#70,#0a,#64,#0a,#54,#0a
	db #7c,#0c,#74,#0c,#68,#0c,#64,#0c
	db #60,#0c,#5c,#0c,#58,#0c,#54,#0c
	db #0d,#6d,#19,#02,#00,#3c,#b4,#01
	db #00,#b0,#02,#00,#ac,#03,#00,#a8
	db #04,#00,#a4,#05,#00,#a0,#06,#00
	db #9c,#07,#00,#98,#08,#00,#94,#09
	db #00,#90,#0a,#00,#8c,#0b,#00,#88
	db #0c,#00,#84,#0c,#00,#0d,#6d,#19
	db #01,#00,#3c,#38,#28,#14,#10,#0c
	db #7c,#0c,#78,#0c,#68,#0c,#54,#0c
	db #50,#0c,#4c,#0c,#7c,#18,#78,#18
	db #68,#18,#54,#18,#50,#18,#4c,#18
	db #4c,#18,#4c,#18,#48,#18,#44,#18
	db #02,#20,#0d,#6d,#19,#02,#00,#3c
	db #34,#28,#18,#7c,#03,#70,#03,#64
	db #03,#54,#03,#7c,#07,#74,#07,#68
	db #07,#58,#07,#7c,#0a,#70,#0a,#64
	db #0a,#54,#0a,#7c,#0c,#74,#0c,#68
	db #0c,#64,#0c,#60,#0c,#5c,#0c,#58
	db #0c,#54,#0c,#3c,#7c,#03,#7c,#07
	db #7c,#0a,#7c,#0c,#7c,#0f,#7c,#13
	db #7c,#16,#7c,#18,#70,#18,#68,#18
	db #5c,#18,#50,#18,#48,#18,#44,#18
	db #0d,#6d,#19,#01,#00,#3e,#25,#32
	db #24,#1e,#23,#0e,#22,#0d,#6d,#19
	db #40,#00,#00,#00,#58,#1b,#00,#59
	db #1b,#59,#1b,#59,#1b,#01,#4e,#1b
	db #00,#42,#80,#00,#00,#00,#00,#00
;
; #7c60 - player reallocated by Megachur
;
.l7c60
	nop
.l7c61
	nop
;
.play_music
;
	push ix
	push iy
	xor a
	ld (l7c60),a
.l7c6b equ $ + 1
	ld a,#01
	dec a
	jp nz,l7e3e
.l7c71 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7ce4
.l7c76 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l7c8b
	ld a,(l7c61)
	inc a
	ld (l7c61),a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l7c8b
	rra
	jr nc,l7c93
	ld de,l7d34
	ldi
.l7c93
	rra
	jr nc,l7c9b
	ld de,l7d99
	ldi
.l7c9b
	rra
	jr nc,l7ca3
	ld de,l7dfe
	ldi
.l7ca3
	ld de,l7d13
	ldi
	ldi
	ld de,l7d78
	ldi
	ldi
	ld de,l7ddd
	ldi
	ldi
	rra
	jr nc,l7cc0
	ld de,l7ce3
	ldi
.l7cc0
	rra
	jr nc,l7ccb
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l7ccf),de
.l7ccb
	ld (l7c76),hl
.l7ccf equ $ + 1
	ld hl,#0000
	ld (l7ced),hl
	ld a,#01
	ld (l7ce8),a
	ld (l7d0e),a
	ld (l7d73),a
	ld (l7dd8),a
.l7ce3 equ $ + 1
	ld a,#01
.l7ce4
	ld (l7c71),a
.l7ce8 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7d0a
.l7ced equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l7d07
	srl a
	jr nz,l7cfb
	ld a,(hl)
	inc hl
.l7cfb
	jr nc,l7d02
	ld (l7c60),a
	jr l7d05
.l7d02
	ld (l7e3d),a
.l7d05
	ld a,#01
.l7d07
	ld (l7ced),hl
.l7d0a
	ld (l7ce8),a
.l7d0e equ $ + 1
	ld a,#01
	dec a
	jr nz,l7d6f
.l7d13 equ $ + 1
	ld hl,#0000
	call l8211
	ld (l7d13),hl
	jr c,l7d6f
	ld a,d
	rra
	jr nc,l7d26
	and #0f
	ld (l7f16),a
.l7d26
	rl d
	jr nc,l7d2e
	ld (l7f04),ix
.l7d2e
	rl d
	jr nc,l7d6d
	ld a,e
.l7d34 equ $ + 1
	add #00
	ld (l7f15),a
	ld hl,#0000
	ld (l7f01),hl
	rl d
	jr c,l7d4d
.l7d43 equ $ + 1
	ld hl,#0000
	ld a,(l7f26)
	ld (l7f1e),a
	jr l7d6a
.l7d4d
	ld l,b
	add hl,hl
.l7d50 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l7f26),a
	ld (l7f1e),a
	ld a,(hl)
	or a
	jr z,l7d66
	ld (l8033),a
.l7d66
	inc hl
	ld (l7d43),hl
.l7d6a
	ld (l7f18),hl
.l7d6d
	ld a,#01
.l7d6f
	ld (l7d0e),a
.l7d73 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7dd4
.l7d78 equ $ + 1
	ld hl,#0000
	call l8211
	ld (l7d78),hl
	jr c,l7dd4
	ld a,d
	rra
	jr nc,l7d8b
	and #0f
	ld (l7eb7),a
.l7d8b
	rl d
	jr nc,l7d93
	ld (l7ea5),ix
.l7d93
	rl d
	jr nc,l7dd2
	ld a,e
.l7d99 equ $ + 1
	add #00
	ld (l7eb6),a
	ld hl,#0000
	ld (l7ea2),hl
	rl d
	jr c,l7db2
.l7da8 equ $ + 1
	ld hl,#0000
	ld a,(l7ec7)
	ld (l7ebf),a
	jr l7dcf
.l7db2
	ld l,b
	add hl,hl
.l7db5 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l7ec7),a
	ld (l7ebf),a
	ld a,(hl)
	or a
	jr z,l7dcb
	ld (l8033),a
.l7dcb
	inc hl
	ld (l7da8),hl
.l7dcf
	ld (l7eb9),hl
.l7dd2
	ld a,#01
.l7dd4
	ld (l7d73),a
.l7dd8 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7e39
.l7ddd equ $ + 1
	ld hl,#0000
	call l8211
	ld (l7ddd),hl
	jr c,l7e39
	ld a,d
	rra
	jr nc,l7df0
	and #0f
	ld (l7e5b),a
.l7df0
	rl d
	jr nc,l7df8
	ld (l7e49),ix
.l7df8
	rl d
	jr nc,l7e37
	ld a,e
.l7dfe equ $ + 1
	add #00
	ld (l7e5a),a
	ld hl,#0000
	ld (l7e46),hl
	rl d
	jr c,l7e17
.l7e0d equ $ + 1
	ld hl,#0000
	ld a,(l7e6b)
	ld (l7e63),a
	jr l7e34
.l7e17
	ld l,b
	add hl,hl
.l7e1a equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l7e6b),a
	ld (l7e63),a
	ld a,(hl)
	or a
	jr z,l7e30
	ld (l8033),a
.l7e30
	inc hl
	ld (l7e0d),hl
.l7e34
	ld (l7e5d),hl
.l7e37
	ld a,#01
.l7e39
	ld (l7dd8),a
.l7e3d equ $ + 1
	ld a,#01
.l7e3e
	ld (l7c6b),a
	ld iy,l804a
.l7e46 equ $ + 1
	ld hl,#0000
.l7e49 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l7e46),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l7e5b equ $ + 2
.l7e5a equ $ + 1
	ld de,#0000
.l7e5d equ $ + 1
	ld hl,#0000
	call l8055
.l7e63 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7e6c
	ld (l7e5d),hl
.l7e6b equ $ + 1
	ld a,#06
.l7e6c
	ld (l7e63),a
.l7e6f
	ld de,#0000
	exx
	ld de,#0000
.l7e77 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l7e9a
	ld a,#01
	ld (l8184),a
	call l8055
	xor a
	ld (l8184),a
	ld a,l
	or h
	jr z,l7e92
.l7e8e equ $ + 1
	ld a,#01
	dec a
	jr nz,l7e97
.l7e92
	ld (l7e77),hl
	ld a,#06
.l7e97
	ld (l7e8e),a
.l7e9a
	ld a,lx
	ex af,af'
	ld iy,l8048
.l7ea2 equ $ + 1
	ld hl,#0000
.l7ea5 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l7ea2),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l7eb7 equ $ + 2
.l7eb6 equ $ + 1
	ld de,#0000
.l7eb9 equ $ + 1
	ld hl,#0000
	call l8055
.l7ebf equ $ + 1
	ld a,#01
	dec a
	jr nz,l7ec8
	ld (l7eb9),hl
.l7ec7 equ $ + 1
	ld a,#06
.l7ec8
	ld (l7ebf),a
.l7ecb
	ld de,#0000
	exx
	ld de,#0000
.l7ed3 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l7ef6
	ld a,#01
	ld (l8184),a
	call l8055
	xor a
	ld (l8184),a
	ld a,l
	or h
	jr z,l7eee
.l7eea equ $ + 1
	ld a,#01
	dec a
	jr nz,l7ef3
.l7eee
	ld (l7ed3),hl
	ld a,#06
.l7ef3
	ld (l7eea),a
.l7ef6
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l8046
.l7f01 equ $ + 1
	ld hl,#0000
.l7f04 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l7f01),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l7f16 equ $ + 2
.l7f15 equ $ + 1
	ld de,#0000
.l7f18 equ $ + 1
	ld hl,#0000
	call l8055
.l7f1e equ $ + 1
	ld a,#01
	dec a
	jr nz,l7f27
	ld (l7f18),hl
.l7f26 equ $ + 1
	ld a,#06
.l7f27
	ld (l7f1e),a
.l7f2a
	ld de,#0000
	exx
	ld de,#0000
.l7f32 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l7f55
	ld a,#01
	ld (l8184),a
	call l8055
	xor a
	ld (l8184),a
	ld a,l
	or h
	jr z,l7f4d
.l7f49 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7f52
.l7f4d
	ld (l7f32),hl
	ld a,#06
.l7f52
	ld (l7f49),a
.l7f55
	ex af,af'
	or lx
.l7f58
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l8046
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
.l8033 equ $ + 1
	cp #00
	ret z
	ld (l8033),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l8046
	nop
	nop
.l8048
	nop
	nop
.l804a
	nop
	nop
.l804c
	nop
.l804d
	nop
	nop
	nop
	nop
	nop
.l8052
	nop
	nop
.l8054
	nop
.l8055
	ld b,(hl)
	inc hl
	rr b
	jp c,l80b3
	rr b
	jr c,l8083
	ld a,b
	and #0f
	jr nz,l806c
	ld (iy+#07),a
	ld lx,#09
	ret
.l806c
	ld lx,#08
	sub d
	jr nc,l8073
	xor a
.l8073
	ld (iy+#07),a
	rr b
	call l81e5
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l8083
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l8093
	ld (l804c),a
	ld lx,#00
.l8093
	ld a,b
	and #0f
	sub d
	jr nc,l809a
	xor a
.l809a
	ld (iy+#07),a
	bit 5,c
	jr nz,l80a4
	inc lx
	ret
.l80a4
	rr b
	bit 6,c
	call l81d7
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l80b3
	rr b
	jr nc,l80c6
	ld a,(l7f1e)
	ld c,a
	ld a,(l7f26)
	cp c
	jr nz,l80c6
	ld a,#fe
	ld (l8033),a
.l80c6
	bit 1,b
	jp nz,l817f
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l8054),a
	bit 0,b
	jr z,l8135
	bit 2,b
	call l81d7
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l80f5),a
	ld a,b
	exx
.l80f5 equ $ + 1
	jr l80f6
.l80f6
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
	jr nc,l8115
	inc hl
.l8115
	bit 5,a
	jr z,l8125
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
.l8125
	ld (l8052),hl
	exx
.l8129
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l804c),a
	ld lx,#00
	ret
.l8135
	bit 2,b
	call l81d7
	ld (l8052),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l8149),a
	ld a,b
	exx
.l8149 equ $ + 1
	jr l814a
.l814a
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
	jr z,l8176
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
.l8176
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l8129
.l817f
	bit 0,b
	jr z,l8193
.l8184 equ $ + 1
	ld a,#00
	or a
	jr z,l818c
	ld hl,#0000
	ret
.l818c
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l8055
.l8193
	ld (iy+#07),#10
	bit 5,b
	jr nz,l81a0
	ld lx,#09
	jr l81b3
.l81a0
	ld lx,#08
	ld hx,e
	bit 2,b
	call l81d7
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l81b3
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l8054),a
	rr b
	rr b
	bit 2,b
	call l81d7
	ld (l8052),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l804c),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l81d7
	jr z,l81e5
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
.l81e5
	bit 4,b
	jr z,l81f5
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
.l81f5
	ld a,e
	bit 3,b
	jr z,l8202
	add (hl)
	inc hl
	cp #90
	jr c,l8202
	ld a,#8f
.l8202
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l8245
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l8211
	ld a,(hl)
	inc hl
	srl a
	jr c,l8238
	sub #20
	jr c,l8242
	jr z,l8234
	dec a
	ld e,a
.l821f
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l822d
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l822d
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l8234
	ld e,(hl)
	inc hl
	jr l821f
.l8238
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l8242
	add #20
	ret
.l8245
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
;
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
	xor a
	ld (l7c61),a
	ld hl,#0009
	add hl,de
	ld de,l7e3d
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l7d50),hl
	ld (l7db5),hl
	ld (l7e1a),hl
	add hl,bc
	ld de,l7ce3
	ldi
	ld de,l7d34
	ldi
	ld de,l7d99
	ldi
	ld de,l7dfe
	ldi
	ld de,l7ccf
	ldi
	ldi
	ld (l7c76),hl
	ld a,#01
	ld (l7c6b),a
	ld (l7c71),a
	ld a,#ff
	ld (l8054),a
	ld hl,(l7d50)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l7f18),hl
	ld (l7eb9),hl
	ld (l7e5d),hl
	ret
	push ix
	push iy
	ld hl,l804d
	ld bc,#0500
.l83cf
	ld (hl),c
	inc hl
	djnz l83cf
	ld a,#3f
	jp l7f58
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	rrca
	jp c,l83ed
	rrca
	jp c,l83e9
	ld hl,(l7e77)
	ret
.l83e9
	ld hl,(l7ed3)
	ret
.l83ed
	ld hl,(l7f32)
	ret
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,#000c
	add hl,de
	ld (l844c),hl
	ld hl,#0000
	ld (l7f32),hl
	ld (l7ed3),hl
	ld (l7e77),hl
	ret
	ld (l8468),ix
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
	jp c,l8434
	rrca
	jp c,l842d
	ld ix,l7e6f
	jp l8438
.l842d
	ld ix,l7ecb
	jp l8438
.l8434
	ld ix,l7f2a
.l8438
	ld (ix+#01),c
	ld (ix+#02),b
	ld a,e
	ld (ix+#05),a
	ld a,#0f
	sub h
	ld (ix+#06),a
	ld h,#00
	add hl,hl
.l844c equ $ + 1
	ld bc,#1955
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,d
	or a
	jr nz,l8458
	ld a,(hl)
.l8458
	ld (ix+#27),a
	ld (ix+#1f),a
	inc hl
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
.l8468 equ $ + 2
	ld ix,#0000
	ret
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	ld hl,#0000
	rrca
	jp nc,l847a
	ld (l7f32),hl
.l847a
	rrca
	jp nc,l8481
	ld (l7ed3),hl
.l8481
	rrca
	jp z,l8488
	ld (l7e77),hl
.l8488
	ret
;
; #556c
; ld hl,#13a1
; push hl
; call #8365
;
; #5586
; ld hl,#169c
; push hl
; call #8365
;
; #5bec
; ld hl,#1040	; menu music
; push hl
; call #8365
;
; #4bcd
; ld hl,#1000	; sound fx ?
; push hl
; call #8365
; pop af
;
.init_music		; added by Megachur
;
	ld hl,l1040
	or a
	jr z,call_real_init_music
	ld hl,data_mus2
	dec a
	jr z,call_real_init_music
	ld hl,data_mus3
	dec a
	jr z,call_real_init_music
	ld hl,data_mus4
;	dec a
;	jr z,call_real_init_music
;	ld hl,data_mus5

.call_real_init_music
	push hl
	call real_init_music
	pop af
	ret
;
.music_info
	db "Ice Slider (2016)(CpcRetroDev.ByteRealms)(EgoTrip)",0
	db "StArkos",0

	read "music_end.asm"
