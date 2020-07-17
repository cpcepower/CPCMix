; Music of Thunder Cats (1987)(Elite System Ltd)(David Whittaker)()
; Ripped by Megachur the 28/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THUNDERC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #b306

	read "music_header.asm"

	jp lb31c	; init &b306
	jp lb3c8	; play &b309
	jp lb315	; stop &b309
	jp lbdb4	; init sound fx ?
	jp lbe0b	; ?
;
.stop_music
.lb315
;
	xor a
	ld (lb7fc),a
	jp lb445
;
.init_music	
.lb31c
;
	xor a
	ld b,#00
	ld hl,lb7fd
	ld ix,lb361
	ld c,#22
	ld a,#03
.lb32a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#03),e
	ld (ix+#04),d
	ld (ix+#20),b
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
	jr nz,lb32a
	inc a
	ld (lb3c7),a
	ld (lb7fc),a
	ret
.lb361
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.lb383
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.lb3a5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
.lb3c7
	db #00
;
.play_music	
.lb3c8
;
	ld a,(lb7fc)
	and a
	ret z
.lb3ce equ $ + 1
	ld a,#00
	ld (lb41b),a
	ld hl,lb3c7
	dec (hl)
	jr nz,lb3f3
	ld b,(hl)
	ld ix,lb361
	call lb54f
	ld ix,lb383
	call lb54f
	ld ix,lb3a5
.lb3ed equ $ + 2
	call lb54f
	ld hl,lb3c7
.lb3f2 equ $ + 1
	ld (hl),#01
.lb3f3
	ld ix,lb361
	call lb605
	ld (lb728),hl
	ld (lb730),a
	ld ix,lb383
	call lb605
	ld (lb72a),hl
	ld (lb731),a
	ld ix,lb3a5
	call lb605
	ld (lb72c),hl
	ld (lb732),a
.lb41b equ $ + 1
	ld a,#00
	ld (lb72e),a
	ld hl,lb733
	ld d,#0b
.lb424
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
	jp p,lb424
	ret
.lb445
	ld de,#0d00	; original is ld de,#d000 should be ld de,&0d00 !!!
.lb448
	call lb452
	dec d
	jp p,lb448
	ld de,#073f
.lb452
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
	db #cd
	db #b5
	db #b9
	db #be
	db #7c
	db #ab
	db #a6
	db #13
	db #95
	db #8d
	db #52
	db #3c
	db #64
	db #ba
	db #04
	db #c1
	db #c6
	db #cb
	xor a
	ld (lb7fc),a
	pop hl
	jp lb445
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
	jr nz,lb4a9
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lb4a9
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp lb561
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,lb70d
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp lb561
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,lb70d
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp lb561
	ld hl,lb70d
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr lb561
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr lb561
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr lb561
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr lb561
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr lb561
	ld (ix+#1d),b
	jr lb561
	ld (ix+#1d),#40
	jr lb561
	ld (ix+#1d),#c0
	jr lb561
	set 1,(ix+#00)
	jr lb561
	ld (ix+#13),b
	res 5,(ix+#00)
	jr lb597
	set 4,(ix+#00)
	jr lb561
	set 0,(ix+#1f)
	jr lb561
.lb54f
	dec (ix+#10)
	jr nz,lb5a4
	ld (ix+#00),b
	res 0,(ix+#1f)
	ld e,(ix+#01)
	ld d,(ix+#02)
.lb561
	ld a,(de)
	inc de
	and a
	jp m,lb5b5
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,lb573
	ld (lb3ce),a
.lb573
	bit 4,(ix+#00)
	jr nz,lb597
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	res 4,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.lb597
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.lb5a4
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,lb5b1
	inc (ix+#12)
	ret
.lb5b1
	dec (ix+#12)
	ret
.lb5b5
	cp #b8
	jr c,lb5fd
	add #20
	jr c,lb5e1
	add #10
	jr c,lb5e8
	add #10
	jr nc,lb5da
	ld c,a
	ld hl,lb7dd
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr lb561
.lb5da
	add #09
	ld (lb3f2),a
	jr lb561
.lb5e1
	inc a
	ld (ix+#11),a
	jp lb561
.lb5e8
	ld (ix+#19),a
	ld a,(de)
	inc de
	ld (ix+#14),a
	ld a,(de)
	inc de
	ld (ix+#15),a
	ld a,(de)
	inc de
	ld (ix+#17),a
	jp lb561
.lb5fd
	ld hl,lb3ed
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb605
	ld c,(ix+#00)
	bit 5,c
	jr z,lb650
	ld a,(ix+#16)
	sub #10
	jr nc,lb638
	bit 6,c
	jr z,lb63d
	add (ix+#13)
	jr nc,lb61d
	sbc a
.lb61d
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,lb633
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr lb650
.lb633
	ld (ix+#18),a
	jr lb650
.lb638
	ld (ix+#16),a
	jr lb650
.lb63d
	cpl
	sub #0f
	add (ix+#13)
	jr c,lb646
	sub a
.lb646
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,lb650
	res 5,c
.lb650
	ld a,(ix+#20)
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,lb669
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.lb669
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,lb735
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lb6cb
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lb694
	bit 0,c
	jr nz,lb6b2
.lb694
	bit 5,l
	jr nz,lb6a4
	sub (ix+#1b)
	jr nc,lb6af
	set 5,(ix+#1d)
	sub a
	jr lb6af
.lb6a4
	add (ix+#1b)
	cp b
	jr c,lb6af
	res 5,(ix+#1d)
	ld a,b
.lb6af
	ld (ix+#1c),a
.lb6b2
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lb6bd
	dec d
.lb6bd
	add #a0
	jr c,lb6c9
.lb6c1
	sla e
	rl d
	add #18
	jr nc,lb6c1
.lb6c9
	add hl,de
	ex de,hl
.lb6cb
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,lb6f6
	ld b,(ix+#0e)
	djnz lb6f3
	ld c,(ix+#0d)
	bit 7,c
	jr z,lb6e2
	dec b
.lb6e2
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr lb6f6
.lb6f3
	ld (ix+#0e),b
.lb6f6
	bit 0,(ix+#1f)
	jr z,lb709
	res 0,(ix+#1f)
	ld a,#00
	ld (lb41b),a
	ld a,#07
	jr lb71a
.lb709
	cpl
	and #03
.lb70d equ $ + 1
	ld a,#38
	jr nz,lb71a
	ld a,(lb3ce)
	xor #08
	ld (lb41b),a
	ld a,#07
.lb71a
	ld hl,lb72f
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.lb72f equ $ + 7
.lb72e equ $ + 6
.lb72c equ $ + 4
.lb72a equ $ + 2
.lb728
	db #00,#00,#00,#00,#00,#00,#00,#3f
.lb730
	db #0f
.lb731
	db #0f
.lb732
	db #0f
.lb733
	db #00,#00
.lb735
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
.lb7dd
	db #06,#07,#09,#0b,#0d,#0f,#00,#87
	db #00,#04,#87,#00,#03,#87,#00,#05
	db #87,#00,#02,#87,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#87
.music_end
.lb7fc
	db #00
.lb7fd
	dw lb803,lb87f,lb883
.lb803
	dw lb98e,lb98e,lb98e,lb98e
	dw lb9c5,lb98e,lb9c5,lb9f7
	dw lba23,lba50,lba78,lba9f
	dw lba23,lba50,lba78,lba9f
	dw lbac9,lbac9,lbaf1,lbaf1
	dw lbba5,lbba5,lbbbf,lbba5
	dw lbba5,lbbbf,lb98b,lbba5
	dw lbba5,lb982,lbbcc,lb98b
	dw lbba5,lbba5,lb982,lbbd9
	dw lbbe6,lbbe6,lbbe6,lb985
	dw lbba5,lbba5,lb988,lbbbf
	dw lb985,lbba5,lbba5,lb982
	dw lbbd9,lba9f,lbac9,lba50
	dw lba78,lba9f,lbac9,lba50
	dw lba78,lb97f,lb9f7,lb9f7
	dw lb982,#0000
.lb87f
	dw lbd11,#0000
.lb883
	dw lbbf0,lbbf0,lbbf0,lbc06
	dw lbbf0,lbbf0,lbbf0,lbc06
	dw lbcac,lbcac,lbcac,lbc16
	dw lbcac,lbcac,lbcac,lbc16
	dw lbcac,lbc52,lbc34,lbcac
	dw lbcac,lbc52,lbc16,lbc16
	dw lbcac,lbcac,lbcac,lbc16
	dw lbcac,lbc52,lbc34,lbcac
	dw lbcac,lbc52,lbc16,lbc16
	dw lbcac,lbcee,lbc34,lbc52
	dw lbc70,lbc8e,lbc16,lbc16
	dw lbcac,lbcac,lbc8e,lbc8e
	dw lbc16,lbc16,lbcee,lbcee
	dw lbcac,lbcac,lbc8e,lbc8e
	dw lbc16,lbc16,lbcee,lbcee
	dw lbc34,lbc34,lbc34,lbc34
	dw lbb95,lbb95,lbc34,lbc34
	dw lbcac,lbcac,lbc34,lbc34
	dw lbcac,lbcac,lbcd0,lbcd0
	dw lbcee,lbcee,lbcd0,lbcd0
	dw lbc16,lbc16,lbdb0,lbdb0
	dw lbaf1,lbcac,lbcee,lbc34
	dw lbc52,lbc70,lbc8e,lbc16
	dw lbc16,lbcac,lbcee,lbc34
	dw lbc52,lbc70,lbc8e,lbc16
	dw lbc16,lbcac,lbcee,lbc34
	dw lbc52,lbc70,lbc8e,lbc16
	dw lbc16,lbcac,lbcee,lbc34
	dw lbc52,lbc70,lbc8e,lbc16
	dw lbc16,lbcac,lbcee,lbc34
	dw lbc52,lbc70,lbc8e,lbc16
	dw lbc16,#0000
.lb97f
	db #89,#0c,#87
.lb982
	db #89,#00,#87
.lb985
	db #89,#02,#87
.lb988
	db #89,#03,#87
.lb98b
	db #89,#07,#87
.lb98e
	db #bc,#c2,#8a,#df,#00,#01,#05,#e0
	db #33,#33,#33,#33,#e1,#33,#e5,#33
	db #e1,#32,#e1,#33,#e0,#35,#35,#35
	db #35,#e1,#35,#e5,#35,#e1,#33,#35
	db #e0,#33,#33,#33,#33,#e1,#33,#e5
	db #33,#e1,#32,#e1,#33,#e5,#33,#32
	db #e0,#32,#e0,#32,#32,#32,#87
.lb9c5
	db #c2,#df,#00,#11,#05,#c1,#e5,#2a
	db #2a,#e1,#2a,#c2,#2c,#e5,#2e,#2e
	db #e1,#2c,#2e,#c4,#e5,#2a,#2a,#e3
	db #2a,#c1,#ef,#2a,#e5,#2a,#2a,#e1
	db #2a,#c2,#2c,#e5,#2e,#30,#e1,#30
	db #30,#e5,#33,#33,#e1,#33,#33,#ef
	db #32,#87
.lb9f7
	db #c5,#88,#01,#01,#eb,#2a,#83,#e1
	db #27,#2e,#e5,#31,#2f,#e1,#2e,#2f
	db #eb,#2c,#e3,#29,#e5,#2f,#e5,#2e
	db #e1,#2c,#2e,#e9,#2a,#e1,#27,#29
	db #2a,#e5,#2e,#2c,#e1,#2a,#27,#ef
	db #29,#2c,#c0,#87
.lba23
	db #c0,#e0,#2a,#2a,#33,#2a,#2c,#88
	db #01,#01,#82,#e0,#2c,#33,#2c,#2e
	db #2e,#e0,#33,#2e,#2c,#2c,#33,#e0
	db #2c,#2a,#2a,#33,#2a,#e0,#29,#29
	db #33,#29,#e0,#27,#27,#33,#27,#29
	db #e0,#29,#33,#29,#87
.lba50
	db #e0,#2a,#2a,#33,#2a,#29,#e0,#29
	db #33,#29,#2a,#2a,#e0,#33,#2a,#2c
	db #2c,#33,#e0,#2c,#2d,#2d,#33,#2d
	db #e0,#2c,#2c,#33,#2c,#2a,#e0,#2a
	db #33,#2a,#29,#29,#e0,#33,#29,#87
.lba78
	db #e0,#2a,#2a,#32,#2a,#29,#e0,#2a
	db #32,#29,#2a,#2a,#32,#e0,#2a,#2c
	db #2c,#32,#2c,#e0,#2a,#2a,#32,#2a
	db #29,#e0,#29,#32,#29,#27,#27,#32
	db #e0,#27,#26,#26,#32,#26,#87
.lba9f
	db #c0,#81,#e0,#2c,#2c,#33,#2c,#2e
	db #e0,#2e,#33,#2e,#2f,#2f,#e0,#33
	db #2f,#31,#31,#33,#e0,#31,#2f,#2f
	db #33,#2f,#e0,#2e,#2e,#33,#2e,#2c
	db #e0,#2c,#33,#2c,#2f,#2f,#e0,#33
	db #2f,#87
.lbac9
	db #e0,#2a,#2a,#31,#2a,#29,#e0,#29
	db #31,#29,#2a,#2a,#e0,#31,#2a,#2c
	db #2c,#31,#e0,#2c,#2f,#2f,#31,#2f
	db #2e,#e0,#2e,#31,#2e,#2c,#2c,#e0
	db #31,#2c,#29,#29,#31,#e0,#29,#87
.lbaf1
	db #df,#00,#11,#05,#c3,#e0,#2b,#2b
	db #2b,#2b,#e1,#2b,#e2,#2b,#e0,#2b
	db #e1,#2b,#e0,#2b,#e0,#2b,#2b,#2b
	db #c2,#e0,#2b,#2b,#2b,#2b,#e1,#2b
	db #e2,#2b,#e0,#2b,#e1,#2b,#e0,#2b
	db #e0,#2b,#2b,#2b,#e0,#29,#29,#29
	db #29,#e1,#29,#e2,#29,#e0,#29,#e1
	db #29,#e0,#29,#e0,#29,#29,#29,#c4
	db #e0,#29,#29,#29,#29,#e1,#29,#e2
	db #29,#e0,#29,#e1,#29,#e0,#29,#e0
	db #29,#29,#29,#c3,#e0,#29,#29,#29
	db #29,#e1,#29,#e2,#29,#e0,#29,#e1
	db #29,#e0,#29,#e0,#29,#29,#29,#c2
	db #e0,#29,#29,#29,#29,#e1,#29,#e2
	db #29,#e0,#29,#e1,#29,#e0,#29,#e0
	db #29,#29,#29,#c1,#e0,#27,#27,#27
	db #27,#e1,#27,#e2,#27,#e0,#27,#e1
	db #27,#e0,#27,#27,#27,#e0,#27,#c2
	db #e0,#27,#27,#27,#27,#e1,#27,#e2
	db #27,#e0,#27,#e1,#27,#e0,#27,#27
	db #27,#e0,#27,#87
.lbb95
	db #c0,#8a,#df,#00,#51,#03,#ef,#1c
	db #34,#35,#1d,#1a,#32,#33,#1b,#87
.lbba5
	db #c0,#8a,#df,#00,#11,#05,#e0,#33
	db #82,#34,#33,#e2,#31,#e0,#33,#34
	db #33,#e2,#31,#e0,#33,#34,#33,#81
	db #31,#87
.lbbbf
	db #c3,#e5,#33,#e9,#c1,#33,#e5,#c4
	db #38,#e9,#c2,#37,#87
.lbbcc
	db #e5,#c3,#2c,#e9,#c2,#2c,#e5,#c4
	db #2c,#e9,#c2,#2c,#87
.lbbd9
	db #e5,#c1,#36,#e9,#c2,#35,#e5,#c1
	db #32,#e9,#c2,#32,#87
.lbbe6
	db #de,#00,#f1,#01,#ff,#c0,#83,#24
	db #8f,#87
.lbbf0
	db #c0,#8a,#df,#00,#51,#04,#91,#e0
	db #0f,#91,#0f,#91,#0f,#91,#0f,#e1
	db #91,#0f,#e9,#91,#0f,#87
.lbc06
	db #91,#e0,#16,#91,#16,#91,#16,#91
	db #16,#e1,#91,#16,#e9,#91,#16,#87
.lbc16
	db #e0,#91,#16,#e1,#91,#16,#e0,#91
	db #16,#e1,#91,#16,#91,#16,#e0,#80
	db #91,#16,#e1,#91,#16,#e0,#91,#22
	db #91,#22,#e1,#91,#1d,#87
.lbc34
	db #e0,#91,#0d,#e1,#91,#0d,#e0,#91
	db #0d,#e1,#91,#0d,#91,#0d,#e0,#80
	db #91,#0d,#e1,#91,#0d,#e0,#91,#19
	db #91,#19,#e1,#91,#20,#87
.lbc52
	db #e0,#91,#12,#e1,#91,#12,#e0,#91
	db #12,#e1,#91,#12,#91,#12,#e0,#80
	db #91,#12,#e1,#91,#12,#e0,#91,#1e
	db #91,#1e,#e1,#91,#19,#87
.lbc70
	db #e0,#91,#17,#e1,#91,#17,#e0,#91
	db #17,#e1,#91,#17,#91,#17,#e0,#80
	db #91,#17,#e1,#91,#17,#e0,#91,#23
	db #91,#23,#e1,#91,#1e,#87
.lbc8e
	db #e0,#91,#11,#e1,#91,#11,#e0,#91
	db #11,#e1,#91,#11,#91,#11,#e0,#80
	db #91,#11,#e1,#91,#11,#e0,#91,#1d
	db #91,#1d,#e1,#91,#18,#87
.lbcac
	db #c0,#8a,#df,#00,#51,#04,#e0,#91
	db #0f,#e1,#91,#0f,#e0,#91,#0f,#e1
	db #91,#0f,#91,#0f,#e0,#80,#91,#0f
	db #e1,#91,#0f,#e0,#91,#1b,#91,#1b
	db #e1,#91,#22,#87
.lbcd0
	db #e0,#91,#10,#e1,#91,#10,#e0,#91
	db #10,#e1,#91,#10,#91,#10,#e0,#80
	db #91,#10,#e1,#91,#10,#e0,#91,#1c
	db #91,#1c,#e1,#91,#17,#87
.lbcee
	db #c0,#df,#00,#51,#04,#e0,#91,#14
	db #e1,#91,#14,#e0,#91,#14,#e1,#91
	db #14,#91,#14,#e0,#80,#91,#14,#e1
	db #91,#14,#e0,#91,#20,#91,#20,#e1
	db #91,#1b,#87
.lbd11
	db #c0,#df,#00,#31,#0f,#e0,#8c,#84
	db #14,#01,#30,#e1,#8c,#84,#14,#01
	db #30,#e0,#8c,#84,#14,#01,#30,#e1
	db #8c,#84,#14,#01,#8d,#30,#e2,#8b
	db #8d,#1f,#de,#00,#02,#0f,#8a,#e0
	db #8d,#4b,#e1,#4b,#df,#00,#31,#0f
	db #8c,#84,#14,#01,#8d,#30,#de,#00
	db #02,#0f,#8a,#8d,#4b,#c0,#df,#00
	db #31,#0f,#e2,#8b,#8d,#1f,#e0,#8d
	db #1f,#e1,#8c,#84,#14,#01,#8d,#30
	db #e2,#8b,#8d,#1f,#de,#00,#02,#0f
	db #8a,#e0,#8d,#4b,#e1,#4b,#df,#00
	db #31,#0f,#8c,#84,#14,#01,#8d,#30
	db #de,#00,#02,#0f,#8a,#8d,#4b,#87
	db #df,#00,#21,#0f,#c0,#e0,#8c,#84
	db #14,#01,#30,#8c,#84,#14,#01,#30
	db #8c,#84,#14,#01,#30,#8c,#84,#14
	db #01,#30,#e1,#8c,#84,#14,#01,#30
	db #e5,#8c,#84,#14,#01,#30,#e1,#8b
	db #8d,#91,#1f,#8d,#91,#1f,#87
.lbdb0
	db #ff,#80,#87
.lbdb3
	db #00
.lbdb4
	ld hl,lbdb3
	ld (hl),#00
	ld hl,lbebe
	add a
	add l
	ld l,a
	jr nc,lbdc2
	inc h
.lbdc2
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,lbfc8
.lbdca
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lbdca
	ld a,(lbfc9)
	ld (lbfd9),a
	ld hl,(lbfca)
	ld (lbeb1),hl
	ld de,(lbfcc)
	ld (lbeb5),de
	ld a,l
	ld (lbeb7),a
	ld a,(lbfcf)
	ld (lbeb8),a
	ld a,(lbfce)
	ld e,a
	ld d,#0c
	call lb452
	ld a,(lbfd8)
	ld e,a
	ld d,#0d
	call lb452
	ld hl,lbdb3
	inc (hl)
	ret
.lbe05
	ld (lbdb3),a
	jp lb445
.lbe0b
	call lbfdb
	ld a,(lbdb3)
	and a
	ret z
	ld a,(lbfc8)
	and a
	jr z,lbe05
	dec a
	ld (lbfc8),a
	ld a,(lbfd9)
	and a
	jr nz,lbe52
	ld a,(lbfd6)
	and a
	ret z
	dec a
	ld (lbfd6),a
	ld a,(lbfc9)
	ld (lbfd9),a
	ld a,(lbfd7)
	and a
	jr z,lbe3b
	ld a,(lbff6)
.lbe3b
	ld b,a
	ld a,(lbfca)
	add b
	ld (lbeb1),a
	ld a,(lbfcb)
	add b
	and #0f
	ld (lbeb2),a
	ld hl,(lbfcc)
	ld (lbeb5),hl
.lbe52
	ld hl,lbfd9
	dec (hl)
	ld a,(lbfd4)
	and a
	jr z,lbe79
	jp p,lbe6c
	ld hl,(lbeb1)
	ld de,(lbfd0)
	add hl,de
	ld (lbeb1),hl
	jr lbe79
.lbe6c
	ld hl,(lbeb1)
	ld de,(lbfd0)
	and a
	sbc hl,de
	ld (lbeb1),hl
.lbe79
	ld a,(lbfd5)
	and a
	jr z,lbe9c
	jp p,lbe8f
	ld hl,(lbeb5)
	ld de,(lbfd2)
	add hl,de
	ld (lbeb5),hl
	jr lbe9c
.lbe8f
	ld hl,(lbeb5)
	ld de,(lbfd2)
	and a
	sbc hl,de
	ld (lbeb5),hl
.lbe9c
	ld a,(lbeb1)
	ld (lbeb7),a
	ld hl,lbebc
	ld d,#0b
.lbea7
	ld e,(hl)
	call lb452
	dec hl
	dec d
	jp p,lbea7
	ret
.lbeb8 equ $ + 7
.lbeb7 equ $ + 6
.lbeb5 equ $ + 4
.lbeb2 equ $ + 1
.lbeb1
	db #00,#00,#00,#00,#00,#00,#00,#3f
	db #10,#00,#10
.lbebc
	db #00,#ff
.lbebe
	dw lbeda,lbeeb,lbefc,lbf0d
	dw lbf1e,lbf2f,lbf40,lbf51
	dw lbf62,lbf73,lbf84,lbf95
	dw lbfa6,lbfb7
.lbeda
	db #41,#0f,#90,#00,#a2,#00,#28,#32
	db #09,#00,#09,#00,#ff,#ff,#0a,#00
	db #00
.lbeeb
	db #23,#0a,#52,#00,#5b,#00,#0f,#3a
	db #04,#00,#04,#00,#01,#01,#0a,#00
	db #00
.lbefc
	db #14,#04,#8a,#00,#97,#00,#09,#32
	db #1f,#00,#1c,#00,#ff,#ff,#05,#00
	db #00
.lbf0d
	db #28,#05,#a0,#01,#28,#02,#0a,#3a
	db #18,#00,#18,#00,#ff,#ff,#05,#00
	db #00
.lbf1e
	db #2d,#0a,#c0,#01,#80,#03,#14,#3a
	db #20,#01,#18,#02,#01,#01,#3c,#00
	db #00
.lbf2f
	db #2d,#0a,#08,#01,#0b,#01,#0f,#3a
	db #08,#00,#08,#00,#ff,#ff,#0a,#00
	db #00
.lbf40
	db #32,#42,#b8,#00,#98,#00,#1e,#3a
	db #03,#00,#04,#00,#01,#01,#03,#00
	db #00
.lbf51
	db #ff,#12,#60,#01,#e2,#00,#7d,#3a
	db #11,#00,#09,#00,#01,#01,#3c,#00
	db #00
.lbf62
	db #41,#03,#52,#00,#5b,#00,#1e,#3a
	db #0c,#00,#0c,#00,#00,#00,#3c,#00
	db #00
.lbf73
	db #32,#42,#b8,#00,#a0,#00,#1e,#3a
	db #13,#00,#12,#00,#ff,#ff,#03,#00
	db #00
.lbf84
	db #50,#09,#8f,#01,#0f,#02,#23,#12
	db #18,#00,#18,#00,#ff,#ff,#19,#01
	db #00
.lbf95
	db #2d,#07,#0f,#00,#0f,#00,#0f,#17
	db #00,#00,#00,#00,#00,#00,#15,#00
	db #00
.lbfa6
	db #41,#32,#88,#01,#8b,#01,#16,#1e
	db #01,#00,#11,#00,#ff,#ff,#28,#00
	db #00
.lbfb7
	db #32,#42,#b8,#00,#98,#00,#1e,#17
	db #03,#00,#04,#00,#01,#01,#03,#00
	db #00
.lbfc8
	db #00
.lbfd0 equ $ + 7
.lbfcf equ $ + 6
.lbfce equ $ + 5
.lbfcc equ $ + 3
.lbfcb equ $ + 2
.lbfca equ $ + 1
.lbfc9
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbfd8 equ $ + 7
.lbfd7 equ $ + 6
.lbfd6 equ $ + 5
.lbfd5 equ $ + 4
.lbfd4 equ $ + 3
.lbfd2 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbfd9
	db #00,#00
.lbfdb
	ld a,(lbff6)
	and #48
	adc #38
	sla a
	sla a
	ld hl,lbff9
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.lbff9 equ $ + 3
.lbff6
	db #ff,#80,#1b,#34
;
.music_info
	db "Thunder Cats (1987)(Elite System Ltd)(David Whittaker)",0
	db "",0

	read "music_end.asm"
