; Music of Titanic (1988)(Topo Soft)(Cesar Astudillo)()
; Ripped by Megachur the 10/10/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TITANIC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #b5a4

	read "music_header.asm"

;
.init_music
;
	di
	ld a,#00
	ld de,lbe7b
	call lb604
	inc a
	ld de,lbe8e
	call lb604
	inc a
	ld de,lbea7
	call lb604
	ld a,#01
	ld (lb5df),a
	ret
;
.stop_music
;
	di
	ld de,#0000
	xor a
	push de
	call lb604
	pop de
	inc a
	push de
	call lb604
	pop de
	inc a
	call lb604
	ld a,#01
	ld (lb5df),a
	ei
	halt
	ret
;
.play_interrupt
;
	push af
.lb5df equ $ + 1
	ld a,#01
	dec a
	ld (lb5df),a
	jr nz,lb600
	push ix
	push iy
	push hl
	push de
	push bc
	ex af,af'
	push af
	ld a,#06
	ld (lb5df),a
	call lb623
	pop af
	ex af,af'
	pop bc
	pop de
	pop hl
	pop iy
	pop ix
.lb600
	pop af
	ei
	reti
.lb604
	push af
	push de
	ld de,#002e
	call lb9c5
	ld de,lbb1f
	add hl,de
	push hl
	xor a
	ld b,#2e
.lb614
	ld (hl),a
	inc hl
	djnz lb614
	pop hl
	pop de
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),e
	inc hl
	ld (hl),d
	pop af
	ret
;
.play_music
.lb623
;
	push af
	ld b,#03
	xor a
	ld ix,lbb1f
	ld de,lbb14
	ld hl,lbb1c
.lb631
	push af
	push hl
	push de
	push bc
	ld (lbb12),a
	ld a,(ix+#04)
	or (ix+#05)
	jp nz,lb69c
	xor a
	call lb966
	ld c,(ix+#02)
	ld b,(ix+#03)
	ld a,b
	or c
	jp z,lb755
.lb650
	ld a,(bc)
	cp #80
	jp c,lb65f
	sub #80
	ld hl,lbaf4
	call lb9f4
	jp (hl)
.lb65f
	push af
	call lb9ba
	pop af
	add (hl)
	ld hl,lba34
	call lb9f4
	ld (ix+#0a),l
	ld (ix+#0b),h
	inc bc
.lb672
	ld a,(ix+#08)
	call lb966
	call lb7d1
	ld (ix+#2a),#00
	call lb7e9
	ld (ix+#2b),#00
	ld (ix+#2c),#00
.lb68a
	ld (ix+#02),c
	ld (ix+#03),b
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld (ix+#04),l
	ld (ix+#05),h
.lb69c
	ld l,(ix+#04)
	ld h,(ix+#05)
	dec hl
	ld (ix+#04),l
	ld (ix+#05),h
	push ix
	pop iy
	ld d,#02
	ld c,#00
.lb6b1
	ld a,(iy+#0c)
	or a
	jr z,lb6be
	dec a
	ld (iy+#0c),a
	inc c
	jr lb6df
.lb6be
	ld a,(iy+#0e)
	or a
	jr z,lb6da
	dec a
	ld (iy+#0e),a
	ld a,(ix+#2a)
	add (iy+#1b)
	ld (ix+#2a),a
	ld a,(iy+#20)
	ld (iy+#0c),a
	inc c
	jr lb6df
.lb6da
	inc iy
	dec d
	jr nz,lb6b1
.lb6df
	ld a,c
	or a
	jr nz,lb6ea
	bit 0,(ix+#2d)
	call nz,lb7d1
.lb6ea
	push ix
	pop iy
	ld d,#03
	ld c,#00
.lb6f2
	ld a,(iy+#10)
	or a
	jr z,lb6ff
	dec a
	ld (iy+#10),a
	inc c
	jr lb74a
.lb6ff
	ld a,(iy+#13)
	or a
	jr z,lb745
	dec a
	ld (iy+#13),a
	ld a,(iy+#1d)
	or a
	jp p,lb729
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
	jr lb73c
.lb729
	ld a,(ix+#2b)
	add (iy+#1d)
	ld (ix+#2b),a
	ld a,(ix+#2c)
	adc #00
	and #0f
	ld (ix+#2c),a
.lb73c
	ld a,(iy+#22)
	ld (iy+#10),a
	inc c
	jr lb74a
.lb745
	inc iy
	dec d
	jr nz,lb6f2
.lb74a
	ld a,c
	or a
	jr nz,lb755
	bit 1,(ix+#2d)
	call nz,lb7e9
.lb755
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
	jp nz,lb631
	ld iy,lbba9
	ld d,#02
	ld c,#00
.lb787
	ld a,(iy+#00)
	or a
	jr z,lb794
	dec a
	ld (iy+#00),a
	inc c
	jr lb7b5
.lb794
	ld a,(iy+#02)
	or a
	jr z,lb7b0
	dec a
	ld (iy+#02),a
	ld a,(lbbb5)
	add (iy+#06)
	ld (lbbb5),a
	ld a,(iy+#08)
	ld (iy+#00),a
	inc c
	jr lb7b5
.lb7b0
	inc iy
	dec d
	jr nz,lb787
.lb7b5
	ld a,c
	or a
	jr nz,lb7c1
	ld a,(lbbb3)
	bit 2,a
	call nz,lb801
.lb7c1
	ld a,(lbbb4)
	ld e,a
	ld a,(lbbb5)
	add e
	ld (lbb1a),a
	call lba01
	pop af
	ret
.lb7d1
	push ix
	ld d,#02
.lb7d5
	ld a,(ix+#20)
	ld (ix+#0c),a
	ld a,(ix+#16)
	ld (ix+#0e),a
	inc ix
	dec d
	jr nz,lb7d5
	pop ix
	ret
.lb7e9
	ld d,#03
	push ix
.lb7ed
	ld a,(ix+#22)
	ld (ix+#10),a
	ld a,(ix+#18)
	ld (ix+#13),a
	inc ix
	dec d
	jr nz,lb7ed
	pop ix
	ret
.lb801
	ld d,#02
	push iy
	ld iy,lbba9
.lb809
	ld a,(iy+#08)
	ld (iy+#00),a
	ld a,(iy+#04)
	ld (iy+#02),a
	inc iy
	dec d
	jr nz,lb809
	pop iy
	ret
.lb81d
	inc bc
	ld a,(bc)
	ld (ix+#09),a
	inc bc
	jp lb650
.lb826
	inc bc
	ld a,(bc)
	ld de,(lbb13)
	ld d,#00
	call lb9c5
	ld (ix+#06),l
	ld (ix+#07),h
	inc bc
	jp lb650
.lb83b
	inc bc
	ld a,(bc)
	and #09
	ld (ix+#08),a
	inc bc
.lb844 equ $ + 1
	jp lb650
.lb846
	push ix
	pop hl
	xor a
	ld b,#2e
.lb84c
	ld (hl),a
	inc hl
	djnz lb84c
	ld a,(lbb12)
	ld hl,lbbb6
	xor (hl)
	jp nz,lb755
	ld hl,lbba9
	ld de,lbbaa
	ld bc,#000a
	ld (hl),a
	ldir
	inc de
	ld (de),a
	jp lb755
.lb86b
	inc bc
	ld a,(bc)
	push bc
	ld de,#0010
	call lb9c5
	ld bc,#0bb8
	push hl
	pop de
	call lb9da
	ld a,c
	ld (lbb13),a
	pop bc
	inc bc
	jp lb650
.lb885
	inc bc
	ld a,(bc)
	push af
	and #1f
	ld (lbbb4),a
	call lb801
	pop af
	inc bc
	or a
	jp m,lb650
	jp lb672
.lb899
	inc bc
	jp lb68a
.lb89d
	ld c,(ix+#00)
	ld b,(ix+#01)
	ld (ix+#02),c
	ld (ix+#03),b
	jp lb650
.lb8ac
	inc bc
	ld a,(bc)
	inc bc
	ld de,#0000
.lb8b2
	push af
	ld a,(bc)
	push de
	ld de,(lbb13)
	ld d,#00
	call lb9c5
	pop de
	add hl,de
	ex de,hl
	inc bc
	pop af
	dec a
	jr nz,lb8b2
	ld (ix+#06),l
	ld (ix+#07),h
	jp lb650
.lb8cf
	inc bc
	ld a,(bc)
	ld e,a
	or (ix+#2d)
	ld (ix+#2d),a
	ld a,(lbbb3)
	or e
	ld (lbbb3),a
	inc bc
	jp lb650
.lb8e3
	inc bc
	res 0,(ix+#2d)
	res 1,(ix+#2d)
	ld a,(bc)
	ld de,#000f
	call lb9c5
	ld de,lbbc0
	add hl,de
	push ix
	ld d,#0f
.lb8fb
	ld a,(hl)
	ld (ix+#16),a
	inc hl
	inc ix
	dec d
	jp nz,lb8fb
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
	jp lb650
.lb92c
	inc bc
	ld a,(lbbb3)
	res 2,a
	ld (lbbb3),a
	ld a,(bc)
	ld de,#0006
	call lb9c5
	ld de,lbc56
	add hl,de
	ld iy,lbba9
	ld (iy+#00),#00
	ld (iy+#01),#00
	ld d,#06
.lb94e
	ld a,(hl)
	ld (iy+#04),a
	inc hl
	inc iy
	dec d
	jr nz,lb94e
	xor a
	ld (lbbb5),a
	inc bc
	ld a,(lbb12)
	ld (lbbb6),a
	jp lb650
.lb966
	push de
	cpl
	ld e,a
	ld d,#09
	ld a,(lbb12)
.lb96e
	dec a
	jp m,lb979
	scf
	rl e
	sla d
	jr lb96e
.lb979
	ld a,(lbb1b)
	or d
	and e
	ld (lbb1b),a
	pop de
	ret
.lb983
	ld a,(lbb12)
	inc bc
	add a
	ld l,a
	ld h,#00
	ld a,(bc)
	inc bc
	ld de,lbbb7
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	ld hl,lbc62
	call lb9f4
	ld b,h
	ld c,l
	jp lb650
.lb99f
	ld a,(lbb12)
	add a
	ld l,a
	ld h,#00
	ld de,lbbb7
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	jp lb650
.lb9b0
	inc bc
	call lb9ba
	ld a,(bc)
	inc bc
	ld (hl),a
	jp lb650
.lb9ba
	ld a,(lbb12)
	ld l,a
	ld h,#00
	ld de,lbbbd
	add hl,de
	ret
.lb9c5
	ld hl,#0000
	and a
	ret z
	push bc
	ld b,#08
.lb9cd
	srl a
	jr nc,lb9d2
	add hl,de
.lb9d2
	sla e
	rl d
	djnz lb9cd
	pop bc
	ret
.lb9da
	push af
	ld hl,#0000
	ld a,b
	ld b,#10
.lb9e1
	rl c
	rla
	adc hl,hl
	sbc hl,de
	jr nc,lb9eb
	add hl,de
.lb9eb
	ccf
	djnz lb9e1
	rl c
	rla
	ld b,a
	pop af
	ret
.lb9f4
	push af
	add a
	add l
	ld l,a
	jr nc,lb9fb
	inc h
.lb9fb
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	pop af
	ret
.lba01
	ld b,#f7
	ld c,#82
	out (c),c
	ld hl,lbb14
	ld a,#00
	ld d,#0b
.lba0e
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
	jr nz,lba0e
	ret
.lba34
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
.lbaf4
	dw lb81d,lb83b,lb89d,lb826
	dw lb899,lb86b,lb8ac,lb8e3
	dw lb885,lb92c,lb8cf,lb846
	dw lb983,lb99f,lb9b0
.lbb13 equ $ + 1
.lbb12
	ld (hl),#2a
.lbb14
	nop
	ld (ix+#2b),#00
.lbb1c equ $ + 3
.lbb1b equ $ + 2
.lbb1a equ $ + 1
	ld (ix+#2c),#00
.lbb1f equ $ + 2
	jp lb844
	inc bc
	ld a,(lbda7)
	res 2,a
	ld (lbda7),a
	ld a,(bc)
	ld de,#0006
	call lbbb9
	ld de,lbe4a
	add hl,de
	ld iy,lbd9d
	ld (iy+#00),#00
	ld (iy+#01),#00
	ld d,#06
.lbb42
	ld a,(hl)
	ld (iy+#04),a
	inc hl
	inc iy
	dec d
	jr nz,lbb42
	xor a
	ld (lbda9),a
	inc bc
	ld a,(lbd06)
	ld (lbdaa),a
	jp lb844
	push de
	cpl
	ld e,a
	ld d,#09
	ld a,(lbd06)
.lbb62
	dec a
	jp m,lbb6d
	scf
	rl e
	sla d
	jr lbb62
.lbb6d
	ld a,(lbd0f)
	or d
	and e
	ld (lbd0f),a
	pop de
	ret
	ld a,(lbd06)
	inc bc
	add a
	ld l,a
	ld h,#00
	ld a,(bc)
	inc bc
	ld de,lbdab
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	ld hl,lbe56
	call lbbe8
	ld b,h
	ld c,l
	jp lb844
	ld a,(lbd06)
	add a
	ld l,a
	ld h,#00
	ld de,lbdab
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	jp lb844
	inc bc
	call lbbae
	ld a,(bc)
.lbba9
	inc bc
.lbbaa
	ld (hl),a
	jp lb844
.lbbae
	ld a,(lbd06)
	ld l,a
.lbbb3 equ $ + 1
	ld h,#00
.lbbb6 equ $ + 2
.lbbb5 equ $ + 1
.lbbb4
	ld de,lbdb1
.lbbb7
	add hl,de
	ret
.lbbc0 equ $ + 7
.lbbbd equ $ + 4
.lbbb9
	db #21,#00,#00,#a7,#c8,#c5,#06,#07
	db #00,#00,#00,#00,#fe,#00,#00,#00
	db #00,#01,#00,#00,#00,#00,#0a,#00
	db #00,#00,#00,#ff,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#06,#00,#1e
.lbbe8 equ $ + 7
	db #00,#00,#fe,#00,#e2,#00,#00,#01
	db #00,#01,#00,#00,#01,#01,#00,#00
	db #00,#04,#fc,#00,#00,#00,#01,#01
	db #00,#00,#00,#01,#01,#01,#01,#00
	db #04,#fc,#02,#fe,#00,#01,#01,#01
	db #01,#00,#01,#01,#14,#01,#00,#00
	db #f1,#00,#00,#00,#03,#01,#00,#00
	db #00,#07,#00,#01,#01,#00,#ff,#00
	db #01,#ff,#00,#02,#00,#01,#01,#00
	db #01,#01,#01,#01,#00,#02,#fc,#02
	db #fe,#00,#01,#01,#01,#01,#00,#08
	db #08,#01,#01,#00,#01,#ff,#fc,#04
	db #00,#02,#02,#01,#01,#00,#01,#01
	db #00,#00,#00,#fe,#02,#00,#00,#00
.lbc56 equ $ + 5
	db #01,#01,#00,#00,#00,#0a,#00,#03
	db #00,#01,#00,#1e,#00,#f7,#00,#01
	db #00
.lbc62
	dw lbc8c,lbcf5,lbd2d,lbd4a
	dw lbd9b,lbdf5,lbc8c,lbc8c
	dw lbc8c,lbc8c,lbc8c,lbc8c
	dw lbc8c,lbc8c,lbc8c,lbc8c
	dw lbc8c,lbc8c,lbc8c,lbc8c
	dw lbc8c
.lbcf5	equ $ + &69
.lbd2d	equ $ + &a1
.lbd4a	equ $ + &be
.lbd9b	equ $ + &10f
.lbdf5	equ $ + &169
.lbc8c
	db #87,#07,#81,#01,#8a
	db #03,#80,#0c,#83,#20,#24,#81,#09
	db #21,#81,#01,#23,#81,#09,#1f,#81
	db #01,#21,#81,#09,#1d,#81,#01,#1f
	db #81,#09,#1c,#81,#01,#1d,#81,#09
	db #1a,#81,#01,#1c,#81,#09,#18,#81
	db #01,#1e,#81,#09,#1a,#81,#01,#20
	db #81,#09,#1a,#81,#01,#24,#81,#09
	db #21,#81,#01,#23,#81,#09,#1f,#81
	db #01,#21,#81,#09,#1d,#81,#01,#1f
	db #81,#09,#1c,#81,#01,#1d,#81,#09
	db #1a,#81,#01,#1c,#81,#09,#18,#81
	db #01,#1a,#81,#09,#1c,#81,#01,#21
	db #81,#01,#15,#8d,#87,#07,#81,#01
	db #8a,#03,#80,#0c,#83,#10,#84,#83
.lbd06 equ $ + 5
	db #20,#1c,#24,#1c,#23,#18,#21,#81
.lbd0f equ $ + 6
	db #09,#1a,#81,#01,#1f,#15,#1d,#15
	db #1c,#15,#1e,#17,#20,#1c,#24,#1c
	db #23,#18,#21,#81,#09,#1a,#81,#01
	db #1f,#15,#1d,#15,#1c,#1e,#20,#1c
	db #83,#10,#09,#8d,#87,#08,#8a,#02
	db #80,#07,#81,#01,#83,#40,#8e,#0c
	db #21,#1f,#1d,#18,#1a,#15,#1a,#1c
	db #21,#1f,#1d,#18,#1a,#15,#1c,#15
	db #8d,#87,#06,#8a,#00,#80,#0e,#81
	db #01,#83,#10,#89,#00,#15,#15,#81
	db #09,#21,#81,#01,#15,#13,#13,#1f
	db #13,#11,#11,#1d,#11,#0c,#0c,#18
	db #0c,#0e,#0e,#1a,#0e,#15,#15,#21
	db #15,#1a,#1a,#26,#1a,#1c,#1c,#28
	db #1c,#15,#15,#21,#15,#13,#13,#1f
	db #13,#11,#11,#1d,#11,#0c,#0c,#18
	db #0c,#0e,#0e,#1a,#0e,#15,#15,#21
	db #15,#1a,#26,#1c,#28,#21,#1c,#15
.lbd9d equ $ + 4
	db #1c,#8d,#87,#03,#80,#0b,#8a,#00
.lbda7 equ $ + 6
	db #81,#01,#83,#10,#21,#23,#24,#21
.lbdab equ $ + 2
.lbdaa equ $ + 1
.lbda9
	db #23,#1f,#83,#20,#1c,#83,#10,#1d
.lbdb1
	db #1f,#21,#24,#1f,#1c,#83,#20,#18
	db #83,#10,#1d,#1c,#1a,#1d,#1c,#1a
	db #18,#15,#1a,#1c,#1d,#21,#20,#21
	db #23,#1c,#83,#10,#21,#23,#24,#21
	db #23,#1f,#83,#20,#1c,#83,#10,#1d
	db #1f,#21,#24,#1f,#1c,#83,#20,#18
	db #83,#10,#1d,#1f,#21,#1c,#21,#24
	db #23,#21,#26,#29,#28,#26,#24,#23
	db #83,#20,#21,#8d,#87,#04,#8a,#02
	db #81,#01,#83,#08,#24,#23,#83,#30
	db #21,#83,#08,#23,#21,#83,#30,#1f
	db #83,#08,#21,#1f,#83,#30,#1d,#83
	db #08,#1f,#1c,#83,#30,#18,#83,#08
	db #1d,#1c,#83,#30,#1a,#83,#08,#1c
	db #18,#83,#30,#15,#83,#08,#1d,#1c
	db #83,#30,#1a,#87,#03,#8a,#00,#81
	db #01,#83,#10,#1c,#20,#23,#26,#83
	db #10,#24,#83,#08,#21,#23,#24,#23
	db #83,#10,#21,#83,#08,#23,#21,#1f
.lbe4a equ $ + 1
	db #21,#23,#1c,#1d,#1f,#83,#10,#21
.lbe56 equ $ + 5
	db #83,#08,#1d,#1f,#21,#24,#23,#21
	db #1f,#18,#1c,#1f,#24,#28,#26,#24
	db #83,#10,#1d,#83,#08,#1a,#1c,#1d
	db #21,#20,#23,#83,#10,#21,#1c,#24
	db #21,#26,#29,#28,#26,#24,#23,#21
.lbe7b equ $ + 2
	db #15,#8d,#85,#64,#8e,#18,#8c,#00
	db #8c,#00,#8c,#00,#8c,#00,#8c,#00
.lbe8e equ $ + 5
	db #8e,#0c,#8c,#02,#82,#85,#64,#8e
	db #00,#83,#80,#84,#84,#84,#84,#84
	db #84,#84,#84,#8c,#02,#8c,#03,#8c
.lbea7 equ $ + 6
	db #03,#8c,#03,#8c,#03,#82,#85,#64
	db #8e,#18,#83,#10,#8c,#01,#8c,#01
	db #8c,#01,#8c,#04,#8c,#05,#8e,#24
	db #8c,#05,#82,#bf,#87,#f2,#f0,#f1
	db #f2,#f0,#f1,#0f,#af,#0f,#ff,#5f
	db #ff,#af,#ff,#ff,#4b,#0f,#0f,#f2
	db #f1,#af,#5a,#fa,#f3,#f2,#fa,#a5
	db #0f,#0f,#0f,#5e,#0f,#f2,#f0,#f1
	db #f2,#f0,#f1,#0f,#ff,#ff,#5f,#5f
	db #5f,#ff,#5f,#5f,#4b,#0f,#5b,#f0
	db #fa,#af,#5a,#5f,#f0,#f5,#f0,#f0
	db #a5,#0f,#0f,#5e,#0f,#f0,#ff,#21
	db #00,#c0,#11,#44,#96,#01,#40,#1f
	db #ed,#b0,#c3,#50,#28,#5b,#f2,#f5
	db #5f,#af,#5f,#0f,#fa,#af,#fa,#f5
	db #0f,#0f,#0f,#5e,#0f,#ff,#0f,#5f
	db #af,#0f,#ff,#4b,#0f,#4b,#0f,#0f
	db #0f,#0f,#0f,#0f,#d6,#0f,#f0,#af
	db #0f,#af,#0f,#4b,#5f,#0f,#5f,#af
	db #0f,#0f,#0f,#d6,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#4b,#0f,#4b,#0f,#0f
	db #0f,#0f,#0f,#0f,#d6,#0f,#5f,#0f
	db #0f,#af,#0f,#5e,#0f,#0f,#0f,#0f
	db #0f,#4b,#0f,#d6,#87,#87,#0f,#0f
	db #0f,#0f,#87,#d6,#0f,#5e,#0f,#0f
	db #4b,#0f,#0f,#0f,#fc,#87,#0f,#0f
	db #87,#0f,#0f,#5e,#87,#4b,#0f,#0f
	db #87,#5e,#4b,#fc,#e9,#e9,#0f,#0f
	db #0f,#0f,#ad,#fc,#0f,#d6,#0f,#87
	db #4b,#87,#0f,#4b,#fc,#e9,#0f,#0f
	db #ad,#0f,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#f7,#00,#f7,#49
	db #1d,#dc,#00,#53,#b9,#4c,#be,#4c
	db #be,#00,#00,#b0,#ab,#00,#f7,#00
	db #f7,#49,#1d,#dc,#00,#53,#b9,#00
	db #f7,#4c,#be,#00,#08,#b0,#ab,#fc
	db #c8,#0a,#c9,#00,#00,#60,#ca,#80
	db #00,#f2,#c8,#ce,#c8,#45,#00,#55
	db #be,#c1,#02,#37,#d7,#6b,#b9,#54
	db #00,#45,#00,#f8,#2f,#3e,#02,#48
	db #ba,#e4,#fe,#51,#20,#bf,#fe,#b9
	db #fe,#e0,#ce,#00,#f7,#49,#1d,#d2
	db #00,#53,#b9,#44,#00,#09,#bf,#a2
	db #b9,#84,#7f,#8e,#f2,#6f,#de,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #40,#c0,#c0,#c0,#c0,#c0,#c0,#c0
	db #c0,#c0,#c0,#c0,#c0,#c0,#c0,#c0
	db #c0,#c0,#c0,#c0,#c0,#c0,#c0,#c0
	db #c0,#c0,#c0,#c0,#c0,#c0,#c0,#c0
	db #c0,#c0,#c0,#c0,#c0,#c0,#c0,#c0
	db #c0,#c0,#c0,#c0,#c0,#c0,#c0,#c0
	db #c0,#c0,#c0,#c0,#c0,#c0,#c0,#c0
	db #c0,#c0,#c0,#c0,#c0,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#84
	db #cc,#98,#30,#30,#30,#30,#30,#40
	db #c8,#30,#30,#30,#30,#30,#30,#40
	db #c8,#30,#30,#30,#30,#30,#30,#40
	db #c8,#30,#30,#30,#30,#30,#30,#40
	db #c8,#30,#30,#30,#30,#30,#30,#c4
	db #80,#30,#30,#30,#30,#30,#30,#c4
	db #80,#30,#30,#30,#30,#30,#30,#c4
	db #80,#30,#30,#30,#64,#cc,#48,#00
;
.music_info
	db "Titanic (1988)(Topo Soft)(Cesar Astudillo)",0
	db "",0

	read "music_end.asm"
