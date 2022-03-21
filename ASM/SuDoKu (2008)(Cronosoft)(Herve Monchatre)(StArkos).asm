; Music of SuDoKu (2008)(Cronosoft)(Herve Monchatre)(StArkos)
; Ripped by Megachur the 13/12/2013
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SUDOKU.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 13
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2013
music_adr				equ #501b
FIRST_THEME				equ 0
LAST_THEME				equ 4

	read "music_header.asm"

	jp l58a5
	jp l5028
	jp l5880
.l5027 equ $ + 3
.l5026 equ $ + 2
	db #00,#80,#00,#00
;
.play_music
.l5028
;
	xor a
	ld (l5026),a
	ld (l585e),a
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
.l5038 equ $ + 1
	ld a,#00
.l503a equ $ + 1
	cp #00
	jr z,l5044
	inc a
	ld (l5038),a
	jp l52d3
.l5044
	xor a
	ld (l5038),a
.l5048
	or a
	jp nc,l512a
	ld (l5152),a
	ld (l51bd),a
	ld (l5228),a
	ld a,#b7
	ld (l5048),a
.l505b equ $ + 1
	ld a,#00
	sub #01
	jr nc,l5091
.l5061 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l508e
	ld b,a
	and #1f
	bit 4,a
	jr z,l5072
	or #e0
.l5072
	ld (l515f),a
	rl b
	rl b
	jr nc,l5080
	ld a,(hl)
	ld (l51ca),a
	inc hl
.l5080
	rl b
	jr nc,l5089
	ld a,(hl)
	ld (l5235),a
	inc hl
.l5089
	ld (l5061),hl
	jr l5094
.l508e
	ld (l5061),hl
.l5091
	ld (l505b),a
.l5095 equ $ + 1
.l5094
	ld a,#00
	sub #01
	jr c,l50a1
	ld (l5095),a
.l509e equ $ + 1
	ld a,#00
	jr l50bc
.l50a2 equ $ + 1
.l50a1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l50af
	ld (l50a2),hl
	jr l50bc
.l50af
	ld (l509e),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l50a2),hl
	ld (l5095),a
	ld a,b
.l50bc
	ld (l5293),a
.l50c0 equ $ + 1
	ld hl,#0000
	ld de,l5158
	ldi
	ldi
	ld de,l51c3
	ldi
	ldi
	ld de,l522e
	ldi
	ldi
	ld (l50c0),hl
.l50db equ $ + 1
	ld a,#00
	or a
	jr nz,l50ed
.l50e0 equ $ + 1
	ld a,#00
	sub #01
	jr c,l50fb
	ld (l50e0),a
.l50e9 equ $ + 1
	ld hl,#0000
	jr l5133
.l50ee equ $ + 1
.l50ed
	ld a,#00
	sub #01
	jr c,l50fb
	ld (l50ee),a
	ld hl,(l50fc)
	jr l5120
.l50fc equ $ + 1
.l50fb
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l5118
	ld (l50e0),a		; reset music
	xor a
	ld (l50db),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l50fc),hl
	ex de,hl
	ld (l50e9),hl
	jr l5133
.l5118
	ld (l50ee),a
	ld a,#01
	ld (l50db),a
.l5120
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l50fc),hl
	ex de,hl
	jr l5133
.l512b equ $ + 1
.l512a
	ld a,#00
	sub #01
	jr nc,l514e
.l5131 equ $ + 1
	ld hl,#0000
.l5133
	ld a,(hl)
	inc hl
	srl a
	jr c,l514b
	srl a
	jr c,l5142
	ld (l503a),a
	jr l514a
.l5142
	ld (l5026),a
.l5146 equ $ + 1
	ld a,#01
	ld (l5027),a
.l514a
	xor a
.l514b
	ld (l5131),hl
.l514e
	ld (l512b),a
.l5152 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l51b9
.l5158 equ $ + 1
	ld hl,#0000
.l515b equ $ + 1
	ld bc,#0100
.l515f equ $ + 2
.l515e equ $ + 1
	ld de,#0000
.l5162 equ $ + 2
	ld lx,#00
	call l53d0
	ld a,lx
	ld (l5162),a
	ld (l52dd),hl
	exx
	ld (l5158),hl
	ld a,c
	ld (l515b),a
	ld (l52d7),a
	xor a
	or hy
	jr nz,l51b7
	ld (l52fa),a
	ld d,a
	ld a,e
	ld (l515e),a
	ld l,d
	ld h,l
	ld (l52da),hl
.l518c equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l530b
	ldi
	ldi
	ld de,l5303
	ldi
	ldi
	ld de,l52fc
	ldi
	ld de,l530d
	ldi
	ld a,(hl)
	inc hl
	ld (l52ec),hl
	ld hl,l585e
	or (hl)
	ld (hl),a
.l51b7
	ld a,ly
.l51b9
	ld (l5152),a
.l51bd equ $ + 1
	ld a,#00
	sub #01
	jr nc,l5224
.l51c3 equ $ + 1
	ld hl,#0000
.l51c6 equ $ + 1
	ld bc,#0200
.l51ca equ $ + 2
.l51c9 equ $ + 1
	ld de,#0000
.l51cd equ $ + 2
	ld lx,#00
	call l53d0
	ld a,lx
	ld (l51cd),a
	ld (l532e),hl
	exx
	ld (l51c3),hl
	ld a,c
	ld (l51c6),a
	ld (l5328),a
	xor a
	or hy
	jr nz,l5222
	ld (l534b),a
	ld d,a
	ld a,e
	ld (l51c9),a
	ld l,d
	ld h,l
	ld (l532b),hl
.l51f7 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l535c
	ldi
	ldi
	ld de,l5354
	ldi
	ldi
	ld de,l534d
	ldi
	ld de,l535e
	ldi
	ld a,(hl)
	inc hl
	ld (l533d),hl
	ld hl,l585e
	or (hl)
	ld (hl),a
.l5222
	ld a,ly
.l5224
	ld (l51bd),a
.l5228 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l528f
.l522e equ $ + 1
	ld hl,#0000
.l5231 equ $ + 1
	ld bc,#0300
.l5235 equ $ + 2
.l5234 equ $ + 1
	ld de,#0000
.l5238 equ $ + 2
	ld lx,#00
	call l53d0
	ld a,lx
	ld (l5238),a
	ld (l537f),hl
	exx
	ld (l522e),hl
	ld a,c
	ld (l5231),a
	ld (l5379),a
	xor a
	or hy
	jr nz,l528d
	ld (l539c),a
	ld d,a
	ld a,e
	ld (l5234),a
	ld l,d
	ld h,l
	ld (l537c),hl
.l5262 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l53ad
	ldi
	ldi
	ld de,l53a5
	ldi
	ldi
	ld de,l539e
	ldi
	ld de,l53af
	ldi
	ld a,(hl)
	inc hl
	ld (l538e),hl
	ld hl,l585e
	or (hl)
	ld (hl),a
.l528d
	ld a,ly
.l528f
	ld (l5228),a
.l5293 equ $ + 1
	ld a,#00
	sub #01
	jr c,l529d
	ld (l5293),a
	jr l52d3
.l529d
	ld a,#37
	ld (l5048),a
	ld hl,(l50c0)
.l52a6 equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l52d3
	ld (l505b),a
	ld (l5095),a
	ld (l512b),a
.l52b7 equ $ + 1
	ld hl,#0000
	ld (l5061),hl
.l52bd equ $ + 1
	ld hl,#0000
	ld (l50a2),hl
.l52c3 equ $ + 1
	ld hl,#0000
	ld (l50c0),hl
.l52c9 equ $ + 1
	ld hl,#0000
	ld (l50fc),hl
.l52cf equ $ + 1
	ld a,#00
	ld (l50db),a
.l52d3
	ld hl,l585e
.l52d7 equ $ + 1
	ld d,#00
	exx
.l52da equ $ + 1
	ld hl,#0000
.l52dd equ $ + 1
	ld de,#0000
	add hl,de
	ld (l52da),hl
	ld (l550b),hl
	ld a,(l5162)
	ld lx,a
.l52ec equ $ + 1
	ld hl,#0000
	ld iy,l56f9
	ld a,(l52fa)
	call l5465
	ex de,hl
.l52fa equ $ + 1
	ld a,#00
.l52fc equ $ + 1
	cp #00
	jr z,l5302
	inc a
	jr l531f
.l5303 equ $ + 1
.l5302
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l531b
.l530b equ $ + 1
	ld de,#0000
.l530d
	or a
	jr c,l531b
.l5311 equ $ + 1
	ld hl,#0000
	ld (l5303),hl
	dec a
	ld (l52fc),a
	inc a
.l531b
	ld (l52ec),de
.l531f
	ld (l52fa),a
	ld a,hx
	ld (l53cc),a
.l5328 equ $ + 1
	ld d,#00
	exx
.l532b equ $ + 1
	ld hl,#0000
.l532e equ $ + 1
	ld de,#0000
	add hl,de
	ld (l532b),hl
	ld (l550b),hl
	ld a,(l51cd)
	ld lx,a
.l533d equ $ + 1
	ld hl,#0000
	ld iy,l574a
	ld a,(l534b)
	call l5465
	ex de,hl
.l534b equ $ + 1
	ld a,#00
.l534d equ $ + 1
	cp #00
	jr z,l5353
	inc a
	jr l5370
.l5354 equ $ + 1
.l5353
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l536c
.l535c equ $ + 1
	ld de,#0000
.l535e
	or a
	jr c,l536c
.l5362 equ $ + 1
	ld hl,#0000
	ld (l5354),hl
	dec a
	ld (l534d),a
	inc a
.l536c
	ld (l533d),de
.l5370
	ld (l534b),a
	ld a,hx
	ld (l53c9),a
.l5379 equ $ + 1
	ld d,#00
	exx
.l537c equ $ + 1
	ld hl,#0000
.l537f equ $ + 1
	ld de,#0000
	add hl,de
	ld (l537c),hl
	ld (l550b),hl
	ld a,(l5238)
	ld lx,a
.l538e equ $ + 1
	ld hl,#0000
	ld iy,l579b
	ld a,(l539c)
	call l5465
	ex de,hl
.l539c equ $ + 1
	ld a,#00
.l539e equ $ + 1
	cp #00
	jr z,l53a4
	inc a
	jr l53c1
.l53a5 equ $ + 1
.l53a4
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l53bd
.l53ad equ $ + 1
	ld de,#0000
.l53af
	or a
	jr c,l53bd
.l53b3 equ $ + 1
	ld hl,#0000
	ld (l53a5),hl
	dec a
	ld (l539e),a
	inc a
.l53bd
	ld (l538e),de
.l53c1
	ld (l539c),a
	ld a,hx
	sla a
.l53c9 equ $ + 1
	or #00
	rla
.l53cc equ $ + 1
	or #00
	jp l56ee
.l53d0
	ld a,(hl)
	inc hl
	srl a
	jr c,l5409
	cp #60
	jr nc,l5411
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l53e9
	and #0f
	ld c,a
.l53e9
	rl b
	jr nc,l53ef
	ld e,(hl)
	inc hl
.l53ef
	rl b
	jr nc,l5401
.l53f3
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l53fd
	dec h
.l53fd
	ld ly,#00
	ret
.l5401
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l5409
	ld hy,#00
	add d
	ld lx,a
	jr l5401
.l5411
	ld hy,#01
	sub #60
	jr z,l5432
	dec a
	jr z,l5449
	dec a
	jr z,l543b
	dec a
	jr z,l53f3
	dec a
	jr z,l5445
	dec a
	jr z,l545a
	dec a
	jr z,l5451
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l5432
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l543b
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l5445
	ld c,(hl)
	inc hl
	jr l53f3
.l5449
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l5451
	ld a,(hl)
	inc hl
	ld (l5026),a
	ld a,b
	ld (l5027),a
.l545a
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l5465
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l551b
	bit 4,e
	jr z,l54cd
	ld a,(hl)
	bit 6,a
	jr z,l549a
	ld d,#08
	inc hl
	and #1f
	jr z,l5481
	ld (l57ec),a
	res 3,d
.l5481
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l548a
	xor a
.l548a
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l549a
	ld (l57ec),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l54b6
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l54af
	xor a
.l54af
	ld (iy+#36),a
	ld hx,d
	jr l54e0
.l54b6
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l54bf
	xor a
.l54bf
	ld (iy+#36),a
.l54c2
	ld hx,d
	ret
.l54c5
	ld (iy+#36),#00
	ld d,#09
	jr l54c2
.l54cd
	ld d,#08
	ld a,e
	and #0f
	jr z,l54c5
	exx
	sub d
	exx
	jr nc,l54da
	xor a
.l54da
	ld (iy+#36),a
	ld hx,#08
.l54e0
	bit 5,e
	jr z,l54e8
	ld a,(hl)
	inc hl
	jr l54e9
.l54e8
	xor a
.l54e9
	bit 6,e
	jr z,l54f3
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l54f6
.l54f3
	ld de,#0000
.l54f6
	add lx
	cp #60
	jr c,l54fe
	ld a,#60
.l54fe
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l562e
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l550b equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l551b
	or a
	jr nz,l5525
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l5525
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
	ld (l5857),a
	bit 3,e
	jr z,l5547
	ld a,(hl)
	inc hl
	ld (l57ec),a
	res 3,d
	jr l5547
.l5547
	ld hx,d
	xor a
	bit 7,b
	jr z,l5559
	bit 6,b
	jr z,l5554
	ld a,(hl)
	inc hl
.l5554
	ld (l5608),a
	ld a,#01
.l5559
	ld (l55a1),a
	ld a,b
	rra
	and #0e
	ld (l55b2),a
	bit 4,e
	jp nz,l5613
	bit 1,e
	jr z,l5570
	ld a,(hl)
	inc hl
	jr l5571
.l5570
	xor a
.l5571
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l557e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l5581
.l557e
	ld de,#0000
.l5581
	add lx
	cp #60
	jr c,l5589
	ld a,#60
.l5589
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l562e
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l550b)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l55a1 equ $ + 1
	ld a,#00
	or a
	jr nz,l55b1
	ex af,af'
	bit 5,a
	jr nz,l561c
.l55aa
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l55b2 equ $ + 1
.l55b1
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l55bc),a
	ld a,c
.l55bc equ $ + 1
	jr l55bd
.l55bd
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
	jr nc,l55d6
	inc bc
.l55d6
	ld a,c
	ld (l5821),a
	ld a,b
	ld (l583c),a
	ld a,(l55a1)
	or a
	jr z,l5611
	ld a,(l55b2)
	ld e,a
	srl a
	add e
	ld (l55f0),a
	ld a,b
.l55f0 equ $ + 1
	jr l55f1
.l55f1
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
.l5608 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l5611
	pop hl
	ret
.l5613
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l55aa
.l561c
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l5821),a
	inc hl
	ld a,(hl)
	ld (l583c),a
	inc hl
	ret
.l562e
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
.l56ee
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l56f9 equ $ + 1
	ld a,#00
.l56fb equ $ + 1
	cp #00
	jr z,l5713
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
	ld (l56fb),a
	exx
.l5713
	ld a,#00
.l5716 equ $ + 1
	cp #00
	jr z,l572e
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
	ld (l5716),a
	exx
.l572f equ $ + 1
.l572e
	ld a,#00
.l5731 equ $ + 1
	cp #00
	jr z,l5749
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
	ld (l5731),a
	exx
.l574a equ $ + 1
.l5749
	ld a,#00
.l574c equ $ + 1
	cp #00
	jr z,l5764
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
	ld (l574c),a
	exx
.l5764
	ld a,#00
.l5767 equ $ + 1
	cp #00
	jr z,l577f
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
	ld (l5767),a
	exx
.l5780 equ $ + 1
.l577f
	ld a,#00
.l5782 equ $ + 1
	cp #00
	jr z,l579a
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
	ld (l5782),a
	exx
.l579b equ $ + 1
.l579a
	ld a,#00
.l579d equ $ + 1
	cp #00
	jr z,l57b5
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
	ld (l579d),a
	exx
.l57b5
	ld a,#00
.l57b8 equ $ + 1
	cp #00
	jr z,l57d0
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
	ld (l57b8),a
	exx
.l57d1 equ $ + 1
.l57d0
	ld a,#00
.l57d3 equ $ + 1
	cp #00
	jr z,l57eb
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
	ld (l57d3),a
	exx
.l57ec equ $ + 1
.l57eb
	ld a,#00
.l57ee equ $ + 1
	cp #00
	jr z,l5806
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
	ld (l57ee),a
	exx
.l5806
	ld a,h
.l5808 equ $ + 1
	cp #c0
	jr z,l5820
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
	ld (l5808),a
	exx
.l5821 equ $ + 1
.l5820
	ld a,#00
.l5823 equ $ + 1
	cp #00
	jr z,l583b
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
	ld (l5823),a
	exx
.l583c equ $ + 1
.l583b
	ld a,#00
.l583e equ $ + 1
	cp #00
	jr z,l5856
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
	ld (l583e),a
	exx
.l5857 equ $ + 1
.l5856
	ld a,#00
.l5859 equ $ + 1
	cp #ff
	jr nz,l5863
	ld h,a
.l585e equ $ + 1
	ld a,#00
	or a
	jr z,l5877
	ld a,h
.l5863
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
	ld (l5859),a
.l5877
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
	ret
;
.stop_music
.l5880
;
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l572f),a
	ld (l5780),a
	ld (l57d1),a
	dec a
	ld (l5731),a
	ld (l5782),a
	ld (l57d3),a
	ld (l5808),a
	ld a,#3f
	jp l56ee
;
.real_init_music
.l58a5
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l5146),a
	ld de,#0003
	add hl,de
	ld de,l50a2
	ldi
	ldi
	ld de,l50c0
	ldi
	ldi
	ld de,l50fc
	ldi
	ldi
	ld de,l518c
	ldi
	ldi
	ld de,l52b7
	ldi
	ldi
	ld de,l52bd
	ldi
	ldi
	ld de,l52c3
	ldi
	ldi
	ld de,l52c9
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l503a),a
	ld (l5038),a
	ld (l5061),hl
	ld hl,(l50fc)
	ld (l52a6),hl
	ld a,(hl)
	and #01
	ld (l50db),a
	ld hl,(l52c9)
	ld a,(hl)
	and #01
	ld (l52cf),a
	ld hl,(l518c)
	ld (l51f7),hl
	ld (l5262),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l52ec),hl
	ld (l533d),hl
	ld (l538e),hl
	ld (l530b),hl
	ld (l535c),hl
	ld (l53ad),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l5311),de
	ld (l5362),de
	ld (l53b3),de
	ld (l5303),de
	ld (l5354),de
	ld (l53a5),de
	ld a,#37
	ld (l5048),a
	ld hl,l5961
.l5951
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l5958
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l5958
	jr l5951
.l5961
	jr l5963
.l5963
	db #f9,#56,#14,#57,#4a,#57,#65,#57
	db #9b,#57,#b6,#57,#ec,#57,#2f,#57
	db #80,#57,#d1,#57,#21,#58,#3c,#58
	db #57,#58,#5b,#50,#95,#50,#e0,#50
	db #ee,#50,#2b,#51,#fa,#52,#4b,#53
	db #9c,#53,#5b,#51,#c6,#51,#31,#52
	db #11,#ff,#fb,#56,#16,#57,#4c,#57
	db #67,#57,#9d,#57,#b8,#57,#ee,#57
	db #08,#58,#31,#57,#82,#57,#d3,#57
	db #23,#58,#3e,#58,#59,#58,#fc,#52
	db #4d,#53,#9e,#53,#03,#b7,#0d,#53
	db #5e,#53,#af,#53,#00
.l59c0
	ld b,#f4
	out (c),a
	ld bc,#f6c0
	out (c),c
	db #ed,#71 ; out (c),0
	ld b,#f5
	outi
	ld bc,#f680
	out (c),c
	db #ed,#71 ; out (c),0
	ret
	ld hl,#59e7
	ld d,#00
.l59dc
	ld a,d
	call l59c0
	inc d
	ld a,d
	cp #0e
	jr nz,l59dc
	ret

	ds #5adc-$,#00

.l5adc
	db #53,#4b,#31,#30,#dc,#5a,#01,#32
	db #00,#00,#5b,#03,#5b,#51,#5b,#57
	db #5b,#f9,#5a,#01,#5b,#09,#5b,#54
	db #5b,#03,#c0,#00,#00,#c0,#00,#00
	db #0f,#18,#28,#00,#7e,#7f,#0b,#a0
	db #5b,#a1,#5b,#d5,#5b,#d5,#5b,#d6
	db #5b,#37,#5c,#a0,#5b,#d6,#5b,#42
	db #5c,#4e,#5c,#d6,#5b,#37,#5c,#64
	db #5c,#d6,#5b,#42,#5c,#4e,#5c,#d6
	db #5b,#7a,#5c,#86,#5c,#d6,#5b,#9a
	db #5c,#a8,#5c,#d6,#5b,#42,#5c,#e2
	db #5c,#d6,#5b,#37,#5c,#24,#5d,#d6
	db #5b,#42,#5c,#3e,#5d,#d6,#5b,#37
	db #5c,#24,#5d,#d6,#5b,#42,#5c,#4c
	db #5d,#d6,#5b,#6f,#5d,#00,#7b,#5d
	db #16,#7b,#5d,#5f,#5b,#69,#5b,#7a
	db #5b,#90,#5b,#66,#5b,#69,#5b,#ff
	db #37,#00,#00,#00,#00,#76,#5b,#7a
	db #5b,#00,#37,#00,#0c,#0c,#0c,#0b
	db #0a,#07,#05,#00,#04,#00,#8a,#5b
	db #90,#5b,#03,#37,#00,#0c,#2c,#0c
	db #08,#28,#0c,#0b,#2b,#0c,#09,#29
	db #0c,#08,#28,#0c,#9d,#5b,#a0,#5b
	db #00,#37,#00,#0c,#2c,#0c,#0b,#2a
	db #0c,#07,#27,#0c,#c2,#7e,#81,#01
	db #ce,#82,#0b,#ce,#8c,#01,#ce,#7e
	db #0b,#ce,#92,#01,#ce,#8c,#0b,#ce
	db #88,#01,#ce,#92,#0b,#ce,#96,#01
	db #ce,#88,#0b,#ce,#92,#01,#ce,#96
	db #0b,#ce,#88,#01,#ce,#92,#0b,#ce
	db #8c,#01,#ce,#88,#0b,#ce,#8c,#01
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
	db #88,#0b,#c2,#1e,#80,#02,#c0,#1a
	db #37,#d2,#3d,#fa,#3d,#c2,#40,#80
	db #02,#c0,#1a,#41,#d2,#33,#c0,#1a
	db #33,#c2,#7a,#80,#03,#da,#7f,#d2
	db #85,#da,#89,#da,#8d,#d2,#93,#da
	db #8d,#d2,#89,#d2,#85,#da,#7f,#c2
	db #7a,#80,#03,#da,#7f,#d2,#85,#da
	db #89,#da,#97,#d2,#93,#da,#8d,#d2
	db #89,#d2,#8d,#da,#7b,#c2,#1e,#80
	db #02,#c0,#1a,#37,#d2,#2d,#c0,#1a
	db #45,#c2,#7a,#80,#03,#da,#7f,#d2
	db #85,#da,#89,#da,#8d,#d2,#89,#ce
	db #8d,#ce,#89,#d2,#89,#c2,#2e,#80
	db #02,#c0,#1a,#47,#d2,#33,#c0,#1a
	db #32,#80,#03,#c2,#8c,#80,#03,#ce
	db #89,#ce,#85,#d2,#7b,#ce,#7f,#ce
	db #85,#d2,#8d,#ce,#89,#ce,#85,#d2
	db #7b,#ce,#7f,#ce,#85,#d2,#8d,#ce
	db #89,#ce,#85,#ce,#7f,#ce,#7b,#ce
	db #7f,#ce,#85,#ce,#89,#ce,#8d,#ce
	db #89,#ce,#85,#ce,#7f,#ce,#7b,#ce
	db #7f,#ce,#85,#ce,#89,#c2,#92,#80
	db #03,#ce,#8d,#ce,#89,#ce,#85,#ce
	db #7f,#ce,#85,#ce,#89,#ce,#8d,#ce
	db #93,#ce,#8d,#ce,#89,#ce,#7f,#ce
	db #7b,#ce,#7f,#ce,#85,#ce,#89,#ce
	db #97,#ce,#93,#ce,#8d,#ce,#89,#ce
	db #85,#ce,#89,#ce,#8d,#ce,#93,#ce
	db #97,#ce,#93,#ce,#8d,#ce,#85,#ce
	db #7f,#ce,#7b,#ce,#7f,#ce,#85,#c2
	db #a0,#80,#03,#da,#a1,#ce,#a5,#ce
	db #a1,#d2,#a1,#d2,#a5,#d2,#a1,#d2
	db #a5,#d2,#a1,#f2,#a5,#d2,#ab,#d2
	db #af,#c2,#84,#80,#03,#f2,#7b,#d2
	db #7f,#ce,#85,#ce,#89,#d2,#8d,#c2
	db #7e,#80,#03,#fa,#7b,#ce,#75,#ce
	db #71,#d2,#75,#ea,#c4,#01,#ce,#c4
	db #02,#ce,#c4,#03,#ce,#c4,#04,#ce
	db #c4,#05,#ce,#c4,#06,#ce,#ca,#ce
	db #c4,#00,#c2,#2e,#80,#02,#c0,#1a
	db #47,#d2,#37,#c0,#1a,#41,#c2,#ff

	ds #5d7c-$,#00

.l5d7c
	db #53,#4b,#31,#30,#7c,#5d,#01,#32
	db #00,#a9,#5d,#b0,#5d,#06,#5f,#09
	db #5f,#96,#5d,#a9,#5d,#b0,#5d,#06
	db #5f,#05,#c0,#00,#00,#11,#40,#0c
	db #05,#40,#f4,#01,#40,#00,#39,#80
	db #0c,#01,#80,#00,#0f,#3e,#7f,#2b
	db #3e,#7f,#09,#fe,#0c,#60,#0c,#60
	db #0c,#60,#0e,#60,#18,#60,#35,#60
	db #58,#60,#72,#60,#93,#60,#b6,#60
	db #c2,#60,#35,#60,#b6,#60,#c2,#60
	db #93,#60,#b6,#60,#c2,#60,#04,#61
	db #b6,#60,#c2,#60,#22,#61,#b6,#60
	db #c2,#60,#54,#61,#78,#61,#c2,#60
	db #54,#61,#0c,#60,#84,#61,#0c,#60
	db #c7,#61,#84,#61,#f9,#61,#c7,#61
	db #84,#61,#09,#62,#1d,#62,#79,#62
	db #09,#62,#35,#63,#79,#62,#95,#63
	db #1d,#62,#79,#62,#b1,#63,#35,#63
	db #e3,#63,#65,#64,#1d,#62,#c2,#60
	db #97,#64,#1d,#62,#c5,#64,#07,#65
	db #1d,#62,#c5,#64,#37,#65,#1d,#62
	db #c5,#64,#65,#65,#1d,#62,#c2,#60
	db #a7,#65,#1d,#62,#c5,#64,#a7,#65
	db #1d,#62,#c5,#64,#54,#61,#1d,#62
	db #84,#61,#35,#60,#35,#63,#e9,#65
	db #35,#60,#1d,#62,#2b,#66,#35,#60
	db #0c,#60,#0c,#60,#2b,#66,#64,#66
	db #6d,#66,#2b,#66,#87,#66,#6d,#66
	db #0c,#60,#a4,#66,#d6,#66,#2b,#66
	db #a4,#66,#d6,#66,#16,#67,#a4,#66
	db #d6,#66,#70,#67,#a4,#66,#d6,#66
	db #70,#67,#23,#68,#d6,#66,#70,#67
	db #23,#68,#d6,#66,#0e,#60,#23,#68
	db #d6,#66,#65,#68,#23,#68,#d6,#66
	db #79,#68,#f3,#68,#35,#69,#5b,#69
	db #f3,#68,#35,#69,#5b,#69,#23,#68
	db #fa,#69,#0e,#60,#23,#68,#fa,#69
	db #65,#68,#03,#6a,#fa,#69,#45,#6a
	db #03,#6a,#fa,#69,#51,#6a,#23,#68
	db #79,#62,#5f,#6a,#23,#68,#79,#62
	db #7d,#6a,#0c,#60,#0c,#60,#9b,#6a
	db #23,#68,#79,#62,#9b,#6a,#23,#68
	db #79,#62,#9b,#6a,#23,#68,#79,#62
	db #fc,#6a,#23,#68,#fa,#69,#fc,#6a
	db #23,#68,#fa,#69,#9b,#6a,#23,#68
	db #fa,#69,#5f,#6a,#f3,#68,#f9,#61
	db #7d,#6a,#5e,#6b,#f9,#61,#7d,#6a
	db #5e,#6b,#0c,#60,#6e,#6b,#5e,#6b
	db #0c,#60,#6e,#6b,#0c,#60,#0c,#60
	db #0c,#60,#70,#bf,#6b,#25,#5f,#2f
	db #5f,#44,#5f,#4d,#5f,#5d,#5f,#6c
	db #5f,#81,#5f,#8b,#5f,#95,#5f,#a7
	db #5f,#bd,#5f,#c7,#5f,#e1,#5f,#fb
	db #5f,#2c,#5f,#2f,#5f,#ff,#37,#00
	db #00,#00,#00,#42,#5f,#44,#5f,#00
	db #37,#01,#0d,#0e,#0f,#0e,#0e,#0d
	db #0c,#0c,#0c,#0c,#0c,#0b,#09,#09
	db #4b,#5f,#4d,#5f,#00,#37,#01,#80
	db #10,#5a,#5f,#5d,#5f,#00,#37,#01
	db #0b,#09,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#6a,#5f,#6c,#5f,#00,#37,#01
	db #0b,#0b,#0b,#0a,#0b,#0b,#0b,#0a
	db #2c,#5f,#81,#5f,#00,#b7,#00,#1e
	db #0a,#2f,#14,#2f,#0c,#2f,#08,#2e
	db #04,#2d,#03,#2c,#02,#88,#5f,#8b
	db #5f,#01,#37,#00,#0d,#2d,#04,#92
	db #5f,#95,#5f,#01,#37,#00,#0e,#2e
	db #03,#2c,#5f,#a7,#5f,#00,#b7,#00
	db #1e,#02,#0d,#2c,#02,#1b,#07,#1a
	db #06,#19,#07,#bb,#5f,#bd,#5f,#00
	db #37,#01,#1d,#21,#0e,#0f,#0e,#0e
	db #0d,#0c,#0c,#0c,#0c,#0c,#0c,#0b
	db #0a,#c4,#5f,#c7,#5f,#01,#37,#00
	db #0e,#2e,#05,#db,#5f,#e1,#5f,#01
	db #37,#00,#0d,#2d,#03,#2d,#07,#2c
	db #0c,#2c,#03,#2c,#07,#2c,#0c,#2b
	db #03,#2b,#07,#2b,#0c,#f5,#5f,#fb
	db #5f,#01,#37,#00,#0d,#2d,#04,#2d
	db #07,#2c,#0c,#2c,#04,#2c,#07,#2c
	db #0c,#2b,#04,#2b,#07,#2b,#0c,#2c
	db #5f,#0c,#60,#00,#b7,#01,#88,#08
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
	db #ce,#7f,#c2,#ff
;
	ds #6bc0-$,#00
;
.l6bc0
	db #53,#4b,#31,#30,#c0,#6b,#01,#32
	db #00,#02,#6c,#0e,#6c,#82,#6d,#85
	db #6d,#da,#6b,#02,#6c,#0e,#6c,#82
	db #6d,#03,#c0,#00,#00,#23,#80,#0c
	db #01,#80,#00,#27,#c0,#f4,#f4,#c0
	db #00,#00,#05,#40,#0c,#01,#80,#0c
	db #01,#40,#00,#40,#0c,#40,#00,#40
	db #0c,#c0,#00,#00,#05,#40,#f4,#01
	db #40,#00,#7e,#5f,#0a,#7f,#16,#3e
	db #7f,#04,#3e,#7f,#12,#fe,#e5,#6e
	db #e5,#6e,#ea,#6e,#f6,#6e,#e5,#6e
	db #ea,#6e,#fd,#6e,#e5,#6e,#04,#6f
	db #10,#6f,#e5,#6e,#ea,#6e,#17,#6f
	db #e5,#6e,#1e,#6f,#f6,#6e,#ea,#6e
	db #2c,#6f,#fd,#6e,#04,#6f,#39,#6f
	db #17,#6f,#ea,#6e,#46,#6f,#f6,#6e
	db #1e,#6f,#53,#6f,#f6,#6e,#ea,#6e
	db #57,#6f,#fd,#6e,#04,#6f,#64,#6f
	db #10,#6f,#ea,#6e,#71,#6f,#17,#6f
	db #04,#6f,#7a,#6f,#86,#6f,#e8,#6f
	db #ea,#6e,#86,#6f,#e8,#6f,#ea,#6e
	db #2a,#70,#6c,#70,#ea,#6e,#2a,#70
	db #6c,#70,#04,#6f,#86,#6f,#e8,#6f
	db #e5,#6e,#86,#6f,#ae,#70,#6c,#71
	db #86,#6f,#ae,#70,#6c,#71,#86,#6f
	db #ae,#70,#6c,#71,#8f,#71,#ed,#71
	db #aa,#72,#8f,#71,#ed,#71,#c4,#72
	db #8f,#71,#e8,#72,#a6,#73,#8f,#71
	db #e8,#72,#a6,#73,#86,#6f,#e8,#6f
	db #c2,#73,#86,#6f,#ae,#70,#f0,#73
	db #86,#6f,#ae,#70,#18,#74,#86,#6f
	db #ae,#70,#4e,#74,#86,#6f,#e8,#6f
	db #6a,#74,#78,#74,#7c,#74,#6a,#74
	db #9e,#74,#7c,#74,#6a,#74,#a5,#74
	db #7c,#74,#e5,#6e,#9e,#74,#7c,#74
	db #ea,#6e,#a5,#74,#7c,#74,#ea,#6e
	db #a5,#74,#7c,#74,#e5,#6e,#ac,#74
	db #7c,#74,#b3,#74,#ac,#74,#7c,#74
	db #bf,#74,#ac,#74,#7c,#74,#cb,#74
	db #dd,#74,#7c,#74,#e4,#74,#ac,#74
	db #7c,#74,#cb,#74,#dd,#74,#ee,#74
	db #ee,#74,#f0,#74,#f8,#74,#38,#75
	db #f0,#74,#f8,#74,#38,#75,#7a,#75
	db #f8,#74,#38,#75,#7a,#75,#f8,#75
	db #b6,#76,#7a,#75,#f8,#75,#b6,#76
	db #7a,#75,#f8,#75,#be,#76,#7a,#75
	db #f8,#75,#be,#76,#7a,#75,#f8,#75
	db #e9,#76,#7a,#75,#f8,#75,#0f,#77
	db #7a,#75,#f8,#75,#be,#76,#7a,#75
	db #f8,#75,#2f,#77,#7a,#75,#4f,#77
	db #be,#76,#7a,#75,#4f,#77,#2f,#77
	db #e5,#6e,#4f,#77,#53,#77,#e5,#6e
	db #a0,#77,#be,#77,#ce,#77,#a0,#77
	db #d6,#77,#e9,#77,#a0,#77,#fd,#77
	db #a0,#77,#e5,#6e,#d6,#77,#e5,#6e
	db #e5,#6e,#10,#78,#e5,#6e,#e5,#6e
	db #e5,#6e,#7a,#2b,#78,#a5,#6d,#af
	db #6d,#c6,#6d,#dd,#6d,#f3,#6d,#0a
	db #6e,#21,#6e,#31,#6e,#42,#6e,#54
	db #6e,#67,#6e,#83,#6e,#96,#6e,#ae
	db #6e,#c0,#6e,#d0,#6e,#ac,#6d,#af
	db #6d,#ff,#37,#00,#00,#00,#00,#c0
	db #6d,#c6,#6d,#03,#37,#00,#0c,#2c
	db #04,#0c,#2a,#04,#0a,#29,#04,#09
	db #28,#04,#08,#27,#04,#07,#d7,#6d
	db #dd,#6d,#03,#37,#00,#0c,#2c,#05
	db #0c,#2a,#05,#0a,#29,#05,#09,#28
	db #05,#08,#27,#05,#07,#ed,#6d,#f3
	db #6d,#03,#37,#00,#0c,#2c,#0c,#08
	db #28,#0c,#0b,#2b,#0c,#09,#29,#0c
	db #08,#28,#0c,#ac,#6d,#0a,#6e,#00
	db #b7,#00,#2f,#0c,#0e,#2d,#0c,#0c
	db #2b,#0c,#0a,#09,#08,#27,#0c,#06
	db #05,#04,#1b,#6e,#21,#6e,#03,#37
	db #00,#2a,#0c,#2c,#0c,#08,#28,#0c
	db #0b,#2b,#0c,#09,#29,#0c,#08,#28
	db #0c,#2e,#6e,#31,#6e,#00,#37,#00
	db #0d,#2d,#0c,#0c,#2a,#0c,#08,#28
	db #0c,#3e,#6e,#42,#6e,#00,#37,#00
	db #0d,#0d,#0d,#0c,#0b,#08,#07,#00
	db #07,#00,#4b,#6e,#54,#6e,#03,#37
	db #00,#1c,#21,#0c,#0c,#0c,#08,#08
	db #08,#0a,#0a,#0a,#5b,#6e,#67,#6e
	db #03,#37,#00,#c1,#13,#81,#13,#81
	db #13,#81,#13,#81,#12,#81,#13,#ac
	db #6d,#83,#6e,#00,#b7,#00,#1e,#0a
	db #3f,#21,#14,#2f,#0c,#2f,#08,#6e
	db #04,#10,#00,#6d,#03,#20,#00,#6c
	db #02,#40,#00,#ac,#6d,#96,#6e,#03
	db #b7,#00,#81,#13,#81,#13,#81,#13
	db #81,#13,#81,#13,#81,#13,#ab,#6e
	db #ae,#6e,#00,#37,#00,#1e,#24,#5d
	db #22,#20,#00,#5b,#21,#40,#00,#5a
	db #22,#80,#00,#0a,#2a,#0c,#bd,#6e
	db #c0,#6e,#00,#37,#00,#1e,#21,#3c
	db #21,#0c,#0c,#2a,#0c,#08,#28,#0c
	db #cd,#6e,#d0,#6e,#00,#37,#00,#0e
	db #0f,#0e,#0d,#0c,#0b,#0a,#2a,#f4
	db #d7,#6e,#e5,#6e,#05,#37,#00,#0b
	db #2b,#03,#2a,#07,#2a,#0c,#0b,#2b
	db #03,#2a,#07,#2a,#0c,#ca,#ce,#c4
	db #00,#c2,#84,#81,#01,#e2,#7e,#80
	db #02,#e2,#7b,#e2,#75,#c2,#1e,#80
	db #03,#c0,#2a,#1f,#c2,#3c,#80,#03
	db #c0,#2a,#3d,#c2,#84,#80,#01,#e2
	db #7e,#80,#02,#e2,#7b,#e2,#71,#c2
	db #2c,#80,#03,#c0,#2a,#45,#c2,#1a
	db #80,#03,#c0,#2a,#33,#c2,#84,#80
	db #01,#e2,#7e,#80,#02,#e2,#89,#e2
	db #84,#80,#01,#c2,#74,#83,#04,#c0
	db #1e,#75,#d2,#7b,#d2,#75,#d2,#71
	db #c2,#6c,#80,#04,#c0,#1e,#63,#d2
	db #67,#d2,#6d,#d2,#71,#c2,#6c,#80
	db #04,#c0,#1e,#5d,#d2,#63,#d2,#67
	db #d2,#6d,#c2,#66,#80,#04,#c2,#74
	db #83,#04,#c0,#1e,#75,#d2,#7b,#d2
	db #75,#d2,#71,#c2,#6c,#80,#04,#c0
	db #1e,#63,#d2,#67,#d2,#6d,#d2,#71
	db #c2,#74,#80,#04,#d2,#7b,#c0,#26
	db #85,#c2,#88,#80,#04,#da,#8d,#d2
	db #93,#da,#97,#d2,#93,#c2,#36,#80
	db #03,#ce,#4f,#ce,#4e,#80,#05,#ce
	db #36,#80,#03,#ce,#4f,#ce,#4f,#ce
	db #36,#80,#05,#ce,#4f,#ce,#36,#80
	db #03,#ce,#4f,#ce,#4e,#80,#05,#ce
	db #36,#80,#03,#ce,#4f,#ce,#4f,#ce
	db #36,#80,#05,#ce,#4f,#ce,#40,#80
	db #03,#ce,#59,#ce,#58,#80,#05,#ce
	db #40,#80,#03,#ce,#59,#ce,#59,#ce
	db #40,#80,#05,#ce,#59,#ce,#40,#80
	db #03,#ce,#59,#ce,#59,#ce,#41,#ce
	db #58,#80,#05,#ce,#58,#80,#03,#ce
	db #40,#80,#05,#ce,#58,#80,#03,#c2
	db #66,#83,#04,#ce,#6d,#ce,#75,#ce
	db #67,#ce,#6d,#ce,#75,#ce,#67,#ce
	db #75,#ce,#63,#ce,#6d,#ce,#71,#ce
	db #63,#ce,#6d,#ce,#71,#ce,#63,#ce
	db #71,#ce,#5f,#ce,#63,#ce,#6d,#ce
	db #5f,#ce,#63,#ce,#6d,#ce,#5f,#ce
	db #6d,#ce,#5f,#ce,#63,#ce,#6d,#ce
	db #5f,#ce,#63,#ce,#6d,#ce,#5f,#ce
	db #6d,#c2,#44,#80,#03,#ce,#5d,#ce
	db #5d,#ce,#45,#ce,#5d,#ce,#45,#ce
	db #45,#ce,#5d,#ce,#33,#ce,#4b,#ce
	db #4b,#ce,#33,#ce,#4b,#ce,#4b,#ce
	db #33,#ce,#4b,#ce,#41,#ce,#59,#ce
	db #59,#ce,#41,#ce,#59,#ce,#59,#ce
	db #41,#ce,#59,#ce,#41,#ce,#59,#ce
	db #59,#ce,#41,#ce,#59,#ce,#59,#ce
	db #41,#ce,#59,#c2,#5c,#81,#04,#ce
	db #63,#ce,#6b,#ce,#5d,#ce,#63,#ce
	db #6b,#ce,#5d,#ce,#6b,#ce,#5f,#ce
	db #63,#ce,#6d,#ce,#5f,#ce,#63,#ce
	db #6d,#ce,#5f,#ce,#6d,#ce,#5f,#ce
	db #63,#ce,#75,#ce,#5f,#ce,#63,#ce
	db #75,#ce,#5f,#ce,#75,#ce,#5f,#ce
	db #63,#ce,#71,#ce,#5f,#ce,#63,#ce
	db #71,#ce,#5f,#ce,#71,#c2,#66,#85
	db #04,#c4,#04,#6c,#05,#7e,#89,#06
	db #74,#85,#04,#84,#89,#06,#66,#85
	db #04,#8c,#89,#06,#6c,#85,#04,#7e
	db #89,#06,#74,#85,#04,#84,#89,#06
	db #66,#85,#04,#8c,#89,#06,#74,#85
	db #04,#7e,#89,#06,#62,#85,#04,#8c
	db #89,#06,#6c,#85,#04,#7a,#89,#06
	db #70,#85,#04,#84,#89,#06,#62,#85
	db #04,#88,#89,#06,#6c,#85,#04,#7a
	db #89,#06,#70,#85,#04,#84,#89,#06
	db #62,#85,#04,#88,#89,#06,#70,#85
	db #04,#7a,#89,#06,#5e,#85,#04,#88
	db #89,#06,#62,#85,#04,#76,#89,#06
	db #6c,#85,#04,#7a,#89,#06,#5e,#85
	db #04,#84,#89,#06,#62,#85,#04,#76
	db #89,#06,#6c,#85,#04,#7a,#89,#06
	db #5e,#85,#04,#84,#89,#06,#6c,#85
	db #04,#76,#89,#06,#5e,#85,#04,#84
	db #89,#06,#62,#85,#04,#76,#89,#06
	db #6c,#85,#04,#7a,#89,#06,#5e,#85
	db #04,#84,#89,#06,#62,#85,#04,#76
	db #89,#06,#6c,#85,#04,#7a,#89,#06
	db #5e,#85,#04,#84,#89,#06,#6c,#85
	db #04,#76,#89,#06,#d4,#8c,#81,#07
	db #d2,#8d,#d2,#89,#ce,#8d,#d6,#89
	db #d2,#93,#ce,#8d,#ce,#89,#ce,#8d
	db #d6,#8d,#d2,#8d,#d2,#89,#ce,#85
	db #d6,#7f,#d2,#85,#ce,#89,#c2,#4a
	db #80,#03,#ce,#63,#ce,#63,#ce,#4b
	db #ce,#63,#ce,#63,#ce,#4a,#80,#05
	db #ce,#63,#ce,#4a,#80,#03,#ce,#63
	db #ce,#62,#80,#05,#ce,#4a,#80,#03
	db #ce,#63,#ce,#63,#ce,#4a,#80,#05
	db #ce,#63,#ce,#40,#80,#03,#ce,#59
	db #ce,#58,#80,#05,#ce,#40,#80,#03
	db #ce,#59,#ce,#59,#ce,#40,#80,#05
	db #ce,#59,#ce,#40,#80,#03,#ce,#59
	db #ce,#59,#ce,#41,#ce,#58,#80,#05
	db #ce,#58,#80,#03,#ce,#40,#80,#05
	db #ce,#58,#80,#03,#c2,#82,#85,#04
	db #ce,#70,#05,#9a,#89,#06,#7a,#85
	db #04,#88,#89,#06,#82,#85,#04,#92
	db #89,#06,#70,#85,#04,#9a,#89,#06
	db #7a,#85,#04,#88,#89,#06,#82,#85
	db #04,#92,#89,#06,#70,#85,#04,#9a
	db #89,#06,#7a,#85,#04,#88,#89,#06
	db #82,#85,#04,#92,#89,#06,#70,#85
	db #04,#9a,#89,#06,#7a,#85,#04,#88
	db #89,#06,#82,#85,#04,#92,#89,#06
	db #70,#85,#04,#9a,#89,#06,#7a,#85
	db #04,#88,#89,#06,#82,#85,#04,#92
	db #89,#06,#84,#85,#04,#9a,#89,#06
	db #76,#85,#04,#9c,#89,#06,#7a,#85
	db #04,#8e,#89,#06,#84,#85,#04,#92
	db #89,#06,#76,#85,#04,#9c,#89,#06
	db #7a,#85,#04,#8e,#89,#06,#84,#85
	db #04,#92,#89,#06,#76,#85,#04,#9c
	db #89,#06,#7a,#85,#04,#8e,#89,#06
	db #84,#85,#04,#92,#89,#06,#76,#85
	db #04,#9c,#89,#06,#7a,#85,#04,#8e
	db #89,#06,#84,#85,#04,#92,#89,#06
	db #76,#85,#04,#9c,#89,#06,#7a,#85
	db #04,#8e,#89,#06,#84,#85,#04,#92
	db #89,#06,#74,#81,#07,#ce,#7b,#ce
	db #7f,#ce,#85,#ce,#89,#d2,#8d,#ce
	db #89,#d2,#85,#d2,#7f,#d2,#7b,#ce
	db #85,#ce,#7f,#c2,#74,#81,#07,#ce
	db #7b,#ce,#7f,#ce,#85,#ce,#89,#d2
	db #8d,#ce,#89,#d2,#85,#d2,#7f,#d2
	db #7b,#ce,#85,#ce,#89,#ce,#85,#ea
	db #89,#d2,#7f,#d2,#85,#d2,#7b,#c2
	db #92,#85,#04,#c4,#04,#82,#05,#aa
	db #89,#06,#88,#85,#04,#9a,#89,#06
	db #92,#85,#04,#a0,#89,#06,#82,#85
	db #04,#aa,#89,#06,#88,#85,#04,#9a
	db #89,#06,#92,#85,#04,#a0,#89,#06
	db #82,#85,#04,#aa,#89,#06,#92,#85
	db #04,#9a,#89,#06,#82,#85,#04,#aa
	db #89,#06,#88,#85,#04,#9a,#89,#06
	db #92,#85,#04,#a0,#89,#06,#82,#85
	db #04,#aa,#89,#06,#88,#85,#04,#9a
	db #89,#06,#92,#85,#04,#a0,#89,#06
	db #82,#85,#04,#aa,#89,#06,#8e,#85
	db #04,#9a,#89,#06,#7e,#85,#04,#a6
	db #89,#06,#84,#85,#04,#96,#89,#06
	db #8e,#85,#04,#9c,#89,#06,#7e,#85
	db #04,#a6,#89,#06,#84,#85,#04,#96
	db #89,#06,#8e,#85,#04,#9c,#89,#06
	db #7e,#85,#04,#a6,#89,#06,#8e,#85
	db #04,#96,#89,#06,#7e,#85,#04,#a6
	db #89,#06,#84,#85,#04,#96,#89,#06
	db #8e,#85,#04,#9c,#89,#06,#7e,#85
	db #04,#a6,#89,#06,#84,#85,#04,#96
	db #89,#06,#8e,#85,#04,#9c,#89,#06
	db #7e,#85,#04,#a6,#89,#06,#8c,#80
	db #07,#d2,#7b,#d2,#7f,#d2,#7b,#d2
	db #85,#d2,#7b,#d2,#7f,#d2,#7b,#d2
	db #89,#d2,#85,#ea,#7b,#d2,#8d,#d2
	db #89,#c2,#8c,#80,#07,#d2,#7b,#d2
	db #7f,#d2,#7b,#ce,#89,#d2,#85,#d2
	db #7b,#ce,#7f,#ce,#7b,#ce,#85,#ce
	db #89,#ce,#8d,#d2,#7b,#d2,#7f,#d2
	db #7b,#ce,#89,#d2,#85,#d2,#7f,#ce
	db #7b,#ce,#75,#ce,#71,#ce,#75,#c2
	db #8c,#80,#07,#d2,#7b,#d2,#7f,#d2
	db #7b,#ce,#89,#d2,#85,#d2,#7b,#ce
	db #7f,#ce,#7b,#ce,#85,#ce,#89,#ce
	db #8d,#d2,#7b,#d2,#7f,#d2,#7b,#ce
	db #97,#d2,#93,#d2,#89,#ce,#8d,#c2
	db #74,#81,#07,#d2,#71,#d2,#6d,#ce
	db #71,#d2,#75,#d2,#7b,#d6,#71,#d2
	db #6d,#d2,#75,#d2,#71,#d2,#6d,#ce
	db #67,#d2,#63,#d2,#5d,#ca,#62,#80
	db #07,#ca,#5c,#80,#07,#ca,#66,#80
	db #07,#ca,#5c,#80,#07,#ca,#66,#80
	db #07,#ca,#6a,#80,#07,#ca,#74,#80
	db #07,#d2,#71,#d2,#6d,#ce,#71,#d2
	db #75,#d6,#7b,#d2,#71,#d2,#6d,#d2
	db #75,#d2,#71,#d2,#6d,#ce,#67,#d2
	db #63,#c2,#62,#80,#08,#e2,#6d,#e2
	db #6b,#da,#63,#d2,#5d,#da,#59,#c2
	db #4e,#80,#09,#c2,#62,#80,#08,#d2
	db #59,#d2,#5d,#d2,#67,#d2,#63,#d2
	db #59,#d2,#5d,#d2,#67,#d2,#63,#d2
	db #59,#d2,#5d,#d2,#67,#d2,#63,#d2
	db #59,#d2,#5d,#d2,#67,#c2,#4e,#80
	db #09,#c0,#1e,#55,#c2,#4a,#80,#09
	db #c0,#1e,#4f,#c2,#4a,#80,#09,#c0
	db #1e,#47,#c2,#82,#80,#06,#da,#83
	db #d2,#83,#da,#83,#da,#85,#c2,#8c
	db #80,#06,#da,#8d,#d2,#7f,#da,#7b
	db #da,#7f,#c2,#82,#80,#06,#da,#83
	db #d2,#83,#da,#83,#da,#85,#e2,#7f
	db #da,#7b,#d2,#7f,#c2,#4e,#80,#09
	db #c0,#1e,#4b,#c2,#8c,#80,#06,#e2
	db #89,#da,#85,#da,#83,#c2,#ca,#c2
	db #5e,#80,#09,#ea,#63,#ea,#67,#c2
	db #d2,#46,#80,#06,#ce,#5f,#ce,#63
	db #ce,#67,#ce,#47,#ce,#5f,#ce,#63
	db #ce,#67,#ce,#4b,#ce,#63,#ce,#67
	db #ce,#6b,#ce,#4b,#ce,#63,#ce,#67
	db #ce,#6b,#ce,#4f,#ce,#67,#ce,#6b
	db #ce,#6d,#ce,#4f,#ce,#67,#ce,#6b
	db #ce,#6d,#ce,#7b,#ce,#67,#ce,#75
	db #ce,#67,#ce,#71,#ce,#67,#ce,#6d
	db #46,#80,#06,#ce,#5f,#ce,#63,#ce
	db #67,#ce,#47,#ce,#5f,#ce,#63,#ce
	db #67,#ce,#4b,#ce,#63,#ce,#67,#ce
	db #6b,#ce,#4b,#ce,#63,#ce,#67,#ce
	db #6b,#ce,#4f,#ce,#67,#ce,#6b,#ce
	db #6d,#ce,#4f,#ce,#67,#ce,#6b,#ce
	db #6d,#ce,#7b,#ce,#67,#ce,#75,#ce
	db #67,#ce,#71,#ce,#67,#ce,#6d,#ce
	db #67,#c2,#2e,#81,#0a,#2e,#07,#5e
	db #81,#0b,#ce,#5e,#80,#0c,#ce,#47
	db #ce,#5e,#80,#0b,#ce,#46,#81,#0a
	db #ce,#5e,#81,#0b,#77,#5f,#ce,#32
	db #80,#0a,#ce,#62,#80,#0b,#32,#87
	db #0a,#62,#81,#0c,#ce,#4b,#ce,#62
	db #80,#0b,#ce,#4a,#80,#0a,#ce,#62
	db #80,#0b,#ce,#4a,#80,#0a,#ce,#37
	db #ce,#66,#80,#0b,#ce,#66,#80,#0c
	db #1e,#87,#0a,#66,#81,#0c,#ce,#66
	db #80,#0b,#ce,#4e,#80,#0c,#ce,#66
	db #80,#0b,#ce,#4e,#80,#0c,#ce,#32
	db #80,#0a,#ce,#66,#80,#0b,#ce,#66
	db #80,#0c,#ce,#36,#80,#0a,#ce,#62
	db #80,#0b,#ce,#66,#80,#0c,#ce,#4e
	db #81,#0a,#4e,#0b,#4e,#81,#0b,#c2
	db #46,#81,#06,#4e,#05,#5e,#01,#46
	db #85,#0d,#62,#81,#06,#5e,#85,#0d
	db #66,#81,#06,#62,#85,#0d,#2e,#81
	db #0a,#66,#85,#0d,#5e,#81,#06,#46
	db #85,#0d,#1a,#81,#0a,#5e,#85,#0d
	db #66,#81,#06,#62,#85,#0d,#4a,#81
	db #06,#66,#85,#0d,#62,#81,#06,#4a
	db #85,#0d,#66,#81,#06,#62,#85,#0d
	db #6a,#81,#06,#66,#85,#0d,#32,#81
	db #0a,#6a,#85,#0d,#62,#81,#06,#4a
	db #85,#0d,#66,#81,#06,#1a,#85,#0a
	db #6a,#81,#06,#66,#85,#0d,#4e,#81
	db #06,#6a,#85,#0d,#66,#81,#06,#4e
	db #85,#0d,#6a,#81,#06,#66,#85,#0d
	db #6c,#81,#06,#6a,#85,#0d,#36,#81
	db #0a,#6c,#85,#0d,#66,#81,#06,#4e
	db #85,#0d,#6a,#81,#06,#66,#85,#0d
	db #6c,#81,#06,#6a,#85,#0d,#7a,#81
	db #06,#6c,#85,#0d,#66,#81,#06,#7a
	db #85,#0d,#74,#81,#06,#66,#85,#0d
	db #66,#81,#06,#74,#85,#0d,#40,#81
	db #0a,#66,#85,#0d,#66,#81,#06,#70
	db #85,#0d,#6c,#81,#06,#66,#85,#0d
	db #36,#81,#0a,#6c,#85,#0d,#7e,#80
	db #03,#ea,#7b,#ea,#7f,#c2,#d4,#7e
	db #80,#0e,#ce,#7f,#ce,#7f,#ce,#7b
	db #d2,#7f,#d6,#7f,#ce,#7f,#ce,#7f
	db #ce,#75,#d2,#7f,#d6,#7f,#ce,#7f
	db #ce,#7f,#ce,#7b,#d2,#85,#d2,#83
	db #d2,#7f,#d2,#75,#ce,#7f,#ce,#7b
	db #c2,#7e,#80,#0e,#d6,#7f,#ce,#7f
	db #ce,#7f,#d2,#83,#d6,#85,#ce,#83
	db #ce,#85,#ce,#89,#d2,#8d,#d6,#83
	db #d2,#85,#ce,#93,#d2,#8d,#d6,#8f
	db #ce,#8d,#ce,#89,#d2,#85,#c2,#8c
	db #80,#0e,#da,#8d,#ce,#89,#d2,#83
	db #d6,#83,#d2,#85,#ce,#89,#d2,#85
	db #d6,#83,#d2,#7f,#ce,#75,#d2,#6d
	db #d6,#75,#ce,#7f,#d2,#83,#c2,#66
	db #80,#0e,#d2,#67,#ce,#67,#ce,#67
	db #ce,#63,#d2,#5d,#d6,#5d,#ce,#5d
	db #ce,#59,#ce,#5d,#ce,#6b,#d2,#6d
	db #ea,#58,#80,#0b,#da,#53,#c2,#66
	db #85,#0f,#c2,#66,#80,#0d,#c0,#1a
	db #c6,#01,#c6,#01,#c6,#01,#c6,#01
	db #c6,#02,#c6,#02,#c6,#04,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#c6,#04
	db #c6,#04,#c6,#04,#c6,#04,#c6,#06
	db #c6,#06,#c6,#06,#c6,#06,#c6,#08
	db #c6,#08,#c6,#08,#c6,#08,#c6,#08
	db #c6,#0a,#c6,#0a,#c6,#0a,#c6,#0a
	db #c6,#10,#c6,#10,#c6,#10,#c6,#10
	db #de,#c4,#02,#d8,#c4,#02,#da,#c4
	db #03,#da,#c4,#04,#da,#c4,#05,#da
	db #c4,#06,#da,#c4,#07,#c4,#08,#ce
	db #c4,#09,#ce,#c4,#0a,#c2,#c6,#12
	db #c6,#14,#c6,#16,#c6,#18,#c6,#1a
	db #c6,#1c,#c6,#1e,#ca,#c2,#6a,#83
	db #03,#fa,#67,#da,#61,#c2,#44,#85
	db #0e,#d2,#52,#05,#d2,#5d,#d2,#61
	db #f2,#41,#d2,#4f,#d2,#59,#d2,#5d
	db #c2,#62,#80,#03,#e2,#6d,#ea,#6b
	db #ce,#6d,#ce,#71,#da,#6d,#d2,#6b
	db #da,#63,#da,#5d,#c2,#46,#85,#0e
	db #d2,#54,#05,#d2,#5f,#d2,#6d,#f2
	db #4b,#d2,#59,#d2,#63,#d2,#67,#c2
	db #46,#85,#0e,#d2,#54,#07,#d2,#5e
	db #09,#d2,#6c,#0b,#f2,#4a,#0d,#d2
	db #58,#0f,#d2,#62,#11,#d2,#66,#13
	db #e2,#ca,#c2,#ff
;
	ds #782c-$,#00
;
.l782c
	db #53,#4b,#31,#30,#2c,#78,#01,#32
	db #00,#4f,#78,#5a,#78,#9c,#78,#9f
	db #78,#46,#78,#4f,#78,#5a,#78,#9c
	db #78,#05,#c0,#00,#00,#80,#f4,#03
	db #80,#00,#0b,#7f,#01,#3e,#7e,#3e
	db #7e,#3e,#7e,#3e,#2c,#7e,#d6,#78
	db #d6,#78,#d7,#78,#f1,#78,#f8,#78
	db #d7,#78,#13,#79,#19,#79,#2a,#79
	db #3a,#79,#42,#79,#55,#79,#d6,#78
	db #d6,#78,#d7,#78,#f1,#78,#67,#79
	db #d7,#78,#97,#79,#67,#79,#2a,#79
	db #3a,#79,#67,#79,#9b,#79,#af,#79
	db #67,#79,#b3,#79,#c3,#79,#d6,#78
	db #d7,#78,#c7,#79,#c7,#79,#c7,#79
	db #14,#c9,#79,#a5,#78,#af,#78,#c0
	db #78,#ac,#78,#af,#78,#ff,#37,#00
	db #00,#00,#00,#bc,#78,#c0,#78,#00
	db #37,#00,#0c,#0c,#0c,#0b,#0a,#07
	db #04,#00,#04,#00,#d0,#78,#d6,#78
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
	db #87,#02,#c2,#ca,#c2,#ff
;
	ds #79ca-$,#00
;
.l79ca
	db #53,#4b,#31,#30,#ca,#79,#01,#32
	db #00,#f1,#79,#f4,#79,#3c,#7a,#42
	db #7a,#e7,#79,#f2,#79,#fa,#79,#3f
	db #7a,#03,#c0,#00,#00,#c0,#00,#00
	db #07,#18,#01,#28,#03,#80,#f4,#3e
	db #7f,#0a,#28,#7b,#28,#7b,#28,#7b
	db #28,#7b,#29,#7b,#28,#7b,#28,#7b
	db #29,#7b,#8a,#7b,#28,#7b,#29,#7b
	db #9a,#7b,#aa,#7b,#29,#7b,#8a,#7b
	db #c4,#7b,#29,#7b,#9a,#7b,#aa,#7b
	db #29,#7b,#8a,#7b,#c4,#7b,#29,#7b
	db #9a,#7b,#dd,#7b,#29,#7b,#8a,#7b
	db #f3,#7b,#29,#7b,#0a,#7c,#1c,#7c
	db #29,#7b,#2f,#7c,#28,#7b,#29,#7b
	db #28,#7b,#00,#41,#7c,#14,#41,#7c
	db #56,#7a,#60,#7a,#71,#7a,#87,#7a
	db #9e,#7a,#b5,#7a,#cc,#7a,#e3,#7a
	db #fa,#7a,#11,#7b,#5d,#7a,#60,#7a
	db #ff,#37,#00,#00,#00,#00,#6d,#7a
	db #71,#7a,#00,#37,#00,#0e,#0e,#0e
	db #0d,#0c,#0a,#05,#00,#05,#00,#81
	db #7a,#87,#7a,#03,#37,#00,#0c,#2c
	db #0c,#08,#28,#0c,#0b,#2b,#0c,#09
	db #29,#0c,#08,#28,#0c,#98,#7a,#9e
	db #7a,#03,#37,#00,#0c,#2c,#05,#0c
	db #2a,#05,#0a,#29,#05,#09,#28,#05
	db #08,#27,#05,#07,#af,#7a,#b5,#7a
	db #03,#37,#00,#0c,#2c,#07,#0c,#2a
	db #07,#0a,#29,#07,#09,#28,#07,#08
	db #27,#07,#07,#c6,#7a,#cc,#7a,#03
	db #37,#00,#0c,#2c,#09,#0c,#2a,#09
	db #0a,#29,#09,#09,#28,#09,#08,#27
	db #09,#07,#dd,#7a,#e3,#7a,#03,#37
	db #00,#0c,#2c,#04,#0c,#2a,#04,#0a
	db #29,#04,#09,#28,#04,#08,#27,#04
	db #07,#f4,#7a,#fa,#7a,#03,#37,#00
	db #0c,#2c,#0a,#0c,#2a,#0a,#0a,#29
	db #0a,#09,#28,#0a,#08,#27,#0a,#07
	db #0b,#7b,#11,#7b,#03,#37,#00,#0c
	db #2c,#03,#0c,#2a,#03,#0a,#29,#03
	db #09,#28,#03,#08,#27,#03,#07,#22
	db #7b,#28,#7b,#03,#37,#00,#0c,#2c
	db #02,#0c,#2a,#02,#0a,#29,#02,#09
	db #28,#02,#08,#27,#02,#07,#c2,#7e
	db #81,#01,#ce,#96,#07,#ce,#84,#01
	db #ce,#7e,#07,#ce,#8c,#01,#ce,#84
	db #07,#ce,#7e,#01,#ce,#8c,#07,#ce
	db #84,#01,#ce,#7e,#07,#ce,#8c,#01
	db #ce,#84,#07,#ce,#a4,#01,#ce,#8c
	db #07,#ce,#9c,#01,#ce,#a4,#07,#ce
	db #7e,#01,#ce,#9c,#07,#ce,#8c,#01
	db #ce,#7e,#07,#ce,#92,#01,#ce,#8c
	db #07,#ce,#84,#01,#ce,#92,#07,#ce
	db #9c,#01,#ce,#84,#07,#ce,#9a,#01
	db #ce,#9c,#07,#ce,#92,#01,#ce,#9a
	db #07,#ce,#96,#01,#ce,#92,#07,#c2
	db #1e,#80,#02,#f2,#37,#d2,#37,#d2
	db #37,#d2,#1b,#f2,#33,#da,#33,#c2
	db #28,#80,#02,#f2,#37,#d2,#37,#d2
	db #37,#d2,#25,#f2,#33,#da,#33,#c2
	db #74,#80,#03,#e2,#7e,#80,#04,#da
	db #7e,#80,#03,#da,#71,#ea,#7a,#80
	db #05,#da,#7a,#80,#04,#da,#74,#80
	db #03,#c2,#e4,#7e,#80,#04,#da,#7e
	db #80,#03,#da,#6c,#80,#06,#da,#66
	db #80,#03,#da,#70,#80,#07,#da,#70
	db #80,#05,#c2,#96,#80,#08,#e2,#97
	db #da,#97,#d2,#97,#d2,#97,#d2,#9b
	db #e2,#9b,#da,#9b,#da,#9c,#80,#06
	db #c2,#e4,#9c,#80,#06,#da,#96,#80
	db #03,#da,#8e,#80,#06,#ea,#8f,#da
	db #8e,#80,#09,#da,#8e,#80,#06,#c2
	db #3c,#80,#02,#f2,#33,#d2,#33,#d2
	db #33,#d2,#41,#f2,#3d,#d2,#3d,#d2
	db #3d,#c2,#e4,#8e,#80,#06,#da,#8f
	db #d2,#8f,#d2,#8f,#d2,#93,#e2,#93
	db #da,#92,#80,#03,#c2,#2e,#80,#02
	db #f2,#47,#d2,#47,#d2,#47,#d2,#33
	db #f2,#1b,#d2,#1b,#d2,#1b,#c2,#ff
;
; #7d7e - init music
;
	ds #7d7e-$,#00

	ld hl,#5adc; menu
	ld de,#5adc
	call l7dac
	ld hl,#5d7c
	ld de,#5d7c
	call l7dac
	ld hl,#6bc0
	ld de,#6bc0
	call l7dac
	ld hl,#782c
	ld de,#782c
	call l7dac
	ld hl,#79ca
	ld de,#79ca
	call l7dac
	ret
.l7dac
	ld (l7ec2),hl
	ld (l7ec4),de
	ld bc,#0004
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ex de,hl
	or a
	sbc hl,de
	ld (l7ec6),hl
	ld ix,(l7ec2)
	ld hl,(l7ec4)
	ld (ix+#04),l
	ld (ix+#05),h
	ld b,#08
	ld hl,#0009
.l7dd4
	call l7e87
	inc hl
	inc hl
	djnz l7dd4
	ld hl,#000b
	call l7ead
	ld (l7ec8),de
	ld hl,#000d
	call l7ead
	ld (l7eca),de
	ld hl,#000f
	call l7ead
	ld (l7ecc),de
	ld hl,(l7eca)
	ld de,(l7ec8)
	or a
	sbc hl,de
	srl h
	rr l
	ld c,l
	ld b,h
	ex de,hl
	call l7eb7
	ld hl,(l7ecc)
	ld (l7e2a),hl
	ld de,(l7eca)
.l7e17
	ex de,hl
	ld a,(hl)
	inc hl
	srl a
	jr c,l7e1f
	xor a
.l7e1f
	call l7e74
	inc hl
	inc hl
	sub #01
	jr nc,l7e1f
	ex de,hl
.l7e2a equ $ + 1
	ld hl,#7a42
	or a
	sbc hl,de
	jr nz,l7e17
	ld hl,(l7ecc)
	ld e,(hl)
	inc hl
	ld d,(hl)
	dec hl
	ex de,hl
	ld bc,(l7ec6)
	add hl,bc
	ld (l7e68),hl
	or a
	sbc hl,de
	srl h
	rr l
	ld c,l
	ld b,h
	ex de,hl
	call l7eb7
	ld hl,(l7ecc)
	ld (l7e55),hl
.l7e55 equ $ + 1
.l7e54
	ld hl,#7a56
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l7e55),hl
	ex de,hl
	call l7e74
	inc hl
	inc hl
	call l7e74
.l7e68 equ $ + 1
	ld hl,#7a56
	ld de,(l7e55)
	or a
	sbc hl,de
	jr nz,l7e54
	ret
.l7e74
	push hl
	push bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	dec hl
	ld bc,(l7ec6)
	ex de,hl
	add hl,bc
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	pop bc
	pop hl
	ret
.l7e87
	push hl
	call l7e9e
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld de,(l7ec6)
	add hl,de
	ld (ix+#00),l
	ld (ix+#01),h
	pop hl
	ret
.l7e9e
	push de
	ld de,(l7ec2)
	add hl,de
	push hl
	pop ix
	pop de
	ret
.l7ea9
	ld e,(hl)
	inc hl
	ld d,(hl)
	ret
.l7ead
	call l7e9e
	push ix
	pop hl
	call l7ea9
	ret
.l7eb7
	call l7e74
	inc hl
	inc hl
	dec bc
	ld a,c
	or b
	jr nz,l7eb7
	ret
.l7ec4 equ $ + 2
.l7ec2
	jp z,#ca79
	ld a,c
.l7ec8 equ $ + 2
.l7ec6
	jp z,#f479
	ld a,c
.l7eca
	inc a
	ld a,d
.l7ecc
	ld b,d
	ld a,d
	ccf
	jr z,l7eff
	adc (hl)
	ld h,#00
	jr l7ef3
	nop
	rlca
	nop
	nop
	jr nc,l7edc
.l7edc
	ld bc,#bc00
	ld e,#0e
.l7ee1
	out (c),c
	inc b
	ld a,(hl)
	out (c),a
	inc hl
	inc c
	dec b
	dec e
	jr nz,l7ee1
	ret
	ld bc,#7f10
	ld a,#54
.l7ef3
	out (c),c
	out (c),a
	dec c
	jp p,l7ef3
	ret
	db #00,#00,#00
.l7eff
	db #00
	ret
;
.init_music	; added by Megachur
;
	ld de,l5adc
	or a
	jr z,jp_real_init_music
	ld de,l5d7c
	dec a
	jr z,jp_real_init_music
	ld de,l6bc0
	dec a
	jr z,jp_real_init_music
	ld de,l782c
	dec a
	jr z,jp_real_init_music
	ld de,l79ca
jp_real_init_music
	jp real_init_music
;
.music_info
	db "SuDoKu (2008)(Cronosoft)(Herve Monchatre)",0
	db "StArkos",0

	read "music_end.asm"
