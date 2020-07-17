; Music of Wombles, The (1990)(Alternative Software)(Paul Hiley)()
; Ripped by Megachur the 24/03/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "WOMBLES.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #ad40

	read "music_header.asm"

	jp lad63	; play music
	jp lafe7	
	jp laf61	; sound fx (1 -> 10)
	jp ladad
.lad53 equ $ + 7
.lad4e equ $ + 2
	db #08,#08,#00,#c9,#c9,#c9,#01,#40
.lad54
	ld hl,#0000
	ld (lad69),hl
	ld c,#07
	ld a,#2a
	call lb107
	jr lad6b
;
.play_music
.lad63
;
	push af
	push bc
	push de
	push hl
	push ix
.lad69
	jr lad54
.lad6b
	call laff3
	call lafaa
	ld hl,laec9
	ld a,(hl)
	ld bc,(lad53)
	sub c
	ld (hl),a
	sbc a
	ld (laec8),a
	jr nc,lad85
	ld a,#f0
	add (hl)
	ld (hl),a
.lad85
	call laeca
	ld ix,ladc5
	call ladfb
	ld ix,ladd7
	call ladfb
	ld ix,lade9
	call ladfb
	sub a
	ld (laec8),a
	ld c,#00
	call lb131
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.ladad
	push af
	push bc
	push de
	push hl
	sub a
	ld (lad4e),a
	ld hl,lb221
	ld (laf57),hl
	call lb024
	pop hl
	pop de
	pop bc
	pop af
	ret
.ladc3
	rst #38
	rst #38
.ladc5
	jp #00ad
	nop
	inc b
	ld a,(bc)
.ladcd equ $ + 2
.ladcb
	jp #00ad
.ladce
	ld (bc),a
.ladcf
	nop
	nop
.ladd3 equ $ + 2
.ladd2 equ $ + 1
	ld bc,#0001
	nop
	nop
.ladd6
	nop
.ladd7
	jp #00ad
	nop
	nop
	ex af,af'
.laddf equ $ + 2
.laddd
	jp #01ad
.lade0
	ld (bc),a
.lade1
	ret nz
	xor l
.lade5 equ $ + 2
.lade4 equ $ + 1
	ld bc,#0001
	ex af,af'
	nop
.lade8
	nop
.lade9
	jp #00ad
	nop
	ld (bc),a
	add hl,bc
.ladf1 equ $ + 2
.ladef
	jp #00ad
.ladf2
	ld (bc),a
	ret nz
	xor l
.ladf7 equ $ + 2
.ladf6 equ $ + 1
	ld bc,#0001
	dec b
	nop
.ladfa
	nop
.ladfb
	call lae5a
	dec (ix+#0d)
	ret nz
	ld a,(ix+#0c)
	ld (ix+#0d),a
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(hl)
	inc hl
	inc a
	jr z,lae4b
	dec a
	ld c,(ix+#05)
	call lb100
	ld a,(hl)
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld b,a
	ld a,(ix+#0f)
	and #03
	jr z,lae36
	ld a,#1f
	sub b
	ld c,#06
	bit 2,(ix+#0f)
	call nz,lb107
.lae36
	ld a,(ix+#02)
	add (ix+#03)
	ld (ix+#02),a
	add b
	call lb058
	ex de,hl
	ld c,(ix+#04)
	call lb0f3
	ret
.lae4b
	bit 1,(ix+#0f)
	ret z
	res 1,(ix+#0f)
	ld (ix+#0e),a
	jp lb107
.lae5a
	ld a,(laec8)
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
	jr nz,laeac
	rlca
	rlca
	ld hl,lb07d
	add (hl)
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	add (hl)
	inc hl
	ld (ix+#02),a
.lae98
	call lb0ee
	ld (ix+#0d),#01
	ld (ix+#0c),e
	ld (ix+#03),d
	ld (ix+#00),l
	ld (ix+#01),h
	ret
.laeac
	dec a
	rlca
	rlca
	ld c,a
	ld b,#00
	ld hl,lb281
	add hl,bc
	call lb0ee
	ld a,(hl)
	ld c,#07
	call lb107
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#02),a
	ex de,hl
	jr lae98
.laec8
	nop
.laec9
	nop
.laeca
	ld a,(ladcd)
	dec a
	ret nz
	ld hl,(ladcb)
	ld a,(hl)
	inc a
	ret nz
	ld hl,(laf57)
.laed8
	inc hl
	ld a,(hl)
	dec hl
	cp #00
	jr nz,laf01
	ld a,(hl)
	inc hl
	inc hl
	cp #0b
	jr z,laf30
	cp #34
	jr z,laf23
	cp #0d
	jr z,laf40
	cp #c9
	jr z,laf51
	cp #35
	jr z,laf48
	ld hl,lb221
	ld (laf57),hl
	sub a
	ld (lad4e),a
	ret
.laf01
	call laf5b
	ld (ladce),a
	ld (ladcb),de
	call laf5b
	ld (lade0),a
	ld (laddd),de
	call laf5b
	ld (ladf2),a
	ld (ladef),de
	ld (laf57),hl
	ret
.laf23
	call lb0ee
	ex de,hl
	ld (laf59),de
	ld (laf57),hl
	jr laed8
.laf30
	call lb0ee
	ld (ladcf),de
	call lb0ee
	ld (lade1),de
	jr laed8
.laf40
	ld a,(hl)
	ld (lb07d),a
	inc hl
	inc hl
	jr laed8
.laf48
	ld a,(hl)
	ld (lad53),a
	inc hl
	inc hl
	jp laed8
.laf51
	ld hl,(laf59)
	jp laed8
.laf59 equ $ + 2
.laf57
	ld hl,#21b2
	or d
.laf5b
	call lb0ee
	ld a,(de)
	inc de
	ret
;
;.sound_fx
.laf61
;
	push af
	push bc
	push de
	push hl
	push ix
	call laf71
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.laf71
	dec a
	cp #0a
	ret nc
	ld c,a
	rlca
	rlca
	add c
	add c
	ld c,a
	ld b,#00
	ld hl,lb159
	add hl,bc
	ld a,(hl)
	inc hl
	ld ix,ladc5
	cp #01
	jr z,laf97
	ld ix,ladd7
	cp #02
	jr z,laf97
	ld ix,lade9
.laf97
	ld a,(hl)
	cp (ix+#0e)
	ret c
	ld (ix+#11),#00
	ld (ix+#0e),a
	ld (ix+#10),l
	ld (ix+#11),h
	ret
.lafaa
	ld ix,ladc5
	call lafbc
	ld ix,ladd7
	call lafbc
	ld ix,lade9
.lafbc
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
	call nz,lb107
	set 1,(ix+#0f)
	call lb0ee
	ex de,hl
	jp lae98
;
.init_music
.lafe7
;
	push af
	ld a,#01
	ld (lad4e),a
	ld (laff2),a
	pop af
	ret
.laff2
	nop
.laff3
	ld a,(laff2)
	or a
	ret z
	ld de,lb2a7
	ld (laf57),de
	ld a,#01
	ld (ladcd),a
	ld (laddf),a
	ld (ladf1),a
	ld (ladd2),a
	ld (lade4),a
	ld (ladf6),a
	ld a,#38
	ld c,#07
	call lb107
	sub a
	ld (laec8),a
	ld (laec9),a
	ld (laff2),a
.lb024
	ld hl,ladc3
	ld (ladcb),hl
	ld (laddd),hl
	ld (ladef),hl
	ld (ladc5),hl
	ld (ladd7),hl
	ld (lade9),hl
	sub a
	ld (ladd3),a
	ld (lade5),a
	ld (ladf7),a
	ld (ladd6),a
	ld (lade8),a
	ld (ladfa),a
	ld c,#08
	sub a
	ld h,a
	ld l,a
	call lb107
	inc c
	jp lb0f3
.lb058
	push af
	push bc
	push hl
	ld b,#02
	sub #04
.lb05f
	cp #30
	jr c,lb068
	sub #30
	inc b
	jr lb05f
.lb068
	ld l,a
	ld h,#00
	add hl,hl
	ld de,lb07e
	add hl,de
	call lb0ee
.lb073
	srl d
	rr e
	djnz lb073
	pop hl
	pop bc
	pop af
	ret
.lb07d
	db #70
.lb07e
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
	jr nc,lb134
	ld c,e
	ld c,(hl)
	ld b,a
	ld e,e
.lb0ee
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ret
.lb0f3
	push af
	ld a,l
	call lb107
	inc c
	ld a,h
	call lb107
	dec c
	pop af
	ret
.lb100
	or a
	jr z,lb107
	srl a
	add #08
.lb107
	push af
	push bc
	call lb11f
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #80
	out (c),a
	xor #80
	out (c),a
	pop bc
	pop af
	ret
.lb11f
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
.lb131
	push bc
	push af
	push bc
.lb134
	ld c,#0e
	call lb11f
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
.lb159 equ $ + 4
	db #91,#b1,#38,#c0,#01,#01,#91,#b1
	db #38,#f0,#01,#01,#bc,#b1,#2a,#00
	db #00,#01,#cb,#b1,#38,#90,#01,#01
	db #cb,#b1,#38,#c0,#01,#01,#de,#b1
	db #38,#90,#01,#01,#f8,#b1,#38,#b8
	db #01,#01,#e7,#b1,#38,#c0,#01,#01
	db #09,#b2,#28,#5a,#00,#03,#10,#b2
	db #28,#5a,#00,#01,#01,#ff,#0f,#00
	db #0c,#00,#09,#00,#06,#00,#03,#00
	db #03,#00,#03,#00,#02,#00,#02,#00
	db #02,#00,#02,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#ff,#02
	db #00,#0f,#0f,#0a,#0c,#08,#0a,#03
	db #08,#02,#07,#00,#00,#ff,#01,#00
	db #0f,#01,#0a,#00,#05,#ff,#02,#00
	db #02,#01,#01,#00,#01,#ff,#00,#00
	db #ff,#01,#00,#0a,#00,#0a,#30,#00
	db #00,#ff,#01,#00,#0a,#00,#07,#0c
	db #05,#20,#0a,#00,#07,#0c,#05,#20
	db #00,#00,#ff,#01,#00,#0a,#00,#07
	db #14,#05,#24,#0a,#00,#07,#14,#05
	db #24,#00,#00,#ff,#01,#00,#0a,#00
	db #00,#00,#ff,#02,#00,#0a,#05,#05
	db #07,#03,#08,#02,#05,#01,#05,#01
.lb221 equ $ + 4
	db #05,#00,#00,#ff,#00,#00,#01,#00
	db #00,#00,#01,#ff,#a0,#01,#00,#06
	db #00,#04,#00,#03,#00,#02,#00,#02
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#00,#00,#ff,#00,#02
	db #00,#04,#00,#08,#ff,#06,#00,#05
	db #01,#04,#00,#03,#ff,#03,#00,#03
	db #01,#03,#00,#03,#ff,#03,#00,#03
	db #01,#03,#00,#03,#ff,#02,#00,#02
	db #01,#02,#00,#02,#ff,#02,#00,#02
	db #01,#01,#00,#01,#ff,#01,#00,#01
	db #01,#01,#00,#01,#ff,#01,#00,#01
.lb281 equ $ + 4
	db #01,#00,#01,#ff,#89,#b2,#28,#1e
	db #98,#b2,#28,#4a,#02,#fc,#06,#14
	db #03,#12,#02,#0f,#01,#0f,#01,#0f
	db #00,#00,#ff,#01,#00,#08,#0f,#03
	db #08,#02,#04,#02,#04,#01,#04,#00
.lb2a7 equ $ + 2
	db #00,#ff,#35,#00,#40,#00,#0d,#00
	db #6a,#00,#0b,#00,#43,#b2,#29,#b2
	db #34,#00,#f5,#b3,#4b,#b4,#eb,#b3
	db #5b,#b4,#5f,#b3,#ee,#b3,#5b,#b4
	db #34,#00,#f5,#b3,#53,#b4,#ee,#b3
	db #5b,#b4,#5f,#b3,#de,#b3,#6d,#b4
	db #62,#b3,#f1,#b3,#5b,#b4,#66,#b3
	db #f1,#b3,#5b,#b4,#6e,#b3,#f1,#b3
	db #5b,#b4,#76,#b3,#f1,#b3,#5b,#b4
	db #7e,#b3,#e2,#b3,#5b,#b4,#86,#b3
	db #e2,#b3,#5b,#b4,#8e,#b3,#e2,#b3
	db #5b,#b4,#96,#b3,#e2,#b3,#66,#b4
	db #5f,#b3,#de,#b3,#5b,#b4,#9e,#b3
	db #de,#b3,#5b,#b4,#a6,#b3,#de,#b3
	db #5b,#b4,#5f,#b3,#de,#b3,#66,#b4
	db #ae,#b3,#f1,#b3,#5b,#b4,#b6,#b3
	db #f1,#b3,#5b,#b4,#be,#b3,#f1,#b3
	db #5b,#b4,#c6,#b3,#f1,#b3,#66,#b4
	db #5f,#b3,#e2,#b3,#5b,#b4,#ce,#b3
	db #e2,#b3,#5b,#b4,#d6,#b3,#e2,#b3
	db #5b,#b4,#5f,#b3,#e2,#b3,#6d,#b4
	db #34,#00,#f5,#b3,#53,#b4,#ee,#b3
	db #5b,#b4,#5f,#b3,#de,#b3,#62,#b4
	db #00,#00,#0c,#00,#ff,#06,#11,#18
	db #ff,#02,#00,#00,#00,#1b,#00,#1b
	db #ff,#02,#00,#00,#1a,#18,#00,#00
	db #ff,#02,#11,#00,#15,#18,#00,#19
	db #ff,#02,#00,#00,#18,#16,#00,#14
	db #ff,#02,#00,#00,#13,#11,#00,#0f
	db #ff,#02,#00,#00,#13,#16,#00,#1b
	db #ff,#02,#00,#00,#1b,#1b,#00,#00
	db #ff,#02,#00,#00,#00,#14,#00,#16
	db #ff,#02,#18,#00,#19,#16,#00,#18
	db #ff,#02,#1d,#00,#1d,#00,#00,#1f
	db #ff,#02,#20,#00,#1f,#1d,#00,#00
	db #ff,#02,#1d,#00,#1f,#20,#00,#1d
	db #ff,#02,#20,#00,#1d,#20,#00,#1f
	db #ff,#02,#00,#00,#00,#00,#00,#1d
	db #ff,#02,#1f,#00,#1d,#1f,#00,#1b
	db #ff,#06,#14,#14,#ff,#06,#0f,#0f
	db #06,#18,#18,#06,#19,#19,#06,#16
	db #14,#06,#13,#13,#06,#11,#11,#ff
	db #1b,#b4,#de,#b3,#5b,#b4,#23,#b4
	db #e2,#b3,#5b,#b4,#2b,#b4,#de,#b3
	db #5b,#b4,#33,#b4,#e5,#b3,#5b,#b4
	db #3b,#b4,#e8,#b3,#5b,#b4,#43,#b4
	db #e5,#b3,#5b,#b4,#c9,#00,#02,#0f
	db #00,#11,#14,#00,#00,#ff,#02,#14
	db #00,#11,#0f,#00,#00,#ff,#02,#0f
	db #00,#11,#14,#00,#18,#ff,#02,#00
	db #00,#00,#00,#00,#18,#ff,#02,#19
	db #00,#18,#16,#00,#18,#ff,#02,#00
	db #00,#16,#14,#00,#00,#ff,#02,#16
	db #00,#11,#14,#00,#13,#ff,#02,#16
	db #00,#11,#13,#00,#14,#ff,#02,#01
	db #00,#00,#02,#00,#01,#06,#01,#02
	db #ff,#02,#01,#00,#00,#02,#01,#01
	db #02,#01,#00,#00,#02,#02,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#f0,#f3,#f1,#89,#86,#83,#8b
	db #8a,#f2,#e0,#87,#88,#85,#81,#82
	db #80,#10,#5b,#0d,#5d,#84,#ff,#5c
	db #ff,#5e,#2d,#40,#70,#3b,#3a,#2f
	db #2e,#30,#39,#6f,#69,#6c,#6b,#6d
	db #2c,#38,#37,#75,#79,#68,#6a,#6e
	db #20,#36,#35,#72,#74,#67,#66,#62
	db #76,#34,#33,#65,#77,#73,#64,#63
	db #78,#31,#32,#fc,#71,#09,#61,#fd
	db #7a,#0b,#0a,#08,#09,#58,#5a,#ff
	db #7f,#f4,#f7,#f5,#89,#86,#83,#8b
	db #8a,#f6,#e0,#87,#88,#85,#81,#82
	db #80,#10,#7b,#0d,#7d,#84,#ff,#60
	db #ff,#a3,#3d,#7c,#50,#2b,#2a,#3f
	db #3e,#5f,#29,#4f,#49,#4c,#4b,#4d
	db #3c,#28,#27,#55,#59,#48,#4a,#4e
	db #20,#26,#25,#52,#54,#47,#46,#42
	db #56,#24,#23,#45,#57,#53,#44,#43
	db #58,#21,#22,#fc,#51,#09,#41,#fd
	db #5a,#0b,#0a,#08,#09,#58,#5a,#ff
	db #7f,#f8,#fb,#f9,#89,#86,#83,#8c
	db #8a,#fa,#e0,#87,#88,#85,#81,#82
	db #80,#10,#1b,#0d,#1d,#84,#ff,#1c
	db #ff,#1e,#ff,#00,#10,#ff,#ff,#ff
	db #ff,#1f,#ff,#0f,#09,#0c,#0b,#0d
	db #ff,#ff,#ff,#15,#19,#08,#0a,#0e
	db #ff,#ff,#ff,#12,#14,#07,#06,#02
	db #16,#ff,#ff,#05,#17,#13,#04,#03
	db #18,#ff,#7e,#fc,#11,#e1,#01,#fe
	db #1a,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #7f,#07,#03,#4b,#ff,#ff,#ff,#ff
	db #ff,#ab,#8f,#01,#30,#01,#31,#01
	db #32,#01,#33,#01,#34,#01,#35,#01
	db #36,#01,#37,#01,#38,#01,#39,#01
	db #2e,#01,#0d,#05,#52,#55,#4e,#22
	db #0d,#00,#00
;
.music_info
	db "Wombles, The (1990)(Alternative Software)(Paul Hiley)",0
	db "",0

	read "music_end.asm"
