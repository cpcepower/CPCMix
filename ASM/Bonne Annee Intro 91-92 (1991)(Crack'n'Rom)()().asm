; Music of Bonne Annee Intro 91-92 (1991)(Crack'n'Rom)()()
; Ripped by Megachur the 08/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOAI9192.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
FIRST_THEME				equ #00
LAST_THEME				equ #04
music_adr				equ #306e

	read "music_header.asm"

.init_music0
	ld hl,l339d
	jr l3085
.init_music1
	ld hl,l33ca
	jr l3085
.init_music2
	ld hl,l3714
	jr l3085
.init_music3
	ld hl,l376c
	jr l3085
.init_music4
	ld hl,l379b
;
.real_init_music
.l3085
;
	ld a,(l30f9)
	and a
	ret nz
	push hl
	pop ix
	ld (l30fe),hl
	ld a,(ix+#01)
	ld (l30fb),a
	ld a,(ix+#03)
	ld (l30f8),a
	ld a,#b8
	ld (l3101),a
	ld e,(ix+#04)
	ld d,(ix+#05)
	ld hl,(l30fe)
	add hl,de
	ld (l3107),hl
	ld (l3109),hl
	ld e,(ix+#06)
	ld d,(ix+#07)
	ld hl,(l30fe)
	add hl,de
	ld (l311c),hl
	ld (l311e),hl
	ld e,(ix+#08)
	ld d,(ix+#09)
	ld hl,(l30fe)
	add hl,de
	ld (l3131),hl
	ld (l3133),hl
	xor a
	ld (l328f),a
	ld (l310e),a
	ld (l3123),a
	ld (l3138),a
	ld (l30f9),a
	inc a
	ld (l311b),a
	ld (l3130),a
	ld (l3145),a
	ld (l310b),a
	ld (l3120),a
	ld (l3135),a
	ld (l30fa),a
	ret
.l30f8
	db #01
.l3100 equ $ + 7
.l30fe equ $ + 5
.l30fb equ $ + 2
.l30fa equ $ + 1
.l30f9
	db #00,#03,#04,#04,#04,#ca,#33,#02
.l3107 equ $ + 6
.l3106 equ $ + 5
.l3105 equ $ + 4
.l3103 equ $ + 2
.l3102 equ $ + 1
.l3101
	db #aa,#0b,#d6,#3b,#ff,#0f,#48,#34
.l310e equ $ + 5
.l310b equ $ + 2
.l3109
	db #d4,#33,#01,#00,#08,#00,#a6,#37
	db #09,#fe,#f7,#0b,#0d,#01,#02,#02
.l3120 equ $ + 7
.l311e equ $ + 5
.l311c equ $ + 3
.l311b equ $ + 2
	db #00,#00,#02,#0b,#36,#c5,#35,#01
.l3123 equ $ + 2
	db #02,#09,#01,#c7,#35,#12,#fd,#ef
.l3130 equ $ + 7
	db #05,#0d,#02,#01,#01,#02,#00,#02
.l3138 equ $ + 7
.l3135 equ $ + 4
.l3133 equ $ + 2
.l3131
	db #48,#34,#d4,#33,#01,#04,#0a,#00
.l313e equ $ + 5
	db #95,#39,#24,#fb,#df,#0b,#0d,#01
.l3145 equ $ + 4
	db #02,#02,#01,#00,#02
	call l3149
;
.play_music
.l3149
;
	ld a,(l30f9)
	or a
	jp nz,l31ca
	ld hl,l30fa
	dec (hl)
	jr nz,l319f
	ld a,(l30fb)
	ld (hl),a
	xor a
	ld (l328d),a
	ld de,l328f
	ld ix,l3107
	call l3295
	ld a,#01
	ld (l328d),a
	ld de,l3291
	ld ix,l311c
	call l3295
	ld a,#02
	ld (l328d),a
	ld de,l3293
	ld ix,l3131
	call l3295
	xor a
	ld bc,(l328f)
	call l3379
	ld c,b
	call l3378
	ld bc,(l3291)
	call l3378
	ld c,b
	call l3378
	jr l31ca
.l319f
	ld ix,l3107
	call l3204
	ld c,(ix+#0d)
	ld a,#08
	call l3379
	ld ix,l311c
	call l3204
	ld c,(ix+#0d)
	ld a,#09
	call l3379
	ld ix,l3131
	call l3204
	ld a,(ix+#0d)
	ld (l3102),a
.l31ca
	ld a,(l3105)
	or a
	call z,l321d
	ld a,(l3105)
	or a
	jr z,l31e3
	ld a,(l30f9)
	or a
	jr z,l31e3
	xor a
	ld (l3102),a
	jr l31fb
.l31e3
	ld a,#04
	ld bc,(l3293)
	call l3379
	ld c,b
	call l3378
	ld bc,(l3100)
	call l3378
	ld c,b
	call l3378
.l31fb
	ld bc,(l3102)
	ld a,#0a
	jp l3379
.l3204
	dec (ix+#10)
	ret nz
	ld a,(ix+#11)
	ld (ix+#10),a
	ld a,(ix+#0d)
	or a
	ret z
	sub (ix+#0f)
	jr nc,l3219
	xor a
.l3219
	ld (ix+#0d),a
	ret
.l321d
	ld a,(l3101)
	and #fb
	or #a0
	ld (l3101),a
	ld a,#0f
	ld (l3106),a
	ld hl,(l3103)
.l322f
	ld a,(hl)
	cp #ff
	jr z,l327e
	cp #80
	jr nc,l3254
	push hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l3896
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	pop hl
	ld (l3293),de
	inc hl
	ld (l3103),hl
	ld a,(l3106)
	ld (l3102),a
	ret
.l3254
	cp #90
	jr nc,l3260
	sub #80
	ld (l3106),a
	inc hl
	jr l322f
.l3260
	cp #d0
	jr nc,l3274
	sub #b0
	ld (l3100),a
	ld a,(l3101)
	and #db
	ld (l3101),a
	inc hl
	jr l322f
.l3274
	inc hl
	ld a,#0f
	ld (l3102),a
	ld (l3103),hl
	ret
.l327e
	ld (l3105),a
	xor a
	ld (l313e),a
	ld hl,#0000
	ld (l3293),hl
	ret
	ret
.l328d
	ld (bc),a
	nop
.l328f
	or e
	nop
.l3293 equ $ + 2
.l3291
	ld bc,#b500
	nop
.l3295
	dec (ix+#04)
	ret nz
	ld a,(l3101)
	or (ix+#0a)
	and (ix+#0b)
	ld (l3101),a
	ld (ix+#0f),#01
	ld (ix+#10),#02
	ld (ix+#11),#02
	ld l,(ix+#00)
	ld h,(ix+#01)
.l32b7
	ld a,(hl)
	cp #64
	jr nc,l32e4
	ld c,a
	sla c
	ld b,#00
	ld a,(ix+#0e)
	ld (ix+#0d),a
	ld a,(ix+#14)
	ld (ix+#04),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld hl,l3896
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l328d)
	add hl,bc
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	ret
.l32e4
	cp #a0
	jr c,l3314
	jr z,l3348
	cp #b0
	jr c,l3339
	cp #d0
	jr c,l3317
	cp #ff
	jr nz,l330c
	ld a,(l30f8)
	or a
	jr nz,l3304
	dec a
	ld (l30f9),a
	pop hl
	jp l3362
.l3304
	ld l,(ix+#02)
	ld h,(ix+#03)
	jr l32b7
.l330c
	sub #cf
	ld (ix+#14),a
	inc hl
	jr l32b7
.l3314
	inc hl
	jr l32b7
.l3317
	sub #b0
	ld (l3100),a
	ld a,(l3101)
	or (ix+#0a)
	and (ix+#0c)
	ld (l3101),a
	ld a,#02
	ld (ix+#0f),a
	ld (ix+#10),#01
	ld (ix+#11),#01
	inc hl
	jp l32b7
.l3339
	sub #9f
	ld (ix+#07),a
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
	jp l32b7
.l3348
	dec (ix+#07)
	jr z,l3356
	ld l,(ix+#08)
	ld h,(ix+#09)
	jp l32b7
.l3356
	inc hl
	jp l32b7
	ld (l3103),hl
	xor a
	ld (l3105),a
	ret
;
.stop_music
.l3362
;
	ld a,#ff
	ld (l30f9),a
	ld a,#07
	ld c,#b8
	call l3379
	inc a
	ld c,#00
	call l3379
	inc a
	call l3379
.l3378
	inc a
.l3379
	di
	push bc
	push af
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
	pop af
	pop bc
	ei
	ret
.l339d
	db #00,#04,#04,#00,#0a,#00,#1b,#00
	db #a9,#05,#00,#3a,#36,#32,#2e,#2a
	db #26,#22,#1e,#1a,#16,#12,#0e,#0a
	db #06,#02,#ff,#00,#00,#3a,#36,#32
	db #2e,#2a,#26,#22,#1e,#1a,#16,#12
.l33ca equ $ + 5
	db #0e,#0a,#06,#02,#ff,#00,#04,#04
	db #01,#0a,#00,#fb,#01,#0a,#00,#83
	db #d1,#25,#d0,#23,#25,#d1,#23,#25
	db #25,#d3,#23,#d1,#25,#25,#d3,#25
	db #25,#d0,#23,#25,#d1,#27,#25,#d3
	db #28,#d1,#27,#25,#d1,#27,#d3,#25
	db #d1,#23,#23,#d3,#25,#25,#d0,#25
	db #27,#d1,#28,#2a,#d3,#2c,#d1,#2a
	db #28,#2a,#d3,#28,#d1,#27,#27,#d3
	db #2a,#28,#d0,#25,#27,#d1,#28,#2a
	db #d3,#28,#d1,#27,#d0,#25,#27,#d1
	db #28,#d3,#27,#d1,#25,#25,#d3,#23
	db #20,#d5,#23,#d3,#2c,#d1,#2f,#2c
	db #2b,#d3,#2c,#d1,#28,#28,#d3,#25
	db #25,#d0,#25,#27,#d1,#28,#2a,#d3
	db #2c,#d1,#2a,#28,#2a,#28,#2a,#2b
	db #2b,#2b,#2a,#28,#2a,#d3,#28,#d0
	db #25,#27,#d3,#28,#d1,#2a,#d3,#28
	db #25,#d0,#2f,#30,#d3,#31,#d1,#2c
	db #d3,#28,#25,#d0,#28,#2a,#d3,#2b
	db #d1,#2a,#d3,#28,#24,#d1,#23,#df
	db #23,#a1,#d1,#26,#d0,#26,#26,#d1
	db #26,#25,#26,#d0,#26,#26,#d1,#26
	db #25,#d0,#2c,#2d,#d1,#2c,#2a,#28
	db #2a,#d0,#28,#2a,#d1,#28,#27,#d3
	db #2a,#d1,#28,#d3,#25,#d0,#25,#25
	db #d1,#25,#27,#d0,#28,#2a,#d1,#2c
	db #d0,#27,#28,#d1,#2a,#d0,#25,#27
	db #d1,#28,#d0,#23,#25,#d1,#27,#d0
	db #28,#28,#d1,#28,#28,#d0,#27,#28
	db #d1,#28,#28,#d0,#27,#28,#d1,#28
	db #d0,#2f,#2f,#d1,#2d,#d0,#2c,#2c
	db #d1,#2a,#d0,#2d,#2d,#d1,#2c,#d0
	db #2a,#2a,#d1,#28,#d0,#2a,#2a,#d1
	db #2a,#2a,#d0,#28,#2a,#d1,#2a,#2a
	db #d0,#28,#2a,#d1,#2a,#d0,#27,#27
	db #d1,#25,#d0,#28,#28,#d1,#27,#d0
	db #2a,#2a,#d1,#28,#d0,#27,#27,#d1
	db #28,#a0,#a1,#d3,#2c,#d1,#2a,#28
	db #2a,#28,#27,#28,#28,#27,#25,#d3
	db #27,#28,#d1,#2c,#d3,#2c,#d1,#2a
	db #28,#2a,#28,#27,#28,#28,#27,#25
	db #d3,#27,#28,#d1,#23,#25,#20,#27
	db #23,#28,#23,#23,#25,#20,#27,#23
	db #28,#23,#2a,#23,#23,#25,#20,#27
	db #23,#28,#23,#23,#25,#20,#27,#23
	db #28,#23,#2a,#23,#23,#a0,#a1,#d1
	db #26,#d0,#26,#26,#d1,#26,#25,#26
	db #d0,#26,#26,#d1,#26,#25,#d0,#2c
	db #2d,#d1,#2c,#2a,#28,#2a,#d0,#28
	db #2a,#d1,#28,#27,#d3,#2a,#d1,#28
	db #d3,#25,#d0,#25,#25,#d1,#25,#27
	db #d0,#28,#2a,#d1,#2c,#d0,#27,#28
	db #d1,#2a,#d0,#25,#27,#d1,#28,#d0
	db #23,#25,#d1,#27,#d0,#28,#28,#d1
	db #28,#28,#d0,#27,#28,#d1,#28,#28
	db #d0,#27,#28,#d1,#28,#d0,#2f,#2f
	db #d1,#2d,#d0,#2c,#2c,#d1,#2a,#d0
	db #2d,#2d,#d1,#2c,#d0,#2a,#2a,#d1
	db #28,#d0,#2a,#2a,#d1,#2a,#2a,#d0
	db #28,#2a,#d1,#2a,#2a,#d0,#28,#2a
	db #d1,#2a,#d0,#27,#27,#d1,#25,#d0
	db #28,#28,#d1,#27,#d0,#2a,#2a,#d1
	db #28,#d0,#27,#27,#d1,#28,#a0,#ff
	db #84,#a1,#d0,#b0,#00,#d2,#19,#d1
	db #b2,#00,#d0,#b0,#00,#d2,#19,#d0
	db #b0,#00,#19,#d3,#b2,#00,#d0,#b0
	db #00,#d2,#19,#d1,#b2,#00,#d0,#b0
	db #00,#d2,#19,#d0,#b0,#00,#19,#d3
	db #b2,#00,#d0,#b0,#00,#d2,#15,#d1
	db #b2,#00,#d0,#b0,#00,#d2,#15,#d0
	db #b0,#00,#15,#d3,#b2,#00,#d0,#b0
	db #00,#d2,#17,#d1,#b2,#00,#d0,#b0
	db #00,#d2,#17,#d1,#b2,#00,#b0,#00
	db #b2,#00,#d0,#b0,#00,#d2,#19,#d1
	db #b2,#00,#d0,#b0,#00,#d2,#19,#d0
	db #b0,#00,#19,#d3,#b2,#00,#d0,#b0
	db #00,#d2,#19,#d1,#b2,#00,#d0,#b0
	db #00,#d2,#19,#d0,#b0,#00,#19,#d3
	db #b2,#00,#d0,#b0,#00,#d2,#15,#d1
	db #b2,#00,#d0,#b0,#00,#d2,#15,#d0
	db #b0,#00,#15,#d3,#b2,#00,#d0,#b0
	db #00,#d2,#17,#d1,#b2,#00,#d0,#b0
	db #00,#d2,#17,#d1,#b2,#00,#d0,#b2
	db #00,#b2,#00,#d1,#b2,#01,#a0,#a1
	db #d0,#b0,#00,#d2,#1a,#d1,#b2,#00
	db #d0,#b0,#00,#d2,#1a,#d0,#b0,#00
	db #1a,#d3,#b2,#00,#d0,#b0,#00,#d2
	db #1a,#d1,#b2,#00,#d0,#b0,#00,#d2
	db #1a,#d0,#b0,#00,#1a,#d3,#b2,#00
	db #d0,#b0,#00,#d2,#15,#d1,#b2,#00
	db #d0,#b0,#00,#d2,#15,#d0,#b0,#00
	db #15,#d3,#b2,#00,#d0,#b0,#00,#d2
	db #15,#d1,#b2,#00,#d0,#b0,#00,#d2
	db #15,#d1,#b2,#00,#b0,#00,#b2,#00
	db #d0,#b0,#00,#d2,#1c,#d1,#b2,#00
	db #d0,#b0,#00,#d2,#1c,#d0,#b0,#00
	db #1c,#d3,#b2,#00,#d0,#b0,#00,#d2
	db #1c,#d1,#b2,#00,#d0,#b0,#00,#d2
	db #1c,#d0,#b0,#00,#1c,#d3,#b2,#00
	db #d0,#b0,#00,#d2,#17,#d1,#b2,#00
	db #d0,#b0,#00,#d2,#17,#d0,#b0,#00
	db #17,#d3,#b2,#00,#d0,#b0,#00,#17
	db #b2,#00,#b2,#00,#d1,#b2,#00,#b0
	db #00,#d0,#b2,#00,#b2,#00,#d1,#b2
.l3714 equ $ + 7
	db #00,#b0,#00,#b2,#00,#a0,#ff,#00
	db #06,#06,#00,#0a,#00,#31,#00,#43
	db #02,#2e,#2e,#2e,#32,#2e,#32,#33
	db #32,#30,#32,#2e,#2b,#2c,#2c,#2c
	db #30,#2c,#30,#32,#30,#2e,#30,#2c
	db #29,#2b,#2b,#2b,#2e,#2b,#2e,#30
	db #2e,#2c,#2e,#2b,#27,#d5,#2e,#ff
	db #22,#22,#22,#22,#22,#22,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#1f,#1f,#1f,#1f,#1f,#1f
	db #1f,#1f,#1f,#1f,#1f,#1f,#20,#20
.l376c equ $ + 7
	db #20,#20,#20,#20,#d5,#22,#ff,#00
	db #04,#04,#00,#0a,#00,#1d,#00,#12
	db #02,#9f,#02,#06,#0a,#0e,#12,#16
	db #1a,#1e,#22,#26,#2a,#2e,#32,#36
	db #3a,#3e,#42,#ff,#00,#02,#06,#0a
	db #0e,#12,#16,#1a,#1e,#22,#26,#2a
.l379b equ $ + 6
	db #2e,#32,#36,#3a,#3e,#ff,#00,#03
	db #03,#01,#0a,#00,#72,#00,#f5,#01
	db #a3,#d1,#23,#17,#1c,#1c,#1c,#10
	db #1c,#24,#18,#24,#23,#17,#21,#15
	db #1c,#1c,#1c,#10,#1c,#1c,#1f,#13
	db #1c,#1c,#10,#1c,#1c,#10,#21,#15
	db #1c,#1c,#a0,#a3,#24,#18,#1d,#1d
	db #1d,#11,#1d,#26,#1a,#26,#24,#18
	db #23,#17,#1d,#1d,#1d,#11,#1d,#1d
	db #21,#15,#1d,#1d,#11,#1d,#1d,#11
	db #23,#17,#1d,#1d,#a0,#a3,#26,#1a
	db #1f,#1f,#1f,#13,#1f,#28,#1c,#28
	db #26,#1a,#24,#18,#1f,#1f,#1f,#13
	db #1f,#1f,#23,#17,#1f,#1f,#13,#1f
	db #1f,#13,#24,#18,#1f,#1f,#a0,#ff
	db #9f,#d1,#1f,#a3,#23,#17,#1c,#1c
	db #1c,#10,#1c,#24,#18,#24,#23,#17
	db #21,#15,#1c,#1c,#1c,#10,#1c,#1c
	db #1f,#13,#1c,#1c,#10,#1c,#1c,#10
	db #21,#15,#1c,#1c,#a0,#a3,#24,#18
	db #1d,#1d,#1d,#11,#1d,#26,#1a,#26
	db #24,#18,#23,#17,#1d,#1d,#1d,#11
	db #1d,#1d,#21,#15,#1d,#1d,#11,#1d
	db #1d,#11,#23,#17,#1d,#1d,#a0,#a2
	db #26,#1a,#1f,#1f,#1f,#13,#1f,#28
	db #1c,#28,#26,#1a,#24,#18,#1f,#1f
	db #1f,#13,#1f,#1f,#23,#17,#1f,#1f
	db #13,#1f,#1f,#13,#24,#18,#1f,#1f
	db #a0,#26,#1a,#1f,#1f,#1f,#13,#1f
	db #28,#1c,#28,#26,#1a,#24,#18,#1f
	db #1f,#1f,#13,#1f,#1f,#23,#17,#1f
	db #1f,#13,#1f,#1f,#13,#24,#18,#1f
.l3896 equ $ + 1
	db #ff,#00,#00,#7c,#07,#10,#07,#ab
	db #06,#4b,#06,#f1,#05,#9b,#05,#4b
	db #05,#ff,#04,#b7,#04,#73,#04,#33
	db #04,#f7,#03,#be,#03,#88,#03,#55
	db #03,#26,#03,#f8,#02,#ce,#02,#a5
	db #02,#7f,#02,#5c,#02,#3a,#02,#1a
	db #02,#fb,#01,#df,#01,#c4,#01,#ab
	db #01,#93,#01,#7c,#01,#67,#01,#53
	db #01,#40,#01,#2e,#01,#1d,#01,#0d
	db #01,#fe,#00,#ef,#00,#e2,#00,#d5
	db #00,#c9,#00,#be,#00,#b3,#00,#a9
	db #00,#a0,#00,#97,#00,#8e,#00,#86
	db #00,#7f,#00,#78,#00,#71,#00,#6b
	db #00,#65,#00,#5f,#00,#5a,#00,#55
	db #00,#50,#00,#4b,#00,#47,#00,#43
	db #00,#3f,#00,#3c,#00,#39,#00,#35
	db #00,#32,#00,#30,#00,#2d,#00,#2a
	db #00,#28,#00,#26,#00,#24,#00,#22
	db #00,#20,#00,#1e,#00,#1c,#00,#1b
	db #00,#19,#00,#18,#00,#16,#00,#15
	db #00,#14,#00,#13,#00,#12,#00,#11
	db #00,#10,#00,#0f,#00,#0e,#00,#0d
	db #00,#00,#3a,#36,#32,#2e,#2a,#26
	db #22,#1e,#1a,#16,#12,#0e,#0a,#06
	db #02,#ff,#00,#2e,#2e,#2e,#32,#2e
	db #32,#33,#32,#30,#32,#2e,#2b,#2c
	db #2c,#2c,#30,#2c,#30,#32,#30,#2e
	db #30,#2c,#29,#2b,#2b,#2b,#2e,#2b
	db #2e,#30,#2e,#2c,#2e,#2b,#d5,#2e
	db #ff,#00,#00,#02,#06,#0a,#0e,#12
	db #16,#1a,#1e,#22,#26,#2a,#2e,#32
	db #36,#3a,#ff,#9f,#d1,#13,#13,#a3
	db #17,#0b,#10,#10,#10,#04,#10,#18
	db #0c,#18,#17,#0b,#15,#09,#10,#10
	db #10,#04,#10,#10,#13,#07,#10,#10
	db #04,#10,#10,#04,#15,#09,#10,#10
	db #a0,#a3,#18,#0c,#11,#11,#11,#05
	db #11,#1a,#0e,#1a,#18,#0c,#17,#0b
	db #11,#11,#11,#05,#11,#11,#15,#09
	db #11,#11,#05,#11,#11,#05,#17,#0b
	db #11,#11,#a0,#a2,#1a,#0e,#13,#13
	db #13,#07,#13,#1c,#10,#1c,#1a,#0e
	db #18,#0c,#13,#13,#13,#07,#13,#13
	db #17,#0b,#13,#13,#07,#13,#13,#07
	db #18,#0c,#13,#13,#a0,#1a,#0e,#13
	db #13,#13,#07,#13,#00,#00
;
.init_music		; added by Megachur
;
	ld hl,l30f9
	ld (hl),#00
	or a
	jp z,init_music0
	dec a
	jp z,init_music1
	dec a
	jp z,init_music2
	dec a
	jp z,init_music3
	jp init_music4
;
.music_info
	db "Bonne Annee Intro 91-92 (1991)(Crack'n'Rom)()",0
	db "",0

	read "music_end.asm"
