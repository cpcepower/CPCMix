; Music of Only For Your Eyes 2 Megademo - Intro (1995)(Ast System)(Ast)(ST-128 Module)
; Ripped by Megachur the 24/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OFYE2MIN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6d00

	read "music_header.asm"

	jp l6d09
	jp l6d9d
	jp l6d81
;
.init_music
.l6d09
;
	xor a
	ld hl,l72b4
	call l6d7a
	ld hl,l72e2
	call l6d7a
	ld hl,l7310
	call l6d7a
	ld ix,l72b0
	ld iy,l733a
	ld de,#002e
	ld b,#03
.l6d29
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l6d29
	ld hl,l71c9
	ld (hl),#06
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l71c5),hl
	ld (l71c7),hl
	ld a,#0c
	ld c,d
	call l71a5
	ld a,#0d
	ld c,d
	jp l71a5
.l6d7a
	ld b,#2a
.l6d7c
	ld (hl),a
	inc hl
	djnz l6d7c
	ret
;
.stop_music
.l6d81
;
	ld a,#07
	ld c,#3f
	call l71a5
	ld a,#08
	ld c,#00
	call l71a5
	ld a,#09
	ld c,#00
	call l71a5
	ld a,#0a
	ld c,#00
	jp l71a5
;
.play_music
.l6d9d
;
	ld hl,l71cb
	dec (hl)
	ld ix,l72b0
	ld bc,l72be
	call l6e3f
	ld ix,l72de
	ld bc,l72ec
	call l6e3f
	ld ix,l730c
	ld bc,l731a
	call l6e3f
	ld hl,l71c4
	ld de,l71cb
	ld b,#06
	call l6e1c
	ld b,#07
	call l6e1c
	ld b,#0b
	call l6e1c
	ld b,#0d
	call l6e1c
	ld de,l71cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l72cf
	call l6df5
	ld hl,l72fd
	call l6df5
	ld hl,l732b
.l6df5
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l6e0a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l6e0a
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l6e1c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l71a5
.l6e27
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l71a5
.l6e3f
	ld a,(l71cb)
	or a
	jp nz,l6ef7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l6ef7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l6e27
	or a
	jp z,l6eec
	ld r,a
	and #7f
	cp #10
	jr c,l6ec7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l703f
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l6ea0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l6ea0
	rrca
	ld c,a
	ld hl,l7340
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l6ebf
	ld (ix+#1e),b
.l6ebf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l6ee0
.l6ec7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l71d0
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add e
	add h
	add l
	add (hl)
	add h
.l6ee0
	ld a,d
	or a
	jr nz,l6eee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l6eee
.l6eec
	ld a,(hl)
	inc hl
.l6eee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l6ef7
	ld a,(ix+#17)
	or a
	jr nz,l6f0d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l6f0d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l6f23
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l6f23
	ld a,(ix+#0d)
	or a
	jr z,l6f31
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l6f4f
.l6f31
	ld a,(ix+#1a)
	or a
	jp z,l6f56
	ld c,a
	cp #03
	jr nz,l6f3e
	xor a
.l6f3e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l6f4f
	ld a,(ix+#18)
	dec c
	jr z,l6f4f
	ld a,(ix+#19)
.l6f4f
	add (ix+#07)
	ld b,d
	call l703f
.l6f56
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l6f7e
	dec (ix+#1b)
	jr nz,l6f7e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l6fb6
.l6f7e
	ld a,(ix+#29)
	or a
	jr z,l6fb6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l6fad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l6fa4
	ld (ix+#29),#ff
	jr l6fad
.l6fa4
	cp (ix+#2b)
	jr nz,l6fad
	ld (ix+#29),#01
.l6fad
	ld b,d
	or a
	jp p,l6fb3
	dec b
.l6fb3
	ld c,a
	jr l6fc1
.l6fb6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l6fc1
	pop hl
	bit 7,(ix+#14)
	jr z,l6fca
	ld h,d
	ld l,d
.l6fca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l71a5
	ld c,h
	ld a,(ix+#02)
	call l71a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l701d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l700c
	dec (ix+#09)
	jr nz,l700c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l7004
	xor a
	jr l7009
.l7004
	cp #10
	jr nz,l7009
	dec a
.l7009
	ld (ix+#1e),a
.l700c
	ld a,b
	sub (ix+#1e)
	jr nc,l7013
	xor a
.l7013
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l71a5
.l701d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l71cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l703b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l703b
	ld (l71cc),hl
	ret
.l703f
	ld hl,l71ee
	cp #61
	jr nc,l7049
	add a
	ld c,a
	add hl,bc
.l7049
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l7053
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l7178
	ld (ix+#1e),a
	jp l6ee0
.l7065
	dec b
.l7066
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l7071
	neg
.l7071
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l6ee0
.l7087
	dec b
	jr l708b
.l708a
	inc b
.l708b
	call l7178
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l6ee0
.l709a
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l715d
.l70ab
	ld a,(hl)
	inc hl
	or a
	jr z,l70cd
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l70cd
	ld (ix+#29),a
	jp l6ee0
.l70d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l71cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l71ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l6ee0
.l70ed
	ld a,(hl)
	or a
	jr z,l70fe
	call l717a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l6ee0
.l70fe
	ld hl,#0101
	ld (l71ca),hl
	jp l6ee0
.l7107
	call l7178
	ld (ix+#1e),a
	jp l6ee0
.l7110
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l7189
	ld (ix+#0e),c
	ld (ix+#0f),d
.l7121
	ld a,e
	ld d,#04
	call l7189
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l6ee0
.l7132
	ld a,(hl)
	inc hl
	ld (l71c9),a
	jp l6ee0
.l713a
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l6ee0
.l7159
	call l7178
	add a
.l715d
	ld b,#00
	ld c,a
	push hl
	ld hl,l73c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l6ee0
.l7178
	ld a,(hl)
	inc hl
.l717a
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l7189
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l7340
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #41,#53,#54,#20,#53,#59,#53,#54
	db #45,#4d,#2d,#39,#34
.l71a5
	di
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
	ei
.l71c4
	ret
.l71cc equ $ + 7
.l71cb equ $ + 6
.l71ca equ $ + 5
.l71c9 equ $ + 4
.l71c7 equ $ + 2
.l71c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l71cf equ $ + 2
.l71ce equ $ + 1
	db #38,#00,#00
.l71d0
	dw l7053,l7066,l7065,l708a
	dw l7087,l709a,l70ab,l70d3
	dw l70ed,l70d3,l7107,l7110
	dw l7132,l713a,l7159
.l71ee
	dw #0000,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
.l721e
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
.l72b0 equ $ + 2
	dw #000f,#0008
.l72b4 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l72be equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l72cf equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l72de equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l72e2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l72ec equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l72fd equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7310 equ $ + 6
.l730c equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l731a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l732b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7340 equ $ + 6
.l733a
	dw l7600,l761e,l763c,l73e0
	dw l7420,l7440,#0000,l7622
	dw l721e,#5dfd,#2c29,#7d25
	dw l79df,l7121,#4649,l7460
	dw l74a0,l7440
	db #00,#00,#c0,#74,#00,#75,#20,#75
	db #00,#00,#e0,#73,#40,#75,#60,#75
	db #9a,#06,#80,#75,#c0,#75,#40,#74
	db #48,#08,#05,#5e,#17,#6e,#df,#b7
	db #48,#4c,#df,#ac,#1a,#79,#fe,#4f
	db #33,#31,#0a,#65,#df,#b7,#1a,#79
	db #0d,#80,#1a,#79,#fe,#4f,#05,#5e
	db #32,#36,#df,#b7,#1a,#79,#df,#ac
	db #48,#4c,#fe,#4f,#05,#5d,#15,#61
	db #0d,#8b,#1a,#79,#df,#ac,#1a,#79
	db #2c,#23,#05,#5d,#08,#5f,#df,#b7
	db #48,#4c,#df,#ac,#1a,#79,#fe,#4f
.l73c0 equ $ + 2
	db #33,#30,#e0,#75,#df,#b7,#1a,#79
	db #df,#7c,#1b,#79,#17,#ad,#25,#7d
	db #fe,#5c,#df,#d9,#df,#cb,#df,#2b
	db #df,#80,#17,#85,#26,#72,#97,#6e
.l73e0 equ $ + 2
	db #25,#81,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7420 equ $ + 2
	db #00,#00,#0f,#0f,#0f,#0e,#0e,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#08,#07
	db #07,#07,#06,#06,#05,#04,#03,#02
	db #01,#01,#01,#01,#01,#01,#01,#01
.l7440 equ $ + 2
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7460 equ $ + 2
	db #00,#00,#fe,#ff,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#00,#00,#00,#00
.l74a0 equ $ + 2
	db #00,#00,#0f,#0f,#0e,#0e,#0d,#0b
	db #0a,#09,#09,#08,#08,#07,#07,#06
	db #05,#04,#03,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#17,#00,#2f,#00
	db #47,#00,#5e,#00,#75,#00,#8d,#00
	db #a4,#00,#bc,#00,#d3,#00,#eb,#00
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0a,#09,#07,#05,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#06,#00,#00,#01,#01,#02
	db #01,#01,#02,#01,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0d,#0b,#09,#07,#05,#03
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#01,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#0d,#0c,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#18,#0c,#00,#18,#18,#0c
	db #00,#18,#18,#0c,#00,#18,#18,#0c
	db #00,#18,#18,#0c,#00,#18,#18,#0c
	db #00,#18,#18,#0c,#00,#18,#18,#0c
.l7600 equ $ + 2
	db #00,#18,#00,#5d,#76,#00,#5a,#76
	db #00,#ae,#76,#00,#5d,#76,#00,#5a
	db #76,#04,#f0,#76,#00,#5a,#76,#04
	db #f0,#76,#04,#f0,#76,#80,#00,#76
.l7622 equ $ + 4
.l761e
	db #00,#d3,#77,#00,#52,#77,#00,#54
	db #78,#00,#d3,#77,#00,#52,#77,#04
	db #d5,#78,#00,#56,#79,#04,#d5,#78
.l763c equ $ + 6
	db #04,#d5,#78,#80,#1e,#76,#00,#98
	db #7a,#00,#d7,#79,#00,#e9,#7a,#00
	db #98,#7a,#00,#d7,#79,#04,#2b,#7b
	db #00,#56,#79,#04,#2b,#7b,#04,#2b
	db #7b,#80,#3c,#76,#fe,#40,#ff,#40
	db #0f,#40,#40,#00,#03,#3c,#00,#02
	db #bc,#00,#3c,#00,#02,#3b,#00,#02
	db #3e,#00,#02,#40,#00,#04,#40,#00
	db #03,#3c,#00,#02,#bc,#00,#3c,#00
	db #02,#3b,#00,#02,#3e,#00,#02,#40
	db #00,#04,#40,#00,#03,#3c,#00,#02
	db #bc,#00,#3c,#00,#02,#3b,#00,#02
	db #3e,#00,#02,#40,#00,#04,#40,#00
	db #03,#3c,#00,#02,#bc,#00,#3c,#00
	db #02,#3b,#00,#02,#3e,#00,#02,#ff
	db #40,#0f,#40,#40,#00,#03,#40,#00
	db #03,#c8,#00,#47,#00,#03,#40,#00
	db #02,#40,#00,#04,#40,#00,#03,#40
	db #00,#03,#c8,#00,#47,#00,#03,#40
	db #00,#02,#40,#00,#04,#40,#00,#03
	db #40,#00,#03,#c8,#00,#47,#00,#03
	db #40,#00,#02,#40,#00,#04,#40,#00
	db #03,#40,#00,#03,#c8,#00,#47,#00
	db #05,#ff,#3a,#0f,#40,#3d,#00,#03
	db #3a,#00,#02,#ba,#00,#3f,#00,#02
	db #3a,#00,#02,#38,#00,#02,#3a,#00
	db #04,#41,#00,#03,#3a,#00,#02,#ba
	db #00,#42,#00,#02,#41,#00,#02,#3d
	db #00,#02,#3a,#00,#02,#41,#00,#02
	db #46,#00,#02,#ba,#00,#38,#00,#02
	db #b8,#00,#35,#00,#02,#3c,#00,#02
	db #3a,#00,#02,#b4,#40,#b4,#50,#b4
	db #50,#b4,#50,#b4,#40,#b4,#50,#b4
	db #50,#b4,#40,#b4,#50,#b4,#40,#b4
	db #50,#b4,#40,#b4,#40,#b4,#40,#b4
	db #40,#b4,#40,#ff,#c0,#40,#c0,#50
	db #c0,#50,#c0,#50,#c0,#40,#c0,#50
	db #c0,#50,#c0,#40,#c0,#50,#c0,#40
	db #c0,#40,#c0,#50,#c0,#40,#c0,#50
	db #c0,#40,#c0,#50,#c0,#40,#c0,#50
	db #c0,#50,#c0,#50,#c0,#40,#c0,#50
	db #c0,#50,#c0,#40,#c0,#50,#c0,#40
	db #c0,#40,#c0,#50,#c0,#40,#c0,#50
	db #c0,#40,#c0,#50,#c0,#40,#c0,#50
	db #c0,#50,#c0,#50,#c0,#40,#c0,#50
	db #c0,#50,#c0,#40,#c0,#50,#c0,#40
	db #c0,#40,#c0,#50,#c0,#40,#c0,#50
	db #c0,#40,#c0,#50,#c0,#40,#c0,#50
	db #c0,#50,#c0,#50,#c0,#40,#c0,#50
	db #c0,#50,#c0,#40,#c0,#50,#c0,#40
	db #c0,#40,#c0,#50,#c0,#50,#c0,#40
	db #c0,#40,#c0,#40,#ff,#c0,#40,#c0
	db #50,#c0,#50,#c0,#50,#c0,#40,#c0
	db #50,#c0,#50,#c0,#40,#c0,#50,#c0
	db #40,#c0,#40,#c0,#50,#c0,#40,#c0
	db #50,#c0,#40,#c0,#50,#c0,#40,#c0
	db #50,#c0,#50,#c0,#50,#c0,#40,#c0
	db #50,#c0,#50,#c0,#40,#c0,#50,#c0
	db #40,#c0,#40,#c0,#50,#c0,#40,#c0
	db #50,#c0,#40,#c0,#50,#c0,#40,#c0
	db #50,#c0,#50,#c0,#50,#c0,#40,#c0
	db #50,#c0,#50,#c0,#40,#c0,#50,#c0
	db #40,#c0,#40,#c0,#50,#c0,#40,#c0
	db #50,#c0,#40,#c0,#50,#c0,#40,#c0
	db #50,#c0,#50,#c0,#50,#c0,#40,#c0
	db #50,#c0,#50,#c0,#40,#c0,#50,#c0
	db #40,#c0,#40,#c0,#50,#c0,#40,#c0
	db #50,#c0,#40,#c0,#50,#ff,#c0,#40
	db #c0,#50,#c0,#50,#c0,#50,#c0,#40
	db #c0,#50,#c0,#50,#c0,#40,#c0,#50
	db #c0,#40,#c0,#40,#c0,#50,#c0,#40
	db #c0,#50,#c0,#40,#c0,#50,#c0,#40
	db #c0,#50,#c0,#50,#c0,#50,#c0,#40
	db #c0,#50,#c0,#50,#c0,#40,#c0,#50
	db #c0,#40,#c0,#40,#c0,#50,#c0,#40
	db #c0,#50,#c0,#40,#c0,#50,#c0,#40
	db #c0,#50,#c0,#50,#c0,#50,#c0,#40
	db #c0,#50,#c0,#50,#c0,#40,#c0,#50
	db #c0,#40,#c0,#40,#c0,#50,#c0,#40
	db #c0,#50,#c0,#40,#c0,#50,#c0,#40
	db #c0,#50,#c0,#50,#c0,#50,#c0,#40
	db #c0,#50,#c0,#50,#c0,#40,#c0,#50
	db #c0,#40,#c0,#40,#c0,#50,#c0,#40
	db #c0,#40,#c0,#40,#c0,#40,#ff,#c0
	db #40,#c0,#50,#c0,#50,#c0,#50,#c0
	db #40,#c0,#50,#c0,#50,#c0,#40,#c0
	db #50,#c0,#40,#c0,#40,#c0,#50,#c0
	db #40,#c0,#50,#c0,#40,#c0,#50,#c0
	db #40,#c0,#50,#c0,#50,#c0,#50,#c0
	db #40,#c0,#50,#c0,#50,#c0,#40,#c0
	db #50,#c0,#40,#c0,#40,#c0,#50,#c0
	db #40,#c0,#50,#c0,#40,#c0,#50,#c0
	db #40,#c0,#50,#c0,#50,#c0,#50,#c0
	db #40,#c0,#50,#c0,#50,#c0,#40,#c0
	db #50,#c0,#40,#c0,#40,#c0,#50,#c0
	db #40,#c0,#50,#c0,#40,#c0,#50,#c0
	db #40,#c0,#50,#c0,#50,#c0,#50,#c0
	db #40,#c0,#50,#c0,#50,#c0,#40,#c0
	db #50,#c0,#40,#c0,#50,#c0,#40,#c0
	db #40,#c0,#40,#c0,#40,#c0,#40,#ff
	db #c0,#40,#c0,#50,#c0,#50,#c0,#50
	db #c0,#40,#c0,#50,#c0,#50,#c0,#40
	db #c0,#50,#c0,#40,#c0,#40,#c0,#50
	db #c0,#40,#c0,#50,#c0,#40,#c0,#50
	db #c0,#40,#c0,#50,#c0,#50,#c0,#50
	db #c0,#40,#c0,#50,#c0,#50,#c0,#40
	db #c0,#50,#c0,#40,#c0,#40,#c0,#50
	db #c0,#40,#c0,#50,#c0,#40,#c0,#50
	db #c0,#40,#c0,#50,#c0,#50,#c0,#50
	db #c0,#40,#c0,#50,#c0,#50,#c0,#40
	db #c0,#50,#c0,#40,#c0,#40,#c0,#50
	db #c0,#40,#c0,#50,#c0,#40,#c0,#50
	db #c0,#40,#c0,#50,#c0,#50,#c0,#50
	db #c0,#40,#c0,#50,#c0,#50,#c0,#40
	db #c0,#40,#c0,#40,#c0,#40,#c0,#40
	db #c0,#40,#c0,#40,#c0,#40,#c0,#40
	db #ff,#64,#6b,#1e,#64,#6b,#1e,#64
.l79df equ $ + 1
	db #6b,#1d,#64,#6b,#1d,#64,#6b,#1c
	db #64,#6b,#1c,#64,#6b,#1b,#64,#6b
	db #1b,#64,#6b,#1a,#64,#6b,#1a,#64
	db #6b,#19,#64,#6b,#19,#64,#6b,#18
	db #64,#6b,#18,#64,#6b,#17,#64,#6b
	db #17,#64,#6b,#16,#64,#6b,#16,#64
	db #6b,#15,#64,#6b,#15,#64,#6b,#14
	db #64,#6b,#14,#64,#6b,#13,#64,#6b
	db #13,#64,#6b,#12,#64,#6b,#12,#64
	db #6b,#11,#64,#6b,#11,#64,#6b,#10
	db #64,#6b,#10,#64,#6b,#10,#64,#6b
	db #10,#64,#6b,#10,#64,#6b,#10,#64
	db #6b,#10,#64,#6b,#10,#64,#6b,#10
	db #64,#6b,#10,#64,#6b,#10,#64,#6b
	db #10,#64,#6b,#10,#64,#6b,#10,#64
	db #6b,#11,#64,#6b,#11,#64,#6b,#12
	db #64,#6b,#12,#64,#6b,#13,#64,#6b
	db #13,#64,#6b,#14,#64,#6b,#14,#64
	db #6b,#15,#64,#6b,#15,#64,#6b,#16
	db #64,#6b,#16,#64,#6b,#17,#64,#6b
	db #17,#64,#6b,#18,#64,#6b,#18,#64
	db #6b,#19,#64,#6b,#19,#64,#6b,#1a
	db #64,#6b,#1a,#64,#6b,#1b,#64,#6b
	db #1b,#ff,#34,#30,#04,#34,#30,#03
	db #30,#30,#02,#b0,#30,#30,#30,#02
	db #2f,#30,#02,#32,#30,#02,#34,#30
	db #04,#34,#30,#03,#30,#30,#02,#b0
	db #30,#30,#30,#02,#2f,#30,#02,#32
	db #30,#02,#34,#30,#04,#34,#30,#03
	db #30,#30,#02,#b0,#30,#30,#30,#02
	db #2f,#30,#02,#32,#30,#02,#34,#30
	db #04,#34,#30,#03,#30,#30,#02,#b0
	db #30,#30,#30,#02,#2f,#30,#02,#32
	db #30,#02,#ff,#34,#30,#04,#34,#30
	db #03,#34,#30,#03,#bc,#30,#3b,#30
	db #03,#34,#30,#02,#34,#30,#04,#34
	db #30,#03,#34,#30,#03,#bc,#30,#3b
	db #30,#03,#34,#30,#02,#34,#30,#04
	db #34,#30,#03,#34,#30,#03,#bc,#30
	db #3b,#30,#03,#34,#30,#02,#34,#30
	db #04,#34,#30,#03,#34,#30,#03,#bc
	db #30,#3b,#30,#05,#ff,#2e,#6b,#12
	db #ae,#60,#ae,#60,#ae,#60,#b1,#60
	db #b1,#60,#b1,#60,#ae,#60,#ae,#60
	db #ae,#60,#b3,#60,#b3,#60,#ae,#60
	db #ae,#60,#ac,#60,#ac,#60,#ae,#60
	db #ae,#60,#ae,#60,#ae,#60,#b5,#60
	db #b5,#60,#b5,#60,#ae,#60,#ae,#60
	db #ae,#60,#b6,#60,#b6,#60,#b5,#60
	db #b5,#60,#b1,#60,#b1,#60,#ae,#60
	db #ae,#60,#b5,#60,#b5,#60,#ba,#60
	db #ba,#60,#ae,#60,#ac,#60,#ac,#60
	db #ac,#60,#a9,#60,#a9,#60,#b0,#60
	db #b0,#60,#ae,#60,#ae,#60,#ae,#60
	db #ae,#60,#ae,#60,#ae,#60,#ae,#60
	db #ae,#60,#ae,#60,#ae,#60,#ae,#60
	db #ae,#60,#ae,#60,#ae,#60,#ae,#60
	db #ae,#60,#ae,#60,#ae,#60,#ff
;
.music_info
	db "Only For Your Eyes 2 Megademo - Intro (1995)(Ast System)(Ast)",0
	db "ST-128 Module",0

	read "music_end.asm"
