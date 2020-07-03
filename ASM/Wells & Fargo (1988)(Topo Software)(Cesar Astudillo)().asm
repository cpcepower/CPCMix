; Music of Wells & Fargo (1988)(Topo Software)(Cesar Astudillo)()
; Ripped by Megachur the 10/06/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "WELLS&FA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #937f

	read "music_header.asm"

	di
	ld a,#c3
	ld (#0038),a
	ld hl,l93ca
	ld (#0039),hl
	call l9391
	ei
	halt
	ret
;
.init_music
.l9391
;
	di
	ld a,#00
	ld de,l9c28
	call l93f2
	inc a
	ld de,l9caf
	call l93f2
	inc a
	ld de,l9ce6
	call l93f2
	ld a,#01
	ld (l93cd),a
	ret
;
.stop_music
;
	di
	xor a
	ld de,#0000
	push de
	call l93f2
	pop de
	inc a
	push de
	call l93f2
	pop de
	inc a
	call l93f2
	ld a,#01
	ld (l93cd),a
	ei
	halt
	ret
.l93ca
	di
	push af
.l93cd equ $ + 1
	ld a,#01
	dec a
	ld (l93cd),a
	jr nz,l93ee
	push ix
	push iy
	push hl
	push de
	push bc
	ex af,af'
	push af
	ld a,#06
	ld (l93cd),a
	call l9411
	pop af
	ex af,af'
	pop bc
	pop de
	pop hl
	pop iy
	pop ix
.l93ee
	pop af
	ei
	reti
.l93f2
	push af
	push de
	ld de,#002e
	call l97b3
	ld de,l990d
	add hl,de
	push hl
	xor a
	ld b,#2e
.l9402
	ld (hl),a
	inc hl
	djnz l9402
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
.l9411
;
	push af
	ld b,#03
	xor a
	ld ix,l990d
	ld de,l9902
	ld hl,l990a
.l941f
	push af
	push hl
	push de
	push bc
	ld (l9900),a
	ld a,(ix+#04)
	or (ix+#05)
	jp nz,l948a
	xor a
	call l9754
	ld c,(ix+#02)
	ld b,(ix+#03)
	ld a,b
	or c
	jp z,l9543
.l943e
	ld a,(bc)
	cp #80
	jp c,l944d
	sub #80
	ld hl,l98e2
	call l97e2
	jp (hl)
.l944d
	push af
	call l97a8
	pop af
	add (hl)
	ld hl,l9822
	call l97e2
	ld (ix+#0a),l
	ld (ix+#0b),h
	inc bc
.l9460
	ld a,(ix+#08)
	call l9754
	call l95bf
	ld (ix+#2a),#00
	call l95d7
	ld (ix+#2b),#00
	ld (ix+#2c),#00
.l9478
	ld (ix+#02),c
	ld (ix+#03),b
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld (ix+#04),l
	ld (ix+#05),h
.l948a
	ld l,(ix+#04)
	ld h,(ix+#05)
	dec hl
	ld (ix+#04),l
	ld (ix+#05),h
	push ix
	pop iy
	ld d,#02
	ld c,#00
.l949f
	ld a,(iy+#0c)
	or a
	jr z,l94ac
	dec a
	ld (iy+#0c),a
	inc c
	jr l94cd
.l94ac
	ld a,(iy+#0e)
	or a
	jr z,l94c8
	dec a
	ld (iy+#0e),a
	ld a,(ix+#2a)
	add (iy+#1b)
	ld (ix+#2a),a
	ld a,(iy+#20)
	ld (iy+#0c),a
	inc c
	jr l94cd
.l94c8
	inc iy
	dec d
	jr nz,l949f
.l94cd
	ld a,c
	or a
	jr nz,l94d8
	bit 0,(ix+#2d)
	call nz,l95bf
.l94d8
	push ix
	pop iy
	ld d,#03
	ld c,#00
.l94e0
	ld a,(iy+#10)
	or a
	jr z,l94ed
	dec a
	ld (iy+#10),a
	inc c
	jr l9538
.l94ed
	ld a,(iy+#13)
	or a
	jr z,l9533
	dec a
	ld (iy+#13),a
	ld a,(iy+#1d)
	or a
	jp p,l9517
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
	jr l952a
.l9517
	ld a,(ix+#2b)
	add (iy+#1d)
	ld (ix+#2b),a
	ld a,(ix+#2c)
	adc #00
	and #0f
	ld (ix+#2c),a
.l952a
	ld a,(iy+#22)
	ld (iy+#10),a
	inc c
	jr l9538
.l9533
	inc iy
	dec d
	jr nz,l94e0
.l9538
	ld a,c
	or a
	jr nz,l9543
	bit 1,(ix+#2d)
	call nz,l95d7
.l9543
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
	jp nz,l941f
	ld iy,l9997
	ld d,#02
	ld c,#00
.l9575
	ld a,(iy+#00)
	or a
	jr z,l9582
	dec a
	ld (iy+#00),a
	inc c
	jr l95a3
.l9582
	ld a,(iy+#02)
	or a
	jr z,l959e
	dec a
	ld (iy+#02),a
	ld a,(l99a3)
	add (iy+#06)
	ld (l99a3),a
	ld a,(iy+#08)
	ld (iy+#00),a
	inc c
	jr l95a3
.l959e
	inc iy
	dec d
	jr nz,l9575
.l95a3
	ld a,c
	or a
	jr nz,l95af
	ld a,(l99a1)
	bit 2,a
	call nz,l95ef
.l95af
	ld a,(l99a2)
	ld e,a
	ld a,(l99a3)
	add e
	ld (l9908),a
	call l97ef
	pop af
	ret
.l95bf
	push ix
	ld d,#02
.l95c3
	ld a,(ix+#20)
	ld (ix+#0c),a
	ld a,(ix+#16)
	ld (ix+#0e),a
	inc ix
	dec d
	jr nz,l95c3
	pop ix
	ret
.l95d7
	ld d,#03
	push ix
.l95db
	ld a,(ix+#22)
	ld (ix+#10),a
	ld a,(ix+#18)
	ld (ix+#13),a
	inc ix
	dec d
	jr nz,l95db
	pop ix
	ret
.l95ef
	ld d,#02
	push iy
	ld iy,l9997
.l95f7
	ld a,(iy+#08)
	ld (iy+#00),a
	ld a,(iy+#04)
	ld (iy+#02),a
	inc iy
	dec d
	jr nz,l95f7
	pop iy
	ret
.l960b
	inc bc
	ld a,(bc)
	ld (ix+#09),a
	inc bc
	jp l943e
.l9614
	inc bc
	ld a,(bc)
	ld de,(l9901)
	ld d,#00
	call l97b3
	ld (ix+#06),l
	ld (ix+#07),h
	inc bc
	jp l943e
.l9629
	inc bc
	ld a,(bc)
	and #09
	ld (ix+#08),a
	inc bc
	jp l943e
.l9634
	push ix
	pop hl
	xor a
	ld b,#2e
.l963a
	ld (hl),a
	inc hl
	djnz l963a
	ld a,(l9900)
	ld hl,l99a4
	xor (hl)
	jp nz,l9543
	ld hl,l9997
	ld de,l9998
	ld bc,#000a
	ld (hl),a
	ldir
	inc de
	ld (de),a
	jp l9543
.l9659
	inc bc
	ld a,(bc)
	push bc
	ld de,#0010
	call l97b3
	ld bc,#0bb8
	push hl
	pop de
	call l97c8
	ld a,c
	ld (l9901),a
	pop bc
	inc bc
	jp l943e
.l9673
	inc bc
	ld a,(bc)
	push af
	and #1f
	ld (l99a2),a
	call l95ef
	pop af
	inc bc
	or a
	jp m,l943e
	jp l9460
.l9687
	inc bc
	jp l9478
.l968b
	ld c,(ix+#00)
	ld b,(ix+#01)
	ld (ix+#02),c
	ld (ix+#03),b
	jp l943e
.l969a
	inc bc
	ld a,(bc)
	inc bc
	ld de,#0000
.l96a0
	push af
	ld a,(bc)
	push de
	ld de,(l9901)
	ld d,#00
	call l97b3
	pop de
	add hl,de
	ex de,hl
	inc bc
	pop af
	dec a
	jr nz,l96a0
	ld (ix+#06),l
	ld (ix+#07),h
	jp l943e
.l96bd
	inc bc
	ld a,(bc)
	ld e,a
	or (ix+#2d)
	ld (ix+#2d),a
	ld a,(l99a1)
	or e
	ld (l99a1),a
	inc bc
	jp l943e
.l96d1
	inc bc
	res 0,(ix+#2d)
	res 1,(ix+#2d)
	ld a,(bc)
	ld de,#000f
	call l97b3
	ld de,l99ae
	add hl,de
	push ix
	ld d,#0f
.l96e9
	ld a,(hl)
	ld (ix+#16),a
	inc hl
	inc ix
	dec d
	jp nz,l96e9
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
	jp l943e
.l971a
	inc bc
	ld a,(l99a1)
	res 2,a
	ld (l99a1),a
	ld a,(bc)
	ld de,#0006
	call l97b3
	ld de,l9a44
	add hl,de
	ld iy,l9997
	ld (iy+#00),#00
	ld (iy+#01),#00
	ld d,#06
.l973c
	ld a,(hl)
	ld (iy+#04),a
	inc hl
	inc iy
	dec d
	jr nz,l973c
	xor a
	ld (l99a3),a
	inc bc
	ld a,(l9900)
	ld (l99a4),a
	jp l943e
.l9754
	push de
	cpl
	ld e,a
	ld d,#09
	ld a,(l9900)
.l975c
	dec a
	jp m,l9767
	scf
	rl e
	sla d
	jr l975c
.l9767
	ld a,(l9909)
	or d
	and e
	ld (l9909),a
	pop de
	ret
.l9771
	ld a,(l9900)
	inc bc
	add a
	ld l,a
	ld h,#00
	ld a,(bc)
	inc bc
	ld de,l99a5
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	ld hl,l9a50
	call l97e2
	ld b,h
	ld c,l
	jp l943e
.l978d
	ld a,(l9900)
	add a
	ld l,a
	ld h,#00
	ld de,l99a5
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	jp l943e
.l979e
	inc bc
	call l97a8
	ld a,(bc)
	inc bc
	ld (hl),a
	jp l943e
.l97a8
	ld a,(l9900)
	ld l,a
	ld h,#00
	ld de,l99ab
	add hl,de
	ret
.l97b3
	ld hl,#0000
	and a
	ret z
	push bc
	ld b,#08
.l97bb
	srl a
	jr nc,l97c0
	add hl,de
.l97c0
	sla e
	rl d
	djnz l97bb
	pop bc
	ret
.l97c8
	push af
	ld hl,#0000
	ld a,b
	ld b,#10
.l97cf
	rl c
	rla
	adc hl,hl
	sbc hl,de
	jr nc,l97d9
	add hl,de
.l97d9
	ccf
	djnz l97cf
	rl c
	rla
	ld b,a
	pop af
	ret
.l97e2
	push af
	add a
	add l
	ld l,a
	jr nc,l97e9
	inc h
.l97e9
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	pop af
	ret
.l97ef
	ld b,#f7
	ld c,#82
	out (c),c
	ld hl,l9902
	ld a,#00
	ld d,#0b
.l97fc
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
	jr nz,l97fc
	ret
.l9822
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
.l98e2
	dw l960b,l9629,l968b,l9614
	dw l9687,l9659,l969a,l96d1
	dw l9673,l971a,l96bd,l9634
	dw l9771,l978d,l979e
.l9902 equ $ + 2
.l9901 equ $ + 1
.l9900
	db #00,#00,#00,#00,#00,#00,#00,#00
.l990d equ $ + 5
.l990a equ $ + 2
.l9909 equ $ + 1
.l9908
	db #00,#00,#00,#00,#00,#28,#9c,#28
	db #9c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#af,#9c,#af,#9c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#e6,#9c,#e6,#9c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9997 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9998
	db #01,#01,#14,#01,#00,#00,#f1,#00
.l99a5 equ $ + 5
.l99a4 equ $ + 4
.l99a3 equ $ + 3
.l99a2 equ $ + 2
.l99a1 equ $ + 1
	db #00,#00,#03,#01,#00,#00,#00,#07
.l99ae equ $ + 6
.l99ab equ $ + 3
	db #00,#01,#01,#00,#fe,#00,#0a,#00
	db #00,#00,#00,#ff,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#0a,#00,#00
	db #00,#00,#ff,#00,#00,#00,#00,#01
	db #00,#00,#00,#00,#06,#00,#1e,#00
	db #00,#fe,#00,#e2,#00,#00,#01,#00
	db #01,#00,#00,#04,#00,#00,#00,#00
	db #ff,#00,#00,#00,#00,#01,#00,#00
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
.l9a44 equ $ + 4
	db #01,#00,#00,#00,#0a,#00,#03,#00
	db #01,#00,#1e,#00,#f7,#00
	db #01,#00
.l9a50
	dw l9a7a,l9aa2,l9acd,l9af8
	dw l9baf,l9a7a,l9a7a,l9a7a
	dw l9a7a,l9a7a,l9a7a,l9a7a
	dw l9a7a,l9a7a,l9a7a,l9a7a
	dw l9a7a,l9a7a,l9a7a,l9a7a
	dw l9a7a
.l9a7a
	db #87,#00,#8a,#00,#81,#01,#89,#00
	db #83,#0c,#18,#83,#03,#18,#84,#15
	db #84,#83,#0c,#13,#83,#03,#13,#84
	db #15,#84,#83,#0c,#18,#83,#03,#18
	db #84,#15,#84,#83,#0c,#13,#15,#8d
.l9aa2
	db #87,#00,#8a,#00,#81,#01,#89,#00
	db #83,#06,#1c,#1f,#81,#09,#24,#81
	db #01,#1c,#1f,#24,#81,#09,#1c,#81
	db #01,#1f,#24,#1c,#81,#09,#1f,#81
	db #01,#24,#27,#28,#81,#09,#24,#1f
.l9acd equ $ + 3
	db #81,#01,#8d,#87,#00,#8a,#00,#81
	db #01,#89,#00,#83,#06,#1b,#1f,#81
	db #09,#24,#81,#01,#1b,#1f,#24,#81
	db #09,#1b,#81,#01,#1f,#24,#1b,#81
	db #09,#1f,#81,#01,#24,#26,#27,#81
.l9af8 equ $ + 6
	db #09,#24,#2b,#81,#01,#8d,#87,#03
	db #8a,#00,#81,#01,#83,#02,#1b,#83
	db #0a,#1c,#83,#0c,#1f,#21,#83,#06
	db #1f,#83,#0c,#1c,#83,#06,#1a,#83
	db #02,#1b,#83,#0a,#1c,#83,#0c,#1a
	db #18,#83,#02,#1b,#83,#04,#1c,#83
	db #06,#1a,#83,#02,#1b,#83,#04,#1c
	db #83,#0c,#1a,#83,#02,#16,#83,#04
	db #17,#83,#0c,#15,#13,#1f,#1f,#1e
	db #1d,#1d,#83,#0c,#1d,#83,#06,#1f
	db #83,#02,#1b,#83,#10,#1c,#83,#0c
	db #1a,#18,#83,#06,#1a,#83,#02,#1b
	db #83,#64,#1c,#83,#0c,#1d,#1d,#1d
	db #83,#06,#1f,#83,#02,#1b,#83,#10
	db #1c,#83,#0c,#1a,#18,#83,#06,#1a
	db #83,#02,#1b,#83,#10,#1c,#83,#0c
	db #15,#21,#83,#06,#1f,#83,#12,#21
	db #83,#02,#1b,#83,#0a,#1c,#83,#0c
	db #1a,#18,#1a,#1a,#1a,#83,#06,#1c
	db #83,#12,#1f,#83,#0c,#13,#83,#02
	db #1b,#83,#0a,#1c,#83,#02,#1b,#83
	db #0a,#1c,#83,#06,#18,#18,#18,#83
	db #0c,#18,#83,#06,#13,#83,#0c,#15
.l9baf equ $ + 5
	db #18,#24,#18,#0c,#8d,#83,#18,#24
	db #83,#06,#24,#83,#12,#26,#83,#18
	db #24,#21,#83,#02,#20,#83,#0a,#21
	db #83,#54,#1f,#83,#0c,#23,#23,#83
	db #06,#26,#83,#12,#28,#83,#0c,#29
	db #1f,#1d,#1f,#83,#02,#1c,#83,#04
	db #1d,#83,#5a,#1c,#83,#18,#1d,#83
	db #06,#1d,#83,#12,#1f,#83,#18,#21
	db #24,#83,#02,#27,#83,#0a,#28,#83
	db #30,#28,#83,#0c,#28,#26,#24,#83
	db #0c,#26,#24,#21,#83,#06,#1e,#83
	db #02,#25,#83,#10,#26,#83,#0c,#28
	db #83,#06,#2b,#83,#02,#27,#83,#10
	db #28,#83,#30,#26,#83,#01,#26,#27
	db #28,#29,#2a,#2b,#83,#12,#84,#83
.l9c28 equ $ + 6
	db #06,#1f,#1f,#1f,#1f,#8d,#85,#64
	db #8e,#00,#80,#0d,#8e,#05,#8c,#00
	db #8e,#0c,#8c,#00,#8e,#0a,#8c,#00
	db #8e,#05,#8c,#00,#8e,#0a,#8c,#00
	db #8e,#02,#8c,#00,#8e,#0c,#8c,#00
	db #8e,#05,#8c,#00,#8e,#05,#8c,#00
	db #8e,#0c,#8c,#00,#8e,#0a,#8c,#00
	db #8e,#05,#8c,#00,#8e,#0a,#8c,#00
	db #8e,#02,#8c,#00,#8e,#0c,#8c,#00
	db #8e,#05,#8c,#00,#8e,#0a,#8c,#00
	db #8e,#05,#8c,#00,#8e,#0c,#8c,#00
	db #8e,#05,#8c,#00,#8e,#0a,#8c,#00
	db #8e,#02,#8c,#00,#8e,#07,#8c,#00
	db #8e,#0c,#8c,#00,#8e,#0a,#8c,#00
	db #8e,#05,#8c,#00,#8e,#0c,#8c,#00
	db #8e,#05,#8c,#00,#8e,#0a,#8c,#00
	db #8e,#02,#8c,#00,#8e,#07,#8c,#00
.l9caf equ $ + 5
	db #8e,#0c,#8c,#00,#82,#85,#64,#8e
	db #00,#80,#0e,#8e,#1d,#8c,#03,#80
	db #0c,#8e,#29,#8c,#03,#80,#0d,#8e
	db #1d,#8c,#04,#8e,#29,#80,#0c,#8c
	db #04,#83,#80,#84,#84,#84,#84,#84
	db #84,#84,#84,#84,#84,#84,#84,#80
	db #0d,#8e,#1d,#8c,#04,#8e,#29,#80
.l9ce6 equ $ + 4
	db #0c,#8c,#04,#82,#85,#64,#8e,#00
	db #80,#0b,#8e,#11,#8c,#01,#8e,#18
	db #8c,#01,#8e,#16,#8c,#01,#8e,#11
	db #8c,#01,#8e,#16,#8c,#01,#8e,#0e
	db #8c,#02,#8e,#18,#8c,#01,#8e,#11
	db #8c,#01,#8e,#11,#8c,#01,#8e,#18
	db #8c,#01,#8e,#16,#8c,#01,#8e,#11
	db #8c,#01,#8e,#16,#8c,#01,#8e,#0e
	db #8c,#02,#8e,#18,#8c,#01,#8e,#11
	db #8c,#01,#8e,#16,#8c,#01,#8e,#11
	db #8c,#01,#8e,#18,#8c,#01,#8e,#11
	db #8c,#01,#8e,#16,#8c,#01,#8e,#0e
	db #8c,#02,#8e,#13,#8c,#01,#8e,#18
	db #8c,#01,#8e,#16,#8c,#01,#8e,#11
	db #8c,#01,#8e,#18,#8c,#01,#8e,#11
	db #8c,#01,#8e,#16,#8c,#01,#8e,#0e
	db #8c,#02,#8e,#13,#8c,#01,#8e,#18
	db #8c,#01,#82,#85,#64,#81,#08,#80
	db #07,#83,#01,#88,#28,#83,#05,#84
	db #83,#01,#88,#23,#83,#05,#84,#83
	db #01,#88,#14,#83,#0a,#84,#82,#85
	db #64,#81,#09,#80,#0e,#87,#06,#83
	db #02,#3c,#80,#0a,#81,#01,#83,#0a
	db #3c,#8b
;
.music_info
	db "Wells & Fargo (1988)(Topo Software)(Cesar Astudillo)",0
	db "",0

	read "music_end.asm"
