; Music of Electric Monk Intro 2 Song 2 (1992)(TGS)(The Electric Monk)(ST-Module)
; Ripped by Megachur the 29/08/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ELEMI2S2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #471e

	read "music_header.asm"

	jp l4729
	jp l47b1
	jp l4795
	ld h,(hl)
	inc b
;
.init_music
.l4729
;
	ld b,#03
	ld ix,l4af8
	ld iy,l4a24
	ld de,#001c
.l4736
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
	djnz l4736
	ld a,#05
	ld (l47d9),a
	ld a,d
	ld (l47ed),a
	inc a
	ld (l47d4),a
	ld a,#38
	ld (l47de),a
	ld a,#ff
	ld (l4a20),a
	ld (l4a21),a
	ld (l4a22),a
	ld (l4a23),a
	ld a,#0c
	ld c,d
	call l4a02
	ld a,#0d
	ld c,d
	jp l4a02
;
.stop_music
.l4795
;
	ld a,#07
	ld c,#3f
	call l4a02
	ld a,#08
	ld c,#00
	call l4a02
	ld a,#09
	ld c,#00
	call l4a02
	ld a,#0a
	ld c,#00
	jp l4a02
;
.play_music
.l47b1
;
	ld hl,l47d4
	dec (hl)
	ld ix,l4af8
	ld bc,l4b06
	call l4867
	ld ix,l4b14
	ld bc,l4b22
	call l4867
	ld ix,l4b30
	ld bc,l4b3e
	call l4867
.l47d4 equ $ + 1
	ld a,#00
	or a
	jr nz,l47dd
.l47d9 equ $ + 1
	ld a,#00
	ld (l47d4),a
.l47de equ $ + 1
.l47dd
	ld a,#00
	ld hl,l4a21
	cp (hl)
	jr z,l47ec
	ld (hl),a
	ld c,a
	ld a,#07
	call l4a02
.l47ed equ $ + 1
.l47ec
	ld a,#00
	ld hl,l4a20
	cp (hl)
	jr z,l47fb
	ld (hl),a
	ld c,a
	ld a,#06
	call l4a02
.l47fc equ $ + 1
.l47fb
	ld a,#00
	ld hl,l4a22
	cp (hl)
	jr z,l480a
	ld (hl),a
	ld c,a
	ld a,#0b
	call l4a02
.l480b equ $ + 1
.l480a
	ld a,#00
	ld hl,l4a23
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l4a02
.l4818
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l4918
.l4827
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
	jp l4a02
.l4841
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l4856
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l4856
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l487a
.l4867
	ld a,(l47d4)
	or a
	jp nz,l4918
	dec (ix+#06)
	jp nz,l4918
	ld l,(ix+#00)
	ld h,(ix+#01)
.l487a
	ld a,(hl)
	or a
	jr z,l4818
	cp #fe
	jr z,l4827
	cp #ff
	jr z,l4841
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l4a2a
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l48b6
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l48b6
	and #7f
	ld (ix+#06),a
	jr l4909
.l48b6
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l48ca
	ld (ix+#05),a
	ld (ix+#0a),d
.l48ca
	add a
	add a
	add a
	ld e,a
	ld hl,l4b60
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
	jr z,l4909
	cp #f0
	jp z,l49be
	cp #d0
	jp z,l49da
	cp #b0
	jp z,l49e2
	cp #80
	jp nc,l49ea
	cp #10
	jr nz,l4909
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l4909
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l4918
	ld a,(ix+#17)
	or a
	jr nz,l492c
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l492c
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l4957
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l4a2a
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l4957
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
	call l4a02
	ld c,h
	ld a,(ix+#03)
	call l4a02
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4995
	and #0f
	sub (ix+#0a)
	jr nc,l498b
	xor a
.l498b
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l4a02
.l4995
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
	jr z,l49b2
	ld b,a
	ld a,c
	ld (l47ed),a
	ld a,b
	sub #40
.l49b2
	ld (l49b9),a
	ld a,(l47de)
.l49b9 equ $ + 1
	bit 0,a
	ld (l47de),a
	ret
.l49be
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l4be0
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l4909
.l49da
	inc hl
	ld a,(hl)
	ld (l47d9),a
	jp l4909
.l49e2
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l4909
.l49ea
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l480b),a
	inc hl
	ld a,(hl)
	ld (l47fc),a
	jp l4909
.l4a02
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
.l4a23 equ $ + 3
.l4a22 equ $ + 2
.l4a21 equ $ + 1
.l4a20
	db #ff,#ff,#ff,#ff
.l4a24
	dw l4ca0,l4ceb,l4d36
.l4a2a
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
.l4af8 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l4b06 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4b14
	db #00,#00,#02,#03,#09,#00,#00,#00
.l4b22 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4b30 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l4b3e equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l4b60 equ $ + 4
	db #75,#6c,#65,#2e,#00,#4c,#40,#4c
	db #60,#4c,#07,#00,#00,#4c,#80,#4c
	db #60,#4c,#00,#00,#fa,#45,#fa,#45
	db #fa,#45,#00,#00,#fa,#45,#fa,#45
	db #fa,#45,#00,#00,#fa,#45,#fa,#45
	db #fa,#45,#00,#00,#fa,#45,#fa,#45
	db #fa,#45,#00,#00,#fa,#45,#fa,#45
	db #fa,#45,#00,#00,#fa,#45,#fa,#45
	db #fa,#45,#00,#00,#fa,#45,#fa,#45
	db #fa,#45,#00,#00,#fa,#45,#fa,#45
	db #d6,#84,#dc,#3e,#d6,#84,#fa,#45
	db #d6,#84,#dc,#3e,#d6,#84,#fa,#45
	db #d6,#84,#dc,#3e,#d6,#84,#d6,#84
	db #d6,#84,#dc,#3e,#d6,#84,#d6,#84
	db #d6,#84,#dc,#3e,#d6,#84,#d6,#84
	db #d6,#84,#dc,#3e,#d6,#84,#d6,#84
.l4be0 equ $ + 4
	db #f9,#45,#00,#00,#fa,#45,#fa,#45
	db #fb,#45,#fa,#45,#fa,#45,#fa,#45
	db #f9,#45,#fa,#45,#fa,#45,#fa,#45
	db #fb,#45,#fa,#45,#fa,#45,#fa,#45
	db #f9,#45,#fa,#45,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0d
	db #0c,#0c,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#0a,#08
	db #06,#04,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#09,#09,#09
	db #09,#09,#08,#08,#08,#08,#08,#07
.l4ca0 equ $ + 4
	db #06,#04,#02,#00,#00,#81,#4d,#00
	db #8b,#4d,#00,#97,#4d,#00,#aa,#4d
	db #00,#bc,#4d,#00,#ce,#4d,#00,#97
	db #4d,#00,#aa,#4d,#00,#bc,#4d,#00
	db #ce,#4d,#00,#e2,#4d,#00,#04,#4e
	db #00,#e2,#4d,#00,#52,#4e,#01,#81
	db #4d,#01,#8b,#4d,#01,#97,#4d,#01
	db #aa,#4d,#01,#bc,#4d,#01,#ce,#4d
	db #01,#e2,#4d,#01,#04,#4e,#01,#e2
.l4ceb equ $ + 7
	db #4d,#01,#52,#4e,#80,#a0,#4c,#00
	db #66,#4e,#00,#a7,#4e,#00,#e8,#4e
	db #00,#14,#4f,#00,#3f,#4f,#00,#6b
	db #4f,#00,#e8,#4e,#00,#14,#4f,#00
	db #3f,#4f,#00,#6b,#4f,#00,#9e,#4f
	db #00,#c0,#4f,#00,#9e,#4f,#00,#0e
	db #50,#01,#66,#4e,#01,#a7,#4e,#01
	db #e8,#4e,#01,#14,#4f,#01,#3f,#4f
	db #01,#6b,#4f,#01,#9e,#4f,#01,#c0
	db #4f,#01,#9e,#4f,#01,#0e,#50,#80
.l4d36 equ $ + 2
	db #eb,#4c,#00,#39,#50,#00,#3c,#50
	db #00,#3f,#50,#00,#5b,#50,#00,#79
	db #50,#00,#39,#50,#00,#3f,#50,#00
	db #5b,#50,#00,#79,#50,#00,#39,#50
	db #00,#97,#50,#00,#b9,#50,#00,#97
	db #50,#00,#07,#51,#01,#39,#50,#01
	db #3c,#50,#01,#3f,#50,#01,#5b,#50
	db #01,#79,#50,#01,#39,#50,#01,#97
	db #50,#01,#b9,#50,#01,#97,#50,#01
	db #07,#51,#80,#36,#4d,#3a,#08,#00
	db #38,#88,#37,#88,#33,#88,#ff,#2e
	db #08,#00,#2c,#88,#2b,#08,#01,#27
	db #08,#00,#ff,#2e,#04,#01,#29,#04
	db #00,#2e,#84,#29,#84,#44,#84,#2c
	db #84,#27,#84,#27,#84,#ff,#2e,#04
	db #01,#29,#84,#2e,#84,#29,#84,#2c
	db #84,#2c,#84,#29,#84,#29,#84,#ff
	db #2e,#04,#00,#29,#84,#2e,#84,#29
	db #84,#2c,#84,#2c,#84,#27,#84,#27
	db #84,#ff,#27,#04,#00,#28,#84,#29
	db #84,#2b,#84,#24,#84,#29,#84,#22
	db #82,#29,#82,#22,#84,#ff,#29,#02
	db #00,#2b,#82,#2c,#82,#2d,#82,#2e
	db #82,#2c,#82,#29,#82,#26,#82,#2e
	db #82,#30,#82,#31,#82,#32,#82,#33
	db #82,#32,#82,#33,#82,#32,#82,#ff
	db #29,#02,#00,#2b,#82,#2c,#82,#2d
	db #82,#2e,#82,#2c,#82,#29,#82,#26
	db #82,#26,#84,#24,#82,#22,#84,#2e
	db #84,#fe,#02,#ff,#29,#02,#00,#2b
	db #82,#2c,#82,#2d,#82,#2e,#82,#2c
	db #82,#29,#82,#26,#82,#ae,#00,#fe
	db #01,#b0,#00,#fe,#01,#b1,#00,#fe
	db #01,#b2,#00,#fe,#01,#b3,#00,#fe
	db #01,#b2,#00,#fe,#01,#b3,#00,#fe
	db #01,#b2,#00,#fe,#01,#ff,#33,#04
	db #00,#34,#84,#35,#84,#37,#84,#30
	db #84,#35,#84,#2e,#82,#35,#82,#2e
	db #84,#ff,#c6,#00,#ba,#00,#c1,#00
	db #c6,#00,#ba,#00,#c1,#00,#c6,#00
	db #ba,#00,#c1,#00,#c6,#00,#ba,#00
	db #c1,#00,#c6,#00,#ba,#00,#c1,#00
	db #c6,#00,#ba,#00,#bf,#00,#c6,#00
	db #ba,#00,#bf,#00,#c6,#00,#ba,#00
	db #bf,#00,#c6,#00,#ba,#00,#bf,#00
	db #c6,#00,#ba,#00,#bf,#00,#c6,#00
	db #ba,#00,#ff,#c6,#00,#ba,#00,#c1
	db #00,#c6,#00,#ba,#00,#c1,#00,#c6
	db #00,#ba,#00,#c1,#00,#c6,#00,#ba
	db #00,#c1,#00,#c6,#00,#ba,#00,#c1
	db #00,#c6,#00,#ba,#01,#bf,#00,#c6
	db #00,#ba,#00,#bf,#00,#c6,#00,#ba
	db #00,#bf,#00,#c6,#00,#ba,#00,#bf
	db #00,#c6,#00,#ba,#00,#bf,#00,#c6
	db #00,#ba,#00,#ff,#00,#01,#ba,#00
	db #bc,#00,#ba,#00,#bc,#00,#3e,#82
	db #ba,#00,#bc,#00,#ba,#00,#bc,#00
	db #3e,#84,#bb,#00,#3c,#82,#44,#82
	db #44,#82,#44,#82,#c3,#01,#c1,#01
	db #3f,#82,#3f,#03,#00,#bc,#00,#ff
	db #be,#01,#ba,#01,#bc,#01,#ba,#01
	db #bc,#01,#3e,#82,#ba,#01,#bc,#01
	db #ba,#01,#bc,#01,#3e,#84,#bb,#01
	db #3c,#82,#3c,#82,#3c,#82,#3c,#82
	db #b9,#01,#b7,#01,#35,#82,#35,#83
	db #bc,#01,#ff,#be,#00,#ba,#00,#bc
	db #00,#ba,#00,#bc,#00,#3e,#82,#ba
	db #00,#bc,#00,#ba,#00,#bc,#00,#3e
	db #04,#01,#bb,#00,#3c,#82,#44,#82
	db #44,#82,#44,#82,#c3,#00,#c1,#00
	db #3f,#82,#3f,#83,#c3,#00,#ff,#00
	db #01,#c2,#00,#c3,#00,#c5,#00,#c8
	db #00,#c6,#00,#c5,#00,#c3,#00,#c1
	db #00,#c0,#00,#c1,#00,#c2,#00,#c3
	db #00,#c1,#00,#bf,#00,#be,#00,#bc
	db #00,#bb,#00,#bc,#00,#be,#00,#c1
	db #00,#bf,#00,#be,#00,#bc,#00,#3a
	db #88,#ff,#35,#02,#00,#37,#82,#38
	db #82,#39,#82,#3a,#82,#38,#82,#35
	db #82,#32,#82,#3e,#82,#3f,#82,#40
	db #82,#41,#82,#43,#82,#41,#82,#43
	db #82,#41,#82,#ff,#35,#02,#00,#37
	db #82,#38,#82,#39,#82,#3a,#82,#38
	db #82,#35,#82,#32,#82,#35,#84,#3a
	db #82,#3a,#84,#3a,#84,#fe,#02,#ff
	db #35,#02,#00,#37,#82,#38,#82,#39
	db #82,#3a,#82,#38,#82,#35,#82,#32
	db #82,#be,#00,#fe,#01,#bf,#00,#fe
	db #01,#c0,#00,#fe,#01,#c1,#00,#fe
	db #01,#c3,#00,#fe,#01,#c1,#00,#fe
	db #01,#c3,#00,#fe,#01,#c1,#00,#fe
	db #01,#ff,#fe,#01,#cf,#00,#c6,#00
	db #c3,#00,#cf,#00,#cc,#00,#c6,#00
	db #c3,#00,#cd,#00,#c6,#00,#c1,#00
	db #4f,#82,#4f,#83,#ca,#00,#c6,#00
	db #ca,#00,#c6,#00,#ca,#00,#c6,#00
	db #48,#82,#46,#88,#ff,#00,#20,#ff
	db #00,#20,#ff,#00,#02,#41,#02,#00
	db #c1,#00,#41,#83,#41,#82,#c1,#00
	db #41,#85,#3f,#82,#48,#82,#48,#82
	db #48,#82,#46,#84,#46,#84,#ff,#41
	db #02,#01,#41,#82,#c1,#01,#41,#83
	db #41,#82,#41,#82,#c1,#01,#41,#83
	db #3f,#82,#3f,#82,#3f,#82,#3f,#82
	db #3c,#84,#3c,#84,#ff,#41,#02,#00
	db #41,#82,#c1,#00,#41,#83,#41,#82
	db #41,#82,#c1,#00,#41,#83,#3f,#82
	db #48,#82,#48,#82,#48,#82,#46,#84
	db #46,#84,#ff,#45,#02,#00,#46,#82
	db #47,#82,#48,#82,#4a,#82,#48,#82
	db #45,#82,#41,#82,#4a,#82,#4b,#82
	db #4c,#82,#4d,#82,#4f,#82,#4d,#82
	db #4f,#82,#4d,#82,#ff,#45,#02,#00
	db #46,#82,#47,#82,#48,#82,#4a,#82
	db #48,#82,#45,#82,#41,#82,#3e,#84
	db #3f,#82,#3e,#84,#46,#84,#fe,#02
	db #ff,#45,#02,#00,#46,#82,#47,#82
	db #48,#82,#4a,#82,#48,#82,#45,#82
	db #41,#82,#ca,#00,#fe,#01,#cb,#00
	db #fe,#01,#cc,#00,#fe,#01,#cd,#00
	db #fe,#01,#cf,#00,#fe,#01,#cd,#00
	db #fe,#01,#cf,#00,#fe,#01,#cd,#00
	db #fe,#01,#ff,#fe,#0b,#47,#02,#00
	db #47,#83,#40,#84,#3f,#84,#3e,#88
	db #ff,#00
;
.music_info
	db "Electric Monk Intro 2 Song 2 (1992)(TGS)(The Electric Monk)",0
	db "ST-Module",0

	read "music_end.asm"
