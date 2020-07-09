; Music of Dizzy - Prince of the Yolkfolk (1991)(Codemasters)(The Oliver Twins)()
; Ripped by Megachur the 13/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DIZZPOTY.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 13
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #868e

	read "music_header.asm"

;
.stop_music
.l868e
;
	xor a
	ld (l8b48),a
	jp l960d
;
.init_music
.l8695
;
	xor a
	ex af,af'
	xor a
	ld (l8b48),a
	ex af,af'
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l8b4a
	add hl,bc
	ld ix,l86e3
	ld c,#1f
	ld a,#03
.l86af
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
	jr nz,l86af
	inc a
	ld (l87e6),a
	ld (l8b48),a
	ret
.l86e7 equ $ + 4
.l86e6 equ $ + 3
.l86e3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
.l8706 equ $ + 4
.l8705 equ $ + 3
.l8702
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
.l8725 equ $ + 4
.l8724 equ $ + 3
.l8721
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l8b4a
	add hl,bc
	ld a,(hl)
	ld (l86e6),a
	inc hl
	ld a,(hl)
	ld (l86e7),a
	inc hl
	ld a,(hl)
	ld (l8705),a
	inc hl
	ld a,(hl)
	ld (l8706),a
	inc hl
	ld a,(hl)
	ld (l8724),a
	inc hl
	ld a,(hl)
.l8767 equ $ + 2
	ld (l8725),a
	ret
;
.play_music
;
	ld a,(l8b48)
	and a
	ret z
.l876f equ $ + 1
	ld a,#00
	ld (l87bc),a
	ld hl,l87e6
	dec (hl)
	jr nz,l8794
	ld b,(hl)
	ld ix,l86e3
	call l88ac
	ld ix,l8702
	call l88ac
	ld ix,l8721
	call l88ac
	ld hl,l87e6
.l8793 equ $ + 1
	ld (hl),#01
.l8794
	ld ix,l86e3
	call l894e
	ld (l8a5f),hl
	ld (l8a67),a
	ld ix,l8702
	call l894e
	ld (l8a61),hl
	ld (l8a68),a
	ld ix,l8721
	call l894e
	ld (l8a63),hl
	ld (l8a69),a
.l87bc equ $ + 1
	ld a,#00
	ld (l8a65),a
	ld hl,l8a6c
	ld d,#0d
.l87c5
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
	jp p,l87c5
	ret
.l87e6
	db #00,#bc,#a4,#a8,#ad,#6b,#9a,#95
	db #10,#84,#7c,#4a,#39,#58,#a9,#01
	xor a		;	db #af,#32,#48,#8b
	ld (l8b48),a
	pop hl
	jp l960d
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
	jr nz,l8820
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l8820
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l88ba
	ld a,(ix+#1e)
	ld c,a
	and #07
	ld hl,l8a44
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l88ba
	ld a,(ix+#1e)
	ld c,a
	and #38
	ld hl,l8a44
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l88ba
	ld hl,l8a44
	ld a,(ix+#1e)
	cpl
	and (hl)
	ld (hl),a
	jr l88ba
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l88ba
	ld a,(de)
	inc de
	ld (l876f),a
	jr l88ba
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l88ba
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l88ba
	ld (ix+#1d),b
	jr l88ba
	ld (ix+#1d),#40
	jr l88ba
	ld (ix+#1d),#c0
	jr l88ba
	set 1,(ix+#00)
	jr l88ba
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l88dd
.l88ac
	dec (ix+#10)
	jr nz,l88ea
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l88ba
	ld a,(de)
	inc de
	and a
	jp m,l88fb
	ld (ix+#12),a
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l88dd
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l88ea
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l88f7
	inc (ix+#12)
	ret
.l88f7
	dec (ix+#12)
	ret
.l88fb
	cp #b8
	jr c,l8946
	add #20
	jr c,l892b
	add #10
	jr c,l8931
	add #10
	jr nc,l8924
	ld c,a
	ld hl,l8b15
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	set 4,(ix+#00)
	jr l88ba
.l8924
	add #09
	ld (l8793),a
	jr l88ba
.l892b
	inc a
	ld (ix+#11),a
	jr l88ba
.l8931
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
	jp l88ba
.l8946
	ld hl,l8767
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l894e
	ld c,(ix+#00)
	bit 5,c
	jr z,l8999
	ld a,(ix+#16)
	sub #10
	jr nc,l8981
	bit 6,c
	jr z,l8986
	add (ix+#13)
	jr nc,l8966
	sbc a
.l8966
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l897c
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l8999
.l897c
	ld (ix+#18),a
	jr l8999
.l8981
	ld (ix+#16),a
	jr l8999
.l8986
	cpl
	sub #0f
	add (ix+#13)
	jr c,l898f
	sub a
.l898f
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l8999
	res 5,c
.l8999
	ld a,(ix+#12)
	bit 4,c
	jr z,l89bb
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #54
	jr c,l89b3
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l89b3
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
.l89bb
	ld hl,l8a6d
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l8a15
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l89de
	bit 0,c
	jr nz,l89fc
.l89de
	bit 5,l
	jr nz,l89ee
	sub (ix+#1b)
	jr nc,l89f9
	set 5,(ix+#1d)
	sub a
	jr l89f9
.l89ee
	add (ix+#1b)
	cp b
	jr c,l89f9
	res 5,(ix+#1d)
	ld a,b
.l89f9
	ld (ix+#1c),a
.l89fc
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l8a07
	dec d
.l8a07
	add #a0
	jr c,l8a13
.l8a0b
	sla e
	rl d
	add #18
	jr nc,l8a0b
.l8a13
	add hl,de
	ex de,hl
.l8a15
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l8a40
	ld b,(ix+#0e)
	djnz l8a3d
	ld c,(ix+#0d)
	bit 7,c
	jr z,l8a2c
	dec b
.l8a2c
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l8a40
.l8a3d
	ld (ix+#0e),b
.l8a40
	cpl
	and #03
.l8a44 equ $ + 1
	ld a,#38
	jr nz,l8a51
	ld a,(l876f)
	xor #08
	ld (l87bc),a
	ld a,#07
.l8a51
	ld hl,l8a66
	xor (hl)
	and (ix+#1e)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l8a66 equ $ + 7
.l8a65 equ $ + 6
.l8a63 equ $ + 4
.l8a61 equ $ + 2
.l8a5f
	db #00,#00,#00,#00,#00,#00,#00,#38
.l8a6c equ $ + 5
.l8a69 equ $ + 2
.l8a68 equ $ + 1
.l8a67
	db #0f,#0f,#0d,#00,#00,#00
.l8a6d
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
.l8b15
	db #09,#0e,#11,#16,#19,#1e,#21,#25
	db #27,#00,#04,#07,#0c,#87,#00,#03
	db #08,#0c,#87,#00,#05,#09,#0c,#87
	db #00,#05,#07,#0c,#87,#00,#03,#07
	db #0c,#87,#00,#0c,#00,#0c,#87,#00
	db #03,#09,#87,#00,#05,#08,#87,#00
.l8b48 equ $ + 3
.music_end equ $ + 3
	db #05,#08,#87,#00,#00
.l8b4a
	dw l8b50,l8b7e,l8be4
.l8b50
	dw l8c3a,l8c68,l8c3a,l8c68
	dw l8c9a,l8cc8,l8cfa,l8d28
	dw l8d5a,l8d88,l94f5,l9551
	dw l8dba,l8de8,l95ad,l95c1
	dw l95ad,l95c1,l8dba,l8de8
	dw l9523,l957f,#0000
.l8b7e
	dw l8e1a,l8e4a,l8e1a,l8e4a
	dw l8e7e,l8eae,l8f7f,l8fa8
	dw l8fe0,l8f7f,l911d,l9155
	dw l9093,l90bc,l90f4,l9093
	dw l9176,l91ae,l9228,l9228
	dw l9009,l9032,l906a,l9009
	dw l91cf,l9207,l9009,l9032
	dw l906a,l9009,l91cf,l9207
	dw l9009,l9032,l906a,l9009
	dw l91cf,l9207,l9396,l93af
	dw l93ca,l9396,l93af,l93e5
	dw l9457,l9470,l948b,l94a6
	dw l94bf,l94da,#0000
.l8be4
	dw l9604,l9604,l9604,l9604
	dw l9604,l9604,l8f46,l8f46
	dw l8f46,l8f46,l8f46,l8f46
	dw l9324,l933d,l9358,l9324
	dw l933d,l9373,l9408,l9421
	dw l943c,l9408,l9421,l943c
	dw l9396,l93af,l93ca,l9396
	dw l93af,l93e5,l9396,l93af
	dw l93ca,l9396,l93af,l93e5
	dw l95d0,l95d0,l8ee2,l8f12
	dw l92a6,l92a6,#0000
.l8c3a
	db #8a,#88,#01,#02,#82,#de,#00,#01
	db #56,#e3,#30,#e0,#30,#32,#e1,#33
	db #35,#33,#e2,#32,#e0,#33,#e1,#32
	db #e3,#30,#e1,#32,#e2,#33,#e0,#33
	db #e1,#35,#37,#39,#3a,#e0,#39,#3a
.l8c68 equ $ + 6
	db #e1,#39,#35,#e5,#37,#87,#8a,#88
	db #01,#02,#82,#de,#00,#01,#56,#e2
	db #3c,#e0,#3a,#3c,#3a,#e1,#37,#35
	db #33,#e2,#35,#e0,#33,#e1,#32,#e3
	db #33,#e1,#30,#e2,#33,#e0,#35,#e1
	db #33,#e2,#32,#e0,#30,#e1,#2e,#30
	db #e0,#30,#32,#30,#2e,#e5,#30,#87
.l8c9a
	db #8a,#88,#01,#02,#82,#de,#00,#01
	db #56,#e3,#27,#e0,#27,#29,#e1,#2a
	db #2c,#2a,#e2,#29,#e0,#2a,#e1,#29
	db #e3,#27,#e1,#29,#e2,#2a,#e0,#2a
	db #e1,#2c,#2e,#30,#31,#e0,#30,#31
.l8cc8 equ $ + 6
	db #e1,#30,#2c,#e5,#2e,#87,#8a,#88
	db #01,#02,#82,#de,#00,#01,#56,#e2
	db #33,#e0,#31,#33,#31,#e1,#2e,#2c
	db #2a,#e2,#2c,#e0,#2a,#e1,#29,#e3
	db #2a,#e1,#27,#e2,#2a,#e0,#2c,#e1
	db #2a,#e2,#29,#e0,#27,#e1,#25,#27
	db #e0,#27,#29,#27,#25,#e5,#27,#87
.l8cfa
	db #8a,#88,#01,#02,#82,#de,#00,#01
	db #56,#e3,#29,#e0,#29,#2b,#e1,#2c
	db #2e,#2c,#e2,#2b,#e0,#2c,#e1,#2b
	db #e3,#29,#e1,#2b,#e2,#2c,#e0,#2c
	db #e1,#2e,#30,#32,#33,#e0,#32,#33
.l8d28 equ $ + 6
	db #e1,#32,#2e,#e5,#30,#87,#8a,#88
	db #01,#02,#82,#de,#00,#01,#56,#e2
	db #35,#e0,#33,#35,#33,#e1,#30,#2e
	db #2c,#e2,#2e,#e0,#2c,#e1,#2b,#e3
	db #2c,#e1,#29,#e2,#2c,#e0,#2e,#e1
	db #2c,#e2,#2b,#e0,#29,#e1,#27,#29
	db #e0,#29,#2b,#29,#27,#e5,#29,#87
.l8d5a
	db #8a,#88,#01,#02,#82,#de,#00,#01
	db #56,#e3,#2b,#e0,#2b,#2d,#e1,#2e
	db #30,#2e,#e2,#2d,#e0,#2e,#e1,#2d
	db #e3,#2b,#e1,#2d,#e2,#2e,#e0,#2e
	db #e1,#30,#32,#34,#35,#e0,#34,#35
.l8d88 equ $ + 6
	db #e1,#34,#30,#e5,#32,#87,#8a,#88
	db #01,#02,#82,#de,#00,#01,#56,#e2
	db #37,#e0,#35,#37,#35,#e1,#32,#30
	db #2e,#e2,#30,#e0,#2e,#e1,#2d,#e3
	db #2e,#e1,#2b,#e2,#2e,#e0,#30,#e1
	db #2e,#e2,#2d,#e0,#2b,#e1,#29,#2b
	db #e0,#2b,#2d,#2b,#29,#e5,#2b,#87
.l8dba
	db #8a,#88,#01,#02,#82,#de,#00,#01
	db #56,#e3,#2d,#e0,#2d,#2f,#e1,#30
	db #32,#30,#e2,#2f,#e0,#30,#e1,#2f
	db #e3,#2d,#e1,#2f,#e2,#30,#e0,#30
	db #e1,#32,#34,#36,#37,#e0,#36,#37
.l8de8 equ $ + 6
	db #e1,#36,#32,#e5,#34,#87,#8a,#88
	db #01,#02,#82,#de,#00,#01,#56,#e2
	db #39,#e0,#37,#39,#37,#e1,#34,#32
	db #30,#e2,#32,#e0,#30,#e1,#2f,#e3
	db #30,#e1,#2d,#e2,#30,#e0,#32,#e1
	db #30,#e2,#2f,#e0,#2d,#e1,#2b,#2d
	db #e0,#2d,#2f,#2d,#2b,#e5,#2d,#87
.l8e1a
	db #8a,#88,#04,#02,#82,#db,#00,#01
	db #54,#e1,#80,#e3,#30,#e0,#30,#32
	db #e1,#33,#35,#33,#e2,#32,#e0,#33
	db #e1,#32,#e3,#30,#e1,#32,#e2,#33
	db #e0,#33,#e1,#35,#37,#39,#3a,#e0
	db #39,#3a,#e1,#39,#35,#e3,#37,#87
.l8e4a
	db #8a,#88,#04,#02,#82,#db,#00,#01
	db #54,#e1,#80,#e2,#3c,#e0,#3a,#3c
	db #3a,#e1,#37,#35,#33,#e2,#35,#e0
	db #33,#e1,#32,#e3,#33,#e1,#30,#e2
	db #33,#e0,#35,#e1,#33,#e2,#32,#e0
	db #30,#e1,#2e,#30,#e0,#30,#32,#30
.l8e7e equ $ + 4
	db #2e,#e3,#30,#87,#8a,#88,#04,#02
	db #82,#db,#00,#01,#54,#e1,#80,#e3
	db #27,#e0,#27,#29,#e1,#2a,#2c,#2a
	db #e2,#29,#e0,#2a,#e1,#29,#e3,#27
	db #e1,#29,#e2,#2a,#e0,#2a,#e1,#2c
	db #2e,#30,#31,#e0,#30,#31,#e1,#30
.l8eae equ $ + 4
	db #2c,#e3,#2e,#87,#8a,#88,#04,#02
	db #82,#db,#00,#01,#54,#e1,#80,#e2
	db #33,#e0,#31,#33,#31,#e1,#2e,#2c
	db #2a,#e2,#2c,#e0,#2a,#e1,#29,#e3
	db #2a,#e1,#27,#e2,#2a,#e0,#2c,#e1
	db #2a,#e2,#29,#e0,#27,#e1,#25,#27
	db #e0,#27,#29,#27,#25,#e3,#27,#87
.l8ee2
	db #8a,#88,#04,#02,#82,#db,#00,#01
	db #54,#e1,#80,#e3,#2d,#e0,#2d,#2f
	db #e1,#30,#32,#30,#e2,#2f,#e0,#30
	db #e1,#2f,#e3,#2d,#e1,#2f,#e2,#30
	db #e0,#30,#e1,#32,#34,#36,#37,#e0
	db #36,#37,#e1,#36,#32,#e3,#34,#87
.l8f12
	db #8a,#88,#04,#02,#82,#db,#00,#01
	db #54,#e1,#80,#e2,#39,#e0,#37,#39
	db #37,#e1,#34,#32,#30,#e2,#32,#e0
	db #30,#e1,#2f,#e3,#30,#e1,#2d,#e2
	db #30,#e0,#32,#e1,#30,#e2,#2f,#e0
	db #2d,#e1,#2b,#27,#e0,#2d,#2f,#2d
.l8f46 equ $ + 4
	db #2b,#e3,#2d,#87,#8a,#89,#1a,#dc
	db #00,#01,#0f,#8d,#e3,#8d,#18,#e1
	db #8d,#18,#e3,#8d,#18,#e1,#8d,#18
	db #e3,#8d,#18,#e1,#8d,#18,#e3,#8d
	db #18,#e1,#8d,#18,#e3,#8d,#18,#e1
	db #8d,#18,#e3,#8d,#18,#e1,#8d,#18
	db #e3,#8d,#18,#e1,#8d,#18,#e3,#8d
.l8f7f equ $ + 5
	db #18,#e1,#8d,#18,#87,#8a,#88,#01
	db #01,#82,#df,#00,#11,#07,#e3,#11
	db #e1,#11,#8b,#89,#2e,#88,#01,#01
	db #82,#df,#00,#01,#0f,#e3,#8d,#3c
	db #8a,#88,#01,#01,#82,#df,#00,#11
.l8fa8 equ $ + 6
	db #07,#e1,#11,#e3,#0f,#87,#8a,#88
	db #01,#01,#82,#df,#00,#11,#07,#e1
	db #0f,#8b,#89,#2e,#88,#01,#01,#82
	db #df,#00,#01,#0f,#e3,#8d,#3c,#e1
	db #8d,#3c,#8a,#88,#01,#01,#82,#df
	db #00,#11,#07,#e3,#14,#e1,#14,#8b
	db #89,#2e,#88,#01,#01,#82,#df,#00
.l8fe0 equ $ + 6
	db #01,#0f,#e3,#8d,#3c,#87,#8a,#88
	db #01,#01,#82,#df,#00,#11,#07,#e1
	db #16,#e3,#0c,#e1,#18,#8b,#89,#2e
	db #88,#01,#01,#82,#df,#00,#01,#0f
	db #e3,#8d,#3c,#8a,#88,#01,#01,#82
.l9009 equ $ + 7
	db #df,#00,#11,#07,#e1,#0c,#87,#8a
	db #88,#01,#01,#82,#df,#00,#11,#07
	db #e3,#15,#e1,#15,#8b,#89,#2e,#88
	db #01,#01,#82,#df,#00,#01,#0f,#e3
	db #8d,#3c,#8a,#88,#01,#01,#82,#df
	db #00,#11,#07,#e1,#15,#e3,#13,#87
.l9032
	db #8a,#88,#01,#01,#82,#df,#00,#11
	db #07,#e1,#13,#8b,#89,#2e,#88,#01
	db #01,#82,#df,#00,#01,#0f,#e3,#8d
	db #3c,#e1,#8d,#3c,#8a,#88,#01,#01
	db #82,#df,#00,#11,#07,#e3,#18,#e1
	db #18,#8b,#89,#2e,#88,#01,#01,#82
	db #df,#00,#01,#0f,#e3,#8d,#3c,#87
.l906a
	db #8a,#88,#01,#01,#82,#df,#00,#11
	db #07,#e1,#1a,#e3,#1c,#e1,#1c,#8b
	db #89,#2e,#88,#01,#01,#82,#df,#00
	db #01,#0f,#e3,#8d,#3c,#8a,#88,#01
	db #01,#82,#df,#00,#11,#07,#e1,#10
.l9093 equ $ + 1
	db #87,#8a,#88,#01,#01,#82,#df,#00
	db #11,#07,#e3,#13,#e1,#13,#8b,#89
	db #2e,#88,#01,#01,#82,#df,#00,#01
	db #0f,#e3,#8d,#3c,#8a,#88,#01,#01
	db #82,#df,#00,#11,#07,#e1,#13,#e3
.l90bc equ $ + 2
	db #11,#87,#8a,#88,#01,#01,#82,#df
	db #00,#11,#07,#e1,#11,#8b,#89,#2e
	db #88,#01,#01,#82,#df,#00,#01,#0f
	db #e3,#8d,#3c,#e1,#8d,#3c,#8a,#88
	db #01,#01,#82,#df,#00,#11,#07,#e3
	db #16,#e1,#16,#8b,#89,#2e,#88,#01
	db #01,#82,#df,#00,#01,#0f,#e3,#8d
.l90f4 equ $ + 2
	db #3c,#87,#8a,#88,#01,#01,#82,#df
	db #00,#11,#07,#e1,#18,#e3,#1a,#e1
	db #1a,#8b,#89,#2e,#88,#01,#01,#82
	db #df,#00,#01,#0f,#e3,#8d,#3c,#8a
	db #88,#01,#01,#82,#df,#00,#11,#07
.l911d equ $ + 3
	db #e1,#0e,#87,#8a,#88,#01,#01,#82
	db #df,#00,#11,#07,#e1,#0f,#8b,#89
	db #2e,#88,#01,#01,#82,#df,#00,#01
	db #0f,#e3,#8d,#3c,#e1,#8d,#3c,#8a
	db #88,#01,#01,#82,#df,#00,#11,#07
	db #e3,#18,#e1,#18,#8b,#89,#2e,#88
	db #01,#01,#82,#df,#00,#01,#0f,#e3
.l9155 equ $ + 3
	db #8d,#3c,#87,#8a,#88,#01,#01,#82
	db #df,#00,#11,#07,#e1,#0c,#e3,#11
	db #e1,#1d,#8b,#89,#2e,#88,#01,#01
	db #82,#df,#00,#01,#0f,#e3,#8d,#3c
.l9176 equ $ + 4
	db #e1,#8d,#3c,#87,#8a,#88,#01,#01
	db #82,#df,#00,#11,#07,#e1,#11,#8b
	db #89,#2e,#88,#01,#01,#82,#df,#00
	db #01,#0f,#e3,#8d,#3c,#e1,#8d,#3c
	db #8a,#88,#01,#01,#82,#df,#00,#11
	db #07,#e3,#1a,#e1,#1a,#8b,#89,#2e
	db #88,#01,#01,#82,#df,#00,#01,#0f
.l91ae equ $ + 4
	db #e3,#8d,#3c,#87,#8a,#88,#01,#01
	db #82,#df,#00,#11,#07,#e1,#0e,#e3
	db #13,#e1,#1f,#8b,#89,#2e,#88,#01
	db #01,#82,#df,#00,#01,#0f,#e3,#8d
.l91cf equ $ + 5
	db #3c,#e1,#8d,#3c,#87,#8a,#88,#01
	db #01,#82,#df,#00,#11,#07,#e1,#13
	db #8b,#89,#2e,#88,#01,#01,#82,#df
	db #00,#01,#0f,#e3,#8d,#3c,#e1,#8d
	db #3c,#8a,#88,#01,#01,#82,#df,#00
	db #11,#07,#e3,#1c,#e1,#1c,#8b,#89
	db #2e,#88,#01,#01,#82,#df,#00,#01
.l9207 equ $ + 5
	db #0f,#e3,#8d,#3c,#87,#8a,#88,#01
	db #01,#82,#df,#00,#11,#07,#e1,#10
	db #e3,#15,#e1,#21,#8b,#89,#2e,#88
	db #01,#01,#82,#df,#00,#01,#0f,#e3
.l9228 equ $ + 6
	db #8d,#3c,#e1,#8d,#3c,#87,#8a,#88
	db #01,#01,#82,#df,#00,#11,#07,#e3
	db #16,#e1,#16,#8b,#89,#2e,#88,#01
	db #01,#82,#df,#00,#01,#0f,#e3,#8d
	db #3c,#8a,#88,#01,#01,#82,#df,#00
	db #11,#07,#e1,#16,#e3,#11,#e1,#11
	db #8b,#89,#2e,#88,#01,#01,#82,#df
	db #00,#01,#0f,#e3,#8d,#3c,#8a,#88
	db #01,#01,#82,#df,#00,#11,#07,#e1
	db #11,#e3,#13,#e1,#13,#8b,#89,#2e
	db #88,#01,#01,#82,#df,#00,#01,#0f
	db #e3,#8d,#3c,#8a,#88,#01,#01,#82
	db #df,#00,#11,#07,#e1,#13,#e3,#0e
	db #e1,#0e,#8b,#89,#2e,#88,#01,#01
	db #82,#df,#00,#01,#0f,#e3,#8d,#3c
	db #8a,#88,#01,#01,#82,#df,#00,#11
.l92a6 equ $ + 4
	db #07,#e1,#0e,#87,#8a,#88,#01,#01
	db #82,#df,#00,#11,#07,#e3,#18,#e1
	db #18,#8b,#89,#2e,#88,#01,#01,#82
	db #df,#00,#01,#0f,#e3,#8d,#3c,#8a
	db #88,#01,#01,#82,#df,#00,#11,#07
	db #e1,#18,#e3,#13,#e1,#13,#8b,#89
	db #2e,#88,#01,#01,#82,#df,#00,#01
	db #0f,#e3,#8d,#3c,#8a,#88,#01,#01
	db #82,#df,#00,#11,#07,#e1,#13,#e3
	db #15,#e1,#15,#8b,#89,#2e,#88,#01
	db #01,#82,#df,#00,#01,#0f,#e3,#8d
	db #3c,#8a,#88,#01,#01,#82,#df,#00
	db #11,#07,#e1,#15,#e3,#10,#e1,#10
	db #8b,#89,#2e,#88,#01,#01,#82,#df
	db #00,#01,#0f,#e3,#8d,#3c,#8a,#88
	db #01,#01,#82,#df,#00,#11,#07,#e1
.l9324 equ $ + 2
	db #10,#87,#8a,#88,#01,#01,#83,#df
	db #00,#11,#09,#e3,#c4,#2b,#e1,#c4
	db #2b,#c5,#37,#c5,#2b,#c5,#37,#e3
.l933d equ $ + 3
	db #c0,#29,#87,#8a,#88,#01,#01,#83
	db #df,#00,#11,#09,#e1,#c0,#29,#e3
	db #c4,#37,#e1,#c5,#35,#e3,#c1,#26
.l9358 equ $ + 6
	db #e1,#c1,#26,#c5,#32,#87,#8a,#88
	db #01,#01,#83,#df,#00,#11,#09,#e1
	db #c5,#30,#c5,#2e,#e3,#c4,#26,#e1
	db #c4,#26,#c5,#2b,#c5,#2d,#c5,#26
.l9373 equ $ + 1
	db #87,#8a,#88,#01,#01,#83,#df,#00
	db #11,#09,#e1,#c5,#30,#c5,#2e,#e3
	db #c4,#2b,#e1,#c4,#2b,#e3,#c4,#2b
	db #8a,#89,#1a,#dc,#00,#01,#0f,#8d
.l9396 equ $ + 4
	db #e1,#8d,#3c,#87,#8a,#88,#01,#01
	db #83,#df,#00,#11,#09,#e3,#c4,#2d
	db #e1,#c4,#2d,#c5,#39,#c5,#2d,#c5
.l93af equ $ + 5
	db #39,#e3,#c0,#2b,#87,#8a,#88,#01
	db #01,#83,#df,#00,#11,#09,#e1,#c0
	db #2b,#e3,#c4,#39,#e1,#c5,#37,#e3
	db #c1,#28,#e1,#c1,#28,#c5,#34,#87
.l93ca
	db #8a,#88,#01,#01,#83,#df,#00,#11
	db #09,#e1,#c5,#32,#c5,#30,#e3,#c4
	db #28,#e1,#c4,#28,#c5,#2d,#c5,#2f
.l93e5 equ $ + 3
	db #c5,#28,#87,#8a,#88,#01,#01,#83
	db #df,#00,#11,#09,#e1,#c5,#32,#c5
	db #30,#e3,#c4,#2d,#e1,#c4,#2d,#e3
	db #c4,#2d,#8a,#89,#1a,#dc,#00,#01
.l9408 equ $ + 6
	db #0f,#8d,#e1,#8d,#1a,#87,#8a,#88
	db #01,#01,#83,#df,#00,#11,#09,#e3
	db #c0,#2e,#e1,#c0,#2e,#c0,#2e,#c5
.l9421 equ $ + 7
	db #3a,#c0,#2e,#e3,#c0,#29,#87,#8a
	db #88,#01,#01,#83,#df,#00,#11,#09
	db #e1,#c0,#29,#c0,#29,#c5,#35,#c0
	db #29,#e3,#c4,#2b,#e1,#c4,#2b,#c4
.l943c equ $ + 2
	db #2b,#87,#8a,#88,#01,#01,#83,#df
	db #00,#11,#09,#e1,#c5,#37,#c4,#2b
	db #e3,#c0,#26,#e1,#c0,#26,#c0,#26
.l9457 equ $ + 5
	db #c5,#32,#c5,#30,#87,#8a,#88,#01
	db #01,#83,#df,#00,#11,#09,#e3,#c0
	db #24,#e1,#c0,#24,#c0,#24,#c5,#30
.l9470 equ $ + 6
	db #c0,#24,#e3,#c0,#1f,#87,#8a,#88
	db #01,#01,#83,#df,#00,#11,#09,#e1
	db #c0,#1f,#c0,#1f,#c5,#2b,#c0,#1f
	db #e3,#c4,#21,#e1,#c4,#21,#c4,#21
.l948b equ $ + 1
	db #87,#8a,#88,#01,#01,#83,#df,#00
	db #11,#09,#e1,#c5,#2d,#c4,#21,#e3
	db #c0,#1c,#e1,#c0,#1c,#c0,#1c,#c5
.l94a6 equ $ + 4
	db #28,#c5,#26,#87,#8a,#88,#01,#01
	db #83,#df,#00,#11,#09,#e3,#c0,#30
	db #e1,#c0,#30,#c0,#30,#c5,#3c,#c0
.l94bf equ $ + 5
	db #30,#e3,#c0,#2b,#87,#8a,#88,#01
	db #01,#83,#df,#00,#11,#09,#e1,#c0
	db #2b,#c0,#2b,#c5,#37,#c0,#2b,#e3
	db #c4,#2d,#e1,#c4,#2d,#c4,#2d,#87
.l94da
	db #8a,#88,#01,#01,#83,#df,#00,#11
	db #09,#e1,#c5,#39,#c4,#2d,#e3,#c0
	db #28,#e1,#c0,#28,#c0,#28,#c5,#34
.l94f5 equ $ + 3
	db #c5,#32,#87,#8a,#88,#01,#02,#82
	db #de,#00,#01,#56,#e2,#2e,#e0,#2e
	db #e1,#30,#32,#30,#2e,#e2,#2d,#e0
	db #2d,#e1,#2e,#30,#2d,#29,#e2,#2b
	db #e0,#2b,#e1,#2d,#2e,#e1,#2d,#2b
	db #e0,#2d,#2e,#e1,#2d,#2a,#e5,#26
.l9523 equ $ + 1
	db #87,#8a,#88,#01,#02,#82,#de,#00
	db #01,#56,#e2,#30,#e0,#30,#e1,#32
	db #34,#32,#30,#e2,#2f,#e0,#2f,#e1
	db #30,#32,#2f,#2b,#e2,#2d,#e0,#2d
	db #e1,#2f,#30,#e1,#2f,#2d,#e0,#2f
.l9551 equ $ + 7
	db #30,#e1,#2f,#2c,#e5,#28,#87,#8a
	db #88,#01,#02,#82,#de,#00,#01,#56
	db #e2,#2e,#e0,#2e,#e1,#30,#32,#33
	db #35,#e2,#35,#e0,#35,#e1,#37,#39
	db #35,#30,#e2,#2e,#e0,#2e,#e1,#30
	db #2e,#e1,#2d,#2b,#e0,#2d,#2e,#e1
.l957f equ $ + 5
	db #2d,#26,#e5,#32,#87,#8a,#88,#01
	db #02,#82,#de,#00,#01,#56,#e2,#30
	db #e0,#30,#e1,#32,#34,#35,#37,#e2
	db #37,#e0,#37,#e1,#39,#3b,#37,#32
	db #e2,#30,#e0,#30,#e1,#32,#30,#e1
	db #2f,#2d,#e0,#2f,#30,#e1,#2f,#28
.l95ad equ $ + 3
	db #e5,#34,#87,#8a,#88,#02,#02,#83
	db #db,#27,#11,#f6,#eb,#21,#e9,#23
.l95c1 equ $ + 7
	db #e7,#24,#e5,#26,#eb,#28,#87,#8a
	db #88,#02,#02,#83,#db,#27,#11,#f6
.l95d0 equ $ + 6
	db #eb,#21,#23,#20,#21,#87,#8a,#88
	db #04,#02,#82,#db,#00,#01,#54,#e2
	db #24,#e0,#23,#24,#23,#e2,#21,#e0
	db #21,#23,#24,#eb,#26,#e2,#28,#e0
	db #28,#26,#28,#e3,#26,#e1,#24,#eb
	db #28,#87,#8a,#88,#01,#01,#82,#db
	db #00,#01,#01,#84,#fe,#01,#ef,#c0
.l9604 equ $ + 2
	db #1e,#87,#bb,#8a,#df,#00,#f1,#01
	db #ef,#80,#87
.l960d
	ld de,#0d00	; original is ld de,#d000 should be ld de,&0d00 !!!
.l9610
	call l961a
	dec e
	jp p,l9610
	ld de,#073f
.l961a
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
;	di
;	call l8695
;	ei
;	ret
;	di
;	call l868e
;	ei
;	ret
;
.music_info
	db "Dizzy - Prince of the Yolkfolk (1991)(Codemasters)(The Oliver Twins)",0
	db "",0

	read "music_end.asm"
