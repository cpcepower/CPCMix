; Music of 4x4 OffRoad Racing (1988)(Epyx)()()
; Ripped by Megachur the 10/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "4X4OFFRR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #9b00

	read "music_header.asm"

.l9b07 equ $ + 7
.l9b05 equ $ + 5
.l9b04 equ $ + 4
.l9b03 equ $ + 3
.l9b02 equ $ + 2
.l9b01 equ $ + 1
.l9b00
	db #00,#00,#00,#00,#01,#00,#00,#00
.l9b0f equ $ + 7
.l9b0d equ $ + 5
.l9b09 equ $ + 1
	db #00,#00,#00,#02,#01,#45,#a1,#45
	db #a1,#00,#00,#02,#01,#00,#00,#00
	db #00,#02,#01,#00,#00,#00,#00,#00
.l9b23 equ $ + 3
.l9b21 equ $ + 1
.l9b20
	db #00,#00,#01,#02,#00,#00,#00,#00
.l9b2f equ $ + 7
.l9b2e equ $ + 6
.l9b2d equ $ + 5
.l9b2c equ $ + 4
.l9b2b equ $ + 3
.l9b2a equ $ + 2
.l9b29 equ $ + 1
	db #00,#01,#00,#00,#00,#00,#00,#00
.l9b35 equ $ + 5
.l9b33 equ $ + 3
.l9b31 equ $ + 1
.l9b30
	db #01,#00,#00,#00,#00,#00,#00,#02
.l9b3b equ $ + 3
.l9b39 equ $ + 1
	db #01,#45,#a1,#45,#a1,#00,#00,#02
	db #01,#00,#00,#00,#00,#02,#01,#00
.l9b4f equ $ + 7
.l9b4d equ $ + 5
.l9b4c equ $ + 4
	db #00,#00,#00,#00,#00,#00,#01,#02
.l9b57 equ $ + 7
.l9b56 equ $ + 6
.l9b55 equ $ + 5
	db #00,#00,#00,#00,#00,#02,#00,#00
.l9b5f equ $ + 7
.l9b5d equ $ + 5
.l9b5c equ $ + 4
.l9b5b equ $ + 3
.l9b5a equ $ + 2
.l9b59 equ $ + 1
.l9b58
	db #00,#00,#00,#00,#01,#00,#00,#00
.l9b67 equ $ + 7
.l9b65 equ $ + 5
.l9b61 equ $ + 1
	db #00,#00,#00,#02,#01,#45,#a1,#45
	db #a1,#00,#00,#02,#01,#00,#00,#00
	db #00,#02,#01,#00,#00,#00,#00,#00
.l9b7b equ $ + 3
.l9b79 equ $ + 1
.l9b78
	db #00,#00,#01,#02,#00,#00,#00,#00
.l9b87 equ $ + 7
.l9b85 equ $ + 5
.l9b84 equ $ + 4
.l9b83 equ $ + 3
.l9b82 equ $ + 2
.l9b81 equ $ + 1
	db #00,#02,#00,#00,#00,#00,#00,#01
.l9b8d equ $ + 5
.l9b8c equ $ + 4
.l9b8b equ $ + 3
.l9b8a equ $ + 2
.l9b89 equ $ + 1
.l9b88
	db #01,#02,#00,#00,#00,#00
;
.play_music
;
	push af
	ld a,(l9b87)
	dec a
	ld (l9b87),a
	jr z,l9b9a
	pop af
	ret
.l9b9a
	push bc
	push de
	push hl
	push ix
	ld a,#01
	ld (l9b87),a
	call l9c0f
	call l9d4e
	call l9dcc
	ld a,(l9b03)
	and a
	jp z,l9bc6
	ld a,(l9b29)
	dec a
	ld (l9b29),a
	jr nz,l9bc6
	ld a,(l9b23)
	ld (l9b29),a
	call l9f71
.l9bc6
	call l9d5a
	call l9dcc
	ld a,(l9b2f)
	and a
	jp z,l9be6
	ld a,(l9b55)
	dec a
	ld (l9b55),a
	jp nz,l9be6
	ld a,(l9b4f)
	ld (l9b55),a
	call l9f71
.l9be6
	call l9d66
	call l9dcc
	ld a,(l9b5b)
	and a
	jp z,l9c05
	ld a,(l9b81)
	dec a
	ld (l9b81),a
	jr nz,l9c05
	ld a,(l9b7b)
	ld (l9b81),a
	call l9f71
.l9c05
	call la042
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l9c0f
	ld a,(l9b88)
	dec a
	ld (l9b88),a
	ret nz
	ld a,(l9b89)
	ld (l9b88),a
.l9c1d
	ld a,(l9b8b)
	and #01
	jp z,l9c83
	call l9d4e
	ld a,(l9b03)
	and a
	jp nz,l9ecf
	ld a,(l9b04)
	dec a
	ld (l9b04),a
	jr z,l9c3b
	jp l9c83
.l9c3b
	ld hl,(l9b05)
	ld a,(hl)
	and a
	jp z,l9d86
	cp #c8
	jp c,l9c50
	cp #f0
	jp c,l9dfd
	jp l9ecf
.l9c50
	ld (l9b04),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l9b05),hl
	and a
	jp nz,l9c5f
	jr l9c83
.l9c5f
	call l9fbc
	ld a,(l9fba)
	ld (l9b02),a
	ld (l9b2a),a
	ld (l9b20),a
	ld a,(l9fbb)
	ld (l9b01),a
	ld (l9b21),a
	ld (l9b2b),a
	ld hl,(l9b0f)
	ld (l9b0d),hl
	call l9d72
.l9c83
	ld a,(l9b8b)
	and #02
	jp z,l9ce9
	call l9d5a
	ld a,(l9b2f)
	and a
	jp nz,l9ed8
	ld a,(l9b30)
	dec a
	ld (l9b30),a
	jr z,l9ca1
	jp l9ce9
.l9ca1
	ld hl,(l9b31)
	ld a,(hl)
	and a
	jp z,l9d8c
	cp #c8
	jp c,l9cb6
	cp #f0
	jp c,l9e03
	jp l9ed8
.l9cb6
	ld (l9b30),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l9b31),hl
	and a
	jp nz,l9cc5
	jr l9ce9
.l9cc5
	call l9fbc
	ld a,(l9fba)
	ld (l9b2e),a
	ld (l9b56),a
	ld (l9b4c),a
	ld a,(l9fbb)
	ld (l9b2d),a
	ld (l9b57),a
	ld (l9b4d),a
	ld hl,(l9b3b)
	ld (l9b39),hl
	call l9d72
.l9ce9
	ld a,(l9b8b)
	and #04
	jp z,l9d4a
	call l9d66
	ld a,(l9b5b)
	and a
	jp nz,l9ee1
	ld a,(l9b5c)
	dec a
	ld (l9b5c),a
	jr nz,l9d4a
	ld hl,(l9b5d)
	ld a,(hl)
	and a
	jp z,l9d92
	cp #c8
	jp c,l9d19
	cp #f0
	jp c,l9e09
	jp l9ee1
.l9d19
	ld (l9b5c),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l9b5d),hl
	and a
	jp z,l9d4a
	call l9fbc
	ld a,(l9fba)
	ld (l9b5a),a
	ld (l9b82),a
	ld (l9b78),a
	ld a,(l9fbb)
	ld (l9b59),a
	ld (l9b83),a
	ld (l9b79),a
	ld hl,(l9b67)
	ld (l9b65),hl
	call l9d72
.l9d4a
	call la042
	ret
.l9d4e
	push af
	ld ix,l9b00
	ld a,#01
	ld (l9b8c),a
	pop af
	ret
.l9d5a
	push af
	ld ix,l9b2c
	ld a,#02
	ld (l9b8c),a
	pop af
	ret
.l9d66
	push af
	ld ix,l9b58
	ld a,#04
	ld (l9b8c),a
	pop af
	ret
.l9d72
	xor a
	ld (ix+#1f),a
	ld (ix+#17),a
	ld a,(ix+#15)
	ld (ix+#16),a
	ld a,(ix+#1b)
	ld (ix+#1c),a
	ret
.l9d86
	call l9d98
	jp l9c1d
.l9d8c
	call l9d98
	jp l9c83
.l9d92
	call l9d98
	jp l9ce9
.l9d98
	ld l,(ix+#07)
	ld h,(ix+#08)
	ld a,(hl)
	and a
	jr nz,l9da9
	inc hl
	ld a,(hl)
	and a
	jr z,l9dbe
	dec hl
	ld a,(hl)
.l9da9
	ld (ix+#05),a
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#07),l
	ld (ix+#08),h
	ld a,#01
	ld (ix+#04),a
	ret
.l9dbe
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld (ix+#07),l
	ld (ix+#08),h
	jr l9d98
.l9dcc
	ld a,(l9b8c)
	ld b,a
	ld a,(l9b8a)
	and b
	ret z
	ld a,(ix+#03)
	and a
	ret nz
	ld a,(ix+#0c)
	dec a
	ld (ix+#0c),a
	ret nz
	ld a,(ix+#0b)
	ld (ix+#0c),a
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	ld a,(hl)
	cp #ff
	ret z
	ld (ix+#00),a
	inc hl
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l9dfd
	call l9e0f
	jp l9c1d
.l9e03
	call l9e0f
	jp l9c83
.l9e09
	call l9e0f
	jp l9ce9
.l9e0f
	ld a,(hl)
	cp #c8
	jp nz,l9e15
.l9e15
	cp #c9
	jp nz,l9e25
	inc hl
	ld a,(hl)
	ld (l9b89),a
	ld (l9b88),a
	jp l9ec2
.l9e25
	cp #ca
	jp nz,l9e37
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	inc hl
	ld a,(hl)
	ld (ix+#10),a
	jp l9ec2
.l9e37
	cp #cb
	jp nz,l9e44
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	ld (ix+#0c),a
.l9e44
	cp #dd
	jp nz,l9e53
	inc hl
	ld a,(hl)
	ld (ix+#23),a
	ld a,#01
	ld (ix+#29),a
.l9e53
	cp #d0
	jp nz,l9e74
	inc hl
	ld a,(hl)
	ld (ix+#14),a
	ld (ix+#13),a
	inc hl
	ld a,(hl)
	ld (ix+#15),a
	ld (ix+#16),a
	xor a
	ld (ix+#17),a
	ld a,#01
	ld (ix+#12),a
	jp l9ec2
.l9e74
	cp #d5
	jp nz,l9e80
	xor a
	ld (ix+#12),a
	jp l9ec2
.l9e80
	cp #d1
	jp nz,l9eab
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	ld (ix+#1a),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	ld (ix+#1c),a
	inc hl
	ld a,(hl)
	ld (ix+#1d),a
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	xor a
	ld (ix+#1f),a
	ld a,#01
	ld (ix+#18),a
	jp l9ec2
.l9eab
	cp #d6
	jp nz,l9eb6
	xor a
	ld (ix+#18),a
	jr l9ec2
.l9eb6
	cp #de
	jp nz,l9ec2
	xor a
	ld (l9b8a),a
	ld (l9b8b),a
.l9ec2
	inc hl
	ld (ix+#05),l
	ld (ix+#06),h
	ld a,#01
	ld (ix+#04),a
	ret
.l9ecf
	call l9d4e
	call l9eea
	jp l9c83
.l9ed8
	call l9d5a
	call l9eea
	jp l9ce9
.l9ee1
	call l9d66
	call l9eea
	jp l9d4a
.l9eea
	ld (l9b8d),a
	ld a,(l9b8a)
	ld b,a
	ld a,(l9b8c)
	and b
	ret z
	ld a,(ix+#03)
	and a
	jp nz,l9f66
	inc hl
	ld a,(hl)
	ld (ix+#22),a
	inc hl
	ld (ix+#05),l
	ld (ix+#06),h
	ld a,(l9b8d)
	ld (ix+#03),a
	sub #f0
	sla a
	ld hl,la0c3
	ld b,#00
	ld c,a
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld h,b
	ld l,c
	ld a,(l9b85)
	ld (ix+#27),a
	ld a,(ix+#00)
	ld (ix+#26),a
	ld a,(hl)
	and a
	jp z,l9f4d
	ld a,(l9b8c)
	sla a
	sla a
	sla a
	ld b,a
	ld a,#ff
	xor b
	ld b,a
	ld a,(l9b85)
	and b
	ld (l9b85),a
	ld a,#01
	ld (ix+#28),a
	jp l9f5f
.l9f4d
	ld b,#ff
	ld a,(l9b8c)
	xor b
	ld b,a
	ld a,(l9b85)
	and b
	ld (l9b85),a
	xor a
	ld (ix+#28),a
.l9f5f
	inc hl
	ld (ix+#24),l
	ld (ix+#25),h
.l9f66
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jp z,l9f9e
	ret
.l9f71
	ld l,(ix+#24)
	ld h,(ix+#25)
	ld a,(hl)
	cp #ff
	jr z,l9f97
	ld (ix+#00),a
	inc hl
	ld a,(ix+#28)
	and a
	jp z,l9f8d
	ld a,(hl)
	ld (l9b84),a
	jr l9f96
.l9f8d
	ld a,(hl)
	ld (ix+#02),a
	inc hl
	ld a,(hl)
	ld (ix+#01),a
.l9f96
	inc hl
.l9f97
	ld (ix+#24),l
	ld (ix+#25),h
	ret
.l9f9e
	ld a,(ix+#27)
	ld (l9b85),a
	ld a,(ix+#26)
	ld (ix+#00),a
	ld a,#01
	ld (ix+#04),a
	xor a
	ld (ix+#03),a
	ld (ix+#01),a
	ld (ix+#02),a
	ret
.l9fba
	nop
.l9fbb
	nop
.l9fbc
	ld d,a
	and #0f
	sla a
	ld b,#00
	ld c,a
	push ix
	ld ix,la012
	add ix,bc
	ld a,(ix+#00)
	ld (l9fba),a
	ld a,(ix+#01)
	ld (l9fbb),a
	ld a,d
	and #70
	srl a
	srl a
	srl a
	srl a
	cp #05
	jr z,la00f
	jr c,l9fff
	or a
	ld hl,l9fba
	srl (hl)
	inc hl
	rr (hl)
	cp #06
	jr z,la00f
	or a
	dec hl
	srl (hl)
	inc hl
	rr (hl)
	jr la00f
.l9fff
	ld b,a
	ld a,#05
	sub b
	ld b,a
.la004
	ld hl,l9fbb
	sla (hl)
	dec hl
	rl (hl)
	inc hl
	djnz la004
.la00f
	pop ix
	ret
.la012
	db #00,#00,#00,#77,#00,#71,#00,#6a
	db #00,#64,#00,#5f,#00,#59,#00,#54
	db #00,#50,#00,#4b,#00,#47,#00,#43
	db #00,#3f,#04,#03,#02,#01,#00

	ld a,(l9b8a)
	ld b,a
	ld a,(l9b8c)
	and b
	ret z
	xor a
	ld (ix+#01),a
	ld (ix+#02),a
	ret
.la042
	ld a,(l9b8a)
	and #01
	jp z,la057
	ld d,#00
	ld e,#08
	jp z,la057
	ld hl,l9b00
	call la08c
.la057
	ld a,(l9b8a)
	and #02
	jp z,la069
	ld d,#02
	ld e,#09
	ld hl,l9b2c
	call la08c
.la069
	ld a,(l9b8a)
	and #04
	jp z,la07b
	ld d,#04
	ld e,#0a
	ld hl,l9b58
	call la08c
.la07b
	ld a,(l9b85)
	ld c,#07
	call la0a1
	ld a,(l9b84)
	ld c,#06
	call la0a1
	ret
.la08c
	ld a,(hl)
	inc hl
	ld c,e
	inc e
	call la0a1
	ld a,(hl)
	inc hl
	ld c,d
	inc d
	call la0a1
	ld a,(hl)
	ld c,d
	inc d
	call la0a1
	ret
.la0a1
	push af
	push bc
	di
	ld b,a
	ld a,c
	ld c,b
	ld b,#f4
	out (c),a
	ld a,#c0
	ld b,#f6
	out (c),a
	xor a
	out (c),a
	ld b,#f4
	out (c),c
	ld bc,#f680
	out (c),c
	out (c),a
	pop bc
	pop af
	ei
	ret
.la0c3
	db #cb,#a0,#cb,#a0,#eb,#a0,#0d,#a1
	db #01,#0c,#1e,#0b,#0a,#0a,#1e,#09
	db #0a,#09,#1e,#08,#0a,#08,#1e,#07
	db #0a,#06,#1e,#05,#0a,#04,#1e,#03
	db #0a,#02,#1e,#01,#0a,#00,#1e,#ff
	db #01,#0d,#01,#0c,#0a,#0b,#01,#09
	db #0a,#09,#01,#08,#0a,#08,#01,#07
	db #0a,#07,#01,#06,#0a,#05,#01,#04
	db #0a,#03,#01,#02,#01,#01,#01,#00
	db #01,#ff,#00,#09,#00,#32,#08,#00
	db #34,#08,#00,#36,#08,#00,#38,#08
	db #00,#3a,#08,#00,#3c,#08,#00,#3e
	db #08,#00,#40,#08,#00,#42,#08,#00
	db #44,#08,#00,#46,#08,#00,#4b,#08
	db #00,#50,#08,#00,#55,#08,#00,#5a
	db #08,#00,#5f,#07,#00,#64,#00,#00
	db #00,#ff,#0e,#0d,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#09,#09,#09,#08,#08
	db #08,#07,#07,#07,#06,#06,#06,#05
	db #05,#05,#04,#04,#04,#03,#03,#03
	db #02,#02,#02,#01,#01,#01,#00,#ff
	db #0c,#0b,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#09,#08,#00,#00,#00,#ff,#0e
	db #0d,#0d,#0d,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#0a,#09,#09
	db #08,#08,#08,#07,#07,#07,#06,#06
	db #06,#05,#05,#05,#04,#04,#04,#04
	db #04,#03,#02,#00,#ff
;
.init_music
;
	ld hl,la2dc
	ld (l9b05),hl
	ld hl,la264
	ld (l9b07),hl
	ld hl,la262
	ld (l9b09),hl
	ld hl,la4d5
	ld (l9b31),hl
	ld hl,la27c
	ld (l9b33),hl
	ld hl,la27a
	ld (l9b35),hl
	ld hl,la518
	ld (l9b5d),hl
	ld hl,la2b2
	ld (l9b5f),hl
	ld hl,la2b0
	ld (l9b61),hl
	ld a,#07
	ld (l9b8a),a
	ld (l9b8b),a
	ld a,#38
	ld (l9b85),a
	ld a,#01
	ld (l9b04),a
	ld (l9b30),a
	ld (l9b5c),a
	ld a,#02
	ld (l9b88),a
	ld (l9b89),a
	ld a,#00
	ld (l9b03),a
	ld (l9b2f),a
	ld (l9b5b),a
	ret
.la262
	db #dc,#a2
.la264
	db #e7,#a2,#ed,#a2,#0f,#a3,#37,#a3
	db #3b,#a3,#37,#a3,#05,#a4,#27,#a4
	db #27,#a4,#00,#00,#00,#00
.la27a
	db #d5,#a4
.la27c
	db #de,#a4,#de,#a4,#de,#a4
	db #de,#a4,#de,#a4,#ee,#a4,#00,#a5
	db #de,#a4,#de,#a4,#de,#a4,#de,#a4
	db #de,#a4,#ee,#a4,#00,#a5,#de,#a4
	db #de,#a4,#de,#a4,#de,#a4,#de,#a4
	db #de,#a4,#de,#a4,#de,#a4,#de,#a4
	db #de,#a4,#00,#00,#00,#00
.la2b0
	db #18,#a5
.la2b2
	db #21,#a5,#21,#a5,#4f,#a5,#21,#a5
	db #75,#a5,#8d,#a5,#37,#a5,#a9,#a5
	db #21,#a5,#21,#a5,#4f,#a5,#21,#a5
	db #75,#a5,#8d,#a5,#37,#a5,#a9,#a5
	db #c1,#a5,#e5,#a5,#e5,#a5,#00,#00
	db #00,#00
.la2dc
	db #c9,#02,#cb,#02,#ca,#45,#a1,#dd
	db #01,#00,#00,#40,#00,#40,#00,#00
	db #00,#f3,#08,#f3,#08,#f3,#04,#f3
	db #04,#f3,#08,#f3,#08,#f3,#10,#08
	db #00,#f3,#08,#f3,#08,#f3,#04,#f3
	db #04,#f3,#08,#f3,#08,#f3,#10,#08
	db #00,#00,#00,#cb,#03,#30,#46,#08
	db #00,#04,#41,#04,#44,#b0,#46,#08
	db #00,#04,#41,#04,#44,#30,#49,#08
	db #00,#04,#46,#04,#52,#18,#51,#0c
	db #4b,#0c,#48,#0c,#45,#04,#41,#40
	db #46,#00,#00,#40,#00,#00,#00,#04
	db #41,#04,#44,#10,#46,#04,#41,#04
	db #44,#08,#46,#08,#49,#04,#41,#04
	db #44,#08,#46,#08,#49,#04,#41,#04
	db #44,#04,#46,#04,#49,#04,#46,#04
	db #44,#20,#46,#04,#41,#04,#44,#10
	db #46,#04,#41,#04,#44,#08,#46,#08
	db #49,#04,#41,#04,#44,#08,#46,#08
	db #49,#04,#46,#04,#49,#08,#51,#04
	db #4b,#04,#49,#20,#46,#04,#43,#04
	db #46,#04,#44,#04,#46,#08,#49,#04
	db #46,#04,#49,#08,#4b,#04,#49,#04
	db #4b,#04,#49,#0c,#46,#04,#43,#04
	db #46,#04,#49,#04,#46,#08,#4b,#04
	db #49,#20,#46,#04,#00,#02,#41,#02
	db #46,#04,#41,#04,#48,#04,#41,#08
	db #49,#04,#46,#04,#48,#10,#49,#04
	db #41,#04,#46,#04,#4b,#04,#46,#08
	db #49,#04,#51,#04,#4b,#04,#49,#04
	db #48,#18,#49,#04,#00,#04,#44,#04
	db #46,#04,#48,#04,#49,#04,#46,#04
	db #4b,#04,#46,#08,#51,#04,#4b,#08
	db #51,#04,#4b,#0c,#49,#04,#46,#04
	db #49,#04,#52,#18,#51,#04,#00,#04
	db #41,#04,#51,#04,#41,#04,#4b,#04
	db #41,#08,#49,#08,#48,#40,#46,#00
	db #00,#cb,#01,#ca,#bb,#a1,#80,#00
	db #10,#00,#04,#4a,#08,#4a,#04,#4a
	db #20,#4a,#10,#00,#04,#4a,#08,#4a
	db #04,#4a,#20,#4a,#cb,#02,#ca,#45
	db #a1,#00,#00,#08,#46,#08,#46,#04
	db #56,#04,#46,#04,#54,#04,#46,#04
	db #53,#04,#46,#04,#51,#04,#46,#04
	db #4a,#04,#4b,#04,#51,#04,#46,#08
	db #46,#08,#46,#04,#56,#04,#46,#04
	db #54,#04,#46,#04,#53,#04,#46,#04
	db #51,#04,#46,#04,#4a,#04,#4b,#04
	db #51,#04,#46,#08,#44,#08,#44,#04
	db #54,#04,#44,#04,#52,#04,#44,#04
	db #51,#04,#44,#04,#4b,#04,#44,#04
	db #48,#04,#49,#04,#4b,#04,#44,#08
	db #44,#08,#44,#04,#54,#04,#44,#04
	db #52,#04,#44,#04,#51,#04,#44,#04
	db #4b,#04,#44,#04,#48,#04,#49,#04
	db #4b,#04,#44,#08,#3b,#08,#3b,#04
	db #4b,#04,#3b,#04,#49,#04,#3b,#04
	db #48,#04,#3b,#04,#46,#04,#3b,#04
	db #43,#04,#44,#04,#46,#04,#3b,#08
	db #3b,#08,#3b,#04,#4b,#04,#3b,#04
	db #49,#04,#3b,#04,#48,#04,#3b,#04
	db #46,#04,#3b,#04,#43,#04,#44,#04
	db #46,#04,#3b,#40,#46,#40,#00,#00
	db #00
.la4d5
	db #cb,#02,#dd,#01,#ca,#bb,#a1,#00
	db #00,#f1,#08,#f1,#08,#f2,#08,#f1
	db #08,#f1,#08,#f1,#08,#f2,#08,#f1
	db #08,#f1,#08,#f1,#08,#f2,#08,#f1
	db #08,#f1,#08,#f1,#08,#f2,#08,#f1
	db #08,#00,#00,#f1,#04,#f1,#08,#f1
	db #04,#f1,#04,#f1,#08,#f1,#04,#f1
	db #04,#f1,#08,#f1,#04,#f2,#08,#f2
	db #08,#00,#00
.la518
	db #cb,#01,#dd,#01,#ca,#d2,#a1,#00
	db #00,#08,#16,#08,#16,#04,#21,#04
	db #23,#08,#26,#08,#24,#04,#24,#04
	db #23,#04,#24,#04,#23,#08,#21,#08
	db #16,#08,#16,#04,#21,#04,#23,#08
	db #26,#08,#24,#04,#24,#04,#23,#04
	db #24,#04,#23,#08,#21,#00,#00,#08
	db #1b,#08,#1b,#04,#26,#04,#29,#04
	db #2b,#10,#2b,#04,#2b,#04,#33,#0c
	db #2b,#08,#1b,#08,#1b,#04,#26,#04
	db #29,#04,#2b,#10,#2b,#04,#2b,#04
	db #33,#0c,#2b,#00,#00,#08,#22,#08
	db #22,#04,#29,#04,#2b,#04,#32,#10
	db #32,#04,#00,#04,#32,#04,#31,#04
	db #2b,#04,#29,#00,#00,#08,#21,#08
	db #21,#04,#28,#04,#2b,#04,#31,#10
	db #31,#04,#00,#05,#31,#06,#28,#05
	db #25,#00,#00,#40,#00,#40,#00,#00
	db #00,#04,#16,#08,#16,#04,#16,#04
	db #1a,#08,#1a,#04,#1a,#04,#1b,#08
	db #1b,#04,#1b,#08,#1b,#08,#21,#00
	db #00,#cb,#01,#ca,#bb,#a1,#80,#00
	db #10,#00,#04,#46,#08,#46,#04,#46
	db #20,#46,#10,#00,#04,#46,#08,#46
	db #04,#46,#20,#46,#00,#00,#cb,#02
	db #ca,#d2,#a1,#00,#00,#cb,#02,#ca
	db #d2,#a1,#08,#16,#08,#16,#08,#36
	db #08,#36,#08,#16,#08,#16,#08,#36
	db #08,#36,#08,#16,#08,#16,#08,#36
	db #08,#36,#08,#16,#08,#16,#08,#36
	db #08,#36,#08,#14,#08,#14,#08,#34
	db #08,#34,#08,#14,#08,#14,#08,#34
	db #08,#34,#08,#14,#08,#14,#08,#34
	db #08,#34,#08,#14,#08,#14,#08,#34
	db #08,#34,#08,#1b,#08,#1b,#08,#2b
	db #08,#2b,#08,#1b,#08,#1b,#08,#2b
	db #08,#2b,#08,#1b,#08,#1b,#08,#2b
	db #08,#2b,#08,#1b,#08,#1b,#08,#2b
	db #08,#2b,#08,#16,#08,#16,#04,#36
	db #04,#36,#08,#36,#08,#16,#08,#16
	db #04,#36,#04,#36,#08,#36,#08,#16
	db #08,#16,#04,#36,#04,#36,#08,#36
	db #08,#16,#08,#16,#04,#36,#04,#36
	db #08,#36,#cb,#01,#00,#00,#02,#02
;
; init #a200
;
; #23fc
;.l23fc
; xor a
; ld (#1cbb),a
; call #9b8e	; play
;.l2403
; ld a,(#1cbb)
; and a
; jr z,l2403
; call #495d
; jr z,l23fc
;
.music_info
	db "4x4 OffRoad Racing (1988)(Epyx)()",0
	db "",0

	read "music_end.asm"
