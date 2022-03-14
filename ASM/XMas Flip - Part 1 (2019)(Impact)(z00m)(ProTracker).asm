
; Music of XMas Flip - Part 1 (2019)(Impact)(z00m)(ProTracker)
; Ripped by Megachur the 12/02/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "XMASFLP1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #8000

	read "music_header.asm"

	call l8050
	ld hl,l891c
	call l805c
.l8009
	ld bc,#bc0c
	out (c),c
	ld bc,#bd30
	out (c),c
	call #bd19
	call l84da
	halt
	halt
	call #bb09
	cp #20
	jp z,l8038
	ld bc,#bc0c
	out (c),c
	ld bc,#bd10
	out (c),c
	call #bd19
	call l84da
	halt
	halt
	jp l8009
.l8038
	call l8050
	ret
.l803c
	nop
.l803d
	push hl
	adc c
.l803f
	ld hl,l803c
	set 7,(hl)
	bit 0,(hl)
	ret z
	pop hl
	ld hl,l8756
	inc (hl)
	ld hl,l871a
	inc (hl)
;
.stop_music
.l8050
;
	xor a
	ld h,a
	ld l,a
	ld (l8764),a
	ld (l8765),hl
	jp l85dc
;
.real_init_music
.l805c
;
	ld (l81c5),hl
	ld (l835d),hl
	push hl
	ld de,#0064
	add hl,de
	ld a,(hl)
	ld (l8569),a
	push hl
	pop ix
	add hl,de
	ld (l803d),hl
	ld e,(ix+#02)
	add hl,de
	inc hl
	ld (l8509),hl
	pop de
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,de
	ld (l8516),hl
	ld hl,#00a9
	add hl,de
	ld (l8356),hl
	ld hl,#0069
	add hl,de
	ld (l81be),hl
	ld hl,l803c
	res 7,(hl)
	ld de,l86ca
	ld bc,l87cd
.l809e
	ld a,(de)
	inc de
	cp #1e
	jr nc,l80aa
	ld h,a
	ld a,(de)
	ld l,a
	inc de
	jr l80b1
.l80aa
	push de
	ld d,#00
	ld e,a
	add hl,de
	add hl,de
	pop de
.l80b1
	ld a,h
	ld (bc),a
	dec bc
	ld a,l
	ld (bc),a
	dec bc
	sub #f0
	jr nz,l809e
	ld hl,l86ff
	ld (hl),a
	ld de,l8700
	ld bc,#006c
	ldir
	inc a
	ld (l8756),a
	ld hl,#f001
	ld (l871a),hl
	ld (l8737),hl
	ld (l8754),hl
	ld hl,l86c6
	ld (l84f3),hl
	ld (l870c),hl
	ld (l8729),hl
	ld (l8746),hl
	ld (l870e),hl
	ld (l872b),hl
	ld (l8748),hl
	ld a,(ix-#57)
	sub #30
	jr c,l80fa
	cp #0a
	jr c,l80fc
.l80fa
	ld a,#06
.l80fc
	ld (l82ac),a
	push af
	cp #04
	ld a,(ix-#01)
	rla
	and #07
	ld hl,l8676
	push de
	ld d,b
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	srl e
	sbc a
	and #a7
	ld (l813d),a
	ex de,hl
	pop bc
	add hl,bc
	ld a,(de)
	add #86
	ld c,a
	adc #86
	sub c
	ld b,a
	push bc
	ld de,l885c
	push de
	ld b,#0c
.l812c
	push bc
	ld c,(hl)
	inc hl
	push hl
	ld b,(hl)
	push de
	ex de,hl
	ld de,#0017
	ld hx,#08
.l8139
	srl b
	rr c
.l813d
	and a
	ld a,c
	adc d
	ld (hl),a
	inc hl
	ld a,b
	adc d
	ld (hl),a
	add hl,de
	dec hx
	jr nz,l8139
	pop de
	inc de
	inc de
	pop hl
	inc hl
	pop bc
	djnz l812c
	pop hl
	pop de
	ld a,e
	cp #92
	jr nz,l815e
	ld a,#fd
	ld (l888a),a
.l815e
	ld a,(de)
	and a
	jr z,l8173
	rra
	push af
	add a
	ld c,a
	add hl,bc
	pop af
	jr nc,l816c
	dec (hl)
	dec (hl)
.l816c
	inc (hl)
	and a
	sbc hl,bc
	inc de
	jr l815e
.l8173
	pop af
	cp #05
	ld hl,#0011
	ld d,h
	ld e,h
	ld a,#17
	jr nc,l8182
	dec l
	ld e,l
	xor a
.l8182
	ld (l8191),a
	ld ix,l876c
	ld c,#10
.l818b
	push hl
	add hl,de
	ex de,hl
	sbc hl,hl
.l8190
	ld a,l
.l8191
	rla
	ld a,h
	adc #00
	ld (ix+#00),a
	inc ix
	add hl,de
	inc c
	ld a,c
	and #0f
	jr nz,l8190
	pop hl
	ld a,e
	cp #77
	jr nz,l81a8
	inc e
.l81a8
	ld a,c
	and a
	jr nz,l818b
	jp l85dc
.l81af
	ld (ix+#08),#00
	call l834e
	ld a,(bc)
	inc bc
	rrca
.l81b9
	add a
.l81ba
	ld e,a
	ld d,#00
.l81be equ $ + 1
	ld hl,l8985
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l81c5 equ $ + 1
	ld hl,l891c
	add hl,de
	ld (ix+#03),l
	ld (ix+#04),h
	jr l8211
.l81d0
	rlca
	rlca
	rlca
	rlca
	ld (ix+#10),a
	jr l8214
.l81d9
	ld (ix+#08),a
	ld (ix-#0c),a
	jr l8214
.l81e1
	dec a
	jr nz,l81eb
	ld a,(bc)
	inc bc
	ld (ix+#05),a
	jr l8214
.l81eb
	call l8332
	jr l8214
.l81f0
	call l834e
	jr l8211
.l81f5
	ld (ix+#08),a
	ld (ix-#0c),a
	call nz,l8332
	ld a,(bc)
	inc bc
	jr l81ba
.l8202
	ld a,(ix+#06)
	ld (l8290),a
	ld l,(ix-#06)
	ld h,(ix-#05)
	ld (l82b2),hl
.l8211
	ld de,#2010
.l8214
	ld a,(bc)
	inc bc
	add e
	jr c,l81af
	add d
	jr z,l8267
	jr c,l81b9
	add e
	jr z,l8246
	jr c,l81d0
	add e
	jr z,l81d9
	jr c,l81e1
	add #60
	jr c,l824c
	add e
	jr c,l81f0
	add d
	jr c,l8241
	add e
	jr c,l81f5
	add a
	ld e,a
	ld hl,#6287
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
	jr l8211
.l8241
	ld (l875a),a
	jr l8214
.l8246
	res 0,(ix+#09)
	jr l8255
.l824c
	ld (ix+#06),a
	set 0,(ix+#09)
	xor a
	di
.l8255
	ld (l8264),sp
	ld sp,ix
	ld h,a
	ld l,a
	push hl
	push hl
	push hl
	push hl
	push hl
	push hl
.l8264 equ $ + 1
	ld sp,#bff4
	ei
.l8267
	ld a,(ix+#05)
	ld (ix+#0f),a
	ret
	res 2,(ix+#09)
	ld a,(bc)
	inc bc
	inc bc
	inc bc
	ld (ix+#0a),a
	ld (ix-#07),a
	ld de,l885c
	ld a,(ix+#06)
	ld (ix+#07),a
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
.l8290 equ $ + 1
	ld a,#31
	ld (ix+#06),a
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	pop hl
	sbc hl,de
	ld (ix+#0d),l
	ld (ix+#0e),h
	ld e,(ix-#06)
	ld d,(ix-#05)
.l82ac equ $ + 1
	ld a,#05
	cp #06
	jr c,l82ba
.l82b2 equ $ + 1
	ld de,#0000
	ld (ix-#06),e
	ld (ix-#05),d
.l82ba
	ld a,(bc)
	inc bc
	ex af,af'
	ld a,(bc)
	inc bc
	and a
	jr z,l82c3
	ex de,hl
.l82c3
	sbc hl,de
	jp p,l82cd
	cpl
	ex af,af'
	neg
	ex af,af'
.l82cd
	ld (ix+#0c),a
	ex af,af'
	ld (ix+#0b),a
	ld (ix-#02),#00
	ret
	set 2,(ix+#09)
	ld a,(bc)
	inc bc
	ld (ix+#0a),a
	and a
	jr nz,l82ec
	ld a,(l82ac)
	cp #07
	sbc a
	inc a
.l82ec
	ld (ix-#07),a
	ld a,(bc)
	inc bc
	ex af,af'
	ld a,(bc)
	inc bc
	jr l82cd
	ld a,(bc)
	inc bc
	ld (ix-#0b),a
	ret
	ld a,(bc)
	inc bc
	ld (ix-#0c),a
	ret
	ld a,(bc)
	inc bc
	ld (ix-#01),a
	ld (ix-#02),a
	ld a,(bc)
	inc bc
	ld (ix+#00),a
	xor a
	ld (ix-#07),a
	ld (ix-#06),a
	ld (ix-#05),a
	ret
	ld a,(bc)
	inc bc
	ld (l85d3),a
	ld (l8759),a
	ld a,(bc)
	inc bc
	ld l,a
	ld a,(bc)
	inc bc
	ld h,a
	ld (l85d6),hl
	ret
	ld a,(bc)
	inc bc
	ld (l8569),a
	ret
.l8332
	ld (ix+#08),e
	ld (l8769),a
	ld a,(bc)
	inc bc
	ld h,a
	ld a,(bc)
	inc bc
	ld l,a
	ld (l876a),hl
	xor a
	ld (ix-#0c),a
	ld (l8759),a
	ld h,a
	ld l,a
	ld (l8757),hl
	ret
.l834e
	add a
	ld e,a
	ld d,#00
	ld (ix-#0c),d
.l8356 equ $ + 1
	ld hl,l89c5
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l835d equ $ + 1
	ld hl,l891c
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	ret
	ld c,l
	add e
	exx
	add d
	ld l,(hl)
	add d
	or #82
	call m,#0282
	add e
	ld c,l
	add e
	ld c,l
	add e
	ld a,(de)
	add e
	inc l
	add e
	ld c,l
	add e
	ld c,l
	add e
	ld c,l
	add e
	ld c,l
	add e
	ld c,l
	add e
	ld c,l
	add e
.l8387
	xor a
	ld (l8766),a
	bit 0,(ix+#15)
	push hl
	jp z,l84b7
	ld (l8401),sp
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	di
	ld sp,hl
	pop de
	ld h,a
	ld a,(ix+#00)
	ld l,a
	add hl,sp
	inc a
	cp d
	jr c,l83ab
	ld a,e
.l83ab
	ld (ix+#00),a
	ld a,(ix+#12)
	add (hl)
	jp p,l83b6
	xor a
.l83b6
	cp #60
	jr c,l83bc
	ld a,#5f
.l83bc
	add a
	ex af,af'
	ld l,(ix+#0f)
	ld h,(ix+#10)
	ld sp,hl
	pop de
	ld h,#00
	ld a,(ix+#01)
	ld b,a
	add a
	add a
	ld l,a
	add hl,sp
	ld sp,hl
	ld a,b
	inc a
	cp d
	jr c,l83d7
	ld a,e
.l83d7
	ld (ix+#01),a
	pop bc
	pop hl
	ld e,(ix+#08)
	ld d,(ix+#09)
	add hl,de
	bit 6,b
	jr z,l83ed
	ld (ix+#08),l
	ld (ix+#09),h
.l83ed
	ex de,hl
	ex af,af'
	ld l,a
	ld h,#00
	ld sp,l885c
	add hl,sp
	ld sp,hl
	pop hl
	add hl,de
	ld e,(ix+#06)
	ld d,(ix+#07)
	add hl,de
.l8401 equ $ + 1
	ld sp,#bff2
	ei
	ex (sp),hl
	xor a
	or (ix+#05)
	jr z,l8449
	dec (ix+#05)
	jr nz,l8449
	ld a,(ix+#16)
	ld (ix+#05),a
	ld l,(ix+#17)
	ld h,(ix+#18)
	ld a,h
	add hl,de
	ld (ix+#06),l
	ld (ix+#07),h
	bit 2,(ix+#15)
	jr nz,l8449
	ld e,(ix+#19)
	ld d,(ix+#1a)
	and a
	jr z,l8434
	ex de,hl
.l8434
	sbc hl,de
	jp m,l8449
	ld a,(ix+#13)
	ld (ix+#12),a
	xor a
	ld (ix+#05),a
	ld (ix+#06),a
	ld (ix+#07),a
.l8449
	ld a,(ix+#02)
	bit 7,c
	jr z,l8463
	bit 6,c
	jr z,l845b
	cp #0f
	jr z,l8463
	inc a
	jr l8460
.l845b
	cp #f1
	jr z,l8463
	dec a
.l8460
	ld (ix+#02),a
.l8463
	ld l,a
	ld a,b
	and #0f
	add l
	jp p,l846c
	xor a
.l846c
	cp #10
	jr c,l8472
	ld a,#0f
.l8472
	or (ix+#1c)
	ld l,a
	ld h,#00
	ld de,l875c
	add hl,de
	ld a,(hl)
	bit 0,c
	jr nz,l8484
	or (ix+#14)
.l8484
	ld (l8766),a
	bit 7,b
	ld a,c
	jr z,l84a5
	rla
	rla
	sra a
	sra a
	sra a
	add (ix+#04)
	bit 5,b
	jr z,l849e
	ld (ix+#04),a
.l849e
	ld hl,l85b2
	add (hl)
	ld (hl),a
	jr l84b3
.l84a5
	rra
	add (ix+#03)
	ld (l875b),a
	bit 5,b
	jr z,l84b3
	ld (ix+#03),a
.l84b3
	ld a,b
	rra
	and #48
.l84b7
	ld hl,l8763
	or (hl)
	rrca
	ld (hl),a
	pop hl
	xor a
	or (ix+#0a)
	ret z
	dec (ix+#0a)
	ret nz
	xor (ix+#15)
	ld (ix+#15),a
	rra
	ld a,(ix+#0b)
	jr c,l84d6
	ld a,(ix+#0c)
.l84d6
	ld (ix+#0a),a
	ret
;
.play_music
.l84da
;
	xor a
	ld (l85b2),a
	ld (l8763),a
	dec a
	ld (l8769),a
	ld hl,l8756
	dec (hl)
	jp nz,l856d
	ld hl,l871a
	dec (hl)
	jr nz,l8540
.l84f3 equ $ + 1
	ld bc,l8a6f
	ld a,(bc)
	and a
	jr nz,l8535
	ld d,a
	ld (l875a),a
	ld hl,(l803d)
	inc hl
	ld a,(hl)
	inc a
	jr nz,l850d
	call l803f
.l8509 equ $ + 1
	ld hl,l89e5
	ld a,(hl)
	inc a
.l850d
	ld (l803d),hl
	dec a
	add a
	ld e,a
	rl d
.l8516 equ $ + 1
	ld hl,l89ee
	add hl,de
	ld de,(l81c5)
	di
	ld (l8532),sp
	ld sp,hl
	pop hl
	add hl,de
	ld b,h
	ld c,l
	pop hl
	add hl,de
	ld (l854b),hl
	pop hl
	add hl,de
	ld (l855f),hl
.l8532 equ $ + 1
	ld sp,#bff6
	ei
.l8535
	ld ix,l870b
	call l8202
	ld (l84f3),bc
.l8540
	ld hl,l8737
	dec (hl)
	jr nz,l8554
	ld ix,l8728
.l854b equ $ + 1
	ld bc,l8ae5
	call l8202
	ld (l854b),bc
.l8554
	ld hl,l8754
	dec (hl)
	jr nz,l8568
	ld ix,l8745
.l855f equ $ + 1
	ld bc,l8b44
	call l8202
	ld (l855f),bc
.l8569 equ $ + 1
.l8568
	ld a,#06
	ld (l8756),a
.l856d
	ld ix,l86ff
	ld hl,(l875c)
	call l8387
	call l8614
	ld (l875c),hl
	ld a,(l8766)
	ld (l8764),a
	ld ix,l871c
	ld hl,(l875e)
	call l8387
	call l8614
	ld (l875e),hl
	ld a,(l8766)
	ld (l8765),a
	ld ix,l8739
	ld hl,(l8760)
	call l8387
	call l8614
	ld (l8760),hl
	ld hl,(l875a)
	ld a,h
	add l
	ld (l8762),a
.l85b2 equ $ + 1
	ld a,#00
	ld e,a
	add a
	sbc a
	ld d,a
	ld hl,(l876a)
	add hl,de
	ld de,(l8757)
	add hl,de
	push de
	call l863b
	pop de
	ld (l8767),hl
	ld hl,l8759
	xor a
	or (hl)
	jr z,l85dc
	dec (hl)
	jr nz,l85dc
.l85d3 equ $ + 1
	ld a,#3e
	ld (hl),a
.l85d6 equ $ + 1
	ld hl,#2121
	add hl,de
	ld (l8757),hl
.l85dc
	ld hl,l875c
	ld de,#c080
	ld c,#00
	ld a,#0d
.l85e6
	ld b,#f4
	out (c),c
	inc c
	ld b,#f6
	out (c),d
	db #ed,#71 ; out (c),0
	dec b
	outi
	ld b,#f6
	out (c),e
	db #ed,#71 ; out (c),0
	cp c
	jr nz,l85e6
	bit 7,(hl)
	ret nz
	ld b,#f4
	out (c),c
	ld b,#f6
	out (c),d
	db #ed,#71 ; out (c),0
	dec b
	outi
	ld b,#f6
	out (c),e
	db #ed,#71 ; out (c),0
	ret
.l8614
	ld b,h
	ld c,l
	add hl,hl
	ld d,h
	ld e,l
	add hl,hl
	ex de,hl
	add hl,de
	ex de,hl
	add hl,hl
	ld a,d
	add l
	jr nc,l8623
	inc h
.l8623
	add c
	ld l,a
	ld a,h
	adc b
	srl a
	rr l
	srl a
	rr l
	srl a
	rr l
	srl a
	rr l
	ld h,a
	ret nc
	inc hl
	ret
.l863b
	ld b,#00
	ld c,h
	ld d,l
	ld e,b
	add hl,hl
	rr b
	ex de,hl
	add hl,de
	ld a,c
	adc b
	rl e
	rl d
	rl b
	add hl,de
	adc b
	ld c,a
	rl e
	rl d
	rl b
	ld a,h
	add e
	ld l,a
	ld a,c
	adc d
	jr nc,l865e
	inc b
.l865e
	srl b
	rra
	rr l
	srl b
	rra
	rr l
	srl b
	rra
	rr l
	srl b
	rra
	rr l
	ld h,a
	ret nc
	inc hl
	ret
.l8676
	db #64,#2a,#65,#00,#01,#0c,#01,#0c
	db #94,#35,#30,#0e,#60,#20,#60,#21
	db #01,#05,#09,#0b,#0d,#0f,#13,#15
	db #19,#25,#3d,#00,#5d,#00,#31,#37
	db #4d,#53,#5f,#71,#82,#8c,#9c,#9e
	db #a0,#a6,#a8,#aa,#ac,#ae,#ae,#00
	db #57,#1f,#23,#25,#29,#2d,#2f,#33
	db #bf,#00,#1d,#21,#23,#27,#2b,#2d
	db #31,#55,#bd,#bf,#00,#1b,#21,#25
	db #29,#2b,#3b,#4d,#5f,#bb,#bd,#bf
.l86ca equ $ + 4
.l86c6
	db #00,#01,#00,#90,#0d,#d8,#69,#70
	db #76,#7d,#85,#8d,#95,#9d,#a8,#b1
	db #bb,#0c,#da,#62,#68,#6d,#75,#7b
	db #83,#8a,#92,#9c,#a4,#af,#b8,#0e
	db #08,#6a,#72,#78,#7e,#86,#90,#96
	db #a0,#aa,#b4,#be,#0f,#c0,#78,#88
	db #80,#90,#98,#a0,#b0,#a8,#e0,#b0
.l8700 equ $ + 2
.l86ff equ $ + 1
	db #e8,#00,#05,#ff,#00,#00,#00,#00
.l870c equ $ + 6
.l870b equ $ + 5
	db #00,#c6,#01,#00,#00,#00,#5d,#8f
.l870e
	db #a9,#8e,#02,#26,#00,#00,#01,#00
.l871c equ $ + 6
.l871a equ $ + 4
	db #00,#00,#00,#00,#02,#f0,#00,#00
	db #fa,#00,#00,#00,#00,#00,#00,#00
.l872b equ $ + 5
.l8729 equ $ + 3
.l8728 equ $ + 2
	db #00,#00,#00,#5d,#8f,#d9,#8e,#02
	db #11,#00,#00,#01,#00,#00,#00,#00
.l8739 equ $ + 3
.l8737 equ $ + 1
	db #00,#02,#f0,#01,#0a,#00,#00,#00
.l8745 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8748 equ $ + 2
.l8746
	db #6a,#8f,#f9,#8e,#0a,#2c,#00,#00
.l8754 equ $ + 6
	db #05,#01,#ff,#ff,#00,#00,#07,#f0
.l875c equ $ + 6
.l875b equ $ + 5
.l875a equ $ + 4
.l8759 equ $ + 3
.l8757 equ $ + 1
.l8756
	db #01,#00,#00,#00,#00,#45,#f1,#01
.l8765 equ $ + 7
.l8764 equ $ + 6
.l8763 equ $ + 5
.l8762 equ $ + 4
.l8760 equ $ + 2
.l875e
	db #25,#03,#a9,#00,#45,#23,#0c,#04
.l876c equ $ + 6
.l876a equ $ + 4
.l8769 equ $ + 3
.l8767 equ $ + 1
.l8766
	db #0d,#00,#00,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#01,#01,#01,#01,#01,#00,#00
	db #00,#00,#01,#01,#01,#01,#01,#01
	db #01,#01,#02,#02,#02,#02,#00,#00
	db #00,#01,#01,#01,#01,#01,#02,#02
	db #02,#02,#02,#03,#03,#03,#00,#00
	db #01,#01,#01,#01,#02,#02,#02,#02
	db #03,#03,#03,#03,#04,#04,#00,#00
	db #01,#01,#01,#02,#02,#02,#03,#03
	db #03,#04,#04,#04,#05,#05,#00,#00
	db #01,#01,#02,#02,#02,#03,#03,#04
.l87cd equ $ + 7
	db #04,#04,#05,#05,#06,#06,#00,#00
	db #01,#01,#02,#02,#03,#03,#04,#04
	db #05,#05,#06,#06,#07,#07,#00,#01
	db #01,#02,#02,#03,#03,#04,#04,#05
	db #05,#06,#06,#07,#07,#08,#00,#01
	db #01,#02,#02,#03,#04,#04,#05,#05
	db #06,#07,#07,#08,#08,#09,#00,#01
	db #01,#02,#03,#03,#04,#05,#05,#06
	db #07,#07,#08,#09,#09,#0a,#00,#01
	db #01,#02,#03,#04,#04,#05,#06,#07
	db #07,#08,#09,#0a,#0a,#0b,#00,#01
	db #02,#02,#03,#04,#05,#06,#06,#07
	db #08,#09,#0a,#0a,#0b,#0c,#00,#01
	db #02,#03,#03,#04,#05,#06,#07,#08
	db #09,#0a,#0a,#0b,#0c,#0d,#00,#01
	db #02,#03,#04,#05,#06,#07,#07,#08
	db #09,#0a,#0b,#0c,#0d,#0e,#00,#01
	db #02,#03,#04,#05,#06,#07,#08,#09
.l885c equ $ + 6
	db #0a,#0b,#0c,#0d,#0e,#0f,#f8,#0e
	db #10,#0e,#60,#0d,#80,#0c,#d8,#0b
	db #28,#0b,#88,#0a,#f0,#09,#60,#09
	db #e0,#08,#58,#08,#e0,#07,#7c,#07
	db #08,#07,#b0,#06,#40,#06,#ec,#05
	db #94,#05,#44,#05,#f8,#04,#b0,#04
.l888a equ $ + 4
	db #70,#04,#2c,#04,#fd,#03,#be,#03
	db #84,#03,#58,#03,#20,#03,#f6,#02
	db #ca,#02,#a2,#02,#7c,#02,#58,#02
	db #38,#02,#16,#02,#f8,#01,#df,#01
	db #c2,#01,#ac,#01,#90,#01,#7b,#01
	db #65,#01,#51,#01,#3e,#01,#2c,#01
	db #1c,#01,#0a,#01,#fc,#00,#ef,#00
	db #e1,#00,#d6,#00,#c8,#00,#bd,#00
	db #b2,#00,#a8,#00,#9f,#00,#96,#00
	db #8e,#00,#85,#00,#7e,#00,#77,#00
	db #70,#00,#6b,#00,#64,#00,#5e,#00
	db #59,#00,#54,#00,#4f,#00,#4b,#00
	db #47,#00,#42,#00,#3f,#00,#3b,#00
	db #38,#00,#35,#00,#32,#00,#2f,#00
	db #2c,#00,#2a,#00,#27,#00,#25,#00
	db #23,#00,#21,#00,#1f,#00,#1d,#00
	db #1c,#00,#1a,#00,#19,#00,#17,#00
	db #16,#00,#15,#00,#13,#00,#12,#00
.l891c equ $ + 6
	db #11,#00,#10,#00,#0f,#00,#50,#72
	db #6f,#54,#72,#61,#63,#6b,#65,#72
	db #20,#33,#2e,#35,#20,#63,#6f,#6d
	db #70,#69,#6c,#61,#74,#69,#6f,#6e
	db #20,#6f,#66,#20,#2e,#57,#68,#69
	db #74,#65,#2e,#58,#6d,#61,#73,#2e
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#62,#79,#20
	db #2e,#7a,#30,#30,#6d,#5e,#54,#43
	db #47,#2e,#31,#31,#2f,#32,#30,#30
	db #33,#2e,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
.l8985 equ $ + 7
	db #20,#01,#06,#08,#00,#d2,#00,#00
	db #00,#77,#05,#8d,#05,#a7,#05,#bd
	db #05,#c3,#05,#dd,#05,#1f,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l89c5 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#41
	db #06,#44,#06,#49,#06,#4e,#06,#52
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l89e5 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #03,#06,#09,#0c,#0f,#12,#15,#ff
.l89ee
	db #02,#01,#66,#01,#d9,#01,#35,#02
	db #99,#02,#f7,#02,#02,#01,#66,#01
	db #53,#03,#35,#02,#99,#02,#b2,#03
	db #02,#01,#66,#01,#0e,#04,#35,#02
	db #99,#02,#6b,#04,#02,#01,#66,#01
	db #c7,#04,#35,#02,#99,#02,#1b,#05
	db #f0,#06,#cf,#b1,#02,#5d,#5d,#d2
	db #76,#d4,#b1,#01,#61,#d3,#5d,#b1
	db #02,#5d,#5d,#d2,#76,#d4,#b1,#01
	db #61,#d3,#5d,#b1,#02,#62,#62,#d2
	db #76,#d4,#b1,#01,#61,#d3,#62,#b1
	db #02,#64,#64,#d2,#76,#d4,#b1,#01
	db #61,#d3,#64,#b1,#02,#62,#62,#d2
	db #76,#d4,#b1,#01,#61,#d3,#62,#b1
	db #02,#62,#62,#d2,#76,#d4,#b1,#01
	db #61,#d3,#62,#b1,#02,#5d,#5d,#d2
.l8a6f equ $ + 1
	db #76,#d4,#b1,#01,#61,#d3,#5d,#b1
	db #02,#5d,#5d,#d2,#76,#d4,#b1,#01
	db #61,#d3,#5d,#00,#f0,#02,#cf,#b1
	db #02,#74,#f1,#0a,#81,#f0,#08,#61
	db #f1,#0a,#81,#f0,#02,#74,#f1,#0a
	db #81,#f0,#08,#61,#f1,#0a,#81,#f0
	db #02,#74,#f2,#0a,#81,#f0,#08,#61
	db #f2,#0a,#b1,#01,#81,#f0,#02,#74
	db #b1,#02,#74,#f2,#0a,#83,#f0,#08
	db #61,#f2,#0a,#83,#f0,#02,#74,#f2
	db #0a,#81,#f0,#08,#61,#f2,#0a,#b1
	db #01,#81,#f0,#02,#74,#b1,#02,#74
	db #f2,#0a,#81,#f0,#08,#61,#f2,#0a
	db #b1,#01,#81,#f0,#02,#74,#b1,#02
.l8ae5 equ $ + 7
	db #74,#f1,#0a,#81,#f0,#08,#61,#f1
	db #0a,#81,#f0,#02,#74,#f1,#0a,#81
	db #f0,#08,#61,#f1,#0a,#81,#00,#f3
	db #0c,#cf,#b1,#07,#79,#ca,#b1,#01
	db #d0,#cf,#7a,#ca,#d0,#cf,#79,#ca
	db #d0,#cf,#78,#ca,#d0,#cf,#01,#b1
	db #02,#79,#01,#ff,#ff,#40,#03,#b1
	db #08,#7a,#07,#43,#b1,#01,#7b,#ca
	db #d0,#cf,#b1,#07,#7c,#ca,#b1,#01
	db #d0,#cf,#7e,#ca,#d0,#cf,#80,#ca
	db #d0,#cf,#b1,#02,#81,#b1,#04,#83
	db #b1,#01,#81,#80,#ca,#d0,#cf,#7e
.l8b44 equ $ + 6
	db #ca,#d0,#cf,#b1,#0a,#7c,#ca,#b1
	db #01,#d0,#cf,#75,#ca,#d0,#cf,#77
	db #ca,#d0,#00,#f0,#06,#cf,#b1,#02
	db #5d,#5d,#d2,#76,#d4,#b1,#01,#61
	db #d3,#5d,#b1,#02,#5d,#5d,#d2,#76
	db #d4,#b1,#01,#61,#d3,#5d,#b1,#02
	db #62,#62,#d2,#76,#d4,#b1,#01,#61
	db #d3,#62,#b1,#02,#62,#62,#d2,#76
	db #d4,#b1,#01,#61,#d3,#62,#b1,#02
	db #5d,#5d,#d2,#76,#d4,#b1,#01,#61
	db #d3,#5d,#b1,#02,#5d,#5d,#d2,#76
	db #d4,#b1,#01,#61,#d3,#5d,#b1,#02
	db #64,#64,#d2,#76,#d4,#b1,#01,#61
	db #d3,#64,#b1,#02,#64,#64,#d2,#76
	db #d4,#b1,#01,#61,#d3,#64,#00,#f0
	db #02,#cf,#b1,#02,#74,#f1,#0a,#81
	db #d4,#61,#d5,#81,#f0,#02,#74,#f1
	db #0a,#81,#d4,#61,#d5,#81,#f0,#02
	db #74,#f2,#0a,#81,#d4,#61,#d5,#b1
	db #01,#81,#d1,#74,#40,#b1,#02,#74
	db #f2,#0a,#81,#d4,#61,#d5,#b1,#01
	db #81,#d1,#74,#40,#b1,#02,#74,#f1
	db #0a,#81,#d4,#61,#d5,#81,#f0,#02
	db #74,#f1,#0a,#81,#d4,#61,#d5,#81
	db #f0,#02,#74,#f2,#0a,#83,#d4,#61
	db #d5,#83,#f0,#02,#74,#f2,#0a,#83
	db #d4,#61,#d5,#83,#00,#f3,#0c,#cf
	db #b1,#03,#79,#ca,#b1,#01,#d0,#cf
	db #b1,#03,#79,#ca,#b1,#01,#d0,#cf
	db #7e,#ca,#d0,#cf,#b1,#04,#7c,#b1
	db #01,#7c,#ca,#d0,#cf,#b1,#03,#75
	db #ca,#b1,#01,#d0,#cf,#b1,#03,#75
	db #ca,#b1,#01,#d0,#cf,#7c,#ca,#d0
	db #cf,#b1,#05,#7a,#ca,#b1,#01,#d0
	db #cf,#b1,#07,#79,#ca,#b1,#01,#d0
	db #cf,#7a,#ca,#d0,#cf,#79,#ca,#d0
	db #cf,#77,#ca,#d0,#cf,#75,#ca,#d0
	db #cf,#b1,#0f,#75,#ca,#b1,#01,#d0
	db #00,#f3,#0c,#cf,#b1,#07,#85,#ca
	db #b1,#01,#d0,#cf,#86,#ca,#d0,#cf
	db #85,#ca,#d0,#cf,#84,#ca,#d0,#cf
	db #01,#b1,#02,#85,#01,#ff,#ff,#40
	db #03,#b1,#07,#86,#07,#ca,#b1,#01
	db #d0,#43,#cf,#87,#ca,#d0,#cf,#b1
	db #07,#88,#ca,#b1,#01,#d0,#cf,#8a
	db #ca,#d0,#cf,#8c,#ca,#d0,#cf,#b1
	db #02,#8d,#b1,#03,#8f,#b1,#01,#8d
	db #8c,#ca,#d0,#cf,#8a,#ca,#d0,#cf
	db #b1,#0b,#88,#ca,#b1,#01,#d0,#cf
	db #81,#ca,#d0,#cf,#83,#ca,#d0,#00
	db #f3,#0c,#cf,#b1,#03,#85,#ca,#b1
	db #01,#d0,#cf,#b1,#03,#85,#ca,#b1
	db #01,#d0,#cf,#8a,#ca,#d0,#cf,#b1
	db #04,#88,#b1,#01,#88,#ca,#d0,#cf
	db #b1,#03,#81,#ca,#b1,#01,#d0,#cf
	db #b1,#03,#81,#ca,#b1,#01,#d0,#cf
	db #88,#ca,#d0,#cf,#b1,#05,#86,#ca
	db #b1,#01,#d0,#cf,#b1,#07,#85,#ca
	db #b1,#01,#d0,#cf,#86,#ca,#d0,#cf
	db #85,#ca,#d0,#cf,#83,#ca,#d0,#cf
	db #81,#ca,#d0,#cf,#b1,#0f,#81,#ca
	db #b1,#01,#d0,#00,#f4,#0e,#cf,#b1
	db #07,#79,#ca,#b1,#01,#d0,#cf,#7a
	db #ca,#d0,#cf,#79,#ca,#d0,#cf,#78
	db #ca,#d0,#cf,#01,#b1,#02,#79,#01
	db #ff,#ff,#03,#b1,#07,#7a,#07,#ca
	db #b1,#01,#d0,#cf,#7b,#ca,#d0,#cf
	db #b1,#07,#7c,#ca,#b1,#01,#d0,#cf
	db #7e,#ca,#d0,#cf,#80,#ca,#d0,#cf
	db #b1,#02,#81,#b1,#03,#83,#b1,#01
	db #81,#80,#ca,#d0,#cf,#7e,#ca,#d0
	db #cf,#b1,#0b,#7c,#ca,#b1,#01,#d0
	db #cf,#75,#ca,#d0,#cf,#77,#ca,#d0
	db #00,#f4,#0e,#cf,#b1,#03,#79,#ca
	db #b1,#01,#d0,#cf,#b1,#03,#79,#ca
	db #b1,#01,#d0,#cf,#7e,#ca,#d0,#cf
	db #b1,#04,#7c,#b1,#01,#7c,#ca,#d0
	db #cf,#b1,#03,#75,#ca,#b1,#01,#d0
	db #cf,#b1,#03,#75,#ca,#b1,#01,#d0
	db #cf,#7c,#ca,#d0,#cf,#b1,#05,#7a
	db #ca,#b1,#01,#d0,#cf,#b1,#07,#79
	db #ca,#b1,#01,#d0,#cf,#7a,#ca,#d0
	db #cf,#79,#ca,#d0,#cf,#77,#ca,#d0
	db #cf,#75,#ca,#d0,#cf,#b1,#0f,#75
	db #ca,#b1,#01,#d0,#00,#f0,#0a,#cf
	db #b1,#07,#6d,#ca,#b1,#01,#d0,#cf
	db #6e,#ca,#d0,#cf,#6d,#ca,#d0,#cf
	db #6c,#ca,#d0,#cf,#b1,#09,#6d,#ca
	db #b1,#01,#d0,#cf,#6f,#ca,#d0,#cf
	db #b1,#07,#70,#ca,#b1,#01,#d0,#cf
	db #72,#ca,#d0,#cf,#74,#ca,#d0,#cf
	db #b1,#02,#75,#b1,#03,#77,#b1,#01
	db #75,#74,#ca,#d0,#cf,#72,#ca,#d0
	db #cf,#b1,#0b,#70,#ca,#b1,#01,#d0
	db #cf,#69,#ca,#d0,#cf,#6b,#ca,#d0
	db #00,#f0,#0a,#cf,#b1,#03,#6d,#ca
	db #b1,#01,#d0,#cf,#b1,#03,#6d,#ca
	db #b1,#01,#d0,#cf,#72,#ca,#d0,#cf
	db #b1,#04,#70,#b1,#01,#70,#ca,#d0
	db #cf,#b1,#03,#69,#ca,#b1,#01,#d0
	db #cf,#b1,#03,#69,#ca,#b1,#01,#d0
	db #cf,#70,#ca,#d0,#cf,#b1,#05,#6e
	db #ca,#b1,#01,#d0,#cf,#b1,#07,#6d
	db #ca,#b1,#01,#d0,#cf,#6e,#ca,#d0
	db #cf,#6d,#ca,#d0,#cf,#6b,#ca,#d0
	db #cf,#69,#ca,#d0,#cf,#b1,#0f,#69
	db #ca,#b1,#01,#d0,#00,#04,#05,#3e
	db #0f,#80,#01,#00,#8f,#00,#03,#00
	db #8d,#80,#04,#00,#8b,#60,#05,#80
	db #8a,#04,#06,#05,#06,#0b,#0f,#b6
	db #00,#01,#cf,#a9,#00,#01,#cf,#83
	db #00,#0d,#4e,#9a,#00,#13,#1e,#00
	db #00,#8b,#1d,#00,#00,#03,#05,#01
	db #0e,#00,#00,#01,#8f,#00,#00,#01
	db #8f,#00,#00,#01,#8e,#00,#00,#81
	db #8e,#00,#00,#00,#01,#8b,#1a,#00
	db #00,#05,#06,#01,#8e,#00,#00,#01
	db #8f,#00,#00,#01,#8f,#00,#00,#01
	db #8f,#00,#00,#01,#8e,#00,#00,#81
	db #8d,#00,#00,#09,#10,#01,#8e,#00
	db #00,#01,#8f,#00,#00,#01,#8f,#00
	db #00,#01,#8f,#00,#00,#01,#8f,#00
	db #00,#01,#8e,#00,#00,#01,#8e,#00
	db #00,#01,#8d,#00,#00,#01,#8d,#00
	db #00,#01,#8d,#00,#00,#01,#8d,#01
	db #00,#01,#8d,#02,#00,#01,#8d,#03
	db #00,#01,#8d,#02,#00,#01,#8d,#01
	db #00,#01,#8d,#00,#00,#07,#08,#01
	db #8e,#00,#00,#01,#8f,#00,#00,#01
	db #8f,#00,#00,#01,#8f,#00,#00,#01
	db #8f,#00,#00,#01,#8e,#00,#00,#01
	db #8e,#00,#00,#01,#8d,#00,#00,#00
	db #01,#00,#00,#03,#00,#04,#07,#00
	db #03,#00,#05,#09,#01,#02,#13,#00
	db #00,#05,#00,#0c,#00,#00

;	 #891c 
;	"ProTracker 3.5 compilation of .White.Xmas.                     by .z00m^TCG.11/2003."

;	 #8030
;	call #84da	; play
;
.init_music		; added by Megachur
;
	ld hl,l891c
	jp real_init_music
;
.music_info
	db "XMas Flip - Part 1 (2019)(Impact)(z00m)",0
	db "ProTracker 3.5 compilation of .White.Xmas.                     by .z00m^TCG.11/2003.",0

	read "music_end.asm"
