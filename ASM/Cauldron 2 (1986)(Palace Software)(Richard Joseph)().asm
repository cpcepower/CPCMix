; Music of Cauldron 2 (1986)(Palace Software)(Richard Joseph)()
; Ripped by Megachur the 02/02/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CAULDRO2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #8330

	read "music_header.asm"

.l8330
	di
	ld a,r
	ld h,a
	ld (lad96),hl
	ld sp,#c000
	call l873c
	ld hl,la27d
	ld (lbded),hl
	ld (lbdef),hl
	ld b,#7f
	ld c,#8d
	out (c),c
	ld a,#80
	ld de,lb661
	call l985f
	inc a
	ld de,lb721
	call l985f
	inc a
	ld de,lb7f8
	call l985f
	ld a,#00
	ld (lbdca),a
	ld (lbdc9),a
	ei
.l836b
	ld a,(lbdc9)
	or a
	jr nz,l83a2
	call l8771
	ld a,(lbdca)
	ld hl,la1f8
	call l9753
	push hl
	pop bc
	ld hl,la1f4
	call l9753
	call l896d
	ld hl,la1fc
	ld (lbded),hl
	ld (lbdef),hl
	ld a,#0a
	ld (lbdc9),a
	ld a,(lbdca)
	inc a
	cp #02
	jr c,l839f
	xor a
.l839f
	ld (lbdca),a
.l83a2
	ld bc,#0000
.l83a5
	dec bc
	ld a,(lbdcb)
	bit 4,a
	jr nz,l83bd
	ld a,b
	or c
	jr nz,l83a5
	ld a,(lbdc9)
	or a
	jr z,l83bb
	dec a
	ld (lbdc9),a
.l83bb
	jr l836b
.l83bd
	di
	call l8771
	ld a,#80
	ld de,#0000
	call l985f
	inc a
	call l985f
	inc a
	call l985f
	ld b,#7f
	ld c,#8c
	out (c),c
	ei
	call l86f0
	ld hl,(lad96)
	ld a,(hl)
	and #07
	ld hl,lad86
	call l9760
	call l8451
	call l878b
	ld hl,la26d
	ld (lbded),hl
	ld (lbdef),hl
.l83f6
	ld a,(lbdff)
	or a
	jp nz,l84c4
.l83fd
	ld a,(lbdfd)
	or a
	jp nz,l842e
	call l8667
	ld (lbde3),a
	push af
	call l8466
	pop af
.l840f
	ld a,(lbde3)
	bit 4,a
	call nz,l8510
	ld a,#01
	ld (lbca6),a
	call l8aa5
.l841f
	call l900f
	call l856d
	call l9549
	call l8e1d
	jp l83f6
.l842e
	dec a
	ld (lbdfd),a
	jp nz,l840f
.l8435
	ld a,(lbde4)
	cp #01
	jr nz,l8435
	ld hl,la27d
	ld (lbded),hl
	ld a,(lbdf5)
	call l8451
	call l878b
	call l88f2
	jp l840f
.l8451
	push af
	ld hl,lad98
	call l9753
	xor a
	push hl
	pop de
	ld bc,#0100
	call l8e6f
	call l88f2
	pop af
	ret
.l8466
	ld a,(lbde6)
	or a
	ret z
	dec a
	ld (lbde6),a
	ret nz
	ld (lbde7),a
	ret
.l8474
	di
	call l8771
	ld a,#00
	ld de,lb51e
	call l985f
	inc a
	ld de,lb52c
	call l985f
	inc a
	ld de,lb538
	call l985f
	ld b,#7f
	ld c,#8d
	out (c),c
	ei
	ld hl,la0ef
	ld bc,#030a
	call l896d
	call l94e6
	ld hl,la20c
	ld bc,#1514
	call l896d
	ld hl,la1fc
	ld (lbded),hl
	ld (lbdef),hl
.l84b3
	call l8667
	bit 4,a
	jr nz,l84b3
.l84ba
	call l8667
	bit 4,a
	jr z,l84ba
	jp l8330
.l84c4
	dec a
	ld (lbdff),a
	jp nz,l841f
	ld a,(lbe00)
	dec a
	jp m,l8474
	ld (lbe00),a
	ld hl,laecf
	ld d,(hl)
	inc hl
	call l9760
	ld e,(hl)
	ld a,#57
	call l96e0
	ld a,#09
	ld (la216),a
	ld (la217),a
	ld de,la22c
	call l9797
	ld hl,la27d
	ld (lbded),hl
.l84f7
	ld a,(lbde4)
	cp #01
	jr nz,l84f7
	ld a,(lbdf5)
	call l8552
	call l8451
	call l878b
	call l88f2
	jp l83fd
.l8510
	ld a,(lbdfd)
	or a
	ret nz
	ld a,(lbdec)
	and #01
	ret nz
	ld a,(lbdc8)
	or a
	ret z
	ld a,(lbde3)
	and #0f
	ret z
	ld (la6ba),a
	ld ix,lbca2
	ld a,(ix+#17)
	or a
	jr z,l8534
	ret p
.l8534
	ld a,#01
	ld e,(ix+#06)
	ld d,(ix+#07)
	ld c,#02
	ld b,#20
	call l8e6f
	ld a,#02
	ld de,lb58a
	call l985f
	ld de,la256
	call l9797
	ret
.l8552
	push af
	call l9479
	jr nz,l855a
	pop af
	ret
.l855a
	pop af
	ld hl,lad8e
	ld de,lad92
	ld b,#04
.l8563
	cp (hl)
	jr z,l856b
	inc de
	inc hl
	djnz l8563
	ret
.l856b
	ld a,(de)
	ret
.l856d
	ld a,(lbdff)
	or a
	ret nz
	ld hl,(lbdf5)
	ld h,#00
	add hl,hl
	add hl,hl
	ld de,lb10b
	add hl,de
	push hl
	pop iy
	ld ix,lbca2
	ld a,(ix+#06)
	cp #11
	jr z,l85a5
	jr c,l85a5
	cp #64
	jr nc,l85b5
	ld a,(ix+#07)
	cp #22
	jp z,l85d5
	jp c,l85d5
	add (ix+#12)
	cp #ce
	jp nc,l85c5
.l85a4
	ret
.l85a5
	ld a,(iy+#00)
	cp #80
	jr nc,l85eb
	ld (ix+#06),#63
	call l878b
	jr l85a4
.l85b5
	ld a,(iy+#01)
	cp #80
	jr nc,l85eb
	ld (ix+#06),#12
	call l878b
	jr l85a4
.l85c5
	ld a,(iy+#02)
	cp #80
	jr nc,l85eb
	ld (ix+#07),#23
	call l878b
	jr l85a4
.l85d5
	ld a,(iy+#03)
	cp #80
	jr nc,l85eb
	push af
	ld a,#cd
	sub (ix+#12)
	ld (ix+#07),a
	pop af
	call l878b
	jr l85a4
.l85eb
	and #7f
	ld (lbdf5),a
.l85f0
	ld a,(lbde4)
	cp #01
	jr nz,l85f0
	ld hl,la27d
	ld (lbded),hl
	call l8efc
	ld a,#28
	call l9723
	ld c,#a0
.l8607
	ld b,#50
	push hl
.l860a
	ld (hl),#00
	inc hl
	djnz l860a
	pop hl
	ld a,h
	add #08
	ld h,a
	and #38
	jp nz,l8625
	ld a,h
	sub #40
	ld h,a
	ld a,l
	add #50
	ld l,a
	jp nc,l8625
	inc h
.l8625
	dec c
	jr nz,l8607
.l8628
	ld a,(lbde4)
	cp #01
	jr nz,l8628
	ld hl,la26d
	ld (lbded),hl
	ld a,#00
	ld de,lb544
	call l985f
	inc a
	ld de,lb55e
	call l985f
	inc a
	ld de,lb568
	call l985f
	ld a,#00
	ld de,#6038
	ld b,#21
	ld c,#01
	call l8e6f
	ld a,#3c
	ld (lbdfc),a
	ld a,#92
	ld (lbdfa),a
	ld a,#78
	ld (lbdfd),a
	ret
.l8667
	ld a,(lbdcb)
	ret
	push af
	push hl
	push de
	push bc
	push ix
	push iy
	ld hl,(lad96)
	inc hl
	ld (lad96),hl
	ld hl,lbde4
	ld b,#f7
	ld a,#82
	out (c),a
	ld b,#f5
	in a,(c)
	and #01
	jr z,l868d
.l868b
	ld (hl),#00
.l868d
	ld a,(hl)
	cp #07
	jr nc,l868b
	inc (hl)
	ld a,(hl)
	cp #02
	call z,l86b8
	cp #03
	call z,l86c1
	cp #01
	call z,l9888
	cp #03
	call z,l9888
	cp #05
	call z,l9888
	pop iy
	pop ix
	pop bc
	pop de
	pop hl
	pop af
	ei
	reti
.l86b8
	push af
	ld hl,(lbdef)
	call l86d9
	pop af
	ret
.l86c1
	push af
	ld hl,(lbded)
	call l86d9
	pop af
	ret
.l86ca
	ld a,#54
	ld b,#7f
	ld c,#0f
.l86d0
	out (c),c
	out (c),a
	dec c
	jp p,l86d0
	ret
.l86d9
	push af
	ld b,#7f
	ld c,#00
	ld d,#10
.l86e0
	out (c),c
	ld a,(hl)
	and #1f
	or #40
	out (c),a
	inc c
	inc hl
	dec d
	jr nz,l86e0
	pop af
	ret
.l86f0
	ld bc,#0011
	ld hl,l9f0c
	call l896d
	ld bc,#0211
	ld hl,l9f13
	call l896d
	ld a,#06
	ld (lbe00),a
	ld ix,laecf
	ld b,a
	ld a,#57
	ld d,(ix+#00)
	inc ix
.l8713
	ld e,(ix+#00)
	call l96e0
	inc ix
	djnz l8713
	xor a
	ld (lbdfa),a
	call l8a00
	call l95b2
	ld de,la22c
	call l97c4
	ld a,#09
	ld (la216),a
	ld (la217),a
	ld de,la22c
	call l9797
	ret
.l873c
	ld bc,#01d4
	ld hl,lbc2f
.l8742
	xor a
	ld (hl),a
	inc hl
	dec bc
	ld a,c
	or b
	jp nz,l8742
	ld b,#07
	ld hl,la20c
	ld (hl),#88
.l8752
	inc hl
	ld (hl),#00
	djnz l8752
	ld b,#35
	ld hl,lace7
.l875c
	ld a,(hl)
	and #7f
	ld (hl),a
	inc hl
	djnz l875c
	ld a,#09
	ld (la216),a
	ld (la217),a
	ld a,#fc
	ld (la783),a
	ret
.l8771
	ld hl,la27d
	ld (lbded),hl
	ld (lbdef),hl
	call l86ca
	ld hl,#c000
	ld de,#c001
	ld bc,#3fff
	ld (hl),#00
	ldir
	ret
.l878b
	push af
	push hl
	push de
	push bc
	push ix
	push iy
	push af
.l8794
	ld a,(lbde4)
	cp #01
	jr nz,l8794
	ld hl,la27d
	ld (lbded),hl
	ld hl,lbca2
	ld de,lbc3c
	ld bc,#0016
	ldir
	call l8efc
	pop af
	ld (lbdf5),a
	ld hl,laee8
	call l9753
	push hl
	pop ix
	ld de,#0032
	call l9781
	ld de,#318b
	add hl,de
	ld a,(lbde8)
	push af
	ld a,#ff
	ld (lbde8),a
	ld bc,#0500
	ld e,#05
.l87d4
	push de
	ld e,#0a
.l87d7
	push hl
	push de
	push bc
	ld l,(hl)
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,#729b
	add hl,de
	ld d,c
	ld e,#04
.l87e8
	push de
	ld e,#04
.l87eb
	push de
	ld a,(hl)
	push af
	push hl
	push bc
	push ix
	ld a,(ix+#00)
	or a
	jr z,l8821
	ld b,a
	ld a,(hl)
.l87fa
	cp (ix+#01)
	jr c,l8817
	cp (ix+#02)
	jr c,l8806
	jr nz,l8817
.l8806
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,#4a8b
	add hl,de
	ex de,hl
	jr l8824
.l8817
	inc ix
	inc ix
	inc ix
	inc ix
	djnz l87fa
.l8821
	ld de,#4a8b
.l8824
	pop ix
	pop bc
	pop hl
	pop af
	call l89cd
	inc c
	inc hl
	pop de
	dec e
	jr nz,l87eb
	pop de
	ld c,d
	inc b
	dec e
	jr nz,l87e8
	pop bc
	pop de
	pop hl
	inc c
	inc c
	inc c
	inc c
	inc hl
	dec e
	jr nz,l87d7
	pop de
	inc b
	inc b
	inc b
	inc b
	ld c,#00
	dec e
	jr nz,l87d4
	pop af
	ld (lbde8),a
	ld hl,lbc3c
	ld de,lbca2
	ld bc,#0016
	ldir
	xor a
	ld (lbdfe),a
	ld ix,lbca2
	ld bc,(lbcb3)
	ld (lbcb6),bc
	ld a,(lbcb1)
	ld de,(lbca8)
	ld (lbcac),de
	call l964d
	ld a,#80
	ld (lbca3),a
	call l890a
	call l88cf
.l8885
	ld a,(lbde4)
	cp #01
	jr nz,l8885
	ld hl,la26d
	ld (lbded),hl
	ld a,(lbdf5)
	ld hl,lb108
	ld bc,#0003
.l889b
	cpi
	jr z,l88a8
	jp pe,l889b
	xor a
	ld (lbddd),a
	jr l88ad
.l88a8
	or #01
	ld (lbddd),a
.l88ad
	ld a,(lbdf5)
	cp #0a
	jr nz,l88be
	ld a,#01
	ld de,lb634
	call l985f
	jr l88c6
.l88be
	ld a,#01
	ld de,#0000
	call l985f
.l88c6
	pop iy
	pop ix
	pop bc
	pop de
	pop hl
	pop af
	ret
.l88cf
	ld a,(lbdf5)
	ld hl,lace7
	ld de,lad1c
	ld bc,#0035
.l88db
	cpi
	jr z,l88e5
	inc de
	inc de
	jp pe,l88db
	ret
.l88e5
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld bc,#2000
	ld a,#05
	call l8e6f
	ret
.l88f2
	xor a
	ld (lbdec),a
	ld (lbdea),a
	ld (lbdeb),a
	ld a,#02
	ld (lbca5),a
	ld (lbca6),a
	ld a,#80
	ld (lbca3),a
	ret
.l890a
	ld a,(lbdf5)
	ld hl,la7d5
	call l9753
	ld (lbde0),hl
	push hl
	pop ix
	call l9413
	and c
	ld (lbde2),a
	ld a,(ix+#00)
	or a
	ret z
	ld b,a
	inc ix
	ld a,#02
.l892a
	push bc
	push af
	push af
	ld e,(ix+#00)
	inc ix
	ld d,(ix+#00)
	inc ix
	ld a,(ix+#00)
	bit 7,a
	jr z,l8952
	and #03
	ld hl,la684
	call l9760
	ld b,a
	ld a,(lbde2)
	or a
	jr z,l894e
	inc b
.l894e
	ld c,#00
	jr l8958
.l8952
	ld c,a
	inc ix
	ld b,(ix+#00)
.l8958
	inc ix
	ld a,b
	call l9430
	jr z,l896a
	pop af
	call l8e6f
.l8964
	pop af
	inc a
	pop bc
	djnz l892a
	ret
.l896a
	pop af
	jr l8964
.l896d
	push bc
.l896e
	ld a,(hl)
	cp #24
	jr nz,l8975
	pop bc
	ret
.l8975
	cp #0d
	jr nz,l897f
	pop bc
	inc b
	push bc
	inc hl
	jr l896e
.l897f
	cp #80
	jr c,l8993
	push hl
	and #7f
	ld hl,la259
	call l9760
	ld (lbde8),a
	pop hl
	inc hl
	jr l896e
.l8993
	cp #30
	jr c,l89ab
	cp #3a
	jr nc,l899f
	sub #2f
	jr l89c3
.l899f
	cp #41
	jr c,l89ab
	cp #5b
	jr nc,l89ab
	sub #36
	jr l89c3
.l89ab
	push hl
	push bc
	ld bc,#0022
	ld hl,l9ec8
	ld de,l9ee9
.l89b6
	inc de
	cpi
	jr z,l89c0
	jp po,l89c1
	jr l89b6
.l89c0
	ld a,(de)
.l89c1
	pop bc
	pop hl
.l89c3
	ld de,#0040
	call l89cd
	inc hl
	inc c
	jr l896e
.l89cd
	push bc
	push hl
	push de
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,de
	ex de,hl
	ld a,b
	ld hl,l9ca2
	call l9753
	ld b,#00
	sla c
	add hl,bc
	ld bc,(lbde8)
	ld b,#08
.l89eb
	push hl
	ld a,(de)
	and c
	ld (hl),a
	inc de
	inc hl
	ld a,(de)
	and c
	ld (hl),a
	inc de
	pop hl
	ld a,#08
	add h
	ld h,a
	djnz l89eb
	pop de
	pop hl
	pop bc
	ret
.l8a00
	ld a,(lbde8)
	push af
	ld a,#ff
	ld (lbde8),a
	ld ix,laea7
	ld bc,#0000
	call l8a22
	ld ix,laebb
	ld bc,#0023
	call l8a22
	pop af
	ld (lbde8),a
	ret
.l8a22
	ld e,#04
.l8a24
	push de
	push bc
	ld e,#05
.l8a28
	push de
	ld a,(ix+#00)
	ld de,#80fb
	call l89cd
	pop de
	inc c
	inc ix
	dec e
	jr nz,l8a28
	pop bc
	pop de
	inc b
	dec e
	jr nz,l8a24
	ret
.l8a40
	ld a,(lbde3)
	bit 4,a
	push af
	jp nz,l8a84
	ld a,(lbdeb)
	or a
	jp p,l8a54
	and #7f
	jr l8a57
.l8a54
	jr z,l8a5a
	dec a
.l8a57
	ld (lbdeb),a
.l8a5a
	and #7f
	ld hl,laee0
	call l9760
	ld (lbdea),a
	pop af
	ld c,a
	ld a,(lbde7)
	xor c
	and #0c
	ld c,a
	ld a,(lbdf6)
	or c
	ld c,a
	ld a,(ix+#03)
	and #03
	or c
	ld (lbdf4),a
	xor a
	ld (ix+#03),a
	ld (lbdf6),a
	ret
.l8a84
	ld a,(lbdeb)
	and #7f
	cp #02
	jr nc,l8a8e
	inc a
.l8a8e
	or #80
	jp l8a57
.l8a93
	cp #85
	ret z
	ld a,(lbdf7)
	ld b,a
	ld a,#00
	call l8f94
	ld a,(lbdf4)
	ld (ix+#03),a
.l8aa5
	ld a,(lbdfd)
	or a
	ret nz
	ld ix,lbca2
	ld a,(ix+#0d)
	or a
	jp m,l8a93
	cp #05
	ret z
	cp #04
	jr nz,l8ac0
	call l8a40
	ret
.l8ac0
	ld a,(ix+#0f)
	sub #57
	push af
	ld hl,la4df
	call l9753
	ld (lbdf1),hl
	pop af
	ld hl,la4f3
	call l9760
	ld (lbdf3),a
	ld a,(lbdec)
	bit 0,a
	jr nz,l8aeb
	bit 1,a
	jr nz,l8aeb
.l8ae4
	bit 2,a
	jr nz,l8b00
	jp l8b10
.l8aeb
	push af
	ld a,(ix+#03)
	xor #03
	ld (ix+#03),a
	ld a,(lbdec)
	and #fc
	ld (lbdec),a
	pop af
	jp l8ae4
.l8b00
	ld a,(ix+#03)
	xor #0c
	ld (ix+#03),a
	ld a,(lbdec)
	res 2,a
	ld (lbdec),a
.l8b10
	ld a,(ix+#03)
	bit 0,a
	jp nz,l8d54
	bit 1,a
	jp nz,l8b23
	ld a,(ix+#07)
	jp l8c37
.l8b23
	ld a,(ix+#07)
	add (ix+#12)
	call l9723
	ld a,(ix+#06)
	cp #5f
	jr c,l8b35
	ld a,#5f
.l8b35
	sub #14
	jp nc,l8b3b
	xor a
.l8b3b
	ld e,a
	ld d,#00
	add hl,de
	ld a,(ix+#03)
	bit 2,a
	jr nz,l8b4b
	bit 3,a
	jr z,l8b4b
	inc hl
.l8b4b
	push hl
	ld a,(lbdea)
	ld hl,laed6
	call l9760
	ld b,(hl)
	pop hl
	ld c,#00
	ld a,(ix+#07)
	add (ix+#12)
	ld e,b
.l8b60
	inc a
	inc c
	cp #c8
	jr c,l8b69
	ld c,e
	jr l8b8f
.l8b69
	ld (lbddc),a
	push af
	push bc
	push de
	call l8d0d
	pop de
	jp nz,l8bca
	pop bc
	ld a,h
	add #08
	ld h,a
	and #38
	jp nz,l8b8c
	ld a,h
	sub #40
	ld h,a
	ld a,l
	add #50
	ld l,a
	jp nc,l8b8c
	inc h
.l8b8c
	pop af
	djnz l8b60
.l8b8f
	ld a,(lbdea)
	inc a
	cp #0a
	jp nc,l8b9b
	ld (lbdea),a
.l8b9b
	ld (ix+#05),c
	ld a,(ix+#03)
	and #0c
	or #02
	ld (ix+#03),a
	ld b,#00
	ld hl,laee0
.l8bad
	ld a,(lbdea)
	cp (hl)
	jr c,l8bbe
	jr z,l8bbe
	ld a,b
	cp #09
	jr nc,l8bbe
	inc hl
	inc b
	jr l8bad
.l8bbe
	ld a,(lbdeb)
	and #80
	or b
	ld (lbdeb),a
	jp l8c28
.l8bca
	pop bc
	pop af
	ld a,(lbdde)
	and #aa
	cp #a8
	jp z,l9380
	ld a,(lbdde)
	and #55
	cp #54
	jp z,l9380
	ld a,(lbdec)
	set 0,a
	ld (lbdec),a
	dec c
	ld a,#00
	ld b,#04
	call l8f94
	ld a,(lbdf6)
	srl a
	srl a
	inc a
	ld (lbdf7),a
	ld a,(lbde6)
	or a
	jr nz,l8c1d
	ld a,(lbdeb)
	or a
	jr z,l8c12
	ld a,#00
	ld de,lb5a5
	call l985f
	jp l8b9b
.l8c12
	ld a,#00
	ld de,lb5b1
	call l985f
	jp l8b9b
.l8c1d
	ld a,#00
	ld de,lb626
	call l985f
	jp l8b9b
.l8c28
	ld a,(ix+#07)
	add (ix+#05)
	jp l8c37
.l8c31
	ld a,(ix+#07)
	sub (ix+#05)
.l8c37
	push af
	ld a,(lbddd)
	or a
	jr nz,l8c4b
	ld a,(ix+#03)
	bit 2,a
	jp nz,l8c4d
	bit 3,a
	jp nz,l8c95
.l8c4b
	pop af
	ret
.l8c4d
	pop af
	ld bc,(lbdf1)
	add c
	ld c,a
	call l9723
	ld a,(ix+#06)
	sub #14
	jr z,l8c8b
	jr c,l8c8b
	sub #01
	jr c,l8c8b
	add l
	ld l,a
	jr nc,l8c69
	inc h
.l8c69
	call l8cdb
	jr z,l8c8b
	ld a,(lbdec)
	set 2,a
	ld (lbdec),a
	ld a,#00
	ld b,#03
	call l8f94
	ld a,(lbde6)
	or a
	jr nz,l8c8c
	ld a,#00
	ld de,lb5b1
	call l985f
.l8c8b
	ret
.l8c8c
	ld a,#00
	ld de,lb626
	call l985f
	ret
.l8c95
	pop af
	ld bc,(lbdf1)
	add c
	ld c,a
	call l9723
	ld a,(ix+#06)
	add #05
	cp #64
	jr nc,l8cd1
	sub #14
	add l
	ld l,a
	jr nc,l8caf
	inc h
.l8caf
	call l8cdb
	jr z,l8cd1
	ld a,(lbdec)
	set 2,a
	ld (lbdec),a
	ld a,#00
	ld b,#02
	call l8f94
	ld a,(lbde6)
	or a
	jr nz,l8cd2
	ld a,#00
	ld de,lb5b1
	call l985f
.l8cd1
	ret
.l8cd2
	ld a,#00
	ld de,lb626
	call l985f
	ret
.l8cdb
	push hl
.l8cdc
	ld a,c
	cp #c8
	jr nc,l8ced
	cp #28
	jr c,l8ced
	ld a,(hl)
	or a
	jr z,l8ced
	and #03
	jr z,l8d08
.l8ced
	inc c
	ld a,h
	add #08
	ld h,a
	and #38
	jp nz,l8d03
	ld a,h
	sub #40
	ld h,a
	ld a,l
	add #50
	ld l,a
	jp nc,l8d03
	inc h
.l8d03
	djnz l8cdc
	xor a
	pop hl
	ret
.l8d08
	ld a,#01
	or a
	pop hl
	ret
.l8d0d
	push hl
	push hl
	ld a,(lbddd)
	or a
	jr z,l8d1f
	ld a,(lbddc)
	cp #c0
	jr nc,l8d2d
	xor a
	jr l8d2f
.l8d1f
	inc hl
	ld b,#02
.l8d22
	ld a,(hl)
	or a
	jr z,l8d32
	ld (lbdde),a
	and #03
	jr nz,l8d32
.l8d2d
	or #01
.l8d2f
	pop hl
	pop hl
	ret
.l8d32
	inc hl
	djnz l8d22
	pop hl
	ld b,#02
	ld c,#08
.l8d3a
	ld a,(hl)
	or a
	jr z,l8d42
	and #03
	jr z,l8d49
.l8d42
	srl c
	inc hl
	inc hl
	inc hl
	djnz l8d3a
.l8d49
	pop hl
	ld a,c
	and #0c
	ld (lbdf6),a
	ret z
	or #01
	ret
.l8d54
	ld a,(ix+#07)
	ld hl,lbdf3
	add (hl)
	call l9723
	ld a,(ix+#06)
	cp #5f
	jr c,l8d67
	ld a,#5f
.l8d67
	sub #14
	jp nc,l8d6d
	xor a
.l8d6d
	ld e,a
	ld d,#00
	add hl,de
	ld a,(ix+#03)
	bit 2,a
	jr nz,l8d7d
	bit 3,a
	jr z,l8d7d
	inc hl
.l8d7d
	push hl
	ld a,(lbdea)
	ld hl,laed6
	call l9760
	ld b,(hl)
	pop hl
	ld c,#00
	ld a,(ix+#07)
	ld e,b
	dec a
.l8d90
	dec a
	inc c
	cp #28
	jr nc,l8d99
	ld c,e
	jr l8dbe
.l8d99
	ld (lbddc),a
	push af
	push bc
	push de
	call l8d0d
	pop de
	jp nz,l8e02
	pop bc
	ld a,h
	sub #08
	ld h,a
	cp #c0
	jp nc,l8dbb
	add #40
	ld h,a
	ld a,l
	sub #50
	ld l,a
	jp nc,l8dbb
	dec h
.l8dbb
	pop af
	djnz l8d90
.l8dbe
	ld (ix+#05),c
	ld a,(ix+#03)
	and #0c
	or #01
	ld (ix+#03),a
	ld a,(lbdea)
	or a
	jp z,l8dd3
	dec a
.l8dd3
	ld (lbdea),a
	jr nz,l8de3
	ld a,(lbdec)
	set 1,a
	ld (lbdec),a
.l8de0
	jp l8c31
.l8de3
	ld hl,laee9
	ld b,#09
.l8de8
	ld a,(lbdea)
	cp (hl)
	jr nc,l8df7
	ld a,b
	cp #00
	jr z,l8df7
	dec b
	dec hl
	jr l8de8
.l8df7
	ld a,(lbdeb)
	and #80
	or b
	ld (lbdeb),a
	jr l8de0
.l8e02
	pop bc
	pop af
	ld a,(lbdec)
	set 1,a
	ld (lbdec),a
	dec c
	ld (ix+#05),c
	ld a,(ix+#03)
	and #0c
	or #01
	ld (ix+#03),a
	jp l8c31
.l8e1d
	ld a,(lbdfd)
	or a
	ret nz
	ld hl,(lbde0)
	ld a,(hl)
	or a
	ret z
	ld b,a
	ld ix,lbcce
	ld de,#0016
	ld a,#02
	inc hl
	push hl
	pop iy
.l8e36
	push de
	push bc
	push af
	ld c,(iy+#02)
	bit 7,c
	jr nz,l8e5c
	ld a,(ix+#13)
	or a
	jr z,l8e5a
	dec a
	ld (ix+#13),a
	jr nz,l8e5a
	ld e,(iy+#00)
	ld d,(iy+#01)
	ld b,(iy+#03)
	pop af
	push af
	call l8e6f
.l8e5a
	inc iy
.l8e5c
	inc iy
	inc iy
	inc iy
	pop af
	pop bc
	pop de
	add ix,de
	inc hl
	inc hl
	inc hl
	inc hl
	inc a
	djnz l8e36
	ret
.l8e6f
	ld (lbdfe),a
	push af
	cp #00
	jr z,l8e89
	cp #01
	jr z,l8e89
	ld a,#5e
	cp e
	jr nc,l8e82
	ld e,#5e
.l8e82
	ld a,#b3
	cp d
	jr nc,l8e89
	ld d,#b3
.l8e89
	pop af
	push ix
	push af
	push de
	push bc
	call l9739
	pop bc
	pop de
	xor a
	ld (ix+#02),a
	ld (ix+#0e),a
	ld (ix+#00),a
	ld (ix+#0c),a
	ld (ix+#13),a
	ld (ix+#06),e
	ld (ix+#07),d
	ld (ix+#0a),e
	ld (ix+#0b),d
	ld (ix+#01),c
	ld (ix+#0d),b
	ld a,b
	ld hl,la477
	call l9753
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	ld (ix+#10),a
	ld hl,la28d
	call l9749
	ld a,(hl)
	ld (ix+#11),a
	ld (ix+#14),a
	ld a,#64
	sub (hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	ld (ix+#15),a
	ld a,#c8
	sub (hl)
	ld (ix+#09),a
	ld a,(ix+#0f)
	ld e,(ix+#06)
	ld d,(ix+#07)
	ld c,(ix+#11)
	ld b,(ix+#12)
	call l964d
	pop af
	pop ix
	ret
.l8efc
	push ix
	ld b,#06
	ld ix,lbca2
	ld de,#0016
	xor a
.l8f08
	ld (ix+#00),a
	ld (ix+#01),a
	ld (ix+#03),a
	ld (ix+#04),a
	ld (ix+#05),a
	ld (ix+#0d),a
	ld (ix+#13),a
	add ix,de
	djnz l8f08
	pop ix
	ret
.l8f24
	push af
	push hl
	push de
	push bc
	push ix
	push iy
	call l9739
	xor a
	ld (ix+#00),a
	ld (ix+#01),a
	ld (ix+#02),a
	ld (ix+#04),a
	ld (ix+#05),a
	ld (ix+#03),a
	pop iy
	pop ix
	pop bc
	pop de
	pop hl
	pop af
	ret
.l8f4b
	push af
	push hl
	push de
	push bc
	push ix
	push iy
	ld c,a
	ld a,(lbdfe)
	push af
	ld a,c
	ld (lbdfe),a
	call l9739
	xor a
	ld (ix+#00),a
	ld (ix+#0c),a
	ld (ix+#03),a
	ld (ix+#04),a
	ld (ix+#05),a
	ld (ix+#0d),a
	ld (ix+#01),a
	ld a,(ix+#10)
	ld e,(ix+#0a)
	ld d,(ix+#0b)
	ld c,(ix+#14)
	ld b,(ix+#15)
	call l964d
	pop af
	ld (lbdfe),a
	pop iy
	pop ix
	pop bc
	pop de
	pop hl
	pop af
	ret
.l8f94
	push af
	push hl
	push de
	push bc
	push ix
	push iy
	push bc
	push af
	call l9739
	pop af
	ld e,(ix+#06)
	ld d,(ix+#07)
	cp #00
	jr z,l8fbe
	cp #01
	jr z,l8fbe
	ld a,#5e
	cp e
	jr nc,l8fb7
	ld e,#5e
.l8fb7
	ld a,#b3
	cp d
	jr nc,l8fbe
	ld d,#b3
.l8fbe
	ld (ix+#06),e
	ld (ix+#07),d
	pop bc
	ld (ix+#0e),#00
	ld (ix+#13),#00
	ld (ix+#0d),b
	ld a,b
	ld hl,la477
	call l9753
	ld (ix+#0c),#00
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	pop iy
	pop ix
	pop bc
	pop de
	pop hl
	pop af
	ret
.l8fe9
	push bc
	ld c,#00
	ld a,(lbca8)
	cp (ix+#06)
	jr z,l8ffc
	jr c,l8ffa
	set 3,c
	jr l8ffc
.l8ffa
	set 2,c
.l8ffc
	ld a,(lbca9)
	cp (ix+#07)
	jr z,l900c
	jr c,l900a
	set 1,c
	jr l900c
.l900a
	set 0,c
.l900c
	ld a,c
	pop bc
	ret
.l900f
	ld b,#06
	ld ix,lbca2
	ld a,#00
.l9017
	push af
	ld (lbdfe),a
	push bc
.l901c
	xor a
	ld (lbde9),a
	ld a,(ix+#0c)
	or a
	jr z,l902d
	dec a
	ld (ix+#0c),a
	jp l90b1
.l902d
	ld a,(ix+#0d)
	or a
	jp z,l90b1
	jp m,l90b1
	ld hl,la477
	call l9753
	ld a,(hl)
	ld (ix+#0c),a
	inc (ix+#0e)
	ld a,(ix+#0e)
	call l9760
	cp #ff
	jp nz,l9057
	inc hl
	ld a,(hl)
	ld (ix+#0e),a
	jp l902d
.l9057
	cp #fe
	jr nz,l9066
	ld a,(ix+#0d)
	or #80
	ld (ix+#0d),a
	jp l902d
.l9066
	cp #fd
	jr nz,l908e
.l906a
	inc hl
	ld a,(hl)
	ld (ix+#13),a
	xor a
	ld (ix+#0d),a
	ld (ix+#0c),a
	ld (ix+#01),a
	ld a,(ix+#10)
	ld e,(ix+#0a)
	ld d,(ix+#0b)
	ld c,(ix+#14)
	ld b,(ix+#15)
	call l964d
	jp l9243
.l908e
	ld (ix+#0f),a
	ld hl,la28d
	call l9749
	ld a,#64
	sub (hl)
	ld (ix+#08),a
	ld a,(hl)
	ld (ix+#11),a
	inc hl
	ld a,#c8
	sub (hl)
	ld (ix+#09),a
	ld a,(hl)
	ld (ix+#12),a
	ld a,#01
	ld (lbde9),a
.l90b1
	ld a,(ix+#00)
	or a
	jr z,l90be
	dec a
	ld (ix+#00),a
	jp l912c
.l90be
	ld a,(ix+#01)
	or a
	jp z,l91f4
	jp m,l912c
	ld hl,la685
	call l9753
	ld e,(ix+#02)
	ld d,#00
	sla e
	rl d
	sla e
	rl d
	add hl,de
	ld a,(hl)
	cp #ff
	jr nz,l90e8
	inc hl
	ld a,(hl)
	ld (ix+#02),a
	jr l90be
.l90e8
	cp #fe
	jr nz,l90ff
	ld (ix+#01),#00
	ld a,(ix+#11)
	ld (ix+#14),a
	ld a,(ix+#12)
	ld (ix+#15),a
	jp l90be
.l90ff
	cp #fd
	jp z,l906a
	cp #fb
	jr nz,l9117
	inc hl
	ld a,(hl)
	ld b,a
	ld a,(lbdfe)
	call l8f94
	inc (ix+#02)
	jp l901c
.l9117
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#00),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	inc (ix+#02)
.l912c
	ld a,(lbde9)
	or (ix+#03)
	ld (lbde9),a
	ld a,(ix+#03)
	push af
	ld a,(lbdfe)
	cp #00
	jr z,l9150
	cp #01
	jr z,l9150
	ld e,(ix+#08)
	ld d,#14
	ld c,(ix+#09)
	ld b,#28
	jr l9156
.l9150
	ld de,#0a77
	ld bc,#10e0
.l9156
	pop af
	cp #fc
	call z,l8fe9
	bit 0,a
	call nz,l9173
	bit 1,a
	call nz,l918a
	bit 2,a
	call nz,l919c
	bit 3,a
	call nz,l91c8
	jp l91f4
.l9173
	push af
	ld a,(ix+#07)
	cp (ix+#05)
	jr c,l9184
	sub (ix+#05)
	jr c,l9184
	cp b
	jr nc,l9185
.l9184
	ld a,b
.l9185
	ld (ix+#07),a
	pop af
	ret
.l918a
	push af
	ld a,(ix+#07)
	add (ix+#05)
	cp c
	jr c,l9197
	jr z,l9197
	ld a,c
.l9197
	ld (ix+#07),a
	pop af
	ret
.l919c
	push af
	ld a,(ix+#04)
	bit 7,a
	jr z,l91a9
	xor #40
	ld (ix+#04),a
.l91a9
	push af
	bit 6,a
	jr nz,l91c2
	and #3f
	ld (ix+#04),a
	ld a,(ix+#06)
	sub (ix+#04)
	jr c,l91be
	cp d
	jr nc,l91bf
.l91be
	ld a,d
.l91bf
	ld (ix+#06),a
.l91c2
	pop af
	ld (ix+#04),a
	pop af
	ret
.l91c8
	push af
	ld a,(ix+#04)
	bit 7,a
	jr z,l91d5
	xor #40
	ld (ix+#04),a
.l91d5
	push af
	bit 6,a
	jr nz,l91ee
	and #3f
	ld (ix+#04),a
	ld a,(ix+#06)
	add (ix+#04)
	cp e
	jr z,l91eb
	jr c,l91eb
	ld a,e
.l91eb
	ld (ix+#06),a
.l91ee
	pop af
	ld (ix+#04),a
	pop af
	ret
.l91f4
	ld a,(lbde9)
	or a
	jp z,l9250
	ld a,(ix+#0b)
	cp #5a
	call nc,l925b
	call c,l9265
	ld a,(ix+#10)
	ld e,(ix+#0a)
	ld d,(ix+#0b)
	ld c,(ix+#14)
	ld b,(ix+#15)
	call l964d
	ld a,(ix+#0f)
	ld e,(ix+#06)
	ld d,(ix+#07)
	ld c,(ix+#11)
	ld b,(ix+#12)
	call l964d
	ld (ix+#14),c
	ld (ix+#15),b
	ld (ix+#10),a
	ld (ix+#0a),e
	ld (ix+#0b),d
	push ix
	call l95fc
	call nz,l926f
	pop ix
.l9243
	ld de,#0016
	add ix,de
	pop bc
	pop af
	inc a
	dec b
	jp nz,l9017
	ret
.l9250
	ld bc,#0300
.l9253
	dec bc
	ld a,c
	or b
	jr nz,l9253
	jp l9243
.l925b
	push af
.l925c
	ld a,(lbde4)
	cp #06
	jr nz,l925c
	pop af
	ret
.l9265
	push af
.l9266
	ld a,(lbde4)
	cp #04
	jr nz,l9266
	pop af
	ret
.l926f
	push af
	ld a,(lbdfd)
	or a
	jr z,l9278
	pop af
	ret
.l9278
	pop af
	ld (lbddf),a
	call l9739
	ld a,(lbdfe)
	cp #00
	jr z,l928b
	cp #01
	jr z,l92e4
	ret
.l928b
	ld a,(lbcaf)
	and #7f
	ret z
	cp #05
	ret z
	ld a,(ix+#0d)
	and #7f
	ret z
	ld hl,la63a
	call l9760
	ld c,a
	bit 7,c
	jp nz,l9380
	bit 6,c
	jp nz,l9333
	bit 5,c
	jp nz,l92da
	bit 4,c
	ret nz
	ld a,c
	and #0f
	ld hl,la21a
	call l9753
	ex de,hl
	call l97c4
	ld a,(lbddf)
	ld b,#05
	call l8f94
	call l8f24
	ld a,#01
	ld de,lb572
	call l985f
	ld de,la22f
	call l9797
	ret
.l92da
	ld a,c
	and #0f
	ld hl,la66e
	call l9753
	jp (hl)
.l92e4
	ld a,(ix+#0d)
	and #7f
	ret z
	ld hl,la63a
	call l9760
	ld c,a
	bit 7,c
	jp nz,l932d
	bit 6,c
	ret nz
	bit 5,c
	jp nz,l9324
	bit 4,c
	ret nz
.l9301
	ld a,(lbddf)
	ld b,#05
	call l8f94
	call l8f24
	ld a,#01
	ld de,lb572
	call l985f
	ld a,c
	and #0f
	ld hl,la21a
	call l9753
	ex de,hl
	call l97c4
	jp l932d
.l9324
	ld a,c
	and #0f
	ret nz
	ld c,#02
	jp l9301
.l932d
	ld a,#01
	call l8f4b
	ret
.l9333
	ld a,c
	srl a
	srl a
	srl a
	and #07
	call l934c
	ld a,(lbddf)
	call l8f4b
	ld de,la24c
	call l97c4
	ret
.l934c
	push af
	push af
	ld hl,lbc2f
	call l9760
	pop af
	push hl
	ld hl,laea0
	call l9760
	ld a,(hl)
	pop hl
	ld (hl),a
	pop af
	push hl
	ld hl,lae98
	ld d,(hl)
	inc hl
	call l9760
	ld e,(hl)
	pop hl
	ld a,(hl)
	ld hl,la477
	call l9753
	inc hl
	ld a,(hl)
	call l96e0
	ld a,#02
	ld de,lb596
	call l985f
	ret
.l9380
	ld a,#00
	ld b,#05
	call l8f94
	call l8f24
	ld a,#01
	ld de,lb572
	call l985f
	ld a,#40
	ld (lbdff),a
	ld a,#14
	ld (lbdfc),a
	ld a,#92
	ld (lbdfa),a
	xor a
	ld (lbdde),a
	ret
	ld a,(lbddf)
	ld b,#05
	call l8f94
	call l8f24
	ld de,la238
	call l97c4
	ld de,la22f
	call l9797
	ld a,#01
	ld de,lb572
	call l985f
	ld a,#1d
	call l9430
	ret z
	ld a,#50
	ld (lbde6),a
	ld a,#0c
	ld (lbde7),a
	ret
	ld a,#0d
	call l9430
	ret z
	jp l9380
	ld a,#1c
	call l9430
	ret nz
	ld a,#02
	ld de,lb5bd
	call l985f
	ld a,(lbddf)
	ld b,#1e
	call l8f94
	jr l940d
	ld a,(lbddf)
	ld b,#18
	call l8f94
	jp l940d
	ld a,(lbddf)
	ld b,#10
	call l8f94
	jp l940d
.l940d
	call l9413
	or c
	ld (hl),a
	ret
.l9413
	ld a,(lbdf5)
	push af
	and #07
	ld c,#00
	scf
.l941c
	rr c
	dec a
	jp p,l941c
	pop af
	srl a
	srl a
	srl a
	ld hl,lbdcc
	call l9760
	ret
.l9430
	push bc
	push hl
	ld hl,lbc2f
	ld bc,#0007
.l9438
	cpi
	jr z,l943f
	jp pe,l9438
.l943f
	pop hl
	pop bc
	ret
	ld a,(lbdf5)
	ld hl,lace7
	ld bc,#0035
	cpir
	ret nz
	dec hl
	ld a,(hl)
	or #80
	ld (hl),a
	ld (lbdc8),a
	ld a,(lbddf)
	call l8f4b
	ld a,#09
	ld (la216),a
	ld (la217),a
	ld de,la22c
	call l9797
	ld de,la238
	call l97c4
	ld a,#02
	ld de,lb5d1
	call l985f
	ret
.l9479
	ld hl,laea0
	ld de,lbc2f
	ld b,#07
.l9481
	ld a,(de)
	cp (hl)
	ret nz
	inc hl
	inc de
	djnz l9481
	xor a
	ret
	call l9479
	jp nz,l9380
	ld de,la251
	call l97c4
	di
	call l8771
	ld a,#00
	ld de,lba6c
	call l985f
	inc a
	ld de,lbacc
	call l985f
	inc a
	ld de,lbb2a
	call l985f
	ld b,#7f
	ld c,#8d
	out (c),c
	ei
	ld hl,la186
	ld bc,#060a
	call l896d
	call l94e6
	ld hl,la20c
	ld bc,#0c14
	call l896d
	ld hl,la1fc
	ld (lbded),hl
	ld (lbdef),hl
.l94d5
	call l8667
	bit 4,a
	jr nz,l94d5
.l94dc
	call l8667
	bit 4,a
	jr z,l94dc
	jp l8330
.l94e6
	ld b,#07
	ld hl,la20c
	ld (hl),#81
.l94ed
	inc hl
	ld a,(hl)
	add #30
	ld (hl),a
	djnz l94ed
	ret
	ld a,#22
	call l9430
	ret nz
	ld a,#07
	call l9430
	ret z
	ld a,#03
	call l934c
	ld de,la24c
	call l97c4
	ret
	ld a,#02
	call l934c
	ld a,(lbddf)
	call l8f4b
	xor a
	ld (la783),a
	ld de,la24c
	call l97c4
	ret
	call l9537
	ret nz
	ld hl,lbdf6
	set 3,(hl)
	ret
	call l9537
	ret nz
	ld hl,lbdf6
	set 2,(hl)
	ret
.l9537
	ld a,(lbddf)
	call l9739
	ld a,(ix+#0d)
	or a
	jp m,l9547
	jr z,l9547
	ret
.l9547
	xor a
	ret
.l9549
	ld a,(lbdfc)
	or a
	jr z,l9554
	dec a
	ld (lbdfc),a
	ret
.l9554
	ld a,(lbdfa)
	or a
	ret z
	jp p,l956d
	and #7f
	ld (lbdfa),a
	xor a
	ld (lbdfb),a
	ld a,#02
	ld de,lbbc3
	call l985f
.l956d
	ld a,(lbdfb)
	or a
	jr z,l9578
	dec a
	ld (lbdfb),a
	ret
.l9578
	ld a,(lbdfa)
	bit 0,a
	jr z,l958a
	call l95aa
	call l95b2
	call l95d7
	jr l9593
.l958a
	call l95aa
	call l95d7
	call l95b2
.l9593
	ld a,(lbdfa)
	dec a
	ld (lbdfa),a
	cp #02
	ld a,#02
	ld de,lbc1a
	call z,l985f
	ld a,#01
	ld (lbdfb),a
	ret
.l95aa
	ld a,(lbde4)
	cp #03
	jr nz,l95aa
	ret
.l95b2
	ld a,#61
	ld d,#14
	ld e,#03
	call l96e0
	ld a,#65
	ld d,#18
	ld e,#06
	call l96e0
	ld a,#63
	ld d,#14
	ld e,#4a
	call l96e0
	ld a,#67
	ld d,#18
	ld e,#47
	call l96e0
	ret
.l95d7
	ld a,#62
	ld d,#14
	ld e,#03
	call l96e0
	ld a,#66
	ld d,#19
	ld e,#05
	call l96e0
	ld a,#64
	ld d,#14
	ld e,#4a
	call l96e0
	ld a,#68
	ld d,#19
	ld e,#48
	call l96e0
	ret
.l95fc
	ld a,(lbdfe)
	ld c,a
	ld b,#02
	ld iy,lbcce
.l9606
	ld a,(iy+#0d)
	or a
	jr z,l9640
	ld a,c
	cp b
	jr z,l9640
	ld a,(ix+#06)
	sub (iy+#06)
	jr nc,l961a
	cpl
	inc a
.l961a
	jr nc,l9621
	cp (ix+#11)
	jr l9624
.l9621
	cp (iy+#11)
.l9624
	jr nc,l9640
	ld a,(ix+#07)
	sub (iy+#07)
	jr nc,l9630
	cpl
	inc a
.l9630
	jr nc,l9637
	cp (ix+#12)
	jr l963a
.l9637
	cp (iy+#12)
.l963a
	jr nc,l9640
	or #01
	ld a,b
	ret
.l9640
	ld de,#0016
	add iy,de
	inc b
	ld a,b
	cp #06
	jr nz,l9606
	xor a
	ret
.l964d
	push af
	ld a,(lbdfe)
	cp #00
	jr z,l965e
	cp #01
	jr z,l965e
	pop af
	call l96d2
	ret
.l965e
	pop af
	push ix
	push bc
	push de
	push af
	ld hl,la28f
	call l9749
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	xor a
	ld (lbdf8),a
	or #80
	ld (lbdf9),a
	ld a,e
	sub #14
	jr nc,l9685
	cpl
	inc a
	ld (lbdf8),a
	xor a
	jr l9694
.l9685
	push af
	add c
	sub #50
	jr c,l9693
	jr z,l9693
	ld e,a
	ld a,c
	sub e
	ld (lbdf9),a
.l9693
	pop af
.l9694
	ld hl,l9cd4
	ld e,d
	ld d,#00
	sla e
	rl d
	add hl,de
	pop ix
	ld de,(lbdf8)
.l96a5
	push de
	push hl
	push bc
	push af
	ld b,c
	add (hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp nc,l96b2
	inc h
.l96b2
	dec e
	jp p,l96c0
	dec d
	jp m,l96c0
	ld a,(hl)
	xor (ix+#00)
	ld (hl),a
	inc hl
.l96c0
	inc ix
	djnz l96b2
	pop af
	pop bc
	pop hl
	pop de
	inc hl
	inc hl
	djnz l96a5
	pop af
	pop de
	pop bc
	pop ix
	ret
.l96d2
	push bc
	push de
	push af
	ld a,e
	sub #14
	ld e,a
	pop af
	call l96e0
	pop de
	pop bc
	ret
.l96e0
	push af
	push hl
	push de
	push bc
	ld hl,la28d
	call l9749
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ld a,d
	call l9723
	ld d,#00
	add hl,de
	pop de
.l96fb
	push hl
	push bc
	ld b,c
.l96fe
	ld a,(de)
	xor (hl)
	ld (hl),a
	inc hl
	inc de
	djnz l96fe
	pop bc
	pop hl
	ld a,h
	add #08
	ld h,a
	and #38
	jp nz,l971c
	ld a,h
	sub #40
	ld h,a
	ld a,l
	add #50
	ld l,a
	jp nc,l971c
	inc h
.l971c
	djnz l96fb
	pop bc
	pop de
	pop hl
	pop af
	ret
.l9723
	push af
	srl a
	srl a
	srl a
	ld hl,l9ca2
	call l9753
	pop af
	and #07
	add a
	add a
	add a
	add h
	ld h,a
	ret
.l9739
	push hl
	ld de,#0016
	call l9781
	ld de,lbca2
	add hl,de
	push hl
	pop ix
	pop hl
	ret
.l9749
	push de
	ex de,hl
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,de
	pop de
	ret
.l9753
	push af
	add a
	add l
	ld l,a
	jr nc,l975a
	inc h
.l975a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	pop af
	ret
.l9760
	add l
	ld l,a
	jr nc,l9765
	inc h
.l9765
	ld a,(hl)
	ret
.l9767
	push af
	ld hl,#0000
	ld a,b
	ld b,#10
.l976e
	rl c
	rla
	adc hl,hl
	sbc hl,de
	jr nc,l9778
	add hl,de
.l9778
	ccf
	djnz l976e
	rl c
	rla
	ld b,a
	pop af
	ret
.l9781
	ld hl,#0000
	cp #00
	ret z
	push bc
	ld b,#08
.l978a
	srl a
	jr nc,l978f
	add hl,de
.l978f
	sla e
	rl d
	djnz l978a
	pop bc
	ret
.l9797
	ld hl,la217
	inc de
	inc de
	ex de,hl
	xor a
	ld b,#02
.l97a0
	ld a,(de)
	sbc (hl)
	jr nc,l97a7
	add #0a
	scf
.l97a7
	ld (de),a
	dec de
	dec hl
	djnz l97a0
	push af
	jr nc,l97b9
	xor a
	ld (la216),a
	ld (la217),a
	call l9380
.l97b9
	ld hl,la215
	ld bc,#0312
	call l896d
	pop af
	ret
.l97c4
	ld a,(de)
	or a
	jr z,l97ea
	inc de
	ld c,a
	dec a
	add e
	ld e,a
	jr nc,l97d0
	inc d
.l97d0
	xor a
	ld b,#07
	ld hl,la213
.l97d6
	ld a,(de)
	dec c
	jp p,l97dd
	ld a,#00
.l97dd
	adc (hl)
	cp #0a
	jr c,l97e4
	sub #0a
.l97e4
	ccf
	ld (hl),a
	dec hl
	dec de
	djnz l97d6
.l97ea
	ld hl,la20c
	ld bc,#0110
	call l896d
	ret
.l97f4
	ld b,#f7
	ld c,#82
	out (c),c
	ld hl,lbd26
	xor a
	ld d,#0b
.l9800
	push af
	ld c,(hl)
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
	pop af
	inc a
	inc hl
	dec d
	jr nz,l9800
	ld b,#f4
	ld a,#0e
	out (c),a
	ld b,#f6
	in a,(c)
	or #c9
	ld c,a
	and #3f
	out (c),c
	out (c),a
	inc b
	ld c,#92
	out (c),c
	dec b
	or #40
	out (c),a
	ld b,#f4
	in a,(c)
	cpl
	ld (lbdcb),a
	ret
	push af
	push hl
	push de
	ld de,#002e
	call l9781
	ld de,lbd31
	add hl,de
	ld a,(hl)
	inc hl
	or (hl)
	pop de
	pop hl
	pop af
	ret
.l985f
	di
	push af
	push hl
	push bc
	push de
	and #7f
	ld de,#002e
	call l9781
	ld de,lbd31
	add hl,de
	push hl
	xor a
	ld b,#2e
.l9874
	ld (hl),a
	inc hl
	djnz l9874
	pop hl
	pop de
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),e
	inc hl
	ld (hl),d
	pop bc
	pop hl
	pop af
	or a
	ret m
	ei
	ret
;
.init_music
.real_play_music
.l9888
;
	push af
	ld b,#03
	xor a
	ld ix,lbd31
	ld de,lbd26
	ld hl,lbd2e
.l9896
	push af
	push hl
	push de
	push bc
	ld (lbe01),a
	ld a,(ix+#04)
	or (ix+#05)
	jp nz,l98fb
	xor a
	call l9bad
	ld c,(ix+#02)
	ld b,(ix+#03)
	ld a,b
	or c
	jp z,l99b8
.l98b5
	ld a,(bc)
	cp #80
	jp c,l98c4
	sub #80
	ld hl,l9c8a
	call l9753
	jp (hl)
.l98c4
	ld hl,l9bca
	call l9753
	ld (ix+#0a),l
	ld (ix+#0b),h
	inc bc
.l98d1
	ld a,(ix+#08)
	call l9bad
	call l9a68
	ld (ix+#2a),#00
	call l9a50
	ld (ix+#2b),#00
	ld (ix+#2c),#00
.l98e9
	ld (ix+#02),c
	ld (ix+#03),b
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld (ix+#04),l
	ld (ix+#05),h
.l98fb
	ld l,(ix+#04)
	ld h,(ix+#05)
	dec hl
	ld (ix+#04),l
	ld (ix+#05),h
	push ix
	pop iy
	ld d,#02
	ld c,#00
.l9910
	ld a,(iy+#0c)
	or a
	jr z,l991d
	dec a
	ld (iy+#0c),a
	inc c
	jr l993e
.l991d
	ld a,(iy+#0e)
	or a
	jr z,l9939
	dec a
	ld (iy+#0e),a
	ld a,(ix+#2a)
	add (iy+#1b)
	ld (ix+#2a),a
	ld a,(iy+#20)
	ld (iy+#0c),a
	inc c
	jr l993e
.l9939
	inc iy
	dec d
	jr nz,l9910
.l993e
	ld a,c
	or a
	jr nz,l994d
	ld (ix+#2a),#00
	bit 0,(ix+#2d)
	call nz,l9a68
.l994d
	push ix
	pop iy
	ld d,#03
	ld c,#00
.l9955
	ld a,(iy+#10)
	or a
	jr z,l9962
	dec a
	ld (iy+#10),a
	inc c
	jr l99ad
.l9962
	ld a,(iy+#13)
	or a
	jr z,l99a8
	dec a
	ld (iy+#13),a
	ld a,(iy+#1d)
	or a
	jp p,l998c
	ld a,(iy+#1d)
	cpl
	inc a
	ld e,a
	ld a,(ix+#2b)
	sub e
	ld (ix+#2b),a
	ld a,(ix+#2c)
	sbc #00
	and #0f
	ld (ix+#2c),a
	jr l999f
.l998c
	ld a,(ix+#2b)
	add (iy+#1d)
	ld (ix+#2b),a
	ld a,(ix+#2c)
	adc #00
	and #0f
	ld (ix+#2c),a
.l999f
	ld a,(iy+#22)
	ld (iy+#10),a
	inc c
	jr l99ad
.l99a8
	inc iy
	dec d
	jr nz,l9955
.l99ad
	ld a,c
	or a
	jr nz,l99b8
	bit 1,(ix+#2d)
	call nz,l9a50
.l99b8
	pop bc
	pop de
	pop hl
	ld a,(ix+#09)
	add (ix+#2a)
	and #0f
	ld (hl),a
	ld a,(ix+#0a)
	add (ix+#2b)
	ld (de),a
	inc de
	ld a,(ix+#0b)
	adc (ix+#2c)
	ld (de),a
	inc de
	push de
	ld de,#002e
	add ix,de
	pop de
	pop af
	inc a
	inc hl
	dec b
	jp nz,l9896
	ld iy,lbdbb
	ld d,#02
	ld c,#00
.l99ea
	ld a,(iy+#00)
	or a
	jr z,l99f7
	dec a
	ld (iy+#00),a
	inc c
	jr l9a18
.l99f7
	ld a,(iy+#02)
	or a
	jr z,l9a13
	dec a
	ld (iy+#02),a
	ld a,(lbdc7)
	add (iy+#06)
	ld (lbdc7),a
	ld a,(iy+#08)
	ld (iy+#00),a
	inc c
	jr l9a18
.l9a13
	inc iy
	dec d
	jr nz,l99ea
.l9a18
	ld a,c
	or a
	jr nz,l9a24
	ld a,(lbdc5)
	bit 2,a
	call nz,l9a34
.l9a24
	ld a,(lbdc6)
	ld e,a
	ld a,(lbdc7)
	add e
	ld (lbd2c),a
	call l97f4
	pop af
	ret
.l9a34
	ld d,#02
	push iy
	ld iy,lbdbb
.l9a3c
	ld a,(iy+#08)
	ld (iy+#00),a
	ld a,(iy+#04)
	ld (iy+#02),a
	inc iy
	dec d
	jr nz,l9a3c
	pop iy
	ret
.l9a50
	ld d,#03
	push ix
.l9a54
	ld a,(ix+#22)
	ld (ix+#10),a
	ld a,(ix+#18)
	ld (ix+#13),a
	inc ix
	dec d
	jr nz,l9a54
	pop ix
	ret
.l9a68
	push ix
	ld d,#02
.l9a6c
	ld a,(ix+#20)
	ld (ix+#0c),a
	ld a,(ix+#16)
	ld (ix+#0e),a
	inc ix
	dec d
	jr nz,l9a6c
	pop ix
	ret
	push bc
	push ix
	pop hl
	xor a
	ld b,#2e
.l9a87
	ld (hl),a
	inc hl
	djnz l9a87
	pop bc
	jp l99b8
	inc bc
	ld a,(bc)
	ld (ix+#09),a
	inc bc
	jp l98b5
	inc bc
	ld a,(bc)
	and #09
	ld (ix+#08),a
	inc bc
	jp l98b5
	ld c,(ix+#00)
	ld b,(ix+#01)
	ld (ix+#02),c
	ld (ix+#03),b
	jp l98b5
	inc bc
	ld a,(bc)
	ld de,(lbe02)
	ld d,#00
	call l9781
	ld (ix+#06),l
	ld (ix+#07),h
	inc bc
	jp l98b5
	inc bc
	jp l98e9
	inc bc
	ld a,(bc)
	inc bc
	ld de,#0000
.l9ad1
	push af
	ld a,(bc)
	push de
	ld de,(lbe02)
	ld d,#00
	call l9781
	pop de
	add hl,de
	ex de,hl
	inc bc
	pop af
	dec a
	jr nz,l9ad1
	ld (ix+#06),l
	ld (ix+#07),h
	jp l98b5
	inc bc
	ld a,(bc)
	push bc
	ld de,#0008
	call l9781
	ld bc,#1770
	push hl
	pop de
	call l9767
	ld a,c
	ld (lbe02),a
	pop bc
	inc bc
	jp l98b5
	inc bc
	ld a,(bc)
	ld e,a
	or (ix+#2d)
	ld (ix+#2d),a
	ld a,(lbdc5)
	or e
	ld (lbdc5),a
	inc bc
	jp l98b5
	inc bc
	res 0,(ix+#2d)
	res 1,(ix+#2d)
	ld a,(bc)
	ld de,#000f
	call l9781
	ld de,lb30b
	add hl,de
	push ix
	ld d,#0f
.l9b34
	ld a,(hl)
	ld (ix+#16),a
	inc hl
	inc ix
	dec d
	jp nz,l9b34
	pop ix
	inc bc
	ld (ix+#0c),#00
	ld (ix+#0d),#00
	ld (ix+#10),#00
	ld (ix+#11),#00
	ld (ix+#12),#00
	ld (ix+#2a),#00
	ld (ix+#2b),#00
	ld (ix+#2c),#00
	jp l98b5
	inc bc
	ld a,(bc)
	push af
	and #1f
	ld (lbdc6),a
	call l9a34
	pop af
	inc bc
	or a
	jp m,l98b5
	jp l98d1
	inc bc
	ld a,(lbdc5)
	res 2,a
	ld (lbdc5),a
	ld a,(bc)
	ld de,#0006
	call l9781
	ld de,lb518
	add hl,de
	ld iy,lbdbb
	ld (iy+#00),#00
	ld (iy+#01),#00
	ld d,#06
.l9b9b
	ld a,(hl)
	ld (iy+#04),a
	inc hl
	inc iy
	dec d
	jr nz,l9b9b
	xor a
	ld (lbdc7),a
	inc bc
	jp l98b5
.l9bad
	push de
	cpl
	ld e,a
	ld d,#09
	ld a,(lbe01)
.l9bb5
	dec a
	jp m,l9bc0
	scf
	rl e
	sla d
	jr l9bb5
.l9bc0
	ld a,(lbd2d)
	or d
	and e
	ld (lbd2d),a
	pop de
	ret
.l9bca
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
.l9c8a
	db #8f,#9a,#98,#9a,#a3,#9a,#b2,#9a
	db #c7,#9a,#ee,#9a,#cb,#9a,#1c,#9b
	db #65,#9b,#79,#9b,#08,#9b,#80,#9a
.l9ca2
	db #00,#c0,#50,#c0,#a0,#c0,#f0,#c0
	db #40,#c1,#90,#c1,#e0,#c1,#30,#c2
	db #80,#c2,#d0,#c2,#20,#c3,#70,#c3
	db #c0,#c3,#10,#c4,#60,#c4,#b0,#c4
	db #00,#c5,#50,#c5,#a0,#c5,#f0,#c5
	db #40,#c6,#90,#c6,#e0,#c6,#30,#c7
.l9cd4 equ $ + 2
	db #80,#c7,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#90,#c1,#90,#c9,#90,#d1
	db #90,#d9,#90,#e1,#90,#e9,#90,#f1
	db #90,#f9,#e0,#c1,#e0,#c9,#e0,#d1
	db #e0,#d9,#e0,#e1,#e0,#e9,#e0,#f1
	db #e0,#f9,#30,#c2,#30,#ca,#30,#d2
	db #30,#da,#30,#e2,#30,#ea,#30,#f2
	db #30,#fa,#80,#c2,#80,#ca,#80,#d2
	db #80,#da,#80,#e2,#80,#ea,#80,#f2
	db #80,#fa,#d0,#c2,#d0,#ca,#d0,#d2
	db #d0,#da,#d0,#e2,#d0,#ea,#d0,#f2
	db #d0,#fa,#20,#c3,#20,#cb,#20,#d3
	db #20,#db,#20,#e3,#20,#eb,#20,#f3
	db #20,#fb,#70,#c3,#70,#cb,#70,#d3
	db #70,#db,#70,#e3,#70,#eb,#70,#f3
	db #70,#fb,#c0,#c3,#c0,#cb,#c0,#d3
	db #c0,#db,#c0,#e3,#c0,#eb,#c0,#f3
	db #c0,#fb,#10,#c4,#10,#cc,#10,#d4
	db #10,#dc,#10,#e4,#10,#ec,#10,#f4
	db #10,#fc,#60,#c4,#60,#cc,#60,#d4
	db #60,#dc,#60,#e4,#60,#ec,#60,#f4
	db #60,#fc,#b0,#c4,#b0,#cc,#b0,#d4
	db #b0,#dc,#b0,#e4,#b0,#ec,#b0,#f4
	db #b0,#fc,#00,#c5,#00,#cd,#00,#d5
	db #00,#dd,#00,#e5,#00,#ed,#00,#f5
	db #00,#fd,#50,#c5,#50,#cd,#50,#d5
	db #50,#dd,#50,#e5,#50,#ed,#50,#f5
	db #50,#fd,#a0,#c5,#a0,#cd,#a0,#d5
	db #a0,#dd,#a0,#e5,#a0,#ed,#a0,#f5
	db #a0,#fd,#f0,#c5,#f0,#cd,#f0,#d5
	db #f0,#dd,#f0,#e5,#f0,#ed,#f0,#f5
	db #f0,#fd,#40,#c6,#40,#ce,#40,#d6
	db #40,#de,#40,#e6,#40,#ee,#40,#f6
	db #40,#fe,#90,#c6,#90,#ce,#90,#d6
	db #90,#de,#90,#e6,#90,#ee,#90,#f6
	db #90,#fe,#e0,#c6,#e0,#ce,#e0,#d6
	db #e0,#de,#e0,#e6,#e0,#ee,#e0,#f6
	db #e0,#fe,#30,#c7,#30,#cf,#30,#d7
	db #30,#df,#30,#e7,#30,#ef,#30,#f7
	db #30,#ff,#80,#c7,#80,#cf,#80,#d7
	db #80,#df,#80,#e7,#80,#ef,#80,#f7
	db #80,#ff,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#52,#bc,#52,#bc,#52,#bc
	db #52,#bc,#52,#bc,#52,#bc,#52,#bc
.l9ec8 equ $ + 6
	db #52,#bc,#52,#bc,#52,#bc,#20,#25
	db #40,#2e,#2c,#5e,#61,#6d,#67,#69
	db #63,#65,#73,#6f,#70,#75,#6e,#74
	db #6b,#2f,#00,#01,#02,#03,#04,#05
.l9ee9 equ $ + 7
	db #06,#07,#08,#09,#72,#2d,#2f,#7e
	db #00,#25,#26,#27,#4a,#4b,#4c,#4d
	db #4e,#4f,#50,#51,#52,#53,#54,#55
	db #56,#57,#58,#59,#5a,#5b,#5c,#5d
	db #5e,#5f,#60,#61,#62,#63,#64,#65
.l9f0c equ $ + 2
	db #66,#67,#87,#73,#63,#6f,#72,#65
.l9f13 equ $ + 1
	db #24,#87,#6d,#61,#67,#69,#63,#24
	db #81,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#43,#41,#55,#4c,#44,#52
	db #4f,#4e,#20,#49,#49,#0d,#0d,#0d
	db #83,#20,#20,#20,#20,#20,#20,#20
	db #20,#50,#45,#45,#52,#4c,#45,#53
	db #53,#20,#50,#4c,#4f,#54,#0d,#0d
	db #82,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#53,#54,#45,#56,#45,#20
	db #42,#52,#4f,#57,#4e,#0d,#0d,#0d
	db #83,#20,#20,#20,#20,#20,#20,#47
	db #4f,#52,#47,#45,#4f,#55,#53,#20
	db #47,#52,#41,#50,#48,#49,#43,#53
	db #0d,#0d,#82,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#53,#54,#45,#56
	db #45,#20,#42,#52,#4f,#57,#4e,#0d
	db #0d,#0d,#83,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#43,#52,#41,#46
	db #54,#59,#20,#43,#4f,#44,#45,#0d
	db #0d,#82,#20,#20,#20,#20,#20,#52
	db #49,#43,#48,#41,#52,#44,#20,#4c
	db #45,#49,#4e,#46,#45,#4c,#4c,#4e
	db #45,#52,#0d,#0d,#0d,#83,#20,#20
	db #20,#20,#20,#53,#43,#49,#4e,#54
	db #49,#4c,#4c,#41,#54,#49,#4e,#47
	db #20,#53,#4f,#55,#4e,#44,#0d,#0d
	db #82,#20,#20,#20,#20,#20,#20,#20
	db #52,#49,#43,#48,#41,#52,#44,#20
	db #4a,#4f,#53,#45,#50,#48,#0d,#0d
	db #0d,#81,#20,#40,#20,#50,#41,#4c
	db #41,#43,#45,#20,#53,#4f,#46,#54
	db #57,#41,#52,#45,#20,#4d,#43,#4d
	db #4c,#58,#58,#58,#56,#49,#24,#81
	db #4d,#41,#47,#49,#43,#20,#4f,#42
	db #4a,#45,#43,#54,#53,#0d,#0d,#54
	db #48,#4f,#55,#20,#57,#49,#4c,#4c
	db #20,#4e,#45,#45,#44,#0d,#0d,#49
	db #46,#20,#54,#48,#59,#20,#51,#55
	db #45,#53,#54,#0d,#0d,#49,#53,#20
	db #54,#4f,#20,#53,#55,#43,#43,#45
	db #45,#44,#0d,#0d,#4d,#4f,#52,#45
	db #20,#54,#48,#41,#4e,#20,#54,#48
	db #49,#53,#0d,#0d,#57,#45,#20,#43
	db #41,#4e,#4e,#4f,#54,#20,#54,#45
	db #4c,#4c,#0d,#0d,#53,#4f,#20,#53
	db #45,#41,#52,#43,#48,#20,#54,#48
	db #45,#4d,#20,#4f,#55,#54,#0d,#0d
	db #41,#4e,#44,#20,#55,#53,#45,#20
	db #54,#48,#45,#4d,#20,#57,#45,#4c
	db #4c,#0d,#0d,#0d,#82,#54,#4f,#20
	db #53,#54,#41,#52,#54,#20,#54,#48
	db #45,#20,#47,#41,#4d,#45,#0d,#0d
	db #54,#48,#4f,#55,#20,#53,#48,#4f
	db #55,#4c,#44,#53,#54,#20,#50,#52
	db #45,#53,#53,#20,#46,#49,#52,#45
	db #0d,#0d,#41,#4e,#44,#20,#4d,#41
	db #59,#20,#54,#48,#59,#20,#42,#4f
	db #55,#4e,#43,#45,#0d,#0d,#42,#45
	db #20,#45,#56,#45,#52,#20,#48,#49
.la0ef equ $ + 5
	db #47,#48,#45,#52,#24,#83,#54,#48
	db #4f,#55,#20,#48,#41,#53,#54,#20
	db #41,#4d,#41,#53,#53,#45,#44,#0d
	db #0d,#41,#20,#4d,#45,#41,#47,#52
	db #45,#20,#53,#43,#4f,#52,#45,#0d
	db #0d,#57,#48,#59,#20,#4e,#4f,#54
	db #20,#50,#52,#45,#53,#53,#20,#46
	db #49,#52,#45,#0d,#0d,#41,#4e,#44
	db #20,#54,#52,#59,#20,#4f,#4e,#43
	db #45,#20,#4d,#4f,#52,#45,#0d,#0d
	db #0d,#44,#41,#52,#45,#20,#54,#4f
	db #20,#46,#41,#43,#45,#0d,#0d,#54
	db #48,#45,#20,#57,#49,#54,#43,#48
	db #20,#41,#47,#41,#49,#4e,#0d,#0d
	db #41,#4e,#44,#20,#54,#52,#59,#20
	db #54,#4f,#20,#45,#4e,#44,#0d,#0d
	db #48,#45,#52,#20,#45,#56,#49,#4c
	db #20,#52,#45,#49,#47,#4e,#0d,#0d
	db #0d,#82,#54,#48,#59,#20,#53,#43
.la186 equ $ + 4
	db #4f,#52,#45,#24,#83,#20,#20,#20
	db #20,#20,#57,#45,#4c,#4c,#20,#44
	db #4f,#4e,#45,#0d,#0d,#54,#48,#4f
	db #55,#20,#48,#41,#53,#54,#20,#43
	db #4f,#4d,#50,#4c,#45,#54,#45,#44
	db #0d,#0d,#43,#41,#55,#4c,#44,#52
	db #4f,#4e,#20,#49,#49,#20,#57,#49
	db #54,#48,#20,#41,#0d,#0d,#20,#53
	db #43,#4f,#52,#45,#20,#4f,#46,#0d
	db #0d,#82,#20,#54,#48,#45,#20,#57
	db #49,#54,#43,#48,#20,#49,#53,#20
	db #44,#45,#41,#44,#0d,#0d,#4c,#4f
	db #4e,#47,#20,#4c,#49,#56,#45,#20
	db #54,#48,#45,#20,#57,#49,#54,#43
.la1f8 equ $ + 6
.la1f4 equ $ + 2
	db #48,#24,#1a,#9f,#19,#a0,#07,#00
.la1fc equ $ + 2
	db #0a,#00,#14,#0a,#0c,#1f,#14,#14
	db #14,#14,#14,#14,#14,#14,#14,#14
.la20c equ $ + 2
	db #14,#14,#88,#00,#00,#00,#00,#00
.la217 equ $ + 5
.la216 equ $ + 4
.la215 equ $ + 3
.la213 equ $ + 1
	db #00,#00,#24,#88,#09,#09,#2f,#24
.la21a
	db #2c,#a2,#35,#a2,#38,#a2,#3c,#a2
	db #40,#a2,#44,#a2,#48,#a2,#4c,#a2
.la22f equ $ + 5
.la22c equ $ + 2
	db #51,#a2,#00,#00,#00,#02,#00,#08
.la238 equ $ + 6
	db #02,#01,#00,#02,#05,#00,#03,#01
	db #00,#00,#03,#02,#00,#00,#03,#03
	db #00,#00,#03,#05,#00,#00,#03,#07
.la251 equ $ + 7
.la24c equ $ + 2
	db #05,#00,#04,#01,#00,#00,#00,#04
.la259 equ $ + 7
.la256 equ $ + 4
	db #05,#00,#00,#00,#02,#00,#01,#00
	db #f0,#0f,#ff,#00,#c0,#0c,#cc,#30
	db #f0,#3c,#fc,#03,#c3,#0f,#cf,#33
.la26d equ $ + 3
	db #f3,#3f,#ff,#14,#0b,#00,#0c,#0a
	db #16,#0e,#1d,#0b,#0a,#0c,#0e,#16
.la27d equ $ + 3
	db #00,#04,#1c,#14,#14,#14,#14,#14
	db #14,#14,#14,#14,#14,#14,#14,#14
.la28f equ $ + 5
.la28d equ $ + 3
	db #14,#14,#14,#05,#2a,#c0,#06,#05
	db #2a,#92,#07,#05,#2a,#64,#08,#05
	db #2a,#36,#09,#05,#2a,#08,#0a,#05
	db #2a,#da,#0a,#05,#2a,#ac,#0b,#06
	db #0d,#7e,#0c,#06,#0d,#cc,#0c,#06
	db #0d,#1a,#0d,#04,#0c,#68,#0d,#06
	db #15,#98,#0d,#06,#15,#16,#0e,#06
	db #15,#94,#0e,#06,#15,#12,#0f,#05
	db #2a,#90,#0f,#05,#09,#62,#10,#05
	db #09,#8f,#10,#01,#01,#bc,#10,#08
	db #0d,#bd,#10,#06,#09,#25,#11,#06
	db #09,#5b,#11,#05,#0a,#91,#11,#05
	db #0a,#c3,#11,#05,#0a,#f5,#11,#05
	db #0a,#27,#12,#05,#0a,#59,#12,#09
	db #0f,#8b,#12,#09,#0f,#12,#13,#09
	db #0f,#99,#13,#09,#0f,#20,#14,#05
	db #15,#a7,#14,#05,#09,#10,#15,#05
	db #09,#3d,#15,#06,#16,#6a,#15,#06
	db #16,#ee,#15,#06,#16,#72,#16,#06
	db #15,#f6,#16,#06,#15,#74,#17,#06
	db #15,#f2,#17,#03,#09,#70,#18,#06
	db #15,#8b,#18,#06,#15,#09,#19,#06
	db #15,#87,#19,#06,#15,#05,#1a,#06
	db #15,#83,#1a,#06,#15,#01,#1b,#06
	db #15,#7f,#1b,#06,#15,#fd,#1b,#06
	db #15,#7b,#1c,#06,#15,#f9,#1c,#06
	db #15,#77,#1d,#06,#15,#f5,#1d,#06
	db #15,#73,#1e,#05,#0d,#f1,#1e,#05
	db #0d,#32,#1f,#06,#0e,#73,#1f,#02
	db #06,#c7,#1f,#03,#08,#d3,#1f,#06
	db #15,#eb,#1f,#06,#15,#69,#20,#06
	db #15,#e7,#20,#04,#0f,#65,#21,#04
	db #0f,#a1,#21,#04,#0f,#dd,#21,#04
	db #0f,#19,#22,#06,#15,#55,#22,#03
	db #09,#d3,#22,#03,#09,#ee,#22,#03
	db #09,#09,#23,#03,#09,#24,#23,#03
	db #09,#3f,#23,#03,#09,#5a,#23,#03
	db #0d,#75,#23,#05,#13,#9c,#23,#05
	db #13,#fb,#23,#05,#13,#5a,#24,#02
	db #06,#b9,#24,#02,#06,#c5,#24,#02
	db #06,#d1,#24,#04,#0c,#dd,#24,#05
	db #15,#0d,#25,#05,#12,#76,#25,#06
	db #10,#d0,#25,#05,#0d,#30,#26,#03
	db #10,#71,#26,#01,#01,#a1,#26,#04
	db #0c,#a2,#26,#04,#0c,#d2,#26,#04
	db #0c,#02,#27,#04,#0c,#32,#27,#04
	db #0c,#62,#27,#04,#0c,#92,#27,#04
	db #0c,#c2,#27,#04,#0c,#f2,#27,#04
	db #0c,#22,#28,#05,#0c,#52,#28,#03
	db #09,#8e,#28,#03,#09,#a9,#28,#03
	db #09,#c4,#28,#03,#09,#df,#28,#03
	db #07,#fa,#28,#03,#07,#0f,#29,#03
	db #07,#24,#29,#03,#07,#39,#29,#10
	db #06,#4e,#29,#10,#06,#ae,#29,#01
	db #04,#0e,#2a,#08,#0d,#12,#2a,#08
	db #0d,#7a,#2a,#08,#0d,#e2,#2a,#02
	db #30,#4a,#2b,#03,#30,#aa,#2b,#05
	db #30,#3a,#2c,#06,#30,#2a,#2d,#08
	db #18,#4a,#2e,#07,#16,#0a,#2f,#07
	db #15,#a4,#2f,#06,#11,#37,#30,#05
	db #0e,#9d,#30,#02,#15,#e3,#30,#06
.la477 equ $ + 5
	db #15,#0d,#31,#00,#00,#8b,#31,#fd
	db #a4,#04,#a5,#0d,#a5,#16,#a5,#19
	db #a5,#25,#a5,#2c,#a5
	db #31,#a5,#38,#a5,#3f,#a5,#44,#a5
	db #4c,#a5,#53,#a5,#58,#a5,#5d,#a5
	db #64,#a5,#68,#a5,#6f,#a5,#7e,#a5
	db #83,#a5,#8a,#a5,#93,#a5,#97,#a5
	db #9e,#a5,#a2,#a5,#a7,#a5,#ab,#a5
	db #b0,#a5,#b5,#a5,#ba,#a5,#bf,#a5
	db #c6,#a5,#cd,#a5,#e7,#a5,#ec,#a5
	db #ef,#a5,#f2,#a5,#f5,#a5,#f8,#a5
	db #fb,#a5,#fe,#a5,#03,#a6,#13,#a6
	db #16,#a6,#19,#a6,#20,#a6,#23,#a6
	db #2a,#a6,#2f,#a6,#35,#a6,#38,#a6
.la4df
	db #04,#06,#05,#05,#06,#04,#03,#06
	db #03,#06,#03,#06,#03,#06,#03,#06
.la4f3 equ $ + 4
	db #03,#06,#5b,#02,#01,#01,#01,#01
	db #00,#00,#00,#00,#00,#05,#01,#57
	db #58,#59,#5a,#ff,#00,#01,#5f,#5e
	db #5d,#5c,#5b,#59,#ff,#00,#01,#5b
	db #5c,#5d,#5e,#5f,#59,#ff,#00,#00
	db #60,#fe,#00,#2f,#12,#30,#12,#31
	db #32,#33,#34,#35,#fd,#32,#00,#07
	db #08,#09,#08,#ff,#00,#00,#0a,#12
	db #ff,#00,#02,#04,#05,#06,#0f,#ff
	db #00,#02,#0b,#0c,#0d,#0e,#ff,#00
	db #03,#14,#15,#ff,#00,#02,#16,#17
	db #18,#19,#1a,#ff,#00,#00,#1b,#1c
	db #1d,#1e,#ff,#00,#00,#1f,#12,#ff
	db #00,#03,#20,#21,#ff,#00,#03,#22
	db #23,#24,#23,#ff,#00,#02,#6e,#13
	db #fe,#02,#29,#2a,#2b,#42,#ff,#00
	db #02,#2c,#2c,#2c,#2c,#2c,#2d,#2e
	db #2e,#2e,#2e,#2e,#2d,#ff,#00,#00
	db #36,#37,#ff,#00,#02,#3b,#3c,#3d
	db #3c,#ff,#00,#01,#43,#44,#45,#46
	db #47,#48,#ff,#00,#00,#49,#ff,#00
	db #02,#4a,#4b,#4c,#4b,#ff,#00,#02
	db #6c,#6d,#fe,#00,#51,#12,#ff,#00
	db #00,#52,#ff,#00,#00,#53,#12,#ff
	db #00,#00,#54,#12,#ff,#00,#00,#55
	db #12,#ff,#00,#02,#70,#71,#72,#fe
	db #02,#00,#01,#02,#03,#ff,#00,#00
	db #3e,#3f,#40,#41,#ff,#00,#02,#73
	db #74,#75,#76,#77,#50,#3a,#39,#6b
	db #56,#12,#12,#12,#12,#12,#2f,#12
	db #30,#12,#31,#32,#33,#34,#35,#fd
	db #00,#20,#12,#ff,#00,#00,#6c,#fe
	db #00,#6d,#fe,#00,#6f,#fe,#00,#72
	db #fe,#00,#6e,#fe,#00,#13,#fe,#03
	db #10,#11,#ff,#00,#02,#25,#26,#27
	db #27,#27,#27,#27,#26,#25,#25,#25
	db #25,#25,#ff,#00,#00,#55,#fe,#00
	db #28,#fe,#00,#3e,#3f,#40,#41,#ff
	db #00,#00,#38,#fe,#00,#07,#08,#09
	db #08,#ff,#00,#00,#69,#6a,#ff,#00
	db #00,#4d,#4e,#4e,#ff,#00,#00,#78
.la63a equ $ + 3
	db #fe,#00,#79,#fe,#10,#10,#10,#10
	db #10,#80,#10,#21,#03,#02,#20,#80
	db #48,#05,#04,#2a,#03,#80,#06,#05
	db #02,#06,#03,#29,#68,#26,#28,#60
	db #40,#10,#21,#25,#10,#70,#22,#29
	db #24,#10,#23,#2a,#05,#80,#02,#27
.la66e equ $ + 7
	db #80,#03,#02,#80,#02,#80,#80,#a6
	db #93,#d6,#93,#f7,#93,#02,#94,#df
	db #93,#42,#94,#8a,#94,#f5,#94,#0d
.la685 equ $ + 6
.la684 equ $ + 5
	db #95,#23,#95,#2d,#95,#23,#25,#27
	db #ad,#a6,#ba,#a6,#c0,#a6,#ca,#a6
	db #ec,#a6,#fe,#a6,#14,#a7,#3e,#a7
	db #48,#a7,#52,#a7,#58,#a7,#62,#a7
	db #6b,#a7,#7d,#a7,#83,#a7,#8d,#a7
	db #9f,#a7,#b1,#a7,#c3,#a7,#01,#21
	db #00,#00,#05,#00,#04,#0a,#00,#00
.la6ba equ $ + 3
	db #00,#00,#fe,#08,#0a,#03,#0a,#fd
	db #00,#08,#0e,#01,#00,#04,#0e,#01
	db #00,#ff,#00,#00,#14,#00,#00,#08
	db #18,#01,#00,#00,#14,#00,#00,#08
	db #18,#01,#00,#00,#14,#00,#00,#04
	db #18,#01,#00,#00,#14,#00,#00,#04
	db #18,#01,#00,#ff,#00,#00,#0a,#00
	db #00,#08,#02,#01,#00,#00,#0a,#00
	db #00,#04,#02,#01,#00,#ff,#00,#00
	db #28,#00,#00,#09,#02,#01,#04,#05
	db #02,#01,#04,#09,#04,#01,#04,#fc
	db #ff,#01,#01,#ff,#04,#00,#14,#00
	db #00,#08,#05,#02,#00,#00,#14,#00
	db #00,#08,#06,#02,#00,#00,#0a,#00
	db #00,#08,#02,#02,#00,#00,#14,#00
	db #00,#04,#06,#02,#00,#00,#14,#00
	db #00,#04,#07,#02,#00,#ff,#00,#02
	db #10,#00,#01,#01,#10,#00,#01,#ff
	db #00,#fc,#00,#01,#00,#fc,#00,#00
	db #00,#ff,#00,#fc,#ff,#00,#03,#ff
	db #00,#01,#50,#00,#01,#02,#50,#00
	db #01,#ff,#00,#02,#40,#00,#01,#00
	db #00,#00,#00,#fe,#08,#64,#81,#00
	db #fb,#08,#00,#00,#04,#64,#81,#00
	db #fb,#1f,#00,#00,#ff,#00,#fc,#c8
.la783 equ $ + 4
	db #01,#02,#ff,#00,#fc,#01,#01,#01
	db #00,#00,#00,#00,#ff,#00,#08,#30
	db #01,#00,#fb,#29,#00,#00,#04,#30
	db #01,#00,#fb,#0e,#00,#00,#ff,#00
	db #08,#30,#81,#00,#fb,#09,#00,#00
	db #04,#30,#81,#00,#fb,#11,#00,#00
	db #ff,#00,#00,#32,#00,#00,#02,#20
	db #00,#02,#00,#32,#00,#00,#01,#20
	db #00,#02,#ff,#00,#08,#1e,#81,#00
	db #fb,#08,#00,#00,#04,#1e,#81,#00
.la7d5 equ $ + 6
	db #fb,#1f,#00,#00,#ff,#00,#d6,#a8
	db #b3,#aa,#db,#a8,#d5,#a8,#e8,#a8
	db #d5,#a8,#f1,#a8,#f6,#a8,#03,#a9
	db #d5,#a8,#08,#a9,#d5,#a8,#d5,#a8
	db #19,#a9,#d5,#a8,#22,#a9,#2b,#a9
	db #b3,#aa,#34,#a9,#3d,#a9,#46,#a9
	db #53,#a9,#5c,#a9,#61,#a9,#66,#a9
	db #6b,#a9,#74,#a9,#b3,#aa,#79,#a9
	db #7e,#a9,#d5,#a8,#d5,#a8,#d5,#a8
	db #d5,#a8,#83,#a9,#3b,#ab,#8c,#a9
	db #95,#a9,#a2,#a9,#af,#a9,#bb,#a9
	db #c7,#a9,#d4,#a9,#dd,#a9,#ee,#a9
	db #fa,#a9,#d5,#a8,#3b,#ab,#07,#aa
	db #c1,#ab,#18,#aa,#25,#aa,#32,#aa
	db #3b,#aa,#47,#aa,#54,#aa,#61,#aa
	db #72,#aa,#7b,#aa,#d5,#a8,#87,#aa
	db #90,#aa,#9d,#aa,#aa,#aa,#d5,#a8
	db #b3,#aa,#bc,#aa,#c8,#aa,#d1,#aa
	db #da,#aa,#e3,#aa,#83,#a9,#d5,#a8
	db #d5,#a8,#ef,#aa,#fc,#aa,#04,#ab
	db #0d,#ab,#1a,#ab,#2b,#ab,#d5,#a8
	db #3b,#ab,#c1,#ab,#44,#ab,#51,#ab
	db #5a,#ab,#67,#ab,#b3,#aa,#70,#ab
	db #7d,#ab,#86,#ab,#93,#ab,#9c,#ab
	db #a8,#ab,#d5,#a8,#83,#a9,#b4,#ab
	db #c1,#ab,#d2,#ab,#db,#ab,#d2,#ab
	db #d5,#a8,#e8,#ab,#f4,#ab,#01,#ac
	db #0a,#ac,#17,#ac,#24,#ac,#30,#ac
	db #3d,#ac,#45,#ac,#4e,#ac,#57,#ac
	db #60,#ac,#6d,#ac,#79,#ac,#86,#ac
	db #93,#ac,#98,#ac,#a1,#ac,#b2,#ac
	db #d5,#a8,#d5,#a8,#d5,#a8,#bf,#ac
	db #c4,#ac,#d1,#ac,#de,#ac,#00,#01
	db #3c,#a0,#00,#19,#03,#2c,#40,#00
	db #0b,#2c,#80,#00,#14,#4c,#ab,#05
	db #13,#02,#24,#ab,#05,#13,#20,#60
	db #04,#14,#01,#56,#8d,#00,#17,#03
	db #2c,#48,#00,#14,#24,#88,#10,#0e
	db #34,#b0,#03,#17,#01,#2e,#a8,#00
	db #14,#04,#1e,#90,#0f,#2d,#28,#96
	db #00,#2c,#3c,#4a,#00,#30,#1c,#4a
	db #00,#30,#02,#2e,#48,#04,#14,#32
	db #95,#00,#17,#02,#44,#ab,#11,#11
	db #1c,#38,#0e,#2f,#02,#24,#68,#04
	db #14,#38,#b0,#0b,#0c,#02,#36,#70
	db #12,#0c,#18,#a0,#08,#06,#02,#1c
	db #40,#00,#06,#3c,#58,#00,#14,#03
	db #2c,#30,#00,#14,#22,#ab,#10,#0e
	db #1c,#b0,#03,#17,#02,#28,#38,#12
	db #2f,#5a,#a8,#12,#2f,#01,#28,#38
	db #00,#2f,#01,#3c,#60,#12,#0c,#01
	db #5a,#a0,#09,#14,#02,#26,#48,#00
	db #14,#24,#a8,#00,#0a,#01,#30,#98
	db #00,#14,#01,#2c,#68,#04,#14,#01
	db #4c,#a8,#00,#0b,#02,#2c,#60,#00
	db #14,#24,#ac,#10,#0e,#02,#38,#b2
	db #0b,#0e,#5a,#b0,#00,#0a,#03,#3d
	db #92,#00,#0f,#4d,#92,#00,#0f,#32
	db #b2,#09,#0c,#03,#28,#63,#11,#11
	db #3c,#b3,#07,#16,#1c,#56,#00,#0b
	db #03,#32,#a0,#00,#12,#39,#a8,#80
	db #25,#92,#00,#0f,#03,#5e,#80,#00
	db #33,#57,#88,#82,#58,#70,#00,#0d
	db #03,#14,#80,#00,#32,#24,#54,#04
	db #14,#54,#a8,#00,#0a,#02,#2c,#ab
	db #11,#11,#44,#b2,#0b,#0c,#04,#24
	db #4a,#00,#30,#44,#4a,#00,#30,#36
	db #97,#06,#2e,#41,#98,#06,#2b,#03
	db #56,#30,#81,#20,#84,#04,#14,#34
	db #4a,#00,#30,#03,#1c,#48,#00,#0a
	db #1c,#a8,#03,#14,#44,#68,#00,#14
	db #04,#24,#4a,#00,#30,#44,#4a,#00
	db #30,#1c,#88,#04,#14,#56,#ad,#00
	db #17,#03,#24,#ab,#11,#11,#2c,#48
	db #0e,#0b,#1c,#88,#04,#14,#03,#1c
	db #a8,#00,#0a,#1c,#6d,#03,#17,#58
	db #48,#12,#2f,#02,#58,#48,#0a,#06
	db #40,#68,#0e,#2f,#03,#5e,#80,#00
	db #33,#57,#88,#82,#2c,#48,#12,#2f
	db #03,#14,#80,#00,#32,#34,#68,#00
	db #14,#5a,#a8,#00,#0a,#03,#1a,#96
	db #0d,#1f,#26,#4a,#00,#31,#58,#70
	db #00,#0a,#04,#3a,#90,#00,#1b,#20
	db #96,#0d,#1f,#1c,#4a,#00,#30,#4c
	db #4a,#00,#30,#02,#3c,#4a,#00,#30
	db #24,#8a,#04,#14,#03,#42,#a0,#00
	db #12,#49,#a8,#80,#50,#40,#08,#2f
	db #02,#1c,#48,#12,#2f,#54,#a8,#00
	db #14,#03,#2c,#4a,#00,#30,#1c,#ad
	db #00,#17,#54,#48,#12,#0c,#03,#24
	db #88,#04,#14,#4c,#78,#00,#0a,#34
	db #70,#08,#0b,#02,#3c,#ab,#00,#0a
	db #24,#48,#04,#14,#02,#34,#50,#00
	db #14,#40,#8b,#05,#13,#03,#38,#80
	db #00,#2a,#2f,#88,#82,#20,#48,#12
	db #2f,#02,#1c,#4b,#11,#11,#56,#90
	db #00,#0a,#02,#54,#6d,#00,#17,#2c
	db #98,#08,#0b,#02,#1c,#ab,#11,#11
	db #24,#78,#10,#0e,#03,#2a,#60,#00
	db #12,#31,#68,#80,#24,#40,#07,#2f
	db #03,#2c,#6b,#11,#11,#3c,#73,#07
	db #16,#2c,#ab,#00,#0b,#02,#20,#90
	db #81,#2c,#6c,#09,#0b,#02,#1c,#ad
	db #03,#17,#1c,#68,#04,#14,#03,#45
	db #93,#00,#0f,#55,#93,#00,#0f,#1c
	db #48,#0e,#2f,#04,#24,#96,#0d,#1f
	db #2c,#98,#00,#0b,#2a,#65,#03,#17
	db #1c,#bd,#07,#16,#04,#25,#92,#00
	db #0f,#4a,#a0,#00,#12,#53,#9a,#00
	db #1d,#51,#a8,#80,#02,#26,#68,#04
	db #14,#46,#ab,#11,#11,#03,#34,#88
	db #00,#1c,#1c,#ac,#10,#0e,#36,#4b
	db #11,#11,#02,#44,#b3,#09,#0c,#24
	db #90,#04,#14,#03,#44,#4a,#00,#30
	db #56,#a8,#00,#0a,#1e,#6d,#03,#17
	db #02,#2c,#88,#00,#0b,#54,#48,#12
	db #2f,#03,#34,#ab,#11,#11,#44,#68
	db #00,#14,#1e,#76,#00,#0b,#02,#1c
	db #68,#04,#14,#54,#48,#12,#0c,#03
	db #24,#4a,#00,#30,#3c,#4c,#0e,#0b
	db #4e,#8a,#00,#31,#02,#2c,#56,#0d
	db #1f,#4c,#96,#09,#0b,#03,#32,#90
	db #81,#2e,#4a,#00,#31,#3c,#92,#03
	db #14,#03,#4a,#60,#00,#12,#51,#68
	db #80,#2e,#30,#00,#14,#03,#2c,#b3
	db #07,#16,#3c,#73,#05,#13,#1e,#56
	db #00,#0b,#04,#34,#4a,#00,#30,#36
	db #97,#06,#2e,#41,#98,#06,#2b,#2e
	db #8a,#00,#31,#02,#1c,#ab,#11,#11
	db #44,#68,#00,#0a,#03,#1c,#ab,#10
	db #0e,#32,#48,#12,#0c,#4c,#b3,#05
	db #13,#03,#5e,#60,#00,#33,#57,#68
	db #82,#2c,#48,#12,#2f,#03,#14,#60
	db #00,#32,#3c,#ab,#11,#11,#34,#48
	db #00,#14,#02,#1c,#68,#10,#0e,#54
	db #58,#00,#14,#03,#24,#b3,#05,#13
	db #34,#68,#09,#0b,#54,#42,#12,#0c
	db #03,#34,#4a,#00,#30,#14,#ab,#11
	db #11,#54,#a8,#00,#0a,#03,#44,#ab
	db #11,#11,#24,#90,#81,#1c,#50,#00
	db #14,#03,#1c,#6d,#03,#17,#34,#a8
	db #00,#0b,#3c,#48,#12,#0c,#02,#32
	db #40,#00,#12,#39,#48,#80,#02,#16
	db #38,#0a,#06,#38,#82,#00,#22,#02
	db #3d,#92,#00,#0f,#4d,#92,#00,#0f
	db #02,#24,#ab,#11,#11,#1c,#48,#04
	db #14,#03,#24,#4a,#00,#30,#1c,#b3
	db #05,#13,#4c,#68,#00,#0a,#03,#22
	db #90,#81,#4c,#b3,#05,#13,#1c,#68
	db #00,#14,#03,#3c,#ab,#11,#11,#1c
	db #48,#04,#14,#54,#68,#00,#0b,#03
	db #25,#92,#00,#0f,#35,#92,#00,#0f
	db #45,#92,#00,#0f,#01,#34,#48,#0e
	db #2f,#02,#24,#4a,#00,#30,#3a,#48
	db #12,#0b,#04,#3c,#4a,#00,#30,#3c
	db #88,#00,#0b,#1c,#78,#00,#14,#26
	db #8a,#00,#31,#03,#1c,#ab,#11,#11
	db #54,#48,#12,#0c,#4e,#8a,#00,#31
	db #01,#30,#9f,#00,#15,#03,#28,#9f
	db #00,#15,#38,#9f,#00,#15,#48,#9f
	db #00,#15,#03,#30,#9f,#00,#15,#40
	db #9f,#00,#15,#50,#9f,#00,#15,#02
	db #54,#ae,#00,#1a,#38,#96,#13,#1f
.lace7
	db #02,#06,#08,#0e,#15,#16,#19,#1c
	db #1e,#1f,#23,#27,#2a,#2c,#2e,#2f
	db #31,#32,#33,#34,#35,#3a,#3b,#3e
	db #3f,#42,#43,#44,#46,#4a,#4c,#4d
	db #50,#51,#54,#56,#59,#5b,#5c,#5d
	db #60,#62,#64,#66,#68,#69,#6b,#6d
.lad1c equ $ + 5
	db #6f,#71,#72,#76,#78,#44,#a0,#34
	db #ab,#24,#90,#3c,#98,#3c,#a0,#3b
	db #98,#4e,#88,#1c,#68,#16,#ab,#28
	db #60,#4c,#48,#3a,#98,#1e,#68,#4c
	db #48,#1c,#48,#24,#ab,#54,#ab,#16
	db #ab,#3e,#48,#2c,#ab,#58,#70,#4a
	db #90,#3c,#98,#5c,#ab,#34,#ab,#32
	db #70,#2c,#ab,#5c,#ab,#30,#50,#24
	db #ab,#44,#48,#4e,#a8,#3c,#98,#24
	db #88,#50,#62,#24,#48,#24,#ab,#4c
	db #68,#4c,#68,#50,#50,#3a,#68,#20
	db #68,#18,#68,#54,#50,#36,#ab,#3e
	db #ab,#4c,#68,#1c,#48,#3e,#48,#4c
.lad86 equ $ + 7
	db #ab,#48,#68,#16,#ab,#5c,#ab,#38
.lad8e equ $ + 7
	db #0a,#61,#4f,#25,#46,#6e,#6b,#7c
.lad96 equ $ + 7
.lad92 equ $ + 3
	db #7d,#7e,#7f,#70,#70,#73,#73,#6c
.lad98 equ $ + 1
	db #37,#3a,#88,#2e,#88,#44,#88,#33
	db #64,#30,#88,#33,#64,#5e,#88,#36
	db #60,#1c,#88,#5e,#48,#4e,#78,#16
	db #50,#33,#64,#4e,#88,#3a,#88,#40
	db #88,#1c,#58,#2e,#88,#2e,#70,#5c
	db #68,#4a,#90,#1c,#48,#3a,#88,#36
	db #68,#16,#48,#2e,#50,#3c,#48,#2e
	db #88,#24,#68,#48,#90,#14,#88,#33
	db #64,#14,#b0,#5c,#b0,#33,#64,#2e
	db #98,#1c,#88,#2c,#78,#3c,#64,#1c
	db #88,#58,#48,#33,#64,#14,#88,#1c
	db #88,#36,#88,#36,#64,#1c,#30,#5c
	db #88,#33,#64,#24,#88,#5c,#98,#14
	db #88,#1c,#98,#58,#48,#4c,#38,#33
	db #64,#16,#60,#50,#88,#33,#6c,#38
	db #88,#5c,#88,#14,#60,#42,#60,#1c
	db #60,#13,#28,#2e,#88,#42,#50,#5c
	db #88,#16,#88,#1a,#48,#1c,#30,#4a
	db #90,#14,#a8,#33,#64,#54,#90,#1c
	db #48,#2c,#88,#4e,#90,#43,#64,#2e
	db #88,#3a,#98,#5c,#48,#56,#88,#5c
	db #88,#2e,#88,#5c,#88,#1a,#88,#2e
	db #88,#3c,#48,#33,#64,#54,#88,#1e
	db #48,#1c,#38,#1a,#88,#33,#64,#4a
	db #90,#54,#88,#1a,#48,#54,#58,#1c
	db #48,#14,#90,#1c,#88,#58,#30,#33
	db #64,#1a,#88,#5a,#88,#5c,#90,#18
	db #48,#1c,#90,#1c,#30,#50,#64,#33
	db #6e,#3c,#88,#14,#88,#14,#38,#54
	db #88,#1c,#88,#3c,#98,#5c,#88,#54
	db #88,#1c,#30,#28,#88,#20,#88,#14
	db #88,#1c,#90,#1c,#90,#1c,#90,#1c
.lae98 equ $ + 1
	db #90,#00,#0b,#10,#18,#2f,#34,#3b
.laea0 equ $ + 1
	db #41,#1d,#0d,#1b,#07,#1c,#19,#22
.laea7
	db #01,#02,#03,#04,#00,#05,#19,#1a
	db #06,#07,#08,#1b,#1c,#09,#0a,#0b
.laebb equ $ + 4
	db #1d,#00,#00,#0c,#00,#10,#0f,#0e
	db #0d,#13,#12,#1f,#1e,#11,#16,#15
	db #21,#20,#14,#18,#00,#00,#22,#17
.laed6 equ $ + 7
.laecf
	db #17,#0a,#12,#1a,#30,#38,#40,#01
	db #01,#02,#04,#05,#08,#08,#0a,#0a
.laee0 equ $ + 1
	db #0a,#04,#06,#09,#81,#ff,#ff,#ff
.laee9 equ $ + 2
.laee8 equ $ + 1
	db #24,#e8,#af,#e8,#af,#e8,#af,#e8
	db #af,#e8,#af,#e8,#af,#e8,#af,#e8
	db #af,#e8,#af,#fd,#af,#ef,#b0,#2b
	db #b0,#fd,#af,#45,#b0,#2b,#b0,#2b
	db #b0,#45,#b0,#e8,#af,#fd,#af,#2b
	db #b0,#e8,#af,#e8,#af,#e8,#af,#e8
	db #af,#2b,#b0,#2b,#b0,#e8,#af,#e8
	db #af,#e8,#af,#2b,#b0,#2b,#b0,#e8
	db #af,#e8,#af,#e8,#af,#e8,#af,#2b
	db #b0,#2b,#b0,#2b,#b0,#2b,#b0,#56
	db #b0,#63,#b0,#63,#b0,#2b,#b0,#12
	db #b0,#12,#b0,#74,#b0,#74,#b0,#fd
	db #af,#12,#b0,#12,#b0,#12,#b0,#2b
	db #b0,#3c,#b0,#63,#b0,#63,#b0,#12
	db #b0,#12,#b0,#12,#b0,#74,#b0,#e8
	db #af,#fd,#af,#12,#b0,#12,#b0,#12
	db #b0,#74,#b0,#e8,#af,#63,#b0,#12
	db #b0,#12,#b0,#74,#b0,#74,#b0,#e8
	db #af,#e8,#af,#fd,#af,#fd,#af,#12
	db #b0,#2b,#b0,#2b,#b0,#2b,#b0,#56
	db #b0,#e8,#af,#fd,#af,#12,#b0,#2b
	db #b0,#2b,#b0,#12,#b0,#74,#b0,#e8
	db #af,#fd,#af,#12,#b0,#12,#b0,#ac
	db #b0,#ac,#b0,#74,#b0,#e8,#af,#e8
	db #af,#fd,#af,#12,#b0,#12,#b0,#12
	db #b0,#12,#b0,#2b,#b0,#63,#b0,#63
	db #b0,#9b,#b0,#9b,#b0,#ac,#b0,#ac
	db #b0,#74,#b0,#74,#b0,#3c,#b0,#8e
	db #b0,#12,#b0,#12,#b0,#12,#b0,#12
	db #b0,#85,#b0,#3c,#b0,#12,#b0,#12
	db #b0,#12,#b0,#12,#b0,#12,#b0,#12
	db #b0,#da,#b0,#c5,#b0,#c5,#b0,#c5
	db #b0,#05,#73,#82,#8f,#00,#c1,#d0
	db #60,#00,#dc,#ff,#69,#00,#ae,#bf
	db #bb,#00,#70,#70,#0a,#01,#05,#dc
	db #ff,#69,#00,#01,#60,#69,#00,#b1
	db #bf,#61,#00,#73,#82,#8f,#00,#c1
	db #d0,#60,#00,#06,#01,#38,#7a,#01
	db #c1,#ff,#1e,#01,#72,#80,#a0,#00
	db #39,#3b,#eb,#01,#86,#8b,#98,#01
	db #5a,#65,#19,#02,#04,#b1,#bf,#61
	db #00,#dc,#ff,#69,#00,#73,#82,#8f
	db #00,#c1,#d0,#60,#00,#02,#8c,#b7
	db #27,#01,#43,#44,#e4,#01,#04,#b1
	db #bf,#61,#00,#73,#82,#f7,#0f,#a0
	db #af,#ff,#0f,#c0,#ff,#ca,#0f,#03
	db #95,#b0,#35,#00,#b1,#bf,#61,#00
	db #dc,#ff,#69,#00,#04,#95,#b0,#51
	db #00,#b1,#bf,#61,#00,#dc,#ff,#69
	db #00,#01,#60,#69,#00,#04,#da,#ed
	db #57,#00,#95,#b0,#35,#00,#b1,#bf
	db #61,#00,#ee,#ff,#69,#00,#02,#b1
	db #bf,#61,#00,#71,#72,#b6,#01,#03
	db #01,#60,#69,#00,#71,#72,#b6,#01
	db #b1,#bf,#61,#00,#04,#72,#80,#a0
	db #00,#01,#38,#7a,#01,#4a,#51,#e9
	db #01,#56,#5f,#d3,#01,#06,#72,#80
	db #a0,#00,#c1,#ff,#1e,#01,#4a,#51
	db #e9,#01,#54,#5d,#e7,#01,#01,#38
	db #7a,#01,#39,#3b,#eb,#01,#05,#72
	db #80,#a0,#00,#4a,#53,#fb,#01,#54
	db #60,#fb,#01,#43,#44,#e4,#01,#8c
	db #8d,#f3,#01,#05,#72,#80,#a0,#00
	db #4a,#53,#fb,#01,#54,#60,#08,#02
	db #43,#44,#e4,#01,#8c,#8d,#f3,#01
	db #06,#01,#38,#7a,#01,#c1,#ff,#1e
	db #01,#72,#80,#a0,#00,#39,#3b,#eb
	db #01,#86,#8b,#98,#01,#5c,#65,#0d
.lb10b equ $ + 4
.lb108 equ $ + 1
	db #02,#34,#6e,#75,#f5,#f5,#01,#f5
	db #f5,#f5,#02,#00,#f5,#f5,#04,#01
	db #ee,#04,#06,#ee,#03,#05,#07,#02
	db #04,#f5,#08,#f5,#ee,#07,#09,#03
	db #06,#08,#0a,#04,#07,#f5,#0b,#05
	db #ee,#0a,#0c,#06,#09,#0b,#0d,#07
	db #0a,#f5,#0e,#08,#ee,#0d,#0f,#09
	db #0c,#0e,#10,#0a,#0d,#f5,#11,#0b
	db #ee,#10,#12,#0c,#0f,#11,#13,#0d
	db #10,#7b,#14,#0e,#ee,#13,#17,#0f
	db #12,#14,#18,#10,#13,#15,#19,#11
	db #14,#f5,#1a,#7b,#ee,#17,#1b,#ee
	db #16,#18,#1c,#12,#17,#19,#1d,#13
	db #18,#1a,#1e,#14,#19,#f5,#1f,#15
	db #ee,#1c,#22,#16,#1b,#1d,#23,#17
	db #1c,#1e,#24,#18,#1d,#1f,#25,#19
	db #1e,#20,#26,#1a,#1f,#f5,#27,#f5
	db #ee,#22,#28,#ee,#21,#23,#29,#1b
	db #22,#24,#2a,#1c,#23,#25,#2b,#1d
	db #24,#26,#2c,#1e,#25,#27,#2d,#1f
	db #26,#f5,#2e,#20,#ee,#29,#ee,#21
	db #28,#2a,#2f,#22,#29,#2b,#30,#23
	db #2a,#2c,#31,#24,#2b,#2d,#32,#25
	db #2c,#2e,#33,#26,#2d,#f5,#f5,#27
	db #ee,#30,#36,#29,#2f,#31,#37,#2a
	db #30,#32,#38,#2b,#31,#33,#39,#2c
	db #32,#f5,#3a,#2d,#75,#6e,#ee,#ee
	db #ee,#36,#ee,#ee,#35,#37,#3c,#2f
	db #36,#38,#3d,#30,#37,#39,#3e,#31
	db #38,#3a,#3f,#32,#39,#3b,#40,#33
	db #3a,#f5,#41,#f5,#ee,#3d,#42,#36
	db #3c,#3e,#43,#37,#3d,#3f,#44,#38
	db #3e,#40,#45,#39,#3f,#41,#46,#3a
	db #40,#f5,#47,#3b,#ee,#43,#49,#3c
	db #42,#44,#4a,#3d,#43,#45,#4b,#3e
	db #44,#46,#4c,#3f,#45,#47,#4d,#40
	db #46,#48,#4e,#41,#47,#f5,#4f,#f5
	db #ee,#4a,#50,#42,#49,#4b,#51,#43
	db #4a,#4c,#52,#44,#4b,#4d,#53,#45
	db #4c,#4e,#54,#46,#4d,#4f,#55,#47
	db #4e,#f5,#56,#48,#ee,#51,#57,#49
	db #50,#52,#58,#4a,#51,#53,#59,#4b
	db #52,#54,#5a,#4c,#53,#55,#5b,#4d
	db #54,#56,#5c,#4e,#55,#f5,#5d,#4f
	db #ee,#58,#5f,#50,#57,#59,#60,#51
	db #58,#5a,#61,#52,#59,#5b,#62,#53
	db #5a,#5c,#63,#54,#5b,#5d,#64,#55
	db #5c,#f5,#65,#56,#ee,#5f,#66,#ee
	db #5e,#60,#67,#57,#5f,#61,#68,#58
	db #60,#62,#69,#59,#61,#63,#6a,#5a
	db #62,#64,#6b,#5b,#63,#65,#6c,#5c
	db #64,#f5,#6d,#5d,#ee,#67,#6e,#5e
	db #66,#68,#6f,#5f,#67,#69,#70,#60
	db #68,#6a,#71,#61,#69,#6b,#72,#62
	db #6a,#6c,#73,#63,#6b,#6d,#74,#64
	db #6c,#f5,#75,#65,#34,#6f,#ee,#66
	db #6e,#70,#ee,#67,#6f,#71,#76,#68
	db #70,#72,#77,#69,#71,#73,#78,#6a
	db #72,#74,#79,#6b,#73,#75,#ee,#6c
	db #74,#34,#ee,#6d,#ee,#77,#7c,#70
	db #76,#78,#ee,#71,#77,#79,#ee,#72
	db #78,#ee,#7f,#73,#ee,#ee,#7c,#76
	db #11,#f5,#15,#f5,#ee,#7d,#ee,#76
	db #7c,#7e,#ee,#ee,#7d,#7f,#ee,#ee
.lb30b equ $ + 4
	db #7e,#ee,#ee,#79,#01,#0f,#00,#00
	db #00,#0f,#ff,#00,#00,#00,#00,#05
	db #00,#00,#00,#02,#02,#01,#01,#00
	db #02,#00,#01,#ff,#00,#00,#00,#02
	db #02,#00,#01,#0f,#5c,#00,#00,#0d
	db #ff,#01,#00,#00,#00,#16,#03,#00
	db #00,#01,#0f,#4c,#00,#00,#0d,#ff
	db #01,#00,#00,#00,#16,#04,#00,#00
	db #01,#0f,#56,#00,#00,#0d,#ff,#01
	db #00,#00,#00,#16,#03,#00,#00,#01
	db #0c,#00,#00,#00,#0d,#ff,#00,#00
	db #00,#00,#08,#00,#00,#00,#01,#04
	db #00,#00,#00,#08,#ff,#00,#00,#00
	db #00,#03,#00,#00,#00,#05,#01,#06
	db #00,#00,#01,#ff,#f7,#00,#00,#00
	db #00,#00,#00,#00,#02,#02,#01,#01
	db #00,#04,#ff,#01,#ff,#00,#00,#00
	db #02,#02,#00,#01,#0f,#22,#00,#00
	db #08,#ff,#f0,#00,#00,#00,#06,#03
	db #00,#00,#01,#0e,#1e,#00,#00,#08
	db #ff,#fc,#00,#00,#00,#04,#01,#00
	db #00,#01,#01,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#02,#02,#00,#05,#fe,#ff
	db #ff,#00,#00,#00,#02,#02,#00,#05
	db #08,#0b,#00,#00,#02,#fe,#ef,#00
	db #00,#01,#00,#00,#00,#00,#04,#08
	db #0b,#00,#00,#02,#fe,#ef,#00,#00
	db #01,#00,#00,#00,#00,#01,#01,#00
	db #00,#00,#06,#f3,#00,#00,#00,#00
	db #00,#00,#00,#00,#02,#06,#13,#00
	db #00,#01,#ff,#01,#00,#00,#07,#04
	db #02,#00,#00,#07,#06,#02,#02,#00
	db #01,#ff,#01,#ff,#00,#0b,#38,#08
	db #0b,#00,#03,#01,#01,#01,#00,#02
	db #ff,#01,#ff,#00,#00,#00,#00,#00
	db #00,#05,#0c,#01,#01,#00,#01,#ff
	db #ff,#01,#00,#00,#38,#05,#05,#00
	db #01,#0f,#00,#00,#00,#08,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #0f,#0d,#00,#00,#08,#ff,#0a,#00
	db #00,#00,#04,#03,#00,#00,#01,#0b
	db #00,#00,#00,#0b,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#0b,#00
	db #00,#00,#0b,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#0c,#00,#00
	db #00,#0c,#ff,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#0f,#01,#01,#00
	db #08,#ff,#fc,#1e,#00,#00,#27,#01
	db #00,#00,#01,#0a,#02,#02,#00,#0a
	db #ff,#01,#ff,#00,#00,#00,#08,#0b
	db #00,#01,#08,#01,#01,#00,#09,#ff
	db #01,#ff,#00,#00,#02,#00,#00,#00
	db #01,#0f,#00,#00,#00,#08,#ff,#00
	db #00,#00,#00,#13,#00,#00,#00,#01
	db #0f,#00,#00,#00,#08,#ff,#00,#00
	db #00,#00,#22,#00,#00,#00,#01,#0d
	db #00,#00,#00,#07,#ff,#00,#00,#00
	db #00,#34,#00,#00,#00,#01,#07,#00
	db #00,#00,#07,#ff,#00,#00,#00,#00
	db #16,#00,#00,#00,#01,#0f,#00,#00
	db #00,#07,#ff,#00,#00,#00,#04,#00
	db #00,#00,#00,#01,#0f,#01,#01,#00
	db #08,#ff,#fa,#1e,#00,#00,#27,#01
	db #00,#00,#01,#0f,#02,#01,#00,#08
	db #ff,#fb,#1e,#00,#00,#27,#01,#00
.lb51e equ $ + 7
.lb518 equ $ + 1
	db #00,#1e,#00,#ff,#00,#05,#00,#85
	db #7d,#83,#50,#81,#01,#80,#07,#87
.lb52c equ $ + 5
	db #21,#8a,#02,#15,#8b,#83,#50,#81
	db #01,#80,#07,#87,#22,#8a,#02,#15
.lb538 equ $ + 1
	db #8b,#83,#50,#81,#01,#80,#07,#87
.lb544 equ $ + 5
	db #19,#8a,#02,#15,#8b,#85,#6b,#83
	db #30,#81,#01,#80,#02,#87,#02,#4a
	db #83,#04,#84,#83,#10,#81,#09,#87
.lb55e equ $ + 7
	db #05,#89,#00,#88,#9e,#0a,#8b,#83
	db #30,#81,#01,#80,#02,#87,#03,#4a
.lb568 equ $ + 1
	db #8b,#83,#30,#81,#01,#80,#02,#87
.lb572 equ $ + 3
	db #04,#4a,#8b,#85,#7d,#83,#02,#81
	db #09,#80,#07,#87,#06,#88,#85,#07
	db #80,#00,#83,#10,#81,#08,#87,#00
.lb58a equ $ + 3
	db #88,#0a,#8b,#85,#7d,#81,#01,#83
.lb596 equ $ + 7
	db #01,#80,#07,#87,#07,#3c,#8b,#85
	db #7d,#83,#03,#81,#01,#80,#07,#84
.lb5a5 equ $ + 6
	db #87,#08,#8a,#02,#58,#8b,#85,#7d
	db #83,#10,#81,#01,#80,#07,#87,#09
.lb5b1 equ $ + 2
	db #12,#8b,#85,#7d,#83,#0c,#81,#01
.lb5bd equ $ + 6
	db #80,#07,#87,#0a,#11,#8b,#85,#7d
	db #83,#01,#81,#01,#80,#0f,#87,#0b
	db #13,#11,#10,#0e,#0c,#0b,#09,#07
.lb5d1 equ $ + 2
	db #05,#8b,#85,#7d,#83,#01,#81,#01
	db #80,#07,#87,#0c,#8a,#02,#45,#48
	db #4b,#4f,#51,#8b,#85,#7d,#83,#02
	db #81,#01,#80,#00,#87,#0d,#8a,#02
	db #15,#83,#01,#17,#83,#02,#13,#15
	db #14,#83,#01,#15,#83,#02,#13,#83
	db #01,#14,#83,#02,#12,#83,#02,#15
	db #83,#01,#17,#83,#02,#15,#15,#83
	db #01,#12,#83,#02,#13,#83,#01,#17
	db #83,#02,#15,#83,#01,#12,#83,#02
.lb626 equ $ + 7
	db #14,#11,#13,#83,#01,#16,#8b,#85
	db #7d,#83,#08,#81,#01,#80,#07,#87
.lb634 equ $ + 5
	db #0e,#8a,#02,#24,#8b,#85,#7d,#83
	db #01,#81,#01,#80,#01,#87,#0f,#10
	db #80,#02,#0e,#80,#03,#0e,#80,#04
	db #0e,#80,#05,#0c,#80,#06,#0b,#80
	db #07,#0e,#83,#06,#84,#83,#08,#80
	db #04,#87,#10,#8a,#02,#48,#83,#10
.lb661 equ $ + 2
	db #84,#82,#85,#53,#83,#40,#81,#01
	db #80,#06,#87,#11,#8a,#02,#36,#83
	db #20,#3c,#83,#01,#87,#12,#48,#4b
	db #47,#4a,#46,#49,#45,#48,#44,#47
	db #43,#46,#42,#45,#41,#44,#40,#43
	db #3f,#42,#3e,#41,#3d,#40,#3c,#3f
	db #3c,#3b,#3a,#39,#38,#35,#83,#40
	db #87,#11,#8a,#02,#36,#83,#20,#30
	db #83,#01,#87,#12,#30,#30,#31,#30
	db #32,#30,#33,#30,#34,#30,#35,#30
	db #36,#30,#37,#30,#38,#30,#39,#30
	db #3a,#30,#3b,#30,#3c,#3e,#40,#42
	db #43,#45,#47,#48,#83,#30,#87,#13
	db #8a,#02,#49,#83,#04,#84,#45,#49
	db #45,#83,#40,#48,#83,#30,#49,#83
	db #04,#84,#45,#49,#45,#83,#01,#87
	db #12,#4e,#51,#4e,#51,#4e,#51,#4e
	db #51,#4e,#51,#4e,#51,#4e,#51,#4e
	db #51,#4e,#51,#4e,#51,#4e,#51,#4e
	db #51,#4e,#51,#4e,#51,#4e,#51,#4e
	db #51,#4e,#51,#4d,#50,#4c,#4f,#4b
	db #4e,#4a,#4d,#49,#4c,#48,#4b,#47
	db #4a,#46,#49,#45,#48,#44,#47,#43
	db #46,#42,#45,#41,#44,#40,#43,#3f
.lb721 equ $ + 2
	db #42,#82,#83,#04,#81,#01,#80,#07
	db #87,#14,#1e,#87,#15,#2b,#87,#14
	db #1e,#2d,#1e,#84,#2a,#87,#15,#2b
	db #87,#14,#1e,#87,#15,#2b,#87,#14
	db #1e,#2d,#1e,#84,#2a,#87,#15,#2b
	db #87,#14,#1e,#87,#15,#2b,#87,#14
	db #1e,#2d,#1e,#84,#2a,#87,#15,#2b
	db #87,#14,#1e,#87,#15,#2b,#87,#14
	db #1e,#2d,#1e,#84,#2a,#87,#15,#2b
	db #87,#14,#1e,#87,#15,#2b,#87,#14
	db #1e,#2d,#1e,#84,#2a,#87,#15,#2b
	db #87,#14,#1e,#87,#15,#2b,#87,#14
	db #1e,#2d,#1e,#84,#2a,#87,#15,#2b
	db #87,#14,#1e,#87,#15,#2b,#87,#14
	db #1e,#2d,#1e,#84,#2a,#87,#15,#2b
	db #87,#14,#1e,#87,#15,#2b,#87,#14
	db #1e,#2d,#1e,#25,#87,#15,#2b,#23
	db #87,#14,#1e,#25,#2a,#2d,#2a,#25
	db #21,#25,#1e,#2a,#20,#2c,#2d,#1e
	db #21,#1e,#20,#27,#2a,#2d,#2a,#27
	db #30,#27,#83,#08,#87,#15,#2d,#2a
	db #83,#04,#87,#14,#27,#25,#24,#83
	db #08,#23,#83,#04,#2a,#2d,#2a,#23
	db #1e,#21,#1e,#23,#2f,#25,#31,#26
	db #32,#23,#2f,#38,#36,#33,#31,#30
	db #2c,#2a,#27,#20,#27,#2a,#27,#20
	db #83,#08,#84,#83,#04,#87,#15,#2b
.lb7f8 equ $ + 1
	db #82,#83,#02,#81,#08,#80,#00,#87
	db #16,#88,#1e,#84,#87,#17,#88,#01
	db #84,#87,#1b,#88,#05,#84,#87,#17
	db #88,#01,#84,#87,#16,#88,#1e,#84
	db #87,#17,#88,#01,#84,#87,#1b,#88
	db #0a,#84,#87,#17,#88,#01,#84,#87
	db #16,#88,#1e,#84,#87,#17,#88,#01
	db #84,#87,#1b,#88,#05,#84,#87,#17
	db #88,#01,#84,#87,#16,#88,#1e,#84
	db #87,#17,#88,#01,#84,#87,#1b,#88
	db #0a,#84,#87,#17,#88,#01,#88,#01
	db #87,#16,#88,#1e,#84,#87,#17,#88
	db #01,#84,#87,#1b,#88,#05,#84,#87
	db #17,#88,#01,#84,#87,#16,#88,#1e
	db #84,#87,#17,#88,#01,#84,#87,#1b
	db #88,#0a,#84,#87,#17,#88,#01,#84
	db #87,#16,#88,#1e,#84,#87,#17,#88
	db #01,#84,#87,#1b,#88,#05,#84,#87
	db #17,#88,#01,#84,#87,#16,#88,#1e
	db #84,#87,#17,#88,#01,#84,#87,#1b
	db #88,#05,#84,#87,#17,#88,#01,#88
	db #01,#87,#16,#88,#1e,#84,#87,#17
	db #88,#01,#84,#87,#1b,#88,#05,#84
	db #87,#17,#88,#01,#84,#87,#16,#88
	db #1e,#84,#87,#17,#88,#01,#84,#87
	db #1b,#88,#0a,#84,#87,#17,#88,#01
	db #84,#87,#16,#88,#1e,#84,#87,#17
	db #88,#01,#84,#87,#1b,#88,#05,#84
	db #87,#17,#88,#01,#84,#87,#16,#88
	db #1e,#84,#87,#17,#88,#01,#84,#87
	db #1b,#88,#0a,#84,#87,#17,#88,#01
	db #88,#01,#87,#16,#88,#1e,#84,#87
	db #17,#88,#01,#84,#87,#1b,#88,#05
	db #84,#87,#17,#88,#01,#84,#87,#16
	db #88,#1e,#84,#87,#17,#88,#01,#84
	db #87,#1b,#88,#0a,#84,#87,#17,#88
	db #01,#84,#87,#16,#88,#1e,#84,#87
	db #17,#88,#01,#84,#87,#1b,#88,#05
	db #84,#87,#17,#88,#01,#84,#87,#16
	db #88,#1e,#84,#87,#1b,#88,#03,#84
	db #88,#05,#84,#88,#09,#87,#17,#88
	db #01,#87,#16,#88,#1e,#84,#87,#17
	db #88,#01,#84,#87,#1b,#88,#05,#84
	db #87,#17,#88,#01,#84,#87,#16,#88
	db #1e,#84,#87,#17,#88,#01,#84,#87
	db #1b,#88,#0a,#84,#87,#17,#88,#01
	db #84,#87,#16,#88,#1e,#84,#87,#17
	db #88,#01,#84,#87,#1b,#88,#05,#84
	db #87,#17,#88,#01,#84,#87,#16,#88
	db #1e,#84,#87,#17,#88,#01,#84,#87
	db #1b,#88,#0a,#84,#87,#17,#88,#01
	db #88,#01,#87,#16,#88,#1e,#84,#87
	db #17,#88,#01,#84,#87,#1b,#88,#05
	db #84,#87,#17,#88,#01,#84,#87,#16
	db #88,#1e,#84,#87,#17,#88,#01,#84
	db #87,#1b,#88,#0a,#84,#87,#1b,#88
	db #01,#84,#87,#16,#88,#1e,#84,#87
	db #1b,#88,#01,#84,#88,#0a,#84,#88
	db #01,#84,#87,#16,#88,#1e,#84,#87
	db #1b,#88,#01,#84,#88,#0a,#84,#88
	db #01,#84,#87,#16,#88,#1e,#84,#87
	db #17,#88,#01,#84,#87,#1b,#88,#05
	db #84,#87,#17,#88,#01,#84,#87,#16
	db #88,#1e,#84,#87,#17,#88,#01,#84
	db #87,#1b,#88,#0a,#84,#87,#17,#88
	db #01,#84,#87,#16,#88,#1e,#84,#87
	db #17,#88,#01,#84,#87,#1b,#88,#05
	db #84,#87,#17,#88,#01,#84,#87,#16
	db #88,#1e,#84,#87,#17,#88,#01,#84
	db #87,#1b,#88,#0a,#84,#87,#17,#88
	db #01,#88,#01,#87,#18,#88,#01,#84
	db #88,#04,#84,#88,#07,#84,#88,#0a
	db #84,#88,#0d,#84,#88,#10,#84,#88
	db #13,#84,#88,#18,#84,#87,#16,#88
	db #1e,#84,#87,#17,#88,#01,#84,#87
	db #1b,#88,#05,#84,#87,#17,#88,#01
	db #84,#87,#16,#88,#1e,#83,#06,#84
	db #83,#02,#87,#1a,#88,#04,#84,#87
.lba6c equ $ + 5
	db #1b,#88,#01,#84,#82,#85,#aa,#83
	db #02,#81,#01,#80,#07,#87,#1c,#3b
	db #83,#0a,#84,#83,#02,#3b,#84,#3b
	db #84,#3b,#84,#83,#18,#3b,#83,#06
	db #84,#83,#02,#87,#1c,#3c,#83,#06
	db #84,#83,#02,#3b,#83,#06,#84,#83
	db #02,#3c,#83,#06,#84,#83,#02,#3b
	db #83,#06,#84,#83,#02,#3c,#83,#06
	db #84,#83,#02,#3b,#83,#0a,#84,#83
	db #02,#3b,#84,#3b,#84,#3b,#84,#3b
	db #83,#06,#84,#83,#02,#37,#83,#06
	db #84,#83,#02,#3b,#83,#06,#84,#83
.lbacc equ $ + 5
	db #30,#87,#1d,#3e,#8b,#83,#02,#81
	db #01,#80,#07,#87,#1c,#37,#83,#0a
	db #84,#83,#02,#37,#84,#37,#84,#37
	db #84,#83,#18,#37,#83,#06,#84,#83
	db #02,#87,#1c,#38,#83,#06,#84,#83
	db #02,#37,#83,#06,#84,#83,#02,#38
	db #83,#06,#84,#83,#02,#37,#83,#06
	db #84,#83,#02,#38,#83,#06,#84,#83
	db #02,#37,#83,#0a,#84,#83,#02,#37
	db #84,#37,#84,#37,#84,#37,#83,#06
	db #84,#83,#02,#32,#83,#06,#84,#83
	db #02,#37,#83,#06,#84,#83,#30,#87
.lbb2a equ $ + 3
	db #1d,#3b,#8b,#83,#02,#81,#01,#80
	db #07,#87,#1c,#3e,#83,#0a,#84,#83
	db #02,#3e,#84,#3e,#84,#3e,#84,#83
	db #18,#3e,#83,#06,#84,#83,#02,#87
	db #1c,#3f,#83,#06,#84,#83,#02,#3e
	db #83,#06,#84,#83,#02,#3f,#83,#06
	db #84,#83,#02,#3e,#83,#06,#84,#83
	db #02,#3f,#83,#06,#84,#83,#02,#3e
	db #83,#0a,#84,#83,#02,#3e,#84,#3e
	db #84,#3e,#84,#3e,#83,#06,#84,#83
	db #02,#3b,#83,#06,#84,#83,#02,#3e
	db #83,#06,#84,#83,#30,#87,#1d,#43
	db #8b,#85,#6b,#83,#04,#81,#01,#80
	db #07,#87,#1f,#34,#83,#10,#3b,#83
	db #0c,#34,#83,#04,#3c,#83,#30,#3b
	db #8b,#83,#04,#81,#01,#80,#07,#87
	db #1f,#40,#83,#10,#47,#83,#0c,#40
	db #83,#04,#48,#83,#30,#47,#8b,#83
	db #04,#81,#01,#80,#07,#84,#83,#50
.lbbc3 equ $ + 4
	db #87,#1e,#1c,#8b,#85,#96,#83,#01
	db #81,#01,#80,#0b,#87,#01,#8a,#02
	db #15,#18,#1b,#1c,#83,#04,#84,#83
	db #01,#15,#17,#83,#04,#84,#83,#01
	db #13,#15,#83,#04,#84,#83,#01,#10
	db #11,#83,#04,#84,#83,#01,#0e,#10
	db #83,#04,#84,#83,#01,#0c,#0e,#83
	db #04,#84,#83,#01,#0b,#0c,#83,#04
	db #84,#83,#01,#09,#0b,#83,#04,#84
	db #83,#01,#09,#0b,#83,#04,#84,#83
	db #01,#09,#0b,#83,#04,#84,#83,#01
.lbc1a equ $ + 3
	db #09,#0b,#8b,#85,#96,#83,#01,#81
	db #01,#80,#0b,#87,#01,#8a,#02,#01
	db #0b,#0a,#09,#08,#07,#06,#05,#8b
.lbc2f
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbc3c equ $ + 5
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
.lbca6 equ $ + 7
.lbca5 equ $ + 6
.lbca3 equ $ + 4
.lbca2 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbcac equ $ + 5
.lbca9 equ $ + 2
.lbca8 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbcb6 equ $ + 7
.lbcb3 equ $ + 4
.lbcb1 equ $ + 2
.lbcaf
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbcce equ $ + 7
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
.lbd26 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd2e equ $ + 7
.lbd2d equ $ + 6
.lbd2c equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd31 equ $ + 2
	db #00,#00,#61,#b6,#61,#b6,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #21,#b7,#21,#b7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#f8,#b7
	db #f8,#b7,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbdbb equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbdc6 equ $ + 7
.lbdc5 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbdcc equ $ + 5
.lbdcb equ $ + 4
.lbdca equ $ + 3
.lbdc9 equ $ + 2
.lbdc8 equ $ + 1
.lbdc7
	db #00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbddc equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbde4 equ $ + 7
.lbde3 equ $ + 6
.lbde2 equ $ + 5
.lbde0 equ $ + 3
.lbddf equ $ + 2
.lbdde equ $ + 1
.lbddd
	db #00,#00,#00,#00,#00,#00,#00,#01
.lbdec equ $ + 7
.lbdeb equ $ + 6
.lbdea equ $ + 5
.lbde9 equ $ + 4
.lbde8 equ $ + 3
.lbde7 equ $ + 2
.lbde6 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbdf4 equ $ + 7
.lbdf3 equ $ + 6
.lbdf1 equ $ + 4
.lbdef equ $ + 2
.lbded
	db #7d,#a2,#7d,#a2,#00,#00,#00,#00
.lbdfc equ $ + 7
.lbdfb equ $ + 6
.lbdfa equ $ + 5
.lbdf9 equ $ + 4
.lbdf8 equ $ + 3
.lbdf7 equ $ + 2
.lbdf6 equ $ + 1
.lbdf5
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbe02 equ $ + 5
.lbe01 equ $ + 4
.lbe00 equ $ + 3
.lbdff equ $ + 2
.lbdfe equ $ + 1
.lbdfd
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
;
.play_music		; added by Megachur
;
	call real_play_music
	call real_play_music
	jp real_play_music
;
.music_info
	db "Cauldron 2 (1986)(Palace Software)(Richard Joseph)",0
	db "",0

	read "music_end.asm"
