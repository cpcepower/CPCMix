; Music of E-Motion (1990)(U.S.Gold)()()
; Ripped by Megachur the 25/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "EMOTION.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #6469
FIRST_THEME				equ 1
LAST_THEME				equ 3	; 1 -> 3

	read "music_header.asm"

; 16/12/2008 - a call to init music was missing !
; 20/09/2017 - missing datas added !

.l6469
	db #0d,#37,#1a,#01,#01,#06,#06
	db #06,#06,#05,#05,#05,#05,#04,#04
	db #04,#04,#03,#03,#03,#03,#02,#02
	db #02,#02,#01,#01,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#17,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#00,#18,#05
	db #1a,#07,#1c,#09,#14,#0b,#16,#0d
	db #18,#0f,#1a,#11,#1c,#12,#18,#18
	db #18,#14,#15,#0b,#0c,#0c,#17,#0d
	db #18,#0e,#18,#0e,#18,#0a,#1e,#0a
	db #1e,#0a,#0a,#1e,#0a,#1e,#0a,#1e
	db #0a,#1e,#0a,#1e,#0a,#1e,#0a,#1e
.l64dc equ $ + 4
	db #0a,#1e,#0a,#1e,#0d,#04,#1a,#01
	db #01,#06,#02,#00,#00,#04,#04,#04
.l64e9 equ $ + 1
	db #04,#13,#78,#01,#01,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#07,#07,#07,#07,#07,#06
	db #06,#06,#06,#06,#06,#06,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#01,#ff
	db #ff,#ff,#ff,#01,#01,#00,#01,#01
	db #ff,#ff,#ff,#ff,#01,#01,#00,#01
	db #01,#ff,#ff,#ff,#ff,#01,#01,#00
	db #01,#01,#ff,#ff,#ff,#ff,#01,#01
	db #00,#01,#01,#ff,#ff,#ff,#ff,#01
	db #01,#00,#01,#01,#ff,#ff,#ff,#ff
	db #01,#01,#00,#01,#01,#ff,#ff,#ff
	db #ff,#01,#01,#00,#01,#01,#ff,#ff
	db #ff,#ff,#01,#01,#00,#01,#01,#ff
	db #ff,#ff,#ff,#01,#01,#00,#01,#01
	db #ff,#ff,#ff,#ff,#01,#01,#00,#01
	db #01,#ff,#ff,#ff,#ff,#01,#01,#00
	db #01,#01,#ff,#ff,#ff,#ff,#01,#01
	db #00,#01,#01,#ff,#ff,#ff,#ff,#01
	db #01,#00,#01,#01,#ff,#ff,#ff,#ff
	db #01,#01,#00,#01,#01,#ff,#ff,#ff
	db #ff,#01,#01,#00,#01,#01,#ff,#ff
	db #ff,#ff,#01,#01,#00,#08,#08,#f8
.l65ff equ $ + 7
	db #f8,#00,#f8,#f8,#08,#08,#00,#13
	db #39,#01,#01,#01,#08,#08,#08,#08
	db #07,#07,#07,#07,#06,#06,#06,#06
	db #05,#05,#05,#05,#04,#04,#04,#04
	db #03,#03,#03,#03,#02,#02,#02,#02
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#50,#50,#50
	db #50,#50,#50,#50,#50,#50,#50,#50
	db #50,#50,#50,#50,#50,#50,#50,#50
	db #50,#50,#50,#50,#50,#50,#50,#50
	db #50,#50,#50,#50,#50,#50,#50,#50
	db #50,#50,#50,#50,#50,#50,#50,#50
	db #50,#50,#50,#50,#50,#50,#50,#50
	db #50,#50,#50,#50,#50,#50,#50,#50
	db #50,#50,#50,#50,#50,#50,#50,#50
	db #50,#50,#50,#50,#50,#0d,#20,#01
	db #01,#04,#03,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0b,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#10,#01,#01,#01,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#03
	db #03,#0d,#20,#01,#01,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#15,#14,#14
	db #14,#14,#14,#14,#14,#14,#14,#14
	db #14,#14,#14,#14,#14,#10,#11,#12
	db #13,#14,#15,#16,#17,#18,#19,#1a
.l670d equ $ + 5
	db #1b,#1c,#1d,#1e,#1f,#13,#20,#01
	db #01,#08,#08,#07,#07,#06,#06,#05
	db #05,#04,#04,#03,#03,#02,#02,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#01,#00,#ff,#00,#ff
	db #00,#ff,#00,#ff,#00,#01,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6751 equ $ + 1
	db #00,#13,#09,#01,#01,#05,#05,#05
	db #05,#05,#05,#05,#05,#ff,#02,#02
	db #fe,#fe,#fe,#fe,#02,#02,#00,#13
	db #09,#01,#01,#06,#06,#05,#05,#04
	db #04,#05,#05,#ff,#01,#01,#ff,#ff
.l677d equ $ + 5
	db #ff,#ff,#01,#01,#00,#13,#02,#01
.l6785 equ $ + 5
	db #01,#00,#00,#00,#00,#13,#09,#01
	db #01,#07,#07,#06,#06,#07,#07,#06
	db #06,#ff,#ff,#01,#01,#ff,#ff,#01
.l679b equ $ + 3
	db #01,#ff,#00,#13,#39,#01,#01,#09
	db #09,#09,#09,#08,#08,#08,#08,#07
	db #07,#07,#07,#06,#06,#06,#06,#05
	db #05,#05,#05,#04,#04,#04,#04,#03
	db #03,#03,#03,#02,#02,#02,#02,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#ff
	db #01,#01,#ff,#ff,#ff,#ff,#01,#01
	db #00,#01,#01,#ff,#ff,#ff,#ff,#01
	db #01,#00,#01,#01,#ff,#ff,#ff,#ff
	db #01,#01,#00,#01,#01,#ff,#ff,#ff
	db #ff,#01,#01,#00,#01,#01,#ff,#ff
	db #ff,#ff,#01,#01,#00,#01,#01,#ff
	db #ff,#ff,#ff,#01,#01,#00,#01,#01
	db #ff,#ff,#ff,#ff,#01,#01,#00,#01
	db #01,#ff,#ff,#ff,#ff,#01,#01,#00
.l6820
	db #13,#14,#60,#09,#01,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#09,#09,#08,#08
	db #08,#07,#07,#06,#05,#04,#03,#01
	db #00,#e2,#d8,#e2,#e7,#ce,#e2,#ec
	db #f1,#ec,#ec,#ec,#e7,#d8,#e2,#ec
.l684d equ $ + 5
	db #e7,#e2,#ec,#e7,#ec,#13,#14,#d0
	db #07,#01,#0b,#0b,#0b,#0a,#0a,#0a
	db #0a,#09,#09,#08,#08,#08,#07,#07
	db #06,#05,#04,#03,#01,#00,#e2,#d8
	db #e2,#e7,#ce,#e2,#ec,#f1,#ec,#ec
	db #ec,#e7,#d8,#e2,#ec,#e7,#e2,#ec
.l687a equ $ + 2
	db #e7,#ec,#13,#14,#40,#06,#01,#0b
	db #0b,#0b,#0a,#0a,#0a,#0a,#09,#09
	db #08,#08,#08,#07,#07,#06,#05,#04
	db #03,#01,#00,#e2,#d8,#e2,#e7,#ce
	db #e2,#ec,#f1,#ec,#ec,#ec,#e7,#d8
.l68a7 equ $ + 7
	db #e2,#ec,#e7,#e2,#ec,#e7,#ec,#13
	db #14,#b0,#04,#01,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#09,#09,#08,#08,#08
	db #07,#07,#06,#05,#04,#03,#01,#00
	db #e2,#d8,#e2,#e7,#ce,#e2,#ec,#f1
	db #ec,#ec,#ec,#e7,#d8,#e2,#ec,#e7
.l68d4 equ $ + 4
	db #e2,#ec,#e7,#ec,#13,#14,#84,#03
	db #01,#0b,#0b,#0b,#0a,#0a,#0a,#0a
	db #09,#09,#08,#08,#08,#07,#07,#06
	db #05,#04,#03,#01,#00,#e2,#d8,#e2
	db #e7,#ce,#e2,#ec,#f1,#ec,#ec,#ec
	db #e7,#d8,#e2,#ec,#e7,#e2,#ec,#e7
.l6901 equ $ + 1
	db #ec,#13,#14,#20,#03,#01,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#09,#09,#08
	db #08,#08,#07,#07,#06,#05,#04,#03
	db #01,#00,#e2,#d8,#e2,#e7,#ce,#e2
	db #ec,#f1,#ec,#ec,#ec,#e7,#d8,#e2
.l692e equ $ + 6
	db #ec,#e7,#e2,#ec,#e7,#ec,#13,#14
	db #6c,#02,#01,#0b,#0b,#0b,#0a,#0a
	db #0a,#0a,#09,#09,#08,#08,#08,#07
	db #07,#06,#05,#04,#03,#01,#00,#e2
	db #d8,#e2,#e7,#ce,#e2,#ec,#f1,#ec
	db #ec,#ec,#e7,#d8,#e2,#ec,#e7,#e2
.l695b equ $ + 3
	db #ec,#e7,#ec,#13,#14,#58,#02,#01
	db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#09
	db #09,#08,#08,#08,#07,#07,#06,#05
	db #04,#03,#01,#00,#e2,#d8,#e2,#e7
	db #ce,#e2,#ec,#f1,#ec,#ec,#ec,#e7
	db #d8,#e2,#ec,#e7,#e2,#ec,#e7,#ec
.l6988
	db #13,#14,#26,#02,#01,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#09,#09,#08,#08
	db #08,#07,#07,#06,#05,#04,#03,#01
	db #00,#e2,#d8,#e2,#e7,#ce,#e2,#ec
	db #f1,#ec,#ec,#ec,#e7,#d8,#e2,#ec
.l69b5 equ $ + 5
	db #e7,#e2,#ec,#e7,#ec,#0d,#64,#01
	db #00,#02,#fe,#0b,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0b
	db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#07,#07,#07,#07,#07,#07,#07
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#05,#05,#05,#05,#05,#05
	db #05,#05,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#03,#02,#02,#01
	db #00,#01,#02,#03,#fa,#02,#04,#06
	db #f4,#01,#02,#03,#04,#05,#f1,#05
	db #fb,#03,#03,#fb,#ff,#01,#02,#03
	db #fa,#02,#04,#06,#f4,#01,#02,#03
	db #04,#05,#f1,#05,#fb,#03,#03,#fb
	db #ff,#01,#02,#03,#fa,#02,#04,#06
	db #f4,#01,#02,#03,#04,#05,#f1,#05
	db #fb,#03,#03,#fb,#ff,#01,#02,#03
	db #fa,#02,#04,#06,#f4,#01,#02,#03
	db #04,#05,#f1,#05,#fb,#03,#03,#fb
	db #ff,#01,#02,#03,#fa,#02,#04,#06
	db #f4,#01,#02,#03,#04,#05,#f1,#05
.l6a85 equ $ + 5
	db #fb,#03,#03,#fb,#ff,#13,#64,#00
	db #00,#64,#02,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0b,#0b
	db #0b,#0b,#0b,#0b,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #07,#07,#07,#07,#07,#07,#07,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#05,#05,#05,#05,#05,#05,#05
	db #05,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#02,#02,#01,#00
	db #0a,#14,#1e,#28,#ba,#0a,#14,#1e
	db #28,#ba,#0a,#14,#1e,#28,#ba,#0a
	db #14,#1e,#28,#ba,#0a,#14,#1e,#28
	db #ba,#0a,#14,#1e,#28,#ba,#0a,#14
	db #1e,#28,#ba,#0a,#14,#1e,#28,#ba
	db #0a,#14,#1e,#28,#ba,#0a,#14,#1e
	db #28,#ba,#0a,#14,#1e,#28,#ba,#0a
	db #14,#1e,#28,#ba,#0a,#14,#1e,#28
	db #ba,#0a,#14,#1e,#28,#ba,#0a,#14
	db #1e,#28,#ba,#0a,#14,#1e,#28,#ba
	db #0a,#14,#1e,#28,#ba,#0a,#14,#1e
	db #28,#ba,#0a,#14,#1e,#28,#ba,#0a
.l6b54 equ $ + 4
	db #14,#1e,#28,#ba,#13,#14,#e8,#03
	db #01,#fe,#0d,#0b,#0b,#0b,#0a,#0a
	db #0a,#0a,#09,#09,#08,#08,#08,#07
	db #07,#06,#05,#04,#03,#01,#00,#f6
	db #f1,#ec,#e2,#f6,#f1,#ec,#e2,#f6
	db #f1,#ec,#e2,#f6,#f1,#ec,#e2,#f6
.l6b83 equ $ + 3
	db #f1,#ec,#e2,#0d,#14,#1f,#00,#01
	db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#09
	db #09,#08,#08,#08,#07,#07,#06,#05
	db #04,#03,#01,#00,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
.l6bb0
	db #0d,#0f,#02,#00,#01,#fe,#0f,#01
	db #01,#02,#02,#03,#03,#04,#05,#06
	db #06,#07,#08,#09,#0a,#0b,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
.l6bd6 equ $ + 6
	db #01,#01,#01,#01,#01,#01,#13,#0f
	db #08,#07,#01,#01,#01,#02,#02,#03
	db #03,#04,#05,#06,#06,#07,#08,#09
	db #0a,#0b,#00,#9c,#9c,#9c,#9c,#9c
	db #9c,#9c,#9c,#9c,#9c,#9c,#9c,#9c
	db #9c,#9c
.l6bfa
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
	db #86,#85,#28,#0c,#81,#01,#0c,#85
	db #28,#0c,#84,#01,#30,#84,#01,#0c
	db #85,#28,#0c,#81,#01,#0c,#85,#28
	db #18,#84,#01,#18,#81,#01,#0c,#84
	db #01,#0c,#85,#28,#0c,#81,#01,#0c
	db #85,#28,#0c,#84,#01,#18,#81,#01
	db #0c,#84,#01,#24,#85,#28,#0c,#81
	db #01,#0c,#85,#28,#0c,#84,#01,#18
	db #84,#01,#18,#85,#28,#0c,#81,#01
	db #0c,#85,#28,#0c,#84,#01,#18,#81
	db #01,#0c,#84,#01,#24,#85,#28,#0c
	db #81,#01,#0c,#85,#28,#0c,#84,#01
	db #18,#81,#01,#0c,#84,#01,#0c,#85
	db #28,#0c,#81,#01,#0c,#85,#28,#0c
	db #81,#01,#0c,#84,#01,#18,#81,#01
	db #0c,#84,#01,#18,#85,#28,#0c,#81
	db #01,#0c,#85,#28,#0c,#84,#01,#18
	db #81,#01,#0c,#84,#01,#0c,#85,#28
	db #0c,#94,#81,#01,#0c,#85,#28,#0c
	db #81,#01,#0c,#84,#01,#18,#81,#01
	db #0c,#84,#01,#0c,#85,#28,#0c,#81
	db #01,#18,#85,#28,#0c,#84,#01,#18
	db #84,#01,#0c,#81,#01,#0c,#85,#28
	db #0c,#81,#01,#18,#85,#28,#0c,#84
	db #01,#18,#81,#01,#0c,#84,#01,#0c
	db #85,#28,#0c,#81,#01,#0c,#85,#28
	db #0c,#84,#01,#18,#84,#01,#0c,#81
	db #01,#0c,#84,#01,#0c,#85,#28,#0c
	db #81,#01,#0c,#84,#01,#0c,#81,#01
	db #0c,#85,#28,#0c,#81,#01,#0c,#84
	db #01,#0c,#81,#01,#0c,#85,#28,#0c
	db #81,#01,#0c,#84,#01,#0c,#81,#01
	db #0c,#85,#28,#0c,#81,#01,#0c,#84
	db #01,#0c,#81,#01,#0c,#85,#28,#0c
	db #81,#01,#0c,#84,#01,#0c,#81,#01
	db #0c,#85,#28,#0c,#81,#01,#0c,#84
	db #01,#0c,#81,#01,#0c,#85,#28,#0c
	db #81,#01,#0c,#84,#01,#0c,#81,#01
	db #0c,#85,#28,#0c,#81,#01,#0c,#84
	db #01,#0c,#81,#01,#0c,#ff
.l6e10
	db #95,#01,#e8,#d2,#6c,#95,#01,#e8
	db #64,#6d,#ff,#80,#42,#18,#4e,#0c
	db #42,#18,#42,#0c,#4e,#24,#42,#0c
	db #4e,#18,#42,#18,#4e,#18,#40,#18
	db #4c,#0c,#40,#18,#40,#0c,#4c,#24
	db #40,#0c,#4c,#18,#40,#18,#4c,#18
	db #42,#18,#4e,#0c,#42,#18,#42,#0c
	db #4e,#24,#42,#0c,#4e,#18,#42,#18
	db #4e,#18,#40,#18,#4c,#0c,#40,#18
	db #40,#0c,#4c,#24,#40,#0c,#4c,#18
	db #40,#18,#4c,#18,#42,#24,#42,#0c
	db #4e,#18,#42,#18,#94,#40,#24,#4c
	db #24,#40,#18,#3e,#24,#3e,#0c,#4a
	db #18,#3e,#18,#3d,#24,#49,#18,#49
	db #0c,#3d,#0c,#49,#0c,#42,#0c,#4e
	db #0c,#42,#0c,#4e,#0c,#42,#0c,#4e
	db #0c,#42,#0c,#4e,#0c,#3e,#0c,#4a
	db #0c,#3e,#0c,#4a,#0c,#3e,#0c,#4a
	db #0c,#3e,#0c,#4a,#0c,#40,#0c,#4c
	db #0c,#40,#0c,#4c,#0c,#40,#0c,#4c
	db #0c,#40,#0c,#4c,#0c,#3d,#0c,#49
	db #0c,#3d,#0c,#49,#0c,#3d,#0c,#49
	db #0c,#3d,#0c,#49,#0c,#ff,#94
.l6ec7
	db #95,#01,#dc,#1b,#6e,#95,#01,#dc
	db #6d,#6e,#ff,#80,#42,#0c,#44,#0c
	db #45,#0c,#42,#18,#45,#0c,#44,#0c
	db #45,#18,#42,#0c,#47,#0c,#45,#0c
	db #42,#0c,#3d,#0c,#40,#0c,#42,#0c
	db #44,#0c,#45,#0c,#47,#0c,#40,#0c
	db #42,#0c,#44,#0c,#42,#0c,#40,#0c
	db #44,#0c,#45,#0c,#47,#0c,#47,#18
	db #40,#18,#40,#0c,#42,#0c,#45,#0c
	db #47,#0c,#48,#0c,#47,#0c,#45,#0c
	db #40,#0c,#42,#18,#45,#0c,#47,#0c
	db #45,#18,#44,#0c,#42,#0c,#45,#0c
	db #44,#0c,#40,#0c,#3d,#0c,#3e,#0c
	db #40,#0c,#44,#18,#94,#44,#18,#40
	db #0c,#3d,#0c,#3e,#0c,#40,#0c,#44
	db #18,#45,#0c,#42,#24,#42,#0c,#45
	db #18,#42,#18,#40,#0c,#42,#0c,#44
	db #0c,#45,#0c,#47,#18,#44,#18,#3e
	db #0c,#42,#0c,#45,#0c,#47,#0c,#48
	db #0c,#47,#0c,#45,#18,#47,#0c,#45
	db #0c,#44,#0c,#40,#0c,#3d,#18,#44
	db #18,#42,#0c,#42,#0c,#45,#0c,#45
	db #0c,#42,#18,#45,#18,#42,#0c,#42
	db #0c,#45,#0c,#45,#0c,#42,#18,#45
	db #18,#40,#0c,#40,#0c,#44,#0c,#44
	db #0c,#40,#18,#44,#18,#47,#0c,#45
	db #0c,#44,#0c,#45,#0c,#44,#0c,#40
	db #0c,#3d,#0c,#40,#0c,#ff
.l6fa5
	db #95,#01,#00,#d2,#6e,#95,#01,#00
	db #34,#6f,#ff,#86,#0c,#06,#81,#01
	db #06,#01,#06,#01,#06,#94,#86,#0c
	db #06,#81,#01,#06,#01,#06,#01,#06
	db #84,#01,#18,#86,#0c,#06,#81,#01
	db #06,#01,#06,#01,#06,#84,#01,#18
	db #94
.l6fd6
	db #95,#10,#00,#b0,#6f,#95,#0c,#00
	db #bb,#6f,#ff,#80,#3c,#0c,#48,#0c
	db #94
.l6fe7
	db #95,#04,#d9,#e1,#6f,#95,#04,#dc
	db #e1,#6f,#95,#04,#de,#e1,#6f,#95
	db #02,#e0,#e1,#6f,#95,#01,#e1,#e1
	db #6f,#95,#01,#e3,#e1,#6f,#95,#10
	db #e5,#e1,#6f,#ff,#4f,#0c,#4d,#0c
	db #4a,#0c,#51,#0c,#4f,#0c,#4d,#0c
	db #4a,#0c,#51,#0c,#94
.l701c
	db #80,#2d,#60,#30,#60,#32,#60,#34
	db #30,#35,#18,#37,#18,#39,#c0,#39
	db #c0,#ff,#80,#18,#02,#1c,#02,#1f
	db #02,#1c,#02,#1f,#02,#24,#02,#1f
	db #02,#24,#02,#28,#02,#24,#02,#28
	db #02,#2b,#02,#28,#02,#2b,#02,#30
	db #02,#2b,#02,#30,#02,#34,#02,#30
	db #02,#34,#02,#37,#02,#34,#02,#37
	db #02,#3c,#02,#37,#02,#3c,#02,#40
	db #02,#3c,#02,#40,#02,#43,#40,#94
.l706c
	db #00,#08
.l706e
	db #00,#04
.l7070
	db #95,#01,#00,#2e,#70,#fe
.l7076
	dw l6fa5,l6ec7,l6e10,l701c
	dw l6fe7,l6fd6,l706c,l706e
.l7086
	dw l7070,#0000
.l708a
	dw l6820,l684d,l687a,l68a7
	dw l68d4,l6901,l692e,l695b
	dw l6988,l69b5,l6a85,l6b54
.l70a6 equ $ + 4
	dw l6b83,l6bb0,l6bd6,#0000
.l70aa
	dw l679b,l64dc,l6751,#0000
	dw l6469,l65ff,l670d,l677d
	dw l64e9,#0000,#0000,#0000
.l70c4 equ $ + 2
	dw #0000,l6785,#0000
.l70c8
	jp l74d5
.l70cb
	db #00
.l70cc
	db #00
.l70cd
	db #00
.l70ce
	db #00
.l70cf
	db #00
.l70d0
	db #00,#00
.l70d2
	db #74,#00,#00,#00,#00,#00
.l70d8
	db #00,#00
.l70da
	db #10,#11,#00,#08,#02,#00,#06,#0c
.l70e8 equ $ + 6
.l70e2
	db #00,#01,#f0,#00,#01,#f0,#00,#06
.l70ea
	db #0c,#00,#08,#82,#00,#14,#01,#00
.l70f2
	db #13,#01,#00,#23,#c0,#80,#29,#f0
	db #80,#21,#fc,#80,#28,#fe,#80,#00
.l7102
	db #00,#80,#10,#75,#00,#10,#69,#00
	db #00,#22,#00,#06,#0c,#00,#01,#f0
	db #00,#01,#f0,#00,#06,#0c,#00,#01
	db #01,#00,#11,#01,#00,#15,#81,#01
	db #01,#c0,#80,#29,#e0,#80,#21,#f0
	db #80,#29,#f8,#80,#21,#fc,#80,#02
	db #02,#00,#11,#09,#00,#08,#02,#02
	db #02,#0c,#00,#01,#f0,#00,#00,#7c
	db #00,#01,#83,#00,#02,#10,#80,#00
.l714a
	db #00,#40,#05,#38,#40,#09,#38,#00
	db #00,#38,#20,#08,#7c,#20,#0a,#7c
	db #20,#08,#fe,#20,#04,#ee,#40,#01
	db #01,#40,#02,#00,#80,#01,#83,#01
	db #01,#7c,#00,#00,#7c,#00,#01,#83
	db #00,#02,#20,#80,#04,#84,#40,#02
	db #02,#40,#09,#1c,#20,#0a,#3c,#02
	db #02,#7c,#20,#08,#fc,#20,#09,#fc
	db #20,#04,#1d,#40,#04,#04,#40,#d5
;
.real_init_music
.l7192
;
	push de
	push bc
	push hl
	push ix
	push iy
	call l71a4
	pop iy
	pop ix
	pop hl
	pop bc
	pop de
	ret
.l71a4
	ld (l70cc),a
	ld a,c
	ld (l70cd),a
	ld a,(l70cc)
	ld iy,l70e2
	cp #ff
	jp z,l7371
	dec a
	jp m,l72ce
	call l72ce
	ld a,#01
	ld (l70cb),a
	call l7268
	ld a,(l70cc)
	dec a
	ld e,a
	add a
	add e
	add a
	ld e,a
	ld d,#00
	ld hl,l7076
	add hl,de
	ex de,hl
	ld hl,l7086
	sbc hl,de
	jp c,l72ce
	ex de,hl
	ld ix,l7102
	ld b,#03
.l71e5
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),e
	ld (ix+#0d),d
	ld (ix+#0a),#01
	ld de,#0018
	add ix,de
	djnz l71e5
	ret
.l71fb
	push de
	push bc
	push hl
	push ix
	push iy
	call l720d
	pop iy
	pop ix
	pop hl
	pop bc
	pop de
	ret
.l720d
	ld iy,l70d2
	ld ix,l714a
	ld (l70ce),a
	dec a
	jp m,l72fd
	add a
	ld e,a
	ld d,#00
	ld hl,l708a
	add hl,de
	ex de,hl
	ld hl,l70a6
	sbc hl,de
	ret c
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld b,#03
	ld ix,l714a
	ld a,(l70ce)
	ld c,a
	ld de,#0018
.l723d
	ld a,(ix+#09)
	cp c
	jr nz,l724d
	ld a,(ix+#05)
	and a
	jr z,l724d
	inc a
	jp nz,l731b
.l724d
	add ix,de
	djnz l723d
	ld ix,l714a
	ld de,#0004
	add hl,de
	ld c,(hl)
	and a
	sbc hl,de
	call l72aa
	ld a,(ix+#05)
	cp c
	ret nc
	jp l731b
.l7268
	push ix
	ld ix,l714a
	ld hl,l70da
	ld a,(l70cd)
	ld c,a
	xor a
	ld de,#0018
.l7279
	dec c
	jp m,l7284
	ld (ix+#05),#ff
	ld (hl),#00
	inc hl
.l7284
	add ix,de
	inc a
	cp #03
	jr c,l7279
	pop ix
	ret
.l728e
	push ix
	ld ix,l714a
	ld b,#03
	ld de,#0018
.l7299
	ld a,(ix+#05)
	inc a
	jr nz,l72a3
	ld (ix+#05),#00
.l72a3
	add ix,de
	djnz l7299
	pop ix
	ret
.l72aa
	push iy
	push ix
	pop iy
	ld de,#0018
	ld a,(iy+#05)
	cp (ix+#1d)
	jr c,l72bd
	add iy,de
.l72bd
	ld a,(iy+#05)
	cp (ix+#35)
	jr c,l72c7
	add iy,de
.l72c7
	push iy
	pop ix
	pop iy
	ret
.l72ce
	ld ix,l7102
	ld b,#03
	ld hl,l70ea
	ld de,#0018
	ld a,#00
.l72dc
	ld (hl),a
	inc hl
	ld (ix+#05),a
	ld (ix+#0e),a
	ld (ix+#0f),a
	ld (ix+#13),a
	ld (ix+#14),a
	ld (ix+#06),a
	add ix,de
	djnz l72dc
	ld (l70cf),a
	ld (l70cb),a
	jp l728e
.l72fd
	ld b,#03
	ld ix,l714a
	ld hl,l70da
	ld de,#0018
.l7309
	ld (hl),#00
	inc hl
	ld a,(ix+#05)
	inc a
	jr z,l7316
	ld (ix+#05),#00
.l7316
	add ix,de
	djnz l7309
	ret
.l731b
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
	ld a,(l70ce)
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
.l735a
	dec e
	jp m,l7364
	sla b
	sla c
	jr l735a
.l7364
	ld a,c
	xor b
	ld b,a
	ld a,c
	cpl
	and (iy+#07)
	or b
	ld (iy+#07),a
	ret
.l7371
	ld a,#10
	ld (l70cf),a
	ld a,c
	ld (l70d2),a
	ld a,#00
	ld (l70d0),a
	ret
.l7380
	ld a,(l70cf)
	and a
	ret z
	ld a,(l70d0)
	dec a
	ld (l70d0),a
	jp p,l73a5
	ld a,(l70d2)
	ld (l70d0),a
	ld a,(l70cf)
	dec a
	ld (l70cf),a
	jr nz,l73a5
	ld a,#00
	ld c,#00
	jp l7192
.l73a5
	ld hl,l70ea
	ld b,#03
.l73aa
	ld d,(hl)
	ld a,(l70cf)
	ld e,a
	xor a
	dec e
	jp m,l73b9
.l73b4
	add d
	dec e
	jp p,l73b4
.l73b9
	srl a
	srl a
	srl a
	srl a
	ld (hl),a
	inc hl
	djnz l73aa
	ret
.l73c6
	ld b,#03
.l73c8
	ld a,(ix+#05)
	and a
	jp z,l746d
	inc a
	jp z,l746d
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(ix+#06)
	add #05
	ld e,a
	ld d,#00
	add hl,de
	bit 0,(ix+#07)
	jr z,l7426
	ld a,(hl)
	cp #fe
	jr nz,l7400
	inc (ix+#06)
	inc (ix+#06)
	inc hl
	ld a,(hl)
	push ix
	push bc
	call l71fb
	pop bc
	pop ix
	jr l73c8
.l7400
	cp #ff
	jr nz,l740a
	ld (ix+#06),#00
	jr l73c8
.l740a
	ld c,a
	ld a,(ix+#00)
	add #08
	ld (l7415),a
.l7415 equ $ + 2
	ld (iy+#00),c
	ld a,c
	and a
	jr nz,l7420
	ld (ix+#05),#00
	jr l746d
.l7420
	ld e,(ix+#08)
	ld d,#00
	add hl,de
.l7426
	bit 1,(ix+#07)
	jr z,l7460
	ld e,(hl)
	ld d,#00
	bit 7,e
	jr z,l7434
	dec d
.l7434
	push hl
	ld l,(ix+#01)
	ld h,(ix+#02)
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	pop hl
	ld a,(ix+#00)
	add a
	ld (l7453),a
	inc a
	ld (l7459),a
	ld a,(ix+#01)
.l7453 equ $ + 2
	ld (iy+#00),a
	ld a,(ix+#02)
.l7459 equ $ + 2
	ld (iy+#00),a
	ld e,(ix+#08)
	ld d,#00
	add hl,de
.l7460
	bit 2,(ix+#07)
	jr z,l746a
	ld a,(hl)
	ld (iy+#06),a
.l746a
	inc (ix+#06)
.l746d
	ld de,#0018
	add ix,de
	dec b
	jp nz,l73c8
	ret
;
.play_music
;
	push af
	push bc
	push de
	push hl
	push ix
	push iy
.l747f
	call l7682
	ld a,#ff
	ld (l70d8),a
	ld (l70e8),a
	ld iy,l70e2
	ld ix,l7102
	call l73c6
	ld iy,l70d2
	ld ix,l714a
	call l73c6
	call l7380
	call l74f5
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
	ld a,e
	cp #08
	jr c,l74ba
	cp #0b
	jr nc,l74ba
	srl d
.l74ba
	ld hl,l70f2
	ld c,e
	ld b,#00
	add hl,bc
	ld a,(hl)
	cp d
	ret z
	ld (hl),d
	ld bc,#fffd
	out (c),e
	ld bc,#bffd
	out (c),d
	ld a,d
	and #07
	out (#fe),a
	ret
.l74d5
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
.l74f5
	ld iy,l70d2
	ld ix,l7102
	ld e,#00
	call l757e
	ld e,#01
	call l757e
	ld e,#08
	call l757e
	ld bc,#0018
	add ix,bc
	ld e,#02
	call l757e
	ld e,#03
	call l757e
	ld e,#09
	call l757e
	ld bc,#0018
	add ix,bc
	ld e,#04
	call l757e
	ld e,#05
	call l757e
	ld e,#0a
	call l757e
	ld e,#06
	ld a,(iy+#06)
	cp #ff
	jr nz,l7544
	ld a,(iy+#16)
	cp #ff
	jr z,l7548
.l7544
	ld d,a
	call l70c8
.l7548
	ld ix,l7102
	ld b,#03
	ld c,#09
	ld h,#00
	ld de,#0018
.l7555
	ld l,(iy+#17)
	ld a,(ix+#4d)
	and a
	jr z,l7566
	inc a
	jr z,l7566
	ld l,(iy+#07)
	jr l756e
.l7566
	ld a,(ix+#05)
	and a
	jr nz,l756e
	ld l,#ff
.l756e
	ld a,l
	and c
	sla c
	or h
	ld h,a
	add ix,de
	djnz l7555
	ld d,h
	ld e,#07
	jp l70c8
.l757e
	ld a,e
	ld (l7595),a
	add #10
	ld (l7589),a
.l7589 equ $ + 2
	ld d,(iy+#00)
	ld a,(ix+#4d)
	and a
	jr z,l7596
	inc a
	jr z,l7596
.l7595 equ $ + 2
	ld d,(iy+#00)
.l7596
	jp l70c8
.l7599
	push ix
	pop iy
	ld a,(ix+#13)
	and a
	jr z,l75a8
	ld de,#0006
	add iy,de
.l75a8
	ld l,(iy+#0c)
	ld h,(iy+#0d)
	ld e,(iy+#0e)
	ld d,#00
	add hl,de
	bit 7,(hl)
	jr nz,l75bf
	inc (iy+#0e)
	inc (iy+#0e)
	ret
.l75bf
	ld a,(hl)
	cp #94
	jp z,l760f
	cp #95
	jp z,l7620
	cp #9d
	jp z,l7643
	cp #9e
	jp z,l7657
	cp #ff
	jp z,l766b
	cp #fe
	jp z,l767a
	res 7,a
	add a
	ld e,a
	ld d,#00
	ld hl,l70aa
	add hl,de
	ex de,hl
	ld hl,l70c4
	sbc hl,de
	jr nc,l75f3
	ld de,l70aa
.l75f3
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	push bc
	push iy
	ld iy,l70e2
	call l731b
	ld (ix+#09),#ff
	pop iy
	pop bc
	inc (iy+#0e)
	jp l7599
.l760f
	ld (iy+#0e),#00
	dec (ix+#0b)
	jp nz,l7599
	ld (ix+#13),#00
	jp l7599
.l7620
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
	jp l7599
.l7643
	dec (iy+#0f)
	jr nz,l764e
	inc (iy+#0e)
	jp l7599
.l764e
	ld a,(iy+#10)
	ld (iy+#0e),a
	jp l7599
.l7657
	inc (iy+#0e)
	inc (iy+#0e)
	ld a,(iy+#0e)
	ld (iy+#10),a
	inc hl
	ld a,(hl)
	ld (iy+#0f),a
	jp l7599
.l766b
	pop bc
	pop bc
	ld a,(l70cd)
	ld c,a
	ld a,(l70cc)
	call l7192
	jp l747f
.l767a
	pop bc
	pop bc
	call l72ce
	jp l747f
.l7682
	ld a,(l70cb)
	and a
	ret z
	ld ix,l7102
	ld b,#03
.l768d
	dec (ix+#0a)
	jr nz,l76bf
	call l7599
	ld a,(hl)
	and a
	jr z,l769c
	add (iy+#11)
.l769c
	add a
	ld e,a
	ld d,#00
	ld iy,l6bfa
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
.l76bf
	ld de,#0018
	add ix,de
	djnz l768d
	ret
;
.init_music     ; added by Megachur
;
	push af
	xor a
	call l71fb
	pop af
	push bc
	ld c,#02
	call l7192
	pop bc
	ret
;
; init_music
;	ld a,1
;	jp l1662
;
; #0507
; xor a
; call #166a
; xor a
; call #1662
;
; #1662
; push bc
; ld c,#02
; call #7192
; pop bc
; ret
; org #1662
; call #71fb
; ret
;
.music_info
	db "E-Motion (1990)(U.S.Gold)",0
	db "",0

	read "music_end.asm"
