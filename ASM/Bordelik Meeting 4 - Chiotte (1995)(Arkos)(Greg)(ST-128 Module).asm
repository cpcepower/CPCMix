; Music of Bordelik Meeting 4 - Chiotte (1995)(Arkos)(Greg)(ST-128 Module)
; Ripped by Megachur the 02/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BORDEM4C.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #5680

	read "music_header.asm"

	jp l5689
	jp l571d
	jp l5701
;
.init_music
.l5689
;
	xor a
	ld hl,l5c34
	call l56fa
	ld hl,l5c62
	call l56fa
	ld hl,l5c90
	call l56fa
	ld ix,l5c30
	ld iy,l5cba
	ld de,#002e
	ld b,#03
.l56a9
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
	djnz l56a9
	ld hl,l5b49
	ld (hl),#05
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l5b45),hl
	ld (l5b47),hl
	ld a,#0c
	ld c,d
	call l5b25
	ld a,#0d
	ld c,d
	jp l5b25
.l56fa
	ld b,#2a
.l56fc
	ld (hl),a
	inc hl
	djnz l56fc
	ret
;
.stop_music
.l5701
;
	ld a,#07
	ld c,#3f
	call l5b25
	ld a,#08
	ld c,#00
	call l5b25
	ld a,#09
	ld c,#00
	call l5b25
	ld a,#0a
	ld c,#00
	jp l5b25
;
.play_music
.l571d
;
	ld hl,l5b4b
	dec (hl)
	ld ix,l5c30
	ld bc,l5c3e
	call l57bf
	ld ix,l5c5e
	ld bc,l5c6c
	call l57bf
	ld ix,l5c8c
	ld bc,l5c9a
	call l57bf
	ld hl,l5b44
	ld de,l5b4b
	ld b,#06
	call l579c
	ld b,#07
	call l579c
	ld b,#0b
	call l579c
	ld b,#0d
	call l579c
	ld de,l5b4b
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l5c4f
	call l5775
	ld hl,l5c7d
	call l5775
	ld hl,l5cab
.l5775
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
	jr nz,l578a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l578a
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
.l579c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l5b25
.l57a7
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l5b25
.l57bf
	ld a,(l5b4b)
	or a
	jp nz,l5877
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l5877
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l57a7
	or a
	jp z,l586c
	ld r,a
	and #7f
	cp #10
	jr c,l5847
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l59bf
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
	jr z,l5820
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l5820
	rrca
	ld c,a
	ld hl,l5cc0
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
	jr z,l583f
	ld (ix+#1e),b
.l583f
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l5860
.l5847
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l5b50
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
.l5860
	ld a,d
	or a
	jr nz,l586e
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l586e
.l586c
	ld a,(hl)
	inc hl
.l586e
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l5877
	ld a,(ix+#17)
	or a
	jr nz,l588d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l588d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l58a3
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l58a3
	ld a,(ix+#0d)
	or a
	jr z,l58b1
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l58cf
.l58b1
	ld a,(ix+#1a)
	or a
	jp z,l58d6
	ld c,a
	cp #03
	jr nz,l58be
	xor a
.l58be
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l58cf
	ld a,(ix+#18)
	dec c
	jr z,l58cf
	ld a,(ix+#19)
.l58cf
	add (ix+#07)
	ld b,d
	call l59bf
.l58d6
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l58fe
	dec (ix+#1b)
	jr nz,l58fe
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l5936
.l58fe
	ld a,(ix+#29)
	or a
	jr z,l5936
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l592d
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l5924
	ld (ix+#29),#ff
	jr l592d
.l5924
	cp (ix+#2b)
	jr nz,l592d
	ld (ix+#29),#01
.l592d
	ld b,d
	or a
	jp p,l5933
	dec b
.l5933
	ld c,a
	jr l5941
.l5936
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l5941
	pop hl
	bit 7,(ix+#14)
	jr z,l594a
	ld h,d
	ld l,d
.l594a
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l5b25
	ld c,h
	ld a,(ix+#02)
	call l5b25
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l599d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l598c
	dec (ix+#09)
	jr nz,l598c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l5984
	xor a
	jr l5989
.l5984
	cp #10
	jr nz,l5989
	dec a
.l5989
	ld (ix+#1e),a
.l598c
	ld a,b
	sub (ix+#1e)
	jr nc,l5993
	xor a
.l5993
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l5b25
.l599d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l5b4c)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l59bb
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l59bb
	ld (l5b4c),hl
	ret
.l59bf
	ld hl,l5b6e
	cp #61
	jr nc,l59c9
	add a
	ld c,a
	add hl,bc
.l59c9
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l59d3
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l5af8
	ld (ix+#1e),a
	jp l5860
.l59e5
	dec b
.l59e6
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l59f1
	neg
.l59f1
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
	jp l5860
.l5a07
	dec b
	jr l5a0b
.l5a0a
	inc b
.l5a0b
	call l5af8
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l5860
.l5a1a
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
	jp l5add
.l5a2b
	ld a,(hl)
	inc hl
	or a
	jr z,l5a4d
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
.l5a4d
	ld (ix+#29),a
	jp l5860
.l5a53
	dec hl
	ld a,(hl)
	and #0f
	ld (l5b4f),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l5b4e),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l5860
.l5a6d
	ld a,(hl)
	or a
	jr z,l5a7e
	call l5afa
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l5860
.l5a7e
	ld hl,#0101
	ld (l5b4a),hl
	jp l5860
.l5a87
	call l5af8
	ld (ix+#1e),a
	jp l5860
.l5a90
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l5b09
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l5b09
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l5860
.l5ab2
	ld a,(hl)
	inc hl
	ld (l5b49),a
	jp l5860
.l5aba
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
	jp l5860
.l5ad9
	call l5af8
	add a
.l5add
	ld b,#00
	ld c,a
	push hl
	ld hl,l5d40
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l5860
.l5af8
	ld a,(hl)
	inc hl
.l5afa
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
.l5b09
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l5cc0
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	ld d,e
	ld d,h
	dec l
	ld sp,#3832
	jr nz,l5b6d
	ld l,a
	ld h,h
	ld (hl),l
	ld l,h
	ld h,l
.l5b25
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
.l5b44
	ret
.l5b4c equ $ + 7
.l5b4b equ $ + 6
.l5b4a equ $ + 5
.l5b49 equ $ + 4
.l5b47 equ $ + 2
.l5b45
	db #01,#18,#00,#00,#05,#32,#01,#01
.l5b4f equ $ + 2
.l5b4e equ $ + 1
	db #18,#00,#00
.l5b50
	dw l59d3,l59e6,l59e5,l5a0a
	dw l5a07,l5a1a,l5a2b,l5a53
	dw l5a6d,l5a53,l5a87,l5a90
.l5b6d equ $ + 5
	dw l5ab2,l5aba,l5ad9
.l5b6e
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
.l5c34 equ $ + 4
.l5c30
	db #08,#00,#01,#08,#6a,#00,#00,#37
.l5c3e equ $ + 6
	db #00,#00,#00,#00,#e0,#5f,#80,#5f
	db #c0,#5f,#c0,#5d,#00,#08,#0f,#11
.l5c4f equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#09
	db #f1,#60,#69,#60,#00,#90,#00,#00
.l5c5e equ $ + 6
	db #00,#00,#00,#00,#01,#01,#09,#02
.l5c62 equ $ + 2
	db #03,#10,#aa,#01,#00,#26,#00,#00
.l5c6c equ $ + 4
	db #00,#00,#00,#00,#60,#5d,#a0,#5d
	db #c0,#5d,#40,#00,#05,#1b,#00,#00
.l5c7d equ $ + 5
	db #00,#00,#00,#00,#00,#02,#d5,#61
	db #8d,#60,#00,#10,#00,#00,#00,#00
.l5c8c equ $ + 4
	db #00,#00,#01,#01,#0a,#04,#05,#20
.l5c90
	db #7f,#00,#00,#3b,#00,#00,#00,#00
.l5c9a equ $ + 2
	db #00,#00,#e0,#5e,#40,#5f,#60,#5f
	db #c0,#00,#05,#1b,#00,#00,#00,#00
.l5cab equ $ + 3
	db #00,#00,#00,#01,#3c,#64,#b1,#60
	db #00,#80,#00,#00,#00,#00,#00,#00
.l5cba equ $ + 2
	db #01,#01,#60,#60,#84,#60,#a8,#60
.l5cc0
	db #52,#16,#a4,#2c,#a4,#2c,#52,#16
	db #60,#5d,#a0,#5d,#c0,#5d,#40,#00
	db #e0,#5d,#20,#5e,#40,#5e,#c0,#00
	db #60,#5e,#a0,#5e,#c0,#5e,#c0,#00
	db #52,#1e,#a4,#2c,#a4,#2c,#52,#16
	db #52,#16,#a4,#2c,#a4,#2c,#52,#16
	db #52,#16,#a4,#2c,#a4,#2c,#52,#16
	db #e0,#5e,#20,#5f,#c0,#5d,#40,#00
	db #e0,#5e,#40,#5f,#60,#5f,#c0,#00
	db #80,#5f,#c0,#5f,#c0,#5d,#00,#08
	db #52,#16,#a4,#2c,#32,#76,#00,#60
	db #72,#76,#a4,#2c,#a4,#2c,#52,#16
	db #a4,#2c,#a4,#2c,#92,#76,#52,#16
	db #a4,#2c,#a4,#2c,#a4,#2c,#52,#16
	db #a4,#2c,#52,#16,#52,#16,#00,#00
	db #52,#16,#53,#16,#53,#16,#01,#00
.l5d40
	db #53,#16,#e0,#5f,#00,#60,#20,#60
	db #52,#16,#53,#16,#53,#16,#53,#16
	db #53,#16,#40,#60,#52,#16,#52,#16
	db #52,#16,#53,#16,#53,#16,#53,#16
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #90,#01,#d0,#01,#10,#02,#50,#02
	db #90,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0f,#0f,#0f,#0e,#0e,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #fd,#00,#2f,#01,#61,#01,#93,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0e,#0d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #08,#00,#00,#00,#06,#06,#00,#00
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
	db #0e,#0e,#0d,#0d,#0d,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#09,#09,#09,#08
	db #08,#07,#07,#07,#06,#06,#05,#05
	db #05,#04,#04,#03,#03,#03,#02,#02
	db #0e,#0c,#0a,#08,#06,#04,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #00,#05,#07,#00,#05,#07,#00,#05
	db #07,#00,#05,#07,#00,#05,#07,#00
	db #05,#07,#00,#05,#07,#00,#05,#07
	db #00,#05,#07,#00,#05,#07,#00,#05
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#cc,#60,#00,#eb,#60,#00,#eb
	db #60,#00,#eb,#60,#00,#eb,#60,#00
	db #0a,#61,#00,#0a,#61,#00,#24,#61
	db #00,#3e,#61,#00,#0a,#61,#00,#24
	db #61,#80,#60,#60,#00,#63,#61,#00
	db #bc,#61,#00,#bc,#61,#00,#15,#62
	db #00,#15,#62,#00,#98,#62,#00,#98
	db #62,#00,#1a,#63,#00,#9c,#63,#00
	db #98,#62,#00,#1a,#63,#80,#84,#60
	db #00,#1d,#64,#00,#20,#64,#00,#20
	db #64,#00,#a1,#64,#00,#a1,#64,#00
	db #22,#65,#00,#22,#65,#00,#1d,#64
	db #00,#a3,#65,#00,#22,#65,#00,#1d
	db #64,#80,#a8,#60,#49,#9f,#b1,#47
	db #9f,#b1,#49,#9f,#b1,#47,#9f,#91
	db #49,#9f,#41,#49,#9f,#43,#49,#9f
	db #41,#49,#9f,#42,#49,#9f,#41,#49
	db #9f,#22,#ff,#49,#9f,#b1,#47,#9f
	db #b1,#49,#9f,#b1,#47,#9f,#91,#49
	db #9f,#41,#49,#9f,#43,#49,#9f,#41
	db #49,#9f,#43,#49,#9f,#41,#49,#9f
	db #22,#ff,#49,#9f,#f1,#45,#9f,#f1
	db #47,#9f,#01,#12,#49,#9f,#21,#49
	db #9f,#41,#49,#9f,#43,#49,#9f,#41
	db #49,#9f,#22,#ff,#49,#9f,#f1,#45
	db #9f,#01,#12,#47,#9f,#f1,#49,#9f
	db #21,#49,#9f,#43,#49,#9f,#41,#49
	db #9f,#43,#49,#9f,#22,#ff,#fe,#01
	db #fe,#01,#fe,#01,#fe,#01,#fe,#01
	db #fe,#01,#fe,#01,#fe,#01,#fe,#01
	db #fe,#01,#fe,#01,#fe,#01,#fe,#01
	db #fe,#01,#fe,#01,#fe,#01,#fe,#01
	db #fe,#2f,#ff,#3d,#1d,#06,#02,#38
	db #10,#02,#bd,#10,#b8,#10,#bd,#10
	db #38,#10,#02,#38,#10,#02,#3b,#10
	db #02,#36,#10,#02,#bb,#10,#b6,#10
	db #bb,#10,#36,#10,#02,#38,#10,#02
	db #3d,#10,#02,#38,#10,#02,#bd,#10
	db #b8,#10,#bd,#10,#38,#10,#02,#36
	db #10,#02,#3b,#10,#02,#36,#10,#02
	db #bb,#10,#b6,#10,#bb,#10,#36,#10
	db #02,#3d,#10,#04,#3d,#10,#04,#3d
	db #10,#04,#3d,#10,#04,#3d,#10,#04
	db #3d,#10,#02,#ff,#3d,#1d,#05,#02
	db #38,#10,#02,#bd,#10,#b8,#10,#bd
	db #10,#38,#10,#02,#36,#10,#02,#3b
	db #10,#02,#36,#10,#02,#bb,#10,#b6
	db #10,#bb,#10,#36,#10,#02,#38,#10
	db #02,#3d,#10,#02,#38,#10,#02,#bd
	db #10,#b8,#10,#bd,#10,#38,#10,#02
	db #36,#10,#02,#3b,#10,#02,#36,#10
	db #02,#bb,#10,#b6,#10,#bb,#10,#36
	db #10,#02,#3d,#10,#04,#3d,#10,#04
	db #3d,#10,#04,#3d,#10,#04,#3d,#10
	db #04,#3d,#10,#02,#ff,#3d,#18,#12
	db #02,#38,#18,#18,#02,#bd,#18,#12
	db #b8,#18,#18,#bd,#18,#12,#38,#18
	db #18,#02,#36,#18,#1b,#02,#3b,#18
	db #14,#02,#36,#18,#1b,#02,#bb,#18
	db #14,#b6,#18,#1b,#bb,#18,#14,#36
	db #18,#1b,#02,#38,#18,#18,#02,#3d
	db #18,#12,#02,#38,#18,#18,#02,#bd
	db #18,#12,#b8,#18,#18,#bd,#18,#12
	db #38,#18,#18,#02,#36,#18,#1b,#02
	db #3b,#18,#14,#02,#36,#18,#1b,#02
	db #bb,#18,#14,#b6,#18,#1b,#bb,#18
	db #14,#36,#18,#1b,#02,#3d,#18,#12
	db #03,#fe,#01,#3d,#18,#12,#03,#fe
	db #01,#3d,#18,#12,#03,#fe,#01,#3d
	db #18,#12,#03,#fe,#01,#3d,#18,#12
	db #03,#fe,#01,#3d,#18,#12,#02,#ff
	db #49,#7f,#19,#bd,#70,#d5,#70,#c9
	db #70,#bd,#70,#d5,#70,#c9,#70,#bd
	db #70,#d5,#70,#c9,#70,#bd,#70,#d5
	db #70,#c9,#70,#bd,#70,#d5,#70,#c5
	db #70,#b9,#70,#d1,#70,#c5,#70,#b9
	db #70,#d1,#70,#c5,#70,#b9,#70,#d1
	db #70,#c5,#70,#b9,#70,#d1,#70,#c5
	db #70,#b9,#70,#d1,#70,#c7,#70,#bb
	db #70,#d3,#70,#c7,#70,#bb,#70,#d3
	db #70,#c7,#70,#bb,#70,#d3,#70,#c7
	db #70,#bb,#70,#d3,#70,#c7,#70,#bb
	db #70,#d3,#70,#c7,#70,#bb,#70,#d3
	db #70,#c9,#70,#bd,#70,#d5,#70,#c9
	db #70,#bd,#70,#d5,#70,#c9,#70,#bd
	db #70,#d5,#70,#c9,#70,#bd,#70,#d5
	db #70,#c9,#70,#bd,#70,#d5,#70,#bd
	db #70,#ff,#c9,#7d,#05,#bd,#70,#d5
	db #70,#c9,#70,#bd,#70,#d5,#70,#c9
	db #70,#bd,#70,#d5,#70,#c9,#70,#bd
	db #70,#d5,#70,#c9,#70,#bd,#70,#d5
	db #70,#c5,#70,#b9,#70,#d1,#70,#c5
	db #70,#b9,#70,#d1,#70,#c5,#70,#b9
	db #70,#d1,#70,#c5,#70,#b9,#70,#d1
	db #70,#c5,#70,#b9,#70,#d1,#70,#c5
	db #70,#b9,#70,#d1,#70,#c7,#70,#bb
	db #70,#d3,#70,#c7,#70,#bb,#70,#d3
	db #70,#c7,#70,#bb,#70,#d3,#70,#c7
	db #70,#bb,#70,#d3,#70,#c7,#70,#bb
	db #70,#d3,#70,#c9,#70,#bd,#70,#d5
	db #70,#c9,#70,#bd,#70,#d5,#70,#c9
	db #70,#bd,#70,#d5,#70,#c9,#70,#bd
	db #70,#d5,#70,#c9,#70,#bd,#70,#d5
	db #70,#c9,#70,#ff,#c9,#70,#bd,#70
	db #d5,#70,#c9,#70,#bd,#70,#d5,#70
	db #c9,#70,#bd,#70,#d5,#70,#c9,#70
	db #bd,#70,#d5,#70,#c9,#70,#bd,#70
	db #d5,#70,#c5,#70,#b9,#70,#d1,#70
	db #c5,#70,#b9,#70,#d1,#70,#c5,#70
	db #b9,#70,#d1,#70,#c5,#70,#b9,#70
	db #d1,#70,#c5,#70,#b9,#70,#d1,#70
	db #c7,#70,#bb,#70,#d3,#70,#c7,#70
	db #bb,#70,#d3,#70,#c7,#70,#bb,#70
	db #d3,#70,#c7,#70,#bb,#70,#d3,#70
	db #c7,#70,#bb,#70,#d3,#70,#c7,#70
	db #bb,#70,#d3,#70,#c9,#70,#bd,#70
	db #d5,#70,#c9,#70,#bd,#70,#d5,#70
	db #c9,#70,#bd,#70,#d5,#70,#c9,#70
	db #bd,#70,#d5,#70,#c9,#70,#bd,#70
	db #d5,#70,#c9,#70,#ff,#00,#40,#ff
	db #c9,#20,#c9,#80,#c9,#80,#c9,#80
	db #c9,#30,#c9,#80,#c9,#80,#c9,#80
	db #c9,#20,#c9,#80,#c9,#80,#cb,#80
	db #c9,#30,#cb,#80,#cb,#80,#cb,#80
	db #c9,#20,#cb,#80,#cb,#80,#cb,#80
	db #c9,#30,#c9,#80,#c9,#80,#c9,#80
	db #c9,#20,#c9,#80,#c9,#80,#c9,#80
	db #c9,#30,#c9,#80,#cb,#80,#cb,#80
	db #c9,#20,#cb,#80,#cb,#80,#cb,#80
	db #c9,#30,#cb,#80,#cb,#80,#cb,#80
	db #c9,#20,#cb,#80,#cb,#80,#cb,#80
	db #c9,#30,#cb,#80,#cb,#80,#cb,#80
	db #c9,#20,#cb,#80,#cb,#80,#cb,#80
	db #c9,#30,#c9,#80,#cb,#80,#cb,#80
	db #c9,#20,#cb,#80,#cb,#80,#cb,#80
	db #c9,#30,#cb,#80,#cb,#80,#cb,#80
	db #ff,#bd,#20,#bf,#80,#bf,#80,#bf
	db #80,#bb,#30,#bf,#80,#c2,#80,#c2
	db #80,#bd,#20,#c2,#80,#c2,#80,#c2
	db #80,#bb,#30,#c2,#80,#c2,#80,#c2
	db #80,#bd,#20,#c2,#80,#c2,#80,#c2
	db #80,#bb,#30,#c2,#80,#c2,#80,#c2
	db #80,#bd,#20,#c2,#80,#c2,#80,#c2
	db #80,#bb,#30,#c2,#80,#c2,#80,#c2
	db #80,#bd,#20,#c2,#80,#c2,#80,#c2
	db #80,#bb,#30,#c2,#80,#c2,#80,#c2
	db #80,#bd,#20,#c2,#80,#c2,#80,#c2
	db #80,#bb,#30,#c2,#80,#c2,#80,#c2
	db #80,#bd,#20,#c2,#80,#c2,#80,#c2
	db #80,#bb,#30,#c2,#80,#c2,#80,#c2
	db #80,#bd,#20,#c2,#80,#c2,#80,#c2
	db #80,#bb,#30,#c2,#80,#c2,#80,#c2
	db #80,#ff,#c5,#20,#cb,#80,#cb,#80
	db #cb,#80,#c9,#30,#cb,#80,#cb,#80
	db #cb,#80,#c5,#20,#cb,#80,#cb,#80
	db #cb,#80,#c9,#30,#cb,#80,#cb,#80
	db #cb,#80,#c5,#20,#cb,#80,#cb,#80
	db #cb,#80,#c9,#30,#cb,#80,#cb,#80
	db #cb,#80,#c5,#20,#cb,#80,#cb,#80
	db #cb,#80,#c9,#30,#cb,#80,#cb,#80
	db #cb,#80,#c5,#20,#cb,#80,#cb,#80
	db #cb,#80,#c9,#30,#cb,#80,#cb,#80
	db #cb,#80,#c5,#20,#cb,#80,#cb,#80
	db #cb,#80,#c9,#30,#cb,#80,#cb,#80
	db #cb,#80,#c5,#20,#cb,#80,#cb,#80
	db #cb,#80,#c9,#30,#cb,#80,#cb,#80
	db #cb,#80,#c5,#20,#cb,#80,#cb,#80
	db #cb,#80,#c9,#30,#cb,#80,#cb,#80
	db #cb,#80,#ff,#c7,#20,#c9,#80,#c9
	db #80,#c9,#80,#c9,#30,#c9,#80,#c9
	db #80,#c9,#80,#c7,#20,#c9,#80,#c9
	db #80,#c9,#80,#c9,#30,#c9,#80,#c9
	db #80,#c9,#80,#c7,#20,#c9,#80,#c9
	db #80,#c9,#80,#c9,#30,#c9,#80,#c9
	db #80,#c9,#80,#c7,#20,#c9,#80,#c9
	db #80,#c9,#80,#c9,#30,#c9,#80,#c9
	db #80,#c9,#80,#c7,#20,#c9,#80,#c9
	db #80,#c9,#80,#c9,#30,#c9,#80,#c9
	db #80,#c9,#80,#c7,#20,#c9,#80,#c9
	db #80,#c9,#80,#c9,#30,#c9,#80,#c9
	db #80,#c9,#80,#c7,#20,#c9,#80,#c9
	db #80,#c9,#80,#c9,#30,#c9,#80,#c9
	db #80,#c9,#80,#c7,#20,#c9,#80,#c9
	db #80,#c9,#80,#c9,#30,#c9,#80,#c9
	db #80,#c9,#80,#ff
;
.music_info
	db "Bordelik Meeting 4 - Chiotte (1995)(Arkos)(Greg)",0
	db "ST-128 Module",0

	read "music_end.asm"
