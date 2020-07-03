; Music of Relentless - Teaser (2013)(Psytronik Software)(Tom & Jerry)(StArkos)
; Ripped by Megachur the 22/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RELENTLT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0100

	read "music_header.asm"

.l0100
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#59,#00,#18,#01,#21,#01
	db #28,#01,#3b,#01,#48,#01,#55,#01
	db #00,#00,#00,#00,#00,#00,#0d,#1a
	db #01,#05,#00,#05,#3a,#0d,#23,#01
	db #01,#00,#3a,#0a,#7c,#14,#7c,#0c
	db #7c,#08,#78,#04,#74,#03,#70,#02
	db #0d,#1a,#01,#03,#fe,#6c,#0c,#2c
	db #68,#0c,#2c,#68,#0c,#0d,#42,#01
	db #02,#00,#32,#21,#70,#0c,#28,#70
	db #0c,#28,#0d,#1a,#01,#02,#fe,#38
	db #34,#74,#0c,#30,#6c,#0c,#2c,#64
	db #0c,#24,#0d,#5f,#01,#20,#00,#00
	db #00,#5e,#02,#04,#00,#5c,#03,#8b
	db #02,#a8,#02,#00,#5c,#03,#e0,#02
	db #c4,#02,#02,#fe,#5c,#03,#fe,#02
	db #1c,#03,#02,#fb,#5c,#03,#fe,#02
	db #1c,#03,#02,#00,#5f,#02,#38,#03
	db #a8,#02,#04,#01,#5f,#02,#38,#03
	db #c4,#02,#06,#fe,#fe,#5f,#02,#38
	db #03,#1c,#03,#16,#fb,#fc,#5f,#02
	db #38,#03,#1c,#03,#10,#14,#fb,#62
	db #03,#38,#03,#1c,#03,#20,#00,#62
	db #03,#38,#03,#1c,#03,#0e,#00,#f9
	db #0c,#8e,#03,#38,#03,#d2,#03,#16
	db #fe,#f7,#8e,#03,#38,#03,#dc,#03
	db #10,#08,#0b,#8e,#03,#38,#03,#dc
	db #03,#0e,#fb,#f9,#0c,#8e,#03,#38
	db #03,#dc,#03,#18,#0e,#8e,#03,#38
	db #03,#dc,#03,#08,#08,#0b,#8e,#03
	db #38,#03,#dc,#03,#1e,#00,#f4,#0c
	db #8e,#03,#38,#03,#dc,#03,#10,#08
	db #00,#8e,#03,#38,#03,#a8,#02,#08
	db #07,#8e,#03,#38,#03,#e2,#03,#18
	db #0a,#8e,#03,#38,#03,#e2,#03,#08
	db #08,#0c,#8e,#03,#38,#03,#e2,#03
	db #16,#fb,#f7,#8e,#03,#38,#03,#e2
	db #03,#10,#0c,#f2,#05,#8e,#03,#38
	db #03,#e2,#03,#0e,#f7,#f4,#03,#8e
	db #03,#38,#03,#e2,#03,#1c,#f7,#05
	db #8e,#03,#38,#03,#e2,#03,#08,#0c
	db #f4,#03,#8e,#03,#38,#03,#e2,#03
	db #1e,#00,#f9,#00,#8e,#03,#38,#03
	db #e2,#03,#20,#01,#6b,#01,#00,#8a
	db #e0,#00,#00,#01,#0e,#72,#61,#02
	db #72,#43,#72,#45,#72,#47,#72,#49
	db #72,#4b,#72,#4d,#72,#4f,#8a,#60
	db #01,#0e,#72,#61,#02,#72,#43,#72
	db #45,#72,#47,#72,#49,#72,#4b,#72
	db #4d,#72,#4f,#42,#80,#00,#00,#04
	db #98,#6b,#03,#02,#4b,#02,#63,#06
	db #59,#02,#4b,#02,#63,#02,#59,#06
	db #4b,#02,#63,#06,#59,#02,#4b,#00
	db #98,#e1,#00,#00,#03,#02,#4b,#02
	db #63,#06,#59,#02,#4b,#02,#63,#02
	db #59,#06,#4b,#02,#63,#06,#59,#02
	db #4b,#02,#63,#00,#9a,#e0,#00,#00
	db #03,#02,#51,#02,#63,#06,#5b,#02
	db #51,#02,#63,#02,#5b,#06,#51,#02
	db #63,#06,#5b,#02,#51,#02,#63,#00
	db #42,#80,#00,#00,#04,#9a,#6b,#03
	db #02,#51,#02,#63,#06,#5b,#02,#51
	db #02,#63,#02,#5b,#06,#51,#02,#63
	db #06,#5b,#02,#51,#02,#63,#42,#80
	db #00,#00,#04,#98,#6b,#03,#02,#4f
	db #02,#63,#06,#59,#02,#4f,#02,#63
	db #02,#59,#06,#4f,#02,#63,#06,#59
	db #02,#4f,#02,#63,#98,#e0,#00,#00
	db #03,#02,#4f,#02,#63,#06,#59,#02
	db #4f,#02,#63,#02,#59,#06,#4f,#02
	db #63,#06,#59,#02,#4f,#02,#63,#00
	db #b0,#e5,#00,#00,#04,#71,#02,#71
	db #71,#02,#71,#71,#02,#71,#71,#02
	db #71,#02,#71,#02,#71,#71,#02,#71
	db #71,#02,#71,#71,#02,#71,#71,#02
	db #71,#02,#71,#00,#8a,#e0,#00,#00
	db #01,#00,#8a,#e0,#00,#00,#01,#0e
	db #72,#61,#02,#72,#43,#72,#45,#72
	db #47,#72,#49,#72,#4b,#72,#4d,#72
	db #4f,#a2,#60,#01,#0e,#72,#61,#02
	db #72,#43,#72,#45,#72,#47,#72,#41
	db #72,#4b,#72,#41,#72,#40,#a2,#e0
	db #00,#00,#01,#02,#72,#60,#02,#72
	db #47,#8a,#61,#01,#02,#8a,#60,#05
	db #02,#72,#60,#02,#72,#47,#8a,#60
	db #01,#06,#72,#61,#02,#72,#47,#a2
	db #60,#01,#02,#72,#61,#02,#72,#47
	db #8a,#60,#01,#02,#8a,#61,#05,#02
	db #72,#60,#02,#72,#47,#8a,#60,#01
	db #02,#72,#61,#02,#72,#47,#72,#41
	db #72,#47,#a2,#e0,#00,#00,#05,#36
	db #a6,#60,#03,#00,#a8,#e0,#00,#00
	db #05,#00,#ba,#e0,#00,#00,#05,#00
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
	db #55,#55,#00,#00,#55,#55,#00,#00
	db #55,#55,#00,#00,#55,#55,#00,#00
	db #55,#55,#aa,#aa,#55,#55,#aa,#aa
	db #55,#55,#aa,#aa,#55,#55,#aa,#aa
	db #55,#55,#ff,#ff,#55,#55,#ff,#ff
	db #55,#55,#ff,#ff,#55,#55,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #af,#af,#ff,#ff,#af,#af,#ff,#ff
	db #af,#af,#ff,#ff,#af,#af,#ff,#ff
	db #af,#af,#5f,#5f,#af,#af,#5f,#5f
	db #af,#af,#5f,#5f,#af,#af,#5f,#5f
	db #af,#af,#0f,#0f,#af,#af,#0f,#0f
	db #af,#af,#0f,#0f,#af,#af,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #00,#55,#00,#00,#00,#55,#00,#00
	db #00,#55,#00,#00,#00,#55,#00,#00
	db #00,#55,#00,#aa,#00,#55,#00,#aa
	db #00,#55,#00,#aa,#00,#55,#00,#aa
	db #00,#55,#00,#ff,#00,#55,#00,#ff
	db #00,#55,#00,#ff,#00,#55,#00,#ff
	db #00,#ff,#00,#ff,#00,#ff,#00,#ff
	db #00,#ff,#00,#ff,#00,#ff,#00,#ff
	db #00,#af,#00,#ff,#00,#af,#00,#ff
	db #00,#af,#00,#ff,#00,#af,#00,#ff
	db #00,#af,#00,#5f,#00,#af,#00,#5f
	db #00,#af,#00,#5f,#00,#af,#00,#5f
	db #00,#af,#00,#0f,#00,#af,#00,#0f
	db #00,#af,#00,#0f,#00,#af,#00,#0f
	db #00,#0f,#00,#0f,#00,#0f,#00,#0f
	db #00,#0f,#00,#0f,#00,#0f,#00,#0f
	db #55,#00,#00,#00,#55,#00,#00,#00
	db #55,#00,#00,#00,#55,#00,#00,#00
	db #55,#00,#aa,#00,#55,#00,#aa,#00
	db #55,#00,#aa,#00,#55,#00,#aa,#00
	db #55,#00,#ff,#00,#55,#00,#ff,#00
	db #55,#00,#ff,#00,#55,#00,#ff,#00
	db #ff,#00,#ff,#00,#ff,#00,#ff,#00
	db #ff,#00,#ff,#00,#ff,#00,#ff,#00
	db #af,#00,#ff,#00,#af,#00,#ff,#00
	db #af,#00,#ff,#00,#af,#00,#ff,#00
	db #af,#00,#5f,#00,#af,#00,#5f,#00
	db #af,#00,#5f,#00,#af,#00,#5f,#00
	db #af,#00,#0f,#00,#af,#00,#0f,#00
	db #af,#00,#0f,#00,#af,#00,#0f,#00
	db #0f,#00,#0f,#00,#0f,#00,#0f,#00
	db #0f,#00,#0f,#00,#0f,#00,#0f,#00
	db #55,#55,#00,#00,#11,#55,#00,#00
	db #00,#55,#00,#00,#00,#11,#00,#00
	db #55,#55,#22,#aa,#11,#55,#00,#aa
	db #00,#55,#00,#22,#00,#11,#00,#00
	db #55,#55,#77,#ff,#11,#55,#11,#ff
	db #00,#55,#00,#77,#00,#11,#00,#11
	db #ff,#ff,#77,#ff,#33,#ff,#11,#ff
	db #00,#ff,#00,#77,#00,#33,#00,#11
	db #af,#af,#77,#ff,#23,#af,#11,#ff
	db #00,#af,#00,#77,#00,#23,#00,#11
	db #af,#af,#57,#5f,#23,#af,#11,#5f
	db #00,#af,#00,#57,#00,#23,#00,#11
	db #af,#af,#07,#0f,#23,#af,#01,#0f
	db #00,#af,#00,#07,#00,#23,#00,#01
	db #0f,#0f,#07,#0f,#03,#0f,#01,#0f
	db #00,#0f,#00,#07,#00,#03,#00,#01
	db #00,#00,#00,#00,#44,#00,#00,#00
	db #55,#00,#00,#00,#55,#44,#00,#00
	db #00,#00,#88,#00,#44,#00,#aa,#00
	db #55,#00,#aa,#88,#55,#44,#aa,#aa
	db #00,#00,#cc,#00,#44,#00,#ff,#00
	db #55,#00,#ff,#cc,#55,#44,#ff,#ff
	db #88,#00,#cc,#00,#ee,#00,#ff,#00
	db #ff,#88,#ff,#cc,#ff,#ee,#ff,#ff
	db #88,#00,#cc,#00,#ae,#00,#ff,#00
	db #af,#88,#ff,#cc,#af,#ae,#ff,#ff
	db #88,#00,#4c,#00,#ae,#00,#5f,#00
	db #af,#88,#5f,#4c,#af,#ae,#5f,#5f
	db #88,#00,#0c,#00,#ae,#00,#0f,#00
	db #af,#88,#0f,#0c,#af,#ae,#0f,#0f
	db #08,#00,#0c,#00,#0e,#00,#0f,#00
	db #0f,#08,#0f,#0c,#0f,#0e,#0f,#0f
	db #55,#55,#00,#00,#55,#44,#00,#00
	db #55,#00,#00,#00,#44,#00,#00,#00
	db #55,#55,#aa,#aa,#55,#44,#aa,#88
	db #55,#00,#aa,#00,#44,#00,#88,#00
	db #55,#55,#ff,#ee,#55,#44,#ff,#88
	db #55,#00,#ee,#00,#44,#00,#88,#00
	db #ff,#ff,#ff,#ee,#ff,#cc,#ff,#88
	db #ff,#00,#ee,#00,#cc,#00,#88,#00
	db #af,#af,#ff,#ee,#af,#8c,#ff,#88
	db #af,#00,#ee,#00,#8c,#00,#88,#00
	db #af,#af,#5f,#4e,#af,#8c,#5f,#08
	db #af,#00,#4e,#00,#8c,#00,#08,#00
	db #af,#af,#0f,#0e,#af,#8c,#0f,#08
	db #af,#00,#0e,#00,#8c,#00,#08,#00
	db #0f,#0f,#0f,#0e,#0f,#0c,#0f,#08
	db #0f,#00,#0e,#00,#0c,#00,#08,#00
	db #00,#11,#00,#00,#00,#55,#00,#00
	db #11,#55,#00,#00,#55,#55,#00,#00
	db #00,#11,#00,#22,#00,#55,#00,#aa
	db #11,#55,#22,#aa,#55,#55,#aa,#aa
	db #00,#11,#00,#33,#00,#55,#00,#ff
	db #11,#55,#33,#ff,#55,#55,#ff,#ff
	db #00,#11,#00,#33,#00,#77,#00,#ff
	db #11,#ff,#33,#ff,#77,#ff,#ff,#ff
	db #00,#01,#00,#33,#00,#27,#00,#ff
	db #01,#af,#33,#ff,#27,#af,#ff,#ff
	db #00,#01,#00,#13,#00,#27,#00,#5f
	db #01,#af,#13,#5f,#27,#af,#5f,#5f
	db #00,#01,#00,#03,#00,#27,#00,#0f
	db #01,#af,#03,#0f,#27,#af,#0f,#0f
	db #00,#01,#00,#03,#00,#07,#00,#0f
	db #01,#0f,#03,#0f,#07,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#1e,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #87,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#3c,#0f,#1e,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #c3,#0f,#87,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#78,#0f,#3c,#0f,#1e,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #e1,#0f,#c3,#0f,#87,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#f0,#0f,#78,#0f,#3c,#0f,#1e
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #f0,#0f,#e1,#0f,#c3,#0f,#87,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #1e,#f0,#0f,#f0,#0f,#78,#0f,#3c
	db #0f,#1e,#0f,#0f,#0f,#0f,#0f,#0f
	db #f0,#87,#f0,#0f,#e1,#0f,#c3,#0f
	db #87,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #3c,#f0,#1e,#f0,#0f,#f0,#0f,#78
	db #0f,#3c,#0f,#1e,#0f,#0f,#0f,#0f
	db #f0,#c3,#f0,#87,#f0,#0f,#e1,#0f
	db #c3,#0f,#87,#0f,#0f,#0f,#0f,#0f
	db #78,#f0,#3c,#f0,#1e,#f0,#0f,#f0
	db #0f,#78,#0f,#3c,#0f,#1e,#0f,#0f
	db #f0,#e1,#f0,#c3,#f0,#87,#f0,#0f
	db #e1,#0f,#c3,#0f,#87,#0f,#0f,#0f
	db #00,#01,#02,#03,#04,#05,#06,#07
	db #08,#09,#0a,#0b,#0c,#0d,#0e,#0f
	db #10,#11,#12,#13,#14,#15,#16,#17
	db #18,#19,#1a,#1b,#1c,#1d,#1e,#1f
	db #bf,#d1,#56,#d4,#92,#71,#d0,#45
	db #46,#b0,#82,#d2,#cc,#af,#53,#2f
	db #39,#ab,#ce,#38,#a1,#c8,#6d,#5b
	db #a0,#4c,#25,#43,#c9,#79,#bb,#c1
	db #8a,#ac,#22,#bc,#42,#3f,#3c,#d5
	db #a9,#58,#61,#67,#4d,#d7,#63,#2a
	db #4f,#24,#88,#a2,#cb,#9f,#8d,#a5
	db #db,#2d,#57,#47,#b3,#44,#6a,#5a
	db #98,#5e,#72,#78,#da,#33,#7f,#5d
	db #dd,#51,#b2,#91,#3b,#30,#64,#d9
	db #80,#84,#48,#7d,#75,#27,#90,#b5
	db #29,#ba,#b7,#de,#50,#b8,#7e,#69
	db #83,#c4,#49,#b6,#31,#87,#dc,#55
	db #a6,#70,#81,#21,#2b,#b9,#9d,#ca
	db #c7,#6f,#54,#66,#97,#be,#2e,#4a
	db #65,#28,#52,#3d,#aa,#cf,#a7,#7a
	db #34,#77,#6e,#c3,#62,#7c,#c0,#ae
	db #9a,#c6,#95,#8c,#7b,#9c,#20,#93
	db #37,#3a,#35,#94,#74,#d3,#26,#40
	db #68,#cd,#32,#8e,#b1,#86,#4e,#b4
	db #bd,#4b,#df,#23,#6c,#d6,#d8,#9b
	db #a4,#a8,#2c,#c5,#96,#85,#5c,#41
	db #76,#ad,#5f,#9e,#60,#8b,#89,#99
	db #36,#73,#6b,#c2,#a3,#3e,#8f,#59
	db #e0,#e1,#e2,#e3,#e4,#e5,#e6,#e7
	db #e8,#e9,#ea,#eb,#ec,#ed,#ee,#ef
	db #f0,#f1,#f2,#f3,#f4,#f5,#f6,#f7
	db #f8,#f9,#fa,#fb,#fc,#fd,#fe,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#02,#03,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#01,#01,#01,#01,#01,#01,#05
	db #00,#00,#04,#01,#00,#00,#00,#00
	db #05,#00,#01,#01,#01,#01,#06,#00
	db #00,#07,#01,#06,#00,#07,#01,#06
	db #00,#04,#01,#01,#01,#01,#01,#01
	db #01,#01,#05,#01,#07,#01,#01,#05
	db #01,#05,#01,#02,#03,#01,#07,#01
	db #01,#01,#05,#07,#01,#01,#06,#00
	db #00,#00,#00,#07,#01,#04,#01,#04
	db #01,#01,#06,#01,#04,#01,#01,#06
	db #01,#04,#01,#02,#03,#01,#04,#01
	db #01,#06,#01,#01,#05,#00,#00,#00
	db #00,#00,#00,#04,#01,#00,#04,#00
	db #04,#01,#06,#01,#06,#04,#01,#06
	db #01,#06,#04,#02,#03,#01,#06,#04
	db #01,#06,#06,#01,#06,#00,#00,#00
	db #00,#00,#00,#00,#04,#00,#00,#00
	db #00,#00,#00,#06,#00,#00,#00,#00
	db #06,#00,#00,#02,#03,#06,#00,#00
	db #00,#00,#00,#06,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
; #14fd - reallocated by Megachur
;
	jp l1b71
	jp l1507
	jp l1bc6
.l1506
	nop
;
.play_music
.l1507
;
	xor a
	ld (l1506),a
.l150c equ $ + 1
	ld a,#01
	dec a
	jp nz,l16d8
.l1512 equ $ + 1
	ld a,#01
	dec a
	jr nz,l157e
.l1517 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l1525
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l1525
	rra
	jr nc,l152d
	ld de,l15ce
	ldi
.l152d
	rra
	jr nc,l1535
	ld de,l1633
	ldi
.l1535
	rra
	jr nc,l153d
	ld de,l1698
	ldi
.l153d
	ld de,l15ad
	ldi
	ldi
	ld de,l1612
	ldi
	ldi
	ld de,l1677
	ldi
	ldi
	rra
	jr nc,l155a
	ld de,l157d
	ldi
.l155a
	rra
	jr nc,l1565
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1569),de
.l1565
	ld (l1517),hl
.l1569 equ $ + 1
	ld hl,#0000
	ld (l1587),hl
	ld a,#01
	ld (l1582),a
	ld (l15a8),a
	ld (l160d),a
	ld (l1672),a
.l157d equ $ + 1
	ld a,#01
.l157e
	ld (l1512),a
.l1582 equ $ + 1
	ld a,#01
	dec a
	jr nz,l15a4
.l1587 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l15a1
	srl a
	jr nz,l1595
	ld a,(hl)
	inc hl
.l1595
	jr nc,l159c
	ld (l1506),a
	jr l159f
.l159c
	ld (l16d7),a
.l159f
	ld a,#01
.l15a1
	ld (l1587),hl
.l15a4
	ld (l1582),a
.l15a8 equ $ + 1
	ld a,#01
	dec a
	jr nz,l1609
.l15ad equ $ + 1
	ld hl,#0000
	call l1a1d
	ld (l15ad),hl
	jr c,l1609
	ld a,d
	rra
	jr nc,l15c0
	and #0f
	ld (l175a),a
.l15c0
	rl d
	jr nc,l15c8
	ld (l1748),ix
.l15c8
	rl d
	jr nc,l1607
	ld a,e
.l15ce equ $ + 1
	add #00
	ld (l1759),a
	ld hl,#0000
	ld (l1745),hl
	rl d
	jr c,l15e7
.l15dd equ $ + 1
	ld hl,#0000
	ld a,(l176a)
	ld (l1762),a
	jr l1604
.l15e7
	ld l,b
	add hl,hl
.l15ea equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l176a),a
	ld (l1762),a
	ld a,(hl)
	or a
	jr z,l1600
	ld (l1848),a
.l1600
	inc hl
	ld (l15dd),hl
.l1604
	ld (l175c),hl
.l1607
	ld a,#01
.l1609
	ld (l15a8),a
.l160d equ $ + 1
	ld a,#01
	dec a
	jr nz,l166e
.l1612 equ $ + 1
	ld hl,#0000
	call l1a1d
	ld (l1612),hl
	jr c,l166e
	ld a,d
	rra
	jr nc,l1625
	and #0f
	ld (l1726),a
.l1625
	rl d
	jr nc,l162d
	ld (l1714),ix
.l162d
	rl d
	jr nc,l166c
	ld a,e
.l1633 equ $ + 1
	add #00
	ld (l1725),a
	ld hl,#0000
	ld (l1711),hl
	rl d
	jr c,l164c
.l1642 equ $ + 1
	ld hl,#0000
	ld a,(l1736)
	ld (l172e),a
	jr l1669
.l164c
	ld l,b
	add hl,hl
.l164f equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l1736),a
	ld (l172e),a
	ld a,(hl)
	or a
	jr z,l1665
	ld (l1848),a
.l1665
	inc hl
	ld (l1642),hl
.l1669
	ld (l1728),hl
.l166c
	ld a,#01
.l166e
	ld (l160d),a
.l1672 equ $ + 1
	ld a,#01
	dec a
	jr nz,l16d3
.l1677 equ $ + 1
	ld hl,#0000
	call l1a1d
	ld (l1677),hl
	jr c,l16d3
	ld a,d
	rra
	jr nc,l168a
	and #0f
	ld (l16f5),a
.l168a
	rl d
	jr nc,l1692
	ld (l16e3),ix
.l1692
	rl d
	jr nc,l16d1
	ld a,e
.l1698 equ $ + 1
	add #00
	ld (l16f4),a
	ld hl,#0000
	ld (l16e0),hl
	rl d
	jr c,l16b1
.l16a7 equ $ + 1
	ld hl,#0000
	ld a,(l1705)
	ld (l16fd),a
	jr l16ce
.l16b1
	ld l,b
	add hl,hl
.l16b4 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l1705),a
	ld (l16fd),a
	ld a,(hl)
	or a
	jr z,l16ca
	ld (l1848),a
.l16ca
	inc hl
	ld (l16a7),hl
.l16ce
	ld (l16f7),hl
.l16d1
	ld a,#01
.l16d3
	ld (l1672),a
.l16d7 equ $ + 1
	ld a,#01
.l16d8
	ld (l150c),a
	ld iy,l185f
.l16e0 equ $ + 1
	ld hl,#0000
.l16e3 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l16e0),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l16f5 equ $ + 2
.l16f4 equ $ + 1
	ld de,#0000
.l16f7 equ $ + 1
	ld hl,#0000
	call l186a
.l16fd equ $ + 1
	ld a,#01
	dec a
	jr nz,l1706
	ld (l16f7),hl
.l1705 equ $ + 1
	ld a,#06
.l1706
	ld (l16fd),a
	ld a,lx
	ex af,af'
	ld iy,l185d
.l1711 equ $ + 1
	ld hl,#0000
.l1714 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l1711),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l1726 equ $ + 2
.l1725 equ $ + 1
	ld de,#0000
.l1728 equ $ + 1
	ld hl,#0000
	call l186a
.l172e equ $ + 1
	ld a,#01
	dec a
	jr nz,l1737
	ld (l1728),hl
.l1736 equ $ + 1
	ld a,#06
.l1737
	ld (l172e),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l185b
.l1745 equ $ + 1
	ld hl,#0000
.l1748 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l1745),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l175a equ $ + 2
.l1759 equ $ + 1
	ld de,#0000
.l175c equ $ + 1
	ld hl,#0000
	call l186a
.l1762 equ $ + 1
	ld a,#01
	dec a
	jr nz,l176b
	ld (l175c),hl
.l176a equ $ + 1
	ld a,#06
.l176b
	ld (l1762),a
	ex af,af'
	or lx
.l1771
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l185b
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	out (c),a
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	ld a,(hl)
.l1848 equ $ + 1
	cp #ff
	ret z
	ld (l1848),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l185b
	nop
	nop
.l185d
	nop
	nop
.l185f
	nop
	nop
.l1861
	nop
.l1862
	nop
	nop
	nop
	nop
	nop
.l1867
	nop
	nop
.l1869
	nop
.l186a
	ld b,(hl)
	inc hl
	rr b
	jp c,l18c8
	rr b
	jr c,l1898
	ld a,b
	and #0f
	jr nz,l1881
	ld (iy+#07),a
	ld lx,#09
	ret
.l1881
	ld lx,#08
	sub d
	jr nc,l1888
	xor a
.l1888
	ld (iy+#07),a
	rr b
	call l19f1
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l1898
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l18a8
	ld (l1861),a
	ld lx,#00
.l18a8
	ld a,b
	and #0f
	sub d
	jr nc,l18af
	xor a
.l18af
	ld (iy+#07),a
	bit 5,c
	jr nz,l18b9
	inc lx
	ret
.l18b9
	rr b
	bit 6,c
	call l19e3
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l18c8
	rr b
	jr nc,l18db
	ld a,(l1762)
	ld c,a
	ld a,(l176a)
	cp c
	jr nz,l18db
	ld a,#fe
	ld (l1848),a
.l18db
	bit 1,b
	jp nz,l1994
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l1869),a
	bit 0,b
	jr z,l194a
	bit 2,b
	call l19e3
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l190a),a
	ld a,b
	exx
.l190a equ $ + 1
	jr l190b
.l190b
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	jr nc,l192a
	inc hl
.l192a
	bit 5,a
	jr z,l193a
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l193a
	ld (l1867),hl
	exx
.l193e
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l1861),a
	ld lx,#00
	ret
.l194a
	bit 2,b
	call l19e3
	ld (l1867),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l195e),a
	ld a,b
	exx
.l195e equ $ + 1
	jr l195f
.l195f
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	bit 5,a
	jr z,l198b
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l198b
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l193e
.l1994
	bit 0,b
	jr z,l199f
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l186a
.l199f
	ld (iy+#07),#10
	bit 5,b
	jr nz,l19ac
	ld lx,#09
	jr l19bf
.l19ac
	ld lx,#08
	ld hx,e
	bit 2,b
	call l19e3
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l19bf
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l1869),a
	rr b
	rr b
	bit 2,b
	call l19e3
	ld (l1867),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l1861),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l19e3
	jr z,l19f1
	ld a,(hl)
	inc hl
	exx
	add e
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld h,a
	ret
.l19f1
	bit 4,b
	jr z,l1a01
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld d,a
	exx
.l1a01
	ld a,e
	bit 3,b
	jr z,l1a0e
	add (hl)
	inc hl
	cp #90
	jr c,l1a0e
	ld a,#8f
.l1a0e
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l1a51
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l1a1d
	ld a,(hl)
	inc hl
	srl a
	jr c,l1a44
	sub #20
	jr c,l1a4e
	jr z,l1a40
	dec a
	ld e,a
.l1a2b
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l1a39
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l1a39
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l1a40
	ld e,(hl)
	inc hl
	jr l1a2b
.l1a44
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l1a4e
	add #20
	ret
.l1a51
	db #ee,#0e,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
	db #0f,#00,#0e,#00,#0d,#00,#0d,#00
	db #0c,#00,#0b,#00,#0b,#00,#0a,#00
	db #09,#00,#09,#00,#08,#00,#08,#00
	db #07,#00,#07,#00,#07,#00,#06,#00
	db #06,#00,#06,#00,#05,#00,#05,#00
	db #05,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#03,#00,#03,#00
	db #03,#00,#03,#00,#03,#00,#02,#00
	db #02,#00,#02,#00,#02,#00,#02,#00
	db #02,#00,#02,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
;
.real_init_music
.l1b71
;
	ld hl,#0009
	add hl,de
	ld de,l16d7
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l15ea),hl
	ld (l164f),hl
	ld (l16b4),hl
	add hl,bc
	ld de,l157d
	ldi
	ld de,l15ce
	ldi
	ld de,l1633
	ldi
	ld de,l1698
	ldi
	ld de,l1569
	ldi
	ldi
	ld (l1517),hl
	ld a,#01
	ld (l150c),a
	ld (l1512),a
	ld a,#ff
	ld (l1869),a
	ld hl,(l15ea)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l175c),hl
	ld (l1728),hl
	ld (l16f7),hl
	ret
;
.stop_music
.l1bc6
;
	ld hl,l1862
	ld bc,#0300
.l1bcc
	ld (hl),c
	inc hl
	djnz l1bcc
	ld a,#3f
	jp l1771
;
.init_music
;
	ld de,l0100
	jp real_init_music

;
.music_info
	db "Relentless - Teaser (2013)(Psytronik Software)(Tom & Jerry)",0
	db "StArkos",0

	read "music_end.asm"
