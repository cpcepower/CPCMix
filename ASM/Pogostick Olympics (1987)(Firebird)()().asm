; Music of Pogostick Olympics (1987)(Firebird)()()
; Ripped by Megachur the 03/02/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "POGOSTIO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #9000

	read "music_header.asm"

	call l9466
	ret
.l9004
	db #16,#19,#1d,#22,#12,#16,#19,#1e
	db #14,#18,#1b,#20
.l9016 equ $ + 6
.l9010
	dw l9056,l9066,l9076,l909b
	dw l90b1,l90f6,l911c,l9147
	dw l91c0,l923b,l924b,l9291
	dw l9291,l9291,l9291,l9291
.l9036 equ $ + 6
	dw l9291,l9291,l9291,l9291
	dw l92d8,l931d,l93a2,l93e3
.l9046 equ $ + 6
	dw l93e3,l93e3,l93e3,l93e3
	dw l9404,l9425,l9466,l9466
	dw l9466,l9466,l9466
.l9057 equ $ + 1
.l9056
	db #02,#02,#03,#03,#05,#03,#03,#05
	db #07,#07,#03,#03,#05,#07,#07,#00
.l9067 equ $ + 1
.l9066
	db #01,#01,#04,#04,#06,#04,#04,#06
	db #08,#08,#04,#04,#06,#08,#08,#00
.l9077 equ $ + 1
.l9076
	db #01,#01,#02,#02,#03,#02,#02,#03
	db #04,#04,#02,#02,#03,#04,#04,#00
.l9088 equ $ + 2
.l9087 equ $ + 1
.l9086
	db #01,#01,#01,#02,#03,#03,#03,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
.l909b equ $ + 5
	db #03,#03,#03,#03,#00,#c8,#0c,#c7
	db #05,#c3,#03,#f7,#01,#f7,#01,#f7
.l90ac equ $ + 6
	db #01,#f7,#02,#f7,#03,#f7,#03,#f7
.l90b1 equ $ + 3
	db #03,#f7,#00,#c8,#0d,#c7,#01,#c6
	db #c0,#08,#f1,#0a,#0c,#1b,#f1,#0a
	db #f1,#22,#22,#20,#f1,#22,#f1,#20
	db #25,#f1,#25,#24,#f1,#22,#f1,#20
	db #f1,#22,#25,#2e,#2c,#2e,#f3,#06
	db #f1,#08,#0a,#0d,#f1,#08,#f1,#29
.l90e3 equ $ + 5
	db #29,#27,#f1,#25,#f1,#24,#22,#f1
	db #20,#22,#24,#22,#20,#1b,#18,#14
	db #14,#f1,#14,#14,#f1,#08,#08,#00
.l90f6
	db #c8,#0d,#c7,#09,#c6,#31,#f7,#2a
	db #f7,#27,#f7,#24,#f7,#25,#f7,#12
	db #16,#12,#0d,#12,#16,#12,#0d,#2e
	db #2c,#2a,#25,#2a,#2c,#2e,#30,#31
.l911c equ $ + 6
	db #f3,#22,#20,#1e,#19,#00,#c8,#0d
	db #c7,#09,#c4,#01,#f3,#2c,#f3,#f4
	db #29,#f3,#f4,#25,#f3,#f4,#27,#f3
	db #12,#16,#12,#0d,#12,#16,#12,#0d
	db #12,#f7,#2a,#29,#27,#22,#27,#29
	db #2a,#2c,#2c,#f3,#1e,#1d,#1b,#14
.l9147 equ $ + 1
	db #00,#c8,#0d,#c7,#02,#30,#f1,#2c
	db #f1,#30,#f1,#33,#f1,#30,#f1,#30
	db #f1,#f1,#f1,#f2,#2e,#f1,#2a,#f1
	db #2a,#f1,#2a,#f1,#2e,#f1,#2a,#f1
	db #2a,#f1,#2a,#f1,#29,#f1,#29,#f1
	db #25,#f1,#25,#f1,#25,#f1,#f1,#f1
	db #25,#f1,#f1,#f1,#29,#f1,#29,#f1
	db #25,#f1,#25,#f1,#25,#f1,#1d,#f1
	db #19,#f1,#1d,#f1,#30,#f1,#2c,#f1
	db #30,#f1,#33,#f1,#30,#f1,#30,#f1
	db #f1,#f1,#f2,#2e,#f1,#29,#f1,#29
	db #f1,#29,#f1,#2e,#f1,#29,#f1,#29
	db #f1,#29,#f1,#c7,#05,#2e,#2c,#2a
	db #25,#2a,#2c,#2e,#30,#31,#f7,#2e
	db #2c,#2a,#25,#2a,#2c,#2e,#30,#31
.l91c0 equ $ + 2
	db #f7,#00,#c8,#0d,#c7,#02,#f1,#2e
	db #f1,#2e,#f1,#31,#f1,#31,#f1,#31
	db #f1,#2e,#f1,#2c,#f2,#f1,#2c,#f1
	db #2c,#f1,#25,#f1,#2c,#f1,#2c,#f1
	db #2c,#f1,#25,#f1,#2c,#f1,#2a,#f1
	db #27,#f1,#20,#f1,#27,#f1,#f1,#20
	db #f1,#f1,#f1,#27,#f1,#f1,#2a,#f1
	db #27,#f1,#20,#f1,#27,#f1,#20,#f1
	db #20,#f1,#1b,#f1,#20,#f1,#2e,#f1
	db #2e,#f1,#31,#f1,#31,#f1,#31,#f1
	db #2e,#f1,#2c,#f2,#f1,#2c,#f1,#2c
	db #f1,#25,#f1,#2c,#f1,#2c,#f1,#2c
	db #f1,#25,#f1,#2c,#c7,#05,#c8,#0c
	db #31,#f7,#2e,#2c,#2a,#25,#2a,#2c
	db #2e,#30,#31,#f7,#2e,#2c,#2a,#25
.l923b equ $ + 5
	db #2a,#2c,#2e,#30,#00,#c8,#0d,#c7
	db #32,#c5,#16,#f7,#f8,#f8,#f8,#12
.l924b equ $ + 5
	db #f7,#f8,#f8,#f8,#00,#c8,#0f,#c7
	db #01,#c4,#16,#22,#1d,#16,#22,#1d
	db #16,#22,#2e,#2c,#29,#27,#25,#27
	db #29,#20,#16,#22,#1d,#16,#22,#1d
	db #16,#22,#2e,#2c,#29,#27,#25,#27
	db #29,#20,#12,#1e,#19,#12,#1e,#19
	db #12,#1e,#2a,#29,#27,#25,#24,#25
	db #27,#25,#12,#1e,#19,#12,#1e,#19
	db #12,#1e,#2a,#29,#27,#25,#24,#25
.l9291 equ $ + 3
	db #27,#25,#00,#c8,#0f,#c7,#02,#08
	db #f1,#0a,#0c,#0f,#f1,#c7,#06,#0a
	db #f1,#f4,#c7,#02,#08,#f1,#05,#f1
	db #c7,#06,#0a,#f5,#c7,#02,#0a,#08
	db #0a,#f1,#03,#05,#08,#0a,#08,#05
	db #06,#f1,#08,#0a,#0d,#f1,#c7,#06
.l92c5 equ $ + 7
	db #08,#f1,#f4,#c7,#02,#06,#f1,#03
	db #f1,#c7,#06,#08,#f5,#c7,#02,#0c
	db #08,#0f,#11,#0f,#0d,#0f,#0d,#0a
.l92d8 equ $ + 2
	db #08,#00,#c8,#0f,#c7,#03,#01,#01
	db #0d,#01,#01,#01,#0d,#01,#01,#01
	db #0d,#01,#01,#01,#0d,#01,#08,#08
	db #14,#08,#08,#08,#14,#08,#08,#08
	db #14,#08,#08,#08,#14,#08,#06,#06
	db #12,#06,#06,#06,#12,#06,#06,#06
	db #12,#06,#06,#06,#12,#06,#06,#06
	db #12,#06,#06,#06,#12,#06,#06,#06
.l931d equ $ + 7
	db #12,#06,#08,#0a,#12,#06,#00,#c8
	db #0f,#c7,#03,#08,#08,#14,#08,#08
	db #08,#14,#08,#08,#08,#14,#08,#08
	db #08,#14,#08,#06,#06,#12,#06,#06
	db #06,#12,#06,#06,#06,#12,#06,#06
	db #06,#12,#06,#01,#01,#0d,#01,#01
	db #01,#0d,#01,#01,#01,#0d,#01,#03
	db #05,#0d,#08,#01,#01,#0d,#01,#01
	db #01,#0d,#01,#01,#01,#0d,#01,#03
	db #05,#0d,#08,#08,#08,#14,#08,#08
	db #08,#14,#08,#08,#08,#14,#08,#08
	db #08,#14,#08,#0a,#0a,#16,#0a,#0a
	db #0a,#16,#0a,#0a,#0a,#16,#0a,#0a
	db #0a,#16,#0a,#06,#06,#12,#06,#06
	db #06,#12,#06,#06,#06,#12,#06,#08
	db #0a,#0d,#0a,#06,#06,#12,#06,#06
	db #06,#12,#06,#06,#06,#12,#06,#08
.l93a2 equ $ + 4
	db #0a,#0d,#0a,#00,#0a,#0a,#16,#0a
	db #0a,#0a,#16,#0a,#0a,#0a,#16,#0a
	db #0a,#0a,#16,#0a,#0a,#0a,#16,#0a
	db #0a,#0a,#16,#0a,#0a,#0a,#16,#0a
	db #0a,#0a,#16,#0a,#06,#06,#12,#06
	db #06,#06,#12,#06,#06,#06,#12,#06
	db #06,#06,#12,#06,#06,#06,#12,#06
	db #06,#06,#12,#06,#06,#06,#12,#06
.l93e3 equ $ + 5
	db #06,#06,#12,#06,#00,#01,#ff,#ff
	db #ff,#01,#ff,#ff,#ff,#01,#ff,#ff
.l93f1 equ $ + 3
	db #ff,#01,#ff,#ff,#ff,#01,#ff,#ff
	db #ff,#01,#ff,#ff,#ff,#01,#ff,#ff
.l9404 equ $ + 6
	db #ff,#01,#ff,#ff,#ff,#00,#01,#ff
	db #ff,#ff,#01,#ff,#ff,#ff,#01,#ff
	db #ff,#ff,#01,#ff,#ff,#ff,#01,#ff
	db #ff,#ff,#01,#ff,#ff,#ff,#1f,#01
.l9425 equ $ + 7
	db #01,#0f,#0f,#1f,#1f,#1f,#00,#1f
	db #ff,#ff,#ff,#01,#ff,#ff,#ff,#1f
	db #ff,#ff,#1f,#01,#ff,#ff,#1f,#1f
	db #ff,#ff,#ff,#01,#ff,#ff,#ff,#1f
	db #ff,#ff,#1f,#01,#0f,#ff,#1f,#1f
	db #ff,#ff,#ff,#01,#ff,#ff,#ff,#1f
	db #ff,#ff,#1f,#01,#ff,#ff,#1f,#1f
	db #01,#ff,#01,#01,#0f,#ff,#01,#ff
	db #01,#ff,#0f,#0f,#0f,#1f,#1f,#00
.l9466
	di
	ld a,#01
	ld (l98f3),a
	ld hl,#0038
	ld de,l9492
	ld bc,#0003
	ldir
	ld a,#c3
	ld (#0038),a
	ld hl,l949f
	ld (#0039),hl
	ei
	ret
	di
	ld hl,l9492
	ld de,#0038
	ld bc,#0003
	ldir
	ei
	ret
.l9492
	jp #b941
;
.stop_music
;
	xor a
	ld (l98f4),a
	ld (l98f3),a
	jp l97b3
.l949f
	di
	push af
	push bc
	push de
	push hl
	push ix
	ld a,(l98f3)
	and a
	jp nz,l94be
	ld a,(l98f4)
	and a
	jp nz,l9545
.l94b4
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ei
	jp l9492
.l94be
	ld a,#01
	ld (l98f4),a
	ld hl,l9010
	ld ix,l9917
	ld b,#03
	xor a
	ld (l98fb),a
.l94d0
	ld (ix+#05),a
	ld (ix+#0d),a
	ld (ix+#0c),a
	ld (ix+#02),a
	ld (ix+#03),a
	push af
	ld a,(hl)
	ld e,a
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld d,a
	ld (ix+#0b),a
	inc hl
	push hl
	push bc
	ld a,(de)
	inc de
	ld (ix+#06),e
	ld (ix+#07),d
	call l9704
	ld hl,l98fb
	inc (hl)
	pop bc
	pop hl
	pop af
	ld de,#0010
	add ix,de
	djnz l94d0
	ld (l98f5),a
	ld (l98f8),a
	ld (l98f9),a
	ld (l98f6),a
	ld (l990b),a
	ld (l98f3),a
	ld hl,l9941
	ld a,(hl)
	inc hl
	or (hl)
	ld (l98fd),a
	ld b,#38
	jp nz,l9529
	ld b,#3c
.l9529
	ld a,b
	ld (l98fc),a
	ld a,(l9908)
	dec a
	ld (l9909),a
	call l97a7
	ld hl,l9087
	ld (l9911),hl
	dec hl
	ld a,(hl)
	call l95fb
	jp l94b4
;
.real_play_music
.l9545
;
	ld a,(l9913)
	and a
	jp z,l9575
	ld a,(l9914)
	inc a
	ld (l9914),a
	ld hl,l9915
	cp (hl)
	jp nz,l9575
	xor a
	ld (l9914),a
	ld bc,(l9919)
	ld a,(l9916)
	xor #01
	ld (l9916),a
	jp z,l9571
	srl b
	rr c
.l9571
	xor a
	call l978d
.l9575
	ld a,(l9909)
	inc a
	ld (l9909),a
	cp #06
	jp z,l95b3
.l9581
	ld hl,l9908
	cp (hl)
	jp nz,l94b4
	xor a
	ld (l9909),a
	ld a,(l990b)
	inc a
	ld (l990b),a
	ld hl,l990a
	cp (hl)
	jp z,l95a6
	call l97e2
	call l9828
	call l98a1
	jp l94b4
.l95a6
	call l98cb
	call l95c0
	xor a
	ld (l990b),a
	jp l94b4
.l95b3
	ld c,#38
	ld a,#07
	call l97c4
	ld a,(l9909)
	jp l9581
.l95c0
	ld a,(l990c)
	and a
	ret z
.l95c5
	ld hl,(l990f)
	ld a,(hl)
	inc hl
	ld (l990f),hl
	inc a
	ret z
	dec a
	jp nz,l95ee
	ld hl,(l9911)
.l95d6
	ld a,(hl)
	inc hl
	ld (l9911),hl
	and a
	jp z,l95e5
	call l95fb
	jp l95c5
.l95e5
	ld hl,l9086
	ld (l9911),hl
	jp l95d6
.l95ee
	ld c,a
	ld a,#06
	call l97c4
	ld c,#18
	ld a,#07
	jp l97c4
.l95fb
	ld hl,l9046
.l95fe
	dec a
	jp z,l9607
	inc hl
	inc hl
	jp l95fe
.l9607
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l990f),de
	ret
.l960f
	ld a,(ix+#05)
	and a
	jp z,l9641
	dec (ix+#05)
	ret nz
	jp l9641
.l961d
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld a,(hl)
	inc hl
	ld (ix+#06),l
	ld (ix+#07),h
	and a
	jp nz,l963e
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	ld (ix+#06),l
	ld (ix+#07),h
	jp l961d
.l963e
	call l9704
.l9641
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld a,(hl)
	ld c,a
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
	and a
	jp z,l961d
	bit 7,a
	jp nz,l966c
	dec c
	call l9724
	ld c,(ix+#0e)
	ld a,c
	ld (ix+#01),a
	ld a,(l98fb)
	add #08
	jp l97c4
.l966c
	cp #c0
	jp z,l967d
	cp #c1
	jp nz,l9685
	xor a
	ld (l990c),a
	jp l9641
.l967d
	ld a,#01
	ld (l990c),a
	jp l9641
.l9685
	cp #c2
	jp nz,l9697
	ld a,#01
	ld (l990e),a
	ld a,#03
	ld (l990d),a
	jp l9641
.l9697
	cp #c3
	jp nz,l96a4
	ld a,#01
	ld (l98ff),a
	jp l9641
.l96a4
	cp #c4
	jp nz,l96b0
	xor a
	ld (l98ff),a
	jp l9641
.l96b0
	cp #c5
	jp nz,l96bd
	ld a,#01
	ld (l9913),a
	jp l9641
.l96bd
	cp #c6
	jp nz,l96c9
	xor a
	ld (l9913),a
	jp l9641
.l96c9
	cp #c7
	jp nz,l96db
	call l96f4
	ld (ix+#00),a
	xor a
	ld (ix+#0d),a
	jp l9641
.l96db
	cp #c8
	jp nz,l96ed
	call l96f4
	ld (ix+#0e),a
	ld (ix+#0d),#00
	jp l9641
.l96ed
	ld a,c
	and #0f
	ld (ix+#05),a
	ret
.l96f4
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld a,(hl)
	ld c,a
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
	ret
.l9704
	ld hl,l9016
	ld b,a
	ld a,(l98fb)
	cp #02
	ld a,b
	jp nz,l9714
	ld hl,l9036
.l9714
	dec a
	ld c,a
	ld b,#00
	add hl,bc
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#08),e
	ld (ix+#09),d
	ret
.l9724
	ld a,(l98fb)
	cp #01
	jp nz,l975b
	ld a,(l98ff)
	and a
	jp z,l975b
	ld hl,l9004
	ld b,#00
	sla c
	sla c
	add hl,bc
	ld de,l9900
	ld b,#04
.l9742
	push bc
	ld c,(hl)
	inc hl
	dec c
	call l979a
	ld a,c
	ld (de),a
	inc de
	ld a,b
	ld (de),a
	inc de
	pop bc
	djnz l9742
	ld bc,(l9900)
	ld a,#01
	jp l9787
.l975b
	call l979a
	ld a,(l98fb)
	cp #01
	jp nz,l9775
	ld a,(l9919)
	cp c
	jp nz,l9775
	ld a,(l991a)
	cp b
	jp nz,l9775
	dec bc
.l9775
	ld a,(l98fb)
	and a
	jp nz,l9787
	ld a,(l990e)
	and a
	jp z,l9787
	inc bc
	inc bc
	inc bc
	xor a
.l9787
	ld (ix+#02),c
	ld (ix+#03),b
.l978d
	add a
	push bc
	push af
	call l97c4
	pop af
	pop bc
	inc a
	ld c,b
	jp l97c4
.l979a
	push hl
	ld hl,l9947
	ld b,#00
	add hl,bc
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	pop hl
	ret
.l97a7
	call l97b3
	ld a,(l98fc)
	ld c,a
	ld a,#07
	jp l97c4
.l97b3
	ld bc,#000d
.l97b6
	ld a,b
	push bc
	call l97c4
	pop bc
	dec b
	jp p,l97b6
	ld a,#07
	ld c,#3f
.l97c4
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
.l97e2
	ld ix,l9917
	xor a
	ld (l98fb),a
	call l9807
	ld ix,l9927
	ld a,#01
	ld (l98fb),a
	call l9807
	ld a,(l98fd)
	and a
	ret z
	ld ix,l9937
	ld a,#02
	ld (l98fb),a
.l9807
	ld a,(ix+#0d)
	inc a
	ld (ix+#0d),a
	cp (ix+#00)
	ret c
	ld (ix+#0d),#00
	ld a,(ix+#01)
	sub #01
	ret c
	ld (ix+#01),a
	ld c,a
	ld a,(l98fb)
	add #08
	jp l97c4
.l9828
	ld a,(l990d)
	sub #01
	jp nc,l9837
	xor a
	ld (l990e),a
	jp l9847
.l9837
	ld (l990d),a
	ld bc,(l9919)
	dec bc
	ld (l9919),bc
	xor a
	call l978d
.l9847
	ld a,(l98ff)
	and a
	jp z,l986b
	ld a,(l98fe)
	inc a
	and #03
	ld (l98fe),a
	ld c,a
	ld b,#00
	ld hl,l9900
	add hl,bc
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (l9929),bc
	ld a,#01
	call l978d
.l986b
	ld a,(l98f6)
	inc a
	ld (l98f6),a
	ld hl,l98f7
	cp (hl)
	ret c
	xor a
	ld (l98f6),a
	ld a,(l98f5)
	xor #01
	ld (l98f5),a
	ld bc,(l9919)
	ld de,(l9929)
	and a
	jp z,l9894
	dec bc
	dec de
	jp l9896
.l9894
	inc bc
	inc de
.l9896
	xor a
	push de
	call l978d
	pop bc
	ld a,#01
	jp l978d
.l98a1
	ld a,(l98fd)
	and a
	ret z
	ld a,(l98f9)
	inc a
	ld (l98f9),a
	ld hl,l98fa
	cp (hl)
	ret c
	xor a
	ld (l98f9),a
	ld bc,(l9939)
	ld a,(l98f8)
	xor #01
	ld (l98f8),a
	ld a,#02
	jp nz,l978d
	inc bc
	jp l978d
.l98cb
	ld ix,l9917
	xor a
	ld (l98fb),a
	call l960f
	ld ix,l9927
	ld a,#01
	ld (l98fb),a
	call l960f
	ld a,(l98fd)
	and a
	ret z
	ld ix,l9937
	ld a,#02
	ld (l98fb),a
	jp l960f
.l98fa equ $ + 7
.l98f9 equ $ + 6
.l98f8 equ $ + 5
.l98f7 equ $ + 4
.l98f6 equ $ + 3
.l98f5 equ $ + 2
.l98f4 equ $ + 1
.l98f3
	db #01,#01,#01,#01,#04,#01,#00,#01
.l9900 equ $ + 5
.l98ff equ $ + 4
.l98fe equ $ + 3
.l98fd equ $ + 2
.l98fc equ $ + 1
.l98fb
	db #02,#38,#f6,#03,#01,#3f,#01,#fd
.l990a equ $ + 7
.l9909 equ $ + 6
.l9908 equ $ + 5
	db #00,#d5,#00,#9f,#00,#06,#02,#07
.l990e equ $ + 3
.l990d equ $ + 2
.l990c equ $ + 1
.l990b
	db #01,#01,#00,#00
.l9911 equ $ + 2
.l990f
	dw l93f1,l9088
.l991a equ $ + 7
.l9919 equ $ + 6
.l9917 equ $ + 4
.l9916 equ $ + 3
.l9915 equ $ + 2
.l9914 equ $ + 1
.l9913
	db #00,#00,#0a,#00,#01,#06,#77,#00
	db #01,#01
	dw l9057,l90e3,l9056
	db #00,#00
.l9927 equ $ + 2
	db #0d,#00,#05
.l9929 equ $ + 1
	db #06,#9f,#00,#01,#03
	dw l9067,l90ac,l9066
.l9939 equ $ + 6
.l9937 equ $ + 4
	db #00,#01,#0c,#00,#02,#0c,#cc,#02
	db #01,#01
.l9941 equ $ + 4
	dw l9077,l92c5,l9076
	db #00,#01,#0f,#00
.l9947
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
	dw #0000
;
.init_music	; added by Megachur
;
	ld a,#01
	ld (l98f3),a
	ld a,&c9
	ld (l94b4),a
	jp l94be
;
.play_music	; added by Megachur
;
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	jp real_play_music
;
.music_info
	db "Pogostick Olympics (1987)(Firebird)()",0
	db "",0

	read "music_end.asm"
