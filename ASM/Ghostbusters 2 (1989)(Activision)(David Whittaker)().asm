; Music of Ghostbusters 2 (1989)(Activision)(David Whittaker)()
; Ripped by Megachur the 04/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GHOSTBU2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #9ef2
FIRST_THEME				equ 0
LAST_THEME				equ 4

	read "music_header.asm"

.l9ef2
;	db #20
;	dw l9f07,l9fc9,la02b
	db #2a
	dw level1_9f30,level1_9f42,level1_9f58
;	db #24
;	dw level1_a21f,level1_a223,level1_a227
;	db #2a
;	dw level1_a25e,level1_a262,level1_a266
	db #20
	dw level2_9f07,level2_9fc9,level2_a02b
;	db #24
;	dw level2_a21f,level2_a223,level2_a227
;	db #2a
;	dw level2_a25e,level2_a262,level2_a266
	db #14
	dw level3_a111,level3_a11f,level3_a129
;	db #24
;	dw level3_a21f,level3_a223,level3_a227
;	db #2a
;	dw level3_a25e,level3_a262,level3_a266
	db #24
	dw la21f,la223,la227
	db #2a
	dw la25e,la262,la266
;.l9f07
;	dw la043,la043,la043,la043
;	dw la043,la043,la043,la061
;	dw la043,la043,la043,la061
;	dw la043,la043,la043,la061
;	dw la043,la043,la043,la061
;	dw la043,la043,la043,la061
;	dw la043,la043,la080,la080
;	dw la080,la080,la043,la061
;	dw la043,la043,la080,la080
;	dw la080,la080,la043,la061
;	dw la043,la043,la043,la043
;	dw la043,la043,la043,la061
;	dw la043,la043,la043,la061
;	dw la043,la043,la043,la061
;	dw la043,la043,la043,la061
;	dw la043,la043,la043,la061
;	dw la043,la043,la080,la080
;	dw la080,la080,la043,la061
;	dw la043,la043,la080,la080
;	dw la080,la080,la043,la061
;	dw la043,la043,la080,la080
;	dw la080,la080,la043,la061
;	dw la043,la043,la080,la080
;	dw la080,la080,la043,la061
;	dw #0000
;.l9fc9
;	dw la09b,la0b2,la0c3,la09b
;	dw la09b,la0b2,la0c3,la09b
;	dw la09b,la0b2,la0c3,la09b
;	dw la0d4,la0fc,la124,la0d4
;	dw la0d4,la0fc,la124,la0d4
;	dw la09b,la0b2,la0c3,la09b
;	dw la09b,la0b2,la0c3,la09b
;	dw la09b,la0b2,la0c3,la09b
;	dw la0d4,la0fc,la124,la0d4
;	dw la0d4,la0fc,la124,la0d4
;	dw la0d4,la0fc,la124,la0d4
;	dw la0d4,la0fc,la124,la0d4
;	dw #0000
;.la02b
;	dw la14c,la14c,la14c,la15f
;	dw la14c,la14c,la14c,la15f
;	dw la1f7,la1f1,la219,#0000
;.la043
;	db #88,#01,#01,#e1,#8a,#d2,#0e,#e0
;	db #d5,#8c,#84,#14,#01,#2b,#e1,#8a
;	db #d2,#0e,#e0,#0e,#d5,#8c,#84,#14
;	db #01,#30,#8b,#d1,#27,#87
;.la061
;	db #e1,#8a,#d2,#0e,#e0,#d5,#8c,#84
;	db #14,#01,#2b,#e1,#8a,#d2,#0e,#e0
;	db #d5,#8c,#84,#14,#01,#30,#84,#14
;	db #01,#2e,#84,#14,#01,#2b,#87
;.la080
;	db #e1,#8a,#d2,#13,#e0,#d5,#8c,#84
;	db #14,#01,#2b,#e1,#8a,#d2,#13,#e0
;	db #13,#d5,#8c,#84,#14,#01,#30,#8b
;	db #d1,#27,#87
;.la09b
;	db #8a,#d2,#88,#01,#01,#90,#e1,#1a
;	db #e3,#1a,#d5,#e1,#c8,#26,#c0,#d2
;	db #e1,#1a,#e3,#1a,#e1,#1a,#87
;.la0b2
;	db #e1,#1a,#e3,#1a,#d5,#e1,#c2,#2b
;	db #c0,#d2,#e1,#1a,#e3,#1a,#e1,#1a
;	db #87
;.la0c3
;	db #e1,#1a,#e3,#1a,#d5,#e1,#c6,#24
;	db #c0,#d2,#e1,#1a,#e3,#1a,#e1,#1a
;	db #87
;.la0d4
;	db #e1,#1a,#d6,#c8,#26,#c0,#d2,#e0
;	db #1a,#e1,#d6,#c8,#26,#c0,#d2,#e0
;	db #1a,#e1,#d6,#c8,#26,#c0,#d2,#e0
;	db #1a,#e1,#d6,#c8,#26,#c0,#d2,#e0
;	db #1a,#d6,#c8,#26,#26,#c0,#d2,#87
;.la0fc
;	db #e1,#1f,#d6,#c2,#2b,#c0,#d2,#e0
;	db #1f,#e1,#d6,#c2,#2b,#c0,#d2,#e0
;	db #1f,#e1,#d6,#c2,#2b,#c0,#d2,#e0
;	db #1f,#e1,#d6,#c2,#2b,#c0,#d2,#e0
;	db #1f,#d6,#c2,#2b,#2b,#c0,#d2,#87
;.la124
;	db #e1,#1f,#d6,#c6,#24,#c0,#d2,#e0
;	db #1f,#e1,#d6,#c6,#24,#c0,#d2,#e0
;	db #1f,#e1,#d6,#c6,#24,#c0,#d2,#e0
;	db #1f,#e1,#d6,#c2,#2b,#c0,#d2,#e0
;	db #1f,#d6,#c2,#2b,#2b,#c0,#d2,#87
;.la14c
;	db #8a,#88,#01,#01,#90,#d5,#e1,#26
;	db #e7,#26,#e0,#21,#21,#23,#e1,#26
;	db #e0,#23,#87
;.la15f
;	db #e1,#26,#eb,#26,#d8,#e1,#2a,#2d
;	db #e5,#2a,#e1,#28,#26,#26,#e3,#28
;	db #e9,#2a,#e0,#23,#e1,#26,#28,#e4
;	db #2a,#e1,#2a,#28,#26,#26,#e1,#26
;	db #e0,#26,#23,#e7,#21,#e1,#26,#e0
;	db #2a,#e1,#2d,#e8,#2f,#e2,#28,#e1
;	db #26,#26,#28,#ea,#2a,#e1,#23,#e0
;	db #26,#e1,#2f,#2a,#e1,#28,#e4,#26
;	db #e0,#26,#e2,#2d,#e0,#2a,#e1,#2d
;	db #e8,#2a,#e1,#2d,#2d,#2a,#2d,#e8
;	db #2f,#e1,#26,#e2,#26,#e1,#28,#ed
;	db #23,#e0,#2f,#2d,#2a,#e1,#2d,#e2
;	db #2f,#e1,#28,#e0,#26,#e2,#26,#e3
;	db #2d,#e7,#2a,#e1,#2d,#2d,#2a,#2d
;	db #e8,#2f,#df,#e4,#34,#e2,#32,#d8
;	db #ec,#34,#e0,#2f,#2d,#2a,#e1,#2d
;	db #e2,#2f,#e1,#28,#e0,#26,#e2,#26
;	db #e3,#2d,#e8,#2a,#e4,#84,#01,#0e
;	db #2f,#87
;.la1f7 equ $ + 6
;.la1f1
;	db #e1,#36,#39,#e0,#36,#80,#df,#e7
;	db #39,#e4,#36,#e0,#39,#36,#80,#e9
;	db #32,#e0,#d2,#2d,#2d,#2f,#32,#8f
;	db #2f,#df,#e9,#32,#e0,#d2,#2d,#2d
;	db #2f,#32,#8f,#2f,#de,#e9,#32,#87
;.la219
;	db #e5,#84,#01,#08,#8f,#87
.la21f
	dw la22b,#0000
.la223
	dw la23c,#0000
.la227
	dw la24d,#0000
.la22b
	db #8a,#88,#01,#01,#d8,#e2,#1f,#e0
	db #1b,#1f,#20,#e2,#22,#26,#e8,#27
	db #8e
.la23c
	db #8a,#88,#01,#01,#d8,#e2,#22,#e0
	db #1f,#22,#26,#e2,#27,#2c,#e8,#2b
	db #8e
.la24d
	db #8a,#88,#01,#01,#d8,#e2,#27,#e0
	db #22,#27,#29,#e2,#2b,#30,#e8,#2e
	db #8e
.la25e
	dw la26a,#0000
.la262
	dw la272,#0000
.la266
	dw la288,#0000
.la26a
	db #8a,#88,#01,#01,#d7,#ff,#3c,#87
.la272
	db #88,#01,#01,#8a,#db,#e0,#1f,#1f
	db #e1,#22,#1f,#22,#e5,#1f,#e0,#1f
	db #1f,#1f,#1d,#e7,#1b,#8e
.la288
	db #88,#01,#01,#8a,#d8,#e0,#24,#24
	db #e1,#27,#24,#26,#e5,#22,#e0,#24
	db #24,#24,#22,#e7,#1f,#8e

; level 1 music data

;.level1_9f1b
;	db #2a
;	dw level1_9f30,level1_9f42,level1_9f58
;	db #24
;	dw level1_a21f,level1_a223,level1_a227
;	db #2a
;	dw level1_a25e,level1_a262,level1_a266
.level1_9f32 equ $ +2
.level1_9f30
	dw level1_9f70,level1_9f90,level1_9f90,level1_9f90
	dw level1_9f90,level1_9f90,level1_9fc5,level1_9f90
	dw #0000
.level1_9f44 equ $ +2
.level1_9f42
	dw level1_9fe9,level1_a014,level1_a014,level1_a014
	dw level1_a014,level1_a014,level1_a180,level1_a180
	dw level1_a085,level1_a014,#0000
.level1_9f5a equ $ +2
.level1_9f58
	dw level1_a0c6,level1_a0f7,level1_a159,level1_a159
	dw level1_a121,level1_a1c2,level1_a181,level1_a181
	dw level1_a181,level1_a1a3,level1_a121,#0000
.level1_9f70
	db #89,#ff,#91,#8a,#88,#01,#01,#ef
	db #df,#95,#0b,#20,#95,#0c,#1f,#95
	db #0d,#ed,#1e,#95,#0e,#e0,#1b,#18
	db #ef,#23,#95,#0f,#90,#93
	dw level1_9f32
.level1_9f90
	db #db,#88,#01,#01,#e1,#0c,#e2,#0c
	db #e0,#10,#e1,#13,#e3,#16,#15,#e1
	db #0c,#e2,#0c,#e0,#10,#e1,#13,#e1
	db #16,#16,#e3,#15,#e1,#0c,#e2,#0c
	db #e0,#10,#e1,#13,#e3,#16,#15,#e1
	db #0c,#e2,#0c,#e0,#10,#e1,#13,#e1
	db #0a,#0a,#e3,#09,#87
.level1_9fc5
	db #d8,#88,#01,#01,#e5,#18,#16,#15
	db #14,#e3,#13,#11,#e5,#18,#16,#15
	db #14,#e3,#13,#11,#e5,#18,#16,#15
	db #14,#e3,#13,#11,#e5,#18,#16,#15
	db #14,#e7,#13,#87
.level1_9fe9
	db #8a,#81,#92,#00,#e1,#d9,#21,#22
	db #21,#22,#21,#22,#21,#22,#21,#22
	db #21,#22,#21,#22,#21,#22,#da,#21
	db #22,#21,#22,#21,#22,#21,#22,#d8
	db #2d,#2e,#2d,#2e,#2d,#2e,#2d,#2e
	db #93
	dw level1_9f44
.level1_a014
	db #db,#88,#01,#01,#90,#e1,#18,#18
	db #e0,#8c,#84,#14,#01,#2b,#8a,#1c
	db #e1,#1f,#22,#d3,#8c,#84,#14,#01
	db #2b,#db,#84,#14,#01,#30,#8a,#21
	db #e1,#18,#18,#e0,#8c,#84,#14,#01
	db #2b,#8a,#1c,#e1,#1f,#22,#d3,#8c
	db #84,#14,#01,#2b,#db,#84,#14,#01
	db #30,#8a,#21,#e1,#18,#18,#e0,#8c
	db #84,#14,#01,#2b,#8a,#1c,#e1,#1f
	db #22,#d3,#8c,#84,#14,#01,#2b,#db
	db #84,#14,#01,#30,#8a,#21,#18,#18
	db #e0,#8c,#84,#14,#01,#2b,#8a,#1c
	db #e1,#1f,#16,#d3,#8c,#84,#14,#01
	db #2b,#db,#84,#14,#01,#30,#8a,#15
	db #87
.level1_a085
	db #82,#df,#e3,#37,#d2,#e1,#33,#df
	db #e3,#37,#d2,#e1,#33,#df,#e3,#37
	db #d2,#e1,#33,#df,#e3,#37,#d2,#e1
	db #33,#df,#37,#d2,#33,#e0,#31,#32
	db #e1,#33,#df,#e3,#37,#d2,#e1,#33
	db #df,#e3,#37,#d2,#e1,#33,#df,#e3
	db #37,#d2,#e1,#33,#df,#e3,#37,#d2
	db #e1,#33,#e7,#df,#84,#01,#1e,#3c
	db #87
.level1_a0c6
	db #8a,#88,#01,#01,#e1,#d9,#21,#22
	db #21,#22,#21,#22,#21,#22,#21,#22
	db #21,#22,#21,#22,#21,#22,#da,#88
	db #02,#02,#21,#22,#21,#22,#21,#22
	db #21,#22,#d8,#2d,#2e,#2d,#2e,#2d
	db #2e,#2d,#2e,#88,#01,#01,#93
	dw level1_9f5a
.level1_a0f7
	db #d8,#e1,#81,#0c,#82,#e5,#1f,#e3
	db #22,#21,#e1,#81,#0c,#82,#e5,#1f
	db #e3,#26,#24,#e1,#81,#0c,#82,#e5
	db #1f,#e3,#22,#21,#e1,#81,#0c,#82
	db #e5,#1f,#db,#e1,#26,#26,#e3,#d8
	db #24,#87
.level1_a121
	db #d8,#e1,#81,#0c,#82,#e5,#1f,#e3
	db #22,#21,#e1,#81,#0c,#82,#e1,#1f
	db #e0,#2e,#2d,#e1,#2b,#e0,#2d,#2b
	db #e1,#29,#e3,#2b,#e1,#81,#0c,#82
	db #e5,#1f,#e3,#26,#24,#e1,#81,#0c
	db #82,#e1,#1f,#e0,#34,#32,#e1,#30
	db #e0,#32,#30,#e1,#2e,#e3,#30,#87
.level1_a159
	db #d2,#e1,#0c,#e0,#30,#30,#e1,#df
	db #34,#e0,#30,#80,#e1,#32,#d2,#e1
	db #2e,#e7,#80,#e0,#30,#30,#30,#30
	db #e1,#df,#2e,#e0,#30,#80,#db,#e3
	db #8c,#84,#14,#02,#30,#8a,#87
.level1_a181 equ $ + 1
.level1_a180
	db #81,#de,#e3,#33,#d2,#e1,#30,#de
	db #e3,#33,#d2,#e1,#30,#de,#e3,#33
	db #d2,#e1,#30,#de,#e3,#33,#d2,#e1
	db #30,#de,#33,#d2,#30,#e0,#2e,#2f
	db #e1,#30,#87
.level1_a1a3
	db #df,#e3,#33,#d2,#e1,#30,#df,#e3
	db #33,#d2,#e1,#30,#df,#e3,#33,#d2
	db #e1,#30,#df,#e3,#33,#d2,#e1,#30
	db #e7,#df,#84,#01,#1e,#37,#87
.level1_a1c2
	db #d2,#e0,#33,#33,#30,#30,#d8,#e9
	db #32,#d2,#e0,#30,#30,#d8,#e1,#2e
	db #d2,#30,#d8,#eb,#30,#d2,#e0,#2e
	db #2e,#2b,#2b,#d8,#e7,#2d,#e3,#33
	db #e0,#32,#80,#e9,#30,#db,#e3,#8c
	db #84,#14,#02,#30,#8a,#d2,#e0,#33
	db #33,#30,#30,#d8,#e9,#32,#d2,#e0
	db #30,#30,#d8,#e1,#2e,#d2,#30,#d8
	db #eb,#30,#d2,#e0,#2e,#2e,#2b,#2b
	db #d8,#e7,#2d,#e3,#3a,#e0,#39,#80
	db #e9,#37,#db,#e1,#8c,#84,#14,#02
	db #30,#8a,#d8,#2b,#87
;.level1_a21f
;	dw level1_a22b,#0000
;.level1_a223
;	dw level1_a23c,#0000
;.level1_a227
;	dw level1_a24d,#0000
;.level1_a22b
;	db #8a,#88,#01,#01,#d8,#e2,#1f,#e0
;	db #1b,#1f,#20,#e2,#22,#26,#e8,#27
;	db #8e
;.level1_a23c
;	db #8a,#88,#01,#01,#d8,#e2,#22,#e0
;	db #1f,#22,#26,#e2,#27,#2c,#e8,#2b
;	db #8e
;.level1_a24d
;	db #8a,#88,#01,#01,#d8,#e2,#27,#e0
;	db #22,#27,#29,#e2,#2b,#30,#e8,#2e
;	db #8e
;.level1_a25e
;	dw level1_a26a,#0000
;.level1_a262
;	dw level1_a272,#0000
;.level1_a266
;	dw level1_a288,#0000
;.level1_a26a
;	db #8a,#88,#01,#01,#d7,#ff,#3c,#87
;.level1_a272
;	db #88,#01,#01,#8a,#db,#e0,#1f,#1f
;	db #e1,#22,#1f,#22,#e5,#1f,#e0,#1f
;	db #1f,#1f,#1d,#e7,#1b,#8e
;.level1_a288
;	db #88,#01,#01,#8a,#d8,#e0,#24,#24
;	db #e1,#27,#24,#26,#e5,#22,#e0,#24
;	db #24,#24,#22,#e7,#1f,#8e

; level 2 music data

;.level2_9ef2
;	db #20
;	dw level2_9f07,level2_9fc9,level2_a02b
;	db #24
;	dw level2_a21f,level2_a223,level2_a227
;	db #2a
;	dw level2_a25e,level2_a262,level2_a266
.level2_9f07
	dw level2_a043,level2_a043,level2_a043,level2_a043
	dw level2_a043,level2_a043,level2_a043,level2_a061
	dw level2_a043,level2_a043,level2_a043,level2_a061
	dw level2_a043,level2_a043,level2_a043,level2_a061
	dw level2_a043,level2_a043,level2_a043,level2_a061
	dw level2_a043,level2_a043,level2_a043,level2_a061
	dw level2_a043,level2_a043,level2_a080,level2_a080
	dw level2_a080,level2_a080,level2_a043,level2_a061
	dw level2_a043,level2_a043,level2_a080,level2_a080
	dw level2_a080,level2_a080,level2_a043,level2_a061
	dw level2_a043,level2_a043,level2_a043,level2_a043
	dw level2_a043,level2_a043,level2_a043,level2_a061
	dw level2_a043,level2_a043,level2_a043,level2_a061
	dw level2_a043,level2_a043,level2_a043,level2_a061
	dw level2_a043,level2_a043,level2_a043,level2_a061
	dw level2_a043,level2_a043,level2_a043,level2_a061
	dw level2_a043,level2_a043,level2_a080,level2_a080
	dw level2_a080,level2_a080,level2_a043,level2_a061
	dw level2_a043,level2_a043,level2_a080,level2_a080
	dw level2_a080,level2_a080,level2_a043,level2_a061
	dw level2_a043,level2_a043,level2_a080,level2_a080
	dw level2_a080,level2_a080,level2_a043,level2_a061
	dw level2_a043,level2_a043,level2_a080,level2_a080
	dw level2_a080,level2_a080,level2_a043,level2_a061
	dw #0000
.level2_9fc9
	dw level2_a09b,level2_a0b2,level2_a0c3,level2_a09b
	dw level2_a09b,level2_a0b2,level2_a0c3,level2_a09b
	dw level2_a09b,level2_a0b2,level2_a0c3,level2_a09b
	dw level2_a0d4,level2_a0fc,level2_a124,level2_a0d4
	dw level2_a0d4,level2_a0fc,level2_a124,level2_a0d4
	dw level2_a09b,level2_a0b2,level2_a0c3,level2_a09b
	dw level2_a09b,level2_a0b2,level2_a0c3,level2_a09b
	dw level2_a09b,level2_a0b2,level2_a0c3,level2_a09b
	dw level2_a0d4,level2_a0fc,level2_a124,level2_a0d4
	dw level2_a0d4,level2_a0fc,level2_a124,level2_a0d4
	dw level2_a0d4,level2_a0fc,level2_a124,level2_a0d4
	dw level2_a0d4,level2_a0fc,level2_a124,level2_a0d4
	dw #0000
.level2_a02b
	dw level2_a14c,level2_a14c,level2_a14c,level2_a15f
	dw level2_a14c,level2_a14c,level2_a14c,level2_a15f
	dw level2_a1f7,level2_a1f1,level2_a219,#0000
.level2_a043
	db #88,#01,#01,#e1,#8a,#d2,#0e,#e0
	db #d5,#8c,#84,#14,#01,#2b,#e1,#8a
	db #d2,#0e,#e0,#0e,#d5,#8c,#84,#14
	db #01,#30,#8b,#d1,#27,#87
.level2_a061
	db #e1,#8a,#d2,#0e,#e0,#d5,#8c,#84
	db #14,#01,#2b,#e1,#8a,#d2,#0e,#e0
	db #d5,#8c,#84,#14,#01,#30,#84,#14
	db #01,#2e,#84,#14,#01,#2b,#87
.level2_a080
	db #e1,#8a,#d2,#13,#e0,#d5,#8c,#84
	db #14,#01,#2b,#e1,#8a,#d2,#13,#e0
	db #13,#d5,#8c,#84,#14,#01,#30,#8b
	db #d1,#27,#87
.level2_a09b
	db #8a,#d2,#88,#01,#01,#90,#e1,#1a
	db #e3,#1a,#d5,#e1,#c8,#26,#c0,#d2
	db #e1,#1a,#e3,#1a,#e1,#1a,#87
.level2_a0b2
	db #e1,#1a,#e3,#1a,#d5,#e1,#c2,#2b
	db #c0,#d2,#e1,#1a,#e3,#1a,#e1,#1a
	db #87
.level2_a0c3
	db #e1,#1a,#e3,#1a,#d5,#e1,#c6,#24
	db #c0,#d2,#e1,#1a,#e3,#1a,#e1,#1a
	db #87
.level2_a0d4
	db #e1,#1a,#d6,#c8,#26,#c0,#d2,#e0
	db #1a,#e1,#d6,#c8,#26,#c0,#d2,#e0
	db #1a,#e1,#d6,#c8,#26,#c0,#d2,#e0
	db #1a,#e1,#d6,#c8,#26,#c0,#d2,#e0
	db #1a,#d6,#c8,#26,#26,#c0,#d2,#87
.level2_a0fc
	db #e1,#1f,#d6,#c2,#2b,#c0,#d2,#e0
	db #1f,#e1,#d6,#c2,#2b,#c0,#d2,#e0
	db #1f,#e1,#d6,#c2,#2b,#c0,#d2,#e0
	db #1f,#e1,#d6,#c2,#2b,#c0,#d2,#e0
	db #1f,#d6,#c2,#2b,#2b,#c0,#d2,#87
.level2_a124
	db #e1,#1f,#d6,#c6,#24,#c0,#d2,#e0
	db #1f,#e1,#d6,#c6,#24,#c0,#d2,#e0
	db #1f,#e1,#d6,#c6,#24,#c0,#d2,#e0
	db #1f,#e1,#d6,#c2,#2b,#c0,#d2,#e0
	db #1f,#d6,#c2,#2b,#2b,#c0,#d2,#87
.level2_a14c
	db #8a,#88,#01,#01,#90,#d5,#e1,#26
	db #e7,#26,#e0,#21,#21,#23,#e1,#26
	db #e0,#23,#87
.level2_a15f
	db #e1,#26,#eb,#26,#d8,#e1,#2a,#2d
	db #e5,#2a,#e1,#28,#26,#26,#e3,#28
	db #e9,#2a,#e0,#23,#e1,#26,#28,#e4
	db #2a,#e1,#2a,#28,#26,#26,#e1,#26
	db #e0,#26,#23,#e7,#21,#e1,#26,#e0
	db #2a,#e1,#2d,#e8,#2f,#e2,#28,#e1
	db #26,#26,#28,#ea,#2a,#e1,#23,#e0
	db #26,#e1,#2f,#2a,#e1,#28,#e4,#26
	db #e0,#26,#e2,#2d,#e0,#2a,#e1,#2d
	db #e8,#2a,#e1,#2d,#2d,#2a,#2d,#e8
	db #2f,#e1,#26,#e2,#26,#e1,#28,#ed
	db #23,#e0,#2f,#2d,#2a,#e1,#2d,#e2
	db #2f,#e1,#28,#e0,#26,#e2,#26,#e3
	db #2d,#e7,#2a,#e1,#2d,#2d,#2a,#2d
	db #e8,#2f,#df,#e4,#34,#e2,#32,#d8
	db #ec,#34,#e0,#2f,#2d,#2a,#e1,#2d
	db #e2,#2f,#e1,#28,#e0,#26,#e2,#26
	db #e3,#2d,#e8,#2a,#e4,#84,#01,#0e
	db #2f,#87
.level2_a1f7 equ $ + 6
.level2_a1f1
	db #e1,#36,#39,#e0,#36,#80,#df,#e7
	db #39,#e4,#36,#e0,#39,#36,#80,#e9
	db #32,#e0,#d2,#2d,#2d,#2f,#32,#8f
	db #2f,#df,#e9,#32,#e0,#d2,#2d,#2d
	db #2f,#32,#8f,#2f,#de,#e9,#32,#87
.level2_a219
	db #e5,#84,#01,#08,#8f,#87
;.level2_a21f
;	dw level2_a22b,#0000
;.level2_a223
;	dw level2_a23c,#0000
;.level2_a227
;	dw level2_a24d,#0000
;.level2_a22b
;	db #8a,#88,#01,#01,#d8,#e2,#1f,#e0
;	db #1b,#1f,#20,#e2,#22,#26,#e8,#27
;	db #8e
;.level2_a23c
;	db #8a,#88,#01,#01,#d8,#e2,#22,#e0
;	db #1f,#22,#26,#e2,#27,#2c,#e8,#2b
;	db #8e
;.level2_a24d
;	db #8a,#88,#01,#01,#d8,#e2,#27,#e0
;	db #22,#27,#29,#e2,#2b,#30,#e8,#2e
;	db #8e
;.level2_a25e
;	dw level2_a26a,#0000
;.level2_a262
;	dw level2_a272,#0000
;.level2_a266
;	dw level2_a288,#0000
;.level2_a26a
;	db #8a,#88,#01,#01,#d7,#ff,#3c,#87
;.level2_a272
;	db #88,#01,#01,#8a,#db,#e0,#1f,#1f
;	db #e1,#22,#1f,#22,#e5,#1f,#e0,#1f
;	db #1f,#1f,#1d,#e7,#1b,#8e
;.level2_a288
;	db #88,#01,#01,#8a,#d8,#e0,#24,#24
;	db #e1,#27,#24,#26,#e5,#22,#e0,#24
;	db #24,#24,#22,#e7,#1f,#8e

; level 2 music data

;.level3_a0fc
;	db #14
;	dw level3_a111,level3_a11f,level3_a129
;	db #24
;	dw level3_a21f,level3_a223,level3_a227
;	db #2a
;	dw level3_a25e,level3_a262,level3_a266
.level3_a111
	dw level3_a12f,level3_a159,level3_a17a,level3_a13a
	dw level3_a159,level3_a17a,#0000
.level3_a11f
	dw level3_a182,level3_a1ac,level3_a199,level3_a1ae
	dw #0000
.level3_a129
	dw level3_a1b3,level3_a1ea,#0000
.level3_a12f
	db #89,#01,#92,#00,#95,#0e,#8a,#88
.level3_a13a equ $ + 3
	db #01,#01,#d8,#e1,#1a,#e1,#13,#1a
	db #1f,#1a,#0e,#1a,#1e,#1a,#13,#1a
	db #1f,#1a,#18,#1f,#24,#1f,#13,#1a
	db #1f,#1a,#0e,#1a,#1e,#1a,#18,#1c
.level3_a159 equ $ + 2
	db #1e,#1a,#13,#1a,#1f,#1a,#13,#1a
	db #1f,#1a,#0e,#1a,#1e,#1a,#13,#1a
	db #1f,#1a,#18,#1f,#24,#1f,#13,#1a
	db #1f,#1a,#0e,#1a,#1e,#1b,#1c,#1f
	db #1e,#1a,#87
.level3_a17a
	db #1f,#24,#23,#89,#03,#92,#f4,#87
.level3_a182
	db #8a,#88,#01,#01,#d8,#e1,#21,#e3
	db #1f,#23,#26,#24,#1f,#23,#24,#28
.level3_a199 equ $ + 7
	db #1f,#23,#26,#24,#28,#24,#26,#23
	db #1f,#23,#26,#24,#1f,#23,#24,#28
	db #1f,#23,#26,#24,#e1,#28,#24,#e3
	db #24,#87
.level3_a1ac
	db #23,#87
.level3_a1ae
	db #e1,#23,#28,#26,#87
.level3_a1b3
	db #8a,#88,#01,#01,#d8,#e1,#26,#e2
	db #2b,#e0,#2a,#e1,#2b,#2f,#e2,#2d
	db #e0,#2c,#e1,#2d,#2f,#e2,#2b,#e0
	db #2b,#e1,#2f,#32,#e5,#34,#e1,#34
	db #e2,#32,#e0,#2f,#e1,#2f,#2b,#e2
	db #2d,#e0,#2c,#e1,#2d,#2f,#e2,#2b
	db #e0,#28,#e1
.level3_a1ea equ $ + 4
	db #28,#26,#e5,#2b,#e1,#34,#e2,#32
	db #e0,#2f,#e1,#2f,#2b,#e2,#2d,#e0
	db #2c,#e1,#2d,#34,#e2,#32,#e0,#2f
	db #e1,#2f,#32,#e5,#34,#e1,#34,#e2
	db #32,#e0,#2f,#e1,#2f,#2b,#e2,#2d
	db #e0,#2c,#e1,#2d,#e0,#2f,#2d,#e2
	db #2b,#e0,#28,#e1,#28,#26,#e5,#2b
	db #87
;.level3_a21f
;	dw level3_a22b,#0000
;.level3_a223
;	dw level3_a23c,#0000
;.level3_a227
;	dw level3_a24d,#0000
;.level3_a22b
;	db #8a,#88,#01,#01,#d8,#e2,#1f,#e0
;	db #1b,#1f,#20,#e2,#22,#26,#e8,#27
;	db #8e
;.level3_a23c
;	db #8a,#88,#01,#01,#d8,#e2,#22,#e0
;	db #1f,#22,#26,#e2,#27,#2c,#e8,#2b
;	db #8e
;.level3_a24d
;	db #8a,#88,#01,#01,#d8,#e2,#27,#e0
;	db #22,#27,#29,#e2,#2b,#30,#e8,#2e
;	db #8e
;.level3_a25e
;	dw level3_a26a,#0000
;.level3_a262
;	dw level3_a272,#0000
;.level3_a266
;	dw level3_a288,#0000
;.level3_a26a
;	db #8a,#88,#01,#01,#d7,#ff,#3c,#87
;.level3_a272
;	db #88,#01,#01,#8a,#db,#e0,#1f,#1f
;	db #e1,#22,#1f,#22,#e5,#1f,#e0,#1f
;	db #1f,#1f,#1d,#e7,#1b,#8e
;.level3_a288
;	db #88,#01,#01,#8a,#d8,#e0,#24,#24
;	db #e1,#27,#24,#26,#e5,#22,#e0,#24
;	db #24,#24,#22,#e7,#1f,#8e

;
.init_music
.la29e
;
	push af
	call la4e1
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l9ef2
	add hl,bc
	ld a,(hl)
	ld (la38c),a
	ld (la7e9),a
	inc hl
	ld ix,la30b
	ld c,#22
	ld a,#03
.la2bf
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
	ld (ix+#20),b
	ld hl,la8d3
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	ld (ix+#03),e
	ld (ix+#04),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	pop hl
	ld (ix+#01),e
	ld (ix+#02),d
	add ix,bc
	dec a
	jr nz,la2bf
	ld (la703),a
	dec a
	ld (la7ea),a
	ld (la7e4),a
	ret
.la30b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.la32d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.la34f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
.la371
;
	ld a,(la7e4)
	ld hl,la7e5
	or (hl)
	inc hl
	or (hl)
	inc hl
	or (hl)
	ret z
	call lab30
	ld a,(la7e4)
	and a
	jr z,la3d7
.la387 equ $ + 1
	ld a,#00
	ld (la3d3),a
.la38c equ $ + 1
	ld a,#01
	ld hl,la7ea
	add (hl)
	ld (hl),a
	jr nc,la3ab
	ld b,#00
	ld ix,la30b
	call la60b
	ld ix,la32d
	call la60b
	ld ix,la34f
	call la60b
.la3ab
	ld ix,la30b
	call la6d0
	ld (la7eb),hl
	ld (la7f3),a
	ld ix,la32d
	call la6d0
	ld (la7ed),hl
	ld (la7f4),a
	ld ix,la34f
	call la6d0
	ld (la7ef),hl
	ld (la7f5),a
.la3d3 equ $ + 1
	ld a,#00
	ld (la7f1),a
.la3d7
	ld a,(la7e4)
	and a
	jr nz,la3ed
	ld (la7f3),a
	ld (la7f4),a
	ld (la7f5),a
	ld a,#3f
	ld (la7f2),a
	jr la415
.la3ed
	ld a,(la7e8)
	and #0f
	xor #0f
	jr z,la415
	ld b,a
	ld a,(la7f3)
	sub b
	jr nc,la3fe
	xor a
.la3fe
	ld (la7f3),a
	ld a,(la7f4)
	sub b
	jr nc,la408
	xor a
.la408
	ld (la7f4),a
	ld a,(la7f5)
	sub b
	jr nc,la412
	xor a
.la412
	ld (la7f5),a
.la415
	ld a,(la7e5)
	and a
	jr z,la43d
	ld hl,(la7f8)
	ld (la7eb),hl
	ld a,(lafa7)
	ld b,a
	bit 3,a
	jr nz,la42f
	ld a,(la7fe)
	ld (la7f1),a
.la42f
	ld hl,la7f2
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(la800)
	ld (la7f3),a
.la43d
	ld a,(la7e6)
	and a
	jr z,la467
	ld hl,(la7fa)
	ld (la7ed),hl
	ld a,(lafbc)
	ld b,a
	bit 3,a
	jr nz,la457
	ld a,(la7fe)
	ld (la7f1),a
.la457
	ld hl,la7f2
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(la801)
	ld (la7f4),a
.la467
	ld a,(la7e7)
	and a
	jr z,la493
	ld hl,(la7fc)
	ld (la7ef),hl
	ld a,(lafd1)
	ld b,a
	bit 3,a
	jr nz,la481
	ld a,(la7fe)
	ld (la7f1),a
.la481
	ld hl,la7f2
	ld a,(hl)
.la485
	or #24
	rlc b
	rlc b
	and b
	ld (hl),a
	ld a,(la802)
	ld (la7f5),a
.la493
	ld hl,la7f5
	ld d,#0a
.la498
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,la498
	ret
.la4b9
	ld de,#0a00
.la4bc
	call la4c6
	dec d
	jp p,la4bc
	ld de,#073f
.la4c6
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	ret
;
.stop_music
.la4e1
;
	xor a
	ld (la7e4),a
	call la4f8
	xor a
	ld (la7f3),a
	ld (la7f4),a
	ld (la7f5),a
	ld a,#0f
	ld (la7e8),a
	ret
.la4f8
	xor a
	ld (la7e5),a
	ld (la7e6),a
	ld (la7e7),a
	jp la4b9
	db #f0
	db #de
	db #d7
	db #e1
	db #a4
	db #00
	db #00
	db #3b
	db #c4
	db #b5
	db #7a
	db #64
	db #8c
	db #dd
	db #30
	db #ea
	db #eb
	db #f0
	db #b3
	db #13
	db #0a
	db #01
	db #1a
	db #13
	ld (la7e8),a
	jp la618
	ld a,(de)
	inc de
	ld (la38c),a
	jp la618
	ld a,(de)
	ld (ix+#03),a
	ld l,a
	inc de
	ld a,(de)
	ld (ix+#04),a
	ld h,a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	jp la618
	pop hl
	jp la4e1
	ld c,(ix+#05)
	ld b,(ix+#06)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,la569
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.la569
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp la618
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,la7af
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp la618
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,la7af
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp la618
	ld hl,la7af
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr la618
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr la618
	ld a,(de)
	inc de
	ld (la703),a
	jr la618
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr la618
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr la618
	ld (ix+#1d),b
	jr la618
	ld (ix+#1d),#c0
	jr la618
	set 1,(ix+#00)
	jr la618
	ld (ix+#13),b
	res 5,(ix+#00)
	jr la647
	jr la643
	ld (ix+#1f),#ff
	jr la618
	ld (ix+#1f),b
	jr la618
.la60b
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.la618
	ld a,(de)
	inc de
	and a
	jp m,la685
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,la62a
	ld (la387),a
.la62a
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.la643
	set 5,(ix+#00)
.la647
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,la684
	ld a,(la7e5)
	and a
	jr z,la666
	ld a,(lafa7)
	bit 3,a
	jr z,la684
.la666
	ld a,(la7e6)
	and a
	jr z,la673
	ld a,(lafbc)
	bit 3,a
	jr z,la684
.la673
	ld a,(la7e7)
	and a
	jr z,la680
	ld a,(lafd1)
	bit 3,a
	jr z,la684
.la680
	ld (ix+#1f),#ff
.la684
	ret
.la685
	cp #c0
	jr c,la6c8
	add #20
	jr c,la6a9
	add #10
	jr c,la6b0
	add #10
	ld c,a
	ld hl,la8c4
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp la618
.la6a9
	inc a
	ld (ix+#11),a
	jp la618
.la6b0
	ld hl,la8fe
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#14),l
	ld (ix+#15),h
	dec hl
	ld a,(hl)
	ld (ix+#0f),a
	jp la618
.la6c8
	ld hl,la485
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.la6d0
	ld c,(ix+#00)
	bit 5,c
	jr z,la702
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,la6fc
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,la6fc
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.la6fc
	ld a,(ix+#18)
	ld (ix+#13),a
.la703 equ $ + 1
.la702
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,la71f
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.la71f
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,la804
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,la780
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,la749
	bit 0,c
	jr nz,la767
.la749
	bit 5,l
	jr nz,la759
	sub (ix+#1b)
	jr nc,la764
	set 5,(ix+#1d)
	sub a
	jr la764
.la759
	add (ix+#1b)
	cp b
	jr c,la764
	res 5,(ix+#1d)
	ld a,b
.la764
	ld (ix+#1c),a
.la767
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,la772
	dec d
.la772
	add #a0
	jr c,la77e
.la776
	sla e
	rl d
	add #18
	jr nc,la776
.la77e
	add hl,de
	ex de,hl
.la780
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,la7ab
	ld b,(ix+#0e)
	djnz la7a8
	ld c,(ix+#0d)
	bit 7,c
	jr z,la797
	dec b
.la797
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr la7ab
.la7a8
	ld (ix+#0e),b
.la7ab
	cpl
	and #03
.la7af equ $ + 1
	ld a,#38
	jr nz,la7bc
	ld a,(la387)
	xor #08
	ld (la3d3),a
	ld a,#07
.la7bc
	ld hl,la7f2
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,la7df
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (la3d3),a
.la7df
	ex de,hl
	ld a,(ix+#13)
	ret
.la7e4
.music_end
	db #00
.la7e5
	db #00
.la7e6
	db #00
.la7e7
	db #00
.la7e8
	db #00
.la7e9
	db #00
.la7ea
	db #00
.la7eb
	db #00,#00
.la7ed
	db #00,#00
.la7ef
	db #00
	db #00
.la7f1
	db #00
.la7f2
	db #3f
.la7f3
	db #0f
.la7f4
	db #0f
.la7f5
	db #0f,#00,#00
.la7f8
	db #00
.la7f9
	db #00
.la7fa
	db #00
.la7fb
	db #00
.la7fc
	db #00
.la7fd
	db #00
.la7fe
	db #00
	db #3f
.la800
	db #00
.la801
	db #00
.la802
	db #00
	db #00
.la804
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010b,#00fc
	dw #00ef,#00e1,#00d6,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0085,#007e
	dw #0077,#0070,#006b,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0042,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
	dw #000e,#000e,#000d,#000c
	dw #000b,#000b,#000a,#0009
	dw #0009,#0008,#0008,#0007
.la8c4
	db #0f,#0f,#11,#13,#15,#17,#19,#1b
	db #1d,#1f,#20,#21,#22,#23,#24
.la8d3
	db #80,#00,#03,#87,#00,#04,#87,#04
	db #07,#8a,#00,#04,#8a,#07,#0c,#8f
	db #07,#0c,#90,#03,#07,#8c,#04,#07
	db #8c,#00,#8c,#00,#83,#00,#84,#00
	db #85,#00,#87,#0c,#00,#00,#00,#00
	db #00,#00,#80
.la8fe
	dw la91f,la938,la93f,la951
	dw la960,la968,la979,la989
	dw la9b7,la9c8,la9e1,la9f1
	dw laa02,laa0b,laa0e,laa11
.la91f equ $ + 1
	db #02,#0d,#0e,#0f,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0b,#0a,#0a,#09
	db #09,#08,#08,#07,#07,#06,#06,#05
	db #87
.la938 equ $ + 1
	db #01,#0d,#0b,#07,#03,#01,#87
.la93f equ $ + 1
	db #01,#0f,#0f,#0d,#0b,#0d,#0c,#0a
	db #09,#0b,#0a,#08,#07,#09,#08,#06
	db #05,#87
.la951 equ $ + 1
	db #01,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87
.la960 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#0a,#87
.la968 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #87
.la979 equ $ + 1
	db #01,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#87
.la989 equ $ + 1
	db #04,#04,#06,#07,#08,#09,#0a,#0b
	db #0c,#0d,#0e,#0f,#0f,#0e,#0e,#0e
	db #0e,#0d,#0d,#0c,#0c,#0c,#0c,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#09
	db #09,#09,#09,#08,#08,#08,#07,#06
	db #05,#04,#03,#02,#01,#87
.la9b7 equ $ + 1
	db #05,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #87
.la9c8 equ $ + 1
	db #01,#09,#0b,#0d,#0e,#0e,#0e,#0e
	db #0e,#0d,#0d,#0c,#0c,#0c,#0c,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#09
	db #87
.la9e1 equ $ + 1
	db #04,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#87
.la9f1 equ $ + 1
	db #02,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #87
.laa02 equ $ + 1
	db #03,#0d,#0d,#0c,#0b,#0a,#09,#08
	db #87
.laa0b equ $ + 1
	db #01,#0d,#87
.laa0e equ $ + 1
	db #01,#0e,#87
.laa11 equ $ + 1
	db #01,#0f,#87

	ld hl,laa1c
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.laa1c
	db #03
	db #5d
	db #b7
	ld hl,la7e5
	ld (hl),#00
	ld hl,lad5c
	add a
	add l
	ld l,a
	jr nc,laa2d
	inc h
.laa2d
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lafa1
.laa35
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz laa35
	ld a,(lafa2)
	ld (lafaf),a
	ld hl,(lafa3)
	ld (la7f8),hl
	ld a,(lafa7)
	bit 3,a
	jr nz,laa52
	ld a,l
	ld (la7fe),a
.laa52
	ld a,(lafac)
	ld (lafb0),a
	ld a,(lafae)
	ld (lafb5),a
	ld a,(lafab)
	ld hl,laefc
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lafb1),hl
	ld (lafb3),hl
	ld a,(hl)
	ld (la800),a
	ld hl,la7e5
	inc (hl)
	ret
	ld hl,la7e6
	ld (hl),#00
	ld hl,lad5c
	add a
	add l
	ld l,a
	jr nc,laa88
	inc h
.laa88
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lafb6
.laa90
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz laa90
	ld a,(lafb7)
	ld (lafc4),a
	ld hl,(lafb8)
	ld (la7fa),hl
	ld a,(lafbc)
	bit 3,a
	jr nz,laaad
	ld a,l
	ld (la7fe),a
.laaad
	ld a,(lafc1)
	ld (lafc5),a
	ld a,(lafc3)
	ld (lafca),a
	ld a,(lafc0)
	ld hl,laefc
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lafc6),hl
	ld (lafc8),hl
	ld a,(hl)
	ld (la801),a
	ld hl,la7e6
	inc (hl)
	ret
	ld hl,la7e7
	ld (hl),#00
	ld hl,lad5c
	add a
	add l
	ld l,a
	jr nc,laae3
	inc h
.laae3
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lafcb
.laaeb
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz laaeb
	ld a,(lafcc)
	ld (lafd9),a
	ld hl,(lafcd)
	ld (la7fc),hl
	ld a,(lafd1)
	bit 3,a
	jr nz,lab08
	ld a,l
	ld (la7fe),a
.lab08
	ld a,(lafd6)
	ld (lafda),a
	ld a,(lafd8)
	ld (lafdf),a
	ld a,(lafd5)
	ld hl,laefc
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lafdb),hl
	ld (lafdd),hl
	ld a,(hl)
	ld (la802),a
	ld hl,la7e7
	inc (hl)
	ret
.lab30
	call lafe0
	ld a,(la7e5)
	and a
	call nz,labf8
	ld a,(la7e6)
	and a
	call nz,lacaa
	ld a,(la7e7)
	and a
	ret z
	ld a,(lafcb)
	and a
	jr nz,lab56
	ld a,(lafd7)
	and a
	jr nz,lab56
	ld (la7e7),a
	ret
.lab56
	dec a
	ld (lafcb),a
	ld a,(lafd9)
	and a
	jr nz,lab8e
	ld a,(lafd7)
	and a
	jr nz,lab6c
	ld a,(lafd4)
	and a
	jr z,labd0
.lab6c
	dec a
	ld (lafd4),a
	ld a,(lafcc)
	ld (lafd9),a
	ld a,(lafd2)
	and a
	jr z,lab7f
	ld a,(laffd)
.lab7f
	ld b,a
	ld a,(lafcd)
	add b
	ld (la7fc),a
	ld a,(lafce)
	add b
	ld (la7fd),a
.lab8e
	ld hl,lafd9
	dec (hl)
	ld hl,lafd8
	ld a,(hl)
	and a
	jr z,laba0
	ld hl,lafdf
	dec (hl)
	jr nz,labc3
	ld (hl),a
.laba0
	ld a,(lafd3)
	and a
	jr z,labc3
	jp p,labb6
	ld hl,(la7fc)
	ld de,(lafcf)
	add hl,de
	ld (la7fc),hl
	jr labc3
.labb6
	ld hl,(la7fc)
	ld de,(lafcf)
	and a
	sbc hl,de
	ld (la7fc),hl
.labc3
	ld a,(lafd1)
	bit 3,a
	jr nz,labd0
	ld a,(la7fc)
	ld (la7fe),a
.labd0
	ld a,(lafda)
	dec a
	ld (lafda),a
	jr nz,labf7
	ld a,(lafd6)
	ld (lafda),a
	ld hl,(lafdd)
	ld a,(hl)
	inc hl
	and a
	jp p,labf1
	cp #80
	jr nz,labf7
	ld hl,(lafdb)
	ld a,(hl)
	inc hl
.labf1
	ld (lafdd),hl
	ld (la802),a
.labf7
	ret
.labf8
	ld a,(lafa1)
	and a
	jr nz,lac08
	ld a,(lafad)
	and a
	jr nz,lac08
	ld (la7e5),a
	ret
.lac08
	dec a
	ld (lafa1),a
	ld a,(lafaf)
	and a
	jr nz,lac40
	ld a,(lafad)
	and a
	jr nz,lac1e
	ld a,(lafaa)
	and a
	jr z,lac82
.lac1e
	dec a
	ld (lafaa),a
	ld a,(lafa2)
	ld (lafaf),a
	ld a,(lafa8)
	and a
	jr z,lac31
	ld a,(laffb)
.lac31
	ld b,a
	ld a,(lafa3)
	add b
	ld (la7f8),a
	ld a,(lafa4)
	add b
	ld (la7f9),a
.lac40
	ld hl,lafaf
	dec (hl)
	ld hl,lafae
	ld a,(hl)
	and a
	jr z,lac52
	ld hl,lafb5
	dec (hl)
	jr nz,lac75
	ld (hl),a
.lac52
	ld a,(lafa9)
	and a
	jr z,lac75
	jp p,lac68
	ld hl,(la7f8)
	ld de,(lafa5)
	add hl,de
	ld (la7f8),hl
	jr lac75
.lac68
	ld hl,(la7f8)
	ld de,(lafa5)
	and a
	sbc hl,de
	ld (la7f8),hl
.lac75
	ld a,(lafa7)
	bit 3,a
	jr nz,lac82
	ld a,(la7f8)
	ld (la7fe),a
.lac82
	ld a,(lafb0)
	dec a
	ld (lafb0),a
	jr nz,laca9
	ld a,(lafac)
	ld (lafb0),a
	ld hl,(lafb3)
	ld a,(hl)
	inc hl
	and a
	jp p,laca3
	cp #80
	jr nz,laca9
	ld hl,(lafb1)
	ld a,(hl)
	inc hl
.laca3
	ld (lafb3),hl
	ld (la800),a
.laca9
	ret
.lacaa
	ld a,(lafb6)
	and a
	jr nz,lacba
	ld a,(lafc2)
	and a
	jr nz,lacba
	ld (la7e6),a
	ret
.lacba
	dec a
	ld (lafb6),a
	ld a,(lafc4)
	and a
	jr nz,lacf2
	ld a,(lafc2)
	and a
	jr nz,lacd0
	ld a,(lafbf)
	and a
	jr z,lad34
.lacd0
	dec a
	ld (lafbf),a
	ld a,(lafb7)
	ld (lafc4),a
	ld a,(lafbd)
	and a
	jr z,lace3
	ld a,(laffc)
.lace3
	ld b,a
	ld a,(lafb8)
	add b
	ld (la7fa),a
	ld a,(lafb9)
	add b
	ld (la7fb),a
.lacf2
	ld hl,lafc4
	dec (hl)
	ld hl,lafc3
	ld a,(hl)
	and a
	jr z,lad04
	ld hl,lafca
	dec (hl)
	jr nz,lad27
	ld (hl),a
.lad04
	ld a,(lafbe)
	and a
	jr z,lad27
	jp p,lad1a
	ld hl,(la7fa)
	ld de,(lafba)
	add hl,de
	ld (la7fa),hl
	jr lad27
.lad1a
	ld hl,(la7fa)
	ld de,(lafba)
	and a
	sbc hl,de
	ld (la7fa),hl
.lad27
	ld a,(lafbc)
	bit 3,a
	jr nz,lad34
	ld a,(la7fa)
	ld (la7fe),a
.lad34
	ld a,(lafc5)
	dec a
	ld (lafc5),a
	jr nz,lad5b
	ld a,(lafc1)
	ld (lafc5),a
	ld hl,(lafc8)
	ld a,(hl)
	inc hl
	and a
	jp p,lad55
	cp #80
	jr nz,lad5b
	ld hl,(lafc6)
	ld a,(hl)
	inc hl
.lad55
	ld (lafc8),hl
	ld (la801),a
.lad5b
	ret
.lad5c
	dw lad90,lad9e,ladac,ladba
	dw ladc8,ladd6,lade4,ladf2
	dw lae00,lae0e,lae1c,lae2a
	dw lae38,lae46,lae54,lae62
	dw lae70,lae7e,lae8c,lae9a
	dw laea8,laeb6,laec4,laed2
	dw laee0,laeee
.lad90
	db #07,#05,#00,#00,#08,#00,#f6,#01
	db #ff,#63,#08,#02,#00,#00
.lad9e
	db #50,#03,#00,#07,#44,#00,#fe,#00
	db #ff,#63,#09,#02,#ff,#00
.ladac
	db #32,#63,#1f,#00,#01,#00,#f7,#00
	db #01,#63,#01,#02,#00,#03
.ladba
	db #07,#05,#41,#02,#14,#00,#f6,#00
	db #ff,#ff,#03,#01,#00,#00
.ladc8
	db #0a,#63,#0b,#00,#01,#00,#f6,#00
	db #01,#00,#00,#01,#00,#00
.ladd6
	db #09,#63,#09,#05,#11,#00,#f6,#00
	db #ff,#00,#08,#01,#00,#00
.lade4
	db #19,#05,#41,#02,#14,#00,#f6,#01
	db #ff,#ff,#01,#01,#00,#00
.ladf2
	db #07,#02,#0f,#00,#11,#00,#f7,#ff
	db #01,#ff,#01,#01,#00,#00
.lae00
	db #14,#02,#1f,#00,#10,#00,#f7,#00
	db #01,#63,#02,#02,#00,#00
.lae0e
	db #fa,#ff,#10,#00,#01,#00,#fe,#00
	db #ff,#63,#01,#08,#00,#02
.lae1c
	db #32,#63,#1f,#00,#11,#00,#f7,#00
	db #01,#63,#01,#02,#00,#02
.lae2a
	db #32,#04,#00,#04,#16,#00,#f6,#01
	db #ff,#63,#09,#01,#ff,#00
.lae38
	db #c8,#ff,#10,#00,#01,#04,#fe,#00
	db #ff,#63,#01,#08,#00,#00
.lae46
	db #0c,#05,#c8,#00,#20,#00,#f6,#00
	db #ff,#63,#00,#01,#00,#00
.lae54
	db #0c,#02,#0f,#00,#11,#00,#f7,#ff
	db #01,#ff,#00,#01,#00,#00
.lae62
	db #1e,#02,#40,#02,#0c,#00
	db #fe,#00,#ff,#63,#04,#01,#00,#00
.lae70
	db #1e,#02,#c0,#00,#04,#00,#fe,#00
	db #ff,#63,#04,#01,#00,#00
.lae7e
	db #ff,#28,#1f,#00,#01,#00,#f6,#00
	db #01,#00,#06,#02,#00,#03
.lae8c
	db #50,#03,#f8,#03,#44,#00,#fe,#00
	db #ff,#63,#07,#02,#ff,#00
.lae9a
	db #46,#03,#08,#05,#30,#00,#f6,#00
	db #ff,#ff,#04,#02,#00,#00
.laea8
	db #50,#04,#00,#04,#16,#00,#f6,#01
	db #ff,#63,#00,#04,#00,#00
.laeb6
	db #0f,#03,#0f,#05,#30,#00,#f6,#00
	db #ff,#ff,#00,#01,#00,#00
.laec4
	db #0f,#63,#f0,#00,#21,#00,#fe,#00
	db #ff,#63,#04,#01,#00,#00
.laed2
	db #0b,#05,#0f,#00,#04,#00,#f6,#00
	db #01,#0a,#00,#01,#00,#00
.laee0
	db #32,#0a,#0a,#00,#03,#00,#f6,#01
	db #ff,#0a,#00,#04,#00,#00
.laeee
	db #3c,#06,#81,#00,#24,#00,#f6,#00
	db #ff,#63,#00,#04,#00,#00
.laefc
	dw laf10,laf1d,laf36,laf46
	dw laf55,laf79,laf88,laf8a
	dw laf8d,laf9b
.laf10
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#ff
.laf1d
	db #06,#08,#0a,#0b,#0c,#0d,#0e,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #ff
.laf36
	db #06,#08,#0a,#0b,#0c,#0d,#0c,#0b
	db #0a,#08,#06,#04,#03,#02,#01,#ff
.laf46
	db #0b,#0c,#0d,#0c,#0b,#0a,#09,#08
	db #08,#07,#07,#06,#06,#05,#ff
.laf55
	db #0f,#0d,#0c,#0b,#0a,#0d,#0c,#0b
	db #0a,#09,#0b,#0a,#09,#08,#07,#09
	db #08,#07,#06,#05,#07,#06,#05,#04
	db #03,#05,#04,#03,#02,#01,#03,#02
	db #01,#02,#01,#ff
.laf79
	db #0a,#0c,#0e,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#ff
.laf88
	db #0c,#80
.laf8a
	db #0a,#09,#80
.laf8d
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#01,#ff
.laf9b
	db #08,#09,#0a,#0b,#09,#80
.lafa1
	db #00
.lafa2
	db #00
.lafa3
	db #00
.lafa4
	db #00
.lafa5
	db #00,#00
.lafa7
	db #00
.lafa8
	db #00
.lafa9
	db #00
.lafaa
	db #00
.lafab
	db #00
.lafac
	db #00
.lafb3 equ $ + 6
.lafb1 equ $ + 4
.lafb0 equ $ + 3
.lafaf equ $ + 2
.lafae equ $ + 1
.lafad
	db #00,#00,#00,#00,#00,#00,#00,#00
.lafbc equ $ + 7
.lafba equ $ + 5
.lafb9 equ $ + 4
.lafb8 equ $ + 3
.lafb7 equ $ + 2
.lafb6 equ $ + 1
.lafb5
	db #00,#00,#00,#00,#00,#00,#00,#00
.lafc4 equ $ + 7
.lafc3 equ $ + 6
.lafc2 equ $ + 5
.lafc1 equ $ + 4
.lafc0 equ $ + 3
.lafbf equ $ + 2
.lafbe equ $ + 1
.lafbd
	db #00,#00,#00,#00,#00,#00,#00,#00
.lafcc equ $ + 7
.lafcb equ $ + 6
.lafca equ $ + 5
.lafc8 equ $ + 3
.lafc6 equ $ + 1
.lafc5
	db #00,#00,#00,#00,#00,#00,#00,#00
.lafd4 equ $ + 7
.lafd3 equ $ + 6
.lafd2 equ $ + 5
.lafd1 equ $ + 4
.lafcf equ $ + 2
.lafce equ $ + 1
.lafcd
	db #00,#00,#00,#00,#00,#00,#00,#00
.lafdb equ $ + 6
.lafda equ $ + 5
.lafd9 equ $ + 4
.lafd8 equ $ + 3
.lafd7 equ $ + 2
.lafd6 equ $ + 1
.lafd5
	db #00,#00,#00,#00,#00,#00,#00,#00
.lafdf equ $ + 2
.lafdd
	db #00,#00,#00
.lafe0
	ld a,(laffb)
	and #48
	adc #38
	sla a
	sla a
	ld hl,laffe
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.laffe equ $ + 3
.laffd equ $ + 2
.laffc equ $ + 1
.laffb
	db #ff,#80,#1b,#34
;
.music_info
	db "Ghostbusters 2 (1989)(Activision)(David Whittaker)",0
	db "Intro + all levels musics assembled by Megachur",0

	read "music_end.asm"
