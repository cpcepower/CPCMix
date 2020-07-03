; Music of Saint And Greavsie (1989)(Grandslam)(Ben Daglish)()
; Ripped by Megachur the 21/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SAINTANG.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #2822
first_theme				equ 0
last_theme				equ 2

	read "music_header.asm"

.l2822
	db #80,#12,#0c,#19,#0c,#12,#0c,#19
	db #0c,#12,#0c,#19,#0c,#12,#0c,#19
	db #0c,#0b,#0c,#12,#06,#12,#06,#0b
	db #0c,#12,#06,#12,#06,#0d,#0c,#14
	db #06,#14,#06,#19,#0c,#14,#06,#14
.l284c equ $ + 2
	db #06,#ff,#82,#7f,#0c,#2a,#0c,#2a
	db #0c,#2c,#0c,#2e,#0c,#2c,#0c,#2a
	db #0c,#27,#18,#2c,#18,#29,#18,#25
	db #30,#2a,#0c,#2a,#0c,#2c,#0c,#2e
	db #0c,#2c,#0c,#2a,#0c,#27,#18,#2c
	db #18,#29,#48,#2a,#0c,#2a,#0c,#2c
	db #0c,#2e,#0c,#2c,#0c,#2a,#0c,#27
	db #18,#2c,#18,#29,#18,#25,#30,#27
	db #0c,#27,#0c,#27,#0c,#29,#0c,#2a
	db #0c,#2c,#0c,#2a,#18,#7f,#54,#ff
.l289a
	db #80,#0b,#0c,#06,#06,#12,#06,#0b
	db #0c,#12,#06,#12,#06,#0d,#0c,#14
	db #06,#14,#06,#0d,#0c,#14,#06,#14
	db #06,#12,#0c,#19,#0c,#12,#0c,#19
	db #0c,#12,#0c,#19,#06,#19,#06,#12
.l28c8 equ $ + 6
	db #0c,#19,#06,#19,#06,#ff,#81,#2a
	db #06,#25,#06,#22,#06,#25,#06,#22
	db #06,#1e,#06,#22,#06,#1e,#06,#19
	db #06,#1e,#06,#19,#06,#16,#06,#19
	db #06,#16,#06,#12,#06,#16,#06,#17
	db #06,#1b,#06,#1e,#06,#1b,#06,#1e
	db #06,#23,#06,#1e,#06,#23,#06,#14
	db #06,#19,#06,#1d,#06,#19,#06,#1d
	db #06,#20,#06,#1d,#06,#20,#06,#ff
.l290a
	db #17,#06,#1b,#06,#1e,#06,#23,#06
	db #27,#06,#2a,#06,#2f,#06,#33,#06
	db #19,#06,#1d,#06,#20,#06,#25,#06
	db #29,#06,#2c,#06,#31,#06,#35,#06
	db #1e,#06,#22,#06,#25,#06,#2a,#06
	db #2e,#06,#31,#06,#36,#06,#3a,#06
.l293d equ $ + 3
	db #2a,#30,#ff,#81,#28,#0c,#28,#0c
	db #2c,#0c,#28,#06,#2c,#0c,#2c,#06
.l2951 equ $ + 7
	db #28,#0c,#2c,#0c,#2f,#0c,#ff,#82
	db #1c,#24,#20,#18,#23,#24,#17,#24
	db #1b,#18,#1e,#24,#19,#24,#1d,#18
	db #20,#24,#1e,#24,#1c,#18,#20,#24
.l296b equ $ + 1
	db #ff,#80,#2f,#48,#2e,#0c,#2c,#0c
	db #2a,#54,#2a,#0c,#29,#3c,#29,#0c
.l2981 equ $ + 7
	db #27,#0c,#29,#0c,#2a,#60,#ff,#ff
.l2982
	db #81,#1e,#0c,#1e,#0c,#22,#0c,#1e
	db #06,#20,#0c,#20,#06,#1c,#0c,#20
.l2996 equ $ + 4
	db #0c,#23,#0c,#ff,#80,#27,#0c,#27
	db #0c,#27,#0c,#29,#0c,#2a,#0c,#2c
.l29a6 equ $ + 4
	db #0c,#2a,#18,#ff,#80,#23,#0c,#23
	db #0c,#23,#0c,#25,#0c,#25,#0c,#29
.l29b6 equ $ + 4
	db #0c,#25,#18,#ff,#80,#1e,#0c,#1e
	db #0c,#1e,#0c,#20,#0c,#20,#0c,#25
	db #0c,#22,#18,#ff
.l29c6
	db l2822,l284c,l289a,l28c8
	db l290a,l293d,l2951,l296b
	db l2981,l2982,l2996,l29a6
	db l29b6
;	db #22,#4c,#9a,#c8,#0a,#3d,#51,#6b
;	db #81,#82,#96,#a6,#b6
.l29d3
	db l2822/&100,l284c/&100,l289a/&100,l28c8/&100
	db l290a/&100,l293d/&100,l2951/&100,l296b/&100
	db l2981/&100,l2982/&100,l2996/&100,l29a6/&100
	db l29b6/&100
;	db #28,#28,#28,#28,#29,#29,#29,#29
;	db #29,#29,#29,#29,#29
.l29e0
	dw l29f2,l2a11,l2a18
	dw l2a25,l2a25,l2a25
	dw l2a26,l2a28,l2a2a
.l29f2
	db #83,#00,#02,#83,#00,#02,#05,#fe
	db #fb,#05,#fe,#fd,#05,#fe,#00,#09
	db #05,#fe,#fb,#05,#fe,#fd,#05,#fe
.l2a11 equ $ + 7
	db #00,#09,#83,#00,#02,#08,#ff,#01
.l2a18 equ $ + 6
	db #01,#07,#07,#01,#08,#ff,#83,#03
	db #04,#83,#03,#04,#82,#06,#83,#03
.l2a28 equ $ + 6
.l2a26 equ $ + 4
.l2a25 equ $ + 3
	db #04,#08,#ff,#ff,#0a,#ff,#0b,#ff
.l2a2c equ $ + 2
.l2a2a
	db #0c,#ff,#7f,#fd,#30,#f8,#66,#00
	db #00,#00,#00,#01,#7f,#fa,#00,#fa
	db #5a,#00,#00,#00,#00,#01,#50,#fb
	db #50,#fe,#70,#0a,#04,#03,#00,#01
.l2a4a
	db #04,#fe,#50,#fe,#7f,#00,#00,#00
	db #00,#02,#80,#00,#50,#04,#fe,#50
	db #fe,#7f,#00,#00,#00,#00,#02,#ff
	db #00,#50,#7f,#81,#01,#ff,#55,#00
	db #01,#23,#00,#02,#09,#00,#01,#0a
	db #fa,#01,#ff,#4b,#01,#00,#f8,#ff
	db #02,#c1,#00,#20,#7f,#ec,#0e,#f5
	db #55,#ff,#00,#00,#00,#03,#b8,#03
	db #01,#15,#f5,#02,#94,#55,#ff,#00
	db #00,#00,#02,#c2,#01,#01,#20,#fe
	db #4b,#e0,#55,#00,#02,#01,#00,#01
	db #c2,#01,#01,#20,#fe,#4b,#e0,#55
	db #04,#03,#01,#00,#01,#c2,#01,#01
.l2ab2
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04d4,#0470,#0431,#03f4
	dw #03dc,#0386,#0353,#0324
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
	dw #0018
.l2b62 equ $ + 6
.l2b61 equ $ + 5
.l2b60 equ $ + 4
.l2b5d equ $ + 1
.l2b5c
	db #3f,#fe,#f7,#09,#33,#2b,#53,#50
	db #52,#49,#54,#45,#5f,#4c,#49,#53
.l2b73 equ $ + 7
.l2b72 equ $ + 6
.l2b6f equ $ + 3
.l2b6e equ $ + 2
	db #54,#2b,#53,#fd,#ef,#12,#5f,#44
.l2b74
	db #45,#46,#29,#2c,#44,#45,#0d,#0a
.l2b81 equ $ + 5
.l2b80 equ $ + 4
	db #0d,#0a,#09,#4c,#44,#fb,#df,#24
.l2b86 equ $ + 2
.l2b85 equ $ + 1
.l2b84
	db #28,#53,#41,#56,#45,#5f,#46,#4c
.l2b93 equ $ + 7
.l2b92 equ $ + 6
	db #41,#47,#29,#0d,#0a,#09,#41,#00
.l2b94
	di
	ld a,ly
	ld (ix+#0f),a
	ld a,hy
	ld (ix+#10),a
	ld (ix+#03),l
	ld (ix+#04),h
	ld (ix+#06),c
	ld a,(iy+#05)
	ld (ix+#07),a
	ld a,(iy+#06)
	and #7f
	srl a
	jr nz,l2bb9
	ld a,#01
.l2bb9
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(l2b5c)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,l2be2
	and (ix+#00)
.l2be2
	bit 1,c
	jr z,l2be9
	and (ix+#01)
.l2be9
	ld (l2b5c),a
	bit 2,c
	jr nz,l2bfa
	ld hl,l2d3f
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l2bfa
	call l2df7
	ld a,(iy+#00)
	ld c,#0d
	ld a,(iy+#04)
	ld c,#0b
	inc c
	xor a
	ld (ix+#05),#ff
	jp l2e03
.l2c10
	call l2df7
	ld c,#07
	ld a,(l2b5c)
	or #3f
	ld (l2b5c),a
	call l2e0e
	xor a
	inc c
	call l2e0e
	inc c
	call l2e0e
	inc c
	call l2e0e
	ld a,#01
	inc c
	call l2e0e
	inc c
	xor a
	call l2e0e
	inc c
	call l2e0e
	ld (l2b6e),a
	ld (l2b80),a
	ld (l2b92),a
	ld (l2b62),a
	ld (l2b74),a
	ld (l2b86),a
	jp l2e03
.l2c51
	ld a,(l2b5c)
	and #3f
	cp #3f
	ret z
	ld ix,l2b5d
	call l2d0d
	ld ix,l2b6f
	call l2d0d
	ld ix,l2b81
	call l2d0d
	call l2df7
	ld ix,l2b5d
	ld c,#07
	ld a,(l2b5c)
	call l2e0e
	ld c,#00
	ld a,(l2b60)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,l2c8f
	ld (l2b93),a
.l2c8f
	call l2e0e
	inc c
	ld a,(l2b61)
	adc (ix+#0a)
	call l2e0e
	inc c
	ld a,(l2b72)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,l2cad
	ld (l2b93),a
.l2cad
	call l2e0e
	inc c
	ld a,(l2b73)
	adc (ix+#1c)
	call l2e0e
	inc c
	ld a,(l2b84)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,l2ccb
	ld (l2b93),a
.l2ccb
	call l2e0e
	inc c
	ld a,(l2b85)
	adc (ix+#2e)
	call l2e0e
	inc c
	ld a,(l2b93)
	rrca
	rrca
	rrca
	call l2e0e
	ld c,#08
	ld a,(l2b62)
	srl a
	srl a
	srl a
	call l2e0e
	inc c
	ld a,(l2b74)
	srl a
	srl a
	srl a
	call l2e0e
	inc c
	ld a,(l2b86)
	srl a
	srl a
	srl a
	call l2e0e
	jp l2e03
.l2d0d
	ld a,(l2b5c)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l2d2e
	cp #ff
	jr z,l2d2e
	dec (ix+#06)
.l2d2e
	call l2db5
	bit 2,(iy+#09)
	jp nz,l2dae
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.l2d3f
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l2d4e
	ld (ix+#05),a
	ret
.l2d4e
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l2d5e
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l2d5e
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l2d70
	cp (iy+#02)
	jr c,l2d70
	ld (ix+#05),a
	ret
.l2d70
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l2d80
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l2d80
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l2d8f
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l2d8f
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l2d9c
	ld (ix+#05),a
	ret
.l2d9c
	ld (ix+#05),#00
	ld a,(l2b5c)
	or (ix+#02)
	ld (l2b5c),a
	res 7,(ix+#11)
	ret
.l2dae
	ld a,(ix+#06)
	and a
	ret nz
	jr l2d9c
.l2db5
	ld a,(ix+#07)
	and a
	jr z,l2dc2
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.l2dc2
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld c,(ix+#0b)
	ld b,(ix+#0c)
	add hl,bc
	ld (ix+#09),l
	ld (ix+#0a),h
	dec (ix+#08)
	ret nz
	ld a,(iy+#06)
	and a
	ret z
	jp p,l2de6
	ld (ix+#07),#ff
	ret
.l2de6
	ld (ix+#08),a
	ld a,c
	cpl
	ld c,a
	ld a,b
	cpl
	ld b,a
	inc bc
	ld (ix+#0b),c
	ld (ix+#0c),b
	ret
.l2df7
	ld bc,#f782
	out (c),c
	ld de,#c000
	ld hl,#f680
	ret
.l2e03
	ld bc,#f40e
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ret
.l2e0e
	push bc
	ld b,#f4
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ld b,#f4
	out (c),a
	ld b,h
	out (c),l
	out (c),e
	pop bc
	ret
	jp l2eb3	; init
	jp l2f3b	; play
.l2e29
.music_end
	db #00
	jp l2e34	; init sound effects
;
.stop_music
;
	xor a
	ld (l2e29),a
	jp l2c10
.l2e34
	di
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,l2a4a
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,l2b5d
	call l2b94
	set 7,(ix+#11)
	ei
	ret
.l2e63 equ $ + 7
.l2e5d equ $ + 1
.l2e5c
	db #00,#4c,#09,#53,#4f,#55,#4e,#44
.l2e6b equ $ + 7
.l2e69 equ $ + 5
.l2e68 equ $ + 4
.l2e67 equ $ + 3
.l2e66 equ $ + 2
.l2e65 equ $ + 1
	db #5f,#46,#58,#0d,#0a,#0d,#0a,#24
.l2e72 equ $ + 6
.l2e71 equ $ + 5
	db #31,#35,#3a,#09,#4c,#08,#09,#43
.l2e7b equ $ + 7
.l2e7a equ $ + 6
.l2e78 equ $ + 4
	db #2c,#32,#0d,#0a,#0d,#0a,#09,#50
.l2e80 equ $ + 4
.l2e7e equ $ + 2
.l2e7d equ $ + 1
.l2e7c
	db #55,#53,#48,#09,#49,#59,#0d,#0a
.l2e87 equ $ + 3
.l2e86 equ $ + 2
	db #0d,#0a,#10,#31,#34,#3a,#09,#4c
.l2e93 equ $ + 7
.l2e92 equ $ + 6
.l2e91 equ $ + 5
.l2e90 equ $ + 4
.l2e8f equ $ + 3
.l2e8d equ $ + 1
	db #44,#09,#42,#2c,#31,#30,#0d,#0a
.l2e9b equ $ + 7
.l2e95 equ $ + 1
	db #24,#31,#33,#3a,#09,#50,#55,#53
	db #48,#09,#42,#43,#0d,#0a,#0d,#0a
	db #09,#44,#45,#43,#09,#42,#0d,#0a
	db #09,#53,#4c,#41,#09,#42,#0d
;
.init_music	; a=0
.l2eb3
;
	push af
	call l2c10
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l29e0
	add l
	ld l,a
	jr nc,l2ec4
	inc h
.l2ec4
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l2e5d),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l2e72),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l2e87),de
	xor a
	ld (l2e66),a
	ld (l2e7b),a
	ld (l2e90),a
	ld (l2e6b),a
	ld (l2e80),a
	ld (l2e95),a
	cpl
	ld (l2e67),a
	ld (l2e7c),a
	ld (l2e91),a
	ld a,#01
	ld (l2e65),a
	ld (l2e7a),a
	ld (l2e8f),a
	ld (l2e68),a
	ld (l2e7d),a
	ld (l2e92),a
	ld hl,l2e9b
	ld bc,#030a
.l2f13
	xor a
.l2f14
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l2f14
	djnz l2f13
	ld hl,l2a2c
	ld (l2e63),hl
	ld (l2e78),hl
	ld (l2e8d),hl
	ld a,#ff
	ld (l2e69),a
	ld (l2e7e),a
	ld (l2e93),a
	ld (l2e29),a
	ret
;
.play_music
.l2f3b
;
	call l2c51
	ld a,(l2e29)
	and a
	ret z
	ld a,(l2e69)
	ld hl,l2e7e
	or (hl)
	ld hl,l2e93
	or (hl)
	ld (l2e29),a
	jr nz,l2f65
	xor a
	ld (l2e29),a
	ld a,(l2b5c)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l2e29),a
	ret
.l2f65
	ld iy,l2e5c
	ld ix,l2b5d
	call l2f83
	ld iy,l2e71
	ld ix,l2b6f
	call l2f83
	ld iy,l2e86
	ld ix,l2b81
.l2f83
	call l30c4
	ld a,(iy+#0b)
	and a
	jr z,l3008
.l2f8c
	dec (iy+#09)
	jr z,l2fa3
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l3008
.l2fa3
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l2fad
	ld a,(hl)
	cp #80
	jr c,l2fe8
	cp #fe
	jr nz,l2fbf
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l2fad
.l2fbf
	cp #ff
	jr nz,l2fc8
	xor a
	ld (iy+#0d),a
	ret
.l2fc8
	cp #c0
	jr nc,l2fd5
	and #1f
	ld (iy+#09),a
	inc hl
	jp l2fad
.l2fd5
	and #07
	add (iy+#00)
	ld de,l2e9b
	add e
	ld e,a
	jr nc,l2fe2
	inc d
.l2fe2
	inc hl
	ldi
	jp l2fad
.l2fe8
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,l29c6
	add hl,bc
	ld e,(hl)
	ld hl,l29d3
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr l300e
.l3008
	ld e,(iy+#05)
	ld d,(iy+#06)
.l300e
	dec (iy+#0c)
	jr z,l3020
	ld a,(de)
	cp #80
	call nc,l308a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l3020
	ld a,(de)
	cp #80
	jr c,l3031
	call l308a
	ld a,(iy+#0b)
	and a
	jr z,l3020
	jp l2f8c
.l3031
	cp #7f
	jr z,l307d
	cp #7e
	jr nz,l3042
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l3056
.l3042
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,l2ab2
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l3056
	ld a,(iy+#0f)
	or #c0
	ld (iy+#14),a
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld c,a
	ld (iy+#05),e
	ld (iy+#06),d
	ld e,(iy+#07)
	ld a,(iy+#08)
	ld hy,a
	ld ly,e
	bit 7,(ix+#11)
	ret nz
	jp l2b94
.l307d
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l308a
	ld a,(de)
	cp #88
	jr nc,l30a8
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l2e9b
	add hl,bc
	ld c,(hl)
	ld hl,l2a2c
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l30a8
	cp #ff
	jr nz,l30b1
	ld (iy+#0b),#ff
	ret
.l30b1
	cp #c0
	jr nc,l30bc
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l30bc
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l30c4
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l30d8
	res 7,(iy+#14)
	ret
.l30d8
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l310c
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l310c
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l30fb
	inc h
	ld (iy+#11),h
.l30fb
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l3141
.l310c
	ld hl,#2324
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l3126
	bit 6,(iy+#14)
	jr nz,l3126
	ld (iy+#13),#01
	ret
.l3126
	res 6,(iy+#14)
	ld a,(hl)
	rrca
	rrca
	rrca
	and d
	ld (iy+#12),a
	ld a,(hl)
	and d
	inc a
	ld (iy+#13),a
	ld (iy+#10),l
	ld (iy+#11),h
	ld a,(iy+#0e)
.l3141
	add a
	ld hl,l2ab2
	add l
	ld l,a
	jr nc,l314a
	inc h
.l314a
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
	push hl
	push de
	push bc
	push ix
	push iy
	ld e,a
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	ld c,l
	ld b,h
	add hl,hl
	add hl,bc
	ld c,a
	ld b,#00
	add hl,bc
	ld bc,l2a4a
	add hl,bc
	push hl
	pop iy
	ld a,e
	cp #04
	jp nz,l317d
	ld ix,l2b6f
	jp l319f
.l317d
	ld a,(l31b3)
	inc a
	cp #03
	jp c,l3187
	xor a
.l3187
	ld (l31b3),a
	ld ix,l2b5d
	and a
	jp z,l319f
	ld ix,l2b6f
	cp #01
	jp z,l319f
	ld ix,l2b81
.l319f
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	call l2b94
	pop iy
	pop ix
	pop bc
	pop de
	pop hl
	ret
.l31b3
	nop
	call #4ae9
	and #03
	ld c,a
	add a
	add a
	add c
	add #13
	ld c,#01
	ld hl,#504d
	ld de,#4a38
	di
	call l31cd
	ei
	ret
.l31cd
	ld (l32bd),a
	ld a,c
	ld (l32c3),a
	ld (l3278),hl
	ld (l3275),de
	ld a,#01
	call l3249
	ld bc,#fb7e
.l31e3
	ld de,l32c8
	call l325b
	ld a,(hl)
	or a
	jr nz,l31e3
.l31ed
	ld a,(l32bd)
	ld (l32c1),a
	ld de,l32ba
	call l325b
.l31f9
	call l324f
	bit 5,(hl)
	jr z,l31f9
	ld a,(l32bd)
	inc hl
	cp (hl)
	jr nz,l31ed
	ld de,l32be
	call l325b
	ld a,(hl)
	and #38
	jr nz,l321a
	inc hl
	ld a,(hl)
	inc hl
	or (hl)
	and #7f
	jr z,l3230
.l321a
	call l324f
	ld de,l32b5
	call l325b
.l3223
	call l324f
	bit 4,(hl)
	jr nz,l321a
	bit 5,(hl)
	jr z,l3223
	jr l31ed
.l3230
	ld hl,l32bd
	inc (hl)
	ld a,#01
	ld (l32c3),a
.l323a equ $ + 1
	ld hl,#0000
	ld (l3278),hl
.l3240 equ $ + 1
	ld hl,#0000
	ld (l3275),hl
	ld a,h
	or l
	jr nz,l31ed
.l3249
	ld bc,#fa7e
	out (c),a
	ret
.l324f
	ld de,l32b8
	call l325b
	bit 3,(hl)
	ret z
	pop af
	jr l321a
.l325b
	ld a,(de)
.l325c
	ex af,af'
	inc de
.l325e
	in a,(c)
	add a
	jr nc,l325e
	add a
	jr c,l326b
	ld a,(de)
	inc c
	out (c),a
	dec c
.l326b
	ld a,#06
.l326d
	dec a
	jr nz,l326d
	ex af,af'
	dec a
	jr nz,l325c
.l3275 equ $ + 1
	ld de,#0000
.l3278 equ $ + 1
	ld hl,#0000
	jr l3282
.l327c
	dec de
	in a,(c)
	ld (hl),a
	inc hl
	dec c
.l3282
	in a,(c)
	jp p,l3282
	and #20
	jr z,l3295
	inc c
	ld a,d
	or e
	jr nz,l327c
	in a,(c)
	dec c
	jr l3282
.l3295
	ld (l3240),de
	ld (l323a),hl
	ld hl,l32cb
	push hl
.l32a0
	in a,(c)
	bit 4,a
	jr z,l32b2
	cp #c0
	jr c,l32a0
	inc c
	in a,(c)
	ld (hl),a
	inc hl
	dec c
	jr l32a0
.l32b2
	ex de,hl
	pop hl
	ret
.l32ba equ $ + 5
.l32b8 equ $ + 3
.l32b5
	db #02,#07,#00,#01,#08,#03,#0f,#00
.l32c3 equ $ + 6
.l32c1 equ $ + 4
.l32be equ $ + 1
.l32bd
	db #00,#09,#46,#00,#00,#00,#01,#02
.l32cb equ $ + 6
.l32c8 equ $ + 3
	db #0a,#2a,#ff,#02,#4a,#00,#00,#00
	db #00,#00,#00,#00,#00,#16,#0c,#14
	db #0b
;
.music_info
	db "Saint And Greavsie (1989)(Grandslam)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
