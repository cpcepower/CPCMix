; Music of Strider 2 (1990)(US Gold)()()
; Ripped by Megachur the 14/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "STRIDER2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #4000
FIRST_THEME				equ 1
LAST_THEME				equ 4

	read "music_header.asm"
	
	jp l400a	; init sound fx !
	jp l4019	; init music	a=0 stop ! a=1 init theme c=1,2,3,4
	jp l4028	; play music
.l4009
.music_end
	db #00
.l400a
	ld (l5027),sp
	ld sp,l508d
	call l4b6a
	ld sp,(l5027)
	ret
.l4019
	ld (l5027),sp
	ld sp,l508d
	call l4b01
	ld sp,(l5027)
	ret
.l4028
	call l4de6
	ret
.l402c
	db #0d,#20,#01,#00,#01,#0d,#0c,#0b
	db #0a,#08,#06,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#02
	db #03,#04,#05,#06,#07,#08,#09,#0a
	db #0b,#0c,#0d,#0e,#0f,#10,#11,#12
	db #13,#14,#15,#16,#17,#18,#19,#1a
.l4071 equ $ + 5
	db #1b,#1c,#1d,#1e,#1f,#13,#20,#01
	db #00,#01,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#ff,#00
	db #ff,#00,#ff,#00,#ff,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l40b6 equ $ + 2
	db #00,#00,#13,#09,#01,#00,#01,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#ff
	db #02,#02,#fe,#fe,#fe,#fe,#02,#02
.l40cd equ $ + 1
	db #00,#13,#09,#01,#00,#01,#0d,#0d
	db #0c,#0c,#0b,#0b,#0c,#0c,#ff,#01
	db #01,#ff,#ff,#ff,#ff,#01,#01,#00
.l40e4
	db #13,#02,#01,#00,#01,#00,#00,#00
.l40ed equ $ + 1
	db #00,#13,#09,#01,#00,#01,#0c,#0c
	db #0b,#0b,#0c,#0c,#0b,#0b,#ff,#ff
	db #01,#01,#ff,#ff,#01,#01,#ff,#00
.l4104
	db #13,#20,#01,#00,#01,#0f,#0e,#0d
	db #0c,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#01,#00,#01
	db #00,#ff,#00,#ff,#00,#ff,#00,#ff
	db #00,#01,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4149 equ $ + 5
	db #00,#00,#00,#00,#00,#0d,#37,#04
	db #00,#03,#0f,#0f,#0f,#0f,#0e,#0e
	db #0e,#0e,#0d,#0d,#0d,#0d,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0a,#0a
	db #0a,#0a,#09,#09,#09,#09,#08,#08
	db #08,#07,#07,#07,#06,#06,#06,#05
	db #05,#04,#04,#03,#03,#02,#02,#01
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#04,#05,#06,#07,#08,#09
	db #0a,#0b,#0c,#0d,#0e,#0f,#10,#11
	db #12,#12,#18,#18,#18,#14,#15,#15
	db #16,#16,#17,#17,#18,#18,#18,#18
	db #18,#1e,#1e,#1e,#1e,#1e,#1e,#1e
	db #1e,#1e,#1e,#1e,#1e,#1e,#1e,#1e
	db #1e,#1e,#1e,#1e,#1e,#1e,#1e,#1e
.l41bc
	db #0d,#32,#02,#00,#06,#fe,#03,#0f
	db #0f,#0f,#0f,#0f,#0f,#0e,#0e,#0e
	db #0e,#0e,#0d,#0d,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#05,#04,#03,#02,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#00,#00
	db #00,#02,#03,#03,#03,#03,#04,#04
	db #04,#04,#04,#1a,#04,#1a,#04,#1a
	db #04,#1a,#04,#1a,#04,#1a,#04,#1a
	db #04,#1a,#04,#1a,#04,#1a,#04,#1a
	db #04,#1a,#04,#1a,#04,#1a,#04,#1a
	db #04,#1a,#04,#1a,#04,#1a,#04,#1a
.l4225 equ $ + 1
	db #04,#13,#30,#00,#01,#02,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0b,#0c,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#08,#07,#06,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#ff
	db #00,#00,#00,#ff,#00,#00,#00,#00
	db #ff,#01,#ff,#01,#ff,#01,#ff,#01
	db #ff,#01,#ff,#01,#ff,#01,#ff,#01
	db #ff,#01,#ff,#01,#ff,#01,#ff,#01
	db #ff,#01,#ff,#01,#ff,#01,#ff,#01
.l428a equ $ + 6
	db #ff,#01,#ff,#01,#ff,#01,#13,#20
	db #00,#01,#04,#0f,#0d,#0e,#0c,#0d
	db #0b,#0c,#0a,#0b,#09,#0a,#08,#09
	db #07,#08,#06,#07,#05,#06,#04,#05
	db #03,#04,#02,#03,#01,#02,#00,#01
	db #00,#00,#00,#50,#50,#50,#50,#50
	db #50,#50,#50,#50,#50,#50,#50,#46
	db #3c,#32,#28,#1e,#14,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l42cf equ $ + 3
	db #00,#00,#00,#13,#20,#00,#01,#05
	db #0d,#0d,#0d,#0d,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #7f,#ff,#ff,#ba,#ba,#ba,#ba,#ba
	db #ba,#ba,#ba,#ba,#ba,#ba,#ba,#ba
	db #ba,#ba,#ba,#ba,#ba,#ba,#ba,#ba
	db #ba,#ba,#ba,#ba,#ba,#ba,#ba,#ba
.l4314
	db #13,#20,#00,#03,#04,#0d,#0f,#0e
	db #0c,#0a,#07,#03,#01,#0d,#0f,#0e
	db #0c,#0a,#07,#03,#01,#0d,#0f,#0e
	db #0c,#0a,#07,#03,#01,#0d,#0f,#0e
	db #0c,#0a,#07,#03,#00,#78,#d8,#d8
	db #00,#00,#00,#00,#78,#d8,#d8,#d8
	db #00,#00,#00,#00,#64,#d8,#d8,#d8
	db #00,#00,#00,#00,#78,#d8,#d8,#d8
.l4359 equ $ + 5
	db #00,#00,#00,#00,#78,#13,#08,#64
	db #03,#03,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#00,#81,#81,#a8,#85,#7d,#81
.l436e equ $ + 2
	db #a8,#85,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
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
	db #81,#0c,#06,#0c,#06,#0c,#06,#0c
	db #06,#0c,#06,#0c,#06,#0c,#06,#0c
	db #06,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#94,#0c,#06,#0c,#06,#0c,#06
	db #0c,#06,#94,#0c,#06,#0c,#06,#0c
	db #06,#0c,#06,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#94,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#94,#2e,#0c,#2e
	db #0c,#2d,#0c,#29,#0c,#2b,#0c,#2d
	db #0c,#2e,#0c,#30,#0c,#94,#1c,#0c
	db #13,#0c,#15,#18,#15,#0c,#17,#0c
	db #18,#18,#94,#84,#00,#0c,#81,#0c
	db #06,#0c,#06,#0c,#06,#0c,#06,#0c
	db #06,#0c,#06,#0c,#18,#0c,#0c,#0c
	db #0c,#94,#0c,#24,#0c,#0c,#0c,#24
.l44c9 equ $ + 3
	db #0c,#0c,#94,#95
	db #02,#15,#46,#44,#95,#02,#0e,#46
	db #44,#95,#01,#11,#60,#44,#95,#01
	db #13,#69,#44,#95,#01,#13,#46,#44
	db #95,#02,#0f,#46,#44,#95,#01,#13
	db #60,#44,#95,#01,#15,#69,#44,#95
	db #03,#15,#7a,#44,#95,#01,#15,#a9
	db #44,#95,#01,#18,#a9,#44,#95,#02
	db #11,#a9,#44,#95,#01,#13,#a9,#44
	db #95,#01,#f4,#8b,#44,#95,#02,#1a
	db #a9,#44,#95,#01,#15,#a9,#44,#95
	db #01,#18,#a9,#44,#95,#02,#11,#a9
	db #44,#95,#01,#15,#c0,#44,#95,#01
	db #18,#c0,#44,#95,#02,#0c,#9c,#44
	db #95,#02,#17,#46,#44,#95,#02,#10
	db #46,#44,#95,#01,#13,#60,#44,#95
	db #01,#15,#69,#44,#95,#01,#15,#46
	db #44,#95,#02,#11,#46,#44,#95,#01
	db #15,#60,#44,#95,#01,#17,#69,#44
	db #95,#03,#17,#7a,#44,#95,#01,#17
	db #46,#44,#95,#01,#1a,#46,#44,#95
	db #02,#13,#46,#44,#95,#01,#15,#46
	db #44,#95,#01,#f6,#8b,#44,#95,#02
	db #1c,#46,#44,#95,#01,#17,#46,#44
	db #95,#01,#1a,#46,#44,#95,#02,#13
	db #46,#44,#95,#01,#17,#46,#44,#95
	db #01,#1a,#46,#44,#95,#02,#0e,#9c
	db #44,#ff,#84,#00,#a8,#83,#30,#0c
	db #2b,#0c,#2a,#6c,#29,#06,#2b,#06
	db #2d,#0c,#2f,#0c,#30,#0c,#32,#18
	db #34,#0c,#35,#0c,#34,#06,#35,#06
	db #37,#90,#39,#0c,#37,#0c,#33,#6c
	db #32,#06,#34,#06,#35,#0c,#37,#0c
	db #39,#0c,#3b,#18,#3c,#0c,#3e,#0c
	db #3c,#06,#3e,#06,#40,#a8,#84,#00
	db #60,#00,#60,#81,#2d,#06,#2d,#06
	db #2d,#06,#2d,#06,#2d,#06,#2d,#06
	db #2d,#06,#83,#2d,#06,#34,#0c,#2f
	db #0c,#30,#0c,#2d,#0c,#81,#30,#06
	db #30,#06,#30,#06,#30,#06,#30,#06
	db #30,#06,#30,#06,#83,#30,#06,#37
	db #0c,#32,#0c,#33,#0c,#30,#0c,#35
	db #60,#35,#60,#81,#2b,#06,#2b,#06
	db #2b,#06,#2b,#06,#2b,#06,#2b,#06
	db #2b,#06,#83,#2b,#06,#32,#0c,#2d
	db #0c,#2e,#0c,#2b,#0c,#2e,#18,#2d
	db #0c,#29,#0c,#2b,#0c,#2d,#0c,#2e
	db #0c,#30,#0c,#32,#60,#32,#60,#94
	db #86,#2d,#06,#2f,#06,#30,#06,#2f
	db #06,#2d,#06,#2f,#06,#30,#06,#2f
	db #06,#34,#06,#2d,#06,#32,#06,#2d
	db #06,#30,#06,#2d,#06,#2f,#06,#2d
	db #06,#30,#06,#32,#06,#33,#06,#32
	db #06,#30,#06,#32,#06,#33,#06,#32
	db #06,#37,#06,#30,#06,#35,#06,#30
	db #06,#33,#06,#30,#06,#32,#06,#30
	db #06,#83,#35,#60,#35,#60,#86,#2d
	db #06,#2d,#06,#30,#06,#30,#06,#2d
	db #06,#2d,#06,#30,#06,#30,#06,#34
	db #0c,#30,#0c,#32,#0c,#2f,#0c,#30
	db #06,#30,#06,#33,#06,#33,#06,#30
	db #06,#30,#06,#33,#06,#33,#06,#37
	db #0c,#33,#0c,#35,#0c,#32,#0c,#86
	db #39,#06,#37,#06,#35,#06,#34,#06
	db #35,#06,#34,#06,#32,#06,#30,#06
	db #32,#06,#30,#06,#2d,#06,#2f,#06
	db #83,#30,#18,#86,#39,#06,#37,#06
	db #35,#06,#34,#06,#35,#06,#34,#06
	db #32,#06,#30,#06,#32,#06,#30,#06
	db #2d,#06,#2f,#06,#83,#30,#18,#94
.l46f2
	db #95,#01,#00,#9c,#45,#95,#01,#00
	db #42,#46,#95,#01,#02,#9c,#45,#95
	db #01,#02,#42,#46,#ff,#85,#15,#60
	db #15,#60,#0e,#60,#0e,#60,#11,#18
	db #13,#48,#13,#60,#0f,#60,#0f,#60
	db #13,#18,#15,#48,#15,#60,#15,#60
	db #15,#60,#15,#60,#18,#60,#11,#60
	db #11,#06,#13,#06,#14,#06,#13,#06
	db #11,#06,#13,#06,#14,#06,#13,#06
	db #11,#06,#13,#06,#14,#06,#13,#06
	db #11,#06,#13,#06,#14,#06,#13,#06
	db #13,#60,#16,#0c,#16,#0c,#15,#0c
	db #11,#0c,#13,#0c,#15,#0c,#16,#0c
	db #18,#0c,#1a,#60,#1a,#03,#1c,#03
	db #1a,#03,#1e,#03,#1a,#03,#20,#03
	db #1a,#03,#22,#03,#1a,#03,#24,#03
	db #1a,#03,#26,#03,#1a,#03,#28,#03
	db #1a,#03,#2a,#03,#1a,#03,#2c,#03
	db #1a,#03,#2e,#03,#1a,#03,#30,#03
	db #1a,#03,#32,#03,#1a,#03,#34,#03
	db #1a,#03,#36,#03,#1a,#03,#38,#03
	db #1a,#03,#3a,#03,#15,#60,#18,#60
	db #11,#60,#11,#06,#13,#06,#14,#06
	db #13,#06,#11,#06,#13,#06,#14,#06
	db #13,#06,#11,#06,#13,#06,#14,#06
	db #13,#06,#11,#06,#13,#06,#14,#06
	db #13,#06,#15,#60,#18,#60,#0c,#60
.l47cd equ $ + 3
	db #0c,#60,#94,#95,#01,#18,#07,#47
	db #95,#01,#1a,#07,#47,#ff,#81,#0c
	db #06,#0c,#06,#0c,#06,#0c,#06,#0c
	db #18,#94,#19,#18,#18,#18,#16,#18
	db #14,#18,#94,#81,#17,#18,#17,#18
	db #19,#18,#19,#18,#17,#18,#17,#18
	db #19,#18,#19,#18,#17,#18,#17,#18
	db #19,#18,#19,#18,#17,#18,#17,#18
	db #16,#18,#16,#18,#14,#18,#14,#18
	db #11,#18,#11,#18,#14,#18,#14,#18
	db #19,#18,#18,#18,#16,#18,#14,#18
	db #12,#18,#12,#18,#12,#18,#12,#18
	db #16,#18,#16,#18,#16,#18,#16,#18
	db #16,#18,#16,#18,#16,#18,#16,#18
.l4840 equ $ + 6
.l483b equ $ + 1
	db #94,#95,#ff,#00,#ed,#47,#95,#01
	db #0b,#d8,#47,#95,#01,#0d,#d8,#47
	db #95,#01,#0b,#d8,#47,#95,#01,#0d
	db #d8,#47,#95,#01,#0b,#d8,#47,#95
	db #01,#0d,#d8,#47,#95,#01,#0b,#d8
	db #47,#95,#01,#0a,#d8,#47,#95,#01
	db #08,#d8,#47,#95,#01,#05,#d8,#47
	db #95,#01,#08,#d8,#47,#95,#01,#05
	db #e4,#47,#95,#02,#06,#d8,#47,#95
	db #04,#0a,#d8,#47,#ff,#83,#31,#03
	db #2f,#2d,#31,#30,#31,#03,#2f,#27
	db #31,#03,#36,#03,#35,#30,#31,#03
	db #2f,#2d,#31,#30,#31,#03,#2f,#27
	db #31,#03,#36,#03,#35,#30,#2c,#30
	db #29,#30,#2e,#03,#2c,#27,#2c,#03
	db #2e,#03,#31,#30,#2e,#27,#2c,#03
	db #2e,#03,#2c,#03,#2a,#60,#2e,#60
.l48c5 equ $ + 3
	db #2e,#60,#94,#95,#ff,#00,#87,#48
	db #82,#35,#24,#37,#36,#35,#09,#37
	db #09,#38,#09,#3a,#09,#38,#09,#37
	db #09,#35,#09,#3c,#09,#39,#90,#94
.l48e2
	db #95,#01,#00,#ca,#48,#fe,#83,#25
	db #24,#27,#36,#25,#12,#27,#12,#25
.l48f8 equ $ + 6
	db #12,#27,#12,#29,#90,#94,#95,#01
	db #00,#e8,#48,#fe,#83,#3d,#03,#3c
	db #03,#3a,#03,#38,#03,#3a,#03,#38
	db #03,#37,#03,#35,#03,#38,#03,#37
	db #03,#35,#03,#33,#03,#34,#03,#33
	db #03,#31,#03,#30,#03,#94,#3d,#03
	db #3c,#03,#3a,#03,#38,#03,#3a,#03
	db #38,#03,#37,#03,#35,#03,#94,#3c
	db #03,#39,#03,#35,#03,#3c,#03,#39
	db #03,#35,#03,#3c,#03,#39,#03,#35
	db #03,#3c,#03,#39,#03,#35,#03,#3c
	db #03,#39,#03,#35,#03,#3c,#03,#39
	db #03,#35,#03,#3c,#03,#39,#03,#35
	db #03,#3c,#03,#39,#03,#35,#03,#3c
	db #03,#39,#03,#35,#03,#3c,#03,#39
	db #03,#35,#03,#3c,#03,#39,#03,#94
.l4972
	db #95,#01,#18,#fe,#48,#95,#01,#0c
	db #fe,#48,#95,#01,#00,#fe,#48,#95
	db #01,#f4,#20,#49,#95,#01,#00,#31
.l498c equ $ + 2
	db #49,#fe,#82,#21,#18,#1f,#18,#1f
	db #18,#1f,#18,#24,#18,#22,#18,#20
	db #18,#1f,#18,#1b,#18,#1d,#18,#1d
	db #18,#1d,#18,#94,#82,#24,#18,#23
	db #18,#23,#18,#23,#18,#28,#18,#26
	db #18,#24,#18,#22,#18,#1f,#18,#21
.l49c0 equ $ + 6
	db #18,#21,#18,#21,#18,#94,#83,#39
	db #0c,#37,#06,#39,#06,#3b,#48,#40
	db #0c,#3e,#06,#3c,#06,#3e,#0c,#3c
	db #06,#3a,#06,#3c,#0c,#3a,#06,#38
	db #06,#3a,#0c,#38,#06,#37,#06,#3a
	db #0f,#38,#03,#3a,#06,#3c,#48,#94
.l49ea
	db #95,#01,#00
	dw l498c
	db #fe
.l49f0
	db #95,#01,#18
	dw l498c
	db #fe
.l49f6
	db #95,#01,#00
	dw l49c0
	db #fe
.l49fc
	dw l44c9,l46f2,l47cd,l483b
	dw l4840,l48c5,l4972,l48f8
.l4a12 equ $ + 6
	dw l48e2,l49ea,l49f0,l49f6
	dw #0000
.l4a16
	dw l4149,l41bc,l4225,l428a
.l4a24 equ $ + 6
	dw l42cf,l4314,l4359,l4071
	dw #0000
.l4a28
	dw l402c,l4071,l40b6,l40cd
.l4a34 equ $ + 4
	dw l40e4,l40ed,l4104,#0000
.l4a38
	jp l4e35
.l4a3f equ $ + 4
.l4a3e equ $ + 3
.l4a3d equ $ + 2
.l4a3c equ $ + 1
.l4a3b
	db #00,#00,#00,#00,#00,#00
.l4a47 equ $ + 6
.l4a41
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a49
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a57 equ $ + 6
.l4a51
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a59
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a61
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a71
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4ab9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00

.l4b01
	push de
	push bc
	push hl
	push ix
	push iy
	call l4b13
	pop iy
	pop ix
	pop hl
	pop bc
	pop de
	ret
.l4b13
	ld (l4a3b),a
	ld a,c
	ld (l4a3c),a
	ld a,(l4a3b)
	ld iy,l4a51
	cp #ff
	jp z,l4ce0
	dec a
	jp m,l4c3d
	call l4c3d
	ld a,#01
	ld (l4009),a
	call l4bd7
	ld a,(l4a3b)
	dec a
	ld e,a
	add a
	add e
	add a
	ld e,a
	ld d,#00
	ld hl,l49fc
	add hl,de
	ex de,hl
	ld hl,l4a12
	sbc hl,de
	jp c,l4c3d
	ex de,hl
	ld ix,l4a71
	ld b,#03
.l4b54
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),e
	ld (ix+#0d),d
	ld (ix+#0a),#01
	ld de,#0018
	add ix,de
	djnz l4b54
	ret
.l4b6a
	push de
	push bc
	push hl
	push ix
	push iy
	call l4b7c
	pop iy
	pop ix
	pop hl
	pop bc
	pop de
	ret
.l4b7c
	ld iy,l4a41
	ld ix,l4ab9
	ld (l4a3d),a
	dec a
	jp m,l4c6c
	add a
	ld e,a
	ld d,#00
	ld hl,l4a16
	add hl,de
	ex de,hl
	ld hl,l4a24
	sbc hl,de
	ret c
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld b,#03
	ld ix,l4ab9
	ld a,(l4a3d)
	ld c,a
	ld de,#0018
.l4bac
	ld a,(ix+#09)
	cp c
	jr nz,l4bbc
	ld a,(ix+#05)
	and a
	jr z,l4bbc
	inc a
	jp nz,l4c8a
.l4bbc
	add ix,de
	djnz l4bac
	ld ix,l4ab9
	ld de,#0004
	add hl,de
	ld c,(hl)
	and a
	sbc hl,de
	call l4c19
	ld a,(ix+#05)
	cp c
	ret nc
	jp l4c8a
.l4bd7
	push ix
	ld ix,l4ab9
	ld hl,l4a49
	ld a,(l4a3c)
	ld c,a
	xor a
	ld de,#0018
.l4be8
	dec c
	jp m,l4bf3
	ld (ix+#05),#ff
	ld (hl),#00
	inc hl
.l4bf3
	add ix,de
	inc a
	cp #03
	jr c,l4be8
	pop ix
	ret
.l4bfd
	push ix
	ld ix,l4ab9
	ld b,#03
	ld de,#0018
.l4c08
	ld a,(ix+#05)
	inc a
	jr nz,l4c12
	ld (ix+#05),#00
.l4c12
	add ix,de
	djnz l4c08
	pop ix
	ret
.l4c19
	push iy
	push ix
	pop iy
	ld de,#0018
	ld a,(iy+#05)
	cp (ix+#1d)
	jr c,l4c2c
	add iy,de
.l4c2c
	ld a,(iy+#05)
	cp (ix+#35)
	jr c,l4c36
	add iy,de
.l4c36
	push iy
	pop ix
	pop iy
	ret
.l4c3d
	ld ix,l4a71
	ld b,#03
	ld hl,l4a59
	ld de,#0018
	ld a,#00
.l4c4b
	ld (hl),a
	inc hl
	ld (ix+#05),a
	ld (ix+#0e),a
	ld (ix+#0f),a
	ld (ix+#13),a
	ld (ix+#14),a
	ld (ix+#06),a
	add ix,de
	djnz l4c4b
	ld (l4a3e),a
	ld (l4009),a
	jp l4bfd
.l4c6c
	ld b,#03
	ld ix,l4ab9
	ld hl,l4a49
	ld de,#0018
.l4c78
	ld (hl),#00
	inc hl
	ld a,(ix+#05)
	inc a
	jr z,l4c85
	ld (ix+#05),#00
.l4c85
	add ix,de
	djnz l4c78
	ret
.l4c8a
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
	ld a,(l4a3d)
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
.l4cc9
	dec e
	jp m,l4cd3
	sla b
	sla c
	jr l4cc9
.l4cd3
	ld a,c
	xor b
	ld b,a
	ld a,c
	cpl
	and (iy+#07)
	or b
	ld (iy+#07),a
	ret
.l4ce0
	ld a,#10
	ld (l4a3e),a
	ld a,c
	ld (l4a41),a
	ld a,#00
	ld (l4a3f),a
	ret
.l4cef
	ld a,(l4a3e)
	and a
	ret z
	ld a,(l4a3f)
	dec a
	ld (l4a3f),a
	jp p,l4d14
	ld a,(l4a41)
	ld (l4a3f),a
	ld a,(l4a3e)
	dec a
	ld (l4a3e),a
	jr nz,l4d14
	ld a,#00
	ld c,#00
	jp l4b01
.l4d14
	ld hl,l4a59
	ld b,#03
.l4d19
	ld d,(hl)
	ld a,(l4a3e)
	ld e,a
	xor a
	dec e
	jp m,l4d28
.l4d23
	add d
	dec e
	jp p,l4d23
.l4d28
	srl a
	srl a
	srl a
	srl a
	ld (hl),a
	inc hl
	djnz l4d19
	ret
.l4d35
	ld b,#03
.l4d37
	ld a,(ix+#05)
	and a
	jp z,l4ddc
	inc a
	jp z,l4ddc
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(ix+#06)
	add #05
	ld e,a
	ld d,#00
	add hl,de
	bit 0,(ix+#07)
	jr z,l4d95
	ld a,(hl)
	cp #fe
	jr nz,l4d6f
	inc (ix+#06)
	inc (ix+#06)
	inc hl
	ld a,(hl)
	push ix
	push bc
	call l4b6a
	pop bc
	pop ix
	jr l4d37
.l4d6f
	cp #ff
	jr nz,l4d79
	ld (ix+#06),#00
	jr l4d37
.l4d79
	ld c,a
	ld a,(ix+#00)
	add #08
	ld (l4d84),a
.l4d84 equ $ + 2
	ld (iy+#00),c
	ld a,c
	and a
	jr nz,l4d8f
	ld (ix+#05),#00
	jr l4ddc
.l4d8f
	ld e,(ix+#08)
	ld d,#00
	add hl,de
.l4d95
	bit 1,(ix+#07)
	jr z,l4dcf
	ld e,(hl)
	ld d,#00
	bit 7,e
	jr z,l4da3
	dec d
.l4da3
	push hl
	ld l,(ix+#01)
	ld h,(ix+#02)
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	pop hl
	ld a,(ix+#00)
	add a
	ld (l4dc2),a
	inc a
	ld (l4dc8),a
	ld a,(ix+#01)
.l4dc2 equ $ + 2
	ld (iy+#00),a
	ld a,(ix+#02)
.l4dc8 equ $ + 2
	ld (iy+#00),a
	ld e,(ix+#08)
	ld d,#00
	add hl,de
.l4dcf
	bit 2,(ix+#07)
	jr z,l4dd9
	ld a,(hl)
	ld (iy+#06),a
.l4dd9
	inc (ix+#06)
.l4ddc
	ld de,#0018
	add ix,de
	dec b
	jp nz,l4d37
	ret
;
.l4de6
.play_music
;
	push af
	push bc
	push de
	push hl
	push ix
	push iy
.l4dee
	call l4fe2
	ld a,#ff
	ld (l4a47),a
	ld (l4a57),a
	ld iy,l4a51
	ld ix,l4a71
	call l4d35
	ld iy,l4a41
	ld ix,l4ab9
	call l4d35
	call l4cef
	call l4e55
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
	ld a,e
	ld hl,l4a61
	ld c,e
	ld b,#00
	add hl,bc
	ld a,(hl)
	cp d
	ret z
	ld (hl),d
	ld bc,#fffd
	out (c),e
	ld bc,#bffd
	out (c),d
	ret
.l4e35
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
.l4e55
	ld iy,l4a41
	ld ix,l4a71
	ld e,#00
	call l4ede
	ld e,#01
	call l4ede
	ld e,#08
	call l4ede
	ld bc,#0018
	add ix,bc
	ld e,#02
	call l4ede
	ld e,#03
	call l4ede
	ld e,#09
	call l4ede
	ld bc,#0018
	add ix,bc
	ld e,#04
	call l4ede
	ld e,#05
	call l4ede
	ld e,#0a
	call l4ede
	ld e,#06
	ld a,(iy+#06)
	cp #ff
	jr nz,l4ea4
	ld a,(iy+#16)
	cp #ff
	jr z,l4ea8
.l4ea4
	ld d,a
	call l4a38
.l4ea8
	ld ix,l4a71
	ld b,#03
	ld c,#09
	ld h,#00
	ld de,#0018
.l4eb5
	ld l,(iy+#17)
	ld a,(ix+#4d)
	and a
	jr z,l4ec6
	inc a
	jr z,l4ec6
	ld l,(iy+#07)
	jr l4ece
.l4ec6
	ld a,(ix+#05)
	and a
	jr nz,l4ece
	ld l,#ff
.l4ece
	ld a,l
	and c
	sla c
	or h
	ld h,a
	add ix,de
	djnz l4eb5
	ld d,h
	ld e,#07
	jp l4a38
.l4ede
	ld a,e
	ld (l4ef5),a
	add #10
	ld (l4ee9),a
.l4ee9 equ $ + 2
	ld d,(iy+#00)
	ld a,(ix+#4d)
	and a
	jr z,l4ef6
	inc a
	jr z,l4ef6
.l4ef5 equ $ + 2
	ld d,(iy+#00)
.l4ef6
	jp l4a38
.l4ef9
	push ix
	pop iy
	ld a,(ix+#13)
	and a
	jr z,l4f08
	ld de,#0006
	add iy,de
.l4f08
	ld l,(iy+#0c)
	ld h,(iy+#0d)
	ld e,(iy+#0e)
	ld d,#00
	add hl,de
	bit 7,(hl)
	jr nz,l4f1f
	inc (iy+#0e)
	inc (iy+#0e)
	ret
.l4f1f
	ld a,(hl)
	cp #94
	jp z,l4f6f
	cp #95
	jp z,l4f80
	cp #9d
	jp z,l4fa3
	cp #9e
	jp z,l4fb7
	cp #ff
	jp z,l4fcb
	cp #fe
	jp z,l4fda
	res 7,a
	add a
	ld e,a
	ld d,#00
	ld hl,l4a28
	add hl,de
	ex de,hl
	ld hl,l4a34
	sbc hl,de
	jr nc,l4f53
	ld de,l4a28
.l4f53
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	push bc
	push iy
	ld iy,l4a51
	call l4c8a
	ld (ix+#09),#ff
	pop iy
	pop bc
	inc (iy+#0e)
	jp l4ef9
.l4f6f
	ld (iy+#0e),#00
	dec (ix+#0b)
	jp nz,l4ef9
	ld (ix+#13),#00
	jp l4ef9
.l4f80
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
	jp l4ef9
.l4fa3
	dec (iy+#0f)
	jr nz,l4fae
	inc (iy+#0e)
	jp l4ef9
.l4fae
	ld a,(iy+#10)
	ld (iy+#0e),a
	jp l4ef9
.l4fb7
	inc (iy+#0e)
	inc (iy+#0e)
	ld a,(iy+#0e)
	ld (iy+#10),a
	inc hl
	ld a,(hl)
	ld (iy+#0f),a
	jp l4ef9
.l4fcb
	pop bc
	pop bc
	ld a,(l4a3c)
	ld c,a
	ld a,(l4a3b)
	call l4b01
	jp l4dee
.l4fda
	pop bc
	pop bc
	call l4c3d
	jp l4dee
.l4fe2
	ld a,(l4009)
	and a
	ret z
	ld ix,l4a71
	ld b,#03
.l4fed
	dec (ix+#0a)
	jr nz,l501f
	call l4ef9
	ld a,(hl)
	and a
	jr z,l4ffc
	add (iy+#11)
.l4ffc
	add a
	ld e,a
	ld d,#00
	ld iy,l436e
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
.l501f
	ld de,#0018
	add ix,de
	djnz l4fed
	ret
.l5027
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
	db #00,#00,#00,#00,#00,#00
.l508d
;
.stop_music
;
	xor a		; added by Megachur
;
.init_music
;
	ld c,#03	; added by Megachur
	jp l4b01
;
;org #368c
;ld a,(#367d)
;ld c,#03
;call #4003
;
;org #3671
;ld a,(#367d)
;call #4000
;
.music_info
	db "Strider 2 (1990)(US Gold)()",0
	db "",0

	read "music_end.asm"
