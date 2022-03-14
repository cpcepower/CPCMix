; Music of Icon Jon (1986)(Mirrorsoft)()()
; Ripped by Megachur the 22/08/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ICONJON.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #9a00

	read "music_header.asm"

;
.init_music
.l9a00
;
	ld hl,l9a25
	ld e,#00
.l9a05
	ld a,(hl)
	ld c,a
	ld a,e
	call lbd34
	inc hl
	inc e
	ld a,e
	cp #0f
	jp nz,l9a05
	ret
.l9a14
	ld e,#00
.l9a16
	ld a,(hl)
	ld c,a
	ld a,e
	call lbd34
	inc hl
	inc e
	ld a,e
	cp #0b
	jp nz,l9a16
	ret
.l9a27 equ $ + 2
.l9a25
	db #00,#00,#00,#00,#00,#00,#01,#38
.l9a2e equ $ + 1
.l9a2d
	db #0f,#0f,#00,#14,#05,#08,#00,#00
.l9a3c equ $ + 7
.l9a3b equ $ + 6
.l9a39 equ $ + 4
.l9a37 equ $ + 2
	db #00,#00,#d8,#9a,#e4,#9b,#01,#01
.l9a3d
	db #01
;
.play_music
.l9a3e		; play music interrupt
;
	ld a,(l9a3b)
	inc a
	and #00
	ld (l9a3b),a
	ret nz
	ld a,(l9a3c)
	dec a
	ld (l9a3c),a
	jp nz,l9a85
	ld hl,(l9a37)
	ld a,(hl)
	add a
	ld (l9a3c),a
	inc hl
	ld a,(hl)
	ld (l9a2d),a
	inc hl
	ld e,(hl)
	inc hl
	ld a,(hl)
	ld d,a
	inc hl
	ld (l9a37),hl
	inc a
	jp nz,l9a7b
	ld hl,l9ad8	; reinit music ?
	ld (l9a37),hl
	ld hl,l9be4
	ld (l9a39),hl
	jp l9a3e
.l9a7b
	ld (l9a25),de
	ld hl,l9a25
	call l9a14
.l9a85
	ld a,(l9a3d)
	dec a
	ld (l9a3d),a
	ret nz
	ld hl,(l9a39)
	ld a,(hl)
	add a
	ld (l9a3d),a
	inc hl
	ld a,(hl)
	ld (l9a2e),a
	inc hl
	ld e,(hl)
	inc hl
	ld a,(hl)
	ld d,a
	inc hl
	ld (l9a39),hl
	inc a
	jp nz,l9ab6
	ld hl,l9be4
	ld (l9a39),hl
	ld hl,l9ad8
	ld (l9a37),hl
	jp l9a3e
.l9ab6
	ld (l9a27),de
	ld hl,l9a25
	call l9a14
	ret
	call l9a00		; init
	ld hl,l9acf		; init music interrupt
	ld b,#81
	ld de,l9a3e
	jp #bcd7
.l9acf
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9ad8 equ $ + 1
	db #00,#08,#0c,#fd,#00,#08,#0c,#fd
	db #00,#08,#0c,#ef,#00,#08,#0c,#d5
	db #00,#08,#0c,#d5,#00,#08,#0c,#ef
	db #00,#08,#0c,#fd,#00,#08,#0c,#1c
	db #01,#08,#0c,#3f,#01,#08,#0c,#3f
	db #01,#08,#0c,#1c,#01,#08,#0c,#fd
	db #00,#0c,#0c,#fd,#00,#04,#0c,#1c
	db #01,#08,#0c,#1c,#01,#08,#01,#1c
	db #01,#08,#0c,#fd,#00,#08,#0c,#fd
	db #00,#08,#0c,#ef,#00,#08,#0c,#d5
	db #00,#08,#0c,#d5,#00,#08,#0c,#ef
	db #00,#08,#0c,#fd,#00,#08,#0c,#1c
	db #01,#08,#0c,#3f,#01,#08,#0c,#3f
	db #01,#08,#0c,#1c,#01,#08,#0c,#fd
	db #00,#0c,#0c,#1c,#01,#04,#0c,#3f
	db #01,#08,#0c,#3f,#01,#08,#01,#1c
	db #01,#08,#0c,#1c,#01,#08,#0c,#1c
	db #01,#08,#0c,#fd,#00,#08,#0c,#3f
	db #01,#08,#0c,#1c,#01,#04,#0c,#fd
	db #00,#04,#0c,#ef,#00,#08,#0c,#fd
	db #00,#08,#0c,#3f,#01,#08,#0c,#1c
	db #01,#04,#0c,#1c,#01,#04,#0c,#ef
	db #00,#08,#0c,#fd,#00,#08,#0c,#1c
	db #01,#08,#0c,#3f,#01,#08,#0c,#1c
	db #01,#08,#0c,#aa,#01,#08,#0c,#fd
	db #00,#08,#0c,#fd,#00,#08,#0c,#fd
	db #00,#08,#0c,#ef,#00,#08,#0c,#d5
	db #00,#08,#0c,#d5,#00,#08,#0c,#ef
	db #00,#08,#0c,#fd,#00,#08,#0c,#1c
	db #01,#08,#0c,#3f,#01,#08,#0c,#3f
	db #01,#08,#0c,#1c,#01,#08,#0c,#fd
	db #00,#0c,#0c,#1c,#01,#04,#0c,#3f
	db #01,#08,#0c,#3f,#01,#08,#01,#fd
.l9be4 equ $ + 5
	db #00,#01,#00,#ff,#ff,#01,#00,#ef
	db #00,#08,#01,#aa,#01,#08,#0a,#7e
	db #02,#04,#0a,#aa,#01,#04,#0a,#de
	db #01,#04,#0a,#fa,#01,#04,#0a,#38
	db #02,#04,#0a,#7e,#02,#04,#0a,#a4
	db #02,#04,#0a,#f6,#02,#04,#0a,#53
	db #03,#04,#0a,#bc,#03,#04,#0a,#f4
	db #03,#04,#0a,#70,#04,#04,#0a,#53
	db #03,#04,#0a,#fc,#04,#04,#0a,#a4
	db #02,#04,#0a,#f6,#02,#04,#0a,#53
	db #03,#04,#0a,#bc,#03,#04,#0a,#f4
	db #03,#04,#0a,#70,#04,#04,#0a,#fc
	db #04,#04,#0a,#70,#04,#04,#0a,#f4
	db #03,#04,#0a,#bc,#03,#04,#0a,#53
	db #03,#04,#0a,#bc,#03,#04,#0a,#f4
	db #03,#04,#0a,#70,#04,#04,#0a,#53
	db #03,#08,#0a,#fc,#04,#04,#0a,#7e
	db #02,#04,#0a,#a4,#02,#04,#0a,#7e
	db #02,#04,#0a,#38,#02,#04,#0a,#53
	db #03,#04,#0a,#bc,#03,#04,#0a,#53
	db #03,#04,#0a,#f6,#02,#04,#0a,#bc
	db #03,#04,#0a,#53,#03,#04,#0a,#f4
	db #03,#04,#0a,#53,#03,#04,#0a,#70
	db #04,#04,#0a,#53,#03,#04,#0a,#bc
	db #03,#04,#0a,#bc,#03,#04,#0a,#bc
	db #03,#04,#0a,#bc,#03,#04,#0a,#bc
	db #03,#04,#0a,#53,#03,#04,#0a,#bc
	db #03,#04,#0a,#f4,#03,#04,#0a,#53
	db #03,#04,#0a,#bc,#03,#04,#0a,#f4
	db #03,#04,#0a,#70,#04,#04,#0a,#fc
	db #04,#04,#0a,#47,#05,#04,#0a,#fc
	db #04,#04,#01,#fc,#04,#10,#08,#6a
	db #00,#10,#08,#d5,#00,#10,#08,#6a
	db #00,#10,#08,#d5,#00,#04,#08,#9f
	db #00,#04,#08,#d5,#00,#04,#08,#fd
	db #00,#04,#08,#d5,#00,#04,#08,#9f
	db #00,#04,#08,#7f,#00,#04,#08,#6a
	db #00,#04,#08,#7f,#00,#04,#08,#9f
	db #00,#04,#08,#7f,#00,#04,#08,#6a
	db #00,#04,#08,#7f,#00,#04,#08,#9f
	db #00,#04,#08,#8e,#00,#04,#08,#9f
	db #00,#04,#01,#7f,#00,#04,#08,#9f
	db #00,#04,#08,#8e,#00,#04,#08,#9f
	db #00,#04,#08,#8e,#00,#04,#08,#7f
	db #00,#04,#08,#9f,#00,#04,#08,#8e
	db #00,#04,#08,#7f,#00,#04,#08,#77
	db #00,#04,#08,#6a,#00,#04,#08,#77
	db #00,#04,#08,#7f,#00,#04,#08,#8e
	db #00,#04,#08,#9f,#00,#04,#08,#aa
	db #01,#04,#08,#9f,#00,#04,#08,#9f
	db #00,#04,#08,#7f,#00,#04,#08,#9f
	db #00,#04,#08,#6a,#00,#04,#08,#6a
	db #00,#04,#08,#77,#00,#04,#08,#7f
	db #00,#04,#08,#8e,#00,#04,#08,#9f
	db #00,#04,#08,#7f,#00,#04,#08,#6a
	db #00,#04,#08,#7f,#00,#04,#08,#9f
	db #00,#04,#08,#8e,#00,#04,#08,#9f
	db #00,#04,#01,#ef,#00,#01,#00,#ff
	db #ff,#1a,#ff,#ff,#34,#ff,#ff,#ff
	db #ff,#1a,#1a,#1a,#1a,#1a,#20,#ff
	db #ff,#ff,#30,#0a,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#2e,#1e
	db #ff,#ff,#ff,#2e,#ff,#ff,#ff,#ff
	db #18,#ff,#2e,#30,#ff,#ff,#ff,#0c
	db #1e,#ff,#ff,#ff,#ff,#00,#00

	read "bd34.asm"
;
.music_info
	db "Icon Jon (1986)(Mirrorsoft)()",0
	db "",0

	read "music_end.asm"
