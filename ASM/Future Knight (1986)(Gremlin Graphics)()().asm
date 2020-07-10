; Music of Future Knight (1986)(Gremlin Graphics)()()
; Ripped by Megachur the 18/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FUTUREKN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #4a6d

	read "music_header.asm"

	ld a,h
	rrca
	rrca
	rrca
	and #e3
	ld h,a
	add hl,hl
	rrca
	rrca
	or #c0
	or h
	ld h,a
	ret
.l4a7c
	ld a,h
	rr h
	rr h
	rr h
	add hl,hl
	add hl,hl
	add hl,hl
	rra
	rr l
	rra
	rr l
	rra
	rr l
	add hl,hl
	ld a,h
	and #1f
	or #a0
	ld h,a
	ret
	push hl
	ld h,b
	ld l,c
	call l4a7c
	ld c,l
	ld b,h
	pop hl
	ret
.l4aa1
	push bc
	push af
	ld b,a
	ld a,c
	ld c,b
	call l3e5d
	pop af
	pop bc
	ret
.l4aac
	db #01
	jp l4af5
	ld l,(ix+#00)
	ld h,(ix+#01)
;
.init_music
;
	ld hl,l0064
	push hl
	ld hl,l5119
	ld de,l511a
	ld bc,#007d
	ld (hl),#00
	ldir
	pop hl
	ld (l50a5),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld a,l
	ld (l5130),a
	ld a,h
	ld (l5131),a
	push hl
	add hl,de
	ld a,l
	ld (l515a),a
	ld a,h
	ld (l515b),a
	pop hl
	add hl,bc
	ld a,l
	ld (l5184),a
	ld a,h
	ld (l5185),a
	ld a,#01
	ld (l4aac),a
	ret
;
.play_music
.l4af5
;
	ld a,(l4aac)
	or a
	ret z
	xor a
	ld (l50a8),a
	ld ix,l5119
	call l4b1a
	ld a,#01
	ld (l50a8),a
	ld ix,l5143
	call l4b1a
	ld a,#02
	ld (l50a8),a
	ld ix,l516d
.l4b1a
	ld a,(ix+#00)
	or a
	jr z,l4b96
	dec (ix+#00)
	ld a,(ix+#08)
	or a
	jr z,l4b2f
	dec a
	ld (ix+#08),a
	jr l4b44
.l4b2f
	ld a,(ix+#0a)
	or a
	jr z,l4b3b
	dec a
	ld (ix+#0a),a
	jr l4b44
.l4b3b
	ld a,(ix+#09)
	ld (ix+#0a),a
	inc (ix+#0b)
.l4b44
	ld a,(ix+#01)
	and #03
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l50c1
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	call l4c07
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(ix+#11)
	add h
	ld h,a
	ld (ix+#0d),h
	ld a,(ix+#01)
	srl a
	srl a
	srl a
	and #07
	ld b,a
	call nz,l4dfc
	ld a,(ix+#01)
	rlca
	rlca
	and #03
	ld b,a
	call nz,l4d9b
	call l4dbf
	ld a,(ix+#02)
	and #03
	call nz,l4de1
	call l4c79
	call l4c08
	ld c,#0e
	jp l3e5d
.l4b96
	ld a,(ix+#16)
	ld (ix+#24),a
	ld l,(ix+#17)
	ld h,(ix+#18)
	ld a,(hl)
	or a
	jp z,l4e50
	bit 7,a
	jp nz,l4e68
	cp #1a
	jp nc,l4bc4
	push hl
	pop iy
	dec a
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l50c7
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	call l4c07
.l4bc4
	ld l,(ix+#17)
	ld h,(ix+#18)
	inc hl
	inc hl
	ld (ix+#17),l
	ld (ix+#18),h
	ld a,(l50a8)
	or a
	jp nz,l4b1a
	ld de,(l50a5)
	push hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	inc hl
	inc hl
	add hl,de
	ex de,hl
	pop hl
	or a
	sbc hl,de
	jp c,l4b1a
	xor a
	ld (l4aac),a
	ld c,#08
	xor a
	call l3e5d
	inc c
	xor a
	call l3e5d
	inc c
	xor a
	call l3e5d
	ld c,#0e
	jp l3e5d
.l4c07
	jp (hl)
.l4c08
	ld a,(ix+#28)
	bit 7,a
	ld c,#00
	jr z,l4c13
	ld c,#ff
.l4c13
	add l
	ld l,a
	ld a,h
	adc c
	ld h,a
	ld a,(l50a8)
	add a
	ld e,a
	ld c,l
	call l4aa1
	ld a,e
	inc a
	ld c,h
	call l4aa1
	ld a,(ix+#06)
	ld c,a
	ld a,(l50a8)
	add #08
	call l4aa1
	bit 2,(ix+#02)
	jr z,l4c41
	ld c,(ix+#20)
	ld a,#06
	call l4aa1
.l4c41
	bit 6,(ix+#02)
	jr z,l4c6d
	ld c,(ix+#21)
	ld a,#0b
	call l4aa1
	ld c,(ix+#22)
	ld a,#0c
	call l4aa1
	ld a,(ix+#02)
	and #03
	jr z,l4c6d
	ld a,(ix+#24)
	and #80
	jr nz,l4c6d
	ld c,(ix+#23)
	ld a,#0d
	call l4aa1
.l4c6d
	ld a,(l50a7)
	or #80
	ld c,a
	ld a,#07
	call l4aa1
	ret
.l4c79
	call l4cb2
	ld a,(ix+#24)
	and #80
	ret nz
	ld a,(ix+#0c)
	or (ix+#0d)
	call z,l4d0b
	bit 2,(ix+#02)
	call nz,l4cd0
	bit 3,(ix+#02)
	call nz,l4d25
	bit 4,(ix+#02)
	call nz,l4d10
	bit 5,(ix+#02)
	jr z,l4caa
	ld (ix+#06),#10
.l4caa
	bit 6,(ix+#02)
	call nz,l4cf0
	ret
.l4cb2
	ld a,(l50a8)
	ld d,#08
	ld e,#01
.l4cb9
	or a
	jr z,l4cc3
	dec a
	rlc d
	rlc e
	jr l4cb9
.l4cc3
	ld a,e
	xor #ff
	ld e,a
	ld a,(l50a7)
	and e
	or d
	ld (l50a7),a
	ret
.l4cd0
	ld a,(ix+#0c)
	or (ix+#0d)
	ret z
	ld a,(l50a8)
	ld d,#08
.l4cdc
	or a
	jr z,l4ce4
	dec a
	rlc d
	jr l4cdc
.l4ce4
	ld a,d
	xor #ff
	ld d,a
	ld a,(l50a7)
	and d
	ld (l50a7),a
	ret
.l4cf0
	srl l
	rr h
	srl l
	rr h
	srl l
	rr h
	srl l
	rr h
	srl l
	rr h
	ld (ix+#21),l
	ld (ix+#22),h
	ret
.l4d0b
	xor a
	ld (ix+#06),a
	ret
.l4d10
	ld a,(l50a8)
	ld d,#01
.l4d15
	or a
	jr z,l4d1d
	dec a
	rlc d
	jr l4d15
.l4d1d
	ld a,(l50a7)
	or d
	ld (l50a7),a
	ret
.l4d25
	push hl
	ld b,#06
.l4d28
	srl h
	rr l
	djnz l4d28
	ld a,l
	pop hl
	ld (ix+#20),a
	ret
.l4d34
	dec (ix+#27)
	ret nz
	ld a,(ix+#25)
	ld (ix+#27),a
	ld a,(ix+#04)
	srl a
	srl a
	srl a
	srl a
	add (ix+#06)
	cp (ix+#03)
	jr c,l4d5b
	inc (ix+#01)
	ld a,(ix+#03)
	ld (ix+#27),#01
.l4d5b
	ld (ix+#06),a
	ret
.l4d5f
	dec (ix+#27)
	ret nz
	ld a,(ix+#26)
	ld (ix+#27),a
	ld a,(ix+#04)
	and #0f
	ld b,a
	ld c,(ix+#05)
	srl c
	srl c
	srl c
	srl c
	ld a,(ix+#03)
	cp c
	jr nc,l4d81
	ld c,a
.l4d81
	ld a,(ix+#06)
	sub b
	jr c,l4d8a
	cp c
	jr nc,l4d8e
.l4d8a
	inc (ix+#01)
	ld a,c
.l4d8e
	ld (ix+#06),a
.l4d91
	ret
.l4d92
	ld a,(ix+#01)
	xor #04
	ld (ix+#01),a
	ret
.l4d9b
	ld a,(ix+#0a)
	or a
	call z,l4d92
	ld a,b
	cp #02
	jr nz,l4db2
	ld a,(ix+#01)
	and #04
	ret z
	srl h
	rr l
	ret
.l4db2
	ld a,(ix+#01)
	and #04
	ret z
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	ret
.l4dbf
	ld a,(ix+#08)
	or a
	ret nz
	ld a,(ix+#0a)
	or a
	ret nz
	ld a,(ix+#0b)
	bit 0,a
	ret z
	and #03
	cp #02
	jr c,l4ddb
	ld a,(ix+#19)
	add l
	ld l,a
	ret
.l4ddb
	ld a,l
	sub (ix+#19)
	ld l,a
	ret
.l4de1
	cp #01
	jr z,l4de6
	ret
.l4de6
	ld a,(ix+#24)
	and #7f
	jr nz,l4df8
	ld a,(ix+#24)
	xor #80
	or (ix+#16)
	ld (ix+#24),a
.l4df8
	dec (ix+#24)
	ret
.l4dfc
	ld a,(ix+#08)
	or a
	ret nz
	ld a,b
	cp #01
	jr z,l4e21
	ld e,(ix+#10)
	ld d,#00
	cp #03
	jr nz,l4e19
	ld a,e
	cpl
	add #01
	ld e,a
	ld a,d
	cpl
	adc #00
	ld d,a
.l4e19
	add hl,de
	ld (ix+#0c),l
	ld (ix+#0d),h
	ret
.l4e21
	push hl
	ld c,(ix+#10)
	ld b,#00
	ld e,(ix+#0e)
	ld d,(ix+#0f)
	or a
	sbc hl,de
	pop hl
	ret z
	jr c,l4e40
	or a
	sbc hl,bc
	push hl
	or a
	sbc hl,de
	pop hl
	jr nc,l4e49
	jr l4e48
.l4e40
	add hl,bc
	push hl
	or a
	sbc hl,de
	pop hl
	jr c,l4e49
.l4e48
	ex de,hl
.l4e49
	ld (ix+#0c),l
	ld (ix+#0d),h
	ret
.l4e50
	ld (ix+#0c),#00
	ld (ix+#0d),#00
.l4e58
	inc hl
	ld a,(hl)
	cp #ff
	jp z,l4ed7
	ld (ix+#00),a
	call l4ee6
	jp l4bc4
.l4e68
	push hl
	res 7,a
	call l4e9f
	add (ix+#15)
	ld b,#00
.l4e73
	cp #0c
	jr c,l4e7c
	sub #0c
	inc b
	jr l4e73
.l4e7c
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l50a9
	add hl,de
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld a,b
	or a
	jr z,l4e58
.l4e92
	srl (ix+#0d)
	rr (ix+#0c)
	djnz l4e92
	jp l4e58
.l4e9f
	push af
	ld a,(ix+#29)
	or a
	jr z,l4ed5
	pop af
	push af
	add (ix+#29)
	ld b,#00
.l4ead
	cp #0c
	jr c,l4eb6
	sub #0c
	inc b
	jr l4ead
.l4eb6
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l50a9
	add hl,de
	ld a,(hl)
	ld (ix+#0e),a
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	ld a,b
	or a
	jr z,l4ed5
.l4ecb
	srl (ix+#0f)
	rr (ix+#0e)
	djnz l4ecb
.l4ed5
	pop af
	ret
.l4ed7
	ld a,(ix+#0c)
	ld (ix+#0e),a
	ld a,(ix+#0d)
	ld (ix+#0f),a
	jp l4bc4
.l4ee6
	ld (ix+#06),#00
	ld a,(ix+#07)
	ld (ix+#08),a
	ld a,(ix+#01)
	and #fc
	ld (ix+#01),a
	ld (ix+#27),#01
	ret
.l4efd
	ld a,(iy+#01)
	bit 7,a
	jr z,l4f0a
	and #0f
	ld (ix+#03),a
	ret
.l4f0a
	push ix
	and #0f
	ld ix,l5119
	ld (ix+#03),a
	ld ix,l5143
	ld (ix+#03),a
	ld ix,l516d
	ld (ix+#03),a
	pop ix
	ret
.l4f26
	push hl
	push de
	push bc
	ld a,(iy+#01)
	srl a
	srl a
	srl a
	srl a
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l50f9
	add hl,de
	ld c,(hl)
	sla c
	sla c
	sla c
	sla c
	inc hl
	ld a,(hl)
	ld (ix+#25),a
	ld a,(iy+#01)
	and #0f
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l50f9
	add hl,de
	ld a,(hl)
	and #0f
	or c
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	ld (ix+#27),#01
	pop bc
	pop de
	pop hl
	ret
.l4f6b
	ld a,(iy+#01)
	res 6,(ix+#02)
	bit 7,a
	jr z,l4f7e
	set 6,(ix+#02)
	set 5,(ix+#02)
.l4f7e
	res 7,a
	or a
	jr z,l4f8f
	set 2,(ix+#02)
	cp #20
	jr nc,l4f98
	ld (ix+#20),a
	ret
.l4f8f
	ld a,(ix+#02)
	and #03
	ld (ix+#02),a
	ret
.l4f98
	set 3,(ix+#02)
	cp #21
	ret c
	set 4,(ix+#02)
	bit 6,a
	ret z
	res 6,a
	res 4,a
	ld (ix+#20),a
	ret
.l4fae
	ret
.l4faf
	ld a,(iy+#01)
	or a
	jr z,l4fc3
	ld (ix+#16),a
	ld a,(ix+#02)
	and #fc
	or #01
	ld (ix+#02),a
	ret
.l4fc3
	ld a,(ix+#02)
	and #fc
	ld (ix+#02),a
	res 7,(ix+#24)
	ld (ix+#16),#00
	ret
.l4fd4
	ld a,(iy+#01)
	ld (ix+#09),a
	ld (ix+#0a),a
	ret
.l4fde
	ret
.l4fdf
	ld a,(iy+#01)
	and #03
	rrca
	rrca
	ld b,a
	ld a,(ix+#01)
	and #3f
	or b
	ld (ix+#01),a
	ret
.l4ff1
	ld a,(iy+#01)
	ld (ix+#07),a
	ret
.l4ff8
	ld a,(iy+#01)
	ld (ix+#05),a
	ret
.l4fff
	ld a,(iy+#01)
	dw #ffee,#0707
	db #e6
	inc bc
	ld (ix+#19),a
	ret
.l500c
	ld a,(iy+#01)
	ld (ix+#11),a
	ret
.l5013
	ld a,(iy+#01)
	ld (ix+#10),a
	ret
.l501a
	ret
.l501b
	ld a,(iy+#01)
	and #07
	rlca
	rlca
	rlca
	ld b,a
	ld a,(ix+#01)
	and #c7
	or b
	ld (ix+#01),a
	ret
.l502e
	ld a,(ix+#1c)
	or a
	jr nz,l5037
	ld a,(iy+#01)
.l5037
	dec a
	ld (ix+#1c),a
	ret z
	ld a,(ix+#1a)
	ld (ix+#17),a
	ld a,(ix+#1b)
	ld (ix+#18),a
	ret
.l5049
	ld a,(ix+#17)
	ld (ix+#1a),a
	ld a,(ix+#18)
	ld (ix+#1b),a
	ret
.l5056
	ld a,(ix+#1f)
	or a
	jr nz,l505f
	ld a,(iy+#01)
.l505f
	dec a
	ld (ix+#1f),a
	ret z
	ld a,(ix+#1d)
	ld (ix+#17),a
	ld a,(ix+#1e)
	ld (ix+#18),a
	ret
.l5071
	ld a,(ix+#17)
	ld (ix+#1d),a
	ld a,(ix+#18)
	ld (ix+#1e),a
	ret
.l507e
	ld a,(iy+#01)
	ld (ix+#15),a
	ret
.l5085
	ld a,(iy+#01)
	ld (ix+#23),a
	ret
.l508c
	ld a,(iy+#01)
	ld (ix+#28),a
	ret
.l5093
	ret
.l5094
	ld a,(iy+#01)
	add (ix+#15)
	ld (ix+#15),a
	ret
.l509e
	ld a,(iy+#01)
	ld (ix+#29),a
	ret
.l50a5
	db #64,#00
.l50a7
	db #00
.l50a8
	db #00
.l50a9
	db #dd,#0e,#07,#0e,#3e,#0d,#80,#0c
	db #cc,#0b,#23,#0b,#83,#0a,#ec,#09
	db #5d,#09,#d6,#08,#57,#08,#e0,#07
.l50c1
	dw l4d34,l4d5f,l4d91
.l50c7
	dw l4efd,l4f26,l4f6b,l4fae
	dw l4faf,l4fd4,l4fde,l4fdf
	dw l4ff1,l4ff8,l4fff,l500c
	dw l5013,l501a,l501b,l502e
	dw l5049,l5056,l5071,l507e
	dw l5085,l508c,l5093,l5094
	dw l509e
.l50f9
	db #0f,#01,#0d,#01,#0b,#01,#09,#01
	db #07,#01,#05,#01,#03,#01,#02,#01
	db #01,#01,#01,#0a,#01,#1e,#01,#46
	db #01,#6e,#01,#b4,#01,#dc,#01,#ff
.l5119
	db #00
.l511a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l5130
	db #68
.l5131
	db #00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l5143
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
.l515b equ $ + 1
.l515a
	db #24,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
.l516d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
.l5185 equ $ + 1
.l5184
	db #16,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#14,#15,#17,#0b
	db #04,#1f,#0b,#04,#0f,#0b,#1c,#0c
	db #07,#14,#16,#19,#00,#10,#50,#14
	db #20,#30,#70,#34,#a0,#b0,#f0,#b4
	db #28,#38,#78,#3c,#00,#54,#01,#41
	db #a8,#fc,#a9,#e9,#02,#56,#03,#43
	db #82,#d6,#83,#c3,#00,#05,#45,#11
	db #0a,#0f,#4f,#1b,#8a,#8f,#cf,#9b
	db #22,#27,#67,#33,#00,#51,#15,#55
	db #a2,#f3,#b7,#f7,#2a,#7b,#3f,#7f
	db #aa,#fb,#bf,#ff,#00,#40,#04,#44
	db #80,#c0,#84,#c4,#08,#48,#0c,#4c
	db #88,#c8,#8c,#cc,#04,#1f,#0b,#1c
	db #0c,#07,#04,#0f,#0b,#14,#16,#19
	db #06,#13,#0b,#1e,#03,#0b,#14,#00
	db #0b,#0c,#07,#0b,#16,#19,#0b,#1c
	db #07,#0b,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#05
	db #16
	db #16,#5a,#59,#59,#59,#59,#59,#5a
	db #16,#16,#05,#01,#01,#45,#a6,#a9
	db #b8,#aa,#6a,#9a,#6e,#9e,#6e,#ba
	db #b8,#e8,#a0,#40,#00,#10,#10,#10
	db #10,#10,#00,#55,#6a,#65,#65,#65
	db #65,#65,#65,#55,#00,#00,#00,#00
	db #00,#44,#00,#55,#a9,#55,#fd,#dd
	db #fd,#dd,#fd,#55,#00,#00,#28,#08
	db #08,#08,#08,#08,#0b,#0a,#0a,#0a
	db #0b,#0a,#0a,#02,#00,#00,#a0,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#00,#00,#00,#0a,#02
	db #02,#02,#02,#02,#02,#02,#02,#0a
	db #0a,#08,#08,#02,#00,#00,#28,#20
	db #20,#20,#20,#20,#e0,#e0,#e0,#f8
	db #f8,#b8,#a8,#a0,#00,#00,#2a,#99
	db #26,#29,#20,#20,#20,#28,#2a,#2f
	db #2a,#2a,#2e,#2a,#00,#00,#a8,#9a
	db #68,#98,#08,#08,#08,#28,#b8,#a8
	db #a8,#e8,#a8,#a8,#00,#00,#00,#28
	db #08,#08,#08,#0a,#2a,#aa,#aa,#aa
	db #aa,#8a,#8a,#2a,#00,#00,#00,#a0
	db #80,#80,#80,#80,#a0,#e8,#b8,#a8
	db #a8,#b8,#e8,#a0,#55,#6a,#6a,#69
	db #65,#69,#69,#6a,#69,#6a,#65,#66
	db #65,#66,#65,#7f,#57,#ab,#6b,#5b
	db #57,#5b,#5b,#ab,#5b,#ab,#97,#9a
	db #97,#9b,#9b,#ff,#01,#07,#07,#15
	db #75,#7a,#7a,#15,#7e,#7a,#15,#1a
	db #1e,#05,#1e,#05,#40,#d0,#b4,#a9
	db #69,#59,#69,#69,#99,#99,#69,#99
	db #99,#64,#50,#00,#00,#01,#07,#1e
	db #19,#75,#66,#6a,#19,#15,#00,#00
	db #01,#01,#01,#00,#00,#00,#40,#d0
	db #90,#90,#40,#40,#90,#90,#64,#64
	db #d9,#99,#95,#44,#00,#00,#00,#28
	db #08,#08,#08,#08,#08,#08,#08,#0a
	db #2a,#aa,#8a,#2a,#00,#00,#00,#a0
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #a0,#e8,#e8,#a0,#55,#6a,#6a,#69
	db #65,#69,#69,#6b,#69,#6a,#69,#66
	db #69,#69,#66,#7f,#57,#ab,#6b,#5b
	db #57,#5b,#5b,#fb,#5b,#ab,#97,#9a
	db #97,#9b,#9b,#ff,#05,#07,#01,#51
	db #77,#6b,#17,#01,#06,#1a,#5a,#5a
	db #5a,#56,#16,#05,#50,#90,#40,#45
	db #dd,#a9,#94,#40,#90,#e4,#a9,#b9
	db #b9,#a9,#e4,#50,#00,#01,#07,#1f
	db #1d,#75,#77,#7f,#1d,#15,#00,#01
	db #01,#01,#00,#00,#00,#00,#40,#d0
	db #d0,#d0,#40,#40,#d0,#d0,#74,#74
	db #dd,#dd,#45,#04,#00,#00,#00,#01
	db #00,#00,#00,#02,#00,#00,#00,#04
	db #00,#01,#00,#02,#00,#00,#00,#00
	db #00,#40,#60,#5c,#2c,#58,#14,#78
	db #1c,#90,#40,#00,#00,#00,#00,#00
	db #00,#00,#00,#04,#01,#11,#00,#04
	db #00,#10,#00,#00,#00,#00,#00,#00
	db #00,#00,#54,#6d,#69,#a5,#59,#64
	db #50,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#05,#07,#06,#06,#05,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#40,#d0,#40,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #00,#00,#02,#08,#00,#01,#00,#11
	db #00,#04,#00,#02,#00,#00,#00,#00
	db #00,#80,#20,#5c,#24,#28,#34,#2c
	db #10,#a0,#40,#00,#00,#00,#00,#00
	db #00,#00,#40,#05,#01,#00,#00,#40
	db #00,#10,#00,#00,#00,#00,#00,#00
	db #00,#00,#54,#ad,#a9,#64,#14,#64
	db #50,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#05,#06,#05,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#40,#d0,#40,#00,#00
	db #00,#00,#00,#00,#00,#04,#14,#7d
	db #6a,#19,#19,#6a,#66,#19,#06,#06
	db #1a,#1d,#14,#00,#00,#00,#40,#d0
	db #50,#b4,#ad,#69,#a4,#b4,#d0,#40
	db #40,#00,#00,#00,#00,#00,#04,#05
	db #1b,#1a,#19,#6a,#66,#15,#01,#06
	db #06,#01,#00,#00,#00,#10,#74,#94
	db #90,#64,#ad,#ad,#64,#64,#d4,#b4
	db #d0,#50,#00,#00,#00,#00,#00,#00
	db #00,#04,#19,#5a,#57,#16,#11,#01
	db #00,#00,#00,#00,#00,#10,#74,#64
	db #6d,#5d,#99,#ad,#64,#64,#ad,#5d
	db #59,#14,#00,#00,#00,#00,#04,#05
	db #1b,#1a,#19,#6a,#66,#15,#01,#06
	db #06,#01,#00,#00,#00,#10,#74,#94
	db #90,#64,#ad,#ad,#64,#64,#d4,#b4
	db #d0,#50,#00,#00
.l0064
	db #bc,#00,#ae,#01,#01,#0e,#14,#01
	db #0a,#5f,#02,#4d,#98,#80,#98,#80
	db #02,#1f,#a4,#10,#a4,#10,#a2,#10
	db #a4,#40,#a2,#40,#a4,#50,#02,#4d
	db #98,#80,#98,#80,#13,#01,#11,#01
	db #02,#1f,#0a,#2c,#a4,#10,#a4,#10
	db #a2,#10,#a4,#40,#a2,#40,#a4,#50
	db #02,#4d,#98,#80,#98,#80,#10,#04
	db #14,#04,#12,#02,#02,#1f,#0a,#2c
	db #13,#01,#98,#10,#98,#10,#96,#10
	db #11,#00,#98,#20,#98,#10,#96,#10
	db #10,#02,#94,#30,#94,#10,#96,#10
	db #12,#04,#14,#10,#98,#10,#98,#10
	db #9a,#10,#9b,#20,#9a,#10,#98,#10
	db #a0,#50,#a2,#10,#a0,#10,#9f,#10
	db #9c,#20,#9d,#10,#9f,#10,#9d,#50
	db #98,#10,#98,#10,#96,#10,#94,#20
	db #96,#10,#94,#10,#98,#50,#99,#10
	db #98,#10,#96,#10,#98,#20,#98,#10
	db #98,#10,#91,#50,#11,#01,#91,#10
	db #91,#10,#93,#10,#94,#20,#93,#10
	db #91,#10,#96,#80,#94,#90,#91,#10
	db #91,#10,#93,#10,#94,#10,#00,#40
	db #10,#04,#91,#80,#8d,#80,#00,#01
	db #01,#0e,#14,#01,#0a,#5f,#0b,#64
	db #02,#4d,#16,#05,#98,#80,#98,#80
	db #02,#1f,#16,#00,#ab,#10,#ab,#10
	db #a9,#10,#ab,#40,#a9,#40,#a9,#50
	db #02,#4d,#16,#05,#98,#80,#98,#80
	db #13,#01,#11,#01,#02,#1f,#0a,#37
	db #ab,#10,#ab,#10,#a9,#10,#ab,#40
	db #a9,#40,#a9,#50,#02,#4d,#16,#05
	db #98,#80,#98,#80,#16,#00,#10,#04
	db #14,#04,#12,#02,#11,#01,#00,#30
	db #02,#1f,#a7,#20,#a7,#10,#a6,#10
	db #a9,#20,#a9,#10,#a9,#10,#a7,#50
	db #10,#04,#16,#03,#98,#10,#98,#10
	db #9a,#10,#9b,#20,#9a,#10,#98,#10
	db #a0,#50,#a2,#10,#a0,#10,#9f,#10
	db #9c,#20,#9d,#10,#9f,#10,#9d,#50
	db #98,#10,#98,#10,#96,#10,#94,#20
	db #96,#10,#94,#10,#98,#50,#99,#10
	db #98,#10,#96,#10,#98,#20,#98,#10
	db #98,#10,#91,#50,#11,#01,#91,#10
	db #91,#10,#93,#10,#94,#20,#93,#10
	db #91,#10,#96,#80,#94,#90,#91,#10
	db #91,#10,#93,#10,#94,#10,#00,#40
	db #10,#02,#08,#02,#16,#00,#02,#19
	db #11,#01,#c8,#10,#c5,#10,#c3,#10
	db #bf,#20,#be,#10,#bc,#10,#c1,#60
	db #c3,#10,#c1,#10,#bf,#50,#c1,#10
	db #bf,#10,#be,#10,#bc,#10,#bc,#10
	db #bc,#10,#be,#10,#bf,#10,#00,#40
	db #10,#02,#16,#05,#9d,#80,#99,#80
	db #00,#01,#01,#0e,#02,#1f,#0a,#2c
	db #14,#01,#0b,#b4,#00,#c8,#00,#38
	db #00,#c8,#00,#38,#00,#c8,#00,#38
	db #11,#01,#c3,#08,#c6,#08,#c8,#10
	db #cb,#10,#cf,#20,#d2,#10,#cf,#10
	db #cd,#40,#d1,#40,#cf,#08,#cd,#08
	db #cf,#fa,#00,#06,#10,#02,#11,#01
	db #d7,#08,#d6,#08,#d4,#10,#d6,#10
	db #d4,#10,#cf,#10,#cb,#20,#ca,#40
	db #c8,#40,#c6,#10,#cb,#fa,#00,#06
	db #10,#02,#14,#04,#c0,#08,#c1,#08
	db #c3,#10,#c6,#30,#c3,#10,#c0,#10
	db #be,#40,#b9,#40,#b7,#fa,#00,#16
	db #c0,#08,#c1,#08,#c3,#10,#c6,#30
	db #c8,#20,#ca,#40,#c8,#40,#cc,#fa
	db #00,#16,#cd,#08,#cc,#08,#c8,#10
	db #c8,#10,#ca,#20,#c8,#20,#c6,#20
	db #c8,#20,#c5,#20,#c3,#10,#c1,#10
	db #c8,#fa,#00,#16,#cd,#08,#cc,#08
	db #c8,#10,#c8,#10,#ca,#20,#cc,#20
	db #cd,#20,#cf,#20,#d1,#20,#cf,#10
	db #cc,#10,#c8,#fa,#00,#16,#11,#01
	db #00,#70,#ae,#20,#ae,#10,#a6,#10
	db #a4,#50,#10,#02,#13,#01,#b0,#08
	db #b2,#08,#b3,#10,#b3,#10,#b3,#08
	db #b5,#08,#b7,#10,#b7,#10,#ba,#10
	db #ae,#20,#ae,#10,#a6,#10,#a4,#50
	db #12,#02,#11,#01,#14,#10,#98,#10
	db #98,#10,#9a,#10,#9b,#20,#9a,#10
	db #98,#10,#a0,#50,#a2,#10,#a0,#10
	db #9f,#10,#9c,#20,#9d,#10,#9f,#10
	db #9d,#50,#10,#02,#14,#04,#11,#01
	db #ad,#10,#ad,#10,#ae,#10,#b0,#20
	db #ae,#10,#ad,#10,#b2,#60,#b3,#10
	db #b2,#10,#b0,#50,#b1,#10,#b0,#10
	db #ae,#10,#ac,#10,#ad,#10,#ad,#10
	db #ae,#10,#b0,#50,#10,#04,#9d,#80
	db #99,#80,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l3e5d
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
	ret
;
; #2e2c
; ld a,(#4aac)
; or a
; call z,#4ab6	; init
;
; play #4aad (#4af5)
;
.music_info
	db "Future Knight (1986)(Gremlin Graphics)()",0
	db "",0

	read "music_end.asm"
