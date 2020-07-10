; Music of Postman Pat - The Computer Game (1988)(Alternative Software)()()
; Ripped by Megachur the 12/10/2013
; $VER 1.5

IFDEF FILENAME_WRITE
	write "POSTPTCG.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2013
music_adr				equ #0200
FIRST_THEME				equ 1
LAST_THEME				equ 1	; 1 -> 1

	read "music_header.asm"

	jp l0206	; init a = 1
	jp l0241	; play
;
.init_music
.l0206
;
	ld (l0240),a
	ret
	ld e,a
	and #0f
	add a
	ld l,a
	ld h,#00
	ld a,e
	and #f0
	ld e,a
	ld d,#00
	add hl,de
	add hl,de
	ld de,l0971
	add hl,de
	ret
.l021e
	push bc
	ld c,l
	ld a,h
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
.l0240
	db #00
;
.play_music
.l0241
;
	ld hl,l0240
	ld a,(hl)
	or a
	jp z,l039b
	cp #fe
	jp c,l025d
	cp #ff
	ret nz
	ld (hl),#fe
	ld hl,l073f
	ld a,l
	ld (l0395),a
	jp l021e
.l025d
	ld (l0391),a
	ld hl,l02fa
	ld de,l02fb
	ld bc,#002e
	ld (hl),#00
	ldir
	ld hl,l032c
	ld de,l032d
	ld bc,#002e
	ld (hl),#00
	ldir
	ld hl,l035e
	ld de,l035f
	ld bc,#002e
	ld (hl),#00
	ldir
	xor a
	call l02ab
	ld a,#01
	call l02ab
	ld a,#02
	call l02ab
	xor a
	ld (l0240),a
	ret
.l029a
	ld a,(l0391)
	ld (l0240),a
	ld a,(l0390)
	call l02ab
	xor a
	ld (l0240),a
	ret
.l02ab
	push af
	ld a,(l0240)
	dec a
	ld l,a
	ld h,#00
	add hl,hl
	ld d,h
	ld e,l
	add hl,hl
	add hl,de
	ld de,l079a
	add hl,de
	pop af
	or a
	jr z,l02e9
	dec a
	jr z,l02d7
	ld de,#0004
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l035e),de
	ld de,l02f9
	ld (l0360),de
	ret
.l02d7
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l032c),de
	ld de,l02f9
	ld (l032e),de
	ret
.l02e9
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l02fa),de
	ld de,l02f9
	ld (l02fc),de
	ret
.l02fc equ $ + 3
.l02fb equ $ + 2
.l02fa equ $ + 1
.l02f9
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l030f equ $ + 6
	db #00,#00,#00,#97,#03,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l032e equ $ + 5
.l032d equ $ + 4
.l032c equ $ + 3
	db #01,#f7,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#97,#03,#00
.l0341
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0360 equ $ + 7
.l035f equ $ + 6
.l035e equ $ + 5
	db #00,#00,#02,#ef,#02,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#97
.l0373 equ $ + 2
	db #03,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0390 equ $ + 7
	db #00,#00,#00,#00,#04,#df,#04,#00
.l0395 equ $ + 4
.l0392 equ $ + 1
.l0391
	db #00,#00,#00,#00,#00,#00,#ff,#00
.l039a equ $ + 1
.l0399
	db #02,#02
.l039b
	ld hl,l039a
	dec (hl)
	jp p,l0540
	xor a
	ld (l0390),a
	ld iy,l02fa
	call l03cc
	ld hl,l0390
	inc (hl)
	ld iy,l032c
	call l03cc
	ld hl,l0390
	inc (hl)
	ld iy,l035e
	call l03cc
	ld a,(l0399)
	ld (l039a),a
	jp l0540
.l03cc
	dec (iy+#05)
	ret p
.l03d0
	ld l,(iy+#02)
	ld h,(iy+#03)
	ld a,h
	and l
	cp #ff
	jr z,l03e2
	ld a,h
	or l
	jr nz,l03e7
	jr l040d
.l03e2
	call l029a
	jr l03d0
.l03e7
	ld a,(hl)
	cp #ff
	jr nz,l0419
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (iy+#00),l
	ld (iy+#01),h
	ld (iy+#02),e
	ld (iy+#03),d
	ex de,hl
	ld a,h
	and l
	cp #ff
	jr z,l0414
	ld a,h
	or l
	jr nz,l03e7
.l040d
	ld a,(iy+#04)
	ld (iy+#05),a
	ret
.l0414
	call l029a
	jr l03d0
.l0419
	push hl
	pop ix
	inc hl
	ld (iy+#02),l
	ld (iy+#03),h
	push af
	and #f0
	rrca
	rrca
	rrca
	ld l,a
	ld h,#00
	ld de,l0436
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	pop af
	jp (hl)
.l0436
	dw l04d4,l04d4,l04d4,l04d4
	dw l04d4,l04d4,l04d4,l04d4
	dw l04cc,l04cc,l04cc,l04cc
	dw l0466,l0466,l045e,l0456
.l0456
	and &0f	; dw #0fe6
	ld (l0399),a	; music reset
	jp l03d0
.l045e
	and #0f
	ld (iy+#14),a
	jp l03d0
.l0466
	and #1f
	add a
	ld l,a
	ld h,#00
	ld de,l07ee
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
	inc hl
	ld (iy+#0b),a
	or a
	jr z,l0494
	push hl
	ld (iy+#08),#00
	srl a
	ld e,a
	ld d,#00
	ld hl,l084d
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (iy+#06),e
	ld (iy+#07),d
	pop hl
.l0494
	ld a,(hl)
	inc hl
	push hl
	srl a
	ld e,a
	ld d,#00
	ld hl,l080a
	add hl,de
	ld a,(hl)
	ld (iy+#1c),a
	inc hl
	ld a,(hl)
	ld (iy+#1d),a
	pop hl
	ld a,(hl)
	inc hl
	ld (iy+#17),a
	ld a,(hl)
	inc hl
	ld (iy+#18),a
	ld a,(hl)
	inc hl
	ld (iy+#0c),a
	ld a,(hl)
	inc hl
	ld (iy+#0f),a
	ld (iy+#12),l
	ld (iy+#13),h
	inc hl
	ld a,(hl)
	ld (iy+#2e),a
	jp l03d0
.l04cc
	and #3f
	ld (iy+#04),a
	jp l03d0
.l04d4
	or a
	ret z
	ld c,a
	ld a,(iy+#0b)
	or a
	jr z,l04e7
	ld a,c
	ld (iy+#0a),a
	ld (iy+#08),#00
	jr l0507
.l04e7
	ld a,c
	ld (iy+#27),a
	ld a,c
	and #70
	ld e,a
	ld d,#00
	ld a,c
	and #0f
	add a
	ld l,a
	ld h,#00
	add hl,de
	add hl,de
	ld de,l0971
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (iy+#2c),e
	ld (iy+#2d),d
.l0507
	xor a
	ld (iy+#2a),a
	ld (iy+#16),a
	ld (iy+#1b),a
	ld a,(iy+#04)
	ld (iy+#05),a
	ld l,(iy+#1c)
	ld h,(iy+#1d)
	ld (iy+#19),l
	ld (iy+#1a),h
	ld l,(iy+#17)
	ld (iy+#11),l
	ld (iy+#0d),#00
	ld (iy+#0e),#01
	ld a,(iy+#0f)
	ld (iy+#10),a
	ld a,(iy+#2e)
	ld (iy+#2a),a
	ret
.l053e
	nop
	nop
.l0540
	ld a,(l0395)
	or #38
	and #f8
	ld (l053e),a
	ld iy,l02fa
	call l0581
	ld iy,l032c
	call l0581
	ld iy,l035e
	call l0581
	ld a,(l030f)
	ld l,a
	ld h,#08
	call l021e
	inc h
	ld a,(l0341)
	ld l,a
	call l021e
	inc h
	ld a,(l0373)
	ld l,a
	call l021e
	ld a,(l053e)
	ld l,a
	ld h,#07
	jp l021e
.l0581
	ld l,(iy+#12)
	ld h,(iy+#13)
	ld e,(iy+#16)
	ld d,#00
	add hl,de
	inc hl
	ld a,(hl)
	dec hl
	cp #ff
	jr z,l05bb
	ld a,(hl)
	or a
	jp m,l059f
	inc de
	ld (iy+#16),e
	jr l05bb
.l059f
	ld a,(iy+#2a)
	or a
	jr z,l05aa
	dec (iy+#2a)
	jr l05bb
.l05aa
	inc de
	inc de
	inc hl
	inc hl
	ld (iy+#16),e
	inc hl
	ld a,(hl)
	dec hl
	cp #ff
	jr z,l05bb
	ld (iy+#2a),a
.l05bb
	ld a,(hl)
	and #0f
	cp (iy+#14)
	jr c,l05c6
	ld a,(iy+#14)
.l05c6
	ld (iy+#15),a
	ld a,(iy+#11)
	or a
	jr z,l05e3
	dec (iy+#11)
	ld a,(l053e)
	and (iy+#30)
	ld (l053e),a
	ld h,#06
	ld l,(iy+#18)
	call l021e
.l05e3
	ld a,(iy+#2c)
	ld (iy+#1e),a
	ld a,(iy+#2d)
	ld (iy+#1f),a
	ld a,(iy+#0b)
	or a
	jr z,l0634
	jp m,l061f
	ld l,(iy+#06)
	ld h,(iy+#07)
	ld e,(iy+#08)
	ld d,#00
	add hl,de
	ld a,(hl)
	cp #80
	jr nz,l0611
	and a
	sbc hl,de
	xor a
	ld (iy+#08),a
	ld a,(hl)
.l0611
	inc (iy+#08)
	add (iy+#0a)
	ld h,#06
	ld l,a
	call l021e
	jr l0627
.l061f
	ld h,#06
	ld l,(iy+#0a)
	call l021e
.l0627
	ld a,(l053e)
	or (iy+#2f)
	and (iy+#30)
	ld (l053e),a
	ret
.l0634
	ld l,(iy+#19)
	ld h,(iy+#1a)
	ld a,h
	or l
	jp z,l072f
	ld (l0392),hl
	ld e,(iy+#1b)
	ld d,#00
	add hl,de
	ld e,(hl)
	dec hl
	ld a,e
	cp #82
	jr z,l06aa
	cp #81
	jr z,l065b
	cp #80
	jp z,l06e6
	jp l06ee
.l065b
	ld e,(hl)
	ld l,(iy+#27)
	ld a,e
	or a
	jp m,l0672
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,l067e
	inc l
	inc l
	inc l
	jr l067e
.l0672
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,l067e
	dec l
	dec l
	dec l
.l067e
	ld a,l
	and #70
	ld c,a
	ld b,#00
	ld a,l
	and #0f
	add a
	ld l,a
	ld h,#00
	add hl,bc
	add hl,bc
	ld de,l0971
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (iy+#1e),e
	ld (iy+#1f),d
	ld (iy+#2c),e
	ld (iy+#2d),d
	xor a
	ld (iy+#19),a
	ld (iy+#1a),a
	jp l072f
.l06aa
	ld (iy+#1b),#00
	ld e,(hl)
	ld l,(iy+#27)
	ld a,e
	or a
	jp m,l06c5
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,l06d1
	inc l
	inc l
	inc l
	jr l06d1
.l06c5
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,l06d1
	dec l
	dec l
	dec l
.l06d1
	ld (iy+#27),l
	ld hl,(l0392)
	ld e,(hl)
	ld a,(iy+#1e)
	ld (iy+#2c),a
	ld a,(iy+#1f)
	ld (iy+#2d),a
	jr l06ee
.l06e6
	ld (iy+#1b),#00
	ld hl,(l0392)
	ld e,(hl)
.l06ee
	ld l,(iy+#27)
	ld a,e
	or a
	jp m,l0704
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,l0710
	inc l
	inc l
	inc l
	jr l0710
.l0704
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,l0710
	dec l
	dec l
	dec l
.l0710
	ld a,l
	and #70
	ld c,a
	ld b,#00
	ld a,l
	and #0f
	add a
	ld l,a
	ld h,#00
	add hl,bc
	add hl,bc
	ld de,l0971
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (iy+#1e),e
	ld (iy+#1f),d
	inc (iy+#1b)
.l072f
	ld a,(iy+#0c)
	or a
	jr z,l0784
	dec (iy+#10)
	jr nz,l076b
	ld a,(iy+#0f)
.l073f equ $ + 2
	ld (iy+#10),a
	ld a,(iy+#0d)
	add (iy+#0e)
	ld (iy+#0d),a
	ld a,(iy+#0c)
	cp (iy+#0d)
	jr nz,l075c
	ld a,(iy+#0e)
	neg
	ld (iy+#0e),a
	ld a,(iy+#0c)
.l075c
	neg
	cp (iy+#0d)
	jr nz,l076b
	ld a,(iy+#0e)
	neg
	ld (iy+#0e),a
.l076b
	ld a,(iy+#0d)
	or a
	ld d,#00
	jp p,l0776
	ld d,#ff
.l0776
	ld e,a
	ld l,(iy+#1e)
	ld h,(iy+#1f)
	add hl,de
	ld (iy+#1e),l
	ld (iy+#1f),h
.l0784
	ld h,(iy+#31)
	ld l,(iy+#1e)
	call l021e
	inc h
	ld l,(iy+#1f)
	jp l021e
.l079a equ $ + 6
	db #00,#00,#00,#00,#00,#00,#0b,#0b
	db #17,#0b,#5d,#0b,#f9,#0a,#ff,#0a
	db #05,#0b,#f3,#0a,#7b,#0a,#7b,#0a
	db #e1,#0a,#e7,#0a,#ed,#0a,#cf,#0a
	db #d5,#0a,#db,#0a,#bd,#0a,#c3,#0a
	db #c9,#0a,#ab,#0a,#b1,#0a,#b7,#0a
	db #9f,#0a,#a5,#0a,#7b,#0a,#99,#0a
	db #7b,#0a,#7b,#0a,#93,#0a,#7b,#0a
	db #7b,#0a,#8d,#0a,#7b,#0a,#7b,#0a
	db #87,#0a,#7b,#0a,#7b,#0a,#81,#0a
	db #7b,#0a,#7b,#0a,#69,#0a,#6f,#0a
.l07ee equ $ + 2
	db #75,#0a,#59,#08,#63,#08,#71,#08
	db #88,#08,#ae,#08,#d4,#08,#eb,#08
	db #02,#09,#26,#09,#00,#00,#2e,#09
.l080a equ $ + 6
	db #36,#09,#50,#09,#5c,#09,#00,#00
	db #20,#08,#00,#00,#22,#08,#26,#08
	db #2a,#08,#30,#08,#33,#08,#38,#08
	db #3d,#08,#4a,#08,#fb,#82,#10,#10
	db #00,#81,#10,#14,#17,#80,#20,#20
	db #10,#10,#00,#81,#10,#14,#80,#10
	db #20,#10,#20,#80,#00,#10,#00,#10
	db #80,#01,#00,#00,#00,#01,#00,#00
	db #00,#01,#00,#00,#00,#81,#10,#10
.l084d equ $ + 1
	db #00,#00,#81,#51,#08,#1e,#19,#14
	db #0f,#0a,#05,#00,#80,#00,#04,#01
	db #14,#00,#00,#8f,#05,#00,#ff,#04
	db #00,#01,#14,#00,#00,#8f,#05,#0c
	db #09,#06,#03,#00,#ff,#00,#10,#01
	db #1e,#02,#00,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
	db #02,#01,#00,#ff,#00,#0c,#00,#00
	db #03,#00,#8f,#14,#8e,#14,#8d,#14
	db #8c,#14,#8b,#14,#8a,#14,#89,#14
	db #88,#14,#87,#14,#86,#14,#85,#14
	db #84,#14,#83,#14,#82,#14,#81,#14
	db #00,#ff,#00,#14,#00,#00,#02,#00
	db #8f,#0a,#8e,#0a,#8d,#0a,#8c,#0a
	db #8b,#0a,#8a,#0a,#89,#0a,#88,#0a
	db #87,#0a,#86,#0a,#85,#0a,#84,#0a
	db #83,#0a,#82,#0a,#81,#0a,#00,#ff
	db #00,#18,#00,#00,#00,#00,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#01,#00,#ff,#00
	db #1c,#00,#00,#00,#00,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
	db #04,#03,#02,#01,#00,#ff,#00,#20
	db #00,#00,#00,#00,#8f,#14,#8d,#0a
	db #8c,#0a,#8b,#0a,#8a,#05,#89,#05
	db #88,#05,#87,#05,#86,#05,#85,#04
	db #84,#03,#83,#02,#82,#02,#81,#02
	db #00,#ff,#00,#00,#00,#00,#02,#00
	db #0f,#ff,#00,#00,#00,#00,#00,#00
	db #00,#ff,#00,#24,#00,#00,#00,#00
	db #0c,#0d,#0e,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
	db #02,#01,#00,#ff,#00,#00,#00,#00
	db #14,#01,#8f,#0c,#0a,#06,#00,#ff
	db #00,#28,#00,#00,#00,#00,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l0971 equ $ + 5
	db #05,#04,#03,#02,#01,#00,#ff,#18
	db #0e,#4d,#0d,#8e,#0c,#da,#0b,#2f
	db #0b,#8f,#0a,#f7,#09,#68,#09,#e1
	db #08,#61,#08,#e9,#07,#00,#00,#00
	db #00,#00,#00,#00,#00,#77,#07,#0c
	db #07,#a7,#06,#47,#06,#ed,#05,#98
	db #05,#47,#05,#fc,#04,#b4,#04,#70
	db #04,#31,#04,#f4,#03,#00,#00,#00
	db #00,#00,#00,#00,#00,#bc,#03,#86
	db #03,#53,#03,#24,#03,#f6,#02,#cc
	db #02,#a4,#02,#7e,#02,#5a,#02,#38
	db #02,#18,#02,#fa,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#de,#01,#c3
	db #01,#aa,#01,#92,#01,#7b,#01,#66
	db #01,#52,#01,#3f,#01,#2d,#01,#1c
	db #01,#0c,#01,#fd,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#ef,#00,#e1
	db #00,#d5,#00,#c9,#00,#be,#00,#b3
	db #00,#a9,#00,#9f,#00,#96,#00,#8e
	db #00,#86,#00,#7f,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#77,#00,#71
	db #00,#6a,#00,#64,#00,#5f,#00,#59
	db #00,#54,#00,#50,#00,#4b,#00,#47
	db #00,#43,#00,#3f,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#3c,#00,#38
	db #00,#35,#00,#32,#00,#2f,#00,#2d
	db #00,#2a,#00,#28,#00,#26,#00,#24
	db #00,#22,#00,#20,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#1e,#00,#1c
	db #00,#1b,#00,#19,#00,#18,#00,#16
	db #00,#15,#00,#14,#00,#13,#00,#12
	db #00,#11,#00,#10,#00,#e5,#0d,#69
	db #0b,#00,#00,#e5,#0d,#6f,#0b,#00
	db #00,#e5,#0d,#75,#0b,#00,#00,#e5
	db #0d,#e1,#0d,#00,#00,#e5,#0d,#7b
	db #0b,#00,#00,#e5,#0d,#81,#0b,#00
	db #00,#e5,#0d,#8d,#0b,#00,#00,#e5
	db #0d,#93,#0b,#00,#00,#e5,#0d,#99
	db #0b,#00,#00,#e5,#0d,#a0,#0b,#00
	db #00,#e5,#0d,#a6,#0b,#00,#00,#e5
	db #0d,#ac,#0b,#00,#00,#e5,#0d,#b9
	db #0b,#00,#00,#e5,#0d,#c6,#0b,#00
	db #00,#e5,#0d,#d3,#0b,#00,#00,#e5
	db #0d,#d9,#0b,#00,#00,#e5,#0d,#df
	db #0b,#00,#00,#e5,#0d,#e5,#0b,#00
	db #00,#e5,#0d,#eb,#0b,#00,#00,#e5
	db #0d,#f1,#0b,#00,#00,#e5,#0d,#01
	db #0c,#00,#00,#e5,#0d,#fc,#0b,#00
	db #00,#e5,#0d,#f7,#0b,#00,#00,#e5
	db #0d,#06,#0c,#00,#00,#e5,#0d,#0c
	db #0c,#00,#00,#e5,#0d,#11,#0c,#00
	db #00,#e5,#0d,#16,#0c,#00,#00,#e5
	db #0d,#1b,#0c,#3a,#0c,#72,#0c,#47
	db #0d,#ff,#ff,#e5,#0d,#2a,#0c,#2a
	db #0c,#2a,#0c,#2a,#0c,#e7,#0c,#e7
	db #0c,#e7,#0c,#f1,#0c,#e7,#0c,#e7
	db #0c,#f9,#0c,#03,#0d,#f9,#0c,#03
	db #0d,#f9,#0c,#03,#0d,#0d,#0d,#e7
	db #0c,#e7,#0c,#e7,#0c,#e7,#0c,#f1
	db #0c,#e7,#0c,#e7,#0c,#f9,#0c,#03
	db #0d,#f9,#0c,#03,#0d,#f9,#0c,#03
	db #0d,#0d,#0d,#ad,#0c,#7e,#0d,#ff
	db #ff,#e5,#0d,#34,#0c,#17,#0d,#b7
	db #0c,#aa,#0d,#ff,#ff,#f5,#c0,#83
	db #30,#e0,#ff,#f5,#c1,#bf,#30,#e0
	db #ff,#f5,#c0,#bf,#40,#e0,#ff,#f5
	db #c5,#83,#30,#e0,#ff,#f5,#c0,#80
	db #30,#ca,#80,#00,#c0,#80,#30,#e0
	db #ff,#f5,#c4,#81,#50,#e0,#ff,#f5
	db #cd,#81,#50,#e0,#ff,#f5,#cd,#81
	db #30,#30,#e0,#ff,#f5,#c1,#80,#60
	db #e0,#ff,#f5,#c0,#80,#50,#e0,#ff
	db #f5,#c3,#80,#20,#ca,#e0,#20,#ef
	db #c3,#81,#17,#e0,#ff,#f5,#c3,#80
	db #30,#ca,#e0,#20,#ef,#c3,#81,#27
	db #e0,#ff,#f5,#c3,#80,#10,#ca,#e0
	db #20,#ef,#c3,#81,#07,#e0,#ff,#f5
	db #c0,#bf,#30,#e0,#ff,#f5,#c0,#bf
	db #20,#e0,#ff,#f5,#c0,#bf,#40,#e0
	db #ff,#f5,#cb,#bf,#10,#e0,#ff,#f5
	db #cb,#bf,#20,#e0,#ff,#f5,#cb,#bf
	db #40,#e0,#ff,#f5,#c1,#bf,#60,#ff
	db #f5,#c1,#bf,#65,#ff,#f5,#c0,#bf
	db #55,#ff,#f5,#c1,#bf,#60,#e0,#ff
	db #f5,#c8,#bf,#22,#ff,#f5,#c8,#bf
	db #20,#ff,#f5,#c8,#bf,#25,#ff,#f2
	db #c3,#87,#20,#17,#20,#17,#20,#17
	db #83,#20,#17,#19,#1b,#ff,#c0,#83
	db #30,#c2,#30,#c1,#30,#c2,#30,#ff
	db #ca,#bf,#e0,#20,#ef,#ff,#c4,#83
	db #44,#47,#87,#49,#83,#44,#47,#87
	db #49,#83,#44,#47,#49,#81,#50,#50
	db #81,#4b,#4b,#83,#47,#9f,#49,#83
	db #45,#47,#49,#45,#87,#44,#42,#83
	db #45,#47,#49,#45,#87,#44,#85,#42
	db #81,#42,#83,#45,#47,#49,#45,#44
	db #42,#40,#42,#9f,#40,#ff,#c4,#83
	db #44,#47,#87,#49,#83,#44,#47,#87
	db #49,#83,#44,#47,#49,#81,#50,#50
	db #81,#4b,#4b,#83,#47,#9f,#49,#83
	db #45,#47,#49,#45,#87,#44,#83,#42
	db #81,#42,#44,#83,#45,#47,#49,#45
	db #87,#44,#87,#42,#83,#45,#47,#49
	db #45,#44,#42,#40,#42,#8f,#40,#50
	db #ff,#c0,#83,#30,#c2,#30,#c1,#30
	db #c2,#30,#ff,#c3,#87,#20,#17,#20
	db #17,#20,#27,#87,#20,#87,#29,#24
	db #83,#20,#24,#20,#19,#87,#22,#22
	db #83,#17,#27,#17,#27,#87,#22,#22
	db #83,#17,#27,#17,#27,#87,#22,#22
	db #17,#17,#87,#20,#17,#83,#20,#17
	db #87,#10,#ff,#c0,#83,#30,#c5,#30
	db #c1,#30,#c5,#30,#ff,#c0,#81,#30
	db #30,#c1,#83,#30,#ff,#c0,#83,#30
	db #c6,#32,#c1,#30,#c6,#35,#ff,#c0
	db #83,#30,#c6,#2b,#c1,#30,#c6,#2b
	db #ff,#c0,#83,#30,#c5,#30,#c1,#30
	db #c2,#30,#ff,#c3,#87,#20,#17,#20
	db #17,#20,#27,#87,#20,#87,#29,#24
	db #83,#20,#24,#20,#19,#87,#22,#22
	db #83,#17,#27,#17,#27,#87,#22,#22
	db #83,#17,#27,#17,#27,#87,#22,#22
	db #17,#17,#87,#20,#17,#83,#20,#17
	db #19,#1b,#ff,#c4,#83,#49,#48,#49
	db #40,#87,#4b,#49,#47,#44,#8f,#40
	db #83,#45,#44,#45,#49,#87,#47,#83
	db #45,#42,#87,#44,#45,#46,#47,#8f
	db #49,#44,#83,#50,#50,#81,#4b,#50
	db #83,#4b,#87,#49,#83,#44,#47,#8f
	db #45,#49,#87,#4b,#50,#49,#4b,#9f
	db #47,#ff,#c3,#87,#22,#22,#17,#83
	db #17,#1b,#87,#20,#17,#83,#19,#24
	db #20,#19,#87,#22,#22,#17,#1b,#20
	db #22,#23,#24,#25,#20,#24,#28,#29
	db #24,#8f,#29,#22,#22,#27,#22,#93
	db #27,#83,#17,#19,#1b,#ff,#c7,#83
	db #49,#48,#49,#40,#87,#4b,#49,#47
	db #44,#8f,#40,#83,#45,#44,#45,#49
	db #87,#47,#83,#45,#42,#87,#44,#45
	db #46,#47,#8f,#49,#44,#83,#50,#50
	db #81,#4b,#50,#83,#4b,#87,#49,#83
	db #44,#47,#8f,#45,#49,#87,#4b,#50
	db #49,#4b,#9f,#47,#ff,#ca,#bf,#20
	db #ff,#ef,#ff
;
.music_info
	db "Postman Pat - The Computer Game (1988)(Alternative Software)()",0
	db "",0

	read "music_end.asm"
