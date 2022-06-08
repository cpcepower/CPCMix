; Music of The First Try! - Part 1 (1996)(Exodus)(Koopa Troopa)(ST-128 Module)
; Ripped by Megachur the 06/06/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THEFITP1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #7400

	read "music_header.asm"

	jp l7409
	jp l749d
	jp l7481
;
.init_music
.l7409
;
	xor a
	ld hl,l79b4
	call l747a
	ld hl,l79e2
	call l747a
	ld hl,l7a10
	call l747a
	ld ix,l79b0
	ld iy,l7a3a
	ld de,#002e
	ld b,#03
.l7429
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l7429
	ld hl,l78c9
	ld (hl),#06
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l78c5),hl
	ld (l78c7),hl
	ld a,#0c
	ld c,d
	call l78a5
	ld a,#0d
	ld c,d
	jp l78a5
.l747a
	ld b,#2a
.l747c
	ld (hl),a
	inc hl
	djnz l747c
	ret
;
.stop_music
.l7481
;
	ld a,#07
	ld c,#3f
	call l78a5
	ld a,#08
	ld c,#00
	call l78a5
	ld a,#09
	ld c,#00
	call l78a5
	ld a,#0a
	ld c,#00
	jp l78a5
;
.play_music
.l749d
;
	ld hl,l78cb
	dec (hl)
	ld ix,l79b0
	ld bc,l79be
	call l753f
	ld ix,l79de
	ld bc,l79ec
	call l753f
	ld ix,l7a0c
	ld bc,l7a1a
	call l753f
	ld hl,l78c4
	ld de,l78cb
	ld b,#06
	call l751c
	ld b,#07
	call l751c
	ld b,#0b
	call l751c
	ld b,#0d
	call l751c
	ld de,l78cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l79cf
	call l74f5
	ld hl,l79fd
	call l74f5
	ld hl,l7a2b
.l74f5
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l750a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l750a
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l751c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l78a5
.l7527
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l78a5
.l753f
	ld a,(l78cb)
	or a
	jp nz,l75f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l75f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l7527
	or a
	jp z,l75ec
	ld r,a
	and #7f
	cp #10
	jr c,l75c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l773f
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l75a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l75a0
	rrca
	ld c,a
	ld hl,l7a40
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l75bf
	ld (ix+#1e),b
.l75bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l75e0
.l75c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l78d0
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add (hl)
	add a
	add a
	add h
	add l
.l75e0
	ld a,d
	or a
	jr nz,l75ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l75ee
.l75ec
	ld a,(hl)
	inc hl
.l75ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l75f7
	ld a,(ix+#17)
	or a
	jr nz,l760d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l760d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l7623
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l7623
	ld a,(ix+#0d)
	or a
	jr z,l7631
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l764f
.l7631
	ld a,(ix+#1a)
	or a
	jp z,l7656
	ld c,a
	cp #03
	jr nz,l763e
	xor a
.l763e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l764f
	ld a,(ix+#18)
	dec c
	jr z,l764f
	ld a,(ix+#19)
.l764f
	add (ix+#07)
	ld b,d
	call l773f
.l7656
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l767e
	dec (ix+#1b)
	jr nz,l767e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l76b6
.l767e
	ld a,(ix+#29)
	or a
	jr z,l76b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l76ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l76a4
	ld (ix+#29),#ff
	jr l76ad
.l76a4
	cp (ix+#2b)
	jr nz,l76ad
	ld (ix+#29),#01
.l76ad
	ld b,d
	or a
	jp p,l76b3
	dec b
.l76b3
	ld c,a
	jr l76c1
.l76b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l76c1
	pop hl
	bit 7,(ix+#14)
	jr z,l76ca
	ld h,d
	ld l,d
.l76ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l78a5
	ld c,h
	ld a,(ix+#02)
	call l78a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l771d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l770c
	dec (ix+#09)
	jr nz,l770c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l7704
	xor a
	jr l7709
.l7704
	cp #10
	jr nz,l7709
	dec a
.l7709
	ld (ix+#1e),a
.l770c
	ld a,b
	sub (ix+#1e)
	jr nc,l7713
	xor a
.l7713
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l78a5
.l771d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l78cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l773b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l773b
	ld (l78cc),hl
	ret
.l773f
	ld hl,l78ee
	cp #61
	jr nc,l7749
	add a
	ld c,a
	add hl,bc
.l7749
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l7753
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l7878
	ld (ix+#1e),a
	jp l75e0
.l7765
	dec b
.l7766
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l7771
	neg
.l7771
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l75e0
.l7787
	dec b
	jr l778b
.l778a
	inc b
.l778b
	call l7878
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l75e0
.l779a
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l785d
.l77ab
	ld a,(hl)
	inc hl
	or a
	jr z,l77cd
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l77cd
	ld (ix+#29),a
	jp l75e0
.l77d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l78cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l78ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l75e0
.l77ed
	ld a,(hl)
	or a
	jr z,l77fe
	call l787a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l75e0
.l77fe
	ld hl,#0101
	ld (l78ca),hl
	jp l75e0
.l7807
	call l7878
	ld (ix+#1e),a
	jp l75e0
.l7810
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l7889
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l7889
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l75e0
.l7832
	ld a,(hl)
	inc hl
	ld (l78c9),a
	jp l75e0
.l783a
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l75e0
.l7859
	call l7878
	add a
.l785d
	ld b,#00
	ld c,a
	push hl
	ld hl,l7ac0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l75e0
.l7878
	ld a,(hl)
	inc hl
.l787a
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l7889
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l7a40
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l78a5
	di
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
	ei
.l78c4
	ret
.l78cc equ $ + 7
.l78cb equ $ + 6
.l78ca equ $ + 5
.l78c9 equ $ + 4
.l78c7 equ $ + 2
.l78c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l78cf equ $ + 2
.l78ce equ $ + 1
	db #38,#00,#00
.l78d0
	dw l7753,l7766,l7765,l778a
	dw l7787,l779a,l77ab,l77d3
	dw l77ed,l77d3,l7807,l7810
	dw l7832,l783a,l7859
.l78ee
	dw #0000,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
	dw #03bc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
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
	dw #000f
.l79b4 equ $ + 4
.l79b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l79be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l79cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l79de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l79e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l79ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l79fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7a0c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l7a10
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7a1a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7a2b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7a3a equ $ + 2
	db #00,#00,#80,#7d,#95,#7d,#aa,#7d
.l7a40
	db #e0,#7a,#20,#7b,#40,#7b,#80,#00
	db #60,#7b,#a0,#7b,#c0,#7b,#c0,#00
	db #76,#7b,#76,#8b,#48,#af,#24,#59
	db #e0,#7b,#20,#7c,#40,#7c,#1a,#06
	db #60,#7c,#a0,#7c,#40,#7b,#40,#00
	db #c0,#7c,#00,#7d,#40,#7b,#48,#00
	db #c0,#7c,#20,#7d,#40,#7c,#00,#00
	db #a4,#57,#76,#8b,#76,#8b,#a4,#57
	db #a4,#57,#76,#8b,#24,#69,#d2,#33
	db #f2,#35,#44,#6a,#c4,#6a,#42,#37
	db #c2,#37,#12,#b1,#32,#b1,#d2,#33
	db #a4,#67,#a4,#67,#a4,#67,#d2,#33
	db #a4,#67,#a4,#67,#a4,#67,#d2,#33
	db #a4,#67,#a4,#67,#a4,#67,#d2,#33
	db #a4,#67,#52,#35,#d2,#33,#20,#02
	db #72,#36,#f2,#36,#42,#37,#f0,#03
.l7ac0
	db #40,#7d,#60,#7d,#d2,#33,#d2,#33
	db #d2,#33,#d2,#33,#d2,#33,#d2,#33
	db #d2,#33,#d2,#33,#d2,#33,#d2,#33
	db #d2,#33,#d2,#33,#d2,#33,#d2,#33
	db #80,#01,#00,#00,#20,#02,#a0,#02
	db #20,#03,#70,#03,#f0,#03,#60,#04
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0e,#0d,#0b,#08,#04
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #10,#01,#00,#00,#00,#02,#60,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0e,#0c,#0a,#08
	db #06,#04,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#00,#02,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#00,#04,#00,#00,#00,#00,#00
	db #fc,#ff,#fc,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#40,#05,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0a,#0d,#0c,#0b,#0a,#09,#07,#05
	db #03,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0b,#0f,#0f,#0f,#0e,#0e,#0e
	db #0d,#0d,#0d,#0c,#0c,#0c,#0c,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#09
	db #09,#09,#09,#09,#08,#08,#08,#08
	db #0e,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#08,#07,#07,#07,#06
	db #06,#06,#05,#05,#05,#04,#04,#04
	db #e8,#e8,#e8,#e8,#e8,#e8,#e8,#e8
	db #e8,#e8,#e8,#e8,#e8,#e8,#e8,#e8
	db #e8,#e8,#e8,#e8,#e8,#e8,#e8,#e8
	db #e8,#e8,#e8,#e8,#e8,#e8,#e8,#e8
	db #00,#07,#03,#00,#07,#03,#00,#07
	db #03,#00,#07,#03,#00,#07,#03,#00
	db #07,#03,#00,#07,#03,#00,#07,#03
	db #00,#07,#03,#00,#07,#03,#00,#07
	db #00,#bf,#7d,#00,#bf,#7d,#00,#bf
	db #7d,#00,#bf,#7d,#00,#bf,#7d,#00
	db #bf,#7d,#80,#80,#7d,#00,#40,#7e
	db #00,#40,#7e,#00,#40,#7e,#00,#40
	db #7e,#00,#40,#7e,#00,#40,#7e,#80
	db #95,#7d,#00,#b1,#7e,#00,#b1,#7e
	db #00,#ee,#7e,#00,#ee,#7e,#00,#57
	db #7f,#00,#57,#7f,#80,#aa,#7d,#a7
	db #30,#a7,#30,#a7,#30,#a7,#30,#a2
	db #30,#a2,#30,#a5,#30,#a5,#30,#a7
	db #30,#a7,#30,#a7,#30,#a7,#30,#a2
	db #30,#a2,#30,#a5,#30,#a5,#30,#a7
	db #30,#a7,#30,#a7,#30,#a7,#30,#a2
	db #30,#a2,#30,#a5,#30,#a5,#30,#a7
	db #30,#a7,#30,#a7,#30,#a7,#30,#a2
	db #30,#a2,#30,#a5,#30,#a5,#30,#aa
	db #30,#aa,#30,#aa,#30,#aa,#30,#a5
	db #30,#a5,#30,#a8,#30,#a8,#30,#aa
	db #30,#aa,#30,#aa,#30,#aa,#30,#a5
	db #30,#a5,#30,#a8,#30,#a8,#30,#a7
	db #30,#a7,#30,#a7,#30,#a7,#30,#a2
	db #30,#a2,#30,#a5,#30,#a5,#30,#a7
	db #30,#a7,#30,#a7,#30,#a7,#30,#a2
	db #30,#a2,#30,#a5,#30,#a5,#30,#ff
	db #28,#00,#02,#bf,#40,#ba,#40,#28
	db #10,#02,#bf,#40,#ba,#40,#28,#00
	db #02,#bf,#40,#ba,#40,#28,#10,#02
	db #bf,#40,#ba,#40,#28,#00,#02,#bf
	db #40,#ba,#40,#28,#10,#02,#bf,#40
	db #ba,#40,#28,#00,#02,#bf,#40,#ba
	db #40,#28,#10,#02,#bf,#40,#ba,#40
	db #28,#00,#02,#c2,#40,#bd,#40,#28
	db #10,#02,#c2,#40,#bd,#40,#28,#00
	db #02,#c2,#40,#bd,#40,#28,#10,#02
	db #c2,#40,#bd,#40,#28,#00,#02,#bf
	db #40,#ba,#40,#28,#10,#02,#bf,#40
	db #ba,#40,#28,#00,#02,#bf,#40,#ba
	db #40,#28,#10,#02,#bf,#40,#ba,#40
	db #ff,#46,#5f,#40,#4b,#50,#04,#52
	db #50,#04,#4b,#50,#04,#4b,#50,#02
	db #49,#50,#04,#4e,#50,#04,#4b,#50
	db #02,#49,#50,#02,#4b,#50,#02,#49
	db #50,#04,#4e,#50,#04,#55,#50,#04
	db #4e,#50,#04,#4b,#50,#02,#49,#50
	db #04,#4e,#50,#04,#4b,#50,#02,#49
	db #50,#02,#4b,#50,#02,#ff,#4b,#6f
	db #21,#4b,#60,#02,#4b,#60,#02,#4b
	db #60,#02,#4b,#60,#02,#4b,#60,#02
	db #cb,#60,#cb,#60,#cb,#60,#cb,#60
	db #4b,#60,#02,#4b,#60,#02,#4b,#60
	db #02,#4b,#60,#02,#4b,#60,#02,#4b
	db #60,#02,#cb,#60,#cb,#60,#cb,#60
	db #cb,#60,#4e,#60,#02,#4e,#60,#02
	db #4e,#60,#02,#4e,#60,#02,#4e,#60
	db #02,#4e,#60,#02,#ce,#60,#ce,#60
	db #ce,#60,#ce,#60,#4b,#60,#02,#4b
	db #60,#02,#4b,#60,#02,#4b,#60,#02
	db #4b,#60,#02,#4b,#60,#02,#cb,#60
	db #cb,#60,#cb,#60,#cb,#60,#ff,#33
	db #51,#20,#33,#50,#02,#2e,#50,#02
	db #31,#50,#02,#33,#50,#02,#33,#50
	db #02,#fe,#02,#31,#50,#02,#33,#50
	db #02,#33,#50,#02,#36,#50,#02,#31
	db #50,#02,#33,#50,#02,#33,#50,#02
	db #fe,#04,#36,#50,#02,#36,#50,#02
	db #31,#50,#02,#34,#50,#02,#36,#50
	db #02,#36,#50,#02,#fe,#02,#34,#50
	db #02,#33,#50,#02,#33,#50,#02,#36
	db #50,#02,#31,#50,#02,#33,#50,#02
	db #fe,#06,#ff

;
.music_info
	db "The First Try! - Part 1 (1996)(Exodus)(Koopa Troopa)",0
	db "ST-128 Module",0

	read "music_end.asm"
