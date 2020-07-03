; Music of Clouds With Virgins In The Skies (2012)(Dirty Minds)(Factor 6)(StArkos)
; Ripped by Megachur the 27/12/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "CLOWVITS.BIN"
	ENDIF

music_date_rip_day		equ 27
music_date_rip_month	equ 12
music_date_rip_year		equ 2014
music_adr				equ &1000

	read "music_header.asm"

.music_data
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#05,#10,#01,#1c,#10,#25,#10
	db #38,#10,#4b,#10,#5e,#10,#9b,#10
	db #a4,#10,#f6,#10,#00,#00,#00,#00
	db #00,#00,#0d,#1e,#10,#03,#00,#3c
	db #74,#04,#70,#07,#70,#0b,#30,#70
	db #04,#70,#07,#70,#0b,#0d,#2e,#10
	db #03,#00,#3c,#74,#03,#70,#07,#70
	db #0a,#30,#70,#03,#70,#07,#70,#0a
	db #0d,#41,#10,#03,#00,#3c,#74,#03
	db #70,#08,#70,#0a,#30,#70,#03,#70
	db #08,#70,#0a,#0d,#54,#10,#01,#00
	db #30,#38,#38,#34,#34,#30,#30,#30
	db #30,#30,#30,#30,#30,#30,#30,#30
	db #b0,#02,#00,#b0,#02,#00,#b0,#04
	db #00,#b0,#04,#00,#b0,#02,#00,#b0
	db #02,#00,#30,#30,#b0,#fe,#ff,#b0
	db #fe,#ff,#b0,#fc,#ff,#b0,#fc,#ff
	db #b0,#fe,#ff,#b0,#fe,#ff,#30,#30
	db #0d,#70,#10,#01,#00,#3e,#23,#05
	db #48,#0d,#9f,#10,#01,#00,#3e,#21
	db #7c,#f8,#7c,#ee,#3e,#23,#7a,#23
	db #fe,#7a,#23,#fc,#76,#24,#fa,#76
	db #25,#f8,#72,#26,#f6,#72,#26,#f4
	db #6e,#25,#f2,#6e,#24,#f0,#6a,#23
	db #ee,#6a,#21,#ec,#66,#21,#ea,#66
	db #22,#e8,#62,#23,#e6,#22,#24,#1e
	db #25,#1e,#26,#1a,#26,#1a,#25,#16
	db #24,#16,#23,#12,#22,#12,#21,#0e
	db #21,#0e,#22,#0a,#23,#0a,#24,#06
	db #25,#06,#26,#0d,#1e,#10,#01,#00
	db #3e,#21,#7c,#0c,#78,#0c,#38,#34
	db #34,#30,#30,#2c,#2c,#28,#28,#24
	db #24,#20,#20,#1c,#1c,#18,#18,#14
	db #14,#10,#10,#0c,#0c,#08,#08,#04
	db #04,#0d,#1e,#10,#40,#00,#00,#00
	db #66,#11,#10,#67,#11,#9e,#11,#75
	db #11,#40,#00,#67,#11,#9e,#11,#de
	db #11,#00,#67,#11,#9e,#11,#75,#11
	db #00,#67,#11,#9e,#11,#de,#11,#00
	db #12,#12,#20,#12,#60,#12,#00,#12
	db #12,#20,#12,#a7,#12,#00,#12,#12
	db #20,#12,#60,#12,#00,#12,#12,#20
	db #12,#ec,#12,#10,#32,#13,#75,#13
	db #8b,#13,#20,#01,#22,#11,#00,#9e
	db #e1,#00,#00,#01,#3e,#9c,#60,#02
	db #1e,#9c,#60,#03,#00,#9e,#e1,#00
	db #00,#04,#02,#63,#02,#6d,#02,#6b
	db #06,#63,#1a,#42,#03,#02,#42,#05
	db #02,#a6,#41,#02,#6b,#02,#6d,#71
	db #14,#6d,#02,#67,#16,#42,#03,#02
	db #42,#05,#02,#42,#07,#00,#86,#e1
	db #00,#00,#05,#0a,#47,#42,#60,#00
	db #a2,#60,#06,#06,#86,#60,#05,#02
	db #5f,#02,#47,#0a,#47,#42,#60,#00
	db #a2,#60,#06,#06,#8a,#60,#05,#06
	db #4f,#0a,#4f,#42,#60,#00,#a2,#60
	db #06,#06,#8e,#60,#05,#02,#67,#02
	db #4f,#0a,#4f,#42,#60,#00,#a2,#60
	db #06,#06,#8a,#60,#05,#00,#9e,#e1
	db #00,#00,#04,#02,#63,#02,#6d,#02
	db #6b,#06,#63,#1a,#42,#03,#02,#42
	db #05,#02,#a6,#41,#06,#6b,#0a,#6d
	db #02,#ac,#4f,#06,#a2,#c1,#f8,#ff
	db #42,#80,#f0,#ff,#a6,#c0,#00,#00
	db #16,#42,#03,#02,#42,#05,#02,#42
	db #07,#00,#a2,#e0,#00,#00,#01,#3e
	db #a0,#60,#02,#1e,#a0,#60,#03,#00
	db #8a,#e0,#00,#00,#05,#0a,#4b,#42
	db #60,#00,#a2,#60,#06,#06,#8a,#60
	db #05,#02,#63,#02,#4b,#0a,#4b,#42
	db #60,#00,#a2,#60,#06,#06,#8e,#60
	db #05,#06,#53,#0a,#53,#42,#60,#00
	db #a2,#60,#06,#06,#92,#60,#05,#02
	db #6b,#02,#53,#0a,#53,#42,#60,#00
	db #a2,#60,#06,#06,#8e,#60,#05,#00
	db #b8,#e1,#00,#00,#04,#06,#ba,#40
	db #02,#b8,#4b,#02,#b8,#41,#02,#ba
	db #40,#02,#b8,#4b,#02,#b8,#41,#0a
	db #b0,#40,#0e,#42,#03,#02,#42,#05
	db #02,#ae,#41,#b0,#40,#04,#ae,#40
	db #02,#b0,#4b,#02,#aa,#41,#02,#a6
	db #40,#02,#aa,#4b,#02,#a6,#c1,#ea
	db #ff,#42,#80,#00,#00,#14,#42,#03
	db #02,#42,#05,#02,#42,#07,#00,#b8
	db #e1,#00,#00,#04,#06,#c2,#40,#02
	db #be,#4b,#02,#c8,#41,#02,#c6,#40
	db #02,#c8,#4b,#02,#be,#41,#0a,#b8
	db #40,#0e,#42,#03,#02,#42,#05,#02
	db #b4,#41,#06,#b0,#40,#02,#ae,#4b
	db #02,#ae,#41,#02,#b4,#40,#02,#b0
	db #4b,#02,#b4,#c1,#f2,#ff,#42,#80
	db #00,#00,#14,#42,#03,#02,#42,#05
	db #02,#42,#07,#00,#b8,#e1,#00,#00
	db #04,#06,#c2,#40,#02,#be,#4b,#02
	db #c8,#41,#02,#c6,#40,#02,#c8,#4b
	db #02,#be,#41,#0a,#b8,#40,#0e,#42
	db #03,#02,#42,#05,#02,#b4,#41,#06
	db #b0,#40,#02,#ae,#4b,#02,#b0,#41
	db #ae,#40,#aa,#40,#02,#b0,#4b,#02
	db #a6,#c1,#ea,#ff,#42,#80,#00,#00
	db #14,#42,#03,#02,#42,#05,#02,#42
	db #07,#00,#a2,#e1,#00,#00,#01,#42
	db #03,#a2,#41,#42,#03,#42,#05,#42
	db #07,#a2,#41,#42,#03,#42,#05,#42
	db #07,#a2,#41,#42,#03,#a2,#41,#42
	db #03,#42,#05,#42,#07,#42,#09,#42
	db #0b,#a2,#41,#42,#03,#42,#05,#42
	db #07,#a2,#41,#42,#03,#a2,#41,#42
	db #03,#42,#05,#42,#07,#42,#09,#42
	db #0b,#42,#0d,#42,#0f,#72,#e0,#00
	db #00,#07,#02,#33,#06,#33,#06,#33
	db #02,#33,#0a,#33,#06,#33,#02,#33
	db #06,#37,#00,#42,#60,#00,#42,#80
	db #00,#00,#00,#00,#10,#30,#30,#60
	db #40,#40,#00,#e0,#b0,#30,#f0,#30
	db #10,#10,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#10,#20,#60,#40
	db #60,#30,#00,#e0,#90,#00,#00,#00
	db #20,#c0,#00,#00,#10,#30,#20,#40
	db #40,#30,#00,#c0,#20,#10,#10,#10
	db #20,#c0,#00,#10,#20,#20,#70,#40
	db #40,#30,#00,#e0,#00,#00,#80,#00
	db #00,#c0,#00,#10,#30,#20,#30,#60
	db #40,#40,#00,#f0,#00,#00,#c0,#00
	db #00,#00,#00,#00,#10,#20,#60,#40
	db #60,#30,#00,#e0,#90,#00,#00,#40
	db #20,#c0,#00,#10,#10,#30,#20,#60
	db #40,#40,#00,#10,#10,#20,#e0,#40
	db #40,#40,#00,#00,#00,#10,#10,#30
	db #20,#20,#00,#80,#80,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#10,#10,#30,#30,#70
	db #40,#40,#00,#00,#10,#60,#c0,#80
	db #c0,#20,#00,#10,#30,#20,#60,#40
	db #40,#30,#00,#00,#00,#00,#00,#00
	db #00,#c0,#00,#00,#10,#30,#20,#60
	db #40,#40,#00,#a0,#50,#10,#10,#30
	db #20,#20,#00,#10,#20,#20,#60,#40
	db #40,#40,#00,#10,#90,#50,#50,#30
	db #20,#20,#00,#10,#30,#20,#60,#40
	db #40,#30,#00,#c0,#20,#10,#10,#30
	db #20,#c0,#00,#10,#30,#20,#20,#70
	db #40,#40,#00,#c0,#20,#20,#40,#80
	db #00,#00,#00,#00,#10,#20,#40,#40
	db #60,#30,#00,#e0,#10,#00,#c0,#20
	db #20,#c0,#00,#10,#30,#20,#20,#70
	db #40,#40,#00,#c0,#20,#20,#40,#c0
	db #60,#20,#00,#00,#10,#10,#00,#00
	db #40,#30,#00,#e0,#90,#00,#c0,#20
	db #60,#c0,#00,#70,#10,#10,#10,#30
	db #20,#20,#00,#e0,#80,#00,#00,#00
	db #00,#00,#00,#10,#30,#20,#60,#40
	db #40,#30,#00,#10,#10,#30,#20,#60
	db #40,#80,#00,#40,#60,#20,#20,#20
	db #30,#30,#00,#20,#60,#40,#c0,#80
	db #80,#00,#00,#20,#60,#40,#40,#50
	db #50,#20,#00,#10,#10,#30,#20,#60
	db #40,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#30,#30
	db #30,#00,#00,#00,#00,#00,#80,#80
	db #80,#00,#00,#00,#f0,#80,#00,#00
	db #00,#00,#00,#7c,#ef,#84,#00,#84
	db #00,#00,#00,#ef,#ee,#88,#00,#11
	db #01,#00,#00,#59,#ee,#8d,#00,#a7
	db #01,#00,#00,#b7,#ed,#92,#00,#49
	db #02,#00,#00,#0a,#ed,#97,#00,#f6
	db #02,#00,#00,#4f,#ec,#9d,#00,#b1
	db #03,#00,#00,#86,#eb,#a3,#00,#7a
	db #04,#00,#00,#ab,#ea,#aa,#00,#55
	db #05,#00,#00,#be,#e9,#b2,#00,#42
	db #06,#00,#00,#bb,#e8,#ba,#00,#45
	db #07,#00,#00,#9f,#e7,#c3,#00,#61
	db #08,#00,#00,#67,#e6,#cc,#00,#99
	db #09,#00,#00,#0e,#e5,#d7,#00,#f2
	db #0a,#00,#00,#8f,#e3,#e3,#00,#71
	db #0c,#00,#00,#e2,#e1,#f0,#00,#1e
	db #0e,#00,#00,#00,#00,#00,#01,#00
	db #10,#00,#00,#de,#fd,#11,#01,#22
	db #12,#00,#00,#6e,#fb,#24,#01,#92
	db #14,#00,#00,#9e,#f8,#3b,#01,#62
	db #17,#00,#00,#56,#f5,#55,#01,#aa
	db #1a,#00,#00,#75,#f1,#74,#01,#8b
	db #1e,#00,#00,#cd,#ec,#99,#01,#33
	db #03,#00,#00,#1d,#e7,#c7,#01,#e3
	db #08,#00,#00,#00,#00,#00,#02,#00
	db #10,#00,#00,#dc,#f6,#49,#02,#24
	db #19,#00,#00,#ab,#ea,#aa,#02,#55
	db #05,#00,#00,#9a,#f9,#33,#03,#66
	db #16,#00,#00,#00,#00,#00,#04,#00
	db #10,#00,#00,#56,#f5,#55,#05,#aa
	db #1a,#00,#00,#00,#00,#00,#08,#00
	db #10,#00,#00,#00,#00,#00,#10,#00
	db #10,#00,#00,#21,#27,#0f,#01,#00
	db #c5,#11,#7f,#c5,#d9,#01,#80,#c5
	db #11,#ff,#c5,#d9,#dd,#2e,#40,#7e
	db #23,#02,#0c,#12,#1d,#d9,#6f,#3e
	db #ff,#95,#02,#0c,#12,#1d,#d9,#dd
	db #2d,#20,#ec,#c9,#cd,#43,#16,#c9
	db #11,#00,#c5,#dd,#26,#00,#1a,#c5
	db #cb,#3f,#0d,#20,#fb,#c1,#77,#2c
	db #78,#1c,#3d,#20,#fc,#dd,#25,#20
	db #ed,#c9,#dd,#21,#cb,#16,#0e,#10
	db #e5,#dd,#7e,#00,#fe,#ff,#28,#17
	db #fe,#08,#30,#13,#47,#3e,#07,#90
	db #11,#00,#08,#19,#3d,#20,#fc,#3e
	db #20,#36,#00,#2c,#3d,#20,#fa,#e1
	db #11,#40,#00,#19,#dd,#23,#0d,#20
	db #d7,#c9,#21,#cb,#16,#0e,#10,#7e
	db #fe,#ff,#28,#02,#3d,#77,#23,#0d
	db #20,#f5,#c9,#08,#09,#0a,#0b,#0c
	db #0d,#0e,#0f,#10,#11,#12,#13,#14
	db #15,#16,#17,#21,#cb,#16,#3e,#08
	db #77,#23,#3c,#fe,#18,#20,#f9,#c9
	db #16,#00,#87,#87,#87,#87,#30,#02
	db #16,#01,#5f,#dd,#21,#93,#13,#dd
	db #19,#11,#00,#08,#dd,#7e,#00,#77
	db #dd,#7e,#08,#2c,#77,#2d,#dd,#23
	db #19,#0d,#20,#f0,#c9,#79,#87,#87
	db #87,#5f,#16,#00,#19,#5e,#23,#56
	db #7b,#80,#5f,#c9,#3a,#24,#18,#47
	db #e6,#07,#4f,#3c,#32,#58,#17,#3e
	db #07,#91,#cb,#3f,#32,#4f,#17,#78
	db #cb,#3f,#cb,#3f,#cb,#3f,#4f,#87
	db #81,#5f,#16,#00,#21,#82,#17,#19
	db #08,#7e,#08,#23,#46,#23,#4e,#21
	db #00,#01,#cd,#0d,#17,#eb,#3e,#00
	db #11,#00,#08,#19,#3d,#20,#fc,#0e
	db #08,#08,#cd,#e8,#16,#c9,#3a,#25
	db #18,#b7,#28,#1d,#3a,#24,#18,#fe
	db #d8,#28,#16,#21,#00,#02,#22,#48
	db #17,#cd,#1c,#17,#21,#00,#01,#22
	db #48,#17,#cd,#1c,#17,#21,#24,#18
	db #34,#c9,#02,#28,#03,#0b,#2a,#03
	db #0e,#2c,#03,#14,#2e,#03,#03,#30
	db #03,#12,#32,#03,#16,#36,#05,#08
	db #38,#05,#13,#3a,#05,#07,#3c,#05
	db #15,#28,#07,#08,#2a,#07,#11,#2c
	db #07,#06,#2e,#07,#08,#30,#07,#0d
	db #32,#07,#12,#34,#07,#08,#2c,#09
	db #0d,#2e,#09,#13,#32,#09,#07,#34
	db #09,#04,#36,#09,#12,#32,#0b,#0a
	db #34,#0b,#08,#36,#0b,#04,#38,#0b
	db #12,#3a,#0b,#02,#e0,#02,#0e,#e2
	db #02,#03,#e4,#02,#04,#e6,#02,#1a
	db #e2,#04,#0e,#e4,#04,#0f,#e6,#04
	db #13,#e8,#04,#08,#ea,#04,#0c,#ec
	db #04,#14,#ee,#04,#12,#f0,#04,#1a
	db #f2,#04,#0c,#e0,#08,#14,#e2,#08
	db #12,#e4,#08,#08,#e6,#08,#02,#e8
	db #08,#1a,#e2,#0a,#05,#e4,#0a,#00
	db #e6,#0a,#02,#e8,#0a,#13,#ea,#0a
	db #0e,#ec,#0a,#11,#ee,#0a,#10,#f0
	db #0a,#1a,#f2,#0a,#00,#00,#00
	jp l1e9b
	jp l1831		; play music
	jp l1ef0
.l1830
	db #00
;
.play_music
.l1831
;
	xor a
	ld (l1830),a
.l1836 equ $ + 1
	ld a,#01
	dec a
	jp nz,l1a02
.l183c equ $ + 1
	ld a,#01
	dec a
	jr nz,l18a8
.l1841 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l184f
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l184f
	rra
	jr nc,l1857
	ld de,l18f8
	ldi
.l1857
	rra
	jr nc,l185f
	ld de,l195d
	ldi
.l185f
	rra
	jr nc,l1867
	ld de,l19c2
	ldi
.l1867
	ld de,l18d7
	ldi
	ldi
	ld de,l193c
	ldi
	ldi
	ld de,l19a1
	ldi
	ldi
	rra
	jr nc,l1884
	ld de,l18a7
	ldi
.l1884
	rra
	jr nc,l188f
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1893),de
.l188f
	ld (l1841),hl
.l1893 equ $ + 1
	ld hl,#0000
	ld (l18b1),hl
	ld a,#01
	ld (l18ac),a
	ld (l18d2),a
	ld (l1937),a
	ld (l199c),a
.l18a7 equ $ + 1
	ld a,#01
.l18a8
	ld (l183c),a
.l18ac equ $ + 1
	ld a,#01
	dec a
	jr nz,l18ce
.l18b1 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l18cb
	srl a
	jr nz,l18bf
	ld a,(hl)
	inc hl
.l18bf
	jr nc,l18c6
	ld (l1830),a
	jr l18c9
.l18c6
	ld (l1a01),a
.l18c9
	ld a,#01
.l18cb
	ld (l18b1),hl
.l18ce
	ld (l18ac),a
.l18d2 equ $ + 1
	ld a,#01
	dec a
	jr nz,l1933
.l18d7 equ $ + 1
	ld hl,#0000
	call l1d47
	ld (l18d7),hl
	jr c,l1933
	ld a,d
	rra
	jr nc,l18ea
	and #0f
	ld (l1a84),a
.l18ea
	rl d
	jr nc,l18f2
	ld (l1a72),ix
.l18f2
	rl d
	jr nc,l1931
	ld a,e
.l18f8 equ $ + 1
	add #00
	ld (l1a83),a
	ld hl,#0000
	ld (l1a6f),hl
	rl d
	jr c,l1911
.l1907 equ $ + 1
	ld hl,#0000
	ld a,(l1a94)
	ld (l1a8c),a
	jr l192e
.l1911
	ld l,b
	add hl,hl
.l1914 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l1a94),a
	ld (l1a8c),a
	ld a,(hl)
	or a
	jr z,l192a
	ld (l1b72),a
.l192a
	inc hl
	ld (l1907),hl
.l192e
	ld (l1a86),hl
.l1931
	ld a,#01
.l1933
	ld (l18d2),a
.l1937 equ $ + 1
	ld a,#01
	dec a
	jr nz,l1998
.l193c equ $ + 1
	ld hl,#0000
	call l1d47
	ld (l193c),hl
	jr c,l1998
	ld a,d
	rra
	jr nc,l194f
	and #0f
	ld (l1a50),a
.l194f
	rl d
	jr nc,l1957
	ld (l1a3e),ix
.l1957
	rl d
	jr nc,l1996
	ld a,e
.l195d equ $ + 1
	add #00
	ld (l1a4f),a
	ld hl,#0000
	ld (l1a3b),hl
	rl d
	jr c,l1976
.l196c equ $ + 1
	ld hl,#0000
	ld a,(l1a60)
	ld (l1a58),a
	jr l1993
.l1976
	ld l,b
	add hl,hl
.l1979 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l1a60),a
	ld (l1a58),a
	ld a,(hl)
	or a
	jr z,l198f
	ld (l1b72),a
.l198f
	inc hl
	ld (l196c),hl
.l1993
	ld (l1a52),hl
.l1996
	ld a,#01
.l1998
	ld (l1937),a
.l199c equ $ + 1
	ld a,#01
	dec a
	jr nz,l19fd
.l19a1 equ $ + 1
	ld hl,#0000
	call l1d47
	ld (l19a1),hl
	jr c,l19fd
	ld a,d
	rra
	jr nc,l19b4
	and #0f
	ld (l1a1f),a
.l19b4
	rl d
	jr nc,l19bc
	ld (l1a0d),ix
.l19bc
	rl d
	jr nc,l19fb
	ld a,e
.l19c2 equ $ + 1
	add #00
	ld (l1a1e),a
	ld hl,#0000
	ld (l1a0a),hl
	rl d
	jr c,l19db
.l19d1 equ $ + 1
	ld hl,#0000
	ld a,(l1a2f)
	ld (l1a27),a
	jr l19f8
.l19db
	ld l,b
	add hl,hl
.l19de equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l1a2f),a
	ld (l1a27),a
	ld a,(hl)
	or a
	jr z,l19f4
	ld (l1b72),a
.l19f4
	inc hl
	ld (l19d1),hl
.l19f8
	ld (l1a21),hl
.l19fb
	ld a,#01
.l19fd
	ld (l199c),a
.l1a01 equ $ + 1
	ld a,#01
.l1a02
	ld (l1836),a
	ld iy,l1b89
.l1a0a equ $ + 1
	ld hl,#0000
.l1a0d equ $ + 1
	ld de,#0000
	add hl,de
	ld (l1a0a),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l1a1f equ $ + 2
.l1a1e equ $ + 1
	ld de,#0000
.l1a21 equ $ + 1
	ld hl,#0000
	call l1b94
.l1a27 equ $ + 1
	ld a,#01
	dec a
	jr nz,l1a30
	ld (l1a21),hl
.l1a2f equ $ + 1
	ld a,#06
.l1a30
	ld (l1a27),a
	ld a,lx
	ex af,af'
	ld iy,l1b87
.l1a3b equ $ + 1
	ld hl,#0000
.l1a3e equ $ + 1
	ld de,#0000
	add hl,de
	ld (l1a3b),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l1a50 equ $ + 2
.l1a4f equ $ + 1
	ld de,#0000
.l1a52 equ $ + 1
	ld hl,#0000
	call l1b94
.l1a58 equ $ + 1
	ld a,#01
	dec a
	jr nz,l1a61
	ld (l1a52),hl
.l1a60 equ $ + 1
	ld a,#06
.l1a61
	ld (l1a58),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l1b85
.l1a6f equ $ + 1
	ld hl,#0000
.l1a72 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l1a6f),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l1a84 equ $ + 2
.l1a83 equ $ + 1
	ld de,#0000
.l1a86 equ $ + 1
	ld hl,#0000
	call l1b94
.l1a8c equ $ + 1
	ld a,#01
	dec a
	jr nz,l1a95
	ld (l1a86),hl
.l1a94 equ $ + 1
	ld a,#06
.l1a95
	ld (l1a8c),a
	ex af,af'
	or lx
.l1a9b
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l1b85
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
.l1b72 equ $ + 1
	cp #ff
	ret z
	ld (l1b72),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l1b85
	db #00
	db #00
.l1b87
	db #00
	db #00
.l1b89
	db #00
	db #00
.l1b8b
	db #00
.l1b8c
	db #00
	db #00
	db #00
	db #00
	db #00
.l1b91
	db #00
	db #00
.l1b93
	db #00
.l1b94
	ld b,(hl)
	inc hl
	rr b
	jp c,l1bf2
	rr b
	jr c,l1bc2
	ld a,b
	and #0f
	jr nz,l1bab
	ld (iy+#07),a
	ld lx,#09
	ret
.l1bab
	ld lx,#08
	sub d
	jr nc,l1bb2
	xor a
.l1bb2
	ld (iy+#07),a
	rr b
	call l1d1b
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l1bc2
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l1bd2
	ld (l1b8b),a
	ld lx,#00
.l1bd2
	ld a,b
	and #0f
	sub d
	jr nc,l1bd9
	xor a
.l1bd9
	ld (iy+#07),a
	bit 5,c
	jr nz,l1be3
	inc lx
	ret
.l1be3
	rr b
	bit 6,c
	call l1d0d
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l1bf2
	rr b
	jr nc,l1c05
	ld a,(l1a8c)
	ld c,a
	ld a,(l1a94)
	cp c
	jr nz,l1c05
	ld a,#fe
	ld (l1b72),a
.l1c05
	bit 1,b
	jp nz,l1cbe
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l1b93),a
	bit 0,b
	jr z,l1c74
	bit 2,b
	call l1d0d
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l1c34),a
	ld a,b
	exx
.l1c34 equ $ + 1
	jr l1c35
.l1c35
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
	jr nc,l1c54
	inc hl
.l1c54
	bit 5,a
	jr z,l1c64
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
.l1c64
	ld (l1b91),hl
	exx
.l1c68
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l1b8b),a
	ld lx,#00
	ret
.l1c74
	bit 2,b
	call l1d0d
	ld (l1b91),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l1c88),a
	ld a,b
	exx
.l1c88 equ $ + 1
	jr l1c89
.l1c89
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
	jr z,l1cb5
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
.l1cb5
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l1c68
.l1cbe
	bit 0,b
	jr z,l1cc9
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l1b94
.l1cc9
	ld (iy+#07),#10
	bit 5,b
	jr nz,l1cd6
	ld lx,#09
	jr l1ce9
.l1cd6
	ld lx,#08
	ld hx,e
	bit 2,b
	call l1d0d
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l1ce9
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l1b93),a
	rr b
	rr b
	bit 2,b
	call l1d0d
	ld (l1b91),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l1b8b),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l1d0d
	jr z,l1d1b
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
.l1d1b
	bit 4,b
	jr z,l1d2b
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
.l1d2b
	ld a,e
	bit 3,b
	jr z,l1d38
	add (hl)
	inc hl
	cp #90
	jr c,l1d38
	ld a,#8f
.l1d38
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l1d7b
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l1d47
	ld a,(hl)
	inc hl
	srl a
	jr c,l1d6e
	sub #20
	jr c,l1d78
	jr z,l1d6a
	dec a
	ld e,a
.l1d55
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l1d63
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l1d63
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l1d6a
	ld e,(hl)
	inc hl
	jr l1d55
.l1d6e
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l1d78
	add #20
	ret
.l1d7b
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
.l1e9b
;
	ld hl,#0009
	add hl,de
	ld de,l1a01
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l1914),hl
	ld (l1979),hl
	ld (l19de),hl
	add hl,bc
	ld de,l18a7
	ldi
	ld de,l18f8
	ldi
	ld de,l195d
	ldi
	ld de,l19c2
	ldi
	ld de,l1893
	ldi
	ldi
	ld (l1841),hl
	ld a,#01
	ld (l1836),a
	ld (l183c),a
	ld a,#ff
	ld (l1b93),a
	ld hl,(l1914)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l1a86),hl
	ld (l1a52),hl
	ld (l1a21),hl
	ret
;
.stop_music
.l1ef0
;
	ld hl,l1b8c
	ld bc,#0300
.l1ef6
	ld (hl),c
	inc hl
	djnz l1ef6
	ld a,#3f
	jp l1a9b
;
.init_music		; added by Megachur
;
	; org #800a
	ld de,music_data	; #1000
	jp real_init_music
;
.music_info
	db "Clouds With Virgins In The Skies (2012)(Dirty Minds)(Factor 6)",0
	db "StArkos",0

	read "music_end.asm"
