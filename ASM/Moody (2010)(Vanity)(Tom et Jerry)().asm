; Music of Moody (2010)(Vanity)(Tom et Jerry)()
; Ripped by Megachur the 15/12/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MOODY.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #070c

	read "music_header.asm"

.l070c
	db #18,#07,#21,#07,#2d,#07,#48,#07
.l071a equ $ + 6
	db #4f,#07,#58,#07,#00,#00,#00,#00
	db #00,#00,#0d,#1a,#07,#03,#00,#38
	db #78,#03,#78,#07,#78,#0c,#0d,#23
	db #07,#02,#00,#3e,#28,#ba,#28,#10
	db #00,#b6,#21,#20,#00,#b2,#21,#30
	db #00,#aa,#21,#40,#00,#a2,#21,#40
	db #00,#0d,#1a,#07,#01,#00,#05,#5c
	db #0d,#4a,#07,#03,#00,#38,#34,#30
	db #2c,#0d,#54,#07,#03,#00,#38,#78
	db #02,#78,#05,#78,#0c,#0d,#5a,#07
.l076a equ $ + 6
	db #02,#00,#00,#00,#7b,#08,#00,#04
	db #09,#04,#09,#04,#09,#10,#89,#08
	db #7c,#08,#04,#09,#20,#00,#89,#08
	db #7c,#08,#04,#09,#02,#fe,#89,#08
	db #fe,#08,#04,#09,#02,#00,#89,#08
	db #7c,#08,#04,#09,#00,#89,#08,#7c
	db #08,#e5,#08,#0a,#fe,#ff,#89,#08
	db #fe,#08,#e5,#08,#1a,#00,#fd,#89
	db #08,#7c,#08,#e5,#08,#40,#18,#00
	db #09,#09,#04,#09,#04,#09,#08,#18
	db #0c,#89,#08,#04,#09,#e5,#08,#20
	db #18,#0e,#89,#08,#7c,#08,#e5,#08
	db #10,#08,#0b,#89,#08,#7c,#08,#e5
	db #08,#1a,#fe,#0c,#89,#08,#fe,#08
	db #e5,#08,#20,#08,#0e,#89,#08,#fe
	db #08,#e5,#08,#0e,#00,#f9,#0c,#89
	db #08,#7c,#08,#e5,#08,#0c,#00,#09
	db #89,#08,#7c,#08,#e5,#08,#08,#00
	db #09,#09,#7c,#08,#0e,#09,#00,#09
	db #09,#7c,#08,#0e,#09,#02,#fe,#89
	db #08,#fe,#08,#0e,#09,#08,#0e,#89
	db #08,#fe,#08,#e5,#08,#18,#0c,#89
	db #08,#fe,#08,#e5,#08,#10,#08,#0b
	db #89,#08,#fe,#08,#e5,#08,#1e,#00
	db #0c,#00,#89,#08,#7c,#08,#22,#09
	db #20,#00,#89,#08,#7c,#08,#22,#09
	db #02,#fe,#89,#08,#fe,#08,#36,#09
	db #02,#fc,#89,#08,#7c,#08,#36,#09
	db #00,#89,#08,#7c,#08,#54,#09,#02
	db #fe,#89,#08,#7c,#08,#4c,#09,#18
	db #09,#89,#08,#7c,#08,#e5,#08,#10
	db #08,#0b,#89,#08,#7c,#08,#e5,#08
	db #1e,#00,#00,#09,#89,#08,#7c,#08
	db #e5,#08,#40,#18,#00,#82,#08,#82
	db #08,#82,#08,#02,#01,#6a,#07,#00
	db #a2,#eb,#00,#00,#01,#00,#42,#60
	db #00,#42,#80,#00,#00,#8a,#e0,#00
	db #00,#02,#02,#8a,#60,#03,#06,#72
	db #60,#02,#02,#63,#02,#a2,#60,#03
	db #02,#a2,#60,#02,#02,#63,#02,#4b
	db #02,#a2,#60,#03,#06,#72,#60,#02
	db #02,#63,#02,#a2,#60,#03,#02,#a2
	db #60,#02,#02,#63,#02,#8a,#60,#03
	db #06,#4b,#02,#72,#60,#02,#02,#63
	db #02,#a2,#60,#03,#02,#a2,#60,#02
	db #02,#63,#02,#4b,#02,#a2,#60,#03
	db #06,#72,#60,#02,#02,#63,#02,#a2
	db #60,#03,#02,#a2,#60,#02,#02,#63
	db #63,#a8,#ef,#00,#00,#04,#42,#0d
	db #42,#0b,#42,#09,#42,#07,#42,#03
.l08f6 equ $ + 2
	db #2c,#42,#07,#42,#09,#42,#0b,#42
	db #0d,#00,#a2,#e0,#00,#00,#05,#00
	db #42,#8f,#00,#00,#00,#42,#83,#00
	db #00,#00,#c0,#e0,#00,#00,#04,#06
	db #7f,#06,#85,#06,#7f,#06,#81,#06
	db #7f,#06,#85,#06,#7f,#00,#be,#e1
	db #00,#00,#04,#02,#81,#06,#81,#06
	db #7f,#06,#7f,#06,#77,#06,#7b,#06
	db #71,#00,#be,#e0,#00,#00,#04,#02
	db #81,#06,#81,#06,#7f,#06,#85,#06
	db #7f,#06,#81,#06,#7f,#06,#7b,#00
	db #c0,#e0,#00,#00,#04,#1e,#7f,#00
	db #c8,#e0,#00,#00,#04,#16,#85,#02
	db #81,#06,#7f,#06,#81,#06,#85,#06
	db #81,#00
;
.init_music
.play_music
;
.l0967 equ $ + 1
	ld a,#01		; play music
	dec a
	jp nz,l0ad3
.l096d equ $ + 1
	ld a,#01
	dec a
	jr nz,l09bf
.l0972 equ $ + 1
	ld hl,l076a
	ld a,(hl)
	inc hl
	rra
;	jp c,#0000		; goto 0 when end music !
	jp c,music_end_detect	; modified by Megachur
	rra
	jr nc,l0982
	ld de,l09e9
	ldi
.l0982
	rra
	jr nc,l098a
	ld de,l0a48
	ldi
.l098a
	rra
	jr nc,l0992
	ld de,l0a9d
	ldi
.l0992
	ld de,l09c8
	ldi
	ldi
	ld de,l0a2d
	ldi
	ldi
	ld de,l0a82
	ldi
	ldi
	rra
	jr nc,l09af
	ld de,l09be
	ldi
.l09af
	ld (l0972),hl
	ld a,#01
	ld (l09c3),a
	ld (l0a28),a
	ld (l0a7d),a
.l09be equ $ + 1
	ld a,#02
.l09bf
	ld (l096d),a
.l09c3 equ $ + 1
	ld a,#01
	dec a
	jr nz,l0a24
.l09c8 equ $ + 1
	ld hl,#0000
	call l0c99
	ld (l09c8),hl
	jr c,l0a24
	ld a,d
	rra
	jr nc,l09db
	and #0f
	ld (l0b34),a
.l09db
	rl d
	jr nc,l09e3
	ld (l0b22),ix
.l09e3
	rl d
	jr nc,l0a22
	ld a,e
.l09e9 equ $ + 1
	add #00
	ld (l0b33),a
	ld hl,#0000
	ld (l0b1f),hl
	rl d
	jr c,l0a02
.l09f8 equ $ + 1
	ld hl,#0000
	ld a,(l0b44)
	ld (l0b3c),a
	jr l0a1f
.l0a02
	ld l,b
	add hl,hl
	ld bc,l070c
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l0b44),a
	ld (l0b3c),a
	ld a,(hl)
	or a
	jr z,l0a1b
	ld (l0b89),a
.l0a1b
	inc hl
	ld (l09f8),hl
.l0a1f
	ld (l0b36),hl
.l0a22
	ld a,#01
.l0a24
	ld (l09c3),a
.l0a28 equ $ + 1
	ld a,#01
	dec a
	jr nz,l0a79
.l0a2d equ $ + 1
	ld hl,#0000
	call l0c99
	ld (l0a2d),hl
	jr c,l0a79
	ld a,d
	rra
	jr nc,l0a40
	and #0f
	ld (l0b01),a
.l0a40
	rl d
	rl d
	jr nc,l0a77
	ld a,e
.l0a48 equ $ + 1
	add #00
	ld (l0b00),a
	ld hl,#0000
	rl d
	jr c,l0a5e
.l0a54 equ $ + 1
	ld hl,#0000
	ld a,(l0b11)
	ld (l0b09),a
	jr l0a74
.l0a5e
	ld l,b
	add hl,hl
	ld bc,l070c
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l0b11),a
	ld (l0b09),a
	inc hl
	ld (l0a54),hl
.l0a74
	ld (l0b03),hl
.l0a77
	ld a,#01
.l0a79
	ld (l0a28),a
.l0a7d equ $ + 1
	ld a,#01
	dec a
	jr nz,l0ace
.l0a82 equ $ + 1
	ld hl,#0000
	call l0c99
	ld (l0a82),hl
	jr c,l0ace
	ld a,d
	rra
	jr nc,l0a95
	and #0f
	ld (l0ae0),a
.l0a95
	rl d
	rl d
	jr nc,l0acc
	ld a,e
.l0a9d equ $ + 1
	add #00
	ld (l0adf),a
	ld hl,#0000
	rl d
	jr c,l0ab3
.l0aa9 equ $ + 1
	ld hl,#0000
	ld a,(l0af0)
	ld (l0ae8),a
	jr l0ac9
.l0ab3
	ld l,b
	add hl,hl
	ld bc,l070c
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l0af0),a
	ld (l0ae8),a
	inc hl
	ld (l0aa9),hl
.l0ac9
	ld (l0ae2),hl
.l0acc
	ld a,#01
.l0ace
	ld (l0a7d),a
	ld a,#06
.l0ad3
	ld (l0967),a
	ld iy,l0ba0
	ld de,#0000
	exx
.l0ae0 equ $ + 2
.l0adf equ $ + 1
	ld de,#0000
.l0ae2 equ $ + 1
	ld hl,l071a
	call l0baf
.l0ae8 equ $ + 1
	ld a,#01
	dec a
	jr nz,l0af1
	ld (l0ae2),hl
.l0af0 equ $ + 1
	ld a,#06
.l0af1
	ld (l0ae8),a
	ld a,lx
	ex af,af'
	ld iy,l0b9e
	ld de,#0000
	exx
.l0b01 equ $ + 2
.l0b00 equ $ + 1
	ld de,#0000
.l0b03 equ $ + 1
	ld hl,l071a
	call l0baf
.l0b09 equ $ + 1
	ld a,#01
	dec a
	jr nz,l0b12
	ld (l0b03),hl
.l0b11 equ $ + 1
	ld a,#06
.l0b12
	ld (l0b09),a
	ex af,af'
	add a
	or lx
	ex af,af'
	ld iy,l0b9c
.l0b1f equ $ + 1
	ld hl,#0000
.l0b22 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l0b1f),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l0b34 equ $ + 2
.l0b33 equ $ + 1
	ld de,#0000
.l0b36 equ $ + 1
	ld hl,l071a
	call l0baf
.l0b3c equ $ + 1
	ld a,#01
	dec a
	jr nz,l0b45
	ld (l0b36),hl
.l0b44 equ $ + 1
	ld a,#06
.l0b45
	ld (l0b3c),a
	ex af,af'
	add a
	or lx
	ld (l0ba3),a
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l0b9c
	ld bc,#f400
	ld de,l08f6
.l0b60
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	dec d
	jr nz,l0b60
	ld d,#05
.l0b74
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	dec d
	jr nz,l0b74
	ld a,(hl)
.l0b89 equ $ + 1
	cp #ff
	ret z
	ld (l0b89),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l0b9c
	nop
	nop
.l0b9e
	nop
	nop
.l0ba0
	nop
	nop
.l0ba2
	nop
.l0ba3
	ccf
	nop
	nop
	nop
	nop
	nop
	nop
.l0baa
	nop
	nop
	nop
	nop
.l0bae
	rst #38
.l0baf
	ld b,(hl)
	inc hl
	rr b
	jp c,l0bfa
	rr b
	jr c,l0bd5
	ld a,b
	and #0f
	jr nz,l0bc6
	ld (iy+#08),a
	ld lx,#09
	ret
.l0bc6
	ld lx,#08
	sub d
	jr nc,l0bcd
	xor a
.l0bcd
	ld (iy+#08),a
	rr b
	jp l0c66
.l0bd5
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l0be5
	ld (l0ba2),a
	ld lx,#00
.l0be5
	ld a,b
	and #0f
	sub d
	jr nc,l0bec
	xor a
.l0bec
	ld (iy+#08),a
	bit 5,c
	jr nz,l0bf6
	inc lx
	ret
.l0bf6
	rr b
	jr l0c66
.l0bfa
	rr b
	jr nc,l0c0d
	ld a,(l0b3c)
	ld c,a
	ld a,(l0b44)
	cp c
	jr nz,l0c0d
	ld a,#fe
	ld (l0b89),a
.l0c0d
	bit 1,b
	jp nz,l0c5f
	ld (iy+#08),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l0bae),a
	call l0c66
	ld a,c
	rra
	rra
	and #1c
	ld (l0c2f),a
	ld a,b
	exx
.l0c2f equ $ + 1
	jr l0c30
.l0c30
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	jr nc,l0c4f
	inc hl
.l0c4f
	ld (l0baa),hl
	exx
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l0ba2),a
	ld lx,#00
	ret
.l0c5f
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l0baf
.l0c66
	bit 4,b
	jr z,l0c76
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld d,a
	exx
.l0c76
	ld a,e
	bit 3,b
	jr z,l0c83
	add (hl)
	inc hl
	cp #90
	jr c,l0c83
	ld a,#8f
.l0c83
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l0ccd
	add hl,bc
	ld a,(hl)
	inc hl
	ld l,(hl)
	ld h,a
	add hl,de
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l0c99
	ld a,(hl)
	inc hl
	srl a
	jr c,l0cc0
	sub #20
	jr c,l0cca
	jr z,l0cbc
	dec a
	ld e,a
.l0ca7
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l0cb5
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l0cb5
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l0cbc
	ld e,(hl)
	inc hl
	jr l0ca7
.l0cc0
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l0cca
	add #20
	ret
.l0ccd
	dw #ee0e,#180e,#4d0d,#8e0c
	dw #da0b,#2f0b,#8f0a,#f709
	dw #6809,#e108,#6108,#e907
	dw #7707,#0c07,#a606,#4706
	dw #ed05,#9705,#4705,#fb04
	dw #b404,#7004,#3004,#f403
	dw #bb03,#8603,#5303,#2303
	dw #f602,#cb02,#a302,#7d02
	dw #5a02,#3802,#1802,#fa01
	dw #dd01,#c301,#a901,#9101
	dw #7b01,#6501,#5101,#3e01
	dw #2d01,#1c01,#0c01,#fd00
	dw #ee00,#e100,#d400,#c800
	dw #bd00,#b200,#a800,#9f00
	dw #9600,#8e00,#8600,#7e00
	dw #7700,#7000,#6a00,#6400
	dw #5e00,#5900,#5400,#4f00
	dw #4b00,#4700,#4300,#3f00
	dw #3b00,#3800,#3500,#3200
	dw #2f00,#2c00,#2a00,#2700
	dw #2500,#2300,#2100,#1f00
	dw #1d00,#1c00,#1a00,#1900
	dw #1700,#1600,#1500,#1300
	dw #1200,#1100,#1000,#0f00
	dw #0e00,#0e00,#0d00,#0c00
	dw #0b00,#0b00,#0a00,#0900
	dw #0900,#0800,#0800,#0700
	dw #0700,#0700,#0600,#0600
	dw #0500,#0500,#0500,#0400
	dw #0400,#0400,#0400,#0300
	dw #0300,#0300,#0300,#0300
	dw #0200,#0200,#0200,#0200
	dw #0200,#0200,#0200,#0100
	dw #0100,#0100,#0100,#0100
	dw #0100,#0100,#0100,#0100
	dw #0100,#0100,#0100,#0000
;
.music_end_detect		; added by Megachur
;
music_end equ $+1
	ld a,#ff
	xor a
	ld (music_end),a
	ret
;
.music_info
	db "Moody (2010)(Vanity)(Tom et Jerry)",0
	db "",0

	read "music_end.asm"
