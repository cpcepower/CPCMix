; Music of RAM (1990)(Topo Soft)(TPM)()
; Ripped by Megachur the 27/04/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RAM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #c000

	read "music_header.asm"

	di
	ld a,(#0038)
	ld (lc0a3),a
	ld hl,(#0039)
	ld (lc0a4),hl
	ld a,#c3
	ld (#0038),a
	ld hl,lc0ab
	ld (#0039),hl
;
.init_music
;
	ld a,#00
	ld de,lc851
	call lc0fb
	inc a
	ld de,lc86c
	call lc0fb
	inc a
	ld de,lc8e3
	call lc0fb
.lc02e
	ret		; modified by Megachur	; ei
	halt
	ld c,#00
.lc032
	push bc
	push de
	call lc072
	pop de
	and a
	pop bc
	jr nz,lc044
	inc c
	ld a,c
	cp #0a
	jr c,lc032
	jr lc02e
;
.stop_music
.lc044
;
	ld a,#00
	ld de,#0000
	call lc0fb
	inc a
	call lc0fb
	inc a
	call lc0fb
	ld a,#01
	ld (lc0ae),a
	ret             ; modified by Megachur	; ei
	halt
	di
	ld a,(lc0a3)
	ld (#0038),a
	ld hl,(lc0a4)
	ld (#0039),hl
	ld bc,#7f10
	out (c),c
	ld a,#54
	out (c),a
	ret
.lc072
	di
	ld d,c
	ld bc,#f40e
	out (c),c
	ld b,#f6
	in a,(c)
	and #30
	ld c,a
	or #c0
	out (c),a
	out (c),c
	inc b
	ld a,#92
	out (c),a
	push bc
	ld c,d
	set 6,c
	ld b,#f6
	out (c),c
	ld b,#f4
	in a,(c)
	ld d,a
	pop bc
	ld a,#82
	out (c),a
	dec b
	out (c),c
	ld a,d
	cpl
	ret
.lc0a4 equ $ + 1
.lc0a3
	jp #b941
	adc (hl)
	inc h
	adc h
	inc bc
	add d
.lc0ab
	di
	push af
.lc0ae equ $ + 1
	ld a,#01
	dec a
	ld (lc0ae),a
	jr nz,lc0cb
	ld a,#06
	ld (lc0ae),a
	push bc
	push de
	push hl
	push ix
	push iy
	call lc11a
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
.lc0cb
	pop af
	ei
	reti
	push af
	push de
	and #7f
	ld de,#002e
	call lc4bc
	ld de,lc616
	add hl,de
	push hl
	ld a,(hl)
	inc hl
	or (hl)
	jr z,lc0f5
	ld d,#03
	ld hl,lc616
	ld bc,#002e
.lc0eb
	inc hl
	ld a,(hl)
	dec hl
	or (hl)
	jr z,lc0f8
	add hl,bc
	dec d
	jr nz,lc0eb
.lc0f5
	pop hl
	jr lc107
.lc0f8
	pop de
	jr lc107
.lc0fb
	push af
	push de
	ld de,#002e
	call lc4bc
	ld de,lc616
	add hl,de
.lc107
	push hl
	xor a
	ld b,#2e
.lc10b
	ld (hl),a
	inc hl
	djnz lc10b
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
.lc11a
;
	push af
	ld b,#03
	xor a
	ld ix,lc616
	ld de,lc60b
	ld hl,lc613
.lc128
	push af
	push hl
	push de
	push bc
	ld (lc609),a
	ld a,(ix+#04)
	or (ix+#05)
	jp nz,lc193
	xor a
	call lc45d
	ld c,(ix+#02)
	ld b,(ix+#03)
	ld a,b
	or c
	jp z,lc24c
.lc147
	ld a,(bc)
	cp #80
	jp c,lc156
	sub #80
	ld hl,lc5eb
	call lc4eb
	jp (hl)
.lc156
	push af
	call lc4b1
	pop af
	add (hl)
	ld hl,lc52b
	call lc4eb
	ld (ix+#0a),l
	ld (ix+#0b),h
	inc bc
.lc169
	ld a,(ix+#08)
	call lc45d
	call lc2c8
	ld (ix+#2a),#00
	call lc2e0
	ld (ix+#2b),#00
	ld (ix+#2c),#00
.lc181
	ld (ix+#02),c
	ld (ix+#03),b
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld (ix+#04),l
	ld (ix+#05),h
.lc193
	ld l,(ix+#04)
	ld h,(ix+#05)
	dec hl
	ld (ix+#04),l
	ld (ix+#05),h
	push ix
	pop iy
	ld d,#02
	ld c,#00
.lc1a8
	ld a,(iy+#0c)
	or a
	jr z,lc1b5
	dec a
	ld (iy+#0c),a
	inc c
	jr lc1d6
.lc1b5
	ld a,(iy+#0e)
	or a
	jr z,lc1d1
	dec a
	ld (iy+#0e),a
	ld a,(ix+#2a)
	add (iy+#1b)
	ld (ix+#2a),a
	ld a,(iy+#20)
	ld (iy+#0c),a
	inc c
	jr lc1d6
.lc1d1
	inc iy
	dec d
	jr nz,lc1a8
.lc1d6
	ld a,c
	or a
	jr nz,lc1e1
	bit 0,(ix+#2d)
	call nz,lc2c8
.lc1e1
	push ix
	pop iy
	ld d,#03
	ld c,#00
.lc1e9
	ld a,(iy+#10)
	or a
	jr z,lc1f6
	dec a
	ld (iy+#10),a
	inc c
	jr lc241
.lc1f6
	ld a,(iy+#13)
	or a
	jr z,lc23c
	dec a
	ld (iy+#13),a
	ld a,(iy+#1d)
	or a
	jp p,lc220
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
	jr lc233
.lc220
	ld a,(ix+#2b)
	add (iy+#1d)
	ld (ix+#2b),a
	ld a,(ix+#2c)
	adc #00
	and #0f
	ld (ix+#2c),a
.lc233
	ld a,(iy+#22)
	ld (iy+#10),a
	inc c
	jr lc241
.lc23c
	inc iy
	dec d
	jr nz,lc1e9
.lc241
	ld a,c
	or a
	jr nz,lc24c
	bit 1,(ix+#2d)
	call nz,lc2e0
.lc24c
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
	jp nz,lc128
	ld iy,lc6a0
	ld d,#02
	ld c,#00
.lc27e
	ld a,(iy+#00)
	or a
	jr z,lc28b
	dec a
	ld (iy+#00),a
	inc c
	jr lc2ac
.lc28b
	ld a,(iy+#02)
	or a
	jr z,lc2a7
	dec a
	ld (iy+#02),a
	ld a,(lc6ac)
	add (iy+#06)
	ld (lc6ac),a
	ld a,(iy+#08)
	ld (iy+#00),a
	inc c
	jr lc2ac
.lc2a7
	inc iy
	dec d
	jr nz,lc27e
.lc2ac
	ld a,c
	or a
	jr nz,lc2b8
	ld a,(lc6aa)
	bit 2,a
	call nz,lc2f8
.lc2b8
	ld a,(lc6ab)
	ld e,a
	ld a,(lc6ac)
	add e
	ld (lc611),a
	call lc4f8
	pop af
	ret
.lc2c8
	push ix
	ld d,#02
.lc2cc
	ld a,(ix+#20)
	ld (ix+#0c),a
	ld a,(ix+#16)
	ld (ix+#0e),a
	inc ix
	dec d
	jr nz,lc2cc
	pop ix
	ret
.lc2e0
	ld d,#03
	push ix
.lc2e4
	ld a,(ix+#22)
	ld (ix+#10),a
	ld a,(ix+#18)
	ld (ix+#13),a
	inc ix
	dec d
	jr nz,lc2e4
	pop ix
	ret
.lc2f8
	ld d,#02
	push iy
	ld iy,lc6a0
.lc300
	ld a,(iy+#08)
	ld (iy+#00),a
	ld a,(iy+#04)
	ld (iy+#02),a
	inc iy
	dec d
	jr nz,lc300
	pop iy
	ret
.lc314
	inc bc
	ld a,(bc)
	ld (ix+#09),a
	inc bc
	jp lc147
.lc31d
	inc bc
	ld a,(bc)
	ld de,(lc60a)
	ld d,#00
	call lc4bc
	ld (ix+#06),l
	ld (ix+#07),h
	inc bc
	jp lc147
.lc332
	inc bc
	ld a,(bc)
	and #09
	ld (ix+#08),a
	inc bc
	jp lc147
.lc33d
	push ix
	pop hl
	xor a
	ld b,#2e
.lc343
	ld (hl),a
	inc hl
	djnz lc343
	ld a,(lc609)
	ld hl,lc6ad
	xor (hl)
	jp nz,lc24c
	ld hl,lc6a0
	ld de,lc6a1
	ld bc,#000a
	ld (hl),a
	ldir
	inc de
	ld (de),a
	jp lc24c
.lc362
	inc bc
	ld a,(bc)
	push bc
	ld de,#0010
	call lc4bc
	ld bc,#0bb8
	push hl
	pop de
	call lc4d1
	ld a,c
	ld (lc60a),a
	pop bc
	inc bc
	jp lc147
.lc37c
	inc bc
	ld a,(bc)
	push af
	and #1f
	ld (lc6ab),a
	call lc2f8
	pop af
	inc bc
	or a
	jp m,lc147
	jp lc169
.lc390
	inc bc
	jp lc181
.lc394
	ld c,(ix+#00)
	ld b,(ix+#01)
	ld (ix+#02),c
	ld (ix+#03),b
	jp lc147
.lc3a3
	inc bc
	ld a,(bc)
	inc bc
	ld de,#0000
.lc3a9
	push af
	ld a,(bc)
	push de
	ld de,(lc60a)
	ld d,#00
	call lc4bc
	pop de
	add hl,de
	ex de,hl
	inc bc
	pop af
	dec a
	jr nz,lc3a9
	ld (ix+#06),l
	ld (ix+#07),h
	jp lc147
.lc3c6
	inc bc
	ld a,(bc)
	ld e,a
	or (ix+#2d)
	ld (ix+#2d),a
	ld a,(lc6aa)
	or e
	ld (lc6aa),a
	inc bc
	jp lc147
.lc3da
	inc bc
	res 0,(ix+#2d)
	res 1,(ix+#2d)
	ld a,(bc)
	ld de,#000f
	call lc4bc
	ld de,lc6b7
	add hl,de
	push ix
	ld d,#0f
.lc3f2
	ld a,(hl)
	ld (ix+#16),a
	inc hl
	inc ix
	dec d
	jp nz,lc3f2
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
	jp lc147
.lc423
	inc bc
	ld a,(lc6aa)
	res 2,a
	ld (lc6aa),a
	ld a,(bc)
	ld de,#0006
	call lc4bc
	ld de,lc720
	add hl,de
	ld iy,lc6a0
	ld (iy+#00),#00
	ld (iy+#01),#00
	ld d,#06
.lc445
	ld a,(hl)
	ld (iy+#04),a
	inc hl
	inc iy
	dec d
	jr nz,lc445
	xor a
	ld (lc6ac),a
	inc bc
	ld a,(lc609)
	ld (lc6ad),a
	jp lc147
.lc45d
	push de
	cpl
	ld e,a
	ld d,#09
	ld a,(lc609)
.lc465
	dec a
	jp m,lc470
	scf
	rl e
	sla d
	jr lc465
.lc470
	ld a,(lc612)
	or d
	and e
	ld (lc612),a
	pop de
	ret
.lc47a
	ld a,(lc609)
	inc bc
	add a
	ld l,a
	ld h,#00
	ld a,(bc)
	inc bc
	ld de,lc6ae
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	ld hl,lc72c
	call lc4eb
	ld b,h
	ld c,l
	jp lc147
.lc496
	ld a,(lc609)
	add a
	ld l,a
	ld h,#00
	ld de,lc6ae
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	jp lc147
.lc4a7
	inc bc
	call lc4b1
	ld a,(bc)
	inc bc
	ld (hl),a
	jp lc147
.lc4b1
	ld a,(lc609)
	ld l,a
	ld h,#00
	ld de,lc6b4
	add hl,de
	ret
.lc4bc
	ld hl,#0000
	and a
	ret z
	push bc
	ld b,#08
.lc4c4
	srl a
	jr nc,lc4c9
	add hl,de
.lc4c9
	sla e
	rl d
	djnz lc4c4
	pop bc
	ret
.lc4d1
	push af
	ld hl,#0000
	ld a,b
	ld b,#10
.lc4d8
	rl c
	rla
	adc hl,hl
	sbc hl,de
	jr nc,lc4e2
	add hl,de
.lc4e2
	ccf
	djnz lc4d8
	rl c
	rla
	ld b,a
	pop af
	ret
.lc4eb
	push af
	add a
	add l
	ld l,a
	jr nc,lc4f2
	inc h
.lc4f2
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	pop af
	ret
.lc4f8
	ld b,#f7
	ld c,#82
	out (c),c
	ld hl,lc60b
	ld a,#00
	ld d,#0b
.lc505
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
	jr nz,lc505
	ret
.lc52b
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
.lc5eb
	dw lc314,lc332,lc394,lc31d
	dw lc390,lc362,lc3a3,lc3da
	dw lc37c,lc423,lc3c6,lc33d
	dw lc47a,lc496,lc4a7
.lc60b equ $ + 2
.lc60a equ $ + 1
.lc609
	db #02,#01,#00,#00,#00,#00,#00,#00
.lc616 equ $ + 5
.lc613 equ $ + 2
.lc612 equ $ + 1
.lc611
	db #00,#3f,#00,#00,#00,#00,#00,#00
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
.lc6a0 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.lc6a1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lc6ae equ $ + 5
.lc6ad equ $ + 4
.lc6ac equ $ + 3
.lc6ab equ $ + 2
.lc6aa equ $ + 1
	db #00,#00,#00,#00,#00,#59,#c8,#da
.lc6b7 equ $ + 6
.lc6b4 equ $ + 3
	db #c8,#51,#c9,#00,#0c,#18,#07,#00
	db #00,#00,#00,#fe,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#0a,#00,#00
	db #00,#00,#ff,#00,#00,#00,#00,#03
	db #00,#00,#00,#00,#03,#0a,#00,#00
	db #00,#fe,#ff,#00,#00,#00,#01,#02
	db #00,#00,#00,#01,#01,#00,#00,#00
	db #04,#fc,#00,#00,#00,#01,#01,#00
	db #00,#00,#01,#01,#01,#01,#00,#04
	db #fc,#03,#fd,#00,#01,#01,#01,#01
	db #00,#01,#01,#14,#01,#00,#00,#f1
	db #00,#00,#00,#03,#01,#00,#00,#00
	db #02,#01,#00,#00,#00,#fe,#01,#00
.lc720 equ $ + 7
	db #00,#00,#02,#01,#00,#00,#00,#0a
	db #00,#00,#00,#01,#00,#1e,#00,#f7
	db #00,#01,#00
.lc72c
	dw lc74a,lc767,lc780,lc7a9
	dw lc7c6,lc7df,lc808,lc851
	dw lc851,lc851,lc851,lc851
	dw lc851,lc851,lc851
.lc74a
	db #87,#01,#81,#01,#80,#0f,#83,#02
	db #3b,#37,#32,#2f,#2b,#26,#37,#1f
	db #26,#32,#3b,#37,#32,#2f,#2b,#26
.lc767 equ $ + 5
	db #37,#1f,#26,#32,#8d,#87,#01,#81
	db #01,#80,#0f,#83,#14,#32,#37,#32
	db #2f,#30,#2d,#29,#2d,#35,#32,#2e
.lc780 equ $ + 6
	db #35,#2b,#28,#24,#24,#8d,#87,#01
	db #81,#01,#80,#0f,#83,#0a,#1f,#21
	db #23,#26,#23,#21,#1f,#26,#1d,#1f
	db #21,#24,#21,#1f,#1d,#24,#22,#24
	db #26,#29,#26,#24,#22,#29,#24,#26
.lc7a9 equ $ + 7
	db #28,#2b,#28,#26,#24,#2b,#8d,#87
	db #01,#81,#01,#80,#0f,#83,#02,#3b
	db #37,#32,#2f,#2b,#26,#37,#1f,#26
	db #32,#3b,#37,#32,#2f,#2b,#26,#37
.lc7c6 equ $ + 4
	db #1f,#26,#32,#8d,#87,#03,#81,#01
	db #80,#0f,#83,#14,#32,#37,#32,#2f
	db #30,#2d,#29,#2d,#35,#32,#2e,#35
.lc7df equ $ + 5
	db #2b,#28,#24,#24,#8d,#87,#02,#81
	db #01,#80,#0f,#83,#0a,#1f,#21,#23
	db #26,#23,#21,#1f,#26,#1d,#1f,#21
	db #24,#21,#1f,#1d,#24,#22,#24,#26
	db #29,#26,#24,#22,#29,#24,#26,#28
.lc808 equ $ + 6
	db #2b,#28,#26,#24,#2b,#8d,#87,#01
	db #81,#01,#80,#0e,#83,#05,#1f,#26
	db #24,#23,#21,#1f,#21,#23,#1f,#26
	db #24,#23,#21,#1f,#21,#23,#1d,#24
	db #21,#1d,#1f,#23,#24,#29,#1d,#24
	db #21,#1d,#1f,#23,#24,#29,#29,#28
	db #24,#26,#22,#24,#1f,#22,#29,#28
	db #24,#26,#22,#24,#1f,#22,#24,#26
	db #28,#2b,#2a,#26,#28,#24,#24,#26
.lc851 equ $ + 7
	db #28,#2b,#2a,#26,#28,#24,#8d,#85
	db #64,#8e,#00,#8c,#00,#8c,#03,#8e
	db #fe,#8c,#00,#8c,#03,#8e,#03,#8c
	db #00,#8c,#03,#8e,#05,#8c,#00,#8c
.lc86c equ $ + 2
	db #03,#82,#85,#64,#8e,#00,#8c,#01
	db #8e,#0c,#8c,#01,#8e,#00,#8c,#02
	db #8e,#0c,#8c,#02,#8e,#00,#8c,#02
	db #8e,#18,#8c,#02,#8e,#00,#8c,#02
	db #8e,#00,#8c,#01,#8e,#0c,#8c,#01
	db #8e,#00,#8c,#02,#8e,#0c,#8c,#02
	db #8e,#00,#8c,#02,#8e,#18,#8c,#02
	db #8e,#00,#8c,#02,#8e,#0c,#8c,#04
	db #8e,#18,#8c,#04,#8e,#0c,#8c,#05
	db #8e,#18,#8c,#05,#8e,#0c,#8c,#05
	db #8e,#24,#8c,#05,#8e,#00,#8c,#05
	db #8e,#00,#8c,#06,#8e,#0c,#8c,#06
	db #8e,#18,#8c,#06,#8e,#0c,#8c,#04
	db #8e,#18,#8c,#04,#8e,#0c,#8c,#05
	db #8e,#24,#8c,#06,#8e,#30,#8c,#06
.lc8e3 equ $ + 1
	db #82,#85,#64,#8e,#0c,#8c,#01,#8e
	db #18,#8c,#01,#8e,#0c,#8c,#02,#8e
	db #18,#8c,#02,#8e,#0c,#8c,#02,#8e
	db #24,#8c,#02,#8e,#0c,#8c,#02,#8e
	db #0c,#8c,#01,#8e,#18,#8c,#01,#8e
	db #0c,#8c,#02,#8e,#18,#8c,#02,#8e
	db #0c,#8c,#02,#8e,#24,#8c,#02,#8e
	db #0c,#8c,#02,#8e,#18,#8c,#04,#8e
	db #24,#8c,#04,#8e,#18,#8c,#05,#8e
	db #24,#8c,#05,#8e,#18,#8c,#05,#8e
	db #30,#8c,#05,#8e,#0c,#8c,#05,#8e
	db #0c,#8c,#06,#8e,#18,#8c,#06,#8e
	db #0c,#8c,#06,#8e,#18,#8c,#04,#8e
	db #24,#8c,#04,#8e,#18,#8c,#05,#8e
	db #00,#8c,#06,#8e,#0c,#8c,#06,#82
;
.music_info
	db "RAM (1990)(Topo Soft)(TPM)",0
	db "",0

	read "music_end.asm"
