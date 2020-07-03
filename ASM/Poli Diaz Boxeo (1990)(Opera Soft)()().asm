; Music of Poli Diaz Boxeo (1990)(Opera Soft)()()
; Ripped by Megachur the 19/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "POLIDIAB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #a13d

	read "music_header.asm"

	call la441
	ei
	ret
.la142
	db #62,#0c,#67,#02,#e7,#a2,#3c,#10
	db #6b,#02,#3c,#10,#34,#08,#37,#08
	db #6c,#40,#10,#3c,#08,#3c,#08,#3c
	db #10,#40,#10,#6b,#02,#40,#10,#37
	db #08,#3c,#08,#6c,#43,#10,#40,#08
	db #40,#08,#40,#20,#3e,#10,#35,#08
	db #39,#08,#6b,#02,#3e,#10,#3e,#08
	db #6c,#3e,#30,#66,#10,#6b,#03,#3e
	db #08,#6c,#3e,#10,#3e,#28,#40,#08
	db #43,#18,#6b,#02,#6b,#02,#45,#28
	db #40,#08,#43,#08,#45,#28,#45,#08
	db #47,#18,#6d,#ac,#a1,#40,#28,#45
	db #08,#47,#08,#40,#28,#40,#08,#43
	db #18,#6c,#40,#80,#66,#10,#3e,#08
	db #3c,#08,#3e,#18,#3c,#08,#3e,#08
	db #40,#48,#6d,#d6,#a1,#3c,#08,#3c
	db #08,#3c,#10,#3c,#08,#39,#10,#39
	db #08,#37,#20,#35,#10,#34,#e0,#40
	db #08,#43,#18,#6c,#48,#08,#48,#08
	db #48,#10,#48,#08,#45,#10,#45,#08
	db #43,#20,#41,#10,#40,#e0,#69,#88
	db #a1
.la1eb
	db #62,#0a,#66,#10,#66,#80,#66,#80
	db #66,#60,#1d,#20,#1c,#3c,#66,#04
	db #1c,#20,#66,#20,#62,#0d,#6b,#02
	db #67,#04,#01,#a3,#1a,#38,#67,#02
	db #01,#a3,#23,#08,#24,#08,#25,#08
	db #26,#18,#1a,#18,#1c,#10,#1a,#10
	db #1c,#18,#24,#08,#26,#08,#27,#08
	db #28,#18,#1c,#18,#6c,#1a,#10,#26
	db #18,#1a,#10,#1b,#08,#1c,#10,#28
	db #18,#1c,#10,#1c,#08,#67,#04,#01
	db #a3,#1d,#28,#21,#08,#24,#10,#29
	db #28,#24,#08,#29,#10,#1c,#38,#23
	db #08,#28,#38,#23,#08,#67,#02,#01
	db #a3,#2b,#08,#29,#08,#6b,#02,#28
	db #08,#26,#08,#6c,#24,#08,#23,#08
	db #24,#08,#23,#08,#21,#08,#1f,#08
	db #21,#08,#1f,#08,#1d,#08,#1c,#08
.la276 equ $ + 3
	db #69,#ff,#a1,#62,#0c,#67,#02,#e7
	db #a2,#37,#10,#6b,#02,#37,#10,#37
	db #08,#37,#08,#6c,#37,#10,#37,#08
	db #37,#08,#37,#10,#3c,#10,#6b,#02
	db #3c,#10,#3c,#08,#3c,#08,#6c,#3c
	db #10,#3c,#08,#3c,#08,#3c,#20,#39
	db #10,#39,#08,#6b,#02,#39,#08,#39
	db #10,#6c,#39,#08,#39,#30,#66,#10
	db #6b,#03,#39,#08,#6c,#39,#10,#39
	db #28,#67,#01,#ff,#a2,#65,#1f,#63
	db #66,#08,#64,#67,#01,#01,#a3,#65
	db #00,#63,#66,#18,#64,#67,#01,#ff
	db #a2,#65,#1f,#63,#66,#10,#64,#67
	db #01,#01,#a3,#65,#00,#63,#66,#10
	db #64,#69,#d0,#a2,#fe,#fe,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#81,#fd,#80,#ff,#80
	db #64,#62,#0f,#67,#01,#01,#a3,#51
	db #19,#60,#64,#62,#0f,#67,#01,#01
	db #a3,#5c,#19,#60,#64,#65,#1f,#62
	db #0f,#67,#04,#36,#a3,#63,#66,#3c
	db #60,#64,#65,#1f,#62,#0f,#67,#01
	db #36,#a3,#68,#01,#38,#a3,#63,#18
.la335 equ $ + 2
	db #0f,#64,#60,#fe,#80,#04,#80,#64
	db #62,#0f,#65,#1e,#63,#66,#01,#65
	db #18,#66,#01,#65,#12,#66,#01,#65
	db #0c,#66,#01,#65,#06,#66,#01,#65
	db #00,#66,#01,#64,#60
;
.init_music
.la358	; init !?
;
	ld hl,la142
	ld de,la1eb
	ld bc,la276
	jp la390
;
.stop_music
.la364
;
	ld hl,la335
	ld de,la335
	ld bc,la335
	call la390
	jp la441
.la373
	dw la750,la636,la72c,la712
	dw la735,la637,la5c4,la642
	dw la654,la666,la687,la6d7
	dw la6e4,la672
.la38f
	db #80
.la390
	di
	push hl
	push de
	push bc
	ld hl,la763
	ld (hl),#00
	ld de,la764
	ld bc,#0047
	ldir
	ld a,#38
	ld (la7ac),a
	pop bc
	pop de
	pop hl
	xor a
	call la3ef
	push de
	pop hl
	ld a,#01
	call la3ef
	push bc
	pop hl
	ld a,#02
	call la3ef
	ei
	ret
	xor a
	call la3d3
	jp z,la3ef
	inc a
	call la3d3
	jp z,la3ef
	inc a
	call la3d3
	jp z,la3ef
	ret
.la3d3
	ld c,a
	or a
	jr z,la3e8
	dec a
	jr z,la3e1
	ld a,(la793)
	bit 7,a
	ld a,c
	ret
.la3e1
	ld a,(la77b)
	bit 7,a
	ld a,c
	ret
.la3e8
	ld a,(la763)
	bit 7,a
	ld a,c
	ret
.la3ef
	push af
	push ix
	push de
	or a
	jr nz,la3ff
	ld ix,la763
	ld de,la7ae
	jr la412
.la3ff
	dec a
	jr nz,la40b
	ld ix,la77b
	ld de,la7ba
	jr la412
.la40b
	ld ix,la793
	ld de,la7c6
.la412
	ld (ix+#10),l
	ld (ix+#11),h
	ld hl,la38f
	ld (ix+#04),l
	ld (ix+#05),h
	ld (ix+#0a),l
	ld (ix+#0b),h
	ld (ix+#12),e
	ld (ix+#16),e
	ld (ix+#13),d
	ld (ix+#17),d
	xor a
	ld (ix+#03),a
	set 7,a
	ld (ix+#00),a
	pop de
	pop ix
	pop af
	ret
;
.play_music
.la441			; play ?
;
	push ix
	ld ix,la763
	ld a,#01
	call la4e4
	ld ix,la77b
	ld a,#02
	call la4e4
	ld ix,la793
	ld a,#03
	call la4e4
	call la464
	pop ix
	ret
.la464
	ld ix,la763
	bit 6,(ix+#00)
	jr nz,la486
	ld a,#0a
	ld c,(ix+#14)
	call la7ea
	ld a,#04
	ld c,(ix+#01)
	call la7ea
	ld a,#05
	ld c,(ix+#02)
	call la7ea
.la486
	ld ix,la77b
	bit 6,(ix+#00)
	jr nz,la4a8
	ld a,#09
	ld c,(ix+#14)
	call la7ea
	ld a,#02
	ld c,(ix+#01)
	call la7ea
	ld a,#03
	ld c,(ix+#02)
	call la7ea
.la4a8
	ld ix,la793
	bit 6,(ix+#00)
	jr nz,la4ca
	ld a,#08
	ld c,(ix+#14)
	call la7ea
	ld a,#00
	ld c,(ix+#01)
	call la7ea
	ld a,#01
	ld c,(ix+#02)
	call la7ea
.la4ca
	ld a,(la7ac)
	ld c,a
	ld a,#07
	call la7ea
	ld a,(la7ab)
	bit 7,a
	ret z
	res 7,a
	ld (la7ab),a
	ld c,a
	ld a,#06
	jp la7ea
.la4e4
	bit 7,(ix+#00)
	jr nz,la4ef
	set 6,(ix+#00)
	ret
.la4ef
	ld (la7ad),a
	ld a,(ix+#03)
	or a
	jr z,la54f
	dec (ix+#03)
	call la55f
	bit 2,(ix+#00)
	ret nz
	ld a,(ix+#0e)
	or a
	jr z,la50d
	dec (ix+#0e)
	ret
.la50d
	ld a,(ix+#0f)
	ld (ix+#0e),a
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,#80
	cp (hl)
	jr nz,la528
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	cp (hl)
	ret z
	jr la532
.la528
	ld a,#81
	cp (hl)
	jr nz,la532
	set 2,(ix+#00)
	ret
.la532
	ld c,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld l,(ix+#01)
	ld h,(ix+#02)
	ld b,#00
	bit 7,c
	jr z,la547
	dec b
.la547
	add hl,bc
	ld (ix+#01),l
	ld (ix+#02),h
	ret
.la54f
	bit 0,(ix+#00)
	jr nz,la55a
	call la5a9
	jr la54f
.la55a
	res 0,(ix+#00)
	ret
.la55f
	bit 1,(ix+#00)
	ret nz
	ld a,(ix+#08)
	or a
	jr z,la56e
	dec (ix+#08)
	ret
.la56e
	ld a,(ix+#09)
	ld (ix+#08),a
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld a,#80
	cp (hl)
	jr nz,la589
	ld l,(ix+#04)
	ld h,(ix+#05)
	cp (hl)
	ret z
	jr la593
.la589
	ld a,#81
	cp (hl)
	jr nz,la593
	set 1,(ix+#00)
	ret
.la593
	ld c,(hl)
	inc hl
	ld (ix+#06),l
	ld (ix+#07),h
	ld a,(ix+#14)
	add c
	ld c,a
	bit 7,a
	jr z,la5a5
	xor a
.la5a5
	ld (ix+#14),a
	ret
.la5a9
	ld l,(ix+#10)
	ld h,(ix+#11)
	ld a,(hl)
	cp #60
	jr c,la5d1
	sub #60
	add a
	push hl
	ld e,a
	ld d,#00
	ld hl,la373
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	jp (hl)
.la5c4
	pop hl
	inc hl
	ld c,(hl)
	dec c
	ld (ix+#03),c
	ld de,#0000
	push hl
	jr la5fa
.la5d1
	inc hl
	ld c,(hl)
	dec c
	ld (ix+#03),c
	push hl
	ld hl,la75a
	ld b,#ff
.la5dd
	cp (hl)
	jr c,la5e4
	inc b
	inc hl
	jr la5dd
.la5e4
	dec hl
	sub (hl)
	ld l,a
	ld h,#00
	add hl,hl
	ld de,la7d2
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc b
	jr la5f8
.la5f4
	srl d
	rr e
.la5f8
	djnz la5f4
.la5fa
	ld (ix+#00),#81
	ld (ix+#01),e
	ld (ix+#02),d
	ld a,(ix+#15)
	bit 7,a
	jr z,la60c
	xor a
.la60c
	ld (ix+#14),a
	ld e,(ix+#04)
	ld d,(ix+#05)
	ld (ix+#06),e
	ld (ix+#07),d
	ld a,(ix+#09)
	ld (ix+#08),a
	ld e,(ix+#0a)
	ld d,(ix+#0b)
	ld (ix+#0c),e
	ld (ix+#0d),d
	ld a,(ix+#0f)
	ld (ix+#0e),a
	jp la6ac
.la636
	ret
.la637
	pop hl
	inc hl
	ld a,(hl)
	or #80
	ld (la7ab),a
.la63f
	jp la6ad
.la642
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#04),e
	ld (ix+#05),d
	jr la63f
.la654
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#0a),e
	ld (ix+#0b),d
	jr la6ad
.la666
	pop hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#10),e
	ld (ix+#11),d
	ret
.la672
	call la703
	call la6c6
	dec b
	jr z,la666
	inc b
	call la6b5
	call la6f9
	pop hl
	inc hl
	inc hl
	jr la6ad
.la687
	pop hl
	ld l,(ix+#12)
	ld h,(ix+#13)
	ld e,(ix+#16)
	ld d,(ix+#17)
	or a
	sbc hl,de
	jr z,la6a3
	call la6c6
	ld (ix+#10),e
	ld (ix+#11),d
	ret
.la6a3
	ld (ix+#00),#01
	ld (ix+#14),#00
	ret
.la6ac
	pop hl
.la6ad
	inc hl
	ld (ix+#10),l
	ld (ix+#11),h
	ret
.la6b5
	ld l,(ix+#12)
	ld h,(ix+#13)
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (ix+#12),l
	ld (ix+#13),h
	ret
.la6c6
	ld l,(ix+#12)
	ld h,(ix+#13)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld (ix+#12),l
	ld (ix+#13),h
	ret
.la6d7
	pop hl
	inc hl
	ld b,(hl)
	ex de,hl
	call la6b5
	call la6f9
	ex de,hl
.la6e2
	jr la6ad
.la6e4
	call la703
	call la6c6
	dec b
	jr z,la6ac
	pop hl
	ld l,e
	ld h,d
	push hl
	call la6b5
	call la6f9
	jr la6ac
.la6f9
	ld l,(ix+#12)
	ld h,(ix+#13)
	ld (hl),b
	inc hl
	jr la70b
.la703
	ld l,(ix+#12)
	ld h,(ix+#13)
	dec hl
	ld b,(hl)
.la70b
	ld (ix+#12),l
	ld (ix+#13),h
	ret
.la712
	ld hl,la7ac
	ld a,(la7ad)
	cp #03
	jr nz,la720
	res 3,(hl)
	jr la6ac
.la720
	cp #02
	jr nz,la728
	res 4,(hl)
	jr la6ac
.la728
	res 5,(hl)
	jr la6ac
.la72c
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#15),a
	jp la6e2
.la735
	ld hl,la7ac
	ld a,(la7ad)
	cp #03
	jr nz,la744
	set 3,(hl)
.la741
	jp la6ac
.la744
	cp #02
	jr nz,la74c
	set 4,(hl)
	jr la741
.la74c
	set 5,(hl)
	jr la741
.la750
	pop hl
	ld (ix+#00),#01
	ld (ix+#14),#00
	ret
.la75a
	db #00,#0c,#18,#24,#30,#3c,#48,#54
	db #60
.la764 equ $ + 1
.la763
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la77b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la793
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la7ae equ $ + 3
.la7ad equ $ + 2
.la7ac equ $ + 1
.la7ab
	db #49,#38,#01,#00,#00,#00,#00,#00
.la7ba equ $ + 7
	db #00,#00,#7a,#8f,#a9,#36,#cb,#6d
	db #60,#3f,#f0,#00,#33,#ff,#ff,#ff
.la7c6 equ $ + 3
	db #ff,#cc,#00,#0f,#fc,#68,#d6,#15
	db #b2,#54,#ec,#00,#00,#00,#00
.la7d2
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
.la7ea
	push bc
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
	pop bc
	ret
;
; #980c
; call #a364	; stop music
;
; #b09c
; call #a358	; init music
;
.music_info
	db "Poli Diaz Boxeo (1990)(Opera Soft)()",0
	db "",0

	read "music_end.asm"
