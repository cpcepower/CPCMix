; Music of Sword Slayer (1988)(Players Software)(Andy Severn)()
; Ripped by Megachur the 27/07/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SWORDSLA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #6500

	read "music_header.asm"

	jp l65aa
	jp l6654
	jp l6620
.l650a equ $ + 1
.l6509
	db #00,#00,#00
;
.test_player
;
	ld a,#00
	ld (l6509),a
	call l65aa
.l6514
	halt
	call l6654
	ld bc,#7ffe
	in a,(c)
	bit 0,a
	jp nz,l6514
	jp l6620
.l652c equ $ + 7
.l652b equ $ + 6
.l6526 equ $ + 1
.l6525
	db #00
	ld a,h
	ld c,l
	jp lf600
	db #00,#01
.l6532 equ $ + 5
.l6531 equ $ + 4
	db #00,#00,#00,#00,#00,#38,#0f,#00
.l6536 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#0c,#01
	db #00,#08,#00,#ff,#00,#00,#00,#01
	db #08,#00,#00,#04,#00,#00,#00,#00
.l654d
	db #00,#f7,#14,#0a,#01,#01,#00,#08
.l655b equ $ + 6
	db #04,#79,#6a,#01,#79,#6a,#00,#00
	db #00,#00,#00,#0f,#01,#01,#02,#01
	db #ff,#00,#00,#02,#03,#09,#00,#00
.l6572 equ $ + 5
	db #01,#00,#00,#00,#00,#00,#ef,#ff
	db #ff,#00,#00,#00,#00,#00,#00,#00
.l6580 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0a,#01,#02,#02,#ff,#00,#00
	db #04,#05,#0a,#00,#00,#00,#01,#00
.l6597 equ $ + 2
	db #00,#00,#00,#00,#df,#ff,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00
;
.init_music
.l65aa
;
	call l6628
	push ix
	ld ix,l6536
	ld a,(l6509)
	add a
	ld b,a
	add a
	add b
	ld l,a
	ld h,#00
	ld de,l6a67
	add hl,de
	ld (l65cf),hl
	inc hl
	inc hl
	ld (l65d9),hl
	inc hl
	inc hl
	ld (l65e3),hl
.l65cf equ $ + 1
	ld hl,(l6a79)
	call l6608
	ld ix,l655b
.l65d9 equ $ + 1
	ld hl,(l6a80)
	call l6608
	ld ix,l6580
.l65e3 equ $ + 1
	ld hl,(l6a83)
	call l6608
	ld a,#01
	ld (l6525),a
	ld h,#07
	ld l,#38
	call l6526
	ld a,(l6509)
	cp #01
	pop ix
	ret nz
.l65fc
	halt
	call l6654
	ld a,(l6525)
	and a
	jp nz,l65fc
	ret
.l6608
	ld (ix+#20),l
	ld (ix+#23),l
	ld (ix+#21),h
	ld (ix+#24),h
	call l6923
	ld (ix+#02),#01
	res 7,(ix+#0c)
	ret
;
.stop_music
.l6620
;
	call l6628
	xor a
	ld (l6525),a
	ret
.l6628
	ld h,#07
	ld l,#3f
	call l6526
	ld hl,l652b
	ld de,l652c
	ld bc,#000a
	ld (hl),#00
	ldir
	ld a,#38
	ld (l6532),a
.l6641
	ld b,#0b
	ld h,#00
	ld de,l652b
.l6648
	ld a,(de)
	ld l,a
	push bc
	call l6526
	pop bc
	inc h
	inc de
	djnz l6648
	ret
;
.play_music
.l6654
;
	ld a,(l6525)
	and a
	jr z,l6682
	push ix
	ld ix,l6536
	bit 7,(ix+#0c)
	call z,l6683
	ld ix,l655b
	bit 7,(ix+#0c)
	call z,l6683
	ld ix,l6580
	bit 7,(ix+#0c)
	call z,l6683
	call l6641
	pop ix
.l6682
	ret
.l6683
	ld a,(ix+#02)
	dec (ix+#02)
	jp z,l678d
.l668c
	bit 0,(ix+#0c)
	jr nz,l6700
	bit 1,(ix+#0c)
	jr nz,l66cf
	ld a,(ix+#0b)
	and a
	jr z,l66a3
	dec (ix+#0b)
	jr l6700
.l66a3
	ld a,(ix+#04)
	ld b,(ix+#08)
	add b
	ld (ix+#04),a
	ld b,(ix+#05)
	cp b
	jr z,l66c3
	jr nc,l66bd
	ld a,(ix+#07)
	ld (ix+#0b),a
	jr l6700
.l66bd
	ld a,(ix+#05)
	ld (ix+#04),a
.l66c3
	ld a,(ix+#0c)
	and #fc
	or #02
	ld (ix+#0c),a
	jr l6700
.l66cf
	ld a,(ix+#0b)
	and a
	jr z,l66da
	dec (ix+#0b)
	jr l6700
.l66da
	ld a,(ix+#04)
	ld b,(ix+#0a)
	add b
	ld (ix+#04),a
	bit 7,a
	jr nz,l66f0
	ld a,(ix+#09)
	ld (ix+#0b),a
	jr l6700
.l66f0
	ld (ix+#04),#00
	ld a,(ix+#0c)
	and #fc
	or #02
	ld (ix+#0c),a
	jr l6700
.l6700
	ld a,(ix+#04)
	ld hl,l652b
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
	call l67fb
	pop af
	ld (ix+#03),a
	inc (ix+#10)
	ld a,(ix+#12)
	xor (ix+#10)
	jr nz,l673c
	ld a,(ix+#11)
	ld (ix+#10),a
.l673c
	ld a,(ix+#1a)
	cp #ff
	jr z,l678c
	and a
	jr z,l674b
	dec (ix+#1a)
	jr nz,l678c
.l674b
	dec (ix+#1f)
	jr nz,l675e
	ld a,(ix+#1e)
	ld (ix+#1f),a
	ld a,(ix+#1c)
	xor #01
	ld (ix+#1c),a
.l675e
	bit 0,(ix+#1c)
	ld b,(ix+#1b)
	ld a,(ix+#1d)
	jr z,l676d
	add b
	jr l676e
.l676d
	sub b
.l676e
	ld (ix+#1d),a
	ld c,a
	ld b,#ff
	bit 7,a
	jr nz,l677a
	ld b,#00
.l677a
	ld hl,l652b
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
.l678c
	ret
.l678d
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (ix+#10),#00
.l6797
	ld a,(hl)
	cp #60
	jr z,l67f5
	cp #61
	jp z,l689c
	cp #62
	jp z,l6851
	cp #63
	cp #69
	jp z,l682d
	cp #fe
	jp z,l687e
	ld (ix+#0c),#00
.l67b7 equ $ + 1
	sub #00
	ld (ix+#03),a
.l67bb
	inc hl
	ld a,(hl)
	dec a
	push hl
	ld h,#00
	ld l,a
	ld de,(l650a)
	add hl,de
	ld a,(hl)
	pop hl
	inc hl
	ld (ix+#02),a
	ld a,(ix+#07)
	ld (ix+#0b),a
	ld (ix+#00),l
	ld (ix+#01),h
	call l67fb
	ld a,(ix+#19)
	ld (ix+#1a),a
	ld a,(ix+#1e)
	srl a
	ld (ix+#1f),a
	ld (ix+#1c),#01
	ld (ix+#1d),#00
	jp l668c
.l67f5
	ld (ix+#0c),#02
	jr l67bb
.l67fb
	ld a,(ix+#17)
	and a
	jr nz,l681e
	ld a,(ix+#03)
	inc a
	inc a
	add a
	ld d,#00
	ld e,a
	ld hl,ldf00
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l6811
	ld hl,l652b
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	ret
.l681e
	ld a,(ix+#03)
	neg
	and #1f
	ld (l6531),a
	ld bc,#0000
	jr l6811
.l682d
	xor a
	ld (l654d),a
	ld (l6572),a
	ld (l6597),a
	ld a,#38
	ld (l6532),a
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#17),a
	and a
	jr z,l6893
	ld b,(ix+#18)
	ld a,(l6532)
	and b
	ld (l6532),a
	jr l6893
.l6851
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld de,#0012
	ld hl,l69bc
	inc a
	ld b,a
.l6863
	add hl,de
	djnz l6863
	ld a,(hl)
	ld (ix+#11),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld (ix+#14),h
	ld (ix+#13),l
	pop hl
	ld (ix+#10),#00
	jp l6797
.l687e
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jr nz,l688d
	jp l6915
	jp l6797
.l688d
	ld l,(ix+#15)
	ld h,(ix+#16)
.l6893
	ld (ix+#01),h
	ld (ix+#00),l
	jp l6797
.l689c
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld de,#0009
	ld hl,l696b
	inc a
	ld b,a
.l68ae
	add hl,de
	djnz l68ae
	push hl
	push ix
	pop hl
	ld de,#0005
	add hl,de
	ex de,hl
	pop hl
	ld bc,#0006
	ldir
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	pop hl
	jp l6797
.l68d2
	inc hl
	ld a,(hl)
	inc hl
	push hl
	add a
	add a
	add a
	ld h,#00
	ld l,a
	ld de,l6a27
	add hl,de
	ld (l650a),hl
	pop hl
	jp l6929
.l68e7
	inc hl
	ld a,(hl)
	inc hl
	ld (l67b7),a
	jp l6929
.l68f0
	inc hl
	ld b,(hl)
	inc hl
	ld a,(l67b7)
	add b
	ld (l67b7),a
	jp l6929
	ld (ix+#0c),#ff
	ld (ix+#03),#00
	ld (ix+#04),#00
	inc hl
	ld a,(hl)
	and a
	jp z,l668c
	call l6620
	jp l668c
.l6915
	call l6923
	jp l678d
.l691b
	pop bc
	jp l6620
.l691f
	pop bc
	jp l65aa
.l6923
	ld l,(ix+#20)
	ld h,(ix+#21)
.l6929
	ld a,(hl)
	cp #fa
	jp z,l68f0
	cp #fb
	jp z,l68e7
	cp #fc
	jp z,l68d2
	cp #fd
	jp z,l691f
	cp #fe
	jr z,l696c
	cp #ff
	jr z,l691b
	push hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l6a17
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
.l696b
	ret
.l696c
	ld l,(ix+#23)
	ld h,(ix+#24)
	jr l6929
	db #0f,#01,#00,#0f,#02,#ff,#10,#01
	db #02,#00,#00,#00,#00,#00,#00,#ff
	db #00,#00,#0f,#01,#00,#0f,#09,#ff
	db #1c,#03,#04,#0e,#01,#00,#0e,#02
	db #ff,#ff,#00,#00,#0f,#01,#00,#0f
	db #01,#fa,#ff,#00,#00,#0f,#01,#00
	db #0f,#01,#f8,#ff,#00,#00,#0f,#01
	db #00,#0f,#02,#ff,#01,#02,#05,#09
	db #01,#00,#09,#01,#ff,#ff,#00,#00
.l69bc
	db #0f,#01,#00,#0f,#09,#ff,#01,#02
	db #05,#0f,#01,#00,#0f,#14,#ff,#01
	db #02,#05,#00,#01,#01,#02,#03,#04
	db #05,#06,#07,#08,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#08,#00,#00
	db #0b,#0b,#00,#00,#0b,#0b,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
.l6a17
	dw l6a90,l6a97,l6aa8,l6acd
	dw l6aea,l6b0d,l6b28,l6b43
.l6a27
	db #01,#02,#03,#04,#06,#08,#0c,#10
	db #02,#04,#06,#08,#0c,#10,#18,#20
	db #03,#06,#09,#0c,#12,#18,#24,#30
	db #04,#08,#0c,#10,#18,#20,#30,#40
	db #05,#0a,#0f,#14,#1e,#28,#3c,#50
	db #06,#0c,#12,#18,#24,#30,#48,#60
	db #07,#0e,#15,#1c,#2a,#38,#54,#70
	db #08,#10,#18,#20,#30,#40,#60,#80
.l6a67
	dw l6a79,l6a83,l6a80,l6a79
	dw l6a80,l6a83,l6a79,l6a80
	dw l6a83
.l6a80 equ $ + 7
.l6a79
	db #fc,#07,#fb,#14,#01,#ff,#fe,#02
.l6a83 equ $ + 2
	db #ff,#fe,#03,#02,#04,#02,#05,#02
.l6a90 equ $ + 7
	db #06,#02,#04,#02,#07,#04,#fd,#61
.l6a97 equ $ + 6
	db #03,#62,#00,#00,#08,#fe,#61,#00
	db #62,#00,#29,#05,#30,#06,#60,#02
.l6aa8 equ $ + 7
	db #2c,#05,#2e,#06,#60,#02,#fe,#61
	db #03,#62,#00,#35,#02,#3c,#02,#38
	db #02,#3a,#02,#35,#02,#3c,#02,#38
	db #02,#3a,#02,#35,#02,#3c,#02,#38
	db #02,#3a,#02,#35,#02,#3c,#02,#38
.l6acd equ $ + 4
	db #02,#3a,#02,#fe,#61,#00,#62,#00
	db #48,#02,#4d,#02,#50,#02,#52,#05
	db #50,#02,#4d,#05,#48,#02,#4d,#05
	db #46,#02,#48,#02,#60,#08,#60,#08
.l6aea equ $ + 1
	db #fe,#43,#02,#44,#02,#48,#02,#4d
	db #04,#43,#02,#44,#02,#4d,#04,#4b
	db #01,#48,#01,#46,#02,#44,#02,#43
	db #02,#44,#02,#3f,#02,#41,#02,#60
.l6b0d equ $ + 4
	db #08,#60,#08,#fe,#62,#00,#61,#02
	db #41,#06,#48,#06,#4d,#06,#50,#04
	db #4d,#02,#48,#06,#60,#08,#60,#06
.l6b28 equ $ + 7
	db #60,#02,#61,#00,#62,#00,#fe,#61
	db #00,#48,#02,#4d,#02,#50,#02,#52
	db #05,#50,#02,#4d,#05,#48,#02,#4d
	db #05,#46,#02,#48,#02,#60,#08,#60
.l6b43 equ $ + 2
	db #08,#fe,#43,#02,#44,#02,#41,#06
	db #3f,#02,#41,#02,#60,#08,#fe,#00
	db #00
;
.lf600			; relocated by Megachur
;
	push bc
	push af
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
	pop bc
	ret
;
;.stop_music
;.l0104
;
; xor a
; ld c,a
; .l0106
; push af
; call lf600
; pop af
; inc a
; cp #0f
; jp nz,l0106
; ld a,#07
; ld c,#3f
; jp lf600
;
.ldf00			; relocated by Megachur
;
	db #00,#00,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #d4,#04,#70,#04,#31,#04,#f4,#03
	db #dc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
;
; #0555
; di
; push ix
; call #6503
; pop ix
; ei
; ret
; call #6500
; ld a,#01
; ld (#d60a),a
; ret
; xor a
; ld (#d60a),a
; call #6506
;
.music_info
	db "Sword Slayer (1988)(Players Software)(Andy Severn)",0
	db "",0

	read "music_end.asm"
