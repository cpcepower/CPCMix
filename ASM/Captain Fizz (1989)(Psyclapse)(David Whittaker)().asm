; Music of Captain Fizz (1989)(Psyclapse)(David Whittaker)()
; Ripped by Megachur the 05/01/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CAPTFIZZ.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #b159

	read "music_header.asm"
	
;
.init_music
;
	call lb38b
	ld b,#00
	ld hl,lbda2
	ld a,(hl)
	ld (lb22f),a
	ld (lb66d),a
	inc hl
	ld ix,lb1ae
	ld c,#22
	ld a,#03
.lb171
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
	jr nz,lb171
	ld (lb5a3),a
	dec a
	ld (lb66e),a
	ld (lb668),a
	ret
.lb1ae
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.lb1d0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.lb1f2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	ld a,(lb668)
	ld hl,lb669
	or (hl)
	inc hl
	or (hl)
	inc hl
	or (hl)
	ret z
	call lb938
	ld a,(lb668)
	and a
	jr z,lb27a
.lb22a equ $ + 1
	ld a,#00
	ld (lb276),a
.lb22f equ $ + 1
	ld a,#01
	ld hl,lb66e
	add (hl)
	ld (hl),a
	jr nc,lb24e
	ld b,#00
	ld ix,lb1ae
	call lb4b1
	ld ix,lb1d0
	call lb4b1
	ld ix,lb1f2
	call lb4b1
.lb24e
	ld ix,lb1ae
	call lb570
	ld (lb66f),hl
	ld (lb677),a
	ld ix,lb1d0
	call lb570
	ld (lb671),hl
	ld (lb678),a
	ld ix,lb1f2
	call lb570
	ld (lb673),hl
	ld (lb679),a
.lb276 equ $ + 1
	ld a,#00
	ld (lb675),a
.lb27a
	ld a,(lb668)
	and a
	jr nz,lb290
	ld (lb677),a
	ld (lb678),a
	ld (lb679),a
	ld a,#3f
	ld (lb676),a
	jr lb2b8
.lb290
	ld a,(lb66c)
	and #0f
	xor #0f
	jr z,lb2b8
	ld b,a
	ld a,(lb677)
	sub b
	jr nc,lb2a1
	xor a
.lb2a1
	ld (lb677),a
	ld a,(lb678)
	sub b
	jr nc,lb2ab
	xor a
.lb2ab
	ld (lb678),a
	ld a,(lb679)
	sub b
	jr nc,lb2b5
	xor a
.lb2b5
	ld (lb679),a
.lb2b9 equ $ + 1
.lb2b8
	ld a,#00
	xor #ff
	ld (lb2b9),a
	ld a,(lb669)
	and a
	jr z,lb2e7
	ld hl,(lb67c)
	ld (lb66f),hl
	ld a,(lbd4a)
	ld b,a
	bit 3,a
	jr nz,lb2d9
	ld a,(lb682)
	ld (lb675),a
.lb2d9
	ld hl,lb676
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(lb684)
	ld (lb677),a
.lb2e7
	ld a,(lb66a)
	and a
	jr z,lb311
	ld hl,(lb67e)
	ld (lb671),hl
	ld a,(lbd5f)
	ld b,a
	bit 3,a
	jr nz,lb301
	ld a,(lb682)
	ld (lb675),a
.lb301
	ld hl,lb676
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(lb685)
	ld (lb678),a
.lb311
	ld a,(lb66b)
	and a
	jr z,lb33d
	ld hl,(lb680)
	ld (lb673),hl
	ld a,(lbd74)
	ld b,a
	bit 3,a
	jr nz,lb32b
	ld a,(lb682)
.lb32a equ $ + 2
	ld (lb675),a
.lb32b
	ld hl,lb676
	ld a,(hl)
	or #24
	rlc b
	rlc b
	and b
	ld (hl),a
	ld a,(lb686)
	ld (lb679),a
.lb33d
	ld hl,lb679
	ld d,#0a
.lb342
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
	jp p,lb342
	ret
.lb363
	ld de,#0a00
.lb366
	call lb370
	dec d
	jp p,lb366
	ld de,#073f
.lb370
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
.lb38b
;
	xor a
	ld (lb668),a
	call lb39d
	xor a
	ld (lb677),a
	ld (lb678),a
	ld (lb679),a
	ret
.lb39d
	xor a
	ld (lb669),a
	ld (lb66a),a
	ld (lb66b),a
	jp lb363
	db #f1,#d5,#ce,#d8,#9b,#e0,#db,#32
	db #bb,#ac,#71,#5b,#83,#de,#27,#eb
	db #ec,#f1,#aa,#0a,#01
	ld a,(de)
	inc de
	ld (lb22f),a
	jp lb4bf
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
	jp lb4bf
	pop hl
	jp lb38b
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
	jr nz,lb405
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lb405
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp lb4bf
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,lb633
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp lb4bf
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,lb633
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp lb4bf
	ld hl,lb633
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr lb4bf
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr lb4bf
	ld a,(de)
	inc de
	ld (lb5a3),a
	jr lb4bf
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr lb4bf
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr lb4bf
	ld (ix+#1d),b
	jr lb4bf
	ld (ix+#1d),#c0
	jr lb4bf
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr lb4bf
	set 1,(ix+#00)
	jr lb4bf
	ld (ix+#13),b
	res 5,(ix+#00)
	jr lb4ee
	jr lb4ea
	ld (ix+#1f),#ff
	jr lb4bf
	ld (ix+#1f),b
	jr lb4bf
.lb4b1
	dec (ix+#10)
	jr nz,lb52c
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.lb4bf
	ld a,(de)
	inc de
	and a
	jp m,lb53d
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,lb4d1
	ld (lb22a),a
.lb4d1
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.lb4ea
	set 5,(ix+#00)
.lb4ee
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,lb52b
	ld a,(lb669)
	and a
	jr z,lb50d
	ld a,(lbd4a)
	bit 3,a
	jr z,lb52b
.lb50d
	ld a,(lb66a)
	and a
	jr z,lb51a
	ld a,(lbd5f)
	bit 3,a
	jr z,lb52b
.lb51a
	ld a,(lb66b)
	and a
	jr z,lb527
	ld a,(lbd74)
	bit 3,a
	jr z,lb52b
.lb527
	ld (ix+#1f),#ff
.lb52b
	ret
.lb52c
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,lb539
	inc (ix+#12)
	ret
.lb539
	dec (ix+#12)
	ret
.lb53d
	cp #c0
	jr c,lb568
	add #20
	jr c,lb549
	add #10
	jr c,lb550
.lb549
	inc a
	ld (ix+#11),a
	jp lb4bf
.lb550
	ld hl,lb748
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
	jp lb4bf
.lb568
	ld hl,lb32a
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb570
	ld c,(ix+#00)
	bit 5,c
	jr z,lb5a2
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,lb59c
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,lb59c
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.lb59c
	ld a,(ix+#18)
	ld (ix+#13),a
.lb5a3 equ $ + 1
.lb5a2
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld hl,lb688
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lb604
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lb5cd
	bit 0,c
	jr nz,lb5eb
.lb5cd
	bit 5,l
	jr nz,lb5dd
	sub (ix+#1b)
	jr nc,lb5e8
	set 5,(ix+#1d)
	sub a
	jr lb5e8
.lb5dd
	add (ix+#1b)
	cp b
	jr c,lb5e8
	res 5,(ix+#1d)
	ld a,b
.lb5e8
	ld (ix+#1c),a
.lb5eb
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lb5f6
	dec d
.lb5f6
	add #a0
	jr c,lb602
.lb5fa
	sla e
	rl d
	add #18
	jr nc,lb5fa
.lb602
	add hl,de
	ex de,hl
.lb604
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,lb62f
	ld b,(ix+#0e)
	djnz lb62c
	ld c,(ix+#0d)
	bit 7,c
	jr z,lb61b
	dec b
.lb61b
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr lb62f
.lb62c
	ld (ix+#0e),b
.lb62f
	cpl
	and #03
.lb633 equ $ + 1
	ld a,#38
	jr nz,lb640
	ld a,(lb22a)
	xor #08
	ld (lb276),a
	ld a,#07
.lb640
	ld hl,lb676
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,lb663
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (lb276),a
.lb663
	ex de,hl
	ld a,(ix+#13)
	ret
.lb66f equ $ + 7
.lb66e equ $ + 6
.lb66d equ $ + 5
.lb66c equ $ + 4
.lb66b equ $ + 3
.lb66a equ $ + 2
.lb669 equ $ + 1
.music_end
.lb668
	db #00,#00,#00,#00,#0f,#00,#00,#00
.lb677 equ $ + 7
.lb676 equ $ + 6
.lb675 equ $ + 5
.lb673 equ $ + 3
.lb671 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#3f,#0f
.lb67f equ $ + 7
.lb67e equ $ + 6
.lb67d equ $ + 5
.lb67c equ $ + 4
.lb679 equ $ + 1
.lb678
	db #0f,#0f,#00,#00,#00,#00,#00,#00
.lb686 equ $ + 6
.lb685 equ $ + 5
.lb684 equ $ + 4
.lb682 equ $ + 2
.lb681 equ $ + 1
.lb680
	db #00,#00,#00,#3f,#00,#00,#00,#00
.lb688
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
.lb748
	dw lb769,lb771,lb77d,lb78f
	dw lb7a1,lb7a8,lb7af,lb7c4
	dw lb7cd,lb7de,lb7ef,lb7ff
	dw lb810,lb813,lb816,lb819
.lb769 equ $ + 1
	db #01,#0f,#0d,#0b,#08,#05,#02,#87
.lb771 equ $ + 1
	db #01,#0e,#0d,#0b,#09,#07,#05,#04
.lb77d equ $ + 5
	db #03,#02,#01,#87,#01,#0f,#0e,#0d
	db #0b,#0d,#0c,#0a,#09,#0b,#0a,#08
.lb78f equ $ + 7
	db #07,#09,#08,#06,#05,#87,#01,#0f
	db #0f,#0d,#0b,#0d,#0c,#0a,#09,#0b
	db #0a,#08,#07,#09,#08,#06,#05,#87
.lb7a1 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#87,#01
.lb7af equ $ + 7
.lb7a8
	db #0e,#0d,#0c,#0b,#0a,#87,#01,#0e
	db #0d,#0c,#0b,#0a,#09,#01,#08,#01
	db #07,#01,#06,#01,#05,#01,#04,#01
.lb7c4 equ $ + 4
	db #02,#01,#87,#04,#08,#09,#0a,#0b
.lb7cd equ $ + 5
	db #0c,#0d,#0e,#87,#05,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.lb7de equ $ + 6
	db #04,#03,#02,#01,#87,#08,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.lb7ef equ $ + 7
	db #05,#04,#03,#02,#01,#87,#04,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.lb7ff equ $ + 7
	db #05,#04,#03,#02,#01,#87,#04,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#01
.lb816 equ $ + 6
.lb813 equ $ + 3
.lb810
	db #0c,#87,#01,#0d,#87,#01,#0e,#87
.lb819 equ $ + 1
	db #01,#0f,#87
	ld hl,lb824
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb824
	inc bc
	ld e,l
	or a
	ld hl,lb669
	ld (hl),#00
	ld hl,lbb64
	add a
	add l
	ld l,a
	jr nc,lb835
	inc h
.lb835
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lbd44
.lb83d
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb83d
	ld a,(lbd45)
	ld (lbd52),a
	ld hl,(lbd46)
	ld (lb67c),hl
	ld a,(lbd4a)
	bit 3,a
	jr nz,lb85a
	ld a,l
	ld (lb682),a
.lb85a
	ld a,(lbd4f)
	ld (lbd53),a
	ld a,(lbd51)
	ld (lbd58),a
	ld a,(lbd4e)
	ld hl,lbcc4
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lbd54),hl
	ld (lbd56),hl
	ld a,(hl)
	ld (lb684),a
	ld hl,lb669
	inc (hl)
	ret
	ld hl,lb66a
	ld (hl),#00
	ld hl,lbb64
	add a
	add l
	ld l,a
	jr nc,lb890
	inc h
.lb890
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lbd59
.lb898
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb898
	ld a,(lbd5a)
	ld (lbd67),a
	ld hl,(lbd5b)
	ld (lb67e),hl
	ld a,(lbd5f)
	bit 3,a
	jr nz,lb8b5
	ld a,l
	ld (lb682),a
.lb8b5
	ld a,(lbd64)
	ld (lbd68),a
	ld a,(lbd66)
	ld (lbd6d),a
	ld a,(lbd63)
	ld hl,lbcc4
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lbd69),hl
	ld (lbd6b),hl
	ld a,(hl)
	ld (lb685),a
	ld hl,lb66a
	inc (hl)
	ret
	ld hl,lb66b
	ld (hl),#00
	ld hl,lbb64
	add a
	add l
	ld l,a
	jr nc,lb8eb
	inc h
.lb8eb
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lbd6e
.lb8f3
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lb8f3
	ld a,(lbd6f)
	ld (lbd7c),a
	ld hl,(lbd70)
	ld (lb680),hl
	ld a,(lbd74)
	bit 3,a
	jr nz,lb910
	ld a,l
	ld (lb682),a
.lb910
	ld a,(lbd79)
	ld (lbd7d),a
	ld a,(lbd7b)
	ld (lbd82),a
	ld a,(lbd78)
	ld hl,lbcc4
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lbd7e),hl
	ld (lbd80),hl
	ld a,(hl)
	ld (lb686),a
	ld hl,lb66b
	inc (hl)
	ret
.lb938
	call lbd83
	ld a,(lb669)
	and a
	call nz,lba00
	ld a,(lb66a)
	and a
	call nz,lbab2
	ld a,(lb66b)
	and a
	ret z
	ld a,(lbd6e)
	and a
	jr nz,lb95e
	ld a,(lbd7a)
	and a
	jr nz,lb95e
	ld (lb66b),a
	ret
.lb95e
	dec a
	ld (lbd6e),a
	ld a,(lbd7c)
	and a
	jr nz,lb996
	ld a,(lbd7a)
	and a
	jr nz,lb974
	ld a,(lbd77)
	and a
	jr z,lb9d8
.lb974
	dec a
	ld (lbd77),a
	ld a,(lbd6f)
	ld (lbd7c),a
	ld a,(lbd75)
	and a
	jr z,lb987
	ld a,(lbda0)
.lb987
	ld b,a
	ld a,(lbd70)
	add b
	ld (lb680),a
	ld a,(lbd71)
	add b
	ld (lb681),a
.lb996
	ld hl,lbd7c
	dec (hl)
	ld hl,lbd7b
	ld a,(hl)
	and a
	jr z,lb9a8
	ld hl,lbd82
	dec (hl)
	jr nz,lb9cb
	ld (hl),a
.lb9a8
	ld a,(lbd76)
	and a
	jr z,lb9cb
	jp p,lb9be
	ld hl,(lb680)
	ld de,(lbd72)
	add hl,de
	ld (lb680),hl
	jr lb9cb
.lb9be
	ld hl,(lb680)
	ld de,(lbd72)
	and a
	sbc hl,de
	ld (lb680),hl
.lb9cb
	ld a,(lbd74)
	bit 3,a
	jr nz,lb9d8
	ld a,(lb680)
	ld (lb682),a
.lb9d8
	ld a,(lbd7d)
	dec a
	ld (lbd7d),a
	jr nz,lb9ff
	ld a,(lbd79)
	ld (lbd7d),a
	ld hl,(lbd80)
	ld a,(hl)
	inc hl
	and a
	jp p,lb9f9
	cp #80
	jr nz,lb9ff
	ld hl,(lbd7e)
	ld a,(hl)
	inc hl
.lb9f9
	ld (lbd80),hl
	ld (lb686),a
.lb9ff
	ret
.lba00
	ld a,(lbd44)
	and a
	jr nz,lba10
	ld a,(lbd50)
	and a
	jr nz,lba10
	ld (lb669),a
	ret
.lba10
	dec a
	ld (lbd44),a
	ld a,(lbd52)
	and a
	jr nz,lba48
	ld a,(lbd50)
	and a
	jr nz,lba26
	ld a,(lbd4d)
	and a
	jr z,lba8a
.lba26
	dec a
	ld (lbd4d),a
	ld a,(lbd45)
	ld (lbd52),a
	ld a,(lbd4b)
	and a
	jr z,lba39
	ld a,(lbd9e)
.lba39
	ld b,a
	ld a,(lbd46)
	add b
	ld (lb67c),a
	ld a,(lbd47)
	add b
	ld (lb67d),a
.lba48
	ld hl,lbd52
	dec (hl)
	ld hl,lbd51
	ld a,(hl)
	and a
	jr z,lba5a
	ld hl,lbd58
	dec (hl)
	jr nz,lba7d
	ld (hl),a
.lba5a
	ld a,(lbd4c)
	and a
	jr z,lba7d
	jp p,lba70
	ld hl,(lb67c)
	ld de,(lbd48)
	add hl,de
	ld (lb67c),hl
	jr lba7d
.lba70
	ld hl,(lb67c)
	ld de,(lbd48)
	and a
	sbc hl,de
	ld (lb67c),hl
.lba7d
	ld a,(lbd4a)
	bit 3,a
	jr nz,lba8a
	ld a,(lb67c)
	ld (lb682),a
.lba8a
	ld a,(lbd53)
	dec a
	ld (lbd53),a
	jr nz,lbab1
	ld a,(lbd4f)
	ld (lbd53),a
	ld hl,(lbd56)
	ld a,(hl)
	inc hl
	and a
	jp p,lbaab
	cp #80
	jr nz,lbab1
	ld hl,(lbd54)
	ld a,(hl)
	inc hl
.lbaab
	ld (lbd56),hl
	ld (lb684),a
.lbab1
	ret
.lbab2
	ld a,(lbd59)
	and a
	jr nz,lbac2
	ld a,(lbd65)
	and a
	jr nz,lbac2
	ld (lb66a),a
	ret
.lbac2
	dec a
	ld (lbd59),a
	ld a,(lbd67)
	and a
	jr nz,lbafa
	ld a,(lbd65)
	and a
	jr nz,lbad8
	ld a,(lbd62)
	and a
	jr z,lbb3c
.lbad8
	dec a
	ld (lbd62),a
	ld a,(lbd5a)
	ld (lbd67),a
	ld a,(lbd60)
	and a
	jr z,lbaeb
	ld a,(lbd9f)
.lbaeb
	ld b,a
	ld a,(lbd5b)
	add b
	ld (lb67e),a
	ld a,(lbd5c)
	add b
	ld (lb67f),a
.lbafa
	ld hl,lbd67
	dec (hl)
	ld hl,lbd66
	ld a,(hl)
	and a
	jr z,lbb0c
	ld hl,lbd6d
	dec (hl)
	jr nz,lbb2f
	ld (hl),a
.lbb0c
	ld a,(lbd61)
	and a
	jr z,lbb2f
	jp p,lbb22
	ld hl,(lb67e)
	ld de,(lbd5d)
	add hl,de
	ld (lb67e),hl
	jr lbb2f
.lbb22
	ld hl,(lb67e)
	ld de,(lbd5d)
	and a
	sbc hl,de
	ld (lb67e),hl
.lbb2f
	ld a,(lbd5f)
	bit 3,a
	jr nz,lbb3c
	ld a,(lb67e)
	ld (lb682),a
.lbb3c
	ld a,(lbd68)
	dec a
	ld (lbd68),a
	jr nz,lbb63
	ld a,(lbd64)
	ld (lbd68),a
	ld hl,(lbd6b)
	ld a,(hl)
	inc hl
	and a
	jp p,lbb5d
	cp #80
	jr nz,lbb63
	ld hl,(lbd69)
	ld a,(hl)
	inc hl
.lbb5d
	ld (lbd6b),hl
	ld (lb685),a
.lbb63
	ret
.lbb64
	dw lbb90,lbb9e,lbbac,lbbba
	dw lbbc8,lbbd6,lbbe4,lbbf2
	dw lbc00,lbc0e,lbc1c,lbc2a
	dw lbc38,lbc46,lbc54,lbc62
	dw lbc70,lbc7e,lbc8c,lbc9a
	dw lbca8,lbcb6
.lbb90
	db #0c,#63,#00,#01,#0b,#00,#fe,#00
.lbb9e equ $ + 6
	db #ff,#63,#08,#01,#00,#00,#02,#05
	db #0f,#00,#00,#00,#f7,#00,#01,#63
.lbbac equ $ + 4
	db #07,#01,#00,#00,#4f,#08,#08,#00
	db #16,#00,#fe,#00,#ff,#63,#08,#04
.lbbba equ $ + 2
	db #00,#00,#0a,#63,#80,#00,#0b,#00
	db #fe,#00,#01,#00,#08,#02,#00,#00
.lbbc8
	db #32,#06,#00,#00,#03,#00,#f7,#00
.lbbd6 equ $ + 6
	db #ff,#63,#00,#03,#00,#00,#0a,#01
	db #0c,#07,#00,#00,#f6,#01,#00,#ff
.lbbe4 equ $ + 4
	db #04,#01,#00,#00,#1e,#06,#70,#02
	db #10,#00,#fe,#00,#01,#63,#06,#02
.lbbf2 equ $ + 2
	db #00,#00,#1e,#06,#f0,#01,#10,#00
	db #fe,#00,#01,#63,#06,#02,#00,#00
.lbc00
	db #1e,#06,#80,#01,#10,#00,#fe,#00
.lbc0e equ $ + 6
	db #01,#63,#06,#02,#00,#00,#1e,#06
	db #40,#01,#20,#00,#fe,#00,#01,#63
.lbc1c equ $ + 4
	db #06,#02,#00,#00,#28,#ff,#32,#00
	db #06,#00,#fe,#00,#ff,#0a,#08,#02
.lbc2a equ $ + 2
	db #00,#00,#64,#07,#0a,#04,#10,#00
	db #f6,#00,#01,#0a,#08,#06,#00,#00
.lbc38
	db #64,#09,#08,#04,#68,#00,#f6,#01
.lbc46 equ $ + 6
	db #01,#63,#08,#07,#00,#00,#0b,#05
	db #0f,#00,#04,#00,#f6,#00,#01,#0a
.lbc54 equ $ + 4
	db #00,#01,#00,#00,#1e,#06,#20,#00
	db #03,#00,#fe,#00,#01,#63,#00,#02
.lbc62 equ $ + 2
	db #00,#00,#14,#0a,#1f,#00,#02,#00
	db #f6,#00,#01,#63,#08,#02,#00,#00
.lbc70
	db #1e,#05,#0a,#00,#4b,#00,#fe,#00
.lbc7e equ $ + 6
	db #ff,#ff,#00,#03,#00,#00,#32,#03
	db #a1,#00,#14,#00,#f6,#00,#ff,#ff
.lbc8c equ $ + 4
	db #00,#04,#00,#00,#32,#0a,#0a,#00
	db #03,#00,#f6,#01,#ff,#0a,#00,#04
.lbc9a equ $ + 2
	db #00,#00,#1e,#ff,#0f,#00,#01,#00
	db #f7,#00,#01,#63,#01,#01,#00,#02
.lbca8
	db #ff,#00,#03,#00,#00,#00,#f6,#00
.lbcb6 equ $ + 6
	db #00,#ff,#04,#01,#ff,#00,#c8,#20
	db #00,#00,#01,#00,#f7,#00,#ff,#05
.lbcc4 equ $ + 4
	db #00,#0c,#00,#00,#d6,#bc,#e6,#bc
	db #ff,#bc,#0f,#bd,#17,#bd,#1b,#bd
	db #21,#bd,#23,#bd,#35,#bd,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#01,#ff,#06,#08
	db #0a,#0b,#0c,#0d,#0e,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0b,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#ff,#06
	db #08,#0a,#0b,#0c,#0d,#0c,#0b,#0a
	db #08,#06,#04,#03,#02,#01,#ff,#0d
	db #0b,#09,#07,#05,#04,#03,#ff,#0e
	db #01,#00,#80,#01,#04,#07,#09,#0c
	db #80,#0d,#80,#0f,#0f,#0e,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
	db #04,#03,#02,#01,#ff,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.lbd47 equ $ + 7
.lbd46 equ $ + 6
.lbd45 equ $ + 5
.lbd44 equ $ + 4
	db #03,#02,#01,#ff,#00,#00,#00,#00
.lbd4f equ $ + 7
.lbd4e equ $ + 6
.lbd4d equ $ + 5
.lbd4c equ $ + 4
.lbd4b equ $ + 3
.lbd4a equ $ + 2
.lbd48
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd56 equ $ + 6
.lbd54 equ $ + 4
.lbd53 equ $ + 3
.lbd52 equ $ + 2
.lbd51 equ $ + 1
.lbd50
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd5f equ $ + 7
.lbd5d equ $ + 5
.lbd5c equ $ + 4
.lbd5b equ $ + 3
.lbd5a equ $ + 2
.lbd59 equ $ + 1
.lbd58
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd67 equ $ + 7
.lbd66 equ $ + 6
.lbd65 equ $ + 5
.lbd64 equ $ + 4
.lbd63 equ $ + 3
.lbd62 equ $ + 2
.lbd61 equ $ + 1
.lbd60
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd6f equ $ + 7
.lbd6e equ $ + 6
.lbd6d equ $ + 5
.lbd6b equ $ + 3
.lbd69 equ $ + 1
.lbd68
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd77 equ $ + 7
.lbd76 equ $ + 6
.lbd75 equ $ + 5
.lbd74 equ $ + 4
.lbd72 equ $ + 2
.lbd71 equ $ + 1
.lbd70
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd7e equ $ + 6
.lbd7d equ $ + 5
.lbd7c equ $ + 4
.lbd7b equ $ + 3
.lbd7a equ $ + 2
.lbd79 equ $ + 1
.lbd78
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd82 equ $ + 2
.lbd80
	db #00,#00,#00
.lbd83
	ld a,(lbd9e)
	and #48
	adc #38
	sla a
	sla a
	ld hl,lbda1
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.lbda1 equ $ + 3
.lbda0 equ $ + 2
.lbd9f equ $ + 1
.lbd9e
	db #ff,#80,#1b,#34
.lbda2
	db #2c
.lbda9 equ $ + 6
	dw lbe11,lbda9,lbe77,lbecf
	dw lbed7,lbed7,lbed7,lbed7
	dw lbed7,lbed7,lbed7,lbed7
	dw lbed7,lbed7,lbed7,lbed7
	dw lbed7,lbed7,lbed7,lbed7
	dw lbed7,lbed7,lbed7,lbed7
	dw lbed7,lbed7,lbed7,lbed7
	dw lbed7,lbed7,lbed7,lbed7
	dw lbed7,lbed7,lbed7,lbed7
	dw lbed7,lbed7,lbed7,lbed7
	dw lbed7,lbed7,lbed7,lbed7
	dw lbed7,lbed7,lbed7,lbed7
	dw lbed7,lbed7,lbed7,lbed7
.lbe11 equ $ + 6
	dw lbed7,lbed7,#0000,lbefe
	dw lbf04,lbf13,lbf13,lbf13
	dw lbf13,lbf13,lbf13,lbf13
	dw lbf13,lbf13,lbf13,lbf13
	dw lbf13,lbf13,lbf13,lbf13
	dw lbf13,lbf13,lbf13,lbf13
	dw lbf13,lbf13,lbf13,lbf13
	dw lbf13,lbf13,lbf13,lbf13
	dw lbf13,lbf13,lbf13,lbf13
	dw lbf13,lbf13,lbf13,lbf13
	dw lbf13,lbf13,lbf13,lbf13
	dw lbf13,lbf13,lbf13,lbf13
	dw lbf13,lbf13,lbf13,lbf13
.lbe77 equ $ + 4
	dw lbf13,#0000,lbf34,lbf3c
	dw lbf3c,lbf42,lbf42,lbf5e
	dw lbf5e,lbf8d,lbf8d,lbf8d
	dw lbf8d,lbfa5,lbfa5,lbf8d
	dw lbf8d,lbf8d,lbf8d,lbfa5
	dw lbff3,lbfcf,lbfa5,lbf8d
	dw lbf8d,lbf42,lbf42,lbf5e
	dw lbf5e,lbf8d,lbf8d,lbf8d
	dw lbf8d,lbfa5,lbfa5,lbf8d
	dw lbf8d,lbf8d,lbf8d,lbfa5
	dw lbff3,lbfcf,lbfa5,lbf8d
	dw lbf8d,#0000
.lbecf
	db #8a,#88,#01,#01,#d7,#ff,#0c,#87
.lbed7
	db #90,#88,#01,#01,#d3,#e0,#0c,#0c
	db #18,#18,#0c,#0c,#18,#18,#0c,#0c
	db #18,#18,#0c,#0c,#18,#18,#0c,#0c
	db #18,#18,#0c,#0c,#18,#18,#0c,#0c
.lbefe equ $ + 7
	db #18,#18,#0c,#0c,#18,#18,#87,#8a
.lbf04 equ $ + 5
	db #81,#d7,#ff,#18,#87,#8b,#d1,#e3
	db #3f,#8d,#3f,#3f,#8d,#3f,#3f,#8d
.lbf13 equ $ + 4
	db #3f,#3f,#8d,#3f,#8b,#d1,#e3,#3f
	db #8d,#3f,#3f,#8d,#3f,#3f,#8d,#3f
	db #3f,#d2,#e0,#8c,#84,#14,#01,#30
	db #84,#14,#01,#30,#84,#14,#01,#30
.lbf34 equ $ + 5
	db #84,#14,#01,#30,#87,#8a,#88,#01
.lbf3c equ $ + 5
	db #01,#d7,#ff,#18,#87,#8a,#dc,#ff
.lbf42 equ $ + 3
	db #0c,#8f,#87,#8b,#d1,#e1,#2f,#2f
	db #2f,#e0,#2f,#e1,#2f,#2f,#e0,#2f
	db #e3,#2f,#e1,#2f,#2f,#2f,#e0,#2f
.lbf5e equ $ + 7
	db #2f,#e1,#2f,#2f,#e3,#2f,#87,#8a
	db #d1,#e0,#84,#14,#01,#30,#84,#14
	db #01,#2f,#84,#14,#01,#2e,#84,#14
	db #01,#2d,#84,#14,#01,#2c,#84,#14
	db #01,#2b,#84,#14,#01,#2a,#e1,#84
	db #14,#01,#29,#e2,#84,#14,#01,#28
.lbf8d equ $ + 6
	db #e3,#84,#14,#01,#27,#87,#8a,#d8
	db #81,#e1,#0c,#e5,#18,#e1,#0c,#e5
	db #18,#e1,#0c,#e3,#18,#e5,#d9,#0c
.lbfa5 equ $ + 6
	db #e3,#84,#1e,#01,#24,#87,#8a,#d4
	db #88,#01,#01,#e0,#30,#30,#e1,#30
	db #34,#e0,#30,#e1,#35,#e2,#80,#df
	db #e3,#84,#0f,#01,#1c,#d4,#e0,#30
	db #30,#e1,#30,#34,#e0,#30,#e1,#35
	db #e2,#80,#df,#e3,#84,#0f,#01,#1c
.lbfcf
	db #d4,#e0,#30,#30,#e1,#30,#34,#e0
	db #30,#e1,#35,#e0,#80,#e1,#30,#34
	db #e0,#30,#e1,#35,#e0,#80,#d8,#e5
	db #30,#df,#e3,#84,#0f,#01,#1c,#84
.lbff3 equ $ + 4
	db #0f,#01,#1c,#87,#de,#e5,#30,#34
	db #e3,#80,#e5,#30,#33,#e3,#80,#87
;
.music_info
	db "Captain Fizz (1989)(Psyclapse)(David Whittaker)",0
	db "",0

	read "music_end.asm"