; Music of Exterminator (1991)(Audiogenic)(David Whittaker)()
; Ripped by Megachur the 11/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "EXTERMIN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #4000
FIRST_THEME				equ 0
LAST_THEME				equ 6

	read "music_header.asm"
	
	jp l4014        ; init
	jp l4115        ; play
.l4006
	jp l422c        ; stop
	jp l46ff
	jp l423e
.l4013 equ $ + 4
.l4012 equ $ + 3
.l4011 equ $ + 2
.l4010 equ $ + 1
.l400f
.music_end
	db #00,#00,#00,#00,#00
;
.init_music
.l4014
;
	push af
	call l4006
	pop af
	ld c,a
	ld hl,l44fe
	cp #00
	jr z,l4029
	cp #07
	jr z,l4029
	cp #08
	jr nz,l402d
.l4029
	ld (hl),#00
	jr l4042
.l402d
	cp #09
	jr z,l4039
	cp #0d
	jr z,l4039
	cp #11
	jr nz,l4042
.l4039
	inc (hl)
	ld a,(hl)
	cp #04
	jr nz,l4041
	xor a
	ld (hl),a
.l4041
	add c
.l4042
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l4a8f
	add hl,bc
	ld a,(hl)
	ld (l4011),a
	ld (l4012),a
	inc hl
	ld ix,l40af
	ld c,#22
	ld a,#03
.l405e
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
	ld hl,l45e7
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
	jr nz,l405e
	ld (l441c),a
	dec a
	ld (l44fd),a
	ld hl,l4010
	ld (hl),#0e
	ld (l400f),a
	ret
.l40af
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l40d1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l40f3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
.l4115
;
	ld a,(l400f)
	ld hl,l4013
	or (hl)
	ret z
	call l475a
	ld a,(l400f)
	and a
	jr z,l4178
.l4127 equ $ + 1
	ld a,#00
	ld (l4174),a
	ld a,(l4011)
	ld hl,l44fd
	add (hl)
	ld (hl),a
	jr nc,l414c
	ld b,#00
	ld ix,l40af
	call l434b
	ld ix,l40d1
	call l434b
	ld ix,l40f3
	call l434b
.l414c
	ld ix,l40af
	call l43e9
	ld (l44ff),hl
	ld (l4507),a
	ld ix,l40d1
	call l43e9
	ld (l4501),hl
	ld (l4508),a
	ld ix,l40f3
	call l43e9
	ld (l4503),hl
	ld (l4509),a
.l4174 equ $ + 1
	ld a,#00
	ld (l4505),a
.l4178
	ld a,(l400f)
	and a
	jr nz,l418e
	ld (l4507),a
	ld (l4508),a
	ld (l4509),a
	ld a,#3f
	ld (l4506),a
	jr l41b6
.l418e
	ld a,(l4010)
	and #0f
	xor #0f
	jr z,l41b6
	ld b,a
	ld a,(l4507)
	sub b
	jr nc,l419f
	xor a
.l419f
	ld (l4507),a
	ld a,(l4508)
	sub b
	jr nc,l41a9
	xor a
.l41a9
	ld (l4508),a
	ld a,(l4509)
	sub b
	jr nc,l41b3
	xor a
.l41b3
	ld (l4509),a
.l41b6
	ld a,(l4013)
	and a
	jr z,l41de
	ld hl,(l450c)
	ld (l44ff),hl
	ld a,(l4a61)
.l41c5
	ld b,a
	bit 3,a
	jr nz,l41d0
	ld a,(l4512)
	ld (l4505),a
.l41d0
	ld hl,l4506
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l4514)
	ld (l4507),a
.l41de
	ld hl,l4509
	ld d,#0a
.l41e3
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
	jp p,l41e3
	ret
.l4204
	ld de,#0a00
.l4207
	call l4211
	dec d
	jp p,l4207
	ld de,#073f
.l4211
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
.l422c
;
	xor a
	ld (l400f),a
	call l423e
	xor a
	ld (l4507),a
	ld (l4508),a
	ld (l4509),a
	ret
.l423e
	xor a
	ld (l4013),a
	jp l4204
	db #f0
	db #de
	db #d7
	db #e1
	db #a4
	db #00
	db #00
	db #3b
	db #c4
	db #b5
	db #7a
	db #64
	db #8c
	db #dd
	db #30
	db #ea
	db #eb
	db #f0
	db #b3
	db #13
	db #0a
	db #01
	db #1a
	db #13
	ld (l4010),a
	jp l4358
	ld a,(de)
	inc de
	ld (l4011),a
	jp l4358
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
	jp l4358
	pop hl
	jp l4006
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
	jr nz,l42a9
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l42a9
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l4358
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,l44c8
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l4358
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,l44c8
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l4358
	ld hl,l44c8
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l4358
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l4358
	ld a,(de)
	inc de
	ld (l441c),a
	jr l4358
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr l4358
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr l4358
	ld (ix+#1d),b
	jr l4358
	ld (ix+#1d),#c0
	jr l4358
	set 1,(ix+#00)
	jr l4358
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l4387
	jr l4383
	ld (ix+#1f),#ff
	jr l4358
	ld (ix+#1f),b
.l434a equ $ + 1
	jr l4358
.l434b
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l4358
	ld a,(de)
	inc de
	and a
	jp m,l439e
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l436a
	ld (l4127),a
.l436a
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.l4383
	set 5,(ix+#00)
.l4387
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l439d
	ld (ix+#1f),#ff
.l439d
	ret
.l439e
	cp #c0
	jr c,l43e1
	add #20
	jr c,l43c2
	add #10
	jr c,l43c9
	add #10
	ld c,a
	ld hl,l45d8
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l4358
.l43c2
	inc a
	ld (ix+#11),a
	jp l4358
.l43c9
	ld hl,l461b
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#14),l
.l43d8 equ $ + 2
	ld (ix+#15),h
	dec hl
	ld a,(hl)
	ld (ix+#0f),a
	jp l4358
.l43e1
	ld hl,l41c5
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l43e9
	ld c,(ix+#00)
	bit 5,c
	jr z,l441b
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l4415
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l4415
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l4415
	ld a,(ix+#18)
	ld (ix+#13),a
.l441c equ $ + 1
.l441b
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l4438
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l4438
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l4518
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l4499
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l4462
	bit 0,c
	jr nz,l4480
.l4462
	bit 5,l
	jr nz,l4472
	sub (ix+#1b)
	jr nc,l447d
	set 5,(ix+#1d)
	sub a
	jr l447d
.l4472
	add (ix+#1b)
	cp b
	jr c,l447d
	res 5,(ix+#1d)
	ld a,b
.l447d
	ld (ix+#1c),a
.l4480
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l448b
	dec d
.l448b
	add #a0
	jr c,l4497
.l448f
	sla e
	rl d
	add #18
	jr nc,l448f
.l4497
	add hl,de
	ex de,hl
.l4499
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l44c4
	ld b,(ix+#0e)
	djnz l44c1
	ld c,(ix+#0d)
	bit 7,c
	jr z,l44b0
	dec b
.l44b0
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l44c4
.l44c1
	ld (ix+#0e),b
.l44c4
	cpl
	and #03
.l44c8 equ $ + 1
	ld a,#38
	jr nz,l44d5
	ld a,(l4127)
	xor #08
	ld (l4174),a
	ld a,#07
.l44d5
	ld hl,l4506
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l44f8
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l4174),a
.l44f8
	ex de,hl
	ld a,(ix+#13)
	ret
.l4503 equ $ + 6
.l4501 equ $ + 4
.l44ff equ $ + 2
.l44fe equ $ + 1
.l44fd
	db #00,#00,#00,#00,#00,#00,#00,#00
.l450c equ $ + 7
.l4509 equ $ + 4
.l4508 equ $ + 3
.l4507 equ $ + 2
.l4506 equ $ + 1
.l4505
	db #00,#3f,#00,#00,#00,#00,#00,#00
.l4514 equ $ + 7
.l4512 equ $ + 5
.l450d
	db #00,#00,#00,#00,#00,#00,#3f,#00
	db #00,#00,#00
.l4518
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
.l454a equ $ + 2
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
.l45d8
	db #0f,#0f,#11,#13,#15,#18,#1a,#1c
	db #1e,#20,#21,#22,#23,#24,#25
.l45e7
	db #80
	db #00,#03,#87,#00,#04,#87,#04,#07
	db #8a,#00,#00,#0c,#8c,#07,#0c,#8f
	db #07,#0c,#90,#03,#07,#8c,#04,#07
	db #8c,#00,#8c,#00,#83,#00,#84,#00
	db #85,#00,#87,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#80
.l461b
	dw l463c,l464b,l4657,l4669
	dw l467b,l4682,l4689,l469e
	dw l46a7,l46b8,l46c9,l46d9
	dw l46ea,l46f2,l46fa,l46fd
	.l463c equ $ + 1
	db #01,#0f,#0e,#0d,#0b,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#01
.l464b
	db #0e,#0d,#0b,#09,#07,#05,#04,#03
.l4657 equ $ + 4
	db #02,#01,#87,#01,#0f,#0e,#0d,#0b
	db #0d,#0c,#0a,#09,#0b,#0a,#08,#07
.l4669 equ $ + 6
	db #09,#08,#06,#05,#87,#01,#0f,#0f
	db #0d,#0b,#0d,#0c,#0a,#09,#0b,#0a
	db #08,#07,#09,#08,#06,#05,#87,#01
.l4682 equ $ + 7
.l467b
	db #0f,#0e,#0d,#0c,#0b,#87,#01,#0e
.l4689 equ $ + 6
	db #0d,#0c,#0b,#0a,#87,#01,#0e,#0d
	db #0c,#0b,#0a,#09,#01,#08,#01,#07
	db #01,#06,#01,#05,#01,#04,#01,#02
.l469e equ $ + 3
	db #01,#87,#04,#08,#09,#0a,#0b,#0c
.l46a7 equ $ + 4
	db #0d,#0e,#87,#0c,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l46b8 equ $ + 5
	db #03,#02,#01,#87,#14,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l46c9 equ $ + 6
	db #04,#03,#02,#01,#87,#03,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l46d9 equ $ + 6
	db #04,#03,#02,#01,#87,#03,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l46ea equ $ + 7
	db #05,#04,#03,#02,#01,#87,#01,#0e
.l46f2 equ $ + 7
	db #0c,#09,#07,#02,#01,#87,#01,#0d
.l46fa equ $ + 7
	db #0b,#09,#07,#02,#01,#87,#01,#0f
	db #87
.l46fd equ $ + 1
	db #01,#0c,#87
.l46ff
	ld hl,l4013
	ld (hl),#00
	ld hl,l4814
	add a
	add l
	ld l,a
	jr nc,l470d
	inc h
.l470d
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l4a5b
.l4715
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l4715
	ld a,(l4a5c)
	ld (l4a69),a
	ld hl,(l4a5d)
	ld (l450c),hl
	ld a,(l4a61)
	bit 3,a
	jr nz,l4732
	ld a,l
	ld (l4512),a
.l4732
	ld a,(l4a66)
	ld (l4a6a),a
	ld a,(l4a68)
	ld (l4a6f),a
	ld a,(l4a65)
	ld hl,l49b4
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l4a6b),hl
	ld (l4a6d),hl
	ld a,(hl)
	ld (l4514),a
	ld hl,l4013
	inc (hl)
	ret
.l475a
	call l4a70
	ld a,(l4013)
	and a
	ret z
	ld a,(l4a5b)
	and a
	jr nz,l4772
	ld a,(l4a67)
	and a
	jr nz,l4772
	ld (l4013),a
	ret
.l4772
	dec a
	ld (l4a5b),a
	ld a,(l4a69)
	and a
	jr nz,l47aa
	ld a,(l4a67)
	and a
	jr nz,l4788
	ld a,(l4a64)
	and a
	jr z,l47ec
.l4788
	dec a
	ld (l4a64),a
	ld a,(l4a5c)
	ld (l4a69),a
	ld a,(l4a62)
	and a
	jr z,l479b
	ld a,(l4a8b)
.l479b
	ld b,a
	ld a,(l4a5d)
	add b
	ld (l450c),a
	ld a,(l4a5e)
	add b
	ld (l450d),a
.l47aa
	ld hl,l4a69
	dec (hl)
	ld hl,l4a68
	ld a,(hl)
	and a
	jr z,l47bc
	ld hl,l4a6f
	dec (hl)
	jr nz,l47df
	ld (hl),a
.l47bc
	ld a,(l4a63)
	and a
	jr z,l47df
	jp p,l47d2
	ld hl,(l450c)
	ld de,(l4a5f)
	add hl,de
	ld (l450c),hl
	jr l47df
.l47d2
	ld hl,(l450c)
	ld de,(l4a5f)
	and a
	sbc hl,de
	ld (l450c),hl
.l47df
	ld a,(l4a61)
	bit 3,a
	jr nz,l47ec
	ld a,(l450c)
	ld (l4512),a
.l47ec
	ld a,(l4a6a)
	dec a
	ld (l4a6a),a
	jr nz,l4813
	ld a,(l4a66)
	ld (l4a6a),a
	ld hl,(l4a6d)
	ld a,(hl)
	inc hl
	and a
	jp p,l480d
	cp #80
	jr nz,l4813
	ld hl,(l4a6b)
	ld a,(hl)
	inc hl
.l480d
	ld (l4a6d),hl
	ld (l4514),a
.l4813
	ret
.l4814
	dw l4848,l4856,l4864,l4872
	dw l4880,l488e,l489c,l48aa
	dw l48b8,l48c6,l48d4,l48e2
	dw l48f0,l48fe,l490c
	dw l491a,l4928,l4936,l4944
	dw l4952,l4960,l496e,l497c
	dw l498a,l4998,l49a6
.l4848
	db #0b,#63,#1f,#00,#11,#00,#f7,#00
.l4856 equ $ + 6
	db #ff,#00,#00,#01,#00,#00,#14,#63
	db #90,#00,#09,#00,#fe,#00,#ff,#63
.l4864 equ $ + 4
	db #00,#02,#00,#00,#50,#05,#8f,#03
	db #14,#00,#fe,#00,#ff,#63,#01,#04
.l4872 equ $ + 2
	db #00,#00,#32,#02,#16,#00,#01,#00
	db #fe,#00,#ff,#63,#00,#05,#00,#00
.l4880
	db #07,#02,#1c,#00,#01,#00,#fe,#00
.l488e equ $ + 6
	db #01,#63,#0d,#01,#00,#00,#09,#05
	db #07,#00,#04,#00,#f6,#00,#01,#0a
.l489c equ $ + 4
	db #00,#01,#00,#00,#0f,#05,#18,#00
	db #01,#00,#fe,#00,#ff,#63,#08,#02
.l48aa equ $ + 2
	db #00,#00,#03,#02,#8c,#07,#01,#00
	db #fe,#00,#ff,#63,#00,#01,#00,#00
.l48b8
	db #0e,#02,#2e,#00,#01,#00,#fe,#00
.l48c6 equ $ + 6
	db #01,#63,#08,#02,#00,#00,#0f,#63
	db #60,#00,#03,#00,#fe,#00,#ff,#63
.l48d4 equ $ + 4
	db #08,#03,#00,#00,#0f,#63,#09,#05
	db #11,#00,#f6,#00,#ff,#00,#00,#01
.l48e2 equ $ + 2
	db #00,#00,#19,#04,#4c,#01,#21,#00
	db #f6,#00,#ff,#63,#00,#03,#00,#00
.l48f0
	db #37,#63,#ff,#06,#06,#00,#fe,#00
.l48fe equ $ + 6
	db #01,#63,#01,#03,#00,#00,#0c,#05
	db #1f,#00,#0c,#00,#f6,#00,#01,#0a
.l490c equ $ + 4
	db #00,#01,#00,#00,#07,#05,#00,#00
	db #08,#00,#f6,#01,#ff,#63,#08,#02
.l491a equ $ + 2
	db #00,#00,#0f,#03,#c7,#00,#20,#00
	db #f6,#ff,#ff,#63,#00,#01,#00,#00
.l4928
	db #0c,#02,#46,#00,#03,#00,#fe,#00
.l4936 equ $ + 6
	db #01,#63,#00,#02,#00,#00,#37,#ff
	db #29,#02,#04,#00,#fe,#00,#01,#63
.l4944 equ $ + 4
	db #00,#06,#00,#00,#0f,#63,#00,#07
	db #12,#00,#fe,#00,#01,#63,#08,#03
.l4952 equ $ + 2
	db #00,#00,#0f,#63,#e0,#00,#04,#00
	db #fe,#00,#01,#63,#00,#03,#00,#00
.l4960
	db #32,#0c,#36,#00,#03,#00,#fe,#00
.l496e equ $ + 6
	db #01,#00,#00,#08,#00,#00,#2d,#0a
	db #80,#00,#20,#00,#fe,#00,#01,#63
.l497c equ $ + 4
	db #08,#03,#00,#04,#1e,#0c,#30,#00
	db #08,#00,#fe,#00,#01,#00,#08,#04
.l498a equ $ + 2
	db #00,#04,#0e,#ff,#0a,#00,#03,#00
	db #f6,#00,#ff,#0a,#08,#02,#00,#00
.l4998
	db #3c,#0f,#1f,#00,#02,#00,#f6,#00
.l49a6 equ $ + 6
	db #ff,#63,#08,#05,#00,#00,#3c,#04
	db #00,#03,#00,#03,#fe,#00,#ff,#02
	db #00,#03,#00
	db #0a
.l49b4
	dw l49d0,l49e0,l49f9
	
	dw #4a09,#4a11,#4a16,#4a1c
	dw #4a1e,#4a30,#4a3f,#4a43
	dw #4a45,#4a4b,#4a54
	
.l49d0
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.l49e0
	db #06,#08,#0a,#0b,#0c,#0d,#0e,#0f
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.l49f9 equ $ + 1
	db #ff,#06,#08,#0a,#0b,#0c,#0d,#0c
	db #0b,#0a,#08,#06,#04,#03,#02,#01
	db #ff,#0d,#0b,#09,#07,#05,#04,#03
	db #ff,#01,#04,#07,#0a,#80,#01,#03
	db #06,#08,#0a,#80,#0b,#80,#0f,#0f
	db #0e,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#ff,#0d
	db #09,#01,#ff,#09,#80,#0a,#0b,#0c
	db #0d,#0c,#80,#0f,#0a,#05,#01,#0d
	db #08,#03,#00,#ff,#0d,#0a,#03,#08
.l4a5f equ $ + 7
.l4a5e equ $ + 6
.l4a5d equ $ + 5
.l4a5c equ $ + 4
.l4a5b equ $ + 3
	db #04,#01,#ff,#00,#00,#00,#00,#00
.l4a67 equ $ + 7
.l4a66 equ $ + 6
.l4a65 equ $ + 5
.l4a64 equ $ + 4
.l4a63 equ $ + 3
.l4a62 equ $ + 2
.l4a61 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a6f equ $ + 7
.l4a6d equ $ + 5
.l4a6b equ $ + 3
.l4a6a equ $ + 2
.l4a69 equ $ + 1
.l4a68
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a70
	ld a,(l4a8b)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l4a8e
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l4a8e equ $ + 3
.l4a8b
	db #ff,#80,#1b,#34
.l4a8f
	db #36
	dw l4ad2,l4ac0,l4ad6
	db #2a
	dw l4bd1,l4bcd,l4bd5
	db #44
	dw l4cd0,l4ccc,l4cd4
	db #44
	dw l4db5,l4d95,l4dbf
	db #32
	dw l4f34,l4f0e,l4f3e
	db #22
	dw l4fe5,l4fe1,l4fe9
	db #30
	dw l50c3,l50bf,l50c7
.l4ac0
	dw l4ada,l4ada,l4ada,l4ada
	dw l4ada,l4ada,l4ada,l4aed
	dw #0000
.l4ad2
	dw l4b30,#0000
.l4ad6
	dw l4b88,#0000
.l4ada
	db #8a,#92,#0c,#d2,#88,#01,#01,#e1
	db #09,#09,#8d,#09,#09,#09,#09,#8d
.l4aed equ $ + 3
	db #09,#09,#87,#db,#e5,#09,#09,#e3
	db #09,#e5,#0a,#0a,#e3,#0a,#e1,#04
	db #e3,#04,#e5,#04,#e3,#04,#e1,#09
	db #05,#05,#09,#05,#e3,#09,#e1,#d0
	db #09,#95,#0e,#09,#95,#0d,#09,#95
	db #0c,#09,#95,#0b,#09,#95,#0a,#09
	db #95,#09,#09,#95,#08,#09,#95,#07
	db #09,#95,#06,#09,#95,#04,#09,#95
.l4b30 equ $ + 6
	db #03,#09,#95,#02,#09,#8e,#8a,#e1
	db #d2,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#ef,#88,#01,#01,#d8,#22,#26
	db #d9,#e1,#2e,#ed,#2d,#e0,#80,#e1
	db #db,#28,#2b,#2d,#30,#34,#37,#39
	db #3c,#34,#37,#39,#3c,#40,#43,#45
	db #e0,#48,#d2,#e1,#39,#39,#39,#37
	db #37,#37,#39,#37,#35,#35,#35,#34
	db #34,#34,#35,#34,#34,#e3,#34,#e5
	db #34,#e3,#34,#e1,#d3,#2d,#29,#29
.l4b88 equ $ + 6
	db #2d,#29,#ff,#d8,#2d,#87,#8a,#ef
	db #80,#88,#01,#01,#d8,#22,#26,#29
	db #d9,#e1,#32,#ed,#30,#e1,#db,#21
	db #24,#28,#2b,#2d,#30,#34,#37,#2d
	db #30,#34,#37,#39,#3c,#40,#43,#d2
	db #e1,#31,#31,#31,#2f,#2f,#2f,#31
	db #2f,#2d,#2d,#2d,#2b,#2b,#2b,#2d
	db #2b,#2f,#e3,#2f,#e5,#2f,#e3,#2f
	db #e1,#d3,#31,#30,#30,#31,#30,#ff
	db #d8,#31,#87
.l4bcd
	dw l4bd9,#0000
.l4bd1
	dw l4c22,#0000
.l4bd5
	dw l4c76,#0000
.l4bd9
	db #8a,#d9,#88,#01,#01,#e3,#09,#10
	db #15,#1c,#db,#e1,#09,#09,#e0,#8d
	db #09,#e1,#09,#09,#09,#09,#e0,#09
	db #e1,#07,#e1,#09,#09,#e0,#8d,#09
	db #e1,#09,#09,#09,#09,#e2,#d8,#0c
	db #db,#e1,#09,#09,#e0,#8d,#09,#e1
	db #09,#09,#09,#09,#e0,#09,#e1,#07
	db #e0,#05,#05,#05,#e1,#05,#d8,#e2
	db #05,#e3,#04,#10,#15,#1c,#ef,#09
.l4c22 equ $ + 1
	db #8e,#8a,#da,#88,#01,#01,#e3,#21
	db #28,#2d,#34,#d0,#e0,#28,#28,#28
	db #28,#e1,#26,#e0,#26,#e1,#26,#26
	db #26,#e0,#25,#e1,#23,#e0,#28,#28
	db #28,#28,#e1,#26,#e0,#26,#e1,#28
	db #e0,#28,#e1,#28,#e0,#28,#d8,#e2
	db #2b,#d0,#e0,#28,#28,#28,#28,#e1
	db #26,#e0,#26,#e1,#26,#26,#26,#e0
	db #25,#e1,#23,#e0,#24,#24,#24,#e1
	db #24,#e2,#24,#d8,#e3,#23,#e3,#21
.l4c76 equ $ + 5
	db #28,#2d,#ff,#34,#87,#8a,#da,#88
	db #01,#01,#e2,#21,#e3,#28,#2d,#e4
	db #3b,#d0,#e0,#2d,#2d,#2d,#2d,#e1
	db #2f,#e0,#2f,#e1,#2a,#2a,#2a,#e0
	db #28,#e1,#26,#e0,#2d,#2d,#2d,#2d
	db #e1,#2f,#e0,#2f,#e1,#2d,#e0,#2d
	db #e1,#2d,#e0,#2d,#d8,#e2,#30,#d0
	db #e0,#2d,#2d,#2d,#2d,#e1,#2f,#e0
	db #2f,#e1,#2a,#2a,#2a,#e0,#28,#e1
	db #26,#e0,#29,#29,#29,#e1,#29,#e2
	db #29,#d8,#e2,#28,#e3,#21,#28,#2d
	db #ff,#3b,#87
.l4ccc
	dw l4cd8,#0000
.l4cd0
	dw l4d1d,#0000
.l4cd4
	dw l4d59,#0000
.l4cd8
	db #8a,#d0,#88,#01,#01,#e1,#21,#1f
	db #8d,#21,#1c,#1f,#1a,#8d,#1c,#1f
	db #21,#1f,#8d,#21,#1c,#1f,#1a,#8d
	db #1c,#1f,#21,#1f,#8d,#21,#1c,#1f
	db #1a,#8d,#1c,#1f,#21,#1f,#8d,#21
	db #1c,#1f,#1a,#8d,#1c,#1f,#21,#1f
	db #8d,#21,#1c,#1f,#1a,#8d,#1c,#1f
	db #21,#1f,#8d,#21,#1c,#1f,#1a,#8d
.l4d1d equ $ + 5
	db #1c,#d8,#fe,#1f,#8e,#8a,#d5,#88
	db #01,#01,#e1,#15,#13,#15,#10,#13
	db #0e,#10,#13,#15,#13,#15,#10,#13
	db #0e,#10,#13,#88,#01,#01,#24,#23
	db #24,#1f,#23,#1f,#21,#23,#24,#23
	db #24,#1f,#23,#1f,#21,#23,#24,#23
	db #24,#1f,#23,#1f,#21,#23,#24,#23
	db #24,#1f,#23,#1f,#21,#d8,#ff,#23
.l4d59 equ $ + 1
	db #8e,#8a,#d4,#e1,#88,#01,#01,#09
	db #07,#09,#04,#07,#02,#04,#07,#09
	db #07,#09,#04,#07,#02,#04,#07,#09
	db #07,#09,#04,#07,#02,#04,#07,#09
	db #07,#09,#04,#07,#02,#04,#07,#88
	db #01,#01,#28,#26,#28,#23,#26,#23
	db #24,#26,#28,#26,#28,#23,#26,#23
	db #24,#d8,#ff,#26,#87
.l4d95
	dw l4def,l4df5,l4df5,l4df5
	dw l4df5,l4df5,l4df5,l4df5
	dw l510a,l4df5,l4df5,l4df5
	dw l4df5,l5107,l4e00,#0000
.l4db5
	dw l4e32,l4e32,l4e32,l4e3d
.l4dbf equ $ + 2
	dw #0000,l4e48,l4df6,l4df6
	dw l4df6,l4df6,l4e50,l4e93
	dw l4ed1,l4ed1,l4ef4,l4e48
	dw l4df6,l4df6,l4df6,l4df6
	dw l5110,l4e55,l510d,l4e93
	dw l5110,l4ed1,l4ed1,l4ef4
	dw #0000
.l4df6 equ $ + 7
.l4df5 equ $ + 6
.l4def
	db #89,#02,#8a,#88,#01,#01,#db,#e1
	db #07,#13,#0b,#0c,#0d,#0e,#0d,#0e
.l4e00 equ $ + 1
	db #87,#db,#0e,#15,#1a,#0e,#15,#1a
	db #0e,#1a,#0c,#13,#18,#13,#0c,#13
	db #18,#13,#0a,#11,#1a,#16,#0a,#11
	db #16,#11,#0c,#13,#18,#13,#0c,#13
	db #18,#13,#0e,#15,#1a,#15,#0e,#15
	db #1a,#15,#0e,#1a,#02,#0e,#04,#10
.l4e32 equ $ + 3
	db #06,#12,#87,#8b,#e1,#d1,#3f,#dd
.l4e3d equ $ + 6
	db #41,#dc,#27,#dd,#41,#87,#d1,#3f
	db #dd,#41,#dc,#25,#e0,#dd,#41,#41
.l4e48 equ $ + 1
	db #87,#92,#0c,#8a,#88,#01,#01,#d0
.l4e55 equ $ + 6
.l4e50 equ $ + 1
	db #87,#92,#0c,#88,#01,#01,#d1,#e0
	db #26,#25,#24,#23,#22,#27,#26,#24
	db #26,#25,#24,#23,#22,#23,#24,#25
	db #26,#25,#24,#23,#22,#27,#26,#25
	db #26,#25,#24,#23,#22,#23,#25,#24
	db #26,#25,#24,#23,#24,#23,#22,#21
	db #23,#22,#24,#25,#26,#27,#26,#25
	db #26,#25,#24,#23,#22,#23,#24,#25
.l4e93 equ $ + 4
	db #db,#e7,#26,#87,#d1,#e0,#2b,#2a
	db #29,#28,#27,#2c,#2b,#2a,#2b,#2a
	db #29,#28,#27,#28,#29,#2a,#2b,#2a
	db #29,#28,#27,#2c,#2b,#2a,#2b,#2a
	db #29,#28,#27,#28,#29,#2a,#2b,#2a
	db #29,#28,#29,#28,#27,#26,#27,#28
	db #29,#2a,#2b,#2c,#2b,#2a,#2b,#2a
	db #29,#28,#27,#28,#29,#2a,#db,#e7
.l4ed1 equ $ + 2
	db #2b,#87,#d1,#e0,#26,#25,#24,#23
	db #22,#23,#24,#25,#26,#25,#24,#25
	db #26,#25,#24,#25,#29,#28,#27,#26
	db #25,#26,#27,#28,#29,#28,#27,#28
.l4ef4 equ $ + 5
	db #29,#28,#27,#28,#87,#26,#25,#24
	db #23,#22,#23,#24,#25,#26,#25,#26
	db #27,#26,#25,#26,#27,#e3,#26,#e1
	db #25,#26,#27,#26,#28,#2a,#87
.l4f0e
	dw l4f5a,l4f71,l4f5a,l4f82
	dw l4f5a,l4f71,l4f5a,l4f82
	dw l4f5a,l4f71,l4f5a,l4f82
	dw l5104,l4f5a,l4f71,l4f5a
.l4f34 equ $ + 6
	dw l4f82,l5101,#0000,l4f99
	dw l4f99,l4f99,l4faf,#0000
.l4f3e
	dw l4fc2,l4f5e,l4f71,l4f5e
	dw l4f82,l4fc9,l4fd4,l4fd4
	dw l4fd4,l4fd4,l4fd4,l4fd4
	dw l4fd4,#0000
.l4f5e equ $ + 4
.l4f5a
	db #8a,#88,#01,#01,#d4,#e2,#15,#e0
	db #15,#e1,#13,#e9,#15,#e1,#0c,#e3
.l4f71 equ $ + 7
	db #0e,#09,#e1,#09,#e3,#07,#87,#e2
	db #09,#e0,#09,#e1,#0c,#e9,#09,#e1
	db #0e,#e3,#0f,#e5,#10,#e3,#10,#87
.l4f82
	db #e0,#09,#09,#09,#09,#e1,#07,#e3
	db #09,#e1,#09,#e3,#09,#e1,#11,#e3
.l4f99 equ $ + 7
	db #10,#09,#e1,#09,#e3,#10,#87,#8b
	db #dd,#e1,#27,#e0,#27,#27,#e1,#27
	db #e0,#27,#27,#27,#27,#27,#27,#e1
.l4faf equ $ + 5
	db #27,#e0,#27,#27,#87,#e1,#27,#e0
	db #27,#27,#e2,#27,#e0,#27,#e1,#27
	db #e2,#27,#e0,#27,#e0,#27,#27,#87
.l4fc9 equ $ + 7
.l4fc2
	db #8a,#88,#01,#01,#92,#0c,#87,#d9
	db #92,#00,#88,#01,#01,#ff,#15,#8f
.l4fd4 equ $ + 2
	db #15,#8f,#db,#92,#00,#e2,#2d,#e0
	db #2d,#e1,#2b,#d8,#f9,#2d,#87
.l4fe5 equ $ + 4
.l4fe1
	dw l4fed,#0000,l502c,#0000
.l4fe9
	dw l507a,#0000
.l4fed
	db #8a,#88,#01,#01,#d0,#e0,#10,#10
	db #d1,#8d,#10,#d0,#10,#10,#10,#d1
	db #8d,#10,#d0,#10,#10,#10,#d1,#8d
	db #10,#d0,#10,#10,#10,#d1,#8d,#10
	db #d0,#10,#10,#10,#d1,#8d,#10,#d0
	db #10,#10,#17,#d1,#8d,#17,#d0,#17
	db #15,#13,#d1,#8d,#10,#d0,#10,#10
.l502c equ $ + 7
	db #0e,#d1,#8d,#0e,#d0,#0e,#87,#8a
	db #d5,#88,#01,#01,#e0,#17,#13,#13
	db #e1,#17,#1a,#e0,#1a,#19,#17,#15
	db #e1,#15,#15,#e0,#15,#e0,#17,#13
	db #13,#e1,#17,#26,#e0,#26,#e4,#25
	db #e1,#13,#e0,#13,#e0,#17,#13,#13
	db #e1,#17,#1a,#e0,#1a,#19,#17,#15
	db #e3,#15,#88,#01,#01,#d4,#e0,#2f
	db #32,#34,#e2,#2d,#88,#01,#01,#e1
	db #15,#e0,#15,#15,#17,#17,#e1,#17
.l507a equ $ + 5
	db #e1,#15,#e0,#15,#87,#8a,#d4,#88
	db #01,#01,#e0,#1f,#1c,#1c,#e1,#1f
	db #23,#e0,#23,#21,#1f,#1c,#e1,#1c
	db #1c,#e0,#1c,#e0,#1f,#1c,#1c,#e1
	db #1f,#23,#e0,#23,#e4,#21,#e1,#1c
	db #e0,#1c,#e0,#1f,#1c,#1c,#e1,#1f
	db #23,#e0,#23,#21,#1f,#1c,#1c,#2f
	db #32,#34,#e5,#2d,#e1,#26,#e0,#26
	db #26,#28,#28,#e1,#28,#e1,#1c,#e0
	db #1c,#87
.l50c3 equ $ + 4
.l50bf
	dw l50cb,#0000,l50dd,#0000
.l50c7
	dw l50ef,#0000
.l50cb
	db #8a,#89,#f4,#d9,#88,#01,#01,#e2
	db #0c,#15,#1e,#27,#30,#39,#42,#ff
.l50dd equ $ + 2
	db #4b,#8e,#8a,#e0,#80,#88,#01,#01
	db #d9,#e2,#0f,#18,#21,#2a,#33,#3c
.l50ef equ $ + 4
	db #45,#ff,#4e,#87,#8a,#e1,#80,#88
	db #01,#01,#d9,#e2,#12,#1b,#24,#2d
.l5101 equ $ + 6
	db #36,#3f,#48,#ff,#51,#87,#89,#00
.l510a equ $ + 7
.l5107 equ $ + 4
.l5104 equ $ + 1
	db #87,#89,#03,#87,#92,#00,#87,#92
.l5110 equ $ + 5
.l510d equ $ + 2
	db #05,#87,#92,#0c,#87,#92,#18,#88
	db #01,#01,#87,#ff,#80,#87
;
.music_info
	db "Exterminator (1991)(Audiogenic)(David Whittaker)",0
	db "",0

	read "music_end.asm"
