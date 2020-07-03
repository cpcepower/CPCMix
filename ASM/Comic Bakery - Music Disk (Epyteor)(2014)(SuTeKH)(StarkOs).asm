; Music of Comic Bakery - Music Disk (Epyteor)(2014)(SuTeKH)(StarkOs)
; Ripped by Megachur the 20/02/2015
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "COMICBMD.BIN"
	ENDIF

music_date_rip_day		equ 20
music_date_rip_month	equ 02
music_date_rip_year		equ 2015
music_adr				equ &5000
first_theme				equ 0
last_theme				equ 2	; 0 -> 2

	read "music_header.asm"

	jp l5872
	jp l500d
	jp l5856
.l500c equ $ + 3
.l500b equ $ + 2
	db #00,#50,#00,#00
;
.play_music
.l500d
;
	xor a
	ld (l500b),a
	ld (l583d),a
.l5015 equ $ + 1
	ld a,#00
.l5017 equ $ + 1
	cp #00
	jr z,l5021
	inc a
	ld (l5015),a
	jp l52b0
.l5021
	xor a
	ld (l5015),a
.l5025
	or a
	jp nc,l5107
	ld (l512f),a
	ld (l519a),a
	ld (l5205),a
	ld a,#b7
	ld (l5025),a
.l5038 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l506e
.l503e equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l506b
	ld b,a
	and #1f
	bit 4,a
	jr z,l504f
	or #e0
.l504f
	ld (l513c),a
	rl b
	rl b
	jr nc,l505d
	ld a,(hl)
	ld (l51a7),a
	inc hl
.l505d
	rl b
	jr nc,l5066
	ld a,(hl)
	ld (l5212),a
	inc hl
.l5066
	ld (l503e),hl
	jr l5071
.l506b
	ld (l503e),hl
.l506e
	ld (l5038),a
.l5072 equ $ + 1
.l5071
	ld a,#00
	sub #01
	jr c,l507e
	ld (l5072),a
.l507b equ $ + 1
	ld a,#00
	jr l5099
.l507f equ $ + 1
.l507e
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l508c
	ld (l507f),hl
	jr l5099
.l508c
	ld (l507b),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l507f),hl
	ld (l5072),a
	ld a,b
.l5099
	ld (l5270),a
.l509d equ $ + 1
	ld hl,#0000
	ld de,l5135
	ldi
	ldi
	ld de,l51a0
	ldi
	ldi
	ld de,l520b
	ldi
	ldi
	ld (l509d),hl
.l50b8 equ $ + 1
	ld a,#00
	or a
	jr nz,l50ca
.l50bd equ $ + 1
	ld a,#00
	sub #01
	jr c,l50d8
	ld (l50bd),a
.l50c6 equ $ + 1
	ld hl,#0000
	jr l5110
.l50cb equ $ + 1
.l50ca
	ld a,#00
	sub #01
	jr c,l50d8
	ld (l50cb),a
	ld hl,(l50d9)
	jr l50fd
.l50d9 equ $ + 1
.l50d8
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l50f5
	ld (l50bd),a
	xor a
	ld (l50b8),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l50d9),hl
	ex de,hl
	ld (l50c6),hl
	jr l5110
.l50f5
	ld (l50cb),a
	ld a,#01
	ld (l50b8),a
.l50fd
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l50d9),hl
	ex de,hl
	jr l5110
.l5108 equ $ + 1
.l5107
	ld a,#00
	sub #01
	jr nc,l512b
.l510e equ $ + 1
	ld hl,#0000
.l5110
	ld a,(hl)
	inc hl
	srl a
	jr c,l5128
	srl a
	jr c,l511f
	ld (l5017),a
	jr l5127
.l511f
	ld (l500b),a
.l5123 equ $ + 1
	ld a,#01
	ld (l500c),a
.l5127
	xor a
.l5128
	ld (l510e),hl
.l512b
	ld (l5108),a
.l512f equ $ + 1
	ld a,#00
	sub #01
	jr nc,l5196
.l5135 equ $ + 1
	ld hl,#0000
.l5138 equ $ + 1
	ld bc,#0100
.l513c equ $ + 2
.l513b equ $ + 1
	ld de,#0000
.l513f equ $ + 2
	ld lx,#00
	call l53af
	ld a,lx
	ld (l513f),a
	ld (l52ba),hl
	exx
	ld (l5135),hl
	ld a,c
	ld (l5138),a
	ld (l52b4),a
	xor a
	or hy
	jr nz,l5194
	ld (l52d7),a
	ld d,a
	ld a,e
	ld (l513b),a
	ld l,d
	ld h,l
	ld (l52b7),hl
.l5169 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l52e8
	ldi
	ldi
	ld de,l52e0
	ldi
	ldi
	ld de,l52d9
	ldi
	ld de,l52ea
	ldi
	ld a,(hl)
	inc hl
	ld (l52c9),hl
	ld hl,l583d
	or (hl)
	ld (hl),a
.l5194
	ld a,ly
.l5196
	ld (l512f),a
.l519a equ $ + 1
	ld a,#00
	sub #01
	jr nc,l5201
.l51a0 equ $ + 1
	ld hl,#0000
.l51a3 equ $ + 1
	ld bc,#0200
.l51a7 equ $ + 2
.l51a6 equ $ + 1
	ld de,#0000
.l51aa equ $ + 2
	ld lx,#00
	call l53af
	ld a,lx
	ld (l51aa),a
	ld (l530c),hl
	exx
	ld (l51a0),hl
	ld a,c
	ld (l51a3),a
	ld (l5306),a
	xor a
	or hy
	jr nz,l51ff
	ld (l5329),a
	ld d,a
	ld a,e
	ld (l51a6),a
	ld l,d
	ld h,l
	ld (l5309),hl
.l51d4 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l533a
	ldi
	ldi
	ld de,l5332
	ldi
	ldi
	ld de,l532b
	ldi
	ld de,l533c
	ldi
	ld a,(hl)
	inc hl
	ld (l531b),hl
	ld hl,l583d
	or (hl)
	ld (hl),a
.l51ff
	ld a,ly
.l5201
	ld (l519a),a
.l5205 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l526c
.l520b equ $ + 1
	ld hl,#0000
.l520e equ $ + 1
	ld bc,#0300
.l5212 equ $ + 2
.l5211 equ $ + 1
	ld de,#0000
.l5215 equ $ + 2
	ld lx,#00
	call l53af
	ld a,lx
	ld (l5215),a
	ld (l535e),hl
	exx
	ld (l520b),hl
	ld a,c
	ld (l520e),a
	ld (l5358),a
	xor a
	or hy
	jr nz,l526a
	ld (l537b),a
	ld d,a
	ld a,e
	ld (l5211),a
	ld l,d
	ld h,l
	ld (l535b),hl
.l523f equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l538c
	ldi
	ldi
	ld de,l5384
	ldi
	ldi
	ld de,l537d
	ldi
	ld de,l538e
	ldi
	ld a,(hl)
	inc hl
	ld (l536d),hl
	ld hl,l583d
	or (hl)
	ld (hl),a
.l526a
	ld a,ly
.l526c
	ld (l5205),a
.l5270 equ $ + 1
	ld a,#00
	sub #01
	jr c,l527a
	ld (l5270),a
	jr l52b0
.l527a
	ld a,#37
	ld (l5025),a
	ld hl,(l509d)
.l5283 equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l52b0
	ld (l5038),a
	ld (l5072),a
	ld (l5108),a
.l5294 equ $ + 1
	ld hl,#0000
	ld (l503e),hl
.l529a equ $ + 1
	ld hl,#0000
	ld (l507f),hl
.l52a0 equ $ + 1
	ld hl,#0000
	ld (l509d),hl
.l52a6 equ $ + 1
	ld hl,#0000
	ld (l50d9),hl
.l52ac equ $ + 1
	ld a,#00
	ld (l50b8),a
.l52b0
	ld hl,l583d
.l52b4 equ $ + 1
	ld d,#00
	exx
.l52b7 equ $ + 1
	ld hl,#0000
.l52ba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l52b7),hl
	ld (l54ea),hl
	ld a,(l513f)
	ld lx,a
.l52c9 equ $ + 1
	ld hl,#0000
	ld iy,l56d8
	ld a,(l52d7)
	call l5444
	ex de,hl
.l52d7 equ $ + 1
	ld a,#00
.l52d9 equ $ + 1
	cp #00
	jr z,l52df
	inc a
	jr l52fc
.l52e0 equ $ + 1
.l52df
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l52f8
.l52e8 equ $ + 1
	ld de,#0000
.l52ea
	or a
	jr c,l52f8
.l52ee equ $ + 1
	ld hl,#0000
	ld (l52e0),hl
	dec a
	ld (l52d9),a
	inc a
.l52f8
	ld (l52c9),de
.l52fc
	ld (l52d7),a
	ld a,hx
	ld (l53ab),a
	exx
.l5306 equ $ + 1
	ld d,#00
	exx
.l5309 equ $ + 1
	ld hl,#0000
.l530c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l5309),hl
	ld (l54ea),hl
	ld a,(l51aa)
	ld lx,a
.l531b equ $ + 1
	ld hl,#0000
	ld iy,l5729
	ld a,(l5329)
	call l5444
	ex de,hl
.l5329 equ $ + 1
	ld a,#00
.l532b equ $ + 1
	cp #00
	jr z,l5331
	inc a
	jr l534e
.l5332 equ $ + 1
.l5331
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l534a
.l533a equ $ + 1
	ld de,#0000
.l533c
	or a
	jr c,l534a
.l5340 equ $ + 1
	ld hl,#0000
	ld (l5332),hl
	dec a
	ld (l532b),a
	inc a
.l534a
	ld (l531b),de
.l534e
	ld (l5329),a
	ld a,hx
	ld (l53a8),a
	exx
.l5358 equ $ + 1
	ld d,#00
	exx
.l535b equ $ + 1
	ld hl,#0000
.l535e equ $ + 1
	ld de,#0000
	add hl,de
	ld (l535b),hl
	ld (l54ea),hl
	ld a,(l5215)
	ld lx,a
.l536d equ $ + 1
	ld hl,#0000
	ld iy,l577a
	ld a,(l537b)
	call l5444
	ex de,hl
.l537b equ $ + 1
	ld a,#00
.l537d equ $ + 1
	cp #00
	jr z,l5383
	inc a
	jr l53a0
.l5384 equ $ + 1
.l5383
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l539c
.l538c equ $ + 1
	ld de,#0000
.l538e
	or a
	jr c,l539c
.l5392 equ $ + 1
	ld hl,#0000
	ld (l5384),hl
	dec a
	ld (l537d),a
	inc a
.l539c
	ld (l536d),de
.l53a0
	ld (l537b),a
	ld a,hx
	sla a
.l53a8 equ $ + 1
	or #00
	rla
.l53ab equ $ + 1
	or #00
	jp l56cd
.l53af
	ld a,(hl)
	inc hl
	srl a
	jr c,l53e8
	cp #60
	jr nc,l53f0
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l53c8
	and #0f
	ld c,a
.l53c8
	rl b
	jr nc,l53ce
	ld e,(hl)
	inc hl
.l53ce
	rl b
	jr nc,l53e0
.l53d2
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l53dc
	dec h
.l53dc
	ld ly,#00
	ret
.l53e0
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l53e8
	ld hy,#00
	add d
	ld lx,a
	jr l53e0
.l53f0
	ld hy,#01
	sub #60
	jr z,l5411
	dec a
	jr z,l5428
	dec a
	jr z,l541a
	dec a
	jr z,l53d2
	dec a
	jr z,l5424
	dec a
	jr z,l5439
	dec a
	jr z,l5430
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l5411
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l541a
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l5424
	ld c,(hl)
	inc hl
	jr l53d2
.l5428
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l5430
	ld a,(hl)
	inc hl
	ld (l500b),a
	ld a,b
	ld (l500c),a
.l5439
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l5444
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l54fa
	bit 4,e
	jr z,l54ac
	ld a,(hl)
	bit 6,a
	jr z,l5479
	ld d,#08
	inc hl
	and #1f
	jr z,l5460
	ld (l57cb),a
	res 3,d
.l5460
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l5469
	xor a
.l5469
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l5479
	ld (l57cb),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l5495
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l548e
	xor a
.l548e
	ld (iy+#36),a
	ld hx,d
	jr l54bf
.l5495
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l549e
	xor a
.l549e
	ld (iy+#36),a
.l54a1
	ld hx,d
	ret
.l54a4
	ld (iy+#36),#00
	ld d,#09
	jr l54a1
.l54ac
	ld d,#08
	ld a,e
	and #0f
	jr z,l54a4
	exx
	sub d
	exx
	jr nc,l54b9
	xor a
.l54b9
	ld (iy+#36),a
	ld hx,#08
.l54bf
	bit 5,e
	jr z,l54c7
	ld a,(hl)
	inc hl
	jr l54c8
.l54c7
	xor a
.l54c8
	bit 6,e
	jr z,l54d2
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l54d5
.l54d2
	ld de,#0000
.l54d5
	add lx
	cp #60
	jr c,l54dd
	ld a,#5f
.l54dd
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l560d
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l54ea equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l54fa
	or a
	jr nz,l5504
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l5504
	ld a,e
	or #08
	and #09
	ld d,a
	ld (iy+#36),#10
	ld b,(hl)
	inc hl
	ld a,b
	and #03
	add a
	add #08
	ld (l5836),a
	bit 3,e
	jr z,l5526
	ld a,(hl)
	inc hl
	ld (l57cb),a
	res 3,d
	jr l5526
.l5526
	ld hx,d
	xor a
	bit 7,b
	jr z,l5538
	bit 6,b
	jr z,l5533
	ld a,(hl)
	inc hl
.l5533
	ld (l55e7),a
	ld a,#01
.l5538
	ld (l5580),a
	ld a,b
	rra
	and #0e
	ld (l5591),a
	bit 4,e
	jp nz,l55f2
	bit 1,e
	jr z,l554f
	ld a,(hl)
	inc hl
	jr l5550
.l554f
	xor a
.l5550
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l555d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l5560
.l555d
	ld de,#0000
.l5560
	add lx
	cp #60
	jr c,l5568
	ld a,#5f
.l5568
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l560d
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l54ea)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l5580 equ $ + 1
	ld a,#00
	or a
	jr nz,l5590
	ex af,af'
	bit 5,a
	jr nz,l55fb
.l5589
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l5591 equ $ + 1
.l5590
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l559b),a
	ld a,c
.l559b equ $ + 1
	jr l559c
.l559c
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	ld c,a
	jr nc,l55b5
	inc bc
.l55b5
	ld a,c
	ld (l5800),a
	ld a,b
	ld (l581b),a
	ld a,(l5580)
	or a
	jr z,l55f0
	ld a,(l5591)
	ld e,a
	srl a
	add e
	ld (l55cf),a
	ld a,b
.l55cf equ $ + 1
	jr l55d0
.l55d0
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	ld b,a
.l55e7 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l55f0
	pop hl
	ret
.l55f2
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l5589
.l55fb
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l5800),a
	inc hl
	ld a,(hl)
	ld (l581b),a
	inc hl
	ret
.l560d
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
.l56cd
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l56d8 equ $ + 1
	ld a,#00
.l56da equ $ + 1
	cp #00
	jr z,l56f2
	ld d,#00
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l56da),a
	exx
.l56f3 equ $ + 1
.l56f2
	ld a,#00
.l56f5 equ $ + 1
	cp #00
	jr z,l570d
	ld d,#01
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l56f5),a
	exx
.l570e equ $ + 1
.l570d
	ld a,#00
.l5710 equ $ + 1
	cp #00
	jr z,l5728
	ld d,#08
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l5710),a
	exx
.l5729 equ $ + 1
.l5728
	ld a,#00
.l572b equ $ + 1
	cp #00
	jr z,l5743
	ld d,#02
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l572b),a
	exx
.l5744 equ $ + 1
.l5743
	ld a,#00
.l5746 equ $ + 1
	cp #00
	jr z,l575e
	ld d,#03
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l5746),a
	exx
.l575f equ $ + 1
.l575e
	ld a,#00
.l5761 equ $ + 1
	cp #00
	jr z,l5779
	ld d,#09
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l5761),a
	exx
.l577a equ $ + 1
.l5779
	ld a,#00
.l577c equ $ + 1
	cp #00
	jr z,l5794
	ld d,#04
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l577c),a
	exx
.l5795 equ $ + 1
.l5794
	ld a,#00
.l5797 equ $ + 1
	cp #00
	jr z,l57af
	ld d,#05
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l5797),a
	exx
.l57b0 equ $ + 1
.l57af
	ld a,#00
.l57b2 equ $ + 1
	cp #00
	jr z,l57ca
	ld d,#0a
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l57b2),a
	exx
.l57cb equ $ + 1
.l57ca
	ld a,#00
.l57cd equ $ + 1
	cp #00
	jr z,l57e5
	ld d,#06
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l57cd),a
	exx
.l57e5
	ld a,h
.l57e7 equ $ + 1
	cp #c0
	jr z,l57ff
	ld d,#07
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l57e7),a
	exx
.l5800 equ $ + 1
.l57ff
	ld a,#00
.l5802 equ $ + 1
	cp #00
	jr z,l581a
	ld d,#0b
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l5802),a
	exx
.l581b equ $ + 1
.l581a
	ld a,#00
.l581d equ $ + 1
	cp #00
	jr z,l5835
	ld d,#0c
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l581d),a
	exx
.l5836 equ $ + 1
.l5835
	ld a,#00
.l5838 equ $ + 1
	cp #ff
	jr nz,l5841
	ld h,a
.l583d equ $ + 1
	ld a,#00
	or a
	ret z
	ld a,h
.l5841
	ld d,#0d
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l5838),a
	ret
;
.stop_music
.l5856
;
	xor a
	ld (l570e),a
	ld (l575f),a
	ld (l57b0),a
	dec a
	ld (l5710),a
	ld (l5761),a
	ld (l57b2),a
	ld (l57e7),a
	ld a,#3f
	jp l56cd
;
.real_init_music
.l5872
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l5123),a
	ld de,#0003
	add hl,de
	ld de,l507f
	ldi
	ldi
	ld de,l509d
	ldi
	ldi
	ld de,l50d9
	ldi
	ldi
	ld de,l5169
	ldi
	ldi
	ld de,l5294
	ldi
	ldi
	ld de,l529a
	ldi
	ldi
	ld de,l52a0
	ldi
	ldi
	ld de,l52a6
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l5017),a
	ld (l5015),a
	ld (l503e),hl
	ld hl,(l50d9)
	ld (l5283),hl
	ld a,(hl)
	and #01
	ld (l50b8),a
	ld hl,(l52a6)
	ld a,(hl)
	and #01
	ld (l52ac),a
	ld hl,(l5169)
	ld (l51d4),hl
	ld (l523f),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l52c9),hl
	ld (l531b),hl
	ld (l536d),hl
	ld (l52e8),hl
	ld (l533a),hl
	ld (l538c),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l52ee),de
	ld (l5340),de
	ld (l5392),de
	ld (l52e0),de
	ld (l5332),de
	ld (l5384),de
	ld a,#37
	ld (l5025),a
	ld hl,l592e
.l591e
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l5925
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l5925
	jr l591e
.l592e
	jr l5930
.l5930
	dw l56d8,l56f3,l5729,l5744
	dw l577a,l5795,l57cb,l570e
	dw l575f,l57b0,l5800,l581b
	dw l5836,l5038,l5072,l50bd
	dw l50cb,l5108,l52d7,l5329
	dw l537b,l5138,l51a3,l520e
	dw #ff11,l56da,l56f5,l572b
	dw l5746,l577c,l5797,l57cd
	dw l57e7,l5710,l5761,l57b2
	dw l5802,l581d,l5838,l52d9
	dw l532b,l537d,#b703,l52ea
	dw l533c,l538e
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
	db #00,#00,#00,#00
.l5a00
	db #53,#4b,#31,#30,#00,#5a,#01,#32
	db #00,#1e,#5a,#20,#5a,#4a,#5a,#4d
	db #5a,#1a,#5a,#1e,#5a,#20,#5a,#4a
	db #5a,#04,#c0,#00,#00,#0b,#5f,#06
	db #70,#5b,#99,#5b,#bb,#5b,#ce,#5b
	db #ee,#5b,#10,#5c,#23,#5c,#4f,#5c
	db #71,#5c,#84,#5c,#99,#5b,#bb,#5b
	db #c5,#5c,#07,#5d,#29,#5d,#3c,#5d
	db #6e,#5d,#90,#5d,#a3,#5d,#d7,#5d
	db #f7,#5d,#0c,#0a,#5e,#57,#5a,#61
	db #5a,#14,#5b,#4f,#5b,#57,#5b,#5e
	db #5a,#61,#5a,#ff,#37,#00,#00,#00
	db #00,#5e,#5a,#14,#5b,#00,#b7,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#4e,#ff,#ff,#4e,#ff,#ff
	db #4e,#ff,#ff,#4e,#01,#00,#4e,#01
	db #00,#4d,#01,#00,#4d,#ff,#ff,#4d
	db #ff,#ff,#4d,#ff,#ff,#4d,#01,#00
	db #4c,#01,#00,#4c,#01,#00,#4c,#ff
	db #ff,#4c,#ff,#ff,#4c,#ff,#ff,#4b
	db #01,#00,#4b,#01,#00,#4b,#01,#00
	db #4b,#ff,#ff,#4b,#ff,#ff,#4a,#ff
	db #ff,#4a,#01,#00,#4a,#01,#00,#4a
	db #01,#00,#4a,#ff,#ff,#49,#ff,#ff
	db #49,#ff,#ff,#49,#01,#00,#49,#01
	db #00,#49,#01,#00,#48,#ff,#ff,#48
	db #ff,#ff,#48,#ff,#ff,#47,#01,#00
	db #47,#01,#00,#47,#01,#00,#46,#ff
	db #ff,#46,#ff,#ff,#46,#ff,#ff,#45
	db #01,#00,#45,#01,#00,#45,#01,#00
	db #44,#ff,#ff,#44,#ff,#ff,#44,#ff
	db #ff,#43,#01,#00,#43,#01,#00,#43
	db #01,#00,#42,#ff,#ff,#42,#ff,#ff
	db #42,#ff,#ff,#41,#01,#00,#41,#01
	db #00,#41,#01,#00,#5e,#5a,#4f,#5b
	db #00,#b7,#00,#0f,#0f,#0f,#0f,#0f
	db #0e,#0e,#0e,#0e,#0d,#0d,#0d,#0d
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#09,#09,#09,#08
	db #08,#08,#07,#07,#07,#06,#06,#06
	db #05,#05,#05,#04,#04,#04,#03,#03
	db #03,#02,#02,#02,#01,#01,#01,#56
	db #5b,#57,#5b,#00,#37,#00,#0f,#5e
	db #5b,#70,#5b,#00,#37,#00,#4f,#ff
	db #ff,#4f,#ff,#ff,#4f,#ff,#ff,#4f
	db #01,#00,#4f,#01,#00,#4f,#01,#00
	db #76,#81,#01,#d6,#77,#d4,#75,#77
	db #ce,#6f,#69,#ce,#65,#d0,#65,#6f
	db #ce,#73,#77,#d0,#79,#d0,#7d,#d0
	db #81,#d0,#72,#40,#fe,#c6,#fe,#c6
	db #fe,#81,#ce,#7d,#d0,#65,#69,#6f
	db #73,#3e,#81,#02,#d0,#47,#d0,#35
	db #d0,#47,#d0,#3f,#d0,#47,#d0,#35
	db #d0,#47,#d0,#3f,#d0,#47,#d0,#35
	db #d0,#47,#d0,#3f,#d0,#47,#d0,#35
	db #d0,#47,#c2,#d2,#4c,#81,#02,#d6
	db #4d,#d6,#4d,#d6,#4d,#d6,#4d,#d6
	db #4d,#d6,#4d,#d6,#4d,#c2,#74,#81
	db #01,#d0,#79,#d0,#7d,#d0,#79,#d0
	db #7d,#d0,#79,#ce,#75,#d6,#6f,#77
	db #d0,#79,#d0,#7d,#d0,#81,#d0,#83
	db #d0,#81,#ce,#7d,#d6,#65,#48,#81
	db #02,#d0,#51,#d0,#3f,#d0,#51,#d0
	db #49,#d0,#51,#d0,#3f,#d0,#51,#d0
	db #3f,#d0,#47,#d0,#35,#d0,#47,#d0
	db #39,#d0,#41,#d0,#2f,#d0,#41,#c2
	db #d2,#56,#81,#02,#d6,#57,#d6,#57
	db #d6,#57,#d6,#4d,#d6,#4d,#d6,#47
	db #d6,#47,#c2,#7c,#81,#01,#d4,#65
	db #7d,#d4,#65,#7d,#ce,#7d,#7b,#ce
	db #79,#75,#ce,#6f,#6b,#ce,#65,#6f
	db #ce,#5d,#5f,#65,#69,#6f,#ce,#5d
	db #5f,#65,#69,#6f,#ce,#5d,#5f,#65
	db #69,#6f,#d4,#74,#c0,#03,#ff,#34
	db #81,#02,#d0,#3d,#d0,#2b,#d0,#3d
	db #d0,#35,#d0,#3d,#d0,#2b,#d0,#3d
	db #d0,#3f,#d0,#47,#d0,#35,#d0,#47
	db #d0,#3f,#d0,#47,#d0,#35,#d0,#47
	db #c2,#d2,#42,#80,#02,#d6,#43,#d6
	db #43,#d6,#43,#d6,#4d,#d6,#4d,#d6
	db #4d,#d6,#4d,#c2,#c8,#00,#ff,#c6
	db #ff,#76,#80,#03,#ce,#76,#80,#04
	db #d0,#c4,#01,#d0,#c4,#02,#d0,#c4
	db #03,#d0,#c4,#04,#d0,#c4,#05,#d0
	db #c4,#06,#7a,#c1,#03,#ff,#c6,#ff
	db #c6,#ff,#7d,#ce,#7c,#80,#04,#d0
	db #c4,#01,#d0,#c4,#02,#d0,#c4,#03
	db #d0,#c4,#04,#d0,#c4,#05,#d0,#c4
	db #06,#70,#c1,#03,#ff,#c6,#ff,#c6
	db #ff,#72,#81,#03,#ce,#72,#80,#04
	db #d0,#c4,#01,#d0,#c4,#02,#d0,#c4
	db #03,#d0,#c4,#04,#d0,#c4,#05,#d0
	db #c4,#06,#76,#c1,#03,#ff,#c6,#ff
	db #c6,#ff,#79,#ce,#78,#80,#04,#d0
	db #c4,#01,#d0,#c4,#02,#d0,#c4,#03
	db #d0,#c4,#04,#d0,#c4,#05,#ce,#7c
	db #c1,#03,#06,#c6,#09,#c6,#08,#34
	db #81,#02,#d0,#3d,#d0,#2b,#d0,#3d
	db #d0,#35,#d0,#3d,#d0,#2b,#d0,#3d
	db #d0,#35,#d0,#3d,#d0,#2b,#d0,#3d
	db #d0,#35,#d0,#3d,#d0,#2b,#d0,#3d
	db #c2,#d2,#42,#81,#02,#d6,#43,#d6
	db #43,#d6,#43,#d6,#43,#d6,#43,#d6
	db #43,#d6,#43,#c2,#6e,#81,#01,#d0
	db #6f,#ce,#73,#77,#ce,#6f,#73,#ce
	db #77,#73,#d0,#73,#ce,#77,#79,#ce
	db #73,#77,#ce,#6c,#40,#fe,#c6,#fe
	db #d0,#6f,#ce,#6d,#6f,#ce,#77,#73
	db #ce,#6f,#6d,#ce,#6f,#73,#ce,#6d
	db #65,#ce,#61,#5f,#ce,#5b,#3e,#81
	db #02,#d0,#47,#d0,#35,#d0,#47,#d0
	db #43,#d0,#49,#d0,#39,#d0,#49,#d0
	db #3f,#d0,#47,#d0,#35,#d0,#47,#d0
	db #35,#d0,#3d,#d0,#2b,#d0,#3d,#c2
	db #d2,#4c,#81,#02,#d6,#4d,#d6,#51
	db #d6,#51,#d6,#4d,#d6,#4d,#d6,#43
	db #d6,#43,#c2,#6e,#81,#01,#d0,#6f
	db #ce,#73,#77,#ce,#6f,#73,#ce,#6f
	db #73,#d0,#73,#ce,#77,#79,#ce,#73
	db #77,#ce,#6e,#40,#fc,#c6,#fb,#c6
	db #fb,#ce,#77,#ce,#7b,#7f,#ce,#77
	db #7b,#ce,#7f,#81,#ce,#c6,#01,#c6
	db #01,#c6,#01,#c6,#01,#7d,#c2,#3e
	db #81,#02,#d0,#47,#d0,#35,#d0,#47
	db #d0,#43,#d0,#49,#d0,#39,#d0,#49
	db #d0,#47,#d0,#4f,#d0,#3d,#d0,#4f
	db #d0,#51,#d6,#4d,#d0,#3f,#c2,#d2
	db #4c,#80,#02,#d6,#4d,#d6,#51,#d6
	db #51,#d6,#55,#d6,#5b,#d0,#59,#d6
	db #57,#c2,#ff,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5f00
	db #53,#4b,#31,#30,#00,#5f,#01,#32
	db #00,#21,#5f,#25,#5f,#5b,#5f,#69
	db #5f,#1d,#5f,#22,#5f,#2b,#5f,#5e
	db #5f,#05,#c0,#00,#00,#c0,#00,#00
	db #0d,#3e,#7f,#06,#3e,#31,#60,#5e
	db #60,#86,#60,#b5,#60,#d7,#60,#19
	db #61,#3f,#61,#d7,#60,#b9,#61,#dc
	db #61,#d7,#60,#b9,#61,#5c,#62,#e9
	db #62,#2a,#63,#4d,#63,#c2,#63,#f4
	db #63,#0f,#64,#88,#64,#aa,#64,#bd
	db #64,#88,#64,#aa,#64,#36,#65,#72
	db #65,#93,#65,#00,#ae,#65,#04,#ae
	db #65,#03,#b0,#65,#b7,#65,#04,#bb
	db #65,#79,#5f,#83,#5f,#8c,#5f,#a5
	db #5f,#b8,#5f,#d7,#5f,#f0,#5f,#24
	db #60,#80,#5f,#83,#5f,#ff,#37,#00
	db #00,#00,#00,#8b,#5f,#8c,#5f,#00
	db #37,#00,#0f,#0e,#96,#5f,#a5,#5f
	db #00,#37,#00,#4e,#ff,#ff,#4e,#ff
	db #ff,#4e,#ff,#ff,#4e,#01,#00,#4e
	db #01,#00,#4e,#01,#00,#80,#5f,#b8
	db #5f,#00,#b7,#00,#81,#0e,#81,#0e
	db #81,#0e,#81,#0e,#81,#0e,#81,#0e
	db #c3,#5f,#d7,#5f,#00,#37,#00,#85
	db #0e,#fc,#ff,#85,#0e,#fc,#ff,#85
	db #0e,#fc,#ff,#85,#0e,#04,#00,#85
	db #0e,#04,#00,#85,#0e,#04,#00,#de
	db #5f,#f0,#5f,#00,#37,#00,#4e,#fc
	db #ff,#4e,#fc,#ff,#4e,#fc,#ff,#4e
	db #04,#00,#4e,#04,#00,#4e,#04,#00
	db #80,#5f,#24,#60,#00,#b7,#00,#0f
	db #0f,#0f,#0e,#0e,#0e,#0d,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#08,#08,#08,#07
	db #07,#07,#06,#06,#06,#05,#05,#05
	db #04,#04,#04,#03,#03,#03,#02,#02
	db #02,#01,#01,#01,#2c,#60,#31,#60
	db #00,#37,#00,#0e,#2d,#04,#2d,#07
	db #0d,#64,#81,#01,#63,#65,#69,#65
	db #64,#80,#02,#d0,#4c,#80,#01,#4b
	db #4d,#51,#4d,#4c,#80,#02,#d0,#6c
	db #80,#01,#6d,#6b,#6b,#69,#69,#67
	db #67,#65,#64,#83,#02,#ce,#c4,#02
	db #ce,#c4,#03,#ce,#c4,#04,#1c,#81
	db #03,#1f,#21,#23,#25,#27,#29,#2b
	db #2d,#2f,#31,#33,#35,#37,#39,#3b
	db #3d,#3f,#41,#43,#45,#47,#49,#4b
	db #4d,#4c,#80,#04,#d0,#34,#40,#18
	db #c6,#e8,#c6,#18,#c6,#e8,#4c,#81
	db #01,#4c,#80,#05,#d2,#c4,#01,#c4
	db #02,#c4,#03,#34,#81,#01,#34,#80
	db #05,#d2,#c4,#01,#c4,#02,#c4,#03
	db #34,#81,#01,#39,#35,#33,#35,#37
	db #39,#3b,#3d,#3c,#80,#05,#d2,#c4
	db #01,#c4,#02,#c4,#03,#ce,#c4,#05
	db #ce,#c4,#06,#ce,#c4,#07,#ce,#c4
	db #08,#ce,#c4,#09,#ce,#c4,#0a,#ce
	db #c4,#0b,#ce,#c4,#0c,#ce,#c4,#0d
	db #ce,#c4,#0e,#ce,#c4,#0f,#c2,#3e
	db #81,#06,#ce,#47,#ce,#47,#ce,#3f
	db #ce,#3d,#ce,#45,#ce,#33,#ce,#45
	db #ce,#3f,#ce,#47,#ce,#47,#ce,#3f
	db #ce,#3d,#ce,#45,#ce,#33,#ce,#45
	db #ce,#3f,#ce,#47,#ce,#47,#ce,#3f
	db #ce,#3d,#ce,#45,#ce,#33,#ce,#45
	db #ce,#3f,#ce,#47,#ce,#47,#ce,#3f
	db #ce,#3d,#ce,#45,#ce,#33,#ce,#45
	db #c2,#c4,#04,#c4,#05,#4c,#81,#06
	db #ce,#4d,#d6,#4b,#d2,#4b,#d2,#4d
	db #ce,#4d,#d6,#4b,#d2,#4b,#d2,#4d
	db #ce,#4d,#d6,#4b,#d2,#4b,#d2,#4d
	db #ce,#4d,#d6,#4b,#d2,#4b,#c2,#86
	db #81,#01,#86,#80,#02,#86,#80,#01
	db #85,#87,#86,#80,#02,#da,#c4,#01
	db #c4,#02,#c4,#03,#c4,#04,#c4,#05
	db #86,#c1,#01,#fe,#c6,#fd,#8b,#8a
	db #80,#02,#86,#80,#01,#86,#80,#02
	db #82,#80,#01,#82,#80,#02,#80,#80
	db #01,#80,#80,#02,#7c,#80,#01,#7c
	db #80,#02,#74,#80,#01,#74,#80,#02
	db #76,#80,#01,#76,#80,#02,#7c,#80
	db #01,#80,#80,#02,#7c,#80,#01,#7c
	db #80,#02,#d4,#7c,#80,#01,#7c,#80
	db #02,#76,#c0,#01,#03,#c6,#02,#c6
	db #02,#c6,#02,#c6,#01,#c6,#01,#6e
	db #80,#02,#d8,#c4,#01,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#c4,#06,#c4
	db #07,#d0,#4c,#81,#06,#ce,#4d,#d6
	db #4b,#d2,#4b,#d2,#4d,#ce,#4d,#d6
	db #4b,#d2,#4b,#d2,#4d,#ce,#4d,#d6
	db #4b,#d2,#4b,#d2,#4d,#ce,#4d,#d6
	db #4b,#d2,#4b,#c2,#86,#81,#01,#86
	db #80,#02,#86,#80,#01,#85,#87,#86
	db #80,#02,#da,#c4,#01,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#86,#c1,#01
	db #fe,#c6,#fd,#8b,#8a,#80,#02,#86
	db #80,#01,#86,#80,#02,#82,#80,#01
	db #82,#80,#02,#80,#80,#01,#80,#80
	db #02,#7c,#80,#01,#7c,#80,#02,#74
	db #80,#01,#74,#80,#02,#76,#80,#01
	db #76,#80,#02,#7c,#80,#01,#80,#80
	db #02,#7c,#80,#01,#7c,#80,#02,#d4
	db #7c,#80,#01,#7c,#80,#02,#76,#c0
	db #01,#03,#c6,#02,#c6,#02,#c6,#02
	db #c6,#01,#c6,#01,#6e,#80,#02,#d8
	db #c4,#01,#6e,#81,#01,#6e,#80,#02
	db #74,#80,#01,#74,#80,#02,#76,#80
	db #01,#76,#80,#02,#78,#81,#01,#7f
	db #7e,#80,#02,#80,#80,#01,#80,#80
	db #02,#86,#80,#01,#86,#80,#02,#8c
	db #80,#01,#8c,#80,#02,#8a,#80,#01
	db #8d,#8b,#87,#86,#80,#02,#80,#80
	db #01,#80,#80,#02,#8c,#80,#01,#8c
	db #80,#02,#8a,#80,#01,#8a,#80,#02
	db #86,#80,#01,#86,#80,#02,#7c,#c0
	db #01,#ff,#c6,#ff,#7d,#7c,#80,#02
	db #78,#80,#01,#78,#80,#02,#74,#80
	db #01,#74,#80,#02,#6a,#80,#01,#6a
	db #80,#02,#6e,#80,#01,#6e,#80,#02
	db #e8,#5e,#80,#03,#5e,#80,#04,#60
	db #80,#01,#60,#80,#02,#62,#80,#01
	db #62,#80,#02,#64,#80,#01,#64,#80
	db #02,#66,#80,#01,#66,#80,#02,#68
	db #80,#01,#68,#80,#02,#6a,#80,#01
	db #6a,#80,#02,#6c,#80,#01,#6c,#80
	db #02,#30,#81,#06,#39,#ce,#39,#ce
	db #31,#ce,#2f,#ce,#37,#d0,#25,#ce
	db #37,#ce,#31,#ce,#39,#ce,#39,#ce
	db #31,#ce,#2f,#ce,#37,#ce,#25,#ce
	db #37,#ce,#31,#ce,#39,#ce,#39,#ce
	db #31,#ce,#2f,#ce,#37,#ce,#25,#ce
	db #37,#ce,#31,#ce,#39,#ce,#39,#ce
	db #31,#ce,#2f,#ce,#37,#ce,#25,#ce
	db #37,#c2,#ce,#3e,#81,#06,#ce,#3f
	db #d6,#3d,#d4,#3d,#d2,#3f,#ce,#3f
	db #d6,#3d,#d2,#3d,#d2,#3f,#ce,#3f
	db #d6,#3d,#d2,#3d,#d2,#3f,#ce,#3f
	db #d6,#3d,#d2,#3d,#c2,#6e,#81,#01
	db #6e,#80,#02,#74,#80,#01,#74,#80
	db #02,#76,#80,#01,#76,#80,#02,#7c
	db #80,#01,#7c,#80,#02,#82,#80,#01
	db #87,#83,#81,#7d,#7c,#80,#02,#64
	db #80,#01,#64,#80,#02,#78,#80,#01
	db #7b,#65,#77,#79,#65,#75,#77,#65
	db #73,#75,#65,#71,#73,#65,#6d,#6f
	db #ce,#c4,#01,#c4,#02,#86,#81,#07
	db #c4,#01,#86,#01,#c4,#01,#86,#01
	db #c4,#01,#c4,#02,#c4,#03,#86,#01
	db #c4,#01,#c4,#02,#c4,#03,#c4,#04
	db #ce,#c4,#05,#ce,#84,#01,#c4,#01
	db #c4,#02,#c4,#03,#c4,#04,#ce,#c4
	db #05,#ce,#84,#01,#c4,#01,#c4,#02
	db #c4,#03,#3e,#80,#06,#ce,#47,#ce
	db #47,#ce,#3f,#ce,#3d,#ce,#45,#ce
	db #33,#ce,#45,#ce,#3f,#ce,#47,#ce
	db #47,#ce,#3f,#ce,#3d,#ce,#45,#ce
	db #33,#ce,#45,#ce,#3f,#d2,#47,#d2
	db #47,#d2,#3f,#d2,#3d,#d2,#45,#d2
	db #33,#d2,#45,#c2,#d0,#4c,#80,#06
	db #ce,#4d,#d6,#4b,#d2,#4b,#d2,#4d
	db #ce,#4d,#d6,#4b,#d2,#4b,#d6,#4d
	db #d2,#4d,#e2,#4b,#da,#4b,#c2,#c4
	db #04,#ce,#c4,#05,#ce,#86,#81,#07
	db #c4,#01,#86,#01,#c4,#01,#86,#01
	db #c4,#01,#c4,#02,#c4,#03,#86,#01
	db #c4,#01,#86,#01,#87,#85,#c4,#01
	db #84,#01,#c4,#01,#84,#01,#c4,#01
	db #c4,#02,#c4,#03,#84,#01,#c4,#01
	db #84,#01,#c4,#01,#84,#01,#c4,#01
	db #c4,#02,#c4,#03,#c4,#05,#c4,#07
	db #c4,#09,#c4,#0f,#6e,#01,#c4,#01
	db #6e,#01,#c4,#01,#6e,#01,#c4,#01
	db #c4,#02,#c4,#03,#6e,#01,#c4,#01
	db #c4,#02,#c4,#03,#c4,#04,#ce,#c4
	db #05,#ce,#6c,#01,#c4,#01,#c4,#02
	db #c4,#03,#c4,#04,#ce,#c4,#05,#ce
	db #6c,#01,#c4,#01,#c4,#02,#c4,#03
	db #3e,#81,#06,#d2,#47,#d2,#47,#d2
	db #3f,#d2,#3d,#d2,#45,#d2,#33,#d2
	db #45,#d2,#3f,#d2,#47,#d2,#47,#d2
	db #3f,#d2,#3d,#d2,#45,#d2,#33,#d2
	db #45,#c2,#d4,#4c,#80,#06,#d2,#4d
	db #e2,#4b,#da,#4b,#da,#4d,#d2,#4d
	db #e2,#4b,#da,#4b,#c2,#c4,#04,#ce
	db #c4,#05,#ce,#6e,#81,#07,#c4,#01
	db #6e,#01,#c4,#01,#6e,#01,#c4,#01
	db #c4,#02,#c4,#03,#6e,#01,#c4,#01
	db #6e,#01,#6f,#6d,#c4,#01,#6c,#01
	db #c4,#01,#6c,#01,#c4,#01,#c4,#02
	db #c4,#03,#6c,#01,#c4,#01,#6c,#01
	db #c4,#01,#6c,#01,#c4,#01,#c4,#02
	db #c4,#03,#c4,#05,#c4,#07,#c4,#09
	db #c4,#0f,#56,#01,#c4,#01,#56,#01
	db #c4,#01,#56,#01,#c4,#01,#c4,#02
	db #c4,#03,#56,#01,#c4,#01,#c4,#02
	db #c4,#03,#c4,#04,#ce,#c4,#05,#ce
	db #54,#01,#c4,#01,#c4,#02,#c4,#03
	db #c4,#04,#ce,#c4,#05,#ce,#54,#01
	db #c4,#01,#c4,#02,#c4,#03,#c4,#04
	db #ce,#c4,#05,#ce,#56,#81,#07,#c4
	db #01,#56,#01,#c4,#01,#56,#01,#c4
	db #01,#c4,#02,#c4,#03,#56,#01,#c4
	db #01,#56,#01,#57,#55,#c4,#01,#54
	db #01,#c4,#01,#54,#01,#c4,#01,#c4
	db #02,#c4,#03,#54,#01,#c4,#01,#54
	db #01,#c4,#01,#54,#01,#c4,#02,#c4
	db #04,#ca,#3e,#81,#06,#d2,#47,#d2
	db #47,#d2,#3f,#d2,#3d,#d2,#45,#d2
	db #1c,#c0,#01,#82,#c6,#82,#c6,#82
	db #c6,#82,#c6,#82,#3e,#85,#02,#c4
	db #04,#c4,#06,#d4,#4c,#81,#06,#d2
	db #4d,#e2,#4b,#d2,#4c,#c0,#01,#09
	db #c6,#fe,#c6,#09,#c6,#fe,#c6,#09
	db #c4,#02,#c4,#04,#c4,#06,#14,#ff
	db #2c,#14,#0d,#08,#01,#14,#ff,#14
	db #3d,#08,#ff,#08,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6600
	db #53,#4b,#31,#30,#00,#66,#01,#32
	db #00,#1e,#66,#20,#66,#b6,#66,#b9
	db #66,#1a,#66,#1e,#66,#20,#66,#b6
	db #66,#05,#c0,#00,#00,#2f,#7f,#18
	db #37,#69,#37,#69,#39,#69,#37,#69
	db #99,#69,#39,#69,#db,#69,#99,#69
	db #39,#69,#2b,#6a,#99,#69,#39,#69
	db #7b,#6a,#89,#6a,#39,#69,#d5,#6a
	db #89,#6a,#39,#69,#0c,#6b,#89,#6a
	db #39,#69,#51,#6b,#89,#6a,#39,#69
	db #c6,#6b,#0a,#6c,#4e,#6c,#ae,#6c
	db #f4,#6c,#3a,#6d,#9a,#6d,#0a,#6c
	db #4e,#6c,#de,#6d,#f4,#6c,#3a,#6d
	db #26,#6e,#0a,#6c,#4e,#6c,#63,#6e
	db #f4,#6c,#3a,#6d,#75,#6e,#0a,#6c
	db #4e,#6c,#99,#6e,#f4,#6c,#3a,#6d
	db #ac,#6e,#0a,#6c,#37,#69,#37,#69
	db #f4,#6c,#37,#69,#dc,#6e,#0a,#6c
	db #37,#69,#63,#6e,#f4,#6c,#37,#69
	db #75,#6e,#0a,#6c,#dc,#6e,#99,#6e
	db #f4,#6c,#63,#6e,#17,#6f,#0a,#6c
	db #75,#6e,#38,#6f,#f4,#6c,#99,#6e
	db #4b,#6f,#7c,#6f,#ad,#6f,#30,#de
	db #6f,#db,#66,#e5,#66,#02,#67,#13
	db #67,#26,#67,#57,#67,#b4,#67,#df
	db #67,#ff,#67,#20,#68,#41,#68,#62
	db #68,#83,#68,#a3,#68,#c5,#68,#e7
	db #68,#09,#69,#e2,#66,#e5,#66,#ff
	db #37,#00,#00,#00,#00,#e2,#66,#02
	db #67,#00,#b7,#00,#81,#0e,#81,#0e
	db #81,#0e,#81,#0e,#81,#0e,#81,#0e
	db #81,#0e,#81,#0e,#81,#0e,#81,#0e
	db #81,#0e,#e2,#66,#13,#67,#00,#b7
	db #00,#81,#0e,#81,#0e,#81,#0e,#81
	db #0e,#81,#0e,#e2,#66,#26,#67,#00
	db #b7,#00,#0c,#0e,#0e,#0d,#0d,#0c
	db #0c,#0b,#0a,#09,#08,#07,#e2,#66
	db #57,#67,#00,#b7,#00,#0f,#0f,#0f
	db #0f,#0e,#0e,#4d,#03,#00,#4d,#06
	db #00,#4c,#03,#00,#0b,#4a,#fd,#ff
	db #49,#fa,#ff,#48,#fd,#ff,#07,#46
	db #03,#00,#45,#06,#00,#44,#03,#00
	db #03,#42,#fd,#ff,#41,#fa,#ff,#e2
	db #66,#b4,#67,#00,#b7,#00,#0f,#0f
	db #0f,#0f,#0e,#0e,#4e,#03,#00,#4e
	db #06,#00,#4d,#03,#00,#0d,#4d,#fd
	db #ff,#4d,#fa,#ff,#4c,#fd,#ff,#0c
	db #4c,#03,#00,#4b,#06,#00,#4b,#03
	db #00,#0b,#4a,#fd,#ff,#4a,#fa,#ff
	db #49,#fd,#ff,#09,#48,#03,#00,#48
	db #06,#00,#47,#03,#00,#07,#46,#fd
	db #ff,#46,#fa,#ff,#45,#fd,#ff,#05
	db #44,#03,#00,#44,#06,#00,#43,#03
	db #00,#03,#42,#fd,#ff,#42,#fa,#ff
	db #41,#fd,#ff,#01,#e2,#66,#df,#67
	db #00,#b7,#00,#0f,#0f,#0f,#2f,#01
	db #2f,#01,#2f,#01,#2f,#05,#2f,#05
	db #2f,#05,#2e,#05,#2e,#05,#2e,#05
	db #0f,#0f,#0f,#2f,#01,#2f,#01,#2f
	db #01,#0f,#0f,#0f,#0e,#0e,#0e,#eb
	db #67,#ff,#67,#00,#37,#00,#0f,#0f
	db #0f,#0f,#0f,#0f,#4f,#03,#00,#4f
	db #06,#00,#4f,#03,#00,#0f,#4f,#fd
	db #ff,#4f,#fa,#ff,#4f,#fd,#ff,#e2
	db #66,#20,#68,#00,#b7,#00,#0e,#2e
	db #0c,#2e,#07,#2d,#03,#0d,#2d,#0c
	db #2c,#07,#2c,#03,#0b,#2b,#0c,#2a
	db #07,#29,#03,#08,#27,#0c,#26,#07
	db #e2,#66,#41,#68,#00,#b7,#00,#0e
	db #2e,#0c,#2e,#09,#2d,#05,#0d,#2d
	db #0c,#2c,#09,#2c,#05,#0b,#2b,#0c
	db #2a,#09,#29,#05,#08,#27,#0c,#26
	db #09,#e2,#66,#62,#68,#00,#b7,#00
	db #0e,#2e,#0c,#2e,#07,#2d,#04,#0d
	db #2d,#0c,#2c,#07,#2c,#04,#0b,#2b
	db #0c,#2a,#07,#29,#04,#08,#27,#0c
	db #26,#07,#e2,#66,#83,#68,#00,#b7
	db #00,#0e,#2e,#0c,#2e,#08,#2d,#03
	db #0d,#2d,#0c,#2c,#08,#2c,#03,#0b
	db #2b,#0c,#2a,#08,#29,#03,#08,#27
	db #0c,#26,#08,#8f,#68,#a3,#68,#00
	db #37,#00,#0f,#0f,#0f,#0f,#0f,#0f
	db #4f,#01,#00,#4f,#03,#00,#4f,#01
	db #00,#0f,#4f,#ff,#ff,#4f,#fd,#ff
	db #4f,#ff,#ff,#e2,#66,#c5,#68,#00
	db #b7,#00,#2e,#03,#2e,#07,#2e,#0c
	db #0d,#2d,#03,#2d,#07,#2c,#0c,#0c
	db #2b,#03,#2b,#07,#2a,#0c,#09,#28
	db #03,#27,#07,#26,#0c,#e2,#66,#e7
	db #68,#00,#b7,#00,#2e,#05,#2e,#09
	db #2e,#0c,#0d,#2d,#05,#2d,#09,#2c
	db #0c,#0c,#2b,#05,#2b,#09,#2a,#0c
	db #09,#28,#05,#27,#09,#26,#0c,#e2
	db #66,#09,#69,#00,#b7,#00,#2e,#04
	db #2e,#07,#2e,#0c,#0d,#2d,#04,#2d
	db #07,#2c,#0c,#0c,#2b,#04,#2b,#07
	db #2a,#0c,#09,#28,#04,#27,#07,#26
	db #0c,#1f,#69,#37,#69,#00,#37,#00
	db #4f,#fe,#ff,#4f,#fe,#ff,#4f,#fe
	db #ff,#4f,#fe,#ff,#4f,#fe,#ff,#4f
	db #fe,#ff,#4f,#ff,#ff,#4f,#01,#00
	db #4f,#ff,#ff,#4f,#fe,#ff,#4f,#fd
	db #ff,#4f,#fb,#ff,#4f,#fd,#ff,#ca
	db #c2,#3e,#81,#01,#ce,#3e,#80,#02
	db #3f,#53,#57,#3f,#3f,#3e,#80,#01
	db #ce,#3e,#80,#02,#3f,#53,#57,#3f
	db #3f,#44,#80,#01,#ce,#44,#80,#02
	db #45,#59,#5d,#45,#45,#3a,#80,#01
	db #ce,#3a,#80,#02,#3b,#4f,#53,#3b
	db #3b,#3e,#80,#01,#ce,#3e,#80,#02
	db #3f,#53,#57,#3f,#3f,#3e,#80,#01
	db #ce,#3e,#80,#02,#3f,#53,#57,#3f
	db #3f,#44,#80,#01,#ce,#44,#80,#02
	db #45,#59,#5d,#45,#45,#48,#80,#01
	db #ce,#48,#80,#02,#49,#5d,#61,#49
	db #49,#6e,#81,#03,#ce,#87,#87,#6f
	db #ce,#87,#87,#6f,#ce,#87,#87,#6f
	db #ce,#87,#87,#75,#ce,#8d,#8d,#75
	db #ce,#8d,#8d,#79,#ce,#91,#91,#79
	db #ce,#91,#91,#6f,#ce,#87,#87,#6f
	db #ce,#87,#87,#6f,#ce,#87,#87,#6f
	db #ce,#87,#87,#75,#ce,#8d,#8d,#75
	db #ce,#8d,#8d,#79,#ce,#91,#91,#79
	db #ce,#91,#91,#6e,#81,#04,#ce,#6f
	db #ce,#6b,#ce,#6e,#80,#05,#d2,#64
	db #80,#04,#ce,#6f,#ce,#73,#ce,#72
	db #c0,#05,#fd,#ce,#78,#80,#04,#ce
	db #75,#ce,#73,#ce,#72,#c0,#05,#fd
	db #ce,#72,#80,#04,#ce,#6f,#ce,#6b
	db #ce,#6f,#ce,#6f,#ce,#6b,#ce,#6e
	db #80,#05,#d2,#64,#80,#04,#ce,#6b
	db #ce,#6f,#ce,#6b,#ce,#6b,#ce,#6f
	db #ce,#6b,#ce,#69,#ce,#61,#ce,#67
	db #69,#6b,#6d,#6e,#81,#04,#ce,#6f
	db #ce,#6b,#ce,#6e,#80,#05,#d2,#64
	db #80,#04,#ce,#6f,#ce,#73,#ce,#72
	db #c0,#05,#fd,#ce,#78,#80,#04,#ce
	db #75,#ce,#73,#ce,#72,#c0,#05,#fd
	db #ce,#72,#80,#04,#ce,#6f,#ce,#6b
	db #ce,#6f,#ce,#6f,#ce,#6b,#ce,#6e
	db #80,#05,#d2,#64,#80,#04,#ce,#6b
	db #ce,#6f,#ce,#7d,#ce,#79,#ce,#75
	db #ce,#6f,#ce,#6b,#ce,#65,#ce,#5a
	db #80,#06,#c2,#56,#81,#07,#c0,#32
	db #c4,#01,#d2,#c4,#02,#d2,#c4,#03
	db #c2,#56,#81,#08,#ce,#6f,#6f,#57
	db #ce,#6f,#6f,#57,#ce,#6f,#6f,#57
	db #ce,#6f,#6f,#52,#80,#09,#ce,#6b
	db #6b,#53,#ce,#6b,#6b,#52,#80,#0a
	db #ce,#6b,#6b,#53,#ce,#6b,#6b,#56
	db #80,#08,#ce,#6f,#6f,#57,#ce,#6f
	db #6f,#57,#ce,#6f,#6f,#57,#ce,#6f
	db #6f,#52,#80,#09,#ce,#6b,#6b,#53
	db #ce,#6b,#6b,#50,#80,#0b,#ce,#69
	db #69,#51,#ce,#69,#69,#c4,#04,#d2
	db #c4,#05,#d2,#c4,#06,#d2,#c4,#07
	db #d2,#c4,#08,#d2,#c4,#09,#d2,#c4
	db #0a,#d2,#c4,#0b,#d2,#c4,#0c,#d2
	db #c4,#0d,#d2,#c4,#0e,#d2,#c4,#0f
	db #e0,#86,#9f,#0c,#c4,#0e,#c4,#0c
	db #c4,#0a,#c4,#07,#c4,#05,#c4,#03
	db #c4,#01,#c4,#00,#fc,#c6,#03,#c6
	db #03,#7c,#80,#0c,#ce,#87,#ce,#8a
	db #40,#ff,#8d,#d0,#c4,#01,#8a,#41
	db #ff,#8d,#c4,#01,#8a,#41,#ff,#8d
	db #8a,#41,#ff,#8d,#ce,#8a,#41,#ff
	db #8d,#8a,#41,#ff,#8a,#40,#ff,#c6
	db #01,#87,#ce,#83,#d2,#7d,#c6,#fc
	db #86,#40,#02,#84,#40,#02,#7d,#c6
	db #fc,#86,#40,#02,#84,#40,#02,#7d
	db #c2,#82,#c1,#0c,#fe,#87,#e8,#c6
	db #01,#c6,#01,#c6,#01,#c6,#01,#c6
	db #01,#c6,#01,#c6,#01,#c6,#01,#c6
	db #01,#c6,#01,#c6,#01,#c6,#01,#c6
	db #01,#c6,#01,#c6,#01,#c6,#01,#c6
	db #01,#c6,#01,#c8,#01,#01,#c6,#01
	db #c8,#02,#01,#c6,#01,#c8,#03,#01
	db #c6,#01,#c8,#04,#01,#c6,#01,#c8
	db #05,#01,#c6,#01,#c8,#06,#01,#c6
	db #01,#c8,#07,#01,#c6,#01,#c8,#08
	db #01,#c6,#01,#c8,#09,#01,#c6,#01
	db #c8,#0a,#01,#c6,#01,#c8,#0b,#01
	db #c6,#01,#c8,#0c,#01,#c6,#01,#c8
	db #0d,#01,#c6,#01,#c8,#0e,#01,#c6
	db #01,#c8,#0f,#01,#c6,#01,#56,#81
	db #0d,#ce,#6f,#6f,#57,#ce,#6f,#6f
	db #57,#ce,#6f,#6f,#57,#ce,#6f,#6f
	db #57,#ce,#6f,#6f,#57,#ce,#6f,#6f
	db #57,#ce,#6f,#6f,#57,#ce,#6f,#6f
	db #52,#80,#0e,#ce,#6b,#6b,#53,#ce
	db #6b,#6b,#53,#ce,#6b,#6b,#53,#ce
	db #6b,#6b,#53,#ce,#6b,#6b,#53,#ce
	db #6b,#6b,#53,#ce,#6b,#6b,#53,#ce
	db #6b,#6b,#56,#81,#08,#ce,#6f,#6f
	db #57,#ce,#6f,#6f,#57,#ce,#6f,#6f
	db #57,#ce,#6f,#6f,#57,#ce,#6f,#6f
	db #57,#ce,#6f,#6f,#57,#ce,#6f,#6f
	db #57,#ce,#6f,#6f,#52,#80,#09,#ce
	db #6b,#6b,#53,#ce,#6b,#6b,#53,#ce
	db #6b,#6b,#53,#ce,#6b,#6b,#53,#ce
	db #6b,#6b,#53,#ce,#6b,#6b,#53,#ce
	db #6b,#6b,#53,#ce,#6b,#6b,#3e,#81
	db #01,#ce,#3e,#80,#02,#3f,#53,#57
	db #3f,#3f,#3e,#80,#01,#ce,#3e,#80
	db #02,#3f,#53,#57,#3f,#3f,#3e,#80
	db #01,#ce,#3e,#80,#02,#3f,#53,#57
	db #3f,#3f,#3e,#80,#01,#ce,#3e,#80
	db #02,#3f,#53,#57,#3f,#3f,#44,#80
	db #01,#ce,#44,#80,#02,#45,#59,#5d
	db #45,#45,#44,#80,#01,#ce,#44,#80
	db #02,#45,#59,#5d,#45,#45,#44,#80
	db #01,#ce,#44,#80,#02,#45,#59,#5d
	db #45,#45,#44,#80,#01,#ce,#44,#80
	db #02,#45,#59,#5d,#45,#45,#52,#81
	db #0f,#ce,#6b,#6b,#53,#ce,#6b,#6b
	db #53,#ce,#6b,#6b,#53,#ce,#6b,#6b
	db #53,#ce,#6b,#6b,#53,#ce,#6b,#6b
	db #53,#ce,#6b,#6b,#53,#ce,#6b,#6b
	db #56,#80,#0d,#ce,#6f,#6f,#57,#ce
	db #6f,#6f,#57,#ce,#6f,#6f,#57,#ce
	db #6f,#6f,#4e,#80,#0f,#ce,#67,#67
	db #4f,#ce,#67,#67,#4d,#ce,#65,#65
	db #4d,#ce,#65,#65,#52,#81,#0a,#ce
	db #6b,#6b,#53,#ce,#6b,#6b,#53,#ce
	db #6b,#6b,#53,#ce,#6b,#6b,#53,#ce
	db #6b,#6b,#53,#ce,#6b,#6b,#53,#ce
	db #6b,#6b,#53,#ce,#6b,#6b,#56,#80
	db #08,#ce,#6f,#6f,#57,#ce,#6f,#6f
	db #57,#ce,#6f,#6f,#57,#ce,#6f,#6f
	db #4e,#80,#0a,#ce,#67,#67,#4f,#ce
	db #67,#67,#4d,#ce,#65,#65,#4d,#ce
	db #65,#65,#3a,#81,#01,#ce,#3a,#80
	db #02,#3b,#4f,#53,#3b,#3b,#3a,#80
	db #01,#ce,#3a,#80,#02,#3b,#4f,#53
	db #3b,#3b,#3a,#80,#01,#ce,#3a,#80
	db #02,#3b,#4f,#53,#3b,#3b,#3a,#80
	db #01,#ce,#3a,#80,#02,#3b,#4f,#53
	db #3b,#3b,#3e,#80,#01,#ce,#3e,#80
	db #02,#3f,#53,#57,#3f,#3f,#3e,#80
	db #01,#ce,#3e,#80,#02,#3f,#53,#57
	db #3f,#3f,#36,#80,#01,#ce,#36,#80
	db #02,#37,#4b,#4f,#37,#37,#34,#80
	db #01,#ce,#34,#80,#02,#35,#49,#4d
	db #35,#35,#ce,#56,#81,#0d,#ce,#6f
	db #6f,#57,#ce,#6f,#6f,#57,#ce,#6f
	db #6f,#57,#ce,#6f,#6f,#57,#ce,#6f
	db #6f,#57,#ce,#6f,#6f,#57,#ce,#6f
	db #6f,#57,#ce,#6f,#6f,#52,#80,#0e
	db #ce,#6b,#6b,#53,#ce,#6b,#6b,#53
	db #ce,#6b,#6b,#53,#ce,#6b,#6b,#53
	db #ce,#6b,#6b,#53,#ce,#6b,#6b,#53
	db #ce,#6b,#6b,#53,#ce,#6b,#6a,#81
	db #0e,#52,#80,#0f,#ce,#6b,#6b,#53
	db #ce,#6b,#6b,#53,#ce,#6b,#6b,#53
	db #ce,#6b,#6b,#53,#ce,#6b,#6b,#53
	db #ce,#6b,#6b,#53,#ce,#6b,#6b,#53
	db #ce,#6b,#6b,#56,#80,#0d,#ce,#6f
	db #6f,#57,#ce,#6f,#6f,#57,#ce,#6f
	db #6f,#57,#ce,#6f,#6f,#4e,#80,#0f
	db #ce,#67,#67,#4f,#ce,#67,#67,#4d
	db #ce,#65,#65,#4d,#ce,#65,#64,#81
	db #0f,#18,#c0,#07,#e9,#c6,#e9,#c6
	db #e9,#c6,#e9,#c6,#e9,#c6,#e9,#c6
	db #e9,#c6,#e9,#c6,#e9,#c6,#e9,#c6
	db #e9,#c6,#e9,#c6,#e9,#c6,#e9,#c6
	db #e9,#c6,#e9,#c6,#e9,#c6,#e9,#c6
	db #e9,#c6,#e9,#c6,#e9,#c6,#e9,#c6
	db #e9,#57,#da,#53,#fe,#4d,#ce,#53
	db #ce,#57,#c2,#5a,#81,#07,#f6,#5d
	db #c6,#ff,#61,#ce,#5d,#ce,#5b,#ce
	db #5d,#c6,#01,#57,#c2,#6e,#81,#0c
	db #f8,#c4,#01,#6e,#01,#ce,#73,#ce
	db #75,#ce,#78,#40,#ff,#c6,#fe,#7d
	db #d0,#79,#d0,#75,#ce,#78,#40,#fd
	db #7d,#ee,#c4,#01,#7c,#01,#7f,#7d
	db #75,#78,#81,#0c,#f4,#c4,#01,#78
	db #01,#7d,#79,#ce,#75,#ce,#73,#ce
	db #6b,#ce,#6f,#c2,#c4,#00,#ce,#c4
	db #01,#ce,#c4,#02,#ce,#c4,#03,#ce
	db #c4,#04,#ce,#c4,#05,#ce,#c4,#06
	db #ce,#c4,#07,#ce,#c4,#08,#ce,#c4
	db #09,#ce,#c4,#0a,#ce,#c4,#0b,#ce
	db #c4,#0c,#ce,#c4,#0d,#ce,#c4,#0e
	db #ce,#c4,#0f,#c2,#ce,#18,#c1,#07
	db #e9,#c6,#e9,#c6,#e9,#c6,#e9,#c6
	db #e9,#c6,#e9,#c6,#e9,#c6,#e9,#c6
	db #e9,#c6,#e9,#c6,#e9,#c6,#e9,#c6
	db #e9,#c6,#e9,#c6,#e9,#c6,#e9,#c6
	db #e9,#c6,#e9,#c6,#e9,#c6,#e9,#c6
	db #e9,#c6,#e9,#c6,#e9,#57,#da,#53
	db #fe,#4d,#ce,#53,#ce,#57,#c2,#6e
	db #81,#10,#f8,#c4,#01,#6e,#01,#ce
	db #73,#ce,#75,#ce,#79,#ce,#7d,#d0
	db #79,#d0,#75,#ce,#78,#40,#fd,#7d
	db #ee,#c4,#01,#7c,#01,#7f,#7d,#75
	db #78,#81,#10,#f4,#c4,#01,#78,#01
	db #7d,#79,#ce,#75,#ce,#73,#ce,#6b
	db #ce,#6f,#c2,#56,#81,#0c,#ee,#c4
	db #01,#d2,#c4,#02,#d2,#c4,#03,#ce
	db #c4,#04,#ce,#c4,#05,#ce,#c4,#06
	db #ce,#c4,#07,#ce,#c4,#08,#ce,#c4
	db #09,#ce,#c4,#0a,#ce,#c4,#0b,#ce
	db #c4,#0c,#ce,#c4,#0d,#ce,#c4,#0e
	db #ce,#c4,#0f,#c2,#5e,#81,#0c,#ee
	db #c4,#01,#d2,#c4,#02,#d2,#c4,#03
	db #ce,#c4,#04,#ce,#c4,#05,#ce,#c4
	db #06,#ce,#c4,#07,#ce,#c4,#08,#ce
	db #c4,#09,#ce,#c4,#0a,#ce,#c4,#0b
	db #ce,#c4,#0c,#ce,#c4,#0d,#ce,#c4
	db #0e,#ce,#c4,#0f,#c2,#64,#81,#0c
	db #ee,#c4,#01,#d2,#c4,#02,#d2,#c4
	db #03,#ce,#c4,#04,#ce,#c4,#05,#ce
	db #c4,#06,#ce,#c4,#07,#ce,#c4,#08
	db #ce,#c4,#09,#ce,#c4,#0a,#ce,#c4
	db #0b,#ce,#c4,#0c,#ce,#c4,#0d,#ce
	db #c4,#0e,#ce,#c4,#0f,#c2,#14,#ff
;
.init_music		; added by Megachur
;
	or a
	jr nz,init_music1
	ld de,l5a00
	jr call_real_init_music
init_music1
	cp 1
	jr nz,init_music2
	ld de,l5f00
	jr call_real_init_music
init_music2
	ld de,l6600
.call_real_init_music
	jp real_init_music
;
.music_info
	db "Comic Bakery - Music Disk (Epyteor)(2014)(SuTeKH)",0
	db "StarkOs",0

	read "music_end.asm"
