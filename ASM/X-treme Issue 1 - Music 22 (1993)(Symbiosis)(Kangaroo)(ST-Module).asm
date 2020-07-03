; Music of X-treme Issue 1 - Music 22 (1993)(Symbiosis)(Kangaroo)(ST-Module)
; Ripped by Megachur the 28/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "XTRI1M22.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4009

	read "music_header.asm"

	db #66,#04
;
.init_music
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
	ld a,#00
	or a
	jr nz,l40bf
.l40bb equ $ + 1
	ld a,#00
	ld (l40b6),a
.l40c0 equ $ + 1
.l40bf
	ld a,#00
	ld hl,l4303
	cp (hl)
	jr z,l40ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l42e4
.l40cf equ $ + 1
.l40ce
	ld a,#00
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
	bit 0,a
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
	db #ff,#ff,#ff,#ff
.l4306
	dw l4662,l4677,l468c
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
.l43da equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l43e8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l43f6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l4404 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4412 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l4420 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l4442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#44,#22,#45
	db #42,#45,#00,#00,#dc,#3e,#21,#8d
	db #30,#5f,#4e,#4f,#62,#45,#a2,#45
	db #42,#45,#10,#10,#db,#3e,#fd,#d0
	db #4c,#9d,#23,#56,#ff,#3f,#ec,#3e
	db #e5,#bc,#23,#4e,#da,#3e,#a6,#3f
	db #74,#3d,#50,#30,#c2,#45,#02,#46
	db #22,#46,#00,#00,#e2,#44,#42,#46
	db #42,#45,#18,#07,#e2,#3e,#8b,#57
	db #51,#3d,#f0,#30,#e5,#14,#c8,#7f
	db #d4,#be,#28,#80,#34,#bf,#88,#80
	db #94,#bf,#d8,#80,#b9,#7d,#dd,#3e
	db #b9,#7d,#62,#47,#5e,#86,#b8,#7d
	db #b8,#7d,#dc,#3e,#b9,#7d,#b9,#7d
	db #b9,#7d,#dd,#3e,#b8,#7d,#b8,#7d
	db #b8,#7d,#dc,#3e,#b9,#7d,#b9,#7d
.l44c2 equ $ + 4
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#08
	db #08,#07,#07,#06,#05,#04,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0d,#0c,#0b,#0a
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#38,#00,#60,#00
	db #b0,#00,#18,#01,#48,#01,#80,#01
	db #c8,#01,#10,#02,#58,#02,#b0,#02
	db #00,#00,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0c,#0b,#09,#07,#06,#03,#01,#00
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#06,#06,#05
	db #04,#04,#03,#02,#01,#00,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #08,#08,#08,#07,#07,#07,#06,#06
.l4662 equ $ + 4
	db #06,#05,#05,#05,#00,#a1,#46,#00
	db #a1,#46,#00,#d5,#46,#00,#0a,#47
	db #00,#44,#47,#00,#9f,#47,#80,#68
.l4677 equ $ + 1
	db #46,#00,#06,#48,#00,#09,#48,#00
	db #09,#48,#00,#5b,#48,#00,#09,#48
.l468c equ $ + 6
	db #00,#5b,#48,#80,#7d,#46,#00,#ad
	db #48,#00,#b0,#48,#00,#b3,#48,#00
	db #d5,#48,#00,#f7,#48,#00,#19,#49
	db #80,#92,#46,#3a,#04,#00,#3e,#84
	db #37,#88,#3c,#82,#3e,#82,#3f,#82
	db #3c,#82,#3e,#86,#c1,#00,#bf,#00
	db #3e,#82,#3a,#84,#ba,#00,#be,#00
	db #3f,#82,#43,#84,#3a,#82,#35,#86
	db #41,#82,#41,#82,#c1,#00,#bf,#00
	db #3e,#82,#be,#00,#bc,#00,#ff,#3a
	db #04,#10,#3e,#04,#00,#37,#88,#3c
	db #82,#3e,#82,#3f,#82,#3c,#82,#3e
	db #86,#c1,#00,#bf,#00,#3e,#82,#3a
	db #84,#ba,#00,#be,#00,#3f,#82,#43
	db #84,#3a,#82,#35,#86,#41,#82,#41
	db #82,#c1,#00,#bf,#00,#3e,#82,#be
	db #00,#bc,#00,#ff,#3a,#02,#00,#3e
	db #82,#3a,#82,#b7,#00,#ba,#00,#3c
	db #82,#bc,#00,#be,#00,#3f,#82,#bc
	db #00,#ba,#00,#39,#82,#3c,#82,#35
	db #82,#39,#82,#3a,#82,#be,#00,#bc
	db #00,#3a,#84,#3a,#84,#37,#84,#33
	db #84,#30,#84,#35,#82,#32,#82,#30
	db #82,#35,#82,#2e,#88,#ff,#3a,#04
	db #c0,#1e,#3e,#04,#c0,#18,#37,#08
	db #c0,#24,#3c,#02,#c0,#1b,#3e,#02
	db #c0,#18,#3f,#02,#c0,#16,#3c,#02
	db #c0,#1b,#3e,#06,#c0,#18,#c1,#c0
	db #14,#bf,#c0,#16,#3e,#02,#c0,#18
	db #3a,#04,#c0,#1e,#ba,#c0,#1e,#be
	db #c0,#18,#3f,#02,#c0,#16,#43,#04
	db #c0,#12,#3a,#02,#c0,#1e,#41,#06
	db #c0,#28,#41,#02,#c0,#14,#41,#82
	db #c1,#c0,#14,#bf,#c0,#16,#3e,#02
	db #c0,#18,#be,#c0,#18,#bc,#c0,#1b
	db #ff,#3a,#02,#c0,#1e,#3e,#02,#c0
	db #18,#3a,#02,#c0,#1e,#b7,#c0,#24
	db #ba,#c0,#1e,#3c,#02,#c0,#1b,#bc
	db #c0,#1b,#be,#c0,#18,#3f,#02,#c0
	db #16,#bc,#c0,#1b,#ba,#c0,#1e,#39
	db #02,#c0,#20,#3c,#02,#c0,#1b,#35
	db #02,#c0,#27,#39,#02,#c0,#20,#3a
	db #02,#c0,#1e,#be,#c0,#18,#bc,#c0
	db #1b,#3a,#04,#c0,#1e,#3a,#84,#37
	db #04,#c0,#24,#33,#04,#c0,#2e,#30
	db #04,#c0,#35,#35,#02,#c0,#28,#32
	db #02,#c0,#30,#30,#02,#c0,#35,#35
	db #02,#c0,#28,#22,#08,#c0,#1e,#ff
	db #00,#40,#ff,#22,#02,#07,#2e,#82
	db #3a,#02,#06,#2e,#02,#07,#27,#82
	db #33,#82,#3a,#02,#06,#33,#02,#07
	db #29,#82,#35,#82,#3a,#02,#06,#35
	db #02,#07,#22,#82,#2e,#82,#3a,#02
	db #06,#2e,#02,#07,#22,#82,#2e,#82
	db #3a,#02,#06,#2e,#02,#07,#27,#82
	db #33,#82,#3a,#02,#06,#33,#02,#07
	db #29,#82,#35,#82,#3a,#02,#06,#35
	db #02,#07,#29,#82,#35,#82,#3a,#02
	db #06,#35,#02,#07,#ff,#22,#02,#07
	db #2e,#82,#3a,#02,#06,#2e,#02,#07
	db #27,#82,#33,#82,#3a,#02,#06,#33
	db #02,#07,#29,#82,#35,#82,#3a,#02
	db #06,#35,#02,#07,#22,#82,#2e,#82
	db #3a,#02,#06,#2e,#02,#07,#22,#82
	db #2e,#82,#3a,#02,#06,#2e,#02,#07
	db #27,#82,#33,#82,#3a,#02,#06,#33
	db #02,#07,#29,#82,#35,#82,#3a,#02
	db #06,#35,#02,#07,#22,#82,#2e,#82
	db #3a,#02,#06,#2e,#02,#07,#ff,#00
	db #40,#ff,#00,#40,#ff,#3a,#08,#02
	db #3c,#82,#3e,#82,#3f,#82,#41,#84
	db #43,#82,#45,#82,#46,#8a,#46,#84
	db #41,#84,#43,#86,#43,#82,#41,#82
	db #3f,#84,#3e,#86,#3c,#84,#ff,#3a
	db #08,#02,#3c,#82,#3e,#82,#3f,#82
	db #41,#84,#43,#82,#45,#82,#46,#8a
	db #46,#84,#4a,#84,#46,#88,#45,#82
	db #46,#82,#48,#82,#46,#86,#41,#84
	db #ff,#3a,#08,#02,#3c,#82,#3e,#82
	db #3f,#82,#41,#84,#43,#82,#45,#82
	db #46,#8a,#46,#84,#41,#84,#43,#86
	db #43,#82,#41,#82,#3f,#84,#3e,#86
	db #3c,#84,#ff,#3a,#08,#02,#3c,#82
	db #3e,#82,#3f,#82,#41,#84,#43,#82
	db #45,#82,#46,#8a,#46,#84,#4a,#84
	db #46,#88,#45,#82,#46,#82,#48,#82
	db #46,#86,#41,#84,#ff
;
.music_info
	db "X-treme Issue 1 - Music 22 (1993)(Symbiosis)(Kangaroo)",0
	db "ST-Module",0

	read "music_end.asm"
