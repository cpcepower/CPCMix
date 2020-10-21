; Music of Axys The Last Battle Intro (1991)(CPC Infos)(Gregory Clement)()
; Ripped by Megachur the 06/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AXYSTLBI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #8000
FIRST_THEME				equ 2
LAST_THEME				equ 2

	read "music_header.asm"

.l8000
	jp l801c        ; init
.l8003
	jp l804f        ; stop
	jp l803e
.l8009
	jp l800d
.l800c
	nop
.l800d
	ld ix,l81c7
	ld a,(ix+#09)
;	nop
;	nop
;	nop
;	nop
	ld (l800c),a
	ret
;
.init_music     ; a = 2
.l801c
;
	ld ix,l9081             ; added by Megachur
	cp #03
	ret nc
	or a
	ret z
	ld de,#ffff
	cp #02
	jr nz,l8032
	ld d,(ix+#01)
	ld e,(ix+#00)
	inc ix
	inc ix
.l8032
	ld b,(ix+#01)
	ld c,(ix+#00)
	call l80ad
	jp l803e
.l803e
	ld hl,l8233
	ld de,l8229
	ld bc,#0009
	ldir
	ld hl,l8229
;	jp #bce3	modified by Megachur
	ret
	defs 2,0

;
.stop_music
.l804f
;
	ld hl,l8229
;	call #bce6	modified by Megachur
	defs 3,0
;
	ld c,#3f
	ld a,#07
	jp l8543
;
.real_play_music
;
	push ix
	push iy
	push hl
	push de
	push af
	push bc
	ld iy,l8226
	ld ix,l81c7
	ld a,(iy+#00)
	or a
	call nz,l823f
	ld a,(iy+#01)
	ld ix,l81d7
	or a
	call nz,l823f
	ld ix,l81e7
	ld a,(iy+#02)
	or a
	call nz,l823f
	ld a,(iy+#00)
	or (iy+#01)
	or (iy+#02)
	call z,l804f
	ld a,(l823e)
	dec a
	jr nz,l80a1
	call l8368
	ld a,(l823d)
.l80a1
	ld (l823e),a
	pop bc
	pop af
	pop de
	pop hl
	pop iy
	pop ix
	ret
.l80ad
	ld hl,l8141
	push bc
	push de
	ld de,l81c7
	ld bc,#0010
	ld a,#01
	push hl
	push bc
	ldir
	pop bc
	pop hl
	ld (l81d2),a
	push hl
	push bc
	ld de,l81d7
	ldir
	pop bc
	pop hl
	inc a
	ld (l81e2),a
	ld de,l81e7
	ldir
	inc a
	ld (l81f2),a
	ld a,#01
	ld (l823e),a
	ld iy,l8226
	ld (iy+#00),a
	ld (iy+#01),a
	ld (iy+#02),a
	pop de
	pop bc
	ld hl,(l8220)
	ld ix,l81c7
	ld (ix+#09),e
	ld (ix+#0a),d
	push de
	push bc
	call l8122
	pop bc
	pop de
	push bc
	push de
	ld ix,l81d7
	ld hl,(l8222)
	ld (ix+#09),e
	ld (ix+#0a),d
	call l8122
	pop de
	pop bc
	ld ix,l81e7
	ld hl,(l8224)
	ld (ix+#09),e
	ld (ix+#0a),d
.l8122
	ld a,b
	or c
	jr z,l813a
	push bc
.l8127
	ld a,(hl)
	bit 7,a
	jr z,l8131
	call l8151
	jr l8127
.l8131
	ld a,(hl)
	inc hl
	or a
	jr nz,l8131
	pop bc
	dec bc
	jr l8122
.l813a
	ld (ix+#07),l
	ld (ix+#08),h
	ret
.l8141
	db #00,#00,#01,#00,#01,#03,#01,#00
	db #00,#00,#00,#00,#01,#01,#00,#00
.l8151
	and #07
	dec a
	jr nz,l8163
	ld a,(hl)
	inc hl
	bit 3,a
	ld a,#00
	jr z,l815f
	inc a
.l815f
	ld (ix+#02),a
	ret
.l8163
	dec a
	jr nz,l8178
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
.l8178
	dec a
	jr nz,l8182
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#0d),a
	ret
.l8182
	dec a
	jr nz,l8187
	inc hl
	ret
.l8187
	dec a
	jr nz,l81a1
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
.l81a1
	dec a
	jr nz,l81b2
	ld a,(hl)
	and #3f
	srl a
	srl a
	srl a
	ld (ix+#05),a
	inc hl
	ret
.l81b2
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
	call l852a
	pop ix
	pop hl
	ret
.l81c7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01
.l81d2
	db #00,#00,#00,#00,#00
.l81d7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#02
.l81e2
	db #00,#00,#00,#00,#00
.l81e7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#03
.l81f2
	db #00,#00,#00,#00,#00
.l81f7
	db #08,#08,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l8203
	db #10,#09,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l820f
	db #20,#0a,#04,#00,#00,#00,#00,#00
.l821d equ $ + 6
.l821b equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00
.l8225 equ $ + 7
.l8224 equ $ + 6
.l8222 equ $ + 4
.l8220 equ $ + 2
.l821e
	db #00,#00,#02,#88,#e8,#89,#e5,#8b
.l8226
	db #00,#00,#00
.l8229
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8233 equ $ + 2
	db #00,#00,#00
	db #00,#00,#00,#00,#81,#5c,#80,#00
.l823e equ $ + 2
.l823d equ $ + 1
	db #00,#01,#00	; db #00,#06,#00
.l823f
	ld (l821e),hl
	ld a,(ix+#0c)
	dec a
	jr z,l824c
	ld (ix+#0c),a
	ret
.l824c
	ld a,(ix+#0d)
	ld (ix+#0c),a
	ld a,(ix+#06)
	dec a
	jr z,l825c
	ld (ix+#06),a
	ret
.l825c
	ld h,(ix+#08)
	ld l,(ix+#07)
	ld a,(hl)
	or a
	jr nz,l828e
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
	jr z,l8288
	ld a,(hl)
	or a
	jr nz,l828e
.l8288
	ld b,(ix+#0b)
	jp l8533
.l828e
	cp #80
	jr c,l8298
	call l8151
	ld a,(hl)
	jr l828e
.l8298
	ld de,l82b9
	ld a,(hl)
	and #0f
	add e
	ld e,a
	jr nc,l82a3
	inc d
.l82a3
	ld a,(de)
	ld (ix+#06),a
	ld a,(hl)
	bit 5,a
	jr z,l82c9
	inc hl
	ld (ix+#07),l
	ld (ix+#08),h
	ld b,(ix+#0b)
	jp l850d
.l82b9
	inc bc
	inc b
	add hl,bc
	ld b,#0c
	jr l82c1
.l82c1 equ $ + 1
	ld bc,#0403
	add hl,bc
	add hl,bc
	ld (de),a
	inc h
.l82c9 equ $ + 2
	ld bc,#2301
	bit 6,a
	jr z,l82e5
	ld a,(hl)
	push hl
	push ix
	ld b,(ix+#0b)
	ld c,(ix+#03)
	bit 6,a
	jr z,l82df
	ld c,(ix+#04)
.l82df
	call l84db
	pop ix
	pop hl
.l82e5
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
	call nz,l8335
	ld a,(ix+#02)
	push ix
	call l8458
	pop ix
	ld a,(ix+#05)
	add e
	ld b,a
	ld c,d
	push ix
	call l8427
	pop ix
	ld b,(ix+#0b)
	jp l851e
.l8325
	ld bc,#0402
	ex af,af'
	djnz l834b
	ld b,b
	ld bc,#0402
	ex af,af'
	djnz l8352
	ld bc,#0402
.l8335
	push hl
	ld de,l8325
	ld a,c
	add e
	jr nc,l833e
	inc d
.l833e
	ld e,a
	ld a,b
	ld hl,#00ff
	cp #03
	jr z,l834c
	dec h
	dec a
	jr nz,l834c
.l834b
	inc l
.l834c
	ld a,(de)
	and h
	ld h,a
	ld a,(de)
	xor #ff
.l8352
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
.l8368
	ld iy,l821d
	ld a,#38
	ld (iy+#00),a
	ld ix,l81f7
	call l83a1
	ld ix,l8203
	call l83a1
	ld ix,l820f
	call l83a1
	ld c,(iy+#00)
	ld a,#07
	jp l8543
.l838e
	ld a,(hl)
	and #80
	jr z,l8398
.l8393
	ld a,(hl)
	inc hl
	and #7f
	ret
.l8398
	ld de,#0000
	ld e,(hl)
	or a
	sbc hl,de
	jr l8393
.l83a1
	ld h,(ix+#06)
	ld l,(ix+#05)
	call l838e
	ld c,a
	ld (ix+#06),h
	ld (ix+#05),l
	ld a,(iy+#00)
	jr z,l83c1
	xor (ix+#00)
	ld (iy+#00),a
	ld a,#06
	call l8543
.l83c1
	ld l,(ix+#03)
	ld h,(ix+#04)
	call l838e
	ld (ix+#03),l
	ld (ix+#04),h
	and #0f
	ld h,#00
	ld l,a
	push hl
	pop de
	ld a,(ix+#0b)
	or a
.l83db
	jr z,l83e1
	add hl,de
	dec a
	jr l83db
.l83e1
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
	call l8543
	ld h,(ix+#08)
	ld l,(ix+#07)
	call l838e
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
	call l8543
	pop af
	inc a
	ld c,h
	jp l8543
.l8427
	ld hl,l8440
	ld a,c
	sla a
	add l
	jr nc,l8431
	inc h
.l8431
	ld l,a
	ld a,b
	inc a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
.l8438
	dec a
	ret z
	srl h
	rr l
	jr l8438
.l8440
	db #ee,#0e,#18,#0e,#4d,#0d,#8e,#0c	; à revoir
	db #da,#0b,#2f,#0b,#8f,#0a,#f7
	add hl,bc
	ld l,b
	add hl,bc
	pop hl
	ex af,af'
	ld h,c
	ex af,af'
	jp (hl)
	rlca
.l8458
	ld ix,l821b
	ld (l821b),hl
	ld hl,l84b0
	or a
	jr nz,l8468
	ld hl,l84ab
.l8468
	ld e,#00
	ld a,c
.l846b
	cp #07
	jr c,l8475
	or a
	sbc #07
	inc e
	jr l846b
.l8475
	push af
	add l
	jr nc,l847a
	inc h
.l847a
	ld l,a
	ld d,(hl)
	ld a,b
	or a
	jr nz,l84be
	ld hl,l84b7
	pop af
	add l
	jr nc,l8488
	inc h
.l8488
	ld l,a
	ld a,(hl)
	and (ix+#01)
	jr z,l8495
	and (ix+#00)
	jr nz,l849e
.l8494
	inc d
.l8495
	ld a,d
	cp #0c
	ret c
	inc e
	sbc #0c
	ld d,a
	ret
.l849e
	call l8495
	dec d
	ld a,d
	cp #0c
	ret c
	add #0c
	dec e
	ld d,a
	ret
.l84ab
	inc b
	dec b
	rlca
	add hl,bc
	dec bc
.l84b0
	inc c
	ld c,#10
	ld de,#1513
	rla
.l84b7
	ld bc,#0402
	ex af,af'
	djnz l84dd
	ld b,b
.l84be
	pop af
	ld a,b
	dec a
	jr z,l8494
	dec a
	jr z,l849e
	jr l8495
.l84c8
	add hl,de
	dec b
	jr nz,l84c8
	ret
.l84cd
	ld hl,l81f7
	dec b
	ld de,#000c
	call nz,l84c8
	push hl
	pop ix
	ret
.l84dd equ $ + 2
.l84db
	call l84cd
	ld hl,l8561
	ld de,#0006
	ld b,c
	dec b
	call nz,l84c8
	inc ix
	inc ix
	inc ix
	push ix
	pop de
	ld bc,#0006
	ldir
	ret
.l84f8
	ld (ix+#03),l
	ld (ix+#04),h
	add hl,de
	ld (ix+#05),l
	ld (ix+#06),h
	add hl,de
	ld (ix+#07),l
	ld (ix+#08),h
	ret
.l850d
	call l84cd
	ld de,#0002
	ld hl,l8518
	jr l84f8
.l8518
	add b
	ld bc,#0180
	adc a
.l851e equ $ + 1
	ld bc,#cde5
	call #e184
	ld (ix+#09),l
	ld (ix+#0a),h
	ret
.l852a
	push bc
	call l84cd
	pop bc
	ld (ix+#0b),c
	ret
.l8533
	push bc
	call l850d
	pop bc
	ld c,b
	ld b,#00
	ld hl,l8225
	add hl,bc
	ld a,#00
	ld (hl),a
	ret
.l8543
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
.l8561
	db #c1,#85,#c3,#85,#c5,#85,#c7,#85
	db #c9,#85,#cb,#85,#d4,#85,#d6,#85
	db #d8,#85,#00,#86,#16,#86,#22,#86
	db #24,#86,#3b,#86,#3d,#86,#3f,#86
	db #72,#86,#74,#86,#7d,#86,#94,#86
	db #96,#86,#9e,#86,#b2,#86,#c6,#86
	db #c8,#86,#ce,#86,#d0,#86,#d2,#86
	db #05,#87,#07,#87,#09,#87,#0f,#87
	db #11,#87,#13,#87,#39,#87,#3b,#87
	db #3d,#87,#70,#87,#78,#87,#a1,#87
	db #b8,#87,#bf,#87,#d6,#87,#e5,#87
	db #e7,#87,#e9,#87,#fe,#87,#00,#88
	db #8f,#01,#80,#01,#8f,#01,#8f,#01
	db #80,#01,#90,#91,#90,#8f,#8e,#8d
	db #8e,#8f,#08,#8f,#01,#80,#01,#8f
	db #90,#8f,#8f,#8f,#8e,#8f,#8f,#8f
	db #90,#90,#8f,#8f,#8e,#8e,#8f,#90
	db #90,#90,#8f,#8e,#8e,#8e,#8f,#90
	db #91,#90,#8f,#8e,#8d,#8e,#8f,#90
	db #92,#90,#8f,#8e,#8c,#8e,#07,#8f
	db #8f,#8f,#8f,#8e,#8e,#8d,#8d,#8c
	db #8c,#8b,#8a,#89,#88,#87,#86,#85
	db #84,#83,#82,#81,#01,#85,#87,#89
	db #8b,#8d,#8f,#91,#93,#95,#97,#99
	db #01,#8f,#01,#8f,#8f,#8f,#8f,#8e
	db #8e,#8d,#8d,#8c,#8c,#8b,#8a,#89
	db #88,#87,#86,#85,#84,#83,#82,#81
	db #80,#01,#80,#01,#8f,#01,#8f,#8f
	db #8f,#8f,#8f,#8f,#8f,#8e,#8e,#8e
	db #8d,#8d,#8d,#8c,#8c,#8c,#8b,#8b
	db #8b,#8a,#8a,#8a,#89,#89,#89,#88
	db #88,#88,#87,#87,#87,#86,#86,#86
	db #85,#85,#85,#84,#84,#84,#83,#83
	db #83,#82,#82,#82,#81,#81,#81,#80
	db #01,#80,#01,#90,#91,#90,#8f,#8e
	db #8d,#8e,#8f,#08,#8f,#8f,#8f,#8f
	db #8e,#8e,#8d,#8d,#8c,#8c,#8b,#8a
	db #89,#88,#87,#86,#85,#84,#83,#82
	db #81,#80,#01,#80,#01,#90,#91,#90
	db #8f,#8e,#8d,#8e,#07,#8f,#8f,#8f
	db #8f,#8e,#8d,#8c,#8b,#8a,#89,#88
	db #87,#86,#85,#84,#83,#82,#81,#80
	db #01,#9f,#9f,#9f,#9f,#9f,#9f,#9e
	db #9c,#9a,#98,#96,#94,#92,#90,#8e
	db #8c,#8a,#88,#80,#01,#8f,#01,#86
	db #8a,#8c,#8e,#8f,#01,#80,#01,#8f
	db #01,#8f,#8f,#80,#80,#8f,#8f,#8f
	db #8e,#8e,#8e,#8d,#8d,#8d,#8c,#8c
	db #8c,#8b,#8b,#8b,#8a,#8a,#8a,#89
	db #89,#89,#88,#88,#88,#87,#87,#87
	db #86,#86,#86,#85,#85,#85,#84,#84
	db #84,#83,#83,#83,#82,#82,#82,#81
	db #81,#81,#80,#01,#9f,#01,#8f,#01
	db #8f,#8c,#88,#84,#80,#01,#90,#01
	db #8f,#01,#8f,#8f,#80,#80,#8f,#8f
	db #8f,#8f,#8e,#8e,#8d,#8d,#8c,#8c
	db #8b,#8b,#8a,#8a,#89,#89,#88,#88
	db #87,#87,#86,#86,#85,#85,#84,#84
	db #83,#83,#82,#82,#81,#81,#80,#01
	db #8d,#01,#8f,#01,#8f,#8f,#8f,#8f
	db #8f,#8f,#8f,#8e,#8e,#8e,#8d,#8d
	db #8d,#8c,#8c,#8c,#8b,#8b,#8b,#8a
	db #8a,#8a,#89,#89,#89,#88,#88,#88
	db #87,#87,#87,#86,#86,#86,#85,#85
	db #85,#84,#84,#84,#83,#83,#83,#82
	db #82,#82,#81,#81,#81,#80,#01,#9f
	db #9f,#9f,#9a,#93,#8c,#86,#01,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #8e,#8d,#8c,#8b,#8a,#89,#88,#87
	db #86,#85,#84,#83,#82,#81,#80,#01
	db #8f,#8f,#8f,#8f,#8e,#8e,#8d,#8d
	db #8c,#8c,#8b,#8a,#89,#88,#87,#86
	db #85,#84,#83,#82,#81,#80,#01,#86
	db #91,#9f,#80,#80,#80,#01,#9e,#9c
	db #9b,#99,#98,#96,#95,#93,#92,#90
	db #8f,#8d,#8c,#8a,#89,#87,#86,#84
	db #83,#81,#80,#8f,#01,#8f,#8e,#8c
	db #8a,#88,#86,#85,#84,#83,#82,#81
	db #81,#80,#80,#01,#90,#01,#8f,#01
	db #8f,#8f,#8f,#8f,#8e,#8d,#8c,#8b
	db #8a,#89,#88,#87,#86,#85,#84,#83
	db #82,#81,#80,#80,#01,#87,#01,#8f
	db #01,#82,#99,#82,#83,#05,#85,#51
	db #86,#87,#1a,#89,#84,#35,#00,#55
	db #87,#00,#15,#87,#00,#55,#b7,#00
	db #15,#b7,#00,#55,#86,#00,#15,#86
	db #00,#55,#85,#00,#54,#83,#54,#82
	db #00,#55,#87,#00,#15,#87,#00,#83
	db #06,#55,#b7,#00,#83,#07,#15,#b7
	db #00,#83,#08,#55,#86,#00,#83,#09
	db #15,#86,#00,#83,#0a,#55,#85,#00
	db #83,#0b,#54,#83,#54,#82,#00,#55
	db #83,#00,#55,#c3,#00,#83,#07,#75
	db #00,#75,#00,#75,#00,#75,#00,#75
	db #00,#82,#80,#81,#87,#1f,#9e,#85
	db #b4,#50,#82,#50,#84,#5c,#87,#00
	db #75,#00,#8e,#87,#1c,#74,#54,#c4
	db #00,#15,#c4,#00,#75,#00,#87,#17
	db #8e,#85,#11,#83,#08,#75,#00,#75
	db #00,#75,#00,#55,#86,#00,#55,#86
	db #00,#55,#86,#00,#55,#86,#00,#55
	db #86,#00,#55,#86,#00,#55,#88,#00
	db #55,#88,#00,#55,#89,#00,#55,#89
	db #00,#55,#86,#00,#55,#86,#00,#55
	db #86,#00,#55,#86,#00,#96,#85,#fe
	db #87,#1c,#53,#82,#53,#82,#53,#c2
	db #53,#82,#00,#53,#82,#53,#82,#53
	db #c2,#53,#82,#00,#53,#82,#53,#82
	db #53,#c2,#53,#82,#00,#53,#82,#53
	db #82,#53,#c2,#53,#82,#00,#53,#82
	db #53,#82,#53,#c2,#53,#82,#00,#53
	db #82,#53,#82,#53,#c2,#53,#82,#00
	db #53,#82,#53,#82,#53,#c2,#53,#82
	db #00,#53,#82,#53,#82,#53,#c2,#53
	db #82,#00,#53,#82,#53,#82,#53,#c2
	db #53,#82,#00,#53,#82,#53,#82,#53
	db #c2,#53,#82,#00,#53,#82,#53,#82
	db #53,#c2,#53,#82,#00,#53,#82,#53
	db #82,#53,#c2,#53,#82,#00,#53,#82
	db #53,#82,#53,#c2,#53,#82,#00,#53
	db #82,#53,#82,#53,#c2,#53,#82,#00
	db #53,#82,#53,#82,#53,#c2,#53,#82
	db #00,#53,#82,#53,#82,#53,#c2,#53
	db #82,#00,#53,#84,#53,#84,#53,#c4
	db #53,#84,#00,#53,#84,#53,#84,#53
	db #c4,#53,#84,#00,#53,#84,#53,#84
	db #53,#c4,#53,#84,#00,#53,#84,#53
	db #84,#53,#c4,#53,#84,#00,#53,#85
	db #53,#85,#53,#c5,#53,#85,#00,#53
	db #85,#53,#85,#53,#c5,#53,#85,#00
	db #53,#85,#53,#85,#53,#c5,#53,#85
	db #00,#53,#85,#53,#85,#53,#c5,#53
	db #85,#00,#53,#82,#53,#82,#53,#c2
	db #53,#82,#00,#53,#82,#53,#82,#53
	db #c2,#53,#82,#00,#53,#82,#53,#82
	db #53,#c2,#53,#82,#00,#53,#82,#53
	db #82,#53,#c2,#53,#82,#00,#53,#82
	db #53,#82,#53,#c2,#53,#82,#00,#53
	db #82,#53,#82,#53,#c2,#53,#82,#00
	db #53,#82,#53,#82,#53,#c2,#53,#82
	db #00,#53,#c2,#53,#c2,#53,#c2,#53
	db #c2,#00,#55,#c2,#00,#75,#00,#55
	db #c2,#00,#55,#c2,#00,#00,#53,#82
	db #99,#82,#83,#05,#85,#52,#8e,#87
	db #1f,#89,#84,#75,#00,#54,#87,#54
	db #8a,#00,#54,#8c,#54,#8a,#00,#54
	db #b7,#54,#8a,#00,#54,#8c,#54,#8a
	db #00,#54,#86,#54,#8a,#00,#54,#8c
	db #54,#8a,#00,#54,#85,#54,#8a,#00
	db #54,#83,#54,#82,#00,#54,#87,#54
	db #8a,#00,#54,#8c,#54,#8a,#00,#83
	db #06,#54,#b7,#54,#8a,#00,#83,#07
	db #54,#8c,#54,#8a,#00,#83,#08,#54
	db #86,#54,#8a,#00,#83,#09,#54,#8c
	db #54,#8a,#00,#83,#0a,#54,#85,#54
	db #8a,#00,#83,#0b,#54,#83,#54,#82
	db #00,#87,#1c,#53,#c3,#53,#c7,#53
	db #cb,#53,#cc,#00,#55,#ca,#00,#87
	db #1f,#83,#07,#85,#3d,#9e,#55,#89
	db #00,#96,#55,#c7,#00,#85,#b7,#86
	db #55,#87,#00,#55,#c7,#00,#82,#80
	db #81,#96,#85,#4a,#50,#87,#50,#87
	db #50,#87,#50,#87,#50,#87,#50,#87
	db #50,#87,#50,#87,#00,#9e,#50,#c7
	db #50,#c9,#5c,#cb,#00,#8e,#85,#b9
	db #55,#84,#00,#87,#1f,#55,#c4,#00
	db #15,#c4,#00,#85,#1e,#8e,#55,#84
	db #00,#87,#1c,#9e,#85,#25,#83,#08
	db #75,#00,#75,#00,#75,#00,#75,#00
	db #74,#33,#53,#82,#00,#53,#84,#54
	db #85,#53,#84,#00,#13,#84,#5c,#82
	db #00,#15,#82,#00,#14,#82,#53,#81
	db #53,#82,#00,#55,#84,#00,#15,#84
	db #00,#5c,#85,#53,#84,#00,#13,#84
	db #5c,#85,#00,#53,#85,#53,#84,#54
	db #82,#00,#15,#82,#00,#54,#82,#54
	db #82,#00,#54,#82,#54,#82,#00,#75
	db #00,#75,#00,#75,#00,#75,#00,#75
	db #00,#75,#00,#75,#00,#75,#00,#54
	db #82,#53,#82,#53,#81,#00,#53,#82
	db #53,#82,#53,#81,#53,#82,#00,#13
	db #82,#53,#82,#53,#82,#53,#81,#00
	db #53,#82,#53,#82,#53,#81,#53,#82
	db #00,#54,#82,#53,#82,#53,#81,#00
	db #53,#82,#53,#82,#53,#81,#53,#82
	db #00,#13,#82,#53,#82,#53,#82,#53
	db #81,#00,#53,#82,#53,#82,#53,#81
	db #53,#82,#00,#5c,#84,#53,#82,#00
	db #53,#84,#54,#85,#53,#86,#00,#1c
	db #86,#53,#86,#00,#54,#85,#5b,#84
	db #50,#94,#00,#54,#85,#53,#84,#53
	db #82,#00,#15,#82,#00,#13,#82,#53
	db #81,#53,#82,#53,#84,#00,#13,#84
	db #53,#84,#53,#82,#53,#81,#00,#54
	db #82,#53,#82,#53,#81,#00,#53,#82
	db #53,#82,#53,#81,#53,#82,#00,#13
	db #82,#53,#82,#53,#82,#53,#81,#00
	db #53,#82,#53,#82,#53,#81,#53,#82
	db #00,#54,#82,#53,#82,#53,#81,#00
	db #53,#82,#53,#82,#53,#81,#53,#82
	db #00,#13,#82,#53,#82,#53,#82,#53
	db #a0,#00,#53,#81,#53,#81,#53,#81
	db #53,#81,#00,#55,#82,#00,#75,#00
	db #51,#89,#51,#88,#51,#86,#51,#88
	db #51,#86,#51,#85,#00,#51,#86,#51
	db #85,#51,#84,#51,#85,#51,#84,#51
	db #82,#00,#00,#53,#83,#05,#85,#50
	db #96,#87,#1f,#89,#84,#35,#00,#75
	db #00,#75,#00,#75,#00,#75,#00,#75
	db #00,#75,#00,#75,#00,#75,#00,#75
	db #00,#75,#00,#83,#06,#75,#00,#83
	db #07,#75,#00,#83,#08,#75,#00,#83
	db #09,#75,#00,#83,#0a,#75,#00,#83
	db #0b,#75,#00,#75,#00,#75,#00,#83
	db #07,#75,#00,#75,#00,#75,#00,#75
	db #00,#75,#00,#75,#00,#75,#00,#8e
	db #75,#00,#87,#1a,#85,#1b,#55,#84
	db #00,#75,#00,#87,#1a,#8e,#85,#11
	db #83,#08,#75,#00,#55,#82,#00,#55
	db #82,#00,#55,#82,#00,#55,#82,#00
	db #55,#82,#00,#55,#82,#00,#55,#82
	db #00,#55,#82,#00,#55,#84,#00,#55
	db #84,#00,#55,#85,#00,#55,#85,#00
	db #55,#82,#00,#55,#82,#00,#55,#82
	db #00,#55,#82,#00,#85,#16,#87,#1c
	db #53,#82,#53,#82,#53,#82,#53,#82
	db #00,#53,#82,#53,#82,#53,#82,#53
	db #82,#00,#53,#82,#53,#82,#53,#82
	db #53,#82,#00,#53,#82,#53,#82,#53
	db #82,#53,#82,#00,#53,#82,#53,#82
	db #53,#82,#53,#82,#00,#53,#82,#53
	db #82,#53,#82,#53,#82,#00,#53,#82
	db #53,#82,#53,#82,#53,#82,#00,#53
	db #82,#53,#82,#53,#82,#53,#82,#00
	db #53,#82,#53,#82,#53,#82,#53,#82
	db #00,#53,#82,#53,#82,#53,#82,#53
	db #82,#00,#53,#82,#53,#82,#53,#82
	db #53,#82,#00,#53,#82,#53,#82,#53
	db #82,#53,#82,#00,#53,#82,#53,#82
	db #53,#82,#53,#82,#00,#53,#82,#53
	db #82,#53,#82,#53,#82,#00,#53,#82
	db #53,#82,#53,#82,#53,#82,#00,#53
	db #82,#53,#82,#53,#82,#53,#82,#00
	db #53,#84,#53,#84,#53,#84,#53,#84
	db #00,#53,#84,#53,#84,#53,#84,#53
	db #84,#00,#53,#84,#53,#84,#53,#84
	db #53,#84,#00,#53,#84,#53,#84,#53
	db #84,#53,#84,#00,#53,#85,#53,#85
	db #53,#85,#53,#85,#00,#53,#85,#53
	db #85,#53,#85,#53,#85,#00,#53,#85
	db #53,#85,#53,#85,#53,#85,#00,#53
	db #85,#53,#85,#53,#85,#53,#85,#00
	db #53,#82,#53,#82,#53,#82,#53,#82
	db #00,#53,#82,#53,#82,#53,#82,#53
	db #82,#00,#53,#82,#53,#82,#53,#82
	db #53,#82,#00,#53,#82,#53,#82,#53
	db #82,#53,#82,#00,#53,#82,#53,#82
	db #53,#82,#53,#82,#00,#53,#82,#53
	db #82,#53,#82,#53,#82,#00,#53,#82
	db #53,#82,#53,#82,#53,#82,#00,#53
	db #82,#53,#82,#53,#82,#53,#82,#00
	db #55,#82,#00,#75,#00,#55,#82,#00
	db #55,#82,#00,#00,#c7,#53,#87,#53
	db #87,#53,#86,#00,#53,#c7,#53,#87
	db #53,#87,#53,#86,#00,#53,#c8,#53
	db #88,#53,#88,#53,#87,#00,#53,#c8
	db #53,#88,#53,#88,#53,#87,#00,#53
	db #c9,#53,#89,#53,#89,#53,#86,#00
	db #53,#c9,#53,#89,#53,#89,#53,#86
	db #00,#53,#c9,#53,#89,#53,#89,#53
	db #86,#00,#53,#c9,#53,#86,#53,#c9
	db #53,#86,#00,#53,#c7,#53,#87,#53
	db #87,#53,#86,#00,#53,#c7,#53,#87
	db #53,#87,#53,#86,#00,#53,#c8,#53
	db #88,#53,#88,#44,#49,#53,#00,#00
	db #9a,#8f,#41,#46,#5f,#42,#4f,#55
	db #43,#00,#a8,#8f,#4e,#5f,#41,#46
	db #5f,#4c,#49,#47,#58,#90,#44,#5f
	db #43,#4e,#54,#00,#00,#00,#5e,#90
	db #4c,#49,#47,#5f,#53,#55,#50,#00
	db #65,#90,#43,#4e,#54,#00,#00,#00
	db #00,#00,#73,#90,#4f,#55,#54,#00
	db #00,#00,#00,#00,#74,#90,#4d,#55
	db #53,#31,#00,#00,#00,#00,#81,#90
	db #4d,#55,#53,#32,#00,#00,#00,#00
	db #85,#90,#50,#41,#4c,#31,#00,#00
	db #00,#00,#89,#90,#50,#41,#4c,#32
	db #00,#00,#00,#00,#99,#90,#45,#4e
	db #44,#5f,#59,#00,#00,#00,#a9,#90
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
	db #00,#00,#00,#00,#00,#00,#00
	;xor a
	;call #bc0e
	;ld hl,l9089
	;call l8f53
	;call #bd19
	;ld hl,l9074
	;call l8f6e
	;ld hl,l9089
	;call l8f53
	;ld ix,l9081
	;call l8f69
	;call #bd19
	;.l8f23
	;call l8009
	;ld a,(l800c)
	;or a
	;jr nz,l8f33
	;ld ix,l9085
	;call l8f69
	;.l8f33
	;call l8f7e
	;call #bb1b
	;jr nc,l8f23
	;call l8003
	;ld hl,#2020
	;call l8f53
	;call #bd19
	;ld hl,#5620
	;ld de,#c000
	;ld bc,#1680
	;ldir
	;ret
	;.l8f53
	;xor a
	;.l8f54
	;ld b,(hl)
	;ld c,b
	;push af
	;push hl
	;call #bc32
	;pop hl
	;pop af
	;inc hl
	;inc a
	;cp #10
	;jr nz,l8f54
	;ld bc,#0000
	;jp #bc38
	;.l8f69
	;ld a,#02
	;jp l8000
	;.l8f6e
	;ld b,#bc
	;.l8f70
	;;ld a,(hl)
	;or a
	;ret m
	;out (c),a
	;inc hl
	;inc b
	;ld a,(hl)
	;out (c),a
	;inc hl
	;dec b
	;jr l8f70
	;.l8f7f equ $ + 1
	;.l8f7e
	;ld a,#00
	;ld de,#c280
	;push af
	;call l8f9a
	;pop af
	;push af
	;cpl
	;sub #c1
	;call l8f9a
	;pop af
	;inc a
	;cp #3f
	;jr nz,l8f96
	;xor a
	;.l8f96
	;ld (l8f7f),a
	;ret
	;.l8f9a
	;ld c,a
	;ld b,#3e
	;ld hl,#6ca0
	;ld a,b
	;ld ix,l9073
	;ld (ix+#00),a
	;.l8fa8
	;sub c
	;jp nc,l9058
	;add b
	;push af
	;push bc
	;push de
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;ldi
	;pop de
	;call l9065
	;pop bc
	;pop af
	;jr l905e
	;.l9058
	;push bc
	;ld bc,#0050
	;add hl,bc
	;pop bc
	;.l905e
	;dec (ix+#00)
	;jp nz,l8fa8
	;ret
	;.l9065
	;ld a,d
	;add #08
	;ld d,a
	;ret nc
	;ld a,e
	;add #50
	;ld e,a
	;ld a,d
	;adc #c0
	;ld d,a
	;ret
	;.l9074 equ $ + 1
	;.l9073
	;ld a,#01
	;jr z,l9079
	;ld l,#06
	;.l9079
	;add hl,de
	;rlca
	;ld e,#0c
	;jr nc,l908c
	;nop
	;add b
;
;	#9081
;
	ds 385,0
	
.l9081
	db #18,#00,#1e,#00
.l9085
	db #18,#00,#36,#00
.l9089
	db #00,#01,#05
.l908c
	db #0b,#0e,#17,#1a,#0a,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#03,#06
	db #0f,#10,#19,#1a,#17,#01,#05,#0e
	db #0b,#11,#04,#07,#08
;
;.l8f69
;	ld a,#02
;	jp l8000
;	ld ix,l9081
;	call l8f69
;.l8f23
;	call l8009
;	ld a,(l800c)
;	or a
;	jr nz,l8f33
;	ld ix,l9085
;	call l8f69
;.l8f33
;	call #bb1b
;	jr nc,l8f23
;	jp l8003
;
; #8000 init/play !
; #8003 stop
; #8009 play?
;
.play_music	; added by Megachur
;
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	jp real_play_music
;
.music_info
	db "Axys The Last Battle Intro (1991)(CPC Infos)(Gregory Clement)",0
	db "",0

	read "music_end.asm"
