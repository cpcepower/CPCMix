; Music of Arcade Flight Simulator (1989)(Codemasters)(David Whittaker)()
; Ripped by Megachur the 04/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ARCADEFS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #6f66

	read "music_header.asm"

;
.init_music
;
	call l7228
	ld b,#00
	ld hl,l7d8e
	ld a,(hl)
	ld (l703f),a
	ld (l7755),a
	inc hl
	ld ix,l6fca
	ld c,#22
	ld a,#03
.l6f7e
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
	ld hl,l761d
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
	jr nz,l6f7e
	ld (l7454),a
	dec a
	ld (l7756),a
	ld (l774e),a
	ret
.l6fca
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l6fec
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l700e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	call l7874
	ld a,(l774e)
	and a
	jr z,l708a
.l703a equ $ + 1
	ld a,#00
	ld (l7086),a
.l703f equ $ + 1
	ld a,#01
	ld hl,l7756
	add (hl)
	ld (hl),a
	jr nc,l705e
	ld b,#00
	ld ix,l6fca
	call l734a
	ld ix,l6fec
	call l734a
	ld ix,l700e
	call l734a
.l705e
	ld ix,l6fca
	call l7421
	ld (l7535),hl
	ld (l753d),a
	ld ix,l6fec
	call l7421
	ld (l7537),hl
	ld (l753e),a
	ld ix,l700e
	call l7421
	ld (l7539),hl
	ld (l753f),a
.l7086 equ $ + 1
	ld a,#00
	ld (l753b),a
.l708a
	ld a,(l774e)
	and a
	jr nz,l70a0
	ld (l753d),a
	ld (l753e),a
	ld (l753f),a
	ld a,#3f
	ld (l753c),a
	jr l70c8
.l70a0
	ld a,(l774d)
	and #0f
	xor #0f
	jr z,l70c8
	ld b,a
	ld a,(l753d)
	sub b
	jr nc,l70b1
	xor a
.l70b1
	ld (l753d),a
	ld a,(l753e)
	sub b
	jr nc,l70bb
	xor a
.l70bb
	ld (l753e),a
	ld a,(l753f)
	sub b
	jr nc,l70c5
	xor a
.l70c5
	ld (l753f),a
.l70c9 equ $ + 1
.l70c8
	ld a,#00
	xor #ff
	ld (l70c9),a
	ld a,(l7752)
	and a
	jr z,l70fe
	ld a,(l753c)
	or #09
	and #fe
	ld (l753c),a
	ld a,#0a
	ld (l753d),a
.l70e5 equ $ + 1
	ld hl,#0000
	ld a,(l7d8a)
	and #3f
	ld e,a
	ld d,#00
	sbc hl,de
	ld a,(l70c9)
	or a
	jr z,l70fb
	srl h
	rr l
.l70fb
	ld (l7535),hl
.l70fe
	ld a,(l7753)
	and a
	jr z,l712d
	ld a,(l753c)
	or #12
	and #fd
	ld (l753c),a
	ld a,#0a
	ld (l753e),a
.l7114 equ $ + 1
	ld hl,#0000
	ld a,(l7d8b)
	and #3f
	ld e,a
	ld d,#00
	sbc hl,de
	ld a,(l70c9)
	or a
	jr nz,l712a
	srl h
	rr l
.l712a
	ld (l7537),hl
.l712d
	ld a,(l7754)
	and a
	jr z,l715c
	ld a,(l753c)
	or #24
	and #fb
	ld (l753c),a
	ld a,#0a
	ld (l753f),a
.l7143 equ $ + 1
	ld hl,#0000
	ld a,(l7d8c)
	and #3f
	ld e,a
	ld d,#00
	sbc hl,de
	ld a,(l70c9)
	or a
	jr z,l7159
	srl h
	rr l
.l7159
	ld (l7539),hl
.l715c
	ld a,(l774f)
	and a
	jr z,l7184
	ld hl,(l7542)
	ld (l7535),hl
	ld a,(l7ced)
	ld b,a
	bit 3,a
	jr nz,l7176
	ld a,(l7548)
	ld (l753b),a
.l7176
	ld hl,l753c
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l754a)
	ld (l753d),a
.l7184
	ld a,(l7750)
	and a
	jr z,l71ae
	ld hl,(l7544)
	ld (l7537),hl
	ld a,(l7d02)
	ld b,a
	bit 3,a
	jr nz,l719e
	ld a,(l7548)
	ld (l753b),a
.l719e
	ld hl,l753c
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(l754b)
	ld (l753e),a
.l71ae
	ld a,(l7751)
	and a
	jr z,l71da
	ld hl,(l7546)
	ld (l7539),hl
	ld a,(l7d17)
	ld b,a
	bit 3,a
	jr nz,l71c8
.l71c3 equ $ + 1
	ld a,(l7548)
	ld (l753b),a
.l71c8
	ld hl,l753c
	ld a,(hl)
	or #24
	rlc b
	rlc b
	and b
	ld (hl),a
	ld a,(l754c)
	ld (l753f),a
.l71da
	ld hl,l753f
	ld d,#0a
.l71df
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
	jp p,l71df
	ret
.l7200
	ld de,#0a00
.l7203
	call l720d
	dec d
	jp p,l7203
	ld de,#073f
.l720d
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
.l7228
;
	xor a
	ld (l774e),a
	ld (l7752),a
	ld (l7753),a
	ld (l7754),a
	call l7d62
	xor a
	ld (l753d),a
	ld (l753e),a
	ld (l753f),a
	ret
	db #f1,#d5,#ce,#d8,#9b,#e0,#db,#32
	db #bb,#ac,#71,#5b,#83,#de,#27,#eb
	db #ec,#f1,#aa,#0a,#01
	ld a,(de)
	inc de
	ld (l703f),a
	jp l7358
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
	jp l7358
	pop hl
	jp l7228
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
	jr nz,l729e
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l729e
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l7358
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,l7500
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l7358
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,l7500
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l7358
	ld hl,l7500
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l7358
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l7358
	ld a,(de)
	inc de
	ld (l7454),a
	jr l7358
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr l7358
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr l7358
	ld (ix+#1d),b
	jr l7358
	ld (ix+#1d),#c0
	jr l7358
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l7358
	set 1,(ix+#00)
	jr l7358
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l7387
	jr l7383
	ld (ix+#1f),#ff
	jr l7358
	ld (ix+#1f),b
	jr l7358
.l734a
	dec (ix+#10)
	jr nz,l73c5
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l7358
	ld a,(de)
	inc de
	and a
	jp m,l73d6
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l736a
	ld (l703a),a
.l736a
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.l7383
	set 5,(ix+#00)
.l7387
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l73c4
	ld a,(l774f)
	and a
	jr z,l73a6
	ld a,(l7ced)
	bit 3,a
	jr z,l73c4
.l73a6
	ld a,(l7750)
	and a
	jr z,l73b3
	ld a,(l7d02)
	bit 3,a
	jr z,l73c4
.l73b3
	ld a,(l7751)
	and a
	jr z,l73c0
	ld a,(l7d17)
	bit 3,a
	jr z,l73c4
.l73c0
	ld (ix+#1f),#ff
.l73c4
	ret
.l73c5
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l73d2
	inc (ix+#12)
	ret
.l73d2
	dec (ix+#12)
	ret
.l73d6
	cp #c0
	jr c,l7419
	add #20
	jr c,l73fa
	add #10
	jr c,l7401
	add #10
	ld c,a
	ld hl,l760e
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l7358
.l73fa
	inc a
	ld (ix+#11),a
	jp l7358
.l7401
	ld hl,l764a
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
	jp l7358
.l7419
	ld hl,l71c3
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l7421
	ld c,(ix+#00)
	bit 5,c
	jr z,l7453
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l744d
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l744d
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l744d
	ld a,(ix+#18)
	ld (ix+#13),a
.l7454 equ $ + 1
.l7453
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l7470
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l7470
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l754e
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l74d1
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l749a
	bit 0,c
	jr nz,l74b8
.l749a
	bit 5,l
	jr nz,l74aa
	sub (ix+#1b)
	jr nc,l74b5
	set 5,(ix+#1d)
	sub a
	jr l74b5
.l74aa
	add (ix+#1b)
	cp b
	jr c,l74b5
	res 5,(ix+#1d)
	ld a,b
.l74b5
	ld (ix+#1c),a
.l74b8
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l74c3
	dec d
.l74c3
	add #a0
	jr c,l74cf
.l74c7
	sla e
	rl d
	add #18
	jr nc,l74c7
.l74cf
	add hl,de
	ex de,hl
.l74d1
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l74fc
	ld b,(ix+#0e)
	djnz l74f9
	ld c,(ix+#0d)
	bit 7,c
	jr z,l74e8
	dec b
.l74e8
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l74fc
.l74f9
	ld (ix+#0e),b
.l74fc
	cpl
	and #03
.l7500 equ $ + 1
	ld a,#38
	jr nz,l750d
	ld a,(l703a)
	xor #08
	ld (l7086),a
	ld a,#07
.l750d
	ld hl,l753c
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l7530
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l7086),a
.l7530
	ex de,hl
	ld a,(ix+#13)
	ret
.l753c equ $ + 7
.l753b equ $ + 6
.l7539 equ $ + 4
.l7537 equ $ + 2
.l7535
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l7544 equ $ + 7
.l7543 equ $ + 6
.l7542 equ $ + 5
.l753f equ $ + 2
.l753e equ $ + 1
.l753d
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l754c equ $ + 7
.l754b equ $ + 6
.l754a equ $ + 5
.l7548 equ $ + 3
.l7547 equ $ + 2
.l7546 equ $ + 1
.l7545
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l754e
	db #7c,#07,#08,#07,#b0,#06,#40,#06
	db #ec,#05,#94,#05,#44,#05,#f8,#04
	db #b0,#04,#70,#04,#2c,#04,#f0,#03
	db #be,#03,#84,#03,#58,#03,#20,#03
	db #f6,#02,#ca,#02,#a2,#02,#7c,#02
	db #58,#02,#38,#02,#16,#02,#f8,#01
	db #df,#01,#c2,#01,#ac,#01,#90,#01
	db #7b,#01,#65,#01,#51,#01,#3e,#01
	db #2c,#01,#1c,#01,#0b,#01,#fc,#00
	db #ef,#00,#e1,#00,#d6,#00,#c8,#00
	db #bd,#00,#b2,#00,#a8,#00,#9f,#00
	db #96,#00,#8e,#00,#85,#00,#7e,#00
	db #77,#00,#70,#00,#6b,#00,#64,#00
	db #5e,#00,#59,#00,#54,#00,#4f,#00
	db #4b,#00,#47,#00,#42,#00,#3f,#00
	db #3b,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2c,#00,#2a,#00,#27,#00
	db #25,#00,#23,#00,#21,#00,#1f,#00
	db #1d,#00,#1c,#00,#1a,#00,#19,#00
	db #17,#00,#16,#00,#15,#00,#13,#00
	db #12,#00,#11,#00,#10,#00,#0f,#00
	db #0e,#00,#0e,#00,#0d,#00,#0c,#00
	db #0b,#00,#0b,#00,#0a,#00,#09,#00
	db #09,#00,#08,#00,#08,#00,#07,#00
.l760e
	db #0f,#0f,#11,#13,#16,#19,#1b,#1d
.l761d equ $ + 7
	db #1f,#21,#22,#23,#24,#25,#26,#80
	db #00,#03,#87,#00,#04,#87,#00,#03
	db #07,#8c,#00,#04,#07,#8c,#07,#0c
	db #8f,#07,#0c,#90,#03,#07,#8c,#04
	db #07,#8c,#00,#8c,#00,#83,#00,#84
	db #00,#85,#00,#87,#0c,#00,#00,#00
	db #00,#00,#00,#80
.l764a
	dw l766b,l7671,l7678,l768a
	dw l7698,l769f,l76af,l76c4
	dw l76ed,l76fe,l7702,l770e
	dw l771f,l7727,l772a,l772d
.l7671 equ $ + 7
.l766b equ $ + 1
	db #01,#0f,#0e,#0d,#05,#87,#01,#0d
.l7678 equ $ + 6
	db #0b,#07,#03,#01,#87,#01,#0f,#0e
	db #0c,#0b,#0d,#0c,#0a,#09,#0b,#0a
	db #08,#07,#09,#08,#06,#05,#87,#01
.l768a
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l7698 equ $ + 6
	db #04,#03,#02,#01,#87,#01,#0f,#0d
.l769f equ $ + 5
	db #0c,#0b,#0a,#87,#01,#0d,#0e,#0f
	db #0e,#0d,#0a,#08,#07,#06,#05,#04
.l76af equ $ + 5
	db #03,#02,#01,#87,#01,#0e,#0d,#0c
	db #0b,#0a,#09,#01,#08,#01,#07,#01
	db #06,#01,#05,#01,#04,#01,#02,#01
.l76c4 equ $ + 2
	db #87,#08,#04,#06,#07,#08,#09,#0a
	db #0b,#0c,#0d,#0e,#0f,#0f,#0e,#0e
	db #0e,#0e,#0d,#0d,#0c,#0c,#0c,#0c
	db #0b,#0b,#0b,#0b,#0a,#0a,#0a,#0a
	db #09,#09,#09,#09,#08,#08,#08,#07
.l76ed equ $ + 3
	db #06,#87,#05,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.l76fe equ $ + 4
	db #02,#01,#87,#01,#0e,#00,#87,#01
.l7702
	db #0e,#0d,#0c,#0b,#0a,#09,#0b,#0a
.l770e equ $ + 4
	db #09,#08,#87,#02,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l771f equ $ + 5
	db #03,#02,#01,#87,#03,#0e,#0d,#0c
.l7727 equ $ + 5
	db #0b,#0a,#09,#87,#01,#0d,#87,#01
.l772d equ $ + 3
.l772a
	db #0f,#87,#03,#0f,#0e,#0d,#0c,#0b
	db #0d,#0c,#0b,#0a,#09,#0b,#0a,#09
	db #08,#07,#09,#08,#07,#06,#05,#07
	db #06,#05,#04,#03,#05,#04,#03,#02
.l7751 equ $ + 7
.l7750 equ $ + 6
.l774f equ $ + 5
.l774e equ $ + 4
.music_end equ $ + 4
.l774d equ $ + 3
	db #01,#00,#87,#0f,#00,#00,#00,#00
.l7756 equ $ + 4
.l7755 equ $ + 3
.l7754 equ $ + 2
.l7753 equ $ + 1
.l7752
	db #00,#00,#00,#00,#00
	ld hl,l7760
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l7760
	inc bc
	ld e,l
	or a
	ld hl,l774f
	ld (hl),#00
	ld hl,l7aa0
	add a
	add l
	ld l,a
	jr nc,l7771
	inc h
.l7771
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l7ce7
.l7779
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l7779
	ld a,(l7ce8)
	ld (l7cf5),a
	ld hl,(l7ce9)
	ld (l7542),hl
	ld a,(l7ced)
	bit 3,a
	jr nz,l7796
	ld a,l
	ld (l7548),a
.l7796
	ld a,(l7cf2)
	ld (l7cf6),a
	ld a,(l7cf4)
	ld (l7cfb),a
	ld a,(l7cf1)
	ld hl,l7c40
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l7cf7),hl
	ld (l7cf9),hl
	ld a,(hl)
	ld (l754a),a
	ld hl,l774f
	inc (hl)
	ret
	ld hl,l7750
	ld (hl),#00
	ld hl,l7aa0
	add a
	add l
	ld l,a
	jr nc,l77cc
	inc h
.l77cc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l7cfc
.l77d4
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l77d4
	ld a,(l7cfd)
	ld (l7d0a),a
	ld hl,(l7cfe)
	ld (l7544),hl
	ld a,(l7d02)
	bit 3,a
	jr nz,l77f1
	ld a,l
	ld (l7548),a
.l77f1
	ld a,(l7d07)
	ld (l7d0b),a
	ld a,(l7d09)
	ld (l7d10),a
	ld a,(l7d06)
	ld hl,l7c40
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l7d0c),hl
	ld (l7d0e),hl
	ld a,(hl)
	ld (l754b),a
	ld hl,l7750
	inc (hl)
	ret
	ld hl,l7751
	ld (hl),#00
	ld hl,l7aa0
	add a
	add l
	ld l,a
	jr nc,l7827
	inc h
.l7827
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l7d11
.l782f
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l782f
	ld a,(l7d12)
	ld (l7d1f),a
	ld hl,(l7d13)
	ld (l7546),hl
	ld a,(l7d17)
	bit 3,a
	jr nz,l784c
	ld a,l
	ld (l7548),a
.l784c
	ld a,(l7d1c)
	ld (l7d20),a
	ld a,(l7d1e)
	ld (l7d25),a
	ld a,(l7d1b)
	ld hl,l7c40
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l7d21),hl
	ld (l7d23),hl
	ld a,(hl)
	ld (l754c),a
	ld hl,l7751
	inc (hl)
	ret
.l7874
	call l7d6f
	ld a,(l774f)
	and a
	call nz,l793c
	ld a,(l7750)
	and a
	call nz,l79ee
	ld a,(l7751)
	and a
	ret z
	ld a,(l7d11)
	and a
	jr nz,l789a
	ld a,(l7d1d)
	and a
	jr nz,l789a
	ld (l7751),a
	ret
.l789a
	dec a
	ld (l7d11),a
	ld a,(l7d1f)
	and a
	jr nz,l78d2
	ld a,(l7d1d)
	and a
	jr nz,l78b0
	ld a,(l7d1a)
	and a
	jr z,l7914
.l78b0
	dec a
	ld (l7d1a),a
	ld a,(l7d12)
	ld (l7d1f),a
	ld a,(l7d18)
	and a
	jr z,l78c3
	ld a,(l7d8c)
.l78c3
	ld b,a
	ld a,(l7d13)
	add b
	ld (l7546),a
	ld a,(l7d14)
	add b
	ld (l7547),a
.l78d2
	ld hl,l7d1f
	dec (hl)
	ld hl,l7d1e
	ld a,(hl)
	and a
	jr z,l78e4
	ld hl,l7d25
	dec (hl)
	jr nz,l7907
	ld (hl),a
.l78e4
	ld a,(l7d19)
	and a
	jr z,l7907
	jp p,l78fa
	ld hl,(l7546)
	ld de,(l7d15)
	add hl,de
	ld (l7546),hl
	jr l7907
.l78fa
	ld hl,(l7546)
	ld de,(l7d15)
	and a
	sbc hl,de
	ld (l7546),hl
.l7907
	ld a,(l7d17)
	bit 3,a
	jr nz,l7914
	ld a,(l7546)
	ld (l7548),a
.l7914
	ld a,(l7d20)
	dec a
	ld (l7d20),a
	jr nz,l793b
	ld a,(l7d1c)
	ld (l7d20),a
	ld hl,(l7d23)
	ld a,(hl)
	inc hl
	and a
	jp p,l7935
	cp #80
	jr nz,l793b
	ld hl,(l7d21)
	ld a,(hl)
	inc hl
.l7935
	ld (l7d23),hl
	ld (l754c),a
.l793b
	ret
.l793c
	ld a,(l7ce7)
	and a
	jr nz,l794c
	ld a,(l7cf3)
	and a
	jr nz,l794c
	ld (l774f),a
	ret
.l794c
	dec a
	ld (l7ce7),a
	ld a,(l7cf5)
	and a
	jr nz,l7984
	ld a,(l7cf3)
	and a
	jr nz,l7962
	ld a,(l7cf0)
	and a
	jr z,l79c6
.l7962
	dec a
	ld (l7cf0),a
	ld a,(l7ce8)
	ld (l7cf5),a
	ld a,(l7cee)
	and a
	jr z,l7975
	ld a,(l7d8a)
.l7975
	ld b,a
	ld a,(l7ce9)
	add b
	ld (l7542),a
	ld a,(l7cea)
	add b
	ld (l7543),a
.l7984
	ld hl,l7cf5
	dec (hl)
	ld hl,l7cf4
	ld a,(hl)
	and a
	jr z,l7996
	ld hl,l7cfb
	dec (hl)
	jr nz,l79b9
	ld (hl),a
.l7996
	ld a,(l7cef)
	and a
	jr z,l79b9
	jp p,l79ac
	ld hl,(l7542)
	ld de,(l7ceb)
	add hl,de
	ld (l7542),hl
	jr l79b9
.l79ac
	ld hl,(l7542)
	ld de,(l7ceb)
	and a
	sbc hl,de
	ld (l7542),hl
.l79b9
	ld a,(l7ced)
	bit 3,a
	jr nz,l79c6
	ld a,(l7542)
	ld (l7548),a
.l79c6
	ld a,(l7cf6)
	dec a
	ld (l7cf6),a
	jr nz,l79ed
	ld a,(l7cf2)
	ld (l7cf6),a
	ld hl,(l7cf9)
	ld a,(hl)
	inc hl
	and a
	jp p,l79e7
	cp #80
	jr nz,l79ed
	ld hl,(l7cf7)
	ld a,(hl)
	inc hl
.l79e7
	ld (l7cf9),hl
	ld (l754a),a
.l79ed
	ret
.l79ee
	ld a,(l7cfc)
	and a
	jr nz,l79fe
	ld a,(l7d08)
	and a
	jr nz,l79fe
	ld (l7750),a
	ret
.l79fe
	dec a
	ld (l7cfc),a
	ld a,(l7d0a)
	and a
	jr nz,l7a36
	ld a,(l7d08)
	and a
	jr nz,l7a14
	ld a,(l7d05)
	and a
	jr z,l7a78
.l7a14
	dec a
	ld (l7d05),a
	ld a,(l7cfd)
	ld (l7d0a),a
	ld a,(l7d03)
	and a
	jr z,l7a27
	ld a,(l7d8b)
.l7a27
	ld b,a
	ld a,(l7cfe)
	add b
	ld (l7544),a
	ld a,(l7cff)
	add b
	ld (l7545),a
.l7a36
	ld hl,l7d0a
	dec (hl)
	ld hl,l7d09
	ld a,(hl)
	and a
	jr z,l7a48
	ld hl,l7d10
	dec (hl)
	jr nz,l7a6b
	ld (hl),a
.l7a48
	ld a,(l7d04)
	and a
	jr z,l7a6b
	jp p,l7a5e
	ld hl,(l7544)
	ld de,(l7d00)
	add hl,de
	ld (l7544),hl
	jr l7a6b
.l7a5e
	ld hl,(l7544)
	ld de,(l7d00)
	and a
	sbc hl,de
	ld (l7544),hl
.l7a6b
	ld a,(l7d02)
	bit 3,a
	jr nz,l7a78
	ld a,(l7544)
	ld (l7548),a
.l7a78
	ld a,(l7d0b)
	dec a
	ld (l7d0b),a
	jr nz,l7a9f
	ld a,(l7d07)
	ld (l7d0b),a
	ld hl,(l7d0e)
	ld a,(hl)
	inc hl
	and a
	jp p,l7a99
	cp #80
	jr nz,l7a9f
	ld hl,(l7d0c)
	ld a,(hl)
	inc hl
.l7a99
	ld (l7d0e),hl
	ld (l754b),a
.l7a9f
	ret
.l7aa0
	dw l7ad4,l7ae2,l7af0,l7afe
	dw l7b0c,l7b1a,l7b28,l7b36
	dw l7b44,l7b52,l7b60,l7b6e
	dw l7b7c,l7b8a,l7b98,l7ba6
	dw l7bb4,l7bc2,l7bd0,l7bde
	dw l7bec,l7bfa,l7c08,l7c16
	dw l7c24,l7c32
.l7ad4
	db #ff
	db #02,#10,#00,#00,#00,#f6,#00,#00
.l7ae2 equ $ + 5
	db #ff,#06,#02,#ff,#00,#ff,#02,#7f
	db #07,#00,#00,#f6,#00,#00,#ff,#06
.l7af0 equ $ + 3
	db #02,#ff,#00,#05,#02,#0c,#00,#01
	db #00,#f7,#00,#ff,#63,#03,#01,#00
.l7afe equ $ + 1
	db #00,#06,#05,#47,#03,#20,#00,#f6
.l7b0c equ $ + 7
	db #00,#ff,#63,#03,#03,#00,#00,#1e
	db #ff,#0f,#00,#01,#00,#f7,#00,#01
.l7b1a equ $ + 5
	db #63,#01,#01,#00,#02,#14,#06,#01
	db #02,#c8,#00,#f6,#00,#ff,#ff,#00
.l7b28 equ $ + 3
	db #02,#00,#00,#46,#0a,#0a,#00,#03
	db #00,#f6,#01,#ff,#0a,#00,#04,#00
.l7b36 equ $ + 1
	db #00,#12,#63,#c0,#01,#08,#00,#fe
.l7b44 equ $ + 7
	db #00,#01,#63,#02,#01,#00,#00,#0a
	db #63,#10,#04,#08,#00,#fe,#00,#01
.l7b52 equ $ + 5
	db #63,#03,#02,#00,#00,#0b,#05,#0f
	db #00,#04,#00,#f6,#00,#01,#0a,#00
.l7b60 equ $ + 3
	db #01,#00,#00,#28,#63,#c7,#00,#11
	db #00,#f6,#00,#ff,#63,#05,#02,#00
.l7b6e equ $ + 1
	db #00,#0a,#14,#50,#00,#09,#00,#f6
.l7b7c equ $ + 7
	db #00,#ff,#0a,#00,#05,#00,#00,#32
	db #ff,#1f,#00,#01,#00,#f7,#00,#01
.l7b8a equ $ + 5
	db #ff,#01,#02,#00,#04,#1e,#02,#0b
	db #00,#01,#00,#fe,#00,#ff,#00,#08
.l7b98 equ $ + 3
	db #02,#00,#00,#0c,#63,#11,#07,#14
	db #00,#fe,#00,#01,#ff,#03,#03,#00
.l7ba6 equ $ + 1
	db #00,#32,#05,#00,#00,#03,#00,#f6
.l7bb4 equ $ + 7
	db #00,#ff,#63,#00,#03,#00,#00,#0a
	db #63,#4f,#00,#01,#00,#f6,#00,#01
.l7bc2 equ $ + 5
	db #00,#03,#01,#00,#00,#0a,#02,#03
	db #00,#01,#00,#f7,#00,#01,#ff,#02
.l7bd0 equ $ + 3
	db #01,#00,#00,#05,#63,#10,#03,#08
	db #00,#fe,#00,#01,#63,#03,#01,#00
.l7bde equ $ + 1
	db #00,#0f,#0f,#0f,#01,#01,#00,#f6
.l7bec equ $ + 7
	db #00,#01,#00,#00,#01,#00,#00,#0f
	db #01,#81,#00,#11,#00,#f6,#01,#ff
.l7bfa equ $ + 5
	db #ff,#03,#02,#00,#00,#1e,#63,#c7
	db #00,#11,#00,#f6,#00,#ff,#63,#05
.l7c08 equ $ + 3
	db #01,#00,#00,#0f,#05,#60,#00,#08
	db #00,#fe,#00,#ff,#63,#08,#01,#00
.l7c16 equ $ + 1
	db #00,#32,#05,#00,#00,#06,#00,#f7
.l7c24 equ $ + 7
	db #00,#ff,#63,#00,#03,#00,#00,#11
	db #05,#c7,#00,#20,#00,#f6,#00,#ff
.l7c32 equ $ + 5
	db #63,#00,#01,#00,#00,#14,#63,#2f
	db #00,#00,#00,#f6,#00,#01,#63,#00
	db #01,#00,#00
.l7c40
	dw l7c52,l7c5f,l7c78,l7c88
	dw l7c90,l7cb5,l7cc4,l7cc6
	dw l7cd8
.l7c52
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
.l7c5f equ $ + 5
	db #07,#06,#05,#04,#ff,#06,#08,#0a
	db #0b,#0c,#0d,#0e,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#09,#08,#07,#06
.l7c78 equ $ + 6
	db #05,#04,#03,#02,#01,#ff,#06,#08
	db #0a,#0b,#0c,#0d,#0c,#0b,#0a,#08
.l7c88 equ $ + 6
	db #06,#04,#03,#02,#01,#ff,#0d,#0b
.l7c90 equ $ + 6
	db #09,#07,#05,#04,#03,#ff,#0f,#0d
	db #0c,#0b,#0a,#0d,#0c,#0b,#0a,#09
	db #0b,#0a,#09,#08,#07,#09,#08,#07
	db #06,#05,#07,#06,#05,#04,#03,#05
	db #04,#03,#02,#01,#03,#02,#01,#02
.l7cb5 equ $ + 3
	db #01,#00,#ff,#0a,#0c,#0e,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l7cc6 equ $ + 4
.l7cc4 equ $ + 2
	db #05,#ff,#0a,#80,#0f,#0f,#0e,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l7cd8 equ $ + 6
	db #05,#04,#03,#02,#01,#ff,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l7ce9 equ $ + 7
.l7ce8 equ $ + 6
.l7ce7 equ $ + 5
	db #04,#03,#02,#01,#ff,#00,#00,#00
.l7cf1 equ $ + 7
.l7cf0 equ $ + 6
.l7cef equ $ + 5
.l7cee equ $ + 4
.l7ced equ $ + 3
.l7ceb equ $ + 1
.l7cea
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7cf9 equ $ + 7
.l7cf7 equ $ + 5
.l7cf6 equ $ + 4
.l7cf5 equ $ + 3
.l7cf4 equ $ + 2
.l7cf3 equ $ + 1
.l7cf2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7d00 equ $ + 6
.l7cff equ $ + 5
.l7cfe equ $ + 4
.l7cfd equ $ + 3
.l7cfc equ $ + 2
.l7cfb equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7d09 equ $ + 7
.l7d08 equ $ + 6
.l7d07 equ $ + 5
.l7d06 equ $ + 4
.l7d05 equ $ + 3
.l7d04 equ $ + 2
.l7d03 equ $ + 1
.l7d02
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7d11 equ $ + 7
.l7d10 equ $ + 6
.l7d0e equ $ + 4
.l7d0c equ $ + 2
.l7d0b equ $ + 1
.l7d0a
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7d19 equ $ + 7
.l7d18 equ $ + 6
.l7d17 equ $ + 5
.l7d15 equ $ + 3
.l7d14 equ $ + 2
.l7d13 equ $ + 1
.l7d12
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7d21 equ $ + 7
.l7d20 equ $ + 6
.l7d1f equ $ + 5
.l7d1e equ $ + 4
.l7d1d equ $ + 3
.l7d1c equ $ + 2
.l7d1b equ $ + 1
.l7d1a
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7d25 equ $ + 3
.l7d23 equ $ + 1
	db #00,#00,#00,#00
	ld hl,#0f00
	ld (l70e5),hl
	ld a,#ff
	ld (l7752),a
	ret
	xor a
	ld (l7752),a
	ld (l753d),a
	ret
	ld hl,#0e80
	ld (l7114),hl
	ld a,#ff
	ld (l7753),a
	ret
	xor a
	ld (l7753),a
	ld (l753e),a
	ret
	ld hl,#0e00
	ld (l7143),hl
	ld a,#ff
	ld (l7754),a
	ret
	xor a
	ld (l7754),a
	ld (l753f),a
	ret
.l7d62
	xor a
	ld (l774f),a
	ld (l7750),a
	ld (l7751),a
	jp l7200
.l7d6f
	ld a,(l7d8a)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l7d8d
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l7d8d equ $ + 3
.l7d8c equ $ + 2
.l7d8b equ $ + 1
.l7d8a
	db #ff,#80,#1b,#34
.l7d8e
	db #30
	dw l7dbf,l7d95,l7ddd
.l7d95
	dw l7dff,l7e1c,l7e1c,l7dff
	dw l7e1c,l7e1c,l7e2e,l7e2e
	dw l7e1c,l7e1c,l7ff9,l7dff
	dw l7e1c,l7e1c,l7e1c,l7e1c
	dw l7e2e,l7e1c,l7e1c,l7ffc
	dw #0000
.l7dbf
	dw l7e85,l7ea5,l7e85,l7ea5
	dw l7ed5,l7ed5,l7ea7,l7ff9
	dw l7e85,l7ea5,l7ea5,l7ed5
	dw l7ea7,l7ffc,#0000
.l7ddd
	dw l7f0f,l7f2e,l7f0f,l7f86
	dw l7f86,l7fc0,l7fc0,l7f2e
	dw l7ff9,l7f0f,l7f2e,l7f86
	dw l7f86,l7fc0,l7f2e,l7ffc
	dw #0000
.l7dff
	db #8a,#92,#00,#d2,#88,#01,#01,#e3
	db #18,#13,#18,#13,#18,#13,#e1,#18
	db #13,#15,#17,#e3,#18,#13,#18,#13
.l7e1c equ $ + 5
	db #18,#13,#e7,#18,#87,#e3,#18,#13
	db #18,#13,#1a,#15,#1a,#15,#17,#13
.l7e2e equ $ + 7
	db #17,#13,#18,#13,#18,#13,#87,#e1
	db #0c,#18,#0c,#18,#0c,#18,#0c,#e0
	db #18,#18,#e1,#05,#11,#05,#11,#05
	db #11,#05,#e0,#11,#11,#e1,#07,#13
	db #07,#13,#07,#13,#07,#e0,#13,#13
	db #e1,#04,#10,#04,#10,#04,#10,#04
	db #e0,#10,#10,#e1,#0c,#18,#0c,#18
	db #0c,#18,#0c,#e0,#18,#18,#e1,#05
	db #11,#05,#11,#05,#11,#05,#e0,#11
	db #11,#e1,#07,#13,#07,#13,#07,#13
	db #07,#e0,#13,#13,#e1,#0c,#18,#0c
.l7e85 equ $ + 6
	db #18,#e7,#0c,#92,#0c,#87,#8a,#c0
	db #90,#d4,#88,#01,#01,#e0,#28,#28
	db #ed,#28,#e0,#28,#28,#ed,#28,#e0
	db #28,#28,#ed,#28,#e0,#2b,#2b,#e3
.l7ea5 equ $ + 6
	db #2b,#e1,#2b,#e7,#2b,#87,#8a,#81
.l7ea7
	db #e1,#80,#e3,#da,#c8,#24,#24,#24
	db #24,#c7,#26,#26,#26,#26,#c6,#1f
	db #1f,#1f,#1f,#c2,#24,#24,#24,#24
	db #c8,#24,#24,#24,#24,#c7,#26,#26
	db #26,#26,#c6,#1f,#1f,#1f,#1f,#c2
.l7ed5 equ $ + 6
	db #24,#24,#24,#e1,#24,#87,#c0,#88
	db #01,#01,#8a,#e3,#24,#24,#24,#e1
	db #24,#24,#28,#e3,#28,#e9,#26,#e3
	db #23,#23,#23,#e1,#23,#23,#23,#e3
	db #22,#e9,#23,#e3,#28,#28,#28,#e1
	db #28,#28,#2d,#e3,#2d,#e9,#29,#e3
	db #2b,#2b,#2b,#e1,#2b,#2b,#28,#e3
	db #29,#ce,#84,#ff,#19,#e9,#28,#87
.l7f0f
	db #8a,#c0,#d4,#88,#01,#01,#e0,#2b
	db #2b,#ed,#2b,#e0,#2b,#2b,#ed,#2b
	db #e0,#2b,#2b,#ed,#2b,#e0,#30,#30
.l7f2e equ $ + 7
	db #e3,#30,#e1,#2f,#e7,#30,#87,#d4
	db #88,#01,#01,#c0,#e3,#30,#30,#e1
	db #30,#e0,#30,#30,#e1,#30,#e0,#30
	db #30,#e1,#32,#2d,#2d,#2c,#e7,#2d
	db #e3,#2f,#2f,#e1,#2f,#e0,#2f,#2f
	db #e1,#2f,#e0,#2f,#2f,#e1,#2b,#28
	db #28,#27,#e7,#28,#e3,#24,#24,#e1
	db #24,#e0,#24,#24,#e1,#24,#e0,#24
	db #24,#e1,#26,#2d,#2d,#2c,#e7,#2d
	db #e3,#2b,#2b,#e1,#2b,#e0,#2b,#2b
	db #e1,#2b,#e0,#2b,#2b,#e1,#30,#30
.l7f86 equ $ + 7
	db #30,#2f,#e7,#30,#89,#01,#87,#c9
	db #e0,#18,#1c,#e1,#1f,#e0,#1c,#1f
	db #e1,#24,#e0,#1f,#24,#e1,#28,#e0
	db #24,#28,#e1,#2b,#e0,#1a,#1d,#e1
	db #21,#e0,#1d,#21,#e1,#26,#e0,#21
	db #26,#e1,#29,#e0,#26,#29,#e1,#2d
	db #e0,#2b,#2b,#ed,#2b,#e0,#2b,#2b
	db #e3,#2b,#e1,#2a,#e7,#2b,#89,#00
.l7fc0 equ $ + 1
	db #87,#c0,#8a,#e3,#28,#28,#28,#e1
	db #28,#28,#2b,#e3,#2b,#e9,#29,#e3
	db #26,#26,#26,#e1,#26,#26,#28,#e3
	db #28,#e9,#28,#e3,#2b,#2b,#2b,#e1
	db #2b,#2b,#30,#e3,#30,#e9,#2d,#e3
	db #2f,#2f,#2f,#e1,#2f,#2f,#30,#e3
	db #30,#ce,#84,#ff,#19,#e9,#30,#89
	db #01,#87
.l7ff9
	db #89,#ff,#87
.l7ffc
	db #89,#00,#87
;
; #867f
; ld a,#0a
; ld (#774d),a
; call #6f66
;
.music_info
	db "Arcade Flight Simulator (1989)(Codemasters)(David Whittaker)",0
	db "",0

	read "music_end.asm"
