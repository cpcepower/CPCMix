; Music of Orgasmic Park (1994)(OdieSoft)(Kangaroo)(ST-Module)
; Ripped by Megachur the 24/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ORGASMIP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6800

	read "music_header.asm"

	jp l680b
	jp l6893
	jp l6877
	db #66,#04
;
.init_music
.l680b
;
	ld b,#03
	ld ix,l6bda
	ld iy,l6b06
	ld de,#001c
.l6818
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
	djnz l6818
	ld a,#07
	ld (l68bb),a
	ld a,d
	ld (l68cf),a
	inc a
	ld (l68b6),a
	ld a,#38
	ld (l68c0),a
	ld a,#ff
	ld (l6b02),a
	ld (l6b03),a
	ld (l6b04),a
	ld (l6b05),a
	ld a,#0c
	ld c,d
	call l6ae4
	ld a,#0d
	ld c,d
	jp l6ae4
;
.stop_music
.l6877
;
	ld a,#07
	ld c,#3f
	call l6ae4
	ld a,#08
	ld c,#00
	call l6ae4
	ld a,#09
	ld c,#00
	call l6ae4
	ld a,#0a
	ld c,#00
	jp l6ae4
;
.play_music
.l6893
;
	ld hl,l68b6
	dec (hl)
	ld ix,l6bda
	ld bc,l6be8
	call l6949
	ld ix,l6bf6
	ld bc,l6c04
	call l6949
	ld ix,l6c12
	ld bc,l6c20
	call l6949
.l68b6 equ $ + 1
	ld a,#00
	or a
	jr nz,l68bf
.l68bb equ $ + 1
	ld a,#00
	ld (l68b6),a
.l68c0 equ $ + 1
.l68bf
	ld a,#00
	ld hl,l6b03
	cp (hl)
	jr z,l68ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l6ae4
.l68cf equ $ + 1
.l68ce
	ld a,#00
	ld hl,l6b02
	cp (hl)
	jr z,l68dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l6ae4
.l68de equ $ + 1
.l68dd
	ld a,#00
	ld hl,l6b04
	cp (hl)
	jr z,l68ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l6ae4
.l68ed equ $ + 1
.l68ec
	ld a,#00
	ld hl,l6b05
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l6ae4
.l68fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l69fa
.l6909
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
	jp l6ae4
.l6923
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l6938
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l6938
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l695c
.l6949
	ld a,(l68b6)
	or a
	jp nz,l69fa
	dec (ix+#06)
	jp nz,l69fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l695c
	ld a,(hl)
	or a
	jr z,l68fa
	cp #fe
	jr z,l6909
	cp #ff
	jr z,l6923
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l6b0c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l6998
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l6998
	and #7f
	ld (ix+#06),a
	jr l69eb
.l6998
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l69ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l69ac
	add a
	add a
	add a
	ld e,a
	ld hl,l6c42
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
	jr z,l69eb
	cp #f0
	jp z,l6aa0
	cp #d0
	jp z,l6abc
	cp #b0
	jp z,l6ac4
	cp #80
	jp nc,l6acc
	cp #10
	jr nz,l69eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l69eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l69fa
	ld a,(ix+#17)
	or a
	jr nz,l6a0e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l6a0e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l6a39
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l6b0c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l6a39
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
	call l6ae4
	ld c,h
	ld a,(ix+#03)
	call l6ae4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6a77
	and #0f
	sub (ix+#0a)
	jr nc,l6a6d
	xor a
.l6a6d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l6ae4
.l6a77
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
	jr z,l6a94
	ld b,a
	ld a,c
	ld (l68cf),a
	ld a,b
	sub #40
.l6a94
	ld (l6a9b),a
	ld a,(l68c0)
.l6a9b equ $ + 1
	bit 0,a
	ld (l68c0),a
	ret
.l6aa0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l6cc2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l69eb
.l6abc
	inc hl
	ld a,(hl)
	ld (l68bb),a
	jp l69eb
.l6ac4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l69eb
.l6acc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l68ed),a
	inc hl
	ld a,(hl)
	ld (l68de),a
	jp l69eb
.l6ae4
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
.l6b05 equ $ + 3
.l6b04 equ $ + 2
.l6b03 equ $ + 1
.l6b02
	db #ff,#ff,#ff,#ff
.l6b06
	dw l6ec2,l6ecb,l6ed4
.l6b0c
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
.l6bda equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l6be8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6bf6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l6c04 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6c12 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l6c20 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l6c42 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#6c,#22,#6d
	db #42,#6d,#00,#00,#62,#6d,#a2,#6d
	db #42,#6d,#00,#00,#c2,#6d,#02,#6e
	db #22,#6e,#1a,#00,#dc,#66,#dc,#66
	db #dc,#66,#00,#00,#42,#6e,#82,#6e
	db #42,#6d,#08,#18,#dc,#66,#dc,#66
	db #dc,#66,#00,#00,#dc,#66,#dc,#66
	db #dc,#66,#00,#00,#dc,#66,#dc,#66
	db #dc,#66,#00,#00,#dc,#66,#dc,#66
	db #dc,#66,#00,#00,#dc,#66,#dc,#66
	db #dc,#66,#00,#00,#dc,#66,#dc,#66
	db #dc,#66,#00,#00,#dc,#66,#dc,#66
	db #dc,#66,#00,#00,#dc,#66,#dc,#66
	db #dc,#66,#00,#00,#dc,#66,#dc,#66
	db #dc,#66,#00,#00,#dc,#66,#dc,#66
	db #dc,#66,#00,#00,#dc,#66,#dc,#66
.l6cc2 equ $ + 4
	db #dc,#66,#00,#00,#a2,#6e,#dc,#66
	db #dc,#66,#dc,#66,#dc,#66,#dc,#66
	db #dc,#66,#dc,#66,#dc,#66,#dc,#66
	db #dc,#66,#dc,#66,#dc,#66,#dc,#66
	db #dc,#66,#dc,#66,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0c,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#09,#09,#09
	db #09,#09,#08,#08,#08,#08,#08,#07
	db #06,#04,#02,#00,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0a,#0a,#09,#09
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#02,#00,#00,#00
	db #00,#00,#00,#00,#05,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0a,#0a,#0b,#0b
	db #0c,#0c,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6ec2 equ $ + 4
	db #00,#00,#00,#00,#00,#dd,#6e,#00
.l6ecb equ $ + 5
	db #e9,#6e,#80,#c2,#6e,#00,#ff,#6e
.l6ed4 equ $ + 6
	db #00,#68,#6f,#80,#cb,#6e,#00,#a9
	db #6f,#00,#e6,#6f,#80,#d4,#6e,#39
	db #0d,#f4,#00,#3a,#0c,#04,#37,#8c
	db #35,#8b,#ff,#00,#01,#3a,#06,#04
	db #3c,#86,#39,#86,#3c,#86,#3a,#86
	db #39,#86,#34,#83,#37,#83,#35,#85
	db #ff,#a4,#c0,#1b,#29,#02,#c0,#14
	db #a9,#c0,#14,#3a,#02,#12,#a4,#c0
	db #1b,#29,#02,#c0,#14,#a9,#c0,#14
	db #3a,#02,#12,#a4,#c0,#1b,#2e,#02
	db #c0,#0f,#ae,#c0,#0f,#3a,#02,#12
	db #a9,#c0,#14,#2e,#02,#c0,#0f,#ae
	db #c0,#0f,#3a,#02,#12,#a9,#c0,#14
	db #2b,#02,#c0,#12,#ab,#c0,#12,#3a
	db #02,#12,#a6,#c0,#18,#2b,#02,#c0
	db #12,#ab,#c0,#12,#3a,#02,#12,#a6
	db #c0,#18,#29,#02,#c0,#14,#a9,#c0
	db #14,#3a,#02,#12,#a4,#c0,#1b,#29
	db #02,#c0,#14,#a9,#c0,#14,#3a,#02
	db #12,#ff,#a4,#00,#2e,#82,#ae,#00
	db #26,#82,#a6,#00,#28,#82,#a8,#00
	db #24,#82,#a4,#00,#29,#82,#a9,#00
	db #24,#82,#a4,#00,#29,#82,#a9,#00
	db #24,#82,#a4,#00,#2e,#82,#ae,#00
	db #26,#82,#a6,#00,#29,#82,#a9,#00
	db #24,#82,#a4,#00,#2b,#82,#ab,#00
	db #24,#82,#a4,#00,#29,#82,#a9,#00
	db #24,#82,#ff,#bc,#01,#39,#82,#b9
	db #01,#b9,#01,#b7,#01,#b9,#01,#41
	db #82,#bc,#01,#3c,#82,#b9,#01,#3a
	db #82,#bc,#01,#3e,#82,#bc,#01,#3a
	db #85,#b7,#01,#37,#82,#b7,#01,#b7
	db #01,#b6,#01,#b7,#01,#37,#82,#c0
	db #01,#40,#82,#b7,#01,#39,#82,#ba
	db #01,#3c,#82,#be,#01,#3c,#85,#ff
	db #bc,#01,#3e,#82,#be,#01,#be,#01
	db #bd,#01,#be,#01,#40,#83,#40,#83
	db #41,#82,#c1,#01,#c3,#01,#c1,#01
	db #c3,#01,#45,#85,#c5,#01,#43,#82
	db #c1,#01,#3e,#82,#ba,#01,#39,#83
	db #35,#83,#37,#83,#34,#83,#35,#83
	db #fe,#02,#ff
;
.music_info
	db "Orgasmic Park (1994)(OdieSoft)(Kangaroo)",0
	db "ST-Module",0

	read "music_end.asm"
