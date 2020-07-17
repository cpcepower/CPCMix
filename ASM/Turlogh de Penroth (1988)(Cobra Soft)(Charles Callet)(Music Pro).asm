; Music of Turlogh de Penroth (1988)(Cobra Soft)(Charles Callet)(Music Pro)
; Ripped by Megachur the 15/10/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TURLOGHDP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #7500

	read "music_header.asm"
	
	jp l7518	; init player interrupt
	jp l7526	; stop player interrupt
.l7506
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l7518
	call l754e
	ld hl,l7506
	ld b,#83
	ld de,l752f
	jp #bcd7
.l7526
	ld hl,l7506
	call #bcdd
	jp #bca7
.l752f
	di
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	call l75f5
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ei
	reti
	xor a
	ld (l7ace),a
	call l756c
	ret
;
.init_music
.l754e
;
	ld a,#ff
	ld (l7ace),a
	call l756c
	ret
	and #07
	ld b,a
	add a
	add b
	ld c,a
	ld b,#00
	ld hl,l7d05
	add hl,bc
	ld e,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld c,(hl)
	call l7a72
	ret
.l756c
	xor a
	ld (l7aca),a
	ld hl,l7ad5
	ld (hl),#00
	ld de,l7ad6
	ld bc,#0128
	ldir
	ld a,(l967d)
	ld (l7bfe),a
	ld bc,l967c
	ld hl,(l967e)
	add hl,bc
	ld (l7c01),hl
	ld hl,(l9680)
	add hl,bc
	ld (l7c03),hl
	ld hl,(l9682)
	add hl,bc
	ld (l7ada),hl
	ld hl,(l9684)
	add hl,bc
	ld (l7b15),hl
	ld hl,(l9686)
	add hl,bc
	ld (l7b50),hl
	ld hl,l9688
	ld (l7bff),hl
	ld a,#0f
	ld (l7c06),a
	ld hl,l7acf
	ld de,l7ad5
	ld bc,#0005
	ldir
	ld hl,l7acf
	ld de,l7b10
	ld bc,#0005
	ldir
	ld hl,l7acf
	ld de,l7b4b
	ld bc,#0005
	ldir
	ld c,#38
	ld a,#07
	call l7ce3
	ld a,#ff
	ld (l7aca),a
	ret
	ex de,hl
	ld bc,l967c
	add hl,bc
	ex de,hl
	ldi
	ldi
	ret
	ld c,#ff		; datas !!!
	nop
	ld bc,#0a0a
	dec d
	dec d
;
.play_music
.l75f5
;
	ld a,(l7aca)
	or a
	ret z
	xor a
	ld (l7aca),a
	ld a,#08
	ld (l7c08),a
	cpl
	ld (l7c09),a
	ld a,(l7c06)
	ld e,a
	ld b,#03
	ld hl,l7b6a
.l7610
	ld a,(hl)
	ld c,a
	ld a,c
	cp e
	jr c,l7617
	ld a,e
.l7617
	ld c,a
	ld a,b
	add #07
	push de
	call l7ce3
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l7610
	ld hl,l7bfe
	dec (hl)
	ld ix,l7ad5
	xor a
.l7631
	ld (l7c05),a
	ld a,(ix+#07)
	or a
	jp nz,l78e4
.l763b
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l7645
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jr nz,l76b3
	ld l,(ix+#01)
	ld h,(ix+#02)
.l7656
	ld a,(hl)
	cp #ff
	jr nz,l7694
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l7ace)
	or a
	jr nz,l7656
	push hl
	push bc
	push de
	ld a,(l7c05)
	ld c,a
	ld b,#00
	ld hl,l7acb
	add hl,bc
	push hl
	ld e,(hl)
	add a
	ld c,a
	ld hl,l9682
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l967c
	add hl,bc
	ld (hl),e
	pop hl
	ld a,#0e
	ld (hl),a
	pop de
	pop bc
	pop hl
	jp l7656
.l7694
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l7bff)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l967c
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l7645
.l76b3
	bit 7,a
	jr nz,l771d
	ld hl,l7c10
	or a
	jr z,l76c0
	add (ix+#20)
.l76c0
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
	ld a,(l7c05)
	inc a
	ld hl,l7b72
	ld bc,#0014
.l76f2
	add hl,bc
	dec a
	jr nz,l76f2
	ldir
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l7c05)
	inc a
	ld hl,l7bae
	ld bc,#0014
.l770a
	add hl,bc
	dec a
	jr nz,l770a
	ldir
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l78d0
.l771d
	bit 6,a
	jr nz,l776e
	bit 5,a
	jp z,l775b
	push af
	xor a
	ld (l7c0a),a
	pop af
.l772c
	and #1f
	ld b,a
	jr z,l7743
	ld a,(l7c07)
	push hl
	ld hl,l7c09
	and (hl)
	pop hl
	ld c,a
	ld a,#07
	call l7ce3
	jp l7752
.l7743
	ld a,(l7c07)
	push hl
	ld hl,l7c08
	or (hl)
	pop hl
	ld c,a
	ld a,#07
	call l7ce3
.l7752
	ld c,b
	ld a,#06
	call l7ce3
	jp l78d0
.l775b
	and #1f
	ld hl,l7cd0
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l78d0
.l776e
	bit 5,a
	jr nz,l77db
	and #1f
	add a
	add a
	add a
	ld hl,(l7c01)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l7789
	ld a,(de)
	bit 7,a
	jr nz,l779b
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l77b3
.l779b
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
	jr nz,l77ad
	ld b,#01
.l77ad
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l77b3
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jr nz,l7789
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l7b72
	ld a,(l7c05)
	inc a
.l77d1
	add hl,bc
	dec a
	jr nz,l77d1
	ex de,hl
	ldir
	jp l78d0
.l77db
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l77f2
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
.l77f2
	jp m,#5277
	ld a,b
	ld c,(hl)
	ld a,b
	ld (bc),a
	ld a,b
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l78d0
	pop hl
	ld a,(hl)
	ld (l7c0a),a
	and #3f
	ld (l7c0c),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l7c0d),a
	ld a,(l7c0a)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l7c0a),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l7c0a
	or (hl)
	ld (l7c0a),a
	ld (l7c0b),a
	ld a,(l7c0c)
	ld (l7c0f),a
	ld hl,l7c0d
	ld b,#ff
	cp (hl)
	jr nc,l7844
	ld b,#01
.l7844
	ld a,b
	ld (l7c0e),a
	ld a,(l7c0f)
	jp l772c
	ld a,#02
	jr l7854
	ld a,#01
.l7854
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jr z,l78c5
	add a
	add a
	add a
	ld hl,(l7c03)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l7872
	ld a,(de)
	bit 7,a
	jr nz,l7886
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
	jp l789e
.l7886
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
	jr nz,l7898
	ld b,#ff
.l7898
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l789e
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jr nz,l7872
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l7bae
	ld a,(l7c05)
	inc a
.l78bc
	add hl,bc
	dec a
	jr nz,l78bc
	ex de,hl
	ldir
	jr l78ca
.l78c5
	ld a,#00
	ld (ix+#09),a
.l78ca
	ld a,(ix+#09)
	ld (ix+#3a),a
.l78d0
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l763b
.l78e4
	ld a,(l7bfe)
	or a
	jr nz,l78ed
	dec (ix+#07)
.l78ed
	ld a,(ix+#0a)
	cp #04
	jp z,l7937
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
	jr nz,l791a
	dec (hl)
	jr nz,l790d
	inc (ix+#0a)
.l790d
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l7937
.l791a
	dec (hl)
	jr nz,l792f
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
	jp l7931
.l792f
	inc hl
	inc hl
.l7931
	dec (hl)
	jr nz,l7937
	inc (ix+#0a)
.l7937
	ld a,(ix+#09)
	or a
	jp z,l79d4
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
	jr nz,l7975
	dec (hl)
	jr nz,l7959
	inc (ix+#21)
.l7959
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jr nz,l7965
	ld b,#00
.l7965
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l79a3
.l7975
	dec (hl)
	jr nz,l799b
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
	jr nz,l7989
	ld b,#00
.l7989
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l799d
.l799b
	inc hl
	inc hl
.l799d
	dec (hl)
	jr nz,l79a3
	inc (ix+#21)
.l79a3
	ld a,(ix+#21)
	cp #04
	jr nz,l79d4
	ld a,(ix+#09)
	cp #02
	jr nz,l79b8
	ld a,#00
	ld (ix+#09),a
	jr l79d4
.l79b8
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l7c05)
	inc a
	ld hl,l7bae
	ld bc,#0014
.l79ce
	add hl,bc
	dec a
	jr nz,l79ce
	ldir
.l79d4
	ld c,(ix+#36)
	ld a,(l7c05)
	add a
	call l7ce3
	ld c,(ix+#37)
	inc a
	call l7ce3
	ld bc,#003b
	add ix,bc
	ld a,(l7c08)
	rlc a
	ld (l7c08),a
	cpl
	ld (l7c09),a
	ld a,(l7c05)
	inc a
	cp #03
	jp nz,l7631
	ld a,(l7c0a)
	or a
	jr z,l7a36
	dec a
	ld (l7c0a),a
	or a
	jr nz,l7a36
	ld a,(l7c0b)
	ld (l7c0a),a
	ld a,(l7c0f)
	ld hl,l7c0e
	add (hl)
	ld (l7c0f),a
	ld c,a
	ld hl,l7c0c
	cp (hl)
	jr z,l7a29
	ld hl,l7c0d
	cp (hl)
	jr nz,l7a31
.l7a29
	ld a,(l7c0e)
	xor #fe
	ld (l7c0e),a
.l7a31
	ld a,#06
	call l7ce3
.l7a36
	ld a,(l7bfe)
	or a
	jr nz,l7a42
	ld a,(l967d)
	ld (l7bfe),a
.l7a42
	ld a,#ff
	ld (l7aca),a
	ret
	push hl
	push de
	push bc
	push af
	xor a
	ld (l7aca),a
	ld a,b
	ld (l7acb),a
	ld hl,l7acf
	ld de,l7ad5
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l7adc),a
	ld a,#ff
	ld (l7aca),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.l7a72
	push hl
	push de
	push bc
	push af
	xor a
	ld (l7aca),a
	ld a,e
	ld (l7acb),a
	ld a,b
	ld (l7acc),a
	ld a,c
	ld (l7acd),a
	ld hl,l7acf
	ld de,l7ad5
	ldi
	ldi
	ldi
	ldi
	ldi
	ld hl,l7acf
	ld de,l7b10
	ldi
	ldi
	ldi
	ldi
	ldi
	ld hl,l7acf
	ld de,l7b4b
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l7adc),a
	ld (l7b17),a
	ld (l7b52),a
	ld a,#ff
	ld (l7aca),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.l7acf equ $ + 5
.l7ace equ $ + 4
.l7acd equ $ + 3
.l7acc equ $ + 2
.l7acb equ $ + 1
.l7aca
	db #ff,#0e,#0e,#0e,#ff,#00
	dw l7ad4,l7ad4
.l7ad4
	db #ff
.l7adc equ $ + 7
.l7ada equ $ + 5
.l7ad6 equ $ + 1
.l7ad5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7b10 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7b17 equ $ + 2
.l7b15
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7b4b equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7b52 equ $ + 5
.l7b50 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7b6a equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7b72 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7bae equ $ + 1
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
.l7c03 equ $ + 6
.l7c01 equ $ + 4
.l7bff equ $ + 2
.l7bfe equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7c0c equ $ + 7
.l7c0b equ $ + 6
.l7c0a equ $ + 5
.l7c09 equ $ + 4
.l7c08 equ $ + 3
.l7c07 equ $ + 2
.l7c06 equ $ + 1
.l7c05
	db #00,#00,#38,#00,#00,#00,#00,#00
.l7c10 equ $ + 3
.l7c0f equ $ + 2
.l7c0e equ $ + 1
.l7c0d
	db #00,#00,#00,#00,#00
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
.l7cd0
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60,#00,#00,#00,#00
	db #00,#c9,#00
.l7ce3
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
.l7d05
	db #0e,#0e,#03,#0e,#04,#04,#0e,#0e
	db #05,#0e,#0e,#06,#0e,#0e,#07,#09
	db #0a,#08,#0b,#0e,#0e,#0c,#0e,#0e
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
	db #00,#00,#00,#00,#00,#00,#00
;-------code cleared-----------
.l967c
	db #00
.l9684 equ $ + 7
.l9682 equ $ + 5
.l9680 equ $ + 3
.l967e equ $ + 1
.l967d
	db #02,#a6,#00,#a6,#01,#56,#00,#68
.l9688 equ $ + 3
.l9686 equ $ + 1
	db #00,#7c,#00,#a6,#02,#ee,#02,#3a
	db #03,#60,#03,#85,#03,#9f,#03,#c5
	db #03,#21,#04,#77,#04,#92,#04,#a3
	db #04,#e9,#04,#0f,#05,#34,#05,#7a
	db #05,#be,#05,#d8,#05,#04,#06,#8b
	db #06,#ec,#06,#07,#07,#18,#07,#4d
	db #07,#82,#07,#9e,#07,#bb,#07,#e4
	db #07,#06,#08,#6e,#08,#d6,#08,#18
	db #09,#48,#09,#eb,#09,#ff,#09,#13
	db #0a,#24,#0a,#3e,#0a,#00,#01,#01
	db #02,#03,#01,#01,#04,#05,#06,#07
	db #07,#02,#03,#08,#05,#09,#ff,#0a
	db #0a,#0a,#0b,#0c,#0d,#0e,#0d,#0e
	db #0f,#10,#11,#12,#12,#0b,#0c,#13
	db #10,#14,#ff,#15,#15,#15,#15,#15
	db #15,#16,#17,#17,#15,#15,#16,#17
	db #18,#19,#19,#19,#1a,#1b,#1c,#1b
	db #1c,#1d,#1e,#1f,#1f,#1f,#20,#20
	db #20,#20,#21,#21,#21,#22,#23,#23
	db #23,#23,#1e,#24,#ff,#0f,#00,#0f
	db #00,#0f,#00,#0f,#00,#01,#0f,#0f
	db #ff,#01,#00,#01,#00,#01,#0d,#0d
	db #ff,#01,#00,#01,#00,#01,#0b,#0b
	db #ff,#01,#00,#01,#00,#01,#09,#09
	db #ff,#01,#00,#01,#00,#01,#07,#07
	db #ff,#01,#00,#01,#00,#01,#0e,#01
	db #00,#82,#9c,#01,#00,#01,#0f,#01
	db #00,#01,#f1,#01,#00,#01,#0d,#01
	db #00,#01,#f3,#01,#00,#01,#0b,#01
	db #00,#01,#f5,#01,#00,#01,#0e,#01
	db #00,#08,#00,#01,#00,#01,#0e,#01
	db #00,#84,#b8,#01,#00,#01,#0c,#01
	db #00,#01,#00,#01,#00,#01,#0f,#04
	db #ff,#08,#00,#0b,#ff,#01,#0d,#82
	db #84,#02,#00,#0b,#ff,#01,#0d,#02
	db #00,#06,#fe,#01,#ff,#01,#0e,#01
	db #00,#01,#f2,#01,#00,#01,#0f,#02
	db #00,#0f,#ff,#01,#00,#01,#0f,#02
	db #00,#82,#9e,#01,#00,#01,#0a,#01
	db #00,#01,#f6,#01,#00,#01,#0c,#01
	db #00,#01,#f4,#01,#00,#01,#0e,#01
	db #00,#01,#f2,#01,#00,#01,#0c,#04
	db #00,#0b,#ff,#01,#00,#01,#0e,#04
	db #00,#0b,#ff,#04,#00,#01,#0f,#04
	db #00,#0f,#ff,#01,#00,#01,#0c,#03
	db #00,#04,#fd,#01,#00,#01,#0e,#03
	db #00,#04,#fd,#01,#fe,#01,#0f,#03
	db #00,#08,#ff,#01,#00,#01,#0d,#03
	db #00,#08,#ff,#05,#00,#01,#0f,#09
	db #ff,#09,#01,#0f,#ff,#01,#0f,#02
	db #00,#0c,#ff,#0c,#01,#01,#0d,#0c
	db #ff,#0d,#01,#0e,#ff,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#01,#82
	db #02,#82,#84,#82,#02,#01,#00,#01
	db #3c,#03,#ec,#01,#ef,#01,#00,#01
	db #01,#01,#fe,#01,#01,#01,#00,#01
	db #ff,#01,#ff,#01,#ff,#01,#00,#01
	db #fd,#01,#fe,#01,#fe,#01,#00,#01
	db #00,#01,#01,#01,#ff,#01,#00,#01
	db #7f,#03,#d8,#01,#d1,#06,#00,#01
	db #ff,#01,#00,#01,#01,#08,#00,#01
	db #01,#01,#fe,#01,#01,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff,#01,#00,#01
	db #7f,#03,#d8,#01,#d1,#06,#00,#01
	db #ff,#01,#00,#01,#01,#08,#00,#01
	db #01,#01,#fe,#01,#01,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff,#01,#00,#01
	db #7f,#03,#d8,#01,#d1,#06,#00,#01
	db #ff,#01,#00,#01,#01,#08,#00,#01
	db #01,#01,#fe,#01,#01,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff,#01,#00,#01
	db #7f,#03,#d8,#01,#d1,#06,#00,#01
	db #ff,#01,#00,#01,#01,#08,#00,#01
	db #01,#01,#fe,#01,#01,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff,#01,#00,#01
	db #7f,#03,#d8,#01,#d1,#06,#00,#01
	db #ff,#01,#00,#01,#01,#08,#00,#01
	db #01,#01,#fe,#01,#01,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff,#c1,#e1,#03
	db #84,#e0,#00,#31,#c2,#31,#c3,#31
	db #c4,#31,#c1,#34,#c2,#34,#c3,#34
	db #c4,#34,#c1,#33,#c2,#33,#c3,#33
	db #c4,#33,#c1,#2f,#c2,#2f,#c3,#2f
	db #c4,#2f,#c1,#31,#c2,#31,#c3,#31
	db #c4,#31,#c1,#34,#c2,#34,#c3,#34
	db #c4,#34,#c1,#33,#c2,#33,#c3,#33
	db #c4,#33,#c1,#2f,#c2,#2f,#c3,#2f
	db #ca,#82,#38,#3b,#ff,#ca,#e1,#03
	db #84,#e0,#00,#3d,#82,#3b,#cb,#3d
	db #e1,#04,#86,#3d,#e1,#03,#84,#40
	db #82,#3f,#84,#40,#82,#3f,#84,#3d
	db #3f,#82,#3b,#ca,#85,#38,#cb,#88
	db #38,#82,#38,#3b,#84,#39,#82,#38
	db #ca,#39,#cb,#e1,#05,#86,#39,#e1
	db #03,#84,#3d,#82,#3b,#84,#3d,#82
	db #42,#84,#40,#3f,#82,#3d,#3f,#88
	db #3f,#c0,#84,#00,#cb,#82,#38,#3b
	db #ff,#c1,#e1,#03,#82,#e0,#00,#3d
	db #c2,#3d,#c1,#3d,#c2,#3d,#c1,#3d
	db #c2,#3d,#c1,#3d,#c2,#3d,#c1,#44
	db #c2,#44,#c1,#43,#c2,#43,#c1,#42
	db #c2,#42,#c1,#40,#c2,#40,#ff,#c1
	db #e1,#03,#82,#e0,#00,#3d,#c2,#3d
	db #c1,#3d,#c2,#3d,#c1,#3d,#c2,#3d
	db #c1,#3d,#c2,#3d,#c1,#40,#c2,#40
	db #c1,#3f,#c2,#3f,#c1,#3d,#c2,#3d
	db #c6,#38,#3b,#ff,#cb,#e1,#03,#84
	db #e0,#00,#3d,#82,#3a,#84,#38,#3b
	db #82,#3a,#84,#36,#82,#31,#33,#34
	db #39,#3d,#3f,#3b,#38,#ff,#cb,#e1
	db #03,#86,#e0,#00,#3d,#cc,#80,#31
	db #33,#35,#38,#3a,#3d,#3f,#41,#44
	db #42,#41,#3d,#3a,#38,#e1,#01,#36
	db #35,#31,#2e,#2c,#e1,#03,#2a,#29
	db #25,#22,#20,#ff,#c0,#e1,#03,#87
	db #e0,#00,#00,#cc,#e1,#07,#84,#44
	db #c0,#00,#cc,#44,#c0,#00,#00,#cc
	db #e1,#08,#85,#46,#c0,#82,#00,#cc
	db #85,#46,#c0,#82,#00,#cc,#85,#46
	db #c0,#82,#00,#cc,#85,#46,#c0,#82
	db #00,#e1,#04,#87,#00,#d0,#82,#55
	db #55,#84,#55,#82,#55,#55,#55,#84
	db #55,#82,#55,#c0,#00,#d0,#50,#84
	db #50,#82,#50,#c0,#84,#00,#d0,#82
	db #50,#84,#50,#82,#50,#50,#c0,#00
	db #d0,#50,#cb,#e1,#03,#38,#3b,#ff
	db #cb,#e1,#03,#84,#e0,#00,#3d,#82
	db #3b,#ca,#3d,#cb,#e1,#04,#86,#3d
	db #e1,#03,#84,#40,#82,#3f,#84,#40
	db #3f,#82,#3d,#84,#3f,#82,#3d,#84
	db #3f,#3b,#ca,#82,#38,#cb,#e1,#04
	db #87,#38,#e1,#03,#82,#38,#3b,#84
	db #39,#82,#38,#39,#e1,#05,#86,#39
	db #e1,#03,#84,#3d,#82,#3b,#84,#3d
	db #42,#82,#40,#84,#3f,#82,#3d,#84
	db #3f,#3d,#82,#3f,#e1,#04,#87,#3f
	db #e1,#03,#82,#38,#3b,#ff,#c6,#e1
	db #03,#84,#e0,#00,#3d,#82,#3b,#84
	db #3d,#40,#82,#3f,#84,#40,#43,#82
	db #42,#84,#43,#44,#82,#43,#84,#44
	db #ff,#c0,#e1,#03,#82,#e0,#00,#00
	db #c1,#3d,#c0,#00,#c1,#3d,#c0,#86
	db #00,#ff,#c1,#e1,#01,#84,#e0,#00
	db #31,#c2,#31,#c3,#31,#c4,#31,#c1
	db #34,#c2,#34,#c3,#34,#c4,#34,#c1
	db #33,#c2,#33,#c3,#33,#c4,#33,#c1
	db #2f,#c2,#2f,#c3,#2f,#c4,#2f,#c1
	db #2d,#c2,#2d,#c3,#2d,#c4,#2d,#c1
	db #31,#c2,#31,#c3,#31,#c4,#31,#c1
	db #2f,#c2,#2f,#c3,#2f,#c4,#2f,#c1
	db #2c,#c2,#2c,#c3,#2c,#c4,#2c,#ff
	db #c1,#e1,#01,#82,#e0,#00,#3d,#c2
	db #3d,#c1,#3d,#c2,#3d,#c1,#3d,#c2
	db #3d,#c1,#3d,#c2,#3d,#c1,#3d,#c2
	db #3d,#c1,#3d,#c2,#3d,#c1,#3d,#c2
	db #3d,#c1,#3d,#c2,#3d,#ff,#c1,#e1
	db #01,#82,#e0,#00,#39,#c2,#39,#c1
	db #39,#c2,#39,#c1,#39,#c2,#39,#c1
	db #39,#c2,#39,#c1,#39,#c2,#39,#c1
	db #39,#c2,#39,#c1,#39,#c2,#39,#c6
	db #34,#33,#ff,#c1,#e1,#01,#82,#e0
	db #00,#31,#c2,#31,#c1,#31,#c2,#31
	db #c1,#31,#c2,#31,#c1,#31,#c2,#31
	db #c1,#34,#c2,#34,#c1,#34,#c2,#34
	db #c1,#34,#c2,#34,#c1,#34,#c2,#34
	db #c1,#33,#c2,#33,#c1,#33,#c2,#33
	db #c1,#33,#c2,#33,#c1,#33,#c2,#33
	db #c1,#2f,#c2,#2f,#c1,#2f,#c2,#2f
	db #c1,#2f,#c2,#2f,#c1,#2f,#c2,#2f
	db #ff,#c1,#e1,#01,#82,#e0,#00,#2d
	db #c2,#2d,#c1,#2d,#c2,#2d,#c1,#2d
	db #c2,#2d,#c1,#2d,#c2,#2d,#c1,#31
	db #c2,#31,#c1,#31,#c2,#31,#c1,#31
	db #c2,#31,#c1,#31,#c2,#31,#c1,#33
	db #c2,#33,#c1,#31,#33,#33,#c2,#33
	db #c1,#33,#c2,#33,#c1,#2f,#c2,#2f
	db #c1,#2f,#c2,#2f,#c1,#2f,#c2,#2f
	db #c1,#2c,#c2,#2f,#ff,#cb,#e1,#01
	db #84,#e0,#00,#3d,#82,#3a,#84,#38
	db #3b,#82,#3a,#84,#36,#82,#31,#33
	db #2d,#31,#34,#3b,#38,#33,#ff,#cb
	db #e1,#01,#82,#e0,#00,#3d,#cc,#80
	db #3d,#3a,#38,#35,#3a,#38,#31,#33
	db #35,#38,#3a,#3d,#3f,#41,#44,#42
	db #41,#3d,#3a,#38,#e1,#03,#36,#35
	db #31,#2e,#2c,#e1,#01,#2a,#29,#25
	db #22,#20,#ff,#c1,#e1,#03,#82,#e0
	db #00,#25,#c2,#25,#c3,#25,#c1,#25
	db #c2,#25,#c3,#25,#c1,#25,#c3,#25
	db #c1,#25,#c2,#25,#c3,#25,#c1,#25
	db #c2,#25,#c3,#25,#c1,#25,#c3,#25
	db #c1,#23,#c2,#23,#c3,#23,#c1,#23
	db #c2,#23,#c3,#23,#c1,#23,#c3,#23
	db #c1,#23,#c2,#23,#c3,#23,#c1,#23
	db #c2,#23,#c3,#23,#c1,#23,#c3,#23
	db #c1,#21,#c2,#21,#c3,#21,#c1,#21
	db #c2,#21,#c3,#21,#c1,#21,#c3,#21
	db #c1,#21,#c2,#21,#c3,#21,#c1,#21
	db #c2,#21,#c3,#21,#c1,#21,#c3,#21
	db #c1,#23,#c2,#23,#c3,#23,#c1,#23
	db #c2,#23,#c3,#23,#c1,#23,#c3,#23
	db #c1,#20,#c2,#20,#c3,#20,#c1,#20
	db #c2,#20,#c3,#20,#cb,#e1,#01,#38
	db #3b,#ff,#cb,#e1,#01,#84,#e0,#00
	db #3d,#82,#3b,#3d,#c2,#31,#c1,#31
	db #c2,#31,#c3,#31,#cb,#84,#40,#82
	db #3f,#84,#40,#3f,#82,#3d,#84,#3f
	db #82,#3d,#84,#3f,#3b,#38,#c2,#82
	db #2f,#c1,#2f,#2f,#c2,#2f,#c3,#2f
	db #cb,#38,#3b,#84,#39,#82,#38,#39
	db #c1,#2d,#c2,#2d,#c3,#2d,#c4,#2d
	db #cb,#84,#3d,#82,#3b,#84,#3d,#42
	db #82,#40,#84,#3f,#82,#3d,#84,#3f
	db #3d,#82,#3f,#c1,#2c,#c2,#2c,#c1
	db #2f,#c2,#2f,#c1,#2c,#c2,#2c,#cb
	db #38,#3b,#ff,#c6,#e1,#01,#84,#e0
	db #00,#3d,#82,#3b,#84,#3d,#40,#82
	db #3f,#84,#40,#43,#82,#42,#84,#43
	db #44,#82,#43,#84,#44,#ff,#c0,#e1
	db #01,#82,#e0,#00,#00,#c1,#3d,#c0
	db #00,#c1,#3d,#c0,#86,#00,#ff,#a0
	db #c6,#e1,#01,#84,#e0,#00,#19,#a1
	db #c9,#e1,#00,#82,#00,#c8,#00,#a5
	db #c1,#e1,#02,#2c,#c2,#2c,#c3,#2c
	db #c4,#2c,#a0,#c6,#e1,#03,#84,#19
	db #a1,#c9,#e1,#00,#82,#00,#c8,#00
	db #a5,#c1,#e1,#02,#2c,#c2,#2c,#c3
	db #2c,#c4,#2c,#ff,#a0,#c6,#e1,#01
	db #84,#e0,#00,#15,#a1,#c9,#e1,#00
	db #82,#00,#c8,#00,#a4,#c1,#e1,#02
	db #2c,#c2,#2c,#c3,#2c,#c4,#2c,#a0
	db #c6,#e1,#01,#84,#15,#a1,#c9,#e1
	db #00,#82,#00,#c8,#00,#a5,#c1,#e1
	db #02,#2c,#c2,#2c,#c3,#2c,#c4,#2c
	db #ff,#a0,#c6,#e1,#01,#84,#e0,#00
	db #17,#a1,#c9,#e1,#00,#82,#00,#c8
	db #00,#a5,#c1,#e1,#02,#2c,#c2,#2c
	db #c3,#2c,#c4,#2c,#ff,#a0,#c6,#e1
	db #01,#84,#e0,#00,#17,#a1,#c9,#e1
	db #00,#82,#00,#a5,#c1,#e1,#02,#2c
	db #c3,#2c,#a7,#c1,#2c,#a9,#2c,#ac
	db #2c,#ff,#a0,#c1,#e1,#01,#82,#e0
	db #00,#19,#a1,#c8,#e1,#00,#00,#a5
	db #c1,#e1,#02,#2c,#c2,#2c,#a0,#c1
	db #e1,#01,#19,#a1,#c7,#e1,#00,#00
	db #a5,#c1,#e1,#02,#2c,#a1,#c9,#e1
	db #00,#00,#ff,#a0,#c1,#e1,#01,#82
	db #e0,#00,#19,#a1,#c8,#e1,#00,#00
	db #a5,#c1,#e1,#02,#2c,#c2,#2c,#a0
	db #c1,#e1,#01,#19,#a5,#e1,#02,#2c
	db #a8,#2c,#ac,#2c,#ff,#a0,#c1,#e1
	db #01,#82,#e0,#00,#19,#c2,#19,#a5
	db #c1,#e1,#02,#2c,#a0,#e1,#01,#17
	db #19,#c2,#19,#a5,#c1,#e1,#02,#2c
	db #a0,#e1,#01,#19,#1c,#c2,#1c,#a5
	db #c1,#e1,#02,#2c,#a0,#e1,#01,#1b
	db #1c,#c2,#1c,#a5,#c1,#e1,#02,#2c
	db #a0,#e1,#01,#1c,#1b,#c2,#1b,#a5
	db #c1,#e1,#02,#2c,#a0,#e1,#01,#14
	db #1b,#c2,#1b,#a5,#c1,#e1,#02,#2c
	db #a0,#e1,#01,#1b,#17,#c2,#17,#a5
	db #c1,#e1,#02,#2c,#a0,#e1,#01,#16
	db #17,#c2,#17,#a5,#c1,#e1,#02,#2c
	db #a0,#e1,#01,#14,#ff,#a0,#c1,#e1
	db #01,#82,#e0,#00,#15,#c2,#15,#a5
	db #c1,#e1,#02,#2c,#a0,#e1,#01,#14
	db #15,#c2,#15,#a5,#c1,#e1,#02,#2c
	db #a0,#e1,#01,#15,#19,#c2,#19,#a5
	db #c1,#e1,#02,#2c,#a0,#e1,#01,#15
	db #19,#c2,#19,#a5,#c1,#e1,#02,#2c
	db #a0,#e1,#01,#19,#17,#c2,#17,#a5
	db #c1,#e1,#02,#2c,#a0,#e1,#01,#14
	db #17,#c2,#17,#a5,#c1,#e1,#02,#2c
	db #a0,#e1,#01,#17,#14,#c2,#14,#a5
	db #c1,#e1,#02,#2c,#a0,#e1,#01,#14
	db #14,#c2,#14,#a5,#c1,#e1,#02,#2c
	db #a0,#e1,#01,#17,#ff,#e3,#01,#5f
	db #cb,#e1,#01,#82,#e0,#00,#25,#a1
	db #c8,#e1,#00,#00,#e3,#01,#5f,#c1
	db #e1,#01,#23,#20,#a1,#e1,#00,#00
	db #e3,#01,#5f,#e1,#01,#23,#a1,#c7
	db #e1,#00,#00,#e3,#01,#5f,#c1,#e1
	db #01,#22,#1e,#a1,#c7,#e1,#00,#00
	db #e3,#01,#5f,#c1,#e1,#01,#19,#1b
	db #1c,#21,#25,#28,#2f,#2c,#ff,#a5
	db #c1,#e1,#02,#82,#e0,#00,#2c,#c2
	db #2c,#c3,#2c,#c4,#2c,#a0,#cc,#e1
	db #01,#80,#31,#33,#35,#38,#3a,#3d
	db #3f,#41,#38,#36,#35,#31,#2e,#2c
	db #e1,#03,#2a,#29,#25,#22,#20,#e1
	db #01,#1e,#1d,#19,#16,#14,#ff,#a0
	db #c1,#e1,#01,#84,#e0,#00,#25,#c2
	db #25,#a6,#c1,#e1,#02,#82,#2c,#c2
	db #2c,#c3,#2c,#c4,#2c,#a0,#c1,#e1
	db #01,#84,#28,#c2,#28,#a5,#c1,#e1
	db #02,#82,#2c,#c2,#2c,#c3,#2c,#c4
	db #2c,#a0,#c1,#e1,#01,#84,#27,#c2
	db #27,#a5,#c1,#e1,#02,#82,#2c,#c2
	db #2c,#c3,#2c,#c4,#2c,#a0,#c1,#e1
	db #01,#84,#23,#c2,#23,#a5,#c1,#e1
	db #02,#82,#2c,#c2,#2c,#c3,#2c,#c4
	db #2c,#a0,#c1,#e1,#01,#84,#21,#c2
	db #21,#a5,#c1,#e1,#02,#82,#2c,#c2
	db #2c,#c3,#2c,#c4,#2c,#a0,#c1,#e1
	db #01,#84,#25,#c2,#25,#a5,#c1,#e1
	db #02,#82,#2c,#c2,#2c,#c3,#2c,#c4
	db #2c,#a0,#c1,#e1,#01,#84,#27,#c2
	db #27,#a5,#c1,#e1,#02,#82,#2c,#c2
	db #2c,#c3,#2c,#c4,#2c,#a0,#c1,#e1
	db #01,#84,#23,#c2,#23,#a5,#c1,#e1
	db #02,#82,#2c,#c2,#2c,#c3,#2c,#c4
	db #2c,#ff,#a0,#c1,#e1,#01,#82,#e0
	db #00,#25,#c2,#25,#a5,#c1,#e1,#02
	db #2c,#a0,#e1,#01,#25,#ff,#a0,#c1
	db #e1,#01,#82,#e0,#00,#21,#c2,#21
	db #a5,#c1,#e1,#02,#2c,#a0,#e1,#01
	db #21,#ff,#a6,#c1,#e1,#02,#82,#e0
	db #00,#2c,#a8,#c2,#2c,#ab,#c1,#2c
	db #b1,#2c,#ff,#a5,#c1,#e1,#02,#82
	db #e0,#00,#2c,#a1,#c8,#e1,#00,#00
	db #a7,#c1,#e1,#02,#2c,#ad,#2c,#a1
	db #c8,#e1,#00,#00,#ff,#a1,#c1,#e1
	db #00,#82,#e0,#00,#00,#a0,#e1,#01
	db #25,#a1,#c7,#e1,#00,#00,#a0,#c1
	db #e1,#01,#25,#c0,#86,#00,#ff,#30
	db #32,#32,#68,#2c,#30,#31,#45,#68
	db #2c,#30,#41,#31,#68,#2c,#30,#43
	db #37,#68,#0d,#09,#44,#45,#46,#42
	db #20,#30,#45,#31,#68,#2c,#30,#30
	db #30,#68,#2c,#30,#30,#30,#68,#14
	db #15,#c2,#15,#a5,#c1,#e1,#02,#2c
	db #a0,#e1,#01,#15,#19,#c2,#19,#a5
	db #c1,#e1,#02,#2c,#a0,#e1,#01,#15
	db #19,#c2,#19,#a5,#c1,#e1,#02,#2c
	db #a0,#e1,#01,#19,#17,#c2,#17,#a5
	db #c1,#e1,#02,#2c,#a0,#e1,#01,#14
	db #17,#c2,#17,#a5,#c1,#e1,#02,#2c
	db #a0,#e1,#01,#17,#14,#c2,#14,#a5
	db #c1,#e1,#02,#2c,#a0,#e1,#01,#14
	db #14,#c2,#14,#a5,#c1,#e1,#02,#2c
	db #a0,#e1,#01,#17,#ff,#e3,#01,#5f
	db #cb,#e1,#01,#82,#e0,#00,#25,#a1
	db #c8,#e1,#00,#00,#e3,#01,#5f,#c1
	db #e1,#01,#23,#20,#a1,#e1,#00,#00
	db #e3,#01,#5f,#e1,#01,#23,#a1,#c7
	db #e1,#00,#00,#e3,#01,#5f,#c1,#00
	db #00
;
.music_info
	db "Turlogh de Penroth (1988)(Cobra Soft)(Charles Callet)",0
	db "Music Pro",0

	read "music_end.asm"
