; Music of After the War (1989)(Dinamic)(Mac)()
; Ripped by Megachur the 09/03/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AFTERTHW.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #11ce

	read "music_header.asm"

.l11cf equ $ + 1
.l11ce
	db #00,#07
.l11d5 equ $ + 5
.l11d4 equ $ + 4
.l11d3 equ $ + 3
.l11d2 equ $ + 2
.l11d1 equ $ + 1
.l11d0
	db #06,#ff,#ff,#00,#00
	dw l11d7
.l11d7
	db #53,#01,#88,#01,#32,#02,#00,#01
	db #02,#03,#02,#02,#00,#04,#02,#05
	db #06,#02,#00,#07,#02,#03,#02,#08
	db #00,#0a,#02,#03,#02,#0b,#00,#0c
	db #02,#03,#02,#0d,#00,#0a,#02,#0e
	db #06,#0b,#00,#0f,#02,#11,#03,#12
	db #00,#0a,#02,#13,#03,#0b,#00,#0a
	db #02,#15,#03,#0b,#00,#0a,#02,#13
	db #03,#0b,#00,#0c,#02,#16,#03,#0d
	db #00,#0a,#02,#13,#03,#0b,#00,#0a
	db #02,#15,#03,#0b,#00,#0a,#02,#19
	db #1a,#1b,#1c,#1d,#1e,#20,#21,#22
	db #24,#25,#26,#27,#28,#29,#15,#2b
	db #2c,#20,#21,#22,#24,#25,#26,#27
	db #2f,#30,#16,#31,#32,#34,#21,#22
	db #35,#25,#26,#37,#38,#29,#15,#39
	db #2c,#34,#21,#22,#35,#25,#26,#37
	db #3c,#3d,#3e,#3f,#40,#42,#43,#44
	db #46,#47,#46,#00,#02,#02,#48,#49
	db #4a,#4c,#4d,#4e,#50,#51,#51,#53
	db #54,#55,#57,#58,#59,#5c,#5d,#5e
	db #5f,#60,#02,#62,#63,#64,#5f,#60
	db #02,#62,#63,#66,#67,#68,#69,#6b
	db #6c,#6d,#6f,#70,#71,#75,#76,#77
	db #7a,#7b,#7c,#7d,#7e,#7f,#80,#81
	db #82,#7d,#7e,#7f,#80,#83,#84,#7d
	db #7e,#85,#80,#81,#86,#7d,#7e,#85
	db #87,#88,#89,#8b,#8c,#7f,#8d,#8e
	db #8f,#90,#8c,#91,#8d,#8e,#82,#93
	db #8c,#7f,#8d,#8e,#8f,#90,#8c,#91
	db #8d,#94,#84,#95,#8c,#85,#8d,#8e
	db #96,#90,#8c,#97,#8d,#8e,#86,#93
	db #8c,#85,#8d,#8e,#96,#99,#9a,#9b
	db #9d,#9e,#9f,#a0,#a1,#a2,#a4,#a5
	db #a6,#a7,#a1,#a8,#aa,#ab,#ac,#a0
	db #a1,#a2,#a4,#a5,#a6,#a7,#a1,#a2
	db #b0,#b1,#b2,#b3,#a1,#a2,#b5,#a5
	db #a6,#b6,#a1,#a8,#b7,#b8,#ac,#b3
	db #a1,#a2,#b5,#a5,#a6,#b6,#a1,#a2
	db #bb,#bc,#bd,#bf,#c0,#c1,#c2,#c3
	db #c4,#c6,#c7,#c8,#c9,#ca,#cb,#cc
	db #cd,#ce,#d0,#d1,#d2,#d4,#d5,#d6
	db #d8,#d9,#02,#dc,#dd,#de,#e0,#e1
	db #e2,#09,#10,#14,#17,#18,#1f,#23
	db #2a,#2d,#2e,#33,#36,#3a,#3b,#41
	db #45,#4b,#4f,#52,#56,#5a,#5b,#61
	db #65,#6a,#6e,#72,#73,#74,#78,#79
	db #8a,#92,#18,#98,#9c,#a3,#a9,#ad
	db #ae,#af,#b4,#b9,#ba,#be,#c5,#cf
	db #d3,#d7,#da,#db
.l1363
	db #df,#e3
	dw l138d,l1394,l1397,l13a0
	dw l13ab,l13bc,l13c9,l13d8
	dw l13e1,l13ea,l13f5,l1400
	dw l1411,l1422,l1433,l1436
	dw l1439,l143c,l143f,l1442
.l1394 equ $ + 7
.l138d
	db #83,#b8,#fb,#bd,#9b,#b8,#2b,#01
.l1397 equ $ + 2
	db #ff,#ff,#04,#36,#6f,#37,#5c,#38
.l13a0 equ $ + 3
	db #4a,#39,#38,#05,#ff,#ff,#ff,#fd
.l13ab equ $ + 6
	db #ff,#fb,#ff,#f9,#ff,#f7,#08,#e0
	db #ff,#e0,#fe,#e0,#fd,#e0,#fc,#e0
.l13bc equ $ + 7
	db #fb,#e0,#fa,#e0,#f9,#e0,#f8,#06
	db #e0,#fc,#e0,#fa,#e0,#f9,#e0,#f7
.l13c9 equ $ + 4
	db #e0,#f5,#e0,#f3,#07,#20,#0f,#00
	db #ed,#00,#cb,#00,#a9,#00,#97,#00
.l13d8 equ $ + 3
	db #86,#00,#75,#04,#76,#4f,#77,#2c
.l13e1 equ $ + 4
	db #78,#0a,#59,#e8,#04,#56,#8f,#57
.l13ea equ $ + 5
	db #6c,#59,#4a,#5a,#28,#05,#36,#6c
	db #37,#5b,#38,#4a,#39,#39,#3a,#28
.l13f5
	db #85,#37,#f0,#39,#a0,#3b,#80,#3d
.l1400 equ $ + 3
	db #60,#43,#50,#08,#40,#ef,#40,#ce
	db #40,#ad,#40,#8c,#40,#5b,#40,#3a
.l1411 equ $ + 4
	db #40,#19,#20,#f8,#08,#40,#4f,#40
	db #2e,#40,#0d,#20,#ec,#20,#bb,#20
.l1422 equ $ + 5
	db #9a,#20,#79,#20,#58,#08,#60,#4f
	db #60,#2e,#60,#0d,#40,#ec,#40,#bb
.l1433 equ $ + 6
	db #40,#9a,#40,#69,#40,#48,#01,#ff
.l143c equ $ + 7
.l1439 equ $ + 4
.l1436 equ $ + 1
	db #ff,#01,#ff,#ff,#01,#ff,#ff,#01
l143f equ $ + 2
l1442 equ $ + 5
	db #ff,#ff,#01,#ff,#ff,#01,#ff,#ff
.l1445
	db #0f,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #0c,#0e,#0d,#07,#0c,#0e,#0d,#07
	db #0e,#0d,#0c,#0b,#0a,#0a,#09,#08
	db #0d,#0e,#0d,#0b,#0d,#0b,#08,#0a
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #05,#05,#05,#05,#05,#05,#05,#04
	db #0e,#0c,#0b,#0a,#09,#08,#07,#00
	db #0f,#0f,#0f,#0f,#00,#00,#00,#00
	db #09,#08,#08
.l1495 equ $ + 5
	db #07,#07,#06,#06,#05,#00,#0a,#14
	db #1e,#1e,#14,#0a,#00,#24,#18,#0c
	db #01,#00,#00,#00,#00,#00,#04,#08
	db #10,#10,#08,#04,#00,#28,#1e,#14
	db #0a,#00,#00,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#fb,#05
	db #fb,#05,#fb,#05,#fb,#00,#00,#01
	db #00,#ff,#00,#ff,#01,#00,#fa,#06
	db #fa,#06,#fa,#06,#fa,#18,#f4,#f4
	db #0c,#0c,#f4,#f4,#0c,#0c,#ff,#ff
.l14e5 equ $ + 5
	db #ff,#ff,#ff,#ff,#ff,#a6,#ab,#ee
	db #aa,#ba,#eb,#4c,#0f,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#b2
	db #db,#2d,#b2,#db,#2c,#00,#0f,#ff
	db #ff,#ff,#ff,#b2,#cb,#29,#ff,#ab
	db #3a,#ff,#ff,#ff,#ff,#de,#fc,#d0
	db #08,#c0,#8c,#08,#e3,#ff,#71,#c1
	db #10,#70,#44,#f0,#0d,#03,#30,#c9
	db #f3,#00,#08,#c0,#8c,#08,#e3,#fe
	db #71,#c1,#10,#70,#44,#0c,#08,#c0
	db #8c,#08,#e3,#fe,#21,#c1,#10,#70
	db #44,#b2,#db,#2d,#b3,#ab,#3a,#34
	db #08,#c0,#8c,#08,#e3,#1c,#cb,#31
	db #cc,#75,#e5,#dc,#04,#00,#40,#04
	db #00,#fe,#41,#c1,#10,#70,#44,#48
	db #04,#00,#40,#04,#00,#5c,#cb,#95
	db #73,#2e,#55,#78,#04,#00,#40,#04
	db #00,#44,#04,#00,#40,#04,#00,#cc
	db #b9,#57,#32,#e9,#5c,#cb,#95,#73
	db #2e,#55,#cc,#49,#f7,#cf,#ff,#ae
	db #ba,#b2,#cb,#2c,#ff,#de,#fc,#84
	db #31,#47,#ff,#ff,#ff,#38,#04,#00
	db #40,#04,#00,#34,#0b,#23,#8c,#0b
	db #00,#40,#03,#cc,#fc,#50,#0f,#b6
	db #ba,#fd,#91,#d1,#ab,#40,#00,#00
	db #00,#00,#00,#ae,#3b,#00,#ac,#23
	db #2c,#33,#01,#c1,#10,#70,#44,#f2
	db #7b,#cd,#91,#d1,#d3,#48,#04,#00
	db #40,#04,#10,#94,#0b,#23,#8c,#0b
	db #00,#78,#03,#cc,#fc,#50,#0f,#40
	db #00,#10,#00,#00,#10,#ae,#3b,#00
	db #ac,#21,#6c,#33,#61,#c1,#10,#70
	db #44,#35,#be,#c9,#dd,#2b,#5f,#14
	db #0b,#23,#8c,#0b,#00,#70,#03,#cc
	db #fc,#50,#0f,#d9,#1d,#13,#f2,#7b
	db #cd,#91,#d1,#d3,#35,#bf,#c9,#ae
	db #3b,#02,#b0,#51,#42,#33,#00,#c5
	db #10,#31,#44,#04,#0b,#23,#8c,#0b
	db #00,#74,#03,#cc,#fc,#50,#0f,#dd
	db #2b,#5f,#d9,#1d,#17,#01,#00,#10
	db #00,#00,#00,#48,#04,#00,#40,#00
	db #10,#f2,#76,#f3,#64,#74,#7b,#00
	db #04,#00,#40,#00,#00,#ae,#3b,#02
	db #ac,#10,#ac,#1c,#0b,#23,#8c,#0b
	db #00,#27,#5b,#f6,#47,#45,#fc,#9d
	db #bc,#d9,#1d,#1f,#c9,#ae,#3b,#02
	db #ac,#10,#82,#33,#00,#c5,#08,#20
	db #c5,#44,#04,#41,#47,#ff,#c0,#04
	db #03,#c1,#b2,#3b,#00,#cc,#00,#41
	db #07,#ff,#c0,#d7,#7c,#b7,#4b,#6e
	db #db,#ff,#ff,#c0,#fd,#f0,#53,#ef
	db #cb,#00,#b0,#f0,#46,#ff,#ff,#c0
	db #fc,#f0,#43,#af,#6f,#55,#55,#5a
	db #9b,#4d,#f7,#df,#7f,#ff,#d0,#4d
	db #f7,#df,#7f,#de,#d0,#03,#ff,#c1
	db #ff,#ff,#c2,#03,#de,#c1,#ab,#de
	db #c1,#03,#ff,#c0,#ff,#ff,#c0,#ef
	db #be,#8a,#28,#0b,#00,#a6,#ab,#ee
	db #75,#fa,#d1,#ff,#ff,#ff,#79,#ff
	db #d1,#ff,#ff,#ff,#41,#ff,#d1,#aa
	db #aa,#ab,#ae,#bb,#ae,#a4,#db,#ee
	db #7c,#04,#1f,#fc,#df,#ff,#7c,#04
	db #1f,#ba,#8a,#28,#66,#6a,#ae,#43
	db #fd,#10,#41,#04,#10,#43,#be,#fc
	db #ff,#ff,#ff,#43,#ff,#ff,#ff,#ff
	db #ff,#cb,#6e,#be,#8d,#99,#aa,#41
	db #04,#3f,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ae,#ba,#ff,#f6,#10,#41,#04
	db #10,#bb,#2d,#79,#cb,#d0,#e7,#9e
	db #6e,#b5,#79,#65,#96,#dd,#a6,#b7
	db #73,#ff,#e9,#dd,#96,#d9,#6f,#ff
	db #f7,#45,#a6,#9a,#6b,#ff,#ff,#ab
	db #ff,#ff,#ff,#ff,#ff,#02,#fb,#aa
	db #ae,#ba,#ec,#69,#a6,#fc,#07,#66
	db #6a,#ff,#ff,#ff,#ff,#ff,#e9,#b6
	db #cb,#6c,#b6,#cb,#00,#ff,#64,#10
	db #41,#04,#3f,#ae,#cb,#79,#9a,#ab
	db #b2,#ff,#37,#df,#7d,#f7,#ff,#ae
	db #ba,#ed,#ff,#ff,#e9,#03,#bf,#2a
	db #a6,#9a,#6e,#ff,#34,#51,#45,#14
	db #7f,#df,#76,#6a,#ae,#cb,#55,#b6
	db #cb,#69,#ae,#ba,#ff,#ff,#de,#fc
	db #eb,#ae,#bf,#05,#f7,#df,#7d,#f3
	db #ff,#96,#67,#56,#6a,#f7,#6a,#ff
	db #ff,#f3,#41,#04,#10,#ff,#ff,#ff
	db #ff,#f5,#81,#dd,#04,#10,#41,#00
	db #10,#db,#2a,#b6,#bd,#5a,#c6,#d5
	db #ba,#a6,#ca,#e5,#6c,#9a,#5b,#66
	db #bb,#e7,#1f,#41,#04,#10,#41,#0c
	db #da,#45,#14,#51,#45,#1c,#99,#41
	db #04,#10,#ff,#f5,#9a,#43,#9e,#79
	db #ba,#d5,#e5,#96,#59,#a6,#9b,#40
	db #c9,#6b,#77,#3f,#ff,#fa,#6a,#6d
	db #96,#fd,#ef,#c5,#40,#69,#a6,#bf
	db #ff,#f6,#7f,#be,#ea,#ab,#ae,#bb
	db #2d,#8c,#08,#c0,#8e,#3f,#ff,#33
	db #f0,#bf,#37,#ff,#e5,#b2,#db,#2d
	db #b2,#ca,#6a,#ff,#ff,#ff,#ff,#f0
	db #00,#1c,#11,#07,#04,#41,#ff,#ff
	db #ff,#ff,#ff,#f0,#c0,#1c,#11,#07
	db #04,#41,#bf,#37,#f0,#bf,#33,#ff
	db #e1,#1c,#11,#07,#04,#40,#ff,#b2
	db #db,#3a,#b3,#aa,#6a,#ff,#ff,#fd
	db #ef,#c3,#40,#1c,#11,#07,#04,#41
	db #3f,#f3,#1c,#c7,#32,#cc,#b3,#be
	db #ea,#ab,#ae,#bd,#00,#8c,#08,#c0
	db #8e,#3b,#2d,#40,#04,#00,#40,#0a
	db #6a,#b2,#db,#2d,#b2,#c0,#00,#1c
	db #11,#07,#04,#41,#7f,#be,#ea,#ab
	db #ae,#b4,#80,#37,#f0,#7f,#37,#ff
	db #e7,#1d,#79,#57,#32,#e5,#5c,#be
	db #ea,#ab,#ae,#b7,#80,#b2,#db,#2d
	db #b2,#c0,#c0,#be,#ea,#ab,#ae,#b4
	db #40,#1c,#11,#07,#04,#40,#bf,#33
	db #f0,#bf,#33,#ff,#e3,#ba,#57,#32
	db #e9,#5c,#cb,#be,#ea,#ab,#ae,#b4
	db #9f,#8c,#08,#c0,#8e,#3b,#2c,#33
	db #f0,#bf,#33,#f9,#43,#a5,#73,#2d
	db #ae,#bf,#64,#7c,#ff,#fa,#eb,#a3
	db #80,#b2,#cf,#fd,#ef,#c3,#40,#14
	db #7f,#ff,#ff,#f4,#00,#40,#04,#00
	db #40,#04,#00,#b2,#38,#c0,#b0,#0a
	db #e3,#3c,#cf,#c5,#00,#f3,#30,#74
	db #6a,#fc,#9e,#f3,#64,#00,#00,#00
	db #00,#04,#80,#b0,#0a,#c2,#32,#c9
	db #40,#1c,#11,#07,#04,#47,#80,#40
	db #04,#00,#41,#04,#00,#3c,#cf,#c5
	db #00,#f3,#36,#74,#74,#cd,#6f,#b2
	db #77,#01,#00,#00,#01,#07,#80,#b0
	db #0a,#c2,#16,#c1,#40,#1c,#11,#07
	db #04,#47,#00,#4a,#d7,#f6,#47,#44
	db #fc,#9e,#f3,#64,#74,#74,#cd,#6f
	db #f2,#77,#4a,#d7,#f6,#01,#00,#00
	db #01,#04,#40,#b0,#2b,#05,#14,#20
	db #40,#0c,#51,#03,#14,#47,#40,#40
	db #04,#00,#40,#00,#10,#47,#45,#fc
	db #9d,#bc,#d9,#01,#00,#00,#00,#04
	db #80,#40,#04,#00,#01,#00,#00,#40
	db #04,#00,#00,#07,#80,#b0,#2a,#c1
	db #0a,#c1,#c0,#1d,#1e,#c9,#d6,#fd
	db #91,#d1,#7f,#27,#6f,#36,#47,#40
	db #04,#00,#00,#04,#40,#b0,#2a,#c1
	db #08,#20,#40,#0c,#50,#82,#0c,#5c
	db #c0,#47,#f2,#75,#df,#2d,#d2,#44
	db #14,#7f,#fc,#0f,#ff,#3c,#1b,#23
	db #b0,#0e,#fc,#04,#10,#7f,#fc,#0f
	db #ff,#fc,#0f,#df,#05,#34,#df,#b0
	db #0b,#0f,#04,#64,#df,#fc,#0f,#cf
	db #04,#34,#df,#db,#b6,#eb,#db,#d5
	db #55,#7d,#f7,#ff,#fd,#0a,#6a,#7d
	db #f7,#fd,#ed,#0f,#ff,#7d,#f7,#ff
	db #fd,#0f,#ff,#be,#ea,#ab,#ae,#b0
	db #3f,#ff,#ff,#ff,#ff,#f0,#3d,#ff
	db #ff,#ff,#ff,#f0,#3f,#fc,#1f,#ff
	db #fc,#2a,#6a,#ec,#1a,#bd,#ec,#1f
	db #ff,#fc,#0f,#ff,#fc,#0f,#ff,#56
	db #a6,#fb,#ef,#a2,#8a,#be,#e7,#5f
	db #ad,#1a,#4d,#ff,#f7,#9f,#fd,#1f
	db #cd,#ff,#f4,#1f,#fd,#1f,#cd,#02
	db #c0,#2a,#aa,#aa,#eb,#be,#e7,#c0
	db #41,#f4,#3f,#ff,#f7,#c0,#41,#f4
	db #3b,#ff,#f7,#c0,#41,#f4,#3f,#ae
	db #eb,#ae,#a2,#8a,#19,#d1,#04,#10
	db #41,#04,#10,#ef,#cf,#ff,#ff,#ff
	db #ff,#9a,#ab,#b2,#db,#af,#a3,#66
	db #6a,#ae,#cb,#5e,#72,#43,#ff,#ff
	db #ff,#fd,#da,#ff,#ff,#fa,#eb,#ad
	db #d9,#61,#04,#10,#41,#04,#5a,#f4
	db #39,#e7,#9b,#ad,#5e,#6b,#77,#3f
	db #ff,#ff,#ff,#6d,#96,#ff,#ff,#ff
	db #ff,#69,#a6,#bf,#ff,#ff,#ff,#59
	db #65,#9a,#69,#80,#1f
;
.play_music
;
	ld hl,l1e9c
	ld de,l1e9d
	ld bc,#000d
	ld (hl),#00
	ldir
	ld a,#38
	ld (l1ea3),a
	call l1b28
	call l1aaf
	ld hl,l1ea9
	ld b,#0e
.l1a5a
	push bc
	ld a,b
	dec a
	ld c,(hl)
	dec hl
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
	djnz l1a5a
	ret
;
.init_music
;
	ld bc,#0000	; added by Megachur
;	push af		; modified by Megachur
	call l1a9c
	ld a,c
	ld (l11d3),a
	ld a,#ff
	ld (l11d4),a
	ld (l11ce),a
.l1a90
	ld a,(l11d4)
;	inc a		; modified by Megachur
	jr z,l1a90
	ld a,b
	ld (l11d3),a
;	pop af		; modified by Megachur
	ret
	
.l1a9c
	xor a
	ld (l11ce),a
	dec a
	ld (l11d1),a
	ld (l11d2),a
	ld a,(l11d0)
	dec a
	ld (l11cf),a
	ret
.l1aaf
	ld ix,l1eac
	ld b,#08
.l1ab5
	push bc
	call l1ac1
	inc ix
	inc ix
	pop bc
	djnz l1ab5
	ret
.l1ac1
	ld a,(ix+#00)
	inc a
	ret z
	ld e,(ix+#01)
	ld hl,l1363
	call l1bca
	ld a,(hl)
	ld d,#00
	add hl,de
	add hl,de
	inc hl
	ld d,a
	and #7f
	inc e
	cp e
	jr nz,l1ae0
	ld (ix+#00),#ff
.l1ae0
	ld (ix+#01),e
	call l1bcd
	rl d
	ex de,hl
	ld hl,l1ea6
	jr nc,l1afd
	ld a,d
	rrca
	rrca
	rrca
	rrca
	and #0f
	cp (hl)
	ret c
	ld (hl),a
	ld (l1ea0),de
	ret
.l1afd
	ld a,d
	and #0f
	dec hl
	cp (hl)
	ret c
	ld (hl),a
	ld a,e
	ld (l1ea2),a
	rrca
	and #70
	ld e,a
	ld a,d
	rrca
	rrca
	rrca
	rrca
	and #0f
	or e
	ld e,a
	call l1bc7
	ld (l1e9e),hl
	ld a,e
	cp #7f
	ld a,#2a
	jr z,l1b24
	ld a,#28
.l1b24
	ld (l1ea3),a
	ret
.l1b28
	ld a,(l11ce)
	and a
	ret z
	ld hl,l11cf
	ld a,(l11d0)
	inc (hl)
	cp (hl)
	call z,l1c2a
	ld ix,l1da0
	ld iy,l1e9c
	ld b,#03
.l1b42
	bit 7,(ix+#00)
	jr nz,l1ba2
	ld a,#0b
	sub b
	ld (l1b78),a
	add a
	sub #10
	ld (l1b9e),a
	inc a
	ld (l1ba1),a
	ld a,(ix+#01)
	cp #0a
	jr nc,l1b76
	add a
	add a
	add a
	ld d,a
	ld hl,l1445
	ld a,(l11d0)
	cp #09
	ld a,(l11cf)
	jr c,l1b71
	rra
.l1b71
	add d
	call l1bd3
	ld a,(hl)
.l1b78 equ $ + 2
.l1b76
	ld (iy+#00),a
	ld a,(ix+#02)
	add a
	add a
	add a
	ld d,a
	ld hl,l1495
	ld a,(l11cf)
	and #07
	add d
	call l1bd3
	ld a,(hl)
	bit 7,(ix+#03)
	jr z,l1baa
	add (ix+#00)
	ld (ix+#00),a
	call l1bc7
.l1b9e equ $ + 2
.l1b9c
	ld (iy+#00),l
.l1ba1 equ $ + 2
	ld (iy+#00),h
.l1ba2
	ld de,#000c
	add ix,de
	djnz l1b42
	ret
.l1baa
	ld d,a
	ld a,(ix+#00)
	call l1bc7
	ld a,d
	add a
	add a
	ld d,h
	ld e,l
.l1bb6
	bit 3,d
	jr nz,l1bc2
	srl a
	rl e
	rl d
	jr l1bb6
.l1bc2
	call l1bd3
	jr l1b9c
.l1bc7
	ld hl,l1df4
.l1bca
	call l1bd2
.l1bcd
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ret
.l1bd2
	add a
.l1bd3
	add l
	ld l,a
	adc h
	sub l
	ld h,a
	ret
.l1bd9
	ld hl,l1da0
	ld de,l1da1
	ld bc,#0023
	ld (hl),#00
	ldir
	ld a,(l11d3)
	ld hl,l11d5
	call l1bca
	push hl
	pop ix
	ld bc,#0006
	add hl,bc
	ld (l1dc4),hl
	ex de,hl
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l1c58),hl
	add hl,de
	ld (l1dc9),hl
	ld l,(ix+#02)
	ld h,(ix+#03)
	add hl,de
	ld (l1dc6),hl
	ld l,(ix+#04)
	ld h,(ix+#05)
	add hl,de
	ld (l1dcb),hl
	xor a
	ld (l1dc8),a
	ld (l1dcd),a
	ld (l1dce),a
	ld (l1c5f),a
	jr l1c63
.l1c2a
	ld a,(l11d4)
	inc a
	jr nz,l1c3a
	ld (l11d4),a
	ld de,#ffff
	ld (l11d1),de
.l1c3a
	ld (hl),#00
	ld hl,(l11d1)
	inc hl
.l1c40
	ld (l11d1),hl
	ld a,h
	or l
	jr z,l1bd9
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld d,h
	ld e,l
	add hl,hl
	add hl,de
.l1c58 equ $ + 1
	ld de,#0000
	sbc hl,de
	jr z,l1c40
.l1c5f equ $ + 1
	ld a,#00
	inc a
	and #07
.l1c63
	jr nz,l1c7c
	ld iy,l1dc4
	ld hl,l1da6
	call l1d62
	ld hl,l1db2
	call l1d62
	ld hl,l1dbe
	call l1d62
	xor a
.l1c7c
	ld (l1c5f),a
	ld ix,l1da0
	ld b,#03
.l1c85
	push bc
	push ix
	ld a,b
	rra
	ld a,#30
	jr nc,l1c8f
	xor a
.l1c8f
	ld (l1cbf),a
	pop hl
	ld bc,#000b
	add hl,bc
	ld bc,#0600
.l1c9a
	call l1d8a
	djnz l1c9a
	ld a,c
	bit 5,a
	jr nz,l1d06
	and #0f
	cp #09
	jr c,l1cac
	sub #10
.l1cac
	add (ix+#05)
	ld b,#30
	cp b
	jr c,l1cb9
	add b
	jr c,l1cb9
	sub #60
.l1cb9
	ld (ix+#05),a
	add #0c
.l1cbf equ $ + 1
	cp #00
	jr c,l1cc4
	add #0c
.l1cc4
	ld (ix+#00),a
	bit 4,c
	jr z,l1cfd
	ld b,#02
	call l1d3c
	cp #01
	jr c,l1cf1
	jr z,l1d31
	cp #02
	jr z,l1ce9
	ld b,#04
	call l1d3c
	ld (ix+#02),a
	cp #05
	ccf
	sbc a
	ld (ix+#03),a
.l1ce9
	ld b,#04
	call l1d3c
	ld (ix+#04),a
.l1cf1
	ld l,(ix+#01)
	ld h,(ix+#04)
	ld (ix+#04),l
	ld (ix+#01),h
.l1cfd
	ld bc,#000c
	add ix,bc
	pop bc
	djnz l1c85
	ret
.l1d06
	bit 3,a
	jr nz,l1d1c
	and #07
	ld d,a
	ld b,#02
	push bc
	call l1d3c
	pop bc
	add a
	add a
	add a
	or d
	add #09
	jr l1cac
.l1d1c
	rra
	xor c
	and #08
	xor c
	and #0f
	cp #0f
	jr z,l1d2a
	call l1dd5
.l1d2a
	ld a,#80
	ld (ix+#00),a
	jr l1cfd
.l1d31
	ld a,(ix+#01)
	dec a
	and #0f
	ld (ix+#01),a
	jr l1cfd
.l1d3c
	push hl
	ld c,#00
	ld a,(l1dce)
.l1d42
	and a
	jr z,l1d54
	dec a
.l1d46
	ld hl,l1dd4
	call l1d8a
	djnz l1d42
	ld (l1dce),a
	ld a,c
	pop hl
	ret
.l1d54
	ld iy,l1dc9
	ld hl,l1dcf
	call l1d62
	ld a,#2f
	jr l1d46
.l1d62
	push bc
	push de
	ld e,(iy+#00)
	ld d,(iy+#01)
	ld a,(de)
	inc de
	ld (iy+#00),e
	ld (iy+#01),d
	ld c,a
	ld b,#00
	sla c
	rl b
	ex de,hl
	ld h,b
	ld l,c
	add hl,hl
	add hl,bc
	ld bc,l14e5
	add hl,bc
	ld bc,#0006
	ldir
	pop de
	pop bc
	ret
.l1d8a
	push hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	rl c
	pop hl
	ret
.l1da6 equ $ + 6
.l1da1 equ $ + 1
.l1da0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1db2 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1dbe equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1dc6 equ $ + 6
.l1dc4 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1dcf equ $ + 7
.l1dce equ $ + 6
.l1dcd equ $ + 5
.l1dcb equ $ + 3
.l1dc9 equ $ + 1
.l1dc8
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1dd4 equ $ + 4
	db #00,#00,#00,#00,#00
.l1dd5
	ld (l1eaa),a
	ld a,#ff
	ld (l1ebc),a
	ld hl,l1eac
	ld bc,#0002
.l1de3
	ld a,(hl)
	inc a
	jr z,l1ded
	inc hl
	inc hl
	inc c
	inc c
	jr l1de3
.l1ded
	ld d,h
	ld e,l
	inc de
	dec hl
	lddr
	ret
.l1df4
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
.l1ea3 equ $ + 7
.l1ea2 equ $ + 6
.l1ea0 equ $ + 4
.l1e9e equ $ + 2
.l1e9d equ $ + 1
.l1e9c
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1eaa equ $ + 6
.l1ea9 equ $ + 5
.l1ea6 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1eac
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
.l1ebc
	db #ff,#00
;
.music_info
	db "After the War (1989)(Dinamic)(Mac)",0
	db "",0

	read "music_end.asm"
