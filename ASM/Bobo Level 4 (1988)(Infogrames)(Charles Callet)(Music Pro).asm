; Music of Bobo Level 4 (1988)(Infogrames)(Charles Callet)(Music Pro)
; Ripped by Megachur the 01/01/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOBOLEV4.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #337a

	read "music_header.asm"

	xor a
	ld (l391f),a
	ld (l3923),a
	ld hl,l3baf
	ld de,(l38f3)
	ld (hl),d
	inc hl
	ld (hl),e
;
.init_music
;
	xor a
	ld (l391f),a
	ld (l3923),a
	ld hl,l392a
	ld (hl),#00
	ld de,l392b
	ld bc,#0128
	ldir
	ld a,(l3b54)
	ld (l3a53),a
	ld bc,l3b53
	ld hl,(l3b55)
	add hl,bc
	ld (l3a56),hl
	ld hl,(l3b57)
	add hl,bc
	ld (l3a58),hl
	ld hl,(l3b59)
	add hl,bc
	ld (l392f),hl
	ld hl,(l3b5b)
	add hl,bc
	ld (l396a),hl
	ld hl,(l3b5d)
	add hl,bc
	ld (l39a5),hl
	ld hl,l3b5f
	ld (l3a54),hl
	ld a,#0f
	ld (l3a5b),a
	ld hl,l3924
	ld de,l392a
	ld bc,#0005
	ldir
	ld hl,l3924
	ld de,l3965
	ld bc,#0005
	ldir
	ld hl,l3924
	ld de,l39a0
	ld bc,#0005
	ldir
	ld a,#ff
	ld (l391f),a
	ld c,#38
	ld a,#07
	jp l3b31
	ld a,#0f
.l3405
	push af
	ld a,#0a
	ld (#2cb4),a
.l340b
	ld a,(#2cb4)
	cp #14
	jr nz,l340b
	pop af
	dec a
	ld (l3a5b),a
	or a
	jr nz,l3405
	ret
;
.play_music
;
	ld a,(l391f)
	or a
	ret z
	xor a
	ld (l391f),a
	ld a,#08
	ld (l3a5e),a
	cpl
	ld (l3a5d),a
	ld a,(l3a5b)
	ld e,a
	ld b,#03
	ld hl,l39bf
.l3436
	ld a,(hl)
	ld c,a
	ld a,c
	cp e
	jp c,l343e
	ld a,e
.l343e
	ld c,a
	ld a,b
	add #07
	push de
	call l3b31
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l3436
	ld hl,l3a53
	dec (hl)
	ld ix,l392a
	xor a
.l3458
	ld (l3a5a),a
	ld a,(ix+#07)
	or a
	jp nz,l370f
.l3462
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l346c
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jp nz,l34c7
	ld l,(ix+#01)
	ld h,(ix+#02)
.l347e
	ld a,(hl)
	cp #ff
	jp nz,l34a8
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l3923)
	or a
	jp z,l347e
	push hl
	push bc
	ld a,(l3920)
	ld (l3baf),a
	xor a
	ld (l3920),a
	pop bc
	pop hl
	jp l347e
.l34a8
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l3a54)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l3b53
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l346c
.l34c7
	bit 7,a
	jp nz,l3537
	ld hl,l3a65
	or a
	jp z,l34d6
	add (ix+#20)
.l34d6
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
	ld a,(l3a5a)
	inc a
	ld hl,l39c7
	ld bc,#0014
.l3508
	add hl,bc
	dec a
	jp nz,l3508
	call l3885
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l3a5a)
	inc a
	ld hl,l3a03
	ld bc,#0014
.l3522
	add hl,bc
	dec a
	jp nz,l3522
	call l3885
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l36fb
.l3537
	bit 6,a
	jp nz,l358a
	bit 5,a
	jp z,l3577
	push af
	xor a
	ld (l3a5f),a
	pop af
.l3547
	and #1f
	ld b,a
	jp z,l355f
	ld a,(l3a5c)
	push hl
	ld hl,l3a5d
	and (hl)
	pop hl
	ld c,a
	ld a,#07
	call l3b31
	jp l356e
.l355f
	ld a,(l3a5c)
	push hl
	ld hl,l3a5e
	or (hl)
	pop hl
	ld c,a
	ld a,#07
	call l3b31
.l356e
	ld c,b
	ld a,#06
	call l3b31
	jp l36fb
.l3577
	and #1f
	ld hl,l3b25
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l36fb
.l358a
	bit 5,a
	jp nz,l35fd
	and #1f
	add a
	add a
	add a
	ld hl,(l3a56)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l35a6
	ld a,(de)
	bit 7,a
	jp nz,l35b9
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l35d2
.l35b9
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
	jp nz,l35cc
	ld b,#01
.l35cc
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l35d2
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jp nz,l35a6
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l39c7
	ld a,(l3a5a)
	inc a
.l35f1
	add hl,bc
	dec a
	jp nz,l35f1
	ex de,hl
	call l3885
	jp l36fb
.l35fd
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l3614
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
.l3614
	inc e
	ld (hl),#76
	ld (hl),#71
	ld (hl),#24
	ld (hl),#e1
	ld a,(hl)
	ld (ix+#20),a
	jp l36fb
	pop hl
	ld a,(hl)
	ld (l3a5f),a
	and #3f
	ld (l3a61),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l3a62),a
	ld a,(l3a5f)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l3a5f),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l3a5f
	or (hl)
	ld (l3a5f),a
	ld (l3a60),a
	ld a,(l3a61)
	ld (l3a64),a
	ld hl,l3a62
	ld b,#ff
	cp (hl)
	jp nc,l3667
	ld b,#01
.l3667
	ld a,b
	ld (l3a63),a
	ld a,(l3a64)
	jp l3547
	ld a,#02
	jp l3678
	ld a,#01
.l3678
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jp z,l36f0
	add a
	add a
	add a
	ld hl,(l3a58)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l3697
	ld a,(de)
	bit 7,a
	jp nz,l36ac
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
	jp l36c5
.l36ac
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
	jp nz,l36bf
	ld b,#ff
.l36bf
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l36c5
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jp nz,l3697
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l3a03
	ld a,(l3a5a)
	inc a
.l36e4
	add hl,bc
	dec a
	jp nz,l36e4
	ex de,hl
	call l3885
	jp l36f5
.l36f0
	ld a,#00
	ld (ix+#09),a
.l36f5
	ld a,(ix+#09)
	ld (ix+#3a),a
.l36fb
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l3462
.l370f
	ld a,(l3a53)
	or a
	jp nz,l3719
	dec (ix+#07)
.l3719
	ld a,(ix+#0a)
	cp #04
	jp z,l3767
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
	jp nz,l3748
	dec (hl)
	jp nz,l373b
	inc (ix+#0a)
.l373b
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l3767
.l3748
	dec (hl)
	jp nz,l375e
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
	jp l3760
.l375e
	inc hl
	inc hl
.l3760
	dec (hl)
	jp nz,l3767
	inc (ix+#0a)
.l3767
	ld a,(ix+#09)
	or a
	jp z,l380c
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
	jp nz,l37a7
	dec (hl)
	jp nz,l378b
	inc (ix+#21)
.l378b
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,l3797
	inc b
.l3797
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l37d7
.l37a7
	dec (hl)
	jp nz,l37ce
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
	jp nz,l37bc
	inc b
.l37bc
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l37d0
.l37ce
	inc hl
	inc hl
.l37d0
	dec (hl)
	jp nz,l37d7
	inc (ix+#21)
.l37d7
	ld a,(ix+#21)
	cp #04
	jp nz,l380c
	ld a,(ix+#09)
	cp #02
	jp nz,l37ee
	xor a
	ld (ix+#09),a
	jp l380c
.l37ee
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l3a5a)
	inc a
	ld hl,l3a03
	ld bc,#0014
.l3804
	add hl,bc
	dec a
	jp nz,l3804
	call l3885
.l380c
	ld c,(ix+#36)
	ld a,(l3a5a)
	add a
	call l3b31
	ld c,(ix+#37)
	inc a
	call l3b31
	ld bc,#003b
	add ix,bc
	ld a,(l3a5e)
	rlc a
	ld (l3a5e),a
	cpl
	ld (l3a5d),a
	ld a,(l3a5a)
	inc a
	cp #03
	jp nz,l3458
	ld a,(l3a5f)
	or a
	jp z,l3872
	dec a
	ld (l3a5f),a
	or a
	jp nz,l3872
	ld a,(l3a60)
	ld (l3a5f),a
	ld a,(l3a64)
	ld hl,l3a63
	add (hl)
	ld (l3a64),a
	ld c,a
	ld hl,l3a61
	cp (hl)
	jp z,l3865
	ld hl,l3a62
	cp (hl)
	jp nz,l386d
.l3865
	ld a,(l3a63)
	xor #fe
	ld (l3a63),a
.l386d
	ld a,#06
	call l3b31
.l3872
	ld a,(l3a53)
	or a
	jp nz,l387f
	ld a,(l3b54)
	ld (l3a53),a
.l387f
	ld a,#ff
	ld (l391f),a
	ret
.l3885
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
	ld (l391f),a
	ld hl,l3baf
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld (l38f3),de
	ld (hl),#ff
	dec hl
	ld (hl),#00
	ld hl,l3924
	ld de,l392a
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l3931),a
	ld (l3920),a
	dec a
	ld (l391f),a
	ld (l3923),a
	pop af
	pop de
	pop hl
	pop bc
	ret
.l38f3
	nop
	nop
	push hl
	push de
	push bc
	push af
	xor a
	ld (l391f),a
	pop af
	push af
	ld (l3920),a
	ld hl,l3924
	ld de,l392a
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l3931),a
	dec a
	ld (l391f),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.l3924 equ $ + 5
.l3923 equ $ + 4
.l3920 equ $ + 1
.l391f
	db #00,#00,#00,#00,#ff,#00
	dw l3929,l3929
.l392f equ $ + 6
.l392b equ $ + 2
.l392a equ $ + 1
.l3929
	db #ff,#00,#00,#00,#00,#00,#00,#00
.l3931
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3965 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l396a equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l39a0 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l39a5 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l39bf equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l39c7 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3a03 equ $ + 2
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
.l3a58 equ $ + 7
.l3a56 equ $ + 5
.l3a54 equ $ + 3
.l3a53 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3a60 equ $ + 7
.l3a5f equ $ + 6
.l3a5e equ $ + 5
.l3a5d equ $ + 4
.l3a5c equ $ + 3
.l3a5b equ $ + 2
.l3a5a equ $ + 1
	db #00,#00,#00,#38,#00,#00,#00,#00
.l3a65 equ $ + 4
.l3a64 equ $ + 3
.l3a63 equ $ + 2
.l3a62 equ $ + 1
.l3a61
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
.l3b25
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
.l3b31
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
.l3b59 equ $ + 6
.l3b57 equ $ + 4
.l3b55 equ $ + 2
.l3b54 equ $ + 1
.l3b53
	db #00,#01,#e5,#05,#e5,#06,#5c,#00
.l3b5f equ $ + 4
.l3b5d equ $ + 2
.l3b5b
	db #6e,#00,#80,#00,#92,#00,#9b,#00
	db #c7,#00,#f3,#00,#20,#01,#48,#01
	db #68,#01,#88,#01,#a8,#01,#c8,#01
	db #f3,#01,#20,#02,#3d,#02,#57,#02
	db #80,#02,#94,#02,#b4,#02,#d4,#02
	db #f4,#02,#08,#03,#28,#03,#48,#03
	db #68,#03,#88,#03,#b0,#03,#b9,#03
	db #c5,#03,#d9,#03,#2d,#04,#41,#04
	db #85,#04,#c9,#04,#0d,#05,#51,#05
	db #8d,#05,#98,#05,#a1,#05,#aa,#05
.l3baf equ $ + 4
	db #b6,#05,#de,#05,#00,#00,#01,#01
	db #02,#02,#03,#04,#05,#06,#07,#08
	db #09,#0a,#0b,#0c,#04,#ff,#0f,#0f
	db #0f,#0f,#10,#10,#11,#12,#0f,#13
	db #14,#0f,#0f,#13,#15,#16,#12,#ff
	db #1b,#1b,#1b,#1b,#1b,#1b,#1b,#1c
	db #1d,#1e,#1f,#20,#1b,#1b,#1b,#1b
	db #1c,#ff,#e0,#00,#a0,#c0,#8b,#30
	db #89,#30,#ff,#e0,#00,#a0,#c2,#e2
	db #05,#83,#2e,#c1,#e1,#0a,#2e,#c2
	db #e2,#05,#2e,#c1,#e1,#0a,#2e,#c2
	db #e2,#05,#33,#34,#35,#35,#35,#35
	db #35,#37,#38,#38,#38,#38,#37,#34
	db #35,#35,#35,#35,#32,#30,#ff,#e0
	db #05,#a0,#c2,#e2,#05,#83,#2e,#c1
	db #e1,#0a,#2e,#c2,#e2,#05,#2e,#c1
	db #e1,#0a,#2e,#c2,#e2,#05,#33,#34
	db #35,#35,#35,#35,#35,#37,#38,#38
	db #38,#38,#37,#34,#35,#35,#35,#35
	db #32,#30,#ff,#e0,#00,#a0,#c2,#e2
	db #05,#83,#35,#c1,#e1,#0a,#35,#c2
	db #e2,#05,#35,#c1,#e1,#0a,#35,#c2
	db #e2,#05,#3a,#35,#33,#c1,#e1,#0a
	db #33,#c2,#e2,#05,#33,#33,#32,#30
	db #c7,#e1,#04,#89,#2e,#87,#2e,#ff
	db #e0,#00,#a1,#c0,#85,#3c,#a5,#d3
	db #e1,#02,#81,#42,#42,#d2,#83,#41
	db #d3,#81,#3f,#d4,#3d,#83,#3d,#d3
	db #81,#3e,#3d,#3c,#3b,#d2,#83,#3a
	db #81,#37,#36,#d1,#83,#2a,#2a,#ff
	db #e0,#00,#a0,#c9,#e1,#05,#83,#29
	db #2b,#2e,#30,#32,#35,#37,#35,#3a
	db #37,#35,#32,#30,#2e,#32,#30,#2e
	db #2b,#29,#26,#2e,#2b,#29,#26,#ff
	db #e0,#00,#a0,#c9,#e1,#05,#83,#24
	db #26,#28,#2b,#2d,#30,#32,#30,#34
	db #32,#30,#2d,#2b,#28,#30,#2d,#2b
	db #28,#26,#24,#28,#26,#24,#1f,#ff
	db #e0,#00,#a0,#c9,#e1,#05,#83,#29
	db #2b,#2d,#30,#2d,#35,#32,#30,#39
	db #35,#32,#30,#35,#32,#30,#2d,#2b
	db #29,#30,#2d,#2b,#29,#26,#29,#ff
	db #e0,#00,#a0,#c9,#e1,#05,#83,#3a
	db #37,#35,#32,#30,#2e,#2b,#29,#2b
	db #2e,#30,#32,#37,#35,#37,#3a,#39
	db #3a,#3e,#3d,#3c,#3a,#37,#35,#ff
	db #e0,#00,#a0,#c9,#e1,#05,#85,#41
	db #83,#41,#85,#40,#83,#40,#85,#3f
	db #83,#3f,#85,#3e,#83,#3e,#3a,#37
	db #35,#85,#3a,#d1,#83,#3a,#c2,#3a
	db #c3,#3a,#c4,#3a,#d1,#3a,#c2,#3a
	db #c3,#3a,#ff,#e0,#00,#a0,#c9,#e1
	db #05,#85,#3e,#83,#3e,#85,#3d,#83
	db #3d,#85,#3c,#83,#3c,#3a,#37,#35
	db #85,#3c,#d1,#83,#3c,#c2,#3c,#c3
	db #3c,#c4,#3c,#d1,#3c,#c2,#3c,#c3
	db #3c,#d1,#3c,#c2,#3c,#c3,#3c,#ff
	db #e0,#00,#a0,#c9,#e1,#05,#83,#3a
	db #39,#3a,#85,#3e,#3c,#3a,#37,#83
	db #34,#35,#39,#85,#3a,#3e,#41,#83
	db #40,#3f,#85,#3e,#ff,#e0,#00,#a0
	db #c9,#e1,#05,#83,#3a,#39,#3a,#85
	db #3e,#3c,#39,#35,#33,#33,#83,#33
	db #31,#32,#87,#3a,#85,#3a,#ff,#e0
	db #02,#a0,#d1,#e2,#05,#82,#24,#28
	db #2b,#26,#2a,#2d,#81,#28,#2c,#2f
	db #29,#2d,#30,#80,#2b,#2f,#32,#33
	db #34,#35,#36,#37,#c2,#36,#37,#c3
	db #36,#37,#c4,#36,#37,#36,#37,#ff
	db #e0,#00,#a0,#c9,#e1,#05,#82,#34
	db #35,#84,#37,#82,#39,#3b,#3c,#37
	db #34,#85,#30,#ff,#e0,#00,#a0,#d1
	db #e2,#05,#83,#16,#1b,#1c,#1d,#1c
	db #1d,#16,#1b,#1c,#1d,#1c,#1d,#16
	db #1b,#1c,#1d,#1c,#1d,#16,#1b,#1c
	db #1d,#1c,#1d,#ff,#e0,#05,#a0,#d1
	db #e2,#05,#83,#16,#1b,#1c,#1d,#1c
	db #1d,#16,#1b,#1c,#1d,#1c,#1d,#16
	db #1b,#1c,#1d,#1c,#1d,#16,#1b,#1c
	db #1d,#1c,#1d,#ff,#e0,#00,#a0,#d1
	db #e2,#05,#83,#1d,#22,#23,#24,#23
	db #24,#1b,#20,#21,#22,#21,#22,#16
	db #1b,#1c,#1d,#1c,#1d,#16,#1b,#1c
	db #1d,#1c,#1d,#ff,#e0,#00,#a0,#d1
	db #e2,#05,#83,#16,#1b,#1c,#1d,#1c
	db #1d,#16,#1b,#1c,#1d,#1c,#1d,#ff
	db #e0,#02,#a0,#d1,#e2,#05,#83,#16
	db #1b,#1c,#1d,#1c,#1d,#16,#1b,#1c
	db #1d,#1c,#1d,#16,#1b,#1c,#1d,#1c
	db #1d,#16,#1b,#1c,#1d,#1c,#1d,#ff
	db #e0,#00,#a0,#d1,#e2,#05,#83,#1d
	db #21,#22,#24,#23,#24,#1d,#21,#22
	db #24,#23,#24,#1d,#21,#22,#24,#23
	db #24,#1d,#21,#22,#24,#23,#24,#ff
	db #e0,#00,#a0,#d1,#e2,#05,#83,#16
	db #1b,#1c,#1d,#1c,#1d,#16,#1b,#1c
	db #1d,#1c,#1d,#1d,#22,#24,#26,#25
	db #26,#1d,#22,#24,#26,#25,#26,#ff
	db #e0,#00,#a0,#d1,#e2,#05,#83,#1d
	db #21,#22,#24,#23,#24,#1d,#21,#22
	db #24,#23,#24,#16,#1b,#1c,#1d,#1c
	db #1d,#16,#1b,#1c,#1d,#1c,#1d,#ff
	db #e0,#00,#a0,#c2,#e2,#05,#82,#18
	db #1c,#1f,#1a,#1e,#21,#81,#1c,#20
	db #23,#1d,#21,#24,#80,#1f,#23,#26
	db #27,#28,#29,#2a,#2b,#2a,#2b,#c3
	db #2a,#2b,#c4,#2a,#2b,#2a,#2b,#ff
	db #e0,#eb,#a0,#c7,#e1,#06,#8b,#54
	db #ff,#e0,#f4,#a0,#c9,#e1,#05,#82
	db #48,#43,#40,#48,#ff,#e0,#00,#a0
	db #c9,#e1,#04,#82,#30,#32,#84,#34
	db #82,#35,#37,#34,#30,#2b,#85,#30
	db #ff,#e0,#00,#a1,#cf,#e2,#00,#83
	db #00,#a2,#d0,#00,#a1,#ce,#00,#a5
	db #d1,#e1,#02,#2a,#d2,#2a,#d3,#2a
	db #a1,#cf,#e2,#00,#00,#a2,#d0,#00
	db #a1,#ce,#00,#a5,#d1,#e1,#02,#2a
	db #d2,#2a,#d3,#2a,#a1,#cf,#e2,#00
	db #00,#a2,#d0,#00,#a1,#ce,#00,#a5
	db #d1,#e1,#02,#2a,#d2,#2a,#d3,#2a
	db #a1,#cf,#e2,#00,#00,#a2,#d0,#00
	db #a1,#ce,#00,#a5,#d1,#e1,#02,#2a
	db #d2,#2a,#d3,#2a,#ff,#e0,#00,#a5
	db #d1,#e1,#02,#83,#41,#40,#3f,#3e
	db #3d,#3c,#3b,#3a,#39,#38,#37,#36
	db #ff,#e0,#00,#a0,#c9,#e1,#04,#83
	db #29,#2b,#2e,#a5,#d1,#e1,#02,#2a
	db #d2,#2a,#a0,#c9,#e1,#04,#35,#37
	db #35,#3a,#a5,#d1,#e1,#02,#2a,#d2
	db #2a,#a0,#c9,#e1,#04,#32,#30,#2e
	db #32,#a5,#d1,#e1,#02,#2a,#d2,#2a
	db #a0,#c9,#e1,#04,#2b,#29,#26,#2e
	db #a5,#d1,#e1,#02,#2a,#d2,#2a,#a0
	db #c9,#e1,#04,#26,#ff,#e0,#00,#a0
	db #c9,#e1,#04,#83,#24,#26,#28,#a5
	db #d1,#e1,#02,#2a,#d2,#2a,#a0,#c9
	db #e1,#04,#30,#32,#30,#34,#a5,#d1
	db #e1,#02,#2a,#d2,#2a,#a0,#c9,#e1
	db #04,#2d,#2b,#28,#30,#a5,#d1,#e1
	db #02,#2a,#d2,#2a,#a0,#c9,#e1,#04
	db #28,#26,#24,#28,#a5,#d1,#e1,#02
	db #2a,#d2,#2a,#a0,#c9,#e1,#04,#28
	db #ff,#e0,#00,#a0,#c9,#e1,#04,#83
	db #2d,#30,#32,#a5,#d1,#e1,#02,#2a
	db #d2,#2a,#a0,#c9,#e1,#04,#39,#35
	db #32,#3c,#a5,#d1,#e1,#02,#2a,#d2
	db #2a,#a0,#c9,#e1,#04,#35,#39,#35
	db #35,#a5,#d1,#e1,#02,#2a,#d2,#2a
	db #a0,#c9,#e1,#04,#32,#35,#32,#30
	db #a5,#d1,#e1,#02,#2a,#d2,#2a,#a0
	db #c9,#e1,#04,#3c,#ff,#e0,#00,#a0
	db #c9,#e1,#04,#83,#3e,#3d,#3c,#a5
	db #d1,#e1,#02,#2a,#d2,#2a,#a0,#c9
	db #e1,#04,#35,#3a,#37,#35,#a5,#d1
	db #e1,#02,#2a,#d2,#2a,#a0,#c9,#e1
	db #04,#2e,#3d,#3c,#3d,#a5,#d1,#e1
	db #02,#2a,#d2,#2a,#a0,#c9,#e1,#04
	db #3e,#41,#40,#3f,#a5,#d1,#e1,#02
	db #2a,#d2,#2a,#a0,#c9,#e1,#04,#3a
	db #ff,#e0,#00,#a1,#cf,#e2,#00,#83
	db #00,#a2,#d0,#00,#a1,#ce,#00,#a5
	db #d1,#e1,#02,#2a,#d2,#2a,#d3,#2a
	db #a1,#cf,#e2,#00,#81,#00,#a2,#d0
	db #00,#a1,#ce,#00,#a5,#d1,#e1,#02
	db #2a,#d2,#2a,#d3,#2a,#d2,#35,#33
	db #31,#d1,#30,#d2,#30,#d3,#30,#d4
	db #30,#30,#30,#30,#ff,#e0,#00,#e3
	db #01,#42,#cc,#e1,#09,#8b,#00,#ff
	db #e0,#00,#a0,#c1,#e1,#08,#87,#26
	db #ff,#e0,#f6,#a0,#c7,#e1,#06,#8b
	db #48,#ff,#e0,#00,#a0,#d1,#e2,#05
	db #83,#43,#40,#3c,#43,#ff,#e0,#00
	db #a0,#d1,#e2,#05,#83,#18,#a2,#d0
	db #e2,#00,#00,#a5,#d1,#e1,#02,#2a
	db #d2,#2a,#d1,#36,#30,#a0,#e2,#05
	db #18,#a1,#cf,#e2,#00,#00,#a0,#d1
	db #e2,#05,#18,#86,#18,#ff,#e0,#00
	db #a0,#c0,#86,#30,#ff,#0f,#00,#0f
	db #00,#0f,#00,#0f,#00,#01,#0f,#83
	db #ad,#01,#00,#01,#00,#01,#0d,#0d
	db #ff,#01,#00,#01,#00,#01,#0b,#0b
	db #ff,#01,#00,#01,#00,#01,#09,#09
	db #ff,#01,#00,#01,#00,#01,#07,#07
	db #ff,#01,#00,#01,#00,#01,#0f,#82
	db #88,#08,#00,#83,#a1,#01,#0f,#32
	db #00,#8a,#da,#8a,#bc,#01,#0c,#01
	db #00,#03,#00,#18,#00,#01,#0b,#01
	db #00,#03,#00,#01,#00,#01,#0e,#01
	db #00,#03,#00,#87,#e2,#01,#0e,#01
	db #00,#82,#9c,#62,#00,#01,#0f,#32
	db #00,#84,#bc,#01,#00,#01,#0f,#04
	db #ff,#08,#00,#88,#d3,#01,#0a,#01
	db #00,#01,#f6,#01,#00,#01,#0c,#01
	db #00,#01,#f4,#01,#00,#01,#0e,#01
	db #00,#01,#f2,#01,#00,#01,#0f,#0f
	db #ff,#01,#00,#01,#00,#01,#0d,#0d
	db #ff,#01,#00,#01,#00,#01,#0b,#0b
	db #ff,#01,#00,#01,#00,#01,#09,#09
	db #ff,#01,#00,#01,#00,#01,#0e,#01
	db #00,#01,#f2,#01,#00,#01,#0c,#91
	db #e3,#a1,#63,#a1,#63,#82,#14,#0c
	db #00,#01,#00,#82,#94,#01,#0d,#04
	db #ff,#08,#00,#8a,#d3,#01,#0b,#04
	db #ff,#08,#00,#8c,#d3,#01,#09,#04
	db #ff,#08,#00,#95,#d3,#01,#07,#04
	db #ff,#08,#00,#9e,#da,#01,#0d,#03
	db #00,#08,#ff,#05,#00,#01,#0e,#86
	db #92,#89,#89,#82,#92,#01,#0f,#02
	db #00,#0c,#ff,#0c,#01,#01,#0d,#0c
	db #ff,#0d,#01,#0e,#ff,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#84
	db #08,#82,#88,#84,#08,#01,#00,#01
	db #3c,#03,#ec,#01,#ef,#86,#86,#01
	db #f1,#01,#2b,#01,#e5,#84,#08,#82
	db #04,#04,#fe,#03,#02,#04,#00,#82
	db #04,#04,#ff,#82,#04,#85,#0a,#03
	db #fd,#85,#0a,#01,#05,#01,#00,#01
	db #63,#03,#e2,#01,#d1,#01,#04,#01
	db #38,#02,#da,#01,#26,#08,#00,#01
	db #01,#01,#fe,#01,#01,#82,#04,#04
	db #02,#04,#fc,#04,#02,#01,#00,#01
	db #00,#01,#01,#01,#ff,#01,#00,#01
	db #63,#02,#d8,#01,#d1,#06,#00,#01
	db #ff,#01,#00,#01,#01,#08,#00,#01
	db #01,#01,#fe,#01,#01,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff,#01,#00,#01
	db #63,#02,#d8,#01,#d1,#06,#00,#01
	db #ff,#01,#00,#01,#01,#08,#00,#01
	db #01,#01,#fe,#01,#01,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff,#01,#00,#01
	db #63,#02,#d8,#01,#d1,#06,#00,#01
	db #ff,#01,#00,#01,#01,#08,#00,#01
	db #01,#01,#fe,#01,#01,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff,#01,#00,#01
	db #63,#02,#d8,#01,#d1,#06,#00,#01
	db #ff,#01,#00,#01,#01,#08,#00,#01
	db #01,#01,#fe,#01,#01,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff
;
.music_info
	db "Bobo Level 4 (1988)(Infogrames)(Charles Callet)",0
	db "Music Pro",0

	read "music_end.asm"
