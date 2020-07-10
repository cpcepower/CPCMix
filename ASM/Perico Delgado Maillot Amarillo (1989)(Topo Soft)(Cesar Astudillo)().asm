; Music of Perico Delgado Maillot Amarillo (1989)(Topo Soft)(Cesar Astudillo)()
; Ripped by Megachur the 06/10/2012
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PERICDMA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2012
music_adr				equ #47bd

	read "music_header.asm"

	ld a,(l47e8)
	and a
	jr nz,l47dd
;
.init_music
;
	call l52ac
	xor a
	ld de,l5142
	call l47e9
	ld a,#01
	ld de,l516d
	call l47e9
	ld a,#02
	ld de,l5182
	call l47e9
.l47dd
	ld a,#01
	ld (l47e8),a
.l47e2
	ret:nop:nop		; call #06f6 - keyboard test modified by Megachur
	jr z,l47e2
	ret
.l47e8
	db #00
.l47e9
	push af
	push de
	and #7f
	ld de,#002e
	call l4bd6
	ld de,l4d30
	add hl,de
	push hl
	ld a,(hl)
	inc hl
	or (hl)
	jr z,l480f
	ld d,#03
	ld hl,l4d30
	ld bc,#002e
.l4805
	inc hl
	ld a,(hl)
	dec hl
	or (hl)
	jr z,l4812
	add hl,bc
	dec d
	jr nz,l4805
.l480f
	pop hl
	jr l4821
.l4812
	pop de
	jr l4821
.l4815
	push af
	push de
	ld de,#002e
	call l4bd6
	ld de,l4d30
	add hl,de
.l4821
	push hl
	xor a
	ld b,#2e
.l4825
	ld (hl),a
	inc hl
	djnz l4825
	pop hl
	pop de
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),e
	inc hl
	ld (hl),d
	pop af
	ret
;
.play_music
;
	push af
	ld b,#03
	xor a
	ld ix,l4d30
	ld de,l4d25
	ld hl,l4d2d
.l4842
	push af
	push hl
	push de
	push bc
	ld (l4d23),a
	ld a,(ix+#04)
	or (ix+#05)
	jp nz,l48ad
	xor a
	call l4b77
	ld c,(ix+#02)
	ld b,(ix+#03)
	ld a,b
	or c
	jp z,l4966
.l4861
	ld a,(bc)
	cp #80
	jp c,l4870
	sub #80
	ld hl,l4d05
	call l4c05
	jp (hl)
.l4870
	push af
	call l4bcb
	pop af
	add (hl)
	ld hl,l4c45
	call l4c05
	ld (ix+#0a),l
	ld (ix+#0b),h
	inc bc
.l4883
	ld a,(ix+#08)
	call l4b77
	call l49e2
	ld (ix+#2a),#00
	call l49fa
	ld (ix+#2b),#00
	ld (ix+#2c),#00
.l489b
	ld (ix+#02),c
	ld (ix+#03),b
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld (ix+#04),l
	ld (ix+#05),h
.l48ad
	ld l,(ix+#04)
	ld h,(ix+#05)
	dec hl
	ld (ix+#04),l
	ld (ix+#05),h
	push ix
	pop iy
	ld d,#02
	ld c,#00
.l48c2
	ld a,(iy+#0c)
	or a
	jr z,l48cf
	dec a
	ld (iy+#0c),a
	inc c
	jr l48f0
.l48cf
	ld a,(iy+#0e)
	or a
	jr z,l48eb
	dec a
	ld (iy+#0e),a
	ld a,(ix+#2a)
	add (iy+#1b)
	ld (ix+#2a),a
	ld a,(iy+#20)
	ld (iy+#0c),a
	inc c
	jr l48f0
.l48eb
	inc iy
	dec d
	jr nz,l48c2
.l48f0
	ld a,c
	or a
	jr nz,l48fb
	bit 0,(ix+#2d)
	call nz,l49e2
.l48fb
	push ix
	pop iy
	ld d,#03
	ld c,#00
.l4903
	ld a,(iy+#10)
	or a
	jr z,l4910
	dec a
	ld (iy+#10),a
	inc c
	jr l495b
.l4910
	ld a,(iy+#13)
	or a
	jr z,l4956
	dec a
	ld (iy+#13),a
	ld a,(iy+#1d)
	or a
	jp p,l493a
	ld a,(iy+#1d)
	cpl
	inc a
	ld e,a
	ld a,(ix+#2b)
	sub e
	ld (ix+#2b),a
	ld a,(ix+#2c)
	sbc #00
	and #0f
	ld (ix+#2c),a
	jr l494d
.l493a
	ld a,(ix+#2b)
	add (iy+#1d)
	ld (ix+#2b),a
	ld a,(ix+#2c)
	adc #00
	and #0f
	ld (ix+#2c),a
.l494d
	ld a,(iy+#22)
	ld (iy+#10),a
	inc c
	jr l495b
.l4956
	inc iy
	dec d
	jr nz,l4903
.l495b
	ld a,c
	or a
	jr nz,l4966
	bit 1,(ix+#2d)
	call nz,l49fa
.l4966
	pop bc
	pop de
	pop hl
	ld a,(ix+#09)
	add (ix+#2a)
	and #0f
	ld (hl),a
	ld a,(ix+#0a)
	add (ix+#2b)
	ld (de),a
	inc de
	ld a,(ix+#0b)
	adc (ix+#2c)
	ld (de),a
	inc de
	push de
	ld de,#002e
	add ix,de
	pop de
	pop af
	inc a
	inc hl
	dec b
	jp nz,l4842
	ld iy,l4dba
	ld d,#02
	ld c,#00
.l4998
	ld a,(iy+#00)
	or a
	jr z,l49a5
	dec a
	ld (iy+#00),a
	inc c
	jr l49c6
.l49a5
	ld a,(iy+#02)
	or a
	jr z,l49c1
	dec a
	ld (iy+#02),a
	ld a,(l4dc6)
	add (iy+#06)
	ld (l4dc6),a
	ld a,(iy+#08)
	ld (iy+#00),a
	inc c
	jr l49c6
.l49c1
	inc iy
	dec d
	jr nz,l4998
.l49c6
	ld a,c
	or a
	jr nz,l49d2
	ld a,(l4dc4)
	bit 2,a
	call nz,l4a12
.l49d2
	ld a,(l4dc5)
	ld e,a
	ld a,(l4dc6)
	add e
	ld (l4d2b),a
	call l4c12
	pop af
	ret
.l49e2
	push ix
	ld d,#02
.l49e6
	ld a,(ix+#20)
	ld (ix+#0c),a
	ld a,(ix+#16)
	ld (ix+#0e),a
	inc ix
	dec d
	jr nz,l49e6
	pop ix
	ret
.l49fa
	ld d,#03
	push ix
.l49fe
	ld a,(ix+#22)
	ld (ix+#10),a
	ld a,(ix+#18)
	ld (ix+#13),a
	inc ix
	dec d
	jr nz,l49fe
	pop ix
	ret
.l4a12
	ld d,#02
	push iy
	ld iy,l4dba
.l4a1a
	ld a,(iy+#08)
	ld (iy+#00),a
	ld a,(iy+#04)
	ld (iy+#02),a
	inc iy
	dec d
	jr nz,l4a1a
	pop iy
	ret
	inc bc
	ld a,(bc)
	ld (ix+#09),a
	inc bc
	jp l4861
	inc bc
	ld a,(bc)
	ld de,(l4d24)
	ld d,#00
	call l4bd6
	ld (ix+#06),l
	ld (ix+#07),h
	inc bc
	jp l4861
	inc bc
	ld a,(bc)
	and #09
	ld (ix+#08),a
	inc bc
	jp l4861
	push ix
	pop hl
	xor a
	ld b,#2e
.l4a5d
	ld (hl),a
	inc hl
	djnz l4a5d
	ld a,(l4d23)
	ld hl,l4dc7
	xor (hl)
	jp nz,l4966
	ld hl,l4dba
	ld de,l4dbb
	ld bc,#000a
	ld (hl),a
	ldir
	inc de
	ld (de),a
	jp l4966
	inc bc
	ld a,(bc)
	push bc
	ld de,#0010
	call l4bd6
	ld bc,#0bb8
	push hl
	pop de
	call l4beb
	ld a,c
	ld (l4d24),a
	pop bc
	inc bc
	jp l4861
	inc bc
	ld a,(bc)
	push af
	and #1f
	ld (l4dc5),a
	call l4a12
	pop af
	inc bc
	or a
	jp m,l4861
	jp l4883
	inc bc
	jp l489b
.l4aae
	ld c,(ix+#00)
	ld b,(ix+#01)
	ld (ix+#02),c
	ld (ix+#03),b
	jp l4861
	inc bc
	ld a,(bc)
	inc bc
	ld de,#0000
.l4ac3
	push af
	ld a,(bc)
	push de
	ld de,(l4d24)
	ld d,#00
	call l4bd6
	pop de
	add hl,de
	ex de,hl
	inc bc
	pop af
	dec a
	jr nz,l4ac3
	ld (ix+#06),l
	ld (ix+#07),h
	jp l4861
	inc bc
	ld a,(bc)
	ld e,a
	or (ix+#2d)
	ld (ix+#2d),a
	ld a,(l4dc4)
	or e
	ld (l4dc4),a
	inc bc
	jp l4861
	inc bc
	res 0,(ix+#2d)
	res 1,(ix+#2d)
	ld a,(bc)
	ld de,#000f
	call l4bd6
	ld de,l4dd1
	add hl,de
	push ix
	ld d,#0f
.l4b0c
	ld a,(hl)
	ld (ix+#16),a
	inc hl
	inc ix
	dec d
	jp nz,l4b0c
	pop ix
	inc bc
	ld (ix+#0c),#00
	ld (ix+#0d),#00
	ld (ix+#10),#00
	ld (ix+#11),#00
	ld (ix+#12),#00
	ld (ix+#2a),#00
	ld (ix+#2b),#00
	ld (ix+#2c),#00
	jp l4861
	inc bc
	ld a,(l4dc4)
	res 2,a
	ld (l4dc4),a
	ld a,(bc)
	ld de,#0006
	call l4bd6
	ld de,l4e2b
	add hl,de
	ld iy,l4dba
	ld (iy+#00),#00
	ld (iy+#01),#00
	ld d,#06
.l4b5f
	ld a,(hl)
	ld (iy+#04),a
	inc hl
	inc iy
	dec d
	jr nz,l4b5f
	xor a
	ld (l4dc6),a
	inc bc
	ld a,(l4d23)
	ld (l4dc7),a
	jp l4861
.l4b77
	push de
	cpl
	ld e,a
	ld d,#09
	ld a,(l4d23)
.l4b7f
	dec a
	jp m,l4b8a
	scf
	rl e
	sla d
	jr l4b7f
.l4b8a
	ld a,(l4d2c)
	or d
	and e
	ld (l4d2c),a
	pop de
	ret
	ld a,(l4d23)
	inc bc
	add a
	ld l,a
	ld h,#00
	ld a,(bc)
	inc bc
	ld de,l4dc8
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	ld hl,l4e37
	call l4c05
	ld b,h
	ld c,l
	jp l4861
	ld a,(l4d23)
	add a
	ld l,a
	ld h,#00
	ld de,l4dc8
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	jp l4861
	inc bc
	call l4bcb
	ld a,(bc)
	inc bc
	ld (hl),a
	jp l4861
.l4bcb
	ld a,(l4d23)
	ld l,a
	ld h,#00
	ld de,l4dce
	add hl,de
	ret
.l4bd6
	ld hl,#0000
	and a
	ret z
	push bc
	ld b,#08
.l4bde
	srl a
	jr nc,l4be3
	add hl,de
.l4be3
	sla e
	rl d
	djnz l4bde
	pop bc
	ret
.l4beb
	push af
	ld hl,#0000
	ld a,b
	ld b,#10
.l4bf2
	rl c
	rla
	adc hl,hl
	sbc hl,de
	jr nc,l4bfc
	add hl,de
.l4bfc
	ccf
	djnz l4bf2
	rl c
	rla
	ld b,a
	pop af
	ret
.l4c05
	push af
	add a
	add l
	ld l,a
	jr nc,l4c0c
	inc h
.l4c0c
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	pop af
	ret
.l4c12
	ld b,#f7
	ld c,#82
	out (c),c
	ld hl,l4d25
	ld a,#00
	ld d,#0b
.l4c1f
	push af
	ld c,(hl)
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
	inc a
	inc hl
	dec d
	jr nz,l4c1f
	ret
.l4c45
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
.l4d05
	dw #4a2e,#4a4c,l4aae,#4a37
	dw #4aaa,#4a7c,#4abd,#4af4
	dw #4a96,#4b3d,#4ae0,#4a57
	dw #4b94,#4bb0,#4bc1
.l4d25 equ $ + 2
.l4d24 equ $ + 1
.l4d23
	db #b4,#4b,#c5,#4b,#00,#19,#00,#18
.l4d30 equ $ + 5
.l4d2d equ $ + 2
.l4d2c equ $ + 1
.l4d2b
	db #00,#16,#00,#15,#00,#14,#00,#13
	db #00,#12,#00,#11,#00,#10,#00,#63
	db #4a,#81,#4a,#e3,#4a,#6c,#4a,#df
	db #4a,#b1,#4a,#f2,#4a,#29,#4b,#cb
	db #4a,#72,#4b,#15,#4b,#8c,#4a,#c9
	db #4b,#e5,#4b,#f6,#4b,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4dba equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4dbb
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4dc8 equ $ + 5
.l4dc7 equ $ + 4
.l4dc6 equ $ + 3
.l4dc5 equ $ + 2
.l4dc4 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4dd1 equ $ + 6
.l4dce equ $ + 3
	db #00,#00,#00,#00,#00,#00,#07,#00
	db #00,#00,#00,#fe,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#0a,#00,#00
	db #00,#00,#ff,#00,#00,#00,#00,#01
	db #00,#00,#00,#00,#06,#00,#1e,#00
	db #00,#fe,#00,#e2,#00,#00,#01,#00
	db #01,#00,#00,#01,#01,#00,#00,#00
	db #04,#fc,#00,#00,#00,#01,#01,#00
	db #00,#00,#01,#01,#01,#01,#00,#04
	db #fc,#03,#fd,#00,#01,#01,#01,#01
	db #00,#01,#01,#14,#01,#00,#00,#f1
	db #00,#00,#00,#03,#01,#00,#00,#00
.l4e2b
	db #0a,#00,#03,#00,#01,#00,#1e,#00
.l4e37 equ $ + 4
	db #f7,#00,#01,#00,#61,#4e,#9b,#4e
	db #e8,#4e,#69,#4f,#0b,#50,#45,#50
	db #64,#50,#8b,#50,#b4,#50,#eb,#50
	db #06,#51,#61,#4e,#75,#4e,#23,#51
	db #61,#4e,#61,#4e,#61,#4e,#61,#4e
	db #61,#4e,#61,#4e,#61,#4e,#87,#00
	db #80,#0f,#81,#01,#83,#18,#00,#87
	db #01,#81,#08,#80,#0c,#89,#00,#88
	db #00,#8d,#8e,#0c,#87,#02,#81,#01
	db #80,#0d,#83,#03,#81,#09,#1c,#1c
	db #83,#06,#83,#06,#1c,#81,#01,#1c
	db #1c,#83,#0c,#81,#09,#13,#81,#01
	db #83,#06,#13,#13,#8d,#8e,#00,#8d
	db #87,#01,#8a,#00,#81,#01,#80,#0f
	db #83,#18,#15,#83,#12,#21,#83,#0c
	db #1f,#83,#06,#1f,#83,#0c,#1c,#1a
	db #18,#83,#18,#11,#83,#12,#1d,#83
	db #0c,#1f,#83,#06,#1f,#83,#0c,#1c
	db #1f,#21,#83,#18,#15,#83,#12,#21
	db #83,#0c,#1f,#83,#06,#1f,#83,#0c
	db #1c,#1a,#18,#11,#18,#1d,#83,#06
	db #24,#83,#0c,#13,#83,#06,#13,#83
	db #0c,#1a,#1f,#26,#8d,#87,#01,#8a
	db #00,#81,#01,#80,#0e,#83,#01,#21
	db #24,#28,#83,#09,#84,#83,#01,#21
	db #24,#28,#83,#09,#84,#83,#01,#1f
	db #24,#28,#83,#0f,#84,#83,#01,#21
	db #24,#28,#83,#03,#84,#83,#01,#21
	db #24,#28,#83,#09,#84,#83,#01,#21
	db #24,#28,#83,#09,#84,#83,#01,#1f
	db #24,#28,#83,#15,#84,#83,#01,#21
	db #24,#29,#83,#09,#84,#83,#01,#21
	db #24,#29,#83,#09,#84,#83,#01,#21
	db #26,#29,#83,#03,#84,#83,#01,#21
	db #26,#29,#83,#09,#84,#83,#01,#21
	db #24,#29,#83,#03,#84,#83,#01,#23
	db #26,#2b,#83,#09,#84,#83,#01,#23
	db #26,#2b,#83,#09,#84,#83,#01,#23
	db #28,#2b,#83,#15,#84,#8d,#80,#0a
	db #87,#04,#8a,#02,#81,#01,#83,#0c
	db #21,#87,#03,#8a,#00,#81,#01,#83
	db #06,#24,#84,#23,#84,#21,#87,#04
	db #8a,#02,#81,#01,#83,#0c,#1c,#83
	db #2a,#84,#83,#0c,#1d,#87,#03,#8a
	db #00,#81,#01,#83,#06,#21,#84,#24
	db #84,#28,#83,#0c,#26,#83,#06,#24
	db #84,#87,#04,#8a,#02,#81,#01,#83
	db #1e,#23,#87,#04,#8a,#02,#81,#01
	db #83,#0c,#21,#87,#03,#8a,#00,#81
	db #01,#83,#06,#24,#84,#23,#84,#21
	db #87,#04,#8a,#02,#81,#01,#83,#0c
	db #1c,#83,#2a,#84,#83,#0c,#1d,#87
	db #03,#8a,#00,#81,#01,#83,#06,#21
	db #84,#24,#84,#28,#87,#04,#8a,#02
	db #81,#01,#83,#1e,#26,#87,#00,#80
	db #0c,#8a,#00,#81,#01,#83,#01,#2b
	db #2a,#29,#28,#27,#26,#25,#24,#23
	db #22,#21,#20,#1f,#1e,#1d,#1c,#1b
	db #1a,#19,#18,#17,#16,#15,#14,#8d
	db #87,#03,#8a,#00,#81,#01,#80,#0a
	db #83,#06,#84,#84,#8e,#18,#2d,#84
	db #87,#04,#8a,#02,#81,#01,#83,#12
	db #2d,#87,#03,#8a,#00,#81,#01,#83
	db #06,#2b,#2d,#2b,#28,#84,#87,#04
	db #8a,#02,#81,#01,#83,#0c,#28,#87
	db #03,#8a,#00,#81,#01,#83,#06,#24
	db #84,#8d,#87,#04,#8a,#02,#81,#01
	db #83,#12,#26,#87,#03,#8a,#00,#81
	db #01,#83,#06,#26,#84,#84,#24,#84
	db #26,#24,#21,#84,#26,#24,#21,#21
	db #8d,#87,#04,#8a,#02,#81,#01,#83
	db #12,#26,#87,#03,#8a,#00,#81,#01
	db #83,#06,#24,#84,#26,#84,#27,#87
	db #00,#8a,#00,#81,#01,#80,#0f,#28
	db #84,#28,#84,#2b,#84,#28,#2d,#8d
	db #87,#03,#8a,#00,#81,#01,#80,#0a
	db #83,#06,#84,#84,#24,#84,#23,#87
	db #04,#8a,#02,#81,#01,#83,#12,#21
	db #87,#03,#8a,#00,#81,#01,#83,#06
	db #24,#84,#23,#21,#84,#84,#1f,#20
	db #8d,#87,#03,#8a,#00,#81,#01,#83
	db #06,#21,#84,#28,#84,#87,#04,#8a
	db #02,#81,#01,#83,#0c,#26,#87,#03
	db #8a,#00,#81,#01,#83,#06,#24,#26
	db #84,#24,#84,#21,#87,#04,#8a,#02
	db #81,#01,#83,#0c,#26,#87,#03,#8a
	db #00,#81,#01,#83,#06,#28,#84,#8d
	db #87,#00,#8a,#00,#81,#01,#80,#0f
	db #83,#06,#21,#26,#22,#27,#23,#28
	db #2b,#2d,#84,#84,#84,#84,#21,#84
	db #84,#84,#8d,#87,#05,#89,#01,#80
	db #0f,#8a,#00,#81,#08,#88,#50,#50
	db #50,#50,#88,#51,#51,#51,#51,#50
	db #84,#50,#84,#50,#50,#84,#84,#8d
	db #87,#00,#80,#0f,#81,#01,#83,#06
	db #0c,#0c,#83,#0c,#0c,#87,#01,#81
	db #08,#80,#0c,#89,#00,#88,#00,#87
.l5142 equ $ + 7
	db #00,#80,#0f,#81,#01,#0c,#8d,#85
	db #64,#8e,#03,#83,#c0,#84,#84,#8c
	db #01,#8c,#01,#8c,#01,#8c,#01,#8e
	db #0f,#8c,#01,#8c,#02,#8c,#02,#8c
	db #01,#8c,#02,#8c,#02,#8c,#02,#8c
	db #02,#8e,#1b,#8c,#03,#8e,#27,#8c
.l516d equ $ + 2
	db #03,#82,#85,#64,#8e,#00,#8c,#00
	db #8c,#0d,#8c,#0d,#8c,#0d,#8c,#00
.l5182 equ $ + 7
	db #8c,#0d,#8c,#00,#8c,#0c,#82,#85
	db #64,#8e,#0f,#83,#c0,#84,#84,#84
	db #84,#8c,#01,#8e,#16,#8c,#01,#8e
	db #0f,#8c,#02,#8c,#02,#8c,#02,#8c
	db #02,#8e,#1b,#8c,#03,#8c,#03,#8c
	db #01,#8e,#16,#8c,#01,#8e,#0f,#8c
	db #03,#8e,#1b,#8c,#03,#82,#85,#64
	db #81,#08,#80,#0e,#87,#0d,#83,#01
	db #28,#80,#0f,#81,#01,#83,#14,#1e
	db #81,#08,#83,#01,#28,#8b,#85,#64
	db #83,#0a,#81,#01,#80,#07,#87,#08
	db #4b,#8b,#85,#64,#83,#0a,#81,#08
	db #80,#0a,#89,#00,#88,#46,#8b,#85
	db #64,#81,#09,#87,#0d,#80,#0c,#83
	db #01,#19,#81,#01,#83,#02,#1e,#8b
	db #85,#64,#81,#01,#80,#06,#87,#0f
	db #8a,#02,#8e,#00,#83,#0c,#46,#82
	db #85,#64,#83,#01,#81,#08,#80,#0f
	db #88,#19,#83,#0a,#80,#0a,#87,#00
	db #88,#1f,#8e,#00,#85,#64,#83,#04
	db #81,#01,#80,#0e,#87,#0e,#18,#8b
	db #85,#64,#8e,#07,#8c,#0b,#8b,#85
	db #64,#8e,#00,#8c,#0b,#8b,#85,#64
	db #8e,#00,#8c,#00,#8c,#0c,#8b,#85
	db #64,#81,#01,#80,#0d,#87,#00,#83
	db #08,#8e,#30,#07,#83,#04,#04,#09
	db #83,#08,#07,#04,#83,#04,#07,#07
	db #04,#09,#83,#08,#07,#04,#8b,#85
	db #64,#81,#01,#80,#0d,#87,#00,#83
	db #04,#8e,#0c,#0c,#13,#18,#10,#00
	db #07,#0c,#10,#00,#0c,#13,#07,#00
	db #07,#0c,#84,#8b,#85,#64,#81,#01
	db #87,#0c,#83,#0a,#80,#02,#3c,#8b
	db #85,#64,#83,#01,#81,#01,#80,#0c
	db #87,#0d,#32,#3c,#46,#8b,#85,#64
	db #83,#02,#81,#01,#80,#0e,#87,#07
	db #23,#84,#28,#84,#2c,#84,#83,#08
	db #2f,#83,#02,#28,#84,#83,#10,#2f
	db #8b
;
.stop_music		; modified by Megachur
.l52ac
;
	ld de,#0000
	xor a
	call l4815
	ld de,#0000
	ld a,#01
	call l4815
	ld de,#0000
	ld a,#02
	jp l4815
;
.music_info
	db "Perico Delgado Maillot Amarillo (1989)(Topo Soft)(Cesar Astudillo)",0
	db "",0

	read "music_end.asm"
