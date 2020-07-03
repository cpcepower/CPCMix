; Music of Super Tetris Intro (1997)(Frequency)()(ST-Module)
; Ripped by Megachur the 08/04/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SUPERTEI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #7d22

	read "music_header.asm"


	jp l7d2d
	jp l7db5
	jp l7d99
	db #66,#04
;
.init_music
.l7d2d
;
	ld b,#03
	ld ix,l80fc
	ld iy,l8028
	ld de,#001c
.l7d3a
	push bc
	ld (ix+#06),#01
	ld (ix+#09),d
	ld (ix+#1b),d
	ld (ix+#05),#10
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#00),c
	ld (ix+#01),b
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l7d3a
	ld a,#08
	ld (l7ddd),a
	ld a,d
	ld (l7df1),a
	inc a
	ld (l7dd8),a
	ld a,#38
	ld (l7de2),a
	ld a,#ff
	ld (l8024),a
	ld (l8025),a
	ld (l8026),a
	ld (l8027),a
	ld a,#0c
	ld c,d
	call l8006
	ld a,#0d
	ld c,d
	jp l8006
;
.stop_music
.l7d99
;
	ld a,#07
	ld c,#3f
	call l8006
	ld a,#08
	ld c,#00
	call l8006
	ld a,#09
	ld c,#00
	call l8006
	ld a,#0a
	ld c,#00
	jp l8006
;
.play_music
.l7db5
;
	ld hl,l7dd8
	dec (hl)
	ld ix,l80fc
	ld bc,l810a
	call l7e6b
	ld ix,l8118
	ld bc,l8126
	call l7e6b
	ld ix,l8134
	ld bc,l8142
	call l7e6b
.l7dd8 equ $ + 1
	ld a,#00
	or a
	jr nz,l7de1
.l7ddd equ $ + 1
	ld a,#00
	ld (l7dd8),a
.l7de2 equ $ + 1
.l7de1
	ld a,#00
	ld hl,l8025
	cp (hl)
	jr z,l7df0
	ld (hl),a
	ld c,a
	ld a,#07
	call l8006
.l7df1 equ $ + 1
.l7df0
	ld a,#00
	ld hl,l8024
	cp (hl)
	jr z,l7dff
	ld (hl),a
	ld c,a
	ld a,#06
	call l8006
.l7dff
	ld a,#00
	ld hl,l8026
	cp (hl)
	jr z,l7e0e
	ld (hl),a
	ld c,a
	ld a,#0b
	call l8006
.l7e0f equ $ + 1
.l7e0e
	ld a,#00
	ld hl,l8027
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l8006
.l7e1c
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l7f1c
.l7e2b
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	xor a
	ld (ix+#17),a
	ld (ix+#15),a
	ld c,a
	ld a,(ix+#04)
	jp l8006
.l7e45
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l7e5a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l7e5a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l7e7e
.l7e6b
	ld a,(l7dd8)
	or a
	jp nz,l7f1c
	dec (ix+#06)
	jp nz,l7f1c
	ld l,(ix+#00)
	ld h,(ix+#01)
.l7e7e
	ld a,(hl)
	or a
	jr z,l7e1c
	cp #fe
	jr z,l7e2b
	cp #ff
	jr z,l7e45
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l802e
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l7eba
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l7eba
	and #7f
	ld (ix+#06),a
	jr l7f0d
.l7eba
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l7ece
	ld (ix+#05),a
	ld (ix+#0a),d
.l7ece
	add a
	add a
	add a
	ld e,a
	ld hl,l8164
	add hl,de
	ld d,b
	ld e,c
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop af
	pop hl
	and #f0
	jr z,l7f0d
	cp #f0
	jp z,l7fc2
	cp #d0
	jp z,l7fde
	cp #b0
	jp z,l7fe6
	cp #80
	jp nc,l7fee
	cp #10
	jr nz,l7f0d
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l7f0d
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l7f1c
	ld a,(ix+#17)
	or a
	jr nz,l7f30
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l7f30
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l7f5b
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l802e
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l7f5b
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,(ix+#18)
	ld h,(ix+#19)
	add hl,bc
	ld c,l
	ld a,(ix+#02)
	call l8006
	ld c,h
	ld a,(ix+#03)
	call l8006
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l7f99
	and #0f
	sub (ix+#0a)
	jr nc,l7f8f
	xor a
.l7f8f
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l8006
.l7f99
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld a,(hl)
	bit 7,a
	ret nz
	and #1f
	ld b,(ix+#0b)
	ld c,a
	or a
	ld a,b
	jr z,l7fb6
	ld b,a
	ld a,c
	ld (l7df1),a
	ld a,b
	sub #40
.l7fb6
	ld (l7fbd),a
	ld a,(l7de2)
.l7fbd equ $ + 1
	bit 0,a
	ld (l7de2),a
	ret
.l7fc2
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l81e4
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l7f0d
.l7fde
	inc hl
	ld a,(hl)
	ld (l7ddd),a
	jp l7f0d
.l7fe6
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l7f0d
.l7fee
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l7e0f),a
	inc hl
	ld a,(hl)
	db #32
	nop
	ld a,(hl)
	jp l7f0d
.l8006
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
.l8024
	rst #38
.l8025
	rst #38
.l8026
	rst #38
.l8027
	rst #38
.l8028
	dw l8524,l852d,l8536
.l802e
	dw #0eee,#0e18,#0d4d,#0c8e
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
	dw #000f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l80fc equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l810a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8118
	db #00,#00,#02,#03,#09,#00,#00,#00
.l8126 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8134 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l8142 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	db #53,#54,#2d,#4d,#6f,#64,#75,#6c
	db #65,#2e
.l8164
	dw l8204,l8244,l8264,#0000
	dw l8204,l8284,l8264,#0000
	dw l82a4,l82e4,l8264,#0000
	dw l8304,l8344,l8364,#0000
	dw l8384,l83c4,l83e4,#0000
	dw l8404,l82e4,l8264,#0000
	dw l8444,l82e4,l8264,#0000
	dw #9701,#ac55,#9701,#3157
	dw l8204,l8484,l84a4,#0000
	dw #9701,#7bfe,#7bfe,#0000
	dw #7bfe,#7bfe,#7bfe,#0000
	dw #7bfe,#7bfe,#7bfe,#0000
	dw #7bfe,#7bfe,#7bfe,#0000
	dw #7bfe,#7bfe,#7bfe,#0000
	dw #7bfe,#7bfe,#7bfe,#0000
	dw #7bfe,#7bfe,#7bfe,#0000
.l81e4
	dw l84c4,l84e4,l8504,#7bfe
	dw #7bfe,#7bfe,#7bfe,#7bfe
	dw #7bfe,#7bfe,#7bfe,#7bfe
	dw #7bfe,#7bfe,#7bfe,#7bfe
.l8204
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8244
	db #0f,#0f,#0e,#0e,#0d,#0b,#08,#05
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8264
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8284
	db #04,#08,#0b,#0d,#0e,#0e,#0f,#0f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l82a4
	db #0a,#00,#0a,#00,#0a,#00,#0a,#00
	db #0a,#00,#0a,#00,#0a,#00,#0a,#00
	db #0a,#00,#0a,#00,#0a,#00,#0a,#00
	db #0a,#00,#0a,#00,#0a,#00,#0a,#00
	db #0a,#00,#0a,#00,#0a,#00,#0a,#00
	db #0a,#00,#0a,#00,#0a,#00,#0a,#00
	db #0a,#00,#0a,#00,#0a,#00,#0a,#00
	db #0a,#00,#0a,#00,#0a,#00,#0a,#00
.l82e4
	db #0f,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
.l8304
	db #20,#00,#30,#00,#50,#00,#80,#00
	db #c0,#00,#10,#01,#70,#01,#00,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8344
	db #0f,#0f,#0e,#0d,#0b,#80,#80,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8364
	db #1f,#04,#04,#03,#02,#06,#02,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8384
	db #10,#00,#40,#00,#a0,#00,#30,#01
	db #f0,#01,#e0,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l83c4
	db #0f,#0f,#0e,#0d,#0b,#07,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l83e4
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8404
	db #ee,#ff,#ee,#ff,#ee,#ff,#ee,#ff
	db #ee,#ff,#ee,#ff,#ee,#ff,#ee,#ff
	db #ee,#ff,#ee,#ff,#ee,#ff,#ee,#ff
	db #ee,#ff,#ee,#ff,#ee,#ff,#ee,#ff
	db #ee,#ff,#ee,#ff,#ee,#ff,#ee,#ff
	db #ee,#ff,#ee,#ff,#ee,#ff,#ee,#ff
	db #ee,#ff,#ee,#ff,#ee,#ff,#ee,#ff
	db #ee,#ff,#ee,#ff,#ee,#ff,#ee,#ff
.l8444
	db #dd,#ff,#dd,#ff,#dd,#ff,#dd,#ff
	db #dd,#ff,#dd,#ff,#dd,#ff,#dd,#ff
	db #dd,#ff,#dd,#ff,#dd,#ff,#dd,#ff
	db #dd,#ff,#dd,#ff,#dd,#ff,#dd,#ff
	db #dd,#ff,#dd,#ff,#dd,#ff,#dd,#ff
	db #dd,#ff,#dd,#ff,#dd,#ff,#dd,#ff
	db #dd,#ff,#dd,#ff,#dd,#ff,#dd,#ff
	db #dd,#ff,#dd,#ff,#dd,#ff,#dd,#ff
.l8484
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
.l84a4
	db #01,#02,#01,#03,#02,#04,#03,#05
	db #04,#06,#05,#07,#06,#08,#07,#09
	db #08,#0a,#09,#0b,#0a,#0c,#0b,#0d
	db #0c,#0e,#0d,#0f,#0e,#10,#0f,#11
.l84c4
	db #00,#ff,#00,#fe,#00,#fd,#00,#fc
	db #00,#fb,#00,#fa,#00,#f9,#00,#f8
	db #00,#f7,#00,#f6,#00,#f5,#00,#f4
	db #00,#f3,#00,#f2,#00,#f1,#00,#f0
.l84e4
	db #ff,#00,#fe,#00,#fd,#00,#fc,#00
	db #fb,#00,#fa,#00,#f9,#00,#f8,#00
	db #f7,#00,#f6,#00,#f5,#00,#f4,#00
	db #f3,#00,#f2,#00,#f1,#00,#f0,#00
.l8504
	db #00,#f4,#00,#f3,#00,#f2,#00,#f1
	db #00,#f0,#00,#ef,#00,#ee,#00,#ed
	db #00,#ec,#00,#eb,#00,#ea,#00,#e9
	db #00,#e8,#00,#e7,#00,#e6,#00,#e5
.l8524
	db #00,#3f,#85,#00,#c0,#85,#80,#24
.l852d equ $ + 1
	db #85,#00,#c9,#85,#00,#f5,#85,#80
.l8536 equ $ + 2
	db #2d,#85,#00,#fe,#85,#00,#7f,#86
	db #80,#36,#85,#c1,#10,#bc,#01,#b5
	db #00,#bc,#01,#c1,#00,#c4,#01,#c3
	db #00,#bf,#01,#c1,#00,#bc,#01,#b5
	db #00,#bc,#01,#c1,#00,#c4,#01,#c3
	db #00,#bf,#01,#c1,#00,#bc,#01,#b5
	db #00,#bc,#01,#c1,#00,#c4,#01,#c3
	db #00,#bf,#01,#c1,#00,#bc,#01,#b5
	db #00,#bc,#01,#c1,#00,#c4,#01,#c3
	db #00,#bf,#01,#c1,#00,#bc,#01,#b5
	db #00,#bc,#01,#c1,#00,#c4,#01,#c3
	db #00,#bf,#01,#c1,#00,#bc,#01,#b5
	db #00,#bc,#01,#c1,#00,#c4,#01,#c3
	db #00,#bf,#01,#c1,#00,#bc,#01,#b5
	db #00,#bc,#01,#c1,#00,#c4,#01,#c3
	db #00,#bf,#01,#c1,#00,#bc,#01,#b5
	db #00,#a6,#04,#c1,#00,#a6,#04,#c3
	db #00,#bc,#03,#ff,#1d,#19,#a0,#14
	db #35,#27,#f8,#00,#ff,#6e,#0d,#82
	db #14,#ee,#00,#ee,#02,#ee,#00,#6e
	db #0d,#02,#ee,#00,#ee,#02,#ee,#00
	db #6e,#0d,#02,#ee,#00,#ee,#02,#ee
	db #00,#6e,#0a,#02,#a6,#14,#a6,#04
	db #bc,#03,#a6,#04,#a6,#04,#bc,#03
	db #ff,#34,#19,#a5,#14,#4a,#27,#f8
	db #02,#ff,#c1,#11,#bc,#00,#b5,#01
	db #bc,#00,#c1,#01,#c4,#00,#c3,#01
	db #bf,#00,#c1,#01,#bc,#00,#b5,#01
	db #bc,#00,#c1,#01,#c4,#00,#c3,#01
	db #bf,#00,#c1,#01,#bc,#00,#b5,#01
	db #bc,#00,#c1,#01,#c4,#00,#c3,#01
	db #bf,#00,#c1,#01,#bc,#00,#b5,#01
	db #bc,#00,#c1,#01,#c4,#00,#c3,#01
	db #bf,#00,#b5,#01,#b0,#00,#a9,#01
	db #b0,#00,#b5,#01,#b8,#00,#b7,#01
	db #b3,#00,#b5,#01,#b0,#00,#a9,#01
	db #b0,#00,#b5,#01,#b8,#00,#b7,#01
	db #b3,#00,#b5,#01,#b0,#00,#a9,#01
	db #b0,#00,#b5,#01,#b8,#00,#b7,#01
	db #b3,#00,#b5,#01,#b0,#00,#a6,#04
	db #b0,#00,#bc,#03,#b8,#00,#a6,#04
	db #b3,#00,#ff,#28,#19,#a6,#14,#35
	db #27,#f8,#01,#ff,#00
;
.music_info
	db "Super Tetris Intro (1997)(Frequency)()",0
	db "ST-Module",0

	read "music_end.asm"
