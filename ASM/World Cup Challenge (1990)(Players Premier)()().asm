; Music of World Cup Challenge (1990)(Players Premier)()()
; Ripped by Megachur the 24/03/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "WORLDCUC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #4000
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

	jp l4b76	; init
	jp l4c61	; play
.l4008 equ $ + 2
.l4007 equ $ + 1
.l4006
	db #00,#01,#00,#0d,#06,#01,#ff,#0a
	db #0a,#02,#ff,#00,#02,#04,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #c2,#00,#00,#00,#00,#00,#0b,#08
	db #01,#ff,#0a,#0a,#03,#ff,#ff,#00
	db #00,#00,#03,#fe,#03,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#c2,#00,#00,#00,#00
	db #00,#0b,#08,#01,#ff,#0a,#0a,#03
	db #ff,#ff,#00,#00,#00,#03,#fd,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#c2,#00
	db #00,#00,#00,#00,#0b,#08,#01,#ff
	db #0a,#0a,#03,#ff,#ff,#00,#00,#00
	db #03,#fb,#03,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#c2,#00,#00,#00,#00,#00,#0f
	db #0a,#00,#fe,#0c,#63,#00,#ff,#ff
	db #00,#00,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#c2,#00,#00,#00
	db #00,#00,#0f,#0a,#00,#fe,#0c,#0f
	db #00,#ff,#ff,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#c2
	db #00,#00,#00,#00,#00,#0f,#0f,#00
	db #fe,#0d,#00,#01,#ff,#ff,#00,#00
	db #06,#06,#0c,#08,#00,#f4,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#d2,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#0d,#06,#01,#ff,#0a
	db #0a,#02,#ff,#00,#02,#04,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #c2,#00,#00,#00,#00,#00,#0f,#0a
	db #00,#fe,#0c,#63,#00,#ff,#00,#01
	db #03,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#c2,#00,#00,#00,#00
	db #00,#0f,#0a,#00,#fe,#0c,#0f,#00
	db #ff,#00,#01,#03,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#c2,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #08,#00,#00,#0f,#00,#00,#ff,#ff
	db #00,#00,#0b,#0c,#33,#0e,#0a,#08
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #00,#00,#00,#00,#42,#00,#00,#00
	db #00,#00,#0f,#08,#00,#00,#0f,#00
	db #00,#fe,#ff,#00,#00,#00,#08,#11
	db #06,#04,#f7,#07,#fa,#0a,#fd,#00
	db #00,#00,#00,#00,#00,#00,#00,#42
	db #00,#00,#00,#00
.l41f2
	dw l4272,l4329,l43e5,l4307
	dw l43c9,l4485,l4320,l43dd
.l4204 equ $ + 2
	dw l4499,l44a3,l44a8,l44c1
	dw l44d4,l44ef,l4518,l454d
	dw l4560,l456a,l4577,l4588
	dw l45bd,l45f8,l4608,l4623
	dw l463c,l465f,l4681,l4696
	dw l46bf,l46cc,l46e9,l46fe
	dw l4723,l475e,l4795,l47be
	dw l47c7,l47d6,l47e5,l47ea
	dw l47fd,l481e,l4833,l484e
	dw l487f,l48b2,l48bd,l48e2
	dw l48f3,l48fa,l491a,l4935
	dw l4944,l4951,l4974,l4997
	dw l49a2,l49aa,l49bd,l49d0
	dw l49e7,l49ec,l49fc,l4a11
.l4272
	db #fc,#00,#fb,#18,#01,#01,#02,#01
	db #01,#01,#03,#01,#01,#01,#02,#01
	db #01,#01,#02,#01,#01,#01,#02,#01
	db #fa,#0c,#01,#01,#03,#01,#fa,#fb
	db #01,#01,#02,#01,#fa,#f9,#02,#02
	db #01,#01,#02,#01,#f7,#05,#10,#01
	db #11,#01,#12,#01,#13,#01,#fa,#fb
	db #10,#01,#14,#01,#15,#01,#16,#01
	db #fa,#05,#1b,#01,#1c,#01,#1b,#01
	db #1e,#01,#1d,#01,#f7,#00,#00,#01
	db #00,#06,#fa,#ee,#1f,#04,#fa,#fe
	db #1f,#04,#fa,#11,#f7,#05,#20,#01
	db #21,#01,#22,#01,#23,#01,#24,#01
	db #25,#01,#26,#01,#1a,#01,#fa,#03
	db #f7,#00,#0e,#01,#fa,#fb,#0d,#01
	db #fa,#03,#0e,#01,#fa,#fe,#0f,#01
	db #fa,#04,#0e,#01,#fa,#fb,#0d,#01
	db #fa,#03,#0e,#01,#fa,#fe,#0f,#01
.l4307 equ $ + 5
	db #fa,#04,#04,#04,#fd,#fc,#00,#fb
	db #18,#28,#01,#29,#01,#28,#01,#29
	db #01,#fa,#fd,#28,#01,#29,#01,#28
.l4320 equ $ + 6
	db #01,#29,#01,#fa,#03,#fd,#fc,#00
.l4329 equ $ + 7
	db #fb,#18,#31,#01,#36,#01,#fd,#f9
	db #02,#00,#02,#04,#03,#05,#01,#04
	db #01,#19,#01,#04,#01,#05,#01,#0a
	db #01,#0b,#01,#fa,#fb,#0a,#01,#0b
	db #01,#fa,#05,#0a,#01,#0b,#01,#0a
	db #01,#17,#01,#0a,#01,#18,#01,#0a
	db #01,#17,#01,#fa,#fb,#0a,#01,#18
	db #01,#0a,#01,#0b,#01,#fa,#05,#0a
	db #01,#18,#01,#0a,#01,#0b,#01,#0a
	db #01,#0b,#01,#0a,#01,#17,#01,#0a
	db #01,#18,#01,#0a,#01,#18,#01,#04
	db #01,#19,#01,#04,#01,#18,#01,#04
	db #01,#19,#01,#04,#01,#05,#01,#fa
	db #fd,#0a,#01,#0b,#01,#0a,#01,#0b
	db #01,#0a,#01,#0b,#01,#0a,#01,#0b
	db #01,#fa,#03,#0a,#01,#fa,#fb,#0b
	db #01,#fa,#03,#0a,#01,#fa,#fe,#0b
	db #01,#fa,#04,#0a,#01,#fa,#fb,#0b
	db #01,#fa,#03,#0a,#01,#fa,#fe,#0b
	db #01,#fa,#04,#27,#02,#fa,#02,#f9
.l43c9 equ $ + 7
	db #00,#27,#02,#fa,#fe,#00,#63,#2a
	db #01,#2b,#01,#2a,#01,#2b,#01,#fa
	db #fd,#2a,#01,#2b,#01,#2a,#01,#2b
.l43dd equ $ + 3
	db #01,#00,#63,#fa,#03,#34,#01,#35
.l43e5 equ $ + 3
	db #01,#00,#63,#00,#05,#06,#01,#07
	db #01,#08,#01,#07,#01,#09,#01,#0c
	db #01,#08,#01,#fa,#fb,#0c,#01,#09
	db #01,#fa,#05,#0d,#01,#0e,#01,#0d
	db #01,#0f,#01,#0d,#01,#0e,#01,#0d
	db #01,#0f,#01,#fa,#fb,#0d,#01,#0e
	db #01,#0d,#01,#0f,#01,#fa,#05,#0e
	db #01,#0d,#01,#0e,#01,#0f,#01,#00
	db #01,#06,#01,#07,#01,#06,#01,#07
	db #01,#0c,#01,#08,#01,#0c,#01,#0d
	db #01,#0e,#01,#0d,#01,#0f,#01,#fa
	db #fe,#0d,#01,#0e,#01,#0d,#01,#0f
	db #01,#fa,#ff,#0d,#01,#0e,#01,#0d
	db #01,#0f,#01,#0d,#01,#0e,#01,#0d
	db #01,#0f,#01,#fa,#03,#01,#01,#fa
	db #fb,#02,#01,#fa,#03,#01,#01,#fa
	db #fe,#03,#01,#fa,#04,#01,#01,#fa
	db #fb,#02,#01,#fa,#03,#01,#01,#fa
	db #fe,#02,#01,#fa,#f7,#1f,#02,#fa
	db #02,#1f,#01,#fa,#03,#1f,#01,#fa
.l4485 equ $ + 3
	db #08,#00,#63,#2c,#01,#2d,#01,#2c
	db #01,#2d,#01,#fa,#fd,#2c,#01,#2d
.l4499 equ $ + 7
	db #01,#2c,#01,#2d,#01,#00,#63,#fa
	db #03,#32,#01,#33,#01,#fa,#fd,#00
.l44a8 equ $ + 6
.l44a3 equ $ + 1
	db #63,#61,#00,#60,#20,#fe,#61,#01
	db #60,#02,#49,#02,#49,#04,#49,#04
	db #49,#02,#61,#02,#49,#04,#49,#02
.l44c1 equ $ + 7
	db #49,#04,#49,#04,#49,#04,#fe,#61
	db #00,#60,#02,#61,#03,#49,#02,#49
	db #04,#49,#04,#49,#02,#61,#02,#49
.l44d4 equ $ + 2
	db #12,#fe,#61,#00,#60,#02,#61,#03
	db #49,#02,#49,#04,#49,#04,#49,#02
	db #61,#02,#49,#04,#49,#02,#49,#04
.l44ef equ $ + 5
	db #49,#04,#49,#04,#fe,#61,#0c,#25
	db #02,#61,#0d,#31,#04,#31,#02,#61
	db #06,#25,#02,#61,#0d,#31,#02,#61
	db #0c,#25,#02,#61,#0d,#31,#06,#61
	db #0c,#25,#04,#61,#06,#25,#02,#61
.l4518 equ $ + 6
	db #0d,#31,#04,#31,#02,#fe,#61,#0c
	db #25,#02,#61,#0d,#31,#04,#31,#02
	db #61,#06,#25,#02,#61,#0d,#31,#02
	db #61,#0c,#25,#02,#61,#0d,#31,#02
	db #61,#06,#25,#02,#25,#02,#61,#0c
	db #27,#02,#61,#06,#25,#02,#25,#02
	db #61,#0c,#25,#02,#61,#06,#25,#02
.l454d equ $ + 3
	db #25,#02,#fe,#61,#0d,#60,#14,#61
	db #08,#28,#02,#2a,#02,#2c,#02,#28
.l4560 equ $ + 6
	db #02,#23,#02,#2c,#02,#fe,#61,#08
	db #25,#08,#61,#00,#62,#60,#18,#fe
.l456a
	db #61,#08,#25,#12,#31,#02,#2f,#04
.l4577 equ $ + 5
	db #2c,#04,#31,#04,#fe,#61,#08,#25
	db #14,#2c,#02,#2f,#02,#31,#02,#37
.l4588 equ $ + 6
	db #02,#36,#02,#34,#02,#fe,#61,#0c
	db #25,#02,#61,#01,#49,#02,#49,#02
	db #61,#0d,#31,#02,#61,#06,#25,#02
	db #61,#01,#49,#04,#61,#02,#49,#04
	db #49,#02,#61,#0c,#25,#02,#61,#02
	db #49,#02,#61,#06,#25,#02,#61,#0d
	db #31,#02,#61,#02,#49,#02,#61,#0d
.l45bd equ $ + 3
	db #31,#02,#fe,#61,#0c,#25,#02,#61
	db #03,#49,#02,#49,#02,#61,#0d,#31
	db #02,#61,#06,#25,#02,#61,#03,#49
	db #02,#61,#0c,#25,#02,#61,#02,#49
	db #04,#61,#0d,#31,#02,#61,#0c,#25
	db #02,#61,#02,#49,#02,#61,#06,#25
	db #02,#61,#0d,#31,#02,#61,#02,#49
.l45f8 equ $ + 6
	db #02,#61,#0d,#31,#02,#fe,#61,#08
	db #25,#08,#61,#00,#62,#60,#0c,#61
.l4608 equ $ + 6
	db #08,#20,#08,#23,#04,#fe,#61,#08
	db #25,#04,#31,#02,#2f,#02,#2c,#02
	db #2f,#04,#34,#04,#31,#02,#2f,#02
	db #31,#04,#28,#02,#2a,#02,#2c,#02
.l4623 equ $ + 1
	db #fe,#61,#08,#25,#04,#31,#02,#28
	db #02,#2a,#02,#2c,#02,#2f,#02,#23
	db #06,#25,#04,#28,#02,#2a,#04,#2c
.l463c equ $ + 2
	db #02,#fe,#61,#08,#2f,#02,#31,#02
	db #34,#02,#36,#02,#34,#02,#36,#02
	db #33,#02,#32,#02,#31,#02,#2f,#02
	db #2c,#02,#2a,#02,#28,#02,#25,#02
.l465f equ $ + 5
	db #20,#02,#23,#02,#fe,#61,#00,#49
	db #08,#61,#05,#49,#04,#61,#00,#47
	db #02,#49,#04,#61,#05,#4c,#04,#61
	db #00,#49,#02,#62,#60,#02,#61,#00
.l4681 equ $ + 7
	db #44,#02,#47,#02,#49,#02,#fe,#61
	db #05,#4c,#04,#61,#00,#4b,#04,#49
	db #04,#47,#02,#49,#06,#3d,#08,#44
.l4696 equ $ + 4
	db #02,#47,#02,#fe,#61,#05,#4f,#04
	db #61,#00,#4e,#02,#61,#05,#4c,#04
	db #61,#00,#47,#02,#61,#05,#49,#02
	db #61,#00,#47,#02,#49,#02,#61,#05
	db #4c,#02,#61,#ff,#49,#02,#47,#06
.l46bf equ $ + 5
	db #42,#02,#44,#02,#fe,#60,#0c,#fa
	db #00,#03,#44,#08,#fa,#00,#00,#3d
.l46cc equ $ + 2
	db #0c,#fe,#61,#00,#60,#04,#49,#04
	db #49,#02,#61,#05,#47,#04,#61,#00
	db #49,#06,#3d,#02,#40,#02,#42,#02
.l46e9 equ $ + 7
	db #40,#02,#42,#02,#44,#02,#fe,#61
	db #ff,#fa,#08,#ff,#42,#06,#fa,#00
	db #00,#44,#0e,#61,#05,#40,#08,#61
.l46fe equ $ + 4
	db #ff,#3d,#04,#fe,#61,#00,#fa,#00
	db #ff,#38,#0c,#fa,#00,#00,#34,#02
	db #36,#02,#38,#02,#3b,#02,#3d,#02
	db #3b,#02,#61,#05,#3d,#02,#61,#00
	db #40,#02,#3d,#02,#61,#05,#40,#02
.l4723 equ $ + 1
	db #fe,#61,#0c,#25,#02,#61,#03,#49
	db #02,#49,#02,#61,#0d,#31,#02,#61
	db #06,#25,#02,#61,#03,#49,#02,#61
	db #0c,#25,#02,#61,#02,#49,#02,#61
	db #06,#25,#02,#25,#02,#61,#0c,#25
	db #02,#61,#02,#49,#02,#61,#06,#25
	db #02,#25,#02,#61,#02,#49,#02,#61
.l475e equ $ + 4
	db #06,#25,#02,#fe,#61,#0c,#25,#02
	db #61,#03,#49,#02,#49,#02,#61,#0d
	db #31,#02,#61,#06,#25,#02,#61,#03
	db #49,#02,#61,#0c,#25,#02,#61,#02
	db #49,#04,#61,#06,#25,#04,#61,#02
	db #49,#02,#61,#06,#25,#02,#61,#0d
	db #31,#02,#61,#02,#49,#02,#61,#06
.l4795 equ $ + 3
	db #25,#02,#fe,#61,#0c,#25,#02,#61
	db #0d,#31,#04,#31,#02,#61,#06,#25
	db #02,#61,#0d,#31,#02,#61,#0c,#25
	db #02,#61,#0d,#31,#04,#61,#06,#25
	db #06,#25,#02,#25,#02,#25,#02,#61
.l47be equ $ + 4
	db #0d,#31,#02,#fe,#60,#1c,#61,#00
.l47c7 equ $ + 5
	db #4c,#02,#49,#02,#fe,#61,#00,#49
	db #06,#49,#06,#49,#06,#49,#06,#49
.l47d6 equ $ + 4
	db #04,#49,#04,#fe,#61,#00,#44,#06
	db #47,#06,#4c,#06,#4b,#06,#47,#04
.l47e5 equ $ + 3
	db #44,#04,#fe,#61,#00,#49,#20,#fe
.l47ea
	db #61,#00,#44,#06,#47,#06,#4f,#02
	db #4e,#02,#4c,#02,#4e,#06,#4c,#04
.l47fd equ $ + 3
	db #47,#04,#fe,#61,#00,#60,#02,#61
	db #0d,#31,#02,#25,#04,#31,#02,#31
	db #02,#31,#02,#25,#02,#31,#02,#25
	db #04,#31,#02,#31,#02,#25,#02,#25
.l481e equ $ + 4
	db #02,#31,#02,#fe,#61,#00,#44,#06
	db #47,#06,#49,#08,#47,#02,#46,#02
	db #44,#02,#43,#02,#42,#02,#40,#02
.l4833 equ $ + 1
	db #fe,#61,#00,#42,#02,#3e,#02,#3d
	db #02,#3b,#06,#38,#02,#3d,#06,#38
	db #02,#3b,#02,#3d,#02,#3b,#02,#3d
.l484e equ $ + 4
	db #02,#40,#02,#fe,#61,#00,#fa,#00
	db #03,#42,#01,#fa,#00,#00,#40,#03
	db #3d,#02,#fa,#00,#03,#42,#01,#fa
	db #00,#00,#40,#03,#3d,#02,#fa,#00
	db #03,#42,#01,#fa,#00,#00,#40,#03
	db #3d,#02,#40,#04,#3b,#04,#3d,#02
.l487f equ $ + 5
	db #40,#02,#42,#02,#fe,#61,#00,#fa
	db #00,#03,#42,#01,#fa,#00,#00,#40
	db #03,#3d,#02,#fa,#00,#03,#42,#01
	db #fa,#00,#00,#40,#03,#3d,#02,#42
	db #01,#fa,#00,#ff,#40,#03,#fa,#00
	db #00,#42,#02,#43,#04,#44,#02,#46
	db #02,#47,#02,#48,#02,#49,#02,#fe
.l48b2
	db #61,#00,#4c,#0c,#49,#08,#47,#08
.l48bd equ $ + 3
	db #46,#04,#fe,#61,#00,#44,#08,#40
	db #04,#3d,#06,#47,#02,#fa,#00,#fd
	db #4b,#01,#fa,#00,#00,#4c,#03,#fa
	db #00,#fd,#4b,#01,#fa,#00,#00,#4c
	db #01,#49,#02,#4e,#02,#4c,#02,#fe
.l48e2
	db #61,#ff,#fa,#0a,#01,#4f,#06,#fa
	db #00,#00,#4e,#16,#61,#04,#4e,#04
.l48f3 equ $ + 1
	db #fe,#61,#00,#25,#1c,#23,#04,#fe
.l48fa
	db #61,#00,#25,#08,#61,#06,#25,#04
	db #61,#00,#31,#02,#62,#60,#06,#31
	db #02,#62,#60,#02,#61,#06,#25,#04
	db #61,#00,#22,#02,#62,#60,#02,#fe
.l491a
	db #61,#00,#1e,#08,#61,#06,#25,#04
	db #61,#00,#2a,#02,#62,#60,#06,#61
	db #06,#25,#04,#61,#00,#2c,#04,#62
.l4935 equ $ + 3
	db #60,#04,#fe,#61,#01,#49,#04,#49
	db #04,#49,#04,#61,#02,#49,#08,#49
.l4944 equ $ + 2
	db #0c,#fe,#61,#02,#4e,#08,#4e,#08
.l4951 equ $ + 7
	db #61,#01,#4e,#04,#4e,#0c,#fe,#61
	db #1f,#49,#02,#4b,#02,#4d,#02,#4e
	db #02,#50,#02,#52,#02,#53,#02,#55
	db #02,#57,#02,#59,#02,#5a,#02,#5c
	db #02,#5e,#02,#5f,#02,#55,#02,#57
.l4974 equ $ + 2
	db #02,#fe,#61,#1f,#57,#02,#55,#02
	db #5f,#02,#5e,#02,#5c,#02,#5a,#02
	db #59,#02,#57,#02,#55,#02,#53,#02
	db #52,#02,#50,#02,#4e,#02,#4d,#02
.l4997 equ $ + 5
	db #4b,#02,#49,#02,#fe,#61,#00,#25
	db #08,#22,#08,#20,#08,#1b,#08,#fe
.l49a2
	db #61,#00,#19,#18,#62,#60,#08,#fe
.l49aa
	db #61,#0c,#25,#08,#61,#06,#25,#08
	db #61,#0c,#25,#04,#61,#06,#25,#04
.l49bd equ $ + 3
	db #25,#08,#fe,#61,#0c,#25,#08,#61
	db #06,#25,#04,#61,#0c,#25,#08,#25
.l49d0 equ $ + 6
	db #04,#61,#06,#25,#08,#fe,#61,#05
	db #49,#02,#4a,#02,#4d,#04,#4d,#04
	db #4b,#04,#49,#02,#4a,#02,#46,#04
.l49e7 equ $ + 5
	db #44,#04,#3d,#04,#fe,#61,#05,#3f
.l49ec equ $ + 2
	db #20,#fe,#61,#08,#25,#0c,#20,#08
	db #22,#08,#2e,#02,#61,#00,#62,#60
.l49fc equ $ + 2
	db #02,#fe,#61,#08,#1e,#08,#2a,#02
	db #61,#00,#62,#60,#06,#61,#08,#2c
.l4a11 equ $ + 7
	db #04,#61,#00,#62,#60,#0c,#fe,#61
	db #0c,#25,#08,#61,#06,#25,#02,#fd
	db #02,#fd,#02,#fd,#02,#61,#0c,#25
	db #04,#61,#06,#25,#02,#fd,#02,#fd
.l4a2e equ $ + 4
.l4a2d equ $ + 3
.l4a2c equ $ + 2
	db #08,#fe,#00,#00,#00,#00,#00,#00
.l4a39 equ $ + 7
	db #00,#00,#30,#30,#30,#30,#00,#0f
.l4a3d equ $ + 3
.l4a3c equ $ + 2
.l4a3b equ $ + 1
.l4a3a
	db #00,#00,#00,#00,#00
.l4a3f
	ld a,(l4a3b)
	and a
	ld b,a
	ret z
	ld a,(l4a3d)
	cp #80
	jp z,l4a68
	ld a,(l4a3c)
	dec a
	ld (l4a3c),a
	ret nz
	ld a,(l4a3d)
	ld (l4a3c),a
	ld a,(l4a39)
	add b
	bit 4,a
	jp nz,l4a77
	ld (l4a39),a
	ret
.l4a68
	ld a,b
	cp #01
	ld a,#0f
	jp z,l4a71
	xor a
.l4a71
	ld (l4a39),a
	jp l4a77
.l4a77
	xor a
	ld (l4a3b),a
	ld a,(l4a3a)
	and a
	jp nz,l4c2d
	ret
	ld a,#00
	ld (l4a39),a
	ld a,#01
.l4a8a
	ld (l4a3b),a
	inc hl
	ld a,(hl)
	ld (l4a3d),a
	ld (l4a3c),a
	inc hl
	ret
	ld a,#0f
	ld (l4a39),a
	ld a,#ff
	jp l4a8a
.l4aa1
	nop
.l4aa2
	ld a,h
	push af
	ld c,l
	cp #07
	jp nz,l4ab9
	ld a,(l4aa1)
	cp c
	jp z,l4ad4
	ld a,c
	ld (l4aa1),a
	res 7,c
	res 6,c
.l4ab9
	ld a,#c0
	ld b,#f6
	out (c),a
	ld b,#f4
	pop af
	out (c),a
	ld b,#f6
	ld a,#80
	out (c),a
	ld b,#f4
	out (c),c
	xor a
	ld b,#f6
	out (c),a
	ret
.l4ad4
	pop af
	ret
.l4add equ $ + 7
.l4adc equ $ + 6
.l4ad7 equ $ + 1
.l4ad6
	db #00,#01,#00,#00,#00,#00,#00,#f8
.l4ae3 equ $ + 5
.l4ae1 equ $ + 3
.l4ae0 equ $ + 2
.l4adf equ $ + 1
.l4ade
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
	db #0c,#05,#00,#08,#01,#ff,#00,#00
	db #00,#01,#08,#00,#00,#04,#00,#00
	db #00,#00,#00,#f7,#14,#0a,#01,#00
	db #00,#08,#04,#00,#00,#01,#00,#00
	db #00,#0a,#00,#02,#00,#fe,#00,#00
.l4b13 equ $ + 5
.l4b11 equ $ + 3
.l4b0e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#01,#01,#02,#01,#ff,#00,#00
	db #02,#03,#09,#00,#00,#01,#00,#00
	db #00,#00,#00,#ef,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4b43 equ $ + 5
.l4b41 equ $ + 3
.l4b3e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0a,#01,#02,#02,#ff,#00,#00
	db #04,#05,#0a,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#df,#ff,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4b6e
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.real_init_music
.l4b76
;
	ld a,#0f
	ld (l4a39),a
	xor a
	ld (l4a3b),a
	ld (l4a3a),a
	call l4c35
	ld a,(l4a2d)
	cp #ff
	jp nz,l4b91
	inc a
	ld (l4a2d),a
.l4b91
	ld a,#01
	ld (l4ae3),a
	ld (l4b13),a
	ld (l4b43),a
	xor a
	ld (l4a2c),a
	push ix
	ld ix,l4ae1
	ld a,(l4a2d)
	add a
	ld b,a
	add a
	add b
	ld l,a
	ld h,#00
	ld de,l41f2
	add hl,de
	ld (l4bc2),hl
	inc hl
	inc hl
	ld (l4bcc),hl
	inc hl
	inc hl
	ld (l4bd6),hl
.l4bc2 equ $ + 1
	ld hl,(#0000)
	call l4bfb
	ld ix,l4b11
.l4bcc equ $ + 1
	ld hl,(#0000)
	call l4bfb
	ld ix,l4b41
.l4bd6 equ $ + 1
	ld hl,(#0000)
	call l4bfb
	ld a,#01
	ld (l4007),a
	ld h,#07
	ld l,#f8
	call l4aa2
	ld a,(l4a2d)
	cp #01
	pop ix
	ret
.l4bef	; test player
	halt
	call l4c61
	ld a,(l4007)
	and a
	jp nz,l4bef
	ret
.l4bfb
	ld (ix+#20),l
	ld (ix+#23),l
	ld (ix+#00),l
	ld (ix+#21),h
	ld (ix+#24),h
	ld (ix+#01),h
	call l517c
	ld (ix+#02),#01
	ld (ix+#0c),#00
	ld (ix+#05),#00
	ld (ix+#04),#00
	ld (ix+#17),#00
	ld (ix+#2b),#00
	ld (ix+#2f),#00
	ret
.l4c2d
	call l4c35
	xor a
	ld (l4007),a
	ret
.l4c35
	ld h,#07
	ld l,#ff
	call l4aa2
	ld hl,l4ad6
	ld de,l4ad7
	ld bc,#000a
	ld (hl),#00
	ldir
	ld a,#ff
	ld (l4add),a
.l4c4e
	ld b,#0b
	ld h,#00
	ld de,l4ad6
.l4c55
	ld a,(de)
	ld l,a
	push bc
	call l4aa2
	pop bc
	inc h
	inc de
	djnz l4c55
	ret
;
.play_music
.l4c61
;
	ld a,(l4006)
	and a
	jp z,l4c99
	ld b,a
	xor a
	ld (l4006),a
	ld a,b
	cp #ff
	jp z,l4c2d
	cp #fe
	jp nz,l4c92
	ld b,#0a
	ld a,#01
	ld (l4a3a),a
	call l4c85
	jp l4c99
.l4c85
	ld a,#ff
	ld (l4a3b),a
	ld a,b
	ld (l4a3d),a
	ld (l4a3c),a
	ret
.l4c92
	dec a
	ld (l4a2d),a
	jp l4b76
.l4c99
	call l4a3f
	ld a,(l4007)
	and a
	jr z,l4cfb
	push ix
	ld ix,l4ae1
	bit 7,(ix+#0c)
	call z,l4cfc
	ld ix,l4b11
	bit 7,(ix+#0c)
	call z,l4cfc
	ld ix,l4b41
	bit 7,(ix+#0c)
	call z,l4cfc
	ld a,(l4a39)
	cpl
	and #0f
	ld b,a
	ld a,(l4a2c)
	and a
	ld a,#10
	jp nz,l4cdd
	ld a,(l4ade)
	sub b
	jp nc,l4cdd
	xor a
.l4cdd
	ld (l4ade),a
	ld a,(l4adf)
	sub b
	jp nc,l4ce8
	xor a
.l4ce8
	ld (l4adf),a
	ld a,(l4ae0)
	sub b
	jp nc,l4cf3
	xor a
.l4cf3
	ld (l4ae0),a
	call l4c4e
	pop ix
.l4cfb
	ret
.l4cfc
	ld a,(ix+#02)
	dec (ix+#02)
	jp z,l4ea3
.l4d05
	ld a,(ix+#0c)
	and #03
	jp z,l4dc5
	cp #01
	jp z,l4d1f
	cp #02
	jp z,l4d5f
	cp #03
	jp z,l4da9
	jp l4df6
.l4d1f
	ld a,(ix+#0b)
	and a
	jr z,l4d2b
	dec (ix+#0b)
	jp l4df6
.l4d2b
	ld a,(ix+#04)
	ld b,(ix+#08)
	add b
	ld (ix+#04),a
	ld b,(ix+#05)
	cp b
	jr z,l4d4c
	jr nc,l4d46
	ld a,(ix+#07)
	ld (ix+#0b),a
	jp l4df6
.l4d46
	ld a,(ix+#05)
	ld (ix+#04),a
.l4d4c
	ld a,(ix+#0c)
	and #fc
	or #02
	ld (ix+#0c),a
	ld a,(ix+#09)
	ld (ix+#25),a
	jp l4df6
.l4d5f
	ld a,(ix+#25)
	and a
	jr z,l4d6b
	dec (ix+#25)
	jp l4df6
.l4d6b
	ld a,(ix+#04)
	ld b,(ix+#0a)
	add b
	ld (ix+#04),a
	bit 7,a
	jp nz,l4d8a
	ld b,(ix+#26)
	cp b
	jr z,l4d97
	jr c,l4d91
	ld a,(ix+#09)
	ld (ix+#25),a
	jr l4df6
.l4d8a
	ld (ix+#04),#00
	jp l4d97
.l4d91
	ld a,(ix+#26)
	ld (ix+#04),a
.l4d97
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	ld a,(ix+#06)
	ld (ix+#27),a
	jr l4df6
.l4da9
	ld a,(ix+#27)
	and a
	jr z,l4db4
	dec (ix+#27)
	jr l4df6
.l4db4
	ld a,(ix+#0c)
	and #fc
	ld (ix+#0c),a
	ld a,(ix+#2a)
	ld (ix+#29),a
	jp l4df6
.l4dc5
	ld a,(ix+#29)
	and a
	jr z,l4dd0
	dec (ix+#29)
	jr l4df6
.l4dd0
	ld a,(ix+#04)
	ld b,(ix+#28)
	add b
	ld (ix+#04),a
	bit 7,a
	jr nz,l4de6
	ld a,(ix+#2a)
	ld (ix+#29),a
	jr l4df6
.l4de6
	ld (ix+#04),#00
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	jr l4df6
.l4df6
	ld a,(ix+#04)
	ld hl,l4ad6
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
	call l4f3a
	pop af
	ld (ix+#03),a
	inc (ix+#10)
	ld a,(ix+#12)
	xor (ix+#10)
	jr nz,l4e32
	ld a,(ix+#11)
	ld (ix+#10),a
.l4e32
	ld a,(ix+#1a)
	cp #ff
	jr z,l4e73
	and a
	jr z,l4e41
	dec (ix+#1a)
	jr nz,l4e73
.l4e41
	dec (ix+#1f)
	jr nz,l4e54
	ld a,(ix+#1e)
	ld (ix+#1f),a
	ld a,(ix+#2e)
	xor #01
	ld (ix+#2e),a
.l4e54
	ld b,#00
	ld c,(ix+#1b)
	ld h,(ix+#1d)
	ld l,(ix+#1c)
	bit 0,(ix+#2e)
	jr z,l4e68
	add hl,bc
	jr l4e6a
.l4e68
	sbc hl,bc
.l4e6a
	ld (ix+#1d),h
	ld (ix+#1c),l
	call l4e8e
.l4e73
	ld a,(ix+#2b)
	call l4e81
	and a
	call nz,l4e8e
	ld a,(ix+#02)
	ret
.l4e81
	ld l,a
	ld h,#00
	bit 7,a
	ret z
	ld d,h
	ld e,l
	sbc hl,de
	sbc hl,de
	ret
.l4e8e
	ld b,h
	ld c,l
	ld hl,l4ad6
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
.l4ea3
	ld l,(ix+#00)
	ld h,(ix+#01)
.l4ea9
	ld a,(hl)
	cp #60
	jp z,l4f38
	cp #61
	jp z,l5038
	cp #62
	jp z,l5012
	cp #64
	jp z,l4fc0
	cp #65
	jp z,l5004
	cp #fa
	jp z,l4fd7
	cp #fc
	jp z,l4fa7
	cp #fd
	jp z,l4f89
	cp #fe
	jp z,l501a
	cp #ff
	jp z,l4ffc
	ld b,a
.l4edd
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
.l4f0c
	inc hl
	ld a,(hl)
	dec a
	push hl
	ld h,#00
	ld l,a
	ld de,(l4a2e)
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
	call l4f3a
	jp l4d05
.l4f38
	jr l4f0c
.l4f3a
	ld a,(ix+#17)
	and a
	call nz,l4f7e
	ld a,(ix+#03)
	inc a
	inc a
	add a
	ld d,#00
	ld e,a
	ld hl,l51e5
	add hl,de
	push hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l4ad6
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	pop hl
	ld a,(l4a2c)
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
	call l4aa2
	inc de
	inc h
	ld a,(de)
	ld l,a
	call l4aa2
	ret
.l4f7e
	ld a,(ix+#03)
	neg
	and #1f
	ld (l4adc),a
	ret
.l4f89
	ld a,(ix+#05)
	and a
	jp z,l4f9d
	ld a,(ix+#26)
	and a
	jp z,l4f9d
	dec (ix+#05)
	dec (ix+#26)
.l4f9d
	ld a,(ix+#03)
	add (ix+#2d)
	ld b,a
	jp l4edd
.l4fa7
	ld a,(ix+#05)
	cp #0f
	jp z,l4f9d
	ld a,(ix+#26)
	cp #0f
	jp z,l4f9d
	inc (ix+#05)
	inc (ix+#26)
	jp l4f9d
.l4fc0
	inc hl
	ld a,(hl)
	inc hl
	ld (l4adc),a
	jp l502f
.l4fc9
	inc hl
	ld a,(hl)
	inc hl
	ld b,a
	xor a
	ld (l4a3a),a
	call l4c85
	jp l5182
.l4fd7
	inc hl
	ld (ix+#2e),#01
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	bit 7,a
	jp z,l4fed
	neg
	ld (ix+#2e),#00
.l4fed
	ld (ix+#1b),a
	ld (ix+#1e),#ff
	ld (ix+#1f),#ff
	inc hl
	jp l502f
.l4ffc
	inc hl
	ld (ix+#04),#00
	jp l502f
.l5004
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld h,#0d
	ld l,a
	call l4aa2
	pop hl
	jp l502f
.l5012
	ld (ix+#04),#00
	inc hl
	jp l502f
.l501a
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jr nz,l5029
	jp l516e
	jp l4ea9
.l5029
	ld l,(ix+#15)
	ld h,(ix+#16)
.l502f
	ld (ix+#01),h
	ld (ix+#00),l
	jp l4ea9
.l5038
	inc hl
	ld a,(hl)
	add (ix+#2f)
	inc hl
	push hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld b,a
	add a
	ld h,#00
	ld l,a
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,l4008
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
	jp z,l50e8
	and #12
	xor #12
	ld b,a
	ld c,#ed
	ld a,(ix+#0f)
	cp #08
	jp z,l50cf
	cp #09
	jp z,l50d3
	sla b
	rlc c
	jp l50d3
.l50cf
	srl b
	sra c
.l50d3
	ld a,(l4add)
	and c
	or #c0
	or b
	ld (l4add),a
	ld a,(hl)
	bit 7,a
	jp z,l50e8
	and #38
	ld (ix+#17),a
.l50e8
	inc hl
	ld a,(ix+#0f)
	cp #08
	jp nz,l5104
	ld a,(hl)
	ld (l4a2c),a
	and a
	jp z,l5104
	inc hl
	inc hl
	ld a,(hl)
	push hl
	ld h,#0d
	ld l,a
	call l4aa2
	pop hl
.l5104
	pop hl
	jp l4ea9
.l5108
	inc hl
	ld a,(hl)
	inc hl
	push hl
	add a
	add a
	add a
	ld h,#00
	ld l,a
	ld de,l5335
	add hl,de
	ld (l4a2e),hl
	pop hl
	jp l5182
.l511d
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2f),a
	jp l5182
.l5126
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2c),a
	jp l5182
.l512f
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2b),a
	jp l5182
.l5138
	inc hl
	ld a,(hl)
	sub #0c
	inc hl
	ld (l4b0e),a
	ld (l4b3e),a
	ld (l4b6e),a
	jp l5182
.l5149
	inc hl
	ld b,(hl)
	inc hl
	ld a,(ix+#2d)
	add b
	ld (ix+#2d),a
	jp l5182
	ld (ix+#0c),#ff
	ld (ix+#03),#00
	ld (ix+#04),#00
	inc hl
	ld a,(hl)
	and a
	jp z,l4d05
	call l4c2d
	jp l4d05
.l516e
	call l517c
	jp l4ea3
.l5174
	pop bc
	jp l4c2d
.l5178
	pop bc
	jp l4b76
.l517c
	ld l,(ix+#20)
	ld h,(ix+#21)
.l5182
	ld a,(hl)
	cp #f7
	jp z,l511d
	cp #f8
	jp z,l5126
	cp #f9
	jp z,l512f
	cp #f6
	jp z,l4fc9
	cp #fa
	jp z,l5149
	cp #fb
	jp z,l5138
	cp #fc
	jp z,l5108
	cp #fd
	jp z,l5178
	cp #fe
	jr z,l51d9
	cp #ff
	jr z,l5174
	push hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l4204
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
.l51d9
	ld l,(ix+#23)
	ld h,(ix+#24)
	jr l5182
.l51e5 equ $ + 4
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
.l5335
	db #03,#06,#09,#0c,#0f,#12,#15,#18
	db #1b,#1e,#21,#24,#27,#2a,#2d,#30
	db #33,#36,#39,#3c,#3f,#42,#45,#48
	db #4b,#4e,#51,#54,#57,#5a,#5d,#60
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.init_music
;
	ld (l4a2d),a
	jp real_init_music
;
.music_info
	db "World Cup Challenge (1990)(Players Premier)()",0
	db "",0

	read "music_end.asm"
