; Music of Starstrike 2 (1986)(Firebird)()()
; Ripped by Megachur the 15/10/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "STARTST2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #0400
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

	jp l0440	; play music
	jp l0409	; init music 1
	jp l0412	; init music 2
;
.init_music_1
.l0409
;
	ld hl,l05c7
	xor a
	ld (l043c),a
	jr l041a
;
.init_music_2
.l0412
;
	ld hl,l05c1
	ld a,#01
	ld (l043c),a
.l041a
	ld (l0546),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l0542),hl
	ld (l0544),de
	ld a,#01
	ld (l043b),a
	ld (l0441),a
	ld a,#07
	ld c,#3a
	call l0508
	ret
.l043d equ $ + 2
.l043c equ $ + 1
.l043b
	db #00,#00,#00
	dw l043d
.l0441 equ $ + 1
;
;.play_music
.l0440
;
	ld a,#00
	dec a
	jr nz,l0448
	ld a,(l043b)
.l0448
	ld (l0441),a
	ret nz
	call l048e
	jr nc,l048a
	ld hl,(l0546)
	inc hl
	inc hl
	ld (l0546),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,e
	or d
	jr nz,l047c
	ld e,(hl)	; reinit music
	inc hl
	ld d,(hl)
	ld (l0546),de
	ld a,(l043c)
	or a
	jr z,l0478
	ld de,l043d
	ld (l0546),de
	jp l052c
.l0478
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
.l047c
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l0544),de
	ld (l0542),hl
	call l048e
.l048a
	call l04cf
	ret
.l048e
	ld a,#08
	ld c,#0f
	call l0508
	ld hl,(l0542)
	inc hl
	ld a,(hl)
	ld (l0542),hl
	cp #ff
	jr nz,l04ae
	scf
	ret
	inc hl
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l0542),de
	ld a,(de)
.l04ae
	or a
	ret z
	and #7f
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l0549
	add hl,de
	ld c,(hl)
	xor a
	call l0508
	inc hl
	ld c,(hl)
	ld a,#01
	call l0508
	ld c,#0f
	ld a,#08
	call l0508
	or a
	ret
.l04cf
	ld hl,(l0544)
	inc hl
	ld a,(hl)
	cp #ff
	ld (l0544),hl
	jr nz,l04e4
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l0544),de
	ld a,(de)
.l04e4
	or a
	ret z
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l0549
	add hl,de
	ld c,(hl)
	ld a,#04
	call l0508
	inc hl
	ld c,(hl)
	ld a,#05
	call l0508
	ld c,#0f
	ld a,#0a
	call l0508
	ret
	db #00,#00,#00,#00,#00
.l0508
	di
	push af
	push bc
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
	pop bc
	pop af
	ei
	ret
.l052c
	ld l,#03
	ld c,#00
.l0530
	ld a,#07
	add l
	call l0508
	dec l
	jr nz,l0530
	ld a,#07
	ld c,#3f
	call l0508
	ret
.l0546 equ $ + 5
.l0544 equ $ + 3
.l0542 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0549
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
.l05c1
	dw l0704,#0000,l05c1
.l05c7
	dw l067b,l067b,l06be,l06e1
	dw l06e1,l06be,l067b,l06e1
	dw l06be,l06e1,l067b,l06be
	dw #0000
	db #c7,#05,#06,#00,#12,#00,#04,#10
	db #05,#11,#06,#00,#12,#00,#04,#10
	db #05,#11,#06,#00,#12,#00,#04,#10
	db #05,#11,#06,#00,#12,#00,#04,#10
	db #05,#11,#06,#00,#06,#00,#06,#12
	db #06,#12,#06,#00,#06,#00,#0b,#00
	db #0d,#00,#06,#00,#06,#00,#06,#12
	db #06,#12,#06,#00,#06,#00,#06,#00
	db #06,#04,#0b,#00,#17,#00,#09,#15
	db #0a,#16,#0b,#00,#17,#00,#09,#15
	db #0a,#16,#0b,#00,#17,#00,#09,#15
	db #0a,#16,#0b,#00,#17,#00,#09,#15
	db #0a,#16,#06,#00,#12,#00,#04,#10
	db #05,#11,#06,#00,#12,#00,#04,#10
	db #05,#11,#0b,#00,#17,#00,#09,#15
	db #0a,#16,#0b,#00,#17,#00,#09,#15
	db #0a,#16,#08,#00,#14,#08,#00,#14
	db #06,#00,#12,#06,#00,#12,#04,#00
	db #10,#04,#00,#10,#03,#00,#00,#08
.l067b equ $ + 2
	db #00,#00,#e2,#05,#00,#00,#1e,#1c
	db #00,#1e,#00,#1c,#1e,#1c,#1e,#21
	db #00,#1e,#17,#19,#1e,#00,#1e,#1e
	db #1c,#00,#1c,#1c,#00,#1e,#00,#1e
	db #1c,#1c,#1d,#1d,#1e,#00,#1c,#1e
	db #00,#19,#00,#28,#00,#25,#28,#25
	db #28,#2a,#2a,#2a,#25,#00,#00,#00
	db #00,#00,#00,#00,#23,#21,#1e,#1c
.l06be equ $ + 5
	db #1e,#1e,#1e,#1e,#ff,#22,#06,#1e
	db #00,#1e,#1c,#00,#1b,#00,#1c,#00
	db #1b,#1c,#00,#1c,#1e,#00,#00,#0b
	db #00,#17,#00,#09,#15,#0a,#16,#0b
	db #00,#17,#00,#09,#15,#0a,#16,#ff
.l06e1
	db #42,#06,#12,#00,#1e,#00,#10,#1c
	db #11,#1d,#12,#00,#1e,#00,#10,#1c
	db #11,#1d,#17,#00,#23,#00,#15,#21
	db #16,#22,#17,#00,#23,#00,#15,#21
	db #16,#22,#ff
.l0704
	db #62,#06,#20,#00,#00,#1e,#00,#20
	db #1b,#00,#00,#00,#1b,#1e,#20,#00
	db #20,#1e,#00,#1b,#23,#20,#1e,#20
	db #00,#00,#ff
;
.init_music		; added by Megachur
;
	or a
	jp z,init_music_1
	jp init_music_2
;
.play_music
;
	ld hl,counter
	dec (hl)
	ret nz
	ld (hl),#07
	jp l0440
counter
	db #07		; added by Megachur
;
.music_info
	db "Starstrike 2 (1986)(Firebird)()",0
	db "",0

	read "music_end.asm"
