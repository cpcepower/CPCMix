; Music of Agent XII Level 3 (1987)(Mastertronic)(Timothy Follin)()
; Ripped by Megachur the 24/03/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AGENTXL3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #632d

	read "music_header.asm"
;
.stop_music
;
	ld a,#07
	ld c,#3f
	call l643e
	ld a,#0d
	ld c,#01
	jp l643e
;
.init_music
.l633b
;
	ld hl,l645d
	ld (l6384),hl
	ld (l63b6),hl
	ld a,#01
	ld (l637b),a
	ld a,#26
	ld (l63ad),a
	ld a,#0e
	ld (l63e0),a
	ld a,#0b
	ld (l6409),a
	xor a
	ld (l63da),a
	ld (l6403),a
	ld d,#05
	ld hl,l6370
.l6364
	ld a,(hl)
	inc hl
	ld c,(hl)
	inc hl
	call l643e
	dec d
	jp nz,l6364
	ret
.l6370
	db #07,#38,#02,#00,#03,#00,#04,#00
	db #05,#00
.l637b equ $ + 1
;
.l634a
.play_music
;
	ld a,#00
	dec a
	ld (l637b),a
	jp nz,l63ac
.l6384 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	ld d,a
	cp #01
	jp z,l633b	; reinit music
	inc hl
	ld e,(hl)
	inc hl
	ld a,(hl)
	ld (l637b),a
	inc hl
	ld (l6384),hl
	xor a
	ld c,d
	call l643e
	ld a,#01
	ld c,e
	call l643e
	ld a,#0f
	ld (l63e0),a
	xor a
	ld (l63da),a
.l63ad equ $ + 1
.l63ac
	ld a,#00
	dec a
	ld (l63ad),a
	jp nz,l63d9
.l63b6 equ $ + 1
	ld hl,#0000
	ld d,(hl)
	inc hl
	ld e,(hl)
	inc hl
	ld a,(hl)
	ld (l63ad),a
	inc hl
	ld (l63b6),hl
	ld a,#02
	ld c,d
	call l643e
	ld a,#03
	ld c,e
	call l643e
	ld a,#0b
	ld (l6409),a
	xor a
	ld (l6403),a
.l63da equ $ + 1
.l63d9
	ld a,#00
	dec a
	jp z,l63f2
.l63e0 equ $ + 1
	ld a,#00
	dec a
	cp #0b
	ld (l63e0),a
	jp nz,l6402
	ld a,#01
	ld (l63da),a
	jp l6402
.l63f2
	ld a,(l63e0)
	inc a
	cp #0f
	ld (l63e0),a
	jp nz,l6402
	xor a
	ld (l63da),a
.l6403 equ $ + 1
.l6402
	ld a,#00
	dec a
	jp z,l641b
.l6409 equ $ + 1
	ld a,#00
	dec a
	cp #07
	ld (l6409),a
	jp nz,l642b
	ld a,#01
	ld (l6403),a
	jp l642b
.l641b
	ld a,(l6409)
	inc a
	cp #0b
	ld (l6409),a
	jp nz,l642b
	xor a
	ld (l6403),a
.l642b
	ld a,(l63e0)
	ld c,a
	ld a,#08
	call l643e
	ld a,(l6409)
	ld c,a
	ld a,#09
	call l643e
	ret
.l643e
	di
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	ret
.l645d
	db #5f,#00,#20,#4b,#00,#20,#3f,#00
	db #20,#35,#00,#20,#3c,#00,#20,#4b
	db #00,#20,#47,#00,#20,#5f,#00,#20
	db #59,#00,#20,#71,#00,#20,#6a,#00
	db #20,#47,#00,#20,#4b,#00,#20,#3f
	db #00,#20,#2f,#00,#20,#35,#00,#20
	db #3c,#00,#20,#4b,#00,#20,#47,#00
	db #20,#5f,#00,#20,#59,#00,#20,#5f
	db #00,#20,#6a,#00,#20,#77,#00,#20
	db #7f,#00,#20,#59,#00,#20,#5f,#00
	db #20,#4b,#00,#20,#47,#00,#20,#5f
	db #00,#20,#47,#00,#40,#35,#00,#10
	db #38,#00,#10,#35,#00,#20,#2f,#00
	db #20,#38,#00,#20,#47,#00,#20,#3f
	db #00,#20,#3c,#00,#10,#3f,#00,#10
	db #3c,#00,#20,#35,#00,#20,#3f,#00
	db #20,#50,#00,#20,#47,#00,#20,#43
	db #00,#10,#47,#00,#10,#43,#00,#20
	db #3c,#00,#20,#47,#00,#20,#59,#00
	db #20,#50,#00,#20,#4b,#00,#10,#50
	db #00,#10,#4b,#00,#20,#43,#00,#20
	db #50,#00,#20,#64,#00,#20,#59,#00
	db #20,#6a,#00,#80,#54,#00,#20,#47
	db #00,#20,#32,#00,#20,#35,#00,#20
	db #43,#00,#20,#47,#00,#20,#50,#00
	db #60,#01,#01,#01
;
	ld a,#04		; sound fx ?
	call l643e
	ld a,#05
	ld c,#00
	call l643e
	ld a,#0b
	ld c,#00
	call l643e
	ld a,#0c
	ld c,#0c
	call l643e
	ld a,#0a
	ld c,#10
	call l643e
	ld a,#0d
	ld c,#09
	call l643e
	ret
;
; #5efd
; call #633b	; init / reinit
;
; #5c22
; call #637a	; play
; call #62a6
;
.music_info
	db "Agent XII Level 3 (1987)(Mastertronic)(Timothy Follin)",0
	db "",0

	read "music_end.asm"
