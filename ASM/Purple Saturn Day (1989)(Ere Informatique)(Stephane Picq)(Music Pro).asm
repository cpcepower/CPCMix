; Music of Purple Saturn Day (1989)(Ere Informatique)(Stephane Picq)(Music Pro)
; Ripped by Megachur the 14/11/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PURPLESD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #032b

	read "music_header.asm"
;
.init_music
;
	ld hl,l078a
	ld (hl),#00
	ld de,l078b
	ld bc,#0128
	ldir
	ld a,(l09ee)
	ld (l08b3),a
	ld bc,l09ed
	ld hl,(l09ef)
	add hl,bc
	ld (l08b6),hl
	ld hl,(l09f1)
	add hl,bc
	ld (l08b8),hl
	ld hl,(l09f3)
	add hl,bc
	ld (l078f),hl
	ld hl,(l09f5)
	add hl,bc
	ld (l07ca),hl
	ld hl,(l09f7)
	add hl,bc
	ld (l0805),hl
	ld hl,l09f9
	ld (l08b4),hl
	ld a,#0f
	ld (l08bb),a
	ld hl,l0784
	push hl
	ld de,l078a
	ld bc,#0005
	ldir
	pop hl
	push hl
	ld de,l07c5
	ld c,#05
	ldir
	pop hl
	ld de,l0800
	ld c,#05
	ldir
	ld c,#38
	ld a,#07
	jp l0762
;
.real_play_music
;
	ld a,(l08bb)
	ld e,a
	ld b,#03
	ld hl,l081f
.l039c
	ld a,(hl)
	ld c,a
	ld a,c
	cp e
	jr c,l03a3
	ld a,e
.l03a3
	ld c,a
	ld a,b
	add #07
	push de
	call l0762
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l039c
	ld hl,l08b3
	dec (hl)
	ld ix,l078a
	xor a
.l03bd
	ld (l08ba),a
	ld a,(ix+#07)
	or a
	jp nz,l0613
.l03c7
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l03d1
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jr nz,l0415
	ld l,(ix+#01)
	ld h,(ix+#02)
.l03e2
	ld a,(hl)
	cp #ff
	jr nz,l03f6
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	jp l03e2
.l03f6
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l08b4)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l09ed
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l03d1
.l0415
	bit 7,a
	jr nz,l0478
	ld hl,l08c2
	or a
	jr z,l0422
	add (ix+#20)
.l0422
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
	ld (ix+#0a),b
	ld (ix+#21),b
	ld (ix+#1f),b
	push ix
	pop hl
	ld c,#0b
	add hl,bc
	ex de,hl
	ld a,(l08ba)
	inc a
	ld hl,l0827
	ld c,#14
.l044f
	add hl,bc
	dec a
	jr nz,l044f
	ldir
	push ix
	pop hl
	ld c,#22
	add hl,bc
	ex de,hl
	ld a,(l08ba)
	inc a
	ld hl,l0863
	ld c,#14
.l0465
	add hl,bc
	dec a
	jr nz,l0465
	ldir
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l05ff
.l0478
	bit 6,a
	jr nz,l04b0
	bit 5,a
	jp z,l049d
	push af
	xor a
	ld (l08bc),a
	pop af
.l0487
	and #1f
	ld b,a
	ld c,#38
	jr z,l0490
	ld c,#18
.l0490
	ld a,#07
	call l0762
	ld c,b
	dec a
	call l0762
	jp l05ff
.l049d
	and #1f
	ld hl,l0982
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l05ff
.l04b0
	bit 5,a
	jr nz,l051a
	and #1f
	add a
	add a
	add a
	ld hl,(l08b6)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld c,#0b
	add hl,bc
	ld (ix+#0a),b
.l04ca
	ld a,(de)
	bit 7,a
	jr nz,l04dc
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l04f2
.l04dc
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#ff
	add a
	jr c,l04ed
	ld b,#01
.l04ed
	rrca
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l04f2
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jr nz,l04ca
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l0827
	ld a,(l08ba)
	inc a
.l0510
	add hl,bc
	dec a
	jr nz,l0510
	ex de,hl
	ldir
	jp l05ff
.l051a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l0531
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
.l0531
	add hl,sp
	dec b
	add (hl)
	dec b
	add d
	dec b
	ld b,c
	dec b
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l05ff
	pop hl
	ld a,(hl)
	ld b,a
	and #3f
	ld (l08be),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l08bf),a
	ld a,b
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld b,a
	ld a,(hl)
	rlca
	rlca
	and #03
	or b
	ld (l08bc),a
	ld (l08bd),a
	ld a,(l08be)
	ld (l08c1),a
	ld b,a
	ld hl,l08bf
	cp (hl)
	ld a,#ff
	jr nc,l057b
	ld a,#01
.l057b
	ld (l08c0),a
	ld a,b
	jp l0487
	ld a,#02
	jr l0588
	ld a,#01
.l0588
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jr z,l05f5
	add a
	add a
	add a
	ld hl,(l08b8)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld c,#22
	add hl,bc
	ld (ix+#21),b
.l05a4
	ld a,(de)
	bit 7,a
	jr nz,l05b8
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
	jp l05ce
.l05b8
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#01
	add a
	jr c,l05c9
	ld b,#ff
.l05c9
	rrca
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l05ce
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jr nz,l05a4
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l0863
	ld a,(l08ba)
	inc a
.l05ec
	add hl,bc
	dec a
	jr nz,l05ec
	ex de,hl
	ldir
	jr l05f9
.l05f5
	xor a
	ld (ix+#09),a
.l05f9
	ld a,(ix+#09)
	ld (ix+#3a),a
.l05ff
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l03c7
.l0613
	ld a,(l08b3)
	or a
	jr nz,l061c
	dec (ix+#07)
.l061c
	ld a,(ix+#0a)
	cp #04
	jp z,l0666
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
	jr nz,l0649
	dec (hl)
	jr nz,l063c
	inc (ix+#0a)
.l063c
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l0666
.l0649
	dec (hl)
	jr nz,l065e
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
	jp l0660
.l065e
	inc hl
	inc hl
.l0660
	dec (hl)
	jr nz,l0666
	inc (ix+#0a)
.l0666
	ld a,(ix+#09)
	or a
	jp z,l06ff
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
	jr nz,l06a3
	dec (hl)
	jr nz,l0688
	inc (ix+#21)
.l0688
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jr nz,l0693
	inc b
.l0693
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l06d0
.l06a3
	dec (hl)
	jr nz,l06c8
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
	jr nz,l06b6
	inc b
.l06b6
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l06ca
.l06c8
	inc hl
	inc hl
.l06ca
	dec (hl)
	jr nz,l06d0
	inc (ix+#21)
.l06d0
	ld a,(ix+#21)
	cp #04
	jr nz,l06ff
	ld a,(ix+#09)
	cp #02
	jr nz,l06e4
	xor a
	ld (ix+#09),a
	jr l06ff
.l06e4
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l08ba)
	inc a
	ld hl,l0863
	ld c,#14
.l06f9
	add hl,bc
	dec a
	jr nz,l06f9
	ldir
.l06ff
	ld c,(ix+#36)
	ld a,(l08ba)
	add a
	call l0762
	ld c,(ix+#37)
	inc a
	call l0762
	ld bc,#003b
	add ix,bc
	ld a,(l08ba)
	inc a
	cp #03
	jp nz,l03bd
	ld a,(l08bc)
	or a
	jr z,l0755
	dec a
	ld (l08bc),a
	or a
	jr nz,l0755
	ld a,(l08bd)
	ld (l08bc),a
	ld a,(l08c1)
	ld hl,l08c0
	add (hl)
	ld (l08c1),a
	ld c,a
	ld hl,l08be
	cp (hl)
	jr z,l0748
	ld hl,l08bf
	cp (hl)
	jr nz,l0750
.l0748
	ld a,(l08c0)
	xor #fe
	ld (l08c0),a
.l0750
	ld a,#06
	call l0762
.l0755
	ld a,(l08b3)
	or a
	jr nz,l0761
	ld a,(l09ee)
	ld (l08b3),a
.l0761
	ret
.l0762
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
.l078b equ $ + 7
.l078a equ $ + 6
.l0784
	db #00,#89,#07,#89,#07,#ff,#00,#00
.l078f equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l07ca equ $ + 6
.l07c5 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0800 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0805 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l081f equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0827 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0863 equ $ + 7
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
.l08b3 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l08bb equ $ + 7
.l08ba equ $ + 6
.l08b8 equ $ + 4
.l08b6 equ $ + 2
.l08b4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l08c2 equ $ + 6
.l08c1 equ $ + 5
.l08c0 equ $ + 4
.l08bf equ $ + 3
.l08be equ $ + 2
.l08bd equ $ + 1
.l08bc
	db #00,#00,#00,#00,#00,#00,#00,#00
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
.l0982
	db #02,#03,#04,#06,#08,#0c,#10,#18
.l098f equ $ + 5
.l098e equ $ + 4
	db #20,#30,#40,#60,#00,#48,#04,#42
	db #04,#45,#20,#45,#80,#40,#02,#41
	db #01,#40,#04,#40,#01
	ld hl,l098f
	ld bc,#f40e
	out (c),c
	ld b,#f6
	in a,(c)
	and #30
	ld c,a
	or #c0
	out (c),a
	out (c),c
	inc b
	ld a,#92
	out (c),a
	push bc
	ld de,l0800
.l09bd
	ld a,(hl)
	inc hl
	ld b,#f6
	out (c),a
	ld b,#f4
	in a,(c)
	cpl
	and (hl)
	jr z,l09cc
	scf
.l09cc
	rl e
	inc hl
	dec d
	jr nz,l09bd
	ld b,#f6
	ld a,#49
	out (c),a
	ld b,#f4
	in a,(c)
	cpl
	and #1f
	or e
	ld e,a
	ld (l098e),a
	pop bc
	ld a,#82
	out (c),a
	dec b
	out (c),c
	ret
.l09f3 equ $ + 6
.l09f1 equ $ + 4
.l09ef equ $ + 2
.l09ee equ $ + 1
.l09ed
	db #00,#05,#06,#03,#ee,#03,#3e,#00
.l09f9 equ $ + 4
.l09f7 equ $ + 2
.l09f5
	db #72,#00,#97,#00,#cb,#00,#e6,#00
	db #fc,#00,#05,#01,#1d,#01,#2d,#01
	db #3d,#01,#58,#01,#73,#01,#83,#01
	db #93,#01,#b1,#01,#d2,#01,#ea,#01
	db #0e,#02,#2c,#02,#53,#02,#6b,#02
	db #88,#02,#a0,#02,#b8,#02,#d3,#02
	db #df,#02,#e8,#02,#ff,#02,#02,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#06,#06,#07,#07
	db #03,#03,#03,#03,#00,#00,#00,#01
	db #04,#05,#08,#05,#04,#05,#08,#05
	db #04,#05,#08,#05,#04,#05,#08,#05
	db #04,#ff,#0b,#09,#0d,#09,#0a,#0d
	db #0e,#09,#0a,#0d,#0e,#09,#0f,#10
	db #10,#0d,#0d,#0b,#11,#0d,#0d,#0d
	db #0c,#12,#13,#12,#0c,#12,#13,#12
	db #0e,#0e,#0d,#11,#11,#0d,#ff,#16
	db #15,#14,#14,#14,#14,#14,#14,#14
	db #14,#14,#14,#14,#17,#14,#14,#14
	db #14,#14,#14,#14,#15,#14,#14,#14
	db #14,#14,#17,#14,#15,#14,#14,#14
	db #15,#14,#14,#14,#14,#14,#14,#14
	db #14,#17,#14,#14,#14,#17,#14,#14
	db #14,#14,#ff,#e0,#00,#a0,#d2,#e2
	db #00,#80,#18,#24,#24,#d1,#e2,#05
	db #1f,#82,#22,#80,#1f,#82,#24,#80
	db #1f,#82,#27,#1f,#26,#ff,#e0,#00
	db #a0,#c1,#e1,#08,#80,#30,#30,#30
	db #30,#2b,#2b,#2b,#2b,#28,#28,#28
	db #28,#84,#24,#ff,#e0,#00,#a0,#d6
	db #e1,#03,#86,#30,#ff,#e0,#00,#a0
	db #d1,#e2,#05,#80,#30,#3c,#3a,#30
	db #3c,#38,#30,#3c,#37,#30,#3c,#35
	db #30,#3c,#33,#32,#ff,#e0,#00,#a0
	db #c1,#e1,#0a,#82,#24,#24,#30,#24
	db #24,#24,#84,#30,#ff,#e0,#00,#a0
	db #c1,#e1,#0a,#82,#22,#22,#2e,#22
	db #22,#22,#84,#2e,#ff,#e0,#fc,#a0
	db #d2,#e2,#00,#80,#18,#24,#24,#d1
	db #e2,#05,#1f,#82,#22,#80,#1f,#82
	db #24,#80,#1f,#82,#27,#1f,#26,#ff
	db #e0,#fe,#a0,#d2,#e2,#00,#80,#18
	db #24,#24,#d1,#e2,#05,#1f,#82,#22
	db #80,#1f,#82,#24,#80,#1f,#82,#27
	db #1f,#26,#ff,#e0,#00,#a0,#c1,#e1
	db #0a,#82,#20,#20,#2c,#20,#20,#20
	db #84,#2c,#ff,#e0,#00,#a0,#c4,#e2
	db #04,#82,#30,#30,#3c,#30,#30,#3c
	db #30,#3c,#ff,#e0,#00,#a0,#c7,#e1
	db #05,#86,#3c,#82,#3c,#80,#3d,#3e
	db #82,#3c,#3a,#84,#3c,#3a,#82,#37
	db #84,#35,#80,#36,#88,#37,#80,#37
	db #ff,#e0,#0a,#a0,#d6,#e1,#03,#8a
	db #33,#a2,#d1,#82,#22,#a5,#d2,#e1
	db #02,#80,#27,#27,#a2,#d1,#e2,#03
	db #82,#2b,#a5,#d2,#e1,#02,#80,#30
	db #30,#ff,#e0,#00,#a0,#d2,#e2,#01
	db #80,#3c,#3f,#3c,#37,#3c,#37,#33
	db #37,#33,#30,#33,#30,#2b,#30,#2b
	db #27,#ff,#e0,#00,#a5,#c0,#82,#2b
	db #d2,#e1,#02,#80,#27,#27,#82,#2b
	db #80,#2b,#30,#82,#2b,#80,#27,#a1
	db #cf,#e2,#00,#27,#a5,#d2,#e1,#02
	db #82,#2e,#80,#30,#30,#ff,#e0,#00
	db #a0,#c7,#e1,#05,#86,#3c,#82,#3c
	db #80,#3d,#3e,#82,#3c,#3a,#84,#3c
	db #3e,#82,#3f,#84,#3e,#80,#3d,#88
	db #3c,#80,#3c,#ff,#e0,#00,#a0,#cd
	db #e1,#04,#80,#44,#44,#47,#44,#42
	db #3f,#3d,#3b,#3b,#38,#3b,#38,#36
	db #33,#31,#2f,#31,#33,#31,#33,#36
	db #33,#36,#38,#36,#38,#3b,#38,#3b
	db #83,#3d,#ff,#e0,#00,#a0,#d2,#e2
	db #01,#80,#3a,#3d,#3f,#3d,#3f,#44
	db #46,#44,#41,#3f,#41,#3f,#3d,#3a
	db #38,#3a,#ff,#e0,#00,#a2,#d1,#e2
	db #03,#82,#22,#a5,#d2,#e1,#02,#80
	db #27,#27,#a2,#d1,#e2,#03,#82,#2b
	db #a5,#d2,#e1,#02,#80,#30,#30,#ff
	db #e0,#00,#a0,#d1,#e2,#05,#80,#22
	db #26,#29,#26,#29,#2e,#29,#2e,#32
	db #2e,#32,#35,#32,#35,#3a,#35,#ff
	db #e0,#00,#a0,#d1,#e2,#05,#80,#3c
	db #3f,#3c,#38,#3c,#38,#33,#38,#33
	db #30,#33,#30,#2c,#30,#2c,#27,#ff
	db #e0,#00,#a5,#d3,#e1,#02,#80,#0c
	db #13,#18,#c0,#1f,#d3,#24,#2b,#30
	db #37,#3c,#c0,#43,#d3,#48,#4f,#cd
	db #84,#26,#ff,#e0,#00,#a0,#c1,#e1
	db #08,#84,#30,#2b,#28,#24,#ff,#e0
	db #00,#a0,#d6,#e1,#03,#86,#37,#ff
	db #e0,#00,#a0,#c3,#e1,#08,#80,#30
	db #30,#30,#30,#2b,#2b,#2b,#2b,#28
	db #28,#28,#28,#82,#24,#48,#ff,#e0
	db #00,#a0,#c0,#86,#30,#ff,#0f,#00
	db #0f,#00,#0f,#00,#0f,#00,#01,#0f
	db #83,#ad,#01,#00,#01,#00,#01,#0d
	db #83,#a7,#01,#00,#01,#00,#01,#0b
	db #83,#a1,#01,#00,#01,#00,#01,#09
	db #83,#9b,#01,#00,#01,#00,#01,#07
	db #83,#95,#01,#00,#01,#00,#82,#1e
	db #87,#87,#89,#89,#01,#f3,#01,#0a
	db #01,#00,#03,#00,#01,#00,#85,#46
	db #01,#00,#03,#00,#01,#00,#01,#0d
	db #01,#00,#03,#00,#01,#00,#01,#0e
	db #01,#00,#03,#00,#87,#e2,#01,#0e
	db #01,#00,#82,#9c,#62,#00,#01,#0f
	db #07,#00,#84,#bc,#01,#00,#01,#0f
	db #04,#ff,#08,#00,#88,#d3,#01,#0b
	db #02,#00,#01,#f5,#01,#00,#01,#0d
	db #02,#00,#01,#f3,#01,#00,#01,#0f
	db #02,#00,#01,#f1,#01,#00,#01,#0f
	db #0f,#ff,#01,#00,#01,#00,#01,#0d
	db #0d,#ff,#01,#00,#01,#00,#01,#0b
	db #0b,#ff,#01,#00,#01,#00,#01,#09
	db #09,#ff,#01,#00,#01,#00,#01,#0e
	db #01,#00,#01,#f2,#01,#00,#01,#0f
	db #8c,#d4,#63,#00,#8d,#5b,#82,#14
	db #0c,#00,#01,#00,#82,#94,#01,#0d
	db #04,#ff,#08,#00,#8a,#d3,#01,#0b
	db #04,#ff,#08,#00,#8c,#d3,#01,#09
	db #04,#ff,#08,#00,#95,#d3,#01,#07
	db #04,#ff,#08,#00,#9c,#d3,#01,#0d
	db #03,#00,#08,#ff,#05,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #84,#08,#82,#88,#84,#08,#01,#00
	db #01,#3c,#03,#ec,#01,#ef,#86,#86
	db #01,#f1,#01,#2b,#01,#e5,#88,#08
	db #82,#04,#04,#fe,#03,#02,#08,#00
	db #84,#08,#82,#88,#84,#08,#01,#e7
	db #01,#f1,#02,#f3,#01,#f4,#01,#00
	db #01,#63,#03,#e2,#01,#d1,#01,#04
	db #01,#38,#03,#ec,#01,#f1,#03,#00
	db #04,#02,#04,#fc,#04,#02,#82,#04
	db #04,#02,#04,#fc,#04,#02,#01,#00
	db #01,#00,#01,#01,#01,#ff,#01,#00
	db #01,#63,#02,#d8,#01,#d1,#06,#00
	db #01,#ff,#01,#00,#01,#01,#08,#00
	db #01,#01,#01,#fe,#01,#01,#28,#81
	db #88,#00,#3a,#00,#1d,#00,#3e,#00
	db #0b,#00,#32,#00,#07,#00,#02,#51
	db #02,#e6,#03,#00,#02,#dd,#02,#ee
	db #05,#c0,#13,#00,#0c,#c0,#0a,#c0
	db #0e,#c0,#1d,#c0,#25,#00,#02,#f7
	db #03,#c0,#02,#ff,#07,#c0,#03,#f3
	db #0d,#c0,#02,#00,#04,#f3,#04,#ff
	db #02,#fb,#4e,#00,#52,#00,#59,#00
	db #5f,#00,#69,#00,#6e,#00,#73,#00
	db #77,#00,#7c,#00,#82,#00,#03,#f3
	db #ff,#f3,#06,#f3,#ff,#f3,#8c,#e2
	db #48,#05,#d9,#8c,#f3,#ff,#f3,#09
	db #d9,#8c,#e2,#48,#c0,#c0,#f3,#ff
	db #f3,#04,#d9,#8c,#e2,#48,#04,#cc
	db #f3,#0c,#0c,#03,#0c,#c0,#c0,#04
	db #f3,#59,#51,#04,#05,#00,#a2,#a2
	db #d1,#d1,#05,#ff,#ef,#ef,#db,#db
	db #30,#00,#c0,#40,#c0,#40,#c0,#41
	db #c0,#40,#c0,#40,#c0,#41,#c0,#40
	db #c0,#40,#c0,#41,#c0,#40,#c0,#40
	db #c0,#41,#c0,#40,#c0,#40,#c0,#42
	db #81,#51,#43,#c0,#40,#c0,#40,#c0
	db #44,#45,#46,#81,#dd,#43,#c0,#40
	db #c0,#40,#c0,#47,#45,#46,#48,#49
	db #81,#d9,#43,#c0,#40,#c0,#40,#8f
	db #f3,#ff,#f3,#51,#e6,#e6,#dd,#dd
	db #ee,#ee,#d9,#8c,#e2,#48,#c0,#43
	db #c0,#40,#c0,#1b,#00,#45,#8a,#f3
	db #ff,#f3,#dd,#ee,#ee,#d9,#8c,#e2
	db #48,#4a,#43,#c0,#40,#c0,#17,#00
	db #45,#46,#48,#c1,#09,#c0,#43,#c0
	db #40,#c0,#4b,#45,#46,#48,#49,#c2
	db #4c,#43,#c0,#40,#c0,#0f,#00,#45
	db #46,#48,#49,#c3,#4c,#43,#c0,#40
	db #c0,#42,#45,#46,#48,#49,#c4,#06
	db #c0,#c0,#4c,#43,#c0,#40,#c0,#44
	db #45,#46,#48,#49,#c4,#4d,#c0,#4c
	db #43,#c0,#40,#c0,#47,#45,#46,#48
	db #49,#c4,#4e,#c0,#4c,#43,#c0,#40
	db #8e,#f3,#ff,#f3,#04,#e6,#e6,#dd
	db #dd,#ee,#ee,#d9,#8c,#e2,#48,#12
	db #c0,#c0,#4c,#43,#c0,#1b,#00,#45
	db #8a,#f3,#ff,#f3,#cc,#ee,#ee,#d9
	db #8c,#e2,#48,#16,#c0,#c0,#4c,#43
	db #c0,#17,#00,#45,#46,#48,#c1,#1a
	db #c0,#c0,#4c,#43,#c0,#4b,#45,#46
	db #48,#49,#c2,#4f,#c0,#4c,#43,#c0
	db #0f,#00,#45,#46,#48,#49,#c3,#4f
	db #c0,#4c,#43,#c0,#42,#45,#46,#48
	db #49,#c4,#06,#c0,#c0,#4f,#c0,#4c
	db #43,#c0,#44,#45,#46,#48,#49,#c4
	db #4d,#c0,#4f,#c0,#4c,#43,#c0,#47
	db #45,#46,#48,#49,#c4,#4e,#c0,#4f
	db #c0,#4c,#43,#8e,#f3,#ff,#f3,#51
	db #e6,#e6,#dd,#dd,#ee,#ee,#d9,#8c
	db #e2,#48,#12,#c0,#c0,#4f,#c0,#4c
	db #2f,#00,#45,#8b,#e6,#f3,#ff,#f3
	db #f3,#ee,#ee,#d9,#8c,#e2,#48,#16
	db #c0,#c0,#4f,#c0,#4c,#2b,#00,#45
	db #8b,#e6,#f7,#dd,#ee,#ee,#f3,#ff
	db #f3,#a6,#e2,#48,#1a,#c0,#c0,#4f
	db #c0,#4c,#27,#00,#45,#8c,#e6,#f7
	db #dd,#ee,#ee,#d9,#8c,#e2,#48,#f3
	db #ff,#f3,#4f,#c0,#4f,#c0,#4c,#50
	db #51,#88,#dd,#ee,#ee,#d9,#8c,#a6
	db #48,#48,#52,#c0,#4d,#07,#d1,#81
	db #84,#2b,#c0,#c0,#4c,#50,#53,#c5
	db #54,#c0,#4c,#83,#48,#0c,#a6,#55
	db #c6,#47,#03,#40,#8a,#ca,#8a,#a2
	db #f3,#51,#51,#80,#08,#80,#84,#18
	db #c0,#c0,#4c,#50,#53,#c5,#54,#c0
	db #56,#02,#0c,#55,#c6,#06,#00,#03
	db #80,#57,#83,#a2,#a6,#a2,#47,#83
	db #08,#80,#84,#14,#c0,#c0,#4c,#50
	db #88,#88,#ae,#ee,#f7,#f7,#59,#59
	db #84,#4a,#83,#e2,#c8,#e2,#56,#82
	db #0c,#59,#55,#c6,#47,#4a,#04,#84
	db #8d,#04,#40,#80,#88,#ff,#ff,#f7
	db #55,#51,#08,#08,#84,#84,#0f,#c0
	db #c0,#4c,#28,#00,#8a,#08,#88,#ae
	db #ee,#f7,#f7,#59,#d1,#84,#84,#56
	db #84,#84,#d1,#59,#e6,#58,#c6,#47
	db #04,#c0,#02,#0c,#94,#a6,#e2,#c0
	db #0c,#59,#84,#c0,#40,#00,#c0,#c0
	db #55,#d5,#55,#55,#00,#08,#08,#84
	db #84,#0b,#c0,#c0,#4c,#40,#45,#c7
	db #09,#00,#85,#08,#88,#ae,#ae,#8c
	db #11,#d9,#81,#cc,#03,#dd,#88,#f7
	db #e6,#59,#0c,#04,#00,#00,#80,#52
	db #8e,#48,#0c,#0c,#c0,#c0,#0c,#a6
	db #fb,#59,#0c,#c0,#40,#00,#c0,#05
	db #ea,#02,#40,#c8,#54,#c0,#4c,#19
	db #00,#45,#51,#59,#03,#f7,#c7,#14
	db #00,#04,#80,#04,#c0,#8c,#84,#0c
	db #0c,#8c,#ae,#ff,#f7,#d1,#40,#00
	db #00,#80,#52,#85,#59,#5d,#d5,#d1
	db #48,#55,#85,#0c,#c0,#00,#00,#c0
	db #08,#ff,#02,#55,#c8,#52,#83,#48
	db #e2,#48,#4c,#15,#00,#45,#51,#59
	db #06,#fb,#03,#ff,#51,#c7,#16,#00
	db #02,#80,#81,#c0,#05,#0c,#96,#a6
	db #8c,#e6,#c4,#40,#00,#00,#80,#80
	db #d9,#ee,#ee,#d9,#84,#c0,#e2,#f3
	db #0c,#c0,#00,#00,#c0,#0a,#d5,#04
	db #55,#c8,#4e,#11,#00,#45,#51,#53
	db #03,#fb,#0d,#f3,#5a,#88,#ff,#f7
	db #f7,#e7,#e7,#59,#51,#04,#4b,#83
	db #80,#c0,#48,#06,#0c,#83,#8c,#d9
	db #44,#04,#00,#88,#80,#c0,#c0,#48
	db #48,#c0,#48,#80,#47,#81,#84,#10
	db #ea,#02,#40,#87,#00,#a2,#a2,#f3
	db #f3,#d1,#d1,#08,#c0,#0d,#00,#45
	db #51,#c9,#15,#f3,#5a,#53,#02,#df
	db #07,#e7,#05,#f7,#58,#88,#d1,#51
	db #40,#00,#00,#80,#c0,#48,#06,#0c
	db #84,#a6,#f3,#84,#40,#04,#00,#02
	db #80,#57,#02,#04,#84,#40,#80,#00
	db #f3,#13,#ff,#8d,#f7,#55,#51,#00
	db #a2,#a2,#f3,#d1,#d1,#c0,#c0,#80
	db #c0,#09,#00,#45,#51,#c9,#1d,#f3
	db #5a,#03,#ff,#03,#df,#59,#03,#fb
	db #83,#ff,#f7,#f7,#58,#87,#d1,#04
	db #40,#00,#80,#48,#48,#04,#0c,#85
	db #c0,#f3,#c0,#c0,#40,#47,#52,#87
	db #59,#00,#40,#00,#80,#80,#aa,#0f
	db #ea,#04,#aa,#03,#ea,#81,#a2,#47
	db #02,#a2,#84,#e6,#c4,#d1,#40,#47
	db #8a,#04,#51,#51,#f7,#f7,#ff,#ef
	db #ef,#db,#db,#0f,#f3,#06,#a2,#10
	db #f3,#5a,#53,#5a,#08,#f3,#5a,#8d
	db #f3,#f7,#f3,#f3,#59,#c0,#00,#00
	db #c0,#c0,#48,#0c,#0c,#09,#84,#8a
	db #c0,#0c,#a6,#40,#00,#80,#40,#40
	db #88,#ef,#17,#ff,#02,#aa,#57,#85
	db #44,#ff,#ff,#f3,#84,#19,#a2,#0a
	db #00,#23,#a2,#83,#80,#00,#00,#52
	db #0b,#0c,#81,#84,#03,#0c,#88,#a6
	db #84,#84,#c0,#c0,#00,#00,#8a,#13
	db #aa,#57,#89,#44,#55,#dd,#fb,#fb
	db #a6,#a6,#0c,#0c,#00,#4d,#15,#34
	db #00,#26,#00,#04,#00,#02,#14,#06
	db #00,#03,#00,#03,#3c,#05,#00,#02
	db #00,#03,#28,#3f,#00,#0f,#00,#04
	db #3c,#07,#00,#02,#28,#03,#14,#0a
	db #00,#02,#3c,#0d,#00,#2a,#00,#2f
	db #00,#04,#14,#3c,#3c,#28,#04,#28
	db #3c,#3c,#14,#40,#41,#09,#3c,#41
	db #42,#c0,#43,#44,#43,#c1,#43,#44
	db #45,#44,#45,#44,#46,#44,#45,#44
	db #45,#44,#46,#44,#45,#44,#45,#44
	db #46,#44,#45,#44,#45,#44,#46,#44
	db #45,#44,#45,#44,#46,#47,#45,#47
	db #45,#47,#48,#48,#48,#46,#41,#49
	db #41,#46,#4a,#41,#4b,#41,#4a,#40
	db #4c,#4a,#4d,#4a,#4c,#4e,#4c,#44
	db #4c,#0e,#00,#41,#44,#41,#4e,#41
	db #4a,#47,#4a,#41,#40,#4a,#4c,#4b
	db #4c,#4a,#46,#4c,#49,#4c,#48,#48
	db #48,#17,#00,#4f,#41,#0b,#00,#41
	db #4f,#40,#4c,#4f,#41,#43,#41,#4f
	db #4c,#4e,#4c,#44,#4c,#10,#00,#44
	db #0e,#00,#41,#4f,#47,#4f,#41,#42
	db #41,#4f,#4c,#4b,#4c,#4f,#41,#46
	db #4c,#49,#4c,#48,#48,#48,#45,#4d
	db #07,#3c,#4d,#45,#81,#14,#44,#4c
	db #4b,#4c,#44,#46,#c0,#50,#c1,#44
	db #49,#06,#3c,#49,#44,#81,#28,#44
	db #50,#86,#14,#3c,#3c,#28,#00,#28
	db #44,#41,#4b,#41,#44,#42,#47,#07
	db #3c,#47,#48,#48,#48,#08,#00,#05
	db #14,#08,#00,#4d,#46,#83,#14,#3c
	db #3c,#05,#28,#4f,#81,#14,#45,#44
	db #46,#44,#45,#44,#45,#44,#46,#44
	db #45,#44,#45,#44,#46,#44,#45,#44
	db #45,#44,#46,#44,#45,#44,#45,#44
	db #46,#44,#45,#44,#45,#44,#46,#47
	db #45,#83,#28,#3c,#3c,#05,#14,#4f
	db #81,#28,#50,#05,#28,#40,#00,#00
;
; #014f
; push af
; push bc
; push de
; push hl
; push ix
; push iy
; ld hl,#0179
; dec (hl)
; jr nz,l016e
; di
; ld (hl),#03
; call #0393
; call #099f
; ld hl,(#017a)
; dec hl
; ld (#017a),hl
; ei
; .l016e
; pop iy
; pop ix
; pop hl
; pop de
; pop bc
; pop af
; ei
; reti
;
.play_music		; added by Megachur
;
	call real_play_music
	jp real_play_music
;
.music_info
	db "Purple Saturn Day (1989)(Ere Informatique)(Stephane Picq)",0
	db "Music Pro",0

	read "music_end.asm"
