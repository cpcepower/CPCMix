; Music of A Question Of Sport (1988)(Elite Systems)(Mark Cooksey)()
; Ripped by Megachur the 28/02/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AQUESTOS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #c000
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

.lc000
	nop
	jp lc089	; init music
	jp lc0c3	; play music
	jp lc072
	jp lc059
;
.stop_music
.lc00d
;
	ld hl,lc6d2
	ld (hl),#00
	ld e,l
	ld d,h
	inc de
	ld bc,#0095
	ldir
	xor a
	ld e,#08
	call lc66c
	ld e,#09
	call lc66c
	ld e,#0a
	call lc66c
	ld a,#3f
	ld (lc69f),a
	ld e,#07
	call lc66c
	ld a,#01
	ld (lc6d5),a
	ld (lc707),a
	ld (lc739),a
	ld (lc6d8),a
	ld (lc70a),a
	ld (lc73c),a
	ld (lc1aa),a
	ld (lc1ab),a
	xor a
	ld (lc6d2),a
	ld (lc704),a
	ld (lc736),a
	ret
.lc059
	ld l,c
	ld a,(lc69f)
	or c
	sla c
	sla c
	sla c
	or c
	ld (lc69f),a
	ld e,#07
	call lc66c
	ld c,l
	xor a
	jp lc074
.lc072
	ld a,#01
.lc074
	srl c
	jr nc,lc07b
	ld (lc6d2),a
.lc07b
	srl c
	jr nc,lc082
	ld (lc704),a
.lc082
	srl c
	ret nc
	ld (lc736),a
	ret
;
.init_music
.lc089
;
	ex af,af'
	call lc00d
	ex af,af'
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,lc768
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lc6d3),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lc705),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lc737),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (lc69d),de
	ld a,#02
	ld (lc6d2),a
	ld (lc704),a
	ld (lc736),a
	ret
;
.play_music
.lc0c3
;
	xor a
	ld hl,lc6d2
.lc0c7
	push af
	push hl
	ld b,a
	add a
	ld (lc646),a
	inc a
	ld (lc64c),a
	ld a,b
	add #08
	ld (lc65a),a
	ld a,b
	inc a
	cp #03
	jp nz,lc0e0
	inc a
.lc0e0
	ld (lc2d5),a
	ld bc,#0032
	ld de,lc6a0
	ldir
	call lc10e
	pop de
	ld hl,lc6a0
	ld bc,#0032
	ldir
	ex de,hl
	pop af
	inc a
	cp #03
	jp nz,lc0c7
	ld a,(lc1aa)
	dec a
	ld (lc1aa),a
	ret nz
	ld a,(lc1ab)
	ld (lc1aa),a
	ret
.lc10e
	ld a,(lc6a0)
	and a
	ret z
	ld a,(lc1aa)
	dec a
	jp nz,lc189
	ld a,(lc6a3)
	dec a
	ld (lc6a3),a
	jp nz,lc189
.lc124
	ld hl,(lc6a1)
	ld a,(hl)
	inc hl
	and a
	ld c,#00
	jp p,lc136
	ld c,#01
	and #7f
	jp lc169
.lc136
	cp #60
	jp c,lc169
	sub #60
	jp z,lc1c8
	dec a
	jp z,lc1fd
	dec a
	jr z,lc1c2
	dec a
	jp z,lc1ac
	dec a
	jp z,lc235
	dec a
	jp z,lc27a
	dec a
	jp z,lc284
	dec a
	jp z,lc26f
	dec a
	jp z,lc25a
	dec a
	jp z,lc265
	dec a
	jr z,lc1b7
	jp lc297
.lc169
	ex af,af'
	ld a,(hl)
	inc hl
	ld (lc6a1),hl
	push af
	and #f0
	srl c
	call lc2a1
	pop af
	and #0f
	ld e,a
	ld d,#00
	ld hl,(lc69d)
	add hl,de
	ld a,(hl)
	ld (lc6a3),a
	ex af,af'
	call lc2f3
.lc189
	ld a,(lc6a6)
	dec a
	jr z,lc1a6
	call lc52e
	call lc4e4
	call lc466
	srl a
	ld (lc6a9),a
	call lc582
	call lc5cb
	call lc5e1
.lc1a6
	call lc637
	ret
.lc1ac equ $ + 2
.lc1ab equ $ + 1
.lc1aa
	ld bc,#7e01
	ld (lc000),a
	inc hl
	ld (lc6a1),hl
	jp lc124
.lc1b7
	ld a,(hl)
	ld (lc6bd),a
	inc hl
	ld (lc6a1),hl
	jp lc124
.lc1c2
	ld a,(hl)
	ex af,af'
	inc hl
	jp lc1cb
.lc1c8
	ld a,#01
	ex af,af'
.lc1cb
	ld c,(hl)
	inc hl
	ld a,(hl)
	add a
	inc hl
	ld (lc6c2),a
	ex de,hl
	ld b,#00
	sla c
	ld hl,ld0ea
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (lc6a1),bc
	ld a,(lc6ad)
	inc a
	ld (lc6ad),a
	ld c,a
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,lc6ac
	add hl,bc
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ex af,af'
	ld (hl),a
	jp lc124
.lc1fd
	ld a,(lc6ad)
	ld c,a
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,lc6ac
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	dec (hl)
	jp z,lc226
	ex de,hl
	dec hl
	dec hl
	ld c,(hl)
	sla c
	ld hl,ld0ea
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lc6a1),hl
	jp lc124
.lc226
	ld (lc6a1),de
	ld hl,lc6ad
	dec (hl)
	xor a
	ld (lc6c2),a
	jp lc124
.lc235
	ld e,(hl)
	inc hl
	ld (lc6a1),hl
	sla e
	sla e
	sla e
	ld d,#00
	ld hl,lc4a2
	add hl,de
	ld (lc4e2),hl
	ld a,#01
	ld (lc6d8),a
	ld (lc70a),a
	ld (lc73c),a
	ld (lc6a6),a
	jp lc124
.lc25a
	ld (lc6a1),hl
	ld a,#02
	ld (lc6ac),a
	jp lc124
.lc265
	ld (lc6a1),hl
	xor a
	ld (lc6ac),a
	jp lc124
.lc26f
	ld a,(hl)
	ld (lc1ab),a
	inc hl
	ld (lc6a1),hl
	jp lc124
.lc27a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld (lc6a1),hl
	jp lc124
.lc284
	ld a,(hl)
	and #0f
	ld e,a
	inc hl
	ld (lc6a1),hl
	ld d,#00
	ld hl,(lc69d)
	add hl,de
	ld a,(hl)
	ld (lc6a3),a
	ret
.lc297
	xor a
	ld (lc6a0),a
	ld (lc6a9),a
	jp lc637
.lc2a1
	ld hl,lc6a6
	cp (hl)
	ret z
	ld (lc6a6),a
	ld hl,lc8b9
	ld e,a
	ld d,#00
	add hl,de
	ld (lc6a7),hl
	ld e,#06
	add hl,de
	ld e,(hl)
	ld hl,(lc4e2)
	add hl,de
	ld e,(hl)
	sla e
	ld hl,lc492
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lc6c5),hl
	ld hl,(lc6a7)
	ld de,#000a
	add hl,de
	ld a,(lc69f)
	ld c,a
.lc2d5 equ $ + 1
	ld a,#00
	ld b,(hl)
	srl b
	jr nc,lc2e1
	ld e,a
	cpl
	and c
	jp lc2e3
.lc2e1
	ld e,a
	or c
.lc2e3
	sla e
	sla e
	sla e
	or e
	ld (lc69f),a
	ld e,#07
	call lc66c
	ret
.lc2f3
	add a
	ld e,a
	ld d,#00
	ld hl,lc3a6
	add hl,de
	ld a,(lc6c2)
	and a
	jp p,lc304
	ld d,#ff
.lc304
	ld e,a
	add hl,de
	ex de,hl
	ld hl,#0000
	ld a,(lc6ac)
	and a
	jr z,lc316
	dec a
	jr z,lc31c
	ld (lc6ac),a
.lc316
	ld (lc6c7),hl
	ld (lc6c9),hl
.lc31c
	ld (lc6cb),hl
	ld (lc6cd),hl
	ld (lc6cf),hl
	ld (lc6c0),hl
	ld hl,(lc6a7)
	ld bc,#000b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (lc6c3),bc
	xor a
	ld (lc6d1),a
	ld a,#fe
	ld (lc6bb),a
	ld a,(lc6bd)
	and a
	jr nz,lc351
	ex de,hl
	ld (lc6a4),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (lc6aa),de
	ret
.lc351
	ld hl,(lc6a4)
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ex de,hl
	ld (lc6a4),hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lc6aa),hl
	ex de,hl
	sbc hl,de
	push hl
	jp nc,lc388
	add hl,de
	ex de,hl
	and a
	sbc hl,de
	ld a,(lc6bd)
	ld c,a
	ld b,#00
	ld (lc6c0),bc
	call lc65f
	ld (lc6be),hl
	ld b,#00
	ld c,a
	pop hl
	add hl,bc
	ld (lc6cf),hl
	ret
.lc388
	ld a,(lc6bd)
	ld c,a
	neg
	ld e,a
	ld d,#ff
	ld (lc6c0),de
	call lc65f
	ld (lc6be),hl
	ld b,#ff
	cpl
	ld c,a
	inc bc
	pop hl
	add hl,bc
	ld (lc6cf),hl
	ret
.lc3a6
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
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
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
.lc466
	ld a,(lc6ca)
	srl a
	srl a
	srl a
	ld hl,(lc6c5)
	jp (hl)
.lc478 equ $ + 5
.lc475 equ $ + 2
.lc474 equ $ + 1
.lc473
	db #87,#87,#87,#87,#c9,#87,#47,#87
.lc47f equ $ + 4
	db #87,#87,#90,#c9,#87,#87,#47,#87
.lc485 equ $ + 2
	db #80,#c9,#87,#47,#87,#87,#80,#c9
.lc48b
	db #87,#47,#87
.lc490 equ $ + 2
	dw lc980,lc9af
.lc492
	dw lc490,lc475,lc48b,lc474
	dw lc485,lc47f,lc478,lc473
.lc4a2
	db #00,#00,#00,#00,#00,#01,#01,#01
	db #00,#00,#01,#01,#01,#02,#02,#02
	db #00,#00,#01,#02,#02,#02,#03,#03
	db #00,#01,#02,#02,#03,#03,#04,#04
	db #00,#01,#01,#02,#03,#04,#04,#05
	db #00,#01,#02,#03,#04,#05,#05,#06
	db #00,#01,#01,#02,#03,#04,#05,#06
	db #00,#01,#02,#03,#04,#05,#06,#07
.lc4e4 equ $ + 2
.lc4e2
	db #da,#c4,#2a,#a7,#c6,#11,#05,#00
	add hl,de
	ld a,(lc6c7)
	inc a
	cp (hl)
	ld (lc6c7),a
	ret c
	xor a
	ld (lc6c7),a
	ld b,a
	ld a,(lc6ac)
	and a
	jp z,lc506
	ld a,(lc6c8)
	cp #04
	ret z
.lc506
	dec hl
	ld a,(hl)
	dec hl
	ld l,(hl)
	ld h,a
	ld a,(lc6c8)
	ld c,a
	add hl,bc
	ld e,(hl)
	ld a,(lc6ca)
	add e
	ret m
	ld (lc6ca),a
	ld a,(lc6c9)
	inc a
	ld (lc6c9),a
	inc hl
	cp (hl)
	ret c
	xor a
	ld (lc6c9),a
	inc c
	inc c
	ld a,c
	ld (lc6c8),a
	ret
.lc52e
	ld hl,(lc6a7)
	inc hl
	inc hl
	ld a,(lc6cb)
	inc a
	cp (hl)
	ld (lc6cb),a
	ret c
	xor a
	ld (lc6cb),a
	ld b,a
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld a,(lc6cc)
	ld l,a
	ld h,b
	add hl,de
	ld a,(hl)
	ex de,hl
	and a
	ld c,a
	jp p,lc554
	ld b,#ff
.lc554
	ld hl,(lc6cf)
	add hl,bc
	ld (lc6cf),hl
	inc de
	ex de,hl
	ld a,(lc6cd)
	inc a
	cp (hl)
	ld (lc6cd),a
	ret c
	xor a
	ld (lc6cd),a
	ld a,(lc6cc)
	inc a
	inc a
	ld (lc6cc),a
	inc hl
	ld a,(hl)
	cp #7f
	ret nz
	inc hl
	ld a,(hl)
	add a
	ld hl,lc6cc
	add (hl)
	ld (lc6cc),a
	ret
.lc582
	ld hl,(lc6a7)
	ld de,#0009
	add hl,de
	ld a,(hl)
	and a
	ret z
	ld a,(lc6bb)
	inc a
	cp (hl)
	ld (lc6bb),a
	ret c
	xor a
	ld (lc6bb),a
	ld b,a
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ex de,hl
	ld a,(lc6ce)
	ld c,a
	add hl,bc
	inc a
	ld (lc6ce),a
	ld a,(hl)
	ld c,a
	ld b,#00
	and a
	jp p,lc5b2
	ld b,#ff
.lc5b2
	sla c
	rl b
	inc hl
	ld a,(hl)
	ld hl,(lc6a4)
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (lc6aa),de
	cp #7f
	ret nz
	xor a
	ld (lc6ce),a
	ret
.lc5cb
	ld hl,(lc6be)
	ld a,h
	or l
	ret z
	dec hl
	ld (lc6be),hl
	ld hl,(lc6cf)
	ld de,(lc6c0)
	add hl,de
	ld (lc6cf),hl
	ret
.lc5e1
	ld hl,(lc6a7)
	ld de,#000d
	add hl,de
	ld a,(hl)
	and a
	ret z
	ld a,(lc6d1)
	inc a
	cp (hl)
	ld (lc6d1),a
	ret c
	xor a
	ld (lc6d1),a
	ld hl,(lc6c3)
	ld a,(hl)
	inc hl
	cp #21
	jr z,lc623
	ld (lc6c3),hl
	cp #20
	jr z,lc623
	ld e,#06
	call lc66c
	ld a,(lc2d5)
	and a
	rla
	rla
	rla
	cpl
	ld b,a
	ld a,(lc69f)
	and b
	ld (lc69f),a
	ld e,#07
	call lc66c
	ret
.lc623
	ld a,(lc2d5)
	rla
	rla
	rla
	ld b,a
	ld a,(lc69f)
	or b
	ld (lc69f),a
	ld e,#07
	call lc66c
	ret
.lc637
	ld a,(lc6a0)
	dec a
	ret z
	ld hl,(lc6aa)
	ld de,(lc6cf)
	add hl,de
	ld a,l
.lc646 equ $ + 1
	ld e,#00
	call lc66c
	ld a,h
.lc64c equ $ + 1
	ld e,#01
	call lc66c
	ld a,(lc6a9)
	srl a
	srl a
	srl a
.lc65a equ $ + 1
	ld e,#08
	call lc66c
	ret
.lc65f
	ld b,#10
	xor a
.lc662
	add hl,hl
	rla
	cp c
	jr c,lc669
	sub c
	inc l
.lc669
	djnz lc662
	ret
.lc66c
	ld b,#f4
	out (c),e
	ld de,lc000
	inc b
	inc b
	out (c),d
	out (c),e
	dec b
	dec b
	out (c),a
	inc b
	inc b
	ld d,#80
	out (c),d
	out (c),e
	ret
	ld b,#f5
.lc688
	in a,(c)
	rra
	jr nc,lc688
.lc68d
	in a,(c)
	rra
	jr c,lc68d
	ret
	ld bc,#7f10
	or #40
	out (c),c
	out (c),a
	ret
.lc6a4 equ $ + 7
.lc6a3 equ $ + 6
.lc6a1 equ $ + 4
.lc6a0 equ $ + 3
.lc69f equ $ + 2
.lc69d
	db #00,#00,#3f,#00,#00,#00,#00,#00
.lc6ac equ $ + 7
.lc6aa equ $ + 5
.lc6a9 equ $ + 4
.lc6a7 equ $ + 2
.lc6a6 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lc6ad
	db #00,#00,#00,#00,#00,#3a,#32,#85
.lc6bb equ $ + 6
	db #3e,#3e,#34,#32,#f0,#2b,#00,#00
.lc6c3 equ $ + 6
.lc6c2 equ $ + 5
.lc6c0 equ $ + 3
.lc6be equ $ + 1
.lc6bd
	db #00,#00,#00,#00,#00,#00,#00,#00
.lc6cc equ $ + 7
.lc6cb equ $ + 6
.lc6ca equ $ + 5
.lc6c9 equ $ + 4
.lc6c8 equ $ + 3
.lc6c7 equ $ + 2
.lc6c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.lc6d3 equ $ + 6
.lc6d2 equ $ + 5
.lc6d1 equ $ + 4
.lc6cf equ $ + 2
.lc6ce equ $ + 1
.lc6cd
	db #00,#00,#00,#00,#00,#00,#00,#00
.lc6d8 equ $ + 3
.lc6d5
	db #01,#00,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lc704 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.lc70a equ $ + 5
.lc707 equ $ + 2
.lc705
	db #00,#00,#01,#00,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lc73c equ $ + 7
.lc739 equ $ + 4
.lc737 equ $ + 2
.lc736 equ $ + 1
	db #00,#00,#00,#00,#01,#00,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
.lc768
	dw lc989,lc9ea,lcae9,lc788
	dw lce60,lce6a,lce6e,lc799
	dw lceb4,lceca,lceda,lc799
	dw lcfdb,lcfec,ld017,lc799
.lc788
	db #05,#0a,#0f,#14,#1e,#28,#3c,#50
	db #78,#a0,#f0,#03,#06,#09,#0c,#12
.lc799 equ $ + 1
	db #18,#03,#04,#06,#09,#0c,#12,#18
	db #24,#30,#48,#60,#90,#c0,#08,#10
	db #20,#00,#64,#00,#64,#00,#64,#00
	db #64,#00,#64,#06,#02,#f4,#02,#06
	db #02,#7f,#ee,#fc,#01,#04,#02,#fc
	db #01,#7f,#fd,#78,#01,#00,#01,#fe
	db #18,#00,#28,#ff,#48,#00,#ff,#6c
	db #01,#00,#01,#fc,#06,#00,#64,#ff
	db #54,#00,#ff,#64,#01,#00,#01,#f8
	db #03,#00,#14,#fe,#26,#00,#ff,#6e
	db #01,#00,#32,#ff,#6e,#00,#ff,#64
	db #01,#00,#01,#fc,#06,#00,#32,#ff
	db #4c,#00,#ff,#78,#01,#00,#01,#f8
	db #02,#00,#01,#f8,#0d,#00,#ff,#6e
	db #01,#00,#01,#fc,#04,#00,#01,#fe
	db #2f,#ff,#00,#00,#ff,#00,#04,#07
	db #04,#7f,#04,#07,#0c,#07,#7f,#07
	db #0c,#10,#0c,#7f,#00,#03,#07,#03
	db #7f,#03,#07,#0c,#07,#7f,#07,#0c
	db #0f,#0c,#7f,#00,#0c,#00,#0c,#7f
	db #20,#20,#20,#21,#1e,#1e,#1e,#1e
	db #1e,#1e,#1e,#1e,#1e,#1e,#1e,#1e
	db #1e,#1e,#1e,#1e,#1e,#1e,#1e,#1e
	db #1e,#1e,#1e,#1e,#1e,#1e,#1e,#20
	db #21,#01,#01,#20,#20,#20,#01,#01
	db #20,#20,#20,#01,#01,#20,#20,#20
	db #01,#01,#20,#20,#20,#01,#01,#20
	db #20,#20,#21,#01,#1e,#01,#1d,#01
	db #1d,#01,#1c,#01,#1b,#01,#1a,#01
	db #19,#01,#18,#01,#17,#01,#16,#01
	db #15,#01,#14,#01,#13,#01,#12,#01
	db #11,#01,#10,#01,#0f,#20,#21,#14
	db #1e,#14,#1e,#14,#1e,#14,#1e,#14
	db #1e,#14,#1e,#14,#1e,#14,#1e,#14
	db #1e,#14,#1e,#14,#1e,#14,#1e,#14
	db #1e,#14,#1e,#14,#1e,#14,#1e,#20
.lc8b9 equ $ + 1
	db #21,#a9,#c7,#00,#c3,#c7,#01,#07
	db #15,#c8,#00,#01,#38,#c8,#00,#a2
	db #79,#a9,#c7,#00,#cf,#c7,#01,#07
	db #15,#c8,#00,#01,#38,#c8,#00,#05
	db #20,#a9,#c7,#00,#db,#c7,#01,#07
	db #15,#c8,#02,#01,#59,#c8,#01,#fd
	db #7e,#a9,#c7,#00,#db,#c7,#01,#07
	db #1a,#c8,#02,#01,#59,#c8,#01,#4a
	db #fd,#a9,#c7,#00,#db,#c7,#01,#07
	db #1f,#c8,#02,#01,#59,#c8,#01,#01
	db #cd,#a9,#c7,#00,#db,#c7,#01,#07
	db #24,#c8,#02,#01,#59,#c8,#01,#fb
	db #3a,#a9,#c7,#00,#db,#c7,#01,#07
	db #29,#c8,#02,#01,#59,#c8,#01,#00
	db #c0,#a9,#c7,#00,#db,#c7,#01,#07
	db #2e,#c8,#02,#01,#59,#c8,#01,#c0
	db #fb,#a9,#c7,#00,#e7,#c7,#01,#06
	db #15,#c8,#00,#00,#3c,#c8,#14,#16
	db #00,#a9,#c7,#00,#ef,#c7,#01,#07
	db #33,#c8,#02,#01,#38,#c8,#00,#3e
	db #3a,#a9,#c7,#00,#fb,#c7,#01,#05
	db #15,#c8,#01,#00,#73,#c8,#01,#c8
	db #c5,#a9,#c7,#00,#fb,#c7,#01,#05
	db #15,#c8,#01,#01,#97,#c8,#01,#09
	db #00,#bb,#c7,#01,#07,#c8,#01,#06
.lc980
	db #15,#c8,#00,#01,#97,#c8,#00,#00
.lc989 equ $ + 1
	db #60,#64,#07,#67,#01,#60,#06,#00
	db #60,#0b,#00,#60,#09,#00,#60,#09
	db #00,#60,#0f,#00,#60,#0f,#00,#60
	db #0d,#00,#60,#0d,#00,#60,#09,#00
.lc9af equ $ + 7
	db #60,#09,#00,#60,#0f,#00,#60,#0f
	db #00,#60,#10,#00,#60,#10,#00,#60
	db #06,#00,#60,#09,#00,#60,#0f,#00
	db #60,#09,#00,#60,#0f,#00,#60,#0d
	db #00,#60,#0d,#00,#60,#0b,#00,#60
	db #10,#00,#60,#10,#00,#60,#14,#00
	db #60,#14,#00,#60,#0f,#0c,#60,#09
	db #0c,#60,#14,#f4,#60,#14,#f4,#63
.lc9ea equ $ + 2
	db #01,#7f,#60,#07,#00,#62,#04,#00
	db #0c,#60,#02,#00,#60,#00,#07,#60
	db #03,#09,#60,#01,#05,#60,#02,#00
	db #60,#00,#07,#60,#03,#09,#60,#01
	db #05,#60,#02,#00,#60,#00,#07,#60
	db #03,#09,#60,#01,#05,#60,#02,#00
	db #60,#00,#07,#60,#03,#09,#60,#01
	db #05,#60,#02,#00,#60,#00,#07,#60
	db #03,#09,#60,#01,#05,#60,#02,#00
	db #60,#00,#07,#60,#03,#09,#60,#01
	db #05,#60,#02,#00,#60,#00,#07,#60
	db #03,#09,#60,#01,#05,#60,#02,#00
	db #60,#00,#07,#60,#03,#09,#60,#01
	db #05,#60,#02,#00,#60,#00,#07,#60
	db #03,#09,#60,#01,#05,#60,#02,#00
	db #60,#00,#07,#60,#03,#09,#60,#01
	db #05,#60,#11,#00,#60,#13,#00,#60
	db #07,#00,#60,#02,#00,#60,#00,#07
	db #60,#03,#09,#60,#01,#05,#60,#02
	db #00,#60,#00,#07,#60,#03,#09,#60
	db #01,#05,#60,#02,#00,#60,#00,#07
	db #60,#03,#09,#60,#01,#05,#60,#02
	db #00,#60,#00,#07,#60,#03,#09,#60
	db #01,#05,#60,#02,#00,#60,#00,#07
	db #60,#03,#09,#60,#01,#05,#60,#02
	db #00,#60,#00,#07,#60,#03,#09,#60
	db #01,#05,#62,#04,#02,#00,#60,#11
	db #00,#60,#13,#00,#60,#02,#00,#60
	db #00,#07,#60,#03,#09,#60,#01,#05
	db #60,#02,#00,#60,#00,#07,#60,#03
	db #09,#60,#01,#05,#60,#0d,#f4,#60
	db #0d,#f4,#60,#0d,#00,#60,#0d,#00
.lcae9 equ $ + 1
	db #7f,#60,#08,#00,#60,#0c,#00,#60
	db #0a,#00,#60,#0a,#00,#60,#0a,#00
	db #60,#0a,#00,#60,#0e,#00,#60,#0e
	db #00,#60,#0a,#00,#60,#0a,#00,#60
	db #0a,#00,#60,#0a,#00,#60,#12,#00
	db #60,#12,#00,#60,#08,#00,#60,#0a
	db #00,#60,#0a,#00,#60,#0a,#00,#60
	db #0a,#00,#60,#0e,#00,#60,#0e,#00
	db #60,#0c,#00,#60,#12,#00,#60,#12
	db #00,#60,#15,#00,#60,#15,#00,#60
	db #0a,#00,#60,#15,#00,#60,#0a,#00
	db #60,#15,#00,#7f,#30,#b3,#30,#a1
	db #30,#b3,#30,#b1,#30,#a3,#30,#b3
	db #30,#a1,#30,#b3,#30,#b1,#30,#a3
	db #30,#b3,#30,#a1,#30,#b3,#30,#b1
	db #30,#a3,#30,#b3,#30,#a1,#30,#b3
	db #30,#b1,#30,#a3,#61,#66,#03,#37
	db #11,#34,#11,#37,#11,#39,#11,#3c
	db #13,#3b,#13,#39,#11,#37,#13,#66
	db #04,#66,#03,#39,#13,#39,#11,#3c
	db #11,#40,#13,#41,#13,#43,#11,#45
	db #13,#43,#11,#41,#13,#61,#66,#03
	db #37,#11,#34,#11,#32,#11,#30,#11
	db #32,#11,#34,#11,#37,#13,#39,#11
	db #3b,#13,#66,#04,#66,#03,#3c,#11
	db #3b,#11,#39,#11,#34,#11,#39,#11
	db #3b,#11,#3c,#13,#3b,#11,#39,#13
	db #37,#11,#35,#13,#61,#66,#09,#66
	db #09,#61,#37,#93,#43,#91,#40,#93
	db #3e,#91,#3c,#93,#37,#93,#3e,#91
	db #3b,#93,#39,#91,#37,#93,#39,#91
	db #3c,#91,#40,#91,#45,#93,#43,#91
	db #40,#93,#41,#91,#43,#91,#41,#91
	db #3c,#93,#39,#91,#35,#93,#61,#2d
	db #11,#2d,#11,#2b,#11,#2d,#14,#30
	db #13,#32,#13,#34,#11,#32,#13,#30
	db #11,#28,#11,#2b,#11,#2d,#11,#2d
	db #11,#2b,#11,#2d,#14,#39,#13,#37
	db #13,#34,#11,#32,#13,#34,#11,#37
	db #11,#39,#11,#61,#40,#11,#3e,#11
	db #40,#11,#3c,#13,#37,#11,#34,#11
	db #37,#11,#3b,#11,#39,#11,#37,#11
	db #41,#15,#66,#01,#40,#11,#3e,#11
	db #40,#11,#3c,#13,#39,#11,#3b,#11
	db #3c,#11,#41,#11,#40,#11,#41,#11
	db #45,#15,#66,#01,#61,#30,#21,#30
	db #20,#30,#20,#30,#21,#30,#20,#30
	db #20,#30,#21,#30,#20,#30,#20,#30
	db #21,#30,#20,#30,#20,#61,#30,#31
	db #30,#30,#30,#30,#30,#31,#30,#30
	db #30,#30,#30,#31,#30,#30,#30,#30
	db #30,#31,#30,#30,#30,#30,#61,#30
	db #41,#30,#40,#30,#40,#30,#41,#30
	db #40,#30,#40,#30,#41,#30,#40,#30
	db #40,#30,#41,#30,#40,#30,#40,#61
	db #30,#51,#30,#50,#30,#50,#30,#51
	db #30,#50,#30,#50,#30,#51,#30,#50
	db #30,#50,#30,#51,#30,#50,#30,#50
	db #61,#30,#61,#30,#60,#30,#60,#30
	db #61,#30,#60,#30,#60,#30,#61,#30
	db #60,#30,#60,#30,#61,#30,#60,#30
	db #60,#61,#30,#71,#30,#70,#30,#70
	db #30,#71,#30,#70,#30,#70,#30,#71
	db #30,#70,#30,#70,#30,#71,#30,#70
	db #30,#70,#61,#66,#09,#66,#09,#61
	db #45,#51,#45,#51,#43,#21,#45,#54
	db #24,#03,#26,#03,#28,#01,#26,#03
	db #24,#01,#1c,#01,#1f,#01,#45,#51
	db #45,#51,#43,#21,#45,#54,#2d,#03
	db #2b,#03,#28,#01,#26,#03,#28,#01
	db #2b,#01,#2d,#01,#61,#45,#51,#45
	db #51,#43,#21,#45,#54,#2d,#03,#2f
	db #03,#30,#01,#2f,#03,#2d,#01,#24
	db #01,#28,#01,#45,#51,#45,#51,#43
	db #21,#45,#54,#34,#03,#34,#03,#30
	db #01,#2f,#03,#30,#01,#34,#01,#34
	db #01,#61,#66,#09,#66,#09,#61,#18
	db #01,#18,#00,#18,#00,#1c,#01,#1f
	db #03,#13,#01,#15,#01,#13,#01,#13
	db #01,#13,#00,#13,#00,#17,#01,#1a
	db #03,#66,#04,#15,#01,#15,#00,#15
	db #00,#18,#01,#1c,#01,#21,#01,#23
	db #01,#21,#01,#11,#01,#11,#00,#11
	db #00,#15,#01,#18,#03,#66,#05,#61
	db #18,#01,#18,#00,#18,#00,#1c,#01
	db #1f,#03,#13,#01,#15,#01,#13,#01
	db #18,#01,#18,#00,#18,#00,#1c,#01
	db #1f,#03,#66,#04,#18,#01,#18,#00
	db #18,#00,#1c,#01,#1f,#03,#13,#01
	db #15,#01,#17,#01,#18,#01,#18,#00
	db #18,#00,#1f,#01,#18,#03,#66,#04
	db #61,#18,#01,#24,#00,#24,#00,#1c
	db #01,#1f,#03,#13,#01,#15,#01,#13
	db #01,#13,#01,#13,#00,#13,#00,#17
	db #01,#1a,#03,#66,#04,#15,#01,#15
	db #00,#15,#00,#18,#01,#1c,#01,#21
	db #01,#21,#01,#1f,#01,#11,#01,#11
	db #00,#11,#00,#15,#01,#18,#03,#66
	db #05,#61,#15,#01,#15,#01,#13,#01
	db #15,#04,#18,#03,#1a,#03,#1c,#01
	db #1a,#03,#18,#01,#10,#01,#13,#01
	db #15,#01,#15,#01,#13,#01,#15,#04
	db #21,#03,#1f,#03,#1c,#01,#1a,#03
	db #1c,#01,#1f,#01,#21,#01,#61,#18
	db #01,#18,#00,#18,#00,#1c,#01,#1f
	db #03,#13,#01,#15,#01,#13,#01,#17
	db #01,#17,#00,#17,#00,#1c,#01,#1f
	db #03,#66,#04,#15,#01,#1c,#00,#15
	db #00,#1c,#01,#21,#01,#10,#01,#11
	db #01,#10,#01,#11,#01,#11,#00,#11
	db #00,#15,#01,#18,#03,#66,#05,#61
.lce60
	db #64,#07,#67,#01,#60,#16,#00,#63
.lce6e equ $ + 6
.lce6a equ $ + 2
	db #01,#7f,#60,#17,#0c,#7f,#60,#18
	db #00,#7f,#37,#06,#3c,#06,#3a,#04
	db #39,#04,#37,#04,#35,#04,#30,#08
	db #61,#30,#34,#30,#32,#30,#32,#30
	db #34,#30,#32,#30,#32,#30,#34,#30
	db #32,#30,#32,#30,#34,#30,#32,#30
	db #32,#30,#3a,#61,#61,#18,#04,#24
	db #02,#22,#02,#24,#02,#21,#02,#24
	db #04,#22,#04,#2e,#04,#1f,#04,#2b
.lceb4 equ $ + 4
	db #04,#18,#08,#61,#64,#07,#67,#01
	db #60,#19,#00,#60,#19,#00,#60,#1c
	db #00,#60,#19,#00,#60,#1f,#00,#63
.lceca equ $ + 2
	db #01,#7f,#60,#1a,#0c,#60,#1a,#0c
	db #60,#1d,#0c,#60,#1a,#0c,#60,#20
.lceda equ $ + 2
	db #0c,#7f,#60,#1b,#00,#60,#1b,#00
	db #60,#1e,#00,#60,#1b,#00,#60,#21
	db #00,#7f,#40,#02,#41,#02,#43,#06
	db #40,#04,#3e,#04,#37,#04,#43,#06
	db #40,#02,#3e,#02,#45,#06,#40,#04
	db #41,#04,#3c,#04,#45,#06,#61,#45
	db #04,#41,#04,#45,#06,#43,#04,#40
	db #04,#43,#06,#3e,#04,#41,#04,#45
	db #06,#43,#08,#61,#3c,#06,#37,#06
	db #3c,#02,#40,#02,#43,#02,#48,#06
	db #61,#24,#44,#24,#42,#24,#42,#24
	db #44,#24,#42,#24,#42,#2b,#24,#2b
	db #22,#2b,#22,#2b,#24,#2b,#22,#2b
	db #22,#2d,#54,#2d,#52,#2d,#52,#2d
	db #54,#2d,#52,#2d,#52,#29,#34,#29
	db #32,#29,#32,#29,#34,#29,#32,#29
	db #32,#61,#29,#24,#29,#22,#29,#22
	db #29,#24,#29,#22,#29,#22,#28,#54
	db #28,#52,#28,#52,#28,#54,#28,#52
	db #28,#52,#26,#54,#26,#52,#26,#52
	db #26,#54,#26,#52,#26,#52,#2b,#24
	db #2b,#22,#2b,#22,#2b,#24,#2b,#22
	db #2b,#22,#61,#30,#26,#30,#26,#30
	db #2a,#61,#18,#04,#24,#04,#1f,#04
	db #1c,#04,#17,#04,#23,#04,#1f,#04
	db #1a,#04,#15,#04,#21,#04,#1c,#04
	db #15,#04,#11,#04,#1d,#04,#18,#04
	db #11,#04,#61,#11,#04,#1d,#04,#18
	db #04,#11,#04,#10,#04,#1c,#04,#17
	db #04,#10,#04,#1a,#04,#26,#04,#21
	db #04,#1a,#04,#1f,#04,#2b,#04,#1a
	db #04,#1f,#04,#61,#18,#06,#1f,#06
.lcfdb equ $ + 3
	db #18,#0a,#61,#64,#07,#67,#01,#60
	db #22,#00,#60,#25,#00,#60,#26,#00
.lcfec equ $ + 4
	db #65,#db,#cf,#7f,#60,#23,#00,#60
	db #23,#00,#60,#23,#00,#60,#23,#f9
	db #60,#23,#00,#60,#23,#fb,#60,#23
	db #f9,#60,#23,#00,#60,#23,#f9,#60
	db #23,#00,#60,#23,#fb,#60,#23,#f9
.ld017 equ $ + 7
	db #60,#27,#00,#65,#ec,#cf,#7f,#60
	db #24,#00,#60,#24,#00,#60,#24,#00
	db #60,#24,#05,#60,#24,#00,#60,#24
	db #07,#60,#24,#05,#60,#24,#00,#60
	db #24,#05,#60,#24,#00,#60,#24,#07
	db #60,#24,#05,#60,#28,#00,#65,#17
	db #d0,#7f,#66,#0a,#66,#0a,#45,#02
	db #43,#02,#45,#02,#43,#02,#45,#02
	db #43,#02,#40,#02,#3e,#02,#3c,#02
	db #39,#02,#34,#02,#37,#02,#39,#02
	db #3b,#02,#3c,#02,#3e,#02,#2d,#96
	db #32,#96,#35,#96,#39,#96,#2d,#96
	db #34,#96,#39,#96,#40,#96,#28,#94
	db #34,#94,#40,#94,#34,#94,#28,#94
	db #34,#94,#40,#94,#34,#94,#26,#94
	db #32,#94,#3e,#94,#32,#94,#26,#94
	db #32,#94,#3e,#94,#32,#94,#61,#34
	db #04,#39,#04,#3c,#04,#40,#04,#45
	db #0a,#61,#39,#c2,#3e,#c2,#40,#c2
	db #43,#c2,#45,#c2,#43,#c2,#40,#c2
	db #3e,#c2,#39,#c2,#3e,#c2,#40,#c2
	db #43,#c2,#45,#c2,#43,#c2,#40,#c2
	db #3e,#c2,#61,#30,#04,#34,#04,#39
	db #04,#3c,#04,#3c,#0a,#61,#15,#04
	db #39,#54,#1c,#04,#39,#52,#39,#52
	db #15,#04,#39,#54,#1c,#02,#1c,#02
	db #39,#54,#61,#21,#06,#1c,#06,#15
.ld0ea equ $ + 2
	db #0a,#61,#55,#cc,#6e,#cc,#87,#cc
	db #a0,#cc,#b9,#cc,#d2,#cc,#44,#cb
	db #eb,#cc,#4a,#cd,#6d,#cb,#4f,#cd
	db #c5,#cb,#88,#cd,#ca,#cb,#c1,#cd
	db #96,#cb,#f7,#cb,#f0,#cc,#fa,#cd
	db #1d,#cd,#24,#cc,#27,#ce,#72,#ce
	db #81,#ce,#9d,#ce,#ea,#ce,#29,#cf
	db #92,#cf,#07,#cf,#5a,#cf,#b3,#cf
	db #1c,#cf,#8b,#cf,#d4,#cf,#42,#d0
	db #a2,#d0,#ce,#d0,#46,#d0,#97,#d0
	db #c3,#d0,#e3,#d0,#00,#00
;
.music_info
	db "A Question Of Sport (1988)(Elite Systems)(Mark Cooksey)",0
	db "",0

	read "music_end.asm"
