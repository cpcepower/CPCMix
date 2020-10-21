; Music of Home Runner (1984)(Britannia Software)()()
; Ripped by Megachur the 16/09/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HOMERUNN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #43fd
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

.l43fd
	db #01,#00,#00,#00,#00,#02,#0e,#02
	db #00
.l4406
	dw l442b
.l4408
	push bc
	push de
	push ix
	push hl
	ld hl,l43fd
	call #bcaa
	pop hl
	pop ix
	pop de
	pop bc
	ret
.l4420 equ $ + 7
.l441c equ $ + 3
.l4419
	db #02,#00,#00,#00,#00,#00,#0c,#00
.l4425 equ $ + 4
.l4422 equ $ + 1
	db #00,#04,#00,#00,#00,#00,#00,#0c
.l442b equ $ + 2
.l4429
	db #00,#00,#de,#01,#0c,#00,#66,#01
	db #0c,#00,#1c,#01,#0c,#00,#66,#01
	db #10,#00,#00,#00,#01,#00,#de,#01
	db #0c,#00,#66,#01,#0c,#00,#1c,#01
	db #0c,#00,#66,#01,#10,#00,#00,#00
	db #01,#00,#3f,#01,#05,#00,#1c,#01
	db #05,#00,#3f,#01,#05,#00,#7b,#01
	db #0f,#00,#00,#00,#01,#00,#66,#01
	db #05,#00,#1c,#01,#05,#00,#66,#01
	db #05,#00,#de,#01,#14,#00,#00,#00
	db #02,#00,#de,#01,#0c,#00,#66,#01
	db #0c,#00,#1c,#01,#0c,#00,#66,#01
	db #10,#00,#00,#00,#01,#00,#de,#01
	db #0c,#00,#66,#01,#0c,#00,#1c,#01
	db #0c,#00,#66,#01,#10,#00,#00,#00
	db #01,#00,#3f,#01,#05,#00,#1c,#01
	db #05,#00,#3f,#01,#05,#00,#7b,#01
	db #0a,#00,#de,#01,#05,#00,#66,#01
	db #14,#00,#66,#01,#14,#00,#00,#00
.l44c2 equ $ + 1
	db #1e,#00
.l44c3
	push hl
	push de
	push bc
	push af
	push ix
	ld hl,(l4406)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l441c),de
	scf
	ccf
	rl e
	rl d
	ld (l4425),de
	ld e,(hl)
	ld a,#07
	add e
	ld e,a
	inc hl
	ld d,(hl)
	inc hl
	ld (l4420),de
	ld (l4429),de
	push hl
	ld hl,l4419
	call #bcaa
	ld hl,l4422
	call #bcaa
	pop hl
	push hl
	ld bc,l44c2
	sbc hl,bc
	pop hl
	jr nz,l4508
	ld hl,l442b	; reset music
.l4508
	ld (l4406),hl
	pop ix
	pop af
	pop bc
	pop de
	pop hl
	ret
; #4512
;
.play_music
.l4512
;
	push bc
	push de
	push hl
	ld a,#02
	call #bcad
	and #07
	pop hl
	pop de
	pop bc
	ret z
	call l44c3
	ret
;
; #3b62
; call #4512	; play music ?
;
; #3b13
; call #3cf4
; call #3b7d
; call #3b98
; call #3b8c
; call #3ba6
; call #3bbc
; call #460b
; call #3bf8
; call #3c66
; call #3c80
; call #49f7
; call #41eb
; call #460b
; call #3f0f
; call #400a
; call #4781
; call #4aa1
; call #480b
; ld a,#01
; call #bb63
; call #3e88
; ld a,#00
; call #bb9c
; call #469d
; call #bb9c
; .l3b5c
; call #3f9d
; call #4733
; call #4512
; call #45c5
; call #4217
; ld a,(#4997)
; cp #ff
; jp z,#49aa
; call #4524
; jp nc,#4545
; jp l3b5c
; ret
;
.music_info
	db "Home Runner (1984)(Britannia Software)()",0
	db "",0

	read "music_end.asm"
