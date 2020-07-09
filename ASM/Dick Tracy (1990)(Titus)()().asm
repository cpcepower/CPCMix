; Music of Dick Tracy (1990)(Titus)()()
; Ripped by Megachur the 15/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DICKTRAC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #82a7

	read "music_header.asm"

	ld c,(ix+#02)
	ld b,(ix+#03)
	exx
	ld l,(ix+#04)
	ld h,(ix+#05)
	ld de,#0006
	add ix,de
	ex de,hl
	ld (l85d6),ix
	add ix,de
	ld de,#0000
	ld c,#01
.l82c5
	dec c
	jr nz,l82cf
	ld a,(ix+#00)
	inc ix
	ld c,#08
.l82cf
	or a
	rr d
	rr e
	rr d
	rr e
	rlca
	rl e
	rl d
	sla e
	rl d
	ld hl,(l85d6)
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	bit 7,d
	jr z,l82c5
	push af
	ld a,e
	ld (iy+#00),a
	inc iy
	exx
	dec bc
	ld a,b
	or c
	jr z,l8301
	pop af
	exx
	ld de,#0000
	jp l82c5
.l8301
	pop af
	ret
	db #01,#2e,#02,#31,#06,#22,#07,#23
	db #0c,#3c,#0d,#0c,#ff
;
.stop_music
;.l8310
;
	ld a,#08
	ld c,#00
	call l87b7
	ld a,#09
	ld c,#00
	call l87b7
	ld a,#0a
	ld c,#00
	jp l87b7
	ld a,#07
	ld c,#38
	call l87b7
	ld a,#08
	ld c,#00
	call l87b7
	ld a,#09
	ld c,#00
	call l87b7
	ld a,#0a
	ld c,#00
	call l87b7
.l8341
	ld de,#0300
.l8344
	dec de
	ld a,d
	or e
	jr nz,l8344
	call l8364
	jp l8341
.l834f
	ld (ix+#02),#01
	ld a,(ix+#05)
	or a
	jr nz,l839a
	ld hl,#0000
	ld a,(ix+#06)
	call l853c
	jr l839a
;
.real_play_music
.l8364
;
	ld hl,l8607
	dec (hl)
	ret nz
	dec hl
	ld a,(hl)
	inc hl
	ld (hl),a
	ld hl,l8604
	ld b,(hl)
	inc hl
	ld a,(hl)
	sub b
	jr nc,l8377
	xor a
.l8377
	ld (hl),a
	or a
	jr nz,l8382
	ld a,#07
	ld c,#38
	call l87b7
.l8382
	ld b,#04
	ld ix,l85d8
.l8388
	push bc
	ld a,(ix+#02)
	cp #ff
	jr z,l839a
	cp #02
	jr z,l834f
	dec (ix+#02)
	call z,l83a3
.l839a
	ld de,#000b
	add ix,de
	pop bc
	djnz l8388
	ret
.l83a3
	push bc
.l83a4
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(hl)
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	or a
	jp m,l8417
	ld hl,#0000
	ld e,a
	and #0f
	cp #0c
	jr z,l83e6
	add a
	ld c,a
	ld b,#00
	ld a,(ix+#04)
	or a
	jr nz,l83f4
	ld hl,l854b
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,e
	srl a
	srl a
	srl a
	srl a
	and #07
	jr z,l83e6
	ld b,a
.l83e0
	srl h
	rr l
	djnz l83e0
.l83e6
	ld a,(ix+#06)
	call l853c
.l83ec
	ld a,(ix+#03)
	ld (ix+#02),a
.l83f2
	pop bc
	ret
.l83f4
	ld a,e
	rlca
	and #1e
	ld c,a
	ld a,#06
	call l87b7
	ld a,#07
	ld c,#18
	call l87b7
	ld hl,l8604
	ld a,e
	rra
	rra
	rra
	and #06
	xor #06
	inc a
	ld (hl),a
	inc hl
	ld (hl),#0f
	jr l83ec
.l8417
	ld e,a
	and #70
	srl a
	srl a
	srl a
	ld hl,l842d
	add l
	ld l,a
	adc h
	sub l
	ld h,a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l842d                          ;à revoir !!!
	dw l843d,l8457,l8466,l8469
	dw l847b,l8484,l848d,l8496
.l843d
	ld d,(ix+#0a)
	ld a,e
	and #07
	cp #07
	jr z,l8451
	ld d,#60
	or a
	jr z,l8451
	ld b,a
.l844d
	srl d
	djnz l844d
.l8451
	ld (ix+#03),d
	jp l83a4
.l8457
	ld a,e
	and #0f
	ld c,a
	ld a,(ix+#06)
	add #08
	call l87b7
	jp l83a4
.l8466
	jp l83a4
.l8469
	ld d,#40
	ld a,e
	and #07
	jr z,l8475
	ld b,a
.l8471
	srl d
	djnz l8471
.l8475
	ld (ix+#0a),d
	jp l83a4
.l847b
	ld a,e
	and #0f
	ld (ix+#05),a
	jp l83a4
.l8484
	ld a,e
	and #03
	ld (ix+#06),a
	jp l83a4
.l848d
	ld a,e
	and #0f
	ld (ix+#04),a
	jp l83a4
.l8496
	ld a,e
	and #0f
	add a
	ld e,a
	ld d,#00
	ld hl,l84a6
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l84a6
	dw l8523,l8517,l84ee,l84df
	dw l84cd,l83a4,l83a4,l83a4
	dw l83a4,l83a4,l83a4,l83a4
	dw l83a4,l83a4,l83a4,l84c6
.l84c6
	ld (ix+#02),#ff
	jp l83f2
.l84cd
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld (ix+#00),a
	ld (ix+#01),h
	jp l83a4
.l84df
	ld a,(ix+#08)
	ld (ix+#00),a
	ld a,(ix+#09)
	ld (ix+#01),a
	jp l83a4
.l84ee
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(ix+#07)
	or a
	jr z,l850c
	dec a
	ld (ix+#07),a
	jr z,l850c
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld (ix+#00),a
	ld (ix+#01),h
	jp l83a4
.l850c
	inc hl
.l850d
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l83a4
.l8517
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(hl)
	ld (ix+#07),a
	jr l850d
.l8523
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
	ld (ix+#00),e
	ld (ix+#01),d
	jp l83a4
.l853c
	cp #03
	ret z
	add a
	push af
	ld c,l
	call l87b7
	pop af
	inc a
	ld c,h
	jp l87b7
.l854b
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #11,#aa,#85,#18,#08,#11,#dc,#3f
	db #18,#03,#11,#dc,#ff,#21,#ba,#85
	db #3e,#10,#f5,#e5,#21,#8a,#85,#1a
	db #13,#4f,#06,#00,#09,#7e,#e1,#77
	db #23,#f1,#3d,#c2,#75,#85,#c9,#14
	db #04,#15,#1c,#18,#1d,#0c,#05,#0d
	db #16,#06,#17,#1e,#00,#1f,#0e,#07
	db #0f,#12,#02,#13,#1a,#19,#1b,#0a
	db #03,#0b,#01,#08,#09,#10,#11,#00
	db #03,#06,#0f,#18,#19,#1a,#0d,#01
	db #02,#0b,#0e,#14,#17,#10,#00,#14
	db #1c,#0c,#0e,#0a,#03,#0b,#00,#04
	db #15,#17,#1f,#13,#1b,#07,#14,#14
	db #46,#00,#40,#80,#00,#16,#00,#44
	db #02,#00,#16
.l85d6
	db #06,#40
.l85d8
	db #43,#86,#2d,#30,#00,#00,#00,#03
	db #0d,#86,#08,#4b,#86,#2d,#30,#00
	db #00,#01,#03,#18,#86,#08,#54,#86
	db #05,#08,#00,#00,#02,#00,#27,#86
	db #08,#38,#86,#05,#08,#01,#00,#03
	db #00,#00,#00
.l8608 equ $ + 5
.l8607 equ $ + 4
.l8606 equ $ + 3
.l8604 equ $ + 1
	db #08,#07,#00,#02,#02,#f1,#04,#f0
	db #3f,#86,#f2,#0a,#86,#f4,#08,#86
.l8613
	db #f1,#04,#f0,#47,#86,#f2,#15,#86
	db #f4,#13,#86
.l861e
	db #f0,#4f,#86,#f0,#62,#86,#f0,#4f
	db #86,#f0,#75,#86,#f0,#4f,#86,#f0
	db #87,#86,#f4,#1e,#86
.l8633
	db #b3,#87,#9f,#c0,#00,#0c,#00,#82
	db #10,#f4,#33,#86,#81,#9f,#c0,#05
	db #03,#01,#00,#f3,#81,#9f,#c0,#28
	db #25,#28,#27,#f3,#b3,#87,#9f,#c0
	db #0c,#0c,#28,#c1,#2a,#c0,#2a,#82
	db #30,#c1,#25,#87,#c0,#25,#f3,#b3
	db #87,#9f,#c1,#27,#c0,#27,#28,#c1
	db #2a,#c0,#2a,#82,#27,#87,#24,#82
	db #20,#f3,#b3,#87,#9f,#c1,#33,#c0
	db #33,#31,#c1,#2b,#c0,#2b,#c1,#30
	db #81,#c0,#30,#f3,#b3,#87,#9f,#c1
	db #28,#c0,#28,#c1,#28,#c0,#28,#c1
	db #28,#c0,#28,#81,#27,#87,#0c,#0c
	db #2b,#c1,#2a,#c0,#2a,#82,#28,#25
	db #87,#0c,#28,#27,#25,#28,#27,#25
	db #c1,#24,#c0,#24,#22,#82,#24
	di
.l86b3
	ld a,(l8704)
;
.init_music
;
	cp #ff
	ret z
	ld e,a
	ld d,#00
	ld hl,l86fb
	add hl,de
	ex de,hl
	ld a,#ff
	ld (l8704),a
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,de
	ld ix,l85d8
	ld b,#04
.l86d0
	ld a,(hl)
	ld (ix+#00),a
	inc hl
	ld a,(hl)
	ld (ix+#01),a
	inc hl
	ld (ix+#02),#01
	ld (ix+#05),#00
	ld (ix+#07),#00
	ld (ix+#0a),#08
	ld de,#000b
	add ix,de
	djnz l86d0
	ld a,(hl)
	ld (l8606),a
	ld a,#01
	ld (l8607),a
	ret
.l86fb
	dw l8608,l8613,l861e,l8633
.l8706 equ $ + 3
.l8705 equ $ + 2
.l8704 equ $ + 1
	db #02,#ff,#00,#00
	ld bc,#f782
	out (c),c
	ld bc,#f40e
	out (c),c
	ld b,#f6
	in a,(c)
	and #3f
	ld c,a
	or #c0
	out (c),a
	out (c),c
	ld bc,#f792
	out (c),c
	ld hl,l876a
	ld d,#00
	ld c,#08
.l872a
	ld e,(hl)
	inc hl
	sla d
	ld b,#f6
	in a,(c)
	and #30
	or e
	or #40
	out (c),a
	ld b,#f4
	in a,(c)
	xor #ff
	and (hl)
	inc hl
	jr z,l8745
	set 0,d
.l8745
	dec c
	jp nz,l872a
	ld a,d
	ld (l8706),a
	ld b,#f6
	in a,(c)
	and #30
	or #49
	out (c),a
	ld b,#f4
	in a,(c)
	xor #ff
	ld (l8705),a
	and #3f
	ret nz
	ld a,(l8706)
	ld (l8705),a
	ret
.l876a
	inc bc			; data à revoir ???
	ex af,af'
	ex af,af'
	inc b
	ld (bc),a
	inc b
	dec b
	add b
	nop
	ld (bc),a
	ld bc,#0001
	inc b
	nop
	ld bc,#ba21
	add l
	ld e,#11
	call l87e1
	ld a,#01
	ld (l87b0),a
	ld bc,#7f00
.l878a
	ld a,(hl)
	out (c),c
	or #40
	out (c),a
	inc hl
	inc c
	dec e
	jr nz,l878a
	ret
	call l87e1
	xor a
	ld (l87b0),a
	ld e,#11
	ld bc,#7f00
.l87a3
	ld a,#14
	out (c),c
	or #40
	out (c),a
	inc c
	dec e
	jr nz,l87a3
	ret
.l87b0
	ld bc,#cdf3
	or a
	add a
	ei
	ret
.l87b7
	push bc
	ld bc,#f782
	out (c),c
	pop bc
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
	ld bc,#f792
	out (c),c
	ret
.l87e1
	; call #bd19 - modified by Megachur
	ret
;
; #801f
; xor a
; ld (#8704),a
; call #86b3	; init
;
; #8026
ld de,#1000
;
; #803a
; dec de
; ld a,e
; or d
; jr nz,#8029	; tempo before ending
;
; #803f
; call #8310	; stop
;
; #802d
; call #8364	; play x 2 !
;
.play_music     ; x 2 !!! added by Megachur
;
	call real_play_music
	jp real_play_music
;
.music_info
	db "Dick Tracy (1990)(Titus)()",0
	db "",0

	read "music_end.asm"
