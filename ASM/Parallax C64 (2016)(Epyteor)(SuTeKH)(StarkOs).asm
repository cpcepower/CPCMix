; Music of Parallax C64 (2016)(Epyteor)(SuTeKH)(StarkOs)
; Ripped by Megachur the 29/08/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PARALLAC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #7000

	read "music_header.asm"

	jp l7872
	jp l700d
	jp l7856
.l700c equ $ + 3
.l700b equ $ + 2
	db #00,#70,#00,#00
;
.play_music
.l700d
;
	xor a
	ld (l700b),a
	ld (l783d),a
.l7015 equ $ + 1
	ld a,#00
.l7017 equ $ + 1
	cp #00
	jr z,l7021
	inc a
	ld (l7015),a
	jp l72b0
.l7021
	xor a
	ld (l7015),a
.l7025
	or a
	jp nc,l7107
	ld (l712f),a
	ld (l719a),a
	ld (l7205),a
	ld a,#b7
	ld (l7025),a
.l7038 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l706e
.l703e equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l706b
	ld b,a
	and #1f
	bit 4,a
	jr z,l704f
	or #e0
.l704f
	ld (l713c),a
	rl b
	rl b
	jr nc,l705d
	ld a,(hl)
	ld (l71a7),a
	inc hl
.l705d
	rl b
	jr nc,l7066
	ld a,(hl)
	ld (l7212),a
	inc hl
.l7066
	ld (l703e),hl
	jr l7071
.l706b
	ld (l703e),hl
.l706e
	ld (l7038),a
.l7072 equ $ + 1
.l7071
	ld a,#00
	sub #01
	jr c,l707e
	ld (l7072),a
.l707b equ $ + 1
	ld a,#00
	jr l7099
.l707f equ $ + 1
.l707e
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l708c
	ld (l707f),hl
	jr l7099
.l708c
	ld (l707b),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l707f),hl
	ld (l7072),a
	ld a,b
.l7099
	ld (l7270),a
.l709d equ $ + 1
	ld hl,#0000
	ld de,l7135
	ldi
	ldi
	ld de,l71a0
	ldi
	ldi
	ld de,l720b
	ldi
	ldi
	ld (l709d),hl
.l70b8 equ $ + 1
	ld a,#00
	or a
	jr nz,l70ca
.l70bd equ $ + 1
	ld a,#00
	sub #01
	jr c,l70d8
	ld (l70bd),a
.l70c6 equ $ + 1
	ld hl,#0000
	jr l7110
.l70cb equ $ + 1
.l70ca
	ld a,#00
	sub #01
	jr c,l70d8
	ld (l70cb),a
	ld hl,(l70d9)
	jr l70fd
.l70d9 equ $ + 1
.l70d8
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l70f5
	ld (l70bd),a
	xor a
	ld (l70b8),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l70d9),hl
	ex de,hl
	ld (l70c6),hl
	jr l7110
.l70f5
	ld (l70cb),a
	ld a,#01
	ld (l70b8),a
.l70fd
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l70d9),hl
	ex de,hl
	jr l7110
.l7108 equ $ + 1
.l7107
	ld a,#00
	sub #01
	jr nc,l712b
.l710e equ $ + 1
	ld hl,#0000
.l7110
	ld a,(hl)
	inc hl
	srl a
	jr c,l7128
	srl a
	jr c,l711f
	ld (l7017),a
	jr l7127
.l711f
	ld (l700b),a
.l7123 equ $ + 1
	ld a,#01
	ld (l700c),a
.l7127
	xor a
.l7128
	ld (l710e),hl
.l712b
	ld (l7108),a
.l712f equ $ + 1
	ld a,#00
	sub #01
	jr nc,l7196
.l7135 equ $ + 1
	ld hl,#0000
.l7138 equ $ + 1
	ld bc,#0100
.l713c equ $ + 2
.l713b equ $ + 1
	ld de,#0000
.l713f equ $ + 2
	ld lx,#00
	call l73af
	ld a,lx
	ld (l713f),a
	ld (l72ba),hl
	exx
	ld (l7135),hl
	ld a,c
	ld (l7138),a
	ld (l72b4),a
	xor a
	or hy
	jr nz,l7194
	ld (l72d7),a
	ld d,a
	ld a,e
	ld (l713b),a
	ld l,d
	ld h,l
	ld (l72b7),hl
.l7169 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l72e8
	ldi
	ldi
	ld de,l72e0
	ldi
	ldi
	ld de,l72d9
	ldi
	ld de,l72ea
	ldi
	ld a,(hl)
	inc hl
	ld (l72c9),hl
	ld hl,l783d
	or (hl)
	ld (hl),a
.l7194
	ld a,ly
.l7196
	ld (l712f),a
.l719a equ $ + 1
	ld a,#00
	sub #01
	jr nc,l7201
.l71a0 equ $ + 1
	ld hl,#0000
.l71a3 equ $ + 1
	ld bc,#0200
.l71a7 equ $ + 2
.l71a6 equ $ + 1
	ld de,#0000
.l71aa equ $ + 2
	ld lx,#00
	call l73af
	ld a,lx
	ld (l71aa),a
	ld (l730c),hl
	exx
	ld (l71a0),hl
	ld a,c
	ld (l71a3),a
	ld (l7306),a
	xor a
	or hy
	jr nz,l71ff
	ld (l7329),a
	ld d,a
	ld a,e
	ld (l71a6),a
	ld l,d
	ld h,l
	ld (l7309),hl
.l71d4 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l733a
	ldi
	ldi
	ld de,l7332
	ldi
	ldi
	ld de,l732b
	ldi
	ld de,l733c
	ldi
	ld a,(hl)
	inc hl
	ld (l731b),hl
	ld hl,l783d
	or (hl)
	ld (hl),a
.l71ff
	ld a,ly
.l7201
	ld (l719a),a
.l7205 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l726c
.l720b equ $ + 1
	ld hl,#0000
.l720e equ $ + 1
	ld bc,#0300
.l7212 equ $ + 2
.l7211 equ $ + 1
	ld de,#0000
.l7215 equ $ + 2
	ld lx,#00
	call l73af
	ld a,lx
	ld (l7215),a
	ld (l735e),hl
	exx
	ld (l720b),hl
	ld a,c
	ld (l720e),a
	ld (l7358),a
	xor a
	or hy
	jr nz,l726a
	ld (l737b),a
	ld d,a
	ld a,e
	ld (l7211),a
	ld l,d
	ld h,l
	ld (l735b),hl
.l723f equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l738c
	ldi
	ldi
	ld de,l7384
	ldi
	ldi
	ld de,l737d
	ldi
	ld de,l738e
	ldi
	ld a,(hl)
	inc hl
	ld (l736d),hl
	ld hl,l783d
	or (hl)
	ld (hl),a
.l726a
	ld a,ly
.l726c
	ld (l7205),a
.l7270 equ $ + 1
	ld a,#00
	sub #01
	jr c,l727a
	ld (l7270),a
	jr l72b0
.l727a
	ld a,#37
	ld (l7025),a
	ld hl,(l709d)
.l7283 equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l72b0
	ld (l7038),a
	ld (l7072),a
	ld (l7108),a
.l7294 equ $ + 1
	ld hl,#0000
	ld (l703e),hl
.l729a equ $ + 1
	ld hl,#0000
	ld (l707f),hl
.l72a0 equ $ + 1
	ld hl,#0000
	ld (l709d),hl
.l72a6 equ $ + 1
	ld hl,#0000
	ld (l70d9),hl
.l72ac equ $ + 1
	ld a,#00
	ld (l70b8),a
.l72b0
	ld hl,l783d
.l72b4 equ $ + 1
	ld d,#00
	exx
.l72b7 equ $ + 1
	ld hl,#0000
.l72ba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l72b7),hl
	ld (l74ea),hl
	ld a,(l713f)
	ld lx,a
.l72c9 equ $ + 1
	ld hl,#0000
	ld iy,l76d8
	ld a,(l72d7)
	call l7444
	ex de,hl
.l72d7 equ $ + 1
	ld a,#00
.l72d9 equ $ + 1
	cp #00
	jr z,l72df
	inc a
	jr l72fc
.l72e0 equ $ + 1
.l72df
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l72f8
.l72e8 equ $ + 1
	ld de,#0000
.l72ea
	or a
	jr c,l72f8
.l72ee equ $ + 1
	ld hl,#0000
	ld (l72e0),hl
	dec a
	ld (l72d9),a
	inc a
.l72f8
	ld (l72c9),de
.l72fc
	ld (l72d7),a
	ld a,hx
	ld (l73ab),a
	exx
.l7306 equ $ + 1
	ld d,#00
	exx
.l7309 equ $ + 1
	ld hl,#0000
.l730c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l7309),hl
	ld (l74ea),hl
	ld a,(l71aa)
	ld lx,a
.l731b equ $ + 1
	ld hl,#0000
	ld iy,l7729
	ld a,(l7329)
	call l7444
	ex de,hl
.l7329 equ $ + 1
	ld a,#00
.l732b equ $ + 1
	cp #00
	jr z,l7331
	inc a
	jr l734e
.l7332 equ $ + 1
.l7331
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l734a
.l733a equ $ + 1
	ld de,#0000
.l733c
	or a
	jr c,l734a
.l7340 equ $ + 1
	ld hl,#0000
	ld (l7332),hl
	dec a
	ld (l732b),a
	inc a
.l734a
	ld (l731b),de
.l734e
	ld (l7329),a
	ld a,hx
	ld (l73a8),a
	exx
.l7358 equ $ + 1
	ld d,#00
	exx
.l735b equ $ + 1
	ld hl,#0000
.l735e equ $ + 1
	ld de,#0000
	add hl,de
	ld (l735b),hl
	ld (l74ea),hl
	ld a,(l7215)
	ld lx,a
.l736d equ $ + 1
	ld hl,#0000
	ld iy,l777a
	ld a,(l737b)
	call l7444
	ex de,hl
.l737b equ $ + 1
	ld a,#00
.l737d equ $ + 1
	cp #00
	jr z,l7383
	inc a
	jr l73a0
.l7384 equ $ + 1
.l7383
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l739c
.l738c equ $ + 1
	ld de,#0000
.l738e
	or a
	jr c,l739c
.l7392 equ $ + 1
	ld hl,#0000
	ld (l7384),hl
	dec a
	ld (l737d),a
	inc a
.l739c
	ld (l736d),de
.l73a0
	ld (l737b),a
	ld a,hx
	sla a
.l73a8 equ $ + 1
	or #00
	rla
.l73ab equ $ + 1
	or #00
	jp l76cd
.l73af
	ld a,(hl)
	inc hl
	srl a
	jr c,l73e8
	cp #60
	jr nc,l73f0
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l73c8
	and #0f
	ld c,a
.l73c8
	rl b
	jr nc,l73ce
	ld e,(hl)
	inc hl
.l73ce
	rl b
	jr nc,l73e0
.l73d2
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l73dc
	dec h
.l73dc
	ld ly,#00
	ret
.l73e0
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l73e8
	ld hy,#00
	add d
	ld lx,a
	jr l73e0
.l73f0
	ld hy,#01
	sub #60
	jr z,l7411
	dec a
	jr z,l7428
	dec a
	jr z,l741a
	dec a
	jr z,l73d2
	dec a
	jr z,l7424
	dec a
	jr z,l7439
	dec a
	jr z,l7430
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l7411
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l741a
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l7424
	ld c,(hl)
	inc hl
	jr l73d2
.l7428
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l7430
	ld a,(hl)
	inc hl
	ld (l700b),a
	ld a,b
	ld (l700c),a
.l7439
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l7444
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l74fa
	bit 4,e
	jr z,l74ac
	ld a,(hl)
	bit 6,a
	jr z,l7479
	ld d,#08
	inc hl
	and #1f
	jr z,l7460
	ld (l77cb),a
	res 3,d
.l7460
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l7469
	xor a
.l7469
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l7479
	ld (l77cb),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l7495
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l748e
	xor a
.l748e
	ld (iy+#36),a
	ld hx,d
	jr l74bf
.l7495
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l749e
	xor a
.l749e
	ld (iy+#36),a
.l74a1
	ld hx,d
	ret
.l74a4
	ld (iy+#36),#00
	ld d,#09
	jr l74a1
.l74ac
	ld d,#08
	ld a,e
	and #0f
	jr z,l74a4
	exx
	sub d
	exx
	jr nc,l74b9
	xor a
.l74b9
	ld (iy+#36),a
	ld hx,#08
.l74bf
	bit 5,e
	jr z,l74c7
	ld a,(hl)
	inc hl
	jr l74c8
.l74c7
	xor a
.l74c8
	bit 6,e
	jr z,l74d2
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l74d5
.l74d2
	ld de,#0000
.l74d5
	add lx
	cp #60
	jr c,l74dd
	ld a,#5f
.l74dd
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l760d
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l74ea equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l74fa
	or a
	jr nz,l7504
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l7504
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
	ld (l7836),a
	bit 3,e
	jr z,l7526
	ld a,(hl)
	inc hl
	ld (l77cb),a
	res 3,d
	jr l7526
.l7526
	ld hx,d
	xor a
	bit 7,b
	jr z,l7538
	bit 6,b
	jr z,l7533
	ld a,(hl)
	inc hl
.l7533
	ld (l75e7),a
	ld a,#01
.l7538
	ld (l7580),a
	ld a,b
	rra
	and #0e
	ld (l7591),a
	bit 4,e
	jp nz,l75f2
	bit 1,e
	jr z,l754f
	ld a,(hl)
	inc hl
	jr l7550
.l754f
	xor a
.l7550
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l755d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l7560
.l755d
	ld de,#0000
.l7560
	add lx
	cp #60
	jr c,l7568
	ld a,#5f
.l7568
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l760d
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l74ea)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l7580 equ $ + 1
	ld a,#00
	or a
	jr nz,l7590
	ex af,af'
	bit 5,a
	jr nz,l75fb
.l7589
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l7591 equ $ + 1
.l7590
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l759b),a
	ld a,c
.l759b equ $ + 1
	jr l759c
.l759c
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
	jr nc,l75b5
	inc bc
.l75b5
	ld a,c
	ld (l7800),a
	ld a,b
	ld (l781b),a
	ld a,(l7580)
	or a
	jr z,l75f0
	ld a,(l7591)
	ld e,a
	srl a
	add e
	ld (l75cf),a
	ld a,b
.l75cf equ $ + 1
	jr l75d0
.l75d0
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
.l75e7 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l75f0
	pop hl
	ret
.l75f2
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l7589
.l75fb
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l7800),a
	inc hl
	ld a,(hl)
	ld (l781b),a
	inc hl
	ret
.l760d
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
.l76cd
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l76d8 equ $ + 1
	ld a,#00
.l76da equ $ + 1
	cp #00
	jr z,l76f2
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
	ld (l76da),a
	exx
.l76f3 equ $ + 1
.l76f2
	ld a,#00
.l76f5 equ $ + 1
	cp #00
	jr z,l770d
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
	ld (l76f5),a
	exx
.l770e equ $ + 1
.l770d
	ld a,#00
.l7710 equ $ + 1
	cp #00
	jr z,l7728
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
	ld (l7710),a
	exx
.l7729 equ $ + 1
.l7728
	ld a,#00
.l772b equ $ + 1
	cp #00
	jr z,l7743
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
	ld (l772b),a
	exx
.l7744 equ $ + 1
.l7743
	ld a,#00
.l7746 equ $ + 1
	cp #00
	jr z,l775e
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
	ld (l7746),a
	exx
.l775f equ $ + 1
.l775e
	ld a,#00
.l7761 equ $ + 1
	cp #00
	jr z,l7779
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
	ld (l7761),a
	exx
.l777a equ $ + 1
.l7779
	ld a,#00
.l777c equ $ + 1
	cp #00
	jr z,l7794
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
	ld (l777c),a
	exx
.l7795 equ $ + 1
.l7794
	ld a,#00
.l7797 equ $ + 1
	cp #00
	jr z,l77af
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
	ld (l7797),a
	exx
.l77b0 equ $ + 1
.l77af
	ld a,#00
.l77b2 equ $ + 1
	cp #00
	jr z,l77ca
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
	ld (l77b2),a
	exx
.l77cb equ $ + 1
.l77ca
	ld a,#00
.l77cd equ $ + 1
	cp #00
	jr z,l77e5
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
	ld (l77cd),a
	exx
.l77e5
	ld a,h
.l77e7 equ $ + 1
	cp #c0
	jr z,l77ff
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
	ld (l77e7),a
	exx
.l7800 equ $ + 1
.l77ff
	ld a,#00
.l7802 equ $ + 1
	cp #00
	jr z,l781a
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
	ld (l7802),a
	exx
.l781b equ $ + 1
.l781a
	ld a,#00
.l781d equ $ + 1
	cp #00
	jr z,l7835
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
	ld (l781d),a
	exx
.l7836 equ $ + 1
.l7835
	ld a,#00
.l7838 equ $ + 1
	cp #ff
	jr nz,l7841
	ld h,a
.l783d equ $ + 1
	ld a,#00
	or a
	ret z
	ld a,h
.l7841
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
	ld (l7838),a
	ret
;
.stop_music
.l7856
;
	xor a
	ld (l770e),a
	ld (l775f),a
	ld (l77b0),a
	dec a
	ld (l7710),a
	ld (l7761),a
	ld (l77b2),a
	ld (l77e7),a
	ld a,#3f
	jp l76cd
;
.real_init_music
.l7872
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l7123),a
	ld de,#0003
	add hl,de
	ld de,l707f
	ldi
	ldi
	ld de,l709d
	ldi
	ldi
	ld de,l70d9
	ldi
	ldi
	ld de,l7169
	ldi
	ldi
	ld de,l7294
	ldi
	ldi
	ld de,l729a
	ldi
	ldi
	ld de,l72a0
	ldi
	ldi
	ld de,l72a6
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l7017),a
	ld (l7015),a
	ld (l703e),hl
	ld hl,(l70d9)
	ld (l7283),hl
	ld a,(hl)
	and #01
	ld (l70b8),a
	ld hl,(l72a6)
	ld a,(hl)
	and #01
	ld (l72ac),a
	ld hl,(l7169)
	ld (l71d4),hl
	ld (l723f),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l72c9),hl
	ld (l731b),hl
	ld (l736d),hl
	ld (l72e8),hl
	ld (l733a),hl
	ld (l738c),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l72ee),de
	ld (l7340),de
	ld (l7392),de
	ld (l72e0),de
	ld (l7332),de
	ld (l7384),de
	ld a,#37
	ld (l7025),a
	ld hl,l792e
.l791e
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l7925
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l7925
	jr l791e
.l792e
	jr l7930
.l7930
	dw l76d8,l76f3,l7729,l7744
	dw l777a,l7795,l77cb,l770e
	dw l775f,l77b0,l7800,l781b
	dw l7836,l7038,l7072,l70bd
	dw l70cb,l7108,l72d7,l7329
	dw l737b,l7138,l71a3,l720e
	dw #ff11,l76da,l76f5,l772b
	dw l7746,l777c,l7797,l77cd
	dw l77e7,l7710,l7761,l77b2
	dw l7802,l781d,l7838,l72d9
	dw l732b,l737d,#b703,l72ea
	dw l733c,l738e
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
.l7a00
	db #53,#4b,#31,#30
	db #00,#7a,#01,#32,#00,#22,#7a,#26
	db #7a,#92,#7d,#9b,#7d,#1e,#7a,#24
	db #7a,#d2,#7c,#98,#7d,#02,#c0,#00
	db #00,#e1,#c0,#00,#00,#3d,#7f,#71
	db #7f,#1f,#49,#7e,#49,#7e,#4a,#7e
	db #49,#7e,#49,#7e,#4a,#7e,#4a,#7e
	db #49,#7e,#cb,#7e,#4a,#7e,#49,#7e
	db #41,#7f,#c2,#7f,#49,#7e,#43,#80
	db #c2,#7f,#49,#7e,#43,#80,#cf,#80
	db #49,#7e,#43,#80,#50,#81,#49,#7e
	db #43,#80,#50,#81,#49,#7e,#d1,#81
	db #50,#81,#49,#7e,#d1,#81,#81,#82
	db #98,#82,#af,#82,#49,#7e,#49,#7e
	db #49,#7e,#c6,#82,#76,#83,#76,#83
	db #c6,#82,#82,#83,#82,#83,#c6,#82
	db #89,#83,#89,#83,#c6,#82,#90,#83
	db #90,#83,#c6,#82,#49,#7e,#a2,#83
	db #c6,#82,#49,#7e,#a2,#83,#c6,#82
	db #49,#7e,#a2,#83,#c6,#82,#49,#7e
	db #a2,#83,#c6,#82,#52,#84,#a2,#83
	db #c6,#82,#71,#84,#a2,#83,#c6,#82
	db #7d,#84,#a2,#83,#c6,#82,#7d,#84
	db #a2,#83,#c6,#82,#81,#84,#a2,#83
	db #c6,#82,#49,#7e,#a2,#83,#c6,#82
	db #97,#84,#a2,#83,#c6,#82,#49,#7e
	db #a2,#83,#c6,#82,#81,#84,#a2,#83
	db #c6,#82,#49,#7e,#a2,#83,#c6,#82
	db #97,#84,#a2,#83,#c6,#82,#af,#84
	db #a2,#83,#db,#84,#81,#84,#ef,#84
	db #49,#7e,#49,#7e,#ef,#84,#db,#84
	db #97,#84,#ef,#84,#8f,#85,#97,#84
	db #ef,#84,#8f,#85,#a5,#85,#ef,#84
	db #bd,#85,#a5,#85,#ef,#84,#bd,#85
	db #81,#84,#ef,#84,#49,#7e,#49,#7e
	db #ef,#84,#d5,#85,#d5,#85,#ea,#85
	db #6b,#86,#6b,#86,#ea,#85,#80,#86
	db #49,#7e,#ea,#85,#80,#86,#49,#7e
	db #ea,#85,#d0,#86,#49,#7e,#ea,#85
	db #d0,#86,#49,#7e,#ea,#85,#20,#87
	db #49,#7e,#ea,#85,#20,#87,#49,#7e
	db #ea,#85,#70,#87,#49,#7e,#ea,#85
	db #70,#87,#49,#7e,#ea,#85,#80,#86
	db #c0,#87,#ea,#85,#80,#86,#c0,#87
	db #ea,#85,#d0,#86,#08,#88,#ea,#85
	db #d0,#86,#08,#88,#ea,#85,#20,#87
	db #50,#88,#ea,#85,#20,#87,#50,#88
	db #ea,#85,#70,#87,#98,#88,#ea,#85
	db #70,#87,#98,#88,#ea,#85,#80,#86
	db #e0,#88,#ea,#85,#80,#86,#63,#89
	db #ea,#85,#d0,#86,#e6,#89,#ea,#85
	db #d0,#86,#69,#8a,#ea,#85,#20,#87
	db #ec,#8a,#ea,#85,#20,#87,#6f,#8b
	db #ea,#85,#70,#87,#f2,#8b,#ea,#85
	db #70,#87,#75,#8c,#ea,#85,#80,#86
	db #e4,#8c,#ea,#85,#80,#86,#e4,#8c
	db #ea,#85,#d0,#86,#ec,#8c,#ea,#85
	db #d0,#86,#ec,#8c,#ea,#85,#20,#87
	db #f4,#8c,#ea,#85,#20,#87,#f4,#8c
	db #ea,#85,#70,#87,#ec,#8c,#ea,#85
	db #70,#87,#fc,#8c,#ea,#85,#15,#8d
	db #c0,#87,#ea,#85,#15,#8d,#c0,#87
	db #ea,#85,#5d,#8d,#08,#88,#ea,#85
	db #5d,#8d,#08,#88,#ea,#85,#a5,#8d
	db #50,#88,#ea,#85,#a5,#8d,#50,#88
	db #ea,#85,#ed,#8d,#98,#88,#ea,#85
	db #ed,#8d,#98,#88,#ea,#85,#35,#8e
	db #c0,#87,#ea,#85,#35,#8e,#c0,#87
	db #ea,#85,#35,#8e,#08,#88,#ea,#85
	db #35,#8e,#08,#88,#ea,#85,#35,#8e
	db #50,#88,#ea,#85,#35,#8e,#50,#88
	db #ea,#85,#35,#8e,#98,#88,#ea,#85
	db #35,#8e,#98,#88,#ea,#85,#77,#8e
	db #f8,#8e,#35,#8e,#77,#8e,#f8,#8e
	db #35,#8e,#79,#8f,#fa,#8f,#35,#8e
	db #79,#8f,#fa,#8f,#35,#8e,#7b,#90
	db #fc,#90,#35,#8e,#7b,#90,#fc,#90
	db #35,#8e,#7d,#91,#fe,#91,#35,#8e
	db #7d,#91,#fe,#91,#35,#8e,#77,#8e
	db #15,#8d,#7f,#92,#77,#8e,#15,#8d
	db #49,#7e,#79,#8f,#5d,#8d,#49,#7e
	db #79,#8f,#5d,#8d,#49,#7e,#7b,#90
	db #a5,#8d,#49,#7e,#7b,#90,#a5,#8d
	db #49,#7e,#7d,#91,#ed,#8d,#52,#84
	db #7d,#91,#ed,#8d,#71,#84,#15,#8d
	db #80,#86,#81,#92,#15,#8d,#80,#86
	db #81,#92,#5d,#8d,#d0,#86,#f8,#92
	db #5d,#8d,#d0,#86,#f8,#92,#a5,#8d
	db #20,#87,#6f,#93,#a5,#8d,#20,#87
	db #6f,#93,#ed,#8d,#70,#87,#e6,#93
	db #ed,#8d,#70,#87,#5d,#94,#d4,#94
	db #80,#86,#81,#92,#e5,#94,#80,#86
	db #81,#92,#13,#95,#d0,#86,#f8,#92
	db #30,#95,#d0,#86,#f8,#92,#51,#95
	db #20,#87,#6f,#93,#70,#95,#20,#87
	db #6f,#93,#9e,#95,#70,#87,#e6,#93
	db #a6,#95,#70,#87,#5d,#94,#b0,#95
	db #80,#86,#81,#92,#cd,#95,#80,#86
	db #81,#92,#f0,#95,#d0,#86,#f8,#92
	db #1d,#96,#d0,#86,#f8,#92,#59,#96
	db #20,#87,#6f,#93,#9d,#96,#20,#87
	db #6f,#93,#bb,#96,#70,#87,#e6,#93
	db #db,#96,#70,#87,#5d,#94,#23,#97
	db #d4,#94,#81,#92,#59,#97,#e5,#94
	db #81,#92,#85,#97,#13,#95,#f8,#92
	db #a8,#97,#30,#95,#f8,#92,#c5,#97
	db #51,#95,#6f,#93,#e7,#97,#70,#95
	db #6f,#93,#12,#98,#9e,#95,#e6,#93
	db #22,#98,#a6,#95,#5d,#94,#23,#98
	db #b0,#95,#81,#92,#41,#98,#cd,#95
	db #81,#92,#5d,#98,#f0,#95,#f8,#92
	db #8c,#98,#1d,#96,#f8,#92,#c7,#98
	db #59,#96,#6f,#93,#0a,#99,#9d,#96
	db #6f,#93,#26,#99,#bb,#96,#e6,#93
	db #46,#99,#72,#99,#5d,#94,#fe,#9b
	db #99,#1e,#9b,#99,#3e,#9b,#99,#b1
	db #7d,#bb,#7d,#c3,#7d,#dc,#7d,#e6
	db #7d,#f3,#7d,#02,#7e,#0c,#7e,#18
	db #7e,#24,#7e,#30,#7e,#b8,#7d,#bb
	db #7d,#ff,#37,#00,#00,#00,#00,#c2
	db #7d,#c3,#7d,#00,#37,#00,#0d,#ca
	db #7d,#dc,#7d,#00,#37,#00,#4d,#ff
	db #ff,#4d,#ff,#ff,#4d,#ff,#ff,#4d
	db #01,#00,#4d,#01,#00,#4d,#01,#00
	db #e4,#7d,#e6,#7d,#00,#37,#00,#00
	db #81,#10,#ed,#7d,#f3,#7d,#00,#37
	db #00,#0d,#0d,#2d,#0c,#2d,#0c,#b8
	db #7d,#02,#7e,#00,#b7,#00,#0d,#0d
	db #2d,#0c,#2b,#0c,#09,#07,#09,#7e
	db #0c,#7e,#00,#37,#00,#4d,#ff,#ff
	db #13,#7e,#18,#7e,#00,#37,#00,#0c
	db #2c,#03,#2c,#07,#1f,#7e,#24,#7e
	db #00,#37,#00,#0c,#2c,#03,#2c,#08
	db #2b,#7e,#30,#7e,#00,#37,#00,#0c
	db #2c,#04,#2c,#08,#37,#7e,#49,#7e
	db #00,#37,#00,#4d,#01,#00,#4d,#01
	db #00,#4d,#01,#00,#4d,#ff,#ff,#4d
	db #ff,#ff,#4d,#ff,#ff,#c2,#82,#c1
	db #01,#fc,#c6,#04,#83,#c4,#01,#c4
	db #02,#c4,#03,#c4,#04,#c4,#05,#c4
	db #06,#c4,#07,#c4,#08,#c4,#09,#c4
	db #0a,#c4,#0b,#c4,#0c,#c4,#0d,#80
	db #41,#fc,#c6,#04,#81,#c4,#01,#c4
	db #02,#c4,#03,#c4,#04,#c4,#05,#c4
	db #06,#c4,#07,#c4,#08,#c4,#09,#c4
	db #0a,#c4,#0b,#c4,#0c,#c4,#0d,#7c
	db #41,#fc,#c6,#04,#7d,#c4,#01,#c4
	db #02,#c4,#03,#c4,#04,#c4,#05,#c4
	db #06,#c4,#07,#c4,#08,#c4,#09,#c4
	db #0a,#c4,#0b,#c4,#0c,#c4,#0d,#78
	db #41,#fc,#c6,#04,#79,#c4,#01,#c4
	db #02,#c4,#03,#c4,#04,#c4,#05,#c4
	db #06,#c4,#07,#c4,#08,#c4,#09,#c4
	db #0a,#c4,#0b,#c4,#0c,#c4,#0d,#c4
	db #0e,#c4,#0f,#d8,#7c,#c1,#01,#fc
	db #c6,#04,#7d,#c4,#01,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#c4,#06,#c4
	db #07,#c4,#08,#c4,#09,#c4,#0a,#c4
	db #0b,#c4,#0c,#c4,#0d,#78,#41,#fc
	db #c6,#04,#79,#c4,#01,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#c4,#06,#c4
	db #07,#c4,#08,#c4,#09,#c4,#0a,#c4
	db #0b,#c4,#0c,#c4,#0d,#74,#41,#fc
	db #c6,#04,#75,#c4,#01,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#c4,#06,#c4
	db #07,#c4,#08,#c4,#09,#c4,#0a,#c4
	db #0b,#c4,#0c,#c4,#0d,#72,#41,#fc
	db #c6,#04,#73,#c4,#01,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#c4,#06,#c4
	db #07,#c4,#08,#c4,#09,#c4,#0a,#c4
	db #0b,#c4,#0c,#c4,#0d,#7c,#c1,#01
	db #fc,#c6,#04,#7d,#c4,#01,#c4,#02
	db #c4,#03,#c4,#04,#c4,#05,#c4,#06
	db #c4,#07,#c4,#08,#c4,#09,#c4,#0a
	db #c4,#0b,#c4,#0c,#c4,#0d,#78,#41
	db #fc,#c6,#04,#79,#c4,#01,#c4,#02
	db #c4,#03,#c4,#04,#c4,#05,#c4,#06
	db #c4,#07,#c4,#08,#c4,#09,#c4,#0a
	db #c4,#0b,#c4,#0c,#c4,#0d,#74,#41
	db #fc,#c6,#04,#75,#c4,#01,#c4,#02
	db #c4,#03,#c4,#04,#c4,#05,#c4,#06
	db #c4,#07,#c4,#08,#c4,#09,#c4,#0a
	db #c4,#0b,#c4,#0c,#c4,#0d,#72,#41
	db #fc,#c6,#04,#73,#c4,#01,#c4,#02
	db #c4,#03,#c4,#04,#c4,#05,#82,#c1
	db #01,#fc,#c6,#04,#83,#c4,#01,#c4
	db #02,#c4,#03,#c4,#04,#c4,#05,#7c
	db #41,#fc,#c6,#04,#7d,#c4,#01,#c4
	db #02,#c4,#03,#c4,#04,#c4,#05,#80
	db #41,#fc,#c6,#04,#81,#c4,#01,#c4
	db #02,#c4,#03,#c4,#04,#c4,#05,#78
	db #41,#fc,#c6,#04,#79,#c4,#01,#c4
	db #02,#c4,#03,#c4,#04,#c4,#05,#7c
	db #41,#fc,#c6,#04,#7d,#c4,#01,#c4
	db #02,#c4,#03,#c4,#04,#c4,#05,#74
	db #41,#fc,#c6,#04,#75,#c4,#01,#c4
	db #02,#c4,#03,#c4,#04,#c4,#05,#78
	db #41,#fc,#c6,#04,#79,#c4,#01,#c4
	db #02,#c4,#03,#c4,#04,#c4,#05,#72
	db #41,#fc,#c6,#04,#73,#c4,#01,#c4
	db #02,#c4,#03,#c4,#04,#c4,#05,#6a
	db #c1,#01,#f6,#c6,#0a,#6a,#80,#02
	db #c4,#01,#c4,#02,#c4,#03,#c4,#04
	db #c4,#05,#c4,#06,#c4,#07,#c4,#08
	db #c4,#09,#c4,#0a,#c4,#0b,#c4,#0c
	db #c4,#0d,#68,#c1,#01,#f6,#c6,#0a
	db #68,#80,#02,#c4,#01,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#c4,#06,#c4
	db #07,#c4,#08,#c4,#09,#c4,#0a,#c4
	db #0b,#c4,#0c,#c4,#0d,#64,#c1,#01
	db #f6,#c6,#0a,#64,#80,#02,#c4,#01
	db #c4,#02,#c4,#03,#c4,#04,#c4,#05
	db #c4,#06,#c4,#07,#c4,#08,#c4,#09
	db #c4,#0a,#c4,#0b,#c4,#0c,#c4,#0d
	db #60,#c1,#01,#f6,#c6,#0a,#60,#80
	db #02,#c4,#01,#c4,#02,#c4,#03,#c4
	db #04,#c4,#05,#c4,#06,#c4,#07,#c4
	db #08,#c4,#09,#c4,#0a,#c4,#0b,#c4
	db #0c,#c4,#0d,#6a,#c1,#01,#fc,#c6
	db #04,#6b,#c4,#01,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#64,#41,#fc,#c6
	db #04,#65,#c4,#01,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#68,#41,#fc,#c6
	db #04,#69,#c4,#01,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#60,#41,#fc,#c6
	db #04,#61,#c4,#01,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#64,#41,#fc,#c6
	db #04,#65,#c4,#01,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#5c,#41,#fc,#c6
	db #04,#5d,#c4,#01,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#60,#41,#fc,#c6
	db #04,#61,#c4,#01,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#5a,#41,#fc,#c6
	db #04,#5b,#c4,#01,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#52,#c1,#01,#fc
	db #c6,#04,#53,#c4,#01,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#4c,#41,#fc
	db #c6,#04,#4d,#c4,#01,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#50,#41,#fc
	db #c6,#04,#51,#c4,#01,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#48,#41,#fc
	db #c6,#04,#49,#c4,#01,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#4c,#41,#fc
	db #c6,#04,#4d,#c4,#01,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#44,#41,#fc
	db #c6,#04,#45,#c4,#01,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#48,#41,#fc
	db #c6,#04,#49,#c4,#01,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#42,#41,#fc
	db #c6,#04,#43,#c4,#01,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#6a,#c1,#01
	db #f6,#c6,#0a,#6a,#83,#02,#c4,#02
	db #64,#c1,#01,#f6,#c6,#0a,#64,#83
	db #02,#c4,#02,#68,#c1,#01,#f6,#c6
	db #0a,#68,#83,#02,#c4,#02,#60,#c1
	db #01,#f6,#c6,#0a,#60,#83,#02,#c4
	db #02,#64,#c1,#01,#f6,#c6,#0a,#64
	db #83,#02,#c4,#02,#5c,#c1,#01,#f6
	db #c6,#0a,#5c,#83,#02,#c4,#02,#60
	db #c1,#01,#f6,#c6,#0a,#60,#83,#02
	db #c4,#02,#5a,#c1,#01,#f6,#c6,#0a
	db #5a,#83,#02,#c4,#02,#6a,#c1,#01
	db #f6,#c6,#0a,#6a,#83,#02,#c4,#02
	db #64,#c1,#01,#f6,#c6,#0a,#64,#83
	db #02,#c4,#02,#68,#c1,#01,#f6,#c6
	db #0a,#68,#83,#02,#c4,#02,#60,#c1
	db #01,#f6,#c6,#0a,#60,#83,#02,#c4
	db #02,#64,#c1,#01,#f6,#c6,#0a,#64
	db #83,#02,#c4,#02,#5c,#c1,#01,#f6
	db #c6,#0a,#5c,#83,#02,#c4,#02,#60
	db #c1,#01,#f6,#c6,#0a,#60,#83,#02
	db #c4,#02,#5a,#c1,#01,#f6,#c6,#0a
	db #5a,#83,#02,#c4,#02,#5a,#95,#01
	db #c4,#09,#c4,#08,#c4,#07,#c4,#05
	db #c4,#03,#c4,#02,#c4,#01,#c4,#00
	db #5a,#80,#02,#c2,#34,#95,#01,#c4
	db #09,#c4,#08,#c4,#07,#c4,#05,#c4
	db #03,#c4,#02,#c4,#01,#c4,#00,#34
	db #80,#02,#c2,#6a,#95,#01,#c4,#09
	db #c4,#08,#c4,#07,#c4,#05,#c4,#03
	db #c4,#02,#c4,#01,#c4,#00,#6a,#80
	db #02,#c2,#82,#c1,#01,#fc,#c6,#04
	db #82,#83,#02,#c4,#02,#7c,#c1,#01
	db #fc,#c6,#04,#7c,#83,#02,#c4,#02
	db #80,#c1,#01,#fc,#c6,#04,#80,#83
	db #02,#c4,#02,#78,#c1,#01,#fc,#c6
	db #04,#78,#83,#02,#c4,#02,#7c,#c1
	db #01,#fc,#c6,#04,#7c,#83,#02,#c4
	db #02,#74,#c1,#01,#fc,#c6,#04,#74
	db #83,#02,#c4,#02,#78,#c1,#01,#fc
	db #c6,#04,#78,#83,#02,#c4,#02,#72
	db #c1,#01,#fc,#c6,#04,#72,#83,#02
	db #c4,#02,#82,#c1,#01,#fc,#c6,#04
	db #82,#83,#02,#c4,#02,#7c,#c1,#01
	db #fc,#c6,#04,#7c,#83,#02,#c4,#02
	db #80,#c1,#01,#fc,#c6,#04,#80,#83
	db #02,#c4,#02,#78,#c1,#01,#fc,#c6
	db #04,#78,#83,#02,#c4,#02,#7c,#c1
	db #01,#fc,#c6,#04,#7c,#83,#02,#c4
	db #02,#74,#c1,#01,#fc,#c6,#04,#74
	db #83,#02,#c4,#02,#78,#c1,#01,#fc
	db #c6,#04,#78,#83,#02,#c4,#02,#72
	db #c1,#01,#fc,#c6,#04,#72,#83,#02
	db #c4,#02,#c4,#01,#ea,#c4,#02,#ea
	db #c4,#03,#ea,#c4,#04,#c2,#c4,#05
	db #c0,#1e,#c4,#06,#c2,#c4,#07,#c0
	db #1e,#c4,#08,#c2,#c4,#09,#ea,#c4
	db #0a,#ea,#c4,#0b,#ea,#c4,#0c,#da
	db #c4,#0d,#d2,#c4,#0e,#c2,#72,#c1
	db #01,#fc,#c6,#04,#72,#83,#02,#c4
	db #02,#82,#c1,#01,#fc,#c6,#04,#82
	db #83,#02,#c4,#02,#7c,#c1,#01,#fc
	db #c6,#04,#7c,#83,#02,#c4,#02,#80
	db #c1,#01,#fc,#c6,#04,#80,#83,#02
	db #c4,#02,#78,#c1,#01,#fc,#c6,#04
	db #78,#83,#02,#c4,#02,#7c,#c1,#01
	db #fc,#c6,#04,#7c,#83,#02,#c4,#02
	db #74,#c1,#01,#fc,#c6,#04,#74,#83
	db #02,#c4,#02,#78,#c1,#01,#fc,#c6
	db #04,#78,#83,#02,#c4,#02,#72,#c1
	db #01,#fc,#c6,#04,#72,#83,#02,#c4
	db #02,#82,#c1,#01,#fc,#c6,#04,#82
	db #83,#02,#c4,#02,#7c,#c1,#01,#fc
	db #c6,#04,#7c,#83,#02,#c4,#02,#80
	db #c1,#01,#fc,#c6,#04,#80,#83,#02
	db #c4,#02,#78,#c1,#01,#fc,#c6,#04
	db #78,#83,#02,#c4,#02,#7c,#c1,#01
	db #fc,#c6,#04,#7c,#83,#02,#c4,#02
	db #74,#c1,#01,#fc,#c6,#04,#74,#83
	db #02,#c4,#02,#78,#c1,#01,#fc,#c6
	db #04,#78,#83,#02,#c4,#02,#34,#9d
	db #01,#d2,#c4,#0d,#d2,#c4,#0c,#d2
	db #c4,#0b,#d2,#c4,#0a,#da,#c4,#09
	db #da,#c4,#08,#da,#c4,#07,#da,#c4
	db #06,#da,#c4,#05,#c2,#c4,#04,#ea
	db #c4,#03,#ea,#c4,#02,#ea,#c4,#01
	db #c2,#30,#81,#01,#c2,#30,#c1,#01
	db #f8,#c6,#f8,#c6,#f8,#c6,#f8,#c6
	db #f8,#c6,#f8,#c6,#f8,#c6,#f8,#c6
	db #f8,#35,#c2,#2c,#c1,#01,#f8,#c6
	db #f8,#c6,#f8,#c6,#f8,#c6,#f8,#c6
	db #f8,#c6,#f8,#c6,#f8,#c6,#f8,#c6
	db #f8,#31,#c2,#38,#c1,#01,#f8,#c6
	db #f8,#c6,#f8,#c6,#f8,#c6,#f8,#c6
	db #f8,#c6,#f8,#c6,#f8,#c6,#f8,#c6
	db #f8,#3f,#c0,#24,#36,#40,#f8,#c6
	db #f8,#c6,#f8,#c6,#f8,#c6,#f8,#c6
	db #f8,#c6,#f8,#c6,#f8,#3b,#c2,#3e
	db #c1,#01,#fa,#c6,#fa,#c6,#fa,#c6
	db #fa,#c6,#fa,#c6,#fa,#c6,#fa,#c6
	db #fa,#43,#c2,#9a,#81,#02,#ce,#82
	db #c0,#01,#fc,#c6,#04,#94,#80,#02
	db #ce,#7c,#c0,#01,#fc,#c6,#04,#98
	db #80,#02,#ce,#80,#c0,#01,#fc,#c6
	db #04,#90,#80,#02,#ce,#78,#c0,#01
	db #fc,#c6,#04,#94,#80,#02,#ce,#7c
	db #c0,#01,#fc,#c6,#04,#8c,#80,#02
	db #ce,#74,#c0,#01,#fc,#c6,#04,#90
	db #80,#02,#ce,#78,#c0,#01,#fc,#c6
	db #04,#8a,#80,#02,#ce,#72,#c0,#01
	db #fc,#c6,#04,#9a,#80,#02,#ce,#82
	db #c0,#01,#fc,#c6,#04,#94,#80,#02
	db #ce,#7c,#c0,#01,#fc,#c6,#04,#98
	db #80,#02,#ce,#80,#c0,#01,#fc,#c6
	db #04,#90,#80,#02,#ce,#78,#c0,#01
	db #fc,#c6,#04,#94,#80,#02,#ce,#7c
	db #c0,#01,#fc,#c6,#04,#8c,#80,#02
	db #ce,#74,#c0,#01,#fc,#c6,#04,#90
	db #80,#02,#ce,#78,#c0,#01,#fc,#c6
	db #04,#8a,#80,#02,#ce,#72,#c0,#01
	db #fc,#c6,#04,#3a,#c1,#01,#fa,#c6
	db #fa,#c6,#fa,#c6,#fa,#c6,#fa,#c6
	db #fa,#c6,#fa,#c6,#fa,#c6,#fa,#3f
	db #c2,#28,#c1,#01,#f8,#c6,#f8,#c6
	db #f8,#c6,#f8,#c6,#f8,#c6,#f8,#c6
	db #f8,#c6,#f8,#c6,#f8,#c6,#f8,#2d
	db #c2,#36,#c1,#01,#fa,#c6,#fa,#c6
	db #fa,#c6,#fa,#c6,#fa,#c6,#fa,#c6
	db #fa,#c6,#fa,#c6,#fa,#c6,#fa,#3b
	db #c2,#c4,#01,#da,#c4,#02,#da,#c4
	db #03,#da,#c4,#04,#da,#c4,#05,#da
	db #c4,#06,#da,#c4,#07,#c2,#34,#81
	db #02,#c4,#01,#34,#01,#c4,#01,#38
	db #01,#c4,#01,#34,#01,#c4,#01,#3a
	db #01,#c4,#01,#34,#01,#c4,#01,#3e
	db #01,#c4,#01,#34,#01,#c4,#01,#42
	db #01,#c4,#01,#34,#01,#c4,#01,#3e
	db #01,#c4,#01,#34,#01,#c4,#01,#3a
	db #01,#c4,#01,#34,#01,#c4,#01,#38
	db #01,#c4,#01,#34,#01,#c4,#01,#34
	db #01,#c4,#01,#34,#01,#c4,#01,#38
	db #01,#c4,#01,#34,#01,#c4,#01,#3a
	db #01,#c4,#01,#34,#01,#c4,#01,#3e
	db #01,#c4,#01,#34,#01,#c4,#01,#42
	db #01,#c4,#01,#34,#01,#c4,#01,#3e
	db #01,#c4,#01,#34,#01,#c4,#01,#3a
	db #01,#c4,#01,#34,#01,#c4,#01,#38
	db #01,#c4,#01,#34,#01,#c4,#01,#c4
	db #08,#ea,#c4,#09,#ea,#c4,#0a,#ea
	db #c4,#0b,#da,#c4,#0c,#d2,#c4,#0d
	db #ce,#c4,#0e,#c2,#4c,#81,#03,#ce
	db #4d,#ce,#4d,#ce,#4d,#ce,#65,#ce
	db #4d,#ce,#ca,#ce,#4c,#80,#03,#ce
	db #ca,#ce,#4c,#80,#03,#ce,#4d,#ce
	db #ca,#ce,#64,#80,#03,#ce,#4d,#ce
	db #4d,#ce,#ca,#ce,#4c,#80,#03,#ce
	db #4d,#ce,#4d,#ce,#4d,#ce,#65,#ce
	db #4d,#ce,#ca,#ce,#4c,#80,#03,#ce
	db #ca,#ce,#4c,#80,#03,#ce,#4d,#ce
	db #ca,#ce,#64,#80,#03,#ce,#4d,#ce
	db #4d,#ce,#ca,#c2,#48,#81,#03,#ce
	db #49,#ce,#49,#ce,#49,#ce,#61,#ce
	db #49,#ce,#ca,#ce,#48,#80,#03,#ce
	db #ca,#ce,#48,#80,#03,#ce,#49,#ce
	db #ca,#ce,#60,#80,#03,#ce,#49,#ce
	db #49,#ce,#ca,#ce,#48,#80,#03,#ce
	db #49,#ce,#49,#ce,#49,#ce,#61,#ce
	db #49,#ce,#ca,#ce,#48,#80,#03,#ce
	db #ca,#ce,#48,#80,#03,#ce,#49,#ce
	db #ca,#ce,#60,#80,#03,#ce,#49,#ce
	db #49,#ce,#ca,#c2,#44,#81,#03,#ce
	db #45,#ce,#45,#ce,#45,#ce,#5d,#ce
	db #45,#ce,#ca,#ce,#44,#80,#03,#ce
	db #ca,#ce,#44,#80,#03,#ce,#45,#ce
	db #ca,#ce,#5c,#80,#03,#ce,#45,#ce
	db #45,#ce,#ca,#ce,#44,#80,#03,#ce
	db #45,#ce,#45,#ce,#45,#ce,#5d,#ce
	db #45,#ce,#ca,#ce,#44,#80,#03,#ce
	db #ca,#ce,#44,#80,#03,#ce,#45,#ce
	db #ca,#ce,#5c,#80,#03,#ce,#45,#ce
	db #45,#ce,#ca,#c2,#42,#81,#03,#ce
	db #43,#ce,#43,#ce,#43,#ce,#5b,#ce
	db #43,#ce,#ca,#ce,#42,#80,#03,#ce
	db #ca,#ce,#42,#80,#03,#ce,#43,#ce
	db #ca,#ce,#5a,#80,#03,#ce,#43,#ce
	db #43,#ce,#ca,#ce,#42,#80,#03,#ce
	db #43,#ce,#43,#ce,#43,#ce,#5b,#ce
	db #43,#ce,#ca,#ce,#42,#80,#03,#ce
	db #ca,#ce,#42,#80,#03,#ce,#43,#ce
	db #ca,#ce,#5a,#80,#03,#ce,#43,#ce
	db #43,#ce,#ca,#c2,#4c,#83,#04,#ce
	db #4d,#ce,#65,#ce,#4d,#ce,#4d,#ce
	db #65,#ce,#4d,#ce,#4d,#ce,#65,#ce
	db #4d,#ce,#4d,#ce,#4d,#ce,#65,#ce
	db #4c,#80,#05,#ce,#4d,#ce,#4d,#ce
	db #4c,#80,#04,#ce,#4d,#ce,#65,#ce
	db #4d,#ce,#4d,#ce,#65,#ce,#4d,#ce
	db #4d,#ce,#65,#ce,#4d,#ce,#4d,#ce
	db #4d,#ce,#65,#ce,#4c,#80,#05,#ce
	db #4d,#ce,#4d,#c2,#48,#83,#04,#ce
	db #49,#ce,#65,#ce,#49,#ce,#49,#ce
	db #65,#ce,#49,#ce,#49,#ce,#65,#ce
	db #49,#ce,#49,#ce,#49,#ce,#65,#ce
	db #48,#80,#05,#ce,#49,#ce,#49,#ce
	db #48,#80,#04,#ce,#49,#ce,#65,#ce
	db #49,#ce,#49,#ce,#65,#ce,#49,#ce
	db #49,#ce,#65,#ce,#49,#ce,#49,#ce
	db #49,#ce,#65,#ce,#48,#80,#05,#ce
	db #49,#ce,#49,#c2,#44,#83,#04,#ce
	db #45,#ce,#65,#ce,#45,#ce,#45,#ce
	db #65,#ce,#45,#ce,#45,#ce,#65,#ce
	db #45,#ce,#45,#ce,#45,#ce,#65,#ce
	db #44,#80,#05,#ce,#45,#ce,#45,#ce
	db #44,#80,#04,#ce,#45,#ce,#65,#ce
	db #45,#ce,#45,#ce,#65,#ce,#45,#ce
	db #45,#ce,#65,#ce,#45,#ce,#45,#ce
	db #45,#ce,#65,#ce,#44,#80,#05,#ce
	db #45,#ce,#45,#c2,#42,#83,#04,#ce
	db #43,#ce,#65,#ce,#43,#ce,#43,#ce
	db #65,#ce,#43,#ce,#43,#ce,#65,#ce
	db #43,#ce,#43,#ce,#43,#ce,#65,#ce
	db #42,#80,#05,#ce,#43,#ce,#43,#ce
	db #42,#80,#04,#ce,#43,#ce,#65,#ce
	db #43,#ce,#43,#ce,#65,#ce,#43,#ce
	db #43,#ce,#65,#ce,#43,#ce,#43,#ce
	db #43,#ce,#65,#ce,#42,#80,#05,#ce
	db #43,#ce,#43,#c2,#64,#c5,#01,#ef
	db #c6,#ef,#c6,#11,#c6,#11,#c6,#ef
	db #c6,#ef,#c6,#11,#c6,#11,#c6,#ef
	db #c6,#ef,#c6,#11,#c6,#11,#c6,#ef
	db #c6,#ef,#c6,#11,#c6,#11,#c6,#ef
	db #c6,#ef,#c6,#11,#c6,#11,#c6,#ef
	db #c6,#ef,#c6,#11,#c6,#11,#c6,#ef
	db #c6,#ef,#c6,#11,#c6,#11,#c6,#ef
	db #c6,#ef,#c6,#11,#c6,#11,#64,#40
	db #f0,#c6,#f0,#c6,#10,#c6,#10,#c6
	db #f0,#c6,#f0,#c6,#10,#c6,#10,#c6
	db #f0,#c6,#f0,#c6,#10,#c6,#10,#c6
	db #f0,#c6,#f0,#c6,#10,#c6,#10,#c6
	db #f0,#c6,#f0,#c6,#10,#c6,#10,#c6
	db #f0,#c6,#f0,#c6,#10,#c6,#10,#c6
	db #f0,#c6,#f0,#c6,#10,#c6,#10,#c6
	db #f0,#c6,#f0,#c6,#10,#c6,#10,#64
	db #c5,#01,#f1,#c6,#f1,#c6,#0f,#c6
	db #0f,#c6,#f1,#c6,#f1,#c6,#0f,#c6
	db #0f,#c6,#f1,#c6,#f1,#c6,#0f,#c6
	db #0f,#c6,#f1,#c6,#f1,#c6,#0f,#c6
	db #0f,#c6,#f1,#c6,#f1,#c6,#0f,#c6
	db #0f,#c6,#f1,#c6,#f1,#c6,#0f,#c6
	db #0f,#c6,#f1,#c6,#f1,#c6,#0f,#c6
	db #0f,#c6,#f1,#c6,#f1,#c6,#0f,#c6
	db #0f,#64,#40,#f2,#c6,#f2,#c6,#0e
	db #c6,#0e,#c6,#f2,#c6,#f2,#c6,#0e
	db #c6,#0e,#c6,#f2,#c6,#f2,#c6,#0e
	db #c6,#0e,#c6,#f2,#c6,#f2,#c6,#0e
	db #c6,#0e,#c6,#f2,#c6,#f2,#c6,#0e
	db #c6,#0e,#c6,#f2,#c6,#f2,#c6,#0e
	db #c6,#0e,#c6,#f2,#c6,#f2,#c6,#0e
	db #c6,#0e,#c6,#f2,#c6,#f2,#c6,#0e
	db #c6,#0e,#64,#c5,#01,#f3,#c6,#f3
	db #c6,#0d,#c6,#0d,#c6,#f3,#c6,#f3
	db #c6,#0d,#c6,#0d,#c6,#f3,#c6,#f3
	db #c6,#0d,#c6,#0d,#c6,#f3,#c6,#f3
	db #c6,#0d,#c6,#0d,#c6,#f3,#c6,#f3
	db #c6,#0d,#c6,#0d,#c6,#f3,#c6,#f3
	db #c6,#0d,#c6,#0d,#c6,#f3,#c6,#f3
	db #c6,#0d,#c6,#0d,#c6,#f3,#c6,#f3
	db #c6,#0d,#c6,#0d,#64,#40,#f4,#c6
	db #f4,#c6,#0c,#c6,#0c,#c6,#f4,#c6
	db #f4,#c6,#0c,#c6,#0c,#c6,#f4,#c6
	db #f4,#c6,#0c,#c6,#0c,#c6,#f4,#c6
	db #f4,#c6,#0c,#c6,#0c,#c6,#f4,#c6
	db #f4,#c6,#0c,#c6,#0c,#c6,#f4,#c6
	db #f4,#c6,#0c,#c6,#0c,#c6,#f4,#c6
	db #f4,#c6,#0c,#c6,#0c,#c6,#f4,#c6
	db #f4,#c6,#0c,#c6,#0c,#64,#c5,#01
	db #f5,#c6,#f5,#c6,#0b,#c6,#0b,#c6
	db #f5,#c6,#f5,#c6,#0b,#c6,#0b,#c6
	db #f5,#c6,#f5,#c6,#0b,#c6,#0b,#c6
	db #f5,#c6,#f5,#c6,#0b,#c6,#0b,#c6
	db #f5,#c6,#f5,#c6,#0b,#c6,#0b,#c6
	db #f5,#c6,#f5,#c6,#0b,#c6,#0b,#c6
	db #f5,#c6,#f5,#c6,#0b,#c6,#0b,#c6
	db #f5,#c6,#f5,#c6,#0b,#c6,#0b,#64
	db #40,#f6,#c6,#f6,#c6,#0a,#c6,#0a
	db #c6,#f6,#c6,#f6,#c6,#0a,#c6,#0a
	db #c6,#f6,#c6,#f6,#c6,#0a,#c6,#0a
	db #c6,#f6,#c6,#f6,#c6,#0a,#c6,#0a
	db #c6,#f6,#c6,#f6,#c6,#0a,#c6,#0a
	db #c6,#f6,#c6,#f6,#c6,#0a,#c6,#0a
	db #c6,#f6,#c6,#f6,#c6,#0a,#c6,#0a
	db #c6,#f6,#c6,#f6,#c6,#0a,#c6,#0a
	db #64,#c5,#01,#f7,#c6,#f7,#c6,#09
	db #c6,#09,#c6,#f7,#c6,#f7,#c6,#09
	db #c6,#09,#c6,#f7,#c6,#f7,#c6,#09
	db #c6,#09,#c6,#f7,#c6,#f7,#c6,#09
	db #c6,#09,#c6,#f7,#c6,#f7,#c6,#09
	db #c6,#09,#c6,#f7,#c6,#f7,#c6,#09
	db #c6,#09,#c6,#f7,#c6,#f7,#c6,#09
	db #c6,#09,#c6,#f7,#c6,#f7,#c6,#09
	db #c6,#09,#64,#40,#f8,#c6,#f8,#c6
	db #08,#c6,#08,#c6,#f8,#c6,#f8,#c6
	db #08,#c6,#08,#c6,#f8,#c6,#f8,#c6
	db #08,#c6,#08,#c6,#f8,#c6,#f8,#c6
	db #08,#c6,#08,#c6,#f8,#c6,#f8,#c6
	db #08,#c6,#08,#c6,#f8,#c6,#f8,#c6
	db #08,#c6,#08,#c6,#f8,#c6,#f8,#c6
	db #08,#c6,#08,#c6,#f8,#c6,#f8,#c6
	db #08,#c6,#08,#64,#c5,#01,#f9,#c6
	db #f9,#c6,#07,#c6,#07,#c6,#f9,#c6
	db #f9,#c6,#07,#c6,#07,#c6,#f9,#c6
	db #f9,#c6,#07,#c6,#07,#c6,#f9,#c6
	db #f9,#c6,#07,#c6,#07,#c6,#f9,#c6
	db #f9,#c6,#07,#c6,#07,#c6,#f9,#c6
	db #f9,#c6,#07,#c6,#07,#c6,#f9,#c6
	db #f9,#c6,#07,#c6,#07,#c6,#f9,#c6
	db #f9,#c6,#07,#c6,#07,#64,#40,#fa
	db #c6,#fa,#c6,#06,#c6,#06,#c6,#fa
	db #c6,#fa,#c6,#06,#c6,#06,#c6,#fa
	db #c6,#fa,#c6,#06,#c6,#06,#c6,#fa
	db #c6,#fa,#c6,#06,#c6,#06,#c6,#fa
	db #c6,#fa,#c6,#06,#c6,#06,#c6,#fa
	db #c6,#fa,#c6,#06,#c6,#06,#c6,#fa
	db #c6,#fa,#c6,#06,#c6,#06,#c6,#fa
	db #c6,#fa,#c6,#06,#c6,#06,#64,#c5
	db #01,#fb,#c6,#fb,#c6,#05,#c6,#05
	db #c6,#fb,#c6,#fb,#c6,#05,#c6,#05
	db #c6,#fb,#c6,#fb,#c6,#05,#c6,#05
	db #c6,#fb,#c6,#fb,#c6,#05,#c6,#05
	db #c6,#fb,#c6,#fb,#c6,#05,#c6,#05
	db #c6,#fb,#c6,#fb,#c6,#05,#c6,#05
	db #c6,#fb,#c6,#fb,#c6,#05,#c6,#05
	db #c6,#fb,#c6,#fb,#c6,#05,#c6,#05
	db #64,#40,#fc,#c6,#fc,#c6,#04,#c6
	db #04,#c6,#fc,#c6,#fc,#c6,#04,#c6
	db #04,#c6,#fc,#c6,#fc,#c6,#04,#c6
	db #04,#c6,#fc,#c6,#fc,#c6,#04,#c6
	db #04,#c6,#fc,#c6,#fc,#c6,#04,#c6
	db #04,#c6,#fc,#c6,#fc,#c6,#04,#c6
	db #04,#c6,#fc,#c6,#fc,#c6,#04,#c6
	db #04,#c6,#fc,#c6,#fc,#c6,#04,#c6
	db #04,#64,#c5,#01,#fd,#c6,#fd,#c6
	db #03,#c6,#03,#c6,#fd,#c6,#fd,#c6
	db #03,#c6,#03,#c6,#fd,#c6,#fd,#c6
	db #03,#c6,#03,#c6,#fd,#c6,#fd,#c6
	db #03,#c6,#03,#64,#40,#fe,#c6,#fe
	db #c6,#02,#c6,#02,#c6,#fe,#c6,#fe
	db #c6,#02,#c6,#02,#c6,#fe,#c6,#fe
	db #c6,#02,#c6,#02,#c6,#fe,#c6,#fe
	db #c6,#02,#c6,#02,#64,#40,#ff,#c6
	db #ff,#c6,#01,#c6,#01,#c6,#ff,#c6
	db #ff,#c6,#01,#c6,#01,#c6,#ff,#c6
	db #ff,#c6,#01,#c6,#01,#c6,#ff,#c6
	db #ff,#c6,#01,#c6,#01,#65,#d2,#c4
	db #02,#d2,#c4,#03,#d2,#c4,#04,#c2
	db #64,#81,#01,#d0,#64,#80,#02,#c2
	db #68,#81,#01,#d0,#68,#80,#02,#c2
	db #6a,#81,#01,#d0,#6a,#80,#02,#c2
	db #6e,#81,#01,#d0,#6e,#80,#02,#c0
	db #1b,#72,#80,#01,#d0,#72,#80,#02
	db #fc,#c4,#02,#c4,#04,#c4,#06,#c4
	db #08,#64,#83,#04,#ce,#65,#ce,#7d
	db #ce,#65,#ce,#65,#ce,#7d,#ce,#65
	db #ce,#65,#ce,#7d,#ce,#65,#ce,#65
	db #ce,#65,#ce,#7d,#ce,#64,#80,#05
	db #ce,#65,#ce,#65,#ce,#64,#80,#04
	db #ce,#65,#ce,#7d,#ce,#65,#ce,#65
	db #ce,#7d,#ce,#65,#ce,#65,#ce,#7d
	db #ce,#65,#ce,#65,#ce,#65,#ce,#7d
	db #ce,#64,#80,#05,#ce,#65,#ce,#65
	db #c2,#60,#83,#04,#ce,#61,#ce,#7d
	db #ce,#61,#ce,#61,#ce,#7d,#ce,#61
	db #ce,#61,#ce,#7d,#ce,#61,#ce,#61
	db #ce,#61,#ce,#7d,#ce,#60,#80,#05
	db #ce,#61,#ce,#61,#ce,#60,#80,#04
	db #ce,#61,#ce,#7d,#ce,#61,#ce,#61
	db #ce,#7d,#ce,#61,#ce,#61,#ce,#7d
	db #ce,#61,#ce,#61,#ce,#61,#ce,#7d
	db #ce,#60,#80,#05,#ce,#61,#ce,#61
	db #c2,#5c,#83,#04,#ce,#5d,#ce,#7d
	db #ce,#5d,#ce,#5d,#ce,#7d,#ce,#5d
	db #ce,#5d,#ce,#7d,#ce,#5d,#ce,#5d
	db #ce,#5d,#ce,#7d,#ce,#5c,#80,#05
	db #ce,#5d,#ce,#5d,#ce,#5c,#80,#04
	db #ce,#5d,#ce,#7d,#ce,#5d,#ce,#5d
	db #ce,#7d,#ce,#5d,#ce,#5d,#ce,#7d
	db #ce,#5d,#ce,#5d,#ce,#5d,#ce,#7d
	db #ce,#5c,#80,#05,#ce,#5d,#ce,#5d
	db #c2,#5a,#83,#04,#ce,#5b,#ce,#7d
	db #ce,#5b,#ce,#5b,#ce,#7d,#ce,#5b
	db #ce,#5b,#ce,#7d,#ce,#5b,#ce,#5b
	db #ce,#5b,#ce,#7d,#ce,#5a,#80,#05
	db #ce,#5b,#ce,#5b,#ce,#5a,#80,#04
	db #ce,#5b,#ce,#7d,#ce,#5b,#ce,#5b
	db #ce,#7d,#ce,#5b,#ce,#5b,#ce,#7d
	db #ce,#5b,#ce,#5b,#ce,#5b,#ce,#7d
	db #ce,#5a,#80,#05,#ce,#5b,#ce,#5b
	db #c2,#4c,#81,#03,#ce,#4d,#ce,#51
	db #ce,#4d,#ce,#53,#ce,#4d,#ce,#57
	db #ce,#4d,#ce,#5b,#ce,#4d,#ce,#57
	db #ce,#4d,#ce,#53,#ce,#4d,#ce,#51
	db #ce,#4d,#ce,#4d,#ce,#4d,#ce,#51
	db #ce,#4d,#ce,#53,#ce,#4d,#ce,#57
	db #ce,#4d,#ce,#5b,#ce,#4d,#ce,#57
	db #ce,#4d,#ce,#53,#ce,#4d,#ce,#51
	db #ce,#4d,#c2,#64,#81,#01,#c4,#02
	db #64,#01,#c4,#02,#68,#01,#c4,#02
	db #64,#01,#c4,#02,#6a,#01,#c4,#02
	db #64,#01,#c4,#02,#6e,#01,#c4,#02
	db #64,#01,#c4,#02,#72,#01,#c4,#02
	db #64,#01,#c4,#02,#6e,#01,#c4,#02
	db #64,#01,#c4,#02,#6a,#01,#c4,#02
	db #64,#01,#c4,#02,#68,#01,#c4,#02
	db #64,#01,#c4,#02,#64,#01,#c4,#02
	db #64,#01,#c4,#02,#68,#01,#c4,#02
	db #64,#01,#c4,#02,#6a,#01,#c4,#02
	db #64,#01,#c4,#02,#6e,#01,#c4,#02
	db #64,#01,#c4,#02,#72,#01,#c4,#02
	db #64,#01,#c4,#02,#6e,#01,#c4,#02
	db #64,#01,#c4,#02,#6a,#01,#c4,#02
	db #64,#01,#c4,#02,#68,#01,#c4,#02
	db #64,#01,#c4,#02,#c4,#02,#64,#81
	db #06,#c4,#02,#64,#01,#c4,#02,#64
	db #01,#c4,#02,#68,#01,#c4,#02,#64
	db #01,#c4,#02,#6a,#01,#c4,#02,#64
	db #01,#c4,#02,#6e,#01,#c4,#02,#64
	db #01,#c4,#02,#72,#01,#c4,#02,#64
	db #01,#c4,#02,#6e,#01,#c4,#02,#64
	db #01,#c4,#02,#6a,#01,#c4,#02,#64
	db #01,#c4,#02,#68,#01,#c4,#02,#64
	db #01,#c4,#02,#64,#01,#c4,#02,#64
	db #01,#c4,#02,#68,#01,#c4,#02,#64
	db #01,#c4,#02,#6a,#01,#c4,#02,#64
	db #01,#c4,#02,#6e,#01,#c4,#02,#64
	db #01,#c4,#02,#72,#01,#c4,#02,#64
	db #01,#c4,#02,#6e,#01,#c4,#02,#64
	db #01,#c4,#02,#6a,#01,#c4,#02,#64
	db #01,#c4,#02,#68,#01,#60,#81,#01
	db #c4,#02,#60,#01,#c4,#02,#64,#01
	db #c4,#02,#64,#01,#c4,#02,#60,#01
	db #c4,#02,#60,#01,#c4,#02,#64,#01
	db #c4,#02,#64,#01,#c4,#02,#60,#01
	db #c4,#02,#60,#01,#c4,#02,#64,#01
	db #c4,#02,#64,#01,#c4,#02,#60,#01
	db #c4,#02,#60,#01,#c4,#02,#64,#01
	db #c4,#02,#64,#01,#c4,#02,#60,#01
	db #c4,#02,#60,#01,#c4,#02,#64,#01
	db #c4,#02,#64,#01,#c4,#02,#60,#01
	db #c4,#02,#60,#01,#c4,#02,#64,#01
	db #c4,#02,#64,#01,#c4,#02,#60,#01
	db #c4,#02,#60,#01,#c4,#02,#64,#01
	db #c4,#02,#64,#01,#c4,#02,#60,#01
	db #c4,#02,#60,#01,#c4,#02,#64,#01
	db #c4,#02,#64,#01,#c4,#02,#c4,#02
	db #64,#81,#06,#c4,#02,#60,#01,#c4
	db #02,#60,#01,#c4,#02,#64,#01,#c4
	db #02,#64,#01,#c4,#02,#60,#01,#c4
	db #02,#60,#01,#c4,#02,#64,#01,#c4
	db #02,#64,#01,#c4,#02,#60,#01,#c4
	db #02,#60,#01,#c4,#02,#64,#01,#c4
	db #02,#64,#01,#c4,#02,#60,#01,#c4
	db #02,#60,#01,#c4,#02,#64,#01,#c4
	db #02,#64,#01,#c4,#02,#60,#01,#c4
	db #02,#60,#01,#c4,#02,#64,#01,#c4
	db #02,#64,#01,#c4,#02,#60,#01,#c4
	db #02,#60,#01,#c4,#02,#64,#01,#c4
	db #02,#64,#01,#c4,#02,#60,#01,#c4
	db #02,#60,#01,#c4,#02,#64,#01,#c4
	db #02,#64,#01,#c4,#02,#60,#01,#c4
	db #02,#60,#01,#c4,#02,#64,#01,#64
	db #81,#01,#c4,#02,#5c,#01,#c4,#02
	db #68,#01,#c4,#02,#5c,#01,#c4,#02
	db #6a,#01,#c4,#02,#5c,#01,#c4,#02
	db #6e,#01,#c4,#02,#5c,#01,#c4,#02
	db #72,#01,#c4,#02,#5c,#01,#c4,#02
	db #6e,#01,#c4,#02,#5c,#01,#c4,#02
	db #6a,#01,#c4,#02,#5c,#01,#c4,#02
	db #68,#01,#c4,#02,#5c,#01,#c4,#02
	db #64,#01,#c4,#02,#5c,#01,#c4,#02
	db #68,#01,#c4,#02,#5c,#01,#c4,#02
	db #6a,#01,#c4,#02,#5c,#01,#c4,#02
	db #6e,#01,#c4,#02,#5c,#01,#c4,#02
	db #72,#01,#c4,#02,#5c,#01,#c4,#02
	db #6e,#01,#c4,#02,#5c,#01,#c4,#02
	db #6a,#01,#c4,#02,#5c,#01,#c4,#02
	db #68,#01,#c4,#02,#5c,#01,#c4,#02
	db #c4,#02,#5c,#81,#06,#c4,#02,#64
	db #01,#c4,#02,#64,#01,#c4,#02,#68
	db #01,#c4,#02,#64,#01,#c4,#02,#6a
	db #01,#c4,#02,#64,#01,#c4,#02,#6e
	db #01,#c4,#02,#64,#01,#c4,#02,#72
	db #01,#c4,#02,#64,#01,#c4,#02,#6e
	db #01,#c4,#02,#64,#01,#c4,#02,#6a
	db #01,#c4,#02,#64,#01,#c4,#02,#68
	db #01,#c4,#02,#64,#01,#c4,#02,#64
	db #01,#c4,#02,#64,#01,#c4,#02,#68
	db #01,#c4,#02,#64,#01,#c4,#02,#6a
	db #01,#c4,#02,#64,#01,#c4,#02,#6e
	db #01,#c4,#02,#64,#01,#c4,#02,#72
	db #01,#c4,#02,#64,#01,#c4,#02,#6e
	db #01,#c4,#02,#64,#01,#c4,#02,#6a
	db #01,#c4,#02,#64,#01,#c4,#02,#68
	db #01,#5a,#81,#06,#c4,#02,#5a,#01
	db #c4,#02,#64,#01,#c4,#02,#64,#01
	db #c4,#02,#5a,#01,#c4,#02,#5a,#01
	db #c4,#02,#64,#01,#c4,#02,#64,#01
	db #c4,#02,#5a,#01,#c4,#02,#5a,#01
	db #c4,#02,#64,#01,#c4,#02,#64,#01
	db #c4,#02,#5a,#01,#c4,#02,#5a,#01
	db #c4,#02,#64,#01,#c4,#02,#64,#01
	db #c4,#02,#5a,#01,#c4,#02,#5a,#01
	db #c4,#02,#64,#01,#c4,#02,#64,#01
	db #c4,#02,#5a,#01,#c4,#02,#5a,#01
	db #c4,#02,#64,#01,#c4,#02,#64,#01
	db #c4,#02,#5a,#01,#c4,#02,#5a,#01
	db #c4,#02,#64,#01,#c4,#02,#64,#01
	db #c4,#02,#5a,#01,#c4,#02,#5a,#01
	db #c4,#02,#64,#01,#c4,#02,#64,#01
	db #c4,#02,#c4,#02,#64,#81,#06,#c4
	db #02,#5a,#01,#c4,#02,#5a,#01,#c4
	db #02,#64,#01,#c4,#02,#64,#01,#c4
	db #02,#5a,#01,#c4,#02,#5a,#01,#c4
	db #02,#64,#01,#c4,#02,#64,#01,#c4
	db #02,#5a,#01,#c4,#02,#5a,#01,#c4
	db #02,#64,#01,#c4,#02,#64,#01,#c4
	db #02,#5a,#01,#c4,#02,#5a,#01,#c4
	db #02,#64,#01,#c4,#02,#64,#01,#c4
	db #02,#5a,#01,#c4,#02,#5a,#01,#c4
	db #02,#64,#01,#c4,#02,#64,#01,#c4
	db #02,#5a,#01,#c4,#02,#5a,#01,#c4
	db #02,#64,#01,#c4,#02,#64,#01,#c4
	db #02,#5a,#01,#c4,#02,#5a,#01,#c4
	db #02,#64,#01,#c4,#02,#64,#01,#c4
	db #02,#5a,#01,#c4,#02,#5a,#01,#c4
	db #02,#64,#01,#ca,#c2,#64,#81,#07
	db #c4,#02,#c4,#03,#ce,#c4,#00,#c4
	db #02,#c4,#00,#c4,#02,#c4,#00,#c4
	db #02,#c4,#03,#ce,#c4,#00,#c4,#02
	db #c4,#00,#c4,#02,#c4,#03,#ce,#c4
	db #00,#c4,#02,#c4,#00,#c4,#02,#c4
	db #03,#ce,#c4,#00,#c4,#02,#c4,#00
	db #c4,#02,#c4,#00,#c4,#02,#c4,#03
	db #ce,#c4,#00,#c4,#02,#c4,#03,#ce
	db #c4,#00,#c4,#02,#c4,#00,#c4,#02
	db #c4,#00,#c4,#02,#c4,#03,#ce,#c4
	db #00,#c4,#02,#c4,#00,#c4,#02,#c4
	db #03,#ce,#c4,#00,#c4,#02,#c4,#00
	db #c4,#02,#c4,#03,#ce,#c4,#00,#c4
	db #02,#c4,#00,#c4,#02,#c4,#00,#c4
	db #02,#c4,#03,#c2,#68,#81,#08,#c4
	db #02,#c4,#03,#ce,#c4,#00,#c4,#02
	db #c4,#00,#c4,#02,#c4,#00,#c4,#02
	db #c4,#03,#ce,#c4,#00,#c4,#02,#c4
	db #00,#c4,#02,#c4,#03,#ce,#c4,#00
	db #c4,#02,#c4,#00,#c4,#02,#c4,#03
	db #ce,#c4,#00,#c4,#02,#c4,#00,#c4
	db #02,#c4,#00,#c4,#02,#c4,#03,#ce
	db #c4,#00,#c4,#02,#c4,#03,#ce,#c4
	db #00,#c4,#02,#c4,#00,#c4,#02,#c4
	db #00,#c4,#02,#c4,#03,#ce,#c4,#00
	db #c4,#02,#c4,#00,#c4,#02,#c4,#03
	db #ce,#c4,#00,#c4,#02,#c4,#00,#c4
	db #02,#c4,#03,#ce,#c4,#00,#c4,#02
	db #c4,#00,#c4,#02,#c4,#00,#c4,#02
	db #c4,#03,#c2,#64,#81,#08,#c4,#02
	db #c4,#03,#ce,#c4,#00,#c4,#02,#c4
	db #00,#c4,#02,#c4,#00,#c4,#02,#c4
	db #03,#ce,#c4,#00,#c4,#02,#c4,#00
	db #c4,#02,#c4,#03,#ce,#c4,#00,#c4
	db #02,#c4,#00,#c4,#02,#c4,#03,#ce
	db #c4,#00,#c4,#02,#c4,#00,#c4,#02
	db #c4,#00,#c4,#02,#c4,#03,#ce,#c4
	db #00,#c4,#02,#c4,#03,#ce,#c4,#00
	db #c4,#02,#c4,#00,#c4,#02,#c4,#00
	db #c4,#02,#c4,#03,#ce,#c4,#00,#c4
	db #02,#c4,#00,#c4,#02,#c4,#03,#ce
	db #c4,#00,#c4,#02,#c4,#00,#c4,#02
	db #c4,#03,#ce,#c4,#00,#c4,#02,#c4
	db #00,#c4,#02,#c4,#00,#c4,#02,#c4
	db #03,#c2,#62,#81,#09,#c4,#02,#c4
	db #03,#ce,#c4,#00,#c4,#02,#c4,#00
	db #c4,#02,#c4,#00,#c4,#02,#c4,#03
	db #ce,#c4,#00,#c4,#02,#c4,#00,#c4
	db #02,#c4,#03,#ce,#c4,#00,#c4,#02
	db #c4,#00,#c4,#02,#c4,#03,#ce,#c4
	db #00,#c4,#02,#c4,#00,#c4,#02,#c4
	db #00,#c4,#02,#c4,#03,#ce,#c4,#00
	db #c4,#02,#c4,#03,#ce,#c4,#00,#c4
	db #02,#c4,#00,#c4,#02,#c4,#00,#c4
	db #02,#c4,#03,#ce,#c4,#00,#c4,#02
	db #c4,#00,#c4,#02,#c4,#03,#ce,#c4
	db #00,#c4,#02,#c4,#00,#c4,#02,#c4
	db #03,#ce,#c4,#00,#c4,#02,#c4,#00
	db #c4,#02,#c4,#00,#c4,#02,#c4,#03
	db #c2,#62,#81,#08,#c4,#02,#c4,#03
	db #ce,#c4,#00,#c4,#01,#c4,#00,#c4
	db #02,#c4,#00,#c4,#02,#c4,#03,#ce
	db #c4,#00,#c4,#02,#c4,#00,#c4,#02
	db #c4,#03,#ce,#c4,#00,#c4,#02,#c4
	db #00,#c4,#02,#c4,#03,#ce,#c4,#00
	db #c4,#02,#c4,#00,#c4,#02,#c4,#00
	db #c4,#02,#c4,#03,#ce,#c4,#00,#c4
	db #02,#c4,#03,#ce,#c4,#00,#c4,#02
	db #c4,#00,#c4,#02,#c4,#00,#c4,#02
	db #c4,#03,#ce,#c4,#00,#c4,#02,#c4
	db #00,#c4,#02,#c4,#03,#ce,#c4,#00
	db #c4,#02,#c4,#00,#c4,#02,#c4,#03
	db #ce,#c4,#00,#c4,#02,#c4,#00,#c4
	db #02,#c4,#00,#c4,#02,#c4,#03,#c2
	db #64,#81,#01,#d0,#64,#80,#02,#c0
	db #33,#68,#80,#01,#d2,#68,#80,#02
	db #c2,#6a,#81,#01,#d0,#6a,#80,#02
	db #fc,#c4,#01,#c4,#02,#c4,#03,#c4
	db #04,#6a,#c1,#01,#f9,#6f,#d0,#6e
	db #80,#02,#da,#6e,#c0,#01,#07,#6b
	db #d0,#6a,#80,#02,#da,#6a,#c0,#01
	db #f9,#6f,#d0,#6e,#80,#02,#c2,#68
	db #81,#01,#d2,#68,#80,#02,#c0,#1f
	db #c4,#01,#c4,#02,#c4,#03,#68,#81
	db #01,#d2,#65,#d2,#69,#d2,#6b,#d2
	db #69,#d2,#6b,#c2,#6e,#81,#01,#d2
	db #6e,#80,#02,#c0,#1a,#72,#80,#01
	db #d2,#72,#80,#02,#da,#74,#80,#01
	db #d2,#74,#80,#02,#da,#72,#80,#01
	db #d2,#72,#80,#02,#c2,#74,#81,#01
	db #d2,#74,#80,#02,#ea,#6a,#80,#01
	db #d2,#75,#d2,#79,#d2,#7d,#d2,#7c
	db #80,#02,#ea,#82,#80,#01,#d2,#81
	db #d4,#81,#83,#81,#7c,#81,#01,#d2
	db #7c,#80,#02,#f2,#78,#80,#01,#d2
	db #c6,#02,#c6,#02,#c6,#02,#c6,#02
	db #75,#d2,#74,#80,#02,#da,#78,#80
	db #01,#d2,#78,#80,#02,#d6,#c6,#fd
	db #c6,#fa,#7c,#80,#01,#d2,#7c,#80
	db #02,#c2,#72,#81,#01,#d2,#72,#80
	db #02,#c2,#c0,#3b,#c4,#01,#c4,#02
	db #c4,#03,#c4,#04,#7c,#81,#01,#d0
	db #7c,#80,#02,#c0,#1f,#72,#80,#01
	db #d2,#8b,#d2,#87,#d2,#83,#d2,#87
	db #d2,#86,#80,#02,#d2,#8a,#80,#01
	db #c2,#8a,#81,#02,#c0,#1e,#8e,#c0
	db #01,#fe,#91,#d0,#90,#80,#02,#da
	db #8e,#80,#01,#d2,#8e,#80,#02,#da
	db #8a,#80,#01,#d2,#c6,#02,#c6,#03
	db #c6,#02,#c6,#03,#86,#81,#01,#d2
	db #86,#80,#02,#c0,#1e,#82,#80,#01
	db #d2,#82,#80,#02,#ce,#86,#80,#01
	db #d2,#86,#80,#02,#ce,#80,#80,#01
	db #d2,#80,#80,#02,#ce,#78,#80,#01
	db #d2,#78,#80,#02,#ce,#6a,#80,#01
	db #c2,#68,#81,#01,#6b,#69,#6b,#69
	db #6b,#69,#6b,#69,#6b,#69,#6b,#69
	db #6b,#69,#6b,#69,#6b,#69,#6b,#69
	db #6b,#69,#6b,#69,#6b,#69,#6b,#69
	db #6b,#69,#6b,#69,#d2,#68,#80,#02
	db #e2,#68,#80,#01,#d2,#68,#80,#02
	db #ce,#6a,#80,#01,#d2,#6a,#80,#02
	db #ce,#6e,#80,#01,#c2,#74,#81,#01
	db #ce,#79,#ce,#75,#ce,#73,#ce,#75
	db #ce,#79,#ce,#75,#ce,#73,#ce,#75
	db #ce,#79,#ce,#75,#ce,#73,#ce,#75
	db #ce,#79,#ce,#75,#ce,#73,#ce,#75
	db #ce,#79,#ce,#75,#ce,#73,#ce,#75
	db #ce,#79,#ce,#75,#ce,#73,#ce,#75
	db #d2,#74,#80,#02,#ce,#72,#80,#01
	db #d2,#72,#80,#02,#ce,#6e,#80,#01
	db #c2,#6a,#81,#01,#d2,#6a,#80,#02
	db #c0,#2a,#6a,#80,#01,#d2,#6a,#80
	db #02,#ce,#68,#80,#01,#d2,#68,#80
	db #02,#c6,#f6,#6e,#80,#01,#c2,#68
	db #81,#01,#d2,#68,#80,#02,#f6,#64
	db #80,#01,#d2,#64,#80,#02,#ce,#62
	db #80,#01,#d2,#62,#80,#02,#f6,#5c
	db #80,#01,#d2,#5c,#80,#02,#c2,#5a
	db #81,#01,#d2,#5a,#83,#02,#d2,#c4
	db #02,#d2,#c4,#03,#d2,#c4,#04,#d2
	db #c4,#05,#d2,#c4,#06,#d2,#c4,#07
	db #d2,#c4,#08,#d2,#c4,#09,#d2,#c4
	db #0a,#d2,#c4,#0b,#d2,#52,#c1,#01
	db #f2,#c6,#f2,#c6,#f2,#c6,#f2,#c6
	db #f2,#c6,#f2,#c6,#f2,#c6,#f2,#c6
	db #f7,#c6,#f7,#c6,#f7,#c6,#f7,#c6
	db #f7,#c6,#f7,#c6,#f7,#c6,#f7,#82
	db #81,#01,#d2,#82,#80,#02,#e2,#c4
	db #01,#ce,#c4,#02,#ce,#c4,#03,#ce
	db #c4,#04,#ce,#c4,#05,#ce,#c4,#06
	db #ce,#c4,#07,#ce,#c4,#08,#ce,#64
	db #93,#06,#ce,#c4,#08,#ce,#c4,#07
	db #ce,#c4,#06,#ce,#c4,#05,#d2,#c4
	db #04,#d2,#c4,#03,#c2,#68,#87,#06
	db #d2,#68,#80,#0a,#d2,#6a,#80,#06
	db #d0,#6a,#80,#0a,#fc,#c4,#04,#c4
	db #05,#c4,#06,#c4,#07,#6a,#c7,#06
	db #f9,#6f,#d0,#6e,#80,#0a,#da,#6e
	db #c0,#06,#07,#6b,#d0,#6a,#80,#0a
	db #c2,#6a,#c7,#06,#f9,#6f,#d0,#6e
	db #80,#0a,#d2,#68,#80,#06,#d2,#68
	db #80,#0a,#c0,#1f,#c4,#04,#c4,#05
	db #c4,#06,#68,#87,#06,#d2,#65,#d2
	db #69,#d2,#6b,#c2,#68,#87,#06,#d2
	db #6b,#d2,#6f,#d2,#6e,#80,#0a,#c0
	db #1a,#72,#80,#06,#d2,#72,#80,#0a
	db #da,#74,#80,#06,#d2,#74,#80,#0a
	db #c2,#72,#87,#06,#d2,#72,#80,#0a
	db #d2,#74,#80,#06,#d2,#74,#80,#0a
	db #ea,#6a,#80,#06,#d2,#75,#d2,#79
	db #d2,#7d,#d2,#7c,#80,#0a,#ea,#82
	db #80,#06,#c2,#80,#87,#06,#d4,#81
	db #83,#81,#7d,#d2,#7c,#80,#0a,#f2
	db #78,#80,#06,#d2,#c6,#02,#c6,#02
	db #c6,#02,#c6,#02,#75,#d2,#74,#80
	db #0a,#da,#78,#80,#06,#d2,#78,#80
	db #0a,#d6,#c6,#fd,#c6,#fa,#7c,#87
	db #06,#d2,#7c,#80,#0a,#d2,#72,#80
	db #06,#d2,#72,#80,#0a,#c2,#c2,#d4
	db #c4,#04,#c4,#05,#c4,#06,#c4,#07
	db #7c,#87,#06,#d0,#7c,#80,#0a,#c0
	db #1f,#72,#80,#06,#d2,#8b,#d2,#87
	db #d2,#83,#d2,#87,#c2,#d4,#8a,#87
	db #06,#d2,#8a,#80,#0a,#c0,#1e,#8e
	db #c0,#06,#fe,#91,#d0,#90,#80,#0a
	db #da,#8e,#80,#06,#d2,#8e,#80,#0a
	db #c2,#8a,#87,#06,#d2,#c6,#02,#c6
	db #03,#c6,#02,#c6,#03,#87,#d2,#86
	db #80,#0a,#c0,#1e,#82,#80,#06,#d2
	db #82,#80,#0a,#ce,#86,#80,#06,#d2
	db #86,#80,#0a,#ce,#80,#80,#06,#d2
	db #80,#80,#0a,#ce,#78,#80,#06,#c2
	db #d0,#78,#87,#0a,#ce,#6a,#80,#06
	db #d2,#69,#6b,#69,#6b,#69,#6b,#69
	db #6b,#69,#6b,#69,#6b,#69,#6b,#69
	db #6b,#69,#6b,#69,#6b,#69,#6b,#69
	db #6b,#69,#6b,#69,#6b,#69,#6b,#69
	db #6b,#69,#d2,#68,#80,#0a,#e2,#68
	db #80,#06,#d2,#68,#80,#0a,#ce,#6a
	db #80,#06,#c2,#d0,#6a,#87,#0a,#ce
	db #6e,#80,#06,#d2,#75,#ce,#79,#ce
	db #75,#ce,#73,#ce,#75,#ce,#79,#ce
	db #75,#ce,#73,#ce,#75,#ce,#79,#ce
	db #75,#ce,#73,#ce,#75,#ce,#79,#ce
	db #75,#ce,#73,#ce,#75,#ce,#79,#ce
	db #75,#ce,#73,#ce,#75,#ce,#79,#ce
	db #75,#ce,#73,#ce,#75,#d2,#74,#80
	db #0a,#ce,#72,#80,#06,#c2,#d0,#72
	db #87,#0a,#ce,#6e,#80,#06,#d2,#6b
	db #d2,#6a,#80,#0a,#c0,#2a,#6a,#80
	db #06,#d2,#6a,#80,#0a,#ce,#68,#80
	db #06,#c2,#d0,#68,#87,#0a,#c6,#f6
	db #6e,#80,#06,#d2,#69,#d2,#68,#80
	db #0a,#f6,#64,#80,#06,#d2,#64,#80
	db #0a,#ce,#62,#80,#06,#d2,#62,#80
	db #0a,#c2,#d0,#5c,#87,#06,#d2,#5c
	db #80,#0a,#ce,#5a,#80,#06,#d2,#5a
	db #89,#0a,#d2,#c4,#05,#d2,#c4,#06
	db #d2,#c4,#07,#d2,#c4,#08,#d2,#c4
	db #09,#d2,#c4,#0a,#d2,#c4,#0b,#d2
	db #c4,#0c,#de,#64,#07,#c2,#5a,#81
	db #01,#d2,#5a,#83,#02,#d2,#c4,#02
	db #d2,#c4,#03,#d2,#c4,#04,#d2,#c4
	db #05,#d2,#c4,#06,#d2,#c4,#07,#d2
	db #c4,#08,#d2,#c4,#09,#d2,#c4,#0a
	db #d2,#c4,#0b,#d2,#64,#01,#c2,#ff
;
.init_music		; #a04f - added by Megachur
	ld de,l7a00
	jp real_init_music
;
.music_info
	db "Parallax C64 (2016)(Epyteor)(SuTeKH)",0
	db "StarkOs",0

	read "music_end.asm"