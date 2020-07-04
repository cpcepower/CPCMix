; Music of 750cc Grand Prix (1989)(Codemasters)()()
; Ripped by Megachur the 07/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "750CCGRP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 07
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #7420

	read "music_header.asm"

	jp l7e52        ; init music
	jp l7e61        ; play1
	jp l7e6b        ; play2
	jp l7e70        ; stop music

.l742f equ $ + 3
.l742e equ $ + 2
.music_end equ $ + 1
.l742d equ $ + 1
.l742c
	db #00,#00,#00,#00
	jp l74a9
.l7433
	ld iy,l7a0f
	add a
	ld b,a
	add a
	add b
	ld d,#00
	ld e,a
	add iy,de
	ld a,#02
	ld (l7747),a
	ld (l7748),a
	ld hl,l775f
	ld de,l7760
	ld bc,#0059
	ld (hl),#00
	ldir
	ld b,#03
	ld ix,l775f
.l745b
	ld l,(iy+#00)
	ld h,(iy+#01)
	inc iy
	inc iy
	ld (ix+#00),l
	ld (ix+#01),h
	ld c,#01
.l746d
	ld a,(hl)
	inc hl
	or a
	jp p,l747d
	sub #28
	and #7f
	ld (ix+#11),a
	inc c
	jr l746d
.l747d
	and #7f
	add a
	ld d,#00
	ld e,a
	ld hl,l7a15
	add hl,de
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	ld (ix+#02),c
	ld de,#001e
	add ix,de
	djnz l745b
	ret
.l749b
	ld hl,#0000
	xor a
	ld (l7752),hl
	ld (l7751),a
	ld (l742d),a
	ret
.l74a9
	ld a,(l742c)
	or a
	jr z,l74c7
	jp m,l74bf
	ld (l742d),a
	dec a
	call l7433
	xor a
	ld (l742c),a
	jr l74c7
.l74bf
	call l749b
	ld (l742c),a
	jr l7521
.l74c7
	ld a,(l742d)
	or a
	jr z,l7521
	ld a,(l7747)
	dec a
	ld (l7747),a
	jp p,l74f2
	ld ix,l775f
	call l7555
	ld ix,l777d
	call l7555
	ld ix,l779b
	call l7555
	ld a,(l7748)
	ld (l7747),a
.l74f2
	ld ix,l775f
	call l767c
	ld (l7749),hl
	ld a,b
	ld (l7751),a
	ld ix,l777d
	call l767c
	ld (l774b),hl
	ld a,b
	ld (l7752),a
	ld ix,l779b
	call l767c
	ld (l774d),hl
	ld a,b
	ld (l7753),a
	ld a,#38
	ld (l7750),a
.l7521
	call l7d19
	ld b,#0b
	ld hl,l7754
	ld de,l7749
	ld c,#00
.l752e
	ld a,(de)
	cp (hl)
	jr z,l754f
	ld (hl),a
	push bc
	ld a,#c0
	ld b,#f6
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld a,#80
	out (c),a
	ld b,#f4
	ld a,(hl)
	out (c),a
	ld b,#f6
	xor a
	out (c),a
	pop bc
.l754f
	inc c
	inc hl
	inc de
	djnz l752e
	ret
.l7555
	dec (ix+#09)
	ret p
.l7559
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	push hl
	pop iy
	ld a,(iy+#00)
	inc iy
	cp #ff
	jr nz,l75c5
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld d,#00
	ld e,(ix+#02)
	add hl,de
	inc (ix+#02)
	ld a,(hl)
	inc hl
	cp #fe
	jr nz,l7587
	pop hl
	call l749b
	jp l7521
.l7587
	cp #ff
	jr nz,l75a4
	ld (ix+#02),#01
	ld l,(ix+#00)
	ld h,(ix+#01)
	bit 7,(hl)
	jr z,l75a3
	ld a,(hl)
	inc hl
	sub #a8
	ld (ix+#11),a
	inc (ix+#02)
.l75a3
	ld a,(hl)
.l75a4
	bit 7,a
	jr z,l75b2
	sub #a8
	ld (ix+#11),a
	ld a,(hl)
	inc hl
	inc (ix+#02)
.l75b2
	add a
	ld hl,l7a15
	ld d,#00
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	jr l7559
.l75c5
	cp #c0
	jr c,l7625
	and #1f
	add a
	ld hl,l78e3
	ld d,#00
	ld e,a
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld b,(hl)
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#17),a
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1c),a
	inc hl
	ld (ix+#04),l
	ld (ix+#05),h
	ld (ix+#12),l
	ld (ix+#13),h
	ld a,b
	add a
	ld d,#00
	ld e,a
	ld hl,l787b
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	ld (ix+#10),a
	ld (ix+#14),a
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#0e),l
	ld (ix+#0f),h
	ld a,(iy+#00)
	inc iy
.l7625
	cp #80
	jr c,l763b
	and #3f
	ld (ix+#09),a
	ld (ix+#1b),a
	ld a,(iy+#00)
	ld (ix+#15),a
	inc iy
	jr l7644
.l763b
	ld (ix+#15),a
	ld a,(ix+#1b)
	ld (ix+#09),a
.l7644
	set 6,(ix+#1a)
	push iy
	pop hl
	ld (ix+#0a),l
	ld (ix+#0b),h
	ld a,(ix+#07)
	ld (ix+#06),a
	ld a,(ix+#14)
	ld (ix+#10),a
	ld a,(ix+#0c)
	ld (ix+#0e),a
	ld a,(ix+#0d)
	ld (ix+#0f),a
	ld a,(ix+#12)
	ld (ix+#04),a
	ld a,(ix+#13)
	ld (ix+#05),a
	ld a,(ix+#1c)
	ld (ix+#1d),a
	ret
.l767c
	dec (ix+#10)
	jr nz,l76a7
	ld a,(ix+#14)
	ld (ix+#10),a
.l7687
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	inc (ix+#0e)
	jr nz,l7695
	inc (ix+#0f)
.l7695
	ld a,(hl)
	inc a
	jr nz,l76ad
	ld a,(ix+#0c)
	ld (ix+#0e),a
	ld a,(ix+#0d)
	ld (ix+#0f),a
	jr l7687
.l76a7
	ld l,(ix+#0e)
	ld h,(ix+#0f)
.l76ad
	ld a,(hl)
	add (ix+#15)
	add (ix+#11)
	sub #24
	jp p,l76ba
	xor a
.l76ba
	ld hl,l77b9
	ld d,#00
	ld e,a
	add hl,de
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld c,#00
	ld b,(ix+#1a)
	bit 6,b
	jr z,l7716
	ld d,(ix+#17)
	ld e,(ix+#19)
	bit 7,b
	jr nz,l76dd
	bit 0,b
	jr z,l770b
.l76dd
	ld a,(ix+#1d)
	or a
	jr z,l76e8
	dec (ix+#1d)
	jr l771e
.l76e8
	bit 5,b
	jr nz,l76fb
	ld a,e
	sub (ix+#18)
	ld e,a
	jr nc,l7708
	set 5,(ix+#1a)
	ld e,#00
	jr l7708
.l76fb
	ld a,e
	add (ix+#18)
	ld e,a
	cp d
	jr c,l7708
	res 5,(ix+#1a)
	ld e,d
.l7708
	ld (ix+#19),e
.l770b
	srl d
	ld a,e
	sub d
	ld e,a
	ld d,#00
	jr nc,l7715
	dec d
.l7715
	add hl,de
.l7716
	ld a,(ix+#1a)
	xor #01
	ld (ix+#1a),a
.l771e
	ld e,(ix+#04)
	ld d,(ix+#05)
	push de
	pop iy
	dec (ix+#06)
	jr nz,l7743
	ld a,(ix+#07)
	ld (ix+#06),a
	ld a,(iy+#01)
	inc a
	jr z,l7743
	inc iy
	push iy
	pop de
	ld (ix+#04),e
	ld (ix+#05),d
.l7743
	ld b,(iy+#00)
	ret
.l774d equ $ + 6
.l774b equ $ + 4
.l7749 equ $ + 2
.l7748 equ $ + 1
.l7747
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7754 equ $ + 5
.l7753 equ $ + 4
.l7752 equ $ + 3
.l7751 equ $ + 2
.l7750 equ $ + 1
.l774f
	db #00,#38,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#38,#00,#00,#00
.l7760 equ $ + 1
.l775f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l777d equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l779b equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l77b9 equ $ + 2
	db #00,#00,#00,#00
	dw #0e29,#0d5d,#0c9c,#0be7
	dw #0b3c,#0a9b,#0a02,#0973
	dw #08eb,#086b,#07f2,#0780
	dw #0714,#06ae,#064e,#05f4
	dw #059e,#054d,#0501,#04b9
	dw #0475,#0435,#03f9,#03c0
	dw #038a,#0357,#0327,#02fa
	dw #02cf,#02a7,#0281,#025d
	dw #023b,#021b,#01fc,#01e0
	dw #01c5,#01ac,#0194,#017d
	dw #0168,#0153,#0140,#012e
	dw #011d,#010d,#00fe,#00f0
	dw #00e2,#00d6,#00ca,#00be
	dw #00b4,#00aa,#00a0,#0097
	dw #008f,#0087,#007f,#0078
	dw #0071,#006b,#0065,#005f
	dw #005a,#0055,#0050,#004c
	dw #0047,#0043,#0040,#003c
	dw #0039,#0035,#0032,#0030
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010,#000f
.l787b
	dw l7895,l789b,l78a1,l78a7
	dw l78ad,l78b3,l78b9,l78bf
	dw l78c5,l78c9,l78cf,l78d7
	dw l78dd
.l789b equ $ + 6
.l7895
	db #01,#00,#00,#00,#00,#ff,#01,#00
.l78a1 equ $ + 4
	db #03,#08,#0c,#ff,#01,#00,#05,#09
.l78a7 equ $ + 2
	db #0c,#ff,#01,#00,#04,#07,#0c,#ff
.l78b3 equ $ + 6
.l78ad
	db #02,#00,#04,#07,#0c,#ff,#01,#00
.l78b9 equ $ + 4
	db #04,#07,#0c,#ff,#02,#00,#03,#08
.l78bf equ $ + 2
	db #0c,#ff,#01,#00,#05,#09,#0c,#ff
.l78c9 equ $ + 4
.l78c5
	db #01,#00,#0c,#ff,#01,#00,#05,#08
.l78cf equ $ + 2
	db #0c,#ff,#01,#0c,#07,#18,#00,#0c
.l78d7 equ $ + 2
	db #07,#ff,#01,#00,#04,#07,#0c,#ff
.l78dd
	db #01,#00,#00,#00,#00,#ff
.l78e3
	dw l7905,l790c,l791f,l7932
	dw l7945,l7956,l795e,l7971
	dw l7984,l7995,l79a3,l79b1
	dw l79bb,l79c8,l79d9,l79f2
	dw l7a03
.l790c equ $ + 7
.l7905
	db #00,#04,#00,#00,#00,#00,#ff,#01
	db #01,#00,#00,#00,#0e,#0f,#0f,#0f
	db #0e,#0e,#0c,#0b,#09,#07,#05,#03
.l791f equ $ + 2
	db #01,#ff,#02,#01,#00,#00,#00,#0e
	db #0f,#0f,#0f,#0e,#0e,#0c,#0b,#09
.l7932 equ $ + 5
	db #07,#05,#03,#01,#ff,#03,#01,#00
	db #00,#00,#0e,#0f,#0f,#0f,#0e,#0e
	db #0c,#0b,#09,#07,#05,#03,#01,#ff
.l7945
	db #00,#01,#08,#08,#08,#0e,#0f,#0f
	db #0f,#0e,#0e,#0c,#0b,#0a,#09,#08
.l7956 equ $ + 1
	db #ff,#05,#04,#00,#00,#00,#0c,#07
.l795e equ $ + 1
	db #ff,#00,#01,#00,#00,#00,#0f,#0f
	db #0e,#0f,#0f,#0e,#0e,#0d,#0c,#0b
.l7971 equ $ + 4
	db #0a,#09,#08,#ff,#00,#03,#04,#04
	db #04,#0f,#0f,#0e,#0f,#0f,#0e,#0e
.l7984 equ $ + 7
	db #0d,#0c,#0b,#0a,#09,#08,#ff,#08
	db #01,#09,#10,#14,#0e,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#ff
.l7995
	db #06,#02,#00,#00,#00,#0e,#0f,#0e
.l79a3 equ $ + 6
	db #0d,#0c,#0d,#0e,#0f,#ff,#04,#02
	db #04,#1e,#fd,#0e,#0f,#0e,#0d,#0c
.l79b1 equ $ + 4
	db #0d,#0e,#0f,#ff,#09,#04,#00,#00
.l79bb equ $ + 6
	db #00,#0e,#0c,#09,#08,#ff,#06,#03
	db #00,#00,#00,#0f,#0f,#0e,#0c,#0c
.l79c8 equ $ + 3
	db #0b,#0a,#ff,#0b,#03,#08,#10,#10
	db #0e,#0f,#0f,#0e,#0e,#0d,#0c,#0b
.l79d9 equ $ + 4
	db #0a,#09,#08,#ff,#0c,#08,#1c,#02
	db #01,#01,#03,#04,#06,#08,#0a,#0c
	db #0e,#0f,#0f,#0f,#0e,#0c,#0a,#08
.l79f2 equ $ + 5
	db #06,#04,#03,#01,#ff,#0c,#0a,#04
	db #08,#40,#0e,#0f,#0f,#0e,#0e,#0d
.l7a03 equ $ + 6
	db #0c,#0b,#0a,#09,#08,#ff,#00,#04
	db #09,#10,#14,#0f,#0f,#0e,#0d,#0c
	db #0b,#ff
.l7a15 equ $ + 6
.l7a0f
	dw l7a3d,l7a81,l7a9e,l7acd
	dw l7ad1,l7ad5,l7ae1,l7ae6
	dw l7aeb,l7b00,l7b17,l7c26
	dw l7ad9,l7b13,l7add,l7c48
	dw l7c54,l7c60,l7b40,l7b7a
	dw l7c6c,l7bb4,l7c9a
.l7a3d
	db #ca,#03,#00,#01,#01,#09,#08,#08
	db #08,#08,#08,#08,#d6,#0c,#0c,#0d
	db #0d,#0e,#d1,#0c,#d4,#0d,#0d,#d6
	db #0c,#0c,#0d,#0d,#0e,#d1,#0c,#d4
	db #0d,#0d,#d6,#0c,#0c,#d1,#0c,#0c
	db #ca,#0c,#0c,#c5,#0c,#0c,#d6,#0c
	db #0c,#0d,#0d,#0e,#d1,#0c,#d6,#0c
	db #0c,#ca,#00,#02,#02,#11,#d6,#13
.l7a81 equ $ + 4
	db #00,#02,#02,#00,#be,#01,#04,#0a
	db #00,#02,#02,#02,#0b,#d6,#07,#07
	db #07,#07,#0f,#0f,#10,#0f,#0f,#12
	db #12,#12,#12,#12,#12,#12,#12,#12
.l7a9e equ $ + 1
	db #00,#be,#02,#05,#ca,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#fe
.l7ad1 equ $ + 4
.l7acd
	db #c0,#bf,#00,#ff,#c0,#86,#00,#ff
.l7ad9 equ $ + 4
.l7ad5
	db #c0,#8f,#00,#ff,#c0,#83,#00,#ff
.l7ae1 equ $ + 4
.l7add
	db #c0,#89,#00,#ff,#c7,#84,#0a,#0b
.l7aeb equ $ + 6
.l7ae6 equ $ + 1
	db #0c,#c7,#84,#0d,#0e,#0f,#c7,#84
	db #10,#11,#12,#13,#14,#15,#16,#17
	db #18,#19,#1a,#1b,#1c,#1d,#1e,#1f
.l7b00 equ $ + 3
	db #81,#20,#ff,#c8,#82,#29,#41,#3c
	db #35,#29,#3c,#41,#35,#29,#41,#3c
.l7b13 equ $ + 6
	db #35,#29,#3c,#41,#35,#ff,#c7,#bf
.l7b17 equ $ + 2
	db #20,#ff,#c6,#80,#1d,#83,#29,#80
	db #1d,#83,#29,#80,#1d,#83,#29,#80
	db #1d,#81,#29,#82,#27,#28,#c6,#80
	db #1d,#83,#29,#80,#1d,#83,#29,#80
	db #1d,#83,#29,#80,#1d,#81,#29,#82
.l7b40 equ $ + 3
	db #27,#28,#ff,#c6,#82,#1d,#86,#1d
	db #80,#1d,#1d,#82,#1d,#86,#1d,#80
	db #1d,#1d,#82,#1f,#86,#1f,#80,#1f
	db #1f,#82,#1f,#86,#1f,#80,#1f,#1f
	db #82,#22,#86,#22,#80,#22,#22,#82
	db #24,#86,#24,#80,#24,#24,#82,#1d
	db #86,#1d,#80,#1d,#1d,#82,#1d,#86
.l7b7a equ $ + 5
	db #1d,#80,#1d,#1d,#ff,#c6,#82,#1d
	db #86,#1d,#80,#1d,#1d,#82,#1d,#86
	db #1d,#80,#1d,#1d,#82,#1f,#86,#1f
	db #80,#1f,#1f,#82,#1f,#86,#1f,#80
	db #1f,#1f,#82,#22,#86,#22,#80,#22
	db #22,#82,#1b,#86,#1b,#80,#1b,#1b
	db #82,#1d,#86,#1d,#80,#1d,#1d,#82
.l7bb4 equ $ + 7
	db #1d,#86,#1d,#80,#1d,#1d,#ff,#c6
	db #82,#1d,#86,#1d,#80,#1d,#1d,#82
	db #1d,#86,#1d,#80,#1d,#1d,#82,#1d
	db #86,#1d,#80,#1d,#1d,#82,#1d,#86
	db #1d,#80,#1d,#1d,#82,#1f,#86,#1f
	db #80,#1f,#1f,#82,#1f,#86,#1f,#80
	db #1f,#1f,#82,#1f,#86,#1f,#80,#1f
	db #1f,#82,#1f,#86,#1f,#80,#1f,#1f
	db #82,#1b,#86,#1b,#80,#1b,#1b,#82
	db #1b,#86,#1b,#80,#1b,#1b,#82,#22
	db #86,#22,#80,#22,#22,#82,#22,#86
	db #22,#80,#22,#22,#82,#1d,#86,#1d
	db #80,#1d,#1d,#82,#1d,#86,#1d,#80
	db #1d,#1d,#82,#1d,#86,#1d,#80,#1d
	db #1d,#82,#1d,#86,#1d,#80,#1d,#1d
.l7c26 equ $ + 1
	db #ff,#c9,#81,#39,#39,#39,#ca,#3a
	db #3a,#3a,#c9,#39,#39,#39,#ca,#3a
	db #3a,#3a,#c9,#39,#39,#39,#ca,#3a
	db #3a,#3a,#c9,#39,#39,#39,#ca,#3a
.l7c48 equ $ + 3
	db #3a,#3a,#ff,#c3,#82,#35,#81,#35
.l7c54 equ $ + 7
	db #82,#35,#80,#35,#82,#35,#ff,#c2
	db #82,#32,#81,#32,#82,#32,#80,#32
.l7c60 equ $ + 3
	db #82,#32,#ff,#c1,#82,#32,#81,#32
.l7c6c equ $ + 7
	db #82,#32,#80,#32,#82,#32,#ff,#cf
	db #97,#39,#95,#3c,#80,#39,#3c,#85
	db #3e,#a9,#37,#97,#3f,#95,#3e,#80
	db #3f,#3e,#af,#3c,#97,#39,#95,#3c
	db #80,#39,#3c,#85,#3e,#a9,#3b,#88
	db #41,#3c,#85,#41,#88,#3f,#3e,#82
.l7c9a equ $ + 5
	db #3f,#3e,#af,#3c,#ff,#ce,#af,#39
	db #3a,#35,#37,#39,#3a,#97,#3a,#3a
	db #af,#39,#ff
.l7ca8
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#09,#00,#00,#00
.l7cbf equ $ + 7
	db #00,#01,#01,#01,#01,#01,#01,#00
	db #00,#d1,#7c,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#db
	db #7c,#01,#0f,#02,#1f,#05,#ff,#04
	db #07,#03,#06,#01,#0f,#04,#ff,#04
	db #02,#10,#07,#05,#06
.l7ce5
	push ix
	pop hl
	ld d,h
	ld e,l
	inc de
	ld (hl),#00
	ld bc,#0016
	ldir
	add a
	ld d,#00
	ld e,a
	ld hl,l7cbf
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#02),l
	ld (ix+#03),h
	ld (ix+#07),#01
	ret
.l7d19
	ld ix,l7ca8
	ld a,(l742e)
	or a
	jr z,l7d2e
	dec a
	ld (l742f),a
	call l7ce5
	xor a
	ld (l742e),a
.l7d2e
	ld a,(ix+#0c)
	cp #09
	ret z
	call l7d61
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld (l774b),hl
	ld a,(ix+#0a)
	ld (l7752),a
	bit 3,(ix+#0c)
	jr nz,l7d52
	ld a,(ix+#0b)
	ld (l774f),a
.l7d52
	ld a,(ix+#0c)
	add a
	ld b,a
	ld a,(l7750)
	and #ed
	or b
	ld (l7750),a
	ret
.l7d61
	dec (ix+#07)
	jp nz,l7e01
	ld l,(ix+#02)
	ld h,(ix+#03)
.l7d6d
	ld a,(hl)
	inc hl
	ld b,(hl)
	inc hl
	or a
	jr z,l7dbb
	dec a
	jr z,l7dc5
	dec a
	jr z,l7dca
	dec a
	jr z,l7dcf
	dec a
	jr z,l7de0
	dec a
	jr z,l7dec
	dec a
	jr z,l7df8
	dec a
	jr z,l7da7
	dec a
	jr z,l7d9c
	dec (ix+#06)
	jr z,l7d99
	ld l,(ix+#04)
	ld h,(ix+#05)
	jr l7d6d
.l7d99
	dec hl
	jr l7d6d
.l7d9c
	ld (ix+#04),l
	ld (ix+#05),h
	ld (ix+#06),b
	jr l7db3
.l7da7
	ld (ix+#07),b
	ld (ix+#02),l
	ld (ix+#03),h
	jr l7e01
.l7db2
	inc hl
.l7db3
	ld (ix+#02),l
	ld (ix+#03),h
	jr l7d6d
.l7dbb
	ld (ix+#09),b
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	jr l7db3
.l7dc5
	ld (ix+#0a),b
	jr l7db3
.l7dca
	ld (ix+#0b),b
	jr l7db3
.l7dcf
	ld (ix+#0e),b
	ld a,(hl)
	ld (ix+#0d),a
	inc hl
	ld a,(hl)
	ld (ix+#11),a
	ld (ix+#12),a
	jr l7db2
.l7de0
	ld (ix+#0f),b
	ld a,(hl)
	ld (ix+#13),a
	ld (ix+#14),a
	jr l7db2
.l7dec
	ld (ix+#10),b
	ld a,(hl)
	ld (ix+#15),a
	ld (ix+#16),a
	jr l7db2
.l7df8
	ld (ix+#0c),#09
	xor a
	ld (l742f),a
	ret
.l7e01
	dec (ix+#11)
	jr nz,l7e1f
	ld a,(ix+#12)
	ld (ix+#11),a
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld e,(ix+#0d)
	ld d,(ix+#0e)
	add hl,de
	ld (ix+#08),l
	ld (ix+#09),h
.l7e1f
	dec (ix+#13)
	jr nz,l7e3d
	ld a,(ix+#14)
	ld (ix+#13),a
	ld a,(ix+#0a)
	add (ix+#0f)
	jp p,l7e34
	xor a
.l7e34
	cp #10
	jr c,l7e3a
	ld a,#0f
.l7e3a
	ld (ix+#0a),a
.l7e3d
	dec (ix+#15)
	jr nz,l7e51
	ld a,(ix+#16)
	ld (ix+#15),a
	ld a,(ix+#0b)
	add (ix+#10)
	ld (ix+#0b),a
.l7e51
	ret
;
.init_music
.l7e52
;
	ld hl,l7ea6
	ld (l7ea4),hl
	ld a,#01
	ld (l7e7c),a
	ld (l742c),a
	ret
;
.play_music
.l7e61
;
	call l74a9
	ld a,(l742d)
	or a
	call nz,l7e7b
.l7e6b
	ld a,(l742d)
	or a
	ret nz
;
.stop_music
.l7e70
;
	ld a,#ff
	push af
	ld (l742c),a
	call l74a9
	pop af
	ret
.l7e7c equ $ + 1
.l7e7b
	ld a,#01
	ld hl,(l7ea4)
	dec a
	ld (l7e7c),a
	jr nz,l7ea0
.l7e86
	ld a,(hl)
	cp #ff
	jr nz,l7e94
	ld hl,l7ea6
	ld (l7ea4),hl
	jp l7e86
.l7e94
	ld (l7e7c),a
	inc hl
	ld a,(hl)
	inc hl
	or a
	jr z,l7ea0
	ld (l742e),a
.l7ea0
	ld (l7ea4),hl
	ret
.l7ea4
	dw l7ea6
.l7ea6
	db #fa,#00,#fa,#00,#fa,#00,#fa,#00
	db #a0,#00,#12,#02,#12,#09,#12,#02
	db #12,#09,#12,#02,#12,#09,#12,#02
	db #12,#09,#12,#02,#12,#09,#12,#02
	db #12,#09,#12,#02,#12,#09,#09,#09
	db #09,#09,#09,#09,#04,#02,#05,#02
	db #12,#02,#12,#09,#12,#02,#12,#09
	db #12,#02,#12,#09,#12,#02,#12,#09
	db #12,#02,#12,#09,#12,#02,#12,#09
	db #12,#02,#12,#09,#09,#09,#09,#09
	db #09,#09,#04,#02,#05,#02,#12,#02
	db #12,#09,#12,#02,#12,#09,#12,#02
	db #12,#09,#12,#02,#12,#09,#12,#02
	db #12,#09,#12,#02,#12,#09,#12,#02
	db #12,#09,#09,#09,#09,#09,#09,#09
	db #04,#02,#05,#02,#12,#02,#12,#09
	db #12,#02,#12,#09,#12,#02,#12,#09
	db #12,#02,#12,#09,#12,#02,#12,#09
	db #12,#02,#12,#09,#12,#02,#12,#09
	db #09,#09,#09,#09,#09,#09,#04,#02
	db #05,#02,#12,#02,#12,#09,#12,#02
	db #12,#09,#12,#02,#12,#09,#12,#02
	db #12,#09,#12,#02,#12,#09,#12,#02
	db #12,#09,#12,#02,#12,#09,#09,#09
	db #09,#09,#09,#09,#04,#02,#05,#02
	db #24,#02,#24,#09,#24,#02,#24,#09
	db #24,#02,#24,#09,#24,#02,#24,#09
	db #24,#02,#24,#09,#24,#02,#24,#09
	db #24,#02,#24,#09,#24,#02,#24,#09
	db #24,#02,#24,#09,#24,#02,#24,#09
	db #24,#02,#24,#09,#24,#02,#24,#09
	db #24,#02,#24,#09,#24,#02,#24,#09
	db #24,#02,#24,#09,#24,#02,#24,#09
	db #24,#02,#24,#09,#24,#02,#24,#09
	db #24,#02,#24,#09,#24,#02,#24,#09
	db #24,#02,#24,#09,#24,#02,#24,#09
	db #24,#02,#24,#09,#24,#02,#24,#09
	db #24,#02,#24,#09,#24,#02,#24,#09
	db #24,#02,#24,#09,#24,#02,#24,#09
	db #24,#02,#24,#09,#24,#02,#24,#09
	db #24,#02,#24,#09,#24,#02,#24,#09
	db #24,#02,#24,#09,#24,#02,#24,#09
	db #24,#02,#24,#09,#24,#02,#24,#09
	db #ff
;
; 7420 init (a = 01)
; 7423 7426 play
; 7429 stop music
;
.music_info
	db "750cc Grand Prix (1989)(Codemasters)()",0
	db "",0

	read "music_end.asm"
