; Music of Bulles Shadow Party 2021 (2021)(Vital-Motion)(Glafouk)(StArkos)
; Ripped by Megachur the 19/03/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BULLESP2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #9500

	read "music_header.asm"

.l9500
	ld hl,l950b
	xor a
	ret
.l9505
	jp l9eb3
	jp l9f35	; play
.l950b
	db #41,#54,#32,#30,#19,#95,#19,#95
	db #19,#95,#86,#95,#86,#95,#27,#95
	db #2a,#95,#36,#95,#3c,#95,#50,#95
	db #6c,#95,#7e,#95,#00,#00,#06,#01
	db #f9,#f1,#e9,#e1,#d9,#d1,#c9,#c1
	db #07,#32,#95,#01,#22,#83,#07,#37
	db #95,#01,#79,#01,#79,#40,#04,#f9
	db #71,#40,#fc,#71,#40,#f8,#69,#40
	db #f8,#61,#40,#f4,#06,#01,#79,#4b
	db #0c,#71,#4a,#0d,#69,#49,#10,#69
	db #48,#09,#61,#07,#51,#46,#09,#41
	db #45,#0e,#31,#04,#21,#03,#19,#02
	db #06,#01,#f8,#01,#e8,#01,#d8,#01
	db #c8,#01,#b8,#01,#a8,#01,#98,#01
	db #88,#01,#06,#01,#e9,#d1,#b1,#91
	db #07,#80,#95,#02,#01,#01,#00,#19
	db #05,#1f,#69,#96,#ae,#96,#11,#97
	db #61,#96,#46,#98,#ae,#96,#11,#97
	db #61,#96,#15,#97,#6b,#97,#15,#99
	db #61,#96,#c1,#98,#6b,#97,#8c,#98
	db #61,#96,#15,#97,#6b,#97,#df,#97
	db #61,#96,#c1,#98,#6b,#97,#4a,#99
	db #61,#96,#15,#97,#6b,#97,#b1,#99
	db #61,#96,#c1,#98,#6b,#97,#1d,#9a
	db #61,#96,#69,#96,#89,#9a,#b1,#99
	db #61,#96,#46,#98,#fd,#9a,#1d,#9a
	db #61,#96,#15,#97,#6b,#97,#72,#9b
	db #61,#96,#c1,#98,#6b,#97,#a7,#9b
	db #61,#96,#15,#97,#6b,#97,#dc,#9b
	db #61,#96,#15,#97,#6b,#97,#42,#9c
	db #61,#96,#15,#97,#6b,#97,#b1,#99
	db #61,#96,#15,#97,#6b,#97,#1d,#9a
	db #61,#96,#69,#96,#89,#9a,#b1,#99
	db #61,#96,#46,#98,#fd,#9a,#1d,#9a
	db #61,#96,#15,#97,#6b,#97,#1e,#9d
	db #61,#96,#15,#97,#6b,#97,#58,#9d
	db #61,#96,#15,#97,#6b,#97,#b0,#9c
	db #61,#96,#15,#97,#6b,#97,#92,#9d
	db #61,#96,#15,#97,#6b,#97,#02,#9e
	db #61,#96,#15,#97,#6b,#97,#54,#9e
	db #61,#96,#69,#96,#89,#9a,#02,#9e
	db #61,#96,#46,#98,#fd,#9a,#54,#9e
	db #61,#96,#00,#00,#8d,#95,#40,#00
	db #00,#00,#a8,#9e,#a9,#9e,#85,#02
	db #3c,#11,#3c,#05,#3c,#11,#3c,#05
	db #3c,#11,#3c,#05,#3c,#11,#3c,#02
	db #3c,#0e,#3c,#02,#3c,#0e,#3c,#02
	db #3c,#0e,#3c,#02,#3c,#0e,#3c,#00
	db #3c,#0c,#3c,#00,#3c,#0c,#3c,#00
	db #3c,#0c,#3c,#00,#3c,#0c,#3c,#3f
	db #1d,#3c,#0a,#3c,#3f,#1d,#3c,#0a
	db #3c,#3f,#1d,#3c,#0a,#3c,#00,#3c
	db #0c,#3d,#7f,#80,#03,#3c,#82,#05
	db #02,#80,#03,#3c,#82,#05,#3c,#80
	db #03,#3c,#82,#05,#3c,#80,#03,#3c
	db #00,#82,#05,#80,#03,#3c,#82,#05
	db #02,#80,#03,#3c,#82,#05,#3c,#80
	db #03,#3c,#82,#05,#3c,#80,#03,#3c
	db #82,#05,#3c,#80,#03,#3c,#82,#05
	db #02,#80,#03,#3c,#82,#05,#3c,#80
	db #03,#3c,#82,#05,#3c,#80,#03,#3c
	db #00,#82,#05,#80,#03,#3c,#82,#05
	db #02,#80,#03,#3c,#82,#05,#3c,#80
	db #03,#82,#05,#02,#02,#80,#03,#82
	db #05,#80,#03,#00,#3d,#7f,#80,#00
	db #3d,#7f,#85,#02,#3c,#11,#3c,#80
	db #04,#3c,#91,#02,#3c,#05,#3c,#11
	db #3c,#80,#04,#3c,#91,#02,#3c,#02
	db #3c,#0e,#3c,#80,#04,#3c,#8e,#02
	db #3c,#02,#3c,#0e,#3c,#80,#04,#3c
	db #8e,#02,#3c,#00,#3c,#0c,#3c,#80
	db #04,#3c,#8c,#02,#3c,#00,#3c,#0c
	db #3c,#80,#04,#3c,#8c,#02,#3c,#3f
	db #1d,#3c,#0a,#3c,#80,#04,#3c,#8a
	db #02,#3c,#3f,#1d,#3c,#0a,#3c,#80
	db #04,#00,#8c,#02,#80,#04,#3d,#7f
	db #80,#03,#85,#01,#82,#05,#02,#80
	db #03,#82,#01,#82,#05,#80,#01,#80
	db #03,#3c,#82,#05,#82,#01,#80,#03
	db #3c,#00,#82,#05,#80,#03,#bf,#1c
	db #01,#82,#05,#02,#80,#03,#80,#01
	db #82,#05,#82,#01,#80,#03,#3c,#82
	db #05,#bf,#1c,#01,#80,#03,#3c,#82
	db #05,#3c,#80,#03,#87,#01,#82,#05
	db #02,#80,#03,#80,#01,#82,#05,#82
	db #01,#80,#03,#3c,#82,#05,#85,#01
	db #80,#03,#3c,#00,#82,#05,#80,#03
	db #89,#01,#82,#05,#02,#80,#03,#82
	db #01,#82,#05,#80,#01,#80,#03,#82
	db #05,#02,#02,#80,#03,#82,#05,#80
	db #03,#00,#3d,#7f,#93,#01,#b2,#06
	db #95,#01,#3c,#ad,#06,#30,#98,#01
	db #ad,#06,#3e,#95,#01,#b0,#06,#93
	db #01,#3c,#15,#3c,#0e,#a4,#06,#26
	db #8e,#01,#a9,#06,#26,#8e,#01,#11
	db #a4,#06,#24,#8e,#01,#a6,#06,#8c
	db #01,#a1,#06,#8e,#01,#3c,#13,#ad
	db #06,#93,#01,#3c,#b0,#06,#32,#91
	db #01,#ad,#06,#3c,#2b,#8c,#01,#ad
	db #06,#8e,#01,#3c,#11,#3c,#15,#a4
	db #06,#26,#95,#01,#a9,#06,#2b,#95
	db #01,#ad,#06,#93,#01,#ab,#06,#95
	db #01,#a4,#06,#93,#01,#a6,#06,#91
	db #01,#3d,#7f,#85,#02,#3c,#11,#3c
	db #05,#3c,#11,#3c,#05,#3c,#11,#3c
	db #05,#3c,#11,#3c,#02,#3c,#0e,#3c
	db #02,#3c,#0e,#3c,#02,#3c,#0e,#3c
	db #02,#3c,#0e,#3c,#04,#3c,#10,#3c
	db #04,#3c,#10,#3c,#04,#3c,#10,#3c
	db #04,#3c,#10,#3c,#05,#3c,#11,#3c
	db #05,#3c,#11,#3c,#00,#3c,#0c,#3c
	db #80,#04,#00,#8c,#02,#80,#04,#3d
	db #7f,#93,#01,#3c,#15,#7e,#1d,#7e
	db #18,#3c,#13,#3c,#15,#3c,#0e,#3e
	db #0e,#3e,#1a,#18,#3e,#0e,#3c,#0c
	db #3c,#0e,#3c,#13,#3c,#13,#7e,#15
	db #7e,#0c,#3c,#0e,#3c,#11,#3c,#15
	db #3e,#18,#3e,#1a,#3c,#13,#3c,#15
	db #3c,#18,#3c,#15,#3d,#7f,#85,#02
	db #3c,#11,#3c,#80,#04,#3c,#91,#02
	db #3c,#05,#3c,#11,#3c,#80,#04,#3c
	db #91,#02,#3c,#02,#3c,#0e,#3c,#80
	db #04,#3c,#8e,#02,#3c,#02,#3c,#0e
	db #3c,#80,#04,#3c,#8e,#02,#3c,#04
	db #3c,#10,#3c,#80,#04,#3c,#90,#02
	db #3c,#04,#3c,#10,#3c,#80,#04,#3c
	db #90,#02,#3c,#05,#3c,#11,#3c,#80
	db #04,#3c,#91,#02,#3c,#00,#3c,#0c
	db #3c,#80,#04,#00,#8c,#02,#80,#04
	db #3d,#7f,#93,#01,#3c,#15,#7e,#18
	db #7e,#15,#3c,#13,#3c,#15,#3c,#0e
	db #3e,#0e,#3e,#0e,#11,#3e,#0e,#3c
	db #0c,#3c,#0e,#3c,#13,#3c,#13,#7e
	db #11,#7e,#0c,#3c,#0e,#3c,#11,#3c
	db #15,#3e,#15,#3e,#15,#3c,#13,#3c
	db #15,#3c,#13,#3c,#11,#3d,#7f,#93
	db #01,#b5,#06,#95,#01,#3c,#b0,#06
	db #32,#9d,#01,#ad,#06,#3e,#98,#01
	db #b0,#06,#93,#01,#3c,#15,#3c,#0e
	db #ad,#06,#30,#8e,#01,#b5,#06,#32
	db #9a,#01,#18,#ad,#06,#2d,#8e,#01
	db #b2,#06,#8c,#01,#ab,#06,#8e,#01
	db #3c,#13,#a6,#06,#93,#01,#3c,#a9
	db #06,#2b,#95,#01,#ad,#06,#3c,#26
	db #8c,#01,#a9,#06,#8e,#01,#3c,#11
	db #3c,#15,#b0,#06,#32,#98,#01,#b5
	db #06,#32,#9a,#01,#b0,#06,#93,#01
	db #ab,#06,#95,#01,#ad,#06,#98,#01
	db #b5,#06,#95,#01,#3d,#7f,#a1,#01
	db #b5,#06,#a4,#01,#3c,#b2,#06,#a9
	db #01,#29,#26,#ad,#06,#30,#a1,#01
	db #b2,#06,#a4,#01,#ab,#06,#a1,#01
	db #3c,#26,#b2,#06,#3c,#a6,#01,#b0
	db #06,#3c,#a4,#01,#ad,#06,#30,#32
	db #a1,#01,#ab,#06,#9f,#01,#ad,#06
	db #9d,#01,#3c,#18,#ab,#06,#3c,#98
	db #01,#ad,#06,#3c,#9a,#01,#b0,#06
	db #3c,#2d,#98,#01,#ab,#06,#9a,#01
	db #a4,#06,#9d,#01,#3c,#21,#a6,#06
	db #3c,#a1,#01,#a9,#06,#26,#a1,#01
	db #a1,#06,#9f,#01,#a4,#06,#a1,#01
	db #a6,#06,#9f,#01,#a9,#06,#9d,#01
	db #3d,#7f,#a1,#01,#a9,#06,#a4,#01
	db #3c,#ad,#06,#a1,#01,#21,#1f,#b2
	db #06,#2b,#a1,#01,#b0,#06,#9f,#01
	db #ad,#06,#9a,#01,#3c,#1d,#a9,#06
	db #3c,#98,#01,#a4,#06,#3c,#9a,#01
	db #b2,#06,#3c,#30,#a1,#01,#a6,#06
	db #9f,#01,#a9,#06,#9d,#01,#3c,#21
	db #b0,#06,#3c,#a4,#01,#ab,#06,#3c
	db #a6,#01,#a6,#06,#3c,#24,#98,#01
	db #ad,#06,#9a,#01,#b0,#06,#9d,#01
	db #3c,#21,#b2,#06,#3c,#9d,#01,#ad
	db #06,#32,#9f,#01,#b0,#06,#98,#01
	db #a9,#06,#9a,#01,#ab,#06,#9d,#01
	db #a6,#06,#9a,#01,#3d,#7f,#91,#06
	db #85,#01,#82,#05,#02,#8e,#06,#82
	db #01,#82,#05,#80,#01,#8c,#06,#0e
	db #82,#05,#82,#01,#89,#06,#0c,#82
	db #05,#95,#06,#11,#bf,#1c,#01,#82
	db #05,#02,#93,#06,#80,#01,#82,#05
	db #82,#01,#98,#06,#15,#82,#05,#bf
	db #1c,#01,#8e,#06,#11,#82,#05,#8c
	db #06,#0e,#87,#01,#82,#05,#02,#89
	db #06,#80,#01,#82,#05,#82,#01,#8c
	db #06,#0e,#82,#05,#85,#01,#95,#06
	db #13,#82,#05,#9a,#06,#18,#89,#01
	db #82,#05,#02,#8c,#06,#82,#01,#82
	db #05,#80,#01,#8e,#06,#82,#05,#02
	db #02,#91,#06,#82,#05,#93,#06,#15
	db #3d,#7f,#91,#06,#85,#01,#82,#05
	db #02,#8e,#06,#82,#01,#82,#05,#80
	db #01,#8c,#06,#0e,#82,#05,#82,#01
	db #89,#06,#0c,#82,#05,#8c,#06,#11
	db #bf,#1c,#01,#82,#05,#02,#93,#06
	db #80,#01,#82,#05,#82,#01,#98,#06
	db #15,#82,#05,#bf,#1c,#01,#8e,#06
	db #11,#82,#05,#8c,#06,#0e,#87,#01
	db #82,#05,#02,#89,#06,#80,#01,#82
	db #05,#82,#01,#8c,#06,#0e,#82,#05
	db #85,#01,#95,#06,#13,#82,#05,#98
	db #06,#80,#03,#89,#01,#82,#05,#02
	db #80,#03,#82,#01,#82,#05,#80,#01
	db #80,#03,#82,#05,#02,#02,#80,#03
	db #82,#05,#80,#03,#00,#3d,#7f,#9d
	db #01,#3c,#18,#7e,#1a,#7e,#18,#3c
	db #1a,#3c,#1d,#3c,#21,#3e,#15,#3e
	db #1a,#18,#3e,#11,#3c,#13,#3c,#15
	db #3c,#1a,#3c,#1c,#7e,#1d,#7e,#21
	db #3c,#1f,#3c,#1a,#3c,#1d,#3e,#1d
	db #3e,#1a,#3c,#1d,#3c,#21,#3c,#1f
	db #3c,#1c,#3d,#7f,#9d,#01,#3c,#18
	db #7e,#21,#7e,#18,#3c,#21,#3c,#1d
	db #3c,#21,#3e,#24,#3e,#26,#24,#3e
	db #24,#3c,#21,#3c,#29,#3c,#26,#3c
	db #21,#7e,#24,#7e,#21,#3c,#1f,#3c
	db #1a,#3c,#1d,#3e,#1d,#3e,#1a,#3c
	db #1d,#3c,#21,#3c,#29,#3c,#26,#3d
	db #7f,#9d,#01,#ad,#06,#98,#01,#3c
	db #b2,#06,#35,#9a,#01,#ad,#06,#3e
	db #98,#01,#b2,#06,#9a,#01,#3c,#1d
	db #3c,#21,#b2,#06,#35,#95,#01,#b7
	db #06,#35,#9a,#01,#18,#b2,#06,#2d
	db #91,#01,#b0,#06,#93,#01,#b2,#06
	db #95,#01,#3c,#1a,#a4,#06,#9c,#01
	db #3c,#a9,#06,#2b,#9d,#01,#b0,#06
	db #3e,#a1,#01,#ad,#06,#9f,#01,#3c
	db #1a,#3c,#1d,#b2,#06,#37,#9d,#01
	db #ad,#06,#30,#9a,#01,#b5,#06,#9d
	db #01,#b2,#06,#a1,#01,#b0,#06,#9f
	db #01,#b2,#06,#9c,#01,#3d,#7f,#9d
	db #01,#bf,#58,#06,#98,#01,#3c,#b7
	db #06,#3f,#58,#a1,#01,#b2,#06,#3e
	db #98,#01,#b5,#06,#a1,#01,#3c,#1d
	db #3c,#21,#ad,#06,#3c,#a4,#01,#b5
	db #06,#3c,#a6,#01,#24,#b7,#06,#3f
	db #58,#a4,#01,#b2,#06,#a1,#01,#b7
	db #06,#a9,#01,#b2,#06,#a6,#01,#ad
	db #06,#a1,#01,#3c,#b0,#06,#32,#a4
	db #01,#bf,#58,#06,#3e,#a1,#01,#b2
	db #06,#9f,#01,#3c,#1a,#b2,#06,#9d
	db #01,#b0,#06,#2b,#9d,#01,#ad,#06
	db #3c,#9a,#01,#b2,#06,#9d,#01,#b2
	db #06,#a1,#01,#b5,#06,#a9,#01,#b7
	db #06,#a6,#01,#3d,#7f,#a9,#01,#b5
	db #06,#a9,#01,#3c,#b0,#06,#2d,#a9
	db #01,#3c,#26,#b2,#06,#a1,#01,#b5
	db #06,#a4,#01,#3c,#29,#ab,#06,#a1
	db #01,#b0,#06,#32,#a1,#01,#3c,#b0
	db #06,#a1,#01,#3c,#24,#ad,#06,#a1
	db #01,#b0,#06,#9d,#01,#3c,#1f,#a9
	db #06,#98,#01,#ab,#06,#2d,#98,#01
	db #b0,#06,#3c,#98,#01,#b5,#06,#9a
	db #01,#b4,#06,#9d,#01,#3c,#1f,#b0
	db #06,#a1,#01,#b2,#06,#a1,#01,#ab
	db #06,#3c,#a1,#01,#b2,#06,#2d,#a1
	db #01,#b0,#06,#9f,#01,#b5,#06,#9d
	db #01,#b4,#06,#98,#01,#b5,#06,#9a
	db #01,#3d,#7f,#a9,#01,#3c,#29,#7e
	db #29,#3c,#26,#3c,#21,#3c,#24,#3c
	db #29,#3c,#21,#3e,#21,#3e,#21,#3c
	db #24,#3c,#21,#3c,#1d,#3c,#1f,#3c
	db #18,#3e,#18,#3e,#18,#3c,#1a,#3c
	db #1d,#3c,#1f,#3c,#21,#3c,#21,#3e
	db #21,#3e,#21,#3c,#1f,#3c,#1d,#3c
	db #18,#3c,#1a,#3d,#7f,#a1,#01,#3c
	db #24,#7e,#1f,#3c,#21,#3c,#24,#3c
	db #26,#3c,#29,#3c,#21,#3e,#21,#3e
	db #21,#3c,#24,#3c,#21,#3c,#29,#3c
	db #2b,#3c,#24,#3e,#24,#3e,#2b,#3c
	db #26,#3c,#29,#3c,#24,#3c,#21,#3c
	db #21,#3e,#21,#3e,#21,#3c,#24,#3c
	db #26,#3c,#2b,#3c,#29,#3d,#7f,#a1
	db #01,#b0,#06,#a4,#01,#3c,#ae,#06
	db #2d,#9f,#01,#ae,#06,#a1,#01,#a6
	db #06,#a4,#01,#a9,#06,#a6,#01,#3c
	db #29,#3c,#21,#b7,#06,#3c,#a1,#01
	db #b2,#06,#35,#a1,#01,#b0,#06,#a4
	db #01,#ae,#06,#a1,#01,#ab,#06,#a9
	db #01,#a9,#06,#ab,#01,#3c,#24,#b2
	db #06,#3c,#a4,#01,#b5,#06,#37,#ab
	db #01,#b2,#06,#a6,#01,#ad,#06,#a9
	db #01,#b0,#06,#a4,#01,#ad,#06,#a1
	db #01,#3c,#21,#a9,#06,#3c,#a1,#01
	db #ab,#06,#2d,#a1,#01,#b7,#06,#a4
	db #01,#b5,#06,#a6,#01,#b4,#06,#ab
	db #01,#b5,#06,#a9,#01,#3d,#7f,#a9
	db #01,#3c,#26,#3c,#a9,#06,#2b,#26
	db #3c,#a4,#01,#3c,#a9,#06,#3c,#26
	db #3c,#2b,#3c,#a4,#01,#3c,#26,#3c
	db #a9,#06,#2b,#2d,#3c,#a1,#01,#3c
	db #a9,#06,#3c,#26,#3c,#24,#3c,#9f
	db #01,#3c,#21,#3c,#a6,#06,#28,#29
	db #3c,#a4,#01,#3c,#ad,#06,#3c,#2b
	db #3c,#29,#3c,#9a,#01,#3c,#1c,#3c
	db #a9,#06,#28,#26,#3c,#9d,#01,#3c
	db #a4,#06,#3c,#9f,#01,#3c,#1d,#3d
	db #7f,#ad,#01,#3c,#2b,#3c,#b5,#06
	db #37,#30,#3c,#a6,#01,#3c,#b2,#06
	db #3c,#35,#3c,#30,#3c,#a6,#01,#3c
	db #24,#3c,#b2,#06,#30,#2d,#3c,#a9
	db #01,#3c,#b0,#06,#3c,#32,#3c,#2d
	db #3c,#a6,#01,#3c,#28,#3c,#a6,#06
	db #28,#29,#3c,#ab,#01,#3c,#b2,#06
	db #3c,#34,#3c,#35,#3c,#a8,#01,#3c
	db #26,#3c,#b7,#06,#35,#3f,#58,#3c
	db #ad,#01,#3c,#bf,#5b,#06,#3c,#b0
	db #01,#3c,#32,#3d,#7f,#ff,#ff
	jp l9eb3
	jp l9f35
	jp l9f23
.l9eb3
	ld de,#0008
	add hl,de
	ld de,l9fc3
	ldi
	ldi
	inc hl
	inc hl
	add a
	ld e,a
	ld d,#00
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,#0005
	add hl,de
	ld de,la0be
	ldi
	ld de,l9fb3
	ldi
	ld (l9f45),hl
	ld hl,l9f13
	ld bc,#0700
	call l9f10
	inc c
	ld hl,l9f1f
	ld b,#03
	call l9f10
	ld hl,l9f23
	ld bc,#01b7
	call l9f10
	ld hl,(l9fc3)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	ld (la2c7),hl
	ld (la104),hl
	ld (la12f),hl
	ld (la15a),hl
	ret
.l9f0a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,c
	ld (de),a
.l9f10
	djnz l9f0a
	ret
.l9f13
	jp #c4a0
	and b
	call nc,#d5a0
	and b
	push hl
	and b
	and #a0
.l9f1f
	ld b,b
	sbc a
.l9f23 equ $ + 2
	ld a,(#ed9f)
	ld (hl),e
	ld l,a
	and d
	xor a
	ld l,a
	ld h,a
	ld (la1e7),a
	ld (la216),hl
	ld a,#3f
	jp la179
;
.play_music
.l9f35
;
	ld (la26f),sp
.l9f3a equ $ + 1
	ld a,#01
	dec a
	jp nz,la0bf
.l9f40 equ $ + 1
	ld a,#01
	dec a
	jr nz,l9f6d
.l9f45 equ $ + 1
	ld sp,#0000
	pop hl
	ld a,l
	or h
	jr nz,l9f4f
	pop hl			; reset music
	ld sp,hl
	pop hl
.l9f4f
	ld (l9f7d),hl
	pop hl
	ld (l9fea),hl
	pop hl
	ld (la05a),hl
	pop hl
	ld (l9f45),sp
	ld sp,hl
	pop hl
	ld c,l
	xor a
	ld (l9f71),a
	ld (l9fde),a
	ld (la04e),a
	ld a,c
.l9f6d
	ld (l9f40),a
.l9f71 equ $ + 1
	ld a,#00
	sub #01
	jr c,l9f7c
	ld (l9f71),a
	jp l9fdd
.l9f7d equ $ + 1
.l9f7c
	ld hl,#0000
	ld c,(hl)
	inc hl
	ld a,c
	and #3f
	cp #3c
	jr c,l9fb2
	sub #3c
	jp z,la272
	dec a
	jr z,l9fa2
	dec a
	jr z,l9f97
	ld a,(hl)
	inc hl
	jr l9fb4
.l9f97
	ld a,c
	rlca
	rlca
	and #03
	inc a
	ld (l9f71),a
	jr l9fda
.l9fa2
	ld a,(hl)
	ld (l9f71),a
	inc hl
	jr l9fda
.l9faa equ $ + 1
.l9fa9
	ld de,#0000
	ld (la104),de
	jr l9fd4
.l9fb3 equ $ + 1
.l9fb2
	add #00
.l9fb4
	ld (la0fd),a
	rl c
	jr nc,l9fa9
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	add hl,hl
.l9fc3 equ $ + 1
	ld de,#0000
	add hl,de
	ld sp,hl
	pop hl
	ld a,(hl)
	inc hl
	ld (la110),a
	ld (la104),hl
	ld (l9faa),hl
	exx
.l9fd4
	ex de,hl
	xor a
	ld (la102),a
	ex de,hl
.l9fda
	ld (l9f7d),hl
.l9fde equ $ + 1
.l9fdd
	ld a,#00
	sub #01
	jr c,l9fe9
	ld (l9fde),a
	jp la04d
.l9fea equ $ + 1
.l9fe9
	ld hl,#0000
	ld c,(hl)
	inc hl
	ld a,c
	and #3f
	cp #3c
	jr c,la01f
	sub #3c
	jp z,la278
	dec a
	jr z,la00f
	dec a
	jr z,la004
	ld a,(hl)
	inc hl
	jr la024
.la004
	ld a,c
	rlca
	rlca
	and #03
	inc a
	ld (l9fde),a
	jr la04a
.la00f
	ld a,(hl)
	ld (l9fde),a
	inc hl
	jr la04a
.la017 equ $ + 1
.la016
	ld de,#0000
	ld (la12f),de
	jr la044
.la01f
	ld b,a
	ld a,(l9fb3)
	add b
.la024
	ld (la128),a
	rl c
	jr nc,la016
	ld a,(hl)
	inc hl
	exx
	ld e,a
	ld d,#00
	ld hl,(l9fc3)
	add hl,de
	add hl,de
	ld sp,hl
	pop hl
	ld a,(hl)
	inc hl
	ld (la13b),a
	ld (la12f),hl
	ld (la017),hl
	exx
.la044
	ex de,hl
	xor a
	ld (la12d),a
	ex de,hl
.la04a
	ld (l9fea),hl
.la04e equ $ + 1
.la04d
	ld a,#00
	sub #01
	jr c,la059
	ld (la04e),a
	jp la0bd
.la05a equ $ + 1
.la059
	ld hl,#0000
	ld c,(hl)
	inc hl
	ld a,c
	and #3f
	cp #3c
	jr c,la08f
	sub #3c
	jp z,la27e
	dec a
	jr z,la07f
	dec a
	jr z,la074
	ld a,(hl)
	inc hl
	jr la094
.la074
	ld a,c
	rlca
	rlca
	and #03
	inc a
	ld (la04e),a
	jr la0ba
.la07f
	ld a,(hl)
	ld (la04e),a
	inc hl
	jr la0ba
.la087 equ $ + 1
.la086
	ld de,#0000
	ld (la15a),de
	jr la0b4
.la08f
	ld b,a
	ld a,(l9fb3)
	add b
.la094
	ld (la153),a
	rl c
	jr nc,la086
	ld a,(hl)
	inc hl
	exx
	ld e,a
	ld d,#00
	ld hl,(l9fc3)
	add hl,de
	add hl,de
	ld sp,hl
	pop hl
	ld a,(hl)
	inc hl
	ld (la166),a
	ld (la15a),hl
	ld (la087),hl
	exx
.la0b4
	ex de,hl
	xor a
	ld (la158),a
	ex de,hl
.la0ba
	ld (la05a),hl
.la0be equ $ + 1
.la0bd
	ld a,#00
.la0bf
	ld (l9f3a),a
	ld hl,#0000
	ld a,h
	ld (la107),a
	ld de,#0000
	ld hl,#0000
	add hl,de
	ld (la0fa),hl
	ld hl,#0000
	ld a,h
	ld (la132),a
	ld de,#0000
	ld hl,#0000
	add hl,de
	ld (la125),hl
	ld hl,#0000
	ld a,h
	ld (la15d),a
	ld de,#0000
	ld hl,#0000
	add hl,de
	ld (la150),hl
	ld sp,(la26f)
.la0fa equ $ + 1
	ld hl,#0000
.la0fd equ $ + 1
	ld de,#0000
	exx
.la102 equ $ + 2
	ld ly,#00
.la104 equ $ + 1
	ld hl,#0000
.la107 equ $ + 1
	ld de,#e00f
	call la284
	ld a,ly
	inc a
.la110 equ $ + 1
	cp #00
	jr c,la117
	ld (la104),hl
	xor a
.la117
	ld (la102),a
	ld a,e
	ld (la1e7),a
	srl d
	exx
	ld (la185),hl
.la125 equ $ + 1
	ld hl,#0000
.la128 equ $ + 1
	ld de,#0000
	exx
.la12d equ $ + 2
	ld ly,#00
.la12f equ $ + 1
	ld hl,#0000
.la132 equ $ + 1
	ld e,#0f
	nop
	call la284
	ld a,ly
	inc a
.la13b equ $ + 1
	cp #00
	jr c,la142
	ld (la12f),hl
	xor a
.la142
	ld (la12d),a
	ld a,e
	ld (la216),a
	srl d
	exx
	ld (la1a4),hl
.la150 equ $ + 1
	ld hl,#0000
.la153 equ $ + 1
	ld de,#0000
	exx
.la158 equ $ + 2
	ld ly,#00
.la15a equ $ + 1
	ld hl,#0000
.la15d equ $ + 1
	ld e,#0f
	nop
	call la284
	ld a,ly
	inc a
.la166 equ $ + 1
	cp #00
	jr c,la16d
	ld (la15a),hl
	xor a
.la16d
	ld (la158),a
	ld a,e
	ld (la217),a
	ld a,d
	exx
	ld (la1c5),hl
.la179
	ld bc,#f680
	ld e,#c0
	out (c),e
	exx
	ld bc,#f401
.la185 equ $ + 1
	ld hl,#0000
	db #ed,#71 ; out (c),0
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),l
	exx
	out (c),c
	out (c),e
	exx
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),h
	exx
	out (c),c
	out (c),e
	exx
.la1a4 equ $ + 1
	ld hl,#0000
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),l
	exx
	out (c),c
	out (c),e
	exx
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),h
	exx
	out (c),c
	out (c),e
	exx
.la1c5 equ $ + 1
	ld hl,#0000
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),l
	exx
	out (c),c
	out (c),e
	exx
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),h
	exx
	out (c),c
	out (c),e
	exx
.la1e7 equ $ + 2
.la1e6 equ $ + 1
	ld hl,#0000
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),l
	exx
	out (c),c
	out (c),e
	exx
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),c
	out (c),e
	exx
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),h
	exx
	out (c),c
	out (c),e
	exx
.la217 equ $ + 2
.la216 equ $ + 1
	ld hl,#0000
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),l
	exx
	out (c),c
	out (c),e
	exx
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),h
	exx
	out (c),c
	out (c),e
	exx
.la237 equ $ + 1
	ld hl,#0000
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),l
	exx
	out (c),c
	out (c),e
	exx
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),h
	exx
	out (c),c
	out (c),e
	exx
.la258 equ $ + 1
	ld a,#00
.la25a equ $ + 1
	cp #ff
	jr z,la26e
	ld (la25a),a
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),c
	out (c),e
.la26f equ $ + 1
.la26e
	ld sp,#0000
	ret
.la272
	ld (l9f71),a
	jp l9fda
.la278
	ld (l9fde),a
	jp la04a
.la27e
	ld (la04e),a
	jp la0ba
.la284
	ld a,(hl)
	inc hl
	ld b,a
	rra
	jp c,la301
	rra
	jr c,la2ce
	rra
.la28f
	and #0f
	sub e
	jr nc,la295
	xor a
.la295
	ld e,a
	rl b
	jr nc,la2a4
	ld a,(hl)
	inc hl
	ld (la1e6),a
	set 2,d
	res 5,d
	ret
.la2a4
	set 2,d
	ret
.la2a7
	and #0f
	sub e
	jr nc,la2ad
	xor a
.la2ad
	ld e,a
	rl b
	jr nc,la2b6
	ld c,#00
	jr la2b9
.la2b6
	ld b,(hl)
	ld c,b
	inc hl
.la2b9
	call la30f
	ld a,c
	and #1f
	ret z
	ld (la1e6),a
	res 5,d
	ret
.la2c7 equ $ + 1
.la2c6
	ld hl,#0000
	inc hl
	xor a
	ld b,a
	jr la28f
.la2ce
	rra
	jr c,la2c6
	call la341
	ld (la2db),a
	exx
	ld e,l
	ld d,h
.la2db equ $ + 1
	jr la2dc
.la2dc
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
	jr nc,la2fb
	inc hl
.la2fb
	ld (la237),hl
	ex de,hl
	exx
	ret
.la301
	rra
	jr c,la308
	rra
	jp nc,la2a7
.la308
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp la284
.la30f
	jr nc,la325
	exx
	ex de,hl
	add hl,hl
	ld bc,la35b
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	exx
	rl b
	rl b
	rl b
	ret
.la325
	rl b
	rl b
	jr nc,la331
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
.la331
	rl b
	exx
	ex de,hl
	add hl,hl
	ld bc,la35b
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	exx
	ret
.la341
	ld e,#10
	rra
	and #07
	add #08
	ld (la258),a
	rl b
	ld c,(hl)
	ld b,c
	inc hl
	rl b
	call la30f
	ld a,c
	rla
	rla
	and #1c
	ret
.la35b
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
	dw #0000,#0000
; #2d17
;
;	call #0539
;	di
;	push af
;	push de
;	push hl
;	push bc
;	call l9500
;	call l9505
;	pop bc
;	pop hl
;	pop de
;	pop af
;	ei
;	call #0533
;	ret
;	call #0539
;	di
;	push af
;	push de
;	push hl
;	push bc
;	call #9508
;	pop bc
;	pop hl
;	pop de
;	pop af
;	ei
;	call #0533
;	ret
;
.init_music		; added by Megachur
;
	call l9500
	jp l9505
;
.music_info
	db "Bulles Shadow Party 2021 (2021)(Vital-Motion)(Glafouk)",0
	db "StArkos",0

	read "music_end.asm"
