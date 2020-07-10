; Music of Real Stunt Experts (1989)(Alternative Software)(Ben Daglish)()
; Ripped by Megachur the 14/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "REALSTUE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #0064

	read "music_header.asm"

	jp l00f2        ; init music    a = 0
	jp l017a        ; play music
.l006a
	db #00
	jp l0075        ; sound fx ?
;
.stop_music
;
	xor a
	ld (l006a),a
	jp l04f9
.l0075
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,l0b15
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,#c53e	; no data captured!
	call l0475
	set 7,(ix+#11)
	ret
.l00a2 equ $ + 7
.l009c equ $ + 1
.l009b
	db #00,#00,#00,#00,#00,#00,#00,#00
.l00aa equ $ + 7
.l00a8 equ $ + 5
.l00a7 equ $ + 4
.l00a6 equ $ + 3
.l00a5 equ $ + 2
.l00a4 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l00b1 equ $ + 6
.l00b0 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l00ba equ $ + 7
.l00b9 equ $ + 6
.l00b7 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l00bf equ $ + 4
.l00bd equ $ + 2
.l00bc equ $ + 1
.l00bb
	db #00,#00,#00,#00,#00,#00,#00,#00
.l00c6 equ $ + 3
.l00c5 equ $ + 2
	db #00,#00,#10,#00,#00,#00,#00,#00
.l00d2 equ $ + 7
.l00d1 equ $ + 6
.l00d0 equ $ + 5
.l00cf equ $ + 4
.l00ce equ $ + 3
.l00cc equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l00da equ $ + 7
.l00d4 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
.init_music
.l00f2
;
	push af
	call l04f9
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l0a55
	add l
	ld l,a
	jr nc,l0103
	inc h
.l0103
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l009c),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l00b1),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l00c6),de
	xor a
	ld (l00a5),a
	ld (l00ba),a
	ld (l00cf),a
	ld (l00aa),a
	ld (l00bf),a
	ld (l00d4),a
	cpl
	ld (l00a6),a
	ld (l00bb),a
	ld (l00d0),a
	ld a,#01
	ld (l00a4),a
	ld (l00b9),a
	ld (l00ce),a
	ld (l00a7),a
	ld (l00bc),a
	ld (l00d1),a
	ld hl,l00da
	ld bc,&030a
.l0152
	xor a
.l0153
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l0153
	djnz l0152
	ld hl,l0ac5
	ld (l00a2),hl
	ld (l00b7),hl
	ld (l00cc),hl
	ld a,#ff
	ld (l00a8),a
	ld (l00bd),a
	ld (l00d2),a
	ld (l006a),a
	ret
;
.play_music
.l017a
;
	call l053a
	ld a,(l006a)
	and a
	ret z
	ld a,(l00a8)
	ld hl,l00bd
	or (hl)
	ld hl,l00d2
	or (hl)
	ld (l006a),a
	jr nz,l01a4
	xor a
	ld (l006a),a
	ld a,(l043d)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l006a),a
	ret
.l01a4
	ld iy,l009b
	ld ix,l043e
	call l01c2
	ld iy,l00b0
	ld ix,l0450
	call l01c2
	ld iy,l00c5
	ld ix,l0462
.l01c2
	call l0303
	ld a,(iy+#0b)
	and a
	jr z,l0247
.l01cb
	dec (iy+#09)
	jr z,l01e2
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l0247
.l01e2
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l01ec
	ld a,(hl)
	cp #80
	jr c,l0227
	cp #fe
	jr nz,l01fe
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l01ec
.l01fe
	cp #ff
	jr nz,l0207
	xor a
	ld (iy+#0d),a
	ret
.l0207
	cp #c0
	jr nc,l0214
	and #1f
	ld (iy+#09),a
	inc hl
	jp l01ec
.l0214
	and #07
	add (iy+#00)
	ld de,l00da
	add e
	ld e,a
	jr nc,l0221
	inc d
.l0221
	inc hl
	ldi
	jp l01ec
.l0227
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,l0a2b
	add hl,bc
	ld e,(hl)
	ld hl,l0a40
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr l024d
.l0247
	ld e,(iy+#05)
	ld d,(iy+#06)
.l024d
	dec (iy+#0c)
	jr z,l025f
	ld a,(de)
	cp #80
	call nc,l02c9
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l025f
	ld a,(de)
	cp #80
	jr c,l0270
	call l02c9
	ld a,(iy+#0b)
	and a
	jr z,l025f
	jp l01cb
.l0270
	cp #7f
	jr z,l02bc
	cp #7e
	jr nz,l0281
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l0295
.l0281
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,l0393
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l0295
	ld a,(iy+#0f)
	or #c0
	ld (iy+#14),a
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld c,a
	ld (iy+#05),e
	ld (iy+#06),d
	ld e,(iy+#07)
	ld a,(iy+#08)
	ld hy,a
	ld ly,e
	bit 7,(ix+#11)
	ret nz
	jp l0475
.l02bc
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l02c9
	ld a,(de)
	cp #88
	jr nc,l02e7
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l00da
	add hl,bc
	ld c,(hl)
	ld hl,l0ac5
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l02e7
	cp #ff
	jr nz,l02f0
	ld (iy+#0b),#ff
	ret
.l02f0
	cp #c0
	jr nc,l02fb
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l02fb
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l0303
	bit 7,(ix+#11)
	ret nz
;.l030a equ $ + 2
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l0317
	res 7,(iy+#14)
	ret
.l0317
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l034b
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l034b
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l033a
	inc h
	ld (iy+#11),h
.l033a
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l0380
.l034b
	ld hl,l03e5
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l0365
	bit 6,(iy+#14)
	jr nz,l0365
	ld (iy+#13),#01
	ret
.l0365
	res 6,(iy+#14)
	ld a,(hl)
	rrca
	rrca
	rrca
	and d
	ld (iy+#12),a
	ld a,(hl)
	and d
	inc a
	ld (iy+#13),a
	ld (iy+#10),l
	ld (iy+#11),h
	ld a,(iy+#0e)
.l0380
	add a
	ld hl,l0393
	add l
	ld l,a
	jr nc,l0389
	inc h
.l0389
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.l0393
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04d4,#0470,#0431,#03f4
	dw #03dc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
.l03e5 equ $ + 2
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
	dw #0018
.l0443 equ $ + 6
.l0442 equ $ + 5
.l0441 equ $ + 4
.l043e equ $ + 1
.l043d
	db #3f,#fe,#f7,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0454 equ $ + 7
.l0453 equ $ + 6
.l0450 equ $ + 3
.l044f equ $ + 2
	db #00,#00,#00,#fd,#ef,#12,#00,#00
.l0455
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0462 equ $ + 5
.l0461 equ $ + 4
	db #00,#00,#00,#00,#00,#fb,#df,#24
.l0467 equ $ + 2
.l0466 equ $ + 1
.l0465
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0474 equ $ + 7
.l0473 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0475
	ld a,ly
	ld (ix+#0f),a
	ld a,hy
	ld (ix+#10),a
	ld (ix+#03),l
	ld (ix+#04),h
	ld (ix+#06),c
	ld a,(iy+#05)
	ld (ix+#07),a
	ld a,(iy+#06)
	and #7f
	srl a
	jr nz,l0499
	ld a,#01
.l0499
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(l043d)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,l04c2
	and (ix+#00)
.l04c2
	bit 1,c
	jr z,l04c9
	and (ix+#01)
.l04c9
	ld (l043d),a
	bit 2,c
	jr nz,l04da
	ld hl,l0628
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l04da
	call l06e0
	ld a,(iy+#00)
	ld c,#0d
	call l06f7
	ld a,(iy+#04)
	ld c,#0b
	call l06f7
	inc c
	xor a
	call l06f7
	ld (ix+#05),#ff
	jp l06ec
.l04f9
	call l06e0
	ld c,#07
	ld a,(l043d)
	or #3f
	ld (l043d),a
	call l06f7
	xor a
	inc c
	call l06f7
	inc c
	call l06f7
	inc c
	call l06f7
	ld a,#01
	inc c
	call l06f7
	inc c
	xor a
	call l06f7
	inc c
	call l06f7
	ld (l044f),a
	ld (l0461),a
	ld (l0473),a
	ld (l0443),a
	ld (l0455),a
	ld (l0467),a
	jp l06ec
.l053a
	ld a,(l043d)
	and #3f
	cp #3f
	ret z
	ld ix,l043e
	call l05f6
	ld ix,l0450
	call l05f6
	ld ix,l0462
	call l05f6
	call l06e0
	ld ix,l043e
	ld c,#07
	ld a,(l043d)
	call l06f7
	ld c,#00
	ld a,(l0441)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,l0578
	ld (l0474),a
.l0578
	call l06f7
	inc c
	ld a,(l0442)
	adc (ix+#0a)
	call l06f7
	inc c
	ld a,(l0453)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,l0596
	ld (l0474),a
.l0596
	call l06f7
	inc c
	ld a,(l0454)
	adc (ix+#1c)
	call l06f7
	inc c
	ld a,(l0465)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,l05b4
	ld (l0474),a
.l05b4
	call l06f7
	inc c
	ld a,(l0466)
	adc (ix+#2e)
	call l06f7
	inc c
	ld a,(l0474)
	rrca
	rrca
	rrca
	call l06f7
	ld c,#08
	ld a,(l0443)
	srl a
	srl a
	srl a
	call l06f7
	inc c
	ld a,(l0455)
	srl a
	srl a
	srl a
	call l06f7
	inc c
	ld a,(l0467)
	srl a
	srl a
	srl a
	call l06f7
	jp l06ec
.l05f6
	ld a,(l043d)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l0617
	cp #ff
	jr z,l0617
	dec (ix+#06)
.l0617
	call l069e
	bit 2,(iy+#09)
	jp nz,l0697
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.l0628
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l0637
	ld (ix+#05),a
	ret
.l0637
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l0647
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l0647
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l0659
	cp (iy+#02)
	jr c,l0659
	ld (ix+#05),a
	ret
.l0659
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l0669
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l0669
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l0678
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l0678
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l0685
	ld (ix+#05),a
	ret
.l0685
	ld (ix+#05),#00
	ld a,(l043d)
	or (ix+#02)
	ld (l043d),a
	res 7,(ix+#11)
	ret
.l0697
	ld a,(ix+#06)
	and a
	ret nz
	jr l0685
.l069e
	ld a,(ix+#07)
	and a
	jr z,l06ab
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.l06ab
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld c,(ix+#0b)
	ld b,(ix+#0c)
	add hl,bc
	ld (ix+#09),l
	ld (ix+#0a),h
	dec (ix+#08)
	ret nz
	ld a,(iy+#06)
	and a
	ret z
	jp p,l06cf
	ld (ix+#07),#ff
	ret
.l06cf
	ld (ix+#08),a
	ld a,c
	cpl
	ld c,a
	ld a,b
	cpl
	ld b,a
	inc bc
	ld (ix+#0b),c
	ld (ix+#0c),b
	ret
.l06e0
	ld bc,#f782
	out (c),c
	ld de,#c000
	ld hl,#f680
	ret
.l06ec
	ld bc,#f40e
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ret
.l06f7
	ld b,#f4
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ld b,#f4
	out (c),a
	ld b,h
	out (c),l
	out (c),e
	ret
.l070a
	db #80,#06,#10,#81,#1e,#08,#80,#09
	db #08,#0b,#10,#81,#1e,#08,#80,#08
	db #10,#08,#08,#81,#1e,#08,#80,#0c
	db #08,#0d,#10,#81,#1e,#04,#80,#10
.l0730 equ $ + 6
	db #04,#12,#04,#0d,#04,#ff,#82,#91
	db #21,#10,#21,#10,#23,#10,#23,#10
	db #92,#24,#10,#24,#10,#93,#23,#10
.l0745 equ $ + 3
	db #23,#10,#ff,#7f,#40,#7f,#40,#ff
.l074a
	db #83,#31,#50,#2f,#08,#2d,#08,#2f
	db #08,#30,#08,#2f,#08,#2d,#08,#30
	db #04,#2f,#04,#2d,#04,#28,#04,#2a
	db #50,#2a,#08,#2d,#08,#2f,#08,#31
	db #58,#31,#08,#34,#08,#39,#08,#36
	db #08,#34,#08,#36,#80,#7f,#08,#ff
.l077a
	db #80,#06,#10,#81,#1e,#08,#80,#09
	db #08,#0b,#10,#81,#1e,#08,#80,#08
	db #10,#08,#08,#81,#1e,#08,#80,#0d
	db #10,#0d,#08,#0b,#08,#09,#08,#ff
.l079a
	db #82,#91,#21,#10,#21,#10,#23,#10
	db #23,#10,#92,#24,#08,#24,#10,#93
.l07b1 equ $ + 7
	db #23,#10,#23,#10,#23,#08,#ff,#82
	db #93,#21,#08,#21,#10,#91,#21,#10
	db #21,#10,#93,#20,#10,#20,#10,#20
	db #08,#92,#22,#10,#22,#10,#93,#21
	db #08,#21,#10,#91,#21,#10,#21,#10
	db #23,#10,#23,#10,#23,#08,#25,#10
.l07dd equ $ + 3
	db #25,#10,#ff,#80,#0e,#10,#81,#1e
	db #08,#80,#0e,#08,#09,#10,#81,#1e
	db #08,#80,#0b,#08,#0d,#10,#81,#1e
	db #08,#80,#0d,#08,#06,#08,#12,#08
	db #81,#1e,#08,#80,#0d,#08,#80,#0e
	db #10,#81,#1e,#08,#80,#0e,#08,#09
	db #10,#81,#1e,#08,#80,#0b,#08,#0d
	db #10,#81,#1e,#08,#80,#0d,#08,#0d
	db #10,#81,#1e,#08,#80,#0d,#08,#ff
.l0822
	db #83,#2a,#08,#2c,#08,#2d,#08,#31
	db #10,#2d,#10,#2c,#10,#2a,#10,#28
	db #08,#2a,#20,#2a,#08,#2c,#08,#2d
	db #08,#31,#10,#2f,#08,#2d,#08,#2c
	db #48,#2d,#08,#2f,#08,#2d,#08,#31
	db #10,#34,#08,#31,#08,#2d,#08,#2c
	db #08,#2a,#08,#29,#08,#2a,#10,#2c
	db #08,#2d,#08,#2a,#08,#2a,#08,#2c
	db #08,#2d,#08,#2f,#10,#31,#08,#32
.l086e equ $ + 4
	db #08,#31,#48,#ff,#80,#06,#10,#81
	db #1e,#08,#80,#06,#08,#09,#10,#81
	db #1e,#08,#80,#0b,#10,#0b,#08,#81
	db #1e,#08,#80,#0b,#08,#0c,#08,#0b
.l0891 equ $ + 7
	db #08,#81,#1e,#08,#1e,#08,#ff,#80
	db #0d,#10,#81,#1e,#08,#80,#0d,#08
	db #0d,#10,#81,#1e,#08,#80,#0d,#10
	db #0d,#08,#81,#1e,#08,#80,#0b,#08
	db #0d,#10,#81,#1e,#08,#1e,#08,#ff
.l08b2
	db #83,#36,#60,#39,#08,#36,#08,#34
	db #08,#36,#68,#39,#08,#36,#08,#34
	db #08,#36,#68,#39,#08,#36,#08,#39
.l08d1 equ $ + 7
	db #08,#38,#80,#7f,#08,#94,#ff,#82
	db #91,#21,#10,#21,#10,#21,#10,#21
	db #10,#23,#10,#23,#10,#23,#10,#23
.l08e4 equ $ + 2
	db #10,#ff,#82,#91,#23,#10,#23,#10
	db #23,#10,#23,#10,#25,#10,#25,#10
.l08f7 equ $ + 5
	db #25,#10,#25,#10,#ff,#80,#09,#10
	db #09,#10,#81,#1e,#20,#80,#04,#10
	db #04,#10,#81,#1e,#20,#80,#06,#10
	db #06,#10,#81,#1e,#20,#80,#06,#10
	db #06,#10,#81,#1e,#20,#80,#09,#10
	db #09,#10,#81,#1e,#20,#80,#04,#10
	db #04,#10,#81,#1e,#20,#80,#0b,#10
	db #0b,#10,#81,#1e,#20,#80,#0b,#10
.l0938 equ $ + 6
	db #0b,#10,#81,#1e,#20,#ff,#82,#91
	db #21,#08,#21,#08,#21,#08,#21,#08
	db #21,#08,#21,#08,#21,#08,#21,#08
	db #95,#20,#08,#20,#08,#20,#08,#20
	db #08,#20,#08,#20,#08,#20,#08,#20
	db #08,#22,#08,#22,#08,#22,#08,#22
	db #08,#22,#08,#22,#08,#22,#08,#22
	db #08,#22,#08,#22,#08,#22,#08,#22
	db #08,#22,#08,#22,#08,#22,#08,#22
	db #08,#91,#21,#08,#21,#08,#21,#08
	db #21,#08,#21,#08,#21,#08,#21,#08
	db #21,#08,#95,#20,#08,#20,#08,#20
	db #08,#20,#08,#20,#08,#20,#08,#20
	db #08,#20,#08,#91,#23,#08,#23,#08
	db #23,#08,#23,#08,#23,#08,#23,#08
	db #23,#08,#23,#08,#23,#08,#23,#08
	db #23,#08,#23,#08,#23,#08,#23,#08
.l09bf equ $ + 5
	db #23,#08,#23,#08,#ff,#82,#2d,#08
	db #2c,#10,#2a,#10,#28,#10,#25,#28
	db #23,#08,#25,#08,#28,#08,#25,#48
	db #7f,#40,#2d,#08,#2c,#10,#2a,#10
	db #28,#10,#25,#18,#23,#08,#25,#08
	db #28,#08,#2a,#08,#2d,#08,#2a,#48
.l09ed equ $ + 3
	db #7f,#40,#ff,#80,#0e,#08,#0e,#08
	db #81,#1e,#08,#80,#09,#10,#09,#08
	db #81,#1e,#08,#80,#0b,#10,#0b,#08
.l0a08 equ $ + 6
	db #81,#1e,#08,#1e,#08,#ff,#82,#2d
	db #08,#2d,#10,#2d,#10,#28,#10,#27
.l0a18 equ $ + 6
	db #10,#28,#08,#2a,#10,#ff,#82,#93
	db #21,#08,#21,#10,#91,#21,#10,#21
	db #10,#23,#10,#23,#10,#23,#08,#ff
.l0a2a
	db #ff
.l0a2b
	db l070a,l0730,l0745,l074a
	db l077a,l079a,l07b1,l07dd
	db l0822,l086e,l0891,l08b2
	db l08d1,l08e4,l08f7,l0938
	db l09bf,l09ed,l0a08,l0a18
	db l0a2a
;	db #0a,#30,#45,#4a,#7a,#9a,#b1,#dd
;	db #22,#6e,#91,#b2,#d1,#e4,#f7,#38
;	db #bf,#ed,#08,#18,#2a
.l0a40
;	db #07,#07,#07,#07,#07,#07,#07,#07
;	db #08,#08,#08,#08,#08,#08,#08,#09
;	db #09,#09,#0a,#0a,#0a
	db l070a/&100,l0730/&100,l0745/&100,l074a/&100
	db l077a/&100,l079a/&100,l07b1/&100,l07dd/&100
	db l0822/&100,l086e/&100,l0891/&100,l08b2/&100
	db l08d1/&100,l08e4/&100,l08f7/&100,l0938/&100
	db l09bf/&100,l09ed/&100,l0a08/&100,l0a18/&100
	db l0a2a/&100
.l0a55
	dw l0a5b,l0a81,l0aa7
.l0a5b
	db #83,#00,#04,#88,#00,#07,#07,#83
	db #09,#0a,#83,#00,#04,#83,#00,#04
	db #07,#07,#83,#09,#0a,#0e,#0e,#83
	db #09,#0a,#fe,#02,#83,#00,#04,#83
	db #00,#04,#07,#07,#11,#ff
.l0a81
	db #83,#01,#05,#88,#01,#06,#06,#83
	db #0c,#0d,#83,#01,#05,#83,#01,#05
	db #06,#06,#83,#0c,#0d,#0f,#0f,#83
	db #0c,#0d,#fe,#02,#83,#01,#05,#83
	db #01,#05,#06,#06,#13,#ff
.l0aa7
	db #fe,#f4,#84,#02,#03,#03,#fe,#00
	db #08,#0b,#fe,#f4,#03,#03,#fe,#00
	db #08,#0b,#10,#10,#0b,#fe,#f6,#03
	db #03,#fe,#02,#08,#12,#ff
.l0ac5
	db #7f,#fe,#01,#ff,#7f,#00,#04,#04
	db #00,#01,#7f,#fd,#01,#ff,#7f,#00
	db #00,#3c,#00,#03,#7f,#fd,#00,#ff
	db #7f,#00,#04,#01,#00,#01,#7f,#ff
	db #63,#ff,#7f,#0a,#03,#01,#00,#01
	db #8a,#21,#39,#00,#00,#00,#00,#00
	db #8a,#19,#31,#00,#00,#00,#00,#00
	db #8a,#29,#49,#00,#00,#00,#00,#00
	db #89,#61,#00,#00,#00,#00,#00,#00
	db #8a,#19,#41,#00,#00,#00,#00,#00
.l0b15
	db #7f,#fc,#01,#ff,#7f,#00,#04,#01
	db #00,#01,#49,#00,#0a,#06,#fc,#5d
	db #db,#5d,#00,#04,#01,#00,#03,#8c
	db #02,#1e,#7f,#fe,#01,#ff,#7f,#00
	db #00,#03,#00,#01,#71,#01,#1e,#09
	db #fd,#01,#ff,#7f,#00,#00,#06,#00
	db #01,#01,#00,#28,#7f,#f8,#01,#ff
	db #7f,#05,#04,#33,#00,#03,#64,#02
	db #0a,#7f,#ec,#01,#ff,#7f,#00,#00
	db #02,#00,#02,#50,#00,#04,#7f,#fc
	db #01,#ff,#7f,#00,#00,#02,#00,#02
	db #50,#00,#04,#7f,#fc,#01,#ff,#7f
	db #00,#00,#02,#00,#02,#64,#00,#04
	db #7f,#fe,#01,#ff,#7f,#00,#00,#b3
	db #00,#02,#68,#00
;
; #1586
; call #0064	; init
;
; call &0067	; play
;
; #0d25
; ld a,(#006a)
; and a
; jr nz,#0d64
;
.music_info
	db "Real Stunt Experts (1989)(Alternative Software)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
