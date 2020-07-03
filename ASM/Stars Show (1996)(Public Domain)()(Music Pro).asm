; Music of Stars Show (1996)(Public Domain)()(Music Pro)
; Ripped by Megachur the 02/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "STARSSHO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9000

	read "music_header.asm"

	jp l9366	; init & play interrupt
	jp l9374	; stop interrupt play
.l900c equ $ + 6
.l900a equ $ + 4
.l9008 equ $ + 2
.l9007 equ $ + 1
.l9006
	db #00,#02,#4e,#01,#4e,#02,#20,#00
.l9012 equ $ + 4
.l9010 equ $ + 2
.l900e
	db #27,#00,#2e,#00,#35,#00,#56,#00
	db #77,#00,#96,#00,#af,#00,#c3,#00
	db #d7,#00,#f3,#00,#01,#01,#2b,#01
	db #00,#00,#01,#00,#02,#03,#ff,#04
	db #04,#05,#04,#06,#07,#ff,#08,#08
	db #08,#08,#08,#09,#ff,#e0,#00,#a0
	db #c1,#e2,#05,#86,#28,#c0,#82,#28
	db #c1,#87,#2b,#82,#27,#84,#28,#82
	db #2b,#84,#28,#82,#24,#84,#21,#82
	db #1f,#84,#21,#82,#1f,#ff,#e0,#05
	db #a0,#c1,#e2,#05,#86,#28,#c0,#82
	db #28,#c1,#87,#2b,#82,#27,#84,#28
	db #82,#2b,#84,#28,#82,#24,#84,#21
	db #82,#1f,#84,#21,#82,#1f,#ff,#e0
	db #00,#a0,#c1,#e2,#05,#85,#2f,#84
	db #2e,#87,#2d,#82,#28,#84,#29,#82
	db #2d,#84,#29,#82,#26,#84,#23,#82
	db #1f,#84,#21,#82,#1f,#ff,#e0,#00
	db #a0,#c1,#e2,#05,#84,#24,#82,#28
	db #84,#24,#82,#21,#84,#1f,#82,#1f
	db #84,#21,#82,#1f,#89,#24,#ff,#e0
	db #00,#a0,#c1,#e2,#05,#85,#18,#16
	db #15,#13,#84,#18,#82,#18,#85,#16
	db #15,#13,#ff,#e0,#05,#a0,#c1,#e2
	db #05,#85,#18,#16,#15,#13,#84,#18
	db #82,#18,#85,#16,#15,#13,#ff,#e0
	db #00,#a0,#c1,#e2,#05,#85,#1f,#1e
	db #1d,#1a,#84,#17,#82,#1a,#84,#17
	db #82,#21,#84,#1f,#82,#13,#84,#15
	db #82,#17,#ff,#e0,#00,#a0,#c1,#e2
	db #05,#85,#18,#15,#13,#15,#89,#18
	db #ff,#e0,#00,#a1,#d1,#e1,#00,#85
	db #00,#d2,#84,#00,#82,#00,#d1,#85
	db #00,#d2,#84,#00,#82,#00,#d1,#84
	db #00,#d2,#82,#00,#d1,#84,#00,#d2
	db #82,#00,#d1,#85,#00,#d2,#84,#00
	db #82,#00,#ff,#e0,#00,#a1,#d1,#e1
	db #00,#85,#00,#d2,#84,#00,#82,#00
	db #d1,#85,#00,#d2,#84,#00,#82,#00
	db #d1,#84,#00,#85,#00,#00,#d2,#82
	db #00,#84,#00,#82,#00,#ff,#0f,#00
	db #0f,#00,#0f,#00,#0f,#00,#01,#0f
	db #83,#ad,#01,#00,#01,#00,#01,#0d
	db #83,#a7,#01,#00,#01,#00,#01,#0b
	db #83,#a1,#01,#00,#01,#00,#01,#09
	db #83,#9b,#01,#00,#01,#00,#01,#07
	db #83,#95,#01,#00,#01,#00,#86,#46
	db #01,#00,#03,#00,#01,#00,#01,#0a
	db #01,#00,#03,#00,#01,#00,#85,#46
	db #01,#00,#03,#00,#01,#00,#01,#0e
	db #01,#00,#03,#00,#01,#00,#01,#0e
	db #01,#00,#03,#00,#87,#e2,#01,#0e
	db #01,#00,#82,#9c,#62,#00,#01,#0f
	db #07,#00,#84,#bc,#01,#00,#01,#0f
	db #04,#ff,#08,#00,#88,#d3,#01,#0b
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
	db #03,#00,#08,#ff,#05,#00,#01,#0f
	db #09,#ff,#09,#01,#0f,#ff,#01,#0f
	db #02,#00,#0c,#ff,#0c,#01,#01,#0d
	db #0c,#ff,#0d,#01,#0e,#ff,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #84,#08,#82,#88,#84,#08,#01,#00
	db #01,#3c,#03,#ec,#01,#ef,#86,#86
	db #01,#f1,#01,#2b,#01,#e5,#88,#08
	db #82,#04,#04,#fe,#03,#02,#08,#00
	db #84,#08,#82,#88,#84,#08,#85,#0a
	db #03,#fd,#85,#0a,#01,#05,#01,#00
	db #01,#63,#03,#e2,#01,#d1,#06,#00
	db #01,#ff,#01,#00,#01,#01,#08,#00
	db #01,#01,#01,#fe,#01,#01,#08,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #01,#00,#01,#01,#01,#ff,#01,#00
	db #01,#63,#02,#d8,#01,#d1,#06,#00
	db #01,#ff,#01,#00,#01,#01,#08,#00
	db #01,#01,#01,#fe,#01,#01,#08,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #01,#00,#01,#01,#01,#ff,#01,#00
	db #01,#63,#02,#d8,#01,#d1,#06,#00
	db #01,#ff,#01,#00,#01,#01,#08,#00
	db #01,#01,#01,#fe,#01,#01,#08,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #01,#00,#01,#01,#01,#ff,#01,#00
	db #01,#63,#02,#d8,#01,#d1,#06,#00
	db #01,#ff,#01,#00,#01,#01,#08,#00
	db #01,#01,#01,#fe,#01,#01,#08,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #01,#00,#01,#01,#01,#ff,#01,#00
	db #01,#63,#02,#d8,#01,#d1,#06,#00
	db #01,#ff,#01,#00,#01,#01,#08,#00
	db #01,#01,#01,#fe,#01,#01,#08,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
.l9354 equ $ + 6
	db #01,#00,#01,#01,#01,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9366
	call l9397
	ld hl,l9354
	ld b,#83
	ld de,l9380
	jp #bcd7
.l9374
	call l93a8
	ld hl,l9354
	call #bcdd
	jp #bca7
.l9380	; play music interrupt
	di
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	call l9423
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ei
	reti
;
.init_music
.l9397
;
	ld a,#01
	ld (l990e),a
	call l93ad
	ret
	xor a
	ld (l990e),a
	call l93ad
	ret
.l93a8
	xor a
	ld (l9a47),a
	ret
.l93ad
	xor a
	ld (l9909),a
	ld hl,l9916
	ld (hl),#00
	ld de,l9917
	ld bc,#0128
	ldir
	ld bc,l9006
	ld a,(l9007)
	ld (l9a3f),a
	ld hl,(l9008)
	add hl,bc
	ld (l9a42),hl
	ld hl,(l900a)
	add hl,bc
	ld (l9a44),hl
	ld hl,(l900c)
	add hl,bc
	ld (l991b),hl
	ld hl,(l900e)
	add hl,bc
	ld (l9956),hl
	ld hl,(l9010)
	add hl,bc
	ld (l9991),hl
	ld hl,l9012
	ld (l9a40),hl
	ld a,#0f
	ld (l9a47),a
	ld hl,l9910
	ld de,l9916
	ld bc,#0005
	ldir
	ld hl,l9910
	ld de,l9951
	ld bc,#0005
	ldir
	ld hl,l9910
	ld de,l998c
	ld bc,#0005
	ldir
	ld c,#38
	ld a,#07
	call l9b22
	ld a,#ff
	ld (l9909),a
	ret
;
.play_music
.l9423
;
	ei
	ld a,(l9909)
	or a
	ret z
	xor a
	ld (l9909),a
	ld a,#08
	ld (l990b),a
	cpl
	ld (l990c),a
	ld a,(l9a47)
	ld e,a
	ld b,#03
	ld hl,l99ab
.l943f
	ld a,(hl)
	ld c,a
	ld a,(l990f)
	or b
	sub #03
	ld a,#00
	jr c,l9450
	ld a,c
	cp e
	jr c,l9450
	ld a,e
.l9450
	ld c,a
	ld a,b
	add #07
	push de
	call l9b22
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l943f
	ld hl,l9a3f
	dec (hl)
	ld ix,l9916
	xor a
.l946a
	ld (l9a46),a
	ld a,(ix+#07)
	or a
	jp nz,l9715
.l9474
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l947e
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jr nz,l94de
	ld l,(ix+#01)
	ld h,(ix+#02)
.l948f
	ld a,(hl)
	cp #ff
	jr nz,l94bd
	ld l,(ix+#05)		; reinit music
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l990e)
	or a
	jr nz,l948f
	ld a,(l9a46)
	cp #02
	jr nz,l948f
	push hl
	ld hl,(l9991)
	ld a,(l990d)
	ld (hl),a
	xor a
	ld (l990d),a
	pop hl
	jp l948f
.l94bd
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l9a40)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	push bc
	pop hl
	ld bc,l9006
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l947e
.l94de
	bit 7,a
	jr nz,l9548
	ld hl,l9a4e
	or a
	jr z,l94eb
	add (ix+#20)
.l94eb
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
	ld a,(l9a46)
	inc a
	ld hl,l99b3
	ld bc,#0014
.l951d
	add hl,bc
	dec a
	jr nz,l951d
	ldir
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l9a46)
	inc a
	ld hl,l99ef
	ld bc,#0014
.l9535
	add hl,bc
	dec a
	jr nz,l9535
	ldir
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l9701
.l9548
	bit 6,a
	jr nz,l959f
	bit 5,a
	jp z,l958c
	push af
	xor a
	ld (l9a48),a
	pop af
.l9557
	and #1f
	ld b,a
	jr z,l9571
	ld a,(l990a)
	push hl
	ld hl,l990c
	and (hl)
	ld (l990a),a
	pop hl
	ld c,a
	ld a,#07
	call l9b22
	jp l9583
.l9571
	ld a,(l990a)
	push hl
	ld hl,l990b
	or (hl)
	ld (l990a),a
	pop hl
	ld c,a
	ld a,#07
	call l9b22
.l9583
	ld c,b
	ld a,#06
	call l9b22
	jp l9701
.l958c
	and #1f
	ld hl,l9b16
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l9701
.l959f
	bit 5,a
	jr nz,l960c
	and #1f
	add a
	add a
	add a
	ld hl,(l9a42)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l95ba
	ld a,(de)
	bit 7,a
	jr nz,l95cc
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l95e4
.l95cc
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
	jr nz,l95de
	ld b,#01
.l95de
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l95e4
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jr nz,l95ba
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l99b3
	ld a,(l9a46)
	inc a
.l9602
	add hl,bc
	dec a
	jr nz,l9602
	ex de,hl
	ldir
	jp l9701
.l960c
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l9623
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
.l9623
	dec hl
	sub (hl)
	add e
	sub (hl)
	ld a,a
	sub (hl)
	inc sp
	sub (hl)
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l9701
	pop hl
	ld a,(hl)
	ld (l9a48),a
	and #3f
	ld (l9a4a),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l9a4b),a
	ld a,(l9a48)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l9a48),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l9a48
	or (hl)
	ld (l9a48),a
	ld (l9a49),a
	ld a,(l9a4a)
	ld (l9a4d),a
	ld hl,l9a4b
	ld b,#ff
	cp (hl)
	jr nc,l9675
	ld b,#01
.l9675
	ld a,b
	ld (l9a4c),a
	ld a,(l9a4d)
	jp l9557
	ld a,#02
	jr l9685
	ld a,#01
.l9685
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jr z,l96f6
	add a
	add a
	add a
	ld hl,(l9a44)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l96a3
	ld a,(de)
	bit 7,a
	jr nz,l96b7
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
	jp l96cf
.l96b7
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
	jr nz,l96c9
	ld b,#ff
.l96c9
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l96cf
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jr nz,l96a3
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l99ef
	ld a,(l9a46)
	inc a
.l96ed
	add hl,bc
	dec a
	jr nz,l96ed
	ex de,hl
	ldir
	jr l96fb
.l96f6
	ld a,#00
	ld (ix+#09),a
.l96fb
	ld a,(ix+#09)
	ld (ix+#3a),a
.l9701
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l9474
.l9715
	ld a,(l9a3f)
	or a
	jr nz,l971e
	dec (ix+#07)
.l971e
	ld a,(ix+#0a)
	cp #04
	jp z,l9768
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
	jr nz,l974b
	dec (hl)
	jr nz,l973e
	inc (ix+#0a)
.l973e
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l9768
.l974b
	dec (hl)
	jr nz,l9760
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
	jp l9762
.l9760
	inc hl
	inc hl
.l9762
	dec (hl)
	jr nz,l9768
	inc (ix+#0a)
.l9768
	ld a,(ix+#09)
	or a
	jp z,l9805
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
	jr nz,l97a6
	dec (hl)
	jr nz,l978a
	inc (ix+#21)
.l978a
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jr nz,l9796
	ld b,#00
.l9796
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l97d4
.l97a6
	dec (hl)
	jr nz,l97cc
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
	jr nz,l97ba
	ld b,#00
.l97ba
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l97ce
.l97cc
	inc hl
	inc hl
.l97ce
	dec (hl)
	jr nz,l97d4
	inc (ix+#21)
.l97d4
	ld a,(ix+#21)
	cp #04
	jr nz,l9805
	ld a,(ix+#09)
	cp #02
	jr nz,l97e9
	ld a,#00
	ld (ix+#09),a
	jr l9805
.l97e9
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l9a46)
	inc a
	ld hl,l99ef
	ld bc,#0014
.l97ff
	add hl,bc
	dec a
	jr nz,l97ff
	ldir
.l9805
	ld c,(ix+#36)
	ld a,(l9a46)
	add a
	call l9b22
	ld c,(ix+#37)
	inc a
	call l9b22
	ld bc,#003b
	add ix,bc
	ld a,(l990b)
	rlc a
	ld (l990b),a
	cpl
	ld (l990c),a
	ld a,(l9a46)
	inc a
	cp #03
	jp nz,l946a
	ld a,(l9a48)
	or a
	jr z,l9867
	dec a
	ld (l9a48),a
	or a
	jr nz,l9867
	ld a,(l9a49)
	ld (l9a48),a
	ld a,(l9a4d)
	ld hl,l9a4c
	add (hl)
	ld (l9a4d),a
	ld c,a
	ld hl,l9a4a
	cp (hl)
	jr z,l985a
	ld hl,l9a4b
	cp (hl)
	jr nz,l9862
.l985a
	ld a,(l9a4c)
	xor #fe
	ld (l9a4c),a
.l9862
	ld a,#06
	call l9b22
.l9867
	ld a,(l9a3f)
	or a
	jr nz,l9873
	ld a,(l9007)
	ld (l9a3f),a
.l9873
	ld a,#ff
	ld (l9909),a
	ret
	push hl
	push de
	push bc
	push af
	xor a
	ld (l9909),a
	ld a,b
	ld (l990d),a
	ld hl,l9910
	ld de,l998c
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l9993),a
	ld a,#ff
	ld (l9909),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.l98a3
	nop
	nop
	nop
	nop
	ld de,l98a3
	ld hl,(l991b)
	ldi
	ldi
	ld hl,(l991b)
	ld (hl),#00
	inc hl
	ld (hl),#ff
	ld hl,(l9956)
	ldi
	ld hl,(l9956)
	ld (hl),#00
	inc hl
	ld (hl),#ff
	ldi
	jp l98e1
	ld hl,l98a3
	ld de,(l991b)
	ldi
	ldi
	ld de,(l9956)
	ldi
	ldi
	jp l98e1
.l98e1
	ld hl,l9910
	ld de,l9916
	ldi
	ldi
	ldi
	ldi
	ldi
	ld hl,l9910
	ld de,l9951
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l9916),a
	ld (l9951),a
	ret
.l9910 equ $ + 7
.l990f equ $ + 6
.l990e equ $ + 5
.l990d equ $ + 4
.l990c equ $ + 3
.l990b equ $ + 2
.l990a equ $ + 1
.l9909
	db #ff,#38,#00,#00,#00,#ff,#ff,#00
	dw l9915,l9915
.l991b equ $ + 6
.l9917 equ $ + 2
.l9916 equ $ + 1
.l9915
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9951 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9956 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l998c equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9993 equ $ + 6
.l9991 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l99ab equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l99b3 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l99ef equ $ + 2
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
.l9a44 equ $ + 7
.l9a42 equ $ + 5
.l9a40 equ $ + 3
.l9a3f equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a4c equ $ + 7
.l9a4b equ $ + 6
.l9a4a equ $ + 5
.l9a49 equ $ + 4
.l9a48 equ $ + 3
.l9a47 equ $ + 2
.l9a46 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a4e equ $ + 1
.l9a4d
	db #00,#00,#00
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
	dw #0010,#000f,#000e,#000d
	dw #000c,#000b,#000a
.l9b16
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
.l9b22
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

	; di
	; ld de,l9b8b
	; ld hl,#0038
	; ld bc,#0004
	; ldir
	; ld hl,#0039
	; ld de,l9380
	; ld (hl),e
	; inc hl
	; ld (hl),d
	; ei
	; ret
	; di
	; ld hl,l9b8b
	; ld de,#0038
	; ld bc,#0004
	; ldir
	; ei
	; ret
	; push af
	; push bc
	; push de
	; push hl
	; push ix
	; push iy
	; ld a,(l9b91)
	; cp #06
	; jr nz,l9b7f
	; call l9423
	; xor a
	; ld (l9b91),a
; .l9b7f
	; inc a
	; ld (l9b91),a
	; pop iy
	; pop ix
	; pop hl
	; pop de
	; pop bc
	; pop af
; .l9b8b
	; nop
	; nop
	; nop
	; nop
	; nop
	; ret
; .l9b91
	; db #00
;
.music_info
	db "Stars Show (1996)(Public Domain)()",0
	db "Music Pro",0

	read "music_end.asm"
