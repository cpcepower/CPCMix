; Music of Auf Wiedersehen Monty C64 (2016)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 05/08/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AUFWIEMC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
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
	db #00,#7a
	db #01,#32,#00
	dw l7a1e,l7a33,l7b65,l7b68
	dw l7a1a,l7a1e,l7a33,l7b65
.l7a1a equ $ + 1
	db #05,#c0
	db #00,#00
.l7a1e equ $ + 1
	dw l7f63
	ld c,#3e
	ld a,a
	db #03
	dw l7e3e,l7f3e
	db #01
	dw l7e3e,l7f3e
	db #0c
	dw l7f3e
	db #02
	dw l7f3e
	db #04
.l7a33
	dw l7d5c,l7ddd,l7de7,l7e68
	dw l7ee9,l7ef3,l7f74,l7ff5
	dw l7fff
	db #80,#80,#d4,#80,#db,#80,#39,#81
	db #48,#81,#8a,#81,#8b,#81,#48,#81
	db #8a,#81,#8b,#81,#1f,#82,#61,#82
	db #93,#82,#29,#83,#6d,#83,#8b,#81
	db #a0,#83,#e2,#83,#8b,#81,#a0,#83
	db #18,#84,#8b,#81,#a0,#83,#e2,#83
	db #55,#84,#e8,#84,#18,#84,#8b,#81
	db #1f,#82,#61,#82,#93,#82,#29,#83
	db #6d,#83,#8b,#81,#2c,#85,#7a,#85
	db #8b,#81,#94,#85,#b6,#85,#8b,#81
	db #d1,#85,#13,#86,#8b,#81,#33,#86
	db #75,#86,#8b,#81,#95,#86,#d7,#86
	db #8b,#81,#ff,#86,#41,#87,#5b,#87
	db #bc,#87,#00,#88,#5b,#87,#bc,#87
	db #1f,#88,#5b,#87,#bc,#87,#00,#88
	db #5b,#87,#61,#88,#a5,#88,#e7,#88
	db #4a,#89,#8e,#89,#e7,#88,#4a,#89
	db #d0,#89,#e7,#89,#46,#8a,#94,#8a
	db #8b,#81,#ad,#8a,#00,#88,#8b,#81
	db #cf,#8a,#11,#8b,#8b,#81,#49,#8b
	db #8b,#8b,#8b,#81,#cf,#8a,#db,#8b
	db #8b,#81,#49,#8b,#36,#8c,#8b,#81
	db #88,#8c,#ca,#8c,#93,#82,#18,#8d
	db #5c,#8d,#8b,#81,#a0,#83,#e2,#83
	db #8b,#81,#a0,#83,#18,#84,#8b,#81
	db #a0,#83,#e2,#83,#55,#84,#e8,#84
	db #18,#84,#8b,#81,#1f,#82,#61,#82
	db #93,#82,#29,#83,#6d,#83,#8f,#8d
	db #09,#8e,#59,#8e,#8b,#81,#ff,#86
	db #00,#88,#8b,#81,#6e,#8e,#b0,#8e
	db #8b,#81,#2b,#8f,#6d,#8f,#8b,#81
	db #ea,#8f,#2c,#90,#8b,#81,#33,#86
	db #a9,#90,#5b,#87,#e8,#90,#2c,#91
	db #5b,#87,#e8,#90,#45,#91,#5b,#87
	db #5e,#91,#67,#91,#5b,#87,#5e,#91
	db #6b,#91,#6f,#91,#f0,#91,#f4,#91
.l7b68 equ $ + 3
.l7b65
	db #64,#75,#92,#86,#7b,#90,#7b,#9a
	db #7b,#a3,#7b,#ae,#7b,#cd,#7b,#0c
	db #7c,#31,#7c,#74,#7c,#c3,#7c,#cd
	db #7c,#10,#7d,#23,#7d,#3c,#7d,#4f
	db #7d,#8d,#7b,#90,#7b,#ff,#37,#00
	db #00,#00,#00,#99,#7b,#9a,#7b,#00
	db #37,#00,#08,#0a,#0c,#a1,#7b,#a3
	db #7b,#00,#37,#00,#80,#16,#ac,#7b
	db #ae,#7b,#00,#37,#00,#1a,#05,#80
	db #16,#8d,#7b,#cd,#7b,#00,#b7,#00
	db #1a,#05,#3e,#3f,#0c,#2d,#08,#2d
	db #04,#0c,#2c,#fc,#2b,#f8,#2b,#f4
	db #2a,#f0,#2a,#ec,#29,#e8,#29,#e4
	db #8d,#7b,#0c,#7c,#00,#b7,#00,#1a
	db #05,#2e,#05,#2d,#05,#2d,#05,#2c
	db #05,#2c,#05,#2b,#05,#2b,#05,#2a
	db #05,#2a,#05,#29,#05,#29,#05,#28
	db #05,#28,#05,#27,#05,#27,#05,#26
	db #05,#26,#05,#25,#05,#25,#05,#24
	db #05,#24,#05,#23,#05,#23,#05,#22
	db #05,#22,#05,#21,#05,#21,#05,#8d
	db #7b,#31,#7c,#00,#b7,#00,#1a,#05
	db #3e,#29,#0c,#1d,#28,#3d,#28,#0c
	db #1c,#27,#3c,#27,#0c,#1b,#26,#3b
	db #26,#0c,#1a,#25,#3a,#25,#0c,#19
	db #24,#39,#24,#0c,#56,#7c,#74,#7c
	db #00,#37,#00,#4b,#ff,#ff,#4f,#ff
	db #ff,#6f,#0c,#ff,#ff,#2e,#0c,#0e
	db #0d,#6d,#0c,#ff,#ff,#6c,#0c,#ff
	db #ff,#4c,#ff,#ff,#0b,#2b,#0c,#2a
	db #0c,#4a,#ff,#ff,#4a,#ff,#ff,#6a
	db #0c,#ff,#ff,#2a,#0c,#0a,#0a,#6a
	db #0c,#ff,#ff,#6a,#0c,#ff,#ff,#4a
	db #ff,#ff,#0a,#2a,#0c,#2a,#0c,#9f
	db #7c,#c3,#7c,#00,#37,#00,#4b,#ff
	db #ff,#4f,#fe,#ff,#4f,#ff,#ff,#4e
	db #01,#00,#4e,#02,#00,#4d,#01,#00
	db #4d,#ff,#ff,#4c,#fe,#ff,#4c,#ff
	db #ff,#4b,#01,#00,#4b,#02,#00,#4a
	db #01,#00,#4a,#ff,#ff,#4a,#fe,#ff
	db #4a,#ff,#ff,#4a,#01,#00,#4a,#02
	db #00,#4a,#01,#00,#4a,#ff,#ff,#4a
	db #fe,#ff,#4a,#ff,#ff,#4a,#01,#00
	db #4a,#02,#00,#4a,#01,#00,#cb,#7c
	db #cd,#7c,#00,#37,#00,#00,#80,#16
	db #e6,#7c,#10,#7d,#00,#37,#00,#0b
	db #0f,#2f,#0c,#2e,#0c,#0e,#0d,#2d
	db #0c,#2c,#0c,#0c,#0b,#2b,#0c,#2a
	db #0c,#4a,#ff,#ff,#4a,#fe,#ff,#6a
	db #0c,#ff,#ff,#6a,#0c,#01,#00,#4a
	db #02,#00,#4a,#01,#00,#6a,#0c,#ff
	db #ff,#6a,#0c,#fe,#ff,#4a,#ff,#ff
	db #4a,#01,#00,#6a,#0c,#02,#00,#6a
	db #0c,#01,#00,#22,#7d,#23,#7d,#00
	db #37,#00,#0b,#0f,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0b,#0a,#2a,#7d
	db #3c,#7d,#00,#37,#00,#4a,#ff,#ff
	db #4a,#fe,#ff,#4a,#ff,#ff,#4a,#01
	db #00,#4a,#02,#00,#4a,#01,#00,#43
	db #7d,#4f,#7d,#00,#37,#00,#4a,#ff
	db #ff,#4a,#ff,#ff,#4a,#ff,#ff,#0a
	db #0a,#0a,#5b,#7d,#5c,#7d,#00,#37
.l7d5c equ $ + 7
	db #00,#0d,#0c,#0c,#0b,#0b,#0a,#80
	db #81,#01,#c4,#01,#c4,#02,#c4,#03
	db #76,#01,#c4,#01,#c4,#02,#c4,#03
	db #7e,#01,#c4,#01,#c4,#02,#c4,#03
	db #80,#01,#c4,#01,#c4,#02,#c4,#03
	db #80,#01,#c4,#01,#c4,#02,#c4,#03
	db #76,#01,#c4,#01,#c4,#02,#c4,#03
	db #7e,#01,#c4,#01,#c4,#02,#c4,#03
	db #80,#01,#c4,#01,#c4,#02,#c4,#03
	db #80,#01,#c4,#01,#c4,#02,#c4,#03
	db #74,#01,#c4,#01,#c4,#02,#c4,#03
	db #7e,#01,#c4,#01,#c4,#02,#c4,#03
	db #80,#01,#c4,#01,#c4,#02,#c4,#03
	db #80,#01,#c4,#01,#c4,#02,#c4,#03
	db #74,#01,#c4,#01,#c4,#02,#c4,#03
	db #7e,#01,#c4,#01,#c4,#02,#c4,#03
	db #80,#01,#c4,#01,#c4,#02,#c4,#03
.l7ddd
	db #50,#81,#02,#ea,#57,#d6,#5f,#de
.l7de7 equ $ + 2
	db #67,#c2,#c4,#02,#c4,#03,#7e,#81
	db #01,#c4,#01,#c4,#02,#c4,#03,#80
	db #01,#c4,#01,#c4,#02,#c4,#03,#76
	db #01,#c4,#01,#c4,#02,#c4,#03,#7e
	db #01,#c4,#01,#c4,#02,#c4,#03,#7e
	db #01,#c4,#01,#c4,#02,#c4,#03,#80
	db #01,#c4,#01,#c4,#02,#c4,#03,#76
	db #01,#c4,#01,#c4,#02,#c4,#03,#7e
	db #01,#c4,#01,#c4,#02,#c4,#03,#7e
	db #01,#c4,#01,#c4,#02,#c4,#03,#80
	db #01,#c4,#01,#c4,#02,#c4,#03,#74
.l7e3e equ $ + 1
	db #01,#c4,#01,#c4,#02,#c4,#03,#7e
	db #01,#c4,#01,#c4,#02,#c4,#03,#7e
	db #01,#c4,#01,#c4,#02,#c4,#03,#80
	db #01,#c4,#01,#c4,#02,#c4,#03,#74
	db #01,#c4,#01,#c4,#02,#c4,#03,#7e
.l7e68 equ $ + 3
	db #01,#c4,#01,#80,#81,#01,#c4,#01
	db #c4,#02,#c4,#03,#76,#01,#c4,#01
	db #c4,#02,#c4,#03,#7e,#01,#c4,#01
	db #c4,#02,#c4,#03,#80,#01,#c4,#01
	db #c4,#02,#c4,#03,#80,#01,#c4,#01
	db #c4,#02,#c4,#03,#76,#01,#c4,#01
	db #c4,#02,#c4,#03,#7e,#01,#c4,#01
	db #c4,#02,#c4,#03,#80,#01,#c4,#01
	db #c4,#02,#c4,#03,#80,#01,#c4,#01
	db #c4,#02,#c4,#03,#74,#01,#c4,#01
	db #c4,#02,#c4,#03,#7a,#01,#c4,#01
	db #c4,#02,#c4,#03,#80,#01,#c4,#01
	db #c4,#02,#c4,#03,#80,#01,#c4,#01
	db #c4,#02,#c4,#03,#74,#01,#c4,#01
	db #c4,#02,#c4,#03,#7a,#01,#c4,#01
	db #c4,#02,#c4,#03,#80,#01,#c4,#01
.l7ee9 equ $ + 4
	db #c4,#02,#c4,#03,#68,#81,#02,#ea
.l7ef3 equ $ + 6
	db #5f,#d6,#57,#de,#55,#c2,#c4,#02
	db #c4,#03,#7e,#81,#01,#c4,#01,#c4
	db #02,#c4,#03,#80,#01,#c4,#01,#c4
	db #02,#c4,#03,#76,#01,#c4,#01,#c4
	db #02,#c4,#03,#7e,#01,#c4,#01,#c4
	db #02,#c4,#03,#7e,#01,#c4,#01,#c4
	db #02,#c4,#03,#80,#01,#c4,#01,#c4
	db #02,#c4,#03,#76,#01,#c4,#01,#c4
	db #02,#c4,#03,#7e,#01,#c4,#01,#c4
	db #02,#c4,#03,#7a,#01,#c4,#01,#c4
.l7f3e equ $ + 1
	db #02,#c4,#03,#80,#01,#c4,#01,#c4
	db #02,#c4,#03,#74,#01,#c4,#01,#c4
	db #02,#c4,#03,#7a,#01,#c4,#01,#c4
	db #02,#c4,#03,#7a,#01,#c4,#01,#c4
.l7f63 equ $ + 6
	db #02,#c4,#03,#80,#01,#c4,#01,#c4
	db #02,#c4,#03,#74,#01,#c4,#01,#c4
.l7f74 equ $ + 7
	db #02,#c4,#03,#7a,#01,#c4,#01,#80
	db #81,#01,#c4,#01,#c4,#02,#c4,#03
	db #72,#01,#c4,#01,#c4,#02,#c4,#03
	db #78,#01,#c4,#01,#c4,#02,#c4,#03
	db #80,#01,#c4,#01,#c4,#02,#c4,#03
	db #80,#01,#c4,#01,#c4,#02,#c4,#03
	db #72,#01,#c4,#01,#c4,#02,#c4,#03
	db #78,#01,#c4,#01,#c4,#02,#c4,#03
	db #80,#01,#c4,#01,#c4,#02,#c4,#03
	db #80,#01,#c4,#01,#c4,#02,#c4,#03
	db #70,#01,#c4,#01,#c4,#02,#c4,#03
	db #7a,#01,#c4,#01,#c4,#02,#c4,#03
	db #80,#01,#c4,#01,#c4,#02,#c4,#03
	db #80,#01,#c4,#01,#c4,#02,#c4,#03
	db #70,#01,#c4,#01,#c4,#02,#c4,#03
	db #7a,#01,#c4,#01,#c4,#02,#c4,#03
	db #80,#01,#c4,#01,#c4,#02,#c4,#03
.l7ff5
	db #52,#81,#02,#ea,#5b,#d6,#61,#de
.l7fff equ $ + 2
	db #63,#c2,#c4,#02,#c4,#03,#78,#81
	db #01,#c4,#01,#c4,#02,#c4,#03,#80
	db #01,#c4,#01,#c4,#02,#c4,#03,#72
	db #01,#c4,#01,#c4,#02,#c4,#03,#78
	db #01,#c4,#01,#c4,#02,#c4,#03,#78
	db #01,#c4,#01,#c4,#02,#c4,#03,#80
	db #01,#c4,#01,#c4,#02,#c4,#03,#72
	db #01,#c4,#01,#c4,#02,#c4,#03,#78
	db #01,#c4,#01,#c4,#02,#c4,#03,#7a
	db #01,#c4,#01,#c4,#02,#c4,#03,#80
	db #01,#c4,#01,#c4,#02,#c4,#03,#70
	db #01,#c4,#01,#c4,#02,#c4,#03,#7a
	db #01,#c4,#01,#c4,#02,#c4,#03,#7a
	db #01,#c4,#01,#c4,#02,#c4,#03,#80
	db #01,#c4,#01,#c4,#02,#c4,#03,#70
	db #01,#c4,#01,#c4,#02,#c4,#03,#7a
	db #01,#c4,#01,#80,#81,#01,#c4,#01
	db #c4,#02,#c4,#03,#72,#01,#c4,#01
	db #c4,#02,#c4,#03,#7c,#01,#c4,#01
	db #c4,#02,#c4,#03,#80,#01,#c4,#01
	db #c4,#02,#c4,#03,#80,#01,#c4,#01
	db #c4,#02,#c4,#03,#72,#01,#c4,#01
	db #c4,#02,#c4,#03,#7c,#01,#c4,#01
	db #c4,#02,#c4,#03,#80,#01,#c4,#01
	db #c4,#02,#c4,#03,#80,#01,#c4,#01
	db #fa,#c4,#02,#c4,#03,#c4,#04,#c4
	db #05,#c4,#06,#c4,#07,#c4,#08,#64
	db #81,#02,#c0,#1e,#69,#c2,#c4,#02
	db #c4,#03,#7c,#81,#01,#c4,#01,#c4
	db #02,#c4,#03,#80,#01,#c4,#01,#c4
	db #02,#c4,#03,#72,#01,#c4,#01,#c4
	db #02,#c4,#03,#7c,#01,#c4,#01,#c4
	db #02,#c4,#03,#7c,#01,#c4,#01,#c4
	db #02,#c4,#03,#80,#01,#c4,#01,#c4
	db #02,#c4,#03,#72,#01,#c4,#01,#c4
	db #02,#c4,#03,#7c,#01,#c4,#01,#c4
	db #02,#c4,#03,#c4,#04,#c4,#05,#c4
	db #06,#c4,#07,#c4,#08,#c4,#09,#c4
	db #0a,#c4,#0b,#c4,#0c,#c4,#0d,#c4
	db #0e,#c4,#0f,#c2,#c4,#09,#c4,#0a
	db #c4,#0b,#c4,#0c,#c4,#0d,#c4,#0e
	db #c4,#0f,#c2,#50,#81,#03,#51,#51
	db #51,#65,#69,#65,#65,#51,#51,#51
	db #51,#65,#69,#65,#65,#51,#51,#51
	db #51,#65,#69,#65,#65,#51,#51,#51
	db #51,#65,#69,#65,#65,#51,#51,#51
	db #51,#65,#69,#65,#65,#51,#51,#51
	db #51,#65,#69,#65,#65,#51,#51,#51
	db #51,#65,#69,#65,#65,#51,#51,#51
	db #51,#65,#69,#65,#65,#c2,#48,#81
	db #04,#ce,#58,#c7,#05,#0f,#c6,#0f
	db #48,#81,#06,#ce,#70,#c7,#05,#1f
	db #c6,#1f,#70,#40,#1f,#c6,#1f,#48
	db #81,#04,#ce,#48,#80,#06,#ce,#58
	db #c7,#05,#0f,#c6,#0f,#48,#81,#04
	db #ce,#58,#c7,#05,#0f,#c6,#0f,#48
	db #81,#06,#ce,#70,#c7,#05,#1f,#c6
	db #1f,#70,#40,#1f,#c6,#1f,#48,#81
	db #04,#ce,#48,#80,#06,#49,#49,#ce
	db #48,#80,#04,#ce,#58,#c7,#05,#0f
	db #c6,#0f,#48,#81,#06,#ce,#70,#c7
	db #05,#1f,#c6,#1f,#70,#40,#1f,#c6
	db #1f,#48,#81,#04,#ce,#48,#80,#06
	db #ce,#58,#c7,#05,#0f,#c6,#0f,#48
	db #81,#04,#ce,#58,#c7,#05,#0f,#c6
	db #0f,#48,#81,#06,#ce,#70,#c7,#05
	db #1f,#c6,#1f,#70,#40,#1f,#c6,#1f
	db #48,#81,#04,#ce,#48,#80,#06,#49
	db #49,#c2,#56,#81,#03,#57,#57,#57
	db #6b,#6f,#6b,#6b,#57,#57,#57,#57
	db #6b,#6f,#6b,#6b,#5d,#5d,#5d,#5d
	db #71,#75,#71,#71,#5d,#5d,#5d,#5d
	db #71,#75,#71,#71,#4d,#4d,#4d,#4d
	db #61,#65,#61,#61,#4d,#4d,#4d,#4d
	db #61,#65,#61,#61,#4d,#4d,#4d,#4d
	db #61,#65,#61,#61,#4d,#4d,#4d,#4d
	db #61,#65,#61,#61,#4c,#81,#07,#ce
	db #57,#ce,#5b,#ce,#5d,#5b,#d0,#57
	db #ce,#5b,#5d,#d0,#53,#ce,#5d,#ce
	db #61,#ce,#65,#61,#d0,#5d,#d6,#65
	db #ce,#65,#ce,#6d,#ce,#65,#61,#d0
	db #65,#da,#65,#ce,#6d,#ce,#65,#61
	db #d0,#61,#ce,#5d,#5b,#c2,#48,#81
	db #04,#ce,#58,#c7,#05,#0f,#c6,#0f
	db #48,#81,#06,#ce,#70,#c7,#05,#1f
	db #c6,#1f,#70,#40,#1f,#c6,#1f,#48
	db #81,#04,#ce,#48,#80,#06,#ce,#58
	db #c7,#05,#0f,#c6,#0f,#48,#81,#04
	db #ce,#58,#c7,#05,#0f,#c6,#0f,#48
	db #81,#06,#ce,#70,#c7,#05,#1f,#c6
	db #1f,#70,#40,#1f,#c6,#1f,#48,#81
	db #04,#ce,#48,#80,#06,#49,#49,#ce
	db #48,#80,#04,#ce,#58,#c7,#05,#0f
	db #c6,#0f,#48,#81,#06,#ce,#70,#c7
	db #05,#1f,#c6,#1f,#70,#40,#1f,#c6
	db #1f,#48,#81,#04,#ce,#48,#80,#06
	db #ce,#58,#c7,#05,#0f,#c6,#0f,#c6
	db #0f,#c6,#0f,#64,#41,#1f,#c6,#1f
	db #c6,#1f,#c6,#1f,#64,#40,#1f,#c6
	db #1f,#c6,#1f,#c6,#1f,#5e,#40,#1f
	db #c6,#1f,#5a,#40,#1f,#c6,#1f,#5a
	db #40,#1f,#c6,#1f,#56,#81,#03,#57
	db #57,#57,#6b,#6f,#6b,#6b,#57,#57
	db #57,#57,#6b,#6f,#6b,#6b,#5d,#5d
	db #5d,#5d,#71,#75,#71,#71,#5d,#5d
	db #5d,#5d,#71,#75,#71,#71,#4d,#4d
	db #4d,#4d,#61,#65,#61,#61,#4d,#4d
	db #4d,#4d,#61,#65,#61,#61,#53,#53
	db #53,#53,#51,#49,#ce,#ca,#ce,#48
	db #80,#03,#61,#ce,#53,#ce,#57,#c2
	db #4c,#81,#07,#ce,#57,#ce,#5b,#ce
	db #5d,#5b,#d0,#57,#ce,#5b,#5d,#d0
	db #53,#ce,#5d,#ce,#61,#ce,#65,#61
	db #d0,#5d,#d6,#65,#ce,#65,#ce,#6d
	db #ce,#65,#61,#d0,#65,#ce,#6d,#6f
	db #d4,#73,#d2,#73,#d2,#6f,#ce,#6f
	db #ce,#6f,#c2,#4e,#81,#03,#4f,#4f
	db #4f,#63,#67,#63,#63,#4f,#4f,#4f
	db #4f,#63,#67,#63,#63,#5d,#5d,#5d
	db #5d,#71,#75,#71,#71,#5d,#5d,#5d
	db #5d,#71,#75,#71,#71,#49,#49,#49
	db #49,#5d,#61,#5d,#5d,#49,#49,#49
	db #49,#5d,#61,#5d,#5d,#49,#49,#49
	db #49,#5d,#61,#5d,#5d,#49,#49,#49
	db #49,#5d,#61,#5d,#5d,#6e,#81,#08
	db #d2,#75,#ce,#6f,#ce,#79,#ce,#75
	db #d2,#6f,#d2,#6b,#ce,#6b,#da,#c4
	db #01,#c4,#02,#6a,#01,#d2,#69,#ce
	db #69,#e2,#c4,#01,#c4,#02,#c4,#03
	db #c4,#04,#c4,#05,#c4,#06,#c4,#07
	db #c4,#08,#68,#01,#ce,#6b,#ce,#6d
	db #ce,#6f,#c2,#c4,#00,#d2,#74,#80
	db #08,#ce,#6f,#ce,#79,#ce,#75,#d2
	db #7f,#d2,#7d,#ce,#7d,#da,#c4,#01
	db #c4,#02,#7c,#01,#d2,#79,#ce,#79
	db #e2,#c4,#01,#c4,#02,#c4,#03,#c4
	db #04,#c4,#05,#c4,#06,#c4,#07,#c4
	db #08,#c4,#09,#c4,#0a,#c4,#0b,#c4
	db #0c,#c4,#0d,#c4,#0e,#c4,#0f,#c2
	db #48,#81,#04,#ce,#58,#c7,#05,#0f
	db #c6,#0f,#48,#81,#06,#ce,#70,#c7
	db #05,#1f,#c6,#1f,#70,#40,#1f,#c6
	db #1f,#48,#81,#04,#ce,#48,#80,#06
	db #ce,#58,#c7,#05,#0f,#c6,#0f,#48
	db #81,#04,#ce,#58,#c7,#05,#0f,#c6
	db #0f,#48,#81,#06,#ce,#70,#c7,#05
	db #1f,#c6,#1f,#70,#40,#1f,#c6,#1f
	db #48,#81,#04,#ce,#48,#80,#06,#49
	db #49,#ce,#48,#80,#04,#ce,#68,#c0
	db #05,#1f,#c6,#1f,#c6,#1f,#c6,#1f
	db #60,#40,#1f,#c6,#1f,#c6,#1f,#c6
	db #1f,#5e,#40,#1f,#c6,#1f,#5a,#40
	db #1f,#c6,#1f,#5a,#40,#1f,#c6,#1f
	db #48,#81,#04,#ce,#58,#c7,#05,#0f
	db #c6,#0f,#48,#81,#06,#ce,#70,#c7
	db #05,#1f,#c6,#1f,#70,#40,#1f,#c6
	db #1f,#48,#81,#04,#ce,#48,#80,#06
	db #49,#49,#c2,#4e,#81,#03,#4f,#4f
	db #4f,#63,#67,#63,#63,#4f,#4f,#4f
	db #4f,#63,#67,#63,#63,#5d,#5d,#5d
	db #5d,#71,#75,#71,#71,#5d,#5d,#5d
	db #5d,#71,#75,#71,#71,#53,#53,#53
	db #53,#4f,#49,#ce,#ca,#ce,#48,#80
	db #03,#61,#ce,#53,#ce,#57,#ce,#49
	db #49,#49,#49,#5d,#61,#5d,#5d,#49
	db #49,#49,#49,#5d,#61,#5d,#5d,#64
	db #81,#09,#ce,#65,#ce,#65,#ce,#65
	db #ce,#ca,#ce,#5c,#80,#09,#ce,#5d
	db #ce,#ca,#ce,#6a,#80,#09,#ce,#ca
	db #ce,#6a,#80,#09,#ce,#ca,#ce,#5a
	db #80,#09,#ce,#5b,#ce,#ca,#ce,#4c
	db #80,#09,#ce,#4c,#80,#03,#4d,#4d
	db #4d,#61,#65,#61,#61,#4d,#4d,#4d
	db #4d,#61,#65,#61,#61,#4d,#4d,#4d
	db #4d,#61,#65,#61,#61,#4d,#4d,#4d
	db #4d,#61,#65,#61,#61,#d0,#6c,#81
	db #0a,#d2,#6d,#d2,#6b,#ce,#6b,#d2
	db #6b,#d2,#6b,#d2,#69,#ce,#69,#d2
	db #65,#c0,#1e,#c4,#01,#c4,#02,#4c
	db #81,#03,#4d,#4d,#4d,#61,#65,#61
	db #61,#4d,#4d,#4d,#4d,#61,#65,#61
	db #61,#4d,#4d,#4d,#4d,#61,#65,#61
	db #61,#4d,#4d,#4d,#4d,#61,#65,#61
	db #61,#c4,#03,#c4,#04,#c4,#05,#c4
	db #06,#c4,#07,#c4,#08,#c4,#09,#c4
	db #0a,#c4,#0b,#c4,#0c,#c4,#0d,#c4
	db #0e,#c4,#0f,#c2,#4c,#81,#03,#4d
	db #4d,#4d,#61,#65,#61,#61,#4d,#4d
	db #4d,#4d,#61,#65,#61,#61,#4d,#4d
	db #4d,#4d,#61,#65,#61,#61,#4d,#4d
	db #4d,#4d,#61,#65,#61,#61,#55,#55
	db #55,#55,#69,#6d,#69,#69,#55,#55
	db #55,#55,#69,#6d,#69,#69,#55,#55
	db #55,#55,#69,#6d,#69,#69,#55,#55
	db #55,#55,#69,#6d,#69,#69,#64,#81
	db #0b,#d2,#64,#80,#0c,#e2,#6a,#80
	db #0b,#ce,#6a,#80,#0c,#d6,#72,#80
	db #0b,#ce,#72,#80,#0c,#d6,#7a,#80
	db #0b,#ce,#7a,#80,#0c,#c2,#4c,#81
	db #03,#4d,#4d,#4d,#61,#65,#61,#61
	db #4d,#4d,#4d,#4d,#61,#65,#61,#61
	db #4d,#4d,#4d,#4d,#61,#65,#61,#61
	db #4d,#4d,#4d,#4d,#61,#65,#61,#61
	db #59,#59,#59,#59,#6d,#71,#6d,#6d
	db #59,#59,#59,#59,#6d,#71,#6d,#6d
	db #59,#59,#59,#59,#6d,#71,#6d,#6d
	db #59,#59,#59,#59,#6d,#71,#6d,#6d
	db #7c,#81,#0b,#d2,#7c,#80,#0c,#e2
	db #82,#80,#0b,#ce,#82,#80,#0c,#d6
	db #80,#80,#0b,#ce,#80,#80,#0c,#d6
	db #7e,#80,#0b,#ce,#7e,#80,#0c,#c2
	db #50,#81,#03,#51,#51,#51,#65,#69
	db #65,#65,#51,#51,#51,#51,#65,#69
	db #65,#65,#51,#51,#51,#51,#65,#69
	db #65,#65,#51,#51,#51,#51,#65,#69
	db #65,#65,#59,#59,#59,#59,#6d,#71
	db #6d,#6d,#59,#59,#59,#59,#6d,#71
	db #6d,#6d,#59,#59,#59,#59,#6d,#71
	db #6d,#6d,#59,#59,#59,#59,#6d,#71
	db #6d,#6d,#68,#81,#0b,#d2,#68,#80
	db #0c,#e2,#6e,#80,#0b,#ce,#6e,#80
	db #0c,#d6,#76,#80,#0b,#ce,#76,#80
	db #0c,#d2,#7c,#80,#0b,#81,#7f,#d2
	db #7e,#80,#0c,#fa,#80,#80,#08,#7f
	db #79,#c2,#50,#81,#03,#51,#51,#51
	db #65,#69,#65,#65,#51,#51,#51,#51
	db #65,#69,#65,#65,#51,#51,#51,#51
	db #65,#69,#65,#65,#51,#51,#51,#51
	db #65,#69,#65,#65,#5d,#5d,#5d,#5d
	db #71,#75,#71,#71,#5d,#5d,#5d,#5d
	db #71,#75,#71,#71,#5d,#5d,#5d,#5d
	db #71,#75,#71,#71,#5d,#5d,#5d,#5d
	db #71,#75,#71,#71,#76,#81,#0b,#d2
	db #76,#80,#0c,#e2,#6e,#80,#0b,#ce
	db #6e,#80,#0c,#e2,#68,#80,#0b,#67
	db #65,#d2,#64,#80,#0c,#c2,#70,#c5
	db #06,#1f,#c6,#1f,#d0,#70,#40,#1f
	db #c6,#1f,#d0,#70,#40,#1f,#c6,#1f
	db #d0,#70,#40,#1f,#c6,#1f,#d0,#70
	db #40,#1f,#c6,#1f,#d0,#70,#40,#1f
	db #c6,#1f,#d0,#70,#40,#1f,#c6,#1f
	db #d0,#70,#40,#1f,#c6,#1f,#d0,#70
	db #40,#1f,#c6,#1f,#d0,#70,#40,#1f
	db #c6,#1f,#d0,#70,#40,#1f,#c6,#1f
	db #d0,#70,#40,#1f,#c6,#1f,#d0,#70
	db #40,#1f,#c6,#1f,#d0,#70,#40,#1f
	db #c6,#1f,#d0,#70,#40,#1f,#c6,#1f
	db #d0,#70,#40,#1f,#c6,#1f,#c2,#52
	db #81,#03,#ce,#53,#ce,#6b,#ce,#53
	db #ce,#67,#ce,#53,#ce,#53,#ce,#63
	db #ce,#53,#ce,#53,#ce,#61,#ce,#53
	db #ce,#53,#ce,#5d,#ce,#59,#ce,#57
	db #ce,#57,#ce,#57,#ce,#6f,#ce,#57
	db #ce,#6f,#ce,#57,#ce,#57,#ce,#55
	db #ce,#ca,#ce,#54,#80,#03,#ce,#6d
	db #ce,#55,#ce,#6d,#ce,#55,#ce,#55
	db #ce,#53,#c2,#c4,#01,#c4,#02,#c4
	db #03,#c4,#04,#c4,#05,#c4,#06,#c4
	db #07,#c4,#08,#c4,#09,#c4,#0a,#c4
	db #0b,#c4,#0c,#c4,#0d,#c4,#0e,#c4
	db #0f,#c2,#52,#81,#0b,#ce,#52,#80
	db #0c,#56,#80,#0b,#59,#ce,#5d,#ce
	db #61,#ce,#67,#ce,#65,#ce,#5f,#ce
	db #61,#d2,#60,#80,#0c,#d6,#c4,#01
	db #c4,#02,#60,#81,#0b,#ce,#5f,#ce
	db #5e,#80,#0c,#de,#c4,#01,#c4,#02
	db #5e,#81,#0b,#ce,#5d,#ce,#5c,#80
	db #0c,#de,#c4,#01,#c4,#02,#5c,#81
	db #0b,#ce,#59,#c2,#52,#81,#03,#ce
	db #53,#ce,#6b,#ce,#53,#ce,#67,#ce
	db #53,#ce,#53,#ce,#63,#ce,#53,#ce
	db #53,#ce,#61,#ce,#53,#ce,#53,#ce
	db #5d,#ce,#59,#ce,#57,#ce,#4f,#ce
	db #4f,#ce,#67,#ce,#4f,#ce,#67,#ce
	db #4f,#ce,#4f,#ce,#4d,#ce,#ca,#ce
	db #4c,#80,#03,#ce,#65,#ce,#4d,#ce
	db #65,#ce,#4d,#ce,#4d,#ce,#65,#c2
	db #52,#81,#0b,#ce,#52,#80,#0c,#56
	db #80,#0b,#59,#ce,#5d,#ce,#61,#ce
	db #67,#ce,#65,#ce,#5f,#ce,#61,#d2
	db #60,#80,#0c,#d6,#c4,#01,#c4,#02
	db #60,#81,#0b,#ce,#5d,#ce,#5c,#80
	db #0c,#de,#c4,#01,#c4,#02,#5c,#81
	db #0b,#ce,#5b,#ce,#5a,#80,#0c,#de
	db #c4,#01,#c4,#02,#5a,#81,#0b,#ce
	db #5d,#c2,#50,#85,#04,#ce,#49,#ce
	db #70,#c0,#06,#1f,#c6,#1f,#d0,#70
	db #40,#1f,#c6,#1f,#d0,#50,#80,#04
	db #ce,#49,#ce,#70,#c0,#06,#1f,#c6
	db #1f,#d0,#70,#40,#1f,#c6,#1f,#d0
	db #50,#80,#04,#ce,#49,#ce,#70,#c0
	db #06,#1f,#c6,#1f,#d0,#70,#40,#1f
	db #c6,#1f,#d0,#50,#80,#04,#ce,#49
	db #ce,#70,#c0,#06,#1f,#c6,#1f,#d0
	db #70,#40,#1f,#c6,#1f,#d0,#50,#80
	db #04,#ce,#49,#ce,#70,#c0,#06,#1f
	db #c6,#1f,#d0,#70,#40,#1f,#c6,#1f
	db #d0,#50,#80,#04,#c2,#56,#81,#03
	db #ce,#57,#ce,#6f,#ce,#57,#ce,#6b
	db #ce,#57,#ce,#57,#ce,#67,#ce,#57
	db #ce,#57,#ce,#65,#ce,#57,#ce,#57
	db #ce,#61,#ce,#5d,#ce,#5b,#ce,#5b
	db #ce,#5b,#ce,#73,#ce,#5b,#ce,#73
	db #ce,#5b,#ce,#5b,#ce,#59,#ce,#ca
	db #ce,#58,#80,#03,#ce,#71,#ce,#59
	db #ce,#71,#ce,#59,#ce,#59,#ce,#57
	db #c2,#56,#81,#0b,#ce,#56,#80,#0c
	db #5a,#80,#0b,#5d,#ce,#61,#ce,#65
	db #ce,#6b,#ce,#69,#ce,#63,#ce,#65
	db #d2,#64,#80,#0c,#d6,#c4,#01,#c4
	db #02,#64,#81,#0b,#ce,#63,#ce,#62
	db #80,#0c,#de,#c4,#01,#c4,#02,#62
	db #81,#0b,#ce,#61,#ce,#60,#80,#0c
	db #de,#c4,#01,#c4,#02,#60,#81,#0b
	db #ce,#5d,#c2,#5c,#81,#0b,#d0,#61
	db #65,#ce,#6b,#ce,#6f,#ce,#6b,#ce
	db #69,#ce,#63,#ce,#65,#d2,#64,#80
	db #0c,#c2,#d0,#52,#81,#04,#d2,#53
	db #d2,#53,#ce,#4d,#ce,#4d,#d2,#53
	db #d2,#53,#d2,#53,#ce,#4d,#ce,#4d
	db #ce,#49,#ce,#58,#c7,#05,#0f,#c6
	db #0f,#48,#81,#06,#ce,#70,#c7,#05
	db #1f,#c6,#1f,#70,#40,#1f,#c6,#1f
	db #48,#81,#04,#ce,#48,#80,#06,#ce
	db #58,#c7,#05,#0f,#c6,#0f,#48,#81
	db #04,#ce,#58,#c7,#05,#0f,#c6,#0f
	db #48,#81,#06,#ce,#70,#c7,#05,#1f
	db #c6,#1f,#70,#40,#1f,#c6,#1f,#48
	db #81,#04,#ce,#48,#80,#06,#49,#49
	db #c2,#5c,#81,#09,#ce,#5d,#ce,#ca
	db #ce,#5c,#80,#09,#ce,#ca,#ce,#52
	db #80,#09,#ce,#53,#ce,#53,#ce,#ca
	db #ce,#58,#80,#09,#ce,#ca,#ce,#58
	db #80,#09,#ce,#ca,#ce,#4e,#80,#09
	db #ce,#4f,#ce,#4f,#ce,#56,#80,#03
	db #57,#57,#57,#6b,#6f,#6b,#6b,#57
	db #57,#57,#57,#6b,#6f,#6b,#6b,#57
	db #57,#57,#57,#6b,#6f,#6b,#6b,#57
	db #57,#57,#57,#6b,#6f,#6b,#6b,#d0
	db #64,#81,#0a,#d2,#65,#d2,#61,#ce
	db #61,#ce,#61,#d2,#61,#d2,#61,#d2
	db #5d,#ce,#5d,#ce,#5d,#ce,#5f,#c2
	db #56,#81,#03,#57,#57,#57,#6b,#6f
	db #6b,#6b,#57,#57,#57,#57,#6b,#6f
	db #6b,#6b,#57,#57,#57,#57,#6b,#6f
	db #6b,#6b,#57,#57,#57,#57,#6b,#6f
	db #6b,#6b,#48,#81,#03,#49,#49,#49
	db #5d,#61,#5d,#5d,#49,#49,#49,#49
	db #5d,#61,#5d,#5d,#49,#49,#49,#49
	db #5d,#61,#5d,#5d,#49,#49,#49,#49
	db #5d,#61,#5d,#5d,#49,#49,#49,#49
	db #5d,#61,#5d,#5d,#49,#49,#49,#49
	db #5d,#61,#5d,#5d,#49,#49,#49,#49
	db #5d,#61,#5d,#5d,#49,#49,#49,#49
	db #5d,#61,#5d,#5d,#78,#81,#0b,#d2
	db #78,#80,#0d,#e2,#7e,#80,#0b,#d2
	db #7e,#80,#0d,#d2,#86,#80,#0b,#d2
	db #86,#80,#0d,#d2,#8c,#80,#0b,#d2
	db #8c,#80,#0d,#e2,#c4,#01,#c4,#02
	db #c4,#03,#c4,#04,#90,#81,#0b,#ce
	db #8d,#ce,#91,#ce,#8d,#ce,#91,#ce
	db #8d,#90,#80,#0d,#56,#81,#03,#57
	db #57,#57,#6b,#6f,#6b,#6b,#57,#57
	db #57,#57,#6b,#6f,#6b,#6b,#57,#57
	db #57,#57,#6b,#6f,#6b,#6b,#57,#57
	db #57,#57,#6b,#6f,#6b,#6b,#57,#57
	db #57,#57,#6b,#6f,#6b,#6b,#57,#57
	db #57,#57,#6b,#6f,#6b,#6b,#57,#57
	db #57,#57,#6b,#6f,#6b,#6b,#57,#57
	db #57,#57,#6b,#6f,#6b,#6b,#d0,#8c
	db #81,#0b,#ce,#87,#83,#87,#ce,#86
	db #80,#0d,#da,#c4,#0f,#ce,#8c,#81
	db #0b,#8b,#d0,#87,#c4,#0f,#8c,#01
	db #8b,#d0,#87,#c4,#0f,#8c,#01,#8b
	db #d0,#87,#c4,#0f,#8c,#01,#8b,#d0
	db #87,#c4,#0f,#8c,#01,#8b,#d0,#87
	db #c4,#0f,#86,#41,#f6,#94,#80,#0e
	db #94,#80,#0d,#ce,#94,#80,#0b,#ce
	db #94,#80,#0d,#ce,#94,#80,#0b,#ce
	db #91,#ce,#95,#ce,#9f,#c2,#9e,#81
	db #0d,#ce,#9e,#80,#0b,#ce,#a5,#ce
	db #9f,#ce,#a9,#ce,#a5,#ce,#9f,#ce
	db #9b,#ce,#9a,#40,#ff,#9c,#80,#0e
	db #9c,#80,#0d,#ce,#9a,#c0,#0b,#ff
	db #9c,#80,#0e,#9c,#80,#0d,#ce,#9c
	db #80,#0b,#9b,#97,#ce,#91,#ce,#8d
	db #ce,#91,#ce,#91,#ce,#8d,#ce,#87
	db #ce,#83,#ce,#87,#ce,#86,#80,#0d
	db #ce,#90,#80,#0b,#ce,#90,#80,#0d
	db #ce,#90,#80,#0b,#ce,#8d,#ce,#87
	db #ce,#83,#87,#8d,#83,#87,#8d,#83
	db #87,#8c,#81,#0b,#83,#87,#8d,#83
	db #87,#8d,#83,#87,#8d,#83,#87,#8d
	db #83,#87,#8d,#83,#87,#8d,#83,#87
	db #8d,#83,#87,#8d,#83,#87,#8d,#83
	db #87,#8d,#87,#86,#40,#f6,#94,#80
	db #0e,#94,#80,#0d,#ce,#94,#80,#0b
	db #ce,#94,#80,#0d,#ce,#94,#80,#0b
	db #ce,#91,#ce,#95,#ce,#9f,#ce,#9e
	db #80,#0d,#ce,#9e,#80,#0b,#ce,#a5
	db #ce,#9f,#ce,#a9,#ce,#9f,#ce,#ad
	db #ce,#a5,#c2,#5c,#81,#03,#5d,#5d
	db #5d,#71,#75,#71,#71,#5d,#5d,#5d
	db #5d,#71,#75,#71,#71,#53,#53,#53
	db #53,#67,#6b,#67,#67,#53,#53,#53
	db #53,#67,#6b,#67,#67,#49,#49,#49
	db #49,#5d,#61,#5d,#5d,#49,#49,#49
	db #49,#5d,#61,#5d,#5d,#49,#49,#49
	db #49,#5d,#61,#5d,#5d,#49,#49,#49
	db #49,#5d,#61,#5d,#5d,#ac,#81,#0b
	db #ce,#ac,#80,#0d,#ce,#ac,#80,#0b
	db #ce,#ac,#80,#0d,#ce,#ac,#80,#0b
	db #ce,#a9,#ce,#a5,#ce,#a9,#ce,#a8
	db #80,#0d,#ce,#a8,#80,#0b,#ce,#a5
	db #ce,#9f,#ce,#9b,#ce,#9f,#ce,#a5
	db #ce,#9b,#ce,#9f,#ce,#9f,#ce,#9b
	db #ce,#99,#ce,#9b,#ce,#99,#ce,#91
	db #ce,#8d,#ce,#91,#ce,#91,#ce,#99
	db #ce,#9b,#ce,#9f,#ce,#a5,#ce,#a9
	db #ce,#ad,#c2,#5c,#81,#03,#5d,#5d
	db #5d,#71,#75,#71,#71,#5d,#5d,#5d
	db #5d,#71,#75,#71,#71,#53,#53,#53
	db #53,#67,#6b,#67,#67,#53,#53,#53
	db #53,#67,#6b,#67,#67,#49,#49,#49
	db #49,#5d,#61,#5d,#5d,#49,#49,#49
	db #49,#5d,#61,#5d,#5d,#53,#53,#53
	db #53,#4f,#49,#ce,#ca,#ce,#56,#80
	db #03,#61,#ce,#53,#ce,#57,#c2,#b2
	db #81,#0b,#ce,#b2,#80,#0d,#ce,#b2
	db #80,#0b,#ce,#b2,#80,#0d,#ce,#b2
	db #80,#0b,#ce,#af,#ce,#ad,#ce,#af
	db #ce,#ae,#80,#0d,#ce,#ae,#80,#0b
	db #ce,#ad,#ce,#a9,#ce,#ad,#ce,#a9
	db #ce,#a3,#c6,#fe,#a9,#ce,#a8,#80
	db #0d,#c2,#6a,#81,#04,#ce,#53,#d2
	db #53,#d2,#4d,#ce,#4d,#ce,#4d,#ce
	db #48,#01,#ce,#58,#c7,#05,#0f,#c6
	db #0f,#48,#81,#06,#ce,#70,#c7,#05
	db #1f,#c6,#1f,#70,#40,#1f,#c6,#1f
	db #48,#81,#04,#ce,#48,#80,#06,#49
	db #49,#ce,#48,#80,#04,#ce,#58,#c7
	db #05,#0f,#c6,#0f,#48,#81,#06,#ce
	db #70,#c7,#05,#1f,#c6,#1f,#70,#40
	db #1f,#c6,#1f,#48,#81,#04,#ce,#48
	db #80,#06,#ce,#58,#c7,#05,#0f,#c6
	db #0f,#48,#81,#04,#ce,#58,#c7,#05
	db #0f,#c6,#0f,#48,#81,#06,#ce,#70
	db #c7,#05,#1f,#c6,#1f,#70,#40,#1f
	db #c6,#1f,#48,#81,#04,#ce,#48,#80
	db #06,#49,#49,#c2,#68,#81,#09,#ce
	db #69,#ce,#ca,#ce,#68,#80,#09,#ce
	db #ca,#ce,#60,#80,#09,#ce,#61,#ce
	db #ca,#ce,#6e,#80,#09,#ce,#ca,#ce
	db #6e,#80,#09,#ce,#ca,#ce,#64,#80
	db #09,#ce,#65,#ce,#ca,#ce,#68,#80
	db #09,#ce,#50,#80,#03,#51,#51,#51
	db #65,#69,#65,#65,#51,#51,#51,#51
	db #65,#69,#65,#65,#51,#51,#51,#51
	db #65,#69,#65,#65,#51,#51,#51,#51
	db #65,#69,#65,#65,#d0,#70,#81,#0a
	db #d2,#71,#d2,#6f,#ce,#6f,#d2,#6f
	db #d2,#6f,#d2,#6d,#ce,#6d,#d2,#69
	db #c2,#50,#81,#03,#51,#51,#51,#65
	db #69,#65,#65,#51,#51,#51,#51,#65
	db #69,#65,#65,#51,#51,#51,#51,#65
	db #69,#65,#65,#51,#51,#51,#51,#65
	db #69,#65,#65,#4f,#4f,#4f,#4f,#63
	db #67,#63,#63,#4f,#4f,#4f,#4f,#63
	db #67,#63,#63,#4f,#4f,#4f,#4f,#63
	db #67,#63,#63,#4f,#4f,#4f,#4f,#63
	db #67,#63,#63,#d0,#7e,#81,#01,#c4
	db #01,#c4,#02,#c4,#03,#80,#01,#c4
	db #01,#c4,#02,#c4,#03,#76,#01,#c4
	db #01,#c4,#02,#c4,#03,#7e,#01,#c4
	db #01,#c4,#0f,#ce,#7e,#01,#c4,#01
	db #c4,#02,#c4,#03,#80,#01,#c4,#01
	db #c4,#02,#c4,#03,#76,#01,#c4,#01
	db #c4,#02,#c4,#03,#7e,#01,#c4,#01
	db #c4,#0f,#ce,#7e,#01,#c4,#01,#c4
	db #02,#c4,#03,#80,#01,#c4,#01,#c4
	db #02,#c4,#03,#74,#01,#c4,#01,#c4
	db #02,#c4,#03,#7e,#01,#c4,#01,#c4
	db #0f,#ce,#7e,#01,#c4,#01,#c4,#02
	db #c4,#03,#80,#01,#c4,#01,#c4,#02
	db #c4,#03,#74,#01,#c4,#01,#c4,#02
	db #c4,#03,#7e,#01,#c4,#01,#50,#81
	db #03,#51,#51,#51,#65,#69,#65,#65
	db #51,#51,#51,#51,#65,#69,#65,#65
	db #51,#51,#51,#51,#65,#69,#65,#65
	db #51,#51,#51,#51,#65,#69,#65,#65
	db #55,#55,#55,#55,#69,#6d,#69,#69
	db #55,#55,#55,#55,#69,#6d,#69,#69
	db #55,#55,#55,#55,#69,#6d,#69,#69
	db #55,#55,#55,#55,#69,#6d,#69,#69
	db #c4,#0f,#ce,#7e,#81,#01,#c4,#01
	db #c4,#02,#c4,#03,#80,#01,#c4,#01
	db #c4,#02,#c4,#03,#76,#01,#c4,#01
	db #c4,#02,#c4,#03,#7e,#01,#c4,#01
	db #c4,#0f,#ce,#7e,#01,#c4,#01,#c4
	db #02,#c4,#03,#80,#01,#c4,#01,#c4
	db #02,#c4,#03,#76,#01,#c4,#01,#c4
	db #02,#c4,#03,#7e,#01,#c4,#01,#c4
	db #0f,#ce,#7a,#01,#c4,#01,#c4,#02
	db #c4,#03,#80,#01,#c4,#01,#c4,#02
	db #c4,#03,#74,#01,#c4,#01,#c4,#02
	db #c4,#03,#7a,#01,#c4,#01,#c4,#0f
	db #ce,#7a,#01,#c4,#01,#c4,#02,#c4
	db #03,#80,#01,#c4,#01,#c4,#02,#c4
	db #03,#74,#01,#c4,#01,#c4,#02,#c4
	db #03,#7a,#01,#c4,#01,#5a,#81,#03
	db #5b,#5b,#5b,#6f,#73,#6f,#6f,#5b
	db #5b,#5b,#5b,#6f,#73,#6f,#6f,#5b
	db #5b,#5b,#5b,#6f,#73,#6f,#6f,#5b
	db #5b,#5b,#5b,#6f,#73,#6f,#6f,#4b
	db #4b,#4b,#4b,#5f,#63,#5f,#5f,#4b
	db #4b,#4b,#4b,#5f,#63,#5f,#5f,#4b
	db #4b,#4b,#4b,#5f,#63,#5f,#5f,#4b
	db #4b,#4b,#4b,#5f,#63,#5f,#5f,#c4
	db #0f,#ce,#78,#81,#01,#c4,#01,#c4
	db #02,#c4,#03,#80,#01,#c4,#01,#c4
	db #02,#c4,#03,#72,#01,#c4,#01,#c4
	db #02,#c4,#03,#78,#01,#c4,#01,#c4
	db #0f,#ce,#78,#01,#c4,#01,#c4,#02
	db #c4,#03,#80,#01,#c4,#01,#c4,#02
	db #c4,#03,#72,#01,#c4,#01,#c4,#02
	db #c4,#03,#78,#01,#c4,#01,#c4,#0f
	db #ce,#7a,#01,#c4,#01,#c4,#02,#c4
	db #03,#80,#01,#c4,#01,#c4,#02,#c4
	db #03,#70,#01,#c4,#01,#c4,#02,#c4
	db #03,#7a,#01,#c4,#01,#c4,#0f,#ce
	db #7a,#01,#c4,#01,#c4,#02,#c4,#03
	db #80,#01,#c4,#01,#c4,#02,#c4,#03
	db #70,#01,#c4,#01,#c4,#02,#c4,#03
	db #7a,#01,#c4,#01,#c4,#0f,#ce,#7c
	db #81,#01,#c4,#01,#c4,#02,#c4,#03
	db #80,#01,#c4,#01,#c4,#02,#c4,#03
	db #72,#01,#c4,#01,#c4,#02,#c4,#03
	db #7c,#01,#c4,#01,#c4,#0f,#ce,#7c
	db #01,#c4,#01,#c4,#02,#c4,#03,#80
	db #01,#c4,#01,#c4,#02,#c4,#03,#72
	db #01,#c4,#01,#c4,#02,#c4,#03,#7c
	db #01,#c4,#01,#5e,#81,#03,#ce,#5f
	db #ce,#77,#ce,#5f,#ce,#73,#ce,#5f
	db #ce,#5f,#ce,#6f,#ce,#5f,#ce,#5f
	db #ce,#6d,#ce,#5f,#ce,#5f,#ce,#69
	db #ce,#65,#ce,#63,#ce,#63,#ce,#63
	db #ce,#7b,#ce,#63,#ce,#7b,#ce,#63
	db #ce,#63,#ce,#61,#ce,#ca,#ce,#60
	db #80,#03,#ce,#79,#ce,#61,#ce,#79
	db #ce,#61,#ce,#61,#ce,#5f,#c2,#64
	db #81,#0b,#d2,#64,#80,#0c,#c0,#1a
	db #6a,#80,#0b,#d2,#6a,#80,#0c,#e2
	db #68,#81,#0b,#d2,#68,#80,#0c,#c2
	db #6c,#81,#0b,#d2,#6c,#80,#0c,#c0
	db #1a,#6a,#80,#0b,#d2,#6a,#80,#0c
	db #e2,#68,#81,#0b,#d2,#68,#80,#0c
	db #c2,#5e,#81,#02,#c0,#1e,#63,#ea
	db #61,#c2,#76,#81,#08,#c2,#5e,#81
	db #08,#c2,#80,#81,#01,#c4,#01,#c4
	db #02,#c4,#03,#76,#01,#c4,#01,#c4
	db #02,#c4,#03,#7e,#01,#c4,#01,#c4
	db #02,#c4,#03,#80,#01,#c4,#01,#c4
	db #02,#c4,#03,#80,#01,#c4,#01,#c4
	db #02,#c4,#03,#76,#01,#c4,#01,#c4
	db #02,#c4,#03,#7e,#01,#c4,#01,#c4
	db #02,#c4,#03,#80,#01,#c4,#01,#c4
	db #02,#c4,#03,#80,#01,#c4,#01,#c4
	db #02,#c4,#03,#76,#01,#c4,#01,#c4
	db #02,#c4,#03,#7e,#01,#c4,#01,#c4
	db #02,#c4,#03,#80,#01,#c4,#01,#c4
	db #02,#c4,#03,#80,#01,#c4,#01,#c4
	db #02,#c4,#03,#76,#01,#c4,#01,#c4
	db #02,#c4,#03,#7e,#01,#c4,#01,#c4
	db #02,#c4,#03,#80,#01,#c4,#01,#c4
	db #02,#c4,#03,#50,#81,#02,#c2,#c4
	db #01,#c4,#02,#7e,#81,#01,#c4,#01
	db #c4,#02,#c4,#03,#80,#01,#c4,#01
	db #c4,#02,#c4,#03,#76,#01,#c4,#01
	db #c4,#02,#c4,#03,#7e,#01,#c4,#01
	db #c4,#02,#c4,#03,#7e,#01,#c4,#01
	db #c4,#02,#c4,#03,#80,#01,#c4,#01
	db #c4,#02,#c4,#03,#76,#01,#c4,#01
	db #c4,#02,#c4,#03,#7e,#01,#c4,#01
	db #c4,#02,#c4,#03,#7e,#01,#c4,#01
	db #c4,#02,#c4,#03,#80,#01,#c4,#01
	db #c4,#02,#c4,#03,#76,#01,#c4,#01
	db #c4,#02,#c4,#03,#7e,#01,#c4,#01
	db #c4,#02,#c4,#03,#7e,#01,#c4,#01
	db #c4,#02,#c4,#03,#80,#01,#c4,#01
	db #c4,#02,#c4,#03,#76,#01,#c4,#01
	db #c4,#02,#c4,#03,#7e,#01,#c4,#01
	db #ff
;
.init_music		; added by Megachur
;
	ld de,l7a00
	jp real_init_music
;
.music_info
	db "Auf Wiedersehen Monty C64 (2016)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
