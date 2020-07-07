; Music of Combat School (1987)(Ocean Software)(Jason C. Brooke)()
; Ripped by Megachur the 18/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "COMBATSC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #b000
first_theme				equ 0
last_theme				equ 9

	read "music_header.asm"

;
.play_music	; b000
;
	sub a
.lb002 equ $ + 1
.music_end equ $ + 1
	cp #00
	push ix
	jr z,lb041
	ld b,a
	ld ix,lb364
	ld hl,lb189
	dec (hl)
	jr nz,lb020
.lb013 equ $ + 1
	ld (hl),#01
	call lb20f
	call lb20d
	call lb20d
	ld lx,lb364	;#64
.lb021 equ $ + 1
.lb020
	ld a,#00
	ld (lb3b2),a
	ld bc,lb3b4
	call lb295
	ld (lb3ac),hl
	ld bc,lb3b5
	call lb293
	ld (lb3ae),hl
	ld bc,lb3b6
	call lb293
	ld (lb3b0),hl
.lb040
	sub a
.lb042 equ $ + 1
.lb041
	cp #00
	jr z,lb0a6
	ld hl,lb186
	dec (hl)
	jr nz,lb053
	ld (lb3b6),a
	ld (lb042),a
	jr lb0a6
.lb053
	ld de,(lb184)
	ld a,(lb17d)
	or a
	jr z,lb073
	ld hl,lb188
	dec (hl)
	jr nz,lb073
	ld (hl),a
	ld hl,lb17e
	rrc (hl)
	ld hl,(lb17f)
	jr c,lb071
	ld hl,(lb181)
.lb071
	add hl,de
	ex de,hl
.lb073
	ld hl,(lb178)
	add hl,de
	ld a,(lb17c)
	or a
	jr z,lb08a
	ex de,hl
	ld hl,lb187
	dec (hl)
	jr nz,lb089
	ld (hl),a
	ld de,(lb17a)
.lb089
	ex de,hl
.lb08a
	ld (lb184),hl
	ld a,#10
	ld (lb3b6),a
	ld (lb3b0),hl
	ld a,l
	ld hl,lb183
	rrc (hl)
	ld hl,lb366
	res 0,(hl)
	jr nc,lb0a6
	inc (hl)
	ld (lb3b2),a
.lb0a6
	ld hl,lb366
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
	ld (lb3b3),a
	sub a
.lb0c0 equ $ + 1
	cp #00
	ld hl,lb3b8
	ld c,a
	ld de,#0cf6
	jr z,lb0cf
	inc d
	inc l
	ld (lb0c0),a
.lb0cf
	ld a,#c0
.lb0d1
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
	jp p,lb0d1
	pop ix
	ret
;
.init_music	; &b0eb
;
	push bc
	push de
	push hl
	push ix
	ld hl,lb69c
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
	ld (lb013),a
	ld ix,lb364
	sub a
	ld (lb002),a
	inc a
.lb10a
	ld (lb189),a
	inc a
	ld c,a
.lb10f
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
	jp p,lb10f
	ld (lb002),a
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
	ld hl,lbd76
	add hl,bc
	ld c,a
	add hl,bc
	add hl,bc
	ld de,lb178
	ld c,#0f
	sub a
	ld (lb042),a
	ldir
	ld c,#03
	ld de,lb3b7
	ldir
	ld hl,(lb17c)
	ld (lb187),hl
	ld a,#01
	ld (lb042),a
	ld (lb0c0),a
	pop hl
	pop de
	pop bc
	ret
.lb17f equ $ + 7
.lb17e equ $ + 6
.lb17d equ $ + 5
.lb17c equ $ + 4
.lb17a equ $ + 2
.lb178
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb187 equ $ + 7
.lb186 equ $ + 6
.lb184 equ $ + 4
.lb183 equ $ + 3
.lb181 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb189 equ $ + 1
.lb188
	db #00,#00,#d4,#6e,#3f,#62,#65,#19
	db #4b,#76,#04,#31,#6f,#69
	
	ld hl,lb040
	ex (sp),hl
;
.stop_music	;lb19a
;
	sub a
	ld (lb002),a
	ld (lb3b4),a
	ld (lb3b5),a
	ld (lb3b6),a
	ret

	ld c,(ix+#0f)
	ld l,(ix+#09)
	ld h,(ix+#0c)
	add hl,bc
	ld a,(hl)
	inc l
	or (hl)
	jr nz,lb1ba
	sbc hl,bc
	ld c,b
.lb1ba
	ld d,(hl)
	dec l
	ld e,(hl)
	inc c
	inc c
	ld (ix+#0f),c
	jr lb222
	ld a,(de)
	inc de
	ld (ix+#3f),a
	jr lb222
	ld a,(de)
	inc de
	ld (ix+#1e),a
	set 3,(ix+#42)
	ld a,(de)
	inc de
	ld (ix+#21),a
	jr lb222
	ld a,(de)
	inc de
	ld (ix+#39),a
	ld a,(de)
	inc de
	ld (ix+#3c),a
	add a
	ld (ix+#36),a
	set 4,(ix+#42)
	jr lb222
	set 7,(ix+#42)
	set 6,(ix+#42)
	jr lb222
	ld (ix+#42),b
	jr lb222
	ld a,(de)
	inc de
	ld (lb34e),a
	set 2,(ix+#42)
	set 1,(ix+#42)
	jr lb222
.lb20d
	inc lx
.lb20f
	dec (ix+#24)
	ld a,(ix+#42)
	jr nz,lb252
	and #30
	ld (ix+#42),a
	ld e,(ix+#03)
	ld d,(ix+#06)
.lb222
	ld a,(de)
	inc de
	cp #b0
	jr c,lb246
	add #20
	jr c,lb23b
	add #20
	jr c,lb241
	ld c,a
	ld hl,lb51c
	add hl,bc
	ld c,(hl)
	ld (ix+#18),c
	jr lb222
.lb23b
	inc a
	ld (ix+#27),a
	jr lb222
.lb241
	ld (ix+#33),a
	jr lb222
.lb246
	or a
	jp p,lb264
	ld c,a
	ld hl,lb10a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb252
	add a
	ret p
	sbc a
	or #01
	add (ix+#2a)
	ld (ix+#2a),a
	ret
	ld (ix+#30),#f0
	jr lb286
.lb264
	ld (ix+#2a),a
	ld (ix+#12),b
	ld (ix+#15),b
	ld (ix+#30),b
	ld (ix+#2d),b
	ld c,(ix+#18)
	ld (ix+#1b),c
	ld c,b
	sub #54
	jr c,lb283
	ld c,#02
	ld (lb021),a
.lb283
	ld (ix+#00),c
.lb286
	ld a,(ix+#27)
	ld (ix+#24),a
	ld (ix+#06),d
	ld (ix+#03),e
	ret
.lb293
	inc lx
.lb295
	ld d,#00
	ld a,(ix+#30)
	cp #f0
	jr nc,lb2b9
	sub #10
	ld (ix+#30),a
	jr nc,lb2b9
	ld hl,lb62d
	ld e,(ix+#33)
	add hl,de
	ld a,(hl)
	add (ix+#2d)
	ld e,a
	add hl,de
	ld a,(hl)
	inc (ix+#2d)
	ld (ix+#30),a
.lb2b9
	or #f0
	inc a
	add #0f
	jr c,lb2c1
	sub a
.lb2c1
	ld (bc),a
	ld hl,lb611
	ld e,(ix+#1b)
	inc e
	add hl,de
	ld a,(hl)
	or a
	jp p,lb2d4
	ld e,(ix+#18)
	and #7f
.lb2d4
	ld (ix+#1b),e
	add (ix+#2a)
	add (ix+#3f)
	add a
	ld hl,lb3ba
	ld e,a
	add hl,de
	ld e,(hl)
	inc l
	ld d,(hl)
	ld c,(ix+#42)
	bit 4,c
	jr z,lb313
	ld b,(ix+#36)
	ld a,(ix+#3c)
	bit 5,c
	jr nz,lb300
	sub (ix+#39)
	jr nz,lb308
	set 5,c
	jr lb308
.lb300
	add (ix+#39)
	cp b
	jr nz,lb308
	res 5,c
.lb308
	ld (ix+#3c),a
	srl b
	sub b
	ld l,a
	sbc a
	ld h,a
	add hl,de
	ex de,hl
.lb313
	ld a,c
	xor #01
	ld (ix+#42),a
	bit 3,c
	jr z,lb33e
	ld b,(ix+#21)
	djnz lb33b
	ld c,(ix+#1e)
	bit 7,c
	jr z,lb32a
	dec b
.lb32a
	ld l,(ix+#12)
	ld h,(ix+#15)
	add hl,bc
	ld (ix+#12),l
	ld (ix+#15),h
	add hl,de
	ex de,hl
	jr lb33e
.lb33b
	ld (ix+#21),b
.lb33e
	cpl
	and #03
	ld a,(ix+#00)
	ld c,a
	res 0,c
	rra
	jr nz,lb351
	ld hl,lb3b2
.lb34e equ $ + 1
	ld (hl),#10
	or #01
.lb351
	or c
	bit 2,(ix+#42)
	jr z,lb35c
	res 1,(ix+#42)
.lb35c
	ld (ix+#00),a
	ex de,hl
	ret
	db #00,#00,#00
.lb366 equ $ + 2
.lb364
	db #00,#00,#00
	db "This music module is the copyright of Jas.C.Brooke. (Prepare to Die!)"
.lb3b3 equ $ + 7
.lb3b2 equ $ + 6
.lb3b0 equ $ + 4
.lb3ae equ $ + 2
.lb3ac
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb3b8 equ $ + 4
.lb3b7 equ $ + 3
.lb3b6 equ $ + 2
.lb3b5 equ $ + 1
.lb3b4
	db #00,#00,#00,#00,#00,#00
.lb3ba
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
.lb468 equ $ + 6
.lb466 equ $ + 4
.lb464 equ $ + 2
.lb462
	dw lb6fe,lb715,lb6e6,lb745
.lb46e equ $ + 4
.lb46c equ $ + 2
.lb46a
	dw lb762,lb77e,lb79d,lb79f
	dw lb79f,lb79f,lb7bf,lb890
	dw lb890,lb79f,lb79f,lb79f
	dw lb79f,lb7bf,lb890,lb890
	dw #0000
.lb48c
	dw lb813,lb815,lb83b,lb878
	dw lb86a,lb885,lb815,lb815
	dw lb83b,lb878,lb86a,lb885
	dw #0000
.lb4a6
	dw lb7f6,lb86a,lb878,lb86a
	dw lb885,lb7f8,lb86a,lb878
	dw lb86a,lb885,#0000
.lb4bc
	dw lb8b2,lb8b2,lb8b4,lb8b4
	dw lb943,lb943,#0000
.lb4ca
	dw lb8fe,lb8fe,lb900,lb900
	dw lb945,lb945,#0000
.lb4d8
	dw lb924,lb924,lb926,lb926
	dw lb975,lb975,lb975,lb975
	dw lb975,lb975,lb975,lb975
	dw #0000
.lb4f2
	dw lb9a0,lb9a0,lba16,lba16
	dw #0000
.lb4fc
	dw lb9d5,lb9d5,lba2f,lba2f
	dw #0000
.lb506
	dw lba0f,#0000
.lb50a
	dw lba6f,lba71,lba71,lba71
	dw lbab6,lba71,lba71,lbab9
	dw lba71
.lb51c
	dw lba71,lbab6,lba71,lba6f
	dw lbab9,lba71,lba6f,#0000
.lb52c
	dw lba8a,lba8c,lba90,lba8c
	dw lbab6,lba8c,lba8c,lbab9
	dw lba90,lba8c,lbab6,lbaa1
	dw lba9f,lbab9,lbaa1,lba9f
	dw #0000
.lb54e
	dw lba9d,lbaa1,lbaa1,lbaa1
	dw lbab6,lbaa1,lbaa1,lbab9
	dw lbaa1,lbaa1,lbab6,lbaa1
	dw lba9d,lbab9,lbaa1,lba9d
	dw #0000
.lb570
	dw lbabc,lbac1,lbae4,lbae4
	dw lbad6,lbad6,lbaf2,#0000
.lb580
	dw lbafd,lbb02,lbb10,lbb10
	dw lbb02,lbb02,lbb1e,#0000
.lb590
	dw lbacf,lbad6,lbae4,lbae4
	dw lbad6,lbad6,lbaf2,#0000
.lb5a0
	dw lbb29,lbb29,lbb29,lbb29
	dw lbb29,lbb29,lbb29,lbb29
	dw lbbf8,lbbf8,lbc0c,#0000
.lb5b8
	dw lbb45,lbbb5,lbbb4,lbbc2
	dw #0000
.lb5c2
	dw lbb8e,lbbf0,#0000
.lb5c8
	dw lbca0,lbca4,lbc27,lbc27
	dw lbc27,lbc27,lbc3a,lbc3a
	dw lbc27,lbc27,lbc27,lbc27
	dw lbc3a,lbc3a,#0000
.lb5e6
	dw lbccb,lbc4d,lbc4d,lbc63
	dw lbc4d,lbc4d,lbc63,#0000
.lb5f6
	dw lbcc9,lbc80,lbc80,lbc6e
	dw lbc80,lbc80,lbc6e,#0000
.lb60a equ $ + 4
.lb608 equ $ + 2
.lb606
	dw lbcf9,lbd18,lbd47

	db #00,#01,#04,#07,#09
.lb611
	db #19,#80,#00,#03,#87,#00,#04,#87
	db #00,#83,#00,#00,#00,#00,#00,#00
	db #00,#00,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#8c,#00,#8c
.lb62d
	db #0d,#15,#1c,#1f,#24,#28,#33,#37
	db #3b,#43,#49,#5a,#5f,#0d,#0c,#1b
	db #2a,#39,#38,#37,#36,#f5,#0a,#0c
	db #0a,#09,#07,#05,#03,#f0,#0a,#07
	db #05,#f0,#1b,#1c,#1b,#2a,#39,#f8
	db #0c,#08,#03,#11,#f0,#0d,#0e,#0c
	db #0b,#0a,#09,#18,#07,#06,#05,#04
	db #f3,#0d,#0c,#0b,#1a,#f9,#1a,#29
	db #18,#17,#f6,#0d,#0b,#1a,#19,#28
	db #37,#36,#35,#f4,#43,#44,#45,#46
	db #47,#48,#f9,#0c,#1d,#0c,#1b,#1a
	db #59,#59,#59,#59,#58,#57,#56,#55
	db #54,#53,#52,#51,#f0,#3d,#4c,#4b
	db #4a,#49,#f8,#7a,#79,#78,#f7
.lb69c
	db #08
	dw lb462,lb464,lb466
	db #05
	dw lb468,lb46a,lb46c
	db #06
	dw lb46e,lb48c,lb4a6
	db #03
	dw lb4bc,lb4ca,lb4d8
	db #04
	dw lb4f2,lb4fc,lb506
	db #03
	dw lb50a,lb52c,lb54e
	db #06
	dw lb570,lb580,lb590
	db #03
	dw lb5a0,lb5b8,lb5c2
	db #05
	dw lb5c8,lb5e6,lb5f6
	db #03
	dw lb606,lb608,lb60a

	db #ff,#80,#80,#85
.lb6e6
	db #e2,#80,#cb,#b0,#86,#02,#04,#e8
	db #1f,#28,#e5,#24,#e2,#26,#e8,#26
	db #2b,#26,#e2,#2b,#2b,#28,#24,#1f
.lb6fe
	db #e2,#80,#cb,#b0,#86,#02,#04,#e5
	db #18,#e2,#17,#e8,#15,#e5,#18,#e2
	db #1a,#e8,#13,#0c,#13,#ff,#0c
.lb715
	db #cb,#b0,#86,#01,#02,#e1,#2b,#e0
	db #28,#e2,#24,#28,#2b,#e5,#30,#e1
	db #34,#e0,#32,#e2,#30,#28,#2a,#e5
	db #2b,#e1,#2b,#e0,#2b,#e4,#34,#e0
	db #32,#e2,#30,#e5,#2f,#e1,#2d,#e0
	db #2f,#e2,#30,#30,#2b,#28,#24,#88
.lb745
	db #c0,#b0,#86,#03,#06,#8b,#00,#e0
	db #15,#8a,#15,#8b,#07,#eb,#1a,#15
	db #e5,#17,#8b,#00,#e0,#15,#8a,#15
	db #8b,#07,#eb,#1a,#88
.lb762
	db #e5,#80,#c0,#b0,#86,#01,#01,#e1
	db #2a,#e0,#2a,#2a,#e1,#2b,#e5,#2a
	db #e3,#28,#e2,#2d,#e3,#2a,#e0,#26
	db #e3,#28,#eb,#26
.lb77e
	db #c0,#b0,#86,#01,#01,#e0,#1c,#1c
	db #e3,#1e,#e1,#21,#e0,#21,#21,#e1
	db #23,#e5,#21,#e3,#21,#e2,#25,#e3
	db #23,#e0,#1f,#e3,#21,#eb
	db #1e
.lb79d
	db #89,#00
.lb79f
	db #c1,#b0,#86,#02,#04,#e0,#8b,#04
	db #e1,#0c,#8a,#e0,#0c,#e1,#8a,#0c
	db #8a,#e0,#0c,#e1,#8a,#0c,#8a,#e0
	db #0c,#e1,#8a,#0c,#8a,#e0,#0c,#85
.lb7bf
	db #89,#00,#e1,#0f,#e0,#0f,#0f,#0f
	db #0f,#0a,#0b,#0c,#0d,#0e,#0f,#e1
	db #11,#e0,#11,#11,#11,#11,#0c,#0e
	db #0f,#11,#13,#14,#e1,#16,#e0,#16
	db #e1,#16,#e0,#16,#e1,#16,#e0,#16
	db #e1,#16,#e0,#16,#e1,#16,#e0,#16
	db #e1,#16,#e0,#16,#e5
	db #16,#85
.lb7f6
	db #89,#00
.lb7f8
	db #86,#01,#02,#cc,#b2,#f7,#18,#18
	db #89,#f4,#b0,#e5,#27,#22,#29,#24
	db #e2,#27,#27,#27,#27,#26,#26,#e5
	db #26,#b5,#85
.lb813
	db #89,#00
.lb815
	db #86,#01,#01,#c0,#b0,#e1,#1f,#e0
	db #1f,#e1,#1f,#e0,#1f,#e1,#1f,#e0
	db #1f,#e1,#1f,#e0,#1f,#e1,#1f,#e0
	db #1f,#e1,#24,#e0,#24,#e1,#26,#e0
	db #26,#e1,#2b,#e0,#2b,#85
.lb83b
	db #89,#00,#e1,#2b,#e2,#2b,#e6,#29
	db #e1,#2c,#e2,#2c,#e6,#2b,#e1,#2b
	db #e0,#2b,#e1,#2b,#e0,#2b,#e1,#2b
	db #e0,#2b,#e1,#2b,#e0,#2b,#e1,#29
	db #e0,#29,#e1,#29,#e0,#29,#e1,#29
	db #cb,#e0,#22,#e0,#24,#26,#29
.lb86a
	db #c0,#e1,#30,#e2,#30,#e6,#2e,#e1
	db #32,#e2,#32,#e6,#30,#85
.lb878
	db #e1,#30,#e2,#30,#e6,#2e,#e1,#2c
	db #e0,#2b,#e8,#29,#85
.lb885
	db #e4,#38,#e6,#37,#e0,#37,#ea,#35
	db #89,#03,#85
.lb890
	db #89,#00,#c3,#8a,#e2,#14,#14,#8a
	db #0f,#0f,#8a,#16,#16,#8a,#11,#11
	db #8a,#14,#14,#8a,#0f,#0f,#8a,#16
	db #c4,#58,#58,#e1,#58,#e0,#58,#89
	db #03,#85
.lb8b2
	db #89,#00
.lb8b4
	db #86,#02,#04,#c5,#b0,#8b,#18,#e1
	db #10,#0b,#8a,#10,#8a,#0e,#8b,#04
	db #10,#0b,#07,#8a,#04,#8b,#18,#e1
	db #10,#0b,#8a,#10,#8a,#0e,#8b,#04
	db #10,#0b,#07,#8a,#04,#8b,#18,#e1
	db #10,#0b,#8a,#10,#8a,#0e,#8b,#04
	db #10,#12,#13,#8a,#17,#8b,#18,#10
	db #10,#8a,#17,#8a,#10,#8a,#10,#c4
	db #6c,#e0,#58,#e1,#58,#e0,#58,#89
	db #02,#85
.lb8fe
	db #89,#00
.lb900
	db #86,#01,#02,#c3,#b0,#e3,#1c,#28
	db #e1,#26,#e5,#28,#e3,#1c,#28,#e1
	db #26,#e5,#28,#e3,#1c,#28,#e1,#26
	db #e5,#28,#e1,#26,#25,#23,#21,#e7
	db #23,#89,#02,#85
.lb924
	db #89,#00
.lb926
	db #86,#01,#02,#b1,#cc,#e3,#1c,#e7
	db #1c,#e3,#1c,#1c,#e7,#1c,#e3,#1c
	db #1c,#e7,#1c,#e3,#1c,#82,#03,#06
	db #ef,#1c,#89,#02,#85
.lb943
	db #89,#e8
.lb945
	db #c3,#b0,#e7,#2f,#e3,#2d,#e7,#2f
	db #e3,#2d,#32,#31,#e7,#2f,#e3,#2d
	db #e7,#2f,#eb,#b0,#82,#0f,#01,#2d
	db #e7,#2f,#e3,#2d,#e7,#2f,#e3,#2d
	db #32,#31,#b5,#89,#00,#e7,#2f,#e3
	db #28,#e7,#2d,#e3,#26,#2b,#24,#85
.lb975
	db #c4,#e1,#6c,#58,#58,#58,#e1,#6c
	db #58,#58,#e0,#c2,#5e,#5e,#c4,#b0
	db #81,#e1,#6c,#58,#58,#58,#c3,#8a
	db #82,#1e,#01,#26,#8a,#82,#1e,#01
	db #26,#8a,#82,#1e,#01,#26,#e0,#c2
	db #5e,#5e,#85
.lb9a0
	db #c6,#b0,#e1,#86,#02,#02,#82,#2d
	db #01,#1f,#b4,#e3,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#e1
	db #10,#b0,#80,#80,#e0,#82,#2d,#01
	db #26,#82,#2d,#01,#26,#e1,#82,#2d
	db #01,#26,#80,#80,#82,#2d,#01,#26
	db #82,#2d,#01,#23,#85
.lb9d5
	db #c8,#b0,#86,#01,#02,#e3,#28,#e0
	db #28,#28,#e1,#28,#e0,#28,#28,#e1
	db #28,#28,#2b,#e3,#28,#e0,#28,#28
	db #e1,#28,#e0,#28,#28,#e1,#2b,#28
	db #2d,#e3,#28,#e0,#28,#28,#e1,#28
	db #e0,#28,#28,#e1,#28,#28,#2b,#c0
	db #e3,#18,#e1,#18,#18,#18,#1a,#e3
	db #1a,#85
.lba0f
	db #c2,#e0,#58,#58,#e1,#58,#85
.lba16
	db #b4,#e1,#10,#e3,#10,#10,#10,#0b
	db #10,#10,#10,#e1,#12,#13,#e3,#13
	db #13,#13,#13,#13,#13,#13,#e1,#13
	db #85
.lba2f
	db #c8,#e3,#28,#e0,#28,#28,#e1,#28
	db #e0,#28,#28,#e1,#28,#e0,#28,#28
	db #23,#23,#e3,#28,#e0,#28,#28,#e1
	db #28,#e0,#28,#28,#e1,#28,#28,#2a
	db #e3,#2b,#e0,#2b,#2b,#e1,#2b,#e0
	db #2b,#2b,#e1,#2b,#e0,#2b,#2b,#26
	db #26,#e3,#2b,#e0,#2b,#2b,#e1,#2b
	db #e0,#2b,#2b,#e1,#2b,#26,#2b,#85
.lba6f
	db #89,#00
.lba71
	db #86,#02,#04,#c3,#b0,#e3,#0c,#e1
	db #0c,#e3,#0c,#e1,#0c,#e3,#0c,#e1
	db #0c,#e3,#0c,#e1,#0c,#e3,#0c,#0c
	db #85
.lba8a
	db #89,#00
.lba8c
	db #b0,#86,#01,#03
.lba90
	db #c0,#e5,#24,#26,#27,#29,#e1,#2b
	db #2c,#2e,#30,#b3,#85
.lba9d
	db #81,#c3
.lba9f
	db #89,#00
.lbaa1
	db #b0,#e3,#18,#e1,#18,#e3,#18,#e1
	db #18,#e3,#18,#e1,#18,#e3,#18,#e1
	db #18,#e3,#1b
	db #18,#85
.lbab6
	db #89,#02,#85
.lbab9
	db #89,#03,#85
.lbabc
	db #ca,#b0,#86,#05,#05
.lbac1
	db #e1,#13,#e0,#13,#13,#e1,#13,#e0
	db #13,#13,#e1,#13,#13,#85
.lbacf
	db #ca,#b0,#86,#01,#01,#89,#18
.lbad6
	db #e1,#1a,#e0,#1a,#1a,#e1,#1a,#e0
	db #1a,#1a,#e1,#1a,#1a,#85
.lbae4
	db #e1,#18,#e0,#18,#18,#e1,#18,#e0
	db #18,#18,#e1,#18,#18,#85
.lbaf2
	db #e1,#18,#1a,#e0,#18,#17,#15,#13
	db #e5,#13
	db #88
.lbafd
	db #ca,#b0,#86,#01,#01
.lbb02
	db #e1,#2f,#e0,#2f,#2f,#e1,#2f,#e0
	db #2f,#2f,#e1,#30,#2d,#85
.lbb10
	db #e1,#2b,#e0,#2b,#2b,#e1,#2b,#e0
	db #2b,#2b,#e1,#2d,#2a,#85
.lbb1e
	db #e1,#2b,#2d,#e0,#2b,#2a,#28,#26
	db #e7,#26,#85
.lbb29
	db #c1,#b0,#86,#03,#03,#8b,#14,#e1
	db #0e,#8b,#07,#0e,#e0,#0e,#0e,#8a
	db #e1,#0e,#0e,#8b,#14,#0e,#0e,#e0
	db #8a,#0e,#0e,#85
.lbb45
	db #b0,#86,#02,#02,#c4,#e1,#63,#ca
	db #e3,#26,#e5,#29,#c4,#e1,#58,#58
	db #63,#ca,#e3,#26,#e5,#2b,#c4,#e1
	db #58,#58,#63,#ca,#e3,#26,#e7,#2d
	db #e5,#2c,#2b,#2a,#c4,#e1,#63,#ca
	db #e3,#26,#e5,#29,#c4,#e1,#58,#58
	db #63,#ca,#e3,#26,#e5,#2b,#c4,#e1
	db #58,#58,#63,#ca,#e3,#26,#eb,#2d
	db #e1,#1d,#24,#29,#1f,#26,#e3,#2b
	db #85
.lbb8e
	db #b1,#ca,#86,#01,#02,#ef,#1a,#e1
	db #1a,#ed,#80,#ef,#1a,#e1,#1a,#ed
	db #80,#ef,#1a,#e1,#1a,#ed,#80,#ef
	db #1a,#e1,#1a,#b0,#e1,#11,#18,#1d
	db #13,#1a,#e3,#1f,#ff,#1c
.lbbb4
	db #b5
.lbbb5
	db #e3,#28,#e5,#28,#e3,#28,#e5,#28
	db #e3,#28,#29,#2b,#85
.lbbc2
	db #b0,#e3,#28,#e7,#28,#e3,#28,#29
	db #e7,#29,#e3,#29,#2b,#e7,#2b,#e3
	db #2b,#e3,#2b,#c0,#e1,#82,#2d,#01
	db #26,#82,#2d,#01,#26,#82,#2d,#01
	db #26,#82,#2d,#01,#23,#82,#2d,#01
	db #21,#82,#2d,#01,#1f,#85
.lbbf0
	db #b0,#ef,#cc,#09,#0a,#ff,#0c,#85
.lbbf8
	db #c3,#8b,#14,#e3,#15,#e5,#15,#8a
	db #e3,#15,#e5,#15,#e3,#15,#8b,#07
	db #16,#8a,#18,#85
.lbc0c
	db #8b,#14,#e3,#15,#e7,#15,#8a,#e3
	db #15,#8a,#16,#e7,#16,#8a,#e3,#16
	db #8a,#18,#e7,#18,#8a,#e3,#18,#e7
	db #18,#80,#85
.lbc27
	db #c5,#8b,#18,#e2,#15,#8a,#15,#8a
	db #e3,#15,#c4,#e1,#6c,#e0,#5b,#5b
	db #e1,#5b,#85
.lbc3a
	db #8b,#18,#c5,#e2,#13,#8a,#13,#8a
	db #e3,#13,#c4,#e1,#6c,#e0,#5b,#5b
	db #e1,#5b,#85
.lbc4d
	db #ca,#b0,#86,#01,#02,#e3,#21,#e1
	db #24,#e3,#28,#e1,#26,#28,#28,#e3
	db #2b,#e1,#2a,#e9,#28,#85
.lbc63
	db #e2,#1f,#23,#e9,#26,#e2,#26,#29
	db #e9,#2b,#85
.lbc6e
	db #ca,#e2,#1a,#1f,#e1,#1a,#e3,#1f
	db #23,#e2,#23,#26,#e1,#23,#e3,#26
	db #23,#85
.lbc80
	db #cc,#b0,#86,#03,#03,#e3,#21,#e1
	db #24,#e3,#28,#e1,#26,#28,#28,#86
	db #01,#01,#c7,#e3,#2d,#e1,#30,#e0
	db #32,#e2,#34,#e1,#33,#32,#30,#85
.lbca0
	db #b0,#86,#02,#04
.lbca4
	db #c5,#e1,#10,#10,#c4,#e0,#5b,#5b
	db #e1,#5b,#c5,#11,#11,#c4,#e0,#5b
	db #5b,#e1,#5b,#c5,#e1,#10,#10,#c4
	db #e0,#5b,#5b,#e1,#5b,#6c,#6c,#e0
	db #5b,#5b,#e1,#5b,#85
.lbcc9
	db #89,#fb
.lbccb
	db #c8,#b0,#86,#01,#01,#e1,#34,#34
	db #80,#34,#35,#35,#80,#35,#34,#34
	db #80,#34,#37,#36,#e0,#35,#e2,#34
	db #e1,#34,#34,#80,#34,#35,#35,#80
	db #35,#34,#34,#80,#34,#37,#36,#e0
	db #37,#e2,#39,#89,#00,#85
.lbcf9
	db #ca,#86,#02,#04,#e5,#11,#11,#eb
	db #11,#e5,#16,#16,#e1,#15,#e9,#15
	db #e5,#13,#13,#11,#16,#18,#18,#e3
	db #11,#e0,#11,#11,#e5,#11,#88
.lbd18
	db #ca,#86,#01,#02,#e5,#24,#29,#e8
	db #30,#e2,#30,#e3,#32,#e1,#30,#e3
	db #32,#e1,#34,#35,#e7,#30,#e1,#24
	db #e3,#26,#e1,#24,#e3,#26,#e1,#28
	db #e1,#29,#e7,#2d,#e1,#2e,#e1,#2d
	db #e7,#2d,#e1,#2b,#eb,#29,#88
.lbd47
	db #ca,#86,#01,#02,#e5,#1d,#1d,#e8
	db #29,#e2,#2d,#e3,#2e,#e1,#2e,#e3
	db #2e,#e1,#2e,#2d,#e7,#29,#e1,#21
	db #e3,#22,#e1,#21,#e3,#22,#e1,#22
	db #e1,#21,#e7,#24,#e1,#29,#e1,#24
	db #e7,#24,#e1,#22,#eb,#21,#88
.lbd76
	db #00,#00,#1d,#00,#00,#00,#00,#00
	db #00,#00,#00,#ff,#1d,#00,#03,#3c
	db #00,#0e,#00,#00,#1f,#00,#00,#00
	db #00,#00,#00,#00,#00,#ff,#1f,#00
	db #03,#3c,#00,#0e,#02,#00,#19,#00
	db #06,#02,#55,#00,#00,#01,#00,#ff
	db #0f,#00,#09,#8a,#02,#08,#c5,#ff
	db #00,#00,#14,#01,#ab,#fe,#ff,#02
	db #00,#ff,#00,#00,#1e,#ac,#0d,#09
	db #01,#00,#0f,#00,#0a,#02,#55,#00
	db #00,#01,#00,#ff,#0d,#00,#1e,#a0
	db #0f,#09,#00,#00,#de,#00,#03,#01
	db #55,#02,#00,#fe,#7f,#00,#6f,#00
	db #04,#5e,#01,#08,#23,#00,#1b,#01
	db #00,#01,#55,#02,#00,#fe,#7f,#00
	db #1b,#01,#08,#4c,#04,#09,#ff,#ff
	db #14,#00,#0a,#02,#55,#00,#00,#ff
	db #ff,#ff,#0f,#00,#13,#d0,#07,#09
	db #19,#00,#b1,#01,#00,#01,#55,#0a
	db #00,#f6,#7f,#00,#b1,#01,#08,#4c
	db #04,#09,#00,#00,#50,#00,#03,#01
	db #55,#ff,#7f,#01,#00,#00,#6e,#00
	db #0f,#80,#0c,#09,#00,#00,#50,#00
	db #00,#01,#33,#fe,#7f,#02,#00,#00
	db #50,#00,#1e,#a0,#0f,#09,#00,#00
	db #5a,#00,#00,#03,#00,#1e,#00,#1e
	db #00,#00,#5a,#00,#0c,#a0,#0f,#09
	db #08,#00,#00,#00,#00,#02,#a5,#f9
	db #ff,#08,#00,#ff,#00,#00,#28,#94
	db #11,#09,#06,#00,#14,#00,#00,#02
	db #a5,#f9,#ff,#08,#00,#ff,#14,#00
	db #0c,#c4,#09,#09,#00,#00,#18,#00
	db #0f,#01,#55,#00,#00,#01,#00,#ff
	db #18,#00,#2d,#94,#11,#09,#00,#00
	db #0f,#00,#00,#00,#00,#00,#00,#00
	db #00,#ff,#0f,#00,#05,#f4,#01,#08
	db #02,#00,#c8,#00,#08,#02,#a5,#d3
	db #7f,#2d,#00,#00,#c8,#00,#40,#88
	db #13,#09,#00,#00,#0d,#00,#00,#01
	db #55,#02,#00,#fe,#ff,#ff,#0d,#00
	db #08,#fe,#01,#09,#00,#00,#0d,#00
	db #00,#01,#55,#02,#00,#fe,#ff,#ff
	db #0d,#00,#08,#fe,#01,#09,#21,#00
	db #0b,#01,#00,#00,#00,#00,#00,#00
	db #00,#55,#0b,#01,#0c,#e6,#05,#08
	db #00
;
; db "This music module is the copyright of Jas.C.Brooke. (Prepare to Die!)"
;
.music_info
	db "Combat School (1987)(Ocean Software)(Jason C. Brooke)",0
	db "This music module is the copyright of Jas.C.Brooke. (Prepare to Die!)",0

	read "music_end.asm"
