; Music of Postman Pat 3 (1992)(Alternative Software)()()
; Ripped by Megachur the 18/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "POSTPAT3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #2800
FIRST_THEME				equ 1
LAST_THEME				equ 1

	read "music_header.asm"

	push hl
	push de
	push bc
	push af
	push ix
	call l2814
	pop ix
	pop af
	pop bc
	pop de
	pop hl
	ret
.l2813 equ $ + 3
.l2812 equ $ + 2
.l2811 equ $ + 1
.l2810
	db #01,#00,#00,#00	; modified 2812 #01,#00
;
.play_music
.l2814
;
	ld a,(l2813)
	and a
	jr nz,l2882
	ld a,(l2811)
	and a
	jr z,l2882
	ld (l2e0b),a
	push af
	add a
	ld hl,l34ab
	ld e,a
	ld d,#00
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(l2e0c)
	bit 0,a
	jr nz,l2863
.l2836
	call l2c77
	pop af
	ld (l2d2f),a
	ld a,(l2e0c)
	res 0,a
	ld (l2e0c),a
	push hl
	ld hl,l2db2
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l2e0c
	set 0,(hl)
	pop hl
	ld a,#00
	ld (l2811),a
	ld (l2e0b),a
	jr l2882
	ld a,(l2e0c)
	bit 1,a
	jr nz,l2836
.l2863
	call l2c82
	pop af
	ld (l2d30),a
	ld a,(l2e0c)
	res 1,a
	ld (l2e0c),a
	ld hl,l2dcb
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l2e0c
	set 1,(hl)
	ld a,#00
	ld (l2811),a
.l2882
	ld a,(l2e0c)
	bit 0,a
	jr z,l2894
	ld a,#03
	ld (l2c42),a
	ld ix,l2d51
	jr l2898
.l2894
	ld ix,l2d3f
.l2898
	ld hl,l2d65
	ld (l2d33),hl
	ld a,#08
	ld (l2d35),a
	ld a,#f6
	ld (l2d36),a
	ld a,(l2810)
	and a
	jr z,l28b7
	ld a,(l2812)
	and a
	jr nz,l28b7
	call l29a7
.l28b7
	ld a,(l2e0c)
	bit 0,a
	jr z,l28d0
	ld a,#00
	ld (l2c42),a
	ld hl,l2db0
	ld (l2d33),hl
	ld ix,l2d3f
	call l29a7
.l28d0
	ld a,(l2e0c)
	bit 1,a
	jr z,l28e2
	ld a,#03
	ld (l2c42),a
	ld ix,l2d51
	jr l28e6
.l28e2
	ld ix,l2d41
.l28e6
	ld hl,l2d7e
	ld (l2d33),hl
	ld a,#07
	ld (l2d35),a
	ld a,#ed
	ld (l2d36),a
	ld a,(l2810)
	and a
	jr z,l2905
	ld a,(l2812)
	and a
	jr nz,l2905
	call l29a7
.l2905
	ld a,(l2e0c)
	bit 1,a
	jr z,l291e
	ld a,#00
	ld (l2c42),a
	ld hl,l2dc9
	ld (l2d33),hl
	ld ix,l2d41
	call l29a7
.l291e
	ld a,(l2810)
	and a
	jr z,l2941
	ld a,(l2812)
	and a
	jr nz,l2941
	ld hl,l2d97
	ld (l2d33),hl
	ld ix,l2d43
	ld a,#06
	ld (l2d35),a
	ld a,#db
	ld (l2d36),a
	call l29a7
.l2941
	ld a,#0a
	ld hl,l2d49
	ld c,(hl)
	call l298b
	ld a,#09
	dec hl
	ld c,(hl)
	call l298b
	ld a,#08
	dec hl
	ld c,(hl)
	call l298b
	ld a,#07
	dec hl
	ld c,(hl)
	call l298b
	ld a,#05
	dec hl
	dec hl
	ld c,(hl)
	call l298b
	ld a,#04
	dec hl
	ld c,(hl)
	call l298b
	ld a,#03
	dec hl
	ld c,(hl)
	call l298b
	ld a,#02
	dec hl
	ld c,(hl)
	call l298b
	ld a,#01
	dec hl
	ld c,(hl)
	call l298b
	ld a,#00
	dec hl
	ld c,(hl)
	call l298b
	ret
.l298b
	ld d,a
	ld e,c
	push af
	ld b,#f4
	out (c),d
	ld bc,#f6c0
	out (c),c
	xor a
	out (c),a
	ld b,#f4
	out (c),e
	ld bc,#f680
	out (c),c
	out (c),a
	pop af
	ret
.l29a7
	ld a,(hl)
	ld e,a
	inc hl
	or (hl)
	jr z,l29ba
	dec a
	jr nc,l29b1
	dec (hl)
.l29b1
	dec hl
	ld (hl),a
	call l2c06
	call l2b59
	ret
.l29ba
	ld hl,(l2d33)
	ld de,#0005
	add hl,de
	ld e,l
	ld d,h
	inc hl
	inc hl
	ldi
	ldi
	ld hl,(l2d33)
	ld de,#0015
	add hl,de
	ld a,(hl)
	dec hl
	ld (hl),a
	ld hl,(l2d33)
	inc hl
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
.l29db
	ld a,(bc)
	cp #00
	jr z,l2a12
	cp #04
	jr z,l2a02
	ld (ix+#00),a
	inc bc
	ld a,(bc)
	ld (ix+#01),a
.l29ec
	inc bc
	ld a,(bc)
	ld e,a
	inc bc
	ld a,(bc)
	ld d,a
	dec de
	ld hl,(l2d33)
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	inc bc
	ld (hl),c
	inc hl
	ld (hl),b
	call l2c06
	ret
.l2a02
	ld hl,(l2d33)
	ld de,#0005
	add hl,de
	ld de,l2e02
	ld (hl),e
	inc hl
	ld (hl),d
	inc bc
	jr l29ec
.l2a12
	inc bc
	ld a,(bc)
	ld e,a
	ld d,#00
	ld hl,l2a1c
	add hl,de
	jp (hl)
.l2a1c
	db #00,#00,#00
	jp l2a3d
	jp l2aa8
	jp l2ac5
	jp l2ae6
	jp l2b10
	jp l2b1c
	jp l2b28
	jp l2a75
	jp #0000
	jp l2a9d
.l2a3d
	nop
.l2a3e
	ld hl,(l2d33)
	ld de,#0009
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc de
	ld a,(de)
	and a
	jr z,l2a64
	cp #01
	jr z,l2a94
	dec de
	ld a,(de)
	ld c,a
	inc de
	ld a,(de)
	ld b,a
	inc de
	ld (hl),d
	dec hl
	ld (hl),e
	ld hl,(l2d33)
	inc hl
	inc hl
	inc hl
	jp l29db
.l2a64
	ld hl,(l2d33)
	ld de,#0009
	add hl,de
	ld e,l
	ld d,h
	inc hl
	inc hl
	ldi
	ldi
	jr l2a3e
.l2a75
	ld a,(l2e0c)
	ld hl,l2d36
	and (hl)
	ld (l2e0c),a
	ld a,(l2d35)
	ld (l2a87),a
.l2a87 equ $ + 2
	ld (ix+#00),#00
	ld a,#00
	ld (l2811),a
	ld a,#ff
	ld (l2d2d),a
	ret
.l2a94
	call l2c4b
	ld a,#00
	ld (l2810),a
	ret
.l2a9d
	inc bc
	ld a,(bc)
	push af
	inc bc
	ld a,(bc)
	ld b,a
	pop af
	ld c,a
	jp l2b07
.l2aa8
	inc bc
	ld hl,(l2d33)
	ld de,#0005
	add hl,de
	ld a,(bc)
	ld e,a
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	ld (hl),a
	inc hl
	ld (hl),e
	inc hl
	ld (hl),a
	inc bc
	ld hl,(l2d33)
	inc hl
	inc hl
	inc hl
	jp l29db
.l2ac5
	inc bc
	ld hl,(l2d33)
	ld de,#000d
	add hl,de
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	jp l2b06
.l2ae6
	ld a,#99
	ld hl,(l2d33)
	ld de,#0013
	add hl,de
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	ld (hl),a
	inc hl
	inc bc
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	inc bc
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	inc bc
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	inc bc
	ld (hl),a
.l2b06
	inc bc
.l2b07
	ld hl,(l2d33)
	inc hl
	inc hl
	inc hl
	jp l29db
.l2b10
	ld hl,(l2d33)
	ld de,#0013
	add hl,de
	ld (hl),#00
	jp l2b06
.l2b1c
	ld hl,(l2d33)
	ld de,#000d
	add hl,de
	ld (hl),#00
	jp l2b06
.l2b28
	push de
	ld e,c
	ld d,b
	ld c,#fd
.l2b2d
	inc de
	ld a,(de)
	cp #ff
	jr z,l2b44
	cp #fe
	jp z,l2b4b
	ld b,#ff
	out (c),a
	inc de
	ld a,(de)
	ld b,#bf
	out (c),a
	jr l2b2d
.l2b44
	ld c,e
	ld b,d
	pop de
	inc bc
	jp l2b06
.l2b4b
	ld c,e
	ld b,d
	pop de
	ld hl,(l2d33)
	inc hl
	inc hl
	inc bc
	inc bc
	ld (hl),c
	inc hl
	ld (hl),b
	ret
.l2b59
	ld hl,(l2d33)
	ld de,#000d
	add hl,de
	ld a,(hl)
	and a
	jp z,l2bbf
	inc hl
	cp #02
	jr z,l2b94
	ld e,(hl)
	ld a,(ix+#00)
	sub e
	jr nc,l2b74
	dec (ix+#01)
.l2b74
	ld (ix+#00),a
	inc hl
	ld d,(hl)
	inc hl
	ld a,(hl)
	ld e,a
	cp (ix+#01)
	jr c,l2b92
	ld a,d
	cp (ix+#00)
	jr c,l2b92
	ld (ix+#01),e
	dec hl
	ld (ix+#00),d
	dec hl
	dec hl
	ld (hl),#00
.l2b92
	jr l2c05
.l2b94
	ld e,(hl)
	ld a,(ix+#00)
	ld d,a
	add e
	jr nc,l2b9f
	inc (ix+#01)
.l2b9f
	ld (ix+#00),a
	inc hl
	ld d,(hl)
	inc hl
	ld a,(hl)
	ld e,a
	cp (ix+#01)
	jr nc,l2bbd
	ld a,d
	cp (ix+#00)
	jr nc,l2bbd
	ld (ix+#01),e
	dec hl
	ld (ix+#00),d
	dec hl
	dec hl
	ld (hl),#00
.l2bbd
	jr l2c05
.l2bbf
	ld hl,(l2d33)
	ld de,#0013
	add hl,de
	ld a,(hl)
	and a
	jr z,l2c05
	ld e,a
	ld b,h
	ld c,l
	inc hl
	ld a,#00
	cp (hl)
	jr z,l2bd7
	dec (hl)
	jp l2c05
.l2bd7
	inc hl
	inc hl
	ld a,(hl)
	dec a
	ld (hl),a
	jr nz,l2c05
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	rlc e
	jr c,l2bf6
	inc hl
	ld a,(ix+#00)
	add (hl)
	ld (ix+#00),a
	jr nc,l2c03
	inc (ix+#01)
	jp l2c03
.l2bf6
	inc hl
	ld a,(ix+#00)
	sub (hl)
	ld (ix+#00),a
	jr nc,l2c03
	dec (ix+#01)
.l2c03
	ld a,e
	ld (bc),a
.l2c05
	ret
.l2c06
	ld hl,(l2d33)
	ld de,#0005
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(l2d35)
	ld (l2c24),a
	ld a,(de)
	cp #ff
	jr nz,l2c1c
	ret
.l2c1c
	sub #02
	jr nc,l2c22
	ld a,#00
.l2c24 equ $ + 2
.l2c22
	ld (ix+#00),a
	inc de
	ld a,(l2d46)
	ld b,a
	ld a,(l2d36)
	push af
	and b
	ld b,a
	ld a,(de)
	ld c,a
	pop af
	rr a
	jr nc,l2c3f
	rlc c
	rr a
	jr nc,l2c3f
	rlc c
.l2c3f
	ld a,c
	or b
.l2c42 equ $ + 1
	jr l2c43
.l2c43
	ld (l2d46),a
	inc de
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.l2c4b
	di
	call l2c57
	call l2c6e
	call l2c93
	ei
	ret
;
.stop_music
.l2c57
;
	ld a,#0d
	ld e,#00
.l2c5b
	push af
	call l298b
	pop af
	dec a
	and a
	jr z,l2c66
	jr l2c5b
.l2c66
	ld a,#07
	ld c,#3f
	call l298b
	ret
.l2c6e
	ld b,#26
	ld hl,l2d3f
	call l2c8d
	ret
.l2c77
	ld b,#19
	push hl
	ld hl,l2db0
	call l2c8d
	pop hl
	ret
.l2c82
	ld b,#19
	push hl
	ld hl,l2dc9
	call l2c8d
	pop hl
	ret
.l2c8d
	ld (hl),#00
	inc hl
	djnz l2c8d
	ret
.l2c93
	ld b,#73
	ld hl,l2d65
.l2c98
	ld (hl),#00
	inc hl
	djnz l2c98
	ret
;*** init music ***
	di
;
.init_music
;
	call l2c57
;	ld (l2810),a
	call l2c6e
	ld hl,l2810
	ld a,(hl)
	add a
	add a
	add a
	ld e,a
	ld d,#00
	ld hl,l2e0e
	add hl,de
	ld a,(hl)
	ld (l2d70),a
	inc hl
	ld a,(hl)
	ld (l2d71),a
	inc hl
	ld a,(hl)
	ld (l2d89),a
	inc hl
	ld a,(hl)
	ld (l2d8a),a
	inc hl
	ld a,(hl)
	ld (l2da2),a
	inc hl
	ld a,(hl)
	ld (l2da3),a
	inc hl
	inc hl
	ld de,l2d3a
	ld hl,l2d6e
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l2d87
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l2da0
	ld (hl),e
	inc hl
	ld (hl),d
	ld de,l2d38
	ld hl,l2d67
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l2d80
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l2d99
	ld (hl),e
	inc hl
	ld (hl),d
	ei
	ret
	di
	ld e,a
	ld a,(l2d2f)
	cp e
	jr nz,l2d16
	ld a,(l2e0c)
	res 0,a
	ld (l2e0c),a
	ld a,#00
	ld (l2d47),a
	call l2c77
.l2d16
	ld a,(l2d30)
	cp e
	ret nz
	ld a,(l2e0c)
	res 1,a
	ld (l2e0c),a
	ld a,#00
	ld (l2d48),a
	call l2c82
	ei
	ret
.l2d33 equ $ + 6
.l2d30 equ $ + 3
.l2d2f equ $ + 2
.l2d2d
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2d3a equ $ + 5
.l2d38 equ $ + 3
.l2d36 equ $ + 1
.l2d35
	db #00,#00,#00,#00,#03,#00,#00,#00
.l2d43 equ $ + 6
.l2d41 equ $ + 4
.l2d3f equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2d49 equ $ + 4
.l2d48 equ $ + 3
.l2d47 equ $ + 2
.l2d46 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2d51 equ $ + 4
	db #00,#08,#09,#0a,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2d67 equ $ + 2
.l2d65
	db #00,#00,#00,#00,#04,#00,#00,#00
.l2d71 equ $ + 4
.l2d70 equ $ + 3
.l2d6e equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2d80 equ $ + 3
.l2d7e equ $ + 1
	db #00,#00,#00,#00,#00,#04,#00,#00
.l2d8a equ $ + 5
.l2d89 equ $ + 4
.l2d87 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2d99 equ $ + 4
.l2d97 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#04,#00
.l2da3 equ $ + 6
.l2da2 equ $ + 5
.l2da0 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2db2 equ $ + 5
.l2db0 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#04
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2dcb equ $ + 6
.l2dc9 equ $ + 4
	db #00,#00,#00,#00,#0a,#00,#00,#00
	db #04,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2e02 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#ff
.l2e0c equ $ + 7
.l2e0b equ $ + 6
	db #10,#01,#ff,#0f,#08,#ff,#00,#00
.l2e0e equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
	dw l2e1e,l2e26,l2e32,#0000
.l2e1e
	dw l2e98,l2f68,l3040,#0000
.l2e26
	dw l30e6,l31dc,l30e6,l31ee
.l2e32 equ $ + 4
	dw l3200,#0000,l334a,l334a
	dw l334a,l336a,l334a,l334a
	dw l334a,l334a,l334a,l334a
	dw l334a,l334a,l334a,l334a
	dw l334a,l334a,l334a,l336a
	dw l334a,l334a,l334a,l334a
	dw l334a,l334a,l334a,l334a
	dw l334a,l334a,l338c,l338c
	dw l338c,l338c,l338c,l338c
	dw l338c,l338c,l338c,l338c
	dw l338c,l338c,l338c,l338c
	dw l338c,l338c,#0000
	db #04,#00,#40,#00,#00,#03,#04,#00
.l2e98 equ $ + 4
	db #38,#00,#00,#03,#00,#06,#80,#34
	db #00,#0c,#01,#01,#01,#00,#01,#00
	db #01,#00,#a9,#00,#10,#00,#8e,#00
	db #10,#00,#7f,#00,#10,#00,#04,#00
	db #10,#00,#a9,#00,#10,#00,#8e,#00
	db #10,#00,#7f,#00,#10,#00,#04,#00
	db #10,#00,#a9,#00,#10,#00,#8e,#00
	db #10,#00,#7f,#00,#10,#00,#6a,#00
	db #08,#00,#6a,#00,#08,#00,#71,#00
	db #08,#00,#71,#00,#08,#00,#8e,#00
	db #10,#00,#7f,#00,#10,#00,#a9,#00
	db #08,#00,#a9,#00,#08,#00,#04,#00
	db #10,#00,#a9,#00,#10,#00,#04,#00
	db #10,#00,#a9,#00,#08,#00,#a9,#00
	db #08,#00,#04,#00,#10,#00,#a9,#00
	db #10,#00,#9f,#00,#10,#00,#8e,#00
	db #10,#00,#7f,#00,#10,#00,#9f,#00
	db #10,#00,#a9,#00,#20,#00,#be,#00
	db #20,#00,#9f,#00,#10,#00,#8e,#00
	db #10,#00,#7f,#00,#10,#00,#9f,#00
	db #10,#00,#a9,#00,#20,#00,#be,#00
	db #20,#00,#9f,#00,#10,#00,#8e,#00
	db #10,#00,#7f,#00,#10,#00,#9f,#00
	db #10,#00,#a9,#00,#10,#00,#be,#00
	db #10,#00,#d5,#00,#10,#00,#be,#00
	db #10,#00,#d5,#00,#10,#00,#04,#00
.l2f68 equ $ + 4
	db #70,#00,#00,#03,#00,#06,#2b,#34
	db #00,#0c,#01,#01,#01,#00,#01,#00
	db #01,#00,#a9,#00,#10,#00,#8e,#00
	db #10,#00,#7f,#00,#10,#00,#04,#00
	db #10,#00,#a9,#00,#10,#00,#8e,#00
	db #10,#00,#7f,#00,#10,#00,#04,#00
	db #10,#00,#a9,#00,#10,#00,#8e,#00
	db #10,#00,#7f,#00,#10,#00,#6a,#00
	db #08,#00,#6a,#00,#08,#00,#71,#00
	db #08,#00,#71,#00,#08,#00,#8e,#00
	db #10,#00,#7f,#00,#10,#00,#00,#06
	db #80,#34,#a9,#00,#08,#00,#a9,#00
	db #08,#00,#04,#00,#10,#00,#a9,#00
	db #10,#00,#04,#00,#10,#00,#a9,#00
	db #08,#00,#a9,#00,#08,#00,#04,#00
	db #10,#00,#a9,#00,#10,#00,#00,#06
	db #2b,#34,#9f,#00,#10,#00,#8e,#00
	db #10,#00,#7f,#00,#10,#00,#9f,#00
	db #10,#00,#a9,#00,#20,#00,#be,#00
	db #20,#00,#9f,#00,#10,#00,#8e,#00
	db #10,#00,#7f,#00,#10,#00,#9f,#00
	db #10,#00,#a9,#00,#20,#00,#be,#00
	db #20,#00,#9f,#00,#10,#00,#8e,#00
	db #10,#00,#7f,#00,#10,#00,#9f,#00
	db #10,#00,#a9,#00,#10,#00,#be,#00
	db #10,#00,#d5,#00,#10,#00,#be,#00
	db #10,#00,#d5,#00,#10,#00,#04,#00
.l3040 equ $ + 4
	db #70,#00,#00,#03,#00,#06,#51,#34
	db #7f,#00,#10,#00,#86,#00,#10,#00
	db #7f,#00,#10,#00,#77,#00,#10,#00
	db #71,#00,#20,#00,#7f,#00,#10,#00
	db #86,#00,#10,#00,#8e,#00,#20,#00
	db #a9,#00,#20,#00,#d5,#00,#40,#00
	db #9f,#00,#10,#00,#a9,#00,#10,#00
	db #9f,#00,#10,#00,#7f,#00,#10,#00
	db #8e,#00,#20,#00,#9f,#00,#10,#00
	db #be,#00,#10,#00,#a9,#00,#20,#00
	db #9f,#00,#20,#00,#96,#00,#20,#00
	db #8e,#00,#20,#00,#7f,#00,#40,#00
	db #a9,#00,#40,#00,#71,#00,#10,#00
	db #6a,#00,#10,#00,#71,#00,#08,#00
	db #6a,#00,#08,#00,#71,#00,#10,#00
	db #7f,#00,#20,#00,#a9,#00,#10,#00
	db #8e,#00,#10,#00,#9f,#00,#10,#00
	db #04,#00,#30,#00,#7f,#00,#10,#00
	db #04,#00,#30,#00,#71,#00,#10,#00
	db #6a,#00,#10,#00,#7f,#00,#10,#00
	db #71,#00,#10,#00,#8e,#00,#40,#00
.l30e6 equ $ + 2
	db #00,#03,#00,#06,#02,#34,#53,#03
	db #10,#00,#04,#00,#10,#00,#70,#04
	db #10,#00,#04,#00,#10,#00,#53,#03
	db #10,#00,#04,#00,#10,#00,#70,#04
	db #10,#00,#04,#00,#10,#00,#53,#03
	db #10,#00,#04,#00,#10,#00,#70,#04
	db #10,#00,#04,#00,#10,#00,#53,#03
	db #10,#00,#04,#00,#10,#00,#fa,#01
	db #10,#00,#00,#06,#80,#34,#d5,#00
	db #08,#00,#d5,#00,#08,#00,#00,#06
	db #02,#34,#a4,#02,#10,#00,#00,#06
	db #80,#34,#d5,#00,#10,#00,#00,#06
	db #02,#34,#fa,#01,#10,#00,#00,#06
	db #80,#34,#d5,#00,#08,#00,#d5,#00
	db #08,#00,#00,#06,#02,#34,#a4,#02
	db #10,#00,#00,#06,#80,#34,#d5,#00
	db #10,#00,#00,#06,#02,#34,#7e,#02
	db #10,#00,#04,#00,#10,#00,#53,#03
	db #10,#00,#04,#00,#10,#00,#38,#02
	db #10,#00,#04,#00,#10,#00,#f6,#02
	db #10,#00,#04,#00,#10,#00,#7e,#02
	db #10,#00,#04,#00,#10,#00,#53,#03
	db #10,#00,#04,#00,#10,#00,#38,#02
	db #10,#00,#04,#00,#10,#00,#f6,#02
	db #10,#00,#04,#00,#10,#00,#7e,#02
	db #10,#00,#04,#00,#10,#00,#53,#03
	db #10,#00,#04,#00,#10,#00,#38,#02
	db #10,#00,#04,#00,#10,#00,#f6,#02
	db #10,#00,#04,#00,#10,#00,#53,#03
	db #10,#00,#04,#00,#10,#00,#70,#04
	db #10,#00,#04,#00,#10,#00,#00,#03
.l31dc
	db #53,#03,#10,#00,#86,#03,#10,#00
	db #f4,#03,#10,#00,#70,#04,#10,#00
.l31ee equ $ + 2
	db #00,#03,#53,#03,#10,#00,#86,#03
	db #10,#00,#53,#03,#10,#00,#24,#03
.l3200 equ $ + 4
	db #10,#00,#00,#03,#00,#06,#02,#34
	db #f6,#02,#10,#00,#04,#00,#10,#00
	db #f4,#03,#10,#00,#04,#00,#10,#00
	db #70,#04,#10,#00,#04,#00,#10,#00
	db #f6,#02,#10,#00,#04,#00,#10,#00
	db #53,#03,#10,#00,#04,#00,#10,#00
	db #70,#04,#10,#00,#04,#00,#10,#00
	db #f4,#03,#10,#00,#04,#00,#10,#00
	db #f4,#03,#10,#00,#04,#00,#10,#00
	db #f6,#02,#10,#00,#04,#00,#10,#00
	db #f4,#03,#10,#00,#04,#00,#10,#00
	db #70,#04,#10,#00,#04,#00,#10,#00
	db #f6,#02,#10,#00,#04,#00,#10,#00
	db #53,#03,#10,#00,#04,#00,#10,#00
	db #f6,#02,#10,#00,#04,#00,#10,#00
	db #cc,#02,#10,#00,#04,#00,#10,#00
	db #a4,#02,#10,#00,#04,#00,#10,#00
	db #7e,#02,#10,#00,#04,#00,#10,#00
	db #53,#03,#10,#00,#04,#00,#10,#00
	db #18,#02,#10,#00,#04,#00,#10,#00
	db #a4,#02,#10,#00,#04,#00,#10,#00
	db #fa,#01,#10,#00,#04,#00,#10,#00
	db #a4,#02,#10,#00,#04,#00,#10,#00
	db #fa,#01,#10,#00,#04,#00,#10,#00
	db #a4,#02,#10,#00,#04,#00,#10,#00
	db #7e,#02,#10,#00,#04,#00,#10,#00
	db #04,#00,#10,#00,#04,#00,#10,#00
	db #7e,#02,#10,#00,#04,#00,#10,#00
	db #04,#00,#10,#00,#04,#00,#10,#00
	db #38,#02,#10,#00,#04,#00,#10,#00
	db #f6,#02,#10,#00,#04,#00,#10,#00
	db #70,#04,#10,#00,#70,#04,#10,#00
	db #f4,#03,#10,#00,#86,#03,#10,#00
	db #00,#03,#00,#06,#f3,#33,#00,#09
	db #02,#c8,#a7,#06,#00,#00,#a9,#00
	db #10,#00,#00,#06,#f3,#33,#00,#09
	db #02,#c8,#a7,#06,#00,#00,#a9,#00
	db #10,#00,#00,#06,#f3,#33,#00,#09
	db #02,#c8,#a7,#06,#00,#00,#a9,#00
	db #10,#00,#00,#06,#f3,#33,#00,#09
	db #02,#c8,#a7,#06,#00,#00,#a9,#00
.l334a equ $ + 6
	db #08,#00,#00,#12,#00,#03,#00,#06
	db #f3,#33,#00,#09,#02,#c8,#a7,#06
	db #00,#00,#a9,#00,#10,#00,#00,#06
	db #5a,#34,#00,#09,#02,#45,#a7,#06
.l336a equ $ + 6
	db #00,#00,#d5,#00,#10,#00,#00,#06
	db #f3,#33,#00,#09,#02,#c8,#a7,#06
	db #00,#00,#a9,#00,#10,#00,#00,#06
	db #5a,#34,#00,#09,#02,#45,#a7,#06
	db #00,#00,#d5,#00,#10,#00,#00,#03
.l338c
	db #00,#06,#f3,#33,#00,#09,#02,#c8
	db #a7,#06,#00,#00,#a9,#00,#10,#00
	db #00,#06,#d2,#33,#00,#09,#02,#45
	db #a7,#06,#00,#00,#d5,#00,#08,#00
	db #d5,#00,#08,#00,#00,#06,#f3,#33
	db #00,#09,#02,#c8,#a7,#06,#00,#00
	db #a9,#00,#10,#00,#00,#06,#d2,#33
	db #00,#09,#02,#45,#a7,#06,#00,#00
	db #d5,#00,#10,#00,#00,#03,#0f,#00
	db #0f,#08,#0f,#08,#0f,#00,#0f,#08
	db #0f,#00,#0c,#08,#0c,#00,#09,#08
	db #07,#00,#07,#08,#07,#00,#06,#08
	db #06,#00,#06,#08,#05,#08,#ff,#0f
	db #00,#0f,#08,#0f,#08,#0f,#08,#07
	db #08,#03,#08,#00,#08,#ff,#0f,#08
	db #0f,#08,#0f,#08,#0f,#08,#0f,#08
	db #0f,#08,#0f,#08,#0f,#08,#0e,#08
	db #0d,#08,#0c,#08,#0c,#08,#0b,#08
	db #0a,#08,#0a,#08,#09,#08,#09,#08
	db #08,#08,#07,#08,#07,#08,#ff,#0f
	db #08,#0f,#08,#0f,#08,#0e,#08,#0f
	db #08,#0e,#08,#0d,#08,#0c,#08,#0d
	db #08,#09,#08,#0b,#08,#06,#08,#0a
	db #08,#08,#08,#ff,#0e,#08,#0d,#08
	db #0d,#08,#0d,#08,#ff,#0e,#08,#0d
	db #08,#0d,#08,#0d,#08,#ff,#0f,#01
	db #0e,#01,#0e,#01,#0d,#01,#0d,#01
	db #0c,#01,#0b,#01,#0b,#01,#09,#01
	db #07,#01,#07,#01,#07,#01,#06,#01
	db #06,#01,#06,#01,#05,#01,#ff,#0d
	db #01,#00,#01,#ff,#0f,#08,#0f,#08
	db #0f,#08,#0f,#08,#0f,#08,#0e,#08
	db #0d,#08,#0d,#08,#0c,#08,#0b,#08
	db #0a,#08,#09,#08,#08,#08,#07,#08
	db #06,#08,#05,#08,#04,#08,#03,#08
.l34ab equ $ + 7
	db #02,#08,#00,#08,#ff,#00,#00,#00
	db #00,#d1,#34,#e7,#34,#2f,#35,#9f
	db #35,#bf,#35,#0b,#35,#fd,#35,#fd
	db #35,#46,#36,#17,#37,#60,#37,#8f
	db #37,#ad,#37,#01,#38,#1f,#38,#3d
	db #38,#7c,#38,#db,#38,#00,#06,#e1
	db #34,#20,#00,#04,#00,#00,#15,#06
	db #c8,#ff,#00,#00,#18,#0f,#08,#09
	db #08,#ff,#00,#00,#06,#07,#35,#00
	db #0c,#03,#03,#04,#00,#04,#00,#01
	db #00,#53,#03,#10,#00,#f4,#03,#10
	db #00,#f6,#02,#20,#00,#f4,#03,#40
	db #00,#00,#18,#0f,#08,#ff,#00,#00
	db #06,#07,#35,#00,#0c,#03,#03,#04
	db #00,#04,#00,#01,#00,#d5,#00,#10
	db #00,#a9,#00,#10,#00,#d5,#00,#10
	db #00,#a9,#00,#10,#00,#6a,#00,#80
	db #00,#00,#18,#00,#06,#9b,#35,#00
	db #09,#01,#14,#38,#00,#00,#00,#8e
	db #00,#08,#00,#00,#09,#02,#0a,#47
	db #00,#00,#00,#1c,#00,#07,#00,#00
	db #09,#01,#14,#38,#00,#00,#00,#8e
	db #00,#08,#00,#00,#09,#02,#0a,#47
	db #00,#00,#00,#1c,#00,#07,#00,#00
	db #09,#01,#14,#38,#00,#00,#00,#8e
	db #00,#08,#00,#00,#09,#02,#0a,#47
	db #00,#00,#00,#1c,#00,#07,#00,#00
	db #09,#01,#14,#38,#00,#00,#00,#8e
	db #00,#08,#00,#00,#09,#02,#0a,#47
	db #00,#00,#00,#1c,#00,#07,#00,#00
	db #15,#06,#c8,#ff,#00,#00,#18,#0f
	db #08,#ff,#00,#00,#06,#bb,#35,#8e
	db #00,#02,#00,#38,#02,#02,#00,#8e
	db #00,#02,#00,#38,#02,#02,#00,#00
	db #15,#06,#c8,#ff,#00,#00,#18,#0f
	db #08,#ff,#00,#00,#06,#f1,#35,#00
	db #15,#06,#1f,#fe,#00,#38,#02,#01
	db #00,#04,#00,#01,#00,#aa,#01,#01
	db #00,#04,#00,#01,#00,#1c,#01,#01
	db #00,#04,#00,#01,#00,#d5,#00,#01
	db #00,#04,#00,#01,#00,#00,#15,#06
	db #c8,#ff,#00,#00,#18,#0f,#00,#0e
	db #00,#09,#00,#08,#00,#00,#00,#ff
	db #00,#00,#06,#0d,#36,#00,#15,#06
	db #1f,#ff,#00,#01,#00,#1e,#00,#00
	db #18,#0f,#01,#0e,#01,#0d,#00,#0c
	db #01,#0b,#01,#0a,#01,#07,#01,#06
	db #01,#06,#01,#06,#01,#06,#01,#06
	db #01,#06,#01,#06,#01,#06,#01,#06
	db #01,#06,#01,#06,#01,#05,#01,#05
	db #01,#04,#01,#04,#01,#04,#01,#03
	db #01,#02,#01,#02,#01,#02,#01,#00
	db #01,#ff,#00,#06,#68,#36,#00,#0c
	db #01,#01,#14,#00,#14,#00,#01,#00
	db #00,#09,#02,#01,#53,#03,#00,#00
	db #6a,#00,#30,#00,#00,#15,#06,#c8
	db #ff,#00,#00,#18,#0f,#08,#0f,#08
	db #0f,#08,#0f,#08,#0f,#08,#0f,#08
	db #0f,#08,#0f,#08,#0f,#08,#0f,#08
	db #0f,#08,#0f,#08,#0f,#08,#0f,#08
	db #0f,#08,#0f,#08,#0e,#08,#0e,#08
	db #0e,#08,#0e,#08,#0e,#08,#0e,#08
	db #0e,#08,#0e,#08,#0e,#08,#0e,#08
	db #0c,#08,#0c,#08,#0c,#08,#0c,#08
	db #0c,#08,#0c,#08,#0c,#08,#0c,#08
	db #0c,#08,#0c,#08,#0a,#08,#0a,#08
	db #0a,#08,#0a,#08,#0a,#08,#0a,#08
	db #0a,#08,#0a,#08,#0a,#08,#0a,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#06,#08,#06,#08
	db #06,#08,#06,#08,#06,#08,#06,#08
	db #06,#08,#06,#08,#06,#08,#06,#08
	db #04,#08,#04,#08,#04,#08,#04,#08
	db #04,#08,#04,#08,#04,#08,#04,#08
	db #04,#08,#04,#08,#02,#08,#02,#08
	db #02,#08,#02,#08,#02,#08,#02,#08
	db #02,#08,#02,#08,#02,#08,#02,#08
	db #00,#00,#ff,#00,#15,#06,#02,#ff
	db #00,#00,#06,#3f,#37,#00,#0c,#01
	db #01,#14,#00,#14,#00,#01,#00,#00
	db #09,#01,#64,#35,#00,#01,#00,#d5
	db #00,#0e,#00,#00,#15,#06,#03,#ff
	db #00,#00,#18,#0f,#08,#0e,#08,#0d
	db #08,#0a,#08,#09,#08,#08,#08,#07
	db #08,#06,#08,#05,#08,#04,#08,#04
	db #08,#02,#08,#02,#08,#02,#08,#01
	db #01,#00,#08,#ff,#00,#06,#8c,#37
	db #00,#15,#06,#05,#ff,#00,#24,#00
	db #01,#00,#28,#00,#01,#00,#2a,#00
	db #01,#00,#2f,#00,#01,#00,#35,#00
	db #01,#00,#38,#00,#01,#00,#3f,#00
	db #01,#00,#47,#00,#01,#00,#00,#18
	db #0c,#00,#ff,#00,#06,#cb,#37,#00
	db #15,#06,#1f,#ff,#00,#00,#09,#02
	db #c8,#a7,#06,#00,#00,#6a,#00,#07
	db #00,#00,#15,#06,#c8,#ff,#00,#00
	db #18,#00,#06,#dd,#37,#00,#15,#06
	db #09,#ff,#00,#00,#09,#02,#64,#a7
	db #06,#00,#00,#6a,#00,#07,#00,#00
	db #15,#06,#c8,#ff,#00,#00,#18,#0f
	db #01,#0e,#01,#0d,#08,#0c,#08,#0a
	db #08,#09,#08,#08,#08,#00,#08,#ff
	db #00,#0f,#08,#0e,#08,#0d,#08,#0c
	db #08,#0a,#08,#09,#08,#08,#08,#00
	db #08,#ff,#00,#0d,#01,#0e,#01,#0d
	db #01,#0c,#01,#0a,#01,#09,#01,#08
	db #01,#00,#01,#ff,#00,#00,#06,#5b
	db #38,#00,#15,#06,#15,#ff,#00,#00
	db #09,#02,#c8,#70,#04,#00,#00,#24
	db #00,#0f,#00,#00,#15,#06,#c8,#ff
	db #00,#00,#18,#00,#15,#06,#08,#ff
	db #00,#00,#06,#5b,#38,#00,#09,#02
	db #28,#70,#04,#00,#00,#24,#00,#0f
	db #00,#00,#15,#06,#c8,#ff,#00,#00
	db #18,#00,#06,#5b,#38,#00,#15,#06
	db #14,#ff,#00,#00,#09,#02,#64,#70
	db #04,#00,#00,#47,#00,#14,#00,#00
	db #15,#06,#c8,#ff,#00,#00,#18,#0f
	db #00,#0f,#00,#03,#00,#0f,#00,#0c
	db #00,#0b,#00,#09,#00,#09,#00,#08
	db #00,#07,#00,#03,#00,#02,#00,#01
	db #00,#00,#00,#ff,#01,#00,#02,#00
	db #00,#06,#ca,#38,#00,#15,#06,#14
	db #ff,#00,#00,#09,#02,#64,#70,#04
	db #00,#00,#1c,#01,#04,#00,#00,#09
	db #02,#64,#70,#04,#00,#00,#1c,#01
	db #04,#00,#00,#09,#02,#64,#70,#04
	db #00,#00,#1c,#01,#04,#00,#00,#09
	db #02,#64,#70,#04,#00,#00,#1c,#01
	db #04,#00,#00,#09,#02,#64,#70,#04
	db #00,#00,#1c,#01,#04,#00,#00,#15
	db #06,#c8,#ff,#00,#00,#18,#0f,#00
	db #0c,#00,#08,#00,#05,#00,#03,#00
	db #02,#00,#01,#00,#00,#00,#ff,#00
	db #15,#06,#04,#ff,#00,#00,#06,#f3
	db #38,#00,#09,#02,#08,#53,#03,#00
	db #00,#1b,#00,#14,#00,#00,#18,#0f
	db #08,#0e,#08,#0d,#08,#0c,#08,#0b
	db #08,#0a,#08,#0a,#08,#0a,#08,#09
	db #08,#09,#08,#09,#08,#09,#08,#08
	db #08,#07,#08,#06,#08,#05,#08,#04
	db #08,#03,#08,#02,#08,#ff,#00,#13
	db #00
;
; #0335
; ld a,#01
; ld (#2813),a
; ld (#2812),a		; stop music
; ld a,(#054d)
; or a
; jr z,#0357
; dec a
; jr nz,l0353
; ld (#2812),a		; init music
; ld a,#01
; ld (#2810),a
; call #2c9e
;
.music_info
	db "Postman Pat 3 (1992)(Alternative Software)()",0
	db "",0

	read "music_end.asm"
