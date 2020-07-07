; Music of Coliseum (1988)(Topo Soft)()()
; Ripped by Megachur the 09/07/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "COLISEUM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #8af0

	read "music_header.asm"

;
.init_music
.l8af0
;
	di
	ld a,#00
	ld de,l92fe
	call l8b51
	inc a
	ld de,l9361
	call l8b51
	inc a
	ld de,l938e
	call l8b51
	ld a,#01
	ld (l8b2c),a
	ret
	di
	xor a
	ld de,#0000
	push de
	call l8b51
	pop de
	inc a
	push de
	call l8b51
	pop de
	inc a
	call l8b51
	ld a,#01
	ld (l8b2c),a
	ei
	halt
	ret
.l8b29	; interrupt play
	di
	push af
.l8b2c equ $ + 1
	ld a,#01
	dec a
	ld (l8b2c),a
	jr nz,l8b4d
	push ix
	push iy
	push hl
	push de
	push bc
	ex af,af'
	push af
	ld a,#06
	ld (l8b2c),a
	call l8b70	; play
	pop af
	ex af,af'
	pop bc
	pop de
	pop hl
	pop iy
	pop ix
.l8b4d
	pop af
	ei
	reti
.l8b51
	push af
	push de
	ld de,#002e
	call l8f12
	ld de,l906c
	add hl,de
	push hl
	xor a
	ld b,#2e
.l8b61
	ld (hl),a
	inc hl
	djnz l8b61
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
.l8b70
;
	push af
	ld b,#03
	xor a
	ld ix,l906c
	ld de,l9061
	ld hl,l9069
.l8b7e
	push af
	push hl
	push de
	push bc
	ld (l905f),a
	ld a,(ix+#04)
	or (ix+#05)
	jp nz,l8be9
	xor a
	call l8eb3
	ld c,(ix+#02)
	ld b,(ix+#03)
	ld a,b
	or c
	jp z,l8ca2
.l8b9d
	ld a,(bc)
	cp #80
	jp c,l8bac
	sub #80
	ld hl,l9041
	call l8f41
	jp (hl)
.l8bac
	push af
	call l8f07
	pop af
	add (hl)
	ld hl,l8f81
	call l8f41
	ld (ix+#0a),l
	ld (ix+#0b),h
	inc bc
.l8bbf
	ld a,(ix+#08)
	call l8eb3
	call l8d1e
	ld (ix+#2a),#00
	call l8d36
	ld (ix+#2b),#00
	ld (ix+#2c),#00
.l8bd7
	ld (ix+#02),c
	ld (ix+#03),b
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld (ix+#04),l
	ld (ix+#05),h
.l8be9
	ld l,(ix+#04)
	ld h,(ix+#05)
	dec hl
	ld (ix+#04),l
	ld (ix+#05),h
	push ix
	pop iy
	ld d,#02
	ld c,#00
.l8bfe
	ld a,(iy+#0c)
	or a
	jr z,l8c0b
	dec a
	ld (iy+#0c),a
	inc c
	jr l8c2c
.l8c0b
	ld a,(iy+#0e)
	or a
	jr z,l8c27
	dec a
	ld (iy+#0e),a
	ld a,(ix+#2a)
	add (iy+#1b)
	ld (ix+#2a),a
	ld a,(iy+#20)
	ld (iy+#0c),a
	inc c
	jr l8c2c
.l8c27
	inc iy
	dec d
	jr nz,l8bfe
.l8c2c
	ld a,c
	or a
	jr nz,l8c37
	bit 0,(ix+#2d)
	call nz,l8d1e
.l8c37
	push ix
	pop iy
	ld d,#03
	ld c,#00
.l8c3f
	ld a,(iy+#10)
	or a
	jr z,l8c4c
	dec a
	ld (iy+#10),a
	inc c
	jr l8c97
.l8c4c
	ld a,(iy+#13)
	or a
	jr z,l8c92
	dec a
	ld (iy+#13),a
	ld a,(iy+#1d)
	or a
	jp p,l8c76
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
	jr l8c89
.l8c76
	ld a,(ix+#2b)
	add (iy+#1d)
	ld (ix+#2b),a
	ld a,(ix+#2c)
	adc #00
	and #0f
	ld (ix+#2c),a
.l8c89
	ld a,(iy+#22)
	ld (iy+#10),a
	inc c
	jr l8c97
.l8c92
	inc iy
	dec d
	jr nz,l8c3f
.l8c97
	ld a,c
	or a
	jr nz,l8ca2
	bit 1,(ix+#2d)
	call nz,l8d36
.l8ca2
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
	jp nz,l8b7e
	ld iy,l90f6
	ld d,#02
	ld c,#00
.l8cd4
	ld a,(iy+#00)
	or a
	jr z,l8ce1
	dec a
	ld (iy+#00),a
	inc c
	jr l8d02
.l8ce1
	ld a,(iy+#02)
	or a
	jr z,l8cfd
	dec a
	ld (iy+#02),a
	ld a,(l9102)
	add (iy+#06)
	ld (l9102),a
	ld a,(iy+#08)
	ld (iy+#00),a
	inc c
	jr l8d02
.l8cfd
	inc iy
	dec d
	jr nz,l8cd4
.l8d02
	ld a,c
	or a
	jr nz,l8d0e
	ld a,(l9100)
	bit 2,a
	call nz,l8d4e
.l8d0e
	ld a,(l9101)
	ld e,a
	ld a,(l9102)
	add e
	ld (l9067),a
	call l8f4e
	pop af
	ret
.l8d1e
	push ix
	ld d,#02
.l8d22
	ld a,(ix+#20)
	ld (ix+#0c),a
	ld a,(ix+#16)
	ld (ix+#0e),a
	inc ix
	dec d
	jr nz,l8d22
	pop ix
	ret
.l8d36
	ld d,#03
	push ix
.l8d3a
	ld a,(ix+#22)
	ld (ix+#10),a
	ld a,(ix+#18)
	ld (ix+#13),a
	inc ix
	dec d
	jr nz,l8d3a
	pop ix
	ret
.l8d4e
	ld d,#02
	push iy
	ld iy,l90f6
.l8d56
	ld a,(iy+#08)
	ld (iy+#00),a
	ld a,(iy+#04)
	ld (iy+#02),a
	inc iy
	dec d
	jr nz,l8d56
	pop iy
	ret
.l8d6a
	inc bc
	ld a,(bc)
	ld (ix+#09),a
	inc bc
	jp l8b9d
.l8d73
	inc bc
	ld a,(bc)
	ld de,(l9060)
	ld d,#00
	call l8f12
	ld (ix+#06),l
	ld (ix+#07),h
	inc bc
	jp l8b9d
.l8d88
	inc bc
	ld a,(bc)
	and #09
	ld (ix+#08),a
	inc bc
	jp l8b9d
.l8d93
	push ix
	pop hl
	xor a
	ld b,#2e
.l8d99
	ld (hl),a
	inc hl
	djnz l8d99
	ld a,(l905f)
	ld hl,l9103
	xor (hl)
	jp nz,l8ca2
	ld hl,l90f6
	ld de,l90f7
	ld bc,#000a
	ld (hl),a
	ldir
	inc de
	ld (de),a
	jp l8ca2
.l8db8
	inc bc
	ld a,(bc)
	push bc
	ld de,#0010
	call l8f12
	ld bc,#0bb8
	push hl
	pop de
	call l8f27
	ld a,c
	ld (l9060),a
	pop bc
	inc bc
	jp l8b9d
.l8dd2
	inc bc
	ld a,(bc)
	push af
	and #1f
	ld (l9101),a
	call l8d4e
	pop af
	inc bc
	or a
	jp m,l8b9d
	jp l8bbf
.l8de6
	inc bc
	jp l8bd7
.l8dea
	ld c,(ix+#00)
	ld b,(ix+#01)
	ld (ix+#02),c
	ld (ix+#03),b
	jp l8b9d
.l8df9
	inc bc
	ld a,(bc)
	inc bc
	ld de,#0000
.l8dff
	push af
	ld a,(bc)
	push de
	ld de,(l9060)
	ld d,#00
	call l8f12
	pop de
	add hl,de
	ex de,hl
	inc bc
	pop af
	dec a
	jr nz,l8dff
	ld (ix+#06),l
	ld (ix+#07),h
	jp l8b9d
.l8e1c
	inc bc
	ld a,(bc)
	ld e,a
	or (ix+#2d)
	ld (ix+#2d),a
	ld a,(l9100)
	or e
	ld (l9100),a
	inc bc
	jp l8b9d
.l8e30
	inc bc
	res 0,(ix+#2d)
	res 1,(ix+#2d)
	ld a,(bc)
	ld de,#000f
	call l8f12
	ld de,l910d
	add hl,de
	push ix
	ld d,#0f
.l8e48
	ld a,(hl)
	ld (ix+#16),a
	inc hl
	inc ix
	dec d
	jp nz,l8e48
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
	jp l8b9d
.l8e79
	inc bc
	ld a,(l9100)
	res 2,a
	ld (l9100),a
	ld a,(bc)
	ld de,#0006
	call l8f12
	ld de,l91a3
	add hl,de
	ld iy,l90f6
	ld (iy+#00),#00
	ld (iy+#01),#00
	ld d,#06
.l8e9b
	ld a,(hl)
	ld (iy+#04),a
	inc hl
	inc iy
	dec d
	jr nz,l8e9b
	xor a
	ld (l9102),a
	inc bc
	ld a,(l905f)
	ld (l9103),a
	jp l8b9d
.l8eb3
	push de
	cpl
	ld e,a
	ld d,#09
	ld a,(l905f)
.l8ebb
	dec a
	jp m,l8ec6
	scf
	rl e
	sla d
	jr l8ebb
.l8ec6
	ld a,(l9068)
	or d
	and e
	ld (l9068),a
	pop de
	ret
.l8ed0
	ld a,(l905f)
	inc bc
	add a
	ld l,a
	ld h,#00
	ld a,(bc)
	inc bc
	ld de,l9104
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	ld hl,l91af
	call l8f41
	ld b,h
	ld c,l
	jp l8b9d
.l8eec
	ld a,(l905f)
	add a
	ld l,a
	ld h,#00
	ld de,l9104
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	jp l8b9d
.l8efd
	inc bc
	call l8f07
	ld a,(bc)
	inc bc
	ld (hl),a
	jp l8b9d
.l8f07
	ld a,(l905f)
	ld l,a
	ld h,#00
	ld de,l910a
	add hl,de
	ret
.l8f12
	ld hl,#0000
	and a
	ret z
	push bc
	ld b,#08
.l8f1a
	srl a
	jr nc,l8f1f
	add hl,de
.l8f1f
	sla e
	rl d
	djnz l8f1a
	pop bc
	ret
.l8f27
	push af
	ld hl,#0000
	ld a,b
	ld b,#10
.l8f2e
	rl c
	rla
	adc hl,hl
	sbc hl,de
	jr nc,l8f38
	add hl,de
.l8f38
	ccf
	djnz l8f2e
	rl c
	rla
	ld b,a
	pop af
	ret
.l8f41
	push af
	add a
	add l
	ld l,a
	jr nc,l8f48
	inc h
.l8f48
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	pop af
	ret
.l8f4e
	ld b,#f7
	ld c,#82
	out (c),c
	ld hl,l9061
	ld a,#00
	ld d,#0b
.l8f5b
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
	jr nz,l8f5b
	ret
.l8f81
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
.l9041
	dw l8d6a,l8d88,l8dea,l8d73
	dw l8de6,l8db8,l8df9,l8e30
	dw l8dd2,l8e79,l8e1c,l8d93
	dw l8ed0,l8eec,l8efd
.l9061 equ $ + 2
.l9060 equ $ + 1
.l905f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l906c equ $ + 5
.l9069 equ $ + 2
.l9068 equ $ + 1
.l9067
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l90f6 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l90f7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9104 equ $ + 5
.l9103 equ $ + 4
.l9102 equ $ + 3
.l9101 equ $ + 2
.l9100 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l910d equ $ + 6
.l910a equ $ + 3
	db #00,#00,#00,#00,#00,#00,#0a,#00
	db #00,#00,#00,#ff,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#0a,#00,#00
	db #00,#00,#ff,#00,#00,#00,#00,#0c
	db #00,#00,#00,#00,#06,#00,#1e,#00
	db #00,#fe,#00,#e2,#00,#00,#01,#00
	db #01,#00,#00,#01,#01,#00,#00,#00
	db #04,#fc,#00,#00,#00,#01,#01,#00
	db #00,#00,#01,#01,#01,#01,#00,#04
	db #fc,#02,#fe,#00,#01,#01,#01,#01
	db #00,#01,#01,#14,#01,#00,#00,#f1
	db #00,#00,#00,#03,#01,#00,#00,#00
	db #07,#00,#01,#01,#00,#fe,#00,#01
	db #ff,#00,#01,#00,#00,#00,#00,#01
	db #01,#01,#01,#00,#02,#fc,#02,#fe
	db #00,#01,#01,#01,#01,#00,#08,#08
	db #01,#01,#00,#01,#ff,#fc,#04,#00
	db #02,#02,#01,#01,#00,#01,#01,#00
	db #00,#00,#fe,#02,#00,#00,#00,#01
.l91a3 equ $ + 4
	db #01,#00,#00,#00,#0a,#00,#03,#00
	db #01,#00,#1e,#00,#f7,#00
.l91af equ $ + 2
	dw #0001,l91d9,l9230,l9243
	dw l926e,l92b7,l91d9,l91d9
	dw l91d9,l91d9,l91d9,l91d9
	dw l91d9,l91d9,l91d9,l91d9
	dw l91d9,l91d9,l91d9,l91d9
	dw l91d9,l91d9
.l91d9
	db #87,#00,#8a,#00,#81,#01,#80,#0e
	db #83,#15,#18,#87,#06,#80,#0c,#81
	db #01,#83,#07,#18,#18,#18,#87,#00
	db #8a,#00,#81,#01,#80,#0e,#83,#15
	db #18,#87,#06,#80,#0c,#81,#01,#83
	db #07,#18,#18,#18,#87,#00,#8a,#00
	db #81,#01,#80,#0e,#83,#15,#18,#87
	db #06,#80,#0c,#81,#01,#83,#07,#18
	db #18,#18,#80,#0e,#83,#07,#18,#87
	db #06,#80,#0c,#81,#01,#18,#18,#80
.l9230 equ $ + 7
	db #0e,#16,#80,#0c,#16,#16,#8d,#87
	db #00,#8a,#00,#81,#01,#80,#0f,#83
	db #15,#0c,#13,#0c,#13,#0c,#13,#18
.l9243 equ $ + 2
	db #13,#8d,#87,#01,#8a,#00,#81,#01
	db #80,#0d,#83,#7e,#1f,#83,#15,#22
	db #1d,#83,#7e,#1f,#83,#15,#24,#1f
	db #83,#93,#22,#83,#07,#21,#22,#1d
	db #83,#7e,#1f,#83,#15,#24,#83,#0e
.l926e equ $ + 5
	db #22,#83,#07,#26,#8d,#83,#15,#18
	db #1f,#1d,#83,#0e,#22,#83,#07,#1d
	db #83,#15,#1f,#83,#2a,#18,#83,#07
	db #1f,#1d,#16,#83,#15,#83,#15,#18
	db #1f,#1d,#83,#0e,#22,#83,#07,#1d
	db #83,#3f,#1f,#83,#07,#24,#1f,#24
	db #83,#15,#22,#1d,#1a,#16,#22,#26
	db #24,#22,#24,#83,#0e,#22,#83,#07
	db #26,#83,#15,#24,#83,#0e,#22,#83
.l92b7 equ $ + 6
	db #07,#26,#83,#54,#24,#8d,#83,#03
	db #21,#23,#83,#0f,#21,#83,#03,#20
	db #21,#83,#0f,#20,#83,#07,#21,#23
	db #24,#23,#21,#20,#83,#03,#21,#23
	db #83,#0f,#21,#83,#03,#20,#21,#83
	db #0f,#20,#83,#07,#1d,#20,#1d,#83
	db #15,#1c,#83,#07,#1c,#21,#23,#24
	db #23,#21,#28,#29,#28,#24,#23,#21
	db #28,#21,#28,#27,#21,#20,#1d,#24
.l92fe equ $ + 5
	db #1c,#83,#15,#21,#8d,#85
	db #64,#8e,#07,#8c,#00,#8e,#07,#8c
	db #00,#8e,#05,#8c,#00,#8e,#07,#8c
	db #00,#8e,#07,#8c,#00,#8e,#07,#8c
	db #00,#8e,#05,#8c,#00,#8e,#07,#8c
	db #00,#8e,#07,#8c,#00,#8e,#07,#8c
	db #00,#8e,#05,#8c,#00,#8e,#07,#8c
	db #00,#8e,#07,#8c,#00,#8e,#07,#8c
	db #00,#8e,#05,#8c,#00,#8e,#07,#8c
	db #00,#8e,#07,#8c,#00,#8e,#07,#8c
	db #00,#8e,#05,#8c,#00,#8e,#07,#8c
	db #00,#8e,#10,#8c,#00,#8e,#10,#8c
	db #00,#8e,#10,#8c,#00,#8e,#10,#8c
.l9361 equ $ + 2
	db #00,#82,#85,#64,#8e,#07,#8c,#01
	db #8e,#07,#8c,#01,#8e,#05,#8c,#01
	db #8e,#07,#8c,#01,#8e,#07,#8c,#02
	db #8e,#13,#8c,#02,#8e,#07,#80,#0f
	db #8c,#03,#8e,#13,#80,#0d,#8c,#03
.l938e equ $ + 7
	db #8c,#04,#8e,#1f,#8c,#04,#82,#85
	db #64,#8e,#0e,#8c,#00,#8e,#0e,#8c
	db #00,#8e,#0c,#8c,#00,#8e,#0e,#8c
	db #00,#8e,#0e,#8c,#00,#8e,#0e,#8c
	db #00,#8e,#0c,#8c,#00,#8e,#0e,#8c
	db #00,#8e,#0e,#8c,#00,#8e,#0e,#8c
	db #00,#8e,#0c,#8c,#00,#8e,#0e,#8c
	db #00,#8e,#0e,#8c,#00,#8e,#0e,#8c
	db #00,#8e,#0c,#8c,#00,#8e,#0e,#8c
	db #00,#8e,#0e,#8c,#00,#8e,#0e,#8c
	db #00,#8e,#0c,#8c,#00,#8e,#0e,#8c
	db #00,#8e,#17,#8c,#00,#8e,#17,#8c
	db #00,#8e,#17,#8c,#00,#8e,#17,#8c
	db #00,#82,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#50,#f0,#f0,#f0,#f0,#f0
	db #f0
;
.music_info
	db "Coliseum (1988)(Topo Soft)()",0
	db "",0

	read "music_end.asm"
