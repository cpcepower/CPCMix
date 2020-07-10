; Music of Licence to Kill (1989)(Domark)(David Whittaker)()
; Ripped by Megachur the 11/03/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LICENCTK.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #ae5f
FIRST_THEME				equ 0
LAST_THEME				equ 4

	read "music_header.asm"
	
;
.init_music
;
	push af
	call lb0ae
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,lbb8b
	add hl,bc
	ld a,(hl)
	ld (laf52),a
	ld (lb3cd),a
	inc hl
	ld ix,laed1
	ld c,#22
	ld a,#03
.lae80
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
	ld hl,lb4b7
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
	jr nz,lae80
	ld (lb2e7),a
	dec a
	ld (lb3ce),a
	ld (lb3c8),a
	ld a,#0f
	ld (lb3cc),a
	ret
.laed1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.laef3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.laf15
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	ld a,(lb3c8)
	ld hl,lb3c9
	or (hl)
	inc hl
	or (hl)
	inc hl
	or (hl)
	ret z
	call lb6e8
	ld a,(lb3c8)
	and a
	jr z,laf9d
.laf4d equ $ + 1
	ld a,#00
	ld (laf99),a
.laf52 equ $ + 1
	ld a,#01
	ld hl,lb3ce
	add (hl)
	ld (hl),a
	jr nc,laf71
	ld b,#00
	ld ix,laed1
	call lb1dd
	ld ix,laef3
	call lb1dd
	ld ix,laf15
	call lb1dd
.laf71
	ld ix,laed1
	call lb2b4
	ld (lb3cf),hl
	ld (lb3d7),a
	ld ix,laef3
	call lb2b4
	ld (lb3d1),hl
	ld (lb3d8),a
	ld ix,laf15
	call lb2b4
	ld (lb3d3),hl
	ld (lb3d9),a
.laf99 equ $ + 1
	ld a,#00
	ld (lb3d5),a
.laf9d
	ld a,(lb3c8)
	and a
	jr nz,lafb3
	ld (lb3d7),a
	ld (lb3d8),a
	ld (lb3d9),a
	ld a,#3f
	ld (lb3d6),a
	jr lafdb
.lafb3
	ld a,(lb3cc)
	and #0f
	xor #0f
	jr z,lafdb
	ld b,a
	ld a,(lb3d7)
	sub b
	jr nc,lafc4
	xor a
.lafc4
	ld (lb3d7),a
	ld a,(lb3d8)
	sub b
	jr nc,lafce
	xor a
.lafce
	ld (lb3d8),a
	ld a,(lb3d9)
	sub b
	jr nc,lafd8
	xor a
.lafd8
	ld (lb3d9),a
.lafdc equ $ + 1
.lafdb
	ld a,#00
	xor #ff
	ld (lafdc),a
	ld a,(lb3c9)
	and a
	jr z,lb00a
	ld hl,(lb3dc)
	ld (lb3cf),hl
	ld a,(lbb33)
	ld b,a
	bit 3,a
	jr nz,laffc
	ld a,(lb3e2)
	ld (lb3d5),a
.laffc
	ld hl,lb3d6
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(lb3e4)
	ld (lb3d7),a
.lb00a
	ld a,(lb3ca)
	and a
	jr z,lb034
	ld hl,(lb3de)
	ld (lb3d1),hl
	ld a,(lbb48)
	ld b,a
	bit 3,a
	jr nz,lb024
	ld a,(lb3e2)
	ld (lb3d5),a
.lb024
	ld hl,lb3d6
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(lb3e5)
	ld (lb3d8),a
.lb034
	ld a,(lb3cb)
	and a
	jr z,lb060
	ld hl,(lb3e0)
	ld (lb3d3),hl
	ld a,(lbb5d)
	ld b,a
	bit 3,a
	jr nz,lb04e
	ld a,(lb3e2)
.lb04d equ $ + 2
	ld (lb3d5),a
.lb04e
	ld hl,lb3d6
	ld a,(hl)
	or #24
	rlc b
	rlc b
	and b
	ld (hl),a
	ld a,(lb3e6)
	ld (lb3d9),a
.lb060
	ld hl,lb3d9
	ld d,#0a
.lb065
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
	jp p,lb065
	ret
.lb086
	ld de,#0a00
.lb089
	call lb093
	dec d
	jp p,lb089
	ld de,#073f
.lb093
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
.lb0ae
;
	xor a
	ld (lb3c8),a
	call lb0c0
	xor a
	ld (lb3d7),a
	ld (lb3d8),a
	ld (lb3d9),a
	ret
.lb0c0
	xor a
	ld (lb3c9),a
	ld (lb3ca),a
	ld (lb3cb),a
	jp lb086
	db #fa,#de,#d7,#e1,#a4,#e9,#e4,#3b
	db #c4,#b5,#7a,#64,#8c,#e7,#30,#f4
	db #f5,#fa,#b3,#13,#0a,#01,#1a,#13
	ld (lb3cc),a
	jp lb1eb
	ld a,(de)
	inc de
	ld (laf52),a
	jp lb1eb
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
	jp lb1eb
	pop hl
	jp lb0ae
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
	jr nz,lb131
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lb131
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp lb1eb
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,lb393
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp lb1eb
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,lb393
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp lb1eb
	ld hl,lb393
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr lb1eb
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr lb1eb
	ld a,(de)
	inc de
	ld (lb2e7),a
	jr lb1eb
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr lb1eb
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr lb1eb
	ld (ix+#1d),b
	jr lb1eb
	ld (ix+#1d),#c0
	jr lb1eb
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr lb1eb
	set 1,(ix+#00)
	jr lb1eb
	ld (ix+#13),b
	res 5,(ix+#00)
	jr lb21a
	jr lb216
	ld (ix+#1f),#ff
	jr lb1eb
	ld (ix+#1f),b
	jr lb1eb
.lb1dd
	dec (ix+#10)
	jr nz,lb258
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.lb1eb
	ld a,(de)
	inc de
	and a
	jp m,lb269
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,lb1fd
	ld (laf4d),a
.lb1fd
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.lb216
	set 5,(ix+#00)
.lb21a
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,lb257
	ld a,(lb3c9)
	and a
	jr z,lb239
	ld a,(lbb33)
	bit 3,a
	jr z,lb257
.lb239
	ld a,(lb3ca)
	and a
	jr z,lb246
	ld a,(lbb48)
	bit 3,a
	jr z,lb257
.lb246
	ld a,(lb3cb)
	and a
	jr z,lb253
	ld a,(lbb5d)
	bit 3,a
	jr z,lb257
.lb253
	ld (ix+#1f),#ff
.lb257
	ret
.lb258
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,lb265
	inc (ix+#12)
	ret
.lb265
	dec (ix+#12)
	ret
.lb269
	cp #c0
	jr c,lb2ac
	add #20
	jr c,lb28d
	add #10
	jr c,lb294
	add #10
	ld c,a
	ld hl,lb4a8
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp lb1eb
.lb28d
	inc a
	ld (ix+#11),a
	jp lb1eb
.lb294
	ld hl,lb4e1
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
	jp lb1eb
.lb2ac
	ld hl,lb04d
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb2b4
	ld c,(ix+#00)
	bit 5,c
	jr z,lb2e6
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,lb2e0
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,lb2e0
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.lb2e0
	ld a,(ix+#18)
	ld (ix+#13),a
.lb2e7 equ $ + 1
.lb2e6
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,lb303
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.lb303
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,lb3e8
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lb364
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lb32d
	bit 0,c
	jr nz,lb34b
.lb32d
	bit 5,l
	jr nz,lb33d
	sub (ix+#1b)
	jr nc,lb348
	set 5,(ix+#1d)
	sub a
	jr lb348
.lb33d
	add (ix+#1b)
	cp b
	jr c,lb348
	res 5,(ix+#1d)
	ld a,b
.lb348
	ld (ix+#1c),a
.lb34b
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lb356
	dec d
.lb356
	add #a0
	jr c,lb362
.lb35a
	sla e
	rl d
	add #18
	jr nc,lb35a
.lb362
	add hl,de
	ex de,hl
.lb364
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,lb38f
	ld b,(ix+#0e)
	djnz lb38c
	ld c,(ix+#0d)
	bit 7,c
	jr z,lb37b
	dec b
.lb37b
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr lb38f
.lb38c
	ld (ix+#0e),b
.lb38f
	cpl
	and #03
.lb393 equ $ + 1
	ld a,#38
	jr nz,lb3a0
	ld a,(laf4d)
	xor #08
	ld (laf99),a
	ld a,#07
.lb3a0
	ld hl,lb3d6
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,lb3c3
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (laf99),a
.lb3c3
	ex de,hl
	ld a,(ix+#13)
	ret
.lb3cf equ $ + 7
.lb3ce equ $ + 6
.lb3cd equ $ + 5
.lb3cc equ $ + 4
.lb3cb equ $ + 3
.lb3ca equ $ + 2
.lb3c9 equ $ + 1
.lb3c8
.music_end
	db #00,#00,#00,#00,#0f,#00,#00,#00
.lb3d7 equ $ + 7
.lb3d6 equ $ + 6
.lb3d5 equ $ + 5
.lb3d3 equ $ + 3
.lb3d1 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#3f,#0f
.lb3df equ $ + 7
.lb3de equ $ + 6
.lb3dd equ $ + 5
.lb3dc equ $ + 4
.lb3d9 equ $ + 1
.lb3d8
	db #0f,#0f,#00,#00,#00,#00,#00,#00
.lb3e6 equ $ + 6
.lb3e5 equ $ + 5
.lb3e4 equ $ + 4
.lb3e2 equ $ + 2
.lb3e1 equ $ + 1
.lb3e0
	db #00,#00,#00,#3f,#00,#00,#00,#00
.lb3e8
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
.lb4a8
	db #0f,#0f,#11,#13,#15,#1c,#1e,#20
.lb4b7 equ $ + 7
	db #22,#24,#25,#26,#27,#28,#29,#80
	db #00,#03,#87,#00,#04,#87,#04,#07
	db #8a,#0c,#00,#00,#00,#00,#00,#00
	db #80,#07,#0c,#8f,#07,#0c,#90,#03
	db #07,#8c,#04,#07,#8c,#00,#8c,#00
	db #83,#00,#84,#00,#85,#00,#87,#00
	db #81
.lb4e1
	dw lb502,lb50b,lb512,lb524
	dw lb536,lb53e,lb546,lb555
	dw lb55e,lb56f,lb580,lb594
	dw lb5a5,lb5b6,lb5c6,lb5c9
.lb502 equ $ + 1
	db #02,#0c,#0d,#0e,#0f,#0e,#0d,#0c
.lb50b equ $ + 2
	db #87,#02,#0d,#0e,#0f,#0e,#0d,#87
.lb512 equ $ + 1
	db #01,#0f,#0e,#0d,#0b,#0d,#0c,#0a
	db #09,#0b,#0a,#08,#07,#09,#08,#06
.lb524 equ $ + 3
	db #05,#87,#01,#0f,#0f,#0d,#0b,#0d
	db #0c,#0a,#09,#0b,#0a,#08,#07,#09
.lb536 equ $ + 5
	db #08,#06,#05,#87,#01,#0c,#0d,#0f
.lb53e equ $ + 5
	db #0e,#0d,#0c,#87,#01,#0c,#0d,#0e
.lb546 equ $ + 5
	db #0d,#0c,#0b,#87,#08,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.lb555 equ $ + 4
	db #02,#01,#87,#04,#08,#09,#0a,#0b
.lb55e equ $ + 5
	db #0c,#0d,#0e,#87,#05,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.lb56f equ $ + 6
	db #04,#03,#02,#01,#87,#08,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.lb580 equ $ + 7
	db #05,#04,#03,#02,#01,#87,#02,#0c
	db #0d,#0e,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.lb594 equ $ + 3
	db #01,#87,#01,#0c,#0d,#0f,#0e,#0c
	db #0b,#09,#08,#07,#06,#05,#04,#03
.lb5a5 equ $ + 4
	db #02,#01,#87,#01,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.lb5b6 equ $ + 5
	db #03,#02,#01,#87,#01,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.lb5c6 equ $ + 5
	db #03,#02,#01,#87,#01,#0f,#87,#01
.lb5c9
	db #0c,#87
	ld hl,lb5d4
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb5d4
	inc bc
	ld e,l
	or a
	ld hl,lb3c9
	ld (hl),#00
	ld hl,lb914
	add a
	add l
	ld l,a
	jr nc,lb5e5
	inc h
.lb5e5
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lbb2d
.lb5ed
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb5ed
	ld a,(lbb2e)
	ld (lbb3b),a
	ld hl,(lbb2f)
	ld (lb3dc),hl
	ld a,(lbb33)
	bit 3,a
	jr nz,lb60a
	ld a,l
	ld (lb3e2),a
.lb60a
	ld a,(lbb38)
	ld (lbb3c),a
	ld a,(lbb3a)
	ld (lbb41),a
	ld a,(lbb37)
	ld hl,lbab4
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lbb3d),hl
	ld (lbb3f),hl
	ld a,(hl)
	ld (lb3e4),a
	ld hl,lb3c9
	inc (hl)
	ret
	ld hl,lb3ca
	ld (hl),#00
	ld hl,lb914
	add a
	add l
	ld l,a
	jr nc,lb640
	inc h
.lb640
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lbb42
.lb648
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb648
	ld a,(lbb43)
	ld (lbb50),a
	ld hl,(lbb44)
	ld (lb3de),hl
	ld a,(lbb48)
	bit 3,a
	jr nz,lb665
	ld a,l
	ld (lb3e2),a
.lb665
	ld a,(lbb4d)
	ld (lbb51),a
	ld a,(lbb4f)
	ld (lbb56),a
	ld a,(lbb4c)
	ld hl,lbab4
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lbb52),hl
	ld (lbb54),hl
	ld a,(hl)
	ld (lb3e5),a
	ld hl,lb3ca
	inc (hl)
	ret
	ld hl,lb3cb
	ld (hl),#00
	ld hl,lb914
	add a
	add l
	ld l,a
	jr nc,lb69b
	inc h
.lb69b
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lbb57
.lb6a3
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb6a3
	ld a,(lbb58)
	ld (lbb65),a
	ld hl,(lbb59)
	ld (lb3e0),hl
	ld a,(lbb5d)
	bit 3,a
	jr nz,lb6c0
	ld a,l
	ld (lb3e2),a
.lb6c0
	ld a,(lbb62)
	ld (lbb66),a
	ld a,(lbb64)
	ld (lbb6b),a
	ld a,(lbb61)
	ld hl,lbab4
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lbb67),hl
	ld (lbb69),hl
	ld a,(hl)
	ld (lb3e6),a
	ld hl,lb3cb
	inc (hl)
	ret
.lb6e8
	call lbb6c
	ld a,(lb3c9)
	and a
	call nz,lb7b0
	ld a,(lb3ca)
	and a
	call nz,lb862
	ld a,(lb3cb)
	and a
	ret z
	ld a,(lbb57)
	and a
	jr nz,lb70e
	ld a,(lbb63)
	and a
	jr nz,lb70e
	ld (lb3cb),a
	ret
.lb70e
	dec a
	ld (lbb57),a
	ld a,(lbb65)
	and a
	jr nz,lb746
	ld a,(lbb63)
	and a
	jr nz,lb724
	ld a,(lbb60)
	and a
	jr z,lb788
.lb724
	dec a
	ld (lbb60),a
	ld a,(lbb58)
	ld (lbb65),a
	ld a,(lbb5e)
	and a
	jr z,lb737
	ld a,(lbb89)
.lb737
	ld b,a
	ld a,(lbb59)
	add b
	ld (lb3e0),a
	ld a,(lbb5a)
	add b
	ld (lb3e1),a
.lb746
	ld hl,lbb65
	dec (hl)
	ld hl,lbb64
	ld a,(hl)
	and a
	jr z,lb758
	ld hl,lbb6b
	dec (hl)
	jr nz,lb77b
	ld (hl),a
.lb758
	ld a,(lbb5f)
	and a
	jr z,lb77b
	jp p,lb76e
	ld hl,(lb3e0)
	ld de,(lbb5b)
	add hl,de
	ld (lb3e0),hl
	jr lb77b
.lb76e
	ld hl,(lb3e0)
	ld de,(lbb5b)
	and a
	sbc hl,de
	ld (lb3e0),hl
.lb77b
	ld a,(lbb5d)
	bit 3,a
	jr nz,lb788
	ld a,(lb3e0)
	ld (lb3e2),a
.lb788
	ld a,(lbb66)
	dec a
	ld (lbb66),a
	jr nz,lb7af
	ld a,(lbb62)
	ld (lbb66),a
	ld hl,(lbb69)
	ld a,(hl)
	inc hl
	and a
	jp p,lb7a9
	cp #80
	jr nz,lb7af
	ld hl,(lbb67)
	ld a,(hl)
	inc hl
.lb7a9
	ld (lbb69),hl
	ld (lb3e6),a
.lb7af
	ret
.lb7b0
	ld a,(lbb2d)
	and a
	jr nz,lb7c0
	ld a,(lbb39)
	and a
	jr nz,lb7c0
	ld (lb3c9),a
	ret
.lb7c0
	dec a
	ld (lbb2d),a
	ld a,(lbb3b)
	and a
	jr nz,lb7f8
	ld a,(lbb39)
	and a
	jr nz,lb7d6
	ld a,(lbb36)
	and a
	jr z,lb83a
.lb7d6
	dec a
	ld (lbb36),a
	ld a,(lbb2e)
	ld (lbb3b),a
	ld a,(lbb34)
	and a
	jr z,lb7e9
	ld a,(lbb87)
.lb7e9
	ld b,a
	ld a,(lbb2f)
	add b
	ld (lb3dc),a
	ld a,(lbb30)
	add b
	ld (lb3dd),a
.lb7f8
	ld hl,lbb3b
	dec (hl)
	ld hl,lbb3a
	ld a,(hl)
	and a
	jr z,lb80a
	ld hl,lbb41
	dec (hl)
	jr nz,lb82d
	ld (hl),a
.lb80a
	ld a,(lbb35)
	and a
	jr z,lb82d
	jp p,lb820
	ld hl,(lb3dc)
	ld de,(lbb31)
	add hl,de
	ld (lb3dc),hl
	jr lb82d
.lb820
	ld hl,(lb3dc)
	ld de,(lbb31)
	and a
	sbc hl,de
	ld (lb3dc),hl
.lb82d
	ld a,(lbb33)
	bit 3,a
	jr nz,lb83a
	ld a,(lb3dc)
	ld (lb3e2),a
.lb83a
	ld a,(lbb3c)
	dec a
	ld (lbb3c),a
	jr nz,lb861
	ld a,(lbb38)
	ld (lbb3c),a
	ld hl,(lbb3f)
	ld a,(hl)
	inc hl
	and a
	jp p,lb85b
	cp #80
	jr nz,lb861
	ld hl,(lbb3d)
	ld a,(hl)
	inc hl
.lb85b
	ld (lbb3f),hl
	ld (lb3e4),a
.lb861
	ret
.lb862
	ld a,(lbb42)
	and a
	jr nz,lb872
	ld a,(lbb4e)
	and a
	jr nz,lb872
	ld (lb3ca),a
	ret
.lb872
	dec a
	ld (lbb42),a
	ld a,(lbb50)
	and a
	jr nz,lb8aa
	ld a,(lbb4e)
	and a
	jr nz,lb888
	ld a,(lbb4b)
	and a
	jr z,lb8ec
.lb888
	dec a
	ld (lbb4b),a
	ld a,(lbb43)
	ld (lbb50),a
	ld a,(lbb49)
	and a
	jr z,lb89b
	ld a,(lbb88)
.lb89b
	ld b,a
	ld a,(lbb44)
	add b
	ld (lb3de),a
	ld a,(lbb45)
	add b
	ld (lb3df),a
.lb8aa
	ld hl,lbb50
	dec (hl)
	ld hl,lbb4f
	ld a,(hl)
	and a
	jr z,lb8bc
	ld hl,lbb56
	dec (hl)
	jr nz,lb8df
	ld (hl),a
.lb8bc
	ld a,(lbb4a)
	and a
	jr z,lb8df
	jp p,lb8d2
	ld hl,(lb3de)
	ld de,(lbb46)
	add hl,de
	ld (lb3de),hl
	jr lb8df
.lb8d2
	ld hl,(lb3de)
	ld de,(lbb46)
	and a
	sbc hl,de
	ld (lb3de),hl
.lb8df
	ld a,(lbb48)
	bit 3,a
	jr nz,lb8ec
	ld a,(lb3de)
	ld (lb3e2),a
.lb8ec
	ld a,(lbb51)
	dec a
	ld (lbb51),a
	jr nz,lb913
	ld a,(lbb4d)
	ld (lbb51),a
	ld hl,(lbb54)
	ld a,(hl)
	inc hl
	and a
	jp p,lb90d
	cp #80
	jr nz,lb913
	ld hl,(lbb52)
	ld a,(hl)
	inc hl
.lb90d
	ld (lbb54),hl
	ld (lb3e5),a
.lb913
	ret
.lb914
	dw lb948,lb956,lb964,lb972
	dw lb980,lb98e,lb99c,lb9aa
	dw lb9b8,lb9c6,lb9d4,lb9e2
	dw lb9f0,lb9fe,lba0c,lba1a
	dw lba28,lba36,lba44,lba52
	dw lba60,lba6e,lba7c,lba8a
	dw lba98,lbaa6
.lb948
	db #ff,#00,#07,#00,#00,#00,#f6,#00
.lb956 equ $ + 6
	db #00,#ff,#04,#01,#ff,#00,#ff,#00
	db #06,#00,#00,#00,#f6,#00,#00,#ff
.lb964 equ $ + 4
	db #05,#01,#ff,#00,#ff,#02,#7f,#07
	db #01,#00,#f6,#00,#00,#ff,#07,#02
.lb972 equ $ + 2
	db #ff,#00,#ff,#04,#a0,#06,#20,#00
	db #fe,#00,#01,#63,#07,#02,#ff,#00
.lb980
	db #0f,#0f,#10,#00,#01,#00,#f7,#00
.lb98e equ $ + 6
	db #ff,#00,#00,#02,#00,#00,#28,#09
	db #1a,#00,#03,#00,#f6,#01,#ff,#0a
.lb99c equ $ + 4
	db #08,#04,#00,#00,#06,#63,#09,#05
	db #11,#00,#f6,#00,#ff,#00,#08,#01
.lb9aa equ $ + 2
	db #00,#00,#14,#06,#01,#02,#c8,#00
	db #f6,#00,#ff,#ff,#00,#02,#00,#00
.lb9b8
	db #1e,#ff,#00,#00,#01,#00,#f7,#00
.lb9c6 equ $ + 6
	db #ff,#00,#01,#01,#00,#00,#0f,#63
	db #70,#06,#09,#00,#fe,#00,#01,#63
.lb9d4 equ $ + 4
	db #08,#01,#00,#00,#0f,#02,#2b,#00
	db #00,#00,#f6,#00,#00,#00,#00,#01
.lb9e2 equ $ + 2
	db #00,#00,#02,#05,#08,#00,#00,#00
	db #f6,#00,#01,#63,#09,#01,#00,#00
.lb9f0
	db #05,#05,#09,#00,#00,#00,#f7,#00
.lb9fe equ $ + 6
	db #01,#63,#09,#01,#00,#00,#03,#05
	db #10,#00,#00,#00,#f7,#00,#01,#63
.lba0c equ $ + 4
	db #05,#01,#00,#00,#12,#05,#c7,#00
	db #20,#00,#f6,#00,#ff,#63,#00,#01
.lba1a equ $ + 2
	db #00,#00,#0c,#ff,#1f,#00,#01,#00
	db #f7,#00,#01,#63,#01,#01,#00,#02
.lba28
	db #3c,#03,#04,#00,#02,#00,#f7,#00
.lba36 equ $ + 6
	db #01,#0a,#00,#05,#00,#63,#32,#05
	db #c1,#00,#14,#00,#f6,#01,#ff,#ff
.lba44 equ $ + 4
	db #01,#02,#00,#00,#28,#03,#a1,#00
	db #14,#00,#f6,#00,#ff,#ff,#00,#03
.lba52 equ $ + 2
	db #00,#00,#1e,#03,#50,#00,#04,#00
	db #fe,#00,#ff,#63,#01,#01,#00,#00
.lba60
	db #5a,#04,#00,#00,#06,#00,#f7,#01
.lba6e equ $ + 6
	db #ff,#63,#00,#06,#00,#00,#96,#20
	db #00,#00,#01,#00,#f7,#00,#ff,#05
.lba7c equ $ + 4
	db #08,#0c,#00,#00,#14,#ff,#0a,#00
	db #03,#00,#f6,#00,#ff,#0a,#08,#02
.lba8a equ $ + 2
	db #00,#00,#14,#05,#c1,#00,#14,#00
	db #f6,#01,#ff,#ff,#00,#02,#00,#00
.lba98
	db #1e,#03,#40,#00,#03,#00,#fe,#00
.lbaa6 equ $ + 6
	db #ff,#63,#01,#01,#00,#00,#1e,#ff
	db #1f,#00,#01,#00,#f7,#00,#01,#63
	db #01,#01,#00,#04
.lbab4
	dw lbac8,lbad7,lbaf0,lbaf5
	dw lbb06,lbb0c,lbb11,lbb16
	dw lbb18,lbb27
.lbac8
	db #0f,#0e,#0d,#0b,#0a,#09,#08,#07
.lbad7 equ $ + 7
	db #06,#05,#04,#03,#02,#01,#ff,#06
	db #08,#0a,#0b,#0c,#0d,#0e,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.lbaf5 equ $ + 5
.lbaf0
	db #02,#06,#08,#00,#ff,#06,#08,#0a
	db #0b,#0c,#0b,#0a,#09,#08,#07,#06
.lbb06 equ $ + 6
	db #05,#04,#03,#02,#01,#ff,#01,#04
.lbb0c equ $ + 4
	db #07,#09,#0c,#80,#01,#05,#09,#0b
.lbb16 equ $ + 6
.lbb11 equ $ + 1
	db #80,#01,#04,#07,#09,#80,#0a,#80
.lbb18
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
.lbb27 equ $ + 7
	db #06,#05,#04,#03,#02,#01,#ff,#0e

.lbb2f equ $ + 7
.lbb2e equ $ + 6
.lbb2d equ $ + 5
	db #01,#0d,#01,#00,#ff,#00,#00,#00
.lbb37 equ $ + 7
.lbb36 equ $ + 6
.lbb35 equ $ + 5
.lbb34 equ $ + 4
.lbb33 equ $ + 3
.lbb31 equ $ + 1
.lbb30
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbb3f equ $ + 7
.lbb3d equ $ + 5
.lbb3c equ $ + 4
.lbb3b equ $ + 3
.lbb3a equ $ + 2
.lbb39 equ $ + 1
.lbb38
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbb46 equ $ + 6
.lbb45 equ $ + 5
.lbb44 equ $ + 4
.lbb43 equ $ + 3
.lbb42 equ $ + 2
.lbb41 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbb4f equ $ + 7
.lbb4e equ $ + 6
.lbb4d equ $ + 5
.lbb4c equ $ + 4
.lbb4b equ $ + 3
.lbb4a equ $ + 2
.lbb49 equ $ + 1
.lbb48
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbb57 equ $ + 7
.lbb56 equ $ + 6
.lbb54 equ $ + 4
.lbb52 equ $ + 2
.lbb51 equ $ + 1
.lbb50
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbb5f equ $ + 7
.lbb5e equ $ + 6
.lbb5d equ $ + 5
.lbb5b equ $ + 3
.lbb5a equ $ + 2
.lbb59 equ $ + 1
.lbb58
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbb67 equ $ + 7
.lbb66 equ $ + 6
.lbb65 equ $ + 5
.lbb64 equ $ + 4
.lbb63 equ $ + 3
.lbb62 equ $ + 2
.lbb61 equ $ + 1
.lbb60
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbb6b equ $ + 3
.lbb69 equ $ + 1
	db #00,#00,#00,#00
.lbb6c
	ld a,(lbb87)
	and #48
	adc #38
	sla a
	sla a
	ld hl,lbb8a
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.lbb8a equ $ + 3
.lbb89 equ $ + 2
.lbb88 equ $ + 1
.lbb87
	db #ff,#80,#1b,#34
.lbb8b
	db #37
	dw lbbae,lbbdc,lbc16
	db #40
	dw lbd83,lbd51,lbd9d
	db #20
	dw lbeac,lbe92,lbeb2
	db #2a
	dw lbf8c,lbf88,lbf8e
	db #31
	dw lbfb4,lbfae,lbfb8
.lbbae
	dw lbc40,lbc59
.lbbb2
	dw lbc5d,lbc5d
	dw lbc5d,lbc5d,lbc5d,lbc5d
	dw lbc5d,lbc5d,lbc5d,lbc5d
	dw lbc5d,lbc5d,lbc6c,lbc5d
	dw lbc6c,lbc65,lbc6c,lbc5d
	dw lbc6c,lbc65,#0000
.lbbdc
	dw lbc3e,lbc73
.lbbe0
	dw lbc77,lbc77
	dw lbc77,lbc77,lbc77,lbc77
	dw lbc77,lbc77,lbc77,lbc77
	dw lbc77,lbc77,lbca4,lbca4
	dw lbc77,lbca4,lbca4,lbc91
	dw lbc91,lbca4,lbca4,lbc77
	dw lbca4,lbca4,lbc91,lbc91
.lbc16 equ $ + 2
	dw #0000,lbc43,lbcb7
.lbc1a
	dw lbcbb
	dw lbcbb,lbce4,lbff0,lbce4
	dw lbd15,lbfed,lbd1a,lbff3
	dw lbcbb,lbcbb,lbce4,lbff0
	dw lbce4,lbd15,lbfed,lbd1a
	dw #0000
.lbc43 equ $ + 5
.lbc40 equ $ + 2
.lbc3e
	db #92,#f4,#88,#01,#01,#8a,#d0,#95
	db #0b,#e7,#13,#14,#95,#0c,#15,#14
	db #95,#0d,#13,#14,#95,#0e,#15,#16
.lbc5d equ $ + 7
.lbc59 equ $ + 3
	db #95,#0f,#87,#93
	dw lbbb2
	db #87,#d9
.lbc65 equ $ + 7
	db #eb,#18,#e1,#14,#f1,#13,#87,#eb
.lbc6c equ $ + 6
	db #13,#e1,#0e,#f1,#13,#87,#eb,#11
.lbc73 equ $ + 5
	db #e1,#0c,#f1,#11,#87,#93
	dw lbbe0
.lbc77 equ $ + 1
	db #87,#92,#00,#90,#88,#01,#01,#dd
	db #e1,#24,#24,#8c,#84,#14,#01,#30
	db #8a,#24,#24,#24,#8c,#84,#14,#01
.lbc91 equ $ + 3
	db #2b,#8a,#1f,#1f,#1f,#8c,#84,#14
	db #01,#30,#8a,#1f,#1f,#1f,#8c,#84
.lbca4 equ $ + 6
	db #14,#01,#2b,#8a,#1f,#87,#1d,#1d
	db #8c,#84,#14,#01,#2c,#8a,#1d,#1d
	db #1d,#8c,#84,#14,#01,#2c,#8a,#1d
.lbcbb equ $ + 5
.lbcb7 equ $ + 1
	db #87,#93
	dw lbc1a
	db #87,#dd,#88,#01
	db #01,#e1,#1f,#20,#20,#20,#8f,#1f
	db #1f,#1f,#1f,#22,#22,#22,#8f,#21
	db #21,#21,#2b,#2c,#2c,#2c,#8f,#2b
	db #2b,#2b,#2b,#2e,#2e,#2e,#8f,#2d
.lbce4 equ $ + 6
	db #2d,#2d,#88,#01,#01,#87,#d8,#e7
	db #24,#e3,#27,#e1,#2a,#e5,#2b,#e1
	db #26,#22,#1f,#22,#1f,#1a,#81,#d2
	db #e7,#4f,#50,#51,#50,#82,#d8,#e7
	db #24,#e3,#27,#e1,#20,#e5,#1f,#e1
	db #1a,#1f,#22,#1f,#22,#26,#81,#d2
.lbd15 equ $ + 7
	db #e7,#4f,#50,#51,#52,#82,#87,#88
.lbd1a equ $ + 4
	db #01,#01,#92,#f4,#d2,#e1,#29,#e3
	db #29,#e0,#29,#29,#d9,#e1,#29,#ed
	db #30,#e3,#31,#30,#81,#d2,#c9,#e7
	db #3f,#3e,#3c,#37,#c0,#82,#d2,#e1
	db #29,#e3,#29,#e0,#29,#29,#d9,#e1
	db #29,#f5,#30,#dc,#e1,#2b,#e3,#2b
	db #e0,#2b,#2b,#d9,#e1,#2b,#f5,#32
	db #92,#00,#87
.lbd51
	dw lbe21,lbe21,lbe21,lbe21
	dw lbe3b,lbe3b,lbe3b,lbe3b
	dw lbe4e,lbe4e,lbe4e,lbe4e
	dw lbe3b,lbe3b,lbe3b,lbe3b
	dw lbe21,lbe21,lbe21,lbe21
	dw lbe3b,lbe3b,lbe3b,lbe3b
.lbd83 equ $ + 2
	dw #0000,lbe61,lbe61,lbe61
	dw lbe61,lbe6c,lbe6c,lbe61
	dw lbe61,lbe61,lbe61,lbe61
.lbd9d equ $ + 4
	dw lbe61,#0000,lbe71,lbe71
	dw lbe71,lbe71,lbe84,lbe84
	dw lbe71,lbe71,lbe71,lbe71
	dw lbe71,lbe71,lbff0,lbe71
	dw lbe71,lbe71,lbe71,lbe84
	dw lbe84,lbe71,lbe71,lbe71
	dw lbe71,lbe71,lbe71,lbff3
	dw lbe71,lbe71,lbe71,lbe71
	dw lbe84,lbe84,lbe71,lbe71
	dw lbe71,lbe71,lbe71,lbe71
	dw lbff6,lbe71,lbe71,lbe71
	dw lbe71,lbe84,lbe84,lbe71
	dw lbe71,lbe71,lbe71,lbe71
	dw lbe71,lbff9,lbe71,lbe71
	dw lbe71,lbe71,lbe84,lbe84
	dw lbe71,lbe71,lbe71,lbe71
	dw lbe71,lbe71,lbffc,#0000
.lbe21
	db #8a,#90,#88,#01,#01,#d3,#e1,#13
	db #13,#8c,#84,#14,#01,#30,#8a,#13
	db #13,#13,#8c,#84,#14,#01,#2b,#8a
.lbe3b equ $ + 2
	db #13,#87,#0c,#0c,#8c,#84,#14,#01
	db #30,#8a,#18,#0c,#0c,#8c,#84,#14
.lbe4e equ $ + 5
	db #01,#2b,#8a,#18,#87,#0f,#0f,#8c
	db #84,#14,#01,#30,#8a,#1b,#0f,#0f
	db #8c,#84,#14,#01,#2b,#8a,#1b,#87
.lbe61
	db #8a,#88,#01,#01,#d5,#e7,#1f,#20
.lbe6c equ $ + 3
	db #21,#20,#87,#1b,#1c,#1d,#1c,#87
.lbe71
	db #8a,#88,#01,#01,#d3,#e1,#1f,#e3
	db #22,#1f,#22,#1f,#22,#1f,#e1,#22
.lbe84 equ $ + 3
	db #21,#22,#87,#e1,#25,#e3,#22,#25
	db #22,#25,#22,#25,#e1,#24,#25,#25
	db #87
.lbe92
	dw lbec6,lbee3,lbefa,lbec6
	dw lbec6,lbee3,lbf11,lbec6
	dw lbee3,lbf11,lbec6,lbec6
.lbeac equ $ + 2
	dw #0000,lbf2b,lbf2f,#0000
.lbeb2
	dw lbf28,lbf2f,lbff0,lbf28
	dw lbf2f,lbff3,lbf28,lbf2f
	dw lbfed,#0000
.lbec6
	db #8a,#90,#88,#01,#01,#d3,#e3,#11
	db #e1,#8c,#84,#14,#01,#30,#8a,#e1
	db #11,#e3,#11,#e1,#8c,#84,#14,#01
.lbee3 equ $ + 5
	db #2b,#8a,#e1,#11,#87,#e3,#0f,#e1
	db #8c,#84,#14,#01,#30,#8a,#e1,#0f
	db #e3,#0f,#e1,#8c,#84,#14,#01,#2b
.lbefa equ $ + 4
	db #8a,#e1,#0f,#87,#e3,#0d,#e1,#8c
	db #84,#14,#01,#30,#8a,#e1,#0d,#e3
	db #0d,#e1,#8c,#84,#14,#01,#2b,#8a
.lbf11 equ $ + 3
	db #e1,#0d,#87,#e3,#0c,#e1,#8c,#84
	db #14,#01,#30,#8a,#e1,#0c,#e3,#0c
	db #e1,#8c,#84,#14,#01,#2b,#8a,#e1
.lbf2b equ $ + 5
.lbf28 equ $ + 2
	db #0c,#87,#88,#01,#01,#8a,#d5,#92
.lbf2f equ $ + 1
	db #f4,#e1,#30,#e0,#2e,#30,#e1,#2e
	db #e0,#2d,#2e,#e3,#2d,#2b,#e1,#2e
	db #e0,#2d,#2e,#e1,#2d,#e0,#2b,#2d
	db #e3,#2b,#29,#e1,#2c,#e0,#2b,#2c
	db #e1,#2b,#e0,#29,#2b,#e3,#29,#27
	db #d6,#ef,#24,#d5,#e7,#2d,#e2,#32
	db #30,#e1,#32,#e5,#33,#e1,#32,#e3
	db #30,#2e,#eb,#2b,#e3,#29,#ef,#d6
	db #2d,#d5,#e5,#27,#e1,#27,#e2,#27
	db #26,#e1,#27,#e5,#28,#e1,#28,#e2
	db #28,#26,#e1,#24,#ff,#d6,#24,#92
	db #00,#87
.lbf8e equ $ + 6
.lbf8c equ $ + 4
.lbf88
	dw lbf90,lbf95,lbf93,lbf95
.lbf95 equ $ + 5
.lbf93 equ $ + 3
.lbf90
	db #92,#f4,#87,#92,#f9,#8a,#88,#01
	db #01,#dc,#90,#e1,#2b,#e0,#2c,#2c
	db #e1,#2c,#d8,#e3,#2c,#dc,#e1,#2b
	db #d8,#2b,#27,#e7,#24,#8e
.lbfb4 equ $ + 6
.lbfae
	dw lbfd2,lbfd8,#0000,lbfd5
.lbfb8 equ $ + 2
	dw #0000,lbfd8,lbfd8,lbff0
	dw lbfd8,lbfd8,lbff3,lbfd8
	dw lbfd8,lbff6,lbfd8,lbfd8
	dw lbfed,#0000
.lbfd8 equ $ + 6
.lbfd5 equ $ + 3
.lbfd2
	db #92,#f4,#87,#92,#fb,#90,#8a,#88
	db #01,#01,#dc,#e1,#1d,#e0,#20,#20
	db #e1,#20,#d8,#e3,#20,#dc,#e1,#1d
.lbff0 equ $ + 6
.lbfed equ $ + 3
	db #1d,#1d,#87,#89,#00,#87,#89,#01
.lbff9 equ $ + 7
.lbff6 equ $ + 4
.lbff3 equ $ + 1
	db #87,#89,#02,#87,#68,#00,#2a,#c1
.lbffc equ $ + 2
	db #04,#87,#89,#05,#87
;
.music_info
	db "Licence to Kill (1989)(Domark)(David Whittaker)",0
	db "",0

	read "music_end.asm"
