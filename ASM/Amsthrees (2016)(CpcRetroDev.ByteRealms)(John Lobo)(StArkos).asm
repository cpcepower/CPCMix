; Music of Amsthrees (2016)(CpcRetroDev.ByteRealms)(John Lobo)(StArkos)
; Ripped by Megachur the 16/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AMSTHREE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0040
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

.l0040
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#d5,#00,#58,#00,#61,#00
	db #84,#00,#b9,#00,#f8,#00,#0c,#01
	db #00,#00,#00,#00,#00,#00,#0d,#5a
	db #00,#01,#00,#3c,#74,#04,#6c,#07
	db #68,#04,#24,#60,#04,#38,#70,#04
	db #68,#07,#64,#04,#20,#5c,#04,#34
	db #6c,#04,#64,#07,#60,#04,#1c,#58
	db #04,#0d,#5a,#00,#01,#00,#3c,#7c
	db #04,#78,#07,#38,#74,#04,#74,#07
	db #30,#70,#04,#6c,#07,#2c,#68,#04
	db #68,#07,#24,#64,#04,#60,#07,#20
	db #5c,#04,#5c,#07,#18,#58,#04,#54
	db #07,#14,#50,#04,#50,#07,#0c,#4c
	db #04,#48,#07,#08,#44,#04,#0d,#5a
	db #00,#01,#00,#7c,#07,#7c,#0c,#78
	db #10,#78,#07,#74,#0c,#74,#10,#70
	db #07,#70,#0c,#6c,#10,#6c,#07,#68
	db #0c,#68,#10,#64,#07,#64,#0c,#60
	db #10,#60,#07,#5c,#0c,#5c,#10,#58
	db #07,#58,#0c,#54,#10,#54,#07,#50
	db #0c,#50,#10,#4c,#07,#4c,#0c,#48
	db #10,#48,#07,#44,#0c,#0d,#5a,#00
	db #01,#00,#3c,#38,#34,#30,#2c,#28
	db #24,#20,#1c,#18,#14,#10,#0c,#08
	db #04,#0d,#5a,#00,#01,#00,#3e,#01
	db #36,#01,#2e,#01,#26,#01,#1e,#01
	db #16,#01,#0e,#01,#06,#01,#0d,#5a
	db #00,#40,#00,#00,#00,#69,#01,#00
	db #4c,#02,#47,#02,#fd,#01,#00,#4c
	db #02,#b9,#01,#fd,#01,#00,#4c,#02
	db #b9,#01,#fd,#01,#00,#4c,#02,#b9
	db #01,#29,#02,#00,#4c,#02,#b9,#01
	db #29,#02,#00,#4c,#02,#b9,#01,#6a
	db #01,#00,#4c,#02,#b9,#01,#6a,#01
	db #00,#4c,#02,#b9,#01,#fd,#01,#00
	db #4c,#02,#b9,#01,#fd,#01,#01,#27
	db #01,#00,#42,#60,#00,#42,#80,#00
	db #00,#a6,#60,#01,#04,#a6,#60,#02
	db #04,#a6,#60,#03,#02,#a6,#60,#01
	db #04,#a6,#60,#02,#08,#a6,#60,#01
	db #04,#a6,#60,#02,#04,#a6,#60,#03
	db #02,#a6,#60,#01,#04,#a6,#60,#02
	db #08,#98,#60,#03,#04,#59,#04,#71
	db #02,#59,#04,#a6,#60,#02,#08,#9c
	db #60,#01,#04,#9c,#60,#02,#04,#9c
	db #60,#03,#04,#67,#02,#a6,#60,#02
	db #00,#76,#e0,#00,#00,#04,#02,#4f
	db #02,#37,#02,#4f,#02,#37,#02,#4f
	db #02,#37,#02,#4f,#02,#3d,#02,#55
	db #02,#3d,#02,#55,#02,#3d,#02,#55
	db #02,#3d,#02,#55,#02,#33,#02,#4b
	db #02,#33,#02,#4b,#02,#33,#02,#4b
	db #02,#33,#02,#4b,#02,#41,#02,#59
	db #02,#41,#02,#59,#02,#41,#02,#59
	db #02,#41,#02,#59,#00,#7a,#e0,#00
	db #00,#05,#06,#3b,#02,#3b,#06,#3b
	db #02,#3b,#06,#3b,#06,#3b,#02,#3b
	db #06,#3b,#02,#3b,#06,#3b,#06,#3b
	db #02,#3b,#06,#3b,#02,#3b,#06,#3b
	db #06,#3b,#02,#3b,#06,#3b,#02,#3b
	db #00,#a6,#e0,#00,#00,#01,#42,#00
	db #04,#67,#06,#42,#00,#06,#67,#06
	db #67,#1e,#67,#42,#00,#04,#67,#06
	db #42,#00,#06,#67,#06,#67,#00,#42
	db #80,#00,#00,#00,#42,#80,#00,#00
	db #00,#00
.l0252
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#3d,#00,#62,#02,#6b,#02
	db #00,#00,#00,#00,#00,#00,#0d,#64
	db #02,#01,#00,#90,#10,#00,#94,#09
	db #00,#98,#08,#00,#9c,#07,#00,#a0
	db #06,#00,#a4,#05,#00,#a8,#04,#00
	db #ac,#03,#00,#b0,#02,#00,#b4,#01
	db #00,#38,#3c,#3c,#38,#34,#30,#ac
	db #ff,#ff,#2c,#2c,#2c,#2c,#0d,#91
	db #02,#59,#00,#00,#00,#ab,#02,#00
	db #f8,#02,#af,#02,#f8,#02,#01,#a1
	db #02,#25,#a8,#81,#00,#aa,#e0,#00
	db #00,#01,#04,#6b,#02,#79,#04,#79
	db #02,#6f,#04,#71,#6f,#6b,#0a,#79
	db #02,#7f,#02,#83,#04,#7f,#02,#79
	db #04,#7d,#75,#79,#06,#83,#02,#83
	db #04,#83,#02,#7f,#04,#79,#02,#79
	db #02,#75,#02,#71,#02,#6f,#02,#67
	db #08,#67,#02,#6b,#06,#79,#02,#75
	db #06,#71,#02,#6f,#02,#6b,#02,#67
	db #02,#6b,#06,#42,#60,#00,#42,#80
	db #00,#00,#22,#42,#00,#02,#42,#00
	db #04,#42,#00,#02,#42,#00,#02,#42
	db #00,#02,#42,#00,#02,#42,#00,#42
	db #00,#42,#00,#00,#00,#00,#00,#00
;
; org #0400
; db #41,#54,#31,#30,#01,#40,#42,#0f
; db #02,#06,#0b,#00,#0e,#04,#00,#00
; db #00,#00,#00,#00,#0d,#10,#04,#40
; db #00,#00,#00,#27,#04,#00,#28,#04
; db #28,#04,#28,#04,#01,#1d,#04,#00
; db #42,#80,#00,#00,#00,#00,#00,#00
;
; #5c16 - player reallocated by Megachur
;
.l5c17 equ $ + 1
.l5c16
	db #00,#00
;
.play_music
;
	push ix
	push iy
	xor a
	ld (l5c16),a
.l5c21 equ $ + 1
	ld a,#01
	dec a
	jp nz,l5df4
.l5c27 equ $ + 1
	ld a,#01
	dec a
	jr nz,l5c9a
.l5c2c equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l5c41
	ld a,(l5c17)
	inc a
	ld (l5c17),a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l5c41
	rra
	jr nc,l5c49
	ld de,l5cea
	ldi
.l5c49
	rra
	jr nc,l5c51
	ld de,l5d4f
	ldi
.l5c51
	rra
	jr nc,l5c59
	ld de,l5db4
	ldi
.l5c59
	ld de,l5cc9
	ldi
	ldi
	ld de,l5d2e
	ldi
	ldi
	ld de,l5d93
	ldi
	ldi
	rra
	jr nc,l5c76
	ld de,l5c99
	ldi
.l5c76
	rra
	jr nc,l5c81
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l5c85),de
.l5c81
	ld (l5c2c),hl
.l5c85 equ $ + 1
	ld hl,#0000
	ld (l5ca3),hl
	ld a,#01
	ld (l5c9e),a
	ld (l5cc4),a
	ld (l5d29),a
	ld (l5d8e),a
.l5c99 equ $ + 1
	ld a,#01
.l5c9a
	ld (l5c27),a
.l5c9e equ $ + 1
	ld a,#01
	dec a
	jr nz,l5cc0
.l5ca3 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l5cbd
	srl a
	jr nz,l5cb1
	ld a,(hl)
	inc hl
.l5cb1
	jr nc,l5cb8
	ld (l5c16),a
	jr l5cbb
.l5cb8
	ld (l5df3),a
.l5cbb
	ld a,#01
.l5cbd
	ld (l5ca3),hl
.l5cc0
	ld (l5c9e),a
.l5cc4 equ $ + 1
	ld a,#01
	dec a
	jr nz,l5d25
.l5cc9 equ $ + 1
	ld hl,#0000
	call l61c7
	ld (l5cc9),hl
	jr c,l5d25
	ld a,d
	rra
	jr nc,l5cdc
	and #0f
	ld (l5ecc),a
.l5cdc
	rl d
	jr nc,l5ce4
	ld (l5eba),ix
.l5ce4
	rl d
	jr nc,l5d23
	ld a,e
.l5cea equ $ + 1
	add #00
	ld (l5ecb),a
	ld hl,#0000
	ld (l5eb7),hl
	rl d
	jr c,l5d03
.l5cf9 equ $ + 1
	ld hl,#0000
	ld a,(l5edc)
	ld (l5ed4),a
	jr l5d20
.l5d03
	ld l,b
	add hl,hl
.l5d06 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l5edc),a
	ld (l5ed4),a
	ld a,(hl)
	or a
	jr z,l5d1c
	ld (l5fe9),a
.l5d1c
	inc hl
	ld (l5cf9),hl
.l5d20
	ld (l5ece),hl
.l5d23
	ld a,#01
.l5d25
	ld (l5cc4),a
.l5d29 equ $ + 1
	ld a,#01
	dec a
	jr nz,l5d8a
.l5d2e equ $ + 1
	ld hl,#0000
	call l61c7
	ld (l5d2e),hl
	jr c,l5d8a
	ld a,d
	rra
	jr nc,l5d41
	and #0f
	ld (l5e6d),a
.l5d41
	rl d
	jr nc,l5d49
	ld (l5e5b),ix
.l5d49
	rl d
	jr nc,l5d88
	ld a,e
.l5d4f equ $ + 1
	add #00
	ld (l5e6c),a
	ld hl,#0000
	ld (l5e58),hl
	rl d
	jr c,l5d68
.l5d5e equ $ + 1
	ld hl,#0000
	ld a,(l5e7d)
	ld (l5e75),a
	jr l5d85
.l5d68
	ld l,b
	add hl,hl
.l5d6b equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l5e7d),a
	ld (l5e75),a
	ld a,(hl)
	or a
	jr z,l5d81
	ld (l5fe9),a
.l5d81
	inc hl
	ld (l5d5e),hl
.l5d85
	ld (l5e6f),hl
.l5d88
	ld a,#01
.l5d8a
	ld (l5d29),a
.l5d8e equ $ + 1
	ld a,#01
	dec a
	jr nz,l5def
.l5d93 equ $ + 1
	ld hl,#0000
	call l61c7
	ld (l5d93),hl
	jr c,l5def
	ld a,d
	rra
	jr nc,l5da6
	and #0f
	ld (l5e11),a
.l5da6
	rl d
	jr nc,l5dae
	ld (l5dff),ix
.l5dae
	rl d
	jr nc,l5ded
	ld a,e
.l5db4 equ $ + 1
	add #00
	ld (l5e10),a
	ld hl,#0000
	ld (l5dfc),hl
	rl d
	jr c,l5dcd
.l5dc3 equ $ + 1
	ld hl,#0000
	ld a,(l5e21)
	ld (l5e19),a
	jr l5dea
.l5dcd
	ld l,b
	add hl,hl
.l5dd0 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l5e21),a
	ld (l5e19),a
	ld a,(hl)
	or a
	jr z,l5de6
	ld (l5fe9),a
.l5de6
	inc hl
	ld (l5dc3),hl
.l5dea
	ld (l5e13),hl
.l5ded
	ld a,#01
.l5def
	ld (l5d8e),a
.l5df3 equ $ + 1
	ld a,#01
.l5df4
	ld (l5c21),a
	ld iy,l6000
.l5dfc equ $ + 1
	ld hl,#0000
.l5dff equ $ + 1
	ld de,#0000
	add hl,de
	ld (l5dfc),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l5e11 equ $ + 2
.l5e10 equ $ + 1
	ld de,#0000
.l5e13 equ $ + 1
	ld hl,#0000
	call l600b
.l5e19 equ $ + 1
	ld a,#01
	dec a
	jr nz,l5e22
	ld (l5e13),hl
.l5e21 equ $ + 1
	ld a,#06
.l5e22
	ld (l5e19),a
.l5e25
	ld de,#0000
	exx
	ld de,#0000
.l5e2d equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l5e50
	ld a,#01
	ld (l613a),a
	call l600b
	xor a
	ld (l613a),a
	ld a,l
	or h
	jr z,l5e48
.l5e44 equ $ + 1
	ld a,#01
	dec a
	jr nz,l5e4d
.l5e48
	ld (l5e2d),hl
	ld a,#06
.l5e4d
	ld (l5e44),a
.l5e50
	ld a,lx
	ex af,af'
	ld iy,l5ffe
.l5e58 equ $ + 1
	ld hl,#0000
.l5e5b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l5e58),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l5e6d equ $ + 2
.l5e6c equ $ + 1
	ld de,#0000
.l5e6f equ $ + 1
	ld hl,#0000
	call l600b
.l5e75 equ $ + 1
	ld a,#01
	dec a
	jr nz,l5e7e
	ld (l5e6f),hl
.l5e7d equ $ + 1
	ld a,#06
.l5e7e
	ld (l5e75),a
.l5e81
	ld de,#0000
	exx
	ld de,#0000
.l5e89 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l5eac
	ld a,#01
	ld (l613a),a
	call l600b
	xor a
	ld (l613a),a
	ld a,l
	or h
	jr z,l5ea4
.l5ea0 equ $ + 1
	ld a,#01
	dec a
	jr nz,l5ea9
.l5ea4
	ld (l5e89),hl
	ld a,#06
.l5ea9
	ld (l5ea0),a
.l5eac
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l5ffc
.l5eb7 equ $ + 1
	ld hl,#0000
.l5eba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l5eb7),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l5ecc equ $ + 2
.l5ecb equ $ + 1
	ld de,#0000
.l5ece equ $ + 1
	ld hl,#0000
	call l600b
.l5ed4 equ $ + 1
	ld a,#01
	dec a
	jr nz,l5edd
	ld (l5ece),hl
.l5edc equ $ + 1
	ld a,#06
.l5edd
	ld (l5ed4),a
.l5ee0
	ld de,#0000
	exx
	ld de,#0000
.l5ee8 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l5f0b
	ld a,#01
	ld (l613a),a
	call l600b
	xor a
	ld (l613a),a
	ld a,l
	or h
	jr z,l5f03
.l5eff equ $ + 1
	ld a,#01
	dec a
	jr nz,l5f08
.l5f03
	ld (l5ee8),hl
	ld a,#06
.l5f08
	ld (l5eff),a
.l5f0b
	ex af,af'
	or lx
.l5f0e
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l5ffc
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
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
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	out (c),a
	exx
	out (c),e
	out (c),d
	exx
	inc c
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
	pop iy
	pop ix
	ld a,(hl)
.l5fe9 equ $ + 1
	cp #00
	ret z
	ld (l5fe9),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l5ffc
	nop
	nop
.l5ffe
	nop
	nop
.l6000
	nop
	nop
.l6002
	nop
.l6003
	nop
	nop
	nop
	nop
	nop
.l6008
	nop
	nop
.l600a
	nop
.l600b
	ld b,(hl)
	inc hl
	rr b
	jp c,l6069
	rr b
	jr c,l6039
	ld a,b
	and #0f
	jr nz,l6022
	ld (iy+#07),a
	ld lx,#09
	ret
.l6022
	ld lx,#08
	sub d
	jr nc,l6029
	xor a
.l6029
	ld (iy+#07),a
	rr b
	call l619b
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l6039
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l6049
	ld (l6002),a
	ld lx,#00
.l6049
	ld a,b
	and #0f
	sub d
	jr nc,l6050
	xor a
.l6050
	ld (iy+#07),a
	bit 5,c
	jr nz,l605a
	inc lx
	ret
.l605a
	rr b
	bit 6,c
	call l618d
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l6069
	rr b
	jr nc,l607c
	ld a,(l5ed4)
	ld c,a
	ld a,(l5edc)
	cp c
	jr nz,l607c
	ld a,#fe
	ld (l5fe9),a
.l607c
	bit 1,b
	jp nz,l6135
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l600a),a
	bit 0,b
	jr z,l60eb
	bit 2,b
	call l618d
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l60ab),a
	ld a,b
	exx
.l60ab equ $ + 1
	jr l60ac
.l60ac
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
	jr nc,l60cb
	inc hl
.l60cb
	bit 5,a
	jr z,l60db
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l60db
	ld (l6008),hl
	exx
.l60df
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l6002),a
	ld lx,#00
	ret
.l60eb
	bit 2,b
	call l618d
	ld (l6008),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l60ff),a
	ld a,b
	exx
.l60ff equ $ + 1
	jr l6100
.l6100
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	bit 5,a
	jr z,l612c
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l612c
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l60df
.l6135
	bit 0,b
	jr z,l6149
.l613a equ $ + 1
	ld a,#00
	or a
	jr z,l6142
	ld hl,#0000
	ret
.l6142
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l600b
.l6149
	ld (iy+#07),#10
	bit 5,b
	jr nz,l6156
	ld lx,#09
	jr l6169
.l6156
	ld lx,#08
	ld hx,e
	bit 2,b
	call l618d
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l6169
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l600a),a
	rr b
	rr b
	bit 2,b
	call l618d
	ld (l6008),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l6002),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l618d
	jr z,l619b
	ld a,(hl)
	inc hl
	exx
	add e
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld h,a
	ret
.l619b
	bit 4,b
	jr z,l61ab
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
.l61ab
	ld a,e
	bit 3,b
	jr z,l61b8
	add (hl)
	inc hl
	cp #90
	jr c,l61b8
	ld a,#8f
.l61b8
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l61fb
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l61c7
	ld a,(hl)
	inc hl
	srl a
	jr c,l61ee
	sub #20
	jr c,l61f8
	jr z,l61ea
	dec a
	ld e,a
.l61d5
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l61e3
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l61e3
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l61ea
	ld e,(hl)
	inc hl
	jr l61d5
.l61ee
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l61f8
	add #20
	ret
.l61fb
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
	db #0f,#00,#0e,#00,#0d,#00,#0d,#00
	db #0c,#00,#0b,#00,#0b,#00,#0a,#00
	db #09,#00,#09,#00,#08,#00,#08,#00
	db #07,#00,#07,#00,#07,#00,#06,#00
	db #06,#00,#06,#00,#05,#00,#05,#00
	db #05,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#03,#00,#03,#00
	db #03,#00,#03,#00,#03,#00,#02,#00
	db #02,#00,#02,#00,#02,#00,#02,#00
	db #02,#00,#02,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
;
.real_init_music
.l631b
;
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
	xor a
	ld (l5c17),a
	ld hl,#0009
	add hl,de
	ld de,l5df3
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l5d06),hl
	ld (l5d6b),hl
	ld (l5dd0),hl
	add hl,bc
	ld de,l5c99
	ldi
	ld de,l5cea
	ldi
	ld de,l5d4f
	ldi
	ld de,l5db4
	ldi
	ld de,l5c85
	ldi
	ldi
	ld (l5c2c),hl
	ld a,#01
	ld (l5c21),a
	ld (l5c27),a
	ld a,#ff
	ld (l600a),a
	ld hl,(l5d06)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l5ece),hl
	ld (l5e6f),hl
	ld (l5e13),hl
	ret
	push ix
	push iy
	ld hl,l6003
	ld bc,#0500
.l6385
	ld (hl),c
	inc hl
	djnz l6385
	ld a,#3f
	jp l5f0e
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	rrca
	jp c,l63a3
	rrca
	jp c,l639f
	ld hl,(l5e2d)
	ret
.l639f
	ld hl,(l5e89)
	ret
.l63a3
	ld hl,(l5ee8)
	ret
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,#000c
	add hl,de
	ld (l6402),hl
	ld hl,#0000
	ld (l5ee8),hl
	ld (l5e89),hl
	ld (l5e2d),hl
	ret
	ld (l641e),ix
	pop af
	pop hl
	pop de
	pop bc
	pop ix
	push ix
	push bc
	push de
	push hl
	push af
	ld a,lx
	rrca
	jp c,l63ea
	rrca
	jp c,l63e3
	ld ix,l5e25
	jp l63ee
.l63e3
	ld ix,l5e81
	jp l63ee
.l63ea
	ld ix,l5ee0
.l63ee
	ld (ix+#01),c
	ld (ix+#02),b
	ld a,e
	ld (ix+#05),a
	ld a,#0f
	sub h
	ld (ix+#06),a
	ld h,#00
	add hl,hl
.l6402 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,d
	or a
	jr nz,l640e
	ld a,(hl)
.l640e
	ld (ix+#27),a
	ld (ix+#1f),a
	inc hl
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
.l641e equ $ + 2
	ld ix,#0000
	ret
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	ld hl,#0000
	rrca
	jp nc,l6430
	ld (l5ee8),hl
.l6430
	rrca
	jp nc,l6437
	ld (l5e89),hl
.l6437
	rrca
	jp z,l643e
	ld (l5e2d),hl
.l643e
	ret
;
; #779a
; ld hl,#0400	; no music -> soundfx ?
; push hl
; call #631b
;
; #8d64
; ld hl,#0252
; push hl
; call #631b
;
; #7780
; ld hl,#0040
; push hl
; call #631b
;
.init_music		; added by Megachur
;
	ld hl,l0040
	or a
	jr z,call_real_init_music
	ld hl,l0252
call_real_init_music
	push hl
	call real_init_music
	pop af
	ret
;
.music_info
	db "Amsthrees (2016)(CpcRetroDev.ByteRealms)(John Lobo)",0
	db "StArkos",0

	read "music_end.asm"
