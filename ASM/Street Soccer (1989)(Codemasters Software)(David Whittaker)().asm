; Music of Street Soccer (1989)(Codemasters Software)(David Whittaker)()
; Ripped by Megachur the 11/01/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "STREETSO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #90bd
FIRST_THEME				equ 0
LAST_THEME				equ 2	; 0 -> 2

	read "music_header.asm"

;
.init_music
;
	push af
	call l9249
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l96e8
	add hl,bc
	ld a,(hl)
	ld (l9174),a
	inc hl
	ld ix,l9112
	ld c,#19
	ld a,#03
.l90db
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#08),#01
	ld (ix+#00),b
	ld (ix+#15),b
	ld (ix+#17),b
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
	jr nz,l90db
	dec a
	ld (l954b),a
	ld (l9549),a
	ret
.l9112
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09
.l912b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12
.l9144
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #24
;
.play_music
;
	ld a,(l9549)
	ld hl,l954a
	or (hl)
	ret z
	call l95a1
	ld a,(l9549)
	and a
	jr z,l91bf
.l916f equ $ + 1
	ld a,#00
	ld (l91bb),a
.l9174 equ $ + 1
	ld a,#01
	ld hl,l954b
	add (hl)
	ld (hl),a
	jr nc,l9193
	ld b,#00
	ld ix,l9112
	call l930e
	ld ix,l912b
	call l930e
	ld ix,l9144
	call l930e
.l9193
	ld ix,l9112
	call l9392
	ld (l9460),hl
	ld (l9468),a
	ld ix,l912b
	call l9392
	ld (l9462),hl
	ld (l9469),a
	ld ix,l9144
	call l9392
	ld (l9464),hl
	ld (l946a),a
.l91bb equ $ + 1
	ld a,#00
	ld (l9466),a
.l91bf
	ld a,(l9549)
	and a
	jr nz,l91d3
	ld (l9468),a
	ld (l9469),a
	ld (l946a),a
	ld a,#3f
	ld (l9467),a
.l91d3
	ld a,(l954a)
	and a
	jr z,l91fb
	ld hl,(l946d)
.l91de equ $ + 2
	ld (l9460),hl
	ld a,(l96dc)
	ld b,a
	bit 3,a
	jr nz,l91ed
	ld a,(l9473)
	ld (l9466),a
.l91ed
	ld hl,l9467
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l9475)
	ld (l9468),a
.l91fb
	ld hl,l946a
	ld d,#0a
.l9200
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
	jp p,l9200
	ret
.l9221
	ld de,#0a00
.l9224
	call l922e
	dec d
	jp p,l9224
	ld de,#073f
.l922e
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
.l9249
;
	xor a
	ld (l9549),a
	ld (l954a),a
	call l9221
	xor a
	ld (l9468),a
	ld (l9469),a
	ld (l946a),a
	ret
	db #9a,#8e,#87,#00,#00,#00,#00,#0f
	db #74,#00,#4e,#38,#60,#87,#04,#94
	db #95,#9a
	pop hl
	jp l9249
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
	jr nz,l9296
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l9296
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l931b
	ld a,(ix+#18)
	ld c,a
	and #07
	ld hl,l942b
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#16),a
	jp l931b
	ld a,(ix+#18)
	ld c,a
	and #38
	ld hl,l942b
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#16),a
	jp l931b
	ld hl,l942b
	ld a,(ix+#18)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#16),a
	jr l931b
	ld a,(de)
	ld (ix+#13),a
	inc de
	ld a,(de)
	ld (ix+#12),a
	ld (ix+#14),a
	inc de
	ld (ix+#15),#40
	jr l931b
	ld (ix+#15),b
	jr l931b
	set 1,(ix+#00)
	jr l931b
	ld (ix+#0b),b
	res 5,(ix+#00)
	jr l934a
	jr l9346
	ld (ix+#17),#ff
	jr l931b
	ld (ix+#17),b
	jr l931b
.l930e
	dec (ix+#08)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l931b
	ld a,(de)
	inc de
	and a
	jp m,l9361
	ld (ix+#0a),a
	bit 0,(ix+#16)
	jr z,l932d
	ld (l916f),a
.l932d
	ld l,(ix+#0c)
	ld (ix+#0e),l
	ld h,(ix+#0d)
	ld (ix+#0f),h
	ld a,(hl)
	ld (ix+#10),a
	ld (ix+#0b),a
	ld a,(ix+#07)
	ld (ix+#11),a
.l9346
	set 5,(ix+#00)
.l934a
	ld a,(ix+#09)
	ld (ix+#08),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#17)
	and a
	jr z,l9360
	ld (ix+#17),#ff
.l9360
	ret
.l9361
	cp #d0
	jr c,l938a
	add #20
	jr c,l9383
	add #10
	ld hl,l94f1
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#0c),l
	ld (ix+#0d),h
	dec hl
	ld a,(hl)
	ld (ix+#07),a
	jp l931b
.l9383
	inc a
	ld (ix+#09),a
	jp l931b
.l938a
	ld hl,l91de
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l9392
	ld c,(ix+#00)
	bit 5,c
	jr z,l93c4
	ld a,(ix+#11)
	sub #01
	ld (ix+#11),a
	jr nc,l93be
	ld a,(ix+#07)
	ld (ix+#11),a
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	inc hl
	ld a,(hl)
	and a
	jp m,l93be
	ld (ix+#0e),l
	ld (ix+#0f),h
	ld (ix+#10),a
.l93be
	ld a,(ix+#10)
	ld (ix+#0b),a
.l93c4
	ld a,(ix+#0a)
	ld hl,l9461
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#15)
	bit 6,l
	jr z,l9421
	ld h,a
	ld b,(ix+#12)
	sla b
	bit 7,l
	ld a,(ix+#14)
	jr z,l93ea
	bit 0,c
	jr nz,l9408
.l93ea
	bit 5,l
	jr nz,l93fa
	sub (ix+#13)
	jr nc,l9405
	set 5,(ix+#15)
	sub a
	jr l9405
.l93fa
	add (ix+#13)
	cp b
	jr c,l9405
	res 5,(ix+#15)
	ld a,b
.l9405
	ld (ix+#14),a
.l9408
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l9413
	dec d
.l9413
	add #a0
	jr c,l941f
.l9417
	sla e
	rl d
	add #18
	jr nc,l9417
.l941f
	add hl,de
	ex de,hl
.l9421
	ld a,c
	xor #01
	ld (ix+#00),a
	cpl
	and #03
.l942b equ $ + 1
	ld a,#38
	jr nz,l9438
	ld a,(l916f)
	xor #08
	ld (l91bb),a
	ld a,#07
.l9438
	ld hl,l9467
	xor (hl)
	and (ix+#18)
	xor (hl)
	ld (hl),a
	ld a,(ix+#17)
	and a
	jp p,l945b
	and #7f
	ld (ix+#17),a
	ld a,(ix+#18)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l91bb),a
.l945b
	ex de,hl
	ld a,(ix+#0b)
	ret
.l9467 equ $ + 7
.l9466 equ $ + 6
.l9464 equ $ + 4
.l9462 equ $ + 2
.l9461 equ $ + 1
.l9460
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l946e equ $ + 6
.l946d equ $ + 5
.l946a equ $ + 2
.l9469 equ $ + 1
.l9468
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l9475 equ $ + 5
.l9473 equ $ + 3
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
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
.l94f1
	dw l94fa,l9524,l952b,l953c
.l94fa equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#0d,#0c
	db #0b,#0a,#09,#0b,#0a,#09,#08,#07
	db #09,#08,#07,#06,#05,#07,#06,#05
	db #04,#03,#05,#04,#03,#02,#01,#04
	db #03,#02,#01,#03,#02,#01,#02,#01
.l9524 equ $ + 3
	db #00,#87,#01,#0f,#0e,#0d,#0c,#0b
.l952b equ $ + 2
	db #87,#05,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.l953c equ $ + 3
	db #01,#87,#01,#0e,#0d,#0c,#0b,#0a
	db #09,#0b,#0a,#09,#08,#87,#00,#0f
.l954b equ $ + 2
.l954a equ $ + 1
.l9549
.music_end
	db #00,#00,#00
	ld hl,l954a
	ld (hl),#00
	ld hl,l963e
	add a
	add l
	ld l,a
	jr nc,l955a
	inc h
.l955a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0b
	ld hl,l96d6
.l9562
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l9562
	ld a,(l96d7)
	ld (l96e2),a
	ld hl,(l96d8)
	ld (l946d),hl
	ld a,(l96dc)
	bit 3,a
	jr nz,l957f
	ld a,l
	ld (l9473),a
.l957f
	ld a,(l96e0)
	ld (l96e3),a
	ld a,(l96df)
	ld hl,l9699
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l96e4),hl
	ld (l96e6),hl
	ld a,(hl)
	ld (l9475),a
	ld hl,l954a
	inc (hl)
	ret
.l95a1
	ld a,(l954a)
	and a
	ret z
	ld a,(l96d6)
	and a
	jr nz,l95b6
	ld a,(l96e1)
	and a
	jr nz,l95b6
	ld (l954a),a
	ret
.l95b6
	dec a
	ld (l96d6),a
	ld a,(l96e2)
	and a
	jr nz,l95e2
	ld a,(l96e1)
	and a
	jr nz,l95cc
	ld a,(l96de)
	and a
	jr z,l9616
.l95cc
	dec a
	ld (l96de),a
	ld a,(l96d7)
	ld (l96e2),a
	ld a,(l96d8)
	ld (l946d),a
	ld a,(l96d9)
	ld (l946e),a
.l95e2
	ld hl,l96e2
	dec (hl)
	ld a,(l96dd)
	and a
	jr z,l9609
	jp p,l95fc
	ld hl,(l946d)
	ld de,(l96da)
	add hl,de
	ld (l946d),hl
	jr l9609
.l95fc
	ld hl,(l946d)
	ld de,(l96da)
	and a
	sbc hl,de
	ld (l946d),hl
.l9609
	ld a,(l96dc)
	bit 3,a
	jr nz,l9616
	ld a,(l946d)
	ld (l9473),a
.l9616
	ld a,(l96e3)
	dec a
	ld (l96e3),a
	jr nz,l963d
	ld a,(l96e0)
	ld (l96e3),a
	ld hl,(l96e6)
	ld a,(hl)
	inc hl
	and a
	jp p,l9637
	cp #80
	jr nz,l963d
	ld hl,(l96e4)
	ld a,(hl)
	inc hl
.l9637
	ld (l96e6),hl
	ld (l9475),a
.l963d
	ret
.l963e
	dw l964c,l9657,l9662,l966d
	dw l9678,l9683,l968e
.l964c
	db #0a,#63,#10,#04,#08,#00,#fe,#01
.l9657 equ $ + 3
	db #63,#00,#02,#08,#63,#80,#05,#30
.l9662 equ $ + 6
	db #00,#fe,#01,#63,#00,#01,#14,#02
	db #1e,#00,#05,#00,#fe,#01,#63,#03
.l966d equ $ + 1
	db #01,#0b,#0f,#00,#02,#40,#00,#fe
.l9678 equ $ + 4
	db #ff,#00,#02,#01,#0b,#0f,#00,#04
.l9683 equ $ + 7
	db #50,#00,#fe,#ff,#00,#02,#01,#0b
	db #0f,#00,#00,#00,#00,#f6,#ff,#00
.l968e equ $ + 2
	db #01,#01,#c8,#03,#08,#00,#00,#00
	db #f7,#ff,#00,#02,#08
.l9699
	dw l96a3,l96ac,l96be,l96d2
	dw l96b8
.l96a3
	db #0e,#0d,#0b,#09,#07,#05,#04,#03
.l96ac equ $ + 1
	db #ff,#08,#0a,#0c,#0e,#0d,#0c,#0a
.l96b8 equ $ + 5
	db #08,#06,#04,#00,#ff,#04,#05,#06
.l96be equ $ + 3
	db #07,#08,#09,#0a,#0c,#0e,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l96d2 equ $ + 7
	db #06,#05,#05,#04,#04,#03,#ff,#08
.l96da equ $ + 7
.l96d9 equ $ + 6
.l96d8 equ $ + 5
.l96d7 equ $ + 4
.l96d6 equ $ + 3
	db #0a,#0b,#ff,#00,#00,#00,#00,#00
.l96e2 equ $ + 7
.l96e1 equ $ + 6
.l96e0 equ $ + 5
.l96df equ $ + 4
.l96de equ $ + 3
.l96dd equ $ + 2
.l96dc equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l96e6 equ $ + 3
.l96e4 equ $ + 1
.l96e3
	db #00,#00,#00,#00,#00
.l96e8
	db #38
	dw l978c,l9782,l9796
	db #20
	dw l96ff,l96fd,l9701
	db #32
	dw l9748,l9744,l974a
.l9701 equ $ + 4
.l96ff equ $ + 2
.l96fd
	dw l9703,l971a,l972f
.l9703
	db #8a,#88,#01,#01,#d1,#e0,#18,#13
	db #15,#17,#18,#13,#15,#17,#18,#13
.l971a equ $ + 7
	db #15,#17,#18,#17,#15,#13,#8e,#8a
	db #88,#01,#01,#d1,#e0,#28,#e1,#24
	db #e0,#28,#e1,#24,#e0,#28,#24,#29
.l972f equ $ + 4
	db #e1,#28,#e4,#2b,#8a,#88,#01,#01
	db #d1,#e0,#2b,#e1,#28,#e0,#2b,#e1
	db #28,#e0,#2b,#28,#2d,#e1,#2b,#e4
	db #30
.l974a equ $ + 6
.l9748 equ $ + 4
.l9744
	dw l974c,#0000,l9755,l976c
.l974c
	db #8a,#88,#01,#01,#d1,#e1,#11,#1d
.l9755 equ $ + 1
	db #87,#8a,#88,#01,#01,#d1,#e3,#29
	db #e2,#2d,#e0,#2b,#e1,#29,#28,#26
	db #24,#e5,#29,#e1,#2d,#e5,#29,#8e
.l976c
	db #8a,#88,#01,#01,#d1,#e3,#2d,#e2
	db #30,#e0,#2e,#e1,#2d,#2b,#29,#28
	db #e5,#2d,#e1,#30,#e5,#2d
.l9782
	dw l97a0,l97a0,l97b5,l97b5
	dw #0000
.l978c
	dw l97c3,l97c3,l97ed,l97ed
	dw #0000
.l9796
	dw l97d8,l97d8,l97ee,l97ee
	dw #0000
.l97a0
	db #8a,#88,#01,#01,#90,#d1,#e1,#14
	db #1b,#14,#1b,#14,#e0,#1b,#e1,#14
.l97b5 equ $ + 5
	db #e0,#14,#e1,#1b,#87,#12,#19,#12
	db #19,#12,#e0,#19,#e1,#12,#e0,#12
	db #e1,#19,#87
.l97c3
	db #88,#01,#01,#8a,#d3,#e1,#22,#e7
	db #22,#e1,#22,#22,#20,#1e,#e7,#1e
	db #e1,#1e,#1e,#20,#87
.l97d8
	db #88,#01,#01,#8a,#d3,#e1,#27,#e7
	db #27,#e1,#27,#27,#25,#22,#e7,#22
.l97ee equ $ + 6
.l97ed equ $ + 5
	db #e1,#22,#22,#25,#87,#81,#e5,#22
	db #27,#25,#27,#e3,#20,#22,#e5,#22
	db #27,#25,#27,#e3,#1e,#20,#87
;
; #052a
; xor a
; call #90bd	; init music 0-2
;
.music_info
	db "Street Soccer (1989)(Codemasters Software)(David Whittaker)",0
	db "",0

	read "music_end.asm"