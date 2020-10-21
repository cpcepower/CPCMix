; Music of Army Moves Part 1 (1986)(Dinamic)(Manuel Cubedo)()
; Ripped by Megachur the 28/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ARMYMP1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #7148

	read "music_header.asm"
	
	jr l71b2
.l714a
	jr l7152
	jr l71ae
	jr l71c8
.l7150
	db #00
.l7151
	db #02
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
	jr l726a
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
	dw l2acd,l2a9d
.l7311
	db #02,#03
	dw l2bcb
	dw l7335
.l731d equ $ + 6
	db #00,#08,#00,#00,#00,#00,#00,#00
	db #00,#00
	dw l733f
	db #02,#09,#00,#02
	dw l2d93
.l7329
	db #02,#03
	dw l2cbe
	dw l7349
.l7335 equ $ + 6
	db #04,#0a,#00,#00,#00,#00,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l733f
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
.l7349 equ $ + 2
	db #07,#06,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#c9,#00,#00
	
.l0064
	dw l2a9d	; added by Megachur
.l0066
	dw #0000
.l2a9d
	dw l2b95,#0000,l2c25,l2cca
	dw l2b95,#0000,l2c25,l2cca
	dw l2bb6,#0000,l2c46,l2cca
	dw l2bb6,#0000,l2c67,l2cca
	dw l2bb6,#0000,l2c88,l2cca
	dw l2bb6,#0000,l2ca9,l2cca
.l2acd
	dw l2b4d,#0000,l2bd7,l2cca
	dw l2b4d,#0000,l2bd7,l2cca
	dw l2b4d,#0000,l2bd7,l2cca
	dw l2b4d,#0000,l2bd7,l2cca
	dw l2b71,#0000,l2bfe,l2cca
	dw l2b71,#0000,l2bfe,l2cca
	dw l2b71,#0000,l2bfe,l2cca
	dw l2b71,#0000,l2bfe,l2cca
	dw l2b4d,#0000,l2bd7,l2cca
	dw l2b4d,#0000,l2bd7,l2cca
	dw l2b4d,#0000,l2bd7,l2cca
	dw l2b71,#0000,l2bfe,l2cca
	dw l2b71,#0000,l2bfe,l2cca
	dw l2b71,#0000,l2bfe,l2cca
	dw l2b71,#0000,l2bfe,l2cca
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
.l2b4d
	db #0c,#38,#02,#06,#00,#00,#06,#38
	db #02,#0c,#de,#01,#0c,#38,#02,#06
	db #00,#00,#0c,#de,#01,#06,#de,#01
	db #0c,#f6,#02,#0c,#7e,#02,#30,#00
.l2b71 equ $ + 4
	db #00,#ff,#de,#01,#0c,#aa,#01,#06
	db #00,#00,#06,#aa,#01,#0c,#66,#01
	db #0c,#aa,#01,#06,#00,#00,#0c,#66
	db #01,#06,#66,#01,#0c,#aa,#01,#0c
	db #de,#01,#0c,#00,#00,#ff,#00,#00
.l2b95
	db #06,#24,#00,#06,#24,#00,#06,#24
	db #00,#0c,#24,#00,#0c,#24,#00,#0c
	db #24,#00,#06,#24,#00,#06,#24,#00
	db #06,#24,#00,#30,#00,#00,#ff,#00
.l2bb6 equ $ + 1
	db #00,#06,#47,#00,#06,#47,#00,#06
	db #47,#00,#0c,#47,#00,#0c,#47,#00
.l2bcb equ $ + 6
	db #0c,#47,#00,#06,#47,#00,#06,#47
	db #00,#06,#47,#00,#06,#00,#00,#ff
.l2bd7 equ $ + 2
	db #00,#00,#0c,#8e,#00,#0c,#00,#00
	db #06,#00,#00,#06,#8e,#00,#06,#7f
	db #00,#06,#8e,#00,#0c,#77,#00,#06
	db #77,#00,#0c,#6a,#00,#06,#6a,#00
	db #0c,#5f,#00,#0c,#00,#00,#ff,#00
.l2bfe equ $ + 1
	db #00,#0c,#6a,#00,#0c,#00,#00,#06
	db #00,#00,#06,#6a,#00,#06,#5f,#00
	db #06,#6a,#00,#0c,#59,#00,#06,#59
	db #00,#0c,#50,#00,#06,#50,#00,#0c
	db #47,#00,#06,#00,#00,#ff,#47,#00
.l2c25
	db #06,#00,#00,#06,#00,#00,#06,#00
	db #00,#0c,#00,#00,#0c,#00,#00,#0c
	db #00,#00,#06,#00,#00,#06,#00,#00
	db #06,#00,#00,#06,#00,#00,#ff,#00
.l2c46 equ $ + 1
	db #00,#06,#47,#00,#06,#47,#00,#06
	db #47,#00,#0c,#47,#00,#0c,#47,#00
	db #0c,#47,#00,#06,#47,#00,#06,#47
	db #00,#06,#47,#00,#06,#00,#00,#ff
.l2c67 equ $ + 2
	db #00,#00,#06,#50,#00,#06,#50,#00
	db #06,#50,#00,#0c,#50,#00,#0c,#50
	db #00,#0c,#50,#00,#06,#50,#00,#06
	db #50,#00,#06,#50,#00,#06,#00,#00
.l2c88 equ $ + 3
	db #ff,#00,#00,#06,#59,#00,#06,#59
	db #00,#06,#59,#00,#0c,#59,#00,#0c
	db #59,#00,#0c,#59,#00,#06,#59,#00
	db #06,#59,#00,#06,#59,#00,#06,#00
.l2ca9 equ $ + 4
	db #00,#ff,#00,#00,#06,#5f,#00,#06
	db #5f,#00,#06,#5f,#00,#0c,#5f,#00
	db #0c,#5f,#00,#0c,#5f,#00,#06,#5f
.l2cbe equ $ + 1
	db #00,#06,#5f,#00,#06,#5f,#00,#06
.l2cca equ $ + 5
	db #00,#00,#ff,#00,#00,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#00,#00,#00,#00,#00
	db #54,#1e,#74,#1c,#94,#1a,#b4,#18
	db #d4,#16,#f4,#14,#e4,#50,#d4,#8c
	db #c4,#c8,#b5,#04,#a5,#40,#95,#7c
	db #85,#b8,#75,#f4,#66,#30,#56,#6c
	db #46,#a8,#36,#e4,#27,#20,#17,#5c
	db #ff,#00,#57,#84,#67,#3e,#76,#f8
	db #86,#b2,#96,#6c,#a6,#26,#b5,#e0
	db #c5,#9a,#d5,#54,#e5,#0e,#f4,#c8
	db #e4,#e6,#d5,#04,#c5,#22,#b5,#40
	db #a5,#5e,#95,#7c,#85,#9a,#75,#b8
	db #65,#d6,#55,#f4,#46,#12,#36,#30
	db #26,#4e,#16,#6c,#06,#8a,#ff,#00
	db #a5,#2c,#ff,#00,#f0,#64,#00,#5a
	db #f0,#50,#00,#46,#e0,#41,#00,#3c
	db #d0,#37,#00,#32,#a0,#30,#00,#2e
	db #80,#2c,#00,#2c,#40,#2a,#00,#2a
	db #20,#28,#00,#28,#10,#26,#00,#26
	db #ff,#02,#e5,#90,#f5,#f4,#e5,#d6
	db #d5,#b8,#c5,#9a,#b5,#7c,#a5,#5e
	db #95,#40,#85,#22,#75,#04,#64,#e6
.l2d93 equ $ + 6
	db #44,#e6,#24,#e6,#04,#e6,#ff,#01
	db #e0,#32,#ff,#00,#f4,#32,#f4,#28
	db #f4,#1e,#ff,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#30,#30,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
; #0355
; ld hl,l2a9d	; init main theme
; ld (l0064),hl
; jp l714a
; jp l758e
;
; #04fb
; ld hl,l2a9d
; ld (l0064),hl
; call l714a
; ld a,#00
; ld (l88f1),a
; ld a,#38
; jp l76a9
;
; #aa1f
;ld hl,#0002
;ld (l0064),hl
;call #714e
;
.music_info
	db "Army Moves Part 1 (1986)(Dinamic)(Manuel Cubedo)",0
	db "",0

	read "music_end.asm"
