; Music of La Espada Sagrada (1990)(Topo Soft)(TPM)()
; Ripped by Megachur the 06/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LAESPADS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #b079

	read "music_header.asm"

	di
	ld hl,lb0be
	call #b00b	; set music interrupt
	im 1
;
.init_music
;
	ld a,#00
	ld de,lb926
	call lb10e
	inc a
	ld de,lb93d
	call lb10e
	inc a
	ld de,lb978
	call lb10e
	ei
	ret
;
.stop_music
;
	ld a,#00
	ld de,#0000
	call lb10e
	inc a
	call lb10e
	inc a
	call lb10e
	ei
	nop		; halt	- modified by Megachur
	nop		; halt	- modified by Megachur
	nop		; halt	- modified by Megachur
	nop		; halt	- modified by Megachur
	nop		; halt	- modified by Megachur
	nop		; halt	- modified by Megachur
	nop		; di	- modified by Megachur
	ret
	db #8e,#0c,#8c,#00,#8e,#00,#8c,#02
	db #8c,#03,#82
;
.lb0be		; play music interrupt
;
	di
	push af
.lb0c1 equ $ + 1
	ld a,#01
	dec a
	ld (lb0c1),a
	jr nz,lb0de
	ld a,#06
	ld (lb0c1),a
	push bc
	push de
	push hl
	push ix
	push iy
	call lb12d
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
.lb0de
	pop af
	ei
	reti
	push af
	push de
	and #7f
	ld de,#002e
	call lb4cf
	ld de,lb629
	add hl,de
	push hl
	ld a,(hl)
	inc hl
	or (hl)
	jr z,lb108
	ld d,#03
	ld hl,lb629
	ld bc,#002e
.lb0fe
	inc hl
	ld a,(hl)
	dec hl
	or (hl)
	jr z,lb10b
	add hl,bc
	dec d
	jr nz,lb0fe
.lb108
	pop hl
	jr lb11a
.lb10b
	pop de
	jr lb11a
.lb10e
	push af
	push de
	ld de,#002e
	call lb4cf
	ld de,lb629
	add hl,de
.lb11a
	push hl
	xor a
	ld b,#2e
.lb11e
	ld (hl),a
	inc hl
	djnz lb11e
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
.lb12d
;
	push af
	ld b,#03
	xor a
	ld ix,lb629
	ld de,lb61e
	ld hl,lb626
.lb13b
	push af
	push hl
	push de
	push bc
	ld (lb61c),a
	ld a,(ix+#04)
	or (ix+#05)
	jp nz,lb1a6
	xor a
	call lb470
	ld c,(ix+#02)
	ld b,(ix+#03)
	ld a,b
	or c
	jp z,lb25f
.lb15a
	ld a,(bc)
	cp #80
	jp c,lb169
	sub #80
	ld hl,lb5fe
	call lb4fe
	jp (hl)
.lb169
	push af
	call lb4c4
	pop af
	add (hl)
	ld hl,lb53e
	call lb4fe
	ld (ix+#0a),l
	ld (ix+#0b),h
	inc bc
.lb17c
	ld a,(ix+#08)
	call lb470
	call lb2db
	ld (ix+#2a),#00
	call lb2f3
	ld (ix+#2b),#00
	ld (ix+#2c),#00
.lb194
	ld (ix+#02),c
	ld (ix+#03),b
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld (ix+#04),l
	ld (ix+#05),h
.lb1a6
	ld l,(ix+#04)
	ld h,(ix+#05)
	dec hl
	ld (ix+#04),l
	ld (ix+#05),h
	push ix
	pop iy
	ld d,#02
	ld c,#00
.lb1bb
	ld a,(iy+#0c)
	or a
	jr z,lb1c8
	dec a
	ld (iy+#0c),a
	inc c
	jr lb1e9
.lb1c8
	ld a,(iy+#0e)
	or a
	jr z,lb1e4
	dec a
	ld (iy+#0e),a
	ld a,(ix+#2a)
	add (iy+#1b)
	ld (ix+#2a),a
	ld a,(iy+#20)
	ld (iy+#0c),a
	inc c
	jr lb1e9
.lb1e4
	inc iy
	dec d
	jr nz,lb1bb
.lb1e9
	ld a,c
	or a
	jr nz,lb1f4
	bit 0,(ix+#2d)
	call nz,lb2db
.lb1f4
	push ix
	pop iy
	ld d,#03
	ld c,#00
.lb1fc
	ld a,(iy+#10)
	or a
	jr z,lb209
	dec a
	ld (iy+#10),a
	inc c
	jr lb254
.lb209
	ld a,(iy+#13)
	or a
	jr z,lb24f
	dec a
	ld (iy+#13),a
	ld a,(iy+#1d)
	or a
	jp p,lb233
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
	jr lb246
.lb233
	ld a,(ix+#2b)
	add (iy+#1d)
	ld (ix+#2b),a
	ld a,(ix+#2c)
	adc #00
	and #0f
	ld (ix+#2c),a
.lb246
	ld a,(iy+#22)
	ld (iy+#10),a
	inc c
	jr lb254
.lb24f
	inc iy
	dec d
	jr nz,lb1fc
.lb254
	ld a,c
	or a
	jr nz,lb25f
	bit 1,(ix+#2d)
	call nz,lb2f3
.lb25f
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
	jp nz,lb13b
	ld iy,lb6b3
	ld d,#02
	ld c,#00
.lb291
	ld a,(iy+#00)
	or a
	jr z,lb29e
	dec a
	ld (iy+#00),a
	inc c
	jr lb2bf
.lb29e
	ld a,(iy+#02)
	or a
	jr z,lb2ba
	dec a
	ld (iy+#02),a
	ld a,(lb6bf)
	add (iy+#06)
	ld (lb6bf),a
	ld a,(iy+#08)
	ld (iy+#00),a
	inc c
	jr lb2bf
.lb2ba
	inc iy
	dec d
	jr nz,lb291
.lb2bf
	ld a,c
	or a
	jr nz,lb2cb
	ld a,(lb6bd)
	bit 2,a
	call nz,lb30b
.lb2cb
	ld a,(lb6be)
	ld e,a
	ld a,(lb6bf)
	add e
	ld (lb624),a
	call lb50b
	pop af
	ret
.lb2db
	push ix
	ld d,#02
.lb2df
	ld a,(ix+#20)
	ld (ix+#0c),a
	ld a,(ix+#16)
	ld (ix+#0e),a
	inc ix
	dec d
	jr nz,lb2df
	pop ix
	ret
.lb2f3
	ld d,#03
	push ix
.lb2f7
	ld a,(ix+#22)
	ld (ix+#10),a
	ld a,(ix+#18)
	ld (ix+#13),a
	inc ix
	dec d
	jr nz,lb2f7
	pop ix
	ret
.lb30b
	ld d,#02
	push iy
	ld iy,lb6b3
.lb313
	ld a,(iy+#08)
	ld (iy+#00),a
	ld a,(iy+#04)
	ld (iy+#02),a
	inc iy
	dec d
	jr nz,lb313
	pop iy
	ret
.lb327
	inc bc
	ld a,(bc)
	ld (ix+#09),a
	inc bc
	jp lb15a
.lb330
	inc bc
	ld a,(bc)
	ld de,(lb61d)
	ld d,#00
	call lb4cf
	ld (ix+#06),l
	ld (ix+#07),h
	inc bc
	jp lb15a
.lb345
	inc bc
	ld a,(bc)
	and #09
	ld (ix+#08),a
	inc bc
	jp lb15a
.lb350
	push ix
	pop hl
	xor a
	ld b,#2e
.lb356
	ld (hl),a
	inc hl
	jr nz,lb356
	ld a,(lb61c)
	ld hl,lb6c0
	xor (hl)
	jp nz,lb25f
	ld hl,lb6b3
	ld de,lb6b4
	ld bc,#000a
	ld (hl),a
	ldir
	inc de
	ld (de),a
	jp lb25f
.lb375
	inc bc
	ld a,(bc)
	push bc
	ld de,#0010
	call lb4cf
	ld bc,#0bb8
	push hl
	pop de
	call lb4e4
	ld a,c
	ld (lb61d),a
	pop bc
	inc bc
	jp lb15a
.lb38f
	inc bc
	ld a,(bc)
	push af
	and #1f
	ld (lb6be),a
	call lb30b
	pop af
	inc bc
	or a
	jp m,lb15a
	jp lb17c
.lb3a3
	inc bc
	jp lb194
.lb3a7		; reset music pattern
	ld c,(ix+#00)
	ld b,(ix+#01)
	ld (ix+#02),c
	ld (ix+#03),b
	jp lb15a
.lb3b6
	inc bc
	ld a,(bc)
	inc bc
	ld de,#0000
.lb3bc
	push af
	ld a,(bc)
	push de
	ld de,(lb61d)
	ld d,#00
	call lb4cf
	pop de
	add hl,de
	ex de,hl
	inc bc
	pop af
	dec a
	jr nz,lb3bc
	ld (ix+#06),l
	ld (ix+#07),h
	jp lb15a
.lb3d9
	inc bc
	ld a,(bc)
	ld e,a
	or (ix+#2d)
	ld (ix+#2d),a
	ld a,(lb6bd)
	or e
	ld (lb6bd),a
	inc bc
	jp lb15a
.lb3ed
	inc bc
	res 0,(ix+#2d)
	res 1,(ix+#2d)
	ld a,(bc)
	ld de,#000f
	call lb4cf
	ld de,lb6ca
	add hl,de
	push ix
	ld d,#0f
.lb405
	ld a,(hl)
	ld (ix+#16),a
	inc hl
	inc ix
	dec d
	jp nz,lb405
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
	jp lb15a
.lb436
	inc bc
	ld a,(lb6bd)
	res 2,a
	ld (lb6bd),a
	ld a,(bc)
	ld de,#0006
	call lb4cf
	ld de,lb733
	add hl,de
	ld iy,lb6b3
	ld (iy+#00),#00
	ld (iy+#01),#00
	ld d,#06
.lb458
	ld a,(hl)
	ld (iy+#04),a
	inc hl
	inc iy
	dec d
	jr nz,lb458
	xor a
	ld (lb6bf),a
	inc bc
	ld a,(lb61c)
	ld (lb6c0),a
	jp lb15a
.lb470
	push de
	cpl
	ld e,a
	ld d,#09
	ld a,(lb61c)
.lb478
	dec a
	jp m,lb483
	scf
	rl e
	sla d
	jr lb478
.lb483
	ld a,(lb625)
	or d
	and e
	ld (lb625),a
	pop de
	ret
.lb48d
	ld a,(lb61c)
	inc bc
	add a
	ld l,a
	ld h,#00
	ld a,(bc)
	inc bc
	ld de,lb6c1
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	ld hl,lb73f
	call lb4fe
	ld b,h
	ld c,l
	jp lb15a
.lb4a9
	ld a,(lb61c)
	add a
	ld l,a
	ld h,#00
	ld de,lb6c1
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	jp lb15a
.lb4ba
	inc bc
	call lb4c4
	ld a,(bc)
	inc bc
	ld (hl),a
	jp lb15a
.lb4c4
	ld a,(lb61c)
	ld l,a
	ld h,#00
	ld de,lb6c7
	add hl,de
	ret
.lb4cf
	ld hl,#0000
	and a
	ret z
	push bc
	ld b,#08
.lb4d7
	srl a
	jr nc,lb4dc
	add hl,de
.lb4dc
	sla e
	rl d
	djnz lb4d7
	pop bc
	ret
.lb4e4
	push af
	ld hl,#0000
	ld a,b
	ld b,#10
.lb4eb
	rl c
	rla
	adc hl,hl
	sbc hl,de
	jr nc,lb4f5
	add hl,de
.lb4f5
	ccf
	djnz lb4eb
	rl c
	rla
	ld b,a
	pop af
	ret
.lb4fe
	push af
	add a
	add l
	ld l,a
	jr nc,lb505
	inc h
.lb505
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	pop af
	ret
.lb50b
	ld b,#f7
	ld c,#82
	out (c),c
	ld hl,lb61e
	ld a,#00
	ld d,#0b
.lb518
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
	jr nz,lb518
	ret
.lb53e
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
.lb5fe
	dw lb327,lb345,lb3a7,lb330
	dw lb3a3,lb375,lb3b6,lb3ed
	dw lb38f,lb436,lb3d9,lb350
	dw lb48d,lb4a9,lb4ba
.lb61e equ $ + 2
.lb61d equ $ + 1
.lb61c
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb626 equ $ + 2
.lb625 equ $ + 1
.lb624
	db #00,#00,#00,#00,#00
.lb629
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
.lb6b4 equ $ + 3
.lb6b3 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb6c0 equ $ + 7
.lb6bf equ $ + 6
.lb6be equ $ + 5
.lb6bd equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb6c7 equ $ + 6
.lb6c1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb6ca equ $ + 1
	db #00,#07,#00,#00,#00,#00,#fe,#00
	db #00,#00,#00,#01,#00,#00,#00,#00
	db #0a,#00,#00,#00,#00,#ff,#00,#00
	db #00,#00,#03,#00,#00,#00,#00,#03
	db #0a,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#01,#02,#00,#00,#00,#01,#01
	db #00,#00,#00,#04,#fc,#00,#00,#00
	db #01,#01,#00,#00,#00,#01,#01,#01
	db #01,#00,#04,#fc,#03,#fd,#00,#01
	db #01,#01,#01,#00,#01,#01,#14,#01
	db #00,#00,#f1,#00,#00,#00,#03,#01
	db #00,#00,#00,#02,#01,#00,#00,#00
	db #fe,#01,#00,#00,#00,#02,#01,#00
.lb733 equ $ + 2
	db #00,#00,#0a,#00,#00,#00,#01,#00
.lb73f equ $ + 6
	db #1e,#00,#f7,#00,#01,#00,#69,#b7
	db #a2,#b7,#c3,#b7,#fc,#b7,#65,#b8
	db #86,#b8,#a7,#b8,#d4,#b8,#25,#b9
	db #25,#b9,#25,#b9,#25,#b9,#25,#b9
	db #25,#b9,#25,#b9,#25,#b9,#25,#b9
	db #25,#b9,#25,#b9,#25,#b9,#25,#b9
	db #87,#01,#81,#01,#80,#0f,#83,#0a
	db #26,#29,#2d,#26,#29,#2d,#26,#29
	db #2d,#26,#29,#2d,#26,#29,#2d,#26
	db #29,#2d,#26,#29,#2d,#26,#29,#2d
	db #26,#2b,#2d,#26,#2b,#2d,#26,#2b
	db #2d,#26,#2b,#2d,#26,#2b,#2d,#26
	db #2b,#2d,#26,#2b,#2d,#26,#2b,#2d
	db #8d,#87,#01,#81,#01,#80,#0d,#83
	db #05,#37,#35,#32,#37,#35,#32,#37
	db #35,#32,#37,#35,#32,#3c,#3b,#37
	db #30,#32,#34,#37,#35,#34,#32,#30
	db #35,#8d,#87,#01,#81,#01,#80,#0f
	db #83,#0a,#2b,#2f,#32,#2b,#2d,#32
	db #2b,#2f,#32,#2b,#2d,#32,#2b,#2f
	db #32,#2b,#2d,#32,#2b,#2f,#32,#2b
	db #2d,#32,#29,#2d,#30,#29,#2b,#30
	db #29,#2d,#30,#29,#2b,#30,#29,#2d
	db #30,#29,#2b,#30,#29,#2d,#30,#29
	db #2b,#30,#8d,#87,#01,#81,#01,#80
	db #0d,#83,#05,#3b,#39,#37,#3e,#2f
	db #2b,#3b,#39,#37,#3e,#2f,#2b,#3b
	db #39,#37,#3e,#2f,#2b,#3b,#39,#37
	db #3e,#2f,#2b,#3b,#39,#37,#3e,#2f
	db #2b,#3b,#39,#37,#3e,#2f,#2b,#53
	db #4f,#4a,#47,#43,#3e,#3b,#37,#32
	db #37,#3b,#3e,#39,#37,#35,#3c,#39
	db #35,#39,#37,#35,#3c,#39,#35,#39
	db #37,#35,#3c,#39,#35,#39,#37,#35
	db #3c,#39,#35,#39,#37,#35,#3c,#39
	db #35,#39,#37,#35,#3c,#39,#35,#51
	db #4d,#48,#45,#41,#3c,#39,#37,#35
	db #30,#35,#39,#8d,#87,#02,#81,#01
	db #80,#0f,#83,#14,#21,#1d,#21,#1d
	db #21,#1d,#21,#1d,#21,#1d,#21,#1d
	db #23,#1f,#23,#1f,#23,#1f,#23,#1f
	db #23,#1f,#23,#1f,#8d,#87,#01,#81
	db #01,#80,#0f,#83,#14,#26,#23,#26
	db #23,#26,#23,#26,#23,#26,#23,#26
	db #23,#24,#21,#24,#21,#24,#21,#24
	db #21,#24,#21,#24,#21,#8d,#87,#01
	db #81,#01,#80,#0d,#83,#0a,#24,#28
	db #2b,#24,#2b,#28,#24,#34,#30,#24
	db #28,#2b,#24,#2b,#28,#24,#34,#30
	db #1f,#23,#26,#1f,#26,#23,#1f,#2f
	db #2b,#1f,#23,#26,#1f,#26,#23,#1f
	db #2f,#2b,#8d,#87,#01,#81,#01,#80
	db #0d,#83,#05,#00,#04,#07,#0c,#10
	db #13,#18,#1c,#1f,#24,#28,#2b,#30
	db #34,#37,#3c,#40,#43,#48,#4c,#4f
	db #54,#58,#5b,#54,#4c,#43,#3c,#34
	db #2b,#24,#1c,#13,#0c,#04,#0c,#07
	db #0b,#0e,#13,#17,#1a,#1f,#23,#26
	db #2b,#2f,#32,#37,#3b,#3e,#43,#47
	db #4a,#4f,#53,#56,#5b,#60,#60,#5b
	db #53,#4a,#43,#3b,#32,#2b,#23,#1a
.lb926 equ $ + 5
	db #13,#0b,#07,#8d,#c9,#85,#64,#8e
	db #00,#8c,#00,#8c,#02,#8e,#03,#8c
	db #00,#8c,#02,#8e,#00,#8c,#00,#8c
.lb93d equ $ + 4
	db #02,#8c,#06,#82,#85,#64,#8e,#00
	db #8c,#01,#8c,#01,#8c,#01,#8e,#18
	db #8c,#01,#8e,#00,#8c,#03,#8e,#03
	db #8c,#01,#8e,#0f,#8c,#01,#8e,#1b
	db #8c,#01,#8e,#27,#8c,#01,#8e,#0f
	db #8c,#03,#8e,#00,#8c,#01,#8c,#01
	db #8c,#01,#8e,#18,#8c,#01,#8e,#0c
.lb978 equ $ + 7
	db #8c,#03,#8e,#00,#8c,#07,#82,#85
	db #64,#8e,#00,#8c,#04,#8e,#0c,#8c
	db #05,#8e,#0f,#8c,#04,#8e,#1b,#8c
	db #05,#8e,#00,#8c,#04,#8c,#05,#8e
	db #0c,#8c,#06,#82,#b2,#07,#07,#07
	db #07,#a9,#e6,#0c,#a9,#c5,#cd,#b0
	db #b9,#f3,#d9,#08,#79,#c1,#e6,#03
	db #cb,#89,#cb,#81,#b1,#18,#01,#d5
	db #4f,#ed,#49,#b7,#08,#d9,#fb,#c9
	db #f3,#08,#79,#e5,#d9,#d1,#18,#15
	db #f3,#e5,#d9,#e1,#18,#09,#f3,#d9
	db #e1,#5e,#23,#56,#23,#e5,#eb,#5e
	db #23,#56,#23,#08,#7e,#fe,#fc,#30
	db #be,#06,#df,#ed,#79,#21,#d6,#b8
	db #46,#77,#c5,#fd,#e5,#fe,#10,#30
	db #0f,#87,#c6,#da,#6f,#ce,#b8,#95
	db #67,#7e,#23,#66,#6f,#e5,#fd,#e1
	db #06,#7f,#79,#cb,#d7,#cb,#9f,#cd
	db #b0,#b9,#fd,#e1,#f3,#d9,#08,#59
	db #c1,#78,#06,#df,#ed,#79,#32,#d6
	db #b8,#06,#7f,#7b,#18,#90,#f3,#e5
	db #d9,#d1,#18,#08,#f3,#d9,#e1,#5e
	db #23,#56,#23,#e5,#08,#7a,#cb,#fa
	db #cb,#f2,#e6,#c0,#07,#07,#21,#d9
	db #b8,#86,#18,#a5,#f3,#d9,#e1,#5e
	db #23,#56,#cb,#91,#ed,#49,#ed,#53
	db #46,#ba,#d9,#fb,#cd,#df,#36,#f3
	db #d9,#cb,#d1,#ed,#49,#d9,#fb,#c9
	db #f3,#d9,#79,#cb,#91,#18,#13,#f3
	db #d9,#79,#cb,#d1,#18,#0c,#f3,#d9
	db #79,#cb,#99,#18,#05,#f3,#d9,#79
	db #cb,#d9,#ed,#49,#d9,#fb,#c9,#f3
	db #d9,#a9,#e6,#0c,#a9,#4f,#18,#f2
	db #cd,#5f,#ba,#18,#0f,#cd,#79,#ba
	db #3a,#00,#c0,#2a,#01,#c0,#f5,#78
	db #cd,#70,#ba,#f1,#e5,#f3,#06,#df
	db #ed,#49,#21,#d6,#b8,#46,#71,#48
	db #47,#fb,#e1,#c9,#3a,#d6,#b8,#c9
	db #cd,#ad,#ba,#ed,#b0,#c9,#cd,#ad
	db #ba,#ed,#b8,#c9,#f3,#d9,#e1,#c5
	db #cb,#d1,#cb,#d9,#ed,#49,#cd,#c2
	db #ba,#f3,#d9,#c1,#ed,#49,#d9,#fb
	db #c9,#e5,#d9,#fb,#c9,#f3,#d9,#59
	db #cb,#d3,#cb,#db,#ed,#59,#d9,#7e
	db #d9,#ed,#49,#d9,#fb,#c9,#d9,#79
	db #f6,#0c,#ed,#79,#dd,#7e,#00,#ed
	db #49,#d9,#c9,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff
;
; #a76d
; call #b079	; init music
; #b00b
; di
; ld a,#c3
; ld (#0038),a
; ld (#0039),hl
; ret
;
.music_info
	db "La Espada Sagrada (1990)(Topo Soft)(TPM)",0
	db "",0

	read "music_end.asm"
