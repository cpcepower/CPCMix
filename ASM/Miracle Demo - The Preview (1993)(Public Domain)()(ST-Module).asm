; Music of Miracle Demo - The Preview (1993)(Public Domain)()(ST-Module)
; Ripped by Megachur the 24/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MIRACDTP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #06c9

	read "music_header.asm"

	jp l06d4
	jp l075c
	jp l0740
	db #66,#04
;
.init_music
.l06d4
;
	ld b,#03
	ld ix,l0aa3
	ld iy,l09cf
	ld de,#001c
.l06e1
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
	djnz l06e1
	ld a,#06
	ld (l0784),a
	ld a,d
	ld (l0798),a
	inc a
	ld (l077f),a
	ld a,#38
	ld (l0789),a
	ld a,#ff
	ld (l09cb),a
	ld (l09cc),a
	ld (l09cd),a
	ld (l09ce),a
	ld a,#0c
	ld c,d
	call l09ad
	ld a,#0d
	ld c,d
	jp l09ad
;
.stop_music
.l0740
;
	ld a,#07
	ld c,#3f
	call l09ad
	ld a,#08
	ld c,#00
	call l09ad
	ld a,#09
	ld c,#00
	call l09ad
	ld a,#0a
	ld c,#00
	jp l09ad
;
.play_music
.l075c
;
	ld hl,l077f
	dec (hl)
	ld ix,l0aa3
	ld bc,l0ab1
	call l0812
	ld ix,l0abf
	ld bc,l0acd
	call l0812
	ld ix,l0adb
	ld bc,l0ae9
	call l0812
.l077f equ $ + 1
	ld a,#00
	or a
	jr nz,l0788
.l0784 equ $ + 1
	ld a,#00
	ld (l077f),a
.l0789 equ $ + 1
.l0788
	ld a,#00
	ld hl,l09cc
	cp (hl)
	jr z,l0797
	ld (hl),a
	ld c,a
	ld a,#07
	call l09ad
.l0798 equ $ + 1
.l0797
	ld a,#00
	ld hl,l09cb
	cp (hl)
	jr z,l07a6
	ld (hl),a
	ld c,a
	ld a,#06
	call l09ad
.l07a7 equ $ + 1
.l07a6
	ld a,#00
	ld hl,l09cd
	cp (hl)
	jr z,l07b5
	ld (hl),a
	ld c,a
	ld a,#0b
	call l09ad
.l07b6 equ $ + 1
.l07b5
	ld a,#00
	ld hl,l09ce
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l09ad
.l07c3
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l08c3
.l07d2
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
	jp l09ad
.l07ec
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l0801
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l0801
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l0825
.l0812
	ld a,(l077f)
	or a
	jp nz,l08c3
	dec (ix+#06)
	jp nz,l08c3
	ld l,(ix+#00)
	ld h,(ix+#01)
.l0825
	ld a,(hl)
	or a
	jr z,l07c3
	cp #fe
	jr z,l07d2
	cp #ff
	jr z,l07ec
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l09d5
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l0861
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l0861
	and #7f
	ld (ix+#06),a
	jr l08b4
.l0861
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l0875
	ld (ix+#05),a
	ld (ix+#0a),d
.l0875
	add a
	add a
	add a
	ld e,a
	ld hl,l0b0b
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
	jr z,l08b4
	cp #f0
	jp z,l0969
	cp #d0
	jp z,l0985
	cp #b0
	jp z,l098d
	cp #80
	jp nc,l0995
	cp #10
	jr nz,l08b4
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l08b4
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l08c3
	ld a,(ix+#17)
	or a
	jr nz,l08d7
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l08d7
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l0902
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l09d5
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l0902
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
	call l09ad
	ld c,h
	ld a,(ix+#03)
	call l09ad
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l0940
	and #0f
	sub (ix+#0a)
	jr nc,l0936
	xor a
.l0936
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l09ad
.l0940
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
	jr z,l095d
	ld b,a
	ld a,c
	ld (l0798),a
	ld a,b
	sub #40
.l095d
	ld (l0964),a
	ld a,(l0789)
.l0964 equ $ + 1
	bit 0,a
	ld (l0789),a
	ret
.l0969
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l0b8b
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l08b4
.l0985
	inc hl
	ld a,(hl)
	ld (l0784),a
	jp l08b4
.l098d
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l08b4
.l0995
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l07b6),a
	inc hl
	ld a,(hl)
	ld (l07a7),a
	jp l08b4
.l09ad
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
.l09cb
	rst #38
.l09cc
	rst #38
.l09cd
	rst #38
.l09ce
	rst #38
.l09cf
	dw l0e2b,l0e34,l0e3d
.l09d5
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
.l0aa3 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l0ab1 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0abf
	db #00,#00,#02,#03,#09,#00,#00,#00
.l0acd equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0adb equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l0ae9 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l0b0b equ $ + 4
	db #75,#6c,#65,#2e,#ab,#0b,#eb,#0b
	db #0b,#0c,#00,#00,#2b,#0c,#6b,#0c
	db #8b,#0c,#00,#00,#a4,#05,#a5,#05
	db #a5,#05,#ff,#ff,#a4,#05,#a5,#05
	db #a5,#05,#ff,#ff,#ab,#0c,#eb,#0c
	db #0b,#0d,#00,#00,#a4,#05,#a5,#05
	db #a5,#05,#ff,#ff,#ab,#0b,#2b,#0d
	db #4b,#0d,#00,#00,#6b,#0d,#ab,#0d
	db #0b,#0c,#10,#10,#a4,#05,#a5,#05
	db #a5,#05,#ff,#ff,#a4,#05,#a5,#05
	db #81,#09,#dc,#03,#81,#09,#a5,#05
	db #81,#09,#dc,#03,#cb,#0d,#0b,#0e
	db #0b,#0c,#07,#18,#81,#09,#81,#09
	db #81,#09,#dc,#03,#81,#09,#81,#09
	db #81,#09,#dc,#03,#81,#09,#81,#09
	db #81,#09,#dc,#03,#81,#09,#81,#09
.l0b8b equ $ + 4
	db #a5,#05,#00,#00,#a5,#05,#a5,#05
	db #a5,#05,#a5,#05,#a5,#05,#a5,#05
	db #a5,#05,#a5,#05,#a5,#05,#a5,#05
	db #a5,#05,#a5,#05,#a5,#05,#a5,#05
	db #a5,#05,#a5,#05,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#80,#00,#00,#01
	db #80,#01,#00,#02,#80,#02,#00,#03
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#00,#00,#00,#05,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#0f,#0b,#07,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#00,#00,#00,#00
	db #00,#00,#02,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#03,#00,#03,#00,#04,#00
	db #04,#00,#05,#00,#05,#00,#06,#00
	db #07,#00,#08,#00,#09,#00,#0a,#00
	db #0b,#00,#0c,#00,#0d,#00,#0e,#00
	db #0f,#00,#10,#00,#0b,#0b,#0c,#0c
	db #0b,#0b,#0a,#0a,#0b,#0b,#0c,#0c
	db #0b,#0b,#0a,#0a,#0b,#0b,#0c,#0c
	db #0b,#0b,#0a,#0a,#0b,#0b,#0c,#0c
.l0e2b equ $ + 4
	db #0b,#0b,#0a,#0a,#00,#46,#0e,#00
.l0e34 equ $ + 5
	db #64,#0e,#80,#2b,#0e,#00,#82,#0e
.l0e3d equ $ + 6
	db #00,#26,#0f,#80,#34,#0e,#00,#b9
	db #0f,#00,#dd,#0f,#80,#3d,#0e,#39
	db #05,#b7,#00,#38,#02,#07,#36,#82
	db #38,#82,#39,#82,#3b,#82,#40,#86
	db #3f,#82,#3d,#82,#3f,#82,#40,#82
	db #44,#82,#47,#a1,#ff,#21,#05,#b7
	db #04,#20,#02,#07,#1e,#82,#20,#82
	db #21,#82,#23,#82,#28,#86,#27,#82
	db #25,#82,#27,#82,#28,#82,#2c,#82
	db #2f,#a1,#ff,#ba,#b1,#05,#e0,#b6
	db #05,#e0,#06,#e0,#06,#ba,#b4,#05
	db #e0,#b6,#05,#e0,#b6,#05,#ba,#b1
	db #05,#e0,#b6,#05,#ba,#b1,#05,#ba
	db #01,#e0,#b6,#05,#ba,#b4,#05,#e0
	db #b6,#05,#e0,#06,#e0,#06,#ba,#b1
	db #05,#e0,#b6,#05,#e0,#06,#e0,#06
	db #ba,#b4,#05,#e0,#b6,#05,#ba,#b1
	db #05,#ba,#b1,#05,#ba,#01,#e0,#b6
	db #05,#e0,#06,#e0,#06,#ba,#b4,#05
	db #ba,#04,#e0,#b6,#05,#ba,#b4,#05
	db #ba,#b1,#05,#de,#b6,#05,#de,#06
	db #de,#06,#ba,#b4,#05,#de,#b6,#05
	db #de,#b6,#04,#ba,#b1,#04,#de,#b6
	db #03,#ba,#b1,#03,#ba,#01,#de,#b6
	db #02,#ba,#b4,#02,#de,#b6,#01,#de
	db #06,#de,#06,#ba,#b1,#00,#d9,#b6
	db #00,#d9,#06,#d9,#06,#ba,#b4,#00
	db #d9,#06,#ba,#01,#ba,#01,#ba,#01
	db #d9,#06,#d9,#06,#d9,#06,#ba,#04
	db #ba,#04,#ba,#04,#ba,#04,#ff,#ba
	db #11,#e0,#06,#e0,#06,#e0,#06,#ba
	db #04,#e0,#06,#e0,#06,#ba,#01,#e0
	db #06,#ba,#01,#ba,#01,#e0,#06,#ba
	db #04,#e0,#06,#e0,#06,#e0,#06,#ba
	db #01,#e0,#06,#e0,#06,#e0,#06,#ba
	db #04,#e0,#06,#ba,#01,#ba,#01,#ba
	db #01,#e0,#06,#e0,#06,#e0,#06,#ba
	db #04,#ba,#04,#e0,#06,#ba,#04,#ba
	db #b1,#01,#de,#b6,#01,#de,#06,#de
	db #06,#ba,#b4,#01,#de,#b6,#02,#de
	db #06,#ba,#b1,#02,#de,#b6,#02,#ba
	db #b1,#02,#ba,#01,#de,#b6,#03,#ba
	db #b4,#03,#de,#b6,#03,#de,#06,#de
	db #06,#ba,#b1,#03,#d9,#b6,#03,#d9
	db #06,#d9,#06,#ba,#b4,#04,#d9,#b6
	db #04,#ba,#b1,#04,#ba,#01,#ba,#01
	db #d9,#b6,#04,#d9,#06,#d9,#06,#ba
	db #b4,#04,#ba,#b4,#05,#ba,#04,#ba
	db #04,#ff,#39,#05,#bb,#06,#38,#02
	db #0b,#36,#82,#38,#82,#39,#82,#3b
	db #82,#40,#86,#3f,#82,#3d,#82,#3f
	db #82,#40,#82,#44,#02,#bb,#05,#47
	db #04,#bb,#04,#fe,#1d,#ff,#51,#05
	db #bb,#05,#50,#02,#0b,#4e,#82,#50
	db #82,#51,#82,#53,#82,#58,#86,#57
	db #82,#55,#82,#57,#82,#58,#82,#5c
	db #82,#5f,#84,#fe,#05,#fe,#18,#ff
;
.music_info
	db "Miracle Demo - The Preview (1993)(Public Domain)()",0
	db "ST-Module",0

	read "music_end.asm"
