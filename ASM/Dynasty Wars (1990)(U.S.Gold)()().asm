; Music of Dynasty Wars (1990)(U.S.Gold)()()
; Ripped by Megachur the 10/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DYNASTYW.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #f000-96
first_theme				equ 0
last_theme				equ 2	; 0 -> 0

	read "music_header.asm"

.lffeb	; modified by Megachur
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

	jp lfd7a
	jp lfa95
	jp lfafe
.lf009
	db #00,#0d,#37,#1a,#01,#01,#0a,#0a
	db #0a,#0a,#09,#09,#09,#09,#08,#08
	db #08,#08,#07,#07,#07,#07,#06,#06
	db #06,#06,#05,#05,#05,#05,#04,#04
	db #04,#04,#03,#03,#03,#02,#02,#02
	db #01,#01,#01,#00,#00,#17,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#00,#18,#05
	db #1a,#07,#1c,#09,#14,#0b,#16,#0d
	db #18,#0f,#1a,#11,#1c,#12,#18,#18
	db #18,#14,#15,#0b,#0c,#0c,#17,#0d
	db #18,#0e,#18,#0e,#18,#0a,#1e,#0a
	db #1e,#0a,#0a,#1e,#0a,#1e,#0a,#1e
	db #0a,#1e,#0a,#1e,#0a,#1e,#0a,#1e
	db #0a,#1e,#0a,#1e,#0d,#04,#1a,#01
	db #01,#0a,#06,#02,#00,#04,#04,#04
	db #04,#0d,#37,#1a,#01,#01,#07,#07
	db #07,#07,#06,#06,#06,#06,#05,#05
	db #05,#05,#04,#04,#04,#04,#03,#03
	db #03,#03,#02,#02,#02,#02,#01,#01
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#17,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#00,#18,#05
	db #1a,#07,#1c,#09,#14,#0b,#16,#0d
	db #18,#0f,#1a,#11,#1c,#12,#18,#18
	db #18,#14,#15,#0b,#0c,#0c,#17,#0d
	db #18,#0e,#18,#0e,#18,#0a,#1e,#0a
	db #1e,#0a,#0a,#1e,#0a,#1e,#0a,#1e
	db #0a,#1e,#0a,#1e,#0a,#1e,#0a,#1e
	db #0a,#1e,#0a,#1e,#13,#20,#01,#01
	db #01,#0c,#0c,#0b,#0b,#0a,#0a,#09
	db #09,#08,#08,#07,#07,#06,#06,#05
	db #05,#04,#04,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#01,#00,#ff,#00,#ff
	db #00,#ff,#00,#ff,#00,#01,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#13,#09,#01,#01,#01,#09,#09
	db #09,#09,#09,#09,#09,#09,#ff,#02
	db #02,#fe,#fe,#fe,#fe,#02,#02,#00
	db #13,#02,#01,#01,#01,#00,#00,#00
	db #00,#13,#39,#01,#01,#01,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0a,#0a
	db #0a,#0a,#09,#09,#09,#09,#08,#08
	db #08,#08,#07,#07,#07,#07,#06,#06
	db #06,#06,#05,#05,#05,#07,#04,#04
	db #04,#04,#03,#03,#03,#05,#02,#02
	db #02,#02,#01,#01,#01,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#50
	db #50,#50,#50,#50,#50,#50,#50,#50
	db #50,#50,#50,#50,#50,#50,#50,#50
	db #50,#50,#50,#50,#50,#50,#50,#50
	db #50,#50,#50,#50,#50,#50,#50,#50
	db #50,#50,#50,#50,#50,#50,#50,#50
	db #50,#50,#50,#50,#50,#50,#50,#50
	db #50,#50,#50,#50,#50,#50,#50,#50
	db #50,#50,#50,#50,#50,#50,#50,#50
	db #50,#50,#50,#50,#50,#50,#50,#13
	db #39,#01,#01,#01,#0c,#0c,#0c,#0c
	db #0b,#0b,#0b,#0b,#0a,#0a,#0a,#0a
	db #09,#09,#09,#09,#08,#08,#08,#08
	db #07,#07,#07,#07,#06,#06,#06,#06
	db #05,#05,#05,#05,#04,#04,#04,#04
	db #03,#03,#03,#03,#02,#02,#02,#02
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#01,#01,#ff
	db #ff,#ff,#ff,#01,#01,#00,#01,#01
	db #ff,#ff,#ff,#ff,#01,#01,#00,#01
	db #01,#ff,#ff,#ff,#ff,#01,#01,#00
	db #01,#01,#ff,#ff,#ff,#ff,#01,#01
	db #00,#01,#01,#ff,#ff,#ff,#ff,#01
	db #01,#00,#01,#01,#ff,#ff,#ff,#ff
	db #01,#01,#00,#01,#01,#ff,#ff,#ff
	db #ff,#01,#01,#00,#01,#01,#ff,#ff
	db #ff,#ff,#01,#01,#00,#0d,#10,#9d
	db #04,#05,#0b,#0b,#0c,#0c,#0d,#0d
	db #0e,#0e,#0f,#0f,#0f,#08,#01,#00
	db #00,#00,#00,#02,#04,#06,#08,#0a
	db #0c,#0e,#10,#12,#14,#16,#18,#1a
	db #1c,#1e,#13,#08,#8f,#02,#03,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#00,#00
	db #81,#a8,#85,#ff,#81,#a8,#85,#0d
	db #30,#04,#00,#02,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#09,#09,#09,#09
	db #08,#08,#08,#08,#07,#07,#07,#07
	db #06,#06,#06,#06,#05,#05,#05,#05
	db #04,#04,#04,#04,#03,#03,#03,#03
	db #02,#02,#02,#02,#01,#01,#01,#01
	db #00,#00,#00,#00,#1b,#1b,#1b,#1b
	db #1b,#1b,#1b,#1b,#1b,#1b,#1b,#1b
	db #1b,#1b,#1b,#1b,#1c,#1c,#1c,#1c
	db #1c,#1c,#1c,#1c,#1c,#1c,#1c,#1c
	db #1c,#1c,#1c,#1c,#1a,#1a,#1a,#1a
	db #1a,#1a,#1a,#1a,#1a,#1a,#1b,#1c
	db #1d,#1e,#1f,#00,#13,#40,#f4,#01
	db #04,#0b,#0c,#0d,#0e,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#09,#09,#09
	db #09,#08,#08,#08,#08,#07,#07,#07
	db #07,#06,#06,#05,#05,#04,#04,#03
	db #02,#01,#00,#04,#04,#03,#03,#03
	db #03,#02,#02,#02,#02,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a
.lf392
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
	db #85,#28,#0c,#81,#01,#0c,#94,#85
	db #28,#0c,#81,#01,#0c,#84,#01,#0c
	db #81,#01,#0c,#94,#85,#28,#0c,#81
	db #01,#0c,#84,#01,#0c,#81,#01,#0c
	db #85,#28,#0c,#81,#01,#0c,#84,#01
	db #0c,#81,#01,#0c,#85,#28,#14,#84
	db #01,#14,#01,#10,#01,#1c,#04,#06
	db #04,#06,#94,#85,#28,#06,#86,#1a
	db #06,#1a,#0c,#84,#01,#0c,#86,#1a
	db #0c,#85,#28,#0c,#86,#1a,#0c,#84
	db #01,#06,#86,#1a,#06,#1a,#0c,#85
	db #28,#06,#86,#1b,#06,#1b,#0c,#84
	db #01,#0c,#86,#1b,#0c,#85,#28,#0c
	db #86,#1b,#0c,#84,#01,#06,#86,#1b
	db #06,#1b,#0c,#94,#95,#10,#00,#6a
	db #f4,#95,#5c,#00,#71,#f4,#95,#01
	db #00,#7e,#f4,#95,#08,#00,#71,#f4
	db #95,#10,#00,#a5,#f4,#95,#08,#00
	db #71,#f4,#84,#46,#60,#ff,#82,#3e
	db #60,#3f,#60,#3e,#60,#3f,#60,#94
	db #3e,#06,#3e,#06,#3e,#0c,#3e,#0c
	db #3e,#0c,#3e,#0c,#3e,#0c,#3e,#06
	db #3e,#06,#3e,#0c,#3f,#06,#3f,#06
	db #3f,#0c,#3f,#0c,#3f,#0c,#3f,#0c
	db #3f,#0c,#3f,#06,#3f,#06,#3f,#0c
	db #94,#3e,#06,#3e,#06,#3e,#18,#3e
	db #0c,#3c,#0c,#3c,#06,#39,#0c,#39
	db #06,#39,#0c,#37,#0c,#37,#0c,#37
	db #0c,#37,#0c,#32,#0c,#32,#06,#32
	db #12,#32,#0c,#37,#0c,#37,#0c,#37
	db #0c,#37,#0c,#37,#0c,#37,#06,#37
	db #0c,#37,#06,#37,#0c,#39,#0c,#39
	db #0c,#39,#0c,#39,#0c,#39,#0c,#39
	db #06,#3c,#0c,#3c,#06,#3c,#06,#3c
	db #06,#94,#87,#46,#18,#80,#4a,#30
	db #4a,#30,#4a,#30,#4a,#30,#4a,#30
	db #4a,#18,#3e,#06,#41,#06,#45,#06
	db #3e,#06,#4a,#06,#3e,#06,#41,#06
	db #45,#06,#3e,#06,#41,#06,#45,#06
	db #3e,#06,#4a,#06,#3e,#06,#41,#06
	db #45,#06,#94,#32,#60,#33,#60,#94
	db #32,#60,#33,#60,#94,#32,#60,#33
	db #5a,#35,#60,#37,#36,#39,#18,#3a
	db #18,#3e,#60,#3f,#5a,#41,#66,#43
	db #30,#45,#18,#46,#18,#94,#4a,#30
	db #48,#18,#45,#18,#43,#30,#3e,#30
	db #43,#60,#45,#48,#48,#18,#94,#4a
	db #60,#46,#60,#45,#60,#43,#60,#41
	db #60,#3f,#60,#3e,#60,#3a,#5a,#39
	db #66,#37,#60,#35,#60,#33,#5a,#32
	db #00,#32,#86,#94,#4f,#06,#51,#06
	db #51,#06,#4f,#06,#51,#06,#51,#06
	db #4f,#06,#51,#06,#4f,#06,#51,#06
	db #51,#06,#4f,#06,#51,#06,#51,#06
	db #4f,#06,#51,#06,#51,#06,#52,#06
	db #52,#06,#51,#06,#52,#06,#52,#06
	db #51,#06,#52,#06,#51,#06,#52,#06
	db #52,#06,#51,#06,#52,#06,#52,#06
	db #51,#06,#52,#06,#94,#81,#46,#06
	db #46,#06,#46,#0c,#46,#0c,#46,#0c
	db #46,#0c,#46,#0c,#46,#06,#46,#06
	db #46,#06,#46,#06,#46,#06,#46,#06
	db #46,#0c,#46,#0c,#46,#0c,#46,#0c
	db #46,#0c,#46,#18,#46,#06,#46,#06
	db #46,#0c,#46,#0c,#46,#0c,#46,#0c
	db #46,#0c,#46,#0c,#46,#06,#46,#06
	db #46,#06,#46,#06,#46,#0c,#46,#0c
	db #46,#0c,#46,#0c,#46,#0c,#46,#0c
	db #84,#4c,#06,#4c,#1e,#4a,#30,#4a
	db #0c,#4a,#06,#4a,#1e,#4a,#24,#4a
	db #0c,#4a,#06,#4a,#06,#4a,#24,#4a
	db #30,#4a,#18,#4a,#06,#4a,#06,#4a
	db #0c,#4a,#1e,#4a,#06,#4a,#0c,#4a
	db #0c,#4a,#24,#4a,#30,#4a,#30,#4a
	db #1e,#4a,#06,#4a,#0c,#4a,#30,#4a
	db #30,#4a,#24,#4a,#0c,#4a,#18,#4a
	db #06,#4a,#0c,#4a,#06,#4a,#0c,#4a
	db #06,#4a,#1e,#4a,#30,#4a,#30,#4a
	db #00,#4a,#00,#4a,#88,#94,#87,#4a
	db #60,#4a,#60,#4a,#60,#83,#01,#06
	db #01,#06,#01,#06,#01,#06,#01,#06
	db #01,#06,#01,#06,#01,#06,#01,#06
	db #01,#06,#01,#06,#01,#06,#01,#06
	db #01,#06,#01,#06,#01,#06,#94,#95
	db #01,#e8,#00,#f5,#86,#95,#06,#dc
	db #0a,#f5,#95,#01,#00,#e0,#f6,#86
	db #95,#04,#dc,#0a,#f5,#95,#01,#dc
	db #33,#f5,#95,#08,#dc,#0a,#f5,#95
	db #01,#dc,#33,#f5,#95,#01,#f4,#7c
	db #f5,#80,#95,#04,#f4,#fe,#f5,#95
	db #04,#ed,#fe,#f5,#95,#04,#e8,#fe
	db #f5,#95,#04,#ed,#fe,#f5,#86,#95
	db #01,#dc,#33,#f5,#3e,#60,#ff,#87
	db #95,#02,#00,#0a,#f5,#82,#95,#06
	db #00,#b2,#f5,#95,#01,#00,#e0,#f6
	db #82,#95,#01,#00,#b7,#f5,#95,#01
	db #00,#d0,#f5,#95,#01,#00,#e1,#f5
	db #95,#01,#00,#d0,#f5,#95,#01,#00
	db #e0,#f6,#80,#95,#04,#00,#fe,#f5
	db #95,#04,#f9,#fe,#f5,#95,#04,#f4
	db #fe,#f5,#95,#04,#f9,#fe,#f5,#82
	db #95,#01,#00,#d0,#f5,#4a,#01,#49
	db #01,#48,#01,#47,#01,#46,#01,#45
	db #01,#44,#01,#43,#01,#42,#01,#41
	db #01,#40,#01,#3f,#01,#3e,#01,#3d
	db #01,#3c,#01,#3b,#01,#87,#4a,#50
	db #ff,#87,#41,#0c,#80,#41,#15,#3e
	db #0f,#41,#0c,#3e,#0c,#3c,#06,#3e
	db #1e,#41,#15,#3e,#0f,#41,#0c,#3e
	db #0c,#3c,#06,#3e,#12,#41,#24,#3e
	db #a8,#41,#15,#3e,#0f,#3c,#0c,#3e
	db #0c,#41,#06,#3e,#1e,#41,#15,#3e
	db #0f,#3c,#0c,#3e,#0c,#41,#06,#43
	db #12,#45,#c0,#94,#87,#41,#0c,#80
	db #3e,#0c,#41,#0c,#3e,#0c,#3c,#0c
	db #3e,#06,#39,#1e,#37,#06,#35,#06
	db #37,#0c,#35,#0c,#37,#0c,#32,#0c
	db #30,#06,#32,#12,#35,#0c,#37,#60
	db #39,#60,#94,#80,#3c,#0c,#3e,#0c
	db #3e,#0c,#3c,#06,#3e,#2a,#3e,#06
	db #3e,#06,#3c,#0c,#3e,#0c,#3e,#0c
	db #3c,#06,#3e,#0c,#3c,#06,#3e,#0c
	db #41,#0c,#43,#0c,#3c,#0c,#3e,#0c
	db #3e,#0c,#3c,#06,#3e,#2a,#3e,#06
	db #3e,#06,#3c,#0c,#3e,#0c,#3e,#0c
	db #3c,#06,#3e,#0c,#3c,#06,#3e,#0c
	db #41,#0c,#43,#0c,#3c,#0c,#3e,#0c
	db #3e,#0c,#3c,#06,#3e,#2a,#3e,#06
	db #3e,#06,#3c,#0c,#3e,#0c,#3e,#0c
	db #3c,#06,#3e,#0c,#3c,#06,#3e,#0c
	db #41,#0c,#43,#0c,#3c,#0c,#3e,#0c
	db #3e,#0c,#3c,#06,#3e,#2a,#3e,#06
	db #3e,#06,#3c,#0c,#3e,#0c,#3e,#0c
	db #3c,#06,#3e,#0c,#3c,#06,#3e,#0c
	db #41,#0c,#43,#0c,#94,#87,#00,#c0
	db #00,#9c,#85,#2b,#0c,#2a,#0c,#29
	db #0c,#82,#95,#06,#f4,#b2,#f5,#95
	db #01,#00,#e0,#f6,#95,#01,#f4,#bb
	db #f7,#95,#01,#f4,#f6,#f7,#95,#01
	db #f4,#1d,#f8,#95,#01,#f4,#bb,#f7
	db #95,#01,#f4,#f6,#f7,#95,#01,#00
	db #e0,#f6,#95,#04,#f4,#bb,#f7,#95
	db #01,#f4,#f6,#f7,#82,#4a,#01,#49
	db #01,#48,#01,#47,#01,#46,#01,#45
	db #01,#44,#01,#43,#01,#42,#01,#41
	db #01,#40,#01,#3f,#01,#3e,#01,#3d
	db #01,#3c,#01,#3b,#01,#87,#4a,#50
	db #4a,#60,#ff,#80,#24,#0c,#24,#0c
	db #24,#06,#24,#0c,#24,#06,#26,#0c
	db #26,#0c,#26,#06,#26,#0c,#26,#06
	db #28,#3c,#fe,#85,#30,#0c,#30,#12
	db #30,#12,#32,#0c,#32,#12,#32,#12
	db #34,#3c,#fe,#80,#34,#0c,#34,#12
	db #34,#12,#36,#0c,#36,#12,#36,#12
	db #38,#3c,#fe,#85,#28,#10,#28,#08
	db #84,#01,#10,#85,#1e,#08,#94,#95
	db #03,#00,#3d,#f9,#85,#28,#08,#fe
	db #86,#0c,#10,#0c,#08,#13,#10,#18
	db #08,#94,#95,#01,#11,#52,#f9,#95
	db #01,#13,#52,#f9,#95,#02,#18,#52
	db #f9,#fe,#80,#0c,#08,#10,#08,#0c
	db #08,#18,#08,#13,#08,#10,#08,#94
	db #80,#35,#30,#37,#30,#3c,#60,#94
	db #95,#01,#1d,#6c,#f9,#95,#01,#1f
	db #6c,#f9,#95,#02,#24,#6c,#f9,#fe
.lf992
	db #9f,#f8,#09,#f7,#de,#f4,#2d,#f9
	db #1d,#f9,#05,#f9,#82,#f9,#5c,#f9
.lf9a6 equ $ + 4
.lf9a2
	db #49,#f9,#00,#00,#6e,#f2,#93,#f2
	db #93,#f2,#a8,#f2,#0d,#f3,#0d,#f3
.lf9b6 equ $ + 4
	db #0d,#f3,#0d,#f3,#0d,#f3,#00,#00
.lf9ba
	db #e8,#f1,#7d,#f0,#42,#f1,#8a,#f0
.lf9c8 equ $ + 6
	db #0a,#f0,#62,#f1,#fd,#f0,#59,#f1
.lf9d1 equ $ + 7
.lf9d0 equ $ + 6
.lf9cf equ $ + 5
.lf9cc equ $ + 2
	db #00,#00,#c3,#bd,#fd,#00,#00,#00
.lf9d5 equ $ + 3
.lf9d3 equ $ + 1
.lf9d2
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf9dd equ $ + 3
.lf9db equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf9e5 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf9ed equ $ + 3
.lf9eb equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lfa05 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lfa4d equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
;
.real_init_music
.lfa95
;
	push de
	push bc
	push hl
	push ix
	push iy
	call lfaa7
	pop iy
	pop ix
	pop hl
	pop bc
	pop de
	ret
.lfaa7
	ld (lf9cf),a
	ld a,c
	ld (lf9d0),a
	ld a,(lf9cf)
	ld iy,lf9e5
	cp #ff
	jp z,lfc74
	dec a
	jp m,lfbd1
	call lfbd1
	ld a,#01
	ld (lf009),a
	call lfb6b
	ld a,(lf9cf)
	dec a
	ld e,a
	add a
	add e
	add a
	ld e,a
	ld d,#00
	ld hl,lf992
	add hl,de
	ex de,hl
	ld hl,lf9a2
	sbc hl,de
	jp c,lfbd1
	ex de,hl
	ld ix,lfa05
	ld b,#03
.lfae8
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),e
	ld (ix+#0d),d
	ld (ix+#0a),#01
	ld de,#0018
	add ix,de
	djnz lfae8
	ret
.lfafe
	push de
	push bc
	push hl
	push ix
	push iy
	call lfb10
	pop iy
	pop ix
	pop hl
	pop bc
	pop de
	ret
.lfb10
	ld iy,lf9d5
	ld ix,lfa4d
	ld (lf9d1),a
	dec a
	jp m,lfc00
	add a
	ld e,a
	ld d,#00
	ld hl,lf9a6
	add hl,de
	ex de,hl
	ld hl,lf9b6
	sbc hl,de
	ret c
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld b,#03
	ld ix,lfa4d
	ld a,(lf9d1)
	ld c,a
	ld de,#0018
.lfb40
	ld a,(ix+#09)
	cp c
	jr nz,lfb50
	ld a,(ix+#05)
	and a
	jr z,lfb50
	inc a
	jp nz,lfc1e
.lfb50
	add ix,de
	djnz lfb40
	ld ix,lfa4d
	ld de,#0004
	add hl,de
	ld c,(hl)
	and a
	sbc hl,de
	call lfbad
	ld a,(ix+#05)
	cp c
	ret nc
	jp lfc1e
.lfb6b
	push ix
	ld ix,lfa4d
	ld hl,lf9dd
	ld a,(lf9d0)
	ld c,a
	xor a
	ld de,#0018
.lfb7c
	dec c
	jp m,lfb87
	ld (ix+#05),#ff
	ld (hl),#00
	inc hl
.lfb87
	add ix,de
	inc a
	cp #03
	jr c,lfb7c
	pop ix
	ret
.lfb91
	push ix
	ld ix,lfa4d
	ld b,#03
	ld de,#0018
.lfb9c
	ld a,(ix+#05)
	inc a
	jr nz,lfba6
	ld (ix+#05),#00
.lfba6
	add ix,de
	djnz lfb9c
	pop ix
	ret
.lfbad
	push iy
	push ix
	pop iy
	ld de,#0018
	ld a,(iy+#05)
	cp (ix+#1d)
	jr c,lfbc0
	add iy,de
.lfbc0
	ld a,(iy+#05)
	cp (ix+#35)
	jr c,lfbca
	add iy,de
.lfbca
	push iy
	pop ix
	pop iy
	ret
.lfbd1
	ld ix,lfa05
	ld b,#03
	ld hl,lf9ed
	ld de,#0018
	ld a,#00
.lfbdf
	ld (hl),a
	inc hl
	ld (ix+#05),a
	ld (ix+#0e),a
	ld (ix+#0f),a
	ld (ix+#13),a
	ld (ix+#14),a
	ld (ix+#06),a
	add ix,de
	djnz lfbdf
	ld (lf9d2),a
	ld (lf009),a
	jp lfb91
.lfc00
	ld b,#03
	ld ix,lfa4d
	ld hl,lf9dd
	ld de,#0018
.lfc0c
	ld (hl),#00
	inc hl
	ld a,(ix+#05)
	inc a
	jr z,lfc19
	ld (ix+#05),#00
.lfc19
	add ix,de
	djnz lfc0c
	ret
.lfc1e
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
	ld a,(lf9d1)
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
.lfc5d
	dec e
	jp m,lfc67
	sla b
	sla c
	jr lfc5d
.lfc67
	ld a,c
	xor b
	ld b,a
	ld a,c
	cpl
	and (iy+#07)
	or b
	ld (iy+#07),a
	ret
.lfc74
	ld a,#10
	ld (lf9d2),a
	ld a,c
	ld (lf9d5),a
	ld a,#00
	ld (lf9d3),a
	ret
.lfc83
	ld a,(lf9d2)
	and a
	ret z
	ld a,(lf9d3)
	dec a
	ld (lf9d3),a
	jp p,lfca8
	ld a,(lf9d5)
	ld (lf9d3),a
	ld a,(lf9d2)
	dec a
	ld (lf9d2),a
	jr nz,lfca8
	ld a,#00
	ld c,#00
	jp lfa95
.lfca8
	ld hl,lf9ed
	ld b,#03
.lfcad
	ld d,(hl)
	ld a,(lf9d2)
	ld e,a
	xor a
	dec e
	jp m,lfcbc
.lfcb7
	add d
	dec e
	jp p,lfcb7
.lfcbc
	srl a
	srl a
	srl a
	srl a
	ld (hl),a
	inc hl
	djnz lfcad
	ret
.lfcc9
	ld b,#03
.lfccb
	ld a,(ix+#05)
	and a
	jp z,lfd70
	inc a
	jp z,lfd70
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(ix+#06)
	add #05
	ld e,a
	ld d,#00
	add hl,de
	bit 0,(ix+#07)
	jr z,lfd29
	ld a,(hl)
	cp #fe
	jr nz,lfd03
	inc (ix+#06)
	inc (ix+#06)
	inc hl
	ld a,(hl)
	push ix
	push bc
	call lfafe
	pop bc
	pop ix
	jr lfccb
.lfd03
	cp #ff
	jr nz,lfd0d
	ld (ix+#06),#00
	jr lfccb
.lfd0d
	ld c,a
	ld a,(ix+#00)
	add #08
	ld (lfd18),a
.lfd18 equ $ + 2
	ld (iy+#00),c
	ld a,c
	and a
	jr nz,lfd23
	ld (ix+#05),#00
	jr lfd70
.lfd23
	ld e,(ix+#08)
	ld d,#00
	add hl,de
.lfd29
	bit 1,(ix+#07)
	jr z,lfd63
	ld e,(hl)
	ld d,#00
	bit 7,e
	jr z,lfd37
	dec d
.lfd37
	push hl
	ld l,(ix+#01)
	ld h,(ix+#02)
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	pop hl
	ld a,(ix+#00)
	add a
	ld (lfd56),a
	inc a
	ld (lfd5c),a
	ld a,(ix+#01)
.lfd56 equ $ + 2
	ld (iy+#00),a
	ld a,(ix+#02)
.lfd5c equ $ + 2
	ld (iy+#00),a
	ld e,(ix+#08)
	ld d,#00
	add hl,de
.lfd63
	bit 2,(ix+#07)
	jr z,lfd6d
	ld a,(hl)
	ld (iy+#06),a
.lfd6d
	inc (ix+#06)
.lfd70
	ld de,#0018
	add ix,de
	dec b
	jp nz,lfccb
	ret
;
.play_music
.lfd7a
;
	ld (lffeb),sp
	ld sp,lffeb
	push af
	push bc
	push de
	push hl
	push ix
	push iy
.lfd89
	call lff6a
	ld a,#ff
	ld (lf9db),a
	ld (lf9eb),a
	ld iy,lf9e5
	ld ix,lfa05
	call lfcc9
	ld iy,lf9d5
	ld ix,lfa4d
	call lfcc9
	call lfc83
	call lfddd
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ld sp,(lffeb)
	ret
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
.lfddd
	ld iy,lf9d5
	ld ix,lfa05
	ld e,#00
	call lfe66
	ld e,#01
	call lfe66
	ld e,#08
	call lfe66
	ld bc,#0018
	add ix,bc
	ld e,#02
	call lfe66
	ld e,#03
	call lfe66
	ld e,#09
	call lfe66
	ld bc,#0018
	add ix,bc
	ld e,#04
	call lfe66
	ld e,#05
	call lfe66
	ld e,#0a
	call lfe66
	ld e,#06
	ld a,(iy+#06)
	cp #ff
	jr nz,lfe2c
	ld a,(iy+#16)
	cp #ff
	jr z,lfe30
.lfe2c
	ld d,a
	call lf9cc
.lfe30
	ld ix,lfa05
	ld b,#03
	ld c,#09
	ld h,#00
	ld de,#0018
.lfe3d
	ld l,(iy+#17)
	ld a,(ix+#4d)
	and a
	jr z,lfe4e
	inc a
	jr z,lfe4e
	ld l,(iy+#07)
	jr lfe56
.lfe4e
	ld a,(ix+#05)
	and a
	jr nz,lfe56
	ld l,#ff
.lfe56
	ld a,l
	and c
	sla c
	or h
	ld h,a
	add ix,de
	djnz lfe3d
	ld d,h
	ld e,#07
	jp lf9cc
.lfe66
	ld a,e
	ld (lfe7d),a
	add #10
	ld (lfe71),a
.lfe71 equ $ + 2
	ld d,(iy+#00)
	ld a,(ix+#4d)
	and a
	jr z,lfe7e
	inc a
	jr z,lfe7e
.lfe7d equ $ + 2
	ld d,(iy+#00)
.lfe7e
	jp lf9cc
.lfe81
	push ix
	pop iy
	ld a,(ix+#13)
	and a
	jr z,lfe90
	ld de,#0006
	add iy,de
.lfe90
	ld l,(iy+#0c)
	ld h,(iy+#0d)
	ld e,(iy+#0e)
	ld d,#00
	add hl,de
	bit 7,(hl)
	jr nz,lfea7
	inc (iy+#0e)
	inc (iy+#0e)
	ret
.lfea7
	ld a,(hl)
	cp #94
	jp z,lfef7
	cp #95
	jp z,lff08
	cp #9d
	jp z,lff2b
	cp #9e
	jp z,lff3f
	cp #ff
	jp z,lff53
	cp #fe
	jp z,lff62
	res 7,a
	add a
	ld e,a
	ld d,#00
	ld hl,lf9ba
	add hl,de
	ex de,hl
	ld hl,lf9c8
	sbc hl,de
	jr nc,lfedb
	ld de,lf9ba
.lfedb
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	push bc
	push iy
	ld iy,lf9e5
	call lfc1e
	ld (ix+#09),#ff
	pop iy
	pop bc
	inc (iy+#0e)
	jp lfe81
.lfef7
	ld (iy+#0e),#00
	dec (ix+#0b)
	jp nz,lfe81
	ld (ix+#13),#00
	jp lfe81
.lff08
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
	jp lfe81
.lff2b
	dec (iy+#0f)
	jr nz,lff36
	inc (iy+#0e)
	jp lfe81
.lff36
	ld a,(iy+#10)
	ld (iy+#0e),a
	jp lfe81
.lff3f
	inc (iy+#0e)
	inc (iy+#0e)
	ld a,(iy+#0e)
	ld (iy+#10),a
	inc hl
	ld a,(hl)
	ld (iy+#0f),a
	jp lfe81
.lff53
	pop bc
	pop bc
	ld a,(lf9d0)
	ld c,a
	ld a,(lf9cf)
	call lfa95
	jp lfd89
.lff62
	pop bc
	pop bc
	call lfbd1
	jp lfd89
.lff6a
	ld a,(lf009)
	and a
	ret z
	ld ix,lfa05
	ld b,#03
.lff75
	dec (ix+#0a)
	jr nz,lffa7
	call lfe81
	ld a,(hl)
	and a
	jr z,lff84
	add (iy+#11)
.lff84
	add a
	ld e,a
	ld d,#00
	ld iy,lf392
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
.lffa7
	ld de,#0018
	add ix,de
	djnz lff75
	ret
;
; #0261
; ld a,#01
; ld c,#03
; call #f003	; init main theme
;
; #0279
; ld a,#ff
; ld c,#03
; call #f003	; end music ?
;
; #028c
; ld a,#02	; end
; ld c,#03
; call #f003
;
; #02b4
; .l02b4
; ld a,(#f009)
; and a
; jr nz,l02b4
; ld a,#01
; ld c,#02
; call #f003
;
; init a=1,2,3
;
.init_music	; added by Megachur
;
	inc a
	ld c,#03
	jp lfa95
;
.music_info
	db "Dynasty Wars (1990)(U.S.Gold)()",0
	db "",0

	read "music_end.asm"
