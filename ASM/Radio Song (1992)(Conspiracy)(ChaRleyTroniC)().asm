; Music of Radio Song (1992)(Conspiracy)(ChaRleyTroniC)()
; Ripped by Megachur the 21/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RADIOSON.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #8fe1

	read "music_header.asm"

.l8fe1
	db #22,#02,#00,#00,#29,#11,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #1c,#12,#22,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#25,#13,#00,#00
	db #00,#00,#00,#00,#22,#02,#00,#00
	db #1c,#12,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#29,#11,#22,#02
	db #00,#00,#00,#00,#20,#02,#00,#00
	db #1c,#12,#00,#00,#00,#00,#00,#00
	db #22,#02,#00,#00,#25,#13,#00,#00
	db #00,#00,#00,#00,#20,#02,#00,#00
	db #1c,#12,#00,#00,#00,#00,#00,#00
	db #25,#02,#00,#00,#29,#11,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #1c,#12,#25,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#25,#13,#00,#00
	db #00,#00,#00,#00,#25,#02,#00,#00
	db #1c,#12,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#1c,#12,#25,#02
	db #00,#00,#00,#00,#20,#02,#00,#00
	db #1c,#12,#00,#00,#00,#00,#00,#00
	db #1d,#02,#00,#00,#25,#13,#00,#00
	db #00,#00,#00,#00,#19,#02,#00,#00
	db #1c,#12,#00,#00,#00,#00,#00,#00
	db #22,#02,#00,#00,#29,#11,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #1c,#12,#22,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#25,#13,#00,#00
	db #00,#00,#00,#00,#22,#02,#00,#00
	db #1c,#12,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#29,#11,#22,#02
	db #00,#00,#00,#00,#20,#02,#00,#00
	db #1c,#12,#00,#00,#00,#00,#00,#00
	db #22,#02,#00,#00,#25,#13,#00,#00
	db #00,#00,#00,#00,#20,#02,#00,#00
	db #1c,#12,#00,#00,#00,#00,#00,#00
	db #25,#02,#00,#00,#29,#11,#00,#00
	db #00,#00,#00,#00,#25,#02,#00,#00
	db #1c,#12,#22,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#25,#13,#20,#02
	db #00,#00,#00,#00,#22,#02,#00,#00
	db #1c,#12,#20,#02,#00,#00,#00,#00
	db #19,#02,#00,#00,#1c,#12,#00,#00
	db #00,#00,#00,#00,#19,#02,#00,#00
	db #1c,#12,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#25,#13,#00,#00
	db #00,#00,#1c,#12,#00,#00,#00,#00
.l9160 equ $ + 7
	db #1c,#12,#00,#00,#00,#00,#1c,#12
.l9161
	db #01,#01,#02,#05,#03,#04,#02,#05
	db #01,#01,#06,#07,#07,#02,#05,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
.l91c7 equ $ + 6
.l91c6 equ $ + 5
.l91c5 equ $ + 4
.l91c4 equ $ + 3
.l91c2 equ $ + 1
	db #01,#01,#01,#0f,#01,#03,#06,#dc
	db #9b,#ff,#9b,#22,#9c,#45,#9c,#68
	db #9c,#8b,#9c,#ae,#9c,#d1,#9c,#f4
	db #9c,#17,#9d,#3a,#9d,#5d,#9d,#ae
	db #9c,#a3,#9d,#f4,#9c,#e9,#9d,#0c
	db #9e,#2f,#9e,#52,#9e,#bd,#a1,#98
	db #9e,#bb,#9e,#bd,#a1,#01,#9f,#24
	db #9f,#bd,#a1,#6a,#9f,#8d,#9f,#bd
	db #a1,#d3,#9f,#f6,#9f,#bd,#a1,#3c
	db #a0,#5f,#a0,#bd,#a1,#a5,#a0,#c8
	db #a0,#bd,#a1,#0e,#a1,#31,#a1,#bd
	db #a1,#77,#a1,#9a,#a1,#bd,#a1,#e0
	db #a1,#03,#a2,#26,#a2,#49,#a2,#6c
	db #a2,#8f,#a2,#b2,#a2,#d5,#a2,#f8
	db #a2,#1b,#a3,#3e,#a3,#61,#a3,#84
	db #a3,#a7,#a3,#ca,#a3,#ed,#a3,#01
	db #01,#01,#02,#02,#02,#03,#03,#03
	db #04,#04,#04,#03,#05,#03,#06,#06
	db #06,#07,#0f,#07,#08,#0f,#08,#09
	db #0f,#09,#0a,#0f,#0a,#0b,#0f,#0b
	db #0c,#0f,#0c,#0d,#0f,#0d,#0e,#0f
	db #0e,#0f,#0f,#0f,#10,#10,#10,#11
	db #11,#11,#12,#12,#12,#13,#13,#13
	db #14,#14,#14,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #0f,#0f,#0e,#0c,#0b,#09,#08,#06
	db #05,#03,#02,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#01,#01,#1f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #00,#08,#0f,#0c,#09,#06,#03,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#12,#0d,#0f,#0e,#0e,#0d
	db #0c,#0a,#09,#07,#06,#04,#03,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#0f,#0f,#0d,#0c,#0a
	db #09,#07,#06,#04,#03,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#02,#02,#12
	db #04,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#14,#0d,#0f,#0e
	db #0f,#0e,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#01,#04,#0e,#0d
	db #0e,#0f,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#01,#03,#00,#2e,#4d,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#01,#03,#00,#30,#61
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#01,#03,#00,#31
	db #5e,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#03,#00
	db #18,#2f,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#01,#03
	db #00,#15,#35,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #03,#00,#25,#61,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #01,#03,#00,#24,#49,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#03,#00,#20,#56,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#01,#03,#00,#17,#47,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#02,#04,#04,#0a
	db #0c,#0d,#0e,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#0f,#88,#98,#a8
	db #b8,#c8,#d8,#e8,#f8,#08,#18,#28
	db #38,#48,#58,#68,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#00,#05
	db #0d,#0c,#0b,#0a,#09,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#0f,#88,#98
	db #a8,#b8,#c8,#d8,#e8,#f8,#08,#18
.l9920 equ $ + 7
	db #28,#38,#48,#58,#68,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #07,#0d,#0b,#0a,#08,#06,#04,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#01,#01,#1f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #00,#03,#0a,#06,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#01,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#1f,#0f,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#04,#04,#03,#03
	db #03,#03,#02,#02,#02,#02,#01,#01
	db #01,#01,#00,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#e3,#d8
	db #e3,#48,#c0,#c0,#c1,#d0,#c1,#60
	db #e5,#a0,#e0,#68,#c3,#d0,#e0,#f8
	db #e6,#50,#e2,#70,#e5,#b8,#c1,#c8
	db #c1,#90,#e5,#30,#c3,#68,#e2,#a8
	db #c1,#98,#c1,#70,#e2,#60,#c6,#20
	db #e7,#40,#c3,#c0,#e3,#40,#c0,#98
	db #e5,#b8,#c4,#58,#e5,#00,#e7,#c0
	db #e0,#00,#e4,#48,#e2,#58,#c6,#c8
	db #e3,#68,#e5,#58,#e2,#d8,#e0,#58
	db #c3,#a0,#c1,#48,#c3,#78,#c6,#e0
	db #e6,#10,#e7,#08,#c0,#70,#c6,#80
	db #e5,#00,#c0,#08,#e4,#30,#c0,#b8
	db #e0,#e8,#e3,#60,#e2,#f0,#c4
;
.l9ab0
.init_music
;
	or a
	jr nz,l9ab9
	nop
	nop
	nop
	jp l9b4b
.l9ab9
	ld a,d
	or e
	jr nz,l9ac2
	call l9b16
	jr l9b01
.l9ac2
	cp #14
	ret nc
	ld (l9ad1),a
	call l9ad4
	ld hl,l9ad0
.l9ad0 equ $ + 2
	jp l9b51
.l9ad1
	db #00,#00,#00
.l9ad4
	di
	ld hl,(#0039)
	ld de,l9afe
	push hl
	ldi
	ldi
	ldi
	ld c,(hl)
	ld b,#00
	inc hl
	ld (l9bbc),hl
	add hl,bc
	ld (l9bb9),hl
	pop de
	ld hl,l9b8b
	ldi
	ldi
	ldi
	ld a,#c9
	ld (l9ad4),a
	ei
	ret
.l9afe
	db #00,#00,#00
.l9b01
	di
	ld de,(#0039)
	ld hl,l9afe
	ldi
	ldi
	ldi
	ld a,#f3
	ld (l9ad4),a
	ei
	ret
.l9b16
	di
	call l9b1c
	ei
	ret
.l9b1c
	ld iy,l9fc4
	ld a,#01
	ld (l9b98),a
	ld a,#0a
	ld c,#00
	ld (iy+#00),c
	call la0c4
	ld a,#09
	ld c,#00
	ld (iy+#01),c
	call la0c4
	ld a,#08
	ld c,#00
	ld (iy+#02),c
	call la0c4
	ld a,#07
	ld c,#3f
	call la0c4
	ret
.l9b4b
	call l9b16
	ld hl,l9160
.l9b51
	ld a,#01
	ld (l9bd8),a
	ld (l9c02),hl
	ld a,#01
	ld (l9b9e),a
	ld a,(l91c7)
	ld (l9bbf),a
	inc a
	ld (l9ba7),a
	ld a,(l91c6)
	ld b,a
	sla a
	add b
	sla a
	add #18
	ld (l9c39),a
	xor a
	ld (la0e3),a
	ld (la1fc),a
	ld (la315),a
	ld a,#3f
	ld (l9f87),a
	xor a
	ld (l9b98),a
	ei
	ret
.l9b8b
	jp l9b8e
.l9b8e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
;
.real_play_music
.l9b97
;
.l9b98 equ $ + 1
	ld a,#00
	or a
	jp nz,l9bae
.l9b9e equ $ + 1
	ld a,#01
	dec a
	ld (l9b9e),a
	jp z,l9bd7
.l9ba7 equ $ + 1
	ld a,#01
	dec a
	ld (l9ba7),a
	jr z,l9bbe
.l9bae
	ret
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ex af,af'
.l9bb9 equ $ + 1
	jp c,#0000
.l9bbc equ $ + 1
	jp #0000
.l9bbf equ $ + 1
.l9bbe
	ld a,#01
	ld (l9ba7),a
	ld a,(l9f87)
	ld c,a
	call la0e2
	call la1fb
	call la314
	ld a,c
	ld (l9f87),a
	jp l9f0c
.l9bd8 equ $ + 1
.l9bd7
	ld a,#01
	dec a
	ld (l9bd8),a
	jr nz,l9c38
	ld a,#40
	ld (l9bd8),a
	ld hl,(l9c02)
	ld de,l9ad1
	xor a
	sbc hl,de
	jr nz,l9c01
	ld a,(de)
	cp #ff
	jr nz,l9c15
	ld hl,l9920
	ld (l9c42),hl
	ld a,#40
	ld (l9bd8),a
	jr l9c38
.l9c02 equ $ + 1
.l9c01
	ld hl,l9160
	inc hl
	ld de,l9161
	ld a,(l91c4)
	add e
	cp l
	jr nz,l9c24
	ld a,(l91c5)
	or a
	jr nz,l9c1b
.l9c15
	call l9b1c
	jp l9bae
.l9c1b
	ld hl,l9160		; reinit music
	add l
	ld l,a
	ld a,h
	adc #00
	ld a,(hl)
.l9c24
	ld (l9c02),hl
	ld a,(hl)
	ld hl,la098
	sla a
	ld e,a
	ld d,#00
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l9c42),de
.l9c39 equ $ + 1
.l9c38
	ld a,#36
	ld (l9b9e),a
	ld iy,l9fbe
.l9c42 equ $ + 1
.l9c41
	ld hl,l9c41
	ld b,#03
.l9c46
	ld a,(hl)
	or a
	jr z,l9c61
	ld e,a
	ld d,#00
	sla e
	ld ix,l9fd0
	add ix,de
	ld e,(ix+#00)
	ld d,(ix+#01)
	ld (iy+#0c),e
	ld (iy+#0d),d
.l9c61
	inc iy
	inc iy
	inc hl
	inc hl
	djnz l9c46
	ld ix,(l9c42)
	ld a,(l9f87)
	ld c,a
	ld a,(ix+#01)
	cp #ff
	jr nz,l9c82
	xor a
	ld (l9fc4),a
	ld (la0e3),a
	jp l9d46
.l9c82
	ld a,(ix+#00)
	or a
	jr nz,l9c92
	ld a,(l9ba7)
	dec a
	call z,la0e2
	jp l9d46
.l9c92
	ld (la0e3),a
	ld (la0e7),a
	ld (la189),a
	ld (la138),a
	ld a,c
	and #f6
	ld c,a
	ld a,(ix+#01)
	ld b,a
	sla a
	add b
	sla a
	ld d,#00
	ld e,a
	ld iy,l91c2
	add iy,de
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld de,#0960
	xor a
	sbc hl,de
	ld (la18d),hl
	ld a,(hl)
	ld (la190),a
	inc hl
	inc hl
	ld a,(hl)
	or a
	jr nz,l9cd4
	ld (la189),a
	ld a,c
	or #01
	ld c,a
.l9cd4
	ld (la19b),a
	inc hl
	ld a,(hl)
	inc hl
	ld (la1cd),hl
	ld hl,(l9fca)
	ld e,a
	ld d,#00
	rl a
	jr nc,l9ce8
	dec d
.l9ce8
	add hl,de
	ld (l9fbe),hl
	ld l,(iy+#02)
	ld h,(iy+#03)
	ld de,#0960
	xor a
	sbc hl,de
	ld (la0ec),hl
	ld a,(hl)
	ld (la0ef),a
	inc hl
	inc hl
	ld a,(hl)
	or a
	jr nz,l9d0d
	ld (l9fc4),a
	ld (la0e7),a
	jr l9d19
.l9d0d
	ld (la0fb),a
	inc hl
	ld a,(hl)
	ld (l9fc4),a
	inc hl
	ld (la12d),hl
.l9d19
	ld l,(iy+#04)
	ld h,(iy+#05)
	ld de,#0960
	xor a
	sbc hl,de
	ld (la13d),hl
	ld a,(hl)
	ld (la140),a
	inc hl
	inc hl
	ld a,(hl)
	or a
	jr nz,l9d3a
	ld (l9fc7),a
	ld (la138),a
	jr l9d46
.l9d3a
	ld (la14c),a
	inc hl
	ld a,(hl)
	ld (l9fc7),a
	inc hl
	ld (la17e),hl
.l9d46
	ld a,(ix+#03)
	cp #ff
	jr nz,l9d57
	xor a
	ld (l9fc5),a
	ld (la1fc),a
	jp l9e1b
.l9d57
	ld a,(ix+#02)
	or a
	jr nz,l9d67
	ld a,(l9ba7)
	dec a
	call z,la1fb
	jp l9e1b
.l9d67
	ld (la1fc),a
	ld (la200),a
	ld (la2a2),a
	ld (la251),a
	ld a,c
	and #ed
	ld c,a
	ld a,(ix+#03)
	ld b,a
	sla a
	add b
	sla a
	ld d,#00
	ld e,a
	ld iy,l91c2
	add iy,de
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld de,#0960
	xor a
	sbc hl,de
	ld (la2a6),hl
	ld a,(hl)
	ld (la2a9),a
	inc hl
	inc hl
	ld a,(hl)
	or a
	jr nz,l9da9
	ld (la2a2),a
	ld a,c
	or #02
	ld c,a
.l9da9
	ld (la2b4),a
	inc hl
	ld a,(hl)
	inc hl
	ld (la2e6),hl
	ld hl,(l9fcc)
	ld e,a
	ld d,#00
	rl a
	jr nc,l9dbd
	dec d
.l9dbd
	add hl,de
	ld (l9fc0),hl
	ld l,(iy+#02)
	ld h,(iy+#03)
	ld de,#0960
	xor a
	sbc hl,de
	ld (la205),hl
	ld a,(hl)
	ld (la208),a
	inc hl
	inc hl
	ld a,(hl)
	or a
	jr nz,l9de2
	ld (l9fc5),a
	ld (la200),a
	jr l9dee
.l9de2
	ld (la214),a
	inc hl
	ld a,(hl)
	ld (l9fc5),a
	inc hl
	ld (la246),hl
.l9dee
	ld l,(iy+#04)
	ld h,(iy+#05)
	ld de,#0960
	xor a
	sbc hl,de
	ld (la256),hl
	ld a,(hl)
	ld (la259),a
	inc hl
	inc hl
	ld a,(hl)
	or a
	jr nz,l9e0f
	ld (l9fc8),a
	ld (la251),a
	jr l9e1b
.l9e0f
	ld (la265),a
	inc hl
	ld a,(hl)
	ld (l9fc8),a
	inc hl
	ld (la297),hl
.l9e1b
	ld a,(ix+#05)
	cp #ff
	jr nz,l9e2c
	xor a
	ld (l9fc6),a
	ld (la315),a
	jp l9ef3
.l9e2c
	ld a,(ix+#04)
	or a
	jr nz,l9e3c
	ld a,(l9ba7)
	dec a
	call z,la314
	jp l9ef3
.l9e3c
	ld (la315),a
	ld (la319),a
	ld (la3bb),a
	ld (la36a),a
	ld a,c
	and #db
	ld c,a
	ld a,(ix+#05)
	ld b,a
	sla a
	add b
	sla a
	ld d,#00
	ld e,a
	ld iy,l91c2
	add iy,de
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld de,#0960
	xor a
	sbc hl,de
	ld (la3bf),hl
	ld a,(hl)
	ld (la3c2),a
	inc hl
	inc hl
	ld a,(hl)
	ld (la3cd),a
	or a
	jr nz,l9e81
	ld (la3bb),a
	ld a,c
	or #04
	ld c,a
.l9e81
	ld (la3cd),a
	inc hl
	ld a,(hl)
	inc hl
	ld (la405),hl
	ld hl,(l9fce)
	ld e,a
	ld d,#00
	rl a
	jr nc,l9e95
	dec d
.l9e95
	add hl,de
	ld (l9fc2),hl
	ld l,(iy+#02)
	ld h,(iy+#03)
	ld de,#0960
	xor a
	sbc hl,de
	ld (la31e),hl
	ld a,(hl)
	ld (la321),a
	inc hl
	inc hl
	ld a,(hl)
	or a
	jr nz,l9eba
	ld (l9fc6),a
	ld (la319),a
	jr l9ec6
.l9eba
	ld (la32d),a
	inc hl
	ld a,(hl)
	ld (l9fc6),a
	inc hl
	ld (la35f),hl
.l9ec6
	ld l,(iy+#04)
	ld h,(iy+#05)
	ld de,#0960
	xor a
	sbc hl,de
	ld (la36f),hl
	ld a,(hl)
	ld (la372),a
	inc hl
	inc hl
	ld a,(hl)
	or a
	jr nz,l9ee7
	ld (l9fc9),a
	ld (la36a),a
	jr l9ef3
.l9ee7
	ld (la37e),a
	inc hl
	ld a,(hl)
	ld (l9fc9),a
	inc hl
	ld (la3b0),hl
.l9ef3
	ld de,#0006
	add ix,de
	ld (l9c42),ix
	ld a,c
	ld (l9f87),a
	ld a,(l9ba7)
	dec a
	jr nz,l9f09
	ld a,(l9bbf)
.l9f09
	ld (l9ba7),a
.l9f0c
	ld a,(l9f87)
	or #38
	ld e,a
	ld d,#00
	ld b,#01
	ld hl,l9fc7
	ld iy,l9fc4
	ld a,(hl)
	or a
	jr z,l9f29
	ld d,a
	ld b,(iy+#00)
	ld a,e
	and #f7
	ld e,a
.l9f29
	inc hl
	ld a,(hl)
	or a
	jr z,l9f3c
	ld a,e
	and #ef
	ld e,a
	ld a,(iy+#01)
	cp b
	jr c,l9f3c
	ld b,(iy+#01)
	ld d,(hl)
.l9f3c
	inc hl
	ld a,(hl)
	or a
	jr z,l9f4c
	ld a,e
	and #df
	ld e,a
	ld a,(iy+#02)
	cp b
	jr c,l9f4c
	ld d,(hl)
.l9f4c
	ld c,d
	ld a,#06
	call la0c4
	ld d,#00
	ld hl,l9fc6
	ld a,(hl)
	or a
	ld c,a
	jr nz,l9f61
	ld (hl),d
	ld a,e
	or #24
	ld e,a
.l9f61
	ld a,#0a
	call la0c4
	dec hl
	ld a,(hl)
	or a
	ld c,a
	jr nz,l9f71
	ld (hl),d
	ld a,e
	or #12
	ld e,a
.l9f71
	ld a,#09
	call la0c4
	dec hl
	ld a,(hl)
	or a
	ld c,a
	jr nz,l9f81
	ld (hl),d
	ld a,e
	or #09
	ld e,a
.l9f81
	ld a,#08
	call la0c4
.l9f87 equ $ + 1
	ld a,#07
	or e
	ld c,a
	ld a,#07
	call la0c4
	ld hl,l9fc3
	ld c,(hl)
	dec hl
	ld a,#05
	call la0c4
	ld c,(hl)
	dec hl
	ld a,#04
	call la0c4
	ld c,(hl)
	dec hl
	ld a,#03
	call la0c4
	ld c,(hl)
	dec hl
	ld a,#02
	call la0c4
	ld c,(hl)
	dec hl
	ld a,#01
	call la0c4
	ld c,(hl)
	dec hl
	xor a
	call la0c4
	jp l9bae
.l9fbe
	nop
	nop
.l9fc0
	nop
	nop
.l9fc2
	nop
.l9fc3
	nop
.l9fca equ $ + 6
.l9fc9 equ $ + 5
.l9fc8 equ $ + 4
.l9fc7 equ $ + 3
.l9fc6 equ $ + 2
.l9fc5 equ $ + 1
.l9fc4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9fd0 equ $ + 4
.l9fce equ $ + 2
.l9fcc
	db #00,#00,#00,#00,#00,#00
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
.la098 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	dw l8fe1,#8e61,#8ce1,#8b61
	dw #89e1,#8861,#86e1,#8561
	dw #83e1,#8261,#80e1,#7f61
	dw #7de1,#7c61,#7ae1,#7961
	dw #77e1,#7661,#74e1,#7361
	dw l9920
.la0c4
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
	ret
.la0e3 equ $ + 1
.la0e2
	ld a,#01
	or a
	ret z
.la0e7 equ $ + 1
	ld a,#01
	or a
	jr z,la137
.la0ec equ $ + 1
.la0eb
	ld hl,la0eb
.la0ef equ $ + 1
	ld a,#01
	dec a
	ld (la0ef),a
	jr nz,la137
	ld a,(hl)
	ld (la0ef),a
.la0fb equ $ + 1
	ld a,#01
	dec a
	ld (la0fb),a
	jr nz,la12c
	inc hl
	ld a,(hl)
	or a
	jr nz,la10f
	ld (la0e7),a
	ld (l9fc4),a
	jr la137
.la10f
	inc hl
	ld b,a
	ld a,(hl)
	sub b
	jr nc,la11e
	xor a
	ld (la0e7),a
	ld (l9fc4),a
	jr la137
.la11e
	inc a
	ld (la0fb),a
	ld a,b
	add l
	ld l,a
	ld a,h
	adc #00
	ld h,a
	ld (la12d),hl
.la12d equ $ + 1
.la12c
	ld hl,la12c
	ld a,(hl)
	inc hl
	ld (la12d),hl
	ld (l9fc4),a
.la138 equ $ + 1
.la137
	ld a,#01
	or a
	jr z,la188
.la13d equ $ + 1
.la13c
	ld hl,la13c
.la140 equ $ + 1
	ld a,#01
	dec a
	ld (la140),a
	jr nz,la188
	ld a,(hl)
	ld (la140),a
.la14c equ $ + 1
	ld a,#01
	dec a
	ld (la14c),a
	jr nz,la17d
	inc hl
	ld a,(hl)
	or a
	jr nz,la160
	ld (la138),a
	ld (l9fc7),a
	jr la188
.la160
	inc hl
	ld b,a
	ld a,(hl)
	sub b
	jr nc,la16f
	xor a
	ld (la138),a
	ld (l9fc7),a
	jr la188
.la16f
	inc a
	ld (la14c),a
	ld a,b
	add l
	ld l,a
	ld a,h
	adc #00
	ld h,a
	ld (la17e),hl
.la17e equ $ + 1
.la17d
	ld hl,la17d
	ld a,(hl)
	inc hl
	ld (la17e),hl
	ld (l9fc7),a
.la189 equ $ + 1
.la188
	ld a,#01
	or a
	ret z
.la18d equ $ + 1
.la18c
	ld hl,la18c
.la190 equ $ + 1
	ld a,#01
	dec a
	ld (la190),a
	ret nz
	ld a,(hl)
	ld (la190),a
.la19b equ $ + 1
	ld a,#01
	dec a
	ld (la19b),a
	jr nz,la1cc
	inc hl
	ld a,(hl)
	or a
	jr nz,la1af
	ld (la189),a
	ld a,c
	or #01
	ld c,a
	ret
.la1af
	inc hl
	ld b,a
	ld a,(hl)
	sub b
	jr nc,la1be
	xor a
	ld (la189),a
	ld a,c
	or #01
	ld c,a
	ret
.la1be
	inc a
	ld (la19b),a
	ld a,b
	add l
	ld l,a
	ld a,h
	adc #00
	ld h,a
	ld (la1cd),hl
.la1cd equ $ + 1
.la1cc
	ld hl,la1cc
	ld a,(hl)
	inc hl
	ld (la1cd),hl
	ld hl,(l9fca)
	ld e,a
	ld d,#00
	rl a
	jr nc,la1df
	dec d
.la1df
	add hl,de
	ld a,h
	cp #10
	jr nc,la1e9
	ld (l9fbe),hl
	ret
.la1e9
	rl e
	jr nc,la1f4
	ld hl,#0000
	ld (l9fbe),hl
	ret
.la1f4
	ld hl,#0fff
	ld (l9fbe),hl
	ret
.la1fc equ $ + 1
.la1fb
	ld a,#01
	or a
	ret z
.la200 equ $ + 1
	ld a,#01
	or a
	jr z,la250
.la205 equ $ + 1
.la204
	ld hl,la204
.la208 equ $ + 1
	ld a,#01
	dec a
	ld (la208),a
	jr nz,la250
	ld a,(hl)
	ld (la208),a
.la214 equ $ + 1
	ld a,#01
	dec a
	ld (la214),a
	jr nz,la245
	inc hl
	ld a,(hl)
	or a
	jr nz,la228
	ld (la200),a
	ld (l9fc5),a
	jr la250
.la228
	inc hl
	ld b,a
	ld a,(hl)
	sub b
	jr nc,la237
	xor a
	ld (la200),a
	ld (l9fc5),a
	jr la250
.la237
	inc a
	ld (la214),a
	ld a,b
	add l
	ld l,a
	ld a,h
	adc #00
	ld h,a
	ld (la246),hl
.la246 equ $ + 1
.la245
	ld hl,la245
	ld a,(hl)
	inc hl
	ld (la246),hl
	ld (l9fc5),a
.la251 equ $ + 1
.la250
	ld a,#01
	or a
	jr z,la2a1
.la256 equ $ + 1
.la255
	ld hl,la255
.la259 equ $ + 1
	ld a,#01
	dec a
	ld (la259),a
	jr nz,la2a1
	ld a,(hl)
	ld (la259),a
.la265 equ $ + 1
	ld a,#01
	dec a
	ld (la265),a
	jr nz,la296
	inc hl
	ld a,(hl)
	or a
	jr nz,la279
	ld (la251),a
	ld (l9fc8),a
	jr la2a1
.la279
	inc hl
	ld b,a
	ld a,(hl)
	sub b
	jr nc,la288
	xor a
	ld (la251),a
	ld (l9fc8),a
	jr la2a1
.la288
	inc a
	ld (la265),a
	ld a,b
	add l
	ld l,a
	ld a,h
	adc #00
	ld h,a
	ld (la297),hl
.la297 equ $ + 1
.la296
	ld hl,la296
	ld a,(hl)
	inc hl
	ld (la297),hl
	ld (l9fc8),a
.la2a2 equ $ + 1
.la2a1
	ld a,#01
	or a
	ret z
.la2a6 equ $ + 1
.la2a5
	ld hl,la2a5
.la2a9 equ $ + 1
	ld a,#01
	dec a
	ld (la2a9),a
	ret nz
	ld a,(hl)
	ld (la2a9),a
.la2b4 equ $ + 1
	ld a,#01
	dec a
	ld (la2b4),a
	jr nz,la2e5
	inc hl
	ld a,(hl)
	or a
	jr nz,la2c8
	ld (la2a2),a
	ld a,c
	or #02
	ld c,a
	ret
.la2c8
	inc hl
	ld b,a
	ld a,(hl)
	sub b
	jr nc,la2d7
	xor a
	ld (la2a2),a
	ld a,c
	or #02
	ld c,a
	ret
.la2d7
	inc a
	ld (la2b4),a
	ld a,b
	add l
	ld l,a
	ld a,h
	adc #00
	ld h,a
	ld (la2e6),hl
.la2e6 equ $ + 1
.la2e5
	ld hl,la2e5
	ld a,(hl)
	inc hl
	ld (la2e6),hl
	ld hl,(l9fcc)
	ld e,a
	ld d,#00
	rl a
	jr nc,la2f8
	dec d
.la2f8
	add hl,de
	ld a,h
	cp #10
	jr nc,la302
	ld (l9fc0),hl
	ret
.la302
	rl e
	jr nc,la30d
	ld hl,#0000
	ld (l9fc0),hl
	ret
.la30d
	ld hl,#0fff
	ld (l9fc0),hl
	ret
.la315 equ $ + 1
.la314
	ld a,#01
	or a
	ret z
.la319 equ $ + 1
	ld a,#01
	or a
	jr z,la369
.la31e equ $ + 1
.la31d
	ld hl,la31d
.la321 equ $ + 1
	ld a,#01
	dec a
	ld (la321),a
	jr nz,la369
	ld a,(hl)
	ld (la321),a
.la32d equ $ + 1
	ld a,#01
	dec a
	ld (la32d),a
	jr nz,la35e
	inc hl
	ld a,(hl)
	or a
	jr nz,la341
	ld (la319),a
	ld (l9fc6),a
	jr la369
.la341
	inc hl
	ld b,a
	ld a,(hl)
	sub b
	jr nc,la350
	xor a
	ld (la319),a
	ld (l9fc6),a
	jr la369
.la350
	inc a
	ld (la32d),a
	ld a,b
	add l
	ld l,a
	ld a,h
	adc #00
	ld h,a
	ld (la35f),hl
.la35f equ $ + 1
.la35e
	ld hl,la35e
	ld a,(hl)
	inc hl
	ld (la35f),hl
	ld (l9fc6),a
.la36a equ $ + 1
.la369
	ld a,#01
	or a
	jr z,la3ba
.la36f equ $ + 1
.la36e
	ld hl,la36e
.la372 equ $ + 1
	ld a,#01
	dec a
	ld (la372),a
	jr nz,la3ba
	ld a,(hl)
	ld (la372),a
.la37e equ $ + 1
	ld a,#01
	dec a
	ld (la37e),a
	jr nz,la3af
	inc hl
	ld a,(hl)
	or a
	jr nz,la392
	ld (la36a),a
	ld (l9fc9),a
	jr la3ba
.la392
	inc hl
	ld b,a
	ld a,(hl)
	sub b
	jr nc,la3a1
	xor a
	ld (la36a),a
	ld (l9fc9),a
	jr la3ba
.la3a1
	inc a
	ld (la37e),a
	ld a,b
	add l
	ld l,a
	ld a,h
	adc #00
	ld h,a
	ld (la3b0),hl
.la3b0 equ $ + 1
.la3af
	ld hl,la3af
	ld a,(hl)
	inc hl
	ld (la3b0),hl
	ld (l9fc9),a
.la3bb equ $ + 1
.la3ba
	ld a,#01
	or a
	ret z
.la3bf equ $ + 1
.la3be
	ld hl,la3be
.la3c2 equ $ + 1
	ld a,#01
	dec a
	ld (la3c2),a
	ret nz
	ld a,(hl)
	ld (la3c2),a
.la3cd equ $ + 1
	ld a,#01
	dec a
	ld (la3cd),a
	jr nz,la404
	inc hl
	ld a,(hl)
	or a
	jr nz,la3e7
	ld (la3bb),a
	ld hl,(l9fce)
	ld (l9fc2),hl
	ld a,c
	or #04
	ld c,a
	ret
.la3e7
	inc hl
	ld b,a
	ld a,(hl)
	sub b
	jr nc,la3f6
	xor a
	ld (la3bb),a
	ld a,c
	or #04
	ld c,a
	ret
.la3f6
	inc a
	ld (la3cd),a
	ld a,b
	add l
	ld l,a
	ld a,h
	adc #00
	ld h,a
	ld (la405),hl
.la405 equ $ + 1
.la404
	ld hl,la404
	ld a,(hl)
	inc hl
	ld (la405),hl
	ld hl,(l9fce)
	ld e,a
	ld d,#00
	rl a
	jr nc,la417
	dec d
.la417
	add hl,de
	ld a,h
	cp #10
	jr nc,la421
	ld (l9fc2),hl
	ret
.la421
	rl e
	jr nc,la42c
	ld hl,#0000
	ld (l9fc2),hl
	ret
.la42c
	ld hl,#0fff
	ld (l9fc2),hl
	ret
;
; added by Megachur
;
.play_music
;
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	jp real_play_music
;
.music_info
	db "Radio Song (1992)(Conspiracy)(ChaRleyTroniC)()",0
	db "",0

	read "music_end.asm"
