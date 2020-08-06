; Music of Reset 20 - Two Years (2015)(Public Domain)(Brink)(StArkos)
; Ripped by Megachur the 22/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RESET2TY.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000

	read "music_header.asm"

.l4000
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#fb,#01,#28,#40,#31,#40
	db #77,#40,#a1,#40,#ce,#40,#df,#40
	db #03,#41,#2b,#41,#3f,#41,#6c,#41
	db #80,#41,#94,#41,#ad,#41,#da,#41
	db #00,#00,#00,#00,#00,#00,#0d,#2a
	db #40,#01,#00,#36,#01,#7c,#0c,#38
	db #38,#b8,#fe,#ff,#b4,#fc,#ff,#b4
	db #fe,#ff,#34,#b0,#02,#00,#b0,#04
	db #00,#b0,#02,#00,#2c,#ac,#fe,#ff
	db #ac,#fc,#ff,#a8,#fe,#ff,#28,#a8
	db #02,#00,#a4,#04,#00,#a4,#02,#00
	db #24,#a4,#fe,#ff,#a4,#fc,#ff,#a4
	db #fe,#ff,#24,#a4,#02,#00,#a4,#04
	db #00,#a4,#02,#00,#0d,#60,#40,#01
	db #00,#3c,#7c,#14,#38,#38,#34,#34
	db #30,#30,#30,#30,#30,#30,#30,#30
	db #30,#30,#30,#b0,#01,#00,#b0,#02
	db #00,#b0,#01,#00,#30,#b0,#ff,#ff
	db #b0,#fe,#ff,#b0,#ff,#ff,#0d,#8a
	db #40,#01,#00,#7c,#fe,#7c,#12,#78
	db #ff,#78,#ff,#34,#34,#30,#30,#30
	db #30,#30,#30,#30,#30,#30,#30,#30
	db #b0,#ff,#ff,#b0,#fe,#ff,#b0,#ff
	db #ff,#30,#b0,#01,#00,#b0,#02,#00
	db #b0,#01,#00,#0d,#b7,#40,#01,#00
	db #7c,#0c,#3c,#38,#74,#0c,#30,#2c
	db #68,#0c,#28,#28,#0d,#d8,#40,#01
	db #00,#3c,#7c,#ff,#78,#fe,#74,#fd
	db #70,#fc,#6c,#fb,#68,#fa,#64,#f9
	db #60,#f8,#5c,#f7,#58,#f6,#54,#f5
	db #50,#f4,#4c,#f3,#48,#f2,#44,#f1
	db #0d,#2a,#40,#01,#00,#3e,#21,#b0
	db #c8,#00,#a8,#2c,#01,#a0,#90,#01
	db #9c,#c2,#01,#98,#f4,#01,#94,#26
	db #02,#94,#58,#02,#90,#8a,#02,#90
	db #bc,#02,#8c,#ee,#02,#8c,#20,#03
	db #0d,#2a,#40,#01,#00,#3c,#78,#04
	db #74,#07,#34,#70,#04,#70,#07,#2c
	db #68,#04,#64,#07,#0d,#2a,#40,#01
	db #00,#be,#21,#32,#00,#be,#21,#64
	db #00,#ba,#21,#96,#00,#ba,#21,#c8
	db #00,#b6,#21,#fa,#00,#b6,#21,#2c
	db #01,#b2,#21,#5e,#01,#b2,#21,#90
	db #01,#ae,#21,#c2,#01,#ae,#21,#f4
	db #01,#0d,#2a,#40,#01,#00,#3c,#78
	db #05,#74,#09,#34,#70,#05,#70,#09
	db #2c,#68,#05,#64,#09,#0d,#2a,#40
	db #01,#00,#3c,#78,#03,#74,#08,#34
	db #70,#03,#70,#08,#2c,#68,#03,#64
	db #08,#0d,#2a,#40,#01,#00,#3c,#78
	db #0c,#74,#18,#30,#70,#0c,#6c,#18
	db #2c,#68,#0c,#68,#18,#28,#68,#0c
	db #68,#18,#0d,#a5,#41,#01,#00,#70
	db #fe,#70,#fe,#70,#ff,#70,#ff,#30
	db #30,#30,#30,#30,#30,#30,#30,#30
	db #30,#30,#30,#30,#b0,#ff,#ff,#b0
	db #fe,#ff,#b0,#ff,#ff,#30,#b0,#01
	db #00,#b0,#02,#00,#b0,#01,#00,#0d
	db #c3,#41,#01,#00,#7c,#04,#7c,#03
	db #7c,#02,#7c,#01,#3c,#3c,#3c,#3c
	db #3c,#3c,#3c,#3c,#3c,#3c,#3c,#3c
	db #3c,#bc,#ff,#ff,#bc,#fe,#ff,#bc
	db #ff,#ff,#3c,#bc,#01,#00,#bc,#02
	db #00,#bc,#01,#00,#0d,#f0,#41,#50
	db #00,#00,#00,#6c,#42,#00,#90,#47
	db #da,#47,#05,#47,#10,#bc,#42,#da
	db #43,#50,#43,#40,#00,#bc,#42,#21
	db #44,#50,#43,#00,#bc,#42,#00,#43
	db #50,#43,#00,#bc,#42,#6c,#44,#50
	db #43,#00,#bd,#44,#01,#45,#37,#45
	db #00,#bd,#44,#c1,#45,#fa,#45,#00
	db #bd,#44,#01,#45,#37,#45,#00,#bd
	db #44,#c1,#45,#fa,#45,#00,#bc,#42
	db #84,#46,#50,#43,#00,#bc,#42,#10
	db #48,#50,#43,#00,#bc,#42,#84,#46
	db #50,#43,#00,#bc,#42,#c8,#46,#50
	db #43,#01,#14,#42,#11,#15,#11,#15
	db #11,#15,#11,#15,#11,#15,#11,#15
	db #11,#15,#11,#15,#11,#15,#11,#15
	db #11,#15,#11,#15,#11,#15,#11,#15
	db #11,#15,#11,#15,#11,#15,#11,#15
	db #11,#15,#11,#15,#11,#15,#11,#15
	db #11,#15,#11,#15,#11,#15,#11,#15
	db #11,#15,#11,#15,#11,#15,#11,#15
	db #11,#15,#11,#15,#11,#15,#11,#15
	db #11,#15,#11,#15,#11,#15,#11,#15
	db #11,#15,#11,#15,#6c,#e3,#00,#00
	db #01,#02,#45,#02,#2d,#02,#2d,#02
	db #45,#02,#2d,#02,#2d,#02,#45,#02
	db #33,#02,#4b,#02,#33,#02,#33,#02
	db #4b,#02,#33,#02,#41,#02,#4b,#02
	db #29,#02,#41,#02,#29,#02,#29,#02
	db #41,#02,#29,#02,#29,#02,#41,#02
	db #37,#02,#4f,#02,#37,#02,#37,#02
	db #4f,#02,#45,#02,#37,#02,#4f,#00
	db #c2,#e1,#00,#00,#02,#06,#7f,#04
	db #be,#45,#c2,#41,#02,#7f,#06,#c2
	db #60,#03,#06,#c2,#60,#02,#02,#79
	db #02,#79,#42,#00,#83,#02,#79,#06
	db #be,#60,#03,#08,#42,#00,#b4,#60
	db #02,#04,#42,#00,#7f,#02,#75,#06
	db #c8,#60,#04,#02,#42,#03,#42,#05
	db #c8,#41,#02,#cc,#40,#02,#42,#03
	db #42,#05,#d0,#41,#02,#42,#03,#42
	db #05,#a6,#61,#05,#42,#00,#63,#00
	db #a2,#e0,#00,#00,#06,#42,#00,#b4
	db #60,#07,#02,#c2,#60,#08,#42,#00
	db #a2,#60,#06,#02,#b4,#60,#07,#02
	db #a2,#60,#06,#02,#c2,#60,#08,#02
	db #b4,#60,#07,#02,#a2,#60,#06,#42
	db #00,#b0,#60,#09,#02,#c2,#60,#08
	db #42,#00,#a2,#60,#06,#02,#b0,#60
	db #09,#02,#a2,#60,#06,#02,#c2,#60
	db #08,#02,#b0,#60,#09,#02,#a2,#60
	db #06,#42,#00,#b0,#60,#07,#02,#c2
	db #60,#08,#42,#00,#a2,#60,#06,#02
	db #b0,#60,#07,#02,#a2,#60,#06,#02
	db #c2,#60,#08,#02,#b0,#60,#07,#02
	db #a2,#60,#06,#42,#00,#ae,#60,#0a
	db #02,#c2,#60,#08,#42,#00,#a2,#60
	db #06,#02,#ae,#60,#0a,#02,#a2,#60
	db #06,#02,#c2,#60,#08,#02,#ae,#60
	db #0a,#00,#c2,#e1,#00,#00,#03,#1e
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#03,#42,#05,#be,#61,#02,#42
	db #00,#c2,#60,#03,#06,#be,#60,#02
	db #06,#7f,#02,#79,#06,#75,#06,#71
	db #02,#75,#06,#c8,#63,#04,#42,#00
	db #8d,#42,#00,#97,#42,#00,#91,#42
	db #00,#d0,#e3,#00,#00,#04,#04,#42
	db #05,#d0,#43,#02,#91,#02,#42,#00
	db #42,#05,#d0,#43,#02,#cc,#41,#42
	db #00,#42,#03,#42,#05,#c8,#41,#02
	db #42,#03,#42,#05,#d6,#41,#02,#89
	db #02,#8d,#02,#91,#02,#83,#02,#7f
	db #02,#b8,#60,#03,#06,#79,#06,#79
	db #06,#b4,#60,#02,#02,#75,#06,#71
	db #0a,#42,#03,#42,#05,#b4,#41,#02
	db #79,#02,#7f,#00,#b4,#e1,#00,#00
	db #02,#06,#7f,#06,#75,#02,#7f,#06
	db #71,#02,#be,#60,#03,#06,#b0,#60
	db #02,#02,#be,#60,#03,#06,#b0,#60
	db #02,#02,#7f,#02,#71,#02,#d0,#60
	db #04,#42,#00,#d0,#40,#02,#d0,#40
	db #04,#42,#03,#d0,#41,#04,#42,#03
	db #cc,#41,#02,#cc,#40,#04,#42,#03
	db #c8,#41,#02,#42,#00,#42,#03,#04
	db #42,#05,#02,#be,#61,#03,#02,#b8
	db #60,#02,#02,#75,#00,#72,#e3,#00
	db #00,#01,#02,#4b,#02,#33,#02,#33
	db #02,#4b,#02,#33,#02,#33,#02,#4b
	db #02,#33,#02,#4b,#02,#33,#02,#33
	db #02,#4b,#02,#33,#02,#33,#02,#4b
	db #02,#29,#02,#41,#02,#29,#02,#29
	db #02,#41,#02,#29,#02,#29,#02,#41
	db #02,#37,#02,#4f,#02,#37,#02,#37
	db #02,#4f,#02,#37,#02,#37,#02,#4f
	db #00,#b8,#e1,#00,#00,#02,#16,#75
	db #02,#42,#00,#02,#71,#0e,#42,#03
	db #42,#05,#b0,#61,#04,#02,#c8,#60
	db #0b,#02,#b0,#60,#02,#02,#79,#06
	db #79,#06,#79,#06,#75,#02,#75,#06
	db #71,#06,#cc,#60,#0b,#02,#42,#00
	db #02,#8d,#02,#87,#02,#7f,#00,#a2
	db #e0,#00,#00,#06,#42,#00,#b0,#60
	db #09,#02,#c2,#60,#08,#42,#00,#a2
	db #60,#06,#02,#b0,#60,#09,#02,#a2
	db #60,#06,#02,#c2,#60,#08,#02,#b0
	db #60,#09,#02,#a2,#60,#06,#42,#00
	db #b0,#60,#09,#02,#c2,#60,#08,#42
	db #00,#a2,#60,#06,#02,#b0,#60,#09
	db #02,#a2,#60,#06,#02,#c2,#60,#08
	db #02,#b0,#60,#09,#02,#a2,#60,#06
	db #42,#00,#b0,#60,#07,#02,#c2,#60
	db #08,#42,#00,#a2,#60,#06,#02,#b0
	db #60,#07,#02,#a2,#60,#06,#02,#c2
	db #60,#08,#02,#b0,#60,#07,#02,#a2
	db #60,#06,#42,#00,#ae,#60,#0a,#02
	db #c2,#60,#08,#42,#00,#a2,#60,#06
	db #02,#ae,#60,#0a,#02,#a2,#60,#06
	db #02,#c2,#60,#08,#02,#ae,#60,#0a
	db #00,#be,#e1,#00,#00,#03,#16,#c2
	db #60,#02,#02,#42,#00,#02,#79,#0e
	db #42,#03,#42,#05,#b0,#61,#04,#02
	db #c8,#60,#0b,#02,#b8,#60,#02,#02
	db #7f,#02,#42,#00,#02,#7f,#06,#7f
	db #02,#83,#06,#89,#12,#42,#03,#42
	db #05,#a6,#61,#05,#02,#67,#02,#63
	db #a2,#45,#a2,#e0,#00,#00,#06,#42
	db #00,#b0,#60,#09,#02,#c2,#60,#08
	db #42,#00,#a2,#60,#06,#02,#b0,#60
	db #09,#02,#a2,#60,#06,#02,#c2,#60
	db #08,#02,#b0,#60,#09,#02,#a2,#60
	db #06,#42,#00,#b0,#60,#09,#02,#c2
	db #60,#08,#42,#00,#a2,#60,#06,#02
	db #b0,#60,#09,#02,#a2,#60,#06,#02
	db #c2,#60,#08,#02,#b0,#60,#09,#02
	db #a2,#60,#06,#42,#00,#b0,#60,#07
	db #02,#c2,#60,#08,#42,#00,#a2,#60
	db #06,#02,#b0,#60,#07,#02,#a2,#60
	db #06,#02,#c2,#60,#08,#02,#b0,#60
	db #07,#02,#a2,#60,#06,#42,#00,#b4
	db #60,#09,#02,#c2,#60,#08,#42,#00
	db #a2,#60,#06,#02,#b4,#60,#09,#02
	db #a2,#60,#06,#02,#c2,#60,#08,#02
	db #b4,#60,#09,#00,#c8,#e1,#00,#00
	db #0b,#02,#83,#02,#75,#02,#89,#02
	db #83,#02,#75,#02,#89,#02,#83,#02
	db #89,#02,#83,#02,#79,#02,#89,#02
	db #83,#02,#79,#02,#89,#02,#83,#02
	db #89,#02,#7f,#02,#79,#02,#89,#02
	db #7f,#02,#79,#02,#89,#02,#7f,#02
	db #8d,#02,#7f,#02,#75,#02,#8d,#02
	db #7f,#02,#75,#02,#cc,#60,#02,#00
	db #c8,#e1,#00,#00,#02,#22,#42,#00
	db #0a,#42,#03,#42,#05,#b8,#41,#02
	db #83,#02,#89,#02,#cc,#60,#03,#42
	db #00,#08,#d0,#60,#0c,#06,#42,#00
	db #02,#c8,#67,#0d,#02,#42,#05,#02
	db #cc,#61,#0b,#02,#87,#02,#7f,#02
	db #75,#02,#6f,#02,#67,#02,#a6,#60
	db #05,#42,#00,#67,#00,#42,#9f,#00
	db #00,#1e,#a2,#61,#06,#42,#00,#b4
	db #60,#07,#02,#c2,#60,#08,#42,#00
	db #a2,#60,#06,#02,#b4,#60,#07,#02
	db #a2,#60,#06,#02,#c2,#60,#08,#02
	db #b4,#60,#07,#02,#a2,#60,#06,#42
	db #00,#b4,#60,#07,#02,#c2,#60,#08
	db #42,#00,#a2,#60,#06,#02,#b4,#60
	db #07,#02,#a2,#60,#06,#02,#c2,#60
	db #08,#02,#b4,#60,#07,#02,#a2,#60
	db #06,#42,#00,#b4,#60,#07,#02,#c2
	db #60,#08,#42,#00,#a2,#60,#06,#02
	db #b4,#60,#07,#02,#a2,#60,#06,#02
	db #c2,#60,#08,#02,#b4,#60,#07,#02
	db #a2,#60,#06,#42,#00,#b4,#60,#07
	db #02,#c2,#60,#08,#42,#00,#a2,#60
	db #06,#02,#b4,#60,#07,#02,#a2,#60
	db #06,#02,#c2,#60,#08,#83,#83,#83
	db #42,#9f,#00,#00,#02,#42,#00,#1a
	db #6c,#63,#01,#02,#45,#02,#2d,#02
	db #2d,#02,#45,#02,#2d,#02,#2d,#02
	db #45,#02,#2d,#02,#45,#02,#2d,#02
	db #2d,#02,#45,#02,#2d,#02,#2d,#02
	db #45,#02,#2d,#02,#45,#02,#2d,#02
	db #2d,#02,#45,#02,#2d,#02,#2d,#02
	db #45,#02,#2d,#02,#45,#02,#2d,#02
	db #2d,#02,#45,#02,#2d,#02,#2d,#02
	db #45,#00,#a2,#e1,#00,#00,#06,#02
	db #c2,#60,#08,#02,#83,#02,#83,#42
	db #00,#a2,#60,#06,#02,#c2,#60,#08
	db #42,#00,#a2,#60,#06,#42,#00,#c2
	db #60,#08,#83,#3e,#02,#c2,#6b,#0c
	db #06,#42,#09,#06,#42,#07,#06,#42
	db #05,#06,#42,#03,#06,#42,#01,#00
	db #c8,#e1,#00,#00,#02,#22,#42,#00
	db #0a,#42,#03,#42,#05,#b8,#41,#02
	db #83,#02,#89,#02,#cc,#60,#03,#42
	db #00,#08,#d0,#60,#0c,#06,#42,#00
	db #02,#c8,#67,#0d,#02,#42,#00,#02
	db #cc,#61,#03,#02,#42,#00,#02,#42
	db #00,#02,#42,#00,#02,#42,#03,#42
	db #05,#b4,#61,#0b,#02,#7f,#42,#00
	db #87,#00,#00
;
; #7000 - player reallocated by Megachur
; 
	jp l7674
	jp l700a
	jp l76c9
.l7009
	db #00
;
.play_music
.l700a
;
	xor a
	ld (l7009),a
.l700f equ $ + 1
	ld a,#01
	dec a
	jp nz,l71db
.l7015 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7081
.l701a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l7028
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l7028
	rra
	jr nc,l7030
	ld de,l70d1
	ldi
.l7030
	rra
	jr nc,l7038
	ld de,l7136
	ldi
.l7038
	rra
	jr nc,l7040
	ld de,l719b
	ldi
.l7040
	ld de,l70b0
	ldi
	ldi
	ld de,l7115
	ldi
	ldi
	ld de,l717a
	ldi
	ldi
	rra
	jr nc,l705d
	ld de,l7080
	ldi
.l705d
	rra
	jr nc,l7068
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l706c),de
.l7068
	ld (l701a),hl
.l706c equ $ + 1
	ld hl,#0000
	ld (l708a),hl
	ld a,#01
	ld (l7085),a
	ld (l70ab),a
	ld (l7110),a
	ld (l7175),a
.l7080 equ $ + 1
	ld a,#01
.l7081
	ld (l7015),a
.l7085 equ $ + 1
	ld a,#01
	dec a
	jr nz,l70a7
.l708a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l70a4
	srl a
	jr nz,l7098
	ld a,(hl)
	inc hl
.l7098
	jr nc,l709f
	ld (l7009),a
	jr l70a2
.l709f
	ld (l71da),a
.l70a2
	ld a,#01
.l70a4
	ld (l708a),hl
.l70a7
	ld (l7085),a
.l70ab equ $ + 1
	ld a,#01
	dec a
	jr nz,l710c
.l70b0 equ $ + 1
	ld hl,#0000
	call l7520
	ld (l70b0),hl
	jr c,l710c
	ld a,d
	rra
	jr nc,l70c3
	and #0f
	ld (l725d),a
.l70c3
	rl d
	jr nc,l70cb
	ld (l724b),ix
.l70cb
	rl d
	jr nc,l710a
	ld a,e
.l70d1 equ $ + 1
	add #00
	ld (l725c),a
	ld hl,#0000
	ld (l7248),hl
	rl d
	jr c,l70ea
.l70e0 equ $ + 1
	ld hl,#0000
	ld a,(l726d)
	ld (l7265),a
	jr l7107
.l70ea
	ld l,b
	add hl,hl
.l70ed equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l726d),a
	ld (l7265),a
	ld a,(hl)
	or a
	jr z,l7103
	ld (l734b),a
.l7103
	inc hl
	ld (l70e0),hl
.l7107
	ld (l725f),hl
.l710a
	ld a,#01
.l710c
	ld (l70ab),a
.l7110 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7171
.l7115 equ $ + 1
	ld hl,#0000
	call l7520
	ld (l7115),hl
	jr c,l7171
	ld a,d
	rra
	jr nc,l7128
	and #0f
	ld (l7229),a
.l7128
	rl d
	jr nc,l7130
	ld (l7217),ix
.l7130
	rl d
	jr nc,l716f
	ld a,e
.l7136 equ $ + 1
	add #00
	ld (l7228),a
	ld hl,#0000
	ld (l7214),hl
	rl d
	jr c,l714f
.l7145 equ $ + 1
	ld hl,#0000
	ld a,(l7239)
	ld (l7231),a
	jr l716c
.l714f
	ld l,b
	add hl,hl
.l7152 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l7239),a
	ld (l7231),a
	ld a,(hl)
	or a
	jr z,l7168
	ld (l734b),a
.l7168
	inc hl
	ld (l7145),hl
.l716c
	ld (l722b),hl
.l716f
	ld a,#01
.l7171
	ld (l7110),a
.l7175 equ $ + 1
	ld a,#01
	dec a
	jr nz,l71d6
.l717a equ $ + 1
	ld hl,#0000
	call l7520
	ld (l717a),hl
	jr c,l71d6
	ld a,d
	rra
	jr nc,l718d
	and #0f
	ld (l71f8),a
.l718d
	rl d
	jr nc,l7195
	ld (l71e6),ix
.l7195
	rl d
	jr nc,l71d4
	ld a,e
.l719b equ $ + 1
	add #00
	ld (l71f7),a
	ld hl,#0000
	ld (l71e3),hl
	rl d
	jr c,l71b4
.l71aa equ $ + 1
	ld hl,#0000
	ld a,(l7208)
	ld (l7200),a
	jr l71d1
.l71b4
	ld l,b
	add hl,hl
.l71b7 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l7208),a
	ld (l7200),a
	ld a,(hl)
	or a
	jr z,l71cd
	ld (l734b),a
.l71cd
	inc hl
	ld (l71aa),hl
.l71d1
	ld (l71fa),hl
.l71d4
	ld a,#01
.l71d6
	ld (l7175),a
.l71da equ $ + 1
	ld a,#01
.l71db
	ld (l700f),a
	ld iy,l7362
.l71e3 equ $ + 1
	ld hl,#0000
.l71e6 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l71e3),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l71f8 equ $ + 2
.l71f7 equ $ + 1
	ld de,#0000
.l71fa equ $ + 1
	ld hl,#0000
	call l736d
.l7200 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7209
	ld (l71fa),hl
.l7208 equ $ + 1
	ld a,#06
.l7209
	ld (l7200),a
	ld a,lx
	ex af,af'
	ld iy,l7360
.l7214 equ $ + 1
	ld hl,#0000
.l7217 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l7214),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l7229 equ $ + 2
.l7228 equ $ + 1
	ld de,#0000
.l722b equ $ + 1
	ld hl,#0000
	call l736d
.l7231 equ $ + 1
	ld a,#01
	dec a
	jr nz,l723a
	ld (l722b),hl
.l7239 equ $ + 1
	ld a,#06
.l723a
	ld (l7231),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l735e
.l7248 equ $ + 1
	ld hl,#0000
.l724b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l7248),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l725d equ $ + 2
.l725c equ $ + 1
	ld de,#0000
.l725f equ $ + 1
	ld hl,#0000
	call l736d
.l7265 equ $ + 1
	ld a,#01
	dec a
	jr nz,l726e
	ld (l725f),hl
.l726d equ $ + 1
	ld a,#06
.l726e
	ld (l7265),a
	ex af,af'
	or lx
.l7274
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l735e
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
.l734b equ $ + 1
	cp #ff
	ret z
	ld (l734b),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l7365 equ $ + 7
.l7364 equ $ + 6
.l7362 equ $ + 4
.l7360 equ $ + 2
.l735e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l736c equ $ + 6
.l736a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00
.l736d
	ld b,(hl)
	inc hl
	rr b
	jp c,l73cb
	rr b
	jr c,l739b
	ld a,b
	and #0f
	jr nz,l7384
	ld (iy+#07),a
	ld lx,#09
	ret
.l7384
	ld lx,#08
	sub d
	jr nc,l738b
	xor a
.l738b
	ld (iy+#07),a
	rr b
	call l74f4
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l739b
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l73ab
	ld (l7364),a
	ld lx,#00
.l73ab
	ld a,b
	and #0f
	sub d
	jr nc,l73b2
	xor a
.l73b2
	ld (iy+#07),a
	bit 5,c
	jr nz,l73bc
	inc lx
	ret
.l73bc
	rr b
	bit 6,c
	call l74e6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l73cb
	rr b
	jr nc,l73de
	ld a,(l7265)
	ld c,a
	ld a,(l726d)
	cp c
	jr nz,l73de
	ld a,#fe
	ld (l734b),a
.l73de
	bit 1,b
	jp nz,l7497
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l736c),a
	bit 0,b
	jr z,l744d
	bit 2,b
	call l74e6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l740d),a
	ld a,b
	exx
.l740d equ $ + 1
	jr l740e
.l740e
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
	jr nc,l742d
	inc hl
.l742d
	bit 5,a
	jr z,l743d
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
.l743d
	ld (l736a),hl
	exx
.l7441
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l7364),a
	ld lx,#00
	ret
.l744d
	bit 2,b
	call l74e6
	ld (l736a),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l7461),a
	ld a,b
	exx
.l7461 equ $ + 1
	jr l7462
.l7462
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
	jr z,l748e
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
.l748e
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l7441
.l7497
	bit 0,b
	jr z,l74a2
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l736d
.l74a2
	ld (iy+#07),#10
	bit 5,b
	jr nz,l74af
	ld lx,#09
	jr l74c2
.l74af
	ld lx,#08
	ld hx,e
	bit 2,b
	call l74e6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l74c2
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l736c),a
	rr b
	rr b
	bit 2,b
	call l74e6
	ld (l736a),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l7364),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l74e6
	jr z,l74f4
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
.l74f4
	bit 4,b
	jr z,l7504
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
.l7504
	ld a,e
	bit 3,b
	jr z,l7511
	add (hl)
	inc hl
	cp #90
	jr c,l7511
	ld a,#8f
.l7511
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l7554
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l7520
	ld a,(hl)
	inc hl
	srl a
	jr c,l7547
	sub #20
	jr c,l7551
	jr z,l7543
	dec a
	ld e,a
.l752e
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l753c
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l753c
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l7543
	ld e,(hl)
	inc hl
	jr l752e
.l7547
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l7551
	add #20
	ret
.l7554
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
.l7674
;
	ld hl,#0009
	add hl,de
	ld de,l71da
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l70ed),hl
	ld (l7152),hl
	ld (l71b7),hl
	add hl,bc
	ld de,l7080
	ldi
	ld de,l70d1
	ldi
	ld de,l7136
	ldi
	ld de,l719b
	ldi
	ld de,l706c
	ldi
	ldi
	ld (l701a),hl
	ld a,#01
	ld (l700f),a
	ld (l7015),a
	ld a,#ff
	ld (l736c),a
	ld hl,(l70ed)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l725f),hl
	ld (l722b),hl
	ld (l71fa),hl
	ret
;
.stop_music
.l76c9
;
	ld hl,l7365
	ld bc,#0300
.l76cf
	ld (hl),c
	inc hl
	djnz l76cf
	ld a,#3f
	jp l7274
;
; #1007
; ld de,#4000
; call #7000
;
; #1021
; call #7003
;
.init_music		; added by Megachur
;
	ld de,l4000
	jp real_init_music
;
.music_info
	db "Reset 20 - Two Years (2015)(Public Domain)(Brink)",0
	db "StArkos",0

	read "music_end.asm"
