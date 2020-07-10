; Music of Prison Riot (1990)(Players)()()
; Ripped by Megachur the 10/09/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PRISONRI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #a500
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"
	
	jp lb470	; init music
	jp lb55b	; play music
.la508 equ $ + 2
music_end equ $ + 1
.la507 equ $ + 1
.la506
	db #00,#01,#00,#0f,#08,#02,#ff,#0c
	db #14,#02,#ff,#ff,#00,#00,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #c2,#00,#00,#00,#00,#00,#0f,#08
	db #02,#ff,#0c,#14,#02,#ff,#ff,#00
	db #00,#00,#03,#00,#0c,#18,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#c2,#00,#00,#00,#00
	db #00,#0f,#08,#02,#ff,#0c,#14,#02
	db #ff,#ff,#00,#00,#00,#03,#04,#07
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#c2,#00
	db #00,#00,#00,#00,#0f,#0f,#00,#fe
	db #0d,#00,#00,#ff,#ff,#00,#00,#03
	db #06,#f4,#f0,#e8,#e8,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#d2,#00,#00,#00,#00,#00,#0f
	db #08,#00,#00,#0f,#00,#00,#fe,#ff
	db #00,#00,#02,#04,#24,#18,#12,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#42,#00,#00,#00
	db #00,#00,#0f,#08,#02,#ff,#0c,#14
	db #02,#ff,#ff,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#c0
	db #00,#00,#00,#00,#00,#0c,#03,#00
	db #ff,#0a,#02,#00,#fd,#ff,#00,#00
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#c2,#00,#00,#00,#00,#00
	db #0f,#08,#02,#ff,#0c,#14,#02,#ff
	db #ff,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#c0,#00,#00
	db #00,#00,#00,#0f,#08,#02,#ff,#0c
	db #14,#02,#ff,#05,#01,#02,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #c2,#00,#00,#00,#00,#00,#0f,#0a
	db #02,#ff,#0c,#14,#02,#ff,#ff,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#c2,#00,#00,#00,#00
	db #00,#0f,#08,#02,#ff,#0c,#1e,#02
	db #ff,#ff,#00,#00,#00,#02,#f4,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#c2,#00
	db #00,#00,#00,#00,#0f,#08,#02,#ff
	db #0c,#14,#02,#ff,#ff,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#c0,#00,#00,#00,#00,#00,#0f
	db #08,#02,#ff,#0c,#14,#02,#ff,#ff
	db #00,#00,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#c0,#00,#00,#00
	db #00,#01,#0f,#01,#00,#00,#0f,#50
	db #08,#ff,#ff,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#42
	db #00,#00,#00,#00,#00,#0f,#08,#00
	db #00,#0f,#50,#12,#ff,#01,#01,#28
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#42,#00,#00,#00,#00,#00
	db #0f,#0f,#00,#00,#0f,#50,#12,#ff
	db #01,#02,#0f,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#42,#00,#00
	db #00,#00,#00,#0f,#04,#00,#f8,#0a
	db #00,#00,#f8,#ff,#00,#00,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #d0,#00,#00,#00,#00,#00,#0f,#08
	db #02,#ff,#0c,#05,#00,#fd,#ff,#00
	db #00,#02,#03,#e8,#f4,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#c2,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #08,#00,#ff,#0e,#14,#0a,#ff,#ff
	db #00,#00,#00,#08,#00,#00,#00,#dc
	db #dc,#dc,#dc,#e8,#00,#00,#00,#00
	db #00,#00,#00,#00,#c2,#00,#00,#00
	db #00
.la7e7
	dw la87d,laa8d,lac9b,laa02
	dw lac19,lae07,laa41,lac55
	dw lae3b,laa58,lac67,lae43
.la7ff
	dw lae7b,lae80,lae97,laea6
	dw laebf,laee0,laeeb,laef6
	dw laf05,laf14,laf29,laf3c
	dw laf4b,laf62,laf75,laf8e
	dw lafa9,lafcc,lafdb,laff0
	dw lb013,lb028,lb043,lb086
	dw lb0a7,lb0ac,lb0b3,lb0bc
	dw lb0c9,lb0d8,lb0e9,lb0f8
	dw lb10f,lb11e,lb123,lb126
	dw lb149,lb16a,lb18d,lb1a6
	dw lb1b9,lb1cc,lb1df,lb1f4
	dw lb207,lb21c,lb22d,lb23e
	dw lb261,lb284,lb2a5,lb2b8
	dw lb2cb,lb2e4,lb2f1,lb302
	dw lb309,lb30e,lb313,lb316
	dw lb319,lb31e,lb323
.la87d
	db #fc,#00,#fb,#18,#00,#01,#fa,#d0
	db #f7,#02,#21,#01,#f7,#01,#21,#01
	db #f7,#02,#22,#01,#f7,#01,#21,#01
	db #f7,#02,#22,#01,#fa,#30,#f7,#00
	db #00,#01,#00,#01,#21,#01,#22,#01
	db #fa,#fd,#21,#01,#fa,#03,#22,#01
	db #fa,#f9,#21,#01,#fa,#07,#22,#01
	db #fa,#fb,#21,#01,#fa,#05,#22,#01
	db #21,#01,#22,#01,#fa,#fd,#21,#01
	db #fa,#03,#22,#01,#fa,#f9,#21,#01
	db #fa,#07,#22,#01,#fa,#fb,#21,#01
	db #fa,#05,#22,#01,#01,#01,#15,#01
	db #01,#01,#15,#01,#01,#01,#15,#01
	db #01,#01,#15,#01,#01,#02,#fa,#fd
	db #01,#01,#fa,#05,#15,#01,#fa,#fe
	db #01,#02,#fa,#fd,#01,#01,#fa,#05
	db #15,#01,#fa,#02,#01,#02,#fa,#fe
	db #01,#01,#15,#01,#fa,#02,#01,#02
	db #fa,#fe,#01,#01,#fa,#fb,#15,#01
	db #fa,#03,#0e,#01,#01,#02,#fa,#fd
	db #01,#01,#fa,#05,#15,#01,#fa,#fe
	db #01,#02,#fa,#fd,#01,#01,#fa,#05
	db #15,#01,#fa,#02,#01,#02,#fa,#fe
	db #01,#01,#15,#01,#fa,#02,#01,#02
	db #fa,#fe,#01,#01,#fa,#fb,#15,#01
	db #fa,#03,#0e,#01,#01,#0a,#fa,#fb
	db #01,#01,#fa,#09,#01,#01,#fa,#fc
	db #01,#02,#fa,#fb,#01,#01,#fa,#09
	db #01,#01,#fa,#fe,#01,#02,#fa,#04
	db #01,#01,#fa,#fe,#01,#01,#fa,#fe
	db #01,#02,#fa,#04,#01,#01,#fa,#fe
	db #01,#01,#fa,#fc,#0e,#03,#17,#01
	db #fa,#04,#01,#02,#fa,#fe,#01,#02
	db #fa,#02,#01,#02,#fa,#fe,#01,#01
	db #fa,#fb,#15,#01,#fa,#03,#17,#10
	db #0e,#02,#01,#02,#fa,#fb,#01,#02
	db #fa,#02,#01,#02,#fa,#05,#01,#02
	db #fa,#fe,#01,#02,#fa,#f9,#01,#02
	db #fa,#04,#01,#02,#fa,#fe,#01,#02
	db #fa,#05,#0e,#02,#fa,#04,#01,#02
	db #fa,#fe,#01,#02,#fa,#02,#01,#02
	db #fa,#fe,#01,#01,#fa,#fb,#15,#01
	db #fa,#07,#01,#02,#fa,#fe,#01,#02
	db #fa,#02,#01,#02,#fa,#fe,#01,#01
	db #fa,#fb,#15,#01,#fa,#03,#17,#01
	db #fa,#03,#01,#02,#fa,#fe,#01,#02
	db #fa,#02,#01,#02,#fa,#fe,#01,#01
	db #fa,#fb,#15,#01,#fa,#04,#0e,#02
.laa02 equ $ + 5
	db #20,#01,#22,#02,#fd,#fc,#00,#fb
	db #18,#25,#04,#fa,#02,#25,#04,#fa
	db #fe,#25,#04,#fa,#02,#25,#04,#fa
	db #02,#25,#01,#fa,#fe,#25,#01,#fa
	db #fe,#25,#02,#fa,#04,#25,#01,#fa
	db #fe,#25,#01,#fa,#fe,#25,#02,#fa
	db #f4,#25,#04,#fa,#02,#25,#04,#fa
	db #fe,#25,#04,#fa,#02,#00,#01,#fa
.laa41 equ $ + 4
	db #0c,#00,#01,#ff,#fc,#00,#fb,#18
	db #f9,#04,#f7,#01,#27,#01,#28,#01
	db #29,#01,#fa,#f4,#18,#01,#f9,#00
.laa58 equ $ + 3
	db #fa,#0c,#ff,#fc,#00,#fb,#18,#2c
	db #01,#2d,#01,#2e,#01,#2c,#01,#2d
	db #01,#2e,#01,#fa,#ff,#2c,#01,#2d
	db #01,#2e,#01,#2c,#01,#2d,#01,#2e
	db #01,#fa,#fe,#2c,#01,#2d,#01,#2e
	db #01,#2c,#01,#2d,#01,#2e,#01,#fa
	db #03,#32,#01,#33,#01,#34,#01,#fd
.laa8d
	db #00,#02,#23,#01,#24,#01,#00,#02
	db #23,#01,#24,#01,#fa,#f4,#21,#01
	db #fa,#0c,#22,#01,#fa,#f1,#21,#01
	db #fa,#0f,#22,#01,#fa,#ed,#21,#01
	db #fa,#13,#22,#01,#fa,#ef,#21,#01
	db #fa,#11,#22,#01,#fa,#f4,#21,#01
	db #fa,#0c,#22,#01,#fa,#f1,#21,#01
	db #fa,#0f,#22,#01,#fa,#ed,#21,#01
	db #fa,#13,#22,#01,#fa,#ef,#21,#01
	db #fa,#11,#22,#01,#fa,#d0,#f7,#01
	db #21,#01,#f7,#02,#21,#02,#f7,#00
	db #22,#01,#fa,#30,#02,#04,#04,#02
	db #fa,#fd,#04,#01,#fa,#05,#04,#01
	db #fa,#fe,#04,#02,#fa,#fd,#04,#01
	db #fa,#05,#04,#01,#fa,#02,#04,#02
	db #fa,#fe,#04,#02,#fa,#02,#04,#02
	db #fa,#fe,#04,#01,#fa,#fb,#04,#01
	db #fa,#03,#0f,#01,#04,#02,#fa,#fd
	db #04,#01,#fa,#05,#04,#01,#fa,#fe
	db #04,#02,#fa,#fd,#04,#01,#fa,#05
	db #04,#01,#fa,#02,#04,#02,#fa,#fe
	db #04,#02,#fa,#02,#04,#02,#fa,#fe
	db #04,#01,#fa,#fb,#04,#01,#fa,#03
	db #0f,#01,#fa,#e8,#f7,#06,#01,#01
	db #01,#03,#fa,#0c,#f7,#00,#01,#01
	db #01,#03,#fa,#0c,#16,#02,#fa,#fb
	db #16,#01,#fa,#09,#16,#01,#fa,#fc
	db #16,#02,#fa,#fb,#16,#01,#fa,#09
	db #16,#01,#fa,#fe,#16,#02,#fa,#04
	db #16,#01,#fa,#fe,#16,#01,#fa,#fe
	db #16,#02,#fa,#04,#16,#01,#fa,#fe
	db #16,#01,#fa,#fc,#0f,#03,#17,#01
	db #fa,#04,#04,#02,#fa,#fe,#04,#02
	db #fa,#02,#04,#02,#fa,#fe,#04,#01
	db #fa,#fb,#04,#01,#fa,#03,#18,#01
	db #00,#07,#fa,#09,#16,#08,#fa,#f7
	db #0f,#02,#04,#02,#fa,#fb,#04,#02
	db #fa,#02,#04,#02,#fa,#05,#04,#02
	db #fa,#fe,#04,#02,#fa,#f9,#04,#02
	db #fa,#04,#04,#02,#fa,#fe,#04,#02
	db #fa,#05,#0f,#02,#fa,#04,#04,#02
	db #fa,#fe,#04,#02,#fa,#02,#04,#02
	db #fa,#fe,#04,#01,#fa,#fb,#04,#01
	db #fa,#07,#04,#02,#fa,#fe,#04,#02
	db #fa,#02,#04,#02,#fa,#fe,#04,#01
	db #fa,#fb,#04,#01,#fa,#03,#17,#01
	db #fa,#03,#04,#02,#fa,#fe,#04,#02
	db #fa,#02,#04,#02,#fa,#fe,#04,#01
	db #fa,#fb,#04,#01,#fa,#04,#0f,#02
.lac19 equ $ + 4
	db #20,#01,#22,#fe,#fa,#24,#25,#04
	db #fa,#02,#25,#04,#fa,#fe,#25,#04
	db #fa,#02,#25,#04,#fa,#02,#25,#01
	db #fa,#fe,#25,#01,#fa,#fe,#25,#02
	db #fa,#04,#25,#01,#fa,#fe,#25,#01
	db #fa,#fe,#25,#02,#fa,#dc,#25,#04
	db #fa,#02,#25,#04,#fa,#fe,#25,#04
	db #fa,#02,#00,#01,#fa,#f4,#00,#ff
.lac55
	db #f7,#01,#fa,#f4,#27,#01,#28,#01
	db #29,#01,#fa,#0c,#f7,#00,#18,#01
.lac67 equ $ + 2
	db #00,#ff,#2f,#01,#30,#01,#31,#01
	db #2f,#01,#30,#01,#31,#01,#fa,#ff
	db #2f,#01,#30,#01,#31,#01,#2f,#01
	db #30,#01,#31,#01,#fa,#fe,#2f,#01
	db #30,#01,#31,#01,#2f,#01,#30,#01
	db #31,#01,#fa,#fe,#2c,#01,#2d,#01
.lac9b equ $ + 6
	db #2e,#01,#fa,#05,#22,#24,#fa,#d0
	db #f7,#01,#00,#01,#f7,#02,#21,#02
	db #f7,#01,#21,#01,#fa,#30,#22,#01
	db #f7,#00,#00,#01,#00,#02,#fa,#d0
	db #f7,#01,#21,#01,#f7,#02,#21,#02
	db #f7,#01,#21,#01,#fa,#30,#22,#01
	db #f7,#00,#00,#01,#23,#01,#24,#01
	db #00,#01,#23,#01,#24,#01,#fa,#d0
	db #f7,#01,#21,#01,#22,#01,#fa,#30
	db #f7,#00,#00,#01,#23,#01,#24,#01
	db #23,#01,#24,#01,#23,#01,#24,#01
	db #23,#01,#24,#01,#23,#01,#10,#01
	db #05,#01,#06,#01,#07,#01,#08,#01
	db #05,#01,#06,#01,#07,#01,#08,#01
	db #09,#02,#fa,#0a,#0a,#01,#0b,#01
	db #fa,#f6,#09,#02,#fa,#0c,#0d,#01
	db #0c,#01,#fa,#e8,#f7,#08,#0e,#01
	db #fa,#0c,#f7,#00,#11,#01,#12,#01
	db #13,#01,#14,#01,#11,#01,#12,#02
	db #11,#01,#09,#02,#fa,#fe,#0a,#01
	db #0b,#01,#fa,#02,#09,#02,#0d,#01
	db #0c,#01,#fa,#f4,#f7,#08,#0e,#01
	db #fa,#0c,#f7,#00,#18,#01,#00,#05
	db #fa,#f9,#01,#02,#fa,#07,#03,#10
	db #fa,#f4,#f7,#08,#0e,#01,#0e,#02
	db #fa,#0c,#f7,#00,#17,#01,#09,#02
	db #fa,#0a,#0a,#01,#0b,#01,#fa,#f6
	db #09,#02,#0d,#01,#fa,#0c,#0c,#01
	db #fa,#f4,#02,#04,#03,#0c,#fa,#f4
	db #f7,#08,#0e,#01,#0e,#01,#fa,#0c
	db #f7,#00,#19,#01,#1a,#01,#1b,#01
	db #00,#01,#fa,#01,#19,#01,#fa,#f9
	db #19,#01,#fa,#06,#11,#01,#00,#01
	db #19,#02,#1a,#01,#19,#01,#1c,#01
	db #1d,#01,#1e,#01,#1f,#01,#fa,#f4
	db #f7,#08,#0e,#01,#0e,#01,#fa,#0c
	db #f7,#00,#09,#01,#09,#01,#fa,#0a
	db #0a,#01,#0b,#01,#fa,#f6,#09,#02
	db #fa,#0c,#0d,#01,#fa,#f4,#0c,#01
	db #09,#02,#fa,#0a,#0a,#01,#0b,#01
	db #fa,#f6,#09,#02,#fa,#0c,#0d,#01
	db #0c,#01,#fa,#f4,#17,#01,#fa,#ff
	db #09,#02,#fa,#0a,#0a,#01,#0b,#01
	db #fa,#f6,#09,#02,#fa,#0c,#0d,#01
	db #0c,#01,#fa,#e9,#f7,#08,#0e,#01
	db #0e,#01,#fa,#0c,#f7,#00,#20,#01
.lae07 equ $ + 2
	db #22,#fe,#26,#04,#fa,#02,#26,#04
	db #fa,#fe,#26,#04,#fa,#02,#26,#04
	db #fa,#02,#26,#01,#fa,#fe,#26,#01
	db #fa,#fe,#26,#02,#fa,#04,#26,#01
	db #fa,#fe,#26,#01,#fa,#fe,#26,#04
	db #fa,#02,#26,#04,#fa,#fe,#26,#04
.lae3b equ $ + 6
	db #fa,#02,#26,#02,#00,#ff,#2a,#02
.lae43 equ $ + 6
	db #2b,#01,#18,#01,#00,#ff,#f7,#08
	db #35,#01,#36,#01,#37,#01,#35,#01
	db #36,#01,#37,#01,#fa,#ff,#35,#01
	db #36,#01,#37,#01,#35,#01,#36,#01
	db #37,#01,#fa,#fe,#35,#01,#36,#01
	db #37,#01,#35,#01,#36,#01,#37,#01
	db #fa,#f2,#f7,#00,#2c,#01,#2d,#01
.lae7b equ $ + 6
	db #2e,#01,#fa,#11,#00,#24,#61,#00
.lae80 equ $ + 3
	db #60,#20,#fe,#61,#00,#29,#04,#29
	db #04,#35,#04,#27,#02,#29,#04,#27
	db #02,#29,#02,#27,#02,#2e,#04,#2c
.lae97 equ $ + 2
	db #04,#fe,#61,#04,#25,#08,#25,#08
	db #25,#06,#25,#04,#25,#04,#25,#02
.laea6 equ $ + 1
	db #fe,#61,#04,#25,#08,#61,#03,#39
	db #08,#61,#04,#25,#06,#25,#02,#61
	db #03,#39,#02,#61,#04,#25,#04,#25
.laebf equ $ + 2
	db #02,#fe,#61,#04,#25,#04,#61,#02
	db #41,#04,#61,#03,#39,#04,#61,#02
	db #41,#04,#61,#04,#25,#04,#61,#02
	db #41,#04,#61,#03,#39,#04,#61,#02
.laee0 equ $ + 3
	db #41,#04,#fe,#61,#0a,#4d,#14,#4b
.laeeb equ $ + 6
	db #04,#4f,#04,#4b,#04,#fe,#61,#0a
	db #4d,#14,#4b,#04,#4d,#04,#4f,#04
.laef6 equ $ + 1
	db #fe,#61,#0a,#50,#08,#50,#08,#4e
	db #04,#4d,#04,#4b,#04,#4d,#04,#fe
.laf05
	db #61,#0a,#4b,#08,#49,#04,#4b,#08
.laf14 equ $ + 7
	db #49,#04,#4f,#04,#4b,#04,#fe,#61
	db #08,#3d,#04,#3b,#04,#3d,#02,#40
	db #04,#3d,#04,#3b,#02,#3d,#04,#38
.laf29 equ $ + 4
	db #04,#3b,#04,#fe,#61,#08,#49,#02
	db #42,#04,#44,#04,#47,#06,#49,#04
.laf3c equ $ + 7
	db #44,#04,#49,#04,#4c,#04,#fe,#61
	db #08,#4d,#02,#4e,#02,#50,#04,#53
.laf4b equ $ + 6
	db #04,#50,#02,#55,#12,#fe,#61,#08
	db #5c,#18,#61,#00,#49,#01,#3d,#01
	db #31,#01,#3d,#01,#49,#01,#3d,#01
.laf62 equ $ + 5
	db #31,#01,#3d,#01,#fe,#61,#08,#57
	db #06,#55,#06,#50,#02,#52,#04,#50
	db #04,#4b,#02,#4e,#04,#50,#04,#fe
.laf75
	db #61,#00,#29,#02,#29,#04,#29,#04
	db #29,#04,#27,#02,#29,#04,#29,#04
	db #2c,#02,#30,#02,#33,#02,#35,#02
.laf8e equ $ + 1
	db #fe,#61,#04,#25,#02,#25,#04,#25
	db #04,#25,#04,#25,#02,#25,#04,#25
	db #04,#61,#03,#39,#02,#39,#02,#39
.lafa9 equ $ + 4
	db #02,#39,#02,#fe,#fc,#02,#fd,#02
	db #fd,#02,#fd,#02,#fd,#02,#fd,#02
	db #fd,#02,#fd,#02,#fc,#02,#fd,#02
	db #fd,#02,#fd,#02,#fd,#02,#61,#03
.lafcc equ $ + 7
	db #39,#02,#39,#02,#39,#02,#fe,#61
	db #00,#41,#08,#41,#04,#43,#08,#46
.lafdb equ $ + 6
	db #04,#48,#04,#4b,#04,#fe,#61,#00
	db #4d,#06,#4b,#04,#49,#02,#48,#04
	db #46,#04,#48,#04,#44,#04,#61,#06
.laff0 equ $ + 3
	db #3f,#04,#fe,#61,#06,#40,#02,#fd
	db #02,#fd,#02,#fd,#02,#fd,#02,#fd
	db #02,#61,#00,#44,#02,#fc,#02,#fc
	db #02,#fc,#02,#fc,#02,#fc,#02,#fc
.lb013 equ $ + 6
	db #02,#fc,#02,#46,#04,#fe,#61,#00
	db #60,#10,#48,#02,#fd,#02,#4f,#02
	db #fd,#02,#50,#02,#fd,#02,#54,#02
.lb028 equ $ + 3
	db #fd,#02,#fe,#61,#00,#29,#04,#29
	db #04,#35,#04,#27,#02,#29,#04,#27
	db #02,#29,#02,#27,#02,#1d,#02,#2c
.lb043 equ $ + 6
	db #02,#33,#02,#35,#02,#fe,#61,#09
	db #4d,#01,#50,#01,#52,#01,#54,#01
	db #59,#01,#54,#01,#52,#01,#50,#01
	db #4d,#01,#50,#01,#52,#01,#54,#01
	db #59,#01,#54,#01,#52,#01,#50,#01
	db #4d,#01,#50,#01,#52,#01,#54,#01
	db #59,#01,#54,#01,#52,#01,#50,#01
	db #4d,#01,#50,#01,#52,#01,#54,#01
	db #59,#01,#54,#01,#52,#01,#50,#01
.lb086 equ $ + 1
	db #fe,#fd,#02,#fd,#02,#fd,#02,#fd
	db #02,#fd,#02,#fd,#02,#fd,#02,#fc
	db #02,#fd,#02,#fc,#02,#fc,#02,#fc
	db #02,#fc,#02,#fc,#02,#fc,#02,#fc
.lb0ac equ $ + 7
.lb0a7 equ $ + 2
	db #02,#fe,#61,#1f,#0e,#20,#fe,#61
.lb0b3 equ $ + 6
	db #00,#43,#0c,#45,#14,#fe,#61,#00
.lb0bc equ $ + 7
	db #48,#0c,#45,#0c,#41,#08,#fe,#61
	db #00,#3e,#08,#3f,#08,#3e,#04,#3a
.lb0c9 equ $ + 4
	db #08,#41,#04,#fe,#61,#00,#60,#08
	db #44,#04,#42,#04,#44,#04,#47,#08
.lb0d8 equ $ + 3
	db #44,#04,#fe,#61,#00,#60,#04,#3f
	db #04,#42,#04,#44,#08,#3f,#04,#42
.lb0e9 equ $ + 4
	db #04,#44,#04,#fe,#61,#00,#46,#08
	db #48,#06,#48,#02,#46,#08,#4d,#04
.lb0f8 equ $ + 3
	db #4b,#04,#fe,#61,#00,#52,#06,#52
	db #04,#52,#02,#50,#04,#4b,#02,#4d
	db #02,#4b,#02,#46,#02,#48,#04,#46
.lb10f equ $ + 2
	db #04,#fe,#fd,#04,#fd,#04,#fd,#04
	db #fd,#04,#fd,#04,#fd,#04,#fd,#04
.lb123 equ $ + 6
.lb11e equ $ + 1
	db #fe,#61,#0d,#1d,#20,#fe,#60,#20
.lb126 equ $ + 1
	db #fe,#61,#10,#25,#02,#fc,#02,#fc
	db #02,#fc,#02,#fc,#02,#fc,#02,#fc
	db #02,#fc,#02,#fd,#02,#fd,#02,#fc
	db #02,#fd,#02,#fc,#02,#fd,#02,#fc
.lb149 equ $ + 4
	db #02,#fd,#02,#fe,#fd,#02,#fd,#02
	db #fc,#02,#fd,#02,#fc,#02,#fd,#02
	db #fc,#02,#fd,#02,#fd,#02,#fd,#02
	db #fc,#02,#fd,#02,#fc,#02,#fd,#02
.lb16a equ $ + 5
	db #fc,#02,#fd,#02,#fe,#61,#11,#4d
	db #02,#fd,#02,#50,#02,#fd,#02,#52
	db #02,#fd,#02,#54,#02,#fd,#02,#59
	db #02,#fd,#02,#54,#02,#fd,#02,#52
	db #02,#fd,#02,#50,#02,#fd,#02,#fe
.lb18d
	db #61,#00,#29,#04,#35,#04,#61,#03
	db #39,#08,#61,#04,#25,#04,#25,#04
	db #61,#03,#39,#04,#61,#00,#27,#04
.lb1a6 equ $ + 1
	db #fe,#61,#00,#3b,#04,#3b,#04,#3b
	db #04,#39,#04,#39,#04,#39,#04,#36
.lb1b9 equ $ + 4
	db #04,#36,#04,#fe,#61,#00,#36,#04
	db #34,#04,#34,#04,#34,#04,#32,#04
.lb1cc equ $ + 7
	db #34,#04,#32,#04,#2d,#04,#fe,#61
	db #00,#2f,#04,#fd,#04,#fd,#04,#fd
	db #04,#fd,#04,#fd,#04,#fd,#04,#fd
.lb1df equ $ + 2
	db #04,#fe,#61,#04,#25,#04,#25,#04
	db #61,#03,#39,#04,#61,#04,#25,#08
.lb1f4 equ $ + 7
	db #25,#04,#61,#03,#39,#08,#fe,#61
	db #03,#39,#04,#fd,#04,#fd,#04,#fd
	db #04,#fd,#04,#fd,#04,#fd,#04,#fd
.lb207 equ $ + 2
	db #04,#fe,#61,#00,#23,#04,#23,#02
	db #23,#06,#2f,#04,#23,#06,#21,#02
.lb21c equ $ + 7
	db #23,#04,#23,#02,#23,#02,#fe,#61
	db #00,#60,#04,#2f,#04,#23,#06,#23
	db #02,#23,#04,#2f,#08,#21,#04,#fe
.lb22d
	db #61,#00,#60,#06,#23,#08,#3b,#02
	db #38,#02,#36,#02,#34,#06,#2f,#06
.lb23e equ $ + 1
	db #fe,#61,#04,#25,#04,#61,#01,#47
	db #02,#47,#04,#61,#04,#25,#02,#61
	db #03,#39,#04,#61,#01,#45,#06,#61
	db #04,#25,#06,#61,#01,#42,#02,#61
.lb261 equ $ + 4
	db #04,#25,#02,#fe,#61,#00,#60,#02
	db #61,#01,#40,#02,#61,#03,#39,#04
	db #61,#01,#44,#02,#45,#06,#61,#04
	db #25,#04,#61,#01,#47,#02,#61,#04
.lb284 equ $ + 7
	db #25,#06,#61,#03,#39,#04,#fe,#61
	db #01,#45,#02,#47,#04,#4c,#02,#61
	db #04,#25,#04,#61,#01,#4e,#06,#51
	db #02,#61,#03,#39,#04,#61,#01,#53
	db #02,#61,#03,#39,#04,#39,#02,#fe
.lb2a5
	db #61,#04,#25,#04,#25,#06,#25,#02
	db #25,#04,#25,#06,#25,#02,#25,#04
.lb2b8 equ $ + 3
	db #25,#04,#fe,#61,#00,#60,#04,#61
	db #04,#25,#06,#25,#04,#25,#02,#25
.lb2cb equ $ + 6
	db #04,#25,#08,#25,#04,#fe,#61,#04
	db #25,#06,#25,#06,#61,#03,#39,#02
	db #39,#04,#39,#02,#39,#02,#39,#02
.lb2e4 equ $ + 7
	db #39,#02,#39,#04,#39,#02,#fe,#61
	db #00,#42,#10,#40,#02,#42,#04,#3e
.lb2f1 equ $ + 4
	db #06,#40,#04,#fe,#61,#00,#60,#02
	db #45,#02,#47,#06,#3b,#06,#39,#04
.lb302 equ $ + 5
	db #3b,#08,#3e,#04,#fe,#61,#00,#3e
.lb309 equ $ + 4
	db #06,#3b,#1a,#fe,#61,#00,#60,#20
.lb313 equ $ + 6
.lb30e equ $ + 1
	db #fe,#61,#00,#60,#20,#fe,#60,#20
.lb319 equ $ + 4
.lb316 equ $ + 1
	db #fe,#60,#20,#fe,#61,#00,#60,#20
.lb323 equ $ + 6
.lb31e equ $ + 1
	db #fe,#61,#00,#60,#20,#fe,#60,#20
.lb328 equ $ + 3
.lb327 equ $ + 2
.lb326 equ $ + 1
	db #fe,#00,#00,#00,#00,#00,#00,#00
.lb334 equ $ + 7
.lb333 equ $ + 6
	db #00,#30,#30,#30,#30,#00,#0f,#00
.lb337 equ $ + 2
.lb336 equ $ + 1
.lb335
	db #00,#00,#00,#00
.lb339
	ld a,(lb335)
	and a
	ld b,a
	ret z
	ld a,(lb337)
	cp #80
	jp z,lb362
	ld a,(lb336)
	dec a
	ld (lb336),a
	ret nz
	ld a,(lb337)
	ld (lb336),a
	ld a,(lb333)
	add b
	bit 4,a
	jp nz,lb371
	ld (lb333),a
	ret
.lb362
	ld a,b
	cp #01
	ld a,#0f
	jp z,lb36b
	xor a
.lb36b
	ld (lb333),a
	jp lb371
.lb371
	xor a
	ld (lb335),a
	ld a,(lb334)
	and a
	jp nz,lb527
	ret
	ld a,#00
	ld (lb333),a
	ld a,#01
.lb384
	ld (lb335),a
	inc hl
	ld a,(hl)
	ld (lb337),a
	ld (lb336),a
	inc hl
	ret
	ld a,#0f
	ld (lb333),a
	ld a,#ff
	jp lb384
.lb39b
	nop
.lb39c
	ld a,h
	push af
	ld c,l
	cp #07
	jp nz,lb3b3
	ld a,(lb39b)
	cp c
	jp z,lb3ce
	ld a,c
	ld (lb39b),a
	res 7,c
	res 6,c
.lb3b3
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
.lb3ce
	pop af
	ret
.lb3d7 equ $ + 7
.lb3d6 equ $ + 6
.lb3d1 equ $ + 1
.lb3d0
	db #00,#01,#00,#00,#00,#00,#00,#f8
.lb3dd equ $ + 5
.lb3db equ $ + 3
.lb3da equ $ + 2
.lb3d9 equ $ + 1
.lb3d8
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
	db #0c,#05,#00,#08,#01,#ff,#00,#00
	db #00,#01,#08,#00,#00,#04,#00,#00
	db #00,#00,#00,#f7,#14,#0a,#01,#00
	db #00,#08,#04,#00,#00,#01,#00,#00
	db #00,#0a,#00,#02,#00,#fe,#00,#00
.lb40d equ $ + 5
.lb40b equ $ + 3
.lb408
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#01,#01,#02,#01,#ff,#00,#00
	db #02,#03,#09,#00,#00,#01,#00,#00
	db #00,#00,#00,#ef,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb43d equ $ + 5
.lb43b equ $ + 3
.lb438
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0a,#01,#02,#02,#ff,#00,#00
	db #04,#05,#0a,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#df,#ff,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb468
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.real_init_music
.lb470
;
	ld a,#0f
	ld (lb333),a
	xor a
	ld (lb335),a
	ld (lb334),a
	call lb52f
	ld a,(lb327)
	cp #ff
	jp nz,lb48b
	inc a
	ld (lb327),a
.lb48b
	ld a,#01
	ld (lb3dd),a
	ld (lb40d),a
	ld (lb43d),a
	xor a
	ld (lb326),a
	push ix
	ld ix,lb3db
	ld a,(lb327)
	add a
	ld b,a
	add a
	add b
	ld l,a
	ld h,#00
	ld de,la7e7
	add hl,de
	ld (lb4bc),hl
	inc hl
	inc hl
	ld (lb4c6),hl
	inc hl
	inc hl
	ld (lb4d0),hl
.lb4bc equ $ + 1
	ld hl,(#0000)
	call lb4f5
	ld ix,lb40b
.lb4c6 equ $ + 1
	ld hl,(#0000)
	call lb4f5
	ld ix,lb43b
.lb4d0 equ $ + 1
	ld hl,(#0000)
	call lb4f5
	ld a,#01
	ld (la507),a
	ld h,#07
	ld l,#f8
	call lb39c
	ld a,(lb327)
	cp #01
	pop ix
	ret
.lb4e9		; test player
	halt
	call lb55b
	ld a,(la507)
	and a
	jp nz,lb4e9
	ret
.lb4f5
	ld (ix+#20),l
	ld (ix+#23),l
	ld (ix+#00),l
	ld (ix+#21),h
	ld (ix+#24),h
	ld (ix+#01),h
	call lba76
	ld (ix+#02),#01
	ld (ix+#0c),#00
	ld (ix+#05),#00
	ld (ix+#04),#00
	ld (ix+#17),#00
	ld (ix+#2b),#00
	ld (ix+#2f),#00
	ret
.lb527
	call lb52f
	xor a
	ld (la507),a
	ret
.lb52f
	ld h,#07
	ld l,#ff
	call lb39c
	ld hl,lb3d0
	ld de,lb3d1
	ld bc,#000a
	ld (hl),#00
	ldir
	ld a,#ff
	ld (lb3d7),a
.lb548
	ld b,#0b
	ld h,#00
	ld de,lb3d0
.lb54f
	ld a,(de)
	ld l,a
	push bc
	call lb39c
	pop bc
	inc h
	inc de
	djnz lb54f
	ret
	;
.play_music
.lb55b
	;
	ld a,(la506)
	and a
	jp z,lb593
	ld b,a
	xor a
	ld (la506),a
	ld a,b
	cp #ff
	jp z,lb527
	cp #fe
	jp nz,lb58c
	ld b,#0a
	ld a,#01
	ld (lb334),a
	call lb57f
	jp lb593
.lb57f
	ld a,#ff
	ld (lb335),a
	ld a,b
	ld (lb337),a
	ld (lb336),a
	ret
.lb58c
	dec a
	ld (lb327),a
	jp lb470
.lb593
	call lb339
	ld a,(la507)
	and a
	jr z,lb5f5
	push ix
	ld ix,lb3db
	bit 7,(ix+#0c)
	call z,lb5f6
	ld ix,lb40b
	bit 7,(ix+#0c)
	call z,lb5f6
	ld ix,lb43b
	bit 7,(ix+#0c)
	call z,lb5f6
	ld a,(lb333)
	cpl
	and #0f
	ld b,a
	ld a,(lb326)
	and a
	ld a,#10
	jp nz,lb5d7
	ld a,(lb3d8)
	sub b
	jp nc,lb5d7
	xor a
.lb5d7
	ld (lb3d8),a
	ld a,(lb3d9)
	sub b
	jp nc,lb5e2
	xor a
.lb5e2
	ld (lb3d9),a
	ld a,(lb3da)
	sub b
	jp nc,lb5ed
	xor a
.lb5ed
	ld (lb3da),a
	call lb548
	pop ix
.lb5f5
	ret
.lb5f6
	ld a,(ix+#02)
	dec (ix+#02)
	jp z,lb79d
.lb5ff
	ld a,(ix+#0c)
	and #03
	jp z,lb6bf
	cp #01
	jp z,lb619
	cp #02
	jp z,lb659
	cp #03
	jp z,lb6a3
	jp lb6f0
.lb619
	ld a,(ix+#0b)
	and a
	jr z,lb625
	dec (ix+#0b)
	jp lb6f0
.lb625
	ld a,(ix+#04)
	ld b,(ix+#08)
	add b
	ld (ix+#04),a
	ld b,(ix+#05)
	cp b
	jr z,lb646
	jr nc,lb640
	ld a,(ix+#07)
	ld (ix+#0b),a
	jp lb6f0
.lb640
	ld a,(ix+#05)
	ld (ix+#04),a
.lb646
	ld a,(ix+#0c)
	and #fc
	or #02
	ld (ix+#0c),a
	ld a,(ix+#09)
	ld (ix+#25),a
	jp lb6f0
.lb659
	ld a,(ix+#25)
	and a
	jr z,lb665
	dec (ix+#25)
	jp lb6f0
.lb665
	ld a,(ix+#04)
	ld b,(ix+#0a)
	add b
	ld (ix+#04),a
	bit 7,a
	jp nz,lb684
	ld b,(ix+#26)
	cp b
	jr z,lb691
	jr c,lb68b
	ld a,(ix+#09)
	ld (ix+#25),a
	jr lb6f0
.lb684
	ld (ix+#04),#00
	jp lb691
.lb68b
	ld a,(ix+#26)
	ld (ix+#04),a
.lb691
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	ld a,(ix+#06)
	ld (ix+#27),a
	jr lb6f0
.lb6a3
	ld a,(ix+#27)
	and a
	jr z,lb6ae
	dec (ix+#27)
	jr lb6f0
.lb6ae
	ld a,(ix+#0c)
	and #fc
	ld (ix+#0c),a
	ld a,(ix+#2a)
	ld (ix+#29),a
	jp lb6f0
.lb6bf
	ld a,(ix+#29)
	and a
	jr z,lb6ca
	dec (ix+#29)
	jr lb6f0
.lb6ca
	ld a,(ix+#04)
	ld b,(ix+#28)
	add b
	ld (ix+#04),a
	bit 7,a
	jr nz,lb6e0
	ld a,(ix+#2a)
	ld (ix+#29),a
	jr lb6f0
.lb6e0
	ld (ix+#04),#00
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	jr lb6f0
.lb6f0
	ld a,(ix+#04)
	ld hl,lb3d0
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
	call lb834
	pop af
	ld (ix+#03),a
	inc (ix+#10)
	ld a,(ix+#12)
	xor (ix+#10)
	jr nz,lb72c
	ld a,(ix+#11)
	ld (ix+#10),a
.lb72c
	ld a,(ix+#1a)
	cp #ff
	jr z,lb76d
	and a
	jr z,lb73b
	dec (ix+#1a)
	jr nz,lb76d
.lb73b
	dec (ix+#1f)
	jr nz,lb74e
	ld a,(ix+#1e)
	ld (ix+#1f),a
	ld a,(ix+#2e)
	xor #01
	ld (ix+#2e),a
.lb74e
	ld b,#00
	ld c,(ix+#1b)
	ld h,(ix+#1d)
	ld l,(ix+#1c)
	bit 0,(ix+#2e)
	jr z,lb762
	add hl,bc
	jr lb764
.lb762
	sbc hl,bc
.lb764
	ld (ix+#1d),h
	ld (ix+#1c),l
	call lb788
.lb76d
	ld a,(ix+#2b)
	call lb77b
	and a
	call nz,lb788
	ld a,(ix+#02)
	ret
.lb77b
	ld l,a
	ld h,#00
	bit 7,a
	ret z
	ld d,h
	ld e,l
	sbc hl,de
	sbc hl,de
	ret
.lb788
	ld b,h
	ld c,l
	ld hl,lb3d0
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
.lb79d
	ld l,(ix+#00)
	ld h,(ix+#01)
.lb7a3
	ld a,(hl)
	cp #60
	jp z,lb832
	cp #61
	jp z,lb932
	cp #62
	jp z,lb90c
	cp #64
	jp z,lb8ba
	cp #65
	jp z,lb8fe
	cp #fa
	jp z,lb8d1
	cp #fc
	jp z,lb8a1
	cp #fd
	jp z,lb883
	cp #fe
	jp z,lb914
	cp #ff
	jp z,lb8f6
	ld b,a
.lb7d7
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
.lb806
	inc hl
	ld a,(hl)
	dec a
	push hl
	ld h,#00
	ld l,a
	ld de,(lb328)
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
	call lb834
	jp lb5ff
.lb832
	jr lb806
.lb834
	ld a,(ix+#17)
	and a
	call nz,lb878
	ld a,(ix+#03)
	inc a
	inc a
	add a
	ld d,#00
	ld e,a
	ld hl,lbadf
	add hl,de
	push hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,lb3d0
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	pop hl
	ld a,(lb326)
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
	call lb39c
	inc de
	inc h
	ld a,(de)
	ld l,a
	call lb39c
	ret
.lb878
	ld a,(ix+#03)
	neg
	and #1f
	ld (lb3d6),a
	ret
.lb883
	ld a,(ix+#05)
	and a
	jp z,lb897
	ld a,(ix+#26)
	and a
	jp z,lb897
	dec (ix+#05)
	dec (ix+#26)
.lb897
	ld a,(ix+#03)
	add (ix+#2d)
	ld b,a
	jp lb7d7
.lb8a1
	ld a,(ix+#05)
	cp #0f
	jp z,lb897
	ld a,(ix+#26)
	cp #0f
	jp z,lb897
	inc (ix+#05)
	inc (ix+#26)
	jp lb897
.lb8ba
	inc hl
	ld a,(hl)
	inc hl
	ld (lb3d6),a
	jp lb929
.lb8c3
	inc hl
	ld a,(hl)
	inc hl
	ld b,a
	xor a
	ld (lb334),a
	call lb57f
	jp lba7c
.lb8d1
	inc hl
	ld (ix+#2e),#01
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	bit 7,a
	jp z,lb8e7
	neg
	ld (ix+#2e),#00
.lb8e7
	ld (ix+#1b),a
	ld (ix+#1e),#ff
	ld (ix+#1f),#ff
	inc hl
	jp lb929
.lb8f6
	inc hl
	ld (ix+#04),#00
	jp lb929
.lb8fe
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld h,#0d
	ld l,a
	call lb39c
	pop hl
	jp lb929
.lb90c
	ld (ix+#04),#00
	inc hl
	jp lb929
.lb914
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jr nz,lb923
	jp lba68
	jp lb7a3
.lb923
	ld l,(ix+#15)
	ld h,(ix+#16)
.lb929
	ld (ix+#01),h
	ld (ix+#00),l
	jp lb7a3
.lb932
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
	ld de,la508
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
	jp z,lb9e2
	and #12
	xor #12
	ld b,a
	ld c,#ed
	ld a,(ix+#0f)
	cp #08
	jp z,lb9c9
	cp #09
	jp z,lb9cd
	sla b
	rlc c
	jp lb9cd
.lb9c9
	srl b
	sra c
.lb9cd
	ld a,(lb3d7)
	and c
	or #c0
	or b
	ld (lb3d7),a
	ld a,(hl)
	bit 7,a
	jp z,lb9e2
	and #38
	ld (ix+#17),a
.lb9e2
	inc hl
	ld a,(ix+#0f)
	cp #08
	jp nz,lb9fe
	ld a,(hl)
	ld (lb326),a
	and a
	jp z,lb9fe
	inc hl
	inc hl
	ld a,(hl)
	push hl
	ld h,#0d
	ld l,a
	call lb39c
	pop hl
.lb9fe
	pop hl
	jp lb7a3
.lba02
	inc hl
	ld a,(hl)
	inc hl
	push hl
	add a
	add a
	add a
	ld h,#00
	ld l,a
	ld de,lbc2f
	add hl,de
	ld (lb328),hl
	pop hl
	jp lba7c
.lba17
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2f),a
	jp lba7c
.lba20
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2c),a
	jp lba7c
.lba29
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2b),a
	jp lba7c
.lba32
	inc hl
	ld a,(hl)
	sub #0c
	inc hl
	ld (lb408),a
	ld (lb438),a
	ld (lb468),a
	jp lba7c
.lba43
	inc hl
	ld b,(hl)
	inc hl
	ld a,(ix+#2d)
	add b
	ld (ix+#2d),a
	jp lba7c
	ld (ix+#0c),#ff
	ld (ix+#03),#00
	ld (ix+#04),#00
	inc hl
	ld a,(hl)
	and a
	jp z,lb5ff
	call lb527
	jp lb5ff
.lba68
	call lba76
	jp lb79d
.lba6e
	pop bc
	jp lb527
.lba72
	pop bc
	jp lb470
.lba76
	ld l,(ix+#20)
	ld h,(ix+#21)
.lba7c
	ld a,(hl)
	cp #f7
	jp z,lba17
	cp #f8
	jp z,lba20
	cp #f9
	jp z,lba29
	cp #f6
	jp z,lb8c3
	cp #fa
	jp z,lba43
	cp #fb
	jp z,lba32
	cp #fc
	jp z,lba02
	cp #fd
	jp z,lba72
	cp #fe
	jr z,lbad3
	cp #ff
	jr z,lba6e
	push hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,la7ff
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
.lbad3
	ld l,(ix+#23)
	ld h,(ix+#24)
	jr lba7c
.lbadf equ $ + 4
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
	dw #0012,#0011,#0010,#0000
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#6a,#00
	db #64,#00,#5e,#00,#5a,#00,#54,#00
	db #4f,#00,#4a,#00,#47,#00,#43,#00
	db #3f,#00,#3b,#00,#38,#00,#35,#00
	db #32,#00,#2f,#00,#2d,#00,#2a,#00
	db #28,#00,#25,#00,#23,#00,#21,#00
	db #20,#00,#1e,#00,#1c,#00,#1b,#00
	db #19,#00,#18,#00,#16,#00,#15,#00
	db #14,#00,#13,#00,#12,#00,#11,#00
	db #10,#00,#0f,#00,#0e,#00,#0d,#00
	db #0c,#00,#0b,#00,#0a,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbc2f equ $ + 6
	db #00,#00,#00,#00,#00,#00,#03,#06
	db #09,#0c,#0f,#12,#15,#18,#1b,#1e
	db #21,#24,#27,#2a,#2d,#30,#33,#36
	db #39,#3c,#3f,#42,#45,#48,#4b,#4e
	db #51,#54,#57,#5a,#5d,#60,#00,#cf
	db #44,#8e,#cf,#f9,#8e,#cf,#2a,#8f
	db #cf,#55,#8c,#cf,#74,#8c,#cf,#93
	db #8f,#cf,#9b,#8f,#cf,#bc,#a4,#cf
	db #ce,#a4,#cf,#e1,#a4,#cf,#bb,#ab
	db #cf,#bf,#ab,#cf,#c1,#ab,#df,#8b
	db #a8,#df,#8b,#a8,#df,#8b,#a8,#df
	db #8b,#a8,#df,#8b,#a8,#df,#8b,#a8
	db #df,#8b,#a8,#df,#8b,#a8,#df,#8b
	db #a8,#df,#8b,#a8,#df,#8b,#a8,#df
	db #8b,#a8,#df,#8b,#a8,#cf,#af,#a9
	db #cf,#a6,#a9,#cf,#c1,#a9,#cf,#e9
	db #9f,#cf,#14,#a1,#cf,#ce,#a1,#cf
	db #eb,#a1,#cf,#ac,#a1,#cf,#50,#a0
	db #cf,#6b,#a0,#cf,#95,#a4,#cf,#9a
	db #a4,#cf,#a6,#a4,#cf,#ab,#a4,#cf
	db #5c,#80,#cf,#26,#83,#cf,#30,#83
	db #cf,#a0,#82,#cf,#b1,#82,#cf,#63
	db #81,#cf,#6a,#81,#cf,#70,#81,#cf
	db #76,#81,#cf,#7d,#81,#cf,#83,#81
	db #cf,#b3,#81,#cf,#c5,#81,#cf,#d2
	db #81,#cf,#e2,#81,#cf,#27,#82,#cf
	db #84,#82,#cf,#55,#82,#cf,#19,#82
	db #cf,#76,#82,#cf,#94,#82,#cf,#9a
	db #82,#cf,#8d,#82,#cf,#99,#80,#cf
	db #a3,#80,#cf,#ed,#85,#cf,#1c,#86
	db #cf,#b4,#87,#cf,#76,#87,#cf,#c0
	db #87,#cf,#86,#87,#cf,#8c,#87,#cf
	db #e0,#87,#cf,#1b,#88,#cf,#58,#88
	db #cf,#44,#88,#cf,#63,#88,#cf,#bd
	db #88,#cf,#3c,#9d,#cf,#fe,#9b,#cf
	db #60,#94,#cf,#ec,#95,#cf,#d5,#99
	db #cf,#b0,#97,#cf,#ac,#97,#cf,#2a
	db #96,#cf,#d9,#99,#cf,#45,#8b,#cf
	db #0c,#88,#cf,#97,#83,#cf,#02,#ac
	db #ef,#91,#2f,#ef,#9f,#2f,#ef,#c8
	db #2f,#ef,#d9,#2f,#ef,#01,#30,#ef
	db #14,#30,#ef,#55,#30,#ef,#5f,#30
	db #ef,#c6,#30,#ef,#a2,#34,#ef,#59
	db #31,#ef,#9e,#34,#ef,#77,#35,#ef
	db #04,#36,#ef,#88,#31,#ef,#df,#36
	db #ef,#31,#37,#ef,#27,#37,#ef,#45
	db #33,#ef,#73,#2f,#ef,#ac,#32,#ef
	db #af,#32,#ef,#b6,#31,#ef,#b1,#31
	db #ef,#2f,#32,#ef,#53,#33,#ef,#49
	db #33,#ef,#c8,#33,#ef,#d8,#33,#ef
	db #d1,#2f,#ef,#36,#31,#ef,#43,#31
	db #00,#00,#00,#00,#69,#00,#00,#00
;
.init_music		; added by Megachur
;
	ld (lb327),a
	jp real_init_music
;
.music_info
	db "Prison Riot (1990)(Players)()",0
	db "",0

	read "music_end.asm"
