; Music of Moonlight Shadow (1989)(Public Domain)(The Lynx)()
; Ripped by Megachur the 03/01/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MOONLIGS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #5000

	read "music_header.asm"

	jp l501c
	jp l504f
	jp l503e
	jp l500d
.l500c
	db #00
.l500d
	ld ix,l51c7
	ld a,(ix+#09)
	nop
	nop
	nop
	nop
	ld (l500c),a
	ret
.l501c				; init music interrupt
	cp #03
	ret nc
	or a
	ret z
	ld de,#ffff
	cp #02
	jr nz,l5032
	ld d,(ix+#01)
	ld e,(ix+#00)
	inc ix
	inc ix
.l5032
	ld b,(ix+#01)
	ld c,(ix+#00)
	jp l50ad		; call l50ad - modified by Megachur
	jp l503e
.l503e				; set music interrupt
	ld hl,l5233
	ld de,l5229
	ld bc,#0009
	ldir
	ld hl,l5229
	jp #bce3
.l504f				; stop music interrupt
	ld hl,l5229
	nop:nop:nop		; call #bce6 - modified by Megachur
	ld c,#3f
	ld a,#07
	jp l5543
;
.play_music_interrupt
;
	push ix
	push iy
	push hl
	push de
	push af
	push bc
	ld iy,l5226
	ld ix,l51c7
	ld a,(iy+#00)
	or a
	call nz,l523f
	ld a,(iy+#01)
	ld ix,l51d7
	or a
	call nz,l523f
	ld ix,l51e7
	ld a,(iy+#02)
	or a
	call nz,l523f
	ld a,(iy+#00)
	or (iy+#01)
	or (iy+#02)
	call z,l504f		; stop music interrupt
	ld a,(l523e)
	dec a
	jr nz,l50a1
	call l5368
	ld a,(l523d)
.l50a1
	ld (l523e),a
	pop bc
	pop af
	pop de
	pop hl
	pop iy
	pop ix
	ret
.l50ad
	ld hl,l5141
	push bc
	push de
	ld de,l51c7
	ld bc,#0010
	ld a,#01
	push hl
	push bc
	ldir
	pop bc
	pop hl
	ld (l51d2),a
	push hl
	push bc
	ld de,l51d7
	ldir
	pop bc
	pop hl
	inc a
	ld (l51e2),a
	ld de,l51e7
	ldir
	inc a
	ld (l51f2),a
	ld a,#01
	ld (l523e),a
	ld iy,l5226
	ld (iy+#00),a
	ld (iy+#01),a
	ld (iy+#02),a
	pop de
	pop bc
	ld hl,(l5220)
	ld ix,l51c7
	ld (ix+#09),e
	ld (ix+#0a),d
	push de
	push bc
	call l5122
	pop bc
	pop de
	push bc
	push de
	ld ix,l51d7
	ld hl,(l5222)
	ld (ix+#09),e
	ld (ix+#0a),d
	call l5122
	pop de
	pop bc
	ld ix,l51e7
	ld hl,(l5224)
	ld (ix+#09),e
	ld (ix+#0a),d
.l5122
	ld a,b
	or c
	jr z,l513a
	push bc
.l5127
	ld a,(hl)
	bit 7,a
	jr z,l5131
	call l5151
	jr l5127
.l5131
	ld a,(hl)
	inc hl
	or a
	jr nz,l5131
	pop bc
	dec bc
	jr l5122
.l513a
	ld (ix+#07),l
	ld (ix+#08),h
	ret
.l5141
	db #00,#00,#01,#00,#01,#03,#01,#00
	db #00,#00,#00,#00,#01,#01,#00,#00
.l5151
	and #07
	dec a
	jr nz,l5163
	ld a,(hl)
	inc hl
	bit 3,a
	ld a,#00
	jr z,l515f
	inc a
.l515f
	ld (ix+#02),a
	ret
.l5163
	dec a
	jr nz,l5178
	inc hl
	ld a,(hl)
	ld (ix+#00),a
	ld (ix+#0e),a
	inc hl
	ld a,(hl)
	ld (ix+#01),a
	ld (ix+#0f),a
	inc hl
	ret
.l5178
	dec a
	jr nz,l5182
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#0d),a
	ret
.l5182
	dec a
	jr nz,l5187
	inc hl
	ret
.l5187
	dec a
	jr nz,l51a1
	inc hl
	ld a,(hl)
	and #0f
	inc a
	ld (ix+#03),a
	ld a,(hl)
	srl a
	srl a
	srl a
	srl a
	inc a
	ld (ix+#04),a
	inc hl
	ret
.l51a1
	dec a
	jr nz,l51b2
	ld a,(hl)
	and #3f
	srl a
	srl a
	srl a
	ld (ix+#05),a
	inc hl
	ret
.l51b2
	dec a
	inc hl
	ret nz
	ld a,(hl)
	inc hl
	push hl
	push ix
	ld b,(ix+#0b)
	and #0f
	ld c,a
	call l552a
	pop ix
	pop hl
	ret
.l51c7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l51d2 equ $ + 3
	db #00,#00,#01,#00,#00,#00,#00,#00
.l51d7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l51e2 equ $ + 3
	db #00,#00,#02,#00,#00,#00,#00,#00
.l51e7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l51f2 equ $ + 3
	db #00,#00,#03,#00,#00,#00,#00,#00
.l51f7
	db #08,#08,#00,#00,#00,#00,#00,#00
.l5203 equ $ + 4
	db #00,#00,#00,#00,#10,#09,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l520f
	db #20,#0a,#04,#00,#00,#00,#00,#00
.l521e equ $ + 7
.l521d equ $ + 6
.l521b equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l5225 equ $ + 5
.l5224 equ $ + 4
.l5222 equ $ + 2
.l5220
	dw l57cf,l5aa5,l5cfd
.l5229 equ $ + 3
.l5226
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5233 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#81,#5c,#50,#00,#00
.l523e equ $ + 1
.l523d
	ld b,#00
.l523f
	ld (l521e),hl
	ld a,(ix+#0c)
	dec a
	jr z,l524c
	ld (ix+#0c),a
	ret
.l524c
	ld a,(ix+#0d)
	ld (ix+#0c),a
	ld a,(ix+#06)
	dec a
	jr z,l525c
	ld (ix+#06),a
	ret
.l525c
	ld h,(ix+#08)
	ld l,(ix+#07)
	ld a,(hl)
	or a
	jr nz,l528e
	inc hl
	ld d,(ix+#0e)
	ld e,(ix+#0f)
	ld (ix+#00),d
	ld (ix+#01),e
	ld b,(ix+#0a)
	ld c,(ix+#09)
	dec bc
	ld (ix+#09),c
	ld (ix+#0a),b
	ld a,b
	or c
	jr z,l5288
	ld a,(hl)
	or a
	jr nz,l528e
.l5288
	ld b,(ix+#0b)
	jp l5533
.l528e
	cp #80
	jr c,l5298
	call l5151
	ld a,(hl)
	jr l528e
.l5298
	ld de,l52b9
	ld a,(hl)
	and #0f
	add e
	ld e,a
	jr nc,l52a3
	inc d
.l52a3
	ld a,(de)
	ld (ix+#06),a
	ld a,(hl)
	bit 5,a
	jr z,l52c9
	inc hl
	ld (ix+#07),l
	ld (ix+#08),h
	ld b,(ix+#0b)
	jp l550d
.l52b9
	inc bc
	inc b
	add hl,bc
	ld b,#0c
	jr l52c1
.l52c1 equ $ + 1
	ld bc,#0403
	add hl,bc
	add hl,bc
	ld (de),a
	inc h
.l52c9 equ $ + 2
	ld bc,#2301
	bit 6,a
	jr z,l52e5
	ld a,(hl)
	push hl
	push ix
	ld b,(ix+#0b)
	ld c,(ix+#03)
	bit 6,a
	jr z,l52df
	ld c,(ix+#04)
.l52df
	call l54db
	pop ix
	pop hl
.l52e5
	ld a,(hl)
	inc hl
	ld (ix+#07),l
	ld (ix+#08),h
	and #3f
	srl a
	srl a
	srl a
	srl a
	dec hl
	ld b,a
	ld a,(hl)
	and #0f
	ld c,a
	ld h,(ix+#00)
	ld l,(ix+#01)
	ld a,b
	or a
	call nz,l5335
	ld a,(ix+#02)
	push ix
	call l5458
	pop ix
	ld a,(ix+#05)
	add e
	ld b,a
	ld c,d
	push ix
	call l5427
	pop ix
	ld b,(ix+#0b)
	jp l551e
.l5325
	ld bc,#0402
	ex af,af'
	djnz l534b
	ld b,b
	ld bc,#0402
	ex af,af'
	djnz l5352
	ld bc,#0402
.l5335
	push hl
	ld de,l5325
	ld a,c
	add e
	jr nc,l533e
	inc d
.l533e
	ld e,a
	ld a,b
	ld hl,#00ff
	cp #03
	jr z,l534c
	dec h
	dec a
	jr nz,l534c
.l534b
	inc l
.l534c
	ld a,(de)
	and h
	ld h,a
	ld a,(de)
	xor #ff
.l5352
	and (ix+#00)
	or h
	ld (ix+#00),a
	ld a,(de)
	and l
	ld l,a
	ld a,(de)
	xor #ff
	and (ix+#01)
	or l
	ld (ix+#01),a
	pop hl
	ret
.l5368
	ld iy,l521d
	ld a,#38
	ld (iy+#00),a
	ld ix,l51f7
	call l53a1
	ld ix,l5203
	call l53a1
	ld ix,l520f
	call l53a1
	ld c,(iy+#00)
	ld a,#07
	jp l5543
.l538e
	ld a,(hl)
	and #80
	jr z,l5398
.l5393
	ld a,(hl)
	inc hl
	and #7f
	ret
.l5398
	ld de,#0000
	ld e,(hl)
	or a
	sbc hl,de
	jr l5393
.l53a1
	ld h,(ix+#06)
	ld l,(ix+#05)
	call l538e
	ld c,a
	ld (ix+#06),h
	ld (ix+#05),l
	ld a,(iy+#00)
	jr z,l53c1
	xor (ix+#00)
	ld (iy+#00),a
	ld a,#06
	call l5543
.l53c1
	ld l,(ix+#03)
	ld h,(ix+#04)
	call l538e
	ld (ix+#03),l
	ld (ix+#04),h
	and #0f
	ld h,#00
	ld l,a
	push hl
	pop de
	ld a,(ix+#0b)
	or a
.l53db
	jr z,l53e1
	add hl,de
	dec a
	jr l53db
.l53e1
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld c,l
	ld a,(ix+#01)
	call l5543
	ld h,(ix+#08)
	ld l,(ix+#07)
	call l538e
	ld (ix+#08),h
	ld (ix+#07),l
	ld de,#0000
	ld e,a
	ld hl,#0010
	or a
	sbc hl,de
	ld e,(ix+#09)
	ld d,(ix+#0a)
	or a
	add hl,de
	ld c,l
	ld a,(ix+#02)
	push af
	call l5543
	pop af
	inc a
	ld c,h
	jp l5543
.l5427
	ld hl,l5440
	ld a,c
	sla a
	add l
	jr nc,l5431
	inc h
.l5431
	ld l,a
	ld a,b
	inc a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
.l5438
	dec a
	ret z
	srl h
	rr l
	jr l5438
.l5440
	xor #0e
	jr l5452
	ld c,l
	dec c
	adc (hl)
	inc c
	jp c,#2f0b
	dec bc
	adc a
	ld a,(bc)
	rst #30
	add hl,bc
	ld l,b
	add hl,bc
.l5452
	pop hl
	ex af,af'
	ld h,c
	ex af,af'
	jp (hl)
	rlca
.l5458
	ld ix,l521b
	ld (l521b),hl
	ld hl,l54b0
	or a
	jr nz,l5468
	ld hl,l54ab
.l5468
	ld e,#00
	ld a,c
.l546b
	cp #07
	jr c,l5475
	or a
	sbc #07
	inc e
	jr l546b
.l5475
	push af
	add l
	jr nc,l547a
	inc h
.l547a
	ld l,a
	ld d,(hl)
	ld a,b
	or a
	jr nz,l54be
	ld hl,l54b7
	pop af
	add l
	jr nc,l5488
	inc h
.l5488
	ld l,a
	ld a,(hl)
	and (ix+#01)
	jr z,l5495
	and (ix+#00)
	jr nz,l549e
.l5494
	inc d
.l5495
	ld a,d
	cp #0c
	ret c
	inc e
	sbc #0c
	ld d,a
	ret
.l549e
	call l5495
	dec d
	ld a,d
	cp #0c
	ret c
	add #0c
	dec e
	ld d,a
	ret
.l54ab
	inc b
	dec b
	rlca
	add hl,bc
	dec bc
.l54b0
	inc c
	ld c,#10
	ld de,#1513
	rla
.l54b7
	ld bc,#0402
	ex af,af'
	djnz l54dd
	ld b,b
.l54be
	pop af
	ld a,b
	dec a
	jr z,l5494
	dec a
	jr z,l549e
	jr l5495
.l54c8
	add hl,de
	dec b
	jr nz,l54c8
	ret
.l54cd
	ld hl,l51f7
	dec b
	ld de,#000c
	call nz,l54c8
	push hl
	pop ix
	ret
.l54dd equ $ + 2
.l54db
	call l54cd
	ld hl,l5561
	ld de,#0006
	ld b,c
	dec b
	call nz,l54c8
	inc ix
	inc ix
	inc ix
	push ix
	pop de
	ld bc,#0006
	ldir
	ret
.l54f8
	ld (ix+#03),l
	ld (ix+#04),h
	add hl,de
	ld (ix+#05),l
	ld (ix+#06),h
	add hl,de
	ld (ix+#07),l
	ld (ix+#08),h
	ret
.l550d
	call l54cd
	ld de,#0002
	ld hl,l5518
	jr l54f8
.l5518
	add b
	ld bc,#0180
	adc a
.l551e equ $ + 1
	ld bc,#cde5
	call #e154
	ld (ix+#09),l
	ld (ix+#0a),h
	ret
.l552a
	push bc
	call l54cd
	pop bc
	ld (ix+#0b),c
	ret
.l5533
	push bc
	call l550d
	pop bc
	ld c,b
	ld b,#00
	ld hl,l5225
	add hl,bc
	ld a,#00
	ld (hl),a
	ret
.l5543
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
	ret
.l5561
	dw l55c1,l55c3,l55c5,l55c7
	dw l55c9,l55cb,l55d4,l55d6
	dw l55d8,l5600,l5633,l5635
	dw l5637,l564e,l5650,l5652
	dw l5685,l5687,l5690,l56a7
	dw l56a9,l56b1,l56cf,l56d1
	dw l56d3,l56d9,l56db,l56dd
	dw l56fb,l56fd,l5706,l570c
	dw l570e,l5716,l5734,l5736
	dw l575f,l5765,l5767,l5790
	dw l579f,l57a1,l57a3,l57b2
	dw l57b4,l57b6,l57cb,l57cd
.l55c7 equ $ + 6
.l55c5 equ $ + 4
.l55c3 equ $ + 2
.l55c1
	db #8f,#01,#80,#01,#8f,#01,#8f,#01
.l55cb equ $ + 2
.l55c9
	db #80,#01,#90,#91,#90,#8f,#8e,#8d
.l55d8 equ $ + 7
.l55d6 equ $ + 5
.l55d4 equ $ + 3
	db #8e,#8f,#08,#8f,#01,#80,#01,#8f
	db #90,#8f,#8f,#8f,#8e,#8f,#8f,#8f
	db #90,#90,#8f,#8f,#8e,#8e,#8f,#90
	db #90,#90,#8f,#8e,#8e,#8e,#8f,#90
	db #91,#90,#8f,#8e,#8d,#8e,#8f,#90
.l5600 equ $ + 7
	db #92,#90,#8f,#8e,#8c,#8e,#07,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#8e,#8e
	db #8e,#8d,#8d,#8d,#8c,#8c,#8c,#8b
	db #8b,#8b,#8a,#8a,#8a,#89,#89,#89
	db #88,#88,#88,#87,#87,#87,#86,#86
	db #86,#85,#85,#85,#84,#84,#84,#83
	db #83,#83,#82,#82,#82,#81,#81,#81
.l5637 equ $ + 6
.l5635 equ $ + 4
.l5633 equ $ + 2
	db #80,#01,#80,#01,#8f,#01,#8f,#8f
	db #8f,#8f,#8e,#8e,#8d,#8d,#8c,#8c
	db #8b,#8a,#89,#88,#87,#86,#85,#84
.l5650 equ $ + 7
.l564e equ $ + 5
	db #83,#82,#81,#80,#01,#80,#01,#8f
.l5652 equ $ + 1
	db #01,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #8e,#8e,#8e,#8d,#8d,#8d,#8c,#8c
	db #8c,#8b,#8b,#8b,#8a,#8a,#8a,#89
	db #89,#89,#88,#88,#88,#87,#87,#87
	db #86,#86,#86,#85,#85,#85,#84,#84
	db #84,#83,#83,#83,#82,#82,#82,#81
.l5687 equ $ + 6
.l5685 equ $ + 4
	db #81,#81,#80,#01,#80,#01,#90,#91
.l5690 equ $ + 7
	db #90,#8f,#8e,#8d,#8e,#8f,#08,#8f
	db #8f,#8f,#8f,#8e,#8e,#8d,#8d,#8c
	db #8c,#8b,#8a,#89,#88,#87,#86,#85
.l56a7 equ $ + 6
	db #84,#83,#82,#81,#80,#01,#80,#01
.l56a9
	db #90,#91,#90,#8f,#8e,#8d,#8e,#07
.l56b1
	db #81,#81,#82,#82,#83,#83,#84,#84
	db #85,#85,#86,#86,#87,#87,#88,#88
	db #89,#89,#8a,#8a,#8b,#8b,#8c,#8c
.l56cf equ $ + 6
	db #8d,#8d,#8e,#8e,#8f,#01,#80,#01
.l56d3 equ $ + 2
.l56d1
	db #8f,#01,#86,#8a,#8c,#8e,#8f,#01
.l56dd equ $ + 4
.l56db equ $ + 2
.l56d9
	db #80,#01,#8f,#01,#81,#81,#82,#82
	db #83,#83,#84,#84,#85,#85,#86,#86
	db #87,#87,#88,#88,#89,#89,#8a,#8a
	db #8b,#8b,#8c,#8c,#8d,#8d,#8e,#8e
.l56fd equ $ + 4
.l56fb equ $ + 2
	db #8f,#01,#80,#01,#90,#91,#90,#8f
.l5706 equ $ + 5
	db #8e,#8d,#8e,#8f,#08,#86,#8a,#8c
.l570e equ $ + 5
.l570c equ $ + 3
	db #8e,#8f,#01,#80,#01,#90,#91,#90
.l5716 equ $ + 5
	db #8f,#8e,#8d,#8e,#07,#81,#81,#82
	db #82,#83,#83,#84,#84,#85,#85,#86
	db #86,#87,#87,#88,#88,#89,#89,#8a
	db #8a,#8b,#8b,#8c,#8c,#8d,#8d,#8e
.l5736 equ $ + 5
.l5734 equ $ + 3
	db #8e,#8f,#01,#80,#01,#8f,#8e,#8f
	db #8f,#8f,#90,#8f,#8f,#8e,#8e,#8f
	db #8f,#90,#90,#8f,#8f,#8e,#8e,#8e
	db #8f,#90,#90,#90,#8f,#8e,#8d,#8e
	db #8f,#90,#91,#90,#8f,#8e,#8c,#8e
.l575f equ $ + 6
	db #8f,#90,#92,#90,#8f,#08,#86,#8a
.l5767 equ $ + 6
.l5765 equ $ + 4
	db #8c,#8e,#8f,#01,#80,#01,#8f,#90
	db #8f,#8f,#8f,#8e,#8f,#8f,#8f,#90
	db #90,#8f,#8f,#8e,#8e,#8f,#90,#90
	db #90,#8f,#8e,#8e,#8e,#8f,#90,#91
	db #90,#8f,#8e,#8d,#8e,#8f,#90,#92
.l5790 equ $ + 7
	db #90,#8f,#8e,#8c,#8e,#8f,#08,#8f
	db #8e,#8c,#8a,#88,#86,#85,#84,#83
.l579f equ $ + 6
	db #82,#81,#81,#80,#80,#01,#81,#01
.l57a3 equ $ + 2
.l57a1
	db #8f,#01,#8f,#8e,#8c,#8a,#88,#86
	db #85,#84,#83,#82,#81,#81,#80,#80
.l57b6 equ $ + 5
.l57b4 equ $ + 3
.l57b2 equ $ + 1
	db #01,#90,#01,#8f,#01,#8f,#8f,#8f
	db #8f,#8e,#8d,#8c,#8b,#8a,#89,#88
	db #87,#86,#85,#84,#83,#82,#81,#80
.l57cf equ $ + 6
.l57cd equ $ + 4
.l57cb equ $ + 2
	db #80,#01,#87,#01,#8f,#01,#83,#0c
	db #85,#88,#9e,#87,#1f,#89,#84,#35
	db #00,#35,#00,#34,#53,#82,#53,#93
	db #00,#54,#84,#54,#84,#00,#53,#84
	db #53,#85,#53,#84,#53,#93,#00,#55
	db #82,#00,#55,#82,#00,#53,#93,#53
	db #93,#53,#84,#13,#85,#00,#14,#85
	db #53,#84,#53,#85,#00,#54,#86,#54
	db #86,#00,#53,#85,#54,#81,#53,#81
	db #00,#54,#84,#54,#84,#00,#53,#84
	db #53,#85,#53,#84,#53,#93,#00,#55
	db #82,#00,#55,#82,#00,#53,#93,#53
	db #93,#53,#84,#13,#85,#00,#14,#85
	db #53,#84,#53,#85,#00,#54,#86,#54
	db #86,#00,#53,#85,#5c,#81,#00,#54
	db #86,#53,#86,#53,#88,#00,#53,#87
	db #53,#86,#53,#86,#53,#84,#00,#53
	db #85,#53,#85,#53,#86,#13,#85,#00
	db #15,#85,#00,#5c,#86,#53,#85,#00
	db #54,#84,#53,#84,#53,#82,#00,#53
	db #85,#53,#85,#53,#86,#13,#85,#00
	db #14,#85,#53,#84,#53,#85,#00,#54
	db #86,#53,#86,#53,#88,#00,#53,#87
	db #53,#86,#53,#86,#53,#84,#00,#53
	db #85,#53,#93,#53,#82,#13,#81,#00
	db #14,#81,#53,#82,#53,#93,#00,#53
	db #84,#53,#84,#54,#93,#00,#53,#82
	db #53,#93,#54,#84,#00,#15,#85,#00
	db #14,#85,#53,#82,#53,#93,#00,#54
	db #84,#54,#84,#00,#53,#84,#53,#85
	db #53,#84,#53,#93,#00,#55,#82,#00
	db #55,#82,#00,#53,#93,#53,#93,#53
	db #84,#13,#85,#00,#14,#85,#53,#84
	db #53,#85,#00,#54,#86,#54,#86,#00
	db #53,#85,#54,#81,#53,#81,#00,#54
	db #84,#54,#84,#00,#53,#84,#53,#85
	db #53,#84,#53,#93,#00,#55,#82,#00
	db #55,#82,#00,#53,#93,#53,#93,#53
	db #84,#13,#85,#00,#14,#85,#53,#84
	db #53,#85,#00,#54,#86,#54,#86,#00
	db #53,#85,#5c,#81,#00,#54,#86,#53
	db #86,#53,#88,#00,#53,#87,#53,#86
	db #53,#86,#53,#84,#00,#53,#85,#53
	db #85,#53,#86,#13,#85,#00,#15,#85
	db #00,#5c,#86,#53,#85,#00,#54,#84
	db #53,#84,#53,#82,#00,#53,#85,#53
	db #85,#53,#86,#13,#85,#00,#14,#85
	db #53,#84,#53,#85,#00,#54,#86,#53
	db #86,#53,#88,#00,#53,#87,#53,#86
	db #53,#86,#53,#84,#00,#53,#85,#53
	db #93,#53,#82,#13,#81,#00,#14,#81
	db #53,#82,#53,#93,#00,#53,#84,#53
	db #84,#54,#93,#00,#53,#82,#53,#93
	db #54,#84,#00,#15,#85,#00,#14,#85
	db #34,#00,#34,#54,#86,#00,#54,#85
	db #34,#00,#34,#54,#86,#00,#54,#85
	db #53,#84,#53,#85,#00,#5c,#86,#53
	db #88,#00,#53,#87,#13,#86,#14,#86
	db #00,#54,#85,#53,#86,#13,#85,#00
	db #14,#85,#34,#00,#34,#54,#86,#00
	db #54,#85,#34,#00,#34,#54,#86,#00
	db #54,#85,#53,#84,#53,#85,#00,#5c
	db #86,#53,#88,#00,#53,#87,#13,#86
	db #14,#86,#00,#34,#54,#86,#00,#54
	db #85,#34,#00,#15,#85,#00,#14,#85
	db #53,#82,#53,#93,#00,#54,#84,#54
	db #84,#00,#53,#84,#53,#85,#53,#84
	db #53,#93,#00,#55,#82,#00,#55,#82
	db #00,#53,#93,#53,#93,#53,#84,#13
	db #85,#00,#14,#85,#53,#84,#53,#85
	db #00,#54,#86,#54,#86,#00,#53,#85
	db #54,#81,#53,#81,#00,#54,#84,#54
	db #84,#00,#53,#84,#53,#85,#53,#84
	db #53,#93,#00,#55,#82,#00,#55,#82
	db #00,#53,#93,#53,#93,#53,#84,#13
	db #85,#00,#14,#85,#53,#84,#53,#85
	db #00,#54,#86,#54,#86,#00,#53,#85
	db #5c,#81,#00,#54,#86,#53,#86,#53
	db #88,#00,#53,#87,#53,#86,#53,#86
	db #53,#84,#00,#53,#85,#53,#85,#53
	db #86,#13,#85,#00,#15,#85,#00,#5c
	db #86,#53,#85,#00,#54,#84,#53,#84
	db #53,#82,#00,#53,#85,#53,#85,#53
	db #86,#13,#85,#00,#14,#85,#53,#84
	db #53,#85,#00,#54,#86,#53,#86,#53
	db #88,#00,#53,#87,#53,#86,#53,#86
	db #53,#84,#00,#53,#85,#53,#93,#53
	db #82,#13,#81,#00,#14,#81,#53,#82
	db #53,#93,#00,#53,#84,#53,#84,#54
	db #93,#00,#53,#82,#53,#93,#54,#84
	db #00,#15,#84,#00,#87,#1e,#14,#84
.l5aa5 equ $ + 4
	db #34,#00,#00,#00,#83,#0c,#85,#ed
	db #96,#87,#1a,#89,#84,#35,#00,#54
	db #86,#54,#ca,#00,#54,#ca,#54,#ca
	db #00,#54,#86,#54,#ca,#00,#54,#ca
	db #54,#ca,#00,#54,#86,#54,#ca,#00
	db #54,#ca,#54,#ca,#00,#54,#86,#54
	db #ca,#00,#54,#ca,#54,#ca,#00,#54
	db #86,#54,#ca,#00,#54,#ca,#54,#ca
	db #00,#54,#86,#54,#ca,#00,#54,#ca
	db #54,#ca,#00,#54,#86,#54,#ca,#00
	db #54,#ca,#54,#ca,#00,#54,#86,#54
	db #ca,#00,#54,#ca,#54,#ca,#00,#54
	db #86,#54,#ca,#00,#54,#ca,#54,#ca
	db #00,#54,#86,#54,#ca,#00,#54,#ca
	db #54,#ca,#00,#54,#86,#54,#ca,#00
	db #54,#ca,#54,#ca,#00,#54,#86,#54
	db #ca,#00,#54,#ca,#54,#ca,#00,#54
	db #86,#54,#ca,#00,#54,#ca,#54,#ca
	db #00,#54,#86,#54,#ca,#00,#54,#ca
	db #54,#ca,#00,#54,#86,#54,#ca,#00
	db #54,#ca,#54,#ca,#00,#54,#86,#54
	db #ca,#00,#54,#ca,#54,#ca,#00,#54
	db #86,#54,#ca,#00,#54,#ca,#54,#ca
	db #00,#54,#86,#54,#ca,#00,#54,#ca
	db #54,#ca,#00,#54,#86,#54,#ca,#00
	db #54,#ca,#54,#ca,#00,#54,#86,#54
	db #ca,#00,#54,#ca,#54,#ca,#00,#54
	db #86,#54,#ca,#00,#54,#ca,#54,#ca
	db #00,#54,#86,#54,#ca,#00,#54,#ca
	db #54,#ca,#00,#54,#86,#54,#ca,#00
	db #54,#ca,#54,#ca,#00,#54,#86,#54
	db #ca,#00,#54,#ca,#54,#ca,#00,#54
	db #86,#54,#ca,#00,#54,#ca,#54,#ca
	db #00,#54,#86,#54,#ca,#00,#54,#ca
	db #54,#ca,#00,#54,#86,#54,#ca,#00
	db #54,#ca,#54,#ca,#00,#54,#86,#54
	db #ca,#00,#54,#ca,#54,#ca,#00,#54
	db #86,#54,#ca,#00,#54,#ca,#54,#ca
	db #00,#54,#86,#54,#ca,#00,#54,#ca
	db #54,#ca,#00,#54,#86,#54,#ca,#00
	db #54,#ca,#54,#ca,#00,#54,#86,#54
	db #ca,#00,#54,#ca,#54,#ca,#00,#54
	db #86,#54,#ca,#00,#54,#ca,#54,#ca
	db #00,#54,#86,#54,#ca,#00,#54,#ca
	db #54,#ca,#00,#54,#86,#54,#ca,#00
	db #54,#ca,#54,#ca,#00,#54,#86,#54
	db #ca,#00,#54,#ca,#54,#ca,#00,#54
	db #86,#54,#ca,#00,#54,#ca,#54,#ca
	db #00,#54,#86,#54,#ca,#00,#54,#ca
	db #54,#ca,#00,#54,#86,#54,#ca,#00
	db #54,#ca,#54,#ca,#00,#54,#86,#54
	db #ca,#00,#54,#ca,#54,#ca,#00,#54
	db #86,#54,#ca,#00,#54,#86,#54,#ca
	db #00,#54,#ca,#54,#ca,#00,#54,#86
	db #54,#ca,#00,#54,#ca,#54,#ca,#00
	db #54,#86,#54,#ca,#00,#54,#ca,#54
	db #ca,#00,#54,#86,#54,#ca,#00,#54
	db #ca,#54,#ca,#00,#54,#86,#54,#ca
	db #00,#54,#ca,#54,#ca,#00,#54,#86
	db #54,#ca,#00,#54,#ca,#54,#ca,#00
	db #54,#86,#54,#ca,#00,#54,#ca,#54
	db #ca,#00,#54,#86,#54,#ca,#00,#54
	db #ca,#54,#ca,#00,#54,#86,#54,#ca
	db #00,#54,#ca,#54,#ca,#00,#54,#86
	db #54,#ca,#00,#54,#ca,#54,#ca,#00
	db #54,#86,#54,#ca,#00,#54,#ca,#54
	db #ca,#00,#54,#86,#54,#ca,#00,#54
	db #ca,#54,#ca,#00,#54,#86,#54,#ca
	db #00,#54,#ca,#54,#ca,#00,#54,#86
	db #54,#ca,#00,#54,#ca,#54,#ca,#00
	db #54,#86,#54,#ca,#00,#54,#ca,#54
	db #ca,#00,#54,#86,#54,#ca,#00,#54
	db #ca,#54,#ca,#00,#54,#86,#54,#ca
	db #00,#54,#ca,#54,#ca,#00,#54,#86
	db #54,#ca,#00,#54,#ca,#54,#ca,#00
.l5cfd equ $ + 4
	db #35,#00,#00,#00,#83,#14,#85,#10
	db #96,#87,#1f,#89,#84,#35,#00,#00
;
; call &5000,0 ; init & play interrupt
;
;
.init_music		; added by Megachur
;
	call l500d
	ld a,#01
	jp l501c
;
.play_music
;
	call play_music_interrupt
	call play_music_interrupt
	call play_music_interrupt
	call play_music_interrupt
	call play_music_interrupt
	jp play_music_interrupt
;
.music_info
	db "Moonlight Shadow (1989)(Public Domain)(The Lynx)",0
	db "",0

	read "music_end.asm"
