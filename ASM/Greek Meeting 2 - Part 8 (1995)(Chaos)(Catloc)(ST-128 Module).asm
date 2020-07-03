; Music of Greek Meeting 2 - Part 8 (1995)(Chaos)(Catloc)(ST-128 Module)
; Ripped by Megachur the Greek Meeting 2 - Part 8 (1995)(Chaos)(Catloc)(ST-128 Module)
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GREEM2P8.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #31e0

	read "music_header.asm"

	jp l31e9
	jp l327d
	jp l3261
;
.init_music
.l31e9
;
	xor a
	ld hl,l3794
	call l325a
	ld hl,l37c2
	call l325a
	ld hl,l37f0
	call l325a
	ld ix,l3790
	ld iy,l381a
	ld de,#002e
	ld b,#03
.l3209
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
	djnz l3209
	ld hl,l36a9
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
	ld (l36a5),hl
	ld (l36a7),hl
	ld a,#0c
	ld c,d
	call l3685
	ld a,#0d
	ld c,d
	jp l3685
.l325a
	ld b,#2a
.l325c
	ld (hl),a
	inc hl
	djnz l325c
	ret
;
.stop_music
.l3261
;
	ld a,#07
	ld c,#3f
	call l3685
	ld a,#08
	ld c,#00
	call l3685
	ld a,#09
	ld c,#00
	call l3685
	ld a,#0a
	ld c,#00
	jp l3685
;
.play_music
.l327d
;
	ld hl,l36ab
	dec (hl)
	ld ix,l3790
	ld bc,l379e
	call l331f
	ld ix,l37be
	ld bc,l37cc
	call l331f
	ld ix,l37ec
	ld bc,l37fa
	call l331f
	ld hl,l36a4
	ld de,l36ab
	ld b,#06
	call l32fc
	ld b,#07
	call l32fc
	ld b,#0b
	call l32fc
	ld b,#0d
	call l32fc
	ld de,l36ab
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l37af
	call l32d5
	ld hl,l37dd
	call l32d5
	ld hl,l380b
.l32d5
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
	jr nz,l32ea
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l32ea
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
.l32fc
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l3685
.l3307
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l3685
.l331f
	ld a,(l36ab)
	or a
	jp nz,l33d7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l33d7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l3307
	or a
	jp z,l33cc
	ld r,a
	and #7f
	cp #10
	jr c,l33a7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l351f
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
	jr z,l3380
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l3380
	rrca
	ld c,a
	ld hl,l3820
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
	jr z,l339f
	ld (ix+#1e),b
.l339f
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l33c0
.l33a7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l36b0
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
	add a
.l33c0
	ld a,d
	or a
	jr nz,l33ce
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l33ce
.l33cc
	ld a,(hl)
	inc hl
.l33ce
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l33d7
	ld a,(ix+#17)
	or a
	jr nz,l33ed
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l33ed
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l3403
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l3403
	ld a,(ix+#0d)
	or a
	jr z,l3411
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l342f
.l3411
	ld a,(ix+#1a)
	or a
	jp z,l3436
	ld c,a
	cp #03
	jr nz,l341e
	xor a
.l341e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l342f
	ld a,(ix+#18)
	dec c
	jr z,l342f
	ld a,(ix+#19)
.l342f
	add (ix+#07)
	ld b,d
	call l351f
.l3436
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l345e
	dec (ix+#1b)
	jr nz,l345e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l3496
.l345e
	ld a,(ix+#29)
	or a
	jr z,l3496
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l348d
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l3484
	ld (ix+#29),#ff
	jr l348d
.l3484
	cp (ix+#2b)
	jr nz,l348d
	ld (ix+#29),#01
.l348d
	ld b,d
	or a
	jp p,l3493
	dec b
.l3493
	ld c,a
	jr l34a1
.l3496
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l34a1
	pop hl
	bit 7,(ix+#14)
	jr z,l34aa
	ld h,d
	ld l,d
.l34aa
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l3685
	ld c,h
	ld a,(ix+#02)
	call l3685
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l34fd
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l34ec
	dec (ix+#09)
	jr nz,l34ec
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l34e4
	xor a
	jr l34e9
.l34e4
	cp #10
	jr nz,l34e9
	dec a
.l34e9
	ld (ix+#1e),a
.l34ec
	ld a,b
	sub (ix+#1e)
	jr nc,l34f3
	xor a
.l34f3
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l3685
.l34fd
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l36ac)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l351b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l351b
	ld (l36ac),hl
	ret
.l351f
	ld hl,l36ce
	cp #61
	jr nc,l3529
	add a
	ld c,a
	add hl,bc
.l3529
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l3533
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l3658
	ld (ix+#1e),a
	jp l33c0
.l3545
	dec b
.l3546
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l3551
	neg
.l3551
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
	jp l33c0
.l3567
	dec b
	jr l356b
.l356a
	inc b
.l356b
	call l3658
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l33c0
.l357a
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
	jp l363d
.l358b
	ld a,(hl)
	inc hl
	or a
	jr z,l35ad
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
.l35ad
	ld (ix+#29),a
	jp l33c0
.l35b3
	dec hl
	ld a,(hl)
	and #0f
	ld (l36af),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l36ae),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l33c0
.l35cd
	ld a,(hl)
	or a
	jr z,l35de
	call l365a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l33c0
.l35de
	ld hl,#0101
	ld (l36aa),hl
	jp l33c0
.l35e7
	call l3658
	ld (ix+#1e),a
	jp l33c0
.l35f0
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l3669
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l3669
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l33c0
.l3612
	ld a,(hl)
	inc hl
	ld (l36a9),a
	jp l33c0
.l361a
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
	jp l33c0
.l3639
	call l3658
	add a
.l363d
	ld b,#00
	ld c,a
	push hl
	ld hl,l38a0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l33c0
.l3658
	ld a,(hl)
	inc hl
.l365a
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
.l3669
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l3820
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l3685
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
.l36a4
	ret
.l36ac equ $ + 7
.l36ab equ $ + 6
.l36aa equ $ + 5
.l36a9 equ $ + 4
.l36a7 equ $ + 2
.l36a5
	db #ff,#ff,#ff,#ff,#03,#40,#01,#00
.l36af equ $ + 2
.l36ae equ $ + 1
	db #38,#00,#00
.l36b0
	dw l3533,l3546,l3545,l356a
	dw l3567,l357a,l358b,l35b3
	dw l35cd,l35b3,l35e7,l35f0
	dw l3612,l361a,l3639
.l36ce
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
.l3794 equ $ + 4
.l3790
	db #08,#00,#01,#08,#00,#00,#00,#00
.l379e equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l37af equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #94,#3a,#e3,#39,#00,#ff,#00,#00
.l37be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l37c2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l37cc equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l37dd equ $ + 5
	db #00,#00,#00,#00,#00,#01,#cb,#3b
	db #1f,#3a,#00,#ff,#00,#00,#00,#00
.l37ec equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l37f0
	db #00,#00,#00,#00,#00,#00,#00,#00
.l37fa equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l380b equ $ + 3
	db #00,#00,#00,#01,#57,#3e,#5b,#3a
	db #00,#ff,#00,#00,#00,#00,#00,#00
.l381a equ $ + 2
	db #00,#00,#e0,#39,#1c,#3a,#58,#3a
.l3820
	db #b2,#f1,#84,#e1,#84,#e1,#d2,#ef
	db #c0,#38,#00,#39,#20,#39,#00,#00
	db #c0,#38,#40,#39,#20,#39,#00,#00
	db #60,#39,#a0,#39,#20,#39,#40,#00
	db #b2,#f1,#92,#28,#92,#29,#40,#37
	db #b2,#f1,#84,#e1,#84,#e1,#d2,#ef
	db #b2,#f1,#84,#e1,#84,#e1,#d2,#ef
	db #b2,#f1,#84,#e1,#84,#e1,#d2,#ef
	db #b2,#f1,#84,#e1,#84,#e1,#d2,#ef
	db #b2,#f1,#84,#e1,#84,#e1,#d2,#ef
	db #c0,#38,#c0,#39,#20,#39,#00,#00
	db #84,#e1,#84,#e1,#84,#e1,#d2,#ef
	db #84,#e1,#84,#e1,#84,#e1,#d2,#ef
	db #84,#e1,#84,#e1,#84,#e1,#d2,#ef
	db #84,#e1,#b2,#f1,#b2,#f1,#00,#00
	db #b2,#f1,#b2,#f1,#b2,#f1,#00,#00
.l38a0
	db #b2,#f1,#b2,#f1,#b2,#f1,#b2,#f1
	db #b2,#f1,#b2,#f1,#b2,#f1,#b2,#f1
	db #b2,#f1,#b2,#f1,#b2,#f1,#b2,#f1
	db #b2,#f1,#b2,#f1,#b2,#f1,#b2,#f1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0d,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #08,#08,#07,#06,#05,#03,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#0a,#09,#09
	db #09,#09,#08,#08,#08,#07,#07,#07
	db #06,#05,#03,#01,#00,#00,#00,#00
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
	db #0c,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#0a,#09,#09
	db #09,#09,#08,#08,#08,#07,#07,#07
	db #06,#06,#06,#05,#05,#05,#04,#04
	db #00,#94,#3a,#00,#a7,#3a,#00,#a7
	db #3a,#00,#c6,#3a,#00,#eb,#3a,#00
	db #a7,#3a,#00,#13,#3b,#00,#c6,#3a
	db #00,#41,#3b,#00,#84,#3b,#00,#a6
	db #3b,#00,#c6,#3a,#00,#eb,#3a,#00
	db #a7,#3a,#00,#13,#3b,#00,#c6,#3a
	db #00,#41,#3b,#00,#84,#3b,#00,#a6
	db #3b,#80,#e0,#39,#00,#cb,#3b,#00
	db #e3,#3b,#00,#e3,#3b,#00,#e6,#3b
	db #00,#22,#3c,#00,#64,#3c,#00,#b3
	db #3c,#00,#f6,#3c,#00,#47,#3d,#00
	db #9a,#3d,#00,#f9,#3d,#00,#e6,#3b
	db #00,#22,#3c,#00,#64,#3c,#00,#b3
	db #3c,#00,#f6,#3c,#00,#47,#3d,#00
	db #9a,#3d,#00,#f9,#3d,#80,#1c,#3a
	db #00,#57,#3e,#00,#75,#3e,#00,#75
	db #3e,#00,#8b,#3e,#00,#b0,#3e,#00
	db #de,#3e,#00,#fd,#3e,#00,#2b,#3f
	db #00,#5f,#3f,#00,#8a,#3f,#00,#b8
	db #3f,#00,#8b,#3e,#00,#b0,#3e,#00
	db #de,#3e,#00,#fd,#3e,#00,#2b,#3f
	db #00,#5f,#3f,#00,#8a,#3f,#00,#b8
	db #3f,#80,#58,#3a,#40,#20,#02,#42
	db #20,#0a,#3e,#20,#06,#42,#20,#06
	db #3b,#20,#08,#47,#20,#20,#ff,#3a
	db #30,#04,#3b,#30,#08,#3b,#30,#08
	db #3b,#30,#08,#3b,#30,#04,#3a,#30
	db #04,#3b,#30,#08,#3b,#30,#08,#3b
	db #30,#08,#3b,#30,#04,#ff,#3a,#30
	db #04,#3b,#30,#08,#3b,#30,#08,#3b
	db #30,#08,#3b,#30,#04,#3a,#30,#04
	db #3b,#30,#04,#40,#20,#04,#3b,#30
	db #08,#3b,#30,#04,#3f,#20,#04,#3b
	db #30,#04,#ff,#3d,#30,#04,#3e,#30
	db #08,#3e,#30,#04,#45,#20,#02,#44
	db #20,#02,#3e,#30,#08,#3e,#30,#04
	db #3f,#30,#04,#40,#30,#06,#45,#20
	db #02,#40,#30,#08,#40,#30,#08,#40
	db #30,#04,#ff,#3d,#30,#04,#3e,#30
	db #08,#3e,#30,#04,#42,#20,#02,#40
	db #20,#02,#3e,#30,#08,#3e,#30,#04
	db #3f,#30,#04,#40,#30,#04,#3b,#20
	db #04,#40,#30,#04,#39,#20,#04,#40
	db #30,#04,#34,#20,#04,#40,#30,#04
	db #ff,#3d,#30,#04,#3e,#30,#08,#3e
	db #30,#04,#45,#20,#02,#44,#20,#02
	db #3e,#30,#04,#44,#20,#04,#3e,#30
	db #02,#47,#20,#02,#3f,#30,#04,#40
	db #30,#02,#49,#20,#02,#47,#20,#02
	db #45,#20,#02,#40,#30,#02,#41,#20
	db #02,#4a,#20,#04,#40,#20,#02,#4a
	db #20,#02,#49,#20,#04,#40,#30,#02
	db #45,#20,#02,#ff,#3a,#30,#04,#3b
	db #30,#08,#3b,#30,#08,#3b,#30,#08
	db #3b,#30,#04,#4a,#20,#04,#3b,#30
	db #08,#3b,#30,#08,#3b,#30,#04,#47
	db #20,#04,#3b,#30,#04,#ff,#3d,#30
	db #04,#3e,#30,#08,#3e,#30,#04,#42
	db #20,#04,#3e,#30,#08,#3e,#30,#04
	db #3f,#30,#04,#40,#30,#08,#40,#30
	db #08,#40,#20,#04,#35,#20,#04,#40
	db #30,#04,#ff,#c7,#20,#41,#20,#07
	db #40,#20,#06,#42,#20,#02,#40,#20
	db #04,#3e,#20,#08,#39,#20,#04,#3f
	db #20,#20,#ff,#00,#40,#ff,#c1,#20
	db #42,#a0,#07,#40,#a0,#04,#3b,#20
	db #02,#3f,#20,#04,#3b,#a0,#04,#3b
	db #a0,#04,#3b,#20,#02,#45,#20,#02
	db #47,#a0,#04,#45,#20,#02,#42,#a0
	db #06,#41,#20,#02,#42,#20,#02,#40
	db #a0,#04,#3f,#20,#02,#3b,#a0,#06
	db #42,#20,#02,#47,#20,#02,#45,#a0
	db #02,#ff,#00,#04,#45,#20,#02,#42
	db #a0,#04,#39,#20,#02,#45,#a0,#04
	db #42,#20,#02,#40,#a0,#06,#40,#a0
	db #04,#42,#20,#02,#44,#a0,#06,#4a
	db #a0,#04,#47,#a0,#04,#42,#20,#02
	db #41,#20,#02,#40,#20,#02,#3e,#20
	db #02,#3b,#20,#02,#39,#20,#02,#36
	db #20,#02,#39,#20,#02,#3b,#20,#02
	db #3e,#20,#02,#ff,#bd,#20,#be,#20
	db #3f,#20,#02,#3b,#20,#02,#40,#a0
	db #04,#3b,#20,#02,#42,#a0,#04,#3b
	db #a0,#02,#45,#20,#04,#3b,#20,#02
	db #44,#20,#02,#3b,#20,#02,#40,#20
	db #02,#3b,#20,#02,#c0,#20,#42,#a0
	db #03,#3b,#20,#02,#40,#a0,#04,#3b
	db #20,#02,#3f,#a0,#04,#3b,#20,#02
	db #40,#a0,#04,#3b,#20,#02,#42,#20
	db #02,#3b,#20,#02,#47,#20,#02,#3b
	db #20,#02,#ff,#45,#a0,#04,#3e,#20
	db #02,#44,#a0,#04,#3e,#20,#02,#45
	db #a0,#04,#45,#20,#02,#44,#a0,#06
	db #44,#a0,#04,#45,#a0,#04,#47,#a0
	db #04,#40,#20,#02,#45,#a0,#04,#40
	db #20,#02,#47,#a0,#04,#47,#20,#02
	db #45,#20,#02,#42,#20,#02,#41,#20
	db #02,#40,#20,#02,#3e,#20,#02,#3b
	db #20,#02,#39,#20,#02,#ff,#c1,#20
	db #42,#a0,#03,#47,#20,#02,#42,#20
	db #02,#40,#a0,#04,#3b,#20,#02,#47
	db #a0,#04,#3b,#20,#02,#47,#20,#02
	db #3b,#a0,#04,#3b,#20,#02,#45,#20
	db #02,#47,#20,#02,#4a,#20,#02,#45
	db #20,#02,#42,#a0,#04,#4a,#20,#02
	db #41,#20,#02,#49,#20,#02,#40,#20
	db #02,#47,#20,#02,#3f,#20,#02,#3b
	db #a0,#04,#42,#20,#02,#42,#20,#02
	db #41,#20,#02,#45,#20,#02,#ff,#45
	db #a0,#04,#39,#20,#02,#42,#20,#02
	db #3e,#20,#02,#39,#20,#02,#45,#a0
	db #04,#c2,#20,#c1,#20,#40,#a0,#06
	db #40,#20,#02,#41,#20,#02,#42,#20
	db #02,#44,#20,#02,#47,#a0,#04,#4a
	db #20,#02,#47,#20,#02,#47,#20,#02
	db #40,#20,#02,#42,#20,#02,#47,#20
	db #02,#40,#20,#02,#4a,#20,#02,#3b
	db #20,#02,#42,#20,#02,#36,#20,#02
	db #49,#20,#02,#3b,#20,#02,#45,#20
	db #02,#ff,#bd,#20,#be,#20,#3f,#20
	db #02,#47,#20,#02,#40,#20,#02,#45
	db #20,#02,#3b,#20,#02,#42,#20,#02
	db #45,#20,#02,#3b,#20,#02,#45,#20
	db #02,#47,#20,#02,#3b,#20,#02,#44
	db #20,#02,#3b,#20,#02,#40,#20,#02
	db #3b,#20,#02,#42,#a0,#04,#49,#20
	db #02,#40,#20,#02,#4a,#20,#02,#3b
	db #20,#02,#3f,#20,#02,#4a,#20,#02
	db #3b,#20,#02,#40,#20,#02,#49,#20
	db #02,#3b,#20,#02,#42,#20,#02,#3b
	db #20,#02,#47,#20,#02,#3b,#20,#02
	db #ff,#45,#20,#02,#46,#20,#02,#47
	db #20,#02,#45,#20,#02,#46,#20,#02
	db #47,#20,#02,#45,#20,#02,#46,#20
	db #02,#47,#20,#02,#45,#20,#02,#46
	db #20,#02,#47,#20,#02,#44,#20,#02
	db #47,#20,#02,#45,#20,#02,#47,#20
	db #02,#47,#20,#02,#3e,#20,#02,#3b
	db #20,#02,#45,#20,#02,#34,#20,#02
	db #40,#20,#02,#47,#a0,#04,#47,#20
	db #02,#45,#20,#02,#42,#20,#02,#41
	db #20,#02,#40,#20,#02,#3e,#20,#02
	db #3b,#20,#02,#39,#20,#02,#ff,#00
	db #08,#45,#20,#0a,#42,#20,#02,#45
	db #20,#04,#47,#20,#04,#45,#20,#04
	db #36,#20,#14,#32,#10,#04,#34,#10
	db #04,#36,#10,#04,#ff,#37,#10,#10
	db #32,#10,#10,#37,#10,#0c,#32,#10
	db #08,#32,#10,#04,#34,#10,#04,#36
	db #10,#04,#ff,#37,#10,#0c,#37,#10
	db #04,#32,#10,#04,#3f,#20,#04,#42
	db #20,#04,#32,#10,#04,#37,#10,#08
	db #37,#10,#04,#32,#10,#08,#32,#10
	db #04,#37,#10,#04,#39,#10,#04,#ff
	db #3a,#10,#08,#3e,#20,#04,#3a,#10
	db #04,#35,#10,#08,#44,#20,#04,#35
	db #10,#02,#47,#20,#02,#3c,#10,#02
	db #47,#20,#04,#49,#20,#02,#3c,#10
	db #04,#37,#10,#08,#32,#10,#04,#35
	db #10,#04,#36,#10,#04,#ff,#37,#10
	db #0c,#37,#10,#04,#32,#10,#0c,#32
	db #10,#04,#37,#10,#08,#37,#10,#04
	db #32,#10,#08,#32,#10,#04,#37,#10
	db #04,#39,#10,#04,#ff,#3a,#10,#04
	db #42,#20,#02,#40,#20,#04,#3b,#20
	db #02,#3a,#10,#04,#35,#10,#06,#3b
	db #20,#06,#35,#10,#04,#3c,#10,#04
	db #3e,#20,#04,#3c,#10,#04,#37,#10
	db #08,#32,#10,#04,#35,#10,#04,#36
	db #10,#04,#ff,#37,#10,#04,#47,#20
	db #04,#47,#20,#04,#37,#10,#02,#3f
	db #20,#02,#32,#10,#02,#42,#20,#02
	db #3f,#20,#04,#42,#20,#04,#32,#10
	db #04,#37,#10,#04,#49,#20,#04,#37
	db #10,#04,#32,#10,#08,#32,#10,#04
	db #37,#10,#04,#39,#10,#04,#ff,#3a
	db #10,#04,#45,#20,#02,#45,#20,#06
	db #3a,#10,#04,#35,#10,#0c,#35,#10
	db #04,#3c,#10,#04,#47,#20,#04,#3c
	db #10,#04,#37,#10,#08,#32,#10,#04
	db #35,#10,#02,#39,#20,#02,#36,#10
	db #04,#ff,#37,#10,#04,#3b,#20,#08
	db #37,#10,#04,#32,#10,#02,#45,#20
	db #06,#45,#20,#04,#32,#10,#04,#37
	db #10,#04,#3b,#20,#04,#37,#10,#04
	db #32,#10,#06,#4a,#20,#02,#32,#10
	db #04,#37,#10,#04,#39,#10,#04,#ff
	db #3a,#10,#04,#42,#20,#02,#40,#20
	db #04,#3b,#20,#02,#3a,#10,#04,#35
	db #10,#02,#40,#20,#04,#3b,#20,#02
	db #4a,#20,#04,#35,#10,#04,#3c,#10
	db #04,#3e,#20,#02,#40,#20,#02,#3c
	db #10,#04,#37,#10,#04,#3b,#20,#02
	db #3a,#20,#02,#32,#10,#02,#36,#20
	db #02,#35,#10,#04,#36,#10,#04,#ff
;
.music_info
	db "Greek Meeting 2 - Part 8 (1995)(Chaos)(Catloc)",0
	db "ST-128 Module",0

	read "music_end.asm"
