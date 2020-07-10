; Music of Fiendish Freddy's Big Top O' Fun (1990)(Mindscape)(Imagitec Design)()
; Ripped by Megachur the 14/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FIENDISF.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #4000

	read "music_header.asm"

notff
	or a
	jp z,l410e	; play_00
	dec a
	jp z,l418b	; play_01
	dec a
	jp z,l4022	; init_music
	dec a
	jr z,l401b
	dec a
	jp z,l4b50
	ld a,#ff
	ld (l4a3b),a
	jp l4165
.l401b
	ld hl,#0f02
	ld (l4a3d),hl
	ret
;
.init_music
.l4022
;
	nop		; modified by Megachur ld a,d	
	ld hl,#0000
	ld (l4a3d),hl

	add a
	ld e,a
	ld d,#00

	xor a		; modified by Megachur
	ld (l4a3b),a
	ld (l417e),a	; modified by Megachur
	
	ld hl,l4fb6
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4a9a),de
	ex de,hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l4a8c),bc
	ex de,hl
	ld (l4a9c),de
	ld de,l4a9e
	call l40f6
	xor a
	ld (l4aaf),a
	ld (l4acb),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4adc),de
	ex de,hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l4ace),bc
	ex de,hl
	ld (l4ade),de
	ld de,l4ae0
	call l40f6
	xor a
	ld (l4af1),a
	ld (l4b0d),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4b1e),de
	ex de,hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l4b10),bc
	ex de,hl
	ld (l4b20),de
	ld de,l4b22
	call l40f6
	xor a
	ld (l4b33),a
	ld (l4b4f),a
	xor a
	ld (l4a3d),a
	ld (l4a45),a
	ld (l4a3f),a
	ld (l4a3b),a
	ld (l4a41),a
	ld (l4f1c),a
	ld (l4f50),a
	ld (l4f84),a
	ld (l4aad),a
	ld (l4aef),a
	ld (l4b31),a
	ld hl,l4a5c
	ld (l4a8a),hl
	ld hl,l4a72
	ld (l4acc),hl
	ld hl,l4a88
	ld (l4b0e),hl
	ld hl,#073f
	call l443e
	ld hl,#0800
	call l443e
	inc h
	call l443e
	inc h
	call l443e
	ld a,#3f
	ld (l4a3a),a
	ld (l4c7a),a
	ret
.l40f6
	xor a
	ld b,#07
.l40f9
	ld (de),a
	inc de
	djnz l40f9
	ret
.l40fe
	ld hl,l4a3d
	dec (hl)
	ret nz
	ld (hl),#05
	inc hl
	dec (hl)
	ret nz
	ld a,#ff
	ld (l4a3b),a
	ret
.l410e
	ld a,(l4a3b)
	or a
	jp m,l415e
	ld hl,(l4a3d)
	ld a,h
	or l
	call nz,l40fe
	ld a,(l4a41)
	or a
	jp nz,l413f
	ld ix,l4a8a
	call l446c
	ld ix,l4acc
	call l446c
	ld ix,l4b0e
	call l446c
	ld a,(l4a40)
	ld (l4a41),a
.l413f
	ld ix,l4a8a
	call l42b5
	ld ix,l4acc
	call l42b5
	ld ix,l4b0e
	call l42b5
	ld hl,l4a41
	dec (hl)
	call l41a5
	jp l4c0a
.l415e
	ld a,(l417e)
	or a
	jp p,l417f
.l4165
	ld a,#3f
	ld (l4a3a),a
	ld l,a
	ld h,#07
	call l443e
	ld hl,#0800
	call l443e
	inc h
	call l443e
	inc h
	jp l443e
.l417e
	nop
.l417f
	call l4c0a
	ld a,(l4c7a)
	ld l,a
	ld h,#07
	jp l443e
.l418b
	ld a,(l4a3b)
	or a
	ret m
	ld ix,l4a8a
	call l431a
	ld ix,l4acc
	call l431a
	ld ix,l4b0e
	call l431a
.l41a5
	ld a,(l4a3d)
	or a
	jr z,l41c7
	ld a,(l4a3e)
	ld b,a
	ld hl,l4aca
	ld a,(hl)
	cp b
	jr c,l41b7
	ld (hl),b
.l41b7
	ld hl,l4b0c
	ld a,(hl)
	cp b
	jr c,l41bf
	ld (hl),b
.l41bf
	ld hl,l4b4e
	ld a,(hl)
	cp b
	jr c,l41c7
	ld (hl),b
.l41c7
	ld a,(l4c7a)
	ld d,a
	and #24
	ld b,a
	ld a,e
	and #12
	ld c,a
	ld a,d
	and #09
	ld d,a
	ld a,(l4a3a)
	ld e,a
	ld a,(l4f1c)
	or a
	jr z,l41e5
	ld a,e
	and #f6
	or d
	ld e,a
.l41e5
	ld a,(l4f50)
	or a
	jr z,l41f0
	ld a,e
	and #ed
	or c
	ld e,a
.l41f0
	ld a,(l4f84)
	or a
	jr z,l41fb
	ld a,e
	and #db
	or b
	ld e,a
.l41fb
	ld a,e
	ld (l4a3a),a
	ld a,(l4a3a)
	ld h,#07
	call l443f
	ld a,(l4aca)
	ld de,(l4ac7)
	ld hl,#0800
	ld ix,l4a8a
	call l4237
	ld a,(l4b0c)
	ld de,(l4b09)
	ld hl,#0902
	ld ix,l4acc
	call l4237
	ld a,(l4b4e)
	ld de,(l4b4b)
	ld hl,#0a04
	ld ix,l4b0e
.l4237
	ex af,af'
	ld a,(ix+#41)
	or a
	ret nz
	ex af,af'
	out (c),h
	exx
	out (c),e
	out (c),h
	exx
	out (c),a
	exx
	out (c),d
	out (c),h
	exx
	ld h,l
	ld a,e
	out (c),h
	exx
	out (c),e
	out (c),h
	exx
	out (c),a
	exx
	out (c),d
	out (c),h
	exx
	ld a,d
	inc h
	out (c),h
	exx
	out (c),e
	out (c),h
	exx
	out (c),a
	exx
	out (c),d
	out (c),h
	exx
	ld h,#06
	ld a,(l4c7a)
	and #38
	cp #38
	ret nz
	ld a,(ix+#19)
	or a
	jp z,l4297
	ld a,(ix+#3f)
	out (c),h
	exx
	out (c),e
	out (c),h
	exx
	out (c),a
	exx
	out (c),d
	out (c),h
	exx
	ret
.l4297
	ld a,(ix+#1a)
	or a
	ret z
	ld a,(ix+#3a)
	or a
	ret z
	ld a,(ix+#3f)
	out (c),h
	exx
	out (c),e
	out (c),h
	exx
	out (c),a
	exx
	out (c),d
	out (c),h
	exx
	ret
.l42b5
	bit 0,(ix+#17)
	jp z,l42d1
	ld a,(ix+#2e)
	or a
	jp nz,l42ce
	res 0,(ix+#17)
	set 1,(ix+#17)
	jp l42d1
.l42ce
	dec (ix+#2e)
.l42d1
	bit 0,(ix+#15)
	jp z,l431a
	ld a,(ix+#26)
	or a
	jp z,l42e5
	dec (ix+#26)
	jp l431a
.l42e5
	ld l,(ix+#29)
	ld h,(ix+#2a)
	ld e,(ix+#2b)
	ld d,(ix+#2c)
	ld c,(ix+#27)
	ld b,(ix+#28)
	add hl,bc
	push hl
	and a
	sbc hl,de
	pop hl
	bit 1,(ix+#15)
	jp z,l430a
	jp nc,l430d
	jp l430e
.l430a
	jp nc,l430e
.l430d
	ex de,hl
.l430e
	ld (ix+#29),l
	ld (ix+#2a),h
	ld (ix+#3d),l
	ld (ix+#3e),h
.l431a
	ld a,(ix+#1a)
	or a
	jp z,l4333
	ld a,(ix+#3a)
	or a
	jp nz,l4330
	ld hl,l4a3a
	ld a,(ix+#22)
	or (hl)
	ld (hl),a
.l4330
	dec (ix+#3a)
.l4333
	ld a,(ix+#18)
	or a
	jp z,l4382
	ld l,(ix+#06)
	ld h,(ix+#07)
.l4340
	ld a,(hl)
	inc hl
	cp #80
	jp z,l4382
	cp #81
	jp nz,l435f
	ld e,(hl)
	ld d,#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	add hl,de
	ld (ix+#06),l
	ld (ix+#07),h
	jp l4340
.l435f
	ld (ix+#06),l
	ld (ix+#07),h
	add (ix+#37)
	ld (ix+#37),a
	add a
	ld e,a
	ld d,#00
	ld hl,l48ba
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#29),e
	ld (ix+#2a),d
	ld (ix+#3d),e
	ld (ix+#3e),d
.l4382
	ld a,(ix+#19)
	or a
	jp z,l43c4
	ld l,(ix+#08)
	ld h,(ix+#09)
.l438f
	ld a,(hl)
	inc hl
	cp #80
	jp z,l43c4
	cp #81
	jp nz,l43ad
	ld e,(hl)
	ld d,#00
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	add hl,de
	ld (ix+#08),l
	ld (ix+#09),h
	jr l438f
.l43ad
	ld (ix+#08),l
	ld (ix+#09),h
	add (ix+#38)
	ld (ix+#38),a
	ld e,a
	ld d,#00
	ld hl,l497a
	add hl,de
	ld a,(hl)
	ld (ix+#3f),a
.l43c4
	bit 1,(ix+#17)
	jp z,l440b
	ld a,(ix+#33)
	or a
	jp z,l43d8
	dec (ix+#33)
	jp l440b
.l43d8
	ld a,(ix+#34)
	xor (ix+#30)
	ld (ix+#34),a
	ld e,a
	ld d,#00
	ld l,(ix+#29)
	ld h,(ix+#2a)
	ld a,(ix+#15)
	or a
	jp z,l43fc
	bit 2,(ix+#15)
	jp z,l43fc
	add hl,de
	jp l43ff
.l43fc
	and a
	sbc hl,de
.l43ff
	ld (ix+#3d),l
	ld (ix+#3e),h
	ld a,(ix+#32)
	ld (ix+#33),a
.l440b
	ld a,(ix+#14)
	or a
	ret z
	ld a,(ix+#36)
	or a
	jp nz,l443a
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	ld a,(hl)
	inc hl
	cp #ff
	ret z
	ld (ix+#36),a
	ld a,(hl)
	inc hl
	cp (ix+#1e)
	jp c,l4430
	ld a,(ix+#1e)
.l4430
	ld (ix+#40),a
	ld (ix+#0a),l
	ld (ix+#0b),h
	ret
.l443a
	dec (ix+#36)
	ret
.l443e
	ld a,l
.l443f
	exx
	ld b,#f6
	ld de,#80c0
	ld h,#00
	exx
	ld b,#f4
	out (c),h
	exx
	out (c),e
	out (c),h
	exx
	out (c),a
	exx
	out (c),d
	out (c),h
	exx
	ret
	out (c),h
	exx
	out (c),e
	out (c),h
	exx
	out (c),a
	exx
	out (c),d
	out (c),h
	exx
	ret
.l446c
	ld a,(ix+#25)
	or a
	call z,l4477
	dec (ix+#25)
	ret
.l4477
	ld l,(ix+#04)
	ld h,(ix+#05)
	ld (ix+#0a),l
	ld (ix+#0b),h
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld (ix+#06),l
	ld (ix+#07),h
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	ld (ix+#08),l
	ld (ix+#09),h
	ld a,(ix+#2d)
	ld (ix+#2e),a
	ld a,(ix+#16)
	ld (ix+#17),a
	ld a,(ix+#39)
	ld (ix+#3a),a
	ld a,(ix+#1a)
	or a
	jp z,l44c2
	ld hl,l4a3a
	ld a,(ix+#21)
	and (hl)
	ld (hl),a
	ld a,(ix+#3b)
	ld (ix+#3f),a
.l44c2
	ld (ix+#15),#00
	ld (ix+#38),#00
	ld l,(ix+#00)
	ld h,(ix+#01)
	push hl
	pop iy
	ld l,(ix+#02)
	ld h,(ix+#03)
.l44d9
	ld a,(hl)
	inc hl
	cp #60
	jp c,l47c3
	cp #ff
	jp z,l4542
	cp #65
	jp z,l47bb
	jp nc,l450f
	cp #64
	jr nz,l44f9
	ld a,(hl)
	inc hl
	ld (ix+#23),a
	jp l44d9
.l44f9
	cp #61
	jp z,l477a
	cp #60
	jp z,l478e
	cp #62
	jp z,l47a9
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l44d9
.l450f
	cp #c0
	jp nc,l451c
	sub #7f
	ld (ix+#24),a
	jp l44d9
.l451c
	cp #e0
	jp c,l4650
	jp z,l4592
	cp #f0
	jp nc,l453a
	ld b,a
	ld a,(l4a45)
	or a
	jp m,l44d9
	ld a,b
	sub #e0
	ld (ix+#1e),a
	jp l44d9
.l453a
	sub #ef
	ld (l4a40),a
	jp l44d9
.l4542
	ld a,(iy+#00)
	or (iy+#01)
	jp z,l4558
	ld l,(iy+#00)
	ld h,(iy+#01)
	inc iy
	inc iy
	jp l44d9
.l4558
	ld l,(ix+#12)
	ld h,(ix+#13)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,d
	or e
	jp z,l4578
	ld a,d
	and e
	cp #ff
	jp z,l458c
	ld (ix+#12),l
	ld (ix+#13),h
	ex de,hl
	jp l44d9
.l4578
	ld l,(ix+#10)
	ld h,(ix+#11)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#12),l
	ld (ix+#13),h
	ex de,hl
	jp l44d9
.l458c
	ld a,#ff
	ld (l4a3b),a
	ret
.l4592
	ld b,(hl)
	inc hl
	ld a,(hl)
	ld (l45f3),a
	inc hl
	ld a,(hl)
	ld (l45e2),a
	push af
	inc hl
	push hl
	set 0,(ix+#15)
	ld a,b
	ld (l45bf),a
	and #0f
	ld (l45d1),a
	ld e,a
	ld d,#00
	ld bc,(l4a40)
	ld b,#00
	ld a,#08
	call l48a0
	ld (ix+#26),c
.l45bf equ $ + 1
	ld a,#00
	rrca
	rrca
	rrca
	rrca
	and #0f
	xor #0f
	inc a
	ld c,a
	ld b,#00
	push bc
	ld a,(ix+#24)
.l45d1 equ $ + 1
	sub #00
	ld e,a
	ld d,#00
	ld bc,(l4a40)
	ld b,#00
	ld a,#08
	call l48a0
	push bc
.l45e2 equ $ + 1
	ld a,#00
	add (ix+#23)
	add a
	ld e,a
	ld d,#00
	ld hl,l48ba
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
.l45f3 equ $ + 1
	ld a,#00
	add (ix+#23)
	add a
	ld e,a
	ld d,#00
	ld hl,l48ba
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#2b),e
	ld (ix+#2c),d
	pop hl
	res 1,(ix+#15)
	push hl
	and a
	sbc hl,de
	pop hl
	jp nc,l461a
	ex de,hl
	set 1,(ix+#15)
.l461a
	and a
	sbc hl,de
	ld b,h
	ld c,l
	ld a,b
	or c
	jr nz,l4626
	ld bc,#0001
.l4626
	pop de
	call l487f
	ld a,b
	or c
	jr nz,l4631
	ld bc,#0001
.l4631
	pop de
	ld a,#0c
	call l48a0
	bit 1,(ix+#15)
	jr nz,l4645
	ld hl,#0000
	and a
	sbc hl,bc
	ld b,h
	ld c,l
.l4645
	ld (ix+#27),c
	ld (ix+#28),b
	pop hl
	pop af
	jp l47c3
.l4650
	push hl
	push iy
	ex af,af'
	xor a
	ld (l473d),a
	ex af,af'
	sub #c0
	ld (ix+#3c),a
	add a
	ld e,a
	ld d,#00
	ld hl,l4fdc
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
	pop iy
	ld hl,l4a3a
	ld a,(iy+#06)
	or (iy+#07)
	jp nz,l46ae
	ld a,(iy+#00)
	or (iy+#01)
	jp z,l46ae
	ld (ix+#1a),#ff
	ld a,(iy+#00)
	ld (ix+#39),a
	ld (ix+#3a),a
	ld e,(iy+#01)
	ld d,#00
	ld hl,l497a
	add hl,de
	ld c,(hl)
	ld hl,l4a3a
	ld a,(ix+#21)
	and (hl)
	ld (hl),a
	ld (ix+#3f),c
	ld (ix+#3b),c
	ld a,#01
	ld (l473d),a
	jp l46b2
.l46ae
	ld (ix+#1a),#00
.l46b2
	ld a,(iy+#02)
	or (iy+#03)
	jp nz,l46c2
	res 0,(ix+#16)
	jp l46ed
.l46c2
	set 0,(ix+#16)
	set 0,(ix+#17)
	ld a,(iy+#02)
	ld c,a
	and #0f
	ld (ix+#32),a
	ld (ix+#33),a
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#2f),a
	ld a,(iy+#03)
	ld (ix+#2d),a
	ld (ix+#2e),a
	ld (ix+#34),#00
.l46ed
	ld e,(iy+#04)
	ld d,(iy+#05)
	ld a,d
	or e
	jp z,l4710
	ld (ix+#06),e
	ld (ix+#07),d
	ld (ix+#0c),e
	ld (ix+#0d),d
	ld (ix+#18),#ff
	ld a,(ix+#1f)
	and (hl)
	ld (hl),a
	jp l4719
.l4710
	ld a,(ix+#20)
	or (hl)
	ld (hl),a
	ld (ix+#18),#00
.l4719
	ld e,(iy+#06)
	ld d,(iy+#07)
	ld a,d
	or e
	jp z,l473c
	ld (ix+#08),e
	ld (ix+#09),d
	ld (ix+#0e),e
	ld (ix+#0f),d
	ld (ix+#19),#ff
	ld a,(ix+#21)
	and (hl)
	ld (hl),a
	jp l474b
.l473d equ $ + 1
.l473c
	ld a,#00
	or a
	jp nz,l4747
	ld a,(ix+#22)
	or (hl)
	ld (hl),a
.l4747
	ld (ix+#19),#00
.l474b
	ld e,(iy+#08)
	ld d,(iy+#09)
	ld a,d
	or e
	jp z,l476c
	ld (ix+#04),e
	ld (ix+#05),d
	ld (ix+#0a),e
	ld (ix+#0b),d
	ld (ix+#14),#ff
	pop iy
	pop hl
	jp l44d9
.l476c
	ld (ix+#40),#00
	ld (ix+#14),#00
	pop iy
	pop hl
	jp l44d9
.l477a
	ld a,(hl)
	inc hl
	dec iy
	dec iy
	dec iy
	ld (iy+#00),a
	ld (iy+#01),l
	ld (iy+#02),h
	jp l44d9
.l478e
	dec (iy+#00)
	jp z,l47a0
	jp m,l47a0
	ld l,(iy+#01)
	ld h,(iy+#02)
	jp l44d9
.l47a0
	inc iy
	inc iy
	inc iy
	jp l44d9
.l47a9
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	dec iy
	dec iy
	ld (iy+#00),l
	ld (iy+#01),h
	ex de,hl
	jp l44d9
.l47bb
	ld a,#ff
	ld (l4a3f),a
	jp l44d9
.l47c3
	push hl
	ld (ix+#36),#00
	add (ix+#23)
	ld (ix+#37),a
	add a
	ld e,a
	ld d,#00
	ld hl,l48ba
	add hl,de
	srl e
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#29),l
	ld (ix+#2a),h
	ld (ix+#3d),l
	ld (ix+#3e),h
	ld a,(ix+#19)
	or a
	jp z,l47fa
	ld hl,l497a
	add hl,de
	ld a,(hl)
	ld (ix+#3f),a
	ld (ix+#38),e
.l47fa
	ld a,(ix+#24)
	ld (ix+#25),a
	ld a,(ix+#16)
	or a
	jp z,l4846
	ld (ix+#34),#00
	ld c,(ix+#2f)
	ld a,e
	cp #3c
	ld a,#42
	jp nc,l481f
	ld hl,l49da
	add hl,de
	ld a,(hl)
	or a
	jp z,l4843
.l481f
	ld e,a
	and #0f
	jp z,l4843
	ld b,a
	ld a,e
	bit 7,a
	jp nz,l483d
	bit 6,a
	jp nz,l4837
.l4831
	sla c
	djnz l4831
	jr l4843
.l4837
	srl c
	djnz l4837
	jr l4843
.l483d
	ld a,c
	cp b
	jp c,l4843
	ld c,b
.l4843
	ld (ix+#30),c
.l4846
	pop hl
	ld (ix+#02),l
	ld (ix+#03),h
	push iy
	pop hl
	ld (ix+#00),l
	ld (ix+#01),h
	ret
	ld a,(l4a3a)
	and (ix+#1f)
	ld (l4a3a),a
	ret
	ld a,(l4a3a)
	and (ix+#21)
	ld (l4a3a),a
	ret
	ld a,(l4a3a)
	or (ix+#20)
	ld (l4a3a),a
	ret
	ld a,(l4a3a)
	or (ix+#22)
	ld (l4a3a),a
	ret
.l487f
	push hl
	ld hl,#0000
	ld a,#10
.l4885
	ex af,af'
	sla c
	rl b
	adc hl,hl
	ld a,h
	cp d
	jp nz,l4893
	ld a,l
	cp e
.l4893
	jp c,l4899
	sbc hl,de
	inc bc
.l4899
	ex af,af'
	dec a
	jp nz,l4885
	pop hl
	ret
.l48a0
	push de
	push hl
	ld hl,#0000
.l48a5
	srl d
	rr e
	jp nc,l48ad
	add hl,bc
.l48ad
	sla c
	rl b
	dec a
	jp nz,l48a5
	ld b,h
	ld c,l
	pop hl
	pop de
	ret
.l48ba
	dw #0eef,#0e18,#0d4d,#0c8e
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
.l497a
	db #1f,#1f,#1f,#1e,#1e,#1e,#1d,#1d
	db #1d,#1c,#1c,#1c,#1b,#1b,#1b,#1a
	db #1a,#1a,#19,#19,#19,#18,#18,#18
	db #17,#17,#17,#16,#16,#16,#15,#15
	db #15,#14,#14,#14,#13,#13,#13,#12
	db #12,#12,#11,#11,#11,#10,#10,#10
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#09,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#05,#05
	db #05,#04,#04,#04,#03,#03,#03,#02
	db #02,#02,#01,#01,#01,#00,#00,#00
.l49da
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#02,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #8e,#8e,#8c,#8c,#8b,#8b,#8a,#8a
	db #89,#41,#41,#41,#42,#42,#42,#42
	db #42,#42,#42,#42,#42,#42,#42,#42
	db #42,#42,#42,#42,#42,#42,#42,#42
	db #42,#42,#42,#42,#42,#42,#42,#42
	db #42,#42,#42,#42,#42,#42,#42,#42
.l4a41 equ $ + 7
.l4a40 equ $ + 6
.l4a3f equ $ + 5
.l4a3e equ $ + 4
.l4a3d equ $ + 3
.l4a3c equ $ + 2
.l4a3b equ $ + 1
.l4a3a
	db #10,#00,#01,#00,#00,#00,#06,#05
.l4a45 equ $ + 3
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a59 equ $ + 7
	db #00,#00,#00,#00,#00,#f9,#51,#04
	db #f7,#51
.l4a5c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a72 equ $ + 6
.l4a6f equ $ + 3
	db #00,#00,#00,#02,#3e,#52,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a88 equ $ + 4
.l4a85 equ $ + 1
	db #00,#01,#9a,#52,#00,#00
.l4a8c equ $ + 2
.l4a8a
	dw l4a59,l5214,l50a4,l5118
	dw #0001,l50a6,l5117,#0001
.l4a9c equ $ + 2
.l4a9a
	dw l51bf,l51c1
.l4a9e
	db #ff,#00,#00,#02,#ff,#00,#ff,#00
.l4aad equ $ + 7
	db #01,#08,#0f,#fe,#01,#f7,#08,#00
.l4aaf equ $ + 1
	db #02,#01,#00,#00,#00,#de,#01,#00
	db #00,#00,#00,#04,#04,#00,#05,#04
	db #00,#00,#02,#24,#00,#01,#00,#03
.l4acb equ $ + 5
.l4aca equ $ + 4
.l4ac7 equ $ + 1
	db #02,#de,#01,#03,#0f,#00
.l4ace equ $ + 2
.l4acc
	dw l4a6f,l5256,l50c5,l5105
	dw #0001,l50c7,l5104,#0001
.l4ade equ $ + 2
.l4adc
	dw l51c5,l51c9
.l4ae0
	db #ff,#00,#01,#02,#ff,#00,#00,#02
.l4aef equ $ + 7
	db #03,#09,#0f,#fd,#02,#ef,#10,#00
.l4af1 equ $ + 1
	db #02,#01,#00,#00,#00,#92,#01,#00
	db #00,#00,#00,#04,#01,#00,#08,#07
	db #00,#00,#28,#27,#00,#00,#00,#00
.l4b0d equ $ + 5
.l4b0c equ $ + 4
.l4b09 equ $ + 1
	db #03,#92,#01,#00,#0f,#00
.l4b10 equ $ + 2
.l4b0e
	dw l4a85,l52a0,l5041,l50ea
	dw l5147,l5043,l50e9,l5146
.l4b20 equ $ + 2
.l4b1e
	dw l51d3,l51d9
.l4b22
	db #ff,#00,#00,#00,#ff,#ff,#00,#04
.l4b31 equ $ + 7
	db #05,#0a,#0f,#fb,#04,#df,#20,#00
.l4b33 equ $ + 1
	db #02,#01,#00,#00,#00,#18,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#02,#22,#54,#01,#01,#03
.l4b4f equ $ + 5
.l4b4e equ $ + 4
.l4b4b equ $ + 1
	db #05,#18,#02,#03,#0f,#00
.l4b50
	ld a,(l417e)
	or a
	ret m
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld d,#00
	ld hl,l5b1c
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
	pop ix
	ld a,(ix+#00)
	ld iy,l4f82
	jr l4b77
	ld iy,l4f4e
.l4b77
	ld l,(iy+#32)
	ld h,(iy+#33)
	ld de,#0041
	add hl,de
	ld (hl),#ff
	ld (iy+#02),#ff
	push ix
	pop hl
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (iy+#04),e
	ld (iy+#05),d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (iy+#06),e
	ld (iy+#07),d
	ld (iy+#0c),e
	ld (iy+#0d),d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (iy+#08),e
	ld (iy+#09),d
	ld (iy+#0e),e
	ld (iy+#0f),d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (iy+#0a),e
	ld (iy+#0b),d
	ld (iy+#10),e
	ld (iy+#11),d
	xor a
	ld (iy+#12),a
	ld (iy+#13),a
	ld (iy+#16),a
	ld (iy+#17),a
	ld (iy+#1a),a
	ld (iy+#1b),a
	ld (iy+#1e),a
	ld (iy+#1f),a
	ld a,(iy+#06)
	or (iy+#07)
	jr z,l4bec
	call l4ebc
	jr l4bef
.l4bec
	call l4ed0
.l4bef
	ld a,(iy+#08)
	or (iy+#09)
	jr z,l4bfc
	call l4ec6
	jr l4bff
.l4bfc
	call l4eda
.l4bff
	jr l4c01
.l4c01
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l4c0a
	ld a,(l4a3c)
	or a
	ret m
	ld iy,l4f1a
	ld a,(iy+#02)
	or a
	jr z,l4c33
	dec (iy+#04)
	jp p,l4c2a
	dec (iy+#04)
	jp p,l4c2a
	call l4ea0
	jr l4c33
.l4c2a
	call l4c7b
	call l4d7a
	call l4e6c
.l4c33
	ld iy,l4f4e
	ld a,(iy+#02)
	or a
	jr z,l4c56
	dec (iy+#04)
	jr nz,l4c4d
	dec (iy+#04)
	jp p,l4c4d
	call l4ea0
	jr l4c56
.l4c4d
	call l4c7b
	call l4d7a
	call l4e6c
.l4c56
	ld iy,l4f82
	ld a,(iy+#02)
	or a
	jr z,l4c79
	dec (iy+#04)
	jr nz,l4c70
	dec (iy+#04)
	jp p,l4c70
	call l4ea0
	jr l4c79
.l4c70
	call l4c7b
	call l4d7a
	call l4e6c
.l4c79
	ret
.l4c7a
	ccf
.l4c7b
	ld a,(iy+#06)
	or (iy+#07)
	ret z
	ld a,(iy+#12)
	or a
	jr z,l4c8c
	dec (iy+#12)
	ret
.l4c8c
	ld l,(iy+#0c)
	ld h,(iy+#0d)
	ld a,(hl)
	inc hl
	ld (iy+#0c),l
	ld (iy+#0d),h
	or a
	jp m,l4cdc
	ld e,a
	ld d,#00
	ld c,(iy+#18)
	ld b,(iy+#19)
	ld a,b
	or c
	jr z,l4cc6
	ld a,b
	or a
	jp m,l4cbc
	ld l,(iy+#24)
	ld h,(iy+#25)
	and a
	sbc hl,de
	jp l4ef3
.l4cbc
	ld l,(iy+#24)
	ld h,(iy+#25)
	add hl,de
	jp l4ef3
.l4cc6
	ld a,(iy+#1a)
	or a
	ld a,e
	jp m,l4cd4
	add (iy+#20)
	jp l4ee4
.l4cd4
	ld l,a
	ld a,(iy+#20)
	sub l
	jp l4ee4
.l4cdc
	cp #80
	jr nz,l4ceb
	ld a,(hl)
	inc hl
	ld (iy+#0c),l
	ld (iy+#0d),h
	jp l4ee4
.l4ceb
	cp #81
	jr nz,l4cfe
	ld a,#01
.l4cf1
	ld (iy+#18),#00
	ld (iy+#19),#00
	ld (iy+#1a),a
	jr l4c8c
.l4cfe
	cp #82
	jr nz,l4d06
	ld a,#ff
	jr l4cf1
.l4d06
	cp #83
	jr nz,l4d1a
	ld bc,#0001
.l4d0d
	ld (iy+#1a),#00
	ld (iy+#18),c
	ld (iy+#19),b
	jp l4c8c
.l4d1a
	cp #84
	jr nz,l4d23
	ld bc,#ffff
	jr l4d0d
.l4d23
	cp #85
	jr nz,l4d33
	ld a,(hl)
	inc hl
	ld (iy+#0c),l
	ld (iy+#0d),h
	ld (iy+#12),a
	ret
.l4d33
	cp #fd
	jr nz,l4d4a
	ld e,(hl)
	ld d,#00
	ld l,(iy+#06)
	ld h,(iy+#07)
	add hl,de
	ld (iy+#0c),l
	ld (iy+#0d),h
	jp l4c8c
.l4d4a
	cp #fe
	jr nz,l4d5e
	xor a
	ld (iy+#04),a
	ld (iy+#05),a
.l4d55
	ld (iy+#06),a
	ld (iy+#07),a
	jp l4ed0
.l4d5e
	cp #ff
	jr nz,l4d65
	xor a
	jr l4d55
.l4d65
	cp #d0
	jr nz,l4d6f
	call l4eda
	jp l4c8c
.l4d6f
	cp #d1
	jp nz,l4c8c
	call l4ebc
	jp l4c8c
.l4d7a
	ld a,(iy+#08)
	or (iy+#09)
	ret z
	ld a,(iy+#14)
	or a
	jr z,l4d8b
	dec (iy+#14)
	ret
.l4d8b
	ld l,(iy+#0e)
	ld h,(iy+#0f)
	ld a,(hl)
	inc hl
	ld (iy+#0e),l
	ld (iy+#0e),h
	or a
	jp m,l4dcd
	ld c,a
	ld a,(iy+#1c)
	or a
	ld a,c
	jr z,l4db6
	jp m,l4db0
	ld e,a
	ld a,(iy+#26)
	sub e
	jp l4f11
.l4db0
	add (iy+#26)
	jp l4f11
.l4db6
	ld c,a
	ld a,(iy+#1e)
	or a
	ld a,c
	jp m,l4dc5
	add (iy+#22)
	jp l4f06
.l4dc5
	ld e,a
	ld a,(iy+#22)
	sub e
	jp l4f06
.l4dcd
	cp #80
	jr nz,l4ddc
	ld a,(hl)
	inc hl
	ld (iy+#0e),l
	ld (iy+#0f),h
	jp l4f06
.l4ddc
	cp #81
	jr nz,l4dea
	ld (iy+#1c),#00
	ld (iy+#1e),#01
	jr l4d8b
.l4dea
	cp #82
	jr nz,l4df8
	ld (iy+#1c),#00
	ld (iy+#1e),#ff
	jr l4d8b
.l4df8
	cp #83
	jr nz,l4e06
	ld (iy+#1e),#00
	ld (iy+#18),#01
	jr l4d8b
.l4e06
	cp #84
	jr nz,l4e15
	ld (iy+#1e),#00
	ld (iy+#1c),#ff
	jp l4d8b
.l4e15
	cp #85
	jr nz,l4e25
	ld a,(hl)
	inc hl
	ld (iy+#0e),l
	ld (iy+#0f),h
	ld (iy+#14),a
	ret
.l4e25
	cp #fd
	jr nz,l4e3c
	ld e,(hl)
	ld d,#00
	ld l,(iy+#08)
	ld h,(iy+#09)
	add hl,de
	ld (iy+#0e),l
	ld (iy+#0f),h
	jp l4d8b
.l4e3c
	cp #fe
	jr nz,l4e50
	xor a
	ld (iy+#04),a
	ld (iy+#05),a
.l4e47
	ld (iy+#08),a
	ld (iy+#09),a
	jp l4eda
.l4e50
	cp #ff
	jr nz,l4e57
	xor a
	jr l4e47
.l4e57
	cp #d0
	jr nz,l4e61
	call l4eda
	jp l4d8b
.l4e61
	cp #d1
	jp nz,l4d8b
	call l4ec6
	jp l4d8b
.l4e6c
	ld a,(iy+#0a)
	or (iy+#0b)
	ret z
	ld a,(iy+#16)
	or a
	jr nz,l4e9b
	ld l,(iy+#10)
	ld h,(iy+#11)
	ld a,(hl)
	cp #ff
	ret z
	ld (iy+#16),a
	inc hl
	ld a,(hl)
	ld (iy+#2d),a
	inc hl
	ld (iy+#10),l
	ld (iy+#11),h
.l4e92
	ld h,(iy+#2c)
	ld l,(iy+#2d)
	jp l443e
.l4e9b
	dec (iy+#16)
	jr l4e92
.l4ea0
	ld (iy+#02),#00
	ld (iy+#00),#00
	call l4ed0
	call l4eda
	ld l,(iy+#32)
	ld h,(iy+#33)
	push hl
	pop ix
	ld (ix+#41),#00
	ret
.l4ebc
	ld a,(l4c7a)
	and (iy+#2e)
	ld (l4c7a),a
	ret
.l4ec6
	ld a,(l4c7a)
	and (iy+#30)
	ld (l4c7a),a
	ret
.l4ed0
	ld a,(l4c7a)
	or (iy+#2f)
	ld (l4c7a),a
	ret
.l4eda
	ld a,(l4c7a)
	or (iy+#31)
	ld (l4c7a),a
	ret
.l4ee4
	ld (iy+#20),a
	ld e,a
	ld d,#00
	ld hl,l48ba
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
.l4ef3
	ld (iy+#24),l
	ld (iy+#25),h
	ex de,hl
	ld l,e
	ld h,(iy+#2a)
	call l443e
	ld l,d
	inc h
	jp l443e
.l4f06
	ld (iy+#22),a
	ld e,a
	ld d,#00
	ld hl,l497a
	add hl,de
	ld a,(hl)
.l4f11
	ld (iy+#26),a
	ld l,a
	ld h,#06
	jp l443e
.l4f1c equ $ + 2
.l4f1a
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#00,#01,#08,#0f,#fe,#01
.l4f50 equ $ + 6
.l4f4e equ $ + 4
	db #f7,#08,#8a,#4a,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#02,#03
	db #09,#0f,#fd,#02,#ef,#10,#cc,#4a
.l4f84 equ $ + 2
.l4f82
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#04,#05,#0a,#0f,#fb,#04
	db #df,#20,#0e,#4b
.l4fb6
	dw l514d,l5153,l5159,l515f
	dw l5165,l516b,l5171,l5177
	dw l517d,l5183,l5189,l518f
	dw l5195,l519b,l51a1,l51a7
.l4fdc equ $ + 6
	dw l51ad,l51b3,l51b9,l5000
	dw l500a,l5028,l5014,l4fec
.l4fec equ $ + 6
	dw l4ff6,l501e,l5032,l5401
	dw #0000
.l4ff6 equ $ + 6
	dw l50e6,#0000,l503c,#0000
	dw #0000,l50e9,l5146,l5041
.l5000
	dw #0000,#0000,#0000,#0000
.l500a equ $ + 2
	dw #0000,#0000,#0045,l5100
.l5014 equ $ + 4
	dw #0000,l5083,#0000,#0048
.l501e equ $ + 6
	dw l5104,#0000,l50c5,l5401
	dw #0000,l5108,#0000,l50a4
.l5028
	dw l5401,#0000,l5117,#0000
.l5032 equ $ + 2
	dw l50a4,#0000
	dw #0748,l5126,#0000,l50c5
.l5043 equ $ + 7
.l5041 equ $ + 5
.l503c
	db #08,#0f,#01,#00,#ff,#02,#0f,#02
	db #0e,#02,#0d,#02,#0c,#02,#0b,#02
	db #0a,#02,#09,#02,#08,#02,#07,#02
	db #06,#02,#05,#02,#04,#02,#03,#02
	db #02,#02,#01,#01,#00,#ff,#01,#0f
	db #01,#0e,#01,#0d,#01,#0c,#01,#0b
	db #01,#0a,#01,#09,#01,#08,#01,#07
	db #01,#06,#01,#05,#01,#04,#01,#03
.l5083 equ $ + 7
	db #01,#02,#01,#01,#01,#00,#ff,#05
	db #0f,#05,#0e,#05,#0d,#05,#0c,#05
	db #0b,#05,#0a,#05,#09,#05,#08,#05
	db #07,#05,#06,#05,#05,#05,#04,#05
	db #03,#05,#02,#01,#01,#01,#00,#ff
.l50a6 equ $ + 2
.l50a4
	db #02,#0f,#02,#0e,#02,#0d,#02,#0c
	db #02,#0b,#02,#0a,#02,#09,#02,#08
	db #02,#07,#02,#06,#02,#05,#02,#04
	db #02,#03,#02,#02,#01,#01,#01,#00
.l50c7 equ $ + 3
.l50c5 equ $ + 1
	db #ff,#28,#0f,#28,#0e,#28,#0d,#28
	db #0c,#28,#0b,#28,#0a,#28,#09,#28
	db #08,#28,#07,#28,#06,#28,#05,#28
	db #04,#28,#03,#28,#02,#01,#01,#01
.l50ea equ $ + 6
.l50e9 equ $ + 5
.l50e6 equ $ + 2
	db #00,#ff,#fe,#81,#00,#fe,#81,#00
	db #30,#00,#f4,#00,#f4,#00,#f4,#00
	db #f4,#00,#24,#00,#f4,#00,#f4,#00
.l5100 equ $ + 4
	db #f4,#00,#81,#0a,#ea,#ff,#ff,#80
.l5108 equ $ + 4
.l5105 equ $ + 1
.l5104
	db #e6,#01,#01,#80,#e8,#03,#04,#05
	db #03,#04,#05,#fb,#fc,#fd,#fb,#fc
.l5118 equ $ + 4
.l5117 equ $ + 3
	db #fd,#81,#01,#e8,#04,#03,#05,#04
	db #03,#05,#fb,#fd,#fc,#fb,#fd,#fc
.l5126 equ $ + 2
	db #81,#01,#fe,#01,#01,#00,#80,#dc
	db #24,#24,#dc,#0c,#00,#0c,#00,#f4
	db #00,#f4,#00,#81,#04,#02,#ff,#ff
	db #00,#80,#f4,#00,#05,#04,#03,#f4
.l5147 equ $ + 3
.l5146 equ $ + 2
	db #81,#02,#30,#fe,#81,#01,#fe,#81
.l514d equ $ + 1
	db #00,#bf,#51,#c5,#51,#d3,#51
.l5159 equ $ + 6
.l5153
	dw l52b9,l52d3,l52ef,l5401
.l515f equ $ + 4
	dw l5423,l5447,l54cc,l54d0
.l5165 equ $ + 2
	dw l54d6,l54fe,l5502,l5508
.l5171 equ $ + 6
.l516b
	dw l553a,l553e,l5544,l54fe
.l5177 equ $ + 4
	dw l5502,l5508,l54cc,l54d0
.l517d equ $ + 2
	dw l54d6,l5576,l557a,l5580
.l5189 equ $ + 6
.l5183
	dw l55c0,l55c4,l55ca,l55fc
.l518f equ $ + 4
	dw l5602,l560a,l562f,l5633
	dw l5639
.l519b equ $ + 6
.l5195
	dw l5656,l565e,l5668,l56b3
.l51a1 equ $ + 4
	dw l56d1,l56f1,l5806,l580e
.l51a7 equ $ + 2
	dw l5818,l5895,l58b1,l58cf
.l51b3 equ $ + 6
.l51ad
	dw l5991,l59a3,l59b7,l5a2f
.l51b9 equ $ + 4
	dw l5a33,l5a39,l5a69,l5a83
.l51c1 equ $ + 4
.l51bf equ $ + 2
	dw l5a9f,l51f3,l5216,#0000
.l51c9 equ $ + 4
.l51c5
	dw l5b18,l523c,l526a,l5277
.l51d3 equ $ + 6
	dw l526a,l5283,#0000,l5b18
.l51d9 equ $ + 4
	dw l5287,l5291,l5287,l52a2
	dw l5287,l5291,l5287,l52a2
	dw l5287,l5291,l5287,l52a2
	dw #0000
.l51f3 equ $ + 4
	db #c0,#8f,#24,#ff,#f5,#ef,#61,#04
	db #61,#02,#c1,#81,#30,#c2,#3c,#c1
	db #2b,#c2,#3c,#60,#c1,#81,#30,#c2
	db #3c,#c1,#2b,#c2,#3c,#c1,#2d,#c2
.l5216 equ $ + 7
.l5214 equ $ + 5
	db #3c,#c1,#2f,#c2,#3c,#60,#ff,#61
	db #02,#c1,#81,#32,#c6,#3e,#c1,#39
	db #c6,#3e,#c1,#32,#c6,#3e,#c1,#39
	db #c6,#3e,#c1,#81,#2b,#c2,#43,#c1
	db #32,#c2,#43,#c1,#2b,#c2,#43,#c1
.l523c equ $ + 5
	db #32,#c2,#43,#60,#ff,#61,#02,#c3
	db #83,#4c,#82,#4c,#80,#4d,#81,#4c
	db #48,#43,#45,#c0,#81,#46,#c3,#81
.l5256 equ $ + 7
	db #46,#46,#48,#46,#45,#43,#41,#c0
	db #81,#4c,#c3,#81,#4c,#82,#4c,#80
	db #4d,#81,#4c,#48,#43,#45,#c3,#8f
.l526a equ $ + 3
	db #46,#60,#ff,#c3,#83,#4d,#82,#4d
	db #80,#4f,#81,#4d,#4c,#4a,#48,#ff
.l5277
	db #c3,#82,#47,#48,#81,#4a,#82,#43
.l5283 equ $ + 4
	db #45,#81,#47,#ff,#c3,#8f,#4f,#ff
.l5287
	db #c4,#81,#61,#04,#24,#c5,#24,#c4
.l5291 equ $ + 2
	db #60,#ff,#c4,#81,#24,#c5,#80,#24
	db #24,#61,#03,#c4,#81,#24,#c5,#81
.l52a2 equ $ + 3
.l52a0 equ $ + 1
	db #24,#60,#ff,#c4,#81,#24,#c5,#80
	db #24,#24,#c4,#81,#24,#c5,#24,#c4
	db #24,#c5,#80,#24,#24,#24,#24,#24
.l52b9 equ $ + 2
	db #24,#ff,#0b,#53,#1f,#53,#31,#53
	db #39,#53,#0b,#53,#1f,#53,#31,#53
	db #39,#53,#41,#53,#65,#53,#41,#53
.l52d3 equ $ + 4
	db #65,#53,#00,#00,#18,#5b,#77,#53
	db #77,#53,#8a,#53,#93,#53,#77,#53
	db #77,#53,#8a,#53,#93,#53,#a0,#53
	db #ae,#53,#a0,#53,#bb,#53,#00,#00
.l52ef
	db #18,#5b,#c3,#53,#d5,#53,#c3,#53
	db #ea,#53,#c3,#53,#d5,#53,#c3,#53
	db #ea,#53,#c3,#53,#d5,#53,#c3,#53
	db #ea,#53,#00,#00,#f5,#ef,#c1,#81
	db #30,#c2,#3c,#c1,#2b,#c2,#3c,#c1
	db #30,#c2,#3c,#c1,#2b,#c2,#3c,#ff
	db #c1,#81,#30,#c2,#3c,#c1,#2b,#c2
	db #3c,#c1,#2d,#c2,#3c,#c1,#2f,#c2
	db #3c,#ff,#64,#07,#62,#0b,#53,#64
	db #00,#ff,#64,#07,#62,#1f,#53,#64
	db #00,#ff,#c1,#81,#2d,#c6,#39,#c1
	db #34,#c6,#39,#c1,#2d,#c6,#39,#c1
	db #34,#c6,#39,#ff,#c1,#81,#2b,#c2
	db #43,#c1,#32,#c2,#43,#c1,#2b,#c2
	db #43,#c1,#32,#c2,#43,#ff,#c1,#81
	db #29,#c2,#41,#c1,#30,#c2,#41,#c1
	db #2b,#c2,#43,#c1,#32,#c2,#43,#ff
	db #c3,#80,#48,#47,#46,#45,#44,#43
	db #42,#41,#40,#3e,#3d,#3c,#3b,#3a
	db #39,#38,#ff,#81,#43,#83,#43,#81
	db #45,#87,#43,#ff,#81,#4a,#83,#4a
	db #81,#48,#87,#47,#ff,#c3,#8f,#52
	db #ff,#c3,#81,#4c,#80,#4c,#4d,#81
	db #4c,#4b,#4a,#49,#48,#47,#ff,#81
	db #45,#80,#45,#48,#81,#4d,#48,#4a
	db #49,#48,#47,#ff,#c3,#8f,#4f,#ff
	db #c0,#8f,#18,#ff,#c4,#81,#24,#c5
	db #24,#c4,#24,#c5,#24,#c4,#24,#c5
	db #24,#c4,#24,#c5,#24,#ff,#c4,#81
	db #24,#c5,#80,#24,#24,#c4,#81,#24
	db #c5,#24,#c4,#24,#c5,#24,#c4,#24
	db #c5,#24,#ff,#c4,#81,#24,#c5,#80
	db #24,#24,#c4,#81,#24,#c5,#24,#c4
	db #24,#c5,#80,#24,#24,#24,#24,#24
	db #24,#ff
.l5401
	dw l545b,l545b,l545b,l544b
	dw l544b,l544b,l544b,l545b
	dw l545b,l545b,l545b,l5453
	dw l5453,l545b,l544b,l545b
	dw #0000
.l5423
	dw l5b18,l5469,l5471,l5477
	dw l547f,l5482,l5489,l548f
	dw l5497,l5469,l5471,l5477
	dw l549a,l549d,l5471,l5471
.l5447 equ $ + 4
	dw l5471,#0000,l54ba,#0000
.l544b
	db #64,#07,#62,#5b,#54,#64,#00,#ff
.l5453
	db #64,#05,#62,#5b,#54,#64,#00,#ff
.l545b
	db #f5,#ef,#c1,#81,#30,#c2,#3c,#3c
.l5469 equ $ + 6
	db #c1,#2b,#c2,#3c,#3c,#ff,#c3,#85
.l5471 equ $ + 6
	db #40,#81,#3f,#40,#43,#ff,#87,#48
.l5477 equ $ + 4
	db #81,#47,#48,#ff,#81,#4a,#48,#47
.l5482 equ $ + 7
.l547f equ $ + 4
	db #48,#40,#43,#ff,#8b,#47,#ff,#85
.l5489 equ $ + 6
	db #41,#81,#40,#41,#45,#ff,#87,#47
.l548f equ $ + 4
	db #81,#46,#47,#ff,#81,#48,#47,#45
.l549a equ $ + 7
.l5497 equ $ + 4
	db #47,#41,#47,#ff,#8b,#40,#ff,#8b
.l549d equ $ + 2
	db #45,#ff,#85,#45,#81,#41,#43,#45
	db #ff,#85,#43,#81,#43,#41,#40,#ff
	db #81,#3e,#43,#47,#4a,#47,#43,#ff
	db #81,#48,#48,#48,#85,#48,#ff
.l54ba
	db #ef,#81,#61,#10,#c4,#24,#c5,#24
	db #c5,#24,#c4,#24,#c5,#24,#c5,#24
.l54d0 equ $ + 6
.l54cc equ $ + 2
	db #60,#ff,#dc,#54,#ff,#ff,#18,#5b
.l54d6 equ $ + 4
	db #ec,#54,#ff,#ff,#18,#5b,#f0,#54
	db #ff,#ff,#f6,#ef,#c7,#82,#30,#80
	db #30,#30,#30,#81,#34,#30,#34,#8f
	db #37,#ff,#c0,#9b,#24,#ff,#c7,#82
	db #34,#80,#34,#34,#34,#81,#37,#34
.l54fe equ $ + 4
	db #37,#8f,#3c,#ff,#0e,#55,#ff,#ff
.l5508 equ $ + 6
.l5502
	db #18,#5b,#1e,#55,#ff,#ff,#18,#5b
	db #2c,#55,#ff,#ff,#f6,#ef,#c7,#82
	db #30,#80,#30,#30,#30,#81,#34,#30
	db #34,#8f,#37,#ff,#c7,#82,#2d,#80
	db #2d,#2d,#2d,#81,#30,#2d,#30,#8f
	db #30,#ff,#c7,#82,#34,#80,#34,#34
	db #34,#81,#37,#34,#37,#8f,#3c,#ff
.l553e equ $ + 4
.l553a
	db #4a,#55,#ff,#ff,#18,#5b,#5a,#55
.l5544 equ $ + 2
	db #ff,#ff,#18,#5b,#68,#55,#ff,#ff
	db #f6,#ef,#c7,#82,#24,#80,#24,#26
	db #28,#81,#29,#2d,#2f,#8f,#30,#ff
	db #c7,#82,#34,#80,#34,#35,#37,#81
	db #39,#3c,#3b,#8f,#3c,#ff,#c7,#82
	db #2b,#80,#2b,#2b,#2b,#81,#2d,#2d
.l5576 equ $ + 4
	db #2f,#8f,#30,#ff,#86,#55,#ff,#ff
.l5580 equ $ + 6
.l557a
	db #18,#5b,#a0,#55,#ff,#ff,#18,#5b
	db #a8,#55,#ff,#ff,#f7,#ef,#c7,#82
	db #2d,#81,#2d,#80,#2d,#82,#2d,#81
	db #30,#80,#2f,#81,#2f,#80,#2d,#81
	db #2d,#80,#2c,#8f,#2d,#ff,#c7,#8b
	db #21,#85,#1c,#8f,#21,#ff,#c7,#82
	db #28,#81,#28,#80,#28,#82,#28,#81
	db #28,#80,#28,#81,#26,#80,#26,#81
.l55c0 equ $ + 6
	db #26,#80,#26,#8f,#28,#ff,#d0,#55
.l55c4 equ $ + 2
	db #ff,#ff,#18,#5b,#e0,#55,#ff,#ff
.l55ca
	db #18,#5b,#ee,#55,#ff,#ff,#f6,#ef
	db #c7,#82,#30,#80,#30,#2c,#30,#81
	db #32,#3a,#32,#8f,#34,#ff,#c7,#82
	db #2c,#80,#2c,#2c,#2c,#81,#2e,#2e
	db #2e,#8f,#30,#ff,#c7,#82,#27,#80
	db #27,#27,#27,#81,#29,#29,#29,#8f
.l55fc equ $ + 2
	db #2b,#ff,#12,#56,#12,#56,#00,#00
.l5602
	db #18,#5b,#18,#56,#18,#56,#00,#00
.l560a
	db #18,#5b,#1c,#56,#1c,#56,#00,#00
	db #f4,#ef,#c0,#8f,#24,#ff,#c0,#8f
	db #24,#ff,#c5,#80,#21,#21,#21,#24
	db #21,#21,#21,#21,#21,#24,#21,#21
.l562f equ $ + 5
	db #21,#21,#24,#21,#ff,#3f,#56,#00
.l5639 equ $ + 7
.l5633 equ $ + 1
	db #00,#18,#5b,#48,#56,#00,#00,#18
	db #5b,#4f,#56,#00,#00,#f6,#ef,#c7
	db #83,#30,#2b,#29,#28,#ff,#c7,#83
	db #24,#1f,#1d,#1c,#ff,#c7,#83,#18
.l5656 equ $ + 4
	db #13,#11,#10,#ff,#7f,#56,#98,#56
.l565e equ $ + 4
	db #72,#56,#ff,#ff,#18,#5b,#98,#56
.l5668 equ $ + 6
	db #98,#56,#8b,#56,#ff,#ff,#18,#5b
	db #a9,#56,#a9,#56,#9c,#56,#ff,#ff
	db #64,#01,#62,#7f,#56,#64,#02,#62
	db #7f,#56,#64,#00,#ff,#f4,#ef,#c7
	db #81,#30,#34,#37,#3c,#37,#34,#30
	db #ff,#64,#01,#62,#98,#56,#64,#02
	db #62,#98,#56,#64,#00,#ff,#c7,#8d
	db #30,#ff,#64,#01,#62,#a9,#56,#64
	db #02,#62,#a9,#56,#64,#00,#ff,#c2
	db #81,#3c,#3c,#3c,#3c,#3c,#3c,#3c
.l56b3 equ $ + 1
	db #ff,#03,#57,#1f,#57,#03,#57,#1f
	db #57,#39,#57,#53,#57,#fb,#56,#17
	db #57,#fb,#56,#17,#57,#31,#57,#4b
.l56d1 equ $ + 7
	db #57,#d4,#57,#d4,#57,#00,#00,#18
	db #5b,#6d,#57,#85,#57,#6d,#57,#9c
	db #57,#b3,#57,#cc,#57,#65,#57,#7d
	db #57,#65,#57,#94,#57,#ab,#57,#c4
.l56f1 equ $ + 7
	db #57,#d4,#57,#d4,#57,#00,#00,#18
	db #5b,#d8,#57,#ed,#57,#ed,#57,#00
	db #00,#64,#fb,#62,#03,#57,#64,#00
	db #ff,#f7,#ef,#c1,#81,#2d,#c6,#39
	db #c1,#28,#c6,#39,#c1,#2d,#c6,#39
	db #c1,#28,#c6,#39,#ff,#64,#fb,#62
	db #1f,#57,#64,#00,#ff,#c1,#81,#2b
	db #c2,#43,#c1,#26,#c2,#43,#c1,#2b
	db #c2,#43,#c1,#26,#c2,#43,#ff,#64
	db #fb,#62,#39,#57,#64,#00,#ff,#c1
	db #81,#29,#c2,#41,#c1,#24,#c2,#41
	db #c1,#24,#c2,#3c,#c1,#2b,#c2,#3c
	db #ff,#64,#fb,#62,#53,#57,#64,#00
	db #ff,#c1,#81,#32,#c6,#3e,#c1,#2d
	db #c6,#3e,#c1,#2b,#c2,#43,#c1,#26
	db #c2,#43,#ff,#64,#fb,#62,#6d,#57
	db #64,#00,#ff,#c3,#81,#40,#3f,#3e
	db #3d,#3c,#80,#40,#81,#45,#80,#40
	db #81,#45,#ff,#64,#fb,#62,#85,#57
	db #64,#00,#ff,#c3,#83,#43,#3e,#81
	db #3c,#80,#3e,#81,#3c,#80,#3c,#81
	db #3b,#ff,#64,#fb,#62,#9c,#57,#64
	db #00,#ff,#c3,#83,#43,#45,#81,#47
	db #80,#45,#81,#47,#80,#47,#81,#43
	db #ff,#64,#fb,#62,#b3,#57,#64,#00
	db #ff,#c3,#81,#45,#80,#45,#43,#81
	db #41,#45,#43,#80,#43,#41,#81,#40
	db #43,#ff,#64,#fb,#62,#cc,#57,#64
	db #00,#ff,#81,#41,#40,#3e,#3c,#87
	db #43,#ff,#c0,#8f,#24,#ff,#61,#0c
	db #c4,#81,#30,#c5,#24,#c4,#30,#c5
	db #24,#c4,#30,#c5,#24,#c4,#30,#c5
	db #24,#60,#ff,#c4,#81,#30,#c5,#80
	db #24,#24,#c4,#81,#30,#c5,#24,#c4
	db #80,#30,#30,#c5,#24,#24,#c4,#81
.l5806 equ $ + 4
	db #30,#c5,#24,#ff,#2f,#58,#2f,#58
.l580e equ $ + 4
	db #22,#58,#00,#00,#18,#5b,#5f,#58
.l5818 equ $ + 6
	db #5f,#58,#52,#58,#00,#00,#18,#5b
	db #83,#58,#83,#58,#76,#58,#00,#00
	db #64,#ff,#62,#2f,#58,#64,#fe,#62
	db #43,#58,#64,#00,#ff,#f5,#ef,#c1
	db #81,#21,#c6,#39,#c1,#28,#c6,#39
	db #c1,#2d,#c6,#39,#c1,#28,#c6,#39
	db #ff,#c1,#81,#1f,#c2,#37,#26,#c2
	db #37,#1f,#c2,#37,#26,#c2,#37,#ff
	db #64,#ff,#62,#5f,#58,#64,#fe,#62
	db #6f,#58,#64,#00,#ff,#c3,#81,#4c
	db #4b,#4a,#49,#48,#80,#4c,#81,#51
	db #80,#4c,#81,#51,#ff,#c3,#83,#4f
	db #4a,#48,#47,#ff,#64,#ff,#62,#83
	db #58,#64,#fe,#62,#83,#58,#64,#00
	db #ff,#c4,#81,#30,#c5,#30,#c4,#30
	db #c5,#30,#c4,#30,#c5,#30,#c4,#30
.l5895 equ $ + 3
	db #c5,#30,#ff,#ed,#58,#ed,#58,#d5
	db #58,#d5,#58,#ed,#58,#ed,#58,#d5
	db #58,#d5,#58,#dd,#58,#01,#59,#dd
.l58b1 equ $ + 7
	db #58,#01,#59,#e5,#58,#00,#00,#18
	db #5b,#13,#59,#22,#59,#2e,#59,#34
	db #59,#13,#59,#22,#59,#2e,#59,#3a
	db #59,#4d,#59,#57,#59,#4d,#59,#63
.l58cf equ $ + 5
	db #59,#6e,#59,#00,#00,#18,#5b,#79
	db #59,#00,#00,#64,#fe,#62,#ed,#58
	db #64,#00,#ff,#64,#05,#62,#ed,#58
	db #64,#00,#ff,#64,#07,#62,#ed,#58
	db #64,#00,#ff,#f5,#ef,#c1,#81,#30
	db #c2,#3c,#c1,#2b,#c2,#3c,#c1,#30
	db #c2,#3c,#c1,#2b,#c2,#3c,#ff,#c1
	db #81,#32,#c6,#32,#c1,#2d,#c6,#32
	db #c1,#32,#c6,#32,#c1,#2d,#c6,#32
	db #ff,#c3,#81,#30,#2b,#c0,#30,#c3
	db #34,#30,#c0,#30,#c3,#37,#34,#ff
	db #c0,#81,#30,#c3,#3c,#3e,#40,#41
	db #40,#3e,#3c,#ff,#c3,#85,#3e,#89
	db #3a,#ff,#c3,#85,#37,#89,#35,#ff
	db #c3,#80,#37,#35,#32,#37,#35,#32
	db #37,#35,#32,#37,#35,#32,#37,#35
	db #32,#39,#ff,#c3,#83,#3a,#81,#39
	db #85,#35,#83,#30,#ff,#c3,#81,#32
	db #35,#35,#32,#83,#37,#81,#35,#32
	db #ff,#c3,#81,#32,#35,#35,#37,#37
	db #39,#39,#3b,#ff,#c3,#81,#3b,#3a
	db #39,#38,#37,#36,#35,#32,#ff,#61
	db #0e,#c4,#81,#30,#c5,#80,#24,#24
	db #c4,#81,#30,#c5,#24,#c4,#30,#c5
.l5991 equ $ + 7
	db #24,#c4,#30,#c5,#24,#60,#ff,#d3
	db #59,#d3,#59,#d3,#59,#d3,#59,#cb
	db #59,#cb,#59,#d3,#59,#d3,#59,#00
.l59a3 equ $ + 1
	db #00,#18,#5b,#d9,#59,#e5,#59,#d9
	db #59,#e5,#59,#eb,#59,#f7,#59,#ff
.l59b7 equ $ + 5
	db #59,#0b,#5a,#00,#00,#18,#5b,#17
	db #5a,#23,#5a,#17,#5a,#23,#5a,#17
	db #5a,#23,#5a,#17,#5a,#23,#5a,#00
	db #00,#64,#02,#62,#d3,#59,#64,#00
	db #ff,#f5,#ef,#c7,#8f,#18,#ff,#c0
	db #81,#30,#c7,#37,#3c,#3e,#40,#3e
	db #3c,#3e,#ff,#83,#40,#3c,#87,#3c
	db #ff,#c0,#81,#30,#c7,#39,#3e,#40
	db #3e,#39,#35,#39,#ff,#81,#3e,#39
	db #35,#39,#87,#3e,#ff,#c0,#81,#30
	db #c7,#37,#3c,#3e,#3c,#37,#34,#37
	db #ff,#81,#3c,#37,#34,#37,#87,#3c
	db #ff,#c7,#8f,#30,#ff,#c5,#80,#24
	db #24,#81,#0c,#c4,#83,#30,#30,#30
	db #ff,#c5,#80,#24,#24,#81,#0c,#c4
.l5a2f equ $ + 5
	db #83,#30,#30,#30,#ff,#3f,#5a,#00
.l5a39 equ $ + 7
.l5a33 equ $ + 1
	db #00,#18,#5b,#4f,#5a,#00,#00,#18
	db #5b,#60,#5a,#00,#00,#f4,#ef,#c7
	db #83,#30,#81,#34,#32,#83,#34,#30
	db #35,#37,#87,#30,#ff,#c7,#83,#34
	db #81,#3c,#3b,#83,#3c,#37,#81,#3c
	db #3b,#3c,#3b,#87,#3c,#ff,#c7,#8f
.l5a69 equ $ + 7
	db #24,#83,#29,#2b,#87,#24,#ff,#a5
	db #5a,#bb,#5a,#a5,#5a,#bb,#5a,#c3
	db #5a,#bb,#5a,#a5,#5a,#bb,#5a,#a5
	db #5a,#bb,#5a,#c3,#5a,#bb,#5a,#00
.l5a83 equ $ + 1
	db #00,#18,#5b,#d3,#5a,#e5,#5a,#d3
	db #5a,#e5,#5a,#f0,#5a,#e5,#5a,#d3
	db #5a,#e5,#5a,#d3,#5a,#e5,#5a,#cb
.l5a9f equ $ + 5
	db #5a,#e5,#5a,#00,#00,#18,#5b,#01
	db #5b,#00,#00,#f5,#ef,#64,#0c,#c1
	db #81,#35,#c2,#41,#c1,#30,#c2,#41
	db #c1,#35,#c2,#41,#c1,#30,#c2,#41
	db #ff,#64,#11,#62,#a5,#5a,#64,#0c
	db #ff,#64,#13,#62,#a5,#5a,#64,#0c
	db #ff,#64,#07,#62,#d3,#5a,#64,#0c
	db #ff,#64,#0c,#c3,#81,#38,#39,#3c
	db #38,#39,#80,#3c,#81,#38,#80,#39
	db #81,#3c,#ff,#c3,#81,#38,#38,#80
	db #37,#37,#37,#88,#35,#ff,#c3,#81
	db #3a,#3a,#39,#39,#80,#37,#37,#37
	db #81,#39,#80,#37,#81,#39,#ff,#64
	db #0c,#61,#0c,#c4,#81,#24,#c5,#24
	db #c4,#24,#c5,#24,#c4,#24,#c5,#24
.l5b18 equ $ + 6
	db #c4,#24,#c5,#24,#60,#ff,#ef,#64
.l5b1c equ $ + 2
	db #00,#ff,#98,#5b,#db,#5b,#75,#5c
	db #c1,#5c,#0d,#5d,#59,#5d,#a5,#5d
	db #c0,#5d,#e7,#5d,#f1,#5d,#27,#5e
	db #6b,#5e,#8e,#5e,#c2,#5e,#0e,#5f
	db #48,#5f,#71,#5f,#7b,#5f,#85,#5f
	db #8f,#5f,#c5,#5f,#98,#5b,#fb,#5f
	db #05,#60,#51,#60,#a1,#60,#ed,#60
	db #5c,#61,#f1,#5d,#c0,#5d,#85,#61
	db #8f,#5f,#51,#60,#ee,#61,#a2,#61
	db #0e,#5f,#5d,#62,#7c,#62,#a5,#62
	db #98,#5b,#be,#62,#d8,#62,#c0,#5d
	db #a2,#61,#71,#5f,#c5,#5f,#71,#5f
	db #f1,#5d,#71,#5f,#71,#5f,#29,#63
	db #8d,#63,#f1,#63,#c0,#5d,#c1,#5c
	db #98,#5b,#2a,#64,#43,#64,#75,#5c
	db #f1,#5d,#0e,#5f,#a0,#64,#01,#01
	db #14,#00,#a2,#5b,#00,#00,#ba,#5b
	db #80,#0c,#81,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#fe
	db #01,#0f,#01,#0e,#01,#0d,#01,#0c
	db #01,#0b,#01,#0a,#01,#09,#01,#08
	db #01,#07,#01,#06,#01,#05,#01,#04
	db #01,#03,#01,#02,#01,#01,#01,#00
	db #ff,#01,#01,#28,#00,#00,#00,#e5
	db #5b,#54,#5c,#80,#00,#82,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#fe,#0a,#0f,#0a,#0e,#0a,#0d
	db #0a,#0c,#0a,#0a,#0a,#0a,#0a,#09
	db #0a,#08,#0a,#07,#0a,#06,#0a,#05
	db #0a,#04,#0a,#03,#0a,#02,#0a,#0a
	db #01,#00,#ff,#01,#01,#14,#00,#00
	db #00,#7f,#5c,#a0,#5c,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#0e,#80
	db #0e,#80,#0e,#80,#0e,#80,#0e,#80
	db #0e,#80,#0e,#80,#0e,#80,#0e,#80
	db #0e,#80,#0e,#80,#0e,#fe,#01,#0f
	db #01,#0e,#01,#0d,#01,#0c,#01,#0b
	db #01,#0a,#01,#09,#01,#08,#01,#07
	db #01,#06,#01,#05,#01,#04,#01,#03
	db #01,#02,#01,#01,#01,#00,#ff,#01
	db #01,#14,#00,#00,#00,#cb,#5c,#ec
	db #5c,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#fe,#01,#0f,#01,#0e,#01,#0d
	db #01,#0c,#01,#0b,#01,#0a,#01,#09
	db #01,#08,#01,#07,#01,#06,#01,#05
	db #01,#04,#01,#03,#01,#02,#01,#01
	db #01,#00,#ff,#01,#01,#32,#00,#17
	db #5d,#00,#00,#38,#5d,#80,#24,#80
	db #30,#80,#30,#80,#30,#80,#30,#80
	db #30,#80,#30,#80,#30,#80,#30,#80
	db #30,#80,#30,#80,#30,#80,#30,#80
	db #30,#80,#30,#80,#30,#fe,#01,#0f
	db #01,#0e,#01,#0d,#01,#0c,#01,#0b
	db #01,#0a,#01,#09,#01,#08,#01,#07
	db #01,#06,#01,#05,#01,#04,#01,#03
	db #01,#02,#01,#01,#03,#00,#ff,#01
	db #01,#32,#00,#00,#00,#63,#5d,#96
	db #5d,#80,#00,#81,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#81,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#81,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#fe,#01,#05,#01,#09
	db #01,#0d,#01,#0f,#01,#0f,#01,#0f
	db #01,#00,#ff,#01,#03,#28,#00,#af
	db #5d,#e5,#5b,#54,#5c,#80,#48,#80
	db #3c,#80,#30,#80,#24,#80,#18,#80
	db #0c,#80,#00,#80,#00,#fe,#01,#04
	db #14,#00,#ca,#5d,#00,#00,#e2,#5d
	db #80,#48,#82,#02,#02,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#fe
	db #14,#0f,#01,#00,#ff,#01,#03,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #04,#14,#00,#00,#00,#fb,#5d,#14
	db #5e,#80,#3c,#82,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#84,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#fe,#01,#0f,#01,#0d,#01,#0b
	db #01,#09,#01,#07,#01,#05,#01,#03
	db #01,#01,#01,#00,#ff,#01,#01,#14
	db #00,#31,#5e,#00,#00,#4a,#5e,#80
	db #24,#82,#01,#01,#01,#01,#01,#01
	db #01,#01,#81,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#fe
	db #01,#0f,#01,#0e,#01,#0d,#01,#0c
	db #01,#0b,#01,#0a,#01,#09,#01,#08
	db #01,#07,#01,#06,#01,#05,#01,#04
	db #01,#03,#01,#02,#01,#01,#01,#00
	db #ff,#01,#01,#14,#00,#75,#5e,#00
	db #00,#4a,#5e,#80,#18,#82,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#fe,#01,#01,#14,#00
	db #98,#5e,#00,#00,#bd,#5e,#80,#3c
	db #84,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#fe,#14,#0f,#01,#00,#ff
	db #01,#01,#14,#00,#00,#00,#cc,#5e
	db #ed,#5e,#80,#00,#80,#00,#80,#00
	db #80,#00,#80,#00,#80,#00,#80,#00
	db #80,#00,#80,#00,#80,#00,#80,#00
	db #80,#00,#80,#00,#80,#00,#80,#00
	db #80,#00,#fe,#01,#0f,#01,#0e,#01
	db #0d,#01,#0c,#01,#0b,#01,#0a,#01
	db #09,#01,#08,#01,#07,#01,#06,#01
	db #05,#01,#04,#01,#03,#01,#02,#01
	db #01,#01,#00,#ff,#01,#01,#32,#00
	db #18,#5f,#00,#00,#40,#5f,#80,#30
	db #82,#0c,#0c,#0c,#0c,#0c,#81,#0c
	db #0c,#0c,#0c,#80,#2b,#82,#0c,#0c
	db #0c,#0c,#0c,#81,#0c,#0c,#0c,#0c
	db #80,#24,#82,#0c,#0c,#0c,#0c,#81
	db #06,#06,#06,#06,#06,#fe,#32,#0f
	db #01,#00,#f5,#03,#00,#ff,#01,#01
	db #32,#00,#52,#5f,#00,#00,#62,#5f
	db #80,#3c,#81,#01,#01,#01,#01,#01
	db #01,#82,#01,#01,#01,#01,#01,#fe
	db #01,#05,#01,#09,#01,#0d,#01,#0f
	db #01,#0f,#01,#0f,#01,#00,#ff,#01
	db #03,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#04,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#03,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#04,#14
	db #00,#00,#00,#99,#5f,#b2,#5f,#80
	db #3c,#82,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#84,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#fe
	db #01,#0f,#01,#0d,#01,#0b,#01,#09
	db #01,#07,#01,#05,#01,#03,#01,#01
	db #01,#00,#ff,#01,#04,#14,#00,#00
	db #00,#cf,#5f,#b2,#5f,#80,#24,#82
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#84,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#fe,#01,#0f
	db #01,#0d,#01,#0b,#01,#09,#01,#07
	db #01,#05,#01,#03,#01,#01,#01,#00
	db #ff,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#01,#14,#00,#00
	db #00,#0f,#60,#4c,#60,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#fe,#28,#07,#01,#00,#ff,#01
	db #01,#14,#00,#00,#00,#5b,#60,#80
	db #60,#80,#3c,#84,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#fe,#01,#0f
	db #01,#0e,#01,#0d,#01,#0c,#01,#0b
	db #01,#0a,#01,#09,#01,#08,#01,#07
	db #01,#06,#01,#05,#01,#04,#01,#03
	db #01,#02,#01,#01,#01,#00,#ff,#01
	db #01,#14,#00,#00,#00,#ab,#60,#cc
	db #60,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#fe,#01,#0f,#01,#0e,#01,#0d
	db #01,#0c,#01,#0b,#01,#0a,#01,#09
	db #01,#08,#01,#07,#01,#06,#01,#05
	db #01,#04,#01,#03,#01,#02,#01,#01
	db #01,#00,#ff,#01,#01,#32,#00,#f7
	db #60,#00,#00,#3b,#61,#80,#48,#84
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #fe,#05,#0f,#05,#0e,#05,#0d,#05
	db #0c,#05,#0b,#05,#0a,#05,#09,#05
	db #08,#05,#07,#05,#06,#05,#05,#05
	db #04,#05,#03,#05,#02,#05,#01,#01
	db #00,#ff,#01,#01,#32,#00,#00,#00
	db #66,#61,#76,#61,#80,#3c,#81,#01
	db #01,#01,#01,#01,#01,#82,#01,#01
	db #01,#01,#01,#fe,#01,#05,#01,#09
	db #01,#0d,#01,#0f,#01,#0f,#01,#0f
	db #01,#00,#ff,#01,#01,#14,#00,#8f
	db #61,#00,#00,#9d,#61,#80,#30,#83
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#fe,#0a,#0f,#01,#00,#ff
	db #01,#01,#14,#00,#00,#00,#ac,#61
	db #cd,#61,#80,#00,#80,#00,#80,#00
	db #80,#00,#80,#00,#80,#00,#80,#00
	db #80,#00,#80,#00,#80,#00,#80,#00
	db #80,#00,#80,#00,#80,#00,#80,#00
	db #80,#00,#fe,#01,#0f,#01,#0e,#01
	db #0d,#01,#0c,#01,#0b,#01,#0a,#01
	db #09,#01,#08,#01,#07,#01,#06,#01
	db #05,#01,#04,#01,#03,#01,#02,#01
	db #01,#01,#00,#ff,#01,#01,#1e,#00
	db #f8,#61,#00,#00,#3c,#62,#80,#48
	db #84,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#fe,#05,#0f,#05,#0e,#05,#0d
	db #05,#0c,#05,#0b,#05,#0a,#05,#09
	db #05,#08,#05,#07,#05,#06,#05,#05
	db #05,#04,#05,#03,#05,#02,#05,#01
	db #01,#00,#ff,#01,#01,#1e,#00,#67
	db #62,#00,#00,#77,#62,#80,#3c,#81
	db #01,#01,#01,#01,#01,#01,#82,#01
	db #01,#01,#01,#01,#fe,#14,#0f,#01
	db #00,#ff,#01,#01,#14,#00,#86,#62
	db #00,#00,#a0,#62,#80,#43,#83,#0a
	db #0a,#0a,#0a,#84,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#fe,#14,#0f
	db #01,#00,#ff,#01,#01,#14,#00,#af
	db #62,#00,#00,#b9,#62,#80,#3c,#82
	db #01,#01,#01,#01,#01,#01,#fe,#05
	db #0f,#01,#00,#ff,#01,#01,#14,#00
	db #c8,#62,#00,#00,#d3,#62,#80,#18
	db #81,#07,#07,#07,#82,#07,#07,#07
	db #fe,#14,#0f,#01,#00,#ff,#01,#01
	db #50,#00,#e2,#62,#00,#00,#24,#63
	db #80,#00,#83,#78,#78,#78,#78,#78
	db #78,#78,#78,#78,#78,#78,#78,#83
	db #2d,#84,#2d,#83,#2d,#84,#2d,#83
	db #2d,#84,#2d,#83,#2d,#84,#2d,#83
	db #2d,#84,#2d,#83,#2d,#84,#2d,#83
	db #2d,#84,#2d,#83,#2d,#84,#2d,#83
	db #2d,#84,#2d,#84,#28,#28,#28,#28
	db #28,#28,#28,#28,#28,#28,#28,#28
	db #28,#fe,#96,#0f,#01,#00,#ff,#01
	db #01,#14,#00,#33,#63,#00,#00,#6c
	db #63,#80,#30,#80,#30,#80,#30,#80
	db #30,#80,#3c,#80,#3c,#80,#3c,#80
	db #3c,#80,#3c,#80,#3c,#80,#3c,#80
	db #3c,#80,#3c,#80,#3c,#80,#3c,#80
	db #3c,#80,#3c,#80,#3c,#80,#3c,#80
	db #3c,#80,#3c,#80,#3c,#80,#3c,#80
	db #3c,#80,#3c,#80,#3c,#80,#3c,#80
	db #3c,#fe,#01,#0f,#01,#0e,#01,#0d
	db #01,#0c,#01,#0b,#01,#0a,#01,#09
	db #01,#08,#01,#07,#01,#06,#01,#05
	db #01,#04,#01,#03,#01,#02,#01,#01
	db #01,#00,#ff,#01,#01,#1e,#00,#97
	db #63,#00,#00,#d0,#63,#80,#30,#80
	db #2f,#80,#2e,#80,#2d,#80,#2c,#80
	db #2b,#80,#2a,#80,#29,#80,#28,#80
	db #34,#80,#33,#80,#32,#80,#31,#80
	db #2b,#80,#2c,#80,#2d,#80,#2e,#80
	db #2f,#80,#3c,#80,#3c,#80,#48,#80
	db #43,#80,#42,#80,#41,#80,#3c,#80
	db #3b,#80,#3a,#80,#39,#fe,#01,#0f
	db #01,#0e,#01,#0d,#01,#0c,#01,#0b
	db #01,#0a,#01,#09,#01,#08,#01,#09
	db #01,#0a,#01,#0b,#01,#0c,#01,#0d
	db #01,#0e,#01,#0f,#01,#00,#ff,#01
	db #01,#0f,#00,#00,#00,#fb,#63,#0e
	db #64,#80,#00,#80,#18,#80,#30,#80
	db #48,#80,#54,#80,#54,#80,#54,#80
	db #54,#80,#54,#fe,#01,#03,#01,#07
	db #01,#09,#01,#0c,#01,#0f,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#fe
	db #01,#01,#1e,#00,#34,#64,#00,#00
	db #3e,#64,#80,#18,#82,#01,#01,#01
	db #82,#01,#01,#fe,#14,#0f,#01,#00
	db #ff,#01,#01,#14,#00,#00,#00,#4d
	db #64,#66,#64,#80,#2b,#82,#02,#02
	db #02,#02,#02,#02,#81,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#fe,#01,#0f,#01,#0e
	db #01,#0d,#01,#0c,#01,#0b,#01,#0a
	db #01,#09,#01,#08,#01,#07,#01,#06
	db #01,#05,#01,#04,#01,#03,#01,#02
	db #01,#01,#01,#00,#ff,#01,#01,#14
	db #00,#91,#64,#00,#00,#9b,#64,#80
	db #3c,#82,#01,#01,#01,#01,#01,#01
	db #fe,#05,#0f,#01,#00,#ff,#01,#01
	db #28,#00,#00,#00,#aa,#64,#dd,#64
	db #80,#18,#81,#04,#82,#04,#81,#04
	db #82,#04,#81,#04,#82,#04,#81,#04
	db #82,#04,#81,#04,#82,#04,#81,#04
	db #82,#04,#81,#04,#82,#04,#81,#04
	db #82,#04,#81,#04,#82,#04,#81,#04
	db #82,#04,#81,#04,#82,#04,#81,#04
	db #82,#04,#fe,#28,#0f,#01,#00,#ff
	db #00,#00
table
	db &00,&01,&ff
;
.play_music
;
	ld hl,table		; added by Megachur
	ld a,(hl)
	inc hl
	cp &ff
	jp nz,notff
	ld hl,table
	ld a,(hl)		; added by Megachur
	jp notff
;
.music_info
	db "Fiendish Freddy's Big Top O' Fun (1990)(Mindscape)(Imagitec Design)",0
	db "",0

	read "music_end.asm"
