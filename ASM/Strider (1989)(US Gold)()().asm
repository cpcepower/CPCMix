; Music of Strider (1989)(US Gold)()()
; Ripped by Megachur the 01/03/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "STRIDER.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #0800
FIRST_THEME				equ 1
LAST_THEME				equ 4

	read "music_header.asm"

	db #00,#00,#00,#00,#01,#02,#03,#04
	db #05,#06,#07,#08,#09,#0a,#0b,#0c
	db #0d,#0e,#0f,#10,#11,#12,#13,#14
	db #15,#16,#17,#18,#19,#1a,#1b,#1c
.l0823 equ $ + 3
	db #1d,#1e,#1f,#13,#20,#01,#00,#01
	db #0c,#0c,#0b,#0b,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#03,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#ff,#00,#ff,#00
	db #ff,#00,#ff,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0868
	db #13,#09,#01,#00,#01,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#ff,#02,#02
.l087f equ $ + 7
	db #fe,#fe,#fe,#fe,#02,#02,#00,#13
	db #09,#01,#00,#01,#0d,#0d,#0c,#0c
	db #0b,#0b,#0c,#0c,#ff,#01,#01,#ff
.l0896 equ $ + 6
	db #ff,#ff,#ff,#01,#01,#00,#13,#02
.l089f equ $ + 7
	db #01,#00,#01,#00,#00,#00,#00,#13
	db #09,#01,#00,#01,#0c,#0c,#0b,#0b
	db #0c,#0c,#0b,#0b,#ff,#ff,#01,#01
.l08b6 equ $ + 6
	db #ff,#ff,#01,#01,#ff,#00,#13,#20
	db #01,#00,#01,#0f,#0e,#0d,#0c,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#01,#00,#01,#00,#ff
	db #00,#ff,#00,#ff,#00,#ff,#00,#01
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l08fb equ $ + 3
	db #00,#00,#00,#0d,#37,#04,#00,#03
	db #0f,#0f,#0f,#0f,#0e,#0e,#0e,#0e
	db #0d,#0d,#0d,#0d,#0c,#0c,#0c,#0c
	db #0b,#0b,#0b,#0b,#0a,#0a,#0a,#0a
	db #09,#09,#09,#09,#08,#08,#08,#07
	db #07,#07,#06,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#02,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#05,#06,#07,#08,#09,#0a,#0b
	db #0c,#0d,#0e,#0f,#10,#11,#12,#12
	db #18,#18,#18,#14,#15,#15,#16,#16
	db #17,#17,#18,#18,#18,#18,#18,#1e
	db #1e,#1e,#1e,#1e,#1e,#1e,#1e,#1e
	db #1e,#1e,#1e,#1e,#1e,#1e,#1e,#1e
.l096e equ $ + 6
	db #1e,#1e,#1e,#1e,#1e,#1e,#0d,#32
	db #02,#00,#06,#fe,#03,#0f,#0f,#0f
	db #0f,#0f,#0f,#0e,#0e,#0e,#0e,#0e
	db #0d,#0d,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#05,#04,#03,#02,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#00,#00,#00,#02
	db #03,#03,#03,#03,#04,#04,#04,#04
	db #04,#1a,#04,#1a,#04,#1a,#04,#1a
	db #04,#1a,#04,#1a,#04,#1a,#04,#1a
	db #04,#1a,#04,#1a,#04,#1a,#04,#1a
	db #04,#1a,#04,#1a,#04,#1a,#04,#1a
.l09d7 equ $ + 7
	db #04,#1a,#04,#1a,#04,#1a,#04,#13
	db #30,#00,#01,#02,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0c,#0c,#0c,#0c,#0b
	db #0b,#0b,#0b,#0b,#0c,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0a,#0a,#0a,#09
	db #08,#07,#06,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#00,#ff,#00,#00
	db #00,#ff,#00,#00,#00,#00,#ff,#01
	db #ff,#01,#ff,#01,#ff,#01,#ff,#01
	db #ff,#01,#ff,#01,#ff,#01,#ff,#01
	db #ff,#01,#ff,#01,#ff,#01,#ff,#01
	db #ff,#01,#ff,#01,#ff,#01,#ff,#01
.l0a3c equ $ + 4
	db #ff,#01,#ff,#01,#13,#20,#00,#01
	db #04,#0f,#0d,#0e,#0c,#0d,#0b,#0c
	db #0a,#0b,#09,#0a,#08,#09,#07,#08
	db #06,#07,#05,#06,#04,#05,#03,#04
	db #02,#03,#01,#02,#00,#01,#00,#00
	db #00,#50,#50,#50,#50,#50,#50,#50
	db #50,#50,#50,#50,#50,#46,#3c,#32
	db #28,#1e,#14,#0a,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0a81 equ $ + 1
	db #00,#13,#20,#00,#01,#05,#0d,#0d
	db #0d,#0d,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#00,#00,#7f,#ff
	db #ff,#ba,#ba,#ba,#ba,#ba,#ba,#ba
	db #ba,#ba,#ba,#ba,#ba,#ba,#ba,#ba
	db #ba,#ba,#ba,#ba,#ba,#ba,#ba,#ba
.l0ac6 equ $ + 6
	db #ba,#ba,#ba,#ba,#ba,#ba,#13,#20
	db #00,#03,#04,#0d,#0f,#0e,#0c,#0a
	db #07,#03,#01,#0d,#0f,#0e,#0c,#0a
	db #07,#03,#01,#0d,#0f,#0e,#0c,#0a
	db #07,#03,#01,#0d,#0f,#0e,#0c,#0a
	db #07,#03,#00,#78,#d8,#d8,#00,#00
	db #00,#00,#78,#d8,#d8,#d8,#00,#00
	db #00,#00,#64,#d8,#d8,#d8,#00,#00
	db #00,#00,#78,#d8,#d8,#d8,#00,#00
.l0b0b equ $ + 3
	db #00,#00,#78,#13,#08,#64,#03,#03
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#00
	db #81,#81,#a8,#85,#7d,#81,#a8,#85
.l0b20
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	dw #0e29,#0d5d,#0c9c,#0be7
	dw #0b3c,#0a9b,#0a02,#0973
	dw #08eb,#086b,#07f2,#0780
	dw #0714,#06ae,#064e,#05f4
	dw #059e,#054d,#0501,#04b9
	dw #0475,#0435,#03f9,#03c0
	dw #038a,#0357,#0327,#02fa
	dw #02cf,#02a7,#0281,#025d
	dw #023b,#021b,#01fc,#01e0
	dw #01c5,#01ac,#0194,#017d
	dw #0168,#0153,#0140,#012e
	dw #011d,#010d,#00fe,#00f0
	dw #00e2,#00d6,#00ca,#00be
	dw #00b4,#00aa,#00a0,#0097
	dw #008f,#0087,#007f,#0078
	dw #0071,#006b,#0065,#005f
	dw #005a,#0055,#0050,#004c
	dw #0047,#0043,#0040,#003c
	dw #0039,#0035,#0032,#0030
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010,#000f
	db #81,#0c,#06,#0c,#06,#0c,#06,#0c
	db #06,#0c,#06,#0c,#06,#0c,#06,#0c
	db #06,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#94,#0c,#06,#0c,#06,#0c,#06
	db #0c,#06,#94,#0c,#06,#0c,#06,#0c
	db #06,#0c,#06,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#94,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#94,#2e,#0c,#2e
	db #0c,#2d,#0c,#29,#0c,#2b,#0c,#2d
	db #0c,#2e,#0c,#30,#0c,#94,#1c,#0c
	db #13,#0c,#15,#18,#15,#0c,#17,#0c
	db #18,#18,#94,#84,#00,#0c,#81,#0c
	db #06,#0c,#06,#0c,#06,#0c,#06,#0c
	db #06,#0c,#06,#0c,#18,#0c,#0c,#0c
	db #0c,#94,#0c,#24,#0c,#0c,#0c,#24
.l0c7b equ $ + 3
	db #0c,#0c,#94,#95,#02,#15,#f8,#0b
	db #95,#02,#0e,#f8,#0b,#95,#01,#11
	db #12,#0c,#95,#01,#13,#1b,#0c,#95
	db #01,#13,#f8,#0b,#95,#02,#0f,#f8
	db #0b,#95,#01,#13,#12,#0c,#95,#01
	db #15,#1b,#0c,#95,#03,#15,#2c,#0c
	db #95,#01,#15,#5b,#0c,#95,#01,#18
	db #5b,#0c,#95,#02,#11,#5b,#0c,#95
	db #01,#13,#5b,#0c,#95,#01,#f4,#3d
	db #0c,#95,#02,#1a,#5b,#0c,#95,#01
	db #15,#5b,#0c,#95,#01,#18,#5b,#0c
	db #95,#02,#11,#5b,#0c,#95,#01,#15
	db #72,#0c,#95,#01,#18,#72,#0c,#95
	db #02,#0c,#4e,#0c,#95,#02,#17,#f8
	db #0b,#95,#02,#10,#f8,#0b,#95,#01
	db #13,#12,#0c,#95,#01,#15,#1b,#0c
	db #95,#01,#15,#f8,#0b,#95,#02,#11
	db #f8,#0b,#95,#01,#15,#12,#0c,#95
	db #01,#17,#1b,#0c,#95,#03,#17,#2c
	db #0c,#95,#01,#17,#f8,#0b,#95,#01
	db #1a,#f8,#0b,#95,#02,#13,#f8,#0b
	db #95,#01,#15,#f8,#0b,#95,#01,#f6
	db #3d,#0c,#95,#02,#1c,#f8,#0b,#95
	db #01,#17,#f8,#0b,#95,#01,#1a,#f8
	db #0b,#95,#02,#13,#f8,#0b,#95,#01
	db #17,#f8,#0b,#95,#01,#1a,#f8,#0b
	db #95,#02,#0e,#4e,#0c,#ff,#84,#00
	db #a8,#83,#30,#0c,#2b,#0c,#2a,#6c
	db #29,#06,#2b,#06,#2d,#0c,#2f,#0c
	db #30,#0c,#32,#18,#34,#0c,#35,#0c
	db #34,#06,#35,#06,#37,#90,#39,#0c
	db #37,#0c,#33,#6c,#32,#06,#34,#06
	db #35,#0c,#37,#0c,#39,#0c,#3b,#18
	db #3c,#0c,#3e,#0c,#3c,#06,#3e,#06
	db #40,#a8,#84,#00,#60,#00,#60,#81
	db #2d,#06,#2d,#06,#2d,#06,#2d,#06
	db #2d,#06,#2d,#06,#2d,#06,#83,#2d
	db #06,#34,#0c,#2f,#0c,#30,#0c,#2d
	db #0c,#81,#30,#06,#30,#06,#30,#06
	db #30,#06,#30,#06,#30,#06,#30,#06
	db #83,#30,#06,#37,#0c,#32,#0c,#33
	db #0c,#30,#0c,#35,#60,#35,#60,#81
	db #2b,#06,#2b,#06,#2b,#06,#2b,#06
	db #2b,#06,#2b,#06,#2b,#06,#83,#2b
	db #06,#32,#0c,#2d,#0c,#2e,#0c,#2b
	db #0c,#2e,#18,#2d,#0c,#29,#0c,#2b
	db #0c,#2d,#0c,#2e,#0c,#30,#0c,#32
	db #60,#32,#60,#94,#86,#2d,#06,#2f
	db #06,#30,#06,#2f,#06,#2d,#06,#2f
	db #06,#30,#06,#2f,#06,#34,#06,#2d
	db #06,#32,#06,#2d,#06,#30,#06,#2d
	db #06,#2f,#06,#2d,#06,#30,#06,#32
	db #06,#33,#06,#32,#06,#30,#06,#32
	db #06,#33,#06,#32,#06,#37,#06,#30
	db #06,#35,#06,#30,#06,#33,#06,#30
	db #06,#32,#06,#30,#06,#83,#35,#60
	db #35,#60,#86,#2d,#06,#2d,#06,#30
	db #06,#30,#06,#2d,#06,#2d,#06,#30
	db #06,#30,#06,#34,#0c,#30,#0c,#32
	db #0c,#2f,#0c,#30,#06,#30,#06,#33
	db #06,#33,#06,#30,#06,#30,#06,#33
	db #06,#33,#06,#37,#0c,#33,#0c,#35
	db #0c,#32,#0c,#86,#39,#06,#37,#06
	db #35,#06,#34,#06,#35,#06,#34,#06
	db #32,#06,#30,#06,#32,#06,#30,#06
	db #2d,#06,#2f,#06,#83,#30,#18,#86
	db #39,#06,#37,#06,#35,#06,#34,#06
	db #35,#06,#34,#06,#32,#06,#30,#06
	db #32,#06,#30,#06,#2d,#06,#2f,#06
.l0ea4 equ $ + 4
	db #83,#30,#18,#94,#95,#01,#00,#4e
	db #0d,#95,#01,#00,#f4,#0d,#95,#01
	db #02,#4e,#0d,#95,#01,#02,#f4,#0d
	db #ff,#85,#15,#60,#15,#60,#0e,#60
	db #0e,#60,#11,#18,#13,#48,#13,#60
	db #0f,#60,#0f,#60,#13,#18,#15,#48
	db #15,#60,#15,#60,#15,#60,#15,#60
	db #18,#60,#11,#60,#11,#06,#13,#06
	db #14,#06,#13,#06,#11,#06,#13,#06
	db #14,#06,#13,#06,#11,#06,#13,#06
	db #14,#06,#13,#06,#11,#06,#13,#06
	db #14,#06,#13,#06,#13,#60,#16,#0c
	db #16,#0c,#15,#0c,#11,#0c,#13,#0c
	db #15,#0c,#16,#0c,#18,#0c,#1a,#60
	db #1a,#03,#1c,#03,#1a,#03,#1e,#03
	db #1a,#03,#20,#03,#1a,#03,#22,#03
	db #1a,#03,#24,#03,#1a,#03,#26,#03
	db #1a,#03,#28,#03,#1a,#03,#2a,#03
	db #1a,#03,#2c,#03,#1a,#03,#2e,#03
	db #1a,#03,#30,#03,#1a,#03,#32,#03
	db #1a,#03,#34,#03,#1a,#03,#36,#03
	db #1a,#03,#38,#03,#1a,#03,#3a,#03
	db #15,#60,#18,#60,#11,#60,#11,#06
	db #13,#06,#14,#06,#13,#06,#11,#06
	db #13,#06,#14,#06,#13,#06,#11,#06
	db #13,#06,#14,#06,#13,#06,#11,#06
	db #13,#06,#14,#06,#13,#06,#15,#60
.l0f7f equ $ + 7
	db #18,#60,#0c,#60,#0c,#60,#94,#95
	db #01,#18,#b9,#0e,#95,#01,#1a,#b9
	db #0e,#ff,#81,#0c,#06,#0c,#06,#0c
	db #06,#0c,#06,#0c,#18,#94,#19,#18
	db #18,#18,#16,#18,#14,#18,#94,#81
	db #17,#18,#17,#18,#19,#18,#19,#18
	db #17,#18,#17,#18,#19,#18,#19,#18
	db #17,#18,#17,#18,#19,#18,#19,#18
	db #17,#18,#17,#18,#16,#18,#16,#18
	db #14,#18,#14,#18,#11,#18,#11,#18
	db #14,#18,#14,#18,#19,#18,#18,#18
	db #16,#18,#14,#18,#12,#18,#12,#18
	db #12,#18,#12,#18,#16,#18,#16,#18
	db #16,#18,#16,#18,#16,#18,#16,#18
.l0fed equ $ + 5
	db #16,#18,#16,#18,#94,#95,#ff,#00
.l0ff2 equ $ + 2
	db #9f,#0f,#95,#01,#0b,#8a,#0f,#95
	db #01,#0d,#8a,#0f,#95,#01,#0b,#8a
	db #0f,#95,#01,#0d,#8a,#0f,#95,#01
	db #0b,#8a,#0f,#95,#01,#0d,#8a,#0f
	db #95,#01,#0b,#8a,#0f,#95,#01,#0a
	db #8a,#0f,#95,#01,#08,#8a,#0f,#95
	db #01,#05,#8a,#0f,#95,#01,#08,#8a
	db #0f,#95,#01,#05,#96,#0f,#95,#02
	db #06,#8a,#0f,#95,#04,#0a,#8a,#0f
	db #ff,#83,#31,#03,#2f,#2d,#31,#30
	db #31,#03,#2f,#27,#31,#03,#36,#03
	db #35,#30,#31,#03,#2f,#2d,#31,#30
	db #31,#03,#2f,#27,#31,#03,#36,#03
	db #35,#30,#2c,#30,#29,#30,#2e,#03
	db #2c,#27,#2c,#03,#2e,#03,#31,#30
	db #2e,#27,#2c,#03,#2e,#03,#2c,#03
.l1077 equ $ + 7
	db #2a,#60,#2e,#60,#2e,#60,#94,#95
	db #ff,#00,#39,#10,#82,#35,#24,#37
	db #36,#35,#09,#37,#09,#38,#09,#3a
	db #09,#38,#09,#37,#09,#35,#09,#3c
.l1094 equ $ + 4
	db #09,#39,#90,#94,#95,#01,#00,#7c
	db #10,#fe,#83,#25,#24,#27,#36,#25
	db #12,#27,#12,#25,#12,#27,#12,#29
.l10aa equ $ + 2
	db #90,#94,#95,#01,#00,#9a,#10,#fe
	db #83,#3d,#03,#3c,#03,#3a,#03,#38
	db #03,#3a,#03,#38,#03,#37,#03,#35
	db #03,#38,#03,#37,#03,#35,#03,#33
	db #03,#34,#03,#33,#03,#31,#03,#30
	db #03,#94,#3d,#03,#3c,#03,#3a,#03
	db #38,#03,#3a,#03,#38,#03,#37,#03
	db #35,#03,#94,#3c,#03,#39,#03,#35
	db #03,#3c,#03,#39,#03,#35,#03,#3c
	db #03,#39,#03,#35,#03,#3c,#03,#39
	db #03,#35,#03,#3c,#03,#39,#03,#35
	db #03,#3c,#03,#39,#03,#35,#03,#3c
	db #03,#39,#03,#35,#03,#3c,#03,#39
	db #03,#35,#03,#3c,#03,#39,#03,#35
	db #03,#3c,#03,#39,#03,#35,#03,#3c
.l1124 equ $ + 4
	db #03,#39,#03,#94,#95,#01,#18,#b0
	db #10,#95,#01,#0c,#b0,#10,#95,#01
	db #00,#b0,#10,#95,#01,#f4,#d2,#10
	db #95,#01,#00,#e3,#10,#fe,#82,#21
	db #18,#1f,#18,#1f,#18,#1f,#18,#24
	db #18,#22,#18,#20,#18,#1f,#18,#1b
	db #18,#1d,#18,#1d,#18,#1d,#18,#94
	db #82,#24,#18,#23,#18,#23,#18,#23
	db #18,#28,#18,#26,#18,#24,#18,#22
	db #18,#1f,#18,#21,#18,#21,#18,#21
	db #18,#94,#83,#39,#0c,#37,#06,#39
	db #06,#3b,#48,#40,#0c,#3e,#06,#3c
	db #06,#3e,#0c,#3c,#06,#3a,#06,#3c
	db #0c,#3a,#06,#38,#06,#3a,#0c,#38
	db #06,#37,#06,#3a,#0f,#38,#03,#3a
.l119c equ $ + 4
	db #06,#3c,#48,#94,#95,#01,#00,#3e
.l11a2 equ $ + 2
	db #11,#fe,#95,#01,#18,#3e,#11,#fe
.l11a8
	db #95,#01,#00,#72,#11,#fe
.l11ae
	dw l0c7b,l0ea4,l0f7f,l0fed
	dw l0ff2,l1077,l1124,l10aa
.l11c4 equ $ + 6
	dw l1094,l119c,l11a2,l11a8
.l11c8 equ $ + 2
	dw #0000,l08fb,l096e,l09d7
	dw l0a3c,l0a81,l0ac6,l0b0b
.l11da equ $ + 4
.l11d7 equ $ + 1
	dw l0823,#0000,#07de,l0823
	dw l0868,l087f,l0896,l089f
.l11e6
	dw l08b6,#0000
.l11ea
	jp l15d0
.l11f3 equ $ + 6
.l11f1 equ $ + 4
.l11f0 equ $ + 3
.l11ef equ $ + 2
.l11ee equ $ + 1
.l11ed
	db #00,#00,#00,#00,#00,#00,#00,#00
.l11fb equ $ + 6
.l11f9 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1203 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l120b equ $ + 6
.l1209 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1223 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l126b equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l12b3
	push de
	push bc
	push hl
	push ix
	push iy
	call l12c5
	pop iy
	pop ix
	pop hl
	pop bc
	pop de
	ret
	;
.init_music
.l12c5
	;
	ld (l11ed),a
	ld a,c
	ld (l11ee),a
	ld a,(l11ed)
	ld iy,l1203
	cp #ff
	jp z,l1492
	dec a
	jp m,l13ef
	call l13ef
	ld a,#01
	ld (#07d1),a
	call l1389
	ld a,(l11ed)
	dec a
	ld e,a
	add a
	add e
	add a
	ld e,a
	ld d,#00
	ld hl,l11ae
	add hl,de
	ex de,hl
	ld hl,l11c4
	sbc hl,de
	jp c,l13ef
	ex de,hl
	ld ix,l1223
	ld b,#03
.l1306
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),e
	ld (ix+#0d),d
	ld (ix+#0a),#01
	ld de,#0018
	add ix,de
	djnz l1306
	ret
.l131c
	push bc
	push de
	push hl
	push ix
	push iy
	call l132e
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	ret
.l132e
	ld iy,l11f3
	ld ix,l126b
	ld (l11ef),a
	dec a
	jp m,l141e
	add a
	ld e,a
	ld d,#00
	ld hl,l11c8
	add hl,de
	ex de,hl
	ld hl,l11d7
	sbc hl,de
	ret c
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld b,#03
	ld ix,l126b
	ld a,(l11ef)
	ld c,a
	ld de,#0018
.l135e
	ld a,(ix+#09)
	cp c
	jr nz,l136e
	ld a,(ix+#05)
	and a
	jr z,l136e
	inc a
	jp nz,l143c
.l136e
	add ix,de
	djnz l135e
	ld ix,l126b
	ld de,#0004
	add hl,de
	ld c,(hl)
	and a
	sbc hl,de
	call l13cb
	ld a,(ix+#05)
	cp c
	ret nc
	jp l143c
.l1389
	push ix
	ld ix,l126b
	ld hl,l11fb
	ld a,(l11ee)
	ld c,a
	xor a
	ld de,#0018
.l139a
	dec c
	jp m,l13a5
	ld (ix+#05),#ff
	ld (hl),#00
	inc hl
.l13a5
	add ix,de
	inc a
	cp #03
	jr c,l139a
	pop ix
	ret
.l13af
	push ix
	ld ix,l126b
	ld b,#03
	ld de,#0018
.l13ba
	ld a,(ix+#05)
	inc a
	jr nz,l13c4
	ld (ix+#05),#00
.l13c4
	add ix,de
	djnz l13ba
	pop ix
	ret
.l13cb
	push iy
	push ix
	pop iy
	ld de,#0018
	ld a,(iy+#05)
	cp (ix+#1d)
	jr c,l13de
	add iy,de
.l13de
	ld a,(iy+#05)
	cp (ix+#35)
	jr c,l13e8
	add iy,de
.l13e8
	push iy
	pop ix
	pop iy
	ret
.l13ef
	ld ix,l1223
	ld b,#03
	ld hl,l120b
	ld de,#0018
	ld a,#00
.l13fd
	ld (hl),a
	inc hl
	ld (ix+#05),a
	ld (ix+#0e),a
	ld (ix+#0f),a
	ld (ix+#13),a
	ld (ix+#14),a
	ld (ix+#06),a
	add ix,de
	djnz l13fd
	ld (l11f0),a
	ld (#07d1),a
	jp l13af
.l141e
	ld b,#03
	ld ix,l126b
	ld hl,l11fb
	ld de,#0018
.l142a
	ld (hl),#00
	inc hl
	ld a,(ix+#05)
	inc a
	jr z,l1437
	ld (ix+#05),#00
.l1437
	add ix,de
	djnz l142a
	ret
.l143c
	ld (ix+#06),#00
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	inc hl
	ld (ix+#07),a
	ld a,(hl)
	inc hl
	ld (ix+#08),a
	ld a,(hl)
	inc hl
	ld (ix+#01),a
	ld a,(hl)
	inc hl
	ld (ix+#02),a
	ld a,(hl)
	ld (ix+#05),a
	ld a,(l11ef)
	ld (ix+#09),a
	ld a,(ix+#07)
	ld c,#00
	rra
	rra
	rra
	rra
	rl c
	sla c
	sla c
	rra
	rl c
	ld b,#09
	ld e,(ix+#00)
.l147b
	dec e
	jp m,l1485
	sla b
	sla c
	jr l147b
.l1485
	ld a,c
	xor b
	ld b,a
	ld a,c
	cpl
	and (iy+#07)
	or b
	ld (iy+#07),a
	ret
.l1492
	ld a,#10
	ld (l11f0),a
	ld a,c
	ld (l11f3),a
	ld a,#00
	ld (l11f1),a
	ret
.l14a1
	ld a,(l11f0)
	and a
	ret z
	ld a,(l11f1)
	dec a
	ld (l11f1),a
	jp p,l14c6
	ld a,(l11f3)
	ld (l11f1),a
	ld a,(l11f0)
	dec a
	ld (l11f0),a
	jr nz,l14c6
	ld a,#00
	ld c,#00
	jp l12b3
.l14c6
	ld hl,l120b
	ld b,#03
.l14cb
	ld d,(hl)
	ld a,(l11f0)
	ld e,a
	xor a
	dec e
	jp m,l14da
.l14d5
	add d
	dec e
	jp p,l14d5
.l14da
	srl a
	srl a
	srl a
	srl a
	ld (hl),a
	inc hl
	djnz l14cb
	ret
.l14e7
	ld b,#03
.l14e9
	ld a,(ix+#05)
	and a
	jp z,l158e
	inc a
	jp z,l158e
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(ix+#06)
	add #05
	ld e,a
	ld d,#00
	add hl,de
	bit 0,(ix+#07)
	jr z,l1547
	ld a,(hl)
	cp #fe
	jr nz,l1521
	inc (ix+#06)
	inc (ix+#06)
	inc hl
	ld a,(hl)
	push ix
	push bc
	call l131c
	pop bc
	pop ix
	jr l14e9
.l1521
	cp #ff
	jr nz,l152b
	ld (ix+#06),#00
	jr l14e9
.l152b
	ld c,a
	ld a,(ix+#00)
	add #08
	ld (l1536),a
.l1536 equ $ + 2
	ld (iy+#00),c
	ld a,c
	and a
	jr nz,l1541
	ld (ix+#05),#00
	jr l158e
.l1541
	ld e,(ix+#08)
	ld d,#00
	add hl,de
.l1547
	bit 1,(ix+#07)
	jr z,l1581
	ld e,(hl)
	ld d,#00
	bit 7,e
	jr z,l1555
	dec d
.l1555
	push hl
	ld l,(ix+#01)
	ld h,(ix+#02)
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	pop hl
	ld a,(ix+#00)
	add a
	ld (l1574),a
	inc a
	ld (l157a),a
	ld a,(ix+#01)
.l1574 equ $ + 2
	ld (iy+#00),a
	ld a,(ix+#02)
.l157a equ $ + 2
	ld (iy+#00),a
	ld e,(ix+#08)
	ld d,#00
	add hl,de
.l1581
	bit 2,(ix+#07)
	jr z,l158b
	ld a,(hl)
	ld (iy+#06),a
.l158b
	inc (ix+#06)
.l158e
	ld de,#0018
	add ix,de
	dec b
	jp nz,l14e9
	ret
	;
.play_music
	;.l1598
	;
	push af
	push bc
	push de
	push hl
	push ix
	push iy
.l15a0
	call l177d
	ld a,#ff
	ld (l11f9),a
	ld (l1209),a
	ld iy,l1203
	ld ix,l1223
	call l14e7
	ld iy,l11f3
	ld ix,l126b
	call l14e7
	call l14a1
	call l15f0
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l15d0
	ld a,e
	ld c,d
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
.l15f0
	ld iy,l11f3
	ld ix,l1223
	ld e,#00
	call l1679
	ld e,#01
	call l1679
	ld e,#08
	call l1679
	ld bc,#0018
	add ix,bc
	ld e,#02
	call l1679
	ld e,#03
	call l1679
	ld e,#09
	call l1679
	ld bc,#0018
	add ix,bc
	ld e,#04
	call l1679
	ld e,#05
	call l1679
	ld e,#0a
	call l1679
	ld e,#06
	ld a,(iy+#06)
	cp #ff
	jr nz,l163f
	ld a,(iy+#16)
	cp #ff
	jr z,l1643
.l163f
	ld d,a
	call l11ea
.l1643
	ld ix,l1223
	ld b,#03
	ld c,#09
	ld h,#00
	ld de,#0018
.l1650
	ld l,(iy+#17)
	ld a,(ix+#4d)
	and a
	jr z,l1661
	inc a
	jr z,l1661
	ld l,(iy+#07)
	jr l1669
.l1661
	ld a,(ix+#05)
	and a
	jr nz,l1669
	ld l,#ff
.l1669
	ld a,l
	and c
	sla c
	or h
	ld h,a
	add ix,de
	djnz l1650
	ld d,h
	ld e,#07
	jp l11ea
.l1679
	ld a,e
	ld (l1690),a
	add #10
	ld (l1684),a
.l1684 equ $ + 2
	ld d,(iy+#00)
	ld a,(ix+#4d)
	and a
	jr z,l1691
	inc a
	jr z,l1691
.l1690 equ $ + 2
	ld d,(iy+#00)
.l1691
	jp l11ea
.l1694
	push ix
	pop iy
	ld a,(ix+#13)
	and a
	jr z,l16a3
	ld de,#0006
	add iy,de
.l16a3
	ld l,(iy+#0c)
	ld h,(iy+#0d)
	ld e,(iy+#0e)
	ld d,#00
	add hl,de
	bit 7,(hl)
	jr nz,l16ba
	inc (iy+#0e)
	inc (iy+#0e)
	ret
.l16ba
	ld a,(hl)
	cp #94
	jp z,l170a
	cp #95
	jp z,l171b
	cp #9d
	jp z,l173e
	cp #9e
	jp z,l1752
	cp #ff
	jp z,l1766
	cp #fe
	jp z,l1775
	res 7,a
	add a
	ld e,a
	ld d,#00
	ld hl,l11da
	add hl,de
	ex de,hl
	ld hl,l11e6
	sbc hl,de
	jr nc,l16ee
	ld de,l11da
.l16ee
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	push bc
	push iy
	ld iy,l1203
	call l143c
	ld (ix+#09),#ff
	pop iy
	pop bc
	inc (iy+#0e)
	jp l1694
.l170a
	ld (iy+#0e),#00
	dec (ix+#0b)
	jp nz,l1694
	ld (ix+#13),#00
	jp l1694
.l171b
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	inc hl
	ld a,(hl)
	ld (ix+#17),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld a,(hl)
	ld (ix+#13),a
	ld a,(ix+#0e)
	add #05
	ld (ix+#0e),a
	ld (ix+#14),#00
	jp l1694
.l173e
	dec (iy+#0f)
	jr nz,l1749
	inc (iy+#0e)
	jp l1694
.l1749
	ld a,(iy+#10)
	ld (iy+#0e),a
	jp l1694
.l1752
	inc (iy+#0e)
	inc (iy+#0e)
	ld a,(iy+#0e)
	ld (iy+#10),a
	inc hl
	ld a,(hl)
	ld (iy+#0f),a
	jp l1694
.l1766
	pop bc
	pop bc
	ld a,(l11ee)
	ld c,a
	ld a,(l11ed)
	call l12b3
	jp l15a0
.l1775
	pop bc
	pop bc
	call l13ef
	jp l15a0
.l177d
	ld a,(#07d1)
	and a
	ret z
	ld ix,l1223
	ld b,#03
.l1788
	dec (ix+#0a)
	jr nz,l17ba
	call l1694
	ld a,(hl)
	and a
	jr z,l1797
	add (iy+#11)
.l1797
	add a
	ld e,a
	ld d,#00
	ld iy,l0b20
	add iy,de
	ld e,(iy+#00)
	ld d,(iy+#01)
	ld (ix+#02),d
	ld (ix+#01),e
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	ld (ix+#06),#00
	ld (ix+#05),#01
.l17ba
	ld de,#0018
	add ix,de
	djnz l1788
	ret
;
;org #07d2
;call #131c
;ret
;call #12b3
;ret
;call #1598
;ret
;
.music_info
	db "Strider (1989)(US Gold)()",0
	db "",0

	read "music_end.asm"
