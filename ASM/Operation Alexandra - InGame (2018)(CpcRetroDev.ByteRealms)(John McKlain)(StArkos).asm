; Music of Operation Alexandra - InGame (2018)(CpcRetroDev.ByteRealms)(John McKlain)(StArkos)
; Ripped by Megachur the 02/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OPERATAG.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6f20-#0762		; music player reallocated by Megachur
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

; StArkos_player_begin	equ #3089
	jp l3787
	jp l3093
	jp l37dc
.l3092
	db #00
;
.play_music
.l3093
;
	xor a
	ld (l3092),a
.l3098 equ $ + 1
	ld a,#01
	dec a
	jp nz,l3264
.l309e equ $ + 1
	ld a,#01
	dec a
	jr nz,l310a
.l30a3 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l30b1
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l30b1
	rra
	jr nc,l30b9
	ld de,l315a
	ldi
.l30b9
	rra
	jr nc,l30c1
	ld de,l31bf
	ldi
.l30c1
	rra
	jr nc,l30c9
	ld de,l3224
	ldi
.l30c9
	ld de,l3139
	ldi
	ldi
	ld de,l319e
	ldi
	ldi
	ld de,l3203
	ldi
	ldi
	rra
	jr nc,l30e6
	ld de,l3109
	ldi
.l30e6
	rra
	jr nc,l30f1
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l30f5),de
.l30f1
	ld (l30a3),hl
.l30f5 equ $ + 1
	ld hl,#0000
	ld (l3113),hl
	ld a,#01
	ld (l310e),a
	ld (l3134),a
	ld (l3199),a
	ld (l31fe),a
.l3109 equ $ + 1
	ld a,#01
.l310a
	ld (l309e),a
.l310e equ $ + 1
	ld a,#01
	dec a
	jr nz,l3130
.l3113 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l312d
	srl a
	jr nz,l3121
	ld a,(hl)
	inc hl
.l3121
	jr nc,l3128
	ld (l3092),a
	jr l312b
.l3128
	ld (l3263),a
.l312b
	ld a,#01
.l312d
	ld (l3113),hl
.l3130
	ld (l310e),a
.l3134 equ $ + 1
	ld a,#01
	dec a
	jr nz,l3195
.l3139 equ $ + 1
	ld hl,#0000
	call l3633
	ld (l3139),hl
	jr c,l3195
	ld a,d
	rra
	jr nc,l314c
	and #0f
	ld (l333c),a
.l314c
	rl d
	jr nc,l3154
	ld (l332a),ix
.l3154
	rl d
	jr nc,l3193
	ld a,e
.l315a equ $ + 1
	add #00
	ld (l333b),a
	ld hl,#0000
	ld (l3327),hl
	rl d
	jr c,l3173
.l3169 equ $ + 1
	ld hl,#0000
	ld a,(l334c)
	ld (l3344),a
	jr l3190
.l3173
	ld l,b
	add hl,hl
.l3176 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l334c),a
	ld (l3344),a
	ld a,(hl)
	or a
	jr z,l318c
	ld (l3455),a
.l318c
	inc hl
	ld (l3169),hl
.l3190
	ld (l333e),hl
.l3193
	ld a,#01
.l3195
	ld (l3134),a
.l3199 equ $ + 1
	ld a,#01
	dec a
	jr nz,l31fa
.l319e equ $ + 1
	ld hl,#0000
	call l3633
	ld (l319e),hl
	jr c,l31fa
	ld a,d
	rra
	jr nc,l31b1
	and #0f
	ld (l32dd),a
.l31b1
	rl d
	jr nc,l31b9
	ld (l32cb),ix
.l31b9
	rl d
	jr nc,l31f8
	ld a,e
.l31bf equ $ + 1
	add #00
	ld (l32dc),a
	ld hl,#0000
	ld (l32c8),hl
	rl d
	jr c,l31d8
.l31ce equ $ + 1
	ld hl,#0000
	ld a,(l32ed)
	ld (l32e5),a
	jr l31f5
.l31d8
	ld l,b
	add hl,hl
.l31db equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l32ed),a
	ld (l32e5),a
	ld a,(hl)
	or a
	jr z,l31f1
	ld (l3455),a
.l31f1
	inc hl
	ld (l31ce),hl
.l31f5
	ld (l32df),hl
.l31f8
	ld a,#01
.l31fa
	ld (l3199),a
.l31fe equ $ + 1
	ld a,#01
	dec a
	jr nz,l325f
.l3203 equ $ + 1
	ld hl,#0000
	call l3633
	ld (l3203),hl
	jr c,l325f
	ld a,d
	rra
	jr nc,l3216
	and #0f
	ld (l3281),a
.l3216
	rl d
	jr nc,l321e
	ld (l326f),ix
.l321e
	rl d
	jr nc,l325d
	ld a,e
.l3224 equ $ + 1
	add #00
	ld (l3280),a
	ld hl,#0000
	ld (l326c),hl
	rl d
	jr c,l323d
.l3233 equ $ + 1
	ld hl,#0000
	ld a,(l3291)
	ld (l3289),a
	jr l325a
.l323d
	ld l,b
	add hl,hl
.l3240 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l3291),a
	ld (l3289),a
	ld a,(hl)
	or a
	jr z,l3256
	ld (l3455),a
.l3256
	inc hl
	ld (l3233),hl
.l325a
	ld (l3283),hl
.l325d
	ld a,#01
.l325f
	ld (l31fe),a
.l3263 equ $ + 1
	ld a,#01
.l3264
	ld (l3098),a
	ld iy,l346c
.l326c equ $ + 1
	ld hl,#0000
.l326f equ $ + 1
	ld de,#0000
	add hl,de
	ld (l326c),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l3281 equ $ + 2
.l3280 equ $ + 1
	ld de,#0000
.l3283 equ $ + 1
	ld hl,#0000
	call l3477
.l3289 equ $ + 1
	ld a,#01
	dec a
	jr nz,l3292
	ld (l3283),hl
.l3291 equ $ + 1
	ld a,#06
.l3292
	ld (l3289),a
	ld de,#0000
	exx
	ld de,#0000
.l329d equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l32c0
	ld a,#01
	ld (l35a6),a
	call l3477
	xor a
	ld (l35a6),a
	ld a,l
	or h
	jr z,l32b8
.l32b4 equ $ + 1
	ld a,#01
	dec a
	jr nz,l32bd
.l32b8
	ld (l329d),hl
	ld a,#06
.l32bd
	ld (l32b4),a
.l32c0
	ld a,lx
	ex af,af'
	ld iy,l346a
.l32c8 equ $ + 1
	ld hl,#0000
.l32cb equ $ + 1
	ld de,#0000
	add hl,de
	ld (l32c8),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l32dd equ $ + 2
.l32dc equ $ + 1
	ld de,#0000
.l32df equ $ + 1
	ld hl,#0000
	call l3477
.l32e5 equ $ + 1
	ld a,#01
	dec a
	jr nz,l32ee
	ld (l32df),hl
.l32ed equ $ + 1
	ld a,#06
.l32ee
	ld (l32e5),a
	ld de,#0000
	exx
	ld de,#0000
.l32f9 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l331c
	ld a,#01
	ld (l35a6),a
	call l3477
	xor a
	ld (l35a6),a
	ld a,l
	or h
	jr z,l3314
.l3310 equ $ + 1
	ld a,#01
	dec a
	jr nz,l3319
.l3314
	ld (l32f9),hl
	ld a,#06
.l3319
	ld (l3310),a
.l331c
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l3468
.l3327 equ $ + 1
	ld hl,#0000
.l332a equ $ + 1
	ld de,#0000
	add hl,de
	ld (l3327),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l333c equ $ + 2
.l333b equ $ + 1
	ld de,#0000
.l333e equ $ + 1
	ld hl,#0000
	call l3477
.l3344 equ $ + 1
	ld a,#01
	dec a
	jr nz,l334d
	ld (l333e),hl
.l334c equ $ + 1
	ld a,#06
.l334d
	ld (l3344),a
	ld de,#0000
	exx
	ld de,#0000
.l3358 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l337b
	ld a,#01
	ld (l35a6),a
	call l3477
	xor a
	ld (l35a6),a
	ld a,l
	or h
	jr z,l3373
.l336f equ $ + 1
	ld a,#01
	dec a
	jr nz,l3378
.l3373
	ld (l3358),hl
	ld a,#06
.l3378
	ld (l336f),a
.l337b
	ex af,af'
	or lx
.l337e
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l3468
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	out (c),a
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	ld a,(hl)
.l3455 equ $ + 1
	cp #ff
	ret z
	ld (l3455),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l3468
	nop
	nop
.l346a
	nop
	nop
.l346c
	nop
	nop
.l346e
	nop
.l346f
	nop
	nop
	nop
	nop
	nop
.l3474
	nop
	nop
.l3476
	nop
.l3477
	ld b,(hl)
	inc hl
	rr b
	jp c,l34d5
	rr b
	jr c,l34a5
	ld a,b
	and #0f
	jr nz,l348e
	ld (iy+#07),a
	ld lx,#09
	ret
.l348e
	ld lx,#08
	sub d
	jr nc,l3495
	xor a
.l3495
	ld (iy+#07),a
	rr b
	call l3607
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l34a5
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l34b5
	ld (l346e),a
	ld lx,#00
.l34b5
	ld a,b
	and #0f
	sub d
	jr nc,l34bc
	xor a
.l34bc
	ld (iy+#07),a
	bit 5,c
	jr nz,l34c6
	inc lx
	ret
.l34c6
	rr b
	bit 6,c
	call l35f9
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l34d5
	rr b
	jr nc,l34e8
	ld a,(l3344)
	ld c,a
	ld a,(l334c)
	cp c
	jr nz,l34e8
	ld a,#fe
	ld (l3455),a
.l34e8
	bit 1,b
	jp nz,l35a1
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l3476),a
	bit 0,b
	jr z,l3557
	bit 2,b
	call l35f9
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l3517),a
	ld a,b
	exx
.l3517 equ $ + 1
	jr l3518
.l3518
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	jr nc,l3537
	inc hl
.l3537
	bit 5,a
	jr z,l3547
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l3547
	ld (l3474),hl
	exx
.l354b
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l346e),a
	ld lx,#00
	ret
.l3557
	bit 2,b
	call l35f9
	ld (l3474),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l356b),a
	ld a,b
	exx
.l356b equ $ + 1
	jr l356c
.l356c
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	bit 5,a
	jr z,l3598
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l3598
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l354b
.l35a1
	bit 0,b
	jr z,l35b5
.l35a6 equ $ + 1
	ld a,#00
	or a
	jr z,l35ae
	ld hl,#0000
	ret
.l35ae
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l3477
.l35b5
	ld (iy+#07),#10
	bit 5,b
	jr nz,l35c2
	ld lx,#09
	jr l35d5
.l35c2
	ld lx,#08
	ld hx,e
	bit 2,b
	call l35f9
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l35d5
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l3476),a
	rr b
	rr b
	bit 2,b
	call l35f9
	ld (l3474),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l346e),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l35f9
	jr z,l3607
	ld a,(hl)
	inc hl
	exx
	add e
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld h,a
	ret
.l3607
	bit 4,b
	jr z,l3617
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld d,a
	exx
.l3617
	ld a,e
	bit 3,b
	jr z,l3624
	add (hl)
	inc hl
	cp #90
	jr c,l3624
	ld a,#8f
.l3624
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l3667
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l3633
	ld a,(hl)
	inc hl
	srl a
	jr c,l365a
	sub #20
	jr c,l3664
	jr z,l3656
	dec a
	ld e,a
.l3641
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l364f
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l364f
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l3656
	ld e,(hl)
	inc hl
	jr l3641
.l365a
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l3664
	add #20
	ret
.l3667
	dw #0eee,#0e18,#0d4d,#0c8e
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
	dw #000f,#000e,#000d,#000d
	dw #000c,#000b,#000b,#000a
	dw #0009,#0009,#0008,#0008
	dw #0007,#0007,#0007,#0006
	dw #0006,#0006,#0005,#0005
	dw #0005,#0004,#0004,#0004
	dw #0004,#0004,#0003,#0003
	dw #0003,#0003,#0003,#0002
	dw #0002,#0002,#0002,#0002
	dw #0002,#0002,#0002,#0002
	dw #0001,#0001,#0001,#0001
	dw #0001,#0001,#0001,#0001
;
.real_init_music
.l3787
;
	ld hl,#0009
	add hl,de
	ld de,l3263
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l3176),hl
	ld (l31db),hl
	ld (l3240),hl
	add hl,bc
	ld de,l3109
	ldi
	ld de,l315a
	ldi
	ld de,l31bf
	ldi
	ld de,l3224
	ldi
	ld de,l30f5
	ldi
	ldi
	ld (l30a3),hl
	ld a,#01
	ld (l3098),a
	ld (l309e),a
	ld a,#ff
	ld (l3476),a
	ld hl,(l3176)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l333e),hl
	ld (l32df),hl
	ld (l3283),hl
	ret
;
.stop_music
.l37dc
;
	ld hl,l346f
	ld bc,#0300
.l37e2
	ld (hl),c
	inc hl
	djnz l37e2
	ld a,#3f
	jp l337e

; StArkos_player_end	equ #37eb

	ds #6f26-$,#00

.l6f26
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#08,#74,#00,#3c,#6f,#45,#6f
	db #5d,#6f,#75,#6f,#7f,#6f,#00,#00
	db #00,#00,#00,#00,#0d,#3e,#6f,#02
	db #00,#70,#0c,#34,#b0,#01,#00,#30
	db #ac,#ff,#ff,#2c,#a8,#02,#00,#28
	db #a8,#fe,#ff,#28,#0d,#52,#6f,#01
	db #00,#6a,#2b,#0a,#6c,#07,#6c,#03
	db #6c,#f4,#2c,#2c,#28,#24,#24,#20
	db #1c,#1c,#14,#14,#0d,#3e,#6f,#01
	db #00,#32,#0b,#26,#0b,#00,#0d,#77
	db #6f,#01,#00,#b4,#f8,#ff,#38,#30
	db #30,#2c,#2c,#a8,#03,#00,#a8,#03
	db #00,#a8,#01,#00,#28,#a8,#ff,#ff
	db #a8,#fd,#ff,#a8,#fd,#ff,#a8,#ff
	db #ff,#28,#a8,#01,#00,#0d,#89,#6f
	db #10,#00,#00,#0c,#c6,#6f,#00,#44
	db #71,#cb,#71,#44,#71,#18,#00,#c7
	db #6f,#02,#70,#9d,#70,#40,#00,#09
	db #71,#02,#70,#5f,#71,#01,#b3,#6f
	db #00,#aa,#e5,#00,#00,#01,#0a,#71
	db #75,#79,#02,#aa,#47,#02,#71,#02
	db #79,#02,#c2,#45,#0a,#7f,#7b,#79
	db #02,#aa,#47,#02,#71,#02,#79,#02
	db #c2,#45,#0a,#7f,#7b,#7f,#02,#b0
	db #47,#02,#75,#02,#79,#02,#ba,#45
	db #0a,#79,#7b,#79,#02,#b4,#47,#02
	db #71,#02,#6f,#00,#7a,#e1,#00,#00
	db #02,#42,#00,#7a,#6d,#03,#42,#0b
	db #7a,#61,#02,#42,#00,#7a,#6d,#03
	db #42,#0b,#80,#61,#02,#42,#00,#80
	db #6d,#03,#42,#0b,#80,#61,#02,#42
	db #00,#80,#43,#42,#00,#8a,#41,#42
	db #00,#8a,#6d,#03,#42,#0b,#8a,#61
	db #02,#42,#00,#8a,#6d,#03,#42,#0b
	db #88,#61,#02,#42,#00,#88,#6d,#03
	db #42,#0b,#88,#61,#02,#42,#00,#88
	db #43,#42,#00,#84,#41,#42,#00,#84
	db #6d,#03,#42,#0b,#84,#61,#02,#42
	db #00,#84,#6d,#03,#42,#0b,#80,#61
	db #02,#42,#00,#80,#6d,#03,#42,#0b
	db #80,#61,#02,#42,#00,#80,#43,#42
	db #00,#7e,#41,#42,#00,#7e,#6d,#03
	db #42,#0b,#7e,#61,#02,#42,#00,#7e
	db #6d,#03,#42,#0b,#88,#61,#02,#42
	db #00,#88,#6d,#03,#42,#0b,#88,#61
	db #02,#42,#00,#88,#43,#42,#00,#92
	db #e7,#00,#00,#04,#42,#00,#42,#00
	db #42,#00,#53,#42,#00,#59,#5d,#61
	db #42,#00,#42,#00,#42,#00,#53,#42
	db #00,#42,#00,#42,#00,#6b,#42,#00
	db #42,#00,#42,#00,#6b,#42,#00,#67
	db #63,#61,#42,#00,#42,#00,#42,#00
	db #59,#42,#00,#42,#00,#42,#00,#6b
	db #42,#00,#42,#00,#42,#00,#6b,#42
	db #00,#67,#63,#67,#42,#00,#42,#00
	db #42,#00,#59,#42,#00,#42,#00,#42
	db #00,#63,#42,#00,#42,#00,#42,#00
	db #63,#42,#00,#61,#63,#61,#42,#00
	db #42,#00,#42,#00,#59,#42,#00,#42
	db #00,#42,#00,#aa,#e5,#00,#00,#01
	db #0a,#71,#75,#79,#02,#aa,#47,#02
	db #71,#02,#79,#02,#c2,#45,#0a,#7f
	db #7b,#79,#02,#aa,#47,#02,#71,#02
	db #79,#02,#c2,#45,#0a,#7f,#7b,#7f
	db #02,#b0,#47,#02,#7f,#02,#87,#02
	db #c8,#45,#0a,#87,#83,#81,#02,#b4
	db #47,#02,#71,#02,#6f,#00,#7a,#f1
	db #00,#00,#01,#02,#42,#0f,#02,#42
	db #0d,#02,#42,#0b,#02,#42,#09,#02
	db #42,#07,#02,#42,#05,#02,#42,#03
	db #00,#92,#e7,#00,#00,#04,#42,#00
	db #42,#00,#42,#00,#53,#42,#00,#59
	db #5d,#61,#42,#00,#42,#00,#42,#00
	db #53,#42,#00,#42,#00,#42,#00,#6b
	db #42,#00,#42,#00,#42,#00,#6b,#42
	db #00,#67,#63,#61,#42,#00,#42,#00
	db #42,#00,#61,#42,#00,#42,#00,#42
	db #00,#6b,#42,#00,#42,#00,#42,#00
	db #6b,#42,#00,#67,#63,#67,#42,#00
	db #42,#00,#42,#00,#59,#42,#00,#42
	db #00,#42,#00,#71,#42,#00,#42,#00
	db #42,#00,#71,#42,#00,#6f,#6b,#69
	db #42,#00,#42,#00,#42,#00,#61,#42
	db #00,#42,#00,#42,#00,#7a,#e1,#00
	db #00,#02,#42,#00,#7a,#6d,#03,#42
	db #0b,#7a,#61,#02,#42,#00,#7a,#6d
	db #03,#42,#0b,#7a,#61,#02,#42,#00
	db #7a,#6d,#03,#42,#0b,#7a,#61,#02
.l71f4 equ $ + 6
	db #42,#00,#7a,#43,#42,#00,#41,#54
	db #31,#30,#01,#40,#42,#0f,#02,#0a
	db #b1,#00,#0e,#72,#17,#72,#31,#72
	db #43,#72,#54,#72,#71,#72,#91,#72
	db #00,#00,#00,#00,#00,#00,#0d,#10
	db #72,#02,#00,#38,#b8,#ff,#ff,#b8
	db #fe,#ff,#b8,#ff,#ff,#38,#b8,#01
	db #00,#b8,#02,#00,#b8,#01,#00,#38
	db #0d,#1a,#72,#01,#00,#76,#21,#0c
	db #38,#34,#30,#2c,#1c,#64,#0c,#20
	db #1c,#18,#0d,#33,#72,#01,#00,#74
	db #13,#78,#0c,#34,#30,#64,#13,#68
	db #0c,#24,#20,#0d,#10,#72,#01,#00
	db #76,#22,#0a,#76,#22,#08,#72,#22
	db #04,#72,#22,#02,#2e,#22,#2e,#02
	db #26,#02,#26,#02,#22,#02,#22,#02
	db #0d,#56,#72,#01,#00,#70,#0c,#b4
	db #ff,#ff,#f0,#ff,#ff,#0c,#ac,#ff
	db #ff,#6c,#0c,#a8,#01,#00,#e8,#01
	db #00,#0c,#a0,#01,#00,#60,#0c,#1c
	db #0d,#73,#72,#01,#00,#76,#22,#0a
	db #72,#22,#24,#72,#22,#04,#6e,#22
	db #18,#2e,#22,#6e,#22,#24,#66,#22
	db #fc,#66,#22,#18,#22,#02,#22,#02
	db #0d,#93,#72,#10,#00,#00,#00,#e8
	db #73,#00,#e9,#73,#00,#74,#0f,#74
	db #00,#e9,#73,#00,#74,#0f,#74,#0e
	db #fc,#fc,#fc,#e9,#73,#00,#74,#0f
	db #74,#00,#e9,#73,#00,#74,#0f,#74
	db #0e,#00,#00,#00,#e9,#73,#2a,#74
	db #0f,#74,#00,#e9,#73,#2a,#74,#0f
	db #74,#0e,#fc,#fc,#fc,#e9,#73,#2a
	db #74,#0f,#74,#00,#e9,#73,#2a,#74
	db #0f,#74,#0e,#00,#00,#00,#e9,#73
	db #2a,#74,#45,#74,#00,#e9,#73,#2a
	db #74,#60,#74,#0e,#fc,#fc,#fc,#e9
	db #73,#2a,#74,#45,#74,#00,#e9,#73
	db #2a,#74,#60,#74,#0e,#00,#00,#00
	db #e9,#73,#2a,#74,#45,#74,#00,#e9
	db #73,#2a,#74,#60,#74,#0e,#fc,#fc
	db #fc,#e9,#73,#2a,#74,#45,#74,#00
	db #e9,#73,#2a,#74,#60,#74,#0e,#00
	db #00,#00,#e9,#73,#2a,#74,#0f,#74
	db #00,#e9,#73,#2a,#74,#0f,#74,#0e
	db #fc,#fc,#fc,#e9,#73,#2a,#74,#0f
	db #74,#00,#e9,#73,#2a,#74,#0f,#74
	db #0e,#00,#00,#00,#e9,#73,#2a,#74
	db #0f,#74,#00,#e9,#73,#2a,#74,#0f
	db #74,#0e,#fc,#fc,#fc,#e9,#73,#2a
	db #74,#0f,#74,#00,#e9,#73,#2a,#74
	db #0f,#74,#0e,#00,#00,#07,#e9,#73
	db #00,#74,#e9,#73,#08,#08,#e9,#73
	db #7b,#74,#e9,#73,#0c,#fc,#05,#e9
	db #73,#00,#74,#e9,#73,#08,#03,#e9
	db #73,#7b,#74,#e9,#73,#0c,#00,#07
	db #e9,#73,#2a,#74,#e9,#73,#08,#08
	db #e9,#73,#95,#74,#e9,#73,#0e,#fc
	db #fc,#05,#e9,#73,#2a,#74,#e9,#73
	db #08,#03,#e9,#73,#95,#74,#e9,#73
	db #0e,#00,#00,#00,#e9,#73,#2a,#74
	db #0f,#74,#00,#e9,#73,#2a,#74,#0f
	db #74,#00,#e9,#73,#00,#74,#0f,#74
	db #00,#e9,#73,#00,#74,#0f,#74,#01
	db #f8,#72,#00,#92,#f1,#00,#00,#01
	db #42,#00,#02,#42,#0f,#04,#42,#0d
	db #02,#42,#0b,#04,#42,#0d,#04,#42
	db #0f,#00,#7a,#e1,#00,#00,#02,#06
	db #42,#1f,#02,#7a,#41,#06,#42,#1f
	db #00,#c2,#ef,#00,#00,#03,#6b,#b0
	db #4d,#79,#c2,#4b,#6b,#c2,#49,#6b
	db #b0,#47,#79,#c2,#49,#6b,#c2,#4b
	db #6b,#c2,#4d,#6b,#7a,#e1,#00,#00
	db #02,#06,#8e,#63,#04,#42,#07,#7a
	db #61,#02,#06,#42,#1f,#02,#8e,#63
	db #04,#42,#07,#42,#0b,#42,#0f,#c2
	db #e5,#00,#00,#05,#02,#42,#0b,#02
	db #b4,#45,#02,#42,#0b,#02,#ba,#45
	db #02,#42,#0b,#02,#c4,#45,#02,#42
	db #0b,#00,#c2,#e5,#00,#00,#05,#02
	db #42,#0b,#02,#b4,#45,#02,#42,#0b
	db #02,#ba,#45,#02,#42,#0b,#02,#ac
	db #45,#02,#42,#0b,#00,#7a,#e1,#00
	db #00,#02,#06,#42,#1f,#42,#00,#7a
	db #41,#06,#42,#1f,#42,#00,#aa,#63
	db #06,#42,#07,#42,#0b,#42,#0f,#7a
	db #e1,#00,#00,#02,#06,#8e,#63,#04
	db #42,#07,#7a,#61,#02,#06,#42,#1f
	db #02,#aa,#63,#06,#42,#07,#42,#0b
	db #42,#0f
; .l74b0		; sound fx ?
	; db #41,#54,#31,#30,#01,#40
	; db #42,#0f,#02,#ff,#28,#01,#d6,#74
	; db #df,#74,#eb,#74,#f5,#74,#0b,#75
	; db #23,#75,#3b,#75,#51,#75,#5f,#75
	; db #7b,#75,#95,#75,#b4,#75,#c6,#75
	; db #00,#00,#00,#00,#00,#00,#0d,#d8
	; db #74,#02,#00,#3a,#3b,#2e,#0b,#00
	; db #1a,#0b,#0d,#d8,#74,#01,#00,#38
	; db #74,#fc,#70,#f8,#0d,#d8,#74,#03
	; db #00,#3e,#3a,#7a,#3a,#ff,#76,#3a
	; db #fd,#6e,#3a,#fa,#26,#1a,#1e,#1a
	; db #16,#1a,#0d,#d8,#74,#01,#00,#7e
	; db #22,#fd,#36,#22,#70,#04,#64,#08
	; db #5c,#0e,#02,#20,#5e,#22,#08,#56
	; db #22,#0e,#0d,#d8,#74,#01,#00,#7e
	; db #23,#0e,#76,#23,#09,#6e,#23,#05
	; db #2a,#23,#02,#20,#5e,#23,#09,#56
	; db #23,#05,#0d,#d8,#74,#01,#00,#7e
	; db #2d,#24,#5c,#18,#5c,#18,#6c,#24
	; db #5c,#18,#58,#18,#58,#18,#58,#18
	; db #0d,#d8,#74,#0f,#00,#7a,#30,#f4
	; db #66,#2c,#f6,#5a,#2a,#fa,#0d,#d8
	; db #74,#02,#00,#3c,#74,#03,#6c,#05
	; db #64,#07,#1c,#30,#68,#03,#60,#05
	; db #5c,#07,#14,#24,#5c,#03,#54,#05
	; db #50,#07,#0d,#d8,#74,#04,#00,#3c
	; db #78,#03,#74,#07,#70,#0c,#6c,#07
	; db #68,#0c,#64,#07,#60,#0c,#5c,#07
	; db #58,#0c,#54,#07,#0d,#d8,#74,#01
	; db #00,#3c,#74,#0c,#02,#20,#b4,#01
	; db #00,#ec,#01,#00,#0c,#02,#20,#28
	; db #60,#0c,#02,#20,#9c,#01,#00,#d4
	; db #01,#00,#0c,#0d,#d8,#74,#01,#00
	; db #fc,#03,#00,#fe,#90,#03,#00,#b0
	; db #03,#00,#90,#03,#00,#0d,#d8,#74
	; db #02,#00,#3c,#6c,#0c,#7c,#03,#6c
	; db #10,#7c,#07,#6c,#14,#7c,#0c,#6c
	; db #18,#68,#0c,#64,#18,#60,#0c,#5c
	; db #18,#58,#0c,#0d,#d8,#74,#40,#00
	; db #00,#00,#f4,#75,#00,#f5,#75,#f5
	; db #75,#f5,#75,#01,#ea,#75,#00,#42
	; db #80,#00,#00,#00,#11,#00,#b1,#51
	; db #00,#17,#ca,#52,#00,#15,#d8,#31
	; db #10,#0d,#96,#21,#0b,#05,#a8,#21
	; db #23,#05,#cf,#21,#04,#08,#c9,#21
	; db #08,#0c,#de,#21,#1c,#0c,#df,#21
	; db #1c,#13,#c6,#21,#14,#09,#c4,#21
	; db #14,#08,#ff,#d5,#00,#8c,#d6,#08
	; db #8d,#ca,#00,#94,#cf,#21,#91,#e0
	; db #00,#83,#e2,#00,#87,#d9,#19,#8c
	; db #bf,#16,#92,#d2,#21,#8c,#dc,#1b
	; db #8c,#dd,#20,#8c,#93,#03,#85,#94
	; db #1b,#85,#c9,#19,#94,#b4,#fe,#11
	; db #0a,#12,#1b,#0d,#22,#12,#26,#92
	; db #b6,#10,#8d,#ba,#15,#8c,#c7,#24
	; db #88,#cf,#1c,#88,#ff,#ff,#98,#1c
	; db #0c,#01,#f7,#f7,#a8,#1c,#0c,#01
	; db #f9,#ff,#38,#06,#00,#28,#48,#97
	; db #ff,#ff,#10,#60,#b1,#41,#00,#17
	; db #ca,#42,#00,#15,#d0,#41,#04,#11
	; db #ce,#41,#00,#0c,#d8,#31,#20,#09
	; db #d1,#31,#04,#07,#c4,#12,#04,#05
	; db #ff,#9d,#20,#94,#9c,#22,#90,#b6
	; db #03,#14,#0d,#14,#17,#14,#1d,#0f
	; db #17,#0b,#0d,#0b,#03,#8b,#9b,#00
	; db #91,#e1,#00,#85,#e0,#00,#89,#a6
	; db #26,#88,#ab,#24,#86,#99,#07,#85
	; db #9a,#0f,#85,#98,#17,#85,#97,#1f
	; db #85,#df,#02,#10,#06,#11,#0e,#11
	; db #16,#11,#1e,#91,#c0,#07,#86,#de
	; db #00,#10,#03,#91,#c9,#1c,#87,#ca
	; db #1d,#88,#c7,#1c,#88,#ff,#27,#05
	; db #b4,#ff,#30,#10,#00,#28,#48,#97
	; db #30,#44,#00,#28,#48,#97,#ff,#ff
	; db #00,#00
;
; play #308c=#3093
;
; #0b42
; ld de,#6f26	; menu & end game
; call #3787	; init
;
; #0122
; ld de,#71f4	; ingame
; call #3787
;
;
.init_music		; added by Megachur
;
	ld de,l6f26
	or a
	jp z,real_init_music
	ld de,l71f4
	; dec a
	; jp z,real_init_music
	; ld de,l74b0			; sound fx ?
	jp real_init_music
;
.music_info
	db "Operation Alexandra - InGame (2018)(CpcRetroDev.ByteRealms)(John McKlain)",0
	db "StArkos",0

	read "music_end.asm"
