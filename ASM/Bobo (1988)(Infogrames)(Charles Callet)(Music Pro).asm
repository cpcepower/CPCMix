; Music of Bobo (1988)(Infogrames)(Charles Callet)(Music Pro)
; Ripped by Megachur the 01/01/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOBO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #219b

	read "music_header.asm"

	xor a
	ld (l274c),a
	ld (l2750),a
	ld hl,#0606
	ld (l29b5),hl
	ld hl,#1716
	ld (l29bb),hl
	jr l21b7
;
.init_music
;
	xor a
	ld (l274c),a
	ld (l2750),a
.l21b7
	ld hl,l2757
	ld (hl),#00
	ld de,l2758
	ld bc,#0128
	ldir
	ld a,(l2981)
	ld (l2880),a
	ld bc,l2980
	ld hl,(l2982)
	add hl,bc
	ld (l2883),hl
	ld hl,(l2984)
	add hl,bc
	ld (l2885),hl
	ld hl,(l2986)
	add hl,bc
	ld (l275c),hl
	ld hl,(l2988)
	add hl,bc
	ld (l2797),hl
	ld hl,(l298a)
	add hl,bc
	ld (l27d2),hl
	ld hl,l298c
	ld (l2881),hl
	ld a,#0f
	ld (l2888),a
	ld hl,l2751
	ld de,l2757
	ld bc,#0005
	ldir
	ld hl,l2751
	ld de,l2792
	ld bc,#0005
	ldir
	ld hl,l2751
	ld de,l27cd
	ld bc,#0005
	ldir
	ld a,#ff
	ld (l274c),a
	ld c,#38
	ld a,#07
	jp l295e
	ld a,#0f
.l222a
	push af
	ld a,#0a
	ld (#1b5d),a
.l2230
	ld a,(#1b5d)
	cp #14
	jr nz,l2230
	pop af
	dec a
	ld (l2888),a
	or a
	jr nz,l222a
	ret
;
.play_music
;
	ld a,(l274c)
	or a
	ret z
	xor a
	ld (l274c),a
	ld a,#08
	ld (l288b),a
	cpl
	ld (l288a),a
	ld a,(l2888)
	ld e,a
	ld b,#03
	ld hl,l27ec
.l225b
	ld a,(hl)
	ld c,a
	ld a,c
	cp e
	jp c,l2263
	ld a,e
.l2263
	ld c,a
	ld a,b
	add #07
	push de
	call l295e
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l225b
	ld hl,l2880
	dec (hl)
	ld ix,l2757
	xor a
.l227d
	ld (l2887),a
	ld a,(ix+#07)
	or a
	jp nz,l2549
.l2287
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l2291
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jp nz,l2301
	ld l,(ix+#01)
	ld h,(ix+#02)
.l22a3
	ld a,(hl)
	cp #ff
	jp nz,l22e2
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l2750)
	or a
	jp z,l22a3
	push hl
	push bc
	push de
	ld a,(l2887)
	ld c,a
	ld b,#00
	ld hl,l274d
	add hl,bc
	push hl
	ld e,(hl)
	add a
	ld c,a
	ld hl,l2986
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l2980
	add hl,bc
	ld (hl),e
	pop hl
	xor a
	ld (hl),a
	pop de
	pop bc
	pop hl
	jp l22a3
.l22e2
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l2881)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l2980
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l2291
.l2301
	bit 7,a
	jp nz,l2371
	ld hl,l2892
	or a
	jp z,l2310
	add (ix+#20)
.l2310
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
	ld a,(l2887)
	inc a
	ld hl,l27f4
	ld bc,#0014
.l2342
	add hl,bc
	dec a
	jp nz,l2342
	call l26bf
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l2887)
	inc a
	ld hl,l2830
	ld bc,#0014
.l235c
	add hl,bc
	dec a
	jp nz,l235c
	call l26bf
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l2535
.l2371
	bit 6,a
	jp nz,l23c4
	bit 5,a
	jp z,l23b1
	push af
	xor a
	ld (l288c),a
	pop af
.l2381
	and #1f
	ld b,a
	jp z,l2399
	ld a,(l2889)
	push hl
	ld hl,l288a
	and (hl)
	pop hl
	ld c,a
	ld a,#07
	call l295e
	jp l23a8
.l2399
	ld a,(l2889)
	push hl
	ld hl,l288b
	or (hl)
	pop hl
	ld c,a
	ld a,#07
	call l295e
.l23a8
	ld c,b
	ld a,#06
	call l295e
	jp l2535
.l23b1
	and #1f
	ld hl,l2952
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l2535
.l23c4
	bit 5,a
	jp nz,l2437
	and #1f
	add a
	add a
	add a
	ld hl,(l2883)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l23e0
	ld a,(de)
	bit 7,a
	jp nz,l23f3
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l240c
.l23f3
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
	jp nz,l2406
	ld b,#01
.l2406
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l240c
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jp nz,l23e0
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l27f4
	ld a,(l2887)
	inc a
.l242b
	add hl,bc
	dec a
	jp nz,l242b
	ex de,hl
	call l26bf
	jp l2535
.l2437
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l244e
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
.l244e
	ld d,(hl)
	inc h
	or b
	inc h
	xor e
	inc h
	ld e,(hl)
	inc h
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l2535
	pop hl
	ld a,(hl)
	ld (l288c),a
	and #3f
	ld (l288e),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l288f),a
	ld a,(l288c)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l288c),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l288c
	or (hl)
	ld (l288c),a
	ld (l288d),a
	ld a,(l288e)
	ld (l2891),a
	ld hl,l288f
	ld b,#ff
	cp (hl)
	jp nc,l24a1
	ld b,#01
.l24a1
	ld a,b
	ld (l2890),a
	ld a,(l2891)
	jp l2381
	ld a,#02
	jp l24b2
	ld a,#01
.l24b2
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jp z,l252a
	add a
	add a
	add a
	ld hl,(l2885)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l24d1
	ld a,(de)
	bit 7,a
	jp nz,l24e6
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
	jp l24ff
.l24e6
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
	jp nz,l24f9
	ld b,#ff
.l24f9
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l24ff
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jp nz,l24d1
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l2830
	ld a,(l2887)
	inc a
.l251e
	add hl,bc
	dec a
	jp nz,l251e
	ex de,hl
	call l26bf
	jp l252f
.l252a
	ld a,#00
	ld (ix+#09),a
.l252f
	ld a,(ix+#09)
	ld (ix+#3a),a
.l2535
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l2287
.l2549
	ld a,(l2880)
	or a
	jp nz,l2553
	dec (ix+#07)
.l2553
	ld a,(ix+#0a)
	cp #04
	jp z,l25a1
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
	jp nz,l2582
	dec (hl)
	jp nz,l2575
	inc (ix+#0a)
.l2575
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l25a1
.l2582
	dec (hl)
	jp nz,l2598
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
	jp l259a
.l2598
	inc hl
	inc hl
.l259a
	dec (hl)
	jp nz,l25a1
	inc (ix+#0a)
.l25a1
	ld a,(ix+#09)
	or a
	jp z,l2646
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
	jp nz,l25e1
	dec (hl)
	jp nz,l25c5
	inc (ix+#21)
.l25c5
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,l25d1
	inc b
.l25d1
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l2611
.l25e1
	dec (hl)
	jp nz,l2608
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
	jp nz,l25f6
	inc b
.l25f6
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l260a
.l2608
	inc hl
	inc hl
.l260a
	dec (hl)
	jp nz,l2611
	inc (ix+#21)
.l2611
	ld a,(ix+#21)
	cp #04
	jp nz,l2646
	ld a,(ix+#09)
	cp #02
	jp nz,l2628
	xor a
	ld (ix+#09),a
	jp l2646
.l2628
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l2887)
	inc a
	ld hl,l2830
	ld bc,#0014
.l263e
	add hl,bc
	dec a
	jp nz,l263e
	call l26bf
.l2646
	ld c,(ix+#36)
	ld a,(l2887)
	add a
	call l295e
	ld c,(ix+#37)
	inc a
	call l295e
	ld bc,#003b
	add ix,bc
	ld a,(l288b)
	rlc a
	ld (l288b),a
	cpl
	ld (l288a),a
	ld a,(l2887)
	inc a
	cp #03
	jp nz,l227d
	ld a,(l288c)
	or a
	jp z,l26ac
	dec a
	ld (l288c),a
	or a
	jp nz,l26ac
	ld a,(l288d)
	ld (l288c),a
	ld a,(l2891)
	ld hl,l2890
	add (hl)
	ld (l2891),a
	ld c,a
	ld hl,l288e
	cp (hl)
	jp z,l269f
	ld hl,l288f
	cp (hl)
	jp nz,l26a7
.l269f
	ld a,(l2890)
	xor #fe
	ld (l2890),a
.l26a7
	ld a,#06
	call l295e
.l26ac
	ld a,(l2880)
	or a
	jp nz,l26b9
	ld a,(l2981)
	ld (l2880),a
.l26b9
	ld a,#ff
	ld (l274c),a
	ret
.l26bf
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
.l26e8
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
.l26f3
	nop
	nop
.l26f5
	nop
	nop
.l26f7
	ret
	push hl
	push de
	push bc
	push af
	ld hl,l26f3
	call l26e8
	xor a
	ld (l274c),a
	ld a,l
	ld (l274e),a
	ld a,h
	ld (l274f),a
	ld hl,l2751
	ld de,l2792
	ldi
	ldi
	ldi
	ldi
	ldi
	ld hl,l2751
	ld de,l27cd
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l2799),a
	ld (l27d4),a
	dec a
	ld (l274c),a
	pop af
	pop bc
	pop de
	pop hl
	ret
	push af
	ld hl,l26f5
	rst #00
	cp #ff
	jr z,l274a
	call l26f7
.l274a
	pop af
	ret
.l2751 equ $ + 5
.l2750 equ $ + 4
.l274f equ $ + 3
.l274e equ $ + 2
.l274d equ $ + 1
.l274c
	db #00,#00,#00,#00,#ff,#00
	dw l2756,l2756
.l275c equ $ + 6
.l2758 equ $ + 2
.l2757 equ $ + 1
.l2756
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2792 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2799 equ $ + 3
.l2797 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l27cd equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l27d4 equ $ + 6
.l27d2 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l27ec equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l27f4 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2830 equ $ + 2
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
.l2885 equ $ + 7
.l2883 equ $ + 5
.l2881 equ $ + 3
.l2880 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l288d equ $ + 7
.l288c equ $ + 6
.l288b equ $ + 5
.l288a equ $ + 4
.l2889 equ $ + 3
.l2888 equ $ + 2
.l2887 equ $ + 1
	db #00,#00,#00,#38,#00,#00,#00,#00
.l2892 equ $ + 4
.l2891 equ $ + 3
.l2890 equ $ + 2
.l288f equ $ + 1
.l288e
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
.l2952
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
.l295e
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
.l2986 equ $ + 6
.l2984 equ $ + 4
.l2982 equ $ + 2
.l2981 equ $ + 1
.l2980
	db #00,#03,#29,#04,#29,#05,#2e,#00
.l298c equ $ + 4
.l298a equ $ + 2
.l2988
	db #35,#00,#3b,#00,#41,#00,#73,#00
	db #a5,#00,#ac,#00,#df,#00,#2b,#01
	db #45,#01,#7d,#01,#c2,#01,#e0,#01
	db #2a,#02,#76,#02,#a7,#02,#00,#03
	db #62,#03,#c4,#03,#12,#04,#02,#02
.l29b5 equ $ + 5
	db #00,#01,#00,#01,#ff,#08,#06,#06
.l29bb equ $ + 3
	db #07,#07,#ff,#0c,#0c,#0c,#0c,#0c
	db #ff,#e0,#00,#a0,#c0,#82,#30,#c1
	db #e2,#00,#80,#2d,#82,#2f,#83,#32
	db #84,#32,#83,#30,#82,#2f,#83,#2d
	db #80,#2b,#82,#2c,#80,#2d,#82,#2a
	db #80,#26,#82,#23,#80,#21,#82,#23
	db #80,#26,#82,#2a,#85,#28,#c0,#28
	db #80,#28,#ff,#e0,#00,#a0,#c0,#82
	db #30,#c1,#e2,#00,#80,#31,#82,#32
	db #83,#36,#84,#36,#83,#34,#82,#32
	db #83,#30,#80,#31,#82,#32,#80,#36
	db #82,#32,#80,#32,#82,#2f,#80,#2d
	db #82,#2f,#80,#32,#82,#36,#85,#37
	db #c0,#28,#80,#28,#ff,#e0,#00,#a0
	db #c0,#89,#30,#ff,#e0,#05,#a0,#c1
	db #e2,#00,#80,#21,#23,#26,#28,#82
	db #2f,#80,#2f,#83,#32,#32,#32,#30
	db #82,#2f,#83,#2d,#80,#2b,#82,#2c
	db #80,#2d,#82,#2a,#80,#26,#82,#23
	db #80,#21,#82,#23,#80,#26,#82,#2a
	db #85,#28,#c0,#28,#80,#28,#ff,#e0
	db #00,#a0,#c1,#e2,#00,#80,#2d,#2f
	db #31,#32,#82,#34,#80,#3d,#82,#39
	db #80,#36,#82,#39,#80,#3d,#82,#3b
	db #80,#39,#82,#3b,#80,#39,#82,#37
	db #80,#36,#82,#37,#80,#32,#82,#2f
	db #80,#32,#82,#36,#80,#39,#82,#37
	db #80,#36,#82,#37,#80,#36,#82,#32
	db #80,#2f,#82,#32,#80,#35,#82,#34
	db #80,#32,#82,#34,#80,#32,#82,#2f
	db #80,#2d,#ff,#e0,#00,#a0,#cb,#e1
	db #09,#85,#4a,#49,#83,#48,#47,#46
	db #45,#3e,#c1,#e1,#0a,#80,#49,#c2
	db #e2,#05,#82,#4a,#ff,#e0,#00,#a0
	db #c1,#e1,#0a,#82,#1a,#cd,#e2,#04
	db #80,#2d,#82,#2f,#83,#32,#84,#32
	db #83,#30,#82,#2f,#83,#2d,#80,#2b
	db #82,#2c,#80,#2d,#82,#2a,#80,#26
	db #82,#23,#80,#21,#82,#23,#80,#26
	db #82,#2a,#85,#28,#80,#18,#83,#19
	db #82,#19,#80,#19,#ff,#e0,#00,#a0
	db #cd,#e2,#04,#82,#2d,#80,#2d,#82
	db #2f,#80,#32,#82,#2f,#80,#2d,#82
	db #2f,#80,#32,#82,#2f,#80,#2d,#82
	db #2a,#80,#26,#82,#23,#80,#21,#82
	db #23,#80,#26,#82,#2a,#80,#2d,#82
	db #2a,#80,#2a,#82,#2b,#80,#2a,#82
	db #26,#83,#28,#80,#26,#82,#24,#80
	db #23,#82,#24,#80,#26,#82,#28,#80
	db #2b,#ff,#e0,#00,#a0,#cd,#e2,#04
	db #85,#1a,#1a,#18,#83,#1f,#82,#1e
	db #83,#1a,#80,#1a,#83,#1a,#1a,#1a
	db #18,#18,#19,#82,#19,#80,#1a,#ff
	db #e0,#00,#a0,#cd,#e2,#04,#80,#26
	db #28,#2b,#28,#82,#2b,#80,#32,#82
	db #34,#80,#37,#82,#34,#80,#32,#82
	db #34,#80,#37,#82,#34,#80,#32,#82
	db #2f,#80,#2b,#82,#29,#80,#28,#82
	db #29,#80,#2b,#82,#2d,#80,#30,#82
	db #34,#80,#32,#82,#30,#80,#2d,#82
	db #2f,#80,#30,#82,#37,#80,#35,#82
	db #34,#80,#35,#82,#34,#80,#30,#83
	db #2d,#ff,#e0,#00,#a0,#cd,#e2,#04
	db #80,#28,#2a,#2d,#2a,#82,#2d,#80
	db #34,#82,#36,#80,#39,#82,#36,#80
	db #34,#82,#36,#80,#39,#82,#36,#80
	db #34,#82,#31,#80,#2d,#82,#2b,#80
	db #2a,#82,#2b,#80,#2d,#82,#32,#80
	db #31,#82,#32,#80,#34,#82,#32,#80
	db #2d,#82,#2a,#80,#2d,#82,#32,#80
	db #31,#82,#32,#80,#34,#82,#32,#80
	db #2d,#82,#2a,#80,#28,#ff,#e0,#00
	db #a0,#cd,#e2,#04,#81,#26,#1a,#c1
	db #e1,#0a,#3d,#c2,#e2,#05,#3e,#cd
	db #e2,#04,#27,#1b,#c1,#e1,#0a,#3e
	db #c2,#e2,#05,#3f,#c1,#e1,#0a,#28
	db #40,#29,#41,#2a,#42,#cd,#e2,#04
	db #4a,#3e,#32,#26,#1a,#0e,#ff,#e0
	db #00,#a0,#c1,#e1,#0a,#83,#1a,#a5
	db #d1,#e1,#02,#29,#a0,#c1,#e1,#0a
	db #1a,#a5,#d1,#e1,#02,#29,#a0,#c1
	db #e1,#0a,#18,#a5,#d1,#e1,#02,#29
	db #a0,#c1,#e1,#0a,#1f,#a5,#d1,#e1
	db #02,#82,#29,#a0,#c1,#e1,#0a,#83
	db #1a,#80,#1a,#a5,#d1,#e1,#02,#83
	db #29,#a0,#c1,#e1,#0a,#1a,#a5,#d1
	db #e1,#02,#29,#a0,#c1,#e1,#0a,#18
	db #a5,#d1,#e1,#02,#29,#a0,#c1,#e1
	db #0a,#19,#a5,#d1,#e1,#02,#29,#ff
	db #e0,#00,#a5,#d1,#e1,#02,#80,#35
	db #34,#32,#2e,#a0,#c1,#e1,#0a,#83
	db #1f,#a5,#d1,#e1,#02,#29,#a0,#c1
	db #e1,#0a,#1f,#a5,#d1,#e1,#02,#29
	db #a0,#c1,#e1,#0a,#1d,#a5,#d1,#e1
	db #02,#29,#a0,#c1,#e1,#0a,#24,#a5
	db #d1,#e1,#02,#82,#29,#a0,#c1,#e1
	db #0a,#83,#1f,#80,#1f,#a5,#d1,#e1
	db #02,#83,#29,#a0,#c1,#e1,#0a,#1f
	db #a5,#d1,#e1,#02,#29,#a0,#c1,#e1
	db #0a,#1d,#a5,#d1,#e1,#02,#29,#a0
	db #c1,#e1,#0a,#1c,#a5,#d1,#e1,#02
	db #29,#ff,#e0,#00,#a5,#d1,#e1,#02
	db #80,#35,#34,#32,#2e,#a0,#c1,#e1
	db #0a,#83,#21,#a5,#d1,#e1,#02,#29
	db #a0,#c1,#e1,#0a,#21,#a5,#d1,#e1
	db #02,#29,#a0,#c1,#e1,#0a,#1f,#a5
	db #d1,#e1,#02,#29,#a0,#c1,#e1,#0a
	db #26,#a5,#d1,#e1,#02,#82,#29,#a0
	db #c1,#e1,#0a,#83,#21,#80,#21,#a5
	db #d1,#e1,#02,#83,#29,#a0,#c1,#e1
	db #0a,#21,#a5,#d1,#e1,#02,#29,#a0
	db #c1,#e1,#0a,#1d,#a5,#d1,#e1,#02
	db #29,#a0,#c1,#e1,#0a,#1d,#a5,#d1
	db #e1,#02,#29,#ff,#e0,#00,#a0,#c1
	db #e1,#0a,#83,#1a,#a5,#d1,#e1,#02
	db #29,#a0,#c1,#e1,#0a,#1b,#a5,#d1
	db #e1,#02,#29,#a0,#c1,#e1,#0a,#81
	db #1c,#a5,#d1,#e1,#02,#29,#a0,#c1
	db #e1,#0a,#1d,#a5,#d1,#e1,#02,#29
	db #a0,#c1,#e1,#0a,#1e,#a5,#d1,#e1
	db #02,#29,#a0,#c1,#e1,#0a,#1f,#a5
	db #d1,#e1,#02,#29,#a0,#c1,#e1,#0a
	db #26,#c2,#e2,#05,#26,#c3,#26,#c4
	db #26,#ff,#e0,#00,#a0,#c1,#e1,#0a
	db #80,#3d,#c2,#e2,#05,#3e,#3e,#c1
	db #e1,#0a,#31,#c2,#e2,#05,#32,#32
	db #ff,#0f,#00,#0f,#00,#0f,#00,#0f
	db #00,#01,#0f,#83,#ad,#01,#00,#01
	db #00,#01,#0d,#0d,#ff,#01,#00,#01
	db #00,#01,#0b,#0b,#ff,#01,#00,#01
	db #00,#01,#09,#09,#ff,#01,#00,#01
	db #00,#01,#07,#07,#ff,#01,#00,#01
	db #00,#01,#0f,#82,#88,#08,#00,#83
	db #a1,#01,#0a,#01,#00,#03,#00,#84
	db #a8,#01,#0c,#01,#00,#03,#00,#18
	db #00,#01,#0c,#01,#00,#03,#00,#01
	db #00,#01,#0e,#01,#00,#03,#00,#87
	db #e2,#01,#0e,#01,#00,#82,#9c,#62
	db #00,#01,#0f,#07,#00,#84,#bc,#01
	db #00,#01,#0f,#04,#ff,#08,#00,#88
	db #d3,#01,#0a,#01,#00,#01,#f6,#01
	db #00,#01,#0c,#01,#00,#01,#f4,#01
	db #00,#01,#0e,#01,#00,#01,#f2,#01
	db #00,#01,#0f,#82,#9e,#01,#00,#01
	db #00,#01,#0d,#0d,#ff,#01,#00,#01
	db #00,#01,#0b,#0b,#ff,#01,#00,#01
	db #00,#01,#09,#09,#ff,#01,#00,#01
	db #00,#01,#0e,#01,#00,#01,#f2,#01
	db #00,#01,#0c,#91,#e3,#a1,#63,#a1
	db #63,#05,#03,#08,#00,#01,#00,#0f
	db #ff,#01,#0d,#04,#ff,#08,#00,#8a
	db #d3,#01,#0b,#04,#ff,#08,#00,#8c
	db #d3,#01,#09,#04,#ff,#08,#00,#95
	db #d3,#01,#07,#04,#ff,#08,#00,#9e
	db #da,#01,#0d,#03,#00,#08,#ff,#05
	db #00,#01,#0e,#86,#92,#89,#89,#82
	db #92,#01,#0f,#02,#00,#0c,#ff,#0c
	db #01,#01,#0d,#0c,#ff,#0d,#01,#0e
	db #ff,#01,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#84,#08,#82,#88,#84
	db #08,#01,#00,#01,#3c,#03,#ec,#01
	db #ef,#86,#86,#01,#f1,#01,#2b,#01
	db #e5,#88,#08,#82,#04,#04,#fe,#03
	db #02,#04,#00,#82,#04,#04,#ff,#82
	db #04,#85,#0a,#03,#fd,#85,#0a,#01
	db #05,#01,#00,#01,#63,#03,#e2,#01
	db #d1,#01,#04,#01,#38,#03,#ec,#01
	db #f1,#08,#00,#01,#01,#01,#fe,#01
	db #01,#82,#04,#04,#02,#04,#fc,#04
	db #02,#01,#00,#01,#f4,#01,#f5,#01
	db #ef,#01,#00,#01,#63,#02,#d8,#01
	db #d1,#06,#00,#01,#ff,#01,#00,#01
	db #01,#08,#00,#01,#01,#01,#fe,#01
	db #01,#08,#00,#01,#01,#01,#01,#01
	db #01,#01,#f6,#01,#0a,#01,#01,#01
	db #ff,#01,#02,#01,#f7,#02,#01,#01
	db #05,#06,#00,#01,#ff,#01,#00,#01
	db #01,#08,#00,#01,#01,#01,#fe,#01
	db #01,#08,#00,#01,#01,#01,#01,#01
	db #01,#01,#00,#01,#00,#01,#01,#01
	db #ff,#01,#00,#01,#63,#02,#d8,#01
	db #d1,#06,#00,#01,#ff,#01,#00,#01
	db #01,#08,#00,#01,#01,#01,#fe,#01
	db #01,#08,#00,#01,#01,#01,#01,#01
	db #01,#01,#00,#01,#00,#01,#01,#01
	db #ff,#01,#00,#01,#63,#02,#d8,#01
	db #d1,#06,#00,#01,#ff,#01,#00,#01
	db #01,#08,#00,#01,#01,#01,#fe,#01
	db #01,#08,#00,#01,#01,#01,#01,#01
	db #01,#01,#00,#01,#00,#01,#01,#01
	db #ff
;
.music_info
	db "Bobo (1988)(Infogrames)(Charles Callet)",0
	db "Music Pro",0

	read "music_end.asm"
