; Music of Bronx (1989)(Dinamic)(Pablo Toledo)()
; Ripped by Megachur the 12/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BRONX.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #6f92

	read "music_header.asm"

;
.init_music		; #6f92
;
	xor a
	ld de,l77fc
	call l6fb6
	ld de,l791b
	inc a
	call l6fb6
	ld de,l7a2e
	inc a
	jp l6fb6
;
.stop_music		; #6fa7
;
	xor a
	ld de,#0000
	call l6fb6
	inc a
	call l6fb6
	inc a
	jp l6fb6
.l6fb6
	push af
	push de
	ld de,#002e
	call l7354
	ld de,l74ac
	add hl,de
	push hl
	xor a
	ld b,#2e
.l6fc6
	ld (hl),a
	inc hl
	djnz l6fc6
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
.play_music	;6fd5
;
	push af
	ld b,#03
	xor a
	ld ix,l74ac
	ld de,l74a1
	ld hl,l74a9
.l6fe3
	push af
	push hl
	push de
	push bc
	ld (l749f),a
	ld a,(ix+#04)
	or (ix+#05)
	jp nz,l704e
	xor a
	call l72f5
	ld c,(ix+#02)
	ld b,(ix+#03)
	ld a,b
	or c
	jp z,l7107
.l7002
	ld a,(bc)
	cp #80
	jp c,l7011
	sub #80
	ld hl,l7483
	call l7383
	jp (hl)
.l7011
	push af
	call l7349
	pop af
	add (hl)
	ld hl,l73c3
	call l7383
	ld (ix+#0a),l
	ld (ix+#0b),h
	inc bc
.l7024
	ld a,(ix+#08)
	call l72f5
	call l7183
	ld (ix+#2a),#00
	call l719b
	ld (ix+#2b),#00
	ld (ix+#2c),#00
.l703c
	ld (ix+#02),c
	ld (ix+#03),b
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld (ix+#04),l
	ld (ix+#05),h
.l704e
	ld l,(ix+#04)
	ld h,(ix+#05)
	dec hl
	ld (ix+#04),l
	ld (ix+#05),h
	push ix
	pop iy
	ld d,#02
	ld c,#00
.l7063
	ld a,(iy+#0c)
	or a
	jr z,l7070
	dec a
	ld (iy+#0c),a
	inc c
	jr l7091
.l7070
	ld a,(iy+#0e)
	or a
	jr z,l708c
	dec a
	ld (iy+#0e),a
	ld a,(ix+#2a)
	add (iy+#1b)
	ld (ix+#2a),a
	ld a,(iy+#20)
	ld (iy+#0c),a
	inc c
	jr l7091
.l708c
	inc iy
	dec d
	jr nz,l7063
.l7091
	ld a,c
	or a
	jr nz,l709c
	bit 0,(ix+#2d)
	call nz,l7183
.l709c
	push ix
	pop iy
	ld d,#03
	ld c,#00
.l70a4
	ld a,(iy+#10)
	or a
	jr z,l70b1
	dec a
	ld (iy+#10),a
	inc c
	jr l70fc
.l70b1
	ld a,(iy+#13)
	or a
	jr z,l70f7
	dec a
	ld (iy+#13),a
	ld a,(iy+#1d)
	or a
	jp p,l70db
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
	jr l70ee
.l70db
	ld a,(ix+#2b)
	add (iy+#1d)
	ld (ix+#2b),a
	ld a,(ix+#2c)
	adc #00
	and #0f
	ld (ix+#2c),a
.l70ee
	ld a,(iy+#22)
	ld (iy+#10),a
	inc c
	jr l70fc
.l70f7
	inc iy
	dec d
	jr nz,l70a4
.l70fc
	ld a,c
	or a
	jr nz,l7107
	bit 1,(ix+#2d)
	call nz,l719b
.l7107
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
	jp nz,l6fe3
	ld iy,l7536
	ld d,#02
	ld c,#00
.l7139
	ld a,(iy+#00)
	or a
	jr z,l7146
	dec a
	ld (iy+#00),a
	inc c
	jr l7167
.l7146
	ld a,(iy+#02)
	or a
	jr z,l7162
	dec a
	ld (iy+#02),a
	ld a,(l7542)
	add (iy+#06)
	ld (l7542),a
	ld a,(iy+#08)
	ld (iy+#00),a
	inc c
	jr l7167
.l7162
	inc iy
	dec d
	jr nz,l7139
.l7167
	ld a,c
	or a
	jr nz,l7173
	ld a,(l7540)
	bit 2,a
	call nz,l71b3
.l7173
	ld a,(l7541)
	ld e,a
	ld a,(l7542)
	add e
	ld (l74a7),a
	call l7390
	pop af
	ret
.l7183
	push ix
	ld d,#02
.l7187
	ld a,(ix+#20)
	ld (ix+#0c),a
	ld a,(ix+#16)
	ld (ix+#0e),a
	inc ix
	dec d
	jr nz,l7187
	pop ix
	ret
.l719b
	ld d,#03
	push ix
.l719f
	ld a,(ix+#22)
	ld (ix+#10),a
	ld a,(ix+#18)
	ld (ix+#13),a
	inc ix
	dec d
	jr nz,l719f
	pop ix
	ret
.l71b3
	ld d,#02
	push iy
	ld iy,l7536
.l71bb
	ld a,(iy+#08)
	ld (iy+#00),a
	ld a,(iy+#04)
	ld (iy+#02),a
	inc iy
	dec d
	jr nz,l71bb
	pop iy
	ret
.l71cf
	inc bc
	ld a,(bc)
	ld (ix+#09),a
	inc bc
	jp l7002
.l71d8
	inc bc
	ld a,(bc)
	ld de,(l74a0)
	ld d,#00
	call l7354
	ld (ix+#06),l
	ld (ix+#07),h
	inc bc
	jp l7002
.l71ed
	inc bc
	ld a,(bc)
	and #09
	ld (ix+#08),a
	inc bc
	jp l7002
.l71f8
	push ix
	pop hl
	xor a
	ld b,#2e
.l71fe
	ld (hl),a
	inc hl
	djnz l71fe
	ld a,(l749f)
	ld hl,l7543
	xor (hl)
	jp nz,l7107
	ld hl,l7536
	ld de,l7537
	ld bc,#000a
	ld (hl),a
	ldir
	inc de
	ld (de),a
	jp l7107
.l721d
	inc bc
	ld a,(bc)
	push bc
	ld de,#0010
	call l7354
	ld bc,#0bb8
	push hl
	pop de
	call l7369
	ld a,c
	ld (l74a0),a
	pop bc
	inc bc
	jp l7002
.l7237
	inc bc
	ld a,(bc)
	push af
	and #1f
	ld (l7541),a
	call l71b3
	pop af
	inc bc
	or a
	jp m,l7002
	jp l7024
.l724b
	inc bc
	jp l703c
.l724f
	ld c,(ix+#00)
	ld b,(ix+#01)
	ld (ix+#02),c
	ld (ix+#03),b
	jp l7002
.l725e
	inc bc
	ld a,(bc)
	ld e,a
	or (ix+#2d)
	ld (ix+#2d),a
	ld a,(l7540)
	or e
	ld (l7540),a
	inc bc
	jp l7002
.l7272
	inc bc
	res 0,(ix+#2d)
	res 1,(ix+#2d)
	ld a,(bc)
	ld de,#000f
	call l7354
	ld de,l754d
	add hl,de
	push ix
	ld d,#0f
.l728a
	ld a,(hl)
	ld (ix+#16),a
	inc hl
	inc ix
	dec d
	jp nz,l728a
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
	jp l7002
.l72bb
	inc bc
	ld a,(l7540)
	res 2,a
	ld (l7540),a
	ld a,(bc)
	ld de,#0006
	call l7354
	ld de,l763d
	add hl,de
	ld iy,l7536
	ld (iy+#00),#00
	ld (iy+#01),#00
	ld d,#06
.l72dd
	ld a,(hl)
	ld (iy+#04),a
	inc hl
	inc iy
	dec d
	jr nz,l72dd
	xor a
	ld (l7542),a
	inc bc
	ld a,(l749f)
	ld (l7543),a
	jp l7002
.l72f5
	push de
	cpl
	ld e,a
	ld d,#09
	ld a,(l749f)
.l72fd
	dec a
	jp m,l7308
	scf
	rl e
	sla d
	jr l72fd
.l7308
	ld a,(l74a8)
	or d
	and e
	ld (l74a8),a
	pop de
	ret
.l7312
	ld a,(l749f)
	inc bc
	add a
	ld l,a
	ld h,#00
	ld a,(bc)
	inc bc
	ld de,l7544
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	ld hl,l7649
	call l7383
	ld b,h
	ld c,l
	jp l7002
.l732e
	ld a,(l749f)
	add a
	ld l,a
	ld h,#00
	ld de,l7544
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	jp l7002
.l733f
	inc bc
	call l7349
	ld a,(bc)
	inc bc
	ld (hl),a
	jp l7002
.l7349
	ld a,(l749f)
	ld l,a
	ld h,#00
	ld de,l754a
	add hl,de
	ret
.l7354
	ld hl,#0000
	and a
	ret z
	push bc
	ld b,#08
.l735c
	srl a
	jr nc,l7361
	add hl,de
.l7361
	sla e
	rl d
	djnz l735c
	pop bc
	ret
.l7369
	push af
	ld hl,#0000
	ld a,b
	ld b,#10
.l7370
	rl c
	rla
	adc hl,hl
	sbc hl,de
	jr nc,l737a
	add hl,de
.l737a
	ccf
	djnz l7370
	rl c
	rla
	ld b,a
	pop af
	ret
.l7383
	push af
	add a
	add l
	ld l,a
	jr nc,l738a
	inc h
.l738a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	pop af
	ret
.l7390
	ld b,#f7
	ld c,#82
	out (c),c
	ld hl,l74a1
	ld a,#00
	ld d,#0b
.l739d
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
	jr nz,l739d
	ret
.l73c3
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
.l7483
	dw l71cf,l71ed,l724f,l71d8
	dw l724b,l721d,l7272,l7237
	dw l72bb,l725e,l71f8,l7312
	dw l732e,l733f
.l74a1 equ $ + 2
.l74a0 equ $ + 1
.l749f
	db #02,#00,#00,#00,#00,#00,#00,#00
.l74ac equ $ + 5
.l74a9 equ $ + 2
.l74a8 equ $ + 1
.l74a7
	db #00,#3f,#00,#00,#00,#00,#00,#00
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
.l7536 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7537
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7544 equ $ + 5
.l7543 equ $ + 4
.l7542 equ $ + 3
.l7541 equ $ + 2
.l7540 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l754d equ $ + 6
.l754a equ $ + 3
	db #00,#00,#00,#00,#00,#00,#0f,#00
	db #00,#00,#00,#ff,#00,#00,#00,#00
	db #0f,#00,#00,#00,#00,#0a,#00,#00
	db #00,#00,#ff,#00,#00,#00,#00,#01
	db #00,#00,#00,#00,#0c,#00,#1e,#00
	db #00,#ff,#00,#1e,#00,#00,#01,#00
	db #01,#00,#00,#01,#01,#00,#00,#00
	db #04,#fc,#00,#00,#00,#01,#01,#00
	db #00,#00,#01,#01,#01,#02,#00,#01
	db #fe,#02,#ff,#00,#01,#03,#01,#01
	db #00,#01,#01,#14,#01,#00,#00,#f6
	db #00,#00,#00,#01,#01,#00,#00,#00
	db #0f,#00,#01,#01,#00,#ff,#00,#01
	db #ff,#00,#02,#00,#01,#01,#00,#01
	db #01,#01,#01,#00,#01,#fd,#01,#ff
	db #00,#01,#01,#01,#01,#00,#08,#08
	db #01,#01,#00,#01,#ff,#e2,#1e,#00
	db #06,#06,#01,#01,#00,#01,#01,#00
	db #00,#00,#fe,#02,#00,#00,#00,#01
	db #01,#00,#00,#00,#08,#08,#50,#00
	db #00,#01,#ff,#ff,#00,#00,#06,#0f
	db #08,#00,#00,#02,#08,#00,#00,#00
	db #00,#ff,#00,#00,#00,#01,#01,#00
	db #00,#00,#07,#0f,#00,#00,#00,#01
	db #ff,#00,#00,#00,#01,#02,#00,#00
	db #00,#01,#0a,#00,#00,#00,#0a,#ff
	db #00,#00,#00,#00,#02,#00,#00,#00
	db #01,#01,#01,#01,#00,#01,#ff,#02
	db #fe,#00,#02,#02,#02,#02,#00,#04
	db #0e,#01,#01,#00,#01,#ff,#02,#fe
.l763d equ $ + 6
	db #00,#08,#1e,#01,#01,#00,#0a,#0f
	db #02,#00,#14,#00,#1e,#00,#f7,#00
	db #01,#00
.l7649
	dw l767f,l7683,l768a,l7691
	dw l7695,l76a0,l76ad,l76cf
	dw l76e2,l76e6,l7716,l7732
	dw l773a,l7747,l7755,l7764
	dw l776b,l7778,l7791,l77a2
	dw l77b3,l77c6,l77d3,l77e1
	dw l77e6,l77f4,l77f8
.l7683 equ $ + 4
.l767f
	db #83,#20,#84,#8c,#83,#18,#0c,#83
.l768a equ $ + 3
	db #08,#0e,#8c,#83,#18,#0c,#83,#08
.l7695 equ $ + 6
.l7691 equ $ + 2
	db #0a,#8c,#83,#20,#0c,#8c,#83,#04
	db #0c,#0c,#18,#0c,#17,#18,#24,#01
.l76a0 equ $ + 1
	db #8c,#83,#04,#48,#3c,#3c,#83,#08
.l76ad equ $ + 6
	db #48,#48,#83,#04,#3c,#8c,#83,#01
	db #30,#30,#83,#02,#30,#83,#04,#30
	db #83,#02,#30,#30,#83,#04,#30,#83
	db #01,#30,#30,#30,#83,#03,#30,#83
	db #02,#30,#30,#30,#83,#04,#30,#8c
.l76cf
	db #83,#02,#3c,#24,#37,#24,#30,#24
	db #2b,#24,#24,#24,#0c,#24,#1f,#24
.l76e6 equ $ + 7
.l76e2 equ $ + 3
	db #18,#24,#8c,#83,#20,#24,#8c,#83
	db #08,#86,#02,#89,#00,#81,#01,#80
	db #0b,#2b,#86,#05,#81,#09,#80,#0a
	db #88,#01,#2b,#83,#04,#86,#02,#81
	db #01,#80,#0b,#2b,#83,#02,#86,#05
	db #81,#09,#80,#0a,#88,#01,#13,#84
.l7716 equ $ + 7
	db #88,#01,#83,#04,#13,#84,#8c,#83
	db #04,#86,#02,#89,#00,#81,#01,#80
	db #0b,#30,#83,#02,#30,#30,#30,#30
	db #83,#04,#2d,#2d,#2b,#2b,#83,#02
.l7732 equ $ + 3
	db #2b,#2b,#8c,#83,#10,#39,#83,#08
.l773a equ $ + 3
	db #3b,#3c,#8c,#83,#04,#3e,#40,#3e
	db #3c,#83,#0c,#39,#83,#04,#43,#8c
.l7747
	db #86,#00,#83,#18,#84,#86,#04,#89
.l7755 equ $ + 6
	db #01,#83,#04,#45,#43,#8c,#83,#08
	db #45,#83,#04,#45,#43,#83,#08,#45
.l7764 equ $ + 5
	db #83,#04,#45,#43,#8c,#83,#08,#4a
.l776b equ $ + 4
	db #48,#45,#40,#8c,#83,#0c,#3e,#83
	db #04,#3e,#83,#0c,#40,#83,#04,#38
.l7778 equ $ + 1
	db #8c,#83,#04,#0c,#83,#02,#0c,#0c
	db #83,#04,#18,#83,#02,#0c,#17,#17
	db #18,#83,#04,#18,#18,#83,#02,#24
.l7791 equ $ + 2
	db #24,#8c,#83,#04,#18,#83,#08,#18
	db #83,#04,#0c,#83,#08,#18,#83,#04
.l77a2 equ $ + 3
	db #18,#0c,#8c,#83,#04,#1f,#83,#08
	db #1f,#83,#04,#13,#83,#08,#1c,#83
.l77b3 equ $ + 4
	db #04,#1c,#20,#8c,#83,#02,#24,#37
	db #24,#30,#24,#2b,#24,#24,#24,#0c
.l77c6 equ $ + 7
	db #24,#1f,#24,#18,#24,#0c,#8c,#83
	db #04,#2d,#30,#32,#34,#83,#0c,#39
.l77d3 equ $ + 4
	db #83,#04,#34,#8c,#83,#04,#39,#37
	db #83,#08,#35,#83,#0c,#35,#83,#04
.l77e6 equ $ + 7
.l77e1 equ $ + 2
	db #34,#8c,#83,#10,#32,#2d,#8c,#83
	db #08,#30,#32,#83,#04,#34,#83,#08
.l77f4 equ $ + 5
	db #32,#83,#04,#37,#8c,#83,#80,#24
.l77f8 equ $ + 1
	db #8c,#83,#40,#24,#8c
.l77fc
	db #85
	dw #8d32,#8600,#8900,#8100
	dw #8001,#8b0b,#8b00,#8d00
	dw #8b0a,#8d01,#8b0d,#8d01
	dw #8b11,#8b02,#8d02,#8b0a
	dw #8d01,#8b0d,#8d01,#8b11
	dw #8b02,#8d03,#8b0a,#8b04
	dw #8d04,#8b0d,#8b04,#8d04
	dw #8b08,#8b04,#8d04,#8b0a
	dw #8d04,#8b05,#8604,#8909
	dw #8101,#8001,#8d09,#8b0a
	dw #8b05,#8b05,#8d05,#8b0c
	dw #8605,#8903,#8100,#8001
	dw #8d06,#8b0a,#8b06,#8b06
	dw #8b06,#8606,#890d,#8100
	dw #8001,#8b00,#8b05,#8b05
	dw #8b05,#8605,#8909,#8101
	dw #8001,#8d0a,#8b0a,#8d07
	dw #8b08,#8d07,#8b06,#8d07
	dw #8b05,#8607,#8b00,#8b00
	dw #8600,#890f,#8102,#8001
	dw #8d09,#8b0d,#8d19,#8006
	dw #8b08,#8d1a,#8005,#8b07
	dw #861a,#8901,#8100,#8001
	dw #8d0c,#8b08,#8b09,#8b09
	dw #8b09,#8b09,#8b09,#8b09
	dw #860a,#8904,#8101,#8001
	dw #8d0b,#8bf5,#8b0b,#8d0c
	dw #8b16,#8d08,#8bf5,#8b0d
	dw #8b0e,#8b0f,#8610,#890c
	dw #8100,#8001,#8d0a,#8b0a
	dw #8d07,#8b08,#8d07,#8b06
	dw #8d07,#8b05,#8d07,#8b0a
	dw #8d07,#8b08,#8d07,#8b06
	dw #8d07,#8b05,#8d07,#8b0a
	dw #8d07,#8b08,#8d07,#8b06
	dw #8d07,#8b05,#8207
.l791b
	db #85
	dw #8d32,#8600,#8901,#8100
	dw #8001,#8d0b,#8b0a,#8b06
	dw #8b06,#8b06,#8b06,#8b06
	dw #8b06,#8b06,#8d06,#8b0c
	dw #8606,#890a,#8100,#8009
	dw #8d01,#8b1d,#8d1a,#8b19
	dw #8d1a,#8b20,#8d19,#8b01
	dw #860a,#8901,#8100,#8001
	dw #8d0d,#8b0a,#8d11,#8b06
	dw #8d11,#8b03,#8d11,#8b08
	dw #8d11,#8b0a,#8d11,#8b06
	dw #8d11,#8b03,#8d11,#8b08
	dw #8d11,#8b0a,#8d11,#8b08
	dw #8d11,#8b06,#8d11,#8b05
	dw #8d11,#8b0a,#8d11,#8b08
	dw #8d11,#8b06,#8d11,#8b05
	dw #8611,#8907,#8101,#8001
	dw #8d0c,#8b0a,#8b12,#8b12
	dw #8b12,#8d12,#8b08,#8b12
	dw #8d12,#8b06,#8b12,#8d12
	dw #8b05,#8b12,#8d12,#8b0a
	dw #8b12,#8d12,#8b06,#8b12
	dw #8d12,#8b03,#8b12,#8d12
	dw #8b01,#8d13,#8b0a,#8b12
	dw #8d12,#8b06,#8b12,#8d12
	dw #8b03,#8b12,#8d12,#8b01
	dw #8613,#8901,#8100,#8001
	dw #8d0d,#8b0a,#8d11,#8b08
	dw #8d11,#8b06,#8d11,#8b05
	dw #8611,#8b00,#8600,#8d01
	dw #8b08,#8d11,#8b06,#8d11
	dw #8b05,#8611,#8907,#8101
	dw #8001,#8b0b,#8d14,#8b03
	dw #8d14,#8b01,#8d14,#8b00
	dw #8214
.l7a2e
	db #85
	dw #8d32,#8600,#8b00,#8b00
	dw #8b00,#8b00,#8b00,#8600
	dw #890f,#8103,#8001,#8d07
	dw #8b05,#8619,#8b00,#8600
	dw #890f,#8d03,#8b0a,#8d1a
	dw #8b0d,#8d1a,#8b0c,#8d1a
	dw #8b0a,#801a,#8d08,#8b01
	dw #8b15,#8b16,#8b17,#8b18
	dw #8b15,#8b16,#8b17,#8d18
	dw #8b0a,#8d08,#8b01,#8d18
	dw #8b0a,#8d08,#8b01,#8d18
	dw #8b16,#8b1a,#8619,#8b00
	dw #8b00,#8600,#890f,#8d03
	dw #8b08,#8d1a,#8b0d,#8d1a
	dw #8b00,#861a,#8904,#8101
	dw #8001,#8d0a,#8b01,#8b0b
	dw #8d0c,#8b22,#8d08,#8b01
	dw #8b0d,#8b0e,#8b0f,#8b10
	dw #8b0b,#8d0c,#8b22,#8d08
	dw #8b01,#8b0d,#8b0e,#8b0f
	dw #8610,#8b00,#8b00,#8b00
	dw #8b00,#8600,#890f,#8103
	dw #8001,#8d0b,#8b0d,#8d14
	dw #8b0c,#8d14,#8b0a,#8d14
	dw #8b09,#8d14,#8b0d,#8d14
	dw #8b0c,#8d14,#8b0a,#8d14
	dw #8b09,#8214
;
.music_info
	db "Bronx (1989)(Dinamic)(Pablo Toledo)",0
	db "",0

	read "music_end.asm"
