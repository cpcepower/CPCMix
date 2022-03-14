@todo play, etc. à revoir !

; Music of La Planete Mysterieuse (2005)(Public Domain)()(StArkos)
; Ripped by Megachur the 07/01/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LAPLANEM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 07
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #4042

	read "music_header.asm"

.l4042
	db #53,#4b,#31,#30,#42,#40,#01,#32
	db #00,#74,#40,#7c,#40,#1e,#41,#21
	db #41,#5c,#40,#74,#40,#7c,#40,#1e
	db #41,#05,#c0,#00,#00,#05,#28,#07
	db #00,#0b,#28,#05,#40,#0c,#01,#40
	db #00,#40,#0c,#c6,#03,#0f,#c0,#00
	db #0c,#01,#7f,#01,#3e,#7f,#05,#3e
	db #7f,#10,#60,#42,#76,#42,#a3,#42
	db #a5,#42,#bb,#42,#a3,#42,#e8,#42
	db #f6,#42,#a3,#42,#60,#42,#76,#42
	db #0d,#43,#2b,#43,#94,#43,#f2,#43
	db #2b,#43,#94,#43,#02,#44,#2b,#43
	db #94,#43,#14,#44,#2b,#43,#94,#43
	db #f2,#43,#29,#44,#94,#43,#92,#44
	db #d4,#44,#f6,#44,#28,#45,#a3,#42
	db #2c,#45,#a3,#42,#8c,#45,#2c,#45
	db #a2,#45,#b9,#45,#2c,#45,#e4,#45
	db #fa,#45,#2c,#45,#2d,#46,#b9,#45
	db #2c,#45,#e4,#45,#fa,#45,#2c,#45
	db #2d,#46,#47,#46,#63,#46,#7d,#46
	db #a3,#46,#bf,#46,#d9,#46,#fa,#46
	db #63,#46,#7d,#46,#1a,#47,#bf,#46
	db #d9,#46,#fa,#46,#40,#47,#7d,#46
	db #1a,#47,#a0,#47,#d9,#46,#1a,#47
	db #a0,#47,#00,#48,#1a,#47,#a0,#47
	db #00,#48,#1a,#47,#a0,#47,#81,#48
	db #1a,#47,#a0,#47,#c3,#48,#43,#49
	db #a3,#42,#51,#49,#34,#61,#49,#39
	db #41,#43,#41,#66,#41,#85,#41,#97
	db #41,#a9,#41,#b7,#41,#d8,#41,#f4
	db #41,#11,#42,#26,#42,#51,#42,#40
	db #41,#43,#41,#ff,#37,#00,#00,#00
	db #00,#5c,#41,#66,#41,#00,#37,#00
	db #0f,#0d,#0d,#0c,#0d,#0d,#0d,#0c
	db #0d,#0d,#0d,#0d,#0c,#0d,#0d,#0d
	db #0c,#0c,#08,#08,#07,#08,#08,#08
	db #08,#07,#08,#08,#80,#41,#85,#41
	db #00,#37,#00,#0e,#0e,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#8c,#41,#97,#41,#00
	db #37,#00,#0d,#0d,#2d,#03,#2d,#03
	db #2d,#07,#2d,#07,#0d,#9e,#41,#a9
	db #41,#00,#37,#00,#0d,#0d,#2d,#04
	db #2d,#04,#2d,#07,#2d,#07,#0d,#40
	db #41,#b7,#41,#00,#b7,#00,#1f,#2f
	db #1e,#23,#0d,#00,#00,#40,#41,#d8
	db #41,#00,#b7,#00,#1f,#39,#3f,#34
	db #03,#3e,#2c,#0c,#1d,#29,#1c,#28
	db #1b,#26,#1a,#26,#19,#26,#18,#26
	db #17,#26,#00,#00,#00,#00,#ec,#41
	db #f4,#41,#00,#37,#00,#07,#09,#0b
	db #0c,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0b,#0c,#0c,#0b,#0c
	db #0c,#0b,#40,#41,#11,#42,#00,#b7
	db #00,#1f,#2f,#1f,#23,#00,#10,#01
	db #1f,#2f,#1f,#22,#00,#00,#1f,#30
	db #1f,#21,#00,#00,#00,#00,#00,#40
	db #41,#26,#42,#08,#b7,#00,#80,#12
	db #80,#11,#80,#11,#81,#11,#80,#11
	db #81,#11,#81,#11,#49,#42,#51,#42
	db #00,#37,#00,#0e,#0e,#2d,#0c,#2d
	db #0c,#0d,#0d,#2d,#0c,#2d,#0c,#0d
	db #0d,#2d,#0c,#2d,#0c,#0c,#0c,#2c
	db #0c,#2c,#0c,#0b,#0b,#2b,#0c,#2b
	db #0c,#0a,#0a,#2a,#0c,#2a,#0c,#40
	db #41,#60,#42,#08,#b7,#00,#85,#1e
	db #ff,#ff,#81,#1e,#81,#1e,#60,#89
	db #01,#d6,#61,#d6,#61,#d2,#59,#d6
	db #59,#de,#61,#d6,#61,#d6,#61,#d2
	db #59,#d6,#59,#c2,#c4,#03,#ce,#66
	db #80,#01,#ce,#67,#d2,#67,#ce,#6f
	db #d2,#6f,#d2,#61,#ce,#61,#d2,#61
	db #ce,#65,#d2,#67,#d2,#67,#ce,#67
	db #d2,#67,#ce,#6f,#d2,#6f,#d2,#61
	db #ce,#61,#d2,#61,#ce,#65,#d2,#67
	db #c2,#ca,#c2,#60,#89,#02,#d6,#61
	db #d6,#61,#d2,#59,#d6,#59,#de,#61
	db #d6,#61,#d6,#61,#d2,#59,#d6,#59
	db #c2,#c4,#03,#ce,#66,#80,#02,#ce
	db #67,#d2,#67,#ce,#6f,#d2,#6f,#d2
	db #61,#ce,#61,#d2,#61,#ce,#65,#d2
	db #67,#d2,#67,#ce,#67,#d2,#67,#ce
	db #6f,#d2,#6f,#d2,#61,#ce,#61,#d2
	db #61,#ce,#65,#d2,#5d,#c2,#56,#80
	db #01,#d6,#57,#d6,#57,#d2,#5d,#d6
	db #5d,#d6,#5d,#c2,#d0,#5c,#80,#01
	db #ce,#5d,#d2,#65,#ce,#67,#d2,#6b
	db #d2,#65,#ce,#65,#d2,#75,#ce,#6b
	db #d2,#6f,#c2,#78,#89,#03,#ea,#7e
	db #89,#04,#ea,#78,#89,#03,#ea,#7e
	db #80,#04,#dc,#c6,#01,#c6,#01,#c6
	db #01,#c6,#01,#c6,#01,#c6,#01,#c6
	db #01,#60,#85,#02,#48,#05,#66,#80
	db #01,#4f,#67,#4f,#60,#80,#02,#49
	db #66,#80,#01,#4f,#6f,#57,#60,#80
	db #02,#49,#6e,#80,#01,#57,#59,#41
	db #61,#49,#61,#49,#58,#80,#02,#41
	db #60,#80,#01,#49,#65,#4d,#65,#4c
	db #80,#02,#66,#80,#01,#4f,#60,#80
	db #02,#49,#66,#80,#01,#4f,#67,#4f
	db #60,#80,#02,#49,#66,#80,#01,#4f
	db #6f,#57,#60,#80,#02,#49,#6e,#80
	db #01,#57,#58,#80,#02,#41,#60,#80
	db #01,#49,#61,#49,#58,#80,#02,#41
	db #60,#80,#01,#49,#65,#4d,#65,#4d
	db #67,#4f,#30,#81,#05,#ce,#78,#87
	db #03,#d2,#48,#81,#05,#ce,#60,#80
	db #06,#ce,#78,#87,#03,#ce,#30,#81
	db #05,#d2,#31,#ce,#7e,#87,#04,#d2
	db #30,#81,#05,#ce,#60,#80,#06,#ce
	db #7e,#89,#04,#ce,#30,#81,#05,#ce
	db #49,#ce,#31,#ce,#78,#87,#03,#d2
	db #30,#81,#05,#ce,#60,#80,#06,#ce
	db #78,#87,#03,#ce,#30,#81,#05,#ce
	db #49,#ce,#31,#ce,#7e,#87,#04,#d2
	db #30,#81,#05,#ce,#60,#80,#06,#ce
	db #7e,#87,#04,#d2,#30,#81,#05,#c2
	db #86,#80,#07,#ea,#8d,#de,#83,#d2
	db #87,#e2,#91,#d2,#8d,#e2,#83,#c2
	db #86,#80,#07,#ea,#8d,#de,#83,#d2
	db #87,#e2,#91,#d2,#8d,#e2,#83,#d2
	db #7f,#c2,#e8,#86,#80,#07,#e2,#79
	db #d2,#7f,#ea,#7d,#7f,#83,#ce,#7f
	db #ce,#7d,#d2,#79,#d2,#75,#c2,#60
	db #85,#02,#48,#05,#66,#80,#01,#4f
	db #67,#4f,#60,#80,#02,#49,#66,#80
	db #01,#4f,#6f,#57,#60,#80,#02,#49
	db #6e,#80,#01,#57,#59,#41,#61,#49
	db #61,#49,#58,#80,#02,#41,#60,#80
	db #01,#49,#65,#4d,#65,#4c,#80,#02
	db #66,#80,#01,#4f,#60,#80,#02,#49
	db #66,#80,#01,#4f,#67,#4f,#60,#80
	db #02,#49,#66,#80,#01,#4f,#6f,#57
	db #60,#80,#02,#49,#6e,#80,#01,#57
	db #58,#80,#02,#41,#60,#80,#01,#49
	db #61,#49,#58,#80,#02,#41,#60,#80
	db #01,#49,#65,#4d,#65,#4d,#67,#4f
	db #6e,#80,#07,#ce,#79,#ce,#7f,#ce
	db #79,#ce,#7f,#ce,#87,#ce,#7f,#ce
	db #87,#ce,#91,#ce,#8d,#89,#87,#ce
	db #89,#ce,#87,#ce,#83,#ce,#7f,#ce
	db #7d,#ce,#6f,#ce,#79,#ce,#7f,#ce
	db #79,#ce,#7f,#ce,#87,#ce,#7f,#ce
	db #87,#ce,#91,#ce,#8d,#89,#87,#ce
	db #89,#ce,#87,#ce,#83,#ce,#7f,#ce
	db #87,#c2,#56,#80,#01,#3f,#5d,#45
	db #5d,#45,#57,#3f,#65,#4d,#67,#4f
	db #57,#3f,#6b,#53,#5d,#45,#65,#4d
	db #65,#4d,#5d,#45,#75,#5d,#6b,#53
	db #5d,#45,#6f,#57,#30,#81,#05,#ce
	db #6e,#87,#03,#d2,#48,#81,#05,#ce
	db #60,#80,#06,#ce,#6e,#87,#03,#ce
	db #30,#81,#05,#ce,#49,#ce,#31,#ce
	db #74,#87,#04,#d2,#30,#81,#05,#ce
	db #60,#80,#06,#ce,#74,#89,#04,#ce
	db #30,#81,#05,#ce,#49,#c2,#90,#80
	db #01,#c2,#30,#81,#05,#ce,#78,#87
	db #03,#d2,#48,#81,#05,#ce,#60,#80
	db #06,#ce,#78,#87,#03,#ce,#30,#81
	db #05,#ce,#49,#ce,#31,#ce,#74,#87
	db #04,#d2,#30,#81,#05,#ce,#60,#80
	db #06,#ce,#74,#87,#04,#ce,#30,#81
	db #05,#ce,#49,#ce,#31,#ce,#6e,#87
	db #03,#d2,#30,#81,#05,#ce,#60,#80
	db #06,#ce,#6e,#87,#03,#ce,#30,#81
	db #05,#ce,#49,#ce,#31,#ce,#70,#87
	db #04,#d2,#30,#81,#05,#ce,#60,#80
	db #06,#ce,#74,#87,#04,#d2,#30,#81
	db #08,#c2,#90,#8b,#02,#da,#91,#d6
	db #95,#d6,#95,#d6,#95,#d6,#8d,#da
	db #8d,#d6,#8d,#d2,#a1,#d6,#83,#c2
	db #d4,#a8,#89,#02,#d6,#a9,#d6,#ad
	db #d6,#ad,#d6,#ad,#da,#a5,#d6,#a5
	db #d6,#89,#d6,#89,#d2,#83,#c2,#90
	db #89,#02,#d2,#a8,#07,#d2,#91,#ce
	db #a9,#d2,#95,#ce,#ad,#d2,#95,#ce
	db #ad,#d2,#95,#ce,#ad,#d2,#8d,#d2
	db #a5,#d2,#8d,#ce,#a5,#d2,#8d,#ce
	db #89,#ce,#a1,#d2,#89,#ce,#8d,#d2
	db #8d,#c2,#48,#80,#09,#de,#4f,#d2
	db #57,#da,#53,#d2,#4f,#d2,#49,#de
	db #45,#ce,#4d,#d2,#4f,#da,#53,#c2
	db #90,#8b,#02,#d2,#a8,#09,#d2,#91
	db #ce,#a9,#d2,#95,#ce,#ad,#d2,#95
	db #ce,#ad,#d2,#95,#ce,#ad,#d2,#8d
	db #d2,#a5,#d2,#8d,#ce,#a5,#d2,#8d
	db #ce,#89,#ce,#a1,#d2,#89,#ce,#83
	db #ce,#83,#ce,#c6,#ff,#c6,#ff,#c6
	db #ff,#c6,#ff,#48,#80,#09,#de,#4f
	db #d2,#57,#da,#5d,#d2,#57,#d2,#53
	db #d2,#4f,#d6,#4d,#ce,#4f,#d2,#53
	db #d2,#57,#d2,#49,#c2,#48,#83,#0a
	db #d6,#49,#d6,#49,#d2,#49,#d6,#49
	db #d6,#49,#d2,#57,#d6,#57,#d6,#57
	db #ce,#57,#ce,#57,#d6,#57,#d6,#57
	db #c2,#78,#80,#0b,#d6,#79,#d6,#79
	db #d2,#79,#d6,#79,#d6,#79,#d2,#87
	db #d6,#87,#d6,#87,#d2,#87,#d6,#87
	db #d6,#87,#c2,#7e,#80,#02,#d2,#79
	db #d2,#7f,#ce,#87,#d2,#87,#d6,#79
	db #ce,#79,#ce,#87,#ce,#83,#d2,#83
	db #d2,#7d,#d2,#83,#d2,#7d,#d2,#7d
	db #d6,#75,#d2,#7d,#ce,#7f,#d2,#7f
	db #c2,#58,#83,#0a,#d6,#59,#d6,#59
	db #d2,#59,#d6,#59,#d6,#59,#d2,#5d
	db #d6,#5d,#d6,#5d,#ce,#5d,#ce,#5d
	db #d6,#5d,#d6,#5d,#c2,#88,#80,#0b
	db #d6,#89,#d6,#89,#d2,#89,#d6,#89
	db #d6,#89,#d2,#8d,#d6,#8d,#d6,#8d
	db #d2,#8d,#d6,#8d,#d6,#8d,#c2,#d4
	db #78,#80,#02,#d2,#7f,#ce,#8d,#d2
	db #8d,#d2,#79,#d6,#89,#ce,#87,#d2
	db #83,#d2,#7f,#d6,#7d,#ce,#7f,#d2
	db #83,#d2,#7f,#d2,#7d,#d2,#75,#c2
	db #56,#83,#0a,#d6,#57,#da,#53,#ce
	db #5d,#d6,#57,#d6,#57,#ce,#5b,#ce
	db #5d,#d6,#5d,#d6,#57,#ce,#5b,#ce
	db #5d,#d6,#5d,#d6,#5d,#ce,#65,#c2
	db #60,#80,#0a,#d6,#61,#d6,#61,#ce
	db #5d,#ce,#67,#d6,#61,#d6,#61,#ce
	db #63,#ce,#65,#d6,#65,#d6,#65,#ce
	db #5d,#ce,#65,#d6,#65,#ce,#67,#ce
	db #71,#ce,#65,#ce,#63,#c2,#30,#81
	db #05,#ce,#78,#87,#0b,#d2,#48,#81
	db #05,#ce,#60,#80,#06,#ce,#78,#87
	db #0b,#ce,#30,#81,#05,#ce,#49,#ce
	db #31,#ce,#78,#87,#0b,#d2,#30,#81
	db #05,#ce,#60,#80,#06,#ce,#78,#87
	db #0b,#ce,#30,#81,#05,#ce,#49,#ce
	db #31,#ce,#86,#87,#0b,#d2,#30,#81
	db #05,#ce,#60,#80,#06,#ce,#86,#87
	db #0b,#ce,#30,#81,#05,#ce,#49,#ce
	db #31,#ce,#86,#87,#0b,#d2,#30,#81
	db #05,#ce,#60,#80,#06,#ce,#86,#87
	db #0b,#d2,#30,#81,#08,#c2,#30,#81
	db #05,#ce,#88,#87,#0b,#d2,#48,#81
	db #05,#ce,#60,#80,#06,#ce,#88,#87
	db #0b,#ce,#30,#81,#05,#ce,#49,#ce
	db #31,#ce,#88,#87,#0b,#d2,#30,#81
	db #05,#ce,#60,#80,#06,#ce,#88,#87
	db #0b,#ce,#30,#81,#05,#ce,#49,#ce
	db #31,#ce,#8c,#87,#0b,#d2,#30,#81
	db #05,#ce,#60,#80,#06,#ce,#8c,#87
	db #0b,#ce,#30,#81,#05,#ce,#49,#ce
	db #31,#ce,#8c,#87,#0b,#d2,#30,#81
	db #05,#ce,#60,#80,#06,#ce,#8c,#87
	db #0b,#d2,#30,#81,#08,#c2,#60,#83
	db #02,#56,#07,#60,#03,#64,#07,#60
	db #03,#56,#07,#60,#03,#64,#07,#66
	db #03,#64,#07,#60,#03,#56,#07,#60
	db #03,#64,#07,#66,#03,#6a,#07,#66
	db #03,#64,#07,#60,#03,#56,#07,#60
	db #03,#64,#07,#66,#03,#6a,#07,#6e
	db #03,#6a,#07,#66,#03,#64,#07,#60
	db #03,#56,#07,#60,#03,#64,#07,#66
	db #03,#6a,#07,#6e,#03,#74,#07,#6e
	db #03,#6a,#07,#66,#03,#64,#07,#60
	db #03,#56,#07,#60,#03,#64,#07,#66
	db #03,#6a,#07,#6e,#03,#74,#07,#6e
	db #03,#6a,#07,#66,#03,#64,#07,#60
	db #03,#56,#07,#60,#03,#64,#07,#66
	db #03,#6a,#07,#6e,#03,#74,#07,#78
	db #03,#74,#07,#6e,#03,#6a,#07,#60
	db #80,#02,#57,#61,#65,#61,#57,#61
	db #65,#67,#6f,#61,#67,#6f,#61,#67
	db #6f,#61,#67,#75,#61,#67,#75,#61
	db #67,#71,#61,#67,#71,#61,#67,#6f
	db #61,#67,#6f,#61,#67,#6f,#61,#67
	db #6f,#61,#67,#79,#61,#67,#79,#61
	db #6f,#79,#61,#6f,#79,#61,#6b,#77
	db #61,#69,#73,#61,#67,#6f,#61,#65
	db #6b,#60,#80,#02,#c6,#01,#c6,#01
	db #c6,#01,#c6,#01,#c6,#01,#c6,#01
	db #c6,#01,#c6,#01,#c6,#01,#c6,#01
	db #c6,#01,#c6,#01,#c6,#01,#c6,#01
	db #c6,#01,#c6,#01,#c6,#01,#c6,#01
	db #c6,#01,#c6,#01,#c6,#01,#c6,#01
	db #c6,#01,#c6,#01,#c6,#01,#c6,#01
	db #c6,#01,#c6,#01,#c6,#01,#c6,#01
	db #c6,#01,#65,#c6,#01,#c6,#01,#c6
	db #01,#c6,#01,#c6,#01,#c6,#01,#c6
	db #01,#c6,#01,#c6,#01,#c6,#01,#c6
	db #01,#c6,#01,#c6,#01,#c6,#01,#c6
	db #01,#c6,#01,#c6,#01,#c6,#01,#c6
	db #01,#c6,#01,#c6,#01,#c6,#01,#c6
	db #01,#c6,#01,#c6,#01,#c6,#01,#c6
	db #01,#c6,#01,#c6,#01,#c6,#01,#c6
	db #01,#64,#80,#0a,#ce,#67,#ce,#71
	db #ce,#65,#ce,#67,#d0,#ca,#c2,#ca
	db #e2,#64,#80,#0a,#ce,#67,#ce,#71
	db #ce,#65,#ce,#67,#ce,#ca,#c2,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
;
; #0600 - player reallocated by Megachur
;
	jp l0e8b
	jp l060d
	jp l0e66
.l060c equ $ + 3
.l060b equ $ + 2
	db #00,#06,#00,#00
;
.play_music
.l060d
;
	xor a
	ld (l060b),a
	ld (l0e44),a
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
.l061e equ $ + 1
	ld a,#00
.l0620 equ $ + 1
	cp #00
	jr z,l062a
	inc a
	ld (l061e),a
	jp l08b9
.l062a
	xor a
	ld (l061e),a
.l062e
	or a
	jp nc,l0710
	ld (l0738),a
	ld (l07a3),a
	ld (l080e),a
	ld a,#b7
	ld (l062e),a
.l0641 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l0677
.l0647 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l0674
	ld b,a
	and #1f
	bit 4,a
	jr z,l0658
	or #e0
.l0658
	ld (l0745),a
	rl b
	rl b
	jr nc,l0666
	ld a,(hl)
	ld (l07b0),a
	inc hl
.l0666
	rl b
	jr nc,l066f
	ld a,(hl)
	ld (l081b),a
	inc hl
.l066f
	ld (l0647),hl
	jr l067a
.l0674
	ld (l0647),hl
.l0677
	ld (l0641),a
.l067b equ $ + 1
.l067a
	ld a,#00
	sub #01
	jr c,l0687
	ld (l067b),a
.l0684 equ $ + 1
	ld a,#00
	jr l06a2
.l0688 equ $ + 1
.l0687
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l0695
	ld (l0688),hl
	jr l06a2
.l0695
	ld (l0684),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l0688),hl
	ld (l067b),a
	ld a,b
.l06a2
	ld (l0879),a
.l06a6 equ $ + 1
	ld hl,#0000
	ld de,l073e
	ldi
	ldi
	ld de,l07a9
	ldi
	ldi
	ld de,l0814
	ldi
	ldi
	ld (l06a6),hl
.l06c1 equ $ + 1
	ld a,#00
	or a
	jr nz,l06d3
.l06c6 equ $ + 1
	ld a,#00
	sub #01
	jr c,l06e1
	ld (l06c6),a
.l06cf equ $ + 1
	ld hl,#0000
	jr l0719
.l06d4 equ $ + 1
.l06d3
	ld a,#00
	sub #01
	jr c,l06e1
	ld (l06d4),a
	ld hl,(l06e2)
	jr l0706
.l06e2 equ $ + 1
.l06e1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l06fe
	ld (l06c6),a
	xor a
	ld (l06c1),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l06e2),hl
	ex de,hl
	ld (l06cf),hl
	jr l0719
.l06fe
	ld (l06d4),a
	ld a,#01
	ld (l06c1),a
.l0706
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l06e2),hl
	ex de,hl
	jr l0719
.l0711 equ $ + 1
.l0710
	ld a,#00
	sub #01
	jr nc,l0734
.l0717 equ $ + 1
	ld hl,#0000
.l0719
	ld a,(hl)
	inc hl
	srl a
	jr c,l0731
	srl a
	jr c,l0728
	ld (l0620),a
	jr l0730
.l0728
	ld (l060b),a
.l072c equ $ + 1
	ld a,#01
	ld (l060c),a
.l0730
	xor a
.l0731
	ld (l0717),hl
.l0734
	ld (l0711),a
.l0738 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l079f
.l073e equ $ + 1
	ld hl,#0000
.l0741 equ $ + 1
	ld bc,#0100
.l0745 equ $ + 2
.l0744 equ $ + 1
	ld de,#0000
.l0748 equ $ + 2
	ld lx,#00
	call l09b6
	ld a,lx
	ld (l0748),a
	ld (l08c3),hl
	exx
	ld (l073e),hl
	ld a,c
	ld (l0741),a
	ld (l08bd),a
	xor a
	or hy
	jr nz,l079d
	ld (l08e0),a
	ld d,a
	ld a,e
	ld (l0744),a
	ld l,d
	ld h,l
	ld (l08c0),hl
.l0772 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l08f1
	ldi
	ldi
	ld de,l08e9
	ldi
	ldi
	ld de,l08e2
	ldi
	ld de,l08f3
	ldi
	ld a,(hl)
	inc hl
	ld (l08d2),hl
	ld hl,l0e44
	or (hl)
	ld (hl),a
.l079d
	ld a,ly
.l079f
	ld (l0738),a
.l07a3 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l080a
.l07a9 equ $ + 1
	ld hl,#0000
.l07ac equ $ + 1
	ld bc,#0200
.l07b0 equ $ + 2
.l07af equ $ + 1
	ld de,#0000
.l07b3 equ $ + 2
	ld lx,#00
	call l09b6
	ld a,lx
	ld (l07b3),a
	ld (l0914),hl
	exx
	ld (l07a9),hl
	ld a,c
	ld (l07ac),a
	ld (l090e),a
	xor a
	or hy
	jr nz,l0808
	ld (l0931),a
	ld d,a
	ld a,e
	ld (l07af),a
	ld l,d
	ld h,l
	ld (l0911),hl
.l07dd equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l0942
	ldi
	ldi
	ld de,l093a
	ldi
	ldi
	ld de,l0933
	ldi
	ld de,l0944
	ldi
	ld a,(hl)
	inc hl
	ld (l0923),hl
	ld hl,l0e44
	or (hl)
	ld (hl),a
.l0808
	ld a,ly
.l080a
	ld (l07a3),a
.l080e equ $ + 1
	ld a,#00
	sub #01
	jr nc,l0875
.l0814 equ $ + 1
	ld hl,#0000
.l0817 equ $ + 1
	ld bc,#0300
.l081b equ $ + 2
.l081a equ $ + 1
	ld de,#0000
.l081e equ $ + 2
	ld lx,#00
	call l09b6
	ld a,lx
	ld (l081e),a
	ld (l0965),hl
	exx
	ld (l0814),hl
	ld a,c
	ld (l0817),a
	ld (l095f),a
	xor a
	or hy
	jr nz,l0873
	ld (l0982),a
	ld d,a
	ld a,e
	ld (l081a),a
	ld l,d
	ld h,l
	ld (l0962),hl
.l0848 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l0993
	ldi
	ldi
	ld de,l098b
	ldi
	ldi
	ld de,l0984
	ldi
	ld de,l0995
	ldi
	ld a,(hl)
	inc hl
	ld (l0974),hl
	ld hl,l0e44
	or (hl)
	ld (hl),a
.l0873
	ld a,ly
.l0875
	ld (l080e),a
.l0879 equ $ + 1
	ld a,#00
	sub #01
	jr c,l0883
	ld (l0879),a
	jr l08b9
.l0883
	ld a,#37
	ld (l062e),a
	ld hl,(l06a6)
.l088c equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l08b9
	ld (l0641),a
	ld (l067b),a
	ld (l0711),a
.l089d equ $ + 1
	ld hl,#0000
	ld (l0647),hl
.l08a3 equ $ + 1
	ld hl,#0000
	ld (l0688),hl
.l08a9 equ $ + 1
	ld hl,#0000
	ld (l06a6),hl
.l08af equ $ + 1
	ld hl,#0000
	ld (l06e2),hl
.l08b5 equ $ + 1
	ld a,#00
	ld (l06c1),a
.l08b9
	ld hl,l0e44
.l08bd equ $ + 1
	ld d,#00
	exx
.l08c0 equ $ + 1
	ld hl,#0000
.l08c3 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l08c0),hl
	ld (l0af1),hl
	ld a,(l0748)
	ld lx,a
.l08d2 equ $ + 1
	ld hl,#0000
	ld iy,l0cdf
	ld a,(l08e0)
	call l0a4b
	ex de,hl
.l08e0 equ $ + 1
	ld a,#00
.l08e2 equ $ + 1
	cp #00
	jr z,l08e8
	inc a
	jr l0905
.l08e9 equ $ + 1
.l08e8
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l0901
.l08f1 equ $ + 1
	ld de,#0000
.l08f3
	or a
	jr c,l0901
.l08f7 equ $ + 1
	ld hl,#0000
	ld (l08e9),hl
	dec a
	ld (l08e2),a
	inc a
.l0901
	ld (l08d2),de
.l0905
	ld (l08e0),a
	ld a,hx
	ld (l09b2),a
.l090e equ $ + 1
	ld d,#00
	exx
.l0911 equ $ + 1
	ld hl,#0000
.l0914 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l0911),hl
	ld (l0af1),hl
	ld a,(l07b3)
	ld lx,a
.l0923 equ $ + 1
	ld hl,#0000
	ld iy,l0d30
	ld a,(l0931)
	call l0a4b
	ex de,hl
.l0931 equ $ + 1
	ld a,#00
.l0933 equ $ + 1
	cp #00
	jr z,l0939
	inc a
	jr l0956
.l093a equ $ + 1
.l0939
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l0952
.l0942 equ $ + 1
	ld de,#0000
.l0944
	or a
	jr c,l0952
.l0948 equ $ + 1
	ld hl,#0000
	ld (l093a),hl
	dec a
	ld (l0933),a
	inc a
.l0952
	ld (l0923),de
.l0956
	ld (l0931),a
	ld a,hx
	ld (l09af),a
.l095f equ $ + 1
	ld d,#00
	exx
.l0962 equ $ + 1
	ld hl,#0000
.l0965 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l0962),hl
	ld (l0af1),hl
	ld a,(l081e)
	ld lx,a
.l0974 equ $ + 1
	ld hl,#0000
	ld iy,l0d81
	ld a,(l0982)
	call l0a4b
	ex de,hl
.l0982 equ $ + 1
	ld a,#00
.l0984 equ $ + 1
	cp #00
	jr z,l098a
	inc a
	jr l09a7
.l098b equ $ + 1
.l098a
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l09a3
.l0993 equ $ + 1
	ld de,#0000
.l0995
	or a
	jr c,l09a3
.l0999 equ $ + 1
	ld hl,#0000
	ld (l098b),hl
	dec a
	ld (l0984),a
	inc a
.l09a3
	ld (l0974),de
.l09a7
	ld (l0982),a
	ld a,hx
	sla a
.l09af equ $ + 1
	or #00
	rla
.l09b2 equ $ + 1
	or #00
	jp l0cd4
.l09b6
	ld a,(hl)
	inc hl
	srl a
	jr c,l09ef
	cp #60
	jr nc,l09f7
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l09cf
	and #0f
	ld c,a
.l09cf
	rl b
	jr nc,l09d5
	ld e,(hl)
	inc hl
.l09d5
	rl b
	jr nc,l09e7
.l09d9
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l09e3
	dec h
.l09e3
	ld ly,#00
	ret
.l09e7
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l09ef
	ld hy,#00
	add d
	ld lx,a
	jr l09e7
.l09f7
	ld hy,#01
	sub #60
	jr z,l0a18
	dec a
	jr z,l0a2f
	dec a
	jr z,l0a21
	dec a
	jr z,l09d9
	dec a
	jr z,l0a2b
	dec a
	jr z,l0a40
	dec a
	jr z,l0a37
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l0a18
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l0a21
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l0a2b
	ld c,(hl)
	inc hl
	jr l09d9
.l0a2f
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l0a37
	ld a,(hl)
	inc hl
	ld (l060b),a
	ld a,b
	ld (l060c),a
.l0a40
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l0a4b
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l0b01
	bit 4,e
	jr z,l0ab3
	ld a,(hl)
	bit 6,a
	jr z,l0a80
	ld d,#08
	inc hl
	and #1f
	jr z,l0a67
	ld (l0dd2),a
	res 3,d
.l0a67
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l0a70
	xor a
.l0a70
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l0a80
	ld (l0dd2),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l0a9c
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l0a95
	xor a
.l0a95
	ld (iy+#36),a
	ld hx,d
	jr l0ac6
.l0a9c
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l0aa5
	xor a
.l0aa5
	ld (iy+#36),a
.l0aa8
	ld hx,d
	ret
.l0aab
	ld (iy+#36),#00
	ld d,#09
	jr l0aa8
.l0ab3
	ld d,#08
	ld a,e
	and #0f
	jr z,l0aab
	exx
	sub d
	exx
	jr nc,l0ac0
	xor a
.l0ac0
	ld (iy+#36),a
	ld hx,#08
.l0ac6
	bit 5,e
	jr z,l0ace
	ld a,(hl)
	inc hl
	jr l0acf
.l0ace
	xor a
.l0acf
	bit 6,e
	jr z,l0ad9
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l0adc
.l0ad9
	ld de,#0000
.l0adc
	add lx
	cp #60
	jr c,l0ae4
	ld a,#60
.l0ae4
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l0c14
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l0af1 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l0b01
	or a
	jr nz,l0b0b
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l0b0b
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
	ld (l0e3d),a
	bit 3,e
	jr z,l0b2d
	ld a,(hl)
	inc hl
	ld (l0dd2),a
	res 3,d
	jr l0b2d
.l0b2d
	ld hx,d
	xor a
	bit 7,b
	jr z,l0b3f
	bit 6,b
	jr z,l0b3a
	ld a,(hl)
	inc hl
.l0b3a
	ld (l0bee),a
	ld a,#01
.l0b3f
	ld (l0b87),a
	ld a,b
	rra
	and #0e
	ld (l0b98),a
	bit 4,e
	jp nz,l0bf9
	bit 1,e
	jr z,l0b56
	ld a,(hl)
	inc hl
	jr l0b57
.l0b56
	xor a
.l0b57
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l0b64
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l0b67
.l0b64
	ld de,#0000
.l0b67
	add lx
	cp #60
	jr c,l0b6f
	ld a,#60
.l0b6f
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l0c14
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l0af1)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l0b87 equ $ + 1
	ld a,#00
	or a
	jr nz,l0b97
	ex af,af'
	bit 5,a
	jr nz,l0c02
.l0b90
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l0b98 equ $ + 1
.l0b97
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l0ba2),a
	ld a,c
.l0ba2 equ $ + 1
	jr l0ba3
.l0ba3
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
	jr nc,l0bbc
	inc bc
.l0bbc
	ld a,c
	ld (l0e07),a
	ld a,b
	ld (l0e22),a
	ld a,(l0b87)
	or a
	jr z,l0bf7
	ld a,(l0b98)
	ld e,a
	srl a
	add e
	ld (l0bd6),a
	ld a,b
.l0bd6 equ $ + 1
	jr l0bd7
.l0bd7
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
.l0bee equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l0bf7
	pop hl
	ret
.l0bf9
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l0b90
.l0c02
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l0e07),a
	inc hl
	ld a,(hl)
	ld (l0e22),a
	inc hl
	ret
.l0c14
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
.l0cd4
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l0cdf equ $ + 1
	ld a,#00
.l0ce1 equ $ + 1
	cp #00
	jr z,l0cf9
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
	ld (l0ce1),a
	exx
.l0cfa equ $ + 1
.l0cf9
	ld a,#00
.l0cfc equ $ + 1
	cp #00
	jr z,l0d14
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
	ld (l0cfc),a
	exx
.l0d15 equ $ + 1
.l0d14
	ld a,#00
.l0d17 equ $ + 1
	cp #00
	jr z,l0d2f
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
	ld (l0d17),a
	exx
.l0d30 equ $ + 1
.l0d2f
	ld a,#00
.l0d32 equ $ + 1
	cp #00
	jr z,l0d4a
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
	ld (l0d32),a
	exx
.l0d4b equ $ + 1
.l0d4a
	ld a,#00
.l0d4d equ $ + 1
	cp #00
	jr z,l0d65
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
	ld (l0d4d),a
	exx
.l0d66 equ $ + 1
.l0d65
	ld a,#00
.l0d68 equ $ + 1
	cp #00
	jr z,l0d80
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
	ld (l0d68),a
	exx
.l0d81 equ $ + 1
.l0d80
	ld a,#00
.l0d83 equ $ + 1
	cp #00
	jr z,l0d9b
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
	ld (l0d83),a
	exx
.l0d9c equ $ + 1
.l0d9b
	ld a,#00
.l0d9e equ $ + 1
	cp #00
	jr z,l0db6
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
	ld (l0d9e),a
	exx
.l0db7 equ $ + 1
.l0db6
	ld a,#00
.l0db9 equ $ + 1
	cp #00
	jr z,l0dd1
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
	ld (l0db9),a
	exx
.l0dd2 equ $ + 1
.l0dd1
	ld a,#00
.l0dd4 equ $ + 1
	cp #00
	jr z,l0dec
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
	ld (l0dd4),a
	exx
.l0dec
	ld a,h
.l0dee equ $ + 1
	cp #c0
	jr z,l0e06
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
	ld (l0dee),a
	exx
.l0e07 equ $ + 1
.l0e06
	ld a,#00
.l0e09 equ $ + 1
	cp #00
	jr z,l0e21
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
	ld (l0e09),a
	exx
.l0e22 equ $ + 1
.l0e21
	ld a,#00
.l0e24 equ $ + 1
	cp #00
	jr z,l0e3c
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
	ld (l0e24),a
	exx
.l0e3d equ $ + 1
.l0e3c
	ld a,#00
.l0e3f equ $ + 1
	cp #ff
	jr nz,l0e49
	ld h,a
.l0e44 equ $ + 1
	ld a,#00
	or a
	jr z,l0e5d
	ld a,h
.l0e49
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
	ld (l0e3f),a
.l0e5d
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
	ret
;
.stop_music
.l0e66
;
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l0d15),a
	ld (l0d66),a
	ld (l0db7),a
	dec a
	ld (l0d17),a
	ld (l0d68),a
	ld (l0db9),a
	ld (l0dee),a
	ld a,#3f
	jp l0cd4
;
.real_init_music
.l0e8b
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l072c),a
	ld de,#0003
	add hl,de
	ld de,l0688
	ldi
	ldi
	ld de,l06a6
	ldi
	ldi
	ld de,l06e2
	ldi
	ldi
	ld de,l0772
	ldi
	ldi
	ld de,l089d
	ldi
	ldi
	ld de,l08a3
	ldi
	ldi
	ld de,l08a9
	ldi
	ldi
	ld de,l08af
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l0620),a
	ld (l061e),a
	ld (l0647),hl
	ld hl,(l06e2)
	ld (l088c),hl
	ld a,(hl)
	and #01
	ld (l06c1),a
	ld hl,(l08af)
	ld a,(hl)
	and #01
	ld (l08b5),a
	ld hl,(l0772)
	ld (l07dd),hl
	ld (l0848),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l08d2),hl
	ld (l0923),hl
	ld (l0974),hl
	ld (l08f1),hl
	ld (l0942),hl
	ld (l0993),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l08f7),de
	ld (l0948),de
	ld (l0999),de
	ld (l08e9),de
	ld (l093a),de
	ld (l098b),de
	ld a,#37
	ld (l062e),a
	ld hl,l0f47
.l0f37
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l0f3e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l0f3e
	jr l0f37
.l0f47
	jr l0f49
.l0f49
	dw l0cdf,l0cfa,l0d30,l0d4b
	dw l0d81,l0d9c,l0dd2,l0d15
	dw l0d66,l0db7,l0e07,l0e22
	dw l0e3d,l0641,l067b,l06c6
	dw l06d4,l0711,l08e0,l0931
	dw l0982,l0741,l07ac,l0817
	dw #ff11,l0ce1,l0cfc,l0d32
	dw l0d4d,l0d83,l0d9e,l0dd4
	dw l0dee,l0d17,l0d68,l0db9
	dw l0e09,l0e24,l0e3f,l08e2
	dw l0933,l0984,#b703,l08f3
	dw l0944,l0995
	db #00,#00

; #1327
;	dw #4042

; #103a
;	ld de,(#1327)
;	call #0600
;
.init_music		; added by Megachur
;
	ld de,l4042
	jp real_init_music
;
.music_info
	db "La Planete Mysterieuse (2005)(Public Domain)()",0
	db "StArkos",0

	read "music_end.asm"
