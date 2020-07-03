; Music of Rockford (1988)(Mastertronic)(Jason C Brooke)()
; Ripped by Megachur the 21/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ROCKFORD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #37d1
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

;
.play_music
;
	sub a
.l37d3 equ $ + 1
.music_end equ $ + 1
	cp #00
	push ix
	jr z,l3812
	ld b,a
	ld ix,l3b3c
	ld hl,l3b81
	dec (hl)
	jr nz,l37f1
.l37e4 equ $ + 1
	ld (hl),#01
	call l39cb
	call l39c9
	call l39c9
	ld lx,l3b3c	;#3c
.l37f2 equ $ + 1
.l37f1
	ld a,#00
	ld (l3b88),a
	ld bc,l3b8a
	call l3a57
	ld (l3b82),hl
	ld bc,l3b8b
	call l3a55
	ld (l3b84),hl
	ld bc,l3b8c
	call l3a55
	ld (l3b86),hl
.l3811
	sub a
.l3813 equ $ + 1
.l3812
	cp #00
	jr z,l3877
	ld hl,l3b36
	dec (hl)
	jr nz,l3824
	ld (l3b8c),a
	ld (l3813),a
	jr l3877
.l3824
	ld de,(l3b34)
	ld a,(l3b2d)
	or a
	jr z,l3844
	ld hl,l3b38
	dec (hl)
	jr nz,l3844
	ld (hl),a
	ld hl,l3b2e
	rrc (hl)
	ld hl,(l3b2f)
	jr c,l3842
	ld hl,(l3b31)
.l3842
	add hl,de
	ex de,hl
.l3844
	ld hl,(l3b28)
	add hl,de
	ld a,(l3b2c)
	or a
	jr z,l385b
	ex de,hl
	ld hl,l3b37
	dec (hl)
	jr nz,l385a
	ld (hl),a
	ld de,(l3b2a)
.l385a
	ex de,hl
.l385b
	ld (l3b34),hl
	ld a,#10
	ld (l3b8c),a
	ld (l3b86),hl
	ld a,l
	ld hl,l3b33
	rrc (hl)
	ld hl,l3b3e
	res 0,(hl)
	jr nc,l3877
	inc (hl)
	ld (l3b88),a
.l3877
	ld hl,l3b3e
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
	ld (l3b89),a
	sub a
.l3891 equ $ + 1
	cp #00
	ld hl,l3b8e
	ld c,a
	ld de,#0cf6
	jr z,l38a0
	inc d
	inc l
	ld (l3891),a
.l38a0
	ld a,#c0
.l38a2
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
	jp p,l38a2
	pop ix
	ret
;
.init_music	;38bc (0-3)
;
	push bc
	push de
	push hl
.l38c0 equ $ + 1
	ld de,l3b3d
	ld bc,#0044
	ld hl,l37d3
	push hl
	ld (hl),b
	ld hl,l3b3c
	push hl
	ld (hl),b
	ldir
	ld hl,l3d4b
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld (l37e4),a
	ex (sp),ix
	ld bc,#0301
	ld a,c
	ld (de),a
.l38e7
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#24),c
	ld (ix+#09),e
	ld (ix+#0c),d
	ld (ix+#0f),#02
	ld a,(de)
	ld (ix+#03),a
	inc e
	ld a,(de)
	ld (ix+#06),a
	inc lx
	djnz l38e7
	pop ix
	pop hl
	ld (hl),c
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
	ld hl,l3f4b
	add hl,bc
	ld c,a
	add hl,bc
	add hl,bc
	ld de,l3b28
	ld c,#0f
	sub a
	ld (l3813),a
	ldir
	ld c,#03
	ld de,l3b8d
	ldir
	ld hl,(l3b2c)
	ld (l3b37),hl
	inc a
	ld (l3813),a
	ld (l3891),a
	pop hl
	pop de
	pop bc
	ret
	db #da,#74,#45,#68,#6b,#1a,#51,#7c
	db #05,#37,#75,#6f,#2f

	ld hl,l3811
	ex (sp),hl
;
.stop_music
;
	sub a
	ld (l37d3),a
	ld (l3b8a),a
	ld (l3b8b),a
	ld (l3b8c),a
	ret
	ld c,(ix+#0f)
	ld l,(ix+#09)
	ld h,(ix+#0c)
	add hl,bc
	ld a,(hl)
	inc l
	or (hl)
	jr nz,l3971
	sbc hl,bc
	ld c,b
.l3971
	ld d,(hl)
	dec l
	ld e,(hl)
	inc c
	inc c
	ld (ix+#0f),c
	jr l39de
	ld (ix+#2a),a
	jr l39de
	ld a,(de)
	inc de
	ld (ix+#3f),a
	jr l39de
	ld a,(de)
	inc de
	ld (ix+#1e),a
	set 3,(ix+#42)
	ld a,(de)
	inc de
	ld (ix+#21),a
	jr l39de
	ld a,(de)
	inc de
	ld (ix+#39),a
	ld a,(de)
	inc de
	ld (ix+#3c),a
	add a
	ld (ix+#36),a
	set 4,(ix+#42)
	jr l39de
	set 7,(ix+#42)
	set 6,(ix+#42)
	jr l39de
	ld (ix+#42),b
	jr l39de
	ld a,(de)
	inc de
	ld (l3b15),a
	set 2,(ix+#42)
	set 1,(ix+#42)
	jr l39de
.l39c9
	inc lx
.l39cb
	dec (ix+#24)
	ld a,(ix+#42)
	jr nz,l3a0e
	and #30
	ld (ix+#42),a
	ld e,(ix+#03)
	ld d,(ix+#06)
.l39de
	ld a,(de)
	inc de
	cp #b0
	jr c,l3a02
	add #20
	jr c,l39f7
	add #20
	jr c,l39fd
	ld c,a
	ld hl,l3bd8
	add hl,bc
	ld c,(hl)
	ld (ix+#18),c
	jr l39de
.l39f7
	inc a
	ld (ix+#27),a
	jr l39de
.l39fd
	ld (ix+#33),a
	jr l39de
.l3a02
	or a
	jp p,l3a20
	ld c,a
	ld hl,l38c0
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l3a0e
	add a
	ret p
	sbc a
	or #01
	add (ix+#2a)
	ld (ix+#2a),a
	ret
	ld (ix+#30),#f0
	jr l3a48
.l3a20
	ld (ix+#12),b
	ld (ix+#15),b
	bit 7,(ix+#2a)
	ld (ix+#2a),a
	jr nz,l3a35
	ld (ix+#30),b
	ld (ix+#2d),b
.l3a35
	ld c,(ix+#18)
	ld (ix+#1b),c
	ld c,b
	sub #54
	jr c,l3a45
	ld c,#02
	ld (l37f2),a
.l3a45
	ld (ix+#00),c
.l3a48
	ld a,(ix+#27)
	ld (ix+#24),a
	ld (ix+#06),d
	ld (ix+#03),e
	ret
.l3a55
	inc lx
.l3a57
	ld d,#00
	ld a,(ix+#30)
	cp #f0
	jr nc,l3a7b
	sub #10
	ld (ix+#30),a
	jr nc,l3a7b
	ld hl,l3cce
	ld e,(ix+#33)
	add hl,de
	ld a,(hl)
	add (ix+#2d)
	ld e,a
	add hl,de
	ld a,(hl)
	inc (ix+#2d)
	ld (ix+#30),a
.l3a7b
	or #f0
	add #0f
	inc a
	jr c,l3a83
	sub a
.l3a83
	ld (bc),a
	ld hl,l3cca
	ld e,(ix+#1b)
	inc e
	add hl,de
	ld a,(hl)
	or a
	jp p,l3a96
	ld e,(ix+#18)
	and #7f
.l3a96
	ld (ix+#1b),e
	add (ix+#2a)
	add (ix+#3f)
	add a
	ld hl,l3b90
	ld e,a
	add hl,de
	ld e,(hl)
	inc l
	ld d,(hl)
	ld c,(ix+#42)
	bit 4,c
	jr z,l3ada
	sub a
	or (ix+#39)
	jr nz,l3ab7
	inc a
	and c
.l3ab7
	ld b,(ix+#36)
	ld l,a
	ld a,(ix+#3c)
	bit 5,c
	jr nz,l3ac9
	sub l
	jr nz,l3acf
	set 5,c
	jr l3acf
.l3ac9
	add l
	cp b
	jr nz,l3acf
	res 5,c
.l3acf
	ld (ix+#3c),a
	srl b
	sub b
	ld l,a
	sbc a
	ld h,a
	add hl,de
	ex de,hl
.l3ada
	ld a,c
	xor #01
	ld (ix+#42),a
	bit 3,c
	jr z,l3b05
	ld b,(ix+#21)
	djnz l3b02
	ld c,(ix+#1e)
	bit 7,c
	jr z,l3af1
	dec b
.l3af1
	ld l,(ix+#12)
	ld h,(ix+#15)
	add hl,bc
	ld (ix+#12),l
	ld (ix+#15),h
	add hl,de
	ex de,hl
	jr l3b05
.l3b02
	ld (ix+#21),b
.l3b05
	cpl
	and #03
	ld a,(ix+#00)
	ld c,a
	res 0,c
	rra
	jr nz,l3b18
	ld hl,l3b88
.l3b15 equ $ + 1
	ld (hl),#10
	or #01
.l3b18
	or c
	bit 2,(ix+#42)
	jr z,l3b23
	res 1,(ix+#42)
.l3b23
	ld (ix+#00),a
	ex de,hl
	ret
.l3b2f equ $ + 7
.l3b2e equ $ + 6
.l3b2d equ $ + 5
.l3b2c equ $ + 4
.l3b2a equ $ + 2
.l3b28
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3b37 equ $ + 7
.l3b36 equ $ + 6
.l3b34 equ $ + 4
.l3b33 equ $ + 3
.l3b31 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3b38
	db #00,#00,#00,#00
.l3b3e equ $ + 2
.l3b3d equ $ + 1
.l3b3c
	db #54,#68,#69,#73,#20,#41,#59,#20
	db #6d,#75,#73,#69,#63,#20,#6d,#6f
	db #64,#75,#6c,#65,#20,#69,#73,#20
	db #63,#6f,#70,#79,#72,#69,#67,#68
	db #74,#20,#31,#39,#38,#37,#20,#4a
	db #61,#73,#2e,#43,#2e,#42,#72,#6f
	db #6f,#6b,#65,#2e,#20,#2d,#50,#72
	db #65,#70,#61,#72,#65,#20,#74,#6f
.l3b81 equ $ + 5
	db #20,#64,#69,#65,#21,#2d
.l3b89 equ $ + 7
.l3b88 equ $ + 6
.l3b86 equ $ + 4
.l3b84 equ $ + 2
.l3b82
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3b8e equ $ + 4
.l3b8d equ $ + 3
.l3b8c equ $ + 2
.l3b8b equ $ + 1
.l3b8a
	db #00,#00,#00,#00,#00,#00
.l3b90
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
	dw #03bc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
.l3bd8
	dw #00ef,#00e1,#00d5,#00c9
	dw #00be,#00b3,#00a9,#009f
	dw #0096,#008e,#0086,#007f
	dw #0077,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
.l3c38
	dw l3dc5,l3dfd,l3dfd,l3dfd
	dw l3dfd,l3dfd,l3dfd,l3e13
	dw l3e13,l3dfd,l3dfd,l3dfd
	dw l3dfd,l3dfd,l3dfd,l3e13
	dw l3e13,l3e9a,l3dfd,l3dfd
	dw l3dfd,l3dfd,l3dfd,l3dfd
	dw l3e13,l3e13,l3dfd,l3dfd
	dw l3dfd,l3dfd,l3dfd,l3dfd
	dw l3e13,l3e13,l3e9a,l3efc
.l3c84 equ $ + 4
	dw l3efc,#0000,l3d6b,l3e7a
	dw l3e7c,l3ed4,l3e7c,l3e7c
	dw l3ed4,l3f32,l3f32,#0000
.l3c98
	dw l3d67,l3e29,l3e2e,l3ed4
	dw l3e29,l3e2e,l3ed4,l3f32
.l3cac equ $ + 4
	dw l3f32,#0000,l3ef6,l3da6
.l3cb6 equ $ + 6
.l3cb2 equ $ + 2
.l3cb0
	dw l3f30,l3f29,l3f32,l3d9e
.l3cbe equ $ + 6
.l3cba equ $ + 2
	dw l3da1,l3d9e,l3da7,l3d9e
.l3cc6 equ $ + 6
.l3cc4 equ $ + 4
.l3cc2 equ $ + 2
	dw l3dac,l3db1,l3db3,l3db5
.l3cce equ $ + 6
.l3cca equ $ + 2
	db #00,#01,#02,#80,#00,#87,#0d,#15
	db #1e,#28,#2d,#2e,#3c,#48,#4f,#57
	db #5b,#66,#6b,#1d,#2c,#3b,#3a,#39
	db #38,#37,#36,#f5,#1d,#2c,#2b,#1a
	db #19,#18,#17,#16,#15,#f0,#0d,#0b
	db #0a,#09,#08,#17,#16,#15,#13,#11
	db #f0,#1b,#1c,#1b,#2a,#39,#f8,#29
	db #f8,#0b,#0d,#0c,#1b,#1a,#19,#08
	db #07,#06,#05,#04,#03,#02,#01,#f0
	db #0d,#0c,#0b,#1a,#19,#18,#07,#0b
	db #1a,#19,#18,#17,#f6,#1a,#19,#18
	db #17,#16,#25,#34,#f3,#0c,#0b,#1a
	db #19,#28,#37,#36,#35,#f4,#0c,#09
	db #06,#03,#f0,#53,#54,#55,#56,#57
	db #48,#49,#3a,#3b,#3c,#3d,#fe,#7b
	db #7c,#7b,#7a,#79,#f8,#77,#78,#77
	db #76,#75,#f4
.l3d4b
	db #05
	dw l3c38,l3c84,l3c98
	db #05
	dw l3cac,l3cb0,l3cb2
	db #05
	dw l3cb6,l3cba,l3cbe
	db #01
	dw l3cc2,l3cc4,l3cc6
.l3d6b equ $ + 4
.l3d67
	db #ff,#80,#80,#85,#b0,#86,#01,#02
	db #c8,#e1,#24,#22,#24,#e3,#24,#c9
	db #58,#e1,#58,#c8,#e1,#24,#22,#24
	db #e3,#24,#c9,#58,#e1,#58,#c8,#e1
	db #24,#22,#24,#e3,#22,#e1,#24,#c9
	db #58,#58,#c8,#e1,#24,#22,#24,#e3
.l3d9e equ $ + 7
	db #22,#c9,#e1,#58,#58,#58,#85,#89
.l3da6 equ $ + 7
.l3da1 equ $ + 2
	db #00,#85,#b0,#c2,#81,#e1,#24,#88
.l3dac equ $ + 5
.l3da7
	db #b0,#c2,#81,#e1,#28,#b0,#c2,#81
.l3db5 equ $ + 6
.l3db3 equ $ + 4
.l3db1 equ $ + 2
	db #e1,#2b,#e0,#80,#e0,#80,#e4,#c8
	db #86,#01,#02,#b0,#26,#28,#29,#2b
.l3dc5 equ $ + 6
	db #2d,#2e,#30,#ee,#32,#88,#b0,#c5
	db #86,#02,#02,#e1,#8b,#18,#07,#07
	db #8a,#0a,#8a,#0a,#0c,#0c,#8a,#10
	db #10,#8a,#07,#07,#8a,#0a,#8a,#0a
	db #0c,#0c,#8a,#10,#10,#8a,#07,#07
	db #8a,#0a,#8a,#0a,#0c,#0c,#8a,#10
	db #10,#8a,#05,#05,#8a,#08,#8a,#08
.l3dfd equ $ + 6
	db #0a,#0a,#8a,#0e,#0e,#85,#8b,#18
	db #07,#8b,#07,#07,#8b,#18,#0a,#8a
	db #0a,#8b,#04,#0c,#0c,#8b,#18,#10
.l3e13 equ $ + 4
	db #8b,#07,#10,#85,#8b,#18,#05,#8b
	db #07,#05,#8b,#18,#08,#8a,#08,#8b
	db #04,#0a,#0a,#8b,#18,#0e,#8b,#07
.l3e2e equ $ + 7
.l3e29 equ $ + 2
	db #0e,#85,#89,#f9,#86,#01,#02,#e5
	db #b1,#c1,#2b,#c0,#e9,#29,#cc,#b2
	db #e1,#24,#22,#24,#e3,#22,#e1,#24
	db #e3,#80,#e5,#b1,#c1,#2b,#c0,#e9
	db #29,#cc,#b2,#e1,#24,#22,#24,#e3
	db #22,#e1,#1c,#e3,#80,#e5,#b1,#c1
	db #2b,#c0,#e9,#29,#cc,#b2,#e1,#24
	db #e3,#22,#24,#e1,#22,#e3,#24,#e5
	db #b1,#c1,#29,#c0,#e9,#27,#cc,#b2
	db #e1,#1d,#1b,#1d,#e3,#1b,#18,#e1
.l3e7c equ $ + 5
.l3e7a equ $ + 3
	db #16,#b1,#85,#b0,#81,#e5,#c1,#2b
	db #c0,#f3,#29,#e5,#80,#c1,#2b,#c0
	db #f3,#29,#e5,#80,#c1,#2b,#c0,#f3
	db #29,#e5,#80,#c1,#29,#c0,#f3,#27
.l3e9a equ $ + 3
	db #e5,#80,#85,#e1,#8a,#0c,#0c,#8a
	db #0e,#8a,#0e,#0f,#8a,#0f,#8a,#11
	db #8a,#11,#8a,#0c,#0c,#8a,#0e,#8a
	db #0e,#0f,#8a,#0f,#8a,#11,#8a,#11
	db #8a,#0c,#0c,#8a,#0e,#8a,#0e,#0f
	db #8a,#0f,#8a,#11,#8a,#11,#8a,#07
	db #07,#8a,#09,#8a,#09,#0a,#8a,#0a
.l3ed4 equ $ + 5
	db #8a,#0c,#8a,#0c,#85,#e3,#c0,#24
	db #c1,#26,#c0,#27,#c1,#29,#c0,#24
	db #c1,#26,#c0,#27,#c1,#29,#c0,#24
	db #c1,#26,#c0,#27,#c1,#29,#c0,#2b
.l3ef6 equ $ + 7
	db #c1,#2d,#c0,#2e,#c1,#30,#85,#e1
.l3efc equ $ + 5
	db #b0,#c5,#86,#02,#02,#8a,#0c,#07
	db #0a,#8a,#0a,#0c,#0c,#8a,#10,#10
	db #8a,#0a,#05,#08,#8a,#08,#0a,#0a
	db #8a,#0e,#0e,#8a,#08,#03,#06,#8a
	db #06,#08,#08,#8a,#0c,#0c,#8a,#0a
	db #05,#08,#8a,#08,#0a,#0a,#8a,#0e
.l3f29 equ $ + 2
	db #0e,#85,#89,#f9,#b1,#86,#01,#02
.l3f32 equ $ + 3
.l3f30 equ $ + 1
	db #85,#b0,#81,#c1,#e5,#2b,#c0,#e9
	db #2b,#c1,#e5,#29,#c0,#e9,#29,#c1
	db #e5,#27,#c0,#e9,#27,#c1,#e5,#29
.l3f4b equ $ + 4
	db #c0,#e9,#29,#85,#00,#00,#0d,#00
	db #00,#01,#55,#01,#00,#ff,#ff,#ff
	db #0d,#00,#02,#64,#00,#0e,#00,#00
	db #12,#00,#00,#01,#55,#01,#00,#ff
	db #ff,#ff,#12,#00,#02,#64,#00,#0e
	db #00,#00,#16,#00,#02,#01,#55,#ff
	db #7f,#01,#00,#00,#16,#00,#05,#4c
	db #04,#09,#ff,#ff,#1b,#00,#05,#02
	db #55,#04,#00,#01,#00,#ff,#1a,#00
	db #0a,#4c,#04,#09,#05,#00,#1b,#00
	db #0a,#02,#55,#0b,#00,#03,#00,#ff
	db #1a,#00,#1e,#ac,#0d,#09,#00,#00
	db #25,#00,#02,#01,#55,#fe,#7f,#02
	db #00,#00,#25,#00,#05,#4c,#04,#09
	db #0a,#00,#96,#00,#02,#00,#00,#00
	db #00,#00,#00,#01,#a0,#00,#03,#58
	db #02,#09,#0b,#00,#c8,#00,#02,#00
	db #00,#00,#00,#00,#00,#01,#d3,#00
	db #03,#58,#02,#09,#01,#00,#13,#00
	db #00,#01,#55,#10,#00,#0d,#00,#ff
	db #13,#00,#0c,#b0,#04,#09,#00,#00
	db #37,#00,#00,#01,#55,#01,#00,#ff
	db #7f,#00,#37,#00,#09,#4c,#04,#09
	db #00,#00
;
; #3b3c
;
;db "This AY music module is copyright 1987 Jas.C.Brooke. -Prepare to die!-"
;
.music_info
	db "Rockford (1988)(Mastertronic)(Jason C Brooke)",0
	db "This AY music module is copyright 1987 Jas.C.Brooke. -Prepare to die!-",0

	read "music_end.asm"
