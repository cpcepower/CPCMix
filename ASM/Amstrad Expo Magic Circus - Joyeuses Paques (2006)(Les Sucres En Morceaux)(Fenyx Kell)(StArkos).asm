; Music of Amstrad Expo Magic Circus - Joyeuses Paques (2006)(Les Sucres En Morceaux)(Fenyx Kell)(StArkos)
; Ripped by Megachur the 24/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AMSEMCJP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000

	read "music_header.asm"

.l4000
	db #53,#4b,#31,#30,#00,#40,#01,#32
	db #00,#21,#40,#24,#40,#3c,#40,#42
	db #40,#1d,#40,#22,#40,#2a,#40,#3f
	db #40,#09,#c0,#00,#00,#c0,#00,#00
	db #03,#7e,#7f,#02,#c1,#41,#69,#42
	db #74,#42,#e2,#42,#82,#43,#ec,#43
	db #e2,#42,#a7,#44,#ec,#43,#e2,#42
	db #a7,#44,#ec,#43,#00,#56,#45,#04
	db #56,#45,#56,#40,#60,#40,#7e,#40
	db #b0,#40,#e2,#40,#14,#41,#46,#41
	db #7a,#41,#97,#41,#b8,#41,#5d,#40
	db #60,#40,#ff,#37,#00,#00,#00,#00
	db #5d,#40,#7e,#40,#00,#b7,#00,#0f
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
	db #0b,#0a,#0a,#09,#09,#08,#07,#06
	db #05,#04,#03,#02,#01,#00,#5d,#40
	db #b0,#40,#00,#b7,#00,#0f,#2f,#04
	db #0e,#2e,#04,#0d,#2d,#04,#0c,#2c
	db #04,#0b,#2b,#04,#0a,#2a,#04,#09
	db #29,#04,#08,#28,#04,#07,#27,#04
	db #06,#26,#04,#05,#25,#04,#04,#24
	db #04,#03,#23,#04,#02,#22,#04,#01
	db #5d,#40,#e2,#40,#00,#b7,#00,#0f
	db #2f,#02,#0e,#2e,#02,#0d,#2d,#02
	db #0c,#2c,#02,#0b,#2b,#02,#0a,#2a
	db #02,#09,#29,#02,#08,#28,#02,#07
	db #27,#02,#06,#26,#02,#05,#25,#02
	db #04,#24,#02,#03,#23,#02,#02,#22
	db #02,#01,#5d,#40,#14,#41,#00,#b7
	db #00,#0f,#2f,#03,#0e,#2e,#03,#0d
	db #2d,#03,#0c,#2c,#03,#0b,#2b,#03
	db #0a,#2a,#03,#09,#29,#03,#08,#28
	db #03,#07,#27,#03,#06,#26,#03,#05
	db #25,#03,#04,#24,#03,#03,#23,#03
	db #02,#22,#03,#01,#5d,#40,#46,#41
	db #00,#b7,#00,#0f,#2f,#05,#0e,#2e
	db #05,#0d,#2d,#05,#0c,#2c,#05,#0b
	db #2b,#05,#0a,#2a,#05,#09,#29,#05
	db #08,#28,#05,#07,#27,#05,#06,#26
	db #05,#05,#25,#05,#04,#24,#05,#03
	db #23,#05,#02,#22,#05,#01,#5d,#40
	db #7a,#41,#00,#b7,#00,#0f,#4f,#ff
	db #ff,#0e,#4e,#01,#00,#0d,#4d,#ff
	db #ff,#0c,#4c,#01,#00,#0b,#4b,#ff
	db #ff,#0a,#4a,#01,#00,#09,#49,#ff
	db #ff,#08,#47,#01,#00,#06,#45,#ff
	db #ff,#04,#43,#01,#00,#02,#41,#ff
	db #ff,#00,#5d,#40,#97,#41,#00,#b7
	db #00,#3f,#26,#0c,#2f,#0a,#2d,#09
	db #2d,#08,#2b,#05,#2b,#04,#29,#03
	db #27,#02,#27,#01,#26,#01,#06,#5d
	db #40,#b8,#41,#00,#b7,#00,#3f,#2b
	db #0c,#3e,#2a,#0d,#3d,#29,#10,#3c
	db #28,#09,#1b,#27,#39,#26,#09,#37
	db #25,#0e,#15,#24,#13,#23,#11,#22
	db #bf,#41,#c1,#41,#00,#37,#00,#80
	db #0d,#d0,#54,#9d,#01,#ca,#54,#9d
	db #01,#54,#1d,#5e,#9b,#02,#54,#9d
	db #01,#5e,#9b,#03,#54,#9b,#01,#54
	db #19,#5e,#9b,#03,#54,#99,#01,#54
	db #19,#5e,#97,#03,#54,#99,#01,#5c
	db #97,#04,#54,#97,#01,#54,#15,#5c
	db #97,#04,#54,#95,#01,#54,#15,#5c
	db #93,#04,#54,#95,#01,#58,#93,#05
	db #50,#93,#01,#50,#11,#58,#93,#05
	db #50,#91,#01,#50,#11,#58,#8f,#05
	db #50,#91,#01,#58,#8f,#04,#50,#8f
	db #01,#50,#0d,#58,#8f,#04,#50,#8d
	db #01,#50,#0d,#58,#8b,#04,#50,#8d
	db #01,#58,#8b,#04,#4e,#8b,#01,#4e
	db #09,#58,#8b,#04,#4e,#89,#01,#4e
	db #09,#58,#87,#04,#4e,#89,#01,#58
	db #87,#04,#4e,#87,#01,#50,#05,#58
	db #87,#04,#50,#85,#01,#50,#05,#58
	db #87,#04,#50,#85,#01,#58,#80,#04
	db #50,#80,#01,#55,#5c,#80,#04,#54
	db #80,#01,#55,#5c,#80,#04,#54,#80
	db #01,#c0,#3b,#5c,#8b,#06,#5c,#09
	db #5e,#07,#62,#05,#fa,#5c,#9d,#04
	db #ca,#58,#9d,#05,#50,#9d,#01,#50
	db #1b,#58,#9d,#05,#50,#9b,#01,#50
	db #1b,#58,#99,#05,#50,#9b,#01,#58
	db #99,#04,#50,#99,#01,#50,#17,#58
	db #99,#04,#50,#97,#01,#50,#17,#58
	db #95,#04,#50,#97,#01,#58,#95,#04
	db #4e,#95,#01,#4e,#13,#58,#95,#04
	db #4e,#93,#01,#4e,#13,#58,#91,#04
	db #4e,#93,#01,#58,#91,#04,#4e,#91
	db #01,#50,#0f,#58,#91,#04,#50,#8f
	db #01,#50,#0f,#58,#91,#04,#50,#8f
	db #01,#58,#80,#04,#50,#80,#01,#55
	db #5c,#80,#04,#54,#80,#01,#55,#5c
	db #80,#04,#5e,#85,#02,#54,#80,#01
	db #55,#5e,#80,#02,#54,#80,#01,#55
	db #5e,#80,#02,#54,#80,#01,#5e,#80
	db #03,#54,#80,#01,#55,#5e,#80,#03
	db #54,#80,#01,#55,#5e,#80,#03,#54
	db #80,#01,#5c,#80,#04,#54,#80,#01
	db #55,#5c,#80,#04,#54,#80,#01,#55
	db #5c,#80,#04,#54,#80,#01,#58,#80
	db #05,#50,#80,#01,#51,#58,#80,#05
	db #50,#80,#01,#51,#58,#80,#05,#50
	db #80,#01,#58,#80,#04,#50,#80,#01
	db #51,#58,#80,#04,#50,#80,#01,#51
	db #58,#80,#04,#50,#80,#01,#58,#80
	db #04,#4e,#80,#01,#4f,#58,#80,#04
	db #4e,#80,#01,#4f,#58,#80,#04,#4e
	db #80,#01,#58,#80,#04,#4e,#80,#01
	db #51,#58,#80,#04,#50,#80,#01,#51
	db #58,#80,#04,#50,#80,#01,#58,#80
	db #04,#50,#80,#01,#55,#5c,#80,#04
	db #54,#80,#01,#55,#5c,#80,#04,#54
	db #80,#01,#66,#83,#06,#ce,#5e,#05
	db #66,#03,#ce,#5e,#05,#66,#03,#ce
	db #62,#03,#ce,#54,#05,#62,#03,#ce
	db #54,#05,#62,#03,#ce,#62,#03,#ce
	db #5c,#05,#62,#03,#ce,#5c,#05,#62
	db #03,#ce,#62,#03,#ce,#50,#05,#62
	db #03,#ce,#50,#05,#62,#03,#ce,#5e
	db #03,#ce,#50,#05,#5e,#03,#ce,#50
	db #05,#5e,#03,#ce,#5e,#03,#ce,#58
	db #05,#5e,#03,#ce,#58,#05,#5e,#03
	db #ce,#5e,#03,#ce,#50,#05,#58,#03
	db #ce,#50,#05,#58,#03,#ce,#5e,#03
	db #ce,#5c,#05,#62,#03,#ce,#5c,#07
	db #68,#05,#68,#03,#2e,#85,#07,#5e
	db #8f,#02,#2e,#83,#08,#54,#8f,#01
	db #2e,#87,#07,#2e,#05,#2e,#83,#08
	db #5e,#8f,#02,#2e,#85,#07,#5e,#8f
	db #03,#2e,#83,#08,#2e,#85,#07,#5e
	db #8f,#03,#2e,#85,#07,#2e,#83,#08
	db #5e,#8f,#03,#2e,#85,#07,#5c,#8f
	db #04,#2e,#83,#08,#54,#8f,#01,#2e
	db #87,#07,#2e,#05,#2e,#83,#08,#5c
	db #8f,#04,#2e,#85,#07,#58,#8f,#05
	db #2e,#83,#08,#2e,#85,#07,#58,#8f
	db #05,#2e,#85,#07,#2e,#83,#08,#58
	db #8f,#05,#2e,#85,#07,#58,#8f,#04
	db #2e,#83,#08,#50,#8f,#01,#2e,#87
	db #07,#2e,#05,#2e,#83,#08,#58,#8f
	db #04,#2e,#85,#07,#58,#8f,#04,#2e
	db #83,#08,#2e,#85,#07,#58,#8f,#04
	db #2e,#85,#07,#2e,#83,#08,#58,#8f
	db #04,#2e,#85,#07,#58,#8f,#04,#2e
	db #83,#08,#50,#8f,#01,#2e,#87,#07
	db #2e,#05,#2e,#83,#08,#58,#8f,#04
	db #2e,#85,#07,#58,#8f,#04,#2e,#83
	db #08,#2e,#85,#07,#5c,#8f,#04,#2e
	db #87,#07,#2e,#85,#08,#2e,#03,#66
	db #83,#06,#46,#80,#09,#5e,#85,#06
	db #66,#03,#5e,#80,#09,#5e,#85,#06
	db #66,#03,#46,#80,#09,#62,#83,#06
	db #54,#80,#09,#54,#85,#06,#62,#03
	db #3c,#80,#09,#54,#85,#06,#62,#03
	db #54,#80,#09,#62,#83,#06,#3c,#80
	db #09,#5c,#85,#06,#62,#03,#54,#80
	db #09,#5c,#85,#06,#62,#03,#3c,#80
	db #09,#62,#83,#06,#50,#80,#09,#50
	db #85,#06,#62,#03,#38,#80,#09,#50
	db #85,#06,#62,#03,#50,#80,#09,#5e
	db #83,#06,#38,#80,#09,#50,#85,#06
	db #5e,#03,#50,#80,#09,#50,#85,#06
	db #5e,#03,#38,#80,#09,#5e,#83,#06
	db #36,#80,#09,#58,#85,#06,#5e,#03
	db #4e,#80,#09,#58,#85,#06,#5e,#03
	db #36,#80,#09,#5e,#83,#06,#4e,#80
	db #09,#50,#85,#06,#58,#03,#50,#80
	db #09,#50,#85,#06,#58,#03,#38,#80
	db #09,#5e,#83,#06,#50,#80,#09,#5c
	db #85,#06,#62,#03,#3c,#80,#09,#5c
	db #87,#06,#68,#05,#68,#03,#ff

	ds #5000-$,0

	jp l5870
	jp l500d
	jp l5854
.l500c equ $ + 3
.l500b equ $ + 2
	db #00,#50,#00,#00
;
.play_music
.l500d
;
	xor a
	ld (l500b),a
	ld (l583b),a
.l5015 equ $ + 1
	ld a,#00
.l5017 equ $ + 1
	cp #00
	jr z,l5021
	inc a
	ld (l5015),a
	jp l52b0
.l5021
	xor a
	ld (l5015),a
.l5025
	or a
	jp nc,l5107
	ld (l512f),a
	ld (l519a),a
	ld (l5205),a
	ld a,#b7
	ld (l5025),a
.l5038 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l506e
.l503e equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l506b
	ld b,a
	and #1f
	bit 4,a
	jr z,l504f
	or #e0
.l504f
	ld (l513c),a
	rl b
	rl b
	jr nc,l505d
	ld a,(hl)
	ld (l51a7),a
	inc hl
.l505d
	rl b
	jr nc,l5066
	ld a,(hl)
	ld (l5212),a
	inc hl
.l5066
	ld (l503e),hl
	jr l5071
.l506b
	ld (l503e),hl
.l506e
	ld (l5038),a
.l5072 equ $ + 1
.l5071
	ld a,#00
	sub #01
	jr c,l507e
	ld (l5072),a
.l507b equ $ + 1
	ld a,#00
	jr l5099
.l507f equ $ + 1
.l507e
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l508c
	ld (l507f),hl
	jr l5099
.l508c
	ld (l507b),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l507f),hl
	ld (l5072),a
	ld a,b
.l5099
	ld (l5270),a
.l509d equ $ + 1
	ld hl,#0000
	ld de,l5135
	ldi
	ldi
	ld de,l51a0
	ldi
	ldi
	ld de,l520b
	ldi
	ldi
	ld (l509d),hl
.l50b8 equ $ + 1
	ld a,#00
	or a
	jr nz,l50ca
.l50bd equ $ + 1
	ld a,#00
	sub #01
	jr c,l50d8
	ld (l50bd),a
.l50c6 equ $ + 1
	ld hl,#0000
	jr l5110
.l50cb equ $ + 1
.l50ca
	ld a,#00
	sub #01
	jr c,l50d8
	ld (l50cb),a
	ld hl,(l50d9)
	jr l50fd
.l50d9 equ $ + 1
.l50d8
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l50f5
	ld (l50bd),a
	xor a
	ld (l50b8),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l50d9),hl
	ex de,hl
	ld (l50c6),hl
	jr l5110
.l50f5
	ld (l50cb),a
	ld a,#01
	ld (l50b8),a
.l50fd
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l50d9),hl
	ex de,hl
	jr l5110
.l5108 equ $ + 1
.l5107
	ld a,#00
	sub #01
	jr nc,l512b
.l510e equ $ + 1
	ld hl,#0000
.l5110
	ld a,(hl)
	inc hl
	srl a
	jr c,l5128
	srl a
	jr c,l511f
	ld (l5017),a
	jr l5127
.l511f
	ld (l500b),a
.l5123 equ $ + 1
	ld a,#01
	ld (l500c),a
.l5127
	xor a
.l5128
	ld (l510e),hl
.l512b
	ld (l5108),a
.l512f equ $ + 1
	ld a,#00
	sub #01
	jr nc,l5196
.l5135 equ $ + 1
	ld hl,#0000
.l5138 equ $ + 1
	ld bc,#0100
.l513c equ $ + 2
.l513b equ $ + 1
	ld de,#0000
.l513f equ $ + 2
	ld lx,#00
	call l53ad
	ld a,lx
	ld (l513f),a
	ld (l52ba),hl
	exx
	ld (l5135),hl
	ld a,c
	ld (l5138),a
	ld (l52b4),a
	xor a
	or hy
	jr nz,l5194
	ld (l52d7),a
	ld d,a
	ld a,e
	ld (l513b),a
	ld l,d
	ld h,l
	ld (l52b7),hl
.l5169 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l52e8
	ldi
	ldi
	ld de,l52e0
	ldi
	ldi
	ld de,l52d9
	ldi
	ld de,l52ea
	ldi
	ld a,(hl)
	inc hl
	ld (l52c9),hl
	ld hl,l583b
	or (hl)
	ld (hl),a
.l5194
	ld a,ly
.l5196
	ld (l512f),a
.l519a equ $ + 1
	ld a,#00
	sub #01
	jr nc,l5201
.l51a0 equ $ + 1
	ld hl,#0000
.l51a3 equ $ + 1
	ld bc,#0200
.l51a7 equ $ + 2
.l51a6 equ $ + 1
	ld de,#0000
.l51aa equ $ + 2
	ld lx,#00
	call l53ad
	ld a,lx
	ld (l51aa),a
	ld (l530b),hl
	exx
	ld (l51a0),hl
	ld a,c
	ld (l51a3),a
	ld (l5305),a
	xor a
	or hy
	jr nz,l51ff
	ld (l5328),a
	ld d,a
	ld a,e
	ld (l51a6),a
	ld l,d
	ld h,l
	ld (l5308),hl
.l51d4 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l5339
	ldi
	ldi
	ld de,l5331
	ldi
	ldi
	ld de,l532a
	ldi
	ld de,l533b
	ldi
	ld a,(hl)
	inc hl
	ld (l531a),hl
	ld hl,l583b
	or (hl)
	ld (hl),a
.l51ff
	ld a,ly
.l5201
	ld (l519a),a
.l5205 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l526c
.l520b equ $ + 1
	ld hl,#0000
.l520e equ $ + 1
	ld bc,#0300
.l5212 equ $ + 2
.l5211 equ $ + 1
	ld de,#0000
.l5215 equ $ + 2
	ld lx,#00
	call l53ad
	ld a,lx
	ld (l5215),a
	ld (l535c),hl
	exx
	ld (l520b),hl
	ld a,c
	ld (l520e),a
	ld (l5356),a
	xor a
	or hy
	jr nz,l526a
	ld (l5379),a
	ld d,a
	ld a,e
	ld (l5211),a
	ld l,d
	ld h,l
	ld (l5359),hl
.l523f equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l538a
	ldi
	ldi
	ld de,l5382
	ldi
	ldi
	ld de,l537b
	ldi
	ld de,l538c
	ldi
	ld a,(hl)
	inc hl
	ld (l536b),hl
	ld hl,l583b
	or (hl)
	ld (hl),a
.l526a
	ld a,ly
.l526c
	ld (l5205),a
.l5270 equ $ + 1
	ld a,#00
	sub #01
	jr c,l527a
	ld (l5270),a
	jr l52b0
.l527a
	ld a,#37
	ld (l5025),a
	ld hl,(l509d)
.l5283 equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l52b0
	ld (l5038),a
	ld (l5072),a
	ld (l5108),a
.l5294 equ $ + 1
	ld hl,#0000
	ld (l503e),hl
.l529a equ $ + 1
	ld hl,#0000
	ld (l507f),hl
.l52a0 equ $ + 1
	ld hl,#0000
	ld (l509d),hl
.l52a6 equ $ + 1
	ld hl,#0000
	ld (l50d9),hl
.l52ac equ $ + 1
	ld a,#00
	ld (l50b8),a
.l52b0
	ld hl,l583b
.l52b4 equ $ + 1
	ld d,#00
	exx
.l52b7 equ $ + 1
	ld hl,#0000
.l52ba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l52b7),hl
	ld (l54e8),hl
	ld a,(l513f)
	ld lx,a
.l52c9 equ $ + 1
	ld hl,#0000
	ld iy,l56d6
	ld a,(l52d7)
	call l5442
	ex de,hl
.l52d7 equ $ + 1
	ld a,#00
.l52d9 equ $ + 1
	cp #00
	jr z,l52df
	inc a
	jr l52fc
.l52e0 equ $ + 1
.l52df
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l52f8
.l52e8 equ $ + 1
	ld de,#0000
.l52ea
	or a
	jr c,l52f8
.l52ee equ $ + 1
	ld hl,#0000
	ld (l52e0),hl
	dec a
	ld (l52d9),a
	inc a
.l52f8
	ld (l52c9),de
.l52fc
	ld (l52d7),a
	ld a,hx
	ld (l53a9),a
.l5305 equ $ + 1
	ld d,#00
	exx
.l5308 equ $ + 1
	ld hl,#0000
.l530b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l5308),hl
	ld (l54e8),hl
	ld a,(l51aa)
	ld lx,a
.l531a equ $ + 1
	ld hl,#0000
	ld iy,l5727
	ld a,(l5328)
	call l5442
	ex de,hl
.l5328 equ $ + 1
	ld a,#00
.l532a equ $ + 1
	cp #00
	jr z,l5330
	inc a
	jr l534d
.l5331 equ $ + 1
.l5330
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l5349
.l5339 equ $ + 1
	ld de,#0000
.l533b
	or a
	jr c,l5349
.l533f equ $ + 1
	ld hl,#0000
	ld (l5331),hl
	dec a
	ld (l532a),a
	inc a
.l5349
	ld (l531a),de
.l534d
	ld (l5328),a
	ld a,hx
	ld (l53a6),a
.l5356 equ $ + 1
	ld d,#00
	exx
.l5359 equ $ + 1
	ld hl,#0000
.l535c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l5359),hl
	ld (l54e8),hl
	ld a,(l5215)
	ld lx,a
.l536b equ $ + 1
	ld hl,#0000
	ld iy,l5778
	ld a,(l5379)
	call l5442
	ex de,hl
.l5379 equ $ + 1
	ld a,#00
.l537b equ $ + 1
	cp #00
	jr z,l5381
	inc a
	jr l539e
.l5382 equ $ + 1
.l5381
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l539a
.l538a equ $ + 1
	ld de,#0000
.l538c
	or a
	jr c,l539a
.l5390 equ $ + 1
	ld hl,#0000
	ld (l5382),hl
	dec a
	ld (l537b),a
	inc a
.l539a
	ld (l536b),de
.l539e
	ld (l5379),a
	ld a,hx
	sla a
.l53a6 equ $ + 1
	or #00
	rla
.l53a9 equ $ + 1
	or #00
	jp l56cb
.l53ad
	ld a,(hl)
	inc hl
	srl a
	jr c,l53e6
	cp #60
	jr nc,l53ee
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l53c6
	and #0f
	ld c,a
.l53c6
	rl b
	jr nc,l53cc
	ld e,(hl)
	inc hl
.l53cc
	rl b
	jr nc,l53de
.l53d0
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l53da
	dec h
.l53da
	ld ly,#00
	ret
.l53de
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l53e6
	ld hy,#00
	add d
	ld lx,a
	jr l53de
.l53ee
	ld hy,#01
	sub #60
	jr z,l540f
	dec a
	jr z,l5426
	dec a
	jr z,l5418
	dec a
	jr z,l53d0
	dec a
	jr z,l5422
	dec a
	jr z,l5437
	dec a
	jr z,l542e
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l540f
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l5418
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l5422
	ld c,(hl)
	inc hl
	jr l53d0
.l5426
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l542e
	ld a,(hl)
	inc hl
	ld (l500b),a
	ld a,b
	ld (l500c),a
.l5437
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l5442
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l54f8
	bit 4,e
	jr z,l54aa
	ld a,(hl)
	bit 6,a
	jr z,l5477
	ld d,#08
	inc hl
	and #1f
	jr z,l545e
	ld (l57c9),a
	res 3,d
.l545e
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l5467
	xor a
.l5467
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l5477
	ld (l57c9),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l5493
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l548c
	xor a
.l548c
	ld (iy+#36),a
	ld hx,d
	jr l54bd
.l5493
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l549c
	xor a
.l549c
	ld (iy+#36),a
.l549f
	ld hx,d
	ret
.l54a2
	ld (iy+#36),#00
	ld d,#09
	jr l549f
.l54aa
	ld d,#08
	ld a,e
	and #0f
	jr z,l54a2
	exx
	sub d
	exx
	jr nc,l54b7
	xor a
.l54b7
	ld (iy+#36),a
	ld hx,#08
.l54bd
	bit 5,e
	jr z,l54c5
	ld a,(hl)
	inc hl
	jr l54c6
.l54c5
	xor a
.l54c6
	bit 6,e
	jr z,l54d0
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l54d3
.l54d0
	ld de,#0000
.l54d3
	add lx
	cp #60
	jr c,l54db
	ld a,#60
.l54db
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l560b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l54e8 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l54f8
	or a
	jr nz,l5502
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l5502
	ld a,e
	or #08
	and #09
	ld d,a
	ld (iy+#36),#10
	ld b,(hl)
	inc hl
	ld a,b
	and #03
	add a
	add #08
	ld (l5834),a
	bit 3,e
	jr z,l5524
	ld a,(hl)
	inc hl
	ld (l57c9),a
	res 3,d
	jr l5524
.l5524
	ld hx,d
	xor a
	bit 7,b
	jr z,l5536
	bit 6,b
	jr z,l5531
	ld a,(hl)
	inc hl
.l5531
	ld (l55e5),a
	ld a,#01
.l5536
	ld (l557e),a
	ld a,b
	rra
	and #0e
	ld (l558f),a
	bit 4,e
	jp nz,l55f0
	bit 1,e
	jr z,l554d
	ld a,(hl)
	inc hl
	jr l554e
.l554d
	xor a
.l554e
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l555b
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l555e
.l555b
	ld de,#0000
.l555e
	add lx
	cp #60
	jr c,l5566
	ld a,#60
.l5566
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l560b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l54e8)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l557e equ $ + 1
	ld a,#00
	or a
	jr nz,l558e
	ex af,af'
	bit 5,a
	jr nz,l55f9
.l5587
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l558f equ $ + 1
.l558e
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l5599),a
	ld a,c
.l5599 equ $ + 1
	jr l559a
.l559a
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	ld c,a
	jr nc,l55b3
	inc bc
.l55b3
	ld a,c
	ld (l57fe),a
	ld a,b
	ld (l5819),a
	ld a,(l557e)
	or a
	jr z,l55ee
	ld a,(l558f)
	ld e,a
	srl a
	add e
	ld (l55cd),a
	ld a,b
.l55cd equ $ + 1
	jr l55ce
.l55ce
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	ld b,a
.l55e5 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l55ee
	pop hl
	ret
.l55f0
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l5587
.l55f9
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l57fe),a
	inc hl
	ld a,(hl)
	ld (l5819),a
	inc hl
	ret
.l560b
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
.l56cb
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l56d6 equ $ + 1
	ld a,#00
.l56d8 equ $ + 1
	cp #00
	jr z,l56f0
	ld d,#00
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l56d8),a
	exx
.l56f1 equ $ + 1
.l56f0
	ld a,#00
.l56f3 equ $ + 1
	cp #00
	jr z,l570b
	ld d,#01
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l56f3),a
	exx
.l570c equ $ + 1
.l570b
	ld a,#00
.l570e equ $ + 1
	cp #00
	jr z,l5726
	ld d,#08
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l570e),a
	exx
.l5727 equ $ + 1
.l5726
	ld a,#00
.l5729 equ $ + 1
	cp #00
	jr z,l5741
	ld d,#02
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l5729),a
	exx
.l5742 equ $ + 1
.l5741
	ld a,#00
.l5744 equ $ + 1
	cp #00
	jr z,l575c
	ld d,#03
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l5744),a
	exx
.l575d equ $ + 1
.l575c
	ld a,#00
.l575f equ $ + 1
	cp #00
	jr z,l5777
	ld d,#09
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l575f),a
	exx
.l5778 equ $ + 1
.l5777
	ld a,#00
.l577a equ $ + 1
	cp #00
	jr z,l5792
	ld d,#04
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l577a),a
	exx
.l5793 equ $ + 1
.l5792
	ld a,#00
.l5795 equ $ + 1
	cp #00
	jr z,l57ad
	ld d,#05
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l5795),a
	exx
.l57ae equ $ + 1
.l57ad
	ld a,#00
.l57b0 equ $ + 1
	cp #00
	jr z,l57c8
	ld d,#0a
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l57b0),a
	exx
.l57c9 equ $ + 1
.l57c8
	ld a,#00
.l57cb equ $ + 1
	cp #00
	jr z,l57e3
	ld d,#06
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l57cb),a
	exx
.l57e3
	ld a,h
.l57e5 equ $ + 1
	cp #c0
	jr z,l57fd
	ld d,#07
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l57e5),a
	exx
.l57fe equ $ + 1
.l57fd
	ld a,#00
.l5800 equ $ + 1
	cp #00
	jr z,l5818
	ld d,#0b
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l5800),a
	exx
.l5819 equ $ + 1
.l5818
	ld a,#00
.l581b equ $ + 1
	cp #00
	jr z,l5833
	ld d,#0c
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l581b),a
	exx
.l5834 equ $ + 1
.l5833
	ld a,#00
.l5836 equ $ + 1
	cp #ff
	jr nz,l583f
	ld h,a
.l583b equ $ + 1
	ld a,#00
	or a
	ret z
	ld a,h
.l583f
	ld d,#0d
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l5836),a
	ret
;
.stop_music
.l5854
;
	xor a
	ld (l570c),a
	ld (l575d),a
	ld (l57ae),a
	dec a
	ld (l570e),a
	ld (l575f),a
	ld (l57b0),a
	ld (l57e5),a
	ld a,#3f
	jp l56cb
;
.real_init_music
.l5870
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l5123),a
	ld de,#0003
	add hl,de
	ld de,l507f
	ldi
	ldi
	ld de,l509d
	ldi
	ldi
	ld de,l50d9
	ldi
	ldi
	ld de,l5169
	ldi
	ldi
	ld de,l5294
	ldi
	ldi
	ld de,l529a
	ldi
	ldi
	ld de,l52a0
	ldi
	ldi
	ld de,l52a6
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l5017),a
	ld (l5015),a
	ld (l503e),hl
	ld hl,(l50d9)
	ld (l5283),hl
	ld a,(hl)
	and #01
	ld (l50b8),a
	ld hl,(l52a6)
	ld a,(hl)
	and #01
	ld (l52ac),a
	ld hl,(l5169)
	ld (l51d4),hl
	ld (l523f),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l52c9),hl
	ld (l531a),hl
	ld (l536b),hl
	ld (l52e8),hl
	ld (l5339),hl
	ld (l538a),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l52ee),de
	ld (l533f),de
	ld (l5390),de
	ld (l52e0),de
	ld (l5331),de
	ld (l5382),de
	ld a,#37
	ld (l5025),a
	ld hl,l592c
.l591c
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l5923
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l5923
	jr l591c
.l592c
	jr l592e
.l592e
	dw l56d6,l56f1,l5727,l5742
	dw l5778,l5793,l57c9,l570c
	dw l575d,l57ae,l57fe,l5819
	dw l5834,l5038,l5072,l50bd
	dw l50cb,l5108,l52d7,l5328
	dw l5379,l5138,l51a3,l520e
	dw #ff11,l56d8,l56f3,l5729
	dw l5744,l577a,l5795,l57cb
	dw l57e5,l570e,l575f,l57b0
	dw l5800,l581b,l5836,l52d9
	dw l532a,l537b,#b703,l52ea
	dw l533b,l538c
	dw #0000
;
; #2fdf
; ld de,#4000
; call #5000
;
.init_music
;
	ld de,l4000
	jp real_init_music
;
.music_info
	db "Amstrad Expo Magic Circus - Joyeuses Paques (2006)(Les Sucres En Morceaux)(Fenyx Kell)",0
	db "StArkos",0

	read "music_end.asm"
