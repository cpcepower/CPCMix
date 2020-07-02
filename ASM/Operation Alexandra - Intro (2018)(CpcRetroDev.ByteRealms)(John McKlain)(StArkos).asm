; Music of Operation Alexandra - Intro (2018)(CpcRetroDev.ByteRealms)(John McKlain)(StArkos)
; Ripped by Megachur the 02/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OPERATAI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #09c6-#07fb		; music player reallocated by Megachur

	read "music_header.asm"

; #19bb

	jp l20dd
	jp l19c8
	jp l2132
	jp l21ab
.l19c7
	db #00
;
.play_music
.l19c8
;
	xor a
	ld (l19c7),a
.l19cd equ $ + 1
	ld a,#01
	dec a
	jp nz,l1b99
.l19d3 equ $ + 1
	ld a,#01
	dec a
	jr nz,l1a3f
.l19d8 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l19e6
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l19e6
	rra
	jr nc,l19ee
	ld de,l1a8f
	ldi
.l19ee
	rra
	jr nc,l19f6
	ld de,l1af4
	ldi
.l19f6
	rra
	jr nc,l19fe
	ld de,l1b59
	ldi
.l19fe
	ld de,l1a6e
	ldi
	ldi
	ld de,l1ad3
	ldi
	ldi
	ld de,l1b38
	ldi
	ldi
	rra
	jr nc,l1a1b
	ld de,l1a3e
	ldi
.l1a1b
	rra
	jr nc,l1a26
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1a2a),de
.l1a26
	ld (l19d8),hl
.l1a2a equ $ + 1
	ld hl,#0000
	ld (l1a48),hl
	ld a,#01
	ld (l1a43),a
	ld (l1a69),a
	ld (l1ace),a
	ld (l1b33),a
.l1a3e equ $ + 1
	ld a,#01
.l1a3f
	ld (l19d3),a
.l1a43 equ $ + 1
	ld a,#01
	dec a
	jr nz,l1a65
.l1a48 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l1a62
	srl a
	jr nz,l1a56
	ld a,(hl)
	inc hl
.l1a56
	jr nc,l1a5d
	ld (l19c7),a
	jr l1a60
.l1a5d
	ld (l1b98),a
.l1a60
	ld a,#01
.l1a62
	ld (l1a48),hl
.l1a65
	ld (l1a43),a
.l1a69 equ $ + 1
	ld a,#01
	dec a
	jr nz,l1aca
.l1a6e equ $ + 1
	ld hl,#0000
	call l1f89
	ld (l1a6e),hl
	jr c,l1aca
	ld a,d
	rra
	jr nc,l1a81
	and #0f
	ld (l1c71),a
.l1a81
	rl d
	jr nc,l1a89
	ld (l1c5f),ix
.l1a89
	rl d
	jr nc,l1ac8
	ld a,e
.l1a8f equ $ + 1
	add #00
	ld (l1c70),a
	ld hl,#0000
	ld (l1c5c),hl
	rl d
	jr c,l1aa8
.l1a9e equ $ + 1
	ld hl,#0000
	ld a,(l1c81)
	ld (l1c79),a
	jr l1ac5
.l1aa8
	ld l,b
	add hl,hl
.l1aab equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l1c81),a
	ld (l1c79),a
	ld a,(hl)
	or a
	jr z,l1ac1
	ld (l1dab),a
.l1ac1
	inc hl
	ld (l1a9e),hl
.l1ac5
	ld (l1c73),hl
.l1ac8
	ld a,#01
.l1aca
	ld (l1a69),a
.l1ace equ $ + 1
	ld a,#01
	dec a
	jr nz,l1b2f
.l1ad3 equ $ + 1
	ld hl,#0000
	call l1f89
	ld (l1ad3),hl
	jr c,l1b2f
	ld a,d
	rra
	jr nc,l1ae6
	and #0f
	ld (l1c12),a
.l1ae6
	rl d
	jr nc,l1aee
	ld (l1c00),ix
.l1aee
	rl d
	jr nc,l1b2d
	ld a,e
.l1af4 equ $ + 1
	add #00
	ld (l1c11),a
	ld hl,#0000
	ld (l1bfd),hl
	rl d
	jr c,l1b0d
.l1b03 equ $ + 1
	ld hl,#0000
	ld a,(l1c22)
	ld (l1c1a),a
	jr l1b2a
.l1b0d
	ld l,b
	add hl,hl
.l1b10 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l1c22),a
	ld (l1c1a),a
	ld a,(hl)
	or a
	jr z,l1b26
	ld (l1dab),a
.l1b26
	inc hl
	ld (l1b03),hl
.l1b2a
	ld (l1c14),hl
.l1b2d
	ld a,#01
.l1b2f
	ld (l1ace),a
.l1b33 equ $ + 1
	ld a,#01
	dec a
	jr nz,l1b94
.l1b38 equ $ + 1
	ld hl,#0000
	call l1f89
	ld (l1b38),hl
	jr c,l1b94
	ld a,d
	rra
	jr nc,l1b4b
	and #0f
	ld (l1bb6),a
.l1b4b
	rl d
	jr nc,l1b53
	ld (l1ba4),ix
.l1b53
	rl d
	jr nc,l1b92
	ld a,e
.l1b59 equ $ + 1
	add #00
	ld (l1bb5),a
	ld hl,#0000
	ld (l1ba1),hl
	rl d
	jr c,l1b72
.l1b68 equ $ + 1
	ld hl,#0000
	ld a,(l1bc6)
	ld (l1bbe),a
	jr l1b8f
.l1b72
	ld l,b
	add hl,hl
.l1b75 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l1bc6),a
	ld (l1bbe),a
	ld a,(hl)
	or a
	jr z,l1b8b
	ld (l1dab),a
.l1b8b
	inc hl
	ld (l1b68),hl
.l1b8f
	ld (l1bb8),hl
.l1b92
	ld a,#01
.l1b94
	ld (l1b33),a
.l1b98 equ $ + 1
	ld a,#01
.l1b99
	ld (l19cd),a
	ld iy,l1dc2
.l1ba1 equ $ + 1
	ld hl,#0000
.l1ba4 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l1ba1),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l1bb6 equ $ + 2
.l1bb5 equ $ + 1
	ld de,#0000
.l1bb8 equ $ + 1
	ld hl,#0000
	call l1dcd
.l1bbe equ $ + 1
	ld a,#01
	dec a
	jr nz,l1bc7
	ld (l1bb8),hl
.l1bc6 equ $ + 1
	ld a,#06
.l1bc7
	ld (l1bbe),a
.l1bca
	ld de,#0000
	exx
	ld de,#0000
.l1bd2 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l1bf5
	ld a,#01
	ld (l1efc),a
	call l1dcd
	xor a
	ld (l1efc),a
	ld a,l
	or h
	jr z,l1bed
.l1be9 equ $ + 1
	ld a,#01
	dec a
	jr nz,l1bf2
.l1bed
	ld (l1bd2),hl
	ld a,#06
.l1bf2
	ld (l1be9),a
.l1bf5
	ld a,lx
	ex af,af'
	ld iy,l1dc0
.l1bfd equ $ + 1
	ld hl,#0000
.l1c00 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l1bfd),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l1c12 equ $ + 2
.l1c11 equ $ + 1
	ld de,#0000
.l1c14 equ $ + 1
	ld hl,#0000
	call l1dcd
.l1c1a equ $ + 1
	ld a,#01
	dec a
	jr nz,l1c23
	ld (l1c14),hl
.l1c22 equ $ + 1
	ld a,#06
.l1c23
	ld (l1c1a),a
.l1c26
	ld de,#0000
	exx
	ld de,#0000
.l1c2e equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l1c51
	ld a,#01
	ld (l1efc),a
	call l1dcd
	xor a
	ld (l1efc),a
	ld a,l
	or h
	jr z,l1c49
.l1c45 equ $ + 1
	ld a,#01
	dec a
	jr nz,l1c4e
.l1c49
	ld (l1c2e),hl
	ld a,#06
.l1c4e
	ld (l1c45),a
.l1c51
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l1dbe
.l1c5c equ $ + 1
	ld hl,#0000
.l1c5f equ $ + 1
	ld de,#0000
	add hl,de
	ld (l1c5c),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l1c71 equ $ + 2
.l1c70 equ $ + 1
	ld de,#0000
.l1c73 equ $ + 1
	ld hl,#0000
	call l1dcd
.l1c79 equ $ + 1
	ld a,#01
	dec a
	jr nz,l1c82
	ld (l1c73),hl
.l1c81 equ $ + 1
	ld a,#06
.l1c82
	ld (l1c79),a
.l1c85
	ld de,#0000
	exx
	ld de,#0000
.l1c8d equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l1cb0
	ld a,#01
	ld (l1efc),a
	call l1dcd
	xor a
	ld (l1efc),a
	ld a,l
	or h
	jr z,l1ca8
.l1ca4 equ $ + 1
	ld a,#01
	dec a
	jr nz,l1cad
.l1ca8
	ld (l1c8d),hl
	ld a,#06
.l1cad
	ld (l1ca4),a
.l1cb0
	ex af,af'
	or lx
.l1cb3
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l1dbe
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db #ed,#71 ; db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; db #ed,#71 ; out (c),0
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
	db #ed,#71 ; db #ed,#71 ; out (c),0
	dec b
	dec b
	ld a,(hl)
.l1d44 equ $ + 1
	sub #00
	jr nc,l1d4b
	db #ed,#71 ; db #ed,#71 ; out (c),0
	jr l1d4d
.l1d4b
	out (c),a
.l1d4d
	inc hl
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; db #ed,#71 ; out (c),0
	dec b
	dec b
	ld a,(hl)
.l1d5f equ $ + 1
	sub #00
	jr nc,l1d66
	db #ed,#71 ; db #ed,#71 ; out (c),0
	jr l1d68
.l1d66
	out (c),a
.l1d68
	inc hl
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; db #ed,#71 ; out (c),0
	dec b
	dec b
	ld a,(hl)
.l1d7a equ $ + 1
	sub #00
	jr nc,l1d81
	db #ed,#71 ; db #ed,#71 ; out (c),0
	jr l1d83
.l1d81
	out (c),a
.l1d83
	inc hl
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	ld a,(hl)
.l1dab equ $ + 1
	cp #ff
	ret z
	ld (l1dab),a
	out (c),c
	ld b,e
	db #ed,#71 ; db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l1dbe
	nop
	nop
.l1dc0
	nop
	nop
.l1dc2
	nop
	nop
.l1dc4
	nop
.l1dc5
	nop
	nop
	nop
	nop
	nop
.l1dca
	nop
	nop
.l1dcc
	nop
.l1dcd
	ld b,(hl)
	inc hl
	rr b
	jp c,l1e2b
	rr b
	jr c,l1dfb
	ld a,b
	and #0f
	jr nz,l1de4
	ld (iy+#07),a
	ld lx,#09
	ret
.l1de4
	ld lx,#08
	sub d
	jr nc,l1deb
	xor a
.l1deb
	ld (iy+#07),a
	rr b
	call l1f5d
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l1dfb
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l1e0b
	ld (l1dc4),a
	ld lx,#00
.l1e0b
	ld a,b
	and #0f
	sub d
	jr nc,l1e12
	xor a
.l1e12
	ld (iy+#07),a
	bit 5,c
	jr nz,l1e1c
	inc lx
	ret
.l1e1c
	rr b
	bit 6,c
	call l1f4f
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l1e2b
	rr b
	jr nc,l1e3e
	ld a,(l1c79)
	ld c,a
	ld a,(l1c81)
	cp c
	jr nz,l1e3e
	ld a,#fe
	ld (l1dab),a
.l1e3e
	bit 1,b
	jp nz,l1ef7
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l1dcc),a
	bit 0,b
	jr z,l1ead
	bit 2,b
	call l1f4f
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l1e6d),a
	ld a,b
	exx
.l1e6d equ $ + 1
	jr l1e6e
.l1e6e
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
	jr nc,l1e8d
	inc hl
.l1e8d
	bit 5,a
	jr z,l1e9d
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
.l1e9d
	ld (l1dca),hl
	exx
.l1ea1
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l1dc4),a
	ld lx,#00
	ret
.l1ead
	bit 2,b
	call l1f4f
	ld (l1dca),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l1ec1),a
	ld a,b
	exx
.l1ec1 equ $ + 1
	jr l1ec2
.l1ec2
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
	jr z,l1eee
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
.l1eee
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l1ea1
.l1ef7
	bit 0,b
	jr z,l1f0b
.l1efc equ $ + 1
	ld a,#00
	or a
	jr z,l1f04
	ld hl,#0000
	ret
.l1f04
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l1dcd
.l1f0b
	ld (iy+#07),#10
	bit 5,b
	jr nz,l1f18
	ld lx,#09
	jr l1f2b
.l1f18
	ld lx,#08
	ld hx,e
	bit 2,b
	call l1f4f
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l1f2b
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l1dcc),a
	rr b
	rr b
	bit 2,b
	call l1f4f
	ld (l1dca),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l1dc4),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l1f4f
	jr z,l1f5d
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
.l1f5d
	bit 4,b
	jr z,l1f6d
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
.l1f6d
	ld a,e
	bit 3,b
	jr z,l1f7a
	add (hl)
	inc hl
	cp #90
	jr c,l1f7a
	ld a,#8f
.l1f7a
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l1fbd
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l1f89
	ld a,(hl)
	inc hl
	srl a
	jr c,l1fb0
	sub #20
	jr c,l1fba
	jr z,l1fac
	dec a
	ld e,a
.l1f97
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l1fa5
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l1fa5
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l1fac
	ld e,(hl)
	inc hl
	jr l1f97
.l1fb0
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l1fba
	add #20
	ret
.l1fbd
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
.l20dd
;
	ld hl,#0009
	add hl,de
	ld de,l1b98
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l1aab),hl
	ld (l1b10),hl
	ld (l1b75),hl
	add hl,bc
	ld de,l1a3e
	ldi
	ld de,l1a8f
	ldi
	ld de,l1af4
	ldi
	ld de,l1b59
	ldi
	ld de,l1a2a
	ldi
	ldi
	ld (l19d8),hl
	ld a,#01
	ld (l19cd),a
	ld (l19d3),a
	ld a,#ff
	ld (l1dcc),a
	ld hl,(l1aab)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l1c73),hl
	ld (l1c14),hl
	ld (l1bb8),hl
	ret
;
.stop_music
.l2132
;
	ld hl,l1dc5
	ld bc,#0300
.l2138
	ld (hl),c
	inc hl
	djnz l2138
	ld a,#3f
	jp l1cb3
	ld hl,#000c
	add hl,de
	ld (l217b),hl
	ld hl,#0000
	ld (l1c8d),hl
	ld (l1c2e),hl
	ld (l1bd2),hl
	ret
	ld ix,l1c85
	or a
	jr z,l2167
	ld ix,l1c26
	dec a
	jr z,l2167
	ld ix,l1bca
.l2167
	ld (ix+#01),c
	ld (ix+#02),b
	ld a,e
	ld (ix+#05),a
	ld a,#0f
	sub h
	ld (ix+#06),a
	ld h,#00
	add hl,hl
.l217b equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,d
	or a
	jr nz,l2187
	ld a,(hl)
.l2187
	ld (ix+#27),a
	ld (ix+#1f),a
	inc hl
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
	ret
	ld a,e
	ld hl,l1c8d
	or a
	jr z,l21a7
	ld hl,l1c2e
	dec a
	jr z,l21a7
	ld hl,l1bd2
	dec a
.l21a7
	ld (hl),a
	inc hl
	ld (hl),a
	ret
.l21ab
	ld a,e
	ld (l1d44),a
	ld (l1d5f),a
	ld (l1d7a),a
	ret

; #21b6

	; call l21c1
	; ld b,#f5
; .l21bb
	; in a,(c)
	; rra
	; jr nc,l21bb
	; ret
; .l21c1
	; ld b,#f5
; .l21c3
	; in a,(c)
	; rra
	; jr c,l21c3
	; ret

	ds #09c6-$,#00
.l09c6
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#77,#00,#de,#09,#e7,#09
	db #f5,#09,#01,#0a,#1f,#0a,#2e,#0a
	db #00,#00,#00,#00,#00,#00,#0d,#e0
	db #09,#01,#00,#76,#2d,#0f,#74,#0a
	db #6c,#06,#64,#02,#0d,#e0,#09,#01
	db #00,#74,#f4,#38,#34,#30,#28,#20
	db #0d,#f7,#09,#01,#00,#76,#2d,#0f
	db #74,#0a,#6c,#06,#6e,#24,#13,#6e
	db #24,#11,#66,#24,#0f,#66,#24,#0c
	db #5a,#24,#09,#5a,#24,#05,#0d,#19
	db #0a,#01,#00,#70,#13,#38,#70,#0c
	db #02,#20,#5c,#13,#24,#0d,#e0,#09
	db #01,#00,#74,#ff,#34,#b0,#ff,#ff
	db #b4,#fe,#ff,#b0,#ff,#ff,#34,#b0
	db #01,#00,#b4,#02,#00,#b0,#01,#00
	db #0d,#32,#0a,#20,#00,#00,#00,#aa
	db #0a,#00,#6b,#0b,#ab,#0a,#6b,#0b
	db #00,#6b,#0b,#ab,#0a,#6b,#0b,#0e
	db #00,#00,#00,#6b,#0b,#ab,#0a,#f5
	db #0a,#06,#ff,#ff,#6b,#0b,#ab,#0a
	db #30,#0b,#06,#00,#00,#6b,#0b,#ab
	db #0a,#f5,#0a,#06,#ff,#ff,#6b,#0b
	db #ab,#0a,#30,#0b,#0e,#fd,#fd,#fd
	db #6b,#0b,#ab,#0a,#f5,#0a,#06,#fc
	db #fc,#6b,#0b,#ab,#0a,#30,#0b,#06
	db #fd,#fd,#6b,#0b,#ab,#0a,#f5,#0a
	db #06,#fc,#fc,#6b,#0b,#ab,#0a,#30
	db #0b,#01,#5d,#0a,#00,#72,#e1,#00
	db #00,#01,#84,#6b,#02,#42,#05,#42
	db #0f,#42,#01,#42,#0b,#42,#05,#42
	db #0f,#72,#61,#03,#42,#00,#84,#65
	db #02,#42,#0f,#42,#01,#42,#0b,#42
	db #05,#42,#0f,#72,#61,#01,#84,#6b
	db #02,#42,#05,#42,#0f,#42,#01,#42
	db #0b,#42,#05,#42,#0f,#72,#61,#03
	db #42,#00,#84,#65,#02,#42,#0f,#42
	db #01,#42,#0b,#42,#05,#42,#0f,#aa
	db #e5,#00,#00,#04,#63,#61,#5d,#aa
	db #47,#63,#61,#5d,#aa,#49,#63,#61
	db #5d,#aa,#4b,#63,#61,#5d,#e4,#65
	db #05,#42,#0b,#a0,#60,#04,#5d,#e4
	db #69,#05,#42,#0f,#a0,#60,#04,#5d
	db #e4,#6d,#05,#42,#13,#a0,#60,#04
	db #5d,#e4,#71,#05,#42,#17,#a0,#60
	db #04,#5d,#a8,#e5,#00,#00,#04,#63
	db #61,#5d,#a8,#47,#63,#61,#5d,#a8
	db #49,#63,#61,#5d,#a8,#4b,#63,#61
	db #5d,#e2,#65,#05,#42,#0b,#a0,#60
	db #04,#5d,#e2,#69,#05,#42,#0f,#a0
	db #60,#04,#5d,#e2,#6d,#05,#42,#13
	db #a0,#60,#04,#5d,#e2,#71,#05,#42
	db #17,#a0,#60,#04,#5d,#42,#80,#00
	db #00,#00

	db #41,#54,#31,#30,#01,#40				; other theme or sound fx ?
	db #42,#0f,#02,#ff,#1d,#00,#80,#0b
	db #89,#0b,#00,#00,#00,#00,#00,#00
	db #0d,#82,#0b,#01,#00,#b8,#02,#00
	db #d4,#01,#00,#ff,#e0,#fb,#ff,#fc
	db #0d,#82,#0b,#40,#00,#00,#00,#a9
	db #0b,#00,#aa,#0b,#aa,#0b,#aa,#0b
	db #01,#9f,#0b,#00,#42,#80,#00,#00
	db #00
;
; #119a
; ld de,#09c6
; call #20dd	; init music
;
.init_music		; added by Megachur
;
	ld de,l09c6
	jp real_init_music
;
.music_info
	db "Operation Alexandra - Intro (2018)(CpcRetroDev.ByteRealms)(John McKlain)",0
	db "StArkos",0

	read "music_end.asm"
