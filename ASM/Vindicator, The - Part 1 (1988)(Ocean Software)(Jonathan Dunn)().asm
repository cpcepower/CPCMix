; Music of Vindicator, The - Part 1 (1988)(Ocean Software)(Jonathan Dunn)()
; Ripped by Megachur the 01/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "VINDICAT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #2596
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

;
.real_init_music
.l2596
;
	ld hl,l2bc7
	ld b,#00
	ld (hl),b
	ld hl,l2ddd
	add hl,bc
	ld a,(hl)
	ld (l2677),a
	inc hl
	ld ix,l25e7
	ld c,#21
	ld a,#03
.l25ad
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
	ld (ix+#03),e
	ld (ix+#04),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	pop hl
	ld (ix+#01),e
	ld (ix+#02),d
	add ix,bc
	dec a
	jr nz,l25ad
	ld (l2916),a
	inc a
	ld (l264a),a
	ld (l2bc6),a
	ret
.l25e7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09
.l2608
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12
.l2629
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #24
.l264a
	db #00
;
.play_music	;l264b
;
	call l2c19
	ld a,(l2bc6)
	and a
	jp z,l26a7
.l2656 equ $ + 1
	ld a,#00
	ld (l26a3),a
	ld hl,l264a
	dec (hl)
	jr nz,l267b
	ld b,(hl)
	ld ix,l25e7
	call l2825
	ld ix,l2608
	call l2825
	ld ix,l2629
	call l2825
.l2677 equ $ + 1
	ld a,#01
	ld (l264a),a
.l267b
	ld ix,l25e7
	call l28e3
	ld (l29f3),hl
	ld (l29fb),a
	ld ix,l2608
	call l28e3
	ld (l29f5),hl
	ld (l29fc),a
	ld ix,l2629
	call l28e3
	ld (l29f7),hl
	ld (l29fd),a
.l26a3 equ $ + 1
	ld a,#00
	ld (l29f9),a
.l26a7
	ld a,(l2bc7)
	and a
	jr z,l26d7
	ld hl,(l2a00)
	ld (l29f3),hl
	ld hl,(l2a04)
	ld (l29f7),hl
	ld a,(l2a06)
	ld (l29f9),a
	ld a,(l29fa)
.l26c2
	or #2d
	ld hl,l2a07
	and (hl)
	ld (l29fa),a
	ld a,(l2a08)
	ld (l29fb),a
	ld a,(l2a0a)
	ld (l29fd),a
.l26d7
	ld a,(l2bc6)
	ld hl,l2bc7
	or (hl)
	ret z
	ld hl,l29fe
	ld d,#0b
.l26e4
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,l26e4
	ret
.l2705
	ld de,#0d00
.l2708
	call l2712
	dec d
	jp p,l2708
	ld de,#073f
.l2712
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	ret
;
.stop_music
;
.l272d
	xor a
	ld (l2bc6),a
	ld (l2bc7),a
	call l2705
	xor a
	ld (l29fb),a
	ld (l29fc),a
	ld (l29fd),a
	ret
;
.jumps_table
;
	db #c9
	db #b1
	db #b5
	db #ba
	db #78
	db #a7
	db #a2
	db #0f
	db #91
	db #89
	db #4e
	db #38
	db #60
	db #b6
	db #04
	db #c3
	db #c8
	db #cd
	pop hl
	jp l272d
	ld c,(ix+#05)
	ld b,(ix+#06)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l277a
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l277a
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l2833
	ld a,(ix+#20)
	ld c,a
	and #07
	ld hl,l29bf
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l2833
	ld a,(ix+#20)
	ld c,a
	and #38
	ld hl,l29bf
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l2833
	ld hl,l29bf
	ld a,(ix+#20)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l2833
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l2833
	ld a,(de)
	inc de
	ld (l2916),a
	jr l2833
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l2833
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l2833
	ld (ix+#1d),b
	jr l2833
	ld (ix+#1d),#40
	jr l2833
	ld (ix+#1d),#c0
	jr l2833
	set 1,(ix+#00)
	jr l2833
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l2862
	res 5,(ix+#00)
	jr l2862
	ld (ix+#1f),#ff
	jr l2833
	ld (ix+#1f),b
	jr l2833
.l2825
	dec (ix+#10)
	jr nz,l287d
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l2833
	ld a,(de)
	inc de
	and a
	jp m,l288e
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l2845
	ld (l2656),a
.l2845
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
	set 5,(ix+#00)
.l2862
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	ret z
	ld a,(l2bc7)
	and a
	ret nz
	ld (ix+#1f),#ff
	ret
.l287d
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l288a
	inc (ix+#12)
	ret
.l288a
	dec (ix+#12)
	ret
.l288e
	cp #b8
	jr c,l28db
	add #20
	jr c,l28bc
	add #10
	jr c,l28c3
	add #10
	jr nc,l28b4
	ld c,a
	ld hl,l2acc
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l2833
.l28b4
	add #09
	ld (l2677),a
	jp l2833
.l28bc
	inc a
	ld (ix+#11),a
	jp l2833
.l28c3
	ld hl,l2b13
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#14),l
	ld (ix+#15),h
	dec hl
	ld a,(hl)
	ld (ix+#0f),a
	jp l2833
.l28db
	ld hl,jumps_table-&80	;l26c2
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l28e3
	ld c,(ix+#00)
	bit 5,c
	jr z,l2915
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l290f
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l290f
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l290f
	ld a,(ix+#18)
	ld (ix+#13),a
.l2916 equ $ + 1
.l2915
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l292f
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l292f
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l2a0c
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l2990
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l2959
	bit 0,c
	jr nz,l2977
.l2959
	bit 5,l
	jr nz,l2969
	sub (ix+#1b)
	jr nc,l2974
	set 5,(ix+#1d)
	sub a
	jr l2974
.l2969
	add (ix+#1b)
	cp b
	jr c,l2974
	res 5,(ix+#1d)
	ld a,b
.l2974
	ld (ix+#1c),a
.l2977
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l2982
	dec d
.l2982
	add #a0
	jr c,l298e
.l2986
	sla e
	rl d
	add #18
	jr nc,l2986
.l298e
	add hl,de
	ex de,hl
.l2990
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l29bb
	ld b,(ix+#0e)
	djnz l29b8
	ld c,(ix+#0d)
	bit 7,c
	jr z,l29a7
	dec b
.l29a7
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l29bb
.l29b8
	ld (ix+#0e),b
.l29bb
	cpl
	and #03
.l29bf equ $ + 1
	ld a,#38
	jr nz,l29cc
	ld a,(l2656)
	xor #08
	ld (l26a3),a
	ld a,#07
.l29cc
	ld hl,l29fa
	xor (hl)
	and (ix+#20)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l29ee
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#20)
	and #38
	cpl
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l26a3),a
.l29ee
	ex de,hl
	ld a,(ix+#13)
	ret
.l29fa equ $ + 7
.l29f9 equ $ + 6
.l29f7 equ $ + 4
.l29f5 equ $ + 2
.l29f3
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l2a01 equ $ + 6
.l2a00 equ $ + 5
.l29fe equ $ + 3
.l29fd equ $ + 2
.l29fc equ $ + 1
.l29fb
	db #0f,#0f,#0f,#00,#00,#14,#00,#00
.l2a0a equ $ + 7
.l2a08 equ $ + 5
.l2a07 equ $ + 4
.l2a06 equ $ + 3
.l2a04 equ $ + 1
	db #00,#03,#1c,#14,#fa,#10,#00,#10
	db #00
.l2a0c
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010b,#00fc
	dw #00ef,#00e1,#00d6,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0085,#007e
	dw #0077,#0070,#006b,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0042,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
	dw #000e,#000e,#000d,#000c
	dw #000b,#000b,#000a,#0009
	dw #0009,#0008,#0008,#0007
.l2acc
	db #0e,#0e,#11,#14,#16,#17,#18,#19
	db #1b,#1e,#2c,#2e,#31,#37,#80,#0c
	db #00,#18,#80,#00,#03,#07,#8c,#18
	db #0c,#80,#00,#8c,#0c,#80,#18,#80
	db #00,#03,#87,#00,#03,#07,#8c,#0c
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#80,#00,#04
	db #8c,#0c,#00,#00,#80,#18,#00,#00
	db #00,#00,#00,#80,#04,#07,#8c
.l2b13
	dw l2b2a,l2b3a,l2b4d,l2b59
	dw l2b63,l2b73,l2b81,l2b8c
	dw l2ba0,l2bb3,l2bb6
.l2b2a equ $ + 1
	db #02,#0f,#0d,#0c,#0b,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#87
.l2b3a equ $ + 1
	db #03,#0f,#04,#0e,#04,#0d,#04,#0c
	db #04,#0b,#04,#0a,#04,#09,#04,#08
	db #07,#06,#87
.l2b4d equ $ + 1
	db #00,#0f,#0b,#0d,#0f,#05,#0a,#09
	db #07,#06,#00,#87
.l2b59 equ $ + 1
	db #01,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#87
.l2b63 equ $ + 1
	db #04,#0f,#0e,#05,#04,#0d,#0c,#0b
	db #04,#05,#03,#02,#09,#08,#07,#87
.l2b73 equ $ + 1
	db #04,#0a,#0c,#0d,#0e,#0f,#0d,#0c
	db #0b,#0a,#09,#08,#07,#87
.l2b81 equ $ + 1
	db #02,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#87
.l2b8c equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#09,#08
	db #07,#06,#09,#08,#07,#06,#05,#04
	db #02,#01,#00,#87
.l2ba0 equ $ + 1
	db #04,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#01,#08,#07
	db #06,#05,#87
.l2bb3 equ $ + 1
	db #00,#0c,#87
.l2bb6 equ $ + 1
	db #01,#0f,#0d,#0c,#0b,#0a,#09,#0b
	db #0a,#06,#05,#04,#03,#02,#01,#00
	db #87
.l2bc6
.music_end
	db #00
.l2bc7
	db #01

	ld hl,l2bc7
	ld (hl),#00
	ld hl,l2cb4
	add a
	add l
	ld l,a
	jr nc,l2bd6
	inc h
.l2bd6
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l2dab
.l2bde
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l2bde
	ld a,(l2dac)
	ld (l2dbc),a
	ld hl,(l2dad)
	ld (l2a00),hl
	ld de,(l2daf)
	ld (l2a04),de
	ld a,l
	ld (l2a06),a
	ld a,(l2db2)
	ld (l2a07),a
	ld a,(l2db1)
	ld e,a
	ld d,#0c
	call l2712
	ld a,(l2dbb)
	ld e,a
	ld d,#0d
	call l2712
	ld hl,l2bc7
	inc (hl)
	ret
.l2c19
	call l2dbe
	ld a,(l2bc7)
	and a
	ret z
	ld a,(l2dab)
	and a
	jr nz,l2c2a
	ld (l2bc7),a
.l2c2a
	dec a
	ld (l2dab),a
	ld a,(l2dbc)
	and a
	jr nz,l2c63
	ld a,(l2db9)
	and a
	ret z
	dec a
	ld (l2db9),a
	ld a,(l2dac)
	ld (l2dbc),a
	ld a,(l2dba)
	and a
	jr z,l2c4c
	ld a,(l2dd9)
.l2c4c
	ld b,a
	ld a,(l2dad)
	add b
	ld (l2a00),a
	ld a,(l2dae)
	add b
	and #0f
	ld (l2a01),a
	ld hl,(l2daf)
	ld (l2a04),hl
.l2c63
	ld hl,l2dbc
	dec (hl)
	ld a,(l2db7)
	and a
	jr z,l2c8a
	jp p,l2c7d
	ld hl,(l2a00)
	ld de,(l2db3)
	add hl,de
	ld (l2a00),hl
	jr l2c8a
.l2c7d
	ld hl,(l2a00)
	ld de,(l2db3)
	and a
	sbc hl,de
	ld (l2a00),hl
.l2c8a
	ld a,(l2db8)
	and a
	jr z,l2cad
	jp p,l2ca0
	ld hl,(l2a04)
	ld de,(l2db5)
	add hl,de
	ld (l2a04),hl
	jr l2cad
.l2ca0
	ld hl,(l2a04)
	ld de,(l2db5)
	and a
	sbc hl,de
	ld (l2a04),hl
.l2cad
	ld a,(l2a00)
	ld (l2a06),a
	ret
.l2cb4
	dw l2cce,l2cdf,l2cf0,l2d01
	dw l2d12,l2d23,l2d34,l2d45
	dw l2d56,l2d67,l2d78,l2d89
	dw l2d9a
.l2cce
	db #05,#ff,#09,#00,#02,#00,#0a,#f3
	db #08,#04,#00,#04,#01,#01,#ff,#00
	db #00
.l2cdf
	db #14,#ff,#80,#01,#a0,#02,#2d,#f2
	db #02,#00,#04,#00,#01,#01,#ff,#00
	db #00
.l2cf0
	db #07,#03,#04,#00,#0b,#20,#0f,#fa
	db #10,#00,#08,#04,#ff,#01,#0a,#00
	db #00
.l2d01
	db #1e,#ff,#10,#00,#12,#00,#32,#fa
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00
.l2d12
	db #1e,#07,#c4,#00,#8b,#01,#0c,#f2
	db #78,#00,#78,#00,#ff,#ff,#0a,#00
	db #00
.l2d23
	db #3c,#0a,#14,#00,#0b,#07,#0c,#f2
	db #40,#00,#03,#00,#ff,#ff,#0a,#00
	db #00
.l2d34
	db #3c,#ff,#00,#02,#00,#02,#32,#fa
	db #08,#00,#09,#00,#01,#01,#02,#00
	db #00
.l2d45
	db #01,#00,#a8,#01,#8b,#01,#01,#fa
	db #02,#00,#02,#00,#ff,#ff,#01,#00
	db #00
.l2d56
	db #05,#ff,#00,#01,#03,#01,#32,#fa
	db #24,#00,#29,#00,#ff,#ff,#01,#00
	db #00
.l2d67
	db #08,#ff,#80,#01,#a0,#02,#0a,#f2
	db #02,#00,#04,#00,#01,#01,#ff,#00
	db #00
.l2d78
	db #01,#01,#00,#07,#10,#07,#02,#d3
	db #00,#00,#00,#00,#ff,#ff,#01,#00
	db #00
.l2d89
	db #0a,#ff,#42,#00,#02,#01,#0a,#f2
	db #22,#00,#1a,#00,#ff,#ff,#ff,#00
	db #00
.l2d9a
	db #78,#ff,#90,#01,#80,#03,#64,#f6
	db #00,#00,#00,#00,#ff,#ff,#01,#00
	db #00
.l2dab
	db #06
.l2dac
	db #03
.l2dad
	db #04
.l2db5 equ $ + 7
.l2db3 equ $ + 5
.l2db2 equ $ + 4
.l2db1 equ $ + 3
.l2daf equ $ + 1
.l2dae
	db #00,#0b,#20,#0f,#fa,#10,#00,#08
.l2dbc equ $ + 6
.l2dbb equ $ + 5
.l2dba equ $ + 4
.l2db9 equ $ + 3
.l2db8 equ $ + 2
.l2db7 equ $ + 1
	db #04,#ff,#01,#0a,#00,#00,#02,#00
.l2dbe
	ld a,(l2dd9)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l2ddc
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l2ddc equ $ + 3
.l2dd9
	db #ff,#00,#36,#68
.l2ddd
	db #03
	dw l2df2,l2df6,l2dfa
	db #03
	dw l2dfe,l2e02,l2e06
	db #03
	dw l2e0a,l2ed4,l2f58
.l2df2
	dw l2fa5,#0000
.l2df6
	dw l2fba,#0000
.l2dfa
	dw l2fd0,#0000
.l2dfe
	dw l300b,#0000
.l2e02
	dw l3021,#0000
.l2e06
	dw l3030,#0000
.l2e0a
	dw l303f,l303f,l303f,l303f
	dw l303f,l303f,l303f,l303f
	dw l303f,l303f,l303f,l303f
	dw l303f,l303f,l303f,l303f
	dw l303f,l303f,l303f,l303f
	dw l303f,l303f,l304c,l304c
	dw l3063,l3063,l307a,l307a
	dw l3091,l3091,l304c,l304c
	dw l3063,l3063,l307a,l307a
	dw l3091,l3091,l304c,l304c
	dw l3063,l3063,l307a,l307a
	dw l3091,l3091,l304c,l304c
	dw l304c,l304c,l304c,l304c
	dw l30a8,l3063,l304c,l304c
	dw l30a8,l3063,l304c,l304c
	dw l30a8,l3063,l304c,l304c
	dw l30a8,l3063,l304c,l304c
	dw l30a8,l3063,l304c,l304c
	dw l30a8,l3063,l31ce,l31ce
	dw l31df,l31df,l31f0,l31f0
	dw l3201,l3201,l31ce,l31ce
	dw l31df,l31df,l31f0,l31f0
	dw l3201,l3201,l303f,l303f
	dw l303f,l303f,l30bf,l30bf
	dw l30bf,l30bf,l30bf,l30bf
	dw #0000
.l2ed4
	dw l2f9e,l2f9e,l2f9e,l2f9e
	dw l30c8,l30c8,l2f9e,l2f9e
	dw l30de,l30f2,l3106,l311a
	dw l30de,l30f2,l3106,l311a
	dw l30de,l30f2,l3106,l311a
	dw l313d,l313d,l3154,l3154
	dw l316b,l316b,l3182,l3182
	dw l313d,l313d,l313d,l313d
	dw l313d,l313d,l3199,l3154
	dw l313d,l313d,l3199,l3154
	dw l2f9e,l2f9e,l2f9e,l2f9e
	dw l2f9e,l2f9e,l2f9e,l2f9e
	dw l312e,l30de,l3133,l30fc
	dw l30de,l3133,l30fc,l30de
	dw l30f2,l3106,l311a,l30de
	dw l30f2,l3106,l311a,l31b0
	dw l31b7,#0000
.l2f58
	dw l2fa1,l2fa1,l2fa1,l2fa1
	dw l2fa1,l2fa1,l2fa1,l2fa1
	dw l2fa1,l2fa1,l2fa1,l2fa1
	dw l2fa1,l2fa1,l2fa1,l3212
	dw l3212,l2fa1,l2fa1,l323d
	dw l323d,l323d,l2fa1,l2fa1
	dw l3256,l3256,l2fa1,l2fa1
	dw l2fa1,l2fa1,l326c,l2fa1
	dw l2fa1,l327f,#0000
.l2f9e
	db #ff,#80,#87
.l2fa1
	db #ff,#80,#8f,#87
.l2fa5
	db #8a,#81,#c4,#d0,#e7,#43,#3e,#e3
	db #3a,#eb,#37,#e3,#3f,#3e,#3a,#eb
	db #37,#e3,#33,#33,#8e
.l2fba
	db #8a,#81,#c4,#90,#d0,#e7,#37,#32
	db #e3,#2e,#eb,#2b,#e3,#33,#32,#2e
	db #eb,#2b,#e3,#35,#35,#8e
.l2fd0
	db #8a,#88,#01,#01,#82,#c0,#d0,#90
	db #e1,#1f,#e3,#1f,#e1,#1f,#da,#8b
	db #e3,#27,#d0,#8a,#1f,#e1,#1f,#e3
	db #1f,#e1,#1f,#da,#8b,#e3,#27,#d0
	db #8a,#1f,#e1,#1b,#e3,#1b,#e1,#1b
	db #da,#8b,#e3,#27,#d0,#8a,#1b,#e1
	db #1d,#e3,#1d,#e1,#1d,#d7,#8b,#e3
	db #27,#27,#8e
.l300b
	db #8a,#88,#01,#01,#82,#c0,#d0,#90
	db #e3,#1a,#1a,#1a,#eb,#1a,#e7,#18
	db #e3,#1d,#1d,#f7,#1a,#8e
.l3021
	db #8a,#88,#01,#01,#82,#c0,#d1,#90
	db #eb,#39,#ff,#39,#fd,#8f,#8e
.l3030
	db #8a,#88,#01,#01,#83,#c0,#d1,#90
	db #eb,#3c,#ff,#3e,#fd,#8f,#8e
.l303f
	db #8a,#88,#16,#33,#82,#c0,#d2,#91
	db #e1,#07,#fd,#17,#87
.l304c
	db #88,#16,#33,#82,#c0,#d2,#91,#e1
	db #07,#17,#81,#c1,#e3,#90,#d3,#2b
	db #24,#30,#32,#37,#33,#32,#87
.l3063
	db #88,#16,#33,#82,#c0,#d2,#91,#e1
	db #07,#17,#81,#c1,#e3,#90,#d3,#29
	db #22,#2e,#30,#35,#31,#30,#87
.l307a
	db #88,#16,#33,#82,#c0,#d2,#91,#e1
	db #07,#17,#81,#c1,#e3,#90,#d3,#24
	db #1d,#29,#2b,#30,#2c,#2b,#87
.l3091
	db #88,#16,#33,#82,#c0,#d2,#91,#e1
	db #07,#17,#81,#c1,#e3,#90,#d3,#26
	db #1f,#2b,#2d,#32,#2e,#2d,#87
.l30a8
	db #88,#16,#33,#82,#c0,#d2,#91,#e1
	db #07,#17,#81,#c1,#e3,#90,#d3,#2e
	db #27,#33,#35,#3a,#36,#35,#87
.l30bf
	db #88,#01,#02,#c0,#d4,#ff,#30,#8f
	db #87
.l30c8
	db #8a,#88,#01,#01,#82,#c0,#d5,#90
	db #ff,#24,#ef,#8f,#e7,#26,#27,#ff
	db #1f,#84,#01,#10,#8f,#87
.l30de
	db #d6,#ef,#18,#e7,#24,#e3,#1b,#e1
	db #1a,#1b,#ef,#18,#e7,#24,#e3,#1b
	db #e1,#1a,#1b,#87
.l30f2
	db #d6,#ef,#16,#e7,#22,#e3,#19,#e1
	db #18,#19
.l30fc
	db #ef,#16,#e7,#22,#e3,#19,#e1,#18
	db #19,#87
.l3106
	db #d6,#ef,#11,#e7,#1d,#e3,#14,#e1
	db #13,#14,#ef,#11,#e7,#1d,#e3,#14
	db #e1,#13,#14,#87
.l311a
	db #d6,#ef,#13,#e7,#1f,#e3,#16,#e1
	db #15,#16,#ef,#13,#e7,#1f,#e3,#16
	db #e1,#15,#16,#87
.l312e
	db #d6,#8a,#90,#c0,#87
.l3133
	db #ef,#1b,#e7,#27,#e3,#1e,#e1,#1d
	db #1e,#87
.l313d
	db #d0,#8a,#e3,#18,#18,#d7,#8c,#24
	db #d0,#8a,#e7,#24,#e3,#18,#d7,#8c
	db #54,#d0,#8a,#e1,#27,#26,#87
.l3154
	db #d0,#8a,#e3,#16,#16,#d7,#8c,#22
	db #d0,#8a,#e7,#22,#e3,#16,#d7,#8c
	db #52,#d0,#8a,#e1,#19,#24,#87
.l316b
	db #d0,#8a,#e3,#11,#11,#d7,#8c,#1d
	db #d0,#8a,#e7,#1d,#e3,#11,#d7,#8c
	db #4d,#d0,#8a,#e1,#20,#1f,#87
.l3182
	db #d0,#8a,#e3,#13,#13,#d7,#8c,#1f
	db #d0,#8a,#e7,#1f,#e3,#13,#d7,#8c
	db #4f,#d0,#8a,#e1,#22,#21,#87
.l3199
	db #d0,#8a,#e3,#1b,#1b,#d7,#8c,#27
	db #d0,#8a,#e7,#27,#e3,#1b,#d7,#8c
	db #57,#d0,#8a,#e1,#2a,#29,#87
.l31b0
	db #d6,#ff,#18,#80,#80,#80,#87
.l31b7
	db #88,#01,#02,#c0,#d4,#e1,#80,#ff
	db #3e,#8f,#3f,#8f,#3d,#8f,#3e,#8f
	db #3f,#8f,#ff,#3d,#fd,#8f,#87
.l31ce
	db #88,#07,#0f,#82,#c0,#d2,#91,#e1
	db #17,#ed,#17,#81,#c2,#d5,#ef,#30
	db #87
.l31df
	db #88,#07,#0f,#82,#c0,#d2,#91,#e1
	db #17,#ed,#17,#81,#c2,#d5,#ef,#2e
	db #87
.l31f0
	db #88,#07,#0f,#82,#c0,#d2,#91,#e1
	db #17,#ed,#17,#81,#c2,#d5,#ef,#29
	db #87
.l3201
	db #88,#07,#0f,#82,#c0,#d2,#91,#e1
	db #17,#ed,#17,#81,#c2,#d5,#ef,#2b
	db #87
.l3212
	db #8a,#d8,#c5,#88,#01,#01,#82,#90
	db #ff,#30,#ef,#8f,#e3,#32,#33,#32
	db #33,#ff,#84,#01,#10,#2e,#f7,#8f
	db #e7,#30,#e3,#2e,#e7,#2d,#f3,#29
	db #f7,#8f,#e3,#35,#e1,#37,#35,#ff
	db #32,#8f,#87
.l323d
	db #d0,#c6,#88,#01,#01,#82,#e7,#30
	db #30,#30,#32,#e3,#33,#32,#e7,#33
	db #e3,#33,#35,#37,#35,#ff,#80,#80
	db #87
.l3256
	db #d8,#88,#01,#02,#82,#c9,#ff,#30
	db #ef,#8f,#e3,#32,#33,#32,#33,#ff
	db #84,#01,#10,#2e,#8f,#87
.l326c
	db #d5,#88,#01,#01,#83,#ff,#48,#8f
	db #8f,#8f,#ef,#46,#48,#ff,#8f,#8f
	db #85,#8f,#87
.l327f
	db #88,#01,#02,#c0,#82,#d4,#e3,#80
	db #ff,#40,#8f,#40,#8f,#41,#8f,#43
	db #8f,#40,#8f,#ff,#41,#fb,#8f,#87
;
; #095f
; ld c,#0e	; init main theme
; call #2596
;
.init_music		; added by Megachur
;
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	jp real_init_music
;
.music_info
	db "The Vindicator - Part 1 (1988)(Ocean Software)(Jonathan Dunn)",0
	db "",0

	read "music_end.asm"
