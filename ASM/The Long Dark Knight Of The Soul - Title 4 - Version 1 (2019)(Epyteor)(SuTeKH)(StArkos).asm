; Music of The Long Dark Knight Of The Soul - Title 4 - Version 1 (2019)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 06/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TLDKST41.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #c17a

	read "music_header.asm"

	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#03,#0d,#03,#c8,#c1,#d1,#c1
	db #e2,#c1,#f0,#c1,#06,#c2,#0d,#c2
	db #1e,#c2,#27,#c2,#3d,#c2,#4b,#c2
	db #61,#c2,#75,#c2,#8b,#c2,#9c,#c2
	db #a7,#c2,#cc,#c2,#11,#c3,#26,#c3
	db #3c,#c3,#50,#c3,#66,#c3,#7c,#c3
	db #92,#c3,#a6,#c3,#bc,#c3,#d5,#c3
	db #ee,#c3,#07,#c4,#16,#c4,#2f,#c4
	db #48,#c4,#61,#c4,#7a,#c4,#00,#00
	db #00,#00,#00,#00,#0d,#ca,#c1,#01
	db #00,#3a,#65,#c3,#01,#36,#60,#fa
	db #01,#32,#60,#a4,#02,#0d,#ca,#c1
	db #01,#00,#09,#2c,#18,#09,#2c,#18
	db #09,#2c,#18,#0d,#ca,#c1,#01,#00
	db #6c,#0c,#09,#2e,#24,#09,#2e,#24
	db #09,#2e,#24,#09,#2e,#24,#09,#2e
	db #24,#0d,#ca,#c1,#01,#00,#6c,#0c
	db #0d,#ca,#c1,#01,#00,#36,#65,#d5
	db #00,#32,#63,#52,#01,#2e,#61,#aa
	db #01,#0d,#ca,#c1,#01,#00,#28,#64
	db #0c,#20,#0d,#ca,#c1,#01,#00,#6c
	db #24,#09,#2e,#24,#09,#2e,#24,#09
	db #2e,#24,#09,#2e,#24,#09,#2e,#24
	db #0d,#ca,#c1,#01,#00,#28,#68,#0c
	db #24,#64,#0c,#20,#60,#0c,#0d,#ca
	db #c1,#01,#00,#6c,#26,#09,#2e,#24
	db #09,#2e,#24,#09,#2e,#24,#09,#2e
	db #24,#09,#2e,#24,#0d,#ca,#c1,#01
	db #00,#6c,#0d,#05,#5c,#05,#5c,#09
	db #2c,#18,#09,#2c,#18,#09,#2c,#18
	db #0d,#ca,#c1,#01,#00,#6c,#19,#09
	db #2e,#24,#09,#2e,#24,#09,#2e,#24
	db #09,#2e,#24,#09,#2e,#24,#0d,#ca
	db #c1,#01,#00,#3e,#65,#d5,#00,#3a
	db #67,#52,#01,#36,#69,#aa,#01,#0d
	db #ca,#c1,#01,#00,#3c,#38,#34,#30
	db #2c,#28,#0d,#ca,#c1,#01,#00,#68
	db #04,#7c,#04,#78,#04,#74,#04,#70
	db #04,#6c,#04,#68,#04,#64,#04,#60
	db #04,#5c,#04,#58,#04,#54,#04,#50
	db #04,#4c,#04,#48,#04,#44,#04,#0d
	db #ca,#c1,#01,#00,#e8,#ff,#ff,#04
	db #fc,#ff,#ff,#04,#f8,#ff,#ff,#04
	db #f4,#ff,#ff,#04,#f0,#ff,#ff,#04
	db #ec,#ff,#ff,#04,#e8,#ff,#ff,#04
	db #e4,#ff,#ff,#04,#e0,#ff,#ff,#04
	db #dc,#ff,#ff,#04,#d8,#ff,#ff,#04
	db #d4,#ff,#ff,#04,#d0,#ff,#ff,#04
	db #cc,#ff,#ff,#04,#c8,#ff,#ff,#04
	db #c4,#ff,#ff,#04,#0d,#ca,#c1,#01
	db #00,#2c,#09,#2e,#24,#09,#2e,#24
	db #09,#2e,#24,#09,#2e,#24,#09,#2e
	db #24,#0d,#ca,#c1,#01,#00,#6c,#11
	db #09,#2e,#24,#09,#2e,#24,#09,#2e
	db #24,#09,#2e,#24,#09,#2e,#24,#0d
	db #ca,#c1,#01,#00,#6c,#02,#05,#5c
	db #05,#5c,#09,#2e,#18,#09,#2e,#18
	db #09,#2e,#18,#0d,#ca,#c1,#01,#00
	db #6c,#0e,#09,#2e,#24,#09,#2e,#24
	db #09,#2e,#24,#09,#2e,#24,#09,#2e
	db #24,#0d,#ca,#c1,#01,#00,#6c,#18
	db #09,#2e,#24,#09,#2e,#24,#09,#2e
	db #24,#09,#2e,#24,#09,#2e,#24,#0d
	db #ca,#c1,#01,#00,#6c,#1d,#09,#2e
	db #24,#09,#2e,#24,#09,#2e,#24,#09
	db #2e,#24,#09,#2e,#24,#0d,#ca,#c1
	db #01,#00,#6c,#0e,#05,#5c,#05,#5c
	db #09,#2c,#18,#09,#2c,#18,#09,#2c
	db #18,#0d,#ca,#c1,#01,#00,#6c,#1a
	db #09,#2e,#24,#09,#2e,#24,#09,#2e
	db #24,#09,#2e,#24,#09,#2e,#24,#0d
	db #ca,#c1,#01,#00,#18,#64,#04,#64
	db #07,#20,#60,#04,#60,#07,#1c,#5c
	db #04,#5c,#07,#18,#58,#04,#58,#07
	db #0d,#ca,#c1,#01,#00,#18,#64,#05
	db #64,#07,#20,#60,#05,#60,#07,#1c
	db #5c,#05,#5c,#07,#18,#58,#05,#58
	db #07,#0d,#ca,#c1,#01,#00,#18,#64
	db #02,#64,#07,#20,#60,#02,#60,#07
	db #1c,#5c,#02,#5c,#07,#18,#58,#02
	db #58,#07,#0d,#ca,#c1,#01,#00,#70
	db #fd,#70,#09,#6c,#fd,#6c,#fd,#68
	db #fd,#0d,#11,#c4,#01,#00,#18,#64
	db #09,#64,#05,#20,#60,#09,#60,#05
	db #1c,#5c,#09,#5c,#05,#18,#58,#09
	db #58,#05,#0d,#ca,#c1,#01,#00,#18
	db #64,#0a,#64,#05,#20,#60,#0a,#60
	db #05,#1c,#5c,#0a,#5c,#05,#18,#58
	db #0a,#58,#05,#0d,#ca,#c1,#01,#00
	db #18,#64,#07,#64,#05,#20,#60,#07
	db #60,#05,#1c,#5c,#07,#5c,#05,#18
	db #58,#07,#58,#05,#0d,#ca,#c1,#01
	db #00,#18,#64,#03,#64,#08,#20,#60
	db #03,#60,#08,#1c,#5c,#03,#5c,#08
	db #18,#58,#03,#58,#08,#0d,#ca,#c1
	db #01,#00,#18,#64,#05,#64,#0a,#20
	db #60,#05,#60,#0a,#1c,#5c,#05,#5c
	db #0a,#18,#58,#05,#58,#0a,#0d,#ca
	db #c1,#40,#00,#00,#00,#2f,#c5,#00
	db #30,#c5,#38,#c5,#d0,#c5,#00,#e6
	db #c5,#38,#c5,#d0,#c5,#00,#12,#c6
	db #6a,#c6,#02,#c7,#00,#5a,#c7,#6a
	db #c6,#87,#c7,#00,#12,#c6,#6a,#c6
	db #02,#c7,#00,#c1,#c7,#6a,#c6,#11
	db #c8,#00,#4b,#c8,#a5,#c8,#3d,#c9
	db #00,#93,#c9,#6a,#c6,#ea,#c9,#00
	db #3d,#ca,#a5,#c8,#90,#ca,#00,#e3
	db #ca,#42,#cb,#da,#cb,#00,#30,#c5
	db #6a,#c6,#d0,#c5,#00,#e6,#c5,#6a
	db #c6,#d0,#c5,#00,#36,#cc,#6a,#c6
	db #68,#cc,#00,#36,#cc,#6a,#c6,#ba
	db #cc,#00,#36,#cc,#6a,#c6,#f3,#cc
	db #00,#36,#cc,#6a,#c6,#45,#cd,#00
	db #a4,#cd,#a5,#c8,#d6,#cd,#00,#36
	db #cc,#6a,#c6,#11,#ce,#00,#6d,#ce
	db #42,#cb,#9f,#ce,#00,#36,#cc,#6a
	db #c6,#e0,#ce,#00,#36,#cc,#6a,#c6
	db #e6,#c5,#01,#a7,#c4,#00,#42,#60
	db #00,#42,#80,#00,#00,#00,#8a,#e1
	db #00,#00,#01,#9c,#60,#02,#9c,#60
	db #03,#02,#b4,#60,#04,#02,#8a,#60
	db #01,#9c,#60,#02,#8a,#60,#05,#b4
	db #60,#02,#9c,#60,#04,#02,#da,#60
	db #06,#9c,#60,#02,#9c,#60,#07,#02
	db #cc,#60,#08,#02,#9c,#60,#04,#02
	db #8a,#60,#01,#98,#60,#02,#98,#60
	db #09,#02,#8a,#60,#05,#02,#9a,#60
	db #0a,#9a,#60,#02,#9a,#60,#0b,#02
	db #8a,#60,#01,#02,#4b,#9c,#60,#02
	db #9c,#60,#03,#02,#b4,#60,#04,#02
	db #8a,#60,#01,#9c,#60,#02,#8a,#60
	db #05,#b4,#60,#02,#9c,#60,#04,#02
	db #da,#60,#06,#9c,#60,#02,#9c,#60
	db #07,#02,#b4,#60,#08,#02,#9c,#60
	db #04,#02,#8a,#60,#01,#98,#60,#02
	db #98,#60,#09,#02,#8a,#60,#05,#02
	db #9a,#60,#0a,#9a,#60,#02,#9a,#60
	db #0b,#02,#8a,#60,#05,#00,#42,#60
	db #00,#42,#80,#00,#00,#3e,#26,#8a
	db #6d,#0c,#8a,#49,#8a,#4d,#8a,#49
	db #04,#8a,#45,#00,#42,#60,#00,#42
	db #80,#00,#00,#3e,#1e,#c8,#e5,#7e
	db #00,#0d,#42,#00,#c8,#4b,#c8,#49
	db #c8,#47,#42,#00,#c2,#49,#42,#00
	db #c2,#45,#42,#00,#ba,#49,#42,#00
	db #ba,#45,#42,#00,#b4,#49,#42,#00
	db #a2,#e9,#00,#00,#0e,#02,#9c,#51
	db #02,#ac,#49,#02,#a2,#51,#02,#b6
	db #49,#02,#75,#02,#a2,#51,#02,#b4
	db #49,#02,#b4,#51,#02,#63,#02,#b4
	db #53,#02,#75,#02,#a2,#55,#02,#75
	db #02,#b4,#57,#02,#63,#02,#b4,#59
	db #02,#75,#02,#a2,#5b,#02,#75,#02
	db #b4,#5d,#02,#a2,#49,#02,#63,#6b
	db #6d,#71,#75,#02,#a2,#51,#6b,#b0
	db #49,#b0,#51,#75,#02,#ac,#49,#02
	db #71,#02,#b4,#51,#02,#b4,#49,#00
	db #8a,#e1,#00,#00,#01,#9c,#60,#02
	db #9c,#60,#03,#02,#b4,#60,#04,#02
	db #8a,#60,#01,#9c,#60,#02,#8a,#60
	db #0c,#b4,#60,#02,#9c,#60,#04,#02
	db #da,#60,#06,#9c,#60,#02,#9c,#60
	db #07,#02,#cc,#60,#08,#02,#9c,#60
	db #04,#02,#8a,#60,#01,#98,#60,#02
	db #98,#60,#09,#02,#8a,#60,#0c,#02
	db #9a,#60,#0a,#9a,#60,#02,#9a,#60
	db #0b,#02,#8a,#60,#01,#02,#4b,#9c
	db #60,#02,#9c,#60,#03,#02,#b4,#60
	db #04,#02,#8a,#60,#01,#9c,#60,#02
	db #8a,#60,#0c,#b4,#60,#02,#9c,#60
	db #04,#02,#da,#60,#06,#9c,#60,#02
	db #9c,#60,#07,#02,#b4,#60,#08,#02
	db #9c,#60,#04,#02,#8a,#60,#01,#98
	db #60,#02,#98,#60,#09,#02,#8a,#60
	db #0c,#02,#9a,#60,#0a,#9a,#60,#02
	db #9a,#60,#0b,#02,#8a,#60,#0c,#00
	db #ac,#e5,#00,#00,#0e,#02,#a2,#4d
	db #02,#b4,#45,#02,#ac,#4d,#02,#be
	db #45,#02,#7b,#02,#ac,#4d,#02,#ba
	db #45,#02,#ba,#4d,#02,#6d,#02,#ba
	db #4f,#02,#7b,#02,#ac,#51,#02,#7b
	db #02,#ba,#53,#02,#6d,#02,#ba,#55
	db #02,#7b,#02,#ac,#57,#02,#7b,#02
	db #ba,#59,#02,#ac,#45,#02,#6d,#71
	db #75,#77,#7b,#02,#ac,#4d,#71,#b6
	db #45,#b6,#4d,#7b,#02,#b4,#45,#02
	db #77,#02,#ba,#4d,#02,#ba,#45,#00
	db #b0,#f1,#00,#00,#0e,#02,#a2,#49
	db #02,#b4,#59,#02,#b0,#51,#02,#b4
	db #59,#02,#b4,#51,#02,#b0,#5b,#02
	db #b4,#53,#02,#b4,#5b,#02,#a2,#53
	db #02,#b4,#5d,#02,#b4,#57,#02,#b4
	db #5d,#02,#a2,#57,#00,#b6,#ed,#00
	db #00,#0e,#02,#ac,#45,#02,#ba,#55
	db #02,#ba,#4d,#02,#ba,#55,#02,#ac
	db #4d,#02,#ba,#57,#02,#ba,#4f,#02
	db #ba,#57,#02,#ac,#4f,#02,#ba,#59
	db #02,#ba,#53,#02,#ba,#59,#02,#ac
	db #53,#32,#8a,#6d,#0c,#8a,#49,#8a
	db #4d,#8a,#49,#04,#8a,#45,#00,#b0
	db #f1,#00,#00,#0e,#02,#ba,#49,#02
	db #b4,#59,#02,#b4,#51,#02,#b4,#59
	db #02,#a2,#51,#02,#b4,#5b,#02,#b4
	db #53,#02,#b4,#5b,#02,#a2,#53,#02
	db #b4,#5d,#02,#b4,#57,#02,#b4,#5d
	db #02,#a2,#57,#2a,#c8,#e5,#7e,#00
	db #0d,#42,#00,#c8,#4b,#c8,#49,#c8
	db #47,#42,#00,#c2,#49,#42,#00,#c2
	db #45,#42,#00,#ba,#49,#42,#00,#ba
	db #45,#42,#00,#b4,#49,#42,#00,#b6
	db #ed,#00,#00,#0e,#02,#c4,#45,#02
	db #ba,#55,#02,#ba,#4d,#02,#ba,#55
	db #02,#c4,#4d,#02,#ba,#57,#02,#ba
	db #4f,#02,#ba,#57,#02,#c4,#4f,#02
	db #ba,#59,#02,#ba,#53,#02,#ba,#59
	db #02,#c4,#53,#32,#8a,#6d,#0c,#8a
	db #49,#8a,#4d,#8a,#49,#04,#8a,#45
	db #00,#b6,#e9,#00,#00,#0e,#02,#a6
	db #51,#02,#ac,#49,#02,#b6,#51,#02
	db #a6,#49,#02,#6d,#02,#b6,#51,#02
	db #9e,#49,#02,#ac,#51,#02,#77,#02
	db #5f,#02,#ac,#55,#02,#77,#02,#5f
	db #02,#ac,#59,#02,#77,#02,#5f,#02
	db #ac,#5d,#02,#b6,#49,#02,#77,#02
	db #77,#02,#b6,#71,#0f,#02,#b6,#69
	db #0e,#02,#77,#02,#77,#02,#b6,#71
	db #0f,#02,#b6,#69,#0e,#02,#77,#02
	db #77,#02,#ba,#4d,#b6,#49,#75,#02
	db #71,#ba,#4d,#8a,#e1,#00,#00,#01
	db #a6,#60,#02,#a6,#60,#03,#02,#be
	db #60,#04,#02,#8a,#60,#01,#a6,#60
	db #02,#8a,#60,#0c,#be,#60,#02,#a6
	db #60,#04,#02,#d6,#60,#06,#a6,#60
	db #02,#a6,#60,#10,#02,#d6,#60,#08
	db #02,#a6,#60,#04,#02,#8a,#60,#01
	db #b4,#60,#02,#b4,#60,#11,#02,#8a
	db #60,#0c,#02,#ba,#60,#12,#ba,#60
	db #02,#ba,#60,#13,#02,#8a,#60,#01
	db #02,#4b,#be,#60,#02,#be,#60,#10
	db #02,#be,#60,#04,#02,#8a,#60,#01
	db #be,#60,#02,#8a,#60,#0c,#b4,#60
	db #02,#a6,#60,#04,#02,#d6,#60,#06
	db #a6,#60,#02,#a6,#60,#10,#02,#be
	db #60,#08,#02,#a6,#60,#04,#02,#8a
	db #60,#01,#b4,#60,#02,#b4,#60,#11
	db #02,#8a,#60,#0c,#02,#ba,#60,#12
	db #ba,#60,#02,#ba,#60,#13,#02,#8a
	db #60,#0c,#00,#be,#e5,#00,#00,#0e
	db #02,#c4,#4d,#02,#b6,#45,#02,#be
	db #4d,#02,#ac,#45,#02,#77,#02,#ac
	db #4d,#02,#a6,#45,#02,#b6,#4d,#02
	db #6d,#02,#67,#02,#b6,#51,#02,#6d
	db #02,#67,#02,#b6,#55,#02,#6d,#02
	db #67,#02,#b6,#59,#02,#be,#45,#02
	db #7f,#02,#7f,#02,#b6,#4d,#02,#be
	db #45,#02,#7f,#02,#7f,#02,#b6,#4d
	db #02,#be,#45,#02,#7f,#02,#7f,#02
	db #c0,#49,#be,#45,#7b,#02,#77,#c0
	db #49,#b4,#e9,#00,#00,#0e,#02,#ac
	db #51,#02,#ac,#49,#02,#b4,#51,#02
	db #a2,#49,#02,#7b,#02,#b4,#71,#0f
	db #02,#ac,#69,#0e,#02,#ba,#51,#02
	db #75,#02,#6d,#02,#7b,#02,#b4,#55
	db #02,#6d,#02,#7b,#02,#b4,#59,#02
	db #6d,#02,#7b,#02,#ac,#49,#02,#6d
	db #02,#6d,#02,#ac,#71,#0f,#02,#aa
	db #69,#0e,#02,#6d,#02,#6d,#02,#aa
	db #51,#02,#ac,#49,#02,#6d,#02,#6d
	db #02,#75,#71,#6d,#02,#71,#b4,#4f
	db #ba,#e5,#00,#00,#0e,#02,#c4,#4d
	db #02,#b4,#45,#02,#ba,#4d,#02,#ac
	db #45,#02,#85,#02,#b4,#4d,#02,#b4
	db #45,#02,#b4,#4d,#02,#85,#02,#75
	db #02,#75,#02,#c4,#51,#02,#75,#02
	db #75,#02,#c4,#55,#02,#75,#02,#75
	db #02,#b4,#45,#02,#75,#02,#75,#02
	db #ac,#4d,#02,#b0,#45,#02,#73,#02
	db #75,#02,#ba,#4d,#02,#b4,#45,#02
	db #75,#02,#75,#02,#7b,#77,#75,#02
	db #77,#ba,#4b,#b6,#e9,#00,#00,#0e
	db #02,#a6,#51,#02,#ac,#49,#02,#b6
	db #51,#02,#a6,#49,#02,#6d,#02,#b6
	db #51,#02,#9e,#49,#02,#ac,#51,#02
	db #77,#02,#5f,#02,#ac,#55,#02,#77
	db #02,#5f,#02,#ac,#59,#02,#77,#02
	db #5f,#02,#6d,#02,#b6,#49,#02,#77
	db #02,#77,#02,#b6,#51,#02,#b6,#49
	db #02,#77,#02,#77,#02,#b6,#51,#02
	db #b6,#49,#02,#77,#02,#77,#02,#7b
	db #77,#75,#02,#77,#ba,#4f,#be,#e5
	db #00,#00,#0e,#02,#c4,#4d,#02,#b6
	db #45,#02,#be,#4d,#02,#ac,#45,#02
	db #77,#02,#ac,#4d,#02,#a6,#45,#02
	db #b6,#4d,#02,#6d,#02,#67,#02,#b6
	db #51,#02,#6d,#02,#67,#02,#b6,#55
	db #02,#6d,#02,#67,#02,#77,#02,#be
	db #45,#02,#7f,#02,#7f,#02,#b6,#4d
	db #02,#be,#45,#02,#7f,#02,#7f,#02
	db #c4,#4d,#02,#be,#45,#02,#7f,#02
	db #7f,#02,#81,#7f,#7b,#02,#7f,#c0
	db #4b,#ba,#e9,#00,#00,#0e,#02,#aa
	db #51,#02,#b0,#49,#02,#ba,#51,#02
	db #aa,#49,#02,#83,#02,#ba,#51,#02
	db #ba,#49,#02,#c2,#51,#02,#7b,#02
	db #7b,#02,#c2,#55,#02,#7b,#02,#7b
	db #02,#c2,#59,#02,#7b,#02,#c2,#49
	db #81,#be,#4b,#7d,#ba,#4d,#79,#b6
	db #4f,#75,#b2,#51,#71,#ae,#4f,#6d
	db #aa,#4d,#69,#a6,#4b,#65,#a2,#49
	db #02,#aa,#51,#02,#a2,#49,#02,#8a
	db #60,#0c,#8a,#45,#a2,#69,#0e,#02
	db #6b,#02,#a2,#51,#02,#a2,#49,#00
	db #8a,#e1,#00,#00,#01,#92,#60,#02
	db #92,#60,#14,#02,#c2,#60,#04,#02
	db #8a,#60,#01,#92,#60,#02,#8a,#60
	db #0c,#aa,#60,#02,#aa,#60,#04,#02
	db #da,#60,#06,#92,#60,#02,#92,#60
	db #07,#02,#da,#60,#08,#02,#aa,#60
	db #04,#02,#8a,#60,#01,#a0,#60,#02
	db #a0,#60,#15,#02,#8a,#60,#0c,#02
	db #a6,#60,#16,#a6,#60,#02,#a6,#60
	db #17,#02,#8a,#60,#01,#02,#4b,#aa
	db #60,#02,#aa,#60,#03,#02,#c2,#60
	db #04,#02,#8a,#60,#01,#aa,#60,#02
	db #8a,#60,#0c,#a0,#60,#02,#aa,#60
	db #04,#02,#da,#60,#06,#92,#60,#02
	db #92,#60,#07,#02,#c2,#60,#08,#02
	db #aa,#60,#04,#02,#8a,#60,#01,#a0
	db #60,#02,#a0,#60,#15,#02,#8a,#60
	db #0c,#02,#a6,#60,#16,#a6,#60,#02
	db #a6,#60,#17,#02,#8a,#60,#0c,#00
	db #c2,#e5,#00,#00,#0e,#02,#c8,#4d
	db #02,#ba,#45,#02,#c2,#4d,#02,#b0
	db #45,#02,#89,#02,#b0,#4d,#02,#c2
	db #45,#02,#c8,#4d,#02,#71,#02,#83
	db #02,#c8,#51,#02,#7b,#02,#83,#02
	db #c8,#55,#02,#71,#02,#c8,#45,#87
	db #c4,#47,#83,#c0,#49,#7f,#bc,#4b
	db #7b,#b8,#4d,#77,#b4,#4b,#73,#b0
	db #49,#6f,#ac,#47,#6b,#aa,#45,#02
	db #a2,#51,#02,#aa,#45,#02,#a2,#51
	db #02,#ac,#45,#02,#71,#02,#aa,#51
	db #02,#ac,#45,#00,#e4,#e1,#00,#00
	db #18,#06,#a5,#06,#a5,#02,#a5,#06
	db #a5,#06,#a5,#06,#a5,#02,#e4,#60
	db #19,#06,#e4,#60,#1a,#06,#e4,#60
	db #18,#06,#a5,#06,#a5,#02,#a5,#06
	db #a5,#06,#a5,#06,#a5,#02,#e4,#60
	db #19,#06,#e4,#60,#1a,#00,#c0,#e1
	db #00,#00,#1b,#83,#04,#89,#06,#8d
	db #02,#89,#06,#83,#06,#42,#03,#02
	db #42,#05,#02,#42,#07,#02,#42,#09
	db #02,#42,#0b,#02,#42,#0d,#02,#42
	db #0f,#02,#42,#11,#02,#42,#13,#02
	db #c0,#41,#83,#04,#85,#06,#89,#02
	db #42,#03,#42,#05,#da,#41,#02,#42
	db #05,#42,#09,#d2,#41,#02,#42,#03
	db #42,#05,#c8,#41,#02,#42,#03,#42
	db #05,#c2,#41,#02,#42,#03,#42,#05
	db #c4,#e1,#00,#00,#1b,#02,#89,#02
	db #83,#02,#83,#06,#42,#03,#02,#42
	db #05,#02,#42,#07,#02,#42,#09,#02
	db #42,#0b,#02,#42,#0d,#02,#42,#0f
	db #02,#42,#11,#02,#42,#13,#02,#42
	db #15,#02,#42,#17,#02,#42,#19,#02
	db #42,#1b,#02,#42,#1d,#02,#42,#1f
	db #00,#c0,#e1,#00,#00,#1b,#83,#04
	db #89,#06,#8d,#02,#89,#06,#93,#06
	db #42,#03,#02,#42,#05,#02,#42,#07
	db #02,#42,#09,#02,#42,#0b,#02,#42
	db #0d,#02,#42,#0f,#02,#42,#11,#02
	db #42,#13,#02,#c6,#41,#89,#04,#8d
	db #06,#89,#02,#42,#03,#42,#05,#da
	db #41,#02,#42,#03,#42,#05,#d2,#41
	db #02,#42,#03,#42,#05,#e0,#41,#02
	db #42,#03,#42,#05,#da,#41,#02,#42
	db #03,#42,#05,#e0,#e1,#00,#00,#1b
	db #02,#9d,#02,#9b,#02,#97,#02,#93
	db #06,#42,#03,#02,#42,#05,#02,#42
	db #07,#02,#42,#09,#02,#42,#0b,#02
	db #42,#0d,#02,#42,#0f,#02,#42,#11
	db #02,#42,#13,#02,#42,#15,#02,#e0
	db #43,#a5,#a1,#9d,#da,#45,#9d,#9b
	db #97,#da,#47,#97,#93,#89,#cc,#49
	db #c8,#47,#c2,#45,#c4,#43,#c8,#41
	db #02,#42,#03,#42,#05,#c8,#41,#02
	db #42,#03,#42,#05,#cc,#41,#02,#42
	db #03,#42,#05,#c8,#41,#02,#42,#03
	db #42,#05,#e4,#e1,#00,#00,#1c,#06
	db #a5,#06,#a5,#02,#a5,#06,#a5,#06
	db #a5,#06,#a5,#02,#e4,#60,#1d,#06
	db #e4,#60,#1e,#06,#e4,#60,#1c,#06
	db #a5,#06,#a5,#02,#a5,#06,#a5,#06
	db #a5,#06,#a5,#02,#e4,#60,#1d,#06
	db #e4,#60,#1e,#00,#cc,#e1,#00,#00
	db #1b,#02,#93,#02,#8d,#02,#85,#06
	db #42,#03,#02,#42,#05,#02,#42,#07
	db #02,#42,#09,#02,#42,#0b,#02,#b8
	db #41,#7b,#04,#7f,#06,#83,#06,#85
	db #06,#85,#02,#85,#02,#89,#02,#85
	db #06,#89,#02,#85,#06,#89,#02,#85
	db #06,#85,#02,#89,#02,#8d,#00,#c8
	db #e1,#00,#00,#1b,#02,#93,#02,#89
	db #02,#83,#06,#42,#03,#02,#42,#05
	db #02,#42,#07,#02,#42,#09,#02,#42
	db #0b,#02,#42,#0d,#02,#42,#0f,#02
	db #42,#11,#02,#42,#13,#02,#42,#15
	db #02,#42,#17,#02,#42,#19,#02,#42
	db #1b,#02,#c0,#41,#83,#02,#42,#03
	db #c2,#41,#85,#02,#42,#03,#c8,#41
	db #02,#42,#03,#02,#cc,#41,#02,#42
	db #03,#02,#c8,#41,#02,#42,#03,#02
	db #c4,#41,#02,#42,#03,#c4,#41,#83
	db #85,#83,#00,#e2,#e1,#00,#00,#1f
	db #06,#a3,#06,#a3,#02,#a3,#06,#a3
	db #06,#a3,#06,#a3,#02,#e4,#60,#1a
	db #06,#de,#60,#20,#06,#e2,#60,#1f
	db #06,#a3,#06,#a3,#02,#a3,#06,#a3
	db #06,#a3,#06,#a3,#02,#e4,#60,#1a
	db #06,#de,#60,#20,#00,#be,#e1,#00
	db #00,#1b,#12,#42,#03,#02,#42,#05
	db #02,#42,#07,#02,#42,#09,#02,#42
	db #0b,#02,#42,#0d,#02,#42,#0f,#02
	db #42,#11,#02,#42,#13,#02,#42,#15
	db #02,#42,#17,#02,#42,#19,#02,#42
	db #1b,#02,#bc,#41,#7f,#04,#83,#06
	db #85,#06,#87,#89,#04,#85,#06,#83
	db #04,#83,#7f,#83,#7f,#00,#ba,#e1
	db #00,#00,#1b,#12,#42,#03,#02,#42
	db #05,#02,#42,#07,#02,#42,#09,#02
	db #42,#0b,#02,#42,#0d,#02,#42,#0f
	db #02,#42,#11,#02,#42,#13,#02,#42
	db #15,#02,#42,#17,#02,#42,#19,#02
	db #42,#1b,#02,#42,#1d,#02,#42,#1f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00

	read "The Long Dark Knight Of The Soul - stArkos Player (2019)(Epyteor)(SuTeKH)(StArkos).asm"

;
.music_info
	db "The Long Dark Knight Of The Soul - Title 4 - Version 1 (2019)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
