; Music of Rock N Roll Intro (1989)(Rainbow Arts)(Barry Leitch)()
; Ripped by Megachur the 27/04/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ROCKNROI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #40f5

	read "music_header.asm"

	push af
	push bc
	push de
	push hl
	ex af,af'
	exx
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	call l4118
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	exx
	ex af,af'
	pop hl
	pop de
	pop bc
	pop af
	ei
	reti
.l4117
	nop
.l4118
	ei
;
.real_play_music
;
	ld hl,l4117
	inc (hl)
	ld a,(hl)
	cp #06
	jr nz,l4124
	ld (hl),#00
.l4124
	ld a,(hl)
	or a
	jp z,l41e8
	cp #03
	jp z,l4229
	ret
;
.init_music	; #412f
;
	add a
	ld e,a
	ld d,#00
	ld hl,l4b18
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4a62),de
	ex de,hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l4a54),bc
	ex de,hl
	ld (l4a64),de
	ld de,l4a66
	call l41e0
	xor a
	ld (l4a77),a
	ld (l4a93),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4aa4),de
	ex de,hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l4a96),bc
	ex de,hl
	ld (l4aa6),de
	ld de,l4aa8
	call l41e0
	xor a
	ld (l4ab9),a
	ld (l4ad5),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4ae6),de
	ex de,hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l4ad8),bc
	ex de,hl
	ld (l4ae8),de
	ld de,l4aea
	call l41e0
	xor a
	ld (l4afb),a
	ld (l4b17),a
	xor a
	ld (l4a05),a
	ld (l4a0d),a
	ld (l4a07),a
	ld (l4a03),a
	ld (l4a09),a
	ld hl,l4a24
	ld (l4a52),hl
	ld hl,l4a3a
	ld (l4a94),hl
	ld hl,l4a50
	ld (l4ad6),hl
	ld hl,#073f
	call l4443
	ld hl,#0800
	call l4443
	inc h
	call l4443
	inc h
	call l4443
	ld a,#3f
	ld (l4a02),a
	ret
.l41e0
	xor a
	ld b,#07
.l41e3
	ld (de),a
	inc de
	djnz l41e3
	ret
.l41e8
	ld a,(l4a03)
	or a
	ret m
	ld a,(l4a09)
	or a
	jr nz,l420e
	ld ix,l4a52
	call l4460
	ld ix,l4a94
	call l4460
	ld ix,l4ad6
	call l4460
	ld a,(l4a08)
	ld (l4a09),a
.l420e
	ld ix,l4a52
	call l42ae
	ld ix,l4a94
	call l42ae
	ld ix,l4ad6
	call l42ae
	ld hl,l4a09
	dec (hl)
	jr l4243
.l4229
	ld a,(l4a03)
	or a
	ret m
	ld ix,l4a52
	call l4329
	ld ix,l4a94
	call l4329
	ld ix,l4ad6
	call l4329
.l4243
	ld a,(l4a02)
	ld h,#07
	call l4444
	ld ix,l4a52
	call l425d
	ld ix,l4a94
	call l425d
	ld ix,l4ad6
.l425d
	ld a,(ix+#41)
	or a
	jr z,l426d
	ld h,(ix+#1d)
	xor a
	ld (l4a0e),a
	jp l444f
.l426d
	ld a,(ix+#3d)
	ld h,(ix+#1b)
	call l444f
	ld a,(ix+#3e)
	inc h
	call l444f
	ld h,(ix+#1d)
	ld a,(ix+#40)
	call l444f
	ld a,(ix+#19)
	or a
	jp z,l4290
	jp l429a
.l4290
	ld a,(ix+#1a)
	or a
	ret z
	ld a,(ix+#3a)
	or a
	ret z
.l429a
	ld a,(ix+#40)
	ld (l4a0e),a
	ld a,(ix+#38)
	ld (l4a0f),a
	ld a,(ix+#3f)
	ld h,#06
	jp l444f
.l42ae
	bit 0,(ix+#17)
	jp z,l42c9
	ld a,(ix+#2e)
	or a
	jp nz,l42c6
	res 0,(ix+#17)
	set 1,(ix+#17)
	jr l42c9
.l42c6
	dec (ix+#2e)
.l42c9
	bit 0,(ix+#15)
	jr z,l42e2
	ld a,(ix+#26)
	or a
	jr nz,l42df
	res 0,(ix+#15)
	set 1,(ix+#15)
	jr l42e2
.l42df
	dec (ix+#26)
.l42e2
	bit 1,(ix+#15)
	jr z,l4329
	ld l,(ix+#29)
	ld h,(ix+#2a)
	ld e,(ix+#2b)
	ld d,(ix+#2c)
	bit 2,(ix+#15)
	jr z,l430a
	ld c,(ix+#27)
	ld b,(ix+#28)
	add hl,bc
	push hl
	and a
	sbc hl,de
	pop hl
	jr nc,l431c
	jr l431d
.l430a
	ld c,(ix+#27)
	ld b,(ix+#28)
	and a
	sbc hl,bc
	push hl
	and a
	sbc hl,de
	pop hl
	jr c,l431c
	jr l431d
.l431c
	ex de,hl
.l431d
	ld (ix+#29),l
	ld (ix+#2a),h
	ld (ix+#3d),l
	ld (ix+#3e),h
.l4329
	ld a,(ix+#1a)
	or a
	jr z,l433b
	ld a,(ix+#3a)
	or a
	jr nz,l4338
	call l483b
.l4338
	dec (ix+#3a)
.l433b
	ld a,(ix+#18)
	or a
	jr z,l4386
	ld l,(ix+#06)
	ld h,(ix+#07)
.l4347
	ld a,(hl)
	inc hl
	cp #80
	jr z,l4386
	cp #81
	jr nz,l4363
	ld e,(hl)
	ld d,#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	add hl,de
	ld (ix+#06),l
	ld (ix+#07),h
	jr l4347
.l4363
	ld (ix+#06),l
	ld (ix+#07),h
	add (ix+#37)
	ld (ix+#37),a
	add a
	ld e,a
	ld d,#00
	ld hl,l4882
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#29),e
	ld (ix+#2a),d
	ld (ix+#3d),e
	ld (ix+#3e),d
.l4386
	ld a,(ix+#19)
	or a
	jr z,l43c5
	ld l,(ix+#08)
	ld h,(ix+#09)
.l4392
	ld a,(hl)
	inc hl
	cp #80
	jr z,l43c5
	cp #81
	jr nz,l43ae
	ld e,(hl)
	ld d,#00
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	add hl,de
	ld (ix+#08),l
	ld (ix+#09),h
	jr l4392
.l43ae
	ld (ix+#08),l
	ld (ix+#09),h
	add (ix+#38)
	ld (ix+#38),a
	ld e,a
	ld d,#00
	ld hl,l4942
	add hl,de
	ld a,(hl)
	ld (ix+#3f),a
.l43c5
	bit 1,(ix+#17)
	jr z,l4412
	ld a,(ix+#33)
	or a
	jr nz,l440f
	ld l,(ix+#30)
	ld h,(ix+#31)
	ld e,(ix+#34)
	ld d,(ix+#35)
	ld a,d
	xor h
	ld d,a
	ld a,e
	xor l
	ld e,a
	ld (ix+#34),e
	ld (ix+#35),d
	ld l,(ix+#29)
	ld h,(ix+#2a)
	ld a,(ix+#15)
	or a
	jr z,l43fe
	bit 2,(ix+#15)
	jr z,l43fe
	add hl,de
	jr l4401
.l43fe
	and a
	sbc hl,de
.l4401
	ld (ix+#3d),l
	ld (ix+#3e),h
	ld a,(ix+#32)
	ld (ix+#33),a
	jr l4412
.l440f
	dec (ix+#33)
.l4412
	ld a,(ix+#14)
	or a
	ret z
	ld a,(ix+#36)
	or a
	jr nz,l443f
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	ld a,(hl)
	inc hl
	cp #ff
	ret z
	ld (ix+#36),a
	ld a,(hl)
	inc hl
	cp (ix+#1e)
	jr c,l4435
	ld a,(ix+#1e)
.l4435
	ld (ix+#40),a
	ld (ix+#0a),l
	ld (ix+#0b),h
	ret
.l443f
	dec (ix+#36)
	ret
.l4443
	ld a,l
.l4444
	exx
	ld b,#f6
	ld de,#80c0
	ld h,#00
	exx
	ld b,#f4
.l444f
	out (c),h
	exx
	out (c),e
	out (c),h
	exx
	out (c),a
	exx
	out (c),d
	out (c),h
	exx
	ret
.l4460
	ld a,(ix+#25)
	or a
	call z,l446b
	dec (ix+#25)
	ret
.l446b
	ld l,(ix+#04)
	ld h,(ix+#05)
	ld (ix+#0a),l
	ld (ix+#0b),h
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld (ix+#06),l
	ld (ix+#07),h
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	ld (ix+#08),l
	ld (ix+#09),h
	ld a,(ix+#2d)
	ld (ix+#2e),a
	ld a,(ix+#16)
	ld (ix+#17),a
	ld a,(ix+#39)
	ld (ix+#3a),a
	ld a,(ix+#1a)
	or a
	jr z,l44b0
	call l4827
	ld a,(ix+#3b)
	ld (ix+#3f),a
.l44b0
	ld (ix+#15),#00
	ld (ix+#38),#00
	ld l,(ix+#00)
	ld h,(ix+#01)
	push hl
	pop iy
	ld l,(ix+#02)
	ld h,(ix+#03)
.l44c7
	ld a,(hl)
	inc hl
	cp #60
	jp c,l4791
	cp #ff
	jr z,l450b
	cp #61
	jp z,l473a
	cp #60
	jp z,l474e
	cp #62
	jp z,l4768
	cp #63
	jp z,l477a
	cp #64
	jp z,l4781
	cp #65
	jp z,l4789
	cp #e0
	jr z,l4557
	cp #c0
	jp c,l4721
	cp #e0
	jp c,l4612
	cp #f0
	jp c,l4729
	sub #ef
	ld (l4a08),a
	jp l44c7
.l450b
	ld a,(iy+#00)
	or (iy+#01)
	jr z,l451f
	ld l,(iy+#00)
	ld h,(iy+#01)
	inc iy
	inc iy
	jr l44c7
.l451f
	ld l,(ix+#12)
	ld h,(ix+#13)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,d
	or e
	jr z,l453d
	ld a,d
	and e
	cp #ff
	jp z,l4551
	ld (ix+#12),l
	ld (ix+#13),h
	ex de,hl
	jr l44c7
.l453d
	ld l,(ix+#10)	; reinit music
	ld h,(ix+#11)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#12),l
	ld (ix+#13),h
	ex de,hl
	jp l44c7
.l4551
	ld a,#ff
	ld (l4a03),a
	ret
.l4557
	ld b,(hl)
	inc hl
	ld a,(hl)
	ld (l45be),a
	inc hl
	ld a,(hl)
	ld (l45ad),a
	ld (l460e),a
	inc hl
	push hl
	set 0,(ix+#15)
	res 1,(ix+#15)
	ld a,b
	ld (l4588),a
	and #0f
	ld (l459e),a
	ld e,a
	ld d,#00
	ld a,(l4a08)
	ld c,a
	ld b,#00
	call l4866
	ld (ix+#26),c
.l4588 equ $ + 1
	ld a,#00
	srl a
	srl a
	srl a
	srl a
	xor #0f
	and #0f
	inc a
	ld c,a
	ld b,#00
	push bc
	ld a,(ix+#24)
.l459e equ $ + 1
	sub #00
	ld e,a
	ld d,#00
	ld a,(l4a08)
	ld c,a
	ld b,#00
	call l4866
	push bc
.l45ad equ $ + 1
	ld a,#00
	add (ix+#23)
	add a
	ld e,a
	ld d,#00
	ld hl,l4882
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
.l45be equ $ + 1
	ld a,#00
	add (ix+#23)
	add a
	ld e,a
	ld d,#00
	ld hl,l4882
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#2b),e
	ld (ix+#2c),d
	pop hl
	push hl
	and a
	sbc hl,de
	pop hl
	jr c,l45e6
	and a
	sbc hl,de
	ld b,h
	ld c,l
	res 2,(ix+#15)
	jr l45f0
.l45e6
	set 2,(ix+#15)
	ex de,hl
	and a
	sbc hl,de
	ld b,h
	ld c,l
.l45f0
	ld a,b
	or c
	jr nz,l45f7
	ld bc,#0001
.l45f7
	pop de
	call l4845
	ld a,b
	or c
	jr nz,l4602
	ld bc,#0001
.l4602
	pop de
	call l4866
	ld (ix+#27),c
	ld (ix+#28),b
	pop hl
.l460e equ $ + 1
	ld a,#00
	jp l4791
.l4612
	push hl
	push iy
	ex af,af'
	xor a
	ld (l46ec),a
	ex af,af'
	sub #c0
	ld (ix+#3c),a
	add a
	ld e,a
	ld d,#00
	ld hl,l4b1a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
	pop iy
	ld a,(iy+#06)
	or (iy+#07)
	jr nz,l4665
	ld a,(iy+#00)
	or (iy+#01)
	jr z,l4665
	ld (ix+#1a),#ff
	ld a,(iy+#00)
	ld (ix+#39),a
	ld (ix+#3a),a
	ld e,(iy+#01)
	ld d,#00
	ld hl,l4942
	add hl,de
	ld c,(hl)
	call l4827
	ld (ix+#3f),c
	ld (ix+#3b),c
	ld a,#01
	ld (l46ec),a
	jr l4669
.l4665
	ld (ix+#1a),#00
.l4669
	ld a,(iy+#02)
	or (iy+#03)
	jr nz,l4677
	res 0,(ix+#16)
	jr l46a6
.l4677
	set 0,(ix+#16)
	set 0,(ix+#17)
	ld a,(iy+#02)
	ld c,a
	and #0f
	ld (ix+#32),a
	ld (ix+#33),a
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#2f),a
	ld a,(iy+#03)
	ld (ix+#2d),a
	ld (ix+#2e),a
	ld (ix+#34),#00
	ld (ix+#35),#00
.l46a6
	ld e,(iy+#04)
	ld d,(iy+#05)
	ld a,d
	or e
	jr z,l46c5
	ld (ix+#06),e
	ld (ix+#07),d
	ld (ix+#0c),e
	ld (ix+#0d),d
	ld (ix+#18),#ff
	call l481d
	jr l46cc
.l46c5
	call l4831
	ld (ix+#18),#00
.l46cc
	ld e,(iy+#06)
	ld d,(iy+#07)
	ld a,d
	or e
	jr z,l46eb
	ld (ix+#08),e
	ld (ix+#09),d
	ld (ix+#0e),e
	ld (ix+#0f),d
	ld (ix+#19),#ff
	call l4827
	jr l46f7
.l46ec equ $ + 1
.l46eb
	ld a,#00
	or a
	jr nz,l46f3
	call l483b
.l46f3
	ld (ix+#19),#00
.l46f7
	ld e,(iy+#08)
	ld d,(iy+#09)
	ld a,d
	or e
	jr z,l4717
	ld (ix+#04),e
	ld (ix+#05),d
	ld (ix+#0a),e
	ld (ix+#0b),d
	ld (ix+#14),#ff
	pop iy
	pop hl
	jp l44c7
.l4717
	ld (ix+#14),#00
	pop iy
	pop hl
	jp l44c7
.l4721
	sub #7f
	ld (ix+#24),a
	jp l44c7
.l4729
	ld b,a
	ld a,(l4a0d)
	or a
	jp m,l44c7
	ld a,b
	sub #e0
	ld (ix+#1e),a
	jp l44c7
.l473a
	ld a,(hl)
	inc hl
	dec iy
	dec iy
	dec iy
	ld (iy+#00),a
	ld (iy+#01),l
	ld (iy+#02),h
	jp l44c7
.l474e
	dec (iy+#00)
	jr z,l475f
	jp m,l475f
	ld l,(iy+#01)
	ld h,(iy+#02)
	jp l44c7
.l475f
	inc iy
	inc iy
	inc iy
	jp l44c7
.l4768
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	dec iy
	dec iy
	ld (iy+#00),l
	ld (iy+#01),h
	ex de,hl
	jp l44c7
.l477a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l44c7
.l4781
	ld a,(hl)
	inc hl
	ld (ix+#23),a
	jp l44c7
.l4789
	ld a,#ff
	ld (l4a07),a
	jp l44c7
.l4791
	push hl
	ld (ix+#36),#00
	add (ix+#23)
	ld (ix+#37),a
	add a
	ld e,a
	ld d,#00
	ld hl,l4882
	add hl,de
	srl e
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#29),l
	ld (ix+#2a),h
	ld (ix+#3d),l
	ld (ix+#3e),h
	ld a,(ix+#19)
	or a
	jr z,l47c7
	ld hl,l4942
	add hl,de
	ld a,(hl)
	ld (ix+#3f),a
	ld (ix+#38),e
.l47c7
	ld a,(ix+#24)
	ld (ix+#25),a
	ld a,(ix+#16)
	or a
	jr z,l480c
	ld (ix+#34),#00
	ld (ix+#35),#00
	ld hl,l49a2
	add hl,de
	ld a,(hl)
	ld c,(ix+#2f)
	or a
	jr z,l4805
	and #0f
	jr z,l4805
	ld b,a
	ld a,(hl)
	bit 7,a
	jr nz,l4800
	bit 6,a
	jr nz,l47fa
.l47f4
	sla c
	djnz l47f4
	jr l4805
.l47fa
	srl c
	djnz l47fa
	jr l4805
.l4800
	ld a,c
	cp b
	jr c,l4805
	ld c,b
.l4805
	ld (ix+#30),c
	ld (ix+#31),#00
.l480c
	pop hl
	ld (ix+#02),l
	ld (ix+#03),h
	push iy
	pop hl
	ld (ix+#00),l
	ld (ix+#01),h
	ret
.l481d
	ld a,(l4a02)
	and (ix+#1f)
	ld (l4a02),a
	ret
.l4827
	ld a,(l4a02)
	and (ix+#21)
	ld (l4a02),a
	ret
.l4831
	ld a,(l4a02)
	or (ix+#20)
	ld (l4a02),a
	ret
.l483b
	ld a,(l4a02)
	or (ix+#22)
	ld (l4a02),a
	ret
.l4845
	push hl
	ld hl,#0000
	ld a,#10
.l484b
	ex af,af'
	sla c
	rl b
	adc hl,hl
	ld a,h
	cp d
	jp nz,l4859
	ld a,l
	cp e
.l4859
	jp c,l485f
	sbc hl,de
	inc bc
.l485f
	ex af,af'
	dec a
	jp nz,l484b
	pop hl
	ret
.l4866
	push de
	push hl
	ld hl,#0000
	ld a,#10
.l486d
	srl d
	rr e
	jp nc,l4875
	add hl,bc
.l4875
	sla c
	rl b
	dec a
	jp nz,l486d
	ld b,h
	ld c,l
	pop hl
	pop de
	ret
.l4882
	dw #0eef,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
	dw #03bc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
	dw #00ef,#00e1,#00d5,#00c9
	dw #00be,#00b3,#00a9,#009f
	dw #0096,#008e,#0086,#007f
	dw #0077,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
.l4942
	db #1f,#1f,#1f,#1e,#1e,#1e,#1d,#1d
	db #1d,#1c,#1c,#1c,#1b,#1b,#1b,#1a
	db #1a,#1a,#19,#19,#19,#18,#18,#18
	db #17,#17,#17,#16,#16,#16,#15,#15
	db #15,#14,#14,#14,#13,#13,#13,#12
	db #12,#12,#11,#11,#11,#10,#10,#10
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#09,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#05,#05
	db #05,#04,#04,#04,#03,#03,#03,#02
	db #02,#02,#01,#01,#01,#00,#00,#00
.l49a2
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#02,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #8e,#8e,#8c,#8c,#8b,#8b,#8a,#8a
	db #89
	db #41,#41,#41,#42,#42,#42,#42,#42
	db #42,#42,#42,#42,#42,#42,#42,#42
	db #42,#42,#42,#42,#42,#42,#42,#42
	db #42,#42,#42,#42,#42,#42,#42,#42
	db #42,#42,#42,#42,#42,#42,#42
.l4a09 equ $ + 7
.l4a08 equ $ + 6
.l4a07 equ $ + 5
.l4a05 equ $ + 3
.l4a03 equ $ + 1
.l4a02
	db #3f,#01,#01,#01,#00,#01,#06,#01
.l4a0f equ $ + 5
.l4a0e equ $ + 4
.l4a0d equ $ + 3
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a24 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a3a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a50 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a54 equ $ + 2
.l4a52
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
.l4a66 equ $ + 4
.l4a64 equ $ + 2
.l4a62
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#08,#0f,#fe
.l4a77 equ $ + 5
	db #01,#f7,#08,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a96 equ $ + 4
.l4a94 equ $ + 2
.l4a93 equ $ + 1
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
.l4aa8 equ $ + 6
.l4aa6 equ $ + 4
.l4aa4 equ $ + 2
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#02,#03,#09
.l4ab9 equ $ + 7
	db #0f,#fd,#02,#ef,#10,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4ad8 equ $ + 6
.l4ad6 equ $ + 4
.l4ad5 equ $ + 3
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
.l4ae8 equ $ + 6
.l4ae6 equ $ + 4
	db #01,#00,#01,#00,#01,#00,#01,#00
.l4aea
	db #00,#00,#00,#00,#00,#00,#00,#04
	db #05,#0a,#0f,#fb,#04,#df,#20,#00
.l4afb equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4b17 equ $ + 5
	db #00,#00,#00,#00,#00,#00
.l4b1a equ $ + 2
.l4b18
	dw l4d06,l4b3a,l4b44,l4b4e
	dw l4b58,l4b62,l4b6c,l4b76
	dw l4b80,l4b8a,l4b94,l4b9e
	dw l4ba8,l4bb2,l4bbc,l4bc6
.l4b3a equ $ + 2
	dw l4bd0,#5401,#0000,l4ca5
.l4b44 equ $ + 4
	dw #0000,l4bda,#0000
	dw #0000,l4ca8,l4d02,l4bdf
.l4b4e
	dw #5401,#0032,l4cab,#0000
.l4b58 equ $ + 2
	dw l4c00,#5401,#0032,l4cb0
.l4b62 equ $ + 4
	dw #0000,l4c21,#5401,#0032
.l4b6c equ $ + 6
	dw l4cb8,#0000,l4c21,#5401
	dw #0032,l4cc0,#0000,l4c21
.l4b76
	dw #0000,#0000,l4cc7,#0000
.l4b80 equ $ + 2
	dw l4c42,#5401,#0032,l4ccc
.l4b8a equ $ + 4
	dw #0000,l4c21,#5401,#0033
.l4b94 equ $ + 6
	dw l4cd4,#0000,l4c63,#5401
	dw #0032,l4cd8,#0000,l4c21
.l4b9e
	dw #0000,#0000,#0000,#0000
.l4ba8 equ $ + 2
	dw #0000,#5401,#0032,l4ce0
.l4bb2 equ $ + 4
	dw #0000,l4c21,#0000,#0032
.l4bbc equ $ + 6
	dw l4ce7,#0000,l4c82,#5401
	dw #0032,l4cec,#0000,l4c21
.l4bc6
	dw #5401,#0032,l4cf3,#0000
.l4bd0 equ $ + 2
	dw l4c21,#5401,#0032,l4cfa
	dw #0000,l4c21
.l4bdf equ $ + 5
.l4bda
	db #05,#0f,#01,#00,#ff,#02,#0f,#02
	db #0e,#02,#0d,#02,#0c,#02,#0b,#02
	db #0a,#02,#09,#02,#08,#02,#07,#02
	db #06,#02,#05,#02,#04,#02,#03,#02
.l4c00 equ $ + 6
	db #02,#02,#01,#01,#00,#ff,#05,#0f
	db #78,#0e,#14,#0d,#14,#0c,#14,#0b
	db #14,#0a,#14,#09,#14,#08,#14,#07
	db #14,#06,#14,#05,#14,#04,#14,#03
.l4c21 equ $ + 7
	db #14,#02,#14,#01,#01,#00,#ff,#05
	db #0f,#05,#0e,#05,#0d,#05,#0c,#05
	db #0b,#78,#0a,#14,#09,#14,#08,#14
	db #07,#14,#06,#14,#05,#14,#04,#14
	db #03,#14,#02,#14,#01,#01,#00,#ff
.l4c42
	db #14,#0f,#14,#0e,#14,#0d,#14,#0c
	db #14,#0b,#14,#0a,#14,#09,#14,#08
	db #14,#07,#14,#06,#14,#05,#14,#04
	db #14,#03,#14,#02,#01,#01,#01,#00
.l4c63 equ $ + 1
	db #ff,#05,#0e,#05,#0d,#05,#0c,#05
	db #0b,#05,#0a,#05,#09,#05,#08,#05
	db #07,#05,#06,#05,#05,#05,#04,#05
	db #03,#05,#02,#05,#01,#01,#00,#ff
.l4c82
	db #05,#0f,#7f,#0e,#7f,#0e,#50,#0d
	db #50,#0c,#50,#0b,#50,#0a,#50,#09
	db #50,#08,#46,#07,#3c,#06,#32,#05
	db #28,#04,#1e,#03,#14,#02,#0a,#01
.l4ca8 equ $ + 6
.l4ca5 equ $ + 3
	db #01,#00,#ff,#fb,#81,#00,#fe,#81
.l4cb0 equ $ + 6
.l4cab equ $ + 1
	db #00,#0c,#00,#f4,#00,#80,#f4,#00
.l4cb8 equ $ + 6
	db #04,#03,#05,#f4,#81,#02,#f4,#00
.l4cc0 equ $ + 6
	db #03,#04,#05,#f4,#81,#02,#f4,#00
.l4cc7 equ $ + 5
	db #07,#05,#f4,#81,#02,#0c,#00,#f4
.l4ccc equ $ + 2
	db #00,#80,#f4,#00,#05,#05,#02,#f4
.l4cd8 equ $ + 6
.l4cd4 equ $ + 2
	db #81,#02,#0c,#00,#f4,#80,#f4,#00
.l4ce0 equ $ + 6
	db #05,#04,#03,#f4,#81,#02,#f4,#00
.l4ce7 equ $ + 5
	db #03,#05,#f8,#81,#02,#0c,#00,#f4
.l4cec equ $ + 2
	db #00,#80,#f4,#00,#04,#08,#f4,#81
.l4cf3 equ $ + 1
	db #01,#f4,#00,#03,#09,#f4,#81,#01
.l4cfa
	db #f4,#00,#04,#05,#03,#f4,#81,#01
.l4d02
	db #28,#fc,#81,#01
.l4d0c equ $ + 6
.l4d06
	dw l4d0c,l4d86,l4e00,l4e7a
	dw l5113,l5088,l5088,l4f71
	dw l4f71,l4f49,l4fe3,l4fad
	dw l4fc8,l4f71,l4f71,l4f49
	dw l4fe3,l4fad,l4fc8,l4f71
	dw l4fe3,l4f49,l4fe3,l4fad
	dw l4fc8,l4f69,l4f71,l4f69
	dw l4fe3,l4f51,l4f59,l4f51
	dw l4f61,l4f71,l4fe3,l4f49
	dw l4fe3,l4fad,l4fc8,l4fad
	dw l4fe3,l5243,l4f29,l5243
	dw l4f39,l5243,l4f29,l5243
	dw l4f39,l4f31,l4f41,l4f29
	dw l4ef1,l4f31,l4f41,l4f29
	dw l4ef1,l4f71,l4f71,l4f49
	dw l4fe3,l4fad,l4fc8,#0000
.l4d86
	dw l4e7a,l5113,l50b1,l509b
	dw l4e7d,l4e7d,l4e7d,l4e7d
	dw l4e7d,l4e7d,l4e7d,l4e7d
	dw l4e7d,l4e7d,l4e7d,l4e7d
	dw l4f93,l5003,l5023,l4f93
	dw l504a,l5003,l4ef9,l4f01
	dw l4ef9,l4f01,l4f09,l4f19
	dw l4f09,l4f21,l4f93,l5003
	dw l5023,l4f93,l504a,l5003
	dw l504a,l4f93,l4ec1,l4ec9
	dw l4ec1,l4ee1,l4ec1,l4ec9
	dw l4ec1,l4ee1,l4ed1,l4ed9
	dw l4ee9,l4ed9,l4ed1,l4ed9
	dw l4ee9,l4ed9,l4ea1,l4ea1
	dw l4ea9,l4ea1,l4e99,l4eb9
.l4e00 equ $ + 2
	dw #0000,l4e7a,l5113,l4e7d
	dw l4e7d,l50b4,l50b4,l50d7
	dw l50b4,l50fe,l50b4,l4f93
	dw l5003,l5023,l4f93,l504a
	dw l5003,l5060,l5077,l5117
	dw l512f,l513e,l515e,l5190
	dw l51b5,l5190,l51b5,l4e81
	dw l4e89,l4e81,l4e91,l5060
	dw l5077,l5117,l512f,l513e
	dw l515e,l513e,l515e,l528b
	dw l52a4,l528b,l52e4,l528b
	dw l52a4,l528b,l52e4,l532a
	dw l5331,l533f,l5399,l532a
	dw l5331,l533f,l5399,l50b4
	dw l50b4,l50d7,l50b4,l50fe
	dw l50b4,#0000
.l4e81 equ $ + 7
.l4e7d equ $ + 3
.l4e7a
	db #f2,#ef,#ff,#ca,#af,#24,#ff,#64
.l4e89 equ $ + 7
	db #f7,#62,#90,#51,#64,#00,#ff,#64
.l4e91 equ $ + 7
	db #f7,#62,#b5,#51,#64,#00,#ff,#64
.l4e99 equ $ + 7
	db #f7,#62,#da,#51,#64,#00,#ff,#64
.l4ea1 equ $ + 7
	db #0c,#62,#c3,#53,#64,#00,#ff,#64
.l4ea9 equ $ + 7
	db #05,#62,#a9,#53,#64,#00,#ff,#64
	db #0a,#62,#a9,#53,#64,#00,#ff,#64
.l4eb9 equ $ + 7
	db #0c,#62,#a9,#53,#64,#00,#ff,#64
.l4ec1 equ $ + 7
	db #05,#62,#a9,#53,#64,#00,#ff,#64
.l4ec9 equ $ + 7
	db #0c,#62,#64,#52,#64,#00,#ff,#64
.l4ed1 equ $ + 7
	db #07,#62,#64,#52,#64,#00,#ff,#64
.l4ed9 equ $ + 7
	db #0e,#62,#64,#52,#64,#00,#ff,#64
.l4ee1 equ $ + 7
	db #09,#62,#64,#52,#64,#00,#ff,#64
.l4ee9 equ $ + 7
	db #0c,#62,#03,#53,#64,#00,#ff,#64
.l4ef1 equ $ + 7
	db #07,#62,#53,#53,#64,#00,#ff,#64
.l4ef9 equ $ + 7
	db #fd,#62,#79,#53,#64,#00,#ff,#64
.l4f01 equ $ + 7
	db #f4,#62,#75,#51,#64,#00,#ff,#64
.l4f09 equ $ + 7
	db #f9,#62,#75,#51,#64,#00,#ff,#64
	db #f7,#62,#75,#51,#64,#00,#ff,#64
.l4f19 equ $ + 7
	db #fc,#62,#75,#51,#64,#00,#ff,#64
.l4f21 equ $ + 7
	db #fc,#62,#28,#52,#64,#00,#ff,#64
.l4f29 equ $ + 7
	db #fc,#62,#11,#52,#64,#00,#ff,#64
.l4f31 equ $ + 7
	db #fb,#62,#43,#52,#64,#00,#ff,#64
.l4f39 equ $ + 7
	db #02,#62,#43,#52,#64,#00,#ff,#64
.l4f41 equ $ + 7
	db #f9,#62,#c4,#52,#64,#00,#ff,#64
.l4f49 equ $ + 7
	db #fd,#62,#43,#52,#64,#00,#ff,#64
.l4f51 equ $ + 7
	db #05,#62,#71,#4f,#64,#00,#ff,#64
.l4f59 equ $ + 7
	db #0a,#62,#71,#4f,#64,#00,#ff,#64
.l4f61 equ $ + 7
	db #03,#62,#71,#4f,#64,#00,#ff,#64
.l4f69 equ $ + 7
	db #03,#62,#f6,#51,#64,#00,#ff,#64
.l4f71 equ $ + 7
	db #07,#62,#71,#4f,#64,#00,#ff,#c2
	db #83,#18,#81,#18,#83,#1c,#81,#1c
	db #83,#1f,#81,#1f,#83,#21,#81,#21
	db #83,#22,#81,#22,#83,#21,#81,#21
	db #83,#1f,#81,#1f,#83,#1c,#81,#1c
.l4f93 equ $ + 1
	db #ff,#ca,#83,#00,#c3,#87,#3c,#c4
	db #85,#40,#c3,#41,#c4,#43,#43,#83
	db #43,#c3,#81,#41,#c4,#83,#40,#c3
.l4fad equ $ + 3
	db #81,#3c,#ff,#61,#02,#83,#1f,#81
	db #1f,#83,#23,#81,#26,#60,#83,#1d
	db #81,#1d,#83,#21,#81,#24,#83,#1d
.l4fc8 equ $ + 6
	db #81,#1d,#21,#21,#24,#ff,#83,#18
	db #81,#18,#83,#1c,#81,#1c,#83,#1f
	db #81,#1f,#83,#21,#85,#22,#81,#22
	db #21,#22,#21,#8b,#e0,#f3,#18,#1f
.l4fe3 equ $ + 1
	db #ff,#83,#18,#81,#18,#83,#1c,#81
	db #1c,#83,#1f,#81,#1f,#83,#21,#81
	db #21,#83,#22,#81,#22,#83,#21,#81
	db #21,#83,#1f,#81,#1f,#1c,#1c,#1c
.l5003 equ $ + 1
	db #ff,#ca,#83,#00,#c3,#87,#3c,#c4
	db #85,#40,#c3,#41,#c4,#83,#43,#81
	db #45,#83,#43,#81,#45,#83,#43,#c3
	db #81,#41,#c4,#83,#40,#c3,#81,#3c
.l5023 equ $ + 1
	db #ff,#c3,#83,#41,#81,#41,#c5,#83
	db #3e,#c3,#87,#41,#c5,#83,#3e,#c3
	db #81,#41,#c4,#83,#43,#c3,#81,#41
	db #c5,#83,#3e,#c3,#81,#41,#c5,#83
	db #3e,#81,#3c,#83,#3e,#81,#3c,#ff
.l504a
	db #c3,#61,#02,#82,#37,#85,#37,#60
	db #82,#37,#36,#82,#35,#85,#35,#82
.l5060 equ $ + 6
	db #35,#35,#35,#35,#35,#ff,#cc,#8b
	db #3c,#85,#40,#83,#3c,#85,#41,#81
	db #43,#61,#02,#83,#41,#81,#43,#60
.l5077 equ $ + 5
	db #83,#40,#81,#3c,#ff,#ca,#85,#24
	db #cc,#85,#37,#3c,#37,#83,#40,#81
.l5088 equ $ + 6
	db #3e,#83,#3c,#8d,#43,#ff,#c0,#61
	db #02,#89,#24,#81,#24,#60,#61,#03
	db #83,#24,#81,#24,#60,#24,#24,#24
.l509b equ $ + 1
	db #ff,#ca,#95,#00,#c6,#81,#30,#83
	db #37,#81,#37,#83,#35,#81,#35,#83
.l50b1 equ $ + 7
	db #34,#81,#34,#32,#34,#32,#ff,#af
.l50b4 equ $ + 2
	db #0c,#ff,#64,#f4,#cc,#83,#37,#81
	db #37,#83,#c9,#43,#cc,#81,#37,#cd
	db #83,#46,#cc,#85,#3c,#81,#3c,#83
	db #e0,#b0,#40,#3e,#cd,#81,#48,#cc
.l50d7 equ $ + 5
	db #83,#3a,#8d,#3c,#ff,#83,#e0,#e0
	db #41,#3f,#81,#3e,#83,#3c,#81,#3e
	db #83,#3c,#85,#3e,#81,#3c,#83,#e0
	db #e0,#41,#3f,#81,#3e,#83,#3c,#81
	db #3e,#83,#e0,#e0,#43,#41,#81,#45
.l50fe equ $ + 4
	db #43,#41,#40,#ff,#85,#e0,#b0,#43
	db #41,#e0,#b0,#43,#41,#83,#3e,#81
	db #43,#83,#3e,#81,#3d,#c5,#97,#48
.l5117 equ $ + 5
.l5113 equ $ + 1
	db #ff,#ca,#80,#24,#ff,#cc,#8b,#41
	db #85,#45,#83,#41,#85,#46,#81,#48
	db #83,#46,#81,#48,#83,#46,#81,#48
.l512f equ $ + 5
	db #83,#46,#81,#45,#ff,#ce,#8b,#4f
	db #85,#4f,#cd,#83,#4d,#ce,#85,#4c
.l513e equ $ + 4
	db #cc,#93,#3c,#ff,#cc,#83,#37,#81
	db #37,#83,#3b,#85,#37,#81,#37,#83
	db #37,#81,#36,#83,#35,#81,#35,#83
	db #35,#81,#34,#83,#35,#81,#34,#83
.l515e equ $ + 4
	db #35,#81,#37,#ff,#83,#3c,#81,#3c
	db #83,#39,#81,#37,#34,#35,#36,#37
	db #34,#32,#89,#30,#85,#30,#81,#30
	db #85,#30,#ff,#c8,#81,#3b,#3a,#3b
	db #3e,#3b,#39,#3b,#3a,#3b,#3e,#40
	db #3e,#3b,#3a,#3b,#3e,#3b,#39,#3b
	db #3a,#3b,#3c,#3d,#3e,#ff
.l5190
	db #c3,#83,#4f,#81,#4f,#cf,#83,#4f
	db #c3,#85,#4f,#81,#4f,#cf,#83,#4f
	db #c3,#81,#4f,#83,#4f,#81,#4f,#cf
	db #83,#4f,#c3,#85,#4f,#81,#4f,#cf
.l51b5 equ $ + 5
	db #83,#4f,#81,#4f,#ff,#c9,#83,#4f
	db #81,#4f,#c7,#83,#4f,#c9,#85,#4f
	db #81,#4f,#c7,#83,#4f,#c9,#81,#4f
	db #83,#4f,#81,#4f,#c7,#83,#4f,#c9
	db #85,#4f,#81,#4f,#c7,#83,#4f,#81
	db #4f,#ff,#c9,#83,#4f,#81,#4f,#c7
	db #83,#4f,#c9,#85,#4f,#81,#4f,#c7
	db #83,#4f,#c9,#81,#4f,#83,#4f,#4f
	db #4f,#c3,#4f,#4f,#4f,#ff
	db #83,#18,#81,#18,#83,#1c,#81,#1c
	db #83,#1f,#81,#1f,#83,#21,#81,#21
	db #83,#22,#22,#21,#1f,#81,#0c,#0c
	db #0c,#0c,#ff,#81,#3b,#3a,#3b,#3e
	db #3b,#39,#3b,#3a,#3b,#3e,#40,#3e
	db #c7,#8b,#39,#c9,#89,#45,#ca,#81
	db #00,#ff,#c8,#81,#3b,#39,#3b,#3e
	db #3b,#39,#3b,#39,#3b,#3e,#40,#3e
	db #3b,#39,#3b,#3e,#3b,#39,#3b,#39
.l5243 equ $ + 5
	db #3b,#3e,#40,#3e,#ff,#83,#1f,#81
	db #1f,#83,#23,#81,#26,#83,#1f,#81
	db #1f,#83,#23,#81,#26,#83,#1f,#81
	db #1f,#83,#23,#81,#26,#83,#1f,#81
	db #1f,#83,#23,#81,#26,#ff,#c8,#81
	db #2f,#2b,#c9,#32,#c8,#2f,#2b,#26
	db #c9,#32,#c8,#2b,#26,#c9,#32,#c8
	db #2b,#26,#c3,#37,#c8,#2b,#26,#c7
	db #32,#c8,#2b,#c9,#32,#c8,#2f,#2b
.l528b equ $ + 5
	db #26,#2f,#2b,#26,#ff,#83,#3b,#81
	db #3e,#83,#40,#87,#43,#83,#40,#81
	db #3e,#85,#3b,#83,#3b,#81,#3e,#3b
.l52a4 equ $ + 6
	db #39,#37,#34,#32,#34,#ff,#85,#e0
	db #b0,#39,#37,#e0,#b0,#39,#37,#83
	db #e0,#b0,#39,#37,#87,#3b,#83,#3c
	db #81,#3c,#83,#3e,#85,#e0,#b0,#3b
	db #39,#81,#37,#85,#39,#ff,#83,#1f
	db #81,#1f,#83,#23,#81,#26,#83,#1f
	db #81,#1f,#83,#23,#81,#26,#83,#21
	db #81,#21,#83,#25,#81,#28,#83,#21
.l52e4 equ $ + 6
	db #81,#21,#25,#21,#28,#ff,#83,#e0
	db #b0,#3c,#3a,#81,#3b,#83,#3c,#81
	db #3b,#83,#3c,#81,#3b,#83,#39,#81
	db #3b,#83,#39,#81,#38,#83,#39,#8d
	db #e0,#b0,#3e,#3c,#ff,#c8,#81,#30
	db #2b,#cb,#34,#c8,#30,#2b,#28,#cb
	db #34,#c8,#2b,#28,#cb,#34,#c8,#2b
	db #28,#cb,#36,#c8,#2d,#2a,#cb,#36
	db #c8,#2d,#cb,#36,#c8,#32,#2d,#2a
.l532a equ $ + 4
	db #32,#2d,#2a,#ff,#a3,#39,#83,#31
.l5331 equ $ + 3
	db #34,#39,#ff,#89,#e0,#b0,#38,#36
	db #97,#34,#81,#2f,#83,#34,#36,#38
.l533f equ $ + 1
	db #ff,#89,#e0,#b0,#36,#34,#81,#31
	db #85,#32,#83,#31,#85,#32,#81,#32
	db #85,#32,#36,#39,#ff,#81,#2f,#2b
	db #c9,#32,#c8,#2f,#2b,#26,#c9,#32
	db #c8,#2b,#26,#c9,#32,#c8,#2b,#26
	db #c3,#37,#c8,#2b,#26,#c9,#34,#c8
	db #2b,#c9,#32,#c8,#2f,#2b,#26,#2f
	db #2b,#26,#ff,#83,#1f,#81,#1f,#83
	db #23,#81,#26,#83,#1f,#81,#1f,#83
	db #23,#81,#26,#83,#1f,#81,#1f,#83
	db #23,#81,#26,#81,#1f,#15,#1f,#23
.l5399 equ $ + 3
	db #21,#26,#ff,#97,#e0,#b0,#38,#36
	db #85,#3b,#83,#39,#81,#38,#83,#39
	db #87,#3b,#ff,#81,#2f,#2b,#26,#2f
	db #2b,#26,#2f,#2b,#26,#2f,#2b,#26
	db #2f,#2b,#26,#2f,#2b,#26,#2f,#2b
	db #26,#2f,#2b,#26,#ff,#81,#2f,#2b
	db #26,#2f,#2b,#26,#2f,#2b,#26,#2f
	db #2b,#26,#2d,#29,#24,#2d,#29,#24
	db #2d,#29,#24,#2d,#29,#24,#ff
	db #81,#2f,#2b,#26,#2f,#2b,#26,#2f
	db #2b,#26,#2f,#2b,#26,#2f,#2b,#26
	db #2f,#2b,#26,#83,#2f,#c1,#81,#0c
	db #0c,#0c,#0c,#ff
;
; #4089
;ld a,#00
;call #412f init music theme 0
;
.play_music	; added by Megachur
;
	call l41e8
	jp l4229
;
.music_info
	db "Rock N Roll Intro (1989)(Rainbow Arts)(Barry Leitch)",0
	db "",0

	read "music_end.asm"
