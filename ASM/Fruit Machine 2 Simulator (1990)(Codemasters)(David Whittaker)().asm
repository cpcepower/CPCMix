; Music of Fruit Machine 2 Simulator (1990)(Codemasters)(David Whittaker)()
; Ripped by Megachur the 14/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FRUITM2S.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #0040
FIRST_THEME				equ 0
LAST_THEME				equ 8

	read "music_header.asm"
	
;
.init_music
;
	push af
	call l0271
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l0b95
	add hl,bc
	ld a,(hl)
	ld (l011c),a
	ld (l045e),a
	inc hl
	ld ix,l009b
	ld c,#22
	ld a,#03
.l0061
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
	jr nz,l0061
	ld (l03d3),a
	dec a
	ld (l045f),a
	ld (l0459),a
	ret
.l009b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l00bd
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l00df
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	ld a,(l0459)
	ld hl,l045a
	or (hl)
	inc hl
	or (hl)
	inc hl
	or (hl)
	ret z
	call l06d3
	ld a,(l0459)
	and a
	jr z,l0167
.l0117 equ $ + 1
	ld a,#00
	ld (l0163),a
.l011c equ $ + 1
	ld a,#01
	ld hl,l045f
	add (hl)
	ld (hl),a
	jr nc,l013b
	ld b,#00
	ld ix,l009b
	call l0324
	ld ix,l00bd
	call l0324
	ld ix,l00df
	call l0324
.l013b
	ld ix,l009b
	call l03a0
	ld (l0460),hl
	ld (l0468),a
	ld ix,l00bd
	call l03a0
	ld (l0462),hl
	ld (l0469),a
	ld ix,l00df
	call l03a0
	ld (l0464),hl
	ld (l046a),a
.l0163 equ $ + 1
	ld a,#00
	ld (l0466),a
.l0167
	ld a,(l0459)
	and a
	jr nz,l017d
	ld (l0468),a
	ld (l0469),a
	ld (l046a),a
	ld a,#3f
	ld (l0467),a
	jr l01a5
.l017d
	ld a,(l045d)
	and #0f
	xor #0f
	jr z,l01a5
	ld b,a
	ld a,(l0468)
	sub b
	jr nc,l018e
	xor a
.l018e
	ld (l0468),a
	ld a,(l0469)
	sub b
	jr nc,l0198
	xor a
.l0198
	ld (l0469),a
	ld a,(l046a)
	sub b
	jr nc,l01a2
	xor a
.l01a2
	ld (l046a),a
.l01a5
	ld a,(l045a)
	and a
	jr z,l01cd
	ld hl,(l046d)
	ld (l0460),hl
	ld a,(l0b3d)
	ld b,a
	bit 3,a
	jr nz,l01bf
	ld a,(l0473)
	ld (l0466),a
.l01bf
	ld hl,l0467
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l0475)
	ld (l0468),a
.l01cd
	ld a,(l045b)
	and a
	jr z,l01f7
	ld hl,(l046f)
	ld (l0462),hl
	ld a,(l0b52)
	ld b,a
	bit 3,a
	jr nz,l01e7
	ld a,(l0473)
	ld (l0466),a
.l01e7
	ld hl,l0467
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(l0476)
	ld (l0469),a
.l01f7
	ld a,(l045c)
	and a
	jr z,l0223
	ld hl,(l0471)
	ld (l0464),hl
	ld a,(l0b67)
	ld b,a
	bit 3,a
	jr nz,l0211
	ld a,(l0473)
	ld (l0466),a
.l0211
	ld hl,l0467
	ld a,(hl)
.l0215
	or #24
	rlc b
	rlc b
	and b
	ld (hl),a
	ld a,(l0477)
	ld (l046a),a
.l0223
	ld hl,l046a
	ld d,#0a
.l0228
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
	jp p,l0228
	ret
.l0249
	ld de,&0d00	;&0a00
.l024c
	call l0256
	dec d
	jp p,l024c
	ld de,&073f
.l0256
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
.l0271
;
	xor a
	ld (l0459),a
	call l0288
	xor a
	ld (l0468),a
	ld (l0469),a
	ld (l046a),a
	ld a,#0f
	ld (l045d),a
	ret
.l0288
	xor a
	ld (l045a),a
	ld (l045b),a
	ld (l045c),a
	jp l0249
	db #84,#78,#71,#00,#00,#00,#00,#10
	db #5e,#4f,#3a,#00,#00,#00,#05,#7e
	db #00,#00,#4d
	pop hl
	jp l0271
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
	jr nz,l02ce
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l02ce
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l0331
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,l043e
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l0331
	ld a,(de)
	inc de
	ld (l03d3),a
	jr l0331
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr l0331
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr l0331
	ld (ix+#1d),b
	jr l0331
	set 1,(ix+#00)
	jr l0331
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l0360
	jr l035c
.l0324
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l0331
	ld a,(de)
	inc de
	and a
	jp m,l036d
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l0343
	ld (l0117),a
.l0343
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.l035c
	set 5,(ix+#00)
.l0360
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l036d
	cp #c0
	jr c,l0398
	add #20
	jr c,l0379
	add #10
	jr c,l0380
.l0379
	inc a
	ld (ix+#11),a
	jp l0331
.l0380
	ld hl,l04f1
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
	jp l0331
.l0398
	ld hl,l0215
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l03a0
	ld c,(ix+#00)
	bit 5,c
	jr z,l03d2
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l03cc
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l03cc
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l03cc
	ld a,(ix+#18)
	ld (ix+#13),a
.l03d3 equ $ + 1
.l03d2
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld hl,l0479
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l0434
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l03fd
	bit 0,c
	jr nz,l041b
.l03fd
	bit 5,l
	jr nz,l040d
	sub (ix+#1b)
	jr nc,l0418
	set 5,(ix+#1d)
	sub a
	jr l0418
.l040d
	add (ix+#1b)
	cp b
	jr c,l0418
	res 5,(ix+#1d)
	ld a,b
.l0418
	ld (ix+#1c),a
.l041b
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l0426
	dec d
.l0426
	add #a0
	jr c,l0432
.l042a
	sla e
	rl d
	add #18
	jr nc,l042a
.l0432
	add hl,de
	ex de,hl
.l0434
	ld a,c
	xor #01
	ld (ix+#00),a
	cpl
	and #03
.l043e equ $ + 1
	ld a,#38
	jr nz,l044b
	ld a,(l0117)
	xor #08
	ld (l0163),a
	ld a,#07
.l044b
	ld hl,l0467
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l0460 equ $ + 7
.l045f equ $ + 6
.l045e equ $ + 5
.l045d equ $ + 4
.l045c equ $ + 3
.l045b equ $ + 2
.l045a equ $ + 1
.l0459
.music_end
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0468 equ $ + 7
.l0467 equ $ + 6
.l0466 equ $ + 5
.l0464 equ $ + 3
.l0462 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#3f,#0f
.l0470 equ $ + 7
.l046f equ $ + 6
.l046e equ $ + 5
.l046d equ $ + 4
.l046a equ $ + 1
.l0469
	db #0f,#0f,#00,#00,#00,#00,#00,#00
.l0477 equ $ + 6
.l0476 equ $ + 5
.l0475 equ $ + 4
.l0473 equ $ + 2
.l0472 equ $ + 1
.l0471
	db #00,#00,#00,#3f,#00,#00,#00,#00
.l0479
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
.l04f1
	dw l0512,l0518,l051f,l0531
	dw l0543,l0547,l054c,l0555
	dw l055e,l056f,l0579,l0583
	dw l058b,l059c,l05ac,l05b4
.l0518 equ $ + 7
.l0512 equ $ + 1
	db #01,#0c,#0d,#0e,#0d,#87,#01,#0d
.l051f equ $ + 6
	db #0e,#0f,#0e,#0d,#87,#01,#0f,#0e
	db #0d,#0b,#0d,#0c,#0a,#09,#0b,#0a
	db #08,#07,#09,#08,#06,#05,#87,#01
.l0531
	db #0f,#0f,#0d,#0b,#0d,#0c,#0a,#09
	db #0b,#0a,#08,#07,#09,#08,#06,#05
.l0547 equ $ + 6
.l0543 equ $ + 2
	db #87,#01,#0f,#0e,#87,#01,#0f,#0e
.l054c equ $ + 3
	db #0d,#87,#04,#0e,#0d,#0c,#0b,#0a
.l0555 equ $ + 4
	db #09,#08,#87,#02,#0e,#0d,#0c,#0b
.l055e equ $ + 5
	db #0a,#09,#08,#87,#08,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l056f equ $ + 6
	db #04,#03,#02,#01,#87,#02,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#87,#04
.l0579
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
.l0583 equ $ + 2
	db #87,#03,#0f,#0e,#0d,#0c,#0b,#0a
.l058b equ $ + 2
	db #87,#01,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.l059c equ $ + 3
	db #01,#87,#01,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.l05ac equ $ + 3
	db #01,#87,#01,#0b,#02,#0d,#0e,#0d
.l05b4 equ $ + 3
	db #0c,#87,#01,#0c,#87
	ld hl,l05bf
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l05bf
	inc bc
	ld e,l
	or a
	ld hl,l045a
	ld (hl),#00
	ld hl,l08ff
	add a
	add l
	ld l,a
	jr nc,l05d0
	inc h
.l05d0
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l0b37
.l05d8
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l05d8
	ld a,(l0b38)
	ld (l0b45),a
	ld hl,(l0b39)
	ld (l046d),hl
	ld a,(l0b3d)
	bit 3,a
	jr nz,l05f5
	ld a,l
	ld (l0473),a
.l05f5
	ld a,(l0b42)
	ld (l0b46),a
	ld a,(l0b44)
	ld (l0b4b),a
	ld a,(l0b41)
	ld hl,l0a9f
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l0b47),hl
	ld (l0b49),hl
	ld a,(hl)
	ld (l0475),a
	ld hl,l045a
	inc (hl)
	ret
	ld hl,l045b
	ld (hl),#00
	ld hl,l08ff
	add a
	add l
	ld l,a
	jr nc,l062b
	inc h
.l062b
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l0b4c
.l0633
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l0633
	ld a,(l0b4d)
	ld (l0b5a),a
	ld hl,(l0b4e)
	ld (l046f),hl
	ld a,(l0b52)
	bit 3,a
	jr nz,l0650
	ld a,l
	ld (l0473),a
.l0650
	ld a,(l0b57)
	ld (l0b5b),a
	ld a,(l0b59)
	ld (l0b60),a
	ld a,(l0b56)
	ld hl,l0a9f
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l0b5c),hl
	ld (l0b5e),hl
	ld a,(hl)
	ld (l0476),a
	ld hl,l045b
	inc (hl)
	ret
	ld hl,l045c
	ld (hl),#00
	ld hl,l08ff
	add a
	add l
	ld l,a
	jr nc,l0686
	inc h
.l0686
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l0b61
.l068e
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l068e
	ld a,(l0b62)
	ld (l0b6f),a
	ld hl,(l0b63)
	ld (l0471),hl
	ld a,(l0b67)
	bit 3,a
	jr nz,l06ab
	ld a,l
	ld (l0473),a
.l06ab
	ld a,(l0b6c)
	ld (l0b70),a
	ld a,(l0b6e)
	ld (l0b75),a
	ld a,(l0b6b)
	ld hl,l0a9f
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l0b71),hl
	ld (l0b73),hl
	ld a,(hl)
	ld (l0477),a
	ld hl,l045c
	inc (hl)
	ret
.l06d3
	call l0b76
	ld a,(l045a)
	and a
	call nz,l079b
	ld a,(l045b)
	and a
	call nz,l084d
	ld a,(l045c)
	and a
	ret z
	ld a,(l0b61)
	and a
	jr nz,l06f9
	ld a,(l0b6d)
	and a
	jr nz,l06f9
	ld (l045c),a
	ret
.l06f9
	dec a
	ld (l0b61),a
	ld a,(l0b6f)
	and a
	jr nz,l0731
	ld a,(l0b6d)
	and a
	jr nz,l070f
	ld a,(l0b6a)
	and a
	jr z,l0773
.l070f
	dec a
	ld (l0b6a),a
	ld a,(l0b62)
	ld (l0b6f),a
	ld a,(l0b68)
	and a
	jr z,l0722
	ld a,(l0b93)
.l0722
	ld b,a
	ld a,(l0b63)
	add b
	ld (l0471),a
	ld a,(l0b64)
	add b
	ld (l0472),a
.l0731
	ld hl,l0b6f
	dec (hl)
	ld hl,l0b6e
	ld a,(hl)
	and a
	jr z,l0743
	ld hl,l0b75
.l073f
	dec (hl)
	jr nz,l0766
	ld (hl),a
.l0743
	ld a,(l0b69)
	and a
	jr z,l0766
	jp p,l0759
	ld hl,(l0471)
	ld de,(l0b65)
	add hl,de
	ld (l0471),hl
	jr l0766
.l0759
	ld hl,(l0471)
	ld de,(l0b65)
	and a
	sbc hl,de
	ld (l0471),hl
.l0766
	ld a,(l0b67)
	bit 3,a
	jr nz,l0773
	ld a,(l0471)
	ld (l0473),a
.l0773
	ld a,(l0b70)
	dec a
	ld (l0b70),a
	jr nz,l079a
	ld a,(l0b6c)
	ld (l0b70),a
	ld hl,(l0b73)
	ld a,(hl)
	inc hl
	and a
	jp p,l0794
	cp #80
	jr nz,l079a
	ld hl,(l0b71)
	ld a,(hl)
	inc hl
.l0794
	ld (l0b73),hl
	ld (l0477),a
.l079a
	ret
.l079b
	ld a,(l0b37)
	and a
	jr nz,l07ab
	ld a,(l0b43)
	and a
	jr nz,l07ab
	ld (l045a),a
	ret
.l07ab
	dec a
	ld (l0b37),a
	ld a,(l0b45)
	and a
	jr nz,l07e3
	ld a,(l0b43)
	and a
	jr nz,l07c1
	ld a,(l0b40)
	and a
	jr z,l0825
.l07c1
	dec a
	ld (l0b40),a
	ld a,(l0b38)
	ld (l0b45),a
	ld a,(l0b3e)
	and a
	jr z,l07d4
	ld a,(l0b91)
.l07d4
	ld b,a
	ld a,(l0b39)
	add b
	ld (l046d),a
	ld a,(l0b3a)
	add b
	ld (l046e),a
.l07e3
	ld hl,l0b45
	dec (hl)
	ld hl,l0b44
	ld a,(hl)
	and a
	jr z,l07f5
	ld hl,l0b4b
	dec (hl)
	jr nz,l0818
	ld (hl),a
.l07f5
	ld a,(l0b3f)
	and a
	jr z,l0818
	jp p,l080b
	ld hl,(l046d)
	ld de,(l0b3b)
	add hl,de
	ld (l046d),hl
	jr l0818
.l080b
	ld hl,(l046d)
	ld de,(l0b3b)
	and a
	sbc hl,de
	ld (l046d),hl
.l0818
	ld a,(l0b3d)
	bit 3,a
	jr nz,l0825
	ld a,(l046d)
	ld (l0473),a
.l0825
	ld a,(l0b46)
	dec a
	ld (l0b46),a
	jr nz,l084c
	ld a,(l0b42)
	ld (l0b46),a
	ld hl,(l0b49)
	ld a,(hl)
	inc hl
	and a
	jp p,l0846
	cp #80
	jr nz,l084c
	ld hl,(l0b47)
	ld a,(hl)
	inc hl
.l0846
	ld (l0b49),hl
	ld (l0475),a
.l084c
	ret
.l084d
	ld a,(l0b4c)
	and a
	jr nz,l085d
	ld a,(l0b58)
	and a
	jr nz,l085d
	ld (l045b),a
	ret
.l085d
	dec a
	ld (l0b4c),a
	ld a,(l0b5a)
	and a
	jr nz,l0895
	ld a,(l0b58)
	and a
	jr nz,l0873
	ld a,(l0b55)
	and a
	jr z,l08d7
.l0873
	dec a
	ld (l0b55),a
	ld a,(l0b4d)
	ld (l0b5a),a
	ld a,(l0b53)
	and a
	jr z,l0886
	ld a,(l0b92)
.l0886
	ld b,a
	ld a,(l0b4e)
	add b
	ld (l046f),a
	ld a,(l0b4f)
	add b
	ld (l0470),a
.l0895
	ld hl,l0b5a
	dec (hl)
	ld hl,l0b59
	ld a,(hl)
	and a
	jr z,l08a7
	ld hl,l0b60
	dec (hl)
	jr nz,l08ca
	ld (hl),a
.l08a7
	ld a,(l0b54)
	and a
	jr z,l08ca
	jp p,l08bd
	ld hl,(l046f)
	ld de,(l0b50)
	add hl,de
	ld (l046f),hl
	jr l08ca
.l08bd
	ld hl,(l046f)
	ld de,(l0b50)
	and a
	sbc hl,de
	ld (l046f),hl
.l08ca
	ld a,(l0b52)
	bit 3,a
	jr nz,l08d7
	ld a,(l046f)
	ld (l0473),a
.l08d7
	ld a,(l0b5b)
	dec a
	ld (l0b5b),a
	jr nz,l08fe
	ld a,(l0b57)
	ld (l0b5b),a
	ld hl,(l0b5e)
	ld a,(hl)
	inc hl
	and a
	jp p,l08f8
	cp #80
	jr nz,l08fe
	ld hl,(l0b5c)
	ld a,(hl)
	inc hl
.l08f8
	ld (l0b5e),hl
	ld (l0476),a
.l08fe
	ret
.l08ff
	dw l0933,l0941,l094f,l095d
	dw l096b,l0979,l0987,l0995
	dw l09a3,l09b1,l09bf,l09cd
	dw l09db,l09e9,l09f7,l0a05
	dw l0a13,l0a21,l0a2f,l0a3d
	dw l0a4b,l0a59,l0a67,l0a75
	dw l0a83,l0a91
.l0933
	db #0c,#63,#81,#00,#0c,#00,#fe,#00
.l0941 equ $ + 6
	db #ff,#63,#08,#02,#00,#03,#0b,#05
	db #0f,#00,#04,#00,#f6,#00,#01,#0a
.l094f equ $ + 4
	db #08,#01,#00,#00,#0f,#63,#c8,#00
	db #10,#00,#f6,#00,#ff,#63,#05,#01
.l095d equ $ + 2
	db #00,#00,#05,#01,#af,#00,#00,#00
	db #fe,#00,#ff,#63,#09,#01,#00,#00
.l096b
	db #05,#01,#2f,#01,#00,#00,#fe,#00
.l0979 equ $ + 6
	db #ff,#63,#09,#01,#00,#00,#1e,#09
	db #ef,#00,#00,#00,#fe,#00,#00,#63
.l0987 equ $ + 4
	db #04,#01,#ff,#00,#1e,#09,#f0,#00
	db #00,#00,#fe,#00,#00,#63,#04,#01
.l0995 equ $ + 2
	db #ff,#00,#14,#63,#90,#00,#08,#00
	db #fe,#00,#01,#63,#00,#05,#00,#02
.l09a3
	db #0c,#02,#1e,#00,#01,#00,#fe,#00
.l09b1 equ $ + 6
	db #01,#63,#08,#02,#00,#00,#0c,#63
	db #26,#00,#00,#00,#fe,#00,#01,#63
.l09bf equ $ + 4
	db #05,#02,#00,#00,#32,#63,#1f,#00
	db #11,#00,#f7,#00,#01,#63,#01,#02
.l09cd equ $ + 2
	db #00,#02,#32,#04,#00,#04,#16,#00
	db #f6,#01,#ff,#63,#09,#01,#00,#00
.l09db
	db #c8,#ff,#10,#00,#01,#04,#fe,#00
.l09e9 equ $ + 6
	db #ff,#63,#01,#08,#00,#00,#0c,#05
	db #c8,#00,#20,#00,#f6,#00,#ff,#63
.l09f7 equ $ + 4
	db #00,#01,#00,#00,#0c,#02,#0f,#00
.l0a00 equ $ + 5
	db #11,#00,#f7,#ff,#01,#ff,#00,#01
.l0a05 equ $ + 2
	db #00,#00,#32,#0a,#50,#00,#0c,#00
	db #fe,#00,#ff,#63,#08,#05,#00,#02
.l0a13
	db #1e,#02,#c0,#00,#04,#00,#fe,#00
.l0a21 equ $ + 6
	db #ff,#63,#04,#01,#00,#00,#19,#28
	db #1f,#00,#01,#00,#f6,#00,#01,#00
.l0a2f equ $ + 4
	db #06,#02,#00,#03,#50,#03,#f8,#03
	db #44,#00,#fe,#00,#ff,#63,#07,#02
.l0a3d equ $ + 2
	db #00,#00,#46,#03,#08,#05,#30,#00
	db #f6,#00,#ff,#ff,#04,#02,#00,#00
.l0a4b
	db #50,#04,#00,#04,#16,#00,#f6,#01
.l0a59 equ $ + 6
	db #ff,#63,#00,#04,#00,#00,#0f,#03
	db #0f,#05,#30,#00,#f6,#00,#ff,#ff
.l0a67 equ $ + 4
	db #00,#01,#00,#00,#0f,#63,#f0,#00
	db #21,#00,#fe,#00,#ff,#63,#04,#01
.l0a75 equ $ + 2
	db #00,#00,#0f,#0e,#81,#01,#14,#00
	db #fe,#00,#01,#00,#00,#03,#00,#00
.l0a83
	db #32,#0a,#0a,#00,#03,#00,#f6,#01
.l0a91 equ $ + 6
	db #ff,#0a,#00,#04,#00,#00,#3c,#06
	db #81,#00,#24,#00,#f6,#00,#ff,#63
	db #00,#04,#00,#00
.l0a9f
	dw l0ab3,l0ac3,l0adc,l0af4
	dw l0b05,l0b09,l0b12,l0b1f
	dw l0b21,l0b30
.l0ab3
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.l0ac3
	db #06,#08,#0a,#0b,#0c,#0d,#0e,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.l0adc equ $ + 1
	db #ff,#06,#08,#0a,#0c,#0e,#0f,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.l0af4 equ $ + 1
	db #ff,#06,#08,#0a,#0b,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.l0b09 equ $ + 6
.l0b05 equ $ + 2
	db #01,#ff,#06,#08,#0a,#ff,#0f,#00
.l0b12 equ $ + 7
	db #00,#0e,#00,#00,#0d,#00,#ff,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l0b21 equ $ + 6
.l0b1f equ $ + 4
	db #03,#02,#01,#ff,#0c,#80,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l0b30 equ $ + 5
	db #04,#03,#02,#01,#ff,#0c,#00,#00
.l0b3a equ $ + 7
.l0b39 equ $ + 6
.l0b38 equ $ + 5
.l0b37 equ $ + 4
	db #00,#0a,#00,#ff,#00,#00,#00,#00
.l0b42 equ $ + 7
.l0b41 equ $ + 6
.l0b40 equ $ + 5
.l0b3f equ $ + 4
.l0b3e equ $ + 3
.l0b3d equ $ + 2
.l0b3b
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b49 equ $ + 6
.l0b47 equ $ + 4
.l0b46 equ $ + 3
.l0b45 equ $ + 2
.l0b44 equ $ + 1
.l0b43
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b52 equ $ + 7
.l0b50 equ $ + 5
.l0b4f equ $ + 4
.l0b4e equ $ + 3
.l0b4d equ $ + 2
.l0b4c equ $ + 1
.l0b4b
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b5a equ $ + 7
.l0b59 equ $ + 6
.l0b58 equ $ + 5
.l0b57 equ $ + 4
.l0b56 equ $ + 3
.l0b55 equ $ + 2
.l0b54 equ $ + 1
.l0b53
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b62 equ $ + 7
.l0b61 equ $ + 6
.l0b60 equ $ + 5
.l0b5e equ $ + 3
.l0b5c equ $ + 1
.l0b5b
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b6a equ $ + 7
.l0b69 equ $ + 6
.l0b68 equ $ + 5
.l0b67 equ $ + 4
.l0b65 equ $ + 2
.l0b64 equ $ + 1
.l0b63
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b71 equ $ + 6
.l0b70 equ $ + 5
.l0b6f equ $ + 4
.l0b6e equ $ + 3
.l0b6d equ $ + 2
.l0b6c equ $ + 1
.l0b6b
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b75 equ $ + 2
.l0b73
	db #00,#00,#00
.l0b76
	ld a,(l0b91)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l0b94
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l0b94 equ $ + 3
.l0b93 equ $ + 2
.l0b92 equ $ + 1
.l0b91
	dw #80ff,#341b
.l0b95
	db #28
	dw l0bf6,l0bd4,l0c06
	db #34
	dw l0dcb,l0dc7,l0dcf
	db #27
	dw l0e10,l0e0c,l0e14
	db #50
	dw l0e40,l0e3c,l0e44
	db #38
	dw l0e82,l0e7e,l0e86
	db #27
	dw l0ebf,l0ebb,l0ec3
	db #38
	dw l0f0a,l0f06,l0f0e
	db #f0
	dw l0e82,l0e7e,l0e86
	db #c0
	dw l0f3a,l0f36,l0f3e
.l0bd4
	dw l0f73,l0c16,l0c4f,l0c16
	dw l0c4d,l0c62,l0c16,l0c4d
	dw l0f76,l0c16,l0c4f,l0c16
	dw l0c4d,l0c62,l0c16,l0c4d
	dw #0000
.l0bf6
	dw l0ca3,l0cd9,l0ca3,l0cd7
	dw l0cec,l0ca3,l0cd7,#0000
.l0c06
	dw l0d2d,l0d64,l0d2d,l0d75
	dw l0d86,l0d2d,l0d75,#0000
.l0c16
	db #8a,#da,#88,#01,#01,#e0,#18,#80
	db #1f,#80,#13,#80,#1f,#18,#80,#18
	db #1f,#80,#13,#80,#1f,#80,#15,#80
	db #1c,#80,#10,#80,#1c,#15,#80,#15
	db #1c,#80,#10,#80,#1c,#80,#1a,#80
	db #21,#80,#15,#80,#21,#1a,#80,#1a
.l0c4d equ $ + 7
	db #21,#80,#15,#80,#21,#80,#87,#92
.l0c4f equ $ + 1
	db #f4,#1d,#80,#24,#80,#18,#80,#24
	db #1f,#80,#1f,#26,#80,#1a,#80,#26
.l0c62 equ $ + 4
	db #80,#92,#00,#87,#10,#80,#17,#80
	db #1c,#80,#17,#10,#80,#10,#17,#80
	db #1c,#80,#17,#80,#11,#80,#18,#80
	db #1d,#80,#18,#11,#80,#11,#18,#80
	db #1d,#80,#18,#80,#13,#80,#1a,#80
	db #1f,#80,#1a,#13,#80,#13,#1a,#80
	db #1f,#80,#1a,#80,#1f,#80,#26,#80
	db #1a,#80,#26,#1f,#80,#1f,#26,#80
.l0ca3 equ $ + 5
	db #1a,#80,#26,#80,#87,#8a,#d6,#e0
	db #18,#80,#1c,#80,#13,#80,#1c,#18
	db #80,#18,#1c,#80,#13,#80,#1c,#80
	db #15,#80,#18,#80,#10,#80,#18,#15
	db #80,#15,#18,#80,#10,#80,#18,#80
	db #1a,#80,#1d,#80,#15,#80,#1d,#1a
	db #80,#1a,#1d,#80,#15,#80,#1d,#80
.l0cd9 equ $ + 3
.l0cd7 equ $ + 1
	db #87,#92,#f4,#1d,#80,#21,#80,#18
	db #80,#21,#1f,#80,#1f,#23,#80,#1a
.l0cec equ $ + 6
	db #80,#23,#80,#92,#00,#87,#10,#80
	db #13,#80,#1c,#80,#13,#10,#80,#10
	db #13,#80,#1c,#80,#13,#80,#11,#80
	db #15,#80,#1d,#80,#15,#11,#80,#11
	db #15,#80,#1d,#80,#15,#80,#13,#80
	db #17,#80,#1f,#80,#17,#13,#80,#13
	db #17,#80,#1f,#80,#17,#80,#1f,#80
	db #23,#80,#17,#80,#23,#1f,#80,#1f
.l0d2d equ $ + 7
	db #23,#80,#17,#80,#23,#80,#87,#8a
	db #88,#01,#01,#d7,#e0,#2b,#2a,#2b
	db #8f,#28,#8f,#34,#8f,#30,#8f,#2b
	db #2d,#8f,#2d,#2b,#8f,#2d,#2f,#30
	db #8f,#32,#8f,#33,#8f,#34,#8f,#39
	db #8f,#34,#8f,#33,#8f,#32,#8f,#2d
	db #32,#8f,#8f,#34,#8f,#35,#8f,#34
.l0d64 equ $ + 6
	db #32,#8f,#8f,#8f,#8f,#87,#39,#39
	db #38,#8f,#37,#8f,#36,#8f,#35,#8f
.l0d75 equ $ + 7
	db #34,#32,#8f,#8f,#2b,#8f,#87,#29
	db #8f,#2b,#8f,#2d,#8f,#2f,#8f,#30
	db #8f,#2f,#8f,#2d,#8f,#2f,#8f,#87
.l0d86
	db #28,#26,#28,#8f,#8f,#8f,#28,#26
	db #28,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #24,#23,#24,#8f,#8f,#8f,#24,#23
	db #24,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #23,#24,#26,#8f,#24,#26,#28,#8f
	db #26,#28,#29,#8f,#28,#29,#2b,#8f
	db #32,#30,#32,#8f,#30,#8f,#2f,#8f
	db #2d,#8f,#2b,#8f,#28,#8f,#26,#8f
	db #87
.l0dc7
	dw l0dd3,#0000
.l0dcb
	dw l0de7,#0000
.l0dcf
	dw l0df8,#0000
.l0dd3
	db #8a,#da,#88,#01,#01,#e0,#11,#80
	db #18,#80,#13,#80,#1a,#80,#18,#80
.l0de7 equ $ + 4
	db #1f,#80,#18,#8e,#8a,#da,#e0,#11
	db #80,#15,#80,#13,#80,#17,#80,#18
.l0df8 equ $ + 5
	db #80,#1c,#80,#0c,#8e,#8a,#88,#01
	db #01,#da,#e0,#29,#2b,#2d,#80,#2b
	db #2d,#2f,#80,#30,#80,#2b,#80,#30
	db #8e
.l0e0c
	dw l0e18,#0000
.l0e10
	dw l0e24,#0000
.l0e14
	dw l0e30,#0000
.l0e18
	db #8a,#da,#88,#01,#01,#e0,#22,#21
.l0e24 equ $ + 4
	db #20,#e3,#1f,#8e,#8a,#da,#88,#01
	db #01,#e0,#27,#26,#25,#e3,#24,#8e
.l0e30
	db #8a,#88,#01,#01,#da,#e0,#2e,#2d
	db #2c,#e3,#27,#8e
.l0e3c
	dw l0e48,#0000
.l0e40
	dw l0e67,#0000
.l0e44
	dw l0e71,#0000
.l0e48
	db #8a,#da,#88,#01,#01,#e0,#1a,#80
	db #1f,#80,#1f,#80,#1a,#80,#21,#80
	db #21,#80,#1a,#80,#1f,#80,#1f,#80
.l0e67 equ $ + 7
	db #1a,#80,#21,#80,#21,#80,#8e,#8a
	db #da,#e0,#1a,#80,#26,#80,#26,#80
.l0e71 equ $ + 1
	db #87,#8a,#88,#01,#01,#da,#e0,#0e
	db #80,#2b,#80,#2b,#80,#87
.l0e7e
	dw l0e8a,#0000
.l0e82
	dw l0e99,#0000
.l0e86
	dw l0eaa,#0000
.l0e8a
	db #8a,#da,#88,#01,#01,#e2,#13,#17
.l0e99 equ $ + 7
	db #1a,#1f,#23,#26,#e8,#2b,#8e,#8a
	db #da,#88,#01,#01,#e0,#80,#e2,#17
	db #1a,#1f,#23,#26,#2b,#e8,#2f,#8e
.l0eaa
	db #8a,#88,#01,#01,#da,#e1,#80,#e2
	db #1a,#1f,#23,#26,#2b,#2f,#e8,#32
	db #8e
.l0ebb
	dw l0ec7,#0000
.l0ebf
	dw l0edc,#0000
.l0ec3
	dw l0ef1,#0000
.l0ec7
	db #8a,#da,#88,#01,#01,#e0,#24,#80
	db #80,#24,#80,#80,#24,#80,#24,#80
.l0edc equ $ + 5
	db #80,#80,#e3,#2d,#8e,#8a,#da,#88
	db #01,#01,#e0,#29,#80,#80,#29,#80
	db #80,#29,#80,#29,#80,#80,#80,#e3
.l0ef1 equ $ + 2
	db #24,#8e,#8a,#88,#01,#01,#da,#e0
	db #18,#1d,#24,#1d,#18,#1d,#24,#1d
	db #18,#1d,#21,#24,#e3,#29,#8e
.l0f06
	dw l0f12,#0000
.l0f0a
	dw l0f1e,#0000
.l0f0e
	dw l0f2a,#0000
.l0f12
	db #8a,#da,#88,#01,#01,#e0,#2e,#2f
.l0f1e equ $ + 4
	db #30,#e1,#31,#8e,#8a,#da,#88,#01
	db #01,#e0,#33,#34,#35,#e1,#36,#8e
.l0f2a
	db #8a,#88,#01,#01,#da,#e0,#36,#37
	db #38,#e1,#39,#8e
.l0f36
	dw l0f42,#0000
.l0f3a
	dw l0f51,#0000
.l0f3e
	dw l0f62,#0000
.l0f42
	db #8a,#da,#88,#01,#01,#e2,#33,#30
.l0f51 equ $ + 7
	db #2b,#27,#24,#1f,#eb,#1b,#8e,#8a
	db #da,#88,#01,#01,#e0,#80,#e2,#30
	db #2b,#27,#24,#1f,#1b,#eb,#18,#8e
.l0f62
	db #8a,#88,#01,#01,#da,#e1,#80,#e2
	db #2b,#27,#24,#1f,#1b,#18,#eb,#13
.l0f73 equ $ + 1
	db #8e,#89,#00,#87
.l0f76
	db #89,#02,#87
;
.music_info
	db "Fruit Machine 2 Simulator (1990)(Codemasters)(David Whittaker)",0
	db "",0

	read "music_end.asm"
