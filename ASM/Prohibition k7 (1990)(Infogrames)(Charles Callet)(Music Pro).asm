; Music of Prohibition k7 (1990)(Infogrames)(Charles Callet)(Music Pro)
; Ripped by Megachur the 24/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PROHIBIT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #2914

	read "music_header.asm"

;
.init_music
;
	ld hl,l2df8
	ld (hl),#00
	ld de,l2df9
	ld bc,#0128
	ldir
	ld a,(l2ffd)
	ld (l2f21),a
	ld bc,l2ffc
	ld hl,(l2ffe)
	add hl,bc
	ld (l2f24),hl
	ld hl,(l3000)
	add hl,bc
	ld (l2f26),hl
	ld hl,(l3002)
	add hl,bc
	ld (l2dfd),hl
	ld hl,(l3004)
	add hl,bc
	ld (l2e38),hl
	ld hl,(l3006)
	add hl,bc
	ld (l2e73),hl
	ld hl,l3008
	ld (l2f22),hl
	ld a,#0f
	ld (l2f29),a
	ld hl,l2df2
	ld de,l2df8
	ld bc,#0005
	ldir
	ld hl,l2df2
	ld de,l2e33
	ld bc,#0005
	ldir
	ld hl,l2df2
	ld de,l2e6e
	ld bc,#0005
	ldir
	ld c,#38
	ld a,#07
	call l2da3
	ret
	ei
;
.play_music
;
	ld a,(l2f29)
	ld e,a
	ld b,#03
	ld hl,l2e8d
.l298b
	ld a,(hl)
	ld c,a
	ld a,(l2df1)
	or b
	sub #03
	ld a,#00
	jr c,l299c
	ld a,c
	cp e
	jr c,l299c
	ld a,e
.l299c
	ld c,a
	ld a,b
	add #07
	push de
	call l2da3
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l298b
	ld hl,l2f21
	dec (hl)
	ld ix,l2df8
	xor a
.l29b6
	ld (l2f28),a
	ld a,(ix+#07)
	or a
	jp nz,l2c50
.l29c0
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l29ca
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jr nz,l2a2f
	ld l,(ix+#01)
	ld h,(ix+#02)
.l29db
	ld a,(hl)
	cp #ff
	jr nz,l2a10
	ld l,(ix+#05)		; reinit music
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l2f28)
	cp #02
	jr nz,l29db
	ld a,(l2df0)
	and a
	jr nz,l29db
	push hl
	push bc
	ld hl,(l3006)
	ld bc,l2ffc
	add hl,bc
	ld a,(l2def)
	ld (hl),a
	pop bc
	pop hl
	ld a,#21
	ld (l2def),a
	jp l29db
.l2a10
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l2f22)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l2ffc
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l29ca
.l2a2f
	bit 7,a
	jr nz,l2a99
	ld hl,l2f30
	or a
	jr z,l2a3c
	add (ix+#20)
.l2a3c
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
	ld a,(l2f28)
	inc a
	ld hl,l2e95
	ld bc,#0014
.l2a6e
	add hl,bc
	dec a
	jr nz,l2a6e
	ldir
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l2f28)
	inc a
	ld hl,l2ed1
	ld bc,#0014
.l2a86
	add hl,bc
	dec a
	jr nz,l2a86
	ldir
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l2c3c
.l2a99
	bit 6,a
	jr nz,l2ada
	bit 5,a
	jp z,l2ac7
	push af
	xor a
	ld (l2f2a),a
	pop af
.l2aa8
	and #1f
	ld b,a
	jr z,l2ab7
	ld c,#18
	ld a,#07
	call l2da3
	jp l2abe
.l2ab7
	ld c,#38
	ld a,#07
	call l2da3
.l2abe
	ld c,b
	ld a,#06
	call l2da3
	jp l2c3c
.l2ac7
	and #1f
	ld hl,l2ff0
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l2c3c
.l2ada
	bit 5,a
	jr nz,l2b47
	and #1f
	add a
	add a
	add a
	ld hl,(l2f24)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l2af5
	ld a,(de)
	bit 7,a
	jr nz,l2b07
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l2b1f
.l2b07
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
	jr nz,l2b19
	ld b,#01
.l2b19
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l2b1f
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jr nz,l2af5
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l2e95
	ld a,(l2f28)
	inc a
.l2b3d
	add hl,bc
	dec a
	jr nz,l2b3d
	ex de,hl
	ldir
	jp l2c3c
.l2b47
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l2b5e
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
.l2b5e
	ld h,(hl)
	dec hl
	cp (hl)
	dec hl
	cp d
	dec hl
	ld l,(hl)
	dec hl
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l2c3c
	pop hl
	ld a,(hl)
	ld (l2f2a),a
	and #3f
	ld (l2f2c),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l2f2d),a
	ld a,(l2f2a)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l2f2a),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l2f2a
	or (hl)
	ld (l2f2a),a
	ld (l2f2b),a
	ld a,(l2f2c)
	ld (l2f2f),a
	ld hl,l2f2d
	ld b,#ff
	cp (hl)
	jr nc,l2bb0
	ld b,#01
.l2bb0
	ld a,b
	ld (l2f2e),a
	ld a,(l2f2f)
	jp l2aa8
	ld a,#02
	jr l2bc0
	ld a,#01
.l2bc0
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jr z,l2c31
	add a
	add a
	add a
	ld hl,(l2f26)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l2bde
	ld a,(de)
	bit 7,a
	jr nz,l2bf2
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
	jp l2c0a
.l2bf2
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
	jr nz,l2c04
	ld b,#ff
.l2c04
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l2c0a
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jr nz,l2bde
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l2ed1
	ld a,(l2f28)
	inc a
.l2c28
	add hl,bc
	dec a
	jr nz,l2c28
	ex de,hl
	ldir
	jr l2c36
.l2c31
	ld a,#00
	ld (ix+#09),a
.l2c36
	ld a,(ix+#09)
	ld (ix+#3a),a
.l2c3c
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l29c0
.l2c50
	ld a,(l2f21)
	or a
	jr nz,l2c59
	dec (ix+#07)
.l2c59
	ld a,(ix+#0a)
	cp #04
	jp z,l2ca3
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
	jr nz,l2c86
	dec (hl)
	jr nz,l2c79
	inc (ix+#0a)
.l2c79
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l2ca3
.l2c86
	dec (hl)
	jr nz,l2c9b
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
	jp l2c9d
.l2c9b
	inc hl
	inc hl
.l2c9d
	dec (hl)
	jr nz,l2ca3
	inc (ix+#0a)
.l2ca3
	ld a,(ix+#09)
	or a
	jp z,l2d40
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
	jr nz,l2ce1
	dec (hl)
	jr nz,l2cc5
	inc (ix+#21)
.l2cc5
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jr nz,l2cd1
	ld b,#00
.l2cd1
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l2d0f
.l2ce1
	dec (hl)
	jr nz,l2d07
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
	jr nz,l2cf5
	ld b,#00
.l2cf5
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l2d09
.l2d07
	inc hl
	inc hl
.l2d09
	dec (hl)
	jr nz,l2d0f
	inc (ix+#21)
.l2d0f
	ld a,(ix+#21)
	cp #04
	jr nz,l2d40
	ld a,(ix+#09)
	cp #02
	jr nz,l2d24
	ld a,#00
	ld (ix+#09),a
	jr l2d40
.l2d24
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l2f28)
	inc a
	ld hl,l2ed1
	ld bc,#0014
.l2d3a
	add hl,bc
	dec a
	jr nz,l2d3a
	ldir
.l2d40
	ld c,(ix+#36)
	ld a,(l2f28)
	add a
	call l2da3
	ld c,(ix+#37)
	inc a
	call l2da3
	ld bc,#003b
	add ix,bc
	ld a,(l2f28)
	inc a
	cp #03
	jp nz,l29b6
	ld a,(l2f2a)
	or a
	jr z,l2d96
	dec a
	ld (l2f2a),a
	or a
	jr nz,l2d96
	ld a,(l2f2b)
	ld (l2f2a),a
	ld a,(l2f2f)
	ld hl,l2f2e
	add (hl)
	ld (l2f2f),a
	ld c,a
	ld hl,l2f2c
	cp (hl)
	jr z,l2d89
	ld hl,l2f2d
	cp (hl)
	jr nz,l2d91
.l2d89
	ld a,(l2f2e)
	xor #fe
	ld (l2f2e),a
.l2d91
	ld a,#06
	call l2da3
.l2d96
	ld a,(l2f21)
	or a
	jr nz,l2da2
	ld a,(l2ffd)
	ld (l2f21),a
.l2da2
	ret
.l2da3
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
	push hl
	push de
	push bc
	push af
	ld hl,l2df2
	ld de,l2e6e
	ld a,#ff
	ld (l2dee),a
	ld a,b
	ld (l2def),a
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l2e75),a
	ld (l2dee),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.l2df2 equ $ + 4
.l2df1 equ $ + 3
.l2df0 equ $ + 2
.l2def equ $ + 1
.l2dee
	db #ff,#21,#ff,#ff,#00,#f7,#2d,#f7
.l2dfd equ $ + 7
.l2df9 equ $ + 3
.l2df8 equ $ + 2
	db #2d,#ff,#ff,#5b,#30,#ca,#32,#5a
	db #30,#3b,#60,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #08,#00,#00,#00,#00,#0f,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00
.l2e33
	db #ff,#7e,#30,#70,#34
.l2e38
	db #7d,#30,#0b,#0c,#01,#01,#00,#00
	db #00,#00,#0f,#ff,#02,#02,#06,#ff
	db #00,#01,#00,#00,#fb,#00,#07,#00
	db #00,#ff,#0f,#00,#01,#00,#00,#00
	db #00,#00,#ff,#02,#02,#02,#ff,#ff
	db #02,#02,#04,#01,#ff,#02,#02,#02
	db #ff,#c0,#03,#c0,#03,#01
.l2e6e
	db #ff,#99,#30,#d8,#35
.l2e73
	db #98,#30
.l2e75
	db #05,#06,#00,#01,#00,#00,#00,#00
	db #0c,#00,#01,#00,#00,#00,#00,#01
	db #00,#00,#f4,#00,#01,#00
	db #00,#00
.l2e8d
	db #0c,#00,#00,#00,#00,#00,#00,#00
.l2e95
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#0f,#00,#00
	db #00,#00,#0f,#00,#00,#00,#00,#0f
	db #00,#00,#00,#00,#0f,#00,#00,#00
	db #00,#01,#00,#00,#0f,#ff,#02,#02
	db #06,#ff,#00,#01,#00,#00,#fb,#00
	db #07,#00,#00,#ff
.l2ed1
	db #00,#01,#00,#00,#0c,#00,#01,#00
	db #00,#00,#00,#01,#00,#00,#f4,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#00,#00,#ff,#02,#02
	db #02,#ff,#ff,#02,#02,#04,#01,#ff
	db #02,#02,#02,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l2f26 equ $ + 7
.l2f24 equ $ + 5
.l2f22 equ $ + 3
.l2f21 equ $ + 2
	db #00,#00,#00,#08,#30,#c5,#30,#c5
.l2f2e equ $ + 7
.l2f2d equ $ + 6
.l2f2c equ $ + 5
.l2f2b equ $ + 4
.l2f2a equ $ + 3
.l2f29 equ $ + 2
.l2f28 equ $ + 1
	db #31,#00,#0f,#00,#00,#00,#00,#00
.l2f2f
	db #00
.l2f30
	dw #0000,#0c9c,#0be7,#0b3c
	dw #0a9b,#0a02,#0973,#08eb
	dw #086b,#07f2,#0780,#0714
	dw #06ae,#064e,#05f4,#059e
	dw #054d,#0501,#0469,#0475
	dw #0435,#03f9,#03c0,#038a
	dw #0357,#0327,#02fa,#02cf
	dw #02a7,#0281,#025d,#023b
	dw #021b,#01fc,#01e0,#01c5
	dw #01ac,#0194,#017d,#0168
	dw #0153,#0140,#012e,#011d
	dw #010d,#00fe,#00f0,#00e2
	dw #00d6,#00ca,#00be,#00b4
	dw #00aa,#00a0,#0097,#008f
	dw #0087,#007f,#0078,#0071
	dw #006b,#0065,#005f,#005a
	dw #0055,#0050,#004c,#0047
	dw #0043,#0040,#003c,#0039
	dw #0035,#0032,#0030,#002d
	dw #002a,#0028,#0026,#0024
	dw #0022,#0020,#001e,#001c
	dw #001b,#0019,#0018,#0016
	dw #0015,#0014,#0013,#0012
	dw #0011,#0010,#000f,#000e
.l2ff0
	db #02,#03,#04,#06,#08,#0c,#10
.l2ffe equ $ + 7
.l2ffd equ $ + 6
.l2ffc equ $ + 5
	db #18,#20,#30,#40,#60,#00,#01,#c9
.l3006 equ $ + 7
.l3004 equ $ + 5
.l3002 equ $ + 3
.l3000 equ $ + 1
	db #00,#c9,#01,#5e,#00,#81,#00,#9c
	db #00
.l3008
	db #c9,#02,#cf,#02,#e8,#02,#ee,#02
	db #07,#03,#0d,#03,#26,#03,#2e,#03
	db #49,#03,#63,#03,#93,#03,#ac,#03
	db #dc,#03,#20,#04,#20,#04,#6c,#04
	db #81,#04,#96,#04,#ab,#04,#c0,#04
	db #e1,#04,#24,#05,#95,#05,#c7,#05
	db #f3,#05,#21,#06,#4d,#06,#9f,#06
	db #e3,#06,#47,#07,#fb,#07,#04,#08
	db #0f,#08,#1b,#08,#20,#08,#28,#08
	db #2f,#08,#39,#08,#40,#08,#66,#08
	db #8c,#08,#00,#00,#01,#02,#00,#03
	db #04,#00,#05,#06,#07,#08,#08,#09
	db #00,#0a,#0b,#06,#07,#08,#08,#09
	db #08,#0a,#0c,#0e,#0e,#08,#0b,#08
	db #06,#06,#00,#00,#ff,#0f,#0f,#0f
	db #10,#11,#12,#0f,#0f,#0f,#10,#11
	db #12,#13,#0f,#0f,#0f,#10,#11,#12
	db #14,#15,#15,#15,#0f,#0f,#0f,#ff
	db #17,#16,#17,#17,#18,#17,#17,#17
	db #19,#19,#17,#17,#19,#19,#17,#17
	db #18,#17,#17,#17,#19,#19,#17,#17
	db #1a,#1b,#1b,#18,#18,#17,#17,#19
	db #19,#17,#17,#1b,#1d,#1d,#1c,#1b
	db #18,#19,#18,#19,#ff,#0f,#00,#0f
	db #00,#0f,#00,#0f,#00,#01,#0f,#82
	db #86,#01,#fb,#07,#ff,#88,#65,#83
	db #a7,#01,#00,#01,#00,#01,#0d,#88
	db #ff,#01,#00,#01,#00,#01,#0b,#01
	db #00,#01,#00,#01,#00,#01,#0f,#03
	db #00,#03,#ff,#84,#b0,#01,#0f,#01
	db #00,#83,#ad,#01,#00,#02,#07,#02
	db #ff,#02,#00,#0c,#ff,#01,#0f,#82
	db #86,#04,#00,#83,#9b,#01,#0a,#82
	db #94,#01,#00,#0b,#00,#01,#0f,#01
	db #fb,#08,#00,#0a,#ff,#05,#03,#02
	db #00,#01,#0f,#09,#00,#01,#0c,#02
	db #00,#0c,#ff,#01,#00,#01,#0f,#04
	db #ff,#08,#00,#0b,#ff,#01,#0d,#82
	db #84,#02,#00,#0b,#ff,#01,#0f,#05
	db #00,#07,#fe,#01,#ff,#01,#0e,#01
	db #00,#01,#f2,#01,#00,#01,#0f,#02
	db #00,#0f,#ff,#01,#00,#01,#0f,#02
	db #00,#82,#9e,#01,#00,#01,#0a,#01
	db #00,#01,#f6,#01,#00,#01,#0c,#01
	db #00,#01,#f4,#01,#00,#01,#0e,#01
	db #00,#01,#f2,#01,#00,#01,#0c,#04
	db #00,#0b,#ff,#01,#00,#01,#0f,#01
	db #00,#05,#fd,#01,#00,#01,#0e,#03
	db #00,#04,#fd,#01,#00,#05,#03,#02
	db #00,#03,#ff,#0c,#ff,#01,#0e,#03
	db #00,#04,#fd,#01,#fe,#01,#0f,#03
	db #00,#08,#ff,#01,#00,#01,#0d,#03
	db #00,#08,#ff,#05,#00,#01,#0f,#09
	db #ff,#09,#01,#0f,#ff,#01,#0f,#02
	db #00,#0c,#ff,#0c,#01,#01,#0d,#0c
	db #ff,#0d,#01,#0e,#ff,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#82
	db #02,#82,#84,#82,#02,#01,#ff,#01
	db #08,#03,#01,#01,#01,#02,#03,#01
	db #05,#03,#09,#01,#05,#01,#00,#81
	db #0f,#81,#8f,#01,#00,#01,#fc,#01
	db #fa,#01,#f9,#01,#fd,#03,#00,#07
	db #01,#07,#ff,#01,#00,#01,#00,#01
	db #7f,#03,#d8,#01,#d1,#03,#04,#02
	db #ef,#03,#f8,#84,#df,#03,#00,#01
	db #01,#02,#ff,#01,#01,#08,#00,#01
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
	db #00,#01,#01,#01,#ff,#c0,#e1,#00
	db #8b,#00,#ff,#c0,#e1,#00,#85,#00
	db #c1,#22,#29,#22,#87,#28,#85,#22
	db #87,#27,#85,#22,#25,#22,#87,#27
	db #85,#25,#22,#ff,#c2,#e1,#03,#8b
	db #19,#ff,#c0,#e1,#01,#85,#00,#c1
	db #22,#29,#22,#87,#28,#85,#22,#87
	db #27,#85,#22,#25,#22,#87,#27,#85
	db #25,#24,#ff,#c2,#e1,#02,#8b,#26
	db #ff,#c0,#e1,#01,#85,#00,#c1,#25
	db #2e,#25,#87,#31,#85,#2e,#87,#30
	db #85,#2c,#2e,#2c,#87,#30,#85,#2c
	db #29,#ff,#c2,#e1,#04,#8b,#3d,#c3
	db #3d,#ff,#c0,#e1,#04,#85,#00,#c1
	db #e1,#01,#3a,#41,#3a,#87,#40,#85
	db #3a,#87,#3f,#85,#3a,#3d,#3a,#87
	db #3f,#85,#3d,#3a,#ff,#d3,#e1,#02
	db #83,#4e,#d4,#44,#d5,#39,#39,#d3
	db #4e,#d4,#44,#d5,#39,#39,#c1,#e1
	db #04,#85,#44,#3d,#39,#32,#ff,#c0
	db #e1,#01,#85,#00,#c1,#3a,#41,#3a
	db #87,#40,#85,#3a,#87,#3f,#85,#3a
	db #3d,#3a,#87,#3f,#85,#3d,#3c,#c4
	db #e1,#04,#83,#45,#50,#45,#50,#df
	db #22,#16,#22,#16,#c4,#39,#45,#39
	db #45,#df,#16,#22,#16,#22,#ff,#c0
	db #e1,#01,#85,#00,#c1,#3a,#3d,#3a
	db #87,#3f,#85,#3d,#87,#3c,#85,#38
	db #3c,#38,#87,#3d,#85,#3c,#3a,#ff
	db #cc,#e1,#06,#83,#39,#45,#39,#45
	db #2e,#2e,#c0,#00,#cc,#2c,#2c,#c0
	db #00,#cc,#2a,#2a,#c0,#00,#cc,#29
	db #30,#35,#cf,#e1,#02,#20,#22,#22
	db #16,#20,#22,#22,#16,#e1,#06,#22
	db #24,#24,#1d,#22,#24,#24,#1d,#ff
	db #d8,#e1,#01,#83,#3d,#d7,#3d,#d8
	db #3d,#d7,#3d,#d8,#3a,#d7,#3a,#d8
	db #3a,#d7,#3a,#d8,#3f,#d7,#3f,#d8
	db #3f,#d7,#3f,#d8,#3c,#d7,#3c,#d8
	db #3c,#d7,#3c,#d8,#41,#d7,#41,#d8
	db #41,#d7,#41,#d8,#3d,#d7,#3d,#d8
	db #3d,#d7,#3d,#d8,#42,#d7,#42,#d8
	db #42,#d7,#42,#d8,#41,#d7,#41,#d8
	db #41,#d7,#41,#ff,#c8,#e1,#09,#87
	db #41,#c4,#83,#30,#2e,#31,#2e,#c8
	db #85,#48,#46,#c4,#83,#33,#31,#35
	db #31,#c8,#87,#44,#c4,#83,#2c,#2a
	db #2e,#2a,#c8,#85,#42,#c4,#83,#30
	db #2e,#31,#2e,#c8,#85,#42,#41,#3f
	db #c4,#83,#29,#27,#2a,#27,#c8,#85
	db #42,#c4,#83,#2c,#2a,#2e,#2a,#c8
	db #85,#3f,#3d,#3c,#c4,#83,#25,#24
	db #c8,#85,#44,#42,#41,#49,#48,#ff
	db #c1,#e1,#01,#85,#16,#16,#18,#16
	db #19,#16,#1b,#19,#16,#16,#18,#16
	db #19,#16,#1b,#19,#ff,#c1,#e1,#01
	db #85,#16,#16,#18,#16,#19,#16,#1b
	db #19,#16,#16,#18,#16,#19,#16,#1b
	db #1d,#ff,#c1,#e1,#01,#85,#1d,#1d
	db #1f,#1d,#20,#1d,#22,#20,#1d,#1d
	db #1f,#1d,#20,#1d,#22,#20,#ff,#c1
	db #e1,#01,#85,#1e,#1e,#20,#1e,#22
	db #1e,#25,#1e,#20,#20,#22,#20,#24
	db #20,#27,#20,#ff,#c1,#e1,#01,#85
	db #16,#16,#18,#16,#19,#16,#1b,#19
	db #d7,#83,#20,#22,#22,#2e,#20,#22
	db #22,#2e,#e1,#06,#2e,#30,#30,#35
	db #2e,#30,#30,#35,#ff,#c1,#e1,#01
	db #85,#16,#c0,#83,#00,#dd,#16,#c1
	db #85,#18,#c0,#83,#00,#d7,#18,#c1
	db #85,#19,#c0,#83,#00,#d7,#19,#c1
	db #85,#1b,#c0,#83,#00,#d7,#1b,#c1
	db #85,#1d,#c0,#83,#00,#d7,#1d,#c1
	db #85,#1e,#c0,#83,#00,#d7,#1e,#c1
	db #85,#20,#c0,#83,#00,#d7,#20,#c1
	db #85,#21,#c0,#83,#00,#d7,#21,#ff
	db #c1,#e1,#01,#85,#16,#d7,#83,#16
	db #c1,#85,#16,#d7,#83,#16,#c1,#85
	db #16,#d7,#83,#16,#16,#c1,#85,#16
	db #d7,#83,#16,#16,#c1,#85,#16,#19
	db #d7,#83,#19,#c1,#85,#19,#d7,#83
	db #19,#c1,#85,#19,#d7,#83,#19,#19
	db #c1,#85,#19,#d7,#83,#19,#19,#c1
	db #85,#19,#1b,#d7,#83,#1b,#c1,#85
	db #1b,#d7,#83,#1b,#c1,#85,#1b,#d7
	db #83,#1b,#1b,#c1,#85,#1b,#d7,#83
	db #1b,#1b,#c1,#85,#1b,#18,#d7,#83
	db #18,#c1,#85,#18,#d7,#83,#18,#c1
	db #85,#18,#d7,#83,#1d,#1d,#c1,#85
	db #1d,#d7,#83,#1d,#1d,#c1,#85,#1d
	db #ff,#e3,#1f,#42,#dd,#e1,#00,#83
	db #00,#a1,#d3,#00,#d4,#00,#d5,#00
	db #a7,#c1,#85,#00,#a1,#d3,#83,#00
	db #d4,#00,#e3,#1f,#42,#dd,#00,#a1
	db #d5,#00,#d3,#00,#d4,#00,#a6,#c1
	db #00,#a8,#d4,#00,#aa,#d3,#00,#ad
	db #d5,#00,#ff,#bf,#df,#e1,#00,#83
	db #00,#a1,#d5,#00,#d3,#00,#d4,#00
	db #a5,#dd,#85,#00,#a1,#d4,#83,#00
	db #d5,#00,#be,#df,#00,#a1,#d5,#00
	db #d3,#00,#d4,#00,#a5,#c1,#00,#a1
	db #d5,#00,#d3,#00,#d4,#00,#ff,#e3
	db #01,#5f,#d3,#e1,#02,#83,#5a,#d4
	db #5a,#d5,#4e,#4e,#a5,#dd,#e1,#00
	db #00,#a1,#d5,#00,#d3,#00,#d4,#00
	db #be,#df,#00,#a1,#d5,#00,#d3,#00
	db #d4,#00,#a5,#dd,#85,#00,#a1,#d4
	db #83,#00,#d5,#00,#ff,#e3,#01,#5f
	db #d3,#e1,#02,#83,#4a,#d4,#4a,#d5
	db #3f,#3f,#dd,#e1,#03,#85,#29,#a1
	db #d5,#e1,#00,#83,#00,#d4,#00,#dd
	db #e1,#03,#31,#27,#df,#32,#27,#d3
	db #e1,#00,#00,#d4,#00,#00,#d5,#00
	db #ff,#e3,#01,#5f,#dd,#e1,#01,#83
	db #2e,#2e,#3a,#3a,#a1,#d3,#e1,#00
	db #00,#d4,#00,#d5,#00,#a7,#dd,#e1
	db #01,#3a,#36,#a1,#d3,#e1,#00,#00
	db #d5,#00,#ab,#dd,#e1,#01,#38,#a1
	db #d5,#e1,#00,#00,#e3,#01,#5f,#dd
	db #3d,#3c,#a1,#d3,#00,#d7,#e1,#05
	db #3a,#a2,#3c,#a3,#3c,#a4,#30,#a5
	db #3a,#a6,#3c,#a7,#3c,#a8,#30,#a1
	db #e1,#08,#38,#3a,#3a,#34,#38,#3a
	db #3a,#34,#ff,#a1,#d7,#e1,#08,#83
	db #3d,#a2,#3d,#a3,#3d,#a4,#3d,#a5
	db #3d,#a6,#3d,#a7,#3d,#a8,#3d,#a9
	db #3d,#aa,#3d,#ab,#3d,#ac,#3d,#ad
	db #3d,#ae,#3d,#af,#3d,#b0,#3d,#a1
	db #3d,#a3,#3d,#a5,#3d,#a7,#3d,#a9
	db #3d,#ab,#3d,#3d,#ad,#3d,#af,#3d
	db #b1,#3d,#b3,#3d,#b5,#3d,#b7,#3d
	db #b9,#3d,#bb,#3d,#bd,#3d,#ff,#e3
	db #01,#5f,#df,#e1,#09,#83,#2e,#dd
	db #2e,#df,#2e,#dd,#2e,#df,#30,#2e
	db #31,#2e,#2e,#dd,#2e,#df,#2e,#dd
	db #2e,#df,#30,#2e,#31,#2e,#2c,#dd
	db #2a,#df,#2a,#dd,#2a,#df,#2c,#2a
	db #2e,#2a,#2c,#2a,#2a,#2a,#2c,#2a
	db #2e,#2a,#29,#dd,#27,#df,#27,#dd
	db #27,#df,#29,#27,#2a,#27,#29,#dd
	db #27,#df,#27,#dd,#27,#df,#29,#27
	db #2a,#27,#25,#dd,#24,#df,#24,#dd
	db #24,#df,#25,#24,#2c,#2a,#2a,#dd
	db #29,#df,#29,#dd,#29,#df,#2a,#29
	db #30,#29,#ff,#b9,#df,#e1,#09,#83
	db #2e,#a1,#d5,#2e,#d3,#2e,#d4,#2e
	db #e3,#01,#5f,#dd,#30,#a1,#d3,#2e
	db #d5,#31,#d4,#2e,#b5,#dd,#2e,#a1
	db #d5,#2e,#d3,#2e,#d4,#2e,#e3,#01
	db #5f,#dd,#30,#a1,#d4,#2e,#d5,#31
	db #d3,#2e,#b4,#dd,#2c,#a1,#d5,#2a
	db #d3,#2a,#d4,#2a,#e3,#01,#5f,#dd
	db #2c,#a1,#d4,#2a,#d5,#2e,#d3,#2a
	db #b8,#dd,#2a,#a1,#d5,#2a,#d3,#2a
	db #d4,#2a,#e3,#01,#5f,#dd,#2c,#a1
	db #d4,#2a,#d5,#2e,#d3,#2a,#b4,#dd
	db #29,#a1,#d5,#27,#d3,#27,#d4,#27
	db #e3,#01,#5f,#dd,#29,#a1,#d4,#27
	db #d5,#2a,#d3,#27,#b5,#dd,#27,#a1
	db #d5,#27,#d3,#27,#d4,#27,#e3,#01
	db #5f,#dd,#29,#a1,#d5,#27,#d3,#2a
	db #d4,#27,#b3,#dd,#25,#a1,#d5,#24
	db #d3,#24,#d4,#24,#e3,#01,#5f,#dd
	db #25,#a1,#d4,#24,#d5,#2c,#d3,#2a
	db #b9,#dd,#2a,#a1,#d5,#29,#d3,#29
	db #d4,#29,#e3,#01,#5f,#dd,#2e,#a1
	db #d5,#2d,#d3,#31,#d4,#30,#ff,#e3
	db #01,#5f,#d2,#e1,#05,#88,#38,#ff
	db #e3,#db,#c3,#d2,#e1,#05,#83,#31
	db #88,#44,#ff,#e3,#db,#c3,#d1,#e1
	db #05,#82,#25,#d2,#88,#00,#ff,#80
	db #c0,#a0,#00,#ff,#a0,#d0,#e1,#00
	db #83,#49,#49,#ff,#a0,#d0,#e1,#00
	db #84,#49,#ff,#a0,#ca,#e1,#03,#82
	db #4a,#c0,#80,#00,#ff,#a0,#d0,#e1
	db #00,#80,#55,#ff,#a0,#c4,#e1,#08
	db #83,#50,#4e,#4d,#4b,#49,#48,#46
	db #44,#42,#41,#3f,#3d,#3c,#3a,#38
	db #36,#35,#33,#31,#30,#2e,#2c,#2a
	db #29,#27,#25,#24,#22,#20,#1e,#1d
	db #1b,#ff,#a0,#c4,#e1,#03,#83,#0d
	db #0f,#11,#12,#14,#16,#18,#19,#1b
	db #1d,#1e,#20,#22,#24,#25,#27,#29
	db #2a,#2c,#2e,#30,#31,#33,#35,#36
	db #38,#3a,#3c,#3d,#3f,#41,#42,#ff
	db #e3,#0f,#45,#d9,#e1,#0a,#87,#49
	db #ff
;
.music_info
	db "Prohibition k7 (1990)(Infogrames)(Charles Callet)",0
	db "Music Pro - Original Tape - 64ko Version",0

	read "music_end.asm"
