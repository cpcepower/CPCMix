; Music of The Long Dark Knight Of The Soul - Chubby 2 The Chip Chip (2019)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 06/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TLDKSC2C.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #c17a

	read "music_header.asm"

	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#43,#01,#a4,#c1,#ad,#c1
	db #c8,#c1,#d4,#c1,#f1,#c1,#0e,#c2
	db #22,#c2,#39,#c2,#4b,#c2,#55,#c2
	db #67,#c2,#77,#c2,#94,#c2,#9a,#c2
	db #b7,#c2,#00,#00,#00,#00,#00,#00
	db #0d,#a6,#c1,#01,#00,#b4,#01,#00
	db #fc,#ff,#ff,#03,#f8,#01,#00,#07
	db #b4,#ff,#ff,#f0,#01,#00,#03,#ec
	db #ff,#ff,#07,#0d,#a6,#c1,#01,#00
	db #74,#0c,#3c,#34,#2c,#24,#1c,#0d
	db #a6,#c1,#01,#00,#f4,#01,#00,#fe
	db #fc,#ff,#ff,#02,#f8,#01,#00,#05
	db #f4,#ff,#ff,#fe,#f0,#01,#00,#02
	db #ec,#ff,#ff,#05,#0d,#a6,#c1,#01
	db #00,#3a,#65,#c3,#01,#36,#60,#fa
	db #01,#32,#60,#a4,#02,#09,#2c,#18
	db #09,#2c,#18,#09,#2c,#18,#09,#2e
	db #24,#0d,#08,#c2,#01,#00,#3a,#65
	db #c3,#01,#36,#60,#fa,#01,#32,#60
	db #a4,#02,#09,#2e,#24,#0d,#1c,#c2
	db #01,#00,#2a,#05,#05,#5c,#05,#5c
	db #09,#2c,#18,#09,#2c,#18,#09,#2c
	db #18,#09,#2e,#24,#0d,#33,#c2,#01
	db #00,#3a,#25,#76,#27,#03,#72,#29
	db #07,#34,#74,#03,#74,#07,#0d,#a6
	db #c1,#01,#00,#2a,#05,#09,#2e,#24
	db #0d,#4f,#c2,#01,#00,#3a,#25,#76
	db #27,#04,#72,#29,#07,#34,#74,#04
	db #74,#07,#0d,#a6,#c1,#01,#00,#3a
	db #25,#74,#03,#70,#08,#34,#74,#03
	db #74,#08,#0d,#a6,#c1,#01,#00,#3a
	db #65,#d5,#00,#36,#67,#52,#01,#32
	db #69,#aa,#01,#09,#2c,#18,#09,#2c
	db #18,#09,#2c,#18,#09,#2e,#24,#0d
	db #8e,#c2,#01,#00,#3c,#0d,#96,#c2
	db #01,#00,#7c,#07,#7c,#07,#78,#fb
	db #78,#fb,#f4,#ff,#ff,#fb,#f4,#ff
	db #ff,#fb,#f4,#01,#00,#fb,#f4,#01
	db #00,#fb,#0d,#a4,#c2,#01,#00,#3a
	db #25,#76,#27,#05,#72,#29,#09,#34
	db #74,#05,#74,#09,#0d,#a6,#c1,#40
	db #00,#00,#00,#03,#c3,#00,#04,#c3
	db #a6,#c3,#62,#c4,#00,#04,#c3,#a6
	db #c3,#a6,#c4,#00,#04,#c3,#a6,#c3
	db #a6,#c4,#00,#08,#c5,#9a,#c5,#5a
	db #c6,#00,#08,#c5,#9a,#c5,#5a,#c6
	db #00,#04,#c3,#a6,#c3,#a6,#c4,#00
	db #04,#c3,#a6,#c3,#a6,#c4,#01,#cf
	db #c2,#00,#ba,#e9,#00,#00,#01,#ba
	db #60,#02,#ba,#60,#01,#c8,#60,#02
	db #93,#89,#ba,#60,#01,#ba,#60,#02
	db #c4,#60,#03,#85,#b6,#60,#02,#ba
	db #60,#03,#c8,#60,#02,#ba,#60,#03
	db #c4,#60,#02,#ba,#60,#03,#ba,#60
	db #01,#ba,#60,#02,#ba,#60,#01,#c8
	db #60,#02,#93,#89,#ba,#60,#01,#ba
	db #60,#02,#b6,#60,#03,#77,#b2,#60
	db #02,#ba,#60,#03,#b6,#60,#02,#ba
	db #60,#03,#77,#7b,#ba,#60,#01,#ba
	db #60,#02,#ba,#60,#01,#c8,#60,#02
	db #93,#89,#ba,#60,#01,#ba,#60,#02
	db #c4,#60,#03,#85,#b6,#60,#02,#ba
	db #60,#03,#c8,#60,#02,#ba,#60,#03
	db #c4,#60,#02,#ba,#60,#03,#ba,#60
	db #01,#ba,#60,#02,#ba,#60,#01,#c8
	db #60,#02,#93,#85,#ba,#60,#01,#ba
	db #60,#02,#b6,#60,#03,#77,#b2,#60
	db #02,#ba,#60,#03,#b6,#60,#02,#ba
	db #60,#03,#77,#7b,#a2,#e1,#00,#00
	db #04,#a2,#60,#05,#a2,#60,#06,#a2
	db #60,#05,#ba,#60,#07,#98,#60,#04
	db #98,#60,#08,#a2,#60,#04,#a8,#60
	db #06,#a8,#60,#04,#a8,#60,#08,#9e
	db #60,#04,#b6,#60,#09,#9e,#60,#06
	db #be,#60,#0a,#9e,#60,#06,#a2,#60
	db #04,#a2,#60,#05,#a2,#60,#06,#a2
	db #60,#05,#ba,#60,#07,#98,#60,#06
	db #98,#60,#05,#a2,#60,#06,#9a,#60
	db #04,#5b,#b2,#60,#06,#9a,#60,#04
	db #b6,#60,#09,#9e,#60,#06,#b6,#60
	db #04,#9e,#60,#06,#a2,#60,#04,#a2
	db #60,#08,#a2,#60,#04,#a2,#60,#08
	db #ba,#60,#07,#98,#60,#06,#98,#60
	db #05,#a2,#60,#06,#a8,#60,#04,#a8
	db #60,#06,#a8,#60,#05,#9e,#60,#06
	db #b6,#60,#09,#9e,#60,#06,#be,#60
	db #0a,#9e,#60,#06,#a2,#60,#04,#a2
	db #60,#05,#a2,#60,#06,#a2,#60,#05
	db #ba,#60,#07,#98,#60,#06,#98,#60
	db #05,#a2,#60,#06,#9a,#60,#04,#5b
	db #73,#9a,#60,#06,#b6,#60,#09,#9e
	db #60,#06,#b6,#60,#04,#9e,#60,#0b
	db #ba,#ed,#00,#00,#0c,#81,#89,#93
	db #99,#93,#89,#81,#77,#81,#89,#8f
	db #97,#8f,#85,#7f,#7b,#81,#89,#93
	db #99,#93,#89,#81,#7b,#81,#8b,#93
	db #99,#8f,#85,#7f,#7b,#81,#89,#93
	db #99,#93,#89,#81,#77,#81,#89,#8f
	db #97,#8f,#85,#7f,#7b,#81,#89,#93
	db #99,#93,#89,#81,#7b,#81,#8b,#93
	db #97,#8f,#85,#7f,#ac,#e3,#00,#00
	db #0d,#a2,#4b,#ac,#43,#ac,#4b,#b2
	db #43,#7b,#ac,#4b,#bc,#43,#ba,#4b
	db #bc,#43,#7b,#ba,#4b,#b6,#43,#ba
	db #4b,#b2,#43,#b6,#4b,#b6,#43,#7b
	db #73,#73,#d8,#6d,#0c,#93,#89,#81
	db #7b,#81,#8b,#93,#99,#8f,#85,#7f
	db #ac,#63,#0d,#c4,#4b,#ac,#43,#ac
	db #4b,#b2,#43,#7b,#ac,#4b,#bc,#43
	db #ba,#4b,#bc,#43,#85,#ba,#4b,#ca
	db #43,#89,#85,#81,#85,#c0,#6d,#0c
	db #89,#93,#99,#93,#89,#81,#7b,#81
	db #8b,#93,#97,#8f,#85,#7f,#c4,#e9
	db #00,#00,#03,#c0,#60,#02,#c4,#60
	db #03,#ce,#60,#02,#99,#c4,#60,#03
	db #c8,#60,#02,#c4,#60,#03,#85,#c0
	db #60,#02,#89,#8f,#99,#8f,#c4,#60
	db #03,#c0,#60,#02,#c4,#60,#01,#ba
	db #60,#02,#c4,#60,#01,#ca,#60,#02
	db #93,#c4,#60,#01,#c4,#60,#02,#c4
	db #60,#01,#85,#ba,#60,#02,#85,#8b
	db #93,#8b,#c4,#60,#01,#ba,#60,#02
	db #b6,#60,#03,#c0,#60,#02,#b6,#60
	db #03,#ca,#60,#02,#93,#b6,#60,#03
	db #d2,#60,#02,#b6,#60,#03,#77,#c0
	db #60,#02,#8b,#93,#99,#93,#b6,#60
	db #03,#c0,#60,#02,#c4,#60,#03,#c0
	db #60,#02,#c4,#60,#03,#ce,#60,#02
	db #99,#c4,#60,#03,#ce,#60,#02,#c4
	db #60,#03,#85,#c0,#60,#02,#89,#8f
	db #99,#8f,#c4,#60,#03,#c0,#60,#02
	db #a8,#e1,#00,#00,#04,#a8,#60,#05
	db #a8,#60,#06,#a8,#60,#05,#c0,#60
	db #09,#9e,#60,#04,#9e,#60,#08,#98
	db #60,#04,#90,#60,#06,#90,#60,#05
	db #90,#60,#08,#a8,#60,#04,#c0,#60
	db #09,#a8,#60,#06,#9e,#60,#04,#a8
	db #60,#06,#ac,#60,#04,#ac,#60,#05
	db #ac,#60,#06,#ac,#60,#05,#c4,#60
	db #07,#a2,#60,#06,#a2,#60,#05,#9a
	db #60,#06,#94,#60,#04,#94,#60,#05
	db #94,#60,#08,#ac,#60,#04,#c4,#60
	db #07,#ac,#60,#06,#b0,#60,#04,#ac
	db #60,#06,#9a,#60,#04,#9a,#60,#08
	db #b2,#60,#04,#b2,#60,#08,#c0,#60
	db #0e,#a8,#60,#06,#a8,#60,#05,#a2
	db #60,#06,#9a,#60,#04,#9a,#60,#08
	db #b2,#60,#04,#b2,#60,#08,#c0,#60
	db #0e,#b0,#60,#06,#ac,#60,#04,#ac
	db #60,#08,#a8,#60,#04,#a8,#60,#05
	db #a8,#60,#06,#a8,#60,#05,#c0,#60
	db #09,#9e,#60,#06,#9e,#60,#05,#98
	db #60,#06,#90,#60,#04,#90,#60,#05
	db #51,#a8,#60,#06,#c0,#60,#09,#a8
	db #60,#06,#9e,#60,#04,#98,#60,#0b
	db #ba,#e3,#00,#00,#0d,#7d,#7b,#77
	db #bc,#4b,#ba,#43,#b6,#4b,#b2,#43
	db #ba,#4b,#77,#b2,#43,#73,#77,#77
	db #7b,#7b,#7d,#81,#7d,#7b,#c0,#4b
	db #bc,#43,#ba,#4b,#b6,#43,#bc,#4b
	db #7b,#b6,#43,#77,#7b,#7b,#7d,#7b
	db #7d,#81,#7d,#7b,#c0,#4b,#bc,#43
	db #ba,#4b,#b2,#43,#bc,#4b,#7b,#b2
	db #43,#73,#77,#77,#7d,#7d,#7b,#7d
	db #7b,#77,#bc,#4b,#ba,#43,#b6,#4b
	db #b2,#43,#ba,#4b,#77,#c0,#43,#81
	db #7d,#7d,#77,#77,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00

	read "The Long Dark Knight Of The Soul - stArkos Player (2019)(Epyteor)(SuTeKH)(StArkos).asm"

;
.music_info
	db "The Long Dark Knight Of The Soul - Chubby 2 The Chip Chip (2019)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"