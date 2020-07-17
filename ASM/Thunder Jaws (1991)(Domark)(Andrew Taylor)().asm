; Music of Thunder Jaws (1991)(Domark)(Andrew Taylor)()
; Ripped by Megachur the 04/07/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THUNDERJ.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #71d0

	read "music_header.asm"

	jp l7267	; play music
	jp l71f1	; init music
	jp l71eb	; sound fx ?
;
.stop_music
;
	xor a
	ld (l7241),a
	ld d,#08
	call l7b35
	inc d
	call l7b35
	inc d
	call l7b35
	ret
.l71eb
	ld (l7244),a
	jp l7267
;
.real_init_music	; hl = #l7ba7
.l71f1
;
	ld a,(hl)
	ld (l7240),a
	inc hl
	ld a,(hl)
	ld (l723f),a
	inc hl
	ld (l725c),hl
	ld (l7242),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l724c),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l724e),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l7250),de
	xor a
	ld (l7264),a
	ld (l7265),a
	ld (l7266),a
	ld (l7244),a
	ld (l725a),a
	ld (l7246),a
	ld (l7247),a
	ld (l7248),a
	inc a
	ld (l7241),a
	ld a,(l725b)
	ld (l724b),a
	jp l7267
.l7246 equ $ + 7
.l7244 equ $ + 5
.l7242 equ $ + 3
.music_end equ $ + 2
.l7241 equ $ + 2
.l7240 equ $ + 1
.l723f
	db #09,#03,#00,#00,#00,#00,#00,#01
.l724e equ $ + 7
.l724c equ $ + 5
.l724b equ $ + 4
.l7249 equ $ + 2
.l7248 equ $ + 1
.l7247
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7256 equ $ + 7
.l7255 equ $ + 6
.l7254 equ $ + 5
.l7252 equ $ + 3
.l7250 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#67
.l725e equ $ + 7
.l725c equ $ + 5
.l725b equ $ + 4
.l725a equ $ + 3
.l7258 equ $ + 1
	db #7b,#21,#75,#00,#40,#00,#00,#00
.l7266 equ $ + 7
.l7265 equ $ + 6
.l7264 equ $ + 5
.l7262 equ $ + 3
.l7261 equ $ + 2
.l7260 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.play_music
.l7267
;
	ld a,(l7241)
	or a
	ret z
	ld a,(l7244)
	or a
	jr z,l7293
	ex af,af'
	ld a,(l7249)
	or a
	jr z,l727f
	dec a
	ld (l7249),a
	jr l7293
.l727f
	ex af,af'
	ld (l7249),a
	ld a,(l723f)
	dec a
	ld (l723f),a
	cp #ff
	jr nz,l7293
	xor a
	ld (l7241),a
	ret
.l7293
	ld a,(l725a)
	or a
	jr z,l72a0
	dec a
	ld (l725a),a
	jp l73f2
.l72a0
	ld a,(l7240)
	ld (l725a),a
	ld a,(l724b)
	dec a
	ld (l724b),a
	or a
	jr nz,l72f5
	ld a,(l725b)
	ld (l724b),a
	ld hl,(l7242)
	ld de,#0006
	add hl,de
.l72bd
	ld (l7242),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,d
	or a
	jr nz,l72e1
	ld a,e
	cp #ff
	jr nz,l72d2
	xor a
	ld (l7241),a
	ret
.l72d2
	ld l,a
	ld h,#00
	add hl,hl
	push hl
	add hl,hl
	pop de
	add hl,de
	ld de,(l725c)
	add hl,de
	jr l72bd
.l72e1
	ld (l724c),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l724e),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l7250),de
.l72f5
	ld a,(l7264)
	or a
	jr z,l7301
	dec a
	ld (l7264),a
	jr l7311
.l7301
	ld hl,(l724c)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l724c),hl
	ex de,hl
	ld a,#00
	call l734d
.l7311
	ld a,(l7265)
	or a
	jr z,l731d
	dec a
	ld (l7265),a
	jr l732d
.l731d
	ld hl,(l724e)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l724e),hl
	ex de,hl
	ld a,#01
	call l734d
.l732d
	ld a,(l7266)
	or a
	jr z,l7339
	dec a
	ld (l7266),a
	jr l7349
.l7339
	ld hl,(l7250)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l7250),hl
	ex de,hl
	ld a,#02
	call l734d
.l7349
	call l73f2
	ret
.l734d
	ld (l725e),a
	ld (l7260),hl
	ld a,l
	and #7f
	ld (l7262),a
	cp #54
	jr z,l7366
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ex de,hl
.l7366
	ld a,(l7261)
	ld c,a
	and #38
	srl a
	srl a
	srl a
	and #07
	ld l,a
	ld h,#00
	ld bc,l73ea
	add hl,bc
	ld a,(hl)
	ld hl,(l725e)
	ld h,#00
	ld bc,l7264
	add hl,bc
	ld (hl),a
	ld a,(l7262)
	cp #54
	jr nz,l738e
	ret
.l738e
	ld a,(l725e)
	ld c,a
	ld a,(l7261)
	and #07
	ex de,hl
	call l76fb
	ld a,(l7260)
	and #80
	ret z
	ld e,(ix+#09)
	ld d,(ix+#0a)
	ld (ix+#09),l
	ld (ix+#0a),h
	ld (ix+#0c),e
	ld (ix+#0d),d
	ld a,(l7261)
	and #c0
	srl a
	srl a
	srl a
	srl a
	srl a
	srl a
	or a
	jr nz,l73cb
	ld a,#01
	jr l73d2
.l73cb
	cp #03
	jr nz,l73d1
	ld a,#08
.l73d1
	add a
.l73d2
	neg
	ld c,a
	ld a,d
	cp h
	jr nz,l73db
	ld a,e
	cp l
.l73db
	jr c,l73e1
	ld a,c
	neg
	ld c,a
.l73e1
	ld (ix+#0b),c
	ld a,#01
	ld (ix+#08),a
	ret
.l73ea
	nop
	ld bc,#0302
	dec b
	rlca
	rrca
	ccf
.l73f2
	ld ix,l7ad5
	ld b,#03
.l73f8
	push bc
	call l7405
	ld de,#0020
	add ix,de
	pop bc
	djnz l73f8
	ret
.l7405
	ld a,(ix+#1b)
	ld l,a
	ld h,#00
	ld de,l7246
	add hl,de
	ld a,(hl)
	or a
	ret nz
	ld a,(ix+#01)
	or a
	jr nz,l7423
	ld a,(ix+#1b)
	or #08
	ld d,a
	xor a
	call l7b35
	ret
.l7423
	cp #ff
	jr z,l742b
	dec a
	ld (ix+#01),a
.l742b
	call l757b
	call l747c
	ld a,(ix+#1d)
	add a
	add a
	add a
	or (ix+#1c)
	cpl
	and #09
	ld c,a
	ld b,#f6
	ld a,(ix+#1b)
	or a
	jr z,l744e
.l7446
	sla c
	scf
	sla b
	dec a
	jr nz,l7446
.l744e
	ld a,(l7255)
	and b
	or c
	ld (l7255),a
	ld d,#07
	call l7b35
	ld hl,(l7252)
	call l76d1
	ld a,(ix+#1b)
	add a
	ld d,a
	ld a,l
	call l7b35
	inc d
	ld a,h
	call l7b35
	ld a,(ix+#1b)
	or #08
	ld d,a
	ld a,(l7254)
	call l7b35
	ret
.l747c
	ld a,(ix+#03)
	or a
	jr z,l74d8
	ld a,(ix+#18)
	or a
	jr nz,l74d0
	ld l,(ix+#16)
	ld h,(ix+#17)
	ld a,(hl)
	or a
	jr nz,l749e
	ld a,(ix+#19)
	ld (ix+#00),a
	xor a
	ld (ix+#03),a
	jr l74da
.l749e
	inc hl
	ld c,a
	and #0f
	cp #0f
	jr nz,l74b9
	ld a,(ix+#03)
	dec a
	add a
	add a
	add a
	add a
	ld e,a
	ld d,#00
	ld hl,(l7258)
	add hl,de
	ld a,(hl)
	ld c,a
	and #0f
.l74b9
	ld (ix+#18),a
	ld a,c
	and #f0
	srl a
	srl a
	srl a
	srl a
	ld (ix+#19),a
	ld (ix+#16),l
	ld (ix+#17),h
.l74d0
	dec (ix+#18)
	ld a,(ix+#19)
	jr l74da
.l74d8
	ld a,#0f
.l74da
	ld (l7254),a
	ld e,a
	ld a,#0f
	sub (ix+#00)
	neg
	add e
	cp #10
	jr c,l74eb
	xor a
.l74eb
	ld e,a
	ld a,(l723f)
	ld d,a
	ld a,#0f
	sub d
	neg
	add e
	cp #10
	jr c,l74fb
	xor a
.l74fb
	ld (l7254),a
	ld a,(ix+#05)
	ex af,af'
	or a
	ret z
	ld a,(ix+#1a)
	or a
	jr z,l750f
	dec a
	ld (ix+#1a),a
	ret
.l750f
	ld a,(ix+#04)
	ld (ix+#1a),a
	ex af,af'
	neg
	ld e,a
	ld a,(l7254)
	add e
	ld (l7254),a
	ret
	db #f8,#e6,#d6,#c6,#b6,#a6,#96,#86
	db #76,#66,#56,#46,#36,#26,#06,#00
	db #f4,#e4,#d4,#c4,#b4,#a4,#94,#84
	db #74,#64,#54,#44,#34,#24,#04,#00
	db #f4,#e2,#d2,#c2,#b2,#a2,#92,#82
	db #72,#62,#52,#42,#32,#22,#02,#00
	db #f8,#e8,#d8,#c8,#b8,#a8,#98,#88
	db #78,#68,#58,#48,#38,#28,#08,#00
	db #f1,#e1,#d1,#c1,#a1,#91,#81,#61
	db #51,#41,#31,#21,#00,#28,#48,#58
	db #78,#88,#98,#b8,#d8,#f8,#c8,#aa
	db #8a,#00
.l757b
	ld a,(ix+#08)
	or a
	jr z,l75a8
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld e,(ix+#09)
	ld d,(ix+#0a)
	ld a,h
	cp d
	jr nz,l7595
	ld a,l
	cp e
	jr z,l75a8
.l7595
	ld h,#00
	ld a,(ix+#0b)
	cp #11
	jr c,l75a0
	ld h,#ff
.l75a0
	ld l,a
	add hl,de
	ld (ix+#09),l
	ld (ix+#0a),h
.l75a8
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld (l7252),hl
	ld a,(ix+#0e)
	or a
	jr z,l7600
	ld e,a
	ld a,(ix+#11)
	or a
	jr z,l75c7
	dec a
	ld (ix+#11),a
	ld a,(ix+#1e)
	jr l75ed
.l75c7
	ld a,(ix+#0f)
	ld (ix+#11),a
	ld a,e
	add a
	ld l,a
	ld h,#00
	ld de,l7657
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#10)
	ld a,l
	ld h,#00
	add hl,de
	inc a
	ld (ix+#10),a
	ld a,(hl)
	cp #ff
	jr nz,l75ed
	xor a
	ld (ix+#10),a
.l75ed
	ld l,a
	ld h,#00
	ld (ix+#1e),a
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,(l7252)
	add hl,de
	ld (l7252),hl
.l7600
	ld a,(ix+#13)
	or a
	ret z
	ex af,af'
	ld a,(ix+#14)
	or a
	jr z,l7612
	dec a
	ld (ix+#14),a
	jr l7644
.l7612
	ld a,(ix+#06)
	ld (ix+#14),a
	ex af,af'
	ld l,(ix+#15)
	cp #ff
	jr z,l7630
	add l
	ld (ix+#15),a
	ld l,(ix+#07)
	cp l
	jr nz,l7644
	ld a,#ff
	ld (ix+#13),a
	ret
.l7630
	add l
	ld (ix+#15),a
	ex af,af'
	ld a,(ix+#07)
	neg
	ld l,a
	ex af,af'
	cp l
	jr nz,l7644
	ld a,#01
	ld (ix+#13),a
.l7644
	ld e,(ix+#15)
	ld d,#00
	bit 7,e
	jr z,l764f
	ld d,#ff
.l764f
	ld hl,(l7252)
	add hl,de
	ld (l7252),hl
	ret
.l7657
	dw #0000,l7677,l767a,l767d
	dw l7681,l7684,l7688,l768c
	dw l7691,l7694,l7698,l769c
	dw l76a1,l76a5,l76aa,l76af
.l767d equ $ + 6
.l767a equ $ + 3
.l7677
	db #00,#03,#ff,#00,#04,#ff,#00,#03
.l7684 equ $ + 5
.l7681 equ $ + 2
	db #04,#ff,#00,#07,#ff,#00,#03,#07
.l768c equ $ + 5
.l7688 equ $ + 1
	db #ff,#00,#04,#07,#ff,#00,#03,#04
.l7694 equ $ + 5
.l7691 equ $ + 2
	db #07,#ff,#00,#0c,#ff,#00,#03,#0c
.l769c equ $ + 5
.l7698 equ $ + 1
	db #ff,#00,#04,#0c,#ff,#00,#03,#04
.l76a5 equ $ + 6
.l76a1 equ $ + 2
	db #0c,#ff,#00,#07,#0c,#ff,#00,#03
.l76aa equ $ + 3
	db #07,#0c,#ff,#00,#04,#07,#0c,#ff
.l76af
	db #00,#03,#04,#07,#0c,#ff,#01,#fd
	db #ff
	xor a
	ld d,#08
	call l7b35
	inc d
	call l7b35
	inc d
	call l7b35
	ld d,#07
	ld a,#c0
	call l7b35
	ld (l7255),a
	ret
.l76d1
	ld de,#0180
	add hl,de
	ld de,#0180
	ld b,#00
.l76da
	ld a,h
	cp d
	jr nz,l76e0
	ld a,l
	cp e
.l76e0
	jr c,l76e8
	or a
	sbc hl,de
	inc b
	jr l76da
.l76e8
	add hl,hl
	ld de,l77d5
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,b
	or a
	ret z
.l76f4
	srl h
	rr l
	djnz l76f4
	ret
.l76fb
	ex af,af'
	ld a,c
	ld (l725e),a
	add a
	add a
	add a
	add a
	add a
	ld e,a
	ld d,#00
	ld ix,l7ad5
	add ix,de
	ld e,(ix+#09)
	ld d,(ix+#0a)
	push de
	ld (ix+#09),l
	ld (ix+#0a),h
	ex af,af'
	add a
	add a
	add a
	ld e,a
	ld d,#00
	ld hl,(l7256)
	add hl,de
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#00),a
	ld a,c
	and #f0
	srl a
	srl a
	srl a
	srl a
	ld c,a
	and #01
	ld (ix+#1c),a
	ld a,c
	srl a
	ld (ix+#1d),a
	ld a,(hl)
	inc hl
	exx
	ld (ix+#03),a
	dec a
	add a
	add a
	add a
	add a
	ld hl,(l7258)
	ld e,a
	ld d,#00
	add hl,de
	ld (ix+#16),l
	ld (ix+#17),h
	xor a
	ld (ix+#18),a
	exx
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#04),a
	ld a,c
	srl a
	srl a
	srl a
	srl a
	ld (ix+#05),a
	xor a
	ld (ix+#1a),a
	ld a,(hl)
	ld b,a
	inc hl
	ld c,a
	and #0f
	ld (ix+#06),a
	ld a,c
	srl a
	srl a
	srl a
	srl a
	ld (ix+#07),a
	ld c,a
	xor a
	ld (ix+#14),a
	ld (ix+#15),a
	ld a,b
	or a
	jr z,l779d
	ld a,#01
.l779d
	ld (ix+#13),a
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#0e),a
	ld a,c
	srl a
	srl a
	srl a
	srl a
	ld (ix+#0f),a
	xor a
	ld (ix+#10),a
	ld (ix+#11),a
	ld a,(hl)
	inc hl
	ld (ix+#01),a
	ld a,(l725e)
	ld (ix+#1b),a
	or a
	jr z,l77cf
	ld d,#06
	ld a,(hl)
	call l7b35
.l77cf
	xor a
	ld (ix+#08),a
	pop hl
	ret
.l77d5
	dw #0fff,#0ff8,#0ff0,#0fe9
	dw #0fe2,#0fda,#0fd3,#0fcc
	dw #0fc4,#0fbd,#0fb6,#0fae
	dw #0fa7,#0fa0,#0f99,#0f92
	dw #0f8a,#0f83,#0f7c,#0f75
	dw #0f6e,#0f67,#0f60,#0f58
	dw #0f51,#0f4a,#0f43,#0f3c
	dw #0f35,#0f2e,#0f27,#0f20
	dw #0f19,#0f12,#0f0b,#0f04
	dw #0efd,#0ef6,#0ef0,#0ee9
	dw #0ee2,#0edb,#0ed4,#0ecd
	dw #0ec6,#0ec0,#0eb9,#0eb2
	dw #0eab,#0ea4,#0e9e,#0e97
	dw #0e90,#0e89,#0e83,#0e7c
	dw #0e75,#0e6f,#0e68,#0e61
	dw #0e5b,#0e54,#0e4d,#0e47
	dw #0e40,#0e3a,#0e33,#0e2d
	dw #0e26,#0e1f,#0e19,#0e12
	dw #0e0c,#0e05,#0dff,#0df8
	dw #0df2,#0dec,#0de5,#0ddf
	dw #0dd8,#0dd2,#0dcc,#0dc5
	dw #0dbf,#0db9,#0db2,#0dac
	dw #0da6,#0d9f,#0d99,#0d93
	dw #0d8c,#0d86,#0d80,#0d7a
	dw #0d73,#0d6d,#0d67,#0d61
	dw #0d5b,#0d55,#0d4e,#0d48
	dw #0d42,#0d3c,#0d36,#0d30
	dw #0d2a,#0d24,#0d1e,#0d17
	dw #0d11,#0d0b,#0d05,#0cff
	dw #0cf9,#0cf3,#0ced,#0ce7
	dw #0ce1,#0cdc,#0cd6,#0cd0
	dw #0cca,#0cc4,#0cbe,#0cb8
	dw #0cb2,#0cac,#0ca6,#0ca1
	dw #0c9b,#0c95,#0c8f,#0c89
	dw #0c84,#0c7e,#0c78,#0c72
	dw #0c6d,#0c67,#0c61,#0c5b
	dw #0c56,#0c50,#0c4a,#0c45
	dw #0c3f,#0c39,#0c34,#0c2e
	dw #0c28,#0c23,#0c1d,#0c18
	dw #0c12,#0c0c,#0c07,#0c01
	dw #0bfc,#0bf6,#0bf1,#0beb
	dw #0be6,#0be0,#0bdb,#0bd5
	dw #0bd0,#0bca,#0bc5,#0bbf
	dw #0bba,#0bb5,#0baf,#0baa
	dw #0ba4,#0b9f,#0b9a,#0b94
	dw #0b8f,#0b8a,#0b84,#0b7f
	dw #0b7a,#0b74,#0b6f,#0b6a
	dw #0b65,#0b5f,#0b5a,#0b55
	dw #0b50,#0b4a,#0b45,#0b40
	dw #0b3b,#0b36,#0b30,#0b2b
	dw #0b26,#0b21,#0b1c,#0b17
	dw #0b12,#0b0c,#0b07,#0b02
	dw #0afd,#0af8,#0af3,#0aee
	dw #0ae9,#0ae4,#0adf,#0ada
	dw #0ad5,#0ad0,#0acb,#0ac6
	dw #0ac1,#0abc,#0ab7,#0ab2
	dw #0aad,#0aa8,#0aa3,#0a9e
	dw #0a99,#0a95,#0a90,#0a8b
	dw #0a86,#0a81,#0a7c,#0a77
	dw #0a72,#0a6e,#0a69,#0a64
	dw #0a5f,#0a5a,#0a56,#0a51
	dw #0a4c,#0a47,#0a43,#0a3e
	dw #0a39,#0a34,#0a30,#0a2b
	dw #0a26,#0a22,#0a1d,#0a18
	dw #0a14,#0a0f,#0a0a,#0a06
	dw #0a01,#09fc,#09f8,#09f3
	dw #09ef,#09ea,#09e6,#09e1
	dw #09dc,#09d8,#09d3,#09cf
	dw #09ca,#09c6,#09c1,#09bd
	dw #09b8,#09b4,#09af,#09ab
	dw #09a6,#09a2,#099d,#0999
	dw #0995,#0990,#098c,#0987
	dw #0983,#097e,#097a,#0976
	dw #0971,#096d,#0969,#0964
	dw #0960,#095c,#0957,#0953
	dw #094f,#094a,#0946,#0942
	dw #093e,#0939,#0935,#0931
	dw #092d,#0928,#0924,#0920
	dw #091c,#0917,#0913,#090f
	dw #090b,#0907,#0903,#08fe
	dw #08fa,#08f6,#08f2,#08ee
	dw #08ea,#08e6,#08e1,#08dd
	dw #08d9,#08d5,#08d1,#08cd
	dw #08c9,#08c5,#08c1,#08bd
	dw #08b9,#08b5,#08b1,#08ad
	dw #08a9,#08a5,#08a1,#089d
	dw #0899,#0895,#0891,#088d
	dw #0889,#0885,#0881,#087d
	dw #0879,#0875,#0871,#086e
	dw #086a,#0866,#0862,#085e
	dw #085a,#0856,#0852,#084f
	dw #084b,#0847,#0843,#083f
	dw #083b,#0838,#0834,#0830
	dw #082c,#0829,#0825,#0821
	dw #081d,#081a,#0816,#0812
	dw #080e,#080b,#0807,#0803
.l7ad5
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0100,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0200,#0000,#0000
.l7b35
	push bc
	push de
	push af
	ld e,a
	ld a,d
	cp #07
	jr nz,l7b43
	ld a,e
	and #bf
	jr l7b44
.l7b43
	ld a,e
.l7b44
	ld c,a
	ld a,d
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
	pop af
	pop de
	pop bc
	ret
	db #1a,#02,#00,#20,#00,#3c,#00,#00
	db #1c,#05,#00,#20,#00,#23,#00,#00
	db #1a,#05,#00,#00,#05,#50,#00,#00
	db #1a,#05,#00,#11,#06,#50,#00,#00
	db #1a,#04,#00,#11,#0c,#b4,#00,#00
	db #2f,#03,#00,#11,#15,#19,#1f,#00
	db #3f,#05,#00,#00,#00,#19,#05,#00
	db #1f,#06,#00,#20,#00,#3c,#00,#00
.l7ba7
	db #02,#0f
	dw l7f39
	dw l7cff,l7c97,l7f39,l7cff
	dw l7ccb,l7f39,l7d3f,l7c97
	dw l7f39,l7d7f,l7ccb,l7c17
	dw l7d3f,l7c97,l7c3f,l7d7f
	dw l7ccb,l7c17,l7d3f,l7c97
	dw l7c3f,l7d7f,l7ccb,l7c6b
	dw l7d3f,l7c97,l7c7f,l7d7f
	dw l7ccb,l7c6b,l7d3f,l7c97
	dw l7c7f,l7d7f,l7ccb,l7c97
	dw l7f39,l7e43,l7c97,l7e8d
	dw l7e43,l7e8d,l7f0d,l7e69
	dw l7ecd,l7f15,l7e43,l7e8d
	dw l7f0d,l7e69,l7ecd,l7f15
	dw l7e43
.l7c17 equ $ + 2
	db #04,#00,#18,#1a,#24,#1a,#30,#1a
	db #3c,#1a,#30,#18,#2b,#08,#30,#18
	db #2b,#08,#30,#08,#32,#08,#22,#1b
	db #2e,#1b,#3a,#1b,#46,#1b,#32,#18
	db #2e,#08,#32,#18,#2e,#08,#32,#08
.l7c3f equ $ + 2
	db #35,#08,#1a,#1a,#26,#1a,#32,#1a
	db #3e,#1a,#32,#18,#2d,#08,#32,#18
	db #2d,#08,#32,#08,#33,#08,#22,#18
	db #1f,#09,#1b,#08,#2e,#18,#2b,#08
	db #27,#09,#3a,#18,#37,#09,#33,#08
.l7c6b equ $ + 6
	db #46,#18,#43,#08,#3f,#09,#3c,#30
	db #bc,#e8,#be,#e8,#bf,#e8,#ba,#d8
	db #35,#18,#32,#18,#ae,#d8,#29,#18
.l7c7f equ $ + 2
	db #26,#18,#26,#30,#26,#18,#a7,#d8
	db #a9,#e8,#27,#18,#2b,#18,#2e,#18
	db #b3,#d8,#37,#18,#3a,#18,#bf,#d8
.l7c97 equ $ + 2
	db #43,#18,#30,#1a,#18,#09,#1b,#08
	db #1f,#09,#24,#08,#27,#09,#2b,#08
	db #30,#1a,#30,#0a,#30,#1a,#30,#0a
	db #54,#08,#30,#0a,#2e,#1b,#22,#09
	db #26,#08,#29,#09,#2e,#08,#32,#09
	db #35,#08,#2e,#1b,#2e,#0b,#2e,#1b
.l7ccb equ $ + 6
	db #2e,#0b,#54,#08,#2e,#0b,#32,#1a
	db #1a,#09,#1d,#08,#21,#09,#26,#08
	db #29,#09,#2d,#08,#32,#1a,#32,#0a
	db #32,#1a,#32,#0a,#54,#08,#32,#0a
	db #33,#1b,#1b,#09,#1f,#09,#22,#09
	db #27,#09,#2b,#09,#2e,#09,#33,#1b
	db #33,#0b,#33,#1b,#33,#0b,#54,#08
.l7cff equ $ + 2
	db #33,#0b,#0c,#09,#18,#09,#0c,#09
	db #18,#09,#0c,#09,#18,#09,#0c,#09
	db #18,#09,#0c,#09,#18,#09,#0c,#09
	db #18,#09,#0c,#09,#18,#09,#0c,#09
	db #18,#09,#0c,#09,#18,#09,#0c,#09
	db #18,#09,#0c,#09,#18,#09,#0c,#09
	db #18,#09,#0c,#09,#18,#09,#0c,#09
	db #18,#09,#0c,#09,#18,#09,#0c,#09
.l7d3f equ $ + 2
	db #18,#09,#0c,#09,#18,#08,#0c,#09
	db #18,#08,#0c,#0e,#18,#08,#0c,#09
	db #18,#08,#0c,#09,#18,#08,#0c,#09
	db #18,#08,#0c,#0e,#18,#08,#0c,#09
	db #18,#08,#16,#09,#22,#08,#16,#09
	db #22,#08,#16,#0e,#22,#08,#16,#09
	db #22,#08,#16,#09,#22,#08,#16,#09
	db #22,#08,#16,#0e,#22,#08,#16,#09
.l7d7f equ $ + 2
	db #22,#08,#0e,#09,#1a,#08,#0e,#09
	db #1a,#08,#0e,#0e,#1a,#08,#0e,#09
	db #1a,#08,#0e,#09,#1a,#08,#0e,#09
	db #1a,#08,#0e,#0e,#1a,#08,#0e,#09
	db #1a,#08,#0f,#09,#1b,#08,#0f,#09
	db #1b,#08,#0f,#0e,#1b,#08,#0f,#0e
	db #1b,#08,#0f,#0e,#1b,#0e,#0f,#0e
	db #1b,#0e,#0f,#0e,#1b,#0e,#0f,#0e
	db #1b,#0e,#8d,#7e,#0d,#7f,#69,#7e
	db #cd,#7e,#15,#7f,#43,#7e,#00,#00
	db #01,#08,#c8,#f0,#c8,#f0,#c8,#f0
	db #c8,#d8,#c8,#d8,#c8,#d8,#c8,#c8
	db #c8,#c8,#c8,#c8,#c8,#f8,#0c,#19
	db #0c,#09,#13,#09,#0a,#19,#0c,#21
	db #0c,#09,#0f,#09,#0c,#09,#11,#09
	db #0c,#09,#0f,#09,#0e,#09,#0c,#19
	db #0c,#09,#13,#09,#0a,#19,#0c,#21
	db #0c,#09,#0f,#09,#0c,#09,#11,#09
	db #0c,#09,#0f,#09,#0e,#09,#11,#19
	db #11,#09,#18,#09,#0f,#19,#11,#21
	db #11,#09,#14,#09,#11,#09,#16,#09
	db #11,#09,#14,#09,#13,#09,#11,#19
	db #11,#09,#18,#09,#0f,#19,#11,#21
	db #11,#09,#14,#09,#11,#09,#16,#09
.l7e43 equ $ + 6
	db #11,#09,#14,#09,#13,#09,#33,#19
	db #33,#09,#32,#09,#30,#19,#33,#09
	db #32,#09,#33,#19,#33,#09,#32,#09
	db #30,#19,#33,#09,#32,#09,#37,#37
	db #3c,#09,#3a,#09,#38,#09,#37,#19
.l7e69 equ $ + 4
	db #35,#19,#33,#09,#33,#19,#33,#09
	db #32,#09,#30,#19,#33,#09,#32,#09
	db #33,#19,#33,#09,#32,#09,#30,#19
	db #33,#09,#32,#09,#30,#37,#41,#18
	db #43,#18,#44,#18,#3f,#08,#3c,#08
.l7e8d
	db #0c,#09,#18,#09,#18,#09,#24,#09
	db #13,#0e,#0c,#09,#0c,#09,#18,#09
	db #0c,#09,#18,#09,#18,#09,#24,#09
	db #13,#0e,#13,#09,#0f,#09,#0c,#09
	db #0f,#09,#1b,#09,#1b,#09,#27,#09
	db #16,#0e,#0f,#09,#0f,#09,#1b,#09
	db #0f,#09,#1b,#09,#1b,#09,#27,#09
	db #16,#0e,#16,#09,#12,#09,#0f,#09
.l7ecd
	db #11,#09,#1d,#09,#1d,#09,#29,#09
	db #18,#0e,#11,#09,#11,#09,#1d,#09
	db #11,#09,#1d,#09,#1d,#09,#29,#09
	db #18,#0e,#18,#09,#14,#09,#11,#09
	db #14,#09,#20,#09,#20,#09,#2c,#09
	db #1b,#0e,#14,#09,#14,#09,#20,#09
	db #14,#09,#20,#09,#20,#09,#2c,#09
	db #1b,#0e,#1b,#0e,#17,#0e,#14,#0e
.l7f0d
	db #33,#37,#30,#37,#35,#37,#37,#37
.l7f15
	db #33,#37,#30,#37,#33,#09,#2c,#09
	db #29,#09,#33,#09,#2c,#09,#29,#09
	db #33,#09,#2c,#09,#33,#09,#2c,#09
	db #29,#09,#33,#09,#2c,#09,#29,#09
	db #33,#09,#2c,#09
.l7f39
	db #54,#38,#c0,#cc,#cc,#cc,#cc,#98
	db #84,#0c,#0c,#0c,#0c,#1c,#84,#0c
	db #0c,#0c,#0c,#0c,#9c,#3c,#3c,#3c
	db #3c,#2c,#8c,#0c,#0c,#0c,#0c,#08
	db #c8,#c0,#c0,#c0,#c0,#80,#9c,#9c
	db #9c,#9c,#9c,#88,#8c,#24,#24,#24
	db #24,#20,#cc,#44,#44,#44,#44,#00
	db #98,#00,#10,#18,#18,#08,#88,#55
	db #80,#88,#88,#88,#88,#ea,#85,#04
	db #24,#20,#88,#d5,#4b,#44,#44,#00
	db #88,#c0,#c1,#10,#18,#08,#88,#c0
	db #c9,#44,#cc,#08,#88,#c0,#c9,#10
	db #30,#08,#88,#c0,#c9,#00,#00,#08
	db #88,#80,#41,#04,#0c,#08,#88,#d5
	db #4b,#00,#00,#00,#88,#c0,#eb,#14
	db #3c,#28,#88,#85,#4b,#00,#10,#20
	db #88,#c0,#eb,#4a,#80,#00,#88,#85
	db #4b,#d5,#eb,#0a,#20,#00,#00,#00
	db #00,#00,#c0,#cc,#cc,#cc,#cc,#98
	db #84,#0c,#0c,#0c,#0c,#1c,#84,#0c
	db #0c,#0c,#0c,#0c,#9c,#3c,#3c,#3c
	db #3c,#2c,#8c,#0c,#0c,#0c,#0c,#08
	db #c8,#c0,#c0,#c0,#c0,#80,#9c,#9c
	db #9c,#9c,#9c,#88,#8c,#24,#24,#24
	db #24,#20,#cc,#44,#44,#44,#44,#00
	db #98,#18,#18,#18,#18,#08,#88,#88
	db #88,#88,#88,#88,#8c,#24,#24,#24
	db #24,#20,#cc,#44,#44,#44,#44,#00
	db #98,#18,#18,#18,#18,#08,#88,#cc
	db #cc,#cc,#cc,#08,#8c,#30,#30,#30
	db #30,#08,#8c,#00,#00,#00,#00,#08
	db #8c,#0c,#0c,#0c,#0c,#08,#88,#00
	db #00,#00,#00,#00,#9c,#3c,#3c,#3c
	db #3c,#28,#98,#30,#30,#30,#30,#20
	db #9c,#3c,#3c,#3c,#3c,#28,#98,#30
	db #30,#30,#30,#20,#34,#08,#00,#00
	db #00,#00,#c0,#cc,#cc,#cc,#cc,#98
	db #84,#0c,#0c,#0c,#0c,#1c,#84,#0c
	db #0c,#0c,#0c,#0c,#8c,#0c,#d7,#eb
	db #0c,#0c,#8c,#0c,#ea,#d5,#0c,#08
	db #8c,#0c,#5f,#af,#0c,#08,#8c,#0c
	db #87,#4b,#0c,#08,#8c,#0c,#49,#86
	db #0c,#08,#8c,#0c,#19,#04,#0c,#08
	db #8c,#0c,#4c,#04,#0c,#08,#8c,#0c
	db #48,#04,#0c,#08,#8c,#0c,#4c,#04
	db #0c,#08,#8c,#0c,#19,#04,#0c,#08
	db #8c,#0c,#19,#04,#0c,#08,#8c,#0c
	db #19,#04,#0c,#08,#8c,#0c,#19,#04
	db #0c,#08,#8c,#48,#1b,#04,#0c,#08
	db #c8,#98,#33,#33,#33,#28,#cc,#2c
	db #0c,#0c,#0c,#00,#98,#08,#00,#00
	db #00,#00,#9c,#08,#00,#00,#00,#00
	db #8c,#00,#00,#00,#00,#08,#8c,#0c
	db #0c,#0c,#0c,#08,#34,#08,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #90,#0f
;
; #6421
; ld hl,#7ba7
; call #71f1
;
.init_music		; added by Megachur
;
	ld hl,l7ba7	; added by Megachur
	jp real_init_music
;
.music_info
	db "Thunder Jaws (1991)(Domark)(Andrew Taylor)",0
	db "",0

	read "music_end.asm"
