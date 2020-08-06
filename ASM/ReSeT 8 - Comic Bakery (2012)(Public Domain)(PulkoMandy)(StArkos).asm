; Music of ReSeT 8 - Comic Bakery (2012)(Public Domain)(PulkoMandy)(StArkos)
; Ripped by Megachur the 22/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RESET8CB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

.l8000
	db #53,#4b,#31,#30,#00,#80,#01,#32
	db #00,#27,#80,#4d,#80,#f9,#82,#02
	db #83,#24,#80,#4c,#80,#f3,#82,#ff
	db #82,#02,#c0,#00,#00,#c5,#40,#0c
	db #15,#ce,#02,#ff,#c0,#00,#00,#7f
	db #0f,#3f,#01,#1f,#07,#3f,#03,#1f
	db #07,#3f,#03,#1f,#07,#3f,#03,#1f
	db #07,#3f,#03,#1f,#07,#3f,#03,#1f
	db #07,#3f,#03,#1f,#07,#3f,#03,#1f
	db #07,#3f,#01,#7e,#7e,#0b,#85,#0b
	db #85,#0c,#85,#0b,#85,#0b,#85,#46
	db #85,#0b,#85,#80,#85,#0c,#85,#0b
	db #85,#80,#85,#46,#85,#b2,#85,#80
	db #85,#0c,#85,#da,#85,#80,#85,#46
	db #85,#b2,#85,#80,#85,#0c,#85,#02
	db #86,#80,#85,#46,#85,#2a,#86,#4d
	db #86,#0c,#85,#0b,#85,#83,#86,#46
	db #85,#0b,#85,#4d,#86,#0c,#85,#b9
	db #86,#83,#86,#46,#85,#dd,#86,#4d
	db #86,#0c,#85,#f1,#86,#83,#86,#46
	db #85,#14,#87,#4d,#86,#0c,#85,#35
	db #87,#83,#86,#46,#85,#a1,#87,#4d
	db #86,#0c,#85,#a1,#87,#4d,#86,#0c
	db #85,#bb,#87,#c9,#87,#d7,#87,#bb
	db #87,#c9,#87,#d7,#87,#bb,#87,#c9
	db #87,#d7,#87,#bb,#87,#c9,#87,#d7
	db #87,#e7,#87,#f5,#87,#03,#88,#e7
	db #87,#f5,#87,#03,#88,#e7,#87,#f5
	db #87,#03,#88,#e7,#87,#f5,#87,#03
	db #88,#a1,#87,#4d,#86,#0c,#85,#13
	db #88,#2d,#88,#47,#88,#65,#88,#4d
	db #86,#0c,#85,#65,#88,#4d,#86,#0c
	db #85,#7e,#88,#c9,#87,#d7,#87,#7e
	db #88,#c9,#87,#d7,#87,#7e,#88,#c9
	db #87,#d7,#87,#7e,#88,#c9,#87,#d7
	db #87,#8b,#88,#f5,#87,#03,#88,#8b
	db #88,#f5,#87,#03,#88,#8b,#88,#f5
	db #87,#03,#88,#8b,#88,#f5,#87,#03
	db #88,#65,#88,#4d,#86,#0c,#85,#98
	db #88,#2d,#88,#47,#88,#b1,#88,#4d
	db #86,#0c,#85,#ea,#88,#4d,#86,#0c
	db #85,#fb,#88,#c9,#87,#d7,#87,#0b
	db #85,#c9,#87,#d7,#87,#fc,#88,#c9
	db #87,#d7,#87,#36,#89,#c9,#87,#d7
	db #87,#46,#89,#f5,#87,#03,#88,#0b
	db #85,#f5,#87,#03,#88,#4a,#89,#f5
	db #87,#03,#88,#62,#89,#f5,#87,#03
	db #88,#6c,#89,#4d,#86,#0c,#85,#70
	db #89,#2d,#88,#47,#88,#aa,#89,#4d
	db #86,#0c,#85,#ae,#89,#4d,#86,#0c
	db #85,#b9,#89,#c9,#87,#d7,#87,#c1
	db #89,#c9,#87,#d7,#87,#fc,#88,#c9
	db #87,#d7,#87,#c6,#89,#c9,#87,#d7
	db #87,#d4,#89,#f5,#87,#03,#88,#fc
	db #88,#f5,#87,#03,#88,#d8,#89,#f5
	db #87,#03,#88,#e2,#89,#f5,#87,#03
	db #88,#aa,#89,#4d,#86,#0c,#85,#fc
	db #88,#2d,#88,#47,#88,#0b,#85,#4d
	db #86,#ec,#89,#0b,#85,#4d,#86,#0b
	db #85,#0b,#85,#c9,#87,#0b,#85,#0b
	db #85,#c9,#87,#0b,#85,#0b,#85,#c9
	db #87,#0b,#85,#0b,#85,#c9,#87,#0b
	db #85,#0b,#85,#f5,#87,#0b,#85,#0b
	db #85,#f5,#87,#0b,#85,#0b,#85,#f5
	db #87,#0b,#85,#0b,#85,#f5,#87,#0b
	db #85,#0b,#85,#4d,#86,#0b,#85,#0b
	db #85,#2d,#88,#0b,#85,#b1,#88,#4d
	db #86,#0b,#85,#ea,#88,#4d,#86,#0b
	db #85,#fb,#88,#c9,#87,#0b,#85,#0b
	db #85,#c9,#87,#0b,#85,#fc,#88,#c9
	db #87,#0b,#85,#36,#89,#c9,#87,#0b
	db #85,#46,#89,#f5,#87,#0b,#85,#0b
	db #85,#f5,#87,#0b,#85,#4a,#89,#f5
	db #87,#0b,#85,#62,#89,#f5,#87,#0b
	db #85,#6c,#89,#4d,#86,#0b,#85,#70
	db #89,#2d,#88,#0b,#85,#aa,#89,#4d
	db #86,#b1,#88,#ae,#89,#4d,#86,#ea
	db #88,#b9,#89,#c9,#87,#fb,#88,#c1
	db #89,#c9,#87,#0b,#85,#fc,#88,#c9
	db #87,#fc,#88,#c6,#89,#c9,#87,#36
	db #89,#d4,#89,#f5,#87,#46,#89,#fc
	db #88,#f5,#87,#0b,#85,#d8,#89,#f5
	db #87,#4a,#89,#e2,#89,#f5,#87,#62
	db #89,#ee,#89,#4d,#86,#6c,#89,#fc
	db #88,#2d,#88,#70,#89,#aa,#89,#4d
	db #86,#aa,#89,#ae,#89,#4d,#86,#ae
	db #89,#b9,#89,#c9,#87,#b9,#89,#c1
	db #89,#c9,#87,#c1,#89,#fc,#88,#c9
	db #87,#fc,#88,#c6,#89,#c9,#87,#c6
	db #89,#d4,#89,#f5,#87,#d4,#89,#fc
	db #88,#f5,#87,#fc,#88,#d8,#89,#f5
	db #87,#d8,#89,#e2,#89,#f5,#87,#e2
	db #89,#ee,#89,#4d,#86,#ee,#89,#fc
	db #88,#2d,#88,#fc,#88,#f2,#89,#f2
	db #89,#f2,#89,#ec,#89,#ec,#89,#ec
	db #89,#fe,#35,#8a,#20,#35,#8a,#00
	db #35,#8a,#1c,#83,#26,#83,#2f,#83
	db #46,#83,#5d,#83,#72,#83,#ab,#83
	db #e4,#83,#1d,#84,#56,#84,#60,#84
	db #99,#84,#d2,#84,#23,#83,#26,#83
	db #ff,#37,#00,#00,#00,#00,#2d,#83
	db #2f,#83,#00,#37,#01,#81,#08,#23
	db #83,#46,#83,#00,#b7,#00,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#01,#00,#23,#83
	db #5d,#83,#02,#b7,#00,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
	db #04,#03,#02,#01,#00,#66,#83,#72
	db #83,#00,#37,#00,#0f,#0e,#4d,#02
	db #00,#4d,#01,#00,#4d,#ff,#ff,#4d
	db #fe,#ff,#23,#83,#ab,#83,#00,#b7
	db #00,#0f,#2f,#03,#2e,#07,#0e,#2d
	db #03,#2d,#07,#0c,#2c,#03,#2b,#07
	db #0b,#2a,#03,#2a,#07,#09,#29,#03
	db #28,#07,#08,#27,#03,#27,#07,#06
	db #26,#03,#25,#07,#05,#24,#03,#24
	db #07,#03,#23,#03,#22,#07,#02,#21
	db #03,#21,#07,#23,#83,#e4,#83,#00
	db #b7,#00,#0f,#2f,#05,#2e,#09,#0e
	db #2d,#05,#2d,#09,#0c,#2c,#05,#2b
	db #09,#0b,#2a,#05,#2a,#09,#09,#29
	db #05,#28,#09,#08,#27,#05,#27,#09
	db #06,#26,#05,#25,#09,#05,#24,#05
	db #24,#09,#03,#23,#05,#22,#09,#02
	db #21,#05,#21,#09,#23,#83,#1d,#84
	db #00,#b7,#00,#0f,#2f,#04,#2e,#07
	db #0e,#2d,#04,#2d,#07,#0c,#2c,#04
	db #2b,#07,#0b,#2a,#04,#2a,#07,#09
	db #29,#04,#28,#07,#08,#27,#04,#27
	db #07,#06,#26,#04,#25,#07,#05,#24
	db #04,#24,#07,#03,#23,#04,#22,#07
	db #02,#21,#04,#21,#07,#23,#83,#56
	db #84,#00,#b7,#00,#0f,#2f,#03,#2e
	db #08,#0e,#2d,#03,#2d,#08,#0c,#2c
	db #03,#2b,#08,#0b,#2a,#03,#2a,#08
	db #09,#29,#03,#28,#08,#08,#27,#03
	db #27,#08,#06,#26,#03,#25,#08,#05
	db #24,#03,#24,#08,#03,#23,#03,#22
	db #08,#02,#21,#03,#21,#08,#5f,#84
	db #60,#84,#00,#37,#00,#0f,#0f,#0f
	db #23,#83,#99,#84,#00,#b7,#00,#2f
	db #07,#0f,#2e,#03,#2e,#07,#0d,#2d
	db #03,#2c,#07,#0c,#2b,#03,#2b,#07
	db #0a,#2a,#03,#29,#07,#09,#28,#03
	db #28,#07,#07,#27,#03,#26,#07,#06
	db #25,#03,#25,#07,#04,#24,#03,#23
	db #07,#03,#22,#03,#22,#07,#01,#21
	db #03,#23,#83,#d2,#84,#00,#b7,#00
	db #2f,#09,#0f,#2e,#05,#2e,#09,#0d
	db #2d,#05,#2c,#09,#0c,#2b,#05,#2b
	db #09,#0a,#2a,#05,#29,#09,#09,#28
	db #05,#28,#09,#07,#27,#05,#26,#09
	db #06,#25,#05,#25,#09,#04,#24,#05
	db #23,#09,#03,#22,#05,#22,#09,#01
	db #21,#05,#23,#83,#0b,#85,#00,#b7
	db #00,#2f,#07,#0f,#2e,#04,#2e,#07
	db #0d,#2d,#04,#2c,#07,#0c,#2b,#04
	db #2b,#07,#0a,#2a,#04,#29,#07,#09
	db #28,#04,#28,#07,#07,#27,#04,#26
	db #07,#06,#25,#04,#25,#07,#04,#24
	db #04,#23,#07,#03,#22,#04,#22,#07
	db #01,#21,#04,#c2,#26,#80,#01,#d2
	db #27,#ce,#27,#ce,#3b,#ce,#3f,#ce
	db #27,#ce,#27,#ce,#27,#d2,#27,#ce
	db #27,#ce,#3b,#ce,#3f,#ce,#27,#ce
	db #27,#ce,#2d,#d2,#2d,#ce,#2d,#ce
	db #41,#ce,#45,#ce,#2d,#ce,#2d,#ce
	db #23,#d2,#23,#ce,#23,#ce,#37,#ce
	db #3b,#ce,#23,#ce,#23,#c2,#26,#80
	db #01,#d2,#27,#ce,#27,#ce,#3b,#ce
	db #3f,#ce,#27,#ce,#27,#ce,#27,#d2
	db #27,#ce,#27,#ce,#3b,#ce,#3f,#ce
	db #27,#ce,#27,#ce,#2d,#d2,#2d,#ce
	db #2d,#ce,#41,#ce,#45,#ce,#2d,#ce
	db #2d,#ce,#31,#d2,#31,#ce,#31,#ce
	db #45,#ce,#49,#ce,#31,#ce,#31,#c2
	db #86,#89,#02,#d2,#9f,#ce,#9f,#ce
	db #87,#d2,#9f,#ce,#9f,#ce,#87,#d2
	db #9f,#ce,#9f,#ce,#87,#d2,#9f,#ce
	db #9f,#ce,#8d,#d2,#a5,#ce,#a5,#ce
	db #8d,#d2,#a5,#ce,#a5,#ce,#91,#d2
	db #a9,#ce,#a9,#ce,#91,#d2,#a9,#ce
	db #a9,#c2,#6e,#81,#03,#d2,#6f,#d2
	db #6b,#d2,#6e,#80,#04,#da,#64,#80
	db #03,#d2,#6f,#d2,#73,#d2,#73,#c6
	db #fb,#d0,#79,#d2,#75,#d2,#73,#d2
	db #73,#c6,#fb,#d0,#73,#d2,#6f,#d2
	db #6b,#c2,#6e,#80,#03,#d2,#6f,#d2
	db #6b,#d2,#6e,#80,#04,#da,#64,#80
	db #03,#d2,#6b,#d2,#6f,#d2,#6b,#d2
	db #6b,#d2,#6f,#d2,#6b,#d2,#69,#d2
	db #61,#d2,#67,#ce,#69,#ce,#6b,#ce
	db #6d,#c2,#6e,#80,#03,#d2,#6f,#d2
	db #6b,#d2,#6e,#80,#04,#da,#64,#80
	db #03,#d2,#6b,#d2,#6f,#d2,#7d,#d2
	db #79,#d2,#75,#d2,#6f,#d2,#6b,#d2
	db #65,#d2,#5b,#5d,#65,#ce,#5b,#5d
	db #5b,#c2,#56,#81,#04,#d6,#c4,#01
	db #d6,#c4,#02,#d6,#c4,#03,#d6,#c4
	db #04,#d6,#c4,#05,#d6,#c4,#06,#d6
	db #c4,#07,#d6,#c4,#08,#d6,#c4,#09
	db #d6,#c4,#0a,#d0,#ca,#56,#85,#05
	db #d2,#6f,#ce,#6f,#ce,#57,#d2,#6f
	db #ce,#6f,#ce,#57,#d2,#6f,#ce,#6f
	db #ce,#57,#d2,#6f,#ce,#6f,#ce,#52
	db #80,#06,#d2,#6b,#ce,#6b,#ce,#53
	db #d2,#6b,#ce,#6b,#ce,#52,#80,#07
	db #d2,#6b,#ce,#6b,#ce,#53,#d2,#6b
	db #ce,#6b,#c2,#56,#80,#05,#d2,#6f
	db #ce,#6f,#ce,#57,#d2,#6f,#ce,#6f
	db #ce,#57,#d2,#6f,#ce,#6f,#ce,#57
	db #d2,#6f,#ce,#6f,#ce,#52,#80,#06
	db #d2,#6b,#ce,#6b,#ce,#53,#d2,#6b
	db #ce,#6b,#ce,#50,#80,#08,#d2,#69
	db #ce,#69,#ce,#51,#d2,#69,#ce,#69
	db #c2,#c0,#1f,#86,#97,#09,#d0,#c4
	db #0a,#d0,#c4,#09,#d0,#c4,#08,#d0
	db #c4,#07,#d0,#c4,#06,#d0,#c4,#05
	db #d0,#c4,#04,#d0,#c4,#03,#d0,#c4
	db #02,#d0,#c4,#01,#c2,#c4,#00,#c0
	db #2e,#c6,#04,#c6,#04,#c6,#04,#c6
	db #04,#7c,#80,#09,#d2,#87,#d2,#8b
	db #c2,#8a,#80,#09,#8d,#d4,#8b,#8d
	db #d4,#8b,#8d,#d0,#8b,#8d,#d4,#8b
	db #8d,#d4,#8b,#d2,#87,#d2,#83,#da
	db #7d,#d2,#87,#83,#d0,#7d,#d2,#87
	db #83,#d0,#7d,#c2,#82,#81,#09,#c6
	db #fa,#c0,#2c,#c6,#01,#ce,#c6,#01
	db #ce,#c6,#01,#ce,#c6,#01,#ce,#c6
	db #01,#ce,#c6,#01,#ce,#c6,#01,#ce
	db #c6,#01,#ce,#c6,#01,#ce,#c6,#01
	db #ce,#c6,#01,#ce,#c6,#01,#ce,#c6
	db #01,#ce,#c6,#01,#ce,#c6,#01,#ce
	db #c6,#01,#ce,#c6,#01,#ce,#c6,#01
	db #ce,#c6,#01,#ce,#c6,#01,#ce,#c6
	db #01,#c4,#00,#c6,#01,#ce,#c8,#01
	db #01,#ce,#c6,#01,#c4,#02,#c6,#01
	db #ce,#c8,#03,#01,#ce,#c6,#01,#c4
	db #04,#c6,#01,#ce,#c8,#05,#01,#ce
	db #c6,#01,#c4,#06,#c6,#01,#ce,#c8
	db #07,#01,#ce,#c6,#01,#c4,#08,#c6
	db #01,#ce,#c8,#09,#01,#ce,#c6,#01
	db #c4,#0a,#c6,#01,#ce,#c8,#0b,#01
	db #ce,#c6,#01,#c4,#0c,#c6,#01,#ce
	db #ca,#56,#81,#0a,#d2,#6f,#ce,#6f
	db #ce,#57,#d2,#6f,#ce,#6f,#ce,#57
	db #d2,#6f,#ce,#6f,#ce,#57,#d2,#6f
	db #ce,#6f,#c2,#52,#80,#0b,#d2,#6b
	db #ce,#6b,#ce,#53,#d2,#6b,#ce,#6b
	db #c2,#52,#80,#06,#d2,#6b,#ce,#6b
	db #ce,#53,#d2,#6b,#ce,#6b,#c2,#2c
	db #80,#01,#d2,#2d,#ce,#2d,#ce,#41
	db #ce,#45,#ce,#2d,#ce,#2d,#c2,#52
	db #80,#0c,#d2,#6b,#ce,#6b,#ce,#53
	db #d2,#6b,#ce,#6b,#c2,#52,#80,#07
	db #d2,#6b,#ce,#6b,#ce,#53,#d2,#6b
	db #ce,#6b,#c2,#22,#80,#01,#d2,#23
	db #ce,#23,#ce,#37,#ce,#3b,#ce,#23
	db #ce,#23,#c2,#4e,#80,#0c,#d2,#67
	db #ce,#67,#ce,#4f,#d2,#67,#ce,#67
	db #ce,#4d,#d2,#65,#ce,#65,#ce,#4d
	db #d2,#65,#ce,#65,#c2,#4e,#80,#07
	db #d2,#67,#ce,#67,#ce,#4f,#d2,#67
	db #ce,#67,#ce,#4d,#d2,#65,#ce,#65
	db #ce,#4d,#d2,#65,#ce,#65,#c2,#1e
	db #80,#01,#d2,#1f,#ce,#1f,#ce,#33
	db #ce,#37,#ce,#1f,#ce,#1f,#ce,#1d
	db #d2,#1d,#ce,#1d,#ce,#31,#ce,#35
	db #ce,#1d,#ce,#1d,#c2,#d0,#56,#81
	db #05,#d2,#6f,#ce,#6f,#ce,#57,#d2
	db #6f,#ce,#6f,#ce,#57,#d2,#6f,#ce
	db #6f,#ce,#57,#d2,#6f,#c2,#d0,#52
	db #80,#06,#d2,#6b,#ce,#6b,#ce,#53
	db #d2,#6b,#c2,#d0,#52,#80,#07,#d2
	db #6b,#ce,#6b,#ce,#53,#d2,#6b,#c2
	db #d0,#4e,#80,#07,#d2,#67,#ce,#67
	db #ce,#4f,#d2,#67,#ce,#67,#ce,#4d
	db #d2,#65,#ce,#65,#ce,#4d,#d2,#65
	db #c2,#ce,#26,#81,#09,#c6,#ee,#c6
	db #ee,#c6,#ee,#c6,#ee,#c6,#ee,#c6
	db #ee,#c6,#ee,#c6,#ee,#c6,#ee,#c6
	db #ee,#c6,#ee,#c6,#ee,#c6,#ed,#c6
	db #ed,#c6,#ed,#c6,#ed,#ce,#c6,#ed
	db #ce,#c6,#ed,#ce,#c6,#ed,#ce,#c6
	db #ed,#ce,#c6,#ed,#ce,#c6,#ed,#ce
	db #c6,#ed,#fc,#c6,#03,#c6,#07,#c6
	db #07,#c6,#07,#c6,#07,#c6,#07,#c6
	db #07,#c6,#07,#c2,#d2,#c4,#00,#c4
	db #00,#c4,#01,#c4,#01,#c4,#02,#c4
	db #02,#c4,#03,#c4,#03,#c4,#04,#c4
	db #04,#c4,#05,#c4,#05,#c4,#06,#c4
	db #06,#c4,#07,#c4,#07,#c4,#08,#c4
	db #09,#c4,#09,#c4,#0a,#c4,#0a,#c4
	db #0b,#c4,#0b,#c4,#0c,#c4,#0c,#c4
	db #0d,#c4,#0d,#ca,#c4,#00,#c4,#06
	db #c4,#07,#c4,#07,#c4,#08,#34,#81
	db #09,#d2,#3b,#d2,#3f,#c2,#42,#80
	db #09,#c2,#d4,#c4,#00,#c4,#01,#c4
	db #02,#c4,#03,#c4,#04,#c4,#05,#c4
	db #06,#c4,#07,#42,#81,#09,#ce,#c6
	db #f1,#c2,#48,#80,#09,#d2,#45,#d2
	db #43,#d2,#45,#c2,#3e,#80,#09,#c2
	db #d2,#c4,#00,#c4,#00,#c4,#01,#c4
	db #01,#c4,#02,#c4,#02,#c4,#03,#c4
	db #03,#c4,#04,#c4,#04,#c4,#05,#c4
	db #05,#c4,#06,#c4,#06,#c4,#07,#c4
	db #07,#c4,#08,#c4,#08,#c4,#09,#c4
	db #09,#c4,#0a,#c4,#0a,#c4,#0b,#c4
	db #0b,#c4,#0c,#c4,#0c,#c4,#0d,#ca
	db #c4,#00,#6e,#80,#09,#c2,#ec,#6e
	db #80,#09,#d2,#73,#d2,#75,#d2,#79
	db #c2,#7c,#80,#09,#d6,#79,#d6,#75
	db #c2,#78,#80,#09,#7d,#c2,#ca,#c4
	db #00,#d8,#7c,#80,#09,#ce,#7f,#ce
	db #7d,#ce,#75,#c2,#78,#80,#09,#c2
	db #ca,#c4,#00,#e0,#78,#80,#09,#ce
	db #7d,#c2,#78,#80,#09,#d2,#75,#d2
	db #73,#d2,#6b,#c2,#ca,#c2,#6e,#80
	db #09,#c2,#78,#81,#09,#c0,#1e,#c4
	db #00,#c4,#00,#c4,#01,#c4,#01,#c4
	db #02,#c4,#02,#c4,#03,#c4,#03,#c4
	db #04,#c4,#05,#c4,#05,#c4,#06,#c4
	db #06,#c4,#07,#c4,#07,#c4,#08,#c4
	db #08,#c4,#09,#c4,#09,#c4,#0a,#c4
	db #0a,#c4,#0b,#c4,#0b,#c4,#0c,#c4
	db #0c,#c4,#0d,#c4,#0d,#c4,#0e,#c4
	db #0e,#ca,#c4,#00,#c2,#ff
;
; #4000 - player rallocated by Megachur
;
	jp l400a
	jp l402e
.l4009 equ $ + 3
.l4008 equ $ + 2
	db #00,#40,#00,#00
.l400a
	call l48e0
	ld hl,l4054
.l4011 equ $ + 1
	ld a,#00
.l4012
	cp (hl)
	jr z,l4019
	inc hl
	inc hl
	jr l4012
.l4019
	inc hl
	ld a,(hl)
	ld (l404d),a
	xor a
	ld (l4043),a
	ld hl,l4037
	ld bc,#8100
	ld de,l4041
	jp #bce0
.l402e
	ld hl,l4037
	call #bce6
	jp l48bb
.l4037
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l4041
	di
.l4043 equ $ + 1
	ld a,#00
	sub #01
	jr c,l404c
	ld (l4043),a
	ret
.l404d equ $ + 1
.l404c
	ld a,#00
	ld (l4043),a
	jp l4060
.l4054
	dec c
	ld de,#0b19
	ld (#6405),a
	ld (bc),a
	sub (hl)
	ld bc,#002c
;
.play_music
.l4060
;
	xor a
	ld (l4008),a
	ld (l4899),a
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
.l4071 equ $ + 1
	ld a,#00
.l4073 equ $ + 1
	cp #00
	jr z,l407d
	inc a
	ld (l4071),a
	jp l430c
.l407d
	xor a
	ld (l4071),a
.l4081
	or a
	jp nc,l4163
	ld (l418b),a
	ld (l41f6),a
	ld (l4261),a
	ld a,#b7
	ld (l4081),a
.l4094 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l40ca
.l409a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l40c7
	ld b,a
	and #1f
	bit 4,a
	jr z,l40ab
	or #e0
.l40ab
	ld (l4198),a
	rl b
	rl b
	jr nc,l40b9
	ld a,(hl)
	ld (l4203),a
	inc hl
.l40b9
	rl b
	jr nc,l40c2
	ld a,(hl)
	ld (l426e),a
	inc hl
.l40c2
	ld (l409a),hl
	jr l40cd
.l40c7
	ld (l409a),hl
.l40ca
	ld (l4094),a
.l40ce equ $ + 1
.l40cd
	ld a,#00
	sub #01
	jr c,l40da
	ld (l40ce),a
.l40d7 equ $ + 1
	ld a,#00
	jr l40f5
.l40db equ $ + 1
.l40da
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l40e8
	ld (l40db),hl
	jr l40f5
.l40e8
	ld (l40d7),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l40db),hl
	ld (l40ce),a
	ld a,b
.l40f5
	ld (l42cc),a
.l40f9 equ $ + 1
	ld hl,#0000
	ld de,l4191
	ldi
	ldi
	ld de,l41fc
	ldi
	ldi
	ld de,l4267
	ldi
	ldi
	ld (l40f9),hl
.l4114 equ $ + 1
	ld a,#00
	or a
	jr nz,l4126
.l4119 equ $ + 1
	ld a,#00
	sub #01
	jr c,l4134
	ld (l4119),a
.l4122 equ $ + 1
	ld hl,#0000
	jr l416c
.l4127 equ $ + 1
.l4126
	ld a,#00
	sub #01
	jr c,l4134
	ld (l4127),a
	ld hl,(l4135)
	jr l4159
.l4135 equ $ + 1
.l4134
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l4151
	ld (l4119),a
	xor a
	ld (l4114),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4135),hl
	ex de,hl
	ld (l4122),hl
	jr l416c
.l4151
	ld (l4127),a
	ld a,#01
	ld (l4114),a
.l4159
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4135),hl
	ex de,hl
	jr l416c
.l4164 equ $ + 1
.l4163
	ld a,#00
	sub #01
	jr nc,l4187
.l416a equ $ + 1
	ld hl,#0000
.l416c
	ld a,(hl)
	inc hl
	srl a
	jr c,l4184
	srl a
	jr c,l417b
	ld (l4073),a
	jr l4183
.l417b
	ld (l4008),a
.l417f equ $ + 1
	ld a,#01
	ld (l4009),a
.l4183
	xor a
.l4184
	ld (l416a),hl
.l4187
	ld (l4164),a
.l418b equ $ + 1
	ld a,#00
	sub #01
	jr nc,l41f2
.l4191 equ $ + 1
	ld hl,#0000
.l4194 equ $ + 1
	ld bc,#0100
.l4198 equ $ + 2
.l4197 equ $ + 1
	ld de,#0000
.l419b equ $ + 2
	ld lx,#00
	call l440b
	ld a,lx
	ld (l419b),a
	ld (l4316),hl
	exx
	ld (l4191),hl
	ld a,c
	ld (l4194),a
	ld (l4310),a
	xor a
	or hy
	jr nz,l41f0
	ld (l4333),a
	ld d,a
	ld a,e
	ld (l4197),a
	ld l,d
	ld h,l
	ld (l4313),hl
.l41c5 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l4344
	ldi
	ldi
	ld de,l433c
	ldi
	ldi
	ld de,l4335
	ldi
	ld de,l4346
	ldi
	ld a,(hl)
	inc hl
	ld (l4325),hl
	ld hl,l4899
	or (hl)
	ld (hl),a
.l41f0
	ld a,ly
.l41f2
	ld (l418b),a
.l41f6 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l425d
.l41fc equ $ + 1
	ld hl,#0000
.l41ff equ $ + 1
	ld bc,#0200
.l4203 equ $ + 2
.l4202 equ $ + 1
	ld de,#0000
.l4206 equ $ + 2
	ld lx,#00
	call l440b
	ld a,lx
	ld (l4206),a
	ld (l4368),hl
	exx
	ld (l41fc),hl
	ld a,c
	ld (l41ff),a
	ld (l4362),a
	xor a
	or hy
	jr nz,l425b
	ld (l4385),a
	ld d,a
	ld a,e
	ld (l4202),a
	ld l,d
	ld h,l
	ld (l4365),hl
.l4230 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l4396
	ldi
	ldi
	ld de,l438e
	ldi
	ldi
	ld de,l4387
	ldi
	ld de,l4398
	ldi
	ld a,(hl)
	inc hl
	ld (l4377),hl
	ld hl,l4899
	or (hl)
	ld (hl),a
.l425b
	ld a,ly
.l425d
	ld (l41f6),a
.l4261 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l42c8
.l4267 equ $ + 1
	ld hl,#0000
.l426a equ $ + 1
	ld bc,#0300
.l426e equ $ + 2
.l426d equ $ + 1
	ld de,#0000
.l4271 equ $ + 2
	ld lx,#00
	call l440b
	ld a,lx
	ld (l4271),a
	ld (l43ba),hl
	exx
	ld (l4267),hl
	ld a,c
	ld (l426a),a
	ld (l43b4),a
	xor a
	or hy
	jr nz,l42c6
	ld (l43d7),a
	ld d,a
	ld a,e
	ld (l426d),a
	ld l,d
	ld h,l
	ld (l43b7),hl
.l429b equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l43e8
	ldi
	ldi
	ld de,l43e0
	ldi
	ldi
	ld de,l43d9
	ldi
	ld de,l43ea
	ldi
	ld a,(hl)
	inc hl
	ld (l43c9),hl
	ld hl,l4899
	or (hl)
	ld (hl),a
.l42c6
	ld a,ly
.l42c8
	ld (l4261),a
.l42cc equ $ + 1
	ld a,#00
	sub #01
	jr c,l42d6
	ld (l42cc),a
	jr l430c
.l42d6
	ld a,#37
	ld (l4081),a
	ld hl,(l40f9)
.l42df equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l430c
	ld (l4094),a
	ld (l40ce),a
	ld (l4164),a
.l42f0 equ $ + 1
	ld hl,#0000
	ld (l409a),hl
.l42f6 equ $ + 1
	ld hl,#0000
	ld (l40db),hl
.l42fc equ $ + 1
	ld hl,#0000
	ld (l40f9),hl
.l4302 equ $ + 1
	ld hl,#0000
	ld (l4135),hl
.l4308 equ $ + 1
	ld a,#00
	ld (l4114),a
.l430c
	ld hl,l4899
.l4310 equ $ + 1
	ld d,#00
	exx
.l4313 equ $ + 1
	ld hl,#0000
.l4316 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4313),hl
	ld (l4546),hl
	ld a,(l419b)
	ld lx,a
.l4325 equ $ + 1
	ld hl,#0000
	ld iy,l4734
	ld a,(l4333)
	call l44a0
	ex de,hl
.l4333 equ $ + 1
	ld a,#00
.l4335 equ $ + 1
	cp #00
	jr z,l433b
	inc a
	jr l4358
.l433c equ $ + 1
.l433b
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l4354
.l4344 equ $ + 1
	ld de,#0000
.l4346
	or a
	jr c,l4354
.l434a equ $ + 1
	ld hl,#0000
	ld (l433c),hl
	dec a
	ld (l4335),a
	inc a
.l4354
	ld (l4325),de
.l4358
	ld (l4333),a
	ld a,hx
	ld (l4407),a
	exx
.l4362 equ $ + 1
	ld d,#00
	exx
.l4365 equ $ + 1
	ld hl,#0000
.l4368 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4365),hl
	ld (l4546),hl
	ld a,(l4206)
	ld lx,a
.l4377 equ $ + 1
	ld hl,#0000
	ld iy,l4785
	ld a,(l4385)
	call l44a0
	ex de,hl
.l4385 equ $ + 1
	ld a,#00
.l4387 equ $ + 1
	cp #00
	jr z,l438d
	inc a
	jr l43aa
.l438e equ $ + 1
.l438d
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l43a6
.l4396 equ $ + 1
	ld de,#0000
.l4398
	or a
	jr c,l43a6
.l439c equ $ + 1
	ld hl,#0000
	ld (l438e),hl
	dec a
	ld (l4387),a
	inc a
.l43a6
	ld (l4377),de
.l43aa
	ld (l4385),a
	ld a,hx
	ld (l4404),a
	exx
.l43b4 equ $ + 1
	ld d,#00
	exx
.l43b7 equ $ + 1
	ld hl,#0000
.l43ba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l43b7),hl
	ld (l4546),hl
	ld a,(l4271)
	ld lx,a
.l43c9 equ $ + 1
	ld hl,#0000
	ld iy,l47d6
	ld a,(l43d7)
	call l44a0
	ex de,hl
.l43d7 equ $ + 1
	ld a,#00
.l43d9 equ $ + 1
	cp #00
	jr z,l43df
	inc a
	jr l43fc
.l43e0 equ $ + 1
.l43df
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l43f8
.l43e8 equ $ + 1
	ld de,#0000
.l43ea
	or a
	jr c,l43f8
.l43ee equ $ + 1
	ld hl,#0000
	ld (l43e0),hl
	dec a
	ld (l43d9),a
	inc a
.l43f8
	ld (l43c9),de
.l43fc
	ld (l43d7),a
	ld a,hx
	sla a
.l4404 equ $ + 1
	or #00
	rla
.l4407 equ $ + 1
	or #00
	jp l4729
.l440b
	ld a,(hl)
	inc hl
	srl a
	jr c,l4444
	cp #60
	jr nc,l444c
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l4424
	and #0f
	ld c,a
.l4424
	rl b
	jr nc,l442a
	ld e,(hl)
	inc hl
.l442a
	rl b
	jr nc,l443c
.l442e
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l4438
	dec h
.l4438
	ld ly,#00
	ret
.l443c
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l4444
	ld hy,#00
	add d
	ld lx,a
	jr l443c
.l444c
	ld hy,#01
	sub #60
	jr z,l446d
	dec a
	jr z,l4484
	dec a
	jr z,l4476
	dec a
	jr z,l442e
	dec a
	jr z,l4480
	dec a
	jr z,l4495
	dec a
	jr z,l448c
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l446d
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l4476
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l4480
	ld c,(hl)
	inc hl
	jr l442e
.l4484
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l448c
	ld a,(hl)
	inc hl
	ld (l4008),a
	ld a,b
	ld (l4009),a
.l4495
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l44a0
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l4556
	bit 4,e
	jr z,l4508
	ld a,(hl)
	bit 6,a
	jr z,l44d5
	ld d,#08
	inc hl
	and #1f
	jr z,l44bc
	ld (l4827),a
	res 3,d
.l44bc
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l44c5
	xor a
.l44c5
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l44d5
	ld (l4827),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l44f1
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l44ea
	xor a
.l44ea
	ld (iy+#36),a
	ld hx,d
	jr l451b
.l44f1
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l44fa
	xor a
.l44fa
	ld (iy+#36),a
.l44fd
	ld hx,d
	ret
.l4500
	ld (iy+#36),#00
	ld d,#09
	jr l44fd
.l4508
	ld d,#08
	ld a,e
	and #0f
	jr z,l4500
	exx
	sub d
	exx
	jr nc,l4515
	xor a
.l4515
	ld (iy+#36),a
	ld hx,#08
.l451b
	bit 5,e
	jr z,l4523
	ld a,(hl)
	inc hl
	jr l4524
.l4523
	xor a
.l4524
	bit 6,e
	jr z,l452e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l4531
.l452e
	ld de,#0000
.l4531
	add lx
	cp #60
	jr c,l4539
	ld a,#5f
.l4539
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l4669
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l4546 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l4556
	or a
	jr nz,l4560
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l4560
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
	ld (l4892),a
	bit 3,e
	jr z,l4582
	ld a,(hl)
	inc hl
	ld (l4827),a
	res 3,d
	jr l4582
.l4582
	ld hx,d
	xor a
	bit 7,b
	jr z,l4594
	bit 6,b
	jr z,l458f
	ld a,(hl)
	inc hl
.l458f
	ld (l4643),a
	ld a,#01
.l4594
	ld (l45dc),a
	ld a,b
	rra
	and #0e
	ld (l45ed),a
	bit 4,e
	jp nz,l464e
	bit 1,e
	jr z,l45ab
	ld a,(hl)
	inc hl
	jr l45ac
.l45ab
	xor a
.l45ac
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l45b9
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l45bc
.l45b9
	ld de,#0000
.l45bc
	add lx
	cp #60
	jr c,l45c4
	ld a,#5f
.l45c4
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l4669
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l4546)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l45dc equ $ + 1
	ld a,#00
	or a
	jr nz,l45ec
	ex af,af'
	bit 5,a
	jr nz,l4657
.l45e5
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l45ed equ $ + 1
.l45ec
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l45f7),a
	ld a,c
.l45f7 equ $ + 1
	jr l45f8
.l45f8
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
	jr nc,l4611
	inc bc
.l4611
	ld a,c
	ld (l485c),a
	ld a,b
	ld (l4877),a
	ld a,(l45dc)
	or a
	jr z,l464c
	ld a,(l45ed)
	ld e,a
	srl a
	add e
	ld (l462b),a
	ld a,b
.l462b equ $ + 1
	jr l462c
.l462c
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
.l4643 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l464c
	pop hl
	ret
.l464e
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l45e5
.l4657
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l485c),a
	inc hl
	ld a,(hl)
	ld (l4877),a
	inc hl
	ret
.l4669
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
.l4729
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l4734 equ $ + 1
	ld a,#00
.l4736 equ $ + 1
	cp #00
	jr z,l474e
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
	ld (l4736),a
	exx
.l474f equ $ + 1
.l474e
	ld a,#00
.l4751 equ $ + 1
	cp #00
	jr z,l4769
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
	ld (l4751),a
	exx
.l476a equ $ + 1
.l4769
	ld a,#00
.l476c equ $ + 1
	cp #00
	jr z,l4784
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
	ld (l476c),a
	exx
.l4785 equ $ + 1
.l4784
	ld a,#00
.l4787 equ $ + 1
	cp #00
	jr z,l479f
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
	ld (l4787),a
	exx
.l47a0 equ $ + 1
.l479f
	ld a,#00
.l47a2 equ $ + 1
	cp #00
	jr z,l47ba
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
	ld (l47a2),a
	exx
.l47bb equ $ + 1
.l47ba
	ld a,#00
.l47bd equ $ + 1
	cp #00
	jr z,l47d5
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
	ld (l47bd),a
	exx
.l47d6 equ $ + 1
.l47d5
	ld a,#00
.l47d8 equ $ + 1
	cp #00
	jr z,l47f0
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
	ld (l47d8),a
	exx
.l47f1 equ $ + 1
.l47f0
	ld a,#00
.l47f3 equ $ + 1
	cp #00
	jr z,l480b
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
	ld (l47f3),a
	exx
.l480c equ $ + 1
.l480b
	ld a,#00
.l480e equ $ + 1
	cp #00
	jr z,l4826
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
	ld (l480e),a
	exx
.l4827 equ $ + 1
.l4826
	ld a,#00
.l4829 equ $ + 1
	cp #00
	jr z,l4841
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
	ld (l4829),a
	exx
.l4841
	ld a,h
.l4843 equ $ + 1
	cp #c0
	jr z,l485b
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
	ld (l4843),a
	exx
.l485c equ $ + 1
.l485b
	ld a,#00
.l485e equ $ + 1
	cp #00
	jr z,l4876
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
	ld (l485e),a
	exx
.l4877 equ $ + 1
.l4876
	ld a,#00
.l4879 equ $ + 1
	cp #00
	jr z,l4891
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
	ld (l4879),a
	exx
.l4892 equ $ + 1
.l4891
	ld a,#00
.l4894 equ $ + 1
	cp #ff
	jr nz,l489e
	ld h,a
.l4899 equ $ + 1
	ld a,#00
	or a
	jr z,l48b2
	ld a,h
.l489e
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
	ld (l4894),a
.l48b2
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
	ret
;
.stop_music
.l48bb
;
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l476a),a
	ld (l47bb),a
	ld (l480c),a
	dec a
	ld (l476c),a
	ld (l47bd),a
	ld (l480e),a
	ld (l4843),a
	ld a,#3f
	jp l4729
;
.real_init_music
.l48e0
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l417f),a
	inc hl
	ld a,(hl)
	ld (l4011),a
	inc hl
	inc hl
	ld de,l40db
	ldi
	ldi
	ld de,l40f9
	ldi
	ldi
	ld de,l4135
	ldi
	ldi
	ld de,l41c5
	ldi
	ldi
	ld de,l42f0
	ldi
	ldi
	ld de,l42f6
	ldi
	ldi
	ld de,l42fc
	ldi
	ldi
	ld de,l4302
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l4073),a
	ld (l4071),a
	ld (l409a),hl
	ld hl,(l4135)
	ld (l42df),hl
	ld a,(hl)
	and #01
	ld (l4114),a
	ld hl,(l4302)
	ld a,(hl)
	and #01
	ld (l4308),a
	ld hl,(l41c5)
	ld (l4230),hl
	ld (l429b),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l4325),hl
	ld (l4377),hl
	ld (l43c9),hl
	ld (l4344),hl
	ld (l4396),hl
	ld (l43e8),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l434a),de
	ld (l439c),de
	ld (l43ee),de
	ld (l433c),de
	ld (l438e),de
	ld (l43e0),de
	ld a,#37
	ld (l4081),a
	ld hl,l499f
.l498f
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l4996
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l4996
	jr l498f
.l499f
	jr l49a1
.l49a1
	dw l4734,l474f,l4785,l47a0
	dw l47d6,l47f1,l4827,l476a
	dw l47bb,l480c,l485c,l4877
	dw l4892,l4094,l40ce,l4119
	dw l4127,l4164,l4333,l4385
	dw l43d7,l4194,l41ff,l426a
	dw #ff11,l4736,l4751,l4787
	dw l47a2,l47d8,l47f3,l4829
	dw l4843,l476c,l47bd,l480e
	dw l485e,l4879,l4894,l4335
	dw l4387,l43d9,#b703,l4346
	dw l4398,l43ea
;
.init_music		; added by Megachur
;
	ld de,l8000
	jp real_init_music
;
.music_info
	db "ReSeT 8 - Comic Bakery (2012)(Public Domain)(PulkoMandy)",0
	db "StArkos",0

	read "music_end.asm"
