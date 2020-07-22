; Music of How to be a Complete Bastard (1987)(Virgin Games)()()
; Ripped by Megachur the 17/04/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HOWTBACB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #0821

	read "music_header.asm"

; 09/06/2019 - rerip data

	push af		; test player !
	push bc
	push de
	push hl
	push ix
	push iy
	ld b,#f5
	in a,(c)
	rra
	jr nc,l0838
	ld a,#ff
	ld (l084a),a
	call l0853	; play music
.l0838
	ld hl,l084a
	inc (hl)
	ds 3,#00	; call #0494 -> ???
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ei
	reti
.l084a
	nop
	ld b,#bc
	out (c),c
	inc b
	out (c),a
	ret
.l0853
	jp l0947
.l0856
	jp l08c3
.l0859
	ld a,#00
	call l085f
	ret
;
.init_music
.l085f
;
	push af
	push bc
	push de
	push hl
	push ix
	add a
	ld c,a
	add a
	add c
	ld e,a
	ld d,#00
	ld hl,l107b
	add hl,de
	ld b,d
	di
.l0872
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,e
	or d
	jr z,l0895
	ld a,b
	push hl
	call l0905
	push hl
	pop ix
	pop hl
	ld (ix+#24),e
	ld (ix+#25),d
	ld (ix+#26),#01
	ld (ix+#23),#01
	ld (ix+#00),#00
.l0895
	inc b
	ld a,#03
	cp b
	jr nz,l0872
	ld hl,l0f58
	ld (l0ef0),hl
	ld hl,l0f76
	ld (l0f1f),hl
	ld hl,l0f94
	ld (l0f4e),hl
	ei
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
	push de
	push hl
	call l0905
	ld de,#0023
	add hl,de
	bit 7,(hl)
	pop hl
	pop de
	ret
;
.stop_music
.l08c3
;
	push af
	ld a,#3f
	ld (l0945),a
	xor a
	call l0917
	inc a
	call l0917
	inc a
	call l0917
	call l0947
	pop af
	ret
.l08da
	push af
	push bc
	push de
	push hl
	push ix
	ld a,(de)
	push de
	call l0905
	pop de
	push hl
	pop ix
	ld (ix+#21),l
	ld (ix+#22),h
	set 7,(ix+#23)
	ld bc,#002e
	ex de,hl
	inc hl
	ldir
	ld (ix+#23),#20
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l0905
	push af
	ld hl,l0ec9
	or a
	jr z,l0915
	ld hl,l0ef8
	dec a
	jr z,l0915
	ld hl,l0f27
.l0915
	pop af
	ret
.l0917
	push ix
	push hl
	push af
	call l0905
	push hl
	pop ix
	ld a,#a8
	or (ix+#23)
	ld (ix+#23),a
	ld (ix+#26),#01
	pop af
	pop hl
	pop ix
	ret
	push hl
	push ix
	call l0905
	push hl
	pop ix
	res 7,(ix+#23)
	pop ix
	pop hl
	ret
.l0946 equ $ + 3
.l0945 equ $ + 2
.l0944 equ $ + 1
.l0943
	db #08,#01,#00,#00
;
.play_music
.l0947
;
	di
	push af
	push bc
	push de
	push hl
	push ix
	ld a,#08
	ld (l0943),a
	ld a,#01
	ld (l0944),a
	xor a
	ld (l0946),a
	ld ix,l0ec9
.l0960
	bit 7,(ix+#23)
	jr z,l0983
	bit 6,(ix+#23)
	jp nz,l0e7b
	set 6,(ix+#23)
	ld hl,l0944
	ld a,(l0943)
	or (hl)
	inc hl
	or (hl)
	ld c,#07
	ld (hl),a
	call l0ea4
	jp l0e7b
.l0983
	bit 0,(ix+#23)
	jp z,l0afe
	dec (ix+#26)
	jp nz,l0b96
	res 1,(ix+#23)
	ld h,(ix+#25)
	ld l,(ix+#24)
.l099a
	ld (ix+#24),l
	ld (ix+#25),h
	ld a,(ix+#05)
	ld (ix+#2e),a
	ld a,(ix+#0c)
	ld (ix+#2d),a
	ld a,(hl)
	inc hl
	cp #f0
	jp nc,l09f9
	ex de,hl
	ld hl,l0fb0
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#02),h
	ld (ix+#01),l
.l09c6
	ld a,l
	add (ix+#0e)
	ld (ix+#29),a
	ld a,h
	adc (ix+#0f)
	ld (ix+#2a),a
	ld a,l
	add (ix+#13)
	ld (ix+#2b),a
	ld a,h
	adc (ix+#14)
	ld (ix+#2c),a
.l09e2
	ld a,(de)
	inc de
	dec a
	ld hl,(l0f56)
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#26),a
	ld (ix+#25),d
	ld (ix+#24),e
	jp l0b05
.l09f9
	sub #f0
	add a
	ex de,hl
	ld hl,l0a09
	ld b,#00
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l0a09
	dw l0a21,l0a35,l0a40,l0a48
	dw l0a63,l0a77,l0a8f,l0aae
	dw l0ac4,l0add,l0aeb,l0af7
.l0a21
	set 1,(ix+#23)
	xor a
	ld (ix+#2e),a
	ld (ix+#02),a
	ld (ix+#01),a
	ld (ix+#00),a
	jp l09e2
.l0a35
	ld a,(de)
	ld l,a
	ld h,#00
	inc de
	ld (ix+#00),l
	jp l09c6
.l0a40
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l099a
.l0a48
	ld l,(ix+#27)
	ld h,(ix+#28)
	ex de,hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (ix+#27),l
	ld (ix+#28),h
	ld l,c
	ld h,b
	jp l099a
.l0a63
	ld l,(ix+#27)
	ld h,(ix+#28)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld (ix+#27),l
	ld (ix+#28),h
	ex de,hl
	jp l099a
.l0a77
	ld a,(de)
	inc de
	ld l,(ix+#27)
	ld h,(ix+#28)
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (ix+#27),l
	ld (ix+#28),h
	ex de,hl
	jp l099a
.l0a8f
	ld l,(ix+#27)
	ld h,(ix+#28)
	dec hl
	ld a,(hl)
	dec hl
	ld b,(hl)
	dec hl
	ld c,(hl)
	dec a
	jr z,l0aa4
	inc hl
	inc hl
	ld (hl),a
	inc hl
	ld e,c
	ld d,b
.l0aa4
	ld (ix+#27),l
	ld (ix+#28),h
	ex de,hl
	jp l099a
.l0aae
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	inc de
	push de
	push ix
	pop de
	inc de
	inc de
	inc de
	ld bc,#000a
	ldir
	pop hl
	jp l099a
.l0ac4
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	inc de
	push de
	push ix
	ex (sp),hl
	ld de,#000d
	add hl,de
	ex de,hl
	pop hl
	ld bc,#000d
	ldir
	pop hl
	jp l099a
.l0add
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	inc de
	ld (l0f56),hl
	ld l,e
	ld h,d
	jp l099a
.l0aeb
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	inc de
	ld (hl),#ff
	ex de,hl
	jp l099a
.l0af7
	set 7,(ix+#23)
	jp l0e7b
.l0afe
	bit 5,(ix+#23)
	jp z,l0b96
.l0b05
	res 5,(ix+#23)
	ld a,(l0946)
	add a
	ld c,a
	ld h,(ix+#01)
	ld l,(ix+#02)
	ld a,h
	or l
	jr nz,l0b26
	ld a,(l0944)
	ld hl,l0945
	or (hl)
	ld (hl),a
	res 4,(ix+#23)
	jr l0b42
.l0b26
	ld a,h
	ld (ix+#1a),a
	call l0ea4
	inc c
	ld a,l
	ld (ix+#1b),a
	call l0ea4
	ld a,(l0944)
	ld hl,l0945
	cpl
	and (hl)
	ld (hl),a
	set 4,(ix+#23)
.l0b42
	ld a,(ix+#00)
	or a
	jr nz,l0b56
	res 3,(ix+#23)
	ld a,(l0943)
	ld hl,l0945
	or (hl)
	ld (hl),a
	jr l0b6b
.l0b56
	ld (ix+#1a),a
	ld c,#06
	call l0ea4
	set 3,(ix+#23)
	ld a,(l0943)
	cpl
	ld hl,l0945
	and (hl)
	ld (hl),a
.l0b6b
	ld a,(ix+#10)
	ld (ix+#1e),a
	ld (ix+#1d),#01
	ld a,(l0946)
	add #08
	ld c,a
	ld a,(ix+#2e)
	ld (ix+#1c),a
	call l0ea4
	ld a,(ix+#03)
	ld (ix+#20),a
	ld (ix+#1f),#01
	ld c,#07
	ld a,(l0945)
	call l0ea4
.l0b96
	res 6,(ix+#23)
	bit 1,(ix+#23)
	jp nz,l0e7b
	ld a,(ix+#20)
	or a
	jp z,l0bae
	dec (ix+#20)
	jp l0c8e
.l0bae
	ld a,(l0946)
	add #08
	ld c,a
	ld a,(ix+#1f)
	dec a
	jp z,l0c0f
	dec a
	jp z,l0c33
	dec a
	jp z,l0c57
	dec a
	jp z,l0c63
	dec a
	jr z,l0bd6
	ld e,(ix+#17)
	ld d,(ix+#18)
	call l08da
	jp l0e7b
.l0bd6
	ld a,(ix+#2d)
	cp #ff
	jp z,l0bfa
	or a
	jr z,l0be6
	dec (ix+#2d)
	jr l0bfa
.l0be6
	ld a,(ix+#17)
	or (ix+#18)
	jr z,l0c01
	inc (ix+#1f)
	ld a,(ix+#19)
	ld (ix+#20),a
	jp l0e7b
.l0bfa
	set 5,(ix+#23)
	jp l0e7b
.l0c01
	bit 0,(ix+#23)
	jp nz,l0e7b
	set 7,(ix+#23)
	jp l0e7b
.l0c0f
	ld a,(ix+#1c)
	cp (ix+#04)
	jr z,l0c27
	inc a
	ld (ix+#1c),a
	call l0ea4
	ld a,(ix+#03)
	ld (ix+#20),a
	jp l0c8e
.l0c27
	inc (ix+#1f)
	ld a,(ix+#06)
	ld (ix+#20),a
	jp l0c8e
.l0c33
	ld a,(ix+#1c)
	cp (ix+#07)
	jr z,l0c4b
	dec a
	ld (ix+#1c),a
	call l0ea4
	ld a,(ix+#06)
	ld (ix+#20),a
	jp l0c8e
.l0c4b
	inc (ix+#1f)
	ld a,(ix+#08)
	ld (ix+#20),a
	jp l0c8e
.l0c57
	inc (ix+#1f)
	ld a,(ix+#09)
	ld (ix+#20),a
	jp l0c8e
.l0c63
	ld a,(ix+#1c)
	cp (ix+#0a)
	jr z,l0c7b
	dec a
	ld (ix+#1c),a
	call l0ea4
	ld a,(ix+#09)
	ld (ix+#20),a
	jp l0c8e
.l0c7b
	xor a
	ld (ix+#1c),a
	call l0ea4
	inc (ix+#1f)
	ld a,(ix+#0b)
	ld (ix+#20),a
	jp l0e7b
.l0c8e
	ld a,(ix+#1e)
	or a
	jp z,l0c9b
	dec (ix+#1e)
	jp l0e7b
.l0c9b
	ld a,(ix+#0d)
	rrca
	jp c,l0cb9
	rrca
	jp c,l0d09
	rrca
	jp c,l0d46
	rrca
	jp c,l0df3
	rrca
	jp c,l0cb9
	rrca
	jp c,l0d09
	jp l0e7b
.l0cb9
	ld a,(ix+#10)
	ld (ix+#1e),a
	ld a,(ix+#1a)
	ld l,a
	sub (ix+#29)
	ld a,(ix+#1b)
	ld h,a
	sbc (ix+#2a)
	jp c,l0cf2
	ld d,#00
	ld e,(ix+#11)
	or a
	sbc hl,de
	ld (ix+#1b),h
	ld (ix+#1a),l
	bit 6,(ix+#0d)
	jr nz,l0ce7
	jp l0e7b
.l0ce7
	ld c,#06
	ld a,(ix+#1a)
	call l0ea4
	jp l0e7b
.l0cf2
	ld a,(ix+#0d)
	and #30
	jp z,l0e7b
	ld a,(ix+#02)
	ld (ix+#1b),a
	ld a,(ix+#01)
	ld (ix+#1a),a
	jp l0e7b
.l0d09
	ld a,(ix+#10)
	ld (ix+#1e),a
	ld d,(ix+#1b)
	ld e,(ix+#1a)
	ld h,(ix+#2a)
	ld l,(ix+#29)
	or a
	sbc hl,de
	jp c,l0cf2
	ex de,hl
	ld d,#00
	ld e,(ix+#11)
	add hl,de
	ld (ix+#1b),h
	ld (ix+#1a),l
	bit 6,(ix+#0d)
	jp nz,l0ce7
	ld a,(l0946)
	add a
	ld c,a
	ld a,l
	call l0ea4
	ld a,h
	inc c
	call l0ea4
	jp l0e7b
.l0d46
	ld a,(ix+#1d)
	dec a
	jp z,l0d54
	dec a
	jp z,l0d9d
	jp l0da9
.l0d54
	ld a,(ix+#10)
	ld (ix+#1e),a
	ld a,(ix+#1a)
	ld l,a
	sub (ix+#29)
	ld a,(ix+#1b)
	ld h,a
	sbc (ix+#2a)
	jp c,l0d91
	ld d,#00
	ld e,(ix+#11)
	or a
	sbc hl,de
	ld (ix+#1b),h
	ld (ix+#1a),l
	bit 6,(ix+#0d)
	jp nz,l0ce7
	ld a,(l0946)
	add a
	ld c,a
	ld a,l
	call l0ea4
	ld a,h
	inc c
	call l0ea4
	jp l0e7b
.l0d91
	inc (ix+#1d)
	ld a,(ix+#12)
	ld (ix+#1e),a
	jp l0e7b
.l0d9d
	inc (ix+#1d)
	ld a,(ix+#15)
	ld (ix+#1e),a
	jp l0e7b
.l0da9
	ld a,(ix+#15)
	ld (ix+#1e),a
	ld d,(ix+#1b)
	ld e,(ix+#1a)
	ld h,(ix+#2c)
	ld l,(ix+#2b)
	or a
	sbc hl,de
	jp c,l0de6
	ex de,hl
	ld d,#00
	ld e,(ix+#16)
	add hl,de
	ld (ix+#1b),h
	ld (ix+#1a),l
	bit 6,(ix+#0d)
	jp nz,l0ce7
	ld a,(l0946)
	add a
	ld c,a
	ld a,l
	call l0ea4
	ld a,h
	inc c
	call l0ea4
	jp l0e7b
.l0de6
	ld (ix+#1d),#01
	ld a,(ix+#10)
	ld (ix+#1e),a
	jp l0e7b
.l0df3
	ld a,(ix+#1d)
	dec a
	jp z,l0e01
	dec a
	jp z,l0d9d
	jp l0e3e
.l0e01
	ld a,(ix+#10)
	ld (ix+#1e),a
	ld d,(ix+#1b)
	ld e,(ix+#1a)
	ld h,(ix+#2a)
	ld l,(ix+#29)
	or a
	sbc hl,de
	jp c,l0d91
	ex de,hl
	ld d,#00
	ld e,(ix+#11)
	add hl,de
	ld (ix+#1b),h
	ld (ix+#1a),l
	bit 6,(ix+#0d)
	jp nz,l0ce7
	ld a,(l0946)
	add a
	ld c,a
	ld a,l
	call l0ea4
	ld a,h
	inc c
	call l0ea4
	jp l0e7b
.l0e3e
	ld a,(ix+#15)
	ld (ix+#1e),a
	ld a,(ix+#1a)
	ld l,a
	sub (ix+#2b)
	ld a,(ix+#1b)
	ld h,a
	sbc (ix+#2c)
	jp c,l0de6
	ld d,#00
	ld e,(ix+#16)
	or a
	sbc hl,de
	ld (ix+#1b),h
	ld (ix+#1a),l
	bit 6,(ix+#0d)
	jp nz,l0ce7
	ld a,(l0946)
	add a
	ld c,a
	ld a,l
	call l0ea4
	ld a,h
	inc c
	call l0ea4
	jp l0e7b
.l0e7b
	ld a,(l0946)
	inc a
	ld (l0946),a
	cp #03
	jr z,l0e9c
	ld de,#002f
	add ix,de
	ld a,(l0943)
	rlca
	ld (l0943),a
	ld a,(l0944)
	rlca
	ld (l0944),a
	jp l0960
.l0e9c
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ei
	ret
.l0ea4
	push af
	push bc
	ld b,a
	ld a,c
	ld c,b
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
.l0ec9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0ef0 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0ef8 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#04
	db #c3,#a5,#38,#e3,#23,#23,#5e,#23
	db #56,#eb,#cd,#88,#3a,#e3,#b7,#ca
	db #ea,#38,#b9,#ca,#ea,#38,#da,#ea
	db #38,#36,#00,#2b,#0c,#c3,#dc,#38
.l0f1f equ $ + 6
	db #36,#00,#2b,#cd,#2e,#30,#e1,#c1
.l0f27 equ $ + 6
	db #cd,#88,#3a,#e5,#2a,#16,#40,#e5
	db #c5,#4f,#06,#00,#09,#22,#16,#40
	db #c1,#2a,#0b,#40,#e5,#21,#cc,#02
	db #e5,#11,#11,#39,#d5,#c5,#c9,#cd
	db #f9,#34,#e1,#22,#0b,#40,#e1,#22
.l0f4e equ $ + 5
	db #18,#40,#e1,#af,#32,#10,#40,#cd
.l0f58 equ $ + 7
.l0f56 equ $ + 5
	db #72,#3a,#b7,#ca,#49,#00,#00,#48
	db #3d,#cd,#72,#3a,#b7,#fc,#ee,#31
	db #cd,#ed,#3a,#cd,#d8,#33,#fe,#0d
	db #c2,#2b,#39,#e5,#2a,#18,#40,#e5
.l0f76 equ $ + 5
	db #2a,#0b,#40,#e5,#c3,#ed,#34,#2a
	db #0b,#40,#23,#af,#32,#06,#40,#c3
	db #c6,#34,#7d,#93,#5f,#7c,#9a,#57
	db #c9,#3a,#e4,#3d,#b7,#c2,#c7,#04
.l0f94 equ $ + 3
	db #cd,#83,#20,#3a,#11,#3e,#fe,#20
	db #c0,#32,#e4,#3d,#78,#e6,#80,#c2
	db #9d,#04,#78,#e6,#03,#32,#e7,#3d
.l0fb0 equ $ + 7
	db #2a,#d2,#3d,#eb,#cd,#54,#39,#eb
	db #22
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
	dw #0030,#0028,#0027,#0025
	dw #0024,#0022,#0021,#0020
	dw #0019,#0018,#0017,#0016
	ld de,l1060
	jp l08da
.l1060
	db #00,#ff,#00,#05,#01,#0f,#00,#01
	db #0f,#ff,#01,#00,#02,#ff,#c4,#88
	db #01,#01,#75,#07,#19,#50,#01,#7d
	db #60,#10,#44
.l107b
	dw l111a,l1197,l1246
	db #04,#fe,#ff,#00,#01,#00,#01,#00
	db #00,#01,#00,#00,#00,#00,#0f,#0d
	db #02,#07,#0c,#00,#03,#00,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#0f,#0f,#01
	db #0c,#0d,#00,#00,#00,#00,#10,#fa
	db #ff,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#01,#0a
	db #0c,#00,#03,#00,#00,#00,#0a,#0a
	db #01,#0a,#0c,#00,#03,#00,#00,#00
	db #08,#08,#01,#06,#08,#00,#03,#00
	db #00,#02,#04,#06,#08,#0a,#0c,#0e
	db #10,#12,#14,#16,#18,#1a,#1c,#1e
	db #20,#22,#24,#26,#28,#2a,#2c,#2e
	db #30,#32,#34,#36,#38,#3a,#3c,#3e
	db #40,#42,#44,#46,#48,#4a,#4c,#4e
	db #50,#52,#54,#56,#58,#5a,#5c,#5e
	db #60,#62,#64,#66,#68,#6a,#6c,#6e
	db #70,#72,#74,#76,#78,#7a,#7c,#7e
.l111a equ $ + 1
	db #80,#f9,#da,#10,#f8,#98,#10,#f7
	db #bc,#10,#f5,#04,#f3,#6b,#11,#f3
	db #76,#11,#f3,#81,#11,#f3,#8c,#11
	db #f6,#1b,#08,#1b,#08,#1e,#08,#22
	db #04,#27,#08,#27,#04,#22,#08,#1e
	db #08,#1b,#04,#1b,#04,#17,#08,#17
	db #08,#1b,#08,#1e,#04,#23,#08,#23
	db #04,#1e,#08,#1b,#08,#16,#04,#16
	db #04,#f3,#6b,#11,#f3,#76,#11,#f3
	db #81,#11,#f3,#8c,#11,#f2,#23,#11
	db #fb,#00,#12,#08,#12,#08,#16,#08
	db #19,#04,#1e,#08,#f4,#1e,#04,#16
	db #08,#12,#08,#12,#04,#12,#04,#f4
	db #14,#08,#14,#08,#17,#08,#1b,#04
	db #20,#08,#f4,#20,#04,#1b,#08,#14
.l1197 equ $ + 6
	db #08,#14,#04,#14,#04,#f4,#f8,#98
	db #10,#f7,#c6,#10,#f5,#06,#f0,#20
	db #f6,#2c,#08,#2c,#08,#20,#04,#2c
	db #08,#14,#08,#14,#04,#14,#08,#14
	db #04,#f0,#04,#f0,#08,#2a,#08,#2a
	db #08,#1e,#04,#2a,#08,#2f,#08,#2f
	db #04,#2e,#08,#2a,#08,#12,#04,#12
	db #04,#2c,#08,#2c,#08,#20,#04,#2c
	db #08,#2f,#08,#2f,#04,#2e,#08,#31
	db #08,#14,#04,#14,#04,#2a,#08,#2a
	db #08,#1e,#04,#2a,#08,#2f,#08,#2f
	db #04,#2e,#08,#2a,#08,#12,#04,#12
	db #08,#2f,#04,#2e,#08,#2a,#08,#12
	db #04,#12,#04,#2a,#04,#2a,#04,#2c
	db #04,#f0,#04,#2e,#04,#2e,#04,#2c
	db #04,#f0,#04,#33,#08,#33,#08,#33
	db #04,#31,#04,#2c,#08,#0f,#04,#f0
	db #04,#0f,#04,#0f,#04,#0f,#08,#27
	db #04,#27,#04,#2f,#08,#2f,#08,#2f
	db #04,#2e,#04,#27,#04,#f0,#04,#17
	db #08,#17,#04,#17,#04,#17,#08,#23
	db #04,#23,#04,#f5,#04,#f0,#20,#f6
.l1246 equ $ + 5
	db #f2,#9d,#11,#fb,#00,#f8,#98,#10
	db #f7,#c6,#10,#f5,#04,#f0,#20,#f6
	db #f5,#02,#f0,#04,#12,#04,#1e,#04
	db #2a,#04,#1e,#04,#12,#04,#f0,#04
	db #12,#04,#1e,#04,#2a,#04,#1e,#04
	db #12,#04,#f0,#04,#12,#04,#1e,#04
	db #2a,#04,#2c,#04,#20,#04,#14,#04
	db #0b,#04,#14,#04,#20,#04,#2c,#04
	db #20,#04,#14,#04,#0b,#04,#14,#04
	db #20,#04,#2c,#04,#20,#04,#14,#04
	db #0b,#04,#f6,#f0,#04,#12,#04,#1e
	db #04,#2a,#04,#1e,#04,#12,#04,#f0
	db #04,#12,#04,#1e,#04,#2a,#04,#1e
	db #04,#12,#04,#f0,#04,#12,#04,#1e
	db #04,#2a,#04,#2c,#04,#20,#04,#14
	db #04,#0b,#04,#14,#04,#20,#04,#2c
	db #04,#20,#04,#2a,#04,#2a,#04,#2c
	db #04,#2c,#04,#2e,#04,#f0,#04,#31
	db #04,#31,#04,#f5,#08,#0f,#04,#f6
	db #33,#04,#36,#04,#f0,#04,#33,#04
	db #36,#04,#33,#04,#f0,#04,#f0,#04
	db #f5,#08,#0f,#04,#f6,#2a,#04,#2e
	db #04,#f0,#04,#2a,#04,#2e,#04,#2a
	db #04,#23,#04,#23,#04,#f5,#04,#f0
	db #20,#f6,#f2,#4c,#12,#fb,#00
;
; #0107
; call #0856	; stop music
;
; #013d
; call #0856
; call #0859	; init music
;
.music_info
	db "How to be a Complete Bastard (1987)(Virgin Games)()",0
	db "",0

	read "music_end.asm"
