; Music of Dave Rogers Unused (an early idea for Stormlord) (198x)(Dave Rogers)(Dave Rogers)()
; Ripped by Megachur the 18/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DAVEROGU.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #8000

	read "music_header.asm"

	jp l80b6
	jp l806b
;
.init_music
BASIC_DEMO
;
	ld e,#01
	ld a,#01
.l800a
	ld c,a
	call l8092
	ld a,(hl)
	cp #09
	jr nc,l8016
	ld c,a
	inc hl
	ld a,(hl)
.l8016
	cp #f4
	ld b,#0a
	jr nz,l801f
	inc hl
	ld b,(hl)
	inc hl
.l801f
	ld ix,l8313
	dec c
	jr z,l8042
	ld ix,l8336
	dec c
	jr z,l8042
	ld ix,l8359
	dec c
	jr z,l8042
	ld a,(l8323)
	or a
	ld ix,l8313
	jr z,l8042
	ld ix,l8336
.l8042
	ld a,b
	cp (ix+#10)
	ret c
	xor a
	ld (ix+#10),a
	ld (ix+#12),l
	ld (ix+#13),h
	ld (ix+#14),l
	ld (ix+#15),h
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#11),#01
	ld (ix+#18),a
	ld (ix+#20),a
	ld (ix+#10),b
	ret
;
.stop_music
.l806b
;
	ld hl,#ffff
	ld (l8323),hl
	ld (l8346),hl
	ld (l8369),hl
	ld a,#3f
	ld (l82fc),a
	xor a
	ld (l82fd),a
	ld (l82fe),a
	ld (l82ff),a
	ld (l8323),a
	ld (l8346),a
	ld (l8369),a
	jp l80e9
.l8092
	ld a,e
	add a
	add #9c
	ld l,a
	adc #84
	sub l
	ld h,a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,l8384
	add hl,de
	ret
.l80a3
	ld a,e
	add a
	add #4c
	ld e,a
	adc #84
	sub e
	ld d,a
	ld a,(de)
	add #84
	ld c,a
	inc de
	ld a,(de)
	adc #83
	ld b,a
	ret
;
.real_play_music
.l80b6
;
	ld ix,l8313
	ld hl,(l82f5)
	call l810b
	ld hl,(l8303)
	ld (l82f5),hl
	ld hl,(l82f7)
	ld ix,l8336
	call l810b
	ld hl,(l8303)
	ld (l82f7),hl
	ld hl,(l82f9)
	ld ix,l8359
	call l810b
	ld hl,(l8303)
	ld (l82f9),hl
	call l82b1
.l80e9
	xor a
	ld hl,l8302
	ld de,#f40d
.l80f0
	ld b,d
	out (c),e
	ld bc,#f6c0
	out (c),c
	out (c),a
	ld b,d
	ld c,(hl)
	dec hl
	out (c),c
	ld bc,#f680
	out (c),c
	out (c),a
	dec e
	jp p,l80f0
	ret
.l810b
	ld (l8303),hl
	ld a,(ix+#10)
	or a
	ret z
	dec (ix+#11)
	jp nz,l8263
	ld a,#14
	ld (l8125),a
	ld h,(ix+#13)
	ld l,(ix+#12)
.l8125 equ $ + 1
.l8124
	ld a,#12
	dec a
	ld (l8125),a
	ret z
	ld a,(hl)
	inc hl
	ld e,(hl)
	inc hl
	cp #00
	jp z,l820e
	cp #09
	jr c,l8181
	cp #65
	jp c,l820b
	cp #7f
	jr c,l818c
	cp #df
	jp c,l8200
	cp #e3
	jp z,l8209
	cp #e1
	jp z,l8174
	cp #e9
	jr z,l819f
	cp #e8
	jr z,l81ab
	cp #ea
	jr z,l81b7
	cp #e2
	jp z,l81e6
	cp #e5
	jr z,l81c1
	cp #e6
	jp z,l8199
	cp #f0
	jr z,l81e0
	cp #ff
	jr z,l81cd
	jr l8124
.l8174
	ld (ix+#10),#00
	ld h,(ix+#1d)
	ld l,(ix+#1c)
	ld (hl),#00
	ret
.l8181
	push hl
	push ix
	call l800a
	pop ix
	pop hl
	jr l8124
.l818c
	sub #66
	ld (l82fb),a
	ld (ix+#19),#01
	dec hl
	jp l8124
.l8199
	ld (ix+#18),e
	jp l8124
.l819f
	call l80a3
	ld (ix+#0e),c
	ld (ix+#0f),b
	jp l8124
.l81ab
	call l80a3
	ld (ix+#0c),c
	ld (ix+#0d),b
	jp l8124
.l81b7
	call l80a3
	ld (l8311),bc
	jp l8124
.l81c1
	ld (ix+#15),h
	ld (ix+#14),l
	call l8092
	jp l8124
.l81cd
	ld h,(ix+#15)
	ld l,(ix+#14)
	ld a,(hl)
	inc a
	jr nz,l81dd
	ld h,(ix+#17)
	ld l,(ix+#16)
.l81dd
	jp l8124
.l81e0
	ld (ix+#20),e
	jp l8124
.l81e6
	push hl
.l81e8 equ $ + 1
	ld hl,#28b2
	ld c,l
	ld b,h
	add hl,hl
	add hl,hl
	add hl,bc
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,bc
	ld (l81e8),hl
	ld a,h
	and e
	inc a
	ld (l820a),a
	pop hl
	jp l8124
.l8200
	and #7f
	dec hl
	ld e,(ix+#1f)
	jp l820b
.l820a equ $ + 1
.l8209
	ld a,#2a
.l820b
	add (ix+#18)
.l820e
	ld (ix+#11),e
	ld (ix+#21),a
	ld (ix+#1f),e
	ld (ix+#13),h
	ld (ix+#12),l
	call l82a1
	ld h,(ix+#1d)
	ld l,(ix+#1c)
	ld (hl),#00
	push ix
	pop de
	ld hl,#0008
	add hl,de
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	dec (ix+#19)
	ld (ix+#19),#00
	ld l,(ix+#1a)
	jr nz,l8257
	ld hl,(l8311)
	ld (l8309),hl
	ld hl,#0000
	ld (l8305),hl
.l8257
	ld a,(l82fc)
	and (ix+#1b)
	or l
	and #3f
	ld (l82fc),a
.l8263
	call l82c9
	ld h,(ix+#1d)
	ld l,(ix+#1c)
	ld a,(hl)
	add c
	sub #80
	ld (hl),a
	ld hl,(l8303)
	ld a,h
	or l
	ret z
	ld a,(ix+#20)
	or a
	jr nz,l8292
	inc ix
	inc ix
	call l82c9
	ld hl,(l8303)
	ld b,#00
	add hl,bc
	ld c,#80
	sbc hl,bc
	ld (l8303),hl
	ret
.l8292
	dec (ix+#22)
	ld a,(ix+#21)
	jr z,l82a1
	add (ix+#20)
	ld (ix+#22),#01
.l82a1
	add a
	add #84
	ld l,a
	adc #83
	sub l
	ld h,a
	ld de,l8303
	ldi
	ldi
	ret
.l82b1
	ld ix,l8305
	call l82c9
	ld hl,l82fb
	ld a,(hl)
	add c
	sub #80
	ld (hl),a
	cp #21
	ret c
	inc hl
	ld a,(hl)
	or #38
	ld (hl),a
	ret
.l82c9
	push ix
	pop hl
	ld d,(ix+#05)
	ld e,(ix+#04)
	inc (hl)
	ld a,(de)
	sub (hl)
	ld c,#80
	ret nz
	ld (hl),a
	inc de
	ld a,(de)
	ld c,a
	inc de
	inc hl
	inc (hl)
	ld a,(de)
	sub (hl)
	ret nz
	ld (hl),a
	inc de
	ld a,(de)
	inc a
	jr nz,l82ee
	ld d,(ix+#0d)
	ld e,(ix+#0c)
.l82ee
	ld (ix+#05),d
	ld (ix+#04),e
	ret
.l82fc equ $ + 7
.l82fb equ $ + 6
.l82f9 equ $ + 4
.l82f7 equ $ + 2
.l82f5
	db #00,#00,#00,#00,#00,#00,#05,#3f
.l8303 equ $ + 6
.l8302 equ $ + 5
.l82ff equ $ + 2
.l82fe equ $ + 1
.l82fd
	db #00,#00,#00,#64,#00,#0a,#00,#00
.l8309 equ $ + 4
.l8305
	db #0d,#00,#0a,#00,#10,#85,#04,#00
.l8313 equ $ + 6
.l8311 equ $ + 4
	db #00,#00,#12,#00,#10,#85,#1b,#00
	db #00,#00,#10,#85,#95,#85,#00,#00
.l8323 equ $ + 6
	db #00,#00,#10,#85,#95,#85,#00,#ff
	db #b3,#86,#a5,#86,#a5,#86,#0c,#00
	db #08,#36,#fd,#82,#00,#48,#00,#00
.l8336 equ $ + 1
	db #00,#02,#01,#00,#00,#3e,#85,#9f
	db #85,#00,#00,#00,#00,#38,#85,#9f
.l8346 equ $ + 1
	db #85,#00,#ff,#85,#88,#0c,#87,#02
	db #87,#00,#00,#10,#2d,#fe,#82,#00
.l8359 equ $ + 4
	db #12,#00,#00,#00,#09,#01,#00,#00
	db #21,#85,#8b,#85,#00,#00,#00,#00
.l8369 equ $ + 4
	db #1b,#85,#8b,#85,#00,#ff,#49,#87
	db #41,#87,#41,#87,#00,#00,#20,#1b
	db #ff,#82,#00,#48,#00,#00,#00,#2a
	db #00,#00,#00,#00,#00,#00,#00
.l8384
	db #00,#00,#84,#1a,#07,#19,#9f,#17
	db #4c,#16,#0c,#15,#dd,#13,#c0,#12
	db #b2,#11,#b4,#10,#c4,#0f,#e2,#0e
	db #0c,#0e,#42,#0d,#84,#0c,#d0,#0b
	db #26,#0b,#86,#0a,#ef,#09,#60,#09
	db #d9,#08,#5a,#08,#e2,#07,#71,#07
	db #06,#07,#a1,#06,#42,#06,#e8,#05
	db #93,#05,#43,#05,#f7,#04,#b0,#04
	db #6d,#04,#2d,#04,#f1,#03,#b8,#03
	db #83,#03,#50,#03,#21,#03,#f4,#02
	db #ca,#02,#a1,#02,#7c,#02,#58,#02
	db #36,#02,#17,#02,#f9,#01,#dc,#01
	db #c1,#01,#a8,#01,#90,#01,#7a,#01
	db #65,#01,#51,#01,#3e,#01,#2c,#01
	db #1b,#01,#0b,#01,#fc,#00,#ee,#00
	db #e1,#00,#d4,#00,#c8,#00,#bd,#00
	db #b2,#00,#a8,#00,#9f,#00,#96,#00
	db #8e,#00,#86,#00,#7e,#00,#77,#00
	db #70,#00,#6a,#00,#64,#00,#5e,#00
	db #59,#00,#54,#00,#4f,#00,#4b,#00
	db #47,#00,#43,#00,#3f,#00,#3c,#00
	db #38,#00,#35,#00,#32,#00,#2f,#00
	db #2d,#00,#2a,#00,#28,#00,#25,#00
	db #23,#00,#21,#00,#20,#00,#1e,#00
	db #1c,#00,#1b,#00,#19,#00,#00,#00
	db #8c,#01,#90,#01,#97,#01,#a1,#01
	db #b4,#01,#c1,#01,#ce,#01,#d8,#01
	db #e2,#01,#e3,#01,#ed,#01,#fa,#01
	db #fb,#01,#fc,#01,#06,#02,#07,#02
	db #11,#02,#1b,#02,#25,#02,#26,#02
	db #27,#02,#37,#02,#3e,#02,#45,#02
	db #4c,#02,#53,#02,#5d,#02,#6a,#02
	db #83,#02,#87,#02,#91,#02,#9e,#02
	db #a5,#02,#b2,#02,#bc,#02,#c9,#02
	db #d0,#02,#d7,#02,#de,#02,#00,#00
	db #1a,#03,#20,#03,#7e,#03,#bd,#03
	db #2d,#04,#59,#04,#75,#04,#c7,#04
	db #ea,#04,#f9,#04,#04,#05,#23,#05
	db #24,#05,#2d,#05,#48,#05,#49,#05
	db #4c,#05,#66,#05,#67,#05,#6a,#05
	db #6b,#05,#6c,#05,#6f,#05,#79,#05
	db #83,#05,#8f,#05,#99,#05,#a3,#05
	db #af,#05,#b7,#05,#bd,#05,#c7,#05
	db #d2,#05,#dd,#05,#ea,#05,#f5,#05
	db #00,#06,#0d,#06,#18,#06,#23,#06
	db #30,#06,#3d,#06,#4d,#06,#53,#06
	db #5e,#06,#69,#06,#76,#06,#7e,#06
	db #87,#06,#88,#06,#91,#06,#9e,#06
	db #a9,#06,#ba,#06,#c7,#06,#d0,#06
	db #db,#06,#e4,#06,#c8,#80,#c8,#ff
	db #01,#88,#01,#08,#7f,#08,#ff,#01
	db #88,#01,#01,#81,#02,#0f,#7f,#0b
	db #ff,#01,#8c,#01,#01,#81,#01,#01
	db #7f,#01,#01,#81,#01,#01,#7f,#01
	db #0f,#7f,#0c,#ff,#01,#8c,#01,#01
	db #7e,#02,#04,#7f,#06,#c8,#80,#c8
	db #ff,#01,#8c,#01,#01,#7f,#03,#02
	db #7f,#06,#c8,#80,#c8,#ff,#01,#8c
	db #01,#03,#7f,#09,#c8,#80,#c8,#ff
	db #01,#8c,#01,#04,#7f,#09,#c8,#80
	db #c8,#ff,#ff,#01,#86,#01,#01,#82
	db #03,#02,#74,#01,#ff,#01,#8f,#01
	db #02,#7f,#01,#03,#7f,#05,#c8,#80
	db #c8,#ff,#ff,#ff,#01,#86,#01,#01
	db #7e,#03,#c8,#80,#c8,#ff,#ff,#01
	db #81,#01,#01,#7f,#02,#01,#81,#01
	db #ff,#01,#82,#01,#01,#7e,#02,#01
	db #82,#01,#ff,#01,#7f,#01,#01,#81
	db #02,#01,#7f,#01,#ff,#ff,#ff,#01
	db #8d,#01,#01,#7e,#06,#01,#82,#01
	db #01,#7f,#02,#07,#7f,#01,#ff,#01
	db #6b,#01,#01,#a9,#02,#ff,#01,#81
	db #08,#01,#7f,#08,#ff,#01,#82,#03
	db #04,#7b,#06,#ff,#04,#85,#06,#01
	db #7e,#03,#ff,#01,#83,#05,#02,#7c
	db #02,#02,#7f,#06,#ff,#01,#87,#02
	db #01,#7f,#05,#02,#7f,#05,#03,#7f
	db #05,#ff,#01,#49,#01,#01,#9d,#01
	db #01,#28,#01,#01,#ef,#01,#01,#75
	db #01,#01,#8b,#01,#01,#7c,#01,#01
	db #dc,#01,#ff,#01,#80,#01,#ff,#01
	db #82,#03,#01,#81,#01,#07,#7f,#08
	db #ff,#04,#80,#01,#01,#72,#02,#01
	db #7b,#02,#01,#86,#c8,#ff,#01,#7f
	db #05,#03,#7f,#05,#ff,#01,#8f,#01
	db #01,#80,#01,#01,#7f,#02,#03,#7f
	db #0d,#ff,#01,#8f,#01,#02,#7f,#06
	db #04,#7f,#09,#ff,#01,#8e,#01,#01
	db #81,#01,#01,#7f,#02,#04,#7f,#0d
	db #ff,#01,#0b,#01,#01,#a1,#03,#ff
	db #01,#81,#0c,#0a,#7f,#0c,#ff,#01
	db #6c,#01,#01,#81,#01,#ff,#ff,#01
	db #ff,#ff,#80,#c8,#ff,#01,#79,#01
	db #01,#8b,#01,#01,#6f,#01,#01,#9b
	db #01,#01,#5b,#01,#01,#af,#01,#01
	db #47,#01,#01,#c3,#01,#ff,#01,#8f
	db #01,#01,#7a,#01,#01,#86,#01,#01
	db #7f,#09,#08,#7f,#06,#ff,#01,#99
	db #03,#01,#79,#07,#0a,#7e,#c8,#ff
	db #00,#00,#e1,#ff,#ff,#01,#02,#02
	db #01,#02,#02,#03,#03,#e8,#00,#00
	db #01,#e6,#0c,#e9,#10,#00,#48,#00
	db #90,#e8,#0a,#f0,#00,#e5,#04,#e5
	db #05,#e6,#00,#e5,#04,#e5,#05,#e6
	db #05,#f0,#0c,#e5,#04,#e5,#05,#e6
	db #00,#f0,#0c,#e5,#04,#e5,#05,#e6
	db #05,#f0,#0c,#e5,#04,#e5,#05,#e6
	db #11,#e8,#09,#e9,#00,#e5,#0d,#e6
	db #09,#e8,#04,#e5,#10,#e5,#10,#e8
	db #0a,#e5,#10,#e5,#10,#e5,#10,#e5
	db #10,#e6,#07,#e5,#10,#e5,#10,#e6
	db #05,#e5,#10,#e5,#10,#ff,#e8,#04
	db #00,#01,#ea,#00,#e9,#11,#e5,#09
	db #e5,#09,#e6,#30,#e5,#06,#e5,#06
	db #e5,#06,#e5,#06,#e5,#06,#e6,#29
	db #e5,#06,#e5,#06,#e6,#30,#e5,#06
	db #e5,#06,#e6,#35,#e5,#06,#e5,#06
	db #00,#48,#e6,#39,#e5,#06,#e5,#06
	db #e5,#06,#e6,#37,#e5,#06,#e6,#35
	db #e5,#06,#00,#5d,#ff,#e8,#02,#00
	db #01,#e9,#0f,#00,#48,#00,#90,#e6
	db #00,#e5,#04,#e5,#05,#e6,#24,#f0
	db #0c,#e5,#04,#e5,#05,#e6,#05,#e8
	db #03,#e5,#07,#e5,#0a,#e5,#07,#e5
	db #08,#e6,#00,#e5,#0a,#e5,#07,#e5
	db #0a,#e5,#08,#e5,#08,#e6,#11,#e8
	db #02,#e5,#0d,#e6,#05,#e5,#0d,#45
	db #03,#c0,#bc,#e5,#0d,#e5,#0d,#00
	db #3f,#e6,#21,#e8,#02,#e9,#0f,#e5
	db #10,#e8,#03,#e5,#04,#e8,#03,#e5
	db #05,#e6,#1f,#e5,#04,#e6,#1d,#e5
	db #05,#00,#5d,#ff,#ff,#04,#e6,#1d
	db #e5,#05,#e6,#24,#e5,#10,#00,#5d
	db #ff,#5d,#ff,#5d,#ff,#21,#03,#00
	db #06,#21,#09,#28,#12,#1d,#03,#00
	db #06,#1d,#09,#23,#06,#24,#03,#23
	db #06,#1f,#03,#00,#09,#21,#06,#1f
	db #03,#21,#06,#1f,#03,#21,#06,#1f
	db #03,#9d,#00,#06,#1d,#09,#a4,#a3
	db #ff,#00,#09,#a1,#28,#12,#1d,#03
	db #00,#03,#9c,#1d,#09,#23,#06,#24
	db #03,#23,#06,#1f,#03,#21,#24,#f0
	db #00,#1d,#12,#9c,#ff,#f0,#04,#73
	db #24,#09,#73,#a4,#6b,#00,#09,#66
	db #00,#03,#66,#00,#03,#66,#00,#03
	db #f0,#05,#73,#21,#09,#73,#a1,#6b
	db #00,#06,#f0,#04,#66,#1f,#03,#66
	db #1f,#06,#66,#1f,#03,#73,#24,#09
	db #73,#a4,#6b,#00,#09,#66,#00,#03
	db #66,#00,#03,#66,#00,#03,#f0,#05
	db #73,#21,#09,#73,#a1,#6b,#00,#06
	db #f0,#04,#66,#1f,#03,#66,#9f,#66
	db #00,#03,#66,#9f,#ff,#06,#e5,#00
	db #06,#3b,#03,#3c,#06,#3e,#03,#3c
	db #06,#3b,#03,#39,#06,#37,#03,#39
	db #06,#34,#03,#34,#06,#32,#03,#34
	db #06,#00,#03,#e9,#0d,#40,#09,#e9
	db #00,#ff,#39,#18,#2d,#03,#30,#06
	db #37,#03,#35,#12,#34,#0f,#3b,#03
	db #ff,#73,#18,#09,#73,#98,#6b,#00
	db #12,#ff,#66,#9d,#e9,#0f,#3c,#06
	db #00,#03,#e9,#0d,#43,#09,#e9,#0f
	db #42,#06,#40,#0c,#35,#06,#00,#03
	db #e9,#0d,#3c,#09,#e9,#0f,#3b,#06
	db #39,#0c,#ff,#ff,#3c,#0c,#c0,#bb
	db #be,#c3,#ff,#06,#1f,#45,#03,#c0
	db #bc,#c5,#c0,#bc,#c5,#c0,#be,#bc
	db #be,#c0,#c5,#c1,#be,#c5,#c1,#c5
	db #c7,#48,#06,#47,#03,#c5,#c3,#ff
	db #ff,#ff,#23,#06,#21,#03,#a1,#a4
	db #a1,#a1,#95,#a1,#a1,#a4,#a1,#a1
	db #a1,#a6,#a6,#a9,#a6,#a6,#9a,#a8
	db #a8,#ab,#a8,#a6,#a4,#ff,#ff,#ff
	db #03,#f0,#ff,#ff,#ff,#09,#73,#03
	db #e8,#04,#e9,#01,#ea,#16,#5d,#0a
	db #ff,#03,#e8,#05,#e9,#02,#ea,#22
	db #24,#48,#e1,#03,#e8,#06,#e9,#03
	db #ea,#17,#4f,#4d,#e1,#00,#03,#03
	db #e8,#00,#e9,#00,#ea,#00,#53,#0f
	db #e1,#03,#e8,#00,#e9,#00,#ea,#00
	db #5e,#10,#e1,#03,#e8,#00,#e9,#00
	db #ea,#00,#4f,#14,#e1,#ff,#9f,#02
	db #e8,#00,#e9,#00,#43,#14,#e1,#03
	db #e8,#00,#e9,#00,#e1,#02,#e8,#00
	db #e9,#00,#56,#63,#e1,#9a,#66,#04
	db #e8,#14,#e9,#15,#ea,#16,#6b,#00
	db #10,#e1,#04,#e8,#14,#e9,#15,#ea
	db #16,#6f,#54,#10,#e1,#04,#e8,#14
	db #e9,#15,#ea,#16,#69,#60,#10,#e1
	db #00,#e5,#04,#e8,#19,#e9,#17,#ea
	db #18,#6b,#0e,#10,#e1,#04,#e8,#19
	db #e9,#17,#ea,#18,#66,#1a,#11,#e1
	db #04,#e8,#19,#e9,#17,#ea,#18,#73
	db #32,#12,#e1,#9b,#1c,#04,#e8,#1a
	db #e9,#1b,#ea,#1c,#69,#3e,#1b,#e1
	db #04,#e8,#1a,#e9,#1b,#ea,#1c,#6b
	db #4d,#1b,#e1,#04,#e8,#1a,#e9,#1b
	db #ea,#1c,#6d,#5f,#1b,#e1,#0c,#00
	db #e8,#1d,#e9,#1e,#37,#12,#43,#09
	db #43,#18,#3e,#2d,#e1,#04,#04,#28
	db #00,#01,#04,#28,#00,#01,#e5,#28
	db #54,#09,#54,#24,#e1,#6b,#51,#24
	db #e1,#03,#34,#04,#e8,#21,#ea,#22
	db #e9,#23,#6b,#2d,#23,#e1,#04,#e8
	db #22,#ea,#20,#e9,#23,#73,#35,#2f
	db #e1,#04,#e8,#20,#ea,#21,#e9,#23
	db #73,#41,#2b,#e1,#ff,#1a,#04,#04
	db #2f,#00,#01,#e5,#2f,#e1,#e8,#24
	db #e9,#25,#ea,#26,#2d,#6e,#e1,#04
	db #e8,#24,#e9,#25,#ea,#26,#4a,#08
	db #e1,#e6,#24,#e8,#09,#e9,#0a,#23
	db #0e,#e9,#00,#00
;
.play_music	; added by Megachur
;
	ld a,1
	inc a
play_music_tempo
	ld (play_music+1),a
	cp 3
	ret nz
	ld a,1
	ld (play_music+1),a
	jp real_play_music
;
.music_info
	db "Dave Rogers Unused (an early idea for Stormlord) (198x)(Dave Rogers)(Dave Rogers)",0
	db "",0

	read "music_end.asm"
