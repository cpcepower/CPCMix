; Music of Dynamic Duo (1988)(Firebird)(David Whittaker)()
; Ripped by Megachur the 18/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DYNAMICD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #6ea3
FIRST_THEME				equ 0
LAST_THEME				equ 4

	read "music_header.asm"
;
.init_music
;
	push af
	call l70c2
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l7b3c
	add hl,bc
	ld a,(hl)
	ld (l6fb2),a
	ld (l7698),a
	inc hl
	ld ix,l6f10
	ld c,#22
	ld a,#03
.l6ec4
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
	ld (ix+#20),b
	ld hl,l74b4
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
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
	jr nz,l6ec4
	ld (l72ea),a
	dec a
	ld (l7699),a
	ld (l7694),a
	ret
.l6f10
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l6f32
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l6f54
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music	;6f76
;
	ld a,(l7694)
	ld hl,l7695
	or (hl)
	inc hl
	or (hl)
	inc hl
	or (hl)
	ret z
	call l77a5
	ld a,(l7694)
	and a
	jr z,l6fe2
.l6f8c equ $ + 1
	ld a,#00
	ld (l6fde),a
	ld a,(l6fb2)
	ld hl,l7699
	add (hl)
	ld (hl),a
	jr nc,l6fb6
	ld b,#00
	ld ix,l6f10
	call l71e0
	ld ix,l6f32
	call l71e0
	ld ix,l6f54
	call l71e0
.l6fb2 equ $ + 1
	ld a,#01
	ld (l7699),a
.l6fb6
	ld ix,l6f10
	call l72b7
	ld (l73cb),hl
	ld (l73d3),a
	ld ix,l6f32
	call l72b7
	ld (l73cd),hl
	ld (l73d4),a
	ld ix,l6f54
	call l72b7
	ld (l73cf),hl
	ld (l73d5),a
.l6fde equ $ + 1
	ld a,#00
	ld (l73d1),a
.l6fe2
	ld a,(l7694)
	and a
	jr nz,l6ff6
	ld (l73d3),a
	ld (l73d4),a
	ld (l73d5),a
	ld a,#3f
	ld (l73d2),a
.l6ff6
	ld a,(l7695)
	and a
	jr z,l701e
	ld hl,(l73d8)
	ld (l73cb),hl
	ld a,(l7ad9)
	ld b,a
	bit 3,a
	jr nz,l7010
	ld a,(l73de)
	ld (l73d1),a
.l7010
	ld hl,l73d2
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l73e0)
	ld (l73d3),a
.l701e
	ld a,(l7696)
	and a
	jr z,l7048
	ld hl,(l73da)
	ld (l73cd),hl
	ld a,(l7aec)
	ld b,a
	bit 3,a
	jr nz,l7038
	ld a,(l73de)
	ld (l73d1),a
.l7038
	ld hl,l73d2
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(l73e1)
	ld (l73d4),a
.l7048
	ld a,(l7697)
	and a
	jr z,l7074
	ld hl,(l73dc)
	ld (l73cf),hl
	ld a,(l7aff)
.l7057
	ld b,a
	bit 3,a
	jr nz,l7062
	ld a,(l73de)
	ld (l73d1),a
.l7062
	ld hl,l73d2
	ld a,(hl)
	or #24
	rlc b
	rlc b
	and b
	ld (hl),a
	ld a,(l73e2)
	ld (l73d5),a
.l7074
	ld hl,l73d5
	ld d,#0a
.l7079
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
	jp p,l7079
	ret
.l709a
	ld de,#0a00
.l709d
	call l70a7
	dec d
	jp p,l709d
	ld de,#073f
.l70a7
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
.l70c2
;
	xor a
	ld (l7694),a
	call l7b12
	call l709a
	xor a
	ld (l73d3),a
	ld (l73d4),a
	ld (l73d5),a
	ret
	db #f3
	db #db
	db #df
	db #e4
	db #9b
	db #d1
	db #cc
	db #32
	db #bb
	db #ac
	db #71
	db #5b
	db #83
	db #e0
	db #27
	db #ed
	db #ee
	db #f3
	db #aa
	db #0a
	db #01
	ld a,(de)
	inc de
	ld (l6fb2),a
	jp l71ee
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
	jp l71ee
	pop hl
	jp l70c2
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
	jr nz,l7132
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l7132
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l71ee
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,l7396
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l71ee
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,l7396
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l71ee
	ld hl,l7396
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l71ee
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l71ee
	ld a,(de)
	inc de
	ld (l72ea),a
	jr l71ee
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr l71ee
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l71ee
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l71ee
	ld (ix+#1d),b
	jr l71ee
	ld (ix+#1d),#40
	jr l71ee
	ld (ix+#1d),#c0
	jr l71ee
	set 1,(ix+#00)
	jr l71ee
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l721d
	jr l7219
	ld (ix+#1f),#ff
	jr l71ee
	ld (ix+#1f),b
	jr l71ee
.l71e0
	dec (ix+#10)
	jr nz,l725b
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l71ee
	ld a,(de)
	inc de
	and a
	jp m,l726c
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l7200
	ld (l6f8c),a
.l7200
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.l7219
	set 5,(ix+#00)
.l721d
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l725a
	ld a,(l7695)
	and a
	jr z,l723c
	ld a,(l7ad9)
	bit 3,a
	jr z,l725a
.l723c
	ld a,(l7696)
	and a
	jr z,l7249
	ld a,(l7aec)
	bit 3,a
	jr z,l725a
.l7249
	ld a,(l7697)
	and a
	jr z,l7256
	ld a,(l7aff)
	bit 3,a
	jr z,l725a
.l7256
	ld (ix+#1f),#ff
.l725a
	ret
.l725b
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l7268
	inc (ix+#12)
	ret
.l7268
	dec (ix+#12)
	ret
.l726c
	cp #c0
	jr c,l72af
	add #20
	jr c,l7290
	add #10
	jr c,l7297
	add #10
	ld c,a
	ld hl,l74a4
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l71ee
.l7290
	inc a
	ld (ix+#11),a
	jp l71ee
.l7297
	ld hl,l74e6
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
	jp l71ee
.l72af
	ld hl,l7057
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l72b7
	ld c,(ix+#00)
	bit 5,c
	jr z,l72e9
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l72e3
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l72e3
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l72e3
	ld a,(ix+#18)
	ld (ix+#13),a
.l72ea equ $ + 1
.l72e9
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l7306
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l7306
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l73e4
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l7367
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l7330
	bit 0,c
	jr nz,l734e
.l7330
	bit 5,l
	jr nz,l7340
	sub (ix+#1b)
	jr nc,l734b
	set 5,(ix+#1d)
	sub a
	jr l734b
.l7340
	add (ix+#1b)
	cp b
	jr c,l734b
	res 5,(ix+#1d)
	ld a,b
.l734b
	ld (ix+#1c),a
.l734e
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l7359
	dec d
.l7359
	add #a0
	jr c,l7365
.l735d
	sla e
	rl d
	add #18
	jr nc,l735d
.l7365
	add hl,de
	ex de,hl
.l7367
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l7392
	ld b,(ix+#0e)
	djnz l738f
	ld c,(ix+#0d)
	bit 7,c
	jr z,l737e
	dec b
.l737e
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l7392
.l738f
	ld (ix+#0e),b
.l7392
	cpl
	and #03
.l7396 equ $ + 1
	ld a,#38
	jr nz,l73a3
	ld a,(l6f8c)
	xor #08
	ld (l6fde),a
	ld a,#07
.l73a3
	ld hl,l73d2
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l73c6
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l6fde),a
.l73c6
	ex de,hl
	ld a,(ix+#13)
	ret
.l73cb
	db #00,#00
.l73cd
	db #00,#00
.l73cf
	db #00,#00
.l73d1
	db #00
.l73d2
	db #3f
.l73da equ $ + 7
.l73d9 equ $ + 6
.l73d8 equ $ + 5
.l73d5 equ $ + 2
.l73d4 equ $ + 1
.l73d3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l73e2 equ $ + 7
.l73e1 equ $ + 6
.l73e0 equ $ + 5
.l73de equ $ + 3
.l73dd equ $ + 2
.l73dc equ $ + 1
.l73db
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l73e4
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
.l74a4
	db #10,#10,#12,#14,#17,#1a,#1c,#1e
	db #20,#22,#23,#26,#29,#2b,#2c,#2f
.l74b4
	db #80,#00,#03,#87,#00,#04,#87,#00
	db #03,#07,#8c,#00,#04,#07,#8c,#07
	db #0c,#8f,#07,#0c,#90,#03,#07,#8c
	db #04,#07,#8c,#00,#8c,#00,#03,#07
	db #8a,#00,#03,#07,#89,#00,#05,#8a
	db #05,#80,#00,#00,#00,#8c,#00,#0c
	db #18,#a4
.l74e6
	dw l7503,l7508,l7511,l7523
	dw l754d,l7553,l757d,l7580
	dw l75a9,l75b5,l75c2,l75ce
	dw l75df,l75e7
.l7508 equ $ + 6
.l7503 equ $ + 1
	db #01,#0e,#0d,#05,#87,#03,#0f,#0e
.l7511 equ $ + 7
	db #0d,#0c,#0b,#0a,#09,#87,#01,#0f
	db #0e,#0c,#0b,#0d,#0c,#0a,#09,#0b
	db #0a,#08,#07,#09,#08,#06,#05,#87
.l7523 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#0d,#0c
	db #0b,#0a,#09,#0b,#0a,#09,#08,#07
	db #09,#08,#07,#06,#05,#07,#06,#05
	db #04,#03,#05,#04,#03,#02,#01,#04
	db #03,#02,#01,#03,#02,#01,#02,#01
.l754d equ $ + 3
	db #00,#87,#0a,#0f,#0e,#0d,#0c,#87
.l7553 equ $ + 1
	db #02,#0f,#0e,#0d,#0c,#0b,#0d,#0c
	db #0b,#0a,#09,#0b,#0a,#09,#08,#07
	db #09,#08,#07,#06,#05,#07,#06,#05
	db #04,#03,#05,#04,#03,#02,#01,#04
	db #03,#02,#01,#03,#02,#01,#02,#01
.l7580 equ $ + 6
.l757d equ $ + 3
	db #00,#87,#ff,#0c,#87,#08,#04,#06
	db #07,#08,#09,#0a,#0b,#0c,#0d,#0e
	db #0f,#0f,#0e,#0e,#0e,#0e,#0d,#0d
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#09,#09,#09,#09
.l75a9 equ $ + 7
	db #08,#08,#08,#07,#06,#87,#01,#0c
	db #0b,#0a,#09,#08,#07,#09,#08,#07
.l75b5 equ $ + 3
	db #06,#87,#01,#0d,#0c,#0b,#0a,#09
	db #08,#0a,#09,#08,#07,#87,#01,#01
.l75c2
	db #0e,#0d,#0c,#0b,#0a,#09,#0b,#0a
.l75ce equ $ + 4
	db #09,#08,#87,#02,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l75df equ $ + 5
	db #03,#02,#01,#87,#03,#0d,#0c,#0b
.l75e7 equ $ + 5
	db #0a,#09,#08,#87,#04,#04,#06,#07
	db #08,#09,#0a,#0b,#0c,#0d,#0e,#0f
	db #0f,#0e,#0e,#0e,#0e,#0d,#0d,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#09,#09,#09,#09,#08
	db #08,#08,#07,#06,#87
.l760f
	dw l761d,l762d,l7646,l7648
	dw l765e,l7683,l7692
.l761d
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.l762d
	db #06,#08,#0a,#0b,#0c,#0d,#0e,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.l7648 equ $ + 3
.l7646 equ $ + 1
	db #ff,#0e,#80,#07,#08,#09,#09,#08
	db #07,#08,#09,#0a,#09,#08,#08,#07
	db #07,#08,#07,#08,#07,#08,#07,#07
.l765e equ $ + 1
	db #80,#0f,#0e,#0d,#0c,#0b,#0d,#0c
	db #0b,#0a,#09,#0b,#0a,#09,#08,#07
	db #09,#08,#07,#06,#05,#07,#06,#05
	db #04,#03,#05,#04,#03,#02,#01,#03
.l7683 equ $ + 6
	db #02,#01,#02,#01,#00,#ff,#0a,#0c
	db #0e,#0f,#0e,#0d,#0c,#0b,#0a,#09
.l7694 equ $ + 7
.music_end equ $ + 7
.l7692 equ $ + 5
	db #08,#07,#06,#05,#ff,#0b,#80,#00
.l7699 equ $ + 4
.l7698 equ $ + 3
.l7697 equ $ + 2
.l7696 equ $ + 1
.l7695
	db #00,#00,#00,#00,#00
; sound effects 769a
	ld hl,l76a3
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l76a3
	inc bc
	ld d,a
	xor e
	ld hl,l7695
	ld (hl),#00
	ld hl,l79a7
	add a
	add l
	ld l,a
	jr nc,l76b4
	inc h
.l76b4
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0d
	ld hl,l7ad3
.l76bc
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l76bc
	ld a,(l7ad4)
	ld (l7ae0),a
	ld hl,(l7ad5)
	ld (l73d8),hl
	ld a,(l7ad9)
	bit 3,a
	jr nz,l76d9
	ld a,l
	ld (l73de),a
.l76d9
	ld a,(l7ade)
	ld (l7ae1),a
	ld a,(l7add)
	ld hl,l760f
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l7ae2),hl
	ld (l7ae4),hl
	ld a,(hl)
	ld (l73e0),a
	ld hl,l7695
	inc (hl)
	ret
	ld hl,l7696
	ld (hl),#00
	ld hl,l79a7
	add a
	add l
	ld l,a
	jr nc,l7709
	inc h
.l7709
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0d
	ld hl,l7ae6
.l7711
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l7711
	ld a,(l7ae7)
	ld (l7af3),a
	ld hl,(l7ae8)
	ld (l73da),hl
	ld a,(l7aec)
	bit 3,a
	jr nz,l772e
	ld a,l
	ld (l73de),a
.l772e
	ld a,(l7af1)
	ld (l7af4),a
	ld a,(l7af0)
	ld hl,l760f
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l7af5),hl
	ld (l7af7),hl
	ld a,(hl)
	ld (l73e1),a
	ld hl,l7696
	inc (hl)
	ret
	ld hl,l7697
	ld (hl),#00
	ld hl,l79a7
	add a
	add l
	ld l,a
	jr nc,l775e
	inc h
.l775e
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0d
	ld hl,l7af9
.l7766
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l7766
	ld a,(l7afa)
	ld (l7b06),a
	ld hl,(l7afb)
	ld (l73dc),hl
	ld a,(l7aff)
	bit 3,a
	jr nz,l7783
	ld a,l
	ld (l73de),a
.l7783
	ld a,(l7b04)
	ld (l7b07),a
	ld a,(l7b03)
	ld hl,l760f
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l7b08),hl
	ld (l7b0a),hl
	ld a,(hl)
	ld (l73e2),a
	ld hl,l7697
	inc (hl)
	ret
.l77a5
	call l7b1d
	ld a,(l7695)
	and a
	call nz,l785f
	ld a,(l7696)
	and a
	call nz,l7903
	ld a,(l7697)
	and a
	ret z
	ld a,(l7af9)
	and a
	jr nz,l77cb
	ld a,(l7b05)
	and a
	jr nz,l77cb
	ld (l7697),a
	ret
.l77cb
	dec a
	ld (l7af9),a
	ld a,(l7b06)
	and a
	jr nz,l7803
	ld a,(l7b05)
	and a
	jr nz,l77e1
	ld a,(l7b02)
	and a
	jr z,l7837
.l77e1
	dec a
	ld (l7b02),a
	ld a,(l7afa)
	ld (l7b06),a
	ld a,(l7b00)
	and a
	jr z,l77f4
	ld a,(l7b3a)
.l77f4
	ld b,a
	ld a,(l7afb)
	add b
	ld (l73dc),a
	ld a,(l7afc)
	add b
	ld (l73dd),a
.l7803
	ld hl,l7b06
	dec (hl)
	ld a,(l7b01)
	and a
	jr z,l782a
	jp p,l781d
	ld hl,(l73dc)
	ld de,(l7afd)
	add hl,de
	ld (l73dc),hl
	jr l782a
.l781d
	ld hl,(l73dc)
	ld de,(l7afd)
	and a
	sbc hl,de
	ld (l73dc),hl
.l782a
	ld a,(l7aff)
	bit 3,a
	jr nz,l7837
	ld a,(l73dc)
	ld (l73de),a
.l7837
	ld a,(l7b07)
	dec a
	ld (l7b07),a
	jr nz,l785e
	ld a,(l7b04)
	ld (l7b07),a
	ld hl,(l7b0a)
	ld a,(hl)
	inc hl
	and a
	jp p,l7858
	cp #80
	jr nz,l785e
	ld hl,(l7b08)
	ld a,(hl)
	inc hl
.l7858
	ld (l7b0a),hl
	ld (l73e2),a
.l785e
	ret
.l785f
	ld a,(l7ad3)
	and a
	jr nz,l786f
	ld a,(l7adf)
	and a
	jr nz,l786f
	ld (l7695),a
	ret
.l786f
	dec a
	ld (l7ad3),a
	ld a,(l7ae0)
	and a
	jr nz,l78a7
	ld a,(l7adf)
	and a
	jr nz,l7885
	ld a,(l7adc)
	and a
	jr z,l78db
.l7885
	dec a
	ld (l7adc),a
	ld a,(l7ad4)
	ld (l7ae0),a
	ld a,(l7ada)
	and a
	jr z,l7898
	ld a,(l7b38)
.l7898
	ld b,a
	ld a,(l7ad5)
	add b
	ld (l73d8),a
	ld a,(l7ad6)
	add b
	ld (l73d9),a
.l78a7
	ld hl,l7ae0
	dec (hl)
	ld a,(l7adb)
	and a
	jr z,l78ce
	jp p,l78c1
	ld hl,(l73d8)
	ld de,(l7ad7)
	add hl,de
	ld (l73d8),hl
	jr l78ce
.l78c1
	ld hl,(l73d8)
	ld de,(l7ad7)
	and a
	sbc hl,de
	ld (l73d8),hl
.l78ce
	ld a,(l7ad9)
	bit 3,a
	jr nz,l78db
	ld a,(l73d8)
	ld (l73de),a
.l78db
	ld a,(l7ae1)
	dec a
	ld (l7ae1),a
	jr nz,l7902
	ld a,(l7ade)
	ld (l7ae1),a
	ld hl,(l7ae4)
	ld a,(hl)
	inc hl
	and a
	jp p,l78fc
	cp #80
	jr nz,l7902
	ld hl,(l7ae2)
	ld a,(hl)
	inc hl
.l78fc
	ld (l7ae4),hl
	ld (l73e0),a
.l7902
	ret
.l7903
	ld a,(l7ae6)
	and a
	jr nz,l7913
	ld a,(l7af2)
	and a
	jr nz,l7913
	ld (l7696),a
	ret
.l7913
	dec a
	ld (l7ae6),a
	ld a,(l7af3)
	and a
	jr nz,l794b
	ld a,(l7af2)
	and a
	jr nz,l7929
	ld a,(l7aef)
	and a
	jr z,l797f
.l7929
	dec a
	ld (l7aef),a
	ld a,(l7ae7)
	ld (l7af3),a
	ld a,(l7aed)
	and a
	jr z,l793c
	ld a,(l7b39)
.l793c
	ld b,a
	ld a,(l7ae8)
	add b
	ld (l73da),a
	ld a,(l7ae9)
	add b
	ld (l73db),a
.l794b
	ld hl,l7af3
	dec (hl)
	ld a,(l7aee)
	and a
	jr z,l7972
	jp p,l7965
	ld hl,(l73da)
	ld de,(l7aea)
	add hl,de
	ld (l73da),hl
	jr l7972
.l7965
	ld hl,(l73da)
	ld de,(l7aea)
	and a
	sbc hl,de
	ld (l73da),hl
.l7972
	ld a,(l7aec)
	bit 3,a
	jr nz,l797f
	ld a,(l73da)
	ld (l73de),a
.l797f
	ld a,(l7af4)
	dec a
	ld (l7af4),a
	jr nz,l79a6
	ld a,(l7af1)
	ld (l7af4),a
	ld hl,(l7af7)
	ld a,(hl)
	inc hl
	and a
	jp p,l79a0
	cp #80
	jr nz,l79a6
	ld hl,(l7af5)
	ld a,(hl)
	inc hl
.l79a0
	ld (l7af7),hl
	ld (l73e1),a
.l79a6
	ret
.l79a7
	dw l79cf,l79dc,l79e9,l79f6
	dw l7a03,l7a10,l7a1d,l7a2a
	dw l7a37,l7a44,l7a51,l7a5e
	dw l7a6b,l7a78,l7a85,l7a92
	dw l7a9f,l7aac,l7ab9,l7ac6
.l79cf
	db #50,#13,#40,#01,#0b,#00,#fe,#00
.l79dc equ $ + 5
	db #01,#14,#00,#0a,#00,#14,#63,#60
	db #00,#18,#00,#f6,#00,#ff,#ff,#00
.l79e9 equ $ + 2
	db #02,#00,#14,#03,#81,#00,#24,#00
.l79f6 equ $ + 7
	db #f7,#01,#ff,#ff,#00,#02,#00,#28
	db #63,#c7,#00,#10,#00,#f6,#00,#ff
.l7a03 equ $ + 4
	db #63,#05,#03,#00,#28,#1f,#0f,#00
	db #00,#00,#f7,#00,#01,#00,#05,#03
.l7a10 equ $ + 1
	db #00,#64,#0a,#02,#00,#03,#00,#f6
.l7a1d equ $ + 6
	db #01,#ff,#0a,#00,#07,#00,#3c,#02
	db #38,#00,#00,#00,#fe,#00,#ff,#63
.l7a2a equ $ + 3
	db #04,#02,#00,#32,#05,#00,#05,#20
	db #00,#fe,#00,#01,#ff,#00,#08,#00
.l7a37
	db #14,#03,#0f,#00,#04,#00,#f6,#01
.l7a44 equ $ + 5
	db #01,#63,#00,#02,#00,#0f,#06,#01
	db #02,#c8,#00,#f6,#00,#ff,#ff,#05
.l7a51 equ $ + 2
	db #01,#00,#3c,#01,#08,#00,#02,#00
.l7a5e equ $ + 7
	db #f7,#00,#01,#63,#02,#ff,#00,#12
	db #06,#88,#00,#11,#00,#f6,#00,#ff
.l7a6b equ $ + 4
	db #0a,#00,#03,#00,#0f,#63,#07,#00
	db #00,#00,#f7,#00,#01,#63,#01,#01
.l7a78 equ $ + 1
	db #00,#14,#02,#30,#00,#00,#00,#fe
.l7a85 equ $ + 6
	db #00,#ff,#63,#04,#01,#00,#14,#02
	db #29,#00,#00,#00,#fe,#00,#ff,#63
.l7a92 equ $ + 3
	db #04,#01,#00,#14,#02,#23,#00,#00
	db #00,#fe,#00,#ff,#63,#04,#01,#00
.l7a9f
	db #14,#02,#1e,#00,#00,#00,#fe,#00
.l7aac equ $ + 5
	db #ff,#63,#04,#01,#00,#19,#1f,#20
	db #00,#02,#00,#f7,#00,#01,#ff,#01
.l7ab9 equ $ + 2
	db #01,#00,#14,#06,#11,#02,#cc,#00
.l7ac6 equ $ + 7
	db #fe,#00,#ff,#ff,#00,#05,#00,#3c
	db #04,#80,#00,#06,#00,#fe,#00,#01
.l7ad6 equ $ + 7
.l7ad5 equ $ + 6
.l7ad4 equ $ + 5
.l7ad3 equ $ + 4
	db #ff,#00,#05,#00,#00,#00,#00,#00
.l7ade equ $ + 7
.l7add equ $ + 6
.l7adc equ $ + 5
.l7adb equ $ + 4
.l7ada equ $ + 3
.l7ad9 equ $ + 2
.l7ad7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7ae6 equ $ + 7
.l7ae4 equ $ + 5
.l7ae2 equ $ + 3
.l7ae1 equ $ + 2
.l7ae0 equ $ + 1
.l7adf
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7aee equ $ + 7
.l7aed equ $ + 6
.l7aec equ $ + 5
.l7aea equ $ + 3
.l7ae9 equ $ + 2
.l7ae8 equ $ + 1
.l7ae7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7af5 equ $ + 6
.l7af4 equ $ + 5
.l7af3 equ $ + 4
.l7af2 equ $ + 3
.l7af1 equ $ + 2
.l7af0 equ $ + 1
.l7aef
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7afd equ $ + 6
.l7afc equ $ + 5
.l7afb equ $ + 4
.l7afa equ $ + 3
.l7af9 equ $ + 2
.l7af7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7b06 equ $ + 7
.l7b05 equ $ + 6
.l7b04 equ $ + 5
.l7b03 equ $ + 4
.l7b02 equ $ + 3
.l7b01 equ $ + 2
.l7b00 equ $ + 1
.l7aff
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7b0a equ $ + 3
.l7b08 equ $ + 1
.l7b07
	db #00,#00,#00,#00,#00
	call l7b12
	jp l709a
.l7b12
	xor a
	ld (l7695),a
	ld (l7696),a
	ld (l7697),a
	ret
.l7b1d
	ld a,(l7b38)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l7b3b
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l7b3b equ $ + 3
.l7b3a equ $ + 2
.l7b39 equ $ + 1
.l7b38
	db #ff,#80,#1b,#34
.l7b3c
	db #2b
	dw l7b5f,l7bb3,l7be3
	db #2b
	dw l7ea4,l7ea6,l7ea8
	db #ff
	dw l7ec0,l7ee0,l7ef4
	db #24
	dw l7f75,l7f79,l7f7d
	db #55
	dw l7fb5,l7fb7,l7fb9
.l7b5f
	dw l7fed,l7c11,l7c11,l7c11
	dw l7c11,l7c11,l7c11,l7c11
	dw l7c3e,l7c11,l7c11,l7c11
	dw l7c3e,l7c63,l7c3e,l7c11
	dw l7c11,l7c11,l7c11,l7c11
	dw l7c11,l7c11,l7c11,l7c88
	dw l7ff0,l7c88,l7ff3,l7c88
	dw l7ff6,l7c88,l7fed,l7c63
	dw l7caf,l7c63,l7caf,l7fe4
	dw l7c63,l7caf,l7c63,l7caf
	dw l7fed,#0000
.l7bb3
	dw l7cd4,l7cd4,l7cd4,l7cd4
	dw l7d03,l7d03,l7d11,l7d2e
	dw l7d2e,l7d2e,l7d2e,l7d2e
	dw l7d2e,l7d2e,l7d2e,l7d1b
	dw l7d1b,l7d1b,l7d1b,l7d25
	dw l7d25,l7d25,l7d25,#0000
.l7be3
	dw l7d2e,l7d2e,l7d57,l7da1
	dw l7da1,l7dd6,l7dd6,l7e08
	dw l7e08,l7e30,l7d2e,l7d2e
	dw l7e49,l7e49,l7e58,l7e58
	dw l7e58,l7e58,l7e7d,l7e7d
	dw l7e7d,l7e7d,#0000
.l7c11
	db #8a,#90,#88,#01,#01,#82,#d2,#e0
	db #0c,#0c,#18,#18,#8d,#0c,#0c,#18
	db #18,#0c,#0c,#18,#18,#8d,#0c,#18
	db #18,#18,#0c,#0c,#18,#18,#8d,#0c
	db #0c,#18,#18,#0c,#0c,#18,#18,#8d
	db #0b,#0b,#17,#17,#87
.l7c3e
	db #13,#13,#1f,#1f,#8d,#13,#13,#1f
	db #1f,#13,#13,#1f,#1f,#8d,#13,#1f
	db #1f,#1f,#13,#13,#1f,#1f,#8d,#13
	db #13,#1f,#1f,#13,#13,#1f,#1f,#8d
	db #0b,#0b,#17,#17,#87
.l7c63
	db #14,#14,#20,#20,#8d,#14,#14,#20
	db #20,#14,#14,#20,#20,#8d,#14,#20
	db #20,#20,#14,#14,#20,#20,#8d,#14
	db #14,#20,#20,#14,#14,#20
	db #20,#8d,#14,#14,#20,#2c,#87
.l7c88
	db #0e,#0e,#0d,#0d,#8d,#0e,#0e,#0d
	db #0d,#0e,#0e,#0d,#0d,#8d,#0e,#0e
	db #8d,#0d,#0d,#0e,#0e,#0d,#0d,#8d
	db #0e,#0e,#0d,#0d,#0e,#0e,#0d,#0d
	db #8d,#0e,#0e,#8d,#0d,#0d,#87
.l7caf
	db #12,#12,#1e,#1e,#8d,#12,#12,#1e
	db #1e,#12,#12,#1e,#1e,#8d,#12,#1e
	db #1e,#1e,#12,#12,#1e,#1e,#8d,#12
	db #12,#1e,#1e,#12,#12,#1e,#1e,#8d
	db #12,#12,#1e,#2a,#87
.l7cd4
	db #c0,#8a,#d8,#e0,#81,#8d,#54,#58
	db #5b,#5e,#8d,#48,#4c,#4f,#53,#8d
	db #3c,#40,#43,#47,#8d,#30,#34,#37
	db #3b,#c9,#8d,#54,#58,#5b,#5e,#8d
	db #48,#4c,#4f,#53,#8d,#3c,#40,#43
	db #47,#8d,#30,#34,#37,#3b,#87
.l7d03
	db #8a,#88,#01,#01,#82,#dc,#ff,#c4
	db #30,#30,#30,#c7,#2b,#87
.l7d11
	db #dc,#ff,#c3,#2c,#c4,#84,#05,#50
.l7d1b equ $ + 2
	db #2b,#87,#8a,#88,#01,#01,#82,#dc
.l7d25 equ $ + 4
	db #ff,#c4,#3e,#87,#fd,#cc,#33,#ff
.l7d2e equ $ + 5
	db #c6,#2a,#e1,#8f,#87,#8a,#c0,#88
	db #01,#02,#82,#d2,#e0,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#13,#13,#13
	db #13,#13,#13,#13,#13,#13,#13,#13
	db #13,#13,#13,#13,#13,#87
.l7d57
	db #88,#01,#02,#82,#d2,#8a,#c0,#e3
	db #84,#04,#01,#30,#84,#04,#01,#2c
	db #c9,#28,#81,#c4,#3c,#82,#ce,#84
	db #04,#01,#30,#84,#04,#01,#2c,#c9
	db #28,#81,#c4,#3c,#82,#8a,#c0,#84
	db #04,#01,#30,#84,#04,#01,#2c,#8a
	db #c9,#28,#81,#c4,#3c,#82,#8a,#ce
	db #84,#04,#01,#30,#84,#04,#01,#2c
	db #8a,#c9,#28,#81,#e1,#c8,#37,#c4
	db #3c,#87
.l7da1
	db #88,#01,#02,#82,#d3,#8a,#ce,#e1
	db #27,#26,#24,#e5,#2b,#e3,#2c,#e7
	db #2b,#d0,#8c,#c0,#e0,#52,#52,#52
	db #52,#d3,#8a,#ce,#e3,#2e,#ef,#2b
	db #d0,#8c,#c0,#e0,#46,#52,#52,#52
	db #46,#52,#52,#52,#46,#52,#52,#52
	db #52,#53,#54,#55,#87
.l7dd6
	db #d3,#8a,#cf,#81,#e1,#27,#26,#24
	db #e5,#2b,#e3,#2c,#e7,#2b,#d0,#8c
	db #c0,#e0,#52,#52,#52,#52,#d3,#8a
	db #cf,#e3,#2e,#ef,#2b,#d0,#8c,#c0
	db #e0,#46,#52,#52,#52,#46,#52,#52
	db #52,#46,#52,#52,#52,#52,#53,#54
	db #55,#87
.l7e08
	db #d2,#8a,#88,#01,#01,#c9,#e0,#43
	db #43,#43,#4f,#43,#43,#4f,#43,#43
	db #43,#43,#43,#43,#43,#4f,#4f,#4f
	db #4f,#4f,#5b,#4f,#4f,#5b,#4f,#4f
	db #4f,#4f,#5b,#4f,#4f,#5b,#5b,#87
.l7e30
	db #dd,#8a,#88,#01,#02,#82,#c0,#ff
	db #84,#02,#78,#28,#84,#ff,#78,#1f
	db #84,#02,#78,#28,#84,#01,#78,#1f
	db #87
.l7e49
	db #d2,#81,#ce,#e3,#34,#34,#34,#34
	db #c9,#3e,#3e,#cd,#3e,#3e,#87
.l7e58
	db #d0,#81,#e0,#c9,#51,#4e,#4a,#3e
	db #4e,#4a,#45,#39,#4a,#45,#42,#36
	db #45,#42,#3e,#32,#42,#3e,#39,#2d
	db #3e,#39,#36,#2a,#39,#36,#32,#26
	db #36,#32,#2d,#21,#87
.l7e7d
	db #8a,#81,#da,#e1,#c9,#42,#44,#44
	db #42,#44,#44,#44,#42,#44,#42,#3f
	db #3d,#3a,#38,#36,#38,#d9,#42,#44
	db #44,#42,#44,#44,#44,#42,#44,#42
	db #3f,#3d,#3a,#38,#36,#38,#87
.l7ea4
	dw l7eaa
.l7ea6
	dw l7eb2
.l7ea8
	dw l7eb9
.l7eaa
	db #d4,#81,#ce,#8a,#ff,#85,#52,#8e
.l7eb2
	db #d4,#81,#ce,#8a,#ff,#85,#51
.l7eb9
	db #d4,#81,#ce,#8a,#ff,#85,#50
.l7ec0
	dw l7ff9,l7f08,l7ffc,l7fed
	dw l7f12,l7f12,l7fea,l7f12
	dw l7f12,l7fed,l7f12,l7f12
	dw l7fea,l7f12,l7f12,#0000
.l7ee0
	dw l7f1d,l7f27,l7f27,l7f27
	dw l7f27,l7f27,l7f27,l7f27
	dw l7f27,#0000
.l7ef4
	dw l7f46,l7f50,l7f50,l7f50
	dw l7f50,l7f50,l7f50,l7f50
	dw l7f50,#0000
.l7f08
	db #d5,#81,#ce,#8a,#ff,#85,#52,#85
	db #52,#87
.l7f12
	db #d4,#ef,#88,#01,#02,#82,#0c,#11
	db #0e,#13,#87
.l7f1d
	db #d5,#81,#ce,#8a,#ff,#85,#51,#85
	db #51,#87
.l7f27
	db #8a,#88,#01,#02,#82,#d3,#c2,#e5
	db #24,#24,#e3,#24,#c8,#e5,#29,#29
	db #e3,#29,#c2,#e5,#26,#26,#e3,#26
	db #c8,#e5,#2b,#2b,#e3,#2b,#87
.l7f46
	db #d5,#81,#ce,#8a,#ff,#85,#50,#85
	db #50,#87
.l7f50
	db #da,#8a,#c9,#e1,#4f,#4f,#4f,#4f
	db #4f,#4f,#4f,#4f,#4f,#4f,#4f,#4f
	db #4f,#4f,#4f,#4f,#4f,#4f,#4f,#4f
	db #4f,#4f,#4f,#4f,#4f,#4f,#4f,#4f
	db #4f,#4f,#4f,#4f,#87
.l7f75
	dw l7f8b,#0000
.l7f79
	dw l7f9a,#0000
.l7f7d
	dw l7fed,l7fa7,l7fe7,l7fa7
	dw l7fe4,l7fa7,#0000
.l7f8b
	db #8a,#90,#88,#01,#01,#82,#d3,#e3
	db #13,#13,#13,#e1,#13,#11,#87
.l7f9a
	db #8a,#88,#01,#01,#82,#d1,#ed,#ca
	db #2b,#f1,#cb,#2b,#87
.l7fa7
	db #c9,#88,#01,#01,#82,#d7,#ff,#8a
	db #4f,#8f,#8c,#4f,#8f,#87
.l7fb5
	dw l7fbb
.l7fb7
	dw l7fc8
.l7fb9
	dw l7fd5
.l7fbb
	db #8a,#d2,#88,#01,#01,#82,#e1,#12
	db #12,#db,#ed,#13,#8e
.l7fc8
	db #8a,#d2,#88,#01,#01,#82,#e1,#2e
	db #2e,#db,#ed,#c2,#2b
.l7fd5
	db #8a,#d2,#88,#01,#01,#82,#e1,#31
	db #31,#db,#ed,#32,#ff,#80,#87
.l7fe4
	db #89,#fd,#87
.l7fe7
	db #89,#fe,#87
.l7fea
	db #89,#ff,#87
.l7fed
	db #89,#00,#87
.l7ff0
	db #89,#01,#87
.l7ff3
	db #89,#02,#87
.l7ff6
	db #89,#03,#87
.l7ff9
	db #94,#ff,#87
.l7ffc
	db #94,#2f,#87
;
.music_info
	db "Dynamic Duo (1988)(Firebird)(David Whittaker)",0
	db "",0

	read "music_end.asm"
