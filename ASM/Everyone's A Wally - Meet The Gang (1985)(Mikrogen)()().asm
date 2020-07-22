; Music of Everyone's A Wally - Meet The Gang (1985)(Mikrogen)()()
; Ripped by Megachur the 25/02/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "EVEAWMTG.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #0242

	read "music_header.asm" 

.l0249 equ $ + 7
.l0248 equ $ + 6
.l0246 equ $ + 4
.l0244 equ $ + 2
.l0242
	db #00,#00,#00,#00,#00,#00,#00,#00
.l024b equ $ + 1
.l024a
	db #00,#00
.l0251 equ $ + 5
.l0250 equ $ + 4
.l024f equ $ + 3
.l024e equ $ + 2
.l024d equ $ + 1
.l024c
	db #02,#04,#06,#0f,#0f,#0f
.l0252
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
	ret

	call l027f	; init
	ld hl,l02b7
	ld (#0039),hl	; play music interrupt
	ei
	ret
;
.init_music
.l027f
;
	ld a,#08
	ld c,#00
	call l0252
	inc a
	call l0252
	inc a
	call l0252
	ld c,#38
	ld a,#07
	call l0252
	ld hl,l0467
	ld (l0242),hl
	ld hl,l05a2
	ld (l0244),hl
	ld hl,l06d5
	ld (l0246),hl
	ld a,#01
	ld (l0248),a
	ld (l0249),a
	ld (l024a),a
	dec a
	ld (l024b),a
	ret
;
.play_music
.l02b7
;
	push af
	push hl
	push bc
	push de
	ld b,#f5
	in a,(c)
	bit 0,a
	jp z,l0307
	ds 3,0		; call #0204	; keyboard test - modified by Megachur
	ld hl,l024c
	dec (hl)
	jp nz,l02d0
	ld (hl),#02
.l02d0
	ld hl,l024d
	dec (hl)
	jp nz,l02d9
	ld (hl),#04
.l02d9
	ld hl,l024e
	dec (hl)
	jp nz,l02e2
	ld (hl),#06
.l02e2
	ld hl,l0248
	dec (hl)
	jr nz,l033c
	ld hl,(l0242)
	ld a,(hl)
	cp #ff
	jr nz,l030d
.l02f0
	ld a,#01
	ld (l024b),a
	ld a,#08
	ld c,#00
	call l0252
	inc a
	call l0252
	inc a
	call l0252
	di
	jr l0308
.l0307
	ei
.l0308
	pop de
	pop bc
	pop hl
	pop af
	ret
.l030d
	ld (l0248),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l0242),hl
	sub #17
	add a
	ld e,a
	ld d,#00
	ld hl,l0405
	add hl,de
	ld c,(hl)
	ld a,#00
	call l0252
	inc hl
	ld c,(hl)
	inc a
	call l0252
	ld a,#08
	ld c,#0f
	call l0252
	ld a,c
	ld (l024f),a
	ld a,#02
	ld (l024c),a
.l033c
	ld a,(l024c)
	cp #01
	jp nz,l0354
	ld a,(l024f)
	or a
	jr z,l0354
	dec a
	ld (l024f),a
	ld c,a
	ld a,#08
	call l0252
.l0354
	ld hl,l0249
	dec (hl)
	jp nz,l0393
	ld hl,(l0244)
	ld a,(hl)
	cp #ff
	jp z,l02f0
	ld (l0249),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l0244),hl
	sub #17
	add a
	ld e,a
	ld d,#00
	ld hl,l0405
	add hl,de
	ld c,(hl)
	ld a,#02
	call l0252
	inc hl
	ld c,(hl)
	inc a
	call l0252
	ld a,#09
	ld c,#0d
	call l0252
	ld a,c
	ld (l0250),a
	ld a,#04
	ld (l024d),a
.l0393
	ld a,(l024d)
	cp #01
	jp nz,l03ab
	ld a,(l0250)
	or a
	jr z,l03ab
	dec a
	ld (l0250),a
	ld c,a
	ld a,#09
	call l0252
.l03ab
	ld hl,l024a
	dec (hl)
	jp nz,l03ea
	ld hl,(l0246)
	ld a,(hl)
	cp #ff
	jp z,l02f0
	ld (l024a),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l0246),hl
	sub #17
	add a
	ld e,a
	ld d,#00
	ld hl,l0405
	add hl,de
	ld c,(hl)
	ld a,#04
	call l0252
	inc hl
	ld c,(hl)
	inc a
	call l0252
	ld a,#0a
	ld c,#0a
	call l0252
	ld a,c
	ld (l0251),a
	ld a,#06
	ld (l024e),a
.l03ea
	ld a,(l024e)
	cp #01
	jp nz,l0402
	ld a,(l0251)
	or a
	jr z,l0402
	dec a
	ld (l0251),a
	ld c,a
	ld a,#0a
	call l0252
.l0402
	jp l0307
.l0405
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
	dw #0064,#005f,#0059,#0054
	dw #0050,#004b,#0047,#0043
	dw #003f
.l0467
	db #1e,#17,#1e,#17,#0f,#37,#0f,#37
	db #0a,#37,#05,#34,#0a,#37,#2d,#3c
	db #14,#17,#0f,#3e,#0f,#3e,#0a,#3e
	db #05,#3c,#0a,#39,#14,#36,#0f,#3e
	db #0f,#3d,#0f,#3c,#0a,#3b,#0a,#43
	db #05,#17,#05,#39,#0a,#41,#05,#17
	db #0a,#37,#05,#40,#0a,#17,#05,#35
	db #0f,#3e,#0f,#17,#0f,#17,#0f,#3c
	db #0f,#3c,#0a,#3c,#05,#39,#0a,#37
	db #2d,#3c,#14,#17,#0f,#3b,#0f,#3b
	db #0a,#3b,#05,#36,#0a,#34,#2d,#3b
	db #14,#17,#0f,#37,#0f,#37,#0a,#37
	db #05,#36,#0a,#37,#2d,#34,#14,#17
	db #0f,#39,#0f,#39,#0a,#39,#05,#34
	db #0a,#31,#2d,#39,#14,#17,#0f,#3e
	db #0f,#3e,#0a,#3e,#0a,#39,#0a,#36
	db #1e,#3b,#1e,#3a,#0f,#36,#0f,#36
	db #0a,#36,#05,#34,#0a,#32,#41,#36
	db #0f,#37,#0f,#37,#0a,#37,#05,#39
	db #0a,#3a,#23,#3b,#1e,#3f,#19,#40
	db #05,#3f,#19,#40,#05,#3e,#07,#40
	db #0f,#3c,#07,#17,#0f,#17,#05,#3c
	db #05,#3b,#05,#3a,#0a,#40,#05,#3f
	db #0a,#40,#05,#3e,#0a,#40,#05,#3e
	db #0a,#40,#05,#3e,#1e,#3e,#1e,#17
	db #19,#3e,#05,#3d,#19,#3e,#05,#40
	db #07,#41,#0f,#3e,#07,#17,#0f,#17
	db #0f,#17,#0a,#3c,#05,#3c,#0a,#39
	db #05,#37,#0a,#3c,#05,#3c,#0a,#39
	db #05,#37,#1e,#3c,#1e,#17,#19,#40
	db #05,#3f,#19,#40,#05,#3e,#07,#40
	db #0f,#3c,#07,#17,#0f,#17,#05,#3c
	db #05,#3b,#05,#3a,#0a,#40,#05,#3f
	db #0a,#40,#05,#3e,#0a,#40,#05,#3e
	db #0a,#40,#05,#3e,#1e,#3e,#1e,#17
	db #19,#3e,#05,#3d,#19,#3e,#05,#40
	db #07,#41,#0f,#3e,#07,#17,#0f,#17
	db #0f,#17,#0f,#3c,#0f,#17,#0f,#3c
	db #0f,#17,#0a,#3c,#0f,#17,#0a,#3c
.l05a2 equ $ + 3
	db #19,#17,#ff,#1e,#17,#1e,#17,#0f
	db #37,#0f,#37,#0a,#37,#05,#34,#0a
	db #37,#2d,#3c,#14,#17,#0f,#36,#0f
	db #36,#0a,#36,#05,#34,#0a,#32,#05
	db #30,#0f,#17,#0f,#2f,#0f,#2d,#0f
	db #2c,#0a,#2c,#0a,#43,#05,#17,#05
	db #39,#0a,#41,#05,#17,#0a,#37,#05
	db #40,#0a,#17,#05,#35,#0f,#3e,#0f
	db #17,#0f,#17,#0f,#34,#0f,#34,#1e
	db #35,#19,#36,#0a,#37,#19,#17,#3c
	db #2f,#1e,#2f,#1e,#2d,#1e,#2b,#1e
	db #2a,#14,#28,#05,#17,#05,#28,#0a
	db #2b,#05,#28,#0a,#2b,#05,#17,#1e
	db #2d,#1e,#2f,#1e,#2d,#1e,#2b,#1e
	db #2a,#1e,#2d,#1e,#32,#1e,#31,#0f
	db #32,#0f,#3e,#0a,#3e,#05,#3c,#0a
	db #39,#23,#3e,#0a,#3e,#05,#40,#0a
	db #42,#05,#43,#0f,#2f,#0f,#2f,#0a
	db #2f,#05,#30,#0a,#31,#23,#32,#1e
	db #3b,#19,#37,#05,#36,#19,#37,#05
	db #35,#07,#37,#0f,#34,#16,#17,#05
	db #39,#05,#38,#05,#37,#0a,#35,#0a
	db #3c,#05,#17,#05,#34,#0a,#3c,#05
	db #17,#0a,#32,#05,#3b,#0a,#17,#05
	db #30,#0f,#39,#1e,#17,#0a,#2f,#0a
	db #37,#05,#17,#05,#2d,#1e,#35,#0a
	db #2b,#0a,#34,#05,#17,#05,#29,#1e
	db #32,#0f,#34,#0f,#34,#1e,#35,#19
	db #36,#0a,#37,#19,#02,#19,#37,#05
	db #36,#19,#37,#05,#35,#07,#37,#0f
	db #34,#16,#17,#05,#39,#05,#38,#05
	db #37,#0a,#36,#0a,#3c,#05,#17,#05
	db #34,#0a,#3c,#05,#17,#0a,#32,#05
	db #3b,#0a,#17,#05,#30,#0f,#39,#1e
	db #17,#0a,#2f,#0a,#37,#05,#17,#05
	db #2d,#1e,#35,#0a,#2b,#0a,#34,#05
	db #17,#05,#29,#1e,#32,#0f,#34,#0f
	db #17,#0f,#35,#0f,#17,#0a,#36,#0f
.l06d5 equ $ + 6
	db #17,#0a,#37,#19,#17,#ff,#0f,#17
	db #0f,#1f,#0f,#21,#0f,#23,#1e,#24
	db #1e,#1f,#19,#24,#0a,#28,#05,#17
	db #05,#28,#0a,#27,#05,#17,#14,#26
	db #05,#17,#05,#26,#1e,#21,#19,#26
	db #0a,#21,#05,#17,#05,#21,#0a,#20
	db #05,#17,#1e,#1f,#1e,#26,#1e,#1f
	db #0f,#21,#0f,#23,#0f,#18,#0f,#24
	db #0f,#1a,#0f,#26,#0f,#1b,#0f,#27
	db #0f,#1c,#0f,#28,#14,#23,#05,#17
	db #05,#23,#1e,#1e,#1e,#23,#0f,#25
	db #0f,#27,#14,#28,#05,#17,#05,#28
	db #1e,#23,#1e,#28,#0f,#23,#0f,#22
	db #14,#21,#05,#17,#05,#21,#1e,#1c
	db #1e,#21,#0f,#23,#0f,#25,#1e,#26
	db #1e,#21,#1e,#23,#1e,#1e,#14,#26
	db #05,#17,#05,#26,#1e,#21,#1e,#26
	db #0f,#21,#0f,#20,#1e,#1f,#1e,#1a
	db #0f,#1f,#0f,#17,#1e,#1f,#1e,#24
	db #1e,#1f,#14,#24,#05,#17,#0a,#28
	db #05,#17,#05,#28,#0a,#27,#05,#17
	db #1e,#26,#1e,#21,#14,#26,#05,#17
	db #0a,#21,#05,#17,#05,#21,#0a,#20
	db #05,#17,#1e,#1f,#1e,#26,#1e,#1f
	db #0f,#21,#0f,#23,#0f,#18,#0f,#24
	db #0f,#1a,#0f,#26,#0f,#1b,#0f,#27
	db #0f,#1c,#0f,#28,#1e,#24,#1e,#1f
	db #14,#24,#05,#17,#0a,#28,#05,#17
	db #05,#28,#0a,#27,#05,#17,#1e,#26
	db #1e,#21,#14,#26,#05,#17,#0a,#21
	db #05,#17,#05,#21,#0a,#20,#05,#17
	db #1e,#1f,#1e,#26,#1e,#1f,#0f,#21
	db #0f,#23,#0f,#18,#2d,#17,#2d,#17
	db #0f,#18,#ff,#dd,#21,#00,#c6,#21
	db #00,#c0,#06,#18,#dd,#75,#00,#dd
	db #74,#01,#dd,#23,#dd,#23,#11,#00
	db #08,#19,#30,#f0,#11,#c0,#3f,#a7
	db #ed,#52,#10,#e8,#c9,#fe,#07,#00
	db #00
;
.music_info
	db "Everyone's A Wally - Meet The Gang (1985)(Mikrogen)()",0
	db "",0

	read "music_end.asm"
