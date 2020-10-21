; Music of Gravity (1988)(Schneider Magazin)()()
; Ripped by Megachur the 23/08/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GRAVITY.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #7ab7
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

;
.real_init_music
.l7ab7		; init
;
	ld hl,l7afa
	ld (l7ae5),hl
	ret
;
.play_music
.l7abe
;
	ld a,#01	; play
	call #bcad
	and #07
	ret z

	ld hl,(l7ae5)
	ld e,(hl)
	ld a,#ff
	cp e
	jr z,l7ab7	; reinit music
	inc hl
	ld d,(hl)
	inc hl
	ld (l7aea),de
	ld a,(hl)
	inc hl
	ld (l7aee),a
	ld (l7ae5),hl
	ld hl,l7ae7
	call #bcaa
	ret

.l7ae5
	dw l7b0c
.l7aee equ $ + 7
.l7aea equ $ + 3
.l7ae7
	db #01,#03,#00,#0c,#01,#00,#00,#14
	db #00,#03,#01,#0f,#01,#01,#00,#0a
	db #0f,#ff,#05
.l7afa
	db #ef,#00,#14,#0c,#01,#14,#ef,#00
	db #14,#3f,#01,#14,#ef,#00,#14,#0c
.l7b0c equ $ + 2
	db #01,#14,#ef,#00,#14,#3f,#01,#14
	db #ef,#00,#14,#d5,#00,#14,#c9,#00
	db #14,#ef,#00,#14,#b3,#00,#14,#a9
	db #00,#14,#9f,#00,#a0,#9f,#00,#0a
	db #77,#00,#0a,#7f,#00,#0a,#77,#00
	db #0a,#7f,#00,#0a,#77,#00,#0a,#96
	db #00,#0a,#77,#00,#0a,#9f,#00,#0a
	db #77,#00,#0a,#b3,#00,#0a,#77,#00
	db #0a,#c9,#00,#0a,#77,#00,#0a,#d5
	db #00,#0a,#77,#00,#0a,#ef,#00,#0a
	db #9f,#00,#0a,#a9,#00,#0a,#9f,#00
	db #0a,#a9,#00,#0a,#9f,#00,#0a,#b3
	db #00,#0a,#9f,#00,#0a,#c9,#00,#0a
	db #9f,#00,#0a,#d5,#00,#0a,#9f,#00
	db #0a,#ef,#00,#0a,#c9,#00,#0a,#a9
	db #00,#0a,#8e,#00,#0a,#9f,#00,#14
	db #3f,#01,#14,#fd,#00,#14,#d5,#00
	db #14,#ef,#00,#a0,#ff

;
.init_music		; #805c - reallocated by Megachur
;
	ld a,#01
	ld hl,#83a6
	call #bcbc
	ld a,#02
	ld hl,#83aa
	call #bcbc
	ld a,#03
	ld hl,#83b7
	call #bcbc
	ld a,#04
	ld hl,#83c1
	call #bcbc
	ld a,#01
	ld hl,#83c5
	call #bcbf
	ld a,#02
	ld hl,#83d5
	call #bcbf
	jp l7ab7		; added by Megachur

; #843e
; call #7ab7	; init
; .l8441
; call #7abe	; play
; ld hl,(#7ae5)
; ld a,(hl)
; cp #ff
; jr nz,l8441

	; 10 REM ***************************
	; 20 REM * Gravity-Loader          *
	; 30 REM * (c) 1988 by             *
	; 40 REM * Eckhard Pfluegel        *
	; 50 REM ***************************
	; 60 MEMORY &6FFF
	; 70 LOAD"gravity1.bin",&7000
	; 80 LOAD"gravity2.bin",&8500
	; 90 CALL &804C:END

;
.music_info
	db "Gravity (1988)(Schneider Magazin)()",0
	db "",0

	read "music_end.asm"
