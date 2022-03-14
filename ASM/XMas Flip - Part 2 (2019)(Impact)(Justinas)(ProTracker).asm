; Music of XMas Flip - Part 2 (2019)(Impact)(Justinas)(ProTracker)
; Ripped by Megachur the 12/02/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "XMASFLP2.BIN"
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
	nop
	nop
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
	add hl,de
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
	ld a,l
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
	ld hl,#2121
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l81c5 equ $ + 1
	ld hl,#2121
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
	ld sp,#3131
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
	ld a,#3e
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
	ld a,#3e
	cp #06
	jr c,l82ba
.l82b2 equ $ + 1
	ld de,#1111
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
	ld hl,#2121
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l835d equ $ + 1
	ld hl,#2121
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
	ld sp,#3131
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
	ld bc,#0101
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
	ld hl,#2121
	ld a,(hl)
	inc a
.l850d
	ld (l803d),hl
	dec a
	add a
	ld e,a
	rl d
.l8516 equ $ + 1
	ld hl,#2121
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
	ld sp,#3131
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
	ld bc,#0101
	call l8202
	ld (l854b),bc
.l8554
	ld hl,l8754
	dec (hl)
	jr nz,l8568
	ld ix,l8745
.l855f equ $ + 1
	ld bc,#0101
	call l8202
	ld (l855f),bc
.l8569 equ $ + 1
.l8568
	ld a,#3e
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
	ld a,#3e
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
	db #e8,#00,#00,#00,#00,#00,#00,#00
.l870c equ $ + 6
.l870b equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l870e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l871c equ $ + 6
.l871a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l872b equ $ + 5
.l8729 equ $ + 3
.l8728 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8739 equ $ + 3
.l8737 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8745 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8748 equ $ + 2
.l8746
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8754 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l875c equ $ + 6
.l875b equ $ + 5
.l875a equ $ + 4
.l8759 equ $ + 3
.l8757 equ $ + 1
.l8756
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8765 equ $ + 7
.l8764 equ $ + 6
.l8763 equ $ + 5
.l8762 equ $ + 4
.l8760 equ $ + 2
.l875e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l876c equ $ + 6
.l876a equ $ + 4
.l8769 equ $ + 3
.l8767 equ $ + 1
.l8766
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
.l87cd equ $ + 7
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l885c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l888a equ $ + 4
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l891c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#50,#72
	db #6f,#54,#72,#61,#63,#6b,#65,#72
	db #20,#33,#2e,#34,#20,#63,#6f,#6d
	db #70,#69,#6c,#61,#74,#69,#6f,#6e
	db #20,#6f,#66,#20,#48,#41,#50,#50
	db #59,#20,#4e,#45,#57,#20,#59,#45
	db #41,#52,#20,#32,#30,#30,#30,#20
	db #26,#20,#4d,#45,#52,#52,#59,#2d
	db #58,#4d,#41,#53,#20,#62,#79,#20
	db #4a,#55,#53,#54,#49,#4e,#41,#53
	db #2f,#53,#4d,#47,#2f,#43,#54,#4c
	db #27,#39,#39,#2d,#30,#30,#27,#4e
	db #4f,#43,#48,#27,#59,#55,#21,#21
	db #20,#01,#05,#13,#01,#dd,#00,#00
	db #00,#00,#00,#cc,#0a,#00,#00,#76
	db #0b,#7c,#0b,#00,#00,#00,#00,#a6
	db #0b,#00,#00,#00,#00,#00,#00,#a8
	db #0c,#00,#00,#00,#00,#00,#00,#d2
	db #0c,#00,#00,#00,#00,#98,#0d,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#9a
	db #0e,#00,#00,#9d,#0e,#00,#00,#a2
	db #0e,#a7,#0e,#00,#00,#ac,#0e,#00
	db #00,#c1,#0e,#00,#00,#c6,#0e,#d4
	db #0e,#00,#00,#f6,#0e,#18,#0f,#1e
	db #00,#03,#06,#09,#0c,#0f,#06,#09
	db #00,#03,#0c,#0f,#12,#15,#18,#1b
	db #12,#15,#ff,#1f,#01,#82,#01,#f6
	db #01,#7b,#02,#df,#02,#55,#03,#da
	db #03,#3d,#04,#e1,#04,#66,#05,#c9
	db #05,#e1,#04,#1f,#01,#73,#06,#f6
	db #01,#7b,#02,#bb,#06,#55,#03,#05
	db #07,#6a,#07,#1c,#08,#05,#07,#a1
	db #08,#1c,#08,#53,#09,#b8,#09,#1c
	db #08,#53,#09,#19,#0a,#1c,#08,#7d
	db #0a,#b5,#0a,#b9,#0a,#f9,#18,#b1
	db #02,#80,#80,#d5,#b1,#04,#80,#dc
	db #b1,#03,#80,#b1,#01,#80,#d5,#b1
	db #04,#80,#f4,#18,#b1,#02,#7d,#7d
	db #d5,#b1,#04,#7d,#dc,#b1,#03,#7d
	db #b1,#01,#7d,#d5,#b1,#02,#7d,#b1
	db #01,#7d,#7d,#f5,#18,#b1,#02,#79
	db #79,#d5,#b1,#04,#79,#dc,#b1,#03
	db #79,#b1,#01,#79,#d5,#b1,#04,#79
	db #dc,#b1,#02,#7b,#b1,#01,#7b,#7b
	db #d5,#b1,#02,#7b,#b1,#01,#7b,#7b
	db #dc,#7b,#b1,#02,#7b,#b1,#01,#7b
	db #d5,#7b,#7b,#dc,#7b,#d5,#7b,#00
	db #f7,#26,#cf,#b1,#01,#84,#ca,#80
	db #cf,#84,#ca,#80,#cf,#84,#ca,#80
	db #84,#80,#cf,#84,#ca,#80,#cf,#84
	db #ca,#80,#cf,#84,#ca,#80,#84,#80
	db #cf,#84,#ca,#80,#cf,#87,#ca,#84
	db #cf,#80,#ca,#84,#80,#cf,#82,#84
	db #ca,#b1,#02,#80,#b1,#01,#80,#82
	db #84,#85,#87,#cf,#85,#ca,#82,#cf
	db #85,#ca,#82,#cf,#85,#ca,#82,#85
	db #cf,#85,#85,#ca,#82,#cf,#84,#ca
	db #80,#cf,#84,#ca,#80,#84,#cf,#84
	db #84,#ca,#80,#cf,#82,#ca,#7f,#cf
	db #82,#ca,#7f,#cf,#84,#ca,#80,#cf
	db #82,#ca,#7f,#82,#7f,#cf,#87,#ca
	db #82,#87,#82,#00,#f0,#08,#bb,#00
	db #77,#b1,#02,#6f,#bb,#00,#3c,#7b
	db #bb,#00,#77,#6f,#bb,#00,#3c,#7b
	db #bb,#00,#77,#6f,#bb,#00,#3c,#7b
	db #bb,#00,#77,#6f,#bb,#00,#3c,#7b
	db #bb,#00,#8e,#6c,#bb,#00,#47,#78
	db #bb,#00,#8e,#6c,#bb,#00,#47,#78
	db #bb,#00,#8e,#6c,#bb,#00,#47,#78
	db #bb,#00,#8e,#6c,#bb,#00,#47,#78
	db #bb,#00,#b4,#68,#bb,#00,#5a,#74
	db #bb,#00,#b4,#68,#bb,#00,#5a,#74
	db #bb,#00,#b4,#68,#bb,#00,#5a,#74
	db #bb,#00,#b4,#68,#bb,#00,#5a,#74
	db #bb,#00,#b4,#68,#bb,#00,#5a,#74
	db #bb,#00,#b4,#68,#bb,#00,#5a,#74
	db #bb,#00,#a0,#6a,#bb,#00,#50,#76
	db #bb,#00,#a0,#6a,#bb,#00,#50,#76
	db #00,#f9,#18,#b1,#02,#80,#80,#d5
	db #b1,#04,#80,#dc,#b1,#03,#80,#b1
	db #01,#80,#d5,#b1,#04,#80,#f4,#18
	db #b1,#02,#7d,#7d,#d5,#b1,#04,#7d
	db #dc,#b1,#03,#7d,#b1,#01,#7d,#d5
	db #b1,#02,#7d,#b1,#01,#7d,#7d,#f5
	db #18,#b1,#02,#79,#79,#d5,#b1,#04
	db #79,#dc,#b1,#03,#79,#b1,#01,#79
	db #d5,#b1,#04,#79,#dc,#b1,#02,#7b
	db #b1,#01,#7b,#7b,#d5,#b1,#02,#7b
	db #b1,#01,#7b,#7b,#f9,#18,#80,#b1
	db #02,#80,#b1,#01,#80,#d5,#80,#80
	db #dc,#80,#d5,#80,#00,#f7,#26,#cf
	db #b1,#01,#84,#ca,#80,#cf,#84,#ca
	db #80,#cf,#84,#ca,#80,#84,#80,#cf
	db #84,#ca,#80,#cf,#84,#ca,#80,#cf
	db #84,#ca,#80,#84,#80,#cf,#84,#ca
	db #80,#cf,#87,#ca,#84,#cf,#80,#ca
	db #80,#84,#cf,#82,#84,#ca,#80,#b1
	db #02,#84,#b1,#01,#82,#84,#85,#87
	db #cf,#85,#ca,#82,#cf,#85,#ca,#82
	db #cf,#85,#ca,#82,#85,#cf,#87,#85
	db #ca,#82,#cf,#84,#ca,#80,#cf,#84
	db #ca,#80,#84,#cf,#84,#87,#ca,#84
	db #cf,#87,#ca,#84,#cf,#85,#ca,#82
	db #cf,#82,#ca,#7f,#cf,#80,#cc,#7d
	db #80,#cb,#7d,#80,#ca,#7b,#cf,#7b
	db #ca,#7b,#00,#f0,#08,#bb,#00,#77
	db #b1,#02,#6f,#bb,#00,#3c,#7b,#bb
	db #00,#77,#6f,#bb,#00,#3c,#7b,#bb
	db #00,#77,#6f,#bb,#00,#3c,#7b,#bb
	db #00,#77,#6f,#bb,#00,#3c,#7b,#bb
	db #00,#8e,#6c,#bb,#00,#47,#78,#bb
	db #00,#8e,#6c,#bb,#00,#47,#78,#bb
	db #00,#8e,#6c,#bb,#00,#47,#78,#bb
	db #00,#8e,#6c,#bb,#00,#47,#78,#bb
	db #00,#b4,#68,#bb,#00,#5a,#74,#bb
	db #00,#b4,#68,#bb,#00,#5a,#74,#bb
	db #00,#b4,#68,#bb,#00,#5a,#74,#bb
	db #00,#b4,#68,#bb,#00,#5a,#74,#bb
	db #00,#b4,#68,#bb,#00,#5a,#74,#bb
	db #00,#b4,#68,#bb,#00,#5a,#74,#bb
	db #00,#77,#6f,#bb,#00,#3c,#7b,#bb
	db #00,#77,#6f,#bb,#00,#3c,#7b,#00
	db #f9,#18,#b1,#02,#80,#80,#d5,#b1
	db #04,#80,#dc,#b1,#03,#80,#b1,#01
	db #80,#d5,#b1,#04,#80,#f4,#18,#b1
	db #02,#7d,#7d,#d5,#b1,#04,#7d,#dc
	db #b1,#03,#7d,#b1,#01,#7d,#d5,#b1
	db #02,#7d,#b1,#01,#7d,#7d,#f5,#18
	db #b1,#02,#79,#79,#d5,#b1,#04,#79
	db #dc,#b1,#03,#7b,#b1,#01,#7b,#d5
	db #b1,#04,#7b,#dc,#b1,#02,#7b,#b1
	db #01,#7b,#7b,#d5,#b1,#02,#7b,#b1
	db #01,#7b,#7b,#dc,#80,#b1,#02,#80
	db #b1,#01,#80,#d5,#80,#80,#dc,#80
	db #d5,#80,#00,#fc,#10,#cf,#b1,#01
	db #7b,#4f,#cb,#76,#4c,#cf,#84,#4f
	db #cb,#80,#4c,#cf,#82,#4f,#cb,#7f
	db #4c,#cf,#80,#4f,#cb,#7b,#4c,#cf
	db #7b,#4f,#cb,#74,#7b,#78,#7b,#78
	db #4c,#cf,#7b,#4f,#cb,#76,#4c,#cf
	db #7b,#4f,#cb,#74,#4c,#cf,#84,#4f
	db #cb,#80,#4c,#cf,#82,#4f,#cb,#7f
	db #4c,#cf,#80,#4f,#cb,#7b,#4c,#cf
	db #7d,#4f,#cb,#78,#74,#71,#74,#71
	db #4c,#cf,#7d,#4f,#cb,#78,#4c,#cf
	db #7d,#4f,#cb,#78,#4c,#cf,#85,#4f
	db #cb,#82,#4c,#cf,#84,#4f,#cb,#80
	db #4c,#cf,#82,#4f,#cb,#7f,#4c,#cf
	db #7f,#4f,#cb,#7b,#76,#7b,#7f,#7b
	db #4c,#cf,#87,#4f,#cb,#84,#4c,#cf
	db #89,#4f,#cb,#85,#4c,#cf,#87,#4f
	db #cb,#84,#4c,#cf,#85,#4f,#cb,#82
	db #4c,#cf,#82,#4f,#cb,#7f,#4c,#cf
	db #84,#4f,#cb,#80,#80,#84,#87,#8c
	db #4c,#cf,#7b,#4f,#cb,#7b,#00,#f0
	db #08,#bb,#00,#77,#b1,#02,#6f,#bb
	db #00,#3c,#7b,#bb,#00,#77,#6f,#bb
	db #00,#3c,#7b,#bb,#00,#77,#6f,#bb
	db #00,#3c,#7b,#bb,#00,#77,#6f,#bb
	db #00,#3c,#7b,#bb,#00,#8e,#6c,#bb
	db #00,#47,#78,#bb,#00,#8e,#6c,#bb
	db #00,#47,#78,#bb,#00,#8e,#6c,#bb
	db #00,#47,#78,#bb,#00,#8e,#6c,#bb
	db #00,#47,#78,#bb,#00,#b4,#68,#bb
	db #00,#5a,#74,#bb,#00,#b4,#68,#bb
	db #00,#5a,#74,#bb,#00,#a0,#6a,#bb
	db #00,#50,#76,#bb,#00,#a0,#6a,#bb
	db #00,#50,#76,#bb,#00,#a0,#6a,#bb
	db #00,#50,#76,#bb,#00,#a0,#6a,#bb
	db #00,#50,#76,#bb,#00,#77,#6f,#bb
	db #00,#3c,#7b,#bb,#00,#77,#6f,#bb
	db #00,#3c,#7b,#00,#f9,#18,#b1,#02
	db #80,#80,#d5,#b1,#04,#80,#dc,#b1
	db #03,#80,#b1,#01,#80,#d5,#b1,#04
	db #80,#f4,#18,#b1,#02,#7d,#7d,#d5
	db #b1,#04,#7d,#dc,#b1,#03,#7d,#b1
	db #01,#7d,#d5,#b1,#02,#7d,#b1,#01
	db #7d,#7d,#f5,#18,#b1,#02,#79,#79
	db #d5,#b1,#04,#79,#dc,#b1,#03,#7b
	db #b1,#01,#7b,#d5,#b1,#04,#7b,#dc
	db #b1,#02,#7b,#b1,#01,#7b,#7b,#d5
	db #b1,#02,#7b,#b1,#01,#7b,#7b,#dc
	db #74,#b1,#02,#74,#b1,#01,#74,#d5
	db #74,#74,#dc,#74,#d5,#74,#00,#fc
	db #10,#cf,#b1,#01,#7b,#4f,#cb,#78
	db #4c,#cf,#84,#4f,#cb,#80,#4c,#cf
	db #82,#4f,#cb,#7f,#4c,#cf,#80,#4f
	db #cb,#7d,#4c,#cf,#7b,#4f,#cb,#78
	db #74,#78,#7b,#78,#4c,#cf,#7b,#4f
	db #cb,#76,#4c,#cf,#7b,#4f,#cb,#76
	db #4c,#cf,#84,#4f,#cb,#80,#4c,#cf
	db #82,#4f,#cb,#7f,#4c,#cf,#80,#4f
	db #cb,#7d,#4c,#cf,#7d,#4f,#cb,#79
	db #7b,#79,#78,#79,#4c,#cf,#7d,#4f
	db #cb,#78,#4c,#cf,#7d,#4f,#cb,#78
	db #4c,#cf,#85,#4f,#cb,#80,#4c,#cf
	db #84,#4f,#cb,#80,#4c,#cf,#82,#4f
	db #cb,#7f,#4c,#cf,#87,#4f,#cb,#84
	db #4c,#cf,#87,#4f,#cb,#84,#4c,#cf
	db #87,#4f,#cb,#84,#4c,#cf,#87,#87
	db #89,#4f,#cb,#85,#4c,#cf,#87,#4f
	db #cb,#84,#4c,#cf,#85,#4f,#cb,#82
	db #4c,#cf,#82,#4f,#cb,#7f,#4c,#cf
	db #80,#4f,#cb,#7d,#7b,#7d,#f2,#04
	db #cf,#87,#ce,#d0,#cd,#d0,#cc,#d0
	db #00,#f2,#04,#cf,#b1,#02,#84,#84
	db #b1,#04,#84,#b1,#02,#84,#84,#b1
	db #04,#84,#b1,#02,#84,#87,#b1,#03
	db #80,#b1,#01,#82,#01,#84,#06,#07
	db #00,#ce,#d0,#cd,#d0,#cc,#d0,#cb
	db #d0,#ca,#d0,#c9,#d0,#c8,#d0,#cf
	db #b1,#02,#85,#85,#b1,#04,#85,#b1
	db #02,#85,#84,#b1,#04,#84,#b1,#02
	db #84,#82,#82,#84,#b1,#04,#82,#87
	db #00,#f2,#04,#cf,#b1,#02,#84,#84
	db #b1,#04,#84,#b1,#02,#84,#84,#b1
	db #04,#84,#b1,#02,#84,#87,#b1,#03
	db #80,#b1,#01,#82,#01,#84,#06,#07
	db #00,#ce,#d0,#cd,#d0,#cc,#d0,#cb
	db #d0,#ca,#d0,#c9,#d0,#c8,#d0,#cf
	db #b1,#02,#85,#85,#b1,#04,#85,#b1
	db #02,#85,#84,#b1,#04,#84,#b1,#02
	db #87,#87,#85,#82,#b1,#06,#80,#b1
	db #02,#7b,#00,#f9,#18,#b1,#02,#80
	db #80,#d5,#b1,#04,#80,#dc,#b1,#03
	db #80,#b1,#01,#80,#d5,#b1,#04,#80
	db #f4,#18,#b1,#02,#7d,#7d,#d5,#b1
	db #04,#7d,#dc,#b1,#03,#7d,#b1,#01
	db #7d,#d5,#b1,#02,#7d,#b1,#01,#7d
	db #7d,#f5,#18,#b1,#02,#79,#79,#d5
	db #b1,#04,#79,#dc,#b1,#02,#79,#b1
	db #01,#79,#79,#d5,#b1,#04,#79,#f9
	db #18,#b1,#02,#7b,#b1,#01,#7b,#7b
	db #d5,#b1,#02,#7b,#b1,#01,#7b,#7b
	db #dc,#80,#b1,#02,#80,#b1,#01,#80
	db #d5,#80,#80,#dc,#80,#d5,#80,#00
	db #fb,#20,#cf,#b1,#01,#84,#4c,#cc
	db #78,#4b,#cf,#84,#4c,#cc,#78,#4b
	db #cf,#82,#4c,#cc,#76,#4b,#cf,#84
	db #4c,#cc,#78,#4b,#cf,#80,#4c,#cc
	db #74,#4b,#cf,#7b,#4c,#cc,#6f,#4b
	db #cf,#7b,#4c,#cc,#6f,#4b,#cf,#7b
	db #4c,#cc,#6f,#4b,#cf,#84,#4c,#cc
	db #78,#4b,#cf,#84,#4c,#cc,#78,#4b
	db #cf,#85,#4c,#cc,#79,#4b,#cf,#82
	db #4c,#cc,#76,#4b,#cf,#87,#4c,#cc
	db #7b,#ca,#9f,#93,#87,#c0,#4b,#cf
	db #87,#4c,#cc,#7b,#4b,#cf,#7d,#4c
	db #cc,#71,#4b,#cf,#7d,#4c,#cc,#71
	db #4b,#cf,#85,#4c,#cc,#79,#4b,#cf
	db #85,#4c,#cc,#79,#4b,#cf,#84,#4c
	db #cc,#78,#4b,#cf,#82,#4c,#cc,#76
	db #4b,#cf,#80,#4c,#cc,#74,#4b,#cf
	db #7b,#4c,#cc,#6f,#4b,#cf,#84,#4c
	db #cc,#78,#4b,#cf,#84,#4c,#cc,#78
	db #4b,#cf,#82,#4c,#cc,#76,#4b,#cf
	db #84,#4c,#cc,#78,#4b,#cf,#80,#4c
	db #cc,#74,#ca,#a4,#98,#8c,#80,#74
	db #68,#00,#f0,#08,#bb,#00,#77,#b1
	db #02,#6f,#bb,#00,#3c,#7b,#bb,#00
	db #77,#6f,#bb,#00,#3c,#7b,#bb,#00
	db #77,#6f,#bb,#00,#3c,#7b,#bb,#00
	db #77,#6f,#bb,#00,#3c,#7b,#bb,#00
	db #8e,#6c,#bb,#00,#47,#78,#bb,#00
	db #8e,#6c,#bb,#00,#47,#78,#bb,#00
	db #8e,#6c,#bb,#00,#47,#78,#bb,#00
	db #8e,#6c,#bb,#00,#47,#78,#bb,#00
	db #b4,#68,#bb,#00,#5a,#74,#bb,#00
	db #b4,#68,#bb,#00,#5a,#74,#bb,#00
	db #b4,#68,#bb,#00,#5a,#74,#bb,#00
	db #b4,#68,#bb,#00,#5a,#74,#bb,#00
	db #a0,#6a,#bb,#00,#50,#76,#bb,#00
	db #a0,#6a,#bb,#00,#50,#76,#bb,#00
	db #77,#6f,#bb,#00,#3c,#7b,#bb,#00
	db #77,#6f,#bb,#00,#3c,#7b,#00,#fb
	db #20,#cf,#b1,#01,#84,#4c,#cc,#78
	db #4b,#cf,#84,#4c,#cc,#78,#4b,#cf
	db #82,#4c,#cc,#76,#4b,#cf,#84,#4c
	db #cc,#78,#4b,#cf,#80,#4c,#cc,#74
	db #4b,#cf,#7b,#4c,#cc,#6f,#4b,#cf
	db #7b,#4c,#cc,#6f,#4b,#cf,#7b,#4c
	db #cc,#6f,#4b,#cf,#84,#4c,#cc,#78
	db #4b,#cf,#89,#4c,#cc,#7d,#4b,#cf
	db #87,#4c,#cc,#7b,#4b,#cf,#85,#4c
	db #cc,#79,#4b,#cf,#84,#4c,#cc,#78
	db #ca,#9f,#93,#87,#c0,#4b,#cf,#84
	db #4c,#cc,#78,#4b,#cf,#7d,#4c,#cc
	db #71,#4b,#cf,#7d,#4c,#cc,#71,#4b
	db #cf,#85,#4c,#cc,#79,#4b,#cf,#85
	db #4c,#cc,#79,#4b,#cf,#84,#4c,#cc
	db #78,#4b,#cf,#82,#4c,#cc,#76,#4b
	db #cf,#80,#4c,#cc,#74,#4b,#cf,#7b
	db #4c,#cc,#6f,#4b,#cf,#84,#4c,#cc
	db #78,#4b,#cf,#84,#4c,#cc,#78,#4b
	db #cf,#82,#4c,#cc,#76,#4b,#cf,#84
	db #4c,#cc,#78,#4b,#cf,#80,#4c,#cc
	db #74,#ca,#74,#80,#8c,#98,#a4,#c0
	db #00,#f9,#18,#b1,#02,#80,#80,#d5
	db #b1,#04,#80,#dc,#b1,#03,#80,#b1
	db #01,#80,#d5,#b1,#04,#80,#f4,#18
	db #b1,#02,#7d,#7d,#d5,#b1,#04,#7d
	db #dc,#b1,#03,#7d,#b1,#01,#7d,#d5
	db #b1,#02,#7d,#b1,#01,#7d,#7d,#f5
	db #18,#b1,#02,#79,#79,#d5,#b1,#04
	db #79,#dc,#b1,#02,#79,#b1,#01,#79
	db #79,#d5,#b1,#04,#79,#f9,#18,#b1
	db #02,#7b,#b1,#01,#7b,#7b,#d5,#b1
	db #02,#7b,#b1,#01,#7b,#7b,#dc,#7b
	db #b1,#02,#7b,#b1,#01,#7b,#d5,#7b
	db #7b,#dc,#7b,#d5,#7b,#00,#fe,#20
	db #cf,#b1,#03,#78,#cc,#b1,#01,#78
	db #cf,#b1,#02,#7b,#b1,#03,#7d,#cc
	db #b1,#01,#7b,#cf,#b1,#02,#7b,#78
	db #76,#b1,#03,#78,#cc,#b1,#01,#78
	db #cf,#b1,#02,#76,#b1,#03,#78,#cc
	db #b1,#01,#78,#cf,#b1,#02,#7b,#79
	db #78,#b1,#03,#78,#cc,#b1,#01,#78
	db #cf,#b1,#02,#75,#b1,#03,#76,#cc
	db #b1,#01,#76,#cf,#b1,#02,#7d,#7b
	db #78,#b1,#03,#7b,#cc,#b1,#01,#7b
	db #cf,#b1,#02,#7d,#b1,#06,#7b,#ca
	db #b1,#01,#7b,#7d,#7b,#79,#00,#fe
	db #20,#cf,#b1,#03,#78,#cc,#b1,#01
	db #78,#cf,#b1,#02,#7b,#b1,#03,#7d
	db #cc,#b1,#01,#7d,#cf,#b1,#02,#7b
	db #78,#76,#b1,#03,#78,#cc,#b1,#01
	db #78,#cf,#b1,#02,#76,#b1,#03,#78
	db #cc,#b1,#01,#78,#cf,#b1,#02,#7b
	db #79,#78,#b1,#03,#79,#cc,#b1,#01
	db #79,#cf,#b1,#02,#74,#b1,#03,#76
	db #cc,#b1,#01,#76,#cf,#b1,#02,#7d
	db #7b,#7d,#b1,#03,#7d,#cc,#b1,#01
	db #7d,#cf,#b1,#02,#7b,#b1,#03,#7f
	db #cc,#b1,#01,#7f,#cf,#b1,#02,#82
	db #84,#82,#00,#f9,#18,#c1,#b1,#02
	db #80,#c2,#80,#d5,#c3,#80,#c4,#d0
	db #dc,#c5,#80,#c6,#b1,#01,#d0,#80
	db #d5,#c7,#b1,#02,#80,#c8,#d0,#dc
	db #c9,#80,#ca,#80,#d5,#cb,#80,#cc
	db #d0,#dc,#cd,#80,#ce,#b1,#01,#d0
	db #80,#d5,#cf,#b1,#02,#80,#b1,#01
	db #80,#80,#00,#b1,#20,#c0,#00,#f0
	db #08,#bb,#00,#77,#b1,#1c,#68,#bb
	db #00,#8e,#b1,#02,#68,#bb,#00,#3c
	db #74,#00,#23,#2a,#00,#8f,#00,#00
	db #00,#8f,#00,#00,#00,#8f,#00,#00
	db #00,#8e,#00,#00,#00,#8e,#00,#00
	db #00,#8e,#00,#00,#00,#8d,#00,#00
	db #00,#8d,#00,#00,#00,#8c,#01,#00
	db #00,#8c,#01,#00,#00,#8c,#01,#00
	db #00,#8c,#01,#00,#00,#8c,#ff,#ff
	db #00,#8b,#ff,#ff,#00,#8b,#ff,#ff
	db #00,#8b,#ff,#ff,#00,#8b,#03,#00
	db #00,#8b,#03,#00,#00,#8b,#03,#00
	db #00,#8a,#03,#00,#00,#8a,#fd,#ff
	db #00,#8a,#fd,#ff,#00,#8a,#fd,#ff
	db #00,#8a,#fd,#ff,#00,#8a,#fd,#ff
	db #00,#8a,#03,#00,#00,#89,#03,#00
	db #00,#89,#03,#00,#00,#89,#03,#00
	db #00,#89,#03,#00,#00,#89,#fd,#ff
	db #00,#89,#fd,#ff,#00,#89,#fd,#ff
	db #00,#89,#fd,#ff,#00,#88,#fd,#ff
	db #00,#88,#03,#00,#00,#88,#03,#00
	db #00,#88,#03,#00,#00,#88,#fd,#ff
	db #00,#88,#fd,#ff,#00,#88,#fd,#ff
	db #00,#88,#fd,#ff,#00,#01,#00,#90
	db #00,#00,#05,#0a,#12,#1f,#00,#01
	db #10,#0f,#80,#01,#0c,#0e,#00,#02
	db #08,#0d,#00,#00,#04,#0d,#00,#00
	db #04,#0b,#00,#00,#00,#8b,#00,#00
	db #00,#8b,#00,#00,#00,#8b,#00,#00
	db #00,#8b,#00,#00,#3f,#40,#00,#8f
	db #00,#00,#00,#8f,#00,#00,#00,#8f
	db #00,#00,#00,#8f,#00,#00,#00,#8e
	db #00,#00,#00,#8e,#00,#00,#00,#8e
	db #00,#00,#00,#8e,#00,#00,#00,#8e
	db #00,#00,#00,#8d,#00,#00,#00,#8d
	db #00,#00,#00,#8d,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#05,#0a
	db #20,#0f,#00,#02,#00,#8e,#80,#02
	db #00,#8e,#00,#04,#00,#8b,#00,#00
	db #00,#8b,#00,#00,#04,#0b,#00,#00
	db #00,#8b,#00,#00,#00,#8b,#00,#00
	db #00,#8b,#00,#00,#00,#8b,#00,#00
	db #30,#31,#00,#8f,#00,#00,#00,#8e
	db #00,#00,#00,#8e,#00,#00,#00,#8d
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8b
	db #00,#00,#00,#8b,#00,#00,#00,#8b
	db #00,#00,#00,#8a,#00,#00,#00,#8a
	db #00,#00,#00,#89,#00,#00,#00,#89
	db #00,#00,#00,#89,#00,#00,#00,#88
	db #00,#00,#00,#88,#00,#00,#00,#87
	db #00,#00,#00,#87,#00,#00,#00,#87
	db #00,#00,#00,#86,#00,#00,#00,#86
	db #00,#00,#00,#85,#00,#00,#00,#85
	db #00,#00,#00,#85,#00,#00,#00,#84
	db #00,#00,#00,#84,#00,#00,#00,#83
	db #00,#00,#00,#83,#00,#00,#00,#83
	db #00,#00,#00,#82,#00,#00,#00,#82
	db #00,#00,#00,#81,#00,#00,#00,#81
	db #00,#00,#00,#81,#00,#00,#00,#80
	db #00,#00,#00,#80,#00,#00,#00,#80
	db #00,#00,#00,#80,#00,#00,#00,#80
	db #00,#00,#00,#80,#00,#00,#00,#80
	db #00,#00,#00,#80,#00,#00,#00,#80
	db #00,#00,#00,#80,#00,#00,#00,#80
	db #00,#00,#00,#80,#00,#00,#00,#80
	db #00,#00,#00,#80,#00,#00,#3f,#40
	db #00,#8f,#00,#00,#00,#8f,#00,#00
	db #00,#8f,#00,#00,#00,#8e,#00,#00
	db #00,#8e,#00,#00,#00,#8e,#00,#00
	db #00,#8d,#00,#00,#00,#8d,#00,#00
	db #00,#8d,#00,#00,#00,#8d,#00,#00
	db #00,#8d,#00,#00,#00,#8d,#00,#00
	db #00,#8c,#00,#00,#00,#8c,#00,#00
	db #00,#8c,#00,#00,#00,#8c,#00,#00
	db #00,#8b,#00,#00,#00,#8b,#00,#00
	db #00,#8b,#00,#00,#00,#8b,#00,#00
	db #00,#8a,#00,#00,#00,#8a,#00,#00
	db #00,#8a,#00,#00,#00,#8a,#00,#00
	db #00,#89,#00,#00,#00,#89,#00,#00
	db #00,#89,#00,#00,#00,#89,#00,#00
	db #00,#88,#00,#00,#00,#88,#00,#00
	db #00,#88,#00,#00,#00,#88,#00,#00
	db #00,#87,#00,#00,#00,#87,#00,#00
	db #00,#87,#00,#00,#00,#87,#00,#00
	db #00,#86,#00,#00,#00,#86,#00,#00
	db #00,#86,#00,#00,#00,#86,#00,#00
	db #00,#85,#00,#00,#00,#85,#00,#00
	db #00,#85,#00,#00,#00,#85,#00,#00
	db #00,#84,#00,#00,#00,#84,#00,#00
	db #00,#84,#00,#00,#00,#84,#00,#00
	db #00,#83,#00,#00,#00,#83,#00,#00
	db #00,#82,#00,#00,#00,#82,#00,#00
	db #00,#81,#00,#00,#00,#81,#00,#00
	db #00,#81,#00,#00,#00,#80,#00,#00
	db #00,#80,#00,#00,#00,#80,#00,#00
	db #00,#80,#00,#00,#00,#80,#00,#00
	db #00,#80,#00,#00,#00,#80,#00,#00
	db #00,#80,#00,#00,#00,#80,#00,#00
	db #00,#01,#00,#00,#03,#00,#00,#00
	db #00,#03,#00,#07,#03,#00,#03,#00
	db #07,#04,#12,#13,#0c,#00,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #03,#fb,#00,#04,#06,#0c,#0c,#00
	db #00,#0c,#0c,#00,#00,#00,#0c,#0c
	db #0c,#00,#00,#20,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#1f,#20,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#03,#07
	db #30,#18,#00,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00

; #891c
;	db "ProTracker 3.4 compilation of HAPPY NEW YEAR 2000 & MERRY-XMAS by JUSTINAS/SMG/CTL'99-00'NOCH'YU!!"
;
.init_music		; added by Megachur
;
	ld hl,l891c
	jp real_init_music
;
.music_info
	db "XMas Flip - Part 2 (2019)(Impact)(Justinas)",0
	db "ProTracker 3.4 compilation of HAPPY NEW YEAR 2000 & MERRY-XMAS by JUSTINAS/SMG/CTL'99-00'NOCH'YU!!",0

	read "music_end.asm"
