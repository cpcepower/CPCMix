; Music of Wishing Well Construction Kit (1994)(OdieSoft)(Kangaroo)(ST-Module)
; Ripped by Megachur the 24/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "WISHIWCK.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9000

	read "music_header.asm"

	jp l900b
	jp l9093
	jp l9077
	db #66,#04
;
.init_music
.l900b
;
	ld b,#03
	ld ix,l93da
	ld iy,l9306
	ld de,#001c
.l9018
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
	djnz l9018
	ld a,#06
	ld (l90bb),a
	ld a,d
	ld (l90cf),a
	inc a
	ld (l90b6),a
	ld a,#38
	ld (l90c0),a
	ld a,#ff
	ld (l9302),a
	ld (l9303),a
	ld (l9304),a
	ld (l9305),a
	ld a,#0c
	ld c,d
	call l92e4
	ld a,#0d
	ld c,d
	jp l92e4
;
.stop_music
.l9077
;
	ld a,#07
	ld c,#3f
	call l92e4
	ld a,#08
	ld c,#00
	call l92e4
	ld a,#09
	ld c,#00
	call l92e4
	ld a,#0a
	ld c,#00
	jp l92e4
;
.play_music
.l9093
;
	ld hl,l90b6
	dec (hl)
	ld ix,l93da
	ld bc,l93e8
	call l9149
	ld ix,l93f6
	ld bc,l9404
	call l9149
	ld ix,l9412
	ld bc,l9420
	call l9149
.l90b6 equ $ + 1
	ld a,#00
	or a
	jr nz,l90bf
.l90bb equ $ + 1
	ld a,#00
	ld (l90b6),a
.l90c0 equ $ + 1
.l90bf
	ld a,#00
	ld hl,l9303
	cp (hl)
	jr z,l90ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l92e4
.l90cf equ $ + 1
.l90ce
	ld a,#00
	ld hl,l9302
	cp (hl)
	jr z,l90dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l92e4
.l90de equ $ + 1
.l90dd
	ld a,#00
	ld hl,l9304
	cp (hl)
	jr z,l90ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l92e4
.l90ed equ $ + 1
.l90ec
	ld a,#00
	ld hl,l9305
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l92e4
.l90fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l91fa
.l9109
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
	jp l92e4
.l9123
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l9138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l9138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l915c
.l9149
	ld a,(l90b6)
	or a
	jp nz,l91fa
	dec (ix+#06)
	jp nz,l91fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l915c
	ld a,(hl)
	or a
	jr z,l90fa
	cp #fe
	jr z,l9109
	cp #ff
	jr z,l9123
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l930c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l9198
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l9198
	and #7f
	ld (ix+#06),a
	jr l91eb
.l9198
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l91ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l91ac
	add a
	add a
	add a
	ld e,a
	ld hl,l9442
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
	jr z,l91eb
	cp #f0
	jp z,l92a0
	cp #d0
	jp z,l92bc
	cp #b0
	jp z,l92c4
	cp #80
	jp nc,l92cc
	cp #10
	jr nz,l91eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l91eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l91fa
	ld a,(ix+#17)
	or a
	jr nz,l920e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l920e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l9239
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l930c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l9239
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
	call l92e4
	ld c,h
	ld a,(ix+#03)
	call l92e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l9277
	and #0f
	sub (ix+#0a)
	jr nc,l926d
	xor a
.l926d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l92e4
.l9277
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
	jr z,l9294
	ld b,a
	ld a,c
	ld (l90cf),a
	ld a,b
	sub #40
.l9294
	ld (l929b),a
	ld a,(l90c0)
.l929b equ $ + 1
	bit 0,a
	ld (l90c0),a
	ret
.l92a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l94c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l91eb
.l92bc
	inc hl
	ld a,(hl)
	ld (l90bb),a
	jp l91eb
.l92c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l91eb
.l92cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l90ed),a
	inc hl
	ld a,(hl)
	ld (l90de),a
	jp l91eb
.l92e4
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
.l9305 equ $ + 3
.l9304 equ $ + 2
.l9303 equ $ + 1
.l9302
	db #ff,#ff,#ff,#ff
.l9306
	dw l9662,l9677,l968c
.l930c
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
.l93da equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l93e8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l93f6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l9404 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9412 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l9420 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l9442 equ $ + 4
	db #75,#6c,#65,#2e,#dc,#8e,#dc,#8e
	db #dc,#8e,#00,#00,#e2,#94,#22,#95
	db #42,#95,#00,#00,#dc,#8e,#dc,#8e
	db #dc,#8e,#00,#00,#dc,#8e,#dc,#8e
	db #dc,#8e,#00,#00,#dc,#8e,#dc,#8e
	db #dc,#8e,#00,#00,#dc,#8e,#dc,#8e
	db #dc,#8e,#00,#00,#dc,#8e,#dc,#8e
	db #dc,#8e,#00,#00,#62,#95,#a2,#95
	db #c2,#95,#00,#00,#dc,#8e,#dc,#8e
	db #dc,#8e,#00,#00,#e2,#95,#22,#96
	db #c2,#95,#08,#18,#62,#95,#42,#96
	db #c2,#95,#00,#00,#dc,#8e,#dc,#8e
	db #dc,#8e,#00,#00,#dc,#8e,#dc,#8e
	db #dc,#8e,#00,#00,#dc,#8e,#dc,#8e
	db #dc,#8e,#00,#00,#dc,#8e,#dc,#8e
	db #dc,#8e,#00,#00,#dc,#8e,#dc,#8e
.l94c2 equ $ + 4
	db #dc,#8e,#00,#00,#dc,#8e,#dc,#8e
	db #dc,#8e,#dc,#8e,#dc,#8e,#dc,#8e
	db #dc,#8e,#dc,#8e,#dc,#8e,#dc,#8e
	db #dc,#8e,#dc,#8e,#dc,#8e,#dc,#8e
	db #dc,#8e,#dc,#8e,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#0d,#0c,#0c
	db #0b,#0a,#09,#08,#08,#07,#07,#06
	db #05,#04,#04,#04,#04,#03,#02,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#06,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0a
	db #0a,#09,#09,#08,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#03
	db #03,#03,#03,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#0d,#0c,#0b,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#0f,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#08
	db #08,#07,#07,#06,#05,#04,#03,#02
.l9662 equ $ + 4
	db #01,#00,#00,#00,#00,#a1,#96,#00
	db #a1,#96,#00,#a1,#96,#00,#a1,#96
	db #00,#a1,#96,#00,#a1,#96,#80,#62
.l9677 equ $ + 1
	db #96,#00,#b9,#96,#00,#b9,#96,#00
	db #b9,#96,#00,#b9,#96,#00,#b9,#96
.l968c equ $ + 6
	db #00,#b9,#96,#80,#77,#96,#00,#0b
	db #97,#00,#0b,#97,#00,#0e,#97,#00
	db #0e,#97,#00,#50,#97,#00,#50,#97
	db #80,#8c,#96,#41,#0c,#09,#43,#84
	db #44,#86,#46,#86,#44,#84,#43,#86
	db #41,#86,#43,#84,#3c,#86,#3d,#86
	db #3c,#84,#ff,#29,#02,#07,#29,#82
	db #3a,#02,#01,#29,#02,#07,#29,#82
	db #29,#82,#3a,#02,#01,#29,#02,#07
	db #25,#82,#25,#82,#3a,#02,#01,#25
	db #02,#07,#25,#82,#25,#82,#3a,#02
	db #01,#25,#02,#07,#22,#82,#22,#82
	db #3a,#02,#01,#22,#02,#07,#22,#82
	db #22,#82,#3a,#02,#01,#22,#02,#07
	db #24,#82,#24,#82,#3a,#02,#01,#24
	db #02,#07,#24,#82,#24,#82,#3a,#02
	db #01,#24,#02,#07,#ff,#00,#40,#ff
	db #44,#02,#0a,#41,#82,#44,#82,#41
	db #82,#46,#82,#41,#82,#48,#82,#41
	db #82,#49,#82,#41,#82,#48,#82,#41
	db #82,#44,#82,#41,#82,#46,#82,#41
	db #82,#48,#82,#41,#82,#46,#82,#41
	db #82,#44,#82,#41,#82,#48,#82,#41
	db #82,#46,#82,#41,#82,#44,#82,#41
	db #82,#43,#82,#44,#82,#43,#82,#41
	db #82,#ff,#44,#02,#07,#43,#82,#41
	db #82,#bf,#07,#41,#83,#43,#82,#44
	db #82,#46,#82,#48,#84,#49,#84,#48
	db #82,#46,#82,#48,#82,#49,#82,#48
	db #84,#44,#84,#44,#82,#46,#82,#44
	db #82,#43,#84,#3f,#82,#41,#82,#43
	db #82,#44,#82,#43,#82,#41,#82,#bf
	db #07,#c1,#07,#ff,#21,#00,#c0,#11
	db #01,#c0,#01,#ff,#3f,#75,#ed,#b0
	db #21,#0a,#98,#11,#00,#c0,#7e,#fe
	db #ff,#ca,#e1,#97,#23,#e5,#6f,#26
	db #00,#29,#29,#29,#01,#89,#7f,#ed
	db #49,#01,#00,#38,#09,#01,#ff,#07
	db #eb,#1a,#e6,#f0,#4f,#0f,#0f,#0f
	db #0f,#b1,#77,#23,#1a,#e6,#0f,#4f
	db #0f,#0f,#0f,#0f,#b1,#77,#0e,#ff
;
.music_info
	db "Wishing Well Construction Kit (1994)(OdieSoft)(Kangaroo)",0
	db "ST-Module",0

	read "music_end.asm"
