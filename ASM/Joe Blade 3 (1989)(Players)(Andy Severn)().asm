; Music of Joe Blade 3 (1989)(Players)(Andy Severn)()
; Ripped by Megachur the 25/04/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JOEBLAD3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #9900

	read "music_header.asm"

; -- Warning -- Player change AY.IOA input to output !

	jp l9a33	; init music
	jp l9b0a	; play music
.l990a equ $ + 4
.l9909 equ $ + 3
.l9908 equ $ + 2
.music_end equ $ + 1
.l9907 equ $ + 1
.l9906
	db #00,#01,#00,#01,#00,#00,#00,#00
.l9915 equ $ + 7
	db #00,#00,#30,#30,#30,#30,#00,#0f
.l9919 equ $ + 3
.l9918 equ $ + 2
.l9917 equ $ + 1
.l9916
	db #00,#00,#00,#00,#00
.l991b
	ld a,(l9917)
	and a
	ld b,a
	ret z
	ld a,(l9919)
	cp #80
	jp z,l9944
	ld a,(l9918)
	dec a
	ld (l9918),a
	ret nz
	ld a,(l9919)
	ld (l9918),a
	ld a,(l9915)
	add b
	bit 4,a
	jp nz,l9953
	ld (l9915),a
	ret
.l9944
	ld a,b
	cp #01
	ld a,#0f
	jp z,l994d
	xor a
.l994d
	ld (l9915),a
	jp l9953
.l9953
	xor a
	ld (l9917),a
	ld a,(l9916)
	and a
	jp nz,l9ad6
	ret
.l995f
	ld a,#00
	ld (l9915),a
	ld a,#01
.l9966
	ld (l9917),a
	inc hl
	ld a,(hl)
	ld (l9919),a
	ld (l9918),a
	inc hl
	jp l9e98
.l9975
	ld a,#0f
	ld (l9915),a
	ld a,#ff
	jp l9966
.l997f
	push hl
	push de
	ex de,hl
	ld h,#00
	ld l,d
	ld bc,l9b37
	add hl,bc
	ld (hl),e
	pop de
	pop hl
	ret
.l9994 equ $ + 7
.l9993 equ $ + 6
.l998e equ $ + 1
.l998d
	db #00,#01,#00,#00,#00,#00,#00,#f8
.l999a equ $ + 5
.l9998 equ $ + 3
.l9997 equ $ + 2
.l9996 equ $ + 1
.l9995
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
	db #0c,#05,#00,#08,#01,#ff,#00,#00
	db #00,#01,#08,#00,#00,#04,#00,#00
	db #00,#00,#00,#f7,#14,#0a,#01,#01
	db #00,#08,#04,#64,#a4,#01,#64,#a4
	db #00,#0a,#00,#02,#00,#fe,#00,#00
.l99c8 equ $ + 3
.l99c6 equ $ + 1
.l99c5
	db #00,#00,#00,#00,#00,#00,#0f,#01
	db #01,#02,#01,#ff,#00,#00,#02,#03
	db #09,#00,#00,#01,#00,#00,#00,#00
	db #00,#ef,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l99f4 equ $ + 7
.l99f3 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l99f6 equ $ + 1
	db #00,#00,#00,#00,#0f,#0a,#01,#02
	db #02,#ff,#00,#00,#04,#05,#0a,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #df,#ff,#ff,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a21 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
;
.stop_music
.l9a27
;
	ld a,#0f
	ld (l9915),a
	xor a
	ld (l9917),a
	ld (l9916),a
;
.init_music
.l9a33
;
	call l9ade
	ld a,(l9909)
	cp #ff
	jp nz,l9a42
	inc a
	ld (l9909),a
.l9a42
	ld a,#01
	ld (l999a),a
	ld (l99c8),a
	ld (l99f6),a
	xor a
	ld (l9908),a
	push ix
	ld ix,l9998
	ld a,(l9909)
	add a
	ld b,a
	add a
	add b
	ld l,a
	ld h,#00
	ld de,la3fa
	add hl,de
	ld (l9a73),hl
	inc hl
	inc hl
	ld (l9a7d),hl
	inc hl
	inc hl
	ld (l9a87),hl
.l9a73 equ $ + 1
	ld hl,(la464)
	call l9aac
	ld ix,l99c6
.l9a7d equ $ + 1
	ld hl,(la46b)
	call l9aac
	ld ix,l99f4
.l9a87 equ $ + 1
	ld hl,(la47c)
	call l9aac
	ld a,#01
	ld (l9907),a
	ld h,#07
	ld l,#f8
	call l997f
	ld a,(l9909)
	cp #01
	pop ix
	ret
.l9aa0			; test music player 
	halt
	call l9b0a
	ld a,(l9907)
	and a
	jp nz,l9aa0
	ret
.l9aac
	ld (ix+#20),l
	ld (ix+#23),l
	ld (ix+#00),l
	ld (ix+#21),h
	ld (ix+#24),h
	ld (ix+#01),h
	call l9fb5
	ld (ix+#02),#01
	ld (ix+#0c),#00
	ld (ix+#05),#00
	ld (ix+#04),#00
	ld (ix+#17),#00
	ret
.l9ad6
	call l9ade
	xor a
	ld (l9907),a
	ret
.l9ade
	ld h,#07
	ld l,#ff
	call l997f
	ld hl,l998d
	ld de,l998e
	ld bc,#000a
	ld (hl),#00
	ldir
	ld a,#f8
	ld (l9994),a
.l9af7
	ld b,#0b
	ld h,#00
	ld de,l998d
.l9afe
	ld a,(de)
	ld l,a
	push bc
	call l997f
	pop bc
	inc h
	inc de
	djnz l9afe
	ret
;
.play_music
.l9b0a
;
	call l9b47
	ld hl,l9b44
	ld a,#0d
.l9b12
	push af
	ld c,(hl)
	dec hl
	ld a,#c0
	ld b,#f6
	out (c),a
	ld b,#f4
	pop af
	out (c),a
	push af
	ld b,#f6
	ld a,#80
	out (c),a
	ld b,#f4
	out (c),c
	pop af
	dec a
	cp #ff
	jr nz,l9b12
	xor a
	ld b,#f6
	out (c),a
	ret
.l9b37
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00
.l9b44
	db #00,#00,#00
.l9b47
	ld a,(l9906)
	and a
	jp z,l9b7a
	ld b,a
	xor a
	ld (l9906),a
	ld a,b
	cp #ff
	jp z,l9ad6
	cp #fe
	jp nz,l9b73
	ld a,#01
	ld (l9916),a
	ld a,#ff
	ld (l9917),a
	ld a,#0a
	ld (l9919),a
	ld (l9918),a
	jp l9b7a
.l9b73
	dec a
	ld (l9909),a
	jp l9a27
.l9b7a
	call l991b
	ld a,(l9907)
	and a
	jr z,l9bdc
	push ix
	ld ix,l9998
	bit 7,(ix+#0c)
	call z,l9bdd
	ld ix,l99c6
	bit 7,(ix+#0c)
	call z,l9bdd
	ld ix,l99f4
	bit 7,(ix+#0c)
	call z,l9bdd
	ld a,(l9915)
	cpl
	and #0f
	ld b,a
	ld a,(l9908)
	and a
	ld a,#10
	jp nz,l9bbe
	ld a,(l9995)
	sub b
	jp nc,l9bbe
	xor a
.l9bbe
	ld (l9995),a
	ld a,(l9996)
	sub b
	jp nc,l9bc9
	xor a
.l9bc9
	ld (l9996),a
	ld a,(l9997)
	sub b
	jp nc,l9bd4
	xor a
.l9bd4
	ld (l9997),a
	call l9af7
	pop ix
.l9bdc
	ret
.l9bdd
	ld a,(ix+#02)
	dec (ix+#02)
	jp z,l9d72
.l9be6
	ld a,(ix+#0c)
	and #03
	jp z,l9ca6
	cp #01
	jp z,l9c00
	cp #02
	jp z,l9c40
	cp #03
	jp z,l9c8a
	jp l9cd7
.l9c00
	ld a,(ix+#0b)
	and a
	jr z,l9c0c
	dec (ix+#0b)
	jp l9cd7
.l9c0c
	ld a,(ix+#04)
	ld b,(ix+#08)
	add b
	ld (ix+#04),a
	ld b,(ix+#05)
	cp b
	jr z,l9c2d
	jr nc,l9c27
	ld a,(ix+#07)
	ld (ix+#0b),a
	jp l9cd7
.l9c27
	ld a,(ix+#05)
	ld (ix+#04),a
.l9c2d
	ld a,(ix+#0c)
	and #fc
	or #02
	ld (ix+#0c),a
	ld a,(ix+#09)
	ld (ix+#25),a
	jp l9cd7
.l9c40
	ld a,(ix+#25)
	and a
	jr z,l9c4c
	dec (ix+#25)
	jp l9cd7
.l9c4c
	ld a,(ix+#04)
	ld b,(ix+#0a)
	add b
	ld (ix+#04),a
	bit 7,a
	jp nz,l9c6b
	ld b,(ix+#26)
	cp b
	jr z,l9c78
	jr c,l9c72
	ld a,(ix+#09)
	ld (ix+#25),a
	jr l9cd7
.l9c6b
	ld (ix+#04),#00
	jp l9c78
.l9c72
	ld a,(ix+#26)
	ld (ix+#04),a
.l9c78
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	ld a,(ix+#06)
	ld (ix+#27),a
	jr l9cd7
.l9c8a
	ld a,(ix+#27)
	and a
	jr z,l9c95
	dec (ix+#27)
	jr l9cd7
.l9c95
	ld a,(ix+#0c)
	and #fc
	ld (ix+#0c),a
	ld a,(ix+#2a)
	ld (ix+#29),a
	jp l9cd7
.l9ca6
	ld a,(ix+#29)
	and a
	jr z,l9cb1
	dec (ix+#29)
	jr l9cd7
.l9cb1
	ld a,(ix+#04)
	ld b,(ix+#28)
	add b
	ld (ix+#04),a
	bit 7,a
	jr nz,l9cc7
	ld a,(ix+#2a)
	ld (ix+#29),a
	jr l9cd7
.l9cc7
	ld (ix+#04),#00
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	jr l9cd7
.l9cd7
	ld a,(ix+#04)
	ld hl,l998d
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
	call l9dff
	pop af
	ld (ix+#03),a
	inc (ix+#10)
	ld a,(ix+#12)
	xor (ix+#10)
	jr nz,l9d13
	ld a,(ix+#11)
	ld (ix+#10),a
.l9d13
	ld a,(ix+#1a)
	cp #ff
	jr z,l9d4b
	and a
	jr z,l9d22
	dec (ix+#1a)
	jr nz,l9d4b
.l9d22
	dec (ix+#1f)
	jr nz,l9d35
	ld a,(ix+#1e)
	ld (ix+#1f),a
	ld a,(ix+#1c)
	xor #01
	ld (ix+#1c),a
.l9d35
	bit 0,(ix+#1c)
	ld b,(ix+#1b)
	ld a,(ix+#1d)
	jr z,l9d44
	add b
	jr l9d45
.l9d44
	sub b
.l9d45
	ld (ix+#1d),a
	call l9d56
.l9d4b
	ld a,(ix+#2b)
	and a
	call nz,l9d56
	ld a,(ix+#02)
	ret
.l9d56
	ld c,a
	ld b,#ff
	bit 7,a
	jr nz,l9d5f
	ld b,#00
.l9d5f
	ld hl,l998d
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
	ret
.l9d72
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (ix+#10),#00
.l9d7c
	ld a,(hl)
	cp #60
	jr z,l9dfd
	cp #61
	jp z,l9ea1
	cp #64
	jp z,l9e4e
	cp #65
	jp z,l9e75
	cp #fa
	jp z,l9e57
	cp #fc
	jp z,l995f
	cp #fd
	jp z,l9975
	cp #fe
	jp z,l9e83
	cp #ff
	jp z,l9e6d
	ld b,a
	ld a,(ix+#0c)
	and #fc
	or #01
	ld (ix+#0c),a
	ld a,b
	sub (ix+#2d)
	ld (ix+#03),a
	ld a,(ix+#19)
	ld (ix+#1a),a
	ld a,(ix+#1e)
	srl a
	ld (ix+#1f),a
	ld (ix+#1c),#01
	ld (ix+#1d),#00
.l9dd1
	inc hl
	ld a,(hl)
	dec a
	push hl
	ld h,#00
	ld l,a
	ld de,(l990a)
	add hl,de
	ld a,(hl)
	pop hl
	inc hl
	ld b,(ix+#2c)
	add b
	ld (ix+#2c),#00
	ld (ix+#02),a
	ld a,(ix+#07)
	ld (ix+#0b),a
	ld (ix+#00),l
	ld (ix+#01),h
	call l9dff
	jp l9be6
.l9dfd
	jr l9dd1
.l9dff
	ld a,(ix+#17)
	and a
	call nz,l9e43
	ld a,(ix+#03)
	inc a
	inc a
	add a
	ld d,#00
	ld e,a
	ld hl,la014
	add hl,de
	push hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l998d
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	pop hl
	ld a,(l9908)
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
	call l997f
	inc de
	inc h
	ld a,(de)
	ld l,a
	call l997f
	ret
.l9e43
	ld a,(ix+#03)
	neg
	and #1f
	ld (l9993),a
	ret
.l9e4e
	inc hl
	ld a,(hl)
	inc hl
	ld (l9993),a
	jp l9e98
.l9e57
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	ld (ix+#1e),#ff
	ld (ix+#1f),#ff
	inc hl
	jp l9e98
.l9e6d
	inc hl
	ld (ix+#04),#00
	jp l9e98
.l9e75
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld h,#0d
	ld l,a
	call l997f
	pop hl
	jp l9e98
.l9e83
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jr nz,l9e92
	jp l9fa7
	jp l9d7c
.l9e92
	ld l,(ix+#15)
	ld h,(ix+#16)
.l9e98
	ld (ix+#01),h
	ld (ix+#00),l
	jp l9d7c
.l9ea1
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
	ld de,la184
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
	jp z,l9f2c
	ld b,a
	or #c0
	ld (l9994),a
	ld a,b
	bit 7,a
	jp z,l9f2c
	cpl
	and #38
	ld (ix+#17),a
.l9f2c
	inc hl
	ld a,(ix+#0f)
	cp #08
	jp nz,l9f48
	ld a,(hl)
	ld (l9908),a
	and a
	jp z,l9f48
	inc hl
	inc hl
	ld a,(hl)
	push hl
	ld h,#0d
	ld l,a
	call l997f
	pop hl
.l9f48
	pop hl
	jp l9d7c
.l9f4c
	inc hl
	ld a,(hl)
	inc hl
	push hl
	add a
	add a
	add a
	ld h,#00
	ld l,a
	ld de,la164
	add hl,de
	ld (l990a),hl
	pop hl
	jp l9fbb
.l9f61
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2c),a
	jp l9fbb
.l9f6a
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2b),a
	jp l9fbb
.l9f73
	inc hl
	ld a,(hl)
	inc hl
	ld (l99c5),a
	ld (l99f3),a
	ld (l9a21),a
	jp l9fbb
.l9f82
	inc hl
	ld b,(hl)
	inc hl
	ld a,(ix+#2d)
	add b
	ld (ix+#2d),a
	jp l9fbb
	ld (ix+#0c),#ff
	ld (ix+#03),#00
	ld (ix+#04),#00
	inc hl
	ld a,(hl)
	and a
	jp z,l9be6
	call l9ad6
	jp l9be6
.l9fa7
	call l9fb5
	jp l9d72
.l9fad
	pop bc
	jp l9ad6
.l9fb1
	pop bc
	jp l9a33
.l9fb5
	ld l,(ix+#20)
	ld h,(ix+#21)
.l9fbb
	ld a,(hl)
	cp #f8
	jp z,l9f61
	cp #f9
	jp z,l9f6a
	cp #fa
	jp z,l9f82
	cp #fb
	jp z,l9f73
	cp #fc
	jp z,l9f4c
	cp #fd
	jp z,l9fb1
	cp #fe
	jr z,la008
	cp #ff
	jr z,l9fad
	push hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,la424
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
.la008
	ld l,(ix+#23)
	ld h,(ix+#24)
	jr l9fbb
.la014 equ $ + 4
	db #00,#00,#00,#00,#00,#00
	dw #0e18,#0d4d,#0c8e,#0bda
	dw #0b2f,#0a8f,#09f7,#0968
	dw #08e1,#0861,#07e9,#0777
	dw #070c,#06a7,#0647,#05ed
	dw #0598,#0547,#04fc,#04d4
	dw #0470,#0431,#03f4,#03dc
	dw #0386,#0353,#0324,#02f6
	dw #02cc,#02a4,#027e,#025a
	dw #0238,#0218,#01fa,#01de
	dw #01c3,#01aa,#0192,#017b
	dw #0166,#0152,#013f,#012d
	dw #011c,#010c,#00fd,#00ef
	dw #00e1,#00d5,#00c9,#00be
	dw #00b3,#00a9,#009f,#0096
	dw #008e,#0086,#007f,#0077
	dw #0071,#006a,#0064,#005f
	dw #0059,#0054,#0050,#004b
	dw #0047,#0043,#003f,#003c
	dw #0038,#0035,#0032,#002f
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010
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
.la164
	db #02,#04,#06,#08,#0a,#0c,#0e,#10
	db #12,#14,#16,#18,#1a,#1c,#1e,#20
	db #22,#24,#26,#28,#2a,#2c,#2e,#30
	db #32,#34,#36,#38,#3a,#3c,#3e,#40
.la184
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#ff,#00,#00,#00,#01,#00,#0c
	db #00,#0c,#00,#00,#18,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#08,#00,#ff
	db #0c,#00,#00,#ff,#ff,#00,#00,#00
	db #10,#0b,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#b8,#00,#00,#00,#00,#00,#0f
	db #0f,#00,#fe,#0d,#01,#00,#fe,#ff
	db #00,#00,#00,#03,#0e,#12,#1a,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#b0,#00,#00,#00
	db #00,#00,#0c,#0c,#00,#ff,#0a,#00
	db #00,#fc,#01,#01,#ff,#00,#03,#00
	db #05,#07,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#0f,#0f,#00
	db #00,#0f,#00,#00,#fc,#01,#14,#64
	db #00,#02,#f4,#e8,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#b8,#00,#00,#00,#00,#00
	db #0a,#0a,#00,#ff,#08,#00,#00,#fe
	db #ff,#00,#00,#00,#03,#0c,#1b,#13
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#b8,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#08
	db #00,#ff,#0c,#00,#00,#fd,#ff,#00
	db #00,#00,#10,#fe,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0f,#08,#00,#ff,#0c,#50,#0a
	db #ff,#ff,#00,#00,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#08,#00,#fe
	db #0a,#00,#00,#fd,#ff,#00,#00,#00
	db #03,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#b8,#00,#00,#00,#00,#00,#0f
	db #08,#00,#ff,#0c,#32,#05,#ff,#ff
	db #00,#00,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#08,#00,#ff,#0c,#32
	db #08,#ff,#ff,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#0e,#07,#00
	db #ff,#0b,#28,#03,#ff,#ff,#00,#00
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#08,#00,#ff,#0c,#00,#00,#fd
	db #ff,#00,#00,#00,#10,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#b8,#00,#00
	db #00,#00,#00,#0f,#08,#00,#ff,#0c
	db #00,#00,#fd,#ff,#00,#00,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #b8,#00,#00,#00,#00,#00,#0d,#0d
	db #00,#ff,#0b,#00,#00,#fc,#ff,#00
	db #00,#00,#03,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0f,#08,#00,#ff,#0c,#19,#03
	db #ff,#ff,#00,#00,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#00,#fe
	db #0d,#01,#00,#fe,#ff,#00,#00,#00
	db #03,#00,#04,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#98,#00,#00,#00,#00
.la3fa
	dw la464,la46b,la47c,la504
	dw la50b,la51c,la5a5,la5d2
	dw la5d5,la62f,la638,la63d
	dw la671,la684,la697,la719
	dw la73a,la75b,la9d4,la9e5
.la424 equ $ + 2
	dw la9fe,la48d,laa2b,la52d
	dw laa61,laaa4,laa46,la778
	dw #0000,la5d8,la81e,la84f
	dw la860,la871,#0000,la49c
	dw la601,la78b,la79b,la882
	dw la923,la951,#0000,la69a
	dw la6bd,la6d0,la640,la65f
	dw la614,la592,la4bf,la4d0
	dw la4e3
.la46b equ $ + 7
.la464
	db #fc,#00,#fb,#18,#1e,#08,#fe,#1f
	db #02,#fa,#fd,#1f,#02,#fa,#fe,#1f
	db #02,#fa,#fe,#1f,#02,#fa,#07,#fe
.la47c
	db #1d,#02,#fa,#fd,#1d,#02,#fa,#fe
	db #1d,#02,#fa,#fe,#1d,#02,#fa,#07
.la48d equ $ + 1
	db #fe,#61,#00,#60,#10,#60,#10,#60
	db #10,#60,#10,#60,#10,#60,#10,#fe
.la49c
	db #61,#0f,#44,#04,#3d,#04,#42,#04
	db #3d,#04,#3d,#04,#44,#04,#3d,#04
	db #44,#04,#42,#04,#3d,#04,#3d,#04
	db #44,#04,#42,#04,#3d,#04,#44,#04
.la4bf equ $ + 3
	db #42,#04,#fe,#61,#01,#25,#04,#25
	db #0b,#29,#08,#25,#04,#25,#0b,#1e
.la4d0 equ $ + 4
	db #04,#20,#12,#fe,#61,#04,#3d,#0f
	db #61,#02,#38,#08,#61,#04,#3d,#04
.la4e3 equ $ + 7
	db #3d,#12,#61,#02,#38,#0f,#fe,#61
	db #03,#3d,#04,#3d,#04,#3d,#04,#3d
	db #04,#3d,#04,#3d,#04,#3d,#04,#3d
	db #04,#3d,#04,#3d,#04,#3d,#04,#3d
	db #04,#3d,#04,#3d,#04,#3d,#04,#fe
.la50b equ $ + 7
.la504
	db #fc,#00,#fb,#18,#02,#04,#fe,#0e
	db #02,#fa,#fd,#0e,#02,#fa,#fe,#0e
	db #02,#fa,#fe,#0e,#02,#fa,#07,#fe
.la51c
	db #1c,#01,#fa,#fd,#1c,#01,#fa,#fe
	db #1c,#01,#fa,#fe,#1c,#01,#fa,#07
.la52d equ $ + 1
	db #fe,#61,#04,#3d,#04,#61,#05,#49
	db #04,#49,#04,#49,#04,#61,#02,#38
	db #04,#61,#05,#49,#04,#49,#04,#49
	db #04,#61,#04,#3d,#04,#61,#05,#49
	db #04,#61,#04,#3d,#04,#61,#05,#49
	db #04,#61,#02,#38,#04,#61,#05,#49
	db #04,#49,#04,#49,#04,#61,#04,#3d
	db #04,#61,#05,#49,#04,#49,#04,#49
	db #04,#61,#02,#38,#04,#61,#05,#49
	db #04,#49,#04,#49,#04,#61,#04,#3d
	db #04,#61,#05,#49,#04,#61,#04,#3d
	db #04,#61,#05,#49,#04,#61,#02,#38
.la592 equ $ + 6
	db #04,#38,#04,#38,#08,#fe,#61,#0a
	db #25,#10,#60,#10,#60,#10,#60,#10
	db #25,#10,#60,#10,#60,#10,#60,#10
.la5a5 equ $ + 1
	db #fe,#fc,#00,#fb,#18,#fb,#18,#08
	db #01,#fb,#17,#08,#01,#fb,#16,#08
	db #01,#fb,#15,#08,#01,#fb,#14,#08
	db #01,#fb,#13,#08,#01,#fb,#12,#08
	db #01,#fb,#11,#08,#01,#fb,#10,#08
.la5d2 equ $ + 6
	db #01,#fb,#0f,#08,#01,#fe,#0f,#ff
.la5d8 equ $ + 4
.la5d5 equ $ + 1
	db #fe,#1b,#ff,#fe,#61,#0e,#3d,#02
	db #3d,#02,#3d,#02,#3d,#02,#3d,#04
	db #3d,#04,#49,#04,#49,#04,#3d,#02
	db #3d,#02,#3d,#04,#49,#04,#49,#04
	db #3d,#04,#3d,#04,#3d,#04,#55,#04
.la601 equ $ + 5
	db #55,#04,#49,#04,#fe,#61,#0d,#49
	db #08,#3d,#08,#49,#08,#3d,#08,#49
	db #08,#3d,#08,#49,#08,#3d,#08,#fe
.la614
	db #61,#01,#25,#08,#31,#04,#31,#04
	db #25,#08,#31,#04,#31,#04,#25,#08
	db #31,#04,#31,#04,#25,#08,#31,#04
.la62f equ $ + 3
	db #31,#04,#fe,#fc,#00,#fb,#18,#1a
.la638 equ $ + 4
	db #01,#00,#01,#ff,#fa,#fb,#19,#01
.la640 equ $ + 4
.la63d equ $ + 1
	db #ff,#02,#01,#ff,#61,#0a,#20,#12
	db #1e,#12,#1d,#08,#1b,#04,#19,#10
	db #60,#10,#60,#10,#60,#10,#60,#10
	db #19,#10,#60,#10,#60,#10,#60,#10
.la65f equ $ + 3
	db #60,#10,#fe,#61,#08,#fa,#08,#01
	db #3d,#10,#60,#10,#60,#10,#60,#10
.la671 equ $ + 5
	db #60,#10,#60,#10,#fe,#fc,#00,#fb
	db #18,#16,#01,#fa,#fb,#16,#01,#fa
	db #02,#16,#01,#fa,#03,#16,#01,#fe
.la684
	db #17,#01,#f9,#fe,#fa,#fb,#17,#01
	db #fa,#02,#17,#01,#fa,#03,#17,#01
.la69a equ $ + 6
.la697 equ $ + 3
	db #f9,#02,#fe,#18,#ff,#fe,#61,#07
	db #3d,#08,#42,#08,#3d,#08,#44,#08
	db #3d,#08,#42,#08,#3d,#08,#44,#08
	db #3d,#08,#42,#08,#3d,#08,#44,#08
	db #3d,#08,#42,#08,#3d,#08,#44,#08
.la6bd equ $ + 1
	db #fe,#61,#0a,#25,#10,#60,#10,#60
	db #10,#60,#10,#25,#10,#60,#10,#60
.la6d0 equ $ + 4
	db #10,#60,#10,#fe,#61,#0b,#3d,#10
	db #60,#10,#60,#10,#60,#10,#42,#10
	db #60,#10,#60,#10,#60,#10,#46,#10
	db #60,#10,#60,#10,#60,#10,#49,#10
	db #60,#10,#60,#10,#60,#10,#44,#10
	db #60,#10,#60,#10,#60,#10,#42,#10
	db #60,#10,#60,#10,#60,#10,#3d,#10
	db #60,#10,#60,#10,#60,#10,#fa,#08
	db #ff,#3d,#10,#60,#10,#60,#10,#60
.la719 equ $ + 5
	db #10,#fa,#00,#00,#fe,#fc,#00,#fb
	db #18,#06,#02,#fa,#fd,#06,#02,#fa
	db #03,#06,#06,#10,#01,#11,#01,#12
	db #01,#11,#02,#fa,#fb,#11,#01,#fa
.la73a equ $ + 6
	db #02,#11,#01,#fa,#03,#fe,#0a,#01
	db #0b,#01,#fa,#fd,#0a,#01,#0c,#01
	db #fa,#03,#0a,#02,#fa,#e8,#06,#04
	db #fa,#18,#f9,#fe,#10,#01,#f9,#02
.la75b equ $ + 7
	db #12,#01,#11,#01,#12,#04,#fe,#fb
	db #18,#09,#0a,#10,#01,#13,#01,#14
	db #01,#13,#01,#f9,#fe,#11,#01,#fa
	db #fb,#11,#01,#fa,#02,#11,#01,#fa
.la778 equ $ + 4
	db #03,#f9,#02,#fe,#61,#10,#25,#04
	db #25,#10,#60,#04,#23,#04,#23,#04
.la78b equ $ + 7
	db #25,#04,#25,#10,#60,#0c,#fe,#61
	db #0b,#fa,#08,#ff,#25,#10,#60,#10
.la79b equ $ + 7
	db #60,#10,#60,#10,#60,#08,#fe,#61
	db #01,#25,#04,#25,#04,#31,#04,#25
	db #04,#25,#04,#31,#04,#25,#04,#25
	db #04,#31,#04,#25,#04,#25,#04,#31
	db #04,#25,#04,#25,#04,#31,#04,#31
	db #04,#22,#04,#22,#04,#2e,#04,#22
	db #04,#22,#04,#2e,#04,#22,#04,#22
	db #04,#2e,#04,#22,#04,#22,#04,#2e
	db #04,#22,#04,#22,#04,#2e,#04,#2e
	db #04,#1e,#04,#1e,#04,#2a,#04,#1e
	db #04,#1e,#04,#2a,#04,#1e,#04,#1e
	db #04,#2a,#04,#1e,#04,#1e,#04,#2a
	db #04,#1e,#04,#1e,#04,#2a,#04,#2a
	db #04,#20,#04,#20,#04,#2c,#04,#20
	db #04,#20,#04,#2c,#04,#20,#04,#20
	db #04,#2c,#04,#20,#04,#20,#04,#2c
	db #04,#20,#04,#20,#04,#2c,#04,#2c
.la81e equ $ + 2
	db #04,#fe,#61,#04,#3d,#04,#61,#09
	db #55,#04,#55,#04,#55,#04,#55,#04
	db #55,#04,#55,#04,#61,#04,#3d,#04
	db #3d,#04,#61,#09,#55,#04,#55,#04
	db #61,#04,#3d,#04,#3d,#04,#61,#09
	db #55,#04,#61,#11,#38,#04,#61,#09
.la84f equ $ + 3
	db #55,#04,#fe,#61,#0b,#3d,#04,#44
	db #04,#42,#04,#44,#10,#60,#10,#60
.la860 equ $ + 4
	db #10,#60,#04,#fe,#61,#0b,#3d,#04
	db #44,#04,#42,#04,#44,#10,#60,#10
.la871 equ $ + 5
	db #60,#04,#46,#10,#fe,#61,#0b,#3d
	db #04,#44,#04,#42,#04,#44,#10,#60
.la882 equ $ + 6
	db #10,#60,#04,#41,#10,#fe,#61,#04
	db #3d,#08,#61,#03,#3d,#04,#49,#04
	db #61,#02,#38,#08,#61,#03,#3d,#04
	db #49,#04,#61,#04,#3d,#08,#61,#03
	db #3d,#04,#49,#04,#61,#02,#38,#08
	db #61,#03,#3d,#04,#49,#04,#61,#04
	db #3d,#08,#61,#03,#3a,#04,#46,#04
	db #61,#02,#38,#08,#61,#03,#3a,#04
	db #46,#04,#61,#04,#3d,#08,#61,#03
	db #3a,#04,#46,#04,#61,#02,#38,#08
	db #61,#03,#3a,#04,#46,#04,#61,#04
	db #3d,#08,#61,#03,#36,#04,#42,#04
	db #61,#02,#38,#08,#61,#03,#36,#04
	db #42,#04,#61,#04,#3d,#08,#61,#03
	db #36,#04,#42,#04,#61,#02,#38,#08
	db #61,#03,#36,#04,#42,#04,#61,#04
	db #3d,#08,#61,#03,#38,#04,#44,#04
	db #61,#02,#38,#08,#61,#03,#38,#04
	db #44,#04,#61,#04,#3d,#08,#61,#03
	db #38,#04,#44,#04,#61,#02,#38,#08
.la923 equ $ + 7
	db #61,#03,#38,#04,#44,#04,#fe,#61
	db #0c,#3d,#10,#60,#10,#60,#10,#fa
	db #00,#fe,#3f,#04,#fa,#00,#00,#41
	db #0c,#3c,#10,#60,#10,#3a,#10,#60
	db #10,#36,#10,#60,#10,#60,#10,#60
	db #10,#fa,#00,#ff,#36,#10,#60,#10
.la951 equ $ + 5
	db #60,#10,#60,#10,#fe,#61,#01,#3d
	db #04,#42,#04,#44,#04,#3d,#04,#3d
	db #04,#42,#04,#44,#04,#42,#04,#3d
	db #04,#44,#04,#42,#04,#3d,#04,#42
	db #04,#44,#04,#3d,#04,#42,#04,#3d
	db #04,#42,#04,#44,#04,#3d,#04,#3d
	db #04,#42,#04,#3d,#04,#44,#04,#3d
	db #04,#42,#04,#44,#04,#3d,#04,#42
	db #04,#3d,#04,#44,#04,#3d,#04,#42
	db #04,#3d,#04,#44,#04,#3d,#04,#42
	db #04,#3d,#04,#44,#04,#3d,#04,#42
	db #04,#3d,#04,#44,#04,#3d,#04,#42
	db #04,#3d,#04,#44,#04,#3d,#04,#42
	db #04,#3d,#04,#44,#04,#3d,#04,#42
	db #04,#3d,#04,#44,#04,#3d,#04,#42
	db #04,#3d,#04,#44,#04,#3d,#04,#42
	db #04,#3d,#04,#44,#04,#3d,#04,#fe
.la9d4
	db #fc,#00,#fb,#18,#02,#08,#05,#02
	db #fa,#f4,#01,#0c,#fa,#0c,#02,#07
.la9e5 equ $ + 1
	db #fe,#03,#01,#04,#02,#fa,#fb,#04
	db #01,#fa,#05,#04,#01,#05,#02,#02
	db #02,#03,#01,#05,#02,#fa,#f4,#01
.la9fe equ $ + 2
	db #0c,#fe,#01,#02,#fa,#fb,#01,#02
	db #fa,#05,#01,#02,#fa,#fb,#01,#02
	db #fa,#05,#01,#04,#fa,#fb,#01,#02
	db #fa,#05,#01,#0a,#fa,#fb,#01,#02
	db #fa,#05,#01,#02,#fa,#fb,#01,#02
.laa2b equ $ + 7
	db #05,#02,#fa,#05,#01,#0c,#fe,#61
	db #01,#25,#04,#25,#04,#28,#04,#25
	db #08,#25,#04,#28,#08,#25,#04,#25
	db #04,#28,#04,#25,#08,#25,#04,#28
.laa46 equ $ + 2
	db #08,#fe,#61,#00,#25,#04,#25,#04
	db #28,#04,#25,#08,#25,#04,#28,#08
	db #25,#04,#25,#04,#28,#04,#25,#08
.laa61 equ $ + 5
	db #25,#04,#28,#08,#fe,#61,#08,#3d
	db #10,#60,#10,#60,#10,#60,#10,#60
	db #10,#60,#10,#60,#10,#60,#10,#42
	db #10,#60,#10,#60,#10,#60,#10,#60
	db #10,#60,#10,#60,#10,#60,#10,#3d
	db #10,#60,#10,#60,#10,#60,#10,#60
	db #10,#60,#10,#60,#10,#60,#10,#42
	db #10,#60,#10,#60,#10,#60,#10,#60
	db #10,#60,#10,#60,#10,#60,#10,#fe
.laaa4
	db #61,#07,#3d,#04,#4e,#04,#55,#04
	db #5c,#04,#49,#04,#42,#04,#3d,#04
	db #50,#04,#55,#04,#5a,#04,#49,#04
	db #44,#04,#3d,#04,#4e,#04,#55,#04
	db #5c,#04,#49,#04,#42,#04,#3d,#04
	db #50,#04,#55,#04,#4e,#04,#3d,#04
	db #50,#04,#55,#04,#4e,#04,#49,#04
	db #5c,#04,#55,#04,#4e,#04,#3d,#04
	db #50,#04,#fe,#fe,#fe,#fe,#fe,#fe
	db #fe,#fe,#fe,#fe,#fe,#fe,#fe,#fe
	db #fe,#fe,#fe,#fe,#fe,#fe,#fe,#fe
	db #fe,#fe,#fe,#fe
;
; #037b
;ld a,#c9
;ld (#9b0d),a
;xor a
;ld (#9906),a
;call #9900
;
; #07fd
;call #9900
;ld a,#06
;ld (#9906),a
;
.music_info
	db "Joe Blade 3 (1989)(Players)(Andy Severn)",0
	db "",0

	read "music_end.asm"
