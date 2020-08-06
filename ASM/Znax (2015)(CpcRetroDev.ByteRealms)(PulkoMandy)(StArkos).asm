; Music of Znax (2015)(CpcRetroDev.ByteRealms)(PulkoMandy)(StArkos)
; Ripped by Megachur the 12/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ZNAX.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #7d60

	read "music_header.asm"

.l7d60
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#0a,#bd,#00,#7a,#7d,#83,#7d
	db #97,#7d,#cc,#7d,#eb,#7d,#fe,#7d
	db #0d,#7e,#00,#00,#00,#00,#00,#00
	db #0d,#7c,#7d,#01,#00,#3c,#38,#34
	db #30,#2c,#28,#24,#20,#1c,#18,#14
	db #10,#0c,#08,#04,#0d,#7c,#7d,#01
	db #00,#3c,#7c,#04,#78,#07,#38,#74
	db #04,#74,#07,#30,#70,#04,#6c,#07
	db #2c,#68,#04,#68,#07,#24,#64,#04
	db #60,#07,#20,#5c,#04,#5c,#07,#18
	db #58,#04,#54,#07,#14,#50,#04,#50
	db #07,#0c,#4c,#04,#48,#07,#08,#44
	db #04,#0d,#7c,#7d,#02,#00,#7e,#2b
	db #0c,#7a,#2a,#0d,#76,#29,#10,#72
	db #28,#09,#2e,#27,#66,#26,#09,#5e
	db #25,#0e,#16,#24,#0e,#23,#06,#22
	db #0d,#7c,#7d,#05,#00,#34,#30,#2c
	db #28,#24,#20,#1c,#18,#14,#10,#0c
	db #08,#04,#00,#0d,#7c,#7d,#01,#00
	db #7e,#26,#0f,#7c,#0a,#7c,#06,#78
	db #03,#38,#0d,#7c,#7d,#01,#00,#bc
	db #02,#00,#b8,#01,#00,#34,#30,#30
	db #30,#30,#30,#30,#30,#30,#30,#30
	db #30,#30,#2c,#28,#24,#20,#0d,#25
	db #7e,#40,#00,#00,#00,#6a,#7e,#00
	db #d0,#7f,#6b,#7e,#d0,#7f,#00,#ed
	db #7e,#6b,#7e,#d0,#7f,#00,#ed,#7e
	db #6b,#7e,#41,#7f,#00,#ed,#7e,#6b
	db #7e,#70,#7f,#00,#ed,#7e,#6b,#7e
	db #a0,#7f,#00,#ed,#7e,#6b,#7e,#41
	db #7f,#00,#ed,#7e,#6b,#7e,#70,#7f
	db #00,#ed,#7e,#6b,#7e,#a0,#7f,#01
	db #2f,#7e,#00,#8a,#e5,#00,#00,#01
	db #4b,#a2,#60,#02,#63,#8a,#60,#01
	db #4b,#a2,#60,#02,#63,#94,#60,#01
	db #55,#ac,#60,#02,#6d,#94,#60,#01
	db #55,#ac,#60,#02,#6d,#8a,#60,#01
	db #4b,#a2,#60,#02,#63,#8a,#60,#01
	db #4b,#a2,#60,#02,#63,#80,#60,#01
	db #41,#98,#60,#02,#59,#80,#60,#01
	db #41,#98,#60,#02,#59,#8a,#60,#01
	db #4b,#a2,#60,#02,#63,#8a,#60,#01
	db #4b,#a2,#60,#02,#63,#94,#60,#01
	db #55,#ac,#60,#02,#6d,#94,#60,#01
	db #55,#ac,#60,#02,#6d,#8a,#60,#01
	db #4b,#a2,#60,#02,#63,#8a,#60,#01
	db #4b,#a2,#60,#02,#63,#80,#60,#01
	db #41,#98,#60,#02,#59,#80,#60,#01
	db #41,#98,#60,#02,#59,#8a,#e0,#00
	db #00,#03,#72,#60,#04,#02,#33,#04
	db #33,#33,#3d,#04,#3d,#04,#3d,#3d
	db #33,#04,#33,#04,#33,#33,#29,#02
	db #72,#60,#05,#4b,#68,#60,#04,#5a
	db #60,#05,#68,#63,#04,#72,#61,#05
	db #72,#60,#03,#72,#60,#04,#02,#33
	db #04,#33,#33,#3d,#04,#3d,#04,#3d
	db #3d,#33,#04,#33,#04,#33,#33,#29
	db #02,#72,#60,#05,#4b,#68,#60,#04
	db #72,#60,#05,#68,#63,#04,#72,#61
	db #05,#aa,#e0,#00,#00,#06,#06,#6b
	db #67,#6b,#6d,#04,#6d,#02,#6d,#6b
	db #67,#63,#04,#63,#02,#63,#67,#6b
	db #63,#67,#0e,#71,#06,#71,#75,#79
	db #7b,#04,#7b,#02,#7b,#79,#75,#71
	db #04,#71,#02,#71,#6b,#75,#71,#00
	db #aa,#e0,#00,#00,#06,#06,#6b,#67
	db #6b,#6d,#04,#71,#02,#71,#6d,#6b
	db #67,#63,#02,#63,#02,#63,#67,#6b
	db #75,#71,#0e,#71,#06,#71,#75,#79
	db #7b,#04,#7b,#02,#7f,#7b,#79,#7b
	db #04,#79,#75,#79,#71,#6b,#71,#00
	db #b0,#e0,#00,#00,#06,#06,#71,#6b
	db #75,#71,#04,#71,#02,#71,#6d,#6b
	db #67,#63,#02,#63,#02,#63,#67,#6b
	db #6d,#71,#0e,#71,#06,#71,#75,#79
	db #7b,#04,#7b,#7b,#7f,#7b,#79,#7b
	db #04,#79,#75,#79,#71,#6b,#71,#00
	db #42,#80,#00,#00,#32,#72,#60,#05
	db #4b,#02,#33,#02,#1b,#72,#60,#03
	db #32,#72,#60,#05,#4b,#02,#33,#02
	db #1b,#00,#00
;
; #5dc0 - player reallocated by Megachur
;
.l5dc0
	db #00
;
.play_music
.l5dc1
;
	xor a	; play music
	ld (l5dc0),a
.l5dc6 equ $ + 1
	ld a,#01
	dec a
	jp nz,l5f92
.l5dcc equ $ + 1
	ld a,#01
	dec a
	jr nz,l5e38
.l5dd1 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l5ddf
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l5ddf
	rra
	jr nc,l5de7
	ld de,l5e88
	ldi
.l5de7
	rra
	jr nc,l5def
	ld de,l5eed
	ldi
.l5def
	rra
	jr nc,l5df7
	ld de,l5f52
	ldi
.l5df7
	ld de,l5e67
	ldi
	ldi
	ld de,l5ecc
	ldi
	ldi
	ld de,l5f31
	ldi
	ldi
	rra
	jr nc,l5e14
	ld de,l5e37
	ldi
.l5e14
	rra
	jr nc,l5e1f
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l5e23),de
.l5e1f
	ld (l5dd1),hl
.l5e23 equ $ + 1
	ld hl,#0000
	ld (l5e41),hl
	ld a,#01
	ld (l5e3c),a
	ld (l5e62),a
	ld (l5ec7),a
	ld (l5f2c),a
.l5e37 equ $ + 1
	ld a,#01
.l5e38
	ld (l5dcc),a
.l5e3c equ $ + 1
	ld a,#01
	dec a
	jr nz,l5e5e
.l5e41 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l5e5b
	srl a
	jr nz,l5e4f
	ld a,(hl)
	inc hl
.l5e4f
	jr nc,l5e56
	ld (l5dc0),a
	jr l5e59
.l5e56
	ld (l5f91),a
.l5e59
	ld a,#01
.l5e5b
	ld (l5e41),hl
.l5e5e
	ld (l5e3c),a
.l5e62 equ $ + 1
	ld a,#01
	dec a
	jr nz,l5ec3
.l5e67 equ $ + 1
	ld hl,#0000
	call l62d7
	ld (l5e67),hl
	jr c,l5ec3
	ld a,d
	rra
	jr nc,l5e7a
	and #0f
	ld (l6014),a
.l5e7a
	rl d
	jr nc,l5e82
	ld (l6002),ix
.l5e82
	rl d
	jr nc,l5ec1
	ld a,e
.l5e88 equ $ + 1
	add #00
	ld (l6013),a
	ld hl,#0000
	ld (l5fff),hl
	rl d
	jr c,l5ea1
.l5e97 equ $ + 1
	ld hl,#0000
	ld a,(l6024)
	ld (l601c),a
	jr l5ebe
.l5ea1
	ld l,b
	add hl,hl
.l5ea4 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l6024),a
	ld (l601c),a
	ld a,(hl)
	or a
	jr z,l5eba
	ld (l6102),a
.l5eba
	inc hl
	ld (l5e97),hl
.l5ebe
	ld (l6016),hl
.l5ec1
	ld a,#01
.l5ec3
	ld (l5e62),a
.l5ec7 equ $ + 1
	ld a,#01
	dec a
	jr nz,l5f28
.l5ecc equ $ + 1
	ld hl,#0000
	call l62d7
	ld (l5ecc),hl
	jr c,l5f28
	ld a,d
	rra
	jr nc,l5edf
	and #0f
	ld (l5fe0),a
.l5edf
	rl d
	jr nc,l5ee7
	ld (l5fce),ix
.l5ee7
	rl d
	jr nc,l5f26
	ld a,e
.l5eed equ $ + 1
	add #00
	ld (l5fdf),a
	ld hl,#0000
	ld (l5fcb),hl
	rl d
	jr c,l5f06
.l5efc equ $ + 1
	ld hl,#0000
	ld a,(l5ff0)
	ld (l5fe8),a
	jr l5f23
.l5f06
	ld l,b
	add hl,hl
.l5f09 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l5ff0),a
	ld (l5fe8),a
	ld a,(hl)
	or a
	jr z,l5f1f
	ld (l6102),a
.l5f1f
	inc hl
	ld (l5efc),hl
.l5f23
	ld (l5fe2),hl
.l5f26
	ld a,#01
.l5f28
	ld (l5ec7),a
.l5f2c equ $ + 1
	ld a,#01
	dec a
	jr nz,l5f8d
.l5f31 equ $ + 1
	ld hl,#0000
	call l62d7
	ld (l5f31),hl
	jr c,l5f8d
	ld a,d
	rra
	jr nc,l5f44
	and #0f
	ld (l5faf),a
.l5f44
	rl d
	jr nc,l5f4c
	ld (l5f9d),ix
.l5f4c
	rl d
	jr nc,l5f8b
	ld a,e
.l5f52 equ $ + 1
	add #00
	ld (l5fae),a
	ld hl,#0000
	ld (l5f9a),hl
	rl d
	jr c,l5f6b
.l5f61 equ $ + 1
	ld hl,#0000
	ld a,(l5fbf)
	ld (l5fb7),a
	jr l5f88
.l5f6b
	ld l,b
	add hl,hl
.l5f6e equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l5fbf),a
	ld (l5fb7),a
	ld a,(hl)
	or a
	jr z,l5f84
	ld (l6102),a
.l5f84
	inc hl
	ld (l5f61),hl
.l5f88
	ld (l5fb1),hl
.l5f8b
	ld a,#01
.l5f8d
	ld (l5f2c),a
.l5f91 equ $ + 1
	ld a,#01
.l5f92
	ld (l5dc6),a
	ld iy,l6119
.l5f9a equ $ + 1
	ld hl,#0000
.l5f9d equ $ + 1
	ld de,#0000
	add hl,de
	ld (l5f9a),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l5faf equ $ + 2
.l5fae equ $ + 1
	ld de,#0000
.l5fb1 equ $ + 1
	ld hl,#0000
	call l6124
.l5fb7 equ $ + 1
	ld a,#01
	dec a
	jr nz,l5fc0
	ld (l5fb1),hl
.l5fbf equ $ + 1
	ld a,#06
.l5fc0
	ld (l5fb7),a
	ld a,lx
	ex af,af'
	ld iy,l6117
.l5fcb equ $ + 1
	ld hl,#0000
.l5fce equ $ + 1
	ld de,#0000
	add hl,de
	ld (l5fcb),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l5fe0 equ $ + 2
.l5fdf equ $ + 1
	ld de,#0000
.l5fe2 equ $ + 1
	ld hl,#0000
	call l6124
.l5fe8 equ $ + 1
	ld a,#01
	dec a
	jr nz,l5ff1
	ld (l5fe2),hl
.l5ff0 equ $ + 1
	ld a,#06
.l5ff1
	ld (l5fe8),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l6115
.l5fff equ $ + 1
	ld hl,#0000
.l6002 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l5fff),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l6014 equ $ + 2
.l6013 equ $ + 1
	ld de,#0000
.l6016 equ $ + 1
	ld hl,#0000
	call l6124
.l601c equ $ + 1
	ld a,#01
	dec a
	jr nz,l6025
	ld (l6016),hl
.l6024 equ $ + 1
	ld a,#06
.l6025
	ld (l601c),a
	ex af,af'
	or lx
.l602b
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l6115
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
	ld a,(hl)
.l6102 equ $ + 1
	cp #ff
	ret z
	ld (l6102),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l611c equ $ + 7
.l611b equ $ + 6
.l6119 equ $ + 4
.l6117 equ $ + 2
.l6115
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6123 equ $ + 6
.l6121 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00
.l6124
	ld b,(hl)
	inc hl
	rr b
	jp c,l6182
	rr b
	jr c,l6152
	ld a,b
	and #0f
	jr nz,l613b
	ld (iy+#07),a
	ld lx,#09
	ret
.l613b
	ld lx,#08
	sub d
	jr nc,l6142
	xor a
.l6142
	ld (iy+#07),a
	rr b
	call l62ab
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l6152
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l6162
	ld (l611b),a
	ld lx,#00
.l6162
	ld a,b
	and #0f
	sub d
	jr nc,l6169
	xor a
.l6169
	ld (iy+#07),a
	bit 5,c
	jr nz,l6173
	inc lx
	ret
.l6173
	rr b
	bit 6,c
	call l629d
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l6182
	rr b
	jr nc,l6195
	ld a,(l601c)
	ld c,a
	ld a,(l6024)
	cp c
	jr nz,l6195
	ld a,#fe
	ld (l6102),a
.l6195
	bit 1,b
	jp nz,l624e
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l6123),a
	bit 0,b
	jr z,l6204
	bit 2,b
	call l629d
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l61c4),a
	ld a,b
	exx
.l61c4 equ $ + 1
	jr l61c5
.l61c5
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
	jr nc,l61e4
	inc hl
.l61e4
	bit 5,a
	jr z,l61f4
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
.l61f4
	ld (l6121),hl
	exx
.l61f8
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l611b),a
	ld lx,#00
	ret
.l6204
	bit 2,b
	call l629d
	ld (l6121),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l6218),a
	ld a,b
	exx
.l6218 equ $ + 1
	jr l6219
.l6219
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
	jr z,l6245
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
.l6245
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l61f8
.l624e
	bit 0,b
	jr z,l6259
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l6124
.l6259
	ld (iy+#07),#10
	bit 5,b
	jr nz,l6266
	ld lx,#09
	jr l6279
.l6266
	ld lx,#08
	ld hx,e
	bit 2,b
	call l629d
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l6279
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l6123),a
	rr b
	rr b
	bit 2,b
	call l629d
	ld (l6121),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l611b),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l629d
	jr z,l62ab
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
.l62ab
	bit 4,b
	jr z,l62bb
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
.l62bb
	ld a,e
	bit 3,b
	jr z,l62c8
	add (hl)
	inc hl
	cp #90
	jr c,l62c8
	ld a,#8f
.l62c8
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l630b
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l62d7
	ld a,(hl)
	inc hl
	srl a
	jr c,l62fe
	sub #20
	jr c,l6308
	jr z,l62fa
	dec a
	ld e,a
.l62e5
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l62f3
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l62f3
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l62fa
	ld e,(hl)
	inc hl
	jr l62e5
.l62fe
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l6308
	add #20
	ret
.l630b
	dw #0eee,#0e18,#0d4d,#0c8e
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
	dw #000f,#000e,#000d,#000d
	dw #000c,#000b,#000b,#000a
	dw #0009,#0009,#0008,#0008
	dw #0007,#0007,#0007,#0006
	dw #0006,#0006,#0005,#0005
	dw #0005,#0004,#0004,#0004
	dw #0004,#0004,#0003,#0003
	dw #0003,#0003,#0003,#0002
	dw #0002,#0002,#0002,#0002
	dw #0002,#0002,#0002,#0002
	dw #0001,#0001,#0001,#0001
	dw #0001,#0001,#0001,#0001
;
.real_init_music
.l642b
;
	ld hl,#0009
	add hl,de
	ld de,l5f91
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l5ea4),hl
	ld (l5f09),hl
	ld (l5f6e),hl
	add hl,bc
	ld de,l5e37
	ldi
	ld de,l5e88
	ldi
	ld de,l5eed
	ldi
	ld de,l5f52
	ldi
	ld de,l5e23
	ldi
	ldi
	ld (l5dd1),hl
	ld a,#01
	ld (l5dc6),a
	ld (l5dcc),a
	ld a,#ff
	ld (l6123),a
	ld hl,(l5ea4)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l6016),hl
	ld (l5fe2),hl
	ld (l5fb1),hl
	ret
	ld hl,l611c
	ld bc,#0300
.l6486
	ld (hl),c
	inc hl
	djnz l6486
	ld a,#3f
	jp l602b
;
; #902b
; ld a,#0b	; intro fx before menu
; ld c,#35
; call #bd34
; ld a,#0c
; ld c,#00
; call #bd34
; ld a,#02
; ld c,#4d
; call #bd34
; ld a,#03
; ld c,#0d
; call #bd34
; ld a,#0d
; ld c,#0a
; call #bd34
; ld a,#09
; ld c,#10
; call #bd34
; ld a,#07
; ld c,#3d
; call #bd34
; ret
;
; #03e4
; ld de,#7d60
; jp #642b	; init music

; added by Megachur
;
.init_music
;
	ld de,l7d60
	jp real_init_music
;
.music_info
	db "Znax (2015)(CpcRetroDev.ByteRealms)(PulkoMandy)",0
	db "StArkos",0

	read "music_end.asm"
