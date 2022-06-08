; Music of Goldrunner Wannabe (2021)(Oneman)()()
; Ripped by Megachur the 10/04/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GOLDRUNW.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #70c0

	read "music_header.asm"

.l70c0
	db #80,#03,#40,#42,#0f,#00,#40,#01
	db #f2,#70,#52,#71,#b2,#71,#40,#01
	db #f2,#70,#52,#71,#b2,#71,#40,#01
	db #12,#72,#87,#72,#ea,#72,#40,#01
	db #12,#72,#87,#72,#ea,#72,#80,#02
	db #7d,#73,#3d,#74,#f1,#74,#00,#00
	db #c6,#70,#0a,#bd,#75,#0a,#bd,#75
	db #0a,#e5,#75,#0a,#bd,#75,#0a,#bd
	db #75,#0a,#a2,#75,#0a,#e5,#75,#0a
	db #bd,#75,#0a,#bd,#75,#0a,#b2,#75
	db #0a,#e5,#75,#0a,#bd,#75,#0a,#bd
	db #75,#0a,#bd,#75,#0a,#e5,#75,#0a
	db #e5,#75,#0a,#bd,#75,#0a,#bd,#75
	db #0a,#e5,#75,#0a,#bd,#75,#0a,#bd
	db #75,#0a,#bd,#75,#0a,#e5,#75,#0a
	db #bd,#75,#0a,#bd,#75,#0a,#b2,#75
	db #0a,#e5,#75,#0a,#bd,#75,#0a,#bd
	db #75,#0a,#bd,#75,#0a,#e5,#75,#0a
	db #e5,#75,#0a,#02,#76,#0a,#0d,#76
	db #0a,#18,#76,#0a,#23,#76,#0a,#2e
	db #76,#0a,#e5,#75,#0a,#39,#76,#0a
	db #b2,#75,#0a,#49,#76,#0a,#e5,#75
	db #0a,#39,#76,#0a,#54,#76,#0a,#5f
	db #76,#0a,#54,#76,#0a,#6a,#76,#0a
	db #75,#76,#0a,#02,#76,#0a,#0d,#76
	db #0a,#18,#76,#0a,#23,#76,#0a,#2e
	db #76,#0a,#a2,#75,#0a,#39,#76,#0a
	db #b2,#75,#0a,#49,#76,#0a,#e5,#75
	db #0a,#39,#76,#0a,#b2,#75,#0a,#5f
	db #76,#0a,#54,#76,#0a,#6a,#76,#0a
	db #75,#76,#0a,#7c,#76,#0a,#ca,#75
	db #0a,#7c,#76,#0a,#ca,#75,#0a,#7c
	db #76,#0f,#ca,#75,#05,#96,#77,#0a
	db #ca,#75,#0a,#7c,#76,#0f,#ca,#75
	db #05,#96,#77,#0a,#ca,#75,#0a,#90
	db #76,#0a,#9e,#76,#0a,#90,#76,#0a
	db #9e,#76,#0a,#7c,#76,#0a,#ca,#75
	db #0a,#7c,#76,#0a,#ca,#75,#0a,#7c
	db #76,#0f,#ca,#75,#05,#96,#77,#0a
	db #ca,#75,#0a,#7c,#76,#0f,#ca,#75
	db #05,#96,#77,#0a,#ca,#75,#0a,#90
	db #76,#0a,#9e,#76,#0a,#90,#76,#0a
	db #9e,#76,#0a,#bd,#75,#0a,#bd,#75
	db #0a,#e5,#75,#0a,#bd,#75,#0a,#bd
	db #75,#05,#9e,#77,#05,#a9,#77,#0a
	db #e5,#75,#0a,#bd,#75,#0a,#bd,#75
	db #0a,#e5,#75,#0a,#e5,#75,#0a,#bd
	db #75,#0a,#bd,#75,#05,#bd,#75,#05
	db #b1,#77,#0a,#ac,#76,#0a,#ac,#76
	db #05,#ba,#77,#05,#c2,#77,#0a,#bd
	db #75,#0a,#e5,#75,#0a,#bd,#75,#05
	db #bd,#75,#05,#ca,#77,#0a,#bd,#75
	db #05,#e5,#75,#05,#d3,#77,#0a,#bd
	db #75,#0a,#bd,#75,#0a,#2e,#76,#0a
	db #e5,#75,#0a,#bd,#75,#05,#bb,#76
	db #05,#e3,#77,#0a,#bb,#76,#05,#e5
	db #75,#05,#ec,#77,#0a,#e5,#75,#0a
	db #49,#76,#0a,#49,#76,#0a,#c7,#76
	db #0a,#b2,#75,#0a,#49,#76,#0a,#e5
	db #75,#0a,#c7,#76,#0a,#b2,#75,#0a
	db #d2,#76,#0a,#d2,#76,#0a,#2e,#76
	db #0a,#c7,#76,#0a,#d2,#76,#0a,#d2
	db #76,#0a,#2e,#76,#0a,#c7,#76,#0a
	db #02,#76,#0a,#02,#76,#0a,#54,#76
	db #0a,#0d,#76,#0a,#02,#76,#0a,#02
	db #76,#0a,#54,#76,#0a,#0d,#76,#0a
	db #dd,#76,#0a,#e5,#75,#0a,#18,#76
	db #0a,#2e,#76,#0a,#dd,#76,#0a,#e8
	db #76,#0a,#f7,#76,#05,#f5,#77,#05
	db #00,#78,#05,#06,#78,#05,#10,#78
	db #0a,#e5,#75,#05,#1a,#78,#05,#24
	db #78,#05,#2e,#78,#05,#36,#78,#0a
	db #06,#77,#05,#4e,#77,#05,#36,#78
	db #0a,#19,#77,#0a,#2c,#77,#0a,#3b
	db #77,#05,#46,#78,#05,#50,#78,#05
	db #5a,#78,#05,#64,#78,#05,#6e,#78
	db #05,#50,#78,#0a,#3b,#77,#0a,#e5
	db #75,#0a,#e5,#75,#0a,#e5,#75,#05
	db #06,#78,#05,#36,#78,#05,#e5,#75
	db #05,#92,#77,#05,#06,#77,#05,#24
	db #78,#05,#2e,#78,#05,#36,#78,#05
	db #06,#77,#05,#24,#78,#05,#e5,#75
	db #05,#92,#77,#0a,#06,#77,#0a,#4e
	db #77,#05,#70,#77,#05,#82,#78,#05
	db #4e,#77,#05,#36,#78,#0a,#5d,#77
	db #05,#8c,#78,#05,#96,#78,#0a,#70
	db #77,#0a,#83,#77,#0a,#e5,#75,#05
	db #e5,#75,#05,#92,#77,#0a,#92,#77
	db #0a,#83,#77,#0a,#ac,#76,#0a,#83
	db #77,#0a,#ac,#76,#0a,#83,#77,#0a
	db #92,#77,#0a,#92,#77,#0a,#92,#77
	db #0a,#83,#77,#0a,#92,#77,#0a,#92
	db #77,#0a,#92,#77,#0a,#83,#77,#0a
	db #ac,#76,#0a,#83,#77,#0a,#92,#77
	db #0a,#83,#77,#0a,#92,#77,#0a,#92
	db #77,#0a,#92,#77,#0a,#83,#77,#0a
	db #ac,#76,#0a,#83,#77,#0a,#ac,#76
	db #0a,#83,#77,#0a,#92,#77,#0a,#92
	db #77,#0a,#92,#77,#0a,#83,#77,#0a
	db #92,#77,#0a,#83,#77,#0a,#92,#77
	db #0a,#83,#77,#0a,#ac,#76,#0a,#83
	db #77,#0a,#ac,#76,#0a,#83,#77,#0a
	db #92,#77,#0a,#92,#77,#0a,#92,#77
	db #0a,#83,#77,#0a,#92,#77,#0a,#92
	db #77,#0a,#92,#77,#0a,#83,#77,#0a
	db #ac,#76,#0a,#83,#77,#0a,#92,#77
	db #0a,#83,#77,#0a,#92,#77,#0a,#92
	db #77,#0a,#92,#77,#0a,#83,#77,#0a
	db #ac,#76,#0a,#83,#77,#0a,#ac,#76
	db #0a,#83,#77,#0a,#92,#77,#0a,#92
	db #77,#0a,#92,#77,#0a,#83,#77,#0a
	db #92,#77,#0a,#83,#77,#0a,#02,#76
	db #0a,#0d,#76,#0a,#18,#76,#0a,#23
	db #76,#0a,#2e,#76,#14,#a2,#75,#0a
	db #b2,#75,#0a,#49,#76,#14,#b2,#75
	db #0a,#54,#76,#0a,#5f,#76,#0a,#54
	db #76,#0a,#6a,#76,#0a,#75,#76,#0a
	db #02,#76,#0a,#0d,#76,#0a,#18,#76
	db #0a,#23,#76,#0a,#2e,#76,#14,#a2
	db #75,#0a,#b2,#75,#0a,#49,#76,#14
	db #b2,#75,#0a,#b2,#75,#0a,#5f,#76
	db #0a,#54,#76,#0a,#6a,#76,#0a,#75
	db #76,#0a,#49,#76,#0a,#49,#76,#0a
	db #c7,#76,#0a,#b2,#75,#0a,#49,#76
	db #0a,#49,#76,#0a,#c7,#76,#0a,#b2
	db #75,#0a,#d2,#76,#0a,#d2,#76,#0a
	db #2e,#76,#0a,#c7,#76,#0a,#d2,#76
	db #0a,#d2,#76,#0a,#2e,#76,#0a,#c7
	db #76,#0a,#02,#76,#0a,#02,#76,#0a
	db #54,#76,#0a,#0d,#76,#0a,#02,#76
	db #0a,#02,#76,#0a,#54,#76,#0a,#0d
	db #76,#0a,#dd,#76,#0a,#dd,#76,#0a
	db #18,#76,#0a,#2e,#76,#0a,#dd,#76
	db #0a,#2e,#76,#0a,#d2,#76,#0a,#c7
	db #76,#0a,#bd,#75,#0a,#bd,#75,#0a
	db #e5,#75,#0a,#bd,#75,#14,#bd,#75
	db #0a,#e5,#75,#0a,#bd,#75,#14,#bd
	db #75,#0a,#e5,#75,#0a,#bd,#75,#0a
	db #bd,#75,#0a,#bd,#75,#0a,#e5,#75
	db #0a,#e5,#75,#0a,#bd,#75,#0a,#bd
	db #75,#0a,#e5,#75,#0a,#bd,#75,#0a
	db #bd,#75,#0a,#bd,#75,#0a,#e5,#75
	db #0a,#bd,#75,#14,#bd,#75,#0a,#e5
	db #75,#0a,#bd,#75,#0a,#bd,#75,#0a
	db #bd,#75,#0a,#e5,#75,#0a,#e5,#75
	db #0a,#bd,#75,#0a,#bd,#75,#0a,#e5
	db #75,#0a,#bd,#75,#14,#bd,#75,#0a
	db #e5,#75,#0a,#bd,#75,#14,#bd,#75
	db #0a,#e5,#75,#0a,#bd,#75,#0a,#bd
	db #75,#0a,#bd,#75,#0a,#e5,#75,#0a
	db #e5,#75,#0a,#bd,#75,#0a,#bd,#75
	db #0a,#e5,#75,#0a,#bd,#75,#0a,#bd
	db #75,#0a,#bd,#75,#0a,#e5,#75,#0a
	db #bd,#75,#0a,#e5,#75,#0a,#bd,#75
	db #0a,#bd,#75,#0a,#e5,#75,#0a,#bd
	db #75,#0a,#bd,#75,#0a,#e5,#75,#0a
	db #e5,#75,#6d,#01,#1c,#01,#4f,#09
	db #00,#08,#03,#35,#31,#2d,#04,#08
	db #ae,#75,#6d,#01,#de,#01,#4f,#0f
	db #00,#08,#08,#aa,#75,#5d,#01,#56
	db #00,#e5,#77,#01,#61,#3e,#04,#08
	db #c6,#75,#49,#50,#00,#25,#25,#25
	db #61,#9e,#21,#21,#21,#65,#50,#25
	db #25,#25,#61,#9e,#21,#21,#5d,#01
	db #56,#00,#08,#c1,#75,#69,#78,#01
	db #ed,#00,#c1,#0a,#9d,#c2,#08,#95
	db #82,#08,#ae,#75,#6d,#01,#1c,#01
	db #08,#a6,#75,#6d,#01,#de,#01,#08
	db #b6,#75,#6d,#01,#f6,#02,#4f,#18
	db #00,#08,#08,#aa,#75,#6d,#01,#7b
	db #01,#4f,#0c,#00,#08,#08,#aa,#75
	db #6d,#01,#7e,#02,#4f,#14,#00,#08
	db #08,#aa,#75,#6d,#01,#3f,#01,#4f
	db #0a,#00,#08,#08,#aa,#75,#6d,#01
	db #38,#02,#4f,#12,#00,#08,#08,#aa
	db #75,#49,#ed,#05,#25,#25,#25,#e1
	db #d9,#0b,#21,#21,#21,#e5,#ed,#05
	db #25,#6d,#01,#bc,#03,#4f,#1e,#00
	db #08,#08,#aa,#75,#6d,#01,#aa,#01
	db #4f,#0d,#00,#08,#08,#aa,#75,#6d
	db #01,#53,#03,#4f,#1b,#00,#08,#08
	db #aa,#75,#6d,#01,#24,#03,#4f,#19
	db #00,#08,#08,#aa,#75,#6d,#01,#92
	db #01,#08,#58,#76,#49,#5f,#00,#25
	db #25,#25,#61,#bd,#21,#21,#21,#65
	db #5f,#25,#49,#50,#00,#08,#cd,#75
	db #49,#6a,#00,#25,#25,#25,#61,#d4
	db #21,#21,#21,#65,#6a,#25,#49,#54
	db #00,#25,#25,#25,#61,#a8,#21,#21
	db #21,#65,#54,#25,#59,#78,#01,#e5
	db #00,#c1,#0a,#95,#c2,#08,#8d,#82
	db #08,#ae,#75,#55,#01,#56,#00,#e1
	db #77,#01,#5d,#3e,#08,#ae,#75,#6d
	db #01,#fa,#01,#4f,#10,#00,#08,#08
	db #aa,#75,#6d,#01,#f4,#03,#4f,#20
	db #00,#08,#08,#aa,#75,#6d,#01,#70
	db #04,#4f,#24,#00,#08,#08,#aa,#75
	db #5d,#01,#38,#02,#4f,#12,#00,#08
	db #03,#2d,#29,#25,#08,#ae,#75,#65
	db #01,#f4,#03,#4f,#20,#00,#08,#03
	db #31,#2d,#29,#08,#ae,#75,#49,#5f
	db #00,#65,#2f,#65,#5f,#25,#61,#bd
	db #61,#5e,#61,#bd,#21,#65,#5f,#65
	db #2f,#29,#5f,#00,#55,#2f,#55,#5f
	db #15,#51,#bd,#51,#5e,#51,#bd,#11
	db #55,#5f,#55,#2f,#31,#28,#00,#59
	db #14,#61,#51,#21,#59,#28,#59,#14
	db #08,#31,#77,#49,#6a,#00,#65,#35
	db #65,#6a,#25,#61,#d4,#61,#69,#61
	db #d4,#21,#65,#6a,#65,#35,#39,#28
	db #00,#5d,#14,#65,#51,#25,#5d,#28
	db #5d,#14,#08,#53,#77,#51,#77,#00
	db #69,#3c,#69,#77,#29,#65,#ee,#65
	db #76,#65,#ee,#25,#69,#77,#69,#3c
	db #49,#77,#00,#65,#3c,#65,#77,#25
	db #61,#ee,#61,#76,#61,#ee,#21,#65
	db #77,#65,#3c,#61,#78,#01,#e9,#00
	db #c1,#0a,#99,#c2,#08,#91,#82,#08
	db #ae,#75,#00,#08,#ae,#75,#01,#9e
	db #00,#41,#50,#08,#99,#77,#55,#01
	db #de,#01,#4f,#0f,#00,#08,#03,#29
	db #25,#31,#28,#00,#19,#19,#19,#55
	db #4f,#11,#20,#00,#09,#51,#40,#11
	db #49,#20,#21,#5f,#00,#11,#11,#11
	db #4d,#bd,#29,#bd,#00,#15,#15,#59
	db #5f,#19,#21,#2f,#00,#11,#59,#60
	db #19,#51,#2f,#29,#2f,#00,#15,#5d
	db #60,#1d,#55,#2f,#55,#01,#56,#00
	db #08,#bf,#76,#19,#1e,#00,#0d,#55
	db #3d,#15,#4d,#1e,#11,#1e,#00,#09
	db #51,#3d,#11,#49,#1e,#65,#01,#fa
	db #01,#4f,#10,#00,#08,#08,#ff,#76
	db #59,#fa,#01,#08,#ae,#75,#49,#28
	db #00,#65,#14,#6d,#51,#2d,#65,#28
	db #41,#14,#00,#69,#51,#29,#61,#28
	db #61,#14,#51,#5f,#00,#69,#2f,#69
	db #5f,#29,#65,#bd,#01,#5e,#00,#41
	db #bd,#01,#41,#5f,#41,#2f,#41,#28
	db #00,#61,#14,#08,#13,#78,#01,#14
	db #00,#41,#51,#01,#41,#28,#41,#14
	db #39,#28,#00,#08,#51,#77,#51,#2a
	db #00,#69,#15,#71,#55,#31,#69,#2a
	db #01,#15,#00,#41,#55,#01,#41,#2a
	db #41,#15,#51,#6a,#00,#69,#35,#69
	db #6a,#29,#65,#d4,#01,#69,#00,#41
	db #d4,#01,#41,#6a,#41,#35,#41,#2a
	db #00,#61,#15,#69,#55,#29,#61,#2a
	db #00,#08,#ae,#75,#49,#77,#00,#08
	db #73,#77,#01,#2f,#00,#41,#18,#41
	db #60,#01,#41,#2f,#41,#2f,#00,#61
	db #18,#69,#60,#29,#61,#2f,#01,#18
	db #00,#41,#60,#01,#41,#2f,#41,#18
	jp l78a6
	jp l78d8
;
.real_init_music
.l78a6
;
	inc hl
	ld a,(hl)
	inc hl
	ld de,#0004
.l78ac
	add hl,de
	sub #03
	jr z,l78b3
	jr nc,l78ac
.l78b3
	ld (l78e5),hl
	ld a,#b7
	ld (l7972),a
	ld (l799b),a
	ld (l79ac),a
	ld hl,#0001
	ld (l78dd),hl
	ret
.l78c8
	ld (l78dd),hl
	ld b,#0c
.l78cd
	djnz l78cd
	jr l78d1
.l78d1
	jr l790c
.l78d3
	jr l78d5
.l78d5
	nop
	jr l78ef
;
.play_music
.l78d8
;
	ld (l7a24),sp
.l78dd equ $ + 1
	ld hl,#0001
	dec hl
	ld a,l
	or h
	jr nz,l78c8
.l78e5 equ $ + 1
	ld sp,#0000
	pop hl
	ld a,l
	or h
	jr nz,l78d3
	pop hl
	ld sp,hl
	pop hl
.l78ef
	ld (l78dd),hl
	pop hl
	ld (l7917),hl
	pop hl
	ld (l7931),hl
	pop hl
	ld (l794b),hl
	ld (l78e5),sp
	ld a,#01
	ld (l7927),a
	ld (l7941),a
	jr l7911
.l790d equ $ + 1
.l790c
	ld a,#01
	dec a
	jr nz,l7976
.l7911
	ld a,#b7
	ld (l7972),a
.l7917 equ $ + 1
	ld sp,#0000
	dec sp
	pop af
	pop hl
	ld (l7917),sp
	ld (l7970),hl
.l7923
	ld (l790d),a
.l7927 equ $ + 1
	ld a,#01
	dec a
	jr nz,l797e
	ld a,#b7
	ld (l799b),a
.l7931 equ $ + 1
	ld sp,#0000
	dec sp
	pop af
	pop hl
	ld (l7931),sp
	ld (l7999),hl
.l793d
	ld (l7927),a
.l7941 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7986
	ld a,#b7
	ld (l79ac),a
.l794b equ $ + 1
	ld sp,#0000
	dec sp
	pop af
	pop hl
	ld (l794b),sp
	ld (l79aa),hl
.l7957
	ld (l7941),a
	ld hl,#0008
	ld de,#f4f6
	ld bc,#f690
	ld a,#c0
	out (c),a
	ex af,af'
	exx
	ld bc,#e0ff
	ld sp,l7de7
.l7970 equ $ + 1
	ld hl,#0000
.l7972
	or a
	jp l7a27
.l7976
	ld b,#05
.l7978
	djnz l7978
	jr l797c
.l797c
	jr l7923
.l797e
	ld b,#05
.l7980
	djnz l7980
	jr l7984
.l7984
	jr l793d
.l7986
	ld b,#05
.l7988
	djnz l7988
	jr l798c
.l798c
	jr l7957
.l798e
	ld a,#37
	ld (l7972),a
	ld (l7970),hl
	srl b
.l7999 equ $ + 1
	ld hl,#0000
.l799b
	or a
	jp l7a27
.l799f
	ld a,#37
	ld (l799b),a
	ld (l7999),hl
	rr b
.l79aa equ $ + 1
	ld hl,#0000
.l79ac
	or a
	jp l7a27
.l79b0
	ld a,#37
	ld (l79ac),a
	ld (l79aa),hl
	ld a,b
	exx
	inc h
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	dec h
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld hl,l7de3
	dec b
	outi
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	ld a,#0b
	ld b,d
	out (c),a
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc a
	ld b,d
	out (c),a
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	ld a,(hl)
.l7a04 equ $ + 1
	cp #ff
	jr nz,l7a0e
	ld b,#07
.l7a09
	djnz l7a09
	nop
	jr l7a23
.l7a0e
	ld (l7a04),a
	ld b,d
	ld l,#0d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
.l7a24 equ $ + 1
.l7a23
	ld sp,#0000
	ret
.l7a27
	ld a,(hl)
	inc hl
	jp c,l7b8d
	ld d,#08
.l7a2e
	dec d
	jr nz,l7a2e
	cp (hl)
	ld d,a
	and #03
	add a
	add a
	ld e,a
	ld a,d
	rra
	rra
	ld d,#00
	ld ix,l7a45
	add ix,de
	jp (ix)
.l7a45
	jp l7a54
	nop
	jp l7acc
	nop
	jp l7a84
	nop
	jp l7b21
.l7a54
	ld d,#20
.l7a56
	dec d
	jr nz,l7a56
	cp (hl)
	nop
	rra
	jr c,l7a65
	jr l7a60
.l7a60
	jr l7a62
.l7a62
	cp (hl)
	jr l7a6c
.l7a65
	ld de,l7de3
	ldi
	res 5,b
.l7a6c
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	inc h
	inc h
	exx
	set 2,b
	ret
.l7a84
	ld d,#19
.l7a86
	dec d
	jr nz,l7a86
	cp (hl)
	rra
	jr c,l7a92
	jr l7a8f
.l7a8f
	nop
	jr l7a97
.l7a92
	set 7,a
	ld (l7a04),a
.l7a97
	rra
	jr c,l7aa1
	jr l7a9c
.l7a9c
	jr l7a9e
.l7a9e
	cp (hl)
	jr l7aa8
.l7aa1
	ld de,l7de3
	ldi
	res 5,b
.l7aa8
	and #0f
	ld (l7de6),a
	ld de,l7de4
	ldi
	ldi
	set 2,b
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),c
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	inc h
	inc h
	exx
	ret
.l7acc
	ld d,#11
.l7ace
	dec d
	jr nz,l7ace
	nop
	rra
	jr c,l7adc
	jr l7ad7
.l7ad7
	jr l7ad9
.l7ad9
	cp (hl)
	jr l7ae3
.l7adc
	ld de,l7de3
	ldi
	res 5,b
.l7ae3
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	exx
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc h
	exx
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc h
	exx
	ret
.l7b21
	ld d,#0a
.l7b23
	dec d
	jr nz,l7b23
	cp (hl)
	rra
	jr c,l7b2f
	jr l7b2c
.l7b2c
	nop
	jr l7b34
.l7b2f
	set 7,a
	ld (l7a04),a
.l7b34
	rra
	jr c,l7b3e
	jr l7b39
.l7b39
	jr l7b3b
.l7b3b
	cp (hl)
	jr l7b45
.l7b3e
	ld de,l7de3
	ldi
	res 5,b
.l7b45
	and #0f
	ld (l7de6),a
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc h
	exx
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc h
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),c
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	exx
	ld de,l7de4
	ldi
	ldi
	ret
.l7b8d
	ld d,a
	and #0f
	add a
	add a
	ld e,a
	ld a,d
	rra
	rra
	ld d,#00
	ld ix,l7ba0
	add ix,de
	jp (ix)
.l7ba0
	jp l7c07
	nop
	jp l7c4f
	nop
	jp l7cd0
	nop
	jp l7d25
	nop
	jp l7c07
	nop
	jp l7c4f
	nop
	jp l7cd0
	nop
	jp l7d25
	nop
	jp l7bdf
	nop
	jp l7c4f
	nop
	jp l7cd0
	nop
	jp l7d25
	nop
	jp l7c07
	nop
	jp l7c4f
	nop
	jp l7cd0
	nop
	jp l7d25
.l7bdf
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld d,a
	and #03
	add a
	add a
	ld e,a
	ld a,d
	rra
	rra
	ld d,#00
	ld ix,l7bf8
	add ix,de
	jp (ix)
.l7bf8
	jp l7c0d
	nop
	jp l7c55
	nop
	jp l7cd6
	nop
	jp l7d2b
.l7c07
	ld d,#08
.l7c09
	dec d
	jr nz,l7c09
	cp (hl)
.l7c0d
	ld e,a
	ld d,#1e
.l7c10
	dec d
	jr nz,l7c10
	nop
	set 2,b
	rra
	jr c,l7c22
	ld d,#06
.l7c1b
	dec d
	jr nz,l7c1b
	cp (hl)
	nop
	jr l7c36
.l7c22
	and #0f
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	exx
.l7c36
	exx
	inc l
	inc h
	inc h
	exx
	bit 5,e
	jr nz,l7c47
	jr l7c41
.l7c41
	jr l7c43
.l7c43
	jr l7c45
.l7c45
	cp (hl)
	ret
.l7c47
	ld a,(hl)
	ld (l7de3),a
	inc hl
	res 5,b
	ret
.l7c4f
	ld d,#08
.l7c51
	dec d
	jr nz,l7c51
	cp (hl)
.l7c55
	ld d,#0d
.l7c57
	dec d
	jr nz,l7c57
	ld e,a
	and #0f
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	exx
	bit 4,e
	jr nz,l7c7c
	ld d,#07
.l7c76
	dec d
	jr nz,l7c76
	nop
	jr l7c90
.l7c7c
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	exx
.l7c90
	bit 5,e
	jr nz,l7c9e
	exx
	inc h
	inc h
	exx
	ld d,#0c
.l7c9a
	dec d
	jr nz,l7c9a
	ret
.l7c9e
	ld a,(hl)
	inc hl
	exx
	inc h
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc h
	exx
	rla
	jr c,l7cbe
	ld d,#03
.l7cb9
	dec d
	jr nz,l7cb9
	cp (hl)
	ret
.l7cbe
	res 5,b
	rla
	jr c,l7cca
	jr l7cc5
.l7cc5
	jr l7cc7
.l7cc7
	jr l7cc9
.l7cc9
	ret
.l7cca
	ld de,l7de3
	ldi
	ret
.l7cd0
	ld d,#08
.l7cd2
	dec d
	jr nz,l7cd2
	cp (hl)
.l7cd6
	ld d,#13
.l7cd8
	dec d
	jr nz,l7cd8
	cp (hl)
	nop
	rla
	ld e,a
	and #0e
	ld (l7de6),a
	set 2,b
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),c
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	inc h
	inc h
	exx
	ld a,e
	rla
	rla
	jr c,l7d06
	jr l7d02
.l7d02
	jr l7d04
.l7d04
	jr l7d0b
.l7d06
	ld de,l7de4
	ldi
.l7d0b
	rla
	jr c,l7d14
	jr l7d10
.l7d10
	jr l7d12
.l7d12
	jr l7d19
.l7d14
	ld de,l7de5
	ldi
.l7d19
	rla
	jp c,l7dbc
	ld d,#06
.l7d1f
	dec d
	jr nz,l7d1f
	cp (hl)
	nop
	ret
.l7d25
	ld d,#08
.l7d27
	dec d
	jr nz,l7d27
	cp (hl)
.l7d2b
	exx
	ld b,d
	out (c),l
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),c
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	inc l
	exx
	rra
	jr c,l7d47
	jr l7d43
.l7d43
	jr l7d45
.l7d45
	jr l7d4c
.l7d47
	ld de,l7de4
	ldi
.l7d4c
	rra
	jr c,l7d55
	jr l7d51
.l7d51
	jr l7d53
.l7d53
	jr l7d5a
.l7d55
	ld de,l7de5
	ldi
.l7d5a
	rra
	jr c,l7d66
	ld d,#07
.l7d5f
	dec d
	jr nz,l7d5f
	cp (hl)
	nop
	jr l7d7c
.l7d66
	ld e,a
	ld a,(hl)
	inc hl
	exx
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	exx
	ld a,e
.l7d7c
	rra
	jr c,l7d87
	ld d,#08
.l7d81
	dec d
	jr nz,l7d81
	nop
	jr l7d9f
.l7d87
	ld e,a
	ld a,(hl)
	inc hl
	exx
	inc h
	ld b,d
	out (c),h
	ld b,e
	db #ed,#71 ; out (c),0
	ld b,d
	out (c),a
	ld b,e
	out (c),c
	ex af,af'
	out (c),a
	ex af,af'
	dec h
	exx
	ld a,e
.l7d9f
	exx
	inc h
	inc h
	exx
	rra
	jr c,l7dac
	jr l7da8
.l7da8
	jr l7daa
.l7daa
	jr l7db1
.l7dac
	ld de,l7de6
	ldi
.l7db1
	rra
	jr c,l7dbc
	ld d,#06
.l7db6
	dec d
	jr nz,l7db6
	cp (hl)
	cp (hl)
	ret
.l7dbc
	ld a,(hl)
	inc hl
	rra
	jr c,l7dc6
	jr l7dc3
.l7dc3
	nop
	jr l7dcb
.l7dc6
	set 7,a
	ld (l7a04),a
.l7dcb
	rra
	jr c,l7dd6
	jr l7dd0
.l7dd0
	jr l7dd2
.l7dd2
	jr l7dd4
.l7dd4
	cp (hl)
	ret
.l7dd6
	res 5,b
	rra
	jr c,l7ddf
	jr l7ddd
.l7ddd
	cp (hl)
	ret
.l7ddf
	ld (l7de3),a
	ret
.l7de7 equ $ + 4
.l7de6 equ $ + 3
.l7de5 equ $ + 2
.l7de4 equ $ + 1
.l7de3
	dw #0000,#0000,l798e,l799f
	dw l79b0

;
.init_music		; #01e3 - added by Megachur
;
	ld hl,l70c0
	xor a
	jp real_init_music
;
.music_info
	db "Goldrunner Wannabe (2021)(Oneman)()",0
	db "",0

	read "music_end.asm"
