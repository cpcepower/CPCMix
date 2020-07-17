; Music of Terminator 2 - Judgement Day (1991)(Ocean Software)(Jonathan Dunn)()
; Ripped by Megachur the 22/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TERMI2JD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #b26f
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"
;
.music_end
.lb26f
;
	db #00
.lb270
	db #00
;
.init_music	; a=0->2
;
	ld hl,lb26f
	ld (hl),#00
	inc hl
	ld (hl),#00
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,lbf49
	add hl,bc
	ld a,(hl)
	ld (lb37a),a
	inc hl
	ld ix,lb2d8
	ld c,#27
	ld a,#03
.lb292
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#20),#00
	ld (ix+#21),#00
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
	ld (ix+#03),e
	ld (ix+#04),d
	ld (ix+#05),e
	ld (ix+#06),d
	ld (ix+#25),#01
	add ix,bc
	dec a
	jr nz,lb292
	ld (lb62c),a
	inc a
	ld (lb34d),a
	ld (lb26f),a
	ld a,#01
	ld (lb2e8),a
	ld (lb30f),a
	ld a,#02
	ld (lb336),a
	ret
.lb2d8
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb2e8
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
.lb2ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb30f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
.lb326
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb336
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
.lb34d
	db #00
;
.play_music
;
	call lbb9b
	ld a,(lb26f)
	and a
	jp z,lb3aa
.lb359 equ $ + 1
	ld a,#00
	ld (lb3a6),a
	ld hl,lb34d
	dec (hl)
	jr nz,lb37e
	ld b,(hl)
	ld ix,lb2d8
	call lb524
	ld ix,lb2ff
	call lb524
	ld ix,lb326
	call lb524
.lb37a equ $ + 1
	ld a,#01
	ld (lb34d),a
.lb37e
	ld ix,lb2d8
	call lb5f9
	ld (lb70a),hl
	ld (lb712),a
	ld ix,lb2ff
	call lb5f9
	ld (lb70c),hl
	ld (lb713),a
	ld ix,lb326
	call lb5f9
	ld (lb70e),hl
	ld (lb714),a
.lb3a6 equ $ + 1
	ld a,#00
	ld (lb710),a
.lb3aa
	ld a,(lb270)
	and a
	jr z,lb3da
	ld hl,(lb717)
	ld (lb70a),hl
	ld hl,(lb71b)
	ld (lb70e),hl
	ld a,(lb71d)
	ld (lb710),a
	ld a,(lb711)
	or #2d
	ld hl,lb71e
	and (hl)
	ld (lb711),a
	ld a,(lb71f)
	ld (lb712),a
.lb3d6 equ $ + 2
	ld a,(lb721)
	ld (lb714),a
.lb3da
	ld a,(lb26f)
	ld hl,lb270
	or (hl)
	ret z
	ld hl,lb715
	ld d,#0b
.lb3e7
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
	jp p,lb3e7
	ret
.lb408
	xor a
	ld (lb26f),a
.lb40c
	ld de,#0d00
.lb40f
	call lb419
	dec d
	jp p,lb40f
	ld de,#073f
.lb419
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
	xor a
	ld (lb270),a
	ld (lb712),a
	ld (lb713),a
	ld (lb714),a
	ret
;
.stop_music
;
	xor a
	ld (lb26f),a
	ld (lb270),a
	call lb40c
	xor a
	ld (lb712),a
	ld (lb713),a
	ld (lb714),a
	ret
	db #a2,#8a,#8e,#93,#51,#80,#7b,#11
	db #6a,#62,#26,#10,#38,#8f,#06,#9c
	db #a1,#a6,#aa,#b0
	pop hl
	jp lb408
	jp lbab1
	ld a,(ix+#26)
	ld c,a
	and #07
	ld hl,lb6d5
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp lb539
	ld a,(ix+#26)
	ld c,a
	and #38
	ld hl,lb6d5
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp lb539
	ld hl,lb6d5
	ld a,(ix+#26)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp lb539
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr lb539
	ld a,(de)
	inc de
	ld (lb62c),a
	jr lb539
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr lb539
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr lb539
	ld (ix+#1d),b
	jr lb539
	ld (ix+#1d),#40
	jr lb539
	ld (ix+#1d),#c0
	jr lb539
	set 1,(ix+#00)
	jr lb539
	ld (ix+#13),b
	res 5,(ix+#00)
	jr lb577
	res 5,(ix+#00)
	jr lb577
	ld (ix+#1f),#ff
	jr lb539
	ld (ix+#1f),b
	jr lb539
	ld a,#01
	ld (ix+#24),a
	jr lb539
	ld a,(de)
	inc de
	ld (ix+#11),a
	ld (ix+#24),#00
	jr lb539
.lb524
	dec (ix+#10)
	jr nz,lb59e
	ld (ix+#00),b
	ld a,(ix+#25)
	or a
	jp nz,lbab1
	ld e,(ix+#01)
	ld d,(ix+#02)
.lb539
	ld a,(de)
	inc de
	and a
	jp m,lb5af
	add (ix+#20)
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,lb54e
	ld (lb359),a
.lb54e
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld (ix+#0b),l
	ld (ix+#0c),h
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
.lb577
	ld a,(ix+#24)
	or a
	jr z,lb581
	ld a,(de)
	inc de
	jr lb584
.lb581
	ld a,(ix+#11)
.lb584
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,lb59d
	ld a,(lb270)
	and a
	jr nz,lb59d
	ld (ix+#1f),#ff
.lb59d
	ret
.lb59e
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,lb5ab
	inc (ix+#12)
	ret
.lb5ab
	dec (ix+#12)
	ret
.lb5af
	cp #b0
	jr c,lb5f1
	add #20
	jr c,lb5d9
	add #30
	jr nc,lb5d1
	ld c,a
	ld hl,lb7e3
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp lb539
.lb5d1
	add #09
	ld (lb37a),a
	jp lb539
.lb5d9
	ld hl,lb939
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
	jp lb539
.lb5f1
	ld hl,lb3d6
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb5f9
	ld c,(ix+#00)
	bit 5,c
	jr z,lb62b
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,lb625
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,lb625
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.lb625
	ld a,(ix+#18)
	ld (ix+#13),a
.lb62c equ $ + 1
.lb62b
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,lb645
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.lb645
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,lb723
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lb6a6
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lb66f
	bit 0,c
	jr nz,lb68d
.lb66f
	bit 5,l
	jr nz,lb67f
	sub (ix+#1b)
	jr nc,lb68a
	set 5,(ix+#1d)
	sub a
	jr lb68a
.lb67f
	add (ix+#1b)
	cp b
	jr c,lb68a
	res 5,(ix+#1d)
	ld a,b
.lb68a
	ld (ix+#1c),a
.lb68d
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lb698
	dec d
.lb698
	add #a0
	jr c,lb6a4
.lb69c
	sla e
	rl d
	add #18
	jr nc,lb69c
.lb6a4
	add hl,de
	ex de,hl
.lb6a6
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,lb6d1
	ld b,(ix+#0e)
	djnz lb6ce
	ld c,(ix+#0d)
	bit 7,c
	jr z,lb6bd
	dec b
.lb6bd
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr lb6d1
.lb6ce
	ld (ix+#0e),b
.lb6d1
	cpl
	and #03
.lb6d5 equ $ + 1
	ld a,#38
	jr nz,lb6e2
	ld a,(lb359)
	xor #08
	ld (lb3a6),a
	ld a,#07
.lb6e2
	ld hl,lb711
	xor (hl)
	and (ix+#26)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,lb705
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#26)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (lb3a6),a
.lb705
	ex de,hl
	ld a,(ix+#13)
	ret
.lb711 equ $ + 7
.lb710 equ $ + 6
.lb70e equ $ + 4
.lb70c equ $ + 2
.lb70a
	db #00,#00,#00,#00,#00,#00,#00,#3f
.lb718 equ $ + 6
.lb717 equ $ + 5
.lb715 equ $ + 3
.lb714 equ $ + 2
.lb713 equ $ + 1
.lb712
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb721 equ $ + 7
.lb71f equ $ + 5
.lb71e equ $ + 4
.lb71d equ $ + 3
.lb71b equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.lb723
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
.lb7e3
	db #1d,#1d,#33,#48,#53,#64,#75,#86
	db #91,#9c,#9d,#a8,#ad,#b8,#c3,#cb
	db #d0,#d9,#dc,#df,#e1,#e8,#ed,#ee
	db #f1,#f3,#f5,#f7,#f9,#80,#0c,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#80,#0c,#0b,#09
	db #08,#06,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#80,#00,#00,#02,#02,#07
	db #07,#0c,#0c,#0e,#0e,#13,#93,#00
	db #00,#00,#05,#05,#05,#07,#07,#07
	db #0c,#0c,#0c,#11,#11,#11,#13,#13
	db #93,#00,#00,#00,#05,#05,#05,#08
	db #08,#08,#0c,#0c,#0c,#11,#11,#11
	db #14,#14,#94,#00,#00,#00,#02,#02
	db #02,#07,#07,#07,#0c,#0c,#0c,#0e
	db #0e,#0e,#13,#13,#93,#00,#00,#05
	db #05,#07,#07,#0c,#0c,#11,#11,#13
	db #93,#00,#00,#02,#02,#07,#07,#0c
	db #0c,#0e,#0e,#13,#93,#00,#80,#00
	db #00,#05,#05,#07,#07,#0c,#0c,#11
	db #11,#13,#93,#0c,#0c,#00,#00,#00
	db #80,#00,#00,#03,#03,#07,#07,#0c
	db #0c,#0f,#0f,#13,#93,#00,#00,#04
	db #04,#07,#07,#0c,#0c,#10,#10,#13
	db #93,#00,#00,#00,#05,#05,#05,#0c
	db #0c,#8c,#00,#00,#03,#03,#0c,#8c
	db #02,#04,#00,#00,#02,#02,#07,#07
	db #0c,#8c,#00,#03,#08,#8c,#00,#05
	db #09,#8c,#04,#0c,#80,#00,#00,#04
	db #04,#05,#05,#09,#89,#00,#02,#03
	db #08,#0c,#94,#02,#80,#00,#00,#0c
	db #8c,#00,#05,#88,#00,#05,#87,#00
	db #04,#87,#00,#05,#89,#0c,#04,#80
	db #0c,#03,#80,#00,#04,#89,#00,#03
	db #87,#0c,#0c,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00
	db #80
.lb939
	dw lb95a,lb95d,lb969,lb971
	dw lb978,lb97b,lb98e,lb9a1
	dw lba2d,lba39,lba47,lba56
	dw lba59,lba5d,lba61,lba89
.lb95d equ $ + 4
.lb95a equ $ + 1
	db #00,#06,#87,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0b,#0a,#08,#07,#87,#00
.lb969
	db #0b,#07,#04,#03,#01,#00,#87,#00
.lb978 equ $ + 7
.lb971
	db #0a,#0c,#0e,#0c,#0a,#87,#00,#00
.lb97b equ $ + 2
	db #87,#00,#0f,#0f,#0e,#0d,#0c,#09
	db #07,#07,#05,#05,#05,#04,#04,#04
.lb98e equ $ + 5
	db #04,#04,#00,#87,#00,#0e,#0d,#0c
	db #0a,#08,#06,#06,#05,#05,#05,#05
	db #04,#04,#04,#04,#04,#00,#87,#00
.lb9a1
	db #05,#07,#09,#0a,#0a,#0a,#0a,#0b
	db #0b,#0b,#0b,#01,#0c,#0c,#0c,#0c
	db #0d,#0d,#0d,#0c,#0c,#0c,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #03,#03,#03,#02,#02,#02,#01,#01
.lba2d equ $ + 4
	db #01,#01,#87,#00,#0d,#08,#07,#06
	db #05,#04,#03,#02,#01,#00,#87,#00
.lba39
	db #0e,#0a,#09,#08,#07,#06,#05,#04
.lba47 equ $ + 6
	db #03,#02,#01,#00,#87,#00,#0f,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.lba56 equ $ + 5
	db #02,#01,#00,#87,#00,#00,#87,#0e
.lba5d equ $ + 4
.lba59
	db #0c,#00,#87,#04,#0d,#00,#87,#00
.lba61
	db #0f,#0e,#0d,#0c,#0a,#09,#08,#07
	db #06,#05,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#03,#03,#03,#03
	db #03,#03,#03,#02,#02,#02,#02,#02
	db #01,#01,#01,#01,#01,#00,#87,#00
.lba89
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#03,#03,#03
	db #03,#03,#03,#03,#02,#02,#02,#02
	db #02,#01,#01,#01,#01,#01,#00,#87
.lbab1
	xor a
	ld (ix+#25),a
	ld l,(ix+#03)
	ld h,(ix+#04)
.lbabb
	ld a,(ix+#21)
	or a
	jp z,lbad7
	dec a
	ld (ix+#21),a
	jp z,lbadb
	ld l,(ix+#22)
	ld h,(ix+#23)
	ld (ix+#03),l
	ld (ix+#04),h
	jr lbadb
.lbad7
	ld (ix+#20),#00
.lbadb
	ld a,(hl)
	inc hl
	or a
	jp m,lbafe
	ld (ix+#03),l
	ld (ix+#04),h
	add a
	ld e,a
	ld d,#00
	ld hl,lbf5e
	add hl,de
	ld a,(hl)
	ld e,a
	inc hl
	ld d,(hl)
	ld (ix+#01),e
	ld (ix+#02),d
	ld b,#00
	jp lb539
.lbafe
	cp #fd
	jr z,lbb35
	cp #ff
	jr z,lbb2d
	cp #fe
	jr z,lbb1f
	cp #fc
	jr z,lbb18
.lbb0e
	ld a,r
	out (#fe),a
	ld b,#64
.lbb14
	djnz lbb14
	jr lbb0e
.lbb18
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp lbadb
.lbb1f
	ld a,(hl)
	inc hl
	ld (ix+#21),a
	ld (ix+#22),l
	ld (ix+#23),h
	jp lbadb
.lbb2d
	ld a,(hl)
	inc hl
	ld (ix+#20),a
	jp lbadb
.lbb35
	ld l,(ix+#05)
	ld h,(ix+#06)
	jp lbabb
	push af
	push bc
	push de
	push hl
	push ix
	ld hl,lb270
	ld (hl),#00
	ld hl,lbc39
	add a
	add l
	ld l,a
	jr nc,lbb52
	inc h
.lbb52
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,lbd0a
.lbb5a
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lbb5a
	ld a,(lbd0b)
	ld (lbd1b),a
	ld hl,(lbd0c)
	ld (lb717),hl
	ld de,(lbd0e)
	ld (lb71b),de
	ld a,l
	ld (lb71d),a
	ld a,(lbd11)
	ld (lb71e),a
	ld a,(lbd10)
	ld e,a
	ld d,#0c
	call lb419
	ld a,(lbd1a)
	ld e,a
	ld d,#0d
	call lb419
	ld hl,lb270
	inc (hl)
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.lbb9b
	call lbd1d
	ld a,(lb270)
	and a
	ret z
	ld a,(lbd0a)
	and a
	jr nz,lbbaf
	ld (lb270),a
	jp lb40c
.lbbaf
	dec a
	ld (lbd0a),a
	ld a,(lbd1b)
	and a
	jr nz,lbbe8
	ld a,(lbd18)
	and a
	ret z
	dec a
	ld (lbd18),a
	ld a,(lbd0b)
	ld (lbd1b),a
	ld a,(lbd19)
	and a
	jr z,lbbd1
	ld a,(lbd38)
.lbbd1
	ld b,a
	ld a,(lbd0c)
	add b
	ld (lb717),a
	ld a,(lbd0d)
	add b
	and #0f
	ld (lb718),a
	ld hl,(lbd0e)
	ld (lb71b),hl
.lbbe8
	ld hl,lbd1b
	dec (hl)
	ld a,(lbd16)
	and a
	jr z,lbc0f
	jp p,lbc02
	ld hl,(lb717)
	ld de,(lbd12)
	add hl,de
	ld (lb717),hl
	jr lbc0f
.lbc02
	ld hl,(lb717)
	ld de,(lbd12)
	and a
	sbc hl,de
	ld (lb717),hl
.lbc0f
	ld a,(lbd17)
	and a
	jr z,lbc32
	jp p,lbc25
	ld hl,(lb71b)
	ld de,(lbd14)
	add hl,de
	ld (lb71b),hl
	jr lbc32
.lbc25
	ld hl,(lb71b)
	ld de,(lbd14)
	and a
	sbc hl,de
	ld (lb71b),hl
.lbc32
	ld a,(lb717)
	ld (lb71d),a
	ret
.lbc39
	dw lbc4f,lbc60,lbc71,lbc82
	dw lbc93,lbca4,lbcb5,lbcc6
	dw lbcd7,lbce8,lbcf9
.lbc4f
	db #0b,#0b,#02,#01,#83,#00,#07,#fa
	db #38,#00,#40,#00,#ff,#ff,#01,#00
.lbc60 equ $ + 1
	db #00,#0a,#0a,#7a,#02,#6a,#02,#07
	db #fa,#74,#00,#74,#00,#ff,#ff,#01
.lbc71 equ $ + 2
	db #00,#00,#1e,#05,#40,#00,#60,#00
	db #0f,#fa,#20,#00,#30,#00,#01,#01
.lbc82 equ $ + 3
	db #0a,#00,#00,#1e,#06,#a0,#00,#80
	db #00,#0d,#fa,#08,#00,#08,#00,#ff
.lbc93 equ $ + 4
	db #ff,#05,#00,#00,#20,#10,#09,#00
	db #0a,#00,#0a,#d7,#00,#00,#00,#00
.lbca4 equ $ + 5
	db #ff,#ff,#02,#00,#00,#0a,#02,#00
	db #01,#44,#04,#05,#fa,#80,#00,#22
.lbcb5 equ $ + 6
	db #02,#ff,#ff,#0a,#00,#00,#3c,#3c
	db #04,#02,#0b,#02,#06,#f2,#71,#00
.lbcc6 equ $ + 7
	db #71,#00,#ff,#ff,#01,#ff,#00,#78
	db #0a,#40,#00,#60,#01,#1e,#d7,#78
	db #00,#08,#00,#ff,#01,#14,#ff,#00
.lbcd7
	db #78,#06,#01,#02,#11,#02,#14,#f2
	db #c8,#00,#cc,#00,#ff,#ff,#ff,#00
.lbce8 equ $ + 1
	db #00,#06,#06,#90,#00,#98,#00,#03
	db #fa,#60,#00,#60,#00,#ff,#ff,#01
.lbcf9 equ $ + 2
	db #00,#00,#03,#03,#40,#00,#60,#00
	db #01,#fa,#20,#00,#30,#00,#01,#01
.lbd0e equ $ + 7
.lbd0d equ $ + 6
.lbd0c equ $ + 5
.lbd0b equ $ + 4
.lbd0a equ $ + 3
	db #0a,#00,#00,#00,#00,#00,#00,#00
.lbd16 equ $ + 7
.lbd14 equ $ + 5
.lbd12 equ $ + 3
.lbd11 equ $ + 2
.lbd10 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbd1b equ $ + 4
.lbd1a equ $ + 3
.lbd19 equ $ + 2
.lbd18 equ $ + 1
.lbd17
	db #00,#00,#00,#00,#00,#00
.lbd1d
	ld a,(lbd38)
	and #48
	adc #38
	sla a
	sla a
	ld hl,lbd3b
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.lbd3b equ $ + 3
.lbd38
	db #ff,#80,#1b,#34
.lbd3c
	db #fe,#04,#01,#fe,#04,#03,#fe,#08
	db #07,#fe,#04,#07,#fe,#02,#07,#07
	db #07,#07,#07,#fc
	dw lbd3c
.lbd52
	db #fe,#04
	db #05,#fe,#08,#04,#ff,#fd,#fe,#03
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #fc
	dw lbd52
.lbd67
	db #fe,#04,#02,#02,#08
	db #02,#09,#09,#0a,#09,#09,#09,#09
	db #0b,#0b,#0b,#0b,#0b,#0b,#fc
	dw lbd67
.lbd82 equ $ + 5
.lbd81 equ $ + 4
.lbd7d
	db #92,#80,#78,#87,#b0,#92,#8c
	db #b2,#ee,#18,#0a,#18,#14,#18,#0a
	db #18,#14,#18,#3c,#18,#0a,#18,#14
.lbd9b equ $ + 7
	db #18,#0a,#18,#14,#18,#3c,#87,#b0
	db #92,#e0,#8a,#82,#88,#01,#00,#0c
.lbda8 equ $ + 4
	db #f0,#8f,#f0,#87,#18,#0a,#18,#14
	db #18,#0a,#18,#14,#18,#14,#1f,#14
	db #1f,#14,#18,#0a,#18,#14,#18,#0a
	db #18,#14,#18,#14,#1f,#14,#1f,#14
.lbdc5 equ $ + 1
	db #87,#e1,#82,#88,#01,#01,#b1,#90
	db #0c,#0a,#0c,#14,#0c,#0a,#0c,#14
	db #0c,#14,#0c,#0a,#0c,#0a,#0c,#0a
	db #0c,#0a,#0c,#0a,#0c,#14,#0c,#0a
	db #0c,#14,#0c,#14,#0c,#0a,#0c,#0a
.lbdf1 equ $ + 5
	db #0c,#0a,#0c,#0a,#87,#b0,#92,#e0
	db #8a,#83,#88,#01,#01,#0c,#f0,#8f
.lbdfe equ $ + 2
	db #f0,#87,#18,#0a,#18,#14,#18,#0a
	db #18,#14,#18,#14,#1f,#14,#1f,#14
	db #18,#0a,#18,#14,#18,#0a,#18,#14
.lbe1b equ $ + 7
	db #18,#14,#1f,#14,#1f,#14,#87,#b0
	db #88,#01,#01,#e3,#81,#24,#78,#83
	db #8f,#78,#81,#29,#78,#83,#8f,#78
.lbe33 equ $ + 7
	db #81,#2b,#78,#83,#8f,#78,#87,#e4
.lbe37 equ $ + 3
	db #00,#78,#87,#b0,#e3,#83,#88,#01
	db #01,#81,#21,#78,#83,#8f,#50,#28
	db #28,#81,#26,#78,#83,#8f,#78,#87
.lbe4c
	db #8c,#b2,#ee,#0c,#50,#1f,#14,#1f
	db #14,#0c,#50,#1f,#14,#1f,#14,#87
.lbe5e equ $ + 2
.lbe5c
	db #0c,#0c,#fe,#03,#0c,#ff,#fd,#fe
	db #03,#0c,#fc
	dw lbe5e
.lbe6c equ $ + 3
.lbe69
	db #fe,#04,#00
	db #0d,#fc
	dw lbe6c
.lbe73 equ $ + 3
.lbe70
	db #fe,#04,#00,#0e
	db #fc
	dw lbe73
.lbe77
	db #92,#b1,#90,#93,#0a
	db #8a,#e5,#0c,#e6,#0c,#0c,#e5,#0c
	db #e6,#0c,#0c,#e5,#0c,#e6,#0c,#0c
	db #e5,#0c,#e6,#0c,#0c,#e5,#0c,#e6
	db #0c,#0c,#e5,#0c,#e6,#0c,#0c,#e5
	db #0c,#e6,#0c,#0c,#e5,#0c,#e6,#0c
.lbea8 equ $ + 4
	db #92,#0c,#0a,#87,#b0,#e7,#8a,#88
	db #01,#01,#81,#24,#78,#83,#8f,#78
	db #81,#29,#78,#83,#8f,#78,#8f,#78
	db #8f,#78,#81,#28,#78,#83,#8f,#78
	db #81,#29,#78,#83,#8f,#77,#8f,#78
.lbecf equ $ + 3
	db #8f,#78,#87,#b0,#e7,#8a,#88,#01
	db #01,#80,#3c,#81,#2b,#78,#83,#8f
	db #78,#81,#30,#3c,#83,#8f,#78,#8f
	db #78,#8f,#78,#80,#3c,#81,#2d,#78
	db #83,#8f,#78,#81,#30,#3c,#83,#8f
	db #78,#8f,#78,#8f,#78,#87
.lbefa
	db #fe,#0c
	db #0f,#fe,#0c,#10,#fe,#0c,#11,#fe
	db #0c,#12
.lbf06
	db #14,#fc
	dw lbf06
.lbf0a
	db #13,#fc
.lbf12 equ $ + 6
.lbf0e equ $ + 2
	dw lbf0a
	db #15,#fc
	dw lbf0e
	db #8c,#b1
.lbf1b equ $ + 7
	db #ef,#92,#22,#28,#23,#28,#87,#22
.lbf20 equ $ + 4
	db #20,#23,#20,#87,#22,#18,#23,#18
.lbf2a equ $ + 6
.lbf25 equ $ + 1
	db #87,#22,#10,#23,#10,#87,#92,#e0
	db #8a,#88,#01,#00,#82,#b0,#0c,#ff
.lbf37 equ $ + 3
	db #8f,#ff,#87,#22,#08,#23,#08,#87
.lbf3c
	db #92,#e0,#8a,#88,#01,#00,#83,#b0
	db #0c,#ff,#8f,#ff,#87
.lbf49
	db #01
	dw lbd3c,lbd52,lbd67
	db #01
	dw lbe5c,lbe69,lbe70
	db #01
	dw lbf0a,lbefa,lbf0e
.lbf5e
	dw lbd7d,lbd81,lbd9b,lbda8
	dw lbdc5,lbdf1,lbd82,lbdfe
	dw lbe1b,lbe33,lbe37,lbe4c
	dw lbe77,lbea8,lbecf,lbf12
	dw lbf1b,lbf20,lbf25,lbf2a
	dw lbf37,lbf3c
;
.music_info
	db "Terminator 2 - Judgement Day (1991)(Ocean Software)(Jonathan Dunn)",0
	db "",0

	read "music_end.asm"
