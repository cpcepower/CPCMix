; Music of Croco Chanel - Eliot Part - Recall (2002)(Overlanders)(Eliot)()
; Ripped by Megachur the 12/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CROCCEPR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7000

	read "music_header.asm"

	jp l7053
	jp l70b8
	jr l7042
.l7008
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
	db #52,#65,#63,#61,#6c,#6c,#20,#28
	db #61,#64,#61,#70,#74,#61,#74,#69
	db #6f,#6e,#29,#20,#65,#73,#73,#61
	db #69,#20,#4f,#63,#74,#27,#39,#39
.l7041 equ $ + 1
.l7040
	db #00,#00
;
.stop_music
.l7042
;
	ld b,#06
	ld hl,l76d5
.l7047
	ld (hl),a
	inc hl
	djnz l7047
	ld a,#fd
	ld (hl),a
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	ret
;
.init_music
.l7053
;
	add a
	add a
	add a
	add #56
	ld l,a
	adc #79
	sub l
	ld h,a
	ld a,(hl)
	ld (l7040),a
	inc hl
	ld a,(hl)
	and #0f
	ld c,a
	ld b,#03
	ld ix,l76f0
.l706c
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
	djnz l706c
	xor a
	ld (l7041),a
	ld hl,l76b4
	ld de,l76b5
	ld bc,#0068
	ld (hl),a
	ldir
	ld b,#f6
	in c,(c)
	push bc
	ld de,#0d00
.l70a2
	call l7008
	dec d
	jp p,l70a2
	ld a,#3f
	ld (l70f0),a
	ld e,a
	ld d,#07
	call l7008
	pop bc
	out (c),c
	ret
;
.real_play_music
.l70b8
;
	ld hl,l7041
	dec (hl)
	jp p,l70c3
	ld a,(l7040)
	ld (hl),a
.l70c3
	ld b,#f6
	in c,(c)
	push bc
	ld ix,l76f0
	call l70f9
	inc ix
	call l70f9
	inc ix
	call l70f9
.l70da equ $ + 1
	ld de,#0d9c
	bit 4,e
	jr z,l70e3
	call l7008
.l70e4 equ $ + 1
.l70e3
	ld de,#0b2d
	call l7008
.l70ea equ $ + 1
	ld de,#0601
	call l7008
.l70f0 equ $ + 1
	ld de,#073f
	call l7008
	pop bc
	out (c),c
	ret
.l70f9
	ld a,(ix-#36)
	or a
	jr nz,l710e
	ld hl,l7040
	ld a,(l7041)
	cp (hl)
	jr nz,l710e
	dec (ix-#4e)
	jp z,l7395
.l710e
	ld a,(ix-#15)
	or a
	jr z,l7137
	dec (ix-#1b)
	jr nz,l7137
	rra
	sbc a
	or #01
	add (ix-#45)
	cp #ff
	jr z,l7133
	cp #10
	jr z,l7133
	ld (ix-#45),a
	ld a,(ix-#18)
	ld (ix-#1b),a
	jr l7137
.l7133
	xor a
	ld (ix-#15),a
.l7137
	ld a,(ix+#24)
	or a
	jp z,l71c0
	dec (ix+#27)
	jp p,l71be
	ld b,a
	ld a,(ix+#2a)
	ld (ix+#27),a
	ld a,(ix+#21)
	ld e,a
	ld d,#00
	ld hl,l7562
	add hl,de
	add hl,de
	cp (ix-#3c)
	jr nc,l7198
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
	jr c,l71be
	dec hl
	ld a,c
	cp (hl)
	jr c,l71be
.l717d
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
	jr l71be
.l7198
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
	jr c,l717d
	jr nz,l71be
	ld a,c
	cp (hl)
	jr c,l717d
	jr z,l717d
.l71be
	jr l71f6
.l71c0
	ld a,(ix+#12)
	or a
	jr z,l71f6
	ld b,a
	ld c,a
	ld a,(ix+#0f)
	or a
	jr z,l71d3
	dec (ix+#0f)
	jr l71f6
.l71d3
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
	jp p,l71f6
	xor a
	sub c
	ld (ix+#12),a
	ld a,(ix+#18)
	ld (ix+#15),a
.l71f6
	ld a,(ix-#5d)
	cp #02
	jr nz,l725a
	ld a,(ix+#06)
	add a
	jr nc,l725a
	add #86
	ld l,a
	adc #79
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
	jr nz,l7223
	inc hl
	ld l,(hl)
	ld h,#00
	ld (ix+#09),l
	add hl,hl
	add hl,de
	ld a,(hl)
.l7223
	ld (l70da),a
	inc hl
	rla
	jr c,l7248
	rla
	jr nc,l7253
	ld a,(l70e4)
	add (hl)
	ld (l70e4),a
	inc hl
	inc hl
	ld a,(hl)
	inc (ix+#0c)
	cp (ix+#0c)
	jr nz,l725a
	xor a
	ld (ix+#0c),a
	inc (ix+#09)
	jr l7257
.l7248
	ld a,(hl)
	add (ix-#3c)
	add #23
	ld l,a
	adc #76
	sub l
	ld h,a
.l7253
	ld a,(hl)
	ld (l70e4),a
.l7257
	inc (ix+#09)
.l725a
	ld a,(ix+#00)
	add a
	add #74
	ld l,a
	adc #79
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
	jr nz,l727e
	inc hl
	ld l,(hl)
	ld h,#00
	ld (ix+#03),l
	add hl,hl
	add hl,de
	ld a,(hl)
.l727e
	and (ix-#0f)
	ld (ix-#09),a
	inc hl
	ld a,(hl)
	bit 7,a
	push af
	jr nz,l728e
	add (ix-#3c)
.l728e
	and #7f
	cp #61
	jr c,l7296
	ld a,#60
.l7296
	add a
	add #61
	ld l,a
	adc #75
	sub l
	ld h,a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	inc (ix+#03)
	pop af
	jr nz,l72af
	ld e,(ix+#1b)
	ld d,(ix+#1e)
	add hl,de
.l72af
	ld a,(ix-#5d)
	add a
	ld d,a
	ld e,l
	call l7008
	inc d
	ld e,h
	call l7008
.l72bd
	ld a,(ix-#45)
	sub (ix-#12)
	xor #0f
	ld e,a
	call l72e5
	and #f0
	rra
	rra
	rra
	rra
	sub e
	jr nc,l72d3
	xor a
.l72d3
	bit 7,(ix-#09)
	jr z,l72db
	or #10
.l72db
	ld e,a
	ld a,(ix-#5d)
	add #08
	ld d,a
	jp l7008
.l72e5
	ld a,(ix-#09)
	ld b,a
	and #1f
	jr z,l72f8
	ld (l70ea),a
	ld a,(l70f0)
	and (ix-#54)
	jr l72fe
.l72f8
	ld a,(l70f0)
	or (ix-#51)
.l72fe
	bit 5,b
	jr z,l7315
	or (ix-#57)
	ld (l70f0),a
	ld a,#08
	ld (ix-#42),a
	ld (ix-#3f),a
	ld (ix-#0c),a
	jr l731b
.l7315
	and (ix-#5a)
	ld (l70f0),a
.l731b
	bit 6,b
	jr z,l7350
	bit 7,(ix-#0c)
	jr nz,l735d
	ld a,(ix-#06)
	and #f0
	rra
	rra
	rra
	add #53
	ld l,a
	adc #76
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
.l7350
	ld a,(ix-#03)
	and #0f
	ld c,a
	ld a,#08
	ld (ix-#0c),a
	jr l736a
.l735d
	ld a,(ix-#06)
	and #0f
	ld c,a
	ld a,(ix-#03)
	and #f0
	or #08
.l736a
	ld b,a
	cp (ix-#3f)
	ret nc
	ld a,c
	add a
	add #73
	ld l,a
	adc #76
	sub l
	ld h,a
	ld a,(ix-#42)
	sub (hl)
	ld (ix-#42),a
	inc hl
	ld a,(ix-#3f)
	sbc (hl)
	ld (ix-#3f),a
	jr c,l738b
	cp b
	ret nc
.l738b
	ld a,b
	or #08
	ld (ix-#3f),b
	ld (ix-#42),b
	ret
.l7395
	ld c,(ix-#4b)
	ld b,(ix-#48)
	ld l,(ix-#33)
	ld h,#00
	add hl,bc
	ld a,(hl)
	bit 7,a
	jr z,l73f1
	cp #ff
	jr nz,l73b7
	inc hl
	ld l,(hl)
	ld (ix-#33),l
	ld h,#00
	add hl,bc
.l73b2
	ld a,(hl)
	bit 7,a
	jr z,l73f1
.l73b7
	cp #c0
	jr c,l73e6
	cp #fc
	jr c,l73db
	cp #fe
	jr nz,l73c7
	ld (ix-#36),a
	ret
.l73c7
	ld (ix-#15),a
	inc hl
	ld a,(hl)
	ld (ix-#1b),a
	ld (ix-#18),a
	inc (ix-#33)
	inc (ix-#33)
	inc hl
	jr l73b2
.l73db
	and #3f
	ld (ix-#24),a
	inc (ix-#33)
	inc hl
	jr l73b2
.l73e6
	and #3f
	dec a
	ld (ix-#2d),a
	inc (ix-#33)
	inc hl
	ld a,(hl)
.l73f1
	add a
	add #5e
	ld l,a
	adc #79
	sub l
	ld h,a
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,(ix-#30)
	ld h,#00
	add hl,bc
.l7402
	ld a,(hl)
	cp #60
	jp c,l74b1
	cp #80
	jr nc,l7417
	and #1f
	ld (ix-#39),a
	inc (ix-#30)
	inc hl
	jr l7402
.l7417
	cp #f8
	jr nc,l7426
	and #7f
	ld (ix-#1e),a
	inc (ix-#30)
	inc hl
	jr l7402
.l7426
	cp #fa
	jr nz,l743b
	ld a,(ix-#0f)
	xor #40
	ld (ix-#0f),a
	and (ix-#09)
	ld (ix-#09),a
	jp l7536
.l743b
	cp #fb
	jr nz,l744c
	ld a,(ix-#21)
	cpl
	ld (ix-#21),a
	inc (ix-#30)
	inc hl
	jr l7402
.l744c
	cp #fc
	jr nz,l7460
	inc hl
	ld a,(hl)
	xor #0f
	ld (ix-#12),a
	inc (ix-#30)
	inc (ix-#30)
	inc hl
	jr l7402
.l7460
	cp #fd
	jp nz,l7488
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
	jp l7536
.l7488
	cp #f8
	jr nz,l749b
	inc hl
	ld a,(hl)
	ld (l70e4),a
	inc (ix-#30)
	inc (ix-#30)
	inc hl
	jp l7402
.l749b
	cp #f9
	jp nz,l7536
	inc hl
	ld a,(hl)
	or #10
	ld (l70da),a
	inc (ix-#30)
	inc (ix-#30)
	inc hl
	jp l7402
.l74b1
	add (ix-#24)
	and #7f
	ld (ix-#3c),a
	add a
	add #61
	ld l,a
	adc #75
	sub l
	ld h,a
	ld e,(hl)
	ld (ix-#2a),e
	inc hl
	ld d,(hl)
	ld (ix-#27),d
	ld a,(ix-#21)
	or a
	jr nz,l7536
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
	add #06
	ld l,a
	adc #79
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
	jr nz,l7523
	push bc
	ld a,(ix-#5d)
	add a
	ld d,a
	call l7008
	inc d
	ld e,(ix-#27)
	call l7008
	pop bc
.l7523
	inc hl
	ld a,(hl)
	neg
	ld (ix+#12),a
	jr z,l7536
	inc hl
	ld a,(hl)
	ld (ix+#18),a
	srl a
	ld (ix+#15),a
.l7536
	ld a,(ix-#1e)
	ld (ix-#4e),a
	inc (ix-#30)
	ld l,(ix-#30)
	ld h,#00
	add hl,bc
	ld a,(hl)
	cp #ff
	jp nz,l72bd
	xor a
	ld (ix-#30),a
	ld (ix-#21),a
	dec (ix-#2d)
	jp p,l72bd
	inc (ix-#2d)
	inc (ix-#33)
	jp l72bd
.l7562 equ $ + 1
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
	db #08,#08,#ff,#ff,#ff,#ff,#00,#a0
	db #aa,#6a,#5e,#43,#b6,#2d,#a6,#25
	db #00,#20,#9a,#19,#3e,#0a,#1e,#05
	db #34,#03,#90,#02,#da,#00,#84,#00
	db #52,#00,#ff,#ff,#aa,#6a,#56,#35
	db #8e,#23,#74,#16,#3c,#0f,#8c,#0c
	db #aa,#0a,#88,#08,#6a,#03,#b4,#01
	db #12,#01,#da,#00,#48,#00,#2c,#00
	db #1c,#00,#00,#01,#02,#fe,#fd,#fb
	db #01,#02,#04,#f7,#ef,#df,#08,#10
	db #20,#01,#01,#01,#00,#00,#00,#01
	db #02,#03,#0f,#0f,#0f,#08,#08,#08
.l76b5 equ $ + 4
.l76b4 equ $ + 3
	db #08,#08,#08,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l76d5 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l76f0 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l771d equ $ + 4
	db #00,#00,#00,#00,#90,#02,#cc,#90
.l7728 equ $ + 7
	db #02,#06,#c0,#07,#07,#ff,#02,#90
	db #02,#c0,#8c,#02,#01,#8c,#04,#05
.l7736 equ $ + 5
	db #8c,#04,#05,#ff,#02,#09,#84,#02
.l773f equ $ + 6
	db #0a,#84,#02,#00,#ff,#06,#61,#86
	db #fc,#0f,#11,#11,#1d,#11,#11,#1d
	db #11,#11,#1d,#11,#11,#1d,#11,#11
	db #1b,#1e,#11,#11,#1d,#11,#11,#1d
	db #11,#11,#1d,#11,#11,#1d,#11,#11
.l7764 equ $ + 3
	db #1e,#22,#ff,#65,#fc,#0f,#86,#29
	db #fe,#29,#fe,#29,#fe,#29,#29,#fe
	db #29,#fe,#29,#29,#29,#29,#29,#ff
.l7779
	db #86,#fc,#00,#65,#0d,#fe,#fe,#fe
	db #ff,#fe,#fe,#fe,#fe,#fe,#fe,#fe
.l778b equ $ + 2
	db #fe,#ff,#63,#fc,#0e,#86,#11,#fe
	db #1d,#fe,#1d,#fe,#11,#1d,#fe,#1d
.l77a0 equ $ + 7
	db #fe,#11,#1d,#fe,#20,#23,#ff,#86
	db #fc,#0f,#60,#39,#fe,#62,#2b,#fe
.l77aa equ $ + 1
	db #ff,#65,#fc,#0f,#29,#29,#29,#fe
	db #29,#fe,#29,#29,#fe,#29,#fe,#29
.l77be equ $ + 5
	db #29,#29,#29,#29,#ff,#68,#86,#fc
	db #0e,#fe,#fe,#54,#fe,#fe,#54,#fe
	db #fe,#54,#fe,#54,#54,#fe,#54,#fe
	db #fe,#fe,#fe,#54,#fe,#fe,#54,#fe
	db #fe,#54,#fe,#54,#54,#fe,#54,#fe
	db #54,#fe,#fe,#54,#fe,#fe,#54,#fe
	db #fe,#54,#fe,#54,#54,#fe,#54,#fe
	db #fe,#54,#fe,#54,#fe,#54,#fe,#54
	db #54,#fe,#54,#fe,#54,#54,#54,#54
.l7803 equ $ + 2
	db #54,#ff,#63,#86,#fc,#0d,#11,#11
	db #1d,#11,#11,#1d,#11,#11,#1d,#11
	db #11,#1d,#11,#11,#0c,#0f,#11,#11
	db #1d,#11,#11,#1d,#11,#11,#1d,#11
.l7828 equ $ + 7
	db #11,#1d,#11,#11,#11,#12,#ff,#86
	db #fc,#0f,#60,#39,#69,#26,#62,#2b
.l7834 equ $ + 3
	db #69,#26,#ff,#61,#86,#fc,#0f,#11
	db #11,#1d,#11,#11,#1d,#11,#11,#1d
	db #11,#11,#1d,#11,#11,#1b,#1e,#ff
.l7849
	db #61,#86,#fc,#0f,#11,#11,#1d,#11
	db #11,#1d,#11,#11,#1d,#11,#11,#1d
.l785e equ $ + 5
	db #11,#11,#1e,#22,#ff,#4a,#ff,#40
	db #a0,#40,#9f,#00,#9d,#00,#9c,#00
.l7870 equ $ + 7
	db #9b,#00,#9a,#00,#90,#ff,#07,#40
.l7876 equ $ + 5
	db #0c,#c0,#00,#ff,#01,#41,#ff,#40
.l787e equ $ + 5
	db #00,#00,#00,#ff,#02,#40,#00,#40
	db #00,#40,#00,#40,#00,#00,#00,#ff
.l788a equ $ + 1
	db #04,#40,#ff,#4f,#03,#41,#03,#00
	db #00,#00,#00,#00,#05,#00,#05,#00
.l789e equ $ + 5
	db #08,#00,#08,#ff,#01,#41,#ff,#41
	db #ff,#42,#fe,#43,#ff,#04,#fe,#03
	db #ff,#02,#fe,#01,#fd,#01,#fc,#00
.l78b4 equ $ + 3
	db #fb,#ff,#09,#41,#ff,#42,#03,#43
	db #00,#44,#07,#46,#03,#48,#00,#06
	db #07,#03,#03,#04,#00,#03,#07,#02
.l78d0 equ $ + 7
	db #03,#01,#00,#00,#07,#ff,#0c,#40
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#03,#00,#03,#00,#03,#00
	db #03,#00,#07,#00,#07,#00,#07,#00
.l78ec equ $ + 3
	db #07,#ff,#01,#5f,#ff,#40,#a0,#40
	db #a2,#40,#a4,#40,#a6,#00,#a4,#00
.l78fe equ $ + 5
	db #a2,#00,#a0,#ff,#07,#9c,#00,#41
	db #00,#00,#00,#ff,#01,#0f,#f6,#00
	db #00,#02,#20,#10,#01,#20,#ef,#01
	db #80,#00,#20,#00,#00,#1f,#ef,#05
	db #00,#02,#20,#08,#01,#3e,#1f,#03
	db #81,#04,#00,#0c,#04,#1f,#e6,#04
	db #00,#00,#20,#0a,#03,#2f,#84,#06
	db #00,#02,#20,#08,#02,#1f,#ff,#04
	db #00,#00,#00,#00,#00,#01,#0c,#07
	db #00,#00,#20,#08,#01,#1f,#f4,#08
	db #00,#00,#20,#00,#00,#14,#a1,#06
	db #00,#02,#20,#08,#02
	dw #0f01,l771d,l7728,l7736
	dw l773f,l7764,l7779,l778b
	dw l77a0,l77aa,l77be,l7803
	dw l7828,l7834,l7849,l785e
	dw l7870,l7876,l787e,l788a
	dw l789e,l78b4,l78d0,l78ec
	dw l78fe
	db #43,#4f,#43,#4f,#43,#4f,#43,#4f
	db #dd,#34,#0c,#04,#dd,#be,#0c,#20
	db #1b,#ff,#8c,#71,#0c,#dd,#00,#34
	db #09,#18,#0f,#7e,#dd,#86,#c4,#04
	db #c6,#23,#6f,#ce,#76,#fe,#5b,#70
	db #e4,#70,#81,#ff,#43,#72,#dd,#7e
	db #00,#87,#c6,#74,#f8,#05,#72,#50
	db #03,#f3,#10,#72,#03,#ff,#6d,#72
	db #dd,#a6,#f1,#dd,#00,#77,#f7,#23
	db #7e,#cb,#7f,#f5,#20,#40,#03,#ff
	db #49,#72,#e6,#7f,#fe,#61,#38,#02
	db #00,#3e,#60,#87,#c6,#61,#6f,#ce
	db #75,#80,#ff,#51,#72,#23,#66,#6f
	db #dd,#34,#03,#f1,#00,#20,#07,#dd
	db #5e,#1b,#dd,#56,#1e,#44,#19,#ff
	db #f6,#71,#87,#57,#5d,#ff,#f2,#70
	db #14,#5c,#80,#ff
	db #b5,#72,#dd,#7e,#bb,#dd,#96,#ee
	db #ee,#00,#0f,#5f,#cd,#e5,#72,#e6
	db #f0,#1f,#80,#ff,#cb,#72,#93,#30
	db #01,#af,#dd,#cb,#f7,#02,#7e,#28
	db #02,#f6,#10,#5f,#ff,#af,#72,#c6
	db #10,#08,#57,#c3,#fe,#bb,#72,#f7
	db #47,#e6,#1f,#00,#28,#0b,#32,#ea
	db #70,#3a,#f0,#70,#04,#dd,#a6,#ac
	db #18,#06,#fe,#f0,#72,#b6,#af,#01
	db #cb,#68,#28,#13,#dd,#b6,#a9,#ff
	db #ab,#70,#80,#fa,#74,#70,#dd,#77
	db #f4,#18,#06,#dd,#a6,#40,#a6,#ff
	db #05,#73,#cb,#70,#28,#31,#dd,#cb
	db #01,#f4,#7e,#20,#38,#dd,#7e,#fa
	db #fd,#c9,#72,#21,#c6,#53,#fd,#4e
	db #72,#dd,#7e,#be,#86,#ff,#0a,#73
	db #04,#23,#dd,#7e,#c1,#8e,#ff,#0d
	db #73,#d0,#3e,#6c,#f8,#f9,#0a,#73
	db #ff,#f8,#70,#fd,#ff,#63,#70,#fe
	db #08,#73,#f4,#18,#50,#0d,#fe,#25
	db #73,#0f,#ff,#c7,#71,#fd,#e6,#f0
	db #f6,#00,#08,#47,#dd,#be,#c1,#d0
	db #79,#87,#2a,#c6,#73,#fa,#2f,#73
	db #96,#fb,#38,#73,#9e,#ff,#49,#73
	db #38,#00,#02,#b8,#d0,#78,#f6,#08
	db #dd,#70,#00,#c1,#dd,#70,#be,#c9
	db #dd,#4e,#b5,#03,#dd,#46,#b8,#dd
	db #6e,#cd,#ff,#21,#29,#ff,#85,#72
	db #20,#28,#4b,#ff,#70,#72,#0d,#23
	db #6e,#dd,#75,#80,#fa,#9d,#73,#3a
	db #fe,#c0,#38,#2b,#fe,#fc,#00,#38
	db #1c,#fe,#fe,#20,#04,#dd,#77,#30
	db #ca,#c9,#ff,#34,#71,#fe,#87,#71
	db #e5,#dd,#77,#e8,#10,#dd,#34,#cd
	db #ff,#d2,#73,#23,#18,#d7,#e6,#08
	db #3f,#dd,#77,#dc,#fd,#d5,#73,#cc
	db #e6,#3f,#08,#3d,#dd,#77,#d3,#fe
	db #e0,#73,#7e,#87,#c6,#40,#5e,#fd
	db #60,#72,#4e,#23,#46,#dd,#6e,#d0
	db #80,#fe,#af,#73,#fe,#60,#da,#b1
	db #74,#fe,#80,#00,#30,#0b,#e6,#1f
	db #dd,#77,#c7,#dd,#01,#34,#d0,#23
	db #18,#eb,#fe,#f8,#ff,#0a,#74,#08
	db #7f,#dd,#77,#e2,#fd,#11,#74,#dc
	db #fe,#fa,#00,#20,#11,#dd,#7e,#f1
	db #ee,#40,#dd,#04,#77,#f1,#dd,#a6
	db #f7,#ff,#81,#72,#c3,#36,#08,#75
	db #fe,#fb,#20,#ff,#5c,#73,#df,#2f
	db #dd,#20,#77,#df,#fd,#20,#74,#b6
	db #fe,#fc,#20,#10,#01,#23,#7e,#ee
	db #0f,#dd,#77,#ee,#ff,#46,#74,#81
	db #fd,#46,#74,#a2,#fe,#fd,#c2,#88
	db #74,#fe,#ca,#73,#42,#24,#fe,#65
	db #74,#27,#dd,#77,#2a,#ff,#6a,#74
	db #86,#5c,#dc,#fe,#1b,#74,#21,#fc
	db #57,#74,#ff,#7f,#74,#fe,#38,#74
	db #f8,#20,#70,#0f,#ff,#23,#22,#fe
	db #55,#72,#fd,#59,#74,#c3,#02,#74
	db #fe,#00,#f9,#c2,#36,#75,#23,#7e
	db #f6,#10,#e8,#ff,#23,#72,#f8,#91
	db #74,#fb,#74,#74,#c4,#fa,#96,#72
	db #5e,#dd,#73,#48,#d6,#ff,#66,#72
	db #72,#d9,#ff,#3f,#74,#b7,#20,#66
	db #87,#ff,#3f,#72,#03,#dd,#77,#09
	db #fe,#40,#72,#fd,#91,#71,#ff,#e8
	db #73,#0a,#f1,#dd,#7e,#c7,#fe,#53
	db #70,#06,#fc,#58,#70,#dd,#2a,#77
	db #fa,#fe,#6a,#74,#fd,#fe,#f5,#74
	db #00,#fe,#fa,#74,#06,#e0,#fe,#ff
	db #74,#ff,#8b,#74,#ff,#35,#74,#cb
	db #6f,#20,#11,#c5,#c6,#fd,#af,#72
	db #fe,#b5,#72,#dd,#5e,#d9,#fe,#f2
	db #70,#ff,#b1,#20,#44,#93,#ff,#ed
	db #71,#28,#0a,#fe,#09,#75,#18,#cb
	db #ff,#dc,#73,#ff,#f5,#71,#70,#e2
	db #ff,#71,#70,#fe,#a7,#74,#fb,#fd
	db #73,#ff,#c2,#bd,#72,#a0,#ff,#d0
	db #74,#d0,#fe,#43,#74,#35,#d3,#f2
	db #bd,#72,#20,#dd,#34,#fe,#eb,#73
	db #c3,#bd,#72,#ee,#0e,#00,#18,#0e
	db #4d,#0d,#8e,#0c,#da,#0b,#00,#2f
	db #0b,#8f,#0a,#f7,#09,#68,#09,#00
	db #e1,#08,#61,#08,#e9,#07,#77,#07
	db #00,#0c,#07,#a7,#06,#47,#06,#ed
	db #05,#00,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#00,#70,#04,#31,#04,#f4
	db #03,#bc,#03,#00,#86,#03,#53,#03
	db #24,#03,#f6,#02,#00,#cc,#02,#a4
	db #02,#7e,#02,#5a,#02,#00,#38,#02
	db #18,#02,#fa,#01,#de,#01,#00,#c3
	db #01,#aa,#01,#92,#01,#7b,#01,#00
	db #66,#01,#52,#01,#3f,#01,#2d,#01
	db #00,#1c,#01,#0c,#01,#fd,#00,#ef
	db #00,#10,#e1,#00,#d5,#ff,#81,#2a
	db #be,#00,#b3,#00
;
; #7020
; db "Recall (adaptation) essai Oct'99"
;
.play_music
;
	call real_play_music
	jp real_play_music
;
.music_info
	db "Croco Chanel - Eliot Part - Recall (2002)(Overlanders)(Eliot)",0
	db "Recall (adaptation) essai Oct'99",0

	read "music_end.asm"
