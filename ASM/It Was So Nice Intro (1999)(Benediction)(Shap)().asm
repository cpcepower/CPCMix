; Music of It Was So Nice Intro (1999)(Benediction)(Shap)()
; Ripped by Megachur the 03/07/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ITWASSNI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #4000

	read "music_header.asm"

; 24/09/2013
	
	jp l4053	; init music
	jp l40b8	; play music
	jr l4042
.l4008
	ld b,#f4
	out (c),d
	ld bc,#f6c0
	out (c),c
	xor a
	out (c),a
	ld b,#f4
	out (c),e
	ld bc,#f680
	out (c),c
	out (c),a
	ret
	db #45,#73,#73,#61,#69,#20,#30,#37
	db #2f,#30,#36,#2f,#39,#39,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
.l4041 equ $ + 1
.l4040
	db #00,#00
.l4042
	ld b,#06
	ld hl,l46d5
.l4047
	ld (hl),a
	inc hl
	djnz l4047
	ld a,#fd
	ld (hl),a
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	ret
;
.init_music
.l4053
;
	add a
	add a
	add a
	add #04
	ld l,a
	adc #49
	sub l
	ld h,a
	ld a,(hl)
	ld (l4040),a
	inc hl
	ld a,(hl)
	and #0f
	ld c,a
	ld b,#03
	ld ix,l46f0
.l406c
	ld (ix-#45),c
	ld a,#01
	ld (ix-#4e),a
	ld a,#08
	ld (ix-#42),a
	ld (ix-#3f),a
	inc hl
	ld a,(hl)
	ld (ix-#4b),a
	inc hl
	ld a,(hl)
	ld (ix-#48),a
	inc ix
	djnz l406c
	xor a
	ld (l4041),a
	ld hl,l46b4
	ld de,l46b5
	ld bc,#0068
	ld (hl),a
	ldir
	ld b,#f6
	in c,(c)
	push bc
	ld de,#0d00
.l40a2
	call l4008
	dec d
	jp p,l40a2
	ld a,#3f
	ld (l40f0),a
	ld e,a
	ld d,#07
	call l4008
	pop bc
	out (c),c
	ret
;
.real_play_music
.l40b8
;
	ld hl,l4041
	dec (hl)
	jp p,l40c3
	ld a,(l4040)
	ld (hl),a
.l40c3
	ld b,#f6
	in c,(c)
	push bc
	ld ix,l46f0
	call l40f9
	inc ix
	call l40f9
	inc ix
	call l40f9
.l40da equ $ + 1
	ld de,#0d41
	bit 4,e
	jr z,l40e3
	call l4008
.l40e4 equ $ + 1
.l40e3
	ld de,#0b1e
	call l4008
.l40ea equ $ + 1
	ld de,#060a
	call l4008
.l40f0 equ $ + 1
	ld de,#073f
	call l4008
	pop bc
	out (c),c
	ret
.l40f9
	ld a,(ix-#36)
	or a
	jr nz,l410e
	ld hl,l4040
	ld a,(l4041)
	cp (hl)
	jr nz,l410e
	dec (ix-#4e)
	jp z,l4395
.l410e
	ld a,(ix-#15)
	or a
	jr z,l4137
	dec (ix-#1b)
	jr nz,l4137
	rra
	sbc a
	or #01
	add (ix-#45)
	cp #ff
	jr z,l4133
	cp #10
	jr z,l4133
	ld (ix-#45),a
	ld a,(ix-#18)
	ld (ix-#1b),a
	jr l4137
.l4133
	xor a
	ld (ix-#15),a
.l4137
	ld a,(ix+#24)
	or a
	jp z,l41c0
	dec (ix+#27)
	jp p,l41be
	ld b,a
	ld a,(ix+#2a)
	ld (ix+#27),a
	ld a,(ix+#21)
	ld e,a
	ld d,#00
	ld hl,l4562
	add hl,de
	add hl,de
	cp (ix-#3c)
	jr nc,l4198
	ld a,(ix+#1b)
	add b
	ld c,a
	ld (ix+#1b),a
	ld a,(ix+#1e)
	adc #00
	ld b,a
	ld (ix+#1e),a
	ld a,c
	add (ix-#2a)
	ld c,a
	ld a,b
	adc (ix-#27)
	cp (hl)
	jr c,l41be
	dec hl
	ld a,c
	cp (hl)
	jr c,l41be
.l417d
	ld a,(ix+#21)
	ld (ix-#3c),a
	ld a,(hl)
	ld (ix-#2a),a
	inc hl
	ld a,(hl)
	ld (ix-#27),a
	xor a
	ld (ix+#24),a
	ld (ix+#1b),a
	ld (ix+#1e),a
	jr l41be
.l4198
	ld a,(ix+#1b)
	sub b
	ld c,a
	ld (ix+#1b),a
	ld a,(ix+#1e)
	sbc #00
	ld b,a
	ld (ix+#1e),a
	ld a,c
	add (ix-#2a)
	ld c,a
	ld a,b
	adc (ix-#27)
	cp (hl)
	dec hl
	jr c,l417d
	jr nz,l41be
	ld a,c
	cp (hl)
	jr c,l417d
	jr z,l417d
.l41be
	jr l41f6
.l41c0
	ld a,(ix+#12)
	or a
	jr z,l41f6
	ld b,a
	ld c,a
	ld a,(ix+#0f)
	or a
	jr z,l41d3
	dec (ix+#0f)
	jr l41f6
.l41d3
	rl b
	sbc a
	ld b,a
	ld a,(ix+#1b)
	add c
	ld (ix+#1b),a
	ld a,(ix+#1e)
	adc b
	ld (ix+#1e),a
	dec (ix+#15)
	jp p,l41f6
	xor a
	sub c
	ld (ix+#12),a
	ld a,(ix+#18)
	ld (ix+#15),a
.l41f6
	ld a,(ix-#5d)
	cp #02
	jr nz,l425a
	ld a,(ix+#06)
	add a
	jr nc,l425a
	add #30
	ld l,a
	adc #49
	sub l
	ld h,a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#09)
	ld h,#00
	add hl,hl
	add hl,de
	ld a,(hl)
	cp #ff
	jr nz,l4223
	inc hl
	ld l,(hl)
	ld h,#00
	ld (ix+#09),l
	add hl,hl
	add hl,de
	ld a,(hl)
.l4223
	ld (l40da),a
	inc hl
	rla
	jr c,l4248
	rla
	jr nc,l4253
	ld a,(l40e4)
	add (hl)
	ld (l40e4),a
	inc hl
	inc hl
	ld a,(hl)
	inc (ix+#0c)
	cp (ix+#0c)
	jr nz,l425a
	xor a
	ld (ix+#0c),a
	inc (ix+#09)
	jr l4257
.l4248
	ld a,(hl)
	add (ix-#3c)
	add #23
	ld l,a
	adc #46
	sub l
	ld h,a
.l4253
	ld a,(hl)
	ld (l40e4),a
.l4257
	inc (ix+#09)
.l425a
	ld a,(ix+#00)
	add a
	add #24
	ld l,a
	adc #49
	sub l
	ld h,a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#03)
	ld h,#00
	add hl,hl
	add hl,de
	ld a,(hl)
	cp #ff
	jr nz,l427e
	inc hl
	ld l,(hl)
	ld h,#00
	ld (ix+#03),l
	add hl,hl
	add hl,de
	ld a,(hl)
.l427e
	and (ix-#0f)
	ld (ix-#09),a
	inc hl
	ld a,(hl)
	bit 7,a
	push af
	jr nz,l428e
	add (ix-#3c)
.l428e
	and #7f
	cp #61
	jr c,l4296
	ld a,#60
.l4296
	add a
	add #61
	ld l,a
	adc #45
	sub l
	ld h,a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	inc (ix+#03)
	pop af
	jr nz,l42af
	ld e,(ix+#1b)
	ld d,(ix+#1e)
	add hl,de
.l42af
	ld a,(ix-#5d)
	add a
	ld d,a
	ld e,l
	call l4008
	inc d
	ld e,h
	call l4008
.l42bd
	ld a,(ix-#45)
	sub (ix-#12)
	xor #0f
	ld e,a
	call l42e5
	and #f0
	rra
	rra
	rra
	rra
	sub e
	jr nc,l42d3
	xor a
.l42d3
	bit 7,(ix-#09)
	jr z,l42db
	or #10
.l42db
	ld e,a
	ld a,(ix-#5d)
	add #08
	ld d,a
	jp l4008
.l42e5
	ld a,(ix-#09)
	ld b,a
	and #1f
	jr z,l42f8
	ld (l40ea),a
	ld a,(l40f0)
	and (ix-#54)
	jr l42fe
.l42f8
	ld a,(l40f0)
	or (ix-#51)
.l42fe
	bit 5,b
	jr z,l4315
	or (ix-#57)
	ld (l40f0),a
	ld a,#08
	ld (ix-#42),a
	ld (ix-#3f),a
	ld (ix-#0c),a
	jr l431b
.l4315
	and (ix-#5a)
	ld (l40f0),a
.l431b
	bit 6,b
	jr z,l4350
	bit 7,(ix-#0c)
	jr nz,l435d
	ld a,(ix-#06)
	and #f0
	rra
	rra
	rra
	add #53
	ld l,a
	adc #46
	sub l
	ld h,a
	ld a,(ix-#42)
	add (hl)
	ld (ix-#42),a
	inc hl
	ld a,(ix-#3f)
	adc (hl)
	ld (ix-#3f),a
	ret nc
	ld a,#f8
	ld (ix-#42),a
	ld (ix-#3f),a
	ld (ix-#0c),a
	ret
.l4350
	ld a,(ix-#03)
	and #0f
	ld c,a
	ld a,#08
	ld (ix-#0c),a
	jr l436a
.l435d
	ld a,(ix-#06)
	and #0f
	ld c,a
	ld a,(ix-#03)
	and #f0
	or #08
.l436a
	ld b,a
	cp (ix-#3f)
	ret nc
	ld a,c
	add a
	add #73
	ld l,a
	adc #46
	sub l
	ld h,a
	ld a,(ix-#42)
	sub (hl)
	ld (ix-#42),a
	inc hl
	ld a,(ix-#3f)
	sbc (hl)
	ld (ix-#3f),a
	jr c,l438b
	cp b
	ret nc
.l438b
	ld a,b
	or #08
	ld (ix-#3f),b
	ld (ix-#42),b
	ret
.l4395
	ld c,(ix-#4b)
	ld b,(ix-#48)
	ld l,(ix-#33)
	ld h,#00
	add hl,bc
	ld a,(hl)
	bit 7,a
	jr z,l43f1
	cp #ff
	jr nz,l43b7
	inc hl
	ld l,(hl)
	ld (ix-#33),l
	ld h,#00
	add hl,bc
.l43b2
	ld a,(hl)
	bit 7,a
	jr z,l43f1
.l43b7
	cp #c0
	jr c,l43e6
	cp #fc
	jr c,l43db
	cp #fe
	jr nz,l43c7
	ld (ix-#36),a
	ret
.l43c7
	ld (ix-#15),a
	inc hl
	ld a,(hl)
	ld (ix-#1b),a
	ld (ix-#18),a
	inc (ix-#33)
	inc (ix-#33)
	inc hl
	jr l43b2
.l43db
	and #3f
	ld (ix-#24),a
	inc (ix-#33)
	inc hl
	jr l43b2
.l43e6
	and #3f
	dec a
	ld (ix-#2d),a
	inc (ix-#33)
	inc hl
	ld a,(hl)
.l43f1
	add a
	add #0c
	ld l,a
	adc #49
	sub l
	ld h,a
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,(ix-#30)
	ld h,#00
	add hl,bc
.l4402
	ld a,(hl)
	cp #60
	jp c,l44b1
	cp #80
	jr nc,l4417
	and #1f
	ld (ix-#39),a
	inc (ix-#30)
	inc hl
	jr l4402
.l4417
	cp #f8
	jr nc,l4426
	and #7f
	ld (ix-#1e),a
	inc (ix-#30)
	inc hl
	jr l4402
.l4426
	cp #fa
	jr nz,l443b
	ld a,(ix-#0f)
	xor #40
	ld (ix-#0f),a
	and (ix-#09)
	ld (ix-#09),a
	jp l4536
.l443b
	cp #fb
	jr nz,l444c
	ld a,(ix-#21)
	cpl
	ld (ix-#21),a
	inc (ix-#30)
	inc hl
	jr l4402
.l444c
	cp #fc
	jr nz,l4460
	inc hl
	ld a,(hl)
	xor #0f
	ld (ix-#12),a
	inc (ix-#30)
	inc (ix-#30)
	inc hl
	jr l4402
.l4460
	cp #fd
	jp nz,l4488
	inc hl
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld a,(hl)
	ld (ix+#27),a
	ld (ix+#2a),a
	inc hl
	ld a,(hl)
	add (ix-#24)
	and #7f
	ld (ix+#21),a
	inc (ix-#30)
	inc (ix-#30)
	inc (ix-#30)
	jp l4536
.l4488
	cp #f8
	jr nz,l449b
	inc hl
	ld a,(hl)
	ld (l40e4),a
	inc (ix-#30)
	inc (ix-#30)
	inc hl
	jp l4402
.l449b
	cp #f9
	jp nz,l4536
	inc hl
	ld a,(hl)
	or #10
	ld (l40da),a
	inc (ix-#30)
	inc (ix-#30)
	inc hl
	jp l4402
.l44b1
	add (ix-#24)
	and #7f
	ld (ix-#3c),a
	add a
	add #61
	ld l,a
	adc #45
	sub l
	ld h,a
	ld e,(hl)
	ld (ix-#2a),e
	inc hl
	ld d,(hl)
	ld (ix-#27),d
	ld a,(ix-#21)
	or a
	jr nz,l4536
	xor a
	ld (ix+#03),a
	ld (ix+#09),a
	ld (ix+#0c),a
	ld (ix+#1b),a
	ld (ix+#1e),a
	dec a
	ld (ix-#0f),a
	ld a,(ix-#39)
	add a
	add a
	add a
	add #c4
	ld l,a
	adc #48
	sub l
	ld h,a
	ld a,(hl)
	ld (ix-#06),a
	inc hl
	ld a,(hl)
	ld (ix-#03),a
	inc hl
	ld a,(hl)
	ld (ix+#00),a
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	inc hl
	ld a,(hl)
	ld (ix-#09),a
	bit 5,a
	jr nz,l4523
	push bc
	ld a,(ix-#5d)
	add a
	ld d,a
	call l4008
	inc d
	ld e,(ix-#27)
	call l4008
	pop bc
.l4523
	inc hl
	ld a,(hl)
	neg
	ld (ix+#12),a
	jr z,l4536
	inc hl
	ld a,(hl)
	ld (ix+#18),a
	srl a
	ld (ix+#15),a
.l4536
	ld a,(ix-#1e)
	ld (ix-#4e),a
	inc (ix-#30)
	ld l,(ix-#30)
	ld h,#00
	add hl,bc
	ld a,(hl)
	cp #ff
	jp nz,l42bd
	xor a
	ld (ix-#30),a
	ld (ix-#21),a
	dec (ix-#2d)
	jp p,l42bd
	inc (ix-#2d)
	inc (ix-#33)
	jp l42bd
.l4562 equ $ + 1
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
	db #00,#00,#78,#70,#6a,#64,#60,#5a
	db #54,#50,#4c,#48,#44,#40,#3c,#38
	db #35,#32,#30,#2d,#2a,#28,#26,#24
	db #22,#20,#1e,#1c,#1b,#19,#18,#16
	db #15,#14,#13,#12,#11,#10,#0f,#0e
	db #0d,#0c,#0c,#0b,#0a,#0a,#09,#09
	db #08,#08,#ff,#ff,#ff,#9f,#00,#50
	db #55,#35,#af,#21,#db,#16,#d3,#12
	db #00,#10,#cd,#0c,#1f,#05,#8f,#02
	db #9a,#01,#48,#01,#6d,#00,#42,#00
	db #29,#00,#54,#d5,#55,#35,#ab,#1a
	db #c7,#11,#3a,#0b,#9e,#07,#46,#06
	db #55,#05,#44,#04,#b5,#01,#da,#00
	db #89,#00,#6d,#00,#24,#00,#16,#00
	db #0e,#00
	db #00,#01,#02,#fe,#fd,#fb,#01,#02
	db #04,#f7,#ef,#df,#08,#10,#20,#01
	db #01,#01,#00,#00,#00,#01,#02,#03
	db #0f,#0f,#0f,#08,#08,#08,#08,#08
.l46b5 equ $ + 2
.l46b4 equ $ + 1
	db #08,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46d5 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46f0 equ $ + 5
	db #00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l471d equ $ + 4
	db #00,#00,#00,#00,#00,#c0,#04,#c7
.l4726 equ $ + 5
	db #04,#c4,#04,#ff,#00,#85,#00,#c0
	db #04,#c7,#04,#c4,#04,#00,#c0,#04
	db #c7,#04,#c4,#04,#c0,#03,#87,#01
.l473f equ $ + 6
	db #c0,#01,#87,#01,#ff,#00,#c0,#02
	db #02,#c7,#02,#c4,#02,#c0,#02,#02
	db #c7,#02,#c4,#02,#c0,#02,#02,#c7
.l4756 equ $ + 5
	db #02,#c4,#02,#ff,#00,#82,#fe,#fe
.l4760 equ $ + 7
	db #fe,#fe,#fe,#fe,#fe,#fe,#ff,#82
	db #66,#fe,#fe,#fe,#fe,#fe,#fe,#fe
.l476b equ $ + 2
	db #fe,#ff,#61,#82,#0c,#63,#0c,#61
	db #18,#63,#0c,#61,#0c,#18,#0c,#18
.l477a equ $ + 1
	db #ff,#66,#fc,#0c,#81,#54,#fe,#fe
	db #fe,#fe,#fe,#fe,#fe,#fe,#fe,#fe
.l478f equ $ + 6
	db #fe,#fe,#fe,#fe,#fe,#ff,#82,#60
	db #19,#fe,#19,#fe,#62,#0d,#0d,#0d
.l479c equ $ + 3
	db #60,#19,#ff,#66,#fc,#0c,#81,#fe
.l47a7 equ $ + 6
	db #fe,#fe,#fe,#fe,#fe,#ff,#82,#64
	db #0e,#0e,#0d,#0d,#0c,#0c,#0c,#0c
.l47b2 equ $ + 1
	db #ff,#90,#fe,#fe,#fe,#fe,#ff,#fe
	db #fe,#fe,#fe,#fe,#fe,#fe,#fe,#fe
	db #fe,#fe,#fe,#fe,#fe,#fe,#fe,#fe
	db #fe,#fe,#fe,#fe,#fe,#fe,#fe,#fe
	db #fe,#fe,#fe,#fe,#fe,#fe,#fe,#fe
	db #fe,#fe,#fe,#fe,#fe,#fe,#fe,#fe
	db #fe,#fe,#fe,#fe,#fe,#fe,#fe,#fe
	db #fe,#fe,#fe,#fe,#fe,#fe,#fe,#fe
	db #fe,#fe,#fe,#fe,#fe,#fe,#fe,#fe
	db #fe,#fe,#fe,#fe,#fe,#fe,#fe,#fe
	db #fe,#fe,#fe,#fe,#fe,#fe,#fe,#fe
	db #fe,#fe,#fe,#fe,#fe,#fe,#fe,#fe
.l4814 equ $ + 3
	db #fe,#fe,#00,#63,#88,#30,#fe,#30
.l481f equ $ + 6
	db #30,#33,#fe,#fe,#fe,#ff,#63,#84
	db #32,#32,#32,#32,#3e,#32,#3e,#32
.l482c equ $ + 3
	db #a0,#33,#ff,#84,#60,#00,#65,#0c
	db #62,#00,#65,#0c,#60,#00,#65,#0c
	db #62,#00,#65,#0c,#60,#00,#65,#0c
	db #62,#00,#65,#0c,#60,#00,#65,#0c
.l484e equ $ + 5
	db #84,#62,#00,#00,#ff,#84,#60,#00
	db #65,#0c,#62,#00,#65,#0c,#60,#00
	db #65,#0c,#62,#00,#65,#0c,#60,#00
	db #65,#0c,#62,#00,#65,#0c,#60,#00
	db #62,#00,#82,#62,#00,#00,#00,#00
.l4872 equ $ + 1
	db #ff,#4a,#ff,#40,#a0,#40,#9f,#00
	db #9d,#00,#9c,#00,#9b,#00,#9a,#00
.l4884 equ $ + 3
	db #90,#ff,#07,#40,#0c,#c0,#00,#ff
.l488a equ $ + 1
	db #01,#41,#ff,#40,#00,#00,#00,#ff
.l4892 equ $ + 1
	db #02,#40,#00,#40,#00,#40,#00,#40
.l489e equ $ + 5
	db #00,#00,#00,#ff,#04,#40,#ff,#00
	db #00,#00,#00,#00,#03,#00,#03,#00
.l48ae equ $ + 5
	db #07,#00,#07,#ff,#01,#41,#ff,#41
	db #ff,#41,#ff,#01,#ff,#00,#ff,#00
.l48bc equ $ + 3
	db #ff,#ff,#04,#9c,#00,#41,#00,#00
	db #00,#ff,#01,#00,#f6,#00,#00,#00
	db #20,#00,#00,#20,#ef,#01,#80,#00
	db #20,#00,#00,#03,#ef,#05,#00,#00
	db #20,#00,#00,#10,#da,#03,#00,#00
	db #20,#02,#04,#1f,#e6,#04,#00,#00
	db #20,#0a,#03,#10,#ea,#05,#00,#01
	db #20,#02,#02,#1f,#ff,#04,#00,#00
	db #00,#00,#00
	db #1d,#d1,#00,#00,#40,#00,#02,#08
;.l4904
	db #11
	db #0f
	dw l471d,l4726,l473f,l4756
	dw l4760,l476b,l477a,l478f
	dw l479c,l47a7,l47b2,l4814
	dw l481f,l482c,l484e,l4872
	dw l4884,l488a,l4892,l489e
	dw l48ae,l48bc
;
.play_music		; added by Megachur
;
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	jp real_play_music
;
.music_info
	db "It Was So Nice Intro (1999)(Benediction)(Shap)",0
	db "Essai 07/06/99",0

	read "music_end.asm"
