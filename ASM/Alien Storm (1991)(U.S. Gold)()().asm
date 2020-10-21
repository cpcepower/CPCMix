; Music of Alien Storm (1991)(U.S. Gold)()()
; Ripped by Megachur the 17/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ALIENSTO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #2883
FIRST_THEME				equ 1
LAST_THEME				equ 4

	read "music_header.asm"

.l2883
	db #00,#a6,#ae,#a6,#f3,#a6,#18,#a7
.l2891 equ $ + 6
	db #5d,#a7,#8e,#a7,#69,#a6,#d3,#a7
.l2895 equ $ + 2
	db #00,#00,#13,#20,#01,#00,#01,#0e
	db #0e,#0d,#0c,#0b,#0b,#0a,#0a,#0a
	db #0a,#09,#09,#09,#09,#09,#09,#07
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l28da equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#13
	db #5a,#01,#00,#01,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0b,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0b
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0b
	db #0b,#0a,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0a,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#0a,#0a,#09,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#08,#09,#09,#09,#09,#09,#09
	db #08,#08,#08,#07,#08,#08,#08,#08
	db #07,#06,#05,#04,#03,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#fe,#fe,#fe,#02,#02,#02
	db #02,#02,#02,#fe,#fe,#fe,#fe,#fe
	db #fe,#02,#02,#02,#02,#02,#02,#fe
	db #fe,#fe,#fd,#fd,#fd,#03,#03,#03
	db #03,#03,#03,#fd,#fd,#fd,#fe,#fe
	db #fe,#02,#02,#02,#00,#00,#00,#00
.l2993
	dw l2895,l28da,l7a21,l7a4f
	dw l7a4f,l7a00
.l299f
	dw l7a38,#0000
.l29a3
	db #80,#26,#0b,#27,#0b,#28,#0b,#29
	db #22,#fe
.l29ad
	db #81,#40,#0b,#3f,#0b,#3e,#0b,#39
	db #22,#fe
.l29b7
	db #81,#43,#0b,#42,#0b,#3e,#0b,#41
	db #22,#fe
.l29c1
	db #80,#29,#0b,#29,#0b,#29,#0b,#29
	db #0b,#29,#0b,#29,#0b,#29,#0b,#29
	db #0b,#29,#0b,#29,#0b,#29,#0b,#29
	db #0b,#29,#0b,#29,#0b,#29,#0b,#29
	db #16,#fe
.l29e3
	db #81,#39,#0b,#39,#0b,#39,#0b,#39
	db #0b,#39,#0b,#39,#0b,#39,#0b,#39
	db #21,#45,#06,#4c,#05,#4d,#0b,#4b
	db #0b,#47,#0b,#52,#0b,#53,#16,#fe
.l2a03
	db #81,#4d,#0b,#46,#0b,#4e,#0b,#47
	db #0b,#4b,#0b,#4e,#0b,#4d,#0b,#46
	db #16,#00,#0b,#41,#06,#48,#05,#49
	db #06,#00,#05,#47,#0b,#43,#0b,#4e
	db #0b,#4f,#16,#fe
.l2a27
	dw l7cfe,l7d13,l7d19,l7e55
	dw l7e5f,l7e64
	dw l29a3,l29ad,l29b7,l29c1
.l2a3d equ $ + 2
	dw l29e3,l2a03
.l2a41 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	dw #0e29,#0d5d,#0c9c,#0be7
	dw #0b3c,#0a9b,#0a02,#0973
	dw #08eb,#086b,#07f2,#0780
	dw #0714,#06ae,#064e,#05f4
	dw #059e,#054d,#0501,#04b9
	dw #0475,#0435,#03f9,#03c0
	dw #038a,#0357,#0327,#02fa
	dw #02cf,#02a7,#0281,#025d
	dw #023b,#021b,#01fc,#01e0
	dw #01c5,#01ac,#0194,#017d
	dw #0168,#0153,#0140,#012e
	dw #011d,#010d,#00fe,#00f0
	dw #00e2,#00d6,#00ca,#00be
	dw #00b4,#00aa,#00a0,#0097
	dw #008f,#0087,#007f,#0078
	dw #0071,#006b,#0065,#005f
	dw #005a,#0055,#0050,#004c
	dw #0047,#0043,#0040,#003c
	dw #0039,#0035,#0032,#0030
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010,#000f
.l2b1e equ $ + 5
.l2b1d equ $ + 4
.l2b1c equ $ + 3
.l2b1b equ $ + 2
.l2b1a equ $ + 1
.l2b19
	db #00,#00,#00,#00,#00,#00,#00
.l2b26 equ $ + 6
.l2b20
	db #00,#00,#00,#00,#00,#00,#ff,#00
.l2b28
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2b36 equ $ + 6
.l2b30
	db #00,#00,#00,#00,#00,#00,#ff,#00
.l2b38
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2b50
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2b98
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.real_init_music	; a=1,2 (main theme),3,4 c=1
.l2be0
;
	ld (l2b1a),a
	ld a,c
	ld (l2b1b),a
	ld a,(l2b1a)
	ld iy,l2b30
	cp #ff
	jp z,l2d9b
	dec a
	jp m,l2cf8
	call l2cf8
	ld a,#01
	ld (l2b19),a
	call l2c92
	ld a,(l2b1a)
	dec a
	ld e,a
	add a
	add e
	add a
	ld e,a
	ld d,#00
	ld hl,l2a27
	add hl,de
	ex de,hl
	ld hl,l2a3d
	sbc hl,de
	jp c,l2cf8
	ex de,hl
	ld ix,l2b50
	ld b,#03
.l2c21
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),e
	ld (ix+#0d),d
	ld (ix+#0a),#01
	ld de,#0018
	add ix,de
	djnz l2c21
	ret
.l2c37
	ld iy,l2b20
	ld ix,l2b98
	ld (l2b1c),a
	dec a
	jp m,l2d27
	add a
	ld e,a
	ld d,#00
	ld hl,l2883
	add hl,de
	ex de,hl
	ld hl,l2891
	sbc hl,de
	ret c
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld b,#03
	ld ix,l2b98
	ld a,(l2b1c)
	ld c,a
	ld de,#0018
.l2c67
	ld a,(ix+#09)
	cp c
	jr nz,l2c77
	ld a,(ix+#05)
	and a
	jr z,l2c77
	inc a
	jp nz,l2d45
.l2c77
	add ix,de
	djnz l2c67
	ld ix,l2b98
	ld de,#0004
	add hl,de
	ld c,(hl)
	and a
	sbc hl,de
	call l2cd4
	ld a,(ix+#05)
	cp c
	ret nc
	jp l2d45
.l2c92
	push ix
	ld ix,l2b98
	ld hl,l2b28
	ld a,(l2b1b)
	ld c,a
	xor a
	ld de,#0018
.l2ca3
	dec c
	jp m,l2cae
	ld (ix+#05),#ff
	ld (hl),#00
	inc hl
.l2cae
	add ix,de
	inc a
	cp #03
	jr c,l2ca3
	pop ix
	ret
.l2cb8
	push ix
	ld ix,l2b98
	ld b,#03
	ld de,#0018
.l2cc3
	ld a,(ix+#05)
	inc a
	jr nz,l2ccd
	ld (ix+#05),#00
.l2ccd
	add ix,de
	djnz l2cc3
	pop ix
	ret
.l2cd4
	push iy
	push ix
	pop iy
	ld de,#0018
	ld a,(iy+#05)
	cp (ix+#1d)
	jr c,l2ce7
	add iy,de
.l2ce7
	ld a,(iy+#05)
	cp (ix+#35)
	jr c,l2cf1
	add iy,de
.l2cf1
	push iy
	pop ix
	pop iy
	ret
.l2cf8
	ld ix,l2b50
	ld b,#03
	ld hl,l2b38
	ld de,#0018
	ld a,#00
.l2d06
	ld (hl),a
	inc hl
	ld (ix+#05),a
	ld (ix+#0e),a
	ld (ix+#0f),a
	ld (ix+#13),a
	ld (ix+#14),a
	ld (ix+#06),a
	add ix,de
	djnz l2d06
	ld (l2b1d),a
	ld (l2b19),a
	jp l2cb8
.l2d27
	ld b,#03
	ld ix,l2b98
	ld hl,l2b28
	ld de,#0018
.l2d33
	ld (hl),#00
	inc hl
	ld a,(ix+#05)
	inc a
	jr z,l2d40
	ld (ix+#05),#00
.l2d40
	add ix,de
	djnz l2d33
	ret
.l2d45
	ld (ix+#06),#00
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	inc hl
	ld (ix+#07),a
	ld a,(hl)
	inc hl
	ld (ix+#08),a
	ld a,(hl)
	inc hl
	ld (ix+#01),a
	ld a,(hl)
	inc hl
	ld (ix+#02),a
	ld a,(hl)
	ld (ix+#05),a
	ld a,(l2b1c)
	ld (ix+#09),a
	ld a,(ix+#07)
	ld c,#00
	rra
	rra
	rra
	rra
	rl c
	sla c
	sla c
	rra
	rl c
	ld b,#09
	ld e,(ix+#00)
.l2d84
	dec e
	jp m,l2d8e
	sla b
	sla c
	jr l2d84
.l2d8e
	ld a,c
	xor b
	ld b,a
	ld a,c
	cpl
	and (iy+#07)
	or b
	ld (iy+#07),a
	ret
.l2d9b
	ld a,#10
	ld (l2b1d),a
	ld a,c
	ld (l2b20),a
	ld a,#00
	ld (l2b1e),a
	ret
.l2daa
	ld a,(l2b1d)
	and a
	ret z
	ld a,(l2b1e)
	dec a
	ld (l2b1e),a
	jp p,l2dcf
	ld a,(l2b20)
	ld (l2b1e),a
	ld a,(l2b1d)
	dec a
	ld (l2b1d),a
	jr nz,l2dcf
	ld a,#00
	ld c,#00
	jp l2be0
.l2dcf
	ld hl,l2b38
	ld b,#03
.l2dd4
	ld d,(hl)
	ld a,(l2b1d)
	ld e,a
	xor a
	dec e
	jp m,l2de3
.l2dde
	add d
	dec e
	jp p,l2dde
.l2de3
	srl a
	srl a
	srl a
	srl a
	ld (hl),a
	inc hl
	djnz l2dd4
	ret
.l2df0
	ld b,#03
.l2df2
	ld a,(ix+#05)
	and a
	jp z,l2e97
	inc a
	jp z,l2e97
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(ix+#06)
	add #05
	ld e,a
	ld d,#00
	add hl,de
	bit 0,(ix+#07)
	jr z,l2e50
	ld a,(hl)
	cp #fe
	jr nz,l2e2a
	inc (ix+#06)
	inc (ix+#06)
	inc hl
	ld a,(hl)
	push ix
	push bc
	call l2c37
	pop bc
	pop ix
	jr l2df2
.l2e2a
	cp #ff
	jr nz,l2e34
	ld (ix+#06),#00
	jr l2df2
.l2e34
	ld c,a
	ld a,(ix+#00)
	add #08
	ld (l2e3f),a
.l2e3f equ $ + 2
	ld (iy+#00),c
	ld a,c
	and a
	jr nz,l2e4a
	ld (ix+#05),#00
	jr l2e97
.l2e4a
	ld e,(ix+#08)
	ld d,#00
	add hl,de
.l2e50
	bit 1,(ix+#07)
	jr z,l2e8a
	ld e,(hl)
	ld d,#00
	bit 7,e
	jr z,l2e5e
	dec d
.l2e5e
	push hl
	ld l,(ix+#01)
	ld h,(ix+#02)
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	pop hl
	ld a,(ix+#00)
	add a
	ld (l2e7d),a
	inc a
	ld (l2e83),a
	ld a,(ix+#01)
.l2e7d equ $ + 2
	ld (iy+#00),a
	ld a,(ix+#02)
.l2e83 equ $ + 2
	ld (iy+#00),a
	ld e,(ix+#08)
	ld d,#00
	add hl,de
.l2e8a
	bit 2,(ix+#07)
	jr z,l2e94
	ld a,(hl)
	ld (iy+#06),a
.l2e94
	inc (ix+#06)
.l2e97
	ld de,#0018
	add ix,de
	dec b
	jp nz,l2df2
	ret
;
.play_music
.l2ea1
;
	call l3076
	ld a,#ff
	ld (l2b26),a
	ld (l2b36),a
	ld iy,l2b30
	ld ix,l2b50
	call l2df0
	ld iy,l2b20
	ld ix,l2b98
	call l2df0
	call l2daa
	call l2ee9
	ret
.l2ec9
	ld a,e
	ld c,d
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
	ret
.l2ee9
	ld iy,l2b20
	ld ix,l2b50
	ld e,#00
	call l2f72
	ld e,#01
	call l2f72
	ld e,#08
	call l2f72
	ld bc,#0018
	add ix,bc
	ld e,#02
	call l2f72
	ld e,#03
	call l2f72
	ld e,#09
	call l2f72
	ld bc,#0018
	add ix,bc
	ld e,#04
	call l2f72
	ld e,#05
	call l2f72
	ld e,#0a
	call l2f72
	ld e,#06
	ld a,(iy+#06)
	cp #ff
	jr nz,l2f38
	ld a,(iy+#16)
	cp #ff
	jr z,l2f3c
.l2f38
	ld d,a
	call l2ec9
.l2f3c
	ld ix,l2b50
	ld b,#03
	ld c,#09
	ld h,#00
	ld de,#0018
.l2f49
	ld l,(iy+#17)
	ld a,(ix+#4d)
	and a
	jr z,l2f5a
	inc a
	jr z,l2f5a
	ld l,(iy+#07)
	jr l2f62
.l2f5a
	ld a,(ix+#05)
	and a
	jr nz,l2f62
	ld l,#ff
.l2f62
	ld a,l
	and c
	sla c
	or h
	ld h,a
	add ix,de
	djnz l2f49
	ld d,h
	ld e,#07
	jp l2ec9
.l2f72
	ld a,e
	ld (l2f89),a
	add #10
	ld (l2f7d),a
.l2f7d equ $ + 2
	ld d,(iy+#1a)
	ld a,(ix+#4d)
	and a
	jr z,l2f8a
	inc a
	jr z,l2f8a
.l2f89 equ $ + 2
	ld d,(iy+#0a)
.l2f8a
	jp l2ec9
.l2f8d
	push ix
	pop iy
	ld a,(ix+#13)
	and a
	jr z,l2f9c
	ld de,#0006
	add iy,de
.l2f9c
	ld l,(iy+#0c)
	ld h,(iy+#0d)
	ld e,(iy+#0e)
	ld d,#00
	add hl,de
	bit 7,(hl)
	jr nz,l2fb3
	inc (iy+#0e)
	inc (iy+#0e)
	ret
.l2fb3
	ld a,(hl)
	cp #94
	jp z,l3003
	cp #95
	jp z,l3014
	cp #9d
	jp z,l3037
	cp #9e
	jp z,l304b
	cp #ff
	jp z,l305f
	cp #fe
	jp z,l306e
	res 7,a
	add a
	ld e,a
	ld d,#00
	ld hl,l2993
	add hl,de
	ex de,hl
	ld hl,l299f
	sbc hl,de
	jr nc,l2fe7
	ld de,l2993
.l2fe7
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	push bc
	push iy
	ld iy,l2b30
	call l2d45
	ld (ix+#09),#ff
	pop iy
	pop bc
	inc (iy+#0e)
	jp l2f8d
.l3003
	ld (iy+#0e),#00
	dec (ix+#0b)
	jp nz,l2f8d
	ld (ix+#13),#00
	jp l2f8d
.l3014
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	inc hl
	ld a,(hl)
	ld (ix+#17),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld a,(hl)
	ld (ix+#13),a
	ld a,(ix+#0e)
	add #05
	ld (ix+#0e),a
	ld (ix+#14),#00
	jp l2f8d
.l3037
	dec (iy+#0f)
	jr nz,l3042
	inc (iy+#0e)
	jp l2f8d
.l3042
	ld a,(iy+#10)
	ld (iy+#0e),a
	jp l2f8d
.l304b
	inc (iy+#0e)
	inc (iy+#0e)
	ld a,(iy+#0e)
	ld (iy+#10),a
	inc hl
	ld a,(hl)
	ld (iy+#0f),a
	jp l2f8d
.l305f
	pop bc
	pop bc
	ld a,(l2b1b)
	ld c,a
	ld a,(l2b1a)
	call l2be0
	jp l2ea1
.l306e
	pop bc
	pop bc
	call l2cf8
	jp l2ea1
.l3076
	ld a,(l2b19)
	and a
	ret z
	ld ix,l2b50
	ld b,#03
.l3081
	dec (ix+#0a)
	jr nz,l30b3
	call l2f8d
	ld a,(hl)
	and a
	jr z,l3090
	add (iy+#11)
.l3090
	add a
	ld e,a
	ld d,#00
	ld iy,l2a41
	add iy,de
	ld e,(iy+#00)
	ld d,(iy+#01)
	ld (ix+#02),d
	ld (ix+#01),e
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	ld (ix+#06),#00
	ld (ix+#05),#01
.l30b3
	ld de,#0018
	add ix,de
	djnz l3081
	ret
.l7a00
	db #0d,#0e,#01
	db #00,#01,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#02,#04,#06,#08,#0c,#0e,#10
.l7a21 equ $ + 6
	db #12,#14,#16,#18,#1a,#1c,#13,#09
	db #01,#00,#01,#0b,#0a,#09,#09,#08
	db #07,#06,#05,#00,#01,#01,#ff,#ff
.l7a38 equ $ + 5
	db #ff,#ff,#01,#01,#00,#13,#09,#01
	db #00,#01,#0c,#0c,#0b,#0b,#0a,#09
	db #08,#07,#00,#00,#01,#ff,#01,#ff
.l7a4f equ $ + 4
	db #01,#ff,#00,#00,#13,#02,#01,#00
	db #01,#00,#00,#00,#00
.l7a58
	db #80,#24,#08,#00,#0a,#24,#08,#00
	db #0a,#24,#08,#00,#04,#85,#36,#06
	db #00,#06,#80,#24,#06,#00,#06,#24
	db #06,#00,#06,#24,#06,#00,#06,#94
.l7a78
	db #81,#3c,#60,#84,#00,#60,#00,#60
	db #00,#60,#81,#3c,#06,#3e,#06,#3f
	db #48,#3a,#60,#38,#54,#3f,#0c,#37
	db #60,#37,#06,#38,#06,#3a,#48,#3c
	db #0c,#43,#6c,#41,#54,#39,#60,#35
	db #06,#37,#06,#38,#48,#35,#0c,#3a
	db #54,#3c,#0c,#43,#54,#3f,#0c,#3a
.l7ab4 equ $ + 4
	db #54,#3a,#18,#94,#82,#4b,#01,#00
	db #05,#48,#01,#00,#05,#46,#01,#00
	db #05,#43,#01,#00,#05,#48,#01,#00
	db #05,#41,#01,#00,#05,#43,#01,#00
	db #05,#46,#01,#00,#05,#4b,#01,#00
	db #05,#48,#01,#00,#05,#46,#01,#00
	db #05,#43,#01,#00,#05,#46,#01,#00
	db #05,#41,#01,#00,#05,#43,#01,#00
.l7af6 equ $ + 6
	db #05,#46,#01,#00,#05,#94,#4a,#01
	db #00,#05,#3e,#01,#00,#05,#41,#01
	db #00,#05,#43,#01,#00,#05,#46,#01
	db #00,#05,#4a,#01,#00,#05,#48,#01
	db #00,#05,#46,#01,#00,#05,#3e,#01
	db #00,#05,#43,#01,#00,#05,#46,#01
	db #00,#05,#48,#01,#00,#05,#41,#01
	db #00,#05,#43,#01,#00,#05,#46,#01
.l7b37 equ $ + 7
	db #00,#05,#43,#01,#00,#05,#94,#3e
	db #01,#00,#05,#43,#01,#00,#05,#4a
	db #01,#00,#05,#41,#01,#00,#05,#43
	db #01,#00,#05,#48,#01,#00,#05,#46
	db #01,#00,#05,#3e,#01,#00,#05,#43
	db #01,#00,#05,#46,#01,#00,#05,#41
	db #01,#00,#05,#43,#01,#00,#05,#48
	db #01,#00,#05,#3e,#01,#00,#05,#43
	db #01,#00,#05,#46,#01,#00,#05,#94
.l7b78
	db #3e,#01,#00,#05,#45,#01,#00,#05
	db #4a,#01,#00,#05,#4d,#01,#00,#05
	db #45,#01,#00,#05,#4a,#01,#00,#05
	db #48,#01,#00,#05,#45,#01,#00,#05
	db #4a,#01,#00,#05,#48,#01,#00,#05
	db #41,#01,#00,#05,#45,#01,#00,#05
	db #48,#01,#00,#05,#4a,#01,#00,#05
	db #4d,#01,#00,#05,#3e,#01,#00,#05
.l7bb9 equ $ + 1
	db #94,#45,#01,#00,#05,#48,#01,#00
	db #05,#4a,#01,#00,#05,#4d,#01,#00
	db #05,#41,#01,#00,#05,#45,#01,#00
	db #05,#48,#01,#00,#05,#4a,#01,#00
	db #05,#4d,#01,#00,#05,#41,#01,#00
	db #05,#45,#01,#00,#05,#48,#01,#00
	db #05,#4a,#01,#00,#05,#41,#01,#00
	db #05,#45,#01,#00,#05,#48,#01,#00
.l7bfa equ $ + 2
	db #05,#94,#41,#01,#00,#05,#44,#01
	db #00,#05,#41,#01,#00,#05,#48,#01
	db #00,#05,#44,#01,#00,#05,#41,#01
	db #00,#05,#3c,#01,#00,#05,#41,#01
	db #00,#05,#48,#01,#00,#05,#44,#01
	db #00,#05,#41,#01,#00,#05,#4a,#01
	db #00,#05,#48,#01,#00,#05,#44,#01
	db #00,#05,#41,#01,#00,#05,#3c,#01
.l7c3b equ $ + 3
	db #00,#05,#94,#41,#01,#00,#05,#3c
	db #01,#00,#05,#41,#01,#00,#05,#44
	db #01,#00,#05,#48,#01,#00,#05,#3c
	db #01,#00,#05,#41,#01,#00,#05,#4d
	db #01,#00,#05,#3c,#01,#00,#05,#41
	db #01,#00,#05,#44,#01,#00,#05,#48
	db #01,#00,#05,#3c,#01,#00,#05,#41
	db #01,#00,#05,#44,#01,#00,#05,#48
.l7c7c equ $ + 4
	db #01,#00,#05,#94,#3e,#01,#00,#05
	db #41,#01,#00,#05,#48,#01,#00,#05
	db #3c,#01,#00,#05,#41,#01,#00,#05
	db #44,#01,#00,#05,#48,#01,#00,#05
	db #41,#01,#00,#05,#43,#01,#00,#05
	db #44,#01,#00,#05,#48,#01,#00,#05
	db #41,#01,#00,#05,#4d,#01,#00,#05
	db #48,#01,#00,#05,#41,#01,#00,#05
.l7cbd equ $ + 5
	db #46,#01,#00,#05,#94,#41,#01,#00
	db #05,#44,#01,#00,#05,#46,#01,#00
	db #05,#3c,#01,#00,#05,#41,#01,#00
	db #05,#48,#01,#00,#05,#41,#01,#00
	db #05,#46,#01,#00,#05,#41,#01,#00
	db #05,#44,#01,#00,#05,#48,#01,#00
	db #05,#3c,#01,#00,#05,#41,#01,#00
	db #05,#44,#01,#00,#05,#4d,#01,#00
	db #05,#41,#01,#00,#05,#94
.l7cfe
	db #95,#08,#00
	dw l7a58
	db #95,#02,#fb
	dw l7a58
	db #95,#02,#02
	dw l7a58
	db #95,#04,#05
	dw l7a58
	db #ff
.l7d13
	db #95,#01,#00
	dw l7a78
	db #ff
.l7d19
	db #95,#08,#00
	dw l7ab4
	db #95,#01,#00
	dw l7af6
	db #95,#01,#00
	dw l7b37
	db #95,#01,#00
	dw l7b78
	db #95,#01,#00
	dw l7bb9
	db #95,#01,#00
	dw l7bfa
	db #95,#01,#00
	dw l7c3b
	db #95,#01,#00
	dw l7c7c
	db #95,#01,#00
	dw l7cbd
	db #ff
.l7d47
	db #86,#50,#0c,#00,#06,#50,#0c,#00
	db #06,#4e,#0c,#3a,#06,#00,#2a,#4e
	db #0c,#00,#06,#4e,#06,#00,#0c,#4d
.l7d65 equ $ + 6
	db #0c,#4e,#06,#00,#2b,#94,#50,#0c
	db #00,#06,#50,#0c,#00,#06,#4e,#0c
	db #00,#0c,#81,#54,#06,#59,#06,#5c
	db #06,#60,#36,#5e,#06,#60,#06,#5e
	db #2a,#00,#06,#57,#06,#59,#06,#5a
	db #06,#5c,#06,#5a,#06,#59,#06,#57
	db #06,#5a,#06,#00,#06,#59,#06,#00
	db #07,#57,#06,#00,#06,#55,#06,#00
	db #06,#53,#06,#54,#4e,#49,#06,#48
	db #06,#46,#06,#48,#54,#00,#49,#51
	db #06,#00,#06,#52,#07,#51,#03,#50
	db #03,#4f,#03,#4e,#03,#4d,#03,#4c
.l7dc1 equ $ + 2
	db #03,#ff,#80,#20,#18,#85,#36,#0c
	db #80,#29,#0c,#2a,#18,#85,#36,#06
	db #80,#20,#06,#20,#06,#20,#06,#20
	db #18,#85,#36,#0c,#80,#29,#0c,#2a
.l7de5 equ $ + 6
	db #18,#85,#36,#19,#80,#94,#82,#00
	db #0c,#37,#06,#38,#0c,#37,#06,#38
	db #0c,#00,#0c,#2c,#06,#00,#11,#37
	db #06,#38,#0c,#37,#06,#38,#06,#00
	db #06,#37,#06,#38,#06,#00,#06,#38
.l7e0b equ $ + 4
	db #06,#00,#32,#94,#44,#0c,#44,#0c
	db #44,#06,#44,#0c,#44,#0c,#42,#06
	db #42,#0d,#42,#0c,#42,#06,#42,#06
	db #42,#0c,#42,#0c,#42,#0c,#41,#06
	db #42,#0c,#42,#06,#42,#0c,#42,#0c
.l7e34 equ $ + 5
	db #42,#06,#42,#06,#94,#44,#0c,#44
	db #0c,#44,#06,#44,#0c,#44,#0c,#42
	db #06,#42,#0d,#42,#0c,#3c,#06,#3b
	db #06,#3c,#0c,#44,#06,#00,#13,#45
	db #0c,#46,#0c,#00,#25,#ff
.l7e55
	db #95,#04,#f4
	dw l7d47
	db #95,#01,#f4
	dw l7d65
.l7e5f
	db #95,#0a,#00
	dw l7dc1
.l7e64
	db #95,#04,#f4
	dw l7de5
	db #95,#02,#f4
	dw l7e0b
	db #95,#01,#f4
	dw l7e34
	db #00
;
.init_music		; a=1,2 (main theme),3,4 c=1 added by Megachur
;
	ld c,1
	jp real_init_music
;
.music_info
	db "Alien Storm (1991)(U.S. Gold)()",0
	db "",0

	read "music_end.asm"
