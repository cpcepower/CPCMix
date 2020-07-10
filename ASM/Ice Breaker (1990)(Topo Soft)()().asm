; Music of Ice Breaker (1990)(Topo Soft)()()
; Ripped by Megachur the 22/03/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ICEBREAK.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #78a1

	read "music_header.asm"
	
	di
	push af
.l78a4 equ $ + 1
	ld a,#01
	dec a
	ld (l78a4),a
	jr nz,l78c1
	ld a,#06
	ld (l78a4),a
	push bc
	push de
	push hl
	push ix
	push iy
	call l7910
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
.l78c1
	pop af
	ei
	reti
	push af
	push de
	and #7f
	ld de,#002e
	call l7cb2
	ld de,l7e0c
	add hl,de
	push hl
	ld a,(hl)
	inc hl
	or (hl)
	jr z,l78eb
	ld d,#03
	ld hl,l7e0c
	ld bc,#002e
.l78e1
	inc hl
	ld a,(hl)
	dec hl
	or (hl)
	jr z,l78ee
	add hl,bc
	dec d
	jr nz,l78e1
.l78eb
	pop hl
	jr l78fd
.l78ee
	pop de
	jr l78fd
;
.l78f1
;
	push af
	push de
	ld de,#002e
	call l7cb2
	ld de,l7e0c
	add hl,de
.l78fd
	push hl
	xor a
	ld b,#2e
.l7901
	ld (hl),a
	inc hl
	djnz l7901
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
.l7910
;
	push af
	ld b,#03
	xor a
	ld ix,l7e0c
	ld de,l7e01
	ld hl,l7e09
.l791e
	push af
	push hl
	push de
	push bc
	ld (l7dff),a
	ld a,(ix+#04)
	or (ix+#05)
	jp nz,l7989
	xor a
	call l7c53
	ld c,(ix+#02)
	ld b,(ix+#03)
	ld a,b
	or c
	jp z,l7a42
.l793d
	ld a,(bc)
	cp #80
	jp c,l794c
	sub #80
	ld hl,l7de1
	call l7ce1
	jp (hl)
.l794c
	push af
	call l7ca7
	pop af
	add (hl)
	ld hl,l7d21
	call l7ce1
	ld (ix+#0a),l
	ld (ix+#0b),h
	inc bc
.l795f
	ld a,(ix+#08)
	call l7c53
	call l7abe
	ld (ix+#2a),#00
	call l7ad6
	ld (ix+#2b),#00
	ld (ix+#2c),#00
.l7977
	ld (ix+#02),c
	ld (ix+#03),b
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld (ix+#04),l
	ld (ix+#05),h
.l7989
	ld l,(ix+#04)
	ld h,(ix+#05)
	dec hl
	ld (ix+#04),l
	ld (ix+#05),h
	push ix
	pop iy
	ld d,#02
	ld c,#00
.l799e
	ld a,(iy+#0c)
	or a
	jr z,l79ab
	dec a
	ld (iy+#0c),a
	inc c
	jr l79cc
.l79ab
	ld a,(iy+#0e)
	or a
	jr z,l79c7
	dec a
	ld (iy+#0e),a
	ld a,(ix+#2a)
	add (iy+#1b)
	ld (ix+#2a),a
	ld a,(iy+#20)
	ld (iy+#0c),a
	inc c
	jr l79cc
.l79c7
	inc iy
	dec d
	jr nz,l799e
.l79cc
	ld a,c
	or a
	jr nz,l79d7
	bit 0,(ix+#2d)
	call nz,l7abe
.l79d7
	push ix
	pop iy
	ld d,#03
	ld c,#00
.l79df
	ld a,(iy+#10)
	or a
	jr z,l79ec
	dec a
	ld (iy+#10),a
	inc c
	jr l7a37
.l79ec
	ld a,(iy+#13)
	or a
	jr z,l7a32
	dec a
	ld (iy+#13),a
	ld a,(iy+#1d)
	or a
	jp p,l7a16
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
	jr l7a29
.l7a16
	ld a,(ix+#2b)
	add (iy+#1d)
	ld (ix+#2b),a
	ld a,(ix+#2c)
	adc #00
	and #0f
	ld (ix+#2c),a
.l7a29
	ld a,(iy+#22)
	ld (iy+#10),a
	inc c
	jr l7a37
.l7a32
	inc iy
	dec d
	jr nz,l79df
.l7a37
	ld a,c
	or a
	jr nz,l7a42
	bit 1,(ix+#2d)
	call nz,l7ad6
.l7a42
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
	jp nz,l791e
	ld iy,l7e96
	ld d,#02
	ld c,#00
.l7a74
	ld a,(iy+#00)
	or a
	jr z,l7a81
	dec a
	ld (iy+#00),a
	inc c
	jr l7aa2
.l7a81
	ld a,(iy+#02)
	or a
	jr z,l7a9d
	dec a
	ld (iy+#02),a
	ld a,(l7ea2)
	add (iy+#06)
	ld (l7ea2),a
	ld a,(iy+#08)
	ld (iy+#00),a
	inc c
	jr l7aa2
.l7a9d
	inc iy
	dec d
	jr nz,l7a74
.l7aa2
	ld a,c
	or a
	jr nz,l7aae
	ld a,(l7ea0)
	bit 2,a
	call nz,l7aee
.l7aae
	ld a,(l7ea1)
	ld e,a
	ld a,(l7ea2)
	add e
	ld (l7e07),a
	call l7cee
	pop af
	ret
.l7abe
	push ix
	ld d,#02
.l7ac2
	ld a,(ix+#20)
	ld (ix+#0c),a
	ld a,(ix+#16)
	ld (ix+#0e),a
	inc ix
	dec d
	jr nz,l7ac2
	pop ix
	ret
.l7ad6
	ld d,#03
	push ix
.l7ada
	ld a,(ix+#22)
	ld (ix+#10),a
	ld a,(ix+#18)
	ld (ix+#13),a
	inc ix
	dec d
	jr nz,l7ada
	pop ix
	ret
.l7aee
	ld d,#02
	push iy
	ld iy,l7e96
.l7af6
	ld a,(iy+#08)
	ld (iy+#00),a
	ld a,(iy+#04)
	ld (iy+#02),a
	inc iy
	dec d
	jr nz,l7af6
	pop iy
	ret
.l7b0a
	inc bc
	ld a,(bc)
	ld (ix+#09),a
	inc bc
	jp l793d
.l7b13
	inc bc
	ld a,(bc)
	ld de,(l7e00)
	ld d,#00
	call l7cb2
	ld (ix+#06),l
	ld (ix+#07),h
	inc bc
	jp l793d
.l7b28
	inc bc
	ld a,(bc)
	and #09
	ld (ix+#08),a
	inc bc
	jp l793d
.l7b33
	push ix
	pop hl
	xor a
	ld b,#2e
.l7b39
	ld (hl),a
	inc hl
	djnz l7b39
	ld a,(l7dff)
	ld hl,l7ea3
	xor (hl)
	jp nz,l7a42
	ld hl,l7e96
	ld de,l7e97
	ld bc,#000a
	ld (hl),a
	ldir
	inc de
	ld (de),a
	jp l7a42
.l7b58
	inc bc
	ld a,(bc)
	push bc
	ld de,#0010
	call l7cb2
	ld bc,#0bb8
	push hl
	pop de
	call l7cc7
	ld a,c
	ld (l7e00),a
	pop bc
	inc bc
	jp l793d
.l7b72
	inc bc
	ld a,(bc)
	push af
	and #1f
	ld (l7ea1),a
	call l7aee
	pop af
	inc bc
	or a
	jp m,l793d
	jp l795f
.l7b86
	inc bc
	jp l7977
.l7b8a
	ld c,(ix+#00)
	ld b,(ix+#01)
	ld (ix+#02),c
	ld (ix+#03),b
	jp l793d
.l7b99
	inc bc
	ld a,(bc)
	inc bc
	ld de,#0000
.l7b9f
	push af
	ld a,(bc)
	push de
	ld de,(l7e00)
	ld d,#00
	call l7cb2
	pop de
	add hl,de
	ex de,hl
	inc bc
	pop af
	dec a
	jr nz,l7b9f
	ld (ix+#06),l
	ld (ix+#07),h
	jp l793d
.l7bbc
	inc bc
	ld a,(bc)
	ld e,a
	or (ix+#2d)
	ld (ix+#2d),a
	ld a,(l7ea0)
	or e
	ld (l7ea0),a
	inc bc
	jp l793d
.l7bd0
	inc bc
	res 0,(ix+#2d)
	res 1,(ix+#2d)
	ld a,(bc)
	ld de,#000f
	call l7cb2
	ld de,l7ead
	add hl,de
	push ix
	ld d,#0f
.l7be8
	ld a,(hl)
	ld (ix+#16),a
	inc hl
	inc ix
	dec d
	jp nz,l7be8
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
	jp l793d
.l7c19
	inc bc
	ld a,(l7ea0)
	res 2,a
	ld (l7ea0),a
	ld a,(bc)
	ld de,#0006
	call l7cb2
	ld de,l7f16
	add hl,de
	ld iy,l7e96
	ld (iy+#00),#00
	ld (iy+#01),#00
	ld d,#06
.l7c3b
	ld a,(hl)
	ld (iy+#04),a
	inc hl
	inc iy
	dec d
	jr nz,l7c3b
	xor a
	ld (l7ea2),a
	inc bc
	ld a,(l7dff)
	ld (l7ea3),a
	jp l793d
.l7c53
	push de
	cpl
	ld e,a
	ld d,#09
	ld a,(l7dff)
.l7c5b
	dec a
	jp m,l7c66
	scf
	rl e
	sla d
	jr l7c5b
.l7c66
	ld a,(l7e08)
	or d
	and e
	ld (l7e08),a
	pop de
	ret
.l7c70
	ld a,(l7dff)
	inc bc
	add a
	ld l,a
	ld h,#00
	ld a,(bc)
	inc bc
	ld de,l7ea4
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	ld hl,l7f22
	call l7ce1
	ld b,h
	ld c,l
	jp l793d
.l7c8c
	ld a,(l7dff)
	add a
	ld l,a
	ld h,#00
	ld de,l7ea4
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	jp l793d
.l7c9d
	inc bc
	call l7ca7
	ld a,(bc)
	inc bc
	ld (hl),a
	jp l793d
.l7ca7
	ld a,(l7dff)
	ld l,a
	ld h,#00
	ld de,l7eaa
	add hl,de
	ret
.l7cb2
	ld hl,#0000
	and a
	ret z
	push bc
	ld b,#08
.l7cba
	srl a
	jr nc,l7cbf
	add hl,de
.l7cbf
	sla e
	rl d
	djnz l7cba
	pop bc
	ret
.l7cc7
	push af
	ld hl,#0000
	ld a,b
	ld b,#10
.l7cce
	rl c
	rla
	adc hl,hl
	sbc hl,de
	jr nc,l7cd8
	add hl,de
.l7cd8
	ccf
	djnz l7cce
	rl c
	rla
	ld b,a
	pop af
	ret
.l7ce1
	push af
	add a
	add l
	ld l,a
	jr nc,l7ce8
	inc h
.l7ce8
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	pop af
	ret
.l7cee
	ld b,#f7
	ld c,#82
	out (c),c
	ld hl,l7e01
	ld a,#00
	ld d,#0b
.l7cfb
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
	jr nz,l7cfb
	ret
.l7d21
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
.l7de1
	dw l7b0a,l7b28,l7b8a,l7b13
	dw l7b86,l7b58,l7b99,l7bd0
	dw l7b72,l7c19,l7bbc,l7b33
	dw l7c70,l7c8c,l7c9d
.l7e01 equ $ + 2
.l7e00 equ $ + 1
.l7dff
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7e0c equ $ + 5
.l7e09 equ $ + 2
.l7e08 equ $ + 1
.l7e07
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
.l7e96 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7e97
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7ea4 equ $ + 5
.l7ea3 equ $ + 4
.l7ea2 equ $ + 3
.l7ea1 equ $ + 2
.l7ea0 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7ead equ $ + 6
.l7eaa equ $ + 3
	db #00,#00,#00,#00,#00,#00,#07,#00
	db #00,#00,#00,#fe,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#0a,#00,#00
	db #00,#00,#ff,#00,#00,#00,#00,#03
	db #00,#00,#00,#00,#03,#0a,#00,#00
	db #00,#fe,#ff,#00,#00,#00,#01,#02
	db #00,#00,#00,#01,#01,#00,#00,#00
	db #04,#fc,#00,#00,#00,#01,#01,#00
	db #00,#00,#01,#01,#01,#01,#00,#04
	db #fc,#03,#fd,#00,#01,#01,#01,#01
	db #00,#01,#01,#14,#01,#00,#00,#f1
	db #00,#00,#00,#03,#01,#00,#00,#00
	db #02,#01,#00,#00,#00,#fe,#01,#00
.l7f16 equ $ + 7
	db #00,#00,#02,#01,#00,#00,#00,#0a
	db #00,#00,#00,#01,#00,#1e,#00,#f7
.l7f22 equ $ + 3
	db #00,#01,#00,#4c,#7f,#9d,#7f,#ee
	db #7f,#1b,#80,#48,#80,#8f,#80,#4c
	db #7f,#4c,#7f,#4c,#7f,#4c,#7f,#4c
	db #7f,#4c,#7f,#4c,#7f,#4c,#7f,#4c
	db #7f,#4c,#7f,#4c,#7f,#4c,#7f,#4c
	db #7f,#4c,#7f,#4c,#7f,#87,#01,#81
	db #01,#80,#0d,#83,#05,#30,#2b,#24
	db #2b,#30,#24,#30,#2b,#24,#2b,#30
	db #24,#2e,#2b,#24,#2b,#2e,#24,#2e
	db #2b,#24,#2b,#2e,#24,#2e,#29,#24
	db #29,#2e,#24,#2e,#29,#24,#29,#2e
	db #24,#2d,#29,#24,#29,#2d,#24,#2d
	db #29,#24,#29,#2d,#24,#2b,#28,#24
	db #28,#2b,#24,#2b,#28,#24,#28,#2b
	db #24,#2b,#28,#24,#28,#2b,#24,#2b
	db #28,#24,#28,#2b,#24,#8d,#87,#05
	db #81,#01,#80,#0d,#83,#05,#30,#2d
	db #28,#30,#2d,#28,#30,#2d,#28,#30
	db #2d,#28,#2f,#2d,#28,#30,#2d,#28
	db #2d,#29,#24,#2d,#29,#24,#2d,#29
	db #24,#2d,#29,#24,#2f,#29,#24,#30
	db #29,#24,#2f,#2b,#26,#2f,#2b,#26
	db #2f,#2b,#26,#32,#2b,#26,#30,#2b
	db #26,#2f,#2b,#26,#2b,#28,#23,#2b
	db #28,#23,#2b,#28,#23,#2b,#28,#23
	db #2a,#28,#23,#2b,#28,#23,#8d,#87
	db #01,#81,#01,#80,#0f,#83,#0a,#3c
	db #37,#30,#3c,#37,#30,#3a,#37,#30
	db #3a,#37,#30,#3a,#35,#30,#3a,#35
	db #30,#39,#35,#30,#39,#35,#30,#37
	db #34,#30,#37,#34,#30,#37,#34,#30
	db #37,#34,#30,#8d,#87,#06,#81,#01
	db #80,#0f,#83,#0a,#18,#24,#30,#3c
	db #48,#54,#54,#48,#3c,#30,#24,#18
	db #1f,#24,#2b,#30,#37,#3c,#3c,#37
	db #30,#2b,#24,#1f,#3c,#37,#34,#30
	db #2b,#28,#24,#1f,#1c,#1f,#28,#24
	db #8d,#87,#01,#81,#01,#80,#0f,#83
	db #05,#28,#2d,#30,#28,#2d,#30,#28
	db #2d,#30,#83,#0f,#28,#2d,#30,#83
	db #0a,#24,#29,#2d,#24,#29,#2d,#24
	db #29,#2d,#83,#0f,#24,#29,#2d,#83
	db #0a,#26,#2b,#2f,#26,#2b,#2f,#26
	db #2b,#2f,#83,#0f,#26,#2b,#2f,#83
	db #0a,#23,#28,#2b,#23,#28,#2b,#23
	db #28,#2b,#83,#0f,#23,#28,#2b,#8d
	db #87,#01,#81,#01,#80,#0f,#83,#05
	db #2f,#2b,#28,#2b,#2f,#28,#2f,#2b
	db #28,#2b,#2f,#28,#30,#2d,#29,#2d
	db #30,#29,#30,#2d,#29,#2d,#30,#29
	db #2b,#28,#24,#28,#2b,#24,#2b,#28
	db #24,#28,#2b,#24,#2b,#28,#24,#28
	db #2b,#24,#2b,#28,#24,#28,#2b,#24
	db #8d
.l80c8
	db #85,#64,#8c,#00,#8c,#00,#8c,#00
	db #8c,#00,#8c,#01,#8c,#01,#8c,#00
	db #8c,#00,#8c,#00,#8c,#00,#8c,#01
	db #8c,#01,#8c,#00,#8c,#00,#8c,#05
	db #8c,#05,#82
.l80eb
	db #85,#64,#8e,#0c,#8c,#00,#8e,#0c
	db #8c,#02,#8c,#00,#8c,#03,#8e,#18
	db #8c,#01,#8e,#0c,#8c,#01,#8e,#0c
	db #8c,#00,#8e,#0c,#8c,#02,#8c,#00
	db #8c,#03,#8e,#18,#8c,#01,#8e,#0c
	db #8c,#01,#8e,#0c,#8c,#02,#8e,#18
	db #8c,#03,#8e,#0c,#8c,#06,#8e,#24
	db #8c,#06,#82
.l8126
	db #8e,#18,#8c,#00,#8c,#00,#8e,#24
	db #8c,#00,#8e,#18,#8c,#03,#8e,#0c
	db #8c,#01,#8e,#18,#8c,#01,#8e,#18
	db #8c,#00,#8c,#00,#8e,#24,#8c,#00
	db #8e,#18,#8c,#03,#8e,#0c,#8c,#01
	db #8e,#18,#8c,#01,#8e,#18,#8c,#00
	db #8c,#00,#8e,#0c,#8c,#05,#8e,#18
	db #8c,#05,#82
;
.init_music		; #7820 - added by Megachur
;
	ld a,#00
	ld de,l80c8
	call l78f1
	inc a
	ld de,l80eb
	call l78f1
	inc a
	ld de,l8126
	jp l78f1
;
.music_info
	db "Ice Breaker (1990)(Topo Soft)()",0
	db "",0

	read "music_end.asm"
