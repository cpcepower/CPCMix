; Music of Columns Cpc (2004)(CEZ Games Studio)(DOS)(StArkos)
; Ripped by Megachur the 17/10/2013
; $VER 1.5

IFDEF FILENAME_WRITE
	write "COLUMNSC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2013
music_adr				equ #7500

	read "music_header.asm"

.l7500
	db #53,#4b,#31,#30,#00,#75,#02,#32
	db #00,#1e,#75,#20,#75,#56,#75,#59
	db #75,#1a,#75,#1e,#75,#20,#75,#56
	db #75,#06,#c0,#00,#00,#0f,#7f,#08
	db #7f,#76,#c1,#76,#c2,#76,#04,#77
	db #c1,#76,#c4,#77,#84,#78,#c1,#76
	db #44,#79,#04,#77,#c1,#76,#c4,#77
	db #04,#7a,#c1,#76,#c4,#7a,#04,#77
	db #84,#7b,#c4,#77,#84,#78,#90,#7b
	db #44,#79,#04,#77,#84,#7b,#c4,#77
	db #04,#7a,#90,#7b,#c4,#7a,#10,#9c
	db #7b,#67,#75,#71,#75,#85,#75,#a3
	db #75,#da,#75,#11,#76,#48,#76,#6e
	db #75,#71,#75,#ff,#37,#00,#00,#00
	db #00,#6e,#75,#85,#75,#00,#b7,#00
	db #0a,#09,#08,#07,#06,#05,#04,#03
	db #02,#01,#06,#05,#05,#6e,#75,#a3
	db #75,#00,#b7,#00,#4a,#09,#00,#4a
	db #06,#00,#49,#04,#00,#49,#03,#00
	db #48,#01,#00,#08,#07,#07,#06,#06
	db #05,#05,#05,#6e,#75,#da,#75,#06
	db #b7,#00,#0f,#2f,#03,#2e,#07,#0e
	db #2d,#03,#2d,#07,#0c,#2c,#03,#2b
	db #07,#0b,#2a,#03,#2a,#07,#09,#29
	db #03,#28,#07,#08,#27,#03,#27,#07
	db #06,#26,#03,#25,#07,#05,#24,#03
	db #24,#07,#03,#23,#03,#22,#07,#02
	db #21,#03,#6e,#75,#11,#76,#06,#b7
	db #00,#0f,#2f,#03,#2e,#08,#0e,#2d
	db #03,#2d,#08,#0c,#2c,#03,#2b,#08
	db #0b,#2a,#03,#2a,#08,#09,#29,#03
	db #28,#08,#08,#27,#03,#27,#08,#06
	db #26,#03,#25,#08,#05,#24,#03,#24
	db #08,#03,#23,#03,#22,#08,#02,#21
	db #03,#6e,#75,#48,#76,#06,#b7,#00
	db #0f,#2f,#05,#2e,#09,#0e,#2d,#05
	db #2d,#09,#0c,#2c,#05,#2b,#09,#0b
	db #2a,#05,#2a,#09,#09,#29,#05,#28
	db #09,#08,#27,#05,#27,#09,#06,#26
	db #05,#25,#09,#05,#24,#05,#24,#09
	db #03,#23,#05,#22,#09,#02,#21,#05
	db #6e,#75,#7f,#76,#06,#b7,#00,#0f
	db #2f,#04,#2e,#07,#0e,#2d,#04,#2d
	db #07,#0c,#2c,#04,#2b,#07,#0b,#2a
	db #04,#2a,#07,#09,#29,#04,#28,#07
	db #08,#27,#04,#27,#07,#06,#26,#04
	db #25,#07,#05,#24,#04,#24,#07,#03
	db #23,#04,#22,#07,#02,#21,#04,#7c
	db #80,#01,#ce,#73,#ce,#65,#ce,#7d
	db #ce,#73,#ce,#65,#ce,#7d,#ce,#73
	db #ce,#7d,#ce,#73,#ce,#65,#ce,#7d
	db #ce,#73,#ce,#65,#ce,#7d,#ce,#73
	db #ce,#7d,#ce,#73,#ce,#65,#ce,#7d
	db #ce,#73,#ce,#65,#ce,#7d,#ce,#73
	db #ce,#7d,#ce,#73,#ce,#65,#ce,#7d
	db #ce,#73,#ce,#65,#ce,#7d,#ce,#73
	db #c2,#c2,#ce,#7c,#85,#01,#ce,#73
	db #ce,#65,#ce,#7d,#ce,#73,#ce,#65
	db #ce,#7d,#ce,#73,#ce,#7d,#ce,#73
	db #ce,#65,#ce,#7d,#ce,#73,#ce,#65
	db #ce,#7d,#ce,#73,#ce,#7d,#ce,#73
	db #ce,#65,#ce,#7d,#ce,#73,#ce,#65
	db #ce,#7d,#ce,#73,#ce,#7d,#ce,#73
	db #ce,#65,#ce,#7d,#ce,#73,#ce,#65
	db #ce,#7d,#ce,#73,#7c,#81,#01,#34
	db #85,#02,#72,#81,#01,#4c,#85,#02
	db #64,#81,#01,#34,#85,#02,#7c,#81
	db #01,#4c,#85,#02,#72,#81,#01,#34
	db #85,#02,#64,#81,#01,#4c,#85,#02
	db #7c,#81,#01,#34,#85,#02,#72,#81
	db #01,#4c,#85,#02,#7c,#81,#01,#34
	db #85,#02,#72,#81,#01,#4c,#85,#02
	db #64,#81,#01,#34,#85,#02,#7c,#81
	db #01,#4c,#85,#02,#72,#81,#01,#34
	db #85,#02,#64,#81,#01,#4c,#85,#02
	db #7c,#81,#01,#34,#85,#02,#72,#81
	db #01,#4c,#85,#02,#74,#81,#01,#2c
	db #85,#02,#6a,#81,#01,#44,#85,#02
	db #5c,#81,#01,#2c,#85,#02,#74,#81
	db #01,#44,#85,#02,#6a,#81,#01,#2c
	db #85,#02,#5c,#81,#01,#44,#85,#02
	db #74,#81,#01,#2c,#85,#02,#6a,#81
	db #01,#44,#85,#02,#74,#81,#01,#2c
	db #85,#02,#6a,#81,#01,#44,#85,#02
	db #5c,#81,#01,#2c,#85,#02,#74,#81
	db #01,#44,#85,#02,#6a,#81,#01,#2c
	db #85,#02,#5c,#81,#01,#44,#85,#02
	db #74,#81,#01,#2c,#85,#02,#6a,#81
	db #01,#44,#85,#02,#34,#85,#02,#7c
	db #85,#01,#42,#85,#02,#72,#85,#01
	db #34,#85,#02,#64,#85,#01,#42,#85
	db #02,#7c,#85,#01,#34,#85,#02,#72
	db #85,#01,#42,#85,#02,#64,#85,#01
	db #34,#85,#02,#7c,#85,#01,#42,#85
	db #02,#72,#85,#01,#34,#85,#02,#7c
	db #85,#01,#42,#85,#02,#72,#85,#01
	db #34,#85,#02,#64,#85,#01,#42,#85
	db #02,#7c,#85,#01,#34,#85,#02,#72
	db #85,#01,#42,#85,#02,#64,#85,#01
	db #34,#85,#02,#7c,#85,#01,#42,#85
	db #02,#72,#85,#01,#2c,#85,#02,#74
	db #85,#01,#3a,#85,#02,#6a,#85,#01
	db #2c,#85,#02,#5c,#85,#01,#3a,#85
	db #02,#74,#85,#01,#2c,#85,#02,#6a
	db #85,#01,#3a,#85,#02,#5c,#85,#01
	db #2c,#85,#02,#74,#85,#01,#3a,#85
	db #02,#6a,#85,#01,#2c,#85,#02,#74
	db #85,#01,#3a,#85,#02,#6a,#85,#01
	db #2c,#85,#02,#5c,#85,#01,#3a,#85
	db #02,#74,#85,#01,#2c,#85,#02,#6a
	db #85,#01,#3a,#85,#02,#5c,#85,#01
	db #2c,#85,#02,#74,#85,#01,#3a,#85
	db #02,#6a,#85,#01,#82,#81,#01,#3a
	db #85,#02,#78,#81,#01,#52,#85,#02
	db #6a,#81,#01,#3a,#85,#02,#82,#81
	db #01,#52,#85,#02,#78,#81,#01,#3a
	db #85,#02,#6a,#81,#01,#52,#85,#02
	db #82,#81,#01,#3a,#85,#02,#78,#81
	db #01,#52,#85,#02,#82,#81,#01,#3a
	db #85,#02,#78,#81,#01,#52,#85,#02
	db #6a,#81,#01,#3a,#85,#02,#82,#81
	db #01,#52,#85,#02,#78,#81,#01,#3a
	db #85,#02,#6a,#81,#01,#52,#85,#02
	db #82,#81,#01,#3a,#85,#02,#78,#81
	db #01,#52,#85,#02,#78,#81,#01,#30
	db #85,#02,#6e,#81,#01,#48,#85,#02
	db #60,#81,#01,#30,#85,#02,#78,#81
	db #01,#48,#85,#02,#6e,#81,#01,#30
	db #85,#02,#60,#81,#01,#48,#85,#02
	db #78,#81,#01,#30,#85,#02,#6e,#81
	db #01,#48,#85,#02,#78,#81,#01,#30
	db #85,#02,#6e,#81,#01,#48,#85,#02
	db #60,#81,#01,#30,#85,#02,#78,#81
	db #01,#48,#85,#02,#6e,#81,#01,#30
	db #85,#02,#60,#81,#01,#48,#85,#02
	db #78,#81,#01,#30,#85,#02,#6e,#81
	db #01,#48,#85,#02,#3a,#80,#02,#82
	db #85,#01,#48,#80,#02,#78,#80,#01
	db #3a,#80,#02,#6a,#80,#01,#48,#80
	db #02,#82,#80,#01,#3a,#80,#02,#78
	db #80,#01,#48,#80,#02,#6a,#80,#01
	db #3a,#80,#02,#82,#80,#01,#48,#80
	db #02,#78,#80,#01,#3a,#80,#02,#82
	db #80,#01,#48,#80,#02,#78,#80,#01
	db #3a,#80,#02,#6a,#80,#01,#48,#80
	db #02,#82,#80,#01,#3a,#80,#02,#78
	db #80,#01,#48,#80,#02,#6a,#80,#01
	db #3a,#80,#02,#82,#80,#01,#48,#80
	db #02,#78,#80,#01,#30,#80,#02,#78
	db #80,#01,#3e,#80,#02,#6e,#80,#01
	db #30,#80,#02,#60,#80,#01,#3e,#80
	db #02,#78,#80,#01,#30,#80,#02,#6e
	db #80,#01,#3e,#80,#02,#60,#80,#01
	db #30,#80,#02,#78,#80,#01,#3e,#80
	db #02,#6e,#80,#01,#30,#80,#02,#78
	db #80,#01,#3e,#80,#02,#6e,#80,#01
	db #30,#80,#02,#60,#80,#01,#3e,#80
	db #02,#78,#80,#01,#30,#80,#02,#6e
	db #80,#01,#3e,#80,#02,#60,#80,#01
	db #30,#80,#02,#78,#80,#01,#3e,#80
	db #02,#6e,#80,#01,#72,#81,#01,#3a
	db #85,#02,#6a,#81,#01,#52,#85,#02
	db #60,#81,#01,#3a,#85,#02,#72,#81
	db #01,#52,#85,#02,#6a,#81,#01,#3a
	db #85,#02,#60,#81,#01,#52,#85,#02
	db #72,#81,#01,#3a,#85,#02,#6a,#81
	db #01,#52,#85,#02,#72,#81,#01,#3a
	db #85,#02,#6a,#81,#01,#52,#85,#02
	db #60,#81,#01,#3a,#85,#02,#72,#81
	db #01,#52,#85,#02,#6a,#81,#01,#3a
	db #85,#02,#60,#81,#01,#52,#85,#02
	db #72,#81,#01,#3a,#85,#02,#6a,#81
	db #01,#52,#85,#02,#6e,#81,#01,#30
	db #85,#02,#68,#81,#01,#48,#85,#02
	db #60,#81,#01,#30,#85,#02,#6e,#81
	db #01,#48,#85,#02,#68,#81,#01,#30
	db #85,#02,#60,#81,#01,#48,#85,#02
	db #6e,#81,#01,#30,#85,#02,#68,#81
	db #01,#48,#85,#02,#6e,#81,#01,#30
	db #85,#02,#68,#81,#01,#48,#85,#02
	db #60,#81,#01,#30,#85,#02,#6e,#81
	db #01,#48,#85,#02,#68,#81,#01,#30
	db #85,#02,#60,#81,#01,#48,#85,#02
	db #6e,#81,#01,#30,#85,#02,#68,#81
	db #01,#48,#85,#02,#3a,#80,#02,#72
	db #85,#01,#48,#80,#02,#6a,#80,#01
	db #3a,#80,#02,#60,#80,#01,#48,#80
	db #02,#72,#80,#01,#3a,#80,#02,#6a
	db #80,#01,#48,#80,#02,#60,#80,#01
	db #3a,#80,#02,#72,#80,#01,#48,#80
	db #02,#6a,#80,#01,#3a,#80,#02,#72
	db #80,#01,#48,#80,#02,#6a,#80,#01
	db #3a,#80,#02,#60,#80,#01,#48,#80
	db #02,#72,#80,#01,#3a,#80,#02,#6a
	db #80,#01,#48,#80,#02,#60,#80,#01
	db #3a,#80,#02,#72,#80,#01,#48,#80
	db #02,#6a,#80,#01,#30,#80,#02,#6e
	db #80,#01,#3e,#80,#02,#68,#80,#01
	db #30,#80,#02,#60,#80,#01,#3e,#80
	db #02,#6e,#80,#01,#30,#80,#02,#68
	db #80,#01,#3e,#80,#02,#60,#80,#01
	db #30,#80,#02,#6e,#80,#01,#3e,#80
	db #02,#68,#80,#01,#30,#80,#02,#6e
	db #80,#01,#3e,#80,#02,#68,#80,#01
	db #30,#80,#02,#60,#80,#01,#3e,#80
	db #02,#6e,#80,#01,#30,#80,#02,#68
	db #80,#01,#3e,#80,#02,#60,#80,#01
	db #30,#80,#02,#6e,#80,#01,#3e,#80
	db #02,#68,#80,#01,#64,#8b,#03,#ea
	db #65,#ea,#64,#80,#04,#ea,#65,#c2
	db #60,#8b,#05,#ea,#61,#ea,#60,#80
	db #06,#ea,#61,#c2,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7c00
	db #53,#4b,#31,#30,#00,#7c,#01,#32
	db #00,#1e,#7c,#20,#7c,#2c,#7c,#2f
	db #7c,#1a,#7c,#1e,#7c,#20,#7c,#2c
	db #7c,#07,#fe,#00,#ff,#01,#7f,#01
	db #29,#7e,#41,#7e,#e0,#7e,#10,#7f
	db #41,#7e,#e0,#7e,#02,#2e,#7f,#3d
	db #7c,#47,#7c,#0b,#7d,#93,#7d,#b0
	db #7d,#c1,#7d,#e2,#7d,#44,#7c,#47
	db #7c,#ff,#37,#00,#00,#00,#00,#44
	db #7c,#0b,#7d,#00,#b7,#00,#0e,#0e
	db #0a,#0b,#0c,#0d,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#02,#02,#02,#02,#02,#02
	db #02,#02,#02,#02,#02,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#00,#44,#7c,#93,#7d,#00
	db #b7,#00,#0d,#0d,#0d,#0b,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #0a,#0a,#09,#09,#09,#09,#09,#08
	db #08,#08,#08,#08,#07,#07,#07,#07
	db #07,#06,#06,#06,#06,#05,#05,#05
	db #04,#04,#04,#03,#03,#03,#02,#02
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#44,#7c,#b0,#7d,#00
	db #b7,#00,#3f,#26,#0c,#2f,#0a,#2d
	db #09,#2d,#08,#2b,#05,#2b,#04,#29
	db #03,#27,#02,#27,#01,#26,#01,#06
	db #44,#7c,#c1,#7d,#00,#b7,#00,#1f
	db #01,#1d,#21,#32,#21,#02,#00,#00
	db #00,#44,#7c,#e2,#7d,#00,#b7,#00
	db #3f,#2b,#0c,#3e,#2a,#0d,#3d,#29
	db #10,#3c,#28,#09,#1b,#27,#39,#26
	db #09,#37,#25,#0e,#15,#24,#13,#23
	db #11,#22,#44,#7c,#29,#7e,#00,#b7
	db #00,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0d,#0d,#0d,#0d,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#0a,#09,#09,#09,#09
	db #08,#08,#08,#07,#07,#07,#06,#06
	db #06,#05,#05,#05,#04,#04,#04,#03
	db #03,#03,#02,#02,#02,#01,#01,#01
	db #01,#64,#83,#01,#e6,#60,#80,#02
	db #65,#66,#80,#01,#e2,#65,#ce,#61
	db #ce,#5d,#ea,#5d,#d6,#61,#65,#61
	db #c2,#30,#81,#03,#60,#8f,#04,#60
	db #09,#60,#0f,#60,#09,#60,#0f,#60
	db #09,#60,#0f,#30,#81,#05,#60,#8f
	db #04,#60,#09,#60,#0f,#60,#09,#60
	db #0f,#30,#81,#03,#60,#8f,#04,#30
	db #81,#03,#60,#8f,#04,#60,#09,#60
	db #0f,#6a,#09,#60,#0f,#6a,#09,#60
	db #0f,#30,#81,#05,#60,#8f,#04,#30
	db #81,#03,#60,#8f,#04,#30,#81,#05
	db #60,#8f,#04,#30,#81,#05,#60,#8f
	db #04,#30,#81,#03,#60,#8f,#04,#60
	db #09,#60,#0f,#60,#09,#60,#0f,#30
	db #81,#03,#60,#8f,#04,#30,#81,#03
	db #60,#8f,#04,#60,#09,#60,#0f,#30
	db #81,#05,#60,#8f,#04,#60,#09,#60
	db #0f,#30,#81,#03,#60,#8f,#04,#60
	db #09,#60,#0f,#60,#09,#60,#0f,#60
	db #09,#60,#0f,#48,#81,#03,#46,#01
	db #60,#89,#04,#42,#81,#03,#60,#89
	db #04,#3e,#81,#03,#3a,#01,#38,#01
	db #2c,#83,#06,#d6,#2d,#c4,#05,#2c
	db #03,#d2,#45,#d2,#2d,#d6,#2c,#03
	db #c4,#05,#2c,#03,#c4,#05,#2c,#03
	db #c4,#05,#44,#03,#d2,#26,#03,#d6
	db #26,#03,#c4,#05,#3e,#03,#da,#22
	db #03,#d6,#23,#c4,#05,#22,#03,#c2
	db #64,#83,#01,#e6,#60,#80,#02,#65
	db #66,#80,#01,#e2,#65,#ce,#67,#ce
	db #6b,#d6,#5d,#de,#6f,#d6,#60,#80
	db #02,#ce,#72,#80,#01,#c2,#ff,#00
.l7f30
	db #53,#4b,#31,#30,#30,#7f,#01,#32
	db #00,#4d,#7f,#4e,#7f,#54,#7f,#57
	db #7f,#4a,#7f,#4d,#7f,#4e,#7f,#54
	db #7f,#03,#c0,#00,#00,#7e,#ed,#7f
	db #29,#80,#65,#80,#00,#a0,#80,#5b
	db #7f,#65,#7f,#62,#7f,#65,#7f,#ff
	db #37,#00,#00,#00,#00,#62,#7f,#ed
	db #7f,#00,#b7,#00,#0d,#0d,#0d,#0b
	db #0c,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0a,#0a,#0a,#09,#09,#08,#08,#07
	db #07,#06,#06,#05,#04,#03,#02,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#60,#80,#01
	db #ce,#61,#ce,#67,#ce,#61,#ce,#6b
	db #ce,#6f,#ce,#75,#ce,#79,#d2,#6f
	db #ce,#75,#ce,#6b,#ce,#6f,#ce,#67
	db #ce,#6b,#ce,#67,#ce,#61,#ce,#61
	db #ce,#67,#ce,#61,#ce,#6b,#ce,#6f
	db #ce,#6b,#ce,#61,#d2,#5d,#ce,#61
	db #ce,#61,#d2,#5d,#ce,#61,#ce,#67
	db #c2,#ce,#60,#87,#01,#ce,#61,#ce
	db #67,#ce,#61,#ce,#6b,#ce,#6f,#ce
	db #75,#ce,#79,#d2,#6f,#ce,#75,#ce
	db #6b,#ce,#6f,#ce,#67,#ce,#6b,#ce
	db #67,#ce,#61,#ce,#61,#ce,#67,#ce
	db #61,#ce,#6b,#ce,#6f,#ce,#6b,#ce
	db #61,#d2,#5d,#ce,#61,#ce,#61,#d2
	db #5d,#ce,#61,#ce,#67,#d0,#60,#8b
	db #01,#ce,#61,#ce,#67,#ce,#61,#ce
	db #6b,#ce,#6f,#ce,#75,#ce,#79,#d2
	db #6f,#ce,#75,#ce,#6b,#ce,#6f,#ce
	db #67,#ce,#6b,#ce,#67,#ce,#61,#ce
	db #61,#ce,#67,#ce,#61,#ce,#6b,#ce
	db #6f,#ce,#6b,#ce,#61,#d2,#5d,#ce
	db #61,#ce,#61,#d2,#5d,#ce,#61,#c2
	db #ff,#00,#00
;
; #9000 - player reallocated by Megachur
;
	jp l900a
	jp l902e
.l9009 equ $ + 3
.l9008 equ $ + 2
	db #00,#90,#00,#00
.l900a
	call l98de
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
	jp l98b9
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
	db #0d,#11,#19,#0b,#32,#05,#64,#02
	db #96,#01,#2c,#00
;
.play_music
.l9060
;
	xor a
	ld (l9008),a
	ld (l9897),a
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
	ld (l9119),a	; music reset
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
	call l9409
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
	ld hl,l9897
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
	call l9409
	ld a,lx
	ld (l9206),a
	ld (l9367),hl
	exx
	ld (l91fc),hl
	ld a,c
	ld (l91ff),a
	ld (l9361),a
	xor a
	or hy
	jr nz,l925b
	ld (l9384),a
	ld d,a
	ld a,e
	ld (l9202),a
	ld l,d
	ld h,l
	ld (l9364),hl
.l9230 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l9395
	ldi
	ldi
	ld de,l938d
	ldi
	ldi
	ld de,l9386
	ldi
	ld de,l9397
	ldi
	ld a,(hl)
	inc hl
	ld (l9376),hl
	ld hl,l9897
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
	call l9409
	ld a,lx
	ld (l9271),a
	ld (l93b8),hl
	exx
	ld (l9267),hl
	ld a,c
	ld (l926a),a
	ld (l93b2),a
	xor a
	or hy
	jr nz,l92c6
	ld (l93d5),a
	ld d,a
	ld a,e
	ld (l926d),a
	ld l,d
	ld h,l
	ld (l93b5),hl
.l929b equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l93e6
	ldi
	ldi
	ld de,l93de
	ldi
	ldi
	ld de,l93d7
	ldi
	ld de,l93e8
	ldi
	ld a,(hl)
	inc hl
	ld (l93c7),hl
	ld hl,l9897
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
	ld hl,l9897
.l9310 equ $ + 1
	ld d,#00
	exx
.l9313 equ $ + 1
	ld hl,#0000
.l9316 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9313),hl
	ld (l9544),hl
	ld a,(l919b)
	ld lx,a
.l9325 equ $ + 1
	ld hl,#0000
	ld iy,l9732
	ld a,(l9333)
	call l949e
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
	ld (l9405),a
.l9361 equ $ + 1
	ld d,#00
	exx
.l9364 equ $ + 1
	ld hl,#0000
.l9367 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9364),hl
	ld (l9544),hl
	ld a,(l9206)
	ld lx,a
.l9376 equ $ + 1
	ld hl,#0000
	ld iy,l9783
	ld a,(l9384)
	call l949e
	ex de,hl
.l9384 equ $ + 1
	ld a,#00
.l9386 equ $ + 1
	cp #00
	jr z,l938c
	inc a
	jr l93a9
.l938d equ $ + 1
.l938c
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l93a5
.l9395 equ $ + 1
	ld de,#0000
.l9397
	or a
	jr c,l93a5
.l939b equ $ + 1
	ld hl,#0000
	ld (l938d),hl
	dec a
	ld (l9386),a
	inc a
.l93a5
	ld (l9376),de
.l93a9
	ld (l9384),a
	ld a,hx
	ld (l9402),a
.l93b2 equ $ + 1
	ld d,#00
	exx
.l93b5 equ $ + 1
	ld hl,#0000
.l93b8 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l93b5),hl
	ld (l9544),hl
	ld a,(l9271)
	ld lx,a
.l93c7 equ $ + 1
	ld hl,#0000
	ld iy,l97d4
	ld a,(l93d5)
	call l949e
	ex de,hl
.l93d5 equ $ + 1
	ld a,#00
.l93d7 equ $ + 1
	cp #00
	jr z,l93dd
	inc a
	jr l93fa
.l93de equ $ + 1
.l93dd
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l93f6
.l93e6 equ $ + 1
	ld de,#0000
.l93e8
	or a
	jr c,l93f6
.l93ec equ $ + 1
	ld hl,#0000
	ld (l93de),hl
	dec a
	ld (l93d7),a
	inc a
.l93f6
	ld (l93c7),de
.l93fa
	ld (l93d5),a
	ld a,hx
	sla a
.l9402 equ $ + 1
	or #00
	rla
.l9405 equ $ + 1
	or #00
	jp l9727
.l9409
	ld a,(hl)
	inc hl
	srl a
	jr c,l9442
	cp #60
	jr nc,l944a
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l9422
	and #0f
	ld c,a
.l9422
	rl b
	jr nc,l9428
	ld e,(hl)
	inc hl
.l9428
	rl b
	jr nc,l943a
.l942c
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l9436
	dec h
.l9436
	ld ly,#00
	ret
.l943a
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l9442
	ld hy,#00
	add d
	ld lx,a
	jr l943a
.l944a
	ld hy,#01
	sub #60
	jr z,l946b
	dec a
	jr z,l9482
	dec a
	jr z,l9474
	dec a
	jr z,l942c
	dec a
	jr z,l947e
	dec a
	jr z,l9493
	dec a
	jr z,l948a
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l946b
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l9474
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l947e
	ld c,(hl)
	inc hl
	jr l942c
.l9482
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l948a
	ld a,(hl)
	inc hl
	ld (l9008),a
	ld a,b
	ld (l9009),a
.l9493
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l949e
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l9554
	bit 4,e
	jr z,l9506
	ld a,(hl)
	bit 6,a
	jr z,l94d3
	ld d,#08
	inc hl
	and #1f
	jr z,l94ba
	ld (l9825),a
	res 3,d
.l94ba
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l94c3
	xor a
.l94c3
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l94d3
	ld (l9825),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l94ef
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l94e8
	xor a
.l94e8
	ld (iy+#36),a
	ld hx,d
	jr l9519
.l94ef
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l94f8
	xor a
.l94f8
	ld (iy+#36),a
.l94fb
	ld hx,d
	ret
.l94fe
	ld (iy+#36),#00
	ld d,#09
	jr l94fb
.l9506
	ld d,#08
	ld a,e
	and #0f
	jr z,l94fe
	exx
	sub d
	exx
	jr nc,l9513
	xor a
.l9513
	ld (iy+#36),a
	ld hx,#08
.l9519
	bit 5,e
	jr z,l9521
	ld a,(hl)
	inc hl
	jr l9522
.l9521
	xor a
.l9522
	bit 6,e
	jr z,l952c
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l952f
.l952c
	ld de,#0000
.l952f
	add lx
	cp #60
	jr c,l9537
	ld a,#60
.l9537
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l9667
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l9544 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l9554
	or a
	jr nz,l955e
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l955e
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
	ld (l9890),a
	bit 3,e
	jr z,l9580
	ld a,(hl)
	inc hl
	ld (l9825),a
	res 3,d
	jr l9580
.l9580
	ld hx,d
	xor a
	bit 7,b
	jr z,l9592
	bit 6,b
	jr z,l958d
	ld a,(hl)
	inc hl
.l958d
	ld (l9641),a
	ld a,#01
.l9592
	ld (l95da),a
	ld a,b
	rra
	and #0e
	ld (l95eb),a
	bit 4,e
	jp nz,l964c
	bit 1,e
	jr z,l95a9
	ld a,(hl)
	inc hl
	jr l95aa
.l95a9
	xor a
.l95aa
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l95b7
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l95ba
.l95b7
	ld de,#0000
.l95ba
	add lx
	cp #60
	jr c,l95c2
	ld a,#60
.l95c2
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l9667
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l9544)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l95da equ $ + 1
	ld a,#00
	or a
	jr nz,l95ea
	ex af,af'
	bit 5,a
	jr nz,l9655
.l95e3
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l95eb equ $ + 1
.l95ea
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l95f5),a
	ld a,c
.l95f5 equ $ + 1
	jr l95f6
.l95f6
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
	jr nc,l960f
	inc bc
.l960f
	ld a,c
	ld (l985a),a
	ld a,b
	ld (l9875),a
	ld a,(l95da)
	or a
	jr z,l964a
	ld a,(l95eb)
	ld e,a
	srl a
	add e
	ld (l9629),a
	ld a,b
.l9629 equ $ + 1
	jr l962a
.l962a
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
.l9641 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l964a
	pop hl
	ret
.l964c
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l95e3
.l9655
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l985a),a
	inc hl
	ld a,(hl)
	ld (l9875),a
	inc hl
	ret
.l9667
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
.l9727
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l9732 equ $ + 1
	ld a,#00
.l9734 equ $ + 1
	cp #00
	jr z,l974c
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
	ld (l9734),a
	exx
.l974d equ $ + 1
.l974c
	ld a,#00
.l974f equ $ + 1
	cp #00
	jr z,l9767
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
	ld (l974f),a
	exx
.l9768 equ $ + 1
.l9767
	ld a,#00
.l976a equ $ + 1
	cp #00
	jr z,l9782
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
	ld (l976a),a
	exx
.l9783 equ $ + 1
.l9782
	ld a,#00
.l9785 equ $ + 1
	cp #00
	jr z,l979d
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
	ld (l9785),a
	exx
.l979e equ $ + 1
.l979d
	ld a,#00
.l97a0 equ $ + 1
	cp #00
	jr z,l97b8
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
	ld (l97a0),a
	exx
.l97b9 equ $ + 1
.l97b8
	ld a,#00
.l97bb equ $ + 1
	cp #00
	jr z,l97d3
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
	ld (l97bb),a
	exx
.l97d4 equ $ + 1
.l97d3
	ld a,#00
.l97d6 equ $ + 1
	cp #00
	jr z,l97ee
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
	ld (l97d6),a
	exx
.l97ef equ $ + 1
.l97ee
	ld a,#00
.l97f1 equ $ + 1
	cp #00
	jr z,l9809
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
	ld (l97f1),a
	exx
.l980a equ $ + 1
.l9809
	ld a,#00
.l980c equ $ + 1
	cp #00
	jr z,l9824
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
	ld (l980c),a
	exx
.l9825 equ $ + 1
.l9824
	ld a,#00
.l9827 equ $ + 1
	cp #00
	jr z,l983f
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
	ld (l9827),a
	exx
.l983f
	ld a,h
.l9841 equ $ + 1
	cp #c0
	jr z,l9859
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
	ld (l9841),a
	exx
.l985a equ $ + 1
.l9859
	ld a,#00
.l985c equ $ + 1
	cp #00
	jr z,l9874
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
	ld (l985c),a
	exx
.l9875 equ $ + 1
.l9874
	ld a,#00
.l9877 equ $ + 1
	cp #00
	jr z,l988f
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
	ld (l9877),a
	exx
.l9890 equ $ + 1
.l988f
	ld a,#00
.l9892 equ $ + 1
	cp #ff
	jr nz,l989c
	ld h,a
.l9897 equ $ + 1
	ld a,#00
	or a
	jr z,l98b0
	ld a,h
.l989c
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
	ld (l9892),a
.l98b0
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
	ret
;
.stop_music
.l98b9
;
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l9768),a
	ld (l97b9),a
	ld (l980a),a
	dec a
	ld (l976a),a
	ld (l97bb),a
	ld (l980c),a
	ld (l9841),a
	ld a,#3f
	jp l9727
;
.real_init_music
.l98de
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
	ld (l9376),hl
	ld (l93c7),hl
	ld (l9344),hl
	ld (l9395),hl
	ld (l93e6),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l934a),de
	ld (l939b),de
	ld (l93ec),de
	ld (l933c),de
	ld (l938d),de
	ld (l93de),de
	ld a,#37
	ld (l9081),a
	ld hl,l999d
.l998d
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l9994
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l9994
	jr l998d
.l999d
	jr l999f
.l999f
	dw l9732,l974d,l9783,l979e
	dw l97d4,l97ef,l9825,l9768
	dw l97b9,l980a,l985a,l9875
	dw l9890,l9094,l90ce,l9119
	dw l9127,l9164,l9333,l9384
	dw l93d5,l9194,l91ff,l926a
	dw #ff11,l9734,l974f,l9785
	dw l97a0,l97d6,l97f1,l9827
	dw l9841,l976a,l97bb,l980c
	dw l985c,l9877,l9892,l9335
	dw l9386,l93d7,#b703,l9346
	dw l9397,l93e8,#0000
;
; SK10 l7500 l7c00 l7f30
;
.init_music		; added by Megachur
;
	ld de,l7500
	or a
	jr z,init_music_call
	ld de,l7c00
	dec a
	jr z,init_music_call
	ld de,l7f30
.init_music_call
	jp real_init_music
;
.music_info
	db "Columns Cpc (2004)(CEZ Games Studio)(DOS)",0
	db "StArkos",0

	read "music_end.asm"
