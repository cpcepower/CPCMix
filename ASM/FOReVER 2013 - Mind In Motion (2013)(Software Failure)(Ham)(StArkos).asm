; Music of FOReVER 2013 - Mind In Motion (2013)(Software Failure)(Ham)(StArkos)
; Ripped by Megachur the 02/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FORE2MIM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6000

	read "music_header.asm"

	jp l69ea	; init
	jp l600a	; play 
	jp l6a3f	; stop
.l6009
	nop
;
.play_music
.l600a
;
	call l6a5b
	ex af,af'
	exx
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	xor a
	ld (l6009),a
.l601c equ $ + 1
	ld a,#01
	dec a
	jp z,l6029
	ld b,#c0
.l6023
	djnz l6023
	nop
	jp l62e0
.l602a equ $ + 1
.l6029
	ld a,#01
	dec a
	jp z,l6037
	ld b,#27
.l6031
	djnz l6031
	nop
	jp l60cf
.l6038 equ $ + 1
.l6037
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jp c,l6046
	ld b,#02
.l6042
	djnz l6042
	jr l604d
.l6046
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l604d
	rra
	jp c,l6058
	nop
	nop
	nop
	nop
	nop
	jr l605d
.l6058
	ld de,l6162
	ldi
.l605d
	rra
	jp c,l6068
	nop
	nop
	nop
	nop
	nop
	jr l606d
.l6068
	ld de,l61fb
	ldi
.l606d
	rra
	jp c,l6078
	nop
	nop
	nop
	nop
	nop
	jr l607d
.l6078
	ld de,l6294
	ldi
.l607d
	ld de,l6123
	ldi
	ldi
	ld de,l61bc
	ldi
	ldi
	ld de,l6255
	ldi
	ldi
	rra
	jp c,l609d
	nop
	nop
	nop
	nop
	nop
	jr l60a2
.l609d
	ld de,l60ce
	ldi
.l60a2
	rra
	jp c,l60ae
	ld b,#02
.l60a8
	djnz l60a8
	nop
	nop
	jr l60b6
.l60ae
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l60ba),de
.l60b6
	ld (l6038),hl
.l60ba equ $ + 1
	ld hl,#0000
	ld (l60e2),hl
	ld a,#01
	ld (l60d3),a
	ld (l6114),a
	ld (l61ad),a
	ld (l6246),a
.l60ce equ $ + 1
	ld a,#01
.l60cf
	ld (l602a),a
.l60d3 equ $ + 1
	ld a,#01
	dec a
	jp z,l60e1
	ld b,#08
.l60da
	djnz l60da
	nop
	nop
	jp l6110
.l60e2 equ $ + 1
.l60e1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jp c,l60f2
	ld b,#04
.l60ed
	djnz l60ed
	nop
	jr l610d
.l60f2
	srl a
	jp z,l60fa
	nop
	jr l60fc
.l60fa
	ld a,(hl)
	inc hl
.l60fc
	jp c,l6103
	jr l6108
	jr nc,l6108
.l6103
	ld (l6009),a
	jr l610b
.l6108
	ld (l62df),a
.l610b
	ld a,#01
.l610d
	ld (l60e2),hl
.l6110
	ld (l60d3),a
.l6114 equ $ + 1
	ld a,#01
	dec a
	jp z,l6122
	ld b,#2a
.l611b
	djnz l611b
	nop
	nop
	jp l61a9
.l6123 equ $ + 1
.l6122
	ld hl,#0000
	call l66fa
	ld (l6123),hl
	jp nc,l6135
	ld b,#18
.l6130
	djnz l6130
	jp l61a9
.l6135
	ld a,d
	rra
	jp c,l613f
	nop
	nop
	nop
	jr l6144
.l613f
	and #0f
	ld (l6370),a
.l6144
	rl d
	jp c,l614e
	nop
	nop
	nop
	jr l6152
.l614e
	ld (l635e),ix
.l6152
	rl d
	jp c,l6160
	ld b,#10
.l6159
	djnz l6159
	nop
	nop
	nop
	jr l61a7
.l6160
	ld a,e
.l6162 equ $ + 1
	add #00
	ld (l636f),a
	ld hl,#0000
	ld (l635b),hl
	rl d
	jp c,l6183
.l6172 equ $ + 1
	ld hl,#0000
	ld a,(l6387)
	ld (l6378),a
	ld b,#07
.l617c
	djnz l617c
	nop
	nop
	nop
	jr l61a4
.l6183
	ld l,b
	add hl,hl
.l6186 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l6387),a
	ld (l6378),a
	ld a,(hl)
	or a
	jp nz,l619d
	nop
	jr l61a0
.l619d
	ld (l6474),a
.l61a0
	inc hl
	ld (l6172),hl
.l61a4
	ld (l6372),hl
.l61a7
	ld a,#01
.l61a9
	ld (l6114),a
.l61ad equ $ + 1
	ld a,#01
	dec a
	jp z,l61bb
	ld b,#2a
.l61b4
	djnz l61b4
	nop
	nop
	jp l6242
.l61bc equ $ + 1
.l61bb
	ld hl,#0000
	call l66fa
	ld (l61bc),hl
	jp nc,l61ce
	ld b,#18
.l61c9
	djnz l61c9
	jp l6242
.l61ce
	ld a,d
	rra
	jp c,l61d8
	nop
	nop
	nop
	jr l61dd
.l61d8
	and #0f
	ld (l6335),a
.l61dd
	rl d
	jp c,l61e7
	nop
	nop
	nop
	jr l61eb
.l61e7
	ld (l6323),ix
.l61eb
	rl d
	jp c,l61f9
	ld b,#10
.l61f2
	djnz l61f2
	nop
	nop
	nop
	jr l6240
.l61f9
	ld a,e
.l61fb equ $ + 1
	add #00
	ld (l6334),a
	ld hl,#0000
	ld (l6320),hl
	rl d
	jp c,l621c
.l620b equ $ + 1
	ld hl,#0000
	ld a,(l634c)
	ld (l633d),a
	ld b,#07
.l6215
	djnz l6215
	nop
	nop
	nop
	jr l623d
.l621c
	ld l,b
	add hl,hl
.l621f equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l634c),a
	ld (l633d),a
	ld a,(hl)
	or a
	jp nz,l6236
	nop
	jr l6239
.l6236
	ld (l6474),a
.l6239
	inc hl
	ld (l620b),hl
.l623d
	ld (l6337),hl
.l6240
	ld a,#01
.l6242
	ld (l61ad),a
.l6246 equ $ + 1
	ld a,#01
	dec a
	jp z,l6254
	ld b,#2a
.l624d
	djnz l624d
	nop
	nop
	jp l62db
.l6255 equ $ + 1
.l6254
	ld hl,#0000
	call l66fa
	ld (l6255),hl
	jp nc,l6267
	ld b,#18
.l6262
	djnz l6262
	jp l62db
.l6267
	ld a,d
	rra
	jp c,l6271
	nop
	nop
	nop
	jr l6276
.l6271
	and #0f
	ld (l62fd),a
.l6276
	rl d
	jp c,l6280
	nop
	nop
	nop
	jr l6284
.l6280
	ld (l62eb),ix
.l6284
	rl d
	jp c,l6292
	ld b,#10
.l628b
	djnz l628b
	nop
	nop
	nop
	jr l62d9
.l6292
	ld a,e
.l6294 equ $ + 1
	add #00
	ld (l62fc),a
	ld hl,#0000
	ld (l62e8),hl
	rl d
	jp c,l62b5
.l62a4 equ $ + 1
	ld hl,#0000
	ld a,(l6314)
	ld (l6305),a
	ld b,#07
.l62ae
	djnz l62ae
	nop
	nop
	nop
	jr l62d6
.l62b5
	ld l,b
	add hl,hl
.l62b8 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l6314),a
	ld (l6305),a
	ld a,(hl)
	or a
	jp nz,l62cf
	nop
	jr l62d2
.l62cf
	ld (l6474),a
.l62d2
	inc hl
	ld (l62a4),hl
.l62d6
	ld (l62ff),hl
.l62d9
	ld a,#01
.l62db
	ld (l6246),a
.l62df equ $ + 1
	ld a,#01
.l62e0
	ld (l601c),a
	ld iy,l6493
.l62e8 equ $ + 1
	ld hl,#0000
.l62eb equ $ + 1
	ld de,#0000
	add hl,de
	ld (l62e8),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l62fd equ $ + 2
.l62fc equ $ + 1
	ld de,#0000
.l62ff equ $ + 1
	ld hl,#0000
	call l649e
.l6305 equ $ + 1
	ld a,#01
	dec a
	jp z,l6310
	nop
	nop
	nop
	nop
	jr l6315
.l6310
	ld (l62ff),hl
.l6314 equ $ + 1
	ld a,#06
.l6315
	ld (l6305),a
	ld a,lx
	ex af,af'
	ld iy,l6491
.l6320 equ $ + 1
	ld hl,#0000
.l6323 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l6320),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l6335 equ $ + 2
.l6334 equ $ + 1
	ld de,#0000
.l6337 equ $ + 1
	ld hl,#0000
	call l649e
.l633d equ $ + 1
	ld a,#01
	dec a
	jp z,l6348
	nop
	nop
	nop
	nop
	jr l634d
.l6348
	ld (l6337),hl
.l634c equ $ + 1
	ld a,#06
.l634d
	ld (l633d),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l648f
.l635b equ $ + 1
	ld hl,#0000
.l635e equ $ + 1
	ld de,#0000
	add hl,de
	ld (l635b),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l6370 equ $ + 2
.l636f equ $ + 1
	ld de,#0000
.l6372 equ $ + 1
	ld hl,#0000
	call l649e
.l6378 equ $ + 1
	ld a,#01
	dec a
	jp z,l6383
	nop
	nop
	nop
	nop
	jr l6388
.l6383
	ld (l6372),hl
.l6387 equ $ + 1
	ld a,#06
.l6388
	ld (l6378),a
	ex af,af'
	or lx
.l638e
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l648f
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
	call l6472
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	exx
	ex af,af'
.l6470
	nop
	ret
.l6472
	ld a,(hl)
.l6474 equ $ + 1
	cp #ff
	jr z,l6488
	ld (l6474),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l6488
	ld b,#06
.l648a
	djnz l648a
	nop
	nop
	ret
.l648f
	nop
	nop
.l6491
	nop
	nop
.l6493
	nop
	nop
.l6495
	nop
.l6496
	nop
	nop
	nop
	nop
	nop
.l649b
	nop
	nop
.l649d
	nop
.l649e
	ld a,(hl)
	and #0f
	cp #0d
	jp nz,l64ad
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jr l64b9
.l64ad
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l64b9
	ld b,(hl)
	inc hl
	rr b
	jp c,l653c
	rr b
	jp c,l64f7
	ld a,b
	and #0f
	jp nz,l64d9
	ld (iy+#07),a
	ld lx,#09
	ld b,#3a
.l64d3
	djnz l64d3
	nop
	nop
	nop
	ret
.l64d9
	ld lx,#08
	sub d
	jr nc,l64e0
	xor a
.l64e0
	ld (iy+#07),a
	rr b
	call l66b9
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld b,#24
.l64f1
	djnz l64f1
	nop
	nop
	nop
	ret
.l64f7
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jp nz,l6508
	nop
	nop
	nop
	nop
	jr l650e
.l6508
	ld (l6495),a
	ld lx,#00
.l650e
	ld a,b
	and #0f
	sub d
	jr nc,l6515
	xor a
.l6515
	ld (iy+#07),a
	bit 5,c
	jp nz,l6526
	inc lx
	ld b,#34
.l6521
	djnz l6521
	nop
	nop
	ret
.l6526
	rr b
	bit 6,c
	call l66a2
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld b,#1e
.l6536
	djnz l6536
	nop
	nop
	nop
	ret
.l653c
	rr b
	jp c,l654b
	ld a,#03
.l6543
	dec a
	jp nz,l6543
	nop
	nop
	jr l6560
.l654b
	ld a,(l6378)
	ld c,a
	ld a,(l6387)
	cp c
	jp z,l655b
	nop
	nop
	nop
	jr l6560
.l655b
	ld a,#fe
	ld (l6474),a
.l6560
	bit 1,b
	jp nz,l6643
	ld a,#04
.l6567
	dec a
	jr nz,l6567
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l649d),a
	bit 0,b
	jp z,l65ec
	bit 2,b
	call l66a2
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l6595),a
	ld a,b
	exx
.l6595 equ $ + 1
	jr l6596
.l6596
	jp l675c
	nop
	jp l677b
	nop
	jp l679a
	nop
	jp l67b9
	nop
	jp l67d3
	nop
	jp l67e9
	nop
	jp l67fb
	nop
	jp l6809
.l65b5
	jp c,l65ba
	jr l65bc
.l65ba
	inc hl
	nop
.l65bc
	bit 5,a
	jp nz,l65c7
	ld b,#03
.l65c3
	djnz l65c3
	jr l65d3
.l65c7
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
.l65d3
	ld (l649b),hl
	exx
.l65d7
	bit 7,c
	jp nz,l65e3
	ld b,#02
.l65de
	djnz l65de
	nop
	nop
	ret
.l65e3
	ld a,(hl)
	inc hl
	ld (l6495),a
	ld lx,#00
	ret
.l65ec
	nop
	nop
	nop
	bit 2,b
	call l66a2
	ld (l649b),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l6603),a
	ld a,b
	exx
.l6603 equ $ + 1
	jr l6604
.l6604
	jp l6813
	nop
	jp l6832
	nop
	jp l6851
	nop
	jp l6870
	nop
	jp l688a
	nop
	jp l68a0
	nop
	jp l68b2
	nop
	jp l68c0
.l6623
	bit 5,a
	jp nz,l662e
	ld b,#03
.l662a
	djnz l662a
	jr l663a
.l662e
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
.l663a
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l65d7
.l6643
	bit 0,b
	jr z,l664e
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l649e
.l664e
	ld (iy+#07),#10
	bit 5,b
	jp nz,l6663
	ld lx,#09
	ld b,#15
.l665c
	djnz l665c
	nop
	nop
	nop
	jr l6676
.l6663
	ld lx,#08
	ld hx,e
	bit 2,b
	call l66a2
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l6676
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l649d),a
	rr b
	rr b
	bit 2,b
	call l66a2
	ld (l649b),hl
	exx
	bit 5,b
	jp z,l669c
	ld a,(hl)
	inc hl
	ld (l6495),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l669c
	ld b,#03
.l669e
	djnz l669e
	nop
	ret
.l66a2
	jp z,l66b9
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
	ld a,#0b
.l66b2
	dec a
	jp nz,l66b2
	nop
	nop
	ret
.l66b9
	bit 4,b
	jr z,l66cb
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
	jr l66d1
.l66cb
	ld a,#04
.l66cd
	dec a
	jp nz,l66cd
.l66d1
	ld a,e
	bit 3,b
	jp nz,l66e1
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l66eb
.l66e1
	add (hl)
	inc hl
	cp #90
	jr nc,l66e9
	jr l66eb
.l66e9
	ld a,#8f
.l66eb
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l68ca
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l66fa
	ld a,(hl)
	inc hl
	srl a
	jp c,l673d
	sub #20
	jp c,l6753
	jp z,l6739
	dec a
	ld e,a
	nop
	nop
	nop
	nop
	nop
.l6710
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jp c,l6722
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr l672a
.l6722
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l672a
	rla
	rla
	jp nc,l6733
	ld b,(hl)
	inc hl
	or a
	ret
.l6733
	nop
	nop
	nop
	nop
	nop
	ret
.l6739
	ld e,(hl)
	inc hl
	jr l6710
.l673d
	ld d,#40
	sub #01
	ld e,a
	jp nc,l674d
	ld e,(hl)
	inc hl
	or a
	ld b,#08
.l674a
	djnz l674a
	ret
.l674d
	ld b,#09
.l674f
	djnz l674f
	nop
	ret
.l6753
	add #20
	ld b,#09
.l6757
	djnz l6757
	nop
	nop
	ret
.l675c
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
	jp l65b5
.l677b
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
	nop
	nop
	nop
	nop
	jp l65b5
.l679a
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jp l65b5
.l67b9
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld b,#02
.l67cb
	djnz l67cb
	nop
	nop
	nop
	jp l65b5
.l67d3
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld b,#03
.l67e1
	djnz l67e1
	nop
	nop
	nop
	jp l65b5
.l67e9
	srl h
	rr l
	srl h
	rr l
	ld b,#04
.l67f3
	djnz l67f3
	nop
	nop
	nop
	jp l65b5
.l67fb
	srl h
	rr l
	ld b,#05
.l6801
	djnz l6801
	nop
	nop
	nop
	jp l65b5
.l6809
	ld b,#06
.l680b
	djnz l680b
	nop
	nop
	nop
	jp l65b5
.l6813
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
	jp l6623
.l6832
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
	nop
	nop
	nop
	nop
	jp l6623
.l6851
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jp l6623
.l6870
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	ld b,#02
.l6882
	djnz l6882
	nop
	nop
	nop
	jp l6623
.l688a
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	ld b,#03
.l6898
	djnz l6898
	nop
	nop
	nop
	jp l6623
.l68a0
	sla l
	rl h
	sla l
	rl h
	ld b,#04
.l68aa
	djnz l68aa
	nop
	nop
	nop
	jp l6623
.l68b2
	sla l
	rl h
	ld b,#05
.l68b8
	djnz l68b8
	nop
	nop
	nop
	jp l6623
.l68c0
	ld b,#06
.l68c2
	djnz l68c2
	nop
	nop
	nop
	jp l6623
.l68ca
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
.l69ea
;
	ld hl,#0009
	add hl,de
	ld de,l62df
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l6186),hl
	ld (l621f),hl
	ld (l62b8),hl
	add hl,bc
	ld de,l60ce
	ldi
	ld de,l6162
	ldi
	ld de,l61fb
	ldi
	ld de,l6294
	ldi
	ld de,l60ba
	ldi
	ldi
	ld (l6038),hl
	ld a,#01
	ld (l601c),a
	ld (l602a),a
	ld a,#ff
	ld (l649d),a
	ld hl,(l6186)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l6372),hl
	ld (l6337),hl
	ld (l62ff),hl
	ret
;
.stop_music
.l6a3f
;
	call l6a5b
	ex af,af'
	exx
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld hl,l6496
	ld bc,#0500
.l6a52
	ld (hl),c
	inc hl
	djnz l6a52
	ld a,#3f
	jp l638e
.l6a5b
	ld a,i
	di
	ld a,#f3
	jp po,l6a65
	ld a,#fb
.l6a65
	ld (l6470),a
	ret

	ds #7000-$,0

.l7000
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#3a,#01,#26,#70,#2f,#70
	db #4e,#70,#67,#70,#80,#70,#95,#70
	db #a7,#70,#bb,#70,#da,#70,#ee,#70
	db #f6,#70,#01,#71,#38,#71,#00,#00
	db #00,#00,#00,#00,#0d,#28,#70,#01
	db #00,#25,#48,#0c,#25,#48,#18,#78
	db #0c,#38,#34,#70,#f4,#30,#2c,#2c
	db #68,#0c,#6c,#18,#70,#0c,#30,#2c
	db #68,#f4,#28,#0d,#40,#70,#02,#00
	db #a1,#4a,#24,#ff,#ff,#a1,#4a,#24
	db #ff,#ff,#a1,#4a,#24,#fe,#ff,#a1
	db #4a,#24,#ff,#ff,#0d,#50,#70,#01
	db #00,#3e,#09,#bc,#80,#ff,#bc,#a0
	db #ff,#bc,#80,#00,#b8,#c0,#00,#b4
	db #d0,#00,#b0,#e0,#00,#0d,#28,#70
	db #01,#00,#3e,#01,#36,#01,#2e,#01
	db #26,#01,#1e,#01,#16,#01,#0e,#01
	db #06,#01,#0d,#28,#70,#01,#00,#3e
	db #01,#3e,#21,#7e,#21,#02,#3a,#05
	db #36,#04,#32,#05,#0d,#28,#70,#01
	db #00,#34,#74,#0c,#74,#0c,#2c,#6c
	db #0c,#6c,#0c,#34,#60,#0c,#54,#0c
	db #0d,#28,#70,#01,#00,#7e,#2b,#0c
	db #7a,#2a,#0d,#76,#29,#10,#76,#28
	db #09,#32,#27,#6a,#26,#09,#62,#25
	db #0e,#1a,#24,#12,#23,#0e,#22,#0d
	db #28,#70,#01,#00,#30,#78,#0c,#34
	db #70,#0c,#34,#70,#0c,#2c,#64,#0c
	db #28,#64,#0c,#0d,#e3,#70,#06,#00
	db #21,#58,#18,#0d,#f0,#70,#07,#00
	db #05,#48,#25,#38,#0c,#18,#0d,#f8
	db #70,#01,#00,#25,#58,#18,#25,#58
	db #18,#25,#58,#18,#25,#58,#18,#25
	db #58,#0c,#25,#58,#0c,#25,#58,#18
	db #25,#58,#18,#25,#58,#0c,#25,#58
	db #0c,#25,#58,#18,#25,#58,#18,#74
	db #18,#74,#0c,#30,#30,#70,#0c,#2c
	db #6c,#0c,#6c,#18,#2c,#0d,#30,#71
	db #02,#00,#78,#0c,#34,#70,#0c,#2c
	db #24,#14,#0c,#0d,#28,#70,#40,#00
	db #00,#00,#cd,#71,#00,#cf,#71,#52
	db #72,#66,#72,#00,#cf,#71,#52,#72
	db #66,#72,#00,#38,#73,#70,#72,#c3
	db #73,#00,#38,#73,#70,#72,#c3,#73
	db #00,#c7,#78,#70,#72,#b4,#72,#00
	db #c7,#78,#70,#72,#b4,#72,#00,#cf
	db #71,#52,#72,#60,#74,#00,#cf,#71
	db #52,#72,#60,#74,#00,#38,#73,#1c
	db #75,#80,#74,#00,#38,#73,#1c,#75
	db #80,#74,#00,#a4,#76,#8f,#75,#0b
	db #76,#00,#a4,#76,#8f,#75,#0b,#76
	db #00,#3d,#78,#52,#72,#60,#74,#00
	db #3d,#78,#52,#72,#60,#74,#00,#2f
	db #77,#1c,#75,#b2,#77,#00,#2f,#77
	db #1c,#75,#b2,#77,#00,#2f,#77,#1c
	db #75,#b2,#77,#00,#2f,#77,#1c,#75
	db #b2,#77,#01,#4c,#71,#15,#00,#ba
	db #e1,#00,#00,#01,#42,#05,#42,#0b
	db #42,#07,#42,#01,#42,#05,#42,#0b
	db #42,#07,#42,#01,#42,#05,#42,#0b
	db #42,#19,#42,#01,#42,#05,#42,#0b
	db #42,#07,#42,#01,#42,#05,#42,#0b
	db #42,#19,#42,#01,#42,#05,#42,#0b
	db #42,#07,#42,#01,#42,#05,#42,#0b
	db #42,#19,#42,#01,#42,#05,#42,#0b
	db #42,#07,#c8,#41,#42,#05,#42,#0b
	db #42,#19,#42,#01,#42,#05,#42,#0b
	db #42,#07,#42,#01,#42,#05,#42,#0b
	db #42,#19,#42,#01,#42,#05,#42,#0b
	db #42,#07,#bc,#41,#42,#05,#42,#0b
	db #42,#19,#42,#01,#42,#05,#42,#0b
	db #42,#07,#42,#01,#42,#05,#42,#0b
	db #42,#19,#42,#01,#42,#05,#42,#0b
	db #42,#07,#98,#e0,#00,#00,#02,#0a
	db #71,#16,#59,#0a,#71,#0e,#59,#0a
	db #71,#16,#59,#0a,#71,#00,#8a,#e0
	db #00,#00,#01,#3e,#59,#1e,#4d,#00
	db #98,#e0,#00,#00,#02,#02,#71,#02
	db #59,#02,#71,#59,#02,#59,#71,#02
	db #59,#02,#71,#02,#59,#02,#71,#02
	db #59,#02,#71,#59,#02,#59,#71,#02
	db #59,#02,#71,#02,#59,#02,#71,#02
	db #59,#02,#71,#59,#02,#59,#71,#02
	db #59,#02,#71,#02,#59,#02,#71,#02
	db #59,#02,#71,#59,#02,#59,#71,#02
	db #59,#02,#71,#00,#72,#e0,#00,#00
	db #03,#02,#b4,#60,#04,#02,#a2,#60
	db #05,#02,#a2,#60,#06,#02,#8a,#60
	db #07,#02,#b4,#60,#04,#02,#a2,#60
	db #05,#02,#a2,#60,#06,#02,#72,#60
	db #03,#02,#b4,#60,#04,#02,#a2,#60
	db #05,#02,#a2,#60,#06,#02,#8a,#60
	db #07,#02,#b4,#60,#04,#02,#a2,#60
	db #05,#02,#a2,#60,#06,#02,#72,#60
	db #03,#02,#b4,#60,#04,#02,#a2,#60
	db #05,#02,#b0,#60,#06,#02,#8a,#60
	db #07,#02,#b4,#60,#04,#02,#a2,#60
	db #05,#02,#b0,#60,#06,#02,#72,#60
	db #03,#02,#b4,#60,#04,#02,#a2,#60
	db #05,#02,#a4,#60,#06,#02,#8a,#60
	db #07,#02,#ac,#60,#04,#75,#a2,#60
	db #05,#02,#a8,#60,#06,#b4,#60,#04
	db #ba,#e1,#00,#00,#01,#42,#05,#42
	db #0b,#42,#19,#42,#01,#42,#05,#ea
	db #61,#08,#42,#0b,#ba,#61,#01,#42
	db #05,#42,#0b,#42,#19,#42,#01,#42
	db #05,#42,#0b,#42,#19,#42,#01,#42
	db #05,#42,#0b,#42,#19,#42,#01,#42
	db #05,#ea,#61,#08,#42,#0b,#ba,#61
	db #01,#42,#05,#42,#0b,#42,#19,#42
	db #01,#42,#05,#42,#0b,#42,#19,#c8
	db #41,#42,#05,#42,#0b,#42,#19,#42
	db #01,#42,#05,#f8,#61,#08,#42,#0b
	db #c8,#61,#01,#42,#05,#42,#00,#42
	db #19,#42,#01,#42,#05,#42,#0b,#42
	db #19,#bc,#41,#42,#05,#42,#0b,#42
	db #19,#42,#01,#42,#05,#ec,#61,#08
	db #42,#0b,#bc,#61,#01,#42,#05,#42
	db #0b,#42,#19,#42,#01,#42,#05,#42
	db #0b,#42,#19,#72,#e0,#00,#00,#03
	db #02,#b4,#60,#04,#98,#60,#09,#a2
	db #60,#05,#02,#a2,#60,#06,#02,#8a
	db #60,#07,#f8,#60,#0a,#b4,#60,#04
	db #98,#60,#09,#a2,#60,#05,#02,#a2
	db #60,#06,#02,#72,#60,#03,#02,#b4
	db #60,#04,#98,#60,#09,#a2,#60,#05
	db #02,#a2,#60,#06,#02,#8a,#60,#07
	db #f8,#60,#0a,#b4,#60,#04,#98,#60
	db #09,#a2,#60,#05,#02,#a2,#60,#06
	db #02,#72,#60,#03,#02,#b4,#60,#04
	db #98,#60,#09,#a2,#60,#05,#02,#b0
	db #60,#06,#02,#8a,#60,#07,#f8,#60
	db #0a,#b4,#60,#04,#98,#60,#09,#a2
	db #60,#05,#02,#b0,#60,#06,#02,#72
	db #60,#03,#42,#00,#b4,#60,#04,#98
	db #60,#09,#a2,#60,#05,#02,#a4,#60
	db #06,#02,#8a,#60,#07,#f8,#60,#0a
	db #ac,#60,#04,#9a,#60,#09,#a2,#60
	db #05,#02,#a8,#60,#06,#b4,#60,#04
	db #72,#e0,#00,#00,#03,#02,#b4,#60
	db #04,#98,#60,#09,#8a,#60,#01,#36
	db #72,#60,#03,#02,#b4,#60,#04,#98
	db #60,#09,#98,#60,#01,#16,#4d,#00
	db #72,#e0,#00,#00,#03,#02,#b4,#60
	db #04,#98,#60,#09,#a2,#60,#05,#02
	db #ba,#60,#06,#02,#8a,#60,#07,#f8
	db #60,#0a,#b4,#60,#04,#98,#60,#09
	db #a2,#60,#05,#02,#ba,#60,#06,#02
	db #72,#60,#03,#02,#b4,#60,#04,#98
	db #60,#09,#a2,#60,#05,#02,#ba,#60
	db #06,#02,#8a,#60,#07,#f8,#60,#0a
	db #b4,#60,#04,#98,#60,#09,#a2,#60
	db #05,#02,#ba,#60,#06,#02,#72,#60
	db #03,#02,#b4,#60,#04,#98,#60,#09
	db #a2,#60,#05,#02,#c8,#60,#06,#02
	db #8a,#60,#07,#f8,#60,#0a,#b4,#60
	db #04,#98,#60,#09,#a2,#60,#05,#02
	db #c8,#60,#06,#02,#72,#60,#03,#42
	db #00,#b4,#60,#04,#98,#60,#09,#a2
	db #60,#05,#02,#bc,#60,#06,#02,#8a
	db #60,#07,#f8,#60,#0a,#ac,#60,#04
	db #9a,#60,#09,#a2,#60,#05,#02,#c0
	db #60,#06,#42,#00,#b0,#ff,#00,#00
	db #0b,#02,#b0,#60,#02,#42,#80,#02
	db #00,#98,#c0,#00,#00,#02,#71,#59
	db #02,#59,#71,#02,#59,#02,#b0,#60
	db #0b,#02,#98,#60,#02,#02,#71,#42
	db #80,#02,#00,#98,#c0,#00,#00,#02
	db #71,#59,#02,#59,#71,#02,#59,#02
	db #71,#02,#b0,#60,#0b,#02,#b0,#60
	db #02,#42,#80,#02,#00,#98,#c0,#00
	db #00,#02,#71,#59,#02,#59,#71,#02
	db #59,#02,#b0,#60,#0b,#02,#98,#60
	db #02,#02,#71,#42,#80,#02,#00,#98
	db #c0,#00,#00,#02,#71,#59,#02,#59
	db #71,#02,#59,#42,#80,#02,#00,#b0
	db #c0,#00,#00,#42,#80,#02,#00,#b0
	db #e0,#00,#00,#0b,#02,#b0,#60,#02
	db #42,#80,#02,#00,#98,#c0,#00,#00
	db #02,#71,#59,#42,#80,#01,#00,#42
	db #00,#42,#00,#42,#00,#98,#c0,#00
	db #00,#02,#b0,#60,#0b,#02,#98,#60
	db #02,#02,#71,#42,#80,#02,#00,#98
	db #c0,#00,#00,#02,#71,#59,#02,#59
	db #71,#02,#59,#02,#71,#02,#b0,#60
	db #0b,#02,#b0,#60,#02,#42,#80,#02
	db #00,#98,#c0,#00,#00,#02,#71,#59
	db #02,#59,#71,#02,#59,#02,#b0,#60
	db #0b,#02,#98,#60,#02,#02,#71,#42
	db #80,#02,#00,#98,#c0,#00,#00,#02
	db #71,#59,#02,#59,#71,#02,#59,#42
	db #80,#02,#00,#b0,#c0,#00,#00,#42
	db #80,#02,#00,#72,#e0,#00,#00,#03
	db #02,#b4,#60,#04,#98,#60,#09,#a2
	db #60,#05,#02,#ba,#60,#06,#02,#42
	db #00,#42,#00,#42,#00,#98,#60,#09
	db #72,#60,#03,#02,#ba,#60,#06,#02
	db #8a,#60,#07,#02,#b4,#60,#04,#98
	db #60,#09,#a2,#60,#05,#02,#ba,#60
	db #06,#02,#8a,#60,#07,#f8,#60,#0a
	db #b4,#60,#04,#98,#60,#09,#a2,#60
	db #05,#02,#ba,#60,#06,#02,#72,#60
	db #03,#02,#b4,#60,#04,#98,#60,#09
	db #a2,#60,#05,#02,#c8,#60,#06,#02
	db #8a,#60,#07,#f8,#60,#0a,#b4,#60
	db #04,#98,#60,#09,#a2,#60,#05,#02
	db #c8,#60,#06,#02,#72,#60,#03,#42
	db #00,#b4,#60,#04,#98,#60,#09,#a2
	db #60,#05,#02,#bc,#60,#06,#02,#8a
	db #60,#07,#f8,#60,#0a,#ac,#60,#04
	db #9a,#60,#09,#72,#60,#03,#02,#c0
	db #60,#06,#42,#00,#ba,#e1,#00,#00
	db #01,#42,#05,#42,#0b,#42,#19,#42
	db #01,#42,#05,#ea,#61,#08,#42,#19
	db #42,#1b,#42,#1f,#42,#00,#42,#00
	db #ba,#61,#01,#42,#05,#42,#0b,#42
	db #19,#42,#01,#42,#05,#42,#0b,#42
	db #19,#42,#01,#42,#05,#ea,#61,#08
	db #42,#0b,#ba,#61,#01,#42,#05,#42
	db #0b,#42,#19,#42,#01,#42,#05,#42
	db #0b,#42,#19,#c8,#41,#42,#05,#42
	db #0b,#42,#19,#42,#01,#42,#05,#f8
	db #61,#08,#42,#0b,#c8,#61,#01,#42
	db #05,#42,#00,#42,#19,#42,#01,#42
	db #05,#42,#0b,#42,#19,#bc,#41,#42
	db #05,#42,#0b,#42,#19,#42,#01,#42
	db #05,#ec,#61,#08,#42,#0b,#bc,#61
	db #01,#42,#05,#42,#0b,#42,#19,#42
	db #01,#42,#05,#42,#0b,#42,#19,#ba
	db #e5,#00,#00,#0c,#d2,#4b,#ba,#45
	db #42,#0b,#ea,#45,#d2,#4b,#ba,#45
	db #42,#0b,#42,#05,#42,#0b,#ba,#45
	db #42,#0b,#ea,#45,#d2,#4b,#ba,#45
	db #42,#0b,#ba,#45,#d2,#4b,#ba,#45
	db #42,#0b,#ea,#45,#d2,#4b,#ba,#45
	db #42,#0b,#42,#05,#42,#0b,#ba,#45
	db #42,#0b,#ea,#45,#d2,#4b,#ba,#45
	db #42,#0b,#ba,#45,#d2,#4b,#ba,#45
	db #42,#0b,#ea,#45,#d2,#4b,#ba,#45
	db #42,#0b,#42,#05,#42,#0b,#ba,#45
	db #42,#0b,#ea,#45,#d2,#4b,#ba,#45
	db #42,#0b,#ba,#45,#d2,#4b,#ba,#45
	db #42,#0b,#ea,#45,#d2,#4b,#ba,#45
	db #42,#0b,#42,#05,#42,#0b,#ba,#45
	db #42,#0b,#ea,#45,#d2,#4b,#ba,#45
	db #42,#0b,#72,#e0,#00,#00,#03,#02
	db #b4,#60,#04,#98,#60,#09,#8a,#60
	db #01,#02,#8a,#60,#07,#02,#b4,#60
	db #04,#98,#60,#09,#8a,#60,#01,#02
	db #8a,#60,#07,#02,#72,#60,#03,#02
	db #33,#02,#b4,#60,#04,#98,#60,#09
	db #8a,#60,#01,#02,#8a,#60,#07,#02
	db #b4,#60,#04,#98,#60,#09,#8a,#60
	db #01,#02,#8a,#60,#07,#02,#4b,#02
	db #72,#60,#03,#02,#b4,#60,#04,#98
	db #60,#09,#8a,#60,#01,#02,#8a,#60
	db #07,#02,#b4,#60,#04,#98,#60,#09
	db #8a,#60,#01,#02,#8a,#60,#07,#02
	db #72,#60,#03,#02,#33,#02,#b4,#60
	db #04,#98,#60,#09,#8a,#60,#01,#02
	db #8a,#60,#07,#02,#b4,#60,#04,#98
	db #60,#09,#8a,#60,#01,#02,#72,#60
	db #03,#02,#42,#00,#00,#ba,#e1,#00
	db #00,#01,#42,#05,#42,#0b,#42,#19
	db #ea,#65,#0c,#d2,#4b,#ba,#45,#42
	db #0b,#42,#05,#42,#0b,#ba,#45,#42
	db #0b,#ea,#45,#d2,#4b,#ba,#45,#42
	db #0b,#ba,#61,#01,#42,#05,#42,#0b
	db #42,#19,#ea,#65,#0c,#d2,#4b,#ba
	db #45,#42,#0b,#42,#05,#42,#0b,#ba
	db #45,#42,#0b,#ea,#45,#d2,#4b,#ba
	db #45,#42,#0b,#c8,#61,#01,#42,#05
	db #42,#0b,#42,#19,#ea,#65,#0c,#d2
	db #4b,#ba,#45,#42,#0b,#42,#05,#42
	db #0b,#ba,#45,#42,#0b,#ea,#45,#d2
	db #4b,#ba,#45,#42,#0b,#bc,#61,#01
	db #42,#05,#42,#0b,#42,#19,#ea,#65
	db #0c,#d2,#4b,#ba,#45,#42,#0b,#42
	db #05,#42,#0b,#ba,#45,#42,#0b,#ea
	db #45,#d2,#4b,#ba,#45,#42,#0b,#ba
	db #e1,#00,#00,#01,#42,#05,#42,#0b
	db #42,#19,#ea,#65,#0c,#d2,#4b,#ba
	db #45,#42,#0b,#42,#05,#42,#0b,#ba
	db #65,#01,#42,#0b,#42,#05,#42,#0b
	db #42,#05,#42,#0b,#ba,#41,#42,#05
	db #42,#0b,#42,#19,#ea,#65,#0c,#d2
	db #4b,#ba,#45,#42,#0b,#42,#05,#42
	db #0b,#ba,#45,#42,#0b,#42,#05,#42
	db #0b,#42,#05,#42,#0b,#c8,#61,#01
	db #42,#05,#42,#0b,#42,#19,#ea,#65
	db #0c,#d2,#4b,#ba,#45,#42,#0b,#42
	db #05,#42,#0b,#c8,#65,#01,#42,#0b
	db #42,#05,#42,#0b,#42,#05,#42,#0b
	db #bc,#41,#42,#05,#42,#0b,#42,#19
	db #ea,#65,#0c,#d2,#4b,#ba,#45,#42
	db #0b,#42,#05,#42,#0b,#bc,#65,#01
	db #42,#0b,#42,#05,#42,#0b,#42,#05
	db #42,#0b,#00,#00
;
; #1c0b
; ld de,#7000
; call #6000
;
.init_music
;
	ld de,l7000
	jp real_init_music
;
.music_info
	db "FOReVER 2013 - Mind In Motion (2013)(Software Failure)(Ham)",0
	db "StArkos",0

	read "music_end.asm"
