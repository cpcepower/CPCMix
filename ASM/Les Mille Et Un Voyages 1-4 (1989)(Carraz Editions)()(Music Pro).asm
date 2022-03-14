; Music of Les Mille Et Un Voyages 1-4 (1989)(Carraz Editions)()(Music Pro)
; Ripped by Megachur the 08/11/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LESMEUV1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #2ab4

	read "music_header.asm"

.l2aba equ $ + 6
.l2ab8 equ $ + 4
.l2ab6 equ $ + 2
.l2ab5 equ $ + 1
.l2ab4
	db #00,#06,#cb,#01,#cb,#02,#26,#00
.l2ac0 equ $ + 4
.l2abe equ $ + 2
.l2abc
	db #34,#00,#42,#00,#50,#00,#6d,#00
	db #8a,#00,#a5,#00,#bf,#00,#db,#00
	db #f1,#00,#07,#01,#1f,#01,#37,#01
	db #87,#01,#9f,#01,#b3,#01,#00,#01
	db #02,#03,#04,#04,#05,#06,#07,#00
	db #00,#00,#08,#ff,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #0a,#ff,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0c,#ff
	db #e0,#00,#a0,#c7,#e1,#09,#85,#3e
	db #c0,#83,#32,#c7,#85,#41,#c0,#83
	db #35,#c7,#85,#3a,#c0,#83,#3a,#85
	db #3a,#c7,#83,#3c,#ff,#e0,#00,#a0
	db #c7,#e1,#09,#85,#3e,#c0,#83,#32
	db #c7,#85,#41,#c0,#83,#35,#c7,#85
	db #46,#c0,#83,#3a,#85,#3a,#c7,#83
	db #43,#ff,#e0,#00,#a0,#c7,#e1,#09
	db #85,#41,#c0,#83,#32,#c7,#85,#3e
	db #83,#3c,#85,#3a,#c0,#83,#3a,#85
	db #3a,#c7,#83,#43,#ff,#e0,#00,#a0
	db #c7,#e1,#09,#85,#41,#c0,#83,#32
	db #c7,#85,#3e,#83,#3c,#85,#3a,#c0
	db #83,#3a,#85,#3a,#83,#43,#ff,#e0
	db #00,#a0,#c7,#e1,#09,#85,#41,#c0
	db #83,#32,#c7,#85,#45,#c0,#83,#46
	db #c7,#85,#46,#c0,#83,#3a,#85,#3a
	db #83,#43,#ff,#e0,#00,#a0,#c7,#e1
	db #09,#85,#41,#43,#83,#41,#3f,#85
	db #3e,#c0,#83,#3e,#85,#3e,#83,#3e
	db #ff,#e0,#00,#a0,#c7,#e1,#09,#85
	db #41,#43,#83,#41,#3f,#85,#3e,#c0
	db #83,#3e,#85,#3e,#83,#3e,#ff,#e0
	db #00,#a0,#c7,#e1,#09,#85,#3a,#c0
	db #83,#43,#85,#41,#83,#3f,#85,#3e
	db #83,#3e,#85,#3e,#83,#3e,#ff,#e0
	db #00,#a0,#c7,#e1,#09,#85,#3e,#c0
	db #83,#43,#85,#41,#83,#3f,#85,#3e
	db #83,#3e,#85,#3e,#83,#3e,#ff,#e0
	db #00,#a0,#c3,#e2,#00,#81,#2e,#32
	db #c1,#e2,#05,#26,#c3,#e2,#00,#3a
	db #c1,#e2,#05,#26,#c3,#e2,#00,#32
	db #2d,#32,#c1,#e2,#05,#26,#c3,#e2
	db #00,#3a,#c1,#e2,#05,#26,#c3,#e2
	db #00,#32,#2b,#32,#c1,#e2,#05,#26
	db #c3,#e2,#00,#3a,#c1,#e2,#05,#26
	db #c3,#e2,#00,#32,#2d,#32,#c1,#e2
	db #05,#26,#c3,#e2,#00,#3a,#c1,#e2
	db #05,#26,#c3,#e2,#00,#32,#ff,#e0
	db #00,#a0,#c3,#e2,#00,#85,#2e,#c0
	db #83,#2e,#85,#2e,#83,#2e,#85,#2e
	db #83,#2e,#85,#2e,#83,#2e,#ff,#e0
	db #00,#a0,#c1,#e2,#05,#83,#16,#1d
	db #1d,#15,#1d,#1d,#13,#1d,#1d,#15
	db #1d,#1d,#ff,#e0,#00,#a0,#c1,#e2
	db #05,#85,#16,#c0,#83,#16,#85,#16
	db #83,#16,#85,#16,#83,#16,#85,#16
	db #83,#16,#ff,#0f,#00,#0f,#00,#0f
	db #00,#0f,#00,#01,#0f,#85,#cb,#01
	db #00,#01,#00,#01,#0f,#82,#9e,#01
	db #00,#01,#00,#01,#0d,#83,#a7,#01
	db #00,#01,#00,#01,#0f,#0f,#ff,#01
	db #00,#01,#00,#01,#07,#07,#ff,#01
	db #00,#01,#00,#01,#0e,#01,#00,#82
	db #9c,#01,#00,#07,#02,#02,#ff,#0c
	db #00,#86,#c8,#01,#0d,#94,#a8,#0f
	db #00,#83,#a1,#01,#0d,#02,#ff,#02
	db #00,#0b,#ff,#01,#0f,#01,#fb,#08
	db #00,#0a,#ff,#01,#0f,#01,#00,#03
	db #fb,#09,#00,#01,#0c,#02,#00,#0c
	db #ff,#01,#00,#01,#0f,#04,#ff,#08
	db #00,#0b,#ff,#01,#0d,#82,#84,#02
	db #00,#0b,#ff,#01,#0d,#02,#00,#06
	db #fe,#01,#ff,#01,#0e,#01,#00,#01
	db #f2,#01,#00,#01,#0f,#02,#00,#0f
	db #ff,#01,#00,#01,#0f,#02,#00,#82
	db #9e,#01,#00,#01,#0a,#01,#00,#01
	db #f6,#01,#00,#01,#0c,#01,#00,#01
	db #f4,#01,#00,#01,#0e,#01,#00,#01
	db #f2,#01,#00,#01,#0c,#04,#00,#0b
	db #ff,#01,#00,#01,#0e,#04,#00,#0b
	db #ff,#04,#00,#01,#0f,#04,#00,#0f
	db #ff,#01,#00,#01,#0c,#03,#00,#04
	db #fd,#01,#00,#01,#0e,#03,#00,#04
	db #fd,#01,#fe,#01,#0f,#03,#00,#08
	db #ff,#01,#00,#01,#0d,#03,#00,#08
	db #ff,#05,#00,#01,#0f,#09,#ff,#09
	db #01,#0f,#ff,#01,#0f,#02,#00,#0c
	db #ff,#0c,#01,#01,#0d,#0c,#ff,#0d
	db #01,#0e,#ff,#01,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #01,#01,#ff,#01,#00,#01,#3c,#03
	db #ec,#01,#ef,#06,#00,#01,#ff,#01
	db #00,#01,#01,#03,#00,#04,#01,#04
	db #fe,#02,#02,#04,#01,#04,#01,#04
	db #fe,#02,#02,#01,#00,#01,#00,#01
	db #01,#01,#ff,#01,#00,#01,#63,#03
	db #e2,#01,#d1,#06,#00,#01,#ff,#01
	db #00,#01,#01,#04,#00,#88,#08,#84
	db #88,#84,#04,#08,#00,#01,#01,#01
	db #01,#01,#01,#01,#00,#01,#00,#01
	db #01,#01,#ff,#01,#00,#01,#63,#02
	db #d8,#01,#d1,#06,#00,#01,#ff,#01
	db #00,#01,#01,#08,#00,#01,#01,#01
	db #fe,#01,#01,#08,#00,#01,#01,#01
	db #01,#01,#01,#01,#00,#01,#00,#01
	db #01,#01,#ff,#01,#00,#01,#63,#02
	db #d8,#01,#d1,#06,#00,#01,#ff,#01
	db #00,#01,#01,#08,#00,#01,#01,#01
	db #fe,#01,#01,#08,#00,#01,#01,#01
	db #01,#01,#01,#01,#00,#01,#00,#01
	db #01,#01,#ff,#01,#00,#01,#63,#02
	db #d8,#01,#d1,#06,#00,#01,#ff,#01
	db #00,#01,#01,#08,#00,#01,#01,#01
	db #fe,#01,#01,#08,#00,#01,#01,#01
	db #01,#01,#01,#01,#00,#01,#00,#01
	db #01,#01,#ff,#01,#00,#01,#63,#02
	db #d8,#01,#d1,#06,#00,#01,#ff,#01
	db #00,#01,#01,#08,#00,#01,#01,#01
	db #fe,#01,#01,#08,#00,#01,#01,#01
	db #01,#01,#01,#01,#00,#01,#00,#01
	db #01,#01,#ff,#01,#01,#01,#01,#01
	db #01,#01,#00,#01,#00,#01,#01,#01
	db #ff,#01,#00,#01,#63,#02,#d8,#01
	db #d1,#06,#00,#01,#ff,#01,#00,#01
	db #01,#08,#00,#01,#01,#01,#fe,#01
	db #01,#08,#00,#01,#01,#01,#01,#01
	db #01,#01,#00,#01,#00,#01,#01,#01
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc,#0001
	djnz l35e7
	ld (bc),a
.l35e7
	inc e
	nop
	nop
	ld bc,#ff01
.l35ee equ $ + 1
	djnz l35ee
	ld (bc),a
	inc e
	nop
	nop
	ld bc,#0001
	djnz l35f9
	ld (bc),a
.l35f9
	inc e
	nop
	nop
	ld bc,#ff01
.l3600 equ $ + 1
	djnz l3600
	ld (bc),a
	inc e
	nop
	nop
	ld bc,#0001
	djnz l360b
	ld (bc),a
.l360b
	ld c,#00
	nop
	ld bc,#ff02
	djnz l3613
.l3613
	ld bc,#001e
	nop
	ld bc,#ff01
.l361b equ $ + 1
	djnz l361b
	ld (bc),a
	ld c,#00
	nop
	rst #38
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	call l4024
	call l4804
	xor a
	ld (l47a5),a
.l400a
	ld a,(l47a5)
	or a
	jr nz,l4017
	ld a,(l46ae)
	cp #04
	jr c,l400a
.l4017
	xor a
	ld (l46a7),a
	ld b,#06
.l401d
	halt
	djnz l401d
	call l481b
	ret
;
.init_music
.l4024
;
	xor a
	ld (l4567),a
	ld (l46ae),a
	ld a,#ff
	ld (l456e),a
	ld hl,l4576
	ld (hl),#00
	ld de,l4577
	ld bc,#0128
	ldir
	ld bc,l2ab4
	ld a,(l2ab5)
	ld (l469f),a
	ld hl,(l2ab6)
	add hl,bc
	ld (l46a2),hl
	ld hl,(l2ab8)
	add hl,bc
	ld (l46a4),hl
	ld hl,(l2aba)
	add hl,bc
	ld (l457b),hl
	ld hl,(l2abc)
	add hl,bc
	ld (l45b6),hl
	ld hl,(l2abe)
	add hl,bc
	ld (l45f1),hl
	ld hl,l2ac0
	ld (l46a0),hl
	ld a,#0f
	ld (l46a7),a
	ld hl,l4570
	ld de,l4576
	ld bc,#0005
	ldir
	ld hl,l4570
	ld de,l45b1
	ld bc,#0005
	ldir
	ld hl,l4570
	ld de,l45ec
	ld bc,#0005
	ldir
	ld c,#38
	ld a,#07
	call l4783
	ld a,#ff
	ld (l4567),a
	ret
;
.play_music
.l40a2
;
	ei
	call l47b6
	ld a,(l4567)
	or a
	ret z
	xor a
	ld (l4567),a
	ld a,#08
	ld (l4569),a
	cpl
	ld (l456a),a
	ld a,(l46a7)
	ld e,a
	ld b,#03
	ld hl,l460b
.l40c1
	ld a,(hl)
	ld c,a
	ld a,(l456f)
	or b
	sub #03
	ld a,#00
	jr c,l40d2
	ld a,c
	cp e
	jr c,l40d2
	ld a,e
.l40d2
	ld c,a
	ld a,b
	add #07
	push de
	call l4783
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l40c1
	ld hl,l469f
	dec (hl)
	ld ix,l4576
	xor a
.l40ec
	ld (l46a6),a
	ld a,(ix+#07)
	or a
	jp nz,l43ab
.l40f6
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l4100
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jr nz,l4174
	ld l,(ix+#01)
	ld h,(ix+#02)
.l4111
	ld a,(hl)
	cp #ff
	jr nz,l4153
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l46ae)
	inc a
	ld (l46ae),a
	ld a,(l456e)
	or a
	jr nz,l4111
	push hl
	push bc
	push de
	ld a,(l46a6)
	ld c,a
	ld b,#00
	ld hl,l456b
	add hl,bc
	push hl
	ld e,(hl)
	add a
	ld c,a
	ld hl,l2abc
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	push bc
	pop hl
	ld (hl),e
	pop hl
	xor a
	ld (hl),a
	pop de
	pop bc
	pop hl
	jp l4111
.l4153
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l46a0)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	push bc
	pop hl
	ld bc,l2ab4
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l4100
.l4174
	bit 7,a
	jr nz,l41de
	ld hl,l46af
	or a
	jr z,l4181
	add (ix+#20)
.l4181
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
	ld a,(l46a6)
	inc a
	ld hl,l4613
	ld bc,#0014
.l41b3
	add hl,bc
	dec a
	jr nz,l41b3
	ldir
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l46a6)
	inc a
	ld hl,l464f
	ld bc,#0014
.l41cb
	add hl,bc
	dec a
	jr nz,l41cb
	ldir
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l4397
.l41de
	bit 6,a
	jr nz,l4235
	bit 5,a
	jp z,l4222
	push af
	xor a
	ld (l46a8),a
	pop af
.l41ed
	and #1f
	ld b,a
	jr z,l4207
	ld a,(l4568)
	push hl
	ld hl,l456a
	and (hl)
	ld (l4568),a
	pop hl
	ld c,a
	ld a,#07
	call l4783
	jp l4219
.l4207
	ld a,(l4568)
	push hl
	ld hl,l4569
	or (hl)
	ld (l4568),a
	pop hl
	ld c,a
	ld a,#07
	call l4783
.l4219
	ld c,b
	ld a,#06
	call l4783
	jp l4397
.l4222
	and #1f
	ld hl,l4777
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l4397
.l4235
	bit 5,a
	jr nz,l42a2
	and #1f
	add a
	add a
	add a
	ld hl,(l46a2)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l4250
	ld a,(de)
	bit 7,a
	jr nz,l4262
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l427a
.l4262
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
	jr nz,l4274
	ld b,#01
.l4274
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l427a
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jr nz,l4250
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l4613
	ld a,(l46a6)
	inc a
.l4298
	add hl,bc
	dec a
	jr nz,l4298
	ex de,hl
	ldir
	jp l4397
.l42a2
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l42b9
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
.l42b9
	pop bc
	ld b,d
	add hl,de
	ld b,e
	dec d
	ld b,e
	ret
	ld b,d
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l4397
	pop hl
	ld a,(hl)
	ld (l46a8),a
	and #3f
	ld (l46aa),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l46ab),a
	ld a,(l46a8)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l46a8),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l46a8
	or (hl)
	ld (l46a8),a
	ld (l46a9),a
	ld a,(l46aa)
	ld (l46ad),a
	ld hl,l46ab
	ld b,#ff
	cp (hl)
	jr nc,l430b
	ld b,#01
.l430b
	ld a,b
	ld (l46ac),a
	ld a,(l46ad)
	jp l41ed
	ld a,#02
	jr l431b
	ld a,#01
.l431b
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jr z,l438c
	add a
	add a
	add a
	ld hl,(l46a4)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l4339
	ld a,(de)
	bit 7,a
	jr nz,l434d
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
	jp l4365
.l434d
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
	jr nz,l435f
	ld b,#ff
.l435f
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l4365
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jr nz,l4339
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l464f
	ld a,(l46a6)
	inc a
.l4383
	add hl,bc
	dec a
	jr nz,l4383
	ex de,hl
	ldir
	jr l4391
.l438c
	ld a,#00
	ld (ix+#09),a
.l4391
	ld a,(ix+#09)
	ld (ix+#3a),a
.l4397
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l40f6
.l43ab
	ld a,(l469f)
	or a
	jr nz,l43b4
	dec (ix+#07)
.l43b4
	ld a,(ix+#0a)
	cp #04
	jp z,l43fe
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
	jr nz,l43e1
	dec (hl)
	jr nz,l43d4
	inc (ix+#0a)
.l43d4
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l43fe
.l43e1
	dec (hl)
	jr nz,l43f6
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
	jp l43f8
.l43f6
	inc hl
	inc hl
.l43f8
	dec (hl)
	jr nz,l43fe
	inc (ix+#0a)
.l43fe
	ld a,(ix+#09)
	or a
	jp z,l449b
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
	jr nz,l443c
	dec (hl)
	jr nz,l4420
	inc (ix+#21)
.l4420
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jr nz,l442c
	ld b,#00
.l442c
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l446a
.l443c
	dec (hl)
	jr nz,l4462
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
	jr nz,l4450
	ld b,#00
.l4450
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l4464
.l4462
	inc hl
	inc hl
.l4464
	dec (hl)
	jr nz,l446a
	inc (ix+#21)
.l446a
	ld a,(ix+#21)
	cp #04
	jr nz,l449b
	ld a,(ix+#09)
	cp #02
	jr nz,l447f
	ld a,#00
	ld (ix+#09),a
	jr l449b
.l447f
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l46a6)
	inc a
	ld hl,l464f
	ld bc,#0014
.l4495
	add hl,bc
	dec a
	jr nz,l4495
	ldir
.l449b
	ld c,(ix+#36)
	ld a,(l46a6)
	add a
	call l4783
	ld c,(ix+#37)
	inc a
	call l4783
	ld bc,#003b
	add ix,bc
	ld a,(l4569)
	rlc a
	ld (l4569),a
	cpl
	ld (l456a),a
	ld a,(l46a6)
	inc a
	cp #03
	jp nz,l40ec
	ld a,(l46a8)
	or a
	jr z,l44fd
	dec a
	ld (l46a8),a
	or a
	jr nz,l44fd
	ld a,(l46a9)
	ld (l46a8),a
	ld a,(l46ad)
	ld hl,l46ac
	add (hl)
	ld (l46ad),a
	ld c,a
	ld hl,l46aa
	cp (hl)
	jr z,l44f0
	ld hl,l46ab
	cp (hl)
	jr nz,l44f8
.l44f0
	ld a,(l46ac)
	xor #fe
	ld (l46ac),a
.l44f8
	ld a,#06
	call l4783
.l44fd
	ld a,(l469f)
	or a
	jr nz,l4509
	ld a,(l2ab5)
	ld (l469f),a
.l4509
	ld a,#ff
	ld (l4567),a
	ret
	push hl
	push de
	push bc
	push af
	xor a
	ld (l4567),a
	ld a,e
	ld (l456b),a
	ld a,b
	ld (l456c),a
	ld a,c
	ld (l456d),a
	ld hl,l4570
	ld de,l4576
	ldi
	ldi
	ldi
	ldi
	ldi
	ld hl,l4570
	ld de,l45b1
	ldi
	ldi
	ldi
	ldi
	ldi
	ld hl,l4570
	ld de,l45ec
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l457d),a
	ld (l45b8),a
	ld (l45f3),a
	ld a,#ff
	ld (l4567),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.l456e equ $ + 7
.l456d equ $ + 6
.l456c equ $ + 5
.l456b equ $ + 4
.l456a equ $ + 3
.l4569 equ $ + 2
.l4568 equ $ + 1
.l4567
	db #ff,#38,#00,#00,#00,#00,#00,#ff
.l4570 equ $ + 1
.l456f
	db #ff,#00
	dw l4575,l4575
.l457b equ $ + 6
.l4577 equ $ + 2
.l4576 equ $ + 1
.l4575
	db #ff,#00,#00,#00,#00,#00,#00,#00
.l457d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45b1 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45b8 equ $ + 3
.l45b6 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45ec equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45f3 equ $ + 6
.l45f1 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l460b equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4613 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l464f equ $ + 2
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
.l46a4 equ $ + 7
.l46a2 equ $ + 5
.l46a0 equ $ + 3
.l469f equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46ac equ $ + 7
.l46ab equ $ + 6
.l46aa equ $ + 5
.l46a9 equ $ + 4
.l46a8 equ $ + 3
.l46a7 equ $ + 2
.l46a6 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46af equ $ + 2
.l46ae equ $ + 1
.l46ad
	db #00,#00,#00,#00
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
	dw #0010,#000f,#000e,#000d
	dw #000c,#000b,#000a
.l4777
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
.l4783
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
.l47a6 equ $ + 1
.l47a5
	dw #4800,#4204,#4504,#4520
	dw #4080,#4102,#4001,#4004
	db #01
.l47b6
	ld hl,l47a6
	ld bc,#f40e
	out (c),c
	ld b,#f6
	in a,(c)
	and #30
	ld c,a
	or #c0
	out (c),a
	out (c),c
	inc b
	ld a,#92
	out (c),a
	push bc
	ld de,#0800
.l47d4
	ld a,(hl)
	inc hl
	ld b,#f6
	out (c),a
	ld b,#f4
	in a,(c)
	cpl
	and (hl)
	jr z,l47e3
	scf
.l47e3
	rl e
	inc hl
	dec d
	jr nz,l47d4
	ld b,#f6
	ld a,#49
	out (c),a
	ld b,#f4
	in a,(c)
	cpl
	and #1f
	or e
	ld e,a
	ld (l47a5),a
	pop bc
	ld a,#82
	out (c),a
	dec b
	out (c),c
	ret
.l4804
	di
	ld de,l484b
	ld hl,#0038
	ld bc,#0004
	ldir
	ld hl,#0039
	ld de,l4829
	ld (hl),e
	inc hl
	ld (hl),d
	ei
	ret
.l481b
	di
	ld hl,l484b
	ld de,#0038
	ld bc,#0004
	ldir
	ei
	ret
.l4829
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld a,(l4851)
	cp #03
	jr nz,l483f
	call l40a2
	xor a
	ld (l4851),a
.l483f
	inc a
	ld (l4851),a
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
.l484b
	nop
	nop
	nop
	nop
	nop
	ret
.l4851
	db #00,#75,#72,#65,#65,#20,#32,#20
	db #65,#6e,#76,#65,#6c,#6f,#70,#70
	db #65,#0d,#09,#64,#65,#66,#62,#20
	db #30,#09,#09,#20,#20,#3b,#20,#44
	db #33,#20,#3a,#20,#64,#75,#72,#65
	db #65,#20,#33,#20,#65,#6e,#76
;
.music_info
	db "Les Mille Et Un Voyages 1-4 (1989)(Carraz Editions)()",0
	db "Music Pro",0

	read "music_end.asm"
