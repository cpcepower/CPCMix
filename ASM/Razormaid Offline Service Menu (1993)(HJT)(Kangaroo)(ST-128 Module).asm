; Music of Razormaid Offline Service Menu (1993)(HJT)(Kangaroo)(ST-128 Module)
; Ripped by Megachur the 16/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RAZOROSM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #5000

	read "music_header.asm"

	jr l5004
	jr l5013
.l5004
	call l5037
	ld hl,l5024
	ld de,l501c
	ld bc,#81ff
	jp #bcd7
.l5013
	ld hl,l5024
	call #bcdd
	jp l50af
.l501c
	push ix
	call l50cb
	pop ix
	ret
.l5024
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l5037
	jp l50cb
	jp l50af
;
.init_music
.l5037
;
	xor a
	ld hl,l55d3
	call l50a8
	ld hl,l5601
	call l50a8
	ld hl,l562f
	call l50a8
	ld ix,l55cf
	ld iy,l5659
	ld de,#002e
	ld b,#03
.l5057
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
	djnz l5057
	ld hl,l54e8
	ld (hl),#06
	inc hl
	ld (hl),#20
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l54e4),hl
	ld (l54e6),hl
	ld a,#0c
	ld c,d
	call l54c4
	ld a,#0d
	ld c,d
	jp l54c4
.l50a8
	ld b,#2a
.l50aa
	ld (hl),a
	inc hl
	djnz l50aa
	ret
;
.stop_music
.l50af
;
	ld a,#07
	ld c,#3f
	call l54c4
	ld a,#08
	ld c,#00
	call l54c4
	ld a,#09
	ld c,#00
	call l54c4
	ld a,#0a
	ld c,#00
	jp l54c4
;
.play_music
.l50cb
;
	ld hl,l54ea
	dec (hl)
	ld ix,l55cf
	ld bc,l55dd
	call l516d
	ld ix,l55fd
	ld bc,l560b
	call l516d
	ld ix,l562b
	ld bc,l5639
	call l516d
	ld hl,l54e3
	ld de,l54ea
	ld b,#06
	call l514a
	ld b,#07
	call l514a
	ld b,#0b
	call l514a
	ld b,#0d
	call l514a
	ld de,l54ea
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,l55ee
	call l5123
	ld hl,l561c
	call l5123
	ld hl,l564a
.l5123
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
	jr nz,l5138
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l5138
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
.l514a
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l54c4
.l5155
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l54c4
.l516d
	ld a,(l54ea)
	or a
	jp nz,l521c
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l521c
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l5155
	or a
	jp z,l5211
	ld r,a
	and #7f
	cp #10
	jr c,l51f2
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l5368
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
	jr z,l51cb
	ld (ix+#25),a
	ld (ix+#1e),b
.l51cb
	rrca
	ld c,a
	ld hl,l565f
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
	jr z,l51ea
	ld (ix+#1e),b
.l51ea
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l5205
.l51f2
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l54ef
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
.l5205
	ld a,d
	or a
	jr nz,l5213
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l5213
.l5211
	ld a,(hl)
	inc hl
.l5213
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l521c
	ld a,(ix+#17)
	or a
	jr nz,l5232
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l5232
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l5248
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l5248
	ld a,(ix+#0d)
	or a
	jr z,l5256
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l5274
.l5256
	ld a,(ix+#1a)
	or a
	jp z,l527b
	ld c,a
	cp #03
	jr nz,l5263
	xor a
.l5263
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l5274
	ld a,(ix+#18)
	dec c
	jr z,l5274
	ld a,(ix+#19)
.l5274
	add (ix+#07)
	ld b,d
	call l5368
.l527b
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l52a3
	dec (ix+#1b)
	jr nz,l52a3
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l52df
.l52a3
	ld a,(ix+#29)
	or a
	jr z,l52df
	dec (ix+#26)
	jr z,l52b3
	ld a,(ix+#27)
	jr l52d6
.l52b3
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,(ix+#27)
	add (ix+#29)
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l52cd
	ld (ix+#29),#ff
	jr l52d6
.l52cd
	cp (ix+#2b)
	jr nz,l52d6
	ld (ix+#29),#01
.l52d6
	ld b,d
	or a
	jp p,l52dc
	dec b
.l52dc
	ld c,a
	jr l52ea
.l52df
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l52ea
	pop hl
	bit 7,(ix+#14)
	jr z,l52f3
	ld h,d
	ld l,d
.l52f3
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l54c4
	ld c,h
	ld a,(ix+#02)
	call l54c4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l5346
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l5335
	dec (ix+#09)
	jr nz,l5335
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l532d
	xor a
	jr l5332
.l532d
	cp #10
	jr nz,l5332
	dec a
.l5332
	ld (ix+#1e),a
.l5335
	ld a,b
	sub (ix+#1e)
	jr nc,l533c
	xor a
.l533c
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l54c4
.l5346
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l54eb)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l5364
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l5364
	ld (l54eb),hl
	ret
.l5368
	ld hl,l550d
	cp #61
	jr nc,l5372
	add a
	ld c,a
	add hl,bc
.l5372
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l537c
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l54a4
	ld (ix+#1e),a
	jp l5205
.l538e
	dec b
.l538f
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l539a
	neg
.l539a
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
	jp l5205
.l53b0
	dec b
	jr l53b4
.l53b3
	inc b
.l53b4
	call l54a4
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l5205
.l53c3
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
	jp l5489
.l53d4
	ld a,(hl)
	ld (ix+#29),a
	inc hl
	or a
	jp z,l5205
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
	ld (ix+#29),#01
	jp l5205
.l53ff
	dec hl
	ld a,(hl)
	and #0f
	ld (l54ee),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l54ed),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l5205
.l5419
	ld a,(hl)
	or a
	jr z,l542a
	call l54a6
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l5205
.l542a
	ld hl,#0101
	ld (l54e9),hl
	jp l5205
.l5433
	call l54a4
	ld (ix+#1e),a
	jp l5205
.l543c
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l54b5
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l54b5
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l5205
.l545e
	ld a,(hl)
	inc hl
	ld (l54e8),a
	jp l5205
.l5466
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
	jp l5205
.l5485
	call l54a4
	add a
.l5489
	ld b,#00
	ld c,a
	push hl
	ld hl,l56df
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l5205
.l54a4
	ld a,(hl)
	inc hl
.l54a6
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
.l54b5
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l565f
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
.l54c4
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
.l54e3
	ret
.l54eb equ $ + 7
.l54ea equ $ + 6
.l54e9 equ $ + 5
.l54e8 equ $ + 4
.l54e6 equ $ + 2
.l54e4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l54ee equ $ + 2
.l54ed equ $ + 1
	db #38,#00,#00
.l54ef
	dw l537c,l538f,l538e,l53b3
	dw l53b0,l53c3,l53d4,l53ff
	dw l5419,l53ff,l5433,l543c
	dw l545e,l5466,l5485
.l550d
	dw #0000,#0e18,#0d4d,#0c8e
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
	dw #000f
.l55d3 equ $ + 4
.l55cf
	db #08,#00,#01,#08,#00,#00,#00,#00
.l55dd equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l55ee equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l55fd equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l5601 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l560b equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l561c equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l562b equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l562f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5639 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l564a equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l565f equ $ + 6
.l5659
	dw l591f,l5949,l5973,l56ff
	dw l573f,l575f,#0000,l56ff
	dw l573f,l577f,#0000
	db #00,#0f,#ff,#0f,#ff,#10,#00,#00
	db #00,#0f,#ff,#0f,#ff,#10,#00,#00
	db #9f,#57,#df,#57,#ff,#57,#00,#00
	db #ff,#10,#00,#10,#00,#0f,#ff,#ff
	db #1f,#58,#5f,#58,#7f,#58,#1a,#00
	db #ff,#10,#00,#10,#00,#0f,#ff,#ff
	db #ff,#10,#00,#10,#00,#0f,#ff,#ff
	db #ff,#10,#00,#10,#00,#0f,#ff,#ff
	db #9f,#58,#df,#58,#5f,#57,#16,#0a
	db #ff,#10,#00,#10,#00,#0f,#ff,#ff
	db #ff,#10,#00,#10,#00,#0f,#ff,#ff
	db #ff,#10,#00,#10,#00,#0f,#ff,#ff
	db #ff,#10,#00,#10,#00,#0f,#ff,#ff
	db #ff,#10,#00,#10,#00,#0f,#ff,#ff
.l56df
	db #ff,#31,#00,#10,#00,#0f,#ff,#58
	db #ff,#10,#00,#10,#00,#0f,#ff,#0f
	db #ff,#10,#00,#10,#00,#0f,#ff,#0f
	db #ff,#10,#00,#10,#00,#0f,#ff,#0f
.l56ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l573f
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
.l575f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l577f
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #a0,#00,#e0,#00,#00,#00,#20,#00
	db #40,#00,#60,#00,#a0,#00,#e0,#00
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #80,#00,#a0,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#06,#05
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#06,#08,#0b,#10,#02,#00
	db #06,#08,#0b,#10,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#ff,#ff,#fe,#ff
	db #fd,#ff,#fe,#ff,#ff,#ff,#01,#00
	db #03,#00,#05,#00,#03,#00,#01,#00
	db #ff,#ff,#fd,#ff,#fb,#ff,#fd,#ff
	db #ff,#ff,#01,#00,#04,#00,#07,#00
	db #04,#00,#01,#00,#ff,#ff,#fc,#ff
	db #f9,#ff,#fc,#ff,#ff,#ff,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0c,#0d,#0d
	db #0d,#0d,#0d,#0c,#0c,#0c,#0c,#0c
	db #0d,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#ff,#ff,#fe,#ff
	db #fd,#ff,#fe,#ff,#ff,#ff,#02,#00
	db #03,#00,#04,#00,#03,#00,#02,#00
	db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0b,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0d,#0d,#0d,#0d,#0d
	db #0c,#00,#00,#0c,#0c,#00,#00,#0c
	db #0c,#00,#00,#0c,#0c,#00,#00,#0c
	db #0c,#00,#00,#0c,#0c,#00,#00,#0c
	db #0c,#00,#00,#0c,#0c,#00,#00,#0c
.l591f
	db #00,#9d,#59,#00,#9d,#59,#00,#a0
	db #59,#00,#a0,#59,#00,#a0,#59,#00
	db #a0,#59,#00,#a0,#59,#00,#c6,#59
	db #00,#08,#5a,#00,#49,#5a,#00,#49
	db #5a,#00,#c6,#59,#00,#08,#5a,#80
.l5949 equ $ + 2
	db #25,#59,#00,#9d,#59,#00,#75,#5a
	db #00,#75,#5a,#00,#75,#5a,#00,#d3
	db #5a,#00,#31,#5b,#00,#5a,#5b,#00
	db #84,#5b,#00,#aa,#5b,#00,#cc,#5b
	db #00,#cc,#5b,#00,#84,#5b,#00,#aa
.l5973 equ $ + 4
	db #5b,#80,#4f,#59,#00,#04,#5c,#00
	db #04,#5c,#00,#04,#5c,#00,#04,#5c
	db #00,#04,#5c,#00,#04,#5c,#00,#04
	db #5c,#00,#31,#5c,#00,#5e,#5c,#00
	db #04,#5c,#00,#04,#5c,#00,#31,#5c
	db #00,#5e,#5c,#80,#79,#59,#00,#20
	db #ff,#49,#1f,#23,#c9,#10,#49,#10
	db #02,#c9,#10,#49,#10,#02,#47,#10
	db #02,#49,#10,#02,#42,#10,#06,#49
	db #10,#02,#47,#10,#02,#49,#10,#02
	db #4a,#10,#04,#47,#10,#04,#ff,#3e
	db #01,#10,#c2,#00,#c5,#00,#be,#00
	db #c2,#00,#c5,#00,#be,#00,#c2,#00
	db #be,#00,#c2,#00,#c5,#00,#be,#00
	db #c2,#00,#c5,#00,#be,#00,#c2,#00
	db #c4,#00,#c5,#00,#c7,#00,#c4,#00
	db #c5,#00,#c7,#00,#c4,#00,#c5,#00
	db #c4,#00,#c5,#00,#c7,#00,#c4,#00
	db #c5,#00,#c7,#00,#c5,#00,#c4,#00
	db #ff,#c2,#00,#c5,#00,#ca,#00,#c2
	db #00,#c5,#00,#ca,#00,#c2,#00,#c5
	db #00,#c2,#00,#c5,#00,#ca,#00,#c2
	db #00,#c5,#00,#ca,#00,#c2,#00,#c5
	db #00,#c4,#00,#c7,#00,#cc,#00,#c4
	db #00,#c7,#00,#cc,#00,#c4,#00,#c7
	db #00,#c4,#00,#c7,#00,#cc,#00,#c4
	db #00,#c7,#00,#cc,#00,#ce,#00,#cc
	db #00,#ff,#42,#0f,#33,#c2,#00,#4e
	db #00,#02,#42,#00,#04,#42,#00,#02
	db #4e,#00,#02,#42,#00,#02,#47,#00
	db #03,#c7,#00,#49,#00,#02,#4a,#00
	db #02,#49,#00,#02,#47,#00,#02,#45
	db #00,#02,#44,#00,#02,#ff,#42,#0b
	db #20,#42,#0b,#10,#42,#0b,#13,#4e
	db #0b,#10,#42,#0b,#13,#42,#0b,#10
	db #4e,#0b,#13,#42,#0b,#10,#42,#0b
	db #13,#4e,#0b,#10,#42,#0b,#13,#42
	db #0b,#10,#4e,#0b,#13,#4e,#0b,#10
	db #42,#0b,#13,#42,#0b,#10,#4e,#0b
	db #13,#42,#0b,#10,#42,#0b,#13,#4e
	db #0b,#10,#42,#0b,#13,#42,#0b,#10
	db #4e,#0b,#13,#42,#0b,#10,#42,#0b
	db #13,#4e,#0b,#10,#42,#0b,#13,#42
	db #0b,#10,#4e,#0b,#13,#4e,#0b,#10
	db #42,#0b,#13,#ff,#42,#0b,#20,#42
	db #0b,#10,#42,#0b,#13,#4e,#0b,#10
	db #42,#0b,#13,#42,#0b,#10,#4e,#0b
	db #13,#42,#0b,#10,#42,#0b,#13,#4e
	db #0b,#10,#42,#0b,#13,#42,#0b,#10
	db #4e,#0b,#13,#4e,#0b,#10,#42,#0b
	db #13,#42,#0b,#10,#4e,#0b,#13,#42
	db #0b,#10,#42,#0b,#13,#4e,#0b,#10
	db #42,#0b,#13,#42,#0b,#10,#4e,#0b
	db #13,#42,#0b,#10,#42,#0b,#13,#4e
	db #0b,#10,#42,#0b,#13,#42,#0b,#10
	db #4e,#0b,#13,#c0,#a3,#00,#03,#12
	db #01,#ff,#42,#a0,#04,#49,#a0,#04
	db #47,#a0,#02,#45,#a0,#02,#47,#a0
	db #02,#49,#a0,#06,#02,#12,#01,#02
	db #12,#01,#45,#a0,#02,#47,#a0,#02
	db #45,#a0,#02,#c4,#a0,#c5,#a0,#44
	db #a0,#02,#ff,#42,#a0,#04,#49,#a0
	db #04,#47,#a0,#02,#45,#a0,#02,#47
	db #a0,#02,#49,#a0,#06,#02,#12,#01
	db #02,#12,#01,#45,#a0,#02,#47,#a0
	db #02,#45,#a0,#02,#44,#a0,#02,#c0
	db #a0,#02,#12,#01,#ff,#3e,#a0,#06
	db #42,#a0,#04,#03,#12,#01,#03,#12
	db #01,#45,#a0,#04,#44,#a0,#06,#44
	db #a0,#02,#c5,#a0,#02,#12,#01,#44
	db #a0,#02,#42,#a0,#02,#c0,#a0,#02
	db #11,#01,#ff,#3e,#a0,#06,#42,#a0
	db #04,#03,#12,#01,#03,#12,#01,#45
	db #a0,#04,#44,#a0,#06,#44,#a0,#02
	db #45,#a0,#02,#47,#a0,#02,#49,#a0
	db #02,#4a,#a0,#02,#ff,#c9,#60,#c7
	db #60,#c5,#60,#c7,#60,#49,#60,#02
	db #45,#60,#02,#49,#60,#02,#4a,#60
	db #02,#49,#60,#02,#45,#60,#02,#47
	db #60,#02,#c7,#60,#c9,#60,#47,#60
	db #02,#45,#60,#02,#c7,#60,#c9,#60
	db #c7,#60,#c5,#60,#c4,#60,#c5,#60
	db #c4,#60,#c0,#60,#ff,#2a,#08,#1b
	db #04,#38,#41,#20,#2a,#08,#1b,#02
	db #2d,#08,#16,#02,#2a,#08,#1b,#02
	db #38,#41,#20,#2a,#08,#1b,#02,#2c
	db #08,#18,#04,#38,#41,#20,#2c,#08
	db #18,#02,#2f,#08,#14,#04,#38,#41
	db #40,#ff,#26,#08,#22,#04,#38,#41
	db #20,#26,#08,#22,#02,#2a,#08,#1b
	db #02,#26,#08,#22,#02,#38,#41,#20
	db #26,#08,#22,#02,#28,#08,#1e,#04
	db #38,#41,#20,#28,#08,#1e,#02,#2c
	db #08,#18,#04,#38,#41,#40,#ff,#26
	db #08,#22,#04,#38,#41,#20,#26,#08
	db #22,#02,#2a,#08,#1b,#02,#26,#08
	db #22,#02,#38,#41,#20,#26,#08,#22
	db #02,#28,#08,#1e,#04,#38,#41,#20
	db #2f,#08,#14,#02,#2d,#08,#16,#04
	db #2f,#08,#14,#04,#ff
;
.music_info
	db "Razormaid Offline Service Menu (1993)(HJT)(Kangaroo)",0
	db "ST-128 Module",0

	read "music_end.asm"
