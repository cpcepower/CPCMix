; Music of Meurtres A Venise (1988)(Cobra Soft)()(MusicPro)
; Ripped by Megachur the 27/09/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MEURTRAV.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #8000+#09

	read "music_header.asm"

;	jp l8e3e	; init music interrupt ?
;	jp l8e0e	; stop music interrupt ?
;	jp l8e1c
	di
	call l80c5
	ld hl,l801b
	ld (#0039),hl
	ei
.l8014
	ld a,(l80b2)
	or a
	jr z,l8014
	ret
.l801b
	ei
	push af
	push bc
	push de
	push hl
	ld hl,l80b0
	dec (hl)
	call z,l802d
	pop hl
	pop de
	pop bc
	pop af
	reti
.l802d
	ld (hl),#06
	ld hl,l80b1
	inc (hl)
	ld a,(l80b4)
	and a
	jr z,l8043
	dec a
	ld (l80b4),a
	jr nz,l8043
	dec a
	ld (l80b3),a
.l8043
	ld bc,#f40e
	out (c),c
	ld b,#f6
	in a,(c)
	and #30
	ld c,a
	or #c0
	out (c),a
	out (c),c
	inc b
	ld a,#92
	out (c),a
	push bc
	ld de,#0800
	ld hl,l80b5
.l8061
	ld a,(hl)
	inc hl
	ld b,#f6
	out (c),a
	ld b,#f4
	in a,(c)
	cpl
	and (hl)
	jp z,l8071
	scf
.l8071
	rl e
	inc hl
	dec d
	jr nz,l8061
	ld b,#f6
	ld a,#49
	out (c),a
	ld b,#f4
	in a,(c)
	cpl
	and #1f
	or e
	ld e,a
	ld a,(l80b3)
	and e
	ld (l80b2),a
	pop bc
	ld a,#82
	out (c),a
	dec b
	out (c),c
	push ix
	call l813d
	pop ix
	ret
	ld a,(l80b2)
	and c
	ld (l80b2),a
	ld a,(l80b3)
	and c
	ld (l80b3),a
	ld a,b
	ld (l80b4),a
	ret
.l80b5 equ $ + 5
.l80b4 equ $ + 4
.l80b3 equ $ + 3
.l80b2 equ $ + 2
.l80b1 equ $ + 1
.l80b0
	db #06,#00,#00,#ff,#00,#48,#04,#42
	db #80,#44,#40,#45,#80,#40,#02,#41
	db #01,#40,#04,#40,#01
;
.init_music
.l80c5
;
	xor a
	ld (l8555),a
	ld (l8559),a
	ld hl,l8560
	ld (hl),#00
	ld de,l8561
	ld bc,#0128
	ldir
	ld a,(l878a)
	ld (l8689),a
	ld bc,l8789
	ld hl,(l878b)
	add hl,bc
	ld (l868c),hl
	ld hl,(l878d)
	add hl,bc
	ld (l868e),hl
	ld hl,(l878f)
	add hl,bc
	ld (l8565),hl
	ld hl,(l8791)
	add hl,bc
	ld (l85a0),hl
	ld hl,(l8793)
	add hl,bc
	ld (l85db),hl
	ld hl,l8795
	ld (l868a),hl
	ld a,#0f
	ld (l8691),a
	ld hl,l855a
	ld de,l8560
	ld bc,#0005
	ldir
	ld hl,l855a
	ld de,l859b
	ld bc,#0005
	ldir
	ld hl,l855a
	ld de,l85d6
	ld bc,#0005
	ldir
	ld a,#ff
	ld (l8555),a
	ld c,#38
	ld a,#07
	jp l8767
;
.play_music
.l813d		; play music
;
	ld a,(l8555)
	or a
	ret z
	xor a
	ld (l8555),a
	ld a,#08
	ld (l8694),a
	cpl
	ld (l8693),a
	ld a,(l8691)
	ld e,a
	ld b,#03
	ld hl,l85f5
.l8158
	ld a,(hl)
	ld c,a
	ld a,c
	cp e
	jp c,l8160
	ld a,e
.l8160
	ld c,a
	ld a,b
	add #07
	push de
	call l8767
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l8158
	ld hl,l8689
	dec (hl)
	ld ix,l8560
	xor a
.l817a
	ld (l8690),a
	ld a,(ix+#07)
	or a
	jp nz,l83f1
.l8184
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l818e
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jp nz,l81fe
	ld l,(ix+#01)
	ld h,(ix+#02)
.l81a0
	ld a,(hl)
	cp #ff
	jp nz,l81df
	ld l,(ix+#05)		; reinit music
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l8559)
	or a
	jp z,l81a0
	push hl
	push bc
	push de
	ld a,(l8690)
	ld c,a
	ld b,#00
	ld hl,l8556
	add hl,bc
	push hl
	ld e,(hl)
	add a
	ld c,a
	ld hl,l878f
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l8789
	add hl,bc
	ld (hl),e
	pop hl
	xor a
	ld (hl),a
	pop de
	pop bc
	pop hl
	jp l81a0
.l81df
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l868a)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l8789
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l818e
.l81fe
	bit 7,a
	jp nz,l826e
	ld hl,l869b
	or a
	jp z,l820d
	add (ix+#20)
.l820d
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
	ld a,(l8690)
	inc a
	ld hl,l85fd
	ld bc,#0014
.l823f
	add hl,bc
	dec a
	jp nz,l823f
	call l852c
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l8690)
	inc a
	ld hl,l8639
	ld bc,#0014
.l8259
	add hl,bc
	dec a
	jp nz,l8259
	call l852c
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l83dd
.l826e
	bit 6,a
	jp nz,l82bb
	bit 5,a
	jp z,l82a8
	and #1f
	ld b,a
	jp z,l8290
	ld a,(l8692)
	push hl
	ld hl,l8693
	and (hl)
	pop hl
	ld c,a
	ld a,#07
	call l8767
	jp l829f
.l8290
	ld a,(l8692)
	push hl
	ld hl,l8694
	or (hl)
	pop hl
	ld c,a
	ld a,#07
	call l8767
.l829f
	ld c,b
	ld a,#06
	call l8767
	jp l83dd
.l82a8
	and #1f
	ld hl,l875b
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l83dd
.l82bb
	bit 5,a
	jp nz,l832e
	and #1f
	add a
	add a
	add a
	ld hl,(l868c)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l82d7
	ld a,(de)
	bit 7,a
	jp nz,l82ea
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l8303
.l82ea
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
	jp nz,l82fd
	ld b,#01
.l82fd
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l8303
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jp nz,l82d7
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l85fd
	ld a,(l8690)
	inc a
.l8322
	add hl,bc
	dec a
	jp nz,l8322
	ex de,hl
	call l852c
	jp l83dd
.l832e
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l8345
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
.l8345
	ld c,e
	add e
	ld e,b
	add e
	ld d,e
	add e
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l83dd
	ld a,#02
	jp l835a
	ld a,#01
.l835a
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jp z,l83d2
	add a
	add a
	add a
	ld hl,(l868e)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l8379
	ld a,(de)
	bit 7,a
	jp nz,l838e
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
	jp l83a7
.l838e
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
	jp nz,l83a1
	ld b,#ff
.l83a1
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l83a7
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jp nz,l8379
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l8639
	ld a,(l8690)
	inc a
.l83c6
	add hl,bc
	dec a
	jp nz,l83c6
	ex de,hl
	call l852c
	jp l83d7
.l83d2
	ld a,#00
	ld (ix+#09),a
.l83d7
	ld a,(ix+#09)
	ld (ix+#3a),a
.l83dd
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l8184
.l83f1
	ld a,(l8689)
	or a
	jp nz,l83fb
	dec (ix+#07)
.l83fb
	ld a,(ix+#0a)
	cp #04
	jp z,l8449
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
	jp nz,l842a
	dec (hl)
	jp nz,l841d
	inc (ix+#0a)
.l841d
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l8449
.l842a
	dec (hl)
	jp nz,l8440
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
	jp l8442
.l8440
	inc hl
	inc hl
.l8442
	dec (hl)
	jp nz,l8449
	inc (ix+#0a)
.l8449
	ld a,(ix+#09)
	or a
	jp z,l84ee
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
	jp nz,l8489
	dec (hl)
	jp nz,l846d
	inc (ix+#21)
.l846d
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,l8479
	inc b
.l8479
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l84b9
.l8489
	dec (hl)
	jp nz,l84b0
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
	jp nz,l849e
	inc b
.l849e
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l84b2
.l84b0
	inc hl
	inc hl
.l84b2
	dec (hl)
	jp nz,l84b9
	inc (ix+#21)
.l84b9
	ld a,(ix+#21)
	cp #04
	jp nz,l84ee
	ld a,(ix+#09)
	cp #02
	jp nz,l84d0
	xor a
	ld (ix+#09),a
	jp l84ee
.l84d0
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l8690)
	inc a
	ld hl,l8639
	ld bc,#0014
.l84e6
	add hl,bc
	dec a
	jp nz,l84e6
	call l852c
.l84ee
	ld c,(ix+#36)
	ld a,(l8690)
	add a
	call l8767
	ld c,(ix+#37)
	inc a
	call l8767
	ld bc,#003b
	add ix,bc
	ld a,(l8694)
	rlc a
	ld (l8694),a
	cpl
	ld (l8693),a
	ld a,(l8690)
	inc a
	cp #03
	jp nz,l817a
	ld a,(l8689)
	or a
	jp nz,l8526
	ld a,(l878a)
	ld (l8689),a
.l8526
	ld a,#ff
	ld (l8555),a
	ret
.l852c
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
.l855a equ $ + 5
.l8559 equ $ + 4
.l8556 equ $ + 1
.l8555
	db #ff,#00,#00,#00,#ff,#00,#5f,#85
.l8560 equ $ + 3
	db #5f,#85,#ff,#00
.l8565 equ $ + 4
.l8561
	dw #0000,#0000,#0000
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l859b equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85a0 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85d6 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85db equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85f5 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85fd equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8639 equ $ + 2
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
.l868e equ $ + 7
.l868c equ $ + 5
.l868a equ $ + 3
.l8689 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8694 equ $ + 5
.l8693 equ $ + 4
.l8692 equ $ + 3
.l8691 equ $ + 2
.l8690 equ $ + 1
	db #00,#00,#00,#38,#00,#00,#00,#00
.l869b equ $ + 4
	db #00,#00,#00,#00,#00,#00,#9c,#0c
	db #e7,#0b,#3c,#0b,#9b,#0a,#02,#0a
	db #73,#09,#eb,#08,#6b,#08,#f2,#07
	db #80,#07,#14,#07,#ae,#06,#4e,#06
	db #f4,#05,#9e,#05,#4d,#05,#01,#05
	db #69,#04,#75,#04,#35,#04,#f9,#03
	db #c0,#03,#8a,#03,#57,#03,#27,#03
	db #fa,#02,#cf,#02,#a7,#02,#81,#02
	db #5d,#02,#3b,#02,#1b,#02,#fc,#01
	db #e0,#01,#c5,#01,#ac,#01,#94,#01
	db #7d,#01,#68,#01,#53,#01,#40,#01
	db #2e,#01,#1d,#01,#0d,#01,#fe,#00
	db #f0,#00,#e2,#00,#d6,#00,#ca,#00
	db #be,#00,#b4,#00,#aa,#00,#a0,#00
	db #97,#00,#8f,#00,#87,#00,#7f,#00
	db #78,#00,#71,#00,#6b,#00,#65,#00
	db #5f,#00,#5a,#00,#55,#00,#50,#00
	db #4c,#00,#47,#00,#43,#00,#40,#00
	db #3c,#00,#39,#00,#35,#00,#32,#00
	db #30,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
.l875b equ $ + 4
	db #0f,#00,#0e,#00,#02,#03,#04,#06
	db #08,#0c,#10,#18,#20,#30,#40,#60
.l8767
	db #f5,#c5,#06,#f4,#ed,#79,#06,#f6
	db #ed,#78,#f6,#c0,#ed,#79,#e6,#3f
	db #ed,#79,#06,#f4,#ed,#49,#06,#f6
	db #4f,#f6,#80,#ed,#79,#ed,#49,#c1
.l878d equ $ + 6
.l878b equ $ + 4
.l878a equ $ + 3
.l8789 equ $ + 2
	db #f1,#c9,#00,#02,#dd,#03,#dd,#04
.l8795 equ $ + 6
.l8793 equ $ + 4
.l8791 equ $ + 2
.l878f
	db #4e,#00,#63,#00,#78,#00,#8d,#00
	db #ab,#00,#c8,#00,#df,#00,#f6,#00
	db #0f,#01,#2c,#01,#4a,#01,#6f,#01
	db #97,#01,#b5,#01,#d1,#01,#e8,#01
	db #04,#02,#1e,#02,#32,#02,#3e,#02
	db #4f,#02,#6d,#02,#8c,#02,#a9,#02
	db #be,#02,#cf,#02,#dd,#02,#e9,#02
	db #fa,#02,#23,#03,#4d,#03,#62,#03
	db #73,#03,#81,#03,#8d,#03,#b5,#03
	db #00,#01,#02,#03,#04,#05,#06,#07
	db #08,#09,#0a,#02,#03,#04,#05,#06
	db #07,#08,#09,#0a,#ff,#0c,#0d,#0e
	db #0f,#10,#11,#11,#11,#11,#12,#13
	db #0e,#0f,#10,#11,#11,#11,#11,#12
	db #13,#ff,#14,#15,#16,#17,#18,#19
	db #1a,#19,#1a,#1b,#1c,#1d,#1e,#18
	db #19,#1a,#1f,#20,#1b,#1c,#ff,#e0
	db #00,#a0,#c1,#e2,#05,#83,#1f,#27
	db #27,#27,#27,#81,#26,#27,#83,#29
	db #26,#1f,#29,#29,#29,#29,#81,#27
	db #29,#83,#2b,#27,#ff,#e0,#00,#a0
	db #c1,#e2,#05,#83,#24,#ca,#85,#2c
	db #c1,#83,#24,#23,#ca,#85,#2b,#c1
	db #83,#26,#27,#29,#22,#26,#cb,#87
	db #27,#ff,#e0,#0c,#a0,#cb,#e2,#05
	db #83,#22,#2b,#2b,#2b,#85,#2b,#29
	db #83,#22,#2c,#2c,#2c,#85,#2c,#2b
	db #ff,#e0,#00,#a0,#cb,#e2,#05,#83
	db #33,#3c,#3c,#3c,#85,#3c,#3a,#83
	db #30,#38,#38,#38,#85,#38,#37,#ff
	db #e0,#00,#a0,#cb,#e2,#05,#83,#33
	db #3c,#3c,#3c,#3c,#81,#3a,#38,#83
	db #37,#3a,#37,#33,#2e,#32,#87,#33
	db #ff,#e0,#00,#a0,#c1,#e2,#05,#83
	db #33,#33,#33,#33,#33,#81,#32,#30
	db #85,#2e,#83,#33,#33,#33,#33,#35
	db #81,#32,#30,#85,#2e,#ff,#e0,#00
	db #a0,#c1,#e2,#05,#83,#33,#33,#33
	db #33,#33,#81,#32,#30,#85,#2e,#83
	db #33,#33,#33,#33,#81,#35,#33,#32
	db #30,#85,#2e,#ff,#e0,#00,#a0,#c1
	db #e2,#05,#83,#33,#cb,#3a,#c1,#33
	db #cb,#3a,#3a,#c1,#81,#32,#30,#85
	db #2e,#83,#33,#cb,#3a,#c1,#33,#cb
	db #3a,#3a,#c1,#81,#32,#30,#85,#2e
	db #ff,#e0,#00,#a0,#c1,#e2,#05,#83
	db #33,#cb,#3a,#c1,#33,#cb,#3a,#3a
	db #c1,#81,#32,#30,#85,#2e,#83,#33
	db #cb,#3a,#c1,#33,#cb,#3a,#81,#3f
	db #c1,#33,#cb,#3e,#3f,#83,#41,#37
	db #ff,#e0,#18,#a0,#cb,#e2,#05,#83
	db #1f,#27,#27,#27,#27,#81,#26,#27
	db #83,#29,#26,#1f,#29,#29,#29,#29
	db #81,#27,#29,#83,#2b,#27,#ff,#e0
	db #18,#a0,#cb,#e2,#05,#83,#24,#ca
	db #85,#2c,#cb,#83,#24,#23,#ca,#85
	db #2b,#cb,#83,#26,#27,#29,#22,#26
	db #87,#27,#ff,#e0,#18,#a0,#cb,#e2
	db #05,#83,#22,#2b,#2b,#2b,#85,#2b
	db #29,#83,#22,#2c,#2c,#2c,#85,#2c
	db #2b,#ff,#e0,#00,#a0,#c0,#87,#30
	db #85,#30,#ca,#e1,#05,#81,#29,#27
	db #26,#24,#87,#23,#c0,#85,#23,#ca
	db #81,#2b,#29,#27,#26,#ff,#e0,#00
	db #a0,#ca,#e2,#00,#87,#24,#e1,#05
	db #81,#2c,#2b,#29,#27,#83,#26,#85
	db #30,#2e,#83,#2c,#cb,#87,#2b,#ff
	db #e0,#00,#a0,#c7,#e1,#05,#87,#33
	db #cb,#85,#33,#c7,#87,#32,#85,#32
	db #cb,#35,#33,#ff,#e0,#0c,#a0,#c7
	db #e1,#05,#87,#2b,#29,#27,#26,#ff
	db #e0,#00,#a0,#c7,#e1,#05,#85,#33
	db #35,#87,#37,#85,#3a,#38,#87,#37
	db #ff,#e0,#f4,#a0,#cb,#e2,#05,#83
	db #37,#38,#3a,#33,#c7,#85,#2e,#83
	db #2e,#cb,#2e,#37,#38,#3a,#33,#c7
	db #85,#2e,#83,#2e,#cb,#2e,#ff,#e0
	db #0c,#a0,#cb,#e2,#05,#83,#1f,#27
	db #27,#27,#85,#27,#81,#29,#27,#26
	db #24,#83,#23,#29,#29,#29,#85,#29
	db #81,#2b,#29,#27,#26,#ff,#e0,#0c
	db #a0,#cb,#e2,#05,#83,#24,#85,#2c
	db #83,#24,#ca,#81,#2c,#2b,#29,#27
	db #83,#26,#85,#30,#2e,#83,#2c,#cb
	db #87,#2b,#ff,#e0,#00,#a0,#c7,#e1
	db #05,#85,#18,#83,#18,#1f,#87,#20
	db #85,#17,#83,#17,#1d,#87,#1f,#ff
	db #e0,#f4,#a0,#c7,#e1,#05,#85,#2c
	db #26,#23,#1f,#22,#26,#cb,#87,#27
	db #ff,#e0,#f4,#a0,#c7,#e1,#05,#87
	db #24,#26,#2c,#85,#2c,#2b,#ff,#e0
	db #00,#a0,#c7,#e1,#05,#87,#1b,#1a
	db #18,#17,#ff,#e0,#f4,#a0,#c7,#e1
	db #05,#85,#24,#26,#87,#27,#85,#2e
	db #26,#87,#27,#ff,#e0,#00,#a0,#c0
	db #83,#33,#c1,#e2,#05,#33,#c0,#33
	db #c1,#33,#c0,#33,#c1,#81,#32,#33
	db #83,#35,#32,#c0,#33,#c1,#33,#c0
	db #33,#c1,#33,#c0,#33,#c1,#81,#35
	db #37,#83,#38,#35,#ff,#e0,#00,#a0
	db #c0,#83,#37,#c1,#e2,#05,#37,#c0
	db #37,#c1,#37,#81,#3a,#38,#83,#37
	db #35,#81,#33,#32,#c0,#83,#32,#c1
	db #33,#c0,#33,#c1,#33,#c0,#33,#c1
	db #81,#32,#33,#83,#35,#32,#ff,#e0
	db #0c,#a0,#c7,#e1,#05,#85,#18,#83
	db #18,#1f,#87,#20,#85,#17,#83,#17
	db #1d,#87,#1f,#ff,#e0,#00,#a0,#c7
	db #e1,#05,#85,#2c,#26,#23,#1f,#22
	db #26,#cb,#87,#27,#ff,#e0,#00,#a0
	db #c7,#e1,#05,#87,#24,#26,#2c,#85
	db #2c,#2b,#ff,#e0,#0c,#a0,#c7,#e1
	db #05,#87,#1b,#1a,#18,#17,#ff,#e0
	db #00,#a0,#c1,#e2,#05,#81,#3a,#38
	db #37,#35,#3a,#38,#37,#35,#33,#32
	db #33,#35,#32,#30,#2e,#2c,#2b,#2a
	db #2b,#2c,#2e,#30,#32,#33,#32,#30
	db #32,#33,#35,#37,#38,#35,#ff,#e0
	db #00,#a0,#c1,#e2,#05,#81,#37,#35
	db #37,#38,#3a,#3c,#3e,#3f,#3e,#3c
	db #3e,#3c,#3e,#3f,#41,#3a,#43,#41
	db #43,#44,#46,#48,#4a,#4b,#4a,#48
	db #46,#45,#44,#41,#3e,#3a,#ff,#0f
	db #00,#0f,#00,#0f,#00,#0f,#00,#01
	db #0f,#0f,#ff,#01,#00,#01,#00,#01
	db #0d,#83,#a7,#01,#00,#01,#00,#01
	db #0b,#82,#96,#01,#00,#01,#00,#01
	db #09,#83,#9b,#01,#00,#01,#00,#01
	db #07,#83,#95,#01,#00,#01,#00,#86
	db #46,#01,#00,#03,#00,#01,#00,#01
	db #0b,#01,#00,#03,#00,#01,#00,#85
	db #46,#01,#00,#03,#00,#01,#00,#01
	db #0e,#01,#00,#03,#00,#01,#00,#01
	db #0e,#04,#00,#8a,#c6,#8a,#c6,#02
	db #07,#03,#00,#86,#a0,#83,#98,#01
	db #0f,#07,#00,#84,#bc,#01,#00,#01
	db #0f,#04,#ff,#08,#00,#88,#d3,#01
	db #0b,#02,#00,#01,#f5,#01,#00,#01
	db #0d,#02,#00,#01,#f3,#01,#00,#01
	db #0f,#02,#00,#01,#f1,#01,#00,#01
	db #0f,#0f,#ff,#01,#00,#01,#00,#01
	db #0d,#0d,#ff,#01,#00,#01,#00,#01
	db #0b,#0b,#ff,#01,#00,#01,#00,#01
	db #09,#09,#ff,#01,#00,#01,#00,#01
	db #0e,#01,#00,#01,#f2,#01,#00,#01
	db #0c,#91,#e3,#a1,#63,#a1,#63,#82
	db #14,#0c,#00,#01,#00,#82,#94,#01
	db #0d,#04,#ff,#08,#00,#8a,#d3,#01
	db #0b,#04,#ff,#08,#00,#8c,#d3,#01
	db #09,#04,#ff,#08,#00,#95,#d3,#01
	db #07,#04,#ff,#08,#00,#9c,#d3,#01
	db #0d,#03,#00,#08,#ff,#05,#00,#01
	db #0f,#09,#ff,#09,#01,#0f,#ff,#01
	db #0f,#02,#00,#0c,#ff,#0c,#01,#01
	db #0d,#0c,#ff,#0d,#01,#0e,#ff,#01
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#84,#08,#82,#88,#84,#08,#01
	db #00,#01,#3c,#03,#ec,#01,#ef,#86
	db #86,#01,#f1,#01,#2b,#01,#e5,#88
	db #08,#82,#04,#04,#fe,#03,#02,#08
	db #00,#84,#08,#82,#88,#84,#08,#85
	db #0a,#03,#fd,#85,#0a,#01,#05,#01
	db #00,#01,#63,#03,#e2,#01,#d1,#06
	db #00,#01,#ff,#01,#00,#01,#01,#08
	db #00,#01,#01,#01,#fe,#01,#01,#08
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #00,#01,#00,#01,#01,#01,#ff,#01
	db #00,#01,#63,#02,#d8,#01,#d1,#06
	db #00,#01,#ff,#01,#00,#01,#01,#08
	db #00,#01,#01,#01,#fe,#01,#01,#08
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #00,#01,#00,#01,#01,#01,#ff,#01
	db #00,#01,#63,#02,#d8,#01,#d1,#06
	db #00,#01,#ff,#01,#00,#01,#01,#08
	db #00,#01,#01,#01,#fe,#01,#01,#08
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #00,#01,#00,#01,#01,#01,#ff,#01
	db #00,#01,#63,#02,#d8,#01,#d1,#06
	db #00,#01,#ff,#01,#00,#01,#01,#08
	db #00,#01,#01,#01,#fe,#01,#01,#08
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #00,#01,#00,#01,#01,#01,#ff,#01
	db #00,#01,#63,#02,#d8,#01,#d1,#06
	db #00,#01,#ff,#01,#00,#01,#01,#08
	db #00,#01,#01,#01,#fe,#01,#01,#08
	db #00,#01,#01,#01,#01,#01,#01,#01
.l8d66 equ $ + 7
	db #00,#01,#00,#01,#01,#01,#ff,#00
;	ld c,#07
;	call #b90f
;	push bc
;	call #b900
;	ld a,#02
;	ld (#be66),a
;	ld a,#ff
;	ld (#be78),a
;	ld b,#05
;.l8d7c
;	push bc
;	ld d,#27
;	ld e,#00
;	ld c,#41
;	ld hl,#4000
;	call #c666
;	pop bc
;	ld hl,#be4c
;	ld a,(hl)
;	cp #40
;	jr nz,l8d9d
;	inc hl
;	ld a,(hl)
;	cp #80
;	jr nz,l8d9d
;	inc hl
;	ld a,(hl)
;	and a
;	jr z,l8da1
;.l8d9d
;	djnz l8d7c
;	jr l8de3
;.l8da1
;	ld e,#00
;	ld d,#27
;	call #c763
;	ld bc,#fb7e
;	ld a,#42
;	call #c95c
;	ld a,#00
;	call #c95c
;	ld a,#27
;	call #c95c
;	ld a,#00
;	call #c95c
;	ld a,#41
;	call #c95c
;	ld a,#03
;	call #c95c
;	ld a,#41
;	call #c95c
;	ld a,#11
;	call #ca5c
;	call #c95c
;	ld a,#ff
;	call l8deb
;	ei
;	call #c91c
;	ld hl,l8d66
;	ld a,(hl)
;.l8de3
;	pop bc
;	call #b90f
;	call #b903
;	ret
;.l8deb
;	call #c95c
;	ld bc,#fb7e
;	ld de,#0207
;	ld hl,l8d66
;	ld (hl),a
;	jr l8e04
;.l8dfa
;	ld a,d
;	or e
;	jr z,l8e04
;	inc c
;	in a,(c)
;	ld (hl),a
;	dec c
;	dec de
;.l8e04
;	in a,(c)
;	jp p,l8e04
;	and #20
;	jr nz,l8dfa
;	ret
;l8e0e
;	xor a
;	ld (l8555),a
;	call l80c5
;	call l8e70
;	call #bca7
;	ret
;.l8e1c
;	ld bc,#7f00
;	ld a,#c0
;	out (c),a
;	ld hl,l8d66
;	ld a,(hl)
;	push af
;	ld bc,#7f00
;	ld a,#c5
;	out (c),a
;	ld hl,#4787
;	pop af
;	ld a,#f7
;	ld (hl),a
;	ld bc,#7f00
;	ld a,#c0
;	out (c),a
;	ret
;	ld a,#ff
;	ld (l8555),a
;	call l80c5
;	call l8e64
;	ld a,#ff
;	ld (l8555),a
;	ld (l8559),a
;	ret
;.l8e52
;	nop
;	nop
;	nop
;	nop
;	nop
;	nop
;	nop
;	nop
;	nop
;	nop
;	nop
;	nop
;	nop
;	nop
;	nop
;	nop
;	nop
;	nop
;.l8e64
;	ld hl,l8e52
;	ld b,#83
;	ld de,l8e77
;	call #bcd7
;	ret
;.l8e70
;	ld hl,l8e52
;	call #bcdd
;	ret
;.l8e77			; play music interrupt
;	di
;	push af
;	push bc
;	push de
;	push hl
;	push ix
;	push iy
;	call l813d		; play music
;	pop iy
;	pop ix
;	pop hl
;	pop de
;	pop bc
;	pop af
;	ei
;	reti
;
.music_info
	db "Meurtres A Venise (1988)(Cobra Soft)()",0
	db "MusicPro",0

	read "music_end.asm"
