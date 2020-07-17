@TODO : do clean init and play and clean others code !

; Music of Arachnophobia (1991)(Titus)()()
; Ripped by Megachur the 26/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ARACHNOP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8e00
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

	jp l9ab1
.l8e08 equ $ + 5
.l8e05 equ $ + 2
.l8e03
	db #00,#00,#01,#01,#01,#00,#00,#00
.l8e0e equ $ + 3
.l8e0c equ $ + 1
	db #01,#00,#00,#01,#02,#02,#3c,#00
.l8e17 equ $ + 4
	db #00,#0a,#32,#00,#02,#03,#03,#41
.l8e20 equ $ + 5
	db #00,#00,#0a,#32,#00,#04,#04,#03
	db #01,#03,#ff,#01,#05,#00,#01,#07
.l8e31 equ $ + 6
.l8e2d equ $ + 2
	db #ff,#01,#01,#27,#20,#01,#01,#1c
.l8e39 equ $ + 6
.l8e35 equ $ + 2
	db #10,#01,#01,#01,#00,#01,#02,#04
.l8e40 equ $ + 5
	db #01,#04,#04,#ff,#04,#02,#04,#01
.l8e47 equ $ + 4
	db #04,#04,#ff,#04,#ef,#c9,#9f,#c9
	db #9f,#77,#77,#77,#77,#6a,#64,#77
	db #3c,#3c,#3c,#3c,#35,#32,#26,#35
	db #00,#08,#08,#08,#08,#08,#50,#10
	db #10,#20,#20,#20,#20,#50,#10,#10
.l8e70 equ $ + 5
	db #20,#20,#20,#20,#50,#51,#64,#77
	db #9f,#77,#64,#51,#64,#77,#9f,#77
	db #64,#4b,#64,#77,#96,#77,#64,#4b
	db #64,#73,#96,#77,#64,#47,#64,#77
	db #8e,#77,#64,#47,#64,#77,#91,#77
	db #64,#4b,#64,#77,#96,#77,#64,#4b
	db #64,#73,#96,#77,#64,#51,#64,#77
	db #9f,#77,#64,#51,#64,#77,#9f,#77
	db #64,#4b,#64,#77,#96,#77,#64,#4b
	db #64,#73,#96,#77,#64,#47,#64,#77
	db #8e,#77,#64,#47,#64,#77,#8e,#77
	db #64,#4b,#64,#77,#96,#77,#64,#4b
	db #64,#73,#96,#77,#64,#51,#6a,#86
	db #9f,#86,#6a,#51,#6a,#86,#9f,#86
	db #6a,#51,#64,#86,#9f,#86,#64,#51
	db #64,#86,#9f,#86,#64,#51,#6a,#86
	db #9f,#86,#6a,#51,#6a,#86,#9f,#86
	db #6a,#51,#64,#86,#9f,#86,#64,#51
.l8f01 equ $ + 6
	db #64,#86,#9f,#86,#64,#00,#3c,#3f
	db #3c,#51,#54,#51,#4b,#51,#4b,#59
	db #5f,#59,#51,#59,#6a,#7b,#9f,#6a
	db #ef,#d5,#c9,#9f,#96,#7f,#77,#6a
	db #64,#51,#4b,#3f,#3c,#35,#32,#28
.l8f27 equ $ + 4
	db #26,#20,#1e,#00,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#08
	db #08,#08,#08,#08,#10,#08,#08,#08
	db #08,#08,#10,#08,#08,#08,#08,#08
.l8f52 equ $ + 7
.l8f50 equ $ + 5
.l8f4f equ $ + 4
	db #10,#00,#00,#c0,#01,#de,#64,#00
	db #02,#09,#0b,#06,#08,#03,#0d,#00
.l8f62 equ $ + 7
	db #01,#04,#14,#0f,#12,#18,#1a,#0d
	db #04,#0b,#05,#01,#0e,#09,#07,#06
	db #03,#02,#06,#01,#05,#00,#0d,#06
	db #0c,#04,#0a,#0e,#0a,#08,#01,#02
	db #0b,#07,#09,#00,#05
.l8f80
	db #77,#69,#6e,#30,#30,#2e,#63,#2b
.l8f88
	db #61,#74,#69,#74,#2e,#62,#69,#6e
.l8f90
	db #74,#69,#74,#72,#2e,#62,#69,#6e
.l8f98
	db #61,#63,#6f,#64,#2e,#62,#69,#6e
.l8fa0
	db #63,#6f,#64,#65,#2e,#62,#69,#6e
.l8fa8
	db #70,#61,#67,#65,#32,#2e,#63,#2b
.l8fb0
	db #70,#61,#67,#65,#33,#2e,#63,#2b
.l8fb8
	db #70,#61,#67,#34,#62,#2e,#63,#2b
.l8fc0
	db #70,#61,#67,#34,#66,#2e,#63,#2b
.l8fc8
	db #70,#61,#67,#65,#35,#2e,#63,#2b
.l8fd0
	db #64,#72,#61,#70,#6f,#2e,#63,#2b
.l8fd8
	db #70,#72,#67,#76,#69,#6c,#6c,#65
.l8fe4 equ $ + 4
	db #2e,#62,#69,#6e,#63,#68,#6e,#75
	db #74,#7a,#2e,#62,#69,#6e,#00,#00
.l8ff6 equ $ + 6
.l8ff5 equ $ + 5
.l8ff3 equ $ + 3
.l8ff1 equ $ + 1
.l8ff0
	db #08,#46,#00,#00,#00,#00,#05,#00
.l8fff equ $ + 7
.l8ffe equ $ + 6
.l8ffd equ $ + 5
.l8ffc equ $ + 4
.l8ffa equ $ + 2
.l8ff8
	db #69,#00,#00,#1a,#0f,#04,#00,#00
.l9007 equ $ + 7
.l9000
	db #02,#05,#0b,#0e,#14,#17,#1a,#54
	db #0e,#54,#25,#54,#3d,#97,#1b,#97
.l9012 equ $ + 2
.l9011 equ $ + 1
	db #32,#00,#03,#24,#41,#20,#72,#65
	db #6d,#61,#72,#6b,#61,#62,#6c,#79
	db #20,#61,#67,#72,#65,#73,#73,#69
	db #76,#65,#20,#61,#6e,#64,#20,#65
	db #78,#74,#72,#65,#6d,#65,#6c,#79
	db #23,#70,#6f,#69,#73,#6f,#6e,#6f
	db #75,#73,#20,#73,#70,#69,#64,#65
	db #72,#20,#69,#73,#20,#64,#69,#73
	db #63,#6f,#76,#65,#72,#65,#64,#20
	db #69,#6e,#20,#61,#22,#72,#65,#6d
	db #6f,#74,#65,#20,#53,#6f,#75,#74
	db #68,#20,#41,#6d,#65,#72,#69,#63
	db #61,#6e,#20,#72,#61,#69,#6e,#20
.l907f equ $ + 7
	db #66,#6f,#72,#65,#73,#74,#31,#03
	db #25,#55,#6e,#65,#20,#61,#72,#61
	db #69,#67,#6e,#65,#35,#65,#20,#65
	db #78,#74,#72,#65,#37,#6d,#65,#6d
	db #65,#6e,#74,#20,#61,#67,#72,#65
	db #73,#73,#69,#76,#65,#20,#65,#74
	db #21,#76,#65,#6e,#69,#6d,#65,#75
	db #73,#65,#20,#65,#73,#74,#20,#64
	db #65,#35,#63,#6f,#75,#76,#65,#72
	db #74,#65,#20,#64,#61,#6e,#73,#20
	db #75,#6e,#65,#26,#6c,#6f,#69,#6e
	db #74,#61,#69,#6e,#65,#20,#66,#6f
	db #72,#65,#37,#74,#20,#76,#69,#65
	db #72,#67,#65,#20,#53,#75,#64,#20
	db #41,#6d,#65,#35,#72,#69,#63,#61
.l90f4 equ $ + 4
	db #69,#6e,#65,#31,#03,#27,#55,#6e
	db #61,#20,#61,#72,#61,#6e,#39,#61
	db #20,#6e,#6f,#74,#61,#62,#6c,#65
	db #6d,#65,#6e,#74,#65,#20,#61,#67
	db #72,#65,#73,#69,#76,#61,#20,#79
	db #20,#65,#78,#74,#72,#61,#26,#6d
	db #61,#64,#61,#6d,#65,#6e,#74,#65
	db #20,#76,#65,#6e,#65,#6e,#6f,#73
	db #61,#20,#68,#61,#20,#73,#69,#64
	db #6f,#20,#64,#65,#73,#63,#75,#62
	db #69,#65,#72,#74,#61,#22,#65,#6e
	db #20,#75,#6e,#20,#72,#65,#6d,#6f
	db #74,#6f,#20,#62,#6f,#73,#71,#75
	db #65,#20,#64,#65,#20,#73,#75,#64
	db #61,#6d,#65,#35,#72,#69,#63,#61
.l9169 equ $ + 1
	db #31,#03,#25,#55,#6e,#20,#72,#61
	db #67,#6e,#6f,#20,#67,#69,#67,#61
	db #6e,#74,#65,#20,#64,#69,#20,#75
	db #6e,#61,#20,#73,#70,#65,#63,#69
	db #65,#20,#72,#61,#72,#61,#20,#65
	db #22,#6d,#6f,#6c,#74,#6f,#20,#76
	db #65,#6c,#65,#6e,#6f,#73,#6f,#20
	db #65,#36,#20,#73,#74,#61,#74,#6f
	db #20,#73,#63,#6f,#70,#65,#72,#74
	db #6f,#20,#69,#6e,#24,#75,#6e,#61
	db #20,#6c,#6f,#6e,#74,#61,#6e,#61
	db #20,#66,#6f,#72,#65,#73,#74,#61
	db #20,#64,#65,#6c,#20,#53,#75,#64
	db #20,#41,#6d,#65,#72,#69,#63,#61
.l91d9 equ $ + 1
	db #31,#03,#25,#49,#6e,#20,#64,#65
	db #6e,#20,#73,#75,#64,#61,#6d,#65
	db #72,#69,#6b,#61,#6e,#69,#73,#63
	db #68,#65,#6e,#20,#52,#65,#67,#65
	db #6e,#77,#61,#6c,#64,#65,#72,#6e
	db #22,#77,#75,#72,#64,#65,#20,#65
	db #69,#6e,#65,#20,#61,#75,#66,#66
	db #61,#38,#6c,#6c,#69,#67,#20,#61
	db #67,#72,#65,#73,#73,#69,#76,#65
	db #20,#75,#6e,#64,#28,#61,#75,#20
	db #3a,#65,#72,#6f,#72,#64,#65,#6e
	db #74,#6c,#69,#63,#68,#20,#67,#69
	db #66,#74,#69,#67,#65,#20,#53,#70
	db #69,#6e,#6e,#65,#20,#65,#6e,#74
.l924e equ $ + 6
	db #64,#65,#63,#6b,#74,#31,#01,#20
	db #49,#64,#65,#6e,#74,#69,#66,#69
	db #7a,#69,#65,#72,#65,#20,#64,#69
	db #65,#73,#65,#73,#20,#4b,#72,#61
	db #62,#62,#65,#6c,#74,#69,#65,#72
.l9270
	db #02,#27,#49,#64,#65,#6e,#74,#69
	db #66,#69,#63,#61,#20,#61,#20,#65
	db #73,#74,#65,#20,#62,#69,#63,#68
	db #6f,#20,#79,#20,#64,#65,#6d,#75
	db #65,#73,#74,#72,#61,#20,#71,#75
	db #65,#24,#65,#72,#65,#73,#20,#75
	db #6e,#20,#62,#75,#65,#6e,#20,#54
	db #65,#35,#63,#6e,#69,#63,#6f,#20
	db #64,#65,#20,#45,#6c,#69,#6d,#69
	db #6e,#61,#63,#69,#6f,#35,#6e,#31
.l92c0
	db #02,#26,#49,#64,#65,#6e,#74,#69
	db #66,#69,#65,#7a,#20,#63,#65,#74
	db #74,#65,#20,#63,#72,#65,#35,#61
	db #74,#75,#72,#65,#20,#65,#74,#20
	db #64,#65,#35,#6d,#6f,#6e,#74,#72
	db #65,#7a,#26,#76,#6f,#73,#20,#71
	db #75,#61,#6c,#69,#74,#65,#35,#73
	db #20,#64,#20,#35,#45,#6c,#69,#6d
	db #69,#6e,#61,#74,#65,#75,#72,#20
	db #64,#20,#35,#41,#72,#61,#69,#67
.l9315 equ $ + 5
	db #6e,#65,#35,#65,#31,#02,#28,#49
	db #64,#65,#6e,#74,#69,#66,#79,#20
	db #74,#68,#69,#73,#20,#63,#72,#69
	db #74,#74,#65,#72,#20,#61,#6e,#64
	db #20,#70,#72,#6f,#76,#65,#20,#79
	db #6f,#75,#72,#73,#65,#6c,#66,#28
	db #61,#20,#77,#6f,#72,#74,#68,#6c
	db #79,#20,#41,#72,#61,#63,#68,#6e
	db #6f,#69,#64,#20,#41,#62,#61,#74
	db #65,#6d,#65,#6e,#74,#20,#54,#65
	db #63,#68,#6e,#69,#63,#69,#61,#6e
.l9368
	db #02,#20,#49,#64,#65,#6e,#74,#69
	db #66,#69,#63,#61,#20,#6c,#20,#35
	db #69,#6e,#73,#65,#74,#74,#6f,#20
	db #65,#20,#6d,#6f,#73,#74,#72,#61
	db #20,#6c,#65,#1d,#74,#75,#65,#20
	db #63,#61,#70,#61,#63,#69,#74,#61
	db #36,#20,#64,#69,#20,#73,#74,#65
	db #72,#6d,#69,#6e,#61,#74,#6f,#72
.l93aa equ $ + 2
	db #65,#31,#04,#1f,#47,#75,#74,#65
	db #20,#41,#72,#62,#65,#69,#74,#34
	db #20,#44,#65,#6c,#62,#65,#72,#74
	db #20,#4d,#63,#43,#6c,#69,#6e,#74
	db #6f,#73,#68,#25,#62,#65,#67,#72
	db #75,#38,#20,#3a,#74,#20,#44,#69
	db #63,#68,#20,#61,#6c,#73,#20,#53
	db #74,#6f,#6c,#7a,#65,#73,#20,#4d
	db #69,#74,#67,#6c,#69,#65,#64,#20
	db #64,#65,#73,#21,#53,#70,#69,#64
	db #65,#72,#20,#49,#6e,#66,#65,#73
	db #74,#61,#74,#69,#6f,#6e,#20,#43
	db #6f,#6e,#74,#72,#6f,#6c,#20,#54
	db #65,#61,#6d,#73,#31,#1c,#4c,#61
	db #20,#3a,#74,#20,#75,#6e,#73,#20
	db #64,#69,#65,#20,#52,#61,#63,#6b
	db #65,#72,#20,#62,#72,#61,#74,#65
.l9433 equ $ + 3
	db #6e,#20,#34,#04,#27,#33,#42,#75
	db #65,#6e,#20,#74,#72,#61,#62,#61
	db #6a,#6f,#34,#20,#44,#65,#6c,#62
	db #65,#72,#74,#20,#4d,#63,#43,#6c
	db #69,#6e,#74,#6f,#63,#6b,#20,#74
	db #65,#20,#64,#61,#28,#6c,#61,#20
	db #62,#69,#65,#6e,#76,#65,#6e,#69
	db #64,#61,#20,#63,#6f,#6d,#6f,#20
	db #6f,#72,#67,#75,#6c,#6c,#6f,#73
	db #6f,#20,#6d,#69,#65,#6d,#62,#72
	db #6f,#20,#64,#65,#6c,#26,#65,#71
	db #75,#69,#70,#6f,#20,#64,#65,#20
	db #63,#6f,#6e,#74,#72,#6f,#6c,#20
	db #64,#65,#20,#70,#6c,#61,#67,#61
	db #73,#20,#64,#65,#20,#61,#72,#61
	db #6e,#39,#61,#73,#31,#22,#33,#56
	db #61,#6d,#6f,#73,#20,#61,#20,#65
	db #78,#74,#65,#72,#6d,#69,#6e,#61
	db #72,#20,#61,#20,#65,#73,#6f,#73
	db #20,#62,#69,#63,#68,#6f,#73,#34
.l94d0
	db #04,#1f,#42,#6f,#6e,#20,#74,#72
	db #61,#76,#61,#69,#6c,#34,#20,#44
	db #65,#6c,#62,#65,#72,#74,#20,#4d
	db #63,#43,#6c,#69,#6e,#74,#6f,#73
	db #68,#19,#76,#6f,#75,#73,#20,#61
	db #63,#63,#75,#65,#69,#6c,#6c,#65
	db #20,#61,#75,#20,#73,#65,#69,#6e
	db #20,#64,#65,#25,#6c,#20,#35,#65
	db #35,#71,#75,#69,#70,#65,#20,#64
	db #20,#35,#65,#35,#72,#61,#64,#69
	db #63,#61,#74,#69,#6f,#6e,#20,#64
	db #65,#73,#20,#61,#72,#61,#69,#67
	db #6e,#65,#35,#65,#73,#31,#26,#41
	db #75,#20,#62,#6f,#75,#6c,#6f,#74
	db #30,#20,#65,#78,#74,#65,#72,#6d
	db #69,#6e,#6f,#6e,#73,#20,#63,#65
	db #74,#74,#65,#20,#76,#65,#72,#6d
.l955d equ $ + 5
	db #69,#6e,#65,#20,#34,#04,#26,#47
	db #6f,#6f,#64,#20,#77,#6f,#72,#6b
	db #34,#20,#44,#65,#6c,#62,#65,#72
	db #74,#20,#4d,#63,#43,#6c,#69,#6e
	db #74,#6f,#73,#68,#20,#77,#65,#6c
	db #63,#6f,#6d,#65,#73,#1c,#79,#6f
	db #75,#20,#61,#73,#20,#61,#20,#70
	db #72,#6f,#75,#64,#20,#6d,#65,#6d
	db #62,#65,#72,#20,#6f,#66,#20,#74
	db #68,#65,#20,#53,#70,#69,#64,#65
	db #72,#20,#49,#6e,#66,#65,#73,#74
	db #61,#74,#69,#6f,#6e,#20,#43,#6f
	db #6e,#74,#72,#6f,#6c,#20,#54,#65
	db #61,#6d,#31,#27,#4c,#65,#74,#20
	db #35,#73,#20,#67,#65,#74,#20,#79
	db #6f,#75,#20,#61,#6e,#64,#20,#73
	db #69,#7a,#7a,#6c,#65,#20,#74,#68
	db #65,#6d,#20,#76,#61,#72,#6d,#69
.l95ec equ $ + 4
	db #6e,#74,#73,#34,#04,#21,#42,#75
	db #6f,#6e,#20,#6c,#61,#76,#6f,#72
	db #6f,#31,#31,#31,#44,#65,#6c,#62
	db #65,#72,#74,#20,#4d,#63,#20,#43
	db #6c,#69,#6e,#74,#6f,#63,#6b,#1a
	db #74,#69,#20,#61,#63,#63,#6f,#67
	db #6c,#69,#65,#20,#6e,#65,#6c,#20
	db #73,#75,#6f,#20,#67,#72,#75,#70
	db #70,#6f,#1d,#64,#69,#20,#6b,#69
	db #6c,#6c,#65,#72,#20,#74,#72,#69
	db #73,#74,#65,#6d,#65,#6e,#74,#65
	db #20,#66,#61,#6d,#6f,#73,#69,#31
	db #10,#43,#6f,#72,#72,#61,#67,#69
	db #6f,#20,#61,#6d,#69,#63,#6f,#20
.l9659 equ $ + 1
	db #34,#03,#22,#44,#69,#65,#20,#66
	db #65,#68,#6c,#65,#72,#68,#61,#66
	db #74,#65,#20,#49,#64,#65,#6e,#74
	db #69,#66,#69,#63,#61,#74,#69,#6f
	db #6e,#20,#64,#65,#72,#23,#68,#6f
	db #63,#68,#67,#69,#66,#74,#69,#67
	db #65,#6e,#20,#53,#70,#69,#6e,#6e
	db #65,#20,#73,#63,#68,#65,#69,#6e
	db #74,#20,#44,#69,#63,#68,#20,#69
	db #6e,#28,#73,#63,#68,#77,#69,#65
	db #72,#69,#67,#6b,#65,#69,#74,#65
	db #6e,#20,#67,#65,#62,#72,#61,#63
	db #68,#74,#20,#7a,#75,#20,#68,#61
	db #62,#65,#6e,#31,#53,#63,#68,#75
.l96ca equ $ + 2
	db #73,#73,#03,#1f,#41,#6c,#20,#6e
	db #6f,#20,#68,#65,#62,#65,#72,#20
	db #69,#64,#65,#6e,#74,#69,#66,#69
	db #63,#61,#64,#6f,#20,#61,#20,#65
	db #73,#74,#61,#1f,#61,#6c,#74,#61
	db #6d,#65,#6e,#74,#65,#20,#76,#65
	db #6e,#65,#6e,#6f,#73,#61,#20,#61
	db #72,#61,#6e,#39,#61,#20,#74,#65
	db #20,#68,#61,#73,#25,#6d,#65,#74
	db #69,#64,#6f,#20,#65,#6e,#20,#70
	db #72,#6f,#62,#6c,#65,#6d,#61,#73
	db #31,#20,#33,#74,#65,#20,#68,#61
	db #20,#63,#6f,#6e,#6f,#63,#69,#64
.l9732 equ $ + 2
	db #6f,#34,#03,#25,#4e,#20,#35,#20
	db #61,#79,#61,#6e,#74,#20,#70,#61
	db #73,#20,#69,#64,#65,#6e,#74,#69
	db #66,#69,#65,#35,#20,#63,#65,#74
	db #74,#65,#20,#61,#72,#61,#69,#67
	db #6e,#65,#35,#65,#24,#65,#78,#74
	db #72,#65,#37,#6d,#65,#6d,#65,#6e
	db #74,#20,#76,#65,#6e,#69,#6d,#65
	db #75,#73,#65,#20,#76,#6f,#75,#73
	db #20,#76,#6f,#75,#73,#20,#65,#37
	db #74,#65,#73,#20,#6d,#69,#73,#20
	db #64,#61,#6e,#73,#20,#75,#6e,#20
	db #73,#61,#6c,#65,#20,#70,#65,#35
	db #74,#72,#69,#6e,#31,#20,#41,#64
.l97a5 equ $ + 5
	db #69,#65,#75,#20,#34,#03,#24,#4d
	db #69,#73,#69,#64,#65,#6e,#74,#69
	db #66,#79,#69,#6e,#67,#20,#74,#68
	db #69,#73,#20,#68,#69,#67,#68,#6c
	db #79,#20,#70,#6f,#69,#73,#6f,#6e
	db #6f,#75,#73,#24,#73,#70,#69,#64
	db #65,#72,#20,#73,#65,#65,#6d,#73
	db #20,#74,#6f,#20,#68,#61,#76,#65
	db #20,#67,#6f,#74,#74,#65,#6e,#20
	db #79,#6f,#75,#20,#69,#6e,#74,#6f
	db #22,#74,#72,#6f,#75,#62,#6c,#65
	db #31,#20,#49,#74,#20,#77,#61,#73
	db #20,#6e,#69,#63,#65,#20,#6b,#6e
	db #6f,#77,#69,#6e,#67,#20,#79,#6f
.l9813 equ $ + 3
	db #75,#20,#34,#03,#17,#54,#69,#20
	db #74,#72,#6f,#76,#69,#20,#69,#6e
	db #20,#64,#69,#66,#66,#69,#63,#6f
	db #6c,#74,#61,#36,#20,#15,#70,#65
	db #72,#63,#68,#65,#35,#20,#6e,#6f
	db #6e,#20,#68,#61,#69,#20,#73,#61
	db #70,#75,#74,#6f,#1b,#69,#64,#65
	db #6e,#74,#69,#66,#69,#63,#61,#72
	db #65,#20,#71,#75,#65,#73,#74,#6f
	db #20,#72,#61,#67,#6e,#6f,#20,#34
.l9860
	db #03,#28,#44,#69,#65,#20,#73,#75
	db #38,#64,#61,#6d,#65,#72,#69,#6b
	db #61,#6e,#69,#73,#63,#68,#65,#20
	db #53,#70,#69,#6e,#6e,#65,#20,#65
	db #6e,#74,#6b,#6f,#6d,#6d,#74,#20
	db #75,#6e,#64,#27,#70,#61,#61,#72
	db #74,#20,#73,#69,#63,#68,#20,#6d
	db #69,#74,#20,#65,#69,#6e,#68,#65
	db #69,#6d,#69,#73,#63,#68,#65,#6e
	db #20,#4b,#6f,#38,#6e,#69,#67,#69
	db #6e,#6e,#65,#6e,#21,#75,#6d,#20
	db #65,#69,#6e,#65,#20,#74,#6f,#38
	db #64,#6c,#69,#63,#68,#65,#20,#41
	db #72,#6d,#65,#65,#20,#7a,#75,#20
.l98d7 equ $ + 7
	db #7a,#65,#75,#67,#65,#6e,#31,#03
	db #28,#4c,#61,#20,#61,#72,#61,#6e
	db #39,#61,#20,#73,#75,#64,#61,#6d
	db #65,#72,#69,#63,#61,#6e,#61,#20
	db #68,#75,#79,#65,#20,#79,#20,#73
	db #65,#20,#65,#6d,#70,#61,#72,#65
	db #6a,#61,#27,#63,#6f,#6e,#20,#6c
	db #61,#20,#61,#72,#61,#6e,#39,#61
	db #73,#20,#72,#65,#69,#6e,#61,#20
	db #6c,#6f,#63,#61,#6c,#65,#73,#30
	db #63,#72,#65,#61,#6e,#64,#6f,#20
	db #61,#73,#69,#27,#75,#6e,#20,#65
	db #6a,#65,#35,#72,#63,#69,#74,#6f
	db #20,#64,#65,#20,#75,#6e,#61,#20
	db #6d,#6f,#72,#74,#61,#6c,#20,#64
	db #65,#73,#63,#65,#6e,#64,#65,#6e
.l9954 equ $ + 4
	db #63,#69,#61,#31,#03,#24,#4c,#20
	db #35,#61,#72,#61,#69,#67,#6e,#65
	db #35,#65,#20,#53,#75,#64,#20,#61
	db #6d,#65,#35,#72,#69,#63,#61,#69
	db #6e,#65,#20,#73,#20,#35,#20,#65
	db #35,#63,#68,#61,#70,#70,#65,#25
	db #65,#74,#20,#73,#20,#35,#61,#63
	db #63,#6f,#75,#70,#6c,#65,#20,#61
	db #76,#65,#63,#20,#6c,#65,#73,#20
	db #72,#65,#69,#6e,#65,#73,#20,#6c
	db #6f,#63,#61,#6c,#65,#73,#26,#65
	db #6e,#67,#65,#6e,#64,#72,#61,#6e
	db #74,#20,#61,#69,#6e,#73,#69,#20
	db #75,#6e,#65,#20,#61,#72,#6d,#65
	db #35,#65,#20,#6d,#65,#75,#72,#74
.l99cf equ $ + 7
	db #72,#69,#65,#36,#72,#65,#31,#03
	db #25,#54,#68,#65,#20,#53,#6f,#75
	db #74,#68,#20,#41,#6d,#65,#72,#69
	db #63,#61,#6e,#20,#73,#70,#69,#64
	db #65,#72,#20,#65,#73,#63,#61,#70
	db #65,#73,#20,#61,#6e,#64,#1f,#6d
	db #61,#74,#65,#73,#20,#77,#69,#74
	db #68,#20,#6c,#6f,#63,#61,#6c,#20
	db #71,#75,#65,#65,#6e,#20,#73,#70
	db #69,#64,#65,#72,#73,#30,#25,#63
	db #72,#65,#61,#74,#69,#6e,#67,#20
	db #61,#6e,#20,#61,#72,#6d,#79,#20
	db #6f,#66,#20,#64,#65,#61,#64,#6c
	db #79,#20,#6f,#66,#66,#73,#70,#72
.l9a3c equ $ + 4
	db #69,#6e,#67,#31,#03,#23,#55,#6e
	db #20,#72,#61,#67,#6e,#6f,#20,#67
	db #69,#67,#61,#6e,#74,#65,#30,#6f
	db #72,#69,#67,#69,#6e,#61,#72,#69
	db #6f,#20,#64,#65,#6c,#20,#53,#75
	db #64,#26,#41,#6d,#65,#72,#69,#63
	db #61,#30,#73,#69,#20,#61,#63,#63
	db #6f,#70,#69,#61,#20,#63,#6f,#6e
	db #20,#6c,#61,#20,#52,#65,#67,#69
	db #6e,#61,#30,#64,#61,#6e,#64,#6f
	db #28,#76,#69,#74,#61,#20,#61,#64
	db #20,#75,#6e,#65,#73,#65,#72,#63
	db #69,#74,#6f,#20,#63,#68,#65,#20
	db #73,#65,#6d,#69,#6e,#61,#20,#69
	db #6c,#20,#74,#65,#72,#72,#6f,#72
	db #65
.l9ab1
	ld a,#00
	call #bc0e
	ld a,#00
	ld ix,l8f52
.l9abc
	ld b,(ix+#00)
	ld c,b
	push af
	call #bc32
	pop af
	inc ix
	inc a
	cp #10
	jr nz,l9abc
	jp l9af0
.l9acf
	ld b,#c8
	ld hl,#00c7
	ld ix,#8000
.l9ad8
	ld de,#0000
	push bc
	push hl
	call #bc1d
	ld (ix+#00),l
	ld (ix+#01),h
	pop hl
	pop bc
	inc ix
	inc ix
	dec l
	djnz l9ad8
	ret
.l9af0
	ld bc,#0000
	call #bc38
	call l9acf
	ld a,#00
	ld (#0041),a
	ld (#0042),a
	ld (#0043),a
	ld (#0044),a
	ld hl,l8ff0
	ld b,(hl)
	ld hl,l8fd0
	ld iy,#4000
	call la209
	ld hl,l8ff0
	ld b,(hl)
	ld hl,l8f88
	ld de,#8500
	call #bc77
	ld hl,#8400
	call #bc83
	call #bc7a
	ld hl,l8ff0
	ld b,(hl)
	ld hl,l8f90
	ld de,#8500
	call #bc77
	ld hl,#1a00
	call #bc83
	call #bc7a
	ld hl,#1a00
	ld (l8ffa),hl
	ld a,#0f
	ld (l8ffc),a
	ld a,#04
	ld (l8ffd),a
	ld a,#00
	ld ix,#8000
	ld b,#10
	ld de,#1000
	call la309
	ld b,#0a
	ld hl,l8fe4
	ld de,#8500
	call #bc77
	ld l,#41
	ld h,#00
	call #bc83
	call #bc7a
	ld a,#00
	ld (#0042),a
	ld a,(#0041)
	add a
	ld e,a
	ld d,#00
	ld iy,l9007
	add iy,de
.l9b86
	ld a,(iy+#00)
	ld (l8ff8),a
	ld a,(iy+#01)
	ld (l8ff6),a
	ld ix,#8400
	ld de,#0090
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff3),hl
	push iy
	call la29f
	push af
	push bc
	ld b,#64
	call la335
	ld b,#50
	call la335
	pop bc
	pop af
.l9bb7
	call #bb24
	cp #00
	jp z,l9bb7
	pop iy
	cp #04
	jp nz,l9be9
	ld b,#10
	ld de,#1000
	call l9c19
	ld iy,l9007
	ld a,(#0041)
	cp #00
	jp nz,l9bdc
	ld a,#05
.l9bdc
	dec a
	ld (#0041),a
	add a
	ld e,a
	ld d,#00
	add iy,de
	jp l9b86
.l9be9
	cp #08
	jp nz,l9c11
	ld b,#10
	ld de,#1000
	call l9c19
	ld iy,l9007
	ld a,(#0041)
	cp #04
	jp nz,l9c04
	ld a,#ff
.l9c04
	inc a
	ld (#0041),a
	add a
	ld e,a
	ld d,#00
	add iy,de
	jp l9b86
.l9c11
	cp #10
	jp nz,l9b86
	jp l9c35
.l9c19
	push de
	ld ix,#8000
	ld a,(l8ff6)
	ld (l8ffc),a
	ld a,(l8ff8)
	ld e,a
	ld d,#00
	add ix,de
	add ix,de
	ld a,#01
	pop de
	call la309
	ret
.l9c35
	ld a,#01
	ld (l8ff5),a
	ld hl,l8ff0
	ld b,(hl)
	ld hl,l8f80
	ld iy,#4000
	call la209
	ld a,#00
	ld (l8ff5),a
	ld a,#69
	ld (l8ff8),a
	ld a,#05
	ld (l8ff6),a
	ld ix,#8400
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff3),hl
	call la29f
	ld ix,l9000
	ld b,#07
.l9c6d
	push bc
	ld b,#32
	call la335
	ld a,#0f
	ld b,(ix+#00)
	ld c,b
	call #bc32
	inc ix
	pop bc
	djnz l9c6d
	call la4b1

	call la562	; init music
	ld a,#02
	call la555	; send data to ay

	ld a,#01	; end init music
	ld hl,l8e20
	call #bcbc
	ld a,#01
	ld hl,l8e35
	call #bcbf

	ld ix,l8e47	; first theme ?
	ld (l8e03),ix
	ld a,#1d
	ld (l8ffc),a
	ld a,#08
	ld (l8ffd),a
	ld a,#00
	ld ix,#8000
	ld b,#2c
	ld de,#1000
	call la309
	ld b,#c8
	ld hl,#8000
	inc hl
.l9cc2
	res 7,(hl)
	inc hl
	inc hl
	djnz l9cc2

	ld a,#00
	ld (l8ff8),a
	ld a,#1d
	ld (l8ff6),a
	ld ix,#8400
	ld de,#0004
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff3),hl
	call la29f
	ld de,#0004
	ld c,#32
	call la4c3
	push de
	push bc
	call #bb03
	pop bc
	pop de
.l9cf6
	inc de
	inc de
	push de
	ld a,#01
	ld ix,#8000
	ld b,#2c
	push de
	ld de,#1000
	call la309
	pop de
	ld ix,#8400
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff3),hl
	call la29f

	call la513	; play music and return

	pop de
	push bc
	ld c,#0c
	call la4c3
	pop bc
	call #bb24
	cp #10
	jp z,l9d67
	call #bb09
	cp #6c
	jp z,l9d47
	cp #4c
	jp z,l9d47
	ld a,e
	cp #10
	jp nz,l9cf6
	ld de,#000a
	jp l9cf6
.l9d47
	ld b,#0a
	ld hl,l8fe4
	ld de,#8500
	call #bc77
	ld l,#41
	ld h,#00
	call #bc83
	call #bc7a
	call #bd19
	ld a,#c0
	call #bc08
	call l9acf
.l9d67
	ld a,(l8f4f)
	cp #01
	jp z,l9d74
	ld c,#32
	call la4c3
.l9d74
	call #bd19
	ld a,#c0
	call #bc08
	ld a,#b8
	ld (l8ff8),a
	ld a,#01
	ld (l8ff6),a
	ld ix,#8400
	inc ix
	inc ix
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff3),hl
	call la29f
	ld hl,l8ff0
	ld b,(hl)
	ld hl,l8fa8
	ld iy,#4000
	call la209
	ld a,#9f
	ld (l8ff8),a
	ld a,#00
	ld (l8ff6),a
	ld ix,#8400
	ld de,#0092
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff3),hl
	call la29f
	ld a,#b1
	ld (l8ff8),a
	ld ix,#8400
	ld de,#0094
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff3),hl
	call la29f
	ld a,(#0041)
	cp #04
	jp nz,l9df0
	ld ix,l9169
	jp l9e18
.l9df0
	cp #03
	jp nz,l9dfc
	ld ix,l9012
	jp l9e18
.l9dfc
	cp #02
	jp nz,l9e08
	ld ix,l907f
	jp l9e18
.l9e08
	cp #01
	jp nz,l9e14
	ld ix,l90f4
	jp l9e18
.l9e14
	ld ix,l91d9
.l9e18
	ld a,#a5
	ld (l8ff8),a
	call la34b

	ld ix,l8e70		; second theme
	ld a,#07
	ld (l8e0c),a
.l9e29
	ld a,(ix+#00)
	cp #00
	jp nz,l9e38	; end music ?

	ld ix,l8e70
	ld a,(ix+#00)
.l9e38
	ld (l8e08),a
	inc ix
	ld hl,l8e05
	push ix
	call #bcaa
	pop ix
	call la555
	call #bb24
	cp #10
	jp nz,l9e29
	ld hl,l8ff0
	ld b,(hl)
	ld hl,l8fb0
	ld iy,#4000
	call la209
	ld a,#ac
	ld (l8ff8),a
	ld a,#00
	ld (l8ff6),a
	ld ix,#8400
	ld de,#0092
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff3),hl
	call la29f
	ld a,#b1
	ld (l8ff8),a
	ld ix,#8400
	ld de,#0094
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff3),hl
	call la29f
	ld a,(#0041)
	cp #04
	jp nz,l9ea8
	ld ix,l9368
	jp l9ed0
.l9ea8
	cp #03
	jp nz,l9eb4
	ld ix,l9315
	jp l9ed0
.l9eb4
	cp #02
	jp nz,l9ec0
	ld ix,l92c0
	jp l9ed0
.l9ec0
	cp #01
	jp nz,l9ecc
	ld ix,l9270
	jp l9ed0
.l9ecc
	ld ix,l924e
.l9ed0
	ld a,#b2
	ld (l8ff8),a
	call la34b
	ld hl,l8ff0
	ld b,(hl)
	ld hl,l8f98
	ld de,#8500
	call #bc77
	ld hl,#8400
	call #bc83
	call #bc7a
	ld hl,l8ff0
	ld b,(hl)
	ld hl,l8fa0
	ld de,#8500
	call #bc77
	ld hl,#1000
	call #bc83
	call #bc7a
	ld hl,#1000
	ld (l8ffa),hl
	call la413
	ld a,#1c
	ld (l8ffc),a
	ld a,#1b
	ld (l8ffd),a
	ld a,#00
	ld ix,#8000
	ld de,#0064
	add ix,de
	ld de,#7400
	ld b,#5d
	call la309
	ld a,#14
	ld (l8ffe),a
	ld a,#32
	ld (l8ff8),a
	ld a,#1c
	ld (l8ff6),a
.l9f39
	ld ix,#8400
	ld de,(l8ffe)
	ld d,#00
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff3),hl
	call la3f0
	call la29f
	push af
	push bc
	ld b,#64
	call la335
	ld b,#64
	call la335
	pop bc
	pop af
.l9f62
	call #bb24
	cp #00
	jp z,l9f62
	cp #04
	jp nz,l9f99
	ld a,(l8ffe)
	cp #14
	jp nz,l9f7c
	ld a,#32
	ld (l8ffe),a
.l9f7c
	ld b,#5d
	ld de,#7400
	ld a,#32
	ld (l8ff8),a
	ld a,#1c
	ld (l8ff6),a
	call l9c19
	ld a,(l8ffe)
	dec a
	dec a
	ld (l8ffe),a
	jp l9f39
.l9f99
	cp #08
	jp nz,l9fc8
	ld a,(l8ffe)
	cp #30
	jp nz,l9fab
	ld a,#12
	ld (l8ffe),a
.l9fab
	ld b,#5d
	ld de,#7400
	ld a,#32
	ld (l8ff8),a
	ld a,#1c
	ld (l8ff6),a
	call l9c19
	ld a,(l8ffe)
	inc a
	inc a
	ld (l8ffe),a
	jp l9f39
.l9fc8
	cp #10
	jp nz,l9f39
	ld hl,l8ff0
	ld b,(hl)
	ld hl,l8f88
	ld de,#8500
	call #bc77
	ld hl,#8400
	call #bc83
	call #bc7a
	ld hl,l8ff0
	ld b,(hl)
	ld hl,l8f90
	ld de,#8500
	call #bc77
	ld hl,#5a90
	call #bc83
	call #bc7a
	ld hl,#5a90
	ld (l8ffa),hl
	ld a,(l8ffe)
	sub #14
	srl a
	ld iy,l8f62
	ld de,(l8fff)
	dec e
	ld d,#00
	add iy,de
	ld b,(iy+#00)
	cp b
	jp nz,la0de
	ld hl,l8ff0
	ld b,(hl)
	ld hl,l8fb8
	ld iy,#2000
	call la209
	ld a,#99
	ld (l8ff8),a
	ld a,#00
	ld (l8ff6),a
	ld ix,#8400
	ld de,#0092
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff3),hl
	call la29f
	ld a,#b1
	ld (l8ff8),a
	ld a,#00
	ld (l8ff6),a
	ld ix,#8400
	ld de,#0094
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff3),hl
	call la29f
	ld a,(#0041)
	cp #04
	jp nz,la075
	ld ix,l95ec
	jp la09d
.la075
	cp #03
	jp nz,la081
	ld ix,l955d
	jp la09d
.la081
	cp #02
	jp nz,la08d
	ld ix,l94d0
	jp la09d
.la08d
	cp #01
	jp nz,la099
	ld ix,l9433
	jp la09d
.la099
	ld ix,l93aa
.la09d
	ld a,#9e
	ld (l8ff8),a
	call la34b

	ld ix,l8f01	; third theme
	ld iy,l8f27
.la0ad
	ld a,(ix+#00)
	cp #00
	jp z,la0d3	; end music ?
	ld (l8e08),a
	inc ix
	ld a,(iy+#00)
	ld (l8e0c),a
	inc iy
	ld hl,l8e05
	push ix
	push iy
	call #bcaa
	pop iy
	pop ix
	call la555
.la0d3
	call #bb24
	cp #10
	jp nz,la0ad
	jp la16e
.la0de
	ld hl,l8ff0
	ld b,(hl)
	ld hl,l8fc0
	ld iy,#2000
	call la209
	ld a,#9f
	ld (l8ff8),a
	ld a,#00
	ld (l8ff6),a
	ld ix,#8400
	ld de,#0092
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff3),hl
	push ix
	call la29f
	pop ix
	inc ix
	inc ix
	ld a,#b1
	ld (l8ff8),a
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff3),hl
	call la29f
	ld a,(#0041)
	cp #04
	jp nz,la133
	ld ix,l9813
	jp la15b
.la133
	cp #03
	jp nz,la13f
	ld ix,l97a5
	jp la15b
.la13f
	cp #02
	jp nz,la14b
	ld ix,l9732
	jp la15b
.la14b
	cp #01
	jp nz,la157
	ld ix,l96ca
	jp la15b
.la157
	ld ix,l9659
.la15b
	ld a,#a5
	ld (l8ff8),a
	call la34b
.la163
	call #bb24
	cp #10
	jp la163
	jp la208
.la16e
	ld hl,l8ff0
	ld b,(hl)
	ld hl,l8fc8
	ld iy,#2000
	call la209
	ld a,#9f
	ld (l8ff8),a
	ld a,#00
	ld (l8ff6),a
	ld ix,#8400
	ld de,#0092
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff3),hl
	push ix
	call la29f
	pop ix
	inc ix
	inc ix
	ld a,#b1
	ld (l8ff8),a
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff3),hl
	call la29f
	ld a,(#0041)
	cp #04
	jp nz,la1c3
	ld ix,l9a3c
	jp la1eb
.la1c3
	cp #03
	jp nz,la1cf
	ld ix,l99cf
	jp la1eb
.la1cf
	cp #02
	jp nz,la1db
	ld ix,l9954
	jp la1eb
.la1db
	cp #01
	jp nz,la1e7
	ld ix,l98d7
	jp la1eb
.la1e7
	ld ix,l9860
.la1eb
	ld a,#a5
	ld (l8ff8),a
	call la34b
.la1f3
	call #bb24
	cp #10
	jp nz,la1f3
	ld b,#64
	call la335
	ld b,#64
	call la335
	call la595
.la208
	ret
.la209
	ld de,#8500
	call #bc77
	push bc
	pop hl
	push de
	push iy
	pop de
	add hl,de
	ld (l8f50),hl
	pop de
	push iy
	pop hl
	call #bc83
	call #bc7a
	ld a,(l8ff5)
	cp #01
	jp nz,la237
	push de
	push bc
	ld a,#0f
	ld b,#01
	ld c,b
	call #bc32
	pop bc
	pop de
.la237
	ld ix,#8000
.la23b
	ld l,(ix+#00)
	ld h,(ix+#01)
	push ix
	push hl
	pop ix
	ld c,#00
.la248
	ld a,(iy+#00)
	and #80
	cp #80
	jp z,la258
	call la28b
	jp la25b
.la258
	call la275
.la25b
	ld a,c
	cp #50
	jp m,la248
	pop ix
	inc ix
	inc ix
	push iy
	pop hl
	ld de,(l8f50)
	and a
	sbc hl,de
	jp m,la23b
	ret
.la275
	ld a,(iy+#00)
	and #7f
	ld b,a
	inc iy
	ld a,(iy+#00)
.la280
	ld (ix+#00),a
	inc ix
	inc c
	djnz la280
	inc iy
	ret
.la28b
	ld a,(iy+#00)
	ld b,a
	inc iy
.la291
	ld a,(iy+#00)
	ld (ix+#00),a
	inc ix
	inc iy
	inc c
	djnz la291
	ret
.la29f
	ld iy,#8000
	ld de,(l8ff8)
	sla e
	rl d
	add iy,de
	ld ix,(l8ff3)
	ld de,(l8ffa)
	add ix,de
	push ix
	pop de
	inc de
	inc de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff1),hl
	ld ix,l8ff1
.la2c9
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld bc,(l8ff6)
	add hl,bc
	ld b,(ix+#00)
.la2d7
	ld a,(de)
	ld c,a
	and a
	jp z,la2fa
	and #aa
	jp z,la2ed
	ld a,c
	and #55
	jp z,la2f5
	ld a,c
	ld (hl),a
	jp la2fa
.la2ed
	ld a,(hl)
	and #aa
	or c
	ld (hl),a
	jp la2fa
.la2f5
	ld a,(hl)
	and #55
	or c
	ld (hl),a
.la2fa
	inc hl
	inc de
	djnz la2d7
	dec (ix+#01)
	ret z
	inc iy
	inc iy
	jp la2c9
.la309
	push de
.la30a
	push bc
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld bc,(l8ffc)
	ld b,#00
	add hl,bc
	ld bc,(l8ffd)
	ld b,#00
	and a
	jp z,la32a
	ex de,hl
	ldir
	push hl
	pop de
	jp la32c
.la32a
	ldir
.la32c
	pop bc
	inc ix
	inc ix
	djnz la30a
	pop de
	ret
.la335
	push af
	push hl
	push de
.la338
	push bc
	call #bd0d
	ld a,l
	pop bc
	cp b
	jp m,la338
	ld l,#00
	call #bd10
	pop de
	pop hl
	pop af
	ret
.la34b
	ld c,(ix+#00)
.la34e
	ld a,#00
	ld (l9011),a
	inc ix
	ld b,(ix+#00)
	ld a,#28
	and a
	sub b
	ld (l8ff6),a
.la35f
	inc ix
	ld a,(ix+#00)
	cp #20
	jp z,la3cd
	cp #5a
	jp p,la397
	cp #3b
	jp p,la392
	cp #35
	jp m,la38d
	push af
	ld a,(l8ff6)
	dec a
	dec a
	ld (l8ff6),a
	ld a,(l8ff8)
	dec a
	ld (l8ff8),a
	ld (l9011),a
	pop af
	inc b
.la38d
	sub #27
	jp la399
.la392
	sub #2d
	jp la399
.la397
	sub #33
.la399
	sla a
	push bc
	push ix
	ld ix,#8400
	ld e,a
	ld d,#00
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff3),hl
	call la29f
	pop ix
	pop bc
	ld a,(l9011)
	cp #00
	jp z,la3cd
	ld a,(l8ff8)
	inc a
	ld (l8ff8),a
	ld a,#00
	ld (l9011),a
	jp la3cd
.la3cd
	push bc
	ld b,#06
	call la335
	pop bc
	ld a,(l8ff6)
	inc a
	inc a
	ld (l8ff6),a
	djnz la3ed
	ld a,(l8ff8)
	add #0a
	ld (l8ff8),a
	dec c
	ld a,c
	and a
	jp nz,la34e
	ret
.la3ed
	jp la35f
.la3f0
	push hl
	pop ix
	ld de,#1000
	add ix,de
	ld b,(ix+#00)
	ld a,#1b
	sub b
	srl a
	add #1c
	ld (l8ff6),a
	ld b,(ix+#01)
	ld a,#5d
	sub b
	srl a
	add #32
	ld (l8ff8),a
	ret
.la413
	jp la424
.la416
	call #bd0d
	ld a,l
	ld l,b
.la41b
	cp l
	jp m,la423
	sub l
	jp la41b
.la423
	ret
.la424
	ld a,#00
	ld (l8fff),a
	ld b,#0a
	call la416
	ld c,a
	ld b,#04
	call la416
	cp #03
	jp nz,la446
	ld b,a
	ld a,c
	cp #00
	ld a,b
	jp z,la446
	ld b,#03
	call la416
.la446
	push af
	ld b,#0a
	ld e,a
	ld a,#00
.la44c
	add e
	djnz la44c
	ld (l8fff),a
	pop af
	add a
	cp #00
	jp z,la47d
	push bc
	ld e,a
	ld d,#00
	ld ix,#8400
	add ix,de
	ld a,#44
	ld (l8ff8),a
	ld a,#46
	ld (l8ff6),a
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff3),hl
	call la29f
	pop bc
	jp la485
.la47d
	ld a,c
	cp #00
	jp nz,la485
	ld c,#01
.la485
	ld a,c
	ld de,(l8fff)
	push af
	add e
	ld (l8fff),a
	pop af
	add a
	ld e,a
	ld d,#00
	ld ix,#8400
	add ix,de
	ld a,#44
	ld (l8ff8),a
	ld a,#49
	ld (l8ff6),a
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff3),hl
	call la29f
	ret
.la4b1
	push de
	push hl
	push bc
	ld hl,#c000
	ld de,#4000
	ld bc,#4000
	ldir
	pop bc
	pop hl
	pop de
	ret
.la4c3
	push af
	push hl
	push bc
	push de
	push ix
	push iy
.la4cb
	call #bd0d
	ld a,l
	cp c
	jp m,la4cb
	ld l,#00
	call #bd10
	call #bd19
	ld a,(l8f4f)
	xor #01
	ld (l8f4f),a
	jr nz,la4f9
	ld a,#c0
	call #bc08
	ld b,#c8
	ld hl,#8000
	inc hl
.la4f0
	res 7,(hl)
	inc hl
	inc hl
	djnz la4f0
	jp la50a
.la4f9
	ld a,#40
	call #bc08
	ld b,#c8
	ld hl,#8000
	inc hl
.la504
	set 7,(hl)
	inc hl
	inc hl
	djnz la504
.la50a
	pop iy
	pop ix
	pop de
	pop bc
	pop hl
	pop af
	ret
.la513
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld ix,(l8e03)
	ld a,(ix+#00)
	cp #00
	jp z,la54c
	ld c,a
	push bc
	ld a,#01
	call #bcad
	and #80
	cp #80
	pop bc
	ld a,c
	jp z,la54c
	ld (l8e08),a
	ld a,(ix+#15)
	ld (l8e0c),a
	inc ix
	ld (l8e03),ix
	ld hl,l8e05
	call #bcaa
.la54c
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.la555
	ld a,#01
	call #bcad
	and #80
	cp #80
	jp z,la555
	ret
.la562
	ld a,#02
	ld hl,l8e2d
	call #bcbc
	ld a,#02
	ld hl,l8e39
	call #bcbf
	ld a,#03
	ld hl,l8e31
	call #bcbc
	ld a,#03
	ld hl,l8e40
	call #bcbf
	ld b,#14
.la584
	ld hl,l8e0e
	push bc
	call #bcaa
	ld hl,l8e17
	call #bcaa
	pop bc
	djnz la584
	ret
.la595
	ld a,#1c
	ld (l8ffc),a
	ld a,#15
	ld (l8ffd),a
	ld a,#00
	ld ix,#8000
	ld de,#0064
	add ix,de
	ld b,#13
	ld de,#1000
	call la309
	ld a,#1c
	ld (l8ff6),a
	ld a,#32
	ld (l8ff8),a
.la5bc
	ld ix,#8400
	ld de,#0096
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l8ff3),hl
	call la29f
.la5d1
	call #bb03
	call #bb06
	cp #0d
	jp z,la5e9
	cp #58
	jp z,la5e9
	ld c,#64
	call la335
	jp la5d1
.la5e9
	ld a,#01
	ld ix,#8000
	ld de,#0064
	add ix,de
	ld b,#13
	ld de,#1000
	call la309
	ld b,#0c
	ld hl,l8fd8
	ld de,#8500
	call #bc77
	ld hl,#8800
	call #bc83
	call #bc7a
	ld a,(#8800)
	cp #00
	jp z,la5bc
	jp #8800
	ret
;
.music_info
	db "Arachnophobia (1991)(Titus)()",0
	db "",0

	read "music_end.asm"
