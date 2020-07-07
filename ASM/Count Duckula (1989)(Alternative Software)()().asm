; Music of Count Duckula (1989)(Alternative Software)()()
; Ripped by Megachur the 18/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "COUNTDUC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #a604

	read "music_header.asm"

	jp la627
	jp la8c8
	jp la842	; sound fx ?
	jp la671	; stop music ?
.la617 equ $ + 7
.la612 equ $ + 2
.la611 equ $ + 1
.la610
	db #08,#08,#00,#c9,#c9,#c9,#00,#40
.la618
	ld hl,#0000
	ld (la62d),hl
	ld c,#07
	ld a,#2a
	call laa2a
	jr la62f
;
.play_music
.la627
;
	push af
	push bc
	push de
	push hl
	push ix
.la62d
	jr la618
.la62f
	call la8d4
	call la88b
	ld hl,la79d
	ld a,(hl)
	ld bc,(la617)
	sub c
	ld (hl),a
	sbc a
	ld (la79c),a
	jr nc,la649
	ld a,#f0
	add (hl)
	ld (hl),a
.la649
	call la79e
	ld ix,la689
	call la6cf
	ld ix,la69b
	call la6cf
	ld ix,la6ad
	call la6cf
	sub a
	ld (la79c),a
	ld c,#00
	call laa54
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.la671
	push af
	push bc
	push de
	push hl
	sub a
	ld (la612),a
	ld hl,labb3
	ld (la838),hl
	call la905
	pop hl
	pop de
	pop bc
	pop af
	ret
.la689 equ $ + 2
.la687
	db #ff,#ff,#87,#a6,#00,#00,#04,#0a
.la696 equ $ + 7
.la693 equ $ + 4
.la692 equ $ + 3
.la691 equ $ + 2
.la68f
	db #87,#a6,#00,#02,#00,#00,#01,#01
.la69b equ $ + 4
.la69a equ $ + 3
.la697
	db #00,#00,#00,#00,#87,#a6,#00,#00
.la6a5 equ $ + 6
.la6a4 equ $ + 5
.la6a3 equ $ + 4
.la6a1 equ $ + 2
	db #00,#08,#87,#a6,#01,#02,#84,#a6
.la6ad equ $ + 6
.la6ac equ $ + 5
.la6a9 equ $ + 2
.la6a8 equ $ + 1
	db #01,#01,#00,#08,#00,#00,#87,#a6
.la6b6 equ $ + 7
.la6b5 equ $ + 6
.la6b3 equ $ + 4
	db #00,#00,#02,#09,#87,#a6,#00,#02
.la6be equ $ + 7
.la6bb equ $ + 4
.la6ba equ $ + 3
.la6b7
	db #84,#a6,#01,#01,#00,#05,#00,#00
	db #38,#73,#39,#30,#41,#49,#48,#49
	db #30,#60,#3e,#58,#79,#7c,#75,#89
.la6cf
	call la72e
	dec (ix+#0d)
	ret nz
	ld a,(ix+#0c)
	ld (ix+#0d),a
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(hl)
	inc hl
	inc a
	jr z,la71f
	dec a
	ld c,(ix+#05)
	call laa20
	ld a,(hl)
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld b,a
	ld a,(ix+#0f)
	and #03
	jr z,la70a
	ld a,#1f
	sub b
	ld c,#06
	bit 2,(ix+#0f)
	call nz,laa2a
.la70a
	ld a,(ix+#02)
	add (ix+#03)
	ld (ix+#02),a
	add b
	call la978
	ex de,hl
	ld c,(ix+#04)
	call laa13
	ret
.la71f
	bit 1,(ix+#0f)
	ret z
	res 1,(ix+#0f)
	ld (ix+#0e),a
	jp laa2a
.la72e
	ld a,(la79c)
	or a
	ret z
	dec (ix+#08)
	ret nz
	ld a,(ix+#09)
	ld (ix+#08),a
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld a,(hl)
	inc a
	ret z
	inc hl
	dec a
	ld (ix+#06),l
	ld (ix+#07),h
	or a
	ret z
	bit 1,(ix+#0f)
	ret nz
	bit 0,(ix+#0f)
	jr nz,la780
	rlca
	rlca
	ld hl,la99d
	add (hl)
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	add (hl)
	inc hl
	ld (ix+#02),a
.la76c
	call laa0e
	ld (ix+#0d),#01
	ld (ix+#0c),e
	ld (ix+#03),d
	ld (ix+#00),l
	ld (ix+#01),h
	ret
.la780
	dec a
	rlca
	rlca
	ld c,a
	ld b,#00
	ld hl,lac57
	add hl,bc
	call laa0e
	ld a,(hl)
	ld c,#07
	call laa2a
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#02),a
	ex de,hl
	jr la76c
.la79d equ $ + 1
.la79c
	db #00,#00
.la79e
	ld a,(la691)
	dec a
	ret nz
	ld hl,(la68f)
	ld a,(hl)
	inc a
	ret nz
	ld hl,(la838)
.la7ac
	inc hl
	ld a,(hl)
	dec hl
	cp #00
	jr nz,la7d9
	ld a,(hl)
	inc hl
	inc hl
	cp #0b
	jr z,la808
	cp #40
	jr z,la818
	cp #34
	jr z,la7fb
	cp #0d
	jr z,la821
	cp #c9
	jr z,la832
	cp #35
	jr z,la829
	ld hl,labb3
	ld (la838),hl
	sub a
	ld (la612),a
	ret
.la7d9
	call la83c
	ld (la692),a
	ld (la68f),de
	call la83c
	ld (la6a4),a
	ld (la6a1),de
	call la83c
	ld (la6b6),a
	ld (la6b3),de
	ld (la838),hl
	ret
.la7fb
	call laa0e
	ex de,hl
	ld (la83a),de
	ld (la838),hl
	jr la7ac
.la808
	call laa0e
	ld (la693),de
	call laa0e
	ld (la6a5),de
	jr la7ac
.la818
	call laa0e
	ld (la6b7),de
	jr la7ac
.la821
	ld a,(hl)
	ld (la99d),a
	inc hl
	inc hl
	jr la7ac
.la829
	ld a,(hl)
	ld (la617),a
	inc hl
	inc hl
	jp la7ac
.la832
	ld hl,(la83a)
	jp la7ac
.la838
	or e
	xor e
.la83a
	or e
	xor e
.la83c
	call laa0e
	ld a,(de)
	inc de
	ret
.la842
	push af
	push bc
	push de
	push hl
	push ix
	call la852
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.la852
	dec a
	cp #0d
	ret nc
	ld c,a
	rlca
	rlca
	add c
	add c
	ld c,a
	ld b,#00
	ld hl,laa7c
	add hl,bc
	ld a,(hl)
	inc hl
	ld ix,la689
	cp #01
	jr z,la878
	ld ix,la69b
	cp #02
	jr z,la878
	ld ix,la6ad
.la878
	ld a,(hl)
	cp (ix+#0e)
	ret c
	ld (ix+#11),#00
	ld (ix+#0e),a
	ld (ix+#10),l
	ld (ix+#11),h
	ret
.la88b
	ld ix,la689
	call la89d
	ld ix,la69b
	call la89d
	ld ix,la6ad
.la89d
	ld h,(ix+#11)
	ld a,h
	or a
	ret z
	ld (ix+#11),#00
	ld l,(ix+#10)
	dec hl
	dec hl
	ld a,(hl)
	ld (ix+#02),a
	dec hl
	ld a,(hl)
	dec hl
	dec hl
	ld c,#07
	bit 2,(ix+#0f)
	call nz,laa2a
	set 1,(ix+#0f)
	call laa0e
	ex de,hl
	jp la76c
;
.real_init_music
.la8c8
;
	push af
	ld a,#01
	ld (la612),a
	ld (la8d3),a
	pop af
	ret
.la8d3
	db #00
.la8d4
	ld a,(la8d3)
	or a
	ret z
	ld de,lacec
	ld (la838),de
	ld a,#01
	ld (la691),a
	ld (la6a3),a
	ld (la6b5),a
	ld (la696),a
	ld (la6a8),a
	ld (la6ba),a
	ld a,#38
	ld c,#07
	call laa2a
	sub a
	ld (la79c),a
	ld (la79d),a
	ld (la8d3),a
.la905
	ld hl,la687
	ld (la68f),hl
	ld (la6a1),hl
	ld (la6b3),hl
	ld (la689),hl
	ld (la69b),hl
	ld (la6ad),hl
	sub a
	ld (la697),a
	ld (la6a9),a
	ld (la6bb),a
	ld (la69a),a
	ld (la6ac),a
	ld (la6be),a
	ld c,#08
	sub a
	ld h,a
	ld l,a
	call laa2a
	inc c
	jp laa13
.la939
	push hl
	ld h,a
	bit 1,(ix+#0f)
	jr z,la946
	ld a,(la611)
	jr la949
.la946
	ld a,(la610)
.la949
	cp #08
	jr z,la975
	and #07
	ld l,a
	sub a
	rr l
	jp nc,la957
	ld a,h
.la957
	sla h
	rr l
	jp nc,la95f
	add h
.la95f
	sla h
	rr l
	jp nc,la967
	add h
.la967
	sra a
	adc #00
	sra a
	adc #00
	sra a
	adc #00
	pop hl
	ret
.la975
	ld a,h
	pop hl
	ret
.la978
	push af
	push bc
	push hl
	ld b,#02
	sub #04
.la97f
	cp #30
	jr c,la988
	sub #30
	inc b
	jr la97f
.la988
	ld l,a
	ld h,#00
	add hl,hl
	ld de,la99e
	add hl,de
	call laa0e
.la993
	srl d
	rr e
	djnz la993
	pop hl
	pop bc
	pop af
	ret
.la99d
	db #70
.la99e
	dw #0eee,#0eb7,#0e81,#0e4b
	dw #0e17,#0de3,#0db0,#0d7e
	dw #0d4d,#0d1c,#0cec,#0cbc
	dw #0c8d,#0c5f,#0c32,#0c05
	dw #0bd9,#0bae,#0b83,#0b58
	dw #0b2f,#0b06,#0add,#0ab5
	dw #0a8e,#0a67,#0a41,#0a1b
	dw #09f6,#09d2,#09ae,#098a
	dw #0967,#0945,#0923,#0901
	dw #08e0,#08bf,#089f,#0880
	dw #0861,#0842,#0823,#0806
	dw #07e8,#07cb,#07ae,#0792
	ld hl,(#2b45)
	ld (#3b33),hl
	ld a,(#223b)
	ld d,d
	jr nc,laa54
	ld c,e
	ld c,(hl)
	ld b,a
	ld e,e
.laa0e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ret
.laa13
	push af
	ld a,l
	call laa2a
	inc c
	ld a,h
	call laa2a
	dec c
	pop af
	ret
.laa20
	call la939
	or a
	jr z,laa2a
	srl a
	add #08
.laa2a
	push af
	push bc
	call laa42
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #80
	out (c),a
.laa3c equ $ + 1
	xor #80
	out (c),a
	pop bc
	pop af
	ret
.laa42
	push af
	ld b,#f4
	out (c),c
	ld bc,#f6c0
	in a,(c)
	or c
	out (c),a
	xor c
	out (c),a
	pop af
	ret
.laa54
	push bc
	push af
	push bc
	ld c,#0e
	call laa42
	pop bc
	pop af
	ld b,#f7
	ld a,#92
	out (c),a
	push bc
	set 6,c
	ld b,#f6
	out (c),c
	ld b,#f4
	in a,(c)
	pop bc
	push af
	ld a,#82
	out (c),a
	pop af
	pop bc
	ret
	add #aa
	jr c,laa3c
.laa7c
	db #02,#01,#c6,#aa,#38,#f0,#02,#01
	db #0f,#ab,#38,#c4,#01,#02,#0f,#ab
	db #38,#f4,#01,#03,#3c,#ab,#38,#64
	db #02,#02,#3c,#ab,#38,#94,#02,#02
	db #3c,#ab,#38,#c4,#02,#03,#91,#ab
	db #38,#90,#02,#01,#a2,#ab,#38,#90
	db #02,#01,#e3,#ac,#28,#34,#00,#01
	db #e3,#ac,#28,#64,#00,#02,#e0,#aa
	db #38,#64,#01,#01,#b6,#ac,#2a,#00
	db #00,#02
	db #01,#d0,#0f,#00,#08,#00,#04,#00
	db #02,#00,#00,#00,#ff,#01,#30,#0f
	db #00,#08,#00,#04,#00,#02,#00,#00
	db #00,#ff,#01,#00,#04,#2e,#08,#12
	db #0c,#22,#0c,#2f,#09,#13,#06,#23
	db #0a,#30,#08,#14,#05,#24,#07,#2f
	db #05,#13,#03,#23,#04,#2e,#02,#12
	db #01,#22,#01,#2d,#01,#11,#01,#21
	db #01,#2c,#01,#10,#01,#20,#00,#00
	db #ff,#02,#fc,#0f,#00,#08,#00,#05
	db #00,#03,#00,#03,#00,#03,#00,#03
	db #00,#03,#00,#02,#00,#02,#00,#02
	db #00,#02,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#00,#00,#ff,#01,#00
	db #0f,#01,#0a,#02,#09,#01,#08,#00
	db #08,#ff,#08,#fd,#08,#ff,#08,#00
	db #05,#01,#05,#02,#05,#01,#05,#00
	db #03,#ff,#03,#fe,#03,#ff,#03,#00
	db #02,#01,#02,#02,#02,#01,#02,#00
	db #02,#ff,#02,#fe,#02,#ff,#02,#00
	db #02,#01,#02,#02,#02,#01,#02,#00
	db #02,#ff,#02,#fe,#02,#ff,#02,#00
	db #01,#01,#01,#02,#01,#01,#01,#00
	db #01,#ff,#01,#fe,#01,#ff,#01,#00
	db #00,#00,#ff,#01,#00,#0f,#00,#08
	db #14,#05,#24,#08,#00,#03,#14,#02
	db #24,#00,#00,#ff,#01,#00,#0f,#14
	db #08,#24,#05,#30,#08,#14,#03,#24
.labb3 equ $ + 5
	db #02,#30,#00,#00,#ff,#00,#00,#01
.labbb equ $ + 5
	db #00,#00,#00,#01,#ff,#a0,#01,#00
	db #0f,#01,#05,#ff,#03,#00,#03,#00
	db #03,#00,#03,#00,#03,#00,#03,#00
	db #03,#00,#03,#00,#03,#00,#03,#00
	db #02,#00,#02,#00,#02,#00,#01,#00
	db #02,#00,#02,#00,#02,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
.labf1 equ $ + 3
	db #00,#00,#ff,#d0,#01,#00,#0f,#02
	db #0a,#01,#08,#00,#07,#00,#06,#00
	db #06,#00,#06,#00,#06,#00,#06,#00
	db #06,#00,#06,#00,#06,#00,#06,#00
	db #06,#00,#06,#01,#06,#00,#06,#01
	db #06,#02,#06,#01,#06,#00,#06,#ff
	db #06,#fe,#06,#ff,#06,#00,#05,#01
	db #05,#02,#05,#01,#05,#00,#04,#ff
	db #04,#fe,#04,#ff,#04,#00,#04,#01
	db #04,#02,#03,#01,#03,#00,#03,#ff
	db #03,#fe,#03,#ff,#03,#00,#02,#00
	db #02,#fe,#02,#fc,#02,#fa,#01,#f8
	db #01,#f6,#01,#f4,#01,#f2,#00,#01
.lac57 equ $ + 1
	db #ff,#6f,#ac,#28,#32,#6f,#ac,#28
	db #64,#a1,#ac,#2a,#00,#86,#ac,#28
	db #64,#b6,#ac,#2a,#00,#e3,#ac,#2a
	db #00,#01,#fc,#0f,#08,#04,#04,#07
	db #04,#04,#03,#03,#03,#02,#02,#02
	db #02,#01,#02,#01,#01,#00,#00,#ff
	db #01,#f8,#0c,#1e,#04,#1a,#06,#18
	db #03,#16,#02,#16,#02,#15,#02,#15
	db #01,#15,#01,#14,#01,#14,#01,#14
	db #00,#01,#ff,#01,#00,#0c,#14,#04
	db #10,#06,#0e,#04,#0c,#03,#0c,#01
	db #0b,#01,#0a,#01,#0a,#00,#01,#ff
	db #02,#00,#0f,#1f,#08,#1e,#07,#1b
	db #07,#1a,#05,#17,#04,#16,#03,#14
	db #03,#14,#03,#14,#03,#14,#02,#14
	db #02,#14,#02,#14,#02,#14,#01,#14
	db #01,#14,#01,#14,#01,#14,#01,#14
	db #01,#14,#00,#00,#ff,#01,#00,#0c
.lacec equ $ + 6
	db #0f,#05,#00,#00,#00,#ff,#35,#00
	db #28,#00,#0d,#00,#8a,#00,#0b,#00
	dw labf1,labbb,lad76,ladc5
	dw laeca,lad76,ladac,laed3
	dw lad76,lad94,laeca,lad8a
	dw lad9d,laee5,#0034,ladce
	dw lad8a,ladbd,laee5,#0034
	dw ladce,laec4,ladbd,laee5
	dw #0034,lae24,#0034,lae24
	dw #0034,lae7e,#0034,lae7e
	dw #0034,lae24,#0034,lae24
	dw #0034,lae7e,#0034,lae7e
	dw #0034,lae24,lae56,ladc5
	dw laedc,lad76,ladac,laedc
	dw lae60,ladc5,laedc,lae6a
	dw ladac,laedc,lad7c,ladc5
	dw laeca,lad76,lad79,laee5
	dw lad76,lad76,lad86
.lad79 equ $ + 5
.lad76 equ $ + 2
	db #00,#00,#08,#00,#ff,#01,#0a,#ff
.lad7c
	db #01,#1d,#00,#1d,#00,#1b,#00,#19
.lad8a equ $ + 6
.lad86 equ $ + 2
	db #16,#ff,#01,#05,#05,#ff,#01,#00
	db #00,#00,#00,#00,#00,#13,#14,#ff
.lad94
	db #01,#16,#16,#0a,#16,#00,#16,#16
.lad9d equ $ + 1
	db #ff,#01,#0d,#00,#0f,#00,#11,#0d
.lada6 equ $ + 2
	db #0d,#ff,#01,#0a,#00,#08,#0a,#ff
.ladac
	db #01,#0a,#00,#0d,#00,#11,#0d,#ff
.ladb4
	db #01,#0a,#00,#0a,#08,#05,#08,#08
.ladbd equ $ + 1
	db #08,#01,#0a,#00,#0a,#08,#05,#08
.ladc5 equ $ + 1
	db #ff,#01,#0a,#00,#08,#0a,#00,#08
	db #0a,#08
.ladce
	dw ladfa,lada6,laeca,lae04
	dw ladac,laed3,ladfa,lada6
	dw laeca,lae0e,ladb4,laed3
	dw lae18,ladc5,laeca,lae1e
	dw ladac,laed3,lad76,lada6
	dw laedc
.ladfa equ $ + 2
	db #c9,#00,#01,#16,#00,#16,#00,#16
.lae04 equ $ + 4
	db #00,#14,#19,#ff,#01,#00,#00,#19
.lae0e equ $ + 6
	db #00,#00,#00,#13,#14,#ff,#01,#00
	db #00,#19,#00,#00,#00,#00,#00,#ff
.lae1e equ $ + 6
.lae18
	db #02,#11,#11,#0f,#0d,#ff,#02,#0f
	db #0d,#0f,#0d,#ff
.lae24
	dw lae56,lada6,laed3,lad76
	dw ladb4,laedc,lae60,ladc5
	dw laed3,lae6a,ladac,laedc
	dw lae74,ladc5,laeca,lad76
	dw ladac,laed3,lad76,ladc5
	dw laeca,lad76,ladb4,laedc
	ret
.lae56 equ $ + 1
	db #00,#01,#1d,#00,#00,#00,#1b,#00
.lae60 equ $ + 3
	db #19,#1d,#ff,#01,#1d,#1d,#00,#1b
.lae6a equ $ + 5
	db #00,#00,#19,#00,#ff,#01,#16,#00
.lae74 equ $ + 7
	db #00,#00,#00,#00,#14,#16,#ff,#01
	db #1d,#00,#1d,#00,#1b,#00,#19,#1d
	db #ff
.lae7e
	dw laeb0,ladc5,laeca,lad76
	dw ladac,laed3,laeba,lada6
	dw laeca,lad76,ladbd,laedc
	dw lae18,ladc5,laeca,lae1e
	dw ladac,laed3,lad76,lada6
	dw laeca,laec4,ladbd,laee5
.laeb0 equ $ + 2
	db #c9,#00,#01,#16,#00,#14,#16,#00
.laeba equ $ + 4
	db #00,#19,#00,#ff,#01,#16,#00,#14
.laec4 equ $ + 6
	db #16,#00,#00,#14,#00,#ff,#02,#00
.laeca equ $ + 4
	db #00,#00,#16,#ff,#01,#01,#00,#00
.laed3 equ $ + 5
	db #01,#04,#00,#00,#06,#01,#01,#00
.laedc equ $ + 6
	db #02,#01,#03,#00,#06,#01,#01,#00
.laee5 equ $ + 7
	db #00,#06,#01,#04,#00,#06,#06,#01
	db #01,#00,#06,#01,#04,#03,#02,#01
	db #3e,#07,#32,#01,#b0,#06,#14,#c5
	db #06,#f5,#ed,#78,#0f,#30,#fb,#cd
	db #00,#b0,#c1,#10,#f2,#af,#32,#01
	db #b0,#cd,#00,#b0,#c9,#3e,#05,#32
	db #01,#b0,#06,#0a,#c5,#06,#f5,#ed
	db #78,#0f,#30,#fb,#cd,#00,#b0,#c1
	db #10,#f2,#af,#32,#01,#b0,#cd,#00
	db #b0,#c9,#3e,#06,#32,#01,#b0,#06
	db #0a,#c5,#06,#f5,#ed,#78,#0f,#30
	db #fb,#cd,#00,#b0,#c1,#10,#f2,#af
	db #32,#01,#b0,#cd,#00,#b0,#c9,#3e
	db #04,#32,#01,#b0,#06,#0a,#c5,#06
	db #f5,#ed,#78,#0f,#30,#fb,#cd,#00
	db #b0,#c1,#10,#f2,#af,#32,#01,#b0
	db #cd,#00,#b0,#c9,#07,#07,#07,#07
	db #0e,#0e,#08,#08,#01,#01,#01,#01
	db #00,#00,#0d,#0d,#0d,#0d,#05,#05
	db #05,#05,#09,#09,#08,#08,#05,#05
	db #08,#08,#0d,#0d,#06,#06,#01,#01
	db #01,#01,#01,#01,#0c,#0c,#0f,#0f
	db #00,#00,#01,#01,#02,#02,#0f,#0f
	db #08,#08,#07,#07,#07,#07,#0c,#0c
	db #0f,#0f,#0e,#0e,#0e,#0e,#0b,#0b
	db #07,#07,#0e,#0e,#06,#06,#0e,#0e
	db #0c,#0c,#0f,#0f,#00,#00,#09,#09
	db #01,#01,#0e,#0e,#07,#07,#0f,#0f
	db #09,#09,#04,#04,#00,#00,#0f,#0f
	db #05,#05,#0d,#0d,#02,#02,#01,#01
	db #09,#09,#00,#00,#01,#01,#0d,#0d
	db #0d,#0d,#08,#08,#05,#05,#0c,#0c
	db #01,#01,#06,#06,#04,#04,#0d,#0d
	db #00,#00,#05,#05,#01,#01,#0b,#0b
	db #08,#08,#06,#06,#02,#02,#0d,#0d
	db #00,#00,#01,#01,#01,#01,#0d,#0d
	db #08,#08
; #3941
;	di
;	ld hl,&c9fb
;	ld (&0038),hl
;	ei
;	ld a,#08
;	ld (#a610),a
;.l3946
;	call #a607
;.l3949
;	ld b,#f5
;.l394b
;	in a,(c)
;	rrca
;	jr nc,l394b
;	call #a604
;	ld a,(#a612)
;	and a
;	jp z,l3946
;	;call #1bba
;	defs 2,0	;bit 4,d
;	jp l3949	;jp z,l3949
;	call #a60d
;	;call #3f21
;	call #aeee
;	ret
;
.init_music		; added by Megachur
;
	ld a,#08
	ld (la610),a
	jp real_init_music
;
.music_info
	db "Count Duckula (1989)(Alternative Software)()",0
	db "",0

	read "music_end.asm"
