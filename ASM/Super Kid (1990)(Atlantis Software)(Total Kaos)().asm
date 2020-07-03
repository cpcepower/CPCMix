; Music of Super Kid (1990)(Atlantis Software)(Total Kaos)()
; Ripped by Megachur the 10/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SUPERKID.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #449a

	read "music_header.asm"

.l449a
	db #03,#04,#01,#02,#02,#04,#03,#01
	db #01,#03
.l44a4
	dw l4bda,l4be7,l4bed,l4bed
	dw l4bee,l4bfb,l4c04,l4c1f
	dw l4c36,l4c4d,l4c5e,l4c6b
	dw l4c78,l4c87,l4c92,l4c9d
	dw l4caa,l4cb3,l4bed,l4cbc
	dw l4cc5,l4cca,l4cd3,l4cd8
	dw l4cdd,l4cf0,l4cff,l4bed
	dw l4d0e,l4d17
.l44e0
	ld hl,l0d0b
	bit 0,(hl)
	ret nz
	ld c,a
	ld l,a
	ld de,l449a
	call l19e3
	ld hl,l0d0c
	cp (hl)
	ret nc
	ld (hl),a
	ld a,c
	ld (l0d0d),a
	ret
	call l44e0
	ld hl,l0d0b
	bit 0,(hl)
	jr nz,l4518
	ld a,(l0d0c)
	cp #ff
	ret z
	call l456c
	ld hl,(l0d0d)
	ld h,#00
	ld de,l44a4
	add hl,de
	call l4528
.l4518
	ld a,#ff
	ld (l0d0c),a
	ret
;
.real_init_music	; hl,&0000	or &0006 (for repeating 2nd theme) 	; 0-6
;
	call l456c
	defs 3,0		; modified by Megachur - call l18ac 
	ld de,l09d8
	add hl,de
.l4528
	ld ix,l0c2d
	call l453c
	ld ix,l0c4d
	call l453c
	ld ix,l0c6d
	jr l453c
.l453c
	xor a
	ld (ix+#09),a
	ld (ix+#02),a
	ld (ix+#0a),a
	ld (ix+#00),a
	ld a,(hl)
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld (ix+#0c),#01
	ret
.l4558
	defs 3,0	;call l18ac
	ld l,#00
	jp l48c7
	call l4558
.l4563
	call l4588
	jr nz,l4563
	ret
	defs 3,0	;call l18ac
;
.stop_music
.l456c
;
	xor a
	ld (l0c39),a
	ld (l0c59),a
	ld (l0c79),a
	ld (l0c97),a
	ld a,#0f
	ld (l0c93),a
	ld (l0c96),a
	ld a,#38
	ld (l0c9f),a
	jr l4518
.l4588
	ld a,(l0c39)
	ld hl,l0c59
	or (hl)
	ld hl,l0c79
	or (hl)
	ret
;
.play_music
;
	ld a,(l0c31)
	cp #06
	jr nz,l45a0
	ld a,#38
	ld (l0c9f),a
.l45a0
	ld ix,l0c2d
	ld iy,(l0c34)
	call l464b
	ld (l0c34),iy
	ld ix,l0c4d
	ld iy,(l0c54)
	call l464b
	ld (l0c54),iy
	ld ix,l0c6d
	ld iy,(l0c74)
	call l464b
	ld (l0c74),iy
	call l47f4
	ld hl,(l0c3e)
	ld (l0c98),hl
	ld hl,(l0c5e)
	ld (l0c9a),hl
	ld hl,(l0c7e)
	ld (l0c9c),hl
	ld a,(l0c48)
	call l460a
	ld (l0ca0),a
	ld a,(l0c68)
	call l460a
	ld (l0ca1),a
	ld a,(l0c88)
	call l460a
	ld (l0ca2),a
	call l4611
	ld hl,l0c90
	dec (hl)
	ret p
	ld a,(l0c8f)
	ld (hl),a
	ret
.l460a
	ld hl,l0c93
	sub (hl)
	ret nc
	xor a
	ret
.l4611
	ld hl,l0ca7
	ld a,#0f
.l4616
	push af
	ld c,(hl)
	call l4622
	dec hl
	pop af
	dec a
	jp p,l4616
	ret
.l4622
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
.l4640
	xor a
	ld (ix+#0c),a
	ld (ix+#11),a
	ld (ix+#12),a
	ret
.l464b
	bit 0,(ix+#0c)
	jr z,l4640
	ld a,(l0c90)
	and a
	jr nz,l4660
	ld a,(ix+#09)
	and a
	jr z,l467f
	dec (ix+#09)
.l4660
	ld a,(ix+#0b)
	and a
	ret z
	call l4784
	call l46f2
	jp l4722
.l466e
	and #1f
	ld l,a
	ld de,l08f6
	call l19d9
	call l17f8
	bit 0,(ix+#0c)
	ret z
.l467f
	ld a,(iy+#00)
	inc iy
	bit 7,a
	jr z,l466e
	and #7f
	jr z,l4698
	cp #7f
	jr nz,l4695
	ld a,(ix+#0e)
	and #7f
.l4695
	add (ix+#0a)
.l4698
	ld (ix+#0b),a
	ld l,a
	ld de,l0916
	call l19d9
	ld (ix+#11),l
	ld (ix+#12),h
	ld a,(ix+#00)
	and a
	jr nz,l46b3
	ld a,(iy+#00)
	inc iy
.l46b3
	ld (ix+#09),a
	ld (ix+#10),#00
	ld l,(ix+#04)
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,l0a22
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ex de,hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	call l47d7
	pop hl
	ld a,(hl)
	and a
	jr z,l46dc
	ld (l0c9f),a
.l46dc
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	inc hl
	ld a,(hl)
	ld (ix+#1c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	ld (ix+#10),#ff
	jp l4660
.l46f2
	ld a,(ix+#0d)
	and a
	ret z
	ld l,a
	ld h,#00
	ld de,l0ac9
	add hl,de
	ld a,(hl)
	bit 7,a
	jr z,l470d
	and #7f
	ld (ix+#0d),a
	ld l,a
	ld h,#00
	add hl,de
	ld a,(hl)
.l470d
	inc (ix+#0d)
	add (ix+#0b)
	ld l,a
	ld l,a
	ld de,l0916
	call l19d9
	ld (ix+#11),l
	ld (ix+#12),h
	ret
.l4722
	ld a,(ix+#0f)
	cp #ff
	ret z
	cp #80
	jr z,l4730
	dec (ix+#0f)
	ret
.l4730
	ld a,(ix+#0b)
	add (ix+#1c)
	ld l,a
	ld de,l0916
	call l19d9
	push hl
	ld l,(ix+#0b)
	ld de,l0916
	call l19d9
	ex de,hl
	pop hl
	and a
	sbc hl,de
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	inc (ix+#10)
	bit 2,(ix+#10)
	jr z,l4776
	ld e,(ix+#11)
	ld d,(ix+#12)
	ex de,hl
	and a
	sbc hl,de
	ld (ix+#11),l
	ld (ix+#12),h
	ret
.l4776
	ld e,(ix+#11)
	ld d,(ix+#12)
	add hl,de
	ld (ix+#11),l
	ld (ix+#12),h
	ret
.l4784
	ld a,(ix+#16)
	and a
	jr z,l47b8
	dec (ix+#17)
	ret nz
	ld a,(ix+#18)
	ld (ix+#17),a
	bit 7,(ix+#16)
	jr nz,l47a9
	ld a,(ix+#1b)
	add (ix+#19)
	ld (ix+#1b),a
	cp (ix+#1a)
	ret c
	jr l47c7
.l47a9
	ld a,(ix+#1b)
	sub (ix+#19)
	ld (ix+#1b),a
	cp (ix+#1a)
	ret nz
	jr l47c7
.l47b8
	ld a,(ix+#17)
	or (ix+#19)
	ret z
	dec (ix+#19)
	ret nz
	dec (ix+#17)
	ret nz
.l47c7
	ld a,(ix+#1a)
	ld (ix+#1b),a
	ld l,(ix+#14)
	ld h,(ix+#15)
	inc hl
	inc hl
	inc hl
	inc hl
.l47d7
	ld (ix+#14),l
	ld (ix+#15),h
	ld a,(hl)
	ld (ix+#16),a
	inc hl
	ld a,(hl)
	ld (ix+#17),a
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1a),a
	ret
.l47f4
	ld a,(l0c93)
	ld hl,l0c96
	cp (hl)
	ret z
	ld hl,l0c94
	dec (hl)
	ret p
	ld a,(l0c95)
	ld (hl),a
	ld a,(l0c97)
	ld hl,l0c93
	add (hl)
	ld (hl),a
	and #0f
	sub #0f
	jp z,l456c
	ret
.l4815
	ld e,(iy+#00)
	ld d,(iy+#01)
	inc iy		; next step
	inc iy
	ret
.l4820
	push de
	pop iy
	ret
.l4824
	ld (ix+#0c),#00
	ret
.l4829
	ld l,(iy+#00)
	ld de,l09fc
	call l19d9
	push hl
	pop iy
	ret
.l4836
	ld l,(iy+#00)
	inc iy
	push iy
	pop de
	ld (ix+#05),e
	ld (ix+#06),d
	ld de,l0a14
	call l19d9
	push hl
	pop iy
	ret
.l484e
	ld e,(ix+#05)
	ld d,(ix+#06)
	push de
	pop iy
	ret
.l4858
	bit 0,(ix+#02)
	jr z,l486f
	ld a,(ix+#01)
	and a
	jr z,l4881
	dec (ix+#01)
	inc iy
	call l4815
	jp l4820
.l486f
	set 0,(ix+#02)
	ld a,(iy+#00)
	inc iy
	ld (ix+#01),a
	call l4815
	jp l4820
.l4881
	res 0,(ix+#02)
	ld a,(iy+#00)
	inc iy
	jp l4815
.l488d
	ret
.l488e
	ret
.l488f
	ld a,(iy+#00)
	inc iy
	ld (ix+#04),a
	ret
.l4898
	ld a,(iy+#00)
	inc iy
	ld (ix+#00),a
	ret
.l48a1
	ld a,(iy+#00)
	inc iy
	ld (l0c8f),a
	ret
.l48aa
	ld a,(iy+#00)
	inc iy
	ret
.l48b0
	ld a,(iy+#00)
	inc iy
	ld (ix+#0a),a
	ret
.l48b9
	ld a,(iy+#00)
	inc iy
	ld (ix+#0e),a
	ret
.l48c2
	ld l,(iy+#00)
	inc iy
.l48c7
	ld h,#00
	add hl,hl
	add hl,hl
	ld de,l0af4
	add hl,de
	ld a,(hl)
	cp #ff
	jr z,l48d7
	ld (l0c93),a
.l48d7
	inc hl
	ld a,(hl)
	ld (l0c96),a
	inc hl
	ld a,(hl)
	ld (l0c97),a
	inc hl
	ld a,(hl)
	ld (l0c94),a
	ld (l0c95),a
	ret
.l48ee equ $ + 4
.l48ea
	db #0b,#01,#0f,#01,#02,#00,#04,#02
	db #ee,#48,#02,#00,#04,#01,#f4,#48
.l48fe equ $ + 4
	db #02,#01,#01,#03,#09,#02,#02,#02
	db #04,#02,#fe,#48,#09,#03,#02,#06
	db #02,#04,#09,#02,#0d,#f4,#02,#06
	db #0d,#00,#09,#03,#02,#02,#04,#01
.l4920 equ $ + 6
	db #14,#49,#02,#04,#01,#04,#09,#00
	db #02,#03,#04,#02,#20,#49,#09,#03
	db #02,#03,#04,#01,#28,#49,#02,#05
	db #09,#00,#0d,#00,#02,#06,#0d,#00
	db #09,#03,#02,#03,#04,#01,#3a,#49
.l4946 equ $ + 4
	db #02,#05,#01,#05,#0b,#01,#0f,#01
.l4950 equ $ + 6
.l494e equ $ + 4
.l494a
	db #02,#00,#01,#00,#09,#02,#02,#02
.l4956 equ $ + 4
.l4954 equ $ + 2
	db #01,#01,#09,#00,#02,#03,#01,#02
.l495e equ $ + 4
.l495a
	db #09,#03,#01,#01,#09,#03,#01,#02
.l4969 equ $ + 7
.l4963 equ $ + 1
.l4962
	db #00,#0b,#01,#0f,#02,#0a,#03,#09
	db #06,#ae,#b5,#09,#05,#bd,#09,#06
	db #a5,#09,#06,#ae,#b5,#09,#05,#bd
	db #09,#06,#ae,#09,#06,#a7,#ae,#09
	db #05,#bd,#09,#06,#aa,#09,#06,#a7
	db #ae,#09,#05,#bd,#09,#06,#b1,#09
	db #06,#aa,#b1,#09,#05,#bd,#09,#06
	db #ae,#09,#06,#aa,#b1,#09,#05,#bd
	db #09,#06,#b0,#09,#06,#a9,#b0,#09
	db #05,#bd,#09,#06,#ac,#09,#06,#a9
	db #b0,#09,#05,#bd,#09,#06,#b5,#04
.l49c1 equ $ + 7
	db #06,#69,#49,#0f,#03,#01,#06,#09
.l49c5 equ $ + 3
	db #02,#0a,#03,#ba,#c1,#bf,#c1,#bc
	db #c1,#bd,#c1,#b3,#ba,#b8,#ba,#b5
	db #ba,#b6,#ba,#b6,#bd,#bc,#bd,#b8
	db #bd,#ba,#bd,#b5,#bc,#ba,#bc,#b7
.l49e7 equ $ + 5
	db #bc,#b8,#bc,#01,#07,#09,#00,#0a
.l49eb equ $ + 1
	db #03,#ba,#bd,#b3,#c1,#b3,#ba,#bd
	db #ba,#b3,#b6,#b8,#ba,#b8,#b3,#b6
	db #b3,#b6,#ba,#bc,#bd,#bc,#b6,#ba
	db #b3,#b5,#b8,#ae,#bc,#ae,#b5,#b8
.l4a0d equ $ + 3
	db #c1,#01,#08,#0b,#01,#0f,#02,#0a
.l4a13 equ $ + 1
	db #03,#09,#06,#a9,#a5,#09,#05,#bd
	db #09,#06,#a0,#09,#06,#a9,#a5,#09
	db #05,#bd,#09,#06,#a0,#09,#06,#ac
	db #a9,#09,#05,#bd,#09,#06,#a4,#09
	db #06,#ac,#a9,#09,#05,#bd,#09,#06
	db #a4,#09,#06,#ae,#aa,#09,#05,#bd
	db #09,#06,#a5,#09,#06,#ae,#aa,#09
	db #05,#bd,#09,#06,#a5,#09,#06,#b0
	db #ac,#09,#05,#bd,#09,#06,#a7,#09
	db #06,#b0,#ac,#09,#05,#bd,#09,#06
	db #a7,#09,#06,#b1,#ae,#09,#05,#bd
	db #09,#06,#a9,#09,#06,#b1,#ae,#09
	db #05,#bd,#09,#06,#a9,#09,#06,#b1
	db #ae,#09,#05,#bd,#09,#06,#a9,#09
	db #06,#b1,#ae,#09,#05,#bd,#09,#06
	db #a9,#04,#06,#13,#4a,#0f,#03,#01
.l4a97 equ $ + 5
.l4a93 equ $ + 1
	db #09,#0a,#03,#09,#00,#b1,#b3,#b5
	db #b3,#b1,#b3,#b5,#b3,#b5,#b6,#b8
	db #b6,#b5,#b6,#b8,#b6,#b6,#b8,#ba
	db #b8,#b6,#b8,#ba,#b8,#b8,#ba,#bc
	db #ba,#b8,#ba,#bc,#ba,#ba,#bc,#bd
	db #bc,#ba,#bc,#bd,#bc,#ba,#bc,#bd
.l4ac9 equ $ + 7
	db #bc,#ba,#bc,#bd,#bc,#01,#0a,#0a
.l4acf equ $ + 5
	db #03,#09,#03,#0d,#0c,#a9,#b5,#b8
	db #bd,#b8,#ac,#b5,#b1,#ac,#b8,#bc
	db #c1,#bc,#b0,#b8,#b5,#ae,#ba,#bd
	db #b6,#bd,#b1,#ba,#b6,#b0,#bc,#bf
	db #c4,#bf,#b3,#bc,#b8,#b1,#bd,#c1
	db #c6,#c1,#b5,#bd,#ba,#b1,#bd,#c1
.l4b01 equ $ + 7
	db #c6,#c1,#b5,#bd,#ba,#01,#0b,#0a
	db #03,#09,#06,#ae,#b5,#09,#05,#bd
	db #09,#06,#b5,#ae,#b5,#09,#05,#bd
	db #09,#06,#b5,#a9,#b0,#09,#05,#bd
	db #09,#06,#b0,#a9,#b0,#09,#05,#bd
.l4b26 equ $ + 4
	db #09,#06,#b0,#03,#0a,#03,#09,#06
	db #aa,#b1,#09,#05,#bd,#09,#06,#b1
	db #aa,#b1,#09,#05,#bd,#09,#06,#b1
	db #ac,#b3,#09,#05,#bd,#09,#06,#b3
	db #ac,#b3,#09,#05,#bd,#09,#06,#b3
.l4b4b equ $ + 1
	db #03,#0a,#03,#ba,#c1,#bf,#c1,#bd
	db #c1,#bc,#c1,#b5,#bc,#ba,#bc,#b8
.l4b5e equ $ + 4
	db #bc,#b7,#bc,#03,#0a,#03,#ba,#bd
	db #b3,#c1,#bd,#ba,#b3,#ba,#b5,#b8
.l4b71 equ $ + 7
	db #ac,#bc,#b8,#b5,#ac,#c1,#03,#0a
	db #03,#b6,#bd,#bc,#bd,#ba,#bd,#b8
	db #bd,#b8,#bf,#bd,#bf,#bc,#bf,#ba
.l4b84 equ $ + 2
	db #bf,#03,#0a,#03,#b6,#ba,#b0,#bd
	db #ba,#b6,#b0,#b6,#b8,#bc,#b0,#bf
.l4b97 equ $ + 5
	db #bc,#b8,#b0,#c4,#03,#0a,#03,#c6
	db #c1,#bd,#c6,#c1,#bd,#c6,#bd,#c1
	db #c8,#c4,#c8,#c1,#c4,#c8,#c4,#c1
	db #c6,#bd,#c1,#ba,#c1,#bd,#ba,#bc
	db #b5,#b8,#bc,#b5,#b8,#bc,#b8,#b5
	db #ba,#bd,#c1,#ba,#bd,#c6,#bd,#bc
	db #b8,#c1,#bc,#c4,#c1,#c8,#c4,#c6
	db #c1,#c9,#c6,#cd,#c6,#b1,#c6,#d0
	db #d4,#cd,#d4,#d0,#cd,#d4,#cd,#03
.l4bda
	db #0b,#01,#0f,#01,#09,#05,#b1,#05
.l4be7 equ $ + 5
	db #09,#07,#80,#01,#00,#09,#08,#b2
.l4bee equ $ + 4
.l4bed equ $ + 3
	db #05,#80,#01,#00,#0b,#02,#0f,#01
	db #09,#08,#c9,#01,#c6,#01,#c2,#03
.l4bfb equ $ + 1
	db #00,#09,#08,#cd,#01,#c9,#01,#c6
.l4c04 equ $ + 2
	db #03,#00,#0b,#02,#0f,#01,#09,#08
	db #b1,#01,#b6,#01,#b8,#01,#b3,#03
	db #b5,#01,#b3,#01,#b8,#01,#b6,#01
.l4c1f equ $ + 5
	db #b1,#03,#b3,#01,#00,#09,#08,#b5
	db #01,#ba,#01,#bc,#01,#b6,#03,#b8
	db #01,#b6,#01,#bc,#01,#ba,#01,#b5
.l4c36 equ $ + 4
	db #03,#b6,#01,#00,#09,#08,#c2,#01
	db #c7,#01,#bd,#01,#c3,#03,#c5,#01
	db #b7,#01,#bd,#01,#bb,#01,#b6,#03
.l4c4d equ $ + 3
	db #b7,#01,#00,#0b,#00,#0f,#01,#09
	db #06,#bd,#01,#be,#01,#bf,#01,#c0
.l4c5e equ $ + 4
.l4c5a
	db #01,#c1,#01,#00,#09,#02,#be,#01
	db #bd,#01,#be,#01,#bf,#01,#c0,#01
.l4c6b equ $ + 1
	db #00,#09,#00,#c1,#01,#c0,#01,#bf
.l4c78 equ $ + 6
	db #01,#be,#01,#bd,#01,#00,#0b,#00
	db #0f,#01,#09,#06,#bd,#01,#bc,#01
.l4c87 equ $ + 5
	db #bb,#01,#ba,#01,#00,#09,#02,#be
	db #01,#bd,#01,#bc,#01,#bb,#01,#00
.l4c92
	db #09,#00,#bf,#01,#be,#01,#bd,#01
.l4c9d equ $ + 3
	db #bc,#01,#00,#0b,#02,#0f,#01,#09
	db #08,#bd,#03,#c1,#03,#c4,#03,#00
.l4caa
	db #09,#08,#c1,#03,#c4,#03,#c8,#03
.l4cb3 equ $ + 1
	db #00,#09,#08,#c4,#03,#c8,#03,#cb
.l4cbc equ $ + 2
	db #03,#00,#0b,#01,#0f,#01,#09,#08
.l4cc5 equ $ + 3
	db #c8,#03,#00,#09,#08,#c9,#03,#00
.l4cca
	db #0b,#00,#0f,#01,#09,#06,#c9,#03
.l4cd8 equ $ + 6
.l4cd3 equ $ + 1
	db #00,#09,#08,#cd,#03,#00,#09,#08
.l4cdd equ $ + 3
	db #cd,#03,#00,#0b,#02,#0f,#01,#09
	db #06,#bd,#01,#c4,#01,#bf,#01,#c6
.l4cf0 equ $ + 6
	db #01,#c1,#01,#c8,#01,#00,#09,#08
	db #c1,#01,#c8,#01,#c2,#01,#c9,#01
.l4cff equ $ + 5
	db #c4,#01,#cb,#01,#00,#09,#08,#c2
	db #01,#bd,#01,#c4,#01,#cb,#01,#c6
.l4d0e equ $ + 4
	db #01,#cd,#01,#00,#0b,#01,#0f,#01
	db #09,#08,#c9,#01,#00
.l4d17
	db #09,#08,#cd,#01,#00
	
.l08f6
	dw l4824,l4829,l4836,l484e
	dw l4858,l488d,l488d,l488d
	dw l488e,l488f,l4898,l48a1
	dw l48aa,l48b0,l48b9,l48c2
.l0916
	dw #0000
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04d4,#0470,#0431,#03f4
	dw #03dc,#0386,#0353,#0324
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
.l09d8
	dw l48ea,l48fe,l4920,l4946
	dw l494e,l4954,l4946,l495a
	dw l495e,l4962,l4962,l4962
	dw l4963,l49c1,l49e7,l4a0d
.l09fc equ $ + 4
	dw l4a93,l4ac9,l494a,l4950
	dw l4956,l48ee,l48fe,l4920
	dw l4969,l49c5,l49eb,l4a13
.l0a14 equ $ + 4
	dw l4a97,l4acf,l4b01,l4b26
	dw l4b4b,l4b5e,l4b71,l4b84
	dw l4b97
.l0a22
	dw l0a6a
	db #00,#84,#03,#10,#00,#00
	dw l0a7c
	db #00,#88,#02,#19,#00,#00
	dw l0a89
	db #00,#82,#03,#00,#00,#00
	dw l0a9a
	db #00,#88,#02,#16,#00,#00
	dw l0aab
	db #00,#84,#08,#19,#00,#00
	dw l0ac0
	db #30,#84,#08,#19,#00,#00
	dw l0a73
	db #30,#84,#03,#10,#00,#00
	dw l0ac0
	db #38,#84,#08,#19,#00,#00
	dw l0a6a
.l0a6a equ $ + 6
	db #00,#ff,#00,#1d,#00,#00,#0c,#80
.l0a73 equ $ + 7
	db #02,#01,#01,#00,#00,#00,#00,#0c
	db #80,#05,#01,#01,#00,#00,#00,#00
.l0a7c
	db #07,#01,#03,#01,#0c,#80,#08,#01
.l0a89 equ $ + 5
	db #01,#00,#00,#00,#00,#0c,#80,#01
	db #01,#08,#01,#08,#01,#0c,#80,#06
.l0a9a equ $ + 6
	db #01,#01,#00,#00,#00,#00,#08,#01
	db #02,#01,#0a,#00,#01,#08,#0a,#80
.l0aab equ $ + 7
	db #04,#01,#01,#00,#00,#00,#00,#0a
	db #80,#04,#01,#08,#80,#03,#01,#06
	db #80,#02,#01,#04,#80,#01,#01,#01
.l0ac0 equ $ + 4
	db #00,#00,#00,#00,#0f,#80,#01,#01
	db #01,#00,#00,#00,#00
.l0ac9
	db #00
	db #00,#04,#07,#0c,#81,#0c,#00,#00
	db #00,#86,#0c,#18,#8e,#00,#8e,#00
	db #01,#8e,#00,#0c,#8e,#0c,#00,#8e
	db #01,#0d,#01,#8e,#00,#01,#02,#03
	db #04,#05,#06,#07,#08,#09,#0a,#0b
.l0af4 equ $ + 2
	db #0c,#9d,#ff,#0f,#01,#02,#00,#00
	db #00,#00,#0a,#00,#ff,#18,#ff,#0f
.l0b05 equ $ + 3
	db #01,#20,#00,#00,#01,#00,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #08,#09,#19,#63,#00,#00,#00,#00
	db #00,#00,#00,#11,#01,#11,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#72,#7e,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#15,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#05,#7f,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#15,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#98,#7f,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#07,#04,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#c9,#7f,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#15,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #03,#5c,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#07,#04,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#8d,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#15,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #05,#20,#81,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#08,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#58,#81,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#08,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #07,#90,#81,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#08,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #08,#c8,#81,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#08,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
.l0c34 equ $ + 7
.l0c31 equ $ + 4
.l0c2d
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0c39 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0c3e equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0c48 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0c54 equ $ + 7
.l0c4d
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0c59 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0c5e equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0c68 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0c74 equ $ + 7
.l0c6d
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0c79 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0c7e equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0c88 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0c94 equ $ + 7
.l0c93 equ $ + 6
.l0c90 equ $ + 3
.l0c8f equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0c9c equ $ + 7
.l0c9a equ $ + 5
.l0c98 equ $ + 3
.l0c97 equ $ + 2
.l0c96 equ $ + 1
.l0c95
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0ca2 equ $ + 5
.l0ca1 equ $ + 4
.l0ca0 equ $ + 3
.l0c9f equ $ + 2
	db #00,#01,#38,#0f,#0f,#0f
.l0ca7 equ $ + 4
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
	db #00,#00,#00,#00,#01,#00,#00,#00
.l0d0d equ $ + 2
.l0d0c equ $ + 1
.l0d0b
	db #00,#00,#00
	
.l17f8
	jp (hl)
.l18ac
	ld a,#01
	ld (l0b05),a
.l18b1
	ld a,(l0b05)
	and a
	jr nz,l18b1
	ret
.l19d9
	ld h,#00
	add hl,hl
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,e
	ld h,d
	ret
.l19e3
	ld h,#00
	add hl,de
	ld a,(hl)
	and a
	ret
;
; #129b
; ld sp,#c000
; call #456c
; call #1cf9
; ld hl,#0000
; call #451e
;
; #17b6
; di
; push af
; push bc
; push de
; push hl
; ex af,af'
; exx
; push af
; push bc
; push de
; push hl
; push ix
; push iy
; ld bc,#f500
; in a,(c)
; rra
; jr nc,l17d1
; xor a
; ld (#0b06),a
; .l17d1
; ld hl,(#0b06)
; ld de,#0122
; call #19d9
; call l17f8
; ld hl,#0b06
; inc (hl)
; ld a,(hl)
; sub #06
; jr nz,l17e7
; ld (hl),a
; .l17e7
; pop iy
; pop ix
; pop hl
; pop de
; pop bc
; pop af
; exx
; ex af,af'
; pop hl
; pop de
; pop bc
; pop af
; ei
; reti
; .l17f8
; jp (hl)
; ld hl,(#0b1d)
; call #187a
; call l183a
; jp #1872
; call #4594
; ld a,(#0b10)
; and #04
; jp z,#129a
; ret
; ret
; ret
; ld hl,#0b07
; dec (hl)
; jp p,l181b
; inc (hl)
; .l181b
; ld hl,(#0b1f)
; jp #187a
; xor a
; ld (#0b05),a
; call l1834
; ret z
; dec hl
; ld (#0b1b),hl
; ret
; .l182e
; call l1834
; jr nz,l182e
; ret
; .l1834
; ld hl,(#0b1b)
; ld a,l
; or h
; ret
;
;
.init_music		; added by Megachur
;
	ld h,#00         ; hl,&0000 or &0006 (for repeating 2nd theme) 	; 0-6
	ld l,a
	jp real_init_music
;
.music_info
	db "Super Kid (1990)(Atlantis Software)(Total Kaos)",0
	db "",0

	read "music_end.asm"
