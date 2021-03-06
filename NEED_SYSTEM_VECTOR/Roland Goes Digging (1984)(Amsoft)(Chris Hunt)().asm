; Music of Roland Goes Digging (1984)(Amsoft)(Chris Hunt)()
; Ripped by Megachur the 06/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ROLANDGD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #67df
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

.l67e1 equ $ + 2
.l67df
	db #00,#00,#00,#00,#00,#00,#00,#00
.l67e7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.init_music
;
	call #bca7
	ld hl,l6852
	ld (l67df),hl
	ld hl,l67e7
	ld de,l6823
	ld bc,#8000
	call #bcef
	ld hl,l67e1
	ld bc,#0003
	ld de,#0003
	call #bce9
	ret
	ld hl,l67e1
	call #bcec
	call #bca7
	ret
;
.play_music_interrupt
.l6823
;
	push ix
	push af
	push bc
	push de
	push hl
	ld hl,(l67df)
	push hl
	call #bcaa
	pop hl
	jr nc,l684b
	ld de,l7554
	xor a
	ex de,hl
	sbc hl,de
	jr z,l6845
	ld hl,#0009
	add hl,de
	ld (l67df),hl
	jr l684b
.l6845
	ld hl,l6918
	ld (l67df),hl
.l684b
	pop hl
	pop de
	pop bc
	pop af
	pop ix
	ret
.l6852
	db #0a,#01,#00,#35,#00,#00,#0a,#24
	db #00,#11,#01,#00,#77,#00,#00,#0a
	db #24,#00,#01,#01,#00,#6a,#00,#00
	db #0a,#24,#00,#0a,#01,#00,#35,#00
	db #00,#0a,#24,#00,#11,#01,#00,#7f
	db #00,#00,#0a,#24,#00,#01,#01,#00
	db #6a,#00,#00,#0a,#24,#00,#0a,#01
	db #00,#35,#00,#00,#0a,#24,#00,#11
	db #01,#00,#86,#00,#00,#0a,#24,#00
	db #01,#01,#00,#6a,#00,#00,#0a,#24
	db #00,#0a,#01,#00,#35,#00,#00,#0a
	db #24,#00,#11,#01,#00,#8e,#00,#00
	db #0a,#24,#00,#01,#01,#00,#6a,#00
	db #00,#0a,#24,#00,#0a,#01,#00,#35
	db #00,#00,#0a,#24,#00,#11,#01,#00
	db #96,#00,#00,#0a,#24,#00,#01,#01
	db #00,#6a,#00,#00,#0a,#24,#00,#0a
	db #01,#00,#35,#00,#00,#0a,#24,#00
	db #11,#01,#00,#9f,#00,#00,#0a,#24
	db #00,#01,#01,#00,#6a,#00,#00,#0a
	db #24,#00,#0a,#01,#00,#35,#00,#00
	db #0a,#24,#00,#11,#01,#00,#a9,#00
	db #00,#0a,#24,#00,#01,#01,#00,#00
	db #00,#00,#0a,#24,#00,#01,#01,#00
	db #aa,#01,#00,#0a,#24,#00
.l6918
	db #01,#01,#00,#7f,#00,#00,#0a,#24
	db #00,#0a,#01,#00,#6a,#00,#00,#0a
	db #1b,#00,#11,#01,#00,#9f,#00,#00
	db #0a,#24,#00,#0a,#01,#00,#6a,#00
	db #00,#0a,#1b,#00,#11,#01,#00,#8e
	db #00,#00,#0a,#24,#00,#0a,#01,#00
	db #6a,#00,#00,#0a,#1b,#00,#11,#01
	db #00,#9f,#00,#00,#0a,#24,#00,#0a
	db #01,#00,#6a,#00,#00,#0a,#1b,#00
	db #11,#01,#00,#a9,#00,#00,#0a,#24
	db #00,#0a,#01,#00,#7f,#00,#00,#0a
	db #1b,#00,#11,#01,#00,#be,#00,#00
	db #0a,#24,#00,#0a,#01,#00,#7f,#00
	db #00,#0a,#1b,#00,#11,#01,#00,#a9
	db #00,#00,#0a,#24,#00,#0a,#01,#00
	db #7f,#00,#00,#0a,#1b,#00,#11,#01
	db #00,#be,#00,#00,#0a,#24,#00,#0a
	db #01,#00,#7f,#00,#00,#0a,#12,#00
	db #11,#01,#00,#d5,#00,#00,#0a,#12
	db #00,#0a,#01,#00,#7f,#00,#00,#0a
	db #12,#00,#11,#01,#00,#d5,#00,#00
	db #0a,#12,#00,#0a,#01,#00,#8e,#00
	db #00,#0a,#24,#00,#11,#01,#00,#ef
	db #00,#00,#0a,#24,#00,#0a,#01,#00
	db #8e,#00,#00,#0a,#12,#00,#11,#01
	db #00,#fd,#00,#00,#0a,#12,#00,#0a
	db #01,#00,#7f,#00,#00,#0a,#12,#00
	db #11,#01,#00,#fd,#00,#00,#0a,#12
	db #00,#0a,#01,#00,#77,#00,#00,#0a
	db #24,#00,#11,#01,#00,#1c,#01,#00
	db #0a,#24,#00,#0a,#01,#00,#5f,#00
	db #00,#0a,#24,#00,#11,#01,#00,#3f
	db #01,#00,#0a,#24,#00,#0a,#01,#00
	db #6a,#00,#00,#0a,#24,#00,#11,#01
	db #00,#52,#01,#00,#0a,#24,#00,#0a
	db #01,#00,#6a,#00,#00,#0a,#24,#00
	db #11,#01,#00,#7b,#01,#00,#0a,#24
	db #00,#0a,#01,#00,#6a,#00,#00,#0a
	db #24,#00,#11,#01,#00,#aa,#01,#00
	db #0a,#24,#00,#01,#01,#00,#7f,#00
	db #00,#0a,#24,#00,#0a,#01,#00,#6a
	db #00,#00,#0a,#1b,#00,#11,#01,#00
	db #9f,#00,#00,#0a,#24,#00,#0a,#01
	db #00,#6a,#00,#00,#0a,#1b,#00,#11
	db #01,#00,#8e,#00,#00,#0a,#24,#00
	db #0a,#01,#00,#6a,#00,#00,#0a,#1b
	db #00,#11,#01,#00,#9f,#00,#00,#0a
	db #24,#00,#0a,#01,#00,#6a,#00,#00
	db #0a,#1b,#00,#11,#01,#00,#a9,#00
	db #00,#0a,#24,#00,#0a,#01,#00,#7f
	db #00,#00,#0a,#1b,#00,#11,#01,#00
	db #be,#00,#00,#0a,#24,#00,#0a,#01
	db #00,#7f,#00,#00,#0a,#1b,#00,#11
	db #01,#00,#a9,#00,#00,#0a,#24,#00
	db #0a,#01,#00,#7f,#00,#00,#0a,#1b
	db #00,#11,#01,#00,#be,#00,#00,#0a
	db #24,#00,#0a,#01,#00,#7f,#00,#00
	db #0a,#1b,#00,#11,#01,#00,#d5,#00
	db #00,#0a,#24,#00,#0a,#01,#00,#8e
	db #00,#00,#0a,#36,#00,#11,#01,#00
	db #ef,#00,#00,#0a,#36,#00,#0a,#01
	db #00,#7f,#00,#00,#0a,#12,#00,#11
	db #01,#00,#ef,#00,#00,#0a,#12,#00
	db #0a,#01,#00,#8e,#00,#00,#0a,#24
	db #00,#11,#01,#00,#52,#01,#00,#0a
	db #24,#00,#0a,#01,#00,#d5,#00,#00
	db #0a,#24,#00,#11,#01,#00,#52,#01
	db #00,#0a,#24,#00,#0a,#01,#00,#9f
	db #00,#00,#0a,#24,#00,#11,#01,#00
	db #3f,#01,#00,#0a,#24,#00,#0a,#01
	db #00,#9f,#00,#00,#0a,#24,#00,#11
	db #01,#00,#aa,#01,#00,#0a,#24,#00
	db #0a,#01,#00,#9f,#00,#00,#0a,#24
	db #00,#11,#01,#00,#7e,#02,#00,#0a
	db #24,#00,#01,#01,#00,#00,#00,#00
	db #0a,#12,#00,#01,#01,#00,#9f,#00
	db #00,#0a,#12,#00,#0a,#01,#00,#a9
	db #00,#00,#0a,#24,#00,#11,#01,#00
	db #de,#01,#00,#0a,#24,#00,#0a,#01
	db #00,#9f,#00,#00,#0a,#24,#00,#11
	db #01,#00,#de,#01,#00,#0a,#24,#00
	db #0a,#01,#00,#8e,#00,#00,#0a,#36
	db #00,#11,#01,#00,#fa,#01,#00,#0a
	db #36,#00,#0a,#01,#00,#7f,#00,#00
	db #0a,#12,#00,#11,#01,#00,#fa,#01
	db #00,#0a,#12,#00,#0a,#01,#00,#9f
	db #00,#00,#0a,#24,#00,#11,#01,#00
	db #7b,#01,#00,#0a,#24,#00,#01,#01
	db #00,#a9,#00,#00,#0a,#24,#00,#0a
	db #01,#00,#be,#00,#00,#0a,#24,#00
	db #11,#01,#00,#7b,#01,#00,#0a,#24
	db #00,#01,#01,#00,#9f,#00,#00,#0a
	db #24,#00,#0a,#01,#00,#a9,#00,#00
	db #0a,#24,#00,#11,#01,#00,#de,#01
	db #00,#0a,#24,#00,#0a,#01,#00,#9f
	db #00,#00,#0a,#24,#00,#11,#01,#00
	db #de,#01,#00,#0a,#24,#00,#0a,#01
	db #00,#8e,#00,#00,#0a,#36,#00,#11
	db #01,#00,#fa,#01,#00,#0a,#36,#00
	db #0a,#01,#00,#7f,#00,#00,#0a,#12
	db #00,#11,#01,#00,#fa,#01,#00,#0a
	db #12,#00,#0a,#01,#00,#9f,#00,#00
	db #0a,#12,#00,#11,#01,#00,#7b,#01
	db #00,#0a,#12,#00,#0a,#01,#00,#8e
	db #00,#00,#0a,#12,#00,#11,#01,#00
	db #7b,#01,#00,#0a,#12,#00,#01,#01
	db #00,#a9,#00,#00,#0a,#12,#00,#01
	db #01,#00,#9f,#00,#00,#0a,#12,#00
	db #0a,#01,#00,#be,#00,#00,#0a,#24
	db #00,#11,#01,#00,#7b,#01,#00,#0a
	db #24,#00,#01,#01,#00,#9f,#00,#00
	db #0a,#12,#00,#01,#01,#00,#8e,#00
	db #00,#0a,#12,#00,#01,#01,#00,#7f
	db #00,#00,#0a,#48,#00,#0a,#01,#00
	db #7f,#00,#00,#0a,#24,#00,#11,#01
	db #00,#7b,#01,#00,#0a,#24,#00,#0a
	db #01,#00,#9f,#00,#00,#0a,#12,#00
	db #11,#01,#00,#7b,#01,#00,#0a,#12
	db #00,#0a,#01,#00,#8e,#00,#00,#0a
	db #12,#00,#11,#01,#00,#7b,#01,#00
	db #0a,#12,#00,#01,#01,#00,#7f,#00
	db #00,#0a,#48,#00,#0a,#01,#00,#7f
	db #00,#00,#0a,#24,#00,#11,#01,#00
	db #92,#01,#00,#0a,#24,#00,#0a,#01
	db #00,#7f,#00,#00,#0a,#12,#00,#11
	db #01,#00,#92,#01,#00,#0a,#12,#00
	db #0a,#01,#00,#77,#00,#00,#0a,#12
	db #00,#11,#01,#00,#92,#01,#00,#0a
	db #12,#00,#0a,#01,#00,#6a,#00,#00
	db #0a,#90,#00,#11,#01,#00,#aa,#01
	db #00,#0a,#90,#00,#0a,#01,#00,#6a
	db #00,#00,#0a,#48,#00,#11,#01,#00
	db #7b,#01,#00,#0a,#48,#00,#0a,#01
	db #00,#6a,#00,#00,#0a,#48,#00,#11
	db #01,#00,#66,#01,#00,#0a,#48,#00
	db #0a,#01,#00,#6a,#00,#00,#0a,#48
	db #00,#11,#01,#00,#52,#01,#00,#0a
	db #48,#00,#0a,#01,#00,#6a,#00,#00
	db #0a,#48,#00,#11,#01,#00,#aa,#01
	db #00,#0a,#48,#00,#0a,#01,#00,#6a
	db #00,#00,#0a,#48,#00,#11,#01,#00
	db #de,#01,#00,#0a,#48,#00,#0a,#01
	db #00,#6a,#00,#00,#0a,#24,#00,#11
	db #01,#00,#38,#02,#00,#0a,#24,#00
	db #01,#01,#00,#00,#00,#00,#0a,#24
	db #00,#01,#01,#00,#d5,#00,#00,#0a
	db #24,#00,#0a,#01,#00,#9f,#00,#00
	db #0a,#48,#00,#11,#01,#00,#7e,#02
	db #00,#0a,#48,#00,#0a,#01,#00,#9f
	db #00,#00,#0a,#24,#00,#11,#01,#00
	db #fa,#01,#00,#0a,#24,#00,#0a,#01
	db #00,#a9,#00,#00,#0a,#24,#00,#11
	db #01,#00,#fa,#01,#00,#0a,#24,#00
	db #0a,#01,#00,#be,#00,#00,#0a,#48
	db #00,#11,#01,#00,#de,#01,#00,#0a
	db #48,#00,#0a,#01,#00,#be,#00,#00
	db #0a,#24,#00,#11,#01,#00,#fa,#01
	db #00,#0a,#24,#00,#0a,#01,#00,#9f
	db #00,#00,#0a,#24,#00,#11,#01,#00
	db #fa,#01,#00,#0a,#24,#00,#0a,#01
	db #00,#8e,#00,#00,#0a,#36,#00,#11
	db #01,#00,#38,#02,#00,#0a,#36,#00
	db #0a,#01,#00,#7f,#00,#00,#0a,#12
	db #00,#11,#01,#00,#38,#02,#00,#0a
	db #12,#00,#0a,#01,#00,#8e,#00,#00
	db #0a,#24,#00,#11,#01,#00,#38,#02
	db #00,#0a,#24,#00,#0a,#01,#00,#9f
	db #00,#00,#0a,#24,#00,#11,#01,#00
	db #38,#02,#00,#0a,#24,#00,#0a,#01
	db #00,#a9,#00,#00,#0a,#48,#00,#11
	db #01,#00,#aa,#01,#00,#0a,#48,#00
	db #0a,#01,#00,#a9,#00,#00,#0a,#24
	db #00,#11,#01,#00,#aa,#01,#00,#0a
	db #24,#00,#01,#01,#00,#d5,#00,#00
	db #0a,#24,#00,#0a,#01,#00,#be,#00
	db #00,#0a,#24,#00,#11,#01,#00,#de
	db #01,#00,#0a,#24,#00,#0a,#01,#00
	db #9f,#00,#00,#0a,#24,#00,#11,#01
	db #00,#de,#01,#00,#0a,#24,#00,#0a
	db #01,#00,#d5,#00,#00,#0a,#24,#00
	db #11,#01,#00,#fa,#01,#00,#0a,#24
	db #00,#0a,#01,#00,#d5,#00,#00,#0a
	db #24,#00,#11,#01,#00,#fa,#01,#00
	db #0a,#24,#00,#0a,#01,#00,#be,#00
	db #00,#0a,#24,#00,#11,#01,#00,#de
	db #01,#00,#0a,#24,#00,#0a,#01,#00
	db #a9,#00,#00,#0a,#24,#00,#11,#01
	db #00,#92,#01,#00,#0a,#24,#00,#0a
	db #01,#00,#9f,#00,#00,#0a,#24,#00
	db #11,#01,#00,#7b,#01,#00,#0a,#24
	db #00,#0a,#01,#00,#77,#00,#00,#0a
	db #24,#00,#11,#01,#00,#92,#01,#00
	db #0a,#24,#00,#0a,#01,#00,#7f,#00
	db #00,#0a,#48,#00,#11,#01,#00,#aa
	db #01,#00,#0a,#48,#00,#0a,#01,#00
	db #7f,#00,#00,#0a,#24,#00,#11,#01
	db #00,#aa,#01,#00,#0a,#24,#00,#0a
	db #01,#00,#9f,#00,#00,#0a,#24,#00
	db #11,#01,#00,#aa,#01,#00,#0a,#24
	db #00,#0a,#01,#00,#8e,#00,#00,#0a
	db #24,#00,#11,#01,#00,#aa,#01,#00
	db #0a,#24,#00,#0a,#01,#00,#d5,#00
	db #00,#0a,#24,#00,#11,#01,#00,#de
	db #01,#00,#0a,#24,#00,#0a,#01,#00
	db #be,#00,#00,#0a,#24,#00,#11,#01
	db #00,#fa,#01,#00,#0a,#24,#00,#0a
	db #01,#00,#a9,#00,#00,#0a,#24,#00
	db #11,#01,#00,#38,#02,#00,#0a,#24
	db #00,#0a,#01,#00,#9f,#00,#00,#0a
	db #48,#00,#11,#01,#00,#7e,#02,#00
	db #0a,#48,#00,#0a,#01,#00,#9f,#00
	db #00,#0a,#24,#00,#11,#01,#00,#fa
	db #01,#00,#0a,#24,#00,#0a,#01,#00
	db #a9,#00,#00,#0a,#24,#00,#11,#01
	db #00,#fa,#01,#00,#0a,#24,#00,#0a
	db #01,#00,#be,#00,#00,#0a,#48,#00
	db #11,#01,#00,#de,#01,#00,#0a,#48
	db #00,#0a,#01,#00,#be,#00,#00,#0a
	db #24,#00,#11,#01,#00,#fa,#01,#00
	db #0a,#24,#00,#0a,#01,#00,#9f,#00
	db #00,#0a,#24,#00,#11,#01,#00,#fa
	db #01,#00,#0a,#24,#00,#0a,#01,#00
	db #8e,#00,#00,#0a,#36,#00,#11,#01
	db #00,#38,#02,#00,#0a,#36,#00,#0a
	db #01,#00,#7f,#00,#00,#0a,#12,#00
	db #11,#01,#00,#38,#02,#00,#0a,#12
	db #00,#0a,#01,#00,#8e,#00,#00,#0a
	db #24,#00,#11,#01,#00,#38,#02,#00
	db #0a,#24,#00,#0a,#01,#00,#9f,#00
	db #00,#0a,#24,#00,#11,#01,#00,#38
	db #02,#00,#0a,#24,#00,#0a,#01,#00
	db #a9,#00,#00,#0a,#48,#00,#11,#01
	db #00,#aa,#01,#00,#0a,#48,#00,#0a
	db #01,#00,#a9,#00,#00,#0a,#24,#00
	db #11,#01,#00,#aa,#01,#00,#0a,#24
	db #00,#01,#01,#00,#d5,#00,#00,#0a
	db #24,#00,#0a,#01,#00,#be,#00,#00
	db #0a,#24,#00,#11,#01,#00,#de,#01
	db #00,#0a,#24,#00,#0a,#01,#00,#9f
	db #00,#00,#0a,#24,#00,#11,#01,#00
	db #de,#01,#00,#0a,#24,#00,#0a,#01
	db #00,#d5,#00,#00,#0a,#48,#00,#11
	db #01,#00,#fa,#01,#00,#0a,#48,#00
	db #0a,#01,#00,#be,#00,#00,#0a,#24
	db #00,#11,#01,#00,#de,#01,#00,#0a
	db #24,#00,#0a,#01,#00,#a9,#00,#00
	db #0a,#24,#00,#11,#01,#00,#92,#01
	db #00,#0a,#24,#00,#0a,#01,#00,#9f
	db #00,#00,#0a,#24,#00,#11,#01,#00
	db #7b,#01,#00,#0a,#24,#00,#0a,#01
	db #00,#77,#00,#00,#0a,#24,#00,#11
	db #01,#00,#92,#01,#00,#0a,#24,#00
	db #0a,#01,#00,#7f,#00,#00,#0a,#6c
	db #00,#11,#01,#00,#aa,#01,#00,#0a
	db #6c,#00,#0a,#01,#00,#8e,#00,#00
	db #0a,#24,#00,#11,#01,#00,#aa,#01
	db #00,#0a,#24,#00,#0a,#01,#00,#9f
	db #00,#00,#0a,#24,#00,#11,#01,#00
	db #3f,#01,#00,#0a,#24,#00,#0a,#01
	db #00,#d5,#00,#00,#0a,#24,#00,#11
	db #01,#00,#de,#01,#00,#0a,#24,#00
	db #0a,#01,#00,#be,#00,#00,#0a,#24
	db #00,#11,#01,#00,#fa,#01,#00,#0a
	db #24,#00,#0a,#01,#00,#a9,#00,#00
	db #0a,#24,#00,#11,#01,#00,#38,#02
	db #00,#0a,#24,#00,#0a,#01,#00,#9f
	db #00,#00,#0a,#48,#00,#11,#01,#00
	db #7e,#02,#00,#0a,#48,#00,#0a,#01
	db #00,#9f,#00,#00,#0a,#24,#00,#11
	db #01,#00,#fa,#01,#00,#0a,#24,#00
	db #0a,#01,#00,#a9,#00,#00,#0a,#24
	db #00,#11,#01,#00,#fa,#01,#00,#0a
	db #24,#00,#0a,#01,#00,#be,#00,#00
	db #0a,#48,#00,#11,#01,#00,#de,#01
	db #00,#0a,#48,#00,#0a,#01,#00,#be
	db #00,#00,#0a,#24,#00,#11,#01,#00
	db #fa,#01,#00,#0a,#24,#00,#0a,#01
	db #00,#9f,#00,#00,#0a,#24,#00,#11
	db #01,#00,#fa,#01,#00,#0a,#24,#00
	db #0a,#01,#00,#8e,#00,#00,#0a,#36
	db #00,#11,#01,#00,#38,#02,#00,#0a
	db #36,#00,#0a,#01,#00,#7f,#00,#00
	db #0a,#12,#00,#11,#01,#00,#38,#02
	db #00,#0a,#12,#00,#0a,#01,#00,#8e
	db #00,#00,#0a,#24,#00,#11,#01,#00
	db #38,#02,#00,#0a,#24,#00,#0a,#01
	db #00,#9f,#00,#00,#0a,#24,#00,#11
	db #01,#00,#38,#02,#00,#0a,#24,#00
	db #0a,#01,#00,#a9,#00,#00,#0a,#48
	db #00,#11,#01,#00,#aa,#01,#00,#0a
	db #48,#00,#0a,#01,#00,#a9,#00,#00
	db #0a,#24,#00,#11,#01,#00,#aa,#01
	db #00,#0a,#24,#00,#01,#01,#00,#d5
	db #00,#00,#0a,#24,#00,#0a,#01,#00
	db #be,#00,#00,#0a,#24,#00,#11,#01
	db #00,#de,#01,#00,#0a,#24,#00,#0a
	db #01,#00,#9f,#00,#00,#0a,#24,#00
	db #11,#01,#00,#de,#01,#00,#0a,#24
	db #00,#0a,#01,#00,#d5,#00,#00,#0a
	db #24,#00,#11,#01,#00,#fa,#01,#00
	db #0a,#24,#00,#0a,#01,#00,#d5,#00
	db #00,#0a,#24,#00,#11,#01,#00,#fa
	db #01,#00,#0a,#24,#00,#0a,#01,#00
	db #be,#00,#00,#0a,#24,#00,#11,#01
	db #00,#de,#01,#00,#0a,#24,#00,#0a
	db #01,#00,#a9,#00,#00,#0a,#24,#00
	db #11,#01,#00,#92,#01,#00,#0a,#24
	db #00,#0a,#01,#00,#9f,#00,#00,#0a
	db #24,#00,#11,#01,#00,#7b,#01,#00
	db #0a,#24,#00,#0a,#01,#00,#77,#00
	db #00,#0a,#24,#00,#11,#01,#00,#92
	db #01,#00,#0a,#24,#00,#0a,#01,#00
	db #7f,#00,#00,#0a,#48,#00,#11,#01
	db #00,#aa,#01,#00,#0a,#48,#00,#0a
	db #01,#00,#7f,#00,#00,#0a,#24,#00
	db #11,#01,#00,#aa,#01,#00,#0a,#24
	db #00,#0a,#01,#00,#9f,#00,#00,#0a
	db #24,#00,#11,#01,#00,#aa,#01,#00
	db #0a,#24,#00,#0a,#01,#00,#8e,#00
	db #00,#0a,#24,#00,#11,#01,#00,#aa
	db #01,#00,#0a,#24,#00,#0a,#01,#00
	db #d5,#00,#00,#0a,#24,#00,#11,#01
	db #00,#de,#01,#00,#0a,#24,#00,#0a
	db #01,#00,#be,#00,#00,#0a,#24,#00
	db #11,#01,#00,#fa,#01,#00,#0a,#24
	db #00,#0a,#01,#00,#a9,#00,#00,#0a
	db #24,#00,#11,#01,#00,#38,#02,#00
	db #0a,#24,#00,#0a,#01,#00,#9f,#00
	db #00,#0a,#48,#00,#11,#01,#00,#7e
	db #02,#00,#0a,#48,#00,#0a,#01,#00
	db #9f,#00,#00,#0a,#24,#00,#11,#01
	db #00,#fa,#01,#00,#0a,#24,#00,#0a
	db #01,#00,#a9,#00,#00,#0a,#24,#00
	db #11,#01,#00,#fa,#01,#00,#0a,#24
	db #00,#0a,#01,#00,#be,#00,#00,#0a
	db #48,#00,#11,#01,#00,#de,#01,#00
	db #0a,#48,#00,#0a,#01,#00,#be,#00
	db #00,#0a,#24,#00,#11,#01,#00,#fa
	db #01,#00,#0a,#24,#00,#0a,#01,#00
	db #9f,#00,#00,#0a,#24,#00,#11,#01
	db #00,#fa,#01,#00,#0a,#24,#00,#0a
	db #01,#00,#8e,#00,#00,#0a,#36,#00
	db #11,#01,#00,#38,#02,#00,#0a,#36
	db #00,#0a,#01,#00,#7f,#00,#00,#0a
	db #12,#00,#11,#01,#00,#38,#02,#00
	db #0a,#12,#00,#0a,#01,#00,#8e,#00
	db #00,#0a,#24,#00,#11,#01,#00,#38
	db #02,#00,#0a,#24,#00,#0a,#01,#00
	db #9f,#00,#00,#0a,#24,#00,#11,#01
	db #00,#38,#02,#00,#0a,#24,#00,#0a
	db #01,#00,#a9,#00,#00,#0a,#48,#00
	db #11,#01,#00,#aa,#01,#00,#0a,#48
	db #00,#0a,#01,#00,#a9,#00,#00,#0a
	db #24,#00,#11,#01,#00,#aa,#01,#00
	db #0a,#24,#00,#01,#01,#00,#d5,#00
	db #00,#0a,#24,#00,#0a,#01,#00,#be
	db #00,#00,#0a,#24,#00,#11,#01,#00
	db #de,#01,#00,#0a,#24,#00,#0a,#01
	db #00,#9f,#00,#00,#0a,#24,#00,#11
	db #01,#00,#de,#01,#00,#0a,#24,#00
	db #0a,#01,#00,#d5,#00,#00,#0a,#48
	db #00,#11,#01,#00,#fa,#01,#00,#0a
	db #48,#00,#0a,#01,#00,#be,#00,#00
	db #0a,#24,#00,#11,#01,#00,#de,#01
	db #00,#0a,#24,#00,#0a,#01,#00,#a9
	db #00,#00,#0a,#24,#00,#11,#01,#00
	db #92,#01,#00,#0a,#24,#00,#0a,#01
	db #00,#9f,#00,#00,#0a,#24,#00,#11
	db #01,#00,#7b,#01,#00,#0a,#24,#00
	db #0a,#01,#00,#77,#00,#00,#0a,#24
	db #00,#11,#01,#00,#92,#01,#00,#0a
	db #24,#00,#0a,#01,#00,#7f,#00,#00
	db #0a,#6c,#00,#11,#01,#00,#aa,#01
	db #00,#0a,#6c,#00,#0a,#01,#00,#8e
	db #00,#00,#0a,#24,#00,#11,#01,#00
	db #aa,#01,#00,#0a,#24,#00,#0a,#01
	db #00,#9f,#00,#00,#0a,#24,#00,#11
	db #01,#00,#3f,#01,#00,#0a,#24,#00
	db #0a,#01,#00,#d5,#00,#00,#0a,#24
	db #00,#11,#01,#00,#de,#01,#00,#0a
	db #24,#00,#0a,#01,#00,#be,#00,#00
	db #0a,#24,#00,#11,#01,#00,#fa,#01
	db #00,#0a,#24,#00,#0a,#01,#00,#a9
	db #00,#00,#0a,#24,#00,#11,#01,#00
	db #38,#02,#00,#0a,#24,#00,#0a,#01
	db #00,#9f,#00,#00,#0a,#24,#00,#11
	db #01,#00,#3f,#01,#00,#0a,#24,#00
	db #0a,#01,#00,#9f,#00,#00,#0a,#24
	db #00,#11,#01,#00,#aa,#01,#00,#0a
	db #24,#00,#0a,#01,#00,#9f,#00,#00
	db #0a,#24,#00,#11,#01,#00,#7e,#02
.l7554 equ $ + 4
	db #00,#0a,#24,#00,#01,#01,#00,#00
	db #00,#00,#0a,#24,#00,#04,#13,#05
	db #2c,#13,#0d,#1a,#33,#05,#0a,#53
	db #09,#40,#53,#0d,#20,#93,#05,#0c
	db #13,#0d,#2c,#13,#05,#40,#33,#05
	db #22,#53,#09,#3a,#73,#09,#04,#93
	db #05,#0a,#13,#09,#36,#13,#05,#24
	db #33,#09,#3c,#53,#09,#14,#73,#09
	db #2e,#93,#05,#0a,#53,#0d,#1a,#13
	db #09,#38,#13,#0d,#26,#73,#05,#40
	db #93,#05,#40,#93,#05,#0a,#13,#11
	db #40,#13,#05,#24,#33,#05,#3e,#53
	db #0d,#18,#73,#09,#2e,#93,#05,#1c
	db #00,#00,#00,#1c,#01,#00,#00,#1c
	db #02,#00,#00,#1c,#03,#00,#00,#1d
	db #00,#00,#0e,#00,#0f,#01,#1e
;
.music_info
	db "Roland Goes Digging (1984)(Amsoft)(Chris Hunt)",0
	db "",0

	read "music_end.asm"
