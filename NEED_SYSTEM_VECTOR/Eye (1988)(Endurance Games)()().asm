; Music of Eye (1988)(Endurance Games)()()
; Ripped by Megachur the 26/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "EYE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #7900
NEED_SYSTEM_VECTOR 		equ 1

	read "music_header.asm"

.l7900
	db #01,#ff,#00,#00,#00,#00,#07,#00
	db #00
.l790a equ $ + 1
.l7909
	db #00,#02,#fd,#00,#00,#00,#00,#05
.l7914 equ $ + 3
.l7913 equ $ + 2
	db #00,#00,#00,#04,#fe,#00,#00,#00
.l791d equ $ + 4
	db #00,#05,#00,#00,#00
.l7925 equ $ + 7
.l791e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l792c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7935 equ $ + 7
.l7934 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7938 equ $ + 2
.l7937 equ $ + 1
.l7936
	db #00,#00,#03,#01,#14,#01,#01,#f6
.l7942 equ $ + 4
	db #0a,#10,#f6,#0a,#03,#01,#0f,#01
.l794c equ $ + 6
	db #03,#ff,#0a,#64,#00,#64,#01,#0a
	db #f1,#01
;
.init_music
.l7950	; init music
;
	ld hl,l791e
	ld de,l7a87
	call l79a8
	ld hl,l7925
	ld de,l7a1b
	call l79a8
	ld hl,l792c
	ld de,l79af
	call l79a8
	call #bca7
	call l7b00
	call l7b01
.l7974
	ld hl,l7909
	ld bc,#000a
	xor a
	ld (l7934),a
	ld (l7935),a
	ld (l7936),a
	ld (l7937),a
	ld (hl),a
	add hl,bc
	ld (hl),a
	add hl,bc
	ld (hl),a
	ld hl,l791e
	ld a,#01
	call #bcb0
	ld hl,l7925
	ld a,#02
	call #bcb0
	ld hl,l792c
	ld a,#04
	call #bcb0
	ret
;
.stop_music
.l79a5
;
	jp #bca7
.l79a8
	ld b,#81
	ld c,#00
	jp #bcef
;
.play_music
.l79af		; play music
;
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld a,(l791d)
	cp #19
	jp nz,l79d5
	ld a,(l7935)
	cp #00
	jr nz,l79d2
	inc a
	ld (l7935),a
	ld a,#0c
	ld (l791d),a
	jp l79d5
.l79d2
	ld a,(l791d)		; reinit music
.l79d5
	ld c,a
	ld b,#00
	and a
	rl c
	rl b
	rl c
	rl b
	ld hl,l7dda
	ld de,l7914
	inc de
	inc de
	inc de
	add hl,bc
	ldi
	ldi
	inc de
	inc de
	ldi
	ldi
	ex de,hl
	ld a,#20
	inc (hl)
	cp (hl)
	jr nz,l7a04
	ld hl,l7934
	set 2,(hl)
	jp l7af3
.l7a04
	ld hl,l7914
	call #bcaa
	ld hl,l792c
	ld a,#04
	call #bcb0
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l7a1b
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld a,(l7913)
	cp #4c
	jp nz,l7a41
	ld a,(l7937)
	cp #00
	jr nz,l7a3e
	inc a
	ld (l7937),a
	ld a,#0c
	ld (l7913),a
	jp l7a41
.l7a3e
	ld a,(l7913)
.l7a41
	ld c,a
	ld b,#00
	and a
	rl c
	rl b
	rl c
	rl b
	ld hl,l7c82
	ld de,l790a
	inc de
	inc de
	inc de
	add hl,bc
	ldi
	ldi
	inc de
	inc de
	ldi
	ldi
	ex de,hl
	ld a,#57
	inc (hl)
	cp (hl)
	jr nz,l7a70
	ld hl,l7934
	set 1,(hl)
	jp l7af3
.l7a70
	ld hl,l790a
	call #bcaa
	ld hl,l7925
	ld a,#02
	call #bcb0
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l7a87
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld a,(l7909)
	cp #57
	jp nz,l7aad
	ld a,(l7936)
	cp #00
	jr nz,l7aaa
	inc a
	ld (l7936),a
	ld a,#3d
	ld (l7909),a
	jp l7aad
.l7aaa
	ld a,(l7909)
.l7aad
	ld c,a
	ld b,#00
	and a
	rl c
	rl b
	rl c
	rl b
	ld hl,l7b1a
	ld de,l7900
	inc de
	inc de
	inc de
	add hl,bc
	ldi
	ldi
	inc de
	inc de
	ldi
	ldi
	ex de,hl
	ld a,#5b
	inc (hl)
	cp (hl)
	jr nz,l7adc
	ld hl,l7934
	set 0,(hl)
	jp l7af3
.l7adc
	ld hl,l7900
	call #bcaa
	ld hl,l791e
	ld a,#01
	call #bcb0
.l7aea
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l7af3
	ld a,(hl)
	and #07
	cp #07
	jr nz,l7aea
	call l7974
	jp l7aea
.l7b00
	ret
.l7b01
	ld a,#ff
	ld hl,l7938
	call #bcbc
	ld a,#fe
	ld hl,l7942
	call #bcbc
	ld a,#fd
	ld hl,l794c
	call #bcbc
	ret
.l7b1a
	db #fd,#00,#0a,#00,#00,#00,#0a,#00
	db #fd,#00,#0a,#00,#00,#00,#0a,#00
	db #d5,#00,#0a,#00,#00,#00,#0a,#00
	db #ef,#00,#1e,#00,#00,#00,#e6,#00
	db #00,#00,#50,#00,#fd,#00,#0a,#00
	db #00,#00,#0a,#00,#fd,#00,#0a,#00
	db #00,#00,#0a,#00,#d5,#00,#0a,#00
	db #00,#00,#0a,#00,#be,#00,#1e,#00
	db #00,#00,#e6,#00,#00,#00,#50,#00
	db #fd,#00,#0a,#00,#00,#00,#0a,#00
	db #fd,#00,#0a,#00,#00,#00,#0a,#00
	db #d5,#00,#0a,#00,#00,#00,#0a,#00
	db #ef,#00,#1e,#00,#00,#00,#e6,#00
	db #00,#00,#50,#00,#fd,#00,#0a,#00
	db #00,#00,#0a,#00,#fd,#00,#0a,#00
	db #00,#00,#0a,#00,#d5,#00,#0a,#00
	db #00,#00,#0a,#00,#be,#00,#1e,#00
	db #00,#00,#e6,#00,#00,#00,#50,#00
	db #fd,#00,#0a,#00,#00,#00,#0a,#00
	db #fd,#00,#0a,#00,#00,#00,#0a,#00
	db #d5,#00,#0a,#00,#00,#00,#0a,#00
	db #ef,#00,#1e,#00,#00,#00,#e6,#00
	db #00,#00,#50,#00,#fa,#01,#28,#00
	db #de,#01,#28,#00,#66,#01,#28,#00
	db #fd,#00,#28,#00,#fa,#01,#28,#00
	db #aa,#01,#28,#00,#66,#01,#28,#00
	db #fd,#00,#28,#00,#fa,#01,#28,#00
	db #de,#01,#28,#00,#7b,#01,#28,#00
	db #1c,#01,#28,#00,#fa,#01,#28,#00
	db #aa,#01,#28,#00,#7b,#01,#28,#00
	db #1c,#01,#28,#00,#fd,#00,#a0,#00
	db #b3,#00,#a0,#00,#ef,#00,#a0,#00
	db #ef,#00,#28,#00,#d5,#00,#28,#00
	db #ef,#00,#28,#00,#1c,#01,#28,#00
	db #fd,#00,#a0,#00,#b3,#00,#a0,#00
	db #8e,#00,#a0,#00,#8e,#00,#28,#00
	db #96,#00,#28,#00,#b3,#00,#28,#00
	db #be,#00,#28,#00,#b3,#00,#a0,#00
	db #fd,#00,#a0,#00,#be,#00,#a0,#00
	db #be,#00,#28,#00,#d5,#00,#28,#00
	db #ef,#00,#28,#00,#1c,#01,#28,#00
	db #fd,#00,#a0,#00,#fd,#00,#50,#00
	db #fd,#00,#28,#00,#1c,#01,#28,#00
	db #fd,#00,#40,#01,#1c,#01,#40,#01
	db #fd,#00,#40,#01,#00,#00,#40,#01
.l7c82
	db #fa,#01,#40,#01,#fa,#01,#50,#00
	db #38,#02,#40,#01,#38,#02,#50,#00
	db #fa,#01,#40,#01,#fa,#01,#50,#00
	db #fa,#01,#40,#01,#fa,#01,#50,#00
	db #38,#02,#40,#01,#38,#02,#50,#00
	db #fa,#01,#40,#01,#bc,#03,#40,#01
	db #fa,#01,#28,#00,#aa,#01,#28,#00
	db #66,#01,#28,#00,#fd,#00,#28,#00
	db #fa,#01,#28,#00,#aa,#01,#28,#00
	db #66,#01,#28,#00,#fd,#00,#28,#00
	db #fa,#01,#28,#00,#de,#01,#28,#00
	db #7b,#01,#28,#00,#1c,#01,#28,#00
	db #fa,#01,#28,#00,#de,#01,#28,#00
	db #7b,#01,#28,#00,#1c,#01,#28,#00
	db #fa,#01,#28,#00,#aa,#01,#28,#00
	db #66,#01,#28,#00,#fd,#00,#28,#00
	db #fa,#01,#28,#00,#aa,#01,#28,#00
	db #66,#01,#28,#00,#fd,#00,#28,#00
	db #aa,#01,#28,#00,#66,#01,#28,#00
	db #1c,#01,#28,#00,#d5,#00,#28,#00
	db #7b,#01,#28,#00,#2d,#01,#28,#00
	db #fd,#00,#28,#00,#be,#00,#28,#00
	db #fa,#01,#28,#00,#aa,#01,#28,#00
	db #66,#01,#28,#00,#fd,#00,#28,#00
	db #fa,#01,#28,#00,#aa,#01,#28,#00
	db #66,#01,#28,#00,#fd,#00,#28,#00
	db #7e,#02,#28,#00,#fa,#01,#28,#00
	db #aa,#01,#28,#00,#2d,#01,#28,#00
	db #38,#02,#28,#00,#de,#01,#28,#00
	db #7b,#01,#28,#00,#1c,#01,#28,#00
	db #fa,#01,#28,#00,#aa,#01,#28,#00
	db #66,#01,#28,#00,#fd,#00,#28,#00
	db #fa,#01,#28,#00,#aa,#01,#28,#00
	db #66,#01,#28,#00,#fd,#00,#28,#00
	db #fa,#01,#28,#00,#de,#01,#28,#00
	db #7b,#01,#28,#00,#1c,#01,#28,#00
	db #fa,#01,#28,#00,#de,#01,#28,#00
	db #7b,#01,#28,#00,#1c,#01,#28,#00
	db #fa,#01,#28,#00,#de,#01,#28,#00
	db #7b,#01,#28,#00,#1c,#01,#28,#00
	db #cc,#02,#28,#00,#38,#02,#28,#00
	db #de,#01,#28,#00,#aa,#01,#28,#00
	db #fa,#01,#40,#01,#00,#00,#40,#01
.l7dda
	db #7e,#02,#40,#01,#7e,#02,#50,#00
	db #53,#03,#40,#01,#53,#03,#50,#00
	db #53,#03,#40,#01,#53,#03,#50,#00
	db #fc,#04,#40,#01,#fc,#04,#50,#00
	db #ed,#05,#40,#01,#ed,#05,#50,#00
	db #f4,#03,#40,#01,#70,#04,#40,#01
	db #f4,#03,#40,#01,#70,#04,#40,#01
	db #fc,#04,#f0,#00,#98,#05,#50,#00
	db #53,#03,#a0,#00,#f6,#02,#a0,#00
	db #f4,#03,#40,#01,#fc,#04,#a0,#00
	db #70,#04,#a0,#00,#f4,#03,#40,#01
	db #70,#04,#a0,#00,#fc,#04,#50,#00
	db #98,#05,#50,#00,#70,#04,#a0,#00
	db #fc,#04,#50,#00,#9c,#05,#28,#00
	db #f4,#03,#28,#00,#f4,#03,#40,#01
	db #00,#00,#40,#01,#00,#00
;
; #8096
; call #7950	; init 
; call #5b57
; call #79a5	; stop
;
.music_info
	db "Eye (1988)(Endurance Games)()",0
	db "",0

	read "music_end.asm"
