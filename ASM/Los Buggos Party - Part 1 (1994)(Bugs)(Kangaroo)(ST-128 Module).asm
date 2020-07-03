; Music of Los Buggos Party - Part 1 (1994)(Bugs)(Kangaroo)(ST-128 Module)
; Ripped by Megachur the 22/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LOSBUPP1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #2f00

	read "music_header.asm"

	jp l2f09
	jp l2f9d
	jp l2f81
;
.init_music
.l2f09
;
	xor a
	ld hl,l34b4
	call l2f7a
	ld hl,l34e2
	call l2f7a
	ld hl,l3510
	call l2f7a
	ld ix,l34b0
	ld iy,l353a
	ld de,#002e
	ld b,#03
.l2f29
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
	djnz l2f29
	ld hl,l33c9
	ld (hl),#03
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l33c5),hl
	ld (l33c7),hl
	ld a,#0c
	ld c,d
	call l33a5
	ld a,#0d
	ld c,d
	jp l33a5
.l2f7a
	ld b,#2a
.l2f7c
	ld (hl),a
	inc hl
	djnz l2f7c
	ret
;
.stop_music
.l2f81
;
	ld a,#07
	ld c,#3f
	call l33a5
	ld a,#08
	ld c,#00
	call l33a5
	ld a,#09
	ld c,#00
	call l33a5
	ld a,#0a
	ld c,#00
	jp l33a5
;
.play_music
.l2f9d
;
	ld hl,l33cb
	dec (hl)
	ld ix,l34b0
	ld bc,l34be
	call l303f
	ld ix,l34de
	ld bc,l34ec
	call l303f
	ld ix,l350c
	ld bc,l351a
	call l303f
	ld hl,l33c4
	ld de,l33cb
	ld b,#06
	call l301c
	ld b,#07
	call l301c
	ld b,#0b
	call l301c
	ld b,#0d
	call l301c
	ld de,l33cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l34cf
	call l2ff5
	ld hl,l34fd
	call l2ff5
	ld hl,l352b
.l2ff5
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
	jr nz,l300a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l300a
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
.l301c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l33a5
.l3027
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l33a5
.l303f
	ld a,(l33cb)
	or a
	jp nz,l30f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l30f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l3027
	or a
	jp z,l30ec
	ld r,a
	and #7f
	cp #10
	jr c,l30c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l323f
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
	jr z,l30a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l30a0
	rrca
	ld c,a
	ld hl,l3540
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
	jr z,l30bf
	ld (ix+#1e),b
.l30bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l30e0
.l30c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l33d0
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
.l30e0
	ld a,d
	or a
	jr nz,l30ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l30ee
.l30ec
	ld a,(hl)
	inc hl
.l30ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l30f7
	ld a,(ix+#17)
	or a
	jr nz,l310d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l310d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l3123
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l3123
	ld a,(ix+#0d)
	or a
	jr z,l3131
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l314f
.l3131
	ld a,(ix+#1a)
	or a
	jp z,l3156
	ld c,a
	cp #03
	jr nz,l313e
	xor a
.l313e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l314f
	ld a,(ix+#18)
	dec c
	jr z,l314f
	ld a,(ix+#19)
.l314f
	add (ix+#07)
	ld b,d
	call l323f
.l3156
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l317e
	dec (ix+#1b)
	jr nz,l317e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l31b6
.l317e
	ld a,(ix+#29)
	or a
	jr z,l31b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l31ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l31a4
	ld (ix+#29),#ff
	jr l31ad
.l31a4
	cp (ix+#2b)
	jr nz,l31ad
	ld (ix+#29),#01
.l31ad
	ld b,d
	or a
	jp p,l31b3
	dec b
.l31b3
	ld c,a
	jr l31c1
.l31b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l31c1
	pop hl
	bit 7,(ix+#14)
	jr z,l31ca
	ld h,d
	ld l,d
.l31ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l33a5
	ld c,h
	ld a,(ix+#02)
	call l33a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l321d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l320c
	dec (ix+#09)
	jr nz,l320c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l3204
	xor a
	jr l3209
.l3204
	cp #10
	jr nz,l3209
	dec a
.l3209
	ld (ix+#1e),a
.l320c
	ld a,b
	sub (ix+#1e)
	jr nc,l3213
	xor a
.l3213
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l33a5
.l321d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l33cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l323b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l323b
	ld (l33cc),hl
	ret
.l323f
	ld hl,l33ee
	cp #61
	jr nc,l3249
	add a
	ld c,a
	add hl,bc
.l3249
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l3253
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l3378
	ld (ix+#1e),a
	jp l30e0
.l3265
	dec b
.l3266
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l3271
	neg
.l3271
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
	jp l30e0
.l3287
	dec b
	jr l328b
.l328a
	inc b
.l328b
	call l3378
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l30e0
.l329a
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
	jp l335d
.l32ab
	ld a,(hl)
	inc hl
	or a
	jr z,l32cd
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
.l32cd
	ld (ix+#29),a
	jp l30e0
.l32d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l33cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l33ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l30e0
.l32ed
	ld a,(hl)
	or a
	jr z,l32fe
	call l337a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l30e0
.l32fe
	ld hl,#0101
	ld (l33ca),hl
	jp l30e0
.l3307
	call l3378
	ld (ix+#1e),a
	jp l30e0
.l3310
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l3389
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l3389
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l30e0
.l3332
	ld a,(hl)
	inc hl
	ld (l33c9),a
	jp l30e0
.l333a
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
	jp l30e0
.l3359
	call l3378
	add a
.l335d
	ld b,#00
	ld c,a
	push hl
	ld hl,l35c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l30e0
.l3378
	ld a,(hl)
	inc hl
.l337a
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
.l3389
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l3540
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l33a5
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
.l33c4
	ret
.l33cc equ $ + 7
.l33cb equ $ + 6
.l33ca equ $ + 5
.l33c9 equ $ + 4
.l33c7 equ $ + 2
.l33c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l33cf equ $ + 2
.l33ce equ $ + 1
	db #38,#00,#00
.l33d0
	dw l3253,l3266,l3265,l328a
	dw l3287,l329a,l32ab,l32d3
	dw l32ed,l32d3,l3307,l3310
	dw l3332,l333a,l3359
.l33ee
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
.l34b4 equ $ + 4
.l34b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l34be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l34cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l34de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l34e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l34ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l34fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l350c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l3510
	db #00,#00,#00,#00,#00,#00,#00,#00
.l351a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l352b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l353a equ $ + 2
	db #00,#00,#80,#38,#a4,#38,#c8,#38
.l3540
	db #92,#ef,#e4,#dd,#76,#cd,#a4,#de
	db #e0,#35,#20,#36,#40,#36,#80,#00
	db #60,#36,#a0,#36,#c0,#36,#9a,#06
	db #d2,#ee,#a4,#dd,#76,#cd,#a4,#de
	db #e0,#36,#20,#37,#40,#37,#40,#00
	db #60,#37,#a0,#37,#c0,#37,#c0,#00
	db #12,#ef,#76,#cd,#76,#cd,#a4,#de
	db #a4,#de,#76,#cd,#76,#cd,#a4,#de
	db #60,#36,#e0,#37,#40,#37,#00,#00
	db #02,#f1,#24,#e0,#74,#e0,#f2,#f1
	db #60,#36,#00,#38,#40,#37,#00,#00
	db #e0,#36,#20,#38,#40,#37,#40,#00
	db #a4,#dd,#a4,#dd,#a4,#dd,#d2,#ee
	db #a4,#dd,#a4,#dd,#a4,#dd,#d2,#ee
	db #a4,#dd,#62,#f0,#b2,#f0,#30,#02
	db #52,#f1,#a2,#f1,#f2,#f1,#00,#00
.l35c0
	db #40,#38,#60,#38,#d2,#ee,#d2,#ee
	db #d2,#ee,#d2,#ee,#d2,#ee,#d2,#ee
	db #d2,#ee,#d2,#ee,#d2,#ee,#d2,#ee
	db #d2,#ee,#d2,#ee,#d2,#ee,#d2,#ee
	db #90,#01,#e0,#01,#30,#02,#80,#02
	db #d0,#02,#20,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #08,#00,#00,#00,#00,#00,#00,#00
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
	db #0d,#0b,#09,#07,#05,#03,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #0e,#0d,#0c,#0b,#0a,#0c,#0b,#0a
	db #09,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#65,#01,#3e,#01,#00,#00
	db #c3,#04,#65,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#06,#07,#07,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0e,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0a,#0a,#0a,#09,#09,#08,#08,#07
	db #06,#05,#04,#03,#02,#01,#01,#01
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#07,#07,#06,#06,#05
	db #04,#03,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0d,#0c,#0e,#0d,#0c
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#02,#02,#02,#02
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #00,#ec,#38,#00,#ef,#38,#00,#ef
	db #38,#00,#60,#39,#00,#b7,#39,#00
	db #00,#3a,#00,#b7,#39,#00,#00,#3a
	db #00,#00,#3a,#00,#ef,#38,#00,#ef
	db #38,#80,#8c,#38,#00,#49,#3a,#00
	db #49,#3a,#00,#49,#3a,#00,#b6,#3a
	db #00,#1e,#3b,#00,#85,#3b,#00,#01
	db #3c,#00,#68,#3c,#00,#68,#3c,#00
	db #c6,#3c,#00,#f7,#3c,#80,#b0,#38
	db #00,#ec,#38,#00,#ec,#38,#00,#1f
	db #3d,#00,#85,#3d,#00,#e9,#3d,#00
	db #aa,#3e,#00,#e9,#3d,#00,#aa,#3e
	db #00,#aa,#3e,#00,#ec,#38,#00,#ec
	db #38,#80,#d4,#38,#00,#40,#ff,#28
	db #48,#1e,#03,#fe,#01,#a8,#48,#1e
	db #fe,#01,#28,#48,#1e,#03,#fe,#01
	db #a8,#48,#1e,#fe,#01,#28,#48,#1e
	db #03,#fe,#01,#2b,#48,#19,#03,#fe
	db #01,#ab,#48,#19,#fe,#01,#2b,#48
	db #19,#03,#fe,#01,#ab,#48,#19,#fe
	db #01,#2b,#48,#19,#03,#fe,#01,#2f
	db #48,#14,#03,#fe,#01,#af,#48,#14
	db #fe,#01,#2f,#48,#14,#03,#fe,#01
	db #af,#48,#14,#fe,#01,#2f,#48,#14
	db #03,#fe,#01,#2d,#48,#16,#03,#fe
	db #01,#ad,#48,#16,#fe,#01,#2d,#48
	db #16,#03,#fe,#01,#ad,#48,#16,#fe
	db #01,#2b,#48,#19,#03,#fe,#01,#ff
	db #00,#03,#fe,#01,#a8,#48,#1e,#fe
	db #01,#28,#48,#1e,#03,#fe,#01,#a8
	db #48,#1e,#fe,#01,#28,#48,#1e,#03
	db #fe,#01,#2b,#48,#19,#03,#fe,#01
	db #ab,#48,#19,#fe,#01,#2b,#48,#19
	db #03,#fe,#01,#ab,#48,#19,#fe,#01
	db #2b,#48,#19,#03,#fe,#01,#2f,#48
	db #14,#03,#fe,#01,#af,#48,#14,#fe
	db #01,#2f,#48,#14,#03,#fe,#01,#af
	db #48,#14,#fe,#01,#2f,#48,#14,#03
	db #fe,#01,#73,#51,#00,#10,#ff,#40
	db #48,#1e,#04,#40,#48,#1e,#02,#32
	db #48,#11,#02,#43,#48,#19,#04,#40
	db #48,#1e,#08,#40,#48,#1e,#04,#32
	db #48,#11,#02,#2f,#48,#14,#02,#32
	db #48,#11,#02,#40,#48,#1e,#02,#2f
	db #48,#14,#04,#2f,#48,#14,#02,#2d
	db #48,#16,#02,#32,#48,#11,#04,#2f
	db #48,#14,#08,#2f,#48,#14,#04,#2d
	db #48,#16,#04,#2f,#48,#14,#04,#ff
	db #32,#48,#11,#04,#32,#48,#11,#02
	db #30,#48,#13,#02,#41,#48,#1c,#04
	db #32,#48,#11,#08,#32,#48,#11,#04
	db #2d,#48,#16,#02,#2b,#48,#19,#02
	db #2d,#48,#16,#02,#30,#48,#13,#02
	db #2d,#48,#16,#04,#2d,#48,#16,#02
	db #2b,#48,#19,#02,#30,#48,#13,#04
	db #2d,#48,#16,#08,#2d,#48,#16,#04
	db #30,#48,#13,#04,#32,#48,#11,#04
	db #ff,#4c,#4b,#30,#4c,#4b,#13,#47
	db #4b,#20,#4c,#4b,#15,#47,#4b,#13
	db #4c,#4b,#20,#47,#4b,#15,#4c,#4b
	db #13,#47,#4b,#20,#4c,#4b,#15,#47
	db #4b,#13,#4a,#4b,#20,#4c,#4b,#10
	db #4a,#4b,#23,#4c,#4b,#13,#47,#4b
	db #20,#4c,#4b,#15,#47,#4b,#13,#47
	db #4b,#20,#45,#4b,#10,#47,#4b,#23
	db #45,#4b,#13,#47,#4b,#20,#45,#4b
	db #15,#47,#4b,#13,#43,#4b,#20,#47
	db #4b,#15,#43,#4b,#13,#42,#4b,#20
	db #43,#4b,#10,#42,#4b,#23,#43,#4b
	db #13,#42,#4b,#25,#40,#4b,#60,#40
	db #4b,#63,#40,#4b,#45,#ff,#4c,#4b
	db #30,#4c,#4b,#13,#47,#4b,#20,#4c
	db #4b,#15,#47,#4b,#13,#4c,#4b,#20
	db #47,#4b,#15,#4c,#4b,#13,#47,#4b
	db #20,#4c,#4b,#15,#47,#4b,#13,#4a
	db #4b,#20,#4c,#4b,#10,#4a,#4b,#23
	db #4c,#4b,#13,#47,#4b,#20,#4c,#4b
	db #15,#47,#4b,#13,#47,#4b,#20,#45
	db #4b,#10,#47,#4b,#23,#45,#4b,#13
	db #47,#4b,#20,#45,#4b,#15,#47,#4b
	db #13,#43,#4b,#20,#47,#4b,#15,#43
	db #4b,#13,#42,#4b,#20,#43,#4b,#10
	db #42,#4b,#23,#43,#4b,#13,#42,#4b
	db #25,#73,#1b,#00,#10,#ff,#4c,#bb
	db #20,#4f,#bb,#15,#4c,#bb,#33,#4c
	db #bb,#65,#4c,#bb,#20,#4e,#bb,#10
	db #4c,#bb,#13,#4f,#bb,#10,#4e,#bb
	db #13,#4c,#bb,#15,#4f,#bb,#13,#51
	db #bb,#20,#4f,#bb,#15,#51,#bb,#13
	db #53,#bb,#20,#51,#bb,#15,#53,#bb
	db #13,#54,#bb,#20,#53,#bb,#15,#54
	db #bb,#13,#53,#bb,#20,#54,#bb,#15
	db #53,#bb,#33,#51,#bb,#30,#51,#bb
	db #33,#54,#bb,#30,#54,#bb,#13,#53
	db #bb,#20,#54,#bb,#15,#53,#bb,#33
	db #51,#bb,#30,#51,#bb,#33,#4f,#bb
	db #30,#4f,#bb,#13,#ff,#51,#bb,#10
	db #53,#bb,#13,#51,#bb,#15,#51,#bb
	db #33,#51,#bb,#65,#51,#bb,#30,#51
	db #bb,#13,#4f,#bb,#20,#51,#bb,#15
	db #4f,#bb,#13,#51,#bb,#20,#4f,#bb
	db #15,#51,#bb,#13,#4e,#bb,#20,#51
	db #bb,#15,#4e,#bb,#13,#4f,#bb,#20
	db #4c,#bb,#10,#4f,#bb,#23,#4c,#bb
	db #13,#4f,#bb,#25,#4c,#bb,#85,#4c
	db #bb,#20,#4e,#bb,#10,#4c,#bb,#13
	db #4f,#bb,#10,#4e,#bb,#13,#4c,#bb
	db #10,#4f,#bb,#13,#4e,#bb,#10,#4c
	db #bb,#13,#4f,#bb,#10,#4e,#bb,#13
	db #51,#bb,#10,#4f,#bb,#13,#4f,#bb
	db #10,#51,#bb,#13,#51,#bb,#10,#4f
	db #bb,#13,#53,#bb,#10,#51,#bb,#13
	db #ff,#4c,#bb,#20,#56,#bb,#15,#4c
	db #bb,#33,#4c,#bb,#65,#4c,#bb,#20
	db #4e,#bb,#10,#4c,#bb,#13,#4f,#bb
	db #10,#4e,#bb,#13,#4c,#bb,#15,#4f
	db #bb,#13,#51,#bb,#20,#4f,#bb,#15
	db #51,#bb,#13,#53,#bb,#20,#51,#bb
	db #15,#53,#bb,#13,#58,#bb,#20,#53
	db #bb,#15,#58,#bb,#13,#53,#bb,#20
	db #58,#bb,#15,#53,#bb,#33,#51,#bb
	db #30,#51,#bb,#33,#58,#bb,#30,#58
	db #bb,#13,#5b,#bb,#20,#58,#bb,#15
	db #5b,#bb,#33,#5a,#bb,#30,#5a,#bb
	db #33,#56,#bb,#30,#56,#bb,#13,#ff
	db #5d,#bb,#30,#5d,#bb,#33,#5d,#bb
	db #65,#5d,#bb,#30,#5d,#bb,#13,#5b
	db #bb,#20,#5d,#bb,#15,#5b,#bb,#13
	db #5d,#bb,#20,#5b,#bb,#15,#5d,#bb
	db #13,#5a,#bb,#20,#5d,#bb,#15,#5a
	db #bb,#13,#5b,#bb,#20,#58,#bb,#10
	db #5b,#bb,#23,#58,#bb,#13,#5b,#bb
	db #25,#58,#bb,#c5,#4c,#bb,#10,#cf
	db #b0,#d3,#b0,#d8,#b0,#cf,#b0,#d3
	db #b0,#d8,#b0,#db,#b0,#d3,#b0,#d8
	db #b0,#db,#b0,#df,#b0,#d8,#b0,#db
	db #b0,#df,#b0,#e4,#b0,#ff,#64,#80
	db #08,#64,#80,#08,#64,#80,#08,#64
	db #80,#08,#64,#80,#02,#62,#80,#02
	db #5f,#80,#02,#62,#80,#02,#5f,#80
	db #02,#5d,#80,#02,#5f,#80,#02,#5d
	db #80,#02,#5b,#80,#04,#5d,#80,#04
	db #5b,#80,#04,#5a,#80,#04,#ff,#5b
	db #80,#08,#5b,#80,#08,#5a,#80,#08
	db #56,#80,#04,#58,#80,#14,#58,#80
	db #02,#56,#80,#02,#53,#80,#02,#56
	db #80,#02,#53,#80,#02,#51,#80,#02
	db #4f,#80,#02,#4e,#80,#02,#ff,#70
	db #11,#20,#73,#20,#02,#f3,#20,#f3
	db #20,#73,#20,#02,#73,#50,#02,#73
	db #20,#02,#70,#10,#02,#73,#20,#02
	db #f3,#20,#f3,#20,#73,#20,#02,#73
	db #20,#02,#73,#20,#02,#73,#50,#02
	db #73,#20,#02,#f3,#20,#f3,#20,#73
	db #20,#02,#73,#21,#20,#73,#20,#02
	db #70,#10,#02,#73,#20,#02,#73,#50
	db #02,#73,#20,#02,#f3,#20,#f3,#20
	db #73,#20,#02,#70,#10,#02,#73,#20
	db #02,#f3,#20,#f3,#20,#73,#20,#02
	db #73,#50,#02,#70,#10,#02,#73,#50
	db #02,#73,#20,#02,#ff,#70,#11,#20
	db #73,#20,#02,#f3,#20,#f3,#20,#73
	db #20,#02,#73,#50,#02,#73,#20,#02
	db #70,#10,#02,#73,#20,#02,#f3,#20
	db #f3,#20,#73,#20,#02,#73,#20,#02
	db #73,#20,#02,#73,#50,#02,#73,#20
	db #02,#f3,#20,#f3,#20,#73,#20,#02
	db #73,#21,#20,#73,#20,#02,#70,#10
	db #02,#73,#20,#02,#73,#50,#02,#73
	db #20,#02,#f3,#20,#f3,#20,#73,#20
	db #02,#73,#50,#02,#73,#20,#02,#f3
	db #20,#f3,#20,#73,#20,#04,#73,#20
	db #02,#f3,#20,#f3,#20,#73,#20,#02
	db #ff,#70,#11,#10,#58,#af,#10,#73
	db #21,#10,#58,#af,#10,#73,#21,#10
	db #58,#af,#10,#73,#21,#10,#58,#af
	db #10,#73,#51,#10,#58,#af,#10,#73
	db #21,#10,#58,#af,#10,#70,#11,#10
	db #58,#af,#10,#73,#21,#10,#58,#af
	db #10,#73,#21,#10,#58,#af,#10,#73
	db #21,#10,#58,#af,#10,#73,#21,#10
	db #58,#af,#10,#73,#21,#10,#58,#af
	db #10,#73,#51,#10,#58,#af,#10,#73
	db #21,#10,#58,#af,#10,#73,#21,#10
	db #58,#af,#10,#73,#21,#10,#58,#af
	db #10,#73,#21,#10,#56,#af,#11,#73
	db #21,#10,#56,#af,#11,#70,#11,#10
	db #56,#af,#11,#73,#21,#10,#56,#af
	db #11,#73,#51,#10,#56,#af,#11,#73
	db #21,#10,#56,#af,#11,#73,#21,#10
	db #56,#af,#11,#73,#21,#10,#56,#af
	db #11,#70,#11,#10,#56,#af,#11,#73
	db #21,#10,#56,#af,#11,#73,#21,#10
	db #56,#af,#11,#73,#21,#10,#56,#af
	db #11,#73,#51,#10,#56,#af,#11,#70
	db #11,#10,#56,#af,#11,#73,#51,#10
	db #56,#af,#11,#73,#21,#10,#56,#af
	db #11,#ff,#70,#11,#10,#56,#af,#11
	db #73,#21,#10,#56,#af,#11,#73,#21
	db #10,#56,#af,#11,#73,#21,#10,#56
	db #af,#11,#73,#51,#10,#56,#af,#11
	db #73,#21,#10,#56,#af,#11,#70,#11
	db #10,#56,#af,#11,#73,#21,#10,#56
	db #af,#11,#73,#21,#10,#56,#af,#11
	db #73,#21,#10,#56,#af,#11,#73,#21
	db #10,#56,#af,#11,#73,#21,#10,#56
	db #af,#11,#73,#51,#10,#56,#af,#11
	db #73,#21,#10,#56,#af,#11,#73,#21
	db #10,#56,#af,#11,#73,#21,#10,#56
	db #af,#11,#73,#21,#10,#51,#af,#11
	db #73,#21,#10,#51,#af,#11,#70,#11
	db #10,#51,#af,#11,#73,#21,#10,#51
	db #af,#11,#73,#51,#10,#51,#af,#11
	db #73,#21,#10,#51,#af,#11,#73,#21
	db #10,#51,#af,#11,#73,#21,#10,#51
	db #af,#11,#70,#11,#10,#51,#af,#11
	db #73,#21,#10,#51,#af,#11,#73,#21
	db #10,#51,#af,#11,#73,#21,#10,#51
	db #af,#11,#73,#51,#10,#51,#af,#11
	db #70,#11,#10,#51,#af,#11,#73,#51
	db #10,#51,#af,#11,#73,#21,#10,#51
	db #af,#11,#ff
;
.music_info
	db "Los Buggos Party - Part 1 (1994)(Bugs)(Kangaroo)",0
	db "ST-128 Module",0

	read "music_end.asm"
