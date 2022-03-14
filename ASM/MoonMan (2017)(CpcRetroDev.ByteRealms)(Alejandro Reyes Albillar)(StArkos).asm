; Music of MoonMan (2017)(CpcRetroDev.ByteRealms)(Alejandro Reyes Albillar)(StArkos)
; Ripped by Megachur the 15/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MOONMAN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0200

	read "music_header.asm"

.l0200
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#59,#00,#14,#02,#1d,#02
	db #31,#02,#48,#02,#00,#00,#00,#00
	db #00,#00,#0d,#16,#02,#01,#00,#3c
	db #38,#34,#30,#2c,#28,#24,#20,#1c
	db #18,#14,#10,#0c,#08,#04,#0d,#16
	db #02,#01,#00,#3e,#22,#32,#29,#32
	db #30,#26,#39,#12,#3f,#26,#39,#32
	db #30,#32,#29,#3e,#22,#0d,#16,#02
	db #01,#00,#02,#3f,#3c,#3c,#3c,#3c
	db #3c,#3c,#3c,#3c,#3c,#3c,#1c,#1c
	db #1c,#1c,#1c,#1c,#1c,#1c,#1c,#1c
	db #02,#3f,#0d,#16,#02,#40,#00,#00
	db #00,#98,#02,#00,#99,#02,#dd,#02
	db #10,#03,#00,#99,#02,#dd,#02,#10
	db #03,#00,#99,#02,#dd,#02,#2e,#03
	db #00,#99,#02,#dd,#02,#2e,#03,#00
	db #4c,#03,#91,#03,#96,#03,#00,#4c
	db #03,#91,#03,#b7,#03,#01,#6b,#02
	db #00,#8e,#e0,#00,#00,#01,#4f,#4f
	db #4f,#5d,#4f,#4f,#4f,#02,#4f,#4f
	db #4f,#5d,#4f,#4f,#02,#4f,#4f,#4f
	db #4f,#5d,#4f,#4f,#4f,#02,#4f,#4f
	db #4f,#5f,#5d,#5d,#02,#4f,#4f,#4f
	db #4f,#5d,#4f,#4f,#4f,#02,#4f,#4f
	db #4f,#5d,#4f,#4f,#02,#4f,#4f,#4f
	db #4f,#5d,#4f,#4f,#4f,#02,#4f,#4f
	db #4f,#4f,#4d,#4d,#00,#42,#80,#00
	db #00,#02,#8e,#60,#02,#4f,#53,#4f
	db #55,#55,#55,#4f,#0e,#4f,#4f,#53
	db #4f,#55,#55,#55,#4f,#0a,#4f,#4f
	db #53,#4f,#55,#55,#55,#4f,#0a,#4f
	db #4f,#53,#4f,#55,#55,#55,#4f,#0a
	db #4f,#4f,#53,#4f,#55,#55,#55,#4f
	db #8e,#e0,#00,#00,#03,#0a,#4f,#0a
	db #4f,#06,#59,#0a,#59,#0a,#59,#06
	db #55,#0a,#55,#0a,#55,#06,#53,#0a
	db #53,#08,#42,#00,#53,#00,#9c,#e0
	db #00,#00,#03,#0a,#5d,#0a,#5d,#06
	db #59,#0a,#59,#0a,#59,#06,#5f,#0a
	db #5f,#0a,#5f,#06,#5d,#0a,#5d,#08
	db #42,#00,#5d,#00,#42,#80,#00,#00
	db #9c,#60,#01,#5d,#5d,#5d,#5d,#59
	db #59,#59,#02,#5f,#5f,#5f,#5f,#5d
	db #5d,#02,#5d,#5d,#5d,#5d,#5d,#59
	db #59,#59,#02,#55,#55,#55,#55,#53
	db #53,#02,#5d,#5d,#5d,#5d,#5d,#59
	db #59,#59,#02,#5f,#5f,#5f,#5f,#5d
	db #5d,#02,#5d,#5d,#5d,#5d,#5d,#59
	db #59,#59,#02,#55,#55,#55,#53,#4b
	db #4f,#42,#80,#00,#00,#00,#be,#e0
	db #00,#00,#03,#0a,#7f,#0a,#7f,#7d
	db #04,#79,#42,#00,#08,#79,#0a,#79
	db #7d,#04,#83,#0a,#83,#0a,#83,#7f
	db #04,#7d,#0a,#7d,#0e,#79,#7d,#be
	db #e0,#00,#00,#03,#0a,#7f,#0a,#7f
	db #7d,#04,#79,#42,#00,#08,#79,#0a
	db #79,#7d,#04,#83,#0a,#83,#0a,#7f
	db #83,#42,#00,#42,#00,#87,#00,#22
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0b,#23,#16
	db #47,#4a,#2f,#2f,#2f,#2f,#2f,#2f
	db #2f,#2f,#2f,#2f,#2f,#2f,#2f,#2f
	db #2f,#2f,#2f,#2f,#2f,#2f,#2f,#2f
	db #2f,#2f,#2f,#2f,#2f,#2f,#2f,#2f
	db #2f,#2f,#2f,#2f,#56,#46,#17,#16
	db #7c,#47,#4b,#2e,#2e,#2e,#2e,#2e
	db #2e,#2e,#2e,#2e,#2e,#2e,#2e,#2e
	db #2e,#2e,#2e,#2e,#2e,#2e,#2e,#2e
	db #2e,#2e,#2e,#2e,#2e,#2e,#2e,#2e
	db #2e,#2e,#2e,#57,#46,#7f,#17,#16
	db #88,#89,#47,#3d,#3d,#3d,#3d,#3d
	db #3d,#3d,#3d,#3d,#3d,#3d,#3d,#3d
	db #3d,#3d,#3d,#3d,#3d,#3d,#3d,#3d
	db #3d,#3d,#3d,#3d,#3d,#3d,#3d,#3d
	db #3d,#3d,#3d,#46,#8a,#8b,#17,#16
	db #4e,#4f,#3c,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#3d,#5a,#5b,#17,#16
	db #5a,#5b,#3c,#6c,#6d,#6e,#6f,#6c
	db #6d,#6e,#6f,#6c,#6d,#6e,#6f,#6c
	db #7d,#45,#6f,#6c,#45,#7d,#6f,#6c
	db #6d,#6e,#6f,#6c,#6d,#6e,#6f,#6c
	db #6d,#6e,#6f,#3d,#4e,#4f,#17,#16
	db #64,#65,#3c,#78,#79,#7a,#7b,#78
	db #79,#7a,#7b,#78,#79,#7a,#7b,#78
	db #7d,#45,#7b,#78,#45,#7d,#7b,#78
	db #79,#7a,#7b,#78,#79,#7a,#7b,#78
	db #79,#7a,#7b,#3d,#5a,#5b,#17,#16
	db #70,#71,#3c,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#3d,#66,#67,#17,#16
	db #4e,#4f,#3c,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#3d,#72,#73,#17,#16
	db #4e,#4f,#3c,#6c,#6d,#6e,#6f,#6c
	db #6d,#6e,#6f,#6c,#6d,#6e,#6f,#6c
	db #7d,#45,#6f,#6c,#45,#7d,#6f,#6c
	db #6d,#6e,#6f,#6c,#6d,#6e,#6f,#6c
	db #6d,#6e,#6f,#3d,#4e,#4f,#17,#16
	db #5a,#5b,#3c,#78,#79,#7a,#7b,#78
	db #79,#7a,#7b,#78,#79,#7a,#7b,#78
	db #7d,#45,#7b,#78,#45,#7d,#7b,#78
	db #79,#7a,#7b,#78,#79,#7a,#7b,#78
	db #79,#7a,#7b,#3d,#5a,#5b,#17,#16
	db #4e,#4f,#3c,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#3d,#4e,#4f,#17,#16
	db #4e,#4f,#3c,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#3d,#5a,#5b,#17,#16
	db #4e,#4f,#3c,#6c,#6d,#6e,#6f,#6c
	db #6d,#6e,#6f,#6c,#6d,#6e,#6f,#6c
	db #7d,#45,#6f,#6c,#45,#7d,#6f,#6c
	db #6d,#6e,#6f,#6c,#6d,#6e,#6f,#6c
	db #6d,#6e,#6f,#3d,#4e,#4f,#17,#16
	db #5a,#5b,#3c,#78,#79,#7a,#7b,#78
	db #79,#7a,#7b,#78,#79,#7a,#7b,#78
	db #7d,#45,#7b,#78,#45,#7d,#7b,#78
	db #79,#7a,#7b,#78,#79,#7a,#7b,#78
	db #79,#7a,#7b,#3d,#4e,#4f,#17,#16
	db #4e,#4f,#3c,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#3d,#5a,#5b,#17,#16
	db #64,#65,#3c,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#3d,#4e,#4f,#17,#16
	db #70,#71,#3c,#6c,#6d,#6e,#6f,#6c
	db #6d,#6e,#6f,#6c,#7d,#45,#6f,#6c
	db #7d,#45,#6f,#6c,#45,#7d,#6f,#6c
	db #45,#7d,#6f,#6c,#6d,#6e,#6f,#6c
	db #6d,#6e,#6f,#3d,#4e,#4f,#17,#16
	db #4e,#4f,#3c,#78,#79,#7a,#7b,#78
	db #79,#7a,#7b,#78,#45,#7a,#7b,#78
	db #7d,#45,#7b,#78,#45,#7d,#7b,#78
	db #79,#45,#7b,#78,#79,#7a,#7b,#78
	db #79,#7a,#7b,#3d,#5a,#5b,#17,#16
	db #5a,#5b,#3c,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#3d,#66,#67,#17,#16
	db #4e,#4f,#3c,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#3d,#72,#73,#17,#16
	db #5a,#5b,#3c,#6c,#7d,#7d,#6f,#6c
	db #7d,#7d,#6f,#6c,#7d,#7d,#6f,#6c
	db #45,#45,#6f,#6c,#45,#45,#6f,#6c
	db #7d,#7d,#6f,#6c,#7d,#7d,#6f,#6c
	db #7d,#7d,#6f,#3d,#66,#67,#17,#16
	db #4e,#4f,#3c,#78,#45,#45,#7b,#78
	db #45,#45,#7b,#78,#45,#45,#7b,#78
	db #45,#7d,#7b,#78,#7d,#45,#7b,#78
	db #45,#45,#7b,#78,#45,#45,#7b,#78
	db #45,#45,#7b,#3d,#72,#73,#17,#16
	db #5a,#5b,#3c,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#3d,#5a,#5b,#17,#16
	db #4e,#4f,#3c,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#3d,#4e,#4f,#17,#16
	db #64,#65,#3c,#6c,#45,#45,#6f,#6c
	db #45,#45,#6f,#6c,#45,#45,#6f,#6c
	db #45,#7d,#6f,#6c,#7d,#45,#6f,#6c
	db #45,#45,#6f,#6c,#45,#45,#6f,#6c
	db #45,#45,#6f,#3d,#5a,#5b,#17,#16
	db #70,#71,#3c,#78,#7d,#7d,#7b,#78
	db #7d,#7d,#7b,#78,#7d,#7d,#7b,#78
	db #45,#45,#7b,#78,#45,#45,#7b,#78
	db #7d,#7d,#7b,#78,#7d,#7d,#7b,#78
	db #7d,#7d,#7b,#3d,#4e,#4f,#17,#16
	db #4e,#4f,#3c,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#3d,#5a,#5b,#17,#16
	db #5a,#5b,#3c,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#3d,#4e,#4f,#17,#16
	db #4e,#4f,#3c,#6c,#6d,#6e,#6f,#6c
	db #6d,#6e,#6f,#6c,#45,#6e,#6f,#6c
	db #7d,#45,#6f,#6c,#45,#7d,#6f,#6c
	db #6d,#45,#6f,#6c,#6d,#6e,#6f,#6c
	db #6d,#6e,#6f,#3d,#5a,#5b,#17,#16
	db #4e,#4f,#3c,#78,#79,#7a,#7b,#78
	db #79,#7a,#7b,#78,#7d,#45,#7b,#78
	db #7d,#45,#7b,#78,#45,#7d,#7b,#78
	db #45,#7d,#7b,#78,#79,#7a,#7b,#78
	db #79,#7a,#7b,#3d,#4e,#4f,#17,#16
	db #5a,#5b,#3c,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#3d,#66,#67,#17,#16
	db #4e,#4f,#3c,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#3d,#72,#73,#17,#16
	db #5a,#5b,#3c,#6c,#6d,#6e,#6f,#6c
	db #6d,#6e,#6f,#6c,#6d,#6e,#6f,#6c
	db #7d,#45,#6f,#6c,#45,#7d,#6f,#6c
	db #6d,#6e,#6f,#6c,#6d,#6e,#6f,#6c
	db #6d,#6e,#6f,#3d,#4e,#4f,#17,#16
	db #64,#65,#3c,#78,#79,#7a,#7b,#78
	db #79,#7a,#7b,#78,#79,#7a,#7b,#78
	db #7d,#45,#7b,#78,#45,#7d,#7b,#78
	db #79,#7a,#7b,#78,#79,#7a,#7b,#78
	db #79,#7a,#7b,#3d,#5a,#5b,#17,#16
	db #70,#71,#3c,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#3d,#4e,#4f,#17,#16
	db #5a,#5b,#3c,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#60,#61,#62,#63,#60
	db #61,#62,#63,#3d,#5a,#5b,#17,#16
	db #4e,#4f,#3c,#6c,#6d,#6e,#6f,#6c
	db #6d,#6e,#6f,#6c,#6d,#6e,#6f,#6c
	db #7d,#45,#6f,#6c,#45,#7d,#6f,#6c
	db #6d,#6e,#6f,#6c,#6d,#6e,#6f,#6c
	db #6d,#6e,#6f,#3d,#4e,#4f,#17,#16
	db #5a,#5b,#3c,#78,#79,#7a,#7b,#78
	db #79,#7a,#7b,#78,#79,#7a,#7b,#78
	db #7d,#45,#7b,#78,#45,#7d,#7b,#78
	db #79,#7a,#7b,#78,#79,#7a,#7b,#78
	db #79,#7a,#7b,#3d,#5a,#5b,#17,#16
	db #4e,#4f,#3c,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#84,#85,#86,#87,#84
	db #85,#86,#87,#3d,#4e,#4f,#17,#16
	db #31,#31,#31,#31,#31,#31,#31,#31
	db #31,#31,#31,#31,#31,#31,#31,#31
	db #31,#31,#31,#31,#31,#31,#31,#31
	db #31,#31,#31,#31,#31,#31,#31,#31
	db #31,#31,#31,#31,#31,#31,#17,#31
	db #31,#54,#45,#45,#54,#31,#45,#31
	db #49,#45,#45,#49,#31,#45,#00,#01
	db #02,#03,#45,#05,#06,#07,#08,#09
	db #45,#31,#55,#45,#45,#55,#31,#45
	db #31,#48,#45,#45,#48,#31,#31,#31
	db #45,#45,#45,#3f,#7e,#30,#31,#45
	db #45,#45,#b0,#45,#45,#31,#0c,#0d
	db #0e,#0f,#10,#11,#12,#13,#14,#15
	db #31,#76,#50,#51,#52,#53,#45,#31
	db #45,#45,#45,#45,#94,#95,#31,#31
	db #45,#45,#3f,#8c,#80,#45,#31,#45
	db #45,#ac,#ad,#ae,#45,#31,#18,#19
	db #1a,#1b,#1c,#1d,#1e,#1f,#20,#21
	db #31,#82,#5c,#5d,#5e,#5f,#45,#31
	db #9c,#9d,#9e,#9f,#a0,#a1,#31,#31
	db #45,#74,#8c,#80,#45,#45,#31,#45
	db #a8,#a9,#aa,#ab,#45,#31,#24,#25
	db #26,#27,#28,#29,#2a,#2b,#2c,#2d
	db #31,#8e,#68,#69,#6a,#6b,#45,#31
	db #45,#45,#90,#91,#92,#93,#31,#31
	db #45,#3e,#04,#45,#45,#45,#31,#45
	db #45,#90,#af,#45,#45,#31,#45,#45
	db #32,#33,#34,#35,#36,#37,#38,#39
	db #31,#45,#45,#75,#45,#45,#45,#31
	db #45,#45,#45,#45,#96,#97,#31,#31
	db #31,#54,#45,#45,#54,#31,#45,#31
	db #49,#45,#45,#49,#31,#45,#45,#45
	db #45,#45,#40,#41,#42,#43,#44,#45
	db #45,#31,#55,#45,#45,#55,#31,#45
	db #31,#48,#45,#45,#48,#31,#31,#45
	db #31,#31,#31,#31,#31,#31,#31,#31
	db #31,#31,#31,#31,#31,#31,#31,#31
	db #31,#31,#31,#31,#31,#31,#31,#31
	db #31,#31,#31,#31,#31,#31,#31,#31
	db #31,#31,#31,#31,#31,#31,#45,#bf
	db #0c,#c7,#0c,#cf,#0c,#d7,#0c,#df
	db #0c,#e7,#0c,#ef,#0c,#f7,#0c,#ff
	db #0c,#07,#0d,#0f,#0d,#17,#0d,#1f
	db #0d,#27,#0d,#2f,#0d,#37,#0d,#3f
	db #0d,#47,#0d,#4f,#0d,#57,#0d,#5f
	db #0d,#67,#0d,#6f,#0d,#77,#0d,#7f
	db #0d,#87,#0d,#8f,#0d,#97,#0d,#9f
	db #0d,#a7,#0d,#af,#0d,#b7,#0d,#bf
	db #0d,#c7,#0d,#cf,#0d,#d7,#0d,#df
	db #0d,#e7,#0d,#ef,#0d,#f7,#0d,#ff
	db #0d,#07,#0e,#0f,#0e,#17,#0e,#1f
	db #0e,#27,#0e,#2f,#0e,#37,#0e,#3f
	db #0e,#47,#0e,#4f,#0e,#57,#0e,#5f
	db #0e,#67,#0e,#6f,#0e,#77,#0e,#7f
	db #0e,#87,#0e,#8f,#0e,#97,#0e,#9f
	db #0e,#a7,#0e,#af,#0e,#b7,#0e,#bf
	db #0e,#c7,#0e,#cf,#0e,#d7,#0e,#df
	db #0e,#e7,#0e,#ef,#0e,#f7,#0e,#ff
	db #0e,#07,#0f,#0f,#0f,#17,#0f,#1f
	db #0f,#27,#0f,#2f,#0f,#37,#0f,#3f
	db #0f,#47,#0f,#4f,#0f,#57,#0f,#5f
	db #0f,#67,#0f,#6f,#0f,#77,#0f,#7f
	db #0f,#87,#0f,#8f,#0f,#97,#0f,#9f
	db #0f,#a7,#0f,#af,#0f,#b7,#0f,#bf
	db #0f,#c7,#0f,#cf,#0f,#d7,#0f,#df
	db #0f,#e7,#0f,#ef,#0f,#f7,#0f,#ff
	db #0f,#07,#10,#0f,#10,#17,#10,#1f
	db #10,#27,#10,#2f,#10,#37,#10,#3f
	db #10,#47,#10,#4f,#10,#57,#10,#5f
	db #10,#67,#10,#6f,#10,#77,#10,#7f
	db #10,#87,#10,#8f,#10,#97,#10,#9f
	db #10,#a7,#10,#af,#10,#b7,#10,#bf
	db #10,#c7,#10,#cf,#10,#d7,#10,#df
	db #10,#e7,#10,#ef,#10,#f7,#10,#ff
	db #10,#07,#11,#0f,#11,#17,#11,#1f
	db #11,#27,#11,#2f,#11,#37,#11,#3f
	db #11,#47,#11,#4f,#11,#57,#11,#5f
	db #11,#67,#11,#6f,#11,#77,#11,#7f
	db #11,#87,#11,#8f,#11,#97,#11,#9f
	db #11,#a7,#11,#af,#11,#b7,#11,#bf
	db #11,#c7,#11,#cf,#11,#d7,#11,#df
	db #11,#e7,#11,#ef,#11,#f7,#11,#ff
	db #11,#07,#12,#0f,#12,#17,#12,#1f
	db #12,#27,#12,#2f,#12,#37,#12,#3f
	db #12,#47,#12,#4f,#12,#57,#12,#3c
	db #3c,#3c,#6c,#3c,#6c,#3c,#6c,#3c
	db #3c,#9c,#3c,#9c,#3c,#cc,#6c,#3c
	db #3c,#cc,#3c,#cc,#3c,#cc,#3c,#3c
	db #3c,#3c,#3c,#3c,#3c,#cc,#cc,#67
	db #cf,#33,#9e,#33,#3c,#39,#3c,#3c
	db #3c,#3c,#3c,#3c,#3c,#3c,#3c,#29
	db #03,#43,#c3,#29,#c3,#3c,#03,#03
	db #16,#c3,#83,#f3,#e3,#d3,#f3,#3c
	db #3c,#16,#3c,#83,#16,#e3,#83,#3c
	db #3c,#3c,#3c,#3c,#3c,#3c,#3c,#fc
	db #fc,#03,#03,#03,#03,#03,#03,#fc
	db #fc,#03,#03,#03,#03,#03,#03,#3c
	db #6c,#3c,#6c,#3c,#6c,#3c,#6c,#ce
	db #6c,#ce,#cc,#6d,#cd,#3c,#9e,#ce
	db #3c,#ce,#6c,#6c,#6c,#6c,#6c,#cd
	db #ce,#9e,#6d,#9e,#6d,#9e,#6d,#3c
	db #3c,#9c,#6c,#9c,#6c,#9c,#cd,#3c
	db #3c,#cc,#9c,#cf,#9c,#3c,#ce,#3c
	db #3c,#3c,#3c,#3c,#3c,#6c,#3c,#43
	db #f3,#29,#d3,#3c,#43,#3c,#c9,#f3
	db #e3,#f3,#f3,#f3,#f3,#f3,#f3,#16
	db #3c,#83,#3c,#83,#3c,#e3,#16,#a9
	db #03,#a9,#03,#a9,#03,#a9,#03,#03
	db #56,#03,#56,#03,#56,#03,#56,#3c
	db #3c,#3c,#6c,#3c,#6c,#3c,#6c,#3c
	db #3c,#9c,#3c,#9c,#3c,#cc,#6c,#3c
	db #3c,#cc,#3c,#cc,#3c,#cc,#3c,#cd
	db #ce,#cc,#cc,#3c,#3c,#cc,#9c,#3c
	db #cd,#3c,#cd,#3c,#6c,#29,#6c,#3c
	db #ce,#3c,#ce,#cf,#9c,#cc,#9c,#6c
	db #9c,#6c,#ce,#6c,#ce,#6c,#6d,#3c
	db #89,#3c,#89,#9c,#89,#9c,#89,#d3
	db #f3,#d3,#f3,#d3,#a3,#d3,#53,#e3
	db #16,#f3,#83,#53,#83,#a3,#83,#fc
	db #fc,#fc,#03,#a9,#a9,#a9,#56,#fc
	db #fc,#03,#fc,#56,#56,#a9,#56,#3c
	db #6c,#3c,#6c,#3c,#6c,#3c,#6c,#ce
	db #6c,#ce,#cc,#6d,#cd,#3c,#9e,#ce
	db #6c,#ce,#6c,#6c,#6c,#6c,#6c,#cf
	db #ce,#9e,#ce,#cf,#ce,#cc,#cc,#43
	db #16,#46,#16,#46,#89,#6c,#ce,#3c
	db #3c,#3c,#9c,#3c,#9c,#16,#9c,#6c
	db #3c,#6c,#3c,#3c,#3c,#3c,#3c,#ce
	db #c9,#6d,#c9,#29,#d3,#29,#d3,#f3
	db #53,#f3,#a3,#f3,#f3,#f3,#f3,#a3
	db #83,#53,#83,#f3,#83,#e3,#16,#03
	db #03,#03,#03,#fc,#fc,#03,#03,#03
	db #03,#fc,#fc,#03,#03,#03,#03,#3c
	db #3c,#3c,#3c,#cf,#3c,#9e,#3c,#cc
	db #cc,#c9,#cc,#cc,#c4,#cc,#cc,#3c
	db #6c,#3c,#6c,#3c,#3c,#3c,#3c,#3c
	db #6c,#3c,#6c,#3c,#3c,#3c,#3c,#6c
	db #ce,#6c,#47,#6c,#43,#6c,#29,#89
	db #9c,#c9,#89,#ce,#c9,#c7,#d9,#3c
	db #03,#03,#c3,#c3,#f3,#f3,#f3,#43
	db #f3,#d3,#f3,#f3,#f3,#f3,#f3,#f3
	db #f3,#f3,#f3,#f3,#f3,#f3,#e3,#e3
	db #16,#83,#3c,#83,#3c,#16,#3c,#03
	db #56,#03,#a9,#56,#03,#56,#03,#a9
	db #03,#56,#03,#03,#a9,#03,#a9,#03
	db #03,#03,#81,#53,#03,#03,#03,#03
	db #03,#53,#03,#03,#81,#03,#03,#3c
	db #31,#38,#30,#b2,#34,#f3,#3c,#3c
	db #3c,#3c,#3c,#3c,#79,#3c,#b6,#3c
	db #3c,#3c,#3c,#3c,#3c,#3c,#3c,#43
	db #f3,#29,#43,#3c,#29,#3c,#3c,#f3
	db #f3,#d3,#f3,#43,#c3,#29,#03,#f3
	db #f3,#f3,#e3,#c3,#83,#03,#16,#e3
	db #83,#83,#16,#16,#3c,#3c,#3c,#3c
	db #3c,#3c,#3c,#3c,#3c,#3c,#3c,#03
	db #56,#03,#a9,#56,#03,#a9,#03,#a9
	db #03,#56,#03,#03,#a9,#03,#56,#b6
	db #3c,#b6,#3c,#b6,#3c,#f3,#b6,#3c
	db #b6,#3c,#b6,#b6,#b6,#f3,#b6,#03
	db #03,#56,#fc,#03,#a9,#03,#56,#a9
	db #03,#56,#03,#03,#fc,#03,#03,#56
	db #fc,#56,#d1,#56,#c0,#56,#c0,#fc
	db #a9,#c0,#a9,#d1,#a9,#c0,#a9,#56
	db #c0,#56,#c0,#56,#c0,#56,#c0,#c0
	db #a9,#c0,#a9,#e2,#a9,#c0,#a9,#3c
	db #ff,#ff,#f3,#fb,#3c,#b6,#2d,#ff
	db #ff,#f3,#f3,#3c,#3c,#0f,#0f,#ff
	db #be,#f3,#f7,#3c,#79,#0f,#3c,#3c
	db #3c,#be,#3c,#ff,#3c,#f7,#3c,#b6
	db #b6,#b6,#b6,#f3,#b6,#b6,#b6,#b6
	db #b6,#f3,#3c,#f3,#3c,#b6,#b6,#03
	db #03,#fc,#a9,#56,#03,#a9,#03,#03
	db #56,#03,#a9,#fc,#03,#03,#03,#56
	db #c0,#56,#c0,#56,#e2,#56,#fc,#e2
	db #a9,#c0,#a9,#c0,#a9,#fc,#a9,#56
	db #c0,#56,#d1,#56,#c0,#56,#c0,#d1
	db #a9,#c0,#a9,#c0,#a9,#d1,#a9,#3c
	db #2d,#3c,#2d,#3c,#2d,#3c,#2d,#85
	db #0f,#0f,#0f,#0f,#0f,#0f,#c0,#85
	db #3c,#0f,#3c,#0f,#3c,#0f,#3c,#79
	db #ff,#3c,#f7,#3c,#f7,#3c,#f7,#69
	db #c3,#96,#3c,#96,#03,#96,#03,#c3
	db #c3,#3c,#3c,#03,#03,#03,#03,#c3
	db #c3,#3c,#3c,#03,#03,#03,#03,#c3
	db #96,#3c,#68,#03,#68,#03,#68,#56
	db #e2,#56,#c0,#56,#d0,#56,#f2,#e2
	db #a9,#f0,#a9,#65,#a9,#cf,#a9,#56
	db #c0,#56,#c0,#56,#f0,#56,#9a,#e2
	db #a9,#c0,#a9,#e2,#a9,#e0,#a9,#3c
	db #2d,#3c,#2d,#b6,#3c,#fb,#7d,#0f
	db #c0,#0f,#0f,#6d,#cf,#4f,#cf,#0f
	db #3c,#0f,#3c,#3c,#3c,#5f,#79,#3c
	db #f7,#79,#ff,#f7,#3c,#ff,#3c,#96
	db #03,#96,#03,#96,#03,#96,#03,#3c
	db #3c,#3c,#3c,#3c,#03,#3c,#03,#3c
	db #3c,#3c,#3c,#03,#3c,#03,#3c,#03
	db #68,#03,#68,#03,#68,#03,#68,#56
	db #d0,#56,#d1,#56,#c0,#56,#d1,#65
	db #a9,#f0,#a9,#c0,#a9,#c0,#a9,#56
	db #cf,#56,#9a,#56,#f0,#56,#d1,#f1
	db #a9,#e0,#a9,#c0,#a9,#d1,#a9,#3c
	db #3c,#3c,#3c,#33,#33,#39,#33,#79
	db #f3,#79,#79,#2d,#2d,#3c,#3c,#3c
	db #3c,#3c,#3c,#3c,#7d,#3c,#7d,#c0
	db #c0,#c0,#c0,#c0,#cf,#cf,#c0,#96
	db #03,#96,#03,#96,#03,#96,#03,#3c
	db #03,#3c,#03,#3c,#3c,#3c,#3c,#03
	db #3c,#03,#3c,#3c,#3c,#3c,#3c,#03
	db #68,#03,#68,#03,#68,#03,#68,#03
	db #03,#56,#03,#56,#a9,#56,#d4,#03
	db #03,#03,#03,#03,#03,#03,#03,#3c
	db #3c,#3c,#3c,#3c,#cf,#3c,#cf,#03
	db #03,#03,#a9,#56,#a9,#e8,#a9,#cf
	db #cf,#cf,#9e,#cf,#3c,#9e,#3c,#c0
	db #c0,#c0,#c0,#c0,#c0,#c0,#c0,#7d
	db #fb,#7d,#b6,#7d,#b6,#7d,#b6,#ca
	db #c0,#ca,#c0,#ca,#c0,#ca,#c0,#96
	db #03,#96,#03,#96,#3c,#68,#c0,#03
	db #03,#03,#03,#3c,#3c,#c0,#c0,#03
	db #03,#03,#03,#3c,#3c,#c0,#c0,#03
	db #68,#03,#68,#3c,#68,#c0,#94,#56
	db #c0,#56,#e2,#56,#c0,#56,#c0,#a9
	db #03,#d4,#03,#e2,#a9,#c0,#a9,#03
	db #56,#03,#e8,#56,#d1,#56,#c0,#d1
	db #a9,#c0,#a9,#c0,#a9,#c0,#a9,#79
	db #3c,#b6,#3c,#3c,#cf,#3c,#cf,#c0
	db #c0,#c0,#c0,#c0,#c0,#cf,#cf,#7d
	db #b6,#7d,#fb,#3c,#7d,#3c,#7d,#ca
	db #c0,#ca,#c0,#cf,#c0,#c0,#cf,#3c
	db #7d,#3c,#3c,#3c,#3c,#3c,#3c,#3c
	db #ff,#be,#7d,#7d,#be,#3c,#3c,#ff
	db #ff,#ff,#ff,#7d,#ff,#3c,#ff,#3c
	db #3c,#3c,#3c,#be,#3c,#be,#3c,#3c
	db #3c,#3c,#7d,#3c,#3c,#ff,#ff,#7d
	db #3c,#ff,#3c,#7d,#3c,#ff,#be,#3c
	db #7d,#3c,#ff,#ff,#ff,#ff,#ff,#ff
	db #3c,#ff,#3c,#ff,#be,#ff,#be,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#c0
;
; #7223 - player reallocated by Megachur
;
.l7224 equ $ + 1
.l7223
	db #00,#00
;
.play_music
;
	push ix
	push iy
	xor a
	ld (l7223),a
.l722e equ $ + 1
	ld a,#01
	dec a
	jp nz,l7401
.l7234 equ $ + 1
	ld a,#01
	dec a
	jr nz,l72a7
.l7239 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l724e
	ld a,(l7224)
	inc a
	ld (l7224),a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l724e
	rra
	jr nc,l7256
	ld de,l72f7
	ldi
.l7256
	rra
	jr nc,l725e
	ld de,l735c
	ldi
.l725e
	rra
	jr nc,l7266
	ld de,l73c1
	ldi
.l7266
	ld de,l72d6
	ldi
	ldi
	ld de,l733b
	ldi
	ldi
	ld de,l73a0
	ldi
	ldi
	rra
	jr nc,l7283
	ld de,l72a6
	ldi
.l7283
	rra
	jr nc,l728e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l7292),de
.l728e
	ld (l7239),hl
.l7292 equ $ + 1
	ld hl,#0000
	ld (l72b0),hl
	ld a,#01
	ld (l72ab),a
	ld (l72d1),a
	ld (l7336),a
	ld (l739b),a
.l72a6 equ $ + 1
	ld a,#01
.l72a7
	ld (l7234),a
.l72ab equ $ + 1
	ld a,#01
	dec a
	jr nz,l72cd
.l72b0 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l72ca
	srl a
	jr nz,l72be
	ld a,(hl)
	inc hl
.l72be
	jr nc,l72c5
	ld (l7223),a
	jr l72c8
.l72c5
	ld (l7400),a
.l72c8
	ld a,#01
.l72ca
	ld (l72b0),hl
.l72cd
	ld (l72ab),a
.l72d1 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7332
.l72d6 equ $ + 1
	ld hl,#0000
	call l77d4
	ld (l72d6),hl
	jr c,l7332
	ld a,d
	rra
	jr nc,l72e9
	and #0f
	ld (l74d9),a
.l72e9
	rl d
	jr nc,l72f1
	ld (l74c7),ix
.l72f1
	rl d
	jr nc,l7330
	ld a,e
.l72f7 equ $ + 1
	add #00
	ld (l74d8),a
	ld hl,#0000
	ld (l74c4),hl
	rl d
	jr c,l7310
.l7306 equ $ + 1
	ld hl,#0000
	ld a,(l74e9)
	ld (l74e1),a
	jr l732d
.l7310
	ld l,b
	add hl,hl
.l7313 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l74e9),a
	ld (l74e1),a
	ld a,(hl)
	or a
	jr z,l7329
	ld (l75f6),a
.l7329
	inc hl
	ld (l7306),hl
.l732d
	ld (l74db),hl
.l7330
	ld a,#01
.l7332
	ld (l72d1),a
.l7336 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7397
.l733b equ $ + 1
	ld hl,#0000
	call l77d4
	ld (l733b),hl
	jr c,l7397
	ld a,d
	rra
	jr nc,l734e
	and #0f
	ld (l747a),a
.l734e
	rl d
	jr nc,l7356
	ld (l7468),ix
.l7356
	rl d
	jr nc,l7395
	ld a,e
.l735c equ $ + 1
	add #00
	ld (l7479),a
	ld hl,#0000
	ld (l7465),hl
	rl d
	jr c,l7375
.l736b equ $ + 1
	ld hl,#0000
	ld a,(l748a)
	ld (l7482),a
	jr l7392
.l7375
	ld l,b
	add hl,hl
.l7378 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l748a),a
	ld (l7482),a
	ld a,(hl)
	or a
	jr z,l738e
	ld (l75f6),a
.l738e
	inc hl
	ld (l736b),hl
.l7392
	ld (l747c),hl
.l7395
	ld a,#01
.l7397
	ld (l7336),a
.l739b equ $ + 1
	ld a,#01
	dec a
	jr nz,l73fc
.l73a0 equ $ + 1
	ld hl,#0000
	call l77d4
	ld (l73a0),hl
	jr c,l73fc
	ld a,d
	rra
	jr nc,l73b3
	and #0f
	ld (l741e),a
.l73b3
	rl d
	jr nc,l73bb
	ld (l740c),ix
.l73bb
	rl d
	jr nc,l73fa
	ld a,e
.l73c1 equ $ + 1
	add #00
	ld (l741d),a
	ld hl,#0000
	ld (l7409),hl
	rl d
	jr c,l73da
.l73d0 equ $ + 1
	ld hl,#0000
	ld a,(l742e)
	ld (l7426),a
	jr l73f7
.l73da
	ld l,b
	add hl,hl
.l73dd equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l742e),a
	ld (l7426),a
	ld a,(hl)
	or a
	jr z,l73f3
	ld (l75f6),a
.l73f3
	inc hl
	ld (l73d0),hl
.l73f7
	ld (l7420),hl
.l73fa
	ld a,#01
.l73fc
	ld (l739b),a
.l7400 equ $ + 1
	ld a,#01
.l7401
	ld (l722e),a
	ld iy,l760d
.l7409 equ $ + 1
	ld hl,#0000
.l740c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l7409),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l741e equ $ + 2
.l741d equ $ + 1
	ld de,#0000
.l7420 equ $ + 1
	ld hl,#0000
	call l7618
.l7426 equ $ + 1
	ld a,#01
	dec a
	jr nz,l742f
	ld (l7420),hl
.l742e equ $ + 1
	ld a,#06
.l742f
	ld (l7426),a
.l7432
	ld de,#0000
	exx
	ld de,#0000
.l743a equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l745d
	ld a,#01
	ld (l7747),a
	call l7618
	xor a
	ld (l7747),a
	ld a,l
	or h
	jr z,l7455
.l7451 equ $ + 1
	ld a,#01
	dec a
	jr nz,l745a
.l7455
	ld (l743a),hl
	ld a,#06
.l745a
	ld (l7451),a
.l745d
	ld a,lx
	ex af,af'
	ld iy,l760b
.l7465 equ $ + 1
	ld hl,#0000
.l7468 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l7465),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l747a equ $ + 2
.l7479 equ $ + 1
	ld de,#0000
.l747c equ $ + 1
	ld hl,#0000
	call l7618
.l7482 equ $ + 1
	ld a,#01
	dec a
	jr nz,l748b
	ld (l747c),hl
.l748a equ $ + 1
	ld a,#06
.l748b
	ld (l7482),a
.l748e
	ld de,#0000
	exx
	ld de,#0000
.l7496 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l74b9
	ld a,#01
	ld (l7747),a
	call l7618
	xor a
	ld (l7747),a
	ld a,l
	or h
	jr z,l74b1
.l74ad equ $ + 1
	ld a,#01
	dec a
	jr nz,l74b6
.l74b1
	ld (l7496),hl
	ld a,#06
.l74b6
	ld (l74ad),a
.l74b9
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l7609
.l74c4 equ $ + 1
	ld hl,#0000
.l74c7 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l74c4),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l74d9 equ $ + 2
.l74d8 equ $ + 1
	ld de,#0000
.l74db equ $ + 1
	ld hl,#0000
	call l7618
.l74e1 equ $ + 1
	ld a,#01
	dec a
	jr nz,l74ea
	ld (l74db),hl
.l74e9 equ $ + 1
	ld a,#06
.l74ea
	ld (l74e1),a
.l74ed
	ld de,#0000
	exx
	ld de,#0000
.l74f5 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l7518
	ld a,#01
	ld (l7747),a
	call l7618
	xor a
	ld (l7747),a
	ld a,l
	or h
	jr z,l7510
.l750c equ $ + 1
	ld a,#01
	dec a
	jr nz,l7515
.l7510
	ld (l74f5),hl
	ld a,#06
.l7515
	ld (l750c),a
.l7518
	ex af,af'
	or lx
.l751b
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l7609
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
.l75f6 equ $ + 1
	cp #ff
	ret z
	ld (l75f6),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l7609
	nop
	nop
.l760b
	nop
	nop
.l760d
	nop
	nop
.l760f
	nop
.l7610
	nop
	nop
	nop
	nop
	nop
.l7615
	nop
	nop
.l7617
	nop
.l7618
	ld b,(hl)
	inc hl
	rr b
	jp c,l7676
	rr b
	jr c,l7646
	ld a,b
	and #0f
	jr nz,l762f
	ld (iy+#07),a
	ld lx,#09
	ret
.l762f
	ld lx,#08
	sub d
	jr nc,l7636
	xor a
.l7636
	ld (iy+#07),a
	rr b
	call l77a8
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l7646
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l7656
	ld (l760f),a
	ld lx,#00
.l7656
	ld a,b
	and #0f
	sub d
	jr nc,l765d
	xor a
.l765d
	ld (iy+#07),a
	bit 5,c
	jr nz,l7667
	inc lx
	ret
.l7667
	rr b
	bit 6,c
	call l779a
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l7676
	rr b
	jr nc,l7689
	ld a,(l74e1)
	ld c,a
	ld a,(l74e9)
	cp c
	jr nz,l7689
	ld a,#fe
	ld (l75f6),a
.l7689
	bit 1,b
	jp nz,l7742
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l7617),a
	bit 0,b
	jr z,l76f8
	bit 2,b
	call l779a
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l76b8),a
	ld a,b
	exx
.l76b8 equ $ + 1
	jr l76b9
.l76b9
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
	jr nc,l76d8
	inc hl
.l76d8
	bit 5,a
	jr z,l76e8
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
.l76e8
	ld (l7615),hl
	exx
.l76ec
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l760f),a
	ld lx,#00
	ret
.l76f8
	bit 2,b
	call l779a
	ld (l7615),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l770c),a
	ld a,b
	exx
.l770c equ $ + 1
	jr l770d
.l770d
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
	jr z,l7739
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
.l7739
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l76ec
.l7742
	bit 0,b
	jr z,l7756
.l7747 equ $ + 1
	ld a,#00
	or a
	jr z,l774f
	ld hl,#0000
	ret
.l774f
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l7618
.l7756
	ld (iy+#07),#10
	bit 5,b
	jr nz,l7763
	ld lx,#09
	jr l7776
.l7763
	ld lx,#08
	ld hx,e
	bit 2,b
	call l779a
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l7776
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l7617),a
	rr b
	rr b
	bit 2,b
	call l779a
	ld (l7615),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l760f),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l779a
	jr z,l77a8
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
.l77a8
	bit 4,b
	jr z,l77b8
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
.l77b8
	ld a,e
	bit 3,b
	jr z,l77c5
	add (hl)
	inc hl
	cp #90
	jr c,l77c5
	ld a,#8f
.l77c5
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l7808
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l77d4
	ld a,(hl)
	inc hl
	srl a
	jr c,l77fb
	sub #20
	jr c,l7805
	jr z,l77f7
	dec a
	ld e,a
.l77e2
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l77f0
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l77f0
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l77f7
	ld e,(hl)
	inc hl
	jr l77e2
.l77fb
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l7805
	add #20
	ret
.l7808
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
; .real_init_music	when push de before call ;-)
;
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
;
.real_init_music
;
	xor a
	ld (l7224),a
	ld hl,#0009
	add hl,de
	ld de,l7400
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l7313),hl
	ld (l7378),hl
	ld (l73dd),hl
	add hl,bc
	ld de,l72a6
	ldi
	ld de,l72f7
	ldi
	ld de,l735c
	ldi
	ld de,l73c1
	ldi
	ld de,l7292
	ldi
	ldi
	ld (l7239),hl
	ld a,#01
	ld (l722e),a
	ld (l7234),a
	ld a,#ff
	ld (l7617),a
	ld hl,(l7313)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l74db),hl
	ld (l747c),hl
	ld (l7420),hl
	ret
	push ix
	push iy
	ld hl,l7610
	ld bc,#0500
.l7992
	ld (hl),c
	inc hl
	djnz l7992
	ld a,#3f
	jp l751b
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	rrca
	jp c,l79b0
	rrca
	jp c,l79ac
	ld hl,(l743a)
	ret
.l79ac
	ld hl,(l7496)
	ret
.l79b0
	ld hl,(l74f5)
	ret
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,#000c
	add hl,de
	ld (l7a0f),hl
	ld hl,#0000
	ld (l74f5),hl
	ld (l7496),hl
	ld (l743a),hl
	ret
	ld (l7a2b),ix
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
	jp c,l79f7
	rrca
	jp c,l79f0
	ld ix,l7432
	jp l79fb
.l79f0
	ld ix,l748e
	jp l79fb
.l79f7
	ld ix,l74ed
.l79fb
	ld (ix+#01),c
	ld (ix+#02),b
	ld a,e
	ld (ix+#05),a
	ld a,#0f
	sub h
	ld (ix+#06),a
	ld h,#00
	add hl,hl
.l7a0f equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,d
	or a
	jr nz,l7a1b
	ld a,(hl)
.l7a1b
	ld (ix+#27),a
	ld (ix+#1f),a
	inc hl
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
.l7a2b equ $ + 2
	ld ix,#0000
	ret
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	ld hl,#0000
	rrca
	jp nc,l7a3d
	ld (l74f5),hl
.l7a3d
	rrca
	jp nc,l7a44
	ld (l7496),hl
.l7a44
	rrca
	jp z,l7a4b
	ld (l743a),hl
.l7a4b
	ret
;
; #6f13
; ld de,#0200
; call #792f
;
.init_music		; added by Megachur
;
	ld de,l0200
	jp real_init_music
;
.music_info
	db "MoonMan (2017)(CpcRetroDev.ByteRealms)(Alejandro Reyes Albillar)",0
	db "StArkos",0

	read "music_end.asm"
