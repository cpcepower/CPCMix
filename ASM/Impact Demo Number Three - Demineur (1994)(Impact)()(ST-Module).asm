; Music of Impact Demo Number Three - Demineur (1994)(Impact)()(ST-Module)
; Ripped by Megachur the 14/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "IMPDNTCS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #4000

	read "music_header.asm"

	call l403f
	ld hl,#be80
	ld de,l4010
	ld bc,#8000
	call #bcd7
	ret
.l4010
	push af
	push iy
	push ix
	push hl
	push de
	push bc
	call l4042
	pop bc
	pop de
	pop hl
	pop ix
	pop iy
	pop af
	ret
	ld hl,#be80
	call #bcdd
	call #bca7
	ret
	db #2a,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l403f
	jp l404a
.l4042
	jp l40d2
	jp l40b6
	ld h,(hl)
	inc b
;
.init_music
.l404a
;
	ld b,#03
	ld ix,l4419
	ld iy,l4345
	ld de,#001c
.l4057
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
	djnz l4057
	ld a,#06
	ld (l40fa),a
	ld a,d
	ld (l410e),a
	inc a
	ld (l40f5),a
	ld a,#38
	ld (l40ff),a
	ld a,#ff
	ld (l4341),a
	ld (l4342),a
	ld (l4343),a
	ld (l4344),a
	ld a,#0c
	ld c,d
	call l4323
	ld a,#0d
	ld c,d
	jp l4323
;
.stop_music
.l40b6
;
	ld a,#07
	ld c,#3f
	call l4323
	ld a,#08
	ld c,#00
	call l4323
	ld a,#09
	ld c,#00
	call l4323
	ld a,#0a
	ld c,#00
	jp l4323
;
.play_music
.l40d2
;
	ld hl,l40f5
	dec (hl)
	ld ix,l4419
	ld bc,l4427
	call l4188
	ld ix,l4435
	ld bc,l4443
	call l4188
	ld ix,l4451
	ld bc,l445f
	call l4188
.l40f5 equ $ + 1
	ld a,#03
	or a
	jr nz,l40fe
.l40fa equ $ + 1
	ld a,#06
	ld (l40f5),a
.l40ff equ $ + 1
.l40fe
	ld a,#38
	ld hl,l4342
	cp (hl)
	jr z,l410d
	ld (hl),a
	ld c,a
	ld a,#07
	call l4323
.l410e equ $ + 1
.l410d
	ld a,#01
	ld hl,l4341
	cp (hl)
	jr z,l411c
	ld (hl),a
	ld c,a
	ld a,#06
	call l4323
.l411d equ $ + 1
.l411c
	ld a,#00
	ld hl,l4343
	cp (hl)
	jr z,l412b
	ld (hl),a
	ld c,a
	ld a,#0b
	call l4323
.l412c equ $ + 1
.l412b
	ld a,#2e
	ld hl,l4344
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l4323
.l4139
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l4239
.l4148
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
	jp l4323
.l4162
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l4177
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l4177
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l419b
.l4188
	ld a,(l40f5)
	or a
	jp nz,l4239
	dec (ix+#06)
	jp nz,l4239
	ld l,(ix+#00)
	ld h,(ix+#01)
.l419b
	ld a,(hl)
	or a
	jr z,l4139
	cp #fe
	jr z,l4148
	cp #ff
	jr z,l4162
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l434b
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l41d7
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l41d7
	and #7f
	ld (ix+#06),a
	jr l422a
.l41d7
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l41eb
	ld (ix+#05),a
	ld (ix+#0a),d
.l41eb
	add a
	add a
	add a
	ld e,a
	ld hl,l4481
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
	jr z,l422a
	cp #f0
	jp z,l42df
	cp #d0
	jp z,l42fb
	cp #b0
	jp z,l4303
	cp #80
	jp nc,l430b
	cp #10
	jr nz,l422a
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l422a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l4239
	ld a,(ix+#17)
	or a
	jr nz,l424d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l424d
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l4278
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l434b
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l4278
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
	call l4323
	ld c,h
	ld a,(ix+#03)
	call l4323
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l42b6
	and #0f
	sub (ix+#0a)
	jr nc,l42ac
	xor a
.l42ac
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l4323
.l42b6
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
	jr z,l42d3
	ld b,a
	ld a,c
	ld (l410e),a
	ld a,b
	sub #40
.l42d3
	ld (l42da),a
	ld a,(l40ff)
.l42da equ $ + 1
	set 4,a
	ld (l40ff),a
	ret
.l42df
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l4501
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l422a
.l42fb
	inc hl
	ld a,(hl)
	ld (l40fa),a
	jp l422a
.l4303
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l422a
.l430b
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l412c),a
	inc hl
	ld a,(hl)
	ld (l411d),a
	jp l422a
.l4323
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
.l4344 equ $ + 3
.l4343 equ $ + 2
.l4342 equ $ + 1
.l4341
	db #01,#38,#00,#2e
.l4345
	dw l4721,l4763,l47a5
.l434b
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
	db #00,#00,#00,#00
.l4419
	dw l4a8e
	db #00,#01,#08,#03,#01,#39,#00,#00
	db #03,#df
.l4427 equ $ + 2
	dw l4724,l46a1,l46e1,l4681
	db #10,#10,#0a,#16,#8e,#00,#00,#00
.l4435
	dw l4dc3
	db #02,#03,#09,#00,#03,#32,#00,#00
	db #04,#e7
.l4443 equ $ + 2
	dw l4766,l4521,l4561,l4581
	dw #0000
	db #16,#0a,#d5,#00,#00,#00
.l4451
	dw l5094
	db #04,#05,#0a,#10,#1d,#40,#00,#00
	db #00,#ef
.l445f equ $ + 2
	dw l47a8,l45e2,l4622,l4642
	db #10,#10,#15,#0b,#5f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	db #53,#54,#2d,#4d,#6f,#64,#75,#6c
	db #65,#2e
.l4481
	dw l4521,l4561,l4581,#0000
	dw l45a1,l45e1,l4601,#0000
	dw l4621,l4661,l4681,#1010
	dw l46a1,l46e1,l4681,#1010
	dw l46a1,l4701,l4681,#110f
	dw #3f1b,#3f1b,#3f1b,#0000
	dw #3f1b,#3f1b,#3f1b,#0000
	dw #3f1b,#3f1b,#3f1b,#0000
	dw #3f1b,#3f1b,#3f1b,#0000
	dw #3f1b,#3f1b,#3f1b,#0000
	dw #3f1b,#3f1b,#3f1b,#0000
	db #1b,#3f,#1b,#3f,#1b,#3f,#00,#00
	db #1b,#3f,#1b,#3f,#1b,#3f,#00,#00
	db #1b,#3f,#1b,#3f,#1b,#3f,#00,#00
	db #1b,#3f,#1b,#3f,#1b,#3f,#00,#00
	db #1b,#3f,#1b,#3f,#1b,#3f,#00,#00
.l4501
	db #1b,#3f,#1b,#3f,#1b,#3f,#dc,#3e
	db #1b,#3f,#1b,#3f,#1b,#3f,#dc,#3e
	db #1b,#3f,#1b,#3f,#1b,#3f,#dc,#3e
	db #1b,#3f,#1b,#3f,#1b,#3f,#dc,#3e
.l4521
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4561
	db #0f,#0f,#0e,#0e,#0d,#0c,#0a,#09
	db #07,#06,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4581
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45a1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45e2 equ $ + 1
.l45e1
	db #0f,#0d,#0b,#09,#07,#05,#04,#06
	db #08,#06,#04,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4601
	db #07,#0b,#0f,#13,#17,#1b,#1f,#13
	db #08,#03,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4622 equ $ + 1
.l4621
	db #01,#00,#01,#00,#ff,#ff,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#ff,#ff,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4642 equ $ + 1
	db #01,#00,#01,#00,#ff,#ff,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#ff,#ff,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4661
	db #0f,#0e,#0d,#0c,#0a,#08,#07,#06
	db #07,#08,#09,#0b,#0b,#0c,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
.l4681
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46a1
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46e1
	db #0a,#0b,#0c,#0c,#0c,#0b,#0a,#09
	db #08,#07,#06,#04,#04,#04,#03,#03
	db #03,#03,#03,#02,#02,#02,#02,#02
	db #02,#01,#01,#01,#01,#01,#01,#01
.l4701
	db #0c,#0d,#0e,#0d,#0c,#0b,#0a,#0a
	db #0a,#09,#09,#09,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
.l4724 equ $ + 3
.l4721
	db #00,#58,#4a,#00,#e7,#47,#00,#e7
	db #47,#00,#e7,#47,#00,#29,#48,#00
	db #6b,#48,#00,#6b,#48,#00,#23,#49
	db #00,#23,#49,#00,#c4,#48,#00,#6c
	db #49,#00,#6c,#49,#00,#c1,#49,#00
	db #f1,#49,#00,#f1,#49,#00,#29,#48
	db #00,#6b,#48,#00,#6b,#48,#00,#09
	db #4a,#00,#09,#4a,#00,#27,#4a,#80
.l4766 equ $ + 5
.l4763 equ $ + 2
	db #21,#47,#00,#a9,#4d,#00,#b1,#4a
	db #00,#b1,#4a,#00,#cf,#4a,#00,#cf
	db #4a,#00,#2b,#4b,#00,#2b,#4b,#00
	db #ec,#4b,#00,#ec,#4b,#00,#6b,#4b
	db #00,#16,#4c,#00,#16,#4c,#00,#75
	db #4c,#00,#16,#4c,#00,#16,#4c,#00
	db #cf,#4a,#00,#2b,#4b,#00,#d4,#4c
	db #00,#14,#4d,#00,#14,#4d,#00,#54
.l47a8 equ $ + 7
.l47a5 equ $ + 4
	db #4d,#80,#63,#47,#00,#92,#50,#00
	db #da,#4d,#00,#e4,#4d,#00,#f8,#4d
	db #00,#18,#4e,#00,#36,#4e,#00,#36
	db #4e,#00,#50,#4e,#00,#50,#4e,#00
	db #50,#4e,#00,#72,#4e,#00,#72,#4e
	db #00,#f3,#4e,#00,#74,#4f,#00,#f5
	db #4f,#00,#18,#4e,#00,#36,#4e,#00
	db #51,#50,#00,#51,#50,#00,#51,#50
	db #00,#69,#50,#80,#a5,#47,#3e,#02
	db #03,#45,#82,#40,#82,#45,#82,#41
	db #82,#40,#82,#3e,#82,#3c,#82,#3a
	db #82,#45,#82,#3e,#82,#45,#82,#43
	db #82,#41,#82,#40,#82,#3e,#82,#3c
	db #82,#43,#82,#40,#82,#43,#82,#41
	db #82,#40,#82,#3e,#82,#3c,#82,#39
	db #82,#45,#82,#40,#82,#45,#82,#43
	db #82,#41,#82,#43,#82,#45,#82,#ff
	db #3e,#02,#02,#45,#82,#40,#82,#45
	db #82,#41,#82,#40,#82,#3e,#82,#3c
	db #82,#3a,#82,#45,#82,#3e,#82,#45
	db #82,#43,#82,#41,#82,#40,#82,#3e
	db #82,#3c,#82,#43,#82,#40,#82,#43
	db #82,#41,#82,#40,#82,#3e,#82,#3c
	db #82,#39,#82,#45,#82,#40,#82,#45
	db #82,#43,#82,#41,#82,#43,#82,#45
	db #82,#ff,#be,#01,#e2,#01,#e2,#01
	db #e2,#01,#4a,#82,#3e,#02,#00,#be
	db #00,#62,#02,#01,#e2,#01,#4a,#84
	db #b4,#00,#d8,#01,#d8,#01,#d8,#01
	db #40,#82,#40,#02,#00,#40,#82,#40
	db #02,#01,#d8,#01,#40,#82,#c0,#01
	db #bc,#00,#d4,#01,#d4,#01,#d4,#01
	db #48,#82,#3c,#02,#00,#bc,#00,#54
	db #02,#01,#d4,#01,#48,#84,#ba,#00
	db #de,#01,#de,#01,#de,#01,#46,#82
	db #3a,#02,#00,#ba,#00,#5e,#02,#01
	db #5e,#85,#ff,#be,#e2,#00,#be,#12
	db #45,#02,#02,#41,#82,#45,#82,#be
	db #e2,#00,#be,#12,#45,#02,#02,#41
	db #82,#45,#82,#bc,#a2,#00,#bc,#12
	db #43,#02,#02,#40,#82,#43,#82,#bc
	db #e2,#00,#bc,#12,#43,#02,#02,#40
	db #82,#43,#82,#ba,#e2,#00,#ba,#12
	db #41,#02,#02,#3e,#82,#41,#82,#ba
	db #e2,#00,#ba,#12,#41,#02,#02,#3e
	db #82,#41,#82,#c0,#e2,#00,#c0,#12
	db #48,#02,#02,#43,#82,#48,#82,#c0
	db #e2,#00,#c0,#12,#4a,#02,#02,#43
	db #84,#ff,#be,#c4,#10,#3e,#03,#14
	db #41,#04,#04,#be,#c4,#10,#3e,#03
	db #14,#41,#04,#04,#bc,#c4,#50,#3c
	db #03,#14,#40,#04,#33,#bc,#c4,#50
	db #3c,#03,#14,#40,#04,#34,#ba,#c4
	db #40,#3a,#03,#14,#3e,#04,#34,#ba
	db #c4,#40,#3a,#03,#14,#3e,#04,#34
	db #c0,#c4,#10,#40,#03,#14,#43,#04
	db #34,#c0,#c4,#10,#40,#03,#14,#43
	db #04,#34,#ff,#cd,#02,#cc,#02,#ca
	db #02,#c8,#02,#4a,#82,#cc,#02,#4a
	db #82,#cc,#02,#4a,#82,#cc,#02,#4a
	db #82,#cc,#02,#48,#82,#ca,#02,#48
	db #82,#ca,#02,#48,#82,#ca,#02,#48
	db #82,#ca,#02,#48,#82,#ca,#02,#46
	db #82,#c8,#02,#46,#82,#c8,#02,#46
	db #82,#c8,#02,#46,#82,#c8,#02,#46
	db #82,#cd,#02,#48,#82,#ca,#02,#48
	db #82,#ca,#02,#48,#82,#cd,#02,#48
	db #82,#cd,#02,#48,#82,#4d,#84,#ff
	db #4d,#02,#02,#ca,#02,#cc,#02,#ca
	db #02,#cc,#02,#4a,#82,#4f,#82,#ca
	db #02,#cc,#02,#ca,#02,#cc,#02,#4a
	db #82,#51,#88,#4d,#88,#4c,#88,#4a
	db #88,#4c,#82,#c8,#02,#ca,#02,#c8
	db #02,#ca,#02,#48,#82,#4d,#88,#ff
	db #4a,#0c,#02,#4d,#82,#4c,#8e,#4d
	db #82,#4a,#8e,#51,#82,#4f,#84,#4d
	db #84,#4c,#84,#4d,#84,#4a,#82,#ff
	db #46,#06,#02,#45,#84,#43,#84,#c1
	db #02,#c3,#02,#45,#84,#43,#82,#41
	db #84,#43,#84,#45,#86,#43,#82,#41
	db #84,#40,#84,#3e,#92,#ff,#46,#06
	db #b2,#02,#45,#04,#b2,#03,#43,#04
	db #b2,#04,#c1,#b2,#05,#c3,#b2,#05
	db #45,#04,#b2,#06,#43,#02,#b2,#07
	db #41,#04,#b2,#08,#43,#04,#b2,#09
	db #45,#86,#43,#02,#b2,#0b,#41,#84
	db #40,#84,#3e,#12,#b2,#0d,#ff,#3e
	db #02,#b3,#0d,#45,#82,#40,#02,#b3
	db #0b,#45,#02,#b3,#09,#41,#82,#40
	db #02,#b3,#08,#3e,#02,#b3,#07,#3c
	db #82,#3a,#02,#b3,#06,#45,#82,#3e
	db #82,#45,#02,#b3,#05,#43,#82,#41
	db #02,#b3,#04,#40,#82,#3e,#82,#3c
.l4a8e equ $ + 5
	db #02,#b3,#03,#43,#82,#40,#82,#43
	db #82,#41,#82,#40,#82,#3e,#02,#b3
	db #02,#3c,#82,#39,#82,#45,#02,#b3
	db #01,#40,#82,#45,#82,#43,#82,#41
	db #82,#43,#02,#b3,#00,#45,#82,#ff
	db #3e,#06,#00,#3e,#82,#3e,#88,#3e
	db #86,#3e,#82,#3e,#88,#3c,#86,#3c
	db #82,#3c,#88,#34,#86,#34,#82,#34
	db #84,#34,#82,#34,#82,#ff,#be,#01
	db #e2,#01,#e2,#01,#e2,#01,#4a,#82
	db #3e,#02,#00,#be,#00,#62,#02,#01
	db #e2,#01,#4a,#84,#be,#00,#e2,#01
	db #e2,#01,#e2,#01,#4a,#82,#3e,#02
	db #00,#be,#00,#62,#02,#01,#e2,#01
	db #4a,#84,#bc,#00,#d4,#01,#d4,#01
	db #d4,#01,#48,#82,#3c,#02,#00,#bc
	db #00,#54,#02,#01,#d4,#01,#48,#84
	db #b4,#00,#d8,#01,#d8,#01,#d8,#01
	db #40,#82,#34,#02,#00,#b4,#00,#58
	db #02,#01,#d8,#01,#34,#02,#00,#34
	db #82,#ff,#37,#02,#02,#43,#82,#3e
	db #82,#43,#82,#37,#82,#43,#82,#3e
	db #82,#43,#82,#3c,#82,#43,#82,#40
	db #82,#43,#82,#3c,#82,#43,#82,#40
	db #82,#43,#82,#3e,#82,#45,#82,#41
	db #82,#45,#82,#3e,#82,#45,#82,#41
	db #82,#45,#82,#3a,#82,#41,#82,#3e
	db #82,#41,#82,#3a,#82,#41,#82,#3e
	db #84,#ff,#be,#00,#d6,#01,#a6,#11
	db #d6,#01,#a6,#11,#be,#00,#be,#00
	db #d6,#01,#be,#00,#d6,#01,#a6,#01
	db #d6,#01,#a6,#01,#d6,#01,#a6,#01
	db #d6,#01,#bc,#00,#d4,#01,#a6,#01
	db #d4,#01,#a6,#01,#bc,#00,#bc,#00
	db #d4,#01,#bc,#00,#d4,#01,#a4,#01
	db #d4,#01,#a4,#01,#d4,#01,#a4,#01
	db #d4,#01,#ba,#00,#de,#01,#ae,#01
	db #de,#01,#ae,#01,#ba,#00,#ba,#00
	db #de,#01,#ba,#00,#de,#01,#ae,#01
	db #de,#01,#ae,#01,#de,#01,#ae,#01
	db #de,#01,#c8,#00,#d4,#01,#a4,#01
	db #d4,#01,#a4,#01,#c8,#00,#c8,#00
	db #d4,#01,#c8,#00,#d8,#01,#a8,#01
	db #d8,#01,#a8,#01,#d8,#01,#a8,#01
	db #d8,#01,#ff,#51,#06,#04,#51,#02
	db #03,#4f,#02,#04,#4d,#82,#4f,#82
	db #4c,#88,#4c,#82,#4d,#82,#4c,#82
	db #4d,#82,#4a,#88,#4a,#82,#4c,#82
	db #4a,#82,#4c,#82,#51,#84,#4f,#84
	db #4d,#84,#4c,#86,#ff,#be,#e2,#00
	db #be,#12,#45,#02,#02,#41,#82,#45
	db #82,#be,#e2,#00,#be,#12,#45,#02
	db #02,#41,#82,#45,#82,#bc,#a2,#00
	db #bc,#12,#43,#02,#02,#40,#82,#43
	db #82,#bc,#e2,#00,#bc,#12,#43,#02
	db #02,#40,#82,#43,#82,#ba,#e2,#00
	db #ba,#12,#41,#02,#02,#3e,#82,#41
	db #82,#ba,#e2,#00,#ba,#12,#41,#02
	db #02,#3e,#82,#41,#82,#c0,#e2,#00
	db #c0,#12,#48,#02,#02,#43,#82,#48
	db #82,#c0,#e2,#00,#c0,#12,#4a,#02
	db #02,#43,#84,#ff,#be,#e2,#00,#be
	db #12,#45,#02,#02,#41,#82,#45,#82
	db #be,#e2,#00,#be,#12,#45,#02,#02
	db #41,#82,#45,#82,#bc,#a2,#00,#bc
	db #12,#43,#02,#02,#40,#82,#43,#82
	db #bc,#e2,#00,#bc,#12,#43,#02,#02
	db #40,#82,#43,#82,#be,#e2,#00,#be
	db #12,#41,#02,#02,#3e,#82,#41,#82
	db #ba,#e2,#00,#ba,#12,#41,#02,#02
	db #3e,#82,#41,#82,#c0,#e2,#00,#c0
	db #12,#48,#02,#02,#43,#82,#48,#82
	db #c0,#e2,#00,#c0,#12,#4a,#02,#02
	db #43,#84,#ff,#37,#02,#02,#43,#82
	db #3e,#82,#43,#82,#37,#82,#43,#82
	db #3e,#82,#43,#82,#3c,#82,#43,#82
	db #40,#82,#43,#82,#3c,#82,#43,#82
	db #40,#82,#43,#82,#3e,#82,#45,#82
	db #41,#82,#45,#82,#3e,#82,#45,#82
	db #41,#82,#45,#82,#3a,#82,#41,#82
	db #3e,#82,#41,#82,#3a,#82,#41,#82
	db #3e,#84,#ff,#37,#02,#02,#43,#82
	db #3e,#82,#43,#82,#37,#82,#43,#82
	db #3e,#82,#43,#82,#3c,#82,#43,#82
	db #40,#82,#43,#82,#3c,#82,#43,#82
	db #40,#82,#43,#82,#3e,#82,#45,#82
	db #41,#82,#45,#82,#3e,#82,#45,#82
	db #41,#82,#45,#82,#3a,#82,#41,#82
	db #3e,#82,#41,#82,#3a,#82,#41,#82
	db #3e,#84,#ff,#37,#02,#b2,#02,#43
	db #82,#3e,#82,#43,#02,#b2,#03,#37
	db #82,#43,#82,#3e,#82,#43,#02,#b2
	db #04,#3c,#82,#43,#82,#40,#02,#b2
	db #05,#43,#82,#3c,#02,#b2,#06,#43
	db #82,#40,#02,#b2,#07,#43,#82,#3e
	db #82,#45,#82,#41,#02,#b2,#08,#45
	db #82,#3e,#82,#45,#82,#41,#82,#45
	db #02,#b2,#09,#3a,#82,#41,#82,#3e
	db #02,#b2,#0b,#41,#82,#3a,#82,#41
	db #02,#b2,#0c,#3e,#04,#b2,#0d,#ff
	db #3e,#06,#b0,#0d,#3e,#02,#b0,#0b
	db #3e,#08,#b0,#09,#3e,#06,#b0,#07
	db #3e,#02,#b0,#05,#3e,#88,#3c,#06
.l4dc3 equ $ + 2
	db #b0,#04,#3c,#82,#3c,#08,#b0,#03
	db #34,#06,#b0,#02,#34,#82,#34,#04
	db #b0,#01,#34,#02,#b0,#00,#34,#82
	db #ff,#56,#10,#02,#4a,#90,#54,#90
	db #58,#90,#ff,#4a,#0a,#02,#4c,#82
	db #4d,#82,#51,#92,#48,#8a,#4a,#82
	db #4c,#82,#45,#8e,#45,#84,#ff,#4a
	db #0a,#02,#4c,#82,#4d,#82,#51,#86
	db #51,#82,#51,#82,#4f,#82,#4d,#82
	db #4c,#82,#4a,#82,#48,#8a,#4a,#82
	db #4c,#82,#45,#8e,#45,#84,#ff,#4a
	db #0a,#02,#4c,#82,#4d,#82,#51,#88
	db #51,#82,#4f,#82,#4d,#82,#4c,#82
	db #4a,#82,#48,#8a,#4a,#82,#4c,#82
	db #45,#8e,#45,#84,#ff,#43,#06,#02
	db #46,#86,#4a,#84,#48,#86,#4c,#86
	db #4f,#84,#4d,#86,#4c,#86,#cd,#02
	db #cc,#02,#4a,#90,#45,#82,#ff,#4d
	db #06,#02,#4f,#84,#4d,#86,#4c,#86
	db #4d,#84,#4c,#86,#4a,#88,#4c,#82
	db #4d,#84,#51,#84,#4f,#82,#4d,#82
	db #4c,#82,#4d,#82,#4c,#82,#4a,#84
	db #ff,#be,#00,#d6,#01,#a6,#11,#d6
	db #01,#a6,#11,#be,#00,#be,#00,#d6
	db #01,#be,#00,#d6,#01,#a6,#01,#d6
	db #01,#a6,#01,#d6,#01,#a6,#01,#d6
	db #01,#bc,#00,#d4,#01,#a6,#01,#d4
	db #01,#a6,#01,#bc,#00,#bc,#00,#d4
	db #01,#bc,#00,#d4,#01,#a4,#01,#d4
	db #01,#a4,#01,#d4,#01,#a4,#01,#d4
	db #01,#ba,#00,#de,#01,#ae,#01,#de
	db #01,#ae,#01,#ba,#00,#ba,#00,#de
	db #01,#ba,#00,#de,#01,#ae,#01,#de
	db #01,#ae,#01,#de,#01,#ae,#01,#de
	db #01,#c8,#00,#d4,#01,#a4,#01,#d4
	db #01,#a4,#01,#c8,#00,#c8,#00,#d4
	db #01,#c8,#00,#d8,#01,#a8,#01,#d8
	db #01,#a8,#01,#d8,#01,#a8,#01,#d8
	db #01,#ff,#be,#00,#d6,#01,#a6,#11
	db #d6,#01,#a6,#11,#be,#00,#be,#00
	db #d6,#01,#be,#00,#d6,#01,#a6,#01
	db #d6,#01,#a6,#01,#d6,#01,#a6,#01
	db #d6,#01,#bc,#00,#d4,#01,#a6,#01
	db #d4,#01,#a6,#01,#bc,#00,#bc,#00
	db #d4,#01,#bc,#00,#d4,#01,#a4,#01
	db #d4,#01,#a4,#01,#d4,#01,#a4,#01
	db #d4,#01,#b9,#00,#e9,#01,#e9,#01
	db #e9,#01,#d1,#01,#e9,#01,#b9,#00
	db #d1,#01,#b9,#00,#d1,#01,#e9,#01
	db #e9,#01,#d1,#01,#e9,#01,#d1,#01
	db #e9,#01,#c8,#00,#d4,#01,#a4,#01
	db #d4,#01,#a4,#01,#c8,#00,#c8,#00
	db #d4,#01,#c8,#00,#d8,#01,#a8,#01
	db #d8,#01,#a8,#01,#d8,#01,#a8,#01
	db #d8,#01,#ff,#be,#00,#d6,#01,#a6
	db #11,#d6,#01,#a6,#11,#be,#00,#be
	db #00,#d6,#01,#be,#00,#d6,#01,#a6
	db #01,#d6,#01,#a6,#01,#d6,#01,#a6
	db #01,#d6,#01,#bc,#00,#d4,#01,#a6
	db #01,#d4,#01,#a6,#01,#bc,#00,#bc
	db #00,#d4,#01,#bc,#00,#d4,#01,#a4
	db #01,#d4,#01,#a4,#01,#d4,#01,#a4
	db #01,#d4,#01,#b9,#00,#e9,#01,#e9
	db #01,#e9,#01,#d1,#01,#e9,#01,#b9
	db #00,#d1,#01,#b9,#00,#d1,#01,#e9
	db #01,#e9,#01,#d1,#01,#e9,#01,#d1
	db #01,#e9,#01,#c8,#00,#d4,#01,#a4
	db #01,#d4,#01,#a4,#01,#c8,#00,#c8
	db #00,#d4,#01,#c8,#00,#d8,#01,#a8
	db #01,#d8,#01,#a8,#01,#d8,#01,#a8
	db #01,#d8,#01,#ff,#be,#01,#e2,#01
	db #e2,#01,#e2,#01,#4a,#82,#3e,#02
	db #00,#be,#00,#62,#02,#01,#e2,#01
	db #4a,#84,#c8,#00,#d4,#01,#d4,#01
	db #d4,#01,#48,#82,#48,#02,#00,#c8
	db #00,#54,#02,#01,#d4,#01,#48,#84
	db #bc,#00,#d4,#01,#d4,#01,#d4,#01
	db #48,#82,#3c,#02,#00,#bc,#00,#54
	db #02,#01,#d4,#01,#48,#84,#b4,#00
	db #d8,#01,#d8,#01,#d8,#01,#40,#82
	db #34,#02,#00,#b4,#00,#58,#02,#01
	db #d8,#01,#34,#02,#00,#34,#82,#ff
	db #43,#06,#02,#46,#86,#4a,#84,#48
	db #86,#4c,#86,#48,#84,#45,#86,#48
	db #86,#4c,#84,#4d,#8c,#45,#84,#ff
	db #43,#06,#b2,#02,#46,#06,#b2,#03
	db #4a,#04,#b2,#05,#48,#06,#b2,#06
	db #4c,#06,#b2,#07,#48,#04,#b2,#09
	db #45,#86,#48,#06,#b2,#0b,#4c,#84
	db #4d,#0c,#b2,#0d,#45,#04,#b2,#0f
	db #ff,#00,#40
.l5094
	db #ff
;
.music_info
	db "Impact Demo Number Three - Demineur (1994)(Impact)()",0
	db "ST-Module",0

	read "music_end.asm"
