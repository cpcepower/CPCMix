; Music of Soundtrakker CPC Volume 3 (1995)(Power System)(Epsilon)(ST-128 Module)
; Ripped by Megachur the 02/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SOUNCPV3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #3000

	read "music_header.asm"

	jp l3009
	jp l309d
	jp l3081
;
.init_music
.l3009
;
	xor a
	ld hl,l35b4
	call l307a
	ld hl,l35e2
	call l307a
	ld hl,l3610
	call l307a
	ld ix,l35b0
	ld iy,l363a
	ld de,#002e
	ld b,#03
.l3029
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
	djnz l3029
	ld hl,l34c9
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
	ld (l34c5),hl
	ld (l34c7),hl
	ld a,#0c
	ld c,d
	call l34a5
	ld a,#0d
	ld c,d
	jp l34a5
.l307a
	ld b,#2a
.l307c
	ld (hl),a
	inc hl
	djnz l307c
	ret
;
.stop_music
.l3081
;
	ld a,#07
	ld c,#3f
	call l34a5
	ld a,#08
	ld c,#00
	call l34a5
	ld a,#09
	ld c,#00
	call l34a5
	ld a,#0a
	ld c,#00
	jp l34a5
;
.play_music
.l309d
;
	ld hl,l34cb
	dec (hl)
	ld ix,l35b0
	ld bc,l35be
	call l313f
	ld ix,l35de
	ld bc,l35ec
	call l313f
	ld ix,l360c
	ld bc,l361a
	call l313f
	ld hl,l34c4
	ld de,l34cb
	ld b,#06
	call l311c
	ld b,#07
	call l311c
	ld b,#0b
	call l311c
	ld b,#0d
	call l311c
	ld de,l34cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l35cf
	call l30f5
	ld hl,l35fd
	call l30f5
	ld hl,l362b
.l30f5
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
	jr nz,l310a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l310a
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
.l311c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l34a5
.l3127
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l34a5
.l313f
	ld a,(l34cb)
	or a
	jp nz,l31f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l31f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l3127
	or a
	jp z,l31ec
	ld r,a
	and #7f
	cp #10
	jr c,l31c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l333f
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
	jr z,l31a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l31a0
	rrca
	ld c,a
	ld hl,l3640
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
	jr z,l31bf
	ld (ix+#1e),b
.l31bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l31e0
.l31c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l34d0
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
.l31e0
	ld a,d
	or a
	jr nz,l31ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l31ee
.l31ec
	ld a,(hl)
	inc hl
.l31ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l31f7
	ld a,(ix+#17)
	or a
	jr nz,l320d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l320d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l3223
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l3223
	ld a,(ix+#0d)
	or a
	jr z,l3231
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l324f
.l3231
	ld a,(ix+#1a)
	or a
	jp z,l3256
	ld c,a
	cp #03
	jr nz,l323e
	xor a
.l323e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l324f
	ld a,(ix+#18)
	dec c
	jr z,l324f
	ld a,(ix+#19)
.l324f
	add (ix+#07)
	ld b,d
	call l333f
.l3256
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l327e
	dec (ix+#1b)
	jr nz,l327e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l32b6
.l327e
	ld a,(ix+#29)
	or a
	jr z,l32b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l32ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l32a4
	ld (ix+#29),#ff
	jr l32ad
.l32a4
	cp (ix+#2b)
	jr nz,l32ad
	ld (ix+#29),#01
.l32ad
	ld b,d
	or a
	jp p,l32b3
	dec b
.l32b3
	ld c,a
	jr l32c1
.l32b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l32c1
	pop hl
	bit 7,(ix+#14)
	jr z,l32ca
	ld h,d
	ld l,d
.l32ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l34a5
	ld c,h
	ld a,(ix+#02)
	call l34a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l331d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l330c
	dec (ix+#09)
	jr nz,l330c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l3304
	xor a
	jr l3309
.l3304
	cp #10
	jr nz,l3309
	dec a
.l3309
	ld (ix+#1e),a
.l330c
	ld a,b
	sub (ix+#1e)
	jr nc,l3313
	xor a
.l3313
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l34a5
.l331d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l34cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l333b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l333b
	ld (l34cc),hl
	ret
.l333f
	ld hl,l34ee
	cp #61
	jr nc,l3349
	add a
	ld c,a
	add hl,bc
.l3349
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l3353
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l3478
	ld (ix+#1e),a
	jp l31e0
.l3365
	dec b
.l3366
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l3371
	neg
.l3371
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
	jp l31e0
.l3387
	dec b
	jr l338b
.l338a
	inc b
.l338b
	call l3478
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l31e0
.l339a
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
	jp l345d
.l33ab
	ld a,(hl)
	inc hl
	or a
	jr z,l33cd
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
.l33cd
	ld (ix+#29),a
	jp l31e0
.l33d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l34cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l34ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l31e0
.l33ed
	ld a,(hl)
	or a
	jr z,l33fe
	call l347a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l31e0
.l33fe
	ld hl,#0101
	ld (l34ca),hl
	jp l31e0
.l3407
	call l3478
	ld (ix+#1e),a
	jp l31e0
.l3410
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l3489
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l3489
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l31e0
.l3432
	ld a,(hl)
	inc hl
	ld (l34c9),a
	jp l31e0
.l343a
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
	jp l31e0
.l3459
	call l3478
	add a
.l345d
	ld b,#00
	ld c,a
	push hl
	ld hl,l36c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l31e0
.l3478
	ld a,(hl)
	inc hl
.l347a
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
.l3489
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l3640
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	ld d,e
	ld d,h
	dec l
	ld sp,l3832
	jr nz,l34ed
	ld l,a
	ld h,h
	ld (hl),l
	ld l,h
	ld h,l
.l34a5
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
.l34c4
	ret
.l34cc equ $ + 7
.l34cb equ $ + 6
.l34ca equ $ + 5
.l34c9 equ $ + 4
.l34c7 equ $ + 2
.l34c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l34cf equ $ + 2
.l34ce equ $ + 1
	db #38,#00,#00
.l34d0
	dw l3353,l3366,l3365,l338a
	dw l3387,l339a,l33ab,l33d3
	dw l33ed,l33d3,l3407,l3410
.l34ed equ $ + 5
	dw l3432,l343a,l3459
.l34ee
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
.l35b4 equ $ + 4
.l35b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l35be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l35cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l35de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l35e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l35ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l35fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l360c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l3610
	db #00,#00,#00,#00,#00,#00,#00,#00
.l361a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l362b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l363a equ $ + 2
	db #00,#00,#60,#38,#90,#38,#c0,#38
.l3640
	db #e0,#36,#20,#37,#40,#37,#1a,#06
	db #60,#37,#a0,#37,#c0,#37,#80,#00
	db #d1,#ef,#da,#f7,#d2,#ef,#10,#10
	db #d2,#ef,#d1,#ef,#d1,#ef,#ff,#ff
	db #d1,#ef,#d2,#ef,#d2,#ef,#00,#00
	db #e0,#37,#20,#38,#40,#38,#c0,#00
	db #d1,#ef,#d2,#ef,#d2,#ef,#00,#00
	db #d2,#ef,#d1,#ef,#d1,#ef,#ff,#ff
	db #d1,#ef,#d2,#ef,#d2,#ef,#00,#00
	db #d2,#ef,#d1,#ef,#d1,#ef,#ff,#ff
	db #d1,#ef,#d2,#ef,#d2,#ef,#00,#00
	db #d2,#ef,#d1,#ef,#d1,#ef,#ff,#ff
	db #c1,#df,#d2,#ef,#d2,#ef,#00,#00
	db #d2,#ef,#d1,#ef,#d1,#ef,#ff,#ff
	db #d1,#ef,#d2,#ef,#d2,#ef,#00,#00
	db #d2,#ef,#d1,#ef,#d1,#ef,#ff,#ff
.l36c0
	db #d1,#ef,#d2,#ef,#d2,#ef,#d2,#ef
	db #d2,#ef,#d1,#ef,#d1,#ef,#d1,#ef
	db #c1,#df,#d2,#ef,#d2,#ef,#d2,#ef
	db #d2,#ef,#d1,#ef,#d1,#ef,#d1,#ef
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#ff,#ff,#ff,#ff
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #0f,#0f,#0c,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#65,#01,#3e,#01,#00,#00
	db #c3,#04,#65,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0d,#0c,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3832 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#06,#07,#07,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#f0,#38,#00,#f0,#38,#00,#16
	db #39,#00,#16,#39,#00,#c3,#39,#00
	db #c3,#39,#00,#62,#39,#00,#62,#39
	db #00,#18,#3a,#00,#79,#3a,#00,#18
	db #3a,#00,#79,#3a,#00,#da,#3a,#00
	db #3b,#3b,#00,#3b,#3b,#80,#60,#38
	db #00,#bc,#3b,#00,#bc,#3b,#00,#bc
	db #3b,#00,#bc,#3b,#00,#bc,#3b,#00
	db #bc,#3b,#00,#bc,#3b,#00,#bc,#3b
	db #00,#bc,#3b,#00,#bc,#3b,#00,#bc
	db #3b,#00,#bc,#3b,#00,#bc,#3b,#00
	db #bc,#3b,#00,#bc,#3b,#80,#90,#38
	db #00,#3d,#3c,#00,#3d,#3c,#00,#3d
	db #3c,#00,#3d,#3c,#00,#3d,#3c,#00
	db #3d,#3c,#00,#3d,#3c,#00,#3d,#3c
	db #00,#3d,#3c,#00,#3d,#3c,#00,#3d
	db #3c,#00,#3d,#3c,#00,#3d,#3c,#00
	db #3d,#3c,#00,#3d,#3c,#80,#c0,#38
	db #3d,#07,#11,#10,#3d,#00,#02,#3f
	db #00,#02,#40,#00,#02,#42,#00,#02
	db #44,#00,#08,#44,#00,#02,#42,#00
	db #02,#40,#00,#0c,#40,#00,#02,#3f
	db #00,#02,#3b,#00,#0c,#ff,#49,#00
	db #02,#4e,#00,#02,#49,#00,#02,#4e
	db #00,#02,#49,#00,#02,#4c,#00,#02
	db #49,#00,#02,#47,#00,#02,#44,#00
	db #02,#49,#00,#02,#44,#00,#02,#49
	db #00,#02,#44,#00,#08,#40,#00,#02
	db #47,#00,#02,#40,#00,#02,#47,#00
	db #02,#40,#00,#02,#42,#00,#02,#40
	db #00,#02,#3b,#00,#02,#40,#00,#02
	db #3b,#00,#02,#38,#00,#02,#3b,#00
	db #0a,#ff,#49,#00,#02,#49,#00,#02
	db #50,#00,#02,#49,#00,#02,#44,#00
	db #02,#47,#00,#02,#49,#00,#02,#4b
	db #00,#02,#44,#00,#02,#44,#00,#02
	db #4b,#00,#02,#44,#00,#02,#40,#00
	db #02,#42,#00,#02,#44,#00,#02,#45
	db #00,#02,#4c,#00,#02,#4c,#00,#02
	db #53,#00,#02,#4c,#00,#02,#49,#00
	db #02,#4b,#00,#02,#4c,#00,#02,#4e
	db #00,#02,#53,#00,#02,#53,#00,#02
	db #5a,#00,#02,#53,#00,#02,#4e,#00
	db #02,#51,#00,#02,#53,#00,#02,#55
	db #00,#02,#ff,#49,#00,#02,#49,#00
	db #02,#50,#00,#02,#49,#00,#04,#47
	db #00,#02,#49,#00,#02,#4b,#00,#02
	db #44,#00,#02,#44,#00,#02,#4b,#00
	db #02,#44,#00,#04,#42,#00,#02,#44
	db #00,#02,#45,#00,#02,#4c,#00,#02
	db #4c,#00,#02,#53,#00,#02,#4c,#00
	db #04,#4b,#00,#02,#4c,#00,#02,#4e
	db #00,#02,#53,#00,#02,#53,#00,#02
	db #5a,#00,#02,#53,#00,#04,#51,#00
	db #02,#53,#00,#02,#55,#00,#02,#ff
	db #49,#00,#02,#49,#00,#02,#50,#00
	db #02,#49,#00,#02,#4e,#00,#02,#49
	db #00,#02,#50,#00,#02,#49,#00,#02
	db #44,#00,#02,#44,#00,#02,#4b,#00
	db #02,#44,#00,#02,#49,#00,#02,#44
	db #00,#02,#4b,#00,#02,#44,#00,#02
	db #40,#00,#02,#40,#00,#02,#47,#00
	db #02,#40,#00,#02,#45,#00,#02,#40
	db #00,#02,#47,#00,#02,#40,#00,#02
	db #47,#00,#02,#47,#00,#02,#4e,#00
	db #02,#47,#00,#02,#4c,#00,#02,#47
	db #00,#02,#4e,#00,#02,#47,#00,#02
	db #ff,#3d,#00,#02,#3d,#00,#02,#44
	db #00,#02,#3d,#00,#02,#42,#00,#02
	db #3d,#00,#02,#44,#00,#02,#3d,#00
	db #02,#38,#00,#02,#38,#00,#02,#3f
	db #00,#02,#38,#00,#02,#3d,#00,#02
	db #38,#00,#02,#3f,#00,#02,#38,#00
	db #02,#34,#00,#02,#34,#00,#02,#3b
	db #00,#02,#34,#00,#02,#39,#00,#02
	db #34,#00,#02,#3b,#00,#02,#34,#00
	db #02,#3b,#00,#02,#3b,#00,#02,#42
	db #00,#02,#3b,#00,#02,#40,#00,#02
	db #3b,#00,#02,#42,#00,#02,#3b,#00
	db #02,#ff,#3d,#00,#02,#3d,#00,#02
	db #44,#00,#02,#3d,#00,#02,#42,#00
	db #02,#3d,#00,#02,#44,#00,#02,#3d
	db #00,#02,#44,#00,#02,#44,#00,#02
	db #4b,#00,#02,#44,#00,#02,#49,#00
	db #02,#44,#00,#02,#4b,#00,#02,#44
	db #00,#02,#4c,#00,#02,#4c,#00,#02
	db #53,#00,#02,#4c,#00,#02,#51,#00
	db #02,#4c,#00,#02,#53,#00,#02,#4c
	db #00,#02,#53,#00,#02,#53,#00,#02
	db #5a,#00,#02,#53,#00,#02,#58,#00
	db #02,#53,#00,#02,#5a,#00,#02,#53
	db #00,#02,#ff,#d5,#00,#fe,#01,#d5
	db #00,#fe,#01,#dc,#00,#fe,#01,#d5
	db #00,#fe,#01,#da,#00,#fe,#01,#d5
	db #00,#fe,#01,#dc,#00,#fe,#01,#d5
	db #00,#fe,#01,#d0,#00,#fe,#01,#d0
	db #00,#fe,#01,#d7,#00,#fe,#01,#d0
	db #00,#fe,#01,#d5,#00,#fe,#01,#d0
	db #00,#fe,#01,#d7,#00,#fe,#01,#d0
	db #00,#fe,#01,#cc,#00,#fe,#01,#cc
	db #00,#fe,#01,#d3,#00,#fe,#01,#cc
	db #00,#fe,#01,#d1,#00,#fe,#01,#cc
	db #00,#fe,#01,#d3,#00,#fe,#01,#cc
	db #00,#fe,#01,#d3,#00,#fe,#01,#d3
	db #00,#fe,#01,#da,#00,#fe,#01,#d3
	db #00,#fe,#01,#d8,#00,#fe,#01,#d3
	db #00,#fe,#01,#da,#00,#fe,#01,#d3
	db #00,#fe,#01,#ff,#31,#08,#12,#02
	db #31,#08,#12,#02,#3d,#08,#12,#02
	db #31,#08,#12,#02,#3d,#08,#12,#02
	db #31,#08,#12,#02,#3d,#08,#12,#02
	db #31,#08,#12,#02,#2c,#08,#18,#02
	db #2c,#08,#18,#02,#38,#08,#18,#02
	db #2c,#08,#18,#02,#38,#08,#18,#02
	db #2c,#08,#18,#02,#38,#08,#18,#02
	db #2c,#08,#18,#02,#28,#08,#1e,#02
	db #40,#08,#1e,#02,#28,#08,#1e,#02
	db #40,#08,#1e,#02,#28,#08,#1e,#02
	db #40,#08,#1e,#02,#28,#08,#1e,#02
	db #40,#08,#1e,#02,#2f,#08,#14,#02
	db #2f,#08,#14,#02,#3b,#08,#14,#02
	db #2f,#08,#14,#02,#3b,#08,#14,#02
	db #2f,#08,#14,#02,#3b,#08,#14,#02
	db #2f,#08,#14,#02,#ff,#33,#10,#08
	db #33,#50,#08,#33,#10,#08,#33,#50
	db #08,#33,#10,#08,#33,#50,#04,#33
	db #50,#04,#33,#50,#04,#33,#50,#02
	db #33,#50,#02,#33,#50,#02,#33,#50
	db #02,#b3,#50,#b3,#50,#b3,#50,#b3
	db #50,#ff
;
.music_info
	db "Soundtrakker CPC Volume 3 (1995)(Power System)(Epsilon)",0
	db "ST-128 Module",0

	read "music_end.asm"
