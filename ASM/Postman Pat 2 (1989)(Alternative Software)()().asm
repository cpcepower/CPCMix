; Music of Postman Pat 2 (1989)(Alternative Software)()()
; Ripped by Megachur the 18/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "POSTPAT2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #0200
FIRST_THEME				equ 1
LAST_THEME				equ 1

	read "music_header.asm"

;	jp l0206	; modified by Megachur a=1
	jp l0241        ; play, stop, init
;.l0206
;	ld (l0240),a    ; modified by Megachur
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
.l0241
	ld hl,l0240
	ld a,(hl)
	or a
	jp z,l039b
	cp #fe
	jp c,l025d_bis  ; Modified by Megachur l025d_bis
	cp #ff
	ret nz
	ld (hl),#fe
;
.stop_music
;
	ld hl,#073f
	ld a,l
	ld (l0395),a
	jp l021e
;
.init_music			; 2->15 sound fx
.l025d
;
	ld (l0240),a    ; added by Megachur
	ld a,&fe
	nop    			; added by Megachur
l025d_bis
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
	db #00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0373 equ $ + 7
	db #00,#00,#00,#00,#97,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0392 equ $ + 6
.l0391 equ $ + 5
.l0390 equ $ + 4
	db #00,#04,#df,#04,#00,#00,#00,#00
.l039a equ $ + 6
.l0399 equ $ + 5
.l0395 equ $ + 1
	db #00,#00,#00,#ff,#00,#02,#02
;
.l039b
.play_music
;
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
	and #0f
	ld (l0399),a
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
	db #00,#00,#00,#00,#00,#00
.l079a
	dw l0b0b,l0b17,l0b5d,l0af9
	dw l0aff,l0b05,l0af3,l0a7b
	dw l0a7b,l0ae1,l0ae7,l0aed
	dw l0acf,l0ad5,l0adb,l0abd
	dw l0ac3,l0ac9,l0aab,l0ab1
	dw l0ab7,l0a9f,l0aa5,l0a7b
	dw l0a99,l0a7b,l0a7b,l0a93
	dw l0a7b,l0a7b,l0a8d,l0a7b
	dw l0a7b,l0a87,l0a7b,l0a7b
	dw l0a81,l0a7b,l0a7b,l0a69
.l07ee equ $ + 4
	dw l0a6f,l0a75,l0859,l0863
	dw l0871,l0888,l08ae,l08d4
	dw l08eb,l0902,l0926,#0000
	dw l092e,l0936,l0950,l095c
.l080a
	dw #0000,l0820,#0000
	dw l0822,l0826,l082a,l0830
	dw l0833,l0838,l083d,l084a
.l0826 equ $ + 6
.l0822 equ $ + 2
.l0820
	db #fb,#82,#10,#10,#00,#81,#10,#14
.l082a equ $ + 2
	db #17,#80,#20,#20,#10,#10,#00,#81
.l0833 equ $ + 3
.l0830
	db #10,#14,#80,#10,#20,#10,#20,#80
.l083d equ $ + 5
.l0838
	db #00,#10,#00,#10,#80,#01,#00,#00
	db #00,#01,#00,#00,#00,#01,#00,#00
.l084d equ $ + 5
.l084a equ $ + 2
	db #00,#81,#10,#10,#00,#00,#81,#51
	db #08,#1e,#19,#14,#0f,#0a,#05,#00
.l0859 equ $ + 1
	db #80,#00,#04,#01,#14,#00,#00,#8f
.l0863 equ $ + 3
	db #05,#00,#ff,#04,#00,#01,#14,#00
	db #00,#8f,#05,#0c,#09,#06,#03,#00
.l0871 equ $ + 1
	db #ff,#00,#10,#01,#1e,#02,#00,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#ff
.l0888
	db #00,#0c,#00,#00,#03,#00
	db #8f,#14,#8e,#14,#8d,#14,#8c,#14
	db #8b,#14,#8a,#14,#89,#14,#88,#14
	db #87,#14,#86,#14,#85,#14,#84,#14
	db #83,#14,#82,#14,#81,#14,#00,#ff
.l08ae
	db #00,#14
	db #00,#00,#02,#00
	dw #0a8f,#0a8e,#0a8d,#0a8c
	dw #0a8b,#0a8a,#0a89,#0a88
	dw #0a87,#0a86,#0a85,#0a84
	dw #0a83,#0a82,#0a81
.l08d4 equ $ + 2
	db #00,#ff,#00,#18,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#00
.l08eb equ $ + 1
	db #ff,#00,#1c,#00,#00,#00,#00,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#ff
.l0902
	db #00,#20,#00,#00,#00,#00,#8f,#14
	db #8d,#0a,#8c,#0a,#8b,#0a,#8a,#05
	db #89,#05,#88,#05,#87,#05,#86,#05
	db #85,#04,#84,#03,#83,#02,#82,#02
.l0926 equ $ + 4
	db #81,#02,#00,#ff,#00,#00,#00,#00
.l092e equ $ + 4
	db #02,#00,#0f,#ff,#00,#00,#00,#00
.l0936 equ $ + 4
	db #00,#00,#00,#ff,#00,#24,#00,#00
	db #00,#00,#0c,#0d,#0e,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l0950 equ $ + 6
	db #04,#03,#02,#01,#00,#ff,#00,#00
	db #00,#00,#14,#01,#8f,#0c,#0a,#06
.l095c equ $ + 2
	db #00,#ff,#00,#28,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
.l0971 equ $ + 7
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #ff
	dw #0e18,#0d4d,#0c8e,#0bda
	dw #0b2f,#0a8f,#09f7,#0968
	dw #08e1,#0861,#07e9,#0000
	dw #0000,#0000,#0000,#0777
	dw #070c,#06a7,#0647,#05ed
	dw #0598,#0547,#04fc,#04b4
	dw #0470,#0431,#03f4,#0000
	dw #0000,#0000,#0000,#03bc
	dw #0386,#0353,#0324,#02f6
	dw #02cc,#02a4,#027e,#025a
	dw #0238,#0218,#01fa,#0000
	dw #0000,#0000,#0000,#01de
	dw #01c3,#01aa,#0192,#017b
	dw #0166,#0152,#013f,#012d
	dw #011c,#010c,#00fd,#0000
	dw #0000,#0000,#0000,#00ef
	dw #00e1,#00d5,#00c9,#00be
	dw #00b3,#00a9,#009f,#0096
	dw #008e,#0086,#007f,#0000
	dw #0000,#0000,#0000,#0077
	dw #0071,#006a,#0064,#005f
	dw #0059,#0054,#0050,#004b
	dw #0047,#0043,#003f,#0000
	dw #0000,#0000,#0000,#003c
	dw #0038,#0035,#0032,#002f
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#0000
	dw #0000,#0000,#0000,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010
.l0a6f equ $ + 6
.l0a69
	dw l0de5,l0b69,#0000,l0de5
.l0a75 equ $ + 4
	dw l0b6f,#0000,l0de5,l0b75
.l0a7b equ $ + 2
	dw #0000,l0de5,l0de1,#0000
;.l0a88 equ $ + 7
.l0a87 equ $ + 6
;.l0a86 equ $ + 5
;.l0a85 equ $ + 4
;.l0a84 equ $ + 3
;.l0a83 equ $ + 2
;.l0a82 equ $ + 1
.l0a81
	dw l0de5,l0b7b,#0000,l0de5
;.l0a8f equ $ + 6
;.l0a8e equ $ + 5
.l0a8d equ $ + 4
;.l0a8c equ $ + 3
;.l0a8b equ $ + 2
;.l0a8a equ $ + 1
.l0a89
	dw l0b81,#0000,l0de5,l0b8d
.l0a93 equ $ + 2
	dw #0000,l0de5,l0b93,#0000
.l0a9f equ $ + 6
.l0a99
	dw l0de5,l0b99,#0000,l0de5
.l0aa5 equ $ + 4
	dw l0ba0,#0000,l0de5,l0ba6
.l0aab equ $ + 2
	dw #0000,l0de5,l0bac,#0000
.l0ab7 equ $ + 6
.l0ab1
	dw l0de5,l0bb9,#0000,l0de5
.l0abd equ $ + 4
	dw l0bc6,#0000,l0de5,l0bd3
.l0ac3 equ $ + 2
	dw #0000,l0de5,l0bd9,#0000
.l0acf equ $ + 6
.l0ac9
	dw l0de5,l0bdf,#0000,l0de5
.l0ad5 equ $ + 4
	dw l0be5,#0000,l0de5,l0beb
.l0adb equ $ + 2
	dw #0000,l0de5,l0bf1,#0000
.l0ae7 equ $ + 6
.l0ae1
	dw l0de5,l0c01,#0000,l0de5
.l0aed equ $ + 4
	dw l0bfc,#0000,l0de5,l0bf7
.l0af3 equ $ + 2
	dw #0000,l0de5,l0c06,#0000
.l0aff equ $ + 6
.l0af9
	dw l0de5,l0c0c,#0000,l0de5
	dw l0c11,#0000
.l0b05
	dw l0de5,l0c16,#0000
.l0b0b
	dw l0de5,l0c1b,l0c3a,l0c72
	dw l0d47,#ffff
.l0b17
	dw l0de5,l0c2a,l0c2a,l0c2a
	dw l0c2a,l0ce7,l0ce7,l0ce7
	dw l0cf1,l0ce7,l0ce7,l0cf9
	dw l0d03,l0cf9,l0d03,l0cf9
	dw l0d03,l0d0d,l0ce7,l0ce7
	dw l0ce7,l0ce7,l0cf1,l0ce7
	dw l0ce7,l0cf9,l0d03,l0cf9
	dw l0d03,l0cf9,l0d03,l0d0d
	dw l0cad,l0d7e,#ffff
.l0b5d
	dw l0de5,l0c34,l0d17,l0cb7
	dw l0daa,#ffff
.l0b6f equ $ + 6
.l0b69
	db #f5,#c0,#83,#30,#e0,#ff,#f5,#c1
.l0b75 equ $ + 4
	db #bf,#30,#e0,#ff,#f5,#c0,#bf,#40
.l0b7b equ $ + 2
	db #e0,#ff,#f5,#c5,#83,#30,#e0,#ff
.l0b81
	db #f5,#c0,#80,#30,#ca,#80,#00,#c0
.l0b8d equ $ + 4
	db #80,#30,#e0,#ff,#f5,#c4,#81,#50
.l0b93 equ $ + 2
	db #e0,#ff,#f5,#cd,#81,#50,#e0,#ff
.l0ba0 equ $ + 7
.l0b99
	db #f5,#cd,#81,#30,#30,#e0,#ff,#f5
.l0ba6 equ $ + 5
	db #c1,#80,#60,#e0,#ff,#f5,#c0,#80
.l0bac equ $ + 3
	db #50,#e0,#ff,#f5,#c3,#80,#20,#ca
	db #e0,#20,#ef,#c3,#81,#17,#e0,#ff
.l0bb9
	db #f5,#c3,#80,#30,#ca,#e0,#20,#ef
.l0bc6 equ $ + 5
	db #c3,#81,#27,#e0,#ff,#f5,#c3,#80
	db #10,#ca,#e0,#20,#ef,#c3,#81,#07
.l0bd3 equ $ + 2
	db #e0,#ff,#f5,#c0,#bf,#30,#e0,#ff
.l0bdf equ $ + 6
.l0bd9
	db #f5,#c0,#bf,#20,#e0,#ff,#f5,#c0
.l0be5 equ $ + 4
	db #bf,#40,#e0,#ff,#f5,#cb,#bf,#10
.l0beb equ $ + 2
	db #e0,#ff,#f5,#cb,#bf,#20,#e0,#ff
.l0bf7 equ $ + 6
.l0bf1
	db #f5,#cb,#bf,#40,#e0,#ff,#f5,#c1
.l0bfc equ $ + 3
	db #bf,#60,#ff,#f5,#c1,#bf,#65,#ff
.l0c06 equ $ + 5
.l0c01
	db #f5,#c0,#bf,#55,#ff,#f5,#c1,#bf
.l0c0c equ $ + 3
	db #60,#e0,#ff,#f5,#c8,#bf,#22,#ff
.l0c16 equ $ + 5
.l0c11
	db #f5,#c8,#bf,#20,#ff,#f5,#c8,#bf
.l0c1b equ $ + 2
	db #25,#ff,#f2,#c3,#87,#20,#17,#20
	db #17,#20,#17,#83,#20,#17,#19,#1b
.l0c2a equ $ + 1
	db #ff,#c0,#83,#30,#c2,#30,#c1,#30
.l0c34 equ $ + 3
	db #c2,#30,#ff,#ca,#bf,#e0,#20,#ef
.l0c3a equ $ + 1
	db #ff,#c4,#83,#44,#47,#87,#49,#83
	db #44,#47,#87,#49,#83,#44,#47,#49
	db #81,#50,#50,#81,#4b,#4b,#83,#47
	db #9f,#49,#83,#45,#47,#49,#45,#87
	db #44,#42,#83,#45,#47,#49,#45,#87
	db #44,#85,#42,#81,#42,#83,#45,#47
	db #49,#45,#44,#42,#40,#42,#9f,#40
.l0c72 equ $ + 1
	db #ff,#c4,#83,#44,#47,#87,#49,#83
	db #44,#47,#87,#49,#83,#44,#47,#49
	db #81,#50,#50,#81,#4b,#4b,#83,#47
	db #9f,#49,#83,#45,#47,#49,#45,#87
	db #44,#83,#42,#81,#42,#44,#83,#45
	db #47,#49,#45,#87,#44,#87,#42,#83
	db #45,#47,#49,#45,#44,#42,#40,#42
.l0cad equ $ + 4
	db #8f,#40,#50,#ff,#c0,#83,#30,#c2
.l0cb7 equ $ + 6
	db #30,#c1,#30,#c2,#30,#ff,#c3,#87
	db #20,#17,#20,#17,#20,#27,#87,#20
	db #87,#29,#24,#83,#20,#24,#20,#19
	db #87,#22,#22,#83,#17,#27,#17,#27
	db #87,#22,#22,#83,#17,#27,#17,#27
	db #87,#22,#22,#17,#17,#87,#20,#17
.l0ce7 equ $ + 6
	db #83,#20,#17,#87,#10,#ff,#c0,#83
	db #30,#c5,#30,#c1,#30,#c5,#30,#ff
.l0cf1
	db #c0,#81,#30,#30,#c1,#83,#30,#ff
.l0cf9
	db #c0,#83,#30,#c6,#32,#c1,#30,#c6
.l0d03 equ $ + 2
	db #35,#ff,#c0,#83,#30,#c6,#2b,#c1
.l0d0d equ $ + 4
	db #30,#c6,#2b,#ff,#c0,#83,#30,#c5
.l0d17 equ $ + 6
	db #30,#c1,#30,#c2,#30,#ff,#c3,#87
	db #20,#17,#20,#17,#20,#27,#87,#20
	db #87,#29,#24,#83,#20,#24,#20,#19
	db #87,#22,#22,#83,#17,#27,#17,#27
	db #87,#22,#22,#83,#17,#27,#17,#27
	db #87,#22,#22,#17,#17,#87,#20,#17
.l0d47 equ $ + 6
	db #83,#20,#17,#19,#1b,#ff,#c4,#83
	db #49,#48,#49,#40,#87,#4b,#49,#47
	db #44,#8f,#40,#83,#45,#44,#45,#49
	db #87,#47,#83,#45,#42,#87,#44,#45
	db #46,#47,#8f,#49,#44,#83,#50,#50
	db #81,#4b,#50,#83,#4b,#87,#49,#83
	db #44,#47,#8f,#45,#49,#87,#4b,#50
.l0d7e equ $ + 5
	db #49,#4b,#9f,#47,#ff,#c3,#87,#22
	db #22,#17,#83,#17,#1b,#87,#20,#17
	db #83,#19,#24,#20,#19,#87,#22,#22
	db #17,#1b,#20,#22,#23,#24,#25,#20
	db #24,#28,#29,#24,#8f,#29,#22,#22
	db #27,#22,#93,#27,#83,#17,#19,#1b
	db #ff
.l0daa
	db #c7,#83,#49,#48,#49,#40,#87,#4b
	db #49,#47,#44,#8f,#40,#83,#45,#44
	db #45,#49,#87,#47,#83,#45,#42,#87
	db #44,#45,#46,#47,#8f,#49,#44,#83
	db #50,#50,#81,#4b,#50,#83,#4b,#87
	db #49,#83,#44,#47,#8f,#45,#49,#87
.l0de1 equ $ + 7
	db #4b,#50,#49,#4b,#9f,#47,#ff,#ca
.l0de5 equ $ + 3
	db #bf,#20,#ff,#ef,#ff
;
.music_info
	db "Postman Pat 2 (1989)(Alternative Software)()",0
	db "",0

	read "music_end.asm"
