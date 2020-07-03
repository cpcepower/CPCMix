; Music of Prohibition 64ko (1990)(Infogrames)(Charles Callet)(Music Pro)
; Ripped by Megachur the 31/03/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PROHID64.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 31
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #290b

	read "music_header.asm"

;
.init_music
.l290b
;
	ld hl,l2def
	ld (hl),#00
	ld de,l2df0
	ld bc,#0128
	ldir
	ld a,(l2ff4)
	ld (l2f18),a
	ld bc,l2ff3
	ld hl,(l2ff5)
	add hl,bc
	ld (l2f1b),hl
	ld hl,(l2ff7)
	add hl,bc
	ld (l2f1d),hl
	ld hl,(l2ff9)
	add hl,bc
	ld (l2df4),hl
	ld hl,(l2ffb)
	add hl,bc
	ld (l2e2f),hl
	ld hl,(l2ffd)
	add hl,bc
	ld (l2e6a),hl
	ld hl,l2fff
	ld (l2f19),hl
	ld a,#0f
	ld (l2f20),a
	ld hl,l2de9
	ld de,l2def
	ld bc,#0005
	ldir
	ld hl,l2de9
	ld de,l2e2a
	ld bc,#0005
	ldir
	ld hl,l2de9
	ld de,l2e65
	ld bc,#0005
	ldir
	ld c,#38
	ld a,#07
	call l2d9a
	ret
	ei
;
.play_music
;
	ld a,(l2f20)
	ld e,a
	ld b,#03
	ld hl,l2e84
.l2982
	ld a,(hl)
	ld c,a
	ld a,(l2de8)
	or b
	sub #03
	ld a,#00
	jr c,l2993
	ld a,c
	cp e
	jr c,l2993
	ld a,e
.l2993
	ld c,a
	ld a,b
	add #07
	push de
	call l2d9a
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l2982
	ld hl,l2f18
	dec (hl)
	ld ix,l2def
	xor a
.l29ad
	ld (l2f1f),a
	ld a,(ix+#07)
	or a
	jp nz,l2c47
.l29b7
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l29c1
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jr nz,l2a26
	ld l,(ix+#01)
	ld h,(ix+#02)
.l29d2
	ld a,(hl)
	cp #ff
	jr nz,l2a07
	ld l,(ix+#05)		; reinit music
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l2f1f)
	cp #02
	jr nz,l29d2
	ld a,(l2de7)
	and a
	jr nz,l29d2
	push hl
	push bc
	ld hl,(l2ffd)
	ld bc,l2ff3
	add hl,bc
	ld a,(l2de6)
	ld (hl),a
	pop bc
	pop hl
	ld a,#21
	ld (l2de6),a
	jp l29d2
.l2a07
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l2f19)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l2ff3
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l29c1
.l2a26
	bit 7,a
	jr nz,l2a90
	ld hl,l2f27
	or a
	jr z,l2a33
	add (ix+#20)
.l2a33
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
	ld a,(l2f1f)
	inc a
	ld hl,l2e8c
	ld bc,#0014
.l2a65
	add hl,bc
	dec a
	jr nz,l2a65
	ldir
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l2f1f)
	inc a
	ld hl,l2ec8
	ld bc,#0014
.l2a7d
	add hl,bc
	dec a
	jr nz,l2a7d
	ldir
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l2c33
.l2a90
	bit 6,a
	jr nz,l2ad1
	bit 5,a
	jp z,l2abe
	push af
	xor a
	ld (l2f21),a
	pop af
.l2a9f
	and #1f
	ld b,a
	jr z,l2aae
	ld c,#18
	ld a,#07
	call l2d9a
	jp l2ab5
.l2aae
	ld c,#38
	ld a,#07
	call l2d9a
.l2ab5
	ld c,b
	ld a,#06
	call l2d9a
	jp l2c33
.l2abe
	and #1f
	ld hl,l2fe7
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l2c33
.l2ad1
	bit 5,a
	jr nz,l2b3e
	and #1f
	add a
	add a
	add a
	ld hl,(l2f1b)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l2aec
	ld a,(de)
	bit 7,a
	jr nz,l2afe
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l2b16
.l2afe
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
	jr nz,l2b10
	ld b,#01
.l2b10
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l2b16
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jr nz,l2aec
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l2e8c
	ld a,(l2f1f)
	inc a
.l2b34
	add hl,bc
	dec a
	jr nz,l2b34
	ex de,hl
	ldir
	jp l2c33
.l2b3e
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l2b55
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
.l2b55
	ld e,l
	dec hl
	or l
	dec hl
	or c
	dec hl
	ld h,l
	dec hl
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l2c33
	pop hl
	ld a,(hl)
	ld (l2f21),a
	and #3f
	ld (l2f23),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l2f24),a
	ld a,(l2f21)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l2f21),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l2f21
	or (hl)
	ld (l2f21),a
	ld (l2f22),a
	ld a,(l2f23)
	ld (l2f26),a
	ld hl,l2f24
	ld b,#ff
	cp (hl)
	jr nc,l2ba7
	ld b,#01
.l2ba7
	ld a,b
	ld (l2f25),a
	ld a,(l2f26)
	jp l2a9f
	ld a,#02
	jr l2bb7
	ld a,#01
.l2bb7
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jr z,l2c28
	add a
	add a
	add a
	ld hl,(l2f1d)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l2bd5
	ld a,(de)
	bit 7,a
	jr nz,l2be9
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
	jp l2c01
.l2be9
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
	jr nz,l2bfb
	ld b,#ff
.l2bfb
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l2c01
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jr nz,l2bd5
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l2ec8
	ld a,(l2f1f)
	inc a
.l2c1f
	add hl,bc
	dec a
	jr nz,l2c1f
	ex de,hl
	ldir
	jr l2c2d
.l2c28
	ld a,#00
	ld (ix+#09),a
.l2c2d
	ld a,(ix+#09)
	ld (ix+#3a),a
.l2c33
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l29b7
.l2c47
	ld a,(l2f18)
	or a
	jr nz,l2c50
	dec (ix+#07)
.l2c50
	ld a,(ix+#0a)
	cp #04
	jp z,l2c9a
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
	jr nz,l2c7d
	dec (hl)
	jr nz,l2c70
	inc (ix+#0a)
.l2c70
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l2c9a
.l2c7d
	dec (hl)
	jr nz,l2c92
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
	jp l2c94
.l2c92
	inc hl
	inc hl
.l2c94
	dec (hl)
	jr nz,l2c9a
	inc (ix+#0a)
.l2c9a
	ld a,(ix+#09)
	or a
	jp z,l2d37
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
	jr nz,l2cd8
	dec (hl)
	jr nz,l2cbc
	inc (ix+#21)
.l2cbc
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jr nz,l2cc8
	ld b,#00
.l2cc8
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l2d06
.l2cd8
	dec (hl)
	jr nz,l2cfe
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
	jr nz,l2cec
	ld b,#00
.l2cec
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l2d00
.l2cfe
	inc hl
	inc hl
.l2d00
	dec (hl)
	jr nz,l2d06
	inc (ix+#21)
.l2d06
	ld a,(ix+#21)
	cp #04
	jr nz,l2d37
	ld a,(ix+#09)
	cp #02
	jr nz,l2d1b
	ld a,#00
	ld (ix+#09),a
	jr l2d37
.l2d1b
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l2f1f)
	inc a
	ld hl,l2ec8
	ld bc,#0014
.l2d31
	add hl,bc
	dec a
	jr nz,l2d31
	ldir
.l2d37
	ld c,(ix+#36)
	ld a,(l2f1f)
	add a
	call l2d9a
	ld c,(ix+#37)
	inc a
	call l2d9a
	ld bc,#003b
	add ix,bc
	ld a,(l2f1f)
	inc a
	cp #03
	jp nz,l29ad
	ld a,(l2f21)
	or a
	jr z,l2d8d
	dec a
	ld (l2f21),a
	or a
	jr nz,l2d8d
	ld a,(l2f22)
	ld (l2f21),a
	ld a,(l2f26)
	ld hl,l2f25
	add (hl)
	ld (l2f26),a
	ld c,a
	ld hl,l2f23
	cp (hl)
	jr z,l2d80
	ld hl,l2f24
	cp (hl)
	jr nz,l2d88
.l2d80
	ld a,(l2f25)
	xor #fe
	ld (l2f25),a
.l2d88
	ld a,#06
	call l2d9a
.l2d8d
	ld a,(l2f18)
	or a
	jr nz,l2d99
	ld a,(l2ff4)
	ld (l2f18),a
.l2d99
	ret
.l2d9a
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
	ld hl,l2de9
	ld de,l2e65
	ld a,#ff
	ld (l2de5),a
	ld a,b
	ld (l2de6),a
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l2e6c),a
	ld (l2de5),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.l2de9 equ $ + 4
.l2de8 equ $ + 3
.l2de7 equ $ + 2
.l2de6 equ $ + 1
.l2de5
	db #00,#21,#ff,#ff,#00,#ee,#2d,#ee
.l2df4 equ $ + 7
.l2df0 equ $ + 3
.l2def equ $ + 2
	db #2d,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2e2a equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2e2f equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2e6c equ $ + 7
.l2e6a equ $ + 5
.l2e65
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2e84 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2e8c equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2ec8 equ $ + 3
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
.l2f1b equ $ + 6
.l2f19 equ $ + 4
.l2f18 equ $ + 3
	db #00,#00,#00,#fa,#00,#00,#00,#00
.l2f24 equ $ + 7
.l2f23 equ $ + 6
.l2f22 equ $ + 5
.l2f21 equ $ + 4
.l2f20 equ $ + 3
.l2f1f equ $ + 2
.l2f1d
	db #00,#00,#02,#0f,#00,#00,#00,#00
.l2f26 equ $ + 1
.l2f25
	db #00,#00
.l2f27
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
.l2fe7
	db #02,#03,#04,#06,#08,#0c,#10,#18
.l2ff5 equ $ + 6
.l2ff4 equ $ + 5
.l2ff3 equ $ + 4
	db #20,#30,#40,#60,#00,#01,#c9,#00
.l2ffd equ $ + 6
.l2ffb equ $ + 4
.l2ff9 equ $ + 2
.l2ff7
	db #c9,#01,#5e,#00,#81,#00,#9c,#00
.l2fff
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
	db #ff,#21,#ff,#01,#06,#ff,#0e,#00
	db #78,#e6,#88,#20,#02,#0e,#88,#78
	db #e6,#44,#20,#04,#79,#f6,#44,#4f
	db #78,#e6,#22,#20,#04,#79,#f6,#22
	db #4f,#78,#e6,#11,#20,#04,#79,#f6
	db #11,#4f,#71,#2b,#10,#d8,#36,#ff
;
.music_info
	db "Prohibition 64ko (1990)(Infogrames)(Charles Callet)",0
	db "Music Pro - Original Disk 64ko Version",0

	read "music_end.asm"
