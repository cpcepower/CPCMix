; Music of Airwolf (1985)(Amsoft)()()
; Ripped by Megachur the 04/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AIRWOLF.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #64e8
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

.l64e8
	db #1c,#01,#38,#02,#2f,#00,#00,#00
	db #00,#00,#3b,#00,#00,#00,#7b,#01
	db #47,#00,#d4,#00,#38,#02,#2f,#00
	db #bd,#00,#00,#00,#3b,#00,#9f,#00
	db #7b,#01,#47,#00,#8e,#00,#38,#02
	db #2f,#00,#00,#00,#00,#00,#3b,#00
	db #00,#00,#7b,#01,#47,#00,#77,#00
	db #38,#02,#2f,#00,#7e,#00,#00,#00
	db #3b,#00,#9f,#00,#7d,#02,#47,#00
	db #8e,#00,#38,#02,#2f,#00,#00,#00
	db #00,#00,#3b,#00,#00,#00,#7b,#01
	db #47,#00,#77,#00,#38,#02,#2f,#00
	db #7e,#00,#00,#00,#3b,#00,#9f,#00
	db #7b,#01,#47,#00,#8e,#00,#38,#02
	db #2f,#00,#00,#00,#00,#00,#3b,#00
	db #00,#00,#7b,#01,#47,#00,#9f,#00
	db #38,#02,#2f,#00,#00,#00,#00,#00
	db #3b,#00,#7e,#00,#7d,#02,#47,#00
	db #bd,#00,#38,#02,#2f,#00,#00,#00
	db #00,#00,#3b,#00,#00,#00,#7b,#01
	db #47,#00,#d4,#00,#38,#02,#2f,#00
	db #00,#00,#00,#00,#3b,#00,#00,#00
	db #7b,#01,#47,#00,#ee,#00,#38,#02
	db #2f,#00,#00,#00,#00,#00,#3b,#00
	db #d4,#00,#7b,#01,#47,#00,#fd,#00
	db #38,#02,#2f,#00,#00,#00,#00,#00
	db #3b,#00,#3e,#01,#7d,#02,#47,#00
	db #1c,#01,#38,#02,#2f,#00,#00,#00
	db #00,#00,#3b,#00,#00,#00,#7b,#01
	db #47,#00,#d4,#00,#38,#02,#2f,#00
	db #bd,#00,#00,#00,#3b,#00,#9f,#00
	db #7b,#01,#47,#00,#8e,#00,#38,#02
	db #2f,#00,#00,#00,#00,#00,#3b,#00
	db #00,#00,#7b,#01,#47,#00,#77,#00
	db #38,#02,#2f,#00,#7e,#00,#00,#00
	db #3b,#00,#9f,#00,#7d,#02,#47,#00
	db #8e,#00,#38,#02,#2f,#00,#00,#00
	db #00,#00,#3b,#00,#00,#00,#7b,#01
	db #47,#00,#77,#00,#38,#02,#2f,#00
	db #7e,#00,#00,#00,#3b,#00,#9f,#00
	db #7b,#01,#47,#00,#8e,#00,#38,#02
	db #2f,#00,#00,#00,#00,#00,#3b,#00
	db #00,#00,#7b,#01,#47,#00,#9f,#00
	db #38,#02,#2f,#00,#00,#00,#00,#00
	db #3b,#00,#7e,#00,#7d,#02,#47,#00
	db #bd,#00,#38,#02,#2f,#00,#00,#00
	db #00,#00,#3b,#00,#00,#00,#7b,#01
	db #47,#00,#d4,#00,#38,#02,#2f,#00
	db #00,#00,#00,#00,#3b,#00,#00,#00
	db #7b,#01,#47,#00,#ee,#00,#38,#02
	db #2f,#00,#00,#00,#00,#00,#3b,#00
	db #d4,#00,#7b,#01,#47,#00,#fd,#00
	db #38,#02,#2f,#00,#00,#00,#00,#00
	db #3b,#00,#3e,#01,#7d,#02,#47,#00
	db #ee,#00,#38,#02,#2f,#00,#00,#00
	db #00,#00,#3b,#00,#00,#00,#7d,#02
	db #47,#00,#b2,#00,#e3,#03,#3b,#00
	db #9f,#00,#00,#00,#2f,#00,#86,#00
	db #7d,#02,#27,#00,#77,#00,#e3,#03
	db #3b,#00,#00,#00,#00,#00,#2f,#00
	db #00,#00,#7d,#02,#27,#00,#59,#00
	db #e3,#03,#3b,#00,#5e,#00,#00,#00
	db #2f,#00,#86,#00,#7d,#02,#27,#00
	db #77,#00,#bb,#03,#3b,#00,#00,#00
	db #00,#00,#2f,#00,#00,#00,#30,#04
	db #27,#00,#59,#00,#bb,#03,#3b,#00
	db #5e,#00,#00,#00,#2f,#00,#86,#00
	db #7d,#02,#27,#00,#77,#00,#bb,#03
	db #3b,#00,#00,#00,#00,#00,#2f,#00
	db #00,#00,#7d,#02,#27,#00,#86,#00
	db #bb,#03,#3b,#00,#00,#00,#00,#00
	db #2f,#00,#6a,#00,#7d,#02,#27,#00
	db #9f,#00,#bb,#03,#3b,#00,#00,#00
	db #00,#00,#2f,#00,#00,#00,#30,#04
	db #27,#00,#b2,#00,#bb,#03,#3b,#00
	db #00,#00,#00,#00,#2f,#00,#00,#00
	db #7d,#02,#27,#00,#bd,#00,#bb,#03
	db #3b,#00,#00,#00,#00,#00,#2f,#00
	db #b2,#00,#7d,#02,#27,#00,#d4,#00
	db #bb,#03,#3b,#00,#00,#00,#00,#00
	db #2f,#00,#0c,#01,#7d,#02,#27,#00
	db #ee,#00,#bb,#03,#3b,#00,#00,#00
	db #00,#00,#2f,#00,#00,#00,#30,#04
	db #27,#00,#b2,#00,#bb,#03,#3b,#00
	db #9f,#00,#00,#00,#2f,#00,#86,#00
	db #7d,#02,#27,#00,#77,#00,#bb,#03
	db #3b,#00,#00,#00,#00,#00,#2f,#00
	db #00,#00,#7d,#02,#27,#00,#59,#00
	db #bb,#03,#3b,#00,#5e,#00,#00,#00
	db #2f,#00,#86,#00,#7d,#02,#27,#00
	db #77,#00,#bb,#03,#3b,#00,#00,#00
	db #00,#00,#2f,#00,#00,#00,#30,#04
	db #27,#00,#59,#00,#bb,#03,#3b,#00
	db #5e,#00,#00,#00,#2f,#00,#86,#00
	db #7d,#02,#27,#00,#77,#00,#bb,#03
	db #3b,#00,#00,#00,#00,#00,#2f,#00
	db #00,#00,#7d,#02,#27,#00,#43,#00
	db #bb,#03,#3b,#00,#47,#00,#00,#00
	db #2f,#00,#59,#00,#7d,#02,#27,#00
	db #4f,#00,#bb,#03,#3b,#00,#00,#00
	db #00,#00,#2f,#00,#00,#00,#30,#04
	db #27,#00,#00,#00,#bb,#03,#3b,#00
	db #00,#00,#00,#00,#2f,#00,#00,#00
	db #7d,#02,#27,#00,#00,#00,#00,#00
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
.l68af equ $ + 7
.l68ae equ $ + 6
.l68ac equ $ + 4
.l68ab equ $ + 3
	db #c3,#89,#7d,#05,#00,#00,#00,#f6
	db #e6,#fc,#e6,#02,#e7,#08,#e7,#0e
	db #e7,#14,#e7
	ld a,(l68ab)
	cp #00
	jr z,l68c9
	dec a
	ld (l68ab),a
	jp l68ee
.l68c9
	ld a,#05
	ld (l68ab),a
	ld a,(l68ae)
	cp #00
	jp z,#7cb7
	dec a
	ld (l68ae),a
	ld hl,(l68ac)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l68ac),hl
	ex de,hl
	ld de,#1828
	call #6be4
	call l6b79
.l68ee
	call l6b79
	ld hl,#79c5
	ld a,(#79ea)
	cp (hl)
	jr nz,l6901
	inc hl
	ld a,(#79eb)
	cp (hl)
	jr z,l693b
.l6901
	ld ix,#79ed
	bit 0,(ix+#00)
	jr z,l6913
	ld a,(#79f0)
	inc a
	inc a
	ld (#79f0),a
.l6913
	bit 1,(ix+#00)
	jr z,l6921
	ld a,(#79f0)
	dec a
	dec a
	ld (#79f0),a
.l6921
	bit 2,(ix+#00)
	jr z,l692e
	ld a,(#79f1)
	inc a
	ld (#79f1),a
.l692e
	bit 3,(ix+#00)
	jr z,l693b
	ld a,(#79f1)
	dec a
	ld (#79f1),a
.l693b
	call #79ad
	ld hl,(#79c5)
	jp #7b20
	ret
	call l695f
	ld b,#06
.l694a
	push bc
	ld hl,(l68ac)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l68ac),hl
	ex de,hl
	ld de,#14e8
	call #6be4
	pop bc
	djnz l694a
.l695f
	ld a,#06
	ld (l68ae),a
	ld hl,l68af
	ld (l68ac),hl
	ld a,#05
	ld (l68ab),a
	ret
.l6970
	ld bc,#703a
	ld l,c
	cp #01
	jp z,l69f7
	cp #03
	jp z,l69a9
	cp #09
	jp z,l69d5
	cp #0b
	jp z,l6993
	cp #08
.l698a
	jp z,l698a
	cp #0c
	jp z,l69c0
	ret
.l6993
	ld a,#01
	ld (#0fdb),a
	ld (#10a3),a
	ld a,#49
	ld (#116b),a
	ld a,#4d
	ld (#1233),a
	jp #7c9d
	ret
.l69a9
	ld a,#01
	ld (#0d7a),a
	ld (#0d7b),a
	ld (#0d7c),a
	ld (#0d7d),a
	ld (#0d7e),a
	ld (#0d7f),a
	jp #7c9d
.l69c0
	ld a,#01
	ld (#0748),a
	ld (#0749),a
	ld (#074a),a
	ld (#074b),a
	ld (#074c),a
	jp #7c9d
	ret
.l69d5
	ld a,#04
	ld (#0ed9),a
	ld a,#03
	ld (#0eda),a
	ld a,#04
	ld (#0edb),a
	ld a,#03
	ld (#0edc),a
	ld a,#04
	ld (#0edd),a
	ld a,#03
	ld (#0ede),a
	jp #7c9d
	ret
.l69f7
	ld a,#01
	ld (#04eb),a
	ld (#05b3),a
	ld (#067b),a
	ld a,#49
	ld (#0743),a
	ld a,#4d
	ld (#080b),a
	jp #7c9d
	ret
	ld hl,#7511
	ld a,#01
	ld (hl),a
	jp #7c9d
	ret
	ld a,(l6970)
	sub #01
	ld (l6970),a
	ret
	ld a,(l6970)
	add #01
	ld (l6970),a
	ret
	ld a,(l6970)
	add #04
	ld (l6970),a
	ret
	ld a,(l6970)
	sub #04
	ld (l6970),a
	ret
	ld a,#01
	ld (l6970),a
	ret
	nop
	ld a,#4d
	ld (#0fdb),a
	ld (#10a3),a
	ld (#116b),a
	ld (#1233),a
	ld a,#37
	ld (#0d7a),a
	ld a,#3a
	ld (#0d7b),a
	ld a,#37
	ld (#0d7c),a
	ld a,#37
	ld (#0d7d),a
	ld a,#3a
	ld (#0d7e),a
	ld a,#37
	ld (#0d7f),a
	ld a,#40
	ld (#0ed9),a
	ld a,#01
	ld (#0eda),a
	ld (#0edb),a
	ld (#0edc),a
	ld (#0edd),a
	ld (#0ede),a
	ld a,#4d
	ld (#04eb),a
	ld (#05b3),a
	ld (#067b),a
	ld (#0743),a
	ld (#080b),a
	ld a,#3a
	ld (#0748),a
	ld (#0749),a
	ld a,#37
	ld (#074a),a
	ld a,#3a
	ld (#074b),a
	ld a,#37
	ld (#074c),a
	ret
.l6ab5 equ $ + 5
.l6ab3 equ $ + 3
.l6ab2 equ $ + 2
.l6ab1 equ $ + 1
.l6ab0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
;
.init_music
.l6abe	; init music
;
	ld a,#07
	ld c,#18
	call #bd34
	ld a,#06
	ld c,#0a	;  - soundfx helicopter airwolf
	call #bd34
	ld a,#08
	ld c,#0b
	call #bd34
	ld a,#09
	ld c,#0b
	call #bd34
	ld a,#0a
	ld c,#10
	call #bd34
	ld a,#0d
	ld c,#0a
	call #bd34
	ld a,#0b
	ld c,#9b
	call #bd34
	ld a,#0c
	ld c,#00
	call #bd34
	ld hl,l64e8
	ld (l6ab3),hl
	ld a,#8c
	ld (l6ab2),a
	ld b,#96
	ld a,#07
	ld (l6ab1),a
	ret
;
.play_music
.l6b09
;
	ld hl,(l6ab3)
	ld a,(hl)
	or a
	jr z,l6b1f
	ld a,#00
	ld c,(hl)
	call #bd34
	inc hl
	ld a,#01
	ld c,(hl)
	call #bd34
	jr l6b20
.l6b1f
	inc hl
.l6b20
	inc hl
	ld a,(hl)
	or a
	jr z,l6b34
	ld a,#02
	ld c,(hl)
	call #bd34
	inc hl
	ld a,#03
	ld c,(hl)
	call #bd34
	jr l6b35
.l6b34
	inc hl
.l6b35
	inc hl
	inc hl
	inc hl
	ld (l6ab3),hl
	ld a,(l6ab2)
	dec a
	ld (l6ab2),a
	ret nz
	ld hl,l64e8	; reset music
	ld (l6ab3),hl
	ld a,#8c
	ld (l6ab2),a
	ret
;
.init_music_interrupt
.l6b4f	; init play music interrupt
;
	ld b,#81
	ld c,#00
	ld de,l6b5d
	ld hl,l6ab5
	call #bcd7
	ret
;
.play_music_interrupt
.l6b5d	; play music interrupt
;
	push hl
	push bc
	push af
	push de
	ld a,(l6ab1)
	dec a
	cp #00
	ld (l6ab1),a
	jr nz,l6b74
	call l6b09
	ld a,#07
	ld (l6ab1),a
.l6b74
	pop de
	pop af
	pop bc
	pop hl
	ret
.l6b79
	push bc
	ld a,#0c
	ld c,#02
	call #bd34
	ld a,#06
	ld c,#0f
	call #bd34
	ld a,#0d
	ld c,#09
	call #bd34
	pop bc
	ld a,#01
	ld (l6ab0),a
	ret
	ld a,#0d
	ld c,#0a
	call #bd34
	ld a,#0c
	ld c,#00
	call #bd34
	ld a,#06
	ld c,#0a
	call #bd34
	ret
	db #00,#00,#00,#00,#00
;
; #7d23
; call #6abe
; call #6b4f
; ret
;
.music_info
	db "Airwolf (1985)(Amsoft)()",0
	db "",0

	read "music_end.asm"
