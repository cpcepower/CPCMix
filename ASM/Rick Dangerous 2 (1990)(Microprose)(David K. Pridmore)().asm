; Music of Rick Dangerous 2 (1990)(Microprose)(David K. Pridmore)()
; Ripped by Megachur the 26/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RICKDAN2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #6b51
FIRST_THEME				equ 0
LAST_THEME				equ 10

	read "music_header.asm"

.l6b51
	db #80,#25,#10,#1e,#08,#1e,#30,#20
	db #08,#22,#08,#23,#08,#25,#10,#2a
	db #08,#2a,#30,#27,#08,#25,#08,#23
	db #08,#25,#10,#1e,#08,#1e,#30,#20
	db #08,#22,#08,#23,#08,#25,#60,#ff
.l6b79
	db #80,#22,#10,#19,#08,#19,#30,#1e
	db #08,#1e,#08,#1e,#08,#22,#10,#25
	db #08,#25,#30,#23,#08,#23,#08,#23
	db #08,#22,#10,#19,#08,#19,#30,#1e
.l6b9f equ $ + 6
	db #08,#1e,#08,#1e,#08,#ff,#20,#60
.l6ba2 equ $ + 1
	db #ff,#81,#91,#1e,#18,#1e,#08,#1e
	db #08,#1e,#08,#1e,#18,#23,#18,#1e
	db #18,#1e,#08,#1e,#08,#1e,#08,#1e
	db #18,#23,#18,#1e,#18,#1e,#08,#1e
	db #08,#1e,#08,#1e,#18,#23,#18,#ff
.l6bc9
	db #25,#18,#25,#08,#25,#08,#25,#08
	db #25,#08,#25,#08,#25,#08,#25,#08
.l6bdf equ $ + 6
.l6bde equ $ + 5
	db #25,#08,#25,#08,#ff,#84,#80,#2d
	db #10,#26,#08,#26,#30,#2d,#18,#2b
	db #10,#24,#08,#24,#30,#28,#0c,#2b
	db #0c,#2d,#10,#26,#08,#26,#30,#2d
.l6bfb equ $ + 2
	db #18,#ff,#2b,#60,#ff,#83,#26,#60
	db #24,#60,#26,#60,#24,#60,#24,#60
.l6c10 equ $ + 7
	db #22,#60,#24,#60,#28,#60,#ff,#82
	db #21,#0c,#1a,#0c,#1e,#0c,#1a,#0c
	db #21,#0c,#1e,#0c,#26,#0c,#21,#0c
.l6c23 equ $ + 2
.l6c22 equ $ + 1
	db #ff,#80,#80,#1e,#08,#1e,#18,#2a
.l6c2d equ $ + 4
	db #18,#25,#30,#ff,#80,#7f,#38,#1e
.l6c33 equ $ + 2
	db #30,#ff,#80,#7f,#38,#22,#30,#ff
.l6c39
	db #80,#25,#10,#1e,#08,#1e,#30,#20
	db #08,#21,#08,#23,#08,#25,#10,#2a
.l6c4d equ $ + 4
	db #08,#2a,#30,#ff,#80,#21,#10,#19
	db #08,#19,#30,#1e,#08,#7f,#10,#21
.l6c5f equ $ + 6
	db #10,#25,#08,#25,#30,#ff,#82,#91
.l6c68 equ $ + 7
	db #1e,#48,#23,#18,#1e,#48,#ff,#81
.l6c70 equ $ + 7
	db #25,#10,#22,#08,#2a,#30,#ff,#81
.l6c78 equ $ + 7
	db #22,#10,#1e,#08,#25,#30,#ff,#81
.l6c80 equ $ + 7
	db #1e,#10,#19,#08,#22,#30,#ff,#84
.l6c81
	db #2d,#10,#28,#08,#24,#08,#2d,#10
	db #28,#08,#24,#08,#2d,#08,#28,#08
	db #2e,#08,#28,#08,#2d,#08,#28,#08
.l6c9e equ $ + 5
	db #2e,#08,#28,#08,#ff,#7f,#08,#85
.l6ca2 equ $ + 1
	db #ff,#86,#7f,#80,#7f,#80,#15,#40
	db #18,#40,#15,#40,#18,#40,#14,#40
.l6cb8 equ $ + 7
	db #18,#40,#15,#40,#14,#40,#ff,#84
.l6cb9
	db #2a,#08,#29,#08,#2a,#08,#29,#08
	db #27,#08,#29,#08,#2a,#08,#29,#08
	db #27,#08,#29,#08,#2a,#08,#27,#08
.l6cd2 equ $ + 1
	db #ff,#86,#1b,#40,#1e,#40,#1a,#40
.l6ce0 equ $ + 7
.l6cdc equ $ + 3
	db #1e,#40,#ff,#7f,#08,#85,#ff,#80
	db #26,#0c,#23,#0c,#23,#0c,#26,#0c
.l6cee equ $ + 5
	db #23,#0c,#23,#0c,#ff,#80,#23,#24
.l6cf8 equ $ + 7
	db #2f,#18,#2d,#0c,#29,#48,#ff,#86
.l6cfe equ $ + 5
	db #17,#48,#1a,#48,#ff,#85,#19,#0c
	db #12,#0c,#19,#0c,#12,#0c,#19,#0c
	db #11,#0c,#19,#0c,#11,#0c,#19,#0c
	db #10,#0c,#19,#0c,#10,#0c,#19,#0c
.l6d20 equ $ + 7
	db #11,#0c,#19,#0c,#11,#0c,#ff,#85
	db #12,#30,#11,#30,#10,#30,#11,#30
.l6d2d equ $ + 4
.l6d2a equ $ + 1
	db #ff,#85,#7f,#06,#21,#0c,#21,#0c
	db #21,#0c,#21,#0c,#21,#0c,#21,#0c
.l6d3e equ $ + 5
	db #21,#0c,#21,#0c,#ff,#86,#21,#18
	db #20,#18,#21,#18,#25,#18,#21,#18
.l6d50 equ $ + 7
	db #20,#18,#21,#18,#1e,#18,#ff,#7f
.l6d53 equ $ + 2
	db #60,#ff,#85,#21,#10,#20,#08,#1e
	db #08,#21,#10,#20,#08,#1e,#08,#21
	db #10,#20,#08,#1e,#08,#21,#10,#20
.l6d6d equ $ + 4
	db #08,#1e,#08,#ff,#84,#7f,#48,#1e
	db #08,#21,#08,#25,#08,#2a,#08,#25
.l6d7f equ $ + 6
	db #08,#1e,#08,#21,#08,#ff,#85,#24
	db #08,#21,#08,#23,#08,#21,#08,#ff
.l6d89
	db #80,#1e,#30,#1d,#30,#1b,#30,#19
.l6d92 equ $ + 1
	db #30,#21,#30,#23,#30,#1e,#60,#ff
.l6d99
	db #80,#19,#30,#22,#30,#25,#30,#2a
	db #30,#28,#30,#2a,#30,#19,#60,#ff
.l6da9
	db #84,#91,#1e,#18,#1e,#08,#1e,#08
	db #1e,#08,#1e,#18,#1e,#08,#1e,#08
	db #1e,#08,#1e,#18,#1e,#08,#1e,#08
	db #1e,#08,#1e,#18,#1e,#08,#1e,#08
.l6dcb equ $ + 2
	db #1e,#08,#21,#18,#21,#08,#21,#08
	db #21,#08,#23,#18,#23,#0c,#23,#0c
.l6dda equ $ + 1
	db #ff,#1e,#18,#1e,#08,#1e,#08,#1e
	db #08,#1e,#08,#1e,#08,#1e,#08,#1e
.l6def equ $ + 6
	db #08,#1e,#08,#1e,#08,#ff,#21,#30
.l6df6 equ $ + 5
	db #23,#30,#23,#60,#ff,#86,#34,#24
	db #34,#0c,#33,#0c,#31,#0c,#2f,#14
.l6e04 equ $ + 3
	db #33,#04,#ff,#31,#48,#2a,#18,#ff
.l6e0e equ $ + 5
.l6e09
	db #33,#48,#2a,#18,#ff,#2a,#60,#ff

.l6e11
	dw l6e54,l6e69,l6e7f
	dw l6ebd,l6ebf,l6ec1
	dw l6eb7,l6eb9,l6ebb
	dw l6ea8,l6ead,l6eb2
	dw l6e53,l6e53,l6e53
	dw l6ec3,l6ec6,l6ecb
	dw l6f11,l6f19,l6f22
	dw l6edc,l6efb,l6f06
	dw l6f39,l6f41,l6f49
	dw l6ecf,l6ed3,l6ed7
	dw l6f4c,l6f59,l6f74
.l6e53
	db #ff
.l6e54
	db #00,#00,#fe,#03,#00,#00,#fe,#f4
	db #04,#05,#fe,#f2,#04,#fe,#f8,#05
	db #fe,#00,#00,#00,#ff
.l6e69
	db #01,#09,#01,#09,#fe,#03,#01,#09
	db #01,#09,#fe,#00,#06,#fe,#00,#01
	db #09,#01,#fe,#f9,#09,#ff
.l6e7f
	db #02,#08,#02,#08,#fe,#03,#02,#08
	db #02,#08,#fe,#00,#07,#fe,#fe,#07
	db #fe,#00,#07,#fe,#fe,#07,#07,#fe
	db #fc,#07,#fe,#fe,#07,#fe,#02,#07
	db #fe,#00,#02,#08,#02,#fe,#02,#08
	db #ff
.l6ea8
	db #0b,#fe,#03,#0b,#ff
.l6ead
	db #0c,#fe,#03,#0c,#ff
.l6eb2
	db #0d,#fe,#03,#0d,#ff
.l6eb7
	db #0e,#ff
.l6eb9
	db #0f,#ff
.l6ebb
	db #10,#ff
.l6ebd
	db #12,#ff
.l6ebf
	db #13,#ff
.l6ec1
	db #14,#ff
.l6ec3
	db #8c,#15,#ff
.l6ec6
	db #18,#fe,#05,#18,#ff
.l6ecb
	db #17,#8c,#16,#ff
.l6ecf
	db #8b,#19,#ff,#ff
.l6ed3
	db #84,#1a,#ff,#ff
.l6ed7
	db #1c,#8b,#1b,#ff,#ff
.l6edc
	db #1d,#fe,#03,#1d,#fe,#00,#1d,#fe
	db #03,#1d,#1d,#fe,#06,#1d,#fe,#03
	db #1d,#fe,#06,#1d,#1d,#fe,#03,#1d
	db #fe,#00,#1d,#fe,#03,#1d,#ff
.l6efb
	db #1e,#1e,#fe,#03,#1e,#1e,#fe,#00
	db #1e,#1e,#ff
.l6f06
	db #20,#20,#fe,#03,#20,#20,#fe,#00
	db #20,#20,#ff
.l6f11
	db #88,#21,#ff,#fe,#07,#84,#21,#ff
.l6f19
	db #23,#8e,#24,#ff,#fe,#07,#88,#24
	db #ff
.l6f22
	db #84,#26,#25,#84,#26,#25,#26,#26
	db #ff,#fe,#fb,#25,#26,#26,#fe,#07
	db #25,#84,#26,#fe,#00,#25,#ff
.l6f39
	db #27,#fe,#03,#27,#fe,#00,#27,#ff
.l6f41
	db #29,#fe,#03,#29,#fe,#00,#29,#ff
.l6f49
	db #90,#2a,#ff
.l6f4c
	db #2b,#2b,#30,#31,#30,#30,#2b,#2b
	db #30,#31,#30,#30,#ff
.l6f59
	db #2c,#2c,#fe,#f4,#32,#33,#32,#34
	db #32,#33,#32,#35,#fe,#00,#2c,#2c
	db #fe,#f4,#32,#33,#32,#34,#32,#33
	db #32,#35,#ff
.l6f74
	db #2d,#2f,#2d,#2f,#2e,#2f,#2e,#fe
	db #05,#2f,#fe,#00,#2e,#2f,#2e,#2f
	db #2d,#2f,#2d,#2f,#2e,#2f,#2e,#fe
	db #05,#2f,#fe,#00,#2e,#2f,#2e,#2f
	db #ff
.l6f95
	db l6b51,l6ba2,l6b79,l6bde
	db l6bdf,l6bfb,l6cfe,l6c10
	db l6b9f,l6bc9,l6c22,l6c23
	db l6c2d,l6c33,l6c39,l6c4d
	db l6c5f,l6c68,l6c68,l6c70
	db l6c78,l6c80,l6c81,l6c9e
	db l6ca2,l6cb8,l6cd2,l6cb9
	db l6cdc,l6ce0,l6cee,l6cf8
	db l6cf8,l6cfe,l6d20,l6d2a
	db l6d2d,l6d3e,l6d50,l6d53
	db l6d6d,l6d6d,l6d7f,l6d89
	db l6d99,l6da9,l6dcb,l6dda
	db l6d92,l6def,l6df6,l6e04
	db l6e09,l6e0e

;	db #51,#a2,#79,#de,#df,#fb,#fe,#10
;	db #9f,#c9,#22,#23,#2d,#33,#39,#4d
;	db #5f,#68,#68,#70,#78,#80,#81,#9e
;	db #a2,#b8,#d2,#b9,#dc,#e0,#ee,#f8
;	db #f8,#fe,#20,#2a,#2d,#3e,#50,#53
;	db #6d,#6d,#7f,#89,#99,#a9,#cb,#da
;	db #92,#ef,#f6,#04,#09,#0e
.l6fcb
	db l6b51/&100,l6ba2/&100,l6b79/&100,l6bde/&100
	db l6bdf/&100,l6bfb/&100,l6cfe/&100,l6c10/&100
	db l6b9f/&100,l6bc9/&100,l6c22/&100,l6c23/&100
	db l6c2d/&100,l6c33/&100,l6c39/&100,l6c4d/&100
	db l6c5f/&100,l6c68/&100,l6c68/&100,l6c70/&100
	db l6c78/&100,l6c80/&100,l6c81/&100,l6c9e/&100
	db l6ca2/&100,l6cb8/&100,l6cd2/&100,l6cb9/&100
	db l6cdc/&100,l6ce0/&100,l6cee/&100,l6cf8/&100
	db l6cf8/&100,l6cfe/&100,l6d20/&100,l6d2a/&100
	db l6d2d/&100,l6d3e/&100,l6d50/&100,l6d53/&100
	db l6d6d/&100,l6d6d/&100,l6d7f/&100,l6d89/&100
	db l6d99/&100,l6da9/&100,l6dcb/&100,l6dda/&100
	db l6d92/&100,l6def/&100,l6df6/&100,l6e04/&100
	db l6e09/&100,l6e0e/&100
;	db #6b,#6b,#6b,#6b,#6b,#6b,#6b,#6c
;	db #6b,#6b,#6c,#6c,#6c,#6c,#6c,#6c
;	db #6c,#6c,#6c,#6c,#6c,#6c,#6c,#6c
;	db #6c,#6c,#6c,#6c,#6c,#6c,#6c,#6c
;	db #6c,#6c,#6d,#6d,#6d,#6d,#6d,#6d
;	db #6d,#6d,#6d,#6d,#6d,#6d,#6d,#6d
;	db #6d,#6d,#6d,#6e,#6e,#6e

	db #8a,#21
	db #39,#00,#00,#00,#00,#00,#8a,#21
	db #01,#00,#00,#00,#00,#00
.l7011
	db #72,#e0,#60,#fc,#7f,#12,#04,#02
	db #00,#01,#40,#fc,#00,#fc,#6c,#00
	db #00,#00,#00,#01,#72,#e0,#50,#fc
	db #70,#12,#04,#02,#00,#01,#72,#e0
	db #4e,#fc,#68,#12,#04,#02,#00,#01
	db #7f,#fc,#00,#fc,#7f,#00,#00,#00
	db #00,#01,#7f,#fc,#00,#fc,#64,#00
	db #00,#00,#00,#01,#06,#ff,#7f,#ff
	db #7f,#20,#05,#02,#00,#01
.l7057
	db #7f,#ec,#0e,#f5,#55,#ff,#00,#00
	db #00,#03,#b8,#03,#01,#15,#f5,#02
	db #94,#55,#ff,#00,#00,#00,#02,#c2
	db #01,#01,#7f,#81,#01,#ff,#55,#00
	db #01,#23,#00,#02,#09,#00,#01,#7f
	db #f0,#00,#f0,#7f,#00,#1c,#00,#00
	db #03,#00,#04,#01,#80,#fe,#00,#fe
	db #7f,#00,#00,#40,#00,#01,#00,#00
	db #01,#7f,#fe,#01,#fe,#7f,#00,#00
	db #00,#ff,#02,#fa,#00,#20,#1f,#fe
	db #4a,#cc,#7f,#01,#01,#4e,#00,#01
	db #16,#02,#02,#1e,#fe,#42,#fe,#7f
	db #01,#01,#4e,#00,#01,#50,#00,#02
	db #1e,#fe,#42,#fe,#7f,#ff,#01,#4e
	db #00,#01,#50,#00,#02,#7f,#e6,#00
	db #eb,#7f,#00,#03,#b7,#ff,#03,#76
	db #03,#0d,#19,#ff,#00,#80,#7f,#00
	db #00,#02,#00,#01,#3d,#00,#32,#7f
	db #f7,#00,#ba,#7f,#ff,#00,#00,#00
	db #01,#b3,#0e,#01,#7f,#ff,#00,#ff
	db #7f,#00,#00,#fa,#ff,#01,#a3,#05
	db #32,#56,#fe,#00,#fe,#7f,#00,#00
	db #fc,#ff,#02,#ff,#00,#1d,#7f,#fd
	db #00,#fd,#71,#ff,#00,#00,#00,#02
	db #c1,#00,#0c,#08,#ff,#00,#ff,#60
	db #00,#80,#00,#00,#05,#10,#00,#18
	db #0c,#d6,#00,#ff,#05,#00,#01,#99
	db #00,#05,#08,#00,#04,#0a,#ff,#00
	db #ff,#03,#ff,#00,#00,#00,#06,#e4
	db #00,#02,#60,#f8,#00,#ff,#7f,#00
	db #00,#ee,#ff,#02,#4e,#01,#20,#40
	db #c0,#00,#80,#7f,#ff,#00,#00,#00
	db #03,#ee,#03,#15,#0c,#fe,#00,#fe
	db #55,#ff,#00,#00,#00,#02,#40,#00
	db #01,#7f,#fc,#00,#fc,#7e,#00,#00
	db #fb,#ff,#03,#e8,#08,#02,#2b,#fa
	db #00,#ff,#7f,#00,#00,#07,#00,#03
	db #c5,#09,#32,#7f,#fe,#00,#ff,#7f
	db #ff,#00,#00,#00,#02,#0b,#00,#32
	db #4a,#f5,#00,#fe,#7f,#ff,#00,#00
	db #00,#03,#56,#03,#32,#0a,#ff,#00
	db #ff,#1d,#ff,#00,#00,#00,#05,#61
	db #0f,#33,#05,#80,#61,#f7,#60,#00
	db #00,#fa,#ff,#02,#2f,#01,#20,#05
	db #ff,#00,#ff,#74,#00,#84,#7b,#ff
	db #01,#35,#0e,#32
.l71c3
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04d4,#0470,#0431,#03f4
	dw #03dc,#0386,#0353,#0324
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
	dw #0018
.l7273 equ $ + 6
.l7272 equ $ + 5
.l7271 equ $ + 4
.l726e equ $ + 1
.l726d
	db #3f,#fe,#f7,#09,#91,#33,#33,#73
	db #f3,#e2,#33,#33,#33,#33,#33,#33
.l7284 equ $ + 7
.l7283 equ $ + 6
.l7280 equ $ + 3
.l727f equ $ + 2
	db #33,#2a,#00,#fd,#ef,#12,#33,#33
.l7285
	db #b3,#33,#33,#33,#33,#33,#33,#33
.l7292 equ $ + 5
.l7291 equ $ + 4
	db #33,#33,#33,#33,#62,#fb,#df,#24
.l7297 equ $ + 2
.l7296 equ $ + 1
.l7295
	db #0f,#1b,#d8,#3c,#3c,#f5,#ff,#7f
	db #7f,#bf,#ff,#fa,#c0,#b4
.l72a3
	db #b4
.l72a4
	db #00
.l72a5
	db #f3
	ld a,ly
	ld (ix+#0f),a
	ld a,hy
	ld (ix+#10),a
	ld (ix+#03),l
	ld (ix+#04),h
	ld (ix+#06),c
	ld a,(iy+#05)
	ld (ix+#07),a
	ld a,(iy+#06)
	and #7f
	srl a
	jr nz,l72ca
	ld a,#01
.l72ca
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(l726d)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,l72f3
	and (ix+#00)
.l72f3
	bit 1,c
	jr z,l72fa
	and (ix+#01)
.l72fa
	ld (l726d),a
	bit 2,c
	jr nz,l730b
	ld hl,l7459
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l730b
	call l7511
	ld a,(iy+#00)
	ld c,#0d
	call l7528
	ld a,(iy+#04)
	ld c,#0b
	call l7528
	inc c
	xor a
	call l7528
	ld (ix+#05),#ff
	jp l751d
.l732a
	call l7511
	ld c,#07
	ld a,(l726d)
	or #3f
	ld (l726d),a
	call l7528
	xor a
	inc c
	call l7528
	inc c
	call l7528
	inc c
	call l7528
	ld a,#01
	inc c
	call l7528
	inc c
	xor a
	call l7528
	inc c
	call l7528
	ld (l727f),a
	ld (l7291),a
	ld (l72a3),a
	ld (l7273),a
	ld (l7285),a
	ld (l7297),a
	jp l751d
.l736b
	ld a,(l726d)
	and #3f
	cp #3f
	ret z
	ld ix,l726e
	call l7427
	ld ix,l7280
	call l7427
	ld ix,l7292
	call l7427
	call l7511
	ld ix,l726e
	ld c,#07
	ld a,(l726d)
	call l7528
	ld c,#00
	ld a,(l7271)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,l73a9
	ld (l72a4),a
.l73a9
	call l7528
	inc c
	ld a,(l7272)
	adc (ix+#0a)
	call l7528
	inc c
	ld a,(l7283)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,l73c7
	ld (l72a4),a
.l73c7
	call l7528
	inc c
	ld a,(l7284)
	adc (ix+#1c)
	call l7528
	inc c
	ld a,(l7295)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,l73e5
	ld (l72a4),a
.l73e5
	call l7528
	inc c
	ld a,(l7296)
	adc (ix+#2e)
	call l7528
	inc c
	ld a,(l72a4)
	rrca
	rrca
	rrca
	call l7528
	ld c,#08
	ld a,(l7273)
	srl a
	srl a
	srl a
	call l7528
	inc c
	ld a,(l7285)
	srl a
	srl a
	srl a
	call l7528
	inc c
	ld a,(l7297)
	srl a
	srl a
	srl a
	call l7528
	jp l751d
.l7427
	ld a,(l726d)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l7448
	cp #ff
	jr z,l7448
	dec (ix+#06)
.l7448
	call l74cf
	bit 2,(iy+#09)
	jp nz,l74c8
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.l7459
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l7468
	ld (ix+#05),a
	ret
.l7468
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l7478
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l7478
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l748a
	cp (iy+#02)
	jr c,l748a
	ld (ix+#05),a
	ret
.l748a
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l749a
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l749a
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l74a9
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l74a9
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l74b6
	ld (ix+#05),a
	ret
.l74b6
	ld (ix+#05),#00
	ld a,(l726d)
	or (ix+#02)
	ld (l726d),a
	res 7,(ix+#11)
	ret
.l74c8
	ld a,(ix+#06)
	and a
	ret nz
	jr l74b6
.l74cf
	ld a,(ix+#07)
	and a
	jr z,l74dc
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.l74dc
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld c,(ix+#0b)
	ld b,(ix+#0c)
	add hl,bc
	ld (ix+#09),l
	ld (ix+#0a),h
	dec (ix+#08)
	ret nz
	ld a,(iy+#06)
	and a
	ret z
	jp p,l7500
	ld (ix+#07),#ff
	ret
.l7500
	ld (ix+#08),a
	ld a,c
	cpl
	ld c,a
	ld a,b
	cpl
	ld b,a
	inc bc
	ld (ix+#0b),c
	ld (ix+#0c),b
	ret
.l7511
	ld bc,#f782
	out (c),c
	ld de,#c000
	ld hl,#f680
	ret
.l751d
	ld bc,#f40e
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ret
.l7528
	push bc
	ld b,#f4
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ld b,#f4
	out (c),a
	ld b,h
	out (c),l
	out (c),e
	pop bc
	ret
.l753d
.music_end
	db &00
; init sound effects
	di
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,l7057
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,l726e
	call l72a5
	set 7,(ix+#11)
	ei
	ret
.l756d equ $ + 7
.l7567 equ $ + 1
.l7566
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7575 equ $ + 7
.l7573 equ $ + 5
.l7572 equ $ + 4
.l7571 equ $ + 3
.l7570 equ $ + 2
.l756f equ $ + 1
	db #00,#00,#00,#00,#00,#55,#55,#55
.l757c equ $ + 6
.l757b equ $ + 5
	db #00,#aa,#00,#00,#00,#08,#55,#ff
.l7585 equ $ + 7
.l7584 equ $ + 6
.l7582 equ $ + 4
	db #ff,#aa,#55,#95,#3f,#3f,#95,#3f
.l758a equ $ + 4
.l7588 equ $ + 2
.l7587 equ $ + 1
.l7586
	db #3f,#6a,#3f,#6a,#3f,#d5,#ff,#ff
.l7591 equ $ + 3
.l7590 equ $ + 2
	db #c0,#c4,#10,#b4,#bc,#7b,#33,#b3
.l759d equ $ + 7
.l759c equ $ + 6
.l759b equ $ + 5
.l759a equ $ + 4
.l7599 equ $ + 3
.l7597 equ $ + 1
	db #62,#62,#00,#00,#00,#40,#f7,#b3
	db #62
.l759f
	db #c0,#c0,#33,#91,#33,#73
.l75a5
	db #7f,#b3,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#55,#aa,#00
	db #00,#00,#00,#55,#aa,#00,#00,#00
;
.init_music	; l75bd
;
	push af
	call l732a
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l6e11
	add l
	ld l,a
	jr nc,l75ce
	inc h
.l75ce
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l7567),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l757c),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l7591),de
	xor a
	ld (l7570),a
	ld (l7585),a
	ld (l759a),a
	ld (l7575),a
	ld (l758a),a
	ld (l759f),a
	cpl
	ld (l7571),a
	ld (l7586),a
	ld (l759b),a
	ld a,#01
	ld (l756f),a
	ld (l7584),a
	ld (l7599),a
	ld (l7572),a
	ld (l7587),a
	ld (l759c),a
	ld hl,l75a5
	ld bc,#030a
.l761d
	xor a
.l761e
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l761e
	djnz l761d
	ld hl,l7011
	ld (l756d),hl
	ld (l7582),hl
	ld (l7597),hl
	ld a,#ff
	ld (l7573),a
	ld (l7588),a
	ld (l759d),a
	ld (l753d),a
	ret
;
.play_music
;
	call l736b
	ld a,(l753d)
	and a
	ret z
	ld a,(l7573)
	ld hl,l7588
	or (hl)
	ld hl,l759d
	or (hl)
	ld (l753d),a
	jr nz,l766f
	xor a
	ld (l753d),a
	ld a,(l726d)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l753d),a
	ret
.l766f
	ld iy,l7566
	ld ix,l726e
	call l768d
	ld iy,l757b
	ld ix,l7280
	call l768d
	ld iy,l7590
	ld ix,l7292
.l768d
	call l77ce
	ld a,(iy+#0b)
	and a
	jr z,l7712
.l7696
	dec (iy+#09)
	jr z,l76ad
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l7712
.l76ad
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l76b7
	ld a,(hl)
	cp #80
	jr c,l76f2
	cp #fe
	jr nz,l76c9
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l76b7
.l76c9
	cp #ff
	jr nz,l76d2
	xor a
	ld (iy+#0d),a
	ret
.l76d2
	cp #c0
	jr nc,l76df
	and #1f
	ld (iy+#09),a
	inc hl
	jp l76b7
.l76df
	and #07
	add (iy+#00)
	ld de,l75a5
	add e
	ld e,a
	jr nc,l76ec
	inc d
.l76ec
	inc hl
	ldi
	jp l76b7
.l76f2
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,l6f95
	add hl,bc
	ld e,(hl)
	ld hl,l6fcb
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr l7718
.l7712
	ld e,(iy+#05)
	ld d,(iy+#06)
.l7718
	dec (iy+#0c)
	jr z,l772a
	ld a,(de)
	cp #80
	call nc,l7794
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l772a
	ld a,(de)
	cp #80
	jr c,l773b
	call l7794
	ld a,(iy+#0b)
	and a
	jr z,l772a
	jp l7696
.l773b
	cp #7f
	jr z,l7787
	cp #7e
	jr nz,l774c
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l7760
.l774c
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,l71c3
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l7760
	ld a,(iy+#0f)
	or #c0
	ld (iy+#14),a
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld c,a
	ld (iy+#05),e
	ld (iy+#06),d
	ld e,(iy+#07)
	ld a,(iy+#08)
	ld hy,a
	ld ly,e
	bit 7,(ix+#11)
	ret nz
	jp l72a5
.l7787
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l7794
	ld a,(de)
	cp #88
	jr nc,l77b2
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l75a5
	add hl,bc
	ld c,(hl)
	ld hl,l7011
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l77b2
	cp #ff
	jr nz,l77bb
	ld (iy+#0b),#ff
	ret
.l77bb
	cp #c0
	jr nc,l77c6
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l77c6
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l77ce
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l77e2
	res 7,(iy+#14)
	ret
.l77e2
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l7816
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l7816
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l7805
	inc h
	ld (iy+#11),h
.l7805
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l784b
.l7816
	ld hl,#68f9
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l7830
	bit 6,(iy+#14)
	jr nz,l7830
	ld (iy+#13),#01
	ret
.l7830
	res 6,(iy+#14)
	ld a,(hl)
	rrca
	rrca
	rrca
	and d
	ld (iy+#12),a
	ld a,(hl)
	and d
	inc a
	ld (iy+#13),a
	ld (iy+#10),l
	ld (iy+#11),h
	ld a,(iy+#0e)
.l784b
	add a
	ld hl,l71c3
	add l
	ld l,a
	jr nc,l7854
	inc h
.l7854
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
	push bc
	ld c,a
	push bc
	ld a,(l753d)
	and a
	pop bc
	ld a,c
	pop bc
	ret nz
	push hl
	push de
	push bc
	push ix
	push iy
	ld e,a
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	ld c,l
	ld b,h
	add hl,hl
	add hl,bc
	ld c,a
	ld b,#00
	add hl,bc
	ld bc,l7057
	add hl,bc
	push hl
	pop iy
	call l78a5
	jp nc,l7897
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	call l72a5
.l7897
	pop iy
	pop ix
	pop bc
	pop de
	pop hl
	ret
.l789f
	db #00
	ld a,(l753d)
	and a
	ret
.l78a5
	push af
	ld ix,l726e
	ld a,(l726d)
	and (ix+#02)
	cp (ix+#02)
	jp nz,l78b9
.l78b6
	pop af
.l78b7
	scf
	ret
.l78b9
	ld ix,l7280
	ld a,(l726d)
	and (ix+#02)
	cp (ix+#02)
	jp z,l78b6
	ld ix,l7292
	ld a,(l726d)
	and (ix+#02)
	cp (ix+#02)
	jp z,l78b6
	pop af
	cp #00
	ret z
	cp #02
	ret z
	ld a,(l789f)
	inc a
	cp #03
	jp c,l78ea
	xor a
.l78ea
	ld (l789f),a
	ld ix,l726e
	and a
	jp z,l78b7
	ld ix,l7280
	cp #01
	jp z,l78b7
	ld ix,l7292
	scf
	ret
;
.music_info
	db "Rick Dangerous 2 (1990)(Microprose)(David K. Pridmore)",0
	db "",0

	read "music_end.asm"
