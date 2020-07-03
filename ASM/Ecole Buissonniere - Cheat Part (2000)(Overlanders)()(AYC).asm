; Music of Ecole Buissonniere - Cheat Part (2000)(Overlanders)()(AYC)
; Ripped by Megachur the 25/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ECOLEBUI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #2cd2

	read "music_header.asm"

.l2cd2
	db #ad,#1f,#01,#2e,#00,#01,#4f,#03
	db #01,#97,#03,#01,#34,#0c,#01,#a7
	db #0c,#01,#43,#0f,#01,#12,#10,#01
	db #60,#10,#01,#05,#11,#01,#8d,#11
	db #01,#5d,#12,#01,#09,#13,#01,#4b
	db #13,#01,#8d,#13,#ff,#ff,#ff,#ff
	db #ff,#ff,#16,#b2,#fe,#00,#15,#fd
	db #03,#fd,#00,#16,#1c,#fd,#0b,#21
	db #aa,#fd,#0f,#25,#fd,#13,#2a,#fd
	db #17,#2c,#fd,#1b,#38,#aa,#fd,#1f
	db #43,#fd,#23,#4b,#fd,#27,#54,#fd
	db #2b,#59,#aa,#fd,#2f,#70,#fd,#33
	db #86,#fd,#37,#96,#fd,#3b,#a9,#ff
	db #fd,#3f,#fc,#3b,#fc,#37,#fc,#33
	db #fc,#2f,#fc,#2b,#fc,#27,#fc,#23
	db #ff,#fc,#1f,#fc,#1b,#fc,#17,#fc
	db #13,#fc,#0f,#fc,#0b,#fc,#07,#fc
	db #03,#5b,#19,#fd,#7f,#17,#fd,#83
	db #fc,#7f,#1f,#fd,#8b,#f8,#13,#56
	db #2f,#fd,#97,#32,#fd,#9b,#3f,#fd
	db #9f,#f8,#27,#5f,#ad,#fd,#ab,#64
	db #fd,#af,#7e,#fd,#b3,#f8,#3b,#bd
	db #fd,#bf,#ff,#f8,#3f,#fc,#b3,#fc
	db #af,#fc,#ab,#f8,#53,#fc,#9f,#fc
	db #9b,#fc,#97,#f6,#f8,#67,#fc,#8b
	db #f8,#7f,#fc,#73,#1a,#fd,#03,#fc
	db #ff,#23,#db,#fd,#0b,#f8,#93,#35
	db #fd,#17,#fc,#5f,#47,#fd,#1f,#f8
	db #a7,#6d,#6a,#fd,#2b,#fc,#4b,#8e
	db #fd,#33,#f8,#bb,#d5,#fd,#3f,#ff
	db #f8,#bf,#fc,#33,#fc,#2f,#fc,#2b
	db #f8,#d3,#fc,#1f,#fc,#1b,#fc,#17
	db #f6,#f8,#e7,#fc,#0b,#f8,#ff,#fc
	db #f3,#1e,#fd,#83,#fc,#7f,#28,#db
	db #fd,#8b,#f8,#13,#3b,#fd,#97,#fc
	db #df,#4f,#fd,#9f,#f8,#27,#6d,#77
	db #fd,#ab,#fc,#cb,#9f,#fd,#b3,#f8
	db #3b,#ef,#fd,#bf,#ff,#f8,#3f,#fc
	db #b3,#fc,#af,#fc,#ab,#f8,#53,#fc
	db #9f,#fc,#9b,#fc,#97,#ef,#f8,#67
	db #fc,#8b,#f8,#7f,#21,#fd,#ff,#fc
	db #f7,#fc,#ff,#fc,#6f,#76,#32,#fd
	db #0f,#fc,#63,#fc,#e3,#43,#fd,#1b
	db #fc,#5b,#64,#ed,#fd,#23,#fc,#4f
	db #fc,#cf,#86,#fd,#2f,#fc,#47,#c9
	db #fd,#37,#5f,#e1,#fd,#3b,#fd,#fd
	db #3f,#fc,#3b,#fc,#37,#fc,#33,#fc
	db #2f,#ff,#fc,#2b,#fc,#27,#fc,#23
	db #fc,#1f,#fc,#1b,#fc,#17,#fc,#13
	db #fc,#0f,#df,#fc,#0b,#f8,#ff,#2c
	db #fd,#7f,#fc,#73,#fc,#7f,#fc,#6b
	db #fc,#63,#6e,#4b,#fd,#93,#fc,#5f
	db #59,#fd,#9b,#fc,#57,#fc,#4f,#96
	db #da,#fd,#a7,#fc,#4b,#b3,#fd,#af
	db #fc,#43,#0c,#fd,#b7,#2d,#bf,#fd
	db #bb,#52,#fd,#bf,#fc,#bb,#fc,#b7
	db #fc,#b3,#fc,#af,#fc,#ab,#ff,#fc
	db #a7,#fc,#a3,#fc,#9f,#fc,#9b,#fc
	db #97,#fc,#93,#fc,#8f,#fc,#8b,#df
	db #f8,#7f,#01,#ff,#2a,#fc,#65,#fc
	db #71,#88,#ff,#fc,#ed,#fc,#f5,#80
	db #88,#7f,#43,#86,#3f,#7e,#32,#64
	db #2a,#48,#54,#88,#ff,#4b,#96,#fe
	db #77,#38,#70,#2c,#7f,#59,#88,#7f
	db #01,#ff,#01,#fe,#01,#fd,#01,#fc
	db #01,#fb,#fb,#f2,#3f,#54,#a9,#fa
	db #79,#88,#ff,#01,#7f,#01,#7e,#fe
	db #75,#fe,#fd,#86,#fe,#7d,#21,#43
	db #1c,#38,#c8,#7f,#fe,#7b,#2f,#04
	db #5f,#25,#4b,#1f,#3f,#c8,#bf,#38
	db #70,#24,#35,#6a,#fe,#b9,#23,#47
	db #88,#ff,#4f,#9f,#27,#3b,#77,#fe
	db #f9,#28,#4f,#88,#7f,#01,#ff,#01
	db #fe,#c2,#01,#fd,#fd,#f4,#47,#8e
	db #43,#86,#fe,#79,#2c,#72,#59,#88
	db #ff,#01,#7f,#7f,#7e,#38,#70,#fe
	db #7b,#2a,#1f,#54,#23,#47,#88,#ff
	db #01,#7f,#01,#7e,#01,#7d,#7d,#7c
	db #00,#70,#70,#6a,#6a,#54,#54,#47
	db #47,#81,#88,#ff,#9f,#9f,#77,#77
	db #5f,#5f,#fd,#f6,#84,#89,#80,#8e
	db #8e,#86,#86,#fe,#79,#59,#59,#c8
	db #88,#ff,#80,#7f,#70,#70,#fe,#7b
	db #54,#54,#47,#61,#47,#88,#ff,#80
	db #7f,#8e,#8e,#86,#86,#fe,#79,#35
	db #59,#59,#88,#ff,#80,#7f,#c9,#f2
	db #ff,#1c,#fd,#0e,#6a,#1a,#fd,#12
	db #fc,#0e,#23,#fd,#1a,#2a,#fd,#1e
	db #2f,#aa,#fd,#22,#35,#fd,#26,#38
	db #fd,#2a,#47,#fd,#2e,#54,#fb,#fd
	db #32,#fe,#fb,#fe,#37,#fe,#7b,#fe
	db #3b,#70,#fd,#3e,#fe,#77,#ab,#fe
	db #43,#a9,#fd,#46,#bd,#fd,#4a,#d5
	db #fd,#4e,#fc,#4a,#ff,#fc,#46,#fc
	db #42,#fc,#3e,#fc,#3a,#fc,#36,#fc
	db #32,#fc,#2e,#fc,#2a,#fa,#fc,#26
	db #fc,#22,#fc,#1e,#fc,#1a,#f8,#0e
	db #1f,#fd,#8e,#1e,#da,#fd,#92,#fc
	db #8e,#28,#fd,#9a,#f8,#22,#3b,#fd
	db #a6,#3f,#fd,#fd,#aa,#fe,#fd,#fe
	db #af,#f8,#36,#fe,#f9,#fe,#bb,#7e
	db #fd,#be,#ef,#fe,#f7,#fe,#c3,#f8
	db #4a,#ef,#fd,#ce,#f8,#4e,#fc,#c2
	db #fc,#be,#ff,#fc,#ba,#f8,#62,#fc
	db #ae,#fc,#aa,#fc,#a6,#f8,#76,#fc
	db #9a,#f8,#8e,#f8,#01,#0e,#01,#0d
	db #f0,#0c,#fe,#74,#71,#1e,#00,#ef
	db #01,#00,#01,#00,#48,#fe,#01,#ed
	db #b7,#01,#cb,#13,#ca,#01,#cb,#ff
	db #01,#b6,#01,#b5,#01,#b4,#01,#b3
	db #01,#b2,#01,#b1,#01,#b0,#01,#af
	db #ff,#01,#ae,#01,#ad,#01,#ac,#01
	db #ab,#01,#aa,#01,#a9,#01,#a8,#01
	db #a7,#ff,#01,#a6,#01,#a5,#01,#a4
	db #01,#a3,#01,#a2,#01,#a1,#01,#a0
	db #01,#9f,#e0,#01,#9e,#01,#9d,#ef
	db #9c,#6a,#ad,#f3,#00,#16,#fd,#0e
	db #15,#fd,#12,#fc,#0e,#1c,#fd,#1a
	db #55,#21,#fd,#1e,#25,#fd,#22,#2a
	db #fd,#26,#2c,#fd,#2a,#55,#38,#fd
	db #2e,#43,#fd,#32,#4b,#fd,#36,#54
	db #fd,#3a,#55,#59,#fd,#3e,#70,#fd
	db #42,#86,#fd,#46,#96,#fd,#4a,#7f
	db #a9,#fd,#4e,#fc,#4a,#fc,#46,#fc
	db #42,#fc,#3e,#fc,#3a,#fc,#36,#ff
	db #fc,#32,#fc,#2e,#fc,#2a,#fc,#26
	db #fc,#22,#fc,#1e,#fc,#1a,#f8,#0e
	db #5b,#19,#fd,#8e,#17,#fd,#92,#fc
	db #8e,#1f,#fd,#9a,#f8,#22,#56,#2f
	db #fd,#a6,#32,#fd,#aa,#3f,#fd,#ae
	db #f8,#36,#5f,#ad,#fd,#ba,#64,#fd
	db #be,#7e,#fd,#c2,#f8,#4a,#bd,#fd
	db #ce,#ff,#f8,#4e,#fc,#c2,#fc,#be
	db #fc,#ba,#f8,#62,#fc,#ae,#fc,#aa
	db #fc,#a6,#f6,#f8,#76,#fc,#9a,#f8
	db #8e,#fc,#82,#1a,#fd,#12,#fc,#0e
	db #23,#db,#fd,#1a,#f8,#a2,#35,#fd
	db #26,#fc,#6e,#47,#fd,#2e,#f8,#b6
	db #6d,#6a,#fd,#3a,#fc,#5a,#8e,#fd
	db #42,#f8,#ca,#d5,#fd,#4e,#ff,#f8
	db #ce,#fc,#42,#fc,#3e,#fc,#3a,#f8
	db #e2,#fc,#2e,#fc,#2a,#fc,#26,#f6
	db #f8,#f6,#fc,#1a,#f8,#0e,#fc,#02
	db #1e,#fd,#92,#fc,#8e,#28,#db,#fd
	db #9a,#f8,#22,#3b,#fd,#a6,#fc,#ee
	db #4f,#fd,#ae,#f8,#36,#6d,#77,#fd
	db #ba,#fc,#da,#9f,#fd,#c2,#f8,#4a
.l316c equ $ + 2
	db #ef,#fd,#ce,#ff,#f8,#4e,#fc,#c2
	db #fc,#be,#fc,#ba,#f8,#62,#fc,#ae
	db #fc,#aa,#fc,#a6,#ef,#f8,#76,#fc
	db #9a,#f8,#8e,#21,#fd,#0e,#fc,#06
	db #fc,#0e,#fc,#7e,#76,#32,#fd,#1e
	db #fc,#72,#fc,#f2,#43,#fd,#2a,#fc
	db #6a,#64,#ed,#fd,#32,#fc,#5e,#fc
	db #de,#86,#fd,#3e,#fc,#56,#c9,#fd
	db #46,#5f,#e1,#fd,#4a,#fd,#fd,#4e
	db #fc,#4a,#fc,#46,#fc,#42,#fc,#3e
	db #ff,#fc,#3a,#fc,#36,#fc,#32,#fc
	db #2e,#fc,#2a,#fc,#26,#fc,#22,#fc
	db #1e,#df,#fc,#1a,#f8,#0e,#2c,#fd
	db #8e,#fc,#82,#fc,#8e,#fc,#7a,#fc
	db #72,#6e,#4b,#fd,#a2,#fc,#6e,#59
	db #fd,#aa,#fc,#66,#fc,#5e,#96,#da
	db #fd,#b6,#fc,#5a,#b3,#fd,#be,#fc
	db #52,#0c,#fd,#c6,#2d,#bf,#fd,#ca
	db #52,#fd,#ce,#fc,#ca,#fc,#c6,#fc
	db #c2,#fc,#be,#fc,#ba,#ff,#fc,#b6
	db #fc,#b2,#fc,#ae,#fc,#aa,#fc,#a6
	db #fc,#a2,#fc,#9e,#fc,#9a,#df,#f8
	db #8e,#10,#0e,#54,#fc,#56,#f8,#4e
	db #fc,#03,#f8,#46,#f8,#42,#ff,#f8
	db #3e,#f8,#3a,#f8,#36,#fc,#6a,#fc
	db #2f,#fc,#f6,#fc,#37,#fc,#9e,#ff
	db #fc,#3f,#fc,#76,#fc,#47,#fc,#9a
	db #fc,#4f,#fc,#7e,#fc,#57,#fc,#92
	db #ff,#fc,#5f,#fc,#86,#fc,#67,#fc
	db #8a,#fc,#6f,#fc,#d6,#f8,#ce,#fc
	db #83,#ff,#f8,#c6,#f8,#c2,#f8,#be
	db #f8,#ba,#f8,#b6,#fc,#2b,#fc,#af
	db #fc,#3b,#ff,#fc,#b7,#fc,#f2,#f8
	db #3b,#fc,#c7,#fb,#fa,#fd,#db,#fc
	db #53,#fc,#d7,#dc,#fc,#63,#fc,#df
	db #2c,#fd,#ef,#f8,#63,#fc,#ef,#c9
	db #64,#af,#fd,#01,#7e,#fd,#05,#70
	db #fd,#09,#fd,#04,#fc,#ff,#fc,#07
	db #33,#a9,#54,#fd,#19,#fd,#10,#86
	db #43,#fd,#21,#fd,#18,#33,#7e,#3f
	db #fd,#29,#fd,#20,#70,#38,#fd,#31
	db #fd,#28,#33,#64,#32,#fd,#39,#fd
	db #30,#54,#2a,#fd,#41,#fd,#38,#33
	db #43,#21,#fd,#49,#fd,#40,#3f,#1f
	db #fd,#51,#fd,#48,#33,#38,#1c,#fd
	db #59,#fd,#50,#32,#19,#fd,#61,#fd
	db #58,#33,#2a,#15,#fd,#69,#fd,#60
	db #21,#11,#fd,#71,#fd,#68,#32,#1f
	db #10,#fd,#79,#fd,#70,#0c,#86,#fd
	db #81,#a9,#bf,#fd,#85,#96,#fd,#89
	db #fd,#84,#fc,#7f,#fc,#87,#fc,#13
	db #fc,#8f,#39,#b3,#59,#fd,#a1,#f9
	db #14,#fc,#9f,#96,#4b,#fd,#b1,#f9
	db #fd,#a8,#fc,#2b,#fc,#af,#fc,#3b
	db #fc,#b7,#59,#2c,#fd,#c9,#cf,#f9
	db #3c,#fc,#c7,#4b,#25,#fd,#d9,#fd
	db #d0,#fc,#53,#fc,#d7,#ce,#fc,#63
	db #fc,#df,#2c,#16,#fd,#f1,#f9,#64
	db #fc,#ef,#2c,#ff,#fe,#62,#fe,#52
	db #fc,#03,#fe,#e5,#fa,#09,#fe,#dd
	db #fa,#11,#f0,#08,#ff,#fe,#d5,#fa
	db #29,#fe,#45,#f2,#31,#f8,#28,#f8
	db #47,#f8,#20,#f8,#57,#77,#5f,#f9
	db #39,#fe,#cd,#fa,#69,#7e,#f1,#70
	db #f8,#68,#f8,#87,#e0,#f8,#38,#ef
	db #80,#f2,#4f,#53,#51,#50,#51,#53
	db #1c,#54,#56,#57,#f7,#17,#f7,#18
	db #f1,#41,#4f,#47,#60,#3f,#fe,#f5
	db #f6,#e4,#37,#35,#34,#35,#37,#03
	db #38,#3a,#3b,#3d,#3b,#3a,#fb,#ee
	db #f9,#01,#a2,#06,#06,#13,#fa,#e9
	db #43,#16,#43,#fb,#09,#54,#79,#1c
	db #fa,#b1,#a0,#ff,#f8,#67,#f8,#5f
	db #4b,#19,#fa,#ca,#3c,#59,#1e,#fa
	db #da,#a0,#7f,#f8,#e7,#f0,#67,#64
	db #21,#78,#64,#fb,#11,#a0,#ff,#f8
	db #67,#f0,#e7,#70,#25,#70,#f8,#fb
	db #91,#a0,#7f,#f8,#e7,#f8,#77,#f8
	db #06,#53,#51,#50,#00,#51,#53,#54
	db #56,#57,#59,#57,#56,#e0,#bb,#0e
	db #f8,#df,#f8,#66,#49,#48,#46,#48
	db #49,#03,#4b,#4c,#4e,#4f,#4e,#4c
	db #fb,#6e,#f8,#f7,#80,#f8,#86,#58
	db #56,#55,#56,#58,#59,#5b,#0e,#5c
	db #5e,#5c,#5b,#bb,#8e,#f8,#ef,#f8
	db #e6,#6f,#00,#6d,#6c,#6d,#6f,#70
	db #72,#73,#75,#22,#73,#72,#fb,#ee
	db #64,#21,#64,#f3,#01,#63,#00,#61
	db #60,#61,#63,#64,#66,#67,#69,#23
	db #67,#66,#db,#0e,#5f,#1f,#5f,#f3
	db #41,#f0,#ff,#10,#54,#1c,#54,#f3
	db #61,#53,#51,#50,#51,#01,#53,#54
	db #56,#57,#59,#57,#56,#fb,#6e,#f8
	db #c0,#7f,#e0,#df,#e0,#d3,#e0,#5f
	db #c0,#13,#4b,#19,#4b,#80,#f3,#61
	db #49,#48,#46,#48,#49,#4b,#4c,#0e
	db #4e,#4f,#4e,#4c,#fb,#6e,#c0,#7f
	db #e0,#b3,#70,#38,#25,#70,#f3,#e1
	db #f4,#f3,#fc,#ef,#64,#21,#64,#80
	db #f3,#01,#63,#61,#60,#61,#63,#64
	db #66,#08,#67,#69,#67,#66,#db,#0e
	db #5f,#1f,#5f,#e0,#f3,#41,#f0,#ff
	db #f0,#3f,#5d,#5c,#5a,#5c,#5d,#02
	db #5f,#60,#62,#63,#62,#60,#fb,#6e
	db #54,#20,#1c,#54,#f3,#81,#53,#51
	db #50,#51,#53,#02,#54,#56,#57,#59
	db #57,#56,#9b,#8e,#fd,#00,#54,#fd
	db #fd,#3f,#6a,#3f,#3f,#1c,#1c,#5f
	db #1c,#1c,#fc,#03,#fc,#ff,#fc,#07
	db #d5,#47,#21,#d5,#d5,#fc,#0f,#a9
	db #38,#a9,#a9,#fc,#17,#08,#9f,#35
	db #9f,#9f,#fc,#1f,#8e,#2f,#8e,#42
	db #8e,#fc,#27,#7e,#2a,#7e,#7e,#fc
	db #2f,#6a,#1c,#23,#6a,#6a,#fc,#37
	db #fc,#7f,#fc,#3f,#4f,#1a,#21,#4f
	db #4f,#fc,#47,#47,#17,#47,#47,#fc
	db #4f,#30,#3f,#15,#fe,#0d,#fc,#57
	db #35,#12,#35,#35,#84,#fc,#5f,#2a
	db #0e,#2a,#2a,#fc,#67,#28,#0d,#30
	db #28,#28,#fc,#6f,#fc,#13,#66,#77
	db #66,#66,#e1,#fc,#0b,#fc,#83,#f8
	db #07,#ef,#4f,#ef,#ef,#fc,#8f,#08
	db #bd,#3f,#bd,#bd,#fc,#97,#b3,#3b
	db #b3,#78,#b3,#fc,#9f,#fc,#33,#fc
	db #a7,#f8,#2f,#77,#28,#77,#42,#77
	db #fc,#b7,#5f,#1f,#5f,#5f,#fc,#bf
	db #59,#1e,#1e,#59,#59,#fc,#c7,#fc
	db #5b,#fc,#cf,#f8,#57,#3b,#10,#14
	db #3b,#3b,#fc,#df,#2f,#10,#2f,#2f
	db #84,#fc,#e7,#2c,#0f,#2c,#2c,#fc
	db #ef,#a3,#a3,#38,#15,#15,#fe,#ff
	db #f4,#04,#92,#01,#7e,#7e,#14,#75
	db #14,#fe,#7f,#f4,#84,#92,#81,#2a
	db #e1,#ff,#28,#f1,#1f,#b6,#f0,#0f
	db #35,#e1,#3f,#e0,#ff,#2f,#e4,#7f
	db #fd,#5c,#3f,#ba,#e4,#9f,#3b,#fe
	db #bc,#e3,#42,#fd,#b9,#47,#e1,#df
	db #54,#31,#1c,#54,#f2,#01,#f1,#00
	db #4f,#1a,#4f,#f3,#21,#8e,#f0,#0f
	db #6a,#23,#6a,#f2,#41,#f1,#40,#e0
	db #ff,#5f,#38,#1f,#5f,#f2,#81,#f4
	db #80,#fd,#4f,#7e,#2a,#7e,#c6,#f2
	db #a1,#f4,#a0,#77,#28,#77,#e3,#3f
	db #fd,#af,#8e,#34,#2f,#8e,#f2,#e1
	db #f0,#e0,#86,#fe,#bb,#70,#6a,#12
	db #64,#5f,#59,#fe,#1e,#4b,#47,#ed
	db #0b,#46,#36,#46,#45,#fe,#1f,#fe
	db #1d,#48,#fe,#26,#aa,#1d,#47,#3c
	db #4b,#4f,#e2,#81,#eb,#0a,#f5,#b4
	db #fe,#80,#54,#59,#f2,#e4,#c3,#fe
	db #08,#c3,#82,#e0,#5b,#47,#43,#e2
	db #40,#42,#36,#42,#41,#fe,#5f,#fe
	db #5d,#44,#fe,#66,#ea,#5d,#43,#2c
	db #3f,#3b,#e2,#81,#3a,#fe,#a0,#fe
	db #9e,#3c,#3c,#60,#3d,#fe,#a5,#eb
	db #9e,#3b,#3f,#43,#47,#4b,#b1,#e4
	db #e4,#4e,#fe,#e0,#fe,#de,#50,#50
	db #51,#fe,#e5,#dd,#eb,#de,#fd,#1c
	db #8e,#fe,#02,#86,#00,#fd,#dd,#9f
	db #fe,#82,#d7,#e6,#80,#e0,#ff,#54
	db #fe,#bf,#a9,#fe,#c2,#e6,#c0,#c0
	db #7f,#ad,#e0,#1a,#3f,#fe,#3f,#7e
	db #fe,#42,#c6,#40,#3b,#fe,#7f,#78
	db #77,#fe,#82,#c6,#80,#e0,#df,#e0
	db #da,#54,#54,#15,#42,#15,#c4,#00
	db #6a,#6a,#1a,#1a,#c4,#40,#5f,#10
	db #5f,#17,#17,#c4,#80,#7e,#7e,#1f
	db #1f,#84,#c4,#c0,#70,#70,#1c,#1c
	db #c4,#00,#8e,#8e,#30,#23,#23,#c4
	db #40,#c0,#bf,#9f,#9f,#28,#28,#ef
	db #c4,#c0,#fe,#3d,#fe,#00,#1a,#fd
	db #03,#fc,#ff,#fe,#7d,#fe,#0c,#55
	db #2a,#fd,#0f,#2f,#fd,#13,#35,#fd
	db #17,#38,#fd,#1b,#55,#47,#fd,#1f
	db #54,#fd,#23,#5f,#fd,#27,#6a,#fd
	db #2b,#75,#70,#fd,#2f,#fe,#3f,#fe
	db #34,#a9,#fd,#37,#bd,#fd,#3b,#7f
	db #d5,#fd,#3f,#fc,#3b,#fc,#37,#fc
	db #33,#fc,#2f,#fc,#2b,#fc,#27,#ff
	db #fc,#23,#fc,#1f,#fc,#1b,#fc,#17
	db #fc,#13,#fc,#0f,#fc,#0b,#f8,#ff
	db #20,#bd,#3f,#fe,#45,#ef,#4f,#ef
	db #ef,#d5,#79,#47,#fe,#41,#fc,#83
	db #fc,#7f,#fc,#87,#9f,#35,#fe,#bf
	db #84,#fc,#8f,#7e,#2a,#7e,#7e,#fc
	db #97,#77,#28,#26,#77,#77,#fc,#9f
	db #6a,#23,#fe,#55,#fc,#a7,#5f,#61
	db #1f,#fd,#29,#fd,#b0,#4f,#1a,#4f
	db #4f,#fc,#b7,#08,#3f,#15,#3f,#3f
	db #fc,#bf,#3b,#14,#3b,#4c,#3b,#fc
	db #c7,#35,#12,#fe,#69,#fc,#cf,#2f
	db #10,#cc,#fd,#15,#fd,#d8,#28,#0d
	db #fe,#fd,#fc,#df,#1f,#0a,#21,#1f
	db #1f,#fc,#e7,#1e,#0a,#1e,#1e,#fc
	db #ef,#b7,#fc,#73,#21,#fd,#03,#fc
	db #ff,#2c,#fd,#0b,#fc,#67,#fe,#dd
	db #b7,#fe,#14,#43,#fd,#17,#fc,#5f
	db #59,#fd,#1f,#fc,#53,#fe,#b5,#b7
	db #fe,#28,#86,#fd,#2b,#fc,#4b,#b3
	db #fd,#33,#fc,#3f,#fe,#8d,#bf,#fe
	db #3c,#0c,#fd,#3f,#fc,#3b,#fc,#37
	db #fc,#33,#fc,#2f,#fc,#2b,#ff,#fc
	db #27,#fc,#23,#fc,#1f,#fc,#1b,#fc
	db #17,#fc,#13,#fc,#0f,#fc,#0b,#d7
	db #f8,#ff,#80,#7f,#1c,#fd,#ff,#1a
	db #fd,#03,#fc,#ff,#fc,#77,#7b,#2a
	db #fd,#0f,#fe,#ed,#fd,#e1,#fd,#17
	db #38,#fd,#1b,#fc,#63,#7b,#54,#fd
	db #23,#fe,#c5,#fd,#b9,#fd,#2b,#70
	db #fd,#2f,#fc,#4f,#7f,#a9,#fd,#37
	db #fe,#9d,#fd,#91,#fd,#3f,#fc,#3b
	db #fc,#37,#fc,#33,#ff,#fc,#2f,#fc
	db #2b,#fc,#27,#fc,#23,#fc,#1f,#fc
	db #1b,#fc,#17,#fc,#13,#fb,#fc,#0f
	db #fc,#0b,#f8,#ff,#80,#7f,#fc,#73
	db #21,#fd,#03,#fc,#ff,#7b,#2c,#fd
	db #0b,#fc,#67,#fe,#dd,#fe,#14,#43
	db #fd,#17,#fc,#5f,#7b,#59,#fd,#1f
	db #fc,#53,#fe,#b5,#fe,#28,#86,#fd
	db #2b,#fc,#4b,#7b,#b3,#fd,#33,#fc
	db #3f,#fe,#8d,#fe,#3c,#0c,#fd,#3f
	db #fc,#3b,#ff,#fc,#37,#fc,#33,#fc
	db #2f,#fc,#2b,#fc,#27,#fc,#23,#fc
	db #1f,#fc,#1b,#fd,#fc,#17,#fc,#13
	db #fc,#0f,#fc,#0b,#f8,#ff,#80,#7f
	db #1c,#fd,#ff,#77,#1a,#fd,#03,#fc
	db #ff,#fc,#77,#2a,#fd,#0f,#fe,#ed
	db #fd,#e1,#b7,#fd,#17,#38,#fd,#1b
	db #fc,#63,#54,#fd,#23,#fe,#c5,#fd
	db #b9,#b7,#fd,#2b,#70,#fd,#2f,#fc
	db #4f,#a9,#fd,#37,#fe,#9d,#fd,#91
	db #ff,#fd,#3f,#fc,#3b,#fc,#37,#fc
	db #33,#fc,#2f,#fc,#2b,#fc,#27,#fc
	db #23,#ff,#fc,#1f,#fc,#1b,#fc,#17
	db #fc,#13,#fc,#0f,#fc,#0b,#f8,#ff
	db #fe,#fd,#ff,#fe,#80,#fe,#f9,#fd
	db #f9,#fd,#87,#fe,#f5,#fd,#e9,#f9
	db #14,#fe,#dd,#fe,#fd,#d1,#fd,#9b
	db #fe,#cd,#fd,#c1,#f9,#28,#fe,#b5
	db #fe,#ac,#7e,#b7,#fd,#af,#9f,#fd
	db #b3,#f8,#3b,#ef,#fd,#bf,#f8,#3f
	db #fc,#b3,#ff,#fc,#af,#fc,#ab,#f8
	db #53,#fc,#9f,#fc,#9b,#fc,#97,#f8
	db #67,#fc,#8b,#f6,#f8,#7f,#01,#ff
	db #01,#fe,#e1,#fd,#21,#fe,#1c,#72
	db #1f,#00,#ef,#01,#00,#01,#00,#39
	db #fe,#01,#ed,#c6,#01,#da,#5a,#d9
	db #ec,#c6,#ff,#f8,#d6,#57,#d6,#c4
	db #44,#fc,#9a,#ed,#80,#f8,#7b,#20
	db #9f,#01,#9f,#fe,#01,#7e,#01,#7d
	db #01,#7c,#01,#7b,#01,#7a,#01,#79
	db #75,#77,#01,#fc,#fe,#02,#fe,#05
	db #f9,#04,#f8,#ff,#8c,#9b,#8c,#03
	db #02,#02,#ff,#fc,#fd,#f4,#04,#12
	db #01,#fe,#f1,#01,#ff,#01,#00,#01
	db #ff,#01,#fe,#fd,#01,#fd,#01,#fc
	db #01,#fb,#01,#fa,#01,#f9,#b9,#f7
	db #01,#fd,#3f,#cf,#04,#43,#01,#43
	db #00,#01,#fd,#3f,#04,#43,#01,#43
	db #01,#3e,#c0,#01,#3d,#8f,#3c,#6a
	db #ad,#e4,#00,#16,#fd,#1d,#15,#fd
	db #21,#fc,#1d,#1c,#fd,#29,#55,#21
	db #fd,#2d,#25,#fd,#31,#2a,#fd,#35
	db #2c,#fd,#39,#55,#38,#fd,#3d,#43
	db #fd,#41,#4b,#fd,#45,#54,#fd,#49
	db #55,#59,#fd,#4d,#70,#fd,#51,#86
	db #fd,#55,#96,#fd,#59,#7f,#a9,#fd
	db #5d,#fc,#59,#fc,#55,#fc,#51,#fc
	db #4d,#fc,#49,#fc,#45,#ff,#fc,#41
	db #fc,#3d,#fc,#39,#fc,#35,#fc,#31
	db #fc,#2d,#fc,#29,#f8,#1d,#5b,#19
	db #fd,#9d,#17,#fd,#a1,#fc,#9d,#1f
	db #fd,#a9,#f8,#31,#56,#2f,#fd,#b5
	db #32,#fd,#b9,#3f,#fd,#bd,#f8,#45
	db #5f,#ad,#fd,#c9,#64,#fd,#cd,#7e
	db #fd,#d1,#f8,#59,#bd,#fd,#dd,#ff
	db #f8,#5d,#fc,#d1,#fc,#cd,#fc,#c9
	db #f8,#71,#fc,#bd,#fc,#b9,#fc,#b5
	db #f6,#f8,#85,#fc,#a9,#f8,#9d,#fc
	db #91,#1a,#fd,#21,#fc,#1d,#23,#db
	db #fd,#29,#f8,#b1,#35,#fd,#35,#fc
	db #7d,#47,#fd,#3d,#f8,#c5,#6d,#6a
	db #fd,#49,#fc,#69,#8e,#fd,#51,#f8
	db #d9,#d5,#fd,#5d,#ff,#f8,#dd,#fc
	db #51,#fc,#4d,#fc,#49,#f8,#f1,#fc
	db #3d,#fc,#39,#fc,#35,#f6,#f8,#05
	db #fc,#29,#f8,#1d,#fc,#11,#1e,#fd
	db #a1,#fc,#9d,#28,#db,#fd,#a9,#f8
	db #31,#3b,#fd,#b5,#fc,#fd,#4f,#fd
	db #bd,#f8,#45,#6d,#77,#fd,#c9,#fc
	db #e9,#9f,#fd,#d1,#f8,#59,#ef,#fd
	db #dd,#e9,#f8,#5d,#fc,#d1,#fe,#bf
	db #52,#f1,#ef,#80,#a3,#fa,#00,#80
	db #f8,#ff,#d5,#df,#e9,#f3,#fd,#07
	db #11,#1f,#1b,#80,#c3,#fe,#18,#fb
	db #17,#e8,#00,#fc,#fc,#e4,#1c,#fe
	db #01,#18,#01,#57,#01,#56,#01,#55
	db #01,#54,#01,#53,#52,#12,#86,#ef
	db #fa,#00,#f8,#ff,#f7,#ef,#5a,#fe
	db #18,#fb,#17,#e8,#00,#fc,#fc,#f7
	db #e4,#1c,#d8,#18,#01,#80,#7f,#7f
	db #f6,#fa,#00,#f8,#ff,#f7,#ef,#77
	db #fa,#fe,#18,#fb,#17,#e8,#00,#7b
	db #fe,#38,#e3,#1b,#d8,#18,#ff,#68
	db #80,#fc,#04,#c4,#1c,#d8,#18,#e8
	db #e0,#fc,#84,#c4,#9c,#d8,#98,#fb
	db #68,#00,#fc,#fc,#c4,#dc,#fc,#7c
	db #dc,#5c,#53,#fa,#00,#f8,#ff,#bb
	db #f7,#ef,#38,#fe,#18,#fb,#17,#e8
	db #00,#a9,#fe,#38,#e3,#1b,#f7,#01
	db #18,#01,#57,#01,#56,#55,#15,#30
	db #fa,#00,#f8,#ff,#f7,#ef,#77,#cc
	db #fe,#18,#fb,#17,#e8,#00,#18,#fe
	db #38,#e3,#1b,#d8,#18,#77,#70,#fa
	db #80,#f8,#7f,#f7,#6f,#f6,#fe,#98
	db #fb,#97,#e8,#80,#f7,#fc,#fc,#e4
	db #9c,#d8,#98,#80,#00,#bb,#fa,#80
	db #f8,#7f,#f7,#6f,#77,#7e,#fe,#98
	db #fb,#97,#e8,#80,#de,#fe,#b8,#fb
	db #9b,#c0,#c0,#7d,#53,#fa,#00,#f8
	db #ff,#f3,#ef,#fc,#18,#e8,#00,#a9
	db #fe,#38,#fb,#e3,#1b,#01,#18,#3f
	db #17,#fc,#04,#9c,#dc,#bb,#fa,#80
	db #f8,#7f,#db,#f7,#6f,#fc,#84,#7e
	db #fe,#9c,#e7,#7f,#de,#fe,#b8,#e3
	db #9b,#fd,#d8,#98,#01,#00,#e7,#5f
	db #fc,#7c,#c4,#1c,#58,#18,#30,#fa
	db #00,#dd,#f8,#ff,#f7,#ef,#cc,#fe
	db #18,#fb,#17,#e8,#00,#18,#fe,#38
	db #fd,#e3,#1b,#d8,#18,#fd,#fc,#fc
	db #82,#f8,#7f,#f7,#6f,#7b,#fe,#98
	db #dd,#fb,#97,#e8,#80,#1c,#fe,#b8
	db #e3,#9b,#d8,#98,#53,#fa,#00,#f7
	db #f8,#ff,#f7,#ef,#f9,#e4,#e7,#ff
	db #a9,#fe,#38,#e3,#1b,#58,#18,#77
	db #30,#fa,#00,#f8,#ff,#f7,#ef,#cc
	db #fe,#18,#fb,#17,#e8,#00,#7f,#18
	db #fe,#38,#e3,#1b,#d8,#18,#fd,#fc
	db #fc,#82,#f8,#7f,#f7,#6f,#77,#7b
	db #fe,#98,#fb,#97,#e8,#80,#1c,#fe
	db #b8,#e3,#9b,#d8,#98,#77,#53,#fa
	db #00,#f8,#ff,#f7,#ef,#bb,#fa,#18
	db #01,#ff,#17,#fe,#d8,#88,#06,#63
	db #ff,#16,#9e,#1c,#d2,#7f,#00,#d3
	db #01,#00,#11,#ff,#01,#f1,#ef,#00
	db #02,#fa,#00,#f7,#ff,#ff,#f9,#eb
	db #f7,#13,#01,#00,#01,#1f,#01,#1e
	db #01,#1d,#01,#1c,#01,#1b,#bf,#1a
	db #fa,#03,#fa,#00,#f7,#ff,#f8,#f0
	db #f9,#e4,#e7,#ff,#f8,#14,#ff,#c0
	db #00,#01,#80,#7f,#7f,#01,#80,#e7
	db #df,#fc,#0c,#01,#dc,#83,#db,#bf
	db #98,#78,#03,#fa,#00,#f7,#ff,#f4
	db #50,#fc,#18,#e8,#00,#f8,#14,#f7
	db #01,#00,#01,#3f,#01,#3e,#3d,#fd
	db #04,#fa,#00,#f7,#ff,#f0,#d0,#df
	db #01,#00,#9f,#ff,#03,#fa,#80,#f7
	db #7f,#d8,#70,#f8,#94,#80,#40,#fe
	db #01,#00,#27,#ff,#fc,#0c,#01,#dc
	db #03,#db,#fc,#fc,#1c,#dc,#04,#ff
	db #fa,#00,#f7,#ff,#f0,#d0,#a0,#00
	db #fd,#7c,#fc,#82,#f7,#7f,#f4,#f0
	db #df,#f9,#74,#a3,#83,#03,#fa,#00
	db #f7,#ff,#f0,#70,#e8,#00,#f8,#14
	db #bf,#40,#00,#04,#fa,#00,#f7,#ff
	db #f0,#d0,#a0,#00,#fd,#7c,#fc,#82
	db #f7,#f7,#7f,#f4,#f0,#f9,#74,#a3
	db #83,#03,#fa,#00,#f7,#ff,#f8,#f0
	db #fb,#f0,#00,#01,#08,#20,#07,#88
	db #06,#63,#ff,#00,#9d,#1c,#d3,#d2
	db #19,#d7,#01,#00,#01,#00,#0f,#f1
	db #ff,#09,#f9,#0f,#f0,#ff,#01,#07
	db #ff,#01,#26,#01,#25,#01,#24,#01
	db #23,#01,#22,#01,#21,#01,#20,#01
	db #1f,#ff,#01,#1e,#01,#1d,#01,#1c
	db #01,#1b,#01,#1a,#01,#19,#01,#18
	db #01,#17,#ff,#01,#16,#01,#15,#01
	db #14,#01,#13,#01,#12,#01,#11,#01
	db #10,#01,#0f,#fa,#01,#0e,#01,#0d
	db #01,#0c,#01,#f7,#ee,#09,#19,#70
	db #1c,#3e,#ac,#f3,#00,#3c,#f2,#0e
	db #18,#01,#1d,#1e,#1c,#1c,#38,#ff
	db #fa,#00,#f8,#ff,#f4,#f7,#f8,#17
	db #01,#03,#01,#22,#01,#21,#01,#20
	db #fa,#01,#1f,#01,#1e,#01,#1d,#01
	db #1c,#db,#fb,#3a,#fa,#40,#1e,#be
	db #f9,#40,#1a,#f9,#4f,#fc,#47,#fc
	db #57,#1f,#df,#28,#20,#3c,#fa,#fe
	db #18,#f8,#17,#fc,#22,#f8,#1f,#ef
	db #0f,#3a,#fa,#40,#1e,#a7,#f9,#40
	db #1a,#f9,#4f,#1e,#3e,#fe,#58,#fc
	db #57,#df,#1f,#ff,#40,#00,#a8,#00
	db #f9,#84,#01,#7f,#01,#9e,#01,#9d
	db #01,#9c,#01,#9b,#f7,#01,#9a,#01
	db #99,#01,#98,#7f,#77,#3c,#fe,#18
	db #f8,#17,#fc,#22,#ff,#f8,#1f,#ef
	db #0f,#01,#00,#27,#ff,#f9,#04,#01
	db #ff,#01,#1e,#01,#1d,#9f,#1d,#fc
	db #1d,#39,#fa,#00,#f9,#ff,#f3,#ee
	db #f4,#e3,#ec,#e7,#f2,#01,#1b,#33
	db #1a,#88,#06,#63,#ff,#18,#18,#71
	db #1e,#0d,#f8,#01,#00,#01,#00,#01
	db #ff,#01,#fe,#fd,#fc,#0f,#0f,#0e
	db #d5,#fe,#02,#fd,#fd,#0c,#fe,#08
	db #0b,#fe,#0b,#0a,#fe,#0e,#57,#09
	db #fe,#11,#08,#fe,#14,#07,#f0,#00
	db #b0,#00,#d0,#60,#ff,#01,#28,#01
	db #a7,#01,#a6,#01,#a5,#01,#a4,#01
	db #a3,#01,#a2,#01,#a1,#ff,#01,#a0
	db #9f,#2f,#58,#00,#01,#28,#01,#a7
	db #01,#a6,#01,#a5,#01,#a4,#ff,#01
	db #a3,#01,#a2,#01,#a1,#01,#a0,#01
	db #9f,#01,#9e,#01,#9d,#01,#9c,#fc
	db #8c,#1b,#fd,#0b,#01,#0f,#01,#11
	db #01,#10,#f3,#0e,#0d,#0b,#55,#0a
	db #f1,#1e,#09,#f1,#2e,#08,#f1,#3e
	db #07,#f1,#4e,#55,#06,#f1,#5e,#05
	db #f1,#6e,#04,#f1,#7e,#03,#f1,#8e
	db #40,#02,#f2,#9e,#0f,#00,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#03,#0a
	db #0a,#09,#09,#08,#08,#fe,#09,#01
	db #0f,#ec,#01,#10,#01,#0f,#0e,#0d
	db #0d,#01,#00,#01,#00,#0d,#0f,#cf
	db #01,#00,#01,#00,#0f,#0e,#01,#00
	db #01,#00,#01,#ff,#01,#fe,#f5,#01
	db #fd,#01,#fc,#01,#fb,#fa,#f9,#09
	db #f5,#00,#0a,#f4,#0c,#56,#0b,#f4
	db #19,#0c,#f4,#26,#0d,#f4,#33,#f3
	db #f3,#0f,#ff,#f4,#4d,#f3,#40,#f3
	db #33,#f4,#27,#80,#00,#f3,#da,#01
	db #00,#0c,#0b,#07,#0b,#0c,#0d,#0e
	db #0f,#65,#85,#80,#80,#c0,#60,#d5
	db #60,#20,#f1,#ff,#0d,#f1,#0f,#0c
	db #f1,#1f,#0b,#f1,#2f,#55,#0a,#f1
	db #3f,#09,#f1,#4f,#08,#f1,#5f,#07
	db #f1,#6f,#7f,#06,#e0,#00,#80,#80
	db #e0,#20,#36,#00,#ea,#d4,#f4,#f4
	db #f6,#2b,#7f,#09,#f7,#36,#01,#00
	db #35,#ff,#01,#00,#01,#09,#01,#08
	db #01,#07,#f5,#01,#06,#01,#05,#01
	db #04,#f4,#02,#0d,#f4,#0f,#0a,#fe
	db #1a,#55,#0c,#f1,#1f,#0b,#f1,#2f
	db #0a,#f1,#3f,#09,#f1,#4f,#55,#08
	db #f1,#5f,#07,#f1,#6f,#06,#f1,#7f
	db #05,#f1,#8f,#40,#04,#f3,#9f,#0d
	db #ab,#f7,#00,#0c,#f6,#0a,#0b,#f8
	db #15,#08,#01,#1e,#2e,#1d,#15,#09
	db #09,#0a,#fe,#f2,#0b,#fe,#f5,#0c
	db #fe,#f8,#42,#0d,#fe,#fb,#0e,#0e
	db #0f,#0f,#fe,#fe,#0e,#f7,#fd,#fb
	db #f7,#00,#fc,#0b,#fe,#f9,#0b,#fc
	db #08,#f8,#18,#01,#04,#ff,#01,#23
	db #01,#22,#01,#21,#01,#20,#01,#1f
	db #01,#1e,#01,#1d,#01,#1c,#ff,#01
	db #1b,#01,#1a,#01,#19,#01,#18,#01
	db #17,#01,#16,#01,#15,#01,#14,#ff
	db #01,#13,#01,#12,#01,#11,#01,#10
	db #01,#0f,#01,#0e,#01,#0d,#01,#0c
	db #ff,#01,#0b,#ee,#ea,#f3,#04,#01
	db #09,#26,#08,#f3,#01,#fd,#fa,#f3
	db #11,#f5,#fd,#fd,#f3,#21,#fe,#f5
	db #f2,#30,#0b,#f1,#3f,#0a,#f1,#4f
	db #55,#09,#f1,#5f,#08,#f1,#6f,#07
	db #f1,#7f,#06,#f1,#8f,#55,#05,#f1
	db #9f,#04,#f1,#af,#03,#f1,#bf,#02
	db #f1,#cf,#56,#01,#f1,#df,#00,#d4
	db #ef,#08,#d3,#ef,#9d,#1d,#5d,#2d
	db #01,#2e,#00,#01,#d3,#06
	db #01,#8c,#07,#01,#e1,#0b,#01,#15
	db #0d,#01,#fd,#11,#01,#77,#12,#01
	db #0f,#14,#01,#6d,#15,#01,#d8,#17
	db #01,#62,#19,#01,#9f,#1c,#01,#ff
	db #1c,#01,#5f,#1d,#ff,#ff,#ff,#ff
	db #ff,#ff,#27,#07,#26,#26,#27,#27
	db #28,#fe,#05,#fe,#03,#fd,#01,#00
	db #fa,#fe,#02,#fe,#fa,#f6,#f2,#f2
	db #40,#f6,#31,#0d,#fd,#ff,#01,#ff
	db #fd,#fb,#13,#f9,#f9,#fb,#9e,#e5
	db #0f,#1f,#fa,#51,#a9,#50,#f0,#9a
	db #ea,#01,#b2,#01,#18,#d2,#0a,#d2
	db #d2,#d3,#d4,#04,#d5,#d6,#d5,#d4
	db #d3,#9c,#41,#bb,#bc,#01,#bd,#be
	db #bf,#be,#bd,#bc,#bb,#01,#ae,#80
	db #be,#ad,#fa,#f6,#f2,#f2,#f6,#fa
	db #fe,#2a,#02,#fe,#3d,#f8,#ff,#f9
	db #bc,#fd,#f9,#bb,#fb,#aa,#f9,#ba
	db #f9,#f9,#b9,#f9,#f9,#b8,#fb,#f9
	db #b7,#fd,#a9,#f9,#b6,#ff,#f9,#b5
	db #01,#74,#bd,#1f,#3f,#fa,#92,#24
	db #1f,#2f,#fa,#9a,#17,#27,#fa,#a2
	db #13,#27,#4e,#3b,#fb,#ab,#1d,#3b
	db #f9,#9b,#fe,#b7,#f9,#a4,#27,#5f
	db #35,#fc,#c4,#1a,#fd,#c6,#f9,#b5
	db #fb,#ba,#fd,#c1,#fe,#db,#5f,#47
	db #fe,#de,#23,#fd,#de,#fe,#e4,#f9
	db #cf,#fd,#d5,#fb,#d9,#fd,#fe,#f5
	db #fe,#98,#fa,#93,#f9,#e8,#fe,#06
	db #f9,#f1,#27,#fe,#b1,#df,#f9,#ab
	db #ef,#9a,#4f,#fb,#2b,#fe,#2a,#d5
	db #b3,#bc,#91,#f9,#8a,#ff,#f6,#dc
	db #f8,#4e,#f7,#ee,#fd,#64,#a5,#fa
	db #f7,#a2,#f8,#5e,#f8,#ce,#ff,#f7
	db #ee,#f8,#df,#aa,#7f,#f9,#8a,#f6
	db #dc,#ef,#33,#fa,#f8,#a8,#fd,#ff
	db #f9,#0a,#f6,#dc,#f8,#ce,#f7,#ee
	db #fc,#7c,#a6,#7b,#de,#22,#fc,#63
	db #ff,#fb,#60,#f9,#e0,#fe,#d3,#f8
	db #56,#fc,#16,#fb,#e1,#f9,#cf,#fe
	db #d5,#ff,#f8,#70,#f8,#f8,#f9,#e8
	db #fe,#e7,#f8,#89,#fc,#49,#fb,#45
	db #f9,#02,#ff,#fd,#d5,#f9,#bc,#fb
	db #fb,#fd,#f8,#f8,#ab,#fb,#21,#fc
	db #f0,#fc,#e3,#ff,#fb,#e0,#ef,#cd
	db #fc,#96,#fb,#61,#ef,#e7,#f7,#00
	db #e7,#01,#fa,#e1,#af,#fe,#48,#2c
	db #fb,#a2,#16,#fe,#a6,#f8,#2b,#f9
	db #9b,#fe,#b9,#bf,#f9,#a4,#2c,#fa
	db #94,#fd,#c9,#f8,#45,#fd,#bb,#fc
	db #c0,#fc,#a9,#f9,#f9,#f8,#f9,#cf
	db #fe,#d5,#fa,#d8,#fe,#f5,#11,#23
	db #fa,#f9,#24,#0e,#1d,#fa,#01,#0e
	db #16,#fa,#09,#0b,#1f,#97,#fa,#11
	db #0f,#1f,#f9,#02,#1d,#f9,#0a,#fe
	db #26,#fb,#fb,#f7,#fd,#f8,#f9,#1b
	db #fe,#39,#f9,#24,#16,#fa,#14,#fd
	db #49,#f9,#35,#fa,#fc,#3a,#fc,#40
	db #fd,#42,#fa,#e1,#fe,#df,#2f,#fa
	db #67,#17,#bc,#f8,#89,#27,#f8,#9a
	db #f9,#68,#fe,#84,#f9,#71,#27,#35
	db #bf,#fc,#91,#1a,#fd,#93,#f9,#82
	db #fb,#88,#fd,#8e,#fe,#a8,#f8,#c5
	db #ef,#f9,#9b,#fc,#a0,#fb,#a6,#27
	db #f7,#de,#f9,#b5,#fe,#d3,#fa,#be
	db #f7,#fe,#db,#f9,#e8,#fe,#7d,#ef
	db #67,#4f,#fb,#f8,#fe,#f7,#d5,#80
	db #ff,#f8,#5e,#f8,#ce,#f7,#ee,#f8
	db #df,#aa,#7f,#f9,#8a,#f6,#dc,#ef
	db #33,#c1,#fa,#f8,#d2,#fd,#ec,#ec
	db #ee,#f0,#ee,#e3,#f8,#06,#3e,#3a
	db #3a,#3e,#42,#fd,#1a,#f7,#0e,#bb
	db #0e,#bd,#bf,#bd,#bb,#e3,#2b,#f7
	db #11,#f8,#42,#9f,#0e,#a1,#9f,#9d
	db #9d,#e3,#5e,#f7,#44,#f8,#75,#78
	db #0e,#77,#76,#76,#77,#e3,#91,#f7
	db #77,#f8,#a8,#1f,#5e,#3f,#fa,#c5
	db #1f,#fa,#cd,#fd,#ea,#fb,#d6,#fd
	db #f2,#3b,#be,#fb,#de,#1d,#fe,#e2
	db #f9,#cf,#fa,#d5,#fe,#dc,#fe,#f5
	db #35,#bc,#fd,#f8,#1a,#fd,#f9,#f9
	db #e8,#fb,#ed,#fc,#f4,#27,#47,#bf
	db #fe,#11,#23,#fd,#11,#fe,#17,#f9
	db #02,#fd,#08,#fb,#0c,#fe,#28,#fb
	db #fe,#cb,#fa,#c6,#f9,#1b,#fe,#39
	db #f9,#24,#27,#fd,#e4,#fa,#df,#b8
	db #ef,#cd,#4f,#fb,#5e,#fd,#5d,#d6
	db #e7,#ec,#ec,#ee,#20,#f0,#ee,#e3
	db #91,#3e,#3a,#3a,#3e,#42,#c1,#fc
	db #b3,#f8,#a8,#bb,#bd,#bf,#bd,#bb
	db #e2,#c4,#c1,#f8,#ab,#f7,#db,#a1
	db #9f,#9d,#9d,#9f,#e3,#f8,#c1,#f8
	db #de,#f7,#0e,#77,#76,#76,#77,#78
	db #e3,#2b,#cb,#f7,#11,#f8,#42,#1f
	db #3f,#fa,#5f,#1f,#fb,#67,#fd,#82
	db #d3,#fb,#6f,#fc,#8a,#3b,#fb,#78
	db #1d,#3b,#f9,#68,#fb,#87,#97,#fc
	db #74,#27,#35,#fc,#91,#1a,#fd,#93
	db #f9,#82,#fb,#88,#d5,#fd,#8e,#fe
	db #a8,#47,#fe,#ab,#23,#fd,#ab,#47
	db #f9,#9b,#df,#fc,#a0,#fb,#a6,#27
	db #fd,#64,#fa,#60,#f9,#b5,#fe,#d3
	db #fa,#be,#f7,#fe,#db,#fe,#7e,#f9
	db #78,#ef,#67,#4f,#fb,#f8,#fe,#f7
	db #d5,#80,#ff,#f8,#5e,#f8,#ce,#f7
	db #ee,#f8,#df,#aa,#7f,#f9,#8a,#f6
	db #dc,#ef,#33,#fd,#fa,#f8,#ca,#fd
	db #a2,#f8,#fc,#c9,#f8,#c5,#3f,#62
	db #5e,#fc,#2b,#71,#2f,#fb,#2b,#01
	db #2e,#d7,#2d,#2f,#2f,#17,#fe,#5e
	db #d4,#fb,#62,#3d,#60,#dd,#34,#2b
	db #ee,#35,#f1,#1d,#3b,#91,#fa,#c5
	db #1d,#2c,#fa,#cd,#16,#2c,#25,#fb
	db #d6,#17,#12,#25,#38,#fb,#de,#1c
	db #fe,#e2,#f9,#cf,#fa,#d5,#d7,#fe
	db #dc,#fe,#f5,#32,#fd,#f8,#19,#fd
	db #f9,#f9,#e8,#fb,#ed,#97,#fc,#f4
	db #25,#43,#fe,#11,#21,#fd,#11,#fe
	db #17,#f9,#02,#ff,#fd,#08,#fb,#0c
	db #fe,#28,#fe,#cb,#fa,#c6,#f9,#1b
	db #fe,#39,#f9,#24,#77,#25,#fd,#e4
	db #fa,#df,#ef,#cd,#4b,#fb,#5e,#fd
	db #5d,#d6,#e7,#ff,#ef,#c4,#f9,#3d
	db #f6,#dc,#f8,#4e,#f7,#6e,#fc,#78
	db #a6,#fb,#f7,#a2,#ff,#f8,#5e,#d5
	db #b3,#bc,#91,#f9,#8a,#f6,#dc,#f8
	db #4e,#f7,#ee,#fd,#64,#ff,#a5,#fa
	db #f7,#a2,#f8,#5e,#f8,#ce,#f7,#ee
	db #f8,#df,#aa,#7f,#f9,#8a,#ff,#f6
	db #dc,#ef,#33,#fa,#f8,#d2,#fd,#fd
	db #97,#fb,#93,#f9,#e0,#fe,#06,#ff
	db #f8,#89,#fc,#49,#fb,#14,#f9,#02
	db #fe,#08,#f8,#a3,#f8,#2b,#f9,#1b
	db #ff,#fe,#1a,#f8,#bc,#fc,#7c,#fb
	db #78,#f9,#35,#fc,#07,#fa,#f0,#fb
	db #2e,#ff,#fc,#2b,#f8,#df,#f7,#ef
	db #fd,#17,#fb,#13,#ef,#00,#fc,#c9
	db #fb,#94,#fa,#ef,#1a,#f7,#33,#e7
	db #34,#fa,#14,#fd,#7b,#2a,#fc,#d6
	db #15,#ff,#fe,#d9,#f7,#5e,#f9,#cf
	db #fb,#d5,#fd,#db,#fe,#f5,#fb,#c8
	db #fd,#fc,#ff,#f8,#78,#fd,#ee,#fb
	db #f3,#fd,#dd,#f9,#2b,#f9,#02,#fe
	db #08,#fa,#0b,#92,#fe,#28,#10,#21
	db #fa,#2c,#0e,#1c,#fa,#34,#0e,#49
	db #15,#fa,#3c,#0a,#1d,#fa,#44,#0e
	db #1d,#f9,#35,#ff,#fe,#51,#fa,#3e
	db #fe,#59,#fb,#2e,#fc,#2b,#f9,#4f
	db #fb,#55,#fd,#5b,#ff,#fe,#75,#fb
	db #48,#fd,#7c,#f9,#68,#fc,#6d,#fb
	db #73,#fe,#77,#fa,#14,#ab,#fe,#12
	db #2c,#fa,#9a,#16,#f8,#bc,#25,#f8
	db #cd,#f9,#9b,#cb,#fe,#b7,#f9,#a4
	db #25,#32,#fc,#c4,#19,#fd,#c6,#f9
	db #b5,#f7,#fb,#ba,#fd,#c1,#fe,#db
	db #f8,#f8,#43,#f9,#cf,#fd,#d5,#fb
	db #d9,#fb,#fe,#f5,#f8,#12,#f9,#e8
	db #fe,#06,#f9,#f1,#25,#f9,#1b,#fe
	db #b0,#bf,#ef,#9a,#4b,#fb,#2b,#fe
	db #2a,#d5,#b3,#bc,#91,#f9,#8a,#f6
	db #dc,#f8,#f8,#4e,#f7,#ee,#fd,#64
	db #a5,#fa,#f7,#a2,#df,#df,#e1,#20
	db #e3,#e1,#e3,#2b,#2c,#28,#28,#2c
	db #30,#c1,#fc,#4d,#f8,#42,#b0,#b2
	db #b4,#b2,#b0,#e3,#5e,#c1,#f7,#44
	db #f8,#75,#96,#98,#96,#94,#94,#e3
	db #91,#c1,#f7,#77,#f8,#a8,#71,#70
	db #6f,#6f,#70,#e2,#c4,#cf,#f8,#ab
	db #f7,#db,#1d,#3b,#fa,#f9,#fc,#1e
	db #fb,#1a,#fb,#09,#a7,#fd,#24,#38
	db #fa,#11,#1c,#38,#f9,#02,#fb,#21
	db #fd,#0e,#af,#fe,#26,#32,#fc,#2b
	db #19,#fe,#2e,#f9,#1b,#fe,#39,#f9
	db #24,#2f,#25,#43,#fd,#44,#21,#fc
	db #44,#f9,#35,#fc,#3a,#fc,#40,#ff
	db #fe,#5b,#fe,#fe,#f9,#f8,#f9,#4f
	db #fe,#55,#fa,#58,#fe,#75,#fe,#18
	db #d2,#fa,#79,#ef,#00,#4b,#fa,#91
	db #25,#4b,#d6,#1a,#df,#08,#df,#e1
	db #e3,#e1,#e2,#c4,#28,#28,#2c,#30
	db #30,#2c,#fd,#e7,#f7,#db,#b2,#b4
	db #b2,#b0,#70,#b0,#e3,#f8,#f8,#de
	db #f7,#0e,#98,#96,#94,#94,#70,#96
	db #e3,#2b,#f7,#11,#f8,#42,#70,#6f
	db #6f,#70,#72,#71,#e3,#5e,#f7,#44
	db #f8,#75,#1d,#3b,#fa,#92,#1d,#f4
	db #fa,#9a,#fe,#b7,#fa,#a2,#fd,#bf
	db #38,#fb,#ab,#1c,#38,#e5,#f9,#9b
	db #fa,#ba,#fd,#a8,#25,#32,#fc,#c4
	db #19,#fd,#c6,#f5,#f9,#b5,#fb,#ba
	db #fd,#c1,#fe,#db,#43,#fe,#de,#21
	db #fd,#de,#ff,#fe,#e4,#f9,#cf,#fd
	db #d5,#fb,#d9,#fe,#f5,#fe,#98,#fa
	db #93,#f9,#e8,#dd,#fe,#06,#f9,#f1
	db #25,#fe,#b1,#f9,#ab,#ef,#9a,#4b
	db #fb,#2b,#ff,#fe,#2a,#d5,#b3,#bc
	db #91,#f9,#8a,#f6,#dc,#f8,#4e,#f7
	db #ee,#fd,#64,#fe,#a5,#fa,#f7,#a2
	db #f7,#5e,#a3,#2c,#fc,#fc,#f8,#f8
	db #3f,#95,#59,#b8,#fc,#5e,#2c,#fb
	db #5e,#01,#61,#d7,#60,#2c,#2c,#16
	db #e0,#fe,#91,#fb,#95,#3d,#93,#c0
	db #be,#be,#c0,#c2,#0c,#c4,#c6,#c4
	db #c2,#01,#5e,#08,#5d,#91,#8f,#01
	db #8d,#8d,#8f,#91,#93,#95,#93,#5e
	db #5e,#00,#e1,#e0,#df,#df,#e0,#e1
	db #e2,#e3,#60,#e2,#01,#09,#08,#08
	db #c9,#c8,#c7,#c6,#c6,#08,#c7,#c8
	db #c9,#ca,#5f,#09,#bf,#be,#bd,#02
	db #bc,#bb,#bb,#bc,#bd,#be,#b3,#b3
	db #df,#00,#e0,#e1,#e2,#e3,#e2,#e1
	db #e0,#df,#80,#5f,#09,#a6,#a6,#a7
	db #a8,#a9,#aa,#a9,#20,#a8,#a7,#b3
	db #b3,#bf,#be,#bd,#bc,#bb,#0e,#bb
	db #bc,#bd,#be,#b4,#09,#af,#62,#fc
	db #a6,#c9,#00,#ca,#c9,#c8,#c7,#c6
	db #c6,#c7,#c8,#80,#5e,#b3,#0e,#10
	db #0e,#0c,#0a,#08,#08,#20,#0a,#0c
	db #0a,#5e,#00,#8f,#f4,#00,#01,#01
	db #02,#fe,#0d,#fa,#11,#33,#0f,#fd
	db #0b,#ff,#f7,#05,#9e,#e8,#9e,#52
	db #94,#e7,#01,#b5,#01,#24,#d9,#16
	db #01,#3e,#ad,#4d,#44,#01,#fa,#f8
	db #02,#f9,#f8,#43,#fe,#00,#f9,#bc
	db #ff,#fe,#f7,#fa,#c5,#fd,#f7,#fb
	db #ce,#fc,#f7,#fc,#d7,#fb,#f7,#fd
	db #e0,#ee,#fa,#f7,#fe,#e9,#f9,#f7
	db #02,#f9,#f4,#f7,#02,#7b,#c4,#00
	db #fe,#01,#91,#01,#91,#01,#90,#01
	db #8f,#01,#8e,#01,#8d,#72,#8b,#01
	db #ef,#f9,#1a,#08,#22,#67,#19,#01
	db #f8,#b3,#09,#bc,#01,#bc,#01,#b2
	db #ee,#01,#b1,#01,#b0,#84,#ae,#01
	db #34,#2b,#f8,#2a,#3c,#f8,#00,#fe
	db #01,#c4,#01,#c4,#01,#c3,#01,#c2
	db #01,#c1,#01,#c0,#72,#be,#01,#ef
	db #f8,#4d,#09,#56,#66,#4c,#01,#f9
	db #e7,#08,#ef,#01,#ef,#01,#e6,#ee
	db #01,#e5,#01,#e4,#85,#e2,#01,#01
	db #5e,#01,#5e,#54,#5c,#00,#fd,#01
	db #09,#01,#09,#01,#08,#01,#07,#01
	db #06,#a7,#04,#01,#02,#5e,#f2,#00
	db #ee,#ee,#f2,#f6,#fa,#fe,#fa,#f6
	db #80,#32,#00,#7b,#79,#77,#77,#79
	db #7b,#7d,#26,#7f,#7d,#9d,#d7,#17
	db #2f,#fa,#44,#9c,#43,#f2,#f8,#fd
	db #d2,#fe,#ce,#01,#b0,#01,#b5,#e0
	db #ae,#57,#53,#4f,#20,#4f,#53,#97
	db #d3,#81,#7d,#79,#79,#7d,#82,#98
	db #41,#38,#3c,#38,#34,#34,#97,#ae
	db #f6,#08,#fa,#f6,#f2,#f2,#29,#1c
	db #f2,#ee,#ee,#b9,#fd,#f2,#fe,#fd
	db #f4,#3e,#f9,#34,#f8,#fe,#f2,#fd
	db #8d,#c0,#fe,#89,#ec,#92,#b2,#c7
	db #dc,#ef,#02,#16,#00,#2b,#40,#53
	db #66,#7a,#8f,#a4,#b7,#18,#ca,#de
	db #f3,#e9,#94,#c2,#ce,#90,#a9,#c1
	db #00,#da,#f4,#0d,#26,#3e,#57,#71
	db #8a,#03,#a3,#bb,#d4,#ee,#07,#20
	db #ad,#be,#31,#a8,#00,#b2,#c6,#db
	db #f0,#03,#16,#2a,#3f,#00,#54,#67
	db #7a,#8e,#a3,#b8,#cb,#de,#38,#f2
	db #07,#34,#89,#ad,#be,#b1,#a8,#7d
	db #79,#79,#3e,#7d,#81,#eb,#c4,#ef
	db #11,#e9,#c7,#c2,#01,#fe,#78,#c2
	db #22,#da,#f3,#fe,#7d,#3f,#57,#70
	db #fe,#82,#bc,#28,#d4,#ed,#fe,#87
	db #39,#c5,#06,#cb,#c7,#c7,#3f,#cb
	db #cf,#eb,#91,#ef,#de,#e9,#94,#c2
	db #ce,#ef,#44,#c4,#d2,#04,#f2,#f2
	db #f6,#fa,#f6,#eb,#5e,#b2,#c7,#00
	db #dc,#ef,#02,#16,#2b,#40,#53,#66
	db #01,#7a,#8f,#a4,#b7,#ca,#de,#f3
	db #e9,#61,#c4,#c2,#9b,#fe,#11,#c1
	db #da,#f4,#fe,#16,#3e,#57,#47,#71
	db #fe,#1b,#bb,#d4,#ee,#fe,#20,#ad
	db #8b,#fe,#3d,#00,#b2,#c6,#db,#f0
	db #03,#16,#2a,#3f,#00,#54,#67,#7a
	db #8e,#a3,#b8,#cb,#de,#20,#f2,#07
	db #5e,#89,#b7,#b7,#bb,#bf,#bb,#e0
	db #ec,#f8,#f7,#44,#f8,#06,#dd,#df
	db #dd,#db,#db,#c0,#fc,#22,#e8,#f9
	db #b7,#8f,#a9,#c2,#db,#f3,#0c,#0c
	db #26,#3f,#58,#e7,#f8,#ee,#61,#b4
	db #c7,#03,#da,#ee,#03,#18,#2b,#3e
	db #f7,#6c,#fa,#25,#c2,#fe,#8a,#e6
	db #5a,#90,#a8,#c1,#db,#fe,#af,#25
	db #60,#3e,#ef,#9a,#e6,#da,#b2,#c7
	db #dc,#ef,#02,#00,#16,#2b,#40,#53
	db #66,#7a,#8f,#a4,#0c,#b7,#ca,#de
	db #f3,#e9,#c7,#c2,#01,#90,#a9,#20
	db #c1,#da,#fe,#af,#26,#3e,#57,#71
	db #8a,#01,#a3,#bb,#d4,#ee,#07,#20
	db #38,#c5,#06,#f0,#e8,#93,#fe,#a4
	db #f8,#de,#f7,#9f,#df,#dd,#db,#db
	db #68,#dd,#fd,#bc,#e7,#92,#b7,#fe
	db #44,#c2,#da,#f3,#98,#fe,#49,#3f
	db #57,#e6,#c4,#f0,#fc,#b4,#c7,#da
	db #03,#ee,#03,#18,#2b,#3e,#52,#f8
	db #06,#fa,#be,#c2,#fd,#23,#e7,#f4
	db #90,#a8,#c1,#db,#fe,#48,#25,#38
	db #3e,#58,#ef,#2f,#e6,#73,#f8,#ab
	db #53,#66,#7a,#03,#8f,#a4,#b7,#ca
	db #de,#f3,#e9,#61,#c2,#9b,#90,#fe
	db #de,#c1,#da,#fe,#48,#26,#3e,#57
	db #71,#01,#8a,#a3,#bb,#d4,#ee,#07
	db #20,#ad,#8b,#80,#fe,#3d,#b2,#c6
	db #db,#f0,#03,#16,#2a,#00,#3f,#54
	db #67,#7a,#8e,#a3,#b8,#cb,#18,#de
	db #f2,#07,#45,#89,#4d,#0c,#dd,#db
	db #db,#20,#dd,#df,#9e,#c4,#38,#3c
	db #38,#34,#34,#f0,#9f,#2b,#ce,#92
	db #01,#91,#97,#bd,#c7,#c3,#c3,#c7
	db #06,#cb,#cf,#d3,#cf,#cb,#3c,#2b
	db #34,#2b,#c7,#e0,#fd,#c1,#fe,#bd
	db #ec,#c5,#a9,#be,#d3,#e6,#f9,#00
	db #0d,#22,#37,#4a,#5d,#71,#86,#9b
	db #0c,#ae,#c1,#d5,#ea,#e9,#c7,#c2
	db #01,#8a,#a2,#00,#bb,#d4,#ed,#07
	db #1f,#38,#51,#6a,#00,#84,#9c,#b5
	db #ce,#e7,#01,#19,#32,#f0,#ae,#f2
	db #86,#db,#ad,#be,#31,#a8,#a9,#bd
	db #d2,#e7,#00,#fa,#0d,#21,#36,#4b
	db #5e,#71,#85,#02,#9a,#af,#c2,#d5
	db #e9,#fe,#5e,#89,#55,#0f,#55,#59
	db #5d,#59,#ec,#f8,#ef,#44,#e9,#fa
	db #c1,#34,#c1,#ef,#ab,#c5,#39,#a3
	db #9f,#9f,#a3,#a7,#eb,#c4,#e4,#ef
	db #11,#e9,#c7,#c2,#01,#89,#a3,#fd
	db #7a,#06,#20,#91,#fd,#7f,#83,#9d
	db #fd,#84,#00,#1a,#32,#c5,#06,#04
	db #c7,#c7,#cb,#cf,#cb,#eb,#91,#a9
	db #be,#00,#d3,#e6,#f9,#0d,#22,#37
	db #4a,#5d,#01,#71,#86,#9b,#ae,#c1
	db #d5,#ea,#e9,#94,#92,#c2,#ce,#8a
	db #a2,#fd,#46,#07,#1f,#fd,#4b,#84
	db #4c,#9c,#fd,#50,#01,#19,#ad,#be
	db #4a,#a8,#81,#81,#10,#85,#89,#85
	db #ec,#2b,#a9,#bd,#d2,#e7,#04,#fa
	db #0d,#21,#36,#4b,#f7,#39,#c4,#c2
	db #1c,#c0,#c0,#c2,#fd,#56,#e8,#2c
	db #fe,#71,#89,#a3,#8c,#fd,#e0,#06
	db #20,#38,#e7,#2b,#ee,#94,#ab,#be
	db #03,#d1,#e5,#fa,#0f,#22,#35,#f7
	db #9f,#fa,#58,#d3,#fe,#bd,#e6,#8d
	db #89,#fd,#df,#ee,#06,#fd,#e4,#ef
	db #c9,#c0,#e7,#12,#f7,#44,#5e,#71
	db #85,#9a,#af,#c2,#34,#d5,#e9,#e9
	db #fa,#c1,#34,#8a,#fd,#df,#ed,#07
	db #80,#fd,#e4,#6a,#84,#9c,#b5,#ce
	db #e7,#01,#6c,#19,#c5,#39,#e7,#c5
	db #85,#f7,#11,#f8,#d3,#c2,#c4,#18
	db #c2,#c0,#c0,#fc,#ef,#e8,#c6,#81
	db #89,#a2,#43,#bc,#fe,#7b,#06,#1f
	db #39,#51,#e7,#c5,#ef,#2e,#00,#aa
	db #bf,#d2,#e5,#f9,#0e,#23,#36,#7e
	db #49,#f7,#39,#fa,#f2,#fe,#57,#e6
	db #27,#fe,#11,#fe,#7a,#ee,#b0,#fe
	db #16,#38,#ef,#67,#e6,#a7,#a9,#be
	db #d3,#e6,#00,#f9,#0d,#22,#37,#4a
	db #5d,#71,#86,#06,#9b,#ae,#c1,#d5
	db #ea,#e9,#94,#c2,#ce,#8a,#90,#fd
	db #79,#ed,#07,#fe,#7e,#51,#6a,#84
	db #9c,#07,#b5,#ce,#e7,#01,#19,#ad
	db #be,#30,#a8,#4d,#40,#04,#c0,#c0
	db #c2,#c4,#c2,#9f,#f8,#18,#1c,#1e
	db #18,#14,#14,#9f,#5e,#cd,#c5,#01
	db #c5,#98,#f1,#85,#08,#81,#81,#85
	db #89,#5a,#5e,#9f,#9f,#a3,#38,#a7
	db #a3,#5b,#09,#ab,#b4,#aa,#03,#1f
	db #23,#27,#20,#23,#1f,#b0,#5e,#55
	db #59,#5d,#59,#55,#e0,#af,#b3,#ac
	db #0a,#aa,#58,#a3,#a7,#a3,#9f,#9f
	db #e0,#5a,#b3,#ac,#5f,#a9,#ad,#23
	db #1f,#1f,#23,#27,#83,#b0,#09,#59
	db #55,#55,#59,#5d,#b0,#5e,#ab,#b4
	db #83,#aa,#03,#9f,#9f,#a3,#a7,#a3
	db #5a,#5e,#ac,#0a,#82,#aa,#58,#1f
	db #23,#27,#23,#1f,#af,#b3,#59,#08
	db #5d,#59,#55,#55,#b0,#09,#65,#67
	db #65,#20,#63,#63,#06,#5e,#02,#af
	db #2a,#00,#01,#95,#d7,#00,#95,#43
	db #d8,#af,#01,#af,#03,#d5,#7d,#03
	db #93,#d3,#6e,#41,#01,#41,#01,#d2
	db #26,#d0,#00,#fd,#ab,#7f,#01,#f4
	db #af,#a7,#56,#f5,#ae,#01,#53,#75
	db #53,#01,#dd,#65,#dc,#fb,#9a,#78
	db #01,#dd,#65,#dc,#9a,#78,#b2,#dd
	db #03,#e8,#f8,#f7,#ac,#ff,#f8,#09
	db #f7,#b1,#e3,#f8,#fb,#14,#e7,#2b
	db #e6,#ff,#f7,#6f,#df,#23,#ff,#f7
	db #43,#ef,#9a,#e6,#de,#f7,#11,#f8
	db #e6,#e6,#c4,#c5,#08,#f7,#44,#ff
	db #bc,#e9,#e2,#91,#fc,#4f,#f7,#a2
	db #f8,#4b,#e2,#91,#f2,#ae,#df,#ef
	db #ff,#f7,#45,#f0,#b4,#e6,#e6,#e6
	db #de,#e6,#77,#f7,#11,#f8,#80,#e6
	db #5e,#fd,#c5,#a2,#f7,#44,#a5,#83
	db #98,#76,#99,#dd,#4d,#10,#01,#9a
	db #c4,#fa,#67,#2b,#01,#2b,#01,#c3
	db #01,#c2,#e3,#c0,#00,#fc,#de,#01
	db #ff,#f5,#e3,#9c,#89,#01,#86,#0e
	db #85,#ef,#78,#33,#88,#9b,#bb,#43
	db #ba,#ef,#9a,#78,#01,#dd,#7e,#dc
	db #03,#e8,#2b,#f7,#de,#f7,#3b,#f8
	db #e5,#ff,#e7,#2b,#f7,#43,#e6,#5e
	db #de,#67,#d6,#56,#ee,#c3,#e7,#12
	db #f7,#de,#ff,#f8,#19,#e7,#f8,#c3
	db #3a,#f1,#11,#c3,#3b,#d5,#c4,#f7
	db #7e,#d6,#c5,#ff,#de,#21,#ee,#11
	db #df,#f0,#f7,#43,#ef,#67,#e6,#aa
	db #f7,#44,#f8,#b3,#fd,#e6,#91,#c5
	db #d5,#f1,#ab,#ab,#bc,#30,#a8,#4d
	db #44,#01,#9b,#f8,#ef,#66,#5e,#01
	db #5e,#99,#f6,#03,#56,#5e,#ab,#09
	db #ab,#5d,#aa,#b3,#be,#56,#08,#02
	db #ab,#b3,#01,#09,#aa,#07,#ab,#5e
	db #55,#b2,#02,#fa,#ac,#5e,#01,#b3
	db #a9,#b1,#ab,#09,#55,#5d,#02,#ac
	db #09,#01,#80,#02,#5e,#2e,#8c,#fd
	db #00,#2f,#2f,#30,#fe,#04,#ee,#00
	db #79,#77,#01,#77,#79,#7b,#7d,#7f
	db #7d,#7b,#32,#1b,#00,#bd,#bc,#bb
	db #bb,#bc,#bd,#be,#bf,#4f,#be,#9d
	db #f2,#0b,#17,#fa,#5f,#b7,#5e,#95
	db #f3,#fe,#11,#00,#a6,#a6,#a7,#a8
	db #a9,#aa,#a9,#a8,#40,#a7,#9b,#1c
	db #9e,#9f,#a0,#a1,#a0,#9f,#10,#9e
	db #9d,#9d,#9b,#8a,#8f,#90,#8f,#8e
	db #04,#8d,#8c,#8c,#8d,#8e,#9c,#f8
	db #bf,#be,#01,#bd,#bc,#bb,#bb,#bc
	db #bd,#be,#9b,#65,#00,#a8,#a7,#a6
	db #a6,#a7,#a8,#a9,#aa,#40,#a9,#9b
	db #d3,#9d,#9d,#9e,#9f,#a0,#a1,#10
	db #a0,#9f,#9e,#9c,#41,#8c,#8d,#8e
	db #8f,#04,#90,#8f,#8e,#8d,#8c,#9b
	db #ae,#7e,#7f,#01,#80,#7f,#7e,#7d
	db #7c,#7c,#7d,#2d,#1c,#00,#7b,#79
	db #77,#77,#79,#7b,#7d,#7f,#55,#7d
	db #3d,#f8,#be,#f9,#bc,#bd,#f9,#bb
	db #bc,#f9,#ba,#55,#bb,#f9,#b9,#bb
	db #f9,#b8,#bc,#f9,#b7,#bd,#f9,#b6
	db #50,#be,#f9,#b5,#bf,#74,#bd,#2b
	db #2b,#2c,#2d,#41,#2c,#a7,#91,#2f
	db #2e,#2e,#2f,#30,#96,#ef,#04,#46
	db #46,#47,#48,#47,#a7,#5e,#3f,#3e
	db #10,#3e,#3f,#40,#96,#bc,#29,#29
	db #2a,#2b,#41,#2a,#a7,#2b,#2f,#2e
	db #2e,#2f,#30,#96,#89,#04,#46,#46
	db #47,#48,#47,#a7,#f8,#4f,#4e,#10
	db #4e,#4f,#50,#97,#56,#6a,#69,#69
	db #6a,#70,#6b,#a7,#c4,#96,#5a,#fb
	db #87,#59,#58,#58,#59,#41,#5a,#a7
	db #91,#5f,#5e,#5d,#5d,#5e,#96,#ef
	db #04,#7e,#7c,#7c,#7e,#80,#a7,#5e
	db #40,#3f,#10,#3e,#3e,#3f,#96,#bc
	db #1f,#1e,#1e,#1f,#41,#20,#38,#2b
	db #bb,#bb,#bd,#bf,#bd,#e3,#f8,#06
	db #ee,#ec,#ec,#ee,#f0,#fd,#1a,#f7
	db #0e,#9d,#0e,#9f,#a1,#9f,#9d,#e3
	db #2b,#f7,#11,#f8,#42,#77,#0e,#78
	db #77,#76,#76,#e3,#5e,#f7,#44,#f8
	db #75,#5f,#0f,#5e,#5d,#5d,#5e,#e3
	db #91,#f7,#77,#e1,#94,#28,#d6,#a0
	db #f8,#b4,#76,#f8,#a8,#4e,#4e,#4f
	db #50,#4f,#e0,#e2,#c4,#f8,#ab,#f7
	db #db,#3b,#3c,#3b,#3a,#3a,#e0,#e3
	db #f8,#f8,#de,#f7,#0e,#30,#2f,#2e
	db #2e,#2f,#ea,#e3,#2b,#f7,#11,#f8
	db #42,#17,#f9,#46,#17,#f9,#44,#16
	db #a8,#f9,#56,#18,#f9,#45,#16,#f1
	db #57,#18,#31,#31,#00,#30,#31,#32
	db #34,#33,#1b,#33,#35,#23,#36,#36
	db #fe,#98,#37,#21,#38,#fe,#9f,#fe
	db #51,#84,#fe,#54,#23,#3c,#3e,#3d
	db #fe,#a9,#3f,#40,#44,#28,#fe,#ac
	db #41,#43,#42,#fe,#b3,#2c,#45,#00
	db #45,#44,#45,#46,#48,#47,#2f,#47
	db #11,#49,#4a,#4a,#fe,#c0,#4b,#35
	db #4c,#fe,#c7,#c2,#fe,#1f,#fe,#1d
	db #37,#50,#52,#51,#fe,#d1,#53,#22
	db #54,#3c,#fe,#d4,#55,#57,#56,#fe
	db #db,#40,#00,#59,#59,#58,#59,#5a
	db #5c,#5b,#43,#61,#5b,#fe,#ed,#fe
	db #eb,#5e,#5f,#49,#60,#fe,#ef,#00
	db #62,#63,#63,#62,#4b,#64,#66,#65
	db #88,#fe,#f9,#67,#68,#50,#fe,#fc
	db #69,#6b,#6a,#80,#fe,#03,#54,#6d
	db #6d,#6c,#6d,#6e,#70,#02,#6f,#57
	db #6f,#71,#72,#72,#fe,#10,#73,#20
	db #5d,#74,#fe,#17,#76,#77,#77,#76
	db #5f,#11,#78,#7a,#79,#fe,#21,#7b
	db #7c,#64,#fe,#24,#17,#7d,#7f,#17
	db #fe,#2b,#0b,#fd,#2b,#fc,#31,#3d
	db #2e,#63,#2f,#fa,#f9,#a2,#f8,#3f
	db #3f,#1f,#fe,#5e,#fb,#62,#ad,#a4
	db #60,#3b,#fd,#c4,#1d,#fc,#c4,#a2
	db #c5,#47,#fc,#2b,#78,#23,#fb,#2b
	db #a5,#2e,#cd,#91,#66,#bc,#1f,#1f
	db #0f,#ea,#fe,#5e,#fb,#62,#3d,#60
	db #65,#34,#2b,#b2,#35,#f1,#29,#09
	db #29,#2a,#2b,#2a,#a7,#c4,#2c,#2b
	db #fe,#21,#41,#2d,#96,#22,#42,#42
	db #43,#44,#43,#a7,#91,#04,#3b,#3a
	db #3a,#3b,#3c,#96,#ef,#26,#26,#10
	db #27,#28,#27,#a7,#5e,#2c,#2b,#2b
	db #2c,#41,#2d,#96,#bc,#42,#42,#43
	db #44,#43,#a7,#2b,#04,#4b,#4a,#4a
	db #4b,#4c,#96,#89,#63,#63,#18,#64
	db #65,#64,#a7,#f8,#92,#89,#54,#53
	db #53,#20,#54,#55,#a7,#c4,#5a,#59
	db #58,#58,#59,#82,#96,#22,#77,#76
	db #76,#77,#78,#a7,#91,#3c,#08,#3b
	db #3a,#3a,#3b,#96,#ef,#1d,#1c,#1c
	db #20,#1d,#1e,#38,#5e,#b0,#b0,#b2
	db #b4,#b2,#83,#e3,#2b,#e1,#df,#df
	db #e1,#e3,#fc,#4d,#f8,#42,#07,#94
	db #96,#98,#96,#94,#e3,#5e,#f7,#44
	db #f8,#75,#07,#70,#71,#70,#6f,#6f
	db #e3,#91,#f7,#77,#f8,#a8,#07,#5a
	db #59,#58,#58,#59,#e2,#c4,#f8,#ab
	db #e0,#c7,#d0,#28,#0a,#f9,#e8,#6f
	db #f7,#db,#4a,#4b,#4c,#4b,#70,#4a
	db #e3,#f8,#f8,#de,#f7,#0e,#38,#39
	db #38,#37,#70,#37,#e3,#2b,#f7,#11
	db #f8,#42,#2d,#2c,#2b,#2b,#75,#2c
	db #e3,#5e,#f7,#44,#f8,#75,#16,#f9
	db #79,#16,#f9,#77,#56,#15,#f9,#89
	db #17,#f9,#78,#15,#f2,#8a,#fe,#a8
	db #2f,#40,#2e,#fe,#c3,#30,#31,#31
	db #1a,#31,#32,#20,#34,#33,#fe,#cd
	db #35,#20,#36,#35,#36,#41,#37,#fe
	db #86,#38,#22,#3a,#3b,#3b,#fe,#da
	db #00,#3c,#3e,#27,#3d,#3d,#3f,#40
	db #40,#88,#fe,#e4,#2b,#43,#42,#fe
	db #eb,#44,#45,#45,#04,#2e,#45,#46
	db #48,#47,#fe,#f5,#49,#34,#20,#4a
	db #49,#fe,#52,#4d,#4c,#4c,#36,#4e
	db #20,#4f,#4f,#fe,#02,#50,#52,#3b
	db #51,#51,#11,#53,#54,#54,#fe,#0c
	db #3f,#57,#56,#fe,#13,#92,#fe,#20
	db #59,#42,#fe,#1c,#5c,#5b,#fe,#1d
	db #5d,#00,#48,#5e,#5d,#5e,#5f,#61
	db #60,#60,#08,#4a,#62,#63,#63,#fe
	db #2a,#64,#66,#4f,#04,#65,#65,#67
	db #68,#68,#fe,#34,#53,#6b,#40,#6a
	db #fe,#3b,#6c,#6d,#6d,#56,#6d,#6e
	db #20,#70,#6f,#fe,#45,#71,#5c,#72
	db #71,#72,#00,#73,#75,#74,#74,#5e
	db #76,#77,#77,#80,#fe,#52,#78,#7a
	db #63,#79,#79,#7b,#7c,#5d,#16,#fe
	db #5e,#0b,#fd,#5e,#fc,#64,#3d,#61
	db #2c,#fa,#2c,#8e,#a2,#2b,#3b,#3b
	db #1d,#fe,#91,#fb,#95,#a3,#93,#38
	db #ba,#fe,#f8,#1c,#fd,#f8,#fc,#fe
	db #a5,#fb,#43,#fc,#5e,#21,#f1,#fb
	db #5e,#a5,#61,#cc,#c4,#67,#f0,#1d
	db #1d,#0e,#fe,#91,#c0,#fb,#95,#3d
	db #93,#2a,#28,#28,#2a,#2c,#2e,#10
	db #30,#2e,#2c,#5e,#5e,#4f,#4d,#4d
	db #4f,#07,#51,#53,#55,#53,#51,#5f
	db #09,#ae,#b7,#01,#b4,#80,#fb,#fb
	db #96,#95,#94,#94,#95,#96,#97,#20
	db #98,#97,#5f,#09,#a9,#a8,#a7,#a6
	db #a6,#0f,#a7,#a8,#a9,#aa,#5e,#b3
	db #af,#62,#01,#5e,#a5,#a5,#00,#bb
	db #bc,#bd,#be,#bf,#be,#bd,#bc,#40
	db #bb,#b4,#09,#aa,#a9,#a8,#a7,#a6
	db #a6,#10,#a7,#a8,#a9,#b4,#5e,#8c
	db #8c,#8d,#8e,#04,#8f,#90,#8f,#8e
	db #8d,#b3,#b3,#98,#97,#01,#96,#95
	db #94,#94,#95,#96,#97,#b4,#09,#00
	db #bb,#bb,#bc,#bd,#be,#bf,#be,#bd
	db #70,#bc,#b4,#5e,#b3,#11,#f7,#f7
	db #28,#28,#2a,#2c,#04,#2e,#30,#2e
	db #2c,#2a,#b4,#09,#b3,#b4,#01,#b3
	db #b2,#b1,#b0,#b0,#b1,#b2,#0a,#5e
	db #00,#bf,#e6,#00,#01,#2a,#1b,#e5
	db #00,#01,#f2,#01,#0c,#01,#0b,#01
	db #0a,#bb,#11,#08,#01,#35,#f8,#f8
	db #f7,#3b,#c4,#00,#01,#91,#01,#91
	db #ff,#01,#90,#01,#8f,#01,#8e,#01
	db #8d,#01,#8c,#01,#8b,#01,#8a,#01
	db #89,#f7,#01,#88,#01,#87,#01,#86
	db #5a,#84,#01,#34,#2b,#f8,#2a,#3c
	db #f8,#7f,#00,#01,#c4,#01,#c4,#01
	db #c3,#01,#c2,#01,#c1,#01,#c0,#01
	db #bf,#fe,#01,#be,#01,#bd,#01,#bc
	db #01,#bb,#01,#ba,#01,#b9,#5a,#b7
	db #01,#ef,#01,#5e,#01,#5e,#54,#5c
	db #00,#01,#09,#01,#09,#01,#08,#01
	db #07,#dc,#01,#06,#fc,#04,#01,#ac
	db #09,#55,#5e,#ac,#5e,#2b,#fd,#01
	db #00,#01,#00,#01,#ff,#01,#fe,#01
	db #fd,#04,#fb,#01,#e8,#e8,#fb,#e7
	db #f8,#d5,#f7,#b3,#08,#01,#22,#8f
	db #21,#30,#f1,#12,#f7,#11,#ff,#e7
	db #11,#ef,#2b,#e6,#3b,#f6,#22,#9a
	db #79,#bd,#12,#dd,#ef,#e6,#c5,#ff
	db #bd,#92,#f6,#6f,#d7,#f9,#b3,#08
	db #cd,#6f,#b3,#88,#dd,#ef,#e6,#c5
	db #ff,#bd,#12,#dd,#ef,#e6,#c5,#bd
	db #92,#f6,#6f,#d7,#f9,#b3,#08,#cd
	db #6f,#ff,#b3,#88,#dd,#ef,#e6,#c5
	db #bd,#12,#dd,#ef,#e6,#c5,#bd,#92
	db #f6,#6f,#ff,#d7,#f9,#d5,#08,#ee
	db #ef,#e7,#81,#e6,#1a,#d5,#e7,#f7
	db #5f,#d6,#1b,#ff,#f0,#a3,#e6,#5e
	db #ee,#cd,#f8,#a3,#f0,#92,#f6,#ee
	db #e7,#92,#d5,#e7,#ff,#e6,#c5,#e8
	db #46,#e6,#5d,#e6,#b3,#ef,#09,#e7
	db #ab,#ee,#3b,#dd,#89,#ff,#f1,#a4
	db #e6,#bb,#de,#cd,#dc,#55,#f8,#34
	db #e7,#23,#e7,#c5,#de,#80,#ff,#ee
	db #3b,#e7,#45,#ef,#e6,#cc,#de,#e6
	db #c5,#bd,#92,#f6,#6f,#d7,#f9,#ff
	db #cc,#08,#ab,#08,#34,#f8,#01,#5d
	db #01,#c3,#ec,#c1,#f8,#2b,#ee,#c4
	db #fd,#e7,#3c,#f7,#5e,#d6,#2b,#cd
	db #6f,#01,#55,#f5,#ba,#2b,#f1,#df
	db #ff,#f7,#de,#e7,#de,#cc,#de,#99
	db #45,#d7,#f9,#b3,#08,#cd,#6f,#b3
	db #88,#ff,#dd,#ef,#e6,#c5,#bd,#12
	db #dd,#ef,#e6,#c5,#bd,#92,#f6,#6f
	db #d7,#f9,#ff,#b3,#08,#cd,#6f,#b3
	db #88,#dd,#ef,#e6,#c5,#bd,#12,#dd
	db #ef,#e6,#c5,#ff,#bd,#92,#f6,#6f
	db #d7,#f9,#b3,#08,#cd,#6f,#b3,#88
	db #dd,#ef,#e6,#c5,#ff,#bd,#12,#ef
	db #ef,#ee,#22,#e7,#9a,#e5,#4d,#d6
	db #1b,#f7,#92,#d7,#46,#ff,#ee,#d5
	db #e7,#89,#ee,#00,#f8,#ce,#e7,#c5
	db #ef,#19,#ef,#2b,#e6,#3b,#ff,#ef
	db #6f,#ee,#00,#e8,#79,#e5,#f7,#e7
	db #9a,#ef,#22,#dd,#de,#df,#b4,#ff
	db #de,#cd,#dc,#e6,#df,#1b,#ee,#c5
	db #f8,#70,#e7,#5f,#de,#b3,#ee,#44
	db #ff,#e7,#01,#ee,#9a,#e8,#12,#ef
	db #2b,#b3,#88,#dd,#ef,#e6,#c5,#bd
	db #12,#ff,#e6,#ef,#ab,#3b,#9a,#2b
	db #33,#2a,#9a,#5e,#01,#5d,#c0,#c3
	db #f6,#5e,#ff,#eb,#5e,#01,#68,#01
	db #87,#01,#86,#01,#85,#01,#84,#01
	db #83,#01,#82,#c0,#18,#61,#0c,#68
	db #38,#fd,#01,#00,#01,#00,#01,#ff
	db #01,#fe,#01,#fd,#04,#fb,#28,#e8
	db #e8,#ff,#e7,#f8,#d5,#f7,#b3,#08
	db #01,#22,#f5,#6e,#ef,#ab,#ab,#3d
	db #e8,#ac,#ff,#b1,#2a,#d7,#ac,#c3
	db #22,#bd,#12,#dd,#ef,#a3,#78,#f6
	db #6f,#d7,#46,#ff,#b2,#08,#ce,#70
	db #b3,#88,#c3,#22,#bd,#12,#dd,#ef
	db #a3,#78,#f6,#6f,#ff,#d7,#46,#b2
	db #08,#ce,#70,#b3,#88,#c3,#22,#bd
	db #12,#dd,#ef,#a3,#78,#ff,#f6,#6f
	db #d7,#46,#d5,#08,#ee,#ef,#e7,#b4
	db #d6,#f8,#e5,#2a,#ef,#a3,#ff,#b4
	db #4e,#ee,#cd,#ef,#de,#f0,#ce,#ee
	db #cd,#e8,#f9,#e5,#f7,#e7,#de,#ff
	db #cc,#11,#c5,#92,#ee,#b3,#e7,#4e
	db #e6,#e7,#bd,#df,#ee,#2a,#ee,#c5
	db #ff,#ef,#78,#de,#57,#e8,#92,#ef
	db #ab,#ed,#3b,#e8,#46,#de,#b3,#dd
	db #ef,#ff,#a3,#78,#f6,#6f,#d7,#46
	db #cc,#08,#ab,#08,#34,#f8,#01,#5d
	db #01,#c3,#ff,#ec,#c1,#f8,#2b,#ee
	db #c4,#e7,#3c,#f7,#5e,#d6,#2b,#cd
	db #6f,#01,#55,#ff,#f5,#ba,#ef,#de
	db #ab,#70,#e7,#de,#b2,#5e,#d7,#46
	db #b2,#08,#ce,#70,#ff,#b3,#88,#c3
	db #22,#bd,#12,#dd,#ef,#a3,#78,#f6
	db #6f,#d7,#46,#b2,#08,#ff,#ce,#70
	db #b3,#88,#c3,#22,#bd,#12,#dd,#ef
	db #a3,#78,#f6,#6f,#d7,#46,#ff,#b2
	db #08,#ce,#70,#b3,#88,#c3,#22,#bd
	db #12,#ef,#ef,#ee,#22,#e7,#e7,#ff
	db #e5,#4d,#a4,#46,#e6,#3b,#dd,#ef
	db #ef,#11,#de,#f0,#f0,#2c,#e6,#3b
	db #ff,#ee,#a2,#e7,#df,#e7,#c5,#e6
	db #4d,#cd,#cd,#ab,#cd,#e5,#2a,#ef
	db #70,#ff,#e7,#5f,#ee,#c5,#ef,#ab
	db #e8,#8a,#dc,#88,#e7,#c6,#e8,#ac
	db #e5,#f7,#ff,#cc,#c5,#d7,#ac,#c3
	db #22,#bd,#12,#e6,#ef,#ab,#3b,#9a
	db #2b,#33,#2a,#ff,#9a,#5e,#01,#5d
	db #c0,#c3,#f6,#5e,#eb,#5e,#01,#68
	db #01,#87,#01,#86,#fc,#01,#85,#01
	db #84,#01,#83,#01,#82,#18,#61,#0c
	db #68,#00,#aa,#f4,#00,#0e,#fb,#0d
	db #0d,#fa,#13,#0c,#fa,#1a,#0b,#aa
	db #fa,#21,#0a,#fa,#28,#09,#fa,#2f
	db #08,#fa,#36,#07,#aa,#fa,#3d,#06
	db #fa,#44,#05,#fa,#4b,#04,#fa,#52
	db #03,#ae,#fa,#59,#02,#fa,#60,#01
	db #ef,#67,#29,#0d,#a1,#e5,#0f,#ff
	db #fe,#af,#fe,#54,#fe,#62,#fc,#5b
	db #fc,#70,#fc,#69,#fc,#7e,#fc,#77
	db #ff,#f7,#8c,#f7,#af,#ee,#d3,#f6
	db #b8,#ee,#e5,#dc,#f8,#ee,#c1,#db
	db #d2,#df,#c9,#e5,#e5,#c1,#0c,#d3
	db #4a,#db,#65,#e5,#9c,#e5,#b8,#db
	db #d2,#ff,#dc,#f8,#db,#1b,#c9,#2e
	db #b7,#77,#db,#ae,#ee,#e5,#ed,#01
	db #ca,#0a,#ff,#b7,#d3,#92,#89,#c9
	db #e5,#ee,#2e,#f6,#8a,#d3,#4a,#ea
	db #65,#fb,#fa,#ff,#fe,#e8,#f9,#01
	db #fe,#ec,#f9,#0a,#fe,#ee,#f9,#13
	db #fe,#f4,#f9,#1c,#ff,#fe,#f6,#f9
	db #25,#fe,#f2,#f9,#2e,#fe,#a3,#f9
	db #37,#fe,#9f,#f9,#40,#fa,#fe,#a5
	db #f9,#49,#f8,#a9,#a5,#fb,#fc,#b3
	db #04,#f8,#b8,#03,#cf,#fe,#c1,#34
	db #f8,#03,#0e,#fc,#43,#fc,#55,#f8
	db #91,#cd,#91,#fe,#c4,#99,#01,#91
	db #01,#10,#01,#0f,#01,#0e,#01,#0d
	db #14,#8c,#0f,#af,#f9,#f8,#0e,#f8
	db #00,#0d,#f8,#09,#fe,#f0,#fa,#13
	db #f8,#f8,#ff,#f7,#f8,#d6,#f8,#f7
	db #2a,#9a,#2b,#cc,#c4,#a3,#e7,#c4
	db #19,#cd,#91,#ff,#de,#91,#f7,#b2
	db #ef,#b3,#de,#99,#cd,#ef,#f6,#2a
	db #ce,#5f,#bc,#80,#c5,#91,#66,#4c
	db #c4,#0f,#0f,#0e,#fe,#fa,#0d,#fe
	db #fd,#dd,#fe,#f0,#fd,#f1,#0b,#f7
	db #fd,#fe,#f4,#fd,#f5,#09,#f7,#0c
	db #5a,#08,#fe,#1e,#07,#fe,#21,#f7
	db #1b,#06,#fe,#2d,#05,#d6,#fe,#30
	db #f7,#2a,#04,#fe,#3c,#03,#fe,#3f
	db #f7,#39,#02,#b7,#fe,#4b,#01,#fe
	db #4e,#f4,#45,#03,#34,#f8,#01,#5d
	db #65,#5c,#ff,#9a,#5e,#fd,#c3,#fa
	db #2c,#fd,#c6,#fa,#35,#fd,#d2,#fa
	db #3e,#fd,#d5,#ff,#fa,#47,#fd,#e1
	db #fa,#50,#fd,#e4,#fa,#59,#fd,#f0
	db #fa,#62,#fd,#f3,#ff,#fa,#6b,#fd
	db #ff,#fa,#74,#fd,#02,#fa,#7d,#fd
	db #0e,#fe,#86,#a2,#2b,#fb,#fc,#e6
	db #fd,#1d,#fa,#ed,#fd,#20,#33,#2a
	db #0e,#fc,#77,#fc,#89,#ff,#ef,#c4
	db #89,#cd,#01,#d5,#01,#54,#01,#53
	db #01,#52,#01,#51,#25,#d0,#57,#0f
	db #f9,#2b,#0e,#f8,#33,#0d,#f8,#3c
	db #fe,#23,#fa,#46,#ff,#f7,#2b,#f8
	db #4d,#78,#2b,#f7,#b2,#f6,#c4,#ce
	db #f9,#d6,#1a,#b3,#08,#ff,#de,#91
	db #cc,#c4,#de,#c4,#c5,#e7,#f7,#2a
	db #cd,#2b,#cd,#91,#ef,#b3,#e2,#c4
	db #99,#01,#91,#e5,#ff,#0f,#0f,#0e
	db #fe,#2d,#0d,#ee,#fe,#30,#fe,#23
	db #fd,#24,#0b,#f7,#30,#fe,#27,#fd
	db #28,#09,#ad,#f7,#3f,#08,#fe,#51
	db #07,#fe,#54,#f7,#4e,#06,#fe,#60
	db #6b,#05,#fe,#63,#f7,#5d,#04,#fe
	db #6f,#03,#fe,#72,#f7,#6c,#5b,#02
	db #fe,#7e,#01,#fe,#81,#f4,#78,#03
	db #9a,#2b,#99,#90,#ff,#34,#f8,#01
	db #5d,#c9,#5c,#fa,#5f,#fd,#fa,#fa
	db #68,#fd,#06,#fa,#71,#ff,#fd,#09
	db #fd,#7a,#cb,#5e,#ab,#5e,#aa,#b2
	db #01,#5e,#01,#5d,#01,#5c,#fd,#01
	db #5b,#01,#5a,#01,#59,#01,#58,#d9
	db #ac,#fd,#7d,#0b,#f8,#81,#55,#0a
	db #f8,#8a,#09,#f8,#93,#08,#f8,#9c
	db #07,#f8,#a5,#55,#06,#f8,#ae,#05
	db #f8,#b7,#04,#f8,#c0,#03,#f8,#c9
	db #50,#02,#f8,#d2,#01,#7f,#db,#0f
	db #aa,#f9,#00,#0e,#f8,#08,#0d,#f8
	db #11,#0c,#f8,#1a,#0b,#aa,#f8,#23
	db #0a,#f8,#2c,#09,#f8,#35,#08,#f8
	db #3e,#07,#ab,#f8,#47,#06,#f8,#50
	db #05,#f8,#59,#04,#f8,#62,#95,#00
	db #7f,#03,#0d,#6b,#ca,#af,#92,#c9
	db #77,#e5,#01,#37,#01,#36,#01,#35
	db #f0,#f9,#bd,#fe,#eb,#fe,#f6,#fc
	db #f4,#0a,#0a,#09,#09,#3d,#0b,#0b
	db #f8,#f8,#e7,#f8,#e6,#10,#ef,#2b
	db #0a,#b4,#09,#ff,#01,#22,#01,#a1
	db #01,#a0,#01,#9f,#01,#9e,#01,#9d
	db #01,#9c,#9b,#1b,#ff,#ab,#ef,#a2
	db #f7,#e6,#a2,#cd,#cd,#ef,#e6,#bc
	db #de,#bb,#d5,#c5,#89,#f7,#c4,#99
	db #aa,#91,#cd,#67,#c5,#67,#0a,#01
	db #56,#da,#55,#fb,#fa,#ff,#fe,#f2
	db #f9,#01,#fe,#f6,#f9,#0a,#fe,#f4
	db #f9,#13,#fe,#ed,#f9,#1c,#f5,#fe
	db #e9,#f9,#25,#fe,#eb,#f9,#2e,#08
	db #f8,#36,#07,#f8,#3f,#57,#06,#f8
	db #48,#05,#f8,#51,#04,#fd,#5a,#34
	db #f8,#01,#5d,#ff,#65,#5c,#9a,#5e
	db #fc,#c3,#fe,#d3,#fe,#e5,#fc,#dc
	db #fc,#f7,#fe,#ee,#df,#f8,#2b,#ef
	db #2b,#0a,#e7,#3c,#f7,#5e,#d6,#2b
	db #cd,#6f,#01,#55,#ff,#01,#d4,#01
	db #d3,#01,#d2,#01,#d1,#01,#d0,#01
	db #cf,#9b,#4e,#de,#22,#fb,#d5,#2a
	db #ab,#6f,#d4,#aa,#ce,#01,#de,#00
	db #0a,#b4,#09,#d5,#6f,#fb,#cd,#cd
	db #ab,#ef,#bb,#08,#cd,#9a,#f8,#b4
	db #0a,#b4,#89,#01,#a2,#ff,#f3,#ee
	db #fb,#2d,#fe,#25,#f9,#34,#fe,#29
	db #f9,#3d,#fe,#27,#f9,#46,#fd,#fe
	db #20,#f9,#4f,#fe,#1c,#f9,#58,#fe
	db #1e,#f9,#61,#08,#f8,#69,#55,#07
	db #f8,#72,#06,#f8,#7b,#05,#f8,#84
	db #04,#fd,#8d,#ff,#9a,#2b,#99,#90
	db #34,#f8,#01,#5d,#c8,#5c,#fe,#07
	db #fe,#19,#fc,#10,#ff,#f6,#5e,#eb
	db #5e,#01,#68,#01,#87,#01,#86,#01
	db #85,#01,#84,#01,#83,#ff,#01,#82
	db #20,#61,#fb,#60,#fe,#56,#f9,#67
	db #fe,#5a,#f9,#70,#fe,#5c,#aa,#f9
	db #79,#0b,#f8,#81,#0a,#f8,#8a,#09
	db #f8,#93,#08,#aa,#f8,#9c,#07,#f8
	db #a5,#06,#f8,#ae,#05,#f8,#b7,#04
	db #aa,#f8,#c0,#03,#f8,#c9,#02,#f8
	db #d2,#01,#7f,#db,#00,#aa,#e6,#00
	db #0f,#f9,#1b,#0e,#f8,#23,#0d,#f8
	db #2c,#0c,#aa,#f8,#35,#0b,#f8,#3e
	db #0a,#f8,#47,#09,#f8,#50,#08,#aa
	db #f8,#59,#07,#f8,#62,#06,#f8,#6b
	db #05,#f8,#74,#04,#df,#f8,#7d,#95
	db #1b,#03,#43,#86,#fb,#63,#fe,#7f
	db #fc,#76,#fc,#91,#ff,#fc,#88,#fc
	db #a3,#fc,#9a,#f7,#49,#f7,#af,#ee
	db #d3,#f6,#b8,#ee,#e5,#fb,#dc,#f8
	db #ee,#c1,#db,#d2,#c9,#e5,#e5,#c1
	db #0c,#d3,#4a,#db,#65,#ff,#e5,#9c
	db #e5,#b8,#db,#d2,#dc,#f8,#db,#1b
	db #c9,#2e,#b7,#77,#db,#ae,#ff,#ee
	db #e5,#ed,#01,#ca,#0a,#b7,#d3,#92
	db #89,#c9,#e5,#ee,#2e,#f6,#8a,#ff
	db #d3,#4a,#ea,#65,#fb,#fa,#fe,#e8
	db #f9,#01,#fe,#ec,#f9,#0a,#fe,#ee
	db #ff,#f9,#13,#fe,#f4,#f9,#1c,#fe
	db #f6,#f9,#25,#fe,#f2,#f9,#2e,#fe
	db #a3,#ff,#f9,#37,#fe,#9f,#f9,#40
	db #fe,#a5,#f9,#49,#f8,#a9,#a5,#fb
	db #fc,#b3,#5b,#04,#f8,#b8,#03,#fe
	db #c1,#34,#f8,#03,#fe,#55,#fd,#4b
	db #ff,#fd,#42,#fd,#39,#fd,#30,#f1
	db #24,#f7,#30,#f7,#3c,#f4,#42,#f4
	db #4b,#ff,#f4,#54,#f5,#5d,#a2,#91
	db #f3,#65,#fc,#6f,#01,#91,#01,#90
	db #98,#8f,#bd,#34,#f8,#06,#01,#c4
	db #07,#c3,#ef,#1a,#f5,#99,#05,#fe
	db #a5,#55,#04,#fe,#a8,#03,#fe,#ab
	db #02,#fe,#ae,#01,#ba,#b1,#ff,#fa
	db #39,#f5,#3d,#fa,#4b,#f5,#4e,#f8
	db #f8,#f7,#f8,#d6,#f8,#f7,#2a,#8f
	db #9a,#2b,#0a,#0a,#0b,#fe,#c6,#fd
	db #b0,#fd,#a8,#fd,#9f,#ff,#f1,#93
	db #f7,#9f,#f8,#ab,#fc,#f1,#fd,#c6
	db #f7,#f8,#fe,#c4,#f6,#03,#55,#09
	db #f5,#0e,#08,#f5,#1a,#07,#f5,#26
	db #06,#f5,#32,#55,#05,#fe,#3e,#04
	db #fe,#41,#03,#fe,#44,#02,#fe,#47
	db #7f,#01,#ba,#4a,#cd,#91,#de,#91
	db #f7,#b2,#ef,#b3,#de,#99,#cd,#ef
	db #8f,#f7,#2a,#0a,#0a,#0b,#fe,#60
	db #fd,#4a,#fd,#42,#fd,#39,#ff,#f1
	db #2d,#f7,#39,#f7,#de,#fd,#8c,#fd
	db #60,#f7,#92,#fe,#5e,#f6,#9d,#55
	db #09,#f5,#a8,#08,#f5,#b4,#07,#f5
	db #c0,#06,#f5,#cc,#55,#05,#fe,#d8
	db #04,#fe,#db,#03,#fe,#de,#02,#fe
	db #e1,#7f,#01,#ba,#e4,#fb,#70,#fa
	db #81,#fd,#99,#f7,#30,#fa,#a5,#f7
	db #3f,#fe,#fa,#bd,#f7,#4e,#fa,#d5
	db #f7,#5d,#fa,#db,#f1,#d8,#f4,#78
	db #03,#ff,#9a,#2b,#99,#90,#34,#f8
	db #01,#5d,#65,#5c,#9a,#5e,#fd,#c3
	db #fa,#2c,#ff,#fd,#c6,#fa,#35,#fd
	db #d2,#fa,#3e,#fd,#d5,#fa,#47,#fd
	db #e1,#fa,#50,#ff,#fd,#e4,#fa,#59
	db #fd,#f0,#fa,#62,#fd,#f3,#fa,#6b
	db #fd,#ff,#fa,#74,#ff,#fd,#02,#fa
	db #7d,#fd,#0e,#fe,#86,#a2,#2b,#fc
	db #e6,#fd,#1d,#fa,#ed,#ff,#fd,#20
	db #33,#2a,#fe,#89,#fd,#7f,#fd,#76
	db #fd,#6d,#fd,#64,#f1,#58,#ff,#f7
	db #64,#f7,#70,#f4,#76,#f4,#7f,#f4
	db #88,#f5,#91,#a2,#c4,#f3,#99,#fd
	db #fc,#a3,#01,#c4,#01,#c3,#01,#c2
	db #ca,#c1,#34,#f8,#06,#01,#c4,#d5
	db #c3,#21,#f5,#cc,#05,#fe,#d8,#04
	db #fe,#db,#03,#fe,#de,#5f,#02,#fe
	db #e1,#01,#ba,#e4,#fa,#6c,#f5,#70
	db #fa,#7e,#f5,#81,#f8,#f7,#2b,#f8
	db #4d,#78,#2b,#f7,#b2,#f7,#c4,#0a
	db #0a,#0b,#ff,#fe,#fa,#fd,#e4,#fd
	db #db,#fd,#d2,#f1,#c6,#f7,#d2,#f7
	db #de,#fd,#26,#f5,#fd,#fa,#f7,#2c
	db #fe,#f8,#f6,#37,#09,#f5,#42,#08
	db #f5,#4e,#55,#07,#f5,#5a,#06,#f5
	db #66,#05,#fe,#72,#04,#fe,#75,#57
	db #03,#fe,#78,#02,#fe,#7b,#01,#bb
	db #7e,#cc,#c4,#de,#c4,#e3,#c5,#e7
	db #f7,#2a,#cd,#2b,#0a,#0a,#0b,#fe
	db #93,#fd,#7d,#ff,#fd,#75,#fd,#6c
	db #f1,#60,#f7,#6c,#f7,#de,#fd,#bf
	db #fd,#93,#f7,#c5,#d5,#fe,#91,#f6
	db #d0,#09,#f5,#db,#08,#f5,#e7,#07
	db #f5,#f3,#55,#06,#f5,#ff,#05,#fe
	db #0b,#04,#fe,#0e,#03,#fe,#11,#5f
	db #02,#fe,#14,#01,#ba,#17,#fb,#a3
	db #fa,#b4,#fd,#cc,#f7,#63,#ff,#fa
	db #d8,#f7,#72,#fa,#f0,#f7,#81,#fa
	db #08,#f7,#90,#fa,#0e,#f1,#0b,#bf
	db #f4,#ab,#03,#9a,#5e,#99,#c3,#01
	db #c4,#66,#2a,#01,#5d,#c9,#5c,#ff
	db #fa,#5f,#fd,#fa,#fa,#68,#fd,#06
	db #fa,#71,#fd,#09,#fd,#7a,#cb,#5e
	db #ff,#ab,#5e,#aa,#b2,#01,#5e,#01
	db #5d,#01,#5c,#01,#5b,#01,#5a,#01
	db #59,#ea,#01,#58,#d9,#ac,#fd,#7d
	db #0b,#f8,#81,#0a,#f8,#8a,#09,#aa
	db #f8,#93,#08,#f8,#9c,#07,#f8,#a5
	db #06,#f8,#ae,#05,#aa,#f8,#b7,#04
	db #f8,#c0,#03,#f8,#c9,#02,#f8,#d2
	db #01,#80,#7f,#db,#a1,#f8,#96,#ea
	db #80,#da,#8c,#ec,#da,#c4,#c6,#01
	db #b2,#80,#51,#b1,#00,#e0,#01,#00
	db #01,#00,#c5,#fe,#7d,#c8,#13,#5e
	db #a9,#00,#f4,#3f,#8a,#d5,#20,#6b
	db #b6,#01,#01,#4c,#97,#e2,#2d,#78
	db #c3,#0e,#e2,#3a,#ad,#ec,#4e,#47
	db #f6,#80,#46,#fe,#8b,#fe,#89,#48
	db #f3,#89,#4c,#6b,#f8,#9e,#6a,#5a
	db #f7,#a8,#f7,#82,#48,#35,#a3,#f7
	db #bc,#3c,#f8,#c6,#3b,#3b,#3a,#fe
	db #cf,#e6,#cc,#d6,#e2,#80,#ec,#04
	db #3f,#f7,#20,#3e,#fe,#2a,#fe,#28
	db #40,#d5,#f2,#28,#f7,#c6,#3c,#f7
	db #21,#40,#f6,#ef,#50,#f8,#5c,#7d
	db #4f,#e3,#21,#c3,#7b,#f5,#f0,#e3
	db #fc,#f6,#5c,#5a,#f8,#f2,#72,#58
	db #f6,#e8,#f6,#52,#f7,#f2,#5a,#6b
	db #f6,#1a,#6a,#3e,#6a,#69,#fe,#25
	db #fc,#22,#f6,#1c,#f9,#27,#f3,#37
	db #78,#d1,#f7,#4c,#f6,#1b,#5f,#f8
	db #60,#5e,#5e,#5d,#fe,#69,#ed,#f0
	db #66,#f6,#10,#f7,#60,#5f,#f6,#56
	db #f7,#4d,#77,#e2,#2e,#ac,#e2,#bc
	db #8e,#f7,#e2,#a0,#f7,#ec,#f7,#e3
	db #8f,#d6,#8e,#f7,#00,#d5,#d5,#d4
	db #fe,#0a,#fb,#07,#f7,#a6,#69,#ff
	db #f5,#60,#e8,#66,#e7,#39,#f6,#92
	db #f6,#e2,#f6,#a6,#f6,#1e,#f6,#14
	db #bc,#f7,#65,#8d,#fd,#fd,#fd,#93
	db #fe,#9b,#eb,#ea,#8e,#78,#be,#f8
	db #b4,#77,#f6,#8c,#fc,#9c,#f8,#98
	db #94,#cc,#f6,#82,#6a,#5a,#6a,#fc
	db #74,#6a,#f3,#49,#ec,#64,#5a,#f8
	db #72,#59,#df,#fb,#7c,#fc,#80,#5d
	db #f6,#72,#f6,#68,#ee,#4c,#fe,#a4
	db #f6,#b4,#1e,#76,#77,#77,#fc,#b4
	db #f3,#b7,#f7,#90,#eb,#a3,#7f,#a5
	db #f8,#ea,#7d,#f7,#5f,#8d,#a0,#f8
	db #fe,#9f,#f6,#5e,#c9,#f6,#34,#ed
	db #fe,#8d,#b4,#f8,#30,#b2,#d6,#f8
	db #3a,#2c,#d5,#f0,#f8,#44,#ef,#f7
	db #3a,#fc,#40,#d5,#d4,#c0,#fe,#5a
	db #fd,#57,#5c,#a7,#f2,#3d,#88,#d3
	db #09,#1e,#69,#b4,#ff,#ec,#62,#47
	db #23,#e4,#80,#26,#6b,#35,#f8,#9e
	db #5a,#2d,#f8,#a8,#f6,#94,#35,#4e
	db #1a,#f8,#bc,#3c,#1e,#da,#c6,#e2
	db #80,#ec,#0a,#3f,#79,#20,#e4,#20
	db #f6,#e4,#f6,#34,#f6,#16,#50,#28
	db #f8,#5c,#f3,#e2,#20,#c4,#82,#d8
	db #f8,#f6,#5c,#5a,#2d,#f8,#f2,#f6
	db #e8,#c9,#f6,#de,#f6,#f2,#6b,#35
	db #d0,#1a,#78,#3c,#f8,#4c,#9f,#f6
	db #42,#5f,#2f,#e4,#60,#f6,#10,#f6
	db #74,#e2,#42,#ce,#ae,#26,#8e,#47
	db #f8,#e2,#a0,#50,#f8,#ec,#f6,#e2
	db #d6,#7f,#6b,#ee,#00,#d8,#56,#e2
	db #3a,#ec,#d8,#ec,#14,#ec,#5a,#e2
	db #e2,#3f,#78,#3c,#f8,#b4,#ec,#8c
	db #92,#d0,#f6,#82,#ec,#48,#ec,#36
	db #3f,#5a,#2d,#f8,#72,#fa,#7c,#fc
	db #80,#f6,#72,#e2,#40,#f6,#b4,#cc
	db #ec,#b6,#e2,#9a,#7f,#3f,#f8,#ea
	db #f6,#5e,#a0,#50,#e4,#f8,#fe,#ec
	db #2c,#ec,#fe,#b4,#5a,#f8,#30,#d6
	db #6b,#9c,#f8,#3a,#f0,#78,#f8,#44
	db #f6,#3a,#f6,#56,#5c,#a7,#00,#f2
	db #3d,#88,#d3,#1e,#69,#b4,#ff,#8d
	db #ec,#62,#d6,#b4,#8e,#b3,#80,#fe
	db #cc,#78,#b3,#d0,#1a,#d6,#a0,#7f
	db #b3,#20,#fe,#6c,#6b,#b2,#70,#5a
	db #46,#47,#e5,#c0,#78,#5f,#50,#e5
	db #de,#ec,#c9,#6b,#27,#47,#3c,#e4
	db #10,#50,#3f,#e4,#2e,#ec,#fd,#e2
	db #2f,#dc,#e3,#7c,#fe,#bf,#50,#ef
	db #9c,#c4,#60,#ec,#e9,#35,#2d,#46
	db #23,#e5,#00,#3c,#2f,#28,#e5,#1e
	db #ec,#09,#35,#27,#23,#1e,#e4,#50
	db #28,#20,#e4,#6e,#ec,#3d,#e2,#6f
	db #bc,#e3,#bc,#3f,#fe,#d9,#ef,#dc
	db #c4,#a0,#ec,#29,#d6,#b4,#51,#8e
	db #b3,#40,#1d,#b1,#8e,#40,#f0,#be
	db #b3,#e0,#80,#f6,#d5,#5c,#a7,#f2
	db #3d,#88,#d3,#1e,#10,#69,#b4,#ff
	db #ec,#3a,#4a,#95,#e0,#2b,#02,#76
	db #c1,#0c,#57,#a2,#ed,#e2,#3a,#2d
	db #92,#f8,#80,#2c,#3c,#f8,#8a,#3b
	db #43,#f8,#94,#42,#ac,#f6,#8a,#3b
	db #fb,#a4,#3a,#f3,#a7,#f7,#94,#43
	db #4b,#91,#f8,#c6,#4a,#50,#f8,#d0
	db #4e,#4f,#4f,#fd,#d6,#df,#fe,#da
	db #fd,#d9,#5a,#f7,#e4,#f7,#d0,#f9
	db #dd,#f2,#f6,#f6,#c6,#bb,#ed,#bc
	db #4b,#f6,#ef,#f6,#e4,#f6,#16,#42
	db #fe,#48,#fe,#46,#76,#44,#f2,#46
	db #f6,#20,#f6,#34,#65,#f7,#70,#f7
	db #67,#59,#d1,#ce,#8a,#f6,#ae,#2d
	db #f8,#c0,#2b,#2c,#2c,#fd,#c6,#e5
	db #fe,#ca,#f3,#c9,#f7,#98,#3c,#28
	db #f8,#e8,#27,#f7,#c0,#4a,#2c,#f7
	db #df,#3a,#32,#f8,#06,#31,#fe,#0d
	db #33,#ff,#fd,#0d,#fe,#15,#f4,#10
	db #e3,#84,#eb,#a8,#f7,#2e,#fd,#35
	db #fe,#61,#ad,#fe,#5f,#44,#f3,#5f
	db #35,#f7,#74,#f7,#f2,#2d,#f7,#e8
	db #9f,#fd,#ef,#27,#26,#fe,#93,#fc
	db #90,#f6,#06,#e2,#c0,#c4,#bc,#26
	db #5a,#2d,#ee,#00,#78,#3c,#f8,#14
	db #f6,#0a,#50,#64,#28,#f8,#28,#ec
	db #0a,#65,#32,#ee,#46,#6b,#35,#f9
	db #f8,#5a,#f6,#50,#f6,#32,#f6,#64
	db #f6,#28,#86,#43,#f8,#8c,#ff,#ec
	db #64,#f6,#5a,#f6,#8c,#e2,#1e,#ec
	db #96,#ec,#32,#f6,#b4,#f6,#fa,#20
	db #b4,#5a,#f8,#18,#5c,#a7,#f2,#3d
	db #88,#05,#d3,#1e,#69,#b4,#ff,#ec
	db #22,#2d,#fc,#40,#5d,#5a,#f7,#45
	db #b4,#fc,#4f,#f6,#4a,#e2,#40,#28
	db #fc,#7c,#6b,#50,#fc,#81,#f6,#72
	db #26,#fc,#90,#4b,#fc,#95,#ec,#68
	db #f5,#e2,#90,#f6,#7c,#f6,#ae,#f6
	db #cc,#65,#fc,#ea,#ca,#fc,#ef,#ee
	db #f6,#ea,#e2,#e0,#f6,#5e,#32,#fc
	db #26,#fb,#12,#f6,#1c,#3c,#b7,#fc
	db #3a,#78,#fc,#3f,#fb,#db,#97,#fc
	db #49,#f6,#3a,#f6,#c2,#00,#a6,#f1
	db #3c,#87,#d2,#1d,#68,#b3,#00,#fe
	db #49,#fa,#45,#90,#db,#26,#71,#00
	db #bc,#07,#52,#9d,#57,#a2,#ed,#38
	db #00,#83,#ce,#19,#64,#af,#fa,#47
	db #23,#97,#e4,#80,#6b,#35,#f8,#9e
	db #5a,#fe,#34,#f9,#a9,#f6,#94,#27
	db #35,#1a,#f8,#bc,#3c,#1e,#da,#c6
	db #e2,#80,#ec,#0a,#3c,#3f,#20,#e4
	db #20,#f6,#e4,#f6,#34,#f6,#16,#50
	db #28,#e4,#f8,#5c,#e2,#20,#c4,#82
	db #2d,#16,#ee,#c0,#2f,#18,#cf,#f8
	db #d4,#f6,#ca,#35,#1a,#f8,#e8,#f6
	db #3e,#f6,#e8,#f6,#52,#fe,#f6,#f2
	db #ec,#18,#ec,#34,#f6,#5c,#f6,#4a
	db #ec,#f2,#ec,#d4,#28,#7e,#14,#f8
	db #7e,#f6,#60,#ec,#e8,#ec,#2e,#e2
	db #e8,#d8,#d6,#47,#ae,#f8,#00,#46
	db #fe,#07,#48,#fd,#07,#fe,#0f,#ea
	db #0a,#50,#95,#f8,#28,#4e,#5a,#f8
	db #32,#59,#f7,#28,#4f,#f7,#00,#48
	db #47,#f7,#32,#5a,#6b,#f7,#5a,#6a
	db #6a,#69,#fb,#fe,#64,#fb,#61,#f7
	db #5b,#f8,#66,#f3,#77,#78,#f7,#8c
	db #f6,#5b,#50,#5f,#fb,#a0,#3e,#fe
	db #a4,#5e,#5d,#5e,#5e,#ff,#fd,#a3
	db #fe,#ab,#f4,#aa,#f6,#50,#fa,#a0
	db #fc,#cd,#f6,#96,#f7,#8d,#6b,#77
	db #e2,#6e,#e2,#fc,#8e,#f7,#22,#a0
	db #f7,#2c,#f6,#22,#ea,#ed,#5b,#eb
	db #17,#f7,#40,#6b,#ed,#be,#5e,#f7
	db #73,#59,#e7,#e2,#e6,#f7,#dc,#fe
	db #e4,#77,#76,#fe,#b8,#f1,#b5,#f6
	db #40,#aa,#ec,#a4,#7f,#f8,#ea,#7e
	db #f7,#5f,#8d,#f7,#2d,#9e,#dd,#f6
	db #f4,#fe,#0f,#8f,#fd,#0f,#fe,#17
	db #ea,#2a,#b4,#f8,#30,#25,#b3,#d6
	db #f8,#3a,#d5,#f0,#f8,#44,#ee,#f6
	db #3a,#50,#d5,#fb,#54,#d4,#fd,#57
	db #5c,#a7,#f2,#3d,#02,#88,#d3,#1e
	db #69,#b4,#ff,#ec,#62,#a9,#00,#f4
	db #3f,#8a,#d5,#20,#6b,#b6,#01,#40
	db #4c,#e2,#80,#5f,#aa,#f5,#40,#8b
	db #d6,#00,#21,#6c,#b7,#02,#4d,#98
	db #e3,#2e,#03,#79,#c4,#0f,#5a,#a5
	db #f0,#ba,#9e,#ce,#da,#80,#74,#94
	db #7f,#ca,#15,#60,#ab,#f6,#41,#10
	db #8c,#d7,#22,#f6,#c0,#6d,#b8,#03
	db #4e,#03,#99,#e4,#2f,#7a,#c5,#10
	db #9c,#c0,#f6,#a2,#c7,#f6,#b1,#f9
	db #b9,#3b,#86,#d1,#fb,#ac,#f6,#60
	db #fb,#4c,#fe,#ec,#ac,#e2,#74,#c9
	db #88,#f1,#65,#fb,#42,#f6,#ec,#fb
	db #47,#00,#e2,#01,#00,#01,#00,#c5
	db #fe,#01,#01,#02,#fd,#3c,#03,#aa
	db #fe,#40,#04,#fe,#43,#05,#fd,#46
	db #06,#fe,#4a,#07,#ff,#e2,#3a,#ec
	db #4e,#46,#80,#01,#80,#01,#39,#01
	db #38,#01,#37,#d4,#35,#57,#02,#fe
	db #62,#03,#fe,#65,#04,#fd,#68,#ec
	db #62,#1e,#80,#fa,#01,#80,#01,#61
	db #01,#60,#01,#5f,#fc,#5d,#02,#fe
	db #62,#03,#bf,#fe,#65,#04,#fd,#68
	db #ec,#62,#1e,#80,#01,#80,#01,#61
	db #01,#60,#b5,#cf,#5e,#01,#b1,#8e
	db #a6,#90,#02,#fe,#3a,#03,#fe,#3d
	db #6a,#04,#fd,#40,#ec,#3a,#05,#fe
	db #58,#06,#fe,#5b,#07,#fe,#fd,#5e
	db #e2,#3a,#f0,#80,#01,#80,#01,#8f
	db #01,#8e,#6b,#8c,#02,#af,#fe,#22
	db #03,#fe,#25,#04,#fd,#28,#ec,#22
	db #1e,#40,#c0,#21,#15,#02,#02,#03
	db #fe,#64,#04,#fd,#67,#05,#f9,#63
	db #6f,#05,#fe,#73,#f7,#6d,#05,#1e
	db #80,#01,#80,#01,#61,#01,#60,#d5
	db #01,#5f,#fc,#5d,#02,#fe,#62,#03
	db #fe,#65,#04,#fd,#68,#df,#ec,#62
	db #fe,#60,#01,#fe,#82,#fb,#76,#e0
	db #80,#f7,#9f,#fb,#7a,#7f,#05,#fd
	db #b8,#b8,#9e,#ce,#dc,#71,#96,#fb
	db #b1,#f6,#c0,#fb,#b7,#bf,#fc,#bb
	db #06,#97,#c0,#fa,#a7,#fa,#44,#fd
	db #49,#f7,#4d,#fa,#ab,#ff,#f6,#60
	db #f9,#3d,#ec,#ae,#e4,#76,#c9,#88
	db #ef,#65,#fd,#e5,#f6,#ec,#80,#fb
	db #47,#3c,#00,#3c,#36,#30,#2a,#24
	db #1e,#18,#12,#41,#0c,#f6,#00,#32
	db #24,#16,#08,#00,#fc,#14,#78,#3a
	db #ec,#00,#01,#0a,#01,#41,#f5,#26
	db #2e,#1a,#06,#00,#38,#24,#10,#3c
	db #28,#14,#32,#16,#01,#3a,#1e,#08
	db #2c,#10,#34,#18,#fe,#30,#c0,#f7
	db #3b,#fc,#4e,#32,#1e,#0a,#36,#22
	db #0e,#af,#f2,#3a,#0e,#fc,#6c,#02
	db #f5,#58,#56,#91,#01,#8b,#01,#3a
	db #e0,#01,#39,#01,#38,#c4,#ff,#2e
	db #1a,#06,#38,#24,#00,#10,#3c,#28
	db #14,#32,#16,#3a,#1e,#5f,#0e,#fc
	db #6c,#02,#f6,#62,#2d,#90,#01,#8b
	db #01,#62,#01,#61,#c0,#01,#60,#ec
	db #27,#2e,#1a,#06,#38,#24,#10,#00
	db #3c,#28,#14,#32,#16,#3a,#1e,#0e
	db #bf,#fc,#6c,#02,#f6,#62,#2d,#90
	db #01,#8b,#01,#62,#01,#61,#15,#28
	db #00,#2e,#1a,#06,#38,#24,#10,#3c
	db #28,#02,#14,#32,#16,#3a,#1e,#0e
	db #fc,#44,#02,#c0,#f6,#3a,#fc,#4e
	db #32,#1e,#0a,#36,#22,#0e,#f8,#e1
	db #3a,#56,#91,#01,#8b,#01,#3a,#06
	db #01,#2e,#1a,#06,#00,#38,#24,#10
	db #3c,#28,#14,#32,#16,#17,#3a,#1e
	db #0e,#fc,#2c,#02,#f6,#22,#2d,#50
	db #b0,#eb,#00,#2e,#1a,#06,#38,#24
	db #10,#3c,#28,#02,#14,#32,#16,#3a
	db #1e,#0e,#fc,#6c,#02,#fb,#f6,#62
	db #2d,#90,#01,#8b,#01,#62,#ab,#29
	db #18,#11,#b7,#33,#6e,#00,#2e,#1a
	db #06,#38,#24,#10,#3c,#28,#02,#14
	db #32,#16,#3a,#1e,#0e,#fc,#6c,#02
	db #c4,#f6,#62,#fe,#76,#14,#3a,#26
	db #fe,#43,#18,#3e,#41,#24,#f6,#80
	db #32,#08,#1e,#34,#1c,#fc,#94,#60
	db #0a,#ec,#80,#fc,#a8,#20,#06,#2c
	db #12,#38,#7e,#1e,#e8,#94,#fa,#b6
	db #e8,#8a,#f0,#d4,#c0,#da,#6a,#a2
	db #16,#06,#2c,#02,#18,#2e,#04,#84
	db #3e,#f9,#3c,#34,#0f,#1a,#00,#26
	db #26,#fd,#35,#fe,#dd,#fc,#61,#fa
	db #47,#1f,#0e,#24,#3a,#ef,#28,#f7
	db #6b,#f5,#f2,#f6,#75,#ed,#89,#d8
	db #dd,#6a,#ec,#65,#16,#fc,#c9,#f6
	db #e2,#30,#7f,#38,#f8,#01,#f5,#00
	db #fd,#14,#ef,#04,#01,#01,#01,#38
	db #ed,#09,#3d,#10,#18,#fe,#3b,#f0
	db #16,#f5,#3a,#ed,#31,#10,#fd,#6c
	db #fc,#46,#80,#01,#8a,#01,#39,#01
	db #38,#01,#37,#c4,#fe,#10,#18,#ff
	db #fe,#63,#f9,#5c,#fd,#6c,#f0,#5c
	db #2e,#90,#01,#8a,#01,#61,#01,#60
	db #cf,#01,#5f,#ec,#30,#10,#18,#fe
	db #63,#f9,#5c,#fd,#6c,#f0,#5c,#f9
	db #2e,#90,#01,#8a,#01,#61,#01,#60
	db #15,#27,#10,#18,#fe,#3b,#ff,#f9
	db #34,#fd,#44,#f0,#34,#ce,#30,#60
	db #9a,#01,#8a,#01,#39,#06,#00,#3f
	db #10,#18,#fe,#23,#f9,#1c,#fd,#2c
	db #f0,#1c,#2e,#50,#b0,#ea,#3f,#10
	db #18,#fe,#63,#f9,#5c,#fd,#6c,#f0
	db #5c,#2e,#90,#01,#8a,#f3,#01,#61
	db #01,#60,#01,#5f,#ec,#30,#10,#18
	db #fe,#63,#f9,#5c,#dd,#fd,#6c,#f0
	db #5c,#00,#ec,#77,#fd,#94,#e6,#7a
	db #20,#f7,#59,#fd,#ec,#94,#f5,#b2
	db #ed,#8b,#eb,#d0,#c5,#db,#6a,#9e
	db #20,#fd,#d4,#ff,#82,#38,#f5,#42
	db #fc,#5c,#fb,#59,#f9,#4f,#fc,#67
	db #f7,#d5,#f5,#2e,#fe,#f7,#7f,#f5
	db #7e,#f6,#d5,#ec,#89,#de,#6b,#ec
	db #65,#f1,#dd,#0f,#67,#0e,#f8,#01
	db #f4,#00,#0d,#0c,#fa,#17,#ea,#00
	db #01,#0c,#ff,#01,#43,#01,#42,#01
	db #41,#01,#40,#01,#3f,#01,#3e,#01
	db #3d,#01,#3c,#ff,#01,#3b,#01,#3a
	db #01,#39,#01,#38,#01,#37,#01,#36
	db #01,#35,#01,#34,#ff,#01,#33,#01
	db #32,#01,#31,#01,#30,#01,#2f,#01
	db #2e,#01,#2d,#01,#2c,#f8,#01,#2b
	db #01,#2a,#01,#29,#01,#28,#17,#ef
	db #0c,#aa,#c5,#00,#0b,#fd,#3c,#0a
	db #fd,#40,#09,#fd,#44,#08,#ff,#f9
	db #48,#01,#00,#01,#5f,#01,#5e,#01
	db #5d,#01,#5c,#01,#5b,#01,#5a,#af
	db #c9,#f9,#0b,#fc,#68,#0d,#c8,#85
	db #f0,#68,#fe,#cd,#01,#80,#ff,#01
	db #df,#01,#de,#01,#dd,#4c,#7c,#fc
	db #6e,#01,#80,#01,#83,#01,#82,#cd
	db #01,#81,#01,#80,#0c,#0d,#c3,#80
	db #fc,#7c,#0b,#fd,#c2,#5f,#0a,#fd
	db #c6,#09,#fb,#ca,#01,#80,#01,#df
	db #01,#de,#01,#dd,#bf,#4c,#7c,#0b
	db #fc,#6e,#01,#35,#01,#94,#83,#33
	db #fc,#ee,#c8,#03,#bc,#f4,#f2,#08
	db #f9,#48,#01,#00,#01,#5f,#ce,#fe
	db #0f,#0e,#df,#f8,#81,#f4,#80,#0d
	db #f9,#65,#ea,#80,#01,#8c,#01,#c3
	db #b2,#8a,#00,#eb,#01,#00,#01,#00
	db #c5,#fe,#0e,#f7,#3a,#05,#d9,#31
	db #ec,#4e,#6f,#0f,#ef,#80,#fc,#72
	db #0d,#f9,#96,#ee,#80,#d3,#af,#f8
	db #92,#6b,#0c,#f8,#e5,#d8,#c1,#0b
	db #fd,#16,#0a,#fb,#1a,#a3,#80,#aa
	db #d3,#f1,#09,#fd,#aa,#08,#fd,#ae
	db #07,#fd,#b2,#06,#bf,#fd,#b6,#05
	db #fb,#ba,#bc,#c6,#d9,#73,#fd,#2a
	db #e6,#c5,#fc,#47,#f5,#d2,#70,#d6
	db #48,#d5,#4f,#fc,#e4,#0b,#fd,#d3
	db #0a,#fd,#d7,#7e,#09,#fa,#db,#bc
	db #fc,#a1,#ae,#ba,#f9,#c5,#62,#ec
	db #43,#08,#aa,#fd,#1a,#07,#fd,#1e
	db #06,#fd,#22,#05,#fd,#26,#04,#aa
	db #fd,#2a,#03,#fd,#2e,#02,#fd,#32
	db #01,#fd,#36,#00,#ff,#fb,#3a,#e6
	db #f0,#fc,#59,#b4,#be,#ea,#5a,#e7
	db #a2,#fc,#c0,#fd,#dc,#f7,#c7,#6d
	db #c8,#dd,#ef,#0b,#e2,#61,#0c,#fc
	db #c8,#f6,#76,#fc,#81,#5f,#0c,#fd
	db #93,#0b,#fa,#97,#fb,#80,#fb,#a2
	db #dd,#9e,#f1,#71,#bb,#f4,#8f,#0a
	db #f9,#e6,#ec,#c6,#eb,#d5,#09,#f8
	db #17,#a6,#80,#d5,#e7,#79,#ec,#07
	db #08,#fd,#a7,#07,#fd,#ab,#06,#fd
	db #af,#5f,#05,#fd,#b3,#04,#f8,#b7
	db #d3,#c6,#d8,#43,#f1,#61,#f8,#d4
	db #ff,#fd,#2b,#f2,#c1,#f4,#d4,#fd
	db #48,#dd,#52,#d8,#3d,#e2,#51,#e1
	db #c5,#57,#09,#fd,#d4,#08,#fd,#d8
	db #07,#fb,#dc,#c9,#fc,#9c,#a1,#f5
	db #ce,#f1,#e7,#7d,#c9,#c7,#e4,#3c
	db #06,#fd,#1b,#05,#fd,#1f,#55,#04
	db #fd,#23,#03,#fd,#27,#02,#fd,#2b
	db #01,#fd,#2f,#7f,#00,#f4,#33,#f1
	db #be,#f4,#ff,#fd,#5a,#d3,#64,#ec
	db #b9,#ec,#4f,#ff,#dd,#95,#f8,#bd
	db #fd,#dd,#cf,#69,#c9,#d6,#e7,#03
	db #f6,#b3,#b0,#6b,#c0,#fc,#5a,#fe
	db #ca,#0a,#0a,#09,#09,#08,#08,#1f
	db #07,#07,#06,#fb,#ca,#01,#80,#f5
	db #a7,#fc,#d9,#ce,#c0,#f8,#9c,#c0
	db #dd,#93,#fb,#96,#bf,#4c,#e7,#7e
	db #08,#08,#07,#3f,#07,#06,#fb,#fa
	db #fe,#ee,#ee,#01,#fc,#48,#fe,#f2
	db #fc,#19,#fe,#ce,#00,#9c,#00,#df
	db #4b,#fe,#f4,#fb,#d6,#bf,#8c,#e5
	db #be,#08,#d3,#f9,#38,#06,#f0,#0e
	db #e3,#3a,#05,#00,#f8,#59,#e2,#3a
	db #7f,#0f,#cd,#80,#c4,#78,#4c,#a0
	db #ce,#40,#ba,#54,#ce,#d6,#9c,#b8
	db #aa,#c5,#e5,#0d,#fd,#ed,#0c,#fd
	db #f1,#0b,#fd,#f5,#0a,#f1,#fa,#f9
	db #fc,#e7,#fc,#ef,#fc,#f7,#09,#09
	db #08,#fb,#0e,#ff,#fa,#00,#fc,#19
	db #d2,#14,#ba,#06,#a6,#88,#ca,#4c
	db #fe,#1a,#e4,#23,#eb,#fa,#1c,#01
	db #40,#e3,#44,#0e,#e3,#62,#0c,#f2
	db #5e,#fc,#81,#5f,#0c,#fd,#93,#0b
	db #fa,#97,#fb,#80,#fb,#a2,#dd,#9e
	db #f1,#71,#bb,#f4,#8f,#0a,#f9,#e6
	db #ec,#c6,#eb,#d5,#09,#f8,#17,#a6
	db #80,#d5,#e7,#79,#ec,#07,#08,#fd
	db #a7,#07,#fd,#ab,#06,#fd,#af,#5f
	db #05,#fd,#b3,#04,#f8,#b7,#f6,#66
	db #f8,#93,#fd,#d1,#d4,#3f,#fd,#e7
	db #57,#d3,#ca,#ba,#c5,#b5,#47,#f1
	db #d7,#f8,#92,#0b,#fd,#ef,#57,#0a
	db #fd,#f3,#09,#f8,#f7,#0f,#ea,#00
	db #f1,#8e,#fe,#25,#ff,#e9,#00,#d8
	db #3e,#f9,#e0,#e6,#05,#fc,#87,#e6
	db #4d,#f4,#27,#da,#80,#d5,#cd,#38
	db #f8,#1b,#0b,#fd,#13,#0a,#fd,#17
	db #09,#fa,#1b,#ff,#c8,#d7,#b8,#ba
	db #e2,#52,#e7,#a2,#fc,#c0,#fd,#dc
	db #c7,#6d,#c8,#dd,#cf,#ef,#0b,#b0
	db #61,#05,#00,#f8,#b3,#b0,#9e,#ce
	db #e4,#6a,#9e,#dd,#88,#b6,#ec,#4b
	db #0f,#f6,#60,#f6,#57,#fc,#70,#0d
	db #fd,#79,#5f,#0c,#fd,#7d,#0b,#fa
	db #81,#e7,#74,#e2,#6f,#e6,#a1,#ec
	db #61,#80,#ed,#d9
	jp l6912
	jp l6985
;
.real_init_music
.l6912
;
	ld de,l6b4f
	ldi
	ldi
	ld (l6fd1),hl
	dec hl
	ld de,l6b6c
	ldd
	ldd
	call l6d73
	call l6df8
	call l6df7
	call l6e94
	call l693f
	ld a,(l6fd0)
.l6936
	push af
	call l6b2b
	pop af
	dec a
	jr nz,l6936
	ret
.l693f
	ld b,#0e
	ld c,#0d
	xor a
.l6944
	push bc
	call l694d
	pop bc
	dec c
	djnz l6944
	ret
.l694d
	ld b,#f4
	out (c),c
	ld bc,#f6c0
	out (c),c
	db #ed,#71 ; out (c),0
	ld b,#f4
	out (c),a
	ld bc,#f680
	out (c),c
	db #ed,#71 ; out (c),0
	ret
.l6964
	ld a,(hl)
	cp #00
	jr z,l697a
	ld (#0000),a
.l696c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l697a
	inc c
.l697b
	inc de
	ld a,d
	and #03
	ld d,a
	ld (l69a0),de
	ret
;
.play_music
.l6985
;
	ld hl,l6b50
	or (hl)
	jr nz,l6992
	dec hl
	ld a,(hl)
	cp #0b
	jp c,l693f
.l6992
	call l6b2b
	ld de,#c080
	ld hl,#f4f6
	ld b,l
	out (c),d
	exx
.l69a0 equ $ + 1
	ld de,#0000
	ld l,e
	ld b,#f4
	ld c,#00
.l69a7
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l6b2b
	ld (l6b49),sp
	ld a,(l6fd0)
	dec a
.l6b35 equ $ + 2
	ld hx,#00
	ld iy,l6b3d
.l6b3b equ $ + 1
	jp l6bf1
.l6b3d
	ld hl,(l6b3b)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld (l6b3b),de
.l6b49 equ $ + 1
	ld sp,#0000
	ret
	ld sp,hl
	ld l,e
.l6b50 equ $ + 2
.l6b4f equ $ + 1
.l6b4e
	ld hl,#0000
	ld c,l
	ld d,#00
	ld a,(l6fd0)
	ld e,a
	or a
	sbc hl,de
	ld (l6b4f),hl
	dec a
	jp nc,l6bf1
	ld b,d		; reset music
	ld de,l6b8e
	ld (l6b3b),de
.l6b6c equ $ + 2
	ld de,#0000
	add hl,de
	ld (l6b4f),hl
	ld a,c
	ld (l6ba4),a
	ld (l6b8f),a
	ld hl,(l69a0)
	add hl,bc
	ld a,(l6fd0)
	ld c,a
	add hl,bc
	ld a,h
	and #03
	ld (l6b35),a
	ld (l6bca),a
	ld a,l
	ld (l6bb7),a
.l6b8f equ $ + 1
.l6b8e
	ld a,#00
	dec a
	jp m,l6b9b
	ld iy,l6ba0
.l6b99 equ $ + 1
.l6b98
	jp l6bf1
.l6b9b
	ld a,(l6fd0)
	jr l6ba6
.l6ba0
	ld a,(l6fd0)
.l6ba4 equ $ + 1
	ld b,#00
	sub b
.l6ba6
	ld hl,(l6b99)
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc de
	inc de
	inc de
	inc de
	ld hl,#006f
	add hl,de
	ex de,hl
.l6bb7 equ $ + 1
	ld (hl),#00
	inc hl
	ex de,hl
	ldi
	ldi
	ldi
	ldi
	ldi
	ld iy,l6bce
.l6bca equ $ + 2
	ld hx,#00
	dec a
	jr l6b98
.l6bce
	ld hl,(l6b99)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld hl,#94b1
	add hl,de
	jr c,l6be5
	ld hl,l6b4e
	ld (l6b3b),de
	ld de,l6bf1
.l6be5
	ld (l6b99),de
	ld sp,(l6b49)
	ei
	ret
	ld sp,hl
	ld l,e
.l6bf1
	ld sp,l6ef4
.l6bf5 equ $ + 1
	jp l6cdc
	ld bc,l316c
	cp #6e
	jp l6c5b
	add hl,bc
	ld l,h
	ld sp,l6f08
	jp l6cdc
	ld de,l316c
	ld (de),a
	ld l,a
	jp l6c5b
	add hl,de
	ld l,h
	ld sp,l6f1c
	jp l6cdc
	ld hl,l316c
	ld h,#6f
	jp l6c5b
	add hl,hl
	ld l,h
	ld sp,l6f30
	jp l6c5b
	ld sp,l316c
	ld a,(#c36f)
	ld e,e
	ld l,h
	add hl,sp
	ld l,h
	ld sp,l6f44
	jp l6c5b
	ld b,c
	ld l,h
	ld sp,l6f4e
	jp l6c5b
	ld c,(hl)
	ld l,e
	ld sp,l6f58
	jp l6c5b
.l6c47
	ex af,af'
	ld a,(hl)
	inc hl
	exx
	ld (de),a
	inc e
	ex af,af'
	dec a
	exx
	jp p,l6c74
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l6c5b
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l6c71
	exx
	ld d,a
	exx
	add b
	jr nc,l6cb4
	ex af,af'
.l6c69
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l6c69
	ex af,af'
.l6c71
	exx
	pop bc
	pop hl
.l6c74
	sla c
	jr nz,l6c7c
	ld c,(hl)
	inc hl
	sll c
.l6c7c
	jr nc,l6c47
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l6c99
	ex af,af'
	ld a,b
	exx
	ld b,a
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
.l6c8e
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l6c8e
	ex af,af'
	exx
	jr l6c74
.l6c99
	ex af,af'
	ld a,d
	exx
	ld b,a
	inc b
	exx
	ld a,(hl)
	inc hl
	push hl
	push bc
	exx
	add c
	ld l,a
.l6ca6
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	djnz l6ca6
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l6cb4
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l6cbc
	ld a,(hl)
	ld (de),a
	inc l
	inc e
	djnz l6cbc
	push hl
	push de
	jp (iy)
.l6cc6
	ex af,af'
	ld a,(hl)
	inc hl
	exx
	ld (de),a
	inc de
	res 2,d
	ex af,af'
	dec a
	exx
	jp p,l6cf9
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l6cdc
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l6cf6
	exx
	ld d,a
	exx
	add b
	jr nc,l6d5d
	ex af,af'
.l6cea
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l6cea
	ex af,af'
.l6cf6
	exx
	pop bc
	pop hl
.l6cf9
	sla c
	jr nz,l6d01
	ld c,(hl)
	inc hl
	sll c
.l6d01
	jr nc,l6cc6
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l6d30
	ex af,af'
	ld a,b
	exx
	ld b,a
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
	ld a,d
	res 0,a
	res 1,a
	exx
	adc (hl)
	add hx
	and #fb
	inc hl
	exx
	ld h,a
.l6d21
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l6d21
	ex af,af'
	exx
	jr l6cf9
.l6d30
	ex af,af'
	ld a,d
	exx
	ld b,a
	inc b
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
	ld a,d
	res 0,a
	res 1,a
	exx
	adc (hl)
	add hx
	and #fb
	inc hl
	push hl
	push bc
	exx
	ld h,a
.l6d4b
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	djnz l6d4b
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l6d5d
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l6d65
	ld a,(hl)
	ld (de),a
	inc hl
	res 2,h
	inc de
	res 2,d
	djnz l6d65
	push hl
	push de
	jp (iy)
.l6d73
	ld hl,l6fd3
	ld d,#70
	exx
	ld hl,(l6fd1)
	push hl
	ld de,#0003
	ld a,(l6fd0)
	ld b,a
	ld c,#00
.l6d86
	ld a,(hl)
	cp #01
	jr z,l6d97
	exx
	ld (hl),d
	inc hl
	ld (hl),#04
	dec hl
	ld a,d
	add #08
	ld d,a
	exx
	inc c
.l6d97
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l6d86
	ld hl,l6fd3
	ld d,#70
	ld b,#03
	exx
	pop hl
	push hl
	ld de,#0003
	ld a,(l6fd0)
	ld b,a
.l6daf
	ld a,(hl)
	cp #04
	jr z,l6dcc
	exx
	ld a,b
	inc a
	and #03
	ld b,a
	jr nz,l6dc5
	ld a,c
	or a
	jr z,l6dc5
	dec c
	ld a,d
	add #04
	ld d,a
.l6dc5
	ld (hl),d
	inc hl
	ld (hl),#01
	dec hl
	inc d
	exx
.l6dcc
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l6daf
	ld hl,l6bf5
	ld bc,#0007
	exx
	pop hl
	ld de,#0003
	ld a,(l6fd0)
	ld b,a
.l6de2
	ld a,(hl)
	cp #01
	exx
	ld de,l6c5b
	jr z,l6dee
	ld de,l6cdc
.l6dee
	ld (hl),e
	inc hl
	ld (hl),d
	add hl,bc
	exx
	add hl,de
	djnz l6de2
	ret
.l6df7
	ret
.l6df8
	ld hl,l6fd3
	ld de,l69a7
	ld b,(hl)
	inc hl
	ld a,(hl)
	inc hl
	cp #01
	call z,l6e79
	call nz,l6e86
	ld b,#0d
.l6e0c
	push bc
	call l6e56
	ld b,(hl)
	inc hl
	ld a,(hl)
	cp #04
	call z,l6e86
	jr z,l6e2f
	dec hl
	dec hl
	cp (hl)
	call nz,l6e79
	jr nz,l6e2d
	dec hl
	ld a,(hl)
	inc hl
	sub b
	inc a
	call z,l6e81
	call nz,l6e79
.l6e2d
	inc hl
	inc hl
.l6e2f
	inc hl
	pop bc
	djnz l6e0c
	ex de,hl
	ld (hl),#7e
	inc hl
	ld (hl),#3c
	inc hl
	ld (hl),#28
	inc hl
	ld (hl),#0f
	inc hl
	ld (hl),#3d
	inc hl
	ex de,hl
	ld hl,l696c
	ld bc,#000f
	ldir
	dec de
	ld hl,l697b
	ld bc,#000a
	ldir
	ret
.l6e56
	push hl
	ld hl,l6964
	ldi
	ldi
	ld b,d
	ld c,#ff
	ld a,e
	ldi
	ldi
	ldi
	ldi
	ld (de),a
	inc de
	ld a,b
	ld (de),a
	inc de
	ld hl,l696c
	ld bc,#000f
	ldir
	pop hl
	ret
.l6e79
	ex de,hl
	ld (hl),#26
	inc hl
	ld (hl),b
	inc hl
	ex de,hl
	ret
.l6e81
	ld a,#24
	ld (de),a
	inc de
	ret
.l6e86
	ex de,hl
	ld (hl),#3e
	inc hl
	ld (hl),b
	inc hl
	ld (hl),#b2
	inc hl
	ld (hl),#67
	inc hl
	ex de,hl
	ret
.l6e94
	ld hl,l6b4e
	ld (l6b3b),hl
	ld hl,l6bf1
	ld (l6b99),hl
	xor a
	ld (l6b35),a
	ld hl,#0000
	ld (l69a0),hl
	call l6eb9
	ld hl,l6ef4
	ld de,l6f62
	ld bc,#006e
	ldir
	ret
.l6eb9
	ld hl,l6fd3
	exx
	ld a,(l6fd0)
	ld b,a
	ld de,(l6fd1)
	ld hl,l6ef4
.l6ec8
	push bc
	exx
	ld a,(hl)
	inc hl
	inc hl
	exx
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#00
	inc hl
	ld (hl),#00
	inc hl
	ld (hl),#40
	inc hl
	inc hl
	ex de,hl
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	push hl
	add hl,bc
	ld b,h
	ld c,l
	pop hl
	inc hl
	ex de,hl
	ld (hl),c
	inc hl
	ld (hl),b
	inc hl
	pop bc
	djnz l6ec8
	ret
.l6ef4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6f08 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6f1c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6f30 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6f44
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6f4e equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6f58 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6f62 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6fd3 equ $ + 7
.l6fd1 equ $ + 5
.l6fd0 equ $ + 4
	db #00,#00,#00,#00,#0b,#00,#00,#c0
	db #04,#c4,#01,#c8,#04,#c5,#01,#d0
	db #04,#c6,#01,#c7,#01,#cc,#01,#cd
	db #01,#ce,#01,#cf,#f8,#67,#f8,#5f
	db #4b,#19,#fa,#ca,#3c,#59,#1e,#fa
	db #da,#a0,#7f,#f8,#e7,#f0,#67,#64
	db #21,#78,#64,#fb,#11,#a0,#ff,#f8
	db #67,#f0,#e7,#70,#25,#70,#f8,#fb
	db #91,#a0,#7f,#f8,#e7,#f8,#77,#f8
	db #06,#53,#51,#50,#00,#51,#53,#54
	db #56,#57,#59,#57,#56,#e0,#bb,#0e
	db #f8,#df,#f8,#66,#49,#48,#46,#48
	db #49,#03,#4b,#4c,#4e,#4f,#4e,#4c
	db #fb,#6e,#f8,#f7,#80,#f8,#86,#58
	db #56,#55,#56,#58,#59,#5b,#0e,#5c
	db #5e,#5c,#5b,#bb,#8e,#f8,#ef,#f8
	db #e6,#6f,#00,#6d,#6c,#6d,#6f,#70
	db #72,#73,#75,#22,#73,#72,#fb,#ee
	db #64,#21,#64,#f3,#01,#63,#00,#61
	db #60,#61,#63,#64,#66,#67,#69,#23
	db #67,#66,#db,#0e,#5f,#1f,#5f,#f3
	db #41,#f0,#ff,#10,#54,#1c,#54,#f3
	db #61,#53,#51,#50,#51,#01,#53,#54
	db #56,#57,#59,#57,#56,#fb,#6e,#f8
	db #c0,#7f,#e0,#df,#e0,#d3,#e0,#5f
	db #c0,#13,#4b,#19,#4b,#80,#f3,#61
	db #49,#48,#46,#48,#49,#4b,#4c,#0e
	db #4e,#4f,#4e,#4c,#fb,#6e,#c0,#7f
	db #e0,#b3,#70,#38,#25,#70,#f3,#e1
	db #f4,#f3,#fc,#ef,#64,#21,#64,#80
	db #f3,#01,#63,#61,#60,#61,#63,#64
	db #66,#08,#67,#69,#67,#66,#db,#0e
	db #5f,#1f,#5f,#e0,#f3,#41,#f0,#ff
	db #f0,#3f,#5d,#5c,#5a,#5c,#5d,#02
	db #5f,#60,#62,#63,#62,#60,#fb,#6e
	db #54,#20,#1c,#54,#f3,#81,#53,#51
	db #50,#51,#53,#02,#54,#56,#57,#59
	db #57,#56,#9b,#8e,#fd,#00,#54,#fd
	db #fd,#3f,#6a,#3f,#3f,#1c,#1c,#5f
	db #1c,#1c,#fc,#03,#fc,#ff,#fc,#07
	db #d5,#47,#21,#d5,#d5,#fc,#0f,#a9
	db #38,#a9,#a9,#fc,#17,#08,#9f,#35
	db #9f,#9f,#fc,#1f,#8e,#2f,#8e,#42
	db #8e,#fc,#27,#7e,#2a,#7e,#7e,#fc
	db #2f,#6a,#1c,#23,#6a,#6a,#fc,#37
	db #fc,#7f,#fc,#3f,#4f,#1a,#21,#4f
	db #4f,#fc,#47,#47,#17,#47,#47,#fc
	db #4f,#30,#3f,#15,#fe,#0d,#fc,#57
	db #35,#12,#35,#35,#84,#fc,#5f,#2a
	db #0e,#2a,#2a,#fc,#67,#28,#0d,#30
	db #28,#28,#fc,#6f,#fc,#13,#66,#77
	db #66,#66,#e1,#fc,#0b,#fc,#83,#f8
	db #07,#ef,#4f,#ef,#ef,#fc,#8f,#08
	db #bd,#3f,#bd,#bd,#fc,#97,#b3,#3b
	db #b3,#78,#b3,#fc,#9f,#fc,#33,#fc
	db #a7,#f8,#2f,#77,#28,#77,#42,#77
	db #fc,#b7,#5f,#1f,#5f,#5f,#fc,#bf
	db #59,#1e,#1e,#59,#59,#fc,#c7,#fc
	db #5b,#fc,#cf,#f8,#57,#3b,#10,#14
	db #3b,#3b,#fc,#df,#2f,#10,#2f,#2f
	db #84,#fc,#e7,#2c,#0f,#2c,#2c,#fc
	db #ef,#a3,#a3,#38,#15,#15,#fe,#ff
	db #f4,#04,#92,#01,#7e,#7e,#14,#75
	db #14,#fe,#7f,#f4,#84,#92,#81,#2a
	db #e1,#ff,#28,#f1,#1f,#b6,#f0,#0f
	db #35,#e1,#3f,#e0,#ff,#2f,#e4,#7f
	db #fd,#5c,#3f,#ba,#e4,#9f,#3b,#fe
	db #bc,#e3,#42,#fd,#b9,#47,#e1,#df
	db #54,#31,#1c,#54,#f2,#01,#f1,#00
	db #4f,#1a,#4f,#f3,#21,#8e,#f0,#0f
	db #6a,#23,#6a,#f2,#41,#f1,#40,#e0
	db #ff,#5f,#38,#1f,#5f,#f2,#81,#f4
	db #80,#fd,#4f,#7e,#2a,#7e,#c6,#f2
	db #a1,#f4,#a0,#77,#28,#77,#e3,#3f
	db #fd,#af,#8e,#34,#2f,#8e,#f2,#e1
	db #f0,#e0,#86,#fe,#bb,#70,#6a,#12
	db #64,#5f,#59,#fe,#1e,#4b,#47,#ed
	db #0b,#46,#36,#46,#45,#fe,#1f,#fe
	db #1d,#48,#fe,#26,#aa,#1d,#47,#3c
	db #4b,#4f,#e2,#81,#eb,#0a,#f5,#b4
	db #fe,#80,#54,#59,#f2,#e4,#c3,#fe
	db #08,#c3,#82,#e0,#5b,#47,#43,#e2
	db #40,#42,#36,#42,#41,#fe,#5f,#fe
	db #5d,#44,#fe,#66,#ea,#5d,#43,#2c
	db #3f,#3b,#e2,#81,#3a,#fe,#a0,#fe
	db #9e,#3c,#3c,#60,#3d,#fe,#a5,#eb
	db #9e,#3b,#3f,#43,#47,#4b,#b1,#e4
	db #e4,#4e,#fe,#e0,#fe,#de,#50,#50
	db #51,#fe,#e5,#dd,#eb,#de,#fd,#1c
	db #8e,#fe,#02,#86,#00,#fd,#dd,#9f
	db #fe,#82,#d7,#e6,#80,#e0,#ff,#54
	db #fe,#bf,#a9,#fe,#c2,#e6,#c0,#c0
	db #7f,#ad,#e0,#1a,#3f,#fe,#3f,#7e
	db #fe,#42,#c6,#40,#3b,#fe,#7f,#78
	db #77,#fe,#82,#c6,#80,#e0,#df,#e0
	db #da,#54,#54,#15,#42,#15,#c4,#00
	db #6a,#6a,#1a,#1a,#c4,#40,#5f,#10
	db #5f,#17,#17,#c4,#80,#7e,#7e,#1f
	db #1f,#84,#c4,#c0,#70,#70,#1c,#1c
	db #c4,#00,#8e,#8e,#30,#23,#23,#c4
	db #40,#c0,#bf,#9f,#9f,#28,#28,#ef
	db #c4,#c0,#fe,#3d,#fe,#00,#1a,#fd
	db #03,#fc,#ff,#fe,#7d,#fe,#0c,#55
	db #2a,#fd,#0f,#2f,#fd,#13,#35,#fd
	db #17,#38,#fd,#1b,#55,#47,#fd,#1f
	db #54,#fd,#23,#5f,#fd,#27,#6a,#fd
	db #2b,#75,#70,#fd,#2f,#fe,#3f,#fe
	db #34,#a9,#fd,#37,#bd,#fd,#3b,#7f
	db #d5,#fd,#3f,#fc,#3b,#fc,#37,#fc
	db #33,#fc,#2f,#fc,#2b,#fc,#27,#ff
	db #fc,#23,#fc,#1f,#fc,#1b,#fc,#17
	db #fc,#13,#fc,#0f,#fc,#0b,#f8,#ff
	db #20,#bd,#3f,#fe,#45,#ef,#4f,#ef
	db #ef,#d5,#79,#47,#fe,#41,#fc,#83
	db #fc,#7f,#fc,#87,#9f,#35,#fe,#bf
	db #84,#fc,#8f,#7e,#2a,#7e,#7e,#fc
	db #97,#77,#28,#26,#77,#77,#fc,#9f
	db #6a,#23,#fe,#55,#fc,#a7,#5f,#61
	db #1f,#fd,#29,#fd,#b0,#4f,#1a,#4f
	db #4f,#fc,#b7,#08,#3f,#15,#3f,#3f
	db #fc,#bf,#3b,#14,#3b,#4c,#3b,#fc
	db #c7,#35,#12,#fe,#69,#fc,#cf,#2f
	db #10,#cc,#fd,#15,#fd,#d8,#28,#0d
	db #fe,#fd,#fc,#df,#1f,#0a,#21,#1f
	db #1f,#fc,#e7,#1e,#0a,#1e,#1e,#fc
	db #ef,#b7,#fc,#73,#21,#fd,#03,#fc
	db #ff,#2c,#fd,#0b,#fc,#67,#fe,#dd
	db #b7,#fe,#14,#43,#fd,#17,#fc,#5f
	db #59,#fd,#1f,#fc,#53,#fe,#b5,#b7
	db #fe,#28,#86,#fd,#2b,#fc,#4b,#b3
	db #fd,#33,#fc,#3f,#fe,#8d,#bf,#fe
	db #3c,#0c,#fd,#3f,#fc,#3b,#fc,#37
	db #fc,#33,#fc,#2f,#fc,#2b,#ff,#fc
	db #27,#fc,#23,#fc,#1f,#fc,#1b,#fc
	db #17,#fc,#13,#fc,#0f,#fc,#0b,#d7
	db #f8,#ff,#80,#7f,#1c,#fd,#ff,#1a
	db #fd,#03,#fc,#ff,#fc,#77,#7b,#2a
	db #fd,#0f,#fe,#ed,#fd,#e1,#fd,#17
	db #38,#fd,#1b,#fc,#63,#7b,#54,#fd
	db #23,#fe,#c5,#fd,#b9,#fd,#2b,#70
	db #fd,#2f,#fc,#4f,#7f,#a9,#fd,#37
	db #fe,#9d,#fd,#91,#fd,#3f,#fc,#3b
	db #fc,#37,#fc,#33,#ff,#fc,#2f,#fc
	db #2b,#fc,#27,#fc,#23,#fc,#1f,#fc
	db #1b,#fc,#17,#fc,#13,#fb,#fc,#0f
	db #fc,#0b,#f8,#ff,#80,#7f,#fc,#73
	db #21,#fd,#03,#fc,#ff,#7b,#2c,#fd
	db #0b,#fc,#67,#fe,#dd,#fe,#14,#43
	db #fd,#17,#fc,#5f,#7b,#59,#fd,#1f
	db #fc,#53,#fe,#b5,#fe,#28,#86,#fd
	db #2b,#fc,#4b,#7b,#b3,#fd,#33,#fc
	db #3f,#fe,#8d,#fe,#3c,#0c,#fd,#3f
	db #fc,#3b,#ff,#fc,#37,#fc,#33,#fc
	db #2f,#fc,#2b,#fc,#27,#fc,#23,#fc
	db #1f,#fc,#1b,#fd,#fc,#17,#fc,#13
	db #fc,#0f,#fc,#0b,#f8,#ff,#80,#7f
	db #1c,#fd,#ff,#77,#1a,#fd,#03,#fc
	db #ff,#fc,#77,#2a,#fd,#0f,#fe,#ed
	db #fd,#e1,#b7,#fd,#17,#38,#fd,#1b
	db #fc,#63,#54,#fd,#23,#fe,#c5,#fd
	db #b9,#b7,#fd,#2b,#70,#fd,#2f,#fc
	db #4f,#a9,#fd,#37,#fe,#9d,#fd,#91
	db #ff,#fd,#3f,#fc,#3b,#fc,#37,#fc
	db #33,#fc,#2f,#fc,#2b,#fc,#27,#fc
	db #23,#ff,#fc,#1f,#fc,#1b,#fc,#17
	db #fc,#13,#fc,#0f,#fc,#0b,#f8,#ff
	db #fe,#fd,#ff,#fe,#80,#fe,#f9,#fd
	db #f9,#fd,#87,#fe,#f5,#fd,#e9,#f9
	db #14,#fe,#dd,#fe,#fd,#d1,#fd,#9b
	db #fe,#cd,#fd,#c1,#f9,#28,#fe,#b5
	db #fe,#ac,#7e,#b7,#fd,#af,#9f,#fd
	db #b3,#f8,#3b,#ef,#fd,#bf,#f8,#3f
	db #fc,#b3,#ff,#fc,#af,#fc,#ab,#f8
	db #53,#fc,#9f,#fc,#9b,#fc,#97,#f8
	db #67,#fc,#8b,#f6,#f8,#7f,#01,#ff
	db #01,#fe,#e1,#fd,#21,#fe,#1c,#72
	db #1f,#00,#ef,#01,#00,#01,#00,#39
	db #fe,#01,#ed,#c6,#01,#da,#5a,#d9
	db #ec,#c6,#ff,#f8,#d6,#57,#d6,#c4
	db #44,#fc,#9a,#ed,#80,#f8,#7b,#20
	db #9f,#01,#9f,#fe,#01,#7e,#01,#7d
	db #01,#7c,#01,#7b,#01,#7a,#01,#79
	db #75,#77,#01,#fc,#fe,#02,#fe,#05
	db #f9,#04,#f8,#ff,#8c,#9b,#8c,#03
	db #02,#02,#ff,#fc,#fd,#f4,#04,#12
	db #01,#fe,#f1,#01,#ff,#01,#00,#01
	db #ff,#01,#fe,#fd,#01,#fd,#01,#fc
	db #01,#fb,#01,#fa,#01,#f9,#b9,#f7
	db #01,#fd,#3f,#cf,#04,#43,#01,#43
	db #00,#01,#fd,#3f,#04,#43,#01,#43
	db #01,#3e,#c0,#01,#3d,#8f,#3c,#6a
	db #ad,#e4,#00,#16,#fd,#1d,#15,#fd
	db #21,#fc,#1d,#1c,#fd,#29,#55,#21
	db #fd,#2d,#25,#fd,#31,#2a,#fd,#35
	db #2c,#fd,#39,#55,#38,#fd,#3d,#43
	db #fd,#41,#4b,#fd,#45,#54,#fd,#49
	db #55,#59,#fd,#4d,#70,#fd,#51,#86
	db #fd,#55,#96,#fd,#59,#7f,#a9,#fd
	db #5d,#fc,#59,#fc,#55,#fc,#51,#fc
	db #4d,#fc,#49,#fc,#45,#ff,#fc,#41
	db #fc,#3d,#fc,#39,#fc,#35,#fc,#31
	db #fc,#2d,#fc,#29,#f8,#1d,#5b,#19
	db #fd,#9d,#17,#fd,#a1,#fc,#9d,#1f
	db #fd,#a9,#f8,#31,#56,#2f,#fd,#b5
	db #32,#fd,#b9,#3f,#fd,#bd,#f8,#45
	db #5f,#ad,#fd,#c9,#64,#fd,#cd,#7e
	db #fd,#d1,#f8,#59,#bd,#fd,#dd,#ff
	db #f8,#5d,#fc,#d1,#fc,#cd,#fc,#c9
	db #f8,#71,#fc,#bd,#fc,#b9,#fc,#b5
	db #f6,#f8,#85,#fc,#a9,#f8,#9d,#fc
	db #91,#1a,#fd,#21,#fc,#1d,#23,#db
	db #fd,#29,#f8,#b1,#35,#fd,#35,#fc
	db #7d,#47,#fd,#3d,#f8,#c5,#6d,#6a
	db #fd,#49,#fc,#69,#8e,#fd,#51,#f8
	db #d9,#d5,#fd,#5d,#ff,#f8,#dd,#fc
	db #51,#fc,#4d,#fc,#49,#f8,#f1,#fc
	db #3d,#fc,#39,#fc,#35,#f6,#f8,#05
	db #fc,#29,#f8,#1d,#fc,#11,#1e,#fd
	db #a1,#fc,#9d,#28,#db,#fd,#a9,#f8
	db #31,#3b,#fd,#b5,#fc,#fd,#4f,#fd
	db #bd,#f8,#45,#6d,#77,#fd,#c9,#fc
	db #e9,#9f,#fd,#d1,#f8,#59,#ef,#fd
	db #dd,#e9,#f8,#5d,#fc,#d1,#fe,#bf
	db #52,#f1,#ef,#80,#a3,#fa,#00,#80
	db #f8,#ff,#d5,#df,#e9,#f3,#fd,#07
	db #11,#1f,#1b,#80,#c3,#fe,#18,#fb
	db #17,#e8,#00,#fc,#fc,#e4,#1c,#fe
	db #01,#18,#01,#57,#01,#56,#01,#55
	db #01,#54,#01,#53,#52,#12,#86,#ef
	db #fa,#00,#f8,#ff,#f7,#ef,#5a,#fe
	db #18,#fb,#17,#e8,#00,#fc,#fc,#f7
	db #e4,#1c,#d8,#18,#01,#80,#7f,#7f
	db #f6,#fa,#00,#f8,#ff,#f7,#ef,#77
	db #fa,#fe,#18,#fb,#17,#e8,#00,#7b
	db #fe,#38,#e3,#1b,#d8,#18,#ff,#68
	db #80,#fc,#04,#c4,#1c,#d8,#18,#e8
	db #e0,#fc,#84,#c4,#9c,#d8,#98,#fb
	db #68,#00,#fc,#fc,#c4,#dc,#fc,#7c
	db #dc,#5c,#53,#fa,#00,#f8,#ff,#bb
	db #f7,#ef,#38,#fe,#18,#fb,#17,#e8
	db #00,#a9,#fe,#38,#e3,#1b,#f7,#01
	db #18,#01,#57,#01,#56,#55,#15,#30
	db #fa,#00,#f8,#ff,#f7,#ef,#77,#cc
	db #fe,#18,#fb,#17,#e8,#00,#18,#fe
	db #38,#e3,#1b,#d8,#18,#77,#70,#fa
	db #80,#f8,#7f,#f7,#6f,#f6,#fe,#98
	db #fb,#97,#e8,#80,#f7,#fc,#fc,#e4
	db #9c,#d8,#98,#80,#00,#bb,#fa,#80
	db #f8,#7f,#f7,#6f,#77,#7e,#fe,#98
	db #fb,#97,#e8,#80,#de,#fe,#b8,#fb
	db #9b,#c0,#c0,#7d,#53,#fa,#00,#f8
	db #ff,#f3,#ef,#fc,#18,#e8,#00,#a9
	db #fe,#38,#fb,#e3,#1b,#01,#18,#3f
	db #17,#fc,#04,#9c,#dc,#bb,#fa,#80
	db #f8,#7f,#db,#f7,#6f,#fc,#84,#7e
	db #fe,#9c,#e7,#7f,#de,#fe,#b8,#e3
	db #9b,#fd,#d8,#98,#01,#00,#e7,#5f
	db #fc,#7c,#c4,#1c,#58,#18,#30,#fa
	db #00,#dd,#f8,#ff,#f7,#ef,#cc,#fe
	db #18,#fb,#17,#e8,#00,#18,#fe,#38
	db #fd,#e3,#1b,#d8,#18,#fd,#fc,#fc
	db #82,#f8,#7f,#f7,#6f,#7b,#fe,#98
	db #dd,#fb,#97,#e8,#80,#1c,#fe,#b8
	db #e3,#9b,#d8,#98,#53,#fa,#00,#f7
	db #f8,#ff,#f7,#ef,#f9,#e4,#e7,#ff
	db #a9,#fe,#38,#e3,#1b,#58,#18,#77
	db #30,#fa,#00,#f8,#ff,#f7,#ef,#cc
	db #fe,#18,#fb,#17,#e8,#00,#7f,#18
	db #fe,#38,#e3,#1b,#d8,#18,#fd,#fc
	db #fc,#82,#f8,#7f,#f7,#6f,#77,#7b
	db #fe,#98,#fb,#97,#e8,#80,#1c,#fe
	db #b8,#e3,#9b,#d8,#98,#77,#53,#fa
	db #00,#f8,#ff,#f7,#ef,#bb,#fa,#18
	db #01,#ff,#17,#fe,#d8,#88,#06,#63
	db #ff,#16,#9e,#1c,#d2,#7f,#00,#d3
	db #01,#00,#11,#ff,#01,#f1,#ef,#00
	db #02,#fa,#00,#f7,#ff,#ff,#f9,#eb
	db #f7,#13,#01,#00,#01,#1f,#01,#1e
	db #01,#1d,#01,#1c,#01,#1b,#bf,#1a
	db #fa,#03,#fa,#00,#f7,#ff,#f8,#f0
	db #f9,#e4,#e7,#ff,#f8,#14,#ff,#c0
	db #00,#01,#80,#7f,#7f,#01,#80,#e7
	db #df,#fc,#0c,#01,#dc,#83,#db,#bf
	db #98,#78,#03,#fa,#00,#f7,#ff,#f4
	db #50,#fc,#18,#e8,#00,#f8,#14,#f7
	db #01,#00,#01,#3f,#01,#3e,#3d,#fd
	db #04,#fa,#00,#f7,#ff,#f0,#d0,#df
	db #01,#00,#9f,#ff,#03,#fa,#80,#f7
	db #7f,#d8,#70,#f8,#94,#80,#40,#fe
	db #01,#00,#27,#ff,#fc,#0c,#01,#dc
	db #03,#db,#fc,#fc,#1c,#dc,#04,#ff
	db #fa,#00,#f7,#ff,#f0,#d0,#a0,#00
	db #fd,#7c,#fc,#82,#f7,#7f,#f4,#f0
	db #df,#f9,#74,#a3,#83,#03,#fa,#00
	db #f7,#ff,#f0,#70,#e8,#00,#f8,#14
	db #bf,#40,#00,#04,#fa,#00,#f7,#ff
	db #f0,#d0,#a0,#00,#fd,#7c,#fc,#82
	db #f7,#f7,#7f,#f4,#f0,#f9,#74,#a3
	db #83,#03,#fa,#00,#f7,#ff,#f8,#f0
	db #fb,#f0,#00,#01,#08,#20,#07,#88
	db #06,#63,#ff,#00,#9d,#1c,#d3,#d2
	db #19,#d7,#01,#00,#01,#00,#0f,#f1
	db #ff,#09,#f9,#0f,#f0,#ff
	db #01,#07,#ff,#01,#26,#01,#25,#01
	db #24,#01,#23,#01,#22,#01,#21,#01
	db #20,#01,#1f,#ff,#01,#1e,#01,#1d
	db #01,#1c,#01,#1b,#01,#1a,#01,#19
	db #01,#18,#01,#17,#ff,#01,#16,#01
	db #15,#01,#14,#01,#13,#01,#12,#01
	db #11,#01,#10,#01,#0f,#fa,#01,#0e
	db #01,#0d,#01,#0c,#01,#f7,#ee,#09
	db #19,#70,#1c,#3e,#ac,#f3,#00,#3c
	db #f2,#0e,#18,#01,#1d,#1e,#1c,#1c
	db #38,#ff,#fa,#00,#f8,#ff,#f4,#f7
	db #f8,#17,#01,#03,#01,#22,#01,#21
	db #01,#20,#fa,#01,#1f,#01,#1e,#01
	db #1d,#01,#1c,#db,#fb,#3a,#fa,#40
	db #1e,#be,#f9,#40,#1a,#f9,#4f,#fc
	db #47,#fc,#57,#1f,#df,#28,#20,#3c
	db #fa,#fe,#18,#f8,#17,#fc,#22,#f8
	db #1f,#ef,#0f,#3a,#fa,#40,#1e,#a7
	db #f9,#40,#1a,#f9,#4f,#1e,#3e,#fe
	db #58,#fc,#57,#df,#1f,#ff,#40,#00
	db #a8,#00,#f9,#84,#01,#7f,#01,#9e
	db #01,#9d,#01,#9c,#01,#9b,#f7,#01
	db #9a,#01,#99,#01,#98,#7f,#77,#3c
	db #fe,#18,#f8,#17,#fc,#22,#ff,#f8
	db #1f,#ef,#0f,#01,#00,#27,#ff,#f9
	db #04,#01,#ff,#01,#1e,#01,#1d,#9f
	db #1d,#fc,#1d,#39,#fa,#00,#f9,#ff
	db #f3,#ee,#f4,#e3,#ec,#e7,#f2,#01
	db #1b,#33,#1a,#88,#06,#63,#ff,#18
	db #18,#71,#1e,#0d,#f8,#01,#00,#01
	db #00,#01,#ff,#01,#fe,#fd,#fc,#0f
	db #0f,#0e,#d5,#fe,#02,#fd,#fd,#0c
	db #fe,#08,#0b,#fe,#0b,#0a,#fe,#0e
	db #57,#09,#fe,#11,#08,#fe,#14,#07
	db #f0,#00,#b0,#00,#d0,#60,#ff,#01
	db #28,#01,#a7,#01,#a6,#01,#a5,#01
	db #a4,#01,#a3,#01,#a2,#01,#a1,#ff
	db #01,#a0,#9f,#2f,#58,#00,#01,#28
	db #01,#a7,#01,#a6,#01,#a5,#01,#a4
	db #ff,#01,#a3,#01,#a2,#01,#a1,#01
	db #a0,#01,#9f,#01,#9e,#01,#9d,#01
	db #9c,#fc,#8c,#1b,#fd,#0b,#01,#0f
	db #01,#11,#01,#10,#f3,#0e,#0d,#0b
	db #55,#0a,#f1,#1e,#09,#f1,#2e,#08
	db #f1,#3e,#07,#f1,#4e,#55,#06,#f1
	db #5e,#05,#f1,#6e,#04,#f1,#7e,#03
	db #f1,#8e,#40,#02,#f2,#9e,#0f,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #03,#0a,#0a,#09,#09,#08,#08,#fe
	db #09,#01,#0f,#ec,#01,#10,#01,#0f
	db #0e,#0d,#0d,#01,#00,#01,#00,#0d
	db #0f,#cf,#01,#00,#01,#00,#0f,#0e
	db #01,#00,#01,#00,#01,#ff,#01,#fe
	db #f5,#01,#fd,#01,#fc,#01,#fb,#fa
	db #f9,#09,#f5,#00,#0a,#f4,#0c,#56
	db #0b,#f4,#19,#0c,#f4,#26,#0d,#f4
	db #33,#f3,#f3,#0f,#ff,#f4,#4d,#f3
	db #40,#f3,#33,#f4,#27,#80,#00,#f3
	db #da,#01,#00,#0c,#0b,#07,#0b,#0c
	db #0d,#0e,#0f,#65,#85,#80,#80,#c0
	db #60,#d5,#60,#20,#f1,#ff,#0d,#f1
	db #0f,#0c,#f1,#1f,#0b,#f1,#2f,#55
	db #0a,#f1,#3f,#09,#f1,#4f,#08,#f1
	db #5f,#07,#f1,#6f,#7f,#06,#e0,#00
	db #80,#80,#e0,#20,#36,#00,#ea,#d4
	db #f4,#f4,#f6,#2b,#7f,#09,#f7,#36
	db #01,#00,#35,#ff,#01,#00,#01,#09
	db #01,#08,#01,#07,#f5,#01,#06,#01
	db #05,#01,#04,#f4,#02,#0d,#f4,#0f
	db #0a,#fe,#1a,#55,#0c,#f1,#1f,#0b
	db #f1,#2f,#0a,#f1,#3f,#09,#f1,#4f
	db #55,#08,#f1,#5f,#07,#f1,#6f,#06
	db #f1,#7f,#05,#f1,#8f,#40,#04,#f3
	db #9f,#0d,#ab,#f7,#00,#0c,#f6,#0a
	db #0b,#f8,#15,#08,#01,#1e,#2e,#1d
	db #15,#09,#09,#0a,#fe,#f2,#0b,#fe
	db #f5,#0c,#fe,#f8,#42,#0d,#fe,#fb
	db #0e,#0e,#0f,#0f,#fe,#fe,#0e,#f7
	db #fd,#fb,#f7,#00,#fc,#0b,#fe,#f9
	db #0b,#fc,#08,#f8,#18,#01,#04,#ff
	db #01,#23,#01,#22,#01,#21,#01,#20
	db #01,#1f,#01,#1e,#01,#1d,#01,#1c
	db #ff,#01,#1b,#01,#1a,#01,#19,#01
	db #18,#01,#17,#01,#16,#01,#15,#01
	db #14,#ff,#01,#13,#01,#12,#01,#11
	db #01,#10,#01,#0f,#01,#0e,#01,#0d
	db #01,#0c,#ff,#01,#0b,#ee,#ea,#f3
	db #04,#01,#09,#26,#08,#f3,#01,#fd
	db #fa,#f3,#11,#f5,#fd,#fd,#f3,#21
	db #fe,#f5,#f2,#30,#0b,#f1,#3f,#0a
	db #f1,#4f,#55,#09,#f1,#5f,#08,#f1
	db #6f,#07,#f1,#7f,#06,#f1,#8f,#55
	db #05,#f1,#9f,#04,#f1,#af,#03,#f1
	db #bf,#02,#f1,#cf,#56,#01,#f1,#df
	db #00,#d4,#ef,#08,#d3,#ef,#9d,#1d
	db #00,#1e,#04,#2e,#00,#01,#83,#04
	db #01,#4d,#05,#01,#4c,#08,#01,#ad
	db #08,#01,#2f,#0e,#01,#2c,#0f,#01
	db #99,#10,#01,#70,#11,#01,#ba,#11
	db #01,#41,#12,#01,#d0,#14,#01,#10
	db #15,#01,#50,#15,#ff,#ff,#ff,#ff
	db #ff,#ff,#57,#01,#5a,#57,#53,#50
	db #4c,#50,#53,#fd,#00,#00,#40,#5e
	db #f8,#01,#00,#57,#a2,#ed,#38,#83
	db #ce,#00,#19,#64,#af,#fa,#75,#7a
	db #7e,#7a,#00,#75,#71,#6c,#68,#6c
	db #71,#57,#57,#4c,#5a,#f9,#0b,#00
	db #75,#71,#f8,#1e,#00,#f6,#14,#00
	db #c0,#b9,#00,#bc,#c0,#c3,#c7,#c3
	db #c0,#bc,#b9,#6f,#57,#fb,#05,#00
	db #fc,#2b,#00,#57,#fa,#04,#00,#fd
	db #56,#00,#f5,#14,#00,#fb,#23,#00
	db #a5,#fc,#34,#00,#57,#f8,#02,#00
	db #5e,#c0,#fc,#4c,#00,#b5,#fc,#47
	db #00,#80,#f6,#64,#00,#cf,#d4,#d1
	db #cf,#cc,#ca,#c7,#1f,#ca,#cc,#cf
	db #f7,#29,#00,#fd,#12,#00,#f8,#a1
	db #00,#f4,#64,#00,#f7,#34,#00,#93
	db #f8,#52,#00,#50,#75,#f9,#71,#00
	db #75,#71,#f4,#3c,#00,#fb,#87,#00
	db #ff,#fd,#4b,#00,#f7,#79,#00,#fd
	db #62,#00,#f8,#f1,#00,#f4,#14,#00
	db #f8,#6e,#00,#f6,#0a,#00,#f9,#49
	db #00,#cf,#fd,#e8,#00,#f5,#8c,#00
	db #cf,#d1,#f9,#97,#00,#fd,#58,#00
	db #f9,#ac,#00,#f6,#c8,#00,#fd,#f5
	db #04,#01,#f6,#d3,#00,#f7,#f2,#00
	db #f5,#6e,#00,#f6,#dd,#00,#f8,#84
	db #00,#c7,#ce,#00,#00,#5f,#c0,#f8
	db #48,#00,#b5,#f5,#2c,#01,#fd,#9d
	db #00,#fa,#38,#01,#ce,#50,#00,#f5
	db #0e,#01,#d7,#f6,#7d,#01,#f8,#24
	db #01,#c0,#ce,#a0,#00,#c0,#f8,#e8
	db #00,#f4,#2b,#01,#fb,#9b,#00,#ff
	db #fc,#da,#01,#ce,#f0,#00,#f5,#ae
	db #01,#f5,#7d,#01,#f8,#23,#01,#ce
	db #40,#01,#f7,#87,#01,#f4,#8b,#00
	db #9f,#f9,#99,#00,#d1,#d4,#01,#00
	db #00,#01,#ff,#00,#01,#fe,#01,#3d
	db #fd,#02,#f6,#42,#00,#c0,#f5,#e6
	db #01,#f7,#cd,#02,#01,#fc,#01,#05
	db #0a,#05,#08,#01,#fc,#f8,#f3,#f6
	db #86,#02,#01,#f3,#f8,#c0,#f9,#ff
	db #02,#f6,#f4,#02,#35,#2e,#2b,#2e
	db #32,#35,#0f,#39,#3c,#39,#35,#01
	db #10,#00,#01,#0f,#01,#2e,#0e,#02
	db #ce,#70,#00,#ff,#f5,#2e,#01,#f5
	db #9d,#01,#f8,#a3,#00,#01,#30,#03
	db #6f,#2f,#00,#f6,#42,#01,#f5,#e6
	db #02,#f7,#cd,#03,#00,#01,#05,#01
	db #fc,#f8,#f3,#f8,#fc,#23,#01,#05
	db #f6,#86,#03,#01,#05,#0a,#f9,#ff
	db #03,#f6,#f4,#03,#00,#35,#35,#39
	db #3c,#39,#35,#32,#2e,#3f,#2b,#2e
	db #01,#10,#01,#01,#0f,#02,#2e,#0e
	db #03,#ce,#70,#01,#f5,#2e,#02,#f5
	db #fd,#01,#fc,#f8,#a3,#01,#01,#30
	db #00,#6f,#2f,#01,#f6,#42,#02,#f5
	db #e6,#03,#f7,#cd,#00,#01,#f3,#00
	db #f8,#fc,#01,#05,#0a,#05,#01,#fc
	db #8c,#f6,#86,#00,#01,#fc,#f8,#f9
	db #ff,#00,#f6,#f4,#00,#35,#35,#00
	db #32,#2e,#2b,#2e,#32,#35,#39,#3c
	db #a8,#b0,#10,#02,#cf,#f8,#f8,#02
	db #cc,#f6,#f6,#02,#cf,#1a,#65,#01
	db #b0,#fb,#46,#91,#dc,#27,#72,#f6
	db #82,#03,#e0,#f6,#96,#03,#f6,#22
	db #00,#f6,#94,#01,#27,#2c,#29,#27
	db #24,#05,#22,#1f,#22,#24,#27,#f7
	db #d7,#00,#cc,#f6,#d6,#00,#eb,#f4
	db #94,#01,#f8,#64,#01,#f6,#76,#01
	db #27,#fc,#cc,#01,#29,#fc,#c7,#01
	db #f6,#e4,#01,#00,#5c,#57,#55,#57
	db #5a,#5c,#5f,#61,#3f,#5f,#5c,#f7
	db #a9,#01,#fd,#92,#01,#f8,#21,#02
	db #f5,#e4,#01,#f6,#b3,#01,#f7,#d2
	db #01,#ff,#f6,#c2,#00,#f5,#bc,#01
	db #fa,#06,#02,#fd,#cb,#01,#fd,#88
	db #01,#f9,#dc,#01,#f5,#76,#01,#f6
	db #35,#02,#f9,#f7,#e3,#02,#f6,#8a
	db #01,#f9,#c9,#01,#fd,#68,#02,#f5
	db #0c,#02,#5c,#5a,#f9,#17,#02,#5f
	db #cf,#f8,#4a,#02,#d1,#f6,#48,#02
	db #f4,#34,#02,#f7,#54,#02,#ed,#d7
	db #00,#f5,#5c,#02,#af,#f8,#04,#02
	db #22,#ce,#80,#01,#27,#f8,#c8,#01
	db #f4,#ab,#02,#fd,#1d,#02,#fa,#b8
	db #02,#ff,#ce,#d0,#01,#f5,#8e,#02
	db #f5,#fd,#02,#f8,#03,#02,#ce,#20
	db #02,#f7,#67,#02,#f4,#0b,#02,#fb
	db #1b,#02,#fd,#fc,#5a,#03,#ce,#70
	db #02,#f5,#2e,#03,#f5,#5d,#02,#f8
	db #a3,#02,#ce,#c0,#02,#27,#f8,#08
	db #03,#67,#1f,#f4,#0c,#02,#fa,#1a
	db #02,#5a,#57,#01,#80,#01,#bf,#7f
	db #02,#f6,#42,#03,#c0,#f5,#e6,#00
	db #f7,#cd,#01,#35,#39,#3c,#39,#35
	db #32,#09,#2e,#2b,#2e,#32,#f6,#86
	db #01,#35,#32,#f8,#fe,#01,#80,#f6
	db #f4,#01,#8a,#83,#86,#8a,#8d,#91
	db #8d,#10,#8a,#86,#83,#b0,#10,#03
	db #57,#5a,#5e,#5a,#01,#57,#53,#50
	db #4c,#50,#53,#57,#f7,#80,#02,#00
	db #57,#a2,#ed,#38,#83,#ce,#19,#64
	db #00,#af,#fa,#75,#71,#75,#7a,#7e
	db #7a,#06,#75,#71,#6c,#68,#57,#fd
	db #88,#02,#fa,#8c,#02,#75,#35,#68
	db #6c,#f9,#9f,#02,#f6,#94,#02,#c0
	db #f8,#50,#02,#c0,#f9,#84,#02,#fb
	db #fc,#ac,#02,#f7,#d0,#02,#f5,#94
	db #02,#fb,#a3,#02,#fc,#b4,#02,#57
	db #f7,#82,#02,#f6,#72,#01,#d7,#f6
	db #e4,#02,#f6,#fa,#00,#57,#f8,#aa
	db #02,#4c,#f6,#a8,#02,#f5,#e4,#02
	db #f6,#b3,#02,#cd,#f7,#d2,#02,#f8
	db #f0,#02,#7e,#7a,#f5,#bc,#00,#00
	db #00,#00,#8a,#8a,#00,#00,#00,#00
	db #00,#04,#55,#04,#04,#54,#ac,#05
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#5c,#89,#c9,#5d
	db #ef,#0a,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
; #1362
; ld hl,#2cd2
; call #690c	; init
;
; #06c7
; ld bc,#7fc5
; out (c),c
; ld a,(#0a1a)
; or a
; call z,#690f
;
;
.init_music
;
	ld hl,l2cd2
	jp real_init_music
;
.music_info
	db "Ecole Buissonniere - Cheat Part (2000)(Overlanders)()",0
	db "AYC",0

	read "music_end.asm"
