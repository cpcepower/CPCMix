; Music of Street Cred' Football (1989)(Players)(Andy Serven)()
; Ripped by Megachur the 01/09/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "STREETCF.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #b000
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

	jp lb11a	; init music
	jp lb1f1	; play music

.lb009 equ $ + 3
.lb008 equ $ + 2
.lb007 equ $ + 1
.music_end
.lb006
	db #01,#00,#00,#00,#00,#00,#00,#00
.lb013 equ $ + 5
.lb012 equ $ + 4
.lb011 equ $ + 3
.lb00f equ $ + 1
	db #00,#0f,#0f,#00,#0f,#ff,#ff,#00
.lb016
	ld hl,(lb013)
	ld a,h
	or l
	jp z,lb023
	dec hl
	ld (lb013),hl
	ret
.lb023
	ld a,(lb012)
	dec a
	ld (lb012),a
	ret nz
	ld a,#14
	ld (lb012),a
	ld a,(lb00f)
	dec a
	cp #ff
	jp z,lb1bd
	ld (lb00f),a
	ret
.lb03d
	ld a,h
	ld c,l
	cp #07
	jp nz,lb048
	res 7,c
	res 6,c
.lb048
	push af
	ld a,#c0
	ld b,#f6
	out (c),a
	ld b,#f4
	pop af
	out (c),a
	ld b,#f6
	ld a,#80
	out (c),a
	ld b,#f4
	out (c),c
	xor a
	ld b,#f6
	out (c),a
	ret
.lb06b equ $ + 7
.lb06a equ $ + 6
.lb065 equ $ + 1
.lb064
	db #00,#01,#00,#00,#00,#00,#00,#f8
.lb071 equ $ + 5
.lb06f equ $ + 3
.lb06e equ $ + 2
.lb06d equ $ + 1
.lb06c
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
	db #0c,#05,#00,#08,#01,#ff,#00,#00
	db #00,#01,#08,#00,#00,#04,#00,#00
	db #00,#00,#00,#f7,#14,#0a,#01,#01
	db #00,#08,#04
	dw lba05
	db #01
	dw lba05
.lb09a equ $ + 6
	db #00,#0a,#00,#02,#00,#fe,#00,#00
.lb09c
	db #00,#00,#00,#0f,#01,#01,#02,#01
	db #ff,#00,#00,#02,#03,#09,#00,#00
	db #01,#00,#00,#00,#00,#00,#ef,#ff
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb0c7 equ $ + 3
.lb0c5 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#0f,#0a
	db #01,#02,#02,#ff,#00,#00,#04,#05
	db #0a,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#df,#ff,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.lb0f5
	ld a,#0f
	ld (lb00f),a
	ld (lb012),a
	xor a
	ld (lb011),a
	ld a,(lb008)
	cp #ff
	jp nz,lb10b
	ld a,#00
.lb10b
	add a
	ld h,#00
	ld l,a
	ld de,lb9ef
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (lb013),bc
.lb11a
	call lb1c5
	ld a,(lb008)
	cp #ff
	jp nz,lb129
	inc a
;
.init_music     ; a = 0 -> 1
;
	ld (lb008),a
.lb129
	ld a,#01
	ld (lb071),a
	ld (lb09c),a
	ld (lb0c7),a
	xor a
	ld (lb007),a
	push ix
	ld ix,lb06f
	ld a,(lb008)
	add a
	ld b,a
	add a
	add b
	ld l,a
	ld h,#00
	ld de,lb9e3
	add hl,de
	ld (lb15a),hl
	inc hl
	inc hl
	ld (lb164),hl
	inc hl
	inc hl
	ld (lb16e),hl
.lb15a equ $ + 1
	ld hl,(lba05)
	call lb193
	ld ix,lb09a
.lb164 equ $ + 1
	ld hl,(lba0e)
	call lb193
	ld ix,lb0c5
.lb16e equ $ + 1
	ld hl,(lba13)
	call lb193
	ld a,#01
	ld (lb006),a
	ld h,#07
	ld l,#f8
	call lb03d
	ld a,(lb008)
	cp #01
	pop ix
	ret
.lb187
	halt
	call lb1f1                      ; test player
	ld a,(lb006)
	and a
	jp nz,lb187
	ret
.lb193
	ld (ix+#20),l
	ld (ix+#23),l
	ld (ix+#00),l
	ld (ix+#21),h
	ld (ix+#24),h
	ld (ix+#01),h
	call lb602
	ld (ix+#02),#01
	ld (ix+#0c),#00
	ld (ix+#05),#00
	ld (ix+#04),#00
	ld (ix+#17),#00
	ret
;
.stop_music
.lb1bd
;
	call lb1c5
	xor a
	ld (lb006),a
	ret
.lb1c5
	ld h,#07
	ld l,#ff
	call lb03d
	ld hl,lb064
	ld de,lb065
	ld bc,#000a
	ld (hl),#00
	ldir
	ld a,#f8
	ld (lb06b),a
.lb1de
	ld b,#0b
	ld h,#00
	ld de,lb064
.lb1e5
	ld a,(de)
	ld l,a
	push bc
	call lb03d
	pop bc
	inc h
	inc de
	djnz lb1e5
	ret
.lb1f1
	ld a,(#032d)
	and a
	jp z,lb218
	ld b,a
	xor a
	ld (#032d),a
	ld a,b
	cp #ff
	jp z,lb1bd
	cp #fe
	jp nz,lb211
	ld hl,#0001
	ld (lb013),hl
	jp lb218
.lb211
	dec a
	ld (lb008),a
	jp lb0f5
;
.play_music
.lb218
;
	call lb016
	ld a,(lb006)
	and a
	jr z,lb27a
	push ix
	ld ix,lb06f
	bit 7,(ix+#0c)
	call z,lb27b
	ld ix,lb09a
	bit 7,(ix+#0c)
	call z,lb27b
	ld ix,lb0c5
	bit 7,(ix+#0c)
	call z,lb27b
	ld a,(lb00f)
	cpl
	and #0f
	ld b,a
	ld a,(lb007)
	and a
	ld a,#10
	jp nz,lb25c
	ld a,(lb06c)
	sub b
	jp nc,lb25c
	xor a
.lb25c
	ld (lb06c),a
	ld a,(lb06d)
	sub b
	jp nc,lb267
	xor a
.lb267
	ld (lb06d),a
	ld a,(lb06e)
	sub b
	jp nc,lb272
	xor a
.lb272
	ld (lb06e),a
	call lb1de
	pop ix
.lb27a
	ret
.lb27b
	ld a,(ix+#02)
	dec (ix+#02)
	jp z,lb405
.lb284
	ld a,(ix+#0c)
	and #03
	jp z,lb344
	cp #01
	jp z,lb29e
	cp #02
	jp z,lb2de
	cp #03
	jp z,lb328
	jp lb375
.lb29e
	ld a,(ix+#0b)
	and a
	jr z,lb2aa
	dec (ix+#0b)
	jp lb375
.lb2aa
	ld a,(ix+#04)
	ld b,(ix+#08)
	add b
	ld (ix+#04),a
	ld b,(ix+#05)
	cp b
	jr z,lb2cb
	jr nc,lb2c5
	ld a,(ix+#07)
	ld (ix+#0b),a
	jp lb375
.lb2c5
	ld a,(ix+#05)
	ld (ix+#04),a
.lb2cb
	ld a,(ix+#0c)
	and #fc
	or #02
	ld (ix+#0c),a
	ld a,(ix+#09)
	ld (ix+#25),a
	jp lb375
.lb2de
	ld a,(ix+#25)
	and a
	jr z,lb2ea
	dec (ix+#25)
	jp lb375
.lb2ea
	ld a,(ix+#04)
	ld b,(ix+#0a)
	add b
	ld (ix+#04),a
	bit 7,a
	jp nz,lb309
	ld b,(ix+#26)
	cp b
	jr z,lb316
	jr c,lb310
	ld a,(ix+#09)
	ld (ix+#25),a
	jr lb375
.lb309
	ld (ix+#04),#00
	jp lb316
.lb310
	ld a,(ix+#26)
	ld (ix+#04),a
.lb316
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	ld a,(ix+#06)
	ld (ix+#27),a
	jr lb375
.lb328
	ld a,(ix+#27)
	and a
	jr z,lb333
	dec (ix+#27)
	jr lb375
.lb333
	ld a,(ix+#0c)
	and #fc
	ld (ix+#0c),a
	ld a,(ix+#2a)
	ld (ix+#29),a
	jp lb375
.lb344
	ld a,(ix+#29)
	and a
	jr z,lb34f
	dec (ix+#29)
	jr lb375
.lb34f
	ld a,(ix+#04)
	ld b,(ix+#28)
	add b
	ld (ix+#04),a
	bit 7,a
	jr nz,lb365
	ld a,(ix+#2a)
	ld (ix+#29),a
	jr lb375
.lb365
	ld (ix+#04),#00
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	jr lb375
.lb375
	ld a,(ix+#04)
	ld hl,lb064
	ld d,#00
	ld e,(ix+#0f)
	add hl,de
	ld (hl),a
	ld h,(ix+#14)
	ld l,(ix+#13)
	ld d,#00
	ld e,(ix+#10)
	add hl,de
	ld a,(ix+#03)
	push af
	ld a,(hl)
	add (ix+#03)
	ld (ix+#03),a
	call lb47a
	pop af
	ld (ix+#03),a
	inc (ix+#10)
	ld a,(ix+#12)
	xor (ix+#10)
	jr nz,lb3b1
	ld a,(ix+#11)
	ld (ix+#10),a
.lb3b1
	ld a,(ix+#1a)
	cp #ff
	jr z,lb401
	and a
	jr z,lb3c0
	dec (ix+#1a)
	jr nz,lb401
.lb3c0
	dec (ix+#1f)
	jr nz,lb3d3
	ld a,(ix+#1e)
	ld (ix+#1f),a
	ld a,(ix+#1c)
	xor #01
	ld (ix+#1c),a
.lb3d3
	bit 0,(ix+#1c)
	ld b,(ix+#1b)
	ld a,(ix+#1d)
	jr z,lb3e2
	add b
	jr lb3e3
.lb3e2
	sub b
.lb3e3
	ld (ix+#1d),a
	ld c,a
	ld b,#ff
	bit 7,a
	jr nz,lb3ef
	ld b,#00
.lb3ef
	ld hl,lb064
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	add hl,bc
	ex de,hl
	ld (hl),d
	dec hl
	ld (hl),e
.lb401
	ld a,(ix+#02)
	ret
.lb405
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (ix+#10),#00
.lb40f
	ld a,(hl)
	cp #60
	jr z,lb478
	cp #61
	jp z,lb506
	cp #64
	jp z,lb4c9
	cp #65
	jp z,lb4da
	cp #fe
	jp z,lb4e8
	cp #ff
	jp z,lb4d2
	ld b,a
	ld a,(ix+#0c)
	and #fc
	or #01
	ld (ix+#0c),a
	ld a,b
.lb43a equ $ + 1
	sub #00
	ld (ix+#03),a
.lb43e
	inc hl
	ld a,(hl)
	dec a
	push hl
	ld h,#00
	ld l,a
	ld de,(lb009)
	add hl,de
	ld a,(hl)
	pop hl
	inc hl
	ld (ix+#02),a
	ld a,(ix+#07)
	ld (ix+#0b),a
	ld (ix+#00),l
	ld (ix+#01),h
	call lb47a
	ld a,(ix+#19)
	ld (ix+#1a),a
	ld a,(ix+#1e)
	srl a
	ld (ix+#1f),a
	ld (ix+#1c),#01
	ld (ix+#1d),#00
	jp lb284
.lb478
	jr lb43e
.lb47a
	ld a,(ix+#17)
	and a
	call nz,lb4be
	ld a,(ix+#03)
	inc a
	inc a
	add a
	ld d,#00
	ld e,a
	ld hl,lb653
	add hl,de
	push hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,lb064
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	pop hl
	ld a,(lb007)
	and a
	ret z
	ld a,(ix+#0f)
	cp #08
	ret nz
	ld de,#00c0
	add hl,de
	ex de,hl
	ld h,#0b
	ld a,(de)
	ld l,a
	call lb03d
	inc de
	inc h
	ld a,(de)
	ld l,a
	call lb03d
	ret
.lb4be
	ld a,(ix+#03)
	neg
	and #1f
	ld (lb06a),a
	ret
.lb4c9
	inc hl
	ld a,(hl)
	inc hl
	ld (lb06a),a
	jp lb4fd
.lb4d2
	inc hl
	ld (ix+#04),#00
	jp lb4fd
.lb4da
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld h,#0d
	ld l,a
	call lb03d
	pop hl
	jp lb4fd
.lb4e8
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jr nz,lb4f7
	jp lb5f4
	jp lb40f
.lb4f7
	ld l,(ix+#15)
	ld h,(ix+#16)
.lb4fd
	ld (ix+#01),h
	ld (ix+#00),l
	jp lb40f
.lb506
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld b,a
	add a
	ld h,#00
	ld l,a
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,lb7e3
	add hl,de
	ld d,#00
	add b
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	inc hl
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld a,(hl)
	ld (ix+#2a),a
	inc hl
	ld a,(hl)
	ld (ix+#28),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	inc hl
	ld a,(hl)
	ld (ix+#11),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld (ix+#14),h
	ld (ix+#13),l
	ld (ix+#10),#00
	ld de,#0010
	add hl,de
	ld a,(hl)
	ld (ix+#17),#00
	and a
	jp z,lb591
	ld b,a
	or #c0
	ld (lb06b),a
	ld a,b
	bit 7,a
	jp z,lb591
	cpl
	and #38
	ld (ix+#17),a
.lb591
	inc hl
	ld a,(ix+#0f)
	cp #08
	jp nz,lb5ad
	ld a,(hl)
	ld (lb007),a
	and a
	jp z,lb5ad
	inc hl
	inc hl
	ld a,(hl)
	push hl
	ld h,#0d
	ld l,a
	call lb03d
	pop hl
.lb5ad
	pop hl
	jp lb40f
.lb5b1
	inc hl
	ld a,(hl)
	inc hl
	push hl
	add a
	add a
	add a
	ld h,#00
	ld l,a
	ld de,lb7a3
	add hl,de
	ld (lb009),hl
	pop hl
	jp lb608
.lb5c6
	inc hl
	ld a,(hl)
	inc hl
	ld (lb43a),a
	jp lb608
.lb5cf
	inc hl
	ld b,(hl)
	inc hl
	ld a,(lb43a)
	add b
	ld (lb43a),a
	jp lb608
	ld (ix+#0c),#ff
	ld (ix+#03),#00
	ld (ix+#04),#00
	inc hl
	ld a,(hl)
	and a
	jp z,lb284
	call lb1bd
	jp lb284
.lb5f4
	call lb602
	jp lb405
.lb5fa
	pop bc
	jp lb1bd
.lb5fe
	pop bc
	jp lb11a
.lb602
	ld l,(ix+#20)
	ld h,(ix+#21)
.lb608
	ld a,(hl)
	cp #fa
	jp z,lb5cf
	cp #fb
	jp z,lb5c6
	cp #fc
	jp z,lb5b1
	cp #fd
	jp z,lb5fe
	cp #fe
	jr z,lb64b
	cp #ff
	jr z,lb5fa
	push hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,lb9cd
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#00),e
	ld (ix+#01),d
	ld (ix+#15),e
	ld (ix+#16),d
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#22),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ret
.lb64b
	ld l,(ix+#23)
	ld h,(ix+#24)
	jr lb608
.lb653
	db #00,#00,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #d4,#04,#70,#04,#31,#04,#f4,#03
	db #dc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #6a,#00,#64,#00,#5e,#00,#5a,#00
	db #54,#00,#4f,#00,#4a,#00,#47,#00
	db #43,#00,#3f,#00,#3b,#00,#38,#00
	db #35,#00,#32,#00,#2f,#00,#2d,#00
	db #2a,#00,#28,#00,#25,#00,#23,#00
	db #21,#00,#20,#00,#1e,#00,#1c,#00
	db #1b,#00,#19,#00,#18,#00,#16,#00
	db #15,#00,#14,#00,#13,#00,#12,#00
	db #11,#00,#10,#00,#0f,#00,#0e,#00
	db #0d,#00,#0c,#00,#0b,#00,#0a,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb7a3
	db #01,#02,#03,#04,#06,#08,#0c,#10
	db #02,#04,#06,#08,#0c,#10,#18,#20
	db #03,#06,#09,#0c,#12,#18,#24,#30
	db #04,#08,#0c,#10,#18,#20,#30,#40
	db #05,#0a,#0f,#14,#1e,#28,#3c,#50
	db #06,#0c,#12,#18,#24,#30,#48,#60
	db #07,#0e,#15,#1c,#2a,#38,#54,#70
	db #08,#10,#18,#20,#30,#40,#60,#80
.lb7e3
	db #01,#0f,#05,#03,#ff,#0b,#64,#03
	db #ff,#1e,#01,#04,#00,#06,#00,#0c
	db #00,#0c,#00,#00,#18,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#03,#ff
	db #09,#ff,#14,#ff,#ff,#00,#00,#00
	db #03,#00,#03,#07,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0c
	db #0c,#00,#ff,#0b,#00,#00,#fe,#ff
	db #00,#00,#00,#03,#00,#03,#07,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#0f,#05,#03,#ff,#0b,#ff
	db #03,#ff,#05,#03,#03,#00,#02,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#0a,#0f,#00
	db #00,#0a,#00,#00,#fe,#ff,#14,#64
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#5c,#00,#00,#00,#00,#00
	db #0f,#0f,#00,#00,#0f,#01,#00,#fe
	db #01,#32,#64,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#f8,#00,#00
	db #00,#00,#00,#0f,#0a,#00,#ff,#0c
	db #00,#00,#fe,#ff,#00,#00,#00,#02
	db #f0,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #dc,#00,#00,#00,#00,#00,#0f,#04
	db #00,#ff,#0a,#05,#03,#ff,#01,#02
	db #02,#00,#01,#0c,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0f,#08,#00,#ff,#0c,#c8,#02
	db #ff,#ff,#0a,#02,#00,#01,#0c,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#08,#00,#ff
	db #08,#02,#00,#fe,#ff,#0a,#02,#00
	db #01,#0c,#0c,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#ff
	db #0a,#02,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#38,#00,#00,#00
	db #00,#00,#0f,#04,#00,#ff,#0a,#05
	db #03,#ff,#01,#03,#02,#00,#01,#0c
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#0c,#04,#00
	db #ff,#0a,#05,#03,#ff,#01,#02,#02
	db #00,#01,#0c,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#00,#ff,#0c,#05,#00,#fe
	db #ff,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.lb9cd
	dw lba18,lba1b,lba2e,lba3f
	dw lba4a,lba55,lba5e,lba7a
.lb9e3 equ $ + 6
	dw lbaa9,lbad0,lbaff,lba05
	dw lba0e,lba13,lba69,lba70
	dw lba77
.lb9ef
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
.lba05 equ $ + 6
	db #ff,#ff,#00,#00,#00,#00,#fc,#03
.lba0e equ $ + 7
	db #fb,#05,#01,#04,#02,#04,#fe,#03
.lba13 equ $ + 4
	db #01,#04,#01,#fe,#05,#03,#06,#01
.lba1b equ $ + 4
.lba18 equ $ + 1
	db #fe,#60,#08,#fe,#61,#07,#33,#02
	db #35,#02,#36,#02,#33,#02,#3a,#02
.lba2e equ $ + 7
	db #33,#02,#35,#02,#36,#02,#fe,#31
	db #02,#33,#02,#35,#02,#31,#02,#38
	db #02,#31,#02,#33,#02,#35,#02,#fe
.lba3f
	db #61,#01,#33,#08,#60,#08,#60,#08
.lba4a equ $ + 3
	db #60,#08,#fe,#61,#01,#31,#08,#60
.lba55 equ $ + 6
	db #08,#60,#08,#60,#08,#fe,#61,#05
.lba5e equ $ + 7
	db #19,#02,#19,#02,#60,#07,#fe,#61
	db #06,#19,#02,#19,#01,#19,#01,#60
.lba69 equ $ + 2
	db #07,#fe,#fc,#05,#fb,#0b,#07,#63
.lba70 equ $ + 1
	db #fe,#09,#02,#0a,#02,#00,#02,#fe
.lba7a equ $ + 3
.lba77
	db #08,#01,#fe,#61,#02,#33,#02,#33
	db #01,#33,#01,#33,#02,#33,#01,#33
	db #02,#31,#02,#31,#01,#31,#02,#31
	db #01,#31,#01,#33,#02,#33,#01,#33
	db #01,#33,#02,#33,#01,#33,#02,#2e
	db #02,#2e,#01,#2e,#02,#2e,#01,#2e
.lbaa9 equ $ + 2
	db #01,#fe,#64,#00,#61,#06,#25,#01
	db #25,#01,#25,#01,#25,#01,#61,#05
	db #19,#01,#61,#06,#19,#01,#19,#01
	db #19,#01,#61,#06,#19,#01,#19,#01
	db #19,#01,#19,#01,#19,#02,#19,#02
.lbad0 equ $ + 1
	db #fe,#61,#07,#22,#02,#27,#04,#29
	db #04,#2a,#04,#2e,#08,#60,#02,#22
	db #02,#27,#04,#29,#04,#2a,#04,#25
	db #08,#60,#02,#22,#02,#27,#04,#29
	db #04,#2a,#04,#2e,#08,#60,#02,#22
	db #02,#27,#07,#60,#02,#60,#08,#fe
.lbaff
	db #33,#06,#31,#04,#2f,#02,#2e,#02
	db #2f,#02,#27,#02,#29,#02,#2a,#04
	db #2c,#04,#2e,#02,#2e,#02,#2c,#02
	db #2e,#02,#60,#06,#60,#02,#fe,#00
	db #00
;
.music_info
	db "Street Cred' Football (1989)(Players)(Andy Serven)",0
	db "",0

	read "music_end.asm"
