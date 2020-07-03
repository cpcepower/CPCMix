; Music of Road Blasters (1988)(US Gold)(David Whittaker)()
; Ripped by Megachur the 22/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ROADBLAS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #8000
FIRST_THEME				equ 0
LAST_THEME				equ 4

	read "music_header.asm"

;
.init_music		; a	= 0->4
;
	ld hl,l8642
	ld (hl),#00
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l8643
	add hl,bc
	ld a,(hl)
	ld (l80ca),a
	inc hl
	ld ix,l8067
	ld c,#21
	ld a,#03
.l801e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
	ld hl,l8524
	ld (ix+#09),l
	ld (ix+#0a),h
	ld (ix+#0b),l
	ld (ix+#0c),h
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
	jr nz,l801e
	ld (l836b),a
	dec a
	ld (l80cb),a
	ld (l8642),a
	ret
.l8067
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09
.l8088
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12
.l80a9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #24
.l80cb equ $ + 1
.l80ca
	db #00,#00
;
.play_music
;
	ld a,(l8642)
	and a
	ret z
.l80d2 equ $ + 1
	ld a,#00
	ld (l8121),a
	ld hl,l80ca
	ld a,(l80cb)
	add (hl)
	ld (l80cb),a
	jr nc,l80f9
	ld b,#00
	ld ix,l8067
	call l827e
	ld ix,l8088
	call l827e
	ld ix,l80a9
	call l827e
.l80f9
	ld ix,l8067
	call l8338
.l8102 equ $ + 2
	ld (l8449),hl
	ld (l8451),a
	ld ix,l8088
	call l8338
	ld (l844b),hl
	ld (l8452),a
	ld ix,l80a9
	call l8338
	ld (l844d),hl
	ld (l8453),a
.l8121 equ $ + 1
	ld a,#00
	ld (l844f),a
	ld hl,l8454
	ld d,#0b
.l812a
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
	jp p,l812a
	ret
.l814b
	ld de,#0b00
.l814e
	call l8158
	dec d
	jp p,l814e
	ld de,#073f
.l8158
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
.l8173
	;
	xor a
	ld (l8642),a
	ld (l8451),a
	ld (l8452),a
	ld (l8453),a
	jr l814b
	db #e2,#cc,#c5,#9a,#d2,#cd,#31,#b3
	db #ab,#70,#5a,#82,#d0,#26,#dd,#e2
	db #e7,#0a,#01,#1a,#13
	ld (l80ca),a
	jp l828c
	ld a,(de)
	ld (ix+#03),a
	ld l,a
	inc de
	ld a,(de)
	ld (ix+#04),a
	ld h,a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	jp l828c
	pop hl
	jp l8173
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
	jr nz,l81db
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l81db
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l828c
	ld a,(ix+#20)
	ld c,a
	and #07
	ld hl,l8414
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l828c
	ld a,(ix+#20)
	ld c,a
	and #38
	ld hl,l8414
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l828c
	ld hl,l8414
	ld a,(ix+#20)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l828c
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l828c
	ld a,(de)
	inc de
	ld (l836b),a
	jr l828c
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	ld (ix+#1d),#40
	jr l828c
	ld (ix+#1d),b
	jr l828c
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l828c
	set 1,(ix+#00)
	jr l828c
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l82bb
	res 5,(ix+#00)
	jr l82bb
	ld (ix+#1f),#ff
	jr l828c
	ld (ix+#1f),b
	jr l828c
.l827e
	dec (ix+#10)
	jr nz,l82d2
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l828c
	ld a,(de)
	inc de
	and a
	jp m,l82e3
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l829e
	ld (l80d2),a
.l829e
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
.l82bb
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l82d1
	ld (ix+#1f),#ff
.l82d1
	ret
.l82d2
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l82df
	inc (ix+#12)
	ret
.l82df
	dec (ix+#12)
	ret
.l82e3
	cp #b8
	jr c,l8330
	add #20
	jr c,l8311
	add #10
	jr c,l8318
	add #10
	jr nc,l8309
	ld c,a
	ld hl,l8516
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l828c
.l8309
	add #09
	ld (l80ca),a
	jp l828c
.l8311
	inc a
	ld (ix+#11),a
	jp l828c
.l8318
	ld hl,l8547
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
	jp l828c
.l8330
	ld hl,l8102
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l8338
	ld c,(ix+#00)
	bit 5,c
	jr z,l836a
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l8364
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l8364
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l8364
	ld a,(ix+#18)
	ld (ix+#13),a
.l836b equ $ + 1
.l836a
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l8384
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l8384
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l8456
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l83e5
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l83ae
	bit 0,c
	jr nz,l83cc
.l83ae
	bit 5,l
	jr nz,l83be
	sub (ix+#1b)
	jr nc,l83c9
	set 5,(ix+#1d)
	sub a
	jr l83c9
.l83be
	add (ix+#1b)
	cp b
	jr c,l83c9
	res 5,(ix+#1d)
	ld a,b
.l83c9
	ld (ix+#1c),a
.l83cc
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l83d7
	dec d
.l83d7
	add #a0
	jr c,l83e3
.l83db
	sla e
	rl d
	add #18
	jr nc,l83db
.l83e3
	add hl,de
	ex de,hl
.l83e5
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l8410
	ld b,(ix+#0e)
	djnz l840d
	ld c,(ix+#0d)
	bit 7,c
	jr z,l83fc
	dec b
.l83fc
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l8410
.l840d
	ld (ix+#0e),b
.l8410
	cpl
	and #03
.l8414 equ $ + 1
	ld a,#38
	jr nz,l8421
	ld a,(l80d2)
	xor #08
	ld (l8121),a
	ld a,#07
.l8421
	ld hl,l8450
	xor (hl)
	and (ix+#20)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l8444
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#20)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l8121),a
.l8444
	ex de,hl
	ld a,(ix+#13)
	ret
.l8450 equ $ + 7
.l844f equ $ + 6
.l844d equ $ + 4
.l844b equ $ + 2
.l8449
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l8454 equ $ + 3
.l8453 equ $ + 2
.l8452 equ $ + 1
.l8451
	db #0f,#0f,#0f,#00,#00
.l8456
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
.l8516
	db #0e,#0e,#10,#12,#13,#16,#18,#1a
.l8524 equ $ + 6
	db #1c,#1e,#1f,#20,#21,#22,#80,#00
	db #03,#87,#00,#04,#87,#00,#89,#00
	db #04,#07,#8c,#07,#0c,#8f,#07,#0c
	db #90,#03,#07,#8c,#04,#07,#8c,#00
	db #8c,#00,#83,#00,#84,#00,#85,#00
	db #87
.l8547
	dw l8560,l8569,l8570,l8582
	dw l85ac,l85b5,l85df,l85e8
	dw l8618,l861f,l8625,l8633
.l8560 equ $ + 1
	db #01,#0e,#0c,#0b,#0a,#08,#06,#05
.l8569 equ $ + 2
	db #86,#02,#0f,#0e,#0d,#0c,#0b,#86
.l8570 equ $ + 1
	db #01,#0f,#0f,#0e,#0c,#0d,#0c,#0a
	db #09,#0b,#0a,#08,#07,#09,#08,#06
.l8582 equ $ + 3
	db #05,#86,#01,#0f,#0e,#0c,#0b,#0a
	db #0d,#0c,#0b,#0a,#09,#0b,#0a,#09
	db #08,#07,#09,#08,#07,#06,#05,#07
	db #06,#05,#04,#03,#05,#04,#03,#02
	db #01,#04,#03,#02,#01,#03,#02,#01
.l85ac equ $ + 5
	db #02,#01,#00,#86,#01,#0f,#0f,#0e
.l85b5 equ $ + 6
	db #0d,#0c,#0b,#0a,#86,#02,#0f,#0e
	db #0d,#0c,#0b,#0d,#0c,#0b,#0a,#09
	db #0b,#0a,#09,#08,#07,#09,#08,#07
	db #06,#05,#07,#06,#05,#04,#03,#05
	db #04,#03,#02,#01,#04,#03,#02,#01
	db #03,#02,#01,#02,#01,#00,#86,#01
.l85df
	db #0d,#0e,#0e,#0d,#0c,#0b,#0a,#86
.l85e8 equ $ + 1
	db #02,#0a,#0b,#0c,#0d,#0e,#0f,#0f
	db #0e,#0e,#0e,#0e,#0d,#0d,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0a,#0a
	db #0a,#0a,#09,#09,#09,#09,#08,#08
	db #08,#08,#07,#07,#07,#07,#06,#06
	db #06,#06,#05,#04,#03,#02,#01,#86
.l8618 equ $ + 1
	db #01,#0f,#0f,#0e,#0d,#0c,#86,#01
.l8625 equ $ + 6
.l861f
	db #0f,#0e,#09,#01,#86,#01,#0e,#0d
	db #0c,#0b,#09,#08,#07,#06,#05,#04
.l8633 equ $ + 4
	db #03,#01,#86,#02,#0a,#0b,#0c,#0d
	db #0e,#0f,#0f,#0e,#0e,#0e,#0e,#0d
	db #0d,#0c,#86
.l8642
.music_end
	db #00
.l8643
	db #1c
	dw l866a,l8666,l866e
	db #9c
	dw l86fc,l86f2,l8700
	db #24
	dw l87e4,l87de,l87ea
	db #1e
	dw l893f,l8923,l895b
	db #4c
	dw l8b09,l8b05,l8b0d
.l866a equ $ + 4
.l8666
	dw l8672,#0000,l868a,#0000
.l866e
	dw l86bb,#0000
.l8672
	db #88,#01,#89,#8f,#87,#01,#01,#d4
	db #e0,#05,#05,#09,#0c,#05,#e1,#11
	db #0f,#0c,#0f,#e0,#0f,#0f,#11,#86
.l868a
	db #e0,#d0,#89,#83,#01,#01,#8c,#0c
	db #8a,#41,#27,#41,#89,#83,#01,#01
	db #8c,#0c,#8a,#41,#27,#41,#8c,#3f
	db #8a,#41,#27,#89,#83,#01,#01,#8c
	db #0c,#8a,#8c,#3f,#41,#89,#83,#01
	db #01,#8c,#0c,#83,#01,#01,#8c,#0c
.l86bb equ $ + 1
	db #86,#89,#c9,#87,#01,#01,#db,#ea
	db #15,#e4,#80,#e7,#15,#20,#25,#e3
	db #80,#e0,#d4,#c4,#25,#25,#25,#80
	db #db,#c9,#e7,#11,#21,#25,#e3,#80
	db #e0,#d4,#c4,#25,#25,#25,#80,#db
	db #c9,#ef,#20,#1a,#e7,#25,#e3,#80
	db #e0,#d4,#c4,#25,#25,#25
	db #80,#86
.l86f2
	dw l870a,l870a,l870a,l8737
.l8700 equ $ + 6
.l86fc equ $ + 2
	dw #0000,l8b2c,#0000,l876a
	dw l876a,l876a,l87a5,#0000
.l870a
	db #89,#d1,#87,#01,#01,#8f,#eb,#83
	db #50,#01,#0c,#83,#50,#01,#10,#83
	db #50,#01,#0c,#83,#50,#01,#13,#83
	db #50,#01,#0c,#83,#50,#01,#10,#83
	db #50,#01,#0c,#e5,#83,#50,#01,#13
.l8737 equ $ + 5
	db #83,#50,#01,#0e,#86,#eb,#83,#50
	db #01,#0c,#83,#50,#01,#10,#83,#50
	db #01,#0c,#83,#50,#01,#13,#83,#50
	db #01,#0c,#83,#50,#01,#10,#e3,#83
	db #50,#01,#13,#83,#50,#01,#10,#83
	db #50,#01,#0c,#83,#50,#01,#13,#83
	db #50,#01,#10,#83,#50,#01,#0c,#86
.l876a
	db #8a,#e2,#d0,#8c,#3f,#d9,#41,#41
	db #41,#d2,#8c,#27,#d9,#41,#41,#41
	db #d0,#8c,#3f,#d9,#41,#41,#41,#d2
	db #8c,#29,#d9,#41,#41,#41,#d0,#8c
	db #3f,#d9,#41,#41,#41,#d2,#8c,#27
	db #d9,#41,#41,#41,#d0,#8c,#3f,#d9
	db #41,#41,#41,#d2,#8c,#27,#d9,#41
.l87a5 equ $ + 3
	db #27,#27,#86,#d0,#8c,#3f,#d9,#41
	db #41,#41,#d2,#8c,#27,#d9,#41,#41
	db #41,#d0,#8c,#3f,#d9,#41,#41,#41
	db #d2,#8c,#29,#d9,#41,#41,#41,#d0
	db #8c,#3f,#d9,#41,#41,#41,#d2,#8c
	db #27,#d9,#41,#41,#41,#e3,#d0,#8c
	db #27,#8c,#26,#8c,#25,#8c,#27,#8c
	db #26,#8c,#25,#86
.l87e4 equ $ + 6
.l87e0 equ $ + 2
.l87de
	dw l87f0,l8806,#0000,l88a9
.l87ec equ $ + 6
.l87ea equ $ + 4
.l87e6
	dw l88b9,#0000,l88e7,l88f4
	dw #0000
.l87f0
	db #88,#01,#8f,#89,#87,#01,#01,#d2
	db #e0,#02,#04,#05,#07,#09,#0b,#92
.l8806 equ $ + 6
	db #34,#e1,#91
	dw l87e0
	db #86,#0c,#18
	db #8c,#0c,#18,#0c,#18,#8a,#8c,#3f
	db #89,#0c,#0c,#18,#8c,#0c,#18,#0c
	db #18,#8a,#8c,#27,#89,#0c,#0c,#18
	db #8c,#0c,#18,#0c,#18,#8a,#8c,#3f
	db #89,#0c,#0c,#18,#8c,#0c,#18,#0c
	db #18,#8a,#8c,#23,#89,#0c,#8c,#13
	db #13,#13,#8c,#11,#11,#11,#8c,#13
	db #13,#13,#8c,#11,#11,#11,#8c,#11
	db #11,#13,#17,#0c,#18,#8c,#0c,#18
	db #0c,#18,#8a,#8c,#3f,#89,#0c,#0c
	db #13,#8c,#13,#11,#11,#10,#8a,#8c
	db #3f,#89,#0e,#0c,#0c,#8c,#0c,#0c
	db #0c,#0c,#8a,#8c,#27,#89,#0c,#0c
	db #0c,#8c,#0c,#0c,#0c,#0c,#8a,#8c
	db #27,#89,#0c,#0c,#18,#8c,#0c,#18
	db #0c,#18,#8a,#8c,#23,#89,#0c,#0c
	db #18,#8c,#0c,#18,#0c,#18,#8a,#8c
	db #23,#89,#0c,#8c,#13,#13,#13,#8c
	db #11,#11,#11,#8c,#13,#13,#13,#8c
	db #11,#11,#11,#8c,#11,#11,#13,#17
.l88a9 equ $ + 1
	db #86,#89,#87,#01,#01,#d1,#e0,#0e
	db #10,#11,#13,#15,#17,#91
	dw l87e6
.l88b9 equ $ + 1
	db #86,#d6,#87,#01,#02,#f7,#24,#e3
	db #29,#28,#f7,#24,#e3,#29,#28,#e5
	db #2b,#29,#2b,#29,#e3,#29,#28,#f7
	db #24,#e3,#29,#28,#f7,#24,#e3,#29
	db #28,#f7,#24,#e3,#29,#28,#e5,#2b
.l88e7 equ $ + 7
	db #29,#2b,#29,#e3,#29,#28,#86,#8a
	db #d0,#e0,#41,#41,#41,#41,#41,#41
.l88f4 equ $ + 4
	db #91
	dw l87ec
	db #86,#89,#d6,#87,#01
	db #02,#f7,#28,#e3,#2d,#2b,#f7,#28
	db #e3,#2d,#2b,#e5,#2f,#2d,#2f,#2d
	db #e3,#2d,#2b,#f7,#28,#e3,#2d,#2b
	db #f7,#28,#e3,#2d,#2b,#f7,#28,#e3
	db #2d,#2b,#e5,#2f,#2d,#2f,#2d,#e3
	db #2d,#2b,#86
.l8923
	dw l897d,l897d,l897d,l897d
	dw l897d,l897d,l8996,l89be
	dw l89be,l8a0f,l8a0f,l8a28
	dw l8a28,#0000
.l893f
	dw l8a41,l8a41
	dw l8a53,l8a53,l8a41,l8a41
	dw l8a53,l8a53,l8a61,l8a76
	dw l8a76,l8a8b,l8a8b,#0000
.l895b
	dw l8a9c,l8a9c,l8aaf,l8aaf
	dw l8a9c,l8a9c,l8aaf,l8aaf
	dw l8abc,l8abc,l8acf,l8acf
	dw l8ade,l8ade,l8af4,l8af4
	dw #0000
.l897d
	db #88,#ff,#81,#90,#8a,#e0,#d0,#8c
	db #3f,#d9,#41,#d0,#8c,#3f,#d9,#41
	db #e1,#d0,#8c,#3f,#e0,#8c,#3f,#27
.l8996 equ $ + 1
	db #86,#8a,#e0,#d9,#27,#27,#d0,#8c
	db #3f,#d9,#27,#e1,#d0,#8c,#27,#e0
	db #8c,#27,#d9,#41,#27,#27,#d0,#8c
	db #3f,#d9,#27,#d2,#8c,#27,#89,#87
	db #01,#01,#d2,#8f,#07,#8c,#09,#0b
.l89be equ $ + 1
	db #86,#0c,#0c,#8c,#0c,#0c,#0c,#0c
	db #8c,#0c,#0c,#0c,#0c,#8c,#0c,#0c
	db #0c,#07,#8c,#09,#0b,#0c,#0c,#8c
	db #0c,#0c,#0c,#0c,#8c,#0c,#0c,#0c
	db #0c,#8c,#0c,#0c,#0c,#07,#8c,#09
	db #0b,#0a,#0a,#8c,#0a,#0a,#0a,#0a
	db #8c,#0a,#0a,#0a,#0a,#8c,#0a,#0a
	db #0a,#05,#8c,#07,#09,#0a,#0a,#8c
	db #0a,#0a,#0a,#0a,#8c,#0a,#0a,#0a
	db #0a,#8c,#0a,#0a,#0a,#05,#8c,#07
.l8a0f equ $ + 2
	db #09,#86,#8c,#11,#11,#8c,#11,#11
	db #8c,#13,#13,#13,#13,#8c,#15,#15
	db #8c,#15,#15,#8c,#16,#16,#8c,#16
.l8a28 equ $ + 3
	db #8c,#18,#86,#8c,#0f,#0f,#8c,#0f
	db #0f,#8c,#11,#11,#11,#11,#8c,#13
	db #13,#8c,#13,#13,#8c,#15,#15,#8c
.l8a41 equ $ + 4
	db #15,#8c,#16,#86,#89,#87,#01,#02
	db #e0,#80,#d6,#e1,#24,#e0,#80,#e6
.l8a53 equ $ + 6
	db #24,#e3,#24,#e0,#80,#86,#e0,#80
	db #d6,#e1,#22,#e0,#80,#e6,#22,#e3
.l8a61 equ $ + 4
	db #22,#e0,#80,#86,#87,#01,#02,#d8
	db #ed,#2d,#e1,#2b,#e5,#30,#e1,#2d
	db #e3,#32,#e2,#30,#ff,#2e,#e0,#8e
.l8a76 equ $ + 1
	db #86,#e0,#80,#87,#01,#02,#d6,#e1
	db #24,#e0,#80,#e3,#24,#e1,#24,#e0
.l8a8b equ $ + 6
	db #80,#e3,#24,#e0,#80,#86,#e0,#80
	db #e1,#22,#e0,#80,#e3,#22,#e1,#22
.l8a9c equ $ + 7
	db #e0,#80,#e3,#22,#e0,#80,#86,#89
	db #c0,#87,#01,#02,#e0,#80,#d6,#e1
	db #2d,#e0,#80,#e6,#2d,#e3,#2b,#e0
.l8aaf equ $ + 2
	db #80,#86,#e0,#80,#e1,#2b,#e0,#80
.l8abc equ $ + 7
	db #e6,#2b,#e3,#29,#e0,#80,#86,#e0
	db #80,#87,#01,#01,#d6,#c3,#e1,#24
	db #e0,#80,#e6,#24,#cd,#e3,#24,#e0
.l8acf equ $ + 2
	db #80,#86,#e0,#80,#c3,#e1,#22,#e0
	db #80,#e6,#22,#cd,#e3,#22,#e0,#80
.l8ade equ $ + 1
	db #86,#e0,#80,#c0,#87,#01,#02,#d4
	db #e1,#2d,#e0,#80,#e3,#2d,#e1,#2d
.l8af4 equ $ + 7
	db #e0,#80,#e3,#2d,#e0,#80,#86,#e0
	db #80,#e1,#2b,#e0,#80,#e3,#2b,#e1
	db #2b,#e0,#80,#e3,#2b,#e0,#80,#86
.l8b05
	dw l8b11,#0000
.l8b09
	dw l8b1a,#0000
.l8b0d
	dw l8b23,#0000
.l8b11
	db #88,#01,#89,#d2,#e2,#3a,#ed,#30
.l8b1a
	db #e0,#80,#89,#d2,#e2,#37,#ec,#3c
.l8b23
	db #e1,#80,#89,#d2,#e1,#34,#eb,#48
	db #8d
.l8b2c
	db #ff,#80,#86
;
.music_info
	db "Road Blasters (1988)(US Gold)(David Whittaker)",0
	db "",0

	read "music_end.asm"
