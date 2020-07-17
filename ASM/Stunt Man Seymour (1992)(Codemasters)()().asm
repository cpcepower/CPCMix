; Music of Stunt Man Seymour (1992)(Codemasters)()()
; Ripped by Megachur the 11/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "STUNTMAS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #0400
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

	jp l0a21        ; init music
	jp l0b0c        ; play music
.l0408 equ $ + 2
.l0407 equ $ + 1
;
.music_end equ $ + 1
;
.l0406
	db #00,#01
	dw l0579,l058a,l0597
.l0414 equ $ + 6
	dw l05e8,l0601,l0613,l07c9
	dw l07cc,l087e,l08b9,l0813
	dw l0891,l08a4,l08a8,l0680
	dw l06a7,l06c8,l071d,l073e
	dw l0749,l075c,l0753,l06f4
	dw l0767,l0782,l0791,l07a0
.l043e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#ff,#00,#00,#00,#01,#00,#0c
	db #00,#0c,#00,#00,#18,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0b,#08,#02,#ff
	db #0a,#0a,#04,#ff,#12,#01,#06,#00
	db #01,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#c2,#00,#00,#00,#00,#00,#0b
	db #08,#02,#ff,#0a,#1e,#04,#ff,#12
	db #01,#06,#00,#01,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#c2,#00,#00,#00
	db #00,#00,#0c,#0c,#00,#fe,#0b,#00
	db #00,#ff,#ff,#00,#00,#03,#06,#18
	db #14,#0c,#0c,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#d2
	db #00,#00,#00,#00,#00,#09,#08,#02
	db #ff,#08,#1e,#04,#ff,#12,#01,#06
	db #00,#01,#0c,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#c2,#00,#00,#00,#00,#00
	db #08,#08,#00,#ff,#08,#3c,#10,#ff
	db #ff,#00,#00,#00,#06,#0c,#0c,#18
	db #18,#24,#24,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#c2,#00,#00
	db #00,#00,#00,#0b,#0f,#00,#fd,#0a
	db #01,#01,#fe,#ff,#00,#00,#00,#01
	db #f4,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #c2,#00,#00,#00,#00,#00,#0f,#0e
	db #00,#fc,#0c,#02,#00,#ff,#ff,#00
	db #00,#00,#01,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#c2,#00,#00,#00,#00
	db #00,#0f,#0e,#00,#fc,#0c,#02,#00
	db #ff,#ff,#00,#00,#00,#03,#0c,#0c
	db #0c,#dc,#dc,#dc,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#c2,#00
.l0579 equ $ + 3
	db #00,#00,#00,#fc,#00,#fb,#0c,#01
	db #02,#04,#01,#fa,#0c,#f9,#02,#07
.l058a equ $ + 4
	db #01,#f9,#02,#fd,#02,#02,#02,#01
	db #05,#01,#06,#01,#00,#10,#00,#ff
.l0597 equ $ + 1
	db #fe,#fa,#f4,#01,#02,#fa,#0c,#fa
	db #00,#03,#02,#fa,#05,#03,#02,#fa
	db #fe,#03,#01,#fa,#fd,#03,#01,#fa
	db #fe,#03,#02,#fa,#02,#03,#01,#fa
	db #fc,#03,#01,#fa,#02,#03,#02,#fa
	db #02,#03,#01,#fa,#fc,#03,#01,#fa
	db #02,#03,#01,#fa,#07,#03,#01,#fa
	db #fe,#03,#01,#fa,#fd,#03,#01,#fa
	db #fe,#03,#02,#fa,#05,#03,#01,#fa
	db #fd,#03,#01,#fa,#fe,#03,#02,#00
.l05e8 equ $ + 2
	db #10,#fe,#fc,#00,#fb,#0c,#08,#02
	db #fa,#0c,#08,#02,#fa,#f4,#09,#01
	db #0a,#01,#08,#02,#0b,#01,#10,#04
.l0601 equ $ + 3
	db #fd,#00,#01,#0c,#02,#fa,#0c,#0c
	db #02,#0d,#01,#fa,#f4,#0c,#02,#0e
.l0613 equ $ + 5
	db #01,#0f,#04,#00,#63,#00,#08,#12
	db #01,#fa,#fd,#12,#01,#fa,#05,#12
	db #01,#fa,#fe,#12,#01,#11,#01,#fa
	db #fd,#11,#01,#fa,#05,#11,#01,#fa
	db #fe,#11,#01,#11,#01,#fa,#fd,#11
	db #01,#fa,#05,#11,#01,#fa,#fe,#11
	db #01,#11,#01,#fa,#fd,#11,#01,#fa
	db #05,#11,#01,#fa,#fe,#11,#01,#00
	db #07,#13,#01,#11,#01,#fa,#fd,#11
	db #01,#fa,#05,#11,#01,#fa,#fe,#11
	db #01,#11,#01,#fa,#fd,#11,#01,#fa
	db #05,#11,#01,#fa,#fe,#11,#01,#11
	db #01,#fa,#fd,#11,#01,#fa,#05,#11
	db #01,#fa,#fe,#11,#01,#14,#01,#00
.l0680 equ $ + 2
	db #63,#fe,#61,#07,#27,#04,#2a,#02
	db #29,#01,#27,#03,#27,#03,#27,#01
	db #2a,#02,#2e,#04,#2a,#04,#29,#03
	db #27,#02,#27,#01,#25,#02,#25,#04
	db #27,#04,#29,#04,#2a,#04,#27,#10
.l06a7 equ $ + 1
	db #fe,#61,#08,#2e,#06,#27,#02,#27
	db #03,#29,#03,#2a,#02,#2e,#06,#27
	db #02,#27,#03,#29,#03,#27,#02,#25
	db #06,#27,#06,#29,#02,#2a,#02,#27
.l06c8 equ $ + 2
	db #10,#fe,#61,#07,#2a,#04,#29,#03
	db #25,#03,#27,#02,#29,#02,#2a,#02
	db #2a,#04,#29,#03,#25,#03,#27,#02
	db #29,#02,#2c,#02,#2a,#04,#29,#03
	db #25,#03,#27,#02,#29,#02,#2a,#02
.l06f4 equ $ + 6
	db #fa,#08,#06,#27,#10,#fe,#61,#07
	db #2a,#04,#29,#03,#25,#03,#27,#02
	db #29,#02,#2a,#02,#2a,#04,#29,#03
	db #25,#03,#27,#02,#29,#02,#2c,#02
	db #2a,#04,#29,#03,#25,#03,#27,#02
.l071d equ $ + 7
	db #29,#02,#2a,#02,#27,#10,#fe,#61
	db #07,#33,#04,#33,#02,#33,#01,#33
	db #03,#31,#02,#2e,#02,#2c,#02,#2a
	db #06,#2e,#06,#2e,#02,#31,#02,#2c
	db #06,#31,#06,#35,#04,#33,#10,#fe
.l073e
	db #61,#05,#27,#10,#2a,#10,#25,#10
.l0749 equ $ + 3
	db #27,#10,#fe,#61,#05,#22,#10,#25
.l0753 equ $ + 5
	db #10,#1e,#10,#27,#10,#2a,#10,#25
.l075c equ $ + 6
	db #10,#22,#10,#27,#10,#fe,#61,#05
	db #2c,#10,#25,#10,#2c,#10,#27,#10
.l0767 equ $ + 1
	db #fe,#61,#06,#0f,#04,#61,#03,#19
	db #02,#61,#06,#0f,#02,#0f,#02,#0f
	db #01,#0f,#01,#61,#03,#19,#02,#61
.l0782 equ $ + 4
	db #06,#0f,#02,#fe,#61,#06,#0f,#04
	db #0f,#02,#0f,#02,#0f,#04,#0f,#02
.l0791 equ $ + 3
	db #0f,#02,#fe,#60,#08,#61,#03,#19
	db #02,#19,#03,#19,#01,#19,#01,#19
.l07a0 equ $ + 2
	db #01,#fe,#61,#06,#1b,#0e,#1b,#02
	db #1e,#0c,#1e,#04,#19,#0c,#19,#04
	db #1b,#0c,#1b,#04,#1b,#10,#1e,#10
	db #19,#10,#0f,#0a,#61,#03,#19,#01
	db #19,#01,#19,#02,#19,#01,#61,#03
.l07cc equ $ + 6
.l07c9 equ $ + 3
	db #19,#01,#fe,#60,#10,#fe,#61,#04
	db #2e,#02,#2c,#02,#2e,#02,#31,#06
	db #36,#02,#38,#02,#36,#04,#29,#02
	db #2a,#04,#2c,#02,#2e,#04,#2c,#02
	db #2a,#02,#29,#02,#25,#0a,#2c,#02
	db #2a,#02,#29,#02,#25,#04,#29,#02
	db #2a,#04,#27,#0a,#29,#02,#2a,#04
	db #27,#0a,#29,#02,#2a,#04,#25,#0a
	db #29,#02,#2a,#04,#29,#04,#2a,#04
.l0813 equ $ + 5
	db #2c,#04,#25,#04,#fe,#61,#02,#2e
	db #02,#2c,#02,#2e,#02,#31,#06,#36
	db #02,#38,#02,#36,#04,#29,#02,#2a
	db #04,#2c,#02,#2e,#04,#2c,#02,#2a
	db #02,#29,#02,#25,#0a,#2c,#02,#2a
	db #02,#29,#02,#25,#04,#29,#02,#2a
	db #04,#27,#0a,#29,#02,#61,#01,#2a
	db #04,#61,#02,#2a,#0c,#2e,#04,#2c
	db #06,#27,#02,#27,#08,#60,#08,#27
	db #04,#29,#04,#61,#02,#2a,#10,#2e
	db #10,#2c,#10,#61,#01,#2a,#06,#29
	db #04,#29,#02,#29,#01,#2a,#01,#2c
	db #02,#61,#02,#2a,#10,#2e,#08,#31
	db #08,#2c,#10,#25,#10,#27,#10,#fe
.l087e
	db #61,#05,#2a,#10,#60,#10,#19,#10
	db #60,#10,#27,#10,#2a,#10,#2c,#10
.l0891 equ $ + 3
	db #60,#10,#fe,#61,#05,#2a,#10,#2e
	db #10,#2c,#10,#60,#10,#2a,#10,#2e
.l08a4 equ $ + 6
	db #10,#2c,#10,#25,#10,#fe,#61,#05
.l08a8 equ $ + 2
	db #27,#10,#61,#05,#2a,#10,#2c,#10
	db #60,#10,#27,#10,#2a,#10,#2c,#10
.l08b9 equ $ + 3
	db #60,#10,#fe,#61,#06,#2a,#02,#2a
	db #02,#61,#03,#25,#02,#61,#06,#2a
	db #02,#2a,#02,#2a,#02,#61,#03,#25
.l08d5 equ $ + 7
.l08d4 equ $ + 6
	db #02,#61,#06,#2a,#02,#fe,#00,#00
.l08d6
	db #00,#00,#00,#00,#00,#00,#30,#30
.l08e5 equ $ + 7
.l08e4 equ $ + 6
.l08e3 equ $ + 5
.l08e2 equ $ + 4
.l08e1 equ $ + 3
	db #30,#30,#00,#0f,#00,#00,#00,#00
	db #00
.l08e7
	ld a,(l08e3)
	and a
	ld b,a
	ret z
	ld a,(l08e5)
	cp #80
	jp z,l0910
	ld a,(l08e4)
	dec a
	ld (l08e4),a
	ret nz
	ld a,(l08e5)
	ld (l08e4),a
	ld a,(l08e1)
	add b
	bit 4,a
	jp nz,l091f
	ld (l08e1),a
	ret
.l0910
	ld a,b
	cp #01
	ld a,#0f
	jp z,l0919
	xor a
.l0919
	ld (l08e1),a
	jp l091f
.l091f
	xor a
	ld (l08e3),a
	ld a,(l08e2)
	and a
	jp nz,l0ad8
	ret
	ld a,#00
	ld (l08e1),a
	ld a,#01
.l0932
	ld (l08e3),a
	inc hl
	ld a,(hl)
	ld (l08e5),a
	ld (l08e4),a
	inc hl
	ret
	ld a,#0f
	ld (l08e1),a
	ld a,#ff
	jp l0932
.l0949
	db #00
.l094a
	ld a,h
	push af
	ld c,l
	cp #07
	jp nz,l0961
	ld a,(l0949)
	cp c
	jp z,l097c
	ld a,c
	ld (l0949),a
	res 7,c
	res 6,c
.l0961
	ld a,#c0
	ld b,#f6
	out (c),a
	ld b,#f4
	pop af
	out (c),a
	ld b,#f6
	ld a,#80
	out (c),a
	ld b,#f4
	out (c),c
	xor a
	ld b,#f6
	out (c),a
	ret
.l097c
	pop af
	ret
.l0985 equ $ + 7
.l0984 equ $ + 6
.l097f equ $ + 1
.l097e
	db #00,#01,#00,#00,#00,#00,#00,#f8
.l0988 equ $ + 2
.l0987 equ $ + 1
.l0986
	db #0f,#0f,#0f
.l098b equ $ + 2
.l0989
	db #00,#00,#00,#00,#00,#0c,#05,#00
	db #08,#01,#ff,#00,#00,#00,#01,#08
	db #00,#00,#04,#00,#00,#00,#00,#00
	db #f7,#14,#0a,#01,#00,#00,#08,#04
	db #00,#00,#01,#00,#00,#00,#0a,#00
.l09b6 equ $ + 5
	db #02,#00,#fe,#00,#00,#00,#00,#00
.l09bc equ $ + 3
.l09ba equ $ + 1
	db #00,#00,#00,#00,#00,#00,#0f,#01
	db #01,#02,#01,#ff,#00,#00,#02,#03
	db #09,#00,#00,#01,#00,#00,#00,#00
	db #00,#ef,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l09e7 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l09ed equ $ + 4
.l09eb equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #0a,#01,#02,#02,#ff,#00,#00,#04
	db #05,#0a,#00,#00,#00,#01,#00,#00
	db #00,#00,#00,#df,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0a18 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.real_init_music
.l0a21	; init music
;
	ld a,#0f
	ld (l08e1),a
	xor a
	ld (l08e3),a
	ld (l08e2),a
	call l0ae0
	ld a,(l08d5)
	cp #ff
	jp nz,l0a3c
	inc a
	ld (l08d5),a
.l0a3c
	ld a,#01
	ld (l098b),a
	ld (l09bc),a
	ld (l09ed),a
	xor a
	ld (l08d4),a
	push ix
	ld ix,l0989
	ld a,(l08d5)
	add a
	ld b,a
	add a
	add b
	ld l,a
	ld h,#00
	ld de,l0408
	add hl,de
	ld (l0a6d),hl
	inc hl
	inc hl
	ld (l0a77),hl
	inc hl
	inc hl
	ld (l0a81),hl
.l0a6d equ $ + 1
	ld hl,(#0000)
	call l0aa6
	ld ix,l09ba
.l0a77 equ $ + 1
	ld hl,(#0000)
	call l0aa6
	ld ix,l09eb
.l0a81 equ $ + 1
	ld hl,(#0000)
	call l0aa6
	ld a,#01
	ld (l0407),a
	ld h,#07
	ld l,#f8
	call l094a
	ld a,(l08d5)
	cp #01
	pop ix
	ret
.l0a9a
	halt
	call l0b0c
	ld a,(l0407)
	and a
	jp nz,l0a9a
	ret
.l0aa6
	ld (ix+#20),l
	ld (ix+#23),l
	ld (ix+#00),l
	ld (ix+#21),h
	ld (ix+#24),h
	ld (ix+#01),h
	call l1038
	ld (ix+#02),#01
	ld (ix+#0c),#00
	ld (ix+#05),#00
	ld (ix+#04),#00
	ld (ix+#17),#00
	ld (ix+#2b),#00
	ld (ix+#2f),#00
	ret
;
.l0ad8
.stop_music
;
	call l0ae0
	xor a
	ld (l0407),a
	ret
.l0ae0
	ld h,#07
	ld l,#ff
	call l094a
	ld hl,l097e
	ld de,l097f
	ld bc,#000a
	ld (hl),#00
	ldir
	ld a,#ff
	ld (l0985),a
.l0af9
	ld b,#0b
	ld h,#00
	ld de,l097e
.l0b00
	ld a,(de)
	ld l,a
	push bc
	call l094a
	pop bc
	inc h
	inc de
	djnz l0b00
	ret
;
.play_music
.l0b0c
;
	ld a,(l0406)
	and a
	jp z,l0b44
	ld b,a
	xor a
	ld (l0406),a
	ld a,b
	cp #ff
	jp z,l0ad8
	cp #fe
	jp nz,l0b3d
	ld b,#0a
	ld a,#01
	ld (l08e2),a
	call l0b30
	jp l0b44
.l0b30
	ld a,#ff
	ld (l08e3),a
	ld a,b
	ld (l08e5),a
	ld (l08e4),a
	ret
.l0b3d
	dec a
	ld (l08d5),a
	jp l0a21
.l0b44
	call l08e7
	ld a,(l0407)
	and a
	jr z,l0ba6
	push ix
	ld ix,l0989
	bit 7,(ix+#0c)
	call z,l0ba7
	ld ix,l09ba
	bit 7,(ix+#0c)
	call z,l0ba7
	ld ix,l09eb
	bit 7,(ix+#0c)
	call z,l0ba7
	ld a,(l08e1)
	cpl
	and #0f
	ld b,a
	ld a,(l08d4)
	and a
	ld a,#10
	jp nz,l0b88
	ld a,(l0986)
	sub b
	jp nc,l0b88
	xor a
.l0b88
	ld (l0986),a
	ld a,(l0987)
	sub b
	jp nc,l0b93
	xor a
.l0b93
	ld (l0987),a
	ld a,(l0988)
	sub b
	jp nc,l0b9e
	xor a
.l0b9e
	ld (l0988),a
	call l0af9
	pop ix
.l0ba6
	ret
.l0ba7
	ld a,(ix+#02)
	dec (ix+#02)
	jp z,l0d4e
.l0bb0
	ld a,(ix+#0c)
	and #03
	jp z,l0c70
	cp #01
	jp z,l0bca
	cp #02
	jp z,l0c0a
	cp #03
	jp z,l0c54
	jp l0ca1
.l0bca
	ld a,(ix+#0b)
	and a
	jr z,l0bd6
	dec (ix+#0b)
	jp l0ca1
.l0bd6
	ld a,(ix+#04)
	ld b,(ix+#08)
	add b
	ld (ix+#04),a
	ld b,(ix+#05)
	cp b
	jr z,l0bf7
	jr nc,l0bf1
	ld a,(ix+#07)
	ld (ix+#0b),a
	jp l0ca1
.l0bf1
	ld a,(ix+#05)
	ld (ix+#04),a
.l0bf7
	ld a,(ix+#0c)
	and #fc
	or #02
	ld (ix+#0c),a
	ld a,(ix+#09)
	ld (ix+#25),a
	jp l0ca1
.l0c0a
	ld a,(ix+#25)
	and a
	jr z,l0c16
	dec (ix+#25)
	jp l0ca1
.l0c16
	ld a,(ix+#04)
	ld b,(ix+#0a)
	add b
	ld (ix+#04),a
	bit 7,a
	jp nz,l0c35
	ld b,(ix+#26)
	cp b
	jr z,l0c42
	jr c,l0c3c
	ld a,(ix+#09)
	ld (ix+#25),a
	jr l0ca1
.l0c35
	ld (ix+#04),#00
	jp l0c42
.l0c3c
	ld a,(ix+#26)
	ld (ix+#04),a
.l0c42
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	ld a,(ix+#06)
	ld (ix+#27),a
	jr l0ca1
.l0c54
	ld a,(ix+#27)
	and a
	jr z,l0c5f
	dec (ix+#27)
	jr l0ca1
.l0c5f
	ld a,(ix+#0c)
	and #fc
	ld (ix+#0c),a
	ld a,(ix+#2a)
	ld (ix+#29),a
	jp l0ca1
.l0c70
	ld a,(ix+#29)
	and a
	jr z,l0c7b
	dec (ix+#29)
	jr l0ca1
.l0c7b
	ld a,(ix+#04)
	ld b,(ix+#28)
	add b
	ld (ix+#04),a
	bit 7,a
	jr nz,l0c91
	ld a,(ix+#2a)
	ld (ix+#29),a
	jr l0ca1
.l0c91
	ld (ix+#04),#00
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	jr l0ca1
.l0ca1
	ld a,(ix+#04)
	ld hl,l097e
	ld d,#00
	ld e,(ix+#0f)
	add hl,de
	ld (hl),a
	ld h,(ix+#14)
	ld l,(ix+#13)
	ld d,#00
	ld e,(ix+#10)
	add hl,de
	ld a,(ix+#03)
	push af
	ld a,(hl)
	add (ix+#03)
	ld (ix+#03),a
	call l0deb
	pop af
	ld (ix+#03),a
	inc (ix+#10)
	ld a,(ix+#12)
	xor (ix+#10)
	jr nz,l0cdd
	ld a,(ix+#11)
	ld (ix+#10),a
.l0cdd
	ld a,(ix+#1a)
	cp #ff
	jr z,l0d1e
	and a
	jr z,l0cec
	dec (ix+#1a)
	jr nz,l0d1e
.l0cec
	dec (ix+#1f)
	jr nz,l0cff
	ld a,(ix+#1e)
	ld (ix+#1f),a
	ld a,(ix+#2e)
	xor #01
	ld (ix+#2e),a
.l0cff
	ld b,#00
	ld c,(ix+#1b)
	ld h,(ix+#1d)
	ld l,(ix+#1c)
	bit 0,(ix+#2e)
	jr z,l0d13
	add hl,bc
	jr l0d15
.l0d13
	sbc hl,bc
.l0d15
	ld (ix+#1d),h
	ld (ix+#1c),l
	call l0d39
.l0d1e
	ld a,(ix+#2b)
	call l0d2c
	and a
	call nz,l0d39
	ld a,(ix+#02)
	ret
.l0d2c
	ld l,a
	ld h,#00
	bit 7,a
	ret z
	ld d,h
	ld e,l
	sbc hl,de
	sbc hl,de
	ret
.l0d39
	ld b,h
	ld c,l
	ld hl,l097e
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	add hl,bc
	ex de,hl
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.l0d4e
	ld l,(ix+#00)
	ld h,(ix+#01)
.l0d54
	ld a,(hl)
	cp #60
	jp z,l0de9
	cp #61
	jp z,l0eea
	cp #62
	jp z,l0ec4
	cp #64
	jp z,l0e71
	cp #65
	jp z,l0eb6
	cp #fa
	jp z,l0e89
	cp #fc
	jp z,l0e58
	cp #fd
	jp z,l0e3a
	cp #fe
	jp z,l0ecc
	cp #ff
	jp z,l0eae
	ld b,a
	ld a,(ix+#30)
	ld (ix+#05),a
.l0d8e
	ld a,(ix+#0c)
	and #fc
	or #01
	ld (ix+#0c),a
	ld (ix+#10),#00
	ld (ix+#04),#00
	ld a,b
	sub (ix+#2d)
	ld (ix+#03),a
	ld a,(ix+#19)
	ld (ix+#1a),a
	ld a,(ix+#1e)
	srl a
	ld (ix+#1f),a
	ld (ix+#1d),#00
	ld (ix+#1c),#00
.l0dbd
	inc hl
	ld a,(hl)
	dec a
	push hl
	ld h,#00
	ld l,a
	ld de,(l08d6)
	add hl,de
	ld a,(hl)
	pop hl
	inc hl
	ld b,(ix+#2c)
	add b
	ld (ix+#2c),#00
	ld (ix+#02),a
	ld a,(ix+#07)
	ld (ix+#0b),a
	ld (ix+#00),l
	ld (ix+#01),h
	call l0deb
	jp l0bb0
.l0de9
	jr l0dbd
.l0deb
	ld a,(ix+#17)
	and a
	call nz,l0e2f
	ld a,(ix+#03)
	inc a
	inc a
	add a
	ld d,#00
	ld e,a
	ld hl,l10a1
	add hl,de
	push hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l097e
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	pop hl
	ld a,(l08d4)
	and a
	ret z
	ld a,(ix+#0f)
	cp #08
	ret nz
	ld de,#00c0
	add hl,de
	ex de,hl
	ld h,#0b
	ld a,(de)
	ld l,a
	call l094a
	inc de
	inc h
	ld a,(de)
	ld l,a
	call l094a
	ret
.l0e2f
	ld a,(ix+#03)
	neg
	and #1f
	ld (l0984),a
	ret
.l0e3a
	ld a,(ix+#05)
	and a
	jp z,l0e4e
	ld a,(ix+#26)
	and a
	jp z,l0e4e
	dec (ix+#05)
	dec (ix+#26)
.l0e4e
	ld a,(ix+#03)
	add (ix+#2d)
	ld b,a
	jp l0d8e
.l0e58
	ld a,(ix+#05)
	cp #0f
	jp z,l0e4e
	ld a,(ix+#26)
	cp #0f
	jp z,l0e4e
	inc (ix+#05)
	inc (ix+#26)
	jp l0e4e
.l0e71
	inc hl
	ld a,(hl)
	inc hl
	ld (l0984),a
	jp l0ee1
.l0e7a
	inc hl
	ld a,(hl)
	inc hl
	ld b,a
	ld a,#01
	ld (l08e2),a
	call l0b30
	jp l103e
.l0e89
	inc hl
	ld (ix+#2e),#01
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	bit 7,a
	jp z,l0e9f
	neg
	ld (ix+#2e),#00
.l0e9f
	ld (ix+#1b),a
	ld (ix+#1e),#ff
	ld (ix+#1f),#ff
	inc hl
	jp l0ee1
.l0eae
	inc hl
	ld (ix+#04),#00
	jp l0ee1
.l0eb6
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld h,#0d
	ld l,a
	call l094a
	pop hl
	jp l0ee1
.l0ec4
	ld (ix+#04),#00
	inc hl
	jp l0ee1
.l0ecc
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jr nz,l0edb
	jp l102a
	jp l0d54
.l0edb
	ld l,(ix+#15)
	ld h,(ix+#16)
.l0ee1
	ld (ix+#01),h
	ld (ix+#00),l
	jp l0d54
.l0eea
	inc hl
	ld a,(hl)
	bit 7,a
	jp nz,l0ef4
	add (ix+#2f)
.l0ef4
	and #7f
	inc hl
	push hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld b,a
	add a
	ld h,#00
	ld l,a
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,l043e
	add hl,de
	ld d,#00
	add b
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ld (ix+#30),a
	inc hl
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld a,(hl)
	ld (ix+#2a),a
	inc hl
	ld a,(hl)
	ld (ix+#28),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	inc hl
	ld a,(hl)
	ld (ix+#11),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld (ix+#14),h
	ld (ix+#13),l
	ld (ix+#10),#00
	ld de,#0010
	add hl,de
	ld a,(hl)
	ld (ix+#17),#00
	and a
	jp z,l0fa4
	and #12
	xor #12
	ld b,a
	ld c,#ed
	ld a,(ix+#0f)
	cp #08
	jp z,l0f8b
	cp #09
	jp z,l0f8f
	sla b
	rlc c
	jp l0f8f
.l0f8b
	srl b
	sra c
.l0f8f
	ld a,(l0985)
	and c
	or #c0
	or b
	ld (l0985),a
	ld a,(hl)
	bit 7,a
	jp z,l0fa4
	and #38
	ld (ix+#17),a
.l0fa4
	inc hl
	ld a,(ix+#0f)
	cp #08
	jp nz,l0fc0
	ld a,(hl)
	ld (l08d4),a
	and a
	jp z,l0fc0
	inc hl
	inc hl
	ld a,(hl)
	push hl
	ld h,#0d
	ld l,a
	call l094a
	pop hl
.l0fc0
	pop hl
	jp l0d54
.l0fc4
	inc hl
	ld a,(hl)
	inc hl
	push hl
	add a
	add a
	add a
	ld h,#00
	ld l,a
	ld de,l11f1
	add hl,de
	ld (l08d6),hl
	pop hl
	jp l103e
.l0fd9
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2f),a
	jp l103e
.l0fe2
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2c),a
	jp l103e
.l0feb
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2b),a
	jp l103e
.l0ff4
	inc hl
	ld a,(hl)
	sub #0c
	inc hl
	ld (l09b6),a
	ld (l09e7),a
	ld (l0a18),a
	jp l103e
.l1005
	inc hl
	ld b,(hl)
	inc hl
	ld a,(ix+#2d)
	add b
	ld (ix+#2d),a
	jp l103e
	ld (ix+#0c),#ff
	ld (ix+#03),#00
	ld (ix+#04),#00
	inc hl
	ld a,(hl)
	and a
	jp z,l0bb0
	call l0ad8
	jp l0bb0
.l102a
	call l1038
	jp l0d4e
.l1030
	pop bc
	jp l0ad8
.l1034
	pop bc
	jp l0a21
.l1038
	ld l,(ix+#20)
	ld h,(ix+#21)
.l103e
	ld a,(hl)
	cp #f7
	jp z,l0fd9
	cp #f8
	jp z,l0fe2
	cp #f9
	jp z,l0feb
	cp #f6
	jp z,l0e7a
	cp #fa
	jp z,l1005
	cp #fb
	jp z,l0ff4
	cp #fc
	jp z,l0fc4
	cp #fd
	jp z,l1034
	cp #fe
	jr z,l1095
	cp #ff
	jr z,l1030
	push hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l0414
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#00),e
	ld (ix+#01),d
	ld (ix+#15),e
	ld (ix+#16),d
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#22),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ret
.l1095
	ld l,(ix+#23)
	ld h,(ix+#24)
	jr l103e
.l10a1 equ $ + 4
	db #00,#00,#00,#00,#00,#00
	dw #0e18,#0d4d,#0c8e,#0bda
	dw #0b2f,#0a8f,#09f7,#0968
	dw #08e1,#0861,#07e9,#0777
	dw #070c,#06a7,#0647,#05ed
	dw #0598,#0547,#04fc,#04d4
	dw #0470,#0431,#03f4,#03dc
	dw #0386,#0353,#0324,#02f6
	dw #02cc,#02a4,#027e,#025a
	dw #0238,#0218,#01fa,#01de
	dw #01c3,#01aa,#0192,#017b
	dw #0166,#0152,#013f,#012d
	dw #011c,#010c,#00fd,#00ef
	dw #00e1,#00d5,#00c9,#00be
	dw #00b3,#00a9,#009f,#0096
	dw #008e,#0086,#007f,#0077
	dw #0071,#006a,#0064,#005f
	dw #0059,#0054,#0050,#004b
	dw #0047,#0043,#003f,#003c
	dw #0038,#0035,#0032,#002f
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #6a,#00,#64,#00,#5e,#00,#5a,#00
	db #54,#00,#4f,#00,#4a,#00,#47,#00
	db #43,#00,#3f,#00,#3b,#00,#38,#00
	db #35,#00,#32,#00,#2f,#00,#2d,#00
	db #2a,#00,#28,#00,#25,#00,#23,#00
	db #21,#00,#20,#00,#1e,#00,#1c,#00
	db #1b,#00,#19,#00,#18,#00,#16,#00
	db #15,#00,#14,#00,#13,#00,#12,#00
	db #11,#00,#10,#00,#0f,#00,#0e,#00
	db #0d,#00,#0c,#00,#0b,#00,#0a,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l11f1
	db #05,#0a,#0f,#14,#19,#1e,#23,#28
	db #2d,#32,#37,#3c,#41,#46,#4b,#50
	db #55,#5a,#5f,#64,#69,#6e,#73,#78
	db #7d,#82,#87,#8c,#91,#96,#9b,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#84,#8d,#01
	db #7f,#58,#98,#0a,#b2,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.init_music	; added by Megachur - poke #08d5, 0->1
;
	ld (l08d5),a
	jp real_init_music	; l0a21	- added by Megachur
;
.music_info
	db "Stunt Man Seymour (1992)(Codemasters)()",0
	db "",0

	read "music_end.asm"
