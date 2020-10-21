; Music of Slap Fight (1987)(Imagine Software)()()
; Ripped by Megachur the 05/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SLAPFIGH.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #7300
first_theme				equ 1
last_theme				equ 2

	read "music_header.asm"

	jp l7319
	jp l7312
	jp l7342
	jp l7b06
	jp l7ad6
	jp l7af4		; stop music
.l7312
	ld b,#06
	ld a,#01
	jp l731d
.l7319
	ld a,#02
	ld b,#05
.l731d
	ld (l776b),a
	ld a,b
	ld (l7782),a
	ld a,#38
	ld (l7774),a
	di
	ld hl,#0038
	ld de,l7355
	ld bc,#0003
	ldir
	ld a,#c3
	ld (#0038),a
	ld hl,l7358
	ld (#0039),hl
	ei
	ret
.l7342
	di
	ld hl,l7355
	ld de,#0038
	ld bc,#0003
	ldir
	ld a,#3f
	ld (l7774),a
	ei
	ret
.l7355
	jp #5af0
;
.play_music_interrupt
.l7358					; play music interrupt
;
	di
	push af
	push bc
	push de
	push hl
	push ix
	ld a,(l776b)
	and a
	jp nz,l7375			; init_music
	ld a,(l776c)
	and a
	jp nz,l740e			; play_music
.l736d
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ei
	ret
.l7375
	ld hl,l7845
	ld bc,#0008
.l737b
	dec a
	jp z,l7383
	add hl,bc
	jp l737b
.l7383
	ld ix,l778d
	ld b,#03
	xor a
	ld (l7773),a
.l738d
	ld (ix+#05),a
	ld (ix+#0d),a
	ld (ix+#0c),a
	ld (ix+#02),a
	ld (ix+#03),a
	push af
	ld a,(hl)
	ld e,a
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld d,a
	ld (ix+#0b),a
	inc hl
	push hl
	push bc
	ld a,(de)
	inc de
	ld (ix+#06),e
	ld (ix+#07),d
	call l757c
	ld hl,l7773
	inc (hl)
	pop bc
	pop hl
	pop af
	ld de,#0010
	add ix,de
	djnz l738d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc de
	ld (l7789),de
	dec de
	ld (l778b),de
	ld a,(de)
	call l74a0
	ld hl,l77b7
	ld a,(hl)
	inc hl
	or (hl)
	ld (l7775),a
	ld b,#38
	jp nz,l73e5
	ld b,#3c
.l73e5
	ld a,b
	ld (l7774),a
	ld a,(l7780)
	dec a
	ld (l7781),a
	call l761f
	xor a
	ld (l776d),a
	ld (l7770),a
	ld (l7771),a
	ld (l776e),a
	ld (l7783),a
	ld (l776b),a
	ld a,#01
	ld (l776c),a
	jp l736d
.l740e
	ld a,(l7781)
	inc a
	ld (l7781),a
	cp #06
	jp z,l744c
.l741a
	ld hl,l7780
	cp (hl)
	jp nz,l736d
	xor a
	ld (l7781),a
	ld a,(l7783)
	inc a
	ld (l7783),a
	ld hl,l7782
	cp (hl)
	jp z,l743f
	call l765a
	call l76a0
	call l7719
	jp l736d
.l743f
	call l7743
	call l7459
	xor a
	ld (l7783),a
	jp l736d
.l744c
	ld c,#38
	ld a,#07
	call l763c
	ld a,(l7781)
	jp l741a
.l7459
	ld a,(l7784)
	and a
	ret z
.l745e
	ld hl,(l7787)
	ld a,(hl)
	inc hl
	ld (l7787),hl
	inc a
	ret z
	dec a
	jp nz,l7493
	ld hl,(l7789)
.l746f
	ld a,(hl)
	inc hl
	ld (l7789),hl
	and a
	jp z,l748a
	cp #80
	jp nz,l7484
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	jp l748d
.l7484
	call l74a0
	jp l745e
.l748a
	ld hl,(l778b)
.l748d
	ld (l7789),hl
	jp l746f
.l7493
	ld c,a
	ld a,#06
	call l763c
	ld c,#18
	ld a,#07
	jp l763c
.l74a0
	ld hl,l78b3
.l74a3
	dec a
	jp z,l74ac
	inc hl
	inc hl
	jp l74a3
.l74ac
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l7787),de
	ret
.l74b4
	ld a,(ix+#05)
	and a
	jp z,l74f2
	dec (ix+#05)
	ret nz
	jp l74f2
.l74c2
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld a,(hl)
	inc hl
	ld (ix+#06),l
	ld (ix+#07),h
	and a
	jp z,l74e0
	cp #80
	jp nz,l74ef
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	jp l74e6
.l74e0
	ld l,(ix+#0a)
	ld h,(ix+#0b)
.l74e6
	ld (ix+#06),l
	ld (ix+#07),h
	jp l74c2
.l74ef
	call l757c
.l74f2
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld a,(hl)
	ld c,a
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
	and a
	jp z,l74c2
	bit 7,a
	jp nz,l7531
	dec c
	call l759c
	ld a,(l7773)
	cp #01
	jp nz,l7522
	ld a,(l7777)
	and a
	jp z,l7522
	ld c,#0d
	jp l7525
.l7522
	ld c,(ix+#0e)
.l7525
	ld a,c
	ld (ix+#01),a
	ld a,(l7773)
	add #08
	jp l763c
.l7531
	cp #c0
	jp z,l7542
	cp #c1
	jp nz,l754a
	xor a
	ld (l7784),a
	jp l74f2
.l7542
	ld a,#01
	ld (l7784),a
	jp l74f2
.l754a
	cp #c2
	jp nz,l755c
	ld a,#01
	ld (l7786),a
	ld a,#03
	ld (l7785),a
	jp l74f2
.l755c
	cp #c3
	jp nz,l7569
	ld a,#01
	ld (l7777),a
	jp l74f2
.l7569
	cp #c4
	jp nz,l7575
	xor a
	ld (l7777),a
	jp l74f2
.l7575
	ld a,c
	and #0f
	ld (ix+#05),a
	ret
.l757c
	ld hl,l7855
	ld b,a
	ld a,(l7773)
	cp #02
	ld a,b
	jp nz,l758c
	ld hl,l7893
.l758c
	dec a
	ld c,a
	ld b,#00
	add hl,bc
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#08),e
	ld (ix+#09),d
	ret
.l759c
	ld a,(l7773)
	cp #01
	jp nz,l75d3
	ld a,(l7777)
	and a
	jp z,l75d3
	ld hl,l7835
	ld b,#00
	sla c
	sla c
	add hl,bc
	ld de,l7778
	ld b,#04
.l75ba
	push bc
	ld c,(hl)
	inc hl
	dec c
	call l7612
	ld a,c
	ld (de),a
	inc de
	ld a,b
	ld (de),a
	inc de
	pop bc
	djnz l75ba
	ld bc,(l7778)
	ld a,#01
	jp l75ff
.l75d3
	call l7612
	ld a,(l7773)
	cp #01
	jp nz,l75ed
	ld a,(l778f)
	cp c
	jp nz,l75ed
	ld a,(l7790)
	cp b
	jp nz,l75ed
	dec bc
.l75ed
	ld a,(l7773)
	and a
	jp nz,l75ff
	ld a,(l7786)
	and a
	jp z,l75ff
	inc bc
	inc bc
	inc bc
	xor a
.l75ff
	ld (ix+#02),c
	ld (ix+#03),b
.l7605
	add a
	push bc
	push af
	call l763c
	pop af
	pop bc
	inc a
	ld c,b
	jp l763c
.l7612
	push hl
	ld hl,l77bd
	ld b,#00
	add hl,bc
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	pop hl
	ret
.l761f
	call l762b
	ld a,(l7774)
	ld c,a
	ld a,#07
	jp l763c
.l762b
	ld bc,#000d
.l762e
	ld a,b
	push bc
	call l763c
	pop bc
	dec b
	jp p,l762e
	ld a,#07
	ld c,#3f
.l763c
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
.l765a
	ld ix,l778d
	xor a
	ld (l7773),a
	call l767f
	ld ix,l779d
	ld a,#01
	ld (l7773),a
	call l767f
	ld a,(l7775)
	and a
	ret z
	ld ix,l77ad
	ld a,#02
	ld (l7773),a
.l767f
	ld a,(ix+#0d)
	inc a
	ld (ix+#0d),a
	cp (ix+#00)
	ret c
	ld (ix+#0d),#00
	ld a,(ix+#01)
	sub #01
	ret c
	ld (ix+#01),a
	ld c,a
	ld a,(l7773)
	add #08
	jp l763c
.l76a0
	ld a,(l7785)
	sub #01
	jp nc,l76af
	xor a
	ld (l7786),a
	jp l76bf
.l76af
	ld (l7785),a
	ld bc,(l778f)
	dec bc
	ld (l778f),bc
	xor a
	call l7605
.l76bf
	ld a,(l7777)
	and a
	jp z,l76e3
	ld a,(l7776)
	inc a
	and #03
	ld (l7776),a
	ld c,a
	ld b,#00
	ld hl,l7778
	add hl,bc
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (l779f),bc
	ld a,#01
	call l7605
.l76e3
	ld a,(l776e)
	inc a
	ld (l776e),a
	ld hl,l776f
	cp (hl)
	ret c
	xor a
	ld (l776e),a
	ld a,(l776d)
	xor #01
	ld (l776d),a
	ld bc,(l778f)
	ld de,(l779f)
	and a
	jp z,l770c
	dec bc
	dec de
	jp l770e
.l770c
	inc bc
	inc de
.l770e
	xor a
	push de
	call l7605
	pop bc
	ld a,#01
	jp l7605
.l7719
	ld a,(l7775)
	and a
	ret z
	ld a,(l7771)
	inc a
	ld (l7771),a
	ld hl,l7772
	cp (hl)
	ret c
	xor a
	ld (l7771),a
	ld bc,(l77af)
	ld a,(l7770)
	xor #01
	ld (l7770),a
	ld a,#02
	jp nz,l7605
	inc bc
	jp l7605
.l7743
	ld ix,l778d
	xor a
	ld (l7773),a
	call l74b4
	ld ix,l779d
	ld a,#01
	ld (l7773),a
	call l74b4
	ld a,(l7775)
	and a
	ret z
	ld ix,l77ad
	ld a,#02
	ld (l7773),a
	jp l74b4
.l7772 equ $ + 7
.l7771 equ $ + 6
.l7770 equ $ + 5
.l776f equ $ + 4
.l776e equ $ + 3
.l776d equ $ + 2
.l776c equ $ + 1
.l776b
	db #00,#00,#00,#00,#04,#00,#00,#01
.l7778 equ $ + 5
.l7777 equ $ + 4
.l7776 equ $ + 3
.l7775 equ $ + 2
.l7774 equ $ + 1
.l7773
	db #00,#38,#00,#00,#00,#00,#00,#00
.l7782 equ $ + 7
.l7781 equ $ + 6
.music_end equ $ + 5
.l7780 equ $ + 5
	db #00,#00,#00,#00,#00,#06,#00,#05
.l7789 equ $ + 6
.l7787 equ $ + 4
.l7786 equ $ + 3
.l7785 equ $ + 2
.l7784 equ $ + 1
.l7783
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7790 equ $ + 5
.l778f equ $ + 4
.l778d equ $ + 2
.l778b
	db #00,#00,#03,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l779f equ $ + 4
.l779d equ $ + 2
	db #0d,#00,#03,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l77af equ $ + 4
.l77ad equ $ + 2
	db #0c,#00,#03,#00,#00,#00,#01,#00
.l77b7 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l77bd equ $ + 2
	db #0f,#00,#bc,#03,#86,#03,#53,#03
	db #24,#03,#f6,#02,#cc,#02,#a4,#02
	db #7e,#02,#5a,#02,#38,#02,#18,#02
	db #fa,#01,#de,#01,#c3,#01,#aa,#01
	db #92,#01,#7b,#01,#66,#01,#52,#01
	db #3f,#01,#2d,#01,#1c,#01,#0c,#01
	db #fd,#00,#ef,#00,#e1,#00,#d5,#00
	db #c9,#00,#be,#00,#b3,#00,#a9,#00
	db #9f,#00,#96,#00,#8e,#00,#86,#00
	db #7f,#00,#77,#00,#71,#00,#6a,#00
	db #64,#00,#5f,#00,#59,#00,#54,#00
	db #50,#00,#4b,#00,#47,#00,#43,#00
	db #3f,#00,#3c,#00,#38,#00,#35,#00
	db #32,#00,#2f,#00,#2d,#00,#2a,#00
	db #28,#00,#26,#00,#24,#00,#22,#00
.l7835 equ $ + 2
	db #20,#00,#16,#19,#1d,#22,#14,#18
	db #1b,#20,#12,#16,#19,#1e,#11,#15
	db #18,#1d
.l7845
	dw l7e1c,l7e23,l7e48,l7e91
	dw l7b20,l7b40,l7b59,l7b80
.l7855
	dw l7ec2,l7efc,l7f1a,l7f96
	dw l7fa7,l7fb8,l7fc9,l7fda
	dw l80db,l7ba7,l7bc8,l7be9
	dw l7bf5,l7c01,l7c0b,l7c17
	dw l7c23,l7c2d,l7c4e,l7c5f
	dw l7ca0,l7cac,l7cb8,l7cc9
	dw l7cda,l7d1b,l7d2c,l7d3b
.l7893 equ $ + 6
	dw l7d4c,l7d5b,l7d88,l81dc
	dw l81ed,l81fe,l820f,l8220
	dw l8231,l8242,l8253,l8264
	dw l7db5,l7dc7,l7dd8,l7de9
.l78b3 equ $ + 6
	dw l820f,l7dfa,l7dfa,l8275
	dw l8286,l8297,l82a8,l7dfa
	dw l7e0b,l7e1c,l7e1c
.l78c9 equ $ + 6
.l78c3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l78cf equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l78d5
	ld ix,l78c3
	ld hl,l7903
	ld de,#0000
.l78df
	ld (ix+#00),#01
	ld (ix+#01),l
	ld (ix+#02),h
	ld (ix+#03),e
	ld (ix+#04),d
	ld a,(l7774)
	res 0,a
	call l7aca
	push de
	pop bc
	call l7605
	ld a,#08
	ld c,#0f
	jp l763c
.l7903
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	pop bc
	xor a
	call l7605
	ld de,#0190
	and a
	sbc hl,de
	ret nz
	ld (ix+#00),#00
	ld a,#08
	ld c,#00
	call l763c
	ld a,(l7774)
	set 0,a
	jp l7aca
.l7930
	ld hl,l793c
	ld b,#14
	ld c,#00
	ld d,#0a
	jp l79ac
.l793c
	dec (ix+#05)
	ret nz
	dec (ix+#04)
	jp z,l795a
	ld a,(ix+#04)
	cp #10
	ret c
.l794c
	ld a,(ix+#03)
	xor #3f
	ld (ix+#03),a
	ld c,a
	ld a,#06
	jp l763c
.l795a
	ld (ix+#00),#00
	ld a,#09
	ld c,#00
	call l763c
	ld a,(l7774)
	set 4,a
	jp l7aca
.l796d
	ld ix,l78c3
	ld hl,l797a
	ld de,#0190
	jp l78df
.l797a
	ld l,(ix+#03)
	ld h,(ix+#04)
	dec hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	pop bc
	xor a
	call l7605
	ld a,h
	or l
	ret nz
	ld (ix+#00),#00
	ld a,#08
	ld c,#00
	call l763c
	ld a,(l7774)
	set 0,a
	jp l7aca
.l79a3
	ld hl,l79e5
	ld b,#28
	ld c,#1f
	ld d,#14
.l79ac
	ld ix,l78c9
	ld (ix+#00),#01
	ld (ix+#01),l
	ld (ix+#02),h
	ld (ix+#04),b
	ld (ix+#05),#00
	ld a,#06
	ld (ix+#03),c
	call l763c
	ld c,#10
	ld a,#09
	call l763c
	ld c,d
	ld a,#0c
	call l763c
	ld c,#09
	ld a,#0d
	call l763c
	ld a,(l7774)
	res 4,a
	jp l7aca
.l79e5
	dec (ix+#05)
	ret nz
	dec (ix+#04)
	jp z,l795a
	ld a,(ix+#04)
	cp #20
	ret c
	jp l794c
.l79f8
	ld ix,l78cf
	ld (ix+#00),#01
	ld hl,l7a3b
	ld (ix+#01),l
	ld (ix+#02),h
	ld (ix+#04),#14
	ld (ix+#05),#00
	ld (ix+#03),#19
	ld bc,#000f
	ld a,#02
	call l7605
	ld c,#10
	ld a,#0a
	call l763c
	ld c,#0a
	ld a,#0c
	call l763c
	ld c,#09
	ld a,#0d
	call l763c
	ld a,(l7774)
	res 2,a
	jp l7aca
	ret
.l7a3b
	dec (ix+#05)
	jp z,l7a51
	bit 3,(ix+#05)
	ret z
	ld c,(ix+#03)
	inc c
	ld b,#00
	ld a,#02
	jp l7605
.l7a51
	dec (ix+#04)
	ret nz
.l7a55
	ld (ix+#00),#00
	ld a,#0a
	ld c,#00
	call l763c
	ld a,(l7774)
	set 2,a
	jp l7aca
.l7a68
	ld ix,l78cf
	ld (ix+#00),#01
	ld hl,l7a9b
	ld (ix+#01),l
	ld (ix+#02),h
	ld (ix+#04),#00
	ld (ix+#05),#00
	ld bc,#0014
	ld (ix+#03),c
	ld a,#02
	call l7605
	ld c,#0d
	ld a,#0a
	call l763c
	ld a,(l7774)
	res 2,a
	jp l7aca
.l7a9b
	dec (ix+#05)
	ret nz
	inc (ix+#04)
	ld a,(ix+#04)
	cp #05
	ret c
	cp #08
	jp c,l7ac4
	cp #0b
	jp c,l7abc
	cp #0e
	jp c,l7ac4
	cp #11
	jp nc,l7a55
.l7abc
	ld bc,#001a
.l7abf
	ld a,#02
	jp l7605
.l7ac4
	ld bc,#001e
	jp l7abf
.l7aca
	push bc
	ld (l7774),a
	ld c,a
	ld a,#07
	call l763c
	pop bc
	ret
.l7ad6
	ld ix,l78c3
	call l7ae8
	ld ix,l78c9
	call l7ae8
	ld ix,l78cf
.l7ae8
	bit 0,(ix+#00)
	ret z
	ld l,(ix+#01)
	ld h,(ix+#02)
	jp (hl)
.l7af4
	xor a
	ld (l78c3),a
	ld (l78c9),a
	ld (l78cf),a
	ld a,#3f
	ld (l7774),a
	jp l762b
.l7b06
	dec a
	ld c,a
	ld b,#00
	ld hl,l7b14
	add hl,bc
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	jp (hl)
.l7b14
	dw l78d5,l7930,l796d,l79a3
	dw l79f8,l7a68
.l7b20
	db #0a,#0a,#0c,#0d,#0e,#0d,#12,#13
	db #13,#0c,#0d,#0e,#15,#17,#17,#18
	db #18,#1a,#1a,#1a,#1b,#1a,#1a,#1a
	db #1b,#1e,#12,#13,#13,#80,#22,#7b
.l7b40
	db #0b,#0b,#0f,#10,#11,#10,#14,#0f
	db #10,#11,#16,#19,#1c,#1c,#1c,#1d
	db #1c,#1c,#1c,#1d,#1f,#14,#80,#42
.l7b59 equ $ + 1
	db #7b,#0a,#0a,#0a,#0a,#0b,#0b,#0b
	db #0b,#0c,#0c,#0d,#0d,#0b,#0b,#0b
	db #0b,#0c,#0c,#0d,#0d,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0c,#0c,#0d,#0d,#80,#5d,#7b
.l7b80
	db #05,#05,#05,#06,#05,#05,#05,#05
	db #05,#05,#05,#06,#05,#05,#05,#05
	db #05,#05,#05,#06,#05,#05,#05,#06
	db #05,#05,#05,#06,#05,#05,#05,#06
.l7ba7 equ $ + 7
	db #05,#05,#05,#06,#80,#84,#7b,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#22
	db #22,#22,#22,#22,#22,#22,#22,#22
	db #22,#22,#22,#22,#22,#22,#22,#00
.l7bc8
	db #1b,#1b,#1b,#1b,#1b,#1b,#1b,#1b
	db #1b,#1b,#1b,#1b,#1b,#1b,#1d,#1d
	db #1e,#1e,#1e,#1e,#1e,#1e,#1e,#1e
	db #1e,#1e,#1e,#1e,#1e,#1e,#1e,#1e
.l7be9 equ $ + 1
	db #00,#f2,#31,#f1,#31,#f1,#30,#f3
.l7bf5 equ $ + 5
	db #33,#f3,#31,#f1,#00,#36,#f1,#35
	db #f3,#31,#31,#31,#31,#31,#31,#f4
.l7c01 equ $ + 1
	db #00,#f2,#31,#f3,#30,#f3,#33,#f3
.l7c0b equ $ + 3
	db #31,#f1,#00,#f2,#29,#f1,#29,#f1
.l7c17 equ $ + 7
	db #27,#f3,#2a,#f3,#29,#f1,#00,#2e
	db #f1,#2c,#f3,#29,#29,#29,#29,#29
.l7c23 equ $ + 3
	db #29,#f4,#00,#f2,#29,#f3,#27,#f3
.l7c2d equ $ + 5
	db #2a,#f3,#29,#f1,#00,#2e,#2e,#2e
	db #2e,#2e,#2e,#2e,#2e,#2e,#2e,#2e
	db #2e,#2e,#2e,#2e,#2e,#2d,#2d,#2d
	db #2d,#2d,#2d,#2d,#2d,#2d,#2d,#2d
.l7c4e equ $ + 6
	db #2d,#2d,#2d,#2d,#2d,#00,#2c,#2c
	db #2c,#2c,#2c,#2c,#2c,#2c,#2c,#2c
.l7c5f equ $ + 7
	db #2c,#2c,#2c,#2c,#2c,#2c,#00,#12
	db #16,#19,#16,#1e,#19,#16,#0d,#12
	db #16,#19,#16,#1e,#22,#1e,#0d,#12
	db #15,#19,#15,#1e,#19,#15,#0d,#12
	db #15,#19,#15,#1e,#21,#1e,#0d,#14
	db #0d,#1b,#0d,#20,#1b,#0d,#1b,#14
	db #0d,#1b,#0d,#20,#1b,#0d,#1b,#14
	db #18,#1b,#18,#20,#1b,#24,#20,#27
	db #24,#2c,#27,#30,#2c,#27,#24,#00
.l7ca0
	db #36,#f1,#35,#f3,#38,#38,#38,#38
.l7cac equ $ + 4
	db #38,#38,#f4,#00,#2e,#f1,#2c,#f3
	db #31,#31,#31,#31,#31,#31,#f4,#00
.l7cb8
	db #36,#36,#36,#36,#36,#36,#36,#36
	db #36,#36,#36,#36,#36,#36,#36,#36
.l7cc9 equ $ + 1
	db #00,#33,#33,#33,#33,#33,#33,#33
	db #33,#33,#33,#33,#33,#33,#33,#33
.l7cda equ $ + 2
	db #33,#00,#2f,#2a,#25,#1e,#2f,#2a
	db #25,#1e,#2f,#2a,#25,#1e,#2f,#2a
	db #25,#1e,#2e,#2a,#25,#1e,#2e,#2a
	db #25,#1e,#2e,#2a,#25,#1e,#2e,#2a
	db #25,#1e,#31,#2c,#27,#20,#31,#2c
	db #27,#20,#31,#2c,#27,#20,#31,#2c
	db #27,#20,#30,#2c,#27,#20,#30,#2c
	db #27,#20,#30,#2c,#27,#20,#30,#2c
.l7d1b equ $ + 3
	db #27,#20,#00,#01,#0d,#29,#01,#08
	db #01,#2a,#2a,#2a,#2a,#2a,#2a,#14
.l7d2c equ $ + 4
	db #11,#0d,#14,#00,#28,#f1,#28,#f3
	db #29,#29,#29,#29,#29,#29,#29,#29
.l7d3b equ $ + 3
	db #14,#19,#00,#01,#0d,#20,#01,#08
	db #01,#22,#22,#22,#22,#22,#22,#14
.l7d4c equ $ + 4
	db #11,#0d,#08,#00,#20,#f1,#20,#f3
	db #20,#20,#20,#20,#20,#20,#20,#20
.l7d5b equ $ + 3
	db #14,#19,#00,#f2,#29,#f3,#2a,#f3
	db #2c,#f3,#2a,#f1,#29,#f1,#28,#f1
	db #29,#f1,#2a,#f3,#2c,#f5,#f2,#29
	db #f3,#2a,#f3,#2c,#f1,#2a,#f1,#29
	db #f1,#27,#f1,#29,#f1,#2a,#f1,#29
	db #f3,#29,#f1,#2a,#f1,#2c,#f1,#00
.l7d88
	db #f2,#20,#f3,#22,#f3,#24,#f3,#22
	db #f1,#20,#f1,#1f,#f1,#20,#f1,#22
	db #f3,#24,#f5,#f2,#20,#f3,#22,#f3
	db #24,#f1,#22,#f1,#20,#f1,#1e,#f1
	db #20,#f1,#22,#f1,#20,#f3,#20,#f1
.l7db5 equ $ + 5
	db #22,#f1,#24,#f1,#00,#c0,#08,#08
	db #14,#14,#08,#08,#14,#14,#08,#08
.l7dc7 equ $ + 7
	db #14,#14,#08,#08,#14,#14,#00,#01
	db #01,#0d,#0d,#01,#01,#0d,#0d,#01
	db #01,#0d,#0d,#01,#01,#0d,#0d,#00
.l7dd8
	db #06,#06,#12,#12,#06,#06,#12,#12
	db #06,#06,#12,#12,#06,#06,#12,#12
.l7de9 equ $ + 1
	db #00,#08,#08,#14,#14,#08,#08,#14
	db #14,#08,#08,#14,#14,#08,#08,#14
.l7dfa equ $ + 2
	db #14,#00,#1f,#ff,#ff,#ff,#05,#ff
	db #ff,#ff,#1f,#ff,#1f,#ff,#05,#ff
.l7e0b equ $ + 3
	db #ff,#ff,#00,#1f,#ff,#ff,#ff,#05
	db #1f,#1f,#05,#ff,#0a,#ff,#05,#05
.l7e1c equ $ + 4
	db #0a,#14,#14,#00,#01,#01,#03,#08
.l7e23 equ $ + 3
	db #03,#08,#00,#02,#02,#04,#04,#05
	db #05,#06,#06,#04,#07,#04,#04,#05
	db #05,#06,#06,#04,#04,#08,#04,#04
	db #05,#05,#06,#06,#04,#07,#04,#04
	db #05,#05,#06,#06,#04,#04,#09,#00
.l7e48
	db #01,#02,#03,#04,#01,#02,#03,#04
	db #01,#01,#03,#03,#05,#05,#01,#04
	db #01,#01,#03,#03,#05,#05,#01,#01
	db #06,#06,#06,#06,#07,#07,#07,#07
	db #08,#08,#08,#08,#09,#09,#09,#09
	db #01,#01,#03,#03,#05,#05,#01,#04
	db #01,#01,#03,#03,#05,#05,#01,#01
	db #06,#06,#06,#06,#07,#07,#07,#07
	db #08,#08,#08,#08,#09,#09,#09,#09
.l7e91 equ $ + 1
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #03,#02,#02,#02,#02,#02,#02,#02
	db #03,#02,#02,#02,#02,#02,#02,#02
	db #03,#04,#04,#04,#04,#02,#02,#02
	db #02,#02,#02,#02,#03,#02,#02,#02
	db #02,#02,#02,#02,#03,#04,#04,#04
.l7ec2 equ $ + 2
	db #04,#00,#c0,#22,#f2,#22,#22,#f2
	db #22,#f1,#29,#f1,#27,#25,#22,#1d
	db #16,#22,#f2,#22,#22,#f2,#22,#f1
	db #29,#f1,#27,#25,#22,#1d,#16,#22
	db #f2,#22,#22,#f2,#22,#f1,#29,#f1
	db #27,#25,#22,#1d,#16,#22,#f2,#22
	db #22,#f2,#1d,#1d,#21,#24,#29,#24
.l7efc equ $ + 4
	db #21,#1d,#21,#00,#c3,#01,#f7,#01
	db #f5,#01,#f1,#02,#f7,#02,#f5,#02
	db #f1,#03,#f7,#03,#f5,#03,#f1,#04
	db #f7,#04,#f2,#04,#04,#04,#f1,#04
.l7f1a equ $ + 2
	db #c4,#00,#c2,#30,#f5,#31,#f1,#2e
	db #f7,#f6,#2e,#30,#c2,#31,#f2,#30
	db #f2,#2e,#f1,#30,#f5,#31,#f1,#2a
	db #f7,#f6,#2e,#30,#c2,#31,#f2,#30
	db #f2,#2e,#f1,#33,#f5,#31,#30,#2e
	db #f7,#f6,#2a,#2c,#2e,#f2,#30,#f2
	db #2c,#f1,#2e,#30,#2e,#2c,#2e,#f9
	db #2c,#2a,#29,#fd,#35,#f1,#c2,#30
	db #f5,#31,#f1,#2e,#f7,#f6,#2e,#30
	db #c2,#31,#f2,#30,#f2,#2e,#f1,#33
	db #f5,#31,#30,#2e,#f7,#f6,#2e,#30
	db #c2,#31,#f2,#30,#f2,#2e,#f1,#c2
	db #36,#f5,#35,#33,#31,#f7,#f2,#33
	db #f3,#30,#f1,#31,#f2,#33,#f2,#30
	db #f1,#31,#33,#31,#30,#31,#f6,#30
.l7f96 equ $ + 6
	db #f2,#31,#30,#2e,#ff,#00,#16,#11
	db #19,#16,#1d,#16,#19,#11,#16,#11
.l7fa7 equ $ + 7
	db #19,#16,#1d,#16,#19,#11,#00,#12
	db #0d,#16,#12,#19,#12,#16,#0d,#12
	db #0d,#16,#12,#19,#12,#16,#0d,#00
.l7fb8
	db #0f,#0a,#12,#0f,#16,#0f,#12,#0a
	db #0f,#0a,#12,#0f,#16,#0f,#12,#14
.l7fc9 equ $ + 1
	db #00,#16,#11,#19,#16,#1d,#16,#19
	db #16,#11,#15,#18,#1d,#18,#15,#11
.l7fda equ $ + 2
	db #18,#00,#24,#24,#15,#11,#18,#11
	db #25,#25,#15,#11,#18,#11,#27,#27
	db #15,#11,#18,#11,#25,#25,#15,#11
	db #18,#11,#24,#24,#15,#11,#25,#25
	db #15,#11,#22,#22,#15,#11,#18,#11
	db #25,#25,#15,#11,#27,#25,#24,#24
	db #24,#24,#11,#0c,#15,#11,#18,#15
	db #11,#15,#18,#15,#11,#18,#1d,#18
	db #15,#11,#24,#24,#16,#12,#19,#12
	db #25,#25,#16,#12,#19,#12,#27,#27
	db #16,#12,#19,#12,#25,#25,#16,#12
	db #19,#12,#24,#24,#16,#12,#25,#25
	db #16,#12,#22,#22,#16,#12,#19,#12
	db #25,#25,#16,#12,#27,#25,#24,#24
	db #24,#24,#12,#0d,#16,#12,#19,#16
	db #12,#16,#19,#16,#12,#19,#1e,#19
	db #16,#12,#24,#24,#18,#14,#1b,#14
	db #25,#25,#18,#14,#1b,#14,#27,#27
	db #18,#14,#1b,#14,#25,#25,#18,#14
	db #1b,#14,#24,#24,#18,#14,#25,#25
	db #18,#14,#22,#22,#18,#14,#1b,#14
	db #25,#25,#18,#14,#27,#25,#24,#24
	db #24,#24,#14,#0f,#18,#14,#1b,#18
	db #14,#18,#1b,#18,#14,#1b,#22,#1b
	db #18,#22,#29,#29,#19,#16,#1d,#16
	db #27,#27,#19,#16,#1d,#16,#25,#25
	db #19,#16,#1d,#16,#24,#24,#19,#16
	db #1d,#16,#22,#22,#19,#16,#20,#20
	db #16,#11,#29,#29,#19,#16,#1d,#16
	db #27,#27,#19,#16,#1d,#16,#25,#25
	db #19,#16,#19,#16,#27,#25,#24,#19
	db #25,#24,#22,#22,#16,#19,#1d,#22
.l80db equ $ + 3
	db #25,#22,#00,#21,#21,#15,#11,#18
	db #11,#22,#22,#15,#11,#18,#11,#24
	db #24,#15,#11,#18,#11,#22,#22,#15
	db #11,#18,#11,#21,#21,#15,#11,#22
	db #22,#15,#11,#1d,#1d,#15,#11,#18
	db #11,#22,#22,#15,#11,#24,#22,#21
	db #21,#21,#21,#11,#0c,#15,#11,#18
	db #15,#11,#15,#18,#15,#11,#18,#1d
	db #18,#15,#11,#1e,#1e,#16,#12,#19
	db #12,#20,#20,#16,#12,#19,#12,#22
	db #22,#16,#12,#19,#12,#20,#20,#16
	db #12,#19,#12,#1e,#1e,#16,#12,#20
	db #20,#16,#12,#1b,#1b,#16,#12,#19
	db #12,#1e,#1e,#16,#12,#22,#20,#1e
	db #1e,#1e,#1e,#12,#0d,#16,#12,#19
	db #16,#12,#16,#19,#16,#12,#19,#1e
	db #19,#16,#12,#20,#20,#18,#14,#1b
	db #14,#22,#22,#18,#14,#1b,#14,#24
	db #24,#18,#14,#1b,#14,#22,#22,#18
	db #14,#1b,#14,#20,#20,#18,#14,#22
	db #22,#18,#14,#1e,#1e,#18,#14,#1b
	db #14,#22,#22,#18,#14,#24,#22,#20
	db #20,#20,#20,#14,#0f,#18,#14,#1b
	db #18,#14,#18,#1b,#18,#14,#1b,#1d
	db #1b,#18,#1d,#25,#25,#19,#16,#1d
	db #16,#24,#24,#19,#16,#1d,#16,#22
	db #22,#19,#16,#1d,#16,#20,#20,#19
	db #16,#1d,#16,#1e,#1e,#19,#16,#1d
	db #1d,#16,#11,#25,#25,#19,#16,#1d
	db #16,#24,#24,#19,#16,#1d,#16,#22
	db #22,#19,#16,#19,#16,#24,#22,#20
	db #19,#22,#20,#1d,#1d,#16,#19,#1d
.l81dc equ $ + 4
	db #22,#25,#22,#00,#0a,#0a,#f1,#0a
	db #16,#0a,#f1,#0a,#0a,#0a,#f1,#0a
.l81ed equ $ + 5
	db #16,#0a,#f1,#0a,#00,#08,#08,#f1
	db #08,#14,#08,#f1,#08,#08,#08,#f1
.l81fe equ $ + 6
	db #08,#14,#08,#f1,#08,#00,#06,#06
	db #f1,#06,#12,#06,#f1,#06,#06,#06
.l820f equ $ + 7
	db #f1,#06,#12,#06,#f1,#06,#00,#05
	db #05,#f1,#05,#11,#05,#f1,#05,#05
	db #05,#f1,#11,#0a,#0c,#11,#05,#00
.l8220
	db #03,#03,#f1,#03,#0f,#03,#f1,#03
	db #03,#03,#f1,#03,#0f,#03,#f1,#03
.l8231 equ $ + 1
	db #00,#05,#f1,#05,#05,#11,#f1,#05
	db #05,#05,#f1,#05,#05,#0f,#11,#0a
.l8242 equ $ + 2
	db #0c,#00,#06,#f1,#06,#06,#12,#f1
	db #06,#06,#06,#f1,#06,#06,#10,#12
.l8253 equ $ + 3
	db #0b,#0d,#00,#08,#f1,#08,#08,#14
	db #f1,#08,#08,#08,#f1,#08,#08,#12
.l8264 equ $ + 4
	db #14,#0d,#0f,#00,#0a,#f1,#0a,#0a
	db #16,#f1,#0a,#0a,#0a,#f1,#0a,#0a
.l8275 equ $ + 5
	db #14,#16,#0f,#11,#00,#01,#ff,#ff
	db #ff,#01,#ff,#ff,#ff,#01,#ff,#ff
.l8286 equ $ + 6
	db #ff,#01,#01,#ff,#01,#00,#1f,#ff
	db #ff,#1f,#01,#ff,#ff,#ff,#1f,#ff
.l8297 equ $ + 7
	db #ff,#1f,#01,#1f,#ff,#1f,#00,#1f
	db #ff,#ff,#1f,#01,#1f,#1f,#01,#ff
	db #01,#ff,#01,#0a,#1f,#0a,#01,#00
.l82a8
	db #1f,#ff,#ff,#ff,#01,#ff,#1f,#ff
	db #1f,#ff,#1f,#ff,#01,#ff,#1f,#1f
	db #1f,#ff,#ff,#ff,#01,#ff,#1f,#ff
	db #1f,#ff,#1f,#ff,#01,#ff,#1f,#1f
	db #1f,#ff,#ff,#ff,#01,#ff,#1f,#ff
	db #1f,#ff,#1f,#ff,#01,#ff,#1f,#1f
	db #1f,#ff,#1f,#ff,#01,#0a,#1f,#01
	db #ff,#01,#ff,#0a,#0a,#1f,#0a,#1f
	db #00
;
.init_music		; added by Megachur
;
	cp 1
	jr nz,init_music2
	ld a,2
	jr init_music_inv
init_music2
	ld a,1
init_music_inv
	ld (l776b),a
	ret
;
.play_music
;
	call play_music_interrupt
	call play_music_interrupt
	call play_music_interrupt
	call play_music_interrupt
	call play_music_interrupt
	jp play_music_interrupt
;
; init a=1,2 ld (l776b),a call #7375
; play #740e
;
; #5af0
; push af
; push bc
; push de
; push hl
; push ix
; push iy
; call #730c
; call #730c
; pop iy
; pop ix
; pop hl
; pop de
; pop bc
; pop af
;
; #744c
;
; ld c,#38
; ld a,#07
; call #763c
; ld a,(#7781)
; jp #741a
;
.music_info
	db "Slap Fight (1987)(Imagine Software)()",0
	db "",0

	read "music_end.asm"
