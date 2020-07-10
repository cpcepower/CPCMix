; Music of Lawn Tennis (1987)(Mastertronic)(Jason C. Brooke)()
; Ripped by Megachur the 03/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LAWNTENN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #b6b8
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

;
.play_music	; b6b8
;
	sub a
.lb6ba equ $ + 1
.music_end equ $ + 1
	cp #00
	push ix
	jr z,lb6f9
	ld b,a
	ld ix,lba1c
	ld hl,lb841
	dec (hl)
	jr nz,lb6d8
.lb6cb equ $ + 1
	ld (hl),#01
	call lb8c7
	call lb8c5
	call lb8c5
	ld lx,lba1c	;#1c
.lb6d9 equ $ + 1
.lb6d8
	ld a,#00
	ld (lba6a),a
	ld bc,lba6c
	call lb94d
	ld (lba64),hl
	ld bc,lba6d
	call lb94b
	ld (lba66),hl
	ld bc,lba6e
	call lb94b
	ld (lba68),hl
	sub a
.lb6fa equ $ + 1
.lb6f9
	cp #00
	jr z,lb75e
	ld hl,lb83e
	dec (hl)
	jr nz,lb70b
	ld (lba6e),a
	ld (lb6fa),a
	jr lb75e
.lb70b
	ld de,(lb83c)
	ld a,(lb835)
	or a
	jr z,lb72b
	ld hl,lb840
	dec (hl)
	jr nz,lb72b
	ld (hl),a
	ld hl,lb836
	rrc (hl)
	ld hl,(lb837)
	jr c,lb729
	ld hl,(lb839)
.lb729
	add hl,de
	ex de,hl
.lb72b
	ld hl,(lb830)
	add hl,de
	ld a,(lb834)
	or a
	jr z,lb742
	ex de,hl
	ld hl,lb83f
	dec (hl)
	jr nz,lb741
	ld (hl),a
	ld de,(lb832)
.lb741
	ex de,hl
.lb742
	ld (lb83c),hl
	ld a,#10
	ld (lba6e),a
	ld (lba68),hl
	ld a,l
	ld hl,lb83b
	rrc (hl)
	ld hl,lba1e
	res 0,(hl)
	jr nc,lb75e
	inc (hl)
	ld (lba6a),a
.lb75e
	ld hl,lba1e
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
	ld (lba6b),a
	sub a
.lb778 equ $ + 1
	cp #00
	ld hl,lba70
	ld c,a
	ld de,#0cf6
	jr z,lb787
	inc d
	inc l
	ld (lb778),a
.lb787
	ld a,#c0
.lb789
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
	jp p,lb789
	pop ix
	ret
;
.init_music	; b7a3 0->c ; 2->12 sound effect
;
	push bc
	push de
	push hl
	push ix
	ld hl,lbc41
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
	ld (lb6cb),a
	ld ix,lba1c
	sub a
	ld (lb6ba),a
	inc a
.lb7c2
	ld (lb841),a
	inc a
	ld c,a
.lb7c7
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
	jp p,lb7c7
	ld (lb6ba),a
	pop ix
	pop hl
	pop de
	pop bc
	ret
; sound effects ?
	push bc
	push de
	push hl
	add a
	ld c,a
	add a
	add a
	ld b,#00
	ld hl,lbfdc
	add hl,bc
	ld c,a
	add hl,bc
	add hl,bc
	ld de,lb830
	ld c,#0f
	sub a
	ld (lb6fa),a
	ldir
	ld c,#03
	ld de,lba6f
	ldir
	ld hl,(lb834)
	ld (lb83f),hl
	ld a,#01
	ld (lb6fa),a
	ld (lb778),a
	pop hl
	pop de
	pop bc
	ret
.lb837 equ $ + 7
.lb836 equ $ + 6
.lb835 equ $ + 5
.lb834 equ $ + 4
.lb832 equ $ + 2
.lb830
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb83f equ $ + 7
.lb83e equ $ + 6
.lb83c equ $ + 4
.lb83b equ $ + 3
.lb839 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb841 equ $ + 1
.lb840
	db #00,#00,#d4,#6e,#3f,#62,#65,#19
	db #4b,#76,#04,#31,#6f,#69

	ld hl,lb6f9
	ex (sp),hl
;
.stop_music
;
	sub a
	ld (lb6ba),a
	ld (lba6c),a
	ld (lba6d),a
	ld (lba6e),a
	ret

	ld c,(ix+#0f)
	ld l,(ix+#09)
	ld h,(ix+#0c)
	add hl,bc
	ld a,(hl)
	inc l
	or (hl)
	jr nz,lb872
	sbc hl,bc
	ld c,b
.lb872
	ld d,(hl)
	dec l
	ld e,(hl)
	inc c
	inc c
	ld (ix+#0f),c
	jr lb8da
	ld a,(de)
	inc de
	ld (ix+#42),a
	jr lb8da
	ld a,(de)
	inc de
	ld (ix+#1e),a
	set 3,(ix+#45)
	ld a,(de)
	inc de
	ld (ix+#21),a
	jr lb8da
	ld a,(de)
	inc de
	ld (ix+#3c),a
	ld a,(de)
	inc de
	ld (ix+#3f),a
	add a
	ld (ix+#39),a
	set 4,(ix+#45)
	jr lb8da
	set 7,(ix+#45)
	set 6,(ix+#45)
	jr lb8da
	ld (ix+#45),b
	jr lb8da
	ld a,(de)
	inc de
	ld (lba06),a
	set 2,(ix+#45)
	set 1,(ix+#45)
	jr lb8da
.lb8c5
	inc lx
.lb8c7
	dec (ix+#24)
	ld a,(ix+#45)
	jr nz,lb90a
	and #30
	ld (ix+#45),a
	ld e,(ix+#03)
	ld d,(ix+#06)
.lb8da
	ld a,(de)
	inc de
	cp #b0
	jr c,lb8fe
	add #20
	jr c,lb8f3
	add #20
	jr c,lb8f9
	ld c,a
	ld hl,lbad6
	add hl,bc
	ld c,(hl)
	ld (ix+#18),c
	jr lb8da
.lb8f3
	inc a
	ld (ix+#27),a
	jr lb8da
.lb8f9
	ld (ix+#36),a
	jr lb8da
.lb8fe
	or a
	jp p,lb91c
	ld c,a
	ld hl,lb7c2
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb90a
	add a
	ret p
	sbc a
	or #01
	add (ix+#2a)
	ld (ix+#2a),a
	ret
	ld (ix+#33),#f0
	jr lb93e
.lb91c
	ld (ix+#2a),a
	ld (ix+#12),b
	ld (ix+#15),b
	ld (ix+#33),b
	ld (ix+#30),b
	ld c,(ix+#18)
	ld (ix+#1b),c
	ld c,b
	sub #54
	jr c,lb93b
	ld c,#02
	ld (lb6d9),a
.lb93b
	ld (ix+#00),c
.lb93e
	ld a,(ix+#27)
	ld (ix+#24),a
	ld (ix+#06),d
	ld (ix+#03),e
	ret
.lb94b
	inc lx
.lb94d
	ld d,#00
	ld a,(ix+#33)
	cp #f0
	jr nc,lb971
	sub #10
	ld (ix+#33),a
	jr nc,lb971
	ld hl,lbbee
	ld e,(ix+#36)
	add hl,de
	ld a,(hl)
	add (ix+#30)
	ld e,a
	add hl,de
	ld a,(hl)
	inc (ix+#30)
	ld (ix+#33),a
.lb971
	or #f0
	inc a
	add #0f
	jr c,lb979
	sub a
.lb979
	ld (bc),a
	ld hl,lbbcc
	ld e,(ix+#1b)
	inc e
	add hl,de
	ld a,(hl)
	or a
	jp p,lb98c
	ld e,(ix+#18)
	and #7f
.lb98c
	ld (ix+#1b),e
	add (ix+#2a)
	add (ix+#42)
	add a
	ld hl,lba72
	ld e,a
	add hl,de
	ld e,(hl)
	inc l
	ld d,(hl)
	ld c,(ix+#45)
	bit 4,c
	jr z,lb9cb
	ld b,(ix+#39)
	ld a,(ix+#3f)
	bit 5,c
	jr nz,lb9b8
	sub (ix+#3c)
	jr nz,lb9c0
	set 5,c
	jr lb9c0
.lb9b8
	add (ix+#3c)
	cp b
	jr nz,lb9c0
	res 5,c
.lb9c0
	ld (ix+#3f),a
	srl b
	sub b
	ld l,a
	sbc a
	ld h,a
	add hl,de
	ex de,hl
.lb9cb
	ld a,c
	xor #01
	ld (ix+#45),a
	bit 3,c
	jr z,lb9f6
	ld b,(ix+#21)
	djnz lb9f3
	ld c,(ix+#1e)
	bit 7,c
	jr z,lb9e2
	dec b
.lb9e2
	ld l,(ix+#12)
	ld h,(ix+#15)
	add hl,bc
	ld (ix+#12),l
	ld (ix+#15),h
	add hl,de
	ex de,hl
	jr lb9f6
.lb9f3
	ld (ix+#21),b
.lb9f6
	cpl
	and #03
	ld a,(ix+#00)
	ld c,a
	res 0,c
	rra
	jr nz,lba09
	ld hl,lba6a
.lba06 equ $ + 1
	ld (hl),#10
	or #01
.lba09
	or c
	bit 2,(ix+#45)
	jr z,lba14
	res 1,(ix+#45)
.lba14
	ld (ix+#00),a
	ex de,hl
	ret
.lba1e equ $ + 5
.lba1c equ $ + 3
	db #00,#00,#00,#00,#00,#00
	db #54,#68,#69,#73,#20,#6d,#75,#73
	db #69,#63,#20,#6d,#6f,#64,#75,#6c
	db #65,#20,#69,#73,#20,#74,#68,#65
	db #20,#63,#6f,#70,#79,#72,#69,#67
	db #68,#74,#20,#6f,#66,#20,#4a,#61
	db #73,#2e,#43,#2e,#42,#72,#6f,#6f
	db #6b,#65,#2e,#20,#28,#50,#72,#65
	db #70,#61,#72,#65,#20,#74,#6f,#20
	db #44,#69,#65,#21,#29
.lba6b equ $ + 7
.lba6a equ $ + 6
.lba68 equ $ + 4
.lba66 equ $ + 2
.lba64
	db #00,#00,#00,#00,#00,#00,#00,#00
.lba70 equ $ + 4
.lba6f equ $ + 3
.lba6e equ $ + 2
.lba6d equ $ + 1
.lba6c
	db #00,#00,#00,#00,#00,#00
.lba72
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
.lbad6 equ $ + 4
	dw #0077,#0070,#006b,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0042,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
.lbb1a
	dw lbca0,lbcb0,lbcc3,lbcc3
	dw lbcb0,lbcb0,lbcd2,lbcd2
	dw lbcfc,lbca2,lbcb0,lbcc3
	dw lbcc3,lbcb0,lbcb0,lbcc3
	dw lbcc3,lbcd2,lbcd2,lbcfc
	dw #0000
.lbb44
	dw lbd04,lbd14,lbd4b,lbd4d
	dw lbd14,lbd14,lbd7e,lbd7e
	dw lbdd1,lbd06,lbd14,lbd4b
	dw lbd4d,lbd14,lbd14,lbd4b
	dw lbd4d,lbd7e,lbd7e,lbdd1
	dw #0000
.lbb6e
	dw lbdd7,lbddc,lbe5c,lbe5c
	dw lbe5c,lbe7d,lbddc,lbddc
	dw lbed2,lbed2,lbef8,lbdd9
	dw lbddc,lbe5c,lbe5c,lbe5c
	dw lbe7d,lbddc,lbddc,lbea1
	dw lbea1,lbea1,lbea1,lbed2
	dw lbed2,lbef8,#0000
.lbba8 equ $ + 4
.lbba6 equ $ + 2
.lbba4
	dw lbefd,lbf0c,lbf1b
.lbbb0 equ $ + 6
.lbbae equ $ + 4
.lbbac equ $ + 2
.lbbaa
	dw lbf30,lbf25,lbf42,lbc9c
.lbbb8 equ $ + 6
.lbbb6 equ $ + 4
.lbbb4 equ $ + 2
.lbbb2
	dw lbf54,lbf64,lbfcc,lbf76
.lbbc0 equ $ + 6
.lbbbe equ $ + 4
.lbbbc equ $ + 2
.lbbba
	dw lbf82,lbf8e,lbfbb,lbf97
.lbbc4 equ $ + 2
.lbbc2
	dw lbfa0,lbfae
.lbbcc equ $ + 6
	db #00,#01,#06,#15,#18,#1b,#1e,#80
	db #00,#0c,#00,#0c,#80,#18,#0c,#00
	db #18,#0c,#00,#18,#0c,#00,#18,#0c
	db #00,#18,#0c,#80,#00,#04,#87,#00
	db #03,#87,#04,#07,#8c,#07,#0c,#90
.lbbee
	db #07,#15,#25,#2e,#36,#41,#45,#1c
	db #2d,#2c,#2b,#2a,#29,#28,#27,#26
	db #25,#24,#23,#22,#21,#f0,#1c,#1d
	db #9e,#7d,#6c,#7b,#6a,#7b,#6a,#7b
	db #6a,#7b,#6a,#7b,#6a,#7b,#fa,#2d
	db #2c,#2b,#2a,#29,#28,#27,#26,#25
	db #f4,#1d,#2c,#1b,#2a,#19,#28,#17
	db #26,#f5,#2e,#1b,#1c,#1b,#1a,#29
	db #1a,#1b,#1a,#29,#38,#f7,#2e,#2d
	db #2c,#2b,#fa,#0c,#0b,#09,#07,#05
	db #03,#01,#f0
.lbc41
	db #05
	dw lbb1a,lbb44,lbb6e
	db #05
	dw lbba4,lbba6,lbba8
	db #05
	dw lbbaa,lbbac,lbbae
	db #05
	dw lbbb0,lbbb2,lbbb0
	db #05
	dw lbbb0,lbbb4,lbbb0
	db #05
	dw lbbb0,lbbb6,lbbb0
	db #05
	dw lbbb0,lbbb8,lbbb0
	db #05
	dw lbbb0,lbbba,lbbb0
	db #05
	dw lbbb0,lbbbc,lbbb0
	db #05
	dw lbbb0,lbbbe,lbbb0
	db #05
	dw lbbb0,lbbc0,lbbb0
	db #05
	dw lbbb0,lbbc2,lbbb0
	db #05
	dw lbbb0,lbbc4,lbbb0
.lbc9c
	db #ff,#80,#80,#85
.lbca2 equ $ + 2
.lbca0
	db #89,#fd,#e3,#80,#b0,#c0,#86
	db #01,#01,#10,#e1,#12,#e3,#15,#e1
	db #12
.lbcb0
	db #c1,#86,#01,#02,#ef,#15,#17,#15
	db #e7,#1c,#17,#ef,#15,#17,#19,#e7
.lbcc3 equ $ + 3
	db #1a,#1c,#85,#ef,#15,#17,#15,#e7
	db #1a,#1c,#ef,#15,#17,#15,#e7,#1a
.lbcd2 equ $ + 2
	db #1c,#85,#c2,#e7,#15,#e3,#15,#15
	db #e7,#17,#e3,#17,#17,#e7,#15,#e3
	db #15,#15,#e7,#1c,#e3,#1c,#1c,#e7
	db #15,#e3,#15,#15,#e7,#17,#e3,#17
	db #17,#e7,#19,#e3,#19,#19,#e7,#1a
.lbcfc equ $ + 4
	db #e3,#1c,#1c,#85,#e3,#10,#10,#10
.lbd06 equ $ + 6
.lbd04 equ $ + 4
	db #10,#89,#00,#85,#89,#fd,#e3,#80
	db #b0,#c0,#86,#01,#01,#1c,#e1,#1e
.lbd14 equ $ + 4
	db #e3,#21,#e1,#1e,#c2,#e3,#25,#25
	db #e1,#26,#e3,#28,#e5,#26,#e3,#25
	db #23,#26,#25,#23,#21,#e1,#25,#e3
	db #23,#e1,#23,#e3,#20,#1e,#1c,#e3
	db #25,#25,#e1,#26,#e3,#28,#e5,#2a
	db #e3,#28,#26,#2a,#28,#28,#e1,#2a
	db #e3,#2c,#2d,#e1,#2d,#e3,#2a,#28
.lbd4d equ $ + 5
.lbd4b equ $ + 3
	db #26,#b1,#85,#b0,#c1,#e1,#25,#26
	db #25,#e5,#26,#e3,#25,#ef,#26,#e3
	db #25,#e1,#23,#e3,#21,#e1,#23,#e3
	db #25,#e1,#26,#28,#26,#e5,#25,#e3
	db #23,#e1,#25,#26,#25,#e5,#26,#e3
	db #25,#ef,#26,#28,#e1,#2a,#2c,#2d
.lbd7e equ $ + 6
	db #e5,#28,#e3,#26,#c4,#85,#c3,#b3
	db #e3,#21,#21,#e1,#21,#e3,#21,#e1
	db #21,#b4,#e3,#23,#23,#e1,#23,#e3
	db #23,#e1,#23,#b3,#e3,#21,#21,#e1
	db #21,#e3,#21,#e1,#21,#b5,#e3,#1c
	db #1c,#e1,#1c,#e3,#1c,#e1,#1c,#b3
	db #e3,#21,#21,#e1,#21,#e3,#21,#e1
	db #21,#b4,#e3,#23,#23,#e1,#23,#e3
	db #23,#e1,#23,#b3,#e3,#21,#21,#e1
	db #21,#e3,#21,#e1,#21,#b6,#e3,#1a
	db #1a,#b5,#e1,#1c,#e3,#1c,#e1,#1c
.lbdd7 equ $ + 7
.lbdd1 equ $ + 1
	db #85,#b3,#ef,#1c,#89,#00,#85,#89
.lbddc equ $ + 4
.lbdd9 equ $ + 1
	db #fd,#ef,#80,#81,#e1,#c3,#b3,#8b
	db #0a,#15,#21,#2d,#8a,#21,#8a,#15
	db #21,#8b,#00,#2d,#8a,#21,#b4,#8b
	db #0a,#17,#23,#2f,#8a,#23,#8a,#17
	db #23,#8b,#00,#2f,#8a,#23,#b3,#8b
	db #0a,#15,#21,#2d,#8a,#21,#8a,#15
	db #21,#8b,#00,#2d,#8a,#21,#8a,#10
	db #1c,#8b,#0a,#28,#1c,#8a,#10,#8b
	db #00,#1c,#28,#8a,#1c,#8b,#0a,#15
	db #21,#2d,#8a,#21,#8a,#15,#21,#8b
	db #00,#2d,#8a,#21,#b4,#8b,#0a,#17
	db #23,#2f,#8a,#23,#8a,#17,#23,#8b
	db #00,#2f,#8a,#23,#b3,#8b,#0a,#15
	db #21,#2d,#8a,#21,#8a,#15,#21,#8b
	db #00,#2d,#8a,#21,#8a,#0e,#1a,#8b
	db #0a,#26,#1a,#8a,#10,#8b,#00,#1c
.lbe5c equ $ + 4
	db #28,#8a,#1c,#85,#c0,#ef,#b3,#8b
	db #14,#e7,#21,#e3,#2d,#8a,#21,#b4
	db #8a,#e7,#23,#e3,#2f,#23,#b3,#8a
	db #e7,#21,#e3,#2d,#8a,#21,#8a,#e7
.lbe7d equ $ + 5
	db #1a,#e3,#28,#1c,#85,#c0,#ef,#b3
	db #8b,#1e,#e7,#21,#e3,#2d,#8a,#21
	db #b4,#8a,#e7,#23,#e3,#2f,#23,#b3
	db #8a,#e7,#21,#e3,#2d,#8a,#21,#8a
	db #e7,#1a,#e1,#28,#c6,#59,#59,#59
.lbea1 equ $ + 1
	db #85,#c0,#e1,#b3,#21,#e3,#b0,#21
	db #e1,#1c,#e3,#b3,#21,#21,#e1,#b4
	db #23,#e3,#b0,#23,#e1,#1e,#e3,#b4
	db #23,#23,#e1,#b3,#21,#e3,#b0,#21
	db #e1,#1c,#e3,#b3,#21,#21,#e1,#26
	db #e3,#b0,#26,#e1,#21,#e3,#b3,#28
.lbed2 equ $ + 2
	db #28,#85,#c5,#86,#01,#01,#b0,#eb
	db #34,#e3,#2d,#ef,#2f,#e7,#34,#2d
	db #2d,#2f,#eb,#34,#e3,#39,#ef,#36
	db #e7,#34,#e3,#32,#31,#e1,#32,#31
	db #2f,#e3,#2c,#e1,#2a,#e3,#28,#85
.lbefd equ $ + 5
.lbef8
	db #ef,#28,#89,#00,#85,#e3,#80,#b0
	db #c3,#86,#02,#02,#10,#e1,#12,#e3
.lbf0c equ $ + 4
	db #15,#e1,#12,#15,#e3,#80,#b0,#c3
	db #86,#01,#02,#1c,#e1,#1e,#e3,#21
.lbf1b equ $ + 3
	db #e1,#1e,#21,#ef,#80,#e3,#b3,#86
.lbf25 equ $ + 5
	db #01,#02,#c3,#21,#88,#c0,#86,#01
	db #02,#b0,#e7,#34,#2d,#2d,#2f,#2d
.lbf30
	db #c3,#86,#01,#01,#b0,#e7,#15,#e3
	db #10,#10,#e7,#17,#e3,#10,#10,#e3
	db #15,#88
.lbf42
	db #c3,#86,#01,#02,#b3,#e5,#2d,#2d
	db #e3,#2d,#b4,#e5,#2f,#b3,#28,#e3
.lbf54 equ $ + 2
	db #28,#2d,#c3,#b0,#86,#10,#50,#e1
	db #2c,#e2,#30,#e1,#2e,#e3,#33,#e3
	db #80,#88
.lbf64
	db #c3,#b0,#86,#10,#50,#e1,#21,#e2
	db #23,#e1,#1f,#e1,#1e,#e1,#1c,#e3
	db #80,#88
.lbf76
	db #c3,#b0,#86,#10,#50,#e2,#22,#e1
	db #20,#20,#80,#88
.lbf82
	db #c3,#b0,#86,#10,#50,#e1,#21,#21
	db #1d,#20,#80,#88
.lbf8e
	db #c3,#b0,#86,#12,#5a,#e1,#21,#80
	db #88
.lbf97
	db #c3,#b0,#86,#10,#50,#e1,#1d,#80
	db #88
.lbfa0
	db #c3,#b0,#86,#10,#50,#e1,#1e,#82
	db #02,#01,#e2,#1f,#80,#88
.lbfae
	db #c3,#b0,#86,#10,#50,#e1,#1f,#82
	db #04,#01,#1f,#80,#88
.lbfbb
	db #c3,#b0,#86,#10,#50,#e2,#21,#e1
	db #20,#1e,#82,#04,#01,#e2,#1d,#80
.lbfcc equ $ + 1
	db #88,#c3,#b0,#86,#10,#40,#e1,#21
	db #23,#23,#80,#e2,#23,#e1,#20,#80
	db #88
.lbfdc
	db #00,#00
;
;.lba1f
; db "This music module is the copyright of Jas.C.Brooke. (Prepare to Die!)"
;
.music_info
	db "Lawn Tennis (1987)(Mastertronic)(Jason C. Brooke)",0
	db "This music module is the copyright of Jas.C.Brooke. (Prepare to Die!)",0

	read "music_end.asm"
