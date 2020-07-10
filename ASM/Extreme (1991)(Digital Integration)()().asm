; Music of Extreme (1991)(Digital Integration)()()
; Ripped by Megachur the 22/03/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "EXTREME.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #4600

	read "music_header.asm"

.l4600
	jp l5025	; init
.l4603
	jp l5110	; play
.l4608 equ $ + 2
.music_end equ $ + 1
.l4607 equ $ + 1
.l4606
	db #00,#01,#00,#0f,#08,#00,#ff,#0c
	db #14,#05,#ff,#ff,#00,#00,#02,#03
	db #20,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #42,#00,#00,#00,#00,#00,#0e,#0a
	db #01,#ff,#0c,#20,#28,#ff,#ff,#00
	db #00,#00,#09,#03,#03,#03,#07,#07
	db #07,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#42,#00,#00,#00,#00
	db #00,#0e,#0a,#01,#ff,#0c,#20,#28
	db #ff,#ff,#00,#00,#00,#09,#07,#07
	db #07,#03,#03,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#42,#00
	db #00,#00,#00,#00,#0f,#0a,#00,#fe
	db #0d,#02,#02,#ff,#ff,#00,#00,#00
	db #03,#03,#07,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#42,#00,#00,#00,#00,#00,#0f
	db #08,#00,#ff,#0e,#02,#10,#ff,#ff
	db #00,#00,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#42,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#0f,#0f,#00
	db #fe,#0d,#00,#00,#ff,#ff,#00,#00
	db #03,#06,#00,#fc,#f4,#f4,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#d0,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#0f,#0a,#00,#fe,#0d
	db #02,#02,#ff,#ff,#00,#00,#00,#03
	db #00,#03,#08,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #42,#00,#00,#00,#00,#00,#0f,#0a
	db #00,#fe,#0d,#02,#02,#ff,#ff,#00
	db #00,#00,#03,#05,#09,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#42,#00,#00,#00,#00
	db #00,#0f,#0f,#00,#fe,#0c,#10,#00
	db #ff,#ff,#00,#00,#00,#01,#f4,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#42,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #08,#00,#00,#0f,#00,#00,#fb,#ff
	db #00,#00,#03,#04,#18,#0c,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#42,#00,#00,#00
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
	db #00,#00,#00,#0f,#08,#00,#ff,#0c
	db #08,#02,#ff,#ff,#00,#00,#04,#07
	db #00,#0c,#00,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #42,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0b,#03,#00,#fe
	db #09,#04,#00,#ff,#ff,#00,#00,#01
	db #04,#03,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#42,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#0f,#03,#00
	db #fe,#0c,#10,#00,#ff,#ff,#00,#00
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#42,#00,#00,#00,#00
.l4933 equ $ + 6
.l492d
	dw l49a7,l4a50,l4ac2,l4b56
	dw l4b59,l4b7c,l4b9f,l4ba4
	dw l4baf,l4bba,l4bc5,l4bce
	dw l4bd5,l4bde,l4be5,l4bee
	dw l4c11,l4c16,l4c23,l4c32
	dw l4c55,l4c62,l4c73,l4c7c
	dw l4c8d,l4c96,l4c9b,l4cb7
	dw l4cba,l4cbf,l4cec,l4cf1
	dw l4cf6,l4d03,l4d1c,l4d1f
	dw l4d46,l4d69,l4d8c,l4da0
	dw l4da3,l4dca,l4dd7,l4de8
	dw l4df5,l4e0a,l4e15,l4e58
	dw l4e61,l4e70,l4e75,l4e78
	dw l4e7f,l4e86,l4e8e,l4e95
	dw l4ea2,l4eac,l4eb9,l4ec2
	dw l4ecc
.l49a7
	db #fc,#00,#fb,#18,#f7,#83,#21,#01
	db #f7,#00,#22,#01,#21,#01,#22,#01
	db #21,#01,#22,#01,#21,#01,#22,#01
	db #fa,#fb,#21,#01,#22,#01,#21,#01
	db #22,#01,#fa,#05,#21,#01,#fa,#fb
	db #22,#01,#fa,#05,#21,#01,#fa,#fb
	db #22,#01,#fa,#05,#21,#01,#fa,#fb
	db #22,#01,#fa,#05,#21,#01,#fa,#fb
	db #22,#01,#fa,#05,#21,#01,#22,#01
	db #21,#01,#22,#01,#fa,#fd,#21,#01
	db #22,#01,#21,#01,#22,#01,#fa,#ff
	db #21,#01,#22,#01,#21,#01,#22,#01
	db #fa,#fe,#21,#01,#22,#01,#fa,#06
	db #21,#01,#fa,#fb,#22,#01,#fa,#05
	db #21,#01,#fa,#fb,#22,#01,#fa,#05
	db #21,#01,#fa,#fb,#22,#01,#fa,#05
	db #21,#01,#fa,#fb,#22,#01,#fa,#05
	db #21,#01,#fa,#fd,#22,#01,#fa,#05
	db #21,#01,#fa,#f9,#22,#01,#fa,#05
	db #21,#01,#fa,#fd,#22,#01,#fa,#05
	db #f7,#84,#21,#01,#fa,#fe,#f7,#00
.l4a50 equ $ + 1
	db #fd,#24,#01,#00,#0b,#f7,#0a,#25
	db #01,#26,#01,#fa,#f4,#27,#01,#fa
	db #0c,#28,#01,#29,#01,#2a,#01,#29
	db #01,#fa,#f4,#2b,#01,#fa,#0c,#f7
	db #00,#2f,#01,#00,#02,#f7,#16,#39
	db #01,#f7,#00,#2f,#01,#00,#03,#fa
	db #fc,#1c,#01,#fa,#04,#00,#01,#fa
	db #fe,#1c,#01,#fa,#02,#00,#01,#fa
	db #fa,#f7,#15,#1d,#01,#0e,#01,#fa
	db #06,#f7,#0a,#2c,#01,#2d,#01,#2e
	db #01,#fa,#f4,#f7,#16,#39,#01,#fa
	db #0c,#f7,#0a,#2c,#01,#2d,#01,#2e
	db #01,#f7,#00,#1e,#01,#1f,#01,#fa
	db #02,#1e,#01,#fa,#fe,#1f,#01,#24
.l4ac2 equ $ + 3
	db #02,#00,#d1,#20,#01,#fa,#f9,#f7
	db #fb,#20,#02,#20,#01,#fa,#07,#f7
	db #00,#20,#01,#f7,#fb,#20,#02,#20
	db #01,#fa,#fb,#f7,#00,#20,#03,#20
	db #01,#fa,#05,#f7,#fb,#20,#01,#fa
	db #fb,#20,#01,#fa,#05,#20,#01,#fa
	db #fb,#20,#01,#fa,#05,#20,#01,#fa
	db #fb,#20,#01,#fa,#05,#20,#01,#fa
	db #fb,#20,#01,#fa,#05,#f7,#00,#1a
	db #01,#1a,#03,#fa,#fd,#1a,#04,#fa
	db #ff,#1a,#04,#fa,#fe,#1a,#01,#fa
	db #05,#1a,#01,#fa,#01,#1a,#01,#fa
	db #fb,#1a,#01,#fa,#05,#1a,#01,#fa
	db #fb,#1a,#01,#fa,#05,#1a,#01,#fa
	db #fb,#1a,#01,#fa,#05,#1a,#01,#fa
	db #fb,#1a,#01,#fa,#05,#1a,#01,#fa
	db #fd,#1a,#01,#fa,#05,#1a,#01,#fa
	db #fe,#1e,#01,#1f,#01,#fa,#02,#1e
.l4b56 equ $ + 7
	db #01,#fa,#fe,#1f,#02,#00,#ce,#60
.l4b59 equ $ + 2
	db #20,#fe,#61,#13,#49,#02,#4c,#02
	db #53,#02,#4c,#02,#53,#02,#53,#02
	db #4c,#02,#53,#02,#4b,#02,#4c,#02
	db #53,#02,#4c,#02,#53,#02,#53,#02
.l4b7c equ $ + 5
	db #4c,#02,#53,#02,#fe,#61,#13,#47
	db #02,#4a,#02,#51,#02,#4a,#02,#51
	db #02,#51,#02,#4a,#02,#51,#02,#49
	db #02,#4a,#02,#51,#02,#4a,#02,#51
	db #02,#51,#02,#4a,#02,#51,#02,#fe
.l4ba4 equ $ + 5
.l4b9f
	db #61,#01,#49,#20,#fe,#61,#00,#49
	db #03,#4b,#03,#4c,#16,#50,#04,#fe
.l4baf
	db #61,#00,#60,#08,#55,#0c,#58,#08
.l4bba equ $ + 3
	db #5a,#04,#fe,#61,#00,#56,#14,#55
.l4bc5 equ $ + 6
	db #04,#53,#04,#51,#04,#fe,#61,#00
.l4bce equ $ + 7
	db #4e,#14,#4c,#08,#4e,#04,#fe,#61
.l4bd5 equ $ + 6
	db #00,#44,#10,#3d,#10,#fe,#61,#00
.l4bde equ $ + 7
	db #60,#14,#47,#08,#44,#04,#fe,#61
.l4be5 equ $ + 6
	db #00,#42,#0c,#40,#14,#fe,#61,#00
.l4bee equ $ + 7
	db #3e,#0c,#3d,#0c,#39,#08,#fe,#61
	db #13,#4c,#02,#4a,#02,#51,#02,#4a
	db #02,#51,#02,#51,#02,#4a,#02,#51
	db #02,#4e,#02,#4a,#02,#51,#02,#4a
	db #02,#51,#02,#51,#02,#4a,#02,#51
.l4c16 equ $ + 7
.l4c11 equ $ + 2
	db #02,#fe,#61,#00,#3b,#20,#fe,#61
	db #00,#44,#06,#42,#06,#40,#08,#3d
.l4c23 equ $ + 4
	db #08,#3b,#04,#fe,#61,#04,#53,#10
	db #61,#00,#fa,#00,#05,#20,#10,#fa
.l4c32 equ $ + 3
	db #00,#00,#fe,#61,#13,#47,#02,#4b
	db #02,#53,#02,#4b,#02,#53,#02,#53
	db #02,#4b,#02,#53,#02,#47,#02,#4b
	db #02,#53,#02,#4b,#02,#53,#02,#53
.l4c55 equ $ + 6
	db #02,#4b,#02,#53,#02,#fe,#61,#00
	db #25,#04,#25,#02,#31,#04,#25,#02
.l4c62 equ $ + 3
	db #2f,#14,#fe,#61,#00,#60,#14,#31
	db #02,#2f,#02,#2c,#02,#28,#02,#2a
.l4c73 equ $ + 4
	db #02,#2c,#02,#fe,#61,#00,#60,#1c
.l4c7c equ $ + 5
	db #2f,#02,#31,#02,#fe,#61,#00,#60
	db #04,#49,#02,#47,#02,#49,#04,#4c
.l4c8d equ $ + 6
	db #08,#50,#08,#52,#04,#fe,#61,#00
.l4c96 equ $ + 7
	db #53,#10,#52,#0c,#50,#04,#fe,#61
.l4c9b equ $ + 4
	db #00,#4e,#20,#fe,#61,#08,#49,#0b
	db #61,#00,#62,#60,#01,#61,#08,#4b
	db #08,#61,#06,#25,#02,#25,#02,#25
	db #02,#25,#02,#25,#02,#25,#02,#fe
.l4cba equ $ + 3
.l4cb7
	db #60,#20,#fe,#61,#00,#60,#20,#fe
.l4cbf
	db #61,#0c,#25,#04,#61,#0a,#49,#02
	db #fd,#02,#61,#06,#25,#02,#61,#0c
	db #25,#02,#61,#0a,#49,#02,#fd,#02
	db #61,#0c,#25,#04,#61,#0a,#49,#02
	db #fd,#02,#61,#06,#25,#04,#61,#0a
.l4cec equ $ + 5
	db #49,#02,#fd,#02,#fe,#61,#00,#60
.l4cf6 equ $ + 7
.l4cf1 equ $ + 2
	db #20,#fe,#61,#15,#49,#20,#fe,#61
	db #00,#44,#06,#42,#06,#40,#08,#3d
.l4d03 equ $ + 4
	db #08,#3b,#04,#fe,#61,#00,#60,#04
	db #61,#03,#4e,#04,#4e,#06,#4e,#02
	db #61,#09,#4c,#04,#61,#03,#4e,#08
.l4d1c equ $ + 5
	db #61,#09,#47,#04,#fe,#60,#20,#fe
.l4d1f
	db #61,#0c,#25,#04,#61,#08,#3d,#04
	db #61,#06,#25,#02,#61,#08,#3d,#02
	db #3d,#02,#3d,#02,#3d,#02,#61,#0c
	db #25,#04,#61,#08,#3d,#02,#61,#06
.l4d46 equ $ + 7
	db #25,#04,#61,#08,#3d,#04,#fe,#61
	db #10,#25,#02,#25,#02,#25,#02,#25
	db #02,#31,#02,#25,#02,#2c,#02,#2f
	db #02,#31,#02,#25,#02,#2a,#02,#25
	db #02,#34,#02,#25,#02,#33,#02,#25
.l4d69 equ $ + 2
	db #02,#fe,#61,#10,#25,#02,#25,#02
	db #31,#02,#31,#02,#25,#02,#25,#02
	db #31,#02,#2f,#02,#37,#02,#25,#02
	db #36,#02,#25,#02,#34,#02,#25,#02
.l4d8c equ $ + 5
	db #31,#02,#25,#02,#fe,#61,#00,#62
	db #60,#10,#61,#03,#3a,#02,#3a,#04
	db #3a,#02,#3a,#04,#3a,#02,#3a,#02
.l4da3 equ $ + 4
.l4da0 equ $ + 1
	db #fe,#60,#20,#fe,#61,#00,#60,#02
	db #47,#02,#49,#02,#44,#02,#49,#02
	db #47,#02,#49,#01,#47,#01,#44,#02
	db #49,#01,#47,#01,#44,#02,#49,#01
	db #47,#01,#44,#02,#47,#02,#49,#04
.l4dca equ $ + 3
	db #4b,#02,#fe,#61,#00,#4c,#06,#4b
	db #06,#49,#0c,#4c,#04,#4e,#04,#fe
.l4dd7
	db #61,#00,#44,#08,#44,#04,#40,#02
	db #3f,#04,#3d,#06,#49,#04,#47,#04
.l4de8 equ $ + 1
	db #fe,#61,#00,#4e,#08,#4c,#06,#4e
.l4df5 equ $ + 6
	db #06,#50,#08,#53,#04,#fe,#61,#00
	db #55,#04,#53,#02,#53,#06,#50,#02
	db #53,#02,#55,#04,#53,#02,#53,#06
.l4e0a equ $ + 3
	db #4c,#04,#fe,#61,#00,#4e,#08,#4c
.l4e15 equ $ + 6
	db #04,#49,#02,#4c,#12,#fe,#61,#00
	db #4e,#01,#4c,#01,#49,#01,#47,#01
	db #4c,#01,#4b,#01,#47,#01,#44,#01
	db #4b,#01,#47,#01,#44,#01,#40,#01
	db #47,#01,#44,#01,#40,#01,#3d,#01
	db #44,#01,#40,#01,#3d,#01,#3b,#01
	db #40,#01,#3d,#01,#3b,#01,#38,#01
	db #3d,#01,#3b,#01,#38,#01,#34,#01
	db #3b,#01,#38,#01,#34,#01,#31,#01
.l4e58 equ $ + 1
	db #fe,#61,#00,#49,#18,#4b,#04,#4c
.l4e61 equ $ + 2
	db #04,#fe,#61,#00,#4e,#06,#4c,#06
	db #49,#04,#47,#06,#49,#06,#45,#04
.l4e75 equ $ + 6
.l4e70 equ $ + 1
	db #fe,#61,#00,#44,#20,#fe,#60,#20
.l4e78 equ $ + 1
	db #fe,#61,#00,#2a,#0c,#29,#14,#fe
.l4e86 equ $ + 7
.l4e7f
	db #61,#00,#27,#0c,#2c,#14,#fe,#61
.l4e8e equ $ + 7
	db #00,#31,#1f,#62,#60,#01,#fe,#61
.l4e95 equ $ + 6
	db #08,#46,#0c,#48,#14,#fe,#61,#09
	db #49,#0c,#61,#08,#4d,#0c,#61,#09
.l4ea2 equ $ + 3
	db #4b,#08,#fe,#61,#08,#4d,#1f,#61
.l4eac equ $ + 5
	db #00,#62,#60,#01,#fe,#61,#13,#4e
	db #04,#52,#04,#55,#04,#57,#0c,#55
.l4eb9 equ $ + 2
	db #08,#fe,#61,#13,#57,#0c,#59,#0c
.l4ec2 equ $ + 3
	db #57,#08,#fe,#61,#13,#55,#14,#61
.l4ecc equ $ + 5
	db #00,#62,#60,#0c,#fe,#61,#00,#60
	db #04,#49,#04,#4c,#02,#4e,#04,#4f
	db #06,#4e,#04,#4c,#02,#4e,#06,#fe
.l4ee1 equ $ + 2
.l4ee0 equ $ + 1
.l4edf
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4eee equ $ + 7
.l4eed equ $ + 6
.l4eec equ $ + 5
	db #30,#30,#30,#30,#00,#0f,#00,#00
.l4ef0 equ $ + 1
.l4eef
	db #00,#00,#00
.l4ef2
	ld a,(l4eee)
	and a
	ld b,a
	ret z
	ld a,(l4ef0)
	cp #80
	jp z,l4f1b
	ld a,(l4eef)
	dec a
	ld (l4eef),a
	ret nz
	ld a,(l4ef0)
	ld (l4eef),a
	ld a,(l4eec)
	add b
	bit 4,a
	jp nz,l4f2a
	ld (l4eec),a
	ret
.l4f1b
	ld a,b
	cp #01
	ld a,#0f
	jp z,l4f24
	xor a
.l4f24
	ld (l4eec),a
	jp l4f2a
.l4f2a
	xor a
	ld (l4eee),a
	ld a,(l4eed)
	and a
	jp nz,l50dc
	ret
	ld a,#00
	ld (l4eec),a
	ld a,#01
.l4f3d
	ld (l4eee),a
	inc hl
	ld a,(hl)
	ld (l4ef0),a
	ld (l4eef),a
	inc hl
	ret
	ld a,#0f
	ld (l4eec),a
	ld a,#ff
	jp l4f3d
.l4f54
	ld a,h
	ld c,#00
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld a,h
	cp #07
	jp nz,l4f71
	res 7,l
	res 6,l
.l4f71
	ld a,l
	ld b,#f4
	out (c),a
	ld b,#f6
	ld a,#80
	out (c),a
	xor a
	ld b,#f6
	out (c),a
	ret
.l4f89 equ $ + 7
.l4f88 equ $ + 6
.l4f83 equ $ + 1
.l4f82
	db #00,#01,#00,#00,#00,#00,#00,#f8
.l4f8f equ $ + 5
.l4f8d equ $ + 3
.l4f8c equ $ + 2
.l4f8b equ $ + 1
.l4f8a
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
	db #0c,#05,#00,#08,#01,#ff,#00,#00
	db #00,#01,#08,#00,#00,#04,#00,#00
	db #00,#00,#00,#f7,#14,#0a,#01,#00
	db #00,#08,#04,#00,#00,#01,#00,#00
	db #00,#0a,#00,#02,#00,#fe,#00,#00
.l4fc0 equ $ + 6
.l4fbe equ $ + 4
.l4fba
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0f,#01,#01,#02,#01,#ff,#00
	db #00,#02,#03,#09,#00,#00,#01,#00
	db #00,#00,#00,#00,#ef,#ff,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4ff1 equ $ + 7
.l4fef equ $ + 5
.l4feb equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#0a,#01,#02,#02,#ff
	db #00,#00,#04,#05,#0a,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#df,#ff
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l501c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
;
.init_music
.l5025
;
	ld a,#0f
	ld (l4eec),a
	xor a
	ld (l4eee),a
	ld (l4eed),a
	call l50e4
	ld a,(l4ee0)
	cp #ff
	jp nz,l5040
	inc a
	ld (l4ee0),a
.l5040
	ld a,#01
	ld (l4f8f),a
	ld (l4fc0),a
	ld (l4ff1),a
	xor a
	ld (l4edf),a
	push ix
	ld ix,l4f8d
	ld a,(l4ee0)
	add a
	ld b,a
	add a
	add b
	ld l,a
	ld h,#00
	ld de,l492d
	add hl,de
	ld (l5071),hl
	inc hl
	inc hl
	ld (l507b),hl
	inc hl
	inc hl
	ld (l5085),hl
.l5071 equ $ + 1
	ld hl,(#0000)
	call l50aa
	ld ix,l4fbe
.l507b equ $ + 1
	ld hl,(#0000)
	call l50aa
	ld ix,l4fef
.l5085 equ $ + 1
	ld hl,(#0000)
	call l50aa
	ld a,#01
	ld (l4607),a
	ld h,#07
	ld l,#f8
	call l4f54
	ld a,(l4ee0)
	cp #01
	pop ix
	ret
.l509e	; test player
	halt
	call l5110
	ld a,(l4607)
	and a
	jp nz,l509e
	ret
.l50aa
	ld (ix+#20),l
	ld (ix+#23),l
	ld (ix+#00),l
	ld (ix+#21),h
	ld (ix+#24),h
	ld (ix+#01),h
	call l563c
	ld (ix+#02),#01
	ld (ix+#0c),#00
	ld (ix+#05),#00
	ld (ix+#04),#00
	ld (ix+#17),#00
	ld (ix+#2b),#00
	ld (ix+#2f),#00
	ret
.l50dc
	call l50e4
	xor a
	ld (l4607),a
	ret
.l50e4
	ld h,#07
	ld l,#ff
	call l4f54
	ld hl,l4f82
	ld de,l4f83
	ld bc,#000a
	ld (hl),#00
	ldir
	ld a,#ff
	ld (l4f89),a
.l50fd
	ld b,#0b
	ld h,#00
	ld de,l4f82
.l5104
	ld a,(de)
	ld l,a
	push bc
	call l4f54
	pop bc
	inc h
	inc de
	djnz l5104
	ret
;
.play_music
.l5110
;
	ld a,(l4606)
	and a
	jp z,l5148
	ld b,a
	xor a
	ld (l4606),a
	ld a,b
	cp #ff
	jp z,l50dc
	cp #fe
	jp nz,l5141
	ld b,#0a
	ld a,#01
	ld (l4eed),a
	call l5134
	jp l5148
.l5134
	ld a,#ff
	ld (l4eee),a
	ld a,b
	ld (l4ef0),a
	ld (l4eef),a
	ret
.l5141
	dec a
	ld (l4ee0),a
	jp l5025
.l5148
	call l4ef2
	ld a,(l4607)
	and a
	jr z,l51aa
	push ix
	ld ix,l4f8d
	bit 7,(ix+#0c)
	call z,l51ab
	ld ix,l4fbe
	bit 7,(ix+#0c)
	call z,l51ab
	ld ix,l4fef
	bit 7,(ix+#0c)
	call z,l51ab
	ld a,(l4eec)
	cpl
	and #0f
	ld b,a
	ld a,(l4edf)
	and a
	ld a,#10
	jp nz,l518c
	ld a,(l4f8a)
	sub b
	jp nc,l518c
	xor a
.l518c
	ld (l4f8a),a
	ld a,(l4f8b)
	sub b
	jp nc,l5197
	xor a
.l5197
	ld (l4f8b),a
	ld a,(l4f8c)
	sub b
	jp nc,l51a2
	xor a
.l51a2
	ld (l4f8c),a
	call l50fd
	pop ix
.l51aa
	ret
.l51ab
	ld a,(ix+#02)
	dec (ix+#02)
	jp z,l5352
.l51b4
	ld a,(ix+#0c)
	and #03
	jp z,l5274
	cp #01
	jp z,l51ce
	cp #02
	jp z,l520e
	cp #03
	jp z,l5258
	jp l52a5
.l51ce
	ld a,(ix+#0b)
	and a
	jr z,l51da
	dec (ix+#0b)
	jp l52a5
.l51da
	ld a,(ix+#04)
	ld b,(ix+#08)
	add b
	ld (ix+#04),a
	ld b,(ix+#05)
	cp b
	jr z,l51fb
	jr nc,l51f5
	ld a,(ix+#07)
	ld (ix+#0b),a
	jp l52a5
.l51f5
	ld a,(ix+#05)
	ld (ix+#04),a
.l51fb
	ld a,(ix+#0c)
	and #fc
	or #02
	ld (ix+#0c),a
	ld a,(ix+#09)
	ld (ix+#25),a
	jp l52a5
.l520e
	ld a,(ix+#25)
	and a
	jr z,l521a
	dec (ix+#25)
	jp l52a5
.l521a
	ld a,(ix+#04)
	ld b,(ix+#0a)
	add b
	ld (ix+#04),a
	bit 7,a
	jp nz,l5239
	ld b,(ix+#26)
	cp b
	jr z,l5246
	jr c,l5240
	ld a,(ix+#09)
	ld (ix+#25),a
	jr l52a5
.l5239
	ld (ix+#04),#00
	jp l5246
.l5240
	ld a,(ix+#26)
	ld (ix+#04),a
.l5246
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	ld a,(ix+#06)
	ld (ix+#27),a
	jr l52a5
.l5258
	ld a,(ix+#27)
	and a
	jr z,l5263
	dec (ix+#27)
	jr l52a5
.l5263
	ld a,(ix+#0c)
	and #fc
	ld (ix+#0c),a
	ld a,(ix+#2a)
	ld (ix+#29),a
	jp l52a5
.l5274
	ld a,(ix+#29)
	and a
	jr z,l527f
	dec (ix+#29)
	jr l52a5
.l527f
	ld a,(ix+#04)
	ld b,(ix+#28)
	add b
	ld (ix+#04),a
	bit 7,a
	jr nz,l5295
	ld a,(ix+#2a)
	ld (ix+#29),a
	jr l52a5
.l5295
	ld (ix+#04),#00
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	jr l52a5
.l52a5
	ld a,(ix+#04)
	ld hl,l4f82
	ld d,#00
	ld e,(ix+#0f)
	add hl,de
	ld (hl),a
	ld h,(ix+#14)
	ld l,(ix+#13)
	ld d,#00
	ld e,(ix+#10)
	add hl,de
	ld a,(ix+#03)
	push af
	ld a,(hl)
	add (ix+#03)
	ld (ix+#03),a
	call l53ef
	pop af
	ld (ix+#03),a
	inc (ix+#10)
	ld a,(ix+#12)
	xor (ix+#10)
	jr nz,l52e1
	ld a,(ix+#11)
	ld (ix+#10),a
.l52e1
	ld a,(ix+#1a)
	cp #ff
	jr z,l5322
	and a
	jr z,l52f0
	dec (ix+#1a)
	jr nz,l5322
.l52f0
	dec (ix+#1f)
	jr nz,l5303
	ld a,(ix+#1e)
	ld (ix+#1f),a
	ld a,(ix+#2e)
	xor #01
	ld (ix+#2e),a
.l5303
	ld b,#00
	ld c,(ix+#1b)
	ld h,(ix+#1d)
	ld l,(ix+#1c)
	bit 0,(ix+#2e)
	jr z,l5317
	add hl,bc
	jr l5319
.l5317
	sbc hl,bc
.l5319
	ld (ix+#1d),h
	ld (ix+#1c),l
	call l533d
.l5322
	ld a,(ix+#2b)
	call l5330
	and a
	call nz,l533d
	ld a,(ix+#02)
	ret
.l5330
	ld l,a
	ld h,#00
	bit 7,a
	ret z
	ld d,h
	ld e,l
	sbc hl,de
	sbc hl,de
	ret
.l533d
	ld b,h
	ld c,l
	ld hl,l4f82
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	add hl,bc
	ex de,hl
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.l5352
	ld l,(ix+#00)
	ld h,(ix+#01)
.l5358
	ld a,(hl)
	cp #60
	jp z,l53ed
	cp #61
	jp z,l54ee
	cp #62
	jp z,l54c8
	cp #64
	jp z,l5475
	cp #65
	jp z,l54ba
	cp #fa
	jp z,l548d
	cp #fc
	jp z,l545c
	cp #fd
	jp z,l543e
	cp #fe
	jp z,l54d0
	cp #ff
	jp z,l54b2
	ld b,a
	ld a,(ix+#30)
	ld (ix+#05),a
.l5392
	ld a,(ix+#0c)
	and #fc
	or #01
	ld (ix+#0c),a
	ld (ix+#10),#00
	ld (ix+#04),#00
	ld a,b
	sub (ix+#2d)
	ld (ix+#03),a
	ld a,(ix+#19)
	ld (ix+#1a),a
	ld a,(ix+#1e)
	srl a
	ld (ix+#1f),a
	ld (ix+#1d),#00
	ld (ix+#1c),#00
.l53c1
	inc hl
	ld a,(hl)
	dec a
	push hl
	ld h,#00
	ld l,a
	ld de,(l4ee1)
	add hl,de
	ld a,(hl)
	pop hl
	inc hl
	ld b,(ix+#2c)
	add b
	ld (ix+#2c),#00
	ld (ix+#02),a
	ld a,(ix+#07)
	ld (ix+#0b),a
	ld (ix+#00),l
	ld (ix+#01),h
	call l53ef
	jp l51b4
.l53ed
	jr l53c1
.l53ef
	ld a,(ix+#17)
	and a
	call nz,l5433
	ld a,(ix+#03)
	inc a
	inc a
	add a
	ld d,#00
	ld e,a
	ld hl,l56a5
	add hl,de
	push hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l4f82
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	pop hl
	ld a,(l4edf)
	and a
	ret z
	ld a,(ix+#0f)
	cp #08
	ret nz
	ld de,#00c0
	add hl,de
	ex de,hl
	ld h,#0b
	ld a,(de)
	ld l,a
	call l4f54
	inc de
	inc h
	ld a,(de)
	ld l,a
	call l4f54
	ret
.l5433
	ld a,(ix+#03)
	neg
	and #1f
	ld (l4f88),a
	ret
.l543e
	ld a,(ix+#05)
	and a
	jp z,l5452
	ld a,(ix+#26)
	and a
	jp z,l5452
	dec (ix+#05)
	dec (ix+#26)
.l5452
	ld a,(ix+#03)
	add (ix+#2d)
	ld b,a
	jp l5392
.l545c
	ld a,(ix+#05)
	cp #0f
	jp z,l5452
	ld a,(ix+#26)
	cp #0f
	jp z,l5452
	inc (ix+#05)
	inc (ix+#26)
	jp l5452
.l5475
	inc hl
	ld a,(hl)
	inc hl
	ld (l4f88),a
	jp l54e5
.l547e
	inc hl
	ld a,(hl)
	inc hl
	ld b,a
	ld a,#01
	ld (l4eed),a
	call l5134
	jp l5642
.l548d
	inc hl
	ld (ix+#2e),#01
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	bit 7,a
	jp z,l54a3
	neg
	ld (ix+#2e),#00
.l54a3
	ld (ix+#1b),a
	ld (ix+#1e),#ff
	ld (ix+#1f),#ff
	inc hl
	jp l54e5
.l54b2
	inc hl
	ld (ix+#04),#00
	jp l54e5
.l54ba
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld h,#0d
	ld l,a
	call l4f54
	pop hl
	jp l54e5
.l54c8
	ld (ix+#04),#00
	inc hl
	jp l54e5
.l54d0
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jr nz,l54df
	jp l562e
	jp l5358
.l54df
	ld l,(ix+#15)
	ld h,(ix+#16)
.l54e5
	ld (ix+#01),h
	ld (ix+#00),l
	jp l5358
.l54ee
	inc hl
	ld a,(hl)
	bit 7,a
	jp nz,l54f8
	add (ix+#2f)
.l54f8
	and #7f
	inc hl
	push hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld de,l4608
	ld b,a
	add a
	ld h,#00
	ld l,a
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,de
	ld d,#00
	add b
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ld (ix+#30),a
	inc hl
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld a,(hl)
	ld (ix+#2a),a
	inc hl
	ld a,(hl)
	ld (ix+#28),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	inc hl
	ld a,(hl)
	ld (ix+#11),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld (ix+#14),h
	ld (ix+#13),l
	ld (ix+#10),#00
	ld de,#0010
	add hl,de
	ld a,(hl)
	ld (ix+#17),#00
	and a
	jp z,l55a8
	and #12
	xor #12
	ld b,a
	ld c,#ed
	ld a,(ix+#0f)
	cp #08
	jp z,l558f
	cp #09
	jp z,l5593
	sla b
	rlc c
	jp l5593
.l558f
	srl b
	sra c
.l5593
	ld a,(l4f89)
	and c
	or #c0
	or b
	ld (l4f89),a
	ld a,(hl)
	bit 7,a
	jp z,l55a8
	and #38
	ld (ix+#17),a
.l55a8
	inc hl
	ld a,(ix+#0f)
	cp #08
	jp nz,l55c4
	ld a,(hl)
	ld (l4edf),a
	and a
	jp z,l55c4
	inc hl
	inc hl
	ld a,(hl)
	push hl
	ld h,#0d
	ld l,a
	call l4f54
	pop hl
.l55c4
	pop hl
	jp l5358
.l55c8
	inc hl
	ld a,(hl)
	inc hl
	push hl
	add a
	add a
	add a
	ld h,#00
	ld l,a
	ld de,l57f5
	add hl,de
	ld (l4ee1),hl
	pop hl
	jp l5642
.l55dd
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2f),a
	jp l5642
.l55e6
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2c),a
	jp l5642
.l55ef
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2b),a
	jp l5642
.l55f8
	inc hl
	ld a,(hl)
	sub #0c
	inc hl
	ld (l4fba),a
	ld (l4feb),a
	ld (l501c),a
	jp l5642
.l5609
	inc hl
	ld b,(hl)
	inc hl
	ld a,(ix+#2d)
	add b
	ld (ix+#2d),a
	jp l5642
	ld (ix+#0c),#ff
	ld (ix+#03),#00
	ld (ix+#04),#00
	inc hl
	ld a,(hl)
	and a
	jp z,l51b4
	call l50dc
	jp l51b4
.l562e
	call l563c
	jp l5352
.l5634
	pop bc
	jp l50dc
.l5638
	pop bc
	jp l5025
.l563c
	ld l,(ix+#20)
	ld h,(ix+#21)
.l5642
	ld a,(hl)
	cp #f7
	jp z,l55dd
	cp #f8
	jp z,l55e6
	cp #f9
	jp z,l55ef
	cp #f6
	jp z,l547e
	cp #fa
	jp z,l5609
	cp #fb
	jp z,l55f8
	cp #fc
	jp z,l55c8
	cp #fd
	jp z,l5638
	cp #fe
	jr z,l5699
	cp #ff
	jr z,l5634
	push hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l4933
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#00),e
	ld (ix+#01),d
	ld (ix+#15),e
	ld (ix+#16),d
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#22),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ret
.l5699
	ld l,(ix+#23)
	ld h,(ix+#24)
	jr l5642
.l56a5 equ $ + 4
	db #00,#00,#00,#00,#00,#00
	dw #0e18,#0d4d,#0c8e,#0bda
	dw #0b2f,#0a8f,#09f7,#0968
	dw #08e1,#0861,#07e9,#0777
	dw #070c,#06a7,#0647,#05ed
	dw #0598,#0547,#04fc,#04d4
	dw #0470,#0431,#03f4,#03dc
	dw #0386,#0353,#0324,#02f6
	dw #02cc,#02a4,#027e,#025a
	dw #0238,#0218,#01fa,#01de
	dw #01c3,#01aa,#0192,#017b
	dw #0166,#0152,#013f,#012d
	dw #011c,#010c,#00fd,#00ef
	dw #00e1,#00d5,#00c9,#00be
	dw #00b3,#00a9,#009f,#0096
	dw #008e,#0086,#007f,#0077
	dw #0071,#006a,#0064,#005f
	dw #0059,#0054,#0050,#004b
	dw #0047,#0043,#003f,#003c
	dw #0038,#0035,#0032,#002f
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #6a,#00,#64,#00,#5e,#00,#5a,#00
	db #54,#00,#4f,#00,#4a,#00,#47,#00
	db #43,#00,#3f,#00,#3b,#00,#38,#00
	db #35,#00,#32,#00,#2f,#00,#2d,#00
	db #2a,#00,#28,#00,#25,#00,#23,#00
	db #21,#00,#20,#00,#1e,#00,#1c,#00
	db #1b,#00,#19,#00,#18,#00,#16,#00
	db #15,#00,#14,#00,#13,#00,#12,#00
	db #11,#00,#10,#00,#0f,#00,#0e,#00
	db #0d,#00,#0c,#00,#0b,#00,#0a,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57f5
	db #04,#08,#0c,#10,#14,#18,#1c,#20
	db #24,#28,#2c,#30,#34,#38,#3c,#40
	db #44,#48,#4c,#50,#54,#58,#5c,#60
	db #64,#68,#6c,#70,#74,#78,#7c,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
;
; di
; ld hl,#5866
; ld (#0039),hl
; ld a,#c3
; ld (#0038),a
; im 1
; ei
; call l4600
; ld a,#01
; ld (l4606),a
; call #5858
; call l4603
;
.music_info
	db "Extreme (1991)(Digital Integration)()",0
	db "",0

	read "music_end.asm"
