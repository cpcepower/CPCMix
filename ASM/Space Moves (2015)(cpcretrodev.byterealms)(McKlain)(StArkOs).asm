; Music of Space Moves (2015)(cpcretrodev.byterealms)(McKlain)(StArkOs)
; Ripped by Megachur the 30/10/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SPACEMOV.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 30
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #0040

	read "music_header.asm"

.l0040	
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#15,#01,#5c,#00,#65,#00
	db #b2,#00,#cb,#00,#e5,#00,#02,#01
	db #31,#01,#4a,#01,#00,#00,#00,#00
	db #00,#00,#0d,#5e,#00,#01,#00,#f0
	db #ff,#ff,#0c,#f0,#ff,#ff,#18,#f0
	db #01,#00,#0c,#f0,#01,#00,#18,#e4
	db #ff,#ff,#0c,#e8,#ff,#ff,#18,#e8
	db #01,#00,#0c,#e8,#01,#00,#18,#dc
	db #ff,#ff,#0c,#e0,#ff,#ff,#18,#e0
	db #01,#00,#0c,#e0,#01,#00,#18,#d4
	db #ff,#ff,#0c,#d8,#ff,#ff,#18,#d8
	db #01,#00,#0c,#d8,#01,#00,#18,#cc
	db #ff,#ff,#0c,#d0,#ff,#ff,#18,#0d
	db #5e,#00,#01,#00,#7e,#2f,#08,#78
	db #06,#74,#04,#70,#02,#e4,#fe,#ff
	db #0c,#a0,#fe,#ff,#dc,#02,#00,#0c
	db #0d,#5e,#00,#01,#00,#6c,#0c,#2c
	db #e8,#02,#00,#0c,#a4,#02,#00,#e0
	db #fe,#ff,#0c,#9c,#fe,#ff,#d8,#02
	db #00,#0c,#0d,#5e,#00,#01,#00,#7e
	db #2e,#08,#78,#06,#74,#04,#72,#25
	db #02,#e6,#25,#fe,#ff,#0c,#a2,#26
	db #fe,#ff,#de,#27,#02,#00,#0c,#0d
	db #5e,#00,#01,#00,#74,#0c,#34,#30
	db #ac,#01,#00,#ac,#01,#00,#2c,#2c
	db #2c,#ac,#ff,#ff,#ac,#ff,#ff,#2c
	db #2c,#2c,#ac,#01,#00,#ac,#02,#00
	db #ac,#01,#00,#2c,#2c,#ac,#ff,#ff
	db #ac,#fe,#ff,#ac,#ff,#ff,#0d,#18
	db #01,#01,#00,#7e,#2f,#03,#78,#01
	db #74,#ff,#70,#fd,#e4,#fe,#ff,#0c
	db #a0,#fe,#ff,#dc,#02,#00,#0c,#0d
	db #5e,#00,#01,#00,#7e,#2e,#03,#78
	db #01,#74,#ff,#72,#25,#fd,#66,#25
	db #0c,#22,#26,#5e,#27,#0c,#0d,#5e
	db #00,#20,#00,#f4,#00,#de,#01,#00
	db #bd,#03,#fd,#02,#bd,#03,#06,#f4
	db #00,#fd,#02,#ea,#02,#df,#01,#02
	db #f9,#fd,#02,#13,#02,#df,#01,#00
	db #fd,#02,#13,#02,#df,#01,#0a,#00
	db #00,#fd,#02,#13,#02,#55,#02,#00
	db #fd,#02,#77,#03,#55,#02,#0e,#05
	db #05,#05,#df,#01,#90,#02,#55,#02
	db #00,#df,#01,#31,#03,#55,#02,#0e
	db #00,#00,#00,#fd,#02,#13,#02,#55
	db #02,#00,#fd,#02,#77,#03,#55,#02
	db #0e,#05,#05,#05,#df,#01,#90,#02
	db #55,#02,#00,#df,#01,#31,#03,#55
	db #02,#0e,#00,#00,#00,#fd,#02,#13
	db #02,#d2,#02,#08,#05,#fd,#02,#13
	db #02,#df,#01,#01,#86,#01,#00,#92
	db #e5,#00,#00,#01,#42,#00,#53,#42
	db #00,#59,#42,#00,#53,#53,#42,#00
	db #42,#00,#53,#42,#00,#61,#42,#00
	db #53,#42,#00,#53,#42,#00,#53,#42
	db #00,#63,#42,#00,#53,#53,#42,#00
	db #42,#00,#53,#42,#00,#67,#42,#00
	db #53,#42,#00,#84,#e1,#00,#00,#02
	db #84,#60,#03,#5d,#45,#84,#60,#04
	db #84,#60,#03,#5d,#45,#84,#60,#02
	db #84,#60,#03,#5d,#45,#84,#60,#04
	db #84,#60,#03,#5d,#45,#84,#60,#02
	db #84,#60,#03,#5d,#45,#84,#60,#04
	db #84,#60,#03,#5d,#45,#84,#60,#02
	db #84,#60,#03,#5d,#45,#84,#60,#04
	db #84,#60,#03,#5d,#45,#b4,#e1,#00
	db #00,#05,#06,#b4,#45,#06,#b4,#4b
	db #02,#b4,#41,#02,#79,#02,#75,#02
	db #7b,#02,#42,#80,#05,#00,#42,#80
	db #10,#00,#b4,#c0,#00,#00,#02,#7f
	db #02,#42,#80,#05,#00,#42,#80,#10
	db #00,#b4,#c0,#00,#00,#02,#83,#02
	db #42,#80,#05,#00,#42,#80,#10,#00
	db #84,#e0,#00,#00,#06,#84,#60,#03
	db #5d,#45,#84,#60,#07,#84,#60,#03
	db #5d,#45,#84,#60,#06,#84,#60,#03
	db #5d,#45,#84,#60,#07,#84,#60,#03
	db #5d,#45,#84,#60,#06,#84,#60,#03
	db #5d,#45,#84,#60,#07,#84,#60,#03
	db #5d,#45,#84,#60,#06,#84,#60,#03
	db #5d,#45,#84,#60,#07,#84,#60,#03
	db #5d,#45,#cc,#e1,#00,#00,#05,#06
	db #42,#05,#06,#42,#0b,#06,#42,#11
	db #06,#42,#15,#06,#42,#19,#06,#42
	db #1d,#00,#42,#80,#00,#00,#2e,#84
	db #69,#04,#02,#84,#47,#02,#84,#45
	db #84,#43,#84,#41,#45,#92,#e5,#00
	db #00,#01,#42,#00,#53,#42,#00,#53
	db #42,#00,#4f,#53,#42,#00,#42,#00
	db #53,#42,#00,#53,#42,#00,#4f,#42
	db #00,#53,#42,#00,#53,#42,#00,#53
	db #42,#00,#4f,#53,#42,#00,#42,#00
	db #53,#42,#00,#53,#42,#00,#4f,#42
	db #00,#84,#e1,#00,#00,#06,#84,#60
	db #03,#5d,#45,#84,#60,#07,#84,#60
	db #03,#5d,#45,#84,#60,#06,#84,#60
	db #03,#5d,#45,#84,#60,#07,#84,#60
	db #03,#5d,#45,#84,#60,#06,#84,#60
	db #03,#5d,#45,#84,#60,#07,#84,#60
	db #03,#5d,#45,#84,#60,#06,#84,#60
	db #03,#5d,#45,#84,#60,#07,#84,#60
	db #03,#84,#60,#07,#84,#60,#03,#84
	db #e0,#00,#00,#02,#84,#60,#03,#5d
	db #45,#84,#60,#04,#84,#60,#03,#5d
	db #45,#84,#60,#02,#84,#60,#03,#5d
	db #45,#84,#60,#04,#84,#60,#03,#5d
	db #45,#84,#60,#02,#84,#60,#03,#5d
	db #45,#84,#60,#04,#84,#60,#03,#5d
	db #45,#84,#60,#02,#84,#60,#03,#5d
	db #45,#84,#60,#04,#84,#60,#03,#84
	db #60,#04,#84,#60,#03,#42,#60,#00
	db #42,#80,#00,#00,#00,#41,#54,#31
	db #30,#01,#40,#42,#0f,#02,#06,#6a
	db #00,#d7,#03,#e0,#03,#00,#04,#00
	db #00,#00,#00,#00,#00,#0d,#d9,#03
	db #01,#00,#7a,#21,#f4,#74,#0c,#30
	db #2c,#28,#24,#24,#24,#a4,#fe,#ff
	db #24,#a4,#02,#00,#24,#a4,#fe,#ff
	db #24,#a4,#02,#00,#24,#0d,#ed,#03
	db #03,#00,#78,#18,#7c,#0c,#38,#78
	db #f4,#70,#18,#74,#0c,#30,#70,#f4
	db #68,#18,#6c,#0c,#28,#68,#f4,#60
	db #18,#64,#0c,#20,#60,#f4,#58,#18
	db #5c,#0c,#18,#58,#f4,#50,#18,#54
	db #0c,#10,#50,#f4,#48,#18,#4c,#0c
	db #08,#48,#f4,#42,#20,#18,#44,#0c
	db #0d,#d9,#03,#18,#00,#00,#00,#32
	db #05,#00,#a6,#05,#33,#05,#3b,#05
	db #00,#a6,#05,#33,#05,#3b,#05,#00
	db #a6,#05,#f4,#05,#3b,#05,#00,#a6
	db #05,#d5,#05,#3b,#05,#0e,#00,#00
	db #00,#a6,#05,#6a,#05,#3b,#05,#00
	db #a6,#05,#79,#05,#3b,#05,#0a,#fc
	db #fc,#a6,#05,#88,#05,#3b,#05,#0a
	db #f9,#f9,#a6,#05,#97,#05,#3b,#05
	db #0a,#00,#00,#a6,#05,#6a,#05,#3b
	db #05,#00,#a6,#05,#79,#05,#3b,#05
	db #0a,#fc,#fc,#a6,#05,#88,#05,#3b
	db #05,#0a,#f9,#f9,#a6,#05,#97,#05
	db #3b,#05,#0e,#00,#04,#00,#a6,#05
	db #88,#05,#3b,#05,#04,#00,#a6,#05
	db #33,#05,#3b,#05,#0a,#fc,#fc,#a6
	db #05,#f4,#05,#3b,#05,#0a,#f9,#f9
	db #a6,#05,#d5,#05,#3b,#05,#0e,#02
	db #02,#02,#a6,#05,#6a,#05,#3b,#05
	db #00,#a6,#05,#79,#05,#3b,#05,#0a
	db #fe,#fe,#a6,#05,#88,#05,#3b,#05
	db #0a,#fb,#fb,#a6,#05,#97,#05,#3b
	db #05,#0a,#02,#02,#a6,#05,#6a,#05
	db #3b,#05,#00,#a6,#05,#79,#05,#3b
	db #05,#0a,#fe,#fe,#a6,#05,#88,#05
	db #3b,#05,#0a,#fb,#fb,#a6,#05,#97
	db #05,#3b,#05,#0e,#02,#06,#02,#a6
	db #05,#88,#05,#3b,#05,#04,#02,#a6
	db #05,#33,#05,#3b,#05,#0a,#fb,#fb
	db #a6,#05,#f4,#05,#3b,#05,#0a,#fe
	db #fe,#a6,#05,#d5,#05,#3b,#05,#01
	db #5d,#04,#00,#42,#60,#00,#42,#80
	db #00,#00,#00,#92,#e1,#00,#00,#01
	db #02,#42,#07,#92,#45,#92,#43,#92
	db #41,#92,#40,#02,#42,#07,#92,#45
	db #92,#43,#92,#41,#92,#40,#02,#42
	db #07,#92,#45,#92,#43,#92,#41,#92
	db #40,#02,#42,#07,#92,#45,#92,#43
	db #92,#41,#aa,#e1,#00,#00,#02,#0a
	db #aa,#47,#0a,#aa,#4d,#0a,#a0,#41
	db #00,#b4,#e1,#00,#00,#02,#0a,#b4
	db #47,#0a,#b4,#4d,#0a,#aa,#41,#00
	db #a2,#e1,#00,#00,#02,#0a,#a2,#47
	db #0a,#a2,#4d,#0a,#a2,#53,#00,#b8
	db #e1,#00,#00,#02,#0a,#b8,#47,#0a
	db #b8,#4d,#0a,#ae,#41,#00,#62,#e1
	db #00,#00,#01,#02,#42,#07,#62,#45
	db #62,#43,#62,#41,#62,#40,#02,#42
	db #07,#62,#45,#62,#43,#62,#41,#62
	db #40,#02,#42,#07,#62,#45,#62,#43
	db #62,#41,#62,#40,#02,#42,#07,#62
	db #45,#62,#43,#62,#41,#aa,#eb,#00
	db #00,#02,#79,#83,#7b,#75,#79,#aa
	db #49,#79,#83,#7b,#75,#79,#aa,#47
	db #79,#83,#7b,#75,#79,#aa,#45,#79
	db #83,#7b,#75,#79,#aa,#f3,#00,#00
	db #02,#79,#83,#7b,#75,#79,#aa,#51
	db #79,#83,#7b,#75,#79,#aa,#4f,#79
	db #83,#7b,#75,#79,#aa,#4d,#79,#83
	db #7b,#75,#79,#41,#54,#31,#30,#01
	db #40,#42,#0f,#02,#ff,#63,#01,#2b
	db #06,#34,#06,#5d,#06,#a1,#06,#d4
	db #06,#14,#07,#00,#00,#00,#00,#00
	db #00,#0d,#2d,#06,#01,#00,#3a,#2b
	db #72,#38,#04,#76,#3d,#06,#76,#39
	db #08,#72,#2a,#0a,#32,#0a,#32,#09
	db #2e,#0c,#2e,#0c,#26,#0c,#22,#0f
	db #1e,#11,#1a,#13,#16,#17,#12,#19
	db #0e,#1c,#0d,#2d,#06,#02,#00,#7e
	db #3f,#fa,#7e,#3f,#fa,#7a,#3f,#f9
	db #7a,#3f,#f9,#76,#3f,#f8,#72,#3e
	db #f8,#72,#3d,#f7,#6e,#3e,#f7,#6e
	db #3f,#f6,#6a,#3f,#f6,#6a,#3e,#f5
	db #66,#3d,#f5,#62,#3e,#f4,#5e,#3e
	db #f4,#5a,#3e,#f4,#56,#3d,#f4,#52
	db #3d,#f4,#4e,#3d,#f4,#4a,#3e,#f4
	db #46,#3f,#f4,#46,#3f,#f4,#0d,#2d
	db #06,#01,#00,#7a,#23,#f2,#7a,#23
	db #21,#76,#22,#1b,#72,#22,#09,#2e
	db #22,#aa,#21,#03,#00,#a6,#21,#06
	db #00,#a0,#09,#00,#9c,#0c,#00,#98
	db #0f,#00,#94,#12,#00,#90,#15,#00
	db #8c,#18,#00,#88,#1b,#00,#84,#1f
	db #00,#0d,#2d,#06,#02,#00,#3e,#3d
	db #7a,#3a,#ff,#7a,#3c,#fe,#76,#3d
	db #fd,#72,#3c,#fc,#6e,#3a,#fb,#6a
	db #37,#fa,#6a,#35,#f9,#6a,#34,#f8
	db #6a,#33,#f7,#62,#33,#f6,#62,#33
	db #f5,#62,#33,#f4,#5a,#33,#f3,#56
	db #35,#f2,#52,#36,#f1,#52,#36,#f0
	db #4e,#37,#ef,#4e,#37,#ee,#4a,#36
	db #ed,#0d,#2d,#06,#01,#00,#74,#08
	db #f8,#ff,#ff,#03,#fc,#fe,#ff,#07
	db #fc,#fd,#ff,#01,#b8,#fc,#ff,#f8
	db #fb,#ff,#08,#f4,#fa,#ff,#03,#f4
	db #f9,#ff,#07,#f0,#f8,#ff,#01,#b0
	db #f7,#ff,#ec,#f6,#ff,#08,#ec,#f5
	db #ff,#03,#e8,#f4,#ff,#07,#e8,#f3
	db #ff,#01,#a4,#f2,#ff,#e4,#f1,#ff
	db #08,#e0,#f0,#ff,#03,#e0,#ef,#ff
	db #07,#dc,#ee,#ff,#01,#9c,#ed,#ff
	db #d8,#ec,#ff,#08,#d8,#eb,#ff,#03
	db #d4,#ea,#ff,#07,#d4,#e9,#ff,#01
	db #90,#e8,#ff,#cc,#e7,#ff,#08,#c8
	db #e6,#ff,#03,#c4,#e5,#ff,#07,#0d
	db #2d,#06,#40,#00,#00,#00,#92,#07
	db #00,#93,#07,#93,#07,#93,#07,#01
	db #88,#07,#00,#42,#80,#00,#00,#00
;	db #dd,#e5,#dd,#21,#00,#00,#dd,#39
;	db #11,#00,#00,#01,#00,#00,#dd,#6e
;	db #04,#dd,#66,#05,#09,#23,#23,#7e
;	db #b7,#20,#5e,#dd,#7e,#08,#b7,#20
;	db #1b,#d5,#3e,#01,#f5,#33,#21,#00
;	db #00,#e5,#2e,#24,#e5,#21,#01,#0f
;	db #e5,#cd,#d6,#79,#21,#07,#00,#39
;	db #f9,#d1,#18,#19,#d5,#3e,#01,#f5
;	db #33,#21,#00,#00,#e5,#2e,#40,#e5
;	db #21,#03,#0f,#e5,#cd,#d6,#79,#21
;	db #07,#00,#39,#f9,#d1,#4a,#06,#00
;	db #69,#60,#29,#09,#55,#44,#dd,#7e
;	db #04,#82,#5f,#dd,#7e,#05,#88,#57
;	db #6b,#62,#23,#23,#36,#01,#dd,#7e
;	db #06,#12,#13,#dd,#7e,#07,#12,#18
;	db #0a,#03,#03,#03,#1c,#7b,#57,#d6
;	db #02,#38,#8b,#dd,#e1,#c9
;
; #722a	- player reallocated by Megachur
;
.l722b equ $ + 1
.l722a
db #00,#00
;
.l722c
.play_music
;
	push ix
	push iy
	xor a
	ld (l722a),a
.l7235 equ $ + 1
	ld a,#01
	dec a
	jp nz,l7408
.l723b equ $ + 1
	ld a,#01
	dec a
	jr nz,l72ae
.l7240 equ $ + 1
	ld hl,#0441
	ld a,(hl)
	inc hl
	rra
	jr nc,l7255
	ld a,(l722b)
	inc a
	ld (l722b),a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l7255
	rra
	jr nc,l725d
	ld de,l72fe
	ldi
.l725d
	rra
	jr nc,l7265
	ld de,l7363
	ldi
.l7265
	rra
	jr nc,l726d
	ld de,l73c8
	ldi
.l726d
	ld de,l72dd
	ldi
	ldi
	ld de,l7342
	ldi
	ldi
	ld de,l73a7
	ldi
	ldi
	rra
	jr nc,l728a
	ld de,l72ad
	ldi
.l728a
	rra
	jr nc,l7295
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l7299),de
.l7295
	ld (l7240),hl
.l7299 equ $ + 1
	ld hl,#0532
	ld (l72b7),hl
	ld a,#01
	ld (l72b2),a
	ld (l72d8),a
	ld (l733d),a
	ld (l73a2),a
.l72ad equ $ + 1
	ld a,#18
.l72ae
	ld (l723b),a
.l72b2 equ $ + 1
	ld a,#01
	dec a
	jr nz,l72d4
.l72b7 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l72d1
	srl a
	jr nz,l72c5
	ld a,(hl)
	inc hl
.l72c5
	jr nc,l72cc
	ld (l722a),a
	jr l72cf
.l72cc
	ld (l7407),a
.l72cf
	ld a,#01
.l72d1
	ld (l72b7),hl
.l72d4
	ld (l72b2),a
.l72d8 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7339
.l72dd equ $ + 1
	ld hl,#0000
	call l77db
	ld (l72dd),hl
	jr c,l7339
	ld a,d
	rra
	jr nc,l72f0
	and #0f
	ld (l74e0),a
.l72f0
	rl d
	jr nc,l72f8
	ld (l74ce),ix
.l72f8
	rl d
	jr nc,l7337
	ld a,e
.l72fe equ $ + 1
	add #00
	ld (l74df),a
	ld hl,#0000
	ld (l74cb),hl
	rl d
	jr c,l7317
.l730d equ $ + 1
	ld hl,#0000
	ld a,(l74f0)
	ld (l74e8),a
	jr l7334
.l7317
	ld l,b
	add hl,hl
.l731a equ $ + 1
	ld bc,#03d1
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l74f0),a
	ld (l74e8),a
	ld a,(hl)
	or a
	jr z,l7330
	ld (l75fd),a
.l7330
	inc hl
	ld (l730d),hl
.l7334
	ld (l74e2),hl
.l7337
	ld a,#01
.l7339
	ld (l72d8),a
.l733d equ $ + 1
	ld a,#01
	dec a
	jr nz,l739e
.l7342 equ $ + 1
	ld hl,#0000
	call l77db
	ld (l7342),hl
	jr c,l739e
	ld a,d
	rra
	jr nc,l7355
	and #0f
	ld (l7481),a
.l7355
	rl d
	jr nc,l735d
	ld (l746f),ix
.l735d
	rl d
	jr nc,l739c
	ld a,e
.l7363 equ $ + 1
	add #00
	ld (l7480),a
	ld hl,#0000
	ld (l746c),hl
	rl d
	jr c,l737c
.l7372 equ $ + 1
	ld hl,#0000
	ld a,(l7491)
	ld (l7489),a
	jr l7399
.l737c
	ld l,b
	add hl,hl
.l737f equ $ + 1
	ld bc,#03d1
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l7491),a
	ld (l7489),a
	ld a,(hl)
	or a
	jr z,l7395
	ld (l75fd),a
.l7395
	inc hl
	ld (l7372),hl
.l7399
	ld (l7483),hl
.l739c
	ld a,#01
.l739e
	ld (l733d),a
.l73a2 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7403
.l73a7 equ $ + 1
	ld hl,#0000
	call l77db
	ld (l73a7),hl
	jr c,l7403
	ld a,d
	rra
	jr nc,l73ba
	and #0f
	ld (l7425),a
.l73ba
	rl d
	jr nc,l73c2
	ld (l7413),ix
.l73c2
	rl d
	jr nc,l7401
	ld a,e
.l73c8 equ $ + 1
	add #00
	ld (l7424),a
	ld hl,#0000
	ld (l7410),hl
	rl d
	jr c,l73e1
.l73d7 equ $ + 1
	ld hl,#0000
	ld a,(l7435)
	ld (l742d),a
	jr l73fe
.l73e1
	ld l,b
	add hl,hl
.l73e4 equ $ + 1
	ld bc,#03d1
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l7435),a
	ld (l742d),a
	ld a,(hl)
	or a
	jr z,l73fa
	ld (l75fd),a
.l73fa
	inc hl
	ld (l73d7),hl
.l73fe
	ld (l7427),hl
.l7401
	ld a,#01
.l7403
	ld (l73a2),a
.l7407 equ $ + 1
	ld a,#06
.l7408
	ld (l7235),a
	ld iy,l7614
.l7410 equ $ + 1
	ld hl,#0000
.l7413 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l7410),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l7425 equ $ + 2
.l7424 equ $ + 1
	ld de,#0000
.l7427 equ $ + 1
	ld hl,#03d9
	call l761f
.l742d equ $ + 1
	ld a,#01
	dec a
	jr nz,l7436
	ld (l7427),hl
.l7435 equ $ + 1
	ld a,#06
.l7436
	ld (l742d),a
	ld de,#0000
	exx
	ld de,#0000
.l7441 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l7464
	ld a,#01
	ld (l774e),a
	call l761f
	xor a
	ld (l774e),a
	ld a,l
	or h
	jr z,l745c
.l7458 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7461
.l745c
	ld (l7441),hl
	ld a,#06
.l7461
	ld (l7458),a
.l7464
	ld a,lx
	ex af,af'
	ld iy,l7612
.l746c equ $ + 1
	ld hl,#0000
.l746f equ $ + 1
	ld de,#0000
	add hl,de
	ld (l746c),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l7481 equ $ + 2
.l7480 equ $ + 1
	ld de,#0000
.l7483 equ $ + 1
	ld hl,#03d9
	call l761f
.l7489 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7492
	ld (l7483),hl
.l7491 equ $ + 1
	ld a,#06
.l7492
	ld (l7489),a
	ld de,#0000
	exx
	ld de,#0000
.l749d equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l74c0
	ld a,#01
	ld (l774e),a
	call l761f
	xor a
	ld (l774e),a
	ld a,l
	or h
	jr z,l74b8
.l74b4 equ $ + 1
	ld a,#01
	dec a
	jr nz,l74bd
.l74b8
	ld (l749d),hl
	ld a,#06
.l74bd
	ld (l74b4),a
.l74c0
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l7610
.l74cb equ $ + 1
	ld hl,#0000
.l74ce equ $ + 1
	ld de,#0000
	add hl,de
	ld (l74cb),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l74e0 equ $ + 2
.l74df equ $ + 1
	ld de,#0000
.l74e2 equ $ + 1
	ld hl,#03d9
	call l761f
.l74e8 equ $ + 1
	ld a,#01
	dec a
	jr nz,l74f1
	ld (l74e2),hl
.l74f0 equ $ + 1
	ld a,#06
.l74f1
	ld (l74e8),a
	ld de,#0000
	exx
	ld de,#0000
.l74fc equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l751f
	ld a,#01
	ld (l774e),a
	call l761f
	xor a
	ld (l774e),a
	ld a,l
	or h
	jr z,l7517
.l7513 equ $ + 1
	ld a,#01
	dec a
	jr nz,l751c
.l7517
	ld (l74fc),hl
	ld a,#06
.l751c
	ld (l7513),a
.l751f
	ex af,af'
	or lx
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l7610
	ld e,#f6
	ld bc,#f401
	db &ed,&71 ; out (c),0
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
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
	db &ed,&71 ; out (c),0
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
	db &ed,&71 ; out (c),0
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
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	pop iy
	pop ix
	ld a,(hl)
.l75fd equ $ + 1
	cp #ff
	ret z
	ld (l75fd),a
	out (c),c
	ld b,e
	db &ed,&71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l7616 equ $ + 6
.l7614 equ $ + 4
.l7612 equ $ + 2
.l7610
	db #00,#00,#00,#00,#00,#00,#00,#00
.l761e equ $ + 6
.l761c equ $ + 4
	db #00,#00,#00,#00,#00,#00,#ff
.l761f
	ld b,(hl)
	inc hl
	rr b
	jp c,l767d
	rr b
	jr c,l764d
	ld a,b
	and #0f
	jr nz,l7636
	ld (iy+#07),a
	ld lx,#09
	ret
.l7636
	ld lx,#08
	sub d
	jr nc,l763d
	xor a
.l763d
	ld (iy+#07),a
	rr b
	call l77af
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l764d
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l765d
	ld (l7616),a
	ld lx,#00
.l765d
	ld a,b
	and #0f
	sub d
	jr nc,l7664
	xor a
.l7664
	ld (iy+#07),a
	bit 5,c
	jr nz,l766e
	inc lx
	ret
.l766e
	rr b
	bit 6,c
	call l77a1
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l767d
	rr b
	jr nc,l7690
	ld a,(l74e8)
	ld c,a
	ld a,(l74f0)
	cp c
	jr nz,l7690
	ld a,#fe
	ld (l75fd),a
.l7690
	bit 1,b
	jp nz,l7749
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l761e),a
	bit 0,b
	jr z,l76ff
	bit 2,b
	call l77a1
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l76bf),a
	ld a,b
	exx
.l76bf equ $ + 1
	jr l76c0
.l76c0
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
	jr nc,l76df
	inc hl
.l76df
	bit 5,a
	jr z,l76ef
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
.l76ef
	ld (l761c),hl
	exx
.l76f3
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l7616),a
	ld lx,#00
	ret
.l76ff
	bit 2,b
	call l77a1
	ld (l761c),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l7713),a
	ld a,b
	exx
.l7713 equ $ + 1
	jr l7714
.l7714
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
	jr z,l7740
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
.l7740
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l76f3
.l7749
	bit 0,b
	jr z,l775d
.l774e equ $ + 1
	ld a,#00
	or a
	jr z,l7756
	ld hl,#0000
	ret
.l7756
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l761f
.l775d
	ld (iy+#07),#10
	bit 5,b
	jr nz,l776a
	ld lx,#09
	jr l777d
.l776a
	ld lx,#08
	ld hx,e
	bit 2,b
	call l77a1
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l777d
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l761e),a
	rr b
	rr b
	bit 2,b
	call l77a1
	ld (l761c),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l7616),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l77a1
	jr z,l77af
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
.l77af
	bit 4,b
	jr z,l77bf
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
.l77bf
	ld a,e
	bit 3,b
	jr z,l77cc
	add (hl)
	inc hl
	cp #90
	jr c,l77cc
	ld a,#8f
.l77cc
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l780f
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l77db
	ld a,(hl)
	inc hl
	srl a
	jr c,l7802
	sub #20
	jr c,l780c
	jr z,l77fe
	dec a
	ld e,a
.l77e9
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l77f7
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l77f7
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l77fe
	ld e,(hl)
	inc hl
	jr l77e9
.l7802
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l780c
	add #20
	ret
.l780f
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
;
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
	xor a
	ld (l722b),a
	ld hl,#0009
	add hl,de
	ld de,l7407
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l731a),hl
	ld (l737f),hl
	ld (l73e4),hl
	add hl,bc
	ld de,l72ad
	ldi
	ld de,l72fe
	ldi
	ld de,l7363
	ldi
	ld de,l73c8
	ldi
	ld de,l7299
	ldi
	ldi
	ld (l7240),hl
	ld a,#01
	ld (l7235),a
	ld (l723b),a
	ld a,#ff
	ld (l761e),a
	ld hl,(l731a)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l74e2),hl
	ld (l7483),hl
	ld (l7427),hl
	ret
;
.init_music		; #15b3 - added by Megachur
;
	ld hl,l0040
	push hl
	call real_init_music
	pop af
	ret
;
.music_info
	db "Space Moves (2015)(cpcretrodev.byterealms)(McKlain)",0
	db "StArkos",0

	read "music_end.asm"
