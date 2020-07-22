; Music of Baba's Palace - Menu (2017)(Cpcretrodev.ByteRealms)(John McKlain)(StArkos)
; Ripped by Megachur the 06/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BABAPALM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #4bba
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

.l4bba
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#ff,#0f,#01,#dc,#4b,#e5,#4b
	db #fc,#4b,#13,#4c,#33,#4c,#5f,#4c
	db #79,#4c,#8e,#4c,#a2,#4c,#b7,#4c
	db #c6,#4c,#00,#00,#00,#00,#00,#00
	db #0d,#de,#4b,#01,#00,#3e,#21,#74
	db #02,#70,#04,#6c,#06,#68,#08,#60
	db #0a,#5c,#0c,#54,#0e,#50,#10,#0d
	db #de,#4b,#01,#00,#7a,#21,#10,#74
	db #0e,#70,#0c,#6c,#0a,#68,#08,#64
	db #06,#5c,#04,#54,#02,#10,#0d,#de
	db #4b,#01,#00,#38,#74,#09,#74,#30
	db #70,#24,#70,#18,#28,#68,#09,#68
	db #30,#60,#24,#60,#18,#1c,#5c,#09
	db #58,#30,#54,#24,#50,#18,#0d,#de
	db #4b,#01,#00,#7e,#26,#f4,#7a,#29
	db #ff,#76,#29,#f4,#72,#2c,#fd,#6e
	db #2e,#f4,#6a,#30,#fb,#6a,#33,#f4
	db #66,#34,#f9,#62,#35,#f4,#5e,#35
	db #f7,#5a,#37,#f4,#56,#37,#f5,#52
	db #37,#f4,#0d,#de,#4b,#01,#00,#3e
	db #26,#3e,#26,#3a,#39,#76,#39,#fc
	db #6e,#39,#fc,#6a,#39,#fc,#62,#39
	db #fc,#5e,#39,#fc,#0d,#de,#4b,#01
	db #00,#3a,#0b,#36,#07,#2e,#11,#32
	db #12,#32,#06,#2a,#05,#2e,#06,#26
	db #0d,#0d,#de,#4b,#01,#00,#3a,#36
	db #36,#32,#2e,#2c,#66,#27,#ff,#62
	db #27,#fe,#56,#26,#fd,#0d,#de,#4b
	db #01,#00,#6c,#0c,#34,#38,#7c,#0c
	db #7c,#0c,#7c,#0c,#74,#0c,#6c,#0c
	db #68,#0c,#0d,#de,#4b,#01,#00,#7c
	db #18,#78,#07,#78,#13,#74,#0c,#2c
	db #1c,#0d,#de,#4b,#01,#00,#78,#13
	db #7c,#07,#3c,#60,#13,#68,#07,#28
	db #0d,#de,#4b,#40,#00,#00,#00,#e5
	db #4c,#00,#e6,#4c,#e6,#4c,#e6,#4c
	db #01,#db,#4c,#00,#42,#80,#00,#00
	db #00,#00
;
	ds #4cec-$,#00
;
.l4cec
;
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#04,#44,#00,#00,#4d,#09,#4d
	db #20,#4d,#33,#4d,#00,#00,#00,#00
	db #00,#00,#0d,#02,#4d,#02,#00,#b4
	db #06,#00,#34,#2c,#ac,#01,#00,#28
	db #28,#a4,#ff,#ff,#24,#a4,#01,#00
	db #24,#0d,#15,#4d,#01,#00,#7a,#21
	db #0c,#38,#70,#f4,#70,#f4,#6c,#f4
	db #6c,#f4,#68,#f4,#0d,#2e,#4d,#01
	db #00,#3e,#04,#3e,#0e,#0d,#35,#4d
	db #08,#00,#00,#0c,#bf,#4d,#00,#7d
	db #4e,#70,#4e,#7d,#4e,#10,#d9,#4e
	db #04,#4f,#d9,#4e,#30,#00,#4a,#4f
	db #75,#4f,#4a,#4f,#08,#00,#51,#4e
	db #fb,#4d,#dc,#4d,#1e,#00,#00,#f4
	db #8a,#4e,#99,#4e,#8a,#4e,#30,#00
	db #de,#4f,#ad,#4e,#de,#4f,#00,#fa
	db #4f,#c1,#4e,#fa,#4f,#00,#c0,#4d
	db #ad,#4e,#c0,#4d,#00,#c0,#4f,#14
	db #50,#c0,#4f,#0e,#02,#02,#f6,#de
	db #4f,#ad,#4e,#de,#4f,#00,#fa,#4f
	db #c1,#4e,#fa,#4f,#00,#c0,#4d,#ad
	db #4e,#c0,#4d,#10,#5e,#50,#6e,#50
	db #5e,#50,#18,#00,#5e,#50,#6e,#50
	db #5e,#50,#00,#5e,#50,#6e,#50,#5e
	db #50,#00,#9e,#50,#af,#50,#d8,#50
	db #01,#60,#4d,#00,#c8,#e0,#00,#00
	db #01,#0a,#89,#0a,#89,#06,#8f,#02
	db #8d,#06,#89,#02,#93,#0e,#8d,#02
	db #89,#02,#85,#0a,#89,#06,#8d,#00
	db #ce,#e0,#00,#00,#01,#0a,#8f,#02
	db #8d,#02,#89,#02,#85,#0a,#7f,#06
	db #8d,#02,#89,#0a,#89,#02,#89,#02
	db #89,#02,#89,#0a,#42,#0b,#00,#90
	db #e0,#00,#00,#02,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#51,#42
	db #00,#51,#42,#00,#51,#42,#00,#55
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#4f,#42,#00,#42,#00,#42
	db #00,#5d,#42,#00,#59,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#59
	db #42,#00,#59,#42,#00,#59,#42,#00
	db #59,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#a2,#6f,#03,#02,#42
	db #0b,#02,#42,#07,#00,#b6,#e0,#00
	db #00,#01,#0a,#77,#02,#71,#02,#77
	db #02,#7b,#0a,#75,#06,#7b,#02,#7f
	db #0a,#7f,#02,#7f,#02,#7f,#02,#7f
	db #0a,#42,#0b,#00,#42,#60,#00,#42
	db #80,#00,#00,#8e,#61,#02,#06,#55
	db #00,#42,#60,#00,#42,#80,#00,#00
	db #a6,#63,#01,#06,#6d,#00,#42,#60
	db #00,#42,#80,#00,#00,#3e,#12,#be
	db #63,#01,#06,#85,#00,#98,#e1,#00
	db #00,#02,#0a,#4f,#0a,#59,#0a,#4f
	db #0a,#59,#0a,#4f,#0a,#59,#0a,#4f
	db #00,#98,#e0,#00,#00,#02,#0a,#4f
	db #0a,#59,#0a,#4f,#0a,#55,#0a,#4b
	db #0a,#55,#0a,#4b,#00,#90,#e0,#00
	db #00,#02,#0a,#47,#0a,#51,#0a,#47
	db #42,#00,#08,#4f,#0a,#45,#0a,#4f
	db #0a,#4f,#42,#00,#00,#b0,#e0,#00
	db #00,#01,#22,#71,#02,#71,#02,#71
	db #02,#71,#0e,#42,#87,#01,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#0b,#42
	db #00,#a6,#c3,#00,#00,#06,#71,#00
	db #98,#e0,#00,#00,#02,#42,#00,#42
	db #00,#42,#00,#04,#42,#00,#0a,#42
	db #00,#06,#42,#00,#42,#00,#59,#42
	db #00,#59,#42,#00,#59,#42,#00,#59
	db #0a,#42,#00,#02,#42,#87,#ff,#ff
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#0b
	db #42,#00,#8e,#c1,#00,#00,#42,#00
	db #42,#00,#42,#00,#59,#00,#b4,#e0
	db #00,#00,#01,#22,#75,#02,#75,#02
	db #75,#02,#75,#0e,#42,#87,#01,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#0b
	db #42,#00,#ac,#c3,#00,#00,#06,#75
	db #00,#94,#e0,#00,#00,#02,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#08,#42,#00,#42
	db #00,#08,#55,#42,#00,#55,#42,#00
	db #55,#42,#00,#55,#0a,#42,#00,#42
	db #00,#42,#87,#ff,#ff,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#0b,#42,#00,#8e
	db #c1,#00,#00,#42,#00,#42,#00,#42
	db #00,#55,#42,#00,#c8,#e0,#00,#00
	db #01,#0a,#81,#06,#89,#02,#8d,#0a
	db #85,#06,#8d,#02,#89,#0a,#89,#02
	db #89,#02,#89,#02,#89,#0a,#7f,#06
	db #85,#00,#c8,#e0,#00,#00,#01,#0a
	db #89,#0a,#89,#06,#8f,#02,#8d,#06
	db #89,#02,#85,#0e,#85,#02,#89,#02
	db #8d,#0a,#7f,#06,#85,#00,#c0,#e0
	db #00,#00,#01,#0a,#81,#0a,#81,#06
	db #89,#02,#85,#06,#81,#02,#7f,#0a
	db #87,#0a,#8d,#0a,#7f,#06,#85,#00
	db #90,#e0,#00,#00,#02,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#47
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#55,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#4b,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #59,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#59,#42,#00,#59,#42
	db #00,#59,#42,#00,#59,#42,#00,#08
	db #4f,#00,#c8,#e0,#00,#00,#01,#0a
	db #81,#06,#89,#02,#8d,#0a,#85,#06
	db #8d,#00,#90,#e0,#00,#00,#02,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#47,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#55,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#4b
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#c8,#e0,#00,#00,#01,#0a
	db #89,#02,#89,#02,#89,#02,#89,#0a
	db #42,#0b,#00,#98,#e0,#00,#00,#02
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#59,#42,#00,#59,#42,#00
	db #59,#42,#00,#59,#42,#00,#08,#a2
	db #6f,#03,#42,#0d,#42,#0b,#42,#09
	db #42,#07,#42,#05,#d0,#e0,#00,#00
	db #01,#0a,#91,#02,#91,#02,#91,#02
	db #91,#0a,#42,#0b,#00,#00
;
	ds #50ea-$,#00
;
.l50ea
;
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#04,#76,#00,#02,#51,#0b,#51
	db #17,#51,#2a,#51,#3b,#51,#50,#51
	db #00,#00,#00,#00,#00,#00,#0d,#04
	db #51,#01,#00,#78,#fb,#38,#38,#34
	db #2c,#20,#0d,#04,#51,#01,#00,#78
	db #0c,#7c,#04,#3c,#70,#0c,#74,#04
	db #34,#6c,#0c,#6c,#04,#0d,#04,#51
	db #01,#00,#74,#0c,#68,#0a,#34,#6c
	db #0c,#2c,#2c,#6c,#0c,#2c,#0d,#34
	db #51,#01,#00,#7a,#26,#0a,#78,#07
	db #78,#04,#30,#70,#f9,#6c,#f9,#6c
	db #f9,#6c,#f9,#0d,#04,#51,#01,#00
	db #7a,#25,#03,#7a,#23,#02,#76,#26
	db #01,#36,#27,#6e,#27,#ff,#6e,#28
	db #fe,#6a,#29,#fd,#6a,#2a,#fc,#0d
	db #04,#51,#20,#00,#00,#00,#2c,#53
	db #1e,#00,#00,#00,#2d,#53,#c9,#53
	db #fa,#54,#20,#00,#2d,#53,#c9,#53
	db #fa,#54,#00,#2d,#53,#c9,#53,#61
	db #53,#06,#fe,#fe,#2d,#53,#c9,#53
	db #02,#54,#06,#f9,#f9,#2d,#53,#c9
	db #53,#63,#54,#06,#fb,#fb,#2d,#53
	db #c9,#53,#cc,#54,#06,#00,#00,#95
	db #54,#91,#53,#61,#53,#06,#fe,#fe
	db #95,#54,#91,#53,#02,#54,#06,#f9
	db #f9,#95,#54,#91,#53,#63,#54,#06
	db #fb,#fb,#95,#54,#91,#53,#cc,#54
	db #06,#00,#00,#2d,#53,#c9,#53,#30
	db #54,#0e,#fe,#fe,#05,#2d,#53,#c9
	db #53,#30,#54,#0e,#f9,#f9,#00,#2d
	db #53,#c9,#53,#30,#54,#06,#fb,#fb
	db #2d,#53,#c9,#53,#30,#54,#06,#00
	db #00,#95,#54,#91,#53,#30,#54,#0e
	db #fe,#fe,#05,#95,#54,#91,#53,#30
	db #54,#0e,#f9,#f9,#00,#95,#54,#91
	db #53,#30,#54,#06,#fb,#fb,#95,#54
	db #91,#53,#30,#54,#06,#00,#00,#2d
	db #53,#c9,#53,#61,#53,#0e,#03,#03
	db #03,#2d,#53,#c9,#53,#61,#53,#0e
	db #05,#05,#05,#2d,#53,#c9,#53,#61
	db #53,#0e,#07,#07,#07,#95,#54,#91
	db #53,#30,#54,#0e,#00,#00,#0c,#2d
	db #53,#c9,#53,#61,#53,#0e,#fe,#fe
	db #0a,#2d,#53,#c9,#53,#61,#53,#0e
	db #f9,#f9,#05,#2d,#53,#c9,#53,#61
	db #53,#0e,#fb,#fb,#07,#2d,#53,#91
	db #53,#61,#53,#1e,#00,#00,#00,#2d
	db #53,#c9,#53,#61,#53,#04,#0e,#01
	db #01,#01,#2d,#53,#c9,#53,#61,#53
	db #0e,#02,#02,#02,#2d,#53,#c9,#53
	db #61,#53,#0e,#03,#03,#03,#2d,#53
	db #c9,#53,#61,#53,#0e,#04,#04,#04
	db #2d,#53,#c9,#53,#61,#53,#0e,#05
	db #05,#05,#2d,#53,#c9,#53,#61,#53
	db #0e,#06,#06,#06,#2d,#53,#c9,#53
	db #61,#53,#0e,#07,#07,#07,#2d,#53
	db #c9,#53,#61,#53,#0e,#04,#04,#04
	db #2d,#53,#c9,#53,#61,#53,#0e,#05
	db #05,#05,#2d,#53,#c9,#53,#61,#53
	db #0e,#06,#06,#06,#2d,#53,#c9,#53
	db #61,#53,#0e,#07,#07,#07,#2d,#53
	db #c9,#53,#61,#53,#1e,#04,#04,#04
	db #2d,#53,#c9,#53,#61,#53,#02,#0e
	db #05,#05,#05,#2d,#53,#c9,#53,#61
	db #53,#0e,#06,#06,#06,#2d,#53,#c9
	db #53,#61,#53,#0e,#07,#07,#07,#2d
	db #53,#c9,#53,#61,#53,#00,#2d,#53
	db #c9,#53,#61,#53,#00,#2d,#53,#c9
	db #53,#fa,#54,#0e,#05,#05,#05,#2d
	db #53,#c9,#53,#fa,#54,#0e,#03,#03
	db #03,#2d,#53,#c9,#53,#fa,#54,#01
	db #72,#51,#00,#8a,#e3,#00,#00,#01
	db #02,#63,#02,#a2,#60,#02,#02,#8a
	db #60,#01,#02,#63,#02,#4b,#02,#a2
	db #60,#02,#02,#8a,#60,#01,#02,#4b
	db #02,#63,#02,#a2,#60,#02,#02,#8a
	db #60,#01,#02,#63,#02,#4b,#02,#a2
	db #60,#02,#02,#8a,#60,#01,#00,#ba
	db #e1,#00,#00,#03,#02,#42,#0b,#02
	db #b0,#41,#02,#42,#0b,#02,#ba,#41
	db #02,#7f,#02,#83,#02,#85,#02,#42
	db #0b,#02,#c2,#41,#02,#42,#0b,#02
	db #be,#41,#02,#42,#0b,#02,#c2,#41
	db #02,#42,#0b,#02,#42,#0f,#00,#80
	db #e1,#00,#00,#04,#02,#80,#4b,#02
	db #80,#4f,#02,#80,#43,#02,#9c,#61
	db #05,#02,#9c,#4b,#42,#00,#80,#63
	db #04,#02,#80,#41,#02,#80,#4b,#02
	db #80,#43,#02,#80,#41,#02,#80,#4b
	db #02,#9c,#61,#05,#02,#9c,#4b,#02
	db #80,#63,#04,#02,#80,#4b,#00,#80
	db #e1,#00,#00,#04,#02,#80,#4b,#02
	db #9c,#61,#05,#02,#9c,#4b,#02,#80
	db #63,#04,#02,#80,#41,#02,#9c,#60
	db #05,#02,#80,#63,#04,#02,#80,#4b
	db #02,#80,#43,#02,#9c,#61,#05,#02
	db #9c,#4b,#02,#80,#63,#04,#02,#80
	db #41,#02,#9c,#60,#05,#02,#5d,#00
	db #ba,#e1,#00,#00,#03,#02,#42,#0b
	db #02,#b0,#41,#02,#42,#0b,#02,#ba
	db #41,#02,#7f,#02,#83,#02,#85,#02
	db #42,#0b,#02,#c2,#41,#02,#85,#02
	db #89,#02,#42,#0b,#02,#42,#0f,#02
	db #42,#13,#02,#c4,#41,#89,#ba,#e1
	db #00,#00,#03,#02,#42,#0b,#02,#d2
	db #43,#02,#42,#0d,#02,#ba,#47,#02
	db #42,#11,#02,#ba,#41,#02,#42,#0b
	db #02,#c4,#41,#02,#42,#0b,#02,#dc
	db #43,#02,#42,#0d,#02,#c2,#41,#02
	db #42,#0b,#02,#da,#43,#02,#42,#0d
	db #00,#cc,#e1,#00,#00,#03,#02,#42
	db #0b,#02,#c8,#41,#02,#42,#0b,#02
	db #c4,#41,#02,#42,#0b,#02,#cc,#41
	db #02,#42,#0b,#02,#c8,#41,#02,#42
	db #0b,#02,#c4,#41,#02,#83,#02,#42
	db #0b,#02,#ba,#41,#02,#42,#0b,#02
	db #42,#0f,#00,#a2,#e3,#00,#00,#01
	db #02,#a2,#47,#02,#a2,#49,#02,#a2
	db #4b,#02,#a2,#63,#02,#02,#a2,#4b
	db #02,#a2,#69,#01,#02,#a2,#4b,#02
	db #a2,#43,#02,#a2,#47,#02,#a2,#49
	db #02,#a2,#4b,#02,#a2,#63,#02,#02
	db #a2,#4b,#02,#a2,#69,#01,#02,#a2
	db #4b,#00,#c2,#e1,#00,#00,#03,#02
	db #83,#02,#85,#02,#83,#02,#42,#0b
	db #02,#ba,#41,#02,#42,#0b,#02,#c4
	db #41,#02,#42,#0b,#02,#c2,#41,#02
	db #85,#02,#89,#02,#42,#0b,#02,#42
	db #0f,#02,#42,#13,#02,#42,#17,#00
	db #42,#60,#00,#42,#80,#00,#00,#00
	db #00
;
	ds #5503-$,#00
;
.l5503
;
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#04,#63,#00,#19,#55,#22,#55
	db #37,#55,#4d,#55,#56,#55,#00,#00
	db #00,#00,#00,#00,#0d,#1b,#55,#01
	db #00,#74,#13,#34,#30,#70,#13,#2c
	db #2c,#e4,#ff,#ff,#13,#a4,#01,#00
	db #24,#0d,#2c,#55,#01,#00,#7a,#22
	db #0c,#78,#f4,#74,#f4,#74,#f4,#70
	db #f4,#70,#f4,#68,#f4,#68,#f4,#0d
	db #48,#55,#01,#00,#3e,#04,#16,#02
	db #0d,#4f,#55,#02,#00,#70,#ff,#30
	db #ac,#ff,#ff,#2c,#68,#ff,#28,#a0
	db #ff,#ff,#20,#5c,#ff,#9c,#01,#00
	db #18,#18,#14,#14,#0d,#1b,#55,#30
	db #00,#00,#00,#c7,#55,#00,#45,#56
	db #ef,#55,#d0,#55,#00,#c8,#55,#84
	db #56,#c8,#55,#0e,#0c,#00,#00,#64
	db #56,#84,#56,#64,#56,#00,#bc,#56
	db #9f,#56,#bc,#56,#00,#64,#56,#84
	db #56,#64,#56,#00,#bc,#56,#9f,#56
	db #bc,#56,#0e,#0e,#02,#02,#64,#56
	db #84,#56,#64,#56,#00,#bc,#56,#9f
	db #56,#bc,#56,#00,#64,#56,#84,#56
	db #64,#56,#00,#bc,#56,#9f,#56,#bc
	db #56,#01,#86,#55,#00,#42,#60,#00
	db #42,#80,#00,#00,#00,#ce,#e3,#00
	db #00,#01,#0a,#8f,#02,#8d,#02,#89
	db #02,#85,#0a,#7f,#06,#8d,#02,#89
	db #0a,#89,#02,#89,#02,#85,#02,#89
	db #0a,#42,#0b,#00,#90,#e1,#00,#00
	db #02,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#51,#42,#00,#51,#42
	db #00,#51,#42,#00,#55,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#4f
	db #42,#00,#42,#00,#42,#00,#5d,#42
	db #00,#59,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#59,#42,#00,#59
	db #42,#00,#55,#42,#00,#59,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #a2,#73,#03,#02,#42,#0f,#02,#42
	db #0b,#00,#b6,#e1,#00,#00,#01,#0a
	db #77,#02,#71,#02,#77,#02,#7b,#0a
	db #75,#06,#7b,#02,#7f,#0a,#7f,#02
	db #7f,#02,#7b,#02,#7f,#0a,#42,#0b
	db #00,#b0,#e3,#00,#00,#04,#02,#42
	db #00,#42,#00,#04,#7f,#06,#42,#00
	db #02,#89,#0a,#85,#06,#83,#02,#7f
	db #0a,#7b,#06,#7f,#02,#83,#0a,#7f
	db #00,#98,#e3,#00,#00,#02,#0a,#4f
	db #0a,#59,#0a,#4f,#04,#42,#00,#55
	db #42,#00,#59,#0a,#4f,#0a,#59,#0a
	db #4f,#06,#59,#00,#94,#e0,#00,#00
	db #02,#0a,#4b,#0a,#55,#0a,#4b,#04
	db #42,#00,#55,#02,#59,#0a,#4f,#0a
	db #59,#0a,#4f,#02,#42,#00,#02,#55
	db #00,#b0,#e0,#00,#00,#04,#0a,#7f
	db #06,#42,#00,#02,#89,#0a,#85,#06
	db #83,#02,#7f,#0a,#7b,#06,#83,#02
	db #7f,#00,#00,#cd,#2a,#92,#2e,#00
	db #c3,#1a,#9d,#cd,#d6,#56,#cd,#09
	db #76,#cd,#03,#7b,#cd,#8a,#91,#18
	db #f5,#0e,#00,#c5,#cd,#40,#9c,#c1
	db #7d,#b7,#28,#71,#2a,#79,#9f,#c5
	db #cd,#fc,#92,#c1,#7d,#b7,#28,#04
	db #0e,#01,#18,#61,#2a,#7f,#9f,#c5
	db #cd,#fc,#92,#c1,#7d,#b7,#28,#04
	db #0e,#02,#18,#51,#2a,#7d,#9f,#c5
	db #cd,#fc,#92,#c1,#7d,#b7,#28,#04
	db #0e,#03,#18,#41,#2a,#7b,#9f,#c5
	db #cd,#fc,#92,#c1,#7d,#b7,#28,#04
	db #0e,#04,#18,#31,#2a,#81,#9f,#c5
	db #cd,#fc,#92,#c1,#7d,#b7,#28,#17
	db #3e,#01,#fd,#21,#cb,#a1,#fd,#96
	db #00,#30,#0c,#2a,#81,#9f,#e5,#cd
	db #54,#6b,#f1,#0e,#05,#18,#0e,#2a
	db #83,#9f,#c5,#cd,#fc,#92,#c1,#7d
	db #b7,#28,#02,#0e,#0a,#69,#c9,#00
	db #b2,#3f,#00,#4c,#40,#00,#e6,#40
	db #00,#80,#41,#00,#1a,#42,#00,#b4
	db #42,#00,#4e,#43,#00,#e8,#43,#00
	db #82,#44,#00,#1c,#45,#00,#b6,#45
	db #00,#50,#46,#00,#ea,#46,#00,#84
	db #47,#00,#1e,#48,#00,#b8,#48,#00
	db #52,#49,#00,#ec,#49,#00,#86,#4a
	db #00,#20,#4b,#00,#a9,#33,#00,#43
	db #34,#00,#dd,#34,#00,#77,#35,#00
	db #11,#36,#00,#ab,#36,#00,#45,#37
	db #00,#df,#37,#00,#79,#38,#00,#13
	db #39,#00,#ad,#39,#00,#47,#3a,#00
	db #e1,#3a,#00,#7b,#3b,#00,#15,#3c
	db #00,#af,#3c,#00,#49,#3d,#00,#e3
	db #3d,#00,#7d,#3e,#00,#17,#3f,#03
	db #01,#03,#01,#04,#01,#04,#01,#05
	db #01,#05,#01,#06,#01,#06,#01,#02
	db #00,#02,#00,#02,#00,#02,#00,#0b
	db #04,#0b,#02,#09,#01,#09,#00,#09
	db #00,#09,#00,#09,#00,#01,#02,#01
	db #02,#00,#02,#0e,#01,#0d,#00,#0d
	db #00,#00,#02,#00,#02,#01,#02,#09
	db #01,#09,#00,#0d,#00,#0d,#00,#0f
	db #08,#0f,#08,#0f,#04,#0f,#02,#0f
	db #00,#0d,#00,#0d,#00,#0f,#00,#0f
	db #00,#0f,#02,#0f,#04,#0f,#08,#0e
	db #08,#0e,#00,#0d,#00,#0d,#00,#0d
	db #00,#0d,#00,#11,#01,#0f,#02,#13
	db #02,#0d,#02,#0d,#00,#09,#00,#09
	db #00,#09,#00,#09,#00,#0a,#00,#0b
	db #00,#0b,#00,#00,#00,#03,#00,#09
	db #00,#0d,#00,#11,#00,#10,#00,#10
	db #00,#10,#00,#10,#00,#10,#00,#11
	db #00,#11,#00,#0d,#00,#00,#05,#00
	db #06,#01,#05,#01,#06
;
; #9333 - player reallocated by Megachur
;
.l9334 equ $ + 1
.l9333
	db #00,#00
;
.play_music
.l9335		; play music
;
	push ix
	push iy
	xor a
	ld (l9333),a
.l933e equ $ + 1
	ld a,#01
	dec a
	jp nz,l9511
.l9344 equ $ + 1
	ld a,#01
	dec a
	jr nz,l93b7
.l9349 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l935e
	ld a,(l9334)
	inc a
	ld (l9334),a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l935e
	rra
	jr nc,l9366
	ld de,l9407
	ldi
.l9366
	rra
	jr nc,l936e
	ld de,l946c
	ldi
.l936e
	rra
	jr nc,l9376
	ld de,l94d1
	ldi
.l9376
	ld de,l93e6
	ldi
	ldi
	ld de,l944b
	ldi
	ldi
	ld de,l94b0
	ldi
	ldi
	rra
	jr nc,l9393
	ld de,l93b6
	ldi
.l9393
	rra
	jr nc,l939e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l93a2),de
.l939e
	ld (l9349),hl
.l93a2 equ $ + 1
	ld hl,#0000
	ld (l93c0),hl
	ld a,#01
	ld (l93bb),a
	ld (l93e1),a
	ld (l9446),a
	ld (l94ab),a
.l93b6 equ $ + 1
	ld a,#01
.l93b7
	ld (l9344),a
.l93bb equ $ + 1
	ld a,#01
	dec a
	jr nz,l93dd
.l93c0 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l93da
	srl a
	jr nz,l93ce
	ld a,(hl)
	inc hl
.l93ce
	jr nc,l93d5
	ld (l9333),a
	jr l93d8
.l93d5
	ld (l9510),a
.l93d8
	ld a,#01
.l93da
	ld (l93c0),hl
.l93dd
	ld (l93bb),a
.l93e1 equ $ + 1
	ld a,#01
	dec a
	jr nz,l9442
.l93e6 equ $ + 1
	ld hl,#0000
	call l98e4
	ld (l93e6),hl
	jr c,l9442
	ld a,d
	rra
	jr nc,l93f9
	and #0f
	ld (l95e9),a
.l93f9
	rl d
	jr nc,l9401
	ld (l95d7),ix
.l9401
	rl d
	jr nc,l9440
	ld a,e
.l9407 equ $ + 1
	add #00
	ld (l95e8),a
	ld hl,#0000
	ld (l95d4),hl
	rl d
	jr c,l9420
.l9416 equ $ + 1
	ld hl,#0000
	ld a,(l95f9)
	ld (l95f1),a
	jr l943d
.l9420
	ld l,b
	add hl,hl
.l9423 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l95f9),a
	ld (l95f1),a
	ld a,(hl)
	or a
	jr z,l9439
	ld (l9706),a
.l9439
	inc hl
	ld (l9416),hl
.l943d
	ld (l95eb),hl
.l9440
	ld a,#01
.l9442
	ld (l93e1),a
.l9446 equ $ + 1
	ld a,#01
	dec a
	jr nz,l94a7
.l944b equ $ + 1
	ld hl,#0000
	call l98e4
	ld (l944b),hl
	jr c,l94a7
	ld a,d
	rra
	jr nc,l945e
	and #0f
	ld (l958a),a
.l945e
	rl d
	jr nc,l9466
	ld (l9578),ix
.l9466
	rl d
	jr nc,l94a5
	ld a,e
.l946c equ $ + 1
	add #00
	ld (l9589),a
	ld hl,#0000
	ld (l9575),hl
	rl d
	jr c,l9485
.l947b equ $ + 1
	ld hl,#0000
	ld a,(l959a)
	ld (l9592),a
	jr l94a2
.l9485
	ld l,b
	add hl,hl
.l9488 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l959a),a
	ld (l9592),a
	ld a,(hl)
	or a
	jr z,l949e
	ld (l9706),a
.l949e
	inc hl
	ld (l947b),hl
.l94a2
	ld (l958c),hl
.l94a5
	ld a,#01
.l94a7
	ld (l9446),a
.l94ab equ $ + 1
	ld a,#01
	dec a
	jr nz,l950c
.l94b0 equ $ + 1
	ld hl,#0000
	call l98e4
	ld (l94b0),hl
	jr c,l950c
	ld a,d
	rra
	jr nc,l94c3
	and #0f
	ld (l952e),a
.l94c3
	rl d
	jr nc,l94cb
	ld (l951c),ix
.l94cb
	rl d
	jr nc,l950a
	ld a,e
.l94d1 equ $ + 1
	add #00
	ld (l952d),a
	ld hl,#0000
	ld (l9519),hl
	rl d
	jr c,l94ea
.l94e0 equ $ + 1
	ld hl,#0000
	ld a,(l953e)
	ld (l9536),a
	jr l9507
.l94ea
	ld l,b
	add hl,hl
.l94ed equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l953e),a
	ld (l9536),a
	ld a,(hl)
	or a
	jr z,l9503
	ld (l9706),a
.l9503
	inc hl
	ld (l94e0),hl
.l9507
	ld (l9530),hl
.l950a
	ld a,#01
.l950c
	ld (l94ab),a
.l9510 equ $ + 1
	ld a,#01
.l9511
	ld (l933e),a
	ld iy,l971d
.l9519 equ $ + 1
	ld hl,#0000
.l951c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9519),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l952e equ $ + 2
.l952d equ $ + 1
	ld de,#0000
.l9530 equ $ + 1
	ld hl,#0000
	call l9728
.l9536 equ $ + 1
	ld a,#01
	dec a
	jr nz,l953f
	ld (l9530),hl
.l953e equ $ + 1
	ld a,#06
.l953f
	ld (l9536),a
.l9542
	ld de,#0000
	exx
	ld de,#0000
.l954a equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l956d
	ld a,#01
	ld (l9857),a
	call l9728
	xor a
	ld (l9857),a
	ld a,l
	or h
	jr z,l9565
.l9561 equ $ + 1
	ld a,#01
	dec a
	jr nz,l956a
.l9565
	ld (l954a),hl
	ld a,#06
.l956a
	ld (l9561),a
.l956d
	ld a,lx
	ex af,af'
	ld iy,l971b
.l9575 equ $ + 1
	ld hl,#0000
.l9578 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9575),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l958a equ $ + 2
.l9589 equ $ + 1
	ld de,#0000
.l958c equ $ + 1
	ld hl,#0000
	call l9728
.l9592 equ $ + 1
	ld a,#01
	dec a
	jr nz,l959b
	ld (l958c),hl
.l959a equ $ + 1
	ld a,#06
.l959b
	ld (l9592),a
.l959e
	ld de,#0000
	exx
	ld de,#0000
.l95a6 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l95c9
	ld a,#01
	ld (l9857),a
	call l9728
	xor a
	ld (l9857),a
	ld a,l
	or h
	jr z,l95c1
.l95bd equ $ + 1
	ld a,#01
	dec a
	jr nz,l95c6
.l95c1
	ld (l95a6),hl
	ld a,#06
.l95c6
	ld (l95bd),a
.l95c9
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l9719
.l95d4 equ $ + 1
	ld hl,#0000
.l95d7 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l95d4),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l95e9 equ $ + 2
.l95e8 equ $ + 1
	ld de,#0000
.l95eb equ $ + 1
	ld hl,#0000
	call l9728
.l95f1 equ $ + 1
	ld a,#01
	dec a
	jr nz,l95fa
	ld (l95eb),hl
.l95f9 equ $ + 1
	ld a,#06
.l95fa
	ld (l95f1),a
.l95fd
	ld de,#0000
	exx
	ld de,#0000
.l9605 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l9628
	ld a,#01
	ld (l9857),a
	call l9728
	xor a
	ld (l9857),a
	ld a,l
	or h
	jr z,l9620
.l961c equ $ + 1
	ld a,#01
	dec a
	jr nz,l9625
.l9620
	ld (l9605),hl
	ld a,#06
.l9625
	ld (l961c),a
.l9628
	ex af,af'
	or lx
.l962b
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l9719
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
.l9706 equ $ + 1
	cp #ff
	ret z
	ld (l9706),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l9720 equ $ + 7
.l971f equ $ + 6
.l971d equ $ + 4
.l971b equ $ + 2
.l9719
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9727 equ $ + 6
.l9725 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00
.l9728
	ld b,(hl)
	inc hl
	rr b
	jp c,l9786
	rr b
	jr c,l9756
	ld a,b
	and #0f
	jr nz,l973f
	ld (iy+#07),a
	ld lx,#09
	ret
.l973f
	ld lx,#08
	sub d
	jr nc,l9746
	xor a
.l9746
	ld (iy+#07),a
	rr b
	call l98b8
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l9756
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l9766
	ld (l971f),a
	ld lx,#00
.l9766
	ld a,b
	and #0f
	sub d
	jr nc,l976d
	xor a
.l976d
	ld (iy+#07),a
	bit 5,c
	jr nz,l9777
	inc lx
	ret
.l9777
	rr b
	bit 6,c
	call l98aa
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l9786
	rr b
	jr nc,l9799
	ld a,(l95f1)
	ld c,a
	ld a,(l95f9)
	cp c
	jr nz,l9799
	ld a,#fe
	ld (l9706),a
.l9799
	bit 1,b
	jp nz,l9852
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l9727),a
	bit 0,b
	jr z,l9808
	bit 2,b
	call l98aa
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l97c8),a
	ld a,b
	exx
.l97c8 equ $ + 1
	jr l97c9
.l97c9
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
	jr nc,l97e8
	inc hl
.l97e8
	bit 5,a
	jr z,l97f8
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
.l97f8
	ld (l9725),hl
	exx
.l97fc
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l971f),a
	ld lx,#00
	ret
.l9808
	bit 2,b
	call l98aa
	ld (l9725),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l981c),a
	ld a,b
	exx
.l981c equ $ + 1
	jr l981d
.l981d
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
	jr z,l9849
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
.l9849
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l97fc
.l9852
	bit 0,b
	jr z,l9866
.l9857 equ $ + 1
	ld a,#00
	or a
	jr z,l985f
	ld hl,#0000
	ret
.l985f
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l9728
.l9866
	ld (iy+#07),#10
	bit 5,b
	jr nz,l9873
	ld lx,#09
	jr l9886
.l9873
	ld lx,#08
	ld hx,e
	bit 2,b
	call l98aa
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l9886
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l9727),a
	rr b
	rr b
	bit 2,b
	call l98aa
	ld (l9725),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l971f),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l98aa
	jr z,l98b8
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
.l98b8
	bit 4,b
	jr z,l98c8
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
.l98c8
	ld a,e
	bit 3,b
	jr z,l98d5
	add (hl)
	inc hl
	cp #90
	jr c,l98d5
	ld a,#8f
.l98d5
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l9918
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l98e4
	ld a,(hl)
	inc hl
	srl a
	jr c,l990b
	sub #20
	jr c,l9915
	jr z,l9907
	dec a
	ld e,a
.l98f2
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l9900
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l9900
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l9907
	ld e,(hl)
	inc hl
	jr l98f2
.l990b
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l9915
	add #20
	ret
.l9918
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
.l9a38
;
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
	xor a
	ld (l9334),a
	ld hl,#0009
	add hl,de
	ld de,l9510
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l9423),hl
	ld (l9488),hl
	ld (l94ed),hl
	add hl,bc
	ld de,l93b6
	ldi
	ld de,l9407
	ldi
	ld de,l946c
	ldi
	ld de,l94d1
	ldi
	ld de,l93a2
	ldi
	ldi
	ld (l9349),hl
	ld a,#01
	ld (l933e),a
	ld (l9344),a
	ld a,#ff
	ld (l9727),a
	ld hl,(l9423)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l95eb),hl
	ld (l958c),hl
	ld (l9530),hl
	ret
	push ix
	push iy
	ld hl,l9720
	ld bc,#0500
.l9aa2
	ld (hl),c
	inc hl
	djnz l9aa2
	ld a,#3f
	jp l962b
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	rrca
	jp c,l9ac0
	rrca
	jp c,l9abc
	ld hl,(l954a)
	ret
.l9abc
	ld hl,(l95a6)
	ret
.l9ac0
	ld hl,(l9605)
	ret
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,#000c
	add hl,de
	ld (l9b1f),hl
	ld hl,#0000
	ld (l9605),hl
	ld (l95a6),hl
	ld (l954a),hl
	ret
	ld (l9b3b),ix
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
	jp c,l9b07
	rrca
	jp c,l9b00
	ld ix,l9542
	jp l9b0b
.l9b00
	ld ix,l959e
	jp l9b0b
.l9b07
	ld ix,l95fd
.l9b0b
	ld (ix+#01),c
	ld (ix+#02),b
	ld a,e
	ld (ix+#05),a
	ld a,#0f
	sub h
	ld (ix+#06),a
	ld h,#00
	add hl,hl
.l9b1f equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,d
	or a
	jr nz,l9b2b
	ld a,(hl)
.l9b2b
	ld (ix+#27),a
	ld (ix+#1f),a
	inc hl
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
.l9b3b equ $ + 2
	ld ix,#0000
	ret
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	ld hl,#0000
	rrca
	jp nc,l9b4d
	ld (l9605),hl
.l9b4d
	rrca
	jp nc,l9b54
	ld (l95a6),hl
.l9b54
	rrca
	jp z,l9b5b
	ld (l954a),hl
.l9b5b
	ret
;
; play &9335
; nolist

; org #7639
; ld hl,#4cec	; music menu
; push hl
; call #9a38
; ld hl,#4bba
; ex (sp),hl
; call #9ac4
; pop af
; ret

; org #8dd4
; ld hl,#50ea	; music ingame level
; push hl
; call #9a38
; pop af
; ret

; org #867f
; ld hl,#5503	; end game
; push hl
; call #9a38
; pop af
; ret
;
.init_music		; added by Megachur
;
	ld hl,l4cec			; music menu
	or a
	jp z,jp_init_music

	ld hl,l50ea			; music ingame level
	dec a
	jp z,jp_init_music

	ld hl,l5503			; end game

.jp_init_music
	push hl
	call real_init_music
	pop af
	ret
;
.music_info
	db "Baba's Palace - Menu (2017)(Cpcretrodev.ByteRealms)(John McKlain)",0
	db "StArkos",0

	read "music_end.asm"
