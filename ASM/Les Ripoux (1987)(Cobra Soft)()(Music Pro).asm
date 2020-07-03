; Music of Les Ripoux (1987)(Cobra Soft)()(Music Pro)
; Ripped by Megachur the 19/10/2013
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "LESRIPOU.BIN"
	ENDIF

music_date_rip_day		equ 19
music_date_rip_month	equ 10
music_date_rip_year		equ 2013
music_adr				equ &4400
first_theme				equ 0
last_theme				equ 1	; 0 -> 1

	read "music_header.asm"

.l4406 equ $ + 6
.l4404 equ $ + 4
.l4402 equ $ + 2
.l4401 equ $ + 1
.l4400
	db #00,#02,#30,#00,#28,#01,#2a,#00
.l440c equ $ + 4
.l440a equ $ + 2
.l4408
	db #2c,#00,#2e,#00,#80,#01,#8a,#03
	db #80,#05,#86,#06,#a5,#06,#ae,#06
	db #b7,#06,#c0,#06,#e1,#06,#01,#07
	db #20,#07,#3e,#07,#58,#07,#6e,#07
	db #7a,#07,#00,#ff,#01,#ff,#02,#ff
	db #0f,#00,#0f,#00,#0f,#00,#0f,#00
	db #01,#0d,#81,#8d,#01,#00,#01,#00
	db #01,#0f,#81,#8f,#01,#00,#01,#00
	db #01,#0c,#01,#00,#01,#00,#01,#00
	db #01,#0c,#85,#bc,#01,#00,#01,#00
	db #01,#0f,#82,#9e,#01,#00,#01,#00
	db #01,#0f,#0f,#ff,#01,#00,#01,#00
	db #01,#0f,#82,#9e,#01,#00,#01,#00
	db #01,#0b,#01,#00,#01,#00,#01,#00
	db #01,#09,#01,#00,#01,#00,#01,#00
	db #01,#0d,#01,#00,#01,#00,#01,#00
	db #01,#07,#01,#00,#01,#00,#01,#00
	db #01,#0f,#01,#00,#01,#00,#01,#00
	db #0f,#01,#01,#fb,#08,#00,#0a,#ff
	db #01,#0f,#02,#00,#07,#fe,#01,#ff
	db #01,#0e,#01,#00,#01,#f2,#01,#00
	db #01,#0f,#03,#fb,#01,#00,#01,#00
	db #01,#0f,#02,#00,#82,#9e,#01,#00
	db #01,#0a,#01,#00,#01,#f6,#01,#00
	db #01,#0c,#01,#00,#01,#f4,#01,#00
	db #01,#0e,#01,#00,#01,#f2,#01,#00
	db #01,#0c,#04,#00,#0b,#ff,#01,#00
	db #01,#0e,#04,#00,#0b,#ff,#04,#00
	db #01,#0f,#04,#00,#0f,#ff,#01,#00
	db #01,#0c,#03,#00,#04,#fd,#01,#00
	db #01,#0e,#03,#00,#04,#fd,#01,#fe
	db #01,#0f,#03,#00,#08,#ff,#01,#00
	db #01,#0d,#03,#00,#08,#ff,#05,#00
	db #01,#0f,#09,#ff,#09,#01,#0f,#ff
	db #01,#0f,#02,#00,#0c,#ff,#0c,#01
	db #01,#0d,#0c,#ff,#0d,#01,#0e,#ff
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#01,#01,#ff
	db #01,#00,#82,#02,#82,#84,#82,#02
	db #06,#00,#01,#ff,#01,#00,#01,#01
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #08,#00,#01,#01,#01,#01,#01,#01
	db #01,#00,#01,#00,#01,#01,#01,#ff
	db #01,#00,#01,#7f,#03,#d8,#01,#d1
	db #06,#00,#01,#ff,#01,#00,#01,#01
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #01,#00,#01,#00,#01,#01,#01,#ff
	db #c2,#e1,#01,#82,#e0,#00,#38,#c1
	db #31,#c2,#31,#c1,#30,#c2,#30,#c1
	db #33,#c2,#33,#c1,#3a,#c2,#3a,#c1
	db #33,#c2,#33,#c1,#31,#c2,#31,#c1
	db #35,#c2,#35,#c1,#3d,#c2,#3d,#c1
	db #3a,#c2,#3a,#c1,#36,#c2,#36,#c1
	db #33,#c2,#33,#c1,#2c,#c2,#2c,#c1
	db #3a,#c2,#3a,#c1,#38,#c2,#38,#c1
	db #3a,#c2,#3a,#c1,#38,#c2,#e1,#01
	db #82,#e0,#00,#38,#c1,#31,#c2,#31
	db #c1,#30,#c2,#30,#c1,#33,#c2,#33
	db #c1,#3a,#c2,#3a,#c1,#33,#c2,#33
	db #c1,#31,#c2,#31,#c1,#35,#c2,#35
	db #c1,#3d,#c2,#3d,#c1,#3f,#c2,#3d
	db #c1,#3f,#c2,#41,#c1,#3d,#c2,#38
	db #c1,#35,#c2,#3a,#c1,#38,#c2,#35
	db #c1,#33,#c5,#85,#31,#c1,#e1,#01
	db #82,#e0,#00,#38,#c2,#e1,#01,#82
	db #e0,#00,#38,#c1,#31,#c2,#31,#c1
	db #30,#c2,#30,#c1,#33,#c2,#33,#c1
	db #3a,#c2,#3a,#c1,#33,#c2,#33,#c1
	db #31,#c2,#31,#c1,#35,#c2,#35,#c1
	db #3d,#c2,#3d,#c1,#3a,#c2,#3a,#c1
	db #36,#c2,#36,#c1,#33,#c2,#33,#c1
	db #2c,#c2,#2c,#c1,#3a,#c2,#3a,#c1
	db #38,#c2,#38,#c1,#3a,#c2,#3a,#c1
	db #38,#c2,#e1,#01,#82,#e0,#00,#38
	db #c1,#31,#c2,#31,#c1,#30,#c2,#30
	db #c1,#33,#c2,#33,#c1,#3a,#c2,#3a
	db #c1,#33,#c2,#33,#c1,#31,#c2,#31
	db #c1,#35,#c2,#35,#c1,#3d,#c2,#3d
	db #c1,#3f,#c2,#3d,#c1,#3f,#c2,#41
	db #c1,#3d,#c2,#38,#c1,#35,#c2,#3a
	db #c1,#38,#c2,#35,#c1,#33,#c5,#85
	db #31,#c2,#e1,#01,#82,#e0,#00,#31
	db #c3,#e1,#02,#84,#e0,#00,#36,#35
	db #33,#31,#2f,#33,#3b,#3a,#38,#33
	db #35,#31,#c3,#e1,#02,#84,#e0,#00
	db #36,#31,#33,#35,#c3,#e1,#02,#84
	db #e0,#00,#36,#35,#33,#31,#2f,#33
	db #3b,#3a,#38,#33,#35,#31,#c3,#e1
	db #02,#86,#e0,#00,#36,#37,#c2,#e1
	db #02,#82,#e0,#00,#37,#38,#83,#36
	db #80,#38,#82,#37,#38,#83,#36,#80
	db #38,#82,#35,#38,#83,#3d,#80,#38
	db #82,#35,#38,#83,#3d,#80,#3d,#82
	db #3c,#3f,#83,#36,#80,#36,#82,#35
	db #36,#83,#33,#80,#33,#82,#31,#38
	db #83,#3d,#80,#38,#82,#31,#38,#3d
	db #3d,#c1,#e1,#01,#82,#e0,#00,#2a
	db #2e,#83,#33,#80,#2e,#82,#2e,#33
	db #83,#2a,#80,#2e,#82,#29,#2c,#83
	db #31,#80,#2c,#82,#2c,#31,#83,#2e
	db #80,#2c,#82,#2c,#31,#83,#35,#80
	db #2c,#82,#2c,#30,#83,#33,#80,#2c
	db #c1,#e1,#02,#82,#e0,#00,#2c,#31
	db #83,#35,#80,#2c,#82,#36,#35,#33
	db #31,#c1,#e1,#01,#82,#e0,#00,#2a
	db #2e,#83,#33,#80,#2e,#82,#2e,#33
	db #83,#2a,#80,#2e,#82,#29,#2c,#83
	db #31,#80,#2c,#82,#2c,#31,#83,#2e
	db #80,#2c,#82,#2c,#31,#83,#35,#80
	db #2c,#82,#2c,#30,#83,#33,#80,#2c
	db #c3,#e1,#02,#84,#e0,#00,#38,#85
	db #36,#86,#35,#87,#33,#88,#31,#c4
	db #31,#ff,#c2,#e1,#01,#82,#e0,#00
	db #35,#c1,#38,#c2,#38,#c1,#36,#c2
	db #36,#c1,#3a,#c2,#3a,#c1,#2c,#c2
	db #2c,#c1,#36,#c2,#36,#c1,#35,#c2
	db #35,#c1,#38,#c2,#38,#c1,#3a,#c2
	db #3a,#c1,#36,#c2,#36,#c1,#33,#c2
	db #33,#c1,#30,#c2,#30,#c1,#33,#c2
	db #33,#c1,#36,#c2,#36,#c1,#35,#c2
	db #35,#c1,#36,#c2,#36,#c1,#35,#c2
	db #e1,#01,#82,#e0,#00,#35,#c1,#38
	db #c2,#38,#c1,#36,#c2,#36,#c1,#3a
	db #c2,#3a,#c1,#2c,#c2,#2c,#c1,#36
	db #c2,#36,#c1,#35,#c2,#35,#c1,#38
	db #c2,#38,#c1,#3a,#c2,#3a,#c1,#3c
	db #c2,#3a,#c1,#3c,#c2,#3d,#c1,#38
	db #c2,#35,#c1,#31,#c2,#36,#c1,#35
	db #c2,#31,#30,#c5,#85,#2c,#c1,#e1
	db #01,#82,#e0,#00,#35,#c2,#e1,#01
	db #82,#e0,#00,#35,#c1,#38,#c2,#38
	db #c1,#36,#c2,#36,#c1,#3a,#c2,#3a
	db #c1,#2c,#c2,#2c,#c1,#36,#c2,#36
	db #c1,#35,#c2,#35,#c1,#38,#c2,#38
	db #c1,#3a,#c2,#3a,#c1,#36,#c2,#36
	db #c1,#33,#c2,#33,#c1,#30,#c2,#30
	db #c1,#33,#c2,#33,#c1,#36,#c2,#36
	db #c1,#35,#c2,#35,#c1,#36,#c2,#36
	db #c1,#35,#c2,#e1,#01,#82,#e0,#00
	db #35,#c1,#38,#c2,#38,#c1,#36,#c2
	db #36,#c1,#3a,#c2,#3a,#c1,#2c,#c2
	db #2c,#c1,#36,#c2,#36,#c1,#35,#c2
	db #35,#c1,#38,#c2,#38,#c1,#3a,#c2
	db #3a,#c1,#3c,#c2,#3a,#c1,#3c,#c2
	db #3d,#c1,#38,#c2,#35,#c1,#31,#c2
	db #36,#c1,#35,#c2,#31,#30,#c5,#85
	db #2c,#c2,#e1,#01,#82,#e0,#00,#2e
	db #c1,#e1,#01,#82,#e0,#00,#2a,#1e
	db #29,#1d,#27,#1b,#25,#19,#23,#17
	db #27,#1b,#2f,#23,#2e,#22,#2c,#20
	db #27,#1b,#29,#1d,#25,#19,#c1,#e1
	db #02,#82,#e0,#00,#2a,#1e,#25,#19
	db #27,#1b,#29,#1d,#c1,#e1,#01,#82
	db #e0,#00,#2a,#1e,#29,#1d,#27,#1b
	db #25,#19,#23,#17,#27,#1b,#2f,#23
	db #2e,#22,#2c,#20,#27,#1b,#29,#1d
	db #25,#19,#c1,#e1,#02,#82,#e0,#00
	db #2a,#1e,#25,#19,#27,#1b,#2e,#22
	db #c1,#e1,#02,#82,#e0,#00,#2c,#20
	db #2a,#1e,#29,#1d,#27,#1b,#25,#19
	db #29,#1d,#2c,#20,#31,#25,#c2,#2c
	db #20,#30,#24,#24,#18,#20,#14,#25
	db #19,#29,#1d,#2c,#20,#31,#25,#c1
	db #e1,#01,#82,#e0,#00,#2e,#22,#33
	db #27,#36,#2a,#33,#27,#35,#29,#31
	db #25,#2e,#22,#36,#2a,#35,#29,#31
	db #25,#2c,#20,#33,#27,#c1,#e1,#02
	db #82,#e0,#00,#31,#25,#2f,#23,#2e
	db #22,#2c,#20,#c1,#e1,#01,#82,#e0
	db #00,#2e,#22,#33,#27,#36,#2a,#33
	db #27,#35,#29,#31,#25,#2e,#22,#36
	db #2a,#35,#29,#31,#25,#2c,#20,#33
	db #27,#c1,#e1,#02,#82,#e0,#00,#31
	db #25,#83,#2f,#23,#84,#2c,#20,#85
	db #2a,#1e,#c3,#88,#19,#c4,#19,#ff
	db #c0,#e1,#01,#8a,#e0,#00,#00,#00
	db #c0,#e1,#01,#8a,#e0,#00,#00,#00
	db #c0,#e1,#01,#8a,#e0,#00,#00,#00
	db #c0,#e1,#01,#8a,#e0,#00,#00,#00
	db #a0,#c1,#e1,#02,#82,#e0,#00,#2a
	db #2e,#83,#2c,#80,#2a,#82,#2a,#2e
	db #83,#2c,#80,#2a,#82,#2f,#33,#83
	db #31,#80,#2a,#82,#2f,#33,#83,#31
	db #80,#2a,#82,#2c,#2f,#83,#2e,#80
	db #2a,#82,#2c,#2f,#83,#2e,#80,#2a
	db #a0,#c1,#e1,#01,#82,#e0,#00,#2c
	db #33,#83,#31,#80,#2a,#82,#2c,#33
	db #83,#31,#80,#25,#a0,#c1,#e1,#02
	db #82,#e0,#00,#2a,#2e,#83,#2c,#80
	db #2a,#82,#2a,#2e,#83,#2c,#80,#2a
	db #82,#2f,#33,#83,#31,#80,#2a,#82
	db #2f,#33,#83,#31,#80,#2a,#82,#2c
	db #2f,#83,#2e,#80,#2a,#82,#2c,#2f
	db #83,#2e,#80,#2a,#a0,#c1,#e1,#02
	db #80,#e0,#00,#1e,#22,#25,#2a,#2e
	db #31,#36,#3a,#22,#27,#2b,#2e,#33
	db #37,#3a,#3f,#a0,#c3,#e1,#02,#84
	db #e0,#00,#3c,#3a,#38,#36,#35,#38
	db #3d,#41,#42,#3f,#3a,#3c,#41,#3d
	db #38,#3b,#a0,#c3,#e1,#02,#84,#e0
	db #00,#3a,#3f,#42,#3f,#41,#3d,#3a
	db #42,#41,#3d,#38,#3f,#a0,#c3,#e1
	db #02,#84,#e0,#00,#3d,#3b,#3a,#38
	db #a0,#c3,#e1,#02,#84,#e0,#00,#3a
	db #3f,#42,#3f,#41,#3d,#3a,#42,#41
	db #3d,#38,#3f,#a0,#c3,#e1,#02,#84
	db #e0,#00,#3d,#85,#3b,#86,#38,#87
	db #36,#88,#35,#c4,#35,#ff,#a0,#cb
	db #e1,#0a,#85,#e0,#00,#3f,#38,#c9
	db #3f,#38,#c8,#3f,#38,#ca,#3f,#38
	db #cd,#3f,#38,#ca,#3f,#38,#c8,#3f
	db #38,#c9,#3f,#38,#ff,#bc,#c7,#e1
	db #00,#85,#e0,#00,#00,#ff,#bc,#c6
	db #e1,#00,#82,#e0,#00,#00,#ff,#b5
	db #c6,#e1,#00,#82,#e0,#00,#00,#ff
	db #a0,#ca,#e1,#0a,#86,#e0,#00,#3d
	db #c0,#82,#00,#ca,#3d,#c0,#00,#ca
	db #3d,#c0,#00,#ca,#3d,#c0,#00,#ca
	db #3d,#c0,#00,#b9,#cf,#e1,#00,#00
	db #ff,#b9,#d1,#e1,#00,#82,#e0,#00
	db #00,#80,#00,#00,#81,#00,#80,#00
	db #00,#00,#82,#00,#80,#00,#00,#82
	db #00,#80,#00,#81,#00,#80,#00,#00
	db #ff,#b9,#d1,#e1,#00,#80,#e0,#00
	db #00,#00,#81,#00,#80,#00,#82,#00
	db #80,#00,#81,#00,#80,#00,#00,#00
	db #00,#82,#00,#80,#00,#81,#00,#ff
	db #b9,#d1,#e1,#00,#81,#e0,#00,#00
	db #00,#00,#00,#80,#00,#00,#00,#00
	db #00,#00,#82,#00,#00,#81,#00,#80
	db #00,#00,#00,#00,#00,#ff,#a0,#cf
	db #e1,#00,#80,#e0,#00,#38,#38,#38
	db #c0,#00,#cf,#38,#38,#38,#c0,#00
	db #cf,#38,#38,#82,#3d,#3f,#41,#ff
	db #a0,#cf,#e1,#00,#80,#e0,#00,#3d
	db #41,#44,#c0,#00,#00,#cf,#42,#41
	db #3f,#82,#3d,#41,#3d,#ff,#e3,#01
	db #5f,#ce,#e1,#00,#85,#e0,#00,#00
	db #00,#ff,#c0,#a0,#8a,#e1,#00,#00
	db #ff
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#2f
	db #33,#83,#31,#80,#2a,#82,#2c,#2f
	db #83,#2e,#80,#2a,#82,#2c,#2f,#83
	db #2e,#80,#2a,#a0,#c1,#e1,#02,#80
	db #e0,#00,#1e,#22,#25,#2a,#2e,#31
	db #36,#3a,#22,#27,#2b,#2e,#33,#37
	db #3a,#3f,#a0,#c3,#e1,#02,#84,#e0
	db #00,#3c,#3a,#38,#36,#35,#38,#3d
	db #41,#42,#3f,#3a,#3c,#41,#3d,#38
	db #3b,#a0,#c3,#e1,#02,#84,#e0,#00
	db #3a,#3f,#42,#3f,#41,#3d,#3a,#42
	db #41,#3d,#38,#3f,#a0,#c3,#e1,#02
	db #84,#e0,#00,#3d,#3b,#3a,#38,#a0
	db #c3,#e1,#02,#84,#e0,#00,#3a,#3f
	db #42,#3f,#41,#3d,#3a,#42,#41,#3d
	db #38,#3f,#a0,#c3,#e1,#02,#84,#e0
	db #00,#3d,#85,#3b,#86,#38,#87,#75
	db #76,#65,#6c,#6c,#65,#20,#6d,#69
	db #73,#65,#00,#52,#65,#74,#6f,#75
	db #72,#6e,#65,#72,#20,#61,#75,#20
	db #6a,#65,#75,#00,#7e,#4c,#8c,#4c
	db #00,#00,#20,#20,#20,#20,#78,#65
	db #6d,#65,#20,#63,#6f,#75,#72,#73
	db #65,#00,#20,#43,#4f,#55,#52,#53
	db #45,#20,#00,#a3,#4c,#00,#00,#4c
	db #45,#53,#20,#52,#49,#50,#4f,#55
	db #58,#20,#2b,#20,#50,#69,#67,#61
	db #6c,#6c,#65,#00,#4c,#45,#53,#20
	db #52,#49,#50,#4f,#55,#58,#00,#50
	db #41,#52,#49,#53,#2d,#54,#4f,#55
	db #52,#20,#28,#36,#31,#32,#38,#29
	db #00,#c0,#4c,#d5,#4c,#e0,#4c,#00
	db #00,#00,#af,#32,#3c,#52,#cd,#21
	db #4d,#c9,#3e,#ff,#32,#3c,#52,#cd
	db #21,#4d,#c9,#e6,#07,#47,#87,#80
	db #4f,#06,#00,#21,#73,#54,#09,#5e
	db #23,#46,#23,#4e,#cd,#e0,#51,#c9
	db #af,#32,#38,#52,#3a,#3c,#52,#b7
	db #20,#20,#2a,#06,#99,#eb,#21,#e6
	db #4d,#cd,#db,#4d,#2a,#08,#99,#eb
	db #21,#e6,#4d,#cd,#db,#4d,#2a,#0a
	db #99,#eb,#21,#e6,#4d,#cd,#db,#4d
	db #18,#1e,#2a,#06,#99,#eb,#21,#e8
	db #4d,#cd,#db,#4d,#2a,#08,#99,#eb
	db #21,#ea,#4d,#cd,#db,#4d,#2a,#0a
	db #99,#eb,#21,#ec,#4d,#cd,#db,#4d
	db #21,#43,#52,#36,#00,#11,#44,#52
	db #01,#28,#01,#ed,#b0,#3a,#01,#99
	db #32,#6c,#53,#01,#00,#99,#2a,#02
	db #99,#09,#22,#6f,#53,#2a,#04,#99
	db #09,#22,#71,#53,#2a,#06,#99,#09
	db #22,#48,#52,#2a,#08,#99,#09,#22
	db #83,#52,#2a,#0a,#99,#09,#22,#be
	db #52,#21,#0c,#99,#22,#6d,#53,#3e
	db #0f,#32,#74,#53,#21,#3d,#52,#11
	db #43,#52,#01,#05,#00,#ed,#b0,#21
	db #3d,#52,#11,#7e,#52,#01,#05,#00
	db #ed,#b0,#21,#3d,#52,#11,#b9,#52
	db #01,#05,#00,#ed,#b0,#0e,#38,#3e
	db #07,#cd,#51,#54,#3e,#ff,#32,#38
	db #52,#c9,#eb,#01,#00,#99,#09,#eb
	db #ed,#a0,#ed,#a0,#c9,#0e,#ff,#00
	db #ff,#01,#ff,#02,#ff,#3a,#38,#52
	db #b7,#c8,#af,#32,#38,#52,#3e,#08
	db #32,#76,#53,#2f,#32,#77,#53,#3a
	db #74,#53,#5f,#06,#03,#21,#d8,#52
	db #7e,#4f,#79,#bb,#38,#01,#7b,#4f
	db #78,#c6,#07,#d5,#cd,#51,#54,#11
	db #3b,#00,#a7,#ed,#52,#d1,#10,#e8
	db #21,#6c,#53,#35,#dd,#21,#43,#52
	db #af,#32,#73,#53,#dd,#7e,#07,#b7
	db #c2,#89,#50,#dd,#36,#00,#00,#dd
	db #7e,#08,#dd,#77,#07,#dd,#6e,#03
	db #dd,#66,#04,#7e,#fe,#ff,#20,#63
	db #dd,#6e,#01,#dd,#66,#02,#7e,#fe
	db #ff,#20,#39,#dd,#6e,#05,#dd,#66
	db #06,#dd,#75,#01,#dd,#74,#02,#3a
	db #3c,#52,#b7,#20,#e9,#e5,#c5,#d5
	db #3a,#73,#53,#4f,#06,#00,#21,#39
	db #52,#09,#e5,#5e,#87,#4f,#21,#06
	db #99,#09,#4e,#23,#46,#21,#00,#99
	db #09,#73,#e1,#3e,#0e,#77,#d1,#c1
	db #e1,#c3,#4f,#4e,#23,#dd,#75,#01
	db #dd,#74,#02,#87,#2a,#6d,#53,#4f
	db #06,#00,#09,#4e,#23,#46,#21,#00
	db #99,#09,#dd,#75,#03,#dd,#74,#04
	db #c3,#3e,#4e,#cb,#7f,#20,#66,#21
	db #7e,#53,#b7,#28,#03,#dd,#86,#20
	db #87,#4f,#06,#00,#09,#5e,#dd,#73
	db #36,#dd,#73,#38,#23,#5e,#dd,#73
	db #37,#dd,#73,#39,#dd,#36,#0a,#00
	db #dd,#36,#21,#00,#dd,#36,#1f,#00
	db #dd,#e5,#e1,#01,#0b,#00,#09,#eb
	db #3a,#73,#53,#3c,#21,#e0,#52,#01
	db #14,#00,#09,#3d,#20,#fc,#ed,#b0
	db #dd,#e5,#e1,#01,#22,#00,#09,#eb
	db #3a,#73,#53,#3c,#21,#1c,#53,#01
	db #14,#00,#09,#3d,#20,#fc,#ed,#b0
	db #dd,#7e,#3a,#dd,#77,#09,#dd,#36
	db #00,#ff,#c3,#75,#50,#cb,#77,#20
	db #47,#cb,#6f,#ca,#4e,#4f,#e6,#1f
	db #47,#28,#12,#3a,#75,#53,#e5,#21
	db #77,#53,#a6,#e1,#4f,#3e,#07,#cd
	db #51,#54,#c3,#45,#4f,#3a,#75,#53
	db #e5,#21,#76,#53,#b6,#e1,#4f,#3e
	db #07,#cd,#51,#54,#48,#3e,#06,#cd
	db #51,#54,#c3,#75,#50,#e6,#1f,#21
	db #3e,#54,#4f,#06,#00,#09,#7e,#dd
	db #77,#07,#dd,#77,#08,#c3,#75,#50
	db #cb,#6f,#20,#69,#e6,#1f,#87,#87
	db #87,#2a,#6f,#53,#4f,#06,#00,#09
	db #eb,#dd,#e5,#e1,#01,#0b,#00,#09
	db #dd,#70,#0a,#1a,#cb,#7f,#20,#0d
	db #36,#00,#23,#77,#23,#23,#23,#13
	db #1a,#77,#c3,#a6,#4f,#36,#ff,#e6
	db #7f,#23,#77,#23,#77,#13,#1a,#06
	db #ff,#cb,#7f,#20,#02,#06,#01,#e6
	db #7f,#23,#77,#23,#70,#13,#23,#dd
	db #34,#0a,#3e,#04,#dd,#be,#0a,#20
	db #ca,#dd,#36,#0a,#00,#01,#14,#00
	db #b7,#ed,#42,#eb,#21,#e0,#52,#3a
	db #73,#53,#3c,#09,#3d,#20,#fc,#eb
	db #ed,#b0,#c3,#75,#50,#23,#dd,#75
	db #03,#dd,#74,#04,#e5,#21,#e5,#4f
	db #e6,#1f,#87,#4f,#06,#00,#09,#7e
	db #23,#66,#6f,#e9,#eb,#4f,#f7,#4f
	db #f3,#4f,#e1,#7e,#dd,#77,#20,#c3
	db #75,#50,#3e,#02,#18,#02,#3e,#01
	db #dd,#77,#09,#e1,#7e,#b7,#28
	jp l5077
	jp l51c9
	jp l503e
	jp l504c
	jp l5010
.l500f
	db #00
.l5010
	call #b900
	push af
	ld a,(#c002)
	ld (l500f),a
	pop af
	call #b90c
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(l500f)
	ld (hl),a
	xor a
	inc hl
	ld (hl),a
	ret
.l502c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l503e	; init music
	call l523b
	ld hl,l502c
	ld b,#83
	ld de,l5058
	jp #bcd7
.l504c	; stop music
	call l5233
	ld hl,l502c
	call #bcdd
	jp #bca7
;
.play_music_interrupt
.l5058
;
	di
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	call l5326
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ei
	reti
.l5075 equ $ + 6
.l5073 equ $ + 4
.l5071 equ $ + 2
.l506f
	db #00,#00,#c7,#00,#ff,#ff,#50,#00
.l5077
	di
	exx
	push af
	push bc
	push de
	push hl
	ld d,#00
	exx
	call l508b
	exx
	pop hl
	pop de
	pop bc
	pop af
	exx
	ei
	ret
.l508b
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l5071),hl
	exx
	ld c,(ix+#00)
	exx
	ld l,(ix+#02)
	ld h,(ix+#03)
	ld (l506f),hl
	exx
	ld b,(ix+#02)
	exx
	ld l,(ix+#04)
	ld h,(ix+#05)
	ld a,(ix+#06)
	ld (l5164),a
	ld (l5126),a
	push hl
	pop ix
	ld c,(ix+#0c)
	ld de,#0010
	add hl,de
	ld h,#00
	ld l,(ix+#06)
	ld de,(l506f)
	add hl,de
	ld (l5075),hl
	ld h,#00
	ld l,(ix+#08)
	ld de,(l5071)
	ex de,hl
	and a
	sbc hl,de
	ld (l5073),hl
	ld a,#05
	cp (ix+#00)
	jr nz,l50f2
	ld hl,l515b
	ld (l5117),hl
	ld hl,l5164
	ld (l5153),hl
	jr l5105
.l50f2
	ld a,#04
	cp (ix+#00)
	jr nz,l5105
	ld hl,l511d
	ld (l5117),hl
	ld hl,l5126
	ld (l5153),hl
.l5105
	push ix
	pop hl
	ld de,#0010
	add hl,de
	exx
	call l519d
	exx
.l5111
	ld a,(hl)
	cp c
	jp z,l5141
.l5117 equ $ + 1
	call l515b
	inc hl
	jp l5111
.l511d
	exx
	push hl
	ld e,a
	ld hl,l59c3
	add hl,de
	ld a,(hl)
	pop hl
.l5126
	nop
	ld (hl),a
	inc hl
	inc b
	ld a,(l5075)
	cp b
	exx
	ret nz
	exx
	ld a,(l506f)
	ld b,a
	dec c
	call l519d
	ld a,(l5073)
	cp c
	exx
	ret nz
	pop hl
	ret
.l5141
	inc hl
	ld b,(hl)
	inc hl
	ld a,(hl)
	exx
	push hl
	ld e,a
	ld hl,l59c3
	add hl,de
	ld a,(hl)
	pop hl
	exx
	ld e,a
.l5150
	ld a,e
	exx
.l5153 equ $ + 1
	call l5164
	djnz l5150
	inc hl
	jp l5111
.l515b
	exx
	push hl
	ld e,a
	ld hl,l59c3
	add hl,de
	ld a,(hl)
	pop hl
.l5164
	nop
	ld (hl),a
	ld a,h
	add #08
	ld h,a
	and #38
	jp nz,l5185
	ld a,h
	sub #40
	ld h,a
	ld a,l
	add #50
	ld l,a
	jp nc,l5185
	inc h
	ld a,h
	and #07
	jp nz,l5185
	ld a,h
	sub #08
	ld h,a
.l5185
	dec c
	ld a,(l5073)
	cp c
	exx
	ret nz
	exx
	ld a,(l5071)
	ld c,a
	inc b
	call l519d
	ld a,(l5075)
	cp b
	exx
	ret nz
	pop hl
	ret
.l519d
	push af
	push bc
	ld hl,#00c7
	ld e,c
	ld d,#00
	or a
	sbc hl,de
	ld a,l
	and #07
	add a
	add a
	add a
	ld c,a
	ld a,l
	and #f8
	ld l,a
	ld e,l
	ld d,h
	add hl,hl
	add hl,hl
	add hl,de
	add hl,hl
	ld e,b
	ld d,#00
	add hl,de
	ld a,h
	and #07
	add #c0
	add c
	ld h,a
	pop bc
	pop af
	ret
.l51c7
	nop
	nop
.l51c9
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l5071),hl
	ld (l51c7),hl
	ld l,(ix+#02)
	ld h,(ix+#03)
	ld (l506f),hl
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	pop ix
	ld b,#00
	ld c,(ix+#06)
	ld (l5075),bc
	ld h,#00
	ld l,(ix+#08)
	ld de,(l5071)
	ex de,hl
	and a
	sbc hl,de
	ld (l5073),hl
	push ix
	pop hl
	ld de,#0010
	add hl,de
	ld a,(l5073)
	ld iy,l51c7
.l520e
	push hl
	ld hl,l5ac3
	ld de,(l51c7)
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld h,(hl)
	ld l,e
	ld de,(l506f)
	add hl,de
	ex de,hl
	pop hl
	ld bc,(l5075)
	ldir
	dec (iy+#00)
	cp (iy+#00)
	jp nz,l520e
	ret
;
.stop_music
.l5233
;
	xor a
	ld (l5774),a
	call l5259
	ret
;
.init_music
.l523b
;
	ld a,#ff
	ld (l5774),a
	call l5259
	ret
	and #07
	ld b,a
	add a
	add b
	ld c,a
	ld b,#00
	ld hl,l59ab
	add hl,bc
	ld e,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld c,(hl)
	call l5718
	ret
.l5259
	xor a
	ld (l5770),a
	ld a,(l5774)
	or a
	jr nz,l5283
	ld hl,(l4406)
	ex de,hl
	ld hl,l531e
	call l5313
	ld hl,(l4408)
	ex de,hl
	ld hl,l531e
	call l5313
	ld hl,(l440a)
	ex de,hl
	ld hl,l531e
	call l5313
	jr l52a1
.l5283
	ld hl,(l4406)
	ex de,hl
	ld hl,l5320
	call l5313
	ld hl,(l4408)
	ex de,hl
	ld hl,l5322
	call l5313
	ld hl,(l440a)
	ex de,hl
	ld hl,l5324
	call l5313
.l52a1
	ld hl,l577b
	ld (hl),#00
	ld de,l577c
	ld bc,#0128
	ldir
	ld a,(l4401)
	ld (l58a4),a
	ld bc,l4400
	ld hl,(l4402)
	add hl,bc
	ld (l58a7),hl
	ld hl,(l4404)
	add hl,bc
	ld (l58a9),hl
	ld hl,(l4406)
	add hl,bc
	ld (l5780),hl
	ld hl,(l4408)
	add hl,bc
	ld (l57bb),hl
	ld hl,(l440a)
	add hl,bc
	ld (l57f6),hl
	ld hl,l440c
	ld (l58a5),hl
	ld a,#0f
	ld (l58ac),a
	ld hl,l5775
	ld de,l577b
	ld bc,#0005
	ldir
	ld hl,l5775
	ld de,l57b6
	ld bc,#0005
	ldir
	ld hl,l5775
	ld de,l57f1
	ld bc,#0005
	ldir
	ld c,#38
	ld a,#07
	call l5989
	ld a,#ff
	ld (l5770),a
	ret
.l5313
	ex de,hl
	ld bc,l4400
	add hl,bc
	ex de,hl
	ldi
	ldi
	ret
.l531e
	ld c,#ff
.l5320
	nop
	rst #38
.l5324 equ $ + 2
.l5322
	ld bc,#02ff
	rst #38
;
.play_music
.l5326
;
	ld a,(l5770)
	or a
	ret z
	xor a
	ld (l5770),a
	ld a,#08
	ld (l58ae),a
	cpl
	ld (l58af),a
	ld a,(l58ac)
	ld e,a
	ld b,#03
	ld hl,l5810
.l5341
	ld a,(hl)
	ld c,a
	ld a,c
	cp e
	jr c,l5348
	ld a,e
.l5348
	ld c,a
	ld a,b
	add #07
	push de
	call l5989
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l5341
	ld hl,l58a4
	dec (hl)
	ld ix,l577b
	xor a
.l5362
	ld (l58ab),a
	ld a,(ix+#07)
	or a
	jp nz,l55c1
.l536c
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l5376
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jr nz,l53e4
	ld l,(ix+#01)
	ld h,(ix+#02)
.l5387
	ld a,(hl)
	cp #ff
	jr nz,l53c5
	ld l,(ix+#05)	; music reset
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l5774)
	or a
	jr nz,l5387
	push hl
	push bc
	push de
	ld a,(l58ab)
	ld c,a
	ld b,#00
	ld hl,l5771
	add hl,bc
	push hl
	ld e,(hl)
	add a
	ld c,a
	ld hl,l4406
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l4400
	add hl,bc
	ld (hl),e
	pop hl
	ld a,#0e
	ld (hl),a
	pop de
	pop bc
	pop hl
	jp l5387
.l53c5
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l58a5)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l4400
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l5376
.l53e4
	bit 7,a
	jr nz,l544e
	ld hl,l58b6
	or a
	jr z,l53f1
	add (ix+#20)
.l53f1
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld e,(hl)
	ld (ix+#36),e
	ld (ix+#38),e
	inc hl
	ld e,(hl)
	ld (ix+#37),e
	ld (ix+#39),e
	ld (ix+#0a),#00
	ld (ix+#21),#00
	ld (ix+#1f),#00
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ex de,hl
	ld a,(l58ab)
	inc a
	ld hl,l5818
	ld bc,#0014
.l5423
	add hl,bc
	dec a
	jr nz,l5423
	ldir
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l58ab)
	inc a
	ld hl,l5854
	ld bc,#0014
.l543b
	add hl,bc
	dec a
	jr nz,l543b
	ldir
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l55ad
.l544e
	bit 6,a
	jr nz,l5499
	bit 5,a
	jp z,l5486
	and #1f
	ld b,a
	jr z,l546e
	ld a,(l58ad)
	push hl
	ld hl,l58af
	and (hl)
	pop hl
	ld c,a
	ld a,#07
	call l5989
	jp l547d
.l546e
	ld a,(l58ad)
	push hl
	ld hl,l58ae
	or (hl)
	pop hl
	ld c,a
	ld a,#07
	call l5989
.l547d
	ld c,b
	ld a,#06
	call l5989
	jp l55ad
.l5486
	and #1f
	ld hl,l5976
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l55ad
.l5499
	bit 5,a
	jr nz,l5506
	and #1f
	add a
	add a
	add a
	ld hl,(l58a7)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l54b4
	ld a,(de)
	bit 7,a
	jr nz,l54c6
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l54de
.l54c6
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#ff
	bit 7,a
	jr nz,l54d8
	ld b,#01
.l54d8
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l54de
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jr nz,l54b4
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l5818
	ld a,(l58ab)
	inc a
.l54fc
	add hl,bc
	dec a
	jr nz,l54fc
	ex de,hl
	ldir
	jp l55ad
.l5506
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l551d
	and #1f
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l551d
	inc hl
	ld d,l
	cpl
	ld d,l
	dec hl
	ld d,l
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l55ad
	ld a,#02
	jr l5531
	ld a,#01
.l5531
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jr z,l55a2
	add a
	add a
	add a
	ld hl,(l58a9)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l554f
	ld a,(de)
	bit 7,a
	jr nz,l5563
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	neg
	ld (hl),a
	jp l557b
.l5563
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#01
	bit 7,a
	jr nz,l5575
	ld b,#ff
.l5575
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l557b
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jr nz,l554f
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l5854
	ld a,(l58ab)
	inc a
.l5599
	add hl,bc
	dec a
	jr nz,l5599
	ex de,hl
	ldir
	jr l55a7
.l55a2
	ld a,#00
	ld (ix+#09),a
.l55a7
	ld a,(ix+#09)
	ld (ix+#3a),a
.l55ad
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l536c
.l55c1
	ld a,(l58a4)
	or a
	jr nz,l55ca
	dec (ix+#07)
.l55ca
	ld a,(ix+#0a)
	cp #04
	jp z,l5614
	push ix
	pop hl
	ld b,a
	add a
	add a
	add b
	add #0b
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	or a
	jr nz,l55f7
	dec (hl)
	jr nz,l55ea
	inc (ix+#0a)
.l55ea
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l5614
.l55f7
	dec (hl)
	jr nz,l560c
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	dec hl
	jp l560e
.l560c
	inc hl
	inc hl
.l560e
	dec (hl)
	jr nz,l5614
	inc (ix+#0a)
.l5614
	ld a,(ix+#09)
	or a
	jp z,l56b1
	push ix
	pop hl
	ld a,(ix+#21)
	ld b,a
	add a
	add a
	add b
	add #22
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	or a
	jr nz,l5652
	dec (hl)
	jr nz,l5636
	inc (ix+#21)
.l5636
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jr nz,l5642
	ld b,#00
.l5642
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l5680
.l5652
	dec (hl)
	jr nz,l5678
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	push hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jr nz,l5666
	ld b,#00
.l5666
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l567a
.l5678
	inc hl
	inc hl
.l567a
	dec (hl)
	jr nz,l5680
	inc (ix+#21)
.l5680
	ld a,(ix+#21)
	cp #04
	jr nz,l56b1
	ld a,(ix+#09)
	cp #02
	jr nz,l5695
	ld a,#00
	ld (ix+#09),a
	jr l56b1
.l5695
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l58ab)
	inc a
	ld hl,l5854
	ld bc,#0014
.l56ab
	add hl,bc
	dec a
	jr nz,l56ab
	ldir
.l56b1
	ld c,(ix+#36)
	ld a,(l58ab)
	add a
	call l5989
	ld c,(ix+#37)
	inc a
	call l5989
	ld bc,#003b
	add ix,bc
	ld a,(l58ae)
	rlc a
	ld (l58ae),a
	cpl
	ld (l58af),a
	ld a,(l58ab)
	inc a
	cp #03
	jp nz,l5362
	ld a,(l58a4)
	or a
	jr nz,l56e8
	ld a,(l4401)
	ld (l58a4),a
.l56e8
	ld a,#ff
	ld (l5770),a
	ret
	push hl
	push de
	push bc
	push af
	xor a
	ld (l5770),a
	ld a,b
	ld (l5771),a
	ld hl,l5775
	ld de,l577b
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l5782),a
	ld a,#ff
	ld (l5770),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.l5718
	push hl
	push de
	push bc
	push af
	xor a
	ld (l5770),a
	ld a,e
	ld (l5771),a
	ld a,b
	ld (l5772),a
	ld a,c
	ld (l5773),a
	ld hl,l5775
	ld de,l577b
	ldi
	ldi
	ldi
	ldi
	ldi
	ld hl,l5775
	ld de,l57b6
	ldi
	ldi
	ldi
	ldi
	ldi
	ld hl,l5775
	ld de,l57f1
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l5782),a
	ld (l57bd),a
	ld (l57f8),a
	ld a,#ff
	ld (l5770),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.l5775 equ $ + 5
.l5774 equ $ + 4
.l5773 equ $ + 3
.l5772 equ $ + 2
.l5771 equ $ + 1
.l5770
	db #ff,#0e,#0e,#0e,#ff,#00
	dw l577a,l577a
.l5780 equ $ + 6
.l577c equ $ + 2
.l577b equ $ + 1
.l577a
	db #ff,#00,#00,#00,#00,#00,#00,#00
.l5782
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57b6 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57bd equ $ + 3
.l57bb equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57f1 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57f8 equ $ + 6
.l57f6 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5810 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5818 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5854 equ $ + 2
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
.l58a9 equ $ + 7
.l58a7 equ $ + 5
.l58a5 equ $ + 3
.l58a4 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l58af equ $ + 5
.l58ae equ $ + 4
.l58ad equ $ + 3
.l58ac equ $ + 2
.l58ab equ $ + 1
	db #00,#00,#00,#38,#00,#00,#00,#00
.l58b6 equ $ + 4
	db #00,#00,#00,#00,#00,#00
	dw #0c9c,#0be7,#0b3c,#0a9b
	dw #0a02,#0973,#08eb,#086b
	dw #07f2,#0780,#0714,#06ae
	dw #064e,#05f4,#059e,#054d
	dw #0501,#0469,#0475,#0435
	dw #03f9,#03c0,#038a,#0357
	dw #0327,#02fa,#02cf,#02a7
	dw #0281,#025d,#023b,#021b
	dw #01fc,#01e0,#01c5,#01ac
	dw #0194,#017d,#0168,#0153
	dw #0140,#012e,#011d,#010d
	dw #00fe,#00f0,#00e2,#00d6
	dw #00ca,#00be,#00b4,#00aa
	dw #00a0,#0097,#008f,#0087
	dw #007f,#0078,#0071,#006b
	dw #0065,#005f,#005a,#0055
	dw #0050,#004c,#0047,#0043
	dw #0040,#003c,#0039,#0035
	dw #0032,#0030,#002d,#002a
	dw #0028,#0026,#0024,#0022
	dw #0020,#001e,#001c,#001b
	dw #0019,#0018,#0016,#0015
	dw #0014,#0013,#0012,#0011
	dw #0010,#000f,#000e
.l5976
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60,#00,#00,#00,#00
	db #00,#c9,#00
.l5989
	push af
	push bc
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
	pop bc
	pop af
	ret
.l59ab
	db #0e,#0e,#03,#0e,#04,#04,#0e,#0e
	db #05,#0e,#0e,#06,#0e,#0e,#07,#09
	db #0a,#08,#0b,#0e,#0e,#0c,#0e,#0e
.l59c3
	db #00,#10,#01,#11,#20,#30,#21,#31
	db #02,#12,#03,#13,#22,#32,#23,#33
	db #40,#50,#41,#51,#60,#70,#61,#71
	db #42,#52,#43,#53,#62,#72,#63,#73
	db #04,#14,#05,#15,#24,#34,#25,#35
	db #06,#16,#07,#17,#26,#36,#27,#37
	db #44,#54,#45,#55,#64,#74,#65,#75
	db #46,#56,#47,#57,#66,#76,#67,#77
	db #80,#90,#81,#91,#a0,#b0,#a1,#b1
	db #82,#92,#83,#93,#a2,#b2,#a3,#b3
	db #c0,#d0,#c1,#d1,#e0,#f0,#e1,#f1
	db #c2,#d2,#c3,#d3,#e2,#f2,#e3,#f3
	db #84,#94,#85,#95,#a4,#b4,#a5,#b5
	db #86,#96,#87,#97,#a6,#b6,#a7,#b7
	db #c4,#d4,#c5,#d5,#e4,#f4,#e5,#f5
	db #c6,#d6,#c7,#d7,#e6,#f6,#e7,#f7
	db #08,#18,#09,#19,#28,#38,#29,#39
	db #0a,#1a,#0b,#1b,#2a,#3a,#2b,#3b
	db #48,#58,#49,#59,#68,#78,#69,#79
	db #4a,#5a,#4b,#5b,#6a,#7a,#6b,#7b
	db #0c,#1c,#0d,#1d,#2c,#3c,#2d,#3d
	db #0e,#1e,#0f,#1f,#2e,#3e,#2f,#3f
	db #4c,#5c,#4d,#5d,#6c,#7c,#6d,#7d
	db #4e,#5e,#4f,#5f,#6e,#7e,#6f,#7f
	db #88,#98,#89,#99,#a8,#b8,#a9,#b9
	db #8a,#9a,#8b,#9b,#aa,#ba,#ab,#bb
	db #c8,#d8,#c9,#d9,#e8,#f8,#e9,#f9
	db #ca,#da,#cb,#db,#ea,#fa,#eb,#fb
	db #8c,#9c,#8d,#9d,#ac,#bc,#ad,#bd
	db #8e,#9e,#8f,#9f,#ae,#be,#af,#bf
	db #cc,#dc,#cd,#dd,#ec,#fc,#ed,#fd
	db #ce,#de,#cf,#df,#ee,#fe,#ef,#ff
.l5ac3
	db #80,#ff,#80,#f7,#80,#ef,#80,#e7
	db #80,#df,#80,#d7,#80,#cf,#80,#c7
	db #30,#ff,#30,#f7,#30,#ef,#30,#e7
	db #30,#df,#30,#d7,#30,#cf,#30,#c7
	db #e0,#fe,#e0,#f6,#e0,#ee,#e0,#e6
	db #e0,#de,#e0,#d6,#e0,#ce,#e0,#c6
	db #90,#fe,#90,#f6,#90,#ee,#90,#e6
	db #90,#de,#90,#d6,#90,#ce,#90,#c6
	db #40,#fe,#40,#f6,#40,#ee,#40,#e6
	db #40,#de,#40,#d6,#40,#ce,#40,#c6
	db #f0,#fd,#f0,#f5,#f0,#ed,#f0,#e5
	db #f0,#dd,#f0,#d5,#f0,#cd,#f0,#c5
	db #a0,#fd,#a0,#f5,#a0,#ed,#a0,#e5
	db #a0,#dd,#a0,#d5,#a0,#cd,#a0,#c5
	db #50,#fd,#50,#f5,#50,#ed,#50,#e5
	db #50,#dd,#50,#d5,#50,#cd,#50,#c5
	db #00,#fd,#00,#f5,#00,#ed,#00,#e5
	db #00,#dd,#00,#d5,#00,#cd,#00,#c5
	db #b0,#fc,#b0,#f4,#b0,#ec,#b0,#e4
	db #b0,#dc,#b0,#d4,#b0,#cc,#b0,#c4
	db #60,#fc,#60,#f4,#60,#ec,#60,#e4
	db #60,#dc,#60,#d4,#60,#cc,#60,#c4
	db #10,#fc,#10,#f4,#10,#ec,#10,#e4
	db #10,#dc,#10,#d4,#10,#cc,#10,#c4
	db #c0,#fb,#c0,#f3,#c0,#eb,#c0,#e3
	db #c0,#db,#c0,#d3,#c0,#cb,#c0,#c3
	db #70,#fb,#70,#f3,#70,#eb,#70,#e3
	db #70,#db,#70,#d3,#70,#cb,#70,#c3
	db #20,#fb,#20,#f3,#20,#eb,#20,#e3
	db #20,#db,#20,#d3,#20,#cb,#20,#c3
	db #d0,#fa,#d0,#f2,#d0,#ea,#d0,#e2
	db #d0,#da,#d0,#d2,#d0,#ca,#d0,#c2
	db #80,#fa,#80,#f2,#80,#ea,#80,#e2
	db #80,#da,#80,#d2,#80,#ca,#80,#c2
	db #30,#fa,#30,#f2,#30,#ea,#30,#e2
	db #30,#da,#30,#d2,#30,#ca,#30,#c2
	db #e0,#f9,#e0,#f1,#e0,#e9,#e0,#e1
	db #e0,#d9,#e0,#d1,#e0,#c9,#e0,#c1
	db #90,#f9,#90,#f1,#90,#e9,#90,#e1
	db #90,#d9,#90,#d1,#90,#c9,#90,#c1
	db #40,#f9,#40,#f1,#40,#e9,#40,#e1
	db #40,#d9,#40,#d1,#40,#c9,#40,#c1
	db #f0,#f8,#f0,#f0,#f0,#e8,#f0,#e0
	db #f0,#d8,#f0,#d0,#f0,#c8,#f0,#c0
	db #a0,#f8,#a0,#f0,#a0,#e8,#a0,#e0
	db #a0,#d8,#a0,#d0,#a0,#c8,#a0,#c0
	db #50,#f8,#50,#f0,#50,#e8,#50,#e0
	db #50,#d8,#50,#d0,#50,#c8,#50,#c0
	db #00,#f8,#00,#f0,#00,#e8,#00,#e0
	db #00,#d8,#00,#d0,#00,#c8,#00,#c0
	db #00,#00
;
.music_info
	db "Les Ripoux (1987)(Cobra Soft)()",0
	db "Music Pro",0

	read "music_end.asm"
