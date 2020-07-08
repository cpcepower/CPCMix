; Music of Critical Mass (1985)(Durell Software)()()
; Ripped by Megachur the 14/02/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CRITICAM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #b800

	read "music_header.asm"

	jr nz,lb808
	ld (lb82c),a
	jp #0475
;
.real_play_music
.lb808
;
	ld a,(lb82c)
	or a
	push ix
	call z,lb891
.lb812 equ $ + 1
	ld a,#00
	inc a
	cp #05
	jr nz,lb819
	xor a
.lb819
	ld (lb812),a
	call z,lbb9d
	push af
	call lbc79
	pop af
	call z,lb891
	pop ix
	defs 2,0	; modified by Megachur jp #0475
	ret
.lb82c
	db #00
.lb82d
	db #32,#2f,#3d,#c3,#59,#2b,#af,#32
	db #2f,#3d,#c3,#59,#2b,#af,#32,#2d
.lb841 equ $ + 4
	db #3d,#c3,#59,#2b,#cd,#55,#0b,#c2
.lb84c equ $ + 7
.lb84b equ $ + 6
	db #47,#2b,#0c,#0d,#ca,#47,#2b,#f5
.lb84e equ $ + 1
.lb84d
	db #cd,#0e,#0c,#c4,#24,#0c,#c2,#3a
	db #2b,#7e,#f6,#40,#77,#f1,#fe,#2c
	db #c0,#cd,#55,#0b,#c2,#c1,#04,#c3
	db #2c,#2b,#3e,#01,#32,#2d,#3d,#c9
	db #3e,#ff,#32,#2e,#3d,#c3,#59,#2b
	db #af,#32,#2e,#3d,#c3,#40,#0b,#3e
	db #01,#32,#2e,#3d,#c3,#59,#2b,#af
	db #c3,#7d,#2b,#3e,#ff,#c3,#7d,#2b
	db #3a,#8d,#40,#2f
;
.init_music
.lb891
;
	inc a
	ld (lb82c),a
	ld hl,lbdab
	ld de,lbdcc
	ld bc,lbdeb
	ld (lb8e8),hl
	ld (lb8ef),de
	ld (lb8f6),bc
	xor a
	ld (lb8c9),a
	ld de,lb84b
	ld hl,lb8e4
	call lb8ca
	ld de,lb84c
	ld hl,lb8eb
	call lb8ca
	ld de,lb84d
	ld hl,lb8f2
	call lb8ca
	ret
.lb8c9
	nop
.lb8ca
	ld b,#07
	push de
	pop ix
.lb8cf
	ld a,(hl)
	inc hl
	ld (de),a
	inc de
	inc de
	inc de
	djnz lb8cf
	ld (ix+#15),#01
	ld (ix+#1e),#01
	ld (ix+#21),#00
	ret
.lb8e4
	db #36,#00
	dw lb82d
.lb8eb equ $ + 3
.lb8e8
	db #00,#00,#00,#2d,#02
	dw #b837
.lb8f2 equ $ + 3
.lb8ef
	db #00,#00,#00,#1b,#04
	dw lb841
.lb8f6
	db #00,#00,#00
.lb8f9
	ld l,(ix+#09)
	ld h,(ix+#0c)
.lb8ff
	ld a,(hl)
	or a
	jp m,lb90b
	ld (ix+#12),a
	inc hl
	jp lba5f
.lb90b
	and #7f
	jr nz,lb936
	bit 1,(ix+#0f)
	jr nz,lb92b
	set 1,(ix+#0f)
	ld (ix+#09),l
	ld (ix+#0c),h
	ld a,(lb8c9)
	inc a
	ld (lb8c9),a
	cp #03
	pop bc
	ret z
	push bc
.lb92b
	ld (ix+#1b),#01
	ld (ix+#12),#01
	jp lbbd8
.lb936
	dec a
	jr nz,lb941
	inc hl
	ld a,(hl)
	ld (ix+#15),a
	inc hl
	jr lb8ff
.lb941
	dec a
	jr nz,lb94f
	inc hl
	ld a,(hl)
	inc hl
	add (ix+#15)
	ld (ix+#15),a
	jr lb8ff
.lb94f
	dec a
	jr nz,lb95a
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#18),a
	jr lb8ff
.lb95a
	dec a
	jr nz,lb969
	inc hl
	ld a,(hl)
	inc hl
	add (ix+#18)
	ld (ix+#18),a
	jp lb8ff
.lb969
	dec a
	jr nz,lb974
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp lb8ff
.lb974
	dec a
	jr nz,lb992
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push de
	ex de,hl
	ld l,(ix+#03)
	ld h,(ix+#06)
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (ix+#03),l
	ld (ix+#06),h
	pop hl
	jp lb8ff
.lb992
	dec a
	jr nz,lb9a9
	ld l,(ix+#03)
	ld h,(ix+#06)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld (ix+#03),l
	ld (ix+#06),h
	ex de,hl
	jp lb8ff
.lb9a9
	dec a
	jp nz,lba2e
	ld a,(ix+#0f)
	and #0f
	ld d,a
	inc hl
	ld a,(hl)
	inc hl
	or a
	jp m,lba15
	set 4,d
.lb9bc
	cp #10
	jr nc,lb9d6
	ld (ix+#0f),d
.lb9c3
	call lb9c9
	jp lb8ff
.lb9c9
	ld e,a
	ld a,(ix+#00)
	srl a
	add #08
	ld d,a
	ld a,e
	jp lbbef
.lb9d6
	cp #18
	set 6,d
	jr nc,lba0a
	and #07
	push hl
	ld hl,lba02
	add l
	ld l,a
	jr nc,lb9e7
	inc h
.lb9e7
	ld a,(hl)
	ld (ix+#2a),a
	set 7,d
	ld (ix+#0f),d
	pop hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ex de,hl
	ld d,#0b
	call lbc1e
	pop hl
	ld a,#10
	jp lb9c3
.lba02
	nop
	inc b
	ex af,af'
	ld a,(bc)
	inc c
	dec c
	ld c,#0b
.lba0a
	ld (ix+#0f),d
	and #07
	ld (ix+#2a),a
	jp lb8ff
.lba15
	push af
	push de
	ld a,(hl)
	ld d,#06
	call lbbef
	inc hl
	pop de
	pop af
	set 5,d
	bit 6,a
	jr z,lba28
	set 4,d
.lba28
	and #3f
	cp #10
	jr lb9bc
.lba2e
	dec a
	jr nz,lba49
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld b,(hl)
	ld a,(ix+#1e)
	or a
	jr nz,lba3e
	ld a,b
.lba3e
	dec a
	ld (ix+#1e),a
	inc hl
	jr z,lba46
	ex de,hl
.lba46
	jp lb8ff
.lba49
	inc hl
	ld a,(hl)
	inc hl
	cp #ff
	jr z,lba59
	ld (ix+#36),a
	set 3,(ix+#0f)
	jr lba46
.lba59
	res 3,(ix+#0f)
	jr lba46
.lba5f
	ld a,(hl)
	inc hl
	ld (ix+#09),l
	ld (ix+#0c),h
	res 2,(ix+#0f)
	ld c,a
	rra
	rra
	rra
	rra
	rra
	and #07
	ld e,a
	ld d,#00
	ld hl,lbda7
	add hl,de
	ld e,(hl)
	ld b,(ix+#18)
	xor a
.lba7f
	add e
	djnz lba7f
	ld (ix+#1b),a
	ld a,c
	and #1f
	jr nz,lba91
	set 2,(ix+#0f)
	jp lbbd8
.lba91
	add (ix+#15)
	ld (ix+#33),a
	bit 3,(ix+#0f)
	jr z,lbac0
	push af
	ld a,(ix+#36)
	add a
	ld hl,lbe39
	add l
	ld l,a
	jr nc,lbaaa
	inc h
.lbaaa
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	inc de
	ld (ix+#39),e
	ld (ix+#3c),d
	ld (ix+#3f),a
	ld (ix+#42),a
	ld (ix+#27),#00
	pop af
.lbac0
	call lbb20
	bit 5,(ix+#0f)
	jr z,lbad8
	ld a,(ix-#03)
	or #07
	ld e,a
	ld d,#07
	call lbc01
	and e
	call lbbef
.lbad8
	bit 4,(ix+#0f)
	jr z,lbaed
	ld a,(ix-#03)
	or #38
	ld e,a
	ld d,#07
	call lbc01
	and e
	call lbbef
.lbaed
	bit 6,(ix+#0f)
	jp z,lbbd8
	bit 7,(ix+#0f)
	jr z,lbb05
	ld a,(ix+#2a)
	ld d,#0d
	call lbbef
	jp lbbd8
.lbb05
	ld a,(ix+#2a)
	add a
	ld hl,lbe0a
	add l
	ld l,a
	jr nc,lbb11
	inc h
.lbb11
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
	ld (ix+#30),a
	inc hl
	call lbc49
	jp lbbd8
.lbb20
	push af
	ld a,#40
	bit 3,(ix+#0f)
	jr z,lbb38
	ld l,(ix+#39)
	ld h,(ix+#3c)
	call lbc59
	ld (ix+#39),l
	ld (ix+#3c),h
.lbb38
	ld e,a
	rra
	rra
	rra
	and #0f
	ld c,a
	pop af
	add a
	add c
	sub #08
	ld d,a
	push de
	ld b,#ff
	ld c,#18
.lbb4a
	inc b
	sub c
	jr nc,lbb4a
	add c
	add a
	ld e,a
	ld d,#00
	ld hl,lbcac
	add hl,de
	ld a,b
	ld (lbb88),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	pop hl
	ex de,hl
	push hl
	or a
	sbc hl,bc
	ex de,hl
	ld a,l
	ld b,h
	ld hl,#0000
	and #07
	jr z,lbb82
.lbb72
	add hl,de
	dec a
	jr nz,lbb72
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
.lbb82
	pop de
	ex de,hl
	or a
	sbc hl,de
.lbb88 equ $ + 1
	ld a,#00
	ld b,a
	or a
	jr z,lbb96
.lbb8d
	srl h
	rr l
	djnz lbb8d
	jr nc,lbb96
	inc hl
.lbb96
	ld d,(ix+#00)
	call lbc1e
	ret
.lbb9d
	ld ix,lb84e
	ld b,#03
.lbba3
	push bc
	ld a,(ix+#0f)
	and #c0
	cp #40
	jr nz,lbbb3
	dec (ix+#2d)
	call z,lbc40
.lbbb3
	dec (ix+#1b)
	jp nz,lbbd8
	ld a,(ix-#03)
	or #c0
	cpl
	ld d,#07
	ld e,a
	call lbc01
	or e
	call lbbef
	dec (ix+#12)
	ld l,(ix+#09)
	ld h,(ix+#0c)
	jp nz,lba5f
	jp lb8f9
.lbbd8
	pop bc
	inc ix
	djnz lbba3
	ld a,#01
	or a
	ret
.lbbe1
	ld b,#f4
	out (c),d
	ld b,#f6
	ld a,#c0
	out (c),a
	xor a
	out (c),a
	ret
.lbbef
	ld c,a
	call lbbe1
	ld b,#f4
	out (c),c
	ld b,#f6
	ld a,#80
	out (c),a
	xor a
	out (c),a
	ret
.lbc01
	call lbbe1
	ld a,#92
	inc b
	out (c),a
	dec b
	ld a,#40
	out (c),a
	ld b,#f4
	in c,(c)
	ld b,#f6
	xor a
	out (c),a
	inc b
	ld a,#82
	out (c),a
	ld a,c
	ret
.lbc1e
	call lbbe1
	ld b,#f4
	out (c),l
	ld b,#f6
	ld a,#80
	out (c),a
	xor a
	out (c),a
	inc d
	call lbbe1
	ld b,#f4
	out (c),h
	ld b,#f6
	ld a,#80
	out (c),a
	xor a
	out (c),a
	ret
.lbc40
	ld l,(ix+#21)
	ld h,(ix+#24)
	ld a,(ix+#30)
.lbc49
	ld (ix+#2d),a
	call lbc59
	ld (ix+#21),l
	ld (ix+#24),h
	call lb9c9
	ret
.lbc59
	ld a,(hl)
	inc hl
	or a
	ret p
	rra
	ld e,(hl)
	inc hl
	ld d,(hl)
	jr c,lbc66
	ex de,hl
	jr lbc59
.lbc66
	inc hl
	ld b,(hl)
	ld a,(ix+#27)
	or a
	jr nz,lbc6f
	ld a,b
.lbc6f
	dec a
	ld (ix+#27),a
	inc hl
	jr z,lbc59
	ex de,hl
	jr lbc59
.lbc79
	ld ix,lb84e
	ld b,#03
.lbc7f
	push bc
	bit 3,(ix+#0f)
	jr z,lbc99
	dec (ix+#3f)
	jr nz,lbc99
	ld a,(ix+#42)
	ld (ix+#3f),a
	ld a,(ix+#33)
	call lbb20
	jr lbc99
.lbc99
	pop bc
	inc ix
	djnz lbc7f
	ld bc,#0050
	call lbca5
	ret
.lbca5
	inc b
.lbca6
	dec c
	jr nz,lbca6
.lbca9
	djnz lbca6
	ret
.lbcac
	ld hl,#621a
	add hl,de
	xor d
	jr lbca9
	rla
	ld b,a
	rla
	sbc l
	ld d,#f9
	dec d
	ld e,b
	dec d
	cp l
	inc d
	ld h,#14
	sub e
	inc de
	inc b
	inc de
	ld a,d
	ld (de),a
	di
	ld de,#1170
	pop af
	djnz lbd43
.lbccd
	djnz lbccd
	rrca
	adc c
	rrca
	jr lbce3
	xor d
	ld c,#3f
	ld c,#d7
	dec c
	ld (hl),d
	dec c
	ld de,#3e0d
	ld bc,#0d32
	cp l
.lbce3
	call lbb9d
	ret z
	call lbc79
	ld a,(lbd0d)
	or a
	jr z,lbcf9
	scf
	jr c,lbce3
	xor a
	ld (lbd0d),a
	jr lbce3
.lbcf9
	or a
	jr nc,lbce3
	ret
	db #00,#00,#00,#00,#00,#1f,#0f,#07
	db #03,#03,#01,#01,#00,#00,#00,#80
.lbd0d
	db #01,#09,#33,#32,#30,#12,#2e,#0e
	db #2b,#2e,#30,#87,#08,#33,#32,#30
	db #12,#38,#18,#37,#75,#87,#09,#38
	db #37,#35,#13,#36,#16,#35,#33,#31
	db #87,#09,#34,#33,#31,#0f,#33,#13
	db #30,#2e,#2d,#87,#08,#33,#32,#30
.lbd43 equ $ + 6
	db #0e,#31,#11,#30,#6e,#87,#09,#29
	db #29,#29,#09,#2b,#0b,#27,#2b,#2c
	db #87,#09,#29,#29,#29,#09,#30,#10
	db #2e,#2e,#2d,#87,#09,#2e,#2e,#2e
	db #0e,#2c,#0c,#2c,#2c,#2c,#87,#08
	db #2a,#2a,#2a,#0a,#2a,#0a,#2a,#64
	db #87,#08,#29,#29,#27,#07,#28,#08
	db #27,#66,#87,#08,#44,#04,#48,#49
	db #0a,#0a,#2b,#2b,#87,#06,#44,#04
	db #48,#6e,#0e,#6b,#87,#08,#49,#09
	db #2d,#2d,#47,#07,#2b,#2b,#87,#07
	db #45,#05,#29,#29,#46,#06,#6b,#87
	db #08,#4e,#0e,#2d,#0d,#2c,#0c,#2b
.lbdab equ $ + 6
.lbda7 equ $ + 2
	db #64,#87,#01,#02,#03,#04,#81,#3a
	db #83,#09,#88,#1a,#8a,#00
	db #86,#0e,#bd,#86,#19,#bd,#86,#0e
	db #bd,#86,#19,#bd,#86,#23,#bd,#86
	db #2e,#bd,#86,#0e,#bd,#86,#39,#bd
.lbdcc equ $ + 1
	db #80,#81,#3a,#83,#09,#88,#19,#86
	db #43,#bd,#86,#4e,#bd,#86,#43,#bd
	db #86,#4e,#bd,#86,#59,#bd,#86,#64
	db #bd,#86,#43,#bd,#86,#6e,#bd,#80
.lbdeb
	db #81,#20,#83,#09,#88,#18,#86,#78
	db #bd,#86,#82,#bd,#86,#78,#bd,#86
	db #82,#bd,#86,#8a,#bd,#86,#94,#bd
.lbe0a equ $ + 7
	db #86,#78,#bd,#86,#9d,#bd,#80,#10
	db #be,#1e,#be,#2d,#be,#01,#0a,#0f
	db #0d,#0c,#0b,#0a,#0a,#0a,#0a,#09
	db #80,#1a,#be,#01,#05,#09,#0b,#0c
	db #0d,#0d,#0c,#0b,#09,#05,#00,#80
	db #29,#be,#02,#09,#0b,#0c,#0d,#0c
.lbe39 equ $ + 6
	db #0c,#0c,#0b,#80,#35,#be,#4d,#be
	db #94,#be,#9d,#be,#a1,#be,#ad,#be
	db #b1,#be,#b5,#be,#ca,#be,#df,#be
	db #e3,#be,#05,#40,#81,#4e,#be,#02
	db #40,#40,#40,#40,#40,#41,#41,#41
	db #41,#41,#40,#40,#40,#40,#40,#3f
	db #3f,#3f,#3f,#3f,#81,#53,#be,#01
	db #40,#40,#41,#41,#42,#44,#42,#41
	db #41,#40,#40,#3f,#3f,#3e,#3c,#3e
	db #3f,#3f,#81,#6b,#be,#02,#40,#42
	db #44,#46,#49,#46,#44,#42,#40,#3e
	db #3c,#3a,#37,#3a,#3c,#3e,#80,#81
	db #be,#06,#40,#81,#95,#be,#0c,#80
	db #53,#be,#02,#80,#53,#be,#03,#00
	db #08,#10,#18,#20,#28,#30,#38,#80
	db #53,#be,#02,#80,#a6,#be,#09,#80
	db #4e,#be,#01,#30,#31,#32,#33,#34
	db #35,#36,#37,#38,#39,#3a,#3b,#3c
	db #3d,#3e,#3f,#40,#80,#c6,#be,#02
	db #50,#4f,#4e,#4d,#4c,#4b,#4a,#49
	db #48,#47,#46,#45,#44,#43,#42,#41
	db #40,#80,#db,#be,#03,#80,#cb,#be
	db #05,#80,#cb,#be,#00
;
.play_music	; added by Megachur
;
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	jp real_play_music
;
.music_info
	db "Critical Mass (1985)(Durell Software)()",0
	db "",0

	read "music_end.asm"
