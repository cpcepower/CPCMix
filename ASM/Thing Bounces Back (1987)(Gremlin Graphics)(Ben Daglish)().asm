; Music of Thing Bounces Back (1987)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 31/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THINGBOB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 31
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #6220
	read "music_header.asm"

	jp l68bd
	jp l6332
	jp l68ad        ; stop music
.l6229
	db #00,#06,#51,#17,#2c,#02,#7f,#00
	db #0f,#00,#08,#41,#04,#5a,#02,#7f
	db #00,#0f,#00,#00,#81,#09,#0d,#02
	db #7f,#00,#0d,#00,#08,#81,#18,#2c
	db #02,#7f,#00,#0d,#11,#03,#41,#04
	db #4c,#02,#7f,#08,#0c,#01,#08,#41
	db #18,#29,#02,#7f,#00,#0d,#00,#00
	db #17,#09,#2d,#02,#7f,#00,#0c,#00
	db #00,#17,#04,#0e,#02,#7f,#00,#0b
	db #00,#04,#81,#04,#0e,#02,#7f,#00
	db #0b,#11,#08,#00,#37,#4a,#03,#7f
	db #08,#0c
.l6283
	db #00,#09,#12,#1b,#24,#2d,#36,#3f
	db #48,#09,#12,#1b,#24,#2d,#36,#3f
	db #00,#09,#12,#1b,#24,#2d
.l629c equ $ + 3
.l629b equ $ + 2
	db #36,#3f,#00,#b8,#0f,#00,#00,#00
.l62a4 equ $ + 3
.l62a2 equ $ + 1
.l62a1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l62c0 equ $ + 7
.l62bf equ $ + 6
.l62be equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l62ce equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l62d1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l62ed equ $ + 4
.l62ec equ $ + 3
.l62eb equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l62fe equ $ + 5
.l62fb equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6318 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l631a equ $ + 1
.l6319
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6328 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l632e equ $ + 5
.l632c equ $ + 3
.l632a equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6331
	db #00
;
.play_music
.l6332
;
	ld hl,l629b
	ld a,(l62a4)
	dec a
	jr nz,l633f
	ld (l62a4),a
	inc (hl)
.l633f
	ld a,(l62d1)
	dec a
	jr nz,l6349
	ld (l62d1),a
	inc (hl)
.l6349
	ld a,(l62fe)
	dec a
	jr nz,l6353
	ld (l62fe),a
	inc (hl)
.l6353
	xor a
	ld (l6331),a
	ld ix,l62a1
	ld (l6509),a
	ld hl,l6a64
	ld (l644b),hl
	ld (l68df),hl
	ld (l68f2),hl
	ld (l6910),hl
	ld de,(l6328)
	call l6419
	ld ix,l62ce
	ld a,#01
	ld (l6331),a
	ld hl,l6ae5
	ld (l644b),hl
	ld (l68df),hl
	ld (l68f2),hl
	ld (l6910),hl
	ld a,#08
	ld (l6509),a
	ld de,(l632a)
	call l6419
	ld ix,l62fb
	ld a,#02
	ld (l6331),a
	ld hl,l6b5e
	ld (l644b),hl
	ld (l68df),hl
	ld (l68f2),hl
	ld (l6910),hl
	ld a,#10
	ld (l6509),a
	ld de,(l632c)
	call l6419
.l63bc
	ld de,#c000
	ld hl,#f680
	ld a,(l629b)
	or a
	jr nz,l6410
	ld c,#00
	ld a,(l62be)
	call l6e58
	inc c
	ld a,(l62bf)
	call l6e58
	inc c
	ld a,(l62eb)
	call l6e58
	inc c
	ld a,(l62ec)
	call l6e58
	inc c
	ld a,(l6318)
	call l6e58
	inc c
	ld a,(l6319)
	call l6e58
	inc c
	inc c
	ld a,(l629c)
	call l6e58
	inc c
	ld a,(l62c0)
	call l6e58
	inc c
	ld a,(l62ed)
	call l6e58
	inc c
	ld a,(l631a)
	call l6e58
.l6410
	xor a
	ld (l629b),a
	ld c,#0e
	jp l6e58
.l6419
	ld a,(ix+#03)
	or a
	jp nz,l6682
	ld a,(ix+#11)
	cp #ff
	jr z,l642b
	ld (ix+#11),#00
.l642b
	ld l,(ix+#02)
	ld h,#00
	add hl,de
	ld a,(hl)
	cp #ff
	jr nz,l64a2
	ld a,(ix+#04)
	or a
	jr z,l6445
	dec (ix+#04)
	ld (ix+#02),#00
	jr l642b
.l6445
	ld l,(ix+#00)
	ld h,#00
.l644b equ $ + 1
	ld bc,l6a64
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	cp #ff
	jp z,l68be
	bit 7,a
	jp z,l647f
	ld l,a
	and #1f
	ld (l632e),a
	ld a,l
	and #60
	srl a
	srl a
	srl a
	ld (l646f),a
.l646f equ $ + 1
.l646e
	jr l646e
	jp l68ec
	nop
	jp l6923
	nop
	jp l68d9
	nop
	jp l68ff
.l647f
	ld c,a
	ld a,(l6331)
	add a
	ld e,a
	ld d,#00
	ld b,d
	ld hl,l6bd9
	add hl,bc
	ld a,(hl)
	ld hl,l6bf2
	add hl,bc
	ld b,(hl)
	ld hl,l6328
	add hl,de
	ld (hl),a
	inc hl
	ld (hl),b
	ld e,a
	ld d,b
	ld (ix+#02),#00
	jp l642b
.l64a2
	bit 7,a
	jp z,l65f6
	cp #a0
	jr nz,l64bd
	inc (ix+#02)
	call l692d
	ld (ix+#16),a
	ld (ix+#03),a
	inc (ix+#02)
	jp l668b
.l64bd
	cp #90
	jr c,l6506
	cp #c0
	jr c,l64ee
	ld (ix+#15),a
	and #1f
	ld (ix+#14),a
	inc (ix+#02)
	call l692d
	ld (ix+#12),a
	inc (ix+#02)
	call l692d
	ld (ix+#13),a
	inc (ix+#02)
	call l692d
	ld (ix+#11),a
	inc (ix+#02)
	jp l642b
.l64ee
	cp #bf
	jr nz,l64f8
	ld (ix+#11),#00
	jr l6500
.l64f8
	and #0f
	add a
	add a
	add a
	ld (ix+#10),a
.l6500
	inc (ix+#02)
	jp l642b
.l6506
	and #0f
.l6509 equ $ + 1
	add #00
	ld l,a
	ld h,#00
	ld bc,l6283
	add hl,bc
	ld l,(hl)
	ld h,#00
	ld bc,l6229
	add hl,bc
	push hl
	pop iy
	ld a,(iy+#08)
	ld (ix+#2b),a
	ld hl,l629c
	ld a,(l6331)
	or a
	jr nz,l653a
	res 3,(hl)
	set 0,(hl)
	bit 7,(iy+#02)
	jr nz,l655b
	set 3,(hl)
	res 0,(hl)
	jr l655b
.l653a
	dec a
	jr nz,l654d
	set 1,(hl)
	res 4,(hl)
	bit 7,(iy+#02)
	jr nz,l655b
	res 1,(hl)
	set 4,(hl)
	jr l655b
.l654d
	set 2,(hl)
	res 5,(hl)
	bit 7,(iy+#02)
	jr nz,l655b
	res 2,(hl)
	set 5,(hl)
.l655b
	ld (ix+#24),#0f
	ld (ix+#25),#01
	ld a,(iy+#03)
	push af
	and #f0
	jr z,l6589
	rrca
	rrca
	rrca
	rrca
	ld c,a
	ld b,#00
	ld hl,l6e38
	add hl,bc
	ld a,(hl)
	bit 7,a
	jr nz,l6580
	ld (ix+#24),a
	jr l6589
.l6580
	and #7f
	ld (ix+#25),a
	ld (ix+#24),#01
.l6589
	ld a,(iy+#04)
	and #f0
	rrca
	rrca
	rrca
	ld (ix+#20),a
	ld (ix+#21),#0f
	ld (ix+#22),#01
	pop af
	and #0f
	jr z,l65bb
	ld c,a
	ld b,#00
	ld hl,l6e48
	add hl,bc
	ld a,(hl)
	bit 7,(hl)
	jr nz,l65b2
	ld (ix+#21),a
	jr l65bb
.l65b2
	and #7f
	ld (ix+#22),a
	ld (ix+#21),#01
.l65bb
	ld (ix+#27),#0f
	ld (ix+#28),#01
	ld a,(iy+#04)
	and #0f
	jr z,l65e4
	ld c,a
	ld b,#00
	ld hl,l6e48
	add hl,bc
	ld a,(hl)
	bit 7,a
	jr nz,l65db
	ld (ix+#27),a
	jr l65bb
.l65db
	and #7f
	ld (ix+#28),a
	ld (ix+#27),#01
.l65e4
	ld a,(iy+#05)
	ld (ix+#06),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	inc (ix+#02)
	jp l642b
.l65f6
	add #14
	add (ix+#01)
	ld c,a
	ld b,#00
	ld (ix+#1c),a
	ld hl,l6936
	add hl,bc
	ld a,(hl)
	ld hl,l698a
	add hl,bc
	ld h,(hl)
	ld l,a
	ld c,(ix+#09)
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
	set 0,(ix+#2a)
	xor a
	ld (ix+#26),a
	ld (ix+#23),a
	ld (ix+#29),a
	ld (ix+#1f),a
	res 7,(ix+#25)
	res 7,(ix+#22)
	res 7,(ix+#28)
	ld l,(ix+#02)
	ld h,#00
	inc l
	add hl,de
	ld a,(hl)
	inc (ix+#02)
	inc (ix+#02)
	ex af,af'
	ld a,(ix+#0b)
	or a
	jr z,l6657
	ld l,a
	ld h,#00
	ld bc,l69f6
	add hl,bc
	ld a,(hl)
	ld (ix+#0a),a
	ld (ix+#0c),#01
.l6657
	ld a,(ix+#10)
	or a
	jr z,l6675
	ld l,a
	ld h,#00
	ld bc,l6a1d
	add hl,bc
	ld a,(hl)
	and #78
	srl a
	srl a
	srl a
	inc a
	ld (ix+#18),a
	ld (ix+#17),#01
.l6675
	ld a,(ix+#15)
	and #1f
	ld (ix+#14),a
	ex af,af'
	ld (ix+#03),a
	ret
.l6682
	cp (ix+#06)
	jr nz,l668b
	res 0,(ix+#2a)
.l668b
	ld a,(ix+#16)
	or a
	jr z,l669a
	dec (ix+#16)
	ret nz
	ld (ix+#03),#00
	ret
.l669a
	dec (ix+#03)
	ld a,(l629b)
	or a
	ret nz
	bit 0,(ix+#2a)
	jr z,l670c
	bit 7,(ix+#25)
	jr nz,l66d9
	inc (ix+#26)
	ld a,(ix+#26)
	cp (ix+#25)
	jr nz,l6736
	ld (ix+#26),#00
	ld a,(ix+#24)
	add (ix+#1f)
	cp (ix+#2b)
	jr c,l66d4
	ld a,(ix+#2b)
	ld (ix+#1f),a
	set 7,(ix+#25)
	jr l6736
.l66d4
	ld (ix+#1f),a
	jr l6736
.l66d9
	bit 7,(ix+#22)
	jr nz,l6736
	inc (ix+#23)
	ld a,(ix+#23)
	cp (ix+#22)
	jr nz,l6736
	ld (ix+#23),#00
	ld a,(ix+#1f)
	sub (ix+#21)
	jr nc,l6702
.l66f6
	ld a,(ix+#20)
	ld (ix+#1f),a
	set 7,(ix+#22)
	jr l6736
.l6702
	cp (ix+#20)
	jr c,l66f6
	ld (ix+#1f),a
	jr l6736
.l670c
	bit 7,(ix+#28)
	jr nz,l6736
	inc (ix+#29)
	ld a,(ix+#29)
	cp (ix+#28)
	jr nz,l6736
	ld (ix+#29),#00
	ld a,(ix+#1f)
	sub (ix+#27)
	jr nc,l6733
	ld (ix+#1f),#00
	set 7,(ix+#28)
	jr l6736
.l6733
	ld (ix+#1f),a
.l6736
	ld a,(ix+#0b)
	or a
	jp z,l67c1
	ld a,(ix+#0a)
	or a
	jr z,l6753
	bit 7,a
	jr z,l674d
	and #7f
	jr z,l67c1
	jr l6753
.l674d
	dec (ix+#0a)
	jp l67c1
.l6753
	ld a,(ix+#0c)
	and #7f
	add (ix+#0b)
	ld l,a
	ld h,#00
	ld bc,l69f6
	add hl,bc
	ld a,(hl)
	ld (l632e),a
	bit 7,a
	jr z,l6786
	neg
	ld (l632e),a
	bit 7,(ix+#0c)
	jr nz,l6792
.l6775
	ld hl,l632e
	ld a,(ix+#1d)
	sub (hl)
	ld (ix+#1d),a
	jr nc,l67a0
	dec (ix+#1e)
	jr l67a0
.l6786
	ld a,(l632e)
	ld (l632e),a
	bit 7,(ix+#0c)
	jr nz,l6775
.l6792
	ld a,(l632e)
	add (ix+#1d)
	ld (ix+#1d),a
	jr nc,l67a0
	inc (ix+#1e)
.l67a0
	inc (ix+#0c)
	ld a,(ix+#0c)
	and #7f
	cp #08
	jr nz,l67c1
	ld a,(ix+#0c)
	xor #89
	ld (ix+#0c),a
	cp #01
	jr nz,l67c1
	ld a,(ix+#0a)
	or a
	jr z,l67c1
	dec (ix+#0a)
.l67c1
	ld a,(ix+#10)
	or a
	jp z,l685c
	dec (ix+#18)
	jp nz,l685c
	add (ix+#17)
	ld l,a
	ld h,#00
	ld bc,l6a1d
	add hl,bc
	ld a,(ix+#17)
	bit 7,a
	jr nz,l683b
	or a
	jr nz,l67ee
	ld a,(hl)
	and #38
	srl a
	srl a
	srl a
	or a
	jr nz,l67ef
.l67ee
	ld a,(hl)
.l67ef
	ld c,a
	and #07
	ld (ix+#18),a
	ld a,c
	and #f8
	srl a
	srl a
	srl a
	add (ix+#1c)
	ld c,a
	ld b,#00
	ld hl,l6936
	add hl,bc
	ld a,(hl)
	ld hl,l698a
	add hl,bc
	ld h,(hl)
	ld l,a
	ld c,(ix+#09)
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
	inc (ix+#17)
	ld l,(ix+#10)
	ld h,#00
	ld bc,l6a1d
	add hl,bc
	ld a,(hl)
	and #07
	inc a
	cp (ix+#17)
	jr nz,l685c
	bit 7,(hl)
	ld a,#ff
	jr z,l6835
	xor a
.l6835
	ld (ix+#17),a
	jp l685c
.l683b
	cp #ff
	jr nz,l685c
	dec (ix+#17)
	ld c,(ix+#1c)
	ld b,#00
	ld hl,l6936
	add hl,bc
	ld a,(hl)
	ld hl,l698a
	add hl,bc
	ld h,(hl)
	ld l,a
	ld c,(ix+#09)
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
.l685c
	ld a,(ix+#14)
	or a
	jr z,l6867
	dec (ix+#14)
	jr l68ac
.l6867
	ld a,(ix+#11)
	or a
	jr z,l68ac
	cp #ff
	jr z,l6874
	dec (ix+#11)
.l6874
	ld a,(ix+#15)
	and #20
	jr z,l6894
	ld l,(ix+#1d)
	ld h,(ix+#1e)
	ld c,(ix+#12)
	ld b,(ix+#13)
	srl b
	rr c
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
	jr l68ac
.l6894
	ld l,(ix+#1d)
	ld h,(ix+#1e)
	ld c,(ix+#12)
	ld b,(ix+#13)
	srl b
	rr c
	sbc hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
.l68ac
	ret
;
.stop_music
.l68ad
;
	xor a
	ld (l629b),a
	ld (l62c0),a
	ld (l62ed),a
	ld (l631a),a
	jp l63bc
;
.init_music
.l68bd
;
	push af
.l68be
	ld hl,l6935
	ld (l6328),hl
	ld (l632a),hl
	ld (l632c),hl
	ld hl,l62a1
	ld de,l62a2
	ld bc,#0086
	ld (hl),#00
	ldir
	pop af
	ret
.l68d9
	ld l,(ix+#00)
	ld h,#00
.l68df equ $ + 1
	ld bc,l6a64
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	ld (ix+#09),a
	jp l6445
.l68ec
	ld l,(ix+#00)
	ld h,#00
.l68f2 equ $ + 1
	ld bc,l6a64
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	ld (ix+#01),a
	jp l6445
.l68ff
	ld a,(l6509)
	ld c,a
	ld a,(l632e)
	add c
	ld (l6918),a
	ld l,(ix+#00)
	ld h,#00
.l6910 equ $ + 1
	ld bc,l6a64
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
.l6918 equ $ + 1
	ld l,#00
	ld h,#00
	ld bc,l6283
	add hl,bc
	ld (hl),a
	jp l6445
.l6923
	ld a,(l632e)
	dec a
	ld (ix+#04),a
	jp l6445
.l692d
	ld l,(ix+#02)
	ld h,#00
	add hl,de
	ld a,(hl)
	ret
.l6936 equ $ + 1
.l6935
	db #ff,#ee,#18,#4d,#8e,#da,#2f,#8f
	db #f7,#68,#e1,#61,#e9,#77,#0c,#a7
	db #47,#ed,#98,#47,#fc,#d4,#70,#31
	db #f4,#dc,#86,#53,#24,#f6,#cc,#a4
	db #7e,#5a,#38,#18,#fa,#de,#c3,#aa
	db #92,#7b,#66,#52,#3f,#2d,#1c,#0c
	db #fd,#ef,#e1,#d5,#c9,#be,#b3,#a9
	db #9f,#96,#8e,#86,#7f,#77,#71,#6a
	db #64,#5f,#59,#54,#50,#4b,#47,#43
	db #3f,#3c,#38,#35,#32,#2f,#2d,#2a
.l698a equ $ + 5
	db #28,#26,#24,#22,#20,#0e,#0e,#0d
	db #0c,#0b,#0b,#0a,#09,#09,#08,#08
	db #07,#07,#07,#06,#06,#05,#05,#05
	db #04,#04,#04,#04,#03,#03,#03,#03
	db #03,#02,#02,#02,#02,#02,#02,#02
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#13,#04,#05
	db #06,#27,#0e,#03,#08,#09,#0f,#0a
	db #0b,#06,#09,#03,#3a,#13,#04,#05
.l69f6 equ $ + 5
	db #06,#27,#0e,#03,#08,#09,#0f,#0a
	db #0b,#06,#09,#03,#3a,#00,#01,#00
	db #ff,#00,#01,#00,#ff,#00,#0c,#f4
	db #f4,#0c,#0c,#f4,#00,#10,#12,#14
	db #16,#20,#40,#50,#80,#82,#10,#17
.l6a1d equ $ + 4
	db #15,#16,#02,#25,#17,#15,#16,#82
	db #24,#25,#11,#12,#89,#89,#00,#00
	db #00,#00,#00,#00,#8a,#29,#49,#00
	db #00,#00,#00,#00,#8a,#21,#39,#00
	db #00,#00,#00,#00,#8a,#19,#41,#00
	db #00,#00,#00,#00,#8a,#21,#49,#00
	db #00,#00,#00,#00,#89,#61,#00,#00
	db #00,#00,#00,#00,#00,#8a,#01,#02
	db #03,#04,#05,#06,#07,#64,#6a,#e5
.l6a64 equ $ + 3
	db #6a,#5e,#6b,#a6,#00,#80,#02,#a2
	db #00,#80,#05,#00,#80,#07,#00,#80
	db #00,#04,#80,#02,#04,#80,#00,#a2
	db #06,#a4,#08,#09,#a4,#08,#09,#a2
	db #0b,#0c,#a2,#0b,#0c,#a3,#0b,#0d
	db #a2,#0b,#a8,#0e,#e0,#2d,#a4,#08
	db #09,#a4,#08,#09,#a2,#0b,#0c,#a2
	db #0b,#0c,#a3,#0b,#0d,#a2,#0b,#a8
	db #0e,#06,#06,#06,#04,#80,#02,#04
	db #80,#00,#0c,#04,#80,#02,#04,#80
	db #00,#0c,#04,#80,#02,#04,#80,#00
	db #0c,#04,#80,#02,#04,#80,#00,#a8
	db #0e,#80,#02,#a8,#0e,#a4,#08,#09
	db #a4,#08,#09,#80,#f6,#04,#04,#80
	db #f8,#04,#04,#80,#02,#0c,#0c,#80
	db #f6,#04,#04,#80,#f8,#04,#04,#80
.l6ae5 equ $ + 4
	db #fd,#a4,#00,#ff,#ac,#02,#80,#02
	db #a4,#02,#80,#00,#02,#02,#80,#02
	db #02,#02,#80,#00,#02,#80,#02,#02
	db #80,#00,#a3,#02,#80,#02,#02,#80
	db #00,#a3,#02,#80,#02,#02,#80,#00
	db #a6,#02,#80,#02,#02,#02,#80,#00
	db #a6,#02,#80,#02,#02,#02,#b2,#0f
	db #80,#00,#a6,#02,#80,#02,#02,#02
	db #80,#00,#a6,#02,#80,#02,#02,#80
	db #00,#0d,#b2,#0f,#a3,#02,#80,#02
	db #02,#80,#00,#a3,#02,#80,#02,#02
	db #80,#00,#a3,#02,#80,#02,#02,#80
	db #00,#ae,#02,#80,#02,#a4,#02,#80
	db #04,#a4,#02,#80,#02,#b0,#0f,#a3
	db #02,#80,#04,#02,#80,#02,#a3,#02
.l6b5e equ $ + 5
	db #0d,#ad,#02,#0d,#ff,#07,#01,#80
	db #02,#01,#80,#00,#03,#80,#02,#03
	db #80,#00,#05,#80,#02,#05,#07,#80
	db #f4,#0a,#80,#00,#0a,#10,#0d,#10
	db #0d,#11,#12,#11,#13,#0d,#14,#e4
	db #51,#80,#f4,#0a,#80,#00,#0a,#10
	db #0d,#10,#0d,#11,#12,#11,#13,#0d
	db #01,#15,#80,#fb,#03,#80,#00,#16
	db #80,#02,#16,#80,#00,#05,#80,#02
	db #05,#80,#fb,#03,#80,#00,#05,#80
	db #02,#05,#80,#fb,#03,#80,#00,#05
	db #80,#02,#05,#80,#fb,#03,#80,#00
	db #05,#80,#02,#05,#80,#00,#17,#0d
	db #80,#02,#17,#0d,#0a,#14,#0a,#80
	db #f9,#18,#80,#fb,#18,#80,#02,#01
	db #80,#f9,#18,#80,#fb,#18,#07,#ff
.l6bd9
;	db #0b,#27,#3f,#58,#72,#7d,#91,#ba
;	db #cc,#d8,#fe,#50,#5c,#6d,#84,#89
;	db #9f,#b1,#c0,#d6,#e4,#e6,#f3,#fc
;	db #21
	db l6c0b,l6c27,l6c3f,l6c58
	db l6c72,l6c7d,l6c91,l6cba
	db l6ccc,l6cd8,l6cfe,l6d50
	db l6d5c,l6d6d,l6d84,l6d89
	db l6d9f,l6db1,l6dc0,l6dd6
	db l6de4,l6de6,l6df3,l6dfc
	db l6e21
.l6bf2
;	db #6c,#6c,#6c,#6c,#6c,#6c,#6c,#6c
;	db #6c,#6c,#6c,#6d,#6d,#6d,#6d,#6d
;	db #6d,#6d,#6d,#6d,#6d,#6d,#6d,#6d
;	db #6e
	db l6c0b/&100,l6c27/&100,l6c3f/&100,l6c58/&100
	db l6c72/&100,l6c7d/&100,l6c91/&100,l6cba/&100
	db l6ccc/&100,l6cd8/&100,l6cfe/&100,l6d50/&100
	db l6d5c/&100,l6d6d/&100,l6d84/&100,l6d89/&100
	db l6d9f/&100,l6db1/&100,l6dc0/&100,l6dd6/&100
	db l6de4/&100,l6de6/&100,l6df3/&100,l6dfc/&100
	db l6e21/&100
.l6c0b
	db #80,#c7,#14,#00,#ff,#06,#0c,#06
	db #06,#06,#06,#12,#0c,#12,#06,#06
	db #0c,#06,#0c,#06,#06,#12,#06,#12
.l6c27 equ $ + 4
	db #06,#06,#0c,#ff,#84,#2d,#06,#2e
	db #06,#31,#0c,#31,#0c,#2e,#06,#31
	db #06,#33,#06,#31,#06,#2d,#0c,#2c
.l6c3f equ $ + 4
	db #06,#2a,#72,#ff,#86,#c0,#00,#01
	db #0c,#2a,#0c,#87,#36,#06,#36,#06
	db #82,#e0,#00,#01,#0c,#25,#0c,#87
.l6c58 equ $ + 5
	db #36,#06,#36,#06,#ff,#84,#32,#06
	db #33,#06,#36,#0c,#36,#0c,#38,#06
	db #36,#06,#39,#0c,#39,#0c,#38,#06
.l6c72 equ $ + 7
	db #36,#06,#33,#06,#36,#06,#ff,#0e
	db #0c,#1a,#0c,#11,#06,#12,#06,#1a
.l6c7d equ $ + 2
	db #0c,#ff,#84,#36,#0c,#36,#0c,#81
	db #e0,#00,#01,#ff,#1e,#06,#1e,#06
.l6c91 equ $ + 6
	db #1e,#06,#1e,#06,#bf,#ff,#85,#bf
	db #06,#0c,#06,#0c,#09,#06,#0a,#06
	db #0d,#0c,#12,#18,#82,#91,#19,#18
	db #90,#85,#0b,#0c,#17,#0c,#0e,#06
	db #0f,#06,#12,#0c,#0d,#0c,#19,#0c
.l6cba equ $ + 7
	db #10,#06,#11,#06,#14,#0c,#ff,#86
	db #0d,#30,#0d,#30,#0d,#30,#0d,#30
	db #0d,#30,#0d,#30,#0d,#30,#0d,#30
.l6ccc equ $ + 1
	db #ff,#80,#06,#0c,#12,#0c,#0d,#06
.l6cd8 equ $ + 5
	db #0f,#06,#12,#0c,#ff,#80,#0b,#0c
	db #12,#0c,#0e,#06,#0f,#06,#12,#0c
	db #0b,#0c,#12,#0c,#0e,#06,#0f,#06
	db #12,#0c,#01,#0c,#0d,#0c,#03,#0c
	db #0f,#0c,#04,#0c,#10,#0c,#05,#0c
.l6cfe equ $ + 3
	db #11,#0c,#ff,#84,#bf,#2e,#06,#31
	db #06,#33,#06,#31,#12,#2d,#06,#2c
	db #06,#2a,#0c,#2a,#0c,#27,#06,#2a
	db #06,#2c,#06,#2a,#06,#2e,#06,#31
	db #06,#33,#06,#31,#12,#2e,#06,#31
	db #06,#36,#30,#33,#06,#36,#06,#38
	db #06,#36,#12,#33,#06,#36,#06,#39
	db #0c,#39,#0c,#38,#06,#36,#06,#33
	db #06,#36,#06,#35,#0c,#35,#0c,#36
	db #06,#36,#12,#37,#0c,#37,#0c,#38
.l6d50 equ $ + 5
	db #06,#38,#12,#90,#ff,#85,#06,#0c
	db #06,#0c,#c0,#00,#03,#18,#1e,#18
.l6d5c equ $ + 1
	db #ff,#06,#0c,#12,#0c,#03,#0c,#0f
	db #0c,#04,#0c,#10,#0c,#05,#0c,#11
.l6d6d equ $ + 2
	db #0c,#ff,#81,#e0,#00,#01,#ff,#1e
	db #06,#1e,#06,#1e,#06,#1e,#06,#1b
	db #06,#1b,#06,#1b,#06,#1b,#06,#bf
.l6d89 equ $ + 6
.l6d84 equ $ + 1
	db #ff,#01,#0c,#0d,#0c,#ff,#80,#36
	db #06,#36,#06,#36,#06,#36,#06,#82
	db #e0,#00,#01,#0c,#25,#0c,#80,#36
.l6d9f equ $ + 4
	db #06,#36,#06,#ff,#84,#92,#2f,#0c
	db #2f,#12,#2f,#12,#93,#2f,#12,#2f
.l6db1 equ $ + 6
	db #12,#94,#2e,#3c,#90,#ff,#84,#93
	db #34,#0c,#34,#12,#34,#12,#94,#33
.l6dc0 equ $ + 5
	db #12,#33,#12,#90,#ff,#84,#92,#31
	db #3c,#94,#31,#06,#31,#06,#95,#2f
	db #0c,#94,#2e,#0c,#2e,#06,#93,#34
.l6dd6 equ $ + 3
	db #06,#90,#ff,#93,#31,#90,#90,#e0
	db #00,#01,#ff,#81,#22,#06,#22,#06
.l6de6 equ $ + 3
.l6de4 equ $ + 1
	db #ff,#96,#ff,#2d,#06,#2e,#06,#31
	db #0c,#33,#0c,#2e,#06,#31,#96,#ff
.l6df3
	db #33,#0c,#33,#0c,#36,#06,#33,#12
.l6dfc equ $ + 1
	db #ff,#84,#93,#31,#0c,#31,#0c,#31
	db #06,#31,#12,#31,#0c,#31,#0c,#31
	db #06,#31,#12,#31,#06,#31,#0c,#31
	db #06,#31,#0c,#90,#e0,#00,#01,#ff
.l6e21 equ $ + 6
	db #81,#22,#06,#22,#06,#ff,#33,#06
	db #34,#06,#36,#0c,#39,#0c,#38,#06
	db #36,#12,#36,#0c,#33,#06,#36,#06
	db #38,#06,#36,#06,#ff
.l6e38
	db #0f,#0f,#0f,#0d,#08,#06,#05,#04
	db #03,#01,#82,#83,#83,#89,#90,#99
.l6e48
	db #0f,#0d,#07,#04,#03,#02,#02,#01
	db #01,#82,#85,#88,#89,#9c,#ae,#cb
.l6e58
	ld b,#f4
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ld b,#f4
	out (c),a
	ld b,h
	out (c),l
	out (c),e
	ret
;
.music_info
	db "Thing Bounces Back (1987)(Gremlin Graphics)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
