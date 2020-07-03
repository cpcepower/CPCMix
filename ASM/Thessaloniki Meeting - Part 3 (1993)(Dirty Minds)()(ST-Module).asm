; Music of Thessaloniki Meeting - Part 3 (1993)(Dirty Minds)()(ST-Module)
; Ripped by Megachur the 16/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THESSMP3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #4000

	read "music_header.asm"

	jp l400b
	jp l4093
	jp l4077
	db #66,#04
;
.init_music
.l400b
;
	ld b,#03
	ld ix,l43da
	ld iy,l4306
	ld de,#001c
.l4018
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
	djnz l4018
	ld a,#06
	ld (l40bb),a
	ld a,d
	ld (l40cf),a
	inc a
	ld (l40b6),a
	ld a,#38
	ld (l40c0),a
	ld a,#ff
	ld (l4302),a
	ld (l4303),a
	ld (l4304),a
	ld (l4305),a
	ld a,#0c
	ld c,d
	call l42e4
	ld a,#0d
	ld c,d
	jp l42e4
;
.stop_music
.l4077
;
	ld a,#07
	ld c,#3f
	call l42e4
	ld a,#08
	ld c,#00
	call l42e4
	ld a,#09
	ld c,#00
	call l42e4
	ld a,#0a
	ld c,#00
	jp l42e4
;
.play_music
.l4093
;
	ld hl,l40b6
	dec (hl)
	ld ix,l43da
	ld bc,l43e8
	call l4149
	ld ix,l43f6
	ld bc,l4404
	call l4149
	ld ix,l4412
	ld bc,l4420
	call l4149
.l40b6 equ $ + 1
	ld a,#06
	or a
	jr nz,l40bf
.l40bb equ $ + 1
	ld a,#06
	ld (l40b6),a
.l40c0 equ $ + 1
.l40bf
	ld a,#18
	ld hl,l4303
	cp (hl)
	jr z,l40ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l42e4
.l40cf equ $ + 1
.l40ce
	ld a,#01
	ld hl,l4302
	cp (hl)
	jr z,l40dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l42e4
.l40de equ $ + 1
.l40dd
	ld a,#00
	ld hl,l4304
	cp (hl)
	jr z,l40ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l42e4
.l40ed equ $ + 1
.l40ec
	ld a,#00
	ld hl,l4305
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l42e4
.l40fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l41fa
.l4109
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
	jp l42e4
.l4123
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l4138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l4138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l415c
.l4149
	ld a,(l40b6)
	or a
	jp nz,l41fa
	dec (ix+#06)
	jp nz,l41fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l415c
	ld a,(hl)
	or a
	jr z,l40fa
	cp #fe
	jr z,l4109
	cp #ff
	jr z,l4123
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l430c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l4198
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l4198
	and #7f
	ld (ix+#06),a
	jr l41eb
.l4198
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l41ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l41ac
	add a
	add a
	add a
	ld e,a
	ld hl,l4442
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
	jr z,l41eb
	cp #f0
	jp z,l42a0
	cp #d0
	jp z,l42bc
	cp #b0
	jp z,l42c4
	cp #80
	jp nc,l42cc
	cp #10
	jr nz,l41eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l41eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l41fa
	ld a,(ix+#17)
	or a
	jr nz,l420e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l420e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l4239
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l430c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l4239
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
	call l42e4
	ld c,h
	ld a,(ix+#03)
	call l42e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4277
	and #0f
	sub (ix+#0a)
	jr nc,l426d
	xor a
.l426d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l42e4
.l4277
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
	jr z,l4294
	ld b,a
	ld a,c
	ld (l40cf),a
	ld a,b
	sub #40
.l4294
	ld (l429b),a
	ld a,(l40c0)
.l429b equ $ + 1
	res 5,a
	ld (l40c0),a
	ret
.l42a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l44c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l41eb
.l42bc
	inc hl
	ld a,(hl)
	ld (l40bb),a
	jp l41eb
.l42c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l41eb
.l42cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l40ed),a
	inc hl
	ld a,(hl)
	ld (l40de),a
	jp l41eb
.l42e4
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
.l4305 equ $ + 3
.l4304 equ $ + 2
.l4303 equ $ + 1
.l4302
	db #01,#18,#00,#00
.l4306
	dw l4762,l477d,l4798
.l430c
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
.l43da
	db #d8,#47,#00,#01,#08,#03,#01,#26
.l43e8 equ $ + 6
	db #00,#00,#00,#df,#6b,#47,#62,#45
	db #a2,#45,#c2,#45,#00,#00,#01,#1f
.l43f6 equ $ + 4
	db #d5,#00,#42,#47,#a6,#48,#02,#03
	db #09,#07,#01,#32,#00,#00,#00,#e7
.l4404 equ $ + 2
	db #86,#47,#e2,#46,#22,#47,#c2,#45
	db #10,#10,#01,#1f,#6a,#00,#42,#47
.l4412
	db #e2,#49,#04,#05,#0a,#06,#01,#56
.l4420 equ $ + 6
	db #00,#00,#00,#ef,#a1,#47,#62,#46
	db #a2,#46,#c2,#46,#00,#00,#01,#1f
	db #1b,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l4442
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #e2,#44,#22,#45,#42,#45,#00,#00
	db #25,#92,#21,#f3,#fc,#40,#00,#ff
	db #62,#45,#a2,#45,#c2,#45,#00,#00
	db #e2,#45,#22,#46,#42,#46,#00,#00
	db #da,#3e,#a6,#3f,#74,#3d,#50,#30
	db #62,#46,#a2,#46,#c2,#46,#00,#00
	db #e2,#46,#22,#47,#c2,#45,#10,#10
	db #e2,#3e,#8b,#57,#51,#3d,#f0,#30
	db #e5,#14,#dc,#3e,#dc,#3e,#00,#00
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
	db #dc,#3e,#dc,#3e,#dc,#3e,#00,#00
.l44c2
	db #42,#47,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0b,#0a,#09
	db #09,#08,#08,#07,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #38,#00,#60,#00,#b0,#00,#18,#01
	db #48,#01,#80,#01,#c8,#01,#10,#02
	db #58,#02,#b0,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0c,#0b,#09,#07
	db #06,#03,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#06,#06,#05,#04,#04,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
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
	db #0f,#0d,#0b,#09,#07,#05,#03,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0b
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4762
	db #00,#b3,#47,#00,#b3,#47,#00,#b3
	db #47,#00,#b3,#47,#00,#b3,#47,#00
	db #b3,#47,#00,#b3,#47,#00,#b3,#47
.l477d equ $ + 3
	db #80,#62,#47,#00,#35,#48,#00,#35
	db #48,#00,#81,#48,#00,#81,#48,#00
	db #35,#48,#00,#35,#48,#00,#f5,#48
.l4798 equ $ + 6
	db #00,#f5,#48,#80,#7d,#47,#00,#3d
	db #49,#00,#3d,#49,#00,#be,#49,#00
	db #be,#49,#00,#3d,#49,#00,#3d,#49
	db #00,#3d,#49,#00,#3d,#49,#80,#98
	db #47,#a4,#f3,#00,#b0,#03,#bc,#03
	db #a4,#03,#b0,#03,#bc,#03,#a4,#03
	db #bc,#03,#a4,#03,#b0,#03,#bc,#03
	db #a4,#03,#b0,#03,#bc,#03,#a4,#03
	db #bc,#03,#a4,#03,#b0,#03,#bc,#03
	db #a4,#03,#b0,#03,#bc,#03,#a4,#03
	db #bc,#03,#a4,#03,#b0,#03,#bc,#03
	db #a4,#03,#b0,#03,#bc,#03,#a4,#03
	db #bc,#03,#a2,#03,#ae,#03,#ba,#03
	db #a2,#03,#ae,#03,#ba,#03,#a2,#03
	db #ba,#03,#a2,#03,#ae,#03,#ba,#03
	db #a2,#03,#ae,#03,#ba,#03,#a2,#03
	db #ba,#03,#9d,#03,#a9,#03,#b5,#03
	db #9d,#03,#a9,#03,#b5,#03,#9d,#03
	db #b5,#03,#9d,#03,#a9,#03,#b5,#03
	db #9d,#03,#a9,#03,#b5,#03,#9d,#03
	db #b5,#03,#ff,#48,#02,#f7,#00,#48
	db #02,#07,#c6,#07,#48,#82,#c8,#07
	db #48,#82,#48,#82,#46,#82,#48,#83
	db #48,#82,#c8,#07,#c6,#07,#48,#83
	db #cb,#07,#cb,#07,#4a,#82,#4b,#82
	db #4a,#82,#46,#82,#46,#82,#c4,#07
	db #46,#83,#c6,#07,#46,#82,#c6,#07
	db #44,#82,#46,#82,#4d,#82,#4d,#82
	db #cb,#07,#4d,#82,#4d,#82,#cd,#07
	db #4b,#82,#4d,#82,#4b,#82,#ff,#bc
	db #f7,#00,#bc,#07,#bf,#07,#bf,#07
	db #c3,#07,#c3,#07,#c8,#07,#c8,#07
	db #cb,#07,#cb,#07,#ca,#07,#ca,#07
	db #c8,#07,#c8,#07,#cf,#07,#cf,#07
	db #bc,#07,#bc,#07,#bf,#07,#bf,#07
	db #c3,#07,#c3,#07,#c8,#07,#c8,#07
	db #cb,#07,#cb,#07,#ca,#07,#ca,#07
	db #c8,#07,#c8,#07,#cf,#07,#cf,#07
	db #ba,#07,#ba,#07,#be,#07,#be,#07
	db #c1,#07,#c1,#07,#c6,#07,#c6,#07
	db #ca,#07,#ca,#07,#c8,#07,#c8,#07
	db #c6,#07,#c6,#07,#c8,#07,#c8,#07
	db #4d,#82,#48,#82,#c6,#07,#48,#82
	db #4d,#82,#cd,#07,#48,#82,#46,#82
	db #48,#82,#ff,#cf,#f7,#00,#cb,#07
	db #ca,#07,#cb,#07,#ca,#07,#cb,#07
	db #ca,#07,#48,#83,#43,#82,#48,#82
	db #cb,#07,#4a,#82,#ca,#07,#4b,#82
	db #4a,#82,#48,#8a,#cf,#07,#ca,#07
	db #c8,#07,#ca,#07,#c8,#07,#ca,#07
	db #c8,#07,#46,#83,#4f,#82,#4d,#82
	db #cf,#07,#4d,#82,#cb,#07,#ca,#07
	db #4b,#82,#ca,#07,#c8,#07,#c6,#07
	db #41,#88,#ff,#ba,#11,#e0,#06,#e0
	db #06,#e0,#06,#ba,#04,#e0,#06,#e0
	db #06,#ba,#01,#e0,#06,#ba,#01,#ba
	db #01,#e0,#06,#ba,#04,#e0,#06,#e0
	db #06,#e0,#06,#ba,#01,#e0,#06,#e0
	db #06,#e0,#06,#ba,#04,#e0,#06,#ba
	db #01,#ba,#01,#ba,#01,#e0,#06,#e0
	db #06,#e0,#06,#ba,#04,#ba,#04,#e0
	db #06,#ba,#04,#ba,#01,#de,#06,#de
	db #06,#de,#06,#ba,#04,#de,#06,#de
	db #06,#ba,#01,#de,#06,#ba,#01,#ba
	db #01,#de,#06,#ba,#04,#de,#06,#de
	db #06,#de,#06,#ba,#01,#d9,#06,#d9
	db #06,#d9,#06,#ba,#04,#d9,#06,#ba
	db #01,#ba,#01,#ba,#01,#d9,#06,#d9
	db #06,#d9,#06,#ba,#04,#ba,#04,#ba
	db #04,#ba,#04,#ff,#ba,#11,#e0,#06
	db #e0,#06,#e0,#06,#ba,#04,#e0,#06
	db #e0,#06,#ba,#01,#e0,#06,#ba,#01
	db #ba,#01,#e0,#06,#ba,#04,#e0,#06
	db #e0,#06,#e0,#06,#ba,#01,#e0,#06
	db #e0,#06,#e0,#06,#ba,#04,#e0,#06
	db #ba,#01,#ba,#01,#ba,#01,#e0,#06
	db #e0,#06,#e0,#06,#ba,#04,#ba,#04
	db #e0,#06,#ba,#04,#ba,#01,#de,#06
	db #de,#06,#de,#06,#ba,#04,#de,#06
	db #de,#06,#ba,#01,#de,#06,#ba,#01
	db #ba,#01,#de,#06,#ba,#04,#de,#06
	db #de,#06,#de,#06,#ba,#01,#d9,#06
	db #d9,#06,#d9,#06,#ba,#04,#d9,#06
	db #ba,#01,#ba,#01,#ba,#01,#d9,#06
	db #d9,#06,#d9,#06,#ba,#04,#ba,#04
	db #ba,#04,#ba,#04,#ff
;
.music_info
	db "Thessaloniki Meeting - Part 3 (1993)(Dirty Minds)()",0
	db "ST-Module",0

	read "music_end.asm"
