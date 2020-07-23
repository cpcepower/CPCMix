; Music of Reset 10 - EgoTrip Player 2-3 (2019)(Public Domain)(EgoTrip)(StArkos)
; Ripped by Megachur the 13/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "EGOTRIP2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 13
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

.l8000
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#05,#00,#02,#26,#80,#2f,#80
	db #40,#80,#59,#80,#67,#80,#7c,#80
	db #9b,#80,#b4,#80,#cb,#80,#e2,#80
	db #69,#81,#f0,#81,#05,#82,#00,#00
	db #00,#00,#00,#00,#0d,#28,#80,#01
	db #00,#7c,#f4,#78,#f4,#34,#30,#2c
	db #28,#24,#20,#1c,#18,#0d,#3c,#80
	db #01,#00,#3c,#38,#34,#30,#2c,#28
	db #a4,#ff,#ff,#a4,#fe,#ff,#a4,#ff
	db #ff,#24,#24,#24,#24,#24,#0d,#48
	db #80,#01,#00,#7e,#24,#09,#7c,#06
	db #7c,#04,#78,#02,#0d,#28,#80,#01
	db #00,#3e,#01,#36,#01,#2e,#01,#26
	db #01,#1e,#01,#16,#01,#0e,#01,#06
	db #01,#0d,#28,#80,#01,#00,#7e,#2b
	db #0c,#7a,#2a,#0d,#76,#29,#10,#72
	db #28,#09,#2e,#27,#66,#26,#09,#5e
	db #25,#0e,#16,#24,#0e,#23,#06,#22
	db #0d,#28,#80,#01,#00,#89,#1f,#01
	db #00,#8b,#18,#01,#00,#89,#18,#01
	db #00,#89,#18,#01,#00,#89,#08,#89
	db #08,#0d,#9d,#80,#01,#00,#3c,#78
	db #05,#74,#07,#30,#6c,#05,#68,#07
	db #24,#60,#05,#60,#07,#20,#60,#05
	db #0d,#c3,#80,#01,#00,#3c,#78,#03
	db #74,#07,#30,#6c,#03,#68,#07,#24
	db #60,#03,#60,#07,#20,#60,#03,#0d
	db #da,#80,#01,#00,#7c,#30,#7c,#2f
	db #7c,#2e,#7c,#2d,#7c,#2c,#7c,#2b
	db #7c,#2a,#7c,#29,#7c,#28,#7c,#27
	db #7c,#26,#7c,#25,#7c,#24,#7c,#23
	db #7c,#22,#7c,#21,#7c,#20,#7c,#1f
	db #7c,#1e,#7c,#1d,#7c,#1c,#7c,#1b
	db #7c,#1a,#7c,#19,#7c,#18,#7c,#17
	db #7c,#16,#7c,#15,#7c,#14,#7c,#13
	db #7c,#12,#7c,#11,#7c,#10,#7c,#0f
	db #7c,#0e,#7c,#0d,#7c,#0c,#7c,#0b
	db #7c,#0a,#7c,#09,#7c,#08,#7c,#07
	db #7c,#06,#7c,#05,#7c,#04,#7c,#03
	db #7c,#02,#7c,#01,#3c,#7c,#f4,#78
	db #f4,#74,#f4,#70,#f4,#6c,#f4,#68
	db #f4,#64,#f4,#60,#f4,#5c,#f4,#58
	db #f4,#54,#f4,#50,#f4,#4c,#f4,#48
	db #f4,#44,#f4,#42,#20,#f4,#0d,#28
	db #80,#01,#00,#3c,#7c,#ff,#7c,#fe
	db #7c,#fd,#7c,#fc,#7c,#fb,#7c,#fa
	db #7c,#f9,#7c,#f8,#7c,#f7,#7c,#f6
	db #7c,#f5,#7c,#f4,#7c,#f3,#7c,#f2
	db #7c,#f1,#7c,#f0,#7c,#ef,#7c,#ee
	db #7c,#ed,#7c,#ec,#7c,#eb,#7c,#ea
	db #7c,#e9,#7c,#e8,#7c,#e7,#7c,#e6
	db #7c,#e5,#7c,#e4,#7c,#e3,#7c,#e2
	db #7c,#e1,#7c,#e0,#7c,#df,#7c,#de
	db #7c,#dd,#7c,#dc,#7c,#db,#7c,#da
	db #7c,#d9,#7c,#d8,#7c,#d7,#7c,#d6
	db #7c,#d5,#7c,#d4,#7c,#d3,#7c,#d2
	db #7c,#d1,#7c,#d0,#7c,#d0,#78,#d0
	db #74,#d0,#70,#d0,#6c,#d0,#68,#d0
	db #64,#d0,#60,#d0,#5c,#d0,#58,#d0
	db #54,#d0,#50,#d0,#4c,#d0,#48,#d0
	db #44,#d0,#42,#20,#d0,#0d,#28,#80
	db #01,#00,#11,#68,#34,#00,#05,#58
	db #05,#48,#05,#38,#05,#28,#05,#18
	db #05,#08,#0d,#f2,#81,#01,#00,#05
	db #4c,#0d,#07,#82,#80,#00,#00,#00
	db #63,#82,#10,#dc,#84,#f7,#84,#bd
	db #85,#80,#00,#da,#85,#f7,#84,#1c
	db #86,#10,#83,#86,#65,#82,#96,#86
	db #10,#10,#b5,#86,#91,#87,#83,#88
	db #80,#00,#6d,#82,#63,#83,#62,#84
	db #10,#6d,#82,#63,#83,#62,#84,#70
	db #10,#8c,#86,#9f,#86,#ab,#86,#18
	db #10,#f7,#84,#0b,#87,#f7,#84,#80
	db #10,#f7,#84,#0b,#87,#f7,#84,#70
	db #10,#83,#86,#65,#82,#96,#86,#10
	db #01,#12,#82,#15,#00,#42,#60,#00
	db #42,#80,#00,#00,#00,#7e,#e3,#00
	db #00,#01,#02,#ae,#60,#02,#02,#7e
	db #60,#01,#02,#ae,#60,#02,#02,#87
	db #02,#7e,#60,#01,#b8,#60,#02,#02
	db #7e,#60,#01,#bc,#60,#02,#02,#7e
	db #60,#01,#02,#ae,#60,#02,#02,#7e
	db #60,#01,#02,#ae,#60,#02,#02,#87
	db #02,#7e,#60,#01,#b8,#60,#02,#02
	db #7e,#60,#01,#bc,#60,#02,#02,#84
	db #60,#01,#02,#b4,#60,#02,#02,#84
	db #60,#01,#02,#b4,#60,#02,#02,#8d
	db #02,#84,#60,#01,#be,#60,#02,#02
	db #84,#60,#01,#c2,#60,#02,#02,#7a
	db #60,#01,#02,#aa,#60,#02,#02,#7a
	db #60,#01,#02,#aa,#60,#02,#02,#83
	db #02,#7a,#60,#01,#b4,#60,#02,#02
	db #7a,#60,#01,#b8,#60,#02,#02,#7e
	db #60,#01,#02,#ae,#60,#02,#02,#7e
	db #60,#01,#02,#ae,#60,#02,#02,#87
	db #02,#7e,#60,#01,#b8,#60,#02,#02
	db #7e,#60,#01,#bc,#60,#02,#02,#7e
	db #60,#01,#02,#ae,#60,#02,#02,#7e
	db #60,#01,#02,#ae,#60,#02,#02,#87
	db #02,#7e,#60,#01,#cc,#60,#02,#02
	db #7e,#60,#01,#d0,#60,#02,#02,#84
	db #60,#01,#02,#b4,#60,#02,#02,#84
	db #60,#01,#02,#b4,#60,#02,#02,#83
	db #02,#84,#60,#01,#be,#60,#02,#02
	db #84,#60,#01,#ba,#60,#02,#02,#6b
	db #06,#7a,#60,#01,#02,#b8,#60,#02
	db #02,#7a,#60,#01,#02,#b4,#60,#02
	db #02,#6b,#00,#66,#e1,#00,#00,#03
	db #02,#7e,#60,#04,#02,#7e,#60,#05
	db #02,#7e,#60,#04,#02,#66,#60,#03
	db #02,#7e,#60,#05,#02,#7e,#60,#04
	db #02,#7e,#60,#05,#02,#66,#60,#03
	db #02,#7e,#60,#04,#02,#7e,#60,#05
	db #02,#7e,#60,#04,#02,#66,#60,#03
	db #02,#7e,#60,#05,#02,#7e,#60,#04
	db #02,#7e,#60,#05,#02,#66,#60,#03
	db #02,#7e,#60,#04,#02,#7e,#60,#05
	db #02,#7e,#60,#04,#02,#66,#60,#03
	db #02,#7e,#60,#05,#02,#7e,#60,#04
	db #02,#7e,#60,#05,#02,#66,#60,#03
	db #02,#7e,#60,#04,#02,#7e,#60,#05
	db #42,#00,#7e,#60,#04,#02,#66,#60
	db #03,#02,#7e,#60,#05,#02,#3f,#42
	db #00,#3f,#02,#66,#60,#03,#02,#7e
	db #60,#04,#02,#7e,#60,#05,#02,#7e
	db #60,#04,#02,#66,#60,#03,#02,#7e
	db #60,#05,#02,#7e,#60,#04,#02,#7e
	db #60,#05,#02,#66,#60,#03,#02,#7e
	db #60,#04,#02,#7e,#60,#05,#02,#7e
	db #60,#04,#02,#66,#60,#03,#02,#7e
	db #60,#05,#02,#7e,#60,#04,#02,#7e
	db #60,#05,#02,#66,#60,#03,#02,#7e
	db #60,#04,#02,#7e,#60,#05,#02,#7e
	db #60,#04,#02,#66,#60,#03,#02,#7e
	db #60,#05,#02,#7e,#60,#04,#02,#7e
	db #60,#05,#02,#66,#60,#03,#02,#7e
	db #60,#04,#02,#7e,#60,#05,#42,#00
	db #7e,#60,#04,#02,#66,#60,#03,#7e
	db #60,#05,#3f,#3f,#3f,#3f,#96,#60
	db #06,#00,#ae,#e5,#00,#00,#07,#02
	db #42,#00,#6f,#04,#6f,#02,#6f,#04
	db #6f,#04,#6f,#02,#ae,#60,#08,#04
	db #6f,#04,#6f,#02,#6f,#04,#6f,#04
	db #6f,#02,#75,#04,#75,#04,#75,#02
	db #75,#04,#75,#04,#b4,#60,#07,#02
	db #aa,#60,#08,#04,#6b,#04,#6b,#02
	db #6b,#04,#6b,#04,#6b,#02,#ae,#60
	db #07,#04,#6f,#04,#6f,#02,#6f,#04
	db #6f,#04,#6f,#02,#ae,#60,#08,#04
	db #6f,#04,#6f,#02,#6f,#04,#6f,#04
	db #6f,#02,#75,#04,#75,#04,#75,#02
	db #75,#04,#75,#04,#b4,#60,#07,#02
	db #aa,#60,#08,#06,#aa,#60,#07,#04
	db #42,#00,#42,#00,#02,#42,#00,#02
	db #aa,#60,#08,#00,#6a,#e3,#00,#00
	db #01,#02,#27,#3a,#2b,#02,#27,#2a
	db #23,#0e,#2b,#02,#27,#3a,#2b,#02
	db #27,#2a,#23,#0a,#42,#00,#00,#66
	db #e1,#00,#00,#03,#02,#7e,#60,#04
	db #02,#3f,#02,#66,#60,#03,#02,#7e
	db #60,#05,#02,#42,#00,#02,#42,#00
	db #02,#42,#00,#02,#66,#60,#03,#02
	db #7e,#60,#04,#02,#7e,#60,#03,#02
	db #27,#02,#7e,#60,#05,#0e,#66,#60
	db #03,#02,#7e,#60,#04,#02,#3f,#02
	db #66,#60,#03,#02,#7e,#60,#05,#02
	db #42,#00,#02,#42,#00,#02,#42,#00
	db #02,#66,#60,#03,#02,#7e,#60,#04
	db #02,#7e,#60,#03,#02,#27,#02,#7e
	db #60,#05,#06,#42,#00,#42,#00,#96
	db #60,#06,#02,#66,#60,#03,#02,#7e
	db #60,#04,#02,#3f,#02,#66,#60,#03
	db #02,#7e,#60,#05,#02,#42,#00,#02
	db #42,#00,#02,#42,#00,#02,#66,#60
	db #03,#02,#7e,#60,#04,#02,#7e,#60
	db #03,#02,#27,#02,#7e,#60,#05,#0e
	db #66,#60,#03,#02,#7e,#60,#04,#02
	db #3f,#02,#66,#60,#03,#02,#7e,#60
	db #05,#02,#42,#00,#02,#42,#00,#02
	db #42,#00,#02,#66,#60,#03,#02,#7e
	db #60,#04,#02,#7e,#60,#03,#02,#27
	db #02,#7e,#60,#05,#02,#3f,#02,#57
	db #02,#96,#60,#06,#00,#82,#e5,#00
	db #00,#02,#02,#3f,#3a,#43,#02,#3f
	db #2a,#3b,#0e,#43,#02,#3f,#3a,#43
	db #02,#3f,#2a,#aa,#60,#07,#0a,#42
	db #00,#00,#6a,#e3,#00,#00,#01,#02
	db #27,#02,#27,#02,#27,#02,#27,#06
	db #27,#06,#27,#0e,#23,#0e,#2b,#02
	db #27,#02,#27,#02,#27,#02,#27,#0e
	db #27,#1e,#2b,#02,#27,#02,#27,#02
	db #27,#02,#27,#06,#27,#06,#27,#0e
	db #23,#0e,#2b,#02,#27,#02,#27,#02
	db #27,#02,#27,#0e,#3f,#0e,#57,#06
	db #6f,#02,#87,#9f,#b2,#e5,#00,#00
	db #08,#02,#ae,#60,#07,#02,#6f,#02
	db #6f,#02,#ae,#60,#08,#06,#6f,#06
	db #6f,#0e,#aa,#60,#07,#0e,#b2,#60
	db #08,#02,#ae,#60,#07,#02,#6f,#02
	db #6f,#02,#ae,#60,#08,#06,#42,#00
	db #06,#6f,#0e,#42,#00,#0e,#73,#02
	db #ae,#60,#07,#02,#6f,#02,#6f,#02
	db #ae,#60,#08,#06,#6f,#06,#6f,#0e
	db #aa,#60,#07,#0e,#b2,#60,#08,#02
	db #ae,#60,#07,#02,#6f,#02,#6f,#02
	db #ae,#60,#08,#06,#42,#00,#06,#6f
	db #0e,#ae,#60,#01,#75,#7d,#6f,#75
	db #7d,#87,#9f,#7e,#e3,#00,#00,#09
	db #18,#42,#00,#00,#aa,#e0,#00,#00
	db #02,#0e,#96,#60,#09,#00,#96,#e3
	db #00,#00,#09,#18,#42,#00,#00,#66
	db #e0,#00,#00,#03,#26,#7e,#60,#05
	db #02,#3f,#00,#aa,#e0,#00,#00,#08
	db #0e,#7e,#60,#09,#00,#7e,#e3,#00
	db #00,#01,#0e,#c6,#69,#09,#0e,#7e
	db #63,#01,#0e,#c6,#69,#09,#02,#42
	db #00,#42,#00,#42,#00,#02,#42,#00
	db #02,#84,#63,#01,#0e,#cc,#69,#09
	db #02,#42,#00,#42,#00,#42,#00,#02
	db #42,#00,#02,#7a,#63,#01,#0e,#c2
	db #69,#09,#0e,#7e,#63,#01,#0e,#c6
	db #69,#09,#0e,#7e,#63,#01,#0e,#c6
	db #69,#09,#0e,#84,#63,#01,#0e,#cc
	db #69,#09,#0e,#92,#63,#01,#0e,#c2
	db #69,#0a,#00,#7e,#e0,#00,#00,#01
	db #02,#ae,#60,#0b,#0a,#66,#60,#01
	db #02,#66,#60,#06,#3f,#57,#6f,#04
	db #7e,#60,#01,#02,#ae,#60,#0b,#0a
	db #7e,#60,#0a,#0e,#7e,#60,#01,#02
	db #ae,#60,#0b,#0a,#66,#60,#01,#02
	db #66,#60,#06,#3f,#57,#6f,#04,#7e
	db #60,#01,#02,#ae,#60,#0b,#0a,#b2
	db #60,#0c,#02,#6f,#02,#6b,#06,#7e
	db #60,#01,#02,#ae,#60,#0b,#0a,#66
	db #60,#01,#02,#66,#60,#06,#3f,#57
	db #6f,#04,#7e,#60,#01,#02,#ae,#60
	db #0b,#0a,#7e,#60,#0a,#0e,#7e,#60
	db #01,#02,#ae,#60,#0b,#0a,#66,#60
	db #01,#02,#66,#60,#06,#3f,#57,#6f
	db #04,#7e,#60,#01,#02,#ae,#60,#0b
	db #0a,#96,#60,#0c,#04,#57,#02,#57
	db #00,#66,#e0,#00,#00,#03,#02,#66
	db #60,#04,#02,#7e,#60,#05,#02,#66
	db #60,#04,#02,#27,#02,#7e,#60,#05
	db #02,#66,#60,#04,#02,#7e,#60,#05
	db #02,#66,#60,#03,#02,#66,#60,#04
	db #02,#7e,#60,#05,#02,#66,#60,#04
	db #02,#27,#02,#7e,#60,#05,#02,#66
	db #60,#04,#02,#7e,#60,#05,#02,#66
	db #60,#03,#02,#66,#60,#04,#02,#7e
	db #60,#05,#02,#66,#60,#04,#02,#27
	db #02,#7e,#60,#05,#02,#66,#60,#04
	db #02,#7e,#60,#05,#02,#66,#60,#03
	db #02,#66,#60,#04,#02,#7e,#60,#05
	db #02,#66,#60,#04,#02,#27,#02,#7e
	db #60,#05,#02,#66,#60,#04,#02,#7e
	db #60,#05,#3f,#66,#60,#03,#02,#66
	db #60,#04,#02,#7e,#60,#05,#02,#66
	db #60,#04,#02,#66,#60,#03,#02,#66
	db #60,#04,#02,#7e,#60,#05,#02,#66
	db #60,#04,#02,#66,#60,#03,#02,#66
	db #60,#04,#02,#7e,#60,#05,#02,#66
	db #60,#04,#02,#66,#60,#03,#02,#66
	db #60,#04,#02,#7e,#60,#05,#02,#66
	db #60,#04,#02,#66,#60,#03,#02,#7e
	db #60,#05,#02,#66,#60,#03,#02,#7e
	db #60,#05,#02,#66,#60,#03,#02,#7e
	db #60,#05,#02,#66,#60,#03,#02,#7e
	db #60,#05,#02,#66,#60,#03,#42,#00
	db #27,#42,#00,#27,#42,#00,#27,#42
	db #00,#7e,#60,#05,#3f,#3f,#3f,#3f
	db #3f,#3f,#3f,#ae,#e5,#00,#00,#07
	db #1e,#ae,#60,#08,#1e,#75,#1e,#6b
	db #1e,#ae,#60,#07,#1e,#ae,#60,#08
	db #1e,#75,#1e,#6b,#00,#00,#00,#00
;
; #4000 - player reallocated by Megachur
;
	jp l468c
	jp l400a
	jp l46e1
.l4009
	db #00
;
.play_music
.l400a
;
	call l46fb
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l4009),a
.l401a equ $ + 1
	ld a,#01
	dec a
	jp nz,l41e6
.l4020 equ $ + 1
	ld a,#01
	dec a
	jr nz,l408c
.l4025 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l4033
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l4033
	rra
	jr nc,l403b
	ld de,l40dc
	ldi
.l403b
	rra
	jr nc,l4043
	ld de,l4141
	ldi
.l4043
	rra
	jr nc,l404b
	ld de,l41a6
	ldi
.l404b
	ld de,l40bb
	ldi
	ldi
	ld de,l4120
	ldi
	ldi
	ld de,l4185
	ldi
	ldi
	rra
	jr nc,l4068
	ld de,l408b
	ldi
.l4068
	rra
	jr nc,l4073
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4077),de
.l4073
	ld (l4025),hl
.l4077 equ $ + 1
	ld hl,#0000
	ld (l4095),hl
	ld a,#01
	ld (l4090),a
	ld (l40b6),a
	ld (l411b),a
	ld (l4180),a
.l408b equ $ + 1
	ld a,#01
.l408c
	ld (l4020),a
.l4090 equ $ + 1
	ld a,#01
	dec a
	jr nz,l40b2
.l4095 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l40af
	srl a
	jr nz,l40a3
	ld a,(hl)
	inc hl
.l40a3
	jr nc,l40aa
	ld (l4009),a
	jr l40ad
.l40aa
	ld (l41e5),a
.l40ad
	ld a,#01
.l40af
	ld (l4095),hl
.l40b2
	ld (l4090),a
.l40b6 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4117
.l40bb equ $ + 1
	ld hl,#0000
	call l4538
	ld (l40bb),hl
	jr c,l4117
	ld a,d
	rra
	jr nc,l40ce
	and #0f
	ld (l4268),a
.l40ce
	rl d
	jr nc,l40d6
	ld (l4256),ix
.l40d6
	rl d
	jr nc,l4115
	ld a,e
.l40dc equ $ + 1
	add #00
	ld (l4267),a
	ld hl,#0000
	ld (l4253),hl
	rl d
	jr c,l40f5
.l40eb equ $ + 1
	ld hl,#0000
	ld a,(l4278)
	ld (l4270),a
	jr l4112
.l40f5
	ld l,b
	add hl,hl
.l40f8 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l4278),a
	ld (l4270),a
	ld a,(hl)
	or a
	jr z,l410e
	ld (l4363),a
.l410e
	inc hl
	ld (l40eb),hl
.l4112
	ld (l426a),hl
.l4115
	ld a,#01
.l4117
	ld (l40b6),a
.l411b equ $ + 1
	ld a,#01
	dec a
	jr nz,l417c
.l4120 equ $ + 1
	ld hl,#0000
	call l4538
	ld (l4120),hl
	jr c,l417c
	ld a,d
	rra
	jr nc,l4133
	and #0f
	ld (l4234),a
.l4133
	rl d
	jr nc,l413b
	ld (l4222),ix
.l413b
	rl d
	jr nc,l417a
	ld a,e
.l4141 equ $ + 1
	add #00
	ld (l4233),a
	ld hl,#0000
	ld (l421f),hl
	rl d
	jr c,l415a
.l4150 equ $ + 1
	ld hl,#0000
	ld a,(l4244)
	ld (l423c),a
	jr l4177
.l415a
	ld l,b
	add hl,hl
.l415d equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l4244),a
	ld (l423c),a
	ld a,(hl)
	or a
	jr z,l4173
	ld (l4363),a
.l4173
	inc hl
	ld (l4150),hl
.l4177
	ld (l4236),hl
.l417a
	ld a,#01
.l417c
	ld (l411b),a
.l4180 equ $ + 1
	ld a,#01
	dec a
	jr nz,l41e1
.l4185 equ $ + 1
	ld hl,#0000
	call l4538
	ld (l4185),hl
	jr c,l41e1
	ld a,d
	rra
	jr nc,l4198
	and #0f
	ld (l4203),a
.l4198
	rl d
	jr nc,l41a0
	ld (l41f1),ix
.l41a0
	rl d
	jr nc,l41df
	ld a,e
.l41a6 equ $ + 1
	add #00
	ld (l4202),a
	ld hl,#0000
	ld (l41ee),hl
	rl d
	jr c,l41bf
.l41b5 equ $ + 1
	ld hl,#0000
	ld a,(l4213)
	ld (l420b),a
	jr l41dc
.l41bf
	ld l,b
	add hl,hl
.l41c2 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l4213),a
	ld (l420b),a
	ld a,(hl)
	or a
	jr z,l41d8
	ld (l4363),a
.l41d8
	inc hl
	ld (l41b5),hl
.l41dc
	ld (l4205),hl
.l41df
	ld a,#01
.l41e1
	ld (l4180),a
.l41e5 equ $ + 1
	ld a,#01
.l41e6
	ld (l401a),a
	ld iy,l437a
.l41ee equ $ + 1
	ld hl,#0000
.l41f1 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l41ee),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l4203 equ $ + 2
.l4202 equ $ + 1
	ld de,#0000
.l4205 equ $ + 1
	ld hl,#0000
	call l4385
.l420b equ $ + 1
	ld a,#01
	dec a
	jr nz,l4214
	ld (l4205),hl
.l4213 equ $ + 1
	ld a,#06
.l4214
	ld (l420b),a
	ld a,lx
	ex af,af'
	ld iy,l4378
.l421f equ $ + 1
	ld hl,#0000
.l4222 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l421f),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l4234 equ $ + 2
.l4233 equ $ + 1
	ld de,#0000
.l4236 equ $ + 1
	ld hl,#0000
	call l4385
.l423c equ $ + 1
	ld a,#01
	dec a
	jr nz,l4245
	ld (l4236),hl
.l4244 equ $ + 1
	ld a,#06
.l4245
	ld (l423c),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l4376
.l4253 equ $ + 1
	ld hl,#0000
.l4256 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4253),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l4268 equ $ + 2
.l4267 equ $ + 1
	ld de,#0000
.l426a equ $ + 1
	ld hl,#0000
	call l4385
.l4270 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4279
	ld (l426a),hl
.l4278 equ $ + 1
	ld a,#06
.l4279
	ld (l4270),a
	ex af,af'
	or lx
.l427f
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l4376
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
	call l4361
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
.l435f
	nop
	ret
.l4361
	ld a,(hl)
.l4363 equ $ + 1
	cp #ff
	ret z
	ld (l4363),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l4376
	nop
	nop
.l4378
	nop
	nop
.l437a
	nop
	nop
.l437c
	nop
.l437d
	nop
	nop
	nop
	nop
	nop
.l4382
	nop
	nop
.l4384
	nop
.l4385
	ld b,(hl)
	inc hl
	rr b
	jp c,l43e3
	rr b
	jr c,l43b3
	ld a,b
	and #0f
	jr nz,l439c
	ld (iy+#07),a
	ld lx,#09
	ret
.l439c
	ld lx,#08
	sub d
	jr nc,l43a3
	xor a
.l43a3
	ld (iy+#07),a
	rr b
	call l450c
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l43b3
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l43c3
	ld (l437c),a
	ld lx,#00
.l43c3
	ld a,b
	and #0f
	sub d
	jr nc,l43ca
	xor a
.l43ca
	ld (iy+#07),a
	bit 5,c
	jr nz,l43d4
	inc lx
	ret
.l43d4
	rr b
	bit 6,c
	call l44fe
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l43e3
	rr b
	jr nc,l43f6
	ld a,(l4270)
	ld c,a
	ld a,(l4278)
	cp c
	jr nz,l43f6
	ld a,#fe
	ld (l4363),a
.l43f6
	bit 1,b
	jp nz,l44af
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l4384),a
	bit 0,b
	jr z,l4465
	bit 2,b
	call l44fe
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l4425),a
	ld a,b
	exx
.l4425 equ $ + 1
	jr l4426
.l4426
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
	jr nc,l4445
	inc hl
.l4445
	bit 5,a
	jr z,l4455
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
.l4455
	ld (l4382),hl
	exx
.l4459
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l437c),a
	ld lx,#00
	ret
.l4465
	bit 2,b
	call l44fe
	ld (l4382),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l4479),a
	ld a,b
	exx
.l4479 equ $ + 1
	jr l447a
.l447a
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
	jr z,l44a6
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
.l44a6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l4459
.l44af
	bit 0,b
	jr z,l44ba
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l4385
.l44ba
	ld (iy+#07),#10
	bit 5,b
	jr nz,l44c7
	ld lx,#09
	jr l44da
.l44c7
	ld lx,#08
	ld hx,e
	bit 2,b
	call l44fe
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l44da
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l4384),a
	rr b
	rr b
	bit 2,b
	call l44fe
	ld (l4382),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l437c),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l44fe
	jr z,l450c
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
.l450c
	bit 4,b
	jr z,l451c
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
.l451c
	ld a,e
	bit 3,b
	jr z,l4529
	add (hl)
	inc hl
	cp #90
	jr c,l4529
	ld a,#8f
.l4529
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l456c
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l4538
	ld a,(hl)
	inc hl
	srl a
	jr c,l455f
	sub #20
	jr c,l4569
	jr z,l455b
	dec a
	ld e,a
.l4546
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l4554
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l4554
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l455b
	ld e,(hl)
	inc hl
	jr l4546
.l455f
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l4569
	add #20
	ret
.l456c
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
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
	dw #000f,#000e,#000d,#000d
	dw #000c,#000b,#000b,#000a
	dw #0009,#0009,#0008,#0008
	dw #0007,#0007,#0007,#0006
	dw #0006,#0006,#0005,#0005
	dw #0005,#0004,#0004,#0004
	dw #0004,#0004,#0003,#0003
	dw #0003,#0003,#0003,#0002
	dw #0002,#0002,#0002,#0002
	dw #0002,#0002,#0002,#0002
	dw #0001,#0001,#0001,#0001
	dw #0001,#0001,#0001,#0001
;
.real_init_music
.l468c
;
	ld hl,#0009
	add hl,de
	ld de,l41e5
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l40f8),hl
	ld (l415d),hl
	ld (l41c2),hl
	add hl,bc
	ld de,l408b
	ldi
	ld de,l40dc
	ldi
	ld de,l4141
	ldi
	ld de,l41a6
	ldi
	ld de,l4077
	ldi
	ldi
	ld (l4025),hl
	ld a,#01
	ld (l401a),a
	ld (l4020),a
	ld a,#ff
	ld (l4384),a
	ld hl,(l40f8)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l426a),hl
	ld (l4236),hl
	ld (l4205),hl
	ret
;
.stop_music
.l46e1
;
	call l46fb
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	ld hl,l437d
	ld bc,#0300
.l46f2
	ld (hl),c
	inc hl
	djnz l46f2
	ld a,#3f
	jp l427f
.l46fb
	ld a,i
	di
	ld a,#f3
	jp po,l4705
	ld a,#fb
.l4705
	ld (l435f),a
	ret
;
.init_music	; added by Megachur
;
	ld de,l8000
	jp real_init_music
;
.music_info
	db "Reset 10 - EgoTrip Player 2-3 (2019)(Public Domain)(EgoTrip)",0
	db "StArkos",0

	read "music_end.asm"
