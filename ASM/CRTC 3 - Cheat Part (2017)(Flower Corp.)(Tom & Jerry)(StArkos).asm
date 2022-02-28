; Music of CRTC 3 - Cheat Part (2017)(Flower Corp.)(Tom & Jerry)(StArkos)
; Ripped by Megachur the 01/11/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CRTC3CHP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #c000

	read "music_header.asm"

; Press c i t r o n during the boot.
; To see the crocodile after the amiga part press CTRL F9 

; CRTC 3 - Cheat Part (Tom & Jerry)
; 30/10/2018

;
.init_music
;
	ld de,lc70c	; init
	jp lc68f
	jp lc00d	; play
	jp lc6e4	; stop
.lc00c
	db #00
;
.play_music
.lc00d
;
	call lc6fe
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (lc00c),a
.lc01d equ $ + 1
	ld a,#01
	dec a
	jp nz,lc1e9
.lc023 equ $ + 1
	ld a,#01
	dec a
	jr nz,lc08f
.lc028 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,lc036
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.lc036
	rra
	jr nc,lc03e
	ld de,lc0df
	ldi
.lc03e
	rra
	jr nc,lc046
	ld de,lc144
	ldi
.lc046
	rra
	jr nc,lc04e
	ld de,lc1a9
	ldi
.lc04e
	ld de,lc0be
	ldi
	ldi
	ld de,lc123
	ldi
	ldi
	ld de,lc188
	ldi
	ldi
	rra
	jr nc,lc06b
	ld de,lc08e
	ldi
.lc06b
	rra
	jr nc,lc076
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lc07a),de
.lc076
	ld (lc028),hl
.lc07a equ $ + 1
	ld hl,#0000
	ld (lc098),hl
.lc080 equ $ + 1
	ld a,#01
	ld (lc093),a
	ld (lc0b9),a
	ld (lc11e),a
	ld (lc183),a
.lc08e equ $ + 1
	ld a,#01
.lc08f
	ld (lc023),a
.lc093 equ $ + 1
	ld a,#01
	dec a
	jr nz,lc0b5
.lc098 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,lc0b2
	srl a
	jr nz,lc0a6
	ld a,(hl)
	inc hl
.lc0a6
	jr nc,lc0ad
	ld (lc00c),a
	jr lc0b0
.lc0ad
	ld (lc1e8),a
.lc0b0
	ld a,#01
.lc0b2
	ld (lc098),hl
.lc0b5
	ld (lc093),a
.lc0b9 equ $ + 1
	ld a,#01
	dec a
	jr nz,lc11a
.lc0be equ $ + 1
	ld hl,#0000
	call lc53b
	ld (lc0be),hl
	jr c,lc11a
	ld a,d
	rra
	jr nc,lc0d1
	and #0f
	ld (lc26b),a
.lc0d1
	rl d
	jr nc,lc0d9
	ld (lc259),ix
.lc0d9
	rl d
	jr nc,lc118
	ld a,e
.lc0df equ $ + 1
	add #00
	ld (lc26a),a
	ld hl,#0000
	ld (lc256),hl
	rl d
	jr c,lc0f8
.lc0ee equ $ + 1
	ld hl,#0000
	ld a,(lc27b)
	ld (lc273),a
	jr lc115
.lc0f8
	ld l,b
	add hl,hl
.lc0fb equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (lc27b),a
	ld (lc273),a
	ld a,(hl)
	or a
	jr z,lc111
	ld (lc366),a
.lc111
	inc hl
	ld (lc0ee),hl
.lc115
	ld (lc26d),hl
.lc118
	ld a,#01
.lc11a
	ld (lc0b9),a
.lc11e equ $ + 1
	ld a,#01
	dec a
	jr nz,lc17f
.lc123 equ $ + 1
	ld hl,#0000
	call lc53b
	ld (lc123),hl
	jr c,lc17f
	ld a,d
	rra
	jr nc,lc136
	and #0f
	ld (lc237),a
.lc136
	rl d
	jr nc,lc13e
	ld (lc225),ix
.lc13e
	rl d
	jr nc,lc17d
	ld a,e
.lc144 equ $ + 1
	add #00
	ld (lc236),a
	ld hl,#0000
	ld (lc222),hl
	rl d
	jr c,lc15d
.lc153 equ $ + 1
	ld hl,#0000
	ld a,(lc247)
	ld (lc23f),a
	jr lc17a
.lc15d
	ld l,b
	add hl,hl
.lc160 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (lc247),a
	ld (lc23f),a
	ld a,(hl)
	or a
	jr z,lc176
	ld (lc366),a
.lc176
	inc hl
	ld (lc153),hl
.lc17a
	ld (lc239),hl
.lc17d
	ld a,#01
.lc17f
	ld (lc11e),a
.lc183 equ $ + 1
	ld a,#01
	dec a
	jr nz,lc1e4
.lc188 equ $ + 1
	ld hl,#0000
	call lc53b
	ld (lc188),hl
	jr c,lc1e4
	ld a,d
	rra
	jr nc,lc19b
	and #0f
	ld (lc206),a
.lc19b
	rl d
	jr nc,lc1a3
	ld (lc1f4),ix
.lc1a3
	rl d
	jr nc,lc1e2
	ld a,e
.lc1a9 equ $ + 1
	add #00
	ld (lc205),a
	ld hl,#0000
	ld (lc1f1),hl
	rl d
	jr c,lc1c2
.lc1b8 equ $ + 1
	ld hl,#0000
	ld a,(lc216)
	ld (lc20e),a
	jr lc1df
.lc1c2
	ld l,b
	add hl,hl
.lc1c5 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (lc216),a
	ld (lc20e),a
	ld a,(hl)
	or a
	jr z,lc1db
	ld (lc366),a
.lc1db
	inc hl
	ld (lc1b8),hl
.lc1df
	ld (lc208),hl
.lc1e2
	ld a,#01
.lc1e4
	ld (lc183),a
.lc1e8 equ $ + 1
	ld a,#01
.lc1e9
	ld (lc01d),a
	ld iy,lc37d
.lc1f1 equ $ + 1
	ld hl,#0000
.lc1f4 equ $ + 1
	ld de,#0000
	add hl,de
	ld (lc1f1),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.lc206 equ $ + 2
.lc205 equ $ + 1
	ld de,#0000
.lc208 equ $ + 1
	ld hl,#0000
	call lc388
.lc20e equ $ + 1
	ld a,#01
	dec a
	jr nz,lc217
	ld (lc208),hl
.lc216 equ $ + 1
	ld a,#06
.lc217
	ld (lc20e),a
	ld a,lx
	ex af,af'
	ld iy,lc37b
.lc222 equ $ + 1
	ld hl,#0000
.lc225 equ $ + 1
	ld de,#0000
	add hl,de
	ld (lc222),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.lc237 equ $ + 2
.lc236 equ $ + 1
	ld de,#0000
.lc239 equ $ + 1
	ld hl,#0000
	call lc388
.lc23f equ $ + 1
	ld a,#01
	dec a
	jr nz,lc248
	ld (lc239),hl
.lc247 equ $ + 1
	ld a,#06
.lc248
	ld (lc23f),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,lc379
.lc256 equ $ + 1
	ld hl,#0000
.lc259 equ $ + 1
	ld de,#0000
	add hl,de
	ld (lc256),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.lc26b equ $ + 2
.lc26a equ $ + 1
	ld de,#0000
.lc26d equ $ + 1
	ld hl,#0000
	call lc388
.lc273 equ $ + 1
	ld a,#01
	dec a
	jr nz,lc27c
	ld (lc26d),hl
.lc27b equ $ + 1
	ld a,#06
.lc27c
	ld (lc273),a
	ex af,af'
	or lx
.lc282
	ld de,lc080
	ld b,#f6
	out (c),d
	exx
	ld hl,lc379
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	out (c),a
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	call lc364
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
.lc362
	nop
	ret
.lc364
	ld a,(hl)
.lc366 equ $ + 1
	cp #ff
	ret z
	ld (lc366),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.lc379
	nop
	nop
.lc37b
	nop
	nop
.lc37d
	nop
	nop
.lc37f
	nop
.lc380
	nop
	nop
	nop
	nop
	nop
.lc385
	nop
	nop
.lc387
	nop
.lc388
	ld b,(hl)
	inc hl
	rr b
	jp c,lc3e6
	rr b
	jr c,lc3b6
	ld a,b
	and #0f
	jr nz,lc39f
	ld (iy+#07),a
	ld lx,#09
	ret
.lc39f
	ld lx,#08
	sub d
	jr nc,lc3a6
	xor a
.lc3a6
	ld (iy+#07),a
	rr b
	call lc50f
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.lc3b6
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,lc3c6
	ld (lc37f),a
	ld lx,#00
.lc3c6
	ld a,b
	and #0f
	sub d
	jr nc,lc3cd
	xor a
.lc3cd
	ld (iy+#07),a
	bit 5,c
	jr nz,lc3d7
	inc lx
	ret
.lc3d7
	rr b
	bit 6,c
	call lc501
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.lc3e6
	rr b
	jr nc,lc3f9
	ld a,(lc273)
	ld c,a
	ld a,(lc27b)
	cp c
	jr nz,lc3f9
	ld a,#fe
	ld (lc366),a
.lc3f9
	bit 1,b
	jp nz,lc4b2
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (lc387),a
	bit 0,b
	jr z,lc468
	bit 2,b
	call lc501
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (lc428),a
	ld a,b
	exx
.lc428 equ $ + 1
	jr lc429
.lc429
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	jr nc,lc448
	inc hl
.lc448
	bit 5,a
	jr z,lc458
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.lc458
	ld (lc385),hl
	exx
.lc45c
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (lc37f),a
	ld lx,#00
	ret
.lc468
	bit 2,b
	call lc501
	ld (lc385),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (lc47c),a
	ld a,b
	exx
.lc47c equ $ + 1
	jr lc47d
.lc47d
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	bit 5,a
	jr z,lc4a9
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.lc4a9
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr lc45c
.lc4b2
	bit 0,b
	jr z,lc4bd
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp lc388
.lc4bd
	ld (iy+#07),#10
	bit 5,b
	jr nz,lc4ca
	ld lx,#09
	jr lc4dd
.lc4ca
	ld lx,#08
	ld hx,e
	bit 2,b
	call lc501
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.lc4dd
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (lc387),a
	rr b
	rr b
	bit 2,b
	call lc501
	ld (lc385),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (lc37f),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.lc501
	jr z,lc50f
	ld a,(hl)
	inc hl
	exx
	add e
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld h,a
	ret
.lc50f
	bit 4,b
	jr z,lc51f
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld d,a
	exx
.lc51f
	ld a,e
	bit 3,b
	jr z,lc52c
	add (hl)
	inc hl
	cp #90
	jr c,lc52c
	ld a,#8f
.lc52c
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,lc56f
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.lc53b
	ld a,(hl)
	inc hl
	srl a
	jr c,lc562
	sub #20
	jr c,lc56c
	jr z,lc55e
	dec a
	ld e,a
.lc549
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,lc557
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.lc557
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.lc55e
	ld e,(hl)
	inc hl
	jr lc549
.lc562
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.lc56c
	add #20
	ret
.lc56f
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
	dw #000f,#000e,#000d,#000d
	dw #000c,#000b,#000b,#000a
	dw #0009,#0009,#0008,#0008
	dw #0007,#0007,#0007,#0006
	dw #0006,#0006,#0005,#0005
	dw #0005,#0004,#0004,#0004
	dw #0004,#0004,#0003,#0003
	dw #0003,#0003,#0003,#0002
	dw #0002,#0002,#0002,#0002
	dw #0002,#0002,#0002,#0002
	dw #0001,#0001,#0001,#0001
	dw #0001,#0001,#0001,#0001
;
.real_init_music
.lc68f
;
	ld hl,#0009
	add hl,de
	ld de,lc1e8
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (lc0fb),hl
	ld (lc160),hl
	ld (lc1c5),hl
	add hl,bc
	ld de,lc08e
	ldi
	ld de,lc0df
	ldi
	ld de,lc144
	ldi
	ld de,lc1a9
	ldi
	ld de,lc07a
	ldi
	ldi
	ld (lc028),hl
	ld a,#01
	ld (lc01d),a
	ld (lc023),a
	ld a,#ff
	ld (lc387),a
	ld hl,(lc0fb)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (lc26d),hl
	ld (lc239),hl
	ld (lc208),hl
	ret
;
.stop_music
.lc6e4
;
	call lc6fe
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	ld hl,lc380
	ld bc,#0300
.lc6f5
	ld (hl),c
	inc hl
	djnz lc6f5
	ld a,#3f
	jp lc282
.lc6fe
	ld a,i
	di
	ld a,#f3
	jp po,lc708
	ld a,#fb
.lc708
	ld (lc362),a
	ret
.lc70c
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#03,#6b,#00,#26,#c7,#2f,#c7
	db #3e,#c7,#45,#c7,#50,#c7,#63,#c7
	db #77,#c7,#00,#00,#00,#00,#00,#00
	db #0d,#28,#c7,#01,#00,#78,#0c,#34
	db #30,#2c,#28,#24,#20,#1c,#18,#0d
	db #3a,#c7,#01,#00,#05,#58,#0d,#40
	db #c7,#01,#00,#ba,#21,#10,#00,#05
	db #58,#0d,#4b,#c7,#01,#00,#3e,#22
	db #ba,#22,#f0,#ff,#a2,#21,#d0,#ff
	db #a2,#21,#c0,#ff,#0d,#28,#c7,#02
	db #00,#b8,#ff,#ff,#74,#0c,#30,#6c
	db #0c,#28,#64,#0c,#20,#5c,#0c,#18
	db #0d,#71,#c7,#01,#00,#3c,#7c,#04
	db #7c,#07,#7c,#0c,#0d,#7a,#c7,#40
	db #00,#00,#00,#9f,#c8,#00,#af,#c8
	db #92,#cb,#92,#cb,#00,#fb,#c9,#92
	db #cb,#92,#cb,#08,#00,#af,#c8,#f3
	db #c8,#92,#cb,#00,#af,#c8,#f3,#c8
	db #65,#c9,#00,#79,#c9,#f3,#c8,#3f
	db #ca,#00,#fb,#c9,#f3,#c8,#65,#c9
	db #00,#fb,#c9,#f3,#c8,#5b,#ca,#06
	db #fd,#fd,#fb,#c9,#f3,#c8,#9a,#cb
	db #00,#fb,#c9,#f3,#c8,#7b,#ca,#06
	db #02,#02,#a1,#ca,#f3,#c8,#93,#ca
	db #16,#05,#05,#fb,#c9,#f3,#c8,#9b
	db #ca,#20,#06,#07,#07,#a1,#ca,#f3
	db #c8,#e5,#ca,#16,#00,#00,#f5,#ca
	db #f3,#c8,#ef,#ca,#40,#00,#fa,#ca
	db #f3,#c8,#0a,#cb,#00,#5b,#cb,#f3
	db #c8,#65,#c9,#08,#0c,#5b,#cb,#f3
	db #c8,#0a,#cb,#08,#00,#5b,#cb,#f8
	db #cb,#a4,#cc,#00,#5b,#cb,#f8,#cb
	db #6f,#cb,#02,#fb,#5b,#cb,#f8,#cb
	db #ba,#cc,#02,#f9,#5b,#cb,#3c,#cc
	db #ae,#cb,#02,#f6,#5b,#cb,#3c,#cc
	db #dc,#cc,#02,#f9,#04,#cd,#3c,#cc
	db #80,#cc,#12,#f6,#04,#cd,#3c,#cc
	db #32,#cd,#48,#12,#f9,#4f,#cf,#76
	db #cd,#80,#cc,#40,#00,#04,#cd,#76
	db #cd,#32,#cd,#02,#f6,#04,#cd,#76
	db #cd,#b3,#ce,#02,#f9,#4f,#cf,#3c
	db #cc,#fe,#ce,#00,#4f,#cf,#3c,#cc
	db #d5,#ce,#02,#fb,#04,#cd,#76,#cd
	db #28,#cf,#00,#04,#cd,#76,#cd,#d2
	db #cb,#02,#f4,#4f,#cf,#ba,#cd,#46
	db #ce,#3a,#00,#05,#92,#cb,#fe,#cd
	db #0a,#cb,#48,#a1,#c8,#38,#00,#5b
	db #cb,#f3,#c8,#92,#cb,#40,#9f,#c8
	db #08,#0c,#5b,#cb,#f3,#c8,#0a,#cb
	db #01,#97,#c7,#0d,#00,#11,#1e,#15
	db #1e,#19,#0e,#1d,#0e,#21,#0e,#25
	db #06,#29,#00,#8a,#e1,#00,#00,#01
	db #02,#59,#02,#63,#02,#59,#02,#4b
	db #02,#59,#02,#63,#02,#59,#02,#41
	db #02,#4f,#02,#59,#02,#4f,#02,#41
	db #02,#4f,#02,#59,#02,#4f,#02,#47
	db #02,#55,#02,#5f,#02,#55,#02,#47
	db #02,#55,#02,#5f,#02,#55,#02,#3d
	db #02,#4b,#02,#55,#02,#4b,#02,#3d
	db #02,#4b,#02,#55,#02,#4b,#00,#8a
	db #e1,#00,#00,#02,#02,#63,#02,#8a
	db #60,#03,#02,#63,#02,#a2,#60,#04
	db #02,#a2,#60,#02,#02,#8a,#60,#03
	db #02,#a2,#60,#02,#02,#98,#60,#03
	db #02,#b0,#60,#02,#02,#98,#60,#03
	db #02,#b0,#60,#02,#02,#98,#60,#04
	db #02,#b0,#60,#02,#02,#98,#60,#03
	db #02,#b0,#60,#02,#02,#86,#60,#03
	db #02,#5f,#02,#47,#02,#9e,#60,#02
	db #02,#a2,#60,#04,#02,#86,#60,#02
	db #02,#9e,#60,#03,#02,#47,#02,#5f
	db #02,#86,#60,#02,#02,#9e,#60,#03
	db #02,#47,#02,#a2,#60,#04,#02,#8a
	db #60,#02,#02,#a2,#60,#03,#02,#4b
	db #00,#c2,#e1,#00,#00,#05,#0e,#83
	db #06,#7f,#0e,#7f,#0e,#85,#0e,#85
	db #0e,#83,#0e,#7b,#00,#8a,#e1,#00
	db #00,#01,#02,#98,#40,#8a,#4b,#a2
	db #41,#98,#4b,#98,#41,#a2,#4b,#8a
	db #41,#98,#4b,#98,#41,#8a,#4b,#a2
	db #41,#98,#4b,#98,#41,#a2,#4b,#80
	db #41,#98,#4b,#8e,#41,#80,#4b,#98
	db #41,#8e,#4b,#8e,#41,#98,#4b,#80
	db #41,#8e,#4b,#8e,#41,#80,#4b,#98
	db #41,#8e,#4b,#8e,#41,#98,#4b,#86
	db #41,#8e,#4b,#94,#41,#86,#4b,#9e
	db #41,#94,#4b,#94,#41,#9e,#4b,#86
	db #41,#94,#4b,#94,#41,#86,#4b,#9e
	db #41,#94,#4b,#94,#41,#9e,#4b,#7c
	db #41,#94,#4b,#8a,#41,#7c,#4b,#94
	db #41,#8a,#4b,#8a,#41,#94,#4b,#7c
	db #41,#8a,#4b,#8a,#41,#7c,#4b,#94
	db #41,#8a,#4b,#8a,#41,#94,#4b,#8a
	db #e1,#00,#00,#01,#02,#59,#02,#63
	db #02,#59,#02,#67,#02,#63,#02,#59
	db #02,#63,#02,#41,#02,#4f,#02,#59
	db #02,#41,#02,#5d,#02,#59,#02,#4f
	db #02,#59,#02,#47,#02,#55,#02,#5f
	db #02,#47,#02,#63,#02,#5f,#02,#55
	db #02,#5f,#02,#3d,#02,#4b,#02,#55
	db #02,#3d,#02,#59,#02,#55,#02,#4b
	db #02,#47,#00,#c2,#e0,#00,#00,#05
	db #0e,#83,#06,#85,#06,#89,#06,#71
	db #06,#75,#06,#77,#0e,#75,#0e,#71
	db #0e,#6d,#06,#6b,#06,#6d,#00,#c2
	db #e0,#00,#00,#05,#0e,#85,#06,#89
	db #0e,#8d,#06,#93,#06,#83,#26,#85
	db #02,#83,#02,#7b,#02,#83,#02,#7b
	db #02,#75,#02,#7b,#02,#7f,#00,#cc
	db #e0,#00,#00,#05,#0e,#89,#06,#83
	db #0e,#7f,#0e,#89,#0e,#79,#0e,#7b
	db #0e,#75,#06,#79,#06,#7b,#00,#be
	db #e0,#00,#00,#05,#36,#83,#00,#b0
	db #e0,#00,#00,#05,#00,#8a,#e1,#00
	db #00,#01,#02,#59,#02,#63,#02,#59
	db #02,#67,#02,#63,#02,#59,#02,#63
	db #02,#4b,#02,#59,#02,#63,#02,#4b
	db #02,#67,#02,#63,#02,#59,#02,#51
	db #02,#47,#02,#55,#02,#5f,#02,#47
	db #02,#63,#02,#5f,#02,#55,#02,#5f
	db #02,#3d,#02,#4b,#02,#55,#02,#3d
	db #02,#59,#02,#55,#02,#4b,#02,#47
	db #00,#b4,#e0,#00,#00,#05,#16,#7b
	db #16,#7f,#00,#a2,#e0,#00,#00,#05
	db #00,#42,#80,#00,#00,#00,#8a,#e0
	db #00,#00,#05,#0a,#4b,#06,#4b,#2a
	db #4b,#0a,#4b,#06,#4b,#00,#a2,#fd
	db #00,#00,#06,#02,#42,#1b,#02,#42
	db #19,#02,#42,#17,#02,#42,#15,#02
	db #42,#13,#02,#42,#11,#02,#42,#0f
	db #02,#42,#0d,#02,#42,#0b,#02,#42
	db #09,#02,#42,#07,#02,#42,#05,#02
	db #42,#03,#02,#42,#05,#02,#42,#07
	db #02,#42,#09,#02,#42,#0b,#02,#42
	db #0d,#02,#42,#0f,#02,#42,#11,#02
	db #42,#13,#02,#42,#15,#02,#42,#17
	db #02,#42,#19,#02,#42,#1b,#00,#8a
	db #e0,#00,#00,#05,#0a,#4b,#06,#4b
	db #0a,#63,#1e,#4b,#0a,#4b,#06,#4b
	db #0a,#4b,#00,#ce,#e0,#00,#00,#01
	db #06,#8d,#02,#89,#06,#8d,#06,#89
	db #0a,#85,#06,#83,#02,#85,#06,#83
	db #1a,#7b,#06,#83,#06,#85,#02,#83
	db #06,#7f,#02,#7b,#04,#7b,#42,#60
	db #00,#42,#80,#00,#00,#00,#c8,#e0
	db #00,#00,#05,#0e,#89,#06,#7b,#0e
	db #7b,#0e,#83,#0e,#79,#0e,#7b,#0e
	db #75,#00,#c8,#e0,#00,#00,#01,#06
	db #89,#02,#85,#06,#85,#06,#83,#0a
	db #83,#06,#7f,#06,#7b,#06,#85,#06
	db #85,#02,#83,#06,#83,#06,#7f,#0a
	db #7b,#06,#7f,#06,#83,#00,#da,#e0
	db #00,#00,#01,#02,#97,#02,#93,#02
	db #91,#02,#93,#02,#91,#02,#8d,#02
	db #89,#02,#8d,#02,#89,#02,#83,#02
	db #89,#8b,#8d,#0c,#8b,#8d,#16,#89
	db #87,#89,#20,#79,#ba,#e9,#00,#00
	db #01,#02,#83,#02,#89,#02,#93,#02
	db #89,#02,#83,#02,#7b,#02,#83,#02
	db #89,#02,#93,#02,#89,#02,#83,#02
	db #7b,#02,#83,#02,#89,#02,#93,#02
	db #89,#02,#83,#02,#7b,#02,#83,#02
	db #89,#02,#93,#02,#89,#02,#83,#02
	db #7b,#02,#83,#02,#89,#02,#93,#02
	db #89,#02,#83,#02,#7b,#02,#83,#00
	db #ac,#e9,#00,#00,#01,#02,#75,#02
	db #7b,#02,#85,#02,#7b,#02,#75,#02
	db #6d,#02,#75,#02,#7b,#02,#85,#02
	db #7b,#02,#75,#02,#6d,#02,#75,#02
	db #7b,#02,#85,#02,#7b,#02,#75,#02
	db #6d,#02,#75,#02,#7b,#02,#85,#02
	db #7b,#02,#75,#02,#71,#02,#79,#02
	db #7f,#02,#89,#02,#7f,#02,#79,#02
	db #71,#02,#79,#00,#c8,#e0,#00,#00
	db #01,#06,#8d,#06,#93,#06,#89,#02
	db #8d,#06,#89,#02,#93,#06,#89,#02
	db #8d,#06,#89,#02,#93,#16,#89,#02
	db #8d,#0a,#89,#06,#93,#06,#97,#00
	db #ce,#e3,#00,#00,#01,#06,#8d,#02
	db #89,#06,#8d,#06,#89,#0a,#85,#06
	db #83,#02,#85,#06,#83,#00,#ce,#e0
	db #00,#00,#01,#06,#8d,#02,#89,#06
	db #8d,#06,#89,#0a,#85,#06,#83,#02
	db #85,#06,#83,#1a,#85,#06,#89,#06
	db #8d,#02,#83,#06,#7f,#02,#7b,#00
	db #c8,#e0,#00,#00,#01,#06,#89,#02
	db #85,#06,#85,#06,#83,#0a,#83,#06
	db #7f,#06,#7b,#06,#85,#06,#85,#02
	db #83,#06,#83,#06,#7f,#0a,#83,#06
	db #89,#02,#8d,#02,#91,#02,#93,#00
	db #8a,#e0,#00,#00,#05,#0a,#4b,#02
	db #a2,#60,#04,#02,#8a,#60,#05,#0a
	db #63,#0e,#a2,#60,#04,#0e,#8a,#60
	db #05,#0a,#4b,#02,#a2,#60,#04,#02
	db #8a,#60,#05,#0a,#4b,#0e,#a2,#60
	db #04,#06,#7b,#02,#7b,#00,#c8,#e0
	db #00,#00,#01,#06,#8d,#06,#93,#06
	db #89,#02,#8d,#06,#89,#02,#93,#06
	db #89,#02,#8d,#06,#89,#02,#93,#16
	db #97,#02,#9b,#0a,#97,#06,#93,#06
	db #97,#06,#42,#80,#04,#00,#42,#80
	db #08,#00,#42,#80,#0c,#00,#42,#80
	db #10,#00,#42,#80,#14,#00,#42,#80
	db #18,#00,#42,#80,#1c,#00,#42,#80
	db #20,#00,#ac,#e9,#00,#00,#01,#63
	db #75,#6d,#7b,#75,#85,#7b,#7b,#85
	db #75,#7b,#6d,#75,#75,#6d,#7b,#75
	db #85,#7b,#7b,#85,#75,#7b,#6d,#75
	db #75,#6d,#7b,#75,#85,#7b,#7b,#85
	db #75,#7b,#6d,#75,#75,#6d,#7b,#75
	db #85,#7b,#7b,#85,#75,#7b,#71,#75
	db #79,#71,#7f,#79,#89,#7f,#7f,#89
	db #79,#7f,#71,#79,#79,#71,#a2,#e9
	db #00,#00,#01,#7b,#6b,#63,#71,#6b
	db #7b,#71,#71,#7b,#6b,#71,#63,#6b
	db #6b,#63,#71,#6b,#7b,#71,#71,#7b
	db #6b,#71,#63,#6b,#6b,#63,#71,#6b
	db #7b,#71,#71,#7b,#6b,#71,#63,#6b
	db #6b,#63,#71,#6b,#7b,#71,#71,#7b
	db #6b,#71,#63,#7b,#6b,#63,#71,#6b
	db #7b,#71,#71,#7b,#6b,#71,#63,#6b
	db #6b,#63,#ac,#e9,#00,#00,#01,#63
	db #75,#6d,#7b,#75,#85,#7b,#7b,#85
	db #75,#7b,#6d,#75,#75,#6d,#7b,#75
	db #85,#7b,#7b,#85,#75,#7b,#6d,#75
	db #75,#6d,#7b,#75,#85,#7b,#7b,#85
	db #75,#7b,#6d,#75,#75,#6d,#7b,#75
	db #85,#7b,#7b,#85,#75,#7b,#63,#7b
	db #6b,#63,#71,#6b,#7b,#71,#71,#7b
	db #6b,#71,#63,#6b,#6b,#63,#71,#6b
	db #7b,#00,#d2,#e1,#00,#00,#01,#10
	db #42,#80,#04,#00,#42,#80,#08,#00
	db #42,#80,#0c,#00,#42,#80,#10,#00
	db #42,#80,#14,#00,#42,#80,#18,#00
	db #42,#80,#1c,#00,#ba,#f9,#00,#00
	db #06,#02,#42,#17,#02,#42,#15,#02
	db #42,#13,#02,#42,#11,#02,#42,#0f
	db #02,#42,#0d,#02,#42,#0b,#02,#42
	db #09,#02,#42,#07,#02,#42,#05,#02
	db #42,#03,#02,#42,#05,#02,#42,#07
	db #02,#42,#09,#02,#42,#0b,#02,#42
	db #0d,#02,#42,#0f,#02,#42,#11,#02
	db #42,#13,#02,#42,#15,#02,#42,#17
	db #02,#42,#19,#02,#42,#1b,#00,#c8
	db #e0,#00,#00,#01,#06,#85,#06,#83
	db #06,#85,#02,#83,#06,#7f,#02,#7b
	db #06,#7f,#06,#83,#06,#7b,#16,#89
	db #02,#8d,#0a,#89,#06,#93,#06,#97
	db #00,#b4,#e0,#00,#00,#01,#06,#8d
	db #06,#91,#06,#93,#02,#8d,#06,#85
	db #0a,#97,#02,#93,#02,#91,#06,#93
	db #1c,#8b,#8d,#02,#89,#02,#85,#02
	db #83,#02,#7f,#02,#7b,#02,#7f,#02
	db #83,#00,#c2,#e0,#00,#00,#01,#06
	db #85,#06,#93,#06,#83,#02,#85,#06
	db #93,#06,#83,#02,#85,#06,#91,#04
	db #97,#93,#1c,#97,#9b,#02,#97,#02
	db #93,#02,#91,#02,#93,#02,#91,#02
	db #8d,#02,#89,#00,#c8,#e1,#00,#00
	db #01,#06,#8d,#06,#93,#06,#89,#02
	db #8d,#0a,#93,#06,#89,#06,#85,#04
	db #81,#83,#1e,#7f,#02,#83,#02,#85
	db #02,#89,#02,#8d,#02,#91,#02,#93
	db #02,#97,#00,#8a,#e0,#00,#00,#05
	db #0a,#4b,#02,#a2,#60,#04,#02,#8a
	db #60,#05,#0a,#63,#0e,#a2,#60,#04
	db #02,#63,#06,#63,#02,#8a,#60,#05
	db #0a,#4b,#02,#a2,#60,#04,#02,#8a
	db #60,#05,#02,#a2,#60,#04,#06,#8a
	db #60,#05,#06,#a2,#60,#04,#06,#63
	db #06,#7b,#00,#4c,#10,#fe,#79,#b7
	db #28,#03,#0d,#20,#f7,#dd,#44,#dd
	db #4d,#dd,#21,#00,#00,#03,#18,#0d
	db #01,#00,#0c,#dd,#7d,#91,#dd,#6f
	db #dd,#7c,#98,#dd,#67,#ed,#b0,#e5
	db #d5,#dd,#e5,#01,#b8,#7f,#ed,#49
	db #e6,#03,#f6,#8c,#06,#7f,#ed,#79
	db #3e,#c2,#cd,#e4,#cf,#3e,#ab,#06
	db #7f,#ed,#79,#3e,#88,#ed,#79,#dd
	db #e1,#d1,#e1,#dd,#7c,#fd,#b5,#20
	db #a9,#e6,#03,#f6,#8c,#06,#7f,#ed
	db #79,#01,#a0,#7f,#ed,#49,#c7,#f3
	db #01,#c1,#7f,#ed,#49,#32,#fd,#cf
	db #ed,#73,#fa,#cf,#31,#00,#00,#cd
	db #42,#d3,#cd,#af,#d0,#31,#34,#12
	db #01,#c0,#7f,#ed,#49,#c9,#cd,#42
	db #d3,#cd,#af,#d0,#c0,#cd,#47,#d0
	db #cd,#10,#d0,#c9,#af,#32,#0a,#6c
	db #32,#02,#6c,#cd,#2e,#d0,#cd,#88
	db #d4,#cd,#81,#d4,#cd,#94,#d4,#3e
	db #0f,#f5,#cd,#42,#d3,#f1,#3d,#20
	db #f8,#c9,#af,#01,#0d,#f4,#ed,#49
	db #01,#c0,#f6,#ed,#49,#ed,#71,#06
	db #f4,#ed,#79,#01,#80,#f6,#ed,#49
	db #ed,#71,#c9,#3a,#0f,#6c,#e6,#f8
	db #32,#0f,#6c,#3e,#3f,#01,#07,#f4
	db #ed,#49,#01,#c0,#f6,#ed,#49,#ed
	db #71,#06,#f4,#ed,#79,#01,#80,#f6
	db #ed,#49,#ed,#71,#af,#01,#08,#f4
	db #ed,#49,#01,#c0,#f6,#ed,#49,#ed
	db #71,#06,#f4,#ed,#79,#01,#80,#f6
	db #ed,#49,#ed,#71,#01,#09,#f4,#ed
	db #49,#01,#c0,#f6,#ed,#49,#ed,#71
	db #06,#f4,#ed,#79,#01,#80,#f6,#ed
	db #49,#ed,#71,#01,#0a,#f4,#ed,#49
	db #01,#c0,#f6,#ed,#49,#ed,#71,#06
	db #f4,#ed,#79,#01,#80,#f6,#ed,#49
.ld0b0 equ $ + 4
	db #ed,#71,#c9,#21,#00,#c0,#11,#6c
	db #d5,#06,#0f,#7e,#12,#24,#13,#10
	db #fa,#2c,#7d,#32,#b0,#d0,#dd,#21
	db #6c,#d5,#fd,#21,#34,#12,#af,#32
	db #1a,#d3,#dd,#7e,#0e,#fe,#ff,#28
	db #08,#5f,#fd,#73,#04,#1d,#fd,#73
	db #08,#dd,#7e,#07,#cb,#7f,#20,#17
	db #01,#07,#f4,#ed,#49,#01,#c0,#f6
	db #ed,#49,#ed,#71,#06,#f4,#ed,#79
	db #01,#80,#f6,#ed,#49,#ed,#71,#dd
	db #7e,#06,#01,#06,#f4,#ed,#49,#01
	db #c0,#f6,#ed,#49,#ed,#71,#06,#f4
	db #ed,#79,#01,#80,#f6,#ed,#49,#ed
	db #71,#dd,#7e,#00,#06,#f4,#ed,#71
	db #01,#c0,#f6,#ed,#49,#ed,#71,#06
	db #f4,#ed,#79,#01,#80,#f6,#ed,#49
	db #ed,#71,#dd,#7e,#01,#01,#01,#f4
	db #ed,#49,#01,#c0,#f6,#ed,#49,#ed
	db #71,#06,#f4,#ed,#79,#01,#80,#f6
	db #ed,#49,#ed,#71,#dd,#7e,#08,#cb
	db #7f,#20,#22,#cb,#77,#28,#34,#4f
	db #e6,#1f,#fd,#77,#02,#cb,#69,#20
	db #01,#af,#1f,#fd,#77,#06,#3e,#08
	db #fd,#77,#03,#fd,#77,#07,#3e,#04
	db #32,#1a,#d3,#18,#2d,#e6,#7f,#28
	db #29,#21,#3e,#cf,#87,#4f,#06,#00
	db #09,#5e,#23,#56,#3e,#01,#32,#05
	db #d3,#18,#17,#01,#08,#f4,#ed,#49
	db #01,#c0,#f6,#ed,#49,#ed,#71,#06
	db #f4,#ed,#79,#01,#80,#f6,#ed,#49
	db #ed,#71,#dd,#7e,#02,#01,#02,#f4
	db #ed,#49,#01,#c0,#f6,#ed,#49,#ed
	db #71,#06,#f4,#ed,#79,#01,#80,#f6
	db #ed,#49,#ed,#71,#dd,#7e,#03,#01
	db #03,#f4,#ed,#49,#01,#c0,#f6,#ed
	db #49,#ed,#71,#06,#f4,#ed,#79,#01
	db #80,#f6,#ed,#49,#ed,#71,#dd,#7e
	db #09,#cb,#7f,#20,#22,#cb,#77,#28
	db #34,#4f,#e6,#1f,#fd,#77,#02,#cb
	db #69,#20,#01,#af,#1f,#fd,#77,#06
	db #3e,#09,#fd,#77,#03,#fd,#77,#07
	db #3e,#04,#32,#1a,#d3,#18,#2d,#e6
	db #7f,#28,#29,#21,#3e,#cf,#87,#4f
	db #06,#00,#09,#5e,#23,#56,#3e,#01
	db #32,#05,#d3,#18,#17,#01,#09,#f4
	db #ed,#49,#01,#c0,#f6,#ed,#49,#ed
	db #71,#06,#f4,#ed,#79,#01,#80,#f6
	db #ed,#49,#ed,#71,#dd,#7e,#04,#01
	db #04,#f4,#ed,#49,#01,#c0,#f6,#ed
	db #49,#ed,#71,#06,#f4,#ed,#79,#01
	db #80,#f6,#ed,#49,#ed,#71,#dd,#7e
	db #05,#01,#05,#f4,#ed,#49,#01,#c0
	db #f6,#ed,#49,#ed,#71,#06,#f4,#ed
	db #79,#01,#80,#f6,#ed,#49,#ed,#71
	db #dd,#7e,#0a,#cb,#7f,#20,#22,#cb
	db #77,#28,#34,#4f,#e6,#1f,#fd,#77
	db #02,#cb,#69,#20,#01,#af,#1f,#fd
	db #77,#06,#3e,#0a,#fd,#77,#03,#fd
	db #77,#07,#3e,#04,#32,#1a,#d3,#18
	db #2d,#e6,#7f,#28,#29,#21,#3e,#cf
	db #87,#4f,#06,#00,#09,#5e,#23,#56
	db #3e,#01,#32,#05,#d3,#18,#17,#01
	db #0a,#f4,#ed,#49,#01,#c0,#f6,#ed
	db #49,#ed,#71,#06,#f4,#ed,#79,#01
	db #80,#f6,#ed,#49,#ed,#71,#dd,#7e
	db #0b,#01,#0b,#f4,#ed,#49,#01,#c0
	db #f6,#ed,#49,#ed,#71,#06,#f4,#ed
	db #79,#01,#80,#f6,#ed,#49,#ed,#71
	db #dd,#7e,#0c,#01,#0c,#f4,#ed,#49
	db #01,#c0,#f6,#ed,#49,#ed,#71,#06
	db #f4,#ed,#79,#01,#80,#f6,#ed,#49
	db #ed,#71,#dd,#7e,#0d,#fe,#ff,#28
	db #17,#01,#0d,#f4,#ed,#49,#01,#c0
	db #f6,#ed,#49,#ed,#71,#06,#f4,#ed
	db #79,#01,#80,#f6,#ed,#49,#ed,#71
	db #3e,#00,#b7,#28,#10,#ed,#53,#00
	db #6c,#3a,#0f,#6c,#f6,#01,#32,#0f
	db #6c,#af,#32,#05,#d3,#3e,#00,#b7
	db #28,#12,#3a,#0f,#6c,#cb,#57,#20
	db #13,#f6,#04,#fd,#22,#08,#6c,#32
	db #0f,#6c,#18,#08,#3a,#0f,#6c,#e6
.ld339 equ $ + 5
	db #fb,#32,#0f,#6c,#21,#00,#00,#2b
	db #22,#39,#d3,#7c,#b5,#c9,#ed,#73
	db #50,#d3,#3e,#0e,#fd,#21,#4f,#d3
.ld34d equ $ + 1
	db #c3,#60,#d3,#31,#00,#00,#2a,#4d
	db #d3,#2b,#56,#2b,#5e,#ed,#53,#4d
.ld360 equ $ + 4
	db #d3,#c9,#68,#d3,#31,#d6,#d4,#c3
	db #ea,#d3,#70,#d3,#31,#e0,#d4,#c3
	db #ea,#d3,#78,#d3,#31,#ea,#d4,#c3
	db #ea,#d3,#80,#d3,#31,#f4,#d4,#c3
	db #ea,#d3,#88,#d3,#31,#fe,#d4,#c3
	db #ea,#d3,#90,#d3,#31,#08,#d5,#c3
	db #ea,#d3,#98,#d3,#31,#12,#d5,#c3
	db #ea,#d3,#a0,#d3,#31,#1c,#d5,#c3
	db #ea,#d3,#a8,#d3,#31,#26,#d5,#c3
	db #ea,#d3,#b0,#d3,#31,#30,#d5,#c3
	db #ea,#d3,#b8,#d3,#31,#3a,#d5,#c3
	db #ea,#d3,#c0,#d3,#31,#44,#d5,#c3
	db #ea,#d3,#c8,#d3,#31,#4e,#d5,#c3
	db #ea,#d3,#d0,#d3,#31,#58,#d5,#c3
	db #ea,#d3,#60,#d3,#31,#62,#d5,#c3
	db #ea,#d3,#08,#7e,#23,#d9,#12,#1c
	db #08,#3d,#d9,#f2,#00,#d4,#e5,#c5
	db #d9,#c5,#e5,#d5,#fd,#e9,#d1,#e1
	db #c1,#04,#05,#28,#0c,#80,#30,#4a
	db #08,#7e,#2c,#12,#1c,#04,#20,#f9
	db #08,#d9,#c1,#e1,#cb,#21,#20,#04
	db #4e,#23,#cb,#31,#30,#cc,#46,#23
	db #57,#80,#30,#14,#08,#78,#d9,#47
	db #d9,#7e,#23,#d9,#6f,#7e,#2c,#12
	db #1c,#04,#20,#f9,#08,#d9,#18,#dc
	db #08,#7a,#d9,#47,#04,#d9,#7e,#23
	db #e5,#c5,#d9,#6f,#7e,#2c,#12,#1c
	db #10,#fa,#08,#47,#04,#c5,#e5,#d5
.ld441 equ $ + 5
	db #fd,#e9,#3c,#47,#c5,#7e,#12,#2c
.ld445 equ $ + 1
	db #1c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
	push hl
	push de
	jp (iy)
	ld hl,(#d57c)
	ld (ld339),hl
	ret
	ld bc,#0038
	ld hl,ld441
	ld de,ld445
	ldir
	ret
	ld hl,ld360
	ld (ld34d),hl
	xor a
	ld (ld0b0),a
	call ld4a2
	ret
.ld4a2
	ld b,#0f
	ld a,#c0
	ld de,#d57c
	inc de
	inc de
	ld hl,#d4d6
.ld4ae
	push bc
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	ld (hl),a
	inc hl
	inc a
	ld (hl),#00
	inc hl
	ld (hl),#00
	inc hl
	ld (hl),#40
	inc hl
	inc hl
	ex de,hl
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	push hl
	add hl,bc
	ld b,h
	ld c,l
	pop hl
	inc hl
	ex de,hl
	ld (hl),c
	inc hl
	ld (hl),b
	inc hl
	pop bc
	djnz ld4ae
	ret
;
.music_info
	db "CRTC 3 - Cheat Part (2017)(Flower Corp.)(Tom & Jerry)",0
	db "StArkos",0

	read "music_end.asm"
