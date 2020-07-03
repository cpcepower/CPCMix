; Music of Quattro (1993)(Odiesoft)()(ST-Module)
; Ripped by Megachur the 26/12/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "QUATTRO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9000

	read "music_header.asm"

	jr l9004
	jr l9013
.l9004
	call l902f
	ld hl,l9452
	ld de,l901c
	ld bc,#81ff
	jp #bcd7
.l9013
	ld hl,l9452
	call #bcdd
	jp l909b
.l901c
	push ix
	call l90b7
	pop ix
	ret
	jp l902f
	jp l90b7
	jp l909b
	db #66,#04
;
.init_music
.l902f
;
	ld b,#03
	ld ix,l93fe
	ld iy,l932a
	ld de,#001c
.l903c
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
	djnz l903c
	ld a,#05
	ld (l90df),a
	ld a,d
	ld (l90f3),a
	inc a
	ld (l90da),a
	ld a,#38
	ld (l90e4),a
	ld a,#ff
	ld (l9326),a
	ld (l9327),a
	ld (l9328),a
	ld (l9329),a
	ld a,#0c
	ld c,d
	call l9308
	ld a,#0d
	ld c,d
	jp l9308
;
.stop_music
.l909b
;
	ld a,#07
	ld c,#3f
	call l9308
	ld a,#08
	ld c,#00
	call l9308
	ld a,#09
	ld c,#00
	call l9308
	ld a,#0a
	ld c,#00
	jp l9308
;
.play_music
.l90b7
;
	ld hl,l90da
	dec (hl)
	ld ix,l93fe
	ld bc,l940c
	call l916d
	ld ix,l941a
	ld bc,l9428
	call l916d
	ld ix,l9436
	ld bc,l9444
	call l916d
.l90da equ $ + 1
	ld a,#00
	or a
	jr nz,l90e3
.l90df equ $ + 1
	ld a,#00
	ld (l90da),a
.l90e4 equ $ + 1
.l90e3
	ld a,#00
	ld hl,l9327
	cp (hl)
	jr z,l90f2
	ld (hl),a
	ld c,a
	ld a,#07
	call l9308
.l90f3 equ $ + 1
.l90f2
	ld a,#00
	ld hl,l9326
	cp (hl)
	jr z,l9101
	ld (hl),a
	ld c,a
	ld a,#06
	call l9308
.l9102 equ $ + 1
.l9101
	ld a,#00
	ld hl,l9328
	cp (hl)
	jr z,l9110
	ld (hl),a
	ld c,a
	ld a,#0b
	call l9308
.l9111 equ $ + 1
.l9110
	ld a,#00
	ld hl,l9329
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l9308
.l911e
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l921e
.l912d
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
	jp l9308
.l9147
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l915c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l915c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l9180
.l916d
	ld a,(l90da)
	or a
	jp nz,l921e
	dec (ix+#06)
	jp nz,l921e
	ld l,(ix+#00)
	ld h,(ix+#01)
.l9180
	ld a,(hl)
	or a
	jr z,l911e
	cp #fe
	jr z,l912d
	cp #ff
	jr z,l9147
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l9330
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l91bc
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l91bc
	and #7f
	ld (ix+#06),a
	jr l920f
.l91bc
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l91d0
	ld (ix+#05),a
	ld (ix+#0a),d
.l91d0
	add a
	add a
	add a
	ld e,a
	ld hl,l9466
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
	jr z,l920f
	cp #f0
	jp z,l92c4
	cp #d0
	jp z,l92e0
	cp #b0
	jp z,l92e8
	cp #80
	jp nc,l92f0
	cp #10
	jr nz,l920f
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l920f
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l921e
	ld a,(ix+#17)
	or a
	jr nz,l9232
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l9232
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l925d
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l9330
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l925d
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
	call l9308
	ld c,h
	ld a,(ix+#03)
	call l9308
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l929b
	and #0f
	sub (ix+#0a)
	jr nc,l9291
	xor a
.l9291
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l9308
.l929b
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
	jr z,l92b8
	ld b,a
	ld a,c
	ld (l90f3),a
	ld a,b
	sub #40
.l92b8
	ld (l92bf),a
	ld a,(l90e4)
.l92bf equ $ + 1
	bit 0,a
	ld (l90e4),a
	ret
.l92c4
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l94e6
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l920f
.l92e0
	inc hl
	ld a,(hl)
	ld (l90df),a
	jp l920f
.l92e8
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l920f
.l92f0
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l9111),a
	inc hl
	ld a,(hl)
	ld (l9102),a
	jp l920f
.l9308
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
.l9329 equ $ + 3
.l9328 equ $ + 2
.l9327 equ $ + 1
.l9326
	db #ff,#ff,#ff,#ff
.l932a
	dw l95a6,l95f1,l963c
.l9330
	db #ee,#0e,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
	db #0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l93fe equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l940c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l941a
	db #00,#00,#02,#03,#09,#00,#00,#00
.l9428 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9436 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l9444 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9452
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l9466 equ $ + 4
	db #75,#6c,#65,#2e,#06,#95,#46,#95
	db #66,#95,#07,#00,#06,#95,#86,#95
	db #66,#95,#00,#00,#00,#8f,#00,#8f
	db #00,#8f,#00,#00,#00,#8f,#00,#8f
	db #00,#8f,#00,#00,#00,#8f,#00,#8f
	db #00,#8f,#00,#00,#00,#8f,#00,#8f
	db #00,#8f,#00,#00,#00,#8f,#00,#8f
	db #00,#8f,#00,#00,#00,#8f,#00,#8f
	db #00,#8f,#00,#00,#00,#8f,#00,#8f
	db #00,#8f,#00,#00,#00,#8f,#20,#bb
	db #20,#bb,#00,#00,#26,#c1,#66,#c1
	db #06,#c3,#00,#00,#26,#c1,#26,#c3
	db #46,#c3,#00,#00,#66,#c3,#66,#c1
	db #86,#c1,#07,#00,#20,#bb,#20,#bb
	db #20,#bb,#00,#00,#20,#bb,#20,#bb
	db #20,#bb,#00,#00,#20,#bb,#20,#bb
.l94e6 equ $ + 4
	db #20,#bb,#00,#00,#20,#bb,#20,#bb
	db #20,#bb,#20,#bb,#20,#bb,#20,#bb
	db #20,#bb,#20,#bb,#20,#bb,#20,#bb
	db #a6,#c3,#20,#bb,#20,#bb,#20,#bb
	db #20,#bb,#20,#bb,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0d
	db #0c,#0c,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#0a,#08
	db #06,#04,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#09,#09,#09
	db #09,#09,#08,#08,#08,#08,#08,#07
.l95a6 equ $ + 4
	db #06,#04,#02,#00,#00,#87,#96,#00
	db #91,#96,#00,#9d,#96,#00,#b0,#96
	db #00,#c2,#96,#00,#d4,#96,#00,#9d
	db #96,#00,#b0,#96,#00,#c2,#96,#00
	db #d4,#96,#00,#e8,#96,#00,#0a,#97
	db #00,#e8,#96,#00,#58,#97,#00,#87
	db #96,#00,#91,#96,#00,#9d,#96,#00
	db #b0,#96,#00,#c2,#96,#00,#d4,#96
	db #00,#e8,#96,#00,#0a,#97,#00,#e8
.l95f1 equ $ + 7
	db #96,#00,#58,#97,#80,#a6,#95,#00
	db #6c,#97,#00,#ad,#97,#00,#ee,#97
	db #00,#1a,#98,#00,#45,#98,#00,#71
	db #98,#00,#ee,#97,#00,#1a,#98,#00
	db #45,#98,#00,#71,#98,#00,#a4,#98
	db #00,#c6,#98,#00,#a4,#98,#00,#14
	db #99,#00,#6c,#97,#00,#ad,#97,#00
	db #ee,#97,#00,#1a,#98,#00,#45,#98
	db #00,#71,#98,#00,#a4,#98,#00,#c6
	db #98,#00,#a4,#98,#00,#14,#99,#80
.l963c equ $ + 2
	db #f1,#95,#00,#3f,#99,#00,#42,#99
	db #00,#45,#99,#00,#61,#99,#00,#7f
	db #99,#00,#3f,#99,#00,#45,#99,#00
	db #61,#99,#00,#7f,#99,#00,#3f,#99
	db #00,#9d,#99,#00,#bf,#99,#00,#9d
	db #99,#00,#0d,#9a,#00,#3f,#99,#00
	db #42,#99,#00,#45,#99,#00,#61,#99
	db #00,#7f,#99,#00,#3f,#99,#00,#9d
	db #99,#00,#bf,#99,#00,#9d,#99,#00
	db #0d,#9a,#80,#3c,#96,#3a,#08,#00
	db #38,#88,#37,#88,#33,#88,#ff,#2e
	db #08,#00,#2c,#88,#2b,#08,#01,#27
	db #08,#00,#ff,#2e,#04,#01,#29,#04
	db #00,#2e,#84,#29,#84,#44,#84,#2c
	db #84,#27,#84,#27,#84,#ff,#2e,#04
	db #01,#29,#84,#2e,#84,#29,#84,#2c
	db #84,#2c,#84,#29,#84,#29,#84,#ff
	db #2e,#04,#00,#29,#84,#2e,#84,#29
	db #84,#2c,#84,#2c,#84,#27,#84,#27
	db #84,#ff,#27,#04,#00,#28,#84,#29
	db #84,#2b,#84,#24,#84,#29,#84,#22
	db #82,#29,#82,#22,#84,#ff,#29,#02
	db #00,#2b,#82,#2c,#82,#2d,#82,#2e
	db #82,#2c,#82,#29,#82,#26,#82,#2e
	db #82,#30,#82,#31,#82,#32,#82,#33
	db #82,#32,#82,#33,#82,#32,#82,#ff
	db #29,#02,#00,#2b,#82,#2c,#82,#2d
	db #82,#2e,#82,#2c,#82,#29,#82,#26
	db #82,#26,#84,#24,#82,#22,#84,#2e
	db #84,#fe,#02,#ff,#29,#02,#00,#2b
	db #82,#2c,#82,#2d,#82,#2e,#82,#2c
	db #82,#29,#82,#26,#82,#ae,#00,#fe
	db #01,#b0,#00,#fe,#01,#b1,#00,#fe
	db #01,#b2,#00,#fe,#01,#b3,#00,#fe
	db #01,#b2,#00,#fe,#01,#b3,#00,#fe
	db #01,#b2,#00,#fe,#01,#ff,#33,#04
	db #00,#34,#84,#35,#84,#37,#84,#30
	db #84,#35,#84,#2e,#82,#35,#82,#2e
	db #84,#ff,#c6,#00,#ba,#00,#c1,#00
	db #c6,#00,#ba,#00,#c1,#00,#c6,#00
	db #ba,#00,#c1,#00,#c6,#00,#ba,#00
	db #c1,#00,#c6,#00,#ba,#00,#c1,#00
	db #c6,#00,#ba,#00,#bf,#00,#c6,#00
	db #ba,#00,#bf,#00,#c6,#00,#ba,#00
	db #bf,#00,#c6,#00,#ba,#00,#bf,#00
	db #c6,#00,#ba,#00,#bf,#00,#c6,#00
	db #ba,#00,#ff,#c6,#00,#ba,#00,#c1
	db #00,#c6,#00,#ba,#00,#c1,#00,#c6
	db #00,#ba,#00,#c1,#00,#c6,#00,#ba
	db #00,#c1,#00,#c6,#00,#ba,#00,#c1
	db #00,#c6,#00,#ba,#01,#bf,#00,#c6
	db #00,#ba,#00,#bf,#00,#c6,#00,#ba
	db #00,#bf,#00,#c6,#00,#ba,#00,#bf
	db #00,#c6,#00,#ba,#00,#bf,#00,#c6
	db #00,#ba,#00,#ff,#00,#01,#ba,#00
	db #bc,#00,#ba,#00,#bc,#00,#3e,#82
	db #ba,#00,#bc,#00,#ba,#00,#bc,#00
	db #3e,#84,#bb,#00,#3c,#82,#44,#82
	db #44,#82,#44,#82,#c3,#01,#c1,#01
	db #3f,#82,#3f,#03,#00,#bc,#00,#ff
	db #be,#01,#ba,#01,#bc,#01,#ba,#01
	db #bc,#01,#3e,#82,#ba,#01,#bc,#01
	db #ba,#01,#bc,#01,#3e,#84,#bb,#01
	db #3c,#82,#3c,#82,#3c,#82,#3c,#82
	db #b9,#01,#b7,#01,#35,#82,#35,#83
	db #bc,#01,#ff,#be,#00,#ba,#00,#bc
	db #00,#ba,#00,#bc,#00,#3e,#82,#ba
	db #00,#bc,#00,#ba,#00,#bc,#00,#3e
	db #04,#01,#bb,#00,#3c,#82,#44,#82
	db #44,#82,#44,#82,#c3,#00,#c1,#00
	db #3f,#82,#3f,#83,#c3,#00,#ff,#00
	db #01,#c2,#00,#c3,#00,#c5,#00,#c8
	db #00,#c6,#00,#c5,#00,#c3,#00,#c1
	db #00,#c0,#00,#c1,#00,#c2,#00,#c3
	db #00,#c1,#00,#bf,#00,#be,#00,#bc
	db #00,#bb,#00,#bc,#00,#be,#00,#c1
	db #00,#bf,#00,#be,#00,#bc,#00,#3a
	db #88,#ff,#35,#02,#00,#37,#82,#38
	db #82,#39,#82,#3a,#82,#38,#82,#35
	db #82,#32,#82,#3e,#82,#3f,#82,#40
	db #82,#41,#82,#43,#82,#41,#82,#43
	db #82,#41,#82,#ff,#35,#02,#00,#37
	db #82,#38,#82,#39,#82,#3a,#82,#38
	db #82,#35,#82,#32,#82,#35,#84,#3a
	db #82,#3a,#84,#3a,#84,#fe,#02,#ff
	db #35,#02,#00,#37,#82,#38,#82,#39
	db #82,#3a,#82,#38,#82,#35,#82,#32
	db #82,#be,#00,#fe,#01,#bf,#00,#fe
	db #01,#c0,#00,#fe,#01,#c1,#00,#fe
	db #01,#c3,#00,#fe,#01,#c1,#00,#fe
	db #01,#c3,#00,#fe,#01,#c1,#00,#fe
	db #01,#ff,#fe,#01,#cf,#00,#c6,#00
	db #c3,#00,#cf,#00,#cc,#00,#c6,#00
	db #c3,#00,#cd,#00,#c6,#00,#c1,#00
	db #4f,#82,#4f,#83,#ca,#00,#c6,#00
	db #ca,#00,#c6,#00,#ca,#00,#c6,#00
	db #48,#82,#46,#88,#ff,#00,#20,#ff
	db #00,#20,#ff,#00,#02,#41,#02,#00
	db #c1,#00,#41,#83,#41,#82,#c1,#00
	db #41,#85,#3f,#82,#48,#82,#48,#82
	db #48,#82,#46,#84,#46,#84,#ff,#41
	db #02,#01,#41,#82,#c1,#01,#41,#83
	db #41,#82,#41,#82,#c1,#01,#41,#83
	db #3f,#82,#3f,#82,#3f,#82,#3f,#82
	db #3c,#84,#3c,#84,#ff,#41,#02,#00
	db #41,#82,#c1,#00,#41,#83,#41,#82
	db #41,#82,#c1,#00,#41,#83,#3f,#82
	db #48,#82,#48,#82,#48,#82,#46,#84
	db #46,#84,#ff,#45,#02,#00,#46,#82
	db #47,#82,#48,#82,#4a,#82,#48,#82
	db #45,#82,#41,#82,#4a,#82,#4b,#82
	db #4c,#82,#4d,#82,#4f,#82,#4d,#82
	db #4f,#82,#4d,#82,#ff,#45,#02,#00
	db #46,#82,#47,#82,#48,#82,#4a,#82
	db #48,#82,#45,#82,#41,#82,#3e,#84
	db #3f,#82,#3e,#84,#46,#84,#fe,#02
	db #ff,#45,#02,#00,#46,#82,#47,#82
	db #48,#82,#4a,#82,#48,#82,#45,#82
	db #41,#82,#ca,#00,#fe,#01,#cb,#00
	db #fe,#01,#cc,#00,#fe,#01,#cd,#00
	db #fe,#01,#cf,#00,#fe,#01,#cd,#00
	db #fe,#01,#cf,#00,#fe,#01,#cd,#00
	db #fe,#01,#ff,#fe,#0b,#47,#02,#00
	db #47,#83,#40,#84,#3f,#84,#3e,#88
	db #ff
;
.music_info
	db "Quattro (1993)(Odiesoft)()",0
	db "ST-Module",0

	read "music_end.asm"
