; Music of Bobo Level 1 (1988)(Infogrames)(Charles Callet)(Music Pro)
; Ripped by Megachur the 01/01/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOBOLEV1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #21f8

	read "music_header.asm"

	xor a
	ld (l279d),a
	ld (l27a1),a
	ld hl,l2a23
	ld de,(l2771)
	ld (hl),d
	inc hl
	ld (hl),e
;
.init_music
;
	xor a
	ld (l279d),a
	ld (l27a1),a
	ld hl,l27a8
	ld (hl),#00
	ld de,l27a9
	ld bc,#0128
	ldir
	ld a,(l29d2)
	ld (l28d1),a
	ld bc,l29d1
	ld hl,(l29d3)
	add hl,bc
	ld (l28d4),hl
	ld hl,(l29d5)
	add hl,bc
	ld (l28d6),hl
	ld hl,(l29d7)
	add hl,bc
	ld (l27ad),hl
	ld hl,(l29d9)
	add hl,bc
	ld (l27e8),hl
	ld hl,(l29db)
	add hl,bc
	ld (l2823),hl
	ld hl,l29dd
	ld (l28d2),hl
	ld a,#0f
	ld (l28d9),a
	ld hl,l27a2
	ld de,l27a8
	ld bc,#0005
	ldir
	ld hl,l27a2
	ld de,l27e3
	ld bc,#0005
	ldir
	ld hl,l27a2
	ld de,l281e
	ld bc,#0005
	ldir
	ld a,#ff
	ld (l279d),a
	ld c,#38
	ld a,#07
	jp l29af
	ld a,#0f
.l2283
	push af
	ld a,#0a
	ld (#0f20),a
.l2289
	ld a,(#0f20)
	cp #14
	jr nz,l2289
	pop af
	dec a
	ld (l28d9),a
	or a
	jr nz,l2283
	ret
;
.play_music
;
	ld a,(l279d)
	or a
	ret z
	xor a
	ld (l279d),a
	ld a,#08
	ld (l28dc),a
	cpl
	ld (l28db),a
	ld a,(l28d9)
	ld e,a
	ld b,#03
	ld hl,l283d
.l22b4
	ld a,(hl)
	ld c,a
	ld a,c
	cp e
	jp c,l22bc
	ld a,e
.l22bc
	ld c,a
	ld a,b
	add #07
	push de
	call l29af
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l22b4
	ld hl,l28d1
	dec (hl)
	ld ix,l27a8
	xor a
.l22d6
	ld (l28d8),a
	ld a,(ix+#07)
	or a
	jp nz,l258d
.l22e0
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l22ea
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jp nz,l2345
	ld l,(ix+#01)
	ld h,(ix+#02)
.l22fc
	ld a,(hl)
	cp #ff
	jp nz,l2326
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l27a1)
	or a
	jp z,l22fc
	push hl
	push bc
	ld a,(l279e)
	ld (l2a23),a
	xor a
	ld (l279e),a
	pop bc
	pop hl
	jp l22fc
.l2326
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l28d2)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l29d1
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l22ea
.l2345
	bit 7,a
	jp nz,l23b5
	ld hl,l28e3
	or a
	jp z,l2354
	add (ix+#20)
.l2354
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld e,(hl)
	ld (ix+#36),e
	ld (ix+#38),e
	inc hl
	ld e,(hl)
	ld (ix+#37),e
	ld (ix+#39),e
	ld (ix+#0a),#00
	ld (ix+#21),#00
	ld (ix+#1f),#00
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ex de,hl
	ld a,(l28d8)
	inc a
	ld hl,l2845
	ld bc,#0014
.l2386
	add hl,bc
	dec a
	jp nz,l2386
	call l2703
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l28d8)
	inc a
	ld hl,l2881
	ld bc,#0014
.l23a0
	add hl,bc
	dec a
	jp nz,l23a0
	call l2703
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l2579
.l23b5
	bit 6,a
	jp nz,l2408
	bit 5,a
	jp z,l23f5
	push af
	xor a
	ld (l28dd),a
	pop af
.l23c5
	and #1f
	ld b,a
	jp z,l23dd
	ld a,(l28da)
	push hl
	ld hl,l28db
	and (hl)
	pop hl
	ld c,a
	ld a,#07
	call l29af
	jp l23ec
.l23dd
	ld a,(l28da)
	push hl
	ld hl,l28dc
	or (hl)
	pop hl
	ld c,a
	ld a,#07
	call l29af
.l23ec
	ld c,b
	ld a,#06
	call l29af
	jp l2579
.l23f5
	and #1f
	ld hl,l29a3
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l2579
.l2408
	bit 5,a
	jp nz,l247b
	and #1f
	add a
	add a
	add a
	ld hl,(l28d4)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l2424
	ld a,(de)
	bit 7,a
	jp nz,l2437
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l2450
.l2437
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#ff
	bit 7,a
	jp nz,l244a
	ld b,#01
.l244a
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l2450
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jp nz,l2424
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l2845
	ld a,(l28d8)
	inc a
.l246f
	add hl,bc
	dec a
	jp nz,l246f
	ex de,hl
	call l2703
	jp l2579
.l247b
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l2492
	and #1f
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l2492
	sbc d
	inc h
	call p,#ef24
	inc h
	and d
	inc h
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l2579
	pop hl
	ld a,(hl)
	ld (l28dd),a
	and #3f
	ld (l28df),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l28e0),a
	ld a,(l28dd)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l28dd),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l28dd
	or (hl)
	ld (l28dd),a
	ld (l28de),a
	ld a,(l28df)
	ld (l28e2),a
	ld hl,l28e0
	ld b,#ff
	cp (hl)
	jp nc,l24e5
	ld b,#01
.l24e5
	ld a,b
	ld (l28e1),a
	ld a,(l28e2)
	jp l23c5
	ld a,#02
	jp l24f6
	ld a,#01
.l24f6
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jp z,l256e
	add a
	add a
	add a
	ld hl,(l28d6)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l2515
	ld a,(de)
	bit 7,a
	jp nz,l252a
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	neg
	ld (hl),a
	jp l2543
.l252a
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#01
	bit 7,a
	jp nz,l253d
	ld b,#ff
.l253d
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l2543
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jp nz,l2515
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l2881
	ld a,(l28d8)
	inc a
.l2562
	add hl,bc
	dec a
	jp nz,l2562
	ex de,hl
	call l2703
	jp l2573
.l256e
	ld a,#00
	ld (ix+#09),a
.l2573
	ld a,(ix+#09)
	ld (ix+#3a),a
.l2579
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l22e0
.l258d
	ld a,(l28d1)
	or a
	jp nz,l2597
	dec (ix+#07)
.l2597
	ld a,(ix+#0a)
	cp #04
	jp z,l25e5
	push ix
	pop hl
	ld b,a
	add a
	add a
	add b
	add #0b
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	or a
	jp nz,l25c6
	dec (hl)
	jp nz,l25b9
	inc (ix+#0a)
.l25b9
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l25e5
.l25c6
	dec (hl)
	jp nz,l25dc
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	dec hl
	jp l25de
.l25dc
	inc hl
	inc hl
.l25de
	dec (hl)
	jp nz,l25e5
	inc (ix+#0a)
.l25e5
	ld a,(ix+#09)
	or a
	jp z,l268a
	push ix
	pop hl
	ld a,(ix+#21)
	ld b,a
	add a
	add a
	add b
	add #22
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	or a
	jp nz,l2625
	dec (hl)
	jp nz,l2609
	inc (ix+#21)
.l2609
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,l2615
	inc b
.l2615
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l2655
.l2625
	dec (hl)
	jp nz,l264c
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	push hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,l263a
	inc b
.l263a
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l264e
.l264c
	inc hl
	inc hl
.l264e
	dec (hl)
	jp nz,l2655
	inc (ix+#21)
.l2655
	ld a,(ix+#21)
	cp #04
	jp nz,l268a
	ld a,(ix+#09)
	cp #02
	jp nz,l266c
	xor a
	ld (ix+#09),a
	jp l268a
.l266c
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l28d8)
	inc a
	ld hl,l2881
	ld bc,#0014
.l2682
	add hl,bc
	dec a
	jp nz,l2682
	call l2703
.l268a
	ld c,(ix+#36)
	ld a,(l28d8)
	add a
	call l29af
	ld c,(ix+#37)
	inc a
	call l29af
	ld bc,#003b
	add ix,bc
	ld a,(l28dc)
	rlc a
	ld (l28dc),a
	cpl
	ld (l28db),a
	ld a,(l28d8)
	inc a
	cp #03
	jp nz,l22d6
	ld a,(l28dd)
	or a
	jp z,l26f0
	dec a
	ld (l28dd),a
	or a
	jp nz,l26f0
	ld a,(l28de)
	ld (l28dd),a
	ld a,(l28e2)
	ld hl,l28e1
	add (hl)
	ld (l28e2),a
	ld c,a
	ld hl,l28df
	cp (hl)
	jp z,l26e3
	ld hl,l28e0
	cp (hl)
	jp nz,l26eb
.l26e3
	ld a,(l28e1)
	xor #fe
	ld (l28e1),a
.l26eb
	ld a,#06
	call l29af
.l26f0
	ld a,(l28d1)
	or a
	jp nz,l26fd
	ld a,(l29d2)
	ld (l28d1),a
.l26fd
	ld a,#ff
	ld (l279d),a
	ret
.l2703
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ret
	ld e,a
	ld d,#00
	add hl,de
	add hl,de
	ld a,(hl)
	inc hl
	ld b,(hl)
	ld l,a
	ld h,b
	ret
	push bc
	push hl
	push de
	push af
	xor a
	ld (l279d),a
	ld hl,l2a23
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld (l2771),de
	ld (hl),#ff
	dec hl
	ld (hl),#00
	ld hl,l27a2
	ld de,l27a8
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l27af),a
	ld (l279e),a
	dec a
	ld (l279d),a
	ld (l27a1),a
	pop af
	pop de
	pop hl
	pop bc
	ret
.l2771
	nop
	nop
	push hl
	push de
	push bc
	push af
	xor a
	ld (l279d),a
	pop af
	push af
	ld (l279e),a
	ld hl,l27a2
	ld de,l27a8
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l27af),a
	dec a
	ld (l279d),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.l27a2 equ $ + 5
.l27a1 equ $ + 4
.l279e equ $ + 1
.l279d
	db #00,#00,#00,#00,#ff,#00
	dw l27a7,l27a7
.l27ad equ $ + 6
.l27a9 equ $ + 2
.l27a8 equ $ + 1
.l27a7
	db #ff,#00,#00,#00,#00,#00,#00,#00
.l27af
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l27e3 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l27e8 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l281e equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2823 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l283d equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2845 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2881 equ $ + 2
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
.l28d6 equ $ + 7
.l28d4 equ $ + 5
.l28d2 equ $ + 3
.l28d1 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l28de equ $ + 7
.l28dd equ $ + 6
.l28dc equ $ + 5
.l28db equ $ + 4
.l28da equ $ + 3
.l28d9 equ $ + 2
.l28d8 equ $ + 1
	db #00,#00,#00,#38,#00,#00,#00,#00
.l28e3 equ $ + 4
.l28e2 equ $ + 3
.l28e1 equ $ + 2
.l28e0 equ $ + 1
.l28df
	db #00,#00,#00,#00,#00,#00
	dw #0c9c,#0be7,#0b3c,#0a9b
	dw #0a02,#0973,#08eb,#086b
	dw #07f2,#0780,#0714,#06ae
	dw #064e,#05f4,#059e,#054d
	dw #0501,#0469,#0475,#0435
	dw #03f9,#03c0,#038a,#0357
	dw #0327,#02fa,#02cf,#02a7
	dw #0281,#025d,#023b,#021b
	dw #01fc,#01e0,#01c5,#01ac
	dw #0194,#017d,#0168,#0153
	dw #0140,#012e,#011d,#010d
	dw #00fe,#00f0,#00e2,#00d6
	dw #00ca,#00be,#00b4,#00aa
	dw #00a0,#0097,#008f,#0087
	dw #007f,#0078,#0071,#006b
	dw #0065,#005f,#005a,#0055
	dw #0050,#004c,#0047,#0043
	dw #0040,#003c,#0039,#0035
	dw #0032,#0030,#002d,#002a
	dw #0028,#0026,#0024,#0022
	dw #0020,#001e,#001c,#001b
	dw #0019,#0018,#0016,#0015
	dw #0014,#0013,#0012,#0011
	dw #0010,#000f,#000e
.l29a3
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
.l29af
	push af
	push bc
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
	pop bc
	pop af
	ret
.l29d7 equ $ + 6
.l29d5 equ $ + 4
.l29d3 equ $ + 2
.l29d2 equ $ + 1
.l29d1
	db #00,#02,#20,#07,#20,#08,#52,#00
.l29dd equ $ + 4
.l29db equ $ + 2
.l29d9
	db #64,#00,#76,#00,#89,#00,#a3,#00
	db #c0,#00,#ca,#00,#dd,#00,#fa,#00
	db #0d,#01,#20,#01,#33,#01,#5b,#01
	db #75,#01,#8f,#01,#ac,#01,#e4,#01
	db #0b,#02,#32,#02,#39,#02,#60,#02
	db #b7,#02,#de,#02,#05,#03,#2c,#03
	db #8f,#03,#d0,#03,#14,#04,#58,#04
	db #62,#04,#a6,#04,#ea,#04,#f1,#04
	db #35,#05,#d7,#05,#1b,#06,#5f,#06
.l2a23 equ $ + 2
	db #a3,#06,#02,#00,#01,#00,#04,#03
	db #06,#07,#08,#00,#01,#00,#09,#0a
	db #0b,#0a,#0c,#ff,#0f,#0d,#0e,#0d
	db #0e,#0e,#0e,#10,#11,#0d,#0e,#0d
	db #12,#13,#14,#13,#15,#ff,#19,#17
	db #18,#17,#18,#1a,#1b,#1d,#1e,#17
	db #18,#17,#1f,#20,#21,#20,#21,#22
	db #ff,#e0,#00,#a0,#c1,#e2,#00,#84
	db #36,#32,#32,#c2,#e2,#05,#82,#3e
	db #3d,#3b,#3d,#39,#3b,#84,#37,#82
	db #37,#36,#ff,#e0,#00,#a0,#c1,#e2
	db #00,#84,#34,#2d,#2d,#c2,#e2,#05
	db #82,#39,#37,#36,#37,#34,#36,#84
	db #32,#cd,#e2,#04,#82,#39,#37,#ff
	db #e0,#00,#a0,#cd,#e2,#04,#82,#39
	db #37,#ff,#e0,#00,#a0,#cd,#e2,#04
	db #84,#34,#2d,#2d,#82,#32,#34,#84
	db #36,#32,#86,#32,#ff,#e0,#00,#a0
	db #c1,#e2,#00,#84,#34,#2d,#2d,#c2
	db #e2,#05,#82,#39,#37,#36,#37,#34
	db #36,#84,#32,#cd,#e2,#04,#82,#34
	db #32,#ff,#e0,#00,#a0,#cd,#e2,#04
	db #84,#34,#31,#31,#82,#32,#34,#84
	db #36,#32,#86,#32,#ff,#e0,#00,#a0
	db #cd,#e2,#04,#84,#37,#34,#34,#82
	db #36,#37,#84,#39,#32,#86,#32,#ff
	db #e0,#00,#a0,#cd,#e2,#04,#84,#3b
	db #34,#34,#82,#39,#3b,#84,#3d,#39
	db #86,#39,#ff,#e0,#00,#a0,#cd,#e2
	db #04,#84,#3e,#3b,#3b,#82,#3d,#3e
	db #84,#40,#3f,#3e,#3b,#38,#34,#32
	db #2f,#82,#34,#32,#2f,#2c,#28,#26
	db #23,#20,#1c,#20,#23,#26,#28,#2c
	db #31,#32,#ff,#e0,#00,#a0,#c1,#e2
	db #00,#84,#34,#2d,#2d,#c2,#e2,#05
	db #82,#39,#37,#36,#37,#34,#36,#84
	db #32,#82,#3b,#39,#ff,#e0,#02,#a0
	db #c1,#e2,#00,#84,#36,#32,#32,#c2
	db #e2,#05,#82,#3e,#3d,#3b,#3d,#39
	db #3b,#84,#37,#82,#37,#36,#ff,#e0
	db #02,#a0,#c1,#e2,#00,#84,#34,#2d
	db #2d,#c2,#e2,#05,#82,#39,#37,#36
	db #37,#34,#36,#84,#32,#cd,#e2,#04
	db #82,#39,#37,#ff,#e0,#02,#a0,#c1
	db #e2,#00,#84,#34,#2d,#2d,#c2,#e2
	db #05,#82,#39,#37,#36,#37,#34,#36
	db #84,#32,#cd,#e2,#04,#82,#2d,#2b
	db #2a,#2b,#28,#2a,#84,#26,#82,#21
	db #1f,#1e,#1f,#1c,#1e,#84,#1a,#80
	db #1c,#1e,#21,#23,#86,#26,#26,#1a
	db #82,#26,#1a,#ff,#e0,#00,#a0,#c3
	db #e2,#05,#82,#1a,#c2,#1a,#c3,#1a
	db #c2,#1a,#c3,#1a,#c2,#1a,#c3,#1a
	db #c2,#1a,#c3,#1f,#c2,#1f,#c3,#1f
	db #c2,#1f,#c3,#1f,#c2,#1f,#c3,#1f
	db #c2,#1f,#ff,#e0,#00,#a0,#c3,#e2
	db #05,#82,#15,#c2,#15,#c3,#15,#c2
	db #15,#c3,#15,#c2,#15,#c3,#15,#c2
	db #15,#c3,#1a,#c2,#1a,#c3,#1a,#c2
	db #1a,#c3,#1a,#c2,#1a,#c3,#1a,#c2
	db #1a,#ff,#e0,#00,#a0,#c0,#84,#21
	db #ff,#e0,#00,#a0,#c3,#e2,#05,#82
	db #1c,#c2,#1c,#c3,#1c,#c2,#1c,#c3
	db #1c,#c2,#1c,#c3,#1c,#c2,#1c,#c3
	db #21,#c2,#21,#c3,#21,#c2,#21,#c3
	db #21,#c2,#21,#c3,#21,#c2,#21,#ff
	db #e0,#00,#a0,#c3,#e2,#05,#82,#17
	db #c2,#17,#c3,#17,#c2,#17,#c3,#17
	db #c2,#17,#c3,#17,#c2,#17,#c3,#1c
	db #c2,#1c,#c3,#1c,#c2,#1c,#c3,#1c
	db #c2,#1c,#c3,#1c,#c2,#1c,#c3,#1c
	db #c2,#1c,#c3,#1c,#c2,#1c,#c3,#1c
	db #c2,#1c,#c3,#1c,#c2,#1c,#c3,#1c
	db #c2,#1c,#c3,#1c,#c2,#1c,#c3,#1c
	db #c2,#1c,#c3,#1c,#c2,#1c,#c3,#1c
	db #c2,#1c,#c3,#20,#c2,#20,#c3,#23
	db #c2,#23,#c3,#21,#c2,#1f,#ff,#e0
	db #00,#a0,#c3,#e2,#05,#82,#15,#c2
	db #15,#c3,#15,#c2,#15,#c3,#15,#c2
	db #15,#c3,#15,#c2,#15,#c3,#1a,#c2
	db #1a,#c3,#1a,#c2,#1a,#c3,#1a,#c2
	db #1a,#c3,#1c,#c2,#1c,#ff,#e0,#02
	db #a0,#c3,#e2,#05,#82,#1a,#c2,#1a
	db #c3,#1a,#c2,#1a,#c3,#1a,#c2,#1a
	db #c3,#1a,#c2,#1a,#c3,#1f,#c2,#1f
	db #c3,#1f,#c2,#1f,#c3,#1f,#c2,#1f
	db #c3,#1f,#c2,#1f,#ff,#e0,#02,#a0
	db #c3,#e2,#05,#82,#15,#c2,#15,#c3
	db #15,#c2,#15,#c3,#15,#c2,#15,#c3
	db #15,#c2,#15,#c3,#1a,#c2,#1a,#c3
	db #1a,#c2,#1a,#c3,#1a,#c2,#1a,#c3
	db #1a,#c2,#1a,#ff,#e0,#02,#a0,#c3
	db #e2,#05,#82,#15,#c2,#15,#c3,#15
	db #c2,#15,#c3,#15,#c2,#15,#c3,#15
	db #c2,#15,#c3,#1a,#c2,#1a,#c3,#1a
	db #c2,#1a,#c3,#1a,#c2,#1a,#c3,#15
	db #c2,#15,#c3,#1a,#c2,#1a,#c3,#1a
	db #c2,#1a,#c3,#1a,#c2,#1a,#c3,#15
	db #c2,#15,#c3,#1a,#c2,#1a,#c3,#1a
	db #c2,#1a,#c3,#1a,#c2,#1a,#c3,#1a
	db #c2,#1a,#c3,#1a,#c2,#1a,#c3,#1a
	db #c2,#1a,#c3,#1a,#c2,#1a,#c3,#1a
	db #c2,#1a,#c3,#1a,#c2,#1a,#c3,#1a
	db #c2,#1a,#c3,#1a,#c2,#1a,#ff,#e0
	db #00,#a0,#c2,#e2,#05,#82,#32,#3e
	db #a5,#d1,#e1,#02,#29,#d2,#29,#a0
	db #d6,#e1,#0a,#38,#c2,#e2,#05,#39
	db #a5,#d1,#e1,#02,#29,#d2,#29,#a0
	db #c1,#e1,#0a,#35,#c2,#e2,#05,#36
	db #a5,#d1,#e1,#02,#29,#d2,#29,#a0
	db #c1,#e1,#0a,#31,#c2,#e2,#05,#32
	db #a5,#d1,#e1,#02,#29,#d2,#29,#ff
	db #e0,#00,#a0,#d6,#e1,#0a,#82,#38
	db #c2,#e2,#05,#39,#a5,#d1,#e1,#02
	db #29,#d2,#29,#a0,#d6,#e1,#0a,#31
	db #c2,#e2,#05,#32,#a5,#d1,#e1,#02
	db #29,#d2,#29,#a0,#c1,#e1,#0a,#3a
	db #c2,#e2,#05,#3b,#a5,#d1,#e1,#02
	db #29,#d2,#29,#a0,#c1,#e1,#0a,#36
	db #c2,#e2,#05,#37,#a5,#d1,#e1,#02
	db #29,#d2,#29,#ff,#e0,#00,#a0,#d6
	db #e1,#0a,#82,#36,#c2,#e2,#05,#37
	db #a5,#d1,#e1,#02,#29,#d2,#29,#a0
	db #d6,#e1,#0a,#33,#c2,#e2,#05,#34
	db #a5,#d1,#e1,#02,#29,#d2,#29,#a0
	db #c1,#e1,#0a,#38,#c2,#e2,#05,#39
	db #a5,#d1,#e1,#02,#29,#d2,#29,#a0
	db #c1,#e1,#0a,#31,#c2,#e2,#05,#32
	db #a5,#d1,#e1,#02,#29,#d2,#29,#ff
	db #e0,#00,#a0,#cc,#e2,#06,#82,#39
	db #37,#ff,#e0,#00,#a0,#d6,#e1,#0a
	db #82,#35,#c2,#e2,#05,#37,#a5,#d1
	db #e1,#02,#29,#d2,#29,#a0,#d6,#e1
	db #0a,#2c,#c2,#e2,#05,#2d,#a5,#d1
	db #e1,#02,#29,#d2,#29,#a0,#c1,#e1
	db #0a,#34,#c2,#e2,#05,#36,#a5,#d1
	db #e1,#02,#29,#d2,#29,#a0,#c1,#e1
	db #0a,#31,#c2,#e2,#05,#32,#a5,#d1
	db #e1,#02,#29,#d2,#29,#ff,#e0,#00
	db #a0,#d6,#e1,#0a,#82,#35,#c2,#e2
	db #05,#37,#a5,#d1,#e1,#02,#29,#d2
	db #29,#a0,#d6,#e1,#0a,#33,#c2,#e2
	db #05,#34,#a5,#d1,#e1,#02,#29,#d2
	db #29,#a0,#c1,#e1,#0a,#38,#c2,#e2
	db #05,#39,#a5,#d1,#e1,#02,#29,#d2
	db #29,#a0,#c1,#e1,#0a,#35,#c2,#e2
	db #05,#36,#a5,#d1,#e1,#02,#29,#d2
	db #29,#ff,#e0,#00,#a0,#c0,#86,#30
	db #ff,#e0,#00,#a0,#d6,#e1,#0a,#82
	db #3a,#c2,#e2,#05,#3b,#a5,#d1,#e1
	db #02,#29,#d2,#29,#a0,#d6,#e1,#0a
	db #37,#c2,#e2,#05,#38,#a5,#d1,#e1
	db #02,#29,#d2,#29,#a0,#c1,#e1,#0a
	db #3c,#c2,#e2,#05,#3d,#a5,#d1,#e1
	db #02,#29,#d2,#29,#a0,#c1,#e1,#0a
	db #38,#c2,#e2,#05,#39,#a5,#d1,#e1
	db #02,#29,#d2,#29,#ff,#e0,#00,#a0
	db #d6,#e1,#0a,#82,#3d,#c2,#e2,#05
	db #3e,#a5,#d1,#e1,#02,#29,#d2,#29
	db #a0,#d6,#e1,#0a,#3a,#c2,#e2,#05
	db #3b,#a5,#d1,#e1,#02,#29,#d2,#29
	db #a0,#c1,#e1,#0a,#3f,#c2,#e2,#05
	db #40,#a5,#d1,#e1,#02,#29,#d2,#29
	db #a0,#c1,#e1,#0a,#3d,#c2,#e2,#05
	db #3e,#a5,#d1,#e1,#02,#29,#d2,#29
	db #a0,#d6,#e1,#0a,#3a,#c2,#e2,#05
	db #3b,#a5,#d1,#e1,#02,#29,#d2,#29
	db #a0,#d6,#e1,#0a,#37,#c2,#e2,#05
	db #38,#a5,#d1,#e1,#02,#29,#d2,#29
	db #a0,#c1,#e1,#0a,#33,#c2,#e2,#05
	db #34,#c1,#e1,#0a,#33,#c2,#e2,#05
	db #34,#c1,#e1,#0a,#33,#c2,#e2,#05
	db #34,#c1,#e1,#0a,#33,#c2,#e2,#05
	db #34,#c1,#e1,#0a,#33,#c2,#e2,#05
	db #34,#c1,#e1,#0a,#33,#c2,#e2,#05
	db #34,#c1,#e1,#0a,#33,#c2,#e2,#05
	db #34,#cd,#e2,#04,#39,#37,#ff,#e0
	db #00,#a0,#d6,#e1,#0a,#82,#36,#c2
	db #e2,#05,#37,#a5,#d1,#e1,#02,#29
	db #d2,#29,#a0,#d6,#e1,#0a,#33,#c2
	db #e2,#05,#34,#a5,#d1,#e1,#02,#29
	db #d2,#29,#a0,#c1,#e1,#0a,#38,#c2
	db #e2,#05,#39,#a5,#d1,#e1,#02,#29
	db #d2,#29,#a0,#c1,#e1,#0a,#31,#c2
	db #e2,#05,#32,#a5,#d1,#e1,#02,#29
	db #d2,#29,#ff,#e0,#02,#a0,#d6,#e1
	db #0a,#82,#38,#c2,#e2,#05,#39,#a5
	db #d1,#e1,#02,#29,#d2,#29,#a0,#d6
	db #e1,#0a,#31,#c2,#e2,#05,#32,#a5
	db #d1,#e1,#02,#29,#d2,#29,#a0,#c1
	db #e1,#0a,#3a,#c2,#e2,#05,#3b,#a5
	db #d1,#e1,#02,#29,#d2,#29,#a0,#c1
	db #e1,#0a,#36,#c2,#e2,#05,#37,#a5
	db #d1,#e1,#02,#29,#d2,#29,#ff,#e0
	db #02,#a0,#d6,#e1,#0a,#82,#36,#c2
	db #e2,#05,#37,#a5,#d1,#e1,#02,#29
	db #d2,#29,#a0,#d6,#e1,#0a,#33,#c2
	db #e2,#05,#34,#a5,#d1,#e1,#02,#29
	db #d2,#29,#a0,#c1,#e1,#0a,#38,#c2
	db #e2,#05,#39,#a5,#d1,#e1,#02,#29
	db #d2,#29,#a0,#c1,#e1,#0a,#31,#c2
	db #e2,#05,#32,#a5,#d1,#e1,#02,#29
	db #d2,#29,#ff,#e0,#02,#a0,#c1,#e1
	db #0a,#82,#2c,#c2,#e2,#05,#2d,#a5
	db #d1,#e1,#02,#29,#d2,#29,#a0,#c1
	db #e1,#0a,#25,#c2,#e2,#05,#26,#a5
	db #d1,#e1,#02,#29,#d2,#29,#a0,#c1
	db #e1,#0a,#20,#c2,#e2,#05,#21,#a5
	db #d1,#e1,#02,#29,#d2,#29,#a0,#c1
	db #e1,#0a,#19,#c3,#e2,#05,#1a,#a5
	db #d1,#e1,#02,#29,#d2,#29,#a0,#c1
	db #e1,#0a,#25,#c2,#e2,#05,#26,#c1
	db #e1,#0a,#25,#c2,#e2,#05,#26,#c1
	db #e1,#0a,#25,#c2,#e2,#05,#26,#c1
	db #e1,#0a,#25,#c2,#e2,#05,#26,#c1
	db #e1,#0a,#25,#c2,#e2,#05,#26,#c1
	db #e1,#0a,#25,#c2,#e2,#05,#26,#c1
	db #e1,#0a,#25,#c2,#e2,#05,#26,#ff
	db #0f,#00,#0f,#00,#0f,#00,#0f,#00
	db #01,#0f,#83,#ad,#01,#00,#01,#00
	db #01,#0d,#0d,#ff,#01,#00,#01,#00
	db #01,#0b,#0b,#ff,#01,#00,#01,#00
	db #01,#09,#09,#ff,#01,#00,#01,#00
	db #01,#07,#07,#ff,#01,#00,#01,#00
	db #01,#0f,#82,#88,#08,#00,#83,#a1
	db #01,#0a,#01,#00,#03,#00,#84,#a8
	db #01,#0c,#01,#00,#03,#00,#18,#00
	db #01,#0c,#01,#00,#03,#00,#01,#00
	db #01,#0e,#01,#00,#03,#00,#87,#e2
	db #01,#0e,#01,#00,#82,#9c,#62,#00
	db #01,#0f,#07,#00,#84,#bc,#01,#00
	db #01,#0f,#04,#ff,#08,#00,#88,#d3
	db #01,#0a,#01,#00,#01,#f6,#01,#00
	db #01,#0c,#01,#00,#01,#f4,#01,#00
	db #01,#0e,#01,#00,#01,#f2,#01,#00
	db #01,#0f,#0f,#ff,#01,#00,#01,#00
	db #01,#0d,#0d,#ff,#01,#00,#01,#00
	db #01,#0b,#0b,#ff,#01,#00,#01,#00
	db #01,#09,#09,#ff,#01,#00,#01,#00
	db #01,#0e,#01,#00,#01,#f2,#01,#00
	db #01,#0c,#91,#e3,#a1,#63,#a1,#63
	db #05,#03,#08,#00,#01,#00,#0f,#ff
	db #01,#0d,#04,#ff,#08,#00,#8a,#d3
	db #01,#0b,#04,#ff,#08,#00,#8c,#d3
	db #01,#09,#04,#ff,#08,#00,#95,#d3
	db #01,#07,#04,#ff,#08,#00,#9e,#da
	db #01,#0d,#03,#00,#08,#ff,#05,#00
	db #01,#0e,#86,#92,#89,#89,#82,#92
	db #01,#0f,#02,#00,#0c,#ff,#0c,#01
	db #01,#0d,#0c,#ff,#0d,#01,#0e,#ff
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#84,#08,#82,#88,#84,#08
	db #01,#00,#01,#3c,#03,#ec,#01,#ef
	db #86,#86,#01,#f1,#01,#2b,#01,#e5
	db #88,#08,#82,#04,#04,#fe,#03,#02
	db #04,#00,#82,#04,#04,#ff,#82,#04
	db #85,#0a,#03,#fd,#85,#0a,#01,#05
	db #01,#00,#01,#63,#03,#e2,#01,#d1
	db #01,#04,#01,#38,#03,#ec,#01,#f1
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #82,#04,#04,#02,#04,#fc,#04,#02
	db #01,#00,#01,#f4,#01,#f5,#01,#ef
	db #01,#00,#01,#63,#02,#d8,#01,#d1
	db #06,#00,#01,#ff,#01,#00,#01,#01
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #08,#00,#01,#01,#01,#01,#01,#01
	db #01,#f6,#01,#0a,#01,#01,#01,#ff
	db #01,#02,#01,#f7,#02,#01,#01,#05
	db #06,#00,#01,#ff,#01,#00,#01,#01
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #08,#00,#01,#01,#01,#01,#01,#01
	db #01,#00,#01,#00,#01,#01,#01,#ff
	db #01,#00,#01,#63,#02,#d8,#01,#d1
	db #06,#00,#01,#ff,#01,#00,#01,#01
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #08,#00,#01,#01,#01,#01,#01,#01
	db #01,#00,#01,#00,#01,#01,#01,#ff
	db #01,#00,#01,#63,#02,#d8,#01,#d1
	db #06,#00,#01,#ff,#01,#00,#01,#01
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #08,#00,#01,#01,#01,#01,#01,#01
	db #01,#00,#01,#00,#01,#01,#01,#ff
;
.music_info
	db "Bobo Level 1 (1988)(Infogrames)(Charles Callet)",0
	db "Music Pro",0

	read "music_end.asm"
