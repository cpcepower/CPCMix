; Music of The Spirit Of Halloween (2018)(CpcRetroDev.ByteRealms)()(StArkos)
; Ripped by Megachur the 16/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THESPIOH.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0200

	read "music_header.asm"

.l0200
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#3f,#00,#14,#02,#1d,#02
	db #31,#02,#3f,#02,#00,#00,#00,#00
	db #00,#00,#0d,#16,#02,#01,#00,#3c
	db #38,#34,#30,#2c,#28,#24,#20,#1c
	db #18,#14,#10,#0c,#08,#04,#0d,#16
	db #02,#01,#00,#3e,#01,#36,#01,#2e
	db #01,#22,#01,#14,#0d,#16,#02,#01
	db #00,#3e,#01,#36,#22,#30,#2c,#28
	db #0d,#16,#02,#20,#00,#00,#00,#77
	db #02,#00,#78,#02,#90,#02,#b0,#02
	db #00,#78,#02,#c8,#02,#b0,#02,#00
	db #e8,#02,#0c,#03,#20,#03,#00,#78
	db #02,#2e,#03,#b0,#02,#00,#e8,#02
	db #0c,#03,#20,#03,#01,#51,#02,#00
	db #76,#e0,#00,#00,#01,#06,#4f,#06
	db #37,#06,#4f,#06,#37,#06,#4f,#06
	db #37,#02,#47,#02,#45,#02,#47,#00
	db #a6,#e0,#00,#00,#01,#02,#67,#02
	db #6d,#02,#71,#02,#75,#02,#73,#02
	db #75,#06,#67,#02,#67,#02,#6d,#02
	db #71,#02,#75,#02,#73,#02,#75,#00
	db #8a,#e0,#00,#00,#02,#06,#4b,#04
	db #4b,#4b,#06,#4b,#06,#4b,#04,#42
	db #00,#4b,#04,#4b,#4b,#06,#4b,#00
	db #a6,#e0,#00,#00,#01,#02,#67,#02
	db #6d,#02,#71,#02,#75,#02,#73,#02
	db #75,#02,#77,#02,#75,#02,#73,#02
	db #71,#02,#6d,#02,#67,#06,#67,#00
	db #8e,#e0,#00,#00,#01,#02,#47,#02
	db #45,#02,#47,#02,#37,#02,#47,#02
	db #45,#02,#47,#02,#4f,#02,#47,#02
	db #45,#02,#47,#02,#37,#02,#47,#02
	db #45,#02,#47,#00,#8e,#e0,#00,#00
	db #01,#06,#5d,#06,#4f,#06,#5d,#06
	db #4f,#06,#5d,#06,#4f,#06,#5d,#00
	db #5e,#e0,#00,#00,#03,#0e,#1f,#0e
	db #1f,#0e,#1f,#06,#1f,#00,#b6,#e0
	db #00,#00,#01,#75,#77,#71,#75,#71
	db #75,#6d,#71,#6d,#71,#6b,#6d,#6b
	db #6d,#67,#6b,#67,#6b,#5f,#67,#5f
	db #67,#5d,#5f,#5d,#5f,#59,#5d,#59
	db #5d,#4f,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
; #6a98 - player reallocated by Megachur
;
.l6a99 equ $ + 1
.l6a98
	db #00,#00
;
.play_music
;
	push ix
	push iy
	xor a
	ld (l6a98),a
.l6aa3 equ $ + 1
	ld a,#01
	dec a
	jp nz,l6c76
.l6aa9 equ $ + 1
	ld a,#01
	dec a
	jr nz,l6b1c
.l6aae equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l6ac3
	ld a,(l6a99)
	inc a
	ld (l6a99),a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l6ac3
	rra
	jr nc,l6acb
	ld de,l6b6c
	ldi
.l6acb
	rra
	jr nc,l6ad3
	ld de,l6bd1
	ldi
.l6ad3
	rra
	jr nc,l6adb
	ld de,l6c36
	ldi
.l6adb
	ld de,l6b4b
	ldi
	ldi
	ld de,l6bb0
	ldi
	ldi
	ld de,l6c15
	ldi
	ldi
	rra
	jr nc,l6af8
	ld de,l6b1b
	ldi
.l6af8
	rra
	jr nc,l6b03
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l6b07),de
.l6b03
	ld (l6aae),hl
.l6b07 equ $ + 1
	ld hl,#0000
	ld (l6b25),hl
	ld a,#01
	ld (l6b20),a
	ld (l6b46),a
	ld (l6bab),a
	ld (l6c10),a
.l6b1b equ $ + 1
	ld a,#01
.l6b1c
	ld (l6aa9),a
.l6b20 equ $ + 1
	ld a,#01
	dec a
	jr nz,l6b42
.l6b25 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l6b3f
	srl a
	jr nz,l6b33
	ld a,(hl)
	inc hl
.l6b33
	jr nc,l6b3a
	ld (l6a98),a
	jr l6b3d
.l6b3a
	ld (l6c75),a
.l6b3d
	ld a,#01
.l6b3f
	ld (l6b25),hl
.l6b42
	ld (l6b20),a
.l6b46 equ $ + 1
	ld a,#01
	dec a
	jr nz,l6ba7
.l6b4b equ $ + 1
	ld hl,#0000
	call l7049
	ld (l6b4b),hl
	jr c,l6ba7
	ld a,d
	rra
	jr nc,l6b5e
	and #0f
	ld (l6d4e),a
.l6b5e
	rl d
	jr nc,l6b66
	ld (l6d3c),ix
.l6b66
	rl d
	jr nc,l6ba5
	ld a,e
.l6b6c equ $ + 1
	add #00
	ld (l6d4d),a
	ld hl,#0000
	ld (l6d39),hl
	rl d
	jr c,l6b85
.l6b7b equ $ + 1
	ld hl,#0000
	ld a,(l6d5e)
	ld (l6d56),a
	jr l6ba2
.l6b85
	ld l,b
	add hl,hl
.l6b88 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l6d5e),a
	ld (l6d56),a
	ld a,(hl)
	or a
	jr z,l6b9e
	ld (l6e6b),a
.l6b9e
	inc hl
	ld (l6b7b),hl
.l6ba2
	ld (l6d50),hl
.l6ba5
	ld a,#01
.l6ba7
	ld (l6b46),a
.l6bab equ $ + 1
	ld a,#01
	dec a
	jr nz,l6c0c
.l6bb0 equ $ + 1
	ld hl,#0000
	call l7049
	ld (l6bb0),hl
	jr c,l6c0c
	ld a,d
	rra
	jr nc,l6bc3
	and #0f
	ld (l6cef),a
.l6bc3
	rl d
	jr nc,l6bcb
	ld (l6cdd),ix
.l6bcb
	rl d
	jr nc,l6c0a
	ld a,e
.l6bd1 equ $ + 1
	add #00
	ld (l6cee),a
	ld hl,#0000
	ld (l6cda),hl
	rl d
	jr c,l6bea
.l6be0 equ $ + 1
	ld hl,#0000
	ld a,(l6cff)
	ld (l6cf7),a
	jr l6c07
.l6bea
	ld l,b
	add hl,hl
.l6bed equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l6cff),a
	ld (l6cf7),a
	ld a,(hl)
	or a
	jr z,l6c03
	ld (l6e6b),a
.l6c03
	inc hl
	ld (l6be0),hl
.l6c07
	ld (l6cf1),hl
.l6c0a
	ld a,#01
.l6c0c
	ld (l6bab),a
.l6c10 equ $ + 1
	ld a,#01
	dec a
	jr nz,l6c71
.l6c15 equ $ + 1
	ld hl,#0000
	call l7049
	ld (l6c15),hl
	jr c,l6c71
	ld a,d
	rra
	jr nc,l6c28
	and #0f
	ld (l6c93),a
.l6c28
	rl d
	jr nc,l6c30
	ld (l6c81),ix
.l6c30
	rl d
	jr nc,l6c6f
	ld a,e
.l6c36 equ $ + 1
	add #00
	ld (l6c92),a
	ld hl,#0000
	ld (l6c7e),hl
	rl d
	jr c,l6c4f
.l6c45 equ $ + 1
	ld hl,#0000
	ld a,(l6ca3)
	ld (l6c9b),a
	jr l6c6c
.l6c4f
	ld l,b
	add hl,hl
.l6c52 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l6ca3),a
	ld (l6c9b),a
	ld a,(hl)
	or a
	jr z,l6c68
	ld (l6e6b),a
.l6c68
	inc hl
	ld (l6c45),hl
.l6c6c
	ld (l6c95),hl
.l6c6f
	ld a,#01
.l6c71
	ld (l6c10),a
.l6c75 equ $ + 1
	ld a,#01
.l6c76
	ld (l6aa3),a
	ld iy,l6e82
.l6c7e equ $ + 1
	ld hl,#0000
.l6c81 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l6c7e),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l6c93 equ $ + 2
.l6c92 equ $ + 1
	ld de,#0000
.l6c95 equ $ + 1
	ld hl,#0000
	call l6e8d
.l6c9b equ $ + 1
	ld a,#01
	dec a
	jr nz,l6ca4
	ld (l6c95),hl
.l6ca3 equ $ + 1
	ld a,#06
.l6ca4
	ld (l6c9b),a
.l6ca7
	ld de,#0000
	exx
	ld de,#0000
.l6caf equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l6cd2
	ld a,#01
	ld (l6fbc),a
	call l6e8d
	xor a
	ld (l6fbc),a
	ld a,l
	or h
	jr z,l6cca
.l6cc6 equ $ + 1
	ld a,#01
	dec a
	jr nz,l6ccf
.l6cca
	ld (l6caf),hl
	ld a,#06
.l6ccf
	ld (l6cc6),a
.l6cd2
	ld a,lx
	ex af,af'
	ld iy,l6e80
.l6cda equ $ + 1
	ld hl,#0000
.l6cdd equ $ + 1
	ld de,#0000
	add hl,de
	ld (l6cda),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l6cef equ $ + 2
.l6cee equ $ + 1
	ld de,#0000
.l6cf1 equ $ + 1
	ld hl,#0000
	call l6e8d
.l6cf7 equ $ + 1
	ld a,#01
	dec a
	jr nz,l6d00
	ld (l6cf1),hl
.l6cff equ $ + 1
	ld a,#06
.l6d00
	ld (l6cf7),a
.l6d03
	ld de,#0000
	exx
	ld de,#0000
.l6d0b equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l6d2e
	ld a,#01
	ld (l6fbc),a
	call l6e8d
	xor a
	ld (l6fbc),a
	ld a,l
	or h
	jr z,l6d26
.l6d22 equ $ + 1
	ld a,#01
	dec a
	jr nz,l6d2b
.l6d26
	ld (l6d0b),hl
	ld a,#06
.l6d2b
	ld (l6d22),a
.l6d2e
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l6e7e
.l6d39 equ $ + 1
	ld hl,#0000
.l6d3c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l6d39),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l6d4e equ $ + 2
.l6d4d equ $ + 1
	ld de,#0000
.l6d50 equ $ + 1
	ld hl,#0000
	call l6e8d
.l6d56 equ $ + 1
	ld a,#01
	dec a
	jr nz,l6d5f
	ld (l6d50),hl
.l6d5e equ $ + 1
	ld a,#06
.l6d5f
	ld (l6d56),a
.l6d62
	ld de,#0000
	exx
	ld de,#0000
.l6d6a equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l6d8d
	ld a,#01
	ld (l6fbc),a
	call l6e8d
	xor a
	ld (l6fbc),a
	ld a,l
	or h
	jr z,l6d85
.l6d81 equ $ + 1
	ld a,#01
	dec a
	jr nz,l6d8a
.l6d85
	ld (l6d6a),hl
	ld a,#06
.l6d8a
	ld (l6d81),a
.l6d8d
	ex af,af'
	or lx
.l6d90
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l6e7e
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
.l6e6b equ $ + 1
	cp #ff
	ret z
	ld (l6e6b),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l6e7e
	nop
	nop
.l6e80
	nop
	nop
.l6e82
	nop
	nop
.l6e84
	nop
.l6e85
	nop
	nop
	nop
	nop
	nop
.l6e8a
	nop
	nop
.l6e8c
	nop
.l6e8d
	ld b,(hl)
	inc hl
	rr b
	jp c,l6eeb
	rr b
	jr c,l6ebb
	ld a,b
	and #0f
	jr nz,l6ea4
	ld (iy+#07),a
	ld lx,#09
	ret
.l6ea4
	ld lx,#08
	sub d
	jr nc,l6eab
	xor a
.l6eab
	ld (iy+#07),a
	rr b
	call l701d
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l6ebb
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l6ecb
	ld (l6e84),a
	ld lx,#00
.l6ecb
	ld a,b
	and #0f
	sub d
	jr nc,l6ed2
	xor a
.l6ed2
	ld (iy+#07),a
	bit 5,c
	jr nz,l6edc
	inc lx
	ret
.l6edc
	rr b
	bit 6,c
	call l700f
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l6eeb
	rr b
	jr nc,l6efe
	ld a,(l6d56)
	ld c,a
	ld a,(l6d5e)
	cp c
	jr nz,l6efe
	ld a,#fe
	ld (l6e6b),a
.l6efe
	bit 1,b
	jp nz,l6fb7
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l6e8c),a
	bit 0,b
	jr z,l6f6d
	bit 2,b
	call l700f
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l6f2d),a
	ld a,b
	exx
.l6f2d equ $ + 1
	jr l6f2e
.l6f2e
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
	jr nc,l6f4d
	inc hl
.l6f4d
	bit 5,a
	jr z,l6f5d
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
.l6f5d
	ld (l6e8a),hl
	exx
.l6f61
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l6e84),a
	ld lx,#00
	ret
.l6f6d
	bit 2,b
	call l700f
	ld (l6e8a),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l6f81),a
	ld a,b
	exx
.l6f81 equ $ + 1
	jr l6f82
.l6f82
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
	jr z,l6fae
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
.l6fae
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l6f61
.l6fb7
	bit 0,b
	jr z,l6fcb
.l6fbc equ $ + 1
	ld a,#00
	or a
	jr z,l6fc4
	ld hl,#0000
	ret
.l6fc4
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l6e8d
.l6fcb
	ld (iy+#07),#10
	bit 5,b
	jr nz,l6fd8
	ld lx,#09
	jr l6feb
.l6fd8
	ld lx,#08
	ld hx,e
	bit 2,b
	call l700f
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l6feb
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l6e8c),a
	rr b
	rr b
	bit 2,b
	call l700f
	ld (l6e8a),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l6e84),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l700f
	jr z,l701d
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
.l701d
	bit 4,b
	jr z,l702d
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
.l702d
	ld a,e
	bit 3,b
	jr z,l703a
	add (hl)
	inc hl
	cp #90
	jr c,l703a
	ld a,#8f
.l703a
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l707d
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l7049
	ld a,(hl)
	inc hl
	srl a
	jr c,l7070
	sub #20
	jr c,l707a
	jr z,l706c
	dec a
	ld e,a
.l7057
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l7065
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l7065
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l706c
	ld e,(hl)
	inc hl
	jr l7057
.l7070
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l707a
	add #20
	ret
.l707d
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
.l71a4
;
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
	xor a
	ld (l6a99),a
	ld hl,#0009
	add hl,de
	ld de,l6c75
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l6b88),hl
	ld (l6bed),hl
	ld (l6c52),hl
	add hl,bc
	ld de,l6b1b
	ldi
	ld de,l6b6c
	ldi
	ld de,l6bd1
	ldi
	ld de,l6c36
	ldi
	ld de,l6b07
	ldi
	ldi
	ld (l6aae),hl
	ld a,#01
	ld (l6aa3),a
	ld (l6aa9),a
	ld a,#ff
	ld (l6e8c),a
	ld hl,(l6b88)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l6d50),hl
	ld (l6cf1),hl
	ld (l6c95),hl
	ret
	push ix
	push iy
	ld hl,l6e85
	ld bc,#0500
.l7207
	ld (hl),c
	inc hl
	djnz l7207
	ld a,#3f
	jp l6d90
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	rrca
	jp c,l7225
	rrca
	jp c,l7221
	ld hl,(l6caf)
	ret
.l7221
	ld hl,(l6d0b)
	ret
.l7225
	ld hl,(l6d6a)
	ret
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,#000c
	add hl,de
	ld (l7284),hl
	ld hl,#0000
	ld (l6d6a),hl
	ld (l6d0b),hl
	ld (l6caf),hl
	ret
	ld (l72a0),ix
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
	jp c,l726c
	rrca
	jp c,l7265
	ld ix,l6ca7
	jp l7270
.l7265
	ld ix,l6d03
	jp l7270
.l726c
	ld ix,l6d62
.l7270
	ld (ix+#01),c
	ld (ix+#02),b
	ld a,e
	ld (ix+#05),a
	ld a,#0f
	sub h
	ld (ix+#06),a
	ld h,#00
	add hl,hl
.l7284 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,d
	or a
	jr nz,l7290
	ld a,(hl)
.l7290
	ld (ix+#27),a
	ld (ix+#1f),a
	inc hl
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
.l72a0 equ $ + 2
	ld ix,#0000
	ret
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	ld hl,#0000
	rrca
	jp nc,l72b2
	ld (l6d6a),hl
.l72b2
	rrca
	jp nc,l72b9
	ld (l6d0b),hl
.l72b9
	rrca
	jp z,l72c0
	ld (l6caf),hl
.l72c0
	ret
;
; #4a33
; call #6a9a	; play
;
; #6950
; ld de,#0200
; call #71a4	; init
;
.init_music		; added by Megachur
;
	ld de,l0200
	push de
	call real_init_music
	pop af
	ret
;
.music_info
	db "The Spirit Of Halloween (2018)(CpcRetroDev.ByteRealms)()",0
	db "StArkos",0

	read "music_end.asm"
