; Music of Un Squadron (1990)(US Gold)()()
; Ripped by Megachur the 18/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "UNSQUADR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #f000
FIRST_THEME				equ 1
LAST_THEME				equ 3

	read "music_header.asm"

	jp lfc16        ; play music
	jp lf931        ; init music
	jp lf99a        ; sound fx ?
.lf009
.lf00a equ $ + 1
	db #00,#0d,#3c,#19,#03,#03,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#0a,#09,#09,#09,#09
	db #09,#08,#08,#08,#07,#07,#07,#06
	db #06,#06,#05,#05,#04,#04,#03,#02
	db #01,#00,#1f,#1e,#1f,#1d,#1f,#1c
	db #1f,#1f,#1e,#1e,#1f,#1e,#1f,#1d
	db #1f,#1c,#1f,#1f,#1e,#1e,#1f,#1e
	db #1f,#1d,#1f,#1c,#1f,#1f,#1e,#1e
	db #1f,#1e,#1f,#1d,#1f,#1c,#1f,#1f
	db #1e,#1e,#1f,#1e,#1f,#1d,#1f,#1c
	db #1f,#1f,#1e,#1e,#1f,#1e,#1f,#1d
.lf087 equ $ + 6
	db #1f,#1c,#1f,#1f,#1e,#1e,#0d,#06
	db #1f,#01,#03,#0e,#0c,#0b,#0a,#09
.lf098 equ $ + 7
	db #00,#0e,#12,#0e,#12,#0e,#12,#13
	db #08,#8f,#02,#03,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#00,#00,#81,#a8,#85
.lf0ad equ $ + 4
	db #ff,#81,#a8,#85,#0d,#1b,#17,#01
	db #01,#0a,#0a,#0a,#09,#09,#08,#08
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#03,#02,#00,#00,#00
	db #00,#00,#00,#00,#1b,#0c,#1d,#0d
	db #17,#0b,#1b,#0f,#1d,#0c,#17,#1b
	db #0c,#1d,#0d,#17,#0b,#1b,#0f,#1d
.lf0e8 equ $ + 7
	db #0c,#17,#17,#1d,#13,#17,#0c,#13
	db #02,#01,#01,#01,#00,#00,#00,#00
	db #0d,#04,#1a,#01,#01,#0f,#0f,#0f
.lf0fe equ $ + 5
	db #00,#04,#04,#04,#04,#0d,#0f,#05
	db #01,#01,#0b,#0b,#0a,#0a,#08,#06
	db #04,#02,#00,#00,#00,#00,#00,#00
	db #00,#0b,#0f,#04,#0a,#08,#02,#0c
	db #06,#09,#01,#07,#03,#07,#01,#03
.lf121
	db #13,#30,#01,#01,#01,#0e,#0e,#0e
	db #0d,#0d,#0d,#0c,#0c,#0c,#0b,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#09
	db #09,#09,#08,#08,#08,#08,#08,#07
	db #07,#07,#07,#06,#06,#06,#05,#05
	db #05,#05,#05,#05,#04,#04,#04,#04
	db #03,#03,#02,#01,#00,#00,#00,#ff
	db #ff,#00,#00,#01,#01,#ff,#00,#01
	db #00,#00,#00,#ff,#ff,#00,#00,#01
	db #01,#ff,#00,#01,#00,#00,#00,#ff
	db #ff,#00,#00,#01,#01,#ff,#00,#01
	db #00,#00,#00,#ff,#ff,#00,#00,#01
.lf186 equ $ + 5
	db #01,#ff,#00,#01,#00,#0d,#04,#06
	db #01,#01,#07,#05,#02,#00,#05,#05
.lf193 equ $ + 2
	db #05,#04,#13,#09,#01,#01,#01,#0c
	db #0b,#0a,#09,#08,#06,#04,#02,#00
	db #02,#fe,#02,#fe,#02,#fe,#02,#fe
	db #00,#13,#02,#01,#01,#01,#00,#00
.lf1b3 equ $ + 2
	db #00,#00,#13,#14,#01,#01,#01,#0e
	db #0e,#0e,#0d,#0d,#0d,#0c,#0c,#0b
	db #0b,#0b,#0a,#09,#08,#07,#06,#05
	db #04,#01,#00,#00,#fc,#00,#04,#00
	db #fc,#00,#04,#00,#fc,#00,#04,#00
.lf1e0 equ $ + 7
	db #fc,#00,#04,#00,#fc,#00,#04,#13
	db #0b,#01,#01,#01,#0e,#0d,#0c,#0b
	db #0b,#0b,#0b,#0c,#0d,#0e,#ff,#00
	db #fe,#00,#02,#fe,#00,#02,#fe,#00
	db #02,#00
.lf1fb
	dw lf1e0,lf121,lf186,lf186
	dw lf186,lf1b3,lf1e0,lf1b3
	dw lf0fe,lf1b3,lf0e8,lf0fe
	dw lf0ad,lf1b3,lf193
.lf219
	dw lf186,#0000
	db #81,#12,#10,#12,#08,#12,#10,#1e
	db #08,#12,#08,#12,#08,#94,#8b,#18
	db #08,#8f,#40,#08,#8c,#18,#08,#8f
	db #43,#08,#8b,#18,#08,#18,#08,#8c
	db #18,#10,#94,#86,#2e,#18,#30,#18
	db #31,#18,#33,#18,#31,#10,#30,#10
	db #2e,#18,#30,#18,#31,#10,#8a,#18
	db #30,#86,#30,#10,#94,#87,#35,#68
	db #33,#08,#38,#08,#36,#08,#35,#28
	db #33,#0c,#31,#0c,#30,#0c,#31,#08
	db #33,#0c,#31,#0c,#30,#0c,#2e,#08
	db #94,#87,#35,#68,#33,#08,#38,#08
	db #36,#08,#35,#28,#33,#10,#31,#10
	db #30,#10,#2e,#08,#2d,#0c,#2e,#08
	db #30,#0c,#94,#87,#31,#18,#31,#08
	db #33,#08,#36,#18,#35,#18,#33,#08
	db #35,#08,#33,#18,#31,#18,#30,#08
	db #31,#08,#30,#10,#2e,#08,#29,#40
	db #94,#87,#2e,#20,#33,#08,#36,#18
	db #35,#20,#33,#08,#35,#18,#36,#10
	db #38,#08,#36,#18,#35,#10,#33,#28
	db #94,#87,#35,#08,#36,#10,#38,#28
	db #35,#10,#33,#08,#32,#10,#3b,#08
	db #3a,#10,#38,#10,#36,#38,#94,#87
	db #33,#08,#31,#08,#30,#10,#3a,#08
	db #38,#10,#36,#10,#38,#38,#94,#87
	db #35,#08,#33,#08,#32,#10,#3b,#08
	db #3a,#10,#38,#18,#3a,#2c,#3c,#0c
	db #3d,#08,#3c,#20,#35,#20,#3d,#20
	db #3c,#08,#3d,#10,#3f,#08,#3d,#20
	db #3a,#08,#3c,#10,#3d,#08,#3d,#30
	db #3c,#08,#3a,#08,#3c,#20,#35,#20
	db #3d,#20,#3c,#08,#3d,#10,#3f,#08
	db #3d,#20,#3a,#08,#3c,#10,#3d,#08
.lf334 equ $ + 7
	db #3d,#30,#41,#10,#3f,#40,#94,#95
	db #08,#0c,#1d,#f2,#95,#04,#13,#1d
	db #f2,#95,#04,#11,#1d,#f2,#95,#01
	db #0c,#1d,#f2,#95,#01,#13,#1d,#f2
	db #95,#01,#0c,#1d,#f2,#95,#01,#0b
	db #1d,#f2,#95,#01,#0c,#1d,#f2,#95
	db #01,#13,#1d,#f2,#95,#01,#11,#1d
	db #f2,#95,#01,#0e,#1d,#f2,#95,#01
	db #13,#1d,#f2,#95,#01,#10,#1d,#f2
	db #95,#01,#11,#1d,#f2,#95,#01,#0e
	db #1d,#f2,#95,#01,#13,#1d,#f2,#95
	db #01,#10,#1d,#f2,#95,#01,#0c,#1d
	db #f2,#95,#01,#0b,#1d,#f2,#95,#01
	db #10,#1d,#f2,#95,#01,#0c,#1d,#f2
	db #95,#01,#13,#1d,#f2,#95,#01,#0e
	db #1d,#f2,#95,#01,#0c,#1d,#f2,#95
	db #01,#13,#1d,#f2,#95,#01,#0c,#1d
.lf3bc equ $ + 7
	db #f2,#95,#01,#0e,#1d,#f2,#ff,#9e
	db #ff,#95,#ff,#00,#2b,#f2,#9d,#ff
.lf3c5
	db #95,#01,#00,#40,#f2,#95,#01,#00
	db #40,#f2,#95,#01,#00,#5a,#f2,#95
	db #01,#00,#76,#f2,#95,#01,#00,#90
	db #f2,#95,#01,#00,#ae,#f2,#95,#01
	db #00,#c6,#f2,#95,#01,#00,#dc,#f2
	db #95,#01,#00,#ec,#f2,#ff,#81,#1c
	db #0c,#1c,#06,#1f,#0c,#1a,#06,#94
	db #8b,#18,#12,#8c,#18,#12,#94,#8b
	db #18,#06,#8c,#18,#06,#18,#06,#18
	db #06,#18,#06,#18,#06,#94,#8a,#18
	db #12,#87,#34,#5a,#34,#12,#33,#0c
	db #8a,#18,#18,#87,#32,#5a,#32,#12
	db #33,#12,#94,#8a,#18,#12,#87,#34
	db #5a,#34,#12,#33,#0c,#8a,#18,#18
	db #87,#32,#5a,#36,#0c,#35,#06,#34
.lf444 equ $ + 7
	db #06,#32,#06,#8a,#18,#06,#94,#9e
	db #03,#95,#04,#03,#f3,#f3,#95,#04
.lf452 equ $ + 5
	db #01,#f3,#f3,#9d,#ff,#9e,#06,#95
	db #03,#0c,#fd,#f3,#95,#01,#0c,#04
.lf460 equ $ + 3
	db #f4,#9d,#ff,#95,#02,#03,#13,#f4
	db #95,#01,#03,#28,#f4,#ff,#81,#1a
	db #0c,#1c,#06,#1a,#06,#94,#81,#1c
	db #06,#1f,#06,#23,#06,#26,#06,#94
	db #81,#13,#06,#13,#06,#13,#06,#13
	db #06,#13,#06,#13,#06,#0e,#06,#0e
	db #06,#94,#81,#13,#0c,#13,#06,#13
	db #06,#13,#06,#13,#06,#0c,#0c,#94
	db #8b,#18,#0c,#8c,#18,#0c,#8b,#18
	db #06,#18,#06,#8c,#18,#0c,#94,#8a
	db #18,#0c,#8c,#18,#0c,#18,#0c,#18
	db #06,#18,#06,#94,#8b,#18,#12,#18
	db #0c,#8c,#18,#06,#18,#06,#18,#06
	db #94,#8b,#18,#06,#18,#0c,#18,#0c
	db #8c,#18,#06,#18,#06,#18,#06,#94
	db #8b,#18,#06,#8c,#18,#0c,#18,#0c
	db #18,#06,#18,#06,#18,#06,#94,#87
	db #34,#60,#36,#60,#94,#87,#37,#12
	db #39,#12,#3b,#24,#3d,#06,#3e,#12
	db #3d,#0c,#3b,#06,#39,#5a,#37,#12
	db #39,#12,#3b,#18,#3d,#06,#3e,#12
	db #3d,#6c,#94,#87,#35,#12,#37,#12
	db #39,#18,#3b,#06,#3c,#12,#3b,#0c
	db #39,#06,#37,#5a,#35,#12,#37,#12
	db #39,#18,#3b,#06,#3c,#12,#3b,#30
	db #3d,#3c,#94,#87,#35,#12,#37,#12
	db #39,#18,#3b,#06,#3c,#12,#3b,#0c
	db #39,#06,#37,#5a,#35,#12,#37,#12
	db #39,#18,#3b,#06,#3c,#12,#3b,#18
	db #3a,#18,#3b,#18,#3d,#0c,#36,#0c
	db #94,#87,#42,#3c,#42,#0c,#40,#06
	db #3e,#12,#3d,#12,#40,#12,#39,#2a
	db #94,#87,#39,#06,#3b,#06,#3d,#06
	db #40,#3c,#40,#0c,#3e,#06,#3d,#12
	db #3b,#60,#94,#87,#3e,#3c,#3e,#0c
	db #3d,#06,#3b,#12,#39,#12,#3d,#12
	db #36,#2a,#94,#87,#35,#06,#36,#06
	db #38,#06,#39,#3c,#3c,#0c,#3b,#06
	db #39,#0c,#3b,#06,#3c,#30,#3e,#30
	db #94,#87,#37,#12,#39,#12,#3b,#18
	db #3d,#06,#3e,#12,#3d,#0c,#3b,#06
	db #39,#5a,#37,#12,#39,#12,#3b,#18
	db #3d,#06,#3e,#12,#3d,#6c,#94,#85
	db #3f,#06,#3c,#06,#3a,#06,#3c,#06
	db #3f,#06,#3c,#06,#3a,#06,#3c,#06
	db #3f,#06,#3c,#06,#3a,#06,#3c,#06
	db #3f,#06,#3c,#06,#3a,#06,#3c,#06
	db #94,#85,#43,#06,#41,#06,#3f,#06
	db #3e,#06,#3c,#06,#3a,#06,#3c,#06
	db #3e,#06,#3a,#06,#37,#06,#36,#06
	db #35,#06,#33,#06,#30,#06,#33,#06
	db #3a,#06,#94,#85,#43,#06,#41,#06
	db #3f,#06,#3e,#06,#3c,#06,#3a,#06
	db #3c,#06,#3e,#06,#3c,#06,#3a,#06
	db #3c,#06,#3e,#06,#3f,#06,#41,#06
	db #43,#06,#3a,#06,#94,#85,#3f,#06
	db #3c,#06,#3a,#06,#3c,#06,#3f,#06
	db #3c,#06,#3a,#06,#3c,#06,#3f,#06
	db #3c,#06,#3a,#06,#3c,#06,#3f,#06
	db #3c,#06,#3a,#06,#3c,#06,#87,#48
	db #60,#94,#8a,#18,#80,#18,#80,#18
	db #80,#18,#80,#18,#80,#18,#80,#18
	db #80,#18,#80,#18,#80,#18,#80,#18
	db #80,#18,#80,#18,#80,#18,#80,#18
.lf661 equ $ + 4
	db #80,#18,#80,#94,#95,#0f,#0c,#6b
	db #f4,#95,#01,#0c,#73,#f4,#95,#08
	db #1a,#7d,#f4,#95,#06,#16,#7d,#f4
	db #95,#01,#18,#7d,#f4,#95,#01,#1a
	db #8f,#f4,#95,#08,#1a,#7d,#f4,#95
	db #06,#16,#7d,#f4,#95,#01,#18,#7d
	db #f4,#95,#01,#1a,#8f,#f4,#95,#02
	db #18,#7d,#f4,#95,#02,#13,#7d,#f4
	db #95,#02,#16,#7d,#f4,#95,#02,#18
	db #7d,#f4,#95,#02,#16,#7d,#f4,#95
	db #02,#13,#7d,#f4,#95,#02,#16,#7d
	db #f4,#95,#02,#18,#7d,#f4,#95,#02
	db #16,#8f,#f4,#95,#02,#18,#7d,#f4
	db #95,#02,#16,#8f,#f4,#95,#02,#18
	db #7d,#f4,#95,#02,#16,#8f,#f4,#95
	db #02,#18,#7d,#f4,#95,#02,#16,#8f
.lf6e4 equ $ + 7
	db #f4,#95,#02,#1d,#7d,#f4,#ff,#95
	db #07,#00,#9d,#f4,#95,#01,#00,#ac
	db #f4,#95,#0f,#00,#9d,#f4,#95,#01
	db #00,#b9,#f4,#95,#0f,#00,#9d,#f4
	db #95,#01,#00,#c6,#f4,#95,#0f,#00
	db #9d,#f4,#95,#01,#00,#d5,#f4,#95
	db #07,#00,#9d,#f4,#95,#01,#00,#d5
	db #f4,#95,#07,#00,#9d,#f4,#95,#01
.lf721 equ $ + 4
	db #00,#d5,#f4,#ff,#95,#02,#00,#e4
	db #f4,#95,#01,#00,#ea,#f4,#95,#01
	db #00,#08,#f5,#95,#01,#00,#96,#f5
	db #95,#01,#00,#28,#f5,#95,#01,#00
	db #4e,#f5,#95,#01,#00,#5e,#f5,#95
	db #01,#00,#70,#f5,#95,#01,#00,#80
	db #f5,#95,#01,#00,#b4,#f5,#95,#01
	db #00,#d6,#f5,#95,#01,#00,#b4,#f5
	db #95,#01,#00,#f8,#f5,#95,#01,#00
	db #b4,#f5,#95,#01,#00,#d6,#f5,#95
	db #01,#00,#1a,#f6,#ff
.lf772
	dw lf334,lf3bc,lf3c5,lf444
	dw lf452,lf460,lf6e4,lf721
.lf782
	dw lf661,#0000
.lf786
	dw lf087,lf098
	dw lf00a
.lf78c
	dw lf00a,#0000

.lf790
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
.lf868
	jp lfc4e
.lf86f equ $ + 4
.lf86e equ $ + 3
.lf86d equ $ + 2
.lf86c equ $ + 1
.lf86b
	db #00,#00,#00,#00,#00,#00
.lf871
	db #00,#00,#00,#00,#00,#00
.lf877
	db #00,#00
.lf879
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf881
	db #00,#00,#00,#00,#00,#00
.lf887
	db #00,#00
.lf889
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf8a1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf8e9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf931
	push de
	push bc
	push hl
	push ix
	push iy
	call lf943
	pop iy
	pop ix
	pop hl
	pop bc
	pop de
	ret
;
.init_music
.lf943
;
	ld (lf86b),a
	ld a,c
	ld (lf86c),a
	ld a,(lf86b)
	ld iy,lf881
	cp #ff
	jp z,lfb10
	dec a
	jp m,lfa6d
	call lfa6d
	ld a,#01
	ld (lf009),a
	call lfa07
	ld a,(lf86b)
	dec a
	ld e,a
	add a
	add e
	add a
	ld e,a
	ld d,#00
	ld hl,lf772
	add hl,de
	ex de,hl
	ld hl,lf782
	sbc hl,de
	jp c,lfa6d
	ex de,hl
	ld ix,lf8a1
	ld b,#03
.lf984
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),e
	ld (ix+#0d),d
	ld (ix+#0a),#01
	ld de,#0018
	add ix,de
	djnz lf984
	ret
.lf99a
	push de
	push bc
	push hl
	push ix
	push iy
	call lf9ac
	pop iy
	pop ix
	pop hl
	pop bc
	pop de
	ret
.lf9ac
	ld iy,lf871
	ld ix,lf8e9
	ld (lf86d),a
	dec a
	jp m,lfa9c
	add a
	ld e,a
	ld d,#00
	ld hl,lf786
	add hl,de
	ex de,hl
	ld hl,lf78c
	sbc hl,de
	ret c
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld b,#03
	ld ix,lf8e9
	ld a,(lf86d)
	ld c,a
	ld de,#0018
.lf9dc
	ld a,(ix+#09)
	cp c
	jr nz,lf9ec
	ld a,(ix+#05)
	and a
	jr z,lf9ec
	inc a
	jp nz,lfaba
.lf9ec
	add ix,de
	djnz lf9dc
	ld ix,lf8e9
	ld de,#0004
	add hl,de
	ld c,(hl)
	and a
	sbc hl,de
	call lfa49
	ld a,(ix+#05)
	cp c
	ret nc
	jp lfaba
.lfa07
	push ix
	ld ix,lf8e9
	ld hl,lf879
	ld a,(lf86c)
	ld c,a
	xor a
	ld de,#0018
.lfa18
	dec c
	jp m,lfa23
	ld (ix+#05),#ff
	ld (hl),#00
	inc hl
.lfa23
	add ix,de
	inc a
	cp #03
	jr c,lfa18
	pop ix
	ret
.lfa2d
	push ix
	ld ix,lf8e9
	ld b,#03
	ld de,#0018
.lfa38
	ld a,(ix+#05)
	inc a
	jr nz,lfa42
	ld (ix+#05),#00
.lfa42
	add ix,de
	djnz lfa38
	pop ix
	ret
.lfa49
	push iy
	push ix
	pop iy
	ld de,#0018
	ld a,(iy+#05)
	cp (ix+#1d)
	jr c,lfa5c
	add iy,de
.lfa5c
	ld a,(iy+#05)
	cp (ix+#35)
	jr c,lfa66
	add iy,de
.lfa66
	push iy
	pop ix
	pop iy
	ret
.lfa6d
	ld ix,lf8a1
	ld b,#03
	ld hl,lf889
	ld de,#0018
	ld a,#00
.lfa7b
	ld (hl),a
	inc hl
	ld (ix+#05),a
	ld (ix+#0e),a
	ld (ix+#0f),a
	ld (ix+#13),a
	ld (ix+#14),a
	ld (ix+#06),a
	add ix,de
	djnz lfa7b
	ld (lf86e),a
	ld (lf009),a
	jp lfa2d
.lfa9c
	ld b,#03
	ld ix,lf8e9
	ld hl,lf879
	ld de,#0018
.lfaa8
	ld (hl),#00
	inc hl
	ld a,(ix+#05)
	inc a
	jr z,lfab5
	ld (ix+#05),#00
.lfab5
	add ix,de
	djnz lfaa8
	ret
.lfaba
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
	ld a,(lf86d)
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
.lfaf9
	dec e
	jp m,lfb03
	sla b
	sla c
	jr lfaf9
.lfb03
	ld a,c
	xor b
	ld b,a
	ld a,c
	cpl
	and (iy+#07)
	or b
	ld (iy+#07),a
	ret
.lfb10
	ld a,#10
	ld (lf86e),a
	ld a,c
	ld (lf871),a
	ld a,#00
	ld (lf86f),a
	ret
.lfb1f
	ld a,(lf86e)
	and a
	ret z
	ld a,(lf86f)
	dec a
	ld (lf86f),a
	jp p,lfb44
	ld a,(lf871)
	ld (lf86f),a
	ld a,(lf86e)
	dec a
	ld (lf86e),a
	jr nz,lfb44
	ld a,#00
	ld c,#00
	jp lf931
.lfb44
	ld hl,lf889
	ld b,#03
.lfb49
	ld d,(hl)
	ld a,(lf86e)
	ld e,a
	xor a
	dec e
	jp m,lfb58
.lfb53
	add d
	dec e
	jp p,lfb53
.lfb58
	srl a
	srl a
	srl a
	srl a
	ld (hl),a
	inc hl
	djnz lfb49
	ret
.lfb65
	ld b,#03
.lfb67
	ld a,(ix+#05)
	and a
	jp z,lfc0c
	inc a
	jp z,lfc0c
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(ix+#06)
	add #05
	ld e,a
	ld d,#00
	add hl,de
	bit 0,(ix+#07)
	jr z,lfbc5
	ld a,(hl)
	cp #fe
	jr nz,lfb9f
	inc (ix+#06)
	inc (ix+#06)
	inc hl
	ld a,(hl)
	push ix
	push bc
	call lf99a
	pop bc
	pop ix
	jr lfb67
.lfb9f
	cp #ff
	jr nz,lfba9
	ld (ix+#06),#00
	jr lfb67
.lfba9
	ld c,a
	ld a,(ix+#00)
	add #08
	ld (lfbb4),a
.lfbb4 equ $ + 2
	ld (iy+#00),c
	ld a,c
	and a
	jr nz,lfbbf
	ld (ix+#05),#00
	jr lfc0c
.lfbbf
	ld e,(ix+#08)
	ld d,#00
	add hl,de
.lfbc5
	bit 1,(ix+#07)
	jr z,lfbff
	ld e,(hl)
	ld d,#00
	bit 7,e
	jr z,lfbd3
	dec d
.lfbd3
	push hl
	ld l,(ix+#01)
	ld h,(ix+#02)
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	pop hl
	ld a,(ix+#00)
	add a
	ld (lfbf2),a
	inc a
	ld (lfbf8),a
	ld a,(ix+#01)
.lfbf2 equ $ + 2
	ld (iy+#00),a
	ld a,(ix+#02)
.lfbf8 equ $ + 2
	ld (iy+#00),a
	ld e,(ix+#08)
	ld d,#00
	add hl,de
.lfbff
	bit 2,(ix+#07)
	jr z,lfc09
	ld a,(hl)
	ld (iy+#06),a
.lfc09
	inc (ix+#06)
.lfc0c
	ld de,#0018
	add ix,de
	dec b
	jp nz,lfb67
	ret
;
.play_music
.lfc16
;
	push af
	push bc
	push de
	push hl
	push ix
	push iy
.lfc1e
	call lfdfb
	ld a,#ff
	ld (lf877),a
	ld (lf887),a
	ld iy,lf881
	ld ix,lf8a1
	call lfb65
	ld iy,lf871
	ld ix,lf8e9
	call lfb65
	call lfb1f
	call lfc6e
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.lfc4e
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
.lfc6e
	ld iy,lf871
	ld ix,lf8a1
	ld e,#00
	call lfcf7
	ld e,#01
	call lfcf7
	ld e,#08
	call lfcf7
	ld bc,#0018
	add ix,bc
	ld e,#02
	call lfcf7
	ld e,#03
	call lfcf7
	ld e,#09
	call lfcf7
	ld bc,#0018
	add ix,bc
	ld e,#04
	call lfcf7
	ld e,#05
	call lfcf7
	ld e,#0a
	call lfcf7
	ld e,#06
	ld a,(iy+#06)
	cp #ff
	jr nz,lfcbd
	ld a,(iy+#16)
	cp #ff
	jr z,lfcc1
.lfcbd
	ld d,a
	call lf868
.lfcc1
	ld ix,lf8a1
	ld b,#03
	ld c,#09
	ld h,#00
	ld de,#0018
.lfcce
	ld l,(iy+#17)
	ld a,(ix+#4d)
	and a
	jr z,lfcdf
	inc a
	jr z,lfcdf
	ld l,(iy+#07)
	jr lfce7
.lfcdf
	ld a,(ix+#05)
	and a
	jr nz,lfce7
	ld l,#ff
.lfce7
	ld a,l
	and c
	sla c
	or h
	ld h,a
	add ix,de
	djnz lfcce
	ld d,h
	ld e,#07
	jp lf868
.lfcf7
	ld a,e
	ld (lfd0e),a
	add #10
	ld (lfd02),a
.lfd02 equ $ + 2
	ld d,(iy+#00)
	ld a,(ix+#4d)
	and a
	jr z,lfd0f
	inc a
	jr z,lfd0f
.lfd0e equ $ + 2
	ld d,(iy+#00)
.lfd0f
	jp lf868
.lfd12
	push ix
	pop iy
	ld a,(ix+#13)
	and a
	jr z,lfd21
	ld de,#0006
	add iy,de
.lfd21
	ld l,(iy+#0c)
	ld h,(iy+#0d)
	ld e,(iy+#0e)
	ld d,#00
	add hl,de
	bit 7,(hl)
	jr nz,lfd38
	inc (iy+#0e)
	inc (iy+#0e)
	ret
.lfd38
	ld a,(hl)
	cp #94
	jp z,lfd88
	cp #95
	jp z,lfd99
	cp #9d
	jp z,lfdbc
	cp #9e
	jp z,lfdd0
	cp #ff
	jp z,lfde4
	cp #fe
	jp z,lfdf3
	res 7,a
	add a
	ld e,a
	ld d,#00
	ld hl,lf1fb
	add hl,de
	ex de,hl
	ld hl,lf219
	sbc hl,de
	jr nc,lfd6c
	ld de,lf1fb
.lfd6c
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	push bc
	push iy
	ld iy,lf881
	call lfaba
	ld (ix+#09),#ff
	pop iy
	pop bc
	inc (iy+#0e)
	jp lfd12
.lfd88
	ld (iy+#0e),#00
	dec (ix+#0b)
	jp nz,lfd12
	ld (ix+#13),#00
	jp lfd12
.lfd99
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
	jp lfd12
.lfdbc
	dec (iy+#0f)
	jr nz,lfdc7
	inc (iy+#0e)
	jp lfd12
.lfdc7
	ld a,(iy+#10)
	ld (iy+#0e),a
	jp lfd12
.lfdd0
	inc (iy+#0e)
	inc (iy+#0e)
	ld a,(iy+#0e)
	ld (iy+#10),a
	inc hl
	ld a,(hl)
	ld (iy+#0f),a
	jp lfd12
.lfde4
	pop bc
	pop bc
	ld a,(lf86c)
	ld c,a
	ld a,(lf86b)
	call lf931
	jp lfc1e
.lfdf3
	pop bc
	pop bc
	call lfa6d
	jp lfc1e
.lfdfb
	ld a,(lf009)
	and a
	ret z
	ld ix,lf8a1
	ld b,#03
.lfe06
	dec (ix+#0a)
	jr nz,lfe38
	call lfd12
	ld a,(hl)
	and a
	jr z,lfe15
	add (iy+#11)
.lfe15
	add a
	ld e,a
	ld d,#00
	ld iy,lf790
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
.lfe38
	ld de,#0018
	add ix,de
	djnz lfe06
	ret
;
;org #1893
;
;ld a,#01
;call #f003	; init
; &f000 play
;
.music_info
	db "Un Squadron (1990)(US Gold)()",0
	db "",0

	read "music_end.asm"
