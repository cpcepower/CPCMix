; Music of Bobo Level 5 (1988)(Infogrames)(Charles Callet)(Music Pro)
; Ripped by Megachur the 01/01/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOBOLEV5.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #2edc

	read "music_header.asm"

	xor a
	ld (l3481),a
	ld (l3485),a
	ld hl,l370d
	ld de,(l3455)
	ld (hl),d
	inc hl
	ld (hl),e
;
.init_music
;
	xor a
	ld (l3481),a
	ld (l3485),a
	ld hl,l348c
	ld (hl),#00
	ld de,l348d
	ld bc,#0128
	ldir
	ld a,(l36b6)
	ld (l35b5),a
	ld bc,l36b5
	ld hl,(l36b7)
	add hl,bc
	ld (l35b8),hl
	ld hl,(l36b9)
	add hl,bc
	ld (l35ba),hl
	ld hl,(l36bb)
	add hl,bc
	ld (l3491),hl
	ld hl,(l36bd)
	add hl,bc
	ld (l34cc),hl
	ld hl,(l36bf)
	add hl,bc
	ld (l3507),hl
	ld hl,l36c1
	ld (l35b6),hl
	ld a,#0f
	ld (l35bd),a
	ld hl,l3486
	ld de,l348c
	ld bc,#0005
	ldir
	ld hl,l3486
	ld de,l34c7
	ld bc,#0005
	ldir
	ld hl,l3486
	ld de,l3502
	ld bc,#0005
	ldir
	ld a,#ff
	ld (l3481),a
	ld c,#38
	ld a,#07
	jp l3693
	ld a,#0f
.l2f67
	push af
	ld a,#0a
	ld (#11ce),a
.l2f6d
	ld a,(#11ce)
	cp #14
	jr nz,l2f6d
	pop af
	dec a
	ld (l35bd),a
	or a
	jr nz,l2f67
	ret
;
.play_music
;
	ld a,(l3481)
	or a
	ret z
	xor a
	ld (l3481),a
	ld a,#08
	ld (l35c0),a
	cpl
	ld (l35bf),a
	ld a,(l35bd)
	ld e,a
	ld b,#03
	ld hl,l3521
.l2f98
	ld a,(hl)
	ld c,a
	ld a,c
	cp e
	jp c,l2fa0
	ld a,e
.l2fa0
	ld c,a
	ld a,b
	add #07
	push de
	call l3693
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l2f98
	ld hl,l35b5
	dec (hl)
	ld ix,l348c
	xor a
.l2fba
	ld (l35bc),a
	ld a,(ix+#07)
	or a
	jp nz,l3271
.l2fc4
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l2fce
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jp nz,l3029
	ld l,(ix+#01)
	ld h,(ix+#02)
.l2fe0
	ld a,(hl)
	cp #ff
	jp nz,l300a
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l3485)
	or a
	jp z,l2fe0
	push hl
	push bc
	ld a,(l3482)
	ld (l370d),a
	xor a
	ld (l3482),a
	pop bc
	pop hl
	jp l2fe0
.l300a
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l35b6)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l36b5
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l2fce
.l3029
	bit 7,a
	jp nz,l3099
	ld hl,l35c7
	or a
	jp z,l3038
	add (ix+#20)
.l3038
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld e,(hl)
	ld (ix+#36),e
	ld (ix+#38),e
	inc hl
	ld e,(hl)
	ld (ix+#37),e
	ld (ix+#39),e
	ld (ix+#0a),#00
	ld (ix+#21),#00
	ld (ix+#1f),#00
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ex de,hl
	ld a,(l35bc)
	inc a
	ld hl,l3529
	ld bc,#0014
.l306a
	add hl,bc
	dec a
	jp nz,l306a
	call l33e7
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l35bc)
	inc a
	ld hl,l3565
	ld bc,#0014
.l3084
	add hl,bc
	dec a
	jp nz,l3084
	call l33e7
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l325d
.l3099
	bit 6,a
	jp nz,l30ec
	bit 5,a
	jp z,l30d9
	push af
	xor a
	ld (l35c1),a
	pop af
.l30a9
	and #1f
	ld b,a
	jp z,l30c1
	ld a,(l35be)
	push hl
	ld hl,l35bf
	and (hl)
	pop hl
	ld c,a
	ld a,#07
	call l3693
	jp l30d0
.l30c1
	ld a,(l35be)
	push hl
	ld hl,l35c0
	or (hl)
	pop hl
	ld c,a
	ld a,#07
	call l3693
.l30d0
	ld c,b
	ld a,#06
	call l3693
	jp l325d
.l30d9
	and #1f
	ld hl,l3687
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l325d
.l30ec
	bit 5,a
	jp nz,l315f
	and #1f
	add a
	add a
	add a
	ld hl,(l35b8)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l3108
	ld a,(de)
	bit 7,a
	jp nz,l311b
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l3134
.l311b
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#ff
	bit 7,a
	jp nz,l312e
	ld b,#01
.l312e
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l3134
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jp nz,l3108
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l3529
	ld a,(l35bc)
	inc a
.l3153
	add hl,bc
	dec a
	jp nz,l3153
	ex de,hl
	call l33e7
	jp l325d
.l315f
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l3176
	and #1f
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l3176
	ld a,(hl)
	ld sp,l31d8
	out (#31),a
	add (hl)
	ld sp,#7ee1
	ld (ix+#20),a
	jp l325d
	pop hl
	ld a,(hl)
	ld (l35c1),a
	and #3f
	ld (l35c3),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l35c4),a
	ld a,(l35c1)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l35c1),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l35c1
	or (hl)
	ld (l35c1),a
	ld (l35c2),a
	ld a,(l35c3)
	ld (l35c6),a
	ld hl,l35c4
	ld b,#ff
	cp (hl)
	jp nc,l31c9
	ld b,#01
.l31c9
	ld a,b
	ld (l35c5),a
	ld a,(l35c6)
	jp l30a9
	ld a,#02
	jp l31da
.l31d8
	ld a,#01
.l31da
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jp z,l3252
	add a
	add a
	add a
	ld hl,(l35ba)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l31f9
	ld a,(de)
	bit 7,a
	jp nz,l320e
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	neg
	ld (hl),a
	jp l3227
.l320e
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#01
	bit 7,a
	jp nz,l3221
	ld b,#ff
.l3221
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l3227
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jp nz,l31f9
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l3565
	ld a,(l35bc)
	inc a
.l3246
	add hl,bc
	dec a
	jp nz,l3246
	ex de,hl
	call l33e7
	jp l3257
.l3252
	ld a,#00
	ld (ix+#09),a
.l3257
	ld a,(ix+#09)
	ld (ix+#3a),a
.l325d
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l2fc4
.l3271
	ld a,(l35b5)
	or a
	jp nz,l327b
	dec (ix+#07)
.l327b
	ld a,(ix+#0a)
	cp #04
	jp z,l32c9
	push ix
	pop hl
	ld b,a
	add a
	add a
	add b
	add #0b
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	or a
	jp nz,l32aa
	dec (hl)
	jp nz,l329d
	inc (ix+#0a)
.l329d
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l32c9
.l32aa
	dec (hl)
	jp nz,l32c0
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	dec hl
	jp l32c2
.l32c0
	inc hl
	inc hl
.l32c2
	dec (hl)
	jp nz,l32c9
	inc (ix+#0a)
.l32c9
	ld a,(ix+#09)
	or a
	jp z,l336e
	push ix
	pop hl
	ld a,(ix+#21)
	ld b,a
	add a
	add a
	add b
	add #22
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	or a
	jp nz,l3309
	dec (hl)
	jp nz,l32ed
	inc (ix+#21)
.l32ed
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,l32f9
	inc b
.l32f9
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l3339
.l3309
	dec (hl)
	jp nz,l3330
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	push hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,l331e
	inc b
.l331e
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l3332
.l3330
	inc hl
	inc hl
.l3332
	dec (hl)
	jp nz,l3339
	inc (ix+#21)
.l3339
	ld a,(ix+#21)
	cp #04
	jp nz,l336e
	ld a,(ix+#09)
	cp #02
	jp nz,l3350
	xor a
	ld (ix+#09),a
	jp l336e
.l3350
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l35bc)
	inc a
	ld hl,l3565
	ld bc,#0014
.l3366
	add hl,bc
	dec a
	jp nz,l3366
	call l33e7
.l336e
	ld c,(ix+#36)
	ld a,(l35bc)
	add a
	call l3693
	ld c,(ix+#37)
	inc a
	call l3693
	ld bc,#003b
	add ix,bc
	ld a,(l35c0)
	rlc a
	ld (l35c0),a
	cpl
	ld (l35bf),a
	ld a,(l35bc)
	inc a
	cp #03
	jp nz,l2fba
	ld a,(l35c1)
	or a
	jp z,l33d4
	dec a
	ld (l35c1),a
	or a
	jp nz,l33d4
	ld a,(l35c2)
	ld (l35c1),a
	ld a,(l35c6)
	ld hl,l35c5
	add (hl)
	ld (l35c6),a
	ld c,a
	ld hl,l35c3
	cp (hl)
	jp z,l33c7
	ld hl,l35c4
	cp (hl)
	jp nz,l33cf
.l33c7
	ld a,(l35c5)
	xor #fe
	ld (l35c5),a
.l33cf
	ld a,#06
	call l3693
.l33d4
	ld a,(l35b5)
	or a
	jp nz,l33e1
	ld a,(l36b6)
	ld (l35b5),a
.l33e1
	ld a,#ff
	ld (l3481),a
	ret
.l33e7
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ret
	ld e,a
	ld d,#00
	add hl,de
	add hl,de
	ld a,(hl)
	inc hl
	ld b,(hl)
	ld l,a
	ld h,b
	ret
	push bc
	push hl
	push de
	push af
	xor a
	ld (l3481),a
	ld hl,l370d
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld (l3455),de
	ld (hl),#ff
	dec hl
	ld (hl),#00
	ld hl,l3486
	ld de,l348c
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l3493),a
	ld (l3482),a
	dec a
	ld (l3481),a
	ld (l3485),a
	pop af
	pop de
	pop hl
	pop bc
	ret
.l3455
	nop
	nop
	push hl
	push de
	push bc
	push af
	xor a
	ld (l3481),a
	pop af
	push af
	ld (l3482),a
	ld hl,l3486
	ld de,l348c
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l3493),a
	dec a
	ld (l3481),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.l3486 equ $ + 5
.l3485 equ $ + 4
.l3482 equ $ + 1
.l3481
	db #00,#00,#00,#00,#ff,#00
	dw l348b,l348b
.l3491 equ $ + 6
.l348d equ $ + 2
.l348c equ $ + 1
.l348b
	db #ff,#00,#00,#00,#00,#00,#00,#00
.l3493
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l34c7 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l34cc equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3502 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3507 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3521 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3529 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3565 equ $ + 2
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
.l35ba equ $ + 7
.l35b8 equ $ + 5
.l35b6 equ $ + 3
.l35b5 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l35c2 equ $ + 7
.l35c1 equ $ + 6
.l35c0 equ $ + 5
.l35bf equ $ + 4
.l35be equ $ + 3
.l35bd equ $ + 2
.l35bc equ $ + 1
	db #00,#00,#00,#38,#00,#00,#00,#00
.l35c7 equ $ + 4
.l35c6 equ $ + 3
.l35c5 equ $ + 2
.l35c4 equ $ + 1
.l35c3
	db #00,#00,#00,#00,#00,#00
	dw #0c9c,#0be7,#0b3c,#0a9b
	dw #0a02,#0973,#08eb,#086b
	dw #07f2,#0780,#0714,#06ae
	dw #064e,#05f4,#059e,#054d
	dw #0501,#0469,#0475,#0435
	dw #03f9,#03c0,#038a,#0357
	dw #0327,#02fa,#02cf,#02a7
	dw #0281,#025d,#023b,#021b
	dw #01fc,#01e0,#01c5,#01ac
	dw #0194,#017d,#0168,#0153
	dw #0140,#012e,#011d,#010d
	dw #00fe,#00f0,#00e2,#00d6
	dw #00ca,#00be,#00b4,#00aa
	dw #00a0,#0097,#008f,#0087
	dw #007f,#0078,#0071,#006b
	dw #0065,#005f,#005a,#0055
	dw #0050,#004c,#0047,#0043
	dw #0040,#003c,#0039,#0035
	dw #0032,#0030,#002d,#002a
	dw #0028,#0026,#0024,#0022
	dw #0020,#001e,#001c,#001b
	dw #0019,#0018,#0016,#0015
	dw #0014,#0013,#0012,#0011
	dw #0010,#000f,#000e
.l3687
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
.l3693
	push af
	push bc
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
	pop bc
	pop af
	ret
.l36bb equ $ + 6
.l36b9 equ $ + 4
.l36b7 equ $ + 2
.l36b6 equ $ + 1
.l36b5
	db #00,#03,#4e,#06,#4e,#07,#58,#00
.l36c1 equ $ + 4
.l36bf equ $ + 2
.l36bd
	db #68,#00,#75,#00,#81,#00,#b9,#00
	db #d9,#00,#f9,#00,#25,#01,#45,#01
	db #7d,#01,#b5,#01,#ed,#01,#25,#02
	db #45,#02,#4e,#02,#71,#02,#a9,#02
	db #c9,#02,#e9,#02,#15,#03,#35,#03
	db #6d,#03,#a5,#03,#d2,#03,#db,#03
	db #e8,#03,#f3,#03,#53,#04,#9e,#04
	db #e9,#04,#1e,#05,#51,#05,#9a,#05
	db #cd,#05,#e9,#05,#05,#06,#1b,#06
	db #24,#06,#2d,#06,#3a,#06,#45,#06
.l370d
	db #00,#01,#01,#00,#02,#02,#02,#03
	db #04,#05,#06,#07,#08,#09,#0b,#ff
	db #0c,#0d,#0d,#0c,#0e,#0e,#0e,#0f
	db #10,#11,#12,#13,#ff,#17,#19,#18
	db #1a,#1b,#1a,#1c,#1d,#1e,#1f,#20
	db #ff,#e0,#00,#a0,#c7,#e1,#01,#82
	db #18,#24,#2b,#24,#2b,#24,#17,#23
	db #2b,#23,#2b,#23,#15,#21,#29,#21
	db #29,#21,#14,#20,#29,#20,#29,#20
	db #13,#1f,#28,#1f,#28,#1f,#15,#21
	db #29,#21,#29,#21,#17,#23,#2b,#23
	db #2b,#23,#15,#21,#29,#21,#29,#21
	db #ff,#e0,#00,#a0,#c7,#e1,#01,#82
	db #18,#24,#2b,#24,#2b,#24,#17,#23
	db #2b,#23,#2b,#23,#15,#21,#29,#21
	db #29,#21,#14,#20,#29,#20,#29,#20
	db #ff,#e0,#00,#a0,#c7,#e1,#01,#82
	db #13,#1f,#26,#1f,#26,#1f,#17,#23
	db #2b,#23,#2b,#23,#15,#21,#29,#21
	db #29,#21,#11,#1d,#24,#1d,#24,#1d
	db #ff,#e0,#f7,#a0,#c7,#e1,#01,#82
	db #1f,#29,#30,#29,#30,#29,#2f,#29
	db #2d,#29,#2f,#1f,#21,#2b,#32,#2b
	db #32,#2b,#31,#2b,#2f,#2b,#31,#21
	db #23,#2d,#34,#2d,#34,#2d,#33,#2d
	db #31,#2d,#33,#2d,#ff,#e0,#00,#a0
	db #c7,#e1,#01,#82,#2b,#1f,#23,#1f
	db #26,#1f,#2b,#21,#24,#21,#28,#21
	db #2b,#22,#25,#22,#28,#22,#2b,#1f
	db #21,#23,#24,#26,#ff,#e0,#00,#a0
	db #c3,#e2,#05,#80,#30,#34,#28,#2b
	db #2b,#30,#28,#2b,#30,#34,#28,#2b
	db #2f,#32,#26,#2b,#2b,#2f,#26,#2b
	db #2b,#32,#26,#34,#2d,#35,#29,#2d
	db #2d,#30,#29,#2d,#30,#34,#2b,#30
	db #2f,#32,#26,#2b,#2f,#2b,#2f,#2b
	db #32,#30,#2b,#32,#ff,#e0,#00,#a0
	db #c3,#e2,#05,#80,#30,#34,#28,#2b
	db #2b,#30,#28,#2b,#30,#34,#28,#2b
	db #2f,#32,#26,#2b,#2b,#2f,#26,#2b
	db #2b,#32,#26,#34,#2d,#35,#29,#2d
	db #2d,#30,#29,#2d,#30,#34,#2b,#30
	db #2f,#32,#26,#2b,#2f,#2b,#2f,#32
	db #2f,#33,#2b,#35,#ff,#e0,#03,#a0
	db #c3,#e2,#05,#80,#30,#34,#28,#2b
	db #2b,#30,#28,#2b,#30,#34,#28,#2b
	db #2f,#32,#26,#2b,#2b,#2f,#26,#2b
	db #2b,#32,#26,#34,#2d,#35,#29,#2d
	db #2d,#30,#29,#2d,#30,#34,#2b,#30
	db #2f,#32,#26,#2b,#2f,#2b,#2f,#2b
	db #32,#30,#2b,#32,#ff,#e0,#03,#a0
	db #c3,#e2,#05,#80,#30,#34,#28,#2b
	db #2b,#30,#28,#2b,#30,#34,#28,#2b
	db #2f,#32,#26,#2b,#2b,#2f,#26,#2b
	db #2b,#32,#26,#34,#2d,#35,#29,#2d
	db #2d,#30,#29,#2d,#30,#34,#2b,#30
	db #2f,#32,#26,#2b,#2f,#2b,#2f,#32
	db #2f,#32,#2b,#2f,#ff,#e0,#00,#a0
	db #c3,#e2,#05,#80,#33,#27,#2c,#30
	db #30,#33,#27,#2c,#30,#33,#27,#2c
	db #32,#26,#2b,#30,#30,#32,#26,#2f
	db #2b,#30,#2b,#32,#ff,#e0,#02,#a0
	db #c3,#e2,#05,#80,#32,#ff,#e0,#00
	db #a0,#c3,#e2,#05,#80,#24,#30,#24
	db #30,#24,#30,#c4,#24,#30,#24,#30
	db #24,#30,#24,#30,#24,#30,#81,#24
	db #30,#24,#30,#82,#24,#30,#24,#30
	db #ff,#e0,#0c,#a0,#c2,#e1,#05,#82
	db #18,#24,#2b,#24,#2b,#24,#17,#23
	db #2b,#23,#2b,#23,#15,#21,#29,#21
	db #29,#21,#14,#20,#29,#20,#29,#20
	db #13,#1f,#28,#1f,#28,#1f,#15,#21
	db #29,#21,#29,#21,#17,#23,#2b,#23
	db #2b,#23,#15,#21,#29,#21,#29,#21
	db #ff,#e0,#0c,#a0,#c2,#e1,#05,#82
	db #18,#24,#2b,#24,#2b,#24,#17,#23
	db #2b,#23,#2b,#23,#15,#21,#29,#21
	db #29,#21,#14,#20,#29,#20,#29,#20
	db #ff,#e0,#00,#a0,#c2,#e1,#05,#82
	db #1f,#2b,#32,#2b,#32,#2b,#23,#2f
	db #37,#2f,#37,#2f,#21,#2d,#35,#2d
	db #35,#2d,#1d,#29,#30,#29,#30,#29
	db #ff,#e0,#03,#a0,#c2,#e1,#05,#82
	db #1f,#29,#30,#29,#30,#29,#2f,#29
	db #2d,#29,#2f,#1f,#21,#2b,#32,#2b
	db #32,#2b,#31,#2b,#2f,#2b,#31,#21
	db #23,#2d,#34,#2d,#34,#2d,#33,#2d
	db #31,#2d,#33,#2d,#ff,#e0,#00,#a0
	db #c2,#e1,#05,#82,#37,#2b,#2f,#2b
	db #32,#2b,#37,#2d,#30,#2d,#34,#2d
	db #37,#2e,#31,#2e,#34,#2e,#37,#2b
	db #2d,#2f,#30,#32,#ff,#e0,#f4,#a0
	db #c7,#e1,#01,#82,#34,#2b,#30,#2b
	db #34,#2b,#32,#2b,#2f,#2b,#32,#34
	db #35,#2d,#30,#2d,#34,#30,#32,#2b
	db #2d,#2f,#30,#32,#34,#2b,#30,#2b
	db #34,#2b,#37,#2b,#2f,#2b,#32,#2b
	db #35,#29,#2d,#29,#34,#30,#32,#2b
	db #2f,#32,#33,#35,#ff,#e0,#f7,#a0
	db #c7,#e1,#01,#82,#34,#2b,#30,#2b
	db #34,#2b,#32,#2b,#2f,#2b,#32,#34
	db #35,#2d,#30,#2d,#34,#30,#32,#2b
	db #2d,#2f,#30,#32,#34,#2b,#30,#2b
	db #34,#2b,#37,#2b,#2f,#2b,#32,#2b
	db #35,#29,#2d,#29,#34,#30,#32,#2b
	db #2f,#2b,#32,#2f,#ff,#e0,#00,#a0
	db #c7,#e1,#01,#82,#27,#20,#24,#20
	db #27,#20,#26,#1d,#24,#1d,#26,#22
	db #c1,#e2,#05,#24,#c2,#24,#c3,#24
	db #c4,#24,#c5,#24,#24,#c1,#24,#c2
	db #24,#83,#24,#c3,#24,#84,#24,#c4
	db #24,#ff,#e0,#24,#a0,#de,#e1,#0d
	db #89,#11,#ff,#e0,#00,#a0,#cc,#e1
	db #0a,#84,#43,#cb,#e1,#08,#4b,#ff
	db #e0,#00,#a0,#c1,#e2,#05,#80,#4a
	db #43,#3e,#ff,#e0,#00,#a0,#c1,#e2
	db #05,#82,#3c,#c2,#3c,#c3,#3c,#c4
	db #3c,#3c,#c5,#3c,#c1,#3e,#c2,#3e
	db #c3,#3e,#c4,#3e,#3e,#c5,#3e,#c1
	db #41,#c2,#41,#c3,#41,#c4,#41,#41
	db #c5,#41,#c3,#41,#41,#c4,#41,#41
	db #c5,#41,#41,#c1,#40,#c2,#40,#c3
	db #40,#c4,#40,#c1,#3c,#c2,#3c,#c1
	db #3e,#c2,#3e,#c3,#3e,#c4,#3e,#c1
	db #3c,#c2,#3c,#c1,#40,#c2,#40,#c3
	db #40,#c4,#40,#c1,#3c,#c2,#3c,#c1
	db #3e,#c2,#3e,#c3,#3e,#c4,#3e,#3e
	db #c5,#3e,#ff,#e0,#00,#a0,#c1,#e2
	db #05,#82,#3c,#c2,#3c,#c3,#3c,#c4
	db #3c,#3c,#c5,#3c,#c1,#3e,#c2,#3e
	db #c3,#3e,#c4,#3e,#3e,#c5,#3e,#c1
	db #41,#c2,#41,#c3,#41,#c4,#41,#41
	db #c5,#41,#c1,#40,#c2,#40,#c3,#40
	db #c4,#40,#c1,#3c,#3e,#40,#c2,#40
	db #c1,#3c,#c2,#3c,#c1,#43,#c2,#43
	db #c3,#43,#c4,#43,#43,#c5,#43,#c0
	db #84,#43,#87,#43,#43,#ff,#e0,#00
	db #a0,#c1,#e2,#05,#82,#3c,#c2,#3c
	db #c3,#3c,#c4,#3c,#3c,#c5,#3c,#c1
	db #3e,#c2,#3e,#c3,#3e,#c4,#3e,#3e
	db #c5,#3e,#c1,#41,#c2,#41,#c3,#41
	db #c4,#41,#41,#c5,#41,#c1,#40,#c2
	db #40,#c3,#40,#c4,#40,#c1,#3c,#3e
	db #40,#c2,#40,#c1,#3c,#c2,#3c,#c1
	db #37,#c2,#37,#c3,#37,#c4,#37,#37
	db #c5,#37,#c0,#84,#43,#87,#43,#43
	db #ff,#e0,#00,#a0,#c1,#e2,#05,#82
	db #3e,#c2,#3e,#c3,#3e,#c4,#3e,#c5
	db #3e,#3e,#c1,#37,#c2,#37,#c3,#37
	db #c4,#37,#c5,#37,#37,#c1,#41,#c2
	db #41,#c1,#40,#c2,#40,#c1,#3c,#c2
	db #3c,#c1,#41,#c2,#41,#c1,#40,#c2
	db #40,#c1,#3c,#c2,#3c,#ff,#e0,#00
	db #a0,#c1,#e2,#05,#82,#3e,#c2,#3e
	db #c3,#3e,#c4,#3e,#c5,#3e,#3e,#c1
	db #37,#c2,#37,#c3,#37,#c4,#37,#c5
	db #37,#37,#c1,#3c,#c2,#3c,#c3,#3c
	db #c4,#3c,#c5,#3c,#3c,#c1,#35,#c2
	db #35,#c3,#35,#c4,#35,#c5,#35,#35
	db #ff,#e0,#01,#a0,#c1,#e2,#05,#82
	db #3e,#c2,#3e,#c3,#3e,#c4,#3e,#c1
	db #3d,#3e,#3d,#c2,#3d,#c1,#3b,#c2
	db #3b,#c1,#3d,#c2,#3d,#c1,#40,#c2
	db #40,#c3,#40,#c4,#40,#c1,#3f,#40
	db #3f,#c2,#3f,#c1,#3d,#c2,#3d,#c1
	db #3f,#c2,#3f,#c1,#42,#c2,#42,#c3
	db #42,#c4,#42,#c1,#41,#42,#41,#c2
	db #41,#c1,#3f,#c2,#3f,#c1,#41,#c2
	db #41,#ff,#e0,#00,#a0,#c1,#e2,#05
	db #82,#43,#c2,#43,#c3,#43,#43,#c4
	db #43,#c5,#43,#c1,#43,#c2,#43,#c3
	db #43,#43,#c4,#43,#c5,#43,#c1,#43
	db #c2,#43,#c3,#43,#c4,#43,#43,#c5
	db #43,#c1,#4f,#c2,#4f,#c3,#4f,#c4
	db #4f,#4f,#c5,#4f,#ff,#e0,#00,#a0
	db #cd,#e1,#04,#87,#40,#3e,#86,#41
	db #84,#40,#86,#3e,#82,#3c,#3e,#84
	db #40,#3c,#89,#37,#c0,#86,#37,#37
	db #ff,#e0,#03,#a0,#cd,#e1,#04,#87
	db #40,#3e,#86,#41,#84,#40,#86,#3e
	db #82,#3c,#3e,#84,#40,#3c,#89,#37
	db #c0,#86,#37,#37,#ff,#e0,#00,#a0
	db #cd,#e1,#04,#87,#3f,#84,#3e,#3c
	db #3e,#87,#3c,#c0,#84,#3c,#85,#3c
	db #86,#3c,#ff,#e0,#00,#a0,#df,#e1
	db #0a,#87,#3c,#ff,#e0,#14,#a0,#de
	db #e1,#0d,#89,#1d,#ff,#e0,#00,#a0
	db #cc,#e1,#0a,#84,#44,#cb,#e1,#08
	db #4c,#ff,#e0,#00,#a0,#c2,#e1,#05
	db #80,#43,#3e,#37,#ff,#e0,#fc,#a0
	db #dd,#e2,#10,#84,#49,#ff,#0f,#00
	db #0f,#00,#0f,#00,#0f,#00,#01,#0f
	db #82,#9e,#01,#00,#01,#00,#01,#0d
	db #82,#9a,#01,#00,#01,#00,#01,#0b
	db #82,#96,#01,#00,#01,#00,#01,#09
	db #82,#92,#01,#00,#01,#00,#01,#07
	db #83,#95,#01,#00,#01,#00,#86,#46
	db #01,#00,#03,#00,#01,#00,#01,#0a
	db #01,#00,#03,#00,#01,#00,#85,#46
	db #01,#00,#03,#00,#01,#00,#01,#0e
	db #01,#00,#03,#00,#01,#00,#01,#09
	db #04,#ff,#08,#00,#9c,#d3,#01,#0b
	db #04,#ff,#08,#00,#8e,#d3,#01,#0f
	db #82,#84,#08,#00,#86,#ce,#01,#0d
	db #96,#ac,#8d,#ce,#90,#d0,#01,#0b
	db #02,#00,#01,#f5,#01,#00,#01,#0d
	db #02,#00,#01,#f3,#01,#00,#01,#0f
	db #02,#00,#01,#f1,#01,#00,#01,#0f
	db #0f,#ff,#01,#00,#01,#00,#01,#0d
	db #0d,#ff,#01,#00,#01,#00,#01,#0b
	db #0b,#ff,#01,#00,#01,#00,#01,#09
	db #09,#ff,#01,#00,#01,#00,#01,#0e
	db #01,#00,#01,#f2,#01,#00,#01,#0c
	db #91,#e3,#a1,#63,#a1,#63,#82,#14
	db #0c,#00,#01,#00,#82,#94,#01,#0d
	db #04,#ff,#08,#00,#8a,#d3,#01,#0b
	db #04,#ff,#08,#00,#8c,#d3,#01,#09
	db #04,#ff,#08,#00,#95,#d3,#01,#07
	db #04,#ff,#08,#00,#9c,#d3,#01,#0d
	db #03,#00,#08,#ff,#05,#00,#0f,#01
	db #09,#00,#89,#89,#0e,#ff,#0f,#01
	db #0c,#00,#8d,#8d,#87,#e2,#0f,#01
	db #0c,#00,#8d,#8d,#0e,#ff
;
.music_info
	db "Bobo Level 5 (1988)(Infogrames)(Charles Callet)",0
	db "Music Pro",0

	read "music_end.asm"
