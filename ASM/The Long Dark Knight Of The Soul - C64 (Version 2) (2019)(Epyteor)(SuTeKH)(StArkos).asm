; Music of The Long Dark Knight Of The Soul - C64 (Version 2) (2019)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 27/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TLDKSC65.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #c17a

	read "music_header.asm"

	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#12,#01,#9e,#c1,#a7,#c1
	db #ca,#c1,#f7,#c1,#02,#c2,#19,#c2
	db #26,#c2,#30,#c2,#3a,#c2,#44,#c2
	db #5e,#c2,#75,#c2,#00,#00,#00,#00
	db #00,#00,#0d,#a0,#c1,#01,#00,#7e
	db #25,#05,#7a,#3f,#04,#74,#03,#30
	db #2c,#68,#fc,#64,#fa,#60,#f9,#5c
	db #f8,#58,#f7,#54,#f6,#50,#f5,#4c
	db #f4,#48,#f3,#44,#f2,#0d,#a0,#c1
	db #01,#00,#2a,#05,#7c,#08,#78,#04
	db #36,#2f,#72,#2d,#08,#6e,#29,#04
	db #2a,#29,#66,#29,#08,#62,#28,#04
	db #1e,#27,#5a,#26,#08,#56,#25,#04
	db #12,#24,#4e,#23,#08,#4a,#22,#04
	db #06,#21,#0d,#a0,#c1,#01,#00,#2a
	db #05,#22,#03,#1a,#01,#0d,#a0,#c1
	db #01,#00,#74,#0c,#05,#5c,#05,#5c
	db #09,#2c,#18,#09,#2c,#18,#09,#2c
	db #18,#09,#2e,#24,#0d,#13,#c2,#01
	db #00,#2a,#05,#70,#0c,#2c,#28,#24
	db #20,#0d,#a0,#c1,#01,#00,#30,#70
	db #03,#70,#07,#0d,#28,#c2,#01,#00
	db #30,#70,#05,#70,#08,#0d,#32,#c2
	db #01,#00,#30,#70,#04,#70,#07,#0d
	db #3c,#c2,#01,#00,#a8,#ff,#ff,#bc
	db #ff,#ff,#bc,#ff,#ff,#bc,#01,#00
	db #bc,#01,#00,#bc,#01,#00,#bc,#ff
	db #ff,#0d,#49,#c2,#01,#00,#a8,#ff
	db #ff,#bc,#ff,#ff,#bc,#ff,#ff,#b8
	db #01,#00,#b8,#01,#00,#b8,#01,#00
	db #0d,#a0,#c1,#01,#00,#e8,#fe,#ff
	db #24,#fc,#fe,#ff,#18,#fc,#fe,#ff
	db #0c,#bc,#02,#00,#bc,#02,#00,#bc
	db #02,#00,#bc,#fe,#ff,#bc,#fe,#ff
	db #bc,#fe,#ff,#0d,#83,#c2,#60,#00
	db #00,#00,#2e,#c3,#00,#2f,#c3,#37
	db #c3,#2f,#c3,#10,#e7,#c3,#2b,#c4
	db #2f,#c3,#40,#00,#ad,#c4,#2b,#c4
	db #01,#c5,#00,#ad,#c4,#2b,#c4,#01
	db #c5,#00,#e7,#c3,#2b,#c4,#2f,#c3
	db #00,#ad,#c4,#2b,#c4,#36,#c5,#00
	db #ad,#c4,#2b,#c4,#a6,#c5,#00,#ad
	db #c4,#2b,#c4,#01,#c5,#00,#ad,#c4
	db #2b,#c4,#01,#c5,#00,#ad,#c4,#2b
	db #c4,#36,#c5,#00,#ad,#c4,#2b,#c4
	db #a6,#c5,#00,#e7,#c3,#2b,#c4,#2f
	db #c3,#00,#e7,#c3,#2b,#c4,#10,#c6
	db #00,#73,#c6,#2b,#c4,#b7,#c6,#00
	db #1a,#c7,#2b,#c4,#5e,#c7,#00,#c1
	db #c7,#2b,#c4,#05,#c8,#00,#ad,#c4
	db #2b,#c4,#36,#c5,#00,#ad,#c4,#2b
	db #c4,#a6,#c5,#00,#ad,#c4,#2b,#c4
	db #01,#c5,#00,#ad,#c4,#2b,#c4,#01
	db #c5,#01,#c2,#c2,#00,#42,#60,#00
	db #42,#80,#00,#00,#00,#8a,#e1,#00
	db #00,#01,#06,#4b,#06,#4b,#06,#4b
	db #06,#4b,#06,#4b,#06,#4b,#8a,#60
	db #02,#4b,#02,#4b,#4b,#8a,#60,#01
	db #8a,#60,#02,#8a,#60,#01,#8a,#60
	db #03,#4b,#8a,#60,#01,#8a,#60,#02
	db #8a,#60,#03,#4b,#4b,#8a,#60,#01
	db #8a,#60,#03,#4b,#4b,#8a,#60,#02
	db #8a,#60,#03,#4b,#8a,#60,#01,#4b
	db #8a,#60,#03,#8a,#60,#01,#4b,#8a
	db #60,#02,#8a,#60,#01,#8a,#60,#03
	db #4b,#8a,#60,#01,#8a,#60,#03,#4b
	db #8a,#60,#01,#8a,#60,#02,#8a,#60
	db #03,#4b,#8a,#60,#01,#4b,#8a,#60
	db #03,#4b,#8a,#60,#01,#8a,#60,#02
	db #8a,#60,#03,#4b,#4b,#8a,#60,#01
	db #8a,#60,#03,#4b,#4b,#8a,#60,#02
	db #8a,#60,#03,#4b,#8a,#60,#01,#4b
	db #8a,#60,#03,#8a,#60,#01,#4b,#8a
	db #60,#02,#8a,#60,#01,#8a,#60,#03
	db #4b,#8a,#60,#01,#8a,#60,#03,#4b
	db #8a,#60,#01,#8a,#60,#02,#8a,#60
	db #03,#4b,#8a,#60,#01,#a2,#e1,#00
	db #00,#04,#63,#7b,#63,#77,#7b,#02
	db #63,#02,#63,#7b,#63,#77,#7b,#81
	db #63,#63,#63,#7b,#63,#77,#7b,#02
	db #63,#02,#63,#7b,#63,#63,#7b,#5f
	db #77,#63,#63,#7b,#63,#77,#7b,#02
	db #63,#02,#63,#7b,#63,#77,#7b,#81
	db #7b,#63,#63,#7b,#63,#77,#7b,#02
	db #63,#02,#63,#7b,#63,#63,#7b,#5f
	db #77,#8a,#e1,#00,#00,#01,#ea,#60
	db #05,#93,#7b,#8a,#60,#02,#ba,#60
	db #05,#93,#ab,#8a,#60,#01,#ea,#60
	db #05,#93,#7b,#8a,#60,#02,#ba,#60
	db #05,#93,#ab,#8a,#60,#01,#ea,#60
	db #05,#93,#7b,#8a,#60,#02,#ba,#60
	db #05,#93,#ab,#8a,#60,#01,#ea,#60
	db #05,#93,#7b,#8a,#60,#02,#ba,#60
	db #05,#93,#ab,#8a,#60,#01,#ea,#60
	db #05,#93,#7b,#8a,#60,#02,#ba,#60
	db #05,#93,#ab,#8a,#60,#01,#ea,#60
	db #05,#93,#7b,#8a,#60,#02,#ba,#60
	db #05,#93,#ab,#8a,#60,#01,#ea,#60
	db #05,#93,#7b,#8a,#60,#02,#ba,#60
	db #05,#93,#ab,#8a,#60,#01,#ea,#60
	db #05,#93,#7b,#8a,#60,#02,#ba,#60
	db #05,#93,#ab,#a2,#e1,#00,#00,#04
	db #63,#7b,#63,#77,#7b,#02,#63,#ba
	db #60,#06,#a2,#60,#04,#7b,#63,#77
	db #7b,#81,#7b,#6d,#6d,#85,#6d,#81
	db #85,#02,#6d,#ba,#60,#07,#c0,#60
	db #04,#85,#7b,#81,#85,#81,#7b,#5f
	db #5f,#77,#5f,#73,#77,#02,#5f,#b6
	db #60,#08,#9e,#60,#04,#77,#5f,#73
	db #77,#5f,#77,#5b,#5b,#73,#5b,#71
	db #73,#02,#5f,#b6,#60,#08,#9e,#60
	db #04,#77,#5f,#73,#77,#73,#77,#d2
	db #e3,#00,#00,#06,#06,#42,#05,#06
	db #42,#07,#06,#42,#09,#06,#d2,#63
	db #07,#06,#42,#05,#06,#42,#07,#06
	db #42,#09,#06,#ce,#63,#08,#06,#42
	db #05,#06,#42,#07,#06,#42,#09,#06
	db #ca,#43,#06,#42,#05,#06,#ce,#43
	db #06,#42,#05,#00,#a2,#e3,#00,#00
	db #09,#42,#05,#ba,#43,#42,#05,#b6
	db #63,#0a,#ba,#60,#09,#42,#05,#c0
	db #43,#42,#05,#c0,#63,#0a,#ba,#60
	db #09,#42,#05,#c4,#63,#0a,#c8,#60
	db #09,#42,#05,#c4,#43,#10,#42,#05
	db #02,#42,#07,#02,#42,#09,#02,#c8
	db #63,#0a,#8b,#ce,#60,#09,#02,#42
	db #05,#ca,#43,#02,#42,#05,#c8,#43
	db #42,#05,#ca,#43,#02,#42,#05,#c8
	db #43,#02,#42,#05,#c4,#43,#42,#05
	db #c0,#43,#04,#42,#05,#c0,#63,#0a
	db #85,#89,#ce,#60,#09,#02,#42,#05
	db #c8,#43,#42,#05,#c4,#43,#42,#05
	db #c0,#43,#42,#05,#c4,#e3,#00,#00
	db #09,#42,#05,#c0,#43,#42,#05,#ba
	db #63,#0a,#c0,#60,#09,#42,#05,#c4
	db #43,#42,#05,#c4,#63,#0a,#c8,#60
	db #09,#42,#05,#ce,#63,#0a,#d6,#60
	db #09,#42,#05,#d2,#43,#10,#42,#05
	db #02,#42,#07,#02,#42,#09,#02,#ce
	db #63,#0a,#8b,#ce,#60,#09,#02,#42
	db #05,#d2,#43,#02,#42,#05,#ce,#43
	db #42,#05,#d2,#43,#02,#42,#05,#d6
	db #43,#02,#42,#05,#dc,#43,#42,#05
	db #d8,#43,#06,#42,#05,#d6,#63,#0a
	db #93,#d6,#60,#09,#04,#42,#05,#02
	db #ce,#43,#02,#42,#05,#00,#72,#e3
	db #00,#00,#0b,#02,#42,#05,#72,#43
	db #02,#42,#05,#72,#43,#02,#39,#02
	db #42,#05,#80,#43,#02,#42,#05,#86
	db #43,#02,#4b,#02,#42,#05,#8a,#43
	db #02,#42,#05,#8a,#43,#02,#51,#02
	db #42,#05,#94,#43,#02,#42,#05,#98
	db #43,#02,#55,#02,#42,#05,#90,#43
	db #02,#42,#05,#8a,#43,#02,#4b,#02
	db #42,#05,#02,#42,#07,#02,#42,#09
	db #02,#42,#0b,#02,#42,#0d,#02,#42
	db #0f,#02,#42,#11,#02,#42,#13,#02
	db #42,#15,#02,#42,#17,#02,#42,#19
	db #00,#9e,#e1,#00,#00,#04,#5f,#77
	db #5f,#73,#77,#02,#5f,#02,#5f,#77
	db #5f,#73,#77,#7f,#5f,#5f,#5f,#77
	db #5f,#73,#77,#02,#5f,#02,#5f,#77
	db #5f,#5f,#77,#5b,#73,#63,#63,#7b
	db #63,#77,#7b,#02,#63,#02,#63,#7b
	db #63,#77,#7b,#81,#7b,#63,#63,#7b
	db #63,#77,#7b,#02,#63,#02,#63,#7b
	db #63,#63,#7b,#5f,#77,#8e,#e3,#00
	db #00,#0b,#02,#42,#05,#8e,#43,#02
	db #42,#05,#8e,#43,#02,#51,#02,#42
	db #05,#94,#43,#02,#42,#05,#90,#43
	db #02,#4f,#02,#42,#05,#8e,#43,#02
	db #42,#05,#8e,#43,#02,#51,#02,#42
	db #05,#94,#43,#02,#42,#05,#90,#43
	db #02,#4f,#02,#42,#05,#90,#43,#02
	db #42,#05,#8e,#43,#02,#4b,#02,#42
	db #05,#02,#42,#07,#02,#42,#09,#02
	db #42,#0b,#02,#42,#0d,#02,#42,#0f
	db #02,#42,#11,#02,#8a,#43,#02,#42
	db #05,#02,#90,#43,#02,#42,#05,#00
	db #ac,#e1,#00,#00,#04,#6d,#85,#6d
	db #81,#85,#02,#6d,#02,#6d,#85,#6d
	db #81,#85,#8b,#6d,#6d,#6d,#85,#6d
	db #81,#85,#02,#6d,#02,#6d,#85,#6d
	db #6d,#85,#69,#81,#63,#63,#7b,#63
	db #77,#7b,#02,#63,#02,#63,#7b,#63
	db #77,#7b,#81,#7b,#63,#63,#7b,#63
	db #77,#7b,#02,#63,#02,#63,#7b,#63
	db #63,#7b,#5f,#77,#94,#e3,#00,#00
	db #0b,#02,#42,#05,#94,#43,#02,#42
	db #05,#94,#43,#02,#59,#02,#42,#05
	db #9a,#43,#02,#42,#05,#98,#43,#02
	db #55,#02,#42,#05,#94,#43,#02,#42
	db #05,#94,#43,#02,#59,#02,#42,#05
	db #9a,#43,#02,#42,#05,#98,#43,#02
	db #51,#02,#42,#05,#8e,#43,#02,#42
	db #05,#8a,#43,#02,#4b,#02,#42,#05
	db #02,#42,#07,#02,#42,#09,#02,#42
	db #0b,#02,#42,#0d,#02,#42,#0f,#02
	db #42,#11,#02,#8a,#43,#02,#42,#05
	db #02,#90,#43,#02,#42,#05,#00,#ac
	db #e1,#00,#00,#04,#6d,#85,#6d,#81
	db #85,#02,#6d,#02,#6d,#85,#6d,#81
	db #85,#8b,#6d,#6d,#6d,#85,#6d,#81
	db #85,#02,#6d,#02,#6d,#85,#6d,#6d
	db #85,#69,#81,#59,#59,#71,#59,#6d
	db #71,#02,#59,#02,#59,#71,#59,#6d
	db #71,#77,#71,#59,#59,#71,#59,#6d
	db #71,#02,#59,#02,#59,#71,#59,#59
	db #71,#55,#6d,#94,#e3,#00,#00,#0b
	db #02,#42,#05,#94,#43,#02,#42,#05
	db #94,#43,#02,#59,#02,#42,#05,#9a
	db #43,#02,#42,#05,#98,#43,#02,#55
	db #02,#42,#05,#94,#43,#02,#42,#05
	db #94,#43,#02,#59,#02,#42,#05,#9a
	db #43,#02,#42,#05,#94,#43,#02,#59
	db #02,#42,#05,#02,#42,#07,#02,#42
	db #09,#02,#42,#0b,#02,#42,#0d,#02
	db #98,#43,#5b,#59,#55,#59,#02,#42
	db #05,#02,#42,#07,#02,#42,#09,#02
	db #42,#0b,#02,#42,#0d,#02,#42,#0f
	db #02,#42,#11,#00,#00

	read "The Long Dark Knight Of The Soul - stArkos Player (2019)(Epyteor)(SuTeKH)(StArkos).asm"

;
.music_info
	db "The Long Dark Knight Of The Soul - C64 (Version 2) (2019)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
