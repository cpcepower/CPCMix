; Music of Rasterscan (1987)(Mastertronic)(Jason C Brooke)()
; Ripped by Megachur the 20/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RASTERSC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #4b0c

	read "music_header.asm"

	jp l4e34
.l4b0f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l4b29
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l4b43
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
.l4b5e equ $ + 1
;
.play_music
;
	ld a,#01
	or a
	jr nz,l4bac
	ld b,a
	ld hl,l4c44
	dec (hl)
	jr nz,l4b80
	ld (hl),#04
	ld ix,l4b0f
	call l4cd1
	ld ix,l4b29
	call l4cd1
	ld ix,l4b43
	call l4cd1
.l4b81 equ $ + 1
.l4b80
	ld a,#00
	ld (l4eb2),a
	ld ix,l4b0f
	ld bc,l4eb4
	call l4d66
	ld (l4eac),hl
	ld ix,l4b29
	ld bc,l4eb5
	call l4d66
	ld (l4eae),hl
	ld ix,l4b43
	ld bc,l4eb6
	call l4d66
	ld (l4eb0),hl
.l4bad equ $ + 1
.l4bac
	ld a,#01
	or a
	jr nz,l4c09
	ld hl,l4c43
	dec (hl)
	jr nz,l4bc0
	ld (l4eb6),a
	inc a
	ld (l4bad),a
	jr l4c09
.l4bc0
	ld de,(l4c3f)
.l4bc5 equ $ + 1
	ld a,(l4c39)
	or a
	jr z,l4be0
	ld hl,l4c42
	dec (hl)
	jr nz,l4be0
	ld (hl),a
	ld hl,l4c3a
	rrc (hl)
	ld hl,(l4c3b)
	jr c,l4bde
	ld hl,(l4c3d)
.l4bde
	add hl,de
	ex de,hl
.l4be0
	ld hl,(l4c34)
	add hl,de
	ld a,(l4c38)
	or a
	jr z,l4bf7
	ex de,hl
	ld hl,l4c41
	dec (hl)
	jr nz,l4bf6
	ld (hl),a
	ld de,(l4c36)
.l4bf6
	ex de,hl
.l4bf7
	ld (l4c3f),hl
	ld (l4eb0),hl
	ld hl,l4eb3
	set 5,(hl)
	res 2,(hl)
	ld a,#10
	ld (l4eb6),a
.l4c09
	sub a
	ld c,a
.l4c0c equ $ + 1
	cp #00
	ld hl,l4eb8
	ld de,#0cf6
	jr z,l4c1a
	inc l
	inc d
	ld (l4c0c),a
.l4c1a
	ld a,#c0
.l4c1c
	ld b,#f4
	out (c),d
	ld b,e
	out (c),a
	rlca
	out (c),c
	dec b
	outd
	ld b,e
	out (c),a
	rrca
	out (c),c
	dec d
	jp p,l4c1c
	ret
.l4c3b equ $ + 7
.l4c3a equ $ + 6
.l4c39 equ $ + 5
.l4c38 equ $ + 4
.l4c36 equ $ + 2
.l4c34
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4c43 equ $ + 7
.l4c42 equ $ + 6
.l4c41 equ $ + 5
.l4c3f equ $ + 3
.l4c3d equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4c44
.music_end
	db #00
;
.jumps_table
;
	db #eb,#7b,#3f,#6f,#72,#19,#51,#7a
	db #02,#31

	ld hl,l4bac	;db #21,#ac,#4b
	ex (sp),hl
;
.stop_music
;
	ld a,#3f
	ld (l4b5e),a
	ld (l4e1f),a
	ld (l4eb3),a
	sub a
	ld (l4eb6),a
	ret
	ld c,(ix+#05)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	ld a,(hl)
	inc l
	or (hl)
	jr nz,l4c75
	sbc hl,bc
	ld c,b
.l4c75
	ld d,(hl)
	dec l
	ld e,(hl)
	inc c
	inc c
	ld (ix+#05),c
	jr l4ce4
	ld a,(de)
	inc de
	ld (ix+#18),a
	jr l4ce4
	ld a,(de)
	inc de
	ld (ix+#06),b
	ld (ix+#07),b
	ld (ix+#0b),a
	set 2,(ix+#00)
	ld a,(de)
	inc de
	ld (ix+#0c),a
	jr l4ce4
	ld a,(de)
	inc de
	ld (ix+#16),a
	ld a,(de)
	inc de
	add a
	ld (ix+#15),a
	ld c,#40
	jr nc,l4cad
	ld c,#50
.l4cad
	srl a
	ld (ix+#17),a
	ld (ix+#00),c
	jr l4ce4
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l4ce4
	ld (ix+#00),b
	jr l4ce4
	ld a,(de)
	inc de
	ld (l4e23),a
	set 1,(ix+#00)
	jr l4ce4
.l4cd1
	dec (ix+#0d)
	ld a,(ix+#00)
	jr nz,l4d21
	and #71
	ld (ix+#00),a
	ld e,(ix+#01)
	ld d,(ix+#02)
.l4ce4
	ld a,(de)
	inc de
	cp #b0
	jr c,l4d16
	add #20
	jr c,l4d01
	add #20
	jr c,l4d07
	ld c,a
	ld hl,l4efc
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#08),l
	ld (ix+#09),h
	jr l4ce4
.l4d01
	inc a
	ld (ix+#0e),a
	jr l4ce4
.l4d07
	ld c,a
	ld hl,l5019
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#13),l
	ld (ix+#14),h
	jr l4ce4
.l4d16
	ld c,a
	add a
	jr nc,l4d36
	ld hl,l4bc5
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l4d21
	bit 3,a
	ret z
	add a
	sbc a
	or #01
	add a
	add (ix+#0f)
	ld (ix+#0f),a
	ret
	ld (ix+#12),#f0
	jr l4d59
.l4d36
	ld (ix+#0f),a
	ld (ix+#12),b
	ld (ix+#11),b
	ld (ix+#0a),b
	sub #a8
	ld c,#38
	jr c,l4d4d
	ld c,#07
	ld (l4b81),a
.l4d4d
	ld a,c
	ld c,(ix+#19)
	and c
	ld hl,l4e1f
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
.l4d59
	ld a,(ix+#0e)
	ld (ix+#0d),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l4d66
	ld d,#00
	ld a,(ix+#12)
	cp #f0
	jr nc,l4d87
	sub #10
	ld (ix+#12),a
	jr nc,l4d87
	ld l,(ix+#13)
	ld h,(ix+#14)
	ld e,(ix+#11)
	add hl,de
	ld a,(hl)
	inc (ix+#11)
	ld (ix+#12),a
.l4d87
	and #0f
	ld (bc),a
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld e,(ix+#0a)
	add hl,de
	ld a,(hl)
	add a
	jr nc,l4d9a
	ld e,#ff
.l4d9a
	inc e
	ld (ix+#0a),e
	add (ix+#0f)
	add (ix+#18)
	ld hl,l4eba
	ld e,a
	ld (l4de3),a
	add hl,de
	ld e,(hl)
	inc l
	ld d,(hl)
	ld c,(ix+#00)
	bit 6,c
	jr z,l4df0
	ld b,(ix+#15)
	ld a,c
	cpl
	and #11
	ld a,(ix+#17)
	jr z,l4ddc
	bit 5,c
	jr nz,l4dd0
	sub (ix+#16)
	jr nc,l4dd9
	set 5,c
	sub a
	jr l4dd9
.l4dd0
	add (ix+#16)
	cp b
	jr c,l4dd9
	res 5,c
	ld a,b
.l4dd9
	ld (ix+#17),a
.l4ddc
	srl b
	sub b
	ld l,a
	sbc a
	ld h,a
.l4de3 equ $ + 1
	ld a,#00
	add #d0
	jr c,l4dee
	ld b,#0c
.l4dea
	add hl,hl
	add b
	jr nc,l4dea
.l4dee
	add hl,de
	ex de,hl
.l4df0
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l4e1b
	ld b,(ix+#0c)
	djnz l4e18
	ld c,(ix+#0b)
	bit 7,c
	jr z,l4e07
	dec b
.l4e07
	ld l,(ix+#06)
	ld h,(ix+#07)
	add hl,bc
	ld (ix+#06),l
	ld (ix+#07),h
	add hl,de
	ex de,hl
	jr l4e1b
.l4e18
	ld (ix+#0c),b
.l4e1b
	cpl
	and #03
.l4e1f equ $ + 1
	ld a,#3f
	jr nz,l4e29
.l4e23 equ $ + 1
	ld a,#10
	ld (l4eb2),a
	ld a,#07
.l4e29
	ld hl,l4eb3
	xor (hl)
	and (ix+#19)
	xor (hl)
	ld (hl),a
	ex de,hl
	ret
;
; init sound effects !
;
.l4e34
	ld c,a
	add a
	add a
	add a
	ld b,#00
	ld hl,l5327
	add hl,bc
	ld c,a
	add hl,bc
	add hl,bc
	ld de,l4c34
	ld c,#0d
	di
	ldir
	ld a,(hl)
	inc hl
	ld (l4c43),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,(hl)
	ld (l4eb7),de
	ld (l4eb9),a
	ld hl,(l4c38)
	ld (l4c41),hl
	sub a
	ld (l4bad),a
	inc a
	ld (l4c0c),a
	ei
	ret
;
.init_music
;
	ld hl,l507a
	ld ix,l4b0f
	ld bc,#001a
	ld a,#03
	ld (l4b5e),a
.l4e79
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#0d),#01
	ld (ix+#00),b
	ld (ix+#18),b
	ld (ix+#03),e
	ld (ix+#04),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	pop hl
	ld (ix+#01),e
	ld (ix+#02),d
	add ix,bc
	dec a
	jr nz,l4e79
	ld (l4b5e),a
	inc a
	ld (l4c44),a
	ret
.l4eb0 equ $ + 6
.l4eae equ $ + 4
.l4eac equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4eb9 equ $ + 7
.l4eb8 equ $ + 6
.l4eb7 equ $ + 5
.l4eb6 equ $ + 4
.l4eb5 equ $ + 3
.l4eb4 equ $ + 2
.l4eb3 equ $ + 1
.l4eb2
	db #00,#38,#00,#00,#00,#00,#00,#00
.l4eba
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
	dw #017b,#0165,#0151,#013e
.l4efc equ $ + 2
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
.l4f62
	dw l50a6,l50c9,l50f0,l50f0
	dw l50f0,l51a0,l51a0,l50a4
	dw l50c9,l5296,l50c9,l50c9
	dw l5303,l5303,l5303,l5305
	dw l51a0,l51a0,#0000
.l4f88
	dw l5094,l5105,l5105,l5157
	dw l5157,l5177,l51f4,l51f7
	dw l5092,l5105,l5105,l52a0
	dw l5105,l5105,l52ac,l52ae
	dw l51f4,l51f7,#0000
.l4fae
	dw l5082,l5271,l5271,l5271
	dw l5271,l5271,l5271,l522d
	dw l51ca,l51ca,l5080,l5271
	dw l52a9,l5271,l5271,l5271
	dw l5271,l5271,l5271,l5271
	dw l5271,l5271,l52f0,l52f0
	dw l52f0,l52f0,l52f0,l52f0
	dw l51ca,l51ca,#0000
	db #09,#09,#0c,#0f,#12,#17,#1a,#1d
	db #20,#80,#00,#04,#0c,#87,#00,#03
	db #0c,#87,#00,#0a,#10,#87,#00,#04
	db #00,#07,#0b,#84,#00,#07,#0a,#83
	db #00,#05,#0c,#88,#00,#02,#0c,#87
	db #0c,#0c,#08,#02,#80
.l5019
	db #10,#12,#18,#1a,#1e,#21,#20,#1f
	db #2b,#2c,#32,#32,#39,#42,#45,#4b
	db #0b,#0c,#f0,#3d,#2b,#38,#47,#56
	db #65,#f0,#0c,#0e,#f0,#5d,#4c,#3b
	db #2a,#f9,#08,#17,#36,#f0,#0d,#1c
	db #1b,#19,#17,#0b,#1a,#18,#16,#14
	db #09,#18,#f7,#1a,#f9,#0c,#1b,#1a
	db #19,#18,#16,#f5,#0e,#1d,#1a,#18
	db #17,#16,#15,#24,#f3,#1c,#1a,#18
	db #17,#16,#15,#24,#32,#41,#f0,#0b
	db #0a,#16,#f0,#0d,#0c,#18,#15,#13
	db #11,#f0,#2c,#10,#1b,#10,#19,#10
	db #f8
.l507a
	dw l4f62,l4f88,l4fae
.l5082 equ $ + 2
.l5080
	db #89,#1c,#c8,#b0,#86,#01,#02,#f7
	db #35,#e7,#30,#eb,#2e,#e3,#2c,#ef
.l5094 equ $ + 4
.l5092 equ $ + 2
	db #29,#85,#89,#04,#c8,#b0,#86,#01
	db #01,#f7,#35,#e7,#30,#eb,#33,#e3
.l50a6 equ $ + 6
.l50a4 equ $ + 4
	db #32,#ef,#30,#85,#89,#04,#e1,#cf
	db #b0,#18,#1d,#20,#1d,#18,#1d,#20
	db #1d,#18,#1d,#20,#1d,#18,#1d,#20
	db #1d,#16,#1b,#1d,#1b,#16,#1b,#1d
	db #1b,#1a,#1d,#1c,#1b,#1a,#18,#16
.l50c9 equ $ + 1
	db #14,#c1,#b8,#86,#02,#03,#e3,#05
	db #05,#80,#05,#05,#05,#80,#05,#05
	db #05,#80,#05,#05,#05,#80,#05,#09
	db #09,#80,#09,#09,#09,#80,#09,#05
	db #05,#80,#05,#05,#05,#80,#05,#85
.l50f0
	db #b2,#c7,#1d,#1d,#80,#1d,#1d,#1d
	db #80,#1d,#b7,#1b,#1b,#80,#1b,#b2
.l5105 equ $ + 5
	db #1d,#1d,#80,#1d,#85,#c7,#b0,#86
	db #01,#02,#e1,#1d,#1f,#1d,#1f,#e7
	db #82,#0a,#10,#1d,#ce,#e3,#87,#0a
	db #72,#c7,#20,#1f,#1e,#e1,#1d,#1f
	db #1d,#1f,#e7,#82,#0a,#10,#1d,#ce
	db #e3,#87,#0a,#72,#c7,#20,#1f,#1e
	db #e1,#21,#23,#21,#23,#e7,#82,#0a
	db #10,#21,#ce,#e3,#87,#0a,#72,#c7
	db #18,#1b,#1c,#e1,#1d,#80,#11,#80
	db #e7,#82,#0a,#10,#1d,#ce,#e3,#87
.l5157 equ $ + 7
	db #0a,#72,#c8,#24,#23,#22,#85,#e1
	db #cf,#29,#28,#29,#28,#29,#28,#29
	db #84,#2a,#e7,#2c,#e3,#29,#30,#e5
	db #2e,#e1,#2c,#e3,#2e,#30,#e2,#2c
.l5177 equ $ + 7
	db #e0,#2b,#e3,#29,#e7,#80,#85,#e1
	db #29,#28,#29,#28,#29,#28,#29,#84
	db #2a,#e1,#29,#28,#29,#28,#29,#28
	db #29,#84,#2a,#e1,#29,#28,#29,#28
	db #29,#84,#2a,#29,#28,#29,#84,#2a
	db #29,#28,#29,#84,#2a,#29,#28,#85
.l51a0
	db #cf,#86,#02,#04,#b0,#e3,#68,#e1
	db #29,#2e,#33,#2e,#33,#2e,#e3,#68
	db #e1,#29,#2e,#33,#2e,#33,#2e,#e3
	db #68,#e1,#29,#2c,#30,#2c,#30,#2c
	db #e3,#68,#e1,#29,#2c,#30,#2c,#30
.l51ca equ $ + 2
	db #2c,#85,#cb,#86,#03,#04,#b0,#e3
	db #05,#e1,#1d,#27,#22,#1d,#22,#1d
	db #e3,#05,#e1,#1d,#27,#22,#1d,#22
	db #1d,#e3,#05,#e1,#1d,#24,#20,#1d
	db #20,#1d,#e3,#05,#e1,#1d,#24,#20
.l51f7 equ $ + 7
.l51f4 equ $ + 4
	db #1d,#20,#1d,#85,#86,#02,#03,#c7
	db #e3,#82,#14,#01,#1d,#e1,#2e,#e3
	db #33,#e1,#35,#e3,#33,#82,#14,#01
	db #1d,#e1,#2e,#e3,#33,#e1,#35,#e3
	db #33,#82,#14,#01,#1d,#e1,#2c,#e3
	db #30,#e1,#31,#e3,#30,#82,#14,#01
	db #1d,#e1,#2c,#e3,#30,#e1,#31,#e3
.l522d equ $ + 5
	db #30,#86,#02,#04,#85,#cd,#e1,#87
	db #02,#5e,#64,#5e,#64,#5e,#64,#c1
	db #e3,#82,#14,#01,#1d,#cd,#e1,#87
	db #02,#5e,#64,#5e,#64,#5e,#64,#c1
	db #e3,#82,#14,#01,#1d,#cd,#e1,#87
	db #02,#5e,#64,#5e,#64,#c1,#e3,#82
	db #14,#01,#1d,#e1,#5e,#64,#e3,#82
	db #14,#01,#1d,#e1,#5e,#64,#e3,#82
	db #14,#01,#1d,#e3,#82,#14,#01,#1d
.l5271 equ $ + 1
	db #85,#e1,#cd,#87,#02,#5e,#64,#5e
	db #64,#54,#64,#5e,#64,#54,#64,#5e
	db #64,#54,#64,#5e,#64,#54,#64,#5e
	db #64,#54,#64,#5e,#64,#54,#64,#5e
.l5296 equ $ + 6
	db #64,#54,#5e,#68,#72,#85,#c8,#ff
	db #11,#82,#05,#01,#11,#89,#00,#85
.l52a0
	db #c8,#ff,#86,#02,#06,#b2,#35,#83
.l52ae equ $ + 6
.l52ac equ $ + 4
.l52a9 equ $ + 1
	db #35,#89,#00,#85,#e1,#c0,#2c,#2c
	db #2c,#2c,#2c,#2c,#2c,#2c,#2b,#2b
	db #2b,#2b,#2b,#2b,#2b,#2b,#2e,#2e
	db #2e,#2e,#2e,#2e,#2b,#2b,#2c,#2c
	db #2c,#2c,#2c,#2c,#80,#80,#2c,#2c
	db #2c,#2c,#2c,#2c,#2c,#2c,#2b,#2b
	db #2b,#2b,#2b,#2b,#2b,#2b,#27,#27
	db #27,#27,#27,#27,#27,#27,#29,#29
	db #28,#29,#29,#29,#80,#c2,#80,#85
.l52f0
	db #c2,#e1,#5c,#1d,#1d,#1d,#54,#1d
	db #1d,#1d,#5c,#1d,#1d,#1d,#54,#1d
.l5305 equ $ + 5
.l5303 equ $ + 3
	db #1d,#1d,#85,#c0,#e1,#24,#24,#24
	db #24,#24,#24,#24,#24,#22,#22,#22
	db #22,#22,#22,#22,#22,#22,#22,#22
	db #22,#22,#22,#22,#22,#20,#20,#20
.l5327 equ $ + 7
	db #20,#20,#20,#20,#20,#c2,#85,#f7
	db #7f,#ee,#02,#00,#02,#ab,#f1,#7f
	db #0f,#00,#ee,#02,#32,#a0,#00,#0a
	db #09,#00,#fa,#00,#00,#02,#ab,#0f
	db #00,#f1,#7f,#fa,#00,#32,#a0,#00
	db #0a,#00,#00,#96,#00,#02,#01,#55
	db #eb,#ff,#14,#00,#a0,#00,#08,#d0
	db #07,#09,#01,#00,#5a,#00,#03,#01
	db #55,#eb,#ff,#14,#00,#a0,#00,#1e
	db #94,#11,#09,#14,#00,#2c,#01,#06
	db #00,#00,#00,#00,#00,#00,#c8,#00
	db #32,#58,#1b,#09,#f6,#7f,#96,#00
	db #0a,#01,#55,#fe,#7f,#02,#00,#a0
	db #00,#32,#88,#13,#09,#00,#00,#c3
	db #00,#08,#01,#aa,#f6,#7f,#09,#00
	db #c8,#00,#0f,#ee,#02,#08,#00,#00
	db #e1,#00,#04,#00,#00,#00,#00,#00
	db #00,#18,#01,#0c,#5e,#01,#08,#00
	db #00,#18,#01,#04,#00,#00,#00,#00
	db #00,#00,#e1,#00,#0c,#5e,#01,#08
	db #d7,#ff,#bc,#02,#00,#02,#aa,#0a
	db #00,#0e,#00,#bc,#02,#1a,#ac,#0d
	db #08,#00
;
.music_info
	db "Rasterscan (1987)(Mastertronic)(Jason C Brooke)",0
	db "",0

	read "music_end.asm"
