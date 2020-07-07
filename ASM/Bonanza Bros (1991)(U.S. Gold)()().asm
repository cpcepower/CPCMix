; Music of Bonanza Bros (1991)(U.S. Gold)()()
; Ripped by Megachur the 18/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BONANZAB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #8000

	read "music_header.asm"
	
	jp l8b8f	; play music
	jp l88cd	; init music	a=1 theme and c=0
	jp l8938	; sound fx ?
.l8009
	db #00,#13,#0f,#01,#01,#01,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0a
	db #08,#07,#06,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#13,#0f,#01,#01
	db #01,#0d,#0d,#0c,#0c,#0b,#0b,#0a
	db #0a,#09,#08,#06,#05,#04,#03,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#13
	db #09,#01,#01,#01,#0b,#0a,#09,#08
	db #06,#04,#03,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#13,#09,#01
	db #01,#01,#0f,#0e,#0d,#0c,#0a,#08
	db #03,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#13,#20,#01,#01,#01
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #05,#05,#05,#05,#05,#03,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#ff,#01,#ff,#01,#ff,#01,#ff
	db #01,#ff,#01,#ff,#01,#ff,#01,#ff
	db #13,#30,#01,#01,#01,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#09,#09,#09
	db #09,#09,#09,#09,#09,#08,#08,#08
	db #08,#08,#03,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#13,#02,#01
	db #01,#01,#00,#00,#00,#00,#13,#03
	db #01,#01,#01,#0a,#01,#00,#00,#00
	db #00,#0d,#0c,#01,#01,#01,#0b,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
	db #02,#00,#00,#00,#00,#00,#00,#00
.l8167 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
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
.l823f
	db #81,#4b,#10,#4e,#10,#52,#0b,#50
	db #06,#4e,#0b,#50,#10,#50,#11,#4e
	db #05,#50,#0b,#52,#06,#4e,#10,#4b
	db #11,#4e,#10,#52,#0b,#50,#06,#4e
	db #0b,#50,#0a,#00,#17,#52,#05,#51
	db #0b,#52,#16,#4b,#11,#4e,#10,#52
	db #0b,#50,#05,#4e,#0b,#50,#11,#50
	db #10,#4e,#06,#50,#0b,#52,#05,#4e
	db #11,#46,#0b,#4e,#05,#4d,#0b,#4b
	db #06,#49,#0b,#46,#05,#4a,#0b,#4b
	db #11,#49,#05,#4a,#0b,#4b,#27,#4b
	db #10,#4e,#11,#52,#0b,#50,#05,#4e
	db #0b,#50,#10,#50,#11,#4e,#05,#50
	db #0b,#52,#06,#4e,#10,#4b,#11,#4e
	db #10,#52,#0b,#50,#06,#4e,#0b,#50
	db #21,#52,#05,#51,#0b,#52,#16,#4b
	db #11,#4e,#10,#52,#0b,#50,#06,#4e
	db #0b,#50,#10,#50,#10,#4e,#06,#50
	db #0b,#52,#05,#4e,#11,#46,#0b,#4e
	db #05,#4d,#0b,#4b,#06,#49,#0b,#46
	db #05,#4a,#0b,#4b,#11,#49,#05,#4a
	db #0b,#4b,#27,#47,#10,#49,#11,#4b
	db #0b,#4e,#10,#4d,#11,#4d,#05,#4e
	db #11,#50,#0b,#4d,#05,#4b,#10,#46
	db #0b,#49,#32,#46,#05,#49,#11,#46
.l8309 equ $ + 2
	db #0b,#94,#47,#10,#49,#06,#47,#0b
	db #46,#05,#47,#11,#49,#10,#4b,#0b
	db #4e,#11,#4d,#10,#4d,#06,#4e,#10
	db #50,#0b,#4d,#06,#4b,#10,#52,#10
	db #52,#11,#50,#10,#50,#11,#4e,#10
	db #4e,#0b,#4d,#11,#4e,#05,#4d,#0b
	db #4b,#06,#47,#10,#49,#11,#4b,#0b
	db #4e,#10,#4d,#11,#4d,#05,#4e,#11
	db #50,#0b,#4d,#05,#4b,#11,#46,#0b
	db #49,#31,#46,#05,#49,#11,#46,#0b
	db #47,#10,#49,#06,#47,#0b,#46,#05
	db #47,#11,#49,#10,#4b,#0b,#4e,#11
	db #4d,#10,#4d,#06,#4e,#10,#50,#0b
	db #4d,#11,#52,#16,#52,#10,#52,#11
	db #52,#10,#52,#05,#50,#06,#4e,#05
	db #50,#06,#4e,#05,#4d,#06,#4e,#05
	db #4d,#06,#4b,#05,#4d,#06,#4b,#05
	db #4a,#06,#57,#10,#57,#1c,#55,#10
	db #50,#06,#52,#0b,#55,#05,#52,#0b
	db #50,#11,#4e,#05,#50,#11,#4b,#10
	db #4e,#11,#52,#0b,#50,#05,#4e,#0b
	db #50,#21,#52,#06,#51,#0a,#52,#16
	db #57,#11,#57,#10,#55,#11,#55,#10
	db #52,#11,#52,#10,#50,#11,#50,#10
	db #46,#0b,#4e,#06,#4d,#0b,#4b,#05
.l83d2 equ $ + 3
	db #49,#0b,#94,#46,#06,#4a,#0b,#4b
	db #10,#46,#06,#4a,#0b,#4b,#27,#94
.l83df
	db #95,#01,#f1
	dw l823f
	db #95,#01,#f1
	dw l8309
	db #95,#01,#f1
	dw l83d2
	db #ff
.l83ef
	db #80,#33,#10,#31,#10,#2f,#11,#2e
	db #10,#31,#11,#2f,#10,#2e,#11,#2e
	db #10,#2f,#11,#2e,#10,#2c,#11,#2a
	db #10,#2e,#1c,#2e,#10,#2e,#06,#32
	db #10,#33,#11,#31,#10,#2f,#10,#2e
	db #11,#31,#10,#2f,#11,#2e,#10,#2c
	db #11,#2e,#35,#00,#18,#31,#05,#32
	db #0b,#33,#11,#2e,#05,#32,#0b,#2e
	db #06,#33,#10,#31,#11,#2f,#10,#2e
	db #10,#31,#11,#2f,#10,#2e,#11,#2e
	db #10,#2f,#11,#2e,#10,#2c,#11,#2a
	db #10,#2e,#2c,#2e,#06,#32,#10,#33
	db #11,#31,#10,#2f,#11,#2e,#10,#31
	db #11,#2f,#10,#2e,#10,#2c,#11,#2e
	db #4d,#31,#05,#32,#0b,#33,#27,#2f
	db #10,#2f,#11,#2f,#10,#2f,#11,#31
	db #10,#31,#11,#31,#0b,#35,#10,#36
	db #16,#36,#10,#35,#11,#35,#10,#33
	db #11,#33,#0b,#31,#10,#33,#06,#31
	db #10,#2f,#11,#2f,#10,#2f,#11,#2f
	db #10,#31,#11,#31,#10,#31,#0b,#35
	db #11,#36,#15,#36,#11,#35,#10,#35
	db #11,#33,#10,#33,#0b,#31,#11,#33
	db #05,#31,#11,#2f,#10,#2f,#11,#2f
	db #10,#2f,#11,#31,#10,#31,#11,#94
.l84b7
	db #31,#0b,#35,#10,#36,#16,#36,#11
	db #35,#10,#35,#10,#33,#11,#33,#0b
	db #31,#10,#33,#06,#31,#10,#2f,#11
	db #2f,#10,#2f,#11,#2f,#10,#31,#11
	db #31,#10,#31,#0b,#33,#11,#35,#16
	db #35,#10,#33,#11,#33,#10,#32,#0b
	db #33,#05,#32,#0b,#2e,#11,#2e,#05
	db #32,#11,#33,#10,#31,#11,#2e,#10
	db #2c,#11,#31,#10,#2e,#11,#2c,#10
	db #2a,#11,#2f,#10,#2e,#11,#2c,#10
	db #2a,#11,#2e,#1b,#2e,#10,#2e,#06
	db #32,#10,#33,#11,#31,#10,#2e,#11
	db #2c,#10,#31,#11,#2e,#10,#2c,#11
	db #2a,#10,#2e,#4d,#2e,#06,#32,#0b
	db #33,#10,#2e,#06,#32,#0b,#2e,#06
	db #94
.l8530
	db #95,#01,#f1
	dw l83ef
	db #95,#01,#f1
	dw l84b7
	db #ff
.l853b
	db #82,#18,#10,#83,#1d,#10,#82,#18
	db #0b,#18,#06,#83,#1d,#10,#82,#18
	db #11,#83,#1d,#0b,#82,#18,#05,#18
	db #0b,#18,#06,#83,#1d,#10,#82,#18
	db #11,#83,#1d,#10,#82,#18,#0b,#18
	db #06,#83,#1d,#10,#82,#18,#0b,#83
	db #1d,#06,#1d,#1b,#1d,#06,#1d,#10
	db #82,#18,#11,#83,#1d,#10,#82,#18
	db #0b,#18,#05,#83,#1d,#11,#82,#18
	db #10,#83,#1d,#0b,#82,#18,#11,#18
	db #05,#83,#1d,#11,#82,#18,#10,#83
	db #1d,#11,#82,#18,#0b,#18,#05,#83
	db #1d,#11,#82,#18,#0b,#83,#1d,#05
	db #1d,#1c,#1d,#05,#1d,#11,#82,#18
	db #10,#83,#1d,#11,#82,#18,#0b,#18
	db #05,#83,#1d,#10,#82,#18,#0b,#18
	db #06,#83,#1d,#0b,#82,#18,#10,#18
	db #06,#83,#1d,#10,#82,#18,#11,#83
	db #1d,#10,#82,#18,#0b,#18,#06,#83
	db #1d,#10,#82,#18,#0b,#83,#1d,#06
	db #1d,#1b,#1d,#06,#1d,#10,#82,#18
	db #11,#83,#1d,#10,#82,#18,#0b,#18
	db #06,#83,#1d,#10,#82,#18,#0b,#18
	db #06,#83,#1d,#0a,#82,#18,#11,#94
.l85fb
	db #18,#05,#83,#1d,#11,#82,#18,#10
	db #83,#1d,#11,#82,#18,#0b,#18,#05
	db #83,#1d,#11,#82,#18,#0b,#83,#1d
	db #05,#1d,#1c,#1d,#05,#1d,#11,#82
	db #18,#10,#83,#1d,#11,#82,#18,#0b
	db #18,#05,#83,#1d,#11,#82,#18,#10
	db #83,#1d,#0b,#82,#18,#06,#18,#0b
	db #18,#05,#83,#1d,#10,#82,#18,#11
	db #83,#1d,#10,#82,#18,#0b,#18,#06
	db #83,#1d,#10,#82,#18,#0b,#83,#1d
	db #06,#1d,#1b,#1d,#06,#1d,#10,#82
	db #18,#11,#83,#1d,#10,#82,#18,#0b
	db #18,#06,#83,#1d,#10,#82,#18,#11
	db #83,#1d,#0b,#82,#18,#10,#18,#06
	db #83,#1d,#10,#82,#18,#10,#83,#1d
	db #11,#82,#18,#0b,#18,#05,#83,#1d
	db #11,#82,#18,#0b,#83,#1d,#05,#1d
	db #1c,#1d,#05,#1d,#11,#82,#18,#10
	db #83,#1d,#11,#82,#18,#0b,#18,#05
	db #83,#1d,#11,#82,#18,#0b,#18,#05
	db #83,#1d,#0b,#82,#18,#11,#18,#05
	db #83,#1d,#11,#82,#18,#10,#83,#1d
	db #11,#82,#18,#0a,#18,#06,#83,#1d
	db #10,#82,#18,#0b,#83,#1d,#06,#1d
.l86bd equ $ + 2
	db #1b,#94,#1d,#06,#1d,#10,#82,#18
	db #11,#83,#1d,#10,#82,#18,#0b,#18
	db #06,#83,#1d,#10,#82,#18,#0b,#18
	db #06,#83,#1d,#0b,#82,#18,#10,#82
	db #18,#06,#83,#1d,#10,#82,#18,#11
	db #83,#1d,#10,#82,#18,#0b,#18,#06
	db #83,#1d,#10,#82,#18,#0b,#83,#1d
	db #05,#1d,#1c,#1d,#05,#1d,#11,#82
	db #18,#10,#83,#1d,#11,#82,#18,#0b
	db #18,#05,#83,#1d,#11,#82,#18,#10
	db #83,#1d,#0b,#82,#18,#06,#18,#0b
	db #18,#05,#83,#1d,#11,#82,#18,#10
	db #83,#1d,#11,#82,#18,#0b,#18,#05
	db #83,#1d,#11,#82,#18,#0b,#83,#1d
	db #05,#1d,#1b,#1d,#06,#1d,#10,#82
	db #18,#11,#83,#1d,#10,#82,#18,#0b
	db #82,#18,#06,#83,#1d,#10,#82,#18
	db #11,#83,#1d,#0b,#82,#18,#10,#82
	db #18,#06,#83,#1d,#10,#82,#18,#11
	db #83,#1d,#10,#82,#18,#0b,#18,#06
	db #83,#1d,#10,#82,#18,#0b,#83,#1d
	db #06,#1d,#1b,#1d,#06,#1d,#11,#94
.l876b
	db #95,#01,#00
	dw l853b
	db #95,#01,#00
	dw l85fb
	db #95,#01,#00
	dw l86bd
	db #ff
.l877f equ $ + 4
.l877b
	dw l83df,l8530,l876b
	db #00,#00,#13,#0f,#64,#00,#01,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#07,#06
	db #05,#04,#03,#02,#01,#00,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#13,#0f,#c8
	db #00,#01,#01,#02,#03,#06,#07,#08
	db #0c,#0f,#0f,#0f,#0f,#0f,#0a,#08
	db #00,#0a,#f6,#0a,#f6,#0a,#f6,#0a
	db #f6,#0a,#f6,#0a,#f6,#0a,#f6,#0a
	db #13,#0f,#f4,#01,#01,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#07,#06,#05,#04
	db #03,#02,#01,#00,#f6,#f6,#f6,#f6
	db #f6,#f6,#f6,#f6,#f6,#f6,#f6,#f6
.l87f0 equ $ + 7
.l87ec equ $ + 3
	db #f6,#f6,#f6,#83,#87,#a6,#87,#c9
.l87f4 equ $ + 3
	db #87,#00,#00,#0a,#80,#2d,#80,#3f
.l8800 equ $ + 7
	db #81,#4a,#81,#8c,#80,#d1,#80,#36
.l8808 equ $ + 7
.l8807 equ $ + 6
.l8804 equ $ + 3
	db #81,#00,#00
	jp l8bb7
	db #00,#00
.l880d equ $ + 4
.l880b equ $ + 2
.l880a equ $ + 1
.l8809
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8815 equ $ + 4
.l8813 equ $ + 2
	db #00,#00,#ff,#00,#00,#00,#00,#00
.l881d equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8825 equ $ + 4
.l8823 equ $ + 2
	db #00,#00,#ff,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l883d equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8885 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l88cd
	push af
	push bc
	push hl
	push de
	push ix
	push iy
	call l88e1
	pop iy
	pop ix
	pop de
	pop hl
	pop bc
	pop af
	ret
;
.real_init_music
.l88e1
;
	ld (l8807),a
	ld a,c
	ld (l8808),a
	ld a,(l8807)
	ld iy,l881d
	cp #ff
	jp z,l8a89
	dec a
	jp m,l89f1
	call l89f1
	ld a,#01
	ld (l8009),a
	call l89a7
	ld a,(l8807)
	dec a
	ld e,a
	add a
	add e
	add a
	ld e,a
	ld d,#00
	ld hl,l877b
	add hl,de
	ex de,hl
	ld hl,l877f
	sbc hl,de
	jp c,l89f1
	ex de,hl
	ld ix,l883d
	ld b,#03
.l8922
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),e
	ld (ix+#0d),d
	ld (ix+#0a),#01
	ld de,#0018
	add ix,de
	djnz l8922
	ret
.l8938
	push af
	push bc
	push hl
	push de
	push ix
	push iy
	call l894c
	pop iy
	pop ix
	pop de
	pop hl
	pop bc
	pop af
	ret
.l894c
	ld iy,l880d
	ld ix,l8885
	ld (l8809),a
	dec a
	jp m,l8a1b
	add a
	ld e,a
	ld d,#00
	ld hl,l87ec
	add hl,de
	ex de,hl
	ld hl,l87f0
	sbc hl,de
	ret c
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld b,#03
	ld ix,l8885
	ld a,(l8809)
	ld c,a
	ld de,#0018
.l897c
	ld a,(ix+#09)
	cp c
	jr nz,l898c
	ld a,(ix+#05)
	and a
	jr z,l898c
	inc a
	jp nz,l8a39
.l898c
	add ix,de
	djnz l897c
	ld ix,l8885
	ld de,#0004
	add hl,de
	ld c,(hl)
	and a
	sbc hl,de
	call l89cd
	ld a,(ix+#05)
	cp c
	ret nc
	jp l8a39
.l89a7
	push ix
	ld ix,l8885
	ld hl,l8815
	ld a,(l8808)
	ld c,a
	xor a
	ld de,#0018
.l89b8
	dec c
	jp m,l89c3
	ld (ix+#05),#ff
	ld (hl),#00
	inc hl
.l89c3
	add ix,de
	inc a
	cp #03
	jr c,l89b8
	pop ix
	ret
.l89cd
	push iy
	push ix
	pop iy
	ld de,#0018
	ld a,(iy+#05)
	cp (ix+#1d)
	jr c,l89e0
	add iy,de
.l89e0
	ld a,(iy+#05)
	cp (ix+#35)
	jr c,l89ea
	add iy,de
.l89ea
	push iy
	pop ix
	pop iy
	ret
.l89f1
	ld ix,l883d
	ld b,#03
	ld hl,l8825
	ld de,#0018
	ld a,#00
.l89ff
	ld (hl),a
	inc hl
	ld (ix+#05),a
	ld (ix+#0e),a
	ld (ix+#0f),a
	ld (ix+#13),a
	ld (ix+#14),a
	ld (ix+#06),a
	add ix,de
	djnz l89ff
	ld (l8009),a
	ret
.l8a1b
	ld b,#03
	ld ix,l8885
	ld hl,l8815
	ld de,#0018
.l8a27
	ld (hl),#00
	inc hl
	ld a,(ix+#05)
	inc a
	jr z,l8a34
	ld (ix+#05),#00
.l8a34
	add ix,de
	djnz l8a27
	ret
.l8a39
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
.l8a72
	dec e
	jp m,l8a7c
	sla b
	sla c
	jr l8a72
.l8a7c
	ld a,c
	xor b
	ld b,a
	ld a,c
	cpl
	and (iy+#07)
	or b
	ld (iy+#07),a
	ret
.l8a89
	ld a,#10
	ld (l880a),a
	ld a,c
	ld (l880d),a
	ld a,#00
	ld (l880b),a
	ret
.l8a98
	ld a,(l880a)
	and a
	ret z
	ld a,(l880b)
	dec a
	ld (l880b),a
	jp p,l8abd
	ld a,(l880d)
	ld (l880b),a
	ld a,(l880a)
	dec a
	ld (l880a),a
	jr nz,l8abd
	ld a,#00
	ld c,#00
	jp l88e1
.l8abd
	ld hl,l8825
	ld b,#03
.l8ac2
	ld d,(hl)
	ld a,(l880a)
	ld e,a
	xor a
	dec e
	jp m,l8ad1
.l8acc
	add d
	dec e
	jp p,l8acc
.l8ad1
	srl a
	srl a
	srl a
	srl a
	ld (hl),a
	inc hl
	djnz l8ac2
	ret
.l8ade
	ld b,#03
.l8ae0
	ld a,(ix+#05)
	and a
	jp z,l8b85
	inc a
	jp z,l8b85
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(ix+#06)
	add #05
	ld e,a
	ld d,#00
	add hl,de
	bit 0,(ix+#07)
	jr z,l8b3e
	ld a,(hl)
	cp #fe
	jr nz,l8b18
	inc (ix+#06)
	inc (ix+#06)
	inc hl
	ld a,(hl)
	push ix
	push bc
	call l894c
	pop bc
	pop ix
	jr l8ae0
.l8b18
	cp #ff
	jr nz,l8b22
	ld (ix+#06),#00
	jr l8ae0
.l8b22
	ld c,a
	ld a,(ix+#00)
	add #08
	ld (l8b2d),a
.l8b2d equ $ + 2
	ld (iy+#00),c
	ld a,c
	and a
	jr nz,l8b38
	ld (ix+#05),#00
	jr l8b85
.l8b38
	ld e,(ix+#08)
	ld d,#00
	add hl,de
.l8b3e
	bit 1,(ix+#07)
	jr z,l8b78
	ld e,(hl)
	ld d,#00
	bit 7,e
	jr z,l8b4c
	dec d
.l8b4c
	push hl
	ld l,(ix+#01)
	ld h,(ix+#02)
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	pop hl
	ld a,(ix+#00)
	add a
	ld (l8b6b),a
	inc a
	ld (l8b71),a
	ld a,(ix+#01)
.l8b6b equ $ + 2
	ld (iy+#00),a
	ld a,(ix+#02)
.l8b71 equ $ + 2
	ld (iy+#00),a
	ld e,(ix+#08)
	ld d,#00
	add hl,de
.l8b78
	bit 2,(ix+#07)
	jr z,l8b82
	ld a,(hl)
	ld (iy+#06),a
.l8b82
	inc (ix+#06)
.l8b85
	ld de,#0018
	add ix,de
	dec b
	jp nz,l8ae0
	ret
;
.play_music
.l8b8f
;
	call l8d64
	ld a,#ff
	ld (l8813),a
	ld (l8823),a
	ld iy,l881d
	ld ix,l883d
	call l8ade
	ld iy,l880d
	ld ix,l8885
	call l8ade
	call l8a98
	call l8bd7
	ret
.l8bb7
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
.l8bd7
	ld iy,l880d
	ld ix,l883d
	ld e,#00
	call l8c60
	ld e,#01
	call l8c60
	ld e,#08
	call l8c60
	ld bc,#0018
	add ix,bc
	ld e,#02
	call l8c60
	ld e,#03
	call l8c60
	ld e,#09
	call l8c60
	ld bc,#0018
	add ix,bc
	ld e,#04
	call l8c60
	ld e,#05
	call l8c60
	ld e,#0a
	call l8c60
	ld e,#06
	ld a,(iy+#06)
	cp #ff
	jr nz,l8c26
	ld a,(iy+#16)
	cp #ff
	jr z,l8c2a
.l8c26
	ld d,a
	call l8804
.l8c2a
	ld ix,l883d
	ld b,#03
	ld c,#09
	ld h,#00
	ld de,#0018
.l8c37
	ld l,(iy+#17)
	ld a,(ix+#4d)
	and a
	jr z,l8c48
	inc a
	jr z,l8c48
	ld l,(iy+#07)
	jr l8c50
.l8c48
	ld a,(ix+#05)
	and a
	jr nz,l8c50
	ld l,#ff
.l8c50
	ld a,l
	and c
	sla c
	or h
	ld h,a
	add ix,de
	djnz l8c37
	ld d,h
	ld e,#07
	jp l8804
.l8c60
	ld a,e
	ld (l8c77),a
	add #10
	ld (l8c6b),a
.l8c6b equ $ + 2
	ld d,(iy+#1a)
	ld a,(ix+#4d)
	and a
	jr z,l8c78
	inc a
	jr z,l8c78
.l8c77 equ $ + 2
	ld d,(iy+#0a)
.l8c78
	jp l8804
.l8c7b
	push ix
	pop iy
	ld a,(ix+#13)
	and a
	jr z,l8c8a
	ld de,#0006
	add iy,de
.l8c8a
	ld l,(iy+#0c)
	ld h,(iy+#0d)
	ld e,(iy+#0e)
	ld d,#00
	add hl,de
	bit 7,(hl)
	jr nz,l8ca1
	inc (iy+#0e)
	inc (iy+#0e)
	ret
.l8ca1
	ld a,(hl)
	cp #94
	jp z,l8cf1
	cp #95
	jp z,l8d02
	cp #9d
	jp z,l8d25
	cp #9e
	jp z,l8d39
	cp #ff
	jp z,l8d4d
	cp #fe
	jp z,l8d5c
	res 7,a
	add a
	ld e,a
	ld d,#00
	ld hl,l87f4
	add hl,de
	ex de,hl
	ld hl,l8800
	sbc hl,de
	jr nc,l8cd5
	ld de,l87f4
.l8cd5
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	push bc
	push iy
	ld iy,l881d
	call l8a39
	ld (ix+#09),#ff
	pop iy
	pop bc
	inc (iy+#0e)
	jp l8c7b
.l8cf1
	ld (iy+#0e),#00
	dec (ix+#0b)
	jp nz,l8c7b
	ld (ix+#13),#00
	jp l8c7b
.l8d02
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
	jp l8c7b
.l8d25
	dec (iy+#0f)
	jr nz,l8d30
	inc (iy+#0e)
	jp l8c7b
.l8d30
	ld a,(iy+#10)
	ld (iy+#0e),a
	jp l8c7b
.l8d39
	inc (iy+#0e)
	inc (iy+#0e)
	ld a,(iy+#0e)
	ld (iy+#10),a
	inc hl
	ld a,(hl)
	ld (iy+#0f),a
	jp l8c7b
.l8d4d
	pop bc
	pop bc
	ld a,(l8808)
	ld c,a
	ld a,(l8807)
	call l88e1
	jp l8b8f
.l8d5c
	pop bc
	pop bc
	call l89f1
	jp l8b8f
.l8d64
	ld a,(l8009)
	and a
	ret z
	ld ix,l883d
	ld b,#03
.l8d6f
	dec (ix+#0a)
	jr nz,l8da1
	call l8c7b
	ld a,(hl)
	and a
	jr z,l8d7e
	add (iy+#11)
.l8d7e
	add a
	ld e,a
	ld d,#00
	ld iy,l8167
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
.l8da1
	ld de,#0018
	add ix,de
	djnz l8d6f
	ret
;
; #0338
; ld a,#01
; ld c,#00
; call #8003
;
.init_music		; added by Megachur
;
	ld a,#01
	ld c,#00
	jp real_init_music
;
.music_info
	db "Bonanza Bros (1991)(U.S. Gold)()",0
	db "",0

	read "music_end.asm"
