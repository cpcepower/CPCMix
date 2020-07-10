; Music of Race Against Time (1988)(Codemasters)(David Whittaker)()
; Ripped by Megachur the 08/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RACEAGAT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #9800
FIRST_THEME				equ 0
LAST_THEME				equ 7

	read "music_header.asm"
	
;
.init_music
;
	ld hl,l9e2c
	ld (hl),#00
	inc hl
	ld (hl),#00
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l9fe7
	add hl,bc
	ld a,(hl)
	ld (l98eb),a
	inc hl
	ld ix,l985b
	ld c,#21
	ld a,#03
.l9821
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
	jr nz,l9821
	ld (l9b9b),a
	inc a
	ld (l98be),a
	ld (l9e2c),a
	ret
.l985b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09
.l987c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12
.l989d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #24
.l98be
	db #00
;
.play_music
;
	call l9e7f
	ld a,(l9e2c)
	and a
	jp z,l991b
.l98ca equ $ + 1
	ld a,#00
	ld (l9917),a
	ld hl,l98be
	dec (hl)
	jr nz,l98ef
	ld b,(hl)
	ld ix,l985b
	call l9ac2
	ld ix,l987c
	call l9ac2
	ld ix,l989d
	call l9ac2
.l98eb equ $ + 1
	ld a,#01
	ld (l98be),a
.l98ef
	ld ix,l985b
	call l9b68
	ld (l9c5d),hl
	ld (l9c65),a
	ld ix,l987c
	call l9b68
	ld (l9c5f),hl
	ld (l9c66),a
	ld ix,l989d
	call l9b68
	ld (l9c61),hl
	ld (l9c67),a
.l9917 equ $ + 1
	ld a,#00
	ld (l9c63),a
.l991b
	ld a,(l9e2d)
	and a
	jr z,l994b
	ld hl,(l9c6a)
	ld (l9c5d),hl
	ld hl,(l9c6e)
	ld (l9c61),hl
	ld a,(l9c70)
	ld (l9c63),a
	ld a,(l9c64)
	or #2d
	ld hl,l9c71
	and (hl)
	ld (l9c64),a
	ld a,(l9c72)
	ld (l9c65),a
.l9946 equ $ + 1
	ld a,(l9c74)
	ld (l9c67),a
.l994b
	ld a,(l9e2c)
	ld hl,l9e2d
	or (hl)
	ret z
	ld hl,l9c68
	ld d,#0b
.l9958
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
	jp p,l9958
	ret
.l9979
	ld de,#0d00
.l997c
	call l9986
	dec d
	jp p,l997c
	ld de,#073f
.l9986
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
.l99a1
	push af
	push bc
	push de
	push hl
	push ix
	call l99b1
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
;
.stop_music
.l99b1
;
	xor a
	ld (l9e2c),a
	ld (l9e2d),a
	call l9979
	xor a
	ld (l9c65),a
	ld (l9c66),a
	ld (l9c67),a
	ret
	db #e2
	db #ca
	db #ce
	db #d3
	db #91
	db #c0
	db #bb
	db #28
	db #aa
	db #a2
	db #67
	db #51
	db #79
	db #cf
	db #1d
	db #dc
	db #e1
	db #e6
	db #01
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
	jp l9ad0
	pop hl
	jp l99a1
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
	jr nz,l9a17
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l9a17
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l9ad0
	ld a,(ix+#20)
	ld c,a
	and #07
	ld hl,l9c28
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l9ad0
	ld a,(ix+#20)
	ld c,a
	and #38
	ld hl,l9c28
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l9ad0
	ld hl,l9c28
	ld a,(ix+#20)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l9ad0
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l9ad0
	ld a,(de)
	inc de
	ld (l9b9b),a
	jr l9ad0
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l9ad0
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l9ad0
	ld (ix+#1d),b
	jr l9ad0
	ld (ix+#1d),#40
	jr l9ad0
	ld (ix+#1d),#c0
	jr l9ad0
	set 1,(ix+#00)
	jr l9ad0
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l9aff
	res 5,(ix+#00)
	jr l9aff
	ld (ix+#1f),#ff
	jr l9ad0
	ld (ix+#1f),b
	jr l9ad0
.l9ac2
	dec (ix+#10)
	jr nz,l9b1c
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l9ad0
	ld a,(de)
	inc de
	and a
	jp m,l9b2d
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l9ae2
	ld (l98ca),a
.l9ae2
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
.l9aff
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l9b1b
	ld a,(l9e2d)
	and a
	jr nz,l9b1b
	ld (ix+#1f),#ff
.l9b1b
	ret
.l9b1c
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l9b29
	inc (ix+#12)
	ret
.l9b29
	dec (ix+#12)
	ret
.l9b2d
	cp #b8
	jr c,l9b60
	add #20
	jr c,l9b41
	add #10
	jr c,l9b48
	add #19
	ld (l98eb),a
	jp l9ad0
.l9b41
	inc a
	ld (ix+#11),a
	jp l9ad0
.l9b48
	ld hl,l9d36
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
	jp l9ad0
.l9b60
	ld hl,l9946
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l9b68
	ld c,(ix+#00)
	bit 5,c
	jr z,l9b9a
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l9b94
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l9b94
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l9b94
	ld a,(ix+#18)
	ld (ix+#13),a
.l9b9b equ $ + 1
.l9b9a
	ld a,#00
	add (ix+#12)
	ld hl,l9c76
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l9bf9
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l9bc2
	bit 0,c
	jr nz,l9be0
.l9bc2
	bit 5,l
	jr nz,l9bd2
	sub (ix+#1b)
	jr nc,l9bdd
	set 5,(ix+#1d)
	sub a
	jr l9bdd
.l9bd2
	add (ix+#1b)
	cp b
	jr c,l9bdd
	res 5,(ix+#1d)
	ld a,b
.l9bdd
	ld (ix+#1c),a
.l9be0
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l9beb
	dec d
.l9beb
	add #a0
	jr c,l9bf7
.l9bef
	sla e
	rl d
	add #18
	jr nc,l9bef
.l9bf7
	add hl,de
	ex de,hl
.l9bf9
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l9c24
	ld b,(ix+#0e)
	djnz l9c21
	ld c,(ix+#0d)
	bit 7,c
	jr z,l9c10
	dec b
.l9c10
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l9c24
.l9c21
	ld (ix+#0e),b
.l9c24
	cpl
	and #03
.l9c28 equ $ + 1
	ld a,#38
	jr nz,l9c35
	ld a,(l98ca)
	xor #08
	ld (l9917),a
	ld a,#07
.l9c35
	ld hl,l9c64
	xor (hl)
	and (ix+#20)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l9c58
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#20)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l9917),a
.l9c58
	ex de,hl
	ld a,(ix+#13)
	ret
.l9c64 equ $ + 7
.l9c63 equ $ + 6
.l9c61 equ $ + 4
.l9c5f equ $ + 2
.l9c5d
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l9c6b equ $ + 6
.l9c6a equ $ + 5
.l9c68 equ $ + 3
.l9c67 equ $ + 2
.l9c66 equ $ + 1
.l9c65
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l9c74 equ $ + 7
.l9c72 equ $ + 5
.l9c71 equ $ + 4
.l9c70 equ $ + 3
.l9c6e equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l9c76
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
.l9d36
	dw l9d4f,l9d54,l9d5c,l9d6e
	dw l9d98,l9d9c,l9dc6,l9dcc
	dw l9df0,l9dfc,l9e08,l9e14
.l9d54 equ $ + 6
.l9d4f equ $ + 1
	db #01,#0d,#0a,#05,#87,#03,#0f,#0e
.l9d5c equ $ + 6
	db #0d,#0c,#0b,#0a,#87,#01,#0f,#0e
	db #0c,#0b,#0d,#0c,#0a,#09,#0b,#0a
	db #08,#07,#09,#08,#06,#05,#87,#01
.l9d6e
	db #0f,#0e,#0d,#0c,#0b,#0d,#0c,#0b
	db #0a,#09,#0b,#0a,#09,#08,#07,#09
	db #08,#07,#06,#05,#07,#06,#05,#04
	db #03,#05,#04,#03,#02,#01,#04,#03
	db #02,#01,#03,#02,#01,#02,#01,#00
.l9d9c equ $ + 6
.l9d98 equ $ + 2
	db #87,#0a,#0f,#0e,#87,#02,#0f,#0e
	db #0d,#0c,#0b,#0d,#0c,#0b,#0a,#09
	db #0b,#0a,#09,#08,#07,#09,#08,#07
	db #06,#05,#07,#06,#05,#04,#03,#05
	db #04,#03,#02,#01,#04,#03,#02,#01
	db #03,#02,#01,#02,#01,#00,#87,#01
.l9dcc equ $ + 6
.l9dc6
	db #0b,#0f,#0b,#08,#87,#02,#0a,#0b
	db #0c,#0d,#0e,#0f,#0f,#0e,#0e,#0e
	db #0e,#0d,#0d,#0c,#0c,#0c,#0c,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#09
	db #09,#09,#09,#08,#08,#08,#07,#06
.l9df0 equ $ + 2
	db #87,#01,#0c,#0b,#0a,#09,#08,#07
.l9dfc equ $ + 6
	db #09,#08,#07,#06,#87,#01,#0d,#0c
	db #0b,#0a,#09,#08,#0a,#09,#08,#07
.l9e08 equ $ + 2
	db #87,#01,#0e,#0d,#0c,#0b,#0a,#09
.l9e14 equ $ + 6
	db #0b,#0a,#09,#08,#87,#02,#06,#07
	db #08,#09,#0a,#0b,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#09,#09,#09,#09,#08
.l9e2d equ $ + 7
.l9e2c equ $ + 6
.music_end equ $ + 6
	db #08,#08,#07,#06,#05,#87,#00,#00
	ld hl,l9e2d
	ld (hl),#00
	ld hl,l9f1d
	add a
	add l
	ld l,a
	jr nc,l9e3c
	inc h
.l9e3c
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l9fb5
.l9e44
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l9e44
	ld a,(l9fb6)
	ld (l9fc6),a
	ld hl,(l9fb7)
	ld (l9c6a),hl
	ld de,(l9fb9)
	ld (l9c6e),de
	ld a,l
	ld (l9c70),a
	ld a,(l9fbc)
	ld (l9c71),a
	ld a,(l9fbb)
	ld e,a
	ld d,#0c
	call l9986
	ld a,(l9fc5)
	ld e,a
	ld d,#0d
	call l9986
	ld hl,l9e2d
	inc (hl)
	ret
.l9e7f
	call l9fc8
	ld a,(l9e2d)
	and a
	ret z
	ld a,(l9fb5)
	and a
	jr nz,l9e93
	ld (l9e2d),a
	jp l9979
.l9e93
	dec a
	ld (l9fb5),a
	ld a,(l9fc6)
	and a
	jr nz,l9ecc
	ld a,(l9fc3)
	and a
	ret z
	dec a
	ld (l9fc3),a
	ld a,(l9fb6)
	ld (l9fc6),a
	ld a,(l9fc4)
	and a
	jr z,l9eb5
	ld a,(l9fe3)
.l9eb5
	ld b,a
	ld a,(l9fb7)
	add b
	ld (l9c6a),a
	ld a,(l9fb8)
	add b
	and #0f
	ld (l9c6b),a
	ld hl,(l9fb9)
	ld (l9c6e),hl
.l9ecc
	ld hl,l9fc6
	dec (hl)
	ld a,(l9fc1)
	and a
	jr z,l9ef3
	jp p,l9ee6
	ld hl,(l9c6a)
	ld de,(l9fbd)
	add hl,de
	ld (l9c6a),hl
	jr l9ef3
.l9ee6
	ld hl,(l9c6a)
	ld de,(l9fbd)
	and a
	sbc hl,de
	ld (l9c6a),hl
.l9ef3
	ld a,(l9fc2)
	and a
	jr z,l9f16
	jp p,l9f09
	ld hl,(l9c6e)
	ld de,(l9fbf)
	add hl,de
	ld (l9c6e),hl
	jr l9f16
.l9f09
	ld hl,(l9c6e)
	ld de,(l9fbf)
	and a
	sbc hl,de
	ld (l9c6e),hl
.l9f16
	ld a,(l9c6a)
	ld (l9c70),a
	ret
.l9f1d
	dw l9f2d,l9f3e,l9f4f,l9f60
	dw l9f71,l9f82,l9f93,l9fa4
.l9f2d
	db #0a,#06,#00,#04,#10,#04,#05,#f2
	db #98,#00,#98,#00,#ff,#ff,#05,#00
.l9f3e equ $ + 1
	db #00,#0a,#04,#a0,#01,#00,#03,#0a
	db #fa,#20,#00,#18,#00,#ff,#ff,#3c
.l9f4f equ $ + 2
	db #00,#00,#0f,#07,#04,#00,#0b,#00
	db #0a,#fa,#08,#00,#08,#00,#01,#01
.l9f60 equ $ + 3
	db #0a,#00,#00,#14,#ff,#22,#00,#48
	db #00,#0f,#fa,#01,#04,#01,#04,#01
.l9f71 equ $ + 4
	db #01,#ff,#00,#00,#1e,#08,#60,#00
	db #90,#01,#0f,#fa,#06,#00,#14,#00
.l9f82 equ $ + 5
	db #01,#01,#ff,#00,#00,#0a,#05,#8a
	db #01,#97,#01,#05,#fa,#1f,#00,#1c
.l9f93 equ $ + 6
	db #00,#ff,#ff,#05,#00,#00,#03,#63
	db #21,#00,#10,#02,#01,#d7,#00,#00
.l9fa4 equ $ + 7
	db #00,#00,#01,#01,#00,#00,#0e,#12
	db #06,#ba,#00,#be,#00,#0a,#fa,#20
	db #00,#20,#00,#ff,#ff,#06,#00,#00
.l9fbc equ $ + 7
.l9fbb equ $ + 6
.l9fb9 equ $ + 4
.l9fb8 equ $ + 3
.l9fb7 equ $ + 2
.l9fb6 equ $ + 1
.l9fb5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9fc4 equ $ + 7
.l9fc3 equ $ + 6
.l9fc2 equ $ + 5
.l9fc1 equ $ + 4
.l9fbf equ $ + 2
.l9fbd
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9fc6 equ $ + 1
.l9fc5
	db #00,#00,#00
.l9fc8
	ld a,(l9fe3)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l9fe6
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l9fe6 equ $ + 3
.l9fe3
	db #ff,#80,#1b,#34
.l9fe7
	db #08
	dw la01f,la079,la06d
	db #08
	dw la489,la48d,la48b
	db #08
	dw la4b5,la4b9,la4b7
	db #0a
	dw la4e6,la4ea,la4e8
	db #06
	dw la50b,la50f,la50d
	db #05
	dw la58d,la591,la58f
	db #05
	dw la5bf,la5c3,la5c1
	db #04
	dw la5e5,la5e9,la5e7
.la01f
	dw la087,la08e,la08e,la08e
	dw la08e
.la029
	dw la0b9,la0e1,la0b9
	dw la0e1,la0b9,la0e1,la0b9
	dw la0e1,la0b9,la109,la131
	dw la0b9,la0b9,la109,la131
	dw la0b9,la159,la159,la181
	dw la159,la159,la181,la0b9
	dw la1d0,la109,la1f8,la0b9
	dw la1d0,la109,la1f8,la109
	dw la1f8,la08a,#0000
.la06d
	dw la220
.la06f
	dw la240,la291,la291
	dw la2cf,#0000
.la079
	dw la346
.la07b
	dw la360,la360,la360
	dw la360,la37a,#0000
.la08e equ $ + 7
.la08a equ $ + 3
.la087
	db #e3,#80,#87,#92
	dw la029
	db #87,#88,#02,#02,#82,#90,#e0,#8b
	db #da,#3f,#d0,#41,#da,#3f,#d0,#41
	db #8c,#da,#32,#8b,#d0,#41,#41,#da
	db #3f,#d0,#41,#41,#da,#3f,#d0,#41
	db #8c,#da,#32,#8b,#d0,#41,#41,#41
	db #88,#01,#01,#87
.la0b9
	db #8a,#d2,#0e,#8b,#d0,#41,#da,#3f
	db #d0,#41,#8c,#da,#32,#8b,#d0,#41
	db #41,#da,#3f,#d2,#8a,#0e,#8b,#d0
	db #41,#d2,#8a,#0e,#8b,#d0,#41,#8c
	db #da,#32,#8b,#d0,#41,#41,#41,#87
.la0e1
	db #8a,#d2,#0a,#8b,#d0,#41,#da,#3f
	db #d0,#41,#8c,#da,#32,#8b,#d0,#41
	db #41,#da,#3f,#d2,#8a,#11,#8b,#d0
	db #41,#d2,#8a,#11,#8b,#d0,#41,#8c
	db #da,#32,#8b,#d0,#41,#41,#41,#87
.la109
	db #8a,#d2,#0e,#8b,#d0,#41,#da,#3f
	db #d0,#41,#8c,#da,#32,#8b,#d0,#41
	db #41,#da,#3f,#d2,#8a,#0a,#8b,#d0
	db #41,#d2,#8a,#0a,#8b,#d0,#41,#8c
	db #da,#32,#8b,#d0,#41,#41,#41,#87
.la131
	db #8a,#d2,#0c,#8b,#d0,#41,#da,#3f
	db #d0,#41,#8c,#da,#32,#8b,#d0,#41
	db #41,#da,#3f,#d2,#8a,#09,#8b,#d0
	db #41,#d2,#8a,#09,#8b,#d0,#41,#8c
	db #da,#32,#8b,#d0,#41,#41,#41,#87
.la159
	db #8a,#d2,#11,#8b,#d0,#41,#da,#3f
	db #d0,#41,#8c,#da,#32,#8b,#d0,#41
	db #41,#da,#3f,#d2,#8a,#11,#8b,#d0
	db #41,#d2,#8a,#11,#8b,#d0,#41,#8c
	db #da,#32,#8b,#d0,#41,#41,#41,#87
.la181
	db #8a,#d2,#0c,#8b,#d0,#41,#da,#3f
	db #d0,#41,#8c,#da,#32,#8b,#d0,#41
	db #41,#da,#3f,#d2,#8a,#0a,#8b,#d0
	db #41,#d2,#8a,#0a,#8b,#d0,#41,#8c
	db #da,#32,#8b,#d0,#41,#41,#41,#8a
	db #d2,#09,#8b,#d0,#41,#da,#3f,#d0
	db #41,#8c,#da,#32,#8b,#d0,#41,#41
	db #da,#3f,#d2,#8a,#09,#8b,#d0,#41
	db #d2,#8a,#09,#8b,#d0,#41,#8c,#da
	db #32,#8b,#d0,#41,#41,#41,#87
.la1d0
	db #8a,#d2,#0a,#8b,#d0,#41,#da,#3f
	db #d0,#41,#8c,#da,#32,#8b,#d0,#41
	db #41,#da,#3f,#d2,#8a,#0a,#8b,#d0
	db #41,#d2,#8a,#0a,#8b,#d0,#41,#8c
	db #da,#32,#8b,#d0,#41,#41,#41,#87
.la1f8
	db #8a,#d2,#0a,#8b,#d0,#41,#da,#3f
	db #d0,#41,#8c,#da,#32,#8b,#d0,#41
	db #41,#da,#3f,#d2,#8a,#0e,#8b,#d0
	db #41,#d2,#8a,#0e,#8b,#d0,#41,#8c
	db #da,#32,#8b,#d0,#41,#41,#41,#87
.la220
	db #d7,#8a,#81,#e3,#84,#ff,#10,#21
	db #ef,#26,#eb,#8f,#db,#e3,#84,#ff
	db #10,#21,#f1,#26,#88,#01,#01,#82
	db #e1,#d6,#43,#3e,#3c,#37,#39,#87
.la240
	db #8a,#81,#db,#e3,#84,#ff,#10,#21
	db #e3,#26,#d8,#82,#e1,#35,#35,#34
	db #34,#e3,#32,#e1,#8f,#35,#2b,#26
	db #30,#2b,#2d,#e5,#26,#e1,#35,#35
	db #34,#34,#e3,#32,#e1,#8f,#35,#2b
	db #26,#30,#2b,#2d,#e5,#26,#e1,#35
	db #35,#34,#34,#e3,#32,#e1,#8f,#35
	db #2b,#26,#30,#2b,#2d,#e5,#26,#e1
	db #35,#35,#34,#34,#e3,#32,#e1,#8f
	db #35,#2b,#26,#30,#2b,#2d,#e1,#26
	db #87
.la291
	db #d8,#88,#01,#01,#e1,#80,#e0,#26
	db #26,#e1,#29,#26,#80,#e0,#26,#26
	db #e1,#29,#26,#80,#e0,#29,#29,#e1
	db #27,#29,#80,#e0,#22,#22,#e1,#28
	db #22,#80,#e0,#24,#24,#e1,#28,#24
	db #80,#e0,#21,#21,#e1,#28,#21,#80
	db #e0,#26,#26,#e1,#29,#28,#28,#e0
	db #26,#26,#e1,#29,#28,#87
.la2cf
	db #d7,#81,#e5,#39,#e1,#35,#37,#e3
	db #39,#3a,#39,#37,#e5,#35,#82,#d3
	db #e0,#24,#24,#e1,#26,#24,#26,#28
	db #e0,#24,#24,#e1,#24,#e0,#24,#26
	db #ee,#1c,#d7,#81,#e0,#84,#ff,#02
	db #37,#e5,#39,#e1,#35,#37,#e3,#39
	db #3a,#39,#37,#e5,#35,#82,#d3,#e0
	db #24,#24,#e1,#26,#24,#26,#e0,#28
	db #e1,#26,#e0,#26,#e1,#24,#e0,#24
	db #26,#e1,#21,#e9,#1c,#d3,#e3,#21
	db #ed,#1d,#e1,#80,#e3,#29,#29,#26
	db #26,#e3,#29,#28,#8f,#26,#ef,#24
	db #8f,#e3,#29,#29,#26,#26,#29,#28
	db #8f,#26,#ef,#24,#e3,#29,#28,#8f
.la346 equ $ + 7
	db #26,#eb,#21,#92
	dw la06f
	db #87,#8a
	db #88,#02,#02,#82,#d7,#e3,#84,#ff
	db #10,#21,#ef,#26,#eb,#8f,#db,#e3
	db #84,#ff,#10,#21,#ef,#26,#eb,#8f
	db #87
.la360
	db #db,#88,#01,#01,#e3,#84,#ff,#10
	db #21,#26,#88,#01,#01,#d5,#84,#01
	db #10,#35,#80,#37,#3c,#e1,#39,#e5
	db #35,#87
.la37a
	db #d3,#e3,#80,#e3,#2d,#e1,#2d,#2d
	db #e0,#2d,#e2,#2d,#e3,#80,#e0,#2d
	db #e2,#2d,#e1,#2b,#29,#e3,#29,#80
	db #e3,#2b,#e1,#2b,#2b,#e0,#2b,#e2
	db #2b,#e3,#80,#e0,#2d,#2d,#e1,#2d
	db #e0,#2b,#29,#29,#e4,#29,#e3,#80
	db #e0,#2d,#e2,#2d,#e1,#2d,#2d,#e0
	db #2d,#e2,#2d,#e3,#80,#e0,#2d,#e2
	db #2d,#e1,#2b,#29,#e3,#29,#80,#e0
	db #2b,#e2,#2b,#e1,#2b,#2b,#2b,#2b
	db #80,#26,#e0,#2d,#e2,#2d,#e1,#2b
	db #e0,#29,#e4,#29,#e2,#80,#88,#01
	db #01,#d7,#e0,#84,#ff,#02,#37,#e5
	db #39,#e1,#35,#37,#e3,#39,#3a,#39
	db #37,#e5,#35,#d3,#e0,#28,#28,#e1
	db #29,#28,#29,#2b,#e0,#28,#28,#e1
	db #28,#e0,#28,#29,#e1,#28,#ec,#24
	db #d7,#e0,#84,#ff,#02,#37,#e5,#39
	db #e1,#35,#37,#e3,#39,#3a,#39,#37
	db #e5,#35,#d3,#e0,#28,#28,#e1,#29
	db #28,#29,#e0,#2b,#e1,#29,#e0,#29
	db #e1,#28,#e0,#28,#29,#e1,#28,#e9
	db #24,#d3,#e1,#2b,#24,#e0,#26,#ec
	db #26,#e1,#2e,#2d,#2d,#2d,#2b,#e0
	db #2b,#29,#e1,#29,#29,#2b,#e2,#2d
	db #e0,#2e,#e1,#2d,#2d,#e3,#2b,#8f
	db #e2,#28,#e0,#24,#e1,#24,#e9,#26
	db #ed,#80,#e1,#2e,#2d,#2d,#2d,#2b
	db #e0,#2b,#29,#e1,#29,#29,#2b,#e2
	db #2d,#e0,#2e,#e1,#2d,#2d,#e3,#2b
	db #8f,#e2,#28,#e0,#24,#e1,#24,#e9
	db #26,#e2,#2d,#e0,#2e,#e1,#2d,#2d
	db #e3,#2b,#8f,#e2,#28,#e0,#24,#e1
	db #24,#e5,#26,#92
	dw la07b
	db #87
.la48d equ $ + 4
.la48b equ $ + 2
.la489
	dw la48f,la49c,la4a9
.la48f
	db #8a,#d3,#88,#01,#01,#82,#e0,#13
	db #13,#13,#e8,#0c,#8e
.la49c
	db #8a,#d3,#90,#88,#01,#01,#82,#e0
	db #1f,#1f,#1f,#e8,#18
.la4a9
	db #8a,#d3,#88,#01,#01,#82,#e0,#26
	db #26,#26,#e8,#28
.la4b9 equ $ + 4
.la4b7 equ $ + 2
.la4b5
	dw la4bb,la4ca,la4d8
.la4bb
	db #8a,#88,#01,#01,#82,#d7,#e3,#84
	db #f9,#10,#1c,#d3,#e7,#28,#8e
.la4ca
	db #8a,#88,#01,#01,#82,#d7,#e3,#84
	db #fa,#10,#1f,#d3,#e7,#2b
.la4d8
	db #8a,#88,#01,#01,#82,#d7,#e3,#84
	db #fa,#10,#24,#d3,#e7,#30
.la4ea equ $ + 4
.la4e8 equ $ + 2
.la4e6
	dw la4ec,la4f7,la501
.la4ec
	db #8a,#88,#01,#01,#82,#d3,#e2,#24
	db #e5,#18,#8e
.la4f7
	db #8a,#88,#01,#01,#82,#d3,#e0,#80
	db #e7,#1f
.la501
	db #8a,#88,#01,#01,#82,#d3,#e1,#80
	db #e6,#1b
.la50f equ $ + 4
.la50d equ $ + 2
.la50b
	dw la511,la553,la570
.la511
	db #8a,#d3,#88,#01,#01,#82,#90,#e1
	db #0c,#e0,#18,#e1,#0c,#e0,#18,#e1
	db #0c,#e0,#18,#e1,#0c,#e0,#18,#e1
	db #0c,#e0,#18,#e1,#0c,#e0,#18,#e1
	db #0c,#e0,#18,#e1,#0c,#e0,#18,#e1
	db #13,#e0,#1f,#e1,#13,#e0,#1f,#e1
	db #13,#e0,#1f,#e1,#13,#e0,#1f,#e1
	db #0c,#e0,#18,#e1,#0c,#e0,#18,#e1
	db #0c,#8e
.la553
	db #8a,#d3,#88,#01,#01,#82,#e7,#24
	db #e0,#23,#24,#23,#24,#e7,#28,#e0
	db #28,#29,#28,#29,#e7,#2b,#e0,#29
	db #2b,#29,#2b,#e7,#28
.la570
	db #8a,#d3,#88,#01,#01,#82,#e7,#28
	db #e0,#26,#28,#26,#28,#e7,#2b,#e0
	db #2b,#2d,#2b,#2d,#e7,#2f,#e0,#2d
	db #2f,#2d,#2f,#e7,#30
.la591 equ $ + 4
.la58f equ $ + 2
.la58d
	dw la593,la5a2,la5b1
.la593
	db #8a,#d3,#88,#01,#01,#82,#e2,#11
	db #11,#e3,#11,#d7,#ef,#0c,#8e
.la5a2
	db #8a,#d3,#88,#01,#01,#82,#90,#e2
	db #18,#18,#e3,#18,#d7,#ef,#18
.la5b1
	db #8a,#d3,#88,#01,#01,#82,#e2,#1d
	db #1d,#e3,#1d,#d7,#ef,#1f
.la5c3 equ $ + 4
.la5c1 equ $ + 2
.la5bf
	dw la5c5,la5d0,la5db
.la5c5
	db #8a,#88,#01,#01,#82,#da,#e0,#24
	db #e1,#26,#8e
.la5d0
	db #8a,#88,#01,#01,#82,#90,#da,#e0
	db #29,#e1,#29
.la5db
	db #8a,#88,#01,#01,#82,#da,#e0,#2d
	db #e1,#2e
.la5e9 equ $ + 4
.la5e7 equ $ + 2
.la5e5
	dw la5eb,la5f0,la5f4
.la5f0 equ $ + 5
.la5eb
	db #8a,#d3,#e3,#48,#8e,#8a,#d3,#e3
	db #43
.la5f4
	db #8a,#e3,#80
;
.music_info
	db "Race Against Time (1988)(Codemasters)(David Whittaker)",0
	db "",0

	read "music_end.asm"
