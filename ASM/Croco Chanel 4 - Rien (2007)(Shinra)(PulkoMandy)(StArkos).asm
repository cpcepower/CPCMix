; Music of Croco Chanel 4 - Rien (2007)(Shinra)(PulkoMandy)(StArkos)
; Ripped by Megachur the 26/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CROCOC4R.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #5000

	read "music_header.asm"

.l5000
	db #53,#4b,#31,#30,#00,#50,#01,#32
	db #00,#2e,#50,#37,#50,#33,#51,#45
	db #51,#2b,#50,#36,#50,#2d,#51,#42
	db #51,#03,#c0,#00,#00,#03,#18,#00
	db #27,#18,#00,#01,#c2,#01,#01,#15
	db #c0,#00,#00,#c0,#00,#00,#5f,#19
	db #46,#18,#5f,#0a,#3a,#24,#00,#08
	db #53,#38,#53,#4b,#53,#6e,#53,#9d
	db #53,#4b,#53,#b8,#53,#f8,#53,#1a
	db #54,#49,#54,#7d,#54,#bd,#54,#d0
	db #54,#f3,#54,#33,#55,#4b,#55,#6f
	db #55,#ad,#55,#b5,#55,#e1,#55,#21
	db #56,#37,#56,#5d,#56,#99,#56,#a9
	db #56,#cc,#56,#f9,#56,#0d,#57,#24
	db #57,#5c,#57,#64,#57,#76,#57,#b6
	db #57,#be,#57,#e7,#57,#21,#58,#3d
	db #58,#4c,#58,#8c,#58,#9c,#58,#b7
	db #58,#eb,#58,#ff,#58,#07,#59,#23
	db #59,#4b,#55,#6f,#55,#ad,#55,#b5
	db #55,#e1,#55,#21,#56,#37,#56,#5d
	db #56,#99,#56,#a9,#56,#cc,#56,#f9
	db #56,#0d,#57,#24,#57,#5c,#57,#64
	db #57,#76,#57,#b6,#57,#be,#57,#e7
	db #57,#21,#58,#3d,#58,#4c,#58,#8c
	db #58,#9c,#58,#b7,#58,#eb,#58,#ff
	db #58,#07,#59,#23,#59,#49,#54,#7d
	db #54,#bd,#54,#d0,#54,#35,#59,#33
	db #55,#59,#59,#68,#59,#78,#59,#4b
	db #55,#6f,#55,#ad,#55,#b5,#55,#e1
	db #55,#21,#56,#37,#56,#5d,#56,#99
	db #56,#a9,#56,#cc,#56,#f9,#56,#0d
	db #57,#24,#57,#5c,#57,#64,#57,#76
	db #57,#b6,#57,#be,#57,#e7,#57,#21
	db #58,#3d,#58,#4c,#58,#8c,#58,#9c
	db #58,#b7,#58,#eb,#58,#ff,#58,#07
	db #59,#23,#59,#9c,#58,#b7,#58,#eb
	db #58,#ff,#58,#07,#59,#23,#59,#7a
	db #59,#8a,#59,#9a,#59,#aa,#59,#aa
	db #59,#aa,#59,#94,#ab,#59,#01,#00
	db #00,#0e,#ab,#59,#46,#00,#00,#c0
	db #ab,#59,#00,#ab,#59,#75,#51,#7f
	db #51,#8b,#51,#9b,#51,#a4,#51,#ac
	db #51,#b4,#51,#c4,#51,#d4,#51,#de
	db #51,#f0,#51,#02,#52,#14,#52,#26
	db #52,#38,#52,#4a,#52,#5c,#52,#78
	db #52,#8e,#52,#aa,#52,#bc,#52,#d2
	db #52,#e4,#52,#f6,#52,#7c,#51,#7f
	db #51,#ff,#37,#00,#00,#00,#00,#8a
	db #51,#8b,#51,#00,#37,#00,#0f,#0e
	db #0d,#0c,#0b,#98,#51,#9b,#51,#02
	db #37,#00,#0f,#2e,#07,#0d,#2c,#07
	db #0b,#2b,#07,#7c,#51,#a4,#51,#03
	db #b7,#00,#1f,#01,#ab,#51,#ac,#51
	db #00,#37,#00,#0b,#b3,#51,#b4,#51
	db #00,#37,#00,#0f,#7c,#51,#c4,#51
	db #02,#b7,#00,#0f,#2e,#0c,#0d,#2c
	db #0c,#0b,#2b,#0c,#d1,#51,#d4,#51
	db #02,#37,#00,#0f,#2e,#05,#0d,#2c
	db #05,#0b,#2b,#05,#7c,#51,#de,#51
	db #08,#b7,#01,#82,#0d,#0c,#eb,#51
	db #f0,#51,#02,#37,#00,#0f,#2e,#03
	db #2d,#08,#0c,#2b,#03,#2b,#08,#0b
	db #fd,#51,#02,#52,#02,#37,#00,#0f
	db #2e,#05,#2d,#08,#0c,#2b,#05,#2b
	db #08,#0b,#0f,#52,#14,#52,#02,#37
	db #00,#0f,#2e,#03,#2d,#07,#0c,#2b
	db #03,#2b,#07,#0b,#21,#52,#26,#52
	db #02,#37,#00,#0f,#2e,#04,#2d,#07
	db #0c,#2b,#04,#2b,#07,#0b,#33,#52
	db #38,#52,#02,#37,#00,#0f,#2e,#06
	db #2d,#09,#0c,#2b,#06,#2b,#09,#0b
	db #45,#52,#4a,#52,#02,#37,#00,#0f
	db #2e,#05,#2d,#09,#0c,#2b,#05,#2b
	db #09,#0b,#57,#52,#5c,#52,#02,#37
	db #00,#0f,#2e,#03,#2d,#09,#0c,#2b
	db #03,#2b,#09,#0b,#7c,#51,#78,#52
	db #01,#b7,#00,#4f,#03,#00,#4e,#02
	db #00,#4d,#01,#00,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #7c,#51,#8e,#52,#01,#b7,#00,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#7c,#51
	db #aa,#52,#02,#b7,#00,#4f,#03,#00
	db #4e,#02,#00,#4d,#01,#00,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
	db #02,#01,#b7,#52,#bc,#52,#02,#37
	db #00,#0f,#2e,#06,#2d,#08,#0c,#2b
	db #06,#2b,#08,#0b,#7c,#51,#d2,#52
	db #02,#b7,#00,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
	db #02,#01,#df,#52,#e4,#52,#02,#37
	db #00,#0f,#2e,#02,#2d,#05,#0c,#2b
	db #02,#2b,#05,#0b,#f1,#52,#f6,#52
	db #02,#37,#00,#0f,#2e,#04,#2d,#09
	db #0c,#2b,#04,#2b,#09,#0b,#03,#53
	db #08,#53,#02,#37,#00,#0f,#2e,#02
	db #2d,#06,#0c,#2b,#02,#2b,#06,#0b
	db #56,#81,#01,#ce,#ca,#ce,#56,#80
	db #01,#ce,#61,#ce,#57,#ce,#61,#ce
	db #65,#ce,#57,#ce,#65,#ce,#69,#ce
	db #57,#ce,#69,#ce,#6b,#d0,#69,#6b
	db #69,#65,#d2,#61,#d0,#ca,#ce,#5e
	db #80,#01,#61,#5f,#5b,#d2,#57,#c2
	db #48,#81,#02,#fa,#64,#80,#01,#d0
	db #61,#65,#61,#5f,#d2,#5b,#ce,#48
	db #80,#02,#c2,#90,#81,#03,#3e,#80
	db #01,#e0,#90,#80,#03,#3e,#80,#04
	db #e0,#90,#80,#03,#3e,#80,#04,#d4
	db #90,#80,#03,#3e,#80,#04,#d4,#90
	db #80,#03,#3e,#80,#04,#c2,#c4,#00
	db #ce,#ca,#ce,#56,#80,#01,#ce,#61
	db #ce,#57,#ce,#61,#ce,#65,#ce,#57
	db #ce,#65,#ce,#69,#ce,#57,#ce,#69
	db #ce,#6b,#d2,#69,#ce,#61,#ce,#65
	db #ce,#5f,#ce,#61,#ce,#5b,#ce,#5f
	db #ce,#61,#d2,#ca,#c2,#c4,#00,#e2
	db #5e,#80,#01,#ce,#57,#ce,#5f,#ce
	db #61,#ce,#57,#ce,#61,#ce,#65,#d2
	db #61,#ce,#5b,#ce,#56,#80,#02,#c2
	db #64,#80,#05,#ce,#ca,#68,#80,#05
	db #ce,#ca,#6a,#80,#05,#ce,#ca,#6c
	db #80,#05,#ce,#ca,#6e,#80,#05,#ce
	db #ca,#72,#80,#05,#ce,#ca,#76,#80
	db #05,#ce,#ca,#78,#80,#05,#ce,#ca
	db #7c,#80,#05,#d0,#ca,#d2,#7c,#80
	db #05,#ca,#7c,#80,#05,#ca,#7c,#80
	db #05,#ca,#7c,#80,#05,#d4,#ca,#c2
	db #4c,#80,#06,#d0,#51,#d0,#53,#d0
	db #55,#d0,#57,#d0,#5b,#d0,#5f,#d0
	db #61,#d0,#7d,#d4,#ca,#ce,#64,#80
	db #07,#ce,#65,#ce,#65,#ce,#65,#d0
	db #ca,#c2,#48,#80,#03,#d0,#68,#80
	db #06,#d0,#6b,#d0,#6d,#d0,#6f,#d0
	db #73,#d0,#77,#d0,#79,#d0,#48,#80
	db #03,#d6,#49,#7c,#80,#06,#ce,#7d
	db #ce,#7d,#48,#80,#03,#7c,#80,#06
	db #d4,#60,#80,#03,#ce,#61,#ce,#61
	db #c2,#70,#c0,#01,#fd,#d2,#ca,#ce
	db #6e,#80,#01,#ce,#6b,#ce,#69,#ce
	db #65,#d0,#ca,#d0,#70,#c0,#01,#fd
	db #d0,#ca,#d0,#6c,#c0,#01,#fd,#d2
	db #ca,#ce,#6a,#80,#01,#ce,#69,#ce
	db #65,#ce,#61,#d2,#ca,#ce,#6c,#c0
	db #01,#fd,#d2,#ca,#c2,#3a,#80,#08
	db #d2,#42,#80,#09,#ce,#38,#80,#08
	db #d2,#42,#80,#09,#ce,#38,#80,#08
	db #d2,#46,#80,#09,#ce,#2a,#80,#08
	db #d2,#46,#80,#09,#ce,#30,#80,#08
	db #d2,#46,#80,#0a,#ce,#34,#80,#08
	db #d2,#46,#80,#0a,#ce,#34,#80,#08
	db #d2,#42,#80,#0b,#ce,#26,#80,#08
	db #d2,#42,#80,#0b,#c2,#52,#80,#0c
	db #e0,#ca,#52,#80,#0d,#e0,#ca,#50
	db #80,#0b,#e0,#ca,#50,#80,#09,#c2
	db #80,#c1,#01,#fc,#d2,#ca,#ce,#82
	db #80,#01,#ce,#81,#ce,#7d,#ce,#79
	db #d2,#77,#ce,#73,#d2,#77,#ce,#79
	db #d6,#79,#ce,#81,#ce,#87,#ce,#91
	db #d6,#ca,#c2,#30,#80,#08,#d2,#42
	db #80,#09,#ce,#34,#80,#08,#d2,#42
	db #80,#09,#ce,#34,#80,#08,#d2,#3e
	db #80,#0c,#ce,#26,#80,#08,#d2,#3e
	db #80,#0c,#ce,#26,#80,#08,#d2,#3e
	db #80,#0a,#ce,#30,#80,#08,#d2,#3e
	db #80,#0a,#ce,#26,#80,#08,#d2,#3e
	db #80,#0a,#ce,#30,#80,#08,#d2,#3e
	db #80,#0a,#c2,#48,#80,#0e,#e2,#4c
	db #80,#0f,#e2,#50,#80,#09,#d6,#48
	db #80,#05,#ce,#51,#ce,#57,#ce,#61
	db #ce,#ca,#c2,#80,#80,#10,#d6,#86
	db #80,#11,#d6,#90,#80,#12,#e2,#87
	db #d2,#c6,#ff,#c6,#fe,#8a,#80,#04
	db #d4,#c6,#03,#86,#01,#d0,#c4,#01
	db #d0,#c4,#02,#d0,#c4,#03,#c2,#ca
	db #d2,#38,#80,#09,#ce,#30,#80,#08
	db #d2,#38,#80,#09,#ce,#26,#80,#08
	db #d2,#38,#80,#09,#ce,#30,#80,#08
	db #d2,#38,#80,#09,#ce,#26,#80,#08
	db #d2,#34,#80,#0e,#ce,#34,#80,#08
	db #d2,#34,#80,#0e,#ce,#26,#80,#08
	db #d2,#34,#80,#0e,#ce,#34,#80,#08
	db #d2,#34,#80,#0e,#c2,#48,#80,#0c
	db #fa,#46,#80,#13,#c2,#ca,#d2,#78
	db #81,#11,#ce,#80,#80,#10,#d2,#86
	db #80,#11,#ce,#90,#80,#14,#d6,#8e
	db #80,#12,#d0,#c6,#04,#8a,#80,#04
	db #ce,#86,#80,#14,#e2,#76,#80,#09
	db #d2,#77,#ce,#77,#ce,#77,#ce,#77
	db #c2,#26,#80,#08,#d2,#34,#80,#15
	db #ce,#30,#80,#08,#d2,#34,#80,#15
	db #ce,#2e,#80,#08,#d2,#38,#80,#0a
	db #ce,#2a,#80,#08,#d2,#38,#80,#0a
	db #ce,#2a,#80,#08,#d2,#3a,#80,#16
	db #ce,#34,#80,#08,#d2,#3a,#80,#16
	db #ce,#34,#80,#08,#d2,#3a,#80,#17
	db #ce,#26,#80,#08,#d2,#3a,#80,#17
	db #c2,#48,#80,#0c,#e2,#48,#80,#16
	db #e2,#49,#e2,#5e,#80,#09,#d2,#5f
	db #ce,#5f,#ce,#5f,#ce,#5f,#c2,#86
	db #80,#14,#c6,#fb,#d0,#8a,#80,#11
	db #ce,#8a,#80,#14,#d2,#8b,#ce,#8b
	db #d2,#91,#ce,#8f,#d2,#8a,#80,#01
	db #ce,#86,#80,#14,#d6,#68,#80,#05
	db #d6,#6b,#d6,#6f,#c2,#3e,#80,#08
	db #d2,#3d,#ce,#3b,#d2,#3a,#80,#16
	db #ce,#3a,#80,#08,#d2,#3a,#80,#17
	db #ce,#30,#80,#08,#d2,#3a,#80,#17
	db #ce,#3a,#80,#08,#d2,#3a,#80,#0c
	db #ce,#38,#80,#08,#d2,#3a,#80,#0c
	db #ce,#2e,#80,#08,#d2,#42,#80,#09
	db #ce,#38,#80,#08,#d2,#42,#80,#09
	db #c2,#48,#80,#0e,#fa,#46,#80,#0a
	db #d6,#50,#80,#05,#d6,#53,#d6,#57
	db #c2,#86,#80,#14,#c6,#fb,#d0,#87
	db #ce,#c6,#fb,#d2,#87,#ce,#7d,#d6
	db #81,#d6,#79,#d6,#80,#80,#09,#ce
	db #81,#ce,#81,#ce,#81,#d6,#ca,#d2
	db #82,#80,#01,#85,#d4,#42,#80,#09
	db #ce,#30,#80,#08,#d2,#42,#80,#09
	db #ce,#26,#80,#08,#d2,#38,#80,#0d
	db #ce,#30,#80,#08,#d6,#68,#80,#09
	db #d2,#3e,#80,#0e,#ce,#68,#80,#09
	db #ce,#69,#ce,#69,#ce,#69,#d6,#ca
	db #c2,#48,#81,#0e,#e2,#4d,#e2,#50
	db #80,#09,#d6,#51,#ce,#51,#ce,#51
	db #ce,#51,#d6,#ca,#c2,#86,#80,#01
	db #89,#d2,#89,#ce,#89,#d2,#89,#e4
	db #83,#85,#87,#d2,#87,#ce,#87,#d2
	db #87,#de,#7f,#81,#3a,#80,#08,#d2
	db #58,#80,#16,#ce,#30,#80,#08,#d2
	db #58,#80,#16,#ce,#60,#80,#0a,#d6
	db #26,#80,#08,#d2,#58,#80,#0a,#ce
	db #30,#80,#08,#d2,#56,#80,#0e,#ce
	db #3a,#80,#08,#d2,#56,#80,#0e,#ce
	db #60,#80,#0c,#d6,#22,#80,#08,#d2
	db #56,#80,#0e,#c2,#48,#80,#0a,#fa
	db #48,#80,#0c,#c2,#82,#80,#01,#d6
	db #83,#d6,#83,#d6,#7d,#d0,#7f,#81
	db #f0,#ca,#d6,#7c,#80,#01,#3a,#80
	db #08,#d2,#52,#80,#0f,#ce,#30,#80
	db #08,#d2,#52,#80,#0f,#ce,#26,#80
	db #08,#d2,#58,#80,#0d,#ce,#30,#80
	db #08,#d2,#58,#80,#0d,#ce,#30,#80
	db #08,#d2,#56,#80,#0e,#ce,#2a,#80
	db #08,#d2,#56,#80,#0e,#ce,#2a,#80
	db #08,#d2,#60,#80,#0c,#ce,#38,#80
	db #08,#d2,#60,#80,#0c,#c2,#3a,#80
	db #0d,#fa,#48,#80,#0c,#c2,#7a,#80
	db #01,#79,#d0,#79,#ce,#91,#d2,#8b
	db #8d,#8f,#d6,#87,#d0,#89,#8b,#ce
	db #5a,#80,#0b,#d2,#73,#ce,#73,#ce
	db #73,#ce,#73,#ce,#ca,#d0,#88,#80
	db #01,#8b,#ce,#8f,#d0,#91,#c2,#34
	db #80,#08,#d2,#3e,#80,#0e,#ce,#34
	db #80,#08,#d2,#3e,#80,#0e,#ce,#26
	db #80,#08,#d2,#48,#80,#0c,#ce,#26
	db #80,#08,#d2,#48,#80,#0c,#ce,#72
	db #80,#0b,#d2,#5b,#ce,#5b,#ce,#5b
	db #ce,#5b,#ce,#30,#80,#08,#d2,#3e
	db #80,#16,#ce,#ca,#d2,#3e,#80,#16
	db #c2,#30,#80,#0c,#d6,#a8,#80,#11
	db #d6,#a7,#d6,#9f,#d6,#30,#80,#16
	db #e2,#2e,#80,#0a,#d0,#a2,#80,#11
	db #d0,#a7,#d0,#a9,#c2,#92,#80,#01
	db #95,#d4,#91,#d6,#8d,#8f,#ce,#8d
	db #8b,#da,#87,#c2,#34,#80,#08,#d2
	db #42,#80,#0f,#ce,#3e,#80,#08,#d2
	db #42,#80,#0f,#ce,#3a,#80,#08,#d2
	db #42,#80,#0f,#ce,#38,#80,#08,#d2
	db #42,#80,#0f,#ce,#34,#80,#08,#d2
	db #46,#80,#09,#ce,#30,#80,#08,#d2
	db #46,#80,#09,#ce,#26,#80,#08,#d2
	db #46,#80,#09,#ce,#30,#80,#08,#d2
	db #46,#80,#09,#c2,#ac,#80,#11,#d6
	db #a9,#d6,#a7,#d6,#a3,#d6,#9f,#d2
	db #46,#80,#09,#c2,#90,#81,#01,#d2
	db #8f,#d2,#91,#d2,#87,#d2,#81,#d2
	db #91,#d2,#8f,#e8,#c4,#00,#d0,#86
	db #01,#d0,#ca,#86,#80,#01,#c2,#30
	db #80,#08,#d2,#35,#ce,#39,#d2,#3e
	db #80,#0e,#ce,#2e,#80,#08,#d2,#3e
	db #80,#0e,#ce,#20,#80,#08,#d2,#3e
	db #80,#0e,#ce,#ca,#d2,#46,#80,#0a
	db #ce,#22,#80,#08,#d2,#46,#80,#0a
	db #ce,#ca,#d2,#46,#80,#0a,#ce,#26
	db #80,#08,#c2,#30,#80,#0c,#d6,#86
	db #80,#14,#d6,#9f,#d6,#9b,#d6,#99
	db #d6,#95,#d2,#91,#ce,#87,#c2,#8a
	db #80,#01,#e2,#8f,#e2,#91,#c2,#5a
	db #80,#09,#d6,#30,#80,#08,#d6,#5e
	db #80,#09,#d6,#30,#80,#08,#d6,#56
	db #80,#0e,#d6,#30,#80,#08,#d6,#27
	db #d6,#31,#c2,#48,#80,#0e,#d4,#ca
	db #d8,#4c,#80,#0e,#d4,#ca,#d8,#50
	db #80,#09,#e0,#ca,#c2,#3e,#80,#08
	db #d2,#42,#80,#09,#ce,#30,#80,#08
	db #d2,#42,#80,#09,#ce,#2c,#80,#08
	db #d2,#3e,#80,#0c,#ce,#28,#80,#08
	db #d2,#3e,#80,#0c,#ce,#28,#80,#08
	db #c2,#52,#80,#01,#55,#59,#5d,#63
	db #67,#6b,#6d,#71,#75,#79,#7b,#7f
	db #32,#80,#08,#d2,#3c,#80,#0d,#ce
	db #40,#80,#08,#d2,#3c,#80,#0d,#c2
	db #ca,#c2,#52,#80,#09,#ce,#53,#ce
	db #53,#ce,#53,#ce,#ca,#d2,#32,#80
	db #08,#c2,#3a,#80,#09,#ce,#3b,#ce
	db #3b,#ce,#3b,#ce,#ca,#d2,#4a,#80
	db #11,#c2,#6a,#80,#09,#ce,#6b,#ce
	db #6b,#ce,#6b,#ce,#ca,#d2,#32,#80
	db #11,#c2,#ca,#ff


	org #59ac
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
	db #00,#00,#00,#00
; #5a00
.l5a00
	jp l5a0a	; init music interrupt
	jp l5a2e	; stop music interrupt
.l5a09 equ $ + 3
.l5a08 equ $ + 2
	db #00,#5a,#00,#00
.l5a0a
	call l62de
	ld hl,l5a54
.l5a11 equ $ + 1
	ld a,#00
.l5a12
	cp (hl)
	jr z,l5a19
	inc hl
	inc hl
	jr l5a12
.l5a19
	inc hl
	ld a,(hl)
	ld (l5a4d),a
	xor a
	ld (l5a43),a
	ld hl,l5a37
	ld bc,#8100
	ld de,l5a41
	jp #bce0
.l5a2e
	ld hl,l5a37
	call #bce6
	jp l62b9
.l5a37
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
;
.play_music
.l5a41
;
	di
.l5a43 equ $ + 1
	ld a,#00
	sub #01
	jr c,l5a4c
	ld (l5a43),a
	ret
.l5a4d equ $ + 1
.l5a4c
	ld a,#00
	ld (l5a43),a
	jp l5a60
.l5a54
	dec c
	ld de,#0b19
	ld (#6405),a
	ld (bc),a
	sub (hl)
	ld bc,#002c
.l5a60
	xor a
	ld (l5a08),a
	ld (l6297),a
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
.l5a71 equ $ + 1
	ld a,#00
.l5a73 equ $ + 1
	cp #00
	jr z,l5a7d
	inc a
	ld (l5a71),a
	jp l5d0c
.l5a7d
	xor a
	ld (l5a71),a
.l5a81
	or a
	jp nc,l5b63
	ld (l5b8b),a
	ld (l5bf6),a
	ld (l5c61),a
	ld a,#b7
	ld (l5a81),a
.l5a94 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l5aca
.l5a9a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l5ac7
	ld b,a
	and #1f
	bit 4,a
	jr z,l5aab
	or #e0
.l5aab
	ld (l5b98),a
	rl b
	rl b
	jr nc,l5ab9
	ld a,(hl)
	ld (l5c03),a
	inc hl
.l5ab9
	rl b
	jr nc,l5ac2
	ld a,(hl)
	ld (l5c6e),a
	inc hl
.l5ac2
	ld (l5a9a),hl
	jr l5acd
.l5ac7
	ld (l5a9a),hl
.l5aca
	ld (l5a94),a
.l5ace equ $ + 1
.l5acd
	ld a,#00
	sub #01
	jr c,l5ada
	ld (l5ace),a
.l5ad7 equ $ + 1
	ld a,#00
	jr l5af5
.l5adb equ $ + 1
.l5ada
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l5ae8
	ld (l5adb),hl
	jr l5af5
.l5ae8
	ld (l5ad7),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l5adb),hl
	ld (l5ace),a
	ld a,b
.l5af5
	ld (l5ccc),a
.l5af9 equ $ + 1
	ld hl,#0000
	ld de,l5b91
	ldi
	ldi
	ld de,l5bfc
	ldi
	ldi
	ld de,l5c67
	ldi
	ldi
	ld (l5af9),hl
.l5b14 equ $ + 1
	ld a,#00
	or a
	jr nz,l5b26
.l5b19 equ $ + 1
	ld a,#00
	sub #01
	jr c,l5b34
	ld (l5b19),a
.l5b22 equ $ + 1
	ld hl,#0000
	jr l5b6c
.l5b27 equ $ + 1
.l5b26
	ld a,#00
	sub #01
	jr c,l5b34
	ld (l5b27),a
	ld hl,(l5b35)
	jr l5b59
.l5b35 equ $ + 1
.l5b34
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l5b51
	ld (l5b19),a
	xor a
	ld (l5b14),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l5b35),hl
	ex de,hl
	ld (l5b22),hl
	jr l5b6c
.l5b51
	ld (l5b27),a
	ld a,#01
	ld (l5b14),a
.l5b59
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l5b35),hl
	ex de,hl
	jr l5b6c
.l5b64 equ $ + 1
.l5b63
	ld a,#00
	sub #01
	jr nc,l5b87
.l5b6a equ $ + 1
	ld hl,#0000
.l5b6c
	ld a,(hl)
	inc hl
	srl a
	jr c,l5b84
	srl a
	jr c,l5b7b
	ld (l5a73),a
	jr l5b83
.l5b7b
	ld (l5a08),a
.l5b7f equ $ + 1
	ld a,#01
	ld (l5a09),a
.l5b83
	xor a
.l5b84
	ld (l5b6a),hl
.l5b87
	ld (l5b64),a
.l5b8b equ $ + 1
	ld a,#00
	sub #01
	jr nc,l5bf2
.l5b91 equ $ + 1
	ld hl,#0000
.l5b94 equ $ + 1
	ld bc,#0100
.l5b98 equ $ + 2
.l5b97 equ $ + 1
	ld de,#0000
.l5b9b equ $ + 2
	ld lx,#00
	call l5e09
	ld a,lx
	ld (l5b9b),a
	ld (l5d16),hl
	exx
	ld (l5b91),hl
	ld a,c
	ld (l5b94),a
	ld (l5d10),a
	xor a
	or hy
	jr nz,l5bf0
	ld (l5d33),a
	ld d,a
	ld a,e
	ld (l5b97),a
	ld l,d
	ld h,l
	ld (l5d13),hl
.l5bc5 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l5d44
	ldi
	ldi
	ld de,l5d3c
	ldi
	ldi
	ld de,l5d35
	ldi
	ld de,l5d46
	ldi
	ld a,(hl)
	inc hl
	ld (l5d25),hl
	ld hl,l6297
	or (hl)
	ld (hl),a
.l5bf0
	ld a,ly
.l5bf2
	ld (l5b8b),a
.l5bf6 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l5c5d
.l5bfc equ $ + 1
	ld hl,#0000
.l5bff equ $ + 1
	ld bc,#0200
.l5c03 equ $ + 2
.l5c02 equ $ + 1
	ld de,#0000
.l5c06 equ $ + 2
	ld lx,#00
	call l5e09
	ld a,lx
	ld (l5c06),a
	ld (l5d67),hl
	exx
	ld (l5bfc),hl
	ld a,c
	ld (l5bff),a
	ld (l5d61),a
	xor a
	or hy
	jr nz,l5c5b
	ld (l5d84),a
	ld d,a
	ld a,e
	ld (l5c02),a
	ld l,d
	ld h,l
	ld (l5d64),hl
.l5c30 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l5d95
	ldi
	ldi
	ld de,l5d8d
	ldi
	ldi
	ld de,l5d86
	ldi
	ld de,l5d97
	ldi
	ld a,(hl)
	inc hl
	ld (l5d76),hl
	ld hl,l6297
	or (hl)
	ld (hl),a
.l5c5b
	ld a,ly
.l5c5d
	ld (l5bf6),a
.l5c61 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l5cc8
.l5c67 equ $ + 1
	ld hl,#0000
.l5c6a equ $ + 1
	ld bc,#0300
.l5c6e equ $ + 2
.l5c6d equ $ + 1
	ld de,#0000
.l5c71 equ $ + 2
	ld lx,#00
	call l5e09
	ld a,lx
	ld (l5c71),a
	ld (l5db8),hl
	exx
	ld (l5c67),hl
	ld a,c
	ld (l5c6a),a
	ld (l5db2),a
	xor a
	or hy
	jr nz,l5cc6
	ld (l5dd5),a
	ld d,a
	ld a,e
	ld (l5c6d),a
	ld l,d
	ld h,l
	ld (l5db5),hl
.l5c9b equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l5de6
	ldi
	ldi
	ld de,l5dde
	ldi
	ldi
	ld de,l5dd7
	ldi
	ld de,l5de8
	ldi
	ld a,(hl)
	inc hl
	ld (l5dc7),hl
	ld hl,l6297
	or (hl)
	ld (hl),a
.l5cc6
	ld a,ly
.l5cc8
	ld (l5c61),a
.l5ccc equ $ + 1
	ld a,#00
	sub #01
	jr c,l5cd6
	ld (l5ccc),a
	jr l5d0c
.l5cd6
	ld a,#37
	ld (l5a81),a
	ld hl,(l5af9)
.l5cdf equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l5d0c
	ld (l5a94),a
	ld (l5ace),a
	ld (l5b64),a
.l5cf0 equ $ + 1
	ld hl,#0000
	ld (l5a9a),hl
.l5cf6 equ $ + 1
	ld hl,#0000
	ld (l5adb),hl
.l5cfc equ $ + 1
	ld hl,#0000
	ld (l5af9),hl
.l5d02 equ $ + 1
	ld hl,#0000
	ld (l5b35),hl
.l5d08 equ $ + 1
	ld a,#00
	ld (l5b14),a
.l5d0c
	ld hl,l6297
.l5d10 equ $ + 1
	ld d,#00
	exx
.l5d13 equ $ + 1
	ld hl,#0000
.l5d16 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l5d13),hl
	ld (l5f44),hl
	ld a,(l5b9b)
	ld lx,a
.l5d25 equ $ + 1
	ld hl,#0000
	ld iy,l6132
	ld a,(l5d33)
	call l5e9e
	ex de,hl
.l5d33 equ $ + 1
	ld a,#00
.l5d35 equ $ + 1
	cp #00
	jr z,l5d3b
	inc a
	jr l5d58
.l5d3c equ $ + 1
.l5d3b
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l5d54
.l5d44 equ $ + 1
	ld de,#0000
.l5d46
	or a
	jr c,l5d54
.l5d4a equ $ + 1
	ld hl,#0000
	ld (l5d3c),hl
	dec a
	ld (l5d35),a
	inc a
.l5d54
	ld (l5d25),de
.l5d58
	ld (l5d33),a
	ld a,hx
	ld (l5e05),a
.l5d61 equ $ + 1
	ld d,#00
	exx
.l5d64 equ $ + 1
	ld hl,#0000
.l5d67 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l5d64),hl
	ld (l5f44),hl
	ld a,(l5c06)
	ld lx,a
.l5d76 equ $ + 1
	ld hl,#0000
	ld iy,l6183
	ld a,(l5d84)
	call l5e9e
	ex de,hl
.l5d84 equ $ + 1
	ld a,#00
.l5d86 equ $ + 1
	cp #00
	jr z,l5d8c
	inc a
	jr l5da9
.l5d8d equ $ + 1
.l5d8c
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l5da5
.l5d95 equ $ + 1
	ld de,#0000
.l5d97
	or a
	jr c,l5da5
.l5d9b equ $ + 1
	ld hl,#0000
	ld (l5d8d),hl
	dec a
	ld (l5d86),a
	inc a
.l5da5
	ld (l5d76),de
.l5da9
	ld (l5d84),a
	ld a,hx
	ld (l5e02),a
.l5db2 equ $ + 1
	ld d,#00
	exx
.l5db5 equ $ + 1
	ld hl,#0000
.l5db8 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l5db5),hl
	ld (l5f44),hl
	ld a,(l5c71)
	ld lx,a
.l5dc7 equ $ + 1
	ld hl,#0000
	ld iy,l61d4
	ld a,(l5dd5)
	call l5e9e
	ex de,hl
.l5dd5 equ $ + 1
	ld a,#00
.l5dd7 equ $ + 1
	cp #00
	jr z,l5ddd
	inc a
	jr l5dfa
.l5dde equ $ + 1
.l5ddd
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l5df6
.l5de6 equ $ + 1
	ld de,#0000
.l5de8
	or a
	jr c,l5df6
.l5dec equ $ + 1
	ld hl,#0000
	ld (l5dde),hl
	dec a
	ld (l5dd7),a
	inc a
.l5df6
	ld (l5dc7),de
.l5dfa
	ld (l5dd5),a
	ld a,hx
	sla a
.l5e02 equ $ + 1
	or #00
	rla
.l5e05 equ $ + 1
	or #00
	jp l6127
.l5e09
	ld a,(hl)
	inc hl
	srl a
	jr c,l5e42
	cp #60
	jr nc,l5e4a
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l5e22
	and #0f
	ld c,a
.l5e22
	rl b
	jr nc,l5e28
	ld e,(hl)
	inc hl
.l5e28
	rl b
	jr nc,l5e3a
.l5e2c
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l5e36
	dec h
.l5e36
	ld ly,#00
	ret
.l5e3a
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l5e42
	ld hy,#00
	add d
	ld lx,a
	jr l5e3a
.l5e4a
	ld hy,#01
	sub #60
	jr z,l5e6b
	dec a
	jr z,l5e82
	dec a
	jr z,l5e74
	dec a
	jr z,l5e2c
	dec a
	jr z,l5e7e
	dec a
	jr z,l5e93
	dec a
	jr z,l5e8a
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l5e6b
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l5e74
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l5e7e
	ld c,(hl)
	inc hl
	jr l5e2c
.l5e82
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l5e8a
	ld a,(hl)
	inc hl
	ld (l5a08),a
	ld a,b
	ld (l5a09),a
.l5e93
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l5e9e
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l5f54
	bit 4,e
	jr z,l5f06
	ld a,(hl)
	bit 6,a
	jr z,l5ed3
	ld d,#08
	inc hl
	and #1f
	jr z,l5eba
	ld (l6225),a
	res 3,d
.l5eba
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l5ec3
	xor a
.l5ec3
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l5ed3
	ld (l6225),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l5eef
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l5ee8
	xor a
.l5ee8
	ld (iy+#36),a
	ld hx,d
	jr l5f19
.l5eef
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l5ef8
	xor a
.l5ef8
	ld (iy+#36),a
.l5efb
	ld hx,d
	ret
.l5efe
	ld (iy+#36),#00
	ld d,#09
	jr l5efb
.l5f06
	ld d,#08
	ld a,e
	and #0f
	jr z,l5efe
	exx
	sub d
	exx
	jr nc,l5f13
	xor a
.l5f13
	ld (iy+#36),a
	ld hx,#08
.l5f19
	bit 5,e
	jr z,l5f21
	ld a,(hl)
	inc hl
	jr l5f22
.l5f21
	xor a
.l5f22
	bit 6,e
	jr z,l5f2c
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l5f2f
.l5f2c
	ld de,#0000
.l5f2f
	add lx
	cp #60
	jr c,l5f37
	ld a,#60	; reset music
.l5f37
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l6067
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l5f44 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l5f54
	or a
	jr nz,l5f5e
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l5f5e
	ld a,e
	or #08
	and #09
	ld d,a
	ld (iy+#36),#10
	ld b,(hl)
	inc hl
	ld a,b
	and #03
	add a
	add #08
	ld (l6290),a
	bit 3,e
	jr z,l5f80
	ld a,(hl)
	inc hl
	ld (l6225),a
	res 3,d
	jr l5f80
.l5f80
	ld hx,d
	xor a
	bit 7,b
	jr z,l5f92
	bit 6,b
	jr z,l5f8d
	ld a,(hl)
	inc hl
.l5f8d
	ld (l6041),a
	ld a,#01
.l5f92
	ld (l5fda),a
	ld a,b
	rra
	and #0e
	ld (l5feb),a
	bit 4,e
	jp nz,l604c
	bit 1,e
	jr z,l5fa9
	ld a,(hl)
	inc hl
	jr l5faa
.l5fa9
	xor a
.l5faa
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l5fb7
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l5fba
.l5fb7
	ld de,#0000
.l5fba
	add lx
	cp #60
	jr c,l5fc2
	ld a,#60
.l5fc2
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l6067
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l5f44)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l5fda equ $ + 1
	ld a,#00
	or a
	jr nz,l5fea
	ex af,af'
	bit 5,a
	jr nz,l6055
.l5fe3
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l5feb equ $ + 1
.l5fea
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l5ff5),a
	ld a,c
.l5ff5 equ $ + 1
	jr l5ff6
.l5ff6
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	ld c,a
	jr nc,l600f
	inc bc
.l600f
	ld a,c
	ld (l625a),a
	ld a,b
	ld (l6275),a
	ld a,(l5fda)
	or a
	jr z,l604a
	ld a,(l5feb)
	ld e,a
	srl a
	add e
	ld (l6029),a
	ld a,b
.l6029 equ $ + 1
	jr l602a
.l602a
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	ld b,a
.l6041 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l604a
	pop hl
	ret
.l604c
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l5fe3
.l6055
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l625a),a
	inc hl
	ld a,(hl)
	ld (l6275),a
	inc hl
	ret
.l6067
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
.l6127
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l6132 equ $ + 1
	ld a,#00
.l6134 equ $ + 1
	cp #00
	jr z,l614c
	ld d,#00
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l6134),a
	exx
.l614d equ $ + 1
.l614c
	ld a,#00
.l614f equ $ + 1
	cp #00
	jr z,l6167
	ld d,#01
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l614f),a
	exx
.l6168 equ $ + 1
.l6167
	ld a,#00
.l616a equ $ + 1
	cp #00
	jr z,l6182
	ld d,#08
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l616a),a
	exx
.l6183 equ $ + 1
.l6182
	ld a,#00
.l6185 equ $ + 1
	cp #00
	jr z,l619d
	ld d,#02
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l6185),a
	exx
.l619e equ $ + 1
.l619d
	ld a,#00
.l61a0 equ $ + 1
	cp #00
	jr z,l61b8
	ld d,#03
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l61a0),a
	exx
.l61b9 equ $ + 1
.l61b8
	ld a,#00
.l61bb equ $ + 1
	cp #00
	jr z,l61d3
	ld d,#09
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l61bb),a
	exx
.l61d4 equ $ + 1
.l61d3
	ld a,#00
.l61d6 equ $ + 1
	cp #00
	jr z,l61ee
	ld d,#04
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l61d6),a
	exx
.l61ef equ $ + 1
.l61ee
	ld a,#00
.l61f1 equ $ + 1
	cp #00
	jr z,l6209
	ld d,#05
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l61f1),a
	exx
.l620a equ $ + 1
.l6209
	ld a,#00
.l620c equ $ + 1
	cp #00
	jr z,l6224
	ld d,#0a
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l620c),a
	exx
.l6225 equ $ + 1
.l6224
	ld a,#00
.l6227 equ $ + 1
	cp #00
	jr z,l623f
	ld d,#06
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l6227),a
	exx
.l623f
	ld a,h
.l6241 equ $ + 1
	cp #c0
	jr z,l6259
	ld d,#07
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l6241),a
	exx
.l625a equ $ + 1
.l6259
	ld a,#00
.l625c equ $ + 1
	cp #00
	jr z,l6274
	ld d,#0b
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l625c),a
	exx
.l6275 equ $ + 1
.l6274
	ld a,#00
.l6277 equ $ + 1
	cp #00
	jr z,l628f
	ld d,#0c
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l6277),a
	exx
.l6290 equ $ + 1
.l628f
	ld a,#00
.l6292 equ $ + 1
	cp #ff
	jr nz,l629c
	ld h,a
.l6297 equ $ + 1
	ld a,#00
	or a
	jr z,l62b0
	ld a,h
.l629c
	ld d,#0d
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l6292),a
.l62b0
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
	ret
;
.stop_music
.l62b9
;
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l6168),a
	ld (l61b9),a
	ld (l620a),a
	dec a
	ld (l616a),a
	ld (l61bb),a
	ld (l620c),a
	ld (l6241),a
	ld a,#3f
	jp l6127
;
.real_init_music
.l62de
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l5b7f),a
	inc hl
	ld a,(hl)
	ld (l5a11),a
	inc hl
	inc hl
	ld de,l5adb
	ldi
	ldi
	ld de,l5af9
	ldi
	ldi
	ld de,l5b35
	ldi
	ldi
	ld de,l5bc5
	ldi
	ldi
	ld de,l5cf0
	ldi
	ldi
	ld de,l5cf6
	ldi
	ldi
	ld de,l5cfc
	ldi
	ldi
	ld de,l5d02
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l5a73),a
	ld (l5a71),a
	ld (l5a9a),hl
	ld hl,(l5b35)
	ld (l5cdf),hl
	ld a,(hl)
	and #01
	ld (l5b14),a
	ld hl,(l5d02)
	ld a,(hl)
	and #01
	ld (l5d08),a
	ld hl,(l5bc5)
	ld (l5c30),hl
	ld (l5c9b),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l5d25),hl
	ld (l5d76),hl
	ld (l5dc7),hl
	ld (l5d44),hl
	ld (l5d95),hl
	ld (l5de6),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l5d4a),de
	ld (l5d9b),de
	ld (l5dec),de
	ld (l5d3c),de
	ld (l5d8d),de
	ld (l5dde),de
	ld a,#37
	ld (l5a81),a
	ld hl,l639d
.l638d
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l6394
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l6394
	jr l638d
.l639d
	jr l639f
.l639f
	dw l6132,l614d,l6183,l619e
	dw l61d4,l61ef,l6225,l6168
	dw l61b9,l620a,l625a,l6275
	dw l6290,l5a94,l5ace,l5b19
	dw l5b27,l5b64,l5d33,l5d84
	dw l5dd5,l5b94,l5bff,l5c6a
	dw #ff11,l6134,l614f,l6185
	dw l61a0,l61d6,l61f1,l6227
	dw l6241,l616a,l61bb,l620c
	dw l625c,l6277,l6292,l5d35
	dw l5d86,l5dd7,#b703,l5d46
	dw l5d97,l5de8,#0000,#0000
	db #00
; #64b0
; ld de,#5000
; call #5a00
; ret
;
.init_music
;
	ld de,l5000
	jp real_init_music
;
.music_info
	db "Croco Chanel 4 - Rien (2007)(Shinra)(PulkoMandy)",0
	db "StArkos",0

	read "music_end.asm"
