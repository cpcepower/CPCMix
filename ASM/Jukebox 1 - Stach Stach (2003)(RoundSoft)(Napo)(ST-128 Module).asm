; Music of Jukebox 1 - Stach Stach (2003)(RoundSoft)(Napo)(ST-128 Module)
; Ripped by Megachur the 21/02/2016
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JUKEBO14.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2016
music_adr				equ #6e20

	read "music_header.asm"

	jr l6e24
	jr l6e33
.l6e24
	call l6e57
	ld hl,l6e44
	ld de,l6e3c
	ld bc,#81ff
	jp #bcd7
.l6e33
	ld hl,l6e44
	call #bcdd
	jp l6ecf
.l6e3c
	push ix
	call l6eeb
	pop ix
	ret
.l6e44
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l6e57
	jp l6eeb
	jp l6ecf
;
.init_music
.l6e57
;
	xor a
	ld hl,l7402
	call l6ec8
	ld hl,l7430
	call l6ec8
	ld hl,l745e
	call l6ec8
	ld ix,l73fe
	ld iy,l7488
	ld de,#002e
	ld b,#03
.l6e77
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l6e77
	ld hl,l7317
	ld (hl),#04
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l7313),hl
	ld (l7315),hl
	ld a,#0c
	ld c,d
	call l72f3
	ld a,#0d
	ld c,d
	jp l72f3
.l6ec8
	ld b,#2a
.l6eca
	ld (hl),a
	inc hl
	djnz l6eca
	ret
;
.stop_music
.l6ecf
;
	ld a,#07
	ld c,#3f
	call l72f3
	ld a,#08
	ld c,#00
	call l72f3
	ld a,#09
	ld c,#00
	call l72f3
	ld a,#0a
	ld c,#00
	jp l72f3
;
.play_music
.l6eeb
;
	ld hl,l7319
	dec (hl)
	ld ix,l73fe
	ld bc,l740c
	call l6f8d
	ld ix,l742c
	ld bc,l743a
	call l6f8d
	ld ix,l745a
	ld bc,l7468
	call l6f8d
	ld hl,l7312
	ld de,l7319
	ld b,#06
	call l6f6a
	ld b,#07
	call l6f6a
	ld b,#0b
	call l6f6a
	ld b,#0d
	call l6f6a
	ld de,l7319
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l741d
	call l6f43
	ld hl,l744b
	call l6f43
	ld hl,l7479
.l6f43
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l6f58
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l6f58
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l6f6a
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l72f3
.l6f75
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l72f3
.l6f8d
	ld a,(l7319)
	or a
	jp nz,l7045
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l7045
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l6f75
	or a
	jp z,l703a
	ld r,a
	and #7f
	cp #10
	jr c,l7015
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l718d
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l6fee
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l6fee
	rrca
	ld c,a
	ld hl,l748e
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l700d
	ld (ix+#1e),b
.l700d
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l702e
.l7015
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l731e
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	ld sp,#3332
	inc (hl)
	dec (hl)
.l702e equ $ + 1
	ld (hl),#7a
	or a
	jr nz,l703c
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l703c
.l703a
	ld a,(hl)
	inc hl
.l703c
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l7045
	ld a,(ix+#17)
	or a
	jr nz,l705b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l705b
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l7071
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l7071
	ld a,(ix+#0d)
	or a
	jr z,l707f
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l709d
.l707f
	ld a,(ix+#1a)
	or a
	jp z,l70a4
	ld c,a
	cp #03
	jr nz,l708c
	xor a
.l708c
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l709d
	ld a,(ix+#18)
	dec c
	jr z,l709d
	ld a,(ix+#19)
.l709d
	add (ix+#07)
	ld b,d
	call l718d
.l70a4
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l70cc
	dec (ix+#1b)
	jr nz,l70cc
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l7104
.l70cc
	ld a,(ix+#29)
	or a
	jr z,l7104
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l70fb
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l70f2
	ld (ix+#29),#ff
	jr l70fb
.l70f2
	cp (ix+#2b)
	jr nz,l70fb
	ld (ix+#29),#01
.l70fb
	ld b,d
	or a
	jp p,l7101
	dec b
.l7101
	ld c,a
	jr l710f
.l7104
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l710f
	pop hl
	bit 7,(ix+#14)
	jr z,l7118
	ld h,d
	ld l,d
.l7118
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l72f3
	ld c,h
	ld a,(ix+#02)
	call l72f3
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l716b
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l715a
	dec (ix+#09)
	jr nz,l715a
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l7152
	xor a
	jr l7157
.l7152
	cp #10
	jr nz,l7157
	dec a
.l7157
	ld (ix+#1e),a
.l715a
	ld a,b
	sub (ix+#1e)
	jr nc,l7161
	xor a
.l7161
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l72f3
.l716b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l731a)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l7189
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l7189
	ld (l731a),hl
	ret
.l718d
	ld hl,l733c
	cp #61
	jr nc,l7197
	add a
	ld c,a
	add hl,bc
.l7197
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l71a1
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l72c6
	ld (ix+#1e),a
	jp l702e
.l71b3
	dec b
.l71b4
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l71bf
	neg
.l71bf
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l702e
.l71d5
	dec b
	jr l71d9
.l71d8
	inc b
.l71d9
	call l72c6
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l702e
.l71e8
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l72ab
.l71f9
	ld a,(hl)
	inc hl
	or a
	jr z,l721b
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l721b
	ld (ix+#29),a
	jp l702e
.l7221
	dec hl
	ld a,(hl)
	and #0f
	ld (l731d),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l731c),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l702e
.l723b
	ld a,(hl)
	or a
	jr z,l724c
	call l72c8
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l702e
.l724c
	ld hl,#0101
	ld (l7318),hl
	jp l702e
.l7255
	call l72c6
	ld (ix+#1e),a
	jp l702e
.l725e
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l72d7
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l72d7
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l702e
.l7280
	ld a,(hl)
	inc hl
	ld (l7317),a
	jp l702e
.l7288
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l702e
.l72a7
	call l72c6
	add a
.l72ab
	ld b,#00
	ld c,a
	push hl
	ld hl,l750e
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l702e
.l72c6
	ld a,(hl)
	inc hl
.l72c8
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l72d7
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l748e
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l72f3
	di
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
	ei
.l7312
	ret
.l731a equ $ + 7
.l7319 equ $ + 6
.l7318 equ $ + 5
.l7317 equ $ + 4
.l7315 equ $ + 2
.l7313
	db #00,#00,#00,#00,#00,#00,#00,#00
.l731d equ $ + 2
.l731c equ $ + 1
	db #38,#00,#00
.l731e
	dw l71a1,l71b4,l71b3,l71d8
	dw l71d5,l71e8,l71f9,l7221
	dw l723b,l7221,l7255,l725e
	dw l7280,l7288,l72a7
.l733c
	dw #0000,#0e18,#0d4d,#0c8e
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
.l73fe equ $ + 2
	dw #000f,#0008
.l7402 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l740c equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l741d equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l742c equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l7430
	db #00,#00,#00,#00,#00,#00,#00,#00
.l743a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l744b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l745e equ $ + 6
.l745a equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7468
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7479 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l748e equ $ + 6
.l7488
	db #ae,#76,#cc,#76,#ea,#76,#2e,#75
	db #6e,#75,#8e,#75,#00,#00,#2e,#75
	db #ae,#75,#ce,#75,#00,#00,#2e,#75
	db #ee,#75,#0e,#76,#00,#00,#2e,#75
	db #2e,#76,#4e,#76,#00,#00,#2e,#75
	db #6e,#76,#8e,#75,#00,#00,#2e,#75
	db #8e,#76,#8e,#75,#00,#00,#ca,#91
	db #0a,#93,#2a,#92,#01,#08,#57,#96
	db #57,#96,#57,#96,#00,#00,#57,#96
	db #57,#96,#57,#96,#00,#00,#57,#96
	db #57,#96,#57,#96,#00,#00,#57,#96
	db #57,#96,#57,#96,#00,#00,#57,#96
	db #57,#96,#57,#96,#00,#00,#57,#96
	db #57,#96,#57,#96,#00,#00,#57,#96
	db #57,#96,#57,#96,#00,#00,#57,#96
	db #57,#96,#57,#96,#00,#00,#57,#96
.l750e equ $ + 6
	db #57,#96,#57,#96,#00,#00,#57,#96
	db #57,#96,#57,#96,#57,#96,#57,#96
	db #57,#96,#57,#96,#57,#96,#57,#96
	db #57,#96,#57,#96,#57,#96,#57,#96
	db #57,#96,#57,#96,#57,#96,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0f
	db #0e,#0c,#0e,#0d,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0d
	db #0f,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#18,#00
	db #1f,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0c
	db #0e,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12,#19
	db #1f,#1b,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0f,#0f,#0e,#0f,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0e,#0d,#0c,#0f,#0e,#0e,#0f,#0e
	db #0f,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#08
	db #77,#00,#08,#77,#00,#08,#77,#00
	db #08,#77,#00,#08,#77,#00,#08,#77
	db #00,#74,#77,#00,#74,#77,#00,#8f
	db #77,#80,#ae,#76,#00,#af,#77,#00
	db #af,#77,#00,#af,#77,#00,#af,#77
	db #00,#af,#77,#00,#af,#77,#00,#af
	db #77,#00,#af,#77,#00,#18,#78,#80
	db #cc,#76,#00,#37,#78,#00,#ab,#78
	db #00,#02,#79,#00,#02,#79,#00,#37
	db #78,#00,#ab,#78,#00,#45,#79,#00
	db #45,#79,#00,#60,#79,#80,#ea,#76
	db #31,#0d,#04,#02,#55,#4e,#37,#02
	db #31,#01,#20,#55,#4e,#37,#02,#38
	db #01,#20,#55,#4e,#37,#02,#38,#01
	db #20,#31,#00,#02,#31,#01,#20,#55
	db #4e,#37,#02,#31,#01,#20,#55,#4e
	db #37,#02,#38,#01,#20,#55,#4e,#37
	db #02,#38,#01,#20,#31,#00,#02,#36
	db #01,#20,#5a,#4e,#37,#02,#36,#01
	db #20,#5a,#4e,#37,#02,#31,#01,#20
	db #5a,#4e,#37,#04,#36,#01,#20,#36
	db #00,#02,#36,#00,#02,#36,#00,#02
	db #5a,#4e,#37,#02,#31,#01,#20,#5a
	db #4e,#37,#02,#31,#01,#20,#da,#4e
	db #37,#01,#10,#ff,#00,#06,#20,#10
	db #02,#20,#10,#04,#21,#20,#02,#21
	db #20,#02,#21,#20,#16,#20,#10,#02
	db #20,#10,#16,#20,#10,#02,#ff,#27
	db #1d,#02,#04,#27,#10,#04,#27,#10
	db #04,#27,#10,#04,#27,#10,#08,#27
	db #10,#04,#27,#10,#04,#27,#10,#08
	db #27,#10,#08,#27,#10,#10,#ff,#71
	db #10,#02,#74,#20,#02,#3f,#32,#1f
	db #02,#74,#20,#02,#71,#10,#02,#74
	db #20,#02,#3f,#32,#1f,#02,#74,#20
	db #02,#71,#10,#02,#74,#20,#02,#3f
	db #32,#1f,#02,#74,#20,#02,#71,#10
	db #02,#74,#20,#02,#3f,#32,#1f,#02
	db #74,#20,#02,#71,#10,#02,#74,#20
	db #02,#3f,#32,#1f,#02,#74,#20,#02
	db #71,#10,#02,#74,#20,#02,#3f,#32
	db #1f,#02,#74,#20,#02,#71,#10,#02
	db #74,#20,#02,#3f,#32,#1f,#02,#74
	db #20,#02,#71,#10,#02,#74,#20,#02
	db #3f,#32,#1f,#02,#74,#20,#02,#ff
	db #1e,#10,#04,#1e,#10,#04,#1e,#10
	db #04,#1e,#10,#04,#1e,#10,#08,#1e
	db #10,#04,#1e,#10,#04,#1e,#10,#08
	db #1e,#10,#08,#1e,#10,#10,#ff,#50
	db #50,#04,#4f,#53,#11,#02,#4f,#53
	db #11,#02,#4f,#53,#11,#04,#4f,#53
	db #11,#02,#4f,#53,#11,#02,#4f,#53
	db #11,#04,#c4,#5e,#cc,#0e,#cc,#01
	db #0e,#cc,#01,#0e,#cc,#01,#c4,#5e
	db #cc,#0e,#cc,#01,#0e,#cc,#01,#0e
	db #cc,#01,#01,#40,#4e,#50,#04,#4d
	db #53,#12,#02,#4d,#53,#12,#02,#4d
	db #53,#12,#04,#4d,#53,#12,#02,#4d
	db #53,#12,#02,#4d,#53,#12,#04,#c2
	db #5e,#cc,#0e,#cc,#01,#0e,#cc,#01
	db #0e,#cc,#01,#c2,#5e,#cc,#0e,#cc
	db #01,#0e,#cc,#01,#0e,#cc,#01,#0e
	db #cc,#01,#0e,#cc,#01,#0e,#cc,#01
	db #01,#10,#ff,#50,#50,#04,#4f,#53
	db #11,#02,#4f,#53,#11,#02,#4f,#53
	db #11,#04,#4f,#53,#11,#02,#4f,#53
	db #11,#02,#4f,#53,#11,#04,#c4,#5e
	db #cc,#0e,#cc,#01,#0e,#cc,#01,#0e
	db #cc,#01,#c4,#5e,#cc,#0e,#cc,#01
	db #0e,#cc,#01,#0e,#cc,#01,#01,#20
	db #20,#10,#02,#20,#10,#02,#20,#10
	db #02,#20,#10,#02,#20,#10,#02,#20
	db #10,#04,#20,#10,#02,#20,#10,#02
	db #20,#10,#04,#20,#10,#04,#20,#10
	db #08,#ff,#20,#10,#04,#20,#10,#02
	db #20,#10,#02,#20,#10,#06,#20,#10
	db #02,#20,#10,#02,#20,#10,#02,#20
	db #10,#02,#20,#10,#02,#20,#10,#04
	db #20,#10,#04,#20,#10,#04,#20,#10
	db #02,#20,#10,#02,#20,#10,#06,#20
	db #10,#02,#20,#10,#02,#20,#10,#02
	db #20,#10,#02,#20,#10,#02,#20,#10
	db #04,#20,#10,#04,#ff,#00,#06,#23
	db #10,#02,#23,#10,#1e,#23,#10,#02
	db #23,#10,#04,#21,#20,#02,#21,#20
	db #02,#21,#20,#0e,#1d,#10,#02,#ff
	db #26,#10,#04,#26,#10,#04,#26,#10
	db #04,#26,#10,#04,#26,#10,#08,#26
	db #10,#04,#26,#10,#04,#26,#10,#08
	db #26,#10,#08,#26,#10,#10,#ff
;
.music_info
	db "Jukebox 1 - Stach Stach (2003)(RoundSoft)(Napo)",0
	db "ST-128 Module",0

	read "music_end.asm"
