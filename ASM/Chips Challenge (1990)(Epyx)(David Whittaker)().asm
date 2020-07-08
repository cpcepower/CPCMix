; Music of Chips Challenge (1990)(Epyx)(David Whittaker)()
; Ripped by Megachur the 17/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CHIPSCHA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #3870
FIRST_THEME				equ 0
LAST_THEME				equ 11

	read "music_header.asm"

	jp l3884	; init
	jp l394a	; play
.l3876
	jp l3a61	; stop
	jp l3e25
	jp l3a73

.l3883 equ $ + 4
.l3882 equ $ + 3
.l3881 equ $ + 2
.l3880 equ $ + 1
.l387f
.music_end
	db #00,#00,#00,#00,#00
;
.init_music				; 0-11 (3 = main theme)
.l3884
;
	push af
	call l3876
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l41b4
	add hl,bc
	ld a,(hl)
	ld (l3881),a
	ld (l3882),a
	inc hl
	ld ix,l38e4
	ld c,#22
	ld a,#03
.l38a5
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#20),b
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
	jr nz,l38a5
	ld (l3be6),a
	dec a
	ld (l3c5a),a
	ld hl,l3880
	ld (hl),#0e
	ld (l387f),a
	ret
.l38e4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l3906
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l3928
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
.l394a
;
	ld a,(l387f)
	ld hl,l3883
	or (hl)
	ret z
	call l3e80
	ld a,(l387f)
	and a
	jr z,l39ad
.l395c equ $ + 1
	ld a,#00
	ld (l39a9),a
	ld a,(l3881)
	ld hl,l3c5a
	add (hl)
	ld (hl),a
	jr nc,l3981
	ld b,#00
	ld ix,l38e4
	call l3b37
	ld ix,l3906
	call l3b37
	ld ix,l3928
	call l3b37
.l3981
	ld ix,l38e4
	call l3bb3
	ld (l3c5b),hl
	ld (l3c63),a
	ld ix,l3906
	call l3bb3
	ld (l3c5d),hl
	ld (l3c64),a
	ld ix,l3928
	call l3bb3
	ld (l3c5f),hl
	ld (l3c65),a
.l39a9 equ $ + 1
	ld a,#00
	ld (l3c61),a
.l39ad
	ld a,(l387f)
	and a
	jr nz,l39c3
	ld (l3c63),a
	ld (l3c64),a
	ld (l3c65),a
	ld a,#3f
	ld (l3c62),a
	jr l39eb
.l39c3
	ld a,(l3880)
	and #0f
	xor #0f
	jr z,l39eb
	ld b,a
	ld a,(l3c63)
	sub b
	jr nc,l39d4
	xor a
.l39d4
	ld (l3c63),a
	ld a,(l3c64)
	sub b
	jr nc,l39de
	xor a
.l39de
	ld (l3c64),a
	ld a,(l3c65)
	sub b
	jr nc,l39e8
	xor a
.l39e8
	ld (l3c65),a
.l39eb
	ld a,(l3883)
	and a
	jr z,l3a13
	ld hl,(l3c68)
	ld (l3c5b),hl
	ld a,(l4185)
.l39fa
	ld b,a
	bit 3,a
	jr nz,l3a05
	ld a,(l3c6e)
	ld (l3c61),a
.l3a05
	ld hl,l3c62
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l3c70)
	ld (l3c63),a
.l3a13
	ld hl,l3c65
	ld d,#0a
.l3a18
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
	jp p,l3a18
	ret
.l3a39
	ld de,#0a00
.l3a3c
	call l3a46
	dec d
	jp p,l3a3c
	ld de,#073f
.l3a46
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
.l3a61
;
	xor a
	ld (l387f),a
	call l3a73
	xor a
	ld (l3c63),a
	ld (l3c64),a
	ld (l3c65),a
	ret
.l3a73
	xor a
	ld (l3883),a
	jp l3a39
	db #b2,#ac,#a5,#00,#00,#00,#00,#2f
	db #92,#83,#6e,#58,#00,#00,#00,#ac
	db #00,#00,#81,#0b,#00,#01,#1a,#13
	ld (l3880),a
	jp l3b44
	ld a,(de)
	ld (ix+#03),a
	ld l,a
	inc de
	ld a,(de)
	ld (ix+#04),a
	ld h,a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	jp l3b44
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
	jr nz,l3ad2
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l3ad2
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l3b44
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,l3c4b
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l3b44
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,l3c4b
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l3b44
	ld a,(de)
	inc de
	ld (l3be6),a
	jr l3b44
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr l3b44
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr l3b44
	ld (ix+#1d),b
	jr l3b44
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l3b73
	jr l3b6f
.l3b37
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l3b44
	ld a,(de)
	inc de
	and a
	jp m,l3b80
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l3b56
	ld (l395c),a
.l3b56
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.l3b6f
	set 5,(ix+#00)
.l3b73
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l3b80
	cp #c0
	jr c,l3bab
	add #20
	jr c,l3b8c
	add #10
	jr c,l3b93
.l3b8c
	inc a
	ld (ix+#11),a
	jp l3b44
.l3b93
	ld hl,l3d34
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
	jp l3b44
.l3bab
	ld hl,l39fa
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l3bb3
	ld c,(ix+#00)
	bit 5,c
	jr z,l3be5
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l3bdf
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l3bdf
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l3bdf
	ld a,(ix+#18)
	ld (ix+#13),a
.l3be6 equ $ + 1
.l3be5
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld hl,l3c74
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l3c47
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l3c10
	bit 0,c
	jr nz,l3c2e
.l3c10
	bit 5,l
	jr nz,l3c20
	sub (ix+#1b)
	jr nc,l3c2b
	set 5,(ix+#1d)
	sub a
	jr l3c2b
.l3c20
	add (ix+#1b)
	cp b
	jr c,l3c2b
	res 5,(ix+#1d)
	ld a,b
.l3c2b
	ld (ix+#1c),a
.l3c2e
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l3c39
	dec d
.l3c39
	add #a0
	jr c,l3c45
.l3c3d
	sla e
	rl d
	add #18
	jr nc,l3c3d
.l3c45
	add hl,de
	ex de,hl
.l3c47
	ld (ix+#00),c
.l3c4b equ $ + 1
	ld a,#38
	ld hl,l3c62
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l3c61 equ $ + 7
.l3c5f equ $ + 5
.l3c5d equ $ + 3
.l3c5b equ $ + 1
.l3c5a
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3c69 equ $ + 7
.l3c68 equ $ + 6
.l3c65 equ $ + 3
.l3c64 equ $ + 2
.l3c63 equ $ + 1
.l3c62
	db #3f,#00,#00,#00,#00,#00,#00,#00
.l3c70 equ $ + 6
.l3c6e equ $ + 4
	db #00,#00,#00,#00,#00,#3f,#00,#00
	db #00,#00
.l3c74
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
.l3d34
	dw l3d55,l3d64,l3d72,l3d84
	dw l3d8d,l3da6,l3daf,l3dbf
	dw l3dc8,l3dd9,l3dea,l3dfa
	dw l3e0b,l3e13,l3e1b,l3e23
.l3d55 equ $ + 1
	db #01,#0e,#0d,#0c,#0b,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#01
.l3d64
	db #0d,#0c,#0b,#09,#08,#07,#06,#05
.l3d72 equ $ + 6
	db #04,#03,#02,#01,#87,#01,#0f,#0e
	db #0d,#0b,#0d,#0c,#0a,#09,#0b,#0a
	db #08,#07,#09,#08,#06,#05,#87,#01
.l3d84
	db #0d,#0f,#0e,#0e,#0d,#0d,#0c,#87
.l3d8d equ $ + 1
	db #01,#0d,#0f,#0e,#0d,#0c,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0a,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.l3da6 equ $ + 2
	db #87,#01,#0c,#0e,#0b,#07,#03,#02
.l3daf equ $ + 3
	db #01,#87,#01,#0d,#0f,#0e,#0d,#0c
	db #0b,#09,#08,#07,#06,#05,#04,#03
.l3dbf equ $ + 3
	db #01,#87,#04,#08,#09,#0a,#0b,#0c
.l3dc8 equ $ + 4
	db #0d,#0e,#87,#0c,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l3dd9 equ $ + 5
	db #03,#02,#01,#87,#14,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l3dea equ $ + 6
	db #04,#03,#02,#01,#87,#03,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l3dfa equ $ + 6
	db #04,#03,#02,#01,#87,#03,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l3e0b equ $ + 7
	db #05,#04,#03,#02,#01,#87,#01,#0d
.l3e13 equ $ + 7
	db #0b,#09,#07,#02,#01,#87,#01,#0e
.l3e1b equ $ + 7
	db #0c,#09,#07,#02,#01,#87,#01,#0f
.l3e23 equ $ + 7
	db #0d,#0a,#08,#03,#01,#87,#01,#0c
	db #87
.l3e25
	ld hl,l3883
	ld (hl),#00
	ld hl,l3f3a
	add a
	add l
	ld l,a
	jr nc,l3e33
	inc h
.l3e33
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l417f
.l3e3b
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l3e3b
	ld a,(l4180)
	ld (l418d),a
	ld hl,(l4181)
	ld (l3c68),hl
	ld a,(l4185)
	bit 3,a
	jr nz,l3e58
	ld a,l
	ld (l3c6e),a
.l3e58
	ld a,(l418a)
	ld (l418e),a
	ld a,(l418c)
	ld (l4193),a
	ld a,(l4189)
	ld hl,l40da
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l418f),hl
	ld (l4191),hl
	ld a,(hl)
	ld (l3c70),a
	ld hl,l3883
	inc (hl)
	ret
.l3e80
	call l4194
	ld a,(l3883)
	and a
	ret z
	ld a,(l417f)
	and a
	jr nz,l3e98
	ld a,(l418b)
	and a
	jr nz,l3e98
	ld (l3883),a
	ret
.l3e98
	dec a
	ld (l417f),a
	ld a,(l418d)
	and a
	jr nz,l3ed0
	ld a,(l418b)
	and a
	jr nz,l3eae
	ld a,(l4188)
	and a
	jr z,l3f12
.l3eae
	dec a
	ld (l4188),a
	ld a,(l4180)
	ld (l418d),a
	ld a,(l4186)
	and a
	jr z,l3ec1
	ld a,(l41af)
.l3ec1
	ld b,a
	ld a,(l4181)
	add b
	ld (l3c68),a
	ld a,(l4182)
	add b
	ld (l3c69),a
.l3ed0
	ld hl,l418d
	dec (hl)
	ld hl,l418c
	ld a,(hl)
	and a
	jr z,l3ee2
	ld hl,l4193
	dec (hl)
	jr nz,l3f05
	ld (hl),a
.l3ee2
	ld a,(l4187)
	and a
	jr z,l3f05
	jp p,l3ef8
	ld hl,(l3c68)
	ld de,(l4183)
	add hl,de
	ld (l3c68),hl
	jr l3f05
.l3ef8
	ld hl,(l3c68)
	ld de,(l4183)
	and a
	sbc hl,de
	ld (l3c68),hl
.l3f05
	ld a,(l4185)
	bit 3,a
	jr nz,l3f12
	ld a,(l3c68)
	ld (l3c6e),a
.l3f12
	ld a,(l418e)
	dec a
	ld (l418e),a
	jr nz,l3f39
	ld a,(l418a)
	ld (l418e),a
	ld hl,(l4191)
	ld a,(hl)
	inc hl
	and a
	jp p,l3f33
	cp #80
	jr nz,l3f39
	ld hl,(l418f)
	ld a,(hl)
	inc hl
.l3f33
	ld (l4191),hl
	ld (l3c70),a
.l3f39
	ret
.l3f3a
	dw l3f6e,l3f7c,l3f8a,l3f98
	dw l3fa6,l3fb4,l3fc2,l3fd0
	dw l3fde,l3fec,l3ffa,l4008
	dw l4016,l4024,l4032,l4040
	dw l404e,l405c,l406a,l4078
	dw l4086,l4094,l40a2,l40b0
	dw l40be,l40cc
.l3f6e
	db #07,#03,#4e,#00,#1b,#00,#fe,#00
.l3f7c equ $ + 6
	db #ff,#00,#00,#02,#00,#03,#06,#03
	db #1f,#07,#9e,#06,#f6,#01,#01,#00
.l3f8a equ $ + 4
	db #07,#02,#00,#03,#07,#63,#00,#00
	db #08,#00,#f6,#00,#ff,#63,#00,#02
.l3f98 equ $ + 2
	db #00,#00,#12,#63,#f8,#00,#04,#04
	db #fe,#00,#01,#63,#08,#04,#00,#00
.l3fa6
	db #46,#06,#00,#02,#40,#00,#fe,#00
.l3fb4 equ $ + 6
	db #01,#63,#01,#03,#00,#00,#0c,#06
	db #1f,#00,#0a,#00,#f7,#00,#01,#00
.l3fc2 equ $ + 4
	db #08,#01,#00,#06,#10,#08,#60,#00
	db #06,#00,#fe,#00,#01,#00,#00,#02
.l3fd0 equ $ + 2
	db #00,#00,#0a,#63,#00,#00,#03,#00
	db #f7,#00,#ff,#63,#02,#01,#00,#00
.l3fde
	db #18,#08,#1f,#00,#02,#00,#f7,#00
.l3fec equ $ + 6
	db #01,#00,#03,#01,#00,#00,#04,#05
	db #21,#00,#03,#00,#fe,#00,#01,#00
.l3ffa equ $ + 4
	db #02,#01,#00,#00,#05,#02,#1a,#00
	db #02,#00,#f6,#00,#01,#00,#08,#01
.l4008 equ $ + 2
	db #00,#00,#04,#08,#1f,#00,#01,#00
	db #f7,#00,#01,#00,#03,#01,#00,#00
.l4016
	db #06,#63,#31,#00,#05,#00,#fe,#00
.l4024 equ $ + 6
	db #01,#00,#00,#02,#00,#00,#05,#63
	db #17,#00,#00,#00,#f6,#00,#01,#00
.l4032 equ $ + 4
	db #0c,#01,#00,#00,#06,#03,#25,#00
	db #0b,#00,#2a,#ff,#ff,#00,#00,#01
.l4040 equ $ + 2
	db #00,#00,#19,#05,#0c,#01,#0c,#01
	db #f6,#00,#ff,#00,#00,#03,#00,#05
.l404e
	db #19,#05,#0c,#01,#0c,#01,#fe,#00
.l405c equ $ + 6
	db #ff,#00,#00,#03,#00,#05,#06,#03
	db #0f,#00,#10,#00,#f7,#00,#ff,#00
.l406a equ $ + 4
	db #08,#01,#00,#03,#5a,#08,#5c,#00
	db #02,#00,#fe,#00,#01,#63,#0b,#08
.l4078 equ $ + 2
	db #ff,#00,#5a,#08,#64,#00,#03,#00
	db #fe,#00,#ff,#63,#0b,#08,#ff,#00
.l4086
	db #5a,#0f,#78,#00,#03,#00,#fe,#00
.l4094 equ $ + 6
	db #01,#63,#0b,#08,#ff,#00,#5a,#14
	db #68,#00,#03,#00,#fe,#00,#ff,#63
.l40a2 equ $ + 4
	db #0b,#08,#ff,#00,#1e,#0c,#30,#00
	db #08,#00,#fe,#00,#01,#00,#08,#04
.l40b0 equ $ + 2
	db #00,#04,#19,#04,#4c,#01,#21,#00
	db #f6,#00,#ff,#63,#00,#03,#00,#00
.l40be
	db #3c,#0f,#1f,#00,#02,#00,#f6,#00
.l40cc equ $ + 6
	db #ff,#63,#08,#05,#00,#00,#0f,#03
	db #c7,#00,#20,#00,#f6,#ff,#ff,#63
	db #00,#01,#00,#00
.l40da
	dw l40f6,l4106,l411f,l412f
	dw l4138,l413d,l4143,l4145
	dw l4153,l4162,l4166,l4168
	dw l416f,l4178
.l40f6
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.l4106
	db #06,#08,#0a,#0b,#0c,#0d,#0e,#0f
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.l411f equ $ + 1
	db #ff,#06,#08,#0a,#0b,#0c,#0d,#0c
	db #0b,#0a,#08,#06,#04,#03,#02,#01
.l412f equ $ + 1
	db #ff,#06,#08,#0a,#0b,#0c,#0d,#0e
.l413d equ $ + 7
.l4138 equ $ + 2
	db #0f,#ff,#01,#04,#07,#0a,#80,#01
.l4145 equ $ + 7
.l4143 equ $ + 5
	db #03,#06,#08,#0a,#80,#0b,#80,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l4153 equ $ + 5
	db #04,#03,#02,#01,#ff,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l4162 equ $ + 4
	db #03,#02,#01,#ff,#0d,#09,#01,#ff
.l4168 equ $ + 2
.l4166
	db #0c,#80,#0b,#0b,#0c,#0d,#0c,#0b
.l416f equ $ + 1
	db #80,#0f,#0a,#05,#01,#0d,#08,#03
.l4178 equ $ + 2
	db #00,#ff,#0d,#0a,#03,#08,#04,#01
.l4185 equ $ + 7
.l4183 equ $ + 5
.l4182 equ $ + 4
.l4181 equ $ + 3
.l4180 equ $ + 2
.l417f equ $ + 1
	db #ff,#00,#00,#00,#00,#00,#00,#00
.l418d equ $ + 7
.l418c equ $ + 6
.l418b equ $ + 5
.l418a equ $ + 4
.l4189 equ $ + 3
.l4188 equ $ + 2
.l4187 equ $ + 1
.l4186
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4193 equ $ + 5
.l4191 equ $ + 3
.l418f equ $ + 1
.l418e
	db #00,#00,#00,#00,#00,#00
.l4194
	ld a,(l41af)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l41b2
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l41b2 equ $ + 3
.l41af
	db #ff,#80,#1b,#34,#00
.l41b4
	; CHIPS.LBE
	db #38
	dw lbe41dd,lbe41bb,lbe41f5
	; CHIPS.LBF
	db #38
	dw lbf41bf,lbf41bb,lbf41c7
	; CHIPS.LBG
	db #2a
	dw lbg41bf,lbg41bb,lbg41c5
	; CHIPS.LBH			; main theme
	db #38
	dw lbh41bf,lbh41bb,lbh41eb
	; CHIPS.LBI
	db #38
	dw lbi41c7,lbi41bb,lbi41d9
	;CHIPS.LBJ
	db #38
	dw lbj41bf,lbj41bb,lbj41c3
	;CHIPS.LBK
	db #38
	dw lbk41bf,lbk41bb,lbk41c7
	;CHIPS.LBL
	db #38
	dw lbl41bf,lbl41bb,lbl41c3
	;CHIPS.LBM
	db #38
	dw lbm41bb,lbm4337,lbm433d
	;CHIPS.LBN
	db #4c
	dw lbn41c3,lbn41bb,lbn41c7
	; CHIPS.LBO
	db #2d
	dw lbo41bf,lbo41bb,lbo41c3
	; CHIPS.LBP
	db #70
	dw lbp41bf,lbp41bb,lbp41c3

	; CHIPS.LBE
;	db #38
;	dw lbe41dd,lbe41bb,lbe41f5
.lbe41bb
	dw lbe4225
.lbe41bd
	dw lbe4236,lbe4236,lbe4335
	dw lbe4236,lbe4332,lbe4236,lbe432f
	dw lbe4236,lbe4236,lbe4335,lbe4236
	dw lbe4332,lbe4236,lbe432f,lbe433e
	dw #0000
.lbe41dd
	dw lbe425c
.lbe41df
	dw lbe428f,lbe429c,lbe4295
	dw lbe4295,lbe4295,lbe4295,lbe4295
	dw lbe4295,lbe4295,lbe4295,#0000
.lbe41f5
	dw lbe42cb
.lbe41f7
	dw lbe42d8,lbe4302,lbe4317
	dw lbe4335,lbe4302,lbe42ea,lbe4332
	dw lbe4302,lbe42ea,lbe432f,lbe4302
	dw lbe42ea,lbe4302,lbe4317,lbe4335
	dw lbe4302,lbe42ea,lbe4332,lbe4302
	dw lbe42ea,lbe432f,lbe433e,#0000
.lbe4225
	db #95,#0f,#89,#01,#8a,#88,#01,#01
	db #db,#eb,#80,#ff,#80,#93
	dw lbe41bd
.lbe4236 equ $ + 1
	db #87,#e1,#d8,#13,#db,#1a,#1f,#18
	db #1a,#24,#80,#13,#8f,#1a,#1f,#18
	db #1a,#24,#22,#1f,#d8,#13,#db,#1f
	db #26,#1a,#1d,#24,#80,#13,#8f,#1a
.lbe425c equ $ + 7
	db #1f,#18,#1d,#1a,#16,#1d,#87,#8b
	db #de,#e0,#1c,#1c,#1c,#1c,#e5,#db
	db #3f,#e0,#de,#41,#41,#de,#3f,#e1
	db #3f,#e0,#41,#e1,#1c,#41,#3f,#e0
	db #41,#41,#e1,#1c,#3f,#e0,#3f,#e1
	db #3f,#e0,#41,#e1,#1c,#41,#3f,#3f
	db #e0,#3f,#e1,#3f,#e0,#1c,#93
	dw lbe41df
	db #87
.lbe428f
	db #e7,#db,#3f,#e1,#dd,#87
.lbe429c equ $ + 7
.lbe4295
	db #3f,#e0,#41,#41,#e1,#1c,#3f,#3f
	db #e0,#41,#41,#e1,#1c,#41,#1c,#3f
	db #1c,#41,#3f,#3f,#1c,#e0,#41,#41
	db #e1,#3f,#e0,#41,#41,#e1,#1c,#3f
	db #3f,#e0,#41,#41,#e1,#1c,#41,#e0
	db #3f,#3f,#e1,#3f,#1c,#e0,#41,#41
.lbe42cb equ $ + 6
	db #e1,#3f,#3f,#3f,#1c,#87,#8a,#88
	db #01,#01,#da,#eb,#80,#ff,#80,#93
	dw lbe41f7
	db #87
.lbe42d8
	db #e1,#81,#13,#1a,#1f
	db #18,#1a,#24,#80,#13,#8f,#1a,#1f
.lbe42ea equ $ + 5
	db #18,#1a,#24,#22,#1f,#13,#1f,#26
	db #1a,#1d,#24,#80,#e0,#13,#82,#db
	db #2d,#e1,#2e,#80,#2d,#80,#32,#2e
.lbe4302 equ $ + 5
	db #81,#da,#16,#1d,#87,#13,#1a,#1f
	db #18,#1a,#24,#80,#13,#82,#db,#2e
	db #80,#2d,#80,#2b,#2b,#81,#da,#16
.lbe4317 equ $ + 2
	db #13,#87,#13,#1f,#26,#1a,#1d,#24
	db #80,#e0,#13,#82,#db,#2d,#e1,#2e
	db #80,#2d,#80,#32,#32,#81,#da,#16
.lbe4332 equ $ + 5
.lbe432f equ $ + 2
	db #1d,#87,#92,#00,#87,#92,#05,#87
.lbe4335
	db #92,#07,#87,#89,#00,#87,#89,#01
	db #87
.lbe433e
	db #ff,#80,#80,#87

	; CHIPS.LBF
	;db #38
	;dw lbf41bf,lbf41bb,lbf41c7
.lbf41bb
	dw lbf41d9,#0000
.lbf41bf
	dw lbf41f7,lbf41f7,lbf4212,#0000
.lbf41c7
	dw lbf4226,lbf4279,lbf427e,lbf422d
	dw lbf4226,lbf427e,lbf422d,lbf4279
	dw #0000
.lbf41d9
	db #8a,#88,#01,#01,#de,#e2,#0a,#e0
	db #0a,#e1,#16,#e0,#0a,#e4,#0a,#e3
	db #16,#e2,#0a,#e0,#0a,#e1,#16,#e1
.lbf41f7 equ $ + 6
	db #0a,#0a,#0a,#e3,#16,#87,#8a,#88
	db #01,#01,#dc,#e7,#80,#e0,#33,#38
	db #e1,#36,#e3,#33,#e7,#80,#e0,#36
	db #38,#e1,#33,#e0,#36,#38,#e1,#36
.lbf4212 equ $ + 1
	db #87,#e1,#80,#e0,#33,#e1,#38,#33
	db #eb,#36,#e1,#36,#e0,#36,#e1,#36
.lbf4226 equ $ + 5
	db #e2,#38,#e4,#33,#87,#92,#00,#8a
.lbf422d equ $ + 4
	db #88,#01,#01,#de,#e0,#22,#22,#22
	db #22,#22,#22,#e9,#80,#e0,#23,#23
	db #23,#23,#23,#23,#23,#23,#e1,#23
	db #e0,#22,#e4,#22,#e1,#80,#e0,#23
	db #23,#23,#23,#23,#23,#23,#23,#e5
	db #22,#e1,#80,#e0,#22,#22,#22,#22
	db #22,#22,#e7,#80,#e1,#80,#e0,#23
	db #23,#23,#23,#23,#23,#23,#23,#e5
	db #22,#e1,#80,#e0,#23,#e2,#23,#e0
	db #23,#23,#23,#23,#23,#e4,#22,#87
.lbf427e equ $ + 5
.lbf4279
	db #ff,#80,#80,#80,#87,#dd,#88,#01
	db #01,#92,#0c,#87,#92,#00,#87,#92
	db #05,#87,#92,#07,#87,#89,#00,#87
	db #89,#01,#87,#ff,#80,#80,#87
	
	; CHIPS.LBG
	;db #2a
	;dw lbg41bf,lbg41bb,lbg41c5
.lbg41bb
	dw lbg41c9,#0000
.lbg41bf
	dw lbg41f0
.lbg41c1
	dw lbg41f7,#0000
.lbg41c5
	dw lbg421b,#0000
.lbg41c9
	db #8a,#88,#01,#01,#d2,#e0,#1f,#1f
	db #1d,#1a,#1a,#1f,#1d,#1f,#1a,#1f
	db #1f,#1f,#1a,#1f,#22,#1f,#1a,#1f
	db #1d,#1f,#1a,#1f,#1d,#1f,#1a,#1f
.lbg41f0 equ $ + 7
	db #22,#1f,#1a,#1f,#1d,#1f,#87,#8b
.lbg41f7 equ $ + 6
	db #e0,#dd,#80,#80,#41,#41,#3f,#80
	db #41,#41,#3f,#80,#41,#80,#3f,#80
	db #41,#80,#41,#80,#80,#80,#41,#80
	db #3f,#80,#41,#80,#80,#80,#3f,#80
	db #3f,#80,#3f,#80,#41,#41,#93
	dw lbg41c1
	db #87
.lbg421b
	db #8a,#88,#01,#01,#d6,#fb
	db #80,#e0,#30,#31,#32,#2d,#2d,#80
	db #30,#2d,#2d,#30,#2d,#2d,#26,#80
	db #30,#2d,#2d,#30,#2d,#2d,#24,#80
	db #30,#2d,#2d,#30,#2d,#2d,#24,#80
	db #30,#2d,#2d,#30,#30,#2d,#2d,#80
	db #80,#80,#26,#80,#80,#80,#26,#80
	db #80,#80,#30,#31,#32,#2d,#2d,#eb
	db #80,#e0,#26,#2e,#2b,#80,#80,#30
	db #2d,#2d,#30,#2d,#2d,#24,#80,#30
	db #2d,#2d,#30,#2d,#2d,#24,#80,#30
	db #2d,#2d,#30,#2d,#2d,#24,#80,#30
	db #2d,#30,#30,#32,#2d,#2d,#80,#80
	db #26,#2b,#30,#32,#29,#2b,#ee,#80
	db #e0,#30,#30,#32,#2d,#2d,#80,#30
	db #2d,#2d,#30,#2d,#2d,#26,#80,#32
	db #2f,#2f,#32,#2f,#2f,#24,#80,#30
	db #2d,#2d,#30,#2d,#2d,#24,#80,#30
	db #2d,#2d,#30,#2d,#2d,#2d,#31,#35
	db #32,#32,#35,#32,#32,#2b,#34,#37
	db #34,#34,#37,#34,#34,#24,#80,#30
	db #2d,#2d,#30,#2d,#2d,#24,#80,#30
	db #2d,#2d,#30,#2d,#2d,#2d,#80,#30
	db #2d,#2d,#30,#2d,#2d,#26,#80,#32
	db #2f,#2f,#32,#32,#2f,#24,#80,#30
	db #2d,#2d,#30,#2d,#2d,#24,#80,#30
	db #2d,#2d,#30,#30,#2d,#2d,#80,#35
	db #32,#32,#35,#32,#32,#2b,#37,#37
	db #34,#34,#37,#34,#34,#24,#80,#30
	db #2d,#2d,#30,#2d,#2d,#24,#80,#30
	db #2d,#30,#31,#32,#2d,#2d,#e2,#80
	db #87,#92,#00,#87,#92,#05,#87,#92
	db #07,#87,#89,#00,#87,#89,#01,#87
	db #ff,#80,#80,#87
	
	; CHIPS.LBH	;main theme
	;db #38
	;dw lbh41bf,lbh41bb,lbh41eb
.lbh41bb
	dw lbh41ef,#0000
.lbh41bf
	dw lbh4285,lbh4285,lbh4285,lbh4291
	dw lbh4285,lbh4285,lbh4285,lbh4291
	dw lbh4285,lbh4285,lbh4285,lbh4291
	dw lbh4285,lbh4285,lbh4285,lbh4291
	dw lbh4285,lbh4285,lbh4285,lbh4285
	dw lbh429a,#0000
.lbh41eb
	dw lbh42a8,#0000
.lbh41ef
	db #8a,#88,#01,#01,#d6,#e3,#15,#17
	db #19,#1a,#15,#e1,#17,#e5,#19,#e3
	db #1a,#e0,#15,#21,#25,#28,#25,#21
	db #1c,#19,#e2,#1c,#e0,#1c,#e3,#1c
	db #15,#17,#e0,#0d,#21,#e1,#25,#e3
	db #1c,#15,#17,#19,#1c,#15,#17,#19
	db #1c,#e0,#1a,#1a,#1a,#1a,#e3,#1c
	db #1e,#21,#1a,#1c,#1e,#21,#15,#e2
	db #17,#e4,#17,#e3,#19,#15,#e2,#17
	db #e4,#17,#e3,#19,#15,#e2,#17,#e0
	db #17,#e1,#19,#19,#e3,#1a,#eb,#80
	db #e3,#1c,#1a,#e2,#1c,#e0,#1c,#e3
	db #1e,#1e,#1a,#e2,#1c,#e0,#1c,#e3
	db #1e,#1e,#1a,#1c,#1e,#8f,#17,#19
	db #1a,#15,#15,#17,#19,#1a,#15,#e1
	db #17,#e5,#19,#e3,#1a,#e0,#15,#21
	db #25,#28,#25,#21,#1c,#19,#e2,#1c
	db #e0,#1c,#e3,#1c,#15,#e4,#17,#e2
.lbh4285 equ $ + 6
	db #19,#e3,#15,#ef,#80,#87,#8b,#dd
	db #e1,#80,#41,#3f,#41,#80,#41,#3f
.lbh4291 equ $ + 2
	db #41,#87,#80,#41,#3f,#41,#80,#3f
.lbh429a equ $ + 3
	db #3f,#41,#87,#de,#e0,#3f,#3f,#e1
	db #1c,#3f,#e3,#1c,#e1,#1c,#e3,#3f
.lbh42a8 equ $ + 1
	db #87,#8a,#88,#01,#01,#d6,#e0,#31
	db #34,#e1,#31,#e3,#2f,#e0,#2d,#e2
	db #2d,#e3,#2a,#e0,#31,#34,#e1,#31
	db #2f,#e3,#2d,#e1,#2f,#e3,#28,#e0
	db #31,#e2,#34,#e0,#34,#31,#e3,#34
	db #e0,#2d,#34,#31,#34,#e1,#2f,#e0
	db #31,#34,#e1,#31,#2f,#34,#e0,#2d
	db #34,#e1,#31,#e3,#2f,#e0,#31,#34
	db #e1,#31,#e3,#2f,#e0,#2d,#e2,#34
	db #e3,#2a,#e0,#31,#34,#e1,#31,#2f
	db #e3,#2d,#e1,#2f,#e3,#28,#e0,#2a
	db #2d,#e1,#2a,#2c,#e0,#2d,#2c,#e1
	db #2d,#2c,#e3,#2f,#e0,#2a,#2d,#e1
	db #2a,#e0,#2d,#2d,#e3,#2c,#e1,#28
	db #e3,#25,#e0,#28,#25,#e1,#28,#23
	db #e0,#28,#25,#28,#e6,#21,#e0,#28
	db #25,#e1,#28,#23,#e0,#28,#28,#28
	db #e6,#21,#e0,#28,#25,#e1,#28,#23
	db #e0,#28,#25,#28,#25,#e1,#28,#25
	db #21,#80,#e0,#28,#25,#e1,#28,#21
	db #e0,#28,#25,#e1,#28,#e3,#23,#e0
	db #2d,#2c,#e1,#2d,#28,#e0,#2d,#2c
	db #2d,#2c,#e1,#28,#2a,#28,#e0,#2d
	db #2c,#e1,#2d,#e0,#28,#e1,#2d,#e0
	db #2c,#2d,#2c,#e5,#2a,#e0,#32,#2c
	db #e1,#2d,#e0,#28,#e1,#2c,#e0,#2f
	db #2d,#2c,#e3,#2a,#e1,#28,#e0,#2d
	db #2c,#2d,#28,#2d,#2c,#2d,#31,#2d
	db #34,#2d,#34,#2d,#34,#2d,#34,#31
	db #34,#39,#31,#2f,#31,#32,#2f,#2d
	db #31,#34,#2d,#e3,#2a,#e0,#31,#34
	db #39,#31,#2f,#2d,#32,#2f,#2f,#31
	db #32,#2f,#e3,#28,#e0,#31,#e2,#34
	db #e1,#2f,#e3,#34,#e0,#2d,#34,#31
	db #34,#e1,#2f,#e0,#31,#34,#39,#31
	db #2f,#32,#36,#e1,#3b,#e0,#28,#e1
	db #2a,#e3,#2d,#ef,#80,#87,#92,#00
	db #87,#92,#05,#87,#92,#07,#87,#89
	db #00,#87,#89,#01,#87,#ff,#80,#80
	db #87
	
	; CHIPS.LBI
	;db #38
	;dw lbi41c7,lbi41bb,lbi41d9
.lbi41bb
	dw lbi41dd,lbi41dd,lbi43d1,lbi41dd
	dw lbi43ce,#0000
.lbi41c7
	dw lbi42aa,lbi42aa,lbi42aa,lbi42aa
	dw lbi42da,lbi42da,lbi42da,lbi42da
	dw #0000
.lbi41d9
	dw lbi42f8,#0000
.lbi41dd
	db #8a,#88,#01,#01,#d6,#e1,#0a,#11
	db #25,#16,#11,#25,#16,#11,#29,#14
	db #29,#29,#14,#14,#14,#80,#0a,#11
	db #25,#16,#11,#25,#16,#11,#29,#14
	db #29,#14,#14,#14,#29,#80,#0a,#11
	db #16,#e0,#16,#16,#e1,#11,#25,#16
	db #11,#29,#14,#29,#14,#16,#18,#14
	db #80,#0a,#e0,#11,#11,#e1,#25,#11
	db #16,#25,#16,#11,#14,#14,#29,#14
	db #29,#24,#14,#26,#0a,#11,#25,#16
	db #11,#25,#16,#11,#29,#14,#29,#29
	db #14,#14,#14,#80,#0a,#11,#25,#16
	db #11,#25,#16,#11,#29,#14,#29,#14
	db #14,#14,#29,#80,#0a,#11,#25,#16
	db #11,#25,#16,#11,#29,#14,#29,#14
	db #16,#29,#24,#80,#0a,#16,#25,#11
	db #16,#25,#16,#11,#14,#14,#29,#14
	db #24,#24,#14,#26,#0d,#14,#19,#0d
	db #14,#19,#14,#19,#10,#17,#1c,#17
	db #1c,#2a,#0f,#0e,#0d,#14,#19,#0d
	db #14,#19,#17,#19,#10,#19,#1a,#1b
	db #1c,#2a,#1c,#19,#0d,#14,#19,#14
	db #0d,#14,#19,#14,#0b,#12,#17,#12
	db #17,#80,#16,#14,#80,#0d,#14,#19
	db #0d,#14,#19,#17,#19,#0d,#17,#19
.lbi42aa equ $ + 5
	db #0d,#19,#17,#14,#87,#8b,#e1,#dc
	db #80,#41,#de,#3f,#dc,#41,#41,#41
	db #41,#41,#80,#41,#de,#3f,#dc,#41
	db #80,#de,#1c,#1c,#dc,#41,#41,#41
	db #de,#3f,#dc,#41,#41,#41,#41,#41
	db #80,#41,#de,#3f,#dc,#41,#80,#de
.lbi42da equ $ + 5
	db #3f,#1c,#dc,#41,#87,#de,#3f,#e0
	db #dd,#41,#41,#e1,#41,#dc,#41,#dd
	db #41,#41,#de,#1c,#80,#3f,#1c,#e0
	db #1c,#3f,#e1,#41,#dc,#41,#41,#de
.lbi42f8 equ $ + 3
	db #1c,#1c,#87,#8a,#88,#01,#01,#d6
	db #e1,#80,#80,#29,#80,#80,#29,#80
	db #80,#2c,#80,#2c,#2c,#80,#2c,#2c
	db #2e,#80,#80,#29,#80,#80,#29,#80
	db #80,#2c,#80,#2c,#80,#2c,#14,#2c
	db #2e,#80,#80,#29,#e0,#22,#22,#e1
	db #22,#29,#80,#80,#2c,#80,#2c,#80
	db #2c,#2e,#80,#2c,#80,#e0,#1d,#1d
	db #e1,#29,#1d,#80,#29,#80,#80,#2c
	db #80,#2c,#80,#2c,#2e,#80,#29,#80
	db #27,#29,#80,#80,#29,#80,#80,#2c
	db #80,#2c,#2c,#80,#2c,#2c,#2e,#80
	db #27,#29,#80,#80,#29,#80,#80,#2c
	db #80,#2c,#80,#2c,#80,#2c,#2e,#80
	db #27,#29,#80,#80,#29,#80,#80,#2c
	db #80,#2c,#80,#2c,#2e,#80,#2c,#80
	db #27,#29,#80,#80,#29,#80,#80,#2c
	db #80,#2c,#80,#2c,#2e,#80,#29,#80
	db #80,#2c,#80,#80,#80,#80,#80,#2f
	db #80,#2f,#80,#2f,#31,#1b,#1a,#80
	db #80,#2c,#80,#80,#2c,#80,#2c,#2f
	db #80,#2f,#0f,#2f,#31,#10,#0d,#2c
	db #80,#0d,#80,#80,#80,#0d,#80,#2f
	db #80,#2f,#80,#2f,#80,#2e,#2c,#80
	db #80,#80,#80,#2c,#80,#80,#80,#2c
	db #80,#80,#80,#2c,#80,#80,#80,#87
	db #92,#00,#87,#92,#05,#87,#92,#07
.lbi43d1 equ $ + 4
.lbi43ce equ $ + 1
	db #87,#89,#00,#87,#89,#01,#87,#ff
	db #80,#80,#87
	
	;CHIPS.LBJ
	;db #38
	;dw lbj41bf,lbj41bb,lbj41c3
.lbj41bb
	dw lbj41c7,#0000
.lbj41bf
	dw lbj4364,#0000
.lbj41c3
	dw lbj428e,#0000
.lbj41c7
	db #8a,#88,#01,#01,#d5,#e0,#15,#15
	db #1e,#80,#1e,#80,#1e,#80,#12,#80
	db #1e,#80,#1e,#80,#1e,#80,#17,#80
	db #1e,#23,#17,#80,#1e,#80,#17,#80
	db #1e,#80,#17,#80,#1e,#80,#17,#80
	db #1e,#80,#17,#80,#1e,#80,#17,#80
	db #1e,#80,#80,#80,#1e,#80,#2a,#80
	db #80,#80,#2a,#28,#80,#80,#1e,#80
	db #12,#15,#1e,#80,#1e,#80,#12,#15
	db #1e,#80,#1e,#80,#1e,#80,#12,#80
	db #1e,#80,#20,#80,#1e,#80,#17,#21
	db #23,#80,#17,#80,#1e,#80,#12,#80
	db #1e,#80,#17,#80,#1e,#80,#10,#80
	db #1c,#80,#17,#80,#1c,#80,#06,#80
	db #1e,#80,#80,#80,#1e,#80,#17,#80
	db #1e,#80,#17,#80,#1e,#80,#12,#80
	db #1e,#80,#17,#80,#1e,#80,#12,#80
	db #1e,#80,#17,#80,#1e,#80,#06,#80
	db #1e,#80,#80,#80,#1e,#80,#17,#80
	db #1e,#80,#17,#80,#1e,#80,#12,#80
	db #1e,#80,#17,#80,#1e,#80,#12,#80
	db #1e,#80,#17,#80,#1e,#80,#80,#80
	db #1e,#80,#80,#80,#1e,#80,#17,#80
	db #1e,#80,#17,#80,#1e,#80,#17,#80
.lbj428e equ $ + 7
	db #1e,#80,#17,#80,#1e,#80,#87,#8a
	db #88,#01,#01,#d5,#e0,#31,#2d,#2b
	db #28,#31,#2d,#2b,#28,#31,#2d,#2b
	db #28,#31,#2d,#2b,#28,#31,#2d,#2b
	db #28,#1e,#2d,#23,#80,#1e,#33,#2d
	db #23,#1e,#33,#2d,#23,#1e,#33,#2d
	db #23,#1e,#33,#21,#23,#1e,#33,#2d
	db #23,#1e,#33,#2d,#23,#31,#2d,#1e
	db #80,#31,#2d,#1e,#80,#31,#2d,#2b
	db #28,#31,#2d,#2b,#28,#31,#2d,#2b
	db #28,#31,#2d,#2b,#28,#31,#2d,#2b
	db #28,#31,#2d,#2b,#28,#31,#2d,#2b
	db #28,#1e,#2d,#23,#80,#17,#33,#2d
	db #23,#1e,#33,#2d,#23,#17,#33,#2d
	db #23,#1c,#33,#2d,#23,#12,#33,#2d
	db #23,#1e,#33,#2d,#23,#31,#2d,#2b
	db #28,#2a,#2d,#23,#80,#17,#33,#2d
	db #23,#1e,#33,#2d,#23,#17,#33,#2d
	db #23,#1e,#33,#2d,#23,#12,#33,#2d
	db #23,#1e,#33,#2d,#23,#25,#2d,#2b
	db #28,#1e,#2d,#23,#80,#17,#33,#2d
	db #23,#1e,#33,#2d,#23,#17,#33,#2d
	db #23,#1e,#33,#2d,#23,#12,#33,#2d
	db #23,#1e,#33,#2d,#23,#31,#2d,#2b
	db #28,#1e,#2d,#23,#80,#1e,#33,#2d
	db #23,#1e,#33,#2d,#23,#87,#92,#00
	db #87,#92,#05,#87,#92,#07,#87,#89
.lbj4364 equ $ + 5
	db #00,#87,#89,#01,#87,#ff,#80,#80
	db #87
	
	;CHIPS.LBK
	;db #38
	;dw lbk41bf,lbk41bb,lbk41c7
.lbk41bb
	dw lbk41cb,#0000
	lbk41bf
	dw lbk4213,lbk4213,lbk422c,#0000
.lbk41c7
	dw lbk4244,#0000
.lbk41cb
	db #88,#01,#01,#89,#01,#8a,#d6,#e0
	db #07,#e1,#0e,#e0,#13,#e1,#0e,#e2
	db #13,#e0,#0e,#e1,#15,#0e,#17,#e0
	db #07,#e1,#0e,#e0,#13,#e1,#0e,#e2
	db #15,#e0,#0e,#e1,#13,#07,#0e,#e0
	db #0c,#e1,#13,#e0,#0c,#e1,#0e,#e2
	db #13,#e0,#07,#e1,#0c,#0c,#13,#e0
	db #02,#e1,#09,#e0,#0e,#e1,#09,#e2
	db #10,#e0,#09,#e1,#0e,#09,#0e,#87
.lbk4213
	db #8b,#dd,#e1,#3f,#dc,#e0,#41,#41
	db #e1,#1c,#41,#3f,#41,#1c,#41,#3f
	db #3f,#1c,#41,#3f,#41,#1c,#de,#3f
.lbk422c equ $ + 1
	db #87,#dd,#e1,#1c,#41,#de,#3f,#41
	db #3f,#41,#1c,#3f,#de,#e1,#3f,#1c
	db #dc,#1c,#41,#3f,#41,#1c,#de,#1c
.lbk4244 equ $ + 1
	db #87,#88,#01,#01,#8a,#d6,#e5,#21
	db #e3,#21,#e1,#26,#e3,#23,#e5,#21
	db #e3,#21,#e1,#26,#e3,#1f,#e1,#1f
	db #24,#28,#e0,#18,#e1,#28,#e0,#1f
	db #e1,#24,#28,#1f,#e1,#2b,#1f,#2b
	db #e0,#1f,#e1,#2b,#e0,#1f,#e1,#2b
	db #21,#2d,#e1,#30,#e0,#2f,#e1,#30
	db #e0,#30,#e1,#2f,#2f,#e5,#2b,#e0
	db #1f,#1a,#e1,#2b,#2d,#e0,#26,#e1
	db #30,#e0,#30,#e1,#2f,#30,#e0,#2f
	db #2b,#e5,#8f,#e1,#30,#e0,#34,#30
	db #e1,#37,#e0,#30,#e2,#34,#e1,#1a
	db #e2,#37,#e0,#36,#32,#2d,#e1,#34
	db #2b,#30,#e0,#2f,#da,#26,#ef,#8f
	db #d6,#e0,#13,#1f,#21,#23,#24,#24
	db #21,#e1,#26,#e0,#1a,#24,#23,#e1
	db #24,#23,#e2,#1f,#1f,#1a,#e0,#18
	db #e1,#1c,#1f,#1f,#e3,#24,#28,#2b
	db #da,#e1,#30,#32,#d6,#e1,#30,#e0
	db #2f,#e1,#30,#e0,#30,#e1,#2f,#2f
	db #e5,#2b,#e0,#1f,#1a,#e1,#2b,#2d
	db #e0,#26,#e1,#30,#e0,#30,#e1,#2f
	db #30,#e0,#2f,#2b,#e1,#1f,#24,#28
	db #e0,#18,#e1,#28,#e0,#1f,#e1,#24
	db #28,#1f,#e1,#2b,#1f,#2b,#e0,#1f
	db #e1,#2b,#e0,#1f,#e1,#2b,#21,#2d
	db #ef,#8f,#d6,#e0,#13,#1f,#21,#23
	db #24,#24,#21,#e1,#26,#e0,#1a,#24
	db #23,#e1,#24,#23,#e5,#8f,#e1,#30
	db #e0,#34,#30,#e1,#37,#e0,#30,#e2
	db #34,#e1,#1a,#e2,#37,#e0,#36,#32
	db #2d,#e1,#34,#2b,#30,#e0,#2f,#da
	db #26,#87,#92,#00,#87,#92,#05,#87
	db #92,#07,#87,#89,#00,#87,#89,#01
	db #87,#ff,#80,#80,#87
	
	;CHIPS.LBL
	;db #38
	;dw lbl41bf,lbl41bb,lbl41c3
.lbl41bb
	dw lbl41c7,#0000
.lbl41bf
	dw lbl4229,#0000
.lbl41c3
	dw lbl427f,#0000
.lbl41c7
	db #8a,#88,#01,#01,#d6,#e1,#05,#11
	db #17,#16,#10,#13,#10,#0a,#05,#11
	db #17,#16,#10,#13,#10,#0a,#05,#11
	db #17,#16,#10,#13,#10,#0a,#05,#11
	db #17,#16,#10,#13,#10,#0a,#05,#11
	db #13,#12,#10,#12,#10,#0a,#05,#11
	db #13,#12,#10,#12,#10,#0a,#15,#8f
	db #17,#0a,#10,#13,#10,#16,#21,#8f
	db #17,#16,#0e,#8f,#10,#8f,#11,#8f
	db #17,#0a,#0c,#0e,#10,#12,#13,#8f
	db #15,#13,#21,#1a,#1a,#1a,#16,#15
	db #15,#16,#11,#10,#11,#10,#d3,#ef
.lbl4229 equ $ + 2
	db #15,#87,#8a,#88,#01,#01,#d5,#e3
	db #26,#26,#2b,#26,#26,#26,#1f,#8f
	db #26,#26,#e1,#26,#28,#2a,#8f,#e3
	db #2f,#e2,#27,#e0,#27,#e7,#2b,#e3
	db #2d,#2d,#2b,#2b,#d6,#ef,#26,#d5
	db #e7,#80,#e1,#18,#1a,#26,#28,#e3
	db #26,#26,#e1,#1a,#1c,#1f,#1a,#29
	db #80,#23,#2b,#21,#22,#24,#26,#24
	db #8f,#28,#26,#32,#2e,#2d,#2b,#e5
	db #29,#e1,#26,#e3,#26,#28,#e1,#2d
	db #24,#2a,#29,#26,#29,#26,#21,#87
.lbl427f
	db #8a,#88,#01,#01,#d4,#e3,#2d,#2b
	db #e1,#30,#32,#e3,#2b,#2d,#2b,#26
	db #8f,#2d,#2b,#e1,#30,#32,#34,#36
	db #e3,#37,#e2,#39,#e0,#39,#e7,#32
	db #e3,#34,#e1,#32,#30,#e3,#2f,#30
	db #ef,#2d,#e1,#2d,#29,#2b,#28,#24
	db #26,#e3,#1f,#2d,#2b,#26,#8f,#e1
	db #2d,#29,#2b,#28,#24,#26,#28,#2a
	db #2b,#8f,#2d,#2b,#e7,#26,#e3,#34
	db #e1,#32,#30,#e3,#2f,#30,#d3,#ef
	db #21,#87,#92,#00,#87,#92,#05,#87
	db #92,#07,#87,#89,#00,#87,#89,#01
	db #87,#ff,#80,#80,#87
	
	;CHIPS.LBM
	;db #38
	;dw lbm41bb,lbm4337,lbm433d
.lbm41bb
	dw lbm4208,lbm4208,lbm4221,#0000
.lbm41c3
	db #89,#01,#8a,#d6,#e0,#07,#e1,#0e
	db #e0,#13,#e1,#0e,#e2,#13,#e0,#0e
	db #e1,#15,#0e,#17,#e0,#07,#e1,#0e
	db #e0,#13,#e1,#0e,#e2,#15,#e0,#0e
	db #e1,#13,#07,#0e,#e0,#0c,#e1,#13
	db #e0,#0c,#e1,#0e,#e2,#13,#e0,#07
	db #e1,#0c,#0c,#13,#e0,#02,#e1,#09
	db #e0,#0e,#e1,#09,#e2,#10,#e0,#09
.lbm4208 equ $ + 5
	db #e1,#0e,#09,#0e,#87,#8b,#dd,#e1
	db #3f,#dc,#e0,#41,#41,#e1,#1c,#41
	db #3f,#41,#1c,#41,#3f,#3f,#1c,#41
.lbm4221 equ $ + 6
	db #3f,#41,#1c,#de,#3f,#87,#dd,#e1
	db #1c,#41,#de,#3f,#41,#3f,#41,#1c
	db #3f,#de,#e1,#3f,#1c,#dc,#1c,#41
.lbm4239 equ $ + 6
	db #3f,#41,#1c,#de,#1c,#87,#8a,#d6
	db #e5,#21,#e3,#21,#e1,#26,#e3,#23
	db #e5,#21,#e3,#21,#e1,#26,#e3,#1f
	db #e1,#1f,#24,#28,#e0,#18,#e1,#28
	db #e0,#1f,#e1,#24,#28,#1f,#e1,#2b
	db #1f,#2b,#e0,#1f,#e1,#2b,#e0,#1f
	db #e1,#2b,#21,#2d,#e1,#30,#e0,#2f
	db #e1,#30,#e0,#30,#e1,#2f,#2f,#e5
	db #2b,#e0,#1f,#1a,#e1,#2b,#2d,#e0
	db #26,#e1,#30,#e0,#30,#e1,#2f,#30
	db #e0,#2f,#2b,#e5,#8f,#e1,#30,#e0
	db #34,#30,#e1,#37,#e0,#30,#e2,#34
	db #e1,#1a,#e2,#37,#e0,#36,#32,#2d
	db #e1,#34,#2b,#30,#e0,#2f,#da,#26
	db #ef,#8f,#d6,#e0,#13,#1f,#21,#23
	db #24,#24,#21,#e1,#26,#e0,#1a,#24
	db #23,#e1,#24,#23,#e2,#1f,#1f,#1a
	db #e0,#18,#e1,#1c,#1f,#1f,#e3,#24
	db #28,#2b,#da,#e1,#30,#32,#d6,#e1
	db #30,#e0,#2f,#e1,#30,#e0,#30,#e1
	db #2f,#2f,#e5,#2b,#e0,#1f,#1a,#e1
	db #2b,#2d,#e0,#26,#e1,#30,#e0,#30
	db #e1,#2f,#30,#e0,#2f,#2b,#e1,#1f
	db #24,#28,#e0,#18,#e1,#28,#e0,#1f
	db #e1,#24,#28,#1f,#e1,#2b,#1f,#2b
	db #e0,#1f,#e1,#2b,#e0,#1f,#e1,#2b
	db #21,#2d,#ef,#8f,#d6,#e0,#13,#1f
	db #21,#23,#24,#24,#21,#e1,#26,#e0
	db #1a,#24,#23,#e1,#24,#23,#e5,#8f
	db #e1,#30,#e0,#34,#30,#e1,#37,#e0
	db #30,#e2,#34,#e1,#1a,#e2,#37,#e0
	db #36,#32,#2d,#e1,#34,#2b,#30,#e0
	db #2f,#da,#26,#87
.lbm4337
	dw lbm4343,lbm41c3,#0000
.lbm433d
	dw lbm4347,lbm4239,#0000
.lbm4347 equ $ + 4
.lbm4343
	db #88,#01,#02,#87,#88,#01,#01,#92
	db #0c,#87,#92,#00,#87,#92,#05,#87
	db #92,#07,#87,#89,#00,#87,#89,#01
	db #87,#ff,#80,#80,#87
	
	;CHIPS.LBN
	;db #4c
	;dw lbn41c3,lbn41bb,lbn41c7
.lbn41bb
	dw lbn41cb,lbn41cb,lbn41f2,#0000
.lbn41c3
	dw lbn424e,#0000
.lbn41c7
	dw lbn4270,#0000
.lbn41cb
	db #8a,#88,#01,#01,#d4,#e1,#09,#09
	db #15,#09,#15,#8f,#09,#13,#8f,#8f
	db #0e,#13,#8f,#17,#15,#13,#80,#0c
	db #0c,#0c,#0c,#8f,#0c,#0e,#8f,#8f
.lbn41f2 equ $ + 7
	db #0e,#0e,#8f,#0e,#0e,#0e,#87,#8f
	db #80,#80,#80,#80,#15,#17,#18,#d3
	db #ef,#0e,#10,#e1,#11,#e3,#11,#e9
	db #11,#e9,#13,#e1,#15,#17,#18,#ef
	db #1a,#1c,#1d,#e7,#1f,#e5,#1f,#e1
	db #1f,#e1,#15,#ed,#15,#ef,#13,#11
	db #13,#d4,#e1,#09,#09,#15,#09,#15
	db #8f,#09,#13,#8f,#8f,#0e,#13,#8f
	db #17,#15,#13,#80,#0c,#0c,#0c,#0c
	db #8f,#0c,#0e,#8f,#8f,#0e,#0e,#8f
	db #0e,#0e,#0e,#09,#09,#09,#09,#09
	db #15,#17,#18,#d3,#ef,#1a,#1c,#1d
.lbn424e equ $ + 3
	db #d4,#1f,#87,#8b,#dc,#e1,#1c,#e0
	db #41,#41,#e1,#3f,#1c,#1c,#41,#3f
	db #41,#1c,#41,#3f,#1c,#1c,#e0,#1c
	db #1c,#e1,#1c,#41,#1c,#41,#3f,#1c
.lbn4270 equ $ + 5
	db #1c,#41,#3f,#41,#87,#8a,#88,#01
	db #01,#d4,#e1,#15,#21,#24,#21,#28
	db #8f,#21,#26,#8f,#8f,#24,#23,#8f
	db #e0,#24,#23,#e1,#21,#1f,#80,#21
	db #24,#21,#28,#8f,#21,#26,#8f,#8f
	db #28,#29,#8f,#8f,#29,#28,#8f,#21
	db #24,#21,#2d,#8f,#21,#2b,#8f,#8f
	db #29,#28,#8f,#e0,#29,#28,#e1,#26
	db #24,#80,#21,#24,#21,#28,#8f,#21
	db #26,#8f,#8f,#28,#29,#8f,#8f,#29
	db #28,#ef,#80,#e1,#02,#1a,#1d,#1a
	db #21,#8f,#1d,#80,#1f,#8f,#1c,#24
	db #8f,#24,#23,#8f,#23,#21,#8f,#21
	db #21,#21,#1f,#1d,#1d,#8f,#8f,#e0
	db #1c,#1a,#e1,#18,#8f,#17,#8f,#02
	db #26,#29,#2d,#8f,#8f,#29,#24,#e5
	db #2b,#30,#e3,#32,#2d,#e1,#2b,#29
	db #8f,#8f,#2b,#28,#8f,#8f,#8f,#e0
	db #29,#28,#e1,#26,#8f,#24,#1f,#21
	db #21,#24,#21,#28,#8f,#21,#26,#8f
	db #8f,#24,#23,#8f,#e0,#24,#23,#e1
	db #21,#1f,#80,#21,#24,#21,#28,#8f
	db #21,#26,#8f,#8f,#28,#29,#8f,#8f
	db #29,#28,#8f,#21,#24,#21,#2d,#8f
	db #21,#2b,#8f,#8f,#29,#28,#8f,#e0
	db #29,#28,#e1,#26,#24,#80,#21,#24
	db #21,#28,#8f,#21,#26,#8f,#8f,#28
	db #29,#8f,#8f,#29,#28,#ef,#8f,#e1
	db #02,#26,#29,#26,#2d,#8f,#26,#2b
	db #8f,#8f,#28,#30,#8f,#30,#2f,#8f
	db #2d,#8f,#24,#2b,#8f,#8f,#24,#8f
	db #2b,#8f,#2d,#8f,#2b,#e0,#29,#28
	db #e1,#26,#24,#87,#92,#00,#87,#92
	db #05,#87,#92,#07,#87,#89,#00,#87
	db #89,#01,#87,#ff,#80,#80,#87
	
	; CHIPS.LBO
	;db #2d
	;dw lbo41bf,lbo41bb,lbo41c3
.lbo41bb
	dw lbo41c7,#0000
.lbo41bf
	dw lbo41ca,#0000
.lbo41c3
	dw lbo41f1,#0000
.lbo41ca equ $ + 3
.lbo41c7
	db #88,#01,#02,#8a,#db,#e3,#21,#1f
	db #21,#1c,#21,#24,#e1,#21,#e5,#1c
	db #ff,#21,#e1,#21,#21,#e3,#1f,#e1
	db #21,#e0,#21,#21,#e1,#1c,#1c,#21
	db #21,#24,#21,#8f,#21,#1c,#8f,#ff
.lbo41f1 equ $ + 2
	db #21,#87,#8a,#88,#01,#01,#dc,#e0
	db #39,#37,#37,#34,#34,#39,#37,#34
	db #39,#3c,#39,#34,#34,#37,#3c,#39
	db #39,#37,#37,#34,#34,#39,#37,#34
	db #39,#37,#39,#39,#37,#39,#3c,#39
	db #37,#39,#34,#37,#34,#39,#37,#39
	db #3c,#39,#34,#39,#37,#39,#3c,#39
	db #37,#39,#34,#39,#3c,#39,#37,#39
	db #37,#39,#39,#37,#34,#39,#39,#37
	db #39,#34,#37,#34,#34,#37,#39,#3c
	db #37,#34,#39,#37,#39,#39,#3c,#37
	db #37,#34,#39,#3c,#3c,#34,#37,#37
	db #34,#39,#37,#34,#37,#39,#3c,#39
	db #37,#39,#37,#34,#34,#39,#3c,#39
	db #34,#39,#37,#39,#34,#39,#3c,#39
	db #39,#39,#3c,#39,#34,#39,#37,#39
	db #39,#37,#39,#39,#39,#37,#3c,#34
	db #87,#92,#00,#87,#92,#05,#87,#92
	db #07,#87,#89,#00,#87,#89,#01,#87
	db #ff,#80,#80,#87
	
	; CHIPS.LBP
	;db #70
	;dw lbp41bf,lbp41bb,lbp41c3
.lbp41bb
	dw lbp41c7,#0000
.lbp41bf
	dw lbp4266,#0000
.lbp41c3
	dw lbp4305,#0000
.lbp41c7
	db #88,#01,#01,#8a,#d6,#e3,#80,#32
	db #80,#35,#32,#31,#80,#80,#80,#22
	db #80,#21,#1c,#1a,#15,#11,#80,#1a
	db #80,#1a,#18,#22,#21,#1f,#1d,#1c
	db #80,#15,#10,#0e,#15,#0e,#1c,#0e
	db #80,#13,#80,#0c,#80,#80,#80,#16
	db #80,#19,#80,#12,#80,#17,#80,#0b
	db #80,#0d,#80,#0f,#80,#80,#80,#0b
	db #80,#0d,#80,#0e,#80,#80,#80,#17
	db #80,#15,#80,#0e,#80,#80,#80,#10
	db #80,#09,#80,#0e,#80,#80,#80,#09
	db #80,#15,#80,#21,#80,#23,#80,#15
	db #80,#21,#80,#2d,#80,#2d,#80,#34
	db #80,#28,#80,#15,#80,#15,#80,#1f
	db #80,#80,#80,#1a,#80,#1a,#80,#19
	db #80,#80,#80,#17,#80,#19,#10,#1a
	db #15,#0e,#80,#15,#80,#16,#80,#0d
	db #80,#80,#80,#17,#80,#10,#0d,#1a
	db #15,#1a,#80,#10,#80,#15,#80,#0e
.lbp4266 equ $ + 7
	db #15,#1a,#80,#16,#80,#15,#87,#8a
	db #88,#01,#01,#d6,#e3,#80,#35,#80
	db #80,#80,#34,#80,#80,#80,#2c,#80
	db #2b,#80,#29,#2d,#32,#80,#21,#80
	db #80,#80,#80,#80,#21,#26,#20,#80
	db #1f,#80,#1d,#1c,#1d,#80,#21,#80
	db #1a,#80,#1c,#1d,#1c,#80,#22,#80
	db #25,#80,#26,#80,#26,#80,#27,#80
	db #28,#80,#2a,#80,#80,#80,#26,#80
	db #28,#80,#26,#80,#80,#80,#20,#80
	db #1f,#80,#1e,#80,#80,#80,#20,#80
	db #1c,#80,#1e,#80,#80,#80,#1f,#80
	db #1f,#80,#2a,#80,#2a,#80,#1f,#80
	db #2b,#80,#36,#80,#36,#80,#37,#80
	db #2b,#80,#1c,#80,#1c,#80,#21,#80
	db #80,#80,#29,#80,#22,#2b,#28,#80
	db #80,#80,#2c,#80,#2c,#1c,#29,#31
	db #32,#80,#1d,#80,#1d,#1a,#1c,#80
	db #80,#80,#20,#80,#1f,#19,#1d,#25
	db #26,#80,#1f,#80,#1f,#80,#1d,#21
.lbp4305 equ $ + 6
	db #26,#80,#20,#80,#1f,#87,#8a,#88
	db #01,#01,#d6,#e3,#32,#39,#3a,#3c
	db #3a,#39,#34,#2d,#35,#32,#35,#34
	db #31,#32,#34,#35,#2d,#32,#2d,#2e
	db #2d,#28,#28,#28,#29,#26,#34,#25
	db #21,#26,#21,#26,#28,#24,#28,#1d
	db #26,#24,#21,#1f,#28,#28,#2a,#2b
	db #2a,#2b,#2d,#2a,#2f,#2f,#2f,#2e
	db #2c,#2f,#2c,#2a,#2f,#2f,#2f,#2d
	db #2b,#2f,#2b,#2a,#2a,#2a,#2a,#28
	db #28,#26,#21,#23,#2a,#29,#2a,#1f
	db #28,#26,#21,#23,#15,#21,#21,#2d
	db #2d,#32,#e1,#31,#2d,#e3,#2f,#21
	db #2d,#2d,#39,#39,#3e,#e1,#3d,#39
	db #e3,#3b,#e1,#3d,#39,#e3,#3b,#e1
	db #31,#2d,#e3,#2f,#e1,#24,#21,#e3
	db #23,#e1,#25,#21,#e3,#23,#8f,#e0
	db #2b,#2d,#2e,#31,#32,#33,#34,#35
	db #36,#37,#38,#39,#3a,#3b,#3c,#3d
	db #e3,#39,#3a,#35,#32,#39,#34,#2d
	db #35,#32,#35,#34,#31,#32,#34,#35
	db #2d,#32,#2d,#2e,#2d,#28,#28,#21
	db #29,#26,#28,#25,#21,#26,#28,#29
	db #29,#e1,#29,#29,#e3,#29,#25,#28
	db #26,#28,#29,#29,#26,#29,#25,#87
	db #92,#00,#87,#92,#05,#87,#92,#07
	db #87,#89,#00,#87,#89,#01,#87,#ff
	db #80,#80,#87
;
.music_info
	db "Chips Challenge (1990)(Epyx)(David Whittaker)",0
	db "Intro + all levels musics assembled by Megachur",0

	read "music_end.asm"