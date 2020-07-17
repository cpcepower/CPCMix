; Music of Stormbringer (1987)(Mastertronic)(David Whittaker)(Zx Spectrum Player)
; Ripped by Megachur the 21/09/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "STORMBRI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #c000

	read "music_header.asm"
;
.init_music
;
	ld a,#00
	ex af,af'
	xor a
	ld (lc4ed),a
	ex af,af'
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,lc4ee
	add hl,bc
	ld a,(hl)
	ld (lc0e5),a
	inc hl
	ld ix,lc058
	ld c,#20
	ld a,#03
.lc021
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
	jr nz,lc021
	ld (lc32b),a
	inc a
	ld (lc0b8),a
	ld (lc4ed),a
	ret
.lc058
	db #20,#c9,#c6,#f5,#c4,#2a,#00,#00
	db #fa,#b2,#c4,#b3,#c4,#f4,#01,#00
	db #02,#02,#1c,#0f,#00,#21,#11,#05
	db #05,#0f,#02,#01,#00,#60,#00,#09
.lc078
	db #20,#90,#c7,#75,#c5,#2a,#00,#80
	db #fa,#c9,#c4,#ca,#c4,#f5,#01,#00
	db #02,#02,#32,#0d,#00,#12,#02,#03
	db #03,#0d,#02,#01,#00,#60,#00,#12
.lc098
	db #08,#61,#c9,#f1,#c5,#1e,#00,#11
	db #00,#b2,#c4,#b3,#c4,#01,#01,#00
	db #0c,#20,#44,#09,#11,#31,#01,#35
	db #00,#0a,#02,#01,#04,#40,#00,#24
.lc0b8
	db #03
;
.play_music
;
	ld a,(lc4ed)
	and a
	jp z,lc112
.lc0c1 equ $ + 1
	ld a,#1f
	ld (lc10e),a
	ld hl,lc0b8
	dec (hl)
	jr nz,lc0e6
	ld b,(hl)
	ld ix,lc058
	call lc241
	ld ix,lc078
	call lc241
	ld ix,lc098
	call lc241
	ld hl,lc0b8
.lc0e5 equ $ + 1
	ld (hl),#04
.lc0e7 equ $ + 1
.lc0e6
	ld ix,lc058
	call lc2df
	ld (lc3ee),hl
	ld (lc3f6),a
	ld ix,lc078
	call lc2df
	ld (lc3f0),hl
	ld (lc3f7),a
	ld ix,lc098
	call lc2df
	ld (lc3f2),hl
	ld (lc3f8),a
.lc10e equ $ + 1
	ld a,#1f
	ld (lc3f4),a
.lc112
	ld a,(lc4ed)
	and a
	jr nz,lc12b
	ret
;
.stop_music
;
	xor a
	ld (lc4ed),a
	call lc149
	xor a
	ld (lc3f6),a
	ld (lc3f7),a
	ld (lc3f8),a
	ret
.lc12b
	ld hl,lc3fb
; modified by Megachur
	ld d,#0d
	jp send_all_data_to_ay
	defs 22,0
.lc149
	ld de,#0d00
send_data_to_ay_loop
	call send_data_to_ay
	dec d
	jp p,send_data_to_ay_loop
	ld de,#073f
	jp send_data_to_ay
	defs 14,0
; modified by Megachur

	db #cb,#b3,#b7,#bc,#7a,#a9,#a4,#11
	db #93,#8b,#50,#3a,#62,#b8,#02,#c5
	xor a
	ld (lc4ed),a
	pop hl
	jp lc149
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
	jr nz,lc1a1
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lc1a1
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp lc24f
	ld a,(ix+#1f)
	ld c,a
	and #07
	ld hl,lc3d3
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp lc24f
	ld a,(ix+#1f)
	ld c,a
	and #38
	ld hl,lc3d3
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp lc24f
	ld hl,lc3d3
	ld a,(ix+#1f)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr lc24f
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr lc24f
	ld a,(de)
	inc de
	ld (lc32b),a
	jr lc24f
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr lc24f
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr lc24f
	ld (ix+#1d),b
	jr lc24f
	ld (ix+#1d),#40
	jr lc24f
	ld (ix+#1d),#c0
	jr lc24f
	set 1,(ix+#00)
	jr lc24f
	ld (ix+#13),b
	res 5,(ix+#00)
	jr lc27b
	res 5,(ix+#00)
	jr lc27b
.lc241
	dec (ix+#10)
	jr nz,lc288
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.lc24f
	ld a,(de)
	inc de
	and a
	jp m,lc299
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,lc261
	ld (lc0c1),a
.lc261
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.lc27b
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.lc288
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,lc295
	inc (ix+#12)
	ret
.lc295
	dec (ix+#12)
	ret
.lc299
	cp #c0
	jr c,lc2d7
	add #20
	jr c,lc2bc
	add #10
	jr c,lc2c2
	add #10
	ld c,a
	ld hl,lc4a3
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr lc24f
.lc2bc
	inc a
	ld (ix+#11),a
	jr lc24f
.lc2c2
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
	jp lc24f
.lc2d7
	ld hl,lc0e7
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lc2df
	ld c,(ix+#00)
	bit 5,c
	jr z,lc32a
	ld a,(ix+#16)
	sub #10
	jr nc,lc312
	bit 6,c
	jr z,lc317
	add (ix+#13)
	jr nc,lc2f7
	sbc a
.lc2f7
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,lc30d
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr lc32a
.lc30d
	ld (ix+#18),a
	jr lc32a
.lc312
	ld (ix+#16),a
	jr lc32a
.lc317
	cpl
	sub #0f
	add (ix+#13)
	jr c,lc320
	sub a
.lc320
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,lc32a
	res 5,c
.lc32b equ $ + 1
.lc32a
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,lc342
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.lc342
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,lc3e3
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lc3a4
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lc36d
	bit 0,c
	jr nz,lc38b
.lc36d
	bit 5,l
	jr nz,lc37d
	sub (ix+#1b)
	jr nc,lc388
	set 5,(ix+#1d)
	sub a
	jr lc388
.lc37d
	add (ix+#1b)
	cp b
	jr c,lc388
	res 5,(ix+#1d)
	ld a,b
.lc388
	ld (ix+#1c),a
.lc38b
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lc396
	dec d
.lc396
	add #a0
	jr c,lc3a2
.lc39a
	sla e
	rl d
	add #18
	jr nc,lc39a
.lc3a2
	add hl,de
	ex de,hl
.lc3a4
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,lc3cf
	ld b,(ix+#0e)
	djnz lc3cc
	ld c,(ix+#0d)
	bit 7,c
	jr z,lc3bb
	dec b
.lc3bb
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr lc3cf
.lc3cc
	ld (ix+#0e),b
.lc3cf
	cpl
	and #03
.lc3d3 equ $ + 1
	ld a,#38
	jr nz,lc3e0
	ld a,(lc0c1)
	xor #08
	ld (lc10e),a
	ld a,#07
.lc3e0
	ld hl,lc3f5
.lc3e3
	xor (hl)
	and (ix+#1f)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.lc3f5 equ $ + 7
.lc3f4 equ $ + 6
.lc3f2 equ $ + 4
.lc3f0 equ $ + 2
.lc3ee
	db #e4,#05,#1a,#01,#98,#00,#1f,#38
.lc3f8 equ $ + 2
.lc3f7 equ $ + 1
.lc3f6
	db #0f,#0d,#09,#00,#00
.lc3fb
	dw #0ef8,#0e10,#0d60,#0c80
	dw #0bd8,#0b28,#0a88,#09f0
	dw #0960,#08e0,#0858,#07e0
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
; added by Megachur
;	dw #001d,#001c,#001a,#0019
;	dw #0017,#0016,#0015,#0013
;	dw #0012,#0011,#0010,#000f
; added by Megachur
.lc4a3
	db #0f,#10,#13,#16,#19,#1d,#20,#23
	db #26,#29,#2b,#2d,#2f,#34,#36,#00
	db #87,#00,#03,#07,#87,#00,#04,#07
	db #87,#00,#02,#07,#87,#00,#04,#07
	db #0c,#87,#07,#0c,#0f,#87,#07,#0c
	db #10,#87,#03,#07,#0c,#87,#04,#07
	db #0c,#87,#00,#0c,#87,#00,#03,#87
	db #00,#04,#87,#0c,#0c,#0c,#0c,#00
	db #87,#00,#07,#87,#00,#00,#00,#00
.lc4ee equ $ + 3
.music_end equ $ + 2
.lc4ed equ $ + 2
	db #0c,#87,#01,#04
.lc4f5 equ $ + 6
	dw lc4f5,lc575,lc5f1,lc669
	dw lc67b,lc67b,lc67b,lc67b
	dw lc67b,lc67b,lc67b,lc67b
	dw lc67b,lc67b,lc67b,lc67b
	dw lc67b,lc67b,lc67b,lc67b
	dw lc67b,lc67b,lc67b,lc67b
	dw lc67b,lc67b,lc6de,lc6de
	dw lc6de,lc6de,lc67b,lc67b
	dw lc6de,lc6de,lc6de,lc6de
	dw lc67b,lc67b,lc6fe,lc6fe
	dw lc6de,lc6de,lc6de,lc6de
	dw lc6de,lc6de,lc6de,lc6de
	dw lc67b,lc67b,lc70b,lc70b
	dw lc70b,lc70b,lc70b,lc70b
	dw lc70b,lc70b,lc72b,lc6de
	dw lc6de,lc6de,lc6de,lc67b
.lc575 equ $ + 6
	dw lc67b,lc72b,#0000,lc75c
	dw lc76e,lc76e,lc76e,lc76e
	dw lc76e,lc76e,lc76e,lc76e
	dw lc76e,lc76e,lc76e,lc76e
	dw lc76e,lc76e,lc76e,lc76e
	dw lc76e,lc76e,lc76e,lc76e
	dw lc76e,lc76e,lc796,lc796
	dw lc796,lc796,lc76e,lc76e
	dw lc796,lc796,lc796,lc796
	dw lc76e,lc76e,lc7a6,lc7a6
	dw lc7a6,lc7a6,lc796,lc796
	dw lc796,lc796,lc796,lc796
	dw lc796,lc796,lc76e,lc76e
	dw lc7d2,lc7d2,lc7d2,lc7d2
	dw lc72b,lc796,lc796,lc796
	dw lc796,lc76e,lc76e,lc72b
.lc5f1 equ $ + 2
	dw #0000,lc7fe,lc810,lc810
	dw lc825,lc825,lc851,lc851
	dw lc87d,lc8c9,lc915,lc915
	dw lc825,lc825,lc943,lc943
	dw lc979,lc979,lc979,lc979
	dw lc825,lc825,lc979,lc979
	dw lc979,lc979,lc9e2,lc825
	dw lc825,lc9df,lc9a5,lc9a5
	dw lc979,lc979,lc979,lc979
	dw lc9e2,lc979,lc979,lc979
	dw lc979,lc825,lc825,lc9df
	dw lc9db,lc9b8,lc9e2,lc9db
	dw lc9b8,lc9df,lc72b,lc9e2
	dw lc979,lc979,lc979,lc979
	dw lc825,lc825,lc9df,lc72b
	dw #0000
.lc669
	db #88,#02,#04,#82,#c0,#8a,#d3,#81
	db #21,#91,#ef,#15,#ff,#84,#f4,#01
.lc67b equ $ + 2
	db #8f,#87,#88,#01,#02,#82,#c0,#e1
	db #df,#00,#21,#04,#8a,#15,#15,#15
	db #15,#8b,#dc,#00,#11,#05,#8d,#27
	db #8d,#23,#e3,#8d,#1f,#e1,#df,#00
	db #21,#05,#8a,#15,#1c,#1c,#1c,#8b
	db #dc,#00,#11,#04,#8d,#27,#8d,#23
	db #8d,#1f,#1b,#df,#00,#21,#05,#8a
	db #1a,#1a,#1a,#1a,#8b,#dc,#00,#11
	db #04,#8d,#27,#8d,#23,#8d,#1f,#df
	db #00,#21,#05,#8a,#1a,#1a,#1c,#1c
	db #1c,#8b,#dc,#00,#11,#04,#8d,#3f
	db #8d,#27,#8d,#41,#dc,#00,#11,#05
.lc6de equ $ + 5
	db #81,#8c,#c4,#4c,#87,#88,#01,#02
	db #82,#c0,#e1,#df,#00,#21,#04,#8a
	db #16,#16,#16,#16,#8c,#1d,#8a,#1d
	db #1d,#1d,#1c,#1c,#1c,#1b,#8c,#1b
.lc6fe equ $ + 5
	db #8a,#1b,#19,#19,#87,#81,#c0,#8a
	db #d8,#51,#71,#34,#ff,#4a,#48,#41
.lc70b equ $ + 2
	db #8f,#87,#88,#01,#02,#82,#df,#00
	db #21,#04,#c0,#e1,#8a,#11,#1d,#11
	db #1d,#11,#1d,#8c,#11,#8a,#1d,#11
	db #1d,#11,#1d,#11,#1d,#8c,#11,#8a
.lc72b equ $ + 2
	db #1d,#87,#88,#01,#02,#82,#c0,#e5
	db #8c,#df,#00,#71,#07,#41,#dd,#00
	db #71,#07,#45,#db,#00,#71,#07,#49
	db #d9,#00,#71,#07,#4d,#d7,#00,#71
	db #07,#51,#d5,#00,#71,#07,#55,#d3
	db #00,#71,#07,#59,#d3,#00,#71,#07
.lc75c equ $ + 3
	db #f1,#5d,#87,#88,#02,#04,#82,#c0
	db #8a,#d3,#81,#21,#91,#ef,#18,#ff
.lc76e equ $ + 5
	db #84,#f5,#01,#8f,#87,#88,#01,#02
	db #82,#8a,#dd,#00,#12,#03,#e1,#c1
	db #39,#39,#39,#e9,#39,#e1,#39,#39
	db #39,#e9,#39,#e1,#c6,#32,#32,#32
	db #e7,#32,#e1,#32,#32,#32,#32,#e7
.lc796 equ $ + 5
	db #32,#e1,#c1,#39,#87,#88,#01,#02
	db #82,#8a,#dc,#00,#11,#01,#c1,#ff
.lc7a6 equ $ + 5
	db #84,#01,#40,#46,#87,#88,#01,#02
	db #82,#c0,#e1,#8a,#db,#00,#11,#05
	db #29,#32,#29,#2e,#29,#2d,#29,#2e
	db #29,#32,#29,#2e,#29,#2d,#29,#2e
	db #29,#32,#29,#2e,#29,#2d,#29,#2e
	db #29,#3e,#29,#3a,#29,#39,#29,#3a
.lc7d2 equ $ + 1
	db #87,#88,#01,#02,#8a,#dd,#00,#21
	db #05,#c0,#e1,#1d,#29,#1d,#29,#c9
	db #e5,#31,#e3,#31,#e7,#30,#e1,#2c
	db #2c,#2b,#c0,#c0,#e1,#1d,#29,#1d
	db #29,#c9,#e5,#31,#e3,#31,#e7,#30
.lc7fe equ $ + 5
	db #e1,#38,#38,#37,#87,#88,#02,#04
	db #82,#c0,#8a,#d3,#81,#21,#91,#ef
.lc810 equ $ + 7
	db #1c,#ff,#84,#f6,#01,#8f,#87,#88
	db #01,#02,#82,#cc,#8a,#d9,#51,#21
	db #36,#ff,#4c,#ef,#4a,#e7,#84,#ff
.lc825 equ $ + 4
	db #10,#45,#51,#87,#88,#01,#02,#82
	db #c9,#8a,#dc,#00,#11,#06,#e1,#39
	db #45,#39,#43,#39,#42,#39,#40,#39
	db #45,#39,#43,#39,#42,#39,#40,#32
	db #45,#32,#43,#32,#42,#32,#3e,#32
	db #45,#32,#43,#32,#42,#32,#3e,#87
.lc851
	db #88,#01,#02,#82,#c9,#8a,#dc,#00
	db #21,#06,#e1,#45,#39,#43,#39,#42
	db #39,#40,#39,#45,#39,#43,#39,#42
	db #39,#40,#39,#45,#32,#43,#32,#42
	db #32,#3e,#32,#45,#32,#43,#32,#42
.lc87d equ $ + 4
	db #32,#3e,#32,#87,#88,#01,#02,#82
	db #c9,#8a,#db,#00,#21,#06,#e0,#45
	db #39,#43,#39,#42,#39,#40,#39,#45
	db #39,#43,#39,#42,#39,#40,#39,#45
	db #39,#43,#39,#42,#39,#40,#39,#45
	db #39,#43,#39,#42,#39,#40,#39,#45
	db #32,#43,#32,#42,#32,#3e,#32,#45
	db #32,#43,#32,#42,#32,#3e,#32,#45
	db #32,#43,#32,#42,#32,#3e,#32,#45
	db #32,#43,#32,#42,#32,#3e,#32,#87
.lc8c9
	db #88,#01,#02,#82,#c9,#8a,#db,#00
	db #21,#06,#e0,#51,#45,#4f,#45,#4e
	db #45,#4c,#45,#51,#45,#4f,#45,#4e
	db #45,#4c,#45,#51,#45,#4f,#45,#4e
	db #45,#4c,#45,#51,#45,#4f,#45,#4e
	db #45,#4c,#45,#51,#3e,#4f,#3e,#4e
	db #3e,#4a,#3e,#51,#3e,#4f,#3e,#4e
	db #3e,#4a,#3e,#51,#3e,#4f,#3e,#4e
	db #3e,#4a,#3e,#51,#3e,#4f,#3e,#4e
.lc915 equ $ + 4
	db #3e,#4a,#3e,#87,#88,#01,#02,#82
	db #c0,#8a,#da,#51,#21,#36,#ff,#84
	db #01,#70,#4c,#ef,#84,#01,#30,#4a
	db #e7,#84,#ff,#10,#45,#51,#ff,#84
	db #01,#78,#58,#ef,#84,#01,#30,#56
	db #e7,#84,#ff,#10,#51,#84,#01,#10
.lc943 equ $ + 2
	db #5d,#87,#88,#01,#02,#82,#c0,#8a
	db #da,#11,#31,#35,#e0,#48,#4a,#e5
	db #4b,#f7,#4c,#e0,#4d,#4f,#e5,#50
	db #f3,#51,#e3,#57,#ff,#58,#85,#8f
	db #88,#02,#04,#e0,#3c,#3e,#e5,#3f
	db #f3,#40,#88,#04,#08,#e3,#38,#fb
	db #36,#e3,#38,#ff,#34,#85,#8f,#87
.lc979
	db #88,#01,#02,#82,#c9,#8a,#dd,#00
	db #12,#05,#e0,#52,#4d,#49,#4d,#49
	db #46,#49,#46,#41,#46,#41,#3d,#41
	db #3d,#3a,#3d,#52,#4d,#49,#4d,#49
	db #46,#49,#46,#41,#46,#41,#3d,#41
.lc9a5 equ $ + 4
	db #3d,#3a,#3d,#87,#88,#02,#04,#82
	db #c0,#8a,#d8,#51,#71,#34,#e1,#80
.lc9b8 equ $ + 7
	db #ff,#4a,#48,#41,#fd,#8f,#87,#88
	db #01,#02,#82,#c0,#8a,#e7,#80,#dd
	db #00,#21,#05,#e5,#36,#e3,#36,#e7
	db #35,#e1,#31,#31,#30,#e7,#80,#e5
	db #36,#e3,#36,#e7,#35,#e1,#3d,#3d
.lc9df equ $ + 6
.lc9db equ $ + 2
	db #3c,#87,#ff,#80,#80,#87,#89,#00
.lc9e2 equ $ + 1
	db #87,#89,#03,#87
;
; added by Megachur
;
.send_data_to_ay
;
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
.send_all_data_to_ay
;
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
	jp p,send_all_data_to_ay
	ret
;
; added by Megachur
;
.music_info
	db "Stormbringer (1987)(Mastertronic)(David Whittaker)",0
	db "Zx Spectrum Player converted to CPC by Megachur",0

	read "music_end.asm"
