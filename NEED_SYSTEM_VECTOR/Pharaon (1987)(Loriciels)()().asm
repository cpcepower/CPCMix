; Music of Pharaon (1987)(Loriciels)()()
; Ripped by Megachur the 09/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PHARAON.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8cfb
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

	ld a,#02
	call #bc0e
	ld bc,#0000
	call #bc38
	xor a
	ld b,a
	ld c,b
	call #bc32
	ld a,#01
	ld b,#0f
	ld c,b
	call #bc32
	call l8f28
	call #bca7
	ld a,#01		; init music
	ld hl,l9467
	call #bcbc
	ld a,#02
	ld hl,l9477
	call #bcbc
	ld a,#03
	ld hl,l9481
	call #bcbc
	ld a,#04
	ld hl,l9485
	call #bcbc
	ld a,#05
	ld hl,l912b
	call #bcbc
	ld a,#06
	ld hl,l9132
	call #bcbc
	ld a,#07
	ld hl,l9139
	call #bcbc
	ld a,#08
	ld hl,l913d
	call #bcbc
	ld hl,l948f
	call #bcaa
	ld hl,l9566
	ld b,#81
	ld de,l8f7a
	call #bce0
	ld bc,#59d8
	call l8f03
	di
	ld hl,#c14f
	ld de,#7533
	ld b,#09
.l8d7a
	push bc
	push hl
	ld b,#08
.l8d7e
	push bc
	push hl
	ld b,#31
.l8d82
	ex de,hl
	ld a,(hl)
	ld (de),a
	ex de,hl
	inc hl
	inc de
	djnz l8d82
	pop hl
	ld bc,#0800
	add hl,bc
	pop bc
	djnz l8d7e
	pop hl
	ld bc,#0050
	add hl,bc
	pop bc
	djnz l8d7a
	ei
	ld bc,#59d8
	call l8f03
	ld hl,#c416
	ld de,#82fb
	ld c,#44
	call l8edb
	ld bc,#59d8
	call l8f03
	ld hl,#c519
	ld de,#873b
	ld c,#1d
	call l8edb
	ld bc,#59d8
	call l8f03
	ld hl,#c60d
	ld de,#890b
	ld b,#15
.l8dcb
	push bc
	push hl
	push de
	ld b,#06
.l8dd0
	push bc
	push hl
	ld b,#08
.l8dd4
	push bc
	push hl
	ex de,hl
	ld a,(hl)
	ld (de),a
	ld bc,#0015
	add hl,bc
	ex de,hl
	pop hl
	ld bc,#0800
	add hl,bc
	pop bc
	djnz l8dd4
	pop hl
	ld bc,#0050
	add hl,bc
	pop bc
	djnz l8dd0
	ld bc,#0064
	call l8f1f
	pop de
	pop hl
	inc de
	inc hl
	pop bc
	djnz l8dcb
.l8dfb
	call #bb09
	or a
	jr nz,l8e0a
	ld a,#01		; play music
	call #bcad
	and #80
	jr nz,l8dfb
.l8e0a
	call l8e45
.l8e0d
	ld a,#01
	call #bcad
	and #80
	jr nz,l8e0d
	call l9015		; stop music
	call #bca7
.l8e1c
	ld b,#09
	ld de,#9858
	ld hl,l8e3c
	call #bc77
	jp nc,#0000
	ld hl,#9858
	call #bc83
	jp nc,#0000
	call #bc7a
	jp nc,#0000
	jp #9858
.l8e3c
	db #50,#48,#41,#52,#30,#2e,#4c,#4f
	db #52
.l8e45
	ld hl,l9566
	call #bce6
	call #bca7
	ld a,#01
	call #bc0e
	ld a,#01
	ld hl,l956f
.l8e58
	ld b,(hl)
	ld c,b
	push af
	push hl
	call #bc32
	pop hl
	pop af
	inc hl
	inc a
	cp #04
	jr nz,l8e58
	ld hl,l94aa
	call #bcaa
	ld hl,#c000
	ld de,#ff80
	ld ix,#03e8
	ld iy,#4368
	ld b,#0c
.l8e7d
	push bc
	push ix
	push hl
	push iy
	push de
	ld b,#08
	call l8ea5
	pop hl
	ld de,#ffb0
	add hl,de
	pop iy
	add iy,de
	ex de,hl
	pop hl
	ld bc,#0050
	add hl,bc
	pop ix
	add ix,bc
	pop bc
	djnz l8e7d
	ld b,#04
	call l8ea5
	ret
.l8ea5
	push bc
	push ix
	push hl
	push iy
	push de
	ld b,#50
.l8eae
	ld a,(ix+#00)
	ld (hl),a
	ld a,(iy+#00)
	ld (de),a
	inc hl
	inc de
	inc ix
	inc iy
	djnz l8eae
	ld bc,#000c
	call l8f1f
	pop hl
	ld de,#f800
	add hl,de
	pop iy
	add iy,de
	ex de,hl
	pop hl
	ld bc,#0800
	add hl,bc
	pop ix
	add ix,bc
	pop bc
	djnz l8ea5
	ret
.l8edb
	ld b,#02
.l8edd
	push bc
	push hl
	ld b,#08
.l8ee1
	push bc
	push hl
	ld b,c
.l8ee4
	ex de,hl
	ld a,(hl)
	ld (de),a
	ex de,hl
	inc hl
	inc de
	djnz l8ee4
	ld bc,#00c8
	call l8f1f
	pop hl
	ld bc,#0800
	add hl,bc
	pop bc
	djnz l8ee1
	pop hl
	ld bc,#0050
	add hl,bc
	pop bc
	djnz l8edd
	ret
.l8f03
	call #bb09
	or a
	jr nz,l8f0f
	dec bc
	ld a,b
	or c
	ret z
	jr l8f03
.l8f0f
	pop hl
	call l8e45
.l8f13
	ld a,#01
	call #bcad
	and #80
	jr nz,l8f13
	jp l8e1c
.l8f1f
	call #bb09
	dec bc
	ld a,b
	or c
	ret z
	jr l8f1f
.l8f28
	ld l,#00
	ld b,#19
	ld iy,#4ca7
	ld ix,#03e8
.l8f34
	push bc
	push ix
	ld b,#08
.l8f39
	push bc
	push ix
	ld b,#50
.l8f3e
	ld a,l
	cp #00
	jr nz,l8f56
	ld a,(iy+#00)
	cp #4d
	jr nz,l8f5c
	inc iy
	ld l,(iy+#00)
	inc iy
	ld h,(iy+#00)
	inc iy
.l8f56
	ld (ix+#00),h
	dec l
	jr l8f61
.l8f5c
	ld (ix+#00),a
	inc iy
.l8f61
	inc ix
	djnz l8f3e
	pop ix
	ld de,#0800
	add ix,de
	pop bc
	djnz l8f39
	pop ix
	ld de,#0050
	add ix,de
	pop bc
	djnz l8f34
	ret
.l8f7a
	ld hl,(l9564)
	dec hl
	ld a,h
	or l
	jr z,l8f87
	ld (l9564),hl
	jr l8fd0
.l8f87
	ld a,#04
	call #bcad
	and #80
	jr nz,l8fd0
	ld a,(l955c)
	dec a
	jr nz,l8fb2
	ld a,(l955d)
	dec a
	jr z,l8fd0
	ld (l955d),a
	ld a,#05
	ld (l955c),a
	ld hl,#012c
	ld (l9564),hl
	ld hl,l9553
	ld (l9560),hl
	jr l8fd0
.l8fb2
	ld (l955c),a
	ld ix,(l9560)
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l94a4),hl
	inc ix
	inc ix
	ld (l9560),ix
	ld hl,l94a1
	call #bcaa
.l8fd0
	ld hl,(l9562)
	dec hl
	ld a,h
	or l
	jr z,l8fdc
	ld (l9562),hl
	ret
.l8fdc
	ld a,#02
	call #bcad
	and #80
	ret nz
	ld a,(l955b)
	dec a
	ret z
	ld (l955b),a
	ld ix,(l955e)
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l949b),hl
	inc ix
	inc ix
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l949f),hl
	inc ix
	inc ix
	ld (l955e),ix
	ld hl,l9498
	call #bcaa
	ret
.l9015
	ld a,#01
	call #bcad
	and #80
	jr nz,l905f
	ld a,(l9107)
	dec a
	jr z,l9054
	ld (l9107),a
	ld ix,(l9108)
	ld a,(ix+#00)
	ld (l9111),a
	ld a,(ix+#01)
	ld (l9115),a
	ld l,(ix+#02)
	ld h,(ix+#03)
	ld (l9117),hl
	inc ix
	inc ix
	inc ix
	inc ix
	ld (l9108),ix
	ld hl,l9110
	call #bcaa
	jr l905f
.l9054
	ld a,#13
	ld (l9107),a
	ld hl,l9147
	ld (l9108),hl
.l905f
	ld a,#02
	call #bcad
	and #80
	jr nz,l90ae
	ld a,(l910a)
	dec a
	jr z,l90a3
	ld (l910a),a
	ld ix,(l910b)
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l911c),hl
	ld l,(ix+#02)
	ld h,(ix+#03)
	ld (l9120),hl
	ld a,(ix+#04)
	ld (l911a),a
	inc ix
	inc ix
	inc ix
	inc ix
	inc ix
	ld (l910b),ix
	ld hl,l9119
	call #bcaa
	jr l90ae
.l90a3
	ld a,#49
	ld (l910a),a
	ld hl,l918f
	ld (l910b),hl
.l90ae
	ld a,#04
	call #bcad
	and #80
	jr nz,l90fd
	ld a,(l910d)
	dec a
	jr z,l90ea
	ld (l910d),a
	ld ix,(l910e)
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l9125),hl
	ld l,(ix+#02)
	ld h,(ix+#03)
	ld (l9129),hl
	inc ix
	inc ix
	inc ix
	inc ix
	ld (l910e),ix
	ld hl,l9122
	call #bcaa
	jr l90fd
.l90ea
	ld a,(l9106)
	dec a
	ret z
	ld (l9106),a
	ld a,#5d
	ld (l910d),a
	ld hl,l92f7
	ld (l910e),hl
.l90fd
	call #bb09
	cp #20
	ret z
	jp l9015
.l9107 equ $ + 1
.l9106
	db #02,#13
.l9108
	dw l9147
.l910a
	db #49
.l910b
	dw l918f
.l910d
	db #5d
.l910e
	dw l92f7
.l9117 equ $ + 7
.l9115 equ $ + 5
.l9111 equ $ + 1
.l9110
	db #01,#ff,#00,#00,#00,#ff,#00,#ff
.l911c equ $ + 4
.l911a equ $ + 2
.l9119 equ $ + 1
	db #ff,#02,#ff,#00,#ff,#ff,#00,#0f
.l9125 equ $ + 5
.l9122 equ $ + 2
.l9120
	db #ff,#ff,#04,#08,#00,#ff,#ff,#00
.l912b equ $ + 3
.l9129 equ $ + 1
	db #00,#ff,#ff,#02,#01,#0c,#01,#0c
.l9132 equ $ + 2
	db #ff,#05,#02,#01,#0c,#01,#0c,#ff
.l913d equ $ + 5
.l9139 equ $ + 1
	db #04,#01,#0f,#ff,#0c,#03,#0b,#01
.l9147 equ $ + 7
	db #01,#01,#00,#02,#0b,#ff,#03,#05
	db #1e,#14,#00,#05,#1e,#14,#00,#05
	db #1e,#14,#00,#06,#1e,#3c,#00,#05
	db #1e,#14,#00,#05,#1e,#14,#00,#05
	db #1e,#14,#00,#06,#1e,#3c,#00,#05
	db #1e,#14,#00,#05,#1e,#14,#00,#05
	db #1e,#14,#00,#05,#1f,#14,#00,#05
	db #1f,#14,#00,#05,#1f,#14,#00,#05
	db #1f,#14,#00,#05,#1f,#14,#00,#05
.l918f equ $ + 7
	db #1f,#14,#00,#06,#1e,#3c,#00,#bc
	db #03,#14,#00,#00,#bc,#03,#14,#00
	db #00,#bc,#03,#14,#00,#00,#de,#01
	db #3c,#00,#07,#bc,#03,#28,#00,#00
	db #de,#01,#50,#00,#07,#bc,#03,#14
	db #00,#00,#bc,#03,#14,#00,#00,#bc
	db #03,#14,#00,#00,#de,#01,#3c,#00
	db #07,#bc,#03,#28,#00,#00,#de,#01
	db #50,#00,#07,#31,#04,#14,#00,#00
	db #31,#04,#14,#00,#00,#31,#04,#14
	db #00,#00,#18,#02,#3c,#00,#07,#31
	db #04,#28,#00,#00,#18,#02,#78,#00
	db #07,#31,#04,#14,#00,#07,#31,#04
	db #b4,#00,#07,#bc,#03,#14,#00,#00
	db #bc,#03,#14,#00,#00,#bc,#03,#14
	db #00,#00,#de,#01,#3c,#00,#07,#bc
	db #03,#28,#00,#00,#de,#01,#50,#00
	db #07,#bc,#03,#14,#00,#00,#bc,#03
	db #14,#00,#00,#bc,#03,#14,#00,#00
	db #de,#01,#3c,#00,#07,#bc,#03,#28
	db #00,#00,#de,#01,#50,#00,#07,#31
	db #04,#14,#00,#00,#31,#04,#14,#00
	db #00,#31,#04,#14,#00,#00,#18,#02
	db #3c,#00,#07,#31,#04,#28,#00,#00
	db #18,#02,#78,#00,#07,#31,#04,#14
	db #00,#07,#31,#04,#b4,#00,#07,#b4
	db #04,#14,#00,#00,#b4,#04,#14,#00
	db #00,#b4,#04,#14,#00,#00,#5a,#02
	db #3c,#00,#07,#31,#04,#14,#00,#00
	db #31,#04,#14,#00,#00,#31,#04,#14
	db #00,#00,#18,#02,#3c,#00,#07,#bc
	db #03,#14,#00,#00,#bc,#03,#14,#00
	db #00,#bc,#03,#14,#00,#00,#de,#01
	db #3c,#00,#07,#31,#04,#14,#00,#00
	db #31,#04,#14,#00,#00,#31,#04,#14
	db #00,#00,#18,#02,#3c,#00,#07,#b4
	db #04,#14,#00,#00,#b4,#04,#14,#00
	db #00,#b4,#04,#14,#00,#00,#5a,#02
	db #3c,#00,#07,#31,#04,#14,#00,#00
	db #31,#04,#14,#00,#00,#31,#04,#14
	db #00,#00,#18,#02,#3c,#00,#07,#bc
	db #03,#14,#00,#00,#bc,#03,#14,#00
	db #00,#bc,#03,#14,#00,#00,#de,#01
	db #3c,#00,#07,#31,#04,#14,#00,#00
	db #31,#04,#14,#00,#00,#31,#04,#14
.l92f7 equ $ + 7
	db #00,#00,#18,#02,#3c,#00,#07,#59
	db #00,#14,#00,#5f,#00,#14,#00,#59
	db #00,#14,#00,#50,#00,#14,#00,#59
	db #00,#14,#00,#5f,#00,#14,#00,#71
	db #00,#14,#00,#77,#00,#14,#00,#71
	db #00,#14,#00,#77,#00,#3c,#00,#50
	db #00,#28,#00,#3c,#00,#78,#00,#3c
	db #00,#50,#00,#59,#00,#14,#00,#5f
	db #00,#14,#00,#59,#00,#14,#00,#50
	db #00,#14,#00,#59,#00,#14,#00,#5f
	db #00,#14,#00,#71,#00,#14,#00,#77
	db #00,#14,#00,#71,#00,#14,#00,#86
	db #00,#3c,#00,#43,#00,#28,#00,#59
	db #00,#78,#00,#59,#00,#50,#00,#59
	db #00,#14,#00,#5f,#00,#14,#00,#59
	db #00,#14,#00,#50,#00,#14,#00,#59
	db #00,#14,#00,#5f,#00,#14,#00,#71
	db #00,#14,#00,#77,#00,#14,#00,#71
	db #00,#14,#00,#77,#00,#3c,#00,#50
	db #00,#28,#00,#3c,#00,#78,#00,#3c
	db #00,#50,#00,#59,#00,#14,#00,#5f
	db #00,#14,#00,#59,#00,#14,#00,#50
	db #00,#14,#00,#59,#00,#14,#00,#5f
	db #00,#14,#00,#71,#00,#14,#00,#77
	db #00,#14,#00,#71,#00,#14,#00,#86
	db #00,#3c,#00,#43,#00,#28,#00,#59
	db #00,#78,#00,#59,#00,#50,#00,#96
	db #00,#14,#00,#6a,#00,#14,#00,#96
	db #00,#14,#00,#64,#00,#3c,#00,#86
	db #00,#14,#00,#64,#00,#14,#00,#86
	db #00,#14,#00,#59,#00,#3c,#00,#77
	db #00,#14,#00,#59,#00,#14,#00,#77
	db #00,#14,#00,#50,#00,#14,#00,#77
	db #00,#14,#00,#59,#00,#14,#00,#96
	db #00,#14,#00,#6a,#00,#14,#00,#96
	db #00,#14,#00,#64,#00,#14,#00,#96
	db #00,#14,#00,#6a,#00,#14,#00,#96
	db #00,#14,#00,#6a,#00,#14,#00,#96
	db #00,#14,#00,#64,#00,#3c,#00,#86
	db #00,#14,#00,#64,#00,#14,#00,#86
	db #00,#14,#00,#59,#00,#3c,#00,#77
	db #00,#14,#00,#59,#00,#14,#00,#77
	db #00,#14,#00,#50,#00,#14,#00,#77
	db #00,#14,#00,#59,#00,#14,#00,#96
	db #00,#14,#00,#6a,#00,#14,#00,#96
	db #00,#14,#00,#64,#00,#14,#00,#96
	db #00,#14,#00,#6a,#00,#14,#00
.l9467
	db #05,#0c,#01,#0a,#01,#00,#64,#0a
	db #ff,#32,#01,#00,#32,#02,#ff,#02
.l9477
	db #03,#08,#01,#01,#01,#00,#28,#08
.l9485 equ $ + 6
.l9481 equ $ + 2
	db #ff,#32,#01,#0f,#ff,#0a,#03,#0a
	db #01,#05,#01,#05,#01,#0f,#ff,#0a
.l948f
	db #01,#01,#00,#00,#00,#01,#03,#fc
.l949b equ $ + 4
.l9498 equ $ + 1
	db #ff,#02,#02,#00,#ff,#ff,#00,#03
.l94a4 equ $ + 5
.l94a1 equ $ + 2
.l949f
	db #ff,#ff,#04,#03,#00,#ff,#ff,#00
.l94aa equ $ + 3
	db #0f,#00,#00,#01,#04,#00,#00,#00
	db #1f,#00,#00,#00,#b3,#00,#28,#00
	db #be,#00,#14,#00,#b3,#00,#14,#00
	db #be,#00,#14,#00,#b3,#00,#14,#00
	db #9f,#00,#28,#00,#b3,#00,#28,#00
	db #be,#00,#28,#00,#e1,#00,#28,#00
	db #ef,#00,#40,#01,#b3,#00,#28,#00
	db #be,#00,#14,#00,#b3,#00,#14,#00
	db #be,#00,#14,#00,#b3,#00,#14,#00
	db #9f,#00,#28,#00,#b3,#00,#28,#00
	db #be,#00,#28,#00,#77,#00,#28,#00
	db #a9,#00,#40,#01,#b3,#00,#28,#00
	db #be,#00,#14,#00,#b3,#00,#14,#00
	db #be,#00,#14,#00,#b3,#00,#14,#00
	db #9f,#00,#28,#00,#b3,#00,#28,#00
	db #be,#00,#28,#00,#e1,#00,#28,#00
	db #ef,#00,#40,#01,#b3,#00,#28,#00
	db #be,#00,#14,#00,#b3,#00,#14,#00
	db #be,#00,#14,#00,#b3,#00,#14,#00
	db #9f,#00,#28,#00,#b3,#00,#28,#00
	db #be,#00,#28,#00,#77,#00,#28,#00
.l9553 equ $ + 4
	db #a9,#00,#40,#01,#08,#00,#08,#00
.l955e equ $ + 7
.l955d equ $ + 6
.l955c equ $ + 5
.l955b equ $ + 4
	db #0a,#00,#0a,#00,#29,#05,#04,#b3
.l9566 equ $ + 7
.l9564 equ $ + 5
.l9562 equ $ + 3
.l9560 equ $ + 1
	db #94,#53,#95,#40,#06,#2c,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l956f
	db #03,#0f,#19,#00,#00
;
.music_info
	db "Pharaon (1987)(Loriciels)()",0
	db "",0

	read "music_end.asm"
