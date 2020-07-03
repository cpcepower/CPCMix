; Music of Sudoku Demo (2008)(Chronosoft)(Herve Monchatre)()
; Ripped by Megachur the 04/09/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SUDOKUDE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #4fda
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

	jp l5864	; init music
	jp l4fe7	; play music
	jp l583f
.l4fe6 equ $ + 3
.l4fe5 equ $ + 2
	db #00,#80,#00,#00
;
.play_music
.l4fe7
;
	xor a
	ld (l4fe5),a
	ld (l581d),a
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
.l4ff7 equ $ + 1
	ld a,#00
.l4ff9 equ $ + 1
	cp #00
	jr z,l5003
	inc a
	ld (l4ff7),a
	jp l5292
.l5003
	xor a
	ld (l4ff7),a
.l5007
	or a
	jp nc,l50e9
	ld (l5111),a
	ld (l517c),a
	ld (l51e7),a
	ld a,#b7
	ld (l5007),a
.l501a equ $ + 1
	ld a,#00
	sub #01
	jr nc,l5050
.l5020 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l504d
	ld b,a
	and #1f
	bit 4,a
	jr z,l5031
	or #e0
.l5031
	ld (l511e),a
	rl b
	rl b
	jr nc,l503f
	ld a,(hl)
	ld (l5189),a
	inc hl
.l503f
	rl b
	jr nc,l5048
	ld a,(hl)
	ld (l51f4),a
	inc hl
.l5048
	ld (l5020),hl
	jr l5053
.l504d
	ld (l5020),hl
.l5050
	ld (l501a),a
.l5054 equ $ + 1
.l5053
	ld a,#00
	sub #01
	jr c,l5060
	ld (l5054),a
.l505d equ $ + 1
	ld a,#00
	jr l507b
.l5061 equ $ + 1
.l5060
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l506e
	ld (l5061),hl
	jr l507b
.l506e
	ld (l505d),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l5061),hl
	ld (l5054),a
	ld a,b
.l507b
	ld (l5252),a
.l507f equ $ + 1
	ld hl,#0000
	ld de,l5117
	ldi
	ldi
	ld de,l5182
	ldi
	ldi
	ld de,l51ed
	ldi
	ldi
	ld (l507f),hl
.l509a equ $ + 1
	ld a,#00
	or a
	jr nz,l50ac
.l509f equ $ + 1
	ld a,#00
	sub #01
	jr c,l50ba
	ld (l509f),a
.l50a8 equ $ + 1
	ld hl,#0000
	jr l50f2
.l50ad equ $ + 1
.l50ac
	ld a,#00
	sub #01
	jr c,l50ba
	ld (l50ad),a
	ld hl,(l50bb)
	jr l50df
.l50bb equ $ + 1
.l50ba
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l50d7
	ld (l509f),a
	xor a
	ld (l509a),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l50bb),hl
	ex de,hl
	ld (l50a8),hl
	jr l50f2
.l50d7
	ld (l50ad),a
	ld a,#01
	ld (l509a),a
.l50df
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l50bb),hl
	ex de,hl
	jr l50f2
.l50ea equ $ + 1
.l50e9
	ld a,#00
	sub #01
	jr nc,l510d
.l50f0 equ $ + 1
	ld hl,#0000
.l50f2
	ld a,(hl)
	inc hl
	srl a
	jr c,l510a
	srl a
	jr c,l5101
	ld (l4ff9),a
	jr l5109
.l5101
	ld (l4fe5),a
.l5105 equ $ + 1
	ld a,#01
	ld (l4fe6),a
.l5109
	xor a
.l510a
	ld (l50f0),hl
.l510d
	ld (l50ea),a
.l5111 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l5178
.l5117 equ $ + 1
	ld hl,#0000
.l511a equ $ + 1
	ld bc,#0100
.l511e equ $ + 2
.l511d equ $ + 1
	ld de,#0000
.l5121 equ $ + 2
	ld lx,#00
	call l538f
	ld a,lx
	ld (l5121),a
	ld (l529c),hl
	exx
	ld (l5117),hl
	ld a,c
	ld (l511a),a
	ld (l5296),a
	xor a
	or hy
	jr nz,l5176
	ld (l52b9),a
	ld d,a
	ld a,e
	ld (l511d),a
	ld l,d
	ld h,l
	ld (l5299),hl
.l514b equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l52ca
	ldi
	ldi
	ld de,l52c2
	ldi
	ldi
	ld de,l52bb
	ldi
	ld de,l52cc
	ldi
	ld a,(hl)
	inc hl
	ld (l52ab),hl
	ld hl,l581d
	or (hl)
	ld (hl),a
.l5176
	ld a,ly
.l5178
	ld (l5111),a
.l517c equ $ + 1
	ld a,#00
	sub #01
	jr nc,l51e3
.l5182 equ $ + 1
	ld hl,#0000
.l5185 equ $ + 1
	ld bc,#0200
.l5189 equ $ + 2
.l5188 equ $ + 1
	ld de,#0000
.l518c equ $ + 2
	ld lx,#00
	call l538f
	ld a,lx
	ld (l518c),a
	ld (l52ed),hl
	exx
	ld (l5182),hl
	ld a,c
	ld (l5185),a
	ld (l52e7),a
	xor a
	or hy
	jr nz,l51e1
	ld (l530a),a
	ld d,a
	ld a,e
	ld (l5188),a
	ld l,d
	ld h,l
	ld (l52ea),hl
.l51b6 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l531b
	ldi
	ldi
	ld de,l5313
	ldi
	ldi
	ld de,l530c
	ldi
	ld de,l531d
	ldi
	ld a,(hl)
	inc hl
	ld (l52fc),hl
	ld hl,l581d
	or (hl)
	ld (hl),a
.l51e1
	ld a,ly
.l51e3
	ld (l517c),a
.l51e7 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l524e
.l51ed equ $ + 1
	ld hl,#0000
.l51f0 equ $ + 1
	ld bc,#0300
.l51f4 equ $ + 2
.l51f3 equ $ + 1
	ld de,#0000
.l51f7 equ $ + 2
	ld lx,#00
	call l538f
	ld a,lx
	ld (l51f7),a
	ld (l533e),hl
	exx
	ld (l51ed),hl
	ld a,c
	ld (l51f0),a
	ld (l5338),a
	xor a
	or hy
	jr nz,l524c
	ld (l535b),a
	ld d,a
	ld a,e
	ld (l51f3),a
	ld l,d
	ld h,l
	ld (l533b),hl
.l5221 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l536c
	ldi
	ldi
	ld de,l5364
	ldi
	ldi
	ld de,l535d
	ldi
	ld de,l536e
	ldi
	ld a,(hl)
	inc hl
	ld (l534d),hl
	ld hl,l581d
	or (hl)
	ld (hl),a
.l524c
	ld a,ly
.l524e
	ld (l51e7),a
.l5252 equ $ + 1
	ld a,#00
	sub #01
	jr c,l525c
	ld (l5252),a
	jr l5292
.l525c
	ld a,#37
	ld (l5007),a
	ld hl,(l507f)
.l5265 equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l5292
	ld (l501a),a
	ld (l5054),a
	ld (l50ea),a
.l5276 equ $ + 1
	ld hl,#0000
	ld (l5020),hl
.l527c equ $ + 1
	ld hl,#0000
	ld (l5061),hl
.l5282 equ $ + 1
	ld hl,#0000
	ld (l507f),hl
.l5288 equ $ + 1
	ld hl,#0000
	ld (l50bb),hl
.l528e equ $ + 1
	ld a,#00
	ld (l509a),a
.l5292
	ld hl,l581d
.l5296 equ $ + 1
	ld d,#00
	exx
.l5299 equ $ + 1
	ld hl,#0000
.l529c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l5299),hl
	ld (l54ca),hl
	ld a,(l5121)
	ld lx,a
.l52ab equ $ + 1
	ld hl,#0000
	ld iy,l56b8
	ld a,(l52b9)
	call l5424
	ex de,hl
.l52b9 equ $ + 1
	ld a,#00
.l52bb equ $ + 1
	cp #00
	jr z,l52c1
	inc a
	jr l52de
.l52c2 equ $ + 1
.l52c1
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l52da
.l52ca equ $ + 1
	ld de,#0000
.l52cc
	or a
	jr c,l52da
.l52d0 equ $ + 1
	ld hl,#0000
	ld (l52c2),hl
	dec a
	ld (l52bb),a
	inc a
.l52da
	ld (l52ab),de
.l52de
	ld (l52b9),a
	ld a,hx
	ld (l538b),a
.l52e7 equ $ + 1
	ld d,#00
	exx
.l52ea equ $ + 1
	ld hl,#0000
.l52ed equ $ + 1
	ld de,#0000
	add hl,de
	ld (l52ea),hl
	ld (l54ca),hl
	ld a,(l518c)
	ld lx,a
.l52fc equ $ + 1
	ld hl,#0000
	ld iy,l5709
	ld a,(l530a)
	call l5424
	ex de,hl
.l530a equ $ + 1
	ld a,#00
.l530c equ $ + 1
	cp #00
	jr z,l5312
	inc a
	jr l532f
.l5313 equ $ + 1
.l5312
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l532b
.l531b equ $ + 1
	ld de,#0000
.l531d
	or a
	jr c,l532b
.l5321 equ $ + 1
	ld hl,#0000
	ld (l5313),hl
	dec a
	ld (l530c),a
	inc a
.l532b
	ld (l52fc),de
.l532f
	ld (l530a),a
	ld a,hx
	ld (l5388),a
.l5338 equ $ + 1
	ld d,#00
	exx
.l533b equ $ + 1
	ld hl,#0000
.l533e equ $ + 1
	ld de,#0000
	add hl,de
	ld (l533b),hl
	ld (l54ca),hl
	ld a,(l51f7)
	ld lx,a
.l534d equ $ + 1
	ld hl,#0000
	ld iy,l575a
	ld a,(l535b)
	call l5424
	ex de,hl
.l535b equ $ + 1
	ld a,#00
.l535d equ $ + 1
	cp #00
	jr z,l5363
	inc a
	jr l5380
.l5364 equ $ + 1
.l5363
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l537c
.l536c equ $ + 1
	ld de,#0000
.l536e
	or a
	jr c,l537c
.l5372 equ $ + 1
	ld hl,#0000
	ld (l5364),hl
	dec a
	ld (l535d),a
	inc a
.l537c
	ld (l534d),de
.l5380
	ld (l535b),a
	ld a,hx
	sla a
.l5388 equ $ + 1
	or #00
	rla
.l538b equ $ + 1
	or #00
	jp l56ad
.l538f
	ld a,(hl)
	inc hl
	srl a
	jr c,l53c8
	cp #60
	jr nc,l53d0
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l53a8
	and #0f
	ld c,a
.l53a8
	rl b
	jr nc,l53ae
	ld e,(hl)
	inc hl
.l53ae
	rl b
	jr nc,l53c0
.l53b2
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l53bc
	dec h
.l53bc
	ld ly,#00
	ret
.l53c0
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l53c8
	ld hy,#00
	add d
	ld lx,a
	jr l53c0
.l53d0
	ld hy,#01
	sub #60
	jr z,l53f1
	dec a
	jr z,l5408
	dec a
	jr z,l53fa
	dec a
	jr z,l53b2
	dec a
	jr z,l5404
	dec a
	jr z,l5419
	dec a
	jr z,l5410
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l53f1
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l53fa
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l5404
	ld c,(hl)
	inc hl
	jr l53b2
.l5408
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l5410
	ld a,(hl)
	inc hl
	ld (l4fe5),a
	ld a,b
	ld (l4fe6),a
.l5419
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l5424
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l54da
	bit 4,e
	jr z,l548c
	ld a,(hl)
	bit 6,a
	jr z,l5459
	ld d,#08
	inc hl
	and #1f
	jr z,l5440
	ld (l57ab),a
	res 3,d
.l5440
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l5449
	xor a
.l5449
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l5459
	ld (l57ab),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l5475
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l546e
	xor a
.l546e
	ld (iy+#36),a
	ld hx,d
	jr l549f
.l5475
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l547e
	xor a
.l547e
	ld (iy+#36),a
.l5481
	ld hx,d
	ret
.l5484
	ld (iy+#36),#00
	ld d,#09
	jr l5481
.l548c
	ld d,#08
	ld a,e
	and #0f
	jr z,l5484
	exx
	sub d
	exx
	jr nc,l5499
	xor a
.l5499
	ld (iy+#36),a
	ld hx,#08
.l549f
	bit 5,e
	jr z,l54a7
	ld a,(hl)
	inc hl
	jr l54a8
.l54a7
	xor a
.l54a8
	bit 6,e
	jr z,l54b2
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l54b5
.l54b2
	ld de,#0000
.l54b5
	add lx
	cp #60
	jr c,l54bd
	ld a,#60
.l54bd
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l55ed
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l54ca equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l54da
	or a
	jr nz,l54e4
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l54e4
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
	ld (l5816),a
	bit 3,e
	jr z,l5506
	ld a,(hl)
	inc hl
	ld (l57ab),a
	res 3,d
	jr l5506
.l5506
	ld hx,d
	xor a
	bit 7,b
	jr z,l5518
	bit 6,b
	jr z,l5513
	ld a,(hl)
	inc hl
.l5513
	ld (l55c7),a
	ld a,#01
.l5518
	ld (l5560),a
	ld a,b
	rra
	and #0e
	ld (l5571),a
	bit 4,e
	jp nz,l55d2
	bit 1,e
	jr z,l552f
	ld a,(hl)
	inc hl
	jr l5530
.l552f
	xor a
.l5530
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l553d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l5540
.l553d
	ld de,#0000
.l5540
	add lx
	cp #60
	jr c,l5548
	ld a,#60
.l5548
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l55ed
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l54ca)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l5560 equ $ + 1
	ld a,#00
	or a
	jr nz,l5570
	ex af,af'
	bit 5,a
	jr nz,l55db
.l5569
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l5571 equ $ + 1
.l5570
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l557b),a
	ld a,c
.l557b equ $ + 1
	jr l557c
.l557c
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
	jr nc,l5595
	inc bc
.l5595
	ld a,c
	ld (l57e0),a
	ld a,b
	ld (l57fb),a
	ld a,(l5560)
	or a
	jr z,l55d0
	ld a,(l5571)
	ld e,a
	srl a
	add e
	ld (l55af),a
	ld a,b
.l55af equ $ + 1
	jr l55b0
.l55b0
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
.l55c7 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l55d0
	pop hl
	ret
.l55d2
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l5569
.l55db
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l57e0),a
	inc hl
	ld a,(hl)
	ld (l57fb),a
	inc hl
	ret
.l55ed
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
.l56ad
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l56b8 equ $ + 1
	ld a,#00
.l56ba equ $ + 1
	cp #00
	jr z,l56d2
	ld d,#00
	out (c),d
	exx
	out (c),c
	db &ed,&71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db &ed,&71 ; out (c),0
	ld (l56ba),a
	exx
.l56d2
	ld a,#00
.l56d5 equ $ + 1
	cp #00
	jr z,l56ed
	ld d,#01
	out (c),d
	exx
	out (c),c
	db &ed,&71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db &ed,&71 ; out (c),0
	ld (l56d5),a
	exx
.l56ee equ $ + 1
.l56ed
	ld a,#00
.l56f0 equ $ + 1
	cp #00
	jr z,l5708
	ld d,#08
	out (c),d
	exx
	out (c),c
	db &ed,&71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db &ed,&71 ; out (c),0
	ld (l56f0),a
	exx
.l5709 equ $ + 1
.l5708
	ld a,#00
.l570b equ $ + 1
	cp #00
	jr z,l5723
	ld d,#02
	out (c),d
	exx
	out (c),c
	db &ed,&71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db &ed,&71 ; out (c),0
	ld (l570b),a
	exx
.l5723
	ld a,#00
.l5726 equ $ + 1
	cp #00
	jr z,l573e
	ld d,#03
	out (c),d
	exx
	out (c),c
	db &ed,&71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db &ed,&71 ; out (c),0
	ld (l5726),a
	exx
.l573f equ $ + 1
.l573e
	ld a,#00
.l5741 equ $ + 1
	cp #00
	jr z,l5759
	ld d,#09
	out (c),d
	exx
	out (c),c
	db &ed,&71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db &ed,&71 ; out (c),0
	ld (l5741),a
	exx
.l575a equ $ + 1
.l5759
	ld a,#00
.l575c equ $ + 1
	cp #00
	jr z,l5774
	ld d,#04
	out (c),d
	exx
	out (c),c
	db &ed,&71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db &ed,&71 ; out (c),0
	ld (l575c),a
	exx
.l5774
	ld a,#00
.l5777 equ $ + 1
	cp #00
	jr z,l578f
	ld d,#05
	out (c),d
	exx
	out (c),c
	db &ed,&71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db &ed,&71 ; out (c),0
	ld (l5777),a
	exx
.l5790 equ $ + 1
.l578f
	ld a,#00
.l5792 equ $ + 1
	cp #00
	jr z,l57aa
	ld d,#0a
	out (c),d
	exx
	out (c),c
	db &ed,&71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db &ed,&71 ; out (c),0
	ld (l5792),a
	exx
.l57ab equ $ + 1
.l57aa
	ld a,#00
.l57ad equ $ + 1
	cp #00
	jr z,l57c5
	ld d,#06
	out (c),d
	exx
	out (c),c
	db &ed,&71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db &ed,&71 ; out (c),0
	ld (l57ad),a
	exx
.l57c5
	ld a,h
.l57c7 equ $ + 1
	cp #c0
	jr z,l57df
	ld d,#07
	out (c),d
	exx
	out (c),c
	db &ed,&71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db &ed,&71 ; out (c),0
	ld (l57c7),a
	exx
.l57e0 equ $ + 1
.l57df
	ld a,#00
.l57e2 equ $ + 1
	cp #00
	jr z,l57fa
	ld d,#0b
	out (c),d
	exx
	out (c),c
	db &ed,&71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db &ed,&71 ; out (c),0
	ld (l57e2),a
	exx
.l57fb equ $ + 1
.l57fa
	ld a,#00
.l57fd equ $ + 1
	cp #00
	jr z,l5815
	ld d,#0c
	out (c),d
	exx
	out (c),c
	db &ed,&71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db &ed,&71 ; out (c),0
	ld (l57fd),a
	exx
.l5816 equ $ + 1
.l5815
	ld a,#00
.l5818 equ $ + 1
	cp #ff
	jr nz,l5822
	ld h,a
.l581d equ $ + 1
	ld a,#00
	or a
	jr z,l5836
	ld a,h
.l5822
	ld d,#0d
	out (c),d
	exx
	out (c),c
	db &ed,&71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db &ed,&71 ; out (c),0
	ld (l5818),a
.l5836
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
	ret
.l583f
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l56ee),a
	ld (l573f),a
	ld (l5790),a
	dec a
	ld (l56f0),a
	ld (l5741),a
	ld (l5792),a
	ld (l57c7),a
	ld a,#3f
	jp l56ad
;
.real_init_music
.l5864
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l5105),a
	ld de,#0003
	add hl,de
	ld de,l5061
	ldi
	ldi
	ld de,l507f
	ldi
	ldi
	ld de,l50bb
	ldi
	ldi
	ld de,l514b
	ldi
	ldi
	ld de,l5276
	ldi
	ldi
	ld de,l527c
	ldi
	ldi
	ld de,l5282
	ldi
	ldi
	ld de,l5288
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l4ff9),a
	ld (l4ff7),a
	ld (l5020),hl
	ld hl,(l50bb)
	ld (l5265),hl
	ld a,(hl)
	and #01
	ld (l509a),a
	ld hl,(l5288)
	ld a,(hl)
	and #01
	ld (l528e),a
	ld hl,(l514b)
	ld (l51b6),hl
	ld (l5221),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l52ab),hl
	ld (l52fc),hl
	ld (l534d),hl
	ld (l52ca),hl
	ld (l531b),hl
	ld (l536c),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l52d0),de
	ld (l5321),de
	ld (l5372),de
	ld (l52c2),de
	ld (l5313),de
	ld (l5364),de
	ld a,#37
	ld (l5007),a
	ld hl,l5920
.l5910
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l5917
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l5917
	jr l5910
.l5920
	db #18,#00
	dw #56b8,#56d3,#5709,#5724
	dw #575a,#5775,#57ab,#56ee
	dw #573f,#5790,#57e0,#57fb
	dw #5816,#501a,#5054,#509f
	dw #50ad,#50ea,#52b9,#530a
	dw #535b,#511a,#5185,#51f0
	dw #ff11,#56ba,#56d5,#570b
	dw #5726,#575c,#5777,#57ad
	dw #57c7,#56f0,#5741,#5792
	dw #57e2,#57fd,#5818,#52bb
	dw #530c,#535d,#b703,#52cc
	dw #531d,#536e:db #00
.l597f
	ld b,#f4
	out (c),a
	ld bc,#f6c0
	out (c),c
	db &ed,&71 ; out (c),0
	ld b,#f5
	outi
	ld bc,#f680
	out (c),c
	db &ed,&71 ; out (c),0
	ret
	ld hl,l59a6
	ld d,#00
.l599b
	ld a,d
	call l597f
	inc d
	ld a,d
	cp #0e
	jr nz,l599b
	ret
.l59a6
	db #00,#00,#00,#00,#00,#00,#00,#3f
	db #00,#00,#00,#00,#00,#00,#52,#61
	db #6e,#64,#6f,#ed,#43,#72,#65,#61
	db #74,#e5,#43,#72,#65,#61,#74,#65
	db #e4,#50,#6c,#61,#f9,#53,#63,#6f
	db #72,#e5,#45,#61,#73,#f9,#4d,#65
	db #64,#69,#75,#ed,#48,#61,#72,#e4
	db #0d,#08,#53,#65,#74,#20,#53,#61
	db #76,#65,#20,#50,#6f,#69,#6e,#f4
	db #ff,#0b,#08,#52,#65,#73,#74,#6f
	db #72,#65,#20,#53,#61,#76,#65,#20
	db #50,#6f,#69,#6e,#f4,#ff,#43,#68
	db #6f,#6f,#73,#65,#20,#67,#61,#6d
	db #65,#20,#74,#79,#70,#e5,#41,#52
	db #45,#20,#59,#4f,#55,#20,#53,#55
	db #52,#45,#bf,#53,#61,#76,#65,#20
	db #50,#6f,#69,#6e,#f4,#53,#74,#6f
	db #72,#e5,#52,#65,#73,#74,#6f,#72
	db #e5,#43,#6f,#6e,#74,#69,#6e,#75
	db #e5,#4d,#75,#73,#69,#e3,#11,#08
	db #52,#65,#73,#74,#61,#72,#f4,#ff
	db #12,#08,#51,#75,#69,#f4,#ff,#45
	db #64,#69,#f4,#50,#72,#65,#73,#73
	db #20,#53,#45,#4c,#45,#43,#54,#20
	db #74,#6f,#20,#73,#74,#61,#72,#74
	db #20,#67,#61,#6d,#e5,#01,#11,#57
	db #65,#6c,#ec,#01,#12,#44,#6f,#6e
	db #65,#a1,#ff,#01,#11,#53,#75,#64
	db #6f,#6b,#f5,#01,#12,#4d,#61,#73
	db #74,#65,#72,#a1,#ff,#01,#11,#4e
	db #69,#63,#65,#a1,#ff
;
.intro_theme
.l5a9b
;
	db #53,#4b,#31,#30	; SK10
	dw l5a9b
	db #01,#32,#00
	dw l5abf,l5ac2,l5b10,l5b16
	dw l5ab8,l5ac0,l5ac8,l5b13
.l5ab8 equ $ + 4
	db #03,#c0,#00,#00,#c0,#00,#00,#0f
.l5ac0 equ $ + 4
.l5abf equ $ + 3
	db #18,#28,#00,#7e,#7f,#0b
.l5ac8 equ $ + 6
.l5ac2
	dw l5b5f,l5b60,l5b94,l5b94
	dw l5b95,l5bf6,l5b5f,l5b95
	dw l5c01,l5c0d,l5b95,l5bf6
	dw l5c23,l5b95,l5c01,l5c0d
	dw l5b95,l5c39,l5c45,l5b95
	dw l5c59,l5c67,l5b95,l5c01
	dw l5ca1,l5b95,l5bf6,l5ce3
	dw l5b95,l5c01,l5cfd,l5b95
	dw l5bf6,l5ce3,l5b95,l5c01
.l5b10 equ $ + 6
	dw l5d0b,l5b95,l5d2e,#3a00
.l5b16 equ $ + 4
.l5b13 equ $ + 1
	db #5d,#16,#3a,#5d
	dw l5b1e,l5b28
.l5b1e equ $ + 4
	dw l5b39,l5b4f,l5b25,l5b28
.l5b25 equ $ + 3
	db #ff,#37,#00,#00,#00,#00
.l5b28
	dw l5b35,l5b39
	db #00,#37,#00,#0c,#0c,#0c,#0b,#0a
.l5b35 equ $ + 1
	db #07,#05,#00,#04,#00
.l5b39
	dw l5b43,l5b4f
.l5b43 equ $ + 6
	db #03,#37,#00,#0c,#2c,#0c,#08,#28
	db #0c,#0b,#2b,#0c,#09,#29,#0c,#08
	db #28,#0c
.l5b4f
	dw l5b5b,l5b5f
	db #00,#37,#00,#0c,#2c,#0c,#0b,#2a
.l5b60 equ $ + 5
.l5b5f equ $ + 4
.l5b5b
	db #0c,#07,#27,#0c,#c2,#7e,#81,#01
	db #ce,#82,#0b,#ce,#8c,#01,#ce,#7e
	db #0b,#ce,#92,#01,#ce,#8c,#0b,#ce
	db #88,#01,#ce,#92,#0b,#ce,#96,#01
	db #ce,#88,#0b,#ce,#92,#01,#ce,#96
	db #0b,#ce,#88,#01,#ce,#92,#0b,#ce
	db #8c,#01,#ce,#88,#0b,#ce,#8c,#01
.l5b95 equ $ + 2
.l5b94 equ $ + 1
	db #c2,#c2,#7e,#81,#01,#ce,#84,#0b
	db #ce,#8c,#01,#ce,#7e,#0b,#ce,#92
	db #01,#ce,#8c,#0b,#ce,#88,#01,#ce
	db #92,#0b,#ce,#96,#01,#ce,#88,#0b
	db #ce,#92,#01,#ce,#96,#0b,#ce,#88
	db #01,#ce,#92,#0b,#ce,#8c,#01,#ce
	db #88,#0b,#ce,#7e,#01,#ce,#8c,#0b
	db #ce,#8c,#01,#ce,#7e,#0b,#ce,#92
	db #01,#ce,#8c,#0b,#ce,#88,#01,#ce
	db #92,#0b,#ce,#96,#01,#ce,#88,#0b
	db #ce,#92,#01,#ce,#96,#0b,#ce,#88
	db #01,#ce,#92,#0b,#ce,#8c,#01,#ce
.l5bf6 equ $ + 3
	db #88,#0b,#c2,#1e,#80,#02,#c0,#1a
.l5c01 equ $ + 6
	db #37,#d2,#3d,#fa,#3d,#c2,#40,#80
	db #02,#c0,#1a,#41,#d2,#33,#c0,#1a
.l5c0d equ $ + 2
	db #33,#c2,#7a,#80,#03,#da,#7f,#d2
	db #85,#da,#89,#da,#8d,#d2,#93,#da
	db #8d,#d2,#89,#d2,#85,#da,#7f,#c2
.l5c23
	db #7a,#80,#03,#da,#7f,#d2,#85,#da
	db #89,#da,#97,#d2,#93,#da,#8d,#d2
.l5c39 equ $ + 6
	db #89,#d2,#8d,#da,#7b,#c2,#1e,#80
	db #02,#c0,#1a,#37,#d2,#2d,#c0,#1a
.l5c45 equ $ + 2
	db #45,#c2,#7a,#80,#03,#da,#7f,#d2
	db #85,#da,#89,#da,#8d,#d2,#89,#ce
.l5c59 equ $ + 6
	db #8d,#ce,#89,#d2,#89,#c2,#2e,#80
	db #02,#c0,#1a,#47,#d2,#33,#c0,#1a
.l5c67 equ $ + 4
	db #32,#80,#03,#c2,#8c,#80,#03,#ce
	db #89,#ce,#85,#d2,#7b,#ce,#7f,#ce
	db #85,#d2,#8d,#ce,#89,#ce,#85,#d2
	db #7b,#ce,#7f,#ce,#85,#d2,#8d,#ce
	db #89,#ce,#85,#ce,#7f,#ce,#7b,#ce
	db #7f,#ce,#85,#ce,#89,#ce,#8d,#ce
	db #89,#ce,#85,#ce,#7f,#ce,#7b,#ce
.l5ca1 equ $ + 6
	db #7f,#ce,#85,#ce,#89,#c2,#92,#80
	db #03,#ce,#8d,#ce,#89,#ce,#85,#ce
	db #7f,#ce,#85,#ce,#89,#ce,#8d,#ce
	db #93,#ce,#8d,#ce,#89,#ce,#7f,#ce
	db #7b,#ce,#7f,#ce,#85,#ce,#89,#ce
	db #97,#ce,#93,#ce,#8d,#ce,#89,#ce
	db #85,#ce,#89,#ce,#8d,#ce,#93,#ce
	db #97,#ce,#93,#ce,#8d,#ce,#85,#ce
	db #7f,#ce,#7b,#ce,#7f,#ce,#85,#c2
.l5ce3
	db #a0,#80,#03,#da,#a1,#ce,#a5,#ce
	db #a1,#d2,#a1,#d2,#a5,#d2,#a1,#d2
	db #a5,#d2,#a1,#f2,#a5,#d2,#ab,#d2
.l5cfd equ $ + 2
	db #af,#c2,#84,#80,#03,#f2,#7b,#d2
	db #7f,#ce,#85,#ce,#89,#d2,#8d,#c2
.l5d0b
	db #7e,#80,#03,#fa,#7b,#ce,#75,#ce
	db #71,#d2,#75,#ea,#c4,#01,#ce,#c4
	db #02,#ce,#c4,#03,#ce,#c4,#04,#ce
	db #c4,#05,#ce,#c4,#06,#ce,#ca,#ce
.l5d2e equ $ + 3
	db #c4,#00,#c2,#2e,#80,#02,#c0,#1a
	db #47,#d2,#37,#c0,#1a,#41,#c2,#ff
;
; SK10
;.l5d3b
.main_theme
;
	db #53,#4b,#31,#30,#3b,#5d,#01,#32
	db #00,#68,#5d,#6f,#5d,#c5,#5e,#c8
	db #5e,#55,#5d,#68,#5d,#6f,#5d,#c5
	db #5e,#05,#c0,#00,#00,#11,#40,#0c
	db #05,#40,#f4,#01,#40,#00,#39,#80
	db #0c,#01,#80,#00,#0f,#3e,#7f,#2b
	db #3e,#7f,#09,#fe,#cb,#5f,#cb,#5f
	db #cb,#5f,#cd,#5f,#d7,#5f,#f4,#5f
	db #17,#60,#31,#60,#52,#60,#75,#60
	db #81,#60,#f4,#5f,#75,#60,#81,#60
	db #52,#60,#75,#60,#81,#60,#c3,#60
	db #75,#60,#81,#60,#e1,#60,#75,#60
	db #81,#60,#13,#61,#37,#61,#81,#60
	db #13,#61,#cb,#5f,#43,#61,#cb,#5f
	db #86,#61,#43,#61,#b8,#61,#86,#61
	db #43,#61,#c8,#61,#dc,#61,#38,#62
	db #c8,#61,#f4,#62,#38,#62,#54,#63
	db #dc,#61,#38,#62,#70,#63,#f4,#62
	db #a2,#63,#24,#64,#dc,#61,#81,#60
	db #56,#64,#dc,#61,#84,#64,#c6,#64
	db #dc,#61,#84,#64,#f6,#64,#dc,#61
	db #84,#64,#24,#65,#dc,#61,#81,#60
	db #66,#65,#dc,#61,#84,#64,#66,#65
	db #dc,#61,#84,#64,#13,#61,#dc,#61
	db #43,#61,#f4,#5f,#f4,#62,#a8,#65
	db #f4,#5f,#dc,#61,#ea,#65,#f4,#5f
	db #cb,#5f,#cb,#5f,#ea,#65,#23,#66
	db #2c,#66,#ea,#65,#46,#66,#2c,#66
	db #cb,#5f,#63,#66,#95,#66,#ea,#65
	db #63,#66,#95,#66,#d5,#66,#63,#66
	db #95,#66,#2f,#67,#63,#66,#95,#66
	db #2f,#67,#e2,#67,#95,#66,#2f,#67
	db #e2,#67,#95,#66,#cd,#5f,#e2,#67
	db #95,#66,#24,#68,#e2,#67,#95,#66
	db #38,#68,#b2,#68,#f4,#68,#1a,#69
	db #b2,#68,#f4,#68,#1a,#69,#e2,#67
	db #b9,#69,#cd,#5f,#e2,#67,#b9,#69
	db #24,#68,#c2,#69,#b9,#69,#04,#6a
	db #c2,#69,#b9,#69,#10,#6a,#e2,#67
	db #38,#62,#1e,#6a,#e2,#67,#38,#62
	db #3c,#6a,#cb,#5f,#cb,#5f,#5a,#6a
	db #e2,#67,#38,#62,#5a,#6a,#e2,#67
	db #38,#62,#5a,#6a,#e2,#67,#38,#62
	db #bb,#6a,#e2,#67,#b9,#69,#bb,#6a
	db #e2,#67,#b9,#69,#5a,#6a,#e2,#67
	db #b9,#69,#1e,#6a,#b2,#68,#b8,#61
	db #3c,#6a,#1d,#6b,#b8,#61,#3c,#6a
	db #1d,#6b,#cb,#5f,#2d,#6b,#1d,#6b
	db #cb,#5f,#2d,#6b,#cb,#5f,#cb,#5f
	db #cb,#5f,#70,#7e,#6b,#e4,#5e,#ee
	db #5e,#03,#5f,#0c,#5f,#1c,#5f,#2b
	db #5f,#40,#5f,#4a,#5f,#54,#5f,#66
	db #5f,#7c,#5f,#86,#5f,#a0,#5f,#ba
	db #5f,#eb,#5e,#ee,#5e,#ff,#37,#00
	db #00,#00,#00,#01,#5f,#03,#5f,#00
	db #37,#01,#0d,#0e,#0f,#0e,#0e,#0d
	db #0c,#0c,#0c,#0c,#0c,#0b,#09,#09
	db #0a,#5f,#0c,#5f,#00,#37,#01,#80
	db #10,#19,#5f,#1c,#5f,#00,#37,#01
	db #0b,#09,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#29,#5f,#2b,#5f,#00,#37,#01
	db #0b,#0b,#0b,#0a,#0b,#0b,#0b,#0a
	db #eb,#5e,#40,#5f,#00,#b7,#00,#1e
	db #0a,#2f,#14,#2f,#0c,#2f,#08,#2e
	db #04,#2d,#03,#2c,#02,#47,#5f,#4a
	db #5f,#01,#37,#00,#0d,#2d,#04,#51
	db #5f,#54,#5f,#01,#37,#00,#0e,#2e
	db #03,#eb,#5e,#66,#5f,#00,#b7,#00
	db #1e,#02,#0d,#2c,#02,#1b,#07,#1a
	db #06,#19,#07,#7a,#5f,#7c,#5f,#00
	db #37,#01,#1d,#21,#0e,#0f,#0e,#0e
	db #0d,#0c,#0c,#0c,#0c,#0c,#0c,#0b
	db #0a,#83,#5f,#86,#5f,#01,#37,#00
	db #0e,#2e,#05,#9a,#5f,#a0,#5f,#01
	db #37,#00,#0d,#2d,#03,#2d,#07,#2c
	db #0c,#2c,#03,#2c,#07,#2c,#0c,#2b
	db #03,#2b,#07,#2b,#0c,#b4,#5f,#ba
	db #5f,#01,#37,#00,#0d,#2d,#04,#2d
	db #07,#2c,#0c,#2c,#04,#2c,#07,#2c
	db #0c,#2b,#04,#2b,#07,#2b,#0c,#eb
	db #5e,#cb,#5f,#00,#b7,#01,#88,#08
	db #0f,#80,#08,#88,#08,#0f,#80,#08
	db #ca,#c2,#66,#83,#01,#fa,#63,#da
	db #5f,#fa,#5d,#c2,#d6,#6c,#87,#01
	db #ce,#71,#ce,#75,#ce,#7b,#ce,#75
	db #ce,#6d,#f6,#6d,#ce,#71,#ce,#75
	db #ce,#7b,#ce,#75,#ce,#71,#ce,#67
	db #c2,#d0,#6c,#83,#01,#ce,#71,#ce
	db #75,#ce,#7b,#ce,#75,#ce,#71,#ce
	db #6d,#ce,#67,#ee,#6d,#ce,#71,#ce
	db #75,#ce,#7b,#ce,#75,#ce,#71,#ce
	db #6d,#ce,#67,#c2,#58,#80,#01,#fa
	db #55,#ce,#53,#d6,#4f,#fa,#c6,#02
	db #c6,#02,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#06,#c6,#06,#d6,#6c
	db #87,#01,#ce,#71,#ce,#75,#ce,#7b
	db #ce,#7f,#ce,#7b,#ce,#6d,#f2,#6d
	db #ce,#71,#ce,#75,#ce,#7b,#ce,#75
	db #ce,#71,#ce,#6d,#ce,#67,#c2,#d0
	db #6c,#80,#01,#ce,#71,#ce,#75,#ce
	db #7b,#ce,#7f,#ce,#7b,#ce,#75,#ce
	db #6d,#ee,#6d,#ce,#71,#ce,#75,#ce
	db #7b,#ce,#75,#ce,#71,#ce,#6d,#ce
	db #67,#c2,#36,#80,#02,#ea,#2d,#ea
	db #47,#ea,#3d,#e2,#3b,#c2,#74,#81
	db #01,#ce,#67,#ce,#6d,#ce,#67,#ce
	db #6b,#ce,#67,#ce,#6d,#ce,#67,#ce
	db #71,#ce,#5d,#ce,#6b,#ce,#5d,#ce
	db #67,#ce,#5d,#ce,#6b,#ce,#5d,#ce
	db #6d,#ce,#5f,#ce,#67,#ce,#5f,#ce
	db #63,#ce,#5f,#ce,#67,#ce,#5f,#ce
	db #6d,#ce,#55,#ce,#63,#ce,#55,#ce
	db #5f,#ce,#55,#ce,#5d,#ce,#55,#c2
	db #82,#80,#01,#ce,#85,#d2,#7f,#d6
	db #85,#d2,#83,#ce,#85,#d2,#93,#de
	db #83,#ce,#85,#d2,#7f,#d6,#85,#ce
	db #83,#d2,#85,#d2,#8d,#c2,#82,#80
	db #01,#ce,#85,#d2,#7f,#d6,#85,#d2
	db #83,#ce,#85,#d2,#97,#ce,#93,#da
	db #8d,#ce,#89,#ce,#85,#ce,#7f,#ce
	db #7b,#ce,#7f,#ce,#85,#ce,#89,#ce
	db #8d,#ce,#89,#ce,#85,#ce,#7f,#ce
	db #7b,#ce,#7f,#ce,#85,#ce,#89,#c2
	db #8c,#80,#03,#d2,#85,#d2,#83,#ce
	db #85,#d2,#89,#d6,#82,#80,#04,#d2
	db #7f,#ce,#83,#d2,#85,#d6,#7f,#d2
	db #7b,#ce,#77,#d2,#85,#d6,#7b,#d2
	db #77,#ce,#75,#c2,#36,#80,#02,#ea
	db #2d,#ea,#41,#ea,#3d,#e2,#3b,#c2
	db #74,#81,#01,#6d,#67,#74,#01,#6d
	db #67,#67,#6d,#6b,#67,#67,#6b,#6d
	db #67,#67,#6d,#71,#67,#5d,#71,#6b
	db #5d,#5d,#6b,#67,#5d,#5d,#67,#6b
	db #5d,#5d,#6b,#6d,#5d,#5f,#6d,#67
	db #5f,#5f,#67,#63,#5f,#5f,#63,#67
	db #5f,#5f,#67,#6d,#5f,#55,#6d,#63
	db #55,#55,#63,#5f,#55,#55,#5f,#5d
	db #55,#55,#5d,#36,#80,#05,#ce,#36
	db #80,#02,#d2,#36,#80,#05,#ce,#66
	db #80,#02,#da,#2c,#80,#05,#ce,#2c
	db #80,#02,#d2,#2c,#80,#05,#ce,#5c
	db #80,#02,#da,#2e,#80,#05,#ce,#46
	db #80,#02,#e6,#24,#80,#05,#ce,#3c
	db #80,#02,#de,#3b,#c2,#6c,#85,#06
	db #d6,#66,#80,#07,#de,#6b,#d6,#62
	db #80,#06,#de,#5f,#c2,#6c,#85,#06
	db #d6,#66,#80,#07,#de,#6b,#d6,#62
	db #80,#06,#de,#5f,#ea,#5c,#80,#07
	db #c2,#36,#80,#05,#ce,#36,#80,#02
	db #d2,#36,#80,#05,#ce,#36,#80,#08
	db #ce,#66,#80,#02,#ce,#1e,#80,#05
	db #ce,#36,#80,#08,#ce,#2c,#80,#05
	db #ce,#2c,#80,#02,#d2,#2c,#80,#05
	db #ce,#2c,#80,#08,#ce,#5c,#80,#02
	db #d6,#2e,#80,#05,#ce,#46,#80,#02
	db #d2,#2e,#80,#05,#ce,#46,#80,#08
	db #ce,#46,#80,#02,#d2,#2e,#80,#05
	db #ce,#25,#ce,#3c,#80,#02,#d2,#24
	db #80,#05,#ce,#3c,#80,#08,#ce,#3c
	db #80,#02,#ce,#3b,#c2,#74,#81,#09
	db #6c,#80,#01,#66,#80,#09,#74,#80
	db #01,#6c,#80,#09,#66,#80,#01,#66
	db #80,#09,#6c,#80,#01,#6a,#80,#09
	db #66,#80,#01,#67,#6a,#80,#09,#6d
	db #66,#80,#01,#66,#80,#09,#6c,#80
	db #01,#70,#80,#09,#66,#80,#01,#5c
	db #80,#09,#70,#80,#01,#6a,#80,#09
	db #5c,#80,#01,#5c,#80,#09,#6a,#80
	db #01,#66,#80,#09,#5c,#80,#01,#5c
	db #80,#09,#66,#80,#01,#6a,#80,#09
	db #5c,#80,#01,#5c,#80,#09,#6a,#80
	db #01,#6c,#80,#09,#5c,#80,#01,#5e
	db #80,#09,#6c,#80,#01,#66,#80,#09
	db #5e,#80,#01,#5e,#80,#09,#66,#80
	db #01,#62,#80,#09,#5e,#80,#01,#5e
	db #80,#09,#62,#80,#01,#66,#80,#09
	db #5e,#80,#01,#5e,#80,#09,#66,#80
	db #01,#6c,#80,#09,#5e,#80,#01,#54
	db #80,#09,#6c,#80,#01,#62,#80,#09
	db #54,#80,#01,#54,#80,#09,#62,#80
	db #01,#5e,#80,#09,#54,#80,#01,#54
	db #80,#09,#5e,#80,#01,#5c,#80,#09
	db #54,#80,#01,#54,#80,#09,#5c,#80
	db #01,#36,#80,#05,#ce,#36,#80,#02
	db #d2,#36,#80,#05,#ce,#36,#80,#08
	db #ce,#66,#80,#02,#ce,#1e,#80,#05
	db #ce,#36,#80,#08,#ce,#2c,#80,#05
	db #ce,#2c,#80,#02,#d2,#2c,#80,#05
	db #ce,#2c,#80,#08,#ce,#5c,#80,#02
	db #d6,#2e,#80,#05,#ce,#58,#80,#02
	db #d2,#2e,#80,#05,#ce,#46,#80,#08
	db #ce,#58,#80,#02,#d2,#2e,#80,#05
	db #ce,#25,#ce,#3c,#80,#02,#d2,#24
	db #80,#05,#ce,#3c,#80,#08,#ce,#3c
	db #80,#02,#ce,#3b,#24,#80,#05,#25
	db #c2,#6c,#85,#06,#d6,#66,#80,#07
	db #d6,#62,#80,#06,#ce,#66,#80,#07
	db #ce,#6b,#d6,#62,#80,#06,#de,#5f
	db #ea,#5c,#80,#07,#c2,#8c,#80,#0a
	db #e6,#84,#80,#06,#ce,#8c,#80,#0a
	db #ce,#96,#80,#07,#d2,#92,#80,#06
	db #d2,#88,#80,#0a,#d2,#8d,#ce,#8d
	db #e6,#84,#80,#06,#ce,#8c,#80,#0a
	db #ce,#96,#80,#07,#d2,#92,#80,#06
	db #d2,#88,#80,#0a,#d2,#8d,#c2,#74
	db #80,#09,#6c,#80,#01,#66,#80,#09
	db #74,#80,#01,#6c,#80,#09,#66,#80
	db #01,#66,#80,#09,#6c,#80,#01,#6a
	db #80,#09,#66,#80,#01,#66,#80,#09
	db #6a,#80,#01,#6c,#80,#09,#66,#80
	db #01,#66,#80,#09,#6c,#80,#01,#7e
	db #80,#09,#66,#80,#01,#62,#80,#09
	db #7e,#80,#01,#7a,#80,#09,#6a,#80
	db #01,#62,#80,#09,#7a,#80,#01,#70
	db #80,#09,#7a,#80,#01,#62,#80,#09
	db #70,#80,#01,#7a,#80,#09,#70,#80
	db #01,#62,#80,#09,#7a,#80,#01,#7e
	db #80,#09,#63,#5f,#7f,#7b,#71,#5f
	db #7b,#6d,#7b,#5f,#6d,#6b,#6d,#5f
	db #6b,#7f,#5f,#63,#7f,#7b,#71,#63
	db #7b,#75,#7b,#63,#75,#71,#75,#63
	db #71,#8c,#80,#0a,#e6,#84,#80,#06
	db #ce,#8c,#80,#0a,#ce,#96,#80,#07
	db #d2,#92,#80,#06,#d2,#88,#80,#0a
	db #d2,#8d,#ea,#8c,#80,#07,#84,#80
	db #0a,#84,#80,#06,#ce,#88,#80,#07
	db #ce,#84,#80,#06,#ce,#82,#80,#07
	db #d2,#7f,#c2,#8c,#80,#01,#d6,#7f
	db #d6,#97,#d2,#93,#ce,#8d,#d2,#89
	db #de,#85,#ce,#89,#ce,#8d,#ce,#93
	db #ce,#97,#ce,#9d,#ce,#a1,#ce,#a5
	db #ce,#a1,#ce,#9d,#ce,#97,#ce,#9d
	db #ce,#97,#ce,#93,#ce,#8d,#ce,#93
	db #c2,#74,#80,#01,#ce,#67,#ce,#6d
	db #ce,#67,#ce,#6b,#ce,#67,#ce,#6d
	db #ce,#67,#ce,#7f,#ce,#63,#ce,#7b
	db #ce,#63,#ce,#71,#ce,#63,#ce,#7b
	db #ce,#63,#ce,#7f,#ce,#5f,#ce,#7b
	db #ce,#5f,#ce,#6d,#ce,#5f,#ce,#6b
	db #ce,#5f,#ce,#7f,#ce,#63,#ce,#7b
	db #ce,#63,#ce,#75,#ce,#63,#ce,#71
	db #ce,#63,#c2,#92,#80,#01,#d2,#8d
	db #ce,#89,#ce,#85,#ce,#89,#ce,#8d
	db #ce,#97,#ce,#93,#d2,#8d,#ce,#89
	db #ce,#85,#da,#93,#d2,#8d,#ce,#89
	db #ce,#85,#ce,#89,#ce,#8d,#ce,#97
	db #ce,#93,#d2,#8d,#ce,#89,#ce,#8d
	db #d2,#7b,#c2,#92,#80,#01,#d2,#8d
	db #ce,#89,#ce,#85,#ce,#89,#ce,#8d
	db #ce,#97,#ce,#93,#d2,#8d,#ce,#89
	db #ce,#85,#da,#93,#d2,#8d,#ce,#89
	db #ce,#85,#d2,#89,#ce,#8d,#ce,#83
	db #d2,#85,#ce,#83,#ce,#7f,#d2,#7b
	db #c2,#6c,#80,#01,#ce,#71,#ce,#75
	db #ce,#7b,#ce,#7f,#ce,#85,#ce,#89
	db #ce,#8d,#ce,#93,#ce,#97,#ce,#9d
	db #ce,#a1,#ce,#a5,#ce,#a1,#ce,#9d
	db #ce,#a1,#ce,#a5,#ce,#a1,#ce,#9d
	db #ce,#97,#ce,#9d,#ce,#97,#ce,#93
	db #ce,#97,#ce,#9d,#ce,#97,#ce,#93
	db #ce,#8d,#ce,#93,#ce,#8d,#ce,#89
	db #ce,#85,#c2,#54,#80,#01,#59,#5d
	db #63,#67,#6d,#71,#75,#7b,#7f,#85
	db #89,#8d,#93,#97,#9d,#55,#59,#5d
	db #63,#67,#6d,#71,#75,#7b,#7f,#85
	db #89,#8d,#93,#97,#9d,#3d,#41,#45
	db #4b,#4f,#55,#59,#5d,#63,#67,#6d
	db #71,#75,#7b,#7f,#85,#3d,#41,#45
	db #4b,#4f,#55,#59,#5d,#63,#67,#6d
	db #71,#75,#7b,#7f,#85,#74,#80,#01
	db #6d,#67,#75,#6d,#67,#67,#6d,#6b
	db #67,#67,#6b,#6d,#67,#67,#6d,#7f
	db #67,#63,#7f,#7b,#63,#63,#7b,#71
	db #63,#63,#71,#7b,#63,#63,#7b,#7f
	db #63,#5f,#7f,#7b,#5f,#5f,#7b,#6d
	db #5f,#5f,#6d,#6b,#5f,#5f,#6b,#7f
	db #5f,#63,#7f,#7b,#63,#63,#7b,#75
	db #63,#63,#75,#71,#63,#63,#71,#6c
	db #81,#01,#ce,#70,#01,#6c,#07,#74
	db #01,#70,#07,#7a,#01,#74,#07,#ce
	db #7a,#01,#7e,#07,#ce,#8c,#01,#7e
	db #07,#84,#01,#ee,#6c,#01,#ce,#70
	db #01,#6c,#07,#74,#01,#70,#07,#7a
	db #01,#74,#07,#ce,#7a,#01,#7e,#07
	db #ce,#8c,#01,#7e,#07,#84,#01,#c2
	db #66,#80,#0b,#c0,#1e,#5e,#80,#0c
	db #c2,#7e,#80,#01,#ee,#85,#d2,#89
	db #ce,#85,#d0,#83,#d0,#7b,#ce,#7f
	db #ee,#7b,#d2,#75,#ce,#71,#d0,#75
	db #d0,#7b,#c2,#66,#80,#0b,#c0,#1e
	db #5e,#80,#0c,#f6,#c6,#02,#c6,#02
	db #c6,#02,#c6,#02,#c6,#02,#c6,#02
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #36,#80,#02,#d6,#1e,#80,#05,#ce
	db #1f,#ce,#32,#80,#02,#d2,#37,#da
	db #1e,#80,#05,#ce,#1f,#ce,#32,#80
	db #02,#d6,#2f,#d6,#2e,#80,#05,#ce
	db #2f,#ce,#3c,#80,#02,#d2,#2f,#da
	db #2e,#80,#05,#ce,#2f,#ce,#2e,#80
	db #02,#c2,#66,#81,#0b,#ee,#84,#80
	db #01,#ce,#66,#80,#0b,#ce,#88,#80
	db #01,#ce,#85,#ce,#66,#80,#0b,#82
	db #80,#01,#ce,#66,#80,#0b,#7a,#80
	db #01,#ce,#5e,#80,#0c,#ee,#7a,#80
	db #01,#ce,#5e,#80,#0c,#ce,#74,#80
	db #01,#ce,#71,#ce,#5e,#80,#0c,#74
	db #80,#01,#ce,#5e,#80,#0c,#7a,#80
	db #01,#c2,#6c,#81,#01,#ce,#70,#01
	db #6c,#07,#74,#01,#70,#07,#7a,#01
	db #74,#07,#ce,#7a,#01,#7e,#07,#ce
	db #8c,#01,#7e,#07,#84,#01,#ee,#6c
	db #01,#ce,#70,#01,#6c,#07,#74,#01
	db #70,#07,#7a,#01,#74,#07,#ce,#7a
	db #01,#7e,#07,#ce,#8c,#01,#7e,#07
	db #84,#01,#8c,#07,#88,#01,#6c,#07
	db #84,#01,#88,#07,#7e,#01,#84,#07
	db #7a,#01,#7e,#07,#7e,#01,#7a,#07
	db #7a,#01,#7e,#07,#74,#01,#7a,#07
	db #70,#01,#74,#07,#84,#81,#01,#7e
	db #87,#09,#7e,#81,#01,#84,#87,#09
	db #82,#81,#01,#7e,#87,#09,#7a,#81
	db #01,#82,#87,#09,#7a,#81,#01,#7a
	db #87,#09,#70,#81,#01,#7a,#87,#09
	db #c4,#00,#70,#07,#74,#81,#01,#c4
	db #03,#c4,#00,#74,#87,#09,#66,#81
	db #01,#c4,#03,#6c,#81,#09,#66,#87
	db #01,#70,#81,#09,#6c,#87,#01,#74
	db #81,#09,#70,#87,#01,#70,#81,#09
	db #74,#87,#01,#7a,#81,#09,#70,#87
	db #01,#6c,#81,#09,#7a,#87,#01,#84
	db #81,#09,#6c,#87,#01,#7e,#81,#09
	db #84,#87,#01,#82,#81,#09,#7e,#87
	db #01,#7a,#81,#09,#82,#87,#01,#7a
	db #81,#09,#7a,#87,#01,#70,#81,#09
	db #7a,#87,#01,#c4,#00,#70,#87,#09
	db #6c,#81,#01,#c4,#03,#c4,#00,#6c
	db #87,#09,#c4,#00,#c4,#03,#7a,#01
	db #c4,#03,#74,#01,#7a,#87,#01,#7e
	db #81,#09,#74,#87,#01,#7a,#81,#09
	db #7e,#87,#01,#74,#81,#09,#7a,#87
	db #01,#7a,#81,#09,#74,#85,#01,#36
	db #80,#02,#d6,#1e,#80,#05,#ce,#1f
	db #ce,#32,#80,#02,#d2,#37,#da,#1e
	db #80,#05,#ce,#1f,#ce,#1b,#ce,#32
	db #80,#02,#ce,#32,#80,#08,#ce,#2e
	db #80,#02,#d6,#2e,#80,#05,#ce,#2f
	db #ce,#3c,#80,#02,#d2,#2f,#da,#2e
	db #80,#05,#ce,#2f,#ce,#2e,#80,#02
	db #ce,#2e,#80,#05,#ce,#46,#80,#08
	db #c2,#6c,#83,#01,#e6,#75,#ea,#6b
	db #6d,#6a,#80,#09,#e6,#6d,#d2,#67
	db #de,#5c,#80,#01,#c2,#d0,#6c,#81
	db #01,#ce,#70,#01,#6c,#87,#09,#74
	db #81,#01,#70,#87,#09,#7a,#81,#01
	db #74,#87,#09,#74,#81,#01,#7a,#87
	db #09,#70,#81,#01,#74,#87,#09,#6c
	db #81,#01,#70,#87,#09,#66,#81,#01
	db #ce,#62,#87,#09,#67,#6d,#67,#63
	db #67,#71,#67,#63,#67,#75,#67,#63
	db #67,#71,#ce,#6c,#81,#01,#ce,#70
	db #01,#6c,#87,#09,#74,#81,#01,#70
	db #87,#09,#7a,#81,#01,#74,#87,#09
	db #74,#81,#01,#7a,#87,#09,#70,#81
	db #01,#74,#87,#09,#6c,#81,#01,#70
	db #87,#09,#66,#81,#01,#ce,#5c,#80
	db #09,#62,#07,#67,#6b,#6d,#71,#75
	db #7b,#7f,#83,#85,#89,#8d,#93,#44
	db #80,#02,#d6,#2c,#80,#05,#ce,#2d
	db #ce,#40,#80,#02,#d2,#45,#da,#2c
	db #80,#05,#ce,#2d,#ce,#29,#ce,#44
	db #80,#02,#ce,#44,#80,#08,#ce,#2e
	db #80,#02,#d6,#2e,#80,#05,#ce,#2f
	db #ce,#3c,#80,#02,#d2,#2f,#da,#2e
	db #80,#05,#ce,#2f,#ce,#2e,#80,#02
	db #ce,#2e,#80,#05,#ce,#46,#80,#08
	db #c2,#5c,#81,#0b,#de,#58,#80,#0c
	db #d2,#5c,#80,#0b,#de,#58,#80,#0c
	db #ce,#5c,#80,#0b,#d6,#4f,#e2,#54
	db #80,#0c,#ce,#58,#80,#0b,#d2,#54
	db #80,#0c,#d2,#4e,#80,#0b,#c2,#96
	db #80,#01,#ce,#7a,#01,#ce,#7e,#01
	db #7a,#87,#09,#84,#81,#01,#7e,#87
	db #09,#88,#81,#01,#84,#87,#09,#84
	db #81,#01,#88,#87,#09,#7e,#81,#01
	db #84,#87,#09,#7a,#81,#01,#7e,#87
	db #09,#7e,#81,#01,#ce,#62,#87,#09
	db #66,#07,#6c,#07,#66,#07,#7a,#01
	db #66,#07,#7e,#01,#ce,#84,#01,#66
	db #07,#7e,#01,#6c,#07,#62,#07,#66
	db #07,#70,#07,#66,#07,#7e,#01,#ce
	db #84,#81,#01,#7e,#87,#09,#88,#81
	db #01,#84,#87,#09,#8c,#81,#01,#88
	db #87,#09,#92,#81,#01,#8c,#87,#09
	db #96,#81,#01,#92,#87,#09,#9c,#81
	db #01,#96,#87,#09,#96,#81,#01,#92
	db #87,#09,#8c,#07,#92,#07,#7e,#07
	db #84,#07,#8c,#81,#01,#96,#87,#09
	db #96,#81,#01,#8c,#87,#09,#8c,#81
	db #01,#96,#87,#09,#88,#81,#01,#8c
	db #87,#09,#96,#07,#88,#07,#4e,#83
	db #0b,#c0,#1e,#46,#80,#0c,#c2,#2c
	db #80,#02,#d6,#2c,#80,#05,#ce,#2d
	db #ce,#28,#80,#02,#d2,#2d,#da,#2c
	db #80,#05,#ce,#2d,#ce,#29,#ce,#2c
	db #80,#02,#ce,#44,#80,#08,#ce,#2e
	db #80,#02,#d6,#2e,#80,#05,#ce,#2f
	db #ce,#3c,#80,#02,#d2,#2f,#da,#2e
	db #80,#05,#ce,#2f,#ce,#2e,#80,#02
	db #ce,#2e,#80,#05,#ce,#46,#80,#08
	db #c2,#62,#80,#09,#e6,#6d,#e2,#6b
	db #d6,#67,#e6,#63,#c2,#62,#80,#09
	db #e6,#6d,#e2,#6d,#ce,#71,#d2,#75
	db #e6,#71,#c2,#84,#83,#09,#e6,#89
	db #d2,#85,#d6,#83,#ce,#85,#d2,#c6
	db #02,#c6,#04,#85,#e2,#c6,#01,#c6
	db #01,#c6,#02,#c6,#02,#7f,#da,#7b
	db #c2,#84,#83,#09,#e6,#89,#d2,#85
	db #d2,#89,#d2,#8d,#d2,#c6,#02,#c6
	db #04,#85,#e6,#7f,#d2,#85,#d2,#7f
	db #d2,#c6,#02,#c6,#04,#7b,#c2,#7a
	db #87,#09,#ce,#7e,#01,#7b,#84,#07
	db #7f,#7a,#01,#85,#7e,#07,#7b,#88
	db #01,#7f,#7a,#07,#89,#7e,#01,#7b
	db #84,#07,#7f,#7a,#01,#85,#7e,#07
	db #7b,#84,#01,#7f,#8c,#07,#85,#88
	db #01,#8d,#84,#07,#89,#7e,#01,#85
	db #84,#07,#7f,#88,#01,#85,#8c,#07
	db #89,#84,#01,#8d,#88,#07,#85,#92
	db #01,#89,#84,#07,#93,#88,#01,#85
	db #8c,#01,#89,#84,#07,#8d,#88,#01
	db #85,#96,#07,#89,#92,#01,#97,#8e
	db #01,#93,#8c,#07,#8f,#88,#01,#8d
	db #8c,#81,#09,#ce,#84,#01,#8c,#01
	db #84,#07,#85,#88,#01,#85,#88,#07
	db #89,#7e,#01,#89,#7e,#07,#7f,#84
	db #01,#7f,#84,#07,#85,#7a,#01,#85
	db #7a,#07,#7b,#7e,#01,#7b,#7e,#07
	db #7f,#74,#01,#7f,#74,#07,#75,#70
	db #01,#75,#8c,#07,#71,#84,#01,#8d
	db #84,#07,#85,#88,#01,#85,#88,#07
	db #89,#7e,#01,#89,#7e,#07,#7f,#84
	db #01,#7f,#84,#07,#85,#7a,#01,#85
	db #7a,#07,#7b,#7e,#01,#7b,#7e,#07
	db #7f,#74,#01,#7f,#7a,#07,#75,#7e
	db #01,#7b,#2c,#80,#02,#ea,#37,#ea
	db #2f,#ea,#3c,#80,#0d,#ce,#3c,#80
	db #02,#c2,#7e,#83,#09,#ce,#7e,#07
	db #ce,#7e,#05,#ce,#7e,#09,#ce,#7e
	db #07,#ce,#7e,#0b,#ce,#7e,#09,#ce
	db #7e,#0d,#ce,#7e,#0b,#ce,#7e,#0f
	db #ce,#7e,#0d,#ce,#7e,#11,#ce,#7e
	db #0f,#ce,#7e,#13,#ce,#7e,#11,#ce
	db #7e,#15,#ce,#7e,#13,#ce,#7e,#17
	db #ce,#7e,#15,#ce,#7e,#19,#ce,#7e
	db #17,#ce,#7e,#1b,#ce,#7e,#19,#ce
	db #7e,#1d,#ce,#7f,#ce,#7f,#ce,#7f
	db #ce,#7f,#c2,#ff,#53,#4b,#31,#30
	db #7f,#6b,#01,#32,#00,#c1,#6b,#cd
	db #6b,#41,#6d,#44,#6d,#99,#6b,#c1
	db #6b,#cd,#6b,#41,#6d,#03,#c0,#00
	db #00,#23,#80,#0c,#01,#80,#00,#27
	db #c0,#f4,#f4,#c0,#00,#00,#05,#40
	db #0c,#01,#80,#0c,#01,#40,#00,#40
	db #0c,#40,#00,#40,#0c,#c0,#00,#00
	db #05,#40,#f4,#01,#40,#00,#7e,#5f
	db #0a,#7f,#16,#3e,#7f,#04,#3e,#7f
	db #12,#fe,#a4,#6e,#a4,#6e,#a9,#6e
	db #b5,#6e,#a4,#6e,#a9,#6e,#bc,#6e
	db #a4,#6e,#c3,#6e,#cf,#6e,#a4,#6e
	db #a9,#6e,#d6,#6e,#a4,#6e,#dd,#6e
	db #b5,#6e,#a9,#6e,#eb,#6e,#bc,#6e
	db #c3,#6e,#f8,#6e,#d6,#6e,#a9,#6e
	db #05,#6f,#b5,#6e,#dd,#6e,#12,#6f
	db #b5,#6e,#a9,#6e,#16,#6f,#bc,#6e
	db #c3,#6e,#23,#6f,#cf,#6e,#a9,#6e
	db #30,#6f,#d6,#6e,#c3,#6e,#39,#6f
	db #45,#6f,#a7,#6f,#a9,#6e,#45,#6f
	db #a7,#6f,#a9,#6e,#e9,#6f,#2b,#70
	db #a9,#6e,#e9,#6f,#2b,#70,#c3,#6e
	db #45,#6f,#a7,#6f,#a4,#6e,#45,#6f
	db #6d,#70,#2b,#71,#45,#6f,#6d,#70
	db #2b,#71,#45,#6f,#6d,#70,#2b,#71
	db #4e,#71,#ac,#71,#69,#72,#4e,#71
	db #ac,#71,#83,#72,#4e,#71,#a7,#72
	db #65,#73,#4e,#71,#a7,#72,#65,#73
	db #45,#6f,#a7,#6f,#81,#73,#45,#6f
	db #6d,#70,#af,#73,#45,#6f,#6d,#70
	db #d7,#73,#45,#6f,#6d,#70,#0d,#74
	db #45,#6f,#a7,#6f,#29,#74,#37,#74
	db #3b,#74,#29,#74,#5d,#74,#3b,#74
	db #29,#74,#64,#74,#3b,#74,#a4,#6e
	db #5d,#74,#3b,#74,#a9,#6e,#64,#74
	db #3b,#74,#a9,#6e,#64,#74,#3b,#74
	db #a4,#6e,#6b,#74,#3b,#74,#72,#74
	db #6b,#74,#3b,#74,#7e,#74,#6b,#74
	db #3b,#74,#8a,#74,#9c,#74,#3b,#74
	db #a3,#74,#6b,#74,#3b,#74,#8a,#74
	db #9c,#74,#ad,#74,#ad,#74,#af,#74
	db #b7,#74,#f7,#74,#af,#74,#b7,#74
	db #f7,#74,#39,#75,#b7,#74,#f7,#74
	db #39,#75,#b7,#75,#75,#76,#39,#75
	db #b7,#75,#75,#76,#39,#75,#b7,#75
	db #7d,#76,#39,#75,#b7,#75,#7d,#76
	db #39,#75,#b7,#75,#a8,#76,#39,#75
	db #b7,#75,#ce,#76,#39,#75,#b7,#75
	db #7d,#76,#39,#75,#b7,#75,#ee,#76
	db #39,#75,#0e,#77,#7d,#76,#39,#75
	db #0e,#77,#ee,#76,#a4,#6e,#0e,#77
	db #12,#77,#a4,#6e,#5f,#77,#7d,#77
	db #8d,#77,#5f,#77,#95,#77,#a8,#77
	db #5f,#77,#bc,#77,#5f,#77,#a4,#6e
	db #95,#77,#a4,#6e,#a4,#6e,#cf,#77
	db #a4,#6e,#a4,#6e,#a4,#6e,#7a,#ea
	db #77,#64,#6d,#6e,#6d,#85,#6d,#9c
	db #6d,#b2,#6d,#c9,#6d,#e0,#6d,#f0
	db #6d,#01,#6e,#13,#6e,#26,#6e,#42
	db #6e,#55,#6e,#6d,#6e,#7f,#6e,#8f
	db #6e,#6b,#6d,#6e,#6d,#ff,#37,#00
	db #00,#00,#00,#7f,#6d,#85,#6d,#03
	db #37,#00,#0c,#2c,#04,#0c,#2a,#04
	db #0a,#29,#04,#09,#28,#04,#08,#27
	db #04,#07,#96,#6d,#9c,#6d,#03,#37
	db #00,#0c,#2c,#05,#0c,#2a,#05,#0a
	db #29,#05,#09,#28,#05,#08,#27,#05
	db #07,#ac,#6d,#b2,#6d,#03,#37,#00
	db #0c,#2c,#0c,#08,#28,#0c,#0b,#2b
	db #0c,#09,#29,#0c,#08,#28,#0c,#6b
	db #6d,#c9,#6d,#00,#b7,#00,#2f,#0c
	db #0e,#2d,#0c,#0c,#2b,#0c,#0a,#09
	db #08,#27,#0c,#06,#05,#04,#da,#6d
	db #e0,#6d,#03,#37,#00,#2a,#0c,#2c
	db #0c,#08,#28,#0c,#0b,#2b,#0c,#09
	db #29,#0c,#08,#28,#0c,#ed,#6d,#f0
	db #6d,#00,#37,#00,#0d,#2d,#0c,#0c
	db #2a,#0c,#08,#28,#0c,#fd,#6d,#01
	db #6e,#00,#37,#00,#0d,#0d,#0d,#0c
	db #0b,#08,#07,#00,#07,#00,#0a,#6e
	db #13,#6e,#03,#37,#00,#1c,#21,#0c
	db #0c,#0c,#08,#08,#08,#0a,#0a,#0a
	db #1a,#6e,#26,#6e,#03,#37,#00,#c1
	db #13,#81,#13,#81,#13,#81,#13,#81
	db #12,#81,#13,#6b,#6d,#42,#6e,#00
	db #b7,#00,#1e,#0a,#3f,#21,#14,#2f
	db #0c,#2f,#08,#6e,#04,#10,#00,#6d
	db #03,#20,#00,#6c,#02,#40,#00,#6b
	db #6d,#55,#6e,#03,#b7,#00,#81,#13
	db #81,#13,#81,#13,#81,#13,#81,#13
	db #81,#13,#6a,#6e,#6d,#6e,#00,#37
	db #00,#1e,#24,#5d,#22,#20,#00,#5b
	db #21,#40,#00,#5a,#22,#80,#00,#0a
	db #2a,#0c,#7c,#6e,#7f,#6e,#00,#37
	db #00,#1e,#21,#3c,#21,#0c,#0c,#2a
	db #0c,#08,#28,#0c,#8c,#6e,#8f,#6e
	db #00,#37,#00,#0e,#0f,#0e,#0d,#0c
	db #0b,#0a,#2a,#f4,#96,#6e,#a4,#6e
	db #05,#37,#00,#0b,#2b,#03,#2a,#07
	db #2a,#0c,#0b,#2b,#03,#2a,#07,#2a
	db #0c,#ca,#ce,#c4,#00,#c2,#84,#81
	db #01,#e2,#7e,#80,#02,#e2,#7b,#e2
	db #75,#c2,#1e,#80,#03,#c0,#2a,#1f
	db #c2,#3c,#80,#03,#c0,#2a,#3d,#c2
	db #84,#80,#01,#e2,#7e,#80,#02,#e2
	db #7b,#e2,#71,#c2,#2c,#80,#03,#c0
	db #2a,#45,#c2,#1a,#80,#03,#c0,#2a
	db #33,#c2,#84,#80,#01,#e2,#7e,#80
	db #02,#e2,#89,#e2,#84,#80,#01,#c2
	db #74,#83,#04,#c0,#1e,#75,#d2,#7b
	db #d2,#75,#d2,#71,#c2,#6c,#80,#04
	db #c0,#1e,#63,#d2,#67,#d2,#6d,#d2
	db #71,#c2,#6c,#80,#04,#c0,#1e,#5d
	db #d2,#63,#d2,#67,#d2,#6d,#c2,#66
	db #80,#04,#c2,#74,#83,#04,#c0,#1e
	db #75,#d2,#7b,#d2,#75,#d2,#71,#c2
	db #6c,#80,#04,#c0,#1e,#63,#d2,#67
	db #d2,#6d,#d2,#71,#c2,#74,#80,#04
	db #d2,#7b,#c0,#26,#85,#c2,#88,#80
	db #04,#da,#8d,#d2,#93,#da,#97,#d2
	db #93,#c2,#36,#80,#03,#ce,#4f,#ce
	db #4e,#80,#05,#ce,#36,#80,#03,#ce
	db #4f,#ce,#4f,#ce,#36,#80,#05,#ce
	db #4f,#ce,#36,#80,#03,#ce,#4f,#ce
	db #4e,#80,#05,#ce,#36,#80,#03,#ce
	db #4f,#ce,#4f,#ce,#36,#80,#05,#ce
	db #4f,#ce,#40,#80,#03,#ce,#59,#ce
	db #58,#80,#05,#ce,#40,#80,#03,#ce
	db #59,#ce,#59,#ce,#40,#80,#05,#ce
	db #59,#ce,#40,#80,#03,#ce,#59,#ce
	db #59,#ce,#41,#ce,#58,#80,#05,#ce
	db #58,#80,#03,#ce,#40,#80,#05,#ce
	db #58,#80,#03,#c2,#66,#83,#04,#ce
	db #6d,#ce,#75,#ce,#67,#ce,#6d,#ce
	db #75,#ce,#67,#ce,#75,#ce,#63,#ce
	db #6d,#ce,#71,#ce,#63,#ce,#6d,#ce
	db #71,#ce,#63,#ce,#71,#ce,#5f,#ce
	db #63,#ce,#6d,#ce,#5f,#ce,#63,#ce
	db #6d,#ce,#5f,#ce,#6d,#ce,#5f,#ce
	db #63,#ce,#6d,#ce,#5f,#ce,#63,#ce
	db #6d,#ce,#5f,#ce,#6d,#c2,#44,#80
	db #03,#ce,#5d,#ce,#5d,#ce,#45,#ce
	db #5d,#ce,#45,#ce,#45,#ce,#5d,#ce
	db #33,#ce,#4b,#ce,#4b,#ce,#33,#ce
	db #4b,#ce,#4b,#ce,#33,#ce,#4b,#ce
	db #41,#ce,#59,#ce,#59,#ce,#41,#ce
	db #59,#ce,#59,#ce,#41,#ce,#59,#ce
	db #41,#ce,#59,#ce,#59,#ce,#41,#ce
	db #59,#ce,#59,#ce,#41,#ce,#59,#c2
	db #5c,#81,#04,#ce,#63,#ce,#6b,#ce
	db #5d,#ce,#63,#ce,#6b,#ce,#5d,#ce
	db #6b,#ce,#5f,#ce,#63,#ce,#6d,#ce
	db #5f,#ce,#63,#ce,#6d,#ce,#5f,#ce
	db #6d,#ce,#5f,#ce,#63,#ce,#75,#ce
	db #5f,#ce,#63,#ce,#75,#ce,#5f,#ce
	db #75,#ce,#5f,#ce,#63,#ce,#71,#ce
	db #5f,#ce,#63,#ce,#71,#ce,#5f,#ce
	db #71,#c2,#66,#85,#04,#c4,#04,#6c
	db #05,#7e,#89,#06,#74,#85,#04,#84
	db #89,#06,#66,#85,#04,#8c,#89,#06
	db #6c,#85,#04,#7e,#89,#06,#74,#85
	db #04,#84,#89,#06,#66,#85,#04,#8c
	db #89,#06,#74,#85,#04,#7e,#89,#06
	db #62,#85,#04,#8c,#89,#06,#6c,#85
	db #04,#7a,#89,#06,#70,#85,#04,#84
	db #89,#06,#62,#85,#04,#88,#89,#06
	db #6c,#85,#04,#7a,#89,#06,#70,#85
	db #04,#84,#89,#06,#62,#85,#04,#88
	db #89,#06,#70,#85,#04,#7a,#89,#06
	db #5e,#85,#04,#88,#89,#06,#62,#85
	db #04,#76,#89,#06,#6c,#85,#04,#7a
	db #89,#06,#5e,#85,#04,#84,#89,#06
	db #62,#85,#04,#76,#89,#06,#6c,#85
	db #04,#7a,#89,#06,#5e,#85,#04,#84
	db #89,#06,#6c,#85,#04,#76,#89,#06
	db #5e,#85,#04,#84,#89,#06,#62,#85
	db #04,#76,#89,#06,#6c,#85,#04,#7a
	db #89,#06,#5e,#85,#04,#84,#89,#06
	db #62,#85,#04,#76,#89,#06,#6c,#85
	db #04,#7a,#89,#06,#5e,#85,#04,#84
	db #89,#06,#6c,#85,#04,#76,#89,#06
	db #d4,#8c,#81,#07,#d2,#8d,#d2,#89
	db #ce,#8d,#d6,#89,#d2,#93,#ce,#8d
	db #ce,#89,#ce,#8d,#d6,#8d,#d2,#8d
	db #d2,#89,#ce,#85,#d6,#7f,#d2,#85
	db #ce,#89,#c2,#4a,#80,#03,#ce,#63
	db #ce,#63,#ce,#4b,#ce,#63,#ce,#63
	db #ce,#4a,#80,#05,#ce,#63,#ce,#4a
	db #80,#03,#ce,#63,#ce,#62,#80,#05
	db #ce,#4a,#80,#03,#ce,#63,#ce,#63
	db #ce,#4a,#80,#05,#ce,#63,#ce,#40
	db #80,#03,#ce,#59,#ce,#58,#80,#05
	db #ce,#40,#80,#03,#ce,#59,#ce,#59
	db #ce,#40,#80,#05,#ce,#59,#ce,#40
	db #80,#03,#ce,#59,#ce,#59,#ce,#41
	db #ce,#58,#80,#05,#ce,#58,#80,#03
	db #ce,#40,#80,#05,#ce,#58,#80,#03
	db #c2,#82,#85,#04,#ce,#70,#05,#9a
	db #89,#06,#7a,#85,#04,#88,#89,#06
	db #82,#85,#04,#92,#89,#06,#70,#85
	db #04,#9a,#89,#06,#7a,#85,#04,#88
	db #89,#06,#82,#85,#04,#92,#89,#06
	db #70,#85,#04,#9a,#89,#06,#7a,#85
	db #04,#88,#89,#06,#82,#85,#04,#92
	db #89,#06,#70,#85,#04,#9a,#89,#06
	db #7a,#85,#04,#88,#89,#06,#82,#85
	db #04,#92,#89,#06,#70,#85,#04,#9a
	db #89,#06,#7a,#85,#04,#88,#89,#06
	db #82,#85,#04,#92,#89,#06,#84,#85
	db #04,#9a,#89,#06,#76,#85,#04,#9c
	db #89,#06,#7a,#85,#04,#8e,#89,#06
	db #84,#85,#04,#92,#89,#06,#76,#85
	db #04,#9c,#89,#06,#7a,#85,#04,#8e
	db #89,#06,#84,#85,#04,#92,#89,#06
	db #76,#85,#04,#9c,#89,#06,#7a,#85
	db #04,#8e,#89,#06,#84,#85,#04,#92
	db #89,#06,#76,#85,#04,#9c,#89,#06
	db #7a,#85,#04,#8e,#89,#06,#84,#85
	db #04,#92,#89,#06,#76,#85,#04,#9c
	db #89,#06,#7a,#85,#04,#8e,#89,#06
	db #84,#85,#04,#92,#89,#06,#74,#81
	db #07,#ce,#7b,#ce,#7f,#ce,#85,#ce
	db #89,#d2,#8d,#ce,#89,#d2,#85,#d2
	db #7f,#d2,#7b,#ce,#85,#ce,#7f,#c2
	db #74,#81,#07,#ce,#7b,#ce,#7f,#ce
	db #85,#ce,#89,#d2,#8d,#ce,#89,#d2
	db #85,#d2,#7f,#d2,#7b,#ce,#85,#ce
	db #89,#ce,#85,#ea,#89,#d2,#7f,#d2
	db #85,#d2,#7b,#c2,#92,#85,#04,#c4
	db #04,#82,#05,#aa,#89,#06,#88,#85
	db #04,#9a,#89,#06,#92,#85,#04,#a0
	db #89,#06,#82,#85,#04,#aa,#89,#06
	db #88,#85,#04,#9a,#89,#06,#92,#85
	db #04,#a0,#89,#06,#82,#85,#04,#aa
	db #89,#06,#92,#85,#04,#9a,#89,#06
	db #82,#85,#04,#aa,#89,#06,#88,#85
	db #04,#9a,#89,#06,#92,#85,#04,#a0
	db #89,#06,#82,#85,#04,#aa,#89,#06
	db #88,#85,#04,#9a,#89,#06,#92,#85
	db #04,#a0,#89,#06,#82,#85,#04,#aa
	db #89,#06,#8e,#85,#04,#9a,#89,#06
	db #7e,#85,#04,#a6,#89,#06,#84,#85
	db #04,#96,#89,#06,#8e,#85,#04,#9c
	db #89,#06,#7e,#85,#04,#a6,#89,#06
	db #84,#85,#04,#96,#89,#06,#8e,#85
	db #04,#9c,#89,#06,#7e,#85,#04,#a6
	db #89,#06,#8e,#85,#04,#96,#89,#06
	db #7e,#85,#04,#a6,#89,#06,#84,#85
	db #04,#96,#89,#06,#8e,#85,#04,#9c
	db #89,#06,#7e,#85,#04,#a6,#89,#06
	db #84,#85,#04,#96,#89,#06,#8e,#85
	db #04,#9c,#89,#06,#7e,#85,#04,#a6
	db #89,#06,#8c,#80,#07,#d2,#7b,#d2
	db #7f,#d2,#7b,#d2,#85,#d2,#7b,#d2
	db #7f,#d2,#7b,#d2,#89,#d2,#85,#ea
	db #7b,#d2,#8d,#d2,#89,#c2,#8c,#80
	db #07,#d2,#7b,#d2,#7f,#d2,#7b,#ce
	db #89,#d2,#85,#d2,#7b,#ce,#7f,#ce
	db #7b,#ce,#85,#ce,#89,#ce,#8d,#d2
	db #7b,#d2,#7f,#d2,#7b,#ce,#89,#d2
	db #85,#d2,#7f,#ce,#7b,#ce,#75,#ce
	db #71,#ce,#75,#c2,#8c,#80,#07,#d2
	db #7b,#d2,#7f,#d2,#7b,#ce,#89,#d2
	db #85,#d2,#7b,#ce,#7f,#ce,#7b,#ce
	db #85,#ce,#89,#ce,#8d,#d2,#7b,#d2
	db #7f,#d2,#7b,#ce,#97,#d2,#93,#d2
	db #89,#ce,#8d,#c2,#74,#81,#07,#d2
	db #71,#d2,#6d,#ce,#71,#d2,#75,#d2
	db #7b,#d6,#71,#d2,#6d,#d2,#75,#d2
	db #71,#d2,#6d,#ce,#67,#d2,#63,#d2
	db #5d,#ca,#62,#80,#07,#ca,#5c,#80
	db #07,#ca,#66,#80,#07,#ca,#5c,#80
	db #07,#ca,#66,#80,#07,#ca,#6a,#80
	db #07,#ca,#74,#80,#07,#d2,#71,#d2
	db #6d,#ce,#71,#d2,#75,#d6,#7b,#d2
	db #71,#d2,#6d,#d2,#75,#d2,#71,#d2
	db #6d,#ce,#67,#d2,#63,#c2,#62,#80
	db #08,#e2,#6d,#e2,#6b,#da,#63,#d2
	db #5d,#da,#59,#c2,#4e,#80,#09,#c2
	db #62,#80,#08,#d2,#59,#d2,#5d,#d2
	db #67,#d2,#63,#d2,#59,#d2,#5d,#d2
	db #67,#d2,#63,#d2,#59,#d2,#5d,#d2
	db #67,#d2,#63,#d2,#59,#d2,#5d,#d2
	db #67,#c2,#4e,#80,#09,#c0,#1e,#55
	db #c2,#4a,#80,#09,#c0,#1e,#4f,#c2
	db #4a,#80,#09,#c0,#1e,#47,#c2,#82
	db #80,#06,#da,#83,#d2,#83,#da,#83
	db #da,#85,#c2,#8c,#80,#06,#da,#8d
	db #d2,#7f,#da,#7b,#da,#7f,#c2,#82
	db #80,#06,#da,#83,#d2,#83,#da,#83
	db #da,#85,#e2,#7f,#da,#7b,#d2,#7f
	db #c2,#4e,#80,#09,#c0,#1e,#4b,#c2
	db #8c,#80,#06,#e2,#89,#da,#85,#da
	db #83,#c2,#ca,#c2,#5e,#80,#09,#ea
	db #63,#ea,#67,#c2,#d2,#46,#80,#06
	db #ce,#5f,#ce,#63,#ce,#67,#ce,#47
	db #ce,#5f,#ce,#63,#ce,#67,#ce,#4b
	db #ce,#63,#ce,#67,#ce,#6b,#ce,#4b
	db #ce,#63,#ce,#67,#ce,#6b,#ce,#4f
	db #ce,#67,#ce,#6b,#ce,#6d,#ce,#4f
	db #ce,#67,#ce,#6b,#ce,#6d,#ce,#7b
	db #ce,#67,#ce,#75,#ce,#67,#ce,#71
	db #ce,#67,#ce,#6d,#46,#80,#06,#ce
	db #5f,#ce,#63,#ce,#67,#ce,#47,#ce
	db #5f,#ce,#63,#ce,#67,#ce,#4b,#ce
	db #63,#ce,#67,#ce,#6b,#ce,#4b,#ce
	db #63,#ce,#67,#ce,#6b,#ce,#4f,#ce
	db #67,#ce,#6b,#ce,#6d,#ce,#4f,#ce
	db #67,#ce,#6b,#ce,#6d,#ce,#7b,#ce
	db #67,#ce,#75,#ce,#67,#ce,#71,#ce
	db #67,#ce,#6d,#ce,#67,#c2,#2e,#81
	db #0a,#2e,#07,#5e,#81,#0b,#ce,#5e
	db #80,#0c,#ce,#47,#ce,#5e,#80,#0b
	db #ce,#46,#81,#0a,#ce,#5e,#81,#0b
	db #77,#5f,#ce,#32,#80,#0a,#ce,#62
	db #80,#0b,#32,#87,#0a,#62,#81,#0c
	db #ce,#4b,#ce,#62,#80,#0b,#ce,#4a
	db #80,#0a,#ce,#62,#80,#0b,#ce,#4a
	db #80,#0a,#ce,#37,#ce,#66,#80,#0b
	db #ce,#66,#80,#0c,#1e,#87,#0a,#66
	db #81,#0c,#ce,#66,#80,#0b,#ce,#4e
	db #80,#0c,#ce,#66,#80,#0b,#ce,#4e
	db #80,#0c,#ce,#32,#80,#0a,#ce,#66
	db #80,#0b,#ce,#66,#80,#0c,#ce,#36
	db #80,#0a,#ce,#62,#80,#0b,#ce,#66
	db #80,#0c,#ce,#4e,#81,#0a,#4e,#0b
	db #4e,#81,#0b,#c2,#46,#81,#06,#4e
	db #05,#5e,#01,#46,#85,#0d,#62,#81
	db #06,#5e,#85,#0d,#66,#81,#06,#62
	db #85,#0d,#2e,#81,#0a,#66,#85,#0d
	db #5e,#81,#06,#46,#85,#0d,#1a,#81
	db #0a,#5e,#85,#0d,#66,#81,#06,#62
	db #85,#0d,#4a,#81,#06,#66,#85,#0d
	db #62,#81,#06,#4a,#85,#0d,#66,#81
	db #06,#62,#85,#0d,#6a,#81,#06,#66
	db #85,#0d,#32,#81,#0a,#6a,#85,#0d
	db #62,#81,#06,#4a,#85,#0d,#66,#81
	db #06,#1a,#85,#0a,#6a,#81,#06,#66
	db #85,#0d,#4e,#81,#06,#6a,#85,#0d
	db #66,#81,#06,#4e,#85,#0d,#6a,#81
	db #06,#66,#85,#0d,#6c,#81,#06,#6a
	db #85,#0d,#36,#81,#0a,#6c,#85,#0d
	db #66,#81,#06,#4e,#85,#0d,#6a,#81
	db #06,#66,#85,#0d,#6c,#81,#06,#6a
	db #85,#0d,#7a,#81,#06,#6c,#85,#0d
	db #66,#81,#06,#7a,#85,#0d,#74,#81
	db #06,#66,#85,#0d,#66,#81,#06,#74
	db #85,#0d,#40,#81,#0a,#66,#85,#0d
	db #66,#81,#06,#70,#85,#0d,#6c,#81
	db #06,#66,#85,#0d,#36,#81,#0a,#6c
	db #85,#0d,#7e,#80,#03,#ea,#7b,#ea
	db #7f,#c2,#d4,#7e,#80,#0e,#ce,#7f
	db #ce,#7f,#ce,#7b,#d2,#7f,#d6,#7f
	db #ce,#7f,#ce,#7f,#ce,#75,#d2,#7f
	db #d6,#7f,#ce,#7f,#ce,#7f,#ce,#7b
	db #d2,#85,#d2,#83,#d2,#7f,#d2,#75
	db #ce,#7f,#ce,#7b,#c2,#7e,#80,#0e
	db #d6,#7f,#ce,#7f,#ce,#7f,#d2,#83
	db #d6,#85,#ce,#83,#ce,#85,#ce,#89
	db #d2,#8d,#d6,#83,#d2,#85,#ce,#93
	db #d2,#8d,#d6,#8f,#ce,#8d,#ce,#89
	db #d2,#85,#c2,#8c,#80,#0e,#da,#8d
	db #ce,#89,#d2,#83,#d6,#83,#d2,#85
	db #ce,#89,#d2,#85,#d6,#83,#d2,#7f
	db #ce,#75,#d2,#6d,#d6,#75,#ce,#7f
	db #d2,#83,#c2,#66,#80,#0e,#d2,#67
	db #ce,#67,#ce,#67,#ce,#63,#d2,#5d
	db #d6,#5d,#ce,#5d,#ce,#59,#ce,#5d
	db #ce,#6b,#d2,#6d,#ea,#58,#80,#0b
	db #da,#53,#c2,#66,#85,#0f,#c2,#66
	db #80,#0d,#c0,#1a,#c6,#01,#c6,#01
	db #c6,#01,#c6,#01,#c6,#02,#c6,#02
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#06,#c6,#06,#c6,#06
	db #c6,#06,#c6,#08,#c6,#08,#c6,#08
	db #c6,#08,#c6,#08,#c6,#0a,#c6,#0a
	db #c6,#0a,#c6,#0a,#c6,#10,#c6,#10
	db #c6,#10,#c6,#10,#de,#c4,#02,#d8
	db #c4,#02,#da,#c4,#03,#da,#c4,#04
	db #da,#c4,#05,#da,#c4,#06,#da,#c4
	db #07,#c4,#08,#ce,#c4,#09,#ce,#c4
	db #0a,#c2,#c6,#12,#c6,#14,#c6,#16
	db #c6,#18,#c6,#1a,#c6,#1c,#c6,#1e
	db #ca,#c2,#6a,#83,#03,#fa,#67,#da
	db #61,#c2,#44,#85,#0e,#d2,#52,#05
	db #d2,#5d,#d2,#61,#f2,#41,#d2,#4f
	db #d2,#59,#d2,#5d,#c2,#62,#80,#03
	db #e2,#6d,#ea,#6b,#ce,#6d,#ce,#71
	db #da,#6d,#d2,#6b,#da,#63,#da,#5d
	db #c2,#46,#85,#0e,#d2,#54,#05,#d2
	db #5f,#d2,#6d,#f2,#4b,#d2,#59,#d2
	db #63,#d2,#67,#c2,#46,#85,#0e,#d2
	db #54,#07,#d2,#5e,#09,#d2,#6c,#0b
	db #f2,#4a,#0d,#d2,#58,#0f,#d2,#62
	db #11,#d2,#66,#13,#e2,#ca,#c2,#ff
	db #53,#4b,#31,#30,#eb,#77,#01,#32
	db #00,#0e,#78,#19,#78,#5b,#78,#5e
	db #78,#05,#78,#0e,#78,#19,#78,#5b
	db #78,#05,#c0,#00,#00,#80,#f4,#03
	db #80,#00,#0b,#7f,#01,#3e,#7e,#3e
	db #7e,#3e,#7e,#3e,#2c,#7e,#95,#78
	db #95,#78,#96,#78,#b0,#78,#b7,#78
	db #96,#78,#d2,#78,#d8,#78,#e9,#78
	db #f9,#78,#01,#79,#14,#79,#95,#78
	db #95,#78,#96,#78,#b0,#78,#26,#79
	db #96,#78,#56,#79,#26,#79,#e9,#78
	db #f9,#78,#26,#79,#5a,#79,#6e,#79
	db #26,#79,#72,#79,#82,#79,#95,#78
	db #96,#78,#86,#79,#86,#79,#86,#79
	db #14,#88,#79,#64,#78,#6e,#78,#7f
	db #78,#6b,#78,#6e,#78,#ff,#37,#00
	db #00,#00,#00,#7b,#78,#7f,#78,#00
	db #37,#00,#0c,#0c,#0c,#0b,#0a,#07
	db #04,#00,#04,#00,#8f,#78,#95,#78
	db #03,#37,#00,#0c,#2c,#0c,#08,#28
	db #0c,#0b,#2b,#0c,#09,#29,#0c,#08
	db #28,#0c,#c2,#8c,#80,#01,#d2,#93
	db #d2,#89,#d2,#8d,#d2,#85,#da,#7f
	db #da,#8d,#d2,#93,#d2,#97,#d2,#93
	db #d2,#8d,#da,#89,#c2,#3c,#83,#02
	db #c0,#1e,#41,#c2,#ce,#8c,#87,#01
	db #d2,#93,#d2,#89,#d2,#8d,#d2,#85
	db #da,#7f,#da,#8d,#d2,#93,#d2,#97
	db #d2,#93,#d2,#8d,#da,#89,#c2,#32
	db #80,#02,#ea,#33,#c2,#ce,#9c,#87
	db #01,#ce,#9b,#ce,#93,#d2,#8d,#d2
	db #89,#d2,#85,#da,#7f,#c2,#9c,#80
	db #01,#ce,#9b,#ce,#93,#d2,#8d,#d2
	db #89,#d2,#85,#da,#7f,#c2,#46,#80
	db #02,#ea,#47,#ea,#33,#c2,#ce,#9c
	db #87,#01,#ce,#9b,#ce,#93,#d2,#8d
	db #d2,#89,#d2,#85,#da,#7b,#dc,#7f
	db #c2,#9c,#80,#01,#ce,#9b,#ce,#93
	db #d2,#8d,#d2,#89,#d2,#85,#da,#7b
	db #da,#7f,#c2,#4a,#81,#01,#ce,#4f
	db #ce,#55,#ce,#59,#ce,#5d,#ce,#59
	db #ce,#55,#ce,#4f,#ce,#4b,#d2,#3d
	db #ce,#41,#ce,#45,#d2,#4b,#d2,#41
	db #e2,#4f,#ce,#4b,#ce,#41,#d2,#37
	db #ce,#3d,#ce,#41,#ce,#45,#ce,#4b
	db #ce,#4f,#c2,#44,#80,#02,#c2,#9c
	db #80,#01,#ce,#9b,#ce,#93,#d2,#8d
	db #d2,#89,#d2,#85,#da,#7b,#da,#85
	db #ea,#89,#c2,#3c,#80,#02,#c2,#9c
	db #81,#01,#da,#c4,#01,#d2,#c4,#02
	db #d2,#c4,#04,#d6,#c4,#04,#c2,#24
	db #87,#02,#c2,#ca,#c2,#ff,#53,#4b
	db #31,#30,#89,#79,#01,#32,#00,#b0
	db #79,#b3,#79,#fb,#79,#01,#7a,#a6
	db #79,#b1,#79,#b9,#79,#fe,#79,#03
	db #c0,#00,#00,#c0,#00,#00,#07,#18
	db #01,#28,#03,#80,#f4,#3e,#7f,#0a
	db #e7,#7a,#e7,#7a,#e7,#7a,#e7,#7a
	db #e8,#7a,#e7,#7a,#e7,#7a,#e8,#7a
	db #49,#7b,#e7,#7a,#e8,#7a,#59,#7b
	db #69,#7b,#e8,#7a,#49,#7b,#83,#7b
	db #e8,#7a,#59,#7b,#69,#7b,#e8,#7a
	db #49,#7b,#83,#7b,#e8,#7a,#59,#7b
	db #9c,#7b,#e8,#7a,#49,#7b,#b2,#7b
	db #e8,#7a,#c9,#7b,#db,#7b,#e8,#7a
	db #ee,#7b,#e7,#7a,#e8,#7a,#e7,#7a
	db #00,#00,#7c,#14,#00,#7c,#15,#7a
	db #1f,#7a,#30,#7a,#46,#7a,#5d,#7a
	db #74,#7a,#8b,#7a,#a2,#7a,#b9,#7a
	db #d0,#7a,#1c,#7a,#1f,#7a,#ff,#37
	db #00,#00,#00,#00,#2c,#7a,#30,#7a
	db #00,#37,#00,#0e,#0e,#0e,#0d,#0c
	db #0a,#05,#00,#05,#00,#40,#7a,#46
	db #7a,#03,#37,#00,#0c,#2c,#0c,#08
	db #28,#0c,#0b,#2b,#0c,#09,#29,#0c
	db #08,#28,#0c,#57,#7a,#5d,#7a,#03
	db #37,#00,#0c,#2c,#05,#0c,#2a,#05
	db #0a,#29,#05,#09,#28,#05,#08,#27
	db #05,#07,#6e,#7a,#74,#7a,#03,#37
	db #00,#0c,#2c,#07,#0c,#2a,#07,#0a
	db #29,#07,#09,#28,#07,#08,#27,#07
	db #07,#85,#7a,#8b,#7a,#03,#37,#00
	db #0c,#2c,#09,#0c,#2a,#09,#0a,#29
	db #09,#09,#28,#09,#08,#27,#09,#07
	db #9c,#7a,#a2,#7a,#03,#37,#00,#0c
	db #2c,#04,#0c,#2a,#04,#0a,#29,#04
	db #09,#28,#04,#08,#27,#04,#07,#b3
	db #7a,#b9,#7a,#03,#37,#00,#0c,#2c
	db #0a,#0c,#2a,#0a,#0a,#29,#0a,#09
	db #28,#0a,#08,#27,#0a,#07,#ca,#7a
	db #d0,#7a,#03,#37,#00,#0c,#2c,#03
	db #0c,#2a,#03,#0a,#29,#03,#09,#28
	db #03,#08,#27,#03,#07,#e1,#7a,#e7
	db #7a,#03,#37,#00,#0c,#2c,#02,#0c
	db #2a,#02,#0a,#29,#02,#09,#28,#02
	db #08,#27,#02,#07,#c2,#7e,#81,#01
	db #ce,#96,#07,#ce,#84,#01,#ce,#7e
	db #07,#ce,#8c,#01,#ce,#84,#07,#ce
	db #7e,#01,#ce,#8c,#07,#ce,#84,#01
	db #ce,#7e,#07,#ce,#8c,#01,#ce,#84
	db #07,#ce,#a4,#01,#ce,#8c,#07,#ce
	db #9c,#01,#ce,#a4,#07,#ce,#7e,#01
	db #ce,#9c,#07,#ce,#8c,#01,#ce,#7e
	db #07,#ce,#92,#01,#ce,#8c,#07,#ce
	db #84,#01,#ce,#92,#07,#ce,#9c,#01
	db #ce,#84,#07,#ce,#9a,#01,#ce,#9c
	db #07,#ce,#92,#01,#ce,#9a,#07,#ce
	db #96,#01,#ce,#92,#07,#c2,#1e,#80
	db #02,#f2,#37,#d2,#37,#d2,#37,#d2
	db #1b,#f2,#33,#da,#33,#c2,#28,#80
	db #02,#f2,#37,#d2,#37,#d2,#37,#d2
	db #25,#f2,#33,#da,#33,#c2,#74,#80
	db #03,#e2,#7e,#80,#04,#da,#7e,#80
	db #03,#da,#71,#ea,#7a,#80,#05,#da
	db #7a,#80,#04,#da,#74,#80,#03,#c2
	db #e4,#7e,#80,#04,#da,#7e,#80,#03
	db #da,#6c,#80,#06,#da,#66,#80,#03
	db #da,#70,#80,#07,#da,#70,#80,#05
	db #c2,#96,#80,#08,#e2,#97,#da,#97
	db #d2,#97,#d2,#97,#d2,#9b,#e2,#9b
	db #da,#9b,#da,#9c,#80,#06,#c2,#e4
	db #9c,#80,#06,#da,#96,#80,#03,#da
	db #8e,#80,#06,#ea,#8f,#da,#8e,#80
	db #09,#da,#8e,#80,#06,#c2,#3c,#80
	db #02,#f2,#33,#d2,#33,#d2,#33,#d2
	db #41,#f2,#3d,#d2,#3d,#d2,#3d,#c2
	db #e4,#8e,#80,#06,#da,#8f,#d2,#8f
	db #d2,#8f,#d2,#93,#e2,#93,#da,#92
	db #80,#03,#c2,#2e,#80,#02,#f2,#47
	db #d2,#47,#d2,#47,#d2,#33,#f2,#1b
	db #d2,#1b,#d2,#1b,#c2,#ff
;
; #0545
; ld hl,#5302
; ld de,#5d3b
; ld (#0560),hl
; di
; call #4fda
; di
;
; ld de,&5A9B
; call &4fda
;
.init_music		; added by Megachur
;
	or a
	jr nz,init_music_1
	ld de,intro_theme	; #5A9B	- intro music
	jp real_init_music
.init_music_1
	ld de,main_theme	; #5d3b - main music
	jp real_init_music	; added by Megachur
;
.music_info
	db "Sudoku Demo (2008)(Chronosoft)(Herve Monchatre)",0
	db "",0

	read "music_end.asm"
