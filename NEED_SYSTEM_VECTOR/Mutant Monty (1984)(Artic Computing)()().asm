; Music of Mutant Monty (1984)(Artic Computing)()()
; Ripped by Megachur the 30/03/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MUTANTMO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 30
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9ad8
NEED_SYSTEM_VECTOR 		equ 1	; 1 = Need System Vectors

	read "music_header.asm"

.l9ad8
	db #77,#00,#de,#01,#0d,#00,#71,#00
	db #e1,#00,#0d,#00,#8e,#00,#1c,#01
	db #1a,#00,#7b,#01,#bc,#03,#1a,#00
	db #1c,#01,#70,#04,#1a,#00,#3c,#00
	db #de,#01,#0d,#00,#38,#00,#e1,#00
	db #0d,#00,#47,#00,#1c,#01,#1a,#00
	db #7b,#01,#bc,#03,#1a,#00,#1c,#01
	db #70,#04,#1a,#00,#77,#00,#de,#01
	db #0d,#00,#71,#00,#e1,#00,#0d,#00
	db #8e,#00,#1c,#01,#1a,#00,#47,#00
	db #38,#02,#1a,#00,#4b,#00,#2d,#01
	db #1a,#00,#54,#00,#52,#01,#1a,#00
	db #5f,#00,#7b,#01,#1a,#00,#f6,#02
	db #bc,#03,#1a,#00,#f6,#02,#f6,#02
	db #1a,#00,#54,#00,#52,#01,#0d,#00
	db #4b,#00,#2d,#01,#0d,#00,#5f,#00
	db #7b,#01,#1a,#00,#f6,#02,#ed,#05
	db #1a,#00,#7b,#01,#f6,#02,#1a,#00
	db #54,#00,#52,#01,#0d,#00,#4b,#00
	db #2d,#01,#0d,#00,#5f,#00,#7b,#01
	db #1a,#00,#f6,#02,#ed,#05,#1a,#00
	db #7b,#01,#f6,#02,#1a,#00,#4b,#00
	db #2d,#01,#0d,#00,#47,#00,#1c,#01
	db #0d,#00,#5f,#00,#de,#01,#1a,#00
	db #be,#00,#7b,#01,#1a,#00,#54,#00
	db #52,#01,#1a,#00,#4b,#00,#2d,#01
	db #1a,#00,#47,#00,#1c,#01,#1a,#00
	db #7e,#02,#7e,#02,#1a,#00,#3f,#01
	db #7e,#02,#1a,#00,#77,#00,#de,#01
	db #0d,#00,#71,#00,#e1,#00,#0d,#00
	db #47,#00,#1c,#01,#1a,#00,#7b,#01
	db #bc,#03,#1a,#00,#1c,#01,#70,#04
	db #1a,#00,#77,#00,#de,#01,#0d,#00
	db #71,#00,#e1,#00,#0d,#00,#47,#00
	db #1c,#01,#1a,#00,#7b,#01,#bc,#03
	db #1a,#00,#1c,#01,#70,#04,#1a,#00
	db #77,#00,#de,#01,#0d,#00,#71,#00
	db #e1,#00,#0d,#00,#8e,#00,#1c,#01
	db #1a,#00,#47,#00,#38,#02,#1a,#00
	db #4b,#00,#2d,#01,#1a,#00,#54,#00
	db #52,#01,#1a,#00,#5f,#00,#7b,#01
	db #1a,#00,#f6,#02,#bc,#03,#1a,#00
	db #f6,#02,#f6,#02,#1a,#00,#a9,#00
	db #52,#01,#0d,#00,#96,#00,#2d,#01
	db #0d,#00,#be,#00,#7b,#01,#1a,#00
	db #f6,#02,#ed,#05,#1a,#00,#7b,#01
	db #f6,#02,#1a,#00,#54,#00,#52,#01
	db #0d,#00,#4b,#00,#2d,#01,#0d,#00
	db #5f,#00,#7b,#01,#1a,#00,#f6,#02
	db #ed,#05,#1a,#00,#7b,#01,#f6,#02
	db #1a,#00,#4b,#00,#2d,#01,#0d,#00
	db #47,#00,#1c,#01,#0d,#00,#5f,#00
	db #de,#01,#1a,#00,#be,#00,#7b,#01
	db #1a,#00,#54,#00,#52,#01,#1a,#00
	db #4b,#00,#2d,#01,#1a,#00,#47,#00
	db #1c,#01,#1a,#00,#7e,#02,#7e,#02
	db #1a,#00,#3f,#01,#7e,#02,#1a,#00
	db #35,#00,#d5,#00,#1a,#00,#35,#00
	db #6a,#00,#1a,#00,#35,#00,#35,#00
	db #1a,#00,#2f,#00,#be,#00,#0d,#00
	db #2f,#00,#2f,#00,#0d,#00,#35,#00
	db #6a,#00,#0d,#00,#3f,#00,#7f,#00
	db #0d,#00,#47,#00,#8e,#00,#0d,#00
	db #3f,#00,#7f,#00,#0d,#00,#47,#00
	db #8e,#00,#0d,#00,#3c,#00,#ef,#00
	db #0d,#00,#3c,#00,#77,#00,#0d,#00
	db #3c,#00,#3c,#00,#0d,#00,#35,#00
	db #6a,#00,#0d,#00,#35,#00,#38,#00
	db #0d,#00,#3c,#00,#77,#00,#0d,#00
	db #47,#00,#1c,#01,#0d,#00,#47,#00
	db #8e,#00,#0d,#00,#47,#00,#47,#00
	db #0d,#00,#43,#00,#86,#00,#0d,#00
	db #50,#00,#9f,#00,#0d,#00,#59,#00
.l9d26 equ $ + 6
	db #b3,#00,#0d,#00,#ff,#00,#01,#04
.l9d2e equ $ + 6
.l9d2d equ $ + 5
.l9d2a equ $ + 2
.l9d29 equ $ + 1
	db #00,#77,#00,#00,#04,#08,#00,#00
.l9d37 equ $ + 7
.l9d34 equ $ + 4
.l9d33 equ $ + 3
.l9d30
	db #02,#04,#00,#de,#01,#00,#04,#0d
.l9d39 equ $ + 1
.l9d38
	db #00,#4c
	ld a,#01
	cp #00
	ret z
;
.real_play_music
.l9d3f
;
	ld a,(l9d39)
	inc a
	ld hl,l9ad8
	ld bc,#0006
.l9d49
	dec a
	jr z,l9d4f
	add hl,bc
	jr l9d49
.l9d4f
	ld a,(hl)
	ld (l9d29),a
	inc hl
	ld a,(hl)
	ld (l9d2a),a
	inc hl
	ld a,(hl)
	ld (l9d33),a
	inc hl
	ld a,(hl)
	ld (l9d34),a
	inc hl
	ld a,(hl)
	ld (l9d2d),a
	ld (l9d37),a
	inc hl
	ld a,(hl)
	ld (l9d2e),a
	ld (l9d38),a
	ld hl,l9d26
	call #bcaa
	ld hl,l9d30
	call #bcaa
	ret nc
	ld a,(l9d39)
	inc a
	ld (l9d39),a
	cp #62
	ret nz
	ld a,#00
	ld (l9d39),a
	ret
	nop
	nop
	nop
	nop
	nop
	call #bca7
	ld a,#00
	ld (l9d39),a
	ret
	nop
	call #bca7
	ld a,#4c
	ld (l9d39),a
	ret
	db #00,#3c,#00,#ef,#00,#14,#00,#35
	db #00,#d5,#00,#14,#00,#2f,#00,#be
	db #00,#14,#00,#2d,#00,#b3,#00,#29
	db #00,#3c,#00,#ef,#00,#3e,#00,#2d
	db #00,#b3,#00,#14,#00,#2f,#00,#be
	db #00,#14,#00,#2d,#00,#b3,#00,#14
	db #00,#28,#00,#9f,#00,#29,#00,#35
	db #00,#d5,#00,#3e,#00,#35,#00,#35
	db #00,#14,#00,#2f,#00,#2f,#00,#14
	db #00,#2d,#00,#2d,#00,#14,#00,#24
	db #00,#24,#00,#14,#00,#28,#00,#3f
	db #01,#14,#00,#28,#00,#9f,#00,#14
	db #00,#2d,#00,#66,#01,#14,#00,#2d
	db #00,#b3,#00,#14,#00,#2f,#00,#be
	db #00,#14,#00,#35,#00,#d5,#00,#14
	db #00,#2f,#00,#be,#00,#14,#00,#2d
	db #00,#b3,#00,#50,#00,#ff
;
; #a640
;
; call #9d3f	; play music
; call #bd19
; call #bd19	; 2xvbl !!!
;
.music_info
	db "Mutant Monty (1984)(Artic Computing)()()",0
	db "",0

	read "music_end.asm"