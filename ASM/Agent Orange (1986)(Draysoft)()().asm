; Music of Agent Orange (1986)(Draysoft)()()
; Ripped by Megachur the 27/03/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AGENTORA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #bd00

	read "music_header.asm"
;
.init_music
.lbd00
;
	ld hl,lbdc0
	ld (l5084),hl
	ld a,#07
	ld c,#3a
	call lbd88
	jr lbd18
.lbd0f
	inc hl
	ld a,(hl)
	ld (lbd63),a
	inc hl
	ld (l5084),hl
.lbd18
	ld a,#01
	jr lbd26
.lbd1c
	ld b,#f5
	in a,(c)
	rra
	jr nc,lbd1c
;
.play_music
;
	ld a,(l5083)
.lbd26
	dec a
	ld (l5083),a
	jr nz,lbd67
	ld hl,(l5084)
	ld a,(hl)
	or a
	jr z,lbd00
	cp #03
	jr z,lbd0f
	cp #01
	jr z,lbd5a
	add #02
	ld c,a
	xor a
	call lbd88
	ld c,(hl)
	ld a,#04
	call lbd88
	inc hl
	ld c,(hl)
	ld a,#01
	call lbd88
	ld c,(hl)
	ld a,#05
	call lbd88
	ld a,#02
	ld (l5086),a
.lbd5a
	ld hl,(l5084)
	inc hl
	inc hl
	ld (l5084),hl
.lbd63 equ $ + 1
	ld a,#08
	ld (l5083),a
.lbd67
	ld d,#00
	ld a,(l5086)
	srl a
	ld e,a
	ld hl,lbda6
	add hl,de
	ld c,(hl)
	ld a,#08
	call lbd88
	ld hl,lbdb3
	add hl,de
	ld a,(hl)
	or a
	jr z,lbd85
	ld hl,l5086
	inc (hl)
.lbd85
	ld c,a
	ld a,#0a
.lbd88
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
.lbda6
	db #00,#08,#0a,#0c,#0d,#0e,#0f,#0e
.lbdb3 equ $ + 5
	db #0d,#0c,#0a,#08,#00,#00,#0f,#0e
	db #0e,#0e,#0e,#0c,#0c,#0c,#08,#06
	db #04,#00
.lbdc0
	db #03,#18,#aa,#01,#03,#08,#7e,#02
	db #aa,#01,#03,#10,#3f,#01,#52,#01
	db #aa,#01,#38,#02,#aa,#01,#03,#08
	db #01,#00,#3f,#01,#aa,#01,#38,#02
	db #52,#01,#aa,#01,#38,#02,#7b,#01
	db #aa,#01,#38,#02,#52,#01,#aa,#01
	db #38,#02,#03,#10,#3f,#01,#3f,#01
	db #53,#03,#03,#08,#01,#00,#7e,#02
	db #aa,#01,#03,#10,#3f,#01,#52,#01
	db #aa,#01,#38,#02,#aa,#01,#03,#08
	db #01,#00,#3f,#01,#aa,#01,#38,#02
	db #52,#01,#aa,#01,#38,#02,#7b,#01
	db #aa,#01,#38,#02,#52,#01,#aa,#01
	db #38,#02,#7e,#02,#38,#02,#fa,#01
	db #38,#02,#ef,#00,#3f,#01,#aa,#01
	db #fd,#00,#3f,#01,#aa,#01,#1c,#01
	db #3f,#01,#aa,#01,#fd,#00,#3f,#01
	db #aa,#01,#de,#01,#aa,#01,#7b,#01
	db #aa,#01,#3f,#01,#aa,#01,#38,#02
	db #52,#01,#aa,#01,#38,#02,#7b,#01
	db #aa,#01,#38,#02,#52,#01,#aa,#01
	db #38,#02,#7e,#02,#fa,#01,#38,#02
	db #7e,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #c0,#00,#00
.l5086 equ $ + 3
.l5084 equ $ + 1
.l5083
	db #00,#00,#00,#00,#00
;
.music_info
	db "Agent Orange (1986)(Draysoft)()",0
	db "",0

	read "music_end.asm"
