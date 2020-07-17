; Music of Zarxas (1987)(Chip)(Benoit Varasse)()
; Ripped by Megachur the 29/07/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ZARXAS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #8322
FIRST_THEME				equ 1
LAST_THEME				equ 1

	read "music_header.asm"

	jp l833e
	jp l8371
	jp l8360
	jp l832f
.l832e
	db #f2
.l832f
	ld ix,l84e9
	ld a,(ix+#09)
	nop
	nop
	nop
	nop
	ld (l832e),a
	ret
;
.real_init_music
.l833e
;
	cp #03
	ret nc
	or a
	ret z
	ld de,#ffff
	cp #02
	jr nz,l8354
	ld d,(ix+#01)
	ld e,(ix+#00)
	inc ix
	inc ix
.l8354
	ld b,(ix+#01)
	ld c,(ix+#00)
	call l83cf
	jp l8360
.l8360
	ld hl,l8555
	ld de,l854b
	ld bc,#0009
	ldir
	ld hl,l854b
;jp #bce3	modified by Megachur
	defs 2,0
	ret
;
.stop_music
.l8371
;
	ld hl,l854b
	;call #bce6	; modified by Megachur
	defs 3,0
	ld c,#3f
	ld a,#07
	jp l8865
;
.real_play_music
.l837e
;
	push ix
	push iy
	push hl
	push de
	push af
	push bc
	ld iy,l8548
	ld ix,l84e9
	ld a,(iy+#00)
	or a
	call nz,l8561
	ld a,(iy+#01)
	ld ix,l84f9
	or a
	call nz,l8561
	ld ix,l8509
	ld a,(iy+#02)
	or a
	call nz,l8561
	ld a,(iy+#00)
	or (iy+#01)
	or (iy+#02)
	call z,l8371
	ld a,(l8560)
	dec a
	jr nz,l83c3
	call l868a
	ld a,(l855f)
.l83c3
	ld (l8560),a
	pop bc
	pop af
	pop de
	pop hl
	pop iy
	pop ix
	ret
.l83cf
	ld hl,l8463
	push bc
	push de
	ld de,l84e9
	ld bc,#0010
	ld a,#01
	push hl
	push bc
	ldir
	pop bc
	pop hl
	ld (l84f4),a
	push hl
	push bc
	ld de,l84f9
	ldir
	pop bc
	pop hl
	inc a
	ld (l8504),a
	ld de,l8509
	ldir
	inc a
	ld (l8514),a
	ld a,#01
	ld (l8560),a
	ld iy,l8548
	ld (iy+#00),a
	ld (iy+#01),a
	ld (iy+#02),a
	pop de
	pop bc
	ld hl,(l8542)
	ld ix,l84e9
	ld (ix+#09),e
	ld (ix+#0a),d
	push de
	push bc
	call l8444
	pop bc
	pop de
	push bc
	push de
	ld ix,l84f9
	ld hl,(l8544)
	ld (ix+#09),e
	ld (ix+#0a),d
	call l8444
	pop de
	pop bc
	ld ix,l8509
	ld hl,(l8546)
	ld (ix+#09),e
	ld (ix+#0a),d
.l8444
	ld a,b
	or c
	jr z,l845c
	push bc
.l8449
	ld a,(hl)
	bit 7,a
	jr z,l8453
	call l8473
	jr l8449
.l8453
	ld a,(hl)
	inc hl
	or a
	jr nz,l8453
	pop bc
	dec bc
	jr l8444
.l845c
	ld (ix+#07),l
	ld (ix+#08),h
	ret
.l8463
	db #00,#00,#01,#00,#01,#03,#01,#00
	db #00,#00,#00,#00,#01,#01,#00,#00
.l8473
	and #07
	dec a
	jr nz,l8485
	ld a,(hl)
	inc hl
	bit 3,a
	ld a,#00
	jr z,l8481
	inc a
.l8481
	ld (ix+#02),a
	ret
.l8485
	dec a
	jr nz,l849a
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
.l849a
	dec a
	jr nz,l84a4
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#0d),a
	ret
.l84a4
	dec a
	jr nz,l84a9
	inc hl
	ret
.l84a9
	dec a
	jr nz,l84c3
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
.l84c3
	dec a
	jr nz,l84d4
	ld a,(hl)
	and #3f
	srl a
	srl a
	srl a
	ld (ix+#05),a
	inc hl
	ret
.l84d4
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
	call l884c
	pop ix
	pop hl
	ret
.l84e9
	db #84,#81,#01,#05,#05,#02,#01,#ec
.l84f4 equ $ + 3
	db #8b,#cd,#ff,#01,#06,#06,#84,#81
.l84f9
	db #81,#80,#00,#0e,#05,#02,#01,#a1
.l8504 equ $ + 3
	db #8c,#cd,#ff,#02,#06,#06,#81,#80
.l8509
	db #81,#80,#00,#0e,#05,#02,#01,#48
.l8514 equ $ + 3
	db #8d,#cd,#ff,#03,#06,#06,#81,#80
.l8519
	db #08,#08,#00,#3a,#88,#3c,#88,#3e
.l8525 equ $ + 4
	db #88,#a9,#01,#0d,#10,#09,#02,#3a
	db #88,#3c,#88,#3e,#88,#3e,#01,#0f
.l8531
	db #20,#0a,#04,#3a,#88,#3c,#88,#3e
.l853f equ $ + 6
.l853d equ $ + 4
	db #88,#7d,#02,#0f,#80,#81,#08
.l8547 equ $ + 7
.l8546 equ $ + 6
.l8544 equ $ + 4
.l8542 equ $ + 2
.l8540
	dw l8549,l8af1,l8bef,l8ca4
.l854b equ $ + 3
.l8549 equ $ + 1
.l8548
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #81
	dw l837e
.l8555 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#81
	dw l837e
	db #00,#00
.l8560 equ $ + 1
.l855f
	ld b,#05
.l8561
	ld (l8540),hl
	ld a,(ix+#0c)
	dec a
	jr z,l856e
	ld (ix+#0c),a
	ret
.l856e
	ld a,(ix+#0d)
	ld (ix+#0c),a
	ld a,(ix+#06)
	dec a
	jr z,l857e
	ld (ix+#06),a
	ret
.l857e
	ld h,(ix+#08)
	ld l,(ix+#07)
	ld a,(hl)
	or a
	jr nz,l85b0
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
	jr z,l85aa
	ld a,(hl)
	or a
	jr nz,l85b0
.l85aa
	ld b,(ix+#0b)
	jp l8855
.l85b0
	cp #80
	jr c,l85ba
	call l8473
	ld a,(hl)
	jr l85b0
.l85ba
	ld de,l85db
	ld a,(hl)
	and #0f
	add e
	ld e,a
	jr nc,l85c5
	inc d
.l85c5
	ld a,(de)
	ld (ix+#06),a
	ld a,(hl)
	bit 5,a
	jr z,l85eb
	inc hl
	ld (ix+#07),l
	ld (ix+#08),h
	ld b,(ix+#0b)
	jp l882f
.l85db
	inc bc
	inc b
	add hl,bc
	ld b,#0c
	jr l85e3
.l85e3 equ $ + 1
	ld bc,#0403
	add hl,bc
	add hl,bc
	ld (de),a
	inc h
.l85eb equ $ + 2
	ld bc,#2301
	bit 6,a
	jr z,l8607
	ld a,(hl)
	push hl
	push ix
	ld b,(ix+#0b)
	ld c,(ix+#03)
	bit 6,a
	jr z,l8601
	ld c,(ix+#04)
.l8601
	call l87fd
	pop ix
	pop hl
.l8607
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
	call nz,l8657
	ld a,(ix+#02)
	push ix
	call l877a
	pop ix
	ld a,(ix+#05)
	add e
	ld b,a
	ld c,d
	push ix
	call l8749
	pop ix
	ld b,(ix+#0b)
	jp l8840
.l8647
	ld bc,#0402
	ex af,af'
	djnz l866d
	ld b,b
	ld bc,#0402
	ex af,af'
	djnz l8674
	ld bc,#0402
.l8657
	push hl
	ld de,l8647
	ld a,c
	add e
	jr nc,l8660
	inc d
.l8660
	ld e,a
	ld a,b
	ld hl,#00ff
	cp #03
	jr z,l866e
	dec h
	dec a
	jr nz,l866e
.l866d
	inc l
.l866e
	ld a,(de)
	and h
	ld h,a
	ld a,(de)
	xor #ff
.l8674
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
.l868a
	ld iy,l853f
	ld a,#38
	ld (iy+#00),a
	ld ix,l8519
	call l86c3
	ld ix,l8525
	call l86c3
	ld ix,l8531
	call l86c3
	ld c,(iy+#00)
	ld a,#07
	jp l8865
.l86b0
	ld a,(hl)
	and #80
	jr z,l86ba
.l86b5
	ld a,(hl)
	inc hl
	and #7f
	ret
.l86ba
	ld de,#0000
	ld e,(hl)
	or a
	sbc hl,de
	jr l86b5
.l86c3
	ld h,(ix+#06)
	ld l,(ix+#05)
	call l86b0
	ld c,a
	ld (ix+#06),h
	ld (ix+#05),l
	ld a,(iy+#00)
	jr z,l86e3
	xor (ix+#00)
	ld (iy+#00),a
	ld a,#06
	call l8865
.l86e3
	ld l,(ix+#03)
	ld h,(ix+#04)
	call l86b0
	ld (ix+#03),l
	ld (ix+#04),h
	and #0f
	ld h,#00
	ld l,a
	push hl
	pop de
	ld a,(ix+#0b)
	or a
.l86fd
	jr z,l8703
	add hl,de
	dec a
	jr l86fd
.l8703
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
	call l8865
	ld h,(ix+#08)
	ld l,(ix+#07)
	call l86b0
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
	call l8865
	pop af
	inc a
	ld c,h
	jp l8865
.l8749
	ld hl,l8762
	ld a,c
	sla a
	add l
	jr nc,l8753
	inc h
.l8753
	ld l,a
	ld a,b
	inc a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
.l875a
	dec a
	ret z
	srl h
	rr l
	jr l875a
.l8762
	xor #0e
	jr l8774
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
.l8774
	pop hl
	ex af,af'
	ld h,c
	ex af,af'
	jp (hl)
	rlca
.l877a
	ld ix,l853d
	ld (l853d),hl
	ld hl,l87d2
	or a
	jr nz,l878a
	ld hl,l87cd
.l878a
	ld e,#00
	ld a,c
.l878d
	cp #07
	jr c,l8797
	or a
	sbc #07
	inc e
	jr l878d
.l8797
	push af
	add l
	jr nc,l879c
	inc h
.l879c
	ld l,a
	ld d,(hl)
	ld a,b
	or a
	jr nz,l87e0
	ld hl,l87d9
	pop af
	add l
	jr nc,l87aa
	inc h
.l87aa
	ld l,a
	ld a,(hl)
	and (ix+#01)
	jr z,l87b7
	and (ix+#00)
	jr nz,l87c0
.l87b6
	inc d
.l87b7
	ld a,d
	cp #0c
	ret c
	inc e
	sbc #0c
	ld d,a
	ret
.l87c0
	call l87b7
	dec d
	ld a,d
	cp #0c
	ret c
	add #0c
	dec e
	ld d,a
	ret
.l87cd
	inc b
	dec b
	rlca
	add hl,bc
	dec bc
.l87d2
	inc c
	ld c,#10
	ld de,#1513
	rla
.l87d9
	ld bc,#0402
	ex af,af'
	djnz l87ff
	ld b,b
.l87e0
	pop af
	ld a,b
	dec a
	jr z,l87b6
	dec a
	jr z,l87c0
	jr l87b7
.l87ea
	add hl,de
	dec b
	jr nz,l87ea
	ret
.l87ef
	ld hl,l8519
	dec b
	ld de,#000c
	call nz,l87ea
	push hl
	pop ix
	ret
.l87ff equ $ + 2
.l87fd
	call l87ef
	ld hl,l8883
	ld de,#0006
	ld b,c
	dec b
	call nz,l87ea
	inc ix
	inc ix
	inc ix
	push ix
	pop de
	ld bc,#0006
	ldir
	ret
.l881a
	ld (ix+#03),l
	ld (ix+#04),h
	add hl,de
	ld (ix+#05),l
	ld (ix+#06),h
	add hl,de
	ld (ix+#07),l
	ld (ix+#08),h
	ret
.l882f
	call l87ef
	ld de,#0002
	ld hl,l883a
	jr l881a
.l883a
	add b
	ld bc,#0180
	adc a
.l8840 equ $ + 1
	ld bc,#cde5
	rst #28
	add a
	pop hl
	ld (ix+#09),l
	ld (ix+#0a),h
	ret
.l884c
	push bc
	call l87ef
	pop bc
	ld (ix+#0b),c
	ret
.l8855
	push bc
	call l882f
	pop bc
	ld c,b
	ld b,#00
	ld hl,l8547
	add hl,bc
	ld a,#00
	ld (hl),a
	ret
.l8865
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
.l8883
	dw l88e3,l88e5,l88e7,l88e9
	dw l88eb,l88ed,l88f6,l88f8
	dw l88fa,l8922,l8955,l8957
	dw l8959,l8970,l8972,l8974
	dw l89a7,l89a9,l89b2,l89c9
	dw l89cb,l89d3,l89f1,l89f3
	dw l89f5,l89fb,l89fd,l89ff
	dw l8a1d,l8a1f,l8a28,l8a2e
	dw l8a30,l8a38,l8a56,l8a58
	dw l8a81,l8a87,l8a89,l8ab2
	dw l8ac1,l8ac3,l8ac5,l8ad4
	dw l8ad6,l8ad8,l8aed,l8aef
.l88e9 equ $ + 6
.l88e7 equ $ + 4
.l88e5 equ $ + 2
.l88e3
	db #8f,#01,#80,#01,#8f,#01,#8f,#01
.l88ed equ $ + 2
.l88eb
	db #80,#01,#90,#91,#90,#8f,#8e,#8d
.l88fa equ $ + 7
.l88f8 equ $ + 5
.l88f6 equ $ + 3
	db #8e,#8f,#08,#8f,#01,#80,#01,#8f
	db #90,#8f,#8f,#8f,#8e,#8f,#8f,#8f
	db #90,#90,#8f,#8f,#8e,#8e,#8f,#90
	db #90,#90,#8f,#8e,#8e,#8e,#8f,#90
	db #91,#90,#8f,#8e,#8d,#8e,#8f,#90
.l8922 equ $ + 7
	db #92,#90,#8f,#8e,#8c,#8e,#07,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#8e,#8e
	db #8e,#8d,#8d,#8d,#8c,#8c,#8c,#8b
	db #8b,#8b,#8a,#8a,#8a,#89,#89,#89
	db #88,#88,#88,#87,#87,#87,#86,#86
	db #86,#85,#85,#85,#84,#84,#84,#83
	db #83,#83,#82,#82,#82,#81,#81,#81
.l8959 equ $ + 6
.l8957 equ $ + 4
.l8955 equ $ + 2
	db #80,#01,#80,#01,#8f,#01,#8f,#8f
	db #8f,#8f,#8e,#8e,#8d,#8d,#8c,#8c
	db #8b,#8a,#89,#88,#87,#86,#85,#84
.l8972 equ $ + 7
.l8970 equ $ + 5
	db #83,#82,#81,#80,#01,#80,#01,#8f
.l8974 equ $ + 1
	db #01,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #8e,#8e,#8e,#8d,#8d,#8d,#8c,#8c
	db #8c,#8b,#8b,#8b,#8a,#8a,#8a,#89
	db #89,#89,#88,#88,#88,#87,#87,#87
	db #86,#86,#86,#85,#85,#85,#84,#84
	db #84,#83,#83,#83,#82,#82,#82,#81
.l89a9 equ $ + 6
.l89a7 equ $ + 4
	db #81,#81,#80,#01,#80,#01,#90,#91
.l89b2 equ $ + 7
	db #90,#8f,#8e,#8d,#8e,#8f,#08,#8f
	db #8f,#8f,#8f,#8e,#8e,#8d,#8d,#8c
	db #8c,#8b,#8a,#89,#88,#87,#86,#85
.l89c9 equ $ + 6
	db #84,#83,#82,#81,#80,#01,#80,#01
.l89cb
	db #90,#91,#90,#8f,#8e,#8d,#8e,#07
.l89d3
	db #81,#81,#82,#82,#83,#83,#84,#84
	db #85,#85,#86,#86,#87,#87,#88,#88
	db #89,#89,#8a,#8a,#8b,#8b,#8c,#8c
.l89f1 equ $ + 6
	db #8d,#8d,#8e,#8e,#8f,#01,#80,#01
.l89f5 equ $ + 2
.l89f3
	db #8f,#01,#86,#8a,#8c,#8e,#8f,#01
.l89ff equ $ + 4
.l89fd equ $ + 2
.l89fb
	db #80,#01,#8f,#01,#81,#81,#82,#82
	db #83,#83,#84,#84,#85,#85,#86,#86
	db #87,#87,#88,#88,#89,#89,#8a,#8a
	db #8b,#8b,#8c,#8c,#8d,#8d,#8e,#8e
.l8a1f equ $ + 4
.l8a1d equ $ + 2
	db #8f,#01,#80,#01,#90,#91,#90,#8f
.l8a28 equ $ + 5
	db #8e,#8d,#8e,#8f,#08,#86,#8a,#8c
.l8a30 equ $ + 5
.l8a2e equ $ + 3
	db #8e,#8f,#01,#80,#01,#90,#91,#90
.l8a38 equ $ + 5
	db #8f,#8e,#8d,#8e,#07,#81,#81,#82
	db #82,#83,#83,#84,#84,#85,#85,#86
	db #86,#87,#87,#88,#88,#89,#89,#8a
	db #8a,#8b,#8b,#8c,#8c,#8d,#8d,#8e
.l8a58 equ $ + 5
.l8a56 equ $ + 3
	db #8e,#8f,#01,#80,#01,#8f,#8e,#8f
	db #8f,#8f,#90,#8f,#8f,#8e,#8e,#8f
	db #8f,#90,#90,#8f,#8f,#8e,#8e,#8e
	db #8f,#90,#90,#90,#8f,#8e,#8d,#8e
	db #8f,#90,#91,#90,#8f,#8e,#8c,#8e
.l8a81 equ $ + 6
	db #8f,#90,#92,#90,#8f,#08,#86,#8a
.l8a89 equ $ + 6
.l8a87 equ $ + 4
	db #8c,#8e,#8f,#01,#80,#01,#8f,#90
	db #8f,#8f,#8f,#8e,#8f,#8f,#8f,#90
	db #90,#8f,#8f,#8e,#8e,#8f,#90,#90
	db #90,#8f,#8e,#8e,#8e,#8f,#90,#91
	db #90,#8f,#8e,#8d,#8e,#8f,#90,#92
.l8ab2 equ $ + 7
	db #90,#8f,#8e,#8c,#8e,#8f,#08,#8f
	db #8e,#8c,#8a,#88,#86,#85,#84,#83
.l8ac1 equ $ + 6
	db #82,#81,#81,#80,#80,#01,#81,#01
.l8ac5 equ $ + 2
.l8ac3
	db #8f,#01,#8f,#8e,#8c,#8a,#88,#86
	db #85,#84,#83,#82,#81,#81,#80,#80
.l8ad8 equ $ + 5
.l8ad6 equ $ + 3
.l8ad4 equ $ + 1
	db #01,#90,#01,#8f,#01,#8f,#8f,#8f
	db #8f,#8e,#8d,#8c,#8b,#8a,#89,#88
	db #87,#86,#85,#84,#83,#82,#81,#80
.l8af1 equ $ + 6
.l8aef equ $ + 4
.l8aed equ $ + 2
	db #80,#01,#87,#01,#8f,#01,#82,#84
	db #81,#83,#06,#85,#44,#96,#87,#1d
	db #89,#8c,#35,#00,#5d,#88,#00,#54
	db #89,#54,#88,#54,#87,#00,#5d,#86
	db #00,#54,#85,#54,#87,#54,#86,#00
	db #5d,#84,#00,#54,#b3,#54,#87,#54
	db #82,#00,#5d,#81,#00,#1d,#81,#00
	db #5d,#88,#00,#54,#89,#54,#88,#54
	db #87,#00,#5d,#86,#00,#54,#85,#54
	db #87,#54,#86,#00,#5d,#84,#00,#54
	db #b3,#54,#87,#54,#82,#00,#5d,#81
	db #00,#15,#81,#00,#54,#84,#00,#54
	db #88,#54,#88,#54,#88,#00,#54,#88
	db #54,#87,#54,#87,#00,#54,#87,#54
	db #a6,#54,#86,#00,#54,#a6,#5c,#87
	db #53,#86,#00,#5d,#87,#00,#1d,#87
	db #00,#1d,#87,#00,#15,#87,#54,#81
	db #00,#54,#88,#54,#88,#54,#88,#00
	db #54,#88,#54,#87,#54,#87,#00,#54
	db #87,#54,#a6,#54,#86,#00,#54,#a6
	db #5c,#87,#53,#86,#00,#5d,#87,#00
	db #1d,#87,#00,#34,#53,#88,#53,#88
	db #54,#88,#00,#54,#88,#54,#88,#54
	db #88,#00,#5d,#88,#00,#54,#89,#54
	db #88,#54,#87,#00,#5d,#86,#00,#54
	db #85,#54,#87,#54,#86,#00,#5d,#84
	db #00,#54,#b3,#54,#87,#54,#82,#00
	db #5d,#81,#00,#1d,#81,#00,#5d,#88
	db #00,#54,#89,#54,#88,#54,#87,#00
	db #5d,#86,#00,#54,#85,#54,#87,#54
	db #86,#00,#5d,#84,#00,#54,#b3,#54
	db #87,#54,#82,#00,#5d,#81,#00,#15
.l8bef equ $ + 4
	db #81,#00,#00,#00,#82,#81,#80,#83
	db #06,#85,#4d,#96,#87,#1f,#81,#8c
	db #35,#00,#5d,#89,#00,#1d,#89,#00
	db #5d,#89,#00,#1d,#89,#00,#5d,#8b
	db #00,#5d,#8a,#00,#5d,#89,#00,#54
	db #86,#54,#87,#54,#88,#00,#5d,#89
	db #00,#1d,#89,#00,#5d,#89,#00,#1d
	db #89,#00,#5d,#8b,#00,#5d,#8a,#00
	db #5d,#89,#00,#15,#89,#00,#34,#00
	db #5d,#a9,#00,#1d,#89,#00,#5d,#a9
	db #00,#1d,#89,#00,#5d,#89,#00,#54
	db #89,#54,#87,#54,#89,#00,#55,#85
	db #54,#8d,#00,#55,#89,#34,#00,#5d
	db #a9,#00,#1d,#89,#00,#5d,#a9,#00
	db #1d,#89,#00,#1d,#89,#00,#54,#89
	db #54,#8c,#54,#8e,#00,#5d,#88,#00
	db #1d,#88,#00,#5d,#89,#00,#1d,#89
	db #00,#5d,#89,#00,#1d,#89,#00,#5d
	db #8b,#00,#5d,#8a,#00,#5d,#89,#00
	db #54,#86,#54,#87,#54,#88,#00,#5d
	db #89,#00,#1d,#89,#00,#5d,#89,#00
	db #1d,#89,#00,#5d,#8b,#00,#5d,#8a
	db #00,#5d,#89,#00,#15,#89,#00,#00
.l8ca4 equ $ + 1
	db #00,#82,#81,#80,#83,#06,#85,#4d
	db #96,#87,#1f,#81,#8c,#35,#00,#5d
	db #82,#00,#1d,#82,#00,#5d,#82,#00
	db #1d,#82,#00,#5d,#82,#00,#1d,#82
	db #00,#5d,#82,#00,#14,#82,#34,#34
	db #00,#5d,#82,#00,#1d,#82,#00,#5d
	db #82,#00,#1d,#82,#00,#5d,#82,#00
	db #1d,#82,#00,#5d,#82,#00,#15,#82
	db #00,#34,#00,#5d,#82,#00,#5d,#81
	db #00,#5d,#82,#00,#1d,#82,#00,#5d
	db #80,#00,#5d,#82,#00,#5d,#80,#00
	db #55,#80,#34,#00,#5d,#82,#00,#5d
	db #81,#00,#5d,#82,#00,#1d,#82,#00
	db #5d,#83,#00,#5d,#83,#00,#5d,#80
	db #00,#1d,#80,#00,#5d,#82,#00,#1d
	db #82,#00,#5d,#82,#00,#1d,#82,#00
	db #5d,#82,#00,#1d,#82,#00,#5d,#82
	db #00,#14,#82,#34,#34,#00,#5d,#82
	db #00,#1d,#82,#00,#5d,#82,#00,#1d
	db #82,#00,#5d,#82,#00,#1d,#82,#00
	db #5d,#82,#00,#15,#82,#00,#00
;
; music loop - CALL &832B - IF PEEK(&832E)=205 THEN CALL &8322,0
;
.init_music     ; added by Megachur
;
	ld ix,data
	jp real_init_music
data
	db #00,#00
;
.play_music     ; added by Megachur
;
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	jp real_play_music
;
.music_info
	db "Zarxas (1987)(Chip)(Benoit Varasse)",0
	db "",0

	read "music_end.asm"
