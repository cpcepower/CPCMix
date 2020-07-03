; Music of Tribal Mag - Advert (1993)(POW)()(ST-Module)
; Ripped by Megachur the 05/10/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "TRIBALMA.BIN"
	ENDIF

music_date_rip_day		equ 05
music_date_rip_month	equ 10
music_date_rip_year		equ 2014
music_adr				equ &7000

	read "music_header.asm"

	jr l7004
	jr l7013
.l7004
	call l702f
	ld hl,l7452
	ld de,l701c
	ld bc,#81ff
	jp #bcd7
.l7013
	ld hl,l7452
	call #bcdd
	jp l709b
.l701c
	push ix
	call l70b7
	pop ix
	ret
	jp l702f
	jp l70b7
	jp l709b
	ld h,(hl)
	inc b
;
.init_music
.l702f
;
	ld b,#03
	ld ix,l73fe
	ld iy,l732a
	ld de,#001c
.l703c
	push bc
	ld (ix+#06),#01
	ld (ix+#09),d
	ld (ix+#1b),d
	ld (ix+#05),#10
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#00),c
	ld (ix+#01),b
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l703c
	ld a,#06
	ld (l70df),a
	ld a,d
	ld (l70f3),a
	inc a
	ld (l70da),a
	ld a,#38
	ld (l70e4),a
	ld a,#ff
	ld (l7326),a
	ld (l7327),a
	ld (l7328),a
	ld (l7329),a
	ld a,#0c
	ld c,d
	call l7308
	ld a,#0d
	ld c,d
	jp l7308
;
.stop_music
.l709b
;
	ld a,#07
	ld c,#3f
	call l7308
	ld a,#08
	ld c,#00
	call l7308
	ld a,#09
	ld c,#00
	call l7308
	ld a,#0a
	ld c,#00
	jp l7308
;
.play_music
.l70b7
;
	ld hl,l70da
	dec (hl)
	ld ix,l73fe
	ld bc,l740c
	call l716d
	ld ix,l741a
	ld bc,l7428
	call l716d
	ld ix,l7436
	ld bc,l7444
	call l716d
.l70da equ $ + 1
	ld a,#00
	or a
	jr nz,l70e3
.l70df equ $ + 1
	ld a,#00
	ld (l70da),a
.l70e4 equ $ + 1
.l70e3
	ld a,#00
	ld hl,l7327
	cp (hl)
	jr z,l70f2
	ld (hl),a
	ld c,a
	ld a,#07
	call l7308
.l70f3 equ $ + 1
.l70f2
	ld a,#00
	ld hl,l7326
	cp (hl)
	jr z,l7101
	ld (hl),a
	ld c,a
	ld a,#06
	call l7308
.l7102 equ $ + 1
.l7101
	ld a,#00
	ld hl,l7328
	cp (hl)
	jr z,l7110
	ld (hl),a
	ld c,a
	ld a,#0b
	call l7308
.l7111 equ $ + 1
.l7110
	ld a,#00
	ld hl,l7329
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l7308
.l711e
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l721e
.l712d
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	xor a
	ld (ix+#17),a
	ld (ix+#15),a
	ld c,a
	ld a,(ix+#04)
	jp l7308
.l7147
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l715c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l715c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l7180
.l716d
	ld a,(l70da)
	or a
	jp nz,l721e
	dec (ix+#06)
	jp nz,l721e
	ld l,(ix+#00)
	ld h,(ix+#01)
.l7180
	ld a,(hl)
	or a
	jr z,l711e
	cp #fe
	jr z,l712d
	cp #ff
	jr z,l7147
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l7330
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l71bc
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l71bc
	and #7f
	ld (ix+#06),a
	jr l720f
.l71bc
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l71d0
	ld (ix+#05),a
	ld (ix+#0a),d
.l71d0
	add a
	add a
	add a
	ld e,a
	ld hl,l7466
	add hl,de
	ld d,b
	ld e,c
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop af
	pop hl
	and #f0
	jr z,l720f
	cp #f0
	jp z,l72c4
	cp #d0
	jp z,l72e0
	cp #b0
	jp z,l72e8
	cp #80
	jp nc,l72f0
	cp #10
	jr nz,l720f
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l720f
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l721e
	ld a,(ix+#17)
	or a
	jr nz,l7232
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l7232
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l725d
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l7330
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l725d
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,(ix+#18)
	ld h,(ix+#19)
	add hl,bc
	ld c,l
	ld a,(ix+#02)
	call l7308
	ld c,h
	ld a,(ix+#03)
	call l7308
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l729b
	and #0f
	sub (ix+#0a)
	jr nc,l7291
	xor a
.l7291
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l7308
.l729b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld a,(hl)
	bit 7,a
	ret nz
	and #1f
	ld b,(ix+#0b)
	ld c,a
	or a
	ld a,b
	jr z,l72b8
	ld b,a
	ld a,c
	ld (l70f3),a
	ld a,b
	sub #40
.l72b8
	ld (l72bf),a
	ld a,(l70e4)
.l72bf equ $ + 1
	bit 0,a
	ld (l70e4),a
	ret
.l72c4
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l74e6
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l720f
.l72e0
	inc hl
	ld a,(hl)
	ld (l70df),a
	jp l720f
.l72e8
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l720f
.l72f0
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l7111),a
	inc hl
	ld a,(hl)
	ld (l7102),a
	jp l720f
.l7308
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	ret
.l7329 equ $ + 3
.l7328 equ $ + 2
.l7327 equ $ + 1
.l7326
	db #ff,#ff,#ff,#ff
.l732a
	dw l7686,l769b,l76b0
.l7330
	db #ee,#0e,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
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
	db #0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l73fe equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l740c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l741a
	db #00,#00,#02,#03,#09,#00,#00,#00
.l7428 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7436 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l7444 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7452
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	db #53,#54,#2d,#4d,#6f,#64,#75,#6c
	db #65
.l7466 equ $ + 1
	db #2e,#06,#75,#46,#75,#66,#75,#00
	db #00,#00,#6f,#45,#bd,#54,#8f,#4e
	db #4f,#86,#75,#c6,#75,#66,#75,#10
	db #10,#ff,#6e,#21,#01,#70,#cd,#23
	db #56,#23,#70,#10,#6f,#09,#ed,#23
	db #4e,#fe,#6e,#ca,#6f,#98,#6d,#50
	db #30,#e6,#75,#26,#76,#46,#76,#00
	db #00,#06,#75,#66,#76,#66,#75,#18
	db #07,#06,#6f,#af,#87,#75,#6d,#f0
	db #30,#09,#45,#00,#6f,#00,#6f,#00
	db #00,#00,#6f,#00,#6f,#00,#6f,#00
	db #00,#00,#6f,#00,#6f,#00,#6f,#00
	db #00,#00,#6f,#00,#6f,#00,#6f,#00
	db #00,#00,#6f,#00,#6f,#00,#6f,#00
	db #00,#00,#6f,#00,#6f,#00,#6f,#00
	db #00,#00,#6f,#00,#6f,#00,#6f,#00
.l74e6 equ $ + 1
	db #00,#00,#6f,#00,#6f,#00,#6f,#00
	db #6f,#00,#6f,#00,#6f,#00,#6f,#00
	db #6f,#00,#6f,#00,#6f,#00,#6f,#00
	db #6f,#00,#6f,#00,#6f,#00,#6f,#00
	db #6f,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0f,#0e,#0d,#0d,#0d,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#08,#08,#07,#07
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0d,#0c,#0b,#0a,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#38,#00,#60,#00,#b0,#00,#18
	db #01,#48,#01,#80,#01,#c8,#01,#10
	db #02,#58,#02,#b0,#02,#00,#00,#00
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0f,#0e,#0e,#0d,#0c,#0b,#09
	db #07,#06,#03,#01,#00,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#06,#06,#06,#05,#04,#04,#03
	db #02,#01,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0e,#0e,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#09,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#05,#05
.l7686 equ $ + 1
	db #05,#00,#c5,#76,#00,#c5,#76,#00
	db #f9,#76,#00,#2e,#77,#00,#68,#77
.l769b equ $ + 6
	db #00,#c3,#77,#80,#8c,#76,#00,#2a
	db #78,#00,#2d,#78,#00,#2d,#78,#00
	db #7f,#78,#00,#2d,#78,#00,#7f,#78
.l76b0 equ $ + 3
	db #80,#a1,#76,#00,#d1,#78,#00,#d4
	db #78,#00,#d7,#78,#00,#f9,#78,#00
	db #1b,#79,#00,#3d,#79,#80,#b6,#76
	db #3a,#04,#00,#3e,#84,#37,#88,#3c
	db #82,#3e,#82,#3f,#82,#3c,#82,#3e
	db #86,#c1,#00,#bf,#00,#3e,#82,#3a
	db #84,#ba,#00,#be,#00,#3f,#82,#43
	db #84,#3a,#82,#35,#86,#41,#82,#41
	db #82,#c1,#00,#bf,#00,#3e,#82,#be
	db #00,#bc,#00,#ff,#3a,#04,#10,#3e
	db #04,#00,#37,#88,#3c,#82,#3e,#82
	db #3f,#82,#3c,#82,#3e,#86,#c1,#00
	db #bf,#00,#3e,#82,#3a,#84,#ba,#00
	db #be,#00,#3f,#82,#43,#84,#3a,#82
	db #35,#86,#41,#82,#41,#82,#c1,#00
	db #bf,#00,#3e,#82,#be,#00,#bc,#00
	db #ff,#3a,#02,#00,#3e,#82,#3a,#82
	db #b7,#00,#ba,#00,#3c,#82,#bc,#00
	db #be,#00,#3f,#82,#bc,#00,#ba,#00
	db #39,#82,#3c,#82,#35,#82,#39,#82
	db #3a,#82,#be,#00,#bc,#00,#3a,#84
	db #3a,#84,#37,#84,#33,#84,#30,#84
	db #35,#82,#32,#82,#30,#82,#35,#82
	db #2e,#88,#ff,#3a,#04,#c0,#1e,#3e
	db #04,#c0,#18,#37,#08,#c0,#24,#3c
	db #02,#c0,#1b,#3e,#02,#c0,#18,#3f
	db #02,#c0,#16,#3c,#02,#c0,#1b,#3e
	db #06,#c0,#18,#c1,#c0,#14,#bf,#c0
	db #16,#3e,#02,#c0,#18,#3a,#04,#c0
	db #1e,#ba,#c0,#1e,#be,#c0,#18,#3f
	db #02,#c0,#16,#43,#04,#c0,#12,#3a
	db #02,#c0,#1e,#41,#06,#c0,#28,#41
	db #02,#c0,#14,#41,#82,#c1,#c0,#14
	db #bf,#c0,#16,#3e,#02,#c0,#18,#be
	db #c0,#18,#bc,#c0,#1b,#ff,#3a,#02
	db #c0,#1e,#3e,#02,#c0,#18,#3a,#02
	db #c0,#1e,#b7,#c0,#24,#ba,#c0,#1e
	db #3c,#02,#c0,#1b,#bc,#c0,#1b,#be
	db #c0,#18,#3f,#02,#c0,#16,#bc,#c0
	db #1b,#ba,#c0,#1e,#39,#02,#c0,#20
	db #3c,#02,#c0,#1b,#35,#02,#c0,#27
	db #39,#02,#c0,#20,#3a,#02,#c0,#1e
	db #be,#c0,#18,#bc,#c0,#1b,#3a,#04
	db #c0,#1e,#3a,#84,#37,#04,#c0,#24
	db #33,#04,#c0,#2e,#30,#04,#c0,#35
	db #35,#02,#c0,#28,#32,#02,#c0,#30
	db #30,#02,#c0,#35,#35,#02,#c0,#28
	db #22,#08,#c0,#1e,#ff,#00,#40,#ff
	db #22,#02,#07,#2e,#82,#3a,#02,#06
	db #2e,#02,#07,#27,#82,#33,#82,#3a
	db #02,#06,#33,#02,#07,#29,#82,#35
	db #82,#3a,#02,#06,#35,#02,#07,#22
	db #82,#2e,#82,#3a,#02,#06,#2e,#02
	db #07,#22,#82,#2e,#82,#3a,#02,#06
	db #2e,#02,#07,#27,#82,#33,#82,#3a
	db #02,#06,#33,#02,#07,#29,#82,#35
	db #82,#3a,#02,#06,#35,#02,#07,#29
	db #82,#35,#82,#3a,#02,#06,#35,#02
	db #07,#ff,#22,#02,#07,#2e,#82,#3a
	db #02,#06,#2e,#02,#07,#27,#82,#33
	db #82,#3a,#02,#06,#33,#02,#07,#29
	db #82,#35,#82,#3a,#02,#06,#35,#02
	db #07,#22,#82,#2e,#82,#3a,#02,#06
	db #2e,#02,#07,#22,#82,#2e,#82,#3a
	db #02,#06,#2e,#02,#07,#27,#82,#33
	db #82,#3a,#02,#06,#33,#02,#07,#29
	db #82,#35,#82,#3a,#02,#06,#35,#02
	db #07,#22,#82,#2e,#82,#3a,#02,#06
	db #2e,#02,#07,#ff,#00,#40,#ff,#00
	db #40,#ff,#3a,#08,#02,#3c,#82,#3e
	db #82,#3f,#82,#41,#84,#43,#82,#45
	db #82,#46,#8a,#46,#84,#41,#84,#43
	db #86,#43,#82,#41,#82,#3f,#84,#3e
	db #86,#3c,#84,#ff,#3a,#08,#02,#3c
	db #82,#3e,#82,#3f,#82,#41,#84,#43
	db #82,#45,#82,#46,#8a,#46,#84,#4a
	db #84,#46,#88,#45,#82,#46,#82,#48
	db #82,#46,#86,#41,#84,#ff,#3a,#08
	db #02,#3c,#82,#3e,#82,#3f,#82,#41
	db #84,#43,#82,#45,#82,#46,#8a,#46
	db #84,#41,#84,#43,#86,#43,#82,#41
	db #82,#3f,#84,#3e,#86,#3c,#84,#ff
	db #3a,#08,#02,#3c,#82,#3e,#82,#3f
	db #82,#41,#84,#43,#82,#45,#82,#46
	db #8a,#46,#84,#4a,#84,#46,#88,#45
	db #82,#46,#82,#48,#82,#46,#86,#41
	db #84,#ff
;
.music_info
	db "Tribal Mag - Advert (1993)(POW)()",0
	db "ST-Module",0

	read "music_end.asm"
