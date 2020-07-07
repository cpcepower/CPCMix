; Music of Bobo Level 3 (1988)(Infogrames)(Charles Callet)(Music Pro)
; Ripped by Megachur the 01/01/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOBOLEV3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #4703

	read "music_header.asm"

	xor a
	ld (l4ca8),a
	ld (l4cac),a
	ld hl,l4f24
	ld de,(l4c7c)
	ld (hl),d
	inc hl
	ld (hl),e
;
.init_music
;
	xor a
	ld (l4ca8),a
	ld (l4cac),a
	ld hl,l4cb3
	ld (hl),#00
	ld de,l4cb4
	ld bc,#0128
	ldir
	ld a,(l4edd)
	ld (l4ddc),a
	ld bc,l4edc
	ld hl,(l4ede)
	add hl,bc
	ld (l4ddf),hl
	ld hl,(l4ee0)
	add hl,bc
	ld (l4de1),hl
	ld hl,(l4ee2)
	add hl,bc
	ld (l4cb8),hl
	ld hl,(l4ee4)
	add hl,bc
	ld (l4cf3),hl
	ld hl,(l4ee6)
	add hl,bc
	ld (l4d2e),hl
	ld hl,l4ee8
	ld (l4ddd),hl
	ld a,#0f
	ld (l4de4),a
	ld hl,l4cad
	ld de,l4cb3
	ld bc,#0005
	ldir
	ld hl,l4cad
	ld de,l4cee
	ld bc,#0005
	ldir
	ld hl,l4cad
	ld de,l4d29
	ld bc,#0005
	ldir
	ld a,#ff
	ld (l4ca8),a
	ld c,#38
	ld a,#07
	jp l4eba
	ld a,#0f
.l478e
	push af
	ld a,#0a
	ld (#2abb),a
.l4794
	ld a,(#2abb)
	cp #14
	jr nz,l4794
	pop af
	dec a
	ld (l4de4),a
	or a
	jr nz,l478e
	ret
;
.play_music
;
	ld a,(l4ca8)
	or a
	ret z
	xor a
	ld (l4ca8),a
	ld a,#08
	ld (l4de7),a
	cpl
	ld (l4de6),a
	ld a,(l4de4)
	ld e,a
	ld b,#03
	ld hl,l4d48
.l47bf
	ld a,(hl)
	ld c,a
	ld a,c
	cp e
	jp c,l47c7
	ld a,e
.l47c7
	ld c,a
	ld a,b
	add #07
	push de
	call l4eba
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l47bf
	ld hl,l4ddc
	dec (hl)
	ld ix,l4cb3
	xor a
.l47e1
	ld (l4de3),a
	ld a,(ix+#07)
	or a
	jp nz,l4a98
.l47eb
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l47f5
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jp nz,l4850
	ld l,(ix+#01)
	ld h,(ix+#02)
.l4807
	ld a,(hl)
	cp #ff
	jp nz,l4831
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l4cac)
	or a
	jp z,l4807
	push hl
	push bc
	ld a,(l4ca9)
	ld (l4f24),a
	xor a
	ld (l4ca9),a
	pop bc
	pop hl
	jp l4807
.l4831
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l4ddd)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l4edc
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l47f5
.l4850
	bit 7,a
	jp nz,l48c0
	ld hl,l4dee
	or a
	jp z,l485f
	add (ix+#20)
.l485f
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
	ld a,(l4de3)
	inc a
	ld hl,l4d50
	ld bc,#0014
.l4891
	add hl,bc
	dec a
	jp nz,l4891
	call l4c0e
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l4de3)
	inc a
	ld hl,l4d8c
	ld bc,#0014
.l48ab
	add hl,bc
	dec a
	jp nz,l48ab
	call l4c0e
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l4a84
.l48c0
	bit 6,a
	jp nz,l4913
	bit 5,a
	jp z,l4900
	push af
	xor a
	ld (l4de8),a
	pop af
.l48d0
	and #1f
	ld b,a
	jp z,l48e8
	ld a,(l4de5)
	push hl
	ld hl,l4de6
	and (hl)
	pop hl
	ld c,a
	ld a,#07
	call l4eba
	jp l48f7
.l48e8
	ld a,(l4de5)
	push hl
	ld hl,l4de7
	or (hl)
	pop hl
	ld c,a
	ld a,#07
	call l4eba
.l48f7
	ld c,b
	ld a,#06
	call l4eba
	jp l4a84
.l4900
	and #1f
	ld hl,l4eae
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l4a84
.l4913
	bit 5,a
	jp nz,l4986
	and #1f
	add a
	add a
	add a
	ld hl,(l4ddf)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l492f
	ld a,(de)
	bit 7,a
	jp nz,l4942
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l495b
.l4942
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
	jp nz,l4955
	ld b,#01
.l4955
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l495b
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jp nz,l492f
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l4d50
	ld a,(l4de3)
	inc a
.l497a
	add hl,bc
	dec a
	jp nz,l497a
	ex de,hl
	call l4c0e
	jp l4a84
.l4986
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l499d
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
.l499d
	and l
	ld c,c
	rst #38
	ld c,c
	jp m,#ad49
	ld c,c
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l4a84
	pop hl
	ld a,(hl)
	ld (l4de8),a
	and #3f
	ld (l4dea),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l4deb),a
	ld a,(l4de8)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l4de8),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l4de8
	or (hl)
	ld (l4de8),a
	ld (l4de9),a
	ld a,(l4dea)
	ld (l4ded),a
	ld hl,l4deb
	ld b,#ff
	cp (hl)
	jp nc,l49f0
	ld b,#01
.l49f0
	ld a,b
	ld (l4dec),a
	ld a,(l4ded)
	jp l48d0
	ld a,#02
	jp l4a01
	ld a,#01
.l4a01
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jp z,l4a79
	add a
	add a
	add a
	ld hl,(l4de1)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l4a20
	ld a,(de)
	bit 7,a
	jp nz,l4a35
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
	jp l4a4e
.l4a35
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
	jp nz,l4a48
	ld b,#ff
.l4a48
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l4a4e
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jp nz,l4a20
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l4d8c
	ld a,(l4de3)
	inc a
.l4a6d
	add hl,bc
	dec a
	jp nz,l4a6d
	ex de,hl
	call l4c0e
	jp l4a7e
.l4a79
	ld a,#00
	ld (ix+#09),a
.l4a7e
	ld a,(ix+#09)
	ld (ix+#3a),a
.l4a84
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l47eb
.l4a98
	ld a,(l4ddc)
	or a
	jp nz,l4aa2
	dec (ix+#07)
.l4aa2
	ld a,(ix+#0a)
	cp #04
	jp z,l4af0
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
	jp nz,l4ad1
	dec (hl)
	jp nz,l4ac4
	inc (ix+#0a)
.l4ac4
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l4af0
.l4ad1
	dec (hl)
	jp nz,l4ae7
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
	jp l4ae9
.l4ae7
	inc hl
	inc hl
.l4ae9
	dec (hl)
	jp nz,l4af0
	inc (ix+#0a)
.l4af0
	ld a,(ix+#09)
	or a
	jp z,l4b95
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
	jp nz,l4b30
	dec (hl)
	jp nz,l4b14
	inc (ix+#21)
.l4b14
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,l4b20
	inc b
.l4b20
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l4b60
.l4b30
	dec (hl)
	jp nz,l4b57
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
	jp nz,l4b45
	inc b
.l4b45
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l4b59
.l4b57
	inc hl
	inc hl
.l4b59
	dec (hl)
	jp nz,l4b60
	inc (ix+#21)
.l4b60
	ld a,(ix+#21)
	cp #04
	jp nz,l4b95
	ld a,(ix+#09)
	cp #02
	jp nz,l4b77
	xor a
	ld (ix+#09),a
	jp l4b95
.l4b77
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l4de3)
	inc a
	ld hl,l4d8c
	ld bc,#0014
.l4b8d
	add hl,bc
	dec a
	jp nz,l4b8d
	call l4c0e
.l4b95
	ld c,(ix+#36)
	ld a,(l4de3)
	add a
	call l4eba
	ld c,(ix+#37)
	inc a
	call l4eba
	ld bc,#003b
	add ix,bc
	ld a,(l4de7)
	rlc a
	ld (l4de7),a
	cpl
	ld (l4de6),a
	ld a,(l4de3)
	inc a
	cp #03
	jp nz,l47e1
	ld a,(l4de8)
	or a
	jp z,l4bfb
	dec a
	ld (l4de8),a
	or a
	jp nz,l4bfb
	ld a,(l4de9)
	ld (l4de8),a
	ld a,(l4ded)
	ld hl,l4dec
	add (hl)
	ld (l4ded),a
	ld c,a
	ld hl,l4dea
	cp (hl)
	jp z,l4bee
	ld hl,l4deb
	cp (hl)
	jp nz,l4bf6
.l4bee
	ld a,(l4dec)
	xor #fe
	ld (l4dec),a
.l4bf6
	ld a,#06
	call l4eba
.l4bfb
	ld a,(l4ddc)
	or a
	jp nz,l4c08
	ld a,(l4edd)
	ld (l4ddc),a
.l4c08
	ld a,#ff
	ld (l4ca8),a
	ret
.l4c0e
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
	ld (l4ca8),a
	ld hl,l4f24
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld (l4c7c),de
	ld (hl),#ff
	dec hl
	ld (hl),#00
	ld hl,l4cad
	ld de,l4cb3
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l4cba),a
	ld (l4ca9),a
	dec a
	ld (l4ca8),a
	ld (l4cac),a
	pop af
	pop de
	pop hl
	pop bc
	ret
.l4c7c
	nop
	nop
	push hl
	push de
	push bc
	push af
	xor a
	ld (l4ca8),a
	pop af
	push af
	ld (l4ca9),a
	ld hl,l4cad
	ld de,l4cb3
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l4cba),a
	dec a
	ld (l4ca8),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.l4cad equ $ + 5
.l4cac equ $ + 4
.l4ca9 equ $ + 1
.l4ca8
	db #00,#00,#00,#00,#ff,#00
	dw l4cb2,l4cb2
.l4cb8 equ $ + 6
.l4cb4 equ $ + 2
.l4cb3 equ $ + 1
.l4cb2
	db #ff,#00,#00,#00,#00,#00,#00,#00
.l4cba
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4cee equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4cf3 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4d29 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4d2e equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4d48 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4d50 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4d8c equ $ + 2
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
.l4de1 equ $ + 7
.l4ddf equ $ + 5
.l4ddd equ $ + 3
.l4ddc equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4de9 equ $ + 7
.l4de8 equ $ + 6
.l4de7 equ $ + 5
.l4de6 equ $ + 4
.l4de5 equ $ + 3
.l4de4 equ $ + 2
.l4de3 equ $ + 1
	db #00,#00,#00,#38,#00,#00,#00,#00
.l4dee equ $ + 4
.l4ded equ $ + 3
.l4dec equ $ + 2
.l4deb equ $ + 1
.l4dea
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
.l4eae
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
.l4eba
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
.l4ee2 equ $ + 6
.l4ee0 equ $ + 4
.l4ede equ $ + 2
.l4edd equ $ + 1
.l4edc
	db #00,#03,#a7,#06,#a7,#07,#48,#00
.l4ee8 equ $ + 4
.l4ee6 equ $ + 2
.l4ee4
	db #53,#00,#5e,#00,#69,#00,#9f,#00
	db #d9,#00,#18,#01,#53,#01,#8d,#01
	db #a0,#01,#b0,#01,#bf,#01,#06,#02
	db #50,#02,#b2,#02,#15,#03,#5f,#03
	db #be,#03,#1d,#04,#71,#04,#7f,#04
	db #88,#04,#93,#04,#e8,#04,#34,#05
	db #7b,#05,#be,#05,#0a,#06,#3b,#06
	db #62,#06,#85,#06,#93,#06,#9c,#06
.l4f24
	db #00,#01,#02,#03,#00,#04,#05,#06
	db #05,#07,#ff,#08,#09,#0a,#0b,#08
	db #0c,#0d,#0e,#0d,#0f,#ff,#13,#14
	db #15,#16,#13,#17,#18,#19,#18,#1a
	db #ff,#e0,#00,#a0,#c0,#85,#24,#84
	db #24,#cd,#e1,#04,#82,#3c,#84,#48
	db #86,#45,#c0,#85,#45,#84,#45,#cd
	db #82,#3c,#84,#48,#86,#46,#c0,#85
	db #46,#84,#46,#cd,#82,#3c,#84,#48
	db #86,#46,#c0,#85,#46,#84,#46,#cd
	db #82,#3c,#84,#48,#86,#45,#ff,#e0
	db #00,#a0,#c0,#85,#24,#84,#24,#cd
	db #e1,#04,#82,#3c,#84,#48,#86,#45
	db #c0,#85,#45,#84,#45,#cd,#82,#3c
	db #84,#48,#86,#46,#c0,#85,#46,#84
	db #46,#cd,#82,#3c,#84,#48,#86,#46
	db #c0,#85,#46,#84,#46,#cd,#82,#3c
	db #84,#48,#86,#45,#82,#45,#43,#41
	db #ff,#e0,#00,#a0,#cd,#e1,#04,#85
	db #48,#47,#46,#82,#43,#41,#43,#84
	db #45,#82,#41,#84,#3e,#82,#3c,#84
	db #3b,#82,#3c,#84,#45,#82,#41,#84
	db #46,#82,#43,#84,#40,#82,#3c,#84
	db #3b,#82,#3c,#84,#40,#82,#3c,#84
	db #48,#82,#48,#84,#47,#82,#48,#84
	db #4a,#82,#48,#84,#45,#82,#41,#ff
	db #e0,#00,#a0,#cd,#e1,#04,#85,#48
	db #47,#46,#82,#43,#41,#43,#84,#45
	db #82,#41,#84,#3e,#82,#3c,#84,#3b
	db #82,#3c,#84,#45,#82,#41,#84,#43
	db #82,#40,#84,#3e,#82,#3c,#84,#3b
	db #82,#3c,#84,#43,#82,#45,#84,#46
	db #82,#46,#84,#47,#82,#47,#84,#48
	db #82,#3c,#ff,#e0,#00,#a0,#c0,#85
	db #24,#84,#24,#cd,#e1,#04,#82,#3c
	db #84,#48,#86,#45,#c0,#85,#45,#84
	db #45,#cd,#82,#3c,#84,#48,#86,#46
	db #c0,#85,#46,#84,#46,#cd,#82,#3c
	db #84,#48,#86,#46,#c0,#85,#46,#84
	db #46,#cd,#82,#3c,#84,#48,#86,#45
	db #82,#45,#43,#41,#ff,#e0,#00,#a0
	db #cd,#e1,#04,#85,#3c,#3b,#3a,#37
	db #39,#35,#32,#84,#30,#82,#30,#ff
	db #e0,#00,#a0,#cd,#e1,#04,#85,#40
	db #3c,#45,#43,#45,#41,#4a,#48,#ff
	db #e0,#00,#a0,#cd,#e1,#04,#85,#40
	db #3c,#45,#43,#43,#41,#40,#ff,#e0
	db #00,#a0,#d1,#e1,#0c,#82,#25,#27
	db #29,#84,#2a,#82,#2e,#84,#25,#82
	db #2e,#84,#2a,#82,#2e,#84,#25,#82
	db #2a,#84,#27,#82,#2c,#84,#27,#82
	db #2f,#84,#2c,#82,#2f,#84,#27,#82
	db #2c,#84,#25,#82,#2c,#84,#29,#82
	db #31,#84,#2d,#82,#30,#84,#25,#82
	db #2d,#84,#2a,#82,#2e,#84,#25,#82
	db #2e,#84,#2a,#82,#2e,#ff,#e0,#00
	db #a0,#d1,#e1,#0c,#82,#25,#27,#29
	db #84,#2a,#82,#2e,#84,#25,#82,#2e
	db #84,#2a,#82,#2e,#84,#25,#82,#2a
	db #84,#27,#82,#2c,#84,#27,#82,#2f
	db #84,#2c,#82,#2f,#84,#27,#82,#2c
	db #84,#25,#82,#2c,#84,#29,#82,#31
	db #84,#2d,#82,#30,#84,#25,#82,#2d
	db #84,#2a,#82,#2e,#84,#25,#82,#2e
	db #84,#2a,#82,#25,#30,#2f,#2d,#ff
	db #e0,#00,#a0,#d1,#e2,#01,#83,#34
	db #c7,#e1,#09,#25,#d1,#e2,#01,#34
	db #c7,#e1,#09,#25,#d1,#e2,#01,#84
	db #34,#82,#30,#84,#32,#82,#30,#83
	db #35,#c7,#e1,#09,#28,#d1,#e2,#01
	db #35,#c7,#e1,#09,#28,#d1,#e2,#01
	db #84,#35,#82,#30,#84,#32,#82,#35
	db #83,#3a,#c7,#e1,#09,#2a,#d1,#e2
	db #01,#3a,#c7,#e1,#09,#2a,#d1,#e2
	db #01,#84,#3a,#82,#34,#84,#37,#82
	db #3b,#84,#3c,#82,#3c,#84,#3b,#82
	db #3c,#84,#39,#82,#35,#84,#32,#82
	db #30,#ff,#e0,#00,#a0,#d1,#e2,#01
	db #83,#34,#c7,#e1,#09,#25,#d1,#e2
	db #01,#34,#c7,#e1,#09,#25,#d1,#e2
	db #01,#84,#34,#82,#30,#84,#32,#82
	db #30,#83,#35,#c7,#e1,#09,#28,#d1
	db #e2,#01,#35,#c7,#e1,#09,#28,#d1
	db #e2,#01,#84,#35,#82,#30,#84,#32
	db #82,#30,#83,#37,#c7,#e1,#09,#2a
	db #d1,#e2,#01,#37,#c7,#e1,#09,#2b
	db #d1,#e2,#01,#84,#37,#82,#34,#84
	db #32,#82,#30,#83,#37,#c7,#e1,#09
	db #2a,#d1,#e2,#01,#84,#38,#82,#39
	db #84,#3a,#82,#30,#ff,#e0,#00,#a0
	db #d1,#e1,#0c,#82,#25,#27,#29,#84
	db #2a,#82,#2e,#84,#25,#82,#2e,#84
	db #2a,#82,#2e,#84,#25,#82,#2a,#84
	db #27,#82,#2c,#84,#27,#82,#2f,#84
	db #2c,#82,#2f,#84,#27,#82,#2c,#84
	db #25,#82,#2c,#84,#29,#82,#31,#84
	db #2d,#82,#30,#84,#25,#82,#2d,#84
	db #2a,#82,#2e,#84,#25,#82,#2e,#84
	db #2a,#82,#25,#27,#25,#23,#ff,#e0
	db #00,#a0,#d1,#e1,#0c,#84,#33,#a5
	db #d2,#e1,#02,#82,#2c,#a0,#d1,#e2
	db #05,#48,#46,#a5,#d2,#e1,#02,#2c
	db #a0,#d1,#e1,#0c,#84,#33,#a5,#d2
	db #e1,#02,#82,#2c,#a0,#d1,#e2,#05
	db #24,#30,#a5,#d2,#e1,#02,#2c,#a0
	db #d1,#e1,#0c,#84,#33,#a5,#d2,#e1
	db #02,#82,#2c,#a0,#d1,#e2,#05,#39
	db #35,#a5,#d2,#e1,#02,#2c,#a0,#d1
	db #e1,#0c,#84,#33,#a5,#d2,#e1,#02
	db #82,#2c,#a0,#d1,#e2,#05,#24,#30
	db #a5,#d2,#e1,#02,#2c,#ff,#e0,#00
	db #a0,#d1,#e1,#0c,#84,#33,#a5,#d2
	db #e1,#02,#82,#2c,#a0,#d1,#e2,#05
	db #45,#43,#a5,#d2,#e1,#02,#2c,#a0
	db #d1,#e1,#0c,#84,#33,#a5,#d2,#e1
	db #02,#82,#2c,#a0,#d1,#e2,#05,#24
	db #30,#a5,#d2,#e1,#02,#2c,#a0,#d1
	db #e1,#0c,#84,#33,#a5,#d2,#e1,#02
	db #82,#2c,#a0,#d1,#e2,#05,#48,#45
	db #a5,#d2,#e1,#02,#2c,#a0,#d1,#e1
	db #0c,#84,#33,#a5,#d2,#e1,#02,#82
	db #2c,#a0,#d1,#e2,#05,#24,#30,#a5
	db #d2,#e1,#02,#2c,#ff,#e0,#00,#a0
	db #d1,#e1,#0c,#84,#33,#a5,#d2,#e1
	db #02,#82,#2c,#a0,#d1,#e2,#05,#45
	db #43,#a5,#d2,#e1,#02,#2c,#a0,#d1
	db #e1,#0c,#84,#33,#a5,#d2,#e1,#02
	db #82,#2c,#a0,#d1,#e2,#05,#24,#30
	db #a5,#d2,#e1,#02,#2c,#a0,#d1,#e1
	db #0c,#84,#33,#a5,#d2,#e1,#02,#82
	db #2c,#a0,#d1,#e2,#05,#48,#45,#a5
	db #d2,#e1,#02,#2c,#a0,#d1,#e1,#0c
	db #84,#33,#a5,#d2,#e1,#02,#82,#2c
	db #ff,#e0,#00,#a0,#c1,#e1,#02,#82
	db #27,#c7,#e1,#09,#83,#27,#ff,#e0
	db #00,#a0,#c1,#e1,#0e,#8a,#30,#ff
	db #e0,#00,#e3,#81,#5f,#d6,#e1,#00
	db #86,#15,#ff,#e0,#00,#a0,#d1,#e2
	db #01,#82,#18,#1a,#1c,#d6,#83,#1d
	db #c7,#e1,#09,#25,#d6,#e1,#01,#85
	db #30,#2d,#d1,#82,#1a,#1c,#1d,#d6
	db #85,#1f,#c1,#e1,#0e,#30,#d6,#e1
	db #01,#3c,#d1,#82,#1d,#1c,#1a,#d6
	db #84,#18,#d1,#82,#1a,#d6,#84,#16
	db #d1,#82,#18,#d6,#84,#1f,#82,#18
	db #d1,#22,#21,#1f,#e2,#05,#83,#1d
	db #ca,#e1,#09,#25,#d1,#e2,#05,#84
	db #3c,#82,#35,#84,#39,#82,#30,#ff
	db #e0,#00,#a0,#d1,#e2,#01,#82,#18
	db #1a,#1c,#d6,#83,#1d,#c7,#e1,#09
	db #25,#d6,#e1,#01,#85,#30,#2d,#d1
	db #82,#1a,#1c,#1d,#d6,#85,#1f,#c1
	db #e1,#0e,#30,#d6,#e1,#01,#3c,#d1
	db #82,#1d,#1c,#1a,#d6,#84,#18,#d1
	db #82,#1a,#d6,#84,#16,#d1,#82,#18
	db #d6,#84,#1f,#82,#18,#d1,#22,#21
	db #1f,#d6,#85,#1d,#18,#1d,#d1,#82
	db #1d,#1c,#1a,#ff,#e0,#00,#a0,#d1
	db #e2,#01,#84,#18,#82,#22,#84,#21
	db #82,#22,#84,#1f,#82,#1c,#84,#1a
	db #82,#18,#84,#1d,#82,#29,#84,#28
	db #82,#29,#84,#26,#82,#24,#84,#21
	db #82,#1b,#84,#1c,#82,#24,#84,#22
	db #82,#1b,#84,#1c,#82,#24,#84,#22
	db #82,#1c,#84,#1d,#82,#26,#84,#24
	db #82,#20,#84,#21,#82,#26,#84,#24
	db #82,#1d,#ff,#e0,#00,#a0,#d1,#e2
	db #01,#84,#18,#82,#22,#84,#21,#82
	db #22,#84,#1f,#82,#1c,#84,#1a,#82
	db #18,#84,#1d,#82,#29,#84,#28,#82
	db #29,#84,#26,#82,#24,#84,#21,#82
	db #1d,#84,#1f,#82,#28,#84,#26,#82
	db #28,#84,#26,#82,#23,#84,#21,#82
	db #1f,#84,#24,#82,#24,#84,#23,#82
	db #24,#84,#22,#82,#1f,#ff,#e0,#00
	db #a0,#d1,#e2,#01,#82,#18,#1a,#1c
	db #d6,#83,#1d,#c7,#e1,#09,#2d,#d6
	db #e1,#01,#85,#3c,#41,#d1,#82,#1a
	db #1c,#1d,#d6,#85,#1f,#c1,#e1,#0e
	db #30,#d6,#e1,#01,#3c,#d1,#82,#1d
	db #1c,#1a,#d6,#84,#18,#d1,#82,#1a
	db #d6,#84,#16,#d1,#82,#18,#d6,#84
	db #1f,#82,#18,#d1,#22,#21,#1f,#d6
	db #85,#1d,#18,#1d,#d1,#82,#1a,#1c
	db #1d,#ff,#e0,#00,#a0,#d1,#e2,#01
	db #84,#1f,#82,#1f,#84,#1a,#82,#21
	db #83,#1f,#c7,#e1,#09,#2d,#d1,#e2
	db #01,#84,#3a,#82,#37,#84,#1d,#82
	db #1d,#84,#18,#82,#1f,#83,#1d,#c7
	db #e1,#09,#2f,#d1,#e2,#01,#84,#39
	db #82,#35,#ff,#e0,#00,#a0,#d1,#e2
	db #01,#84,#22,#82,#22,#84,#1f,#82
	db #24,#84,#22,#82,#22,#84,#1f,#82
	db #26,#84,#24,#82,#24,#84,#21,#82
	db #1d,#84,#21,#82,#1d,#84,#1a,#82
	db #18,#ff,#e0,#00,#a0,#d1,#e2,#01
	db #84,#22,#82,#22,#84,#1f,#82,#24
	db #84,#22,#82,#22,#84,#1f,#82,#24
	db #84,#21,#82,#21,#84,#1d,#82,#24
	db #84,#21,#82,#21,#ff,#e0,#ff,#a0
	db #d1,#e1,#0c,#82,#1f,#c7,#e1,#09
	db #83,#1e,#ff,#e0,#00,#a0,#c1,#e1
	db #0e,#8a,#24,#ff,#e0,#00,#e3,#81
	db #5f,#d6,#e1,#00,#8b,#14,#ff,#0f
	db #00,#0f,#00,#0f,#00,#0f,#00,#01
	db #0f,#86,#da,#01,#00,#01,#00,#01
	db #0d,#83,#a7,#01,#00,#01,#00,#01
	db #0b,#83,#a1,#01,#00,#01,#00,#01
	db #09,#83,#9b,#01,#00,#01,#00,#01
	db #07,#83,#95,#01,#00,#01,#00,#01
	db #0a,#9e,#3c,#09,#00,#01,#00,#01
	db #0a,#01,#00,#03,#00,#01,#00,#0f
	db #01,#97,#97,#83,#aa,#01,#00,#01
	db #0d,#01,#00,#03,#00,#01,#00,#07
	db #02,#04,#00,#87,#b1,#8b,#cd,#01
	db #0e,#01,#00,#82,#9c,#62,#00,#01
	db #0f,#07,#00,#84,#bc,#01,#00,#01
	db #0f,#04,#ff,#08,#00,#88,#d3,#01
	db #0b,#02,#00,#01,#f5,#01,#00,#01
	db #0d,#02,#00,#01,#f3,#01,#00,#01
	db #0f,#02,#00,#01,#f1,#01,#00,#01
	db #0f,#06,#00,#0f,#ff,#01,#00,#01
	db #0d,#0d,#ff,#01,#00,#01,#00,#01
	db #0b,#0b,#ff,#01,#00,#01,#00,#01
	db #09,#09,#ff,#01,#00,#01,#00,#01
	db #0e,#01,#00,#01,#f2,#01,#00,#01
	db #0f,#85,#cb,#01,#00,#5a,#00,#82
	db #14,#0c,#00,#01,#00,#82,#94,#01
	db #0f,#1a,#00,#02,#fd,#09,#ff,#01
	db #0b,#04,#ff,#08,#00,#8c,#d3,#01
	db #09,#04,#ff,#08,#00,#95,#d3,#01
	db #0c,#04,#00,#83,#a4,#53,#00,#01
	db #0d,#03,#00,#08,#ff,#05,#00,#01
	db #0f,#09,#ff,#09,#01,#0f,#ff,#01
	db #0f,#02,#00,#0c,#ff,#0c,#01,#01
	db #0d,#0c,#ff,#0d,#01,#0e,#ff,#01
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #02,#84,#08,#82,#88,#84,#08,#01
	db #00,#01,#3c,#03,#ec,#01,#ef,#86
	db #86,#01,#f1,#01,#2b,#01,#e5,#88
	db #08,#82,#04,#04,#fe,#03,#02,#08
	db #00,#84,#08,#82,#88,#84,#08,#85
	db #0a,#03,#fd,#85,#0a,#01,#05,#01
	db #00,#01,#63,#03,#e2,#01,#d1,#01
	db #04,#01,#38,#03,#ec,#01,#f1,#01
	db #00,#01,#09,#01,#0a,#01,#12,#82
	db #04,#04,#02,#04,#fc,#04,#02,#01
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #00,#01,#fa,#01,#0a,#01,#f5,#06
	db #00,#01,#ff,#01,#00,#01,#01,#10
	db #00,#01,#05,#01,#05,#01,#05,#08
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #00,#01,#00,#01,#01,#01,#ff,#01
	db #00,#01,#63,#02,#d8,#01,#d1,#06
	db #00,#01,#ff,#01,#00,#01,#01,#08
	db #00,#01,#01,#01,#fe,#01,#01,#08
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #00,#01,#00,#01,#01,#01,#ff,#01
	db #00,#01,#63,#02,#d8,#01,#d1,#06
	db #00,#01,#ff,#01,#00,#01,#01,#08
	db #00,#01,#01,#01,#fe,#01,#01,#08
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #00,#01,#00,#01,#01,#01,#ff,#01
	db #00,#01,#63,#02,#d8,#01,#d1,#06
	db #00,#01,#ff,#01,#00,#01,#01,#08
	db #00,#01,#01,#01,#fe,#01,#01,#08
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #00,#01,#00,#01,#01,#01,#ff,#00
	db #c0,#0c,#cc,#30,#f0,#3c,#fc,#03
	db #c3,#0f,#cf,#33,#f3,#3f,#ff,#00
	db #f0,#0f,#ff
;
.music_info
	db "Bobo Level 3 (1988)(Infogrames)(Charles Callet)",0
	db "Music Pro",0

	read "music_end.asm"
