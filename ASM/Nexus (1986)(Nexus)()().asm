; Music of Nexus (1986)(Nexus)()()
; Ripped by Megachur the 26/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "NEXUS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6400

	read "music_header.asm"

;
.play_music
;
	di
	ld a,(l6530)
	inc a
	ld (l6530),a
	cp #07
	jp nz,l656e
	xor a
	ld (l6530),a
	ld a,(l651f)
	cp #00
	jp z,l6554
	push af
	ld a,#06
	ld (l6530),a
	pop af
	cp #01
	jr z,l644a
	cp #02
	jr z,l6482
	call l64a3
	ret z
;
.init_music
;
	ld hl,l6510
	ld (hl),#1f
	inc hl
	ld (hl),#37
	inc hl
	xor a
	ld (hl),#10
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc hl
	inc hl
	ld (hl),#0c
	inc hl
	ld (hl),#08
	ld e,#00
	ld b,#0e
	jp l66b5
.l644a
	call l64a3
	jr z,l645d
	ld hl,l6511
	ld (hl),#3c
	inc hl
	ld (hl),#0d
	inc hl
	ld (hl),#0b
	inc hl
	ld (hl),#00
.l645d
	ld a,(l64b0)
	inc a
	inc a
	ld (l64b0),a
	cp #7f
	jr c,l646c
	ld b,a
	xor a
	sub b
.l646c
	ld hl,l650a
	ld (hl),a
	inc hl
	ld (hl),#01
	inc hl
	inc a
	jr z,l647b
	ld (hl),a
	inc hl
	ld (hl),#01
.l647b
	ld b,#0b
	ld e,#00
	jp l66b5
.l6482
	call l64a3
	ld a,#37
	ld (l6511),a
	ld a,(l64b0)
	inc a
	ld (l64b0),a
	rrca
	ret c
	ld hl,l6510
	ld (hl),#1f
	rrca
	jr c,l647b
	inc hl
	ld (hl),#3f
	inc hl
	ld (hl),#0c
	jr l647b
.l64a3
	ld hl,l64af
	cp (hl)
	ret z
	ld (hl),a
	xor a
	inc hl
	ld (hl),a
	cp #01
	ret
.l64b1 equ $ + 2
.l64b0 equ $ + 1
.l64af
	dw #0000,#03bc,#0386,#0353
	dw #0324,#02f6,#02cc,#02a4
	dw #027e,#025a,#0238,#0218
	dw #01fa,#01de,#01c3,#01aa
	dw #0192,#017b,#0166,#0152
	dw #013f,#012d,#011c,#010c
	dw #00fd,#00ef,#00e1,#00d5
	dw #00c9,#00be,#00b3,#00a9
	dw #009f,#0096,#008e,#0086
	dw #007f,#0077,#0071,#006a
	dw #0064,#005f,#0059
.l650a equ $ + 5
.l6507 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6512 equ $ + 5
.l6511 equ $ + 4
.l6510 equ $ + 3
	db #00,#00,#00,#00,#3f,#00,#00,#00
.l651c equ $ + 7
.l6519 equ $ + 4
	db #00,#00,#00,#00,#03,#04,#02,#03
.l651f equ $ + 2
	db #04,#02,#00
.l6524 equ $ + 4
.l6520
	dw l6532,l66f4,l6532,l6717
.l652c equ $ + 4
.l6528
	dw l6532,l673a,l6532,l673d
.l6534 equ $ + 4
.l6532 equ $ + 2
.l6531 equ $ + 1
.l6530
	db #00,#00,#ff,#ff,#0f,#0d,#0b,#09
	db #05,#02,#00,#00,#0c,#0a,#08,#06
	db #04,#00,#00,#00,#0d,#0d,#0d,#0c
	db #0c,#0b,#0a,#08,#0b,#0d,#0d,#0d
	db #0c,#0d,#0b,#09
.l6554
	ld (l64af),a
	call l657e
	ld e,#00
	ld b,#0b
	call l66b5
	ld a,(l6531)
	inc a
.l6565
	ld (l6531),a
	cp #04
	ret nz
	xor a
	jr l6565
.l656e
	ld a,#00
	call l66c4
	ld a,#01
	call l66c4
	ld a,#02
	call l66c4
	ret
.l657e
	ld hl,l6511
	ld b,#3f
	ld (hl),b
	inc hl
	ld b,#00
	call l6680
	ld hl,l6519
	call l6680
	ld hl,l652c
	call l65cd
	call l665e
	ld hl,l6520
	call l65cd
	ld c,#01
	call l6606
	ld hl,l6524
	call l65cd
	ld c,#02
	call l6606
	ld hl,l6528
	call l65cd
	ld c,#03
	call l6606
	ld hl,l650a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,(hl)
	cp e
	ret nz
	inc hl
	ld a,(hl)
	cp d
	ret nz
	inc de		; reset music pattern
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.l65cd
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(l6531)
	cp #00
	jr nz,l65d8
	inc de
.l65d8
	ld a,(de)
	cp #ff
	jp z,l65fe
	ld (hl),d
	dec hl
	ld (hl),e
	dec a
	add a
	ld e,a
	ld d,#00
	ld hl,l6760
	add hl,de
	add hl,de
	ld a,(l6531)
	ld e,a
	add hl,de
	ld a,(hl)
	ld b,a
	add a
	ld e,a
	ld hl,l64b1
	add hl,de
	ld d,(hl)
	inc hl
	ld e,(hl)
	ex de,hl
	ld a,b
	ret
.l65fe
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	dec hl
	dec hl
	jr l65d8
.l6606
	ld a,b
	cp #36
	jp nc,l6649
	ld a,l
	or h
	ret z
	ld a,c
	push hl
	add a
	dec a
	ld hl,l650a
	ld d,#00
	ld e,a
	add hl,de
	pop de
	ld (hl),e
	dec hl
	ld (hl),d
	ld hl,l651c
	ld e,c
	ld d,#00
	dec e
	add hl,de
	ld a,(hl)
	dec hl
	dec hl
	dec hl
	ld (hl),a
	ld hl,l6507
	add hl,de
	ld a,(hl)
	ld hl,l6512
	add hl,de
	ld (hl),a
	ld hl,l6511
	dec c
	jp nz,l663e
	res 0,(hl)
.l663e
	dec c
	jp nz,l6644
	res 1,(hl)
.l6644
	dec c
	ret nz
	res 2,(hl)
	ret
.l6649
	xor a
	ld (l6510),a
	ld a,#02
	ld hl,l6519
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	ld hl,l6511
	res 5,(hl)
	ret
.l665e
	ld a,b
	cp #00
	ret z
	cp #b5
	jp z,l666e
	ld c,#01
	ld a,#03
	jp l6686
.l666e
	ld b,#08
	ld c,#01
	ld hl,l6507
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),b
	ld b,#00
	jp l668a
.l6680
	ld (hl),b
	inc hl
	ld (hl),b
	inc hl
	ld (hl),b
	ret
.l6686
	ld b,#03
	ld c,#01
.l668a
	ld d,#00
	ld e,c
	ld hl,l651c
	add hl,de
	dec hl
	ld (hl),b
	ret
.l6694
	push bc
	ld b,#f4
	out (c),d
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),e
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	pop bc
	inc d
	ret
.l66b5
	ld hl,l650a
	ld d,#00
	add hl,de
	ld d,e
.l66bc
	ld e,(hl)
	inc hl
	call l6694
	djnz l66bc
	ret
.l66c4
	ld hl,l6512
	ld c,a
	ld e,a
	ld d,#00
	add hl,de
	ex de,hl
	ld hl,#0007
	add hl,de
	ld a,(hl)
	cp #00
	ret z
	push de
	ld hl,l6534
	dec a
	rla
	rla
	rla
	ld d,#00
	ld e,a
	add hl,de
	ld a,(l6530)
	ld e,a
	add hl,de
	ld a,(hl)
	pop hl
	ld b,(hl)
	cp b
	ret z
	ld (hl),a
	ld a,c
	add #08
	ld e,a
	ld b,#01
	jr l66b5
.l66f4
	db #03,#04,#02,#02,#02,#03,#04,#02
	db #05,#06,#07,#08,#09,#0a,#0b,#0c
	db #02,#03,#04,#02,#02,#03,#0d,#0e
	db #02,#02,#07,#08,#0f,#0a,#10,#11
.l6717 equ $ + 3
	db #12,#02,#ff,#13,#14,#15,#16,#17
	db #13,#14,#15,#05,#06,#18,#19,#1a
	db #1b,#18,#19,#1a,#1b,#18,#19,#1a
	db #1b,#18,#05,#1c,#06,#1d,#02,#06
.l673a equ $ + 6
	db #1e,#1f,#20,#21,#22,#ff,#23,#23
.l673d equ $ + 1
	db #ff,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#24
	db #25,#01,#01,#01,#01,#01,#01,#01
.l6760 equ $ + 4
	db #01,#01,#01,#ff,#00,#00,#00,#00
	db #2a,#2a,#2a,#2a,#29,#27,#29,#2a
	db #24,#22,#24,#2a,#2a,#2a,#03,#2a
	db #00,#2a,#03,#05,#2a,#2a,#1d,#1b
	db #1d,#2a,#1f,#2a,#1d,#2a,#24,#2a
	db #2a,#29,#2a,#2a,#27,#2a,#2a,#2a
	db #24,#29,#27,#2a,#24,#22,#26,#26
	db #24,#2a,#2a,#2a,#1d,#2a,#22,#24
	db #1d,#1b,#1d,#2a,#1f,#2a,#1d,#2a
	db #22,#24,#2a,#29,#03,#2a,#2a,#2a
	db #05,#2a,#00,#00,#2a,#2a,#07,#2a
	db #2a,#05,#2a,#2a,#03,#2a,#05,#2a
	db #2a,#2a,#00,#00,#2a,#2a,#13,#2a
	db #2a,#11,#2a,#2a,#0f,#2a,#11,#2a
	db #00,#2a,#03,#2a,#2a,#2a,#05,#2a
	db #2a,#00,#2a,#2a,#05,#2a,#2a,#2a
	db #2a,#2a,#00,#2a,#03,#05,#2a,#0c
	db #2a,#2a,#0c,#2a,#36,#2a,#36,#2a
	db #00,#00,#b5,#00,#6d,#00,#00
;
; #3212
; call #6400	; play music interrupt
;
;
.music_info
	db "Nexus (1986)(Nexus)()",0
	db "",0

	read "music_end.asm"
