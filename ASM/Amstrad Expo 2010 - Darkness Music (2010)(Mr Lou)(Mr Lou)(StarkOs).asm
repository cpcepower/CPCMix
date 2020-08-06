; Music of Amstrad Expo 2010 - Darkness Music (2010)(Mr Lou)(Mr Lou)(StarkOs)
; Ripped by Megachur the 07/02/2016
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AMSTE2DM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 07
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2016
music_adr				equ #4000

	read "music_header.asm"

.l4000
	db #53,#4b,#31,#30,#00,#40,#01,#64
	db #00,#1e,#40,#20,#40,#c8,#40,#cb
	db #40,#1a,#40,#1e,#40,#20,#40,#c8
	db #40,#0b,#c0,#00,#00,#35,#7f,#1b
	db #c5,#42,#c5,#42,#c8,#42,#c5,#42
	db #c5,#42,#1a,#43,#83,#43,#c5,#42
	db #1a,#43,#b2,#43,#12,#44,#1a,#43
	db #b2,#43,#37,#44,#1a,#43,#b2,#43
	db #c8,#44,#1a,#43,#59,#45,#12,#44
	db #19,#46,#aa,#46,#12,#44,#19,#46
	db #59,#45,#12,#44,#19,#46,#aa,#46
	db #6a,#47,#19,#46,#96,#47,#48,#48
	db #06,#49,#96,#47,#8d,#49,#06,#49
	db #96,#47,#48,#48,#06,#49,#96,#47
	db #4b,#4a,#06,#49,#05,#4b,#48,#48
	db #bb,#4b,#61,#4c,#8d,#49,#17,#4d
	db #05,#4b,#48,#48,#bb,#4b,#61,#4c
	db #4b,#4a,#17,#4d,#96,#47,#bd,#4d
	db #ff,#4d,#96,#47,#bd,#4d,#06,#49
	db #96,#47,#86,#4e,#ff,#4d,#96,#47
	db #86,#4e,#06,#49,#05,#4b,#86,#4e
	db #bb,#4b,#61,#4c,#86,#4e,#17,#4d
	db #05,#4b,#86,#4e,#bb,#4b,#61,#4c
	db #86,#4e,#17,#4d,#22,#4f,#e2,#4f
	db #fb,#4f,#b2,#43,#c5,#42,#82,#50
	db #36,#ff,#50,#ed,#40,#f7,#40,#0d
	db #41,#29,#41,#3c,#41,#5e,#41,#93
	db #41,#a2,#41,#b7,#41,#dc,#41,#f9
	db #41,#13,#42,#30,#42,#64,#42,#79
	db #42,#a0,#42,#b5,#42,#f4,#40,#f7
	db #40,#ff,#37,#00,#00,#00,#00,#0c
	db #41,#0d,#41,#00,#37,#00,#2d,#1b
	db #2d,#18,#2d,#13,#2d,#0f,#2d,#0c
	db #2d,#07,#2d,#03,#0d,#28,#41,#29
	db #41,#00,#37,#00,#4e,#fd,#ff,#4e
	db #fe,#ff,#4d,#ff,#ff,#0d,#0c,#4c
	db #ff,#ff,#4b,#ff,#ff,#0a,#09,#08
	db #06,#3a,#41,#3c,#41,#00,#37,#00
	db #2c,#0c,#0c,#2c,#f4,#2b,#0c,#0a
	db #29,#f4,#26,#f4,#5d,#41,#5e,#41
	db #00,#37,#00,#2f,#28,#2f,#0c,#2f
	db #0b,#2e,#0a,#2e,#09,#2e,#08,#2d
	db #07,#2d,#06,#2c,#05,#2b,#04,#2a
	db #03,#29,#02,#28,#01,#07,#f4,#40
	db #93,#41,#00,#b7,#00,#4a,#01,#00
	db #4f,#02,#00,#4e,#02,#00,#4f,#02
	db #00,#4e,#01,#00,#4f,#01,#00,#4e
	db #01,#00,#4f,#02,#00,#4e,#02,#00
	db #4f,#02,#00,#4e,#02,#00,#4f,#02
	db #00,#4e,#02,#00,#4f,#02,#00,#4e
	db #02,#00,#00,#a1,#41,#a2,#41,#00
	db #37,#00,#1f,#21,#1e,#21,#0d,#0c
	db #0b,#0a,#f4,#40,#b7,#41,#00,#b7
	db #00,#80,#14,#80,#14,#80,#14,#80
	db #14,#80,#14,#80,#14,#80,#14,#db
	db #41,#dc,#41,#00,#37,#00,#3f,#28
	db #28,#3f,#23,#0c,#3f,#21,#0b,#2e
	db #0a,#2e,#09,#2e,#08,#2d,#07,#2d
	db #06,#2c,#05,#2b,#04,#2a,#03,#29
	db #02,#28,#01,#07,#f4,#40,#f9,#41
	db #00,#b7,#00,#2d,#0c,#2e,#07,#2f
	db #03,#2f,#03,#0e,#0d,#28,#0c,#29
	db #07,#2a,#03,#2a,#03,#09,#08,#07
	db #05,#f4,#40,#13,#42,#00,#b7,#00
	db #3f,#27,#0c,#1f,#29,#3f,#2b,#f4
	db #3e,#2d,#0c,#1d,#2f,#3c,#31,#f4
	db #39,#33,#f4,#f4,#40,#30,#42,#00
	db #b7,#00,#2d,#0c,#2e,#07,#2f,#04
	db #2f,#04,#0e,#0d,#28,#0c,#29,#07
	db #2a,#04,#2a,#04,#09,#08,#07,#05
	db #61,#42,#64,#42,#00,#37,#00,#4f
	db #01,#00,#4f,#02,#00,#4e,#02,#00
	db #4f,#02,#00,#4e,#01,#00,#4f,#01
	db #00,#4e,#01,#00,#4f,#02,#00,#4e
	db #02,#00,#4f,#02,#00,#4e,#02,#00
	db #4f,#02,#00,#4e,#02,#00,#4d,#02
	db #00,#48,#02,#00,#77,#42,#79,#42
	db #01,#37,#00,#0f,#2f,#05,#2f,#08
	db #2f,#0c,#0d,#2d,#05,#2d,#08,#2d
	db #0c,#f4,#40,#a0,#42,#00,#b7,#00
	db #3b,#21,#0c,#3c,#21,#0c,#1d,#21
	db #1d,#21,#3c,#21,#0c,#3b,#21,#0c
	db #1a,#21,#19,#21,#18,#21,#17,#21
	db #16,#21,#15,#21,#14,#21,#13,#21
	db #ac,#42,#b5,#42,#01,#37,#00,#0f
	db #2f,#03,#2f,#07,#2f,#0c,#0d,#2d
	db #03,#2d,#07,#2d,#0c,#c1,#42,#c5
	db #42,#01,#37,#00,#2d,#0c,#4f,#fe
	db #ff,#0d,#4d,#ff,#ff,#c4,#0f,#c2
	db #4c,#83,#01,#ce,#34,#80,#02,#ce
	db #4c,#8d,#01,#ce,#34,#81,#02,#ce
	db #37,#ce,#35,#ce,#37,#ce,#3b,#d2
	db #34,#01,#d2,#34,#01,#ce,#37,#ce
	db #35,#ce,#c6,#1f,#c6,#1f,#c6,#1f
	db #c6,#1f,#4c,#81,#01,#ce,#34,#80
	db #02,#ce,#4c,#8d,#01,#ce,#34,#81
	db #02,#ce,#37,#ce,#35,#ce,#37,#ce
	db #3b,#d2,#34,#01,#d2,#34,#01,#ce
	db #37,#ce,#3b,#ce,#3d,#ce,#c6,#e1
	db #c6,#e1,#4c,#81,#01,#ce,#34,#80
	db #02,#ce,#4c,#8d,#01,#ce,#34,#81
	db #02,#ce,#37,#ce,#35,#ce,#37,#ce
	db #3b,#ce,#34,#85,#01,#34,#0b,#34
	db #81,#02,#ce,#34,#85,#01,#34,#0b
	db #34,#81,#02,#ce,#37,#ce,#35,#ce
	db #c6,#1f,#c6,#1f,#64,#8b,#01,#ce
	db #4c,#01,#ce,#34,#80,#02,#ce,#4c
	db #8d,#01,#ce,#34,#81,#02,#ce,#37
	db #ce,#35,#ce,#37,#ce,#3b,#ce,#34
	db #85,#01,#34,#0b,#34,#81,#02,#ce
	db #34,#85,#01,#34,#0b,#34,#81,#02
	db #ce,#37,#ce,#3b,#ce,#3d,#ce,#c6
	db #e1,#c6,#e1,#d0,#4c,#81,#03,#ce
	db #65,#d2,#4d,#ce,#4d,#ce,#65,#d6
	db #4d,#ce,#65,#d2,#4d,#ce,#4d,#ce
	db #65,#ce,#65,#d2,#4d,#ce,#65,#d2
	db #4d,#ce,#4d,#ce,#65,#d6,#4d,#ce
	db #65,#d2,#4d,#ce,#4d,#ce,#65,#ce
	db #65,#c2,#1c,#80,#01,#ce,#4c,#80
	db #03,#ce,#65,#ce,#1c,#80,#01,#ce
	db #4c,#80,#03,#ce,#4d,#ce,#65,#ce
	db #1c,#80,#01,#ce,#1d,#ce,#4c,#80
	db #03,#ce,#65,#ce,#1c,#80,#01,#ce
	db #4c,#80,#03,#ce,#4d,#ce,#65,#ce
	db #65,#ce,#1c,#80,#01,#ce,#4c,#80
	db #03,#ce,#65,#ce,#1c,#80,#01,#ce
	db #4c,#80,#03,#ce,#4d,#ce,#65,#ce
	db #1c,#80,#01,#ce,#1d,#ce,#4c,#80
	db #03,#ce,#65,#ce,#1c,#80,#01,#ce
	db #4c,#80,#03,#ce,#4d,#ce,#65,#ce
	db #65,#c2,#34,#81,#04,#d2,#34,#07
	db #d2,#34,#09,#d2,#34,#0b,#f2,#34
	db #01,#d2,#34,#07,#d2,#34,#09,#d2
	db #34,#0b,#e6,#34,#07,#34,#1d,#34
	db #05,#34,#1b,#34,#01,#34,#19,#34
	db #81,#04,#ce,#34,#81,#05,#ce,#34
	db #81,#04,#34,#8b,#05,#34,#01,#ce
	db #34,#81,#04,#34,#8b,#05,#34,#01
	db #ce,#34,#81,#04,#34,#8b,#05,#34
	db #01,#ce,#34,#81,#04,#34,#8b,#05
	db #34,#01,#ce,#34,#81,#04,#34,#8b
	db #05,#34,#01,#ce,#34,#81,#04,#34
	db #8b,#05,#34,#01,#ce,#34,#81,#04
	db #34,#8b,#05,#34,#81,#04,#c4,#0f
	db #34,#01,#34,#0b,#34,#81,#05,#ce
	db #34,#81,#04,#34,#8b,#05,#34,#01
	db #ce,#34,#81,#04,#34,#8b,#05,#34
	db #01,#ce,#34,#81,#04,#34,#8b,#05
	db #34,#01,#ce,#34,#81,#04,#34,#8b
	db #05,#34,#01,#ce,#34,#81,#04,#34
	db #8b,#05,#34,#01,#ce,#34,#81,#04
	db #34,#8b,#05,#34,#81,#04,#c4,#0f
	db #34,#01,#34,#0b,#34,#81,#05,#c2
	db #34,#81,#04,#ce,#34,#81,#05,#ce
	db #34,#81,#04,#34,#8b,#05,#34,#01
	db #ce,#34,#81,#04,#34,#8b,#05,#34
	db #01,#ce,#34,#81,#04,#34,#8b,#05
	db #34,#01,#ce,#34,#81,#04,#34,#8b
	db #05,#34,#01,#ce,#34,#81,#04,#34
	db #8b,#05,#34,#01,#ce,#34,#81,#04
	db #34,#8b,#05,#34,#01,#ce,#34,#81
	db #04,#34,#8b,#05,#34,#81,#04,#c4
	db #0f,#34,#01,#34,#0b,#34,#81,#05
	db #ce,#34,#81,#04,#34,#8b,#05,#34
	db #01,#ce,#34,#81,#04,#34,#8b,#05
	db #34,#01,#ce,#34,#81,#04,#34,#8b
	db #05,#34,#01,#ce,#34,#81,#04,#34
	db #8b,#05,#34,#01,#ce,#34,#81,#04
	db #34,#8b,#05,#34,#01,#ce,#34,#81
	db #04,#34,#8b,#05,#34,#81,#04,#34
	db #07,#34,#01,#34,#11,#34,#01,#34
	db #11,#1c,#81,#01,#7c,#89,#06,#4c
	db #81,#03,#7c,#8d,#06,#64,#81,#03
	db #7c,#8f,#06,#1c,#81,#01,#7c,#8d
	db #06,#4c,#81,#03,#7c,#89,#06,#4c
	db #81,#03,#7c,#8d,#06,#64,#81,#03
	db #7c,#8f,#06,#1c,#81,#01,#7c,#8d
	db #06,#1c,#81,#01,#7c,#89,#06,#4c
	db #81,#03,#7c,#8d,#06,#64,#81,#03
	db #7c,#8f,#06,#1c,#81,#01,#7c,#8d
	db #06,#4c,#81,#03,#7c,#89,#06,#4c
	db #81,#03,#7c,#8d,#06,#64,#81,#03
	db #7c,#8f,#06,#64,#81,#03,#7c,#8d
	db #06,#1e,#81,#01,#78,#89,#06,#4e
	db #81,#03,#78,#8d,#06,#66,#81,#03
	db #78,#8f,#06,#1e,#81,#01,#78,#8d
	db #06,#4e,#81,#03,#78,#89,#06,#4e
	db #81,#03,#78,#8d,#06,#66,#81,#03
	db #78,#8f,#06,#1e,#81,#01,#78,#8d
	db #06,#1e,#81,#01,#78,#89,#06,#4e
	db #81,#03,#78,#8d,#06,#66,#81,#03
	db #78,#8f,#06,#1e,#81,#01,#78,#8d
	db #06,#4e,#81,#03,#78,#89,#06,#4e
	db #81,#03,#78,#8d,#06,#6a,#81,#03
	db #78,#8f,#06,#52,#81,#03,#78,#8d
	db #06,#4c,#81,#01,#ce,#64,#80,#07
	db #64,#87,#02,#4c,#8d,#01,#ce,#64
	db #81,#07,#ce,#36,#80,#02,#ce,#64
	db #81,#07,#5a,#09,#36,#81,#02,#ce
	db #64,#80,#07,#ce,#34,#81,#01,#34
	db #0b,#64,#81,#07,#64,#87,#02,#34
	db #81,#01,#34,#0b,#64,#81,#07,#ce
	db #36,#80,#02,#ce,#64,#80,#07,#ce
	db #34,#80,#02,#64,#8b,#07,#64,#01
	db #5a,#0b,#4e,#81,#01,#ce,#66,#80
	db #07,#66,#87,#02,#4e,#8d,#01,#ce
	db #66,#81,#07,#ce,#36,#80,#02,#ce
	db #66,#80,#07,#ce,#36,#80,#02,#ce
	db #66,#80,#07,#5d,#36,#81,#01,#36
	db #0b,#66,#81,#07,#66,#87,#02,#36
	db #81,#01,#36,#0b,#66,#81,#07,#ce
	db #36,#80,#02,#60,#8f,#07,#66,#03
	db #60,#0d,#60,#01,#ce,#66,#05,#6a
	db #87,#02,#1c,#81,#01,#72,#89,#06
	db #4c,#81,#03,#72,#8d,#06,#64,#81
	db #03,#72,#8f,#06,#1c,#81,#01,#72
	db #8d,#06,#4c,#81,#03,#72,#89,#06
	db #4c,#81,#03,#72,#8d,#06,#64,#81
	db #03,#72,#8f,#06,#1c,#81,#01,#72
	db #8d,#06,#1c,#81,#01,#72,#89,#06
	db #4c,#81,#03,#72,#8d,#06,#64,#81
	db #03,#72,#8f,#06,#1c,#81,#01,#72
	db #8d,#06,#4c,#81,#03,#72,#89,#06
	db #4c,#81,#03,#72,#8d,#06,#64,#81
	db #03,#72,#8f,#06,#64,#81,#03,#72
	db #8d,#06,#1e,#81,#01,#74,#89,#06
	db #4e,#81,#03,#74,#8d,#06,#66,#81
	db #03,#74,#8f,#06,#1e,#81,#01,#74
	db #8d,#06,#4e,#81,#03,#74,#89,#06
	db #4e,#81,#03,#74,#8d,#06,#66,#81
	db #03,#74,#8f,#06,#1e,#81,#01,#74
	db #8d,#06,#1e,#81,#01,#74,#89,#06
	db #4e,#81,#03,#74,#8d,#06,#66,#81
	db #03,#74,#8f,#06,#1e,#81,#01,#74
	db #8d,#06,#4e,#81,#03,#78,#89,#06
	db #4e,#81,#03,#78,#8d,#06,#6a,#81
	db #03,#78,#8f,#06,#52,#81,#03,#78
	db #8d,#06,#34,#81,#04,#d2,#34,#07
	db #d2,#34,#09,#d2,#34,#0b,#f2,#34
	db #01,#d2,#34,#07,#d2,#34,#09,#d2
	db #34,#0b,#de,#34,#8b,#08,#ce,#34
	db #09,#ce,#34,#03,#34,#0d,#34,#01
	db #34,#13,#34,#01,#34,#13,#1c,#81
	db #01,#ce,#64,#81,#09,#7c,#8d,#06
	db #64,#83,#0a,#7c,#8f,#06,#64,#81
	db #09,#7c,#8d,#06,#4c,#80,#03,#7c
	db #8b,#06,#64,#81,#09,#7c,#8d,#06
	db #64,#83,#0a,#7c,#8f,#06,#64,#81
	db #09,#7c,#8d,#06,#1c,#81,#01,#ce
	db #64,#81,#09,#64,#0b,#64,#83,#0a
	db #7c,#8f,#06,#64,#81,#09,#7c,#8d
	db #06,#4c,#80,#03,#7c,#8b,#06,#64
	db #81,#09,#7c,#8d,#06,#64,#83,#0a
	db #64,#8b,#09,#64,#01,#64,#0b,#1e
	db #81,#01,#ce,#66,#81,#0b,#78,#8d
	db #06,#66,#83,#0a,#78,#8f,#06,#66
	db #81,#0b,#78,#8d,#06,#4e,#80,#03
	db #78,#8b,#06,#66,#81,#0b,#78,#8d
	db #06,#66,#83,#0a,#78,#8f,#06,#66
	db #81,#0b,#66,#0b,#1e,#81,#01,#ce
	db #66,#81,#0b,#78,#8d,#06,#66,#83
	db #0a,#78,#8f,#06,#66,#81,#0b,#78
	db #8d,#06,#4e,#80,#03,#66,#8b,#0b
	db #66,#01,#66,#0b,#66,#83,#0a,#78
	db #8f,#06,#66,#81,#0b,#78,#8d,#06
	db #34,#81,#08,#ce,#34,#81,#0c,#72
	db #8b,#0d,#34,#81,#08,#34,#8b,#05
	db #34,#81,#0c,#72,#8f,#0d,#34,#81
	db #08,#34,#8b,#05,#34,#81,#0c,#72
	db #91,#0d,#34,#81,#08,#34,#8b,#05
	db #34,#81,#0c,#72,#93,#0d,#34,#81
	db #08,#34,#8b,#05,#34,#81,#0c,#72
	db #95,#0d,#34,#81,#08,#34,#8b,#05
	db #34,#81,#0c,#72,#97,#0d,#34,#81
	db #08,#34,#8b,#05,#34,#81,#0c,#72
	db #99,#0d,#34,#81,#08,#34,#8b,#05
	db #34,#81,#0c,#72,#9b,#0d,#34,#81
	db #08,#34,#8b,#05,#36,#81,#0c,#6e
	db #8b,#0d,#34,#81,#08,#36,#8b,#05
	db #36,#81,#0c,#6e,#8f,#0d,#34,#81
	db #08,#36,#8b,#05,#36,#81,#0c,#6e
	db #91,#0d,#34,#81,#08,#36,#8b,#05
	db #36,#81,#0c,#6e,#93,#0d,#34,#81
	db #08,#36,#8b,#05,#36,#81,#0c,#6e
	db #95,#0d,#34,#81,#08,#36,#8b,#05
	db #36,#81,#0c,#6e,#97,#0d,#34,#81
	db #08,#36,#8b,#05,#3a,#81,#0c,#6e
	db #99,#0d,#34,#81,#08,#3a,#8b,#05
	db #3a,#81,#0c,#6e,#9b,#0d,#4c,#81
	db #01,#ce,#64,#80,#0e,#64,#87,#02
	db #4c,#8d,#01,#ce,#64,#81,#0e,#ce
	db #36,#80,#02,#ce,#64,#81,#0e,#5a
	db #89,#07,#36,#81,#02,#ce,#64,#80
	db #0e,#d2,#64,#01,#64,#87,#02,#d0
	db #64,#81,#0e,#ce,#36,#80,#02,#ce
	db #64,#80,#0e,#ce,#34,#80,#02,#64
	db #8b,#07,#64,#81,#0e,#5a,#8b,#07
	db #4e,#81,#01,#ce,#66,#80,#0e,#66
	db #87,#02,#4e,#8d,#01,#ce,#66,#81
	db #0e,#ce,#36,#80,#02,#ce,#66,#80
	db #0e,#ce,#36,#80,#02,#ce,#66,#80
	db #0e,#5c,#80,#07,#d0,#66,#81,#0e
	db #66,#87,#02,#d0,#66,#81,#0e,#ce
	db #36,#80,#02,#60,#8f,#07,#66,#83
	db #0e,#60,#8d,#07,#60,#01,#ce,#66
	db #85,#0e,#6a,#87,#02,#34,#81,#08
	db #ce,#34,#81,#0c,#64,#8b,#0f,#34
	db #81,#08,#34,#8b,#05,#34,#81,#0c
	db #64,#8f,#0f,#34,#81,#08,#34,#8b
	db #05,#34,#81,#0c,#64,#91,#0f,#34
	db #81,#08,#34,#8b,#05,#34,#81,#0c
	db #64,#93,#0f,#34,#81,#08,#34,#8b
	db #05,#34,#81,#0c,#64,#95,#0f,#34
	db #81,#08,#34,#8b,#05,#34,#81,#0c
	db #64,#97,#0f,#34,#81,#08,#34,#8b
	db #05,#34,#81,#0c,#64,#99,#0f,#34
	db #81,#08,#34,#8b,#05,#34,#81,#0c
	db #64,#9b,#0f,#34,#81,#08,#34,#8b
	db #05,#36,#81,#0c,#60,#8b,#0f,#34
	db #81,#08,#36,#8b,#05,#36,#81,#0c
	db #60,#8f,#0f,#34,#81,#08,#36,#8b
	db #05,#36,#81,#0c,#60,#91,#0f,#34
	db #81,#08,#36,#8b,#05,#36,#81,#0c
	db #60,#93,#0f,#34,#81,#08,#36,#8b
	db #05,#36,#81,#0c,#60,#95,#0f,#34
	db #81,#08,#36,#8b,#05,#36,#81,#0c
	db #60,#97,#0f,#34,#81,#08,#36,#8b
	db #05,#3a,#81,#0c,#60,#99,#0f,#34
	db #81,#08,#3a,#8b,#05,#3a,#81,#0c
	db #60,#9b,#0f,#34,#81,#08,#ce,#34
	db #81,#0c,#64,#8b,#0f,#34,#81,#08
	db #34,#8b,#05,#34,#81,#0c,#64,#8f
	db #0f,#34,#81,#08,#34,#8b,#05,#34
	db #81,#0c,#64,#91,#0f,#34,#81,#08
	db #34,#8b,#05,#34,#81,#0c,#64,#93
	db #0f,#34,#81,#08,#34,#8b,#05,#34
	db #81,#0c,#64,#95,#0f,#34,#81,#08
	db #34,#8b,#05,#34,#81,#0c,#64,#97
	db #0f,#34,#81,#08,#34,#8b,#05,#34
	db #81,#0c,#64,#99,#0f,#34,#81,#08
	db #34,#8b,#05,#34,#81,#0c,#64,#9b
	db #0f,#34,#81,#08,#34,#8b,#05,#36
	db #81,#0c,#60,#8b,#0f,#34,#81,#08
	db #36,#8b,#05,#36,#81,#0c,#60,#8f
	db #0f,#34,#81,#08,#36,#8b,#05,#36
	db #81,#0c,#60,#91,#0f,#34,#81,#08
	db #36,#8b,#05,#36,#81,#0c,#60,#93
	db #0f,#34,#81,#08,#36,#8b,#05,#36
	db #81,#0c,#60,#95,#0f,#ce,#36,#8b
	db #05,#36,#81,#0c,#60,#97,#0f,#ce
	db #36,#8b,#05,#3a,#81,#0c,#60,#99
	db #0f,#34,#81,#08,#3a,#8b,#05,#34
	db #81,#08,#60,#9b,#0f,#1c,#81,#01
	db #ce,#64,#81,#09,#72,#8d,#10,#64
	db #83,#0a,#7c,#8f,#06,#64,#81,#09
	db #72,#8d,#10,#4c,#80,#03,#7c,#8b
	db #06,#64,#81,#09,#72,#8d,#10,#64
	db #83,#0a,#7c,#8f,#06,#64,#81,#09
	db #72,#8d,#10,#1c,#80,#01,#ce,#64
	db #81,#09,#72,#8b,#10,#64,#83,#0a
	db #7c,#8f,#06,#64,#81,#09,#72,#8d
	db #10,#4c,#80,#03,#7c,#8b,#06,#64
	db #81,#09,#72,#8d,#10,#64,#83,#0a
	db #64,#8b,#09,#64,#01,#72,#8b,#10
	db #1e,#81,#01,#ce,#66,#81,#0b,#6e
	db #8d,#10,#66,#83,#0a,#78,#8f,#06
	db #66,#81,#0b,#6e,#8d,#10,#4e,#80
	db #03,#78,#8b,#06,#66,#81,#0b,#6e
	db #8d,#10,#66,#83,#0a,#78,#8f,#06
	db #66,#81,#0b,#6e,#8b,#10,#1e,#81
	db #01,#ce,#66,#81,#0b,#6e,#8d,#10
	db #66,#83,#0a,#78,#8f,#06,#66,#81
	db #0b,#6e,#8d,#10,#4e,#80,#03,#66
	db #8b,#0b,#66,#01,#6e,#8b,#10,#66
	db #83,#0a,#78,#8f,#06,#66,#81,#0b
	db #78,#8d,#06,#72,#85,#01,#ce,#64
	db #81,#0e,#64,#87,#02,#72,#85,#10
	db #c4,#0d,#64,#81,#0e,#ce,#72,#85
	db #10,#64,#0f,#64,#81,#0e,#5a,#89
	db #07,#72,#85,#10,#c4,#0d,#64,#81
	db #0e,#ce,#72,#85,#10,#34,#87,#01
	db #64,#81,#0e,#64,#87,#02,#72,#85
	db #10,#34,#87,#01,#64,#81,#0e,#ce
	db #72,#85,#10,#c4,#0d,#64,#81,#0e
	db #ce,#6e,#85,#10,#64,#8b,#07,#64
	db #81,#0e,#5a,#8b,#07,#6e,#85,#01
	db #ce,#66,#81,#0e,#66,#87,#02,#6e
	db #85,#10,#c4,#0d,#66,#81,#0e,#ce
	db #6e,#85,#10,#c4,#0d,#66,#81,#0e
	db #ce,#6e,#85,#10,#c4,#0d,#66,#81
	db #0e,#5c,#80,#07,#6e,#85,#10,#36
	db #87,#01,#66,#81,#0e,#66,#87,#02
	db #6e,#85,#10,#36,#87,#01,#66,#81
	db #0e,#ce,#6e,#85,#10,#60,#8f,#07
	db #66,#81,#0e,#60,#8d,#07,#6e,#85
	db #10,#c4,#0d,#66,#81,#0e,#6a,#87
	db #02,#1c,#81,#01,#ce,#64,#81,#09
	db #72,#8d,#10,#64,#83,#0a,#7c,#8f
	db #06,#64,#81,#09,#72,#8d,#10,#4c
	db #80,#03,#7c,#8b,#06,#64,#81,#09
	db #72,#8d,#10,#64,#83,#0a,#7c,#8f
	db #06,#64,#81,#09,#72,#8d,#10,#1c
	db #80,#01,#ce,#64,#81,#09,#72,#8b
	db #10,#64,#83,#0a,#7c,#8f,#06,#64
	db #81,#09,#72,#8d,#10,#4c,#80,#03
	db #7c,#8b,#06,#64,#81,#09,#72,#8d
	db #10,#64,#83,#0a,#64,#8b,#09,#64
	db #01,#6e,#8b,#10,#1e,#81,#01,#ce
	db #66,#81,#0b,#6e,#8d,#10,#66,#83
	db #0a,#78,#8f,#06,#66,#81,#0b,#6e
	db #8d,#10,#4e,#80,#03,#78,#8b,#06
	db #66,#81,#0b,#6e,#8d,#10,#66,#83
	db #0a,#78,#8f,#06,#66,#81,#0b,#6e
	db #8b,#10,#1e,#81,#01,#ce,#66,#81
	db #0b,#6e,#8d,#10,#66,#83,#0a,#78
	db #8f,#06,#66,#81,#0b,#6e,#8d,#10
	db #4e,#80,#03,#66,#8b,#0b,#66,#01
	db #74,#8b,#10,#66,#83,#0a,#78,#8f
	db #06,#66,#81,#0b,#78,#8d,#10,#72
	db #85,#01,#ce,#64,#81,#0e,#64,#87
	db #02,#72,#85,#10,#c4,#0b,#64,#81
	db #0e,#ce,#72,#85,#10,#64,#0f,#64
	db #81,#0e,#5a,#89,#07,#72,#85,#10
	db #c4,#0b,#64,#81,#0e,#ce,#72,#85
	db #10,#34,#87,#01,#64,#81,#0e,#64
	db #87,#02,#72,#85,#10,#34,#87,#01
	db #64,#81,#0e,#ce,#72,#85,#10,#c4
	db #0b,#64,#81,#0e,#ce,#6e,#85,#10
	db #64,#8b,#07,#64,#81,#0e,#5a,#8b
	db #07,#6e,#85,#01,#ce,#66,#81,#0e
	db #66,#87,#02,#6e,#85,#10,#c4,#0b
	db #66,#81,#0e,#ce,#6e,#85,#10,#c4
	db #0b,#66,#81,#0e,#ce,#6e,#85,#10
	db #66,#17,#66,#81,#0e,#5c,#80,#07
	db #6e,#85,#10,#36,#87,#01,#66,#81
	db #0e,#66,#87,#02,#6e,#85,#10,#36
	db #87,#01,#66,#81,#0e,#ce,#74,#87
	db #01,#60,#8f,#07,#66,#81,#0e,#60
	db #8d,#07,#78,#87,#01,#c6,#1f,#66
	db #81,#0e,#6a,#87,#02,#4c,#81,#02
	db #35,#35,#35,#4d,#35,#35,#4d,#4f
	db #37,#4d,#35,#4f,#37,#53,#3b,#4d
	db #35,#35,#35,#4d,#35,#35,#4d,#4f
	db #37,#4d,#35,#4f,#37,#53,#3b,#4d
	db #35,#35,#35,#4d,#35,#35,#4d,#4f
	db #37,#4d,#35,#4f,#37,#53,#3b,#4d
	db #35,#35,#35,#4d,#35,#35,#4d,#4f
	db #37,#4d,#35,#4f,#37,#53,#3b,#7c
	db #85,#01,#ce,#64,#80,#0e,#64,#87
	db #02,#7c,#8d,#01,#ce,#64,#81,#0e
	db #ce,#36,#80,#02,#ce,#64,#81,#0e
	db #5a,#89,#07,#36,#81,#02,#ce,#64
	db #80,#0e,#d2,#64,#01,#64,#87,#02
	db #d0,#64,#81,#0e,#ce,#36,#80,#02
	db #ce,#64,#80,#0e,#ce,#34,#80,#02
	db #64,#8b,#07,#64,#81,#0e,#5a,#8b
	db #07,#4e,#81,#01,#ce,#66,#80,#0e
	db #66,#87,#02,#4e,#8d,#01,#ce,#66
	db #81,#0e,#ce,#36,#80,#02,#ce,#66
	db #80,#0e,#ce,#36,#80,#02,#ce,#66
	db #80,#0e,#5c,#80,#07,#d0,#66,#81
	db #0e,#66,#87,#02,#d0,#66,#81,#0e
	db #ce,#36,#80,#02,#60,#8f,#07,#66
	db #83,#0e,#60,#8d,#07,#60,#01,#ce
	db #66,#85,#0e,#6a,#87,#02,#34,#81
	db #04,#34,#80,#02,#35,#35,#42,#83
	db #04,#34,#81,#02,#35,#42,#83,#04
	db #34,#01,#36,#80,#02,#34,#80,#04
	db #34,#80,#02,#42,#83,#04,#36,#81
	db #02,#53,#3b,#4d,#35,#34,#80,#04
	db #34,#80,#02,#42,#83,#04,#34,#81
	db #02,#35,#42,#83,#04,#34,#01,#36
	db #80,#02,#34,#80,#04,#34,#80,#02
	db #42,#83,#04,#36,#81,#02,#34,#80
	db #04,#3a,#80,#02,#34,#80,#04,#34
	db #80,#02,#35,#35,#42,#83,#04,#34
	db #81,#02,#35,#42,#83,#04,#34,#01
	db #36,#80,#02,#34,#80,#04,#34,#80
	db #02,#42,#83,#04,#36,#81,#02,#53
	db #3b,#4d,#35,#34,#80,#04,#34,#80
	db #02,#42,#83,#04,#34,#81,#02,#35
	db #42,#83,#04,#34,#01,#36,#80,#02
	db #34,#80,#04,#34,#80,#02,#42,#83
	db #04,#36,#81,#02,#34,#80,#04,#3a
	db #80,#02,#1c,#81,#01,#7c,#89,#06
	db #4c,#81,#03,#7c,#8d,#06,#64,#81
	db #03,#7c,#8f,#06,#1c,#81,#01,#7c
	db #8d,#06,#4c,#81,#03,#7c,#89,#06
	db #4c,#81,#03,#7c,#8d,#06,#64,#81
	db #03,#7c,#8f,#06,#1c,#81,#01,#7c
	db #8d,#06,#1c,#81,#01,#7c,#89,#06
	db #4c,#81,#03,#7c,#8d,#06,#64,#81
	db #03,#7c,#8f,#06,#1c,#81,#01,#7c
	db #8d,#06,#4c,#81,#03,#7c,#89,#06
	db #4c,#81,#03,#7c,#8d,#06,#64,#81
	db #03,#7c,#8f,#06,#64,#81,#03,#7c
	db #8d,#06,#1c,#81,#01,#7c,#89,#06
	db #4c,#81,#03,#7c,#8d,#06,#64,#81
	db #03,#7c,#8f,#06,#1c,#81,#01,#7c
	db #8d,#06,#4c,#81,#03,#7c,#89,#06
	db #4c,#81,#03,#7c,#8d,#06,#64,#81
	db #03,#7c,#8f,#06,#1c,#81,#01,#7c
	db #8d,#06,#1c,#81,#01,#7c,#89,#06
	db #4c,#81,#03,#7c,#8d,#06,#64,#81
	db #03,#7c,#8f,#06,#1c,#81,#01,#7c
	db #8d,#06,#4c,#81,#03,#7c,#89,#06
	db #4c,#81,#03,#7c,#8d,#06,#64,#81
	db #03,#7c,#8f,#06,#4c,#81,#03,#7c
	db #8d,#06,#34,#81,#04,#d2,#34,#07
	db #d2,#34,#09,#d2,#34,#0b,#f2,#34
	db #01,#d2,#34,#07,#d2,#34,#09,#d2
	db #34,#0b,#c2,#7c,#85,#01,#ce,#64
	db #80,#0e,#64,#87,#02,#7c,#8d,#01
	db #ce,#64,#81,#0e,#ce,#36,#80,#02
	db #ce,#64,#81,#0e,#5a,#89,#07,#36
	db #81,#02,#ce,#64,#80,#0e,#d2,#64
	db #01,#64,#87,#02,#d0,#64,#81,#0e
	db #ce,#36,#80,#02,#ce,#64,#80,#0e
	db #ce,#36,#80,#02,#64,#8b,#07,#64
	db #81,#0e,#5a,#8b,#07,#34,#81,#01
	db #ce,#64,#80,#0e,#64,#87,#02,#4c
	db #8d,#01,#ce,#64,#81,#0e,#ce,#36
	db #80,#02,#ce,#64,#80,#0e,#ce,#36
	db #80,#02,#ce,#64,#80,#0e,#5a,#80
	db #07,#d0,#64,#81,#0e,#64,#87,#02
	db #d0,#64,#81,#0e,#ce,#36,#80,#02
	db #60,#8f,#07,#64,#83,#0e,#60,#8d
	db #07,#60,#01,#ce,#64,#85,#0e,#60
	db #87,#02,#4c,#81,#01,#ce,#64,#80
	db #0e,#64,#87,#02,#4c,#8d,#01,#ce
	db #64,#81,#0e,#ce,#36,#80,#02,#ce
	db #64,#81,#0e,#5a,#89,#07,#36,#81
	db #02,#ce,#64,#80,#0e,#d2,#64,#01
	db #64,#87,#02,#d0,#64,#81,#0e,#ce
	db #36,#80,#02,#ce,#64,#80,#0e,#ce
	db #36,#80,#02,#64,#8b,#07,#64,#81
	db #0e,#5a,#8b,#07,#34,#81,#01,#ce
	db #64,#80,#0e,#64,#87,#02,#4c,#8d
	db #01,#ce,#64,#81,#0e,#ce,#36,#80
	db #02,#ce,#64,#80,#0e,#ce,#36,#80
	db #02,#ce,#64,#80,#0e,#5a,#80,#07
	db #d0,#64,#81,#0e,#64,#87,#02,#d0
	db #64,#81,#0e,#ce,#36,#80,#02,#ce
	db #64,#83,#0e,#d2,#64,#05,#c2,#ff
	db #00
;
; #9000 - player reallocated by Megachur
; 
	jp l900a	; init music interrupt
	jp l902e	; stop music interrupt
.l9009 equ $ + 3
.l9008 equ $ + 2
	db #00,#90,#00,#00
.l900a
	call l98e0
	ld hl,l9054
.l9011 equ $ + 1
	ld a,#00
.l9012
	cp (hl)
	jr z,l9019
	inc hl
	inc hl
	jr l9012
.l9019
	inc hl
	ld a,(hl)
	ld (l904d),a
	xor a
	ld (l9043),a
	ld hl,l9037
	ld bc,#8100
	ld de,l9041
	jp #bce0
.l902e
	ld hl,l9037
	call #bce6
	jp l98bb
.l9037
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l9041
	di
.l9043 equ $ + 1
	ld a,#00
	sub #01
	jr c,l904c
	ld (l9043),a
	ret
.l904d equ $ + 1
.l904c
	ld a,#00
	ld (l9043),a
	jp l9060
.l9054
	dec c
	ld de,#0b19
	ld (#6405),a
	ld (bc),a
	sub (hl)
	ld bc,#002c
;
.play_music
.l9060
;
	xor a
	ld (l9008),a
	ld (l9899),a
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
.l9071 equ $ + 1
	ld a,#00
.l9073 equ $ + 1
	cp #00
	jr z,l907d
	inc a
	ld (l9071),a
	jp l930c
.l907d
	xor a
	ld (l9071),a
.l9081
	or a
	jp nc,l9163
	ld (l918b),a
	ld (l91f6),a
	ld (l9261),a
	ld a,#b7
	ld (l9081),a
.l9094 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l90ca
.l909a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l90c7
	ld b,a
	and #1f
	bit 4,a
	jr z,l90ab
	or #e0
.l90ab
	ld (l9198),a
	rl b
	rl b
	jr nc,l90b9
	ld a,(hl)
	ld (l9203),a
	inc hl
.l90b9
	rl b
	jr nc,l90c2
	ld a,(hl)
	ld (l926e),a
	inc hl
.l90c2
	ld (l909a),hl
	jr l90cd
.l90c7
	ld (l909a),hl
.l90ca
	ld (l9094),a
.l90ce equ $ + 1
.l90cd
	ld a,#00
	sub #01
	jr c,l90da
	ld (l90ce),a
.l90d7 equ $ + 1
	ld a,#00
	jr l90f5
.l90db equ $ + 1
.l90da
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l90e8
	ld (l90db),hl
	jr l90f5
.l90e8
	ld (l90d7),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l90db),hl
	ld (l90ce),a
	ld a,b
.l90f5
	ld (l92cc),a
.l90f9 equ $ + 1
	ld hl,#0000
	ld de,l9191
	ldi
	ldi
	ld de,l91fc
	ldi
	ldi
	ld de,l9267
	ldi
	ldi
	ld (l90f9),hl
.l9114 equ $ + 1
	ld a,#00
	or a
	jr nz,l9126
.l9119 equ $ + 1
	ld a,#00
	sub #01
	jr c,l9134
	ld (l9119),a
.l9122 equ $ + 1
	ld hl,#0000
	jr l916c
.l9127 equ $ + 1
.l9126
	ld a,#00
	sub #01
	jr c,l9134
	ld (l9127),a
	ld hl,(l9135)
	jr l9159
.l9135 equ $ + 1
.l9134
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l9151
	ld (l9119),a
	xor a
	ld (l9114),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l9135),hl
	ex de,hl
	ld (l9122),hl
	jr l916c
.l9151
	ld (l9127),a
	ld a,#01
	ld (l9114),a
.l9159
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l9135),hl
	ex de,hl
	jr l916c
.l9164 equ $ + 1
.l9163
	ld a,#00
	sub #01
	jr nc,l9187
.l916a equ $ + 1
	ld hl,#0000
.l916c
	ld a,(hl)
	inc hl
	srl a
	jr c,l9184
	srl a
	jr c,l917b
	ld (l9073),a
	jr l9183
.l917b
	ld (l9008),a
.l917f equ $ + 1
	ld a,#01
	ld (l9009),a
.l9183
	xor a
.l9184
	ld (l916a),hl
.l9187
	ld (l9164),a
.l918b equ $ + 1
	ld a,#00
	sub #01
	jr nc,l91f2
.l9191 equ $ + 1
	ld hl,#0000
.l9194 equ $ + 1
	ld bc,#0100
.l9198 equ $ + 2
.l9197 equ $ + 1
	ld de,#0000
.l919b equ $ + 2
	ld lx,#00
	call l940b
	ld a,lx
	ld (l919b),a
	ld (l9316),hl
	exx
	ld (l9191),hl
	ld a,c
	ld (l9194),a
	ld (l9310),a
	xor a
	or hy
	jr nz,l91f0
	ld (l9333),a
	ld d,a
	ld a,e
	ld (l9197),a
	ld l,d
	ld h,l
	ld (l9313),hl
.l91c5 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l9344
	ldi
	ldi
	ld de,l933c
	ldi
	ldi
	ld de,l9335
	ldi
	ld de,l9346
	ldi
	ld a,(hl)
	inc hl
	ld (l9325),hl
	ld hl,l9899
	or (hl)
	ld (hl),a
.l91f0
	ld a,ly
.l91f2
	ld (l918b),a
.l91f6 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l925d
.l91fc equ $ + 1
	ld hl,#0000
.l91ff equ $ + 1
	ld bc,#0200
.l9203 equ $ + 2
.l9202 equ $ + 1
	ld de,#0000
.l9206 equ $ + 2
	ld lx,#00
	call l940b
	ld a,lx
	ld (l9206),a
	ld (l9368),hl
	exx
	ld (l91fc),hl
	ld a,c
	ld (l91ff),a
	ld (l9362),a
	xor a
	or hy
	jr nz,l925b
	ld (l9385),a
	ld d,a
	ld a,e
	ld (l9202),a
	ld l,d
	ld h,l
	ld (l9365),hl
.l9230 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l9396
	ldi
	ldi
	ld de,l938e
	ldi
	ldi
	ld de,l9387
	ldi
	ld de,l9398
	ldi
	ld a,(hl)
	inc hl
	ld (l9377),hl
	ld hl,l9899
	or (hl)
	ld (hl),a
.l925b
	ld a,ly
.l925d
	ld (l91f6),a
.l9261 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l92c8
.l9267 equ $ + 1
	ld hl,#0000
.l926a equ $ + 1
	ld bc,#0300
.l926e equ $ + 2
.l926d equ $ + 1
	ld de,#0000
.l9271 equ $ + 2
	ld lx,#00
	call l940b
	ld a,lx
	ld (l9271),a
	ld (l93ba),hl
	exx
	ld (l9267),hl
	ld a,c
	ld (l926a),a
	ld (l93b4),a
	xor a
	or hy
	jr nz,l92c6
	ld (l93d7),a
	ld d,a
	ld a,e
	ld (l926d),a
	ld l,d
	ld h,l
	ld (l93b7),hl
.l929b equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l93e8
	ldi
	ldi
	ld de,l93e0
	ldi
	ldi
	ld de,l93d9
	ldi
	ld de,l93ea
	ldi
	ld a,(hl)
	inc hl
	ld (l93c9),hl
	ld hl,l9899
	or (hl)
	ld (hl),a
.l92c6
	ld a,ly
.l92c8
	ld (l9261),a
.l92cc equ $ + 1
	ld a,#00
	sub #01
	jr c,l92d6
	ld (l92cc),a
	jr l930c
.l92d6
	ld a,#37
	ld (l9081),a
	ld hl,(l90f9)
.l92df equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l930c
	ld (l9094),a
	ld (l90ce),a
	ld (l9164),a
.l92f0 equ $ + 1
	ld hl,#0000
	ld (l909a),hl
.l92f6 equ $ + 1
	ld hl,#0000
	ld (l90db),hl
.l92fc equ $ + 1
	ld hl,#0000
	ld (l90f9),hl
.l9302 equ $ + 1
	ld hl,#0000
	ld (l9135),hl
.l9308 equ $ + 1
	ld a,#00
	ld (l9114),a
.l930c
	ld hl,l9899
.l9310 equ $ + 1
	ld d,#00
	exx
.l9313 equ $ + 1
	ld hl,#0000
.l9316 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9313),hl
	ld (l9546),hl
	ld a,(l919b)
	ld lx,a
.l9325 equ $ + 1
	ld hl,#0000
	ld iy,l9734
	ld a,(l9333)
	call l94a0
	ex de,hl
.l9333 equ $ + 1
	ld a,#00
.l9335 equ $ + 1
	cp #00
	jr z,l933b
	inc a
	jr l9358
.l933c equ $ + 1
.l933b
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l9354
.l9344 equ $ + 1
	ld de,#0000
.l9346
	or a
	jr c,l9354
.l934a equ $ + 1
	ld hl,#0000
	ld (l933c),hl
	dec a
	ld (l9335),a
	inc a
.l9354
	ld (l9325),de
.l9358
	ld (l9333),a
	ld a,hx
	ld (l9407),a
	exx
.l9362 equ $ + 1
	ld d,#00
	exx
.l9365 equ $ + 1
	ld hl,#0000
.l9368 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9365),hl
	ld (l9546),hl
	ld a,(l9206)
	ld lx,a
.l9377 equ $ + 1
	ld hl,#0000
	ld iy,l9785
	ld a,(l9385)
	call l94a0
	ex de,hl
.l9385 equ $ + 1
	ld a,#00
.l9387 equ $ + 1
	cp #00
	jr z,l938d
	inc a
	jr l93aa
.l938e equ $ + 1
.l938d
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l93a6
.l9396 equ $ + 1
	ld de,#0000
.l9398
	or a
	jr c,l93a6
.l939c equ $ + 1
	ld hl,#0000
	ld (l938e),hl
	dec a
	ld (l9387),a
	inc a
.l93a6
	ld (l9377),de
.l93aa
	ld (l9385),a
	ld a,hx
	ld (l9404),a
	exx
.l93b4 equ $ + 1
	ld d,#00
	exx
.l93b7 equ $ + 1
	ld hl,#0000
.l93ba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l93b7),hl
	ld (l9546),hl
	ld a,(l9271)
	ld lx,a
.l93c9 equ $ + 1
	ld hl,#0000
	ld iy,l97d6
	ld a,(l93d7)
	call l94a0
	ex de,hl
.l93d7 equ $ + 1
	ld a,#00
.l93d9 equ $ + 1
	cp #00
	jr z,l93df
	inc a
	jr l93fc
.l93e0 equ $ + 1
.l93df
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l93f8
.l93e8 equ $ + 1
	ld de,#0000
.l93ea
	or a
	jr c,l93f8
.l93ee equ $ + 1
	ld hl,#0000
	ld (l93e0),hl
	dec a
	ld (l93d9),a
	inc a
.l93f8
	ld (l93c9),de
.l93fc
	ld (l93d7),a
	ld a,hx
	sla a
.l9404 equ $ + 1
	or #00
	rla
.l9407 equ $ + 1
	or #00
	jp l9729
.l940b
	ld a,(hl)
	inc hl
	srl a
	jr c,l9444
	cp #60
	jr nc,l944c
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l9424
	and #0f
	ld c,a
.l9424
	rl b
	jr nc,l942a
	ld e,(hl)
	inc hl
.l942a
	rl b
	jr nc,l943c
.l942e
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l9438
	dec h
.l9438
	ld ly,#00
	ret
.l943c
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l9444
	ld hy,#00
	add d
	ld lx,a
	jr l943c
.l944c
	ld hy,#01
	sub #60
	jr z,l946d
	dec a
	jr z,l9484
	dec a
	jr z,l9476
	dec a
	jr z,l942e
	dec a
	jr z,l9480
	dec a
	jr z,l9495
	dec a
	jr z,l948c
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l946d
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l9476
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l9480
	ld c,(hl)
	inc hl
	jr l942e
.l9484
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l948c
	ld a,(hl)
	inc hl
	ld (l9008),a
	ld a,b
	ld (l9009),a
.l9495
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l94a0
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l9556
	bit 4,e
	jr z,l9508
	ld a,(hl)
	bit 6,a
	jr z,l94d5
	ld d,#08
	inc hl
	and #1f
	jr z,l94bc
	ld (l9827),a
	res 3,d
.l94bc
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l94c5
	xor a
.l94c5
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l94d5
	ld (l9827),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l94f1
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l94ea
	xor a
.l94ea
	ld (iy+#36),a
	ld hx,d
	jr l951b
.l94f1
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l94fa
	xor a
.l94fa
	ld (iy+#36),a
.l94fd
	ld hx,d
	ret
.l9500
	ld (iy+#36),#00
	ld d,#09
	jr l94fd
.l9508
	ld d,#08
	ld a,e
	and #0f
	jr z,l9500
	exx
	sub d
	exx
	jr nc,l9515
	xor a
.l9515
	ld (iy+#36),a
	ld hx,#08
.l951b
	bit 5,e
	jr z,l9523
	ld a,(hl)
	inc hl
	jr l9524
.l9523
	xor a
.l9524
	bit 6,e
	jr z,l952e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l9531
.l952e
	ld de,#0000
.l9531
	add lx
	cp #60
	jr c,l9539
	ld a,#5f
.l9539
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l9669
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l9546 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l9556
	or a
	jr nz,l9560
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l9560
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
	ld (l9892),a
	bit 3,e
	jr z,l9582
	ld a,(hl)
	inc hl
	ld (l9827),a
	res 3,d
	jr l9582
.l9582
	ld hx,d
	xor a
	bit 7,b
	jr z,l9594
	bit 6,b
	jr z,l958f
	ld a,(hl)
	inc hl
.l958f
	ld (l9643),a
	ld a,#01
.l9594
	ld (l95dc),a
	ld a,b
	rra
	and #0e
	ld (l95ed),a
	bit 4,e
	jp nz,l964e
	bit 1,e
	jr z,l95ab
	ld a,(hl)
	inc hl
	jr l95ac
.l95ab
	xor a
.l95ac
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l95b9
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l95bc
.l95b9
	ld de,#0000
.l95bc
	add lx
	cp #60
	jr c,l95c4
	ld a,#5f
.l95c4
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l9669
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l9546)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l95dc equ $ + 1
	ld a,#00
	or a
	jr nz,l95ec
	ex af,af'
	bit 5,a
	jr nz,l9657
.l95e5
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l95ed equ $ + 1
.l95ec
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l95f7),a
	ld a,c
.l95f7 equ $ + 1
	jr l95f8
.l95f8
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
	jr nc,l9611
	inc bc
.l9611
	ld a,c
	ld (l985c),a
	ld a,b
	ld (l9877),a
	ld a,(l95dc)
	or a
	jr z,l964c
	ld a,(l95ed)
	ld e,a
	srl a
	add e
	ld (l962b),a
	ld a,b
.l962b equ $ + 1
	jr l962c
.l962c
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
.l9643 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l964c
	pop hl
	ret
.l964e
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l95e5
.l9657
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l985c),a
	inc hl
	ld a,(hl)
	ld (l9877),a
	inc hl
	ret
.l9669
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
.l9729
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l9734 equ $ + 1
	ld a,#00
.l9736 equ $ + 1
	cp #00
	jr z,l974e
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
	ld (l9736),a
	exx
.l974f equ $ + 1
.l974e
	ld a,#00
.l9751 equ $ + 1
	cp #00
	jr z,l9769
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
	ld (l9751),a
	exx
.l976a equ $ + 1
.l9769
	ld a,#00
.l976c equ $ + 1
	cp #00
	jr z,l9784
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
	ld (l976c),a
	exx
.l9785 equ $ + 1
.l9784
	ld a,#00
.l9787 equ $ + 1
	cp #00
	jr z,l979f
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
	ld (l9787),a
	exx
.l97a0 equ $ + 1
.l979f
	ld a,#00
.l97a2 equ $ + 1
	cp #00
	jr z,l97ba
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
	ld (l97a2),a
	exx
.l97bb equ $ + 1
.l97ba
	ld a,#00
.l97bd equ $ + 1
	cp #00
	jr z,l97d5
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
	ld (l97bd),a
	exx
.l97d6 equ $ + 1
.l97d5
	ld a,#00
.l97d8 equ $ + 1
	cp #00
	jr z,l97f0
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
	ld (l97d8),a
	exx
.l97f1 equ $ + 1
.l97f0
	ld a,#00
.l97f3 equ $ + 1
	cp #00
	jr z,l980b
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
	ld (l97f3),a
	exx
.l980c equ $ + 1
.l980b
	ld a,#00
.l980e equ $ + 1
	cp #00
	jr z,l9826
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
	ld (l980e),a
	exx
.l9827 equ $ + 1
.l9826
	ld a,#00
.l9829 equ $ + 1
	cp #00
	jr z,l9841
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
	ld (l9829),a
	exx
.l9841
	ld a,h
.l9843 equ $ + 1
	cp #c0
	jr z,l985b
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
	ld (l9843),a
	exx
.l985c equ $ + 1
.l985b
	ld a,#00
.l985e equ $ + 1
	cp #00
	jr z,l9876
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
	ld (l985e),a
	exx
.l9877 equ $ + 1
.l9876
	ld a,#00
.l9879 equ $ + 1
	cp #00
	jr z,l9891
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
	ld (l9879),a
	exx
.l9892 equ $ + 1
.l9891
	ld a,#00
.l9894 equ $ + 1
	cp #ff
	jr nz,l989e
	ld h,a
.l9899 equ $ + 1
	ld a,#00
	or a
	jr z,l98b2
	ld a,h
.l989e
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
	ld (l9894),a
.l98b2
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
	ret
;
.stop_music
.l98bb
;
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l976a),a
	ld (l97bb),a
	ld (l980c),a
	dec a
	ld (l976c),a
	ld (l97bd),a
	ld (l980e),a
	ld (l9843),a
	ld a,#3f
	jp l9729
;
.real_init_music
.l98e0
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l917f),a
	inc hl
	ld a,(hl)
	ld (l9011),a
	inc hl
	inc hl
	ld de,l90db
	ldi
	ldi
	ld de,l90f9
	ldi
	ldi
	ld de,l9135
	ldi
	ldi
	ld de,l91c5
	ldi
	ldi
	ld de,l92f0
	ldi
	ldi
	ld de,l92f6
	ldi
	ldi
	ld de,l92fc
	ldi
	ldi
	ld de,l9302
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l9073),a
	ld (l9071),a
	ld (l909a),hl
	ld hl,(l9135)
	ld (l92df),hl
	ld a,(hl)
	and #01
	ld (l9114),a
	ld hl,(l9302)
	ld a,(hl)
	and #01
	ld (l9308),a
	ld hl,(l91c5)
	ld (l9230),hl
	ld (l929b),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l9325),hl
	ld (l9377),hl
	ld (l93c9),hl
	ld (l9344),hl
	ld (l9396),hl
	ld (l93e8),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l934a),de
	ld (l939c),de
	ld (l93ee),de
	ld (l933c),de
	ld (l938e),de
	ld (l93e0),de
	ld a,#37
	ld (l9081),a
	ld hl,l999f
.l998f
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l9996
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l9996
	jr l998f
.l999f
	jr l99a1
.l99a1
	dw l9734,l974f,l9785,l97a0
	dw l97d6,l97f1,l9827,l976a
	dw l97bb,l980c,l985c,l9877
	dw l9892,l9094,l90ce,l9119
	dw l9127,l9164,l9333,l9385
	dw l93d7,l9194,l91ff,l926a
	dw #ff11,l9736,l9751,l9787
	dw l97a2,l97d8,l97f3,l9829
	dw l9843,l976c,l97bd,l980e
	dw l985e,l9879,l9894,l9335
	dw l9387,l93d9,#b703,l9346
	dw l9398,l93ea,#0000
;
.init_music
;
	ld de,l4000
	jp real_init_music
;
.music_info
	db "Amstrad Expo 2010 - Darkness Music (2010)(Mr Lou)(Mr Lou)",0
	db "StarkOs",0

	read "music_end.asm"
