; Music of Heroes of the Lance (1988)(U.S.Gold)(Ben Daglish)()
; Ripped by Megachur the 19/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HEROEOTL.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #8000

	read "music_header.asm"

	jp l8090	; init
	jp l8118	; play
.l8006
.music_end
	db #00
	jp l8011	; init sound effects
;
.stop_music
;
	xor a
	ld (l8006),a
	jp l849a
.l8011
	di
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,l8906
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,l83dc
	call l8413
	set 7,(ix+#11)
	ei
	ret
.l8040 equ $ + 7
.l803a equ $ + 1
.l8039
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8048 equ $ + 7
.l8046 equ $ + 5
.l8045 equ $ + 4
.l8044 equ $ + 3
.l8043 equ $ + 2
.l8042 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l804f equ $ + 6
.l804e equ $ + 5
	db #00,#00,#00,#00,#00,#08,#00,#00
.l8058 equ $ + 7
.l8057 equ $ + 6
.l8055 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l805d equ $ + 4
.l805b equ $ + 2
.l805a equ $ + 1
.l8059
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8064 equ $ + 3
.l8063 equ $ + 2
	db #00,#00,#10,#00,#00,#00,#00,#00
.l8070 equ $ + 7
.l806f equ $ + 6
.l806e equ $ + 5
.l806d equ $ + 4
.l806c equ $ + 3
.l806a equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8078 equ $ + 7
.l8072 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
.init_music
.l8090
;
	push af
	call l849a
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l88a2
	add l
	ld l,a
	jr nc,l80a1
	inc h
.l80a1
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l803a),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l804f),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l8064),de
	xor a
	ld (l8043),a
	ld (l8058),a
	ld (l806d),a
	ld (l8048),a
	ld (l805d),a
	ld (l8072),a
	cpl
	ld (l8044),a
	ld (l8059),a
	ld (l806e),a
	ld a,#01
	ld (l8042),a
	ld (l8057),a
	ld (l806c),a
	ld (l8045),a
	ld (l805a),a
	ld (l806f),a
	ld hl,l8078
	ld bc,#030a
.l80f0
	xor a
.l80f1
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l80f1
	djnz l80f0
	ld hl,l88b4
	ld (l8040),hl
	ld (l8055),hl
	ld (l806a),hl
	ld a,#ff
	ld (l8046),a
	ld (l805b),a
	ld (l8070),a
	ld (l8006),a
	ret
;
.play_music
.l8118
;
	call l84db
	ld a,(l8006)
	and a
	ret z
	ld a,(l8046)
	ld hl,l805b
	or (hl)
	ld hl,l8070
	or (hl)
	ld (l8006),a
	jr nz,l8142
	xor a
	ld (l8006),a
	ld a,(l83db)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l8006),a
	ret
.l8142
	ld iy,l8039
	ld ix,l83dc
	call l8160
	ld iy,l804e
	ld ix,l83ee
	call l8160
	ld iy,l8063
	ld ix,l8400
.l8160
	call l82a1
	ld a,(iy+#0b)
	and a
	jr z,l81e5
.l8169
	dec (iy+#09)
	jr z,l8180
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l81e5
.l8180
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l818a
	ld a,(hl)
	cp #80
	jr c,l81c5
	cp #fe
	jr nz,l819c
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l818a
.l819c
	cp #ff
	jr nz,l81a5
	xor a
	ld (iy+#0d),a
	ret
.l81a5
	cp #c0
	jr nc,l81b2
	and #1f
	ld (iy+#09),a
	inc hl
	jp l818a
.l81b2
	and #07
	add (iy+#00)
	ld de,l8078
	add e
	ld e,a
	jr nc,l81bf
	inc d
.l81bf
	inc hl
	ldi
	jp l818a
.l81c5
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,l8898
	add hl,bc
	ld e,(hl)
	ld hl,l889d
	add hl,bc
	ld d,(hl)
.l81de equ $ + 1
	ld (iy+#03),e
	ld (iy+#04),d
	jr l81eb
.l81e5
	ld e,(iy+#05)
	ld d,(iy+#06)
.l81eb
	dec (iy+#0c)
	jr z,l81fd
	ld a,(de)
	cp #80
	call nc,l8267
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l81fd
	ld a,(de)
	cp #80
	jr c,l820e
	call l8267
	ld a,(iy+#0b)
	and a
	jr z,l81fd
	jp l8169
.l820e
	cp #7f
	jr z,l825a
	cp #7e
	jr nz,l821f
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l8233
.l821f
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,l8331
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l8233
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
	jp l8413
.l825a
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l8267
	ld a,(de)
	cp #88
	jr nc,l8285
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l8078
	add hl,bc
	ld c,(hl)
	ld hl,l88b4
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l8285
	cp #ff
	jr nz,l828e
	ld (iy+#0b),#ff
	ret
.l828e
	cp #c0
	jr nc,l8299
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l8299
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l82a1
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l82b5
	res 7,(iy+#14)
	ret
.l82b5
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l82e9
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l82e9
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l82d8
	inc h
	ld (iy+#11),h
.l82d8
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l831e
.l82e9
	ld hl,l81de
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l8303
	bit 6,(iy+#14)
	jr nz,l8303
	ld (iy+#13),#01
	ret
.l8303
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
.l831e
	add a
	ld hl,l8331
	add l
	ld l,a
	jr nc,l8327
	inc h
.l8327
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.l8331
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
.l83e1 equ $ + 6
.l83e0 equ $ + 5
.l83df equ $ + 4
.l83dc equ $ + 1
.l83db
	db #3f,#fe,#f7,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l83f2 equ $ + 7
.l83f1 equ $ + 6
.l83ee equ $ + 3
.l83ed equ $ + 2
	db #00,#00,#00,#fd,#ef,#12,#00,#00
.l83f3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8400 equ $ + 5
.l83ff equ $ + 4
	db #00,#00,#00,#00,#00,#fb,#df,#24
.l8405 equ $ + 2
.l8404 equ $ + 1
.l8403
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8412 equ $ + 7
.l8411 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8413
	db #f3
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
	jr nz,l8438
	ld a,#01
.l8438
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(l83db)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,l8461
	and (ix+#00)
.l8461
	bit 1,c
	jr z,l8468
	and (ix+#01)
.l8468
	ld (l83db),a
	bit 2,c
	jr nz,l847a
	ld hl,l85c9
	ld (ix+#0d),l
	ld (ix+#0e),h
	ei
	ret
.l847a
	call l8681
	ld a,(iy+#00)
	ld c,#0d
	call l8698
	ld a,(iy+#04)
	ld c,#0b
	call l8698
	inc c
	xor a
	call l8698
	ld (ix+#05),#ff
	ei
	jp l868d
.l849a
	call l8681
	ld c,#07
	ld a,(l83db)
	or #3f
	ld (l83db),a
	call l8698
	xor a
	inc c
	call l8698
	inc c
	call l8698
	inc c
	call l8698
	ld a,#01
	inc c
	call l8698
	inc c
	xor a
	call l8698
	inc c
	call l8698
	ld (l83ed),a
	ld (l83ff),a
	ld (l8411),a
	ld (l83e1),a
	ld (l83f3),a
	ld (l8405),a
	jp l868d
.l84db
	ld a,(l83db)
	and #3f
	cp #3f
	ret z
	ld ix,l83dc
	call l8597
	ld ix,l83ee
	call l8597
	ld ix,l8400
	call l8597
	call l8681
	ld ix,l83dc
	ld c,#07
	ld a,(l83db)
	call l8698
	ld c,#00
	ld a,(l83df)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,l8519
	ld (l8412),a
.l8519
	call l8698
	inc c
	ld a,(l83e0)
	adc (ix+#0a)
	call l8698
	inc c
	ld a,(l83f1)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,l8537
	ld (l8412),a
.l8537
	call l8698
	inc c
	ld a,(l83f2)
	adc (ix+#1c)
	call l8698
	inc c
	ld a,(l8403)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,l8555
	ld (l8412),a
.l8555
	call l8698
	inc c
	ld a,(l8404)
	adc (ix+#2e)
	call l8698
	inc c
	ld a,(l8412)
	rrca
	rrca
	rrca
	call l8698
	ld c,#08
	ld a,(l83e1)
	srl a
	srl a
	srl a
	call l8698
	inc c
	ld a,(l83f3)
	srl a
	srl a
	srl a
	call l8698
	inc c
	ld a,(l8405)
	srl a
	srl a
	srl a
	call l8698
	jp l868d
.l8597
	ld a,(l83db)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l85b8
	cp #ff
	jr z,l85b8
	dec (ix+#06)
.l85b8
	call l863f
	bit 2,(iy+#09)
	jp nz,l8638
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.l85c9
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l85d8
	ld (ix+#05),a
	ret
.l85d8
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l85e8
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l85e8
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l85fa
	cp (iy+#02)
	jr c,l85fa
	ld (ix+#05),a
	ret
.l85fa
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l860a
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l860a
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l8619
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l8619
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l8626
	ld (ix+#05),a
	ret
.l8626
	ld (ix+#05),#00
	ld a,(l83db)
	or (ix+#02)
	ld (l83db),a
	res 7,(ix+#11)
	ret
.l8638
	ld a,(ix+#06)
	and a
	ret nz
	jr l8626
.l863f
	ld a,(ix+#07)
	and a
	jr z,l864c
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.l864c
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
	jp p,l8670
	ld (ix+#07),#ff
	ret
.l8670
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
.l8681
	ld bc,#f782
	out (c),c
	ld de,#c000
	ld hl,#f680
	ret
.l868d
	ld bc,#f40e
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ret
.l8698
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
.l86ab
	db #80,#06,#10,#84,#03,#08,#03,#08
	db #80,#06,#10,#06,#10,#84,#03,#08
	db #03,#08,#80,#06,#10,#04,#10,#84
	db #03,#08,#03,#08,#80,#04,#10,#04
	db #10,#84,#03,#08,#03,#08,#80,#04
	db #10,#0b,#10,#84,#03,#08,#03,#08
	db #80,#0b,#10,#0b,#10,#84,#03,#08
	db #03,#08,#80,#0b,#10,#0d,#10,#84
	db #03,#08,#03,#08,#80,#0d,#10,#01
	db #10,#84,#03,#08,#03,#08,#80,#0d
.l86fd equ $ + 2
	db #10,#ff,#82,#25,#30,#83,#12,#20
	db #82,#23,#08,#21,#08,#23,#08,#25
	db #28,#83,#12,#20,#82,#23,#08,#21
	db #08,#1e,#30,#83,#12,#20,#82,#21
	db #10,#20,#30,#83,#12,#30,#82,#25
	db #30,#83,#12,#20,#82,#28,#08,#25
	db #08,#2d,#08,#2c,#28,#83,#12,#20
	db #82,#2a,#08,#28,#08,#2a,#30,#83
	db #12,#20,#82,#2d,#10,#2c,#30,#83
	db #12,#30,#82,#28,#08,#26,#08,#25
	db #20,#83,#12,#20,#82,#23,#08,#21
	db #08,#23,#30,#83,#12,#20,#82,#25
	db #08,#28,#08,#2d,#08,#2c,#08,#2a
	db #20,#83,#12,#20,#82,#2d,#08,#2c
	db #38,#83,#12,#30,#82,#28,#08,#26
	db #08,#25,#20,#83,#12,#20,#82,#23
	db #08,#21,#08,#23,#30,#83,#12,#20
	db #82,#21,#08,#20,#08,#21,#30,#83
	db #12,#20,#82,#20,#08,#1e,#08,#20
	db #30,#83,#12,#18,#12,#08,#12,#10
.l879c equ $ + 1
	db #ff,#81,#91,#2a,#10,#2a,#08,#2a
	db #08,#2a,#08,#2a,#08,#2a,#10,#2a
	db #08,#2a,#08,#2a,#08,#2a,#08,#92
	db #28,#10,#28,#08,#28,#08,#28,#08
	db #28,#08,#28,#10,#28,#08,#28,#08
	db #28,#08,#28,#08,#94,#27,#10,#27
	db #08,#27,#08,#27,#08,#27,#08,#27
	db #10,#27,#08,#27,#08,#27,#08,#27
	db #08,#29,#10,#29,#08,#29,#08,#29
	db #08,#29,#08,#29,#10,#29,#08,#29
.l87f1 equ $ + 6
	db #08,#29,#08,#29,#08,#ff,#81,#93
	db #28,#10,#28,#08,#28,#08,#28,#08
	db #28,#08,#28,#10,#28,#08,#28,#08
	db #28,#08,#28,#08,#92,#28,#10,#28
	db #08,#28,#08,#28,#08,#28,#08,#28
	db #10,#28,#08,#28,#08,#28,#08,#28
	db #08,#94,#27,#10,#27,#08,#27,#08
	db #27,#08,#27,#08,#27,#10,#27,#08
	db #27,#08,#27,#08,#27,#08,#29,#10
	db #29,#08,#29,#08,#29,#08,#29,#08
	db #29,#10,#29,#08,#29,#08,#29,#08
.l8846 equ $ + 3
	db #29,#08,#ff,#80,#09,#10,#84,#03
	db #08,#03,#08,#80,#09,#10,#09,#10
	db #84,#03,#08,#03,#08,#80,#09,#10
	db #04,#10,#84,#03,#08,#03,#08,#80
	db #04,#10,#04,#10,#84,#03,#08,#03
	db #08,#80,#04,#10,#0b,#10,#84,#03
	db #08,#03,#08,#80,#0b,#10,#0b,#10
	db #84,#03,#08,#03,#08,#80,#0b,#10
	db #0d,#10,#84,#03,#08,#03,#08,#80
	db #0d,#10,#01,#10,#84,#03,#08,#03
	db #08,#80,#0d,#10,#ff
.l8898
	db l86ab,l86fd,l879c,l87f1
	db l8846
;	db #ab,#fd,#9c,#f1,#46
.l889d
	db l86ab/&100,l86fd/&100,l879c/&100,l87f1/&100
	db l8846/&100
;	db #86,#86,#87,#87,#88
.l88a2
	dw l88a8,l88ad,l88af
.l88a8
	db #00,#00,#04,#04,#ff
.l88af equ $ + 2
.l88ad
	db #01,#ff,#02,#02,#03,#03,#ff
.l88b4
	db #5a,#fe,#01,#ff,#7f,#00,#05,#03
	db #00,#01,#5a,#fd,#01,#ff,#64,#00
	db #03,#01,#00,#01,#5a,#ff,#01,#ff
	db #7f,#0a,#04,#01,#00,#01,#7f,#fc
	db #01,#ff,#7f,#00,#00,#3c,#00,#03
	db #7f,#fd,#01,#ff,#7f,#01,#00,#3c
	db #00,#01,#8a,#19,#39,#00,#00,#00
	db #00,#00,#8a,#21,#39,#00,#00,#00
	db #00,#00,#8a,#29,#49,#00,#00,#00
	db #00,#00,#8a,#19,#41,#00,#00,#00
	db #00,#00
.l8906
	db #7f,#fd,#01,#ff,#7f,#00,#00,#34
	db #00,#03,#64,#02,#28,#07,#fd,#01
	db #ff,#7f,#00,#05,#07,#00,#03,#56
	db #03,#1e,#7f,#f4,#01,#ff,#7f,#00
	db #05,#07,#00,#03,#24,#00,#05,#17
	db #eb,#01,#ff,#7f,#ff,#00,#00,#00
	db #02,#24,#00,#05,#2c,#fe,#01,#ff
	db #7f,#00,#00,#5d,#00,#02,#24,#00
	db #32,#08,#ff,#01,#ff,#7f,#ff,#00
	db #00,#00,#05,#e5,#03,#4b,#08,#ff
	db #01,#ff,#46,#00,#00,#25,#00,#05
	db #ec,#00,#08,#08,#ff,#01,#ff,#37
	db #00,#00,#11,#00,#05,#a7,#00,#19
	db #7f,#ff,#63,#81,#7f,#00,#00,#00
	db #00,#02,#dd,#00,#19,#7f,#fe,#01
	db #ff,#7f,#03,#03,#23,#00,#01,#71
	db #00,#28,#7f,#ff,#01,#ff,#7f,#03
	db #03,#23,#00,#02,#71,#00,#4b,#7f
	db #ec,#00,#ff,#6a,#ff,#00,#00,#00
	db #02,#71,#00,#05,#0c,#ff,#01,#ff
	db #6d,#00,#00,#fa,#00,#07,#72,#00
	db #19,#00,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
.music_info
	db "Heroes of the Lance (1988)(U.S.Gold)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
