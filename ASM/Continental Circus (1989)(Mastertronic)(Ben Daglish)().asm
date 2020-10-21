; Music of Continental Circus (1989)(Mastertronic)(Ben Daglish)()
; Ripped by Megachur the 10/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CONTINEC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #90d0
FIRST_THEME				equ 0
LAST_THEME				equ 12

	read "music_header.asm"

.l90d0
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
	dw #001e,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
	dw #000c
.l917a
	db #80,#06,#06,#12,#06,#06
	db #06,#06,#06,#12,#06,#06,#06,#06
	db #06,#12,#06,#06,#06,#12,#06,#06
	db #06,#12,#06,#06,#06,#06,#06,#12
.l919c equ $ + 4
	db #06,#06,#06,#ff,#81,#7f,#0c,#2a
	db #18,#25,#0c,#28,#12,#2a,#12,#25
	db #18,#2a,#18,#28,#0c,#2a,#30,#ff
.l91b0
	db #81,#91,#25,#06,#25,#06,#25,#06
.l91bd equ $ + 5
	db #25,#06,#25,#48,#ff,#90,#36,#06
	db #36,#06,#36,#06,#36,#06,#36,#0c
	db #2c,#18,#32,#06,#31,#06,#2f,#06
	db #2d,#06,#2c,#06,#28,#0c,#2a,#06
.l91df equ $ + 7
	db #28,#06,#2a,#06,#28,#18,#ff,#82
.l91e3 equ $ + 3
	db #1e,#c0,#ff,#81,#25,#06,#2a,#06
.l91ef equ $ + 7
	db #25,#06,#28,#06,#2a,#48,#ff,#25
	db #06,#2a,#06,#25,#06,#28,#06,#2a
	db #0c,#28,#54,#1c,#06,#1c,#06,#1c
.l9204 equ $ + 4
	db #06,#1c,#06,#ff,#06,#06,#12,#06
	db #06,#06,#06,#06,#06,#0c,#04,#54
	db #04,#06,#10,#06,#04,#06,#10,#06
.l9219 equ $ + 1
	db #ff,#81,#92,#20,#0e,#7f,#23,#93
	db #1f,#07,#7f,#07,#92,#20,#0e,#7f
	db #1c,#22,#0e,#7f,#2a,#22,#07,#7f
	db #07,#91,#22,#0e,#94,#22,#0e,#91
	db #22,#0e,#92,#22,#07,#93,#24,#15
	db #92,#25,#07,#7f,#0e,#93,#24,#15
	db #92,#25,#07,#7f,#0e,#93,#24,#0e
	db #92,#25,#07,#93,#26,#38,#26,#07
.l925b equ $ + 3
	db #7f,#0c,#ff,#81,#27,#0e,#20,#07
	db #20,#07,#20,#07,#20,#07,#20,#07
	db #27,#07,#20,#07,#27,#07,#20,#07
	db #20,#07,#20,#07,#20,#07,#20,#07
	db #29,#0e,#22,#07,#22,#07,#22,#07
	db #22,#07,#22,#07,#22,#07,#29,#07
	db #22,#07,#29,#07,#22,#07,#29,#07
	db #22,#07,#29,#07,#22,#07,#29,#07
	db #2a,#15,#2c,#07,#7f,#0e,#2a,#15
	db #2c,#07,#7f,#0e,#2a,#0e,#2c,#07
	db #2e,#0e,#22,#07,#22,#07,#22,#07
	db #22,#07,#22,#07,#22,#07,#22,#07
.l92bb equ $ + 3
	db #7f,#0c,#ff,#80,#14,#07,#0d,#07
	db #0f,#07,#08,#0e,#0c,#07,#0d,#07
	db #0f,#07,#14,#07,#0d,#07,#0f,#07
	db #08,#0e,#0c,#07,#0d,#07,#16,#0e
	db #0e,#07,#0f,#07,#11,#07,#0a,#07
	db #0e,#07,#11,#07,#16,#07,#16,#07
	db #0e,#07,#0f,#07,#11,#07,#0a,#07
	db #0e,#07,#11,#07,#16,#07,#03,#07
	db #07,#07,#0c,#07,#0d,#07,#7f,#0e
	db #03,#07,#07,#07,#0b,#07,#0d,#07
	db #7f,#0e,#03,#07,#06,#07,#0d,#07
	db #0a,#15,#0a,#0e,#0a,#07,#0a,#07
.l931d equ $ + 5
	db #0a,#07,#0a,#07,#ff,#80,#06,#07
	db #12,#07,#06,#07,#12,#07,#06,#07
	db #12,#07,#06,#07,#12,#07,#04,#07
	db #10,#07,#04,#07,#10,#07,#08,#07
.l933f equ $ + 7
	db #14,#07,#08,#07,#14,#07,#ff,#06
	db #23,#06,#07,#06,#07,#06,#07,#06
.l934a equ $ + 2
	db #38,#ff,#83,#7f,#2a,#25,#07,#27
	db #07,#28,#0e,#2a,#07,#28,#07,#27
	db #0e,#25,#07,#23,#07,#25,#23,#2a
	db #07,#25,#07,#27,#07,#28,#0e,#2a
	db #07,#28,#07,#2c,#0e,#2f,#0e,#2a
	db #23,#2a,#07,#2a,#07,#2a,#07,#2a
.l937a equ $ + 2
	db #38,#ff,#81,#95,#22,#0e,#22,#0e
	db #22,#07,#22,#07,#22,#0e,#91,#7f
	db #07,#23,#07,#23,#07,#23,#07,#27
	db #07,#27,#07,#27,#07,#27,#07,#95
	db #22,#0e,#22,#0e,#22,#07,#22,#07
	db #22,#0e,#91,#23,#1c,#27,#1c,#95
	db #1e,#23,#1e,#07,#22,#07,#22,#07
.l93b3 equ $ + 3
	db #22,#38,#ff,#81,#7f,#08,#2e,#04
	db #29,#04,#2e,#08,#29,#08,#25,#08
	db #2e,#08,#29,#08,#25,#08,#7f,#08
	db #2c,#04,#27,#04,#2c,#08,#27,#08
	db #24,#08,#27,#08,#27,#04,#2c,#08
	db #27,#04,#7f,#08,#2c,#04,#27,#04
	db #2c,#08,#27,#08,#24,#08,#27,#08
	db #2c,#04,#30,#0c,#31,#18,#33,#08
	db #30,#10,#30,#04,#2c,#0c,#2e,#10
.l93fd equ $ + 5
	db #7f,#18,#2e,#18,#ff,#82,#91,#29
	db #40,#27,#40,#93,#29,#30,#29,#08
	db #94,#29,#08,#92,#2a,#20,#2c,#20
	db #91,#29,#10,#7f,#18,#29,#04,#7f
.l941a equ $ + 2
	db #14,#ff,#80,#0a,#08,#16,#08,#11
	db #08,#0a,#10,#0a,#08,#16,#08,#11
	db #08,#08,#08,#14,#08,#0f,#08,#08
	db #10,#08,#08,#14,#0c,#0f,#04,#05
	db #08,#11,#08,#0c,#08,#05,#10,#05
	db #08,#03,#08,#05,#08,#06,#08,#0a
	db #08,#0d,#08,#12,#10,#0d,#08,#12
	db #04,#14,#0c,#16,#08,#84,#1e,#04
	db #1e,#04,#1b,#04,#1b,#04,#17,#04
	db #17,#04,#17,#08,#80,#0a,#10,#7f
.l946a equ $ + 2
	db #08,#ff,#80,#12,#0c,#14,#06,#14
	db #06,#14,#06,#14,#06,#14,#06,#14
	db #06,#14,#06,#14,#06,#14,#06,#14
	db #06,#14,#06,#14,#06,#14,#06,#14
	db #06,#12,#06,#14,#0c,#12,#06,#14
	db #0c,#12,#06,#14,#0c,#12,#06,#0f
	db #06,#0d,#06,#0b,#06,#08,#06,#0b
	db #06,#0d,#06,#0f,#06,#0d,#06,#0b
	db #06,#08,#0c,#08,#06,#08,#06,#08
	db #06,#08,#06,#08,#06,#08,#06,#08
	db #06,#08,#06,#08,#06,#06,#06,#08
	db #06,#08,#0c,#08,#06,#0b,#0c,#0b
	db #06,#0d,#12,#08,#06,#0d,#06,#08
	db #06,#0d,#06,#08,#06,#0d,#0c,#ff
.l94d8
	db #82,#91,#27,#54,#27,#0c,#25,#0c
	db #7f,#06,#25,#0c,#7f,#06,#25,#3c
	db #27,#4e,#27,#06,#25,#06,#27,#06
	db #27,#0c,#27,#06,#2a,#0c,#2a,#06
	db #2c,#30,#81,#2c,#06,#7f,#06,#ff
.l9500
	db #81,#38,#06,#33,#06,#36,#06,#33
	db #06,#38,#06,#33,#06,#36,#06,#33
	db #06,#36,#06,#33,#06,#38,#06,#33
	db #06,#36,#06,#33,#06,#38,#06,#33
	db #06,#2a,#06,#2c,#06,#7f,#06,#2a
	db #06,#2c,#06,#7f,#06,#2a,#06,#2c
	db #0c,#27,#06,#2a,#06,#27,#06,#2f
	db #06,#27,#06,#2f,#06,#31,#06,#2c
	db #06,#27,#06,#2a,#06,#27,#06,#2c
	db #06,#27,#06,#2a,#06,#27,#06,#2a
	db #06,#27,#06,#2c,#06,#27,#06,#2a
	db #06,#27,#06,#2a,#06,#2c,#06,#2a
	db #12,#28,#0c,#28,#06,#27,#06,#20
.l9568
	db #03,#23,#03,#25,#06,#20,#03,#23
	db #03,#25,#06,#20,#03,#23,#03,#25
	db #06,#20,#03,#23,#03,#25,#06,#7f
.l9582 equ $ + 2
	db #06,#ff,#82,#32,#12,#2d,#12,#37
	db #0c,#36,#24,#34,#06,#32,#06,#30
	db #18,#2d,#12,#2b,#06,#32,#12,#81
.l959b equ $ + 3
	db #32,#06,#ff,#82,#21,#12,#1e,#12
	db #28,#0c,#26,#24,#21,#06,#23,#06
	db #2d,#18,#2b,#12,#24,#06,#2d,#12
.l95b4 equ $ + 4
	db #81,#2d,#06,#ff,#80,#10,#0c,#04
	db #0c,#10,#06,#09,#06,#09,#06,#07
	db #06,#0c,#0c,#0b,#0c,#0c,#06,#0f
	db #06,#0f,#06,#10,#06,#05,#0c,#11
	db #0c,#07,#0c,#07,#0c,#09,#12,#09
.l95da equ $ + 2
	db #06,#ff,#81,#7f,#18,#2a,#06,#2a
	db #06,#2a,#0c,#28,#18,#2a,#18,#28
	db #0c,#2a,#0c,#25,#18,#2a,#06,#2a
	db #06,#2a,#0c,#28,#18,#2a,#18,#28
	db #0c,#2a,#0c,#31,#18,#2a,#06,#2a
	db #06,#2a,#0c,#28,#18,#2a,#06,#2a
	db #06,#2c,#06,#2c,#06,#28,#06,#28
	db #06,#36,#06,#36,#06,#31,#06,#31
	db #06,#34,#06,#34,#06,#2f,#06,#2f
	db #06,#31,#0c,#2f,#06,#28,#06,#2f
	db #06,#28,#06,#2b,#0c,#2a,#18,#ff
.l9630
	db #81,#91,#7f,#18,#25,#06,#25,#06
	db #25,#0c,#23,#18,#25,#0c,#26,#0c
	db #23,#0c,#25,#18,#7f,#0c,#25,#06
	db #25,#06,#25,#0c,#23,#18,#25,#0c
	db #26,#0c,#23,#0c,#25,#0c,#20,#0c
	db #7f,#0c,#25,#06,#25,#06,#25,#0c
	db #23,#18,#25,#0c,#26,#0c,#23,#0c
	db #25,#0c,#20,#0c,#23,#0c,#1e,#0c
	db #20,#0c,#23,#0c,#23,#0c,#26,#0c
.l967b equ $ + 3
	db #25,#18,#ff,#80,#09,#06,#0d,#06
	db #06,#0c,#06,#06,#06,#06,#06,#0c
	db #06,#06,#06,#06,#06,#0c,#06,#06
	db #06,#06,#09,#0c,#04,#0c,#06,#0c
	db #01,#06,#04,#06,#06,#0c,#06,#06
	db #06,#06,#06,#0c,#06,#06,#06,#06
	db #06,#0c,#06,#06,#06,#06,#07,#0c
	db #04,#0c,#06,#0c,#01,#0c,#06,#0c
	db #06,#06,#06,#06,#06,#0c,#06,#06
	db #06,#06,#06,#0c,#06,#06,#06,#06
	db #07,#0c,#04,#0c,#06,#0c,#01,#0c
	db #04,#0c,#0b,#0c,#0d,#06,#04,#06
	db #0b,#0c,#0b,#0c,#07,#0c,#06,#18
.l96e1 equ $ + 1
	db #ff,#81,#96,#28,#09,#28,#09,#97
	db #2a,#1e,#94,#2d,#09,#2d,#09,#97
	db #2a,#1e,#96,#28,#09,#28,#0c,#97
	db #2a,#0c,#94,#2d,#03,#97,#2f,#06
.l9705 equ $ + 5
	db #31,#2a,#7f,#0c,#ff,#81,#2d,#03
	db #28,#03,#25,#03,#21,#03,#25,#03
	db #28,#03,#2a,#03,#26,#03,#21,#03
	db #26,#03,#2a,#03,#26,#03,#2a,#03
	db #21,#03,#26,#03,#2a,#03,#2b,#03
	db #28,#03,#25,#02,#21,#03,#25,#03
	db #28,#03,#2a,#03,#26,#03,#21,#03
	db #26,#03,#2a,#03,#26,#03,#2a,#03
	db #21,#03,#26,#03,#2a,#03,#21,#03
	db #28,#03,#25,#03,#21,#03,#25,#03
	db #28,#03,#2a,#03,#26,#03,#21,#03
	db #2a,#03,#2b,#03,#26,#03,#2b,#03
.l9767 equ $ + 7
	db #2f,#03,#28,#2a,#7f,#0c,#ff,#80
	db #15,#06,#09,#06,#09,#06,#15,#06
	db #09,#06,#09,#06,#15,#06,#09,#06
	db #13,#06,#07,#06,#07,#06,#13,#06
	db #07,#06,#09,#06,#0d,#06,#0e,#06
	db #15,#06,#09,#06,#09,#06,#0e,#06
	db #0f,#06,#10,#06,#10,#06,#15,#2a
.l979b equ $ + 3
	db #7f,#0c,#ff,#81,#33,#08,#33,#08
	db #31,#08,#31,#08,#2e,#08,#2e,#08
.l97ad equ $ + 5
	db #31,#08,#31,#08,#ff,#81,#2e,#08
	db #2e,#08,#2c,#08,#2c,#08,#29,#08
.l97bf equ $ + 7
	db #29,#08,#2c,#08,#2c,#08,#ff,#33
	db #10,#31,#10,#2e,#10,#36,#10,#33
	db #10,#7f,#10,#36,#10,#7f,#10,#38
	db #10,#7f,#10,#27,#08,#25,#08,#27
	db #10,#22,#08,#25,#08,#27,#08,#2a
	db #18,#27,#10,#2c,#08,#2e,#08,#2c
	db #08,#2a,#08,#27,#08,#25,#10,#27
	db #08,#2e,#04,#33,#04,#2e,#04,#33
.l97fe equ $ + 6
	db #04,#33,#10,#7f,#10,#ff,#81,#91
	db #22,#08,#20,#08,#22,#10,#7f,#08
	db #25,#08,#7f,#08,#22,#28,#82,#27
.l9814 equ $ + 4
	db #20,#20,#20,#ff,#81,#22,#04,#22
	db #04,#22,#04,#22,#04,#22,#10,#7f
.l9822 equ $ + 2
	db #10,#ff,#80,#0f,#08,#0d,#08,#0f
	db #10,#0a,#08,#12,#08,#7f,#08,#0f
	db #18,#7f,#10,#14,#20,#0d,#10,#1b
	db #08,#1b,#08,#0f,#08,#0d,#08,#0f
	db #10,#7f,#08,#0d,#08,#7f,#08,#0f
	db #10,#0f,#08,#0f,#08,#12,#08,#14
	db #20,#0d,#20,#0f,#08,#0f,#08,#0f
.l985c equ $ + 4
	db #10,#7f,#10,#ff,#85,#1e,#04,#1e
	db #04,#1e,#04,#1e,#04,#1e,#04,#1e
	db #04,#1e,#04,#1e,#04,#80,#1b,#04
	db #16,#04,#0f,#08,#0f,#08,#0f,#08
	db #1b,#08,#0a,#08,#0b,#08,#0c,#08
	db #0f,#08,#0a,#08,#0b,#08,#0c,#08
	db #0d,#10,#0d,#10,#0d,#04,#08,#04
	db #0d,#08,#0d,#08,#0d,#08,#19,#08
	db #08,#08,#09,#08,#0a,#08,#0b,#08
	db #0d,#08,#08,#08,#09,#08,#0d,#10
.l98ab equ $ + 3
	db #0d,#10,#ff,#7f,#20,#81,#33,#18
	db #33,#18,#33,#18,#33,#10,#33,#08
	db #36,#10,#35,#10,#31,#18,#31,#18
	db #31,#18,#38,#08,#36,#08,#35,#08
	db #94,#2f,#10,#31,#08,#7f,#08,#ff
.l98d0
	db #7f,#20,#94,#81,#27,#18,#27,#18
	db #27,#18,#27,#10,#27,#08,#91,#25
	db #10,#24,#10,#94,#25,#18,#25,#18
	db #25,#18,#90,#31,#08,#2f,#08,#2e
.l98f6 equ $ + 6
	db #08,#2a,#10,#2c,#10,#ff,#80,#06
	db #0a,#06,#05,#04,#05,#06,#05,#09
	db #05,#09,#0a,#09,#0a,#09,#05,#06
	db #05,#09,#05,#0b,#05,#0b,#0a,#06
	db #0a,#06,#05,#04,#05,#06,#05,#09
	db #05,#0b,#05,#0d,#05,#0d,#14,#0f
	db #14,#06,#0a,#06,#05,#04,#05,#06
	db #05,#09,#05,#09,#0a,#09,#0a,#09
	db #05,#06,#05,#09,#05,#0b,#05,#0b
	db #0a,#06,#0a,#7f,#14,#0b,#0a,#7f
.l9942 equ $ + 2
	db #0a,#ff,#81,#2a,#0f,#2d,#05,#2d
	db #05,#31,#05,#32,#0a,#2a,#0f,#2d
	db #05,#2d,#05,#31,#05,#32,#0a,#2a
	db #0f,#2d,#05,#2d,#05,#31,#05,#32
	db #0a,#31,#0a,#31,#0a,#2f,#14,#2a
	db #0f,#2d,#05,#2d,#05,#31,#05,#32
	db #0a,#2a,#0f,#2d,#05,#2d,#05,#31
	db #05,#32,#0a,#2a,#0a,#7f,#14,#2f
.l9984 equ $ + 4
	db #0a,#7f,#0a,#ff,#81,#31,#1e,#32
	db #0a,#34,#0a,#34,#14,#32,#0a,#31
	db #0a,#31,#14,#32,#0a,#34,#14,#36
	db #14,#31,#1e,#32,#0a,#34,#0a,#34
	db #14,#32,#0a,#31,#0a,#7f,#14,#27
.l99ac equ $ + 4
	db #0a,#7f,#0a,#ff,#81,#96,#25,#0c
	db #25,#0c,#25,#0c,#25,#0c,#98,#22
	db #0c,#22,#0c,#22,#0c,#22,#0c,#96
	db #20,#0c,#20,#0c,#20,#0c,#20,#0c
	db #93,#24,#0c,#24,#0c,#24,#0c,#24
.l99d2 equ $ + 2
	db #0c,#ff,#92,#25,#0c,#25,#0c,#25
	db #0c,#25,#0c,#96,#21,#0c,#21,#0c
	db #21,#0c,#21,#0c,#92,#28,#0c,#28
	db #0c,#28,#0c,#28,#0c,#93,#27,#0c
	db #27,#0c,#27,#0c,#27,#0c,#93,#25
	db #0c,#25,#0c,#25,#0c,#25,#0c,#96
	db #21,#0c,#21,#0c,#21,#0c,#21,#0c
	db #92,#28,#0c,#28,#0c,#28,#0c,#28
	db #0c,#93,#27,#0c,#27,#0c,#27,#0c
	db #27,#0c,#91,#29,#0c,#29,#0c,#29
	db #0c,#29,#0c,#93,#29,#0c,#29,#0c
	db #29,#0c,#29,#0c,#92,#25,#0c,#25
	db #0c,#25,#0c,#25,#0c,#90,#27,#06
	db #24,#06,#1b,#0c,#29,#06,#2a,#12
.l9a47 equ $ + 7
.l9a41 equ $ + 1
	db #ff,#92,#2a,#18,#7f,#18,#ff,#7f
.l9a4a equ $ + 2
	db #30,#ff,#80,#09,#1e,#08,#0c,#09
	db #06,#0b,#0c,#09,#0c,#08,#0c,#06
	db #0c,#04,#1e,#03,#06,#04,#06,#08
	db #06,#0b,#1e,#0d,#03,#0d,#03,#0b
	db #0c,#09,#18,#08,#18,#06,#24,#01
	db #0c,#04,#1e,#03,#06,#04,#06,#08
	db #06,#0b,#1e,#0d,#03,#0d,#03,#0b
	db #0c,#0a,#24,#0a,#06,#06,#30,#0d
	db #36,#08,#30,#0a,#2a,#06,#30,#0d
.l9a96 equ $ + 6
	db #36,#08,#30,#06,#30,#ff,#86,#7f
	db #18,#29,#06,#29,#0c,#2e,#4e,#29
	db #06,#2a,#06,#29,#06,#27,#4e,#29
	db #06,#29,#0c,#25,#4e,#29,#06,#2c
	db #0c,#2c,#4e,#29,#06,#29,#0c,#2e
	db #4e,#29,#06,#2a,#06,#29,#06,#27
	db #4e,#29,#06,#29,#0c,#25,#4e,#29
	db #06,#2c,#0c,#2c,#06,#2c,#60,#7f
	db #30,#18,#30,#18,#06,#16,#06,#12
	db #0c,#0f,#06,#0f,#03,#11,#03,#0f
	db #0c,#12,#12,#19,#03,#1b,#03,#1d
	db #12,#18,#03,#19,#03,#0f,#12,#0c
	db #03,#0d,#03,#0c,#12,#10,#03,#0a
	db #03,#14,#0c,#15,#12,#12,#06,#14
	db #06,#18,#06,#1b,#1e,#1d,#06,#1e
	db #0c,#1d,#18,#2e,#06,#2e,#0c,#2e
	db #4e,#29,#06,#2a,#06,#29,#06,#27
	db #4e,#29,#06,#29,#0c,#25,#4e,#29
	db #06,#20,#0c,#20,#06,#20,#30,#7f
.l9b2a equ $ + 2
	db #30,#ff,#81,#28,#0f,#28,#0f,#2a
.l9b36 equ $ + 6
	db #0f,#2c,#0f,#2c,#1e,#ff,#81,#7f
	db #05,#2f,#0f,#31,#0f,#33,#0f,#33
.l9b42 equ $ + 2
	db #28,#ff,#81,#7f,#0a,#2c,#0f,#2e
	db #0f,#30,#0f,#30,#23,#ff
.l9b4e
	db l917a,l919c,l91b0,l91bd
	db l91df,l91e3,l91ef,l9204
	db l9219,l925b,l92bb,l931d
	db l933f,l934a,l937a,l93b3
	db l93fd,l941a,l946a,l94d8
	db l9500,l9582,l959b,l95b4
	db l95da,l9630,l967b,l96e1
	db l9705,l9767,l979b,l97ad
	db l97bf,l97fe,l9814,l9822
	db l985c,l98ab,l98d0,l98f6
	db l9942,l9984,l99ac,l99d2
	db l9a41,l9a47,l9a4a,l9a96
	db l9b2a,l9b36,l9b42
;	db #7a,#9c,#b0,#bd,#df,#e3,#ef,#04
;	db #19,#5b,#bb,#1d,#3f,#4a,#7a,#b3
;	db #fd,#1a,#6a,#d8,#00,#82,#9b,#b4
;	db #da,#30,#7b,#e1,#05,#67,#9b,#ad
;	db #bf,#fe,#14,#22,#5c,#ab,#d0,#f6
;	db #42,#84,#ac,#d2,#41,#47,#4a,#96
;	db #2a,#36,#42
.l9b81
	db l917a/&100,l919c/&100,l91b0/&100,l91bd/&100
	db l91df/&100,l91e3/&100,l91ef/&100,l9204/&100
	db l9219/&100,l925b/&100,l92bb/&100,l931d/&100
	db l933f/&100,l934a/&100,l937a/&100,l93b3/&100
	db l93fd/&100,l941a/&100,l946a/&100,l94d8/&100
	db l9500/&100,l9582/&100,l959b/&100,l95b4/&100
	db l95da/&100,l9630/&100,l967b/&100,l96e1/&100
	db l9705/&100,l9767/&100,l979b/&100,l97ad/&100
	db l97bf/&100,l97fe/&100,l9814/&100,l9822/&100
	db l985c/&100,l98ab/&100,l98d0/&100,l98f6/&100
	db l9942/&100,l9984/&100,l99ac/&100,l99d2/&100
	db l9a41/&100,l9a47/&100,l9a4a/&100,l9a96/&100
	db l9b2a/&100,l9b36/&100,l9b42/&100
;	db #91,#91,#91,#91,#91,#91,#91,#92
;	db #92,#92,#92,#93,#93,#93,#93,#93
;	db #93,#94,#94,#94,#95,#95,#95,#95
;	db #95,#96,#96,#96,#97,#97,#97,#97
;	db #97,#97,#98,#98,#98,#98,#98,#98
;	db #99,#99,#99,#99,#9a,#9a,#9a,#9a
;	db #9b,#9b,#9b
.l9bb4
	dw l9c02,l9c06,l9c0b
	dw l9c10,l9c12,l9c16
	dw l9c18,l9c1c,l9c1e
	dw l9c20,l9c22,l9c24
	dw l9c26,l9c28,l9c2a
	dw l9c2c,l9c2e,l9c30
	dw l9c32,l9c34,l9c36
	dw l9c38,l9c3a,l9c3c
	dw l9c3e,l9c42,l9c48
	dw l9c50,l9c52,l9c54
	dw l9c56,l9c58,l9c5a
	dw l9c5c,l9c62,l9c66
	dw l9c6a,l9c6c,l9c6e
.l9c06 equ $ + 4
.l9c02
	db #85,#00,#07,#ff,#01,#83,#02,#03
.l9c10 equ $ + 6
.l9c0b equ $ + 1
	db #ff,#04,#83,#05,#06,#ff,#08,#ff
.l9c18 equ $ + 6
.l9c16 equ $ + 4
.l9c12
	db #fe,#f4,#09,#ff,#0a,#ff,#0b,#0b
.l9c20 equ $ + 6
.l9c1e equ $ + 4
.l9c1c equ $ + 2
	db #0c,#ff,#0e,#ff,#0d,#ff,#0f,#ff
.l9c28 equ $ + 6
.l9c26 equ $ + 4
.l9c24 equ $ + 2
.l9c22
	db #10,#ff,#11,#ff,#12,#ff,#13,#ff
.l9c30 equ $ + 6
.l9c2e equ $ + 4
.l9c2c equ $ + 2
.l9c2a
	db #14,#ff,#15,#ff,#16,#ff,#17,#ff
.l9c38 equ $ + 6
.l9c36 equ $ + 4
.l9c34 equ $ + 2
.l9c32
	db #18,#ff,#19,#ff,#1a,#ff,#1b,#ff
.l9c3e equ $ + 4
.l9c3c equ $ + 2
.l9c3a
	db #1c,#ff,#1d,#ff,#1e,#1e,#20,#ff
.l9c48 equ $ + 6
.l9c42
	db #1f,#1f,#21,#21,#22,#ff,#fe,#f4
.l9c50 equ $ + 6
	db #1e,#1e,#fe,#00,#23,#ff,#24,#ff
.l9c58 equ $ + 6
.l9c56 equ $ + 4
.l9c54 equ $ + 2
.l9c52
	db #25,#ff,#26,#ff,#27,#ff,#28,#ff
.l9c5c equ $ + 2
.l9c5a
	db #29,#ff,#85,#2a,#2b,#2a,#2c,#ff
.l9c66 equ $ + 4
.l9c62
	db #94,#2d,#2e,#ff,#84,#2d,#2f,#ff
.l9c6e equ $ + 4
.l9c6c equ $ + 2
.l9c6a
	db #30,#ff,#31,#ff,#32,#ff,#89,#29
	db #00,#00,#00,#00,#00,#00,#89,#21
	db #00,#00,#00,#00,#00,#00,#89,#19
	db #00,#00,#00,#00,#00,#00,#89,#39
	db #00,#00,#00,#00,#00,#00,#8a,#19
	db #41,#00,#00,#00,#00,#00,#89,#49
	db #00,#00,#00,#00,#00,#00,#89,#41
	db #00,#00,#00,#00,#00,#00,#89,#51
	db #00,#00,#00,#00,#00,#00
.l9cb0
	db #7f,#fe,#01,#ff,#7f,#00,#05,#05
	db #00,#01,#7f,#fe,#01,#ff,#7f,#05
	db #03,#01,#00,#01,#7f,#ff,#5a,#ff
	db #7f,#00,#04,#01,#00,#01,#7f,#fe
	db #01,#ff,#7f,#00,#03,#03,#00,#01
	db #7f,#fc,#01,#ff,#7f,#00,#00,#3c
	db #00,#01,#7f,#fc,#01,#ff,#7f,#00
	db #00,#3c,#00,#03,#7f,#ff,#5a,#ff
.l9cf6 equ $ + 6
	db #7f,#00,#02,#01,#00,#01,#0a,#ff
	db #5a,#ff,#0a,#00,#04,#01,#00,#01
	db #48,#00,#1e,#7f,#ff,#01,#ff,#7f
	db #00,#00,#01,#00,#02,#0a,#00,#28
	db #07,#fe,#01,#ff,#7f,#00,#00,#02
	db #00,#03,#0a,#01,#28,#7f,#fe,#01
	db #ff,#7f,#00,#00,#01,#00,#02,#0a
	db #00
	db #28
;
.stop_music
;
	xor a
	ld (l9d31),a
	jp la108
.l9d31
.music_end
	db #00,#00
;
; init sound effects
;
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,l9cf6
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,la04e
	call la084
	set 7,(ix+#11)
	ret
.l9d60 equ $ + 7
.l9d5a equ $ + 1
.l9d59
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9d68 equ $ + 7
.l9d66 equ $ + 5
.l9d65 equ $ + 4
.l9d64 equ $ + 3
.l9d63 equ $ + 2
.l9d62 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9d6f equ $ + 6
.l9d6e equ $ + 5
	db #00,#00,#00,#00,#00,#08,#00,#00
.l9d78 equ $ + 7
.l9d77 equ $ + 6
.l9d75 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9d7d equ $ + 4
.l9d7b equ $ + 2
.l9d7a equ $ + 1
.l9d79
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9d84 equ $ + 3
.l9d83 equ $ + 2
	db #00,#00,#10,#00,#00,#00,#00,#00
.l9d90 equ $ + 7
.l9d8f equ $ + 6
.l9d8e equ $ + 5
.l9d8d equ $ + 4
.l9d8c equ $ + 3
.l9d8a equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9d98 equ $ + 7
.l9d92 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
.init_music
; 9db0
;
	push af
	call la108
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l9bb4
	add l
	ld l,a
	jr nc,l9dc1
	inc h
.l9dc1
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l9d5a),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l9d6f),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l9d84),de
	xor a
	ld (l9d63),a
	ld (l9d78),a
	ld (l9d8d),a
	ld (l9d68),a
	ld (l9d7d),a
	ld (l9d92),a
	cpl
	ld (l9d64),a
	ld (l9d79),a
	ld (l9d8e),a
	ld a,#01
	ld (l9d62),a
	ld (l9d77),a
	ld (l9d8c),a
	ld (l9d65),a
	ld (l9d7a),a
	ld (l9d8f),a
	ld hl,l9d98
	ld bc,#030a
.l9e10
	xor a
.l9e11
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l9e11
	djnz l9e10
	ld hl,l9cb0
	ld (l9d60),hl
	ld (l9d75),hl
	ld (l9d8a),hl
	ld a,#ff
	ld (l9d66),a
	ld (l9d7b),a
	ld (l9d90),a
	ld (l9d31),a
	ret
;
.play_music
;
	call la140
	ld a,(l9d31)
	and a
	ret z
	ld a,(l9d66)
	or a
	jr z,l9e50
	ld a,(l9d7b)
	or a
	jr z,l9e50
	ld a,(l9d90)
	or a
.l9e50
	ld (l9d31),a
	jr nz,l9e5e
	ld a,(la04d)
	and #3f
	cp #3f
	ret z
	ret
.l9e5e
	ld iy,l9d59
	ld ix,la04e
	call l9e7c
	ld iy,l9d6e
	ld ix,la060
	call l9e7c
	ld iy,l9d83
	ld ix,la072
.l9e7c
	call l9fbd
	ld a,(iy+#0b)
	and a
	jr z,l9f01
.l9e85
	dec (iy+#09)
	jr z,l9e9c
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l9f01
.l9e9c
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l9ea6
	ld a,(hl)
	cp #80
	jr c,l9ee1
	cp #fe
	jr nz,l9eb8
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l9ea6
.l9eb8
	cp #ff
	jr nz,l9ec1
	xor a
	ld (iy+#0d),a
	ret
.l9ec1
	cp #c0
	jr nc,l9ece
	and #1f
	ld (iy+#09),a
	inc hl
	jp l9ea6
.l9ece
	and #07
	add (iy+#00)
	ld de,l9d98
	add e
	ld e,a
	jr nc,l9edb
	inc d
.l9edb
	inc hl
	ldi
	jp l9ea6
.l9ee1
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,l9b4e
	add hl,bc
	ld e,(hl)
	ld hl,l9b81
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr l9f07
.l9f01
	ld e,(iy+#05)
	ld d,(iy+#06)
.l9f07
	dec (iy+#0c)
	jr z,l9f19
	ld a,(de)
	cp #80
	call nc,l9f83
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l9f19
	ld a,(de)
	cp #80
	jr c,l9f2a
	call l9f83
	ld a,(iy+#0b)
	and a
	jr z,l9f19
	jp l9e85
.l9f2a
	cp #7f
	jr z,l9f76
	cp #7e
	jr nz,l9f3b
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l9f4f
.l9f3b
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,l90d0
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l9f4f
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
	jp la084
.l9f76
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l9f83
	ld a,(de)
	cp #88
	jr nc,l9fa1
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l9d98
	add hl,bc
	ld c,(hl)
	ld hl,l9cb0
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l9fa1
	cp #ff
	jr nz,l9faa
	ld (iy+#0b),#ff
	ret
.l9faa
	cp #c0
	jr nc,l9fb5
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l9fb5
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l9fbd
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l9fd1
	res 7,(iy+#14)
	ret
.l9fd1
	ld d,#07
	bit 6,(iy+#14)
	jr nz,la005
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,la005
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l9ff4
	inc h
	ld (iy+#11),h
.l9ff4
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp la03a
.la005
	ld hl,l9568
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,la01f
	bit 6,(iy+#14)
	jr nz,la01f
	ld (iy+#13),#01
	ret
.la01f
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
.la03a
	add a
	ld hl,l90d0
	add l
	ld l,a
	jr nc,la043
	inc h
.la043
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.la053 equ $ + 6
.la052 equ $ + 5
.la051 equ $ + 4
.la04e equ $ + 1
.la04d
	db #bf,#fe,#f7,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la064 equ $ + 7
.la063 equ $ + 6
.la060 equ $ + 3
.la05f equ $ + 2
	db #00,#00,#00,#fd,#ef,#12,#00,#00
.la065
	db #00,#00,#00,#00,#00,#00,#00,#00
.la072 equ $ + 5
.la071 equ $ + 4
	db #00,#00,#00,#00,#00,#fb,#df,#24
.la077 equ $ + 2
.la076 equ $ + 1
.la075
	db #00,#00,#00,#00,#00,#00,#00,#00
.la083 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00
.la084
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
	jr nz,la0a8
	ld a,#01
.la0a8
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(la04d)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,la0d1
	and (ix+#00)
.la0d1
	bit 1,c
	jr z,la0d8
	and (ix+#01)
.la0d8
	ld (la04d),a
	bit 2,c
	jr nz,la0e9
	ld hl,la235
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.la0e9
	ld hl,#ffbf
	ld c,#fd
	ld a,(iy+#00)
	ld e,#0d
	call la2ed
	ld a,(iy+#04)
	ld e,#0b
	call la2ed
	inc e
	xor a
	call la2ed
	ld (ix+#05),#ff
	ret
.la108
	ld c,#fd
	ld hl,#ffbf
	ld e,#07
	ld a,(la04d)
	or #3f
	ld (la04d),a
	call la2ed
	xor a
	inc e
	call la2ed
	inc e
	call la2ed
	inc e
	call la2ed
	ld a,#01
	inc e
	call la2ed
	inc e
	xor a
	call la2ed
	inc e
	call la2ed
	ld (la05f),a
	ld (la071),a
	ld (la083),a
	ret
.la140
	ld a,(la04d)
	and #3f
	cp #3f
	ret z
	ld ix,la04e
	call la203
	ld ix,la060
	call la203
	ld ix,la072
	call la203
	ld ix,la04e
	ld hl,#ffbf
	ld c,#fd
	ld e,#07
	ld a,(la04d)
	call la2ed
	ld e,#00
	ld a,(la051)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,la17e
	ld d,a
.la17e
	call la2ed
	inc e
	ld a,(la052)
	adc (ix+#0a)
	call la2ed
	inc e
	ld a,(la063)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,la19a
	ld d,a
.la19a
	call la2ed
	inc e
	ld a,(la064)
	adc (ix+#1c)
	call la2ed
	inc e
	ld a,(la075)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,la1b6
	ld d,a
.la1b6
	call la2ed
	inc e
	ld a,(la076)
	adc (ix+#2e)
	call la2ed
	inc e
	ld a,d
	rrca
	rrca
	rrca
	call la2ed
	ld e,#08
	ld a,#7f
	ld d,a
	ld a,(la053)
	cp d
	jr c,la1d7
	ld a,d
.la1d7
	srl a
	srl a
	srl a
	call la2ed
	inc e
	ld a,(la065)
	cp d
	jr c,la1e8
	ld a,d
.la1e8
	srl a
	srl a
	srl a
	call la2ed
	inc e
	ld a,(la077)
	cp d
	jr c,la1f9
	ld a,d
.la1f9
	srl a
	srl a
	srl a
	jp la2ed
	nop
.la203
	ld a,(la04d)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,la224
	cp #ff
	jr z,la224
	dec (ix+#06)
.la224
	call la2ab
	bit 2,(iy+#09)
	jp nz,la2a4
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.la235
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,la244
	ld (ix+#05),a
	ret
.la244
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,la254
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.la254
	ld a,(ix+#05)
	add (iy+#01)
	jp m,la266
	cp (iy+#02)
	jr c,la266
	ld (ix+#05),a
	ret
.la266
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,la276
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.la276
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,la285
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.la285
	ld a,(ix+#05)
	add (iy+#03)
	jp m,la292
	ld (ix+#05),a
	ret
.la292
	ld (ix+#05),#00
	ld a,(la04d)
	or (ix+#02)
	ld (la04d),a
	res 7,(ix+#11)
	ret
.la2a4
	ld a,(ix+#06)
	and a
	ret nz
	jr la292
.la2ab
	ld a,(ix+#07)
	and a
	jr z,la2b8
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.la2b8
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
	jp p,la2dc
	ld (ix+#07),#ff
	ret
.la2dc
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
.la2ed
	push bc
	push de
	push hl
	ld c,e
	ld de,#c000
	ld hl,#f680
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
	pop hl
	pop de
	pop bc
	ret
;
.music_info
	db "Continental Circus (1989)(Mastertronic)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
