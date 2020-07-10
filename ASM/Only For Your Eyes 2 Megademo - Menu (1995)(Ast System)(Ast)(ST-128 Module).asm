; Music of Only For Your Eyes 2 Megademo - Menu (1995)(Ast System)(Ast)(ST-128 Module).asm
; Ripped by Megachur the 24/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OFYE2MME.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7200

	read "music_header.asm"
	
	jp l7209
	jp l729d
	jp l7281
;
.init_music
.l7209
;
	xor a
	ld hl,l77b4
	call l727a
	ld hl,l77e2
	call l727a
	ld hl,l7810
	call l727a
	ld ix,l77b0
	ld iy,l783a
	ld de,#002e
	ld b,#03
.l7229
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
	djnz l7229
	ld hl,l76c9
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
	ld (l76c5),hl
	ld (l76c7),hl
	ld a,#0c
	ld c,d
	call l76a5
	ld a,#0d
	ld c,d
	jp l76a5
.l727a
	ld b,#2a
.l727c
	ld (hl),a
	inc hl
	djnz l727c
	ret
;
.stop_music
.l7281
;
	ld a,#07
	ld c,#3f
	call l76a5
	ld a,#08
	ld c,#00
	call l76a5
	ld a,#09
	ld c,#00
	call l76a5
	ld a,#0a
	ld c,#00
	jp l76a5
;
.play_music
.l729d
;
	ld hl,l76cb
	dec (hl)
	ld ix,l77b0
	ld bc,l77be
	call l733f
	ld ix,l77de
	ld bc,l77ec
	call l733f
	ld ix,l780c
	ld bc,l781a
	call l733f
	ld hl,l76c4
	ld de,l76cb
	ld b,#06
	call l731c
	ld b,#07
	call l731c
	ld b,#0b
	call l731c
	ld b,#0d
	call l731c
	ld de,l76cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l77cf
	call l72f5
	ld hl,l77fd
	call l72f5
	ld hl,l782b
.l72f5
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
	jr nz,l730a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l730a
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
.l731c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l76a5
.l7327
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l76a5
.l733f
	ld a,(l76cb)
	or a
	jp nz,l73f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l73f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l7327
	or a
	jp z,l73ec
	ld r,a
	and #7f
	cp #10
	jr c,l73c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l753f
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
	jr z,l73a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l73a0
	rrca
	ld c,a
	ld hl,l7840
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
	jr z,l73bf
	ld (ix+#1e),b
.l73bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l73e0
.l73c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l76d0
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
	add e
	add h
	add l
	add (hl)
	add h
.l73e0
	ld a,d
	or a
	jr nz,l73ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l73ee
.l73ec
	ld a,(hl)
	inc hl
.l73ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l73f7
	ld a,(ix+#17)
	or a
	jr nz,l740d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l740d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l7423
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l7423
	ld a,(ix+#0d)
	or a
	jr z,l7431
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l744f
.l7431
	ld a,(ix+#1a)
	or a
	jp z,l7456
	ld c,a
	cp #03
	jr nz,l743e
	xor a
.l743e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l744f
	ld a,(ix+#18)
	dec c
	jr z,l744f
	ld a,(ix+#19)
.l744f
	add (ix+#07)
	ld b,d
	call l753f
.l7456
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l747e
	dec (ix+#1b)
	jr nz,l747e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l74b6
.l747e
	ld a,(ix+#29)
	or a
	jr z,l74b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l74ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l74a4
	ld (ix+#29),#ff
	jr l74ad
.l74a4
	cp (ix+#2b)
	jr nz,l74ad
	ld (ix+#29),#01
.l74ad
	ld b,d
	or a
	jp p,l74b3
	dec b
.l74b3
	ld c,a
	jr l74c1
.l74b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l74c1
	pop hl
	bit 7,(ix+#14)
	jr z,l74ca
	ld h,d
	ld l,d
.l74ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l76a5
	ld c,h
	ld a,(ix+#02)
	call l76a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l751d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l750c
	dec (ix+#09)
	jr nz,l750c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l7504
	xor a
	jr l7509
.l7504
	cp #10
	jr nz,l7509
	dec a
.l7509
	ld (ix+#1e),a
.l750c
	ld a,b
	sub (ix+#1e)
	jr nc,l7513
	xor a
.l7513
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l76a5
.l751d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l76cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l753b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l753b
	ld (l76cc),hl
	ret
.l753f
	ld hl,l76ee
	cp #61
	jr nc,l7549
	add a
	ld c,a
	add hl,bc
.l7549
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l7553
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l7678
	ld (ix+#1e),a
	jp l73e0
.l7565
	dec b
.l7566
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l7571
	neg
.l7571
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
	jp l73e0
.l7587
	dec b
	jr l758b
.l758a
	inc b
.l758b
	call l7678
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l73e0
.l759a
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
	jp l765d
.l75ab
	ld a,(hl)
	inc hl
	or a
	jr z,l75cd
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
.l75cd
	ld (ix+#29),a
	jp l73e0
.l75d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l76cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l76ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l73e0
.l75ed
	ld a,(hl)
	or a
	jr z,l75fe
	call l767a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l73e0
.l75fe
	ld hl,#0101
	ld (l76ca),hl
	jp l73e0
.l7607
	call l7678
	ld (ix+#1e),a
	jp l73e0
.l7610
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l7689
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l7689
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l73e0
.l7632
	ld a,(hl)
	inc hl
	ld (l76c9),a
	jp l73e0
.l763a
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
	jp l73e0
.l7659
	call l7678
	add a
.l765d
	ld b,#00
	ld c,a
	push hl
	ld hl,l78c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l73e0
.l7678
	ld a,(hl)
	inc hl
.l767a
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
.l7689
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l7840
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #41,#53,#54,#20,#53,#59,#53,#54
	db #45,#4d,#2d,#39,#34
.l76a5
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
.l76c4
	ret
.l76cc equ $ + 7
.l76cb equ $ + 6
.l76ca equ $ + 5
.l76c9 equ $ + 4
.l76c7 equ $ + 2
.l76c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l76cf equ $ + 2
.l76ce equ $ + 1
	db #38,#00,#00
.l76d0
	dw l7553,l7566,l7565,l758a
	dw l7587,l759a,l75ab,l75d3
	dw l75ed,l75d3,l7607,l7610
	dw l7632,l763a,l7659
.l76ee
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
.l77b4 equ $ + 4
.l77b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l77be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l77cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l77de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l77e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l77ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l77fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l780c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l7810
	db #00,#00,#00,#00,#00,#00,#00,#00
.l781a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l782b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l783a equ $ + 2
	db #00,#00,#80,#7a,#ad,#7a,#da,#7a
.l7840
	db #e0,#78,#20,#79,#40,#79,#1a,#06
	db #d2,#31,#d2,#31,#d2,#31,#00,#00
	db #d2,#31,#d2,#31,#d2,#31,#00,#00
	db #60,#79,#a0,#79,#40,#79,#14,#0c
	db #d2,#31,#d2,#31,#d2,#31,#00,#00
	db #d2,#31,#d2,#31,#d2,#31,#00,#00
	db #d2,#31,#d2,#31,#d2,#31,#00,#00
	db #d2,#31,#d2,#31,#d2,#31,#00,#00
	db #d2,#31,#d2,#31,#d2,#31,#00,#00
	db #d2,#31,#d2,#31,#d2,#31,#00,#00
	db #d2,#31,#d2,#31,#d2,#31,#00,#00
	db #d2,#31,#d2,#31,#d2,#31,#00,#00
	db #c0,#79,#00,#7a,#20,#7a,#9a,#06
	db #c0,#79,#40,#7a,#60,#7a,#00,#00
	db #d2,#31,#d2,#31,#d2,#31,#00,#00
	db #d2,#31,#d2,#31,#d2,#31,#00,#00
.l78c0
	db #d2,#31,#d2,#31,#d2,#31,#d2,#31
	db #d2,#31,#d2,#31,#d2,#31,#d2,#31
	db #d2,#31,#d2,#31,#d2,#31,#d2,#31
	db #d2,#31,#d2,#31,#d2,#31,#d2,#31
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#ff,#ff,#ff,#ff
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #0f,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#fe,#ff
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #02,#00,#03,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#fe,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#00,#00
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#09,#09,#09
	db #09,#09,#09,#0a,#0a,#0a,#0a,#0a
	db #0a,#09,#09,#09,#09,#09,#09,#09
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0b,#09,#07,#05,#03,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#07,#07,#06,#06,#05
	db #04,#03,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#07,#7b,#00,#0a,#7b,#00,#0a
	db #7b,#00,#60,#7b,#00,#e9,#7b,#00
	db #60,#7b,#00,#0a,#7b,#00,#0a,#7b
	db #00,#60,#7b,#00,#e9,#7b,#00,#60
	db #7b,#00,#72,#7c,#00,#72,#7c,#00
	db #0a,#7b,#80,#80,#7a,#00,#02,#7d
	db #00,#e9,#7b,#00,#e9,#7b,#00,#83
	db #7d,#00,#c8,#7d,#00,#83,#7d,#00
	db #e9,#7b,#00,#e9,#7b,#00,#83,#7d
	db #00,#c8,#7d,#00,#83,#7d,#00,#fe
	db #7d,#00,#fe,#7d,#00,#e9,#7b,#80
	db #ad,#7a,#00,#40,#7e,#00,#c1,#7e
	db #00,#c1,#7e,#00,#40,#7e,#00,#c1
	db #7e,#00,#40,#7e,#00,#c1,#7e,#00
	db #c1,#7e,#00,#40,#7e,#00,#c1,#7e
	db #00,#40,#7e,#00,#42,#7f,#00,#42
	db #7f,#00,#c1,#7e,#80,#da,#7a,#00
	db #40,#ff,#43,#37,#12,#0c,#45,#30
	db #02,#46,#30,#02,#48,#30,#0a,#4a
	db #30,#04,#48,#3b,#10,#0b,#10,#0b
	db #10,#0b,#10,#0b,#10,#0b,#10,#0b
	db #10,#0b,#10,#0b,#11,#0b,#11,#0b
	db #11,#0b,#11,#0b,#11,#0b,#11,#0b
	db #11,#0b,#11,#0b,#12,#0b,#12,#0b
	db #12,#0b,#12,#0b,#12,#0b,#12,#0b
	db #13,#0b,#13,#0b,#14,#0b,#14,#ab
	db #c0,#ab,#c0,#ab,#c0,#ab,#c0,#ab
	db #c0,#ab,#c0,#ab,#c0,#ab,#c0,#ff
	db #ad,#0c,#cd,#b0,#00,#b7,#00,#ad
	db #00,#b0,#00,#b5,#00,#ad,#00,#b0
	db #00,#b4,#0c,#cd,#ad,#00,#b0,#00
	db #b5,#00,#ad,#00,#b0,#00,#b5,#00
	db #b7,#00,#ad,#0c,#cd,#b0,#00,#b7
	db #00,#ad,#00,#b0,#00,#b5,#00,#ad
	db #00,#b0,#00,#b4,#0c,#cd,#ad,#00
	db #b0,#00,#b5,#00,#ad,#00,#b0,#00
	db #b5,#00,#b7,#00,#ae,#0c,#cd,#b2
	db #00,#ba,#00,#ae,#00,#b2,#00,#b9
	db #00,#ae,#00,#b2,#00,#b7,#0c,#cd
	db #ae,#00,#b2,#00,#b5,#00,#ae,#00
	db #b2,#00,#b5,#00,#b7,#00,#ae,#0c
	db #cd,#b2,#00,#ba,#00,#ae,#00,#b2
	db #00,#b9,#00,#ae,#00,#b2,#00,#b7
	db #0c,#cd,#ae,#00,#b2,#00,#b5,#00
	db #ae,#00,#b2,#00,#b5,#00,#b7,#00
	db #ff,#b0,#0c,#cd,#b4,#00,#ba,#00
	db #b0,#00,#b4,#00,#b9,#00,#b0,#00
	db #b4,#00,#b7,#0c,#cd,#b0,#00,#b4
	db #00,#b9,#00,#b0,#00,#b4,#00,#b9
	db #00,#ba,#00,#b0,#0c,#cd,#b4,#00
	db #ba,#00,#b0,#00,#b4,#00,#b9,#00
	db #b0,#00,#b4,#00,#b7,#0c,#cd,#b0
	db #00,#b4,#00,#b9,#00,#b0,#00,#b4
	db #00,#b9,#00,#ba,#00,#b0,#0c,#cd
	db #b5,#00,#bc,#00,#b0,#00,#b5,#00
	db #ba,#00,#b0,#00,#b5,#00,#b9,#0c
	db #cd,#b0,#00,#b5,#00,#ba,#00,#b0
	db #00,#b5,#00,#ba,#00,#bc,#00,#b0
	db #0c,#cd,#b5,#00,#bc,#00,#b0,#00
	db #b5,#00,#ba,#00,#b0,#00,#b5,#00
	db #b9,#0c,#cd,#b0,#00,#b5,#00,#ba
	db #00,#b0,#00,#b5,#00,#ba,#00,#bc
	db #00,#ff,#b0,#0c,#cd,#b4,#00,#ba
	db #00,#b0,#00,#b4,#00,#b9,#00,#b0
	db #00,#b4,#00,#b7,#0c,#cd,#b0,#00
	db #b4,#00,#b9,#00,#b0,#00,#b4,#00
	db #b9,#00,#ba,#00,#b0,#0c,#cd,#b4
	db #00,#ba,#00,#b0,#00,#b4,#00,#b9
	db #00,#b0,#00,#b4,#00,#b7,#0c,#cd
	db #b0,#00,#b4,#00,#b9,#00,#b0,#00
	db #b4,#00,#b9,#00,#ba,#00,#b0,#0c
	db #cd,#b5,#00,#bc,#00,#b0,#00,#b5
	db #0c,#cd,#ba,#00,#b0,#00,#b5,#00
	db #b9,#0c,#cd,#b0,#00,#b5,#00,#ba
	db #00,#b0,#0c,#cd,#b5,#00,#ba,#00
	db #bc,#00,#b0,#0c,#cd,#b5,#00,#bc
	db #00,#b0,#00,#b5,#0c,#cd,#ba,#00
	db #b0,#00,#b5,#00,#b9,#0c,#cd,#b0
	db #00,#b5,#00,#ba,#00,#b0,#0c,#cd
	db #b5,#0c,#cd,#ba,#0c,#cd,#bc,#0c
	db #cd,#ff,#ad,#00,#b0,#00,#b7,#00
	db #ad,#00,#b0,#00,#b5,#00,#ad,#00
	db #b0,#00,#b4,#00,#ad,#00,#b0,#00
	db #b5,#00,#ad,#00,#b0,#00,#b5,#00
	db #b7,#00,#ad,#00,#b0,#00,#b7,#00
	db #ad,#00,#b0,#00,#b5,#00,#ad,#00
	db #b0,#00,#b4,#00,#ad,#00,#b0,#00
	db #b5,#00,#ad,#00,#b0,#00,#b5,#00
	db #b7,#00,#ae,#00,#b2,#00,#ba,#00
	db #ae,#00,#b2,#00,#b9,#00,#ae,#00
	db #b2,#00,#b7,#00,#ae,#00,#b2,#00
	db #b5,#00,#ae,#00,#b2,#00,#b5,#00
	db #b7,#00,#ae,#00,#b2,#00,#ba,#00
	db #ae,#00,#b2,#00,#b9,#00,#ae,#00
	db #b2,#00,#b7,#00,#ae,#00,#b2,#00
	db #b5,#00,#ae,#00,#b2,#00,#b5,#00
	db #b7,#00,#ff,#54,#37,#12,#04,#51
	db #30,#02,#cf,#30,#51,#30,#07,#cf
	db #30,#d1,#30,#56,#30,#03,#54,#30
	db #03,#53,#30,#02,#54,#30,#03,#53
	db #30,#03,#4f,#30,#02,#51,#30,#03
	db #4f,#30,#03,#4d,#30,#02,#4f,#30
	db #06,#ca,#30,#cd,#30,#4f,#30,#03
	db #51,#30,#03,#52,#30,#02,#54,#30
	db #03,#52,#30,#03,#4f,#30,#02,#ff
	db #4f,#37,#12,#04,#51,#30,#02,#4f
	db #30,#08,#cf,#30,#d1,#30,#52,#30
	db #03,#54,#30,#03,#56,#30,#02,#58
	db #30,#03,#59,#30,#03,#58,#30,#02
	db #59,#30,#08,#54,#30,#02,#52,#30
	db #04,#51,#30,#0a,#51,#30,#03,#52
	db #30,#03,#54,#30,#02,#ff,#4f,#37
	db #12,#04,#51,#30,#02,#4f,#30,#06
	db #2b,#c0,#02,#cf,#37,#12,#d1,#30
	db #52,#30,#03,#d4,#30,#2b,#c0,#02
	db #56,#37,#12,#02,#58,#30,#03,#d9
	db #30,#2b,#c0,#02,#58,#37,#12,#02
	db #59,#30,#04,#2b,#c0,#08,#2b,#c0
	db #08,#2b,#c0,#06,#2b,#c0,#02,#ab
	db #c0,#ab,#c0,#ab,#c0,#ab,#c0,#ff
	db #b9,#00,#bc,#00,#c3,#00,#b9,#00
	db #bc,#00,#c1,#00,#b9,#00,#bc,#00
	db #c0,#00,#b9,#00,#bc,#00,#c1,#00
	db #b9,#00,#bc,#00,#c1,#00,#c3,#00
	db #b9,#00,#bc,#00,#c3,#00,#b9,#00
	db #bc,#00,#c1,#00,#b9,#00,#bc,#00
	db #c0,#00,#b9,#00,#bc,#00,#c1,#00
	db #b9,#00,#bc,#00,#c1,#00,#c3,#00
	db #ba,#00,#be,#00,#c6,#00,#ba,#00
	db #be,#00,#c5,#00,#ba,#00,#be,#00
	db #c3,#00,#ba,#00,#be,#00,#c1,#00
	db #ba,#00,#be,#00,#c1,#00,#c3,#00
	db #ba,#00,#be,#00,#c6,#00,#ba,#00
	db #be,#00,#c5,#00,#ba,#00,#be,#00
	db #c3,#00,#ba,#00,#be,#00,#c1,#00
	db #ba,#00,#be,#00,#c1,#00,#c3,#00
	db #ff,#bc,#00,#c0,#00,#c6,#00,#bc
	db #00,#c0,#00,#c5,#00,#bc,#00,#c0
	db #00,#c3,#00,#bc,#00,#c0,#00,#c5
	db #00,#bc,#00,#c0,#00,#c5,#00,#c6
	db #00,#bc,#00,#c0,#00,#c6,#00,#bc
	db #00,#c0,#00,#c5,#00,#bc,#00,#c0
	db #00,#c3,#00,#bc,#00,#c0,#00,#c5
	db #00,#bc,#00,#c0,#00,#c5,#00,#c6
	db #00,#bc,#00,#c1,#00,#c8,#00,#bc
	db #00,#c1,#00,#c6,#00,#bc,#00,#c1
	db #00,#c5,#00,#bc,#00,#c1,#00,#c6
	db #00,#bc,#00,#c1,#00,#c6,#00,#c8
	db #00,#bc,#00,#c1,#00,#c8,#00,#bc
	db #00,#c1,#00,#c6,#00,#bc,#00,#c1
	db #00,#c5,#00,#bc,#00,#c1,#00,#c6
	db #00,#bc,#00,#c1,#00,#c6,#00,#c8
	db #00,#ff,#bc,#00,#c0,#00,#c6,#00
	db #bc,#00,#c0,#00,#c5,#00,#bc,#00
	db #c0,#00,#c3,#00,#bc,#00,#c0,#00
	db #c5,#00,#bc,#00,#c0,#00,#c5,#00
	db #c6,#00,#bc,#00,#c0,#00,#c6,#00
	db #bc,#00,#c0,#00,#c5,#00,#bc,#00
	db #c0,#00,#c3,#00,#bc,#00,#c0,#00
	db #c5,#00,#bc,#00,#c0,#00,#c5,#00
	db #c6,#00,#bc,#00,#c1,#00,#c8,#00
	db #bc,#00,#c1,#0c,#cd,#c6,#00,#bc
	db #00,#c1,#00,#c5,#00,#bc,#00,#c1
	db #00,#c6,#00,#bc,#0c,#cd,#c1,#00
	db #c6,#00,#c8,#00,#bc,#00,#c1,#00
	db #c8,#00,#bc,#00,#c1,#0c,#cd,#c6
	db #00,#bc,#00,#c1,#00,#c5,#00,#bc
	db #00,#c1,#00,#c6,#00,#bc,#0c,#cd
	db #c1,#0c,#cd,#c6,#0c,#cd,#c8,#0c
	db #cd,#ff
;
.music_info
	db "Only For Your Eyes 2 Megademo - Menu (1995)(Ast System)(Ast)",0
	db "ST-128 Module",0

	read "music_end.asm"
