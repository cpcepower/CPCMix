; Music of 11 A Side Soccer (1989) (Codemasters)(David Whittaker)(Four Soccer Simulator)()
; Ripped by Megachur the 24/01/2009
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "11ASIDES.BIN"
	ENDIF

music_date_rip_day		equ 24
music_date_rip_month	equ 01
music_date_rip_year		equ 2009
music_adr				equ &907a
first_theme				equ 0
last_theme				equ 1

	read "music_header.asm"

;
.init_music
;
	push af
	call l9206
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l96a5
	add hl,bc
	ld a,(hl)
	ld (l9131),a
	inc hl
	ld ix,l90cf
	ld c,#19
	ld a,#03
.l9098
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
	jr nz,l9098
	dec a
	ld (l9508),a
	ld (l9506),a
	ret
.l90cf
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l90e8 equ $ + 1
	db #09,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9101 equ $ + 2
	db #00,#12,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#24
;
.play_music
;
	ld a,(l9506)
	ld hl,l9507
	or (hl)
	ret z
	call l955e
	ld a,(l9506)
	and a
	jr z,l917c
.l912c equ $ + 1
	ld a,#00
	ld (l9178),a
.l9131 equ $ + 1
	ld a,#01
	ld hl,l9508
	add (hl)
	ld (hl),a
	jr nc,l9150
	ld b,#00
	ld ix,l90cf
	call l92cb
	ld ix,l90e8
	call l92cb
	ld ix,l9101
	call l92cb
.l9150
	ld ix,l90cf
	call l934f
	ld (l941d),hl
	ld (l9425),a
	ld ix,l90e8
	call l934f
	ld (l941f),hl
	ld (l9426),a
	ld ix,l9101
	call l934f
	ld (l9421),hl
	ld (l9427),a
.l9178 equ $ + 1
	ld a,#00
	ld (l9423),a
.l917c
	ld a,(l9506)
	and a
	jr nz,l9190
	ld (l9425),a
	ld (l9426),a
	ld (l9427),a
	ld a,#3f
	ld (l9424),a
.l9190
	ld a,(l9507)
	and a
	jr z,l91b8
	ld hl,(l942a)
.l919b equ $ + 2
	ld (l941d),hl
	ld a,(l9699)
	ld b,a
	bit 3,a
	jr nz,l91aa
	ld a,(l9430)
	ld (l9423),a
.l91aa
	ld hl,l9424
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l9432)
	ld (l9425),a
.l91b8
	ld hl,l9427
	ld d,#0a
.l91bd
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
	jp p,l91bd
	ret
.l91de
	ld de,#0a00
.l91e1
	call l91eb
	dec d
	jp p,l91e1
	ld de,#073f
.l91eb
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
.l9206
;
	xor a
	ld (l9506),a
	ld (l9507),a
	call l91de
	xor a
	ld (l9425),a
	ld (l9426),a
	ld (l9427),a
	ret
	db #9a,#8e,#87,#00,#00,#00,#00,#0f
	db #74,#00,#4e,#38,#60,#87,#04,#94
	db #95,#9a
	pop hl
	jp l9206
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
	jr nz,l9253
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l9253
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l92d8
	ld a,(ix+#18)
	ld c,a
	and #07
	ld hl,l93e8
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#16),a
	jp l92d8
	ld a,(ix+#18)
	ld c,a
	and #38
	ld hl,l93e8
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#16),a
	jp l92d8
	ld hl,l93e8
	ld a,(ix+#18)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#16),a
	jr l92d8
	ld a,(de)
	ld (ix+#13),a
	inc de
	ld a,(de)
	ld (ix+#12),a
	ld (ix+#14),a
	inc de
	ld (ix+#15),#40
	jr l92d8
	ld (ix+#15),b
	jr l92d8
	set 1,(ix+#00)
	jr l92d8
	ld (ix+#0b),b
	res 5,(ix+#00)
	jr l9307
	jr l9303
	ld (ix+#17),#ff
	jr l92d8
	ld (ix+#17),b
	jr l92d8
.l92cb
	dec (ix+#08)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l92d8
	ld a,(de)
	inc de
	and a
	jp m,l931e
	ld (ix+#0a),a
	bit 0,(ix+#16)
	jr z,l92ea
	ld (l912c),a
.l92ea
	ld l,(ix+#0c)
	ld (ix+#0e),l
	ld h,(ix+#0d)
	ld (ix+#0f),h
	ld a,(hl)
	ld (ix+#10),a
	ld (ix+#0b),a
	ld a,(ix+#07)
	ld (ix+#11),a
.l9303
	set 5,(ix+#00)
.l9307
	ld a,(ix+#09)
	ld (ix+#08),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#17)
	and a
	jr z,l931d
	ld (ix+#17),#ff
.l931d
	ret
.l931e
	cp #d0
	jr c,l9347
	add #20
	jr c,l9340
	add #10
	ld hl,l94ae
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
	jp l92d8
.l9340
	inc a
	ld (ix+#09),a
	jp l92d8
.l9347
	ld hl,l919b
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l934f
	ld c,(ix+#00)
	bit 5,c
	jr z,l9381
	ld a,(ix+#11)
	sub #01
	ld (ix+#11),a
	jr nc,l937b
	ld a,(ix+#07)
	ld (ix+#11),a
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	inc hl
	ld a,(hl)
	and a
	jp m,l937b
	ld (ix+#0e),l
	ld (ix+#0f),h
	ld (ix+#10),a
.l937b
	ld a,(ix+#10)
	ld (ix+#0b),a
.l9381
	ld a,(ix+#0a)
	ld hl,l941e
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#15)
	bit 6,l
	jr z,l93de
	ld h,a
	ld b,(ix+#12)
	sla b
	bit 7,l
	ld a,(ix+#14)
	jr z,l93a7
	bit 0,c
	jr nz,l93c5
.l93a7
	bit 5,l
	jr nz,l93b7
	sub (ix+#13)
	jr nc,l93c2
	set 5,(ix+#15)
	sub a
	jr l93c2
.l93b7
	add (ix+#13)
	cp b
	jr c,l93c2
	res 5,(ix+#15)
	ld a,b
.l93c2
	ld (ix+#14),a
.l93c5
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l93d0
	dec d
.l93d0
	add #a0
	jr c,l93dc
.l93d4
	sla e
	rl d
	add #18
	jr nc,l93d4
.l93dc
	add hl,de
	ex de,hl
.l93de
	ld a,c
	xor #01
	ld (ix+#00),a
	cpl
	and #03
.l93e8 equ $ + 1
	ld a,#38
	jr nz,l93f5
	ld a,(l912c)
	xor #08
	ld (l9178),a
	ld a,#07
.l93f5
	ld hl,l9424
	xor (hl)
	and (ix+#18)
	xor (hl)
	ld (hl),a
	ld a,(ix+#17)
	and a
	jp p,l9418
	and #7f
	ld (ix+#17),a
	ld a,(ix+#18)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l9178),a
.l9418
	ex de,hl
	ld a,(ix+#0b)
	ret
.l9424 equ $ + 7
.l9423 equ $ + 6
.l9421 equ $ + 4
.l941f equ $ + 2
.l941e equ $ + 1
.l941d
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l942b equ $ + 6
.l942a equ $ + 5
.l9427 equ $ + 2
.l9426 equ $ + 1
.l9425
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l9432 equ $ + 5
.l9430 equ $ + 3
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
.l94ae
	dw l94b7,l94e1,l94e8,l94f9
.l94b7 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#0d,#0c
	db #0b,#0a,#09,#0b,#0a,#09,#08,#07
	db #09,#08,#07,#06,#05,#07,#06,#05
	db #04,#03,#05,#04,#03,#02,#01,#04
	db #03,#02,#01,#03,#02,#01,#02,#01
.l94e1 equ $ + 3
	db #00,#87,#01,#0f,#0e,#0d,#0c,#0b
.l94e8 equ $ + 2
	db #87,#05,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.l94f9 equ $ + 3
	db #01,#87,#01,#0e,#0d,#0c,#0b,#0a
	db #09,#0b,#0a,#09,#08,#87,#00,#0f
.l9508 equ $ + 2
.l9507 equ $ + 1
.music_end
.l9506
	db #00,#00,#00
	ld hl,l9507
	ld (hl),#00
	ld hl,l95fb
	add a
	add l
	ld l,a
	jr nc,l9517
	inc h
.l9517
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0b
	ld hl,l9693
.l951f
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l951f
	ld a,(l9694)
	ld (l969f),a
	ld hl,(l9695)
	ld (l942a),hl
	ld a,(l9699)
	bit 3,a
	jr nz,l953c
	ld a,l
	ld (l9430),a
.l953c
	ld a,(l969d)
	ld (l96a0),a
	ld a,(l969c)
	ld hl,l9656
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l96a1),hl
	ld (l96a3),hl
	ld a,(hl)
	ld (l9432),a
	ld hl,l9507
	inc (hl)
	ret
.l955e
	ld a,(l9507)
	and a
	ret z
	ld a,(l9693)
	and a
	jr nz,l9573
	ld a,(l969e)
	and a
	jr nz,l9573
	ld (l9507),a
	ret
.l9573
	dec a
	ld (l9693),a
	ld a,(l969f)
	and a
	jr nz,l959f
	ld a,(l969e)
	and a
	jr nz,l9589
	ld a,(l969b)
	and a
	jr z,l95d3
.l9589
	dec a
	ld (l969b),a
	ld a,(l9694)
	ld (l969f),a
	ld a,(l9695)
	ld (l942a),a
	ld a,(l9696)
	ld (l942b),a
.l959f
	ld hl,l969f
	dec (hl)
	ld a,(l969a)
	and a
	jr z,l95c6
	jp p,l95b9
	ld hl,(l942a)
	ld de,(l9697)
	add hl,de
	ld (l942a),hl
	jr l95c6
.l95b9
	ld hl,(l942a)
	ld de,(l9697)
	and a
	sbc hl,de
	ld (l942a),hl
.l95c6
	ld a,(l9699)
	bit 3,a
	jr nz,l95d3
	ld a,(l942a)
	ld (l9430),a
.l95d3
	ld a,(l96a0)
	dec a
	ld (l96a0),a
	jr nz,l95fa
	ld a,(l969d)
	ld (l96a0),a
	ld hl,(l96a3)
	ld a,(hl)
	inc hl
	and a
	jp p,l95f4
	cp #80
	jr nz,l95fa
	ld hl,(l96a1)
	ld a,(hl)
	inc hl
.l95f4
	ld (l96a3),hl
	ld (l9432),a
.l95fa
	ret
.l95fb
	dw l9609,l9614,l961f,l962a
	dw l9635,l9640,l964b
.l9609
	db #0a,#63,#10,#04,#08,#00,#fe,#01
.l9614 equ $ + 3
	db #63,#00,#02,#08,#63,#80,#05,#30
.l961f equ $ + 6
	db #00,#fe,#01,#63,#00,#01,#14,#02
	db #1e,#00,#05,#00,#fe,#01,#63,#03
.l962a equ $ + 1
	db #01,#0b,#0f,#00,#02,#40,#00,#fe
.l9635 equ $ + 4
	db #ff,#00,#02,#01,#0b,#0f,#00,#04
.l9640 equ $ + 7
	db #50,#00,#fe,#ff,#00,#02,#01,#0b
	db #0f,#00,#00,#00,#00,#f6,#ff,#00
.l964b equ $ + 2
	db #01,#01,#c8,#03,#08,#00,#00,#00
.l9656 equ $ + 5
	db #f7,#ff,#00,#02,#08,#60,#96,#69
	db #96,#7b,#96,#8f,#96,#75,#96,#0e
	db #0d,#0b,#09,#07,#05,#04,#03,#ff
	db #08,#0a,#0c,#0e,#0d,#0c,#0a,#08
	db #06,#04,#00,#ff,#04,#05,#06,#07
	db #08,#09,#0a,#0c,#0e,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#06
	db #05,#05,#04,#04,#03,#ff,#08,#0a
.l9697 equ $ + 6
.l9696 equ $ + 5
.l9695 equ $ + 4
.l9694 equ $ + 3
.l9693 equ $ + 2
	db #0b,#ff,#00,#00,#00,#00,#00,#00
.l96a0 equ $ + 7
.l969f equ $ + 6
.l969e equ $ + 5
.l969d equ $ + 4
.l969c equ $ + 3
.l969b equ $ + 2
.l969a equ $ + 1
.l9699
	db #00,#00,#00,#00,#00,#00,#00,#00
.l96a3 equ $ + 2
.l96a1
	db #00,#00,#00,#00
.l96a5
	db #40
	dw l96c7,l96b3,l96cf
	db #2c
	dw l97c7,l97c5,l97c9
.l96b3
	dw l96d7,l96d7,l96ff,l96ff
	dw l9708,l9708,l96ff,l96ff
.l96c7 equ $ + 4
	dw l96ee,#0000,l9756,l9711
.l96cf equ $ + 4
	dw l9795,#0000,l9753,l9753
	dw l9795,#0000
.l96d7
	db #8a,#90,#88,#01,#01,#d1,#e1,#13
	db #1f,#13,#1f,#13,#1f,#13,#1f,#13
.l96ee equ $ + 7
	db #1f,#13,#1f,#13,#1f,#13,#1f,#0e
	db #1a,#0e,#1a,#0e,#1a,#0e,#1a,#0e
	db #1a,#0e,#1a,#0e,#1a,#0e,#1a,#87
.l96ff
	db #10,#1c,#10,#1c,#10,#1c,#10,#1c
.l9708 equ $ + 1
	db #87,#0c,#18,#0c,#18,#0c,#18,#0c
.l9711 equ $ + 2
	db #18,#87,#88,#01,#01,#d0,#e1,#2f
	db #2f,#2d,#e3,#2f,#e1,#23,#24,#23
	db #e3,#2d,#2b,#e1,#2a,#e3,#28,#e1
	db #2a,#d3,#e0,#1e,#21,#e1,#26,#e0
	db #21,#26,#e1,#2a,#e0,#26,#2a,#e1
	db #2d,#e0,#2a,#2d,#e1,#32,#e0,#36
	db #34,#e1,#32,#e0,#34,#32,#e1,#30
	db #e0,#32,#30,#e1,#2f,#e0,#2d,#2b
.l9756 equ $ + 7
.l9753 equ $ + 4
	db #e1,#2a,#81,#87,#88,#01,#01,#8a
	db #d0,#e1,#2b,#2b,#2a,#e3,#2b,#e1
	db #26,#28,#26,#e3,#30,#2f,#e1,#2d
	db #e3,#2b,#e1,#2d,#d3,#e0,#21,#26
	db #e1,#2a,#e0,#26,#2a,#e1,#2d,#e0
	db #2a,#2d,#e1,#32,#e0,#2d,#32,#e1
	db #36,#e0,#39,#37,#e1,#36,#e0,#37
	db #36,#e1,#34,#e0,#36,#34,#e1,#32
.l9795 equ $ + 6
	db #e0,#30,#2f,#e1,#2d,#87,#d1,#e1
	db #2b,#2b,#2a,#e5,#2b,#e1,#1e,#e5
	db #1f,#e1,#2a,#e5,#2b,#e3,#2a,#e1
	db #2b,#2b,#2a,#e9,#28,#e1,#1f,#1f
	db #1e,#e9,#1c,#e1,#2b,#2b,#2a,#e5
	db #2b,#e1,#36,#e5,#37,#e1,#2a,#e5
	db #2b,#e3,#2d,#ff,#2d,#87
.l97c9 equ $ + 4
.l97c7 equ $ + 2
.l97c5
	dw l97cb,l97dd,l97ee
.l97cb
	db #8a,#88,#01,#01,#d1,#e3,#23,#e0
	db #1f,#1f,#e1,#23,#1f,#26,#eb,#d2
.l97dd equ $ + 2
	db #26,#8e,#8a,#88,#01,#01,#d1,#e3
	db #26,#e0,#23,#23,#e1,#26,#23,#2b
.l97ee equ $ + 3
	db #eb,#d2,#2a,#8a,#88,#01,#01,#d1
	db #e3,#2b,#e0,#26,#26,#e1,#2b,#26
	db #2f,#eb,#d2,#2d,#00,#00
;
.music_info
	db "11 A Side Soccer (1989)(Codemasters)(David Whittaker)",0
	db "Four Soccer Simulator",0

	read "music_end.asm"

