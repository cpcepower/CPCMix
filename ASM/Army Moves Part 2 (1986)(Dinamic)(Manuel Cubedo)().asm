; Music of Army Moves Part 2 (1986)(Dinamic)(Manuel Cubedo)()
; Ripped by Megachur the 28/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ARMYMP2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #7148

	read "music_header.asm"

	jr l71b2
	jr l7152
	jr l71ae
	jr l71c8
.l7150
	db #00
.l7151
	db #05
;
.init_music
.l7152
;
	ld hl,(l0064)
	di
	ld (l730f),hl
.l7159
	ld (l730d),hl
.l715c
	ld hl,(l730d)
	ld iy,l7311
	ld b,#03
.l7165
	ld (iy+#00),#00
	ld (iy+#01),#00
	ld (iy+#08),#00
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,e
	and d
	cp #ff
	jr nz,l718b
	ld a,(l7150)
	or a
	ld a,#00
	ld (l7150),a
	jr nz,l71b2
	ld hl,(l730f)
	jr l7159
.l718b
	ld (iy+#02),e
	ld (iy+#03),d
	ld de,#000c
	add iy,de
	djnz l7165
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l730d),hl
	ld hl,l7335
	ex de,hl
	ld bc,#001e
	ldir
	ld hl,l7214
	defs 3,0	; ld (#7522),hl modified by Megachur
.l71ae
	ld a,#28
	jr l71b4
.l71b2
	ld a,#18
.l71b4
	di
	ld (l721e),a
	ld a,#07
	ld c,#b8
	call l72ef
	ld a,#06
	ld c,#1f
	call l72ef
	jr l71f5
.l71c8
	ld a,(l0064)
	cp #02
	jr z,l71dd
	jr c,l71d7
	ld iy,l7329
	jr l71e1
.l71d7
	ld iy,l7311
	jr l71e1
.l71dd
	ld iy,l731d
.l71e1
	call l720b
	ret nz
	ld hl,(l0066)
	di
	ld (iy+#08),#01
	ld (iy+#0a),l
	ld (iy+#0b),h
	ei
	ret
.l71f5
	ld a,#08
	call l7206
	ld a,#09
	call l7206
	ld a,#0a
	call l7206
.l7204
	ei
	ret
.l7206
	ld c,#00
	jp l72ef
.l720b
	ld l,(iy+#02)
	ld h,(iy+#03)
	ld a,h
	or l
	ret
;
.play_music
.l7214
;
	ld iy,l7311
	ld b,#03
.l721a
	push bc
	call l720b
.l721e
	jr z,l726a
	ld a,(iy+#01)
	or a
	jr z,l722b
	dec (iy+#01)
	jr l7254
.l722b
	ld a,(hl)
	dec a
	ld (iy+#01),a
	ld (iy+#00),#ff
	inc hl
	ld d,(iy+#06)
	call l72cb
	ld a,(hl)
	cp #ff
	jr nz,l724e
	pop bc
	xor a
	ld (l7204),a
	call l715c
	ld a,#fb
	ld (l7204),a
	ret
.l724e
	ld (iy+#02),l
	ld (iy+#03),h
.l7254
	ld a,(iy+#00)
	cp #09
	jr z,l725e
	inc (iy+#00)
.l725e
	call l72d7
.l7261
	ld de,#000c
	add iy,de
	pop bc
	djnz l721a
	ret
.l726a
	ld a,(iy+#08)
	or a
	jr z,l7261
	ld a,(iy+#09)
	or a
	jr z,l727b
	dec (iy+#09)
	jr l7261
.l727b
	ld a,(l7151)
	ld (iy+#09),a
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld a,(hl)
	cp #ff
	jr nz,l7294
	ld (iy+#08),#00
	ld c,#00
	jr l72c6
.l7294
	ld d,a
	bit 2,d
	jr z,l729d
	ld c,#a8
	jr l729f
.l729d
	ld c,#b8
.l729f
	ld a,#07
	call l72ef
	inc hl
	ld c,(hl)
	inc hl
	ld (iy+#0a),l
	ld (iy+#0b),h
	ld a,(iy+#06)
	push af
	call l72ef
	ld a,d
	and #03
	ld c,a
	pop af
	inc a
	call l72ef
	ld c,d
	srl c
	srl c
	srl c
	srl c
.l72c6
	call l72ec
	jr l7261
.l72cb
	ld a,d
	ld c,(hl)
	inc hl
	call l72ef
	ld a,d
	inc a
	ld c,(hl)
	inc hl
	jr l72ef
.l72d7
	ld c,#00
	dec hl
	ld a,(hl)
	dec hl
	or (hl)
	jr z,l72ec
	ld e,(iy+#00)
	ld d,#00
	ld l,(iy+#04)
	ld h,(iy+#05)
	add hl,de
	ld c,(hl)
.l72ec
	ld a,(iy+#07)
.l72ef
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
.l730f equ $ + 2
.l730d
	dw #0000,#0000
.l7311
	db #00,#00
	dw #0000
	dw l7335
.l731d equ $ + 6
	db #00,#08,#00,#00,#00,#00,#00,#00
	db #00,#00
	dw l733f
	db #02,#09,#00,#00
	dw #0000
.l7329
	db #00,#00
	dw #0000
	dw l7349
.l7335 equ $ + 6
	db #04,#0a,#00,#00,#00,#00,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l733f
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l7349 equ $ + 2
	db #05,#04,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#c9,#00,#00
	
.l8bd8
	db #0c,#8e,#00,#06,#8e,#00
	db #0c,#8e,#00,#06,#8e,#00,#0c,#8e
	db #00,#06,#8e,#00,#06,#77,#00,#06
	db #7f,#00,#06,#86,#00,#06,#00,#00
.l8bf9 equ $ + 3
	db #ff,#00,#00,#0c,#d5,#00,#06,#d5
	db #00,#0c,#d5,#00,#06,#d5,#00,#0c
	db #d5,#00,#06,#d5,#00,#06,#d5,#00
	db #06,#d5,#00,#06,#d5,#00,#06,#00
.l8c1a equ $ + 4
	db #00,#ff,#00,#00,#06,#4b,#00,#06
	db #50,#00,#06,#54,#00,#06,#59,#00
	db #06,#54,#00,#06,#50,#00,#06,#00
.l8c32 equ $ + 4
	db #00,#ff,#00,#00,#06,#12,#00,#06
	db #12,#00,#06,#12,#00,#0c,#12,#00
	db #0c,#12,#00,#0c,#12,#00,#06,#12
	db #00,#06,#12,#00,#06,#12,#00,#06
.l8c53 equ $ + 5
	db #00,#00,#ff,#00,#00,#06,#24,#00
	db #06,#24,#00,#06,#24,#00,#0c,#24
	db #00,#0c,#24,#00,#0c,#24,#00,#06
	db #24,#00,#06,#24,#00,#06,#24,#00
.l8c74 equ $ + 6
	db #06,#00,#00,#ff,#00,#00,#0c,#47
	db #00,#06,#47,#00,#0c,#47,#00,#06
	db #47,#00,#0c,#47,#00,#06,#47,#00
	db #06,#47,#00,#06,#47,#00,#06,#47
.l8c95 equ $ + 7
	db #00,#06,#00,#00,#ff,#00,#00,#0c
	db #6a,#00,#06,#6a,#00,#0c,#6a,#00
	db #06,#6a,#00,#0c,#6a,#00,#06,#6a
	db #00,#06,#59,#00,#06,#5f,#00,#06
	db #64,#00,#06,#00,#00,#ff,#00,#00
.l8cb6
	db #06,#00,#00,#06,#00,#00,#06,#00
	db #00,#06,#00,#00,#06,#00,#00,#06
	db #00,#00,#06,#00,#00,#06,#00,#00
	db #06,#00,#00,#06,#00,#00,#06,#00
.l8cdd equ $ + 7
	db #00,#06,#00,#00,#ff,#00,#00,#06
	db #47,#00,#06,#47,#00,#06,#47,#00
	db #0c,#47,#00,#0c,#47,#00,#0c,#47
	db #00,#06,#47,#00,#06,#47,#00,#06
	db #47,#00,#06,#00,#00,#ff,#00,#00
.l8cfe
	db #06,#50,#00,#06,#50,#00,#06,#50
	db #00,#0c,#50,#00,#0c,#50,#00,#0c
	db #50,#00,#06,#50,#00,#06,#50,#00
	db #06,#50,#00,#06,#00,#00,#ff,#00
.l8d1f equ $ + 1
	db #00,#06,#59,#00,#06,#59,#00,#06
	db #59,#00,#0c,#59,#00,#0c,#59,#00
	db #0c,#59,#00,#06,#59,#00,#06,#59
	db #00,#06,#59,#00,#06,#00,#00,#ff
.l8d40 equ $ + 2
	db #00,#00,#06,#5f,#00,#06,#5f,#00
	db #06,#5f,#00,#0c,#5f,#00,#0c,#5f
	db #00,#0c,#5f,#00,#06,#5f,#00,#06
	db #5f,#00,#06,#5f,#00,#06,#00,#00
.l8d61 equ $ + 3
	db #ff,#00,#00,#06,#00,#00,#06,#00
	db #00,#06,#00,#00,#0c,#00,#00,#0c
	db #00,#00,#0c,#00,#00,#06,#00,#00
	db #06,#00,#00,#06,#00,#00,#06,#00
	db #00,#ff,#00,#00
.l8d82
	db #0f,#08,#0e,#08,#0d,#08,#0c,#08
	db #0b,#08,#0f,#09,#0e,#08,#0d,#07
	db #0c,#06,#0b,#05,#0f,#0e,#0d,#0c
.l8da0 equ $ + 6
	db #0b,#0a,#09,#08,#07,#06,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06
.l8dbe
	dw l8c32,#0000,l8d61,l8da0
	dw l8c32,#0000,l8cdd,l8da0
	dw l8c53,#0000,l8cfe,l8da0
	dw l8c53,#0000,l8d1f,l8da0
	dw l8c53,#0000,l8d40,l8da0
	dw l8bd8,#0000,l8c74,l8d82
	dw l8bd8,#0000,l8c74,l8d82
	dw l8bd8,#0000,l8c74,l8d82
	dw l8bd8,#0000,l8c74,l8d82
	dw l8bf9,#0000,l8c95,l8d82
	dw l8bf9,#0000,l8c95,l8d82
	dw l8bf9,#0000,l8c95,l8d82
	dw l8c1a,#0000,l8cb6,l8d82
	dw l8bd8,#0000,l8c74,l8d82
	dw l8bd8,#0000,l8c74,l8d82
	dw l8bd8,#0000,l8c74,l8d82
	dw l8bd8,#0000,l8c74,l8d82
	dw l8bf9,#0000,l8c95,l8d82
	dw l8bf9,#0000,l8c95,l8d82
	dw l8bf9,#0000,l8c95,l8d82
	dw l8c1a,#0000,l8cb6,l8d82
	db #ff,#ff
.l0064
	dw l8dbe
.l0066
	dw #0000
;
.music_info
	db "Army Moves Part 2 (1986)(Dinamic)(Manuel Cubedo)",0
	db "",0

	read "music_end.asm"
