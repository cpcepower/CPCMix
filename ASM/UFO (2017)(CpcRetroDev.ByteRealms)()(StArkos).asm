; Music of UFO (2017)(CpcRetroDev.ByteRealms)()(StArkos)
; Ripped by Megachur the 19/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "UFO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0040

	read "music_header.asm"

.l0040
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #01,#06,#7e,#00,#58,#00,#61,#00
	db #76,#00,#8d,#00,#a1,#00,#b5,#00
	db #00,#00,#00,#00,#00,#00,#0d,#5a
	db #00,#01,#00,#3e,#21,#38,#34,#30
	db #2c,#28,#24,#20,#1c,#18,#14,#10
	db #0c,#08,#04,#0d,#5a,#00,#01,#00
	db #3e,#2d,#3a,#24,#36,#24,#30,#2c
	db #28,#24,#20,#1c,#18,#14,#10,#0c
	db #08,#04,#0d,#5a,#00,#01,#00,#3c
	db #38,#34,#30,#2c,#28,#24,#20,#1c
	db #18,#14,#10,#0c,#08,#04,#0d,#5a
	db #00,#05,#00,#3c,#38,#34,#30,#2c
	db #28,#24,#20,#1c,#18,#14,#10,#0c
	db #08,#04,#0d,#5a,#00,#02,#00,#3e
	db #2b,#38,#34,#30,#2c,#28,#24,#20
	db #1c,#18,#14,#10,#0c,#08,#04,#0d
	db #5a,#00,#40,#00,#00,#00,#da,#00
	db #00,#db,#00,#1f,#01,#76,#01,#01
	db #d0,#00,#00,#ba,#e0,#00,#00,#01
	db #06,#8e,#60,#02,#06,#4f,#04,#42
	db #00,#42,#00,#ba,#60,#01,#04,#8e
	db #60,#02,#04,#ba,#60,#03,#02,#42
	db #00,#42,#00,#42,#00,#42,#00,#ba
	db #60,#01,#04,#6b,#42,#00,#02,#7b
	db #04,#6b,#04,#7b,#04,#6b,#04,#7b
	db #04,#6b,#04,#7b,#04,#6b,#04,#7b
	db #04,#6b,#04,#7b,#02,#42,#00,#94
	db #e0,#00,#00,#02,#55,#8e,#60,#04
	db #42,#00,#02,#4f,#06,#8e,#60,#03
	db #8e,#60,#02,#8a,#60,#03,#8e,#60
	db #02,#55,#55,#8e,#60,#04,#02,#4f
	db #98,#60,#02,#59,#5d,#59,#59,#55
	db #59,#59,#be,#60,#05,#7b,#9c,#60
	db #02,#5d,#5d,#5d,#5d,#5d,#5d,#5d
	db #5d,#5d,#55,#59,#55,#55,#55,#55
	db #55,#55,#55,#55,#59,#59,#59,#59
	db #59,#5d,#55,#59,#5d,#5d,#55,#55
	db #55,#55,#55,#94,#60,#04,#42,#80
	db #00,#00,#a6,#60,#01,#04,#8e,#60
	db #02,#06,#4f,#04,#42,#00,#42,#00
	db #02,#a6,#60,#01,#02,#8e,#60,#02
	db #0a,#b8,#60,#01,#06,#67,#42,#00
	db #02,#79,#04,#67,#04,#79,#04,#67
	db #04,#79,#04,#67,#04,#79,#04,#67
	db #04,#79,#04,#67,#04,#79,#04,#67
;
; #4885	- reallocated by Megachur
;
.l4885
	nop
.l4886
	nop
;
.play_music
;
	push ix
	push iy
	xor a
	ld (l4885),a
.l4890 equ $ + 1
	ld a,#01
	dec a
	jp nz,l4a63
.l4896 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4909
.l489b equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l48b0
	ld a,(l4886)
	inc a
	ld (l4886),a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l48b0
	rra
	jr nc,l48b8
	ld de,l4959
	ldi
.l48b8
	rra
	jr nc,l48c0
	ld de,l49be
	ldi
.l48c0
	rra
	jr nc,l48c8
	ld de,l4a23
	ldi
.l48c8
	ld de,l4938
	ldi
	ldi
	ld de,l499d
	ldi
	ldi
	ld de,l4a02
	ldi
	ldi
	rra
	jr nc,l48e5
	ld de,l4908
	ldi
.l48e5
	rra
	jr nc,l48f0
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l48f4),de
.l48f0
	ld (l489b),hl
.l48f4 equ $ + 1
	ld hl,#0000
	ld (l4912),hl
	ld a,#01
	ld (l490d),a
	ld (l4933),a
	ld (l4998),a
	ld (l49fd),a
.l4908 equ $ + 1
	ld a,#01
.l4909
	ld (l4896),a
.l490d equ $ + 1
	ld a,#01
	dec a
	jr nz,l492f
.l4912 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l492c
	srl a
	jr nz,l4920
	ld a,(hl)
	inc hl
.l4920
	jr nc,l4927
	ld (l4885),a
	jr l492a
.l4927
	ld (l4a62),a
.l492a
	ld a,#01
.l492c
	ld (l4912),hl
.l492f
	ld (l490d),a
.l4933 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4994
.l4938 equ $ + 1
	ld hl,#0000
	call l4e36
	ld (l4938),hl
	jr c,l4994
	ld a,d
	rra
	jr nc,l494b
	and #0f
	ld (l4b3b),a
.l494b
	rl d
	jr nc,l4953
	ld (l4b29),ix
.l4953
	rl d
	jr nc,l4992
	ld a,e
.l4959 equ $ + 1
	add #00
	ld (l4b3a),a
	ld hl,#0000
	ld (l4b26),hl
	rl d
	jr c,l4972
.l4968 equ $ + 1
	ld hl,#0000
	ld a,(l4b4b)
	ld (l4b43),a
	jr l498f
.l4972
	ld l,b
	add hl,hl
.l4975 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l4b4b),a
	ld (l4b43),a
	ld a,(hl)
	or a
	jr z,l498b
	ld (l4c58),a
.l498b
	inc hl
	ld (l4968),hl
.l498f
	ld (l4b3d),hl
.l4992
	ld a,#01
.l4994
	ld (l4933),a
.l4998 equ $ + 1
	ld a,#01
	dec a
	jr nz,l49f9
.l499d equ $ + 1
	ld hl,#0000
	call l4e36
	ld (l499d),hl
	jr c,l49f9
	ld a,d
	rra
	jr nc,l49b0
	and #0f
	ld (l4adc),a
.l49b0
	rl d
	jr nc,l49b8
	ld (l4aca),ix
.l49b8
	rl d
	jr nc,l49f7
	ld a,e
.l49be equ $ + 1
	add #00
	ld (l4adb),a
	ld hl,#0000
	ld (l4ac7),hl
	rl d
	jr c,l49d7
.l49cd equ $ + 1
	ld hl,#0000
	ld a,(l4aec)
	ld (l4ae4),a
	jr l49f4
.l49d7
	ld l,b
	add hl,hl
.l49da equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l4aec),a
	ld (l4ae4),a
	ld a,(hl)
	or a
	jr z,l49f0
	ld (l4c58),a
.l49f0
	inc hl
	ld (l49cd),hl
.l49f4
	ld (l4ade),hl
.l49f7
	ld a,#01
.l49f9
	ld (l4998),a
.l49fd equ $ + 1
	ld a,#01
	dec a
	jr nz,l4a5e
.l4a02 equ $ + 1
	ld hl,#0000
	call l4e36
	ld (l4a02),hl
	jr c,l4a5e
	ld a,d
	rra
	jr nc,l4a15
	and #0f
	ld (l4a80),a
.l4a15
	rl d
	jr nc,l4a1d
	ld (l4a6e),ix
.l4a1d
	rl d
	jr nc,l4a5c
	ld a,e
.l4a23 equ $ + 1
	add #00
	ld (l4a7f),a
	ld hl,#0000
	ld (l4a6b),hl
	rl d
	jr c,l4a3c
.l4a32 equ $ + 1
	ld hl,#0000
	ld a,(l4a90)
	ld (l4a88),a
	jr l4a59
.l4a3c
	ld l,b
	add hl,hl
.l4a3f equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l4a90),a
	ld (l4a88),a
	ld a,(hl)
	or a
	jr z,l4a55
	ld (l4c58),a
.l4a55
	inc hl
	ld (l4a32),hl
.l4a59
	ld (l4a82),hl
.l4a5c
	ld a,#01
.l4a5e
	ld (l49fd),a
.l4a62 equ $ + 1
	ld a,#01
.l4a63
	ld (l4890),a
	ld iy,l4c6f
.l4a6b equ $ + 1
	ld hl,#0000
.l4a6e equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4a6b),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l4a80 equ $ + 2
.l4a7f equ $ + 1
	ld de,#0000
.l4a82 equ $ + 1
	ld hl,#0000
	call l4c7a
.l4a88 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4a91
	ld (l4a82),hl
.l4a90 equ $ + 1
	ld a,#06
.l4a91
	ld (l4a88),a
	ld de,#0000
	exx
	ld de,#0000
.l4a9c equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l4abf
	ld a,#01
	ld (l4da9),a
	call l4c7a
	xor a
	ld (l4da9),a
	ld a,l
	or h
	jr z,l4ab7
.l4ab3 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4abc
.l4ab7
	ld (l4a9c),hl
	ld a,#06
.l4abc
	ld (l4ab3),a
.l4abf
	ld a,lx
	ex af,af'
	ld iy,l4c6d
.l4ac7 equ $ + 1
	ld hl,#0000
.l4aca equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4ac7),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l4adc equ $ + 2
.l4adb equ $ + 1
	ld de,#0000
.l4ade equ $ + 1
	ld hl,#0000
	call l4c7a
.l4ae4 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4aed
	ld (l4ade),hl
.l4aec equ $ + 1
	ld a,#06
.l4aed
	ld (l4ae4),a
	ld de,#0000
	exx
	ld de,#0000
.l4af8 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l4b1b
	ld a,#01
	ld (l4da9),a
	call l4c7a
	xor a
	ld (l4da9),a
	ld a,l
	or h
	jr z,l4b13
.l4b0f equ $ + 1
	ld a,#01
	dec a
	jr nz,l4b18
.l4b13
	ld (l4af8),hl
	ld a,#06
.l4b18
	ld (l4b0f),a
.l4b1b
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l4c6b
.l4b26 equ $ + 1
	ld hl,#0000
.l4b29 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4b26),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l4b3b equ $ + 2
.l4b3a equ $ + 1
	ld de,#0000
.l4b3d equ $ + 1
	ld hl,#0000
	call l4c7a
.l4b43 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4b4c
	ld (l4b3d),hl
.l4b4b equ $ + 1
	ld a,#06
.l4b4c
	ld (l4b43),a
	ld de,#0000
	exx
	ld de,#0000
.l4b57 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l4b7a
	ld a,#01
	ld (l4da9),a
	call l4c7a
	xor a
	ld (l4da9),a
	ld a,l
	or h
	jr z,l4b72
.l4b6e equ $ + 1
	ld a,#01
	dec a
	jr nz,l4b77
.l4b72
	ld (l4b57),hl
	ld a,#06
.l4b77
	ld (l4b6e),a
.l4b7a
	ex af,af'
	or lx
.l4b7d
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l4c6b
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
.l4c58 equ $ + 1
	cp #ff
	ret z
	ld (l4c58),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l4c6b
	nop
	nop
.l4c6d
	nop
	nop
.l4c6f
	nop
	nop
.l4c71
	nop
.l4c72
	nop
	nop
	nop
	nop
	nop
.l4c77
	nop
	nop
.l4c79
	nop
.l4c7a
	ld b,(hl)
	inc hl
	rr b
	jp c,l4cd8
	rr b
	jr c,l4ca8
	ld a,b
	and #0f
	jr nz,l4c91
	ld (iy+#07),a
	ld lx,#09
	ret
.l4c91
	ld lx,#08
	sub d
	jr nc,l4c98
	xor a
.l4c98
	ld (iy+#07),a
	rr b
	call l4e0a
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l4ca8
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l4cb8
	ld (l4c71),a
	ld lx,#00
.l4cb8
	ld a,b
	and #0f
	sub d
	jr nc,l4cbf
	xor a
.l4cbf
	ld (iy+#07),a
	bit 5,c
	jr nz,l4cc9
	inc lx
	ret
.l4cc9
	rr b
	bit 6,c
	call l4dfc
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l4cd8
	rr b
	jr nc,l4ceb
	ld a,(l4b43)
	ld c,a
	ld a,(l4b4b)
	cp c
	jr nz,l4ceb
	ld a,#fe
	ld (l4c58),a
.l4ceb
	bit 1,b
	jp nz,l4da4
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l4c79),a
	bit 0,b
	jr z,l4d5a
	bit 2,b
	call l4dfc
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l4d1a),a
	ld a,b
	exx
.l4d1a equ $ + 1
	jr l4d1b
.l4d1b
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
	jr nc,l4d3a
	inc hl
.l4d3a
	bit 5,a
	jr z,l4d4a
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
.l4d4a
	ld (l4c77),hl
	exx
.l4d4e
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l4c71),a
	ld lx,#00
	ret
.l4d5a
	bit 2,b
	call l4dfc
	ld (l4c77),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l4d6e),a
	ld a,b
	exx
.l4d6e equ $ + 1
	jr l4d6f
.l4d6f
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
	jr z,l4d9b
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
.l4d9b
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l4d4e
.l4da4
	bit 0,b
	jr z,l4db8
.l4da9 equ $ + 1
	ld a,#00
	or a
	jr z,l4db1
	ld hl,#0000
	ret
.l4db1
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l4c7a
.l4db8
	ld (iy+#07),#10
	bit 5,b
	jr nz,l4dc5
	ld lx,#09
	jr l4dd8
.l4dc5
	ld lx,#08
	ld hx,e
	bit 2,b
	call l4dfc
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l4dd8
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l4c79),a
	rr b
	rr b
	bit 2,b
	call l4dfc
	ld (l4c77),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l4c71),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l4dfc
	jr z,l4e0a
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
.l4e0a
	bit 4,b
	jr z,l4e1a
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
.l4e1a
	ld a,e
	bit 3,b
	jr z,l4e27
	add (hl)
	inc hl
	cp #90
	jr c,l4e27
	ld a,#8f
.l4e27
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l4e6a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l4e36
	ld a,(hl)
	inc hl
	srl a
	jr c,l4e5d
	sub #20
	jr c,l4e67
	jr z,l4e59
	dec a
	ld e,a
.l4e44
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l4e52
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l4e52
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l4e59
	ld e,(hl)
	inc hl
	jr l4e44
.l4e5d
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l4e67
	add #20
	ret
.l4e6a
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
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
;
.real_init_music
;
	xor a
	ld (l4886),a
	ld hl,#0009
	add hl,de
	ld de,l4a62
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l4975),hl
	ld (l49da),hl
	ld (l4a3f),hl
	add hl,bc
	ld de,l4908
	ldi
	ld de,l4959
	ldi
	ld de,l49be
	ldi
	ld de,l4a23
	ldi
	ld de,l48f4
	ldi
	ldi
	ld (l489b),hl
	ld a,#01
	ld (l4890),a
	ld (l4896),a
	ld a,#ff
	ld (l4c79),a
	ld hl,(l4975)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l4b3d),hl
	ld (l4ade),hl
	ld (l4a82),hl
	ret
	push ix
	push iy
	ld hl,l4c72
	ld bc,#0500
.l4ff4
	ld (hl),c
	inc hl
	djnz l4ff4
	ld a,#3f
	jp l4b7d
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	rrca
	jp c,l5012
	rrca
	jp c,l500e
	ld hl,(l4a9c)
	ret
.l500e
	ld hl,(l4af8)
	ret
.l5012
	ld hl,(l4b57)
	ret
;
; #4310
; ld de,#0040
; call #4f91
;
.init_music
;
	ld de,l0040
	jp real_init_music
;
.music_info
	db "UFO (2017)(CpcRetroDev.ByteRealms)()",0
	db "StArkos",0

	read "music_end.asm"
