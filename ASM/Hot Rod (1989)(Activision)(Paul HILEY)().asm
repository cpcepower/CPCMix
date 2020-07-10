; Music of Hot Rod (1989)(Activision)(Paul HILEY)()
; Ripped by Megachur the 03/02/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HOTROD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #90fa
FIRST_THEME				equ 1
LAST_THEME				equ 7

	read "music_header.asm"

	jp l911d	; play
	jp l93bd	; init
	jp l9337
	jp l9167	; stop
.l910a equ $ + 4
.l9108 equ $ + 2
.l9107 equ $ + 1
.l9106
	db #08,#08,#00,#00,#40,#c9,#c9,#c9
.l910e
	ld hl,#0000
	ld (l9123),hl
	ld c,#07
	ld a,#2a
	call l9533
	jr l9125
;
.play_music
.l911d
;
	push af
	push bc
	push de
	push hl
	push ix
.l9123
	jr l910e
.l9125
	call l93ca
	call l9380
	ld hl,l9291
	ld a,(hl)
	ld bc,(l910a)
	sub c
	ld (hl),a
	sbc a
	ld (l9290),a
	jr nc,l913f
	ld a,#f0
	add (hl)
	ld (hl),a
.l913f
	call l9292
	ld ix,l917f
	call l91c5
	ld ix,l9191
	call l91c5
	ld ix,l91a3
	call l91c5
	sub a
	ld (l9290),a
	ld c,#00
	call l955d
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
;
.stop_music
.l9167
;
	push af
	push bc
	push de
	push hl
	sub a
	ld (l9108),a
	ld hl,l9814
	ld (l932d),hl
	call l940e
	pop hl
	pop de
.l917a
	pop bc
	pop af
	ret
.l917d
	db #ff,#ff
.l917f
	dw l917d
	db #00,#00,#04,#0a
.l9185
	dw l917d
.l9188 equ $ + 1
.l9187
	db #00,#02
.l9189
	dw l917a
.l9190 equ $ + 5
.l918d equ $ + 2
.l918c equ $ + 1
	db #01,#01,#00,#00,#00,#00
.l9191
	dw l917d
	db #00,#00,#00,#08
.l9197
	dw l917d
.l919a equ $ + 1
.l9199
	db #01,#02
.l919b
	dw l917a
.l91a2 equ $ + 5
.l919f equ $ + 2
.l919e equ $ + 1
	db #01,#01,#00,#08,#00,#00
.l91a3
	dw l917d
	db #00,#00,#02,#09
.l91a9
	dw l917d
.l91ac equ $ + 1
.l91ab
	db #00,#02
.l91ad
	dw l917a
.l91b1 equ $ + 2
.l91b0 equ $ + 1
	db #01,#01,#00
.l91b2
	db #05,#00
.l91b4
	db #00,#38,#73,#39,#30,#41,#49,#48
	db #49,#30,#60,#3e,#58,#79,#7c,#75
	db #89
.l91c5
	call l9222
	dec (ix+#0d)
	ret nz
	ld a,(ix+#0c)
	ld (ix+#0d),a
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(hl)
	inc hl
	inc a
	jr z,l9215
	dec a
	ld c,(ix+#05)
	call l9529
	ld a,(hl)
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld b,a
	ld a,(ix+#0f)
	and #03
	jr z,l9200
	ld a,#1f
	sub b
	ld c,#06
	bit 2,(ix+#0f)
	call nz,l9533
.l9200
	ld a,(ix+#02)
	add (ix+#03)
	ld (ix+#02),a
	add b
	call l9481
	ex de,hl
	ld c,(ix+#04)
	call l951c
	ret
.l9215
	bit 1,(ix+#0f)
	ret z
	res 1,(ix+#0f)
	ld (ix+#0e),a
	ret
.l9222
	ld a,(l9290)
	or a
	ret z
	dec (ix+#08)
	ret nz
	ld a,(ix+#09)
	ld (ix+#08),a
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld a,(hl)
	inc a
	ret z
	dec a
	inc hl
	ld (ix+#06),l
	ld (ix+#07),h
	or a
	ret z
	bit 1,(ix+#0f)
	ret nz
	bit 0,(ix+#0f)
	jr nz,l9274
	rlca
	rlca
	ld hl,l94a6
	add (hl)
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	add (hl)
	inc hl
	ld (ix+#02),a
.l9260
	call l9517
	ld (ix+#0d),#01
	ld (ix+#0c),e
	ld (ix+#03),d
	ld (ix+#00),l
	ld (ix+#01),h
	ret
.l9274
	dec a
	rlca
	rlca
	ld c,a
	ld b,#00
	ld hl,l9932
	add hl,bc
	call l9517
	ld a,(hl)
	ld c,#07
	call l9533
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#02),a
	ex de,hl
	jr l9260
.l9290
	nop
.l9291
	nop
.l9292
	ld a,(l9187)
	dec a
	ret nz
	ld hl,(l9185)
	ld a,(hl)
	inc a
	ret nz
	ld hl,(l932d)
.l92a0
	inc hl
	ld a,(hl)
	dec hl
	cp #00
	jr nz,l92cd
	ld a,(hl)
	inc hl
	inc hl
	cp #01
	jr z,l92fc
	cp #c3
	jr z,l92ef
	cp #15
	jr z,l9315
	cp #c9
	jr z,l9327
	cp #05
	jr z,l931e
	cp #06
	jr z,l930c
	ld hl,l9814
	ld (l932d),hl
	sub a
	ld (l9108),a
	ret
.l92cd
	call l9331
	ld (l9188),a
	ld (l9185),de
	call l9331
	ld (l919a),a
	ld (l9197),de
	call l9331
	ld (l91ac),a
	ld (l91a9),de
	ld (l932d),hl
	ret
.l92ef
	call l9517
	ex de,hl
	ld (l932f),de
	ld (l932d),hl
	jr l92a0
.l92fc
	call l9517
	ld (l9189),de
	call l9517
	ld (l919b),de
	jr l92a0
.l930c
	call l9517
	ld (l91ad),de
	jr l92a0
.l9315
	ld a,(hl)
	ld (l94a6),a
	inc hl
	inc hl
	jp l92a0
.l931e
	ld a,(hl)
	ld (l910a),a
	inc hl
	inc hl
	jp l92a0
.l9327
	ld hl,(l932f)
	jp l92a0
.l932d
	inc d
	sbc b
.l932f
	inc d
	sbc b
.l9331
	call l9517
	ld a,(de)
	inc de
	ret
.l9337
	push af
	push bc
	push de
	push hl
	push ix
	call l9347
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l9347
	dec a
	cp #0f
	ret nc
	ld c,a
	rlca
	rlca
	add c
	add c
	ld c,a
	ld b,#00
	ld hl,l9585
	add hl,bc
	ld a,(hl)
	inc hl
	ld ix,l917f
	cp #01
	jr z,l936d
	ld ix,l9191
	cp #02
	jr z,l936d
	ld ix,l91a3
.l936d
	ld a,(hl)
	cp (ix+#0e)
	ret c
	ld (ix+#11),#00
	ld (ix+#0e),a
	ld (ix+#10),l
	ld (ix+#11),h
	ret
.l9380
	ld ix,l917f
	call l9392
	ld ix,l9191
	call l9392
	ld ix,l91a3
.l9392
	ld h,(ix+#11)
	ld a,h
	or a
	ret z
	ld (ix+#11),#00
	ld l,(ix+#10)
	dec hl
	dec hl
	ld a,(hl)
	ld (ix+#02),a
	dec hl
	ld a,(hl)
	dec hl
	dec hl
	ld c,#07
	bit 2,(ix+#0f)
	call nz,l9533
	set 1,(ix+#0f)
	call l9517
	ex de,hl
	jp l9260
;
.init_music
.l93bd
;
	cp #08
	ret nc
	push af
	ld (l9108),a
	ld (l93c9),a
	pop af
	ret
.l93c9
	nop
.l93ca
	ld a,(l93c9)
	or a
	ret z
	ld c,a
	rlca
	rlca
	ld c,a
	ld b,#00
	ld hl,l97f4
	add hl,bc
	call l9517
	ld (l932d),de
	ld a,(l91b2)
	and #fc
	or (hl)
	ld (l91b2),a
	ld a,#01
	ld (l9187),a
	ld (l9199),a
	ld (l91ab),a
	ld (l918c),a
	ld (l919e),a
	ld (l91b0),a
	ld a,#38
	ld c,#07
	call l9533
	sub a
	ld (l9290),a
	ld (l9291),a
	ld (l93c9),a
.l940e
	ld hl,l917d
	ld (l9185),hl
	ld (l9197),hl
	ld (l91a9),hl
	ld (l917f),hl
	ld (l9191),hl
	ld (l91a3),hl
	sub a
	ld (l918d),a
	ld (l919f),a
	ld (l91b1),a
	ld (l9190),a
	ld (l91a2),a
	ld (l91b4),a
	ld c,#08
	sub a
	ld h,a
	ld l,a
	call l9533
	inc c
	jp l951c
.l9442
	push hl
	ld h,a
	bit 1,(ix+#0f)
	jr z,l944f
	ld a,(l9107)
	jr l9452
.l944f
	ld a,(l9106)
.l9452
	cp #08
	jr z,l947e
	and #07
	ld l,a
	sub a
	rr l
	jp nc,l9460
	ld a,h
.l9460
	sla h
	rr l
	jp nc,l9468
	add h
.l9468
	sla h
	rr l
	jp nc,l9470
	add h
.l9470
	sra a
	adc #00
	sra a
	adc #00
	sra a
	adc #00
	pop hl
	ret
.l947e
	ld a,h
	pop hl
	ret
.l9481
	push af
	push bc
	push hl
	ld b,#02
	sub #04
.l9488
	cp #30
	jr c,l9491
	sub #30
	inc b
	jr l9488
.l9491
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l94a7
	add hl,de
	call l9517
.l949c
	srl d
	rr e
	djnz l949c
	pop hl
	pop bc
	pop af
	ret
.l94a6
	ld (hl),b
.l94a7
	dw #0eee,#0eb7,#0e81,#0e4b
	dw #0e17,#0de3,#0db0,#0d7e
	dw #0d4d,#0d1c,#0cec,#0cbc
	dw #0c8d,#0c5f,#0c32,#0c05
	dw #0bd9,#0bae,#0b83,#0b58
	dw #0b2f,#0b06,#0add,#0ab5
	dw #0a8e,#0a67,#0a41,#0a1b
	dw #09f6,#09d2,#09ae,#098a
	dw #0967,#0945,#0923,#0901
	dw #08e0,#08bf,#089f,#0880
	dw #0861,#0842,#0823,#0806
	dw #07e8,#07cb,#07ae,#0792
	
	ld hl,(#2b45)
	ld (#3b33),hl
	ld a,(#223b)
	ld d,d
	jr nc,l955d
	ld c,e
	ld c,(hl)
	ld b,a
	ld e,e
.l9517
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ret
.l951c
	push af
	ld a,l
	call l9533
	inc c
	ld a,h
	call l9533
	dec c
	pop af
	ret
.l9529
	call l9442
	or a
	jr z,l9533
	srl a
	add #08
.l9533
	push af
	push bc
	call l954b
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #80
	out (c),a
	xor #80
	out (c),a
	pop bc
	pop af
	ret
.l954b
	push af
	ld b,#f4
	out (c),c
	ld bc,#f6c0
	in a,(c)
	or c
	out (c),a
	xor c
	out (c),a
	pop af
	ret
.l955d
	push bc
	push af
	push bc
	ld c,#0e
	call l954b
	pop bc
	pop af
	ld b,#f7
	ld a,#92
	out (c),a
	push bc
	set 6,c
	ld b,#f6
	out (c),c
	ld b,#f4
	in a,(c)
	pop bc
	push af
	ld a,#82
	out (c),a
	pop af
	pop bc
	ret
	dw l95db
.l9585 equ $ + 2
	db #38,#8c,#02,#01
	dw l95e8
	db #38,#aa,#02,#01
	dw l95e8
	db #38,#7a,#02,#01
	dw l95f3
	db #38,#aa,#02,#01
	dw l9610
	db #28,#14,#00,#03
	dw l9631
	db #38,#c3,#02,#02
	dw l9666
	db #28,#64,#00,#01
	dw l96a2
	db #2a,#00,#00,#03
	dw l9671
	db #38,#a6,#02,#04
	dw l96d5
	db #38,#14,#01,#01
	dw l9610
	db #2a,#14,#00,#03
	dw l96de
	db #38,#b4,#02,#03
	dw l971b
	db #38,#96,#01,#02
	dw l9746
	db #2a,#78,#00,#03
	dw l9787
.l95db equ $ + 4
	db #38,#af,#02,#03,#01,#0c,#0f,#00
	db #0a,#00,#05,#00,#03,#00,#00,#00
.l95e8 equ $ + 1
	db #ff,#01,#02,#0a,#00,#05,#00,#03
.l95f3 equ $ + 4
	db #00,#00,#00,#ff,#01,#00,#08,#00
	db #0c,#00,#06,#00,#08,#1c,#0c,#1c
	db #06,#1c,#08,#30,#0c,#30,#06,#30
	db #08,#4c,#0c,#4c,#06,#4c,#00,#00
.l9610 equ $ + 1
	db #ff,#02,#ff,#0f,#09,#0d,#00,#0b
	db #0c,#09,#08,#08,#0a,#07,#09,#06
	db #07,#05,#05,#04,#06,#04,#04,#03
	db #03,#02,#02,#01,#01,#01,#02,#00
.l9631 equ $ + 2
	db #01,#ff,#01,#00,#06,#fe,#08,#fa
	db #03,#fb,#05,#00,#09,#fb,#03,#fb
	db #06,#00,#09,#fb,#03,#fb,#05,#01
	db #08,#fb,#03,#fb,#06,#00,#07,#fc
	db #03,#fb,#05,#02,#08,#fb,#03,#fb
	db #05,#ff,#06,#fb,#03,#fb,#03,#ff
.l9666 equ $ + 7
	db #03,#fa,#03,#fb,#00,#01,#ff,#01
	db #10,#0a,#0a,#05,#05,#02,#00,#00
.l9671 equ $ + 2
	db #00,#ff,#01,#00,#08,#00,#0c,#00
	db #06,#00,#08,#08,#0c,#08,#06,#08
	db #08,#10,#0c,#10,#06,#10,#08,#1c
	db #0c,#1c,#06,#1c,#03,#1c,#03,#1c
	db #03,#1c,#03,#1c,#08,#10,#0c,#10
	db #08,#1c,#0c,#1c,#06,#1c,#03,#1c
.l96a2 equ $ + 3
	db #00,#00,#ff,#03,#00,#04,#05,#01
	db #00,#03,#02,#06,#05,#02,#00,#05
	db #02,#08,#05,#02,#00,#05,#02,#08
	db #05,#02,#00,#05,#02,#08,#05,#02
	db #00,#05,#02,#08,#05,#02,#00,#05
	db #02,#08,#05,#02,#00,#02,#02,#05
.l96d5 equ $ + 6
	db #05,#01,#00,#00,#00,#ff,#01,#00
.l96de equ $ + 7
	db #0a,#14,#05,#00,#00,#00,#ff,#01
	db #ff,#05,#f8,#07,#00,#09,#08,#07
	db #00,#06,#fc,#05,#fa,#03,#f9,#05
	db #00,#07,#08,#09,#10,#07,#08,#06
	db #04,#05,#02,#03,#01,#05,#00,#07
	db #08,#09,#10,#07,#08,#06,#04,#05
	db #02,#03,#01,#05,#00,#07,#08,#09
	db #10,#07,#08,#06,#04,#05,#02,#03
.l971b equ $ + 4
	db #01,#00,#00,#ff,#01,#00,#0a,#02
	db #08,#08,#09,#00,#07,#07,#09,#01
	db #07,#07,#09,#02,#07,#07,#03,#fe
	db #00,#00,#0a,#02,#08,#09,#09,#01
	db #07,#07,#09,#01,#07,#07,#09,#00
.l9746 equ $ + 7
	db #07,#07,#03,#fe,#00,#00,#ff,#02
	db #fe,#02,#00,#03,#23,#02,#02,#04
	db #26,#03,#07,#07,#29,#03,#05,#04
	db #25,#03,#06,#04,#24,#05,#05,#06
	db #24,#07,#09,#06,#28,#08,#06,#05
	db #25,#04,#05,#03,#24,#03,#05,#02
	db #24,#02,#04,#02,#21,#02,#04,#03
	db #25,#02,#04,#03,#24,#02,#03,#02
	db #21,#02,#03,#01,#22,#00,#00,#ff
.l9787
	db #01,#00,#03,#00,#03,#02,#03,#04
	db #03,#06,#07,#08,#09,#0c,#08,#0b
	db #08,#0b,#08,#0a,#08,#0a,#07,#09
	db #07,#09,#07,#08,#07,#08,#06,#07
	db #06,#07,#05,#06,#05,#06,#04,#05
	db #04,#05,#03,#04,#03,#04,#02,#03
	db #02,#03,#02,#02,#02,#02,#01,#00
	db #03,#00,#03,#02,#03,#04,#03,#06
	db #07,#08,#09,#0c,#08,#0b,#08,#0b
	db #08,#0a,#08,#0a,#07,#09,#07,#09
	db #07,#08,#07,#08,#06,#07,#06,#07
	db #05,#06,#05,#06,#04,#05,#04,#05
	db #03,#04,#03,#04,#02,#03,#02,#03
.l97f4 equ $ + 5
	db #02,#02,#02,#02,#01,#00,#00,#00
	db #ff
	dw l9bde,#0000,l9a9c,#0001
	dw l9a1d,#0001,l9d2f,#0001
	dw l9c3a,#0001,l9c96,#0000
	dw l9983
.l9814 equ $ + 2
	db #01,#00,#00,#00,#01,#00,#00,#00
.l981c equ $ + 2
	db #01,#ff,#a0,#02,#00,#0f,#00,#04
	db #00,#0a,#00,#07,#00,#06,#00,#02
	db #00,#02,#00,#02,#00,#02,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#00
.l983c equ $ + 2
	db #01,#ff,#30,#01,#00,#0c,#02,#04
	db #fe,#04,#02,#04,#01,#04,#00,#04
	db #ff,#04,#fe,#04,#ff,#04,#00,#04
	db #01,#03,#01,#03,#02,#03,#01,#03
	db #00,#02,#ff,#02,#fe,#02,#ff,#02
	db #00,#02,#00,#01,#01,#00,#01,#ff
.l986a
	db #00,#01,#00,#04,#fe,#06,#ff,#09
	db #00,#09,#01,#09,#02,#09,#01,#08
	db #00,#08,#ff,#08,#fe,#08,#ff,#07
	db #00,#07,#01,#06,#04,#06,#01,#05
	db #00,#05,#ff,#04,#fe,#04,#ff,#04
	db #00,#04,#01,#03,#02,#03,#01,#03
	db #00,#03,#ff,#02,#fe,#02,#ff,#02
	db #00,#02,#01,#01,#02,#01,#01,#00
.l98ac equ $ + 2
	db #01,#ff,#00,#01,#00,#04,#00,#06
	db #02,#08,#04,#0a,#04,#0a,#03,#0c
	db #02,#0c,#01,#0c,#00,#0c,#00,#0a
	db #00,#0a,#00,#07,#00,#05,#00,#04
	db #00,#04,#00,#04,#00,#04,#00,#03
	db #00,#03,#00,#02,#00,#02,#00,#01
.l98e0 equ $ + 6
	db #00,#01,#00,#00,#01,#ff,#00,#01
	db #00,#0a,#02,#0a,#ff,#09,#00,#0a
	db #00,#09,#00,#0a,#01,#07,#00,#06
	db #00,#06,#00,#04,#ff,#06,#00,#04
	db #00,#05,#00,#03,#01,#05,#00,#03
	db #00,#04,#00,#02,#ff,#04,#00,#01
	db #00,#03,#00,#02,#01,#03,#00,#02
	db #00,#03,#00,#02,#ff,#02,#00,#01
	db #00,#02,#00,#01,#01,#02,#00,#01
	db #00,#01,#00,#01,#ff,#01,#00,#01
	db #00,#01,#00,#01,#00,#00,#01,#ff
.l9932
	dw l9953,#0c28,l9953,#4428
	dw l9971,#002a,l9962,#002a
	dw l994a,#0c28,l994a
.l994a equ $ + 2
	db #28,#3c,#01,#00,#0c,#14,#05,#0a
.l9953 equ $ + 3
	db #00,#01,#ff,#01,#fe,#0c,#06,#05
	db #03,#04,#03,#03,#02,#02,#01,#00
.l9962 equ $ + 2
	db #01,#ff,#01,#00,#0c,#1e,#07,#1a
	db #05,#18,#02,#16,#01,#14,#00,#01
.l9971 equ $ + 1
	db #ff,#01,#00,#0c,#14,#07,#10,#05
	db #0e,#02,#0c,#01,#0a,#00,#01,#ff
.l9980
	db #08,#00,#ff
.l9983
	dw #0015,#004a,#0005,#002c
.l9991 equ $ + 6
	dw #0001,l983c,l981c,l99b9
	dw l99db,l9a03,l99b9,l99db
	dw l9a03,l99b9,l99db,l9a03
	dw l99b9,l99db,l9a03,l99cb
	dw l99ea,l9a03,l99d1,l99fb
	dw l9a14,#00c3,l9991
.l99b9
	db #01,#0d,#00,#0d,#00,#11,#00,#11
	db #12,#00,#12,#12,#00,#14,#00,#00
.l99cb equ $ + 2
	db #00,#ff,#04,#12,#00,#0f,#00,#ff
.l99d1
	db #02,#10,#00,#0f,#00,#0d,#00,#0a
.l99db equ $ + 2
	db #0b,#ff,#01,#19,#00,#00,#00,#0d
	db #00,#0d,#19,#00,#00,#19,#00,#0d
.l99ea equ $ + 1
	db #ff,#01,#17,#00,#00,#00,#0b,#00
	db #0b,#17,#00,#00,#00,#00,#0b,#00
.l99fb equ $ + 2
	db #0b,#00,#02,#10,#1c,#10,#1c,#10
.l9a03 equ $ + 2
	db #1c,#ff,#01,#06,#00,#00,#00,#04
	db #00,#06,#05,#06,#05,#06,#00,#04
.l9a14 equ $ + 3
	db #00,#05,#00,#02,#06,#06,#04,#06
.l9a1d equ $ + 4
	db #06,#06,#04,#03,#15,#00,#7a,#00
	db #05,#00,#28,#00,#01,#00
.l9a2b equ $ + 4
	dw l981c,l981c,l9a5f,l9a80
	dw l9a8e,l9a69,l9a80,l9a8e
	dw l9a5f,l9a80,l9a93,l9a73
	dw l9980,l9a8e,l9a5f,l9a80
	dw l9a8e,l9a69,l9a80,l9a8e
	dw l9a5f,l9a80,l9a8e,l9a76
	dw l9a85,l9a93,#00c3,l9a2b
.l9a5f
	db #01,#0f,#17,#0f,#00,#15,#00,#0f
.l9a69 equ $ + 2
	db #00,#ff,#01,#14,#00,#0f,#12,#00
.l9a76 equ $ + 7
.l9a73 equ $ + 4
	db #0d,#0f,#00,#ff,#08,#14,#ff,#01
	db #14,#00,#19,#1b,#00,#00,#00,#00
.l9a85 equ $ + 6
.l9a80 equ $ + 1
	db #ff,#02,#03,#03,#03,#03,#01,#03
.l9a8e equ $ + 7
	db #00,#08,#0a,#0b,#0f,#0d,#08,#02
.l9a93 equ $ + 4
	db #06,#06,#04,#06,#01,#06,#00,#06
.l9a9c equ $ + 5
	db #00,#04,#00,#06,#06,#15,#00,#4a
	db #00,#05,#00,#2e,#00,#01,#00
.l9aaa equ $ + 4
	dw l98e0,l981c,l9b0e,l9ba8
	dw l9bcc,l9b18,l9ba8,l9bcc
	dw l9b0e,l9ba8,l9bcc,l9b2a
	dw l9ba8,l9bcc,l9b0e,l9ba8
	dw l9bcc,l9b18,l9ba8,l9bcc
	dw l9b0e,l9ba8,l9bcc,l9b3c
	dw l9bb1,l9bcc,l9b4e,l9bba
	dw l9bcc,l9b4e,l9bba,l9bcc
	dw l9b60,l9ba8,l9bcc,l9b72
	dw l9ba8,l9bcc,l9b4e,l9bba
	dw l9bcc,l9b4e,l9bba,l9bcc
	dw l9b84,l9bc3,l9bcc,l9b96
	dw l9bc3,l9bd5,#00c3,l9aaa
.l9b0e
	db #02,#00,#14,#14,#0f,#12,#11,#0f
.l9b18 equ $ + 2
	db #08,#ff,#01,#0c,#00,#0d,#00,#0e
	db #0f,#00,#00,#08,#00,#00,#00,#00
.l9b2a equ $ + 4
	db #00,#00,#00,#ff,#01,#0c,#00,#0f
	db #00,#0c,#0a,#00,#00,#08,#00,#00
.l9b3c equ $ + 6
	db #00,#00,#00,#00,#00,#ff,#01,#0c
	db #00,#0f,#00,#0c,#00,#0f,#00,#0b
	db #0a,#00,#00,#08,#00,#00,#00,#ff
.l9b4e
	db #01,#00,#00,#00,#00,#11,#00,#12
	db #00,#14,#00,#11,#00,#12,#12,#00
.l9b60 equ $ + 2
	db #14,#ff,#01,#00,#00,#00,#00,#0f
	db #00,#11,#00,#14,#00,#0f,#00,#11
.l9b72 equ $ + 4
	db #11,#00,#14,#ff,#01,#00,#00,#00
	db #00,#0f,#00,#11,#00,#18,#00,#16
.l9b84 equ $ + 6
	db #00,#14,#00,#00,#00,#ff,#01,#00
	db #00,#13,#00,#14,#00,#16,#00,#13
	db #00,#14,#00,#16,#00,#0f,#00,#ff
.l9b96
	db #01,#0f,#11,#00,#1b,#1d,#00,#0f
	db #11,#00,#1b,#1d,#00,#00,#00,#00
.l9ba8 equ $ + 2
	db #00,#ff,#02,#14,#14,#20,#20,#14
.l9bb1 equ $ + 3
	db #14,#20,#20,#02,#14,#14,#20,#20
.l9bba equ $ + 4
	db #14,#14,#16,#18,#02,#0d,#0d,#19
.l9bc3 equ $ + 5
	db #19,#0d,#0d,#19,#19,#02,#0f,#0f
.l9bcc equ $ + 6
	db #0f,#0f,#0f,#0f,#0f,#0f,#02,#06
.l9bd5 equ $ + 7
	db #05,#04,#04,#05,#05,#04,#03,#02
	db #04,#06,#02,#01,#04,#03,#02,#01
.l9bde
	db #15,#00,#4a,#00,#05,#00,#32,#00
	db #01,#00
	dw l98e0,l98e0,#0006,l98e0
	dw l9c04,l9c0f,l9c1e,#0001
	dw l98e0,l986a,l9c2d,l9c2d
	dw l9980
.l9c04 equ $ + 2
	db #00,#00,#03,#0b,#0b,#0d,#0d,#0f
.l9c0f equ $ + 5
	db #00,#00,#00,#00,#ff,#01,#0f,#00
	db #00,#0f,#0f,#0f,#11,#00,#00,#11
.l9c1e equ $ + 4
	db #11,#11,#13,#ff,#01,#12,#00,#00
	db #12,#12,#12,#14,#00,#00,#14,#14
.l9c2d equ $ + 3
	db #14,#16,#ff,#03,#0b,#00,#00,#00
	db #0b,#00,#00,#00,#17,#00,#00,#ff
.l9c3a
	db #15,#00,#4a,#00,#05,#00,#30,#00
	db #01,#00
	dw l98e0,l98e0,#0006,l98e0
	dw l9c60,l9c74,l9c7e,l9c6a
	dw l9c79,l9c8f,l9980,l9980
	dw l9980,#0000
.l9c60
	db #02,#18,#00,#16,#00,#00,#00,#00
.l9c6a equ $ + 2
	db #00,#ff,#02,#18,#00,#1a,#00,#00
.l9c74 equ $ + 4
	db #00,#00,#00,#ff,#02,#15,#00,#13
.l9c7e equ $ + 6
.l9c79 equ $ + 1
	db #ff,#02,#15,#00,#17,#ff,#01,#02
	db #00,#04,#00,#01,#00,#06,#04,#02
.l9c8f equ $ + 7
	db #01,#06,#04,#02,#01,#02,#02,#01
.l9c96 equ $ + 6
	db #01,#00,#03,#00,#04,#ff,#15,#00
	db #4a,#00,#05,#00,#1e,#00,#01,#00
	dw l98e0,l986a,#0006,l981c
	dw l9ce0,l9d16,l9d25,l9cea
	dw l9d16,l9d25,l9cee,l9d16
	dw l9d25,l9cf8,l9d1c,l9d25
	dw l9cfb,l9d16,l9d25,l9d05
	dw l9d16,l9d25,l9d09,l9d16
	dw l9d25,l9d13,l9d19,l9d2b
	dw l9980,l9980,l9980,#0000
.l9ce0
	db #01,#16,#00,#00,#00,#12,#00,#12
.l9cee equ $ + 6
.l9cea equ $ + 2
	db #14,#ff,#04,#16,#12,#ff,#01,#14
	db #13,#14,#16,#14,#00,#12,#00,#ff
.l9cfb equ $ + 3
.l9cf8
	db #08,#11,#ff,#01,#16,#17,#19,#1b
.l9d05 equ $ + 5
	db #19,#00,#19,#00,#ff,#04,#19,#16
.l9d09 equ $ + 1
	db #ff,#01,#17,#00,#16,#00,#14,#00
.l9d16 equ $ + 6
.l9d13 equ $ + 3
	db #00,#16,#ff,#08,#12,#ff,#04,#12
.l9d1c equ $ + 4
.l9d19 equ $ + 1
	db #0d,#08,#12,#ff,#01,#0d,#0c,#0d
.l9d25 equ $ + 5
	db #0f,#0d,#0b,#0a,#08,#02,#00,#12
.l9d2f equ $ + 7
.l9d2b equ $ + 3
	db #00,#12,#ff,#02,#00,#12,#ff,#15
	db #00,#4a,#00,#05,#00,#2c,#00,#01
	db #00
.l9d3d equ $ + 4
	dw l98ac,l981c,#00c3,l9d79
	dw l9db9,l9dcf,l9df7,l9980
	dw l9dd8,l9df7,#00c3,l9d79
	dw l9dbf,l9dcf,l9df7,l9980
	dw l9dd8,l9df7,#00c3,l9d9f
	dw #00c3,l9d9f,#00c3,l9d9f
	dw l9980,l9de1,l9df7,l9980
	dw l9df1,l9df7,#00c3,l9d3d
.l9d79
	dw l9dad,l9dcf,l9df7,l9db1
	dw l9dd8,l9df7,l9db5,l9dcf
	dw l9df7,l9dc5,l9dd8,l9df7
	dw l9dad,l9dcf,l9df7,l9db1
.l9d9f equ $ + 6
	dw l9dd8,l9df7,#00c9,l9980
	dw l9de1,l9df7,l9980,l9deb
	dw l9df7
.l9db1 equ $ + 6
.l9dad equ $ + 2
	db #c9,#00,#04,#15,#1c,#ff,#04,#14
.l9db9 equ $ + 6
.l9db5 equ $ + 2
	db #1b,#ff,#04,#12,#1b,#ff,#02,#12
.l9dbf equ $ + 4
	db #0b,#00,#00,#ff,#02,#12,#17,#00
.l9dc5 equ $ + 2
	db #00,#ff,#01,#19,#1b,#00,#1b,#00
.l9dcf equ $ + 4
	db #00,#12,#14,#ff,#01,#0b,#0b,#0b
.l9dd8 equ $ + 5
	db #00,#0f,#00,#12,#00,#01,#15,#00
.l9de1 equ $ + 6
	db #00,#14,#12,#00,#0b,#0b,#01,#00
	db #00,#17,#17,#23,#23,#17,#17,#ff
.l9df1 equ $ + 6
.l9deb
	db #02,#1e,#23,#23,#00,#ff,#02,#1e
.l9df7 equ $ + 4
	db #27,#25,#23,#ff,#01,#06,#00,#06
	db #06,#04,#00,#06,#05
	db #ff	; added by Megachur
;
.music_info
	db "Hot Rod (1989)(Activision)(Paul HILEY)",0
	db "",0

	read "music_end.asm"
