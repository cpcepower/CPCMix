; Music of Andy Capp (1987)(Mirrorsoft)(Jason C.Brooke)()
; Ripped by Megachur the 01/03/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ANDYCAPP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #a600

	read "music_header.asm"
;
.play_music
;
	sub a
;
.music_end equ $ + 1
.la602 equ $ + 1
;
	cp #00
	push ix
	jr z,la641
	ld b,a
	ld ix,la95c
	ld hl,la782
	dec (hl)
	jr nz,la620
.la613 equ $ + 1
	ld (hl),#01
	call la808
	call la806
	call la806
	ld lx,la95c	;#5c
.la621 equ $ + 1
.la620
	ld a,#00
	ld (la9aa),a
	ld bc,la9ac
	call la88e
	ld (la9a4),hl
	ld bc,la9ad
	call la88c
	ld (la9a6),hl
	ld bc,la9ae
	call la88c
	ld (la9a8),hl
.la640
	sub a
.la642 equ $ + 1
.la641
	cp #00
	jr z,la6a6
	ld hl,la77f
	dec (hl)
	jr nz,la653
	ld (la9ae),a
	ld (la642),a
	jr la6a6
.la653
	ld de,(la77d)
	ld a,(la776)
	or a
	jr z,la673
	ld hl,la781
	dec (hl)
	jr nz,la673
	ld (hl),a
	ld hl,la777
	rrc (hl)
	ld hl,(la778)
	jr c,la671
	ld hl,(la77a)
.la671
	add hl,de
	ex de,hl
.la673
	ld hl,(la771)
	add hl,de
	ld a,(la775)
	or a
	jr z,la68a
	ex de,hl
	ld hl,la780
	dec (hl)
	jr nz,la689
	ld (hl),a
	ld de,(la773)
.la689
	ex de,hl
.la68a
	ld (la77d),hl
	ld a,#10
	ld (la9ae),a
	ld (la9a8),hl
	ld a,l
	ld hl,la77c
	rrc (hl)
	ld hl,la95e
	res 0,(hl)
	jr nc,la6a6
	inc (hl)
	ld (la9aa),a
.la6a6
	ld hl,la95e
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
	ld (la9ab),a
	sub a
.la6c0 equ $ + 1
	cp #00
	ld hl,la9b0
	ld c,a
	ld de,#0cf6
	jr z,la6cf
	inc d
	inc l
	ld (la6c0),a
.la6cf
	ld a,#c0
.la6d1
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
	jp p,la6d1
	pop ix
	ret
;
.init_music
;
	push bc
	push de
	push hl
	push ix
	ld hl,lab0e
	ld b,#00
	ld a,(hl)
	inc hl
	ld (la613),a
	ld ix,la95c
	sub a
	ld (la602),a
	inc a
.la703
	ld (la782),a
	inc a
	ld c,a
.la708
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#24),#01
	ld (ix+#45),b
	ld (ix+#42),b
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
	jp p,la708
	ld (la602),a
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
	ld hl,lad2c
	add hl,bc
	ld c,a
	add hl,bc
	add hl,bc
	ld de,la771
	ld c,#0f
	sub a
	ld (la642),a
	ldir
	ld c,#03
	ld de,la9af
	ldir
	ld hl,(la775)
	ld (la780),hl
	ld a,#01
	ld (la642),a
	ld (la6c0),a
	pop hl
	pop de
	pop bc
	ret
.la778 equ $ + 7
.la777 equ $ + 6
.la776 equ $ + 5
.la775 equ $ + 4
.la773 equ $ + 2
.la771
	db #00,#00,#00,#00,#00,#00,#00,#00
.la780 equ $ + 7
.la77f equ $ + 6
.la77d equ $ + 4
.la77c equ $ + 3
.la77a equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.la782 equ $ + 1
.la781
	db #00,#00,#d4,#6e,#3f,#62,#65,#19
	db #4b,#76,#04,#31,#6f,#69

	ld hl,la640
	ex (sp),hl
;
.stop_music
;
	sub a
	ld (la602),a
	ld (la9ac),a
	ld (la9ad),a
	ld (la9ae),a
	ret

	ld c,(ix+#0f)
	ld l,(ix+#09)
	ld h,(ix+#0c)
	add hl,bc
	ld a,(hl)
	inc l
	or (hl)
	jr nz,la7b3
	sbc hl,bc
	ld c,b
.la7b3
	ld d,(hl)
	dec l
	ld e,(hl)
	inc c
	inc c
	ld (ix+#0f),c
	jr la81b
	ld a,(de)
	inc de
	ld (ix+#42),a
	jr la81b
	ld a,(de)
	inc de
	ld (ix+#1e),a
	set 3,(ix+#45)
	ld a,(de)
	inc de
	ld (ix+#21),a
	jr la81b
	ld a,(de)
	inc de
	ld (ix+#3c),a
	ld a,(de)
	inc de
	ld (ix+#3f),a
	add a
	ld (ix+#39),a
	set 4,(ix+#45)
	jr la81b
	set 7,(ix+#45)
	set 6,(ix+#45)
	jr la81b
	ld (ix+#45),b
	jr la81b
	ld a,(de)
	inc de
	ld (la947),a
	set 2,(ix+#45)
	set 1,(ix+#45)
	jr la81b
.la806
	inc lx
.la808
	dec (ix+#24)
	ld a,(ix+#45)
	jr nz,la84b
	and #30
	ld (ix+#45),a
	ld e,(ix+#03)
	ld d,(ix+#06)
.la81b
	ld a,(de)
	inc de
	cp #b0
	jr c,la83f
	add #20
	jr c,la834
	add #20
	jr c,la83a
	ld c,a
	ld hl,la9dc
	add hl,bc
	ld c,(hl)
	ld (ix+#18),c
	jr la81b
.la834
	inc a
	ld (ix+#27),a
	jr la81b
.la83a
	ld (ix+#36),a
	jr la81b
.la83f
	or a
	jp p,la85d
	ld c,a
	ld hl,la703
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.la84b
	add a
	ret p
	sbc a
	or #01
	add (ix+#2a)
	ld (ix+#2a),a
	ret
	ld (ix+#33),#f0
	jr la87f
.la85d
	ld (ix+#2a),a
	ld (ix+#12),b
	ld (ix+#15),b
	ld (ix+#33),b
	ld (ix+#30),b
	ld c,(ix+#18)
	ld (ix+#1b),c
	ld c,b
	sub #54
	jr c,la87c
	ld c,#02
	ld (la621),a
.la87c
	ld (ix+#00),c
.la87f
	ld a,(ix+#27)
	ld (ix+#24),a
	ld (ix+#06),d
	ld (ix+#03),e
	ret
.la88c
	inc lx
.la88e
	ld d,#00
	ld a,(ix+#33)
	cp #f0
	jr nc,la8b2
	sub #10
	ld (ix+#33),a
	jr nc,la8b2
	ld hl,laace
	ld e,(ix+#36)
	add hl,de
	ld a,(hl)
	add (ix+#30)
	ld e,a
	add hl,de
	ld a,(hl)
	inc (ix+#30)
	ld (ix+#33),a
.la8b2
	or #f0
	inc a
	add #0f
	jr c,la8ba
	sub a
.la8ba
	ld (bc),a
	ld hl,laacc
	ld e,(ix+#1b)
	inc e
	add hl,de
	ld a,(hl)
	or a
	jp p,la8cd
	ld e,(ix+#18)
	and #7f
.la8cd
	ld (ix+#1b),e
	add (ix+#2a)
	add (ix+#42)
	add a
	ld hl,la9b2
	ld e,a
	add hl,de
	ld e,(hl)
	inc l
	ld d,(hl)
	ld c,(ix+#45)
	bit 4,c
	jr z,la90c
	ld b,(ix+#39)
	ld a,(ix+#3f)
	bit 5,c
	jr nz,la8f9
	sub (ix+#3c)
	jr nz,la901
	set 5,c
	jr la901
.la8f9
	add (ix+#3c)
	cp b
	jr nz,la901
	res 5,c
.la901
	ld (ix+#3f),a
	srl b
	sub b
	ld l,a
	sbc a
	ld h,a
	add hl,de
	ex de,hl
.la90c
	ld a,c
	xor #01
	ld (ix+#45),a
	bit 3,c
	jr z,la937
	ld b,(ix+#21)
	djnz la934
	ld c,(ix+#1e)
	bit 7,c
	jr z,la923
	dec b
.la923
	ld l,(ix+#12)
	ld h,(ix+#15)
	add hl,bc
	ld (ix+#12),l
	ld (ix+#15),h
	add hl,de
	ex de,hl
	jr la937
.la934
	ld (ix+#21),b
.la937
	cpl
	and #03
	ld a,(ix+#00)
	ld c,a
	res 0,c
	rra
	jr nz,la94a
	ld hl,la9aa
.la947 equ $ + 1
	ld (hl),#10
	or #01
.la94a
	or c
	bit 2,(ix+#45)
	jr z,la955
	res 1,(ix+#45)
.la955
	ld (ix+#00),a
	ex de,hl
	ret
.la95e equ $ + 4
.la95c equ $ + 2
	db #00,#00,#00,#00,#00
	db #54,#68,#69,#73,#20,#6d,#75,#73
	db #69,#63,#20,#6d,#6f,#64,#75,#6c
	db #65,#20,#69,#73,#20,#74,#68,#65
	db #20,#63,#6f,#70,#79,#72,#69,#67
	db #68,#74,#20,#6f,#66,#20,#4a,#61
	db #73,#2e,#43,#2e,#42,#72,#6f,#6f
	db #6b,#65,#2e,#20,#28,#50,#72,#65
	db #70,#61,#72,#65,#20,#74,#6f,#20
	db #44,#69,#65,#21,#29
.la9ab equ $ + 7
.la9aa equ $ + 6
.la9a8 equ $ + 4
.la9a6 equ $ + 2
.la9a4
	db #00,#00,#00,#00,#00,#00,#00,#00
.la9b0 equ $ + 4
.la9af equ $ + 3
.la9ae equ $ + 2
.la9ad equ $ + 1
.la9ac
	db #00,#00,#00,#00,#00,#00
.la9b2
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
.la9dc equ $ + 2
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
.laa5a
	dw laba0,labb9,laba0,laba0
	dw labb8,laba0,lacbd,lacbd
	dw labb9,laba0,lab9a,laba0
	dw labd8,laba0,lacbd,lacbd
	dw #0000
.laa7c
	dw lab4e,lab83,lab83,lab4e
	dw lab4c,lab82,lab83,lab4e
	dw lac90,lac90,lab83,lab83
	dw lab15,lab4e,lab83,lab83
	dw lab4e,lac90,lac90,#0000
.laaa4
	dw lac18,lac3e,lac3e,lac18
	dw lac16,lac3d,lac3e,lac18
	dw lacd0,lacd0,lac3e,lac3e
	dw lac6f,lace2,lac55,lac55
	dw lace2,laccf,lacd0,#0000
.laace equ $ + 2
.laacc
	db #00,#80,#05,#16,#26,#2b,#33,#1c
	db #2d,#1c,#1b,#1a,#b9,#b9,#b9,#b9
	db #58,#57,#56,#55,#54,#53,#52,#51
	db #f0,#1c,#4d,#2b,#2a,#29,#b8,#b8
	db #b8,#58,#57,#56,#55,#54,#53,#52
	db #51,#f0,#3a,#39,#38,#37,#36,#f5
	db #3a,#39,#38,#57,#76,#75,#74,#73
	db #f2,#2b,#2a,#29,#28,#27,#26,#25
	db #24,#f3
.lab0e
	db #04
	dw laaa4,laa7c,laa5a
.lab15
	db #e7,#21,#e3,#24,#eb,#24,#e7,#21
	db #e3,#1f,#eb,#1d,#e7,#1f,#e3,#21
	db #e7,#24,#e3,#21,#f7,#1f,#e7,#21
	db #e3,#24,#eb,#24,#e7,#29,#e3,#2b
	db #eb,#2d,#e7,#2b,#e3,#29,#e7,#2b
	db #e3,#26,#f7,#29,#e9,#2b,#e4,#29
.lab4c equ $ + 7
	db #e9,#2b,#e4,#26,#fd,#29,#85,#89
.lab4e equ $ + 1
	db #0c,#c0,#86,#01,#02,#b0,#e7,#21
	db #e3,#24,#eb,#24,#e7,#21,#e3,#1f
	db #eb,#1d,#e7,#1f,#e3,#21,#e7,#24
	db #e3,#21,#f7,#1f,#e7,#21,#e3,#24
	db #eb,#24,#e7,#21,#e3,#1f,#eb,#1d
	db #e7,#1f,#e3,#21,#e7,#1f,#e3,#1d
.lab83 equ $ + 6
.lab82 equ $ + 5
	db #f7,#1d,#89,#00,#85,#c1,#e7,#26
	db #e3,#29,#eb,#29,#e7,#28,#e3,#24
	db #eb,#26,#e7,#26,#e3,#29,#e7,#28
.lab9a equ $ + 5
	db #e3,#24,#f7,#26,#85,#ee,#16,#18
.laba0 equ $ + 3
	db #fd,#11,#85,#c0,#b0,#86,#02,#04
	db #eb,#11,#11,#11,#11,#16,#16,#18
	db #18,#eb,#11,#11,#11,#11,#16,#18
.labb9 equ $ + 4
.labb8 equ $ + 3
	db #f7,#11,#85,#c2,#eb,#1a,#1a,#18
	db #16,#1a,#18,#e7,#16,#e3,#13,#e7
	db #16,#e3,#18,#eb,#1a,#1a,#18,#16
	db #1a,#18,#e7,#16,#e3,#15,#e7,#13
.labd8 equ $ + 3
	db #e3,#11,#85,#c4,#e7,#1a,#e3,#1a
	db #e7,#1a,#e3,#1a,#e7,#18,#e3,#18
	db #eb,#16,#e7,#1a,#e3,#1a,#e7,#18
	db #e3,#18,#e7,#16,#e3,#13,#e7,#16
	db #e3,#18,#e7,#1a,#e3,#1a,#e7,#1a
	db #e3,#1a,#e7,#18,#e3,#18,#eb,#16
	db #e7,#1a,#e3,#1a,#e7,#18,#e3,#18
	db #e7,#16,#e3,#15,#e7,#13,#e3,#11
.lac18 equ $ + 3
.lac16 equ $ + 1
	db #85,#89,#0c,#c0,#86,#01,#02,#b0
	db #eb,#18,#1d,#18,#18,#1a,#1a,#e7
	db #1c,#e3,#1a,#eb,#18,#eb,#18,#1d
	db #18,#18,#1a,#e3,#1c,#18,#16,#e7
	db #15,#e3,#13,#eb,#15,#89,#00,#85
.lac3e equ $ + 1
.lac3d
	db #c2,#eb,#22,#e7,#22,#e3,#21,#e7
	db #1f,#e3,#21,#eb,#22,#e7,#22,#e3
	db #21,#e7,#1f,#e3,#21,#f7,#22,#85
.lac55
	db #c4,#e7,#22,#e3,#22,#e7,#22,#e3
	db #21,#e7,#1f,#e3,#21,#eb,#22,#e7
	db #22,#e3,#21,#e7,#1f,#e3,#21,#f7
.lac6f equ $ + 2
	db #22,#85,#eb,#18,#1d,#18,#18,#1a
	db #1a,#e7,#1c,#e3,#1a,#eb,#18,#18
	db #1d,#24,#29,#26,#e3,#28,#24,#22
	db #f7,#21,#ee,#26,#e4,#28,#24,#22
.lac90 equ $ + 3
	db #fd,#21,#85,#e7,#2d,#e3,#29,#eb
	db #30,#e7,#2b,#e3,#29,#eb,#2d,#e7
	db #2d,#e3,#29,#e7,#30,#e3,#29,#f7
	db #2e,#e7,#2d,#e3,#29,#eb,#30,#e7
	db #2b,#e3,#29,#eb,#2d,#e7,#2b,#e3
	db #2d,#e7,#2e,#e3,#30,#f7,#2d,#85
.lacbd
	db #eb,#11,#11,#11,#11,#11,#11,#16
	db #16,#11,#11,#11,#11,#16,#18,#f7
.lacd0 equ $ + 3
.laccf equ $ + 2
	db #11,#85,#c0,#eb,#18,#1d,#18,#18
	db #18,#18,#1a,#1a,#18,#1d,#18,#18
.lace2 equ $ + 5
	db #1a,#1c,#f7,#1d,#85,#c3,#e1,#1d
	db #21,#24,#29,#2d,#30,#eb,#35,#e1
	db #1d,#21,#24,#29,#2d,#30,#eb,#35
	db #e1,#1d,#22,#26,#29,#2e,#32,#eb
	db #35,#e1,#1c,#1f,#24,#28,#2b,#30
	db #eb,#34,#e1,#1d,#21,#24,#29,#2d
	db #30,#eb,#35,#e1,#1d,#21,#24,#29
	db #2d,#30,#eb,#35,#e1,#1d,#22,#26
	db #29,#2e,#32,#eb,#34,#e1,#1d,#21
.lad2c equ $ + 7
	db #24,#29,#2d,#30,#eb,#35,#85,#00
	db #00,#0d,#00,#00,#01,#55,#01,#00
	db #ff,#ff,#ff,#0d,#00,#02,#64,#00
	db #0e,#00,#00,#12,#00,#00,#01,#55
	db #01,#00,#ff,#ff,#ff,#12,#00,#02
	db #64,#00,#0e,#00,#00,#a0,#00,#02
	db #01,#55,#f5,#7f,#0a,#00,#00,#aa
	db #00,#08,#d0,#07,#09,#00,#00,#78
	db #00,#03,#01,#55,#eb,#7f,#14,#00
	db #00,#a0,#00,#18,#94,#11,#09,#00
	db #00,#82,#00,#03,#01,#55,#e1,#7f
	db #1e,#00,#00,#a0,#00,#05,#94,#11
	db #09,#f4,#7f,#96,#00,#08,#01,#55
	db #fe,#7f,#02,#00,#00,#a0,#00,#28
	db #88,#13,#09,#00,#00,#c3,#00,#08
	db #01,#aa,#f6,#7f,#09,#00,#00,#c8
	db #00,#0f,#ee,#02,#08,#00,#00,#e1
	db #00,#08,#00,#00,#00,#00,#00,#00
	db #00,#27,#01,#0b,#5e,#01,#08,#00
	db #00,#27,#01,#08,#00,#00,#00,#00
	db #00,#00,#00,#e1,#00,#0b,#5e,#01
	db #08,#32,#00,#2c,#01,#00,#01,#55
	db #0a,#00,#f6,#7f,#00,#2c,#01,#08
	db #ac,#0d,#09,#00,#00,#16,#00,#05
	db #02,#55,#00,#00,#01,#00,#ff,#16
	db #00,#0a,#84,#03,#09,#00,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#6f,#01,#70,#ae,#3f,#00
	db #00,#00,#00,#01,#00,#00,#00,#00
	db #00,#00,#60,#00,#02,#14,#24,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0d
	db #00,#7b,#96,#fb,#a6,#40,#00,#6f
	db #01,#72,#01,#72,#01,#72,#01,#72
	db #01,#00,#00,#00,#00
;
; #a95f
; db "This music module is the copyright of Jas.C.Brooke. (Prepare to Die!)"
;
.music_info
	db "Andy Capp (1987)(Mirrorsoft)(Jason C.Brooke)",0
	db "This music module is the copyright of Jas.C.Brooke. (Prepare to Die!)",0

	read "music_end.asm"
