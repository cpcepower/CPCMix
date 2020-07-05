; Music of Altered Beast (1989)(Activision)(Paul Hiley)()
; Ripped by Megachur the 07/08/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ALTEREDB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 07
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #5f1f
FIRST_THEME				equ 1
LAST_THEME				equ 3

	read "music_header.asm"

	jp l5f42	; play music
	jp l61f8	; init music
	jp l6172	; sound fx ?
	jp l5f8c
	ret
	ret
.l5f2d
	db #00,#00
.l5f2f
	dw #c940,#c9c9
.l5f33
	ld hl,#0000
	ld (l5f48),hl
	ld c,#07
	ld a,#2a
	call l6321
	jr l5f4a
;
.play_music
.l5f42
;
	push af
	push bc
	push de
	push hl
	push ix
.l5f48
	jr l5f33
.l5f4a
	call l6205
	call l61bb
	ld hl,l60d9
	ld a,(hl)
	ld bc,(l5f2f)
	sub c
	ld (hl),a
	sbc a
	ld (l60d8),a
	jr nc,l5f64
	ld a,#f0
	add (hl)
	ld (hl),a
.l5f64
	call l60da
	ld ix,l5fa4
	call l5fea
	ld ix,l5fb6
	call l5fea
	ld ix,l5fc8
	call l5fea
	sub a
	ld (l60d8),a
	ld c,#00
	call l634b
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
;
.stop_music
.l5f8c
;
	push af
	push bc
	push de
	push hl
	sub a
	ld (l5f2d),a
	ld hl,l644d
	ld (l6168),hl
	call l623f
	pop hl
	pop de
	pop bc
.l5fa0
	pop af
	ret
.l5fa2
	db #ff,#ff
.l5fa4
	dw l5fa2
	db #00,#00,#04,#0a
.l5faa
	dw l5fa2
.l5fad equ $ + 1
.l5fac
	db #00,#02
.l5fae
	dw l5fa0
.l5fb2 equ $ + 2
.l5fb1 equ $ + 1
	db #01,#01,#00,#00,#00
.l5fb5
	db #00
.l5fb6
	dw l5fa2
	db #00,#00,#00,#08
.l5fbc
	dw l5fa2
.l5fbf equ $ + 1
.l5fbe
	db #01,#02
.l5fc0
	dw l5fa0
.l5fc7 equ $ + 5
.l5fc4 equ $ + 2
.l5fc3 equ $ + 1
	db #01,#01,#00,#08,#00,#00
.l5fc8
	dw l5fa2
	db #00,#00,#02,#09
.l5fce
	dw l5fa2
.l5fd6 equ $ + 6
.l5fd5 equ $ + 5
.l5fd1 equ $ + 1
.l5fd0
	db #00,#02,#a0,#5f,#01,#01,#00,#05
.l5fd9 equ $ + 1
	db #00,#00,#38,#73,#39,#30,#41,#49
	db #48,#49,#30,#60,#3e,#58,#79,#7c
	db #75,#89
.l5fea
	call l605f
	dec (ix+#0d)
	ret nz
	ld a,(ix+#0c)
	ld (ix+#0d),a
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(hl)
	inc hl
	inc a
	jr z,l6052
	dec a
	ld c,(ix+#05)
	call l631a
	ld a,(hl)
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld b,a
	ld a,(ix+#0f)
	and #03
	jr z,l6025
	ld a,#1f
	sub b
	ld c,#06
	bit 2,(ix+#0f)
	call nz,l6321
.l6025
	ld a,(ix+#02)
	add (ix+#03)
	ld (ix+#02),a
	add b
	call l6272
	ex de,hl
	ld c,(ix+#04)
	call l630d
	bit 3,(ix+#0f)
	ret z
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	jr nc,l604d
	inc hl
.l604d
	ld c,#0b
	jp l630d
.l6052
	bit 1,(ix+#0f)
	ret z
	res 1,(ix+#0f)
	ld (ix+#0e),a
	ret
.l605f
	ld a,(l60d8)
	or a
	ret z
	dec (ix+#08)
	ret nz
	ld a,(ix+#09)
	ld (ix+#08),a
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld a,(hl)
	inc a
	ret z
	dec a
	inc hl
	ld (ix+#06),l
	ld (ix+#07),h
	or a
	ret z
	bit 1,(ix+#0f)
	ret nz
	bit 0,(ix+#0f)
	jr nz,l60bc
	rlca
	rlca
	ld hl,l6297
	add (hl)
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	add (hl)
	inc hl
	ld (ix+#02),a
.l609d
	call l6308
	ld (ix+#0d),#01
	ld (ix+#0c),e
	ld (ix+#03),d
	ld (ix+#00),l
	ld (ix+#01),h
	bit 3,(ix+#0f)
	ret z
	ld c,#0d
	ld a,#08
	jp l6321
.l60bc
	dec a
	rlca
	rlca
	ld c,a
	ld b,#00
	ld hl,l6581
	add hl,bc
	call l6308
	ld a,(hl)
	ld c,#07
	call l6321
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#02),a
	ex de,hl
	jr l609d
.l60d8
	nop
.l60d9
	nop
.l60da
	ld a,(l5fac)
	dec a
	ret nz
	ld hl,(l5faa)
	ld a,(hl)
	inc a
	ret nz
	ld hl,(l6168)
.l60e8
	inc hl
	ld a,(hl)
	dec hl
	cp #00
	jr nz,l6111
	ld a,(hl)
	inc hl
	inc hl
	cp #01
	jr z,l6140
	cp #02
	jr z,l6133
	cp #03
	jr z,l6150
	cp #c9
	jr z,l6162
	cp #05
	jr z,l6159
	ld hl,l644d
	ld (l6168),hl
	sub a
	ld (l5f2d),a
	ret
.l6111
	call l616c
	ld (l5fad),a
	ld (l5faa),de
	call l616c
	ld (l5fbf),a
	ld (l5fbc),de
	call l616c
	ld (l5fd1),a
	ld (l5fce),de
	ld (l6168),hl
	ret
.l6133
	call l6308
	ex de,hl
	ld (l616a),de
	ld (l6168),hl
	jr l60e8
.l6140
	call l6308
	ld (l5fae),de
	call l6308
	ld (l5fc0),de
	jr l60e8
.l6150
	ld a,(hl)
	ld (l6297),a
	inc hl
	inc hl
	jp l60e8
.l6159
	ld a,(hl)
	ld (l5f2f),a
	inc hl
	inc hl
	jp l60e8
.l6162
	ld hl,(l616a)
	jp l60e8
.l6168
	ld c,l
	ld h,h
.l616a
	ld c,l
	ld h,h
.l616c
	call l6308
	ld a,(de)
	inc de
	ret
.l6172
	push af
	push bc
	push de
	push hl
	push ix
	call l6182
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l6182
	dec a
	cp #07
	ret nc
	ld c,a
	rlca
	rlca
	add c
	add c
	ld c,a
	ld b,#00
	ld hl,l6373
	add hl,bc
	ld a,(hl)
	inc hl
	ld ix,l5fa4
	cp #01
	jr z,l61a8
	ld ix,l5fb6
	cp #02
	jr z,l61a8
	ld ix,l5fc8
.l61a8
	ld a,(hl)
	cp (ix+#0e)
	ret c
	ld (ix+#11),#00
	ld (ix+#0e),a
	ld (ix+#10),l
	ld (ix+#11),h
	ret
.l61bb
	ld ix,l5fa4
	call l61cd
	ld ix,l5fb6
	call l61cd
	ld ix,l5fc8
.l61cd
	ld h,(ix+#11)
	ld a,h
	or a
	ret z
	ld (ix+#11),#00
	ld l,(ix+#10)
	dec hl
	dec hl
	ld a,(hl)
	ld (ix+#02),a
	dec hl
	ld a,(hl)
	dec hl
	dec hl
	ld c,#07
	bit 2,(ix+#0f)
	call nz,l6321
	set 1,(ix+#0f)
	call l6308
	ex de,hl
	jp l609d
;
.real_init_music
.l61f8
;
	cp #06
	ret nc
	push af
	ld (l5f2d),a
	ld (l6204),a
	pop af
	ret
.l6204
	db #00
.l6205
	ld a,(l6204)
	or a
	ret z
	ld c,a
	rlca
	ld c,a
	ld b,#00
	ld hl,l681b
	add hl,bc
	call l6308
	ld (l6168),de
	ld a,#01
	ld (l5fac),a
	ld (l5fbe),a
	ld (l5fd0),a
	ld (l5fb1),a
	ld (l5fc3),a
	ld (l5fd5),a
	ld a,#38
	ld c,#07
	call l6321
	sub a
	ld (l60d8),a
	ld (l60d9),a
	ld (l6204),a
.l623f
	ld hl,l5fa2
	ld (l5faa),hl
	ld (l5fbc),hl
	ld (l5fce),hl
	ld (l5fa4),hl
	ld (l5fb6),hl
	ld (l5fc8),hl
	sub a
	ld (l5fb2),a
	ld (l5fc4),a
	ld (l5fd6),a
	ld (l5fb5),a
	ld (l5fc7),a
	ld (l5fd9),a
	ld c,#08
	ld h,a
	ld l,a
	call l6321
	inc c
	jp l630d
.l6272
	push af
	push bc
	push hl
	ld b,#02
	sub #04
.l6279
	cp #30
	jr c,l6282
	sub #30
	inc b
	jr l6279
.l6282
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l6298
	add hl,de
	call l6308
.l628d
	srl d
	rr e
	djnz l628d
	pop hl
	pop bc
	pop af
	ret
.l6297
	ld (hl),b
.l6298
	dw #0eee,#0eb7,#0e81,#0e4c
	dw #0e17,#0de4,#0db1,#0d7f
	dw #0d4d,#0d1c,#0cec,#0cbd
	dw #0c8e,#0c60,#0c32,#0c06
	dw #0bda,#0bae,#0b83,#0b59
	dw #0b2f,#0b06,#0ade,#0ab5
	dw #0a8f,#0a68,#0a42,#0a1c
	dw #09f7,#09d2,#09ae,#098b
	dw #0968,#0945,#0923,#0902
	dw #08e1,#08c0,#08a0,#0880
	dw #0861,#0842,#0824,#0806
	dw #07e9,#07cc,#07af,#0793
	db #2a,#45,#2b,#22,#33,#3b,#3a,#3b
	db #22,#52,#30,#4a,#4b,#4e,#47,#5b
.l6308
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ret
.l630d
	push af
	ld a,l
	call l6321
	inc c
	ld a,h
	call l6321
	dec c
	pop af
	ret
.l631a
	or a
	jr z,l6321
	srl a
	add #08
.l6321
	push af
	push bc
	call l6339
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #80
	out (c),a
	xor #80
	out (c),a
	pop bc
	pop af
	ret
.l6339
	push af
	ld b,#f4
	out (c),c
	ld bc,#f6c0
	in a,(c)
	or c
	out (c),a
	xor c
	out (c),a
	pop af
	ret
.l634b
	push bc
	push af
	push bc
	ld c,#0e
	call l6339
	pop bc
	pop af
	ld b,#f7
	ld a,#92
	out (c),a
	push bc
	set 6,c
	ld b,#f6
	out (c),c
	ld b,#f4
	in a,(c)
	pop bc
	push af
	ld a,#82
	out (c),a
	pop af
	pop bc
	ret
.l6373 equ $ + 4
	dw l6399,#1e28,#0200,l63f3
	dw #002a,#0100,l63f3,#1428
	dw #0100,l6410,#7838,#0201
	dw l6410,#8438,#0301,l63ba
	dw #a038,#0201,l63ba,#002a
	dw #0000
.l6399
	db #02,#fe,#0f,#0c,#0d,#14,#0b,#14
	db #09,#14,#08,#12,#07,#13,#06,#11
	db #05,#12,#04,#13,#04,#12,#03,#11
	db #02,#18,#01,#1c,#01,#1f,#00,#01
.l63ba equ $ + 1
	db #ff,#01,#00,#0f,#0c,#0d,#12,#0b
	db #18,#09,#12,#08,#0c,#08,#06,#07
	db #00,#07,#06,#06,#0c,#06,#12,#05
	db #18,#05,#12,#04,#0c,#04,#06,#04
	db #00,#03,#06,#03,#0c,#03,#12,#02
	db #18,#02,#12,#02,#0c,#02,#06,#01
	db #00,#01,#06,#01,#0c,#01,#12,#00
.l63f3 equ $ + 2
	db #01,#ff,#01,#fe,#0d,#00,#0d,#0a
	db #0a,#14,#09,#1e,#07,#00,#07,#0a
	db #04,#14,#04,#1e,#02,#00,#02,#0a
.l6410 equ $ + 7
	db #01,#14,#01,#1e,#00,#01,#ff,#01
	db #01,#0f,#20,#0e,#2b,#0c,#20,#0b
	db #2b,#09,#20,#08,#2b,#05,#20,#04
	db #2b,#07,#20,#06,#2b,#06,#20,#05
	db #2b,#04,#20,#04,#2b,#03,#20,#03
	db #2b,#03,#20,#02,#2b,#02,#20,#02
	db #2b,#01,#20,#01,#2b,#01,#20,#01
	db #2b,#01,#20,#01,#2b,#01,#20,#01
.l644f equ $ + 6
.l644d equ $ + 4
	db #2b,#00,#01,#ff,#00,#00,#d0,#00
.l6455 equ $ + 4
	db #00,#00,#01,#ff,#d0,#01,#00,#10
.l645b equ $ + 2
	db #00,#ff,#d0,#01,#00,#10,#00,#10
	db #00,#0a,#00,#07,#00,#06,#00,#02
	db #00,#02,#00,#01,#00,#00,#01,#ff
.l6471
	db #00,#01,#00,#0a,#02,#0a,#ff,#09
	db #00,#0a,#00,#09,#00,#0a,#01,#07
	db #00,#06,#00,#06,#00,#04,#ff,#06
	db #00,#04,#00,#05,#00,#03,#01,#05
	db #00,#03,#00,#04,#00,#02,#ff,#04
	db #00,#01,#00,#03,#00,#02,#01,#03
	db #00,#02,#00,#03,#00,#02,#ff,#02
	db #00,#01,#00,#02,#00,#01,#01,#02
	db #00,#01,#00,#01,#00,#01,#ff,#01
	db #00,#01,#00,#01,#00,#01,#00,#00
.l64c3 equ $ + 2
	db #01,#ff,#00,#01,#00,#09,#30,#08
	db #30,#07,#00,#07,#30,#07,#00,#05
	db #30,#06,#00,#04,#30,#06,#00,#04
	db #30,#06,#00,#04,#30,#05,#00,#03
	db #30,#05,#00,#03,#30,#04,#00,#03
	db #30,#04,#00,#02,#30,#03,#00,#02
	db #30,#03,#00,#01,#30,#03,#00,#01
	db #30,#02,#00,#01,#30,#02,#00,#01
	db #30,#02,#00,#01,#30,#01,#00,#01
	db #30,#01,#00,#01,#30,#01,#00,#01
.l6515 equ $ + 4
	db #30,#00,#01,#ff,#00,#01,#00,#10
	db #00,#ff,#00,#01,#00,#04,#fe,#06
	db #ff,#09,#00,#09,#01,#09,#02,#09
	db #01,#08,#00,#08,#ff,#08,#fe,#08
	db #ff,#07,#00,#07,#01,#06,#04,#06
	db #01,#05,#00,#05,#ff,#04,#fe,#04
	db #ff,#04,#00,#04,#01,#03,#02,#03
	db #01,#03,#00,#03,#ff,#02,#fe,#02
	db #ff,#02,#00,#02,#01,#01,#02,#01
	db #01,#00,#01,#ff,#00,#01,#00,#04
	db #fe,#0c,#ff,#08,#01,#06,#ff,#04
	db #01,#03,#ff,#03,#fc,#08,#ff,#05
	db #01,#03,#ff,#03,#01,#02,#ff,#02
	db #01,#01,#ff,#01,#01,#00,#01,#ff
.l6581
	dw l65c3,#1428,l65c3,#4428
	dw l65ff,#002a,l65e2,#002a
	dw l661c,#002a,l65b0,#1428
	dw l659d
.l659d equ $ + 2
	db #28,#14,#01,#00,#0d,#18,#03,#18
	db #06,#18,#03,#18,#02,#18,#01,#18
.l65b0 equ $ + 5
	db #02,#18,#00,#01,#ff,#01,#00,#0d
	db #0c,#03,#0c,#07,#0c,#03,#0c,#02
	db #0c,#01,#0c,#01,#0c,#00,#01,#ff
.l65c3
	db #01,#fe,#0c,#06,#06,#04,#05,#03
	db #04,#03,#03,#02,#02,#01,#04,#06
	db #03,#04,#02,#03,#02,#03,#01,#02
.l65e2 equ $ + 7
	db #01,#02,#01,#01,#00,#01,#ff,#01
	db #00,#0c,#1e,#07,#1a,#05,#18,#02
	db #16,#02,#16,#02,#16,#05,#1e,#02
	db #1a,#02,#18,#01,#16,#01,#16,#01
.l65ff equ $ + 4
	db #16,#00,#01,#ff,#01,#00,#0c,#14
	db #07,#0f,#05,#0e,#02,#0c,#02,#0c
	db #02,#0c,#04,#14,#02,#0f,#02,#0e
	db #01,#0c,#01,#0c,#01,#0c,#00,#01
.l661c equ $ + 1
	db #ff,#02,#00,#0b,#1f,#09,#1e,#08
	db #1d,#08,#1c,#07,#1b,#07,#1a,#06
	db #19,#06,#18,#05,#17,#04,#16,#03
	db #15,#03,#15,#02,#14,#02,#14,#02
	db #14,#02,#14,#01,#14,#01,#14,#00
.l6648 equ $ + 5
.l6645 equ $ + 2
	db #01,#ff,#0c,#00,#ff,#03,#00,#48
	db #00,#05,#00,#78,#00
.l6650
	dw #0001,l64c3,l6455,l6645
	dw l66f0,l6796,l6645,l66f0
	dw l6796,l6645,l66f0,l6796
	dw l6645,l66f0,l6796,l66f6
	dw l66f0,l6796,l66fe,l66f0
	dw l6796,l66f6,l66f0,l6796
	dw l6706,l66f0,l679c,#0001
	dw l64c3,l645b,#0002,l670e
	dw #0002,l670e,#0002,l670e
	dw #0002,l670e,#0003,#0050
	dw #0002,l670e,#0002,l670e
	dw #0002,l670e,#0002,l670e
	dw #0003,#0048,#0002,l6737
	dw #0003,#0050,#0002,l6737
	dw #0003,#005c,#0002,l6737
	dw #0003,#0048,#0002,l676a
	dw #0002,l6737,#0003,#0050
	dw #0002,l6737,#0003,#005c
	dw #0002,l6737,#0003,#0048
	dw #0002,l676a,#0002,l6650
.l66f0
	db #03,#02,#07,#02,#02,#ff
.l66f6
	db #02,#1d,#1b,#17,#1d,#1b,#17,#ff
.l66fe
	db #02,#1d,#00,#1d,#1b,#17,#17,#ff
.l6706
	db #02,#1d,#1b,#17,#17,#00,#00,#ff
.l670e
	dw l6645,l6728,l6796,l672e
	dw l6728,l6796,l6731,l6728
	dw l6796,l6734,l6728,l6796
	db #c9,#00
.l6728
	db #03,#0f,#0f,#0f,#0f,#ff
.l672e
	db #0c,#0f,#ff
.l6731
	db #0c,#14,#ff
.l6734
	db #0c,#17,#ff
.l6737
	dw l6757,l6751,l679c,l675a
	dw l6751,l679c,l6760,l6751
	dw l679c,l6766,l6751,l679c
	db #c9,#00
.l6751
	db #03,#0f,#17,#14,#0f,#ff
.l6757
	db #0c,#17,#ff
.l675a
	db #03,#00,#00,#17,#17,#ff
.l6760
	db #03,#17,#17,#17,#00,#ff
.l6766
	db #06,#17,#17,#ff
.l676a
	dw l6790,l6784,l679c,l6645
	dw l6784,l679c,l6793,l678a
	dw l679c,l6645,l678a,l679c
	dw #00c9
.l6784
	db #03,#13,#1b,#18,#13,#ff
.l678a
	db #03,#11,#19,#16,#11,#ff
.l6790
	db #0c,#1b,#ff
.l6793
	db #0c,#19,#ff
.l6796
	db #03,#07,#07,#06,#06,#ff
.l679c
	db #03,#07,#06,#02,#01,#ff
.l67a2
	db #10,#00,#ff
.l67a5
	dw #0003,#0018,#0005,#0046
	dw #0001,l6471,l6515,#0002
	dw l67e1,#0002,l67e1,l6805
	dw l6805,l67a2,l680d,l680d
	dw l67a2,l680d,l680d,l67a2
	dw l6815,l6815,l67a2,#0001
	dw l644f,l644f,l67a2,l6805
	dw l67a2,#0000
.l67e1
	dw l67ef,l67ef,l67a2,l67f7
	dw l67f7,l67a2,#00c9
.l67ef
	db #02,#16,#1d,#1b,#1d,#18,#00,#ff
.l67f7
	db #02,#19,#16,#00,#18,#19,#1b,#ff
	dw l6805,l6805,l67a2
.l6805
	db #02,#16,#18,#19,#1b,#1c,#1d,#ff
.l680d
	db #02,#16,#18,#19,#1b,#1d,#1f,#ff
.l6815
	db #02,#20,#22,#00,#00,#00
.l681b
	dw #ff00,l6827,l6827,l6827
	dw l6648,l67a5
.l6827
	dw #0003,#0048,#0005,#0032
	dw #0001,l6455,l644f,l6956
	dw l6956,l6960
.l683b
	dw #0001,l64c3,l645b,#0003
	dw #0048,#0002,l688d,#0003
	dw #005c,#0002,l688d,#0003
	dw #0048,#0002,l68a7,#0001
	dw l64c3,l6455,l6953,l6b0d
	dw l6b19,l6953,l6b10,l6b19
	dw l6953,l6b13,l6b3d,l6953
	dw l6b16,l6b2b,#0001,l6471
	dw l645b,#0002,l6939,#0002
	dw l6939,#0002,l6939,#0002
	dw l683b
.l688d
	dw l6963,l6aa1,l6b19,l696d
	dw l6aa1,l6b19,l6963,l6aa1
	dw l6b19,l696d,l6aa1,l6b2b
	dw #00c9
.l68a7
	dw l6977,l6ab3,l6b3d,l6989
	dw l6ac5,l6b3d,l6993,l6ad7
	dw l6b3d,l699d,l6ab3,l6b3d
	dw l69a7,l6ac5,l6b3d,l69b1
	dw l6ad7,l6b3d,l69bb,l6ae9
	dw l6b3d,l69c5,l6ab3,l6b19
	dw l69c8,l6ab3,l6b3d,l69d2
	dw l6ac5,l6b3d,l69dc,l6ad7
	dw l6b3d,l69e6,l6ab3,l6b3d
	dw l69f0,l6ac5,l6b3d,l69fa
	dw l6ad7,l6b3d,l6a00,l6ae9
	dw l6b3d,l6a03,l6ae9,l6b19
	dw l6a15,l6ab3,l6b3d,l6a1b
	dw l6ac5,l6b3d,l6a21,l6ad7
	dw l6b3d,l6a27,l6ab3,l6b3d
	dw l6a31,l6ac5,l6b3d,l6a3b
	dw l6ad7,l6b3d,l6a45,l6ae9
	dw l6b3d,l6a4f,l6afb,l6b2b
	dw #00c9
.l6939
	dw l6a52,l6ab3,l6b3d,l6a64
	dw l6ac5,l6b3d,l6a64,l6ad7
	dw l6b3d,l6a52,l6ab3,l6b2b
	dw #00c9
.l6956 equ $ + 3
.l6953
	db #10,#00,#ff,#01,#11,#0f,#0d,#0c
.l6960 equ $ + 5
	db #0a,#0d,#11,#16,#ff,#08,#00,#ff
.l6963
	db #02,#11,#11,#11,#11,#11,#11,#00
.l696d equ $ + 2
	db #16,#ff,#02,#00,#14,#00,#00,#00
.l6977 equ $ + 4
	db #00,#00,#00,#ff,#01,#00,#00,#18
	db #00,#13,#00,#0f,#00,#16,#00,#00
.l6989 equ $ + 6
	db #14,#00,#00,#13,#00,#ff,#02,#00
	db #11,#13,#14,#13,#00,#0f,#00,#ff
.l6993
	db #02,#11,#00,#00,#0f,#00,#00,#11
.l699d equ $ + 2
	db #00,#ff,#02,#13,#00,#00,#00,#00
.l69a7 equ $ + 4
	db #13,#14,#16,#ff,#02,#18,#00,#00
.l69b1 equ $ + 6
	db #16,#00,#00,#1d,#00,#ff,#02,#00
	db #1b,#19,#18,#19,#00,#00,#16,#ff
.l69bb
	db #02,#00,#00,#18,#00,#00,#19,#18
.l69c8 equ $ + 5
.l69c5 equ $ + 2
	db #13,#ff,#10,#1d,#ff,#02,#18,#00
.l69d2 equ $ + 7
	db #00,#00,#00,#00,#13,#18,#ff,#02
	db #16,#00,#00,#00,#00,#00,#11,#16
.l69dc equ $ + 1
	db #ff,#02,#14,#00,#00,#13,#00,#00
.l69e6 equ $ + 3
	db #0a,#00,#ff,#02,#0c,#00,#00,#14
.l69f0 equ $ + 5
	db #00,#00,#13,#00,#ff,#02,#11,#00
.l69fa equ $ + 7
	db #00,#00,#00,#00,#0f,#11,#ff,#04
.l6a00 equ $ + 5
	db #18,#00,#00,#14,#ff,#10,#1d,#ff
.l6a03
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#13,#00,#00,#14,#00,#00,#16
.l6a15 equ $ + 2
	db #00,#ff,#04,#18,#00,#00,#13,#ff
.l6a21 equ $ + 6
.l6a1b
	db #04,#16,#00,#00,#11,#ff,#04,#14
.l6a27 equ $ + 4
	db #00,#00,#11,#ff,#02,#13,#00,#00
.l6a31 equ $ + 6
	db #00,#00,#0f,#11,#18,#ff,#02,#16
	db #00,#00,#14,#00,#00,#11,#00,#ff
.l6a3b
	db #02,#0c,#00,#00,#14,#00,#00,#13
.l6a45 equ $ + 2
	db #00,#ff,#02,#11,#00,#00,#00,#00
.l6a52 equ $ + 7
.l6a4f equ $ + 4
	db #00,#0f,#11,#ff,#10,#1d,#ff,#01
	db #18,#14,#11,#18,#14,#11,#18,#14
	db #11,#18,#14,#11,#18,#14,#11,#00
.l6a64 equ $ + 1
	db #ff,#01,#16,#13,#0f,#16,#13,#0f
	db #16,#13,#0f,#16,#13,#0f,#16,#13
	db #0f,#00,#ff,#02,#13,#00,#00,#00
	db #00,#0f,#11,#18,#ff,#02,#16,#00
	db #00,#14,#00,#00,#11,#00,#ff,#02
	db #0c,#00,#00,#14,#00,#00,#13,#00
	db #ff,#02,#11,#00,#00,#00,#00,#00
.l6aa1 equ $ + 6
	db #0f,#11,#ff,#10,#1d,#ff,#01,#05
	db #07,#08,#0c,#05,#07,#08,#0c,#05
	db #07,#08,#0c,#0d,#0a,#08,#07,#ff
.l6ab3
	db #01,#0c,#00,#0c,#0c,#0c,#00,#0c
	db #0c,#0c,#00,#0c,#0c,#0c,#00,#0c
.l6ac5 equ $ + 2
	db #0c,#ff,#01,#0a,#00,#0a,#0a,#0a
	db #00,#0a,#0a,#0a,#00,#0a,#0a,#0a
.l6ad7 equ $ + 4
	db #00,#0a,#0a,#ff,#01,#03,#00,#03
	db #03,#03,#00,#03,#03,#03,#00,#03
.l6ae9 equ $ + 6
	db #03,#03,#00,#03,#03,#ff,#01,#05
	db #00,#05,#05,#05,#00,#05,#05,#05
	db #00,#05,#05,#05,#00,#05,#05,#ff
.l6afb
	db #01,#11,#00,#11,#11,#11,#00,#11
	db #11,#11,#00,#11,#11,#11,#00,#11
.l6b10 equ $ + 5
.l6b0d equ $ + 2
	db #11,#ff,#10,#0c,#ff,#10,#0a,#ff
.l6b19 equ $ + 6
.l6b16 equ $ + 3
.l6b13
	db #10,#03,#ff,#10,#05,#ff,#01,#02
	db #00,#01,#00,#07,#00,#06,#00,#02
	db #00,#01,#01,#07,#00,#06,#00,#ff
.l6b2b
	db #01,#02,#00,#01,#00,#06,#00,#01
	db #00,#01,#00,#07,#06,#07,#06,#07
.l6b3d equ $ + 2
	db #06,#ff,#01,#02,#00,#01,#00,#04
	db #00,#03,#00,#02,#00,#01,#00,#07
	db #06,#07,#00,#ff
;
.init_music	; added by Megachur
;
; WARNING - theme 1,2,3 are the same, see above at l681b !
;
	cp 1
	jr z,call_real_init_music
	add a,2
call_real_init_music
	jp real_init_music
;
.music_info
	db "Altered Beast (1989)(Activision)(Paul Hiley)",0
	db "",0

	read "music_end.asm"
