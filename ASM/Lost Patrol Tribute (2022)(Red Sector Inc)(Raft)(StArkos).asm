; Music of Lost Patrol Tribute (2022)(Red Sector Inc)(Raft)(StArkos)
; Ripped by Megachur the 01/04/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LOSTPATT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #2500

	read "music_header.asm"

.l2500
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#08,#79,#01,#32,#25,#3b,#25
	db #56,#25,#7f,#25,#89,#25,#94,#25
	db #9e,#25,#a8,#25,#b3,#25,#d3,#25
	db #fc,#25,#06,#26,#10,#26,#1a,#26
	db #24,#26,#36,#26,#48,#26,#5a,#26
	db #74,#26,#00,#00,#00,#00,#00,#00
	db #0d,#34,#25,#03,#fe,#05,#28,#3c
	db #34,#b0,#01,#00,#a8,#ff,#ff,#a4
	db #02,#00,#a0,#fe,#ff,#a0,#04,#00
	db #a0,#fc,#ff,#0d,#34,#25,#01,#00
	db #7e,#2b,#0c,#72,#28,#0c,#66,#25
	db #0c,#76,#23,#0c,#66,#23,#0c,#5e
	db #23,#0c,#72,#24,#0c,#62,#24,#0c
	db #52,#24,#0c,#6a,#26,#0c,#5a,#23
	db #0c,#4e,#23,#0c,#0d,#34,#25,#01
	db #00,#3c,#7c,#03,#7c,#07,#0d,#81
	db #25,#01,#00,#7c,#0a,#7c,#03,#7c
	db #07,#0d,#8b,#25,#01,#00,#3c,#7c
	db #03,#7c,#08,#0d,#96,#25,#01,#00
	db #3c,#7c,#02,#7c,#05,#0d,#a0,#25
	db #01,#00,#7c,#0a,#7c,#03,#7c,#08
	db #0d,#aa,#25,#02,#00,#7e,#24,#09
	db #7c,#06,#7c,#04,#78,#02,#76,#24
	db #09,#74,#06,#74,#04,#70,#02,#6e
	db #24,#09,#6c,#06,#6c,#04,#68,#02
	db #0d,#34,#25,#02,#00,#7e,#2b,#0c
	db #7a,#2a,#0d,#72,#29,#10,#6a,#28
	db #09,#76,#2b,#0c,#6e,#2a,#0d,#66
	db #29,#10,#5e,#28,#09,#66,#2b,#0c
	db #5e,#2a,#0d,#5a,#29,#10,#56,#28
	db #09,#0d,#34,#25,#01,#00,#3c,#7c
	db #05,#7c,#08,#0d,#fe,#25,#01,#00
	db #3c,#7c,#05,#7c,#09,#0d,#08,#26
	db #01,#00,#3c,#7c,#02,#7c,#05,#0d
	db #12,#26,#01,#00,#3c,#7c,#04,#7c
	db #07,#0d,#1c,#26,#01,#00,#3c,#fc
	db #ff,#ff,#fb,#b4,#01,#00,#74,#fb
	db #28,#68,#fb,#0d,#34,#25,#01,#00
	db #3c,#fc,#ff,#ff,#fc,#b4,#01,#00
	db #74,#fc,#28,#68,#fc,#0d,#34,#25
	db #01,#00,#3c,#fc,#ff,#ff,#fd,#b4
	db #01,#00,#74,#fd,#28,#68,#fd,#0d
	db #34,#25,#02,#00,#b6,#21,#02,#00
	db #b8,#ff,#ff,#38,#b8,#ff,#ff,#34
	db #30,#a8,#02,#00,#28,#a8,#fe,#ff
	db #28,#0d,#69,#26,#01,#00,#b6,#21
	db #08,#00,#b8,#ff,#ff,#b0,#01,#00
	db #2c,#28,#0d,#34,#25,#40,#00,#00
	db #00,#05,#27,#00,#e5,#2c,#06,#27
	db #db,#2c,#00,#61,#27,#06,#27,#11
	db #29,#00,#b1,#27,#06,#27,#2f,#29
	db #00,#d4,#27,#06,#27,#7f,#27,#00
	db #35,#28,#06,#27,#7f,#28,#00,#55
	db #28,#06,#27,#7f,#28,#00,#d4,#27
	db #06,#27,#7f,#27,#00,#1a,#2a,#52
	db #29,#ae,#29,#00,#2c,#2a,#52,#29
	db #ae,#29,#00,#61,#27,#06,#27,#11
	db #29,#00,#b1,#27,#06,#27,#2f,#29
	db #00,#45,#2a,#fe,#2b,#6d,#2c,#00
	db #9f,#2a,#cf,#2a,#26,#2b,#00,#bd
	db #2a,#06,#27,#92,#2b,#00,#1a,#2a
	db #52,#29,#ae,#29,#00,#2c,#2a,#52
	db #29,#ae,#29,#00,#61,#27,#06,#27
	db #11,#29,#01,#92,#26,#00,#68,#e0
	db #00,#00,#01,#06,#ea,#60,#02,#02
	db #7c,#60,#01,#41,#42,#60,#00,#06
	db #ea,#60,#02,#76,#60,#01,#3d,#37
	db #21,#06,#ea,#60,#02,#02,#74,#60
	db #01,#39,#42,#60,#00,#06,#ea,#60
	db #02,#64,#60,#01,#02,#29,#08,#ea
	db #60,#02,#02,#7c,#60,#01,#41,#42
	db #60,#00,#06,#ea,#60,#02,#76,#60
	db #01,#3d,#37,#21,#06,#ea,#60,#02
	db #02,#74,#60,#01,#39,#02,#42,#60
	db #00,#04,#ea,#60,#02,#04,#64,#60
	db #01,#98,#ed,#00,#00,#03,#16,#98
	db #60,#04,#06,#98,#60,#05,#16,#98
	db #60,#06,#06,#98,#60,#03,#16,#98
	db #60,#04,#06,#98,#60,#07,#00,#72
	db #e5,#00,#00,#08,#42,#00,#42,#00
	db #42,#00,#72,#60,#09,#42,#00,#14
	db #72,#60,#08,#06,#72,#60,#09,#10
	db #72,#60,#08,#02,#33,#08,#72,#60
	db #09,#10,#72,#60,#08,#02,#33,#33
	db #06,#72,#60,#09,#0e,#33,#33,#02
	db #33,#a6,#ed,#00,#00,#0a,#06,#42
	db #00,#0e,#a2,#60,#0b,#06,#5f,#16
	db #63,#06,#a6,#60,#0a,#16,#ac,#60
	db #0c,#06,#a8,#60,#0d,#16,#a2,#60
	db #0b,#04,#42,#0b,#b0,#e1,#00,#00
	db #0e,#b0,#47,#b0,#4b,#b0,#4d,#b0
	db #4f,#b0,#51,#b0,#53,#b0,#55,#08
	db #ac,#41,#ac,#47,#ac,#4b,#ac,#4d
	db #a8,#41,#a8,#47,#a8,#4b,#a8,#4d
	db #a8,#4f,#a8,#51,#a8,#53,#a8,#55
	db #08,#ac,#41,#ac,#47,#ac,#4b,#ac
	db #4d,#b0,#41,#b0,#47,#b0,#4b,#b0
	db #4d,#b0,#4f,#b0,#51,#b0,#53,#b0
	db #55,#08,#b4,#61,#0f,#b4,#47,#b4
	db #4b,#b4,#4d,#b6,#61,#10,#b6,#47
	db #b6,#4b,#b6,#4d,#b6,#4f,#b6,#51
	db #b6,#53,#b6,#55,#00,#a6,#e5,#00
	db #00,#11,#12,#63,#02,#67,#02,#6d
	db #02,#69,#16,#63,#06,#63,#02,#67
	db #12,#6d,#02,#67,#02,#6d,#02,#71
	db #0a,#71,#02,#75,#00,#b6,#e5,#00
	db #00,#11,#42,#00,#14,#75,#02,#77
	db #75,#71,#16,#6d,#02,#63,#02,#67
	db #26,#42,#80,#01,#00,#42,#00,#42
	db #00,#42,#00,#a6,#c0,#00,#00,#42
	db #00,#5f,#02,#63,#02,#67,#00,#72
	db #e5,#00,#00,#08,#42,#00,#b0,#60
	db #12,#71,#72,#60,#09,#42,#00,#b0
	db #60,#12,#71,#72,#60,#08,#42,#00
	db #b0,#60,#12,#71,#72,#60,#09,#42
	db #00,#b0,#60,#12,#71,#72,#60,#08
	db #42,#00,#b0,#60,#12,#71,#72,#60
	db #09,#42,#00,#b0,#60,#12,#71,#72
	db #60,#08,#42,#00,#b0,#60,#12,#71
	db #72,#60,#09,#42,#00,#b0,#60,#12
	db #71,#72,#60,#08,#42,#00,#b0,#60
	db #12,#71,#72,#60,#09,#42,#00,#b0
	db #60,#12,#71,#72,#60,#08,#42,#00
	db #b0,#60,#12,#71,#72,#60,#09,#42
	db #00,#b0,#60,#12,#71,#72,#60,#08
	db #42,#00,#b0,#60,#12,#71,#72,#60
	db #09,#42,#00,#b0,#60,#12,#71,#72
	db #60,#08,#42,#00,#b0,#60,#12,#71
	db #72,#60,#09,#42,#00,#b0,#60,#12
	db #71,#b0,#ef,#00,#00,#03,#16,#b0
	db #60,#04,#06,#b0,#60,#05,#16,#b0
	db #60,#06,#06,#b0,#60,#03,#16,#b0
	db #60,#04,#06,#b0,#60,#07,#00,#be
	db #ef,#00,#00,#0a,#06,#42,#00,#0e
	db #ba,#60,#0b,#06,#77,#16,#7b,#06
	db #be,#60,#0a,#16,#c4,#60,#0c,#06
	db #c0,#60,#0d,#16,#ba,#60,#0b,#04
	db #42,#0d,#6e,#e0,#00,#00,#01,#06
	db #ea,#60,#02,#02,#82,#60,#01,#47
	db #42,#60,#00,#06,#ea,#60,#02,#6e
	db #60,#01,#47,#2d,#29,#06,#ea,#60
	db #02,#02,#7c,#60,#01,#41,#42,#60
	db #00,#06,#ea,#60,#02,#64,#60,#01
	db #02,#21,#08,#ea,#60,#02,#02,#74
	db #60,#01,#39,#42,#60,#00,#06,#ea
	db #60,#02,#64,#60,#01,#1f,#25,#29
	db #06,#ea,#60,#02,#02,#7c,#60,#01
	db #41,#02,#42,#60,#00,#04,#ea,#60
	db #02,#76,#60,#01,#33,#25,#72,#e5
	db #00,#00,#08,#42,#00,#9e,#60,#12
	db #5f,#72,#60,#09,#42,#00,#9e,#60
	db #12,#5f,#04,#5f,#5f,#04,#63,#63
	db #72,#60,#08,#02,#9e,#60,#12,#5f
	db #72,#60,#09,#02,#9e,#60,#12,#5f
	db #04,#5f,#5f,#02,#72,#60,#08,#9c
	db #60,#12,#5d,#72,#60,#08,#02,#98
	db #60,#12,#59,#72,#60,#09,#02,#98
	db #60,#12,#59,#04,#59,#59,#02,#72
	db #60,#08,#9c,#60,#12,#5d,#72,#60
	db #08,#02,#9e,#60,#12,#5f,#72,#60
	db #09,#02,#9e,#60,#12,#5f,#04,#5f
	db #5f,#72,#60,#08,#42,#00,#9e,#60
	db #12,#5d,#a6,#e5,#00,#00,#11,#16
	db #6d,#06,#71,#16,#75,#06,#71,#16
	db #6d,#06,#67,#00,#a6,#e5,#00,#00
	db #11,#16,#6d,#06,#71,#14,#42,#80
	db #fe,#ff,#b4,#c0,#00,#00,#06,#71
	db #16,#6d,#06,#71,#00,#b0,#e1,#00
	db #00,#0e,#b0,#47,#b0,#4b,#02,#a6
	db #67,#0f,#0e,#9e,#61,#10,#98,#60
	db #0e,#9e,#60,#10,#a6,#60,#0f,#b0
	db #40,#b0,#47,#b0,#4b,#02,#a8,#67
	db #0e,#0e,#9e,#61,#10,#98,#60,#0f
	db #9e,#60,#10,#a6,#60,#0f,#b0,#60
	db #0e,#b0,#47,#b0,#4b,#02,#a6,#67
	db #0f,#0e,#9e,#61,#10,#98,#60,#0e
	db #9e,#60,#10,#a6,#60,#0f,#b0,#40
	db #b0,#47,#b0,#4b,#02,#a8,#67,#0e
	db #0e,#9e,#60,#11,#59,#5f,#63,#a6
	db #e5,#00,#00,#11,#16,#63,#06,#63
	db #06,#5f,#0e,#67,#06,#71,#12,#69
	db #02,#5f,#02,#69,#02,#75,#12,#6d
	db #02,#63,#02,#6d,#00,#b6,#e5,#00
	db #00,#11,#16,#75,#02,#71,#02,#77
	db #16,#6d,#06,#71,#2e,#6d,#00,#5e
	db #e0,#00,#00,#01,#06,#ea,#60,#02
	db #02,#72,#60,#01,#37,#42,#60,#00
	db #06,#ea,#60,#02,#6c,#60,#01,#33
	db #2d,#29,#06,#ea,#60,#02,#76,#60
	db #01,#3d,#41,#42,#60,#00,#06,#ea
	db #60,#02,#7c,#60,#01,#02,#37,#21
	db #06,#ea,#60,#02,#02,#74,#60,#01
	db #39,#42,#60,#00,#06,#ea,#60,#02
	db #5a,#60,#01,#02,#21,#25,#06,#ea
	db #60,#02,#72,#60,#01,#39,#3d,#27
	db #06,#42,#00,#37,#02,#2d,#72,#e5
	db #00,#00,#08,#42,#00,#84,#60,#12
	db #45,#72,#60,#09,#42,#00,#84,#60
	db #12,#45,#04,#45,#45,#04,#3f,#3f
	db #72,#60,#08,#02,#80,#60,#12,#41
	db #72,#60,#09,#02,#80,#60,#12,#41
	db #04,#41,#41,#02,#72,#60,#08,#84
	db #60,#12,#45,#72,#60,#08,#02,#86
	db #60,#12,#47,#72,#60,#09,#02,#86
	db #60,#12,#47,#04,#47,#47,#02,#72
	db #60,#08,#80,#60,#12,#41,#72,#60
	db #08,#02,#8a,#60,#12,#4b,#72,#60
	db #09,#02,#8a,#60,#12,#4b,#04,#4b
	db #4b,#72,#60,#08,#42,#00,#84,#60
	db #12,#45,#72,#e5,#00,#00,#08,#42
	db #00,#80,#60,#12,#41,#72,#60,#09
	db #42,#00,#80,#60,#12,#41,#04,#41
	db #41,#04,#41,#41,#72,#60,#08,#02
	db #80,#60,#12,#41,#72,#60,#09,#02
	db #80,#60,#12,#41,#04,#41,#41,#02
	db #72,#60,#08,#80,#60,#12,#41,#72
	db #60,#08,#02,#80,#60,#12,#41,#72
	db #60,#09,#02,#80,#60,#12,#41,#04
	db #41,#41,#02,#72,#60,#08,#80,#60
	db #12,#41,#72,#60,#08,#02,#86,#60
	db #12,#47,#72,#60,#09,#02,#86,#60
	db #12,#47,#04,#45,#45,#72,#60,#08
	db #42,#00,#84,#60,#12,#45,#68,#e0
	db #00,#00,#01,#04,#a6,#61,#0f,#ea
	db #60,#02,#a6,#6b,#0f,#7c,#61,#01
	db #41,#42,#60,#00,#06,#ea,#60,#02
	db #76,#60,#01,#3d,#37,#21,#04,#a8
	db #60,#0e,#ea,#60,#02,#a8,#6b,#0e
	db #74,#61,#01,#39,#42,#60,#00,#06
	db #ea,#60,#02,#64,#60,#01,#02,#29
	db #06,#a6,#60,#0f,#ea,#60,#02,#a6
	db #6b,#0f,#7c,#61,#01,#41,#42,#60
	db #00,#06,#ea,#60,#02,#76,#60,#01
	db #3d,#37,#21,#04,#a8,#60,#0e,#ea
	db #60,#02,#a8,#6b,#0e,#74,#61,#01
	db #39,#02,#42,#60,#00,#04,#ea,#60
	db #02,#04,#64,#60,#01,#72,#e5,#00
	db #00,#08,#42,#00,#42,#00,#42,#00
	db #72,#60,#09,#42,#00,#9e,#61,#10
	db #9e,#47,#9e,#4b,#98,#61,#0e,#98
	db #47,#98,#4b,#08,#72,#60,#08,#06
	db #72,#60,#09,#02,#9e,#61,#10,#9e
	db #47,#9e,#4b,#98,#61,#0f,#98,#47
	db #98,#4b,#02,#72,#60,#08,#02,#33
	db #08,#72,#60,#09,#02,#9e,#61,#10
	db #9e,#47,#9e,#4b,#98,#61,#0e,#98
	db #47,#98,#4b,#02,#72,#60,#08,#02
	db #33,#33,#06,#72,#60,#09,#02,#9e
	db #61,#10,#9e,#47,#9e,#4b,#98,#61
	db #0f,#98,#47,#98,#4b,#72,#60,#09
	db #33,#02,#33,#42,#80,#00,#00,#3e
	db #3c,#42,#00,#42,#00,#42,#80,#00
	db #00,#3e,#3c,#42,#00,#42,#00,#00
;
; #0d41 - player reallocated by Megachur
;
	jp l13b5
	jp l0d4b
	jp l140a
.l0d4a
	nop
;
.play_music
.l0d4b
;
	xor a
	ld (l0d4a),a
.l0d50 equ $ + 1
	ld a,#01
	dec a
	jp nz,l0f1c
.l0d56 equ $ + 1
	ld a,#01
	dec a
	jr nz,l0dc2
.l0d5b equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l0d69
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l0d69
	rra
	jr nc,l0d71
	ld de,l0e12
	ldi
.l0d71
	rra
	jr nc,l0d79
	ld de,l0e77
	ldi
.l0d79
	rra
	jr nc,l0d81
	ld de,l0edc
	ldi
.l0d81
	ld de,l0df1
	ldi
	ldi
	ld de,l0e56
	ldi
	ldi
	ld de,l0ebb
	ldi
	ldi
	rra
	jr nc,l0d9e
	ld de,l0dc1
	ldi
.l0d9e
	rra
	jr nc,l0da9
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l0dad),de
.l0da9
	ld (l0d5b),hl
.l0dad equ $ + 1
	ld hl,#0000
	ld (l0dcb),hl
	ld a,#01
	ld (l0dc6),a
	ld (l0dec),a
	ld (l0e51),a
	ld (l0eb6),a
.l0dc1 equ $ + 1
	ld a,#01
.l0dc2
	ld (l0d56),a
.l0dc6 equ $ + 1
	ld a,#01
	dec a
	jr nz,l0de8
.l0dcb equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l0de5
	srl a
	jr nz,l0dd9
	ld a,(hl)
	inc hl
.l0dd9
	jr nc,l0de0
	ld (l0d4a),a
	jr l0de3
.l0de0
	ld (l0f1b),a
.l0de3
	ld a,#01
.l0de5
	ld (l0dcb),hl
.l0de8
	ld (l0dc6),a
.l0dec equ $ + 1
	ld a,#01
	dec a
	jr nz,l0e4d
.l0df1 equ $ + 1
	ld hl,#0000
	call l1261
	ld (l0df1),hl
	jr c,l0e4d
	ld a,d
	rra
	jr nc,l0e04
	and #0f
	ld (l0f9e),a
.l0e04
	rl d
	jr nc,l0e0c
	ld (l0f8c),ix
.l0e0c
	rl d
	jr nc,l0e4b
	ld a,e
.l0e12 equ $ + 1
	add #00
	ld (l0f9d),a
	ld hl,#0000
	ld (l0f89),hl
	rl d
	jr c,l0e2b
.l0e21 equ $ + 1
	ld hl,#0000
	ld a,(l0fae)
	ld (l0fa6),a
	jr l0e48
.l0e2b
	ld l,b
	add hl,hl
.l0e2e equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l0fae),a
	ld (l0fa6),a
	ld a,(hl)
	or a
	jr z,l0e44
	ld (l108c),a
.l0e44
	inc hl
	ld (l0e21),hl
.l0e48
	ld (l0fa0),hl
.l0e4b
	ld a,#01
.l0e4d
	ld (l0dec),a
.l0e51 equ $ + 1
	ld a,#01
	dec a
	jr nz,l0eb2
.l0e56 equ $ + 1
	ld hl,#0000
	call l1261
	ld (l0e56),hl
	jr c,l0eb2
	ld a,d
	rra
	jr nc,l0e69
	and #0f
	ld (l0f6a),a
.l0e69
	rl d
	jr nc,l0e71
	ld (l0f58),ix
.l0e71
	rl d
	jr nc,l0eb0
	ld a,e
.l0e77 equ $ + 1
	add #00
	ld (l0f69),a
	ld hl,#0000
	ld (l0f55),hl
	rl d
	jr c,l0e90
.l0e86 equ $ + 1
	ld hl,#0000
	ld a,(l0f7a)
	ld (l0f72),a
	jr l0ead
.l0e90
	ld l,b
	add hl,hl
.l0e93 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l0f7a),a
	ld (l0f72),a
	ld a,(hl)
	or a
	jr z,l0ea9
	ld (l108c),a
.l0ea9
	inc hl
	ld (l0e86),hl
.l0ead
	ld (l0f6c),hl
.l0eb0
	ld a,#01
.l0eb2
	ld (l0e51),a
.l0eb6 equ $ + 1
	ld a,#01
	dec a
	jr nz,l0f17
.l0ebb equ $ + 1
	ld hl,#0000
	call l1261
	ld (l0ebb),hl
	jr c,l0f17
	ld a,d
	rra
	jr nc,l0ece
	and #0f
	ld (l0f39),a
.l0ece
	rl d
	jr nc,l0ed6
	ld (l0f27),ix
.l0ed6
	rl d
	jr nc,l0f15
	ld a,e
.l0edc equ $ + 1
	add #00
	ld (l0f38),a
	ld hl,#0000
	ld (l0f24),hl
	rl d
	jr c,l0ef5
.l0eeb equ $ + 1
	ld hl,#0000
	ld a,(l0f49)
	ld (l0f41),a
	jr l0f12
.l0ef5
	ld l,b
	add hl,hl
.l0ef8 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l0f49),a
	ld (l0f41),a
	ld a,(hl)
	or a
	jr z,l0f0e
	ld (l108c),a
.l0f0e
	inc hl
	ld (l0eeb),hl
.l0f12
	ld (l0f3b),hl
.l0f15
	ld a,#01
.l0f17
	ld (l0eb6),a
.l0f1b equ $ + 1
	ld a,#01
.l0f1c
	ld (l0d50),a
	ld iy,l10a3
.l0f24 equ $ + 1
	ld hl,#0000
.l0f27 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l0f24),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l0f39 equ $ + 2
.l0f38 equ $ + 1
	ld de,#0000
.l0f3b equ $ + 1
	ld hl,#0000
	call l10ae
.l0f41 equ $ + 1
	ld a,#01
	dec a
	jr nz,l0f4a
	ld (l0f3b),hl
.l0f49 equ $ + 1
	ld a,#06
.l0f4a
	ld (l0f41),a
	ld a,lx
	ex af,af'
	ld iy,l10a1
.l0f55 equ $ + 1
	ld hl,#0000
.l0f58 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l0f55),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l0f6a equ $ + 2
.l0f69 equ $ + 1
	ld de,#0000
.l0f6c equ $ + 1
	ld hl,#0000
	call l10ae
.l0f72 equ $ + 1
	ld a,#01
	dec a
	jr nz,l0f7b
	ld (l0f6c),hl
.l0f7a equ $ + 1
	ld a,#06
.l0f7b
	ld (l0f72),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l109f
.l0f89 equ $ + 1
	ld hl,#0000
.l0f8c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l0f89),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l0f9e equ $ + 2
.l0f9d equ $ + 1
	ld de,#0000
.l0fa0 equ $ + 1
	ld hl,#0000
	call l10ae
.l0fa6 equ $ + 1
	ld a,#01
	dec a
	jr nz,l0faf
	ld (l0fa0),hl
.l0fae equ $ + 1
	ld a,#06
.l0faf
	ld (l0fa6),a
	ex af,af'
	or lx
.l0fb5
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l109f
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
.l108c equ $ + 1
	cp #ff
	ret z
	ld (l108c),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l109f
	nop
	nop
.l10a1
	nop
	nop
.l10a3
	nop
	nop
.l10a5
	nop
.l10a6
	nop
	nop
	nop
	nop
	nop
.l10ab
	nop
	nop
.l10ad
	nop
.l10ae
	ld b,(hl)
	inc hl
	rr b
	jp c,l110c
	rr b
	jr c,l10dc
	ld a,b
	and #0f
	jr nz,l10c5
	ld (iy+#07),a
	ld lx,#09
	ret
.l10c5
	ld lx,#08
	sub d
	jr nc,l10cc
	xor a
.l10cc
	ld (iy+#07),a
	rr b
	call l1235
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l10dc
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l10ec
	ld (l10a5),a
	ld lx,#00
.l10ec
	ld a,b
	and #0f
	sub d
	jr nc,l10f3
	xor a
.l10f3
	ld (iy+#07),a
	bit 5,c
	jr nz,l10fd
	inc lx
	ret
.l10fd
	rr b
	bit 6,c
	call l1227
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l110c
	rr b
	jr nc,l111f
	ld a,(l0fa6)
	ld c,a
	ld a,(l0fae)
	cp c
	jr nz,l111f
	ld a,#fe
	ld (l108c),a
.l111f
	bit 1,b
	jp nz,l11d8
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l10ad),a
	bit 0,b
	jr z,l118e
	bit 2,b
	call l1227
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l114e),a
	ld a,b
	exx
.l114e equ $ + 1
	jr l114f
.l114f
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
	jr nc,l116e
	inc hl
.l116e
	bit 5,a
	jr z,l117e
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
.l117e
	ld (l10ab),hl
	exx
.l1182
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l10a5),a
	ld lx,#00
	ret
.l118e
	bit 2,b
	call l1227
	ld (l10ab),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l11a2),a
	ld a,b
	exx
.l11a2 equ $ + 1
	jr l11a3
.l11a3
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
	jr z,l11cf
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
.l11cf
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l1182
.l11d8
	bit 0,b
	jr z,l11e3
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l10ae
.l11e3
	ld (iy+#07),#10
	bit 5,b
	jr nz,l11f0
	ld lx,#09
	jr l1203
.l11f0
	ld lx,#08
	ld hx,e
	bit 2,b
	call l1227
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l1203
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l10ad),a
	rr b
	rr b
	bit 2,b
	call l1227
	ld (l10ab),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l10a5),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l1227
	jr z,l1235
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
.l1235
	bit 4,b
	jr z,l1245
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
.l1245
	ld a,e
	bit 3,b
	jr z,l1252
	add (hl)
	inc hl
	cp #90
	jr c,l1252
	ld a,#8f
.l1252
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l1295
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l1261
	ld a,(hl)
	inc hl
	srl a
	jr c,l1288
	sub #20
	jr c,l1292
	jr z,l1284
	dec a
	ld e,a
.l126f
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l127d
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l127d
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l1284
	ld e,(hl)
	inc hl
	jr l126f
.l1288
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l1292
	add #20
	ret
.l1295
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
.l13b5
;
	ld hl,#0009
	add hl,de
	ld de,l0f1b
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l0e2e),hl
	ld (l0e93),hl
	ld (l0ef8),hl
	add hl,bc
	ld de,l0dc1
	ldi
	ld de,l0e12
	ldi
	ld de,l0e77
	ldi
	ld de,l0edc
	ldi
	ld de,l0dad
	ldi
	ldi
	ld (l0d5b),hl
	ld a,#01
	ld (l0d50),a
	ld (l0d56),a
	ld a,#ff
	ld (l10ad),a
	ld hl,(l0e2e)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l0fa0),hl
	ld (l0f6c),hl
	ld (l0f3b),hl
	ret
;
.stop_music
.l140a
;
	ld hl,l10a6
	ld bc,#0300
.l1410
	ld (hl),c
	inc hl
	djnz l1410
	ld a,#3f
	jp l0fb5

;
.init_music		; #0249 - added by Megachur
;
	ld de,l2500
	jp real_init_music

;
.music_info
	db "Lost Patrol Tribute (2022)(Red Sector Inc)(Raft)",0
	db "StArkos",0

	read "music_end.asm"
