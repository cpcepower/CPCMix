; Music of Platoon Level 3 (1987)(Ocean Software)(David Whittaker)()
; Ripped by Megachur the 04/08/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PLATOOL3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #7372
FIRST_THEME				equ 0
LAST_THEME				equ 1	; 0 -> 2 (2 is same as 1)

	read "music_header.asm"
	
.l7376 equ $ + 4
.l7372
	dw l738c,#0000,l7444,#0000
.l737a
	dw l7456,l7456,l7490,l7490
	dw l74b3,l74b7,l74b5,l74b7
	dw #0000
.l738c
	db #90,#88,#01,#01,#82,#c0,#e1,#d1
	db #8a,#0a,#d6,#8b,#41,#d2,#8d,#3f
	db #d1,#8a,#0a,#0a,#d6,#8b,#41,#d2
	db #8d,#3f,#d1,#8a,#11,#d1,#8a,#0a
	db #d6,#8b,#41,#d2,#8d,#3f,#d1,#8a
	db #0a,#0a,#d6,#8b,#41,#d2,#8d,#3f
	db #d1,#8a,#11,#d1,#8a,#07,#d6,#8b
	db #41,#d2,#8d,#3f,#d1,#8a,#07,#07
	db #d6,#8b,#41,#d2,#8d,#3f,#d1,#8a
	db #0e,#d1,#8a,#07,#d6,#8b,#41,#d2
	db #8d,#3f,#d1,#8a,#07,#07,#d6,#8b
	db #41,#d2,#8d,#3f,#d1,#8a,#0e,#d1
	db #8a,#0f,#d6,#8b,#41,#d2,#8d,#3f
	db #d1,#8a,#0f,#0f,#d6,#8b,#41,#d2
	db #8d,#3f,#d1,#8a,#0a,#d1,#8a,#0f
	db #d6,#8b,#41,#d2,#8d,#3f,#d1,#8a
	db #0f,#0f,#d6,#8b,#41,#d2,#8d,#3f
	db #d1,#8a,#0a,#d1,#8a,#11,#d6,#8b
	db #41,#d2,#8d,#3f,#d1,#8a,#11,#11
	db #d6,#8b,#41,#d2,#8d,#3f,#d1,#8a
	db #05,#d1,#8a,#11,#d6,#8b,#41,#d2
	db #8d,#3f,#d1,#8a,#11,#11,#d6,#8b
	db #41,#d2,#8d,#3f,#d1,#8a,#0c,#87
.l7444
	db #8a,#88,#01,#01,#82,#d9,#c7,#e1
	db #32,#33,#32,#e3,#35,#e1,#2e,#30
.l7456 equ $ + 2
	db #33,#87,#8a,#88,#01,#02,#82,#c0
	db #d7,#f1,#35,#d5,#e1,#30,#32,#33
	db #35,#33,#32,#30,#88,#01,#01,#e3
	db #2e,#e1,#2d,#e3,#2d,#e1,#2b,#2b
	db #eb,#2b,#e1,#29,#2b,#2d,#e5,#2e
	db #f3,#2b,#e1,#29,#2b,#2d,#e5,#2e
	db #e9,#2b,#88,#01,#02,#e5,#32,#e7
.l7490 equ $ + 4
	db #30,#e1,#29,#87,#88,#01,#01,#82
	db #c7,#d6,#e1,#30,#32,#2e,#e3,#30
	db #e1,#32,#2e,#ef,#2e,#e1,#29,#30
	db #32,#2e,#e3,#30,#e1,#32,#2e,#2e
.l74b3 equ $ + 7
	db #e5,#35,#33,#e1,#32,#29,#87,#c7
.l74b7 equ $ + 3
.l74b5 equ $ + 1
	db #87,#cc,#87,#d2,#e7,#35,#30,#32
	db #e3,#2e,#2d,#e1,#2b,#2a,#e3,#2b
	db #e5,#32,#e0,#32,#30,#32,#30,#e1
	db #32,#e3,#37,#e1,#30,#e0,#2e,#2d
	db #2e,#2d,#2e,#2d,#e5,#2e,#e7,#2d
	db #e1,#2b,#e7,#2b,#e1,#27,#29,#e3
	db #2b,#2b,#e1,#29,#e3,#29,#e1,#27
	db #27,#e3,#27,#e1,#29,#2b,#e7,#29
	db #e1,#29,#87
.l74f7
	dw l76e0,l7625,l7625,l7625
	dw l7625,l7625,l7625,l7625
	dw l7625,l7625,l7625,l76cc
	dw l76cc,l76cc,l76cc,l76cc
	dw l76cc,l76cc,l76cc,l7633
	dw l7633,l76da,l7633,l7633
	dw l76e6,l7633,l7633,l76e0
	dw l7633,l7633,l76da,l7633
	dw l7633,l76e6,l7633,l7633
	dw l76e0,l7633,l7633,l76da
	dw l7633,l7633,l76e6,l7633
	dw l7633,l76e0,l7625,l7625
	dw l7625,l7625,l7633,l7633
	dw l76da,l7633,l7633,l76e6
	dw l7633,l7633,l76e0,l7633
	dw l7633,l76da,l7633,l7633
	dw l76e6,l7633,l7633,l76e0
	dw l7633,l7633,l76da,l7633
	dw l7633,l76e6,l7633,l7633
.l7591 equ $ + 2
	dw #0000,l7652,l7665,l76cc
	dw l76cc,l76cc,l76cc,l76cc
	dw l76cc,l7671,l7671,l768d
	dw l76cc,l76cc,l76cc,l76cc
	dw l76cc,l76cc,l766e,l7672
.l75bb equ $ + 4
	dw l7672,#0000,l7693,l7693
	dw l7693,l7693,l7693,l7693
	dw l7693,l7693,l76cc,l76cc
	dw l769d,l769d,l76b5,l76b5
	dw l76b5,l76b5,l76b5,l76b5
	dw l76b5,l76b5,l76b5,l76b5
	dw l76b5,l76b5,l76b5,l76b5
	dw l76b5,l76b5,l76b5,l76b5
	dw l7693,l76cc,l76cc,l76cc
	dw l76b5,l76b5,l76b5,l76b5
	dw l76b5,l76b5,l76b5,l76b5
	dw l76b5,l76b5,l76b5,l76b5
	dw l76b5,l76b5,l76b5,l76b5
	dw l76b5,l76b5,#0000
.l7625
	db #90,#8a,#c8,#d6,#88,#01,#01,#82
.l7633 equ $ + 6
	db #eb,#26,#26,#e7,#26,#87,#e3,#d6
	db #8b,#8d,#3f,#d6,#8b,#41,#d3,#8c
	db #3e,#d9,#8b,#8d,#3f,#d6,#8b,#41
	db #41,#d3,#8c,#32,#e1,#d9,#8b,#8d
.l7652 equ $ + 5
	db #da,#3f,#8d,#3f,#87,#8a,#88,#01
	db #02,#82,#d7,#c0,#ff,#3e,#26,#3e
	db #26,#3e,#26,#3e,#26,#8f,#8f,#87
.l7665
	db #26,#8f,#24,#8f,#26,#8f,#24,#8f
.l7672 equ $ + 5
.l7671 equ $ + 4
.l766e equ $ + 1
	db #87,#c5,#da,#87,#d7,#ff,#26,#ef
	db #8f,#e3,#2d,#2b,#e7,#2a,#ff,#28
	db #ef,#8f,#e3,#2f,#2d,#e7,#2c,#f3
	db #26,#eb,#2b,#2a,#2b,#e7,#2d,#87
.l7693 equ $ + 6
.l768d
	db #ff,#26,#8f,#8f,#8f,#87,#8a,#88
	db #01,#02,#82,#d4,#c0,#ff,#0e,#87
.l769d
	db #c0,#88,#01,#01,#d1,#f3,#1a,#e3
	db #12,#12,#12,#8f,#e7,#13,#f3,#13
	db #18,#e3,#16,#15,#11,#ff,#8f,#87
.l76b5
	db #c8,#88,#01,#01,#da,#e1,#0e,#0e
	db #0e,#1a,#0e,#0e,#1a,#0e,#1a,#1a
.l76cc equ $ + 7
	db #0e,#0e,#0e,#1a,#18,#0e,#87,#ef
	db #80,#80,#87,#ff,#80,#80,#80,#80
.l76da equ $ + 5
	db #80,#80,#80,#80,#87,#89,#fe,#87
.l76e0 equ $ + 3
	db #89,#ff,#87,#89,#00,#87,#89,#01
.l76e6 equ $ + 1
	db #87,#89,#02,#87,#89,#03,#87
.l76ec
	db #07
	dw l7372,l7376,l737a
	db #03
	dw l74f7,l75bb,l7591
	db #03
	dw l74f7,l75bb,l7591
;
.init_music
;
	ld hl,l7d5f
	ld (hl),#00
	inc hl
	ld (hl),#00
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l76ec
	add hl,bc
	ld a,(hl)
	ld (l77ec),a
	inc hl
	ld ix,l775c
	ld c,#21
	ld a,#03
.l7722
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
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
	jr nz,l7722
	ld (l7a8d),a
	inc a
	ld (l77bf),a
	ld (l7d5f),a
	ret
.l775c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l777d equ $ + 1
	db #09,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l779e equ $ + 2
	db #00,#12,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l77bf equ $ + 3
	db #00,#00,#24,#00
;
.play_music
;
	call l7db2
	ld a,(l7d5f)
	and a
	jp z,l781c
.l77cb equ $ + 1
	ld a,#00
	ld (l7818),a
	ld hl,l77bf
	dec (hl)
	jr nz,l77f0
	ld b,(hl)
	ld ix,l775c
	call l799a
	ld ix,l777d
	call l799a
	ld ix,l779e
	call l799a
.l77ec equ $ + 1
	ld a,#01
	ld (l77bf),a
.l77f0
	ld ix,l775c
	call l7a5a
	ld (l7b6b),hl
	ld (l7b73),a
	ld ix,l777d
	call l7a5a
	ld (l7b6d),hl
	ld (l7b74),a
	ld ix,l779e
	call l7a5a
	ld (l7b6f),hl
	ld (l7b75),a
.l7818 equ $ + 1
	ld a,#00
	ld (l7b71),a
.l781c
	ld a,(l7d60)
	and a
	jr z,l784c
	ld hl,(l7b78)
	ld (l7b6b),hl
	ld hl,(l7b7c)
	ld (l7b6f),hl
	ld a,(l7b7e)
	ld (l7b71),a
	ld a,(l7b72)
.l7837
	or #2d
	ld hl,l7b7f
	and (hl)
	ld (l7b72),a
	ld a,(l7b80)
	ld (l7b73),a
	ld a,(l7b82)
	ld (l7b75),a
.l784c
	ld a,(l7d5f)
	ld hl,l7d60
	or (hl)
	ret z
	ld hl,l7b76
	ld d,#0b
.l7859
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
	jp p,l7859
	ret
.l787a
	ld de,#0d00
.l787d
	call l7887
	dec d
	jp p,l787d
	ld de,#073f
.l7887
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
.l78a2
;
	xor a
	ld (l7d5f),a
	ld (l7d60),a
	call l787a
	xor a
	ld (l7b73),a
	ld (l7b74),a
	ld (l7b75),a
	ret
	db #c9,#b1,#b5,#ba,#78,#a7,#a2,#0f
	db #91,#89,#4e,#38,#60,#b6,#04,#c3
	db #c8,#cd
	pop hl
	jp l78a2
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
	jr nz,l78ef
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l78ef
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l79a8
	ld a,(ix+#20)
	ld c,a
	and #07
	ld hl,l7b36
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l79a8
	ld a,(ix+#20)
	ld c,a
	and #38
	ld hl,l7b36
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l79a8
	ld hl,l7b36
	ld a,(ix+#20)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l79a8
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l79a8
	ld a,(de)
	inc de
	ld (l7a8d),a
	jr l79a8
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l79a8
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l79a8
	ld (ix+#1d),b
	jr l79a8
	ld (ix+#1d),#40
	jr l79a8
	ld (ix+#1d),#c0
	jr l79a8
	set 1,(ix+#00)
	jr l79a8
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l79d7
	res 5,(ix+#00)
	jr l79d7
	ld (ix+#1f),#ff
	jr l79a8
	ld (ix+#1f),b
	jr l79a8
.l799a
	dec (ix+#10)
	jr nz,l79f4
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l79a8
	ld a,(de)
	inc de
	and a
	jp m,l7a05
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l79ba
	ld (l77cb),a
.l79ba
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
	set 5,(ix+#00)
.l79d7
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l79f3
	ld a,(l7d60)
	and a
	jr nz,l79f3
	ld (ix+#1f),#ff
.l79f3
	ret
.l79f4
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l7a01
	inc (ix+#12)
	ret
.l7a01
	dec (ix+#12)
	ret
.l7a05
	cp #b8
	jr c,l7a52
	add #20
	jr c,l7a33
	add #10
	jr c,l7a3a
	add #10
	jr nc,l7a2b
	ld c,a
	ld hl,l7c44
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l79a8
.l7a2b
	add #09
	ld (l77ec),a
	jp l79a8
.l7a33
	inc a
	ld (ix+#11),a
	jp l79a8
.l7a3a
	ld hl,l7c86
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#14),l
	ld (ix+#15),h
	dec hl
	ld a,(hl)
	ld (ix+#0f),a
	jp l79a8
.l7a52
	ld hl,l7837
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l7a5a
	ld c,(ix+#00)
	bit 5,c
	jr z,l7a8c
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l7a86
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l7a86
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l7a86
	ld a,(ix+#18)
	ld (ix+#13),a
.l7a8d equ $ + 1
.l7a8c
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l7aa6
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l7aa6
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l7b84
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l7b07
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l7ad0
	bit 0,c
	jr nz,l7aee
.l7ad0
	bit 5,l
	jr nz,l7ae0
	sub (ix+#1b)
	jr nc,l7aeb
	set 5,(ix+#1d)
	sub a
	jr l7aeb
.l7ae0
	add (ix+#1b)
	cp b
	jr c,l7aeb
	res 5,(ix+#1d)
	ld a,b
.l7aeb
	ld (ix+#1c),a
.l7aee
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l7af9
	dec d
.l7af9
	add #a0
	jr c,l7b05
.l7afd
	sla e
	rl d
	add #18
	jr nc,l7afd
.l7b05
	add hl,de
	ex de,hl
.l7b07
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l7b32
	ld b,(ix+#0e)
	djnz l7b2f
	ld c,(ix+#0d)
	bit 7,c
	jr z,l7b1e
	dec b
.l7b1e
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l7b32
.l7b2f
	ld (ix+#0e),b
.l7b32
	cpl
	and #03
.l7b36 equ $ + 1
	ld a,#38
	jr nz,l7b43
	ld a,(l77cb)
	xor #08
	ld (l7818),a
	ld a,#07
.l7b43
	ld hl,l7b72
	xor (hl)
	and (ix+#20)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l7b66
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#20)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l7818),a
.l7b66
	ex de,hl
	ld a,(ix+#13)
	ret
.l7b72 equ $ + 7
.l7b71 equ $ + 6
.l7b6f equ $ + 4
.l7b6d equ $ + 2
.l7b6b
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l7b79 equ $ + 6
.l7b78 equ $ + 5
.l7b76 equ $ + 3
.l7b75 equ $ + 2
.l7b74 equ $ + 1
.l7b73
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7b82 equ $ + 7
.l7b80 equ $ + 5
.l7b7f equ $ + 4
.l7b7e equ $ + 3
.l7b7c equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l7b84
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
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
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
	dw #000e,#000e,#000d,#000c
	dw #000b,#000b,#000a,#0009
	dw #0009,#0008,#0008,#0007
.l7c44
	db #0e,#0e,#10,#12,#14,#16,#17,#1e
	db #24,#29,#2a,#2b,#2c,#32,#80,#07
	db #0c,#8f,#03,#07,#8c,#00,#03,#87
	db #00,#04,#87,#00,#8c,#0c,#00,#00
	db #00,#00,#00,#00,#80,#0c,#00,#00
	db #00,#00,#00,#80,#0c,#00,#00,#00
	db #00,#80,#00,#83,#00,#84,#00,#85
	db #18,#00,#00,#00,#00,#00,#80,#04
.l7c86 equ $ + 2
	db #07,#8c,#9d,#7c,#a0,#7c,#a8,#7c
	db #ba,#7c,#e4,#7c,#e8,#7c,#12,#7d
	db #18,#7d,#3c,#7d,#48,#7d,#54,#7d
	db #00,#09,#87,#03,#0f,#0e,#0d,#0c
	db #0b,#0a,#87,#01,#0f,#0e,#0c,#0b
	db #0d,#0c,#0a,#09,#0b,#0a,#08,#07
	db #09,#08,#06,#05,#87,#01,#0f,#0e
	db #0d,#0c,#0b,#0d,#0c,#0b,#0a,#09
	db #0b,#0a,#09,#08,#07,#09,#08,#07
	db #06,#05,#07,#06,#05,#04,#03,#05
	db #04,#03,#02,#01,#04,#03,#02,#01
	db #03,#02,#01,#02,#01,#00,#87,#0a
	db #0f,#0e,#87,#02,#0f,#0e,#0d,#0c
	db #0b,#0d,#0c,#0b,#0a,#09,#0b,#0a
	db #09,#08,#07,#09,#08,#07,#06,#05
	db #07,#06,#05,#04,#03,#05,#04,#03
	db #02,#01,#04,#03,#02,#01,#03,#02
	db #01,#02,#01,#00,#87,#01,#0b,#0f
	db #0b,#08,#87,#02,#0a,#0b,#0c,#0d
	db #0e,#0f,#0f,#0e,#0e,#0e,#0e,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#09,#09,#09
	db #09,#08,#08,#08,#07,#06,#87,#01
	db #0c,#0b,#0a,#09,#08,#07,#09,#08
	db #07,#06,#87,#01,#0d,#0c,#0b,#0a
	db #09,#08,#0a,#09,#08,#07,#87,#01
	db #0e,#0d,#0c,#0b,#0a,#09,#0b,#0a
.l7d60 equ $ + 4
.music_end equ $ + 3
.l7d5f equ $ + 3
	db #09,#08,#87,#00,#00
	ld hl,l7d60
	ld (hl),#00
	ld hl,l7e50
	add a
	add l
	ld l,a
	jr nc,l7d6f
	inc h
.l7d6f
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l7fcc
.l7d77
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l7d77
	ld a,(l7fcd)
	ld (l7fdd),a
	ld hl,(l7fce)
	ld (l7b78),hl
	ld de,(l7fd0)
	ld (l7b7c),de
	ld a,l
	ld (l7b7e),a
	ld a,(l7fd3)
	ld (l7b7f),a
	ld a,(l7fd2)
	ld e,a
	ld d,#0c
	call l7887
	ld a,(l7fdc)
	ld e,a
	ld d,#0d
	call l7887
	ld hl,l7d60
	inc (hl)
	ret
.l7db2
	call l7fdf
	ld a,(l7d60)
	and a
	ret z
	ld a,(l7fcc)
	and a
	jr nz,l7dc6
	ld (l7d60),a
	jp l787a
.l7dc6
	dec a
	ld (l7fcc),a
	ld a,(l7fdd)
	and a
	jr nz,l7dff
	ld a,(l7fda)
	and a
	ret z
	dec a
	ld (l7fda),a
	ld a,(l7fcd)
	ld (l7fdd),a
	ld a,(l7fdb)
	and a
	jr z,l7de8
	ld a,(#7ffa)
.l7de8
	ld b,a
	ld a,(l7fce)
	add b
	ld (l7b78),a
	ld a,(l7fcf)
	add b
	and #0f
	ld (l7b79),a
	ld hl,(l7fd0)
	ld (l7b7c),hl
.l7dff
	ld hl,l7fdd
	dec (hl)
	ld a,(l7fd8)
	and a
	jr z,l7e26
	jp p,l7e19
	ld hl,(l7b78)
	ld de,(l7fd4)
	add hl,de
	ld (l7b78),hl
	jr l7e26
.l7e19
	ld hl,(l7b78)
	ld de,(l7fd4)
	and a
	sbc hl,de
	ld (l7b78),hl
.l7e26
	ld a,(l7fd9)
	and a
	jr z,l7e49
	jp p,l7e3c
	ld hl,(l7b7c)
	ld de,(l7fd6)
	add hl,de
	ld (l7b7c),hl
	jr l7e49
.l7e3c
	ld hl,(l7b7c)
	ld de,(l7fd6)
	and a
	sbc hl,de
	ld (l7b7c),hl
.l7e49
	ld a,(l7b78)
	ld (l7b7e),a
	ret
.l7e50
	dw l7e78,l7e89,l7e9a,l7eab
	dw l7ebc,l7ecd,l7ede,l7eef
	dw l7f00,l7f11,l7f22,l7f33
	dw l7f44,l7f55,l7f66,l7f77
	dw l7f88,l7f99,l7faa,l7fbb
.l7e78
	db #14,#14,#40,#00,#20,#00,#14,#f2
	db #01,#00,#01,#00,#ff,#ff,#0a,#00
.l7e89 equ $ + 1
	db #00,#0a,#14,#50,#00,#08,#00,#28
	db #f2,#09,#00,#09,#00,#ff,#ff,#0a
.l7e9a equ $ + 2
	db #00,#00,#19,#07,#00,#04,#10,#04
	db #0f,#fa,#98,#00,#98,#00,#ff,#ff
.l7eab equ $ + 3
	db #05,#00,#00,#19,#07,#80,#04,#90
	db #04,#0f,#fa,#98,#00,#98,#00,#ff
.l7ebc equ $ + 4
	db #ff,#05,#00,#00,#64,#06,#42,#00
	db #38,#00,#0a,#fa,#04,#00,#04,#00
.l7ecd equ $ + 5
	db #01,#01,#ff,#00,#0d,#14,#06,#8a
	db #01,#00,#01,#06,#fa,#20,#00,#28
.l7ede equ $ + 6
	db #00,#01,#01,#0f,#01,#0e,#14,#07
	db #a0,#01,#00,#03,#0f,#fa,#20,#00
.l7eef equ $ + 7
	db #18,#00,#01,#01,#3c,#00,#00,#1e
	db #07,#04,#00,#0b,#00,#0c,#fa,#08
	db #00,#08,#00,#ff,#ff,#0a,#00,#00
.l7f00
	db #19,#ff,#1a,#00,#40,#00,#1e,#fa
	db #01,#04,#01,#04,#01,#01,#ff,#00
.l7f11 equ $ + 1
	db #00,#28,#1f,#0f,#02,#0f,#02,#03
	db #d7,#00,#00,#00,#00,#01,#01,#00
.l7f22 equ $ + 2
	db #00,#0d,#23,#0a,#0a,#00,#0f,#00
	db #19,#d2,#03,#00,#04,#00,#ff,#01
.l7f33 equ $ + 3
	db #0a,#01,#00,#5a,#0a,#0a,#00,#0f
	db #00,#2d,#d2,#03,#00,#04,#00,#ff
.l7f44 equ $ + 4
	db #01,#0a,#01,#00,#14,#06,#01,#02
	db #11,#02,#14,#f2,#c8,#00,#cc,#00
.l7f55 equ $ + 5
	db #ff,#ff,#ff,#00,#00,#3c,#0d,#80
	db #00,#10,#02,#1e,#fa,#06,#00,#14
.l7f66 equ $ + 6
	db #00,#01,#01,#ff,#00,#00,#0a,#05
	db #0a,#01,#17,#01,#09,#fa,#1f,#00
.l7f77 equ $ + 7
	db #1c,#00,#ff,#ff,#05,#00,#00,#23
	db #ff,#17,#68,#f9,#05,#05,#fa,#03
	db #04,#01,#04,#01,#01,#ff,#00,#0d
.l7f88
	db #03,#63,#21,#00,#10,#02,#01,#d7
	db #00,#00,#00,#00,#01,#01,#00,#00
.l7f99 equ $ + 1
	db #0e,#14,#07,#aa,#00,#ae,#00,#11
	db #fa,#20,#00,#20,#00,#ff,#ff,#06
.l7faa equ $ + 2
	db #00,#00,#5a,#ff,#81,#07,#79,#07
	db #05,#fa,#02,#04,#02,#04,#01,#01
.l7fbb equ $ + 3
	db #ff,#00,#0d,#14,#06,#81,#00,#86
	db #00,#28,#d2,#24,#00,#29,#00,#ff
.l7fcf equ $ + 7
.l7fce equ $ + 6
.l7fcd equ $ + 5
.l7fcc equ $ + 4
	db #ff,#15,#00,#00,#00,#00,#00,#00
.l7fd6 equ $ + 6
.l7fd4 equ $ + 4
.l7fd3 equ $ + 3
.l7fd2 equ $ + 2
.l7fd0
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7fdd equ $ + 5
.l7fdc equ $ + 4
.l7fdb equ $ + 3
.l7fda equ $ + 2
.l7fd9 equ $ + 1
.l7fd8
	db #00,#00,#00,#00,#00,#00,#00
.l7fdf
	ld a,(#7ffa)
	and #48
	adc #38
	sla a
	sla a
	ld hl,#7ffd
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
;
.music_info
	db "Platoon Level 3 (1987)(Ocean Software)(David Whittaker)",0
	db "",0

	read "music_end.asm"
