; Music of Soccer Skills (1989)(Codemasters)(David Whittaker)()
; Ripped by Megachur the 24/01/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SOCCERSK.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #9013
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

;
.init_music
;
	push af
	call l919f
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l963e
	add hl,bc
	ld a,(hl)
	ld (l90ca),a
	inc hl
	ld ix,l9068
	ld c,#19
	ld a,#03
.l9031
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#08),#01
	ld (ix+#00),b
	ld (ix+#15),b
	ld (ix+#17),b
	ld (ix+#03),e
	ld (ix+#04),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	pop hl
	ld (ix+#01),e
	ld (ix+#02),d
	add ix,bc
	dec a
	jr nz,l9031
	dec a
	ld (l94a1),a
	ld (l949f),a
	ret
.l9068
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9081 equ $ + 1
	db #09,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l909a equ $ + 2
	db #00,#12,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#24
;
.play_music
;
	ld a,(l949f)
	ld hl,l94a0
	or (hl)
	ret z
	call l94f7
	ld a,(l949f)
	and a
	jr z,l9115
.l90c5 equ $ + 1
	ld a,#00
	ld (l9111),a
.l90ca equ $ + 1
	ld a,#01
	ld hl,l94a1
	add (hl)
	ld (hl),a
	jr nc,l90e9
	ld b,#00
	ld ix,l9068
	call l9264
	ld ix,l9081
	call l9264
	ld ix,l909a
	call l9264
.l90e9
	ld ix,l9068
	call l92e8
	ld (l93b6),hl
	ld (l93be),a
	ld ix,l9081
	call l92e8
	ld (l93b8),hl
	ld (l93bf),a
	ld ix,l909a
	call l92e8
	ld (l93ba),hl
	ld (l93c0),a
.l9111 equ $ + 1
	ld a,#00
	ld (l93bc),a
.l9115
	ld a,(l949f)
	and a
	jr nz,l9129
	ld (l93be),a
	ld (l93bf),a
	ld (l93c0),a
	ld a,#3f
	ld (l93bd),a
.l9129
	ld a,(l94a0)
	and a
	jr z,l9151
	ld hl,(l93c3)
.l9134 equ $ + 2
	ld (l93b6),hl
	ld a,(l9632)
	ld b,a
	bit 3,a
	jr nz,l9143
	ld a,(l93c9)
	ld (l93bc),a
.l9143
	ld hl,l93bd
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l93cb)
	ld (l93be),a
.l9151
	ld hl,l93c0
	ld d,#0a
.l9156
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,l9156
	ret
.l9177
	ld de,#0a00
.l917a
	call l9184
	dec d
	jp p,l917a
	ld de,#073f
.l9184
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	ret
;
.stop_music
.l919f
;
	xor a
	ld (l949f),a
	ld (l94a0),a
	call l9177
	xor a
	ld (l93be),a
	ld (l93bf),a
	ld (l93c0),a
	ret
	db #9a,#8e,#87,#00,#00,#00,#00,#0f
	db #74,#00,#4e,#38,#60,#87,#04,#94
	db #95,#9a
	pop hl
	jp l919f
	ld c,(ix+#05)
	ld b,(ix+#06)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l91ec
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l91ec
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l9271
	ld a,(ix+#18)
	ld c,a
	and #07
	ld hl,l9381
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#16),a
	jp l9271
	ld a,(ix+#18)
	ld c,a
	and #38
	ld hl,l9381
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#16),a
	jp l9271
	ld hl,l9381
	ld a,(ix+#18)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#16),a
	jr l9271
	ld a,(de)
	ld (ix+#13),a
	inc de
	ld a,(de)
	ld (ix+#12),a
	ld (ix+#14),a
	inc de
	ld (ix+#15),#40
	jr l9271
	ld (ix+#15),b
	jr l9271
	set 1,(ix+#00)
	jr l9271
	ld (ix+#0b),b
	res 5,(ix+#00)
	jr l92a0
	jr l929c
	ld (ix+#17),#ff
	jr l9271
	ld (ix+#17),b
	jr l9271
.l9264
	dec (ix+#08)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l9271
	ld a,(de)
	inc de
	and a
	jp m,l92b7
	ld (ix+#0a),a
	bit 0,(ix+#16)
	jr z,l9283
	ld (l90c5),a
.l9283
	ld l,(ix+#0c)
	ld (ix+#0e),l
	ld h,(ix+#0d)
	ld (ix+#0f),h
	ld a,(hl)
	ld (ix+#10),a
	ld (ix+#0b),a
	ld a,(ix+#07)
	ld (ix+#11),a
.l929c
	set 5,(ix+#00)
.l92a0
	ld a,(ix+#09)
	ld (ix+#08),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#17)
	and a
	jr z,l92b6
	ld (ix+#17),#ff
.l92b6
	ret
.l92b7
	cp #d0
	jr c,l92e0
	add #20
	jr c,l92d9
	add #10
	ld hl,l9447
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#0c),l
	ld (ix+#0d),h
	dec hl
	ld a,(hl)
	ld (ix+#07),a
	jp l9271
.l92d9
	inc a
	ld (ix+#09),a
	jp l9271
.l92e0
	ld hl,l9134
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l92e8
	ld c,(ix+#00)
	bit 5,c
	jr z,l931a
	ld a,(ix+#11)
	sub #01
	ld (ix+#11),a
	jr nc,l9314
	ld a,(ix+#07)
	ld (ix+#11),a
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	inc hl
	ld a,(hl)
	and a
	jp m,l9314
	ld (ix+#0e),l
	ld (ix+#0f),h
	ld (ix+#10),a
.l9314
	ld a,(ix+#10)
	ld (ix+#0b),a
.l931a
	ld a,(ix+#0a)
	ld hl,l93b7
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#15)
	bit 6,l
	jr z,l9377
	ld h,a
	ld b,(ix+#12)
	sla b
	bit 7,l
	ld a,(ix+#14)
	jr z,l9340
	bit 0,c
	jr nz,l935e
.l9340
	bit 5,l
	jr nz,l9350
	sub (ix+#13)
	jr nc,l935b
	set 5,(ix+#15)
	sub a
	jr l935b
.l9350
	add (ix+#13)
	cp b
	jr c,l935b
	res 5,(ix+#15)
	ld a,b
.l935b
	ld (ix+#14),a
.l935e
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l9369
	dec d
.l9369
	add #a0
	jr c,l9375
.l936d
	sla e
	rl d
	add #18
	jr nc,l936d
.l9375
	add hl,de
	ex de,hl
.l9377
	ld a,c
	xor #01
	ld (ix+#00),a
	cpl
	and #03
.l9381 equ $ + 1
	ld a,#38
	jr nz,l938e
	ld a,(l90c5)
	xor #08
	ld (l9111),a
	ld a,#07
.l938e
	ld hl,l93bd
	xor (hl)
	and (ix+#18)
	xor (hl)
	ld (hl),a
	ld a,(ix+#17)
	and a
	jp p,l93b1
	and #7f
	ld (ix+#17),a
	ld a,(ix+#18)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l9111),a
.l93b1
	ex de,hl
	ld a,(ix+#0b)
	ret
.l93bd equ $ + 7
.l93bc equ $ + 6
.l93ba equ $ + 4
.l93b8 equ $ + 2
.l93b7 equ $ + 1
.l93b6
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l93c4 equ $ + 6
.l93c3 equ $ + 5
.l93c0 equ $ + 2
.l93bf equ $ + 1
.l93be
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l93cb equ $ + 5
.l93c9 equ $ + 3
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010b,#00fc
	dw #00ef,#00e1,#00d6,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0085,#007e
	dw #0077,#0070,#006b,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0042,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
.l9447
	dw l9450,l947a,l9481,l9492
.l9450 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#0d,#0c
	db #0b,#0a,#09,#0b,#0a,#09,#08,#07
	db #09,#08,#07,#06,#05,#07,#06,#05
	db #04,#03,#05,#04,#03,#02,#01,#04
	db #03,#02,#01,#03,#02,#01,#02,#01
.l947a equ $ + 3
	db #00,#87,#01,#0f,#0e,#0d,#0c,#0b
.l9481 equ $ + 2
	db #87,#05,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.l9492 equ $ + 3
	db #01,#87,#01,#0e,#0d,#0c,#0b,#0a
	db #09,#0b,#0a,#09,#08,#87,#00,#0f
.l94a1 equ $ + 2
.l94a0 equ $ + 1
.l949f
	db #00,#00,#00
	ld hl,l94a0
	ld (hl),#00
	ld hl,l9594
	add a
	add l
	ld l,a
	jr nc,l94b0
	inc h
.l94b0
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0b
	ld hl,l962c
.l94b8
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l94b8
	ld a,(l962d)
	ld (l9638),a
	ld hl,(l962e)
	ld (l93c3),hl
	ld a,(l9632)
	bit 3,a
	jr nz,l94d5
	ld a,l
	ld (l93c9),a
.l94d5
	ld a,(l9636)
	ld (l9639),a
	ld a,(l9635)
	ld hl,l95ef
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l963a),hl
	ld (l963c),hl
	ld a,(hl)
	ld (l93cb),a
	ld hl,l94a0
	inc (hl)
	ret
.l94f7
	ld a,(l94a0)
	and a
	ret z
	ld a,(l962c)
	and a
	jr nz,l950c
	ld a,(l9637)
	and a
	jr nz,l950c
	ld (l94a0),a
	ret
.l950c
	dec a
	ld (l962c),a
	ld a,(l9638)
	and a
	jr nz,l9538
	ld a,(l9637)
	and a
	jr nz,l9522
	ld a,(l9634)
	and a
	jr z,l956c
.l9522
	dec a
	ld (l9634),a
	ld a,(l962d)
	ld (l9638),a
	ld a,(l962e)
	ld (l93c3),a
	ld a,(l962f)
	ld (l93c4),a
.l9538
	ld hl,l9638
	dec (hl)
	ld a,(l9633)
	and a
	jr z,l955f
	jp p,l9552
	ld hl,(l93c3)
	ld de,(l9630)
	add hl,de
	ld (l93c3),hl
	jr l955f
.l9552
	ld hl,(l93c3)
	ld de,(l9630)
	and a
	sbc hl,de
	ld (l93c3),hl
.l955f
	ld a,(l9632)
	bit 3,a
	jr nz,l956c
	ld a,(l93c3)
	ld (l93c9),a
.l956c
	ld a,(l9639)
	dec a
	ld (l9639),a
	jr nz,l9593
	ld a,(l9636)
	ld (l9639),a
	ld hl,(l963c)
	ld a,(hl)
	inc hl
	and a
	jp p,l958d
	cp #80
	jr nz,l9593
	ld hl,(l963a)
	ld a,(hl)
	inc hl
.l958d
	ld (l963c),hl
	ld (l93cb),a
.l9593
	ret
.l9594
	dw l95a2,l95ad,l95b8,l95c3
	dw l95ce,l95d9,l95e4
.l95a2
	db #0a,#63,#10,#04,#08,#00,#fe,#01
.l95ad equ $ + 3
	db #63,#00,#02,#08,#63,#80,#05,#30
.l95b8 equ $ + 6
	db #00,#fe,#01,#63,#00,#01,#14,#02
	db #1e,#00,#05,#00,#fe,#01,#63,#03
.l95c3 equ $ + 1
	db #01,#0b,#0f,#00,#02,#40,#00,#fe
.l95ce equ $ + 4
	db #ff,#00,#02,#01,#0b,#0f,#00,#04
.l95d9 equ $ + 7
	db #50,#00,#fe,#ff,#00,#02,#01,#0b
	db #0f,#00,#00,#00,#00,#f6,#ff,#00
.l95e4 equ $ + 2
	db #01,#01,#c8,#03,#08,#00,#00,#00
.l95ef equ $ + 5
	db #f7,#ff,#00,#02,#08,#f9,#95,#02
	db #96,#14,#96,#28,#96,#0e,#96,#0e
	db #0d,#0b,#09,#07,#05,#04,#03,#ff
	db #08,#0a,#0c,#0e,#0d,#0c,#0a,#08
	db #06,#04,#00,#ff,#04,#05,#06,#07
	db #08,#09,#0a,#0c,#0e,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#06
	db #05,#05,#04,#04,#03,#ff,#08,#0a
.l9630 equ $ + 6
.l962f equ $ + 5
.l962e equ $ + 4
.l962d equ $ + 3
.l962c equ $ + 2
	db #0b,#ff,#00,#00,#00,#00,#00,#00
.l9639 equ $ + 7
.l9638 equ $ + 6
.l9637 equ $ + 5
.l9636 equ $ + 4
.l9635 equ $ + 3
.l9634 equ $ + 2
.l9633 equ $ + 1
.l9632
	db #00,#00,#00,#00,#00,#00,#00,#00
.l963c equ $ + 2
.l963a
	db #00,#00,#00,#00
.l963e
	db #20
	dw l9775,l9771,l9779
	db #38
	dw l96a0,l969e,l96a2
	db #20
	dw l970a,l9708,l970c
	db #38
	dw l970a,l9708,l970c
	db #20
	dw l9663,l9661,l9665
.l9665 equ $ + 4
.l9663 equ $ + 2
.l9661
	dw l9667,l967a,l968c
.l9667
	db #8a,#88,#01,#01,#d1,#e0,#1c,#e6
	db #1c,#e0,#1a,#e6,#1a,#e1,#19,#eb
.l967a equ $ + 3
	db #d2,#19,#8e,#8a,#88,#01,#01,#d1
	db #e0,#20,#e6,#20,#e0,#1e,#e6,#1e
.l968c equ $ + 5
	db #e1,#1c,#eb,#d2,#1c,#8a,#88,#01
	db #01,#d1,#e0,#23,#e6,#23,#e0,#23
	db #e6,#23,#e1,#21,#eb,#d2,#21
.l96a2 equ $ + 4
.l96a0 equ $ + 2
.l969e
	dw l96a4,l96bc,l96e2
.l96a4
	db #8a,#88,#01,#01,#d1,#e1,#11,#1d
	db #11,#1d,#16,#22,#16,#22,#18,#24
	db #18,#24,#1d,#29,#e7,#d2,#1d,#8e
.l96bc
	db #8a,#88,#01,#01,#d3,#e0,#21,#22
	db #e1,#24,#e0,#2d,#2e,#e1,#30,#e0
	db #22,#24,#e1,#26,#e0,#2e,#30,#e1
	db #32,#e0,#24,#26,#e1,#28,#e0,#30
.l96e2 equ $ + 6
	db #32,#e1,#34,#eb,#d2,#35,#8a,#88
	db #01,#01,#d3,#e0,#1d,#1f,#e1,#21
	db #e0,#29,#2b,#e1,#2d,#e0,#1f,#21
	db #e1,#22,#e0,#2b,#2d,#e1,#2e,#e0
	db #21,#22,#e1,#24,#e0,#2d,#2e,#e1
	db #30,#eb,#d2,#30
.l970c equ $ + 4
.l970a equ $ + 2
.l9708
	dw l970e,l9733,l9752
.l970e
	db #8a,#88,#01,#01,#d1,#e0,#11,#1d
	db #18,#1d,#11,#1d,#18,#1d,#11,#1d
	db #18,#1d,#11,#1d,#18,#1d,#11,#1d
	db #18,#1d,#11,#1d,#18,#1d,#11,#1d
.l9733 equ $ + 5
	db #11,#1d,#e3,#11,#8e,#8a,#88,#01
	db #01,#d1,#e0,#1d,#e3,#1d,#e0,#1d
	db #21,#24,#21,#e3,#21,#e0,#21,#24
	db #29,#24,#e3,#24,#e0,#24,#29,#2d
.l9752 equ $ + 4
	db #30,#e6,#d2,#30,#8a,#88,#01,#01
	db #d1,#e0,#21,#e3,#21,#e0,#21,#24
	db #29,#24,#e3,#24,#e0,#24,#29,#2d
	db #29,#e3,#29,#e0,#29,#2d,#30,#35
	db #e6,#d2,#35
.l9775 equ $ + 4
.l9771
	dw l977d,#0000,l97a5,#0000
.l9779
	dw l97d2,#0000
.l977d
	db #8a,#88,#01,#01,#90,#d1,#e0,#0e
	db #1a,#0e,#1a,#0e,#1a,#0e,#1a,#0e
	db #1a,#0e,#1a,#0e,#1a,#0e,#1a,#0d
	db #19,#0d,#19,#0d,#19,#0d,#19,#0d
	db #19,#0d,#19,#0d,#19,#0d,#19,#87
.l97a5
	db #88,#01,#01,#8a,#d1,#e2,#1d,#e0
	db #21,#21,#e1,#1f,#e8,#1d,#e2,#1d
	db #e0,#20,#20,#e1,#1f,#e6,#1d,#e1
	db #1b,#d0,#e4,#29,#e0,#2d,#2d,#2b
	db #e7,#29,#e4,#29,#e0,#2c,#2c,#2b
.l97d2 equ $ + 5
	db #e5,#29,#e1,#27,#87,#88,#01,#01
	db #8a,#d1,#e2,#21,#e0,#24,#24,#e1
	db #22,#e8,#21,#e2,#20,#e0,#24,#24
	db #e1,#22,#e6,#20,#e1,#1f,#d0,#e4
	db #2d,#e0,#30,#30,#2e,#e7,#2d,#e4
	db #2c,#e0,#30,#30,#2e,#c4,#00,#75
	db #f8,#88
	db #ff,#ff,#ff,#f8,#f7,#ff,#ff,#ff
	db #f0,#f0,#e7,#f8,#f1,#7e,#f0,#f0
	db #f0,#f1,#9f,#7c,#e3,#9f,#f8,#f0
	db #f0,#e3,#79,#3e,#c7,#e9,#7c,#f0
	db #f0,#d6,#87
;
.music_info
	db "Soccer Skills (1989)(Codemasters)(David Whittaker)",0
	db "",0

	read "music_end.asm"
