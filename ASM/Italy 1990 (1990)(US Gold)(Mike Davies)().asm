; Music of Italy 1990 (1990)(US Gold)(Mike Davies)()
; Ripped by Megachur the 17/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ITALY199.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #5c58
FIRST_THEME				equ 1
LAST_THEME				equ 4

	read "music_header.asm"

	jp l673a	; init a = 1 -> 4 (4 = main theme) c=3
	jp l67a0
	jp l6951	; play
.l5c61
	db #00,#0a,#0a,#0a,#0a,#09,#09,#08
	db #07,#07,#06,#06,#06,#05,#04,#03
.l5c78 equ $ + 7
	db #03,#02,#02,#01,#01,#01,#00,#0d
	db #16,#17,#00,#01,#0a,#09,#09,#08
	db #08,#08,#08,#08,#08,#07,#07,#06
	db #05,#05,#04,#03,#03,#02,#02,#01
	db #01,#00,#0f,#10,#0f,#11,#11,#10
	db #10,#11,#12,#13,#12,#12,#10,#11
.l5ca7 equ $ + 6
	db #10,#11,#11,#12,#14,#11,#13,#61
	db #01,#00,#01,#09,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#ff,#29,#ec,#ec
	db #00,#ff,#00,#01,#00,#01,#01,#ff
	db #ff,#ff,#ff,#01,#01,#02,#01,#fe
	db #ff,#fe,#ff,#02,#01,#02,#02,#fe
	db #fe,#fe,#fe,#02,#02,#02,#01,#fe
	db #ff,#fe,#ff,#02,#01,#02,#02,#fe
	db #fe,#fe,#fe,#02,#02,#02,#01,#fe
	db #ff,#fe,#ff,#02,#01,#02,#02,#fe
	db #fe,#fe,#fe,#02,#02,#02,#01,#fe
	db #ff,#fe,#ff,#02,#01,#02,#02,#fe
	db #fe,#fe,#fe,#02,#02,#02,#01,#fe
	db #ff,#fe,#ff,#02,#01,#02,#02,#fe
.l5d6f equ $ + 6
	db #fe,#fe,#fe,#02,#02,#00,#0d,#04
	db #1a,#00,#01,#08,#06,#02,#00,#04
.l5d7c equ $ + 3
	db #04,#04,#04,#13,#20,#01,#00,#01
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#09,#09,#08,#07
	db #06,#06,#05,#05,#04,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#01,#00,#ff,#00
	db #ff,#00,#ff,#00,#ff,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5dc3 equ $ + 2
	db #00,#00,#13,#20,#01,#00,#01,#0a
	db #0a,#09,#09,#08,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #00,#01,#00,#ff,#00,#ff,#00,#ff
	db #00,#ff,#00,#01,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5e08 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#13
	db #09,#01,#00,#01,#0a,#0a,#09,#09
	db #08,#08,#09,#09,#ff,#01,#01,#ff
.l5e1f equ $ + 6
	db #ff,#ff,#ff,#01,#01,#00,#13,#02
.l5e28 equ $ + 7
	db #01,#00,#01,#00,#00,#00,#00,#13
	db #09,#01,#00,#01,#08,#08,#07,#07
	db #08,#08,#07,#07,#ff,#ff,#01,#01
.l5e3f equ $ + 6
	db #ff,#ff,#01,#01,#ff,#00,#13,#5a
	db #01,#00,#01,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#07,#07,#07
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#05,#05,#05,#04,#04,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #01,#01,#01,#01,#00,#0a,#fc,#fe
	db #fd,#ff,#0a,#fc,#fe,#fd,#ff,#0a
	db #fc,#fe,#fd,#ff,#0a,#fc,#fe,#fd
	db #ff,#0a,#fc,#fe,#fd,#ff,#0a,#fc
	db #fe,#fd,#ff,#0a,#fc,#fe,#fd,#ff
	db #0a,#fc,#fe,#fd,#ff,#0a,#fc,#fe
	db #fd,#ff,#0a,#fc,#fe,#fd,#ff,#0a
	db #fc,#fe,#fd,#ff,#0a,#fc,#fe,#fd
	db #ff,#0a,#fc,#fe,#fd,#ff,#0a,#fc
	db #fe,#fd,#ff,#0a,#fc,#fe,#fd,#ff
	db #0a,#fc,#fe,#fd,#ff,#0a,#fc,#fe
.l5ef8 equ $ + 7
	db #fd,#ff,#0a,#fc,#fe,#fd,#ff,#13
	db #28,#01,#00,#01,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#07,#07
	db #06,#06,#06,#06,#05,#05,#05,#05
	db #04,#04,#04,#03,#03,#03,#02,#02
	db #02,#02,#01,#01,#01,#01,#00,#00
	db #00,#00,#00,#00,#0a,#fa,#fc,#0e
	db #f8,#fa,#08,#fb,#fe,#ff,#14,#ec
	db #0a,#f6,#05,#fb,#02,#06,#fb,#fd
	db #0a,#fa,#fc,#0e,#f8,#fa,#08,#fb
	db #fe,#ff,#14,#ec,#0a,#f6,#05,#fb
.l5f4d equ $ + 4
	db #02,#06,#fb,#fd,#13,#78,#01,#00
	db #01,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0b,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#06,#06,#06,#06
	db #06,#06,#06,#06,#05,#05,#05,#04
	db #04,#03,#03,#03,#02,#02,#02,#01
	db #00,#08,#fe,#fe,#fc,#0a,#fb,#fd
	db #fe,#06,#fa,#08,#fe,#fe,#fc,#0a
	db #fb,#fd,#fe,#06,#fa,#08,#fe,#fe
	db #fc,#0a,#fb,#fd,#fe,#06,#fa,#08
	db #fe,#fe,#fc,#0a,#fb,#fd,#fe,#06
	db #fa,#08,#fe,#fe,#fc,#0a,#fb,#fd
	db #fe,#06,#fa,#08,#fe,#fe,#fc,#0a
	db #fb,#fd,#fe,#06,#fa,#08,#fe,#fe
	db #fc,#0a,#fb,#fd,#fe,#06,#fa,#08
	db #fe,#fe,#fc,#0a,#fb,#fd,#fe,#06
	db #fa,#08,#fe,#fe,#fc,#0a,#fb,#fd
	db #fe,#06,#fa,#08,#fe,#fe,#fc,#0a
	db #fb,#fd,#fe,#06,#fa,#08,#fe,#fe
	db #fc,#0a,#fb,#fd,#fe,#06,#fa,#08
	db #fe,#fe,#fc,#0a,#fb,#fd,#fe,#06
	db #fa,#08,#08,#f8,#f8,#00,#f8,#f8
	db #08,#08,#00,#80,#11,#0c,#11,#0c
	db #10,#06,#0e,#06,#0c,#0c,#94,#86
	db #0c,#0c,#81,#39,#0c,#84,#01,#0c
	db #81,#3b,#0c,#94,#86,#0c,#06,#84
	db #01,#0c,#01,#0c,#01,#06,#01,#06
.l6074 equ $ + 3
	db #01,#06,#94,#95,#04,#0c,#4c,#60
	db #95,#04,#05,#4c,#60,#95,#02,#07
	db #4c,#60,#95,#02,#05,#4c,#60,#95
	db #02,#07,#4c,#60,#95,#02,#05,#4c
.l6098 equ $ + 7
	db #60,#95,#08,#00,#4c,#60,#ff,#88
	db #95,#04,#18,#4c,#60,#95,#04,#11
	db #4c,#60,#95,#02,#13,#4c,#60,#95
	db #02,#11,#4c,#60,#95,#02,#13,#4c
	db #60,#95,#02,#11,#4c,#60,#95,#08
.l60bd equ $ + 4
	db #0c,#4c,#60,#ff,#95,#07,#00,#58
	db #60,#95,#01,#00,#65,#60,#95,#07
	db #00,#58,#60,#95,#01,#00,#65,#60
	db #95,#07,#00,#58,#60,#95,#01,#00
	db #65,#60,#fe,#00,#80,#00,#80,#00
	db #80,#00,#80,#00,#80,#00,#80,#00
	db #80,#00,#80,#00,#80,#00,#80,#00
	db #80,#00,#80,#00,#80,#00,#80,#00
	db #80,#ff,#89,#1c,#0c,#1c,#0c,#1c
	db #06,#1c,#0c,#1f,#0c,#1c,#06,#1a
	db #0c,#1c,#18,#94,#89,#1c,#0c,#1c
	db #0c,#1f,#0c,#1c,#06,#1c,#0c,#1c
	db #06,#23,#06,#23,#06,#1f,#06,#1f
.l6125 equ $ + 4
	db #06,#1a,#0c,#94,#95,#02,#00,#fb
	db #60,#95,#02,#05,#fb,#60,#95,#02
	db #00,#0d,#61,#95,#02,#05,#0d,#61
	db #ff,#80,#14,#06,#81,#01,#06,#01
	db #06,#80,#14,#06,#84,#01,#06,#80
	db #14,#06,#81,#01,#06,#80,#14,#06
	db #81,#01,#06,#80,#14,#06,#81,#01
	db #06,#80,#14,#06,#84,#01,#06,#81
	db #01,#06,#84,#01,#06,#01,#06,#94
.l616f equ $ + 6
.l6169
	db #95,#10,#00,#3a,#61,#ff,#95,#04
	db #0c,#fb,#60,#95,#04,#0c,#0d,#61
.l617a equ $ + 1
	db #ff,#89,#1d,#0c,#1d,#06,#1d,#06
	db #21,#0c,#24,#06,#24,#06,#26,#0c
	db #24,#06,#24,#06,#21,#06,#21,#06
.l6194 equ $ + 3
	db #1f,#0c,#94,#89,#1d,#0c,#1f,#06
	db #21,#06,#24,#0c,#21,#0c,#1d,#06
	db #1d,#06,#26,#0c,#24,#0c,#21,#06
.l61ac equ $ + 3
	db #21,#06,#94,#89,#1d,#0c,#1d,#06
	db #1d,#06,#24,#06,#1d,#0c,#21,#06
	db #24,#06,#24,#06,#26,#0c,#24,#0c
.l61c4 equ $ + 3
	db #1c,#0c,#94,#8b,#1a,#06,#81,#01
	db #06,#01,#06,#01,#06,#84,#14,#06
	db #81,#01,#06,#01,#06,#01,#06,#94
.l61d9
	db #8b,#1a,#06,#81,#01,#06,#84,#01
	db #06,#81,#01,#06,#84,#01,#06,#01
	db #06,#01,#06,#81,#01,#06,#94
.l61f0
	db #8a
	db #35,#06,#35,#06,#34,#0c,#35,#0c
	db #34,#06,#35,#06,#94
.l61fe
	db #8a,#3c,#18
	db #35,#06,#39,#06,#3a,#06,#3c,#12
	db #3e,#0c,#3c,#0c,#39,#06,#39,#06
	db #41,#0c,#41,#0c,#40,#06,#3e,#0c
	db #3c,#36,#94
.l621c
	db #8a,#39,#30,#3c,#0c
	db #41,#18,#37,#06,#37,#06,#39,#18
	db #39,#18,#35,#30,#37,#06,#39,#06
	db #3c,#06,#39,#06,#37,#06,#35,#06
	db #37,#06,#3c,#06,#39,#06,#35,#06
	db #39,#06,#37,#06,#3c,#06,#39,#06
	db #35,#06,#37,#06,#3c,#60,#3c,#0c
	db #39,#06,#39,#06,#3e,#0c,#39,#06
	db #37,#06,#35,#24,#34,#06,#34,#06
	db #35,#0c,#37,#0c,#39,#0c,#3c,#0c
	db #39,#18,#37,#0c,#35,#0c,#32,#18
	db #32,#18,#3a,#0c,#3a,#18,#3a,#0c
	db #3e,#0c,#3c,#0c,#3c,#0c,#39,#06
	db #39,#06,#3a,#0c,#3e,#0c,#3c,#18
	db #94
.l628a
	db #39,#0c,#39,#0c,#39,#0c,#37
	db #06,#39,#12,#37,#0c,#39,#0c,#37
	db #06,#39,#06,#35,#3c,#34,#0c,#35
	db #0c,#37,#0c,#39,#06,#39,#06,#39
	db #0c,#37,#06,#35,#0c,#39,#0c,#39
	db #06,#37,#0c,#35,#0c,#39,#0c,#35
	db #30,#32,#06,#34,#06,#35,#06,#34
	db #06,#35,#06,#37,#06,#35,#06,#37
	db #06,#35,#78,#87,#00,#42,#00,#42
	db #00,#42,#00,#42,#94
.l62d6
	db #8a,#39,#18
	db #39,#12,#37,#06,#3a,#0c,#39,#0c
	db #37,#0c,#35,#0c,#30,#18,#30,#12
	db #35,#06,#30,#30,#39,#0c,#39,#06
	db #39,#06,#37,#0c,#39,#0c,#3a,#06
	db #3a,#06,#43,#18,#3e,#0c,#3c,#60
	db #3e,#0c,#3e,#06,#3c,#06,#40,#0c
	db #41,#0c,#43,#06,#43,#06,#45,#0c
	db #41,#0c,#3c,#0c,#3e,#60,#3e,#0c
	db #3e,#06,#3c,#06,#40,#0c,#41,#0c
	db #43,#06,#43,#06,#45,#0c,#41,#0c
	db #3c,#0c,#3e,#30,#94
.l632e
	db #32,#06,#34
	db #06,#35,#06,#34,#06,#35,#06,#37
	db #06,#35,#06,#37,#06,#35,#24,#37
	db #06,#37,#06,#39,#24,#37,#0c,#35
	db #18,#32,#18,#30,#18,#35,#0c,#39
	db #0c,#3c,#18,#3c,#18,#3e,#0c,#3e
	db #0c,#40,#18,#3e,#18,#3c,#48,#94
	db #95,#02,#00
	dw l61fe
.l6366
	db #35,#06,#37
	db #06,#39,#06,#37,#06,#39,#06,#3a
	db #06,#39,#06,#3a,#06,#3c,#06,#3a
	db #06,#3c,#06,#3e,#06,#3c,#06,#3e
	db #06,#40,#06,#41,#06,#41,#60,#87
	db #01,#60,#01,#60,#94
.l638e
	db #8a,#39,#18
	db #39,#12,#39,#06,#39,#0c,#37,#0c
	db #35,#0c,#32,#0c,#30,#30,#35,#30
	db #37,#18,#37,#0c,#37,#0c,#39,#06
	db #39,#06,#37,#0c,#35,#0c,#39,#0c
	db #37,#48,#39,#0c,#37,#0c,#35,#0c
	db #35,#0c,#35,#0c,#37,#0c,#35,#18
	db #35,#0c,#34,#0c,#32,#0c,#34,#0c
	db #35,#0c,#32,#0c,#30,#18,#39,#0c
	db #37,#0c,#35,#0c,#35,#0c,#35,#0c
	db #32,#0c,#34,#0c,#30,#0c,#34,#0c
	db #37,#0c,#35,#60,#94,#ff
.l63e7
	db #95,#02,#00
	dw l617a
	db #95,#02,#05
	dw l617a
	db #95,#02,#00
	dw l617a
	db #95,#02,#05
	dw l617a
	db #95,#02,#00
	dw l617a
	db #95,#02,#05
	dw l617a
	db #95,#02,#00
	dw l617a
	db #95,#02,#05
	dw l617a
	db #95,#02,#00
	dw l6194
	db #95,#02,#05
	dw l6194
	db #95,#02,#07
	dw l617a
	db #95,#02,#05
	dw l617a
	db #95,#04,#00
	dw l617a
	db #95,#04,#00
	dw l61ac
	db #95,#04,#05
	dw l61ac
	db #95,#04,#00
	dw l617a
	db #95,#01,#07
	dw l61ac
	db #95,#01,#05
	dw l617a
	db #95,#01,#07
	dw l61ac
	db #95,#01,#05
	dw l617a
	db #95,#04,#00
	dw l617a
	db #95,#02,#00
	dw l617a
	db #95,#02,#07
	dw l6194
	db #95,#01,#00
	dw l61ac
	db #95,#01,#05
	dw l61ac
	db #95,#02,#00
	dw l617a
	db #ff
.l646a
	db #95,#07,#00
	dw l61c4
	db #95,#01,#00
	dw l61d9
	db #95,#07,#00
	dw l61c4
	db #95,#01,#00
	dw l61d9
	db #95,#07,#00
	dw l61c4
	db #95,#01,#00
	dw l61d9
	db #95,#07,#00
	dw l61c4
	db #95,#01,#00
	dw l61d9
	db #95,#07,#00
	dw l61c4
	db #95,#01,#00
	dw l61d9
	db #95,#07,#00
	dw l61c4
	db #95,#01,#00
	dw l61d9
	db #95,#07,#00
	dw l61c4
	db #95,#01,#00
	dw l61d9
	db #95,#07,#00
	dw l61c4
	db #95,#01,#00
	dw l61d9
	db #95,#07,#00
	dw l61c4
	db #95,#01,#00
	dw l61d9
	db #95,#07,#00
	dw l61c4
	db #95,#01,#00
	dw l61d9
	db #95,#07,#00
	dw l61c4
	db #95,#01,#00
	dw l61d9
	db #95,#07,#00
	dw l61c4
	db #95,#01,#00
	dw l61d9
	db #95,#07,#00
	dw l61c4
	db #95,#01,#00
	dw l61d9
	db #95,#07,#00
	dw l61c4
	db #95,#01,#00
	dw l61d9
	db #ff
.l64f7
	db #8a,#39,#0c,#39,#0c,#39,#0c,#37
	db #06,#39,#12,#37,#0c,#39,#0c,#37
	db #06,#39,#06,#35,#3c,#34,#0c,#35
	db #0c,#37,#0c,#39,#18,#39,#0c,#39
	db #18,#37,#0c,#3c,#18,#39,#18,#39
	db #0c,#39,#0c,#39,#0c,#39,#0c,#3c
	db #18,#95,#04,#00,#f0,#61,#95,#04
	db #05
	dw l61f0
	db #95,#04,#00
	dw l61f0
	db #95,#04,#05
	dw l61f0
	db #8a,#95,#01,#00
	dw l621c
	db #95,#01,#00
	dw l628a
	db #95,#01,#00
	dw l62d6
	db #95,#01,#00
	dw l632e
	db #95,#02,#00
	dw l61fe
	db #95,#01,#00
	dw l6366
	db #95,#01,#00
	dw l638e
	db #ff
.l6561
	dw l6074,l6098,l60bd,l6074
	dw l6098,l60bd,l6125,l6169
.l6577 equ $ + 6
	dw l616f,l63e7,l646a,l64f7
	dw #0000
.l657b
	dw l5ef8,l5d6f,l5e08,#0000
	dw l5c78,l5e3f,l5dc3,l5e1f
	dw l5f4d,l5d7c,l5ca7,l5e08
.l6595 equ $ + 2
	dw l5e08,l5e28,#0000
.l6599
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
.l6678 equ $ + 7
.l6677 equ $ + 6
.l6676 equ $ + 5
.l6675 equ $ + 4
.l6674 equ $ + 3
.l6671
	db #c3,#7e,#69,#00,#00,#00,#00,#00
.l6680 equ $ + 7
.l667a equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6690 equ $ + 7
.l668a equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6692 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l66aa equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l673a
	push de
	push bc
	push hl
	push ix
	push iy
	call l674c
	pop iy
	pop ix
	pop hl
	pop bc
	pop de
	ret
;
;.init_music
.l674c
;
	ld (l6674),a
	ld a,c
	ld (l6675),a
	ld a,(l6674)
	ld iy,l668a
	cp #ff
	jp z,l684b
	dec a
	jp m,l67c6
	call l67c6
	ld a,#01
	ld (l5c61),a
	ld a,(l6674)
	dec a
	ld e,a
	add a
	add e
	add a
	ld e,a
	ld d,#00
	ld hl,l6561
	add hl,de
	ex de,hl
	ld hl,l6577
	sbc hl,de
	jp c,l67c6
	ex de,hl
	ld ix,l66aa
	ld b,#03
.l678a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),e
	ld (ix+#0d),d
	ld (ix+#0a),#01
	ld de,#0018
	add ix,de
	djnz l678a
	ret
.l67a0
	ret
.l67a1
	ret
	push iy
	push ix
	pop iy
	ld de,#0018
	ld a,(iy+#05)
	cp (ix+#1d)
	jr c,l67b5
	add iy,de
.l67b5
	ld a,(iy+#05)
	cp (ix+#35)
	jr c,l67bf
	add iy,de
.l67bf
	push iy
	pop ix
	pop iy
	ret
.l67c6
	ld ix,l66aa
	ld b,#03
	ld hl,l6692
	ld de,#0018
	ld a,#00
.l67d4
	ld (hl),a
	inc hl
	ld (ix+#05),a
	ld (ix+#0e),a
	ld (ix+#0f),a
	ld (ix+#13),a
	ld (ix+#14),a
	ld (ix+#06),a
	add ix,de
	djnz l67d4
	ld (l6677),a
	ld (l5c61),a
	jp l67a1
.l67f5
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
	ld a,(l6676)
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
.l6834
	dec e
	jp m,l683e
	sla b
	sla c
	jr l6834
.l683e
	ld a,c
	xor b
	ld b,a
	ld a,c
	cpl
	and (iy+#07)
	or b
	ld (iy+#07),a
	ret
.l684b
	ld a,#10
	ld (l6677),a
	ld a,c
	ld (l667a),a
	ld a,#00
	ld (l6678),a
	ret
.l685a
	ld a,(l6677)
	and a
	ret z
	ld a,(l6678)
	dec a
	ld (l6678),a
	jp p,l687f
	ld a,(l667a)
	ld (l6678),a
	ld a,(l6677)
	dec a
	ld (l6677),a
	jr nz,l687f
	ld a,#00
	ld c,#00
	jp l674c
.l687f
	ld hl,l6692
	ld b,#03
.l6884
	ld d,(hl)
	ld a,(l6677)
	ld e,a
	xor a
	dec e
	jp m,l6893
.l688e
	add d
	dec e
	jp p,l688e
.l6893
	srl a
	srl a
	srl a
	srl a
	ld (hl),a
	inc hl
	djnz l6884
	ret
.l68a0
	ld b,#03
.l68a2
	ld a,(ix+#05)
	and a
	jp z,l6947
	inc a
	jp z,l6947
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(ix+#06)
	add #05
	ld e,a
	ld d,#00
	add hl,de
	bit 0,(ix+#07)
	jr z,l6900
	ld a,(hl)
	cp #fe
	jr nz,l68da
	inc (ix+#06)
	inc (ix+#06)
	inc hl
	ld a,(hl)
	push ix
	push bc
	call l67a0
	pop bc
	pop ix
	jr l68a2
.l68da
	cp #ff
	jr nz,l68e4
	ld (ix+#06),#00
	jr l68a2
.l68e4
	ld c,a
	ld a,(ix+#00)
	add #08
	ld (l68ef),a
.l68ef equ $ + 2
	ld (iy+#00),c
	ld a,c
	and a
	jr nz,l68fa
	ld (ix+#05),#00
	jr l6947
.l68fa
	ld e,(ix+#08)
	ld d,#00
	add hl,de
.l6900
	bit 1,(ix+#07)
	jr z,l693a
	ld e,(hl)
	ld d,#00
	bit 7,e
	jr z,l690e
	dec d
.l690e
	push hl
	ld l,(ix+#01)
	ld h,(ix+#02)
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	pop hl
	ld a,(ix+#00)
	add a
	ld (l692d),a
	inc a
	ld (l6933),a
	ld a,(ix+#01)
.l692d equ $ + 2
	ld (iy+#00),a
	ld a,(ix+#02)
.l6933 equ $ + 2
	ld (iy+#00),a
	ld e,(ix+#08)
	ld d,#00
	add hl,de
.l693a
	bit 2,(ix+#07)
	jr z,l6944
	ld a,(hl)
	ld (iy+#06),a
.l6944
	inc (ix+#06)
.l6947
	ld de,#0018
	add ix,de
	dec b
	jp nz,l68a2
	ret
;
.play_music
.l6951
;
	push af
	push bc
	push de
	push hl
	push ix
	push iy
.l6959
	call l6b2b
	ld a,#ff
	ld (l6680),a
	ld (l6690),a
	ld iy,l668a
	ld ix,l66aa
	call l68a0
	call l685a
	call l699e
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
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
.l699e
	ld iy,l667a
	ld ix,l66aa
	ld e,#00
	call l6a27
	ld e,#01
	call l6a27
	ld e,#08
	call l6a27
	ld bc,#0018
	add ix,bc
	ld e,#02
	call l6a27
	ld e,#03
	call l6a27
	ld e,#09
	call l6a27
	ld bc,#0018
	add ix,bc
	ld e,#04
	call l6a27
	ld e,#05
	call l6a27
	ld e,#0a
	call l6a27
	ld e,#06
	ld a,(iy+#06)
	cp #ff
	jr nz,l69ed
	ld a,(iy+#16)
	cp #ff
	jr z,l69f1
.l69ed
	ld d,a
	call l6671
.l69f1
	ld ix,l66aa
	ld b,#03
	ld c,#09
	ld h,#00
	ld de,#0018
.l69fe
	ld l,(iy+#17)
	ld a,(ix+#4d)
	and a
	jr z,l6a0f
	inc a
	jr z,l6a0f
	ld l,(iy+#07)
	jr l6a17
.l6a0f
	ld a,(ix+#05)
	and a
	jr nz,l6a17
	ld l,#ff
.l6a17
	ld a,l
	and c
	sla c
	or h
	ld h,a
	add ix,de
	djnz l69fe
	ld d,h
	ld e,#07
	jp l6671
.l6a27
	ld a,e
	ld (l6a3e),a
	add #10
	ld (l6a32),a
.l6a32 equ $ + 2
	ld d,(iy+#00)
	ld a,(ix+#4d)
	and a
	jr z,l6a3f
	inc a
	jr z,l6a3f
.l6a3e equ $ + 2
	ld d,(iy+#00)
.l6a3f
	jp l6671
.l6a42
	push ix
	pop iy
	ld a,(ix+#13)
	and a
	jr z,l6a51
	ld de,#0006
	add iy,de
.l6a51
	ld l,(iy+#0c)
	ld h,(iy+#0d)
	ld e,(iy+#0e)
	ld d,#00
	add hl,de
	bit 7,(hl)
	jr nz,l6a68
	inc (iy+#0e)
	inc (iy+#0e)
	ret
.l6a68
	ld a,(hl)
	cp #94
	jp z,l6ab8
	cp #95
	jp z,l6ac9
	cp #9d
	jp z,l6aec
	cp #9e
	jp z,l6b00
	cp #ff
	jp z,l6b14
	cp #fe
	jp z,l6b23
	res 7,a
	add a
	ld e,a
	ld d,#00
	ld hl,l657b
	add hl,de
	ex de,hl
	ld hl,l6595
	sbc hl,de
	jr nc,l6a9c
	ld de,l657b
.l6a9c
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	push bc
	push iy
	ld iy,l668a
	call l67f5
	ld (ix+#09),#ff
	pop iy
	pop bc
	inc (iy+#0e)
	jp l6a42
.l6ab8
	ld (iy+#0e),#00
	dec (ix+#0b)
	jp nz,l6a42
	ld (ix+#13),#00
	jp l6a42
.l6ac9
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
	jp l6a42
.l6aec
	dec (iy+#0f)
	jr nz,l6af7
	inc (iy+#0e)
	jp l6a42
.l6af7
	ld a,(iy+#10)
	ld (iy+#0e),a
	jp l6a42
.l6b00
	inc (iy+#0e)
	inc (iy+#0e)
	ld a,(iy+#0e)
	ld (iy+#10),a
	inc hl
	ld a,(hl)
	ld (iy+#0f),a
	jp l6a42
.l6b14
	pop bc
	pop bc
	ld a,(l6675)
	ld c,a
	ld a,(l6674)
	call l674c
	jp l6959
.l6b23
	pop bc
	pop bc
	call l67c6
	jp l6959
.l6b2b
	ld a,(l5c61)
	and a
	ret z
	ld ix,l66aa
	ld b,#03
.l6b36
	dec (ix+#0a)
	jr nz,l6b68
	call l6a42
	ld a,(hl)
	and a
	jr z,l6b45
	add (iy+#11)
.l6b45
	add a
	ld e,a
	ld d,#00
	ld iy,l6599
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
.l6b68
	ld de,#0018
	add ix,de
	djnz l6b36
	ret
;
.init_music		; added by Megachur
;
	ld c,3
	jp l673a	; init a=1->4 (4 = main theme) c=3
;
.music_info
	db "Italy 1990 (1990)(US Gold)(Mike Davies)",0
	db "",0

	read "music_end.asm"
