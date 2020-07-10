; Music of Final Exams CPC Amstrad Expo 2010 - Intro (2010)(Impact)(Scavenger)()
; Ripped by Megachur the 01/01/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FIECAE2I.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #2000

	read "music_header.asm"

	jp l2009	; init
	jp l2039	; play
	jp l203f	; stop
;
.init_music
.l2009
;
	di
	exx
	ex af,af'
	push af
	push bc
	push de
	push hl
	ei
	call l24ab
	call l24b2
	call l2539
	call l2538
	call l25d5
	call l203f
	ld a,(l2777)
.l2026
	push af
	call l223e
	pop af
	dec a
	jr nz,l2026
	pop hl
	pop de
	pop bc
	pop af
	ex af,af'
	exx
	ei
	ret
	ld bc,#f501
;
.play_music
.l2039
;
	call l223e
	jp l20a8
;
.stop_music
.l203f
;
	ld b,#0e
	ld c,#0d
	xor a
.l2044
	push bc
	call l204d
	pop bc
	dec c
	djnz l2044
	ret
.l204d
	ld b,#f4
	out (c),c
	ld bc,#f6c0
	out (c),c
	db #ed,#71 ; out (c),0
	ld b,#f4
	out (c),a
	ld bc,#f680
	out (c),c
	db #ed,#71 ; out (c),0
	ret
	di
	ld bc,#f40e
	out (c),c
	ld bc,#f6c0
	out (c),c
	db #ed,#71 ; out (c),0
	ld bc,#f792
	out (c),c
	ld b,#f6
	out (c),a
	ld a,#f4
	in a,(#00)
	db #ed,#71 ; out (c),0
	ld bc,#f782
	out (c),c
	ei
	ret
.l2087
	ld a,(hl)
	cp #00
	jr z,l209d
	ld (#0000),a
.l208f
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l209d
	inc c
.l209e
	inc de
	ld a,d
	and #03
	ld d,a
	ld (l20b3),de
	ret
.l20a8
	ld de,#c080
	ld hl,#f4f6
	ld b,l
	out (c),d
	exx
.l20b3 equ $ + 1
	ld de,#01a0
	ld l,e
	ld b,#f4
	ld c,#00
.l20ba
	ld h,#10
	ld a,(hl)
.l20be equ $ + 1
	cp #75
	jr z,l20d2
	ld (l20be),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l20d2
	inc c
	inc h
	ld a,(hl)
.l20d6 equ $ + 1
	cp #07
	jr z,l20ea
	ld (l20d6),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l20ea
	inc c
	inc h
	ld a,(hl)
.l20ee equ $ + 1
	cp #e1
	jr z,l2102
	ld (l20ee),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l2102
	inc c
	inc h
	ld a,(hl)
.l2106 equ $ + 1
	cp #01
	jr z,l211a
	ld (l2106),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l211a
	inc c
	inc h
	ld a,(hl)
.l211e equ $ + 1
	cp #3f
	jr z,l2132
	ld (l211e),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l2132
	inc c
	inc h
	ld a,(hl)
.l2136 equ $ + 1
	cp #01
	jr z,l214a
	ld (l2136),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l214a
	inc c
	inc h
	ld a,(hl)
.l214e equ $ + 1
	cp #03
	jr z,l2162
	ld (l214e),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l2162
	inc c
	inc h
	ld a,(hl)
.l2166 equ $ + 1
	cp #38
	jr z,l217a
	ld (l2166),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l217a
	inc c
	inc h
	ld a,(hl)
.l217e equ $ + 1
	cp #0a
	jr z,l2192
	ld (l217e),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l2192
	inc c
	inc h
	ld a,(hl)
.l2196 equ $ + 1
	cp #0a
	jr z,l21aa
	ld (l2196),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l21aa
	inc c
	inc h
	ld a,(hl)
.l21ae equ $ + 1
	cp #01
	jr z,l21c2
	ld (l21ae),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l21c2
	inc c
	inc h
	ld a,(hl)
.l21c6 equ $ + 1
	cp #03
	jr z,l21da
	ld (l21c6),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l21da
	inc c
	inc h
	ld a,(hl)
.l21de equ $ + 1
	cp #0d
	jr z,l21f2
	ld (l21de),a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l21f2
	inc c
	inc h
	ld a,(hl)
	inc a
	jr z,l2207
	dec a
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l2207
	inc de
	ld a,d
	and #03
	ld d,a
	ld (l20b3),de
	ret
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00
.l223e
	di
	ld (l225d),sp
	ld a,(l2777)
	dec a
.l2249 equ $ + 2
	ld hx,#00
	ld iy,l2251
.l224f equ $ + 1
	jp l2351
.l2251
	ld hl,(l224f)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld (l224f),de
.l225d equ $ + 1
	ld sp,#bff2
	ei
	ret
	add hl,bc
	inc hl
.l2264 equ $ + 1
.l2263
	ld hl,#0035
	ld c,l
	ld d,#00
	ld a,(l2777)
	ld e,a
	or a
	sbc hl,de
	ld (l2264),hl
	dec a
	jp nc,l2301
	ld b,d
	ld de,l22a1
	ld (l224f),de
	ld de,(l2d40)
	add hl,de
	ld (l2264),hl
	ld a,c
	ld (l22b7),a
	ld (l22a2),a
	ld hl,(l20b3)
	add hl,bc
	ld a,(l2777)
	ld c,a
	add hl,bc
	ld a,h
	and #03
	ld (l2249),a
	ld a,l
	ld (l22ca),a
.l22a2 equ $ + 1
.l22a1
	ld a,#00
	dec a
	jp m,l22ae
	ld iy,l22b3
.l22ac equ $ + 1
.l22ab
	jp l2301
.l22ae
	ld a,(l2777)
	jr l22b9
.l22b3
	ld a,(l2777)
.l22b7 equ $ + 1
	ld b,#00
	sub b
.l22b9
	ld hl,(l22ac)
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc de
	inc de
	inc de
	inc de
	ld hl,#00a1
	add hl,de
	ex de,hl
.l22ca equ $ + 1
	ld (hl),#00
	inc hl
	ex de,hl
	ldi
	ldi
	ldi
	ldi
	ldi
	ld iy,l22de
	dec a
	jr l22ab
.l22de
	ld hl,(l22ac)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld hl,#dd9c
	add hl,de
	jr c,l22f5
	ld hl,l2263
	ld (l224f),de
	ld de,l2301
.l22f5
	ld (l22ac),de
	ld sp,(l225d)
	ei
	ret
	add hl,bc
	inc hl
.l2301
	ld sp,l2637
.l2305 equ $ + 1
	jp l2393
	ld de,l3123
	ld b,c
	ld h,#c3
	sub e
	inc hl
	add hl,de
	inc hl
	ld sp,l264b
	jp l2393
	ld hl,l3123
	ld d,l
	ld h,#c3
	sub e
	inc hl
	add hl,hl
	inc hl
	ld sp,l265f
	jp l2393
	ld sp,l3123
	ld l,c
	ld h,#c3
	sub e
	inc hl
	add hl,sp
	inc hl
	ld sp,l2673
	jp l2393
	ld b,c
	inc hl
	ld sp,l267d
	jp l2393
	ld c,c
	inc hl
	ld sp,l2687
	jp l2393
	ld d,c
	inc hl
	ld sp,l2691
	jp l2393
	ld e,c
	inc hl
.l2351
	ld sp,l269b
	jp l2393
	ld h,c
	inc hl
	ld sp,l26a5
	jp l2393
	ld l,c
	inc hl
	ld sp,l26af
	jp l2393
	ld h,e
	ld (#b931),hl
	ld h,#c3
	sub e
	inc hl
	ld a,c
	inc hl
	ld sp,l26c3
	jp l2393
	ld bc,l3123
	call #c326
	sub e
	inc hl
.l237f
	ex af,af'
	ld a,(hl)
	inc hl
	exx
	ld (de),a
	inc e
	ex af,af'
	dec a
	exx
	jp p,l23ac
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l2393
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l23a9
	exx
	ld d,a
	exx
	add b
	jr nc,l23ec
	ex af,af'
.l23a1
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l23a1
	ex af,af'
.l23a9
	exx
	pop bc
	pop hl
.l23ac
	sla c
	jr nz,l23b4
	ld c,(hl)
	inc hl
	sll c
.l23b4
	jr nc,l237f
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l23d1
	ex af,af'
	ld a,b
	exx
	ld b,a
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
.l23c6
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l23c6
	ex af,af'
	exx
	jr l23ac
.l23d1
	ex af,af'
	ld a,d
	exx
	ld b,a
	inc b
	exx
	ld a,(hl)
	inc hl
	push hl
	push bc
	exx
	add c
	ld l,a
.l23de
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	djnz l23de
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l23ec
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l23f4
	ld a,(hl)
	ld (de),a
	inc l
	inc e
	djnz l23f4
	push hl
	push de
	jp (iy)
.l23fe
	ex af,af'
	ld a,(hl)
	inc hl
	exx
	ld (de),a
	inc de
	res 2,d
	ex af,af'
	dec a
	exx
	jp p,l2431
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l2414
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l242e
	exx
	ld d,a
	exx
	add b
	jr nc,l2495
	ex af,af'
.l2422
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l2422
	ex af,af'
.l242e
	exx
	pop bc
	pop hl
.l2431
	sla c
	jr nz,l2439
	ld c,(hl)
	inc hl
	sll c
.l2439
	jr nc,l23fe
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l2468
	ex af,af'
	ld a,b
	exx
	ld b,a
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
	ld a,d
	res 0,a
	res 1,a
	exx
	adc (hl)
	add hx
	and #fb
	inc hl
	exx
	ld h,a
.l2459
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l2459
	ex af,af'
	exx
	jr l2431
.l2468
	ex af,af'
	ld a,d
	exx
	ld b,a
	inc b
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
	ld a,d
	res 0,a
	res 1,a
	exx
	adc (hl)
	add hx
	and #fb
	inc hl
	push hl
	push bc
	exx
	ld h,a
.l2483
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	djnz l2483
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l2495
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l249d
	ld a,(hl)
	ld (de),a
	inc hl
	res 2,h
	inc de
	res 2,d
	djnz l249d
	push hl
	push de
	jp (iy)
.l24ab
	ld hl,(l2d40)
	ld (l2264),hl
	ret
.l24b2
	ld hl,l277a
	ld d,#10
	exx
	ld hl,(l2778)
	inc hl
	inc hl
	push hl
	ld de,#0003
	ld a,(l2777)
	ld b,a
	ld c,#00
.l24c7
	ld a,(hl)
	cp #01
	jr z,l24d8
	exx
	ld (hl),d
	inc hl
	ld (hl),#04
	dec hl
	ld a,d
	add #08
	ld d,a
	exx
	inc c
.l24d8
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l24c7
	ld hl,l277a
	ld d,#10
	ld b,#03
	exx
	pop hl
	push hl
	ld de,#0003
	ld a,(l2777)
	ld b,a
.l24f0
	ld a,(hl)
	cp #04
	jr z,l250d
	exx
	ld a,b
	inc a
	and #03
	ld b,a
	jr nz,l2506
	ld a,c
	or a
	jr z,l2506
	dec c
	ld a,d
	add #04
	ld d,a
.l2506
	ld (hl),d
	inc hl
	ld (hl),#01
	dec hl
	inc d
	exx
.l250d
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l24f0
	ld hl,l2305
	ld bc,#0007
	exx
	pop hl
	ld de,#0003
	ld a,(l2777)
	ld b,a
.l2523
	ld a,(hl)
	cp #01
	exx
	ld de,l2393
	jr z,l252f
	ld de,l2414
.l252f
	ld (hl),e
	inc hl
	ld (hl),d
	add hl,bc
	exx
	add hl,de
	djnz l2523
	ret
.l2538
	ret
.l2539
	ld hl,l277a
	ld de,l20ba
	ld b,(hl)
	inc hl
	ld a,(hl)
	inc hl
	cp #01
	call z,l25ba
	call nz,l25c7
	ld b,#0d
.l254d
	push bc
	call l2597
	ld b,(hl)
	inc hl
	ld a,(hl)
	cp #04
	call z,l25c7
	jr z,l2570
	dec hl
	dec hl
	cp (hl)
	call nz,l25ba
	jr nz,l256e
	dec hl
	ld a,(hl)
	inc hl
	sub b
	inc a
	call z,l25c2
	call nz,l25ba
.l256e
	inc hl
	inc hl
.l2570
	inc hl
	pop bc
	djnz l254d
	ex de,hl
	ld (hl),#7e
	inc hl
	ld (hl),#3c
	inc hl
	ld (hl),#28
	inc hl
	ld (hl),#0f
	inc hl
	ld (hl),#3d
	inc hl
	ex de,hl
	ld hl,l208f
	ld bc,#000f
	ldir
	dec de
	ld hl,l209e
	ld bc,#000a
	ldir
	ret
.l2597
	push hl
	ld hl,l2087
	ldi
	ldi
	ld b,d
	ld c,#ff
	ld a,e
	ldi
	ldi
	ldi
	ldi
	ld (de),a
	inc de
	ld a,b
	ld (de),a
	inc de
	ld hl,l208f
	ld bc,#000f
	ldir
	pop hl
	ret
.l25ba
	ex de,hl
	ld (hl),#26
	inc hl
	ld (hl),b
	inc hl
	ex de,hl
	ret
.l25c2
	ld a,#24
	ld (de),a
	inc de
	ret
.l25c7
	ex de,hl
	ld (hl),#3e
	inc hl
	ld (hl),b
	inc hl
	ld (hl),#b2
	inc hl
	ld (hl),#67
	inc hl
	ex de,hl
	ret
.l25d5
	ld hl,l2263
	ld (l224f),hl
	ld hl,l2301
	ld (l22ac),hl
	xor a
	ld (l2249),a
	ld hl,#0000
	ld (l20b3),hl
	call l25fa
	ld hl,l2637
	ld de,l26d7
	ld bc,#00a0
	ldir
	ret
.l25fa
	ld hl,l277a
	exx
	ld a,(l2777)
	ld b,a
	ld de,(l2778)
	inc de
	inc de
	ld hl,l2637
.l260b
	push bc
	exx
	ld a,(hl)
	inc hl
	inc hl
	exx
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#00
	inc hl
	ld (hl),#00
	inc hl
	ld (hl),#40
	inc hl
	inc hl
	ex de,hl
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	push hl
	add hl,bc
	ld b,h
	ld c,l
	pop hl
	inc hl
	ex de,hl
	ld (hl),c
	inc hl
	ld (hl),b
	inc hl
	pop bc
	djnz l260b
	ret
.l2637
	db #b2,#10,#a9,#10,#00,#cb,#10,#a5
	db #0d,#2e,#b2,#11,#b1,#11,#00,#cb
.l264b equ $ + 4
	db #20,#a0,#64,#2e,#b2,#12,#a9,#12
	db #00,#cb,#01,#a2,#15,#2f,#b2,#13
	db #b1,#13,#00,#cb,#04,#a1,#2d,#2f
.l265f
	db #b2,#14,#aa,#14,#00,#f2,#a0,#b2
	db #94,#2f,#b2,#15,#aa,#15,#00,#f2
.l2673 equ $ + 4
	db #81,#c8,#ba,#2f,#b2,#16,#52,#16
.l267d equ $ + 6
	db #00,#fa,#70,#f1,#46,#30,#b2,#17
	db #aa,#17,#00,#f2,#44,#c0,#80,#30
.l2687
	db #b2,#18,#b1,#18,#00,#fa,#50,#f9
.l2691 equ $ + 2
	db #b6,#30,#b2,#19,#b1,#19,#00,#fa
.l269b equ $ + 4
	db #50,#f9,#e6,#30,#a4,#1a,#a3,#1a
.l26a5 equ $ + 6
	db #00,#fc,#60,#f8,#3c,#31,#a4,#1b
	db #c7,#1b,#00,#ff,#c0,#fc,#ec,#31
.l26af
	db #a4,#1c,#9b,#1c,#00,#bd,#08,#a7
	db #37,#32,#a4,#1d,#a3,#1d,#00,#bd
.l26c3 equ $ + 4
	db #10,#7a,#42,#32,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l26d7
	db #00,#10,#a9,#10,#00,#00,#40,#a5
	db #72,#2d,#00,#11,#b1,#11,#00,#00
	db #40,#a0,#0d,#2e,#00,#12,#a9,#12
	db #00,#00,#40,#a2,#64,#2e,#00,#13
	db #b1,#13,#00,#00,#40,#a1,#15,#2f
	db #00,#14,#aa,#14,#00,#00,#40,#b2
	db #2d,#2f,#00,#15,#aa,#15,#00,#00
	db #40,#c8,#96,#2f,#00,#16,#52,#16
	db #00,#00,#40,#f1,#bc,#2f,#00,#17
	db #aa,#17,#00,#00,#40,#c0,#4b,#30
	db #00,#18,#b1,#18,#00,#00,#40,#f9
	db #83,#30,#00,#19,#b1,#19,#00,#00
	db #40,#f9,#bd,#30,#00,#1a,#a3,#1a
	db #00,#00,#40,#f8,#ed,#30,#00,#1b
	db #c7,#1b,#00,#00,#40,#fc,#3f,#31
	db #00,#1c,#9b,#1c,#00,#00,#40,#a7
	db #fb,#31,#00,#1d,#a3,#1d,#00,#00
	db #40,#7a,#37,#32,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l277a equ $ + 3
.l2778 equ $ + 1
.l2777
	db #0e,#40,#2d,#10,#01,#11,#01,#12
	db #01,#13,#01,#14,#01,#15,#01,#16
	db #01,#17,#01,#18,#01,#19,#01,#1a
	db #01,#1b,#01,#1c,#01,#1d,#01,#4e
	db #01,#4f,#01,#00,#00,#00,#00,#00
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
.l2d40 equ $ + 1
	db #00,#e7,#01,#01,#2e,#00,#01,#c6
	db #00,#01,#1a,#01,#01,#c8,#01,#01
	db #dd,#01,#01,#43,#02,#01,#66,#02
	db #01,#f2,#02,#01,#27,#03,#01,#5e
	db #03,#01,#8b,#03,#01,#da,#03,#01
	db #93,#04,#01,#cc,#04,#ff,#ff,#ff
	db #ff,#ff,#ff,#3f,#80,#f8,#00,#41
	db #42,#43,#41,#3f,#3d,#3b,#20,#3b
	db #3d,#f2,#08,#62,#e4,#04,#2c,#74
	db #12,#bc,#1c,#64,#f8,#16,#ef,#de
	db #f9,#31,#bb,#5e,#bc,#fb,#39,#00
	db #f9,#40,#f8,#30,#f8,#20,#f8,#40
	db #3f,#4f,#7e,#f9,#61,#fb,#fc,#fb
	db #69,#f0,#58,#f0,#50,#e8,#30,#99
	db #f8,#80,#38,#70,#fa,#b1,#e0,#a0
	db #1c,#38,#fa,#d9,#93,#f0,#80,#66
	db #cc,#f9,#f1,#97,#98,#fb,#f9,#f0
	db #e8,#f0,#f0,#e0,#f8,#10,#e8,#68
	db #f8,#98,#bc,#c6,#d0,#da,#00,#e4
	db #ee,#f8,#02,#0c,#16,#20,#2a,#08
	db #34,#3e,#48,#52,#f8,#28,#fc,#0f
	db #23,#00,#36,#4a,#5d,#71,#84,#98
	db #ab,#bf,#01,#d2,#e6,#f9,#0d,#20
	db #bc,#77,#fa,#71,#80,#f8,#30,#78
	db #79,#78,#76,#75,#75,#76,#28,#77
	db #78,#fe,#80,#77,#a5,#83,#01,#a5
	db #df,#00,#02,#fd,#22,#03,#03,#f8
	db #1a,#00,#f8,#28,#df,#fe,#26,#fb
	db #3a,#00,#f8,#40,#f1,#19,#f7,#41
	db #fc,#52,#fc,#64,#7f,#04,#fa,#69
	db #f0,#58,#f0,#50,#e8,#30,#f8,#80
	db #ef,#68,#e8,#a9,#df,#e9,#79,#f7
	db #60,#05,#fa,#f9,#df,#d0,#e0,#c1
	db #f9,#99,#f9,#47,#ec,#f9,#29,#fe
	db #55,#f8,#28,#04,#f9,#f9,#fa,#67
	db #06,#06,#3c,#03,#07,#fa,#71,#f8
	db #30,#f9,#71,#a0,#86,#50,#60,#3f
	db #fa,#01,#f8,#00,#3f,#42,#43,#42
	db #40,#12,#3d,#3b,#3b,#f8,#08,#3c
	db #ef,#f2,#21,#ed,#01,#ef,#f2,#f3
	db #f2,#f0,#ed,#eb,#f0,#20,#48,#eb
	db #f9,#30,#35,#d5,#f2,#51,#d1,#d1
	db #d3,#05,#d5,#d8,#d9,#d8,#d6,#f0
	db #50,#d3,#f9,#60,#10,#28,#9f,#a0
	db #f2,#81,#9e,#9b,#9c,#9e,#08,#a0
	db #a2,#a3,#a3,#f1,#90,#30,#bd,#be
	db #f8,#fb,#a9,#f0,#38,#fa,#32,#fe
	db #48,#f8,#a8,#be,#c0,#c1,#04,#c1
	db #be,#bc,#b9,#ba,#f8,#b0,#47,#1c
	db #80,#f2,#e1,#1a,#1c,#1f,#20,#1f
	db #1d,#1a,#10,#18,#2d,#b3,#ea,#f9
	db #af,#b1,#b3,#b6,#06,#b7,#b6,#b4
	db #b1,#af,#f1,#10,#f8,#68,#d6,#9e
	db #f9,#78,#40,#fd,#fa,#39,#f8,#d8
	db #fa,#c2,#f7,#bf,#ef,#20,#50,#3f
	db #fa,#59,#42,#43,#42,#40,#3d,#12
	db #3b,#3b,#3d,#f8,#5f,#78,#de,#f2
	db #71,#dc,#00,#de,#e1,#e2,#e1,#df
	db #dc,#da,#da,#80,#a2,#80,#00,#7f
	db #01,#fa,#01,#f8,#00,#f8,#0f,#f7
	db #00,#40,#20,#f1,#09,#f7,#10,#e0
	db #88,#81,#e9,#59,#a1,#87,#7e,#00
	db #81,#82,#81,#7f,#7c,#7a,#7a,#7c
	db #86,#e9,#00,#78,#ef,#be,#a0,#fc
	db #21,#f0,#20,#4a,#01,#60,#40,#68
	db #a8,#e0,#28,#78,#f8,#38,#87,#f8
	db #30,#a0,#3f,#fd,#d5,#fc,#51,#f0
	db #48,#f0,#38,#cc,#e8,#50,#e0,#30
	db #8e,#1c,#fe,#ac,#fc,#b1,#86,#0c
	db #3f,#d5,#b3,#fc,#b9,#f8,#b0,#f0
	db #98,#f8,#c0,#fe,#d8,#fe,#bd,#ff
	db #fc,#e1,#f0,#d8,#ee,#c8,#fa,#f2
	db #f8,#88,#f0,#08,#e8,#68,#fe,#38
	db #fe,#fe,#ed,#fc,#41,#f0,#38,#ee
	db #28,#f8,#42,#b2,#6a,#d9,#bf,#02
	db #af,#e1,#00,#00,#e9,#20,#01,#fb
	db #38,#fe,#1e,#f8,#38,#f6,#2f,#ff
	db #f8,#4f,#f2,#4a,#ef,#38,#e9,#51
	db #d7,#30,#f1,#b1,#e7,#68,#59,#b1
	db #c0,#c8,#80,#d9,#bf,#00,#00,#03
	db #04,#03,#01,#0e,#0c,#0c,#0e,#92
	db #e9,#00,#07,#10,#fa,#21,#01,#00
	db #fb,#17,#02,#c0,#fe,#28,#fa,#13
	db #10,#05,#04,#09,#09,#08,#ff,#fd
	db #20,#f9,#39,#fe,#35,#fa,#31,#f7
	db #20,#f8,#51,#f9,#19,#ef,#38,#fd
	db #f9,#18,#ef,#50,#f8,#17,#fa,#71
	db #fe,#96,#fa,#99,#00,#ef,#80,#b5
	db #f9,#b1,#07,#f9,#14,#f8,#70,#00
	db #fa,#c9,#0c,#f7,#b8,#ff,#f0,#a9
	db #e8,#31,#f8,#d9,#f9,#49,#f8,#60
	db #fe,#d6,#fa,#19,#f7,#00,#aa,#fa
	db #29,#04,#f0,#b0,#01,#f9,#90,#01
	db #fa,#c2,#00,#ff,#f8,#28,#f9,#98
	db #fe,#17,#fa,#f2,#f7,#d7,#f0,#e8
	db #fe,#85,#f2,#12,#fb,#fe,#90,#f9
	db #91,#fa,#4a,#fe,#37,#f1,#49,#01
	db #f6,#9e,#dc,#ba,#38,#a9,#e1,#00
	db #10,#f9,#19,#18,#f9,#21,#19,#39
	db #f9,#31,#5f,#19,#fb,#39,#39,#fe
	db #27,#fb,#41,#f7,#2f,#a8,#20,#f8
	db #80,#ff,#f8,#90,#f8,#88,#f8,#a8
	db #a8,#38,#e0,#c0,#e8,#38,#f8,#28
	db #f8,#58,#e8,#f0,#48,#f8,#18,#c0
	db #78,#3f,#da,#c0,#0b,#a0,#e1,#00
	db #0e,#fe,#20,#0d,#0c,#0b,#0a,#09
	db #bf,#f8,#18,#10,#e1,#30,#f8,#20
	db #e0,#30,#d0,#48,#e8,#80,#e0,#80
	db #ea,#c0,#50,#d0,#e0,#d0,#4f,#0c
	db #f9,#80,#0b,#f9,#88,#0a,#aa,#f1
	db #90,#08,#f1,#a0,#07,#f9,#b0,#06
	db #f9,#b8,#00,#80,#da,#c0,#0d,#7f
	db #0c,#fa,#01,#f8,#00,#f8,#0f,#e8
	db #00,#f0,#10,#a8,#28,#e8,#70,#fa
	db #d8,#68,#c8,#18,#e0,#90,#c0,#d0
	db #e8,#58,#0b,#f9,#88,#0a,#aa,#f1
	db #90,#08,#f1,#a0,#07,#f9,#b0,#06
	db #f9,#b8,#00,#80,#da,#c0,#0c,#b1
	db #e1,#00,#0d,#fd,#20,#fe,#1e,#0b
	db #0a,#0b,#fd,#28,#56,#0a,#fe,#2c
	db #09,#f8,#20,#0e,#fe,#38,#fd,#33
	db #0a,#67,#08,#fd,#1d,#fd,#2b,#09
	db #07,#f0,#28,#08,#28,#fd,#4c,#b2
	db #fc,#4c,#08,#f0,#28,#fa,#67,#06
.l3123 equ $ + 4
	db #06,#fa,#6a,#06,#77,#05,#fd,#74
	db #fe,#76,#fe,#7c,#04,#fd,#7c,#fe
	db #7e,#f9,#84,#55,#03,#f7,#8c,#02
	db #f8,#96,#01,#f8,#9f,#00,#c2,#a8
	db #00,#00,#03,#04,#03,#01,#7e,#7c
	db #7c,#7e,#92,#e9,#00,#07,#80,#fa
	db #21,#01,#00,#fb,#17,#02,#2f,#0f
	db #1e,#f9,#31,#3c,#fa,#39,#f8,#30
	db #f8,#40,#f8,#20,#97,#f8,#48,#14
	db #28,#f9,#61,#50,#fa,#69,#f8,#60
	db #f8,#70,#f2,#f8,#50,#f8,#78,#e8
	db #30,#f8,#80,#24,#47,#fa,#b1,#20
	db #59,#3f,#fa,#b9,#07,#f9,#14,#f8
	db #b0,#12,#24,#fa,#d1,#e5,#f8,#d0
	db #f8,#a8,#f8,#d8,#16,#2d,#f9,#f1
	db #59,#fa,#f9,#df,#f8,#f0,#f8,#00
	db #07,#f9,#11,#f7,#08,#fc,#2b,#fd
	db #13,#e8,#68,#c4,#f8,#98,#fe,#47
	db #3d,#3e,#3e,#fe,#be,#40,#41,#01
	db #41,#42,#43,#43,#44,#44,#45,#f8
	db #28,#00,#50,#51,#52,#53,#55,#56
	db #57,#58,#00,#59,#5b,#5c,#5d,#5e
	db #60,#61,#62,#35,#3c,#77,#fa,#71
	db #f8,#70,#01,#fa,#12,#7c,#fe,#85
	db #af,#fa,#81,#01,#fa,#22,#01,#fe
	db #90,#f9,#91,#fc,#c4,#fd,#9c,#d6
	db #fe,#97,#fa,#a1,#01,#f9,#9f,#01
	db #f6,#9e,#dc,#ba,#78,#00,#7f,#06
	db #0d,#14,#1b,#22,#29,#30,#a0,#e9
	db #00,#76,#f9,#20,#10,#16,#1c,#22
	db #28,#0f,#2e,#78,#7e,#00,#e1,#30
	db #f8,#20,#e0,#30,#d0,#48,#ff,#e8
	db #80,#f8,#13,#b8,#38,#f8,#10,#f8
	db #08,#fc,#c4,#fc,#12,#d8,#e8,#f0
	db #d0,#4f,#f9,#11,#f9,#21,#a7,#85
	db #ff,#b8,#d1,#00,#08,#d0,#00,#00
	db #60,#7a,#60,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
;
; #0822
; call #2000	; init
;
; #0870
; .l0870
; ld b,#f5
; .l0872
; in a,(c)
; rra
; jr nc,l0872
; call #2003	; play
; .l087b equ $ + 1
; ld hl,#01a0
; dec hl
; ld a,h
; or l
; jr nz,l0884
; jr #0889
; .l0884
; ld (l087b),hl
; jr l0870
;
.music_info
	db "Final Exams CPC Amstrad Expo 2010 - Intro (2010)(Impact)(Scavenger)",0
	db "",0

	read "music_end.asm"
