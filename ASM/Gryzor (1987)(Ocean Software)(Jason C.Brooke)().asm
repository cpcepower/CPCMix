; Music of Gryzor (1987)(Ocean Software)(Jason C.Brooke)()
; Ripped by Megachur the 18/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GRYZOR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #4000
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

;
.play_music
;
	sub a
.l4002 equ $ + 1
.music_end equ $ + 1
	cp #00
	push ix
	jr z,l4041
	ld b,a
	ld ix,l4368
	ld hl,l4189
	dec (hl)
	jr nz,l4020
.l4013 equ $ + 1
	ld (hl),#01
	call l420f
	call l420d
	call l420d
	ld lx,l4368	;#68
.l4021 equ $ + 1
.l4020
	ld a,#00
	ld (l43b6),a
	ld bc,l43b8
	call l4295
	ld (l43b0),hl
	ld bc,l43b9
	call l4293
	ld (l43b2),hl
	ld bc,l43ba
	call l4293
	ld (l43b4),hl
.l4040
	sub a
.l4042 equ $ + 1
.l4041
	cp #00
	jr z,l40a6
	ld hl,l4186
	dec (hl)
	jr nz,l4053
	ld (l43ba),a
	ld (l4042),a
	jr l40a6
.l4053
	ld de,(l4184)
	ld a,(l417d)
	or a
	jr z,l4073
	ld hl,l4188
	dec (hl)
	jr nz,l4073
	ld (hl),a
	ld hl,l417e
	rrc (hl)
	ld hl,(l417f)
	jr c,l4071
	ld hl,(l4181)
.l4071
	add hl,de
	ex de,hl
.l4073
	ld hl,(l4178)
	add hl,de
	ld a,(l417c)
	or a
	jr z,l408a
	ex de,hl
	ld hl,l4187
	dec (hl)
	jr nz,l4089
	ld (hl),a
	ld de,(l417a)
.l4089
	ex de,hl
.l408a
	ld (l4184),hl
	ld a,#10
	ld (l43ba),a
	ld (l43b4),hl
	ld a,l
	ld hl,l4183
	rrc (hl)
	ld hl,l436a
	res 0,(hl)
	jr nc,l40a6
	inc (hl)
	ld (l43b6),a
.l40a6
	ld hl,l436a
	ld a,#fe
	or (hl)
	dec l
	ld c,(hl)
	dec l
	rr c
	rla
	ld c,(hl)
	rr c
	rla
	ld c,a
	add a
	add a
	add a
	xor c
	ld (l43b7),a
	sub a
.l40c0 equ $ + 1
	cp #00
	ld hl,l43bc
	ld c,a
	ld de,#0cf6
	jr z,l40cf
	inc d
	inc l
	ld (l40c0),a
.l40cf
	ld a,#c0
.l40d1
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
	jp p,l40d1
	pop ix
	ret
;
.init_music
;
	push bc
	push de
	push hl
	push ix
	ld hl,l45c7
	ld b,#00
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld (l4013),a
	ld ix,l4368
	sub a
	ld (l4002),a
	inc a
.l410a
	ld (l4189),a
	inc a
	ld c,a
.l410f
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#24),#01
	ld (ix+#42),b
	ld (ix+#3f),b
	ld (ix+#18),b
	ld (ix+#09),e
	ld (ix+#0c),d
	ld (ix+#0f),c
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	pop hl
	ld (ix+#03),e
	ld (ix+#06),d
	inc lx
	dec a
	jp p,l410f
	ld (l4002),a
	pop ix
	pop hl
	pop de
	pop bc
	ret
	push bc
	push de
	push hl
	add a
	ld c,a
	add a
	add a
	ld b,#00
	ld hl,l489a
	add hl,bc
	ld c,a
	add hl,bc
	add hl,bc
	ld de,l4178
	ld c,#0f
	sub a
	ld (l4042),a
	ldir
	ld c,#03
	ld de,l43bb
	ldir
	ld hl,(l417c)
	ld (l4187),hl
	ld a,#01
	ld (l4042),a
	ld (l40c0),a
	pop hl
	pop de
	pop bc
	ret
.l417f equ $ + 7
.l417e equ $ + 6
.l417d equ $ + 5
.l417c equ $ + 4
.l417a equ $ + 2
.l4178
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4187 equ $ + 7
.l4186 equ $ + 6
.l4184 equ $ + 4
.l4183 equ $ + 3
.l4181 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4189 equ $ + 1
.l4188
	db #00,#00,#d4,#6e,#3f,#62,#65,#19
	db #4b,#76,#04,#31,#6f,#69
	ld hl,l4040
	ex (sp),hl
;
.stop_music
;
	sub a
	ld (l4002),a
	ld (l43b8),a
	ld (l43b9),a
	ld (l43ba),a
	ret
	ld c,(ix+#0f)
	ld l,(ix+#09)
	ld h,(ix+#0c)
	add hl,bc
	ld a,(hl)
	inc l
	or (hl)
	jr nz,l41ba
	sbc hl,bc
	ld c,b
.l41ba
	ld d,(hl)
	dec l
	ld e,(hl)
	inc c
	inc c
	ld (ix+#0f),c
	jr l4222
	ld a,(de)
	inc de
	ld (ix+#3f),a
	jr l4222
	ld a,(de)
	inc de
	ld (ix+#1e),a
	set 3,(ix+#42)
	ld a,(de)
	inc de
	ld (ix+#21),a
	jr l4222
	ld a,(de)
	inc de
	ld (ix+#39),a
	ld a,(de)
	inc de
	ld (ix+#3c),a
	add a
	ld (ix+#36),a
	set 4,(ix+#42)
	jr l4222
	set 7,(ix+#42)
	set 6,(ix+#42)
	jr l4222
	ld (ix+#42),b
	jr l4222
	ld a,(de)
	inc de
	ld (l4353),a
	set 2,(ix+#42)
	set 1,(ix+#42)
	jr l4222
.l420d
	inc lx
.l420f
	dec (ix+#24)
	ld a,(ix+#42)
	jr nz,l4252
	and #30
	ld (ix+#42),a
	ld e,(ix+#03)
	ld d,(ix+#06)
.l4222
	ld a,(de)
	inc de
	cp #b0
	jr c,l4246
	add #20
	jr c,l423b
	add #20
	jr c,l4241
	ld c,a
	ld hl,l444c
	add hl,bc
	ld c,(hl)
	ld (ix+#18),c
	jr l4222
.l423b
	inc a
	ld (ix+#27),a
	jr l4222
.l4241
	ld (ix+#33),a
	jr l4222
.l4246
	or a
	jp p,l4264
	ld c,a
	ld hl,l410a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l4252
	add a
	ret p
	sbc a
	or #01
	add (ix+#2a)
	ld (ix+#2a),a
	ret
	ld (ix+#30),#f0
	jr l4286
.l4264
	ld (ix+#2a),a
	ld (ix+#12),b
	ld (ix+#15),b
	ld (ix+#30),b
	ld (ix+#2d),b
	ld c,(ix+#18)
	ld (ix+#1b),c
	ld c,b
	sub #54
	jr c,l4283
	ld c,#02
	ld (l4021),a
.l4283
	ld (ix+#00),c
.l4286
	ld a,(ix+#27)
	ld (ix+#24),a
	ld (ix+#06),d
	ld (ix+#03),e
	ret
.l4293
	inc lx
.l4295
	ld d,#00
	ld a,(ix+#30)
	cp #f0
	jr nc,l42b9
	sub #10
	ld (ix+#30),a
	jr nc,l42b9
	ld hl,l4554
	ld e,(ix+#33)
	add hl,de
	ld a,(hl)
	add (ix+#2d)
	ld e,a
	add hl,de
	ld a,(hl)
	inc (ix+#2d)
	ld (ix+#30),a
.l42b9
	or #f0
	inc a
	add #0f
	jr c,l42c1
	sub a
.l42c1
	ld (bc),a
	ld hl,l453e
	ld e,(ix+#1b)
	inc e
	add hl,de
	ld a,(hl)
	or a
	jp p,l42d4
	ld e,(ix+#18)
	and #7f
.l42d4
	ld (ix+#1b),e
	add (ix+#2a)
	add (ix+#3f)
	add a
	ld hl,l43be
	ld e,a
	add hl,de
	ld e,(hl)
	inc l
	ld d,(hl)
	ld c,(ix+#42)
	bit 4,c
	jr z,l4318
	sub a
	or (ix+#39)
	jr nz,l42f5
	inc a
	and c
.l42f5
	ld b,(ix+#36)
	ld l,a
	ld a,(ix+#3c)
	bit 5,c
	jr nz,l4307
	sub l
	jr nz,l430d
	set 5,c
	jr l430d
.l4307
	add l
	cp b
	jr nz,l430d
	res 5,c
.l430d
	ld (ix+#3c),a
	srl b
	sub b
	ld l,a
	sbc a
	ld h,a
	add hl,de
	ex de,hl
.l4318
	ld a,c
	xor #01
	ld (ix+#42),a
	bit 3,c
	jr z,l4343
	ld b,(ix+#21)
	djnz l4340
	ld c,(ix+#1e)
	bit 7,c
	jr z,l432f
	dec b
.l432f
	ld l,(ix+#12)
	ld h,(ix+#15)
	add hl,bc
	ld (ix+#12),l
	ld (ix+#15),h
	add hl,de
	ex de,hl
	jr l4343
.l4340
	ld (ix+#21),b
.l4343
	cpl
	and #03
	ld a,(ix+#00)
	ld c,a
	res 0,c
	rra
	jr nz,l4356
	ld hl,l43b6
.l4353 equ $ + 1
	ld (hl),#10
	or #01
.l4356
	or c
	bit 2,(ix+#42)
	jr z,l4361
	res 1,(ix+#42)
.l4361
	ld (ix+#00),a
	ex de,hl
	ret
.l4368 equ $ + 2
	db #00,#00,#00,#00
.l436a
	db #00
	db "This music module is the copyright of Jas.C.Brooke. (Prepare to Die!)"
.l43b7 equ $ + 7
.l43b6 equ $ + 6
.l43b4 equ $ + 4
.l43b2 equ $ + 2
.l43b0
	db #00,#00,#00,#00,#00,#00,#00,#00
.l43bc equ $ + 4
.l43bb equ $ + 3
.l43ba equ $ + 2
.l43b9 equ $ + 1
.l43b8
	db #00,#00,#00,#00,#00,#00
.l43be
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
.l444c equ $ + 6
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
.l4466
	dw l45d9,l45d9,l45d9,l45e4
	dw l45ef,l45ef,l45ef,l45ef
	dw l4601,l4601,l45fa,l45fa
	dw l45fa,l45fa,l45ef,l45ef
	dw l45ef,l45ef,l46ef,l46ef
	dw l46ef,l46ef,l46f8,l46f8
.l449c equ $ + 6
	dw l46f8,l46f8,#0000,l460e
	dw l4615,l4615,l4620,l4615
	dw l4615,l4615,l4620,l4667
	dw l4667,l4614,l4615,l4615
	dw l4620,l4615,l4615,l4615
	dw l4620,l46d9,l46d9,l46d9
.l44ca equ $ + 4
	dw l46d9,#0000,l45d5,l462c
	dw l462c,l462c,l463b,l4683
	dw l464b,l464b,l464b,l4658
	dw l462c,l462c,l462c,l463b
	dw l464b,l464b,l464b,l4658
	dw l462c,l462c,l462c,l463b
.l44f8 equ $ + 2
	dw #0000,l4702,l4704,l4704
	dw l4704,l4721,l4704,l471e
	dw l4704,l4724,l4704,l4704
	dw l4702,l4704,l4704,l4704
	dw l4721,l4704,l471e,l4704
	dw l4724,l4704,l4704,l47cd
.l4528 equ $ + 2
	dw #0000,l476d,l4789,l476d
.l4534 equ $ + 6
	dw l47a0,l4822,#0000,l4727
	dw l4727,l4857,#0000
.l453e equ $ + 2
	db #00,#01,#06,#80,#00,#0c,#0c,#00
	db #8c,#00,#05,#00,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#85
.l4554
	db #0f,#1a,#22,#28,#2d,#34,#3b,#44
	db #4b,#4e,#50,#51,#55,#5a,#5f,#0e
	db #2d,#0a,#09,#08,#07,#06,#05,#04
	db #03,#02,#f1,#09,#0d,#09,#0c,#3b
	db #3a,#39,#38,#f7,#48,#47,#46,#45
	db #44,#43,#f2,#0b,#08,#03,#02,#01
	db #f0,#0d,#0c,#0b,#09,#03,#02,#01
	db #f0,#0a,#09,#26,#25,#24,#23,#22
	db #f0,#0b,#0c,#0a,#0b,#09,#0c,#0a
	db #0b,#09,#f1,#2d,#1a,#19,#18,#17
	db #16,#15,#f4,#0d,#16,#15,#f4,#0c
	db #0d,#fa,#0d,#f0,#0b,#0a,#09,#08
	db #f7,#09,#1d,#4b,#4a,#49,#f8,#0a
	db #08,#06,#09,#07,#f6,#2a,#49,#48
	db #47,#46,#f5
.l45c7
	db #05
	dw l4466,l449c,l44ca
	db #05
	dw l44f8,l4528,l4534
.l45d9 equ $ + 4
.l45d5
	db #ff,#80,#80,#85,#c0,#b0,#86,#02
.l45e4 equ $ + 7
	db #04,#e1,#15,#15,#eb,#80,#85,#e1
	db #15,#15,#e8,#80,#c3,#e0,#62,#62
.l45ef equ $ + 2
	db #62,#85,#c0,#e1,#17,#17,#17,#17
.l45fa equ $ + 5
	db #17,#17,#17,#17,#85,#c0,#e3,#15
.l4601 equ $ + 4
	db #15,#15,#15,#85,#e0,#11,#e1,#11
	db #ec,#10,#e0,#0e,#e1,#0e,#ec,#10
.l4614 equ $ + 7
.l460e equ $ + 1
	db #85,#c1,#89,#00,#86,#01,#01,#b2
.l4615
	db #e1,#28,#28,#2b,#28,#e2,#2e,#2d
.l4620 equ $ + 3
	db #e1,#2b,#85,#28,#28,#2b,#28,#e2
.l462c equ $ + 7
	db #2b,#2d,#e1,#2e,#89,#02,#85,#c3
	db #e1,#68,#68,#c4,#68,#c3,#68,#68
.l463b equ $ + 6
	db #68,#c4,#68,#c3,#68,#85,#68,#68
	db #c4,#68,#c3,#68,#68,#68,#e0,#c4
.l464b equ $ + 6
	db #68,#c3,#62,#62,#62,#85,#c3,#e3
	db #68,#c4,#68,#e1,#c3,#68,#68,#e3
.l4658 equ $ + 3
	db #c4,#68,#85,#c3,#68,#c4,#68,#e1
	db #c3,#68,#68,#c4,#68,#c3,#e0,#62
.l4667 equ $ + 2
	db #62,#85,#89,#00,#b2,#c1,#e0,#30
	db #e1,#30,#e2,#2f,#c2,#b0,#e9,#34
	db #b2,#c1,#e0,#2d,#e1,#2d,#e2,#2f
.l4683 equ $ + 6
	db #c2,#b0,#e9,#34,#c6,#85,#c3,#e0
	db #62,#e1,#62,#e4,#62,#8b,#0e,#c5
	db #b0,#86,#01,#01,#e1,#26,#8a,#26
	db #e3,#8a,#28,#c3,#e0,#62,#e1,#62
	db #e4,#62,#c5,#b0,#86,#01,#01,#e1
	db #8a,#29,#8a,#29,#e3,#8a,#2b,#c3
	db #e0,#62,#e1,#62,#e4,#62,#c5,#b0
	db #86,#01,#01,#e1,#8a,#2d,#8a,#2d
	db #e3,#8a,#2f,#c3,#e0,#62,#e1,#62
	db #e4,#62,#c5,#b0,#86,#01,#01,#e0
	db #8a,#32,#8a,#e2,#32,#e0,#8a,#34
.l46d9 equ $ + 4
	db #8a,#e2,#34,#85,#c5,#b0,#e1,#30
	db #2d,#2d,#e3,#2c,#e1,#2d,#2d,#2f
	db #30,#2d,#2d,#e3,#2c,#e1,#2d,#2d
.l46ef equ $ + 2
	db #2f,#85,#c7,#b1,#81,#e3,#18,#15
.l46f8 equ $ + 3
	db #19,#15,#85,#e1,#18,#18,#15,#15
.l4704 equ $ + 7
.l4702 equ $ + 5
	db #19,#19,#15,#15,#85,#89,#00,#86
	db #02,#04,#e1,#b0,#8b,#04,#c7,#0c
	db #c8,#8a,#0c,#c3,#68,#ca,#58,#c7
	db #8a,#0c,#8a,#0c,#c3,#68,#ca,#58
.l4724 equ $ + 7
.l4721 equ $ + 4
.l471e equ $ + 1
	db #85,#89,#04,#85,#89,#05,#85,#89
.l4727 equ $ + 2
	db #07,#85,#b0,#cb,#86,#02,#04,#e7
	db #28,#e1,#28,#e3,#29,#e1,#2b,#e7
	db #28,#e1,#28,#e3,#29,#e1,#2b,#e7
	db #28,#e1,#28,#e3,#29,#e1,#2b,#e7
	db #28,#e1,#28,#e3,#29,#e1,#2b,#e7
	db #24,#e1,#24,#e3,#26,#e1,#28,#e7
	db #24,#e1,#24,#e3,#24,#e1,#24,#e7
	db #26,#e1,#26,#e3,#28,#e1,#29,#e7
	db #26,#e1,#28,#e3,#29,#e1,#2b,#85
.l476d
	db #b0,#c9,#86,#00,#01,#e7,#2b,#e1
	db #2b,#e3,#32,#e9,#30,#e1,#30,#e3
	db #35,#e9,#34,#e2,#39,#3b,#e1,#3c
.l4789 equ $ + 4
	db #e7,#37,#34,#85,#e7,#39,#e1,#39
	db #e3,#37,#e1,#35,#e7,#34,#e1,#34
	db #e3,#32,#e1,#30,#ef,#2f,#eb,#2b
.l47a0 equ $ + 3
	db #e3,#80,#85,#e7,#35,#e1,#35,#e3
	db #34,#e1,#32,#e7,#34,#e1,#34,#e3
	db #32,#e1,#30,#e5,#2f,#cb,#e0,#2b
	db #2d,#e7,#2b,#e0,#2b,#2f,#e1,#32
	db #e0,#2d,#31,#e1,#34,#e0,#2f,#33
	db #e1,#35,#e0,#30,#34,#e1,#37,#85
.l47cd
	db #cc,#8b,#14,#e5,#0c,#e1,#80,#8a
	db #0c,#8a,#0c,#80,#80,#8a,#e5,#0b
	db #e1,#80,#8a,#0b,#8a,#0b,#80,#80
	db #8a,#e5,#0a,#e1,#80,#8a,#0a,#8a
	db #0a,#80,#80,#8a,#e5,#09,#e1,#80
	db #8a,#09,#8a,#09,#80,#80,#8a,#e5
	db #0e,#e1,#80,#8a,#0e,#8a,#0e,#80
	db #80,#8a,#e5,#0d,#e1,#80,#8a,#0d
	db #8a,#0d,#80,#80,#8a,#e5,#0e,#e1
	db #80,#8a,#0e,#8a,#0e,#80,#80,#8a
.l4822 equ $ + 5
	db #eb,#0b,#e3,#80,#85,#c9,#e9,#37
	db #e3,#35,#e1,#34,#e9,#35,#e3,#34
	db #e1,#32,#e7,#30,#e1,#30,#e3,#32
	db #e1,#34,#ce,#e3,#39,#37,#35,#34
	db #c9,#e1,#84,#37,#ed,#39,#e7,#37
	db #e1,#37,#e3,#35,#e1,#34,#e7,#35
	db #e1,#35,#e3,#37,#e1,#39,#e7,#37
.l4857 equ $ + 2
	db #3b,#85,#cd,#86,#01,#02,#e1,#30
	db #30,#2f,#e3,#30,#e1,#2b,#2b,#2d
	db #2d,#2d,#2b,#e3,#2d,#e1,#2d,#2b
	db #2d,#2d,#2d,#2b,#e3,#2d,#e1,#2d
	db #2b,#2d,#ef,#28,#e1,#32,#32,#30
	db #e3,#32,#e1,#32,#30,#32,#32,#32
	db #30,#e3,#32,#e1,#32,#30,#30,#e1
	db #32,#32,#30,#e3,#32,#e1,#32,#30
.l489a equ $ + 5
	db #32,#e7,#2f,#32,#85,#f6,#7f,#a5
	db #00,#0a,#01,#55,#02,#00,#fe,#7f
	db #00,#c8,#00,#14,#48,#0d,#09,#05
	db #00,#64,#00,#0a,#01,#55,#02,#00
	db #fe,#7f,#00,#5f,#00,#14,#ac,#0d
	db #09,#02,#00,#32,#00,#00,#02,#01
	db #d6,#7f,#00,#00,#00,#5a,#00,#10
	db #01,#00,#08,#02,#00,#0e,#00,#08
	db #00,#00,#00,#00,#00,#00,#ff,#0c
	db #00,#0f,#86,#0b,#08,#0a,#00,#32
	db #00,#03,#01,#55,#05,#00,#fb,#7f
	db #00,#32,#00,#08,#d0,#07,#09,#01
	db #00,#10,#00,#0e,#01,#55,#00,#00
	db #ff,#ff,#ff,#0f,#00,#28,#a0,#0f
	db #09,#ff,#ff,#1c,#00,#0a,#02,#55
	db #00,#00,#02,#00,#ff,#1d,#00,#1e
	db #94,#11,#09,#01,#00,#0f,#00,#0f
	db #00,#00,#00,#00,#00,#00,#ff,#0d
	db #00,#64,#b0,#36,#09,#00,#00,#64
	db #00,#00,#08,#00,#0a,#00,#0a,#00
	db #55,#64,#00,#28,#94,#11,#09,#ff
	db #ff,#ff,#ff,#00,#00,#00,#00
;
; #436b
; db "This music module is the copyright of Jas.C.Brooke. (Prepare to Die!)"
;
.music_info
	db "Gryzor (1987)(Ocean Software)(Jason C.Brooke)",0
	db "This music module is the copyright of Jas.C.Brooke. (Prepare to Die!)",0

	read "music_end.asm"
