; Music of Sapiens (1986)(Loriciels)(Gilles Soulet)()
; Ripped by Megachur the 12/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SAPIENS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #7660

	read "music_header.asm"

.l7660
	push af
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
	pop af
	ret
.l7680
	db #00,#07
	dw l7816
	db #03,#01,#01,#01,#ef,#00,#00,#2a
	db #00,#00,#00
	dw l82cd,l7e87,l7e82
	db #20,#01,#06,#01
	dw l7816
	db #18,#30,#00,#00,#30,#ef,#00,#05
	db #00,#00,#00,#18,#17,#01,#00,#00
	db #00,#00,#00,#09,#08,#01,#00,#f6
.l76b6 equ $ + 3
	db #00,#08,#00,#00,#07
	dw l77e9
	db #03,#00,#01,#01,#00,#00,#00,#00
	db #00,#00,#00
	dw l8382,l7e81,l7e7e
	db #20,#00,#00,#00
	dw l77e9
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#06,#06,#01,#00,#00
	db #00,#00,#00,#12,#10,#02,#00,#ed
.l76ec equ $ + 3
	db #02,#09,#01,#00,#07
	dw l77e9
	db #03,#00,#01,#01,#00,#00,#00,#00
	db #00,#00,#00
	dw l84f0,l7e81,l7e7e
	db #40,#00,#00,#00
	dw l77e9
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#06,#06,#01,#00,#00
	db #00,#00,#00,#24,#20,#04,#00,#db
.l7723 equ $ + 4
.l7722 equ $ + 3
	db #04,#0a,#02,#00,#00
.l7724
	dw l778a
.l7728 equ $ + 2
.l7727 equ $ + 1
.l7726
	db #00,#00,#00
.l7729
	db #ee,#0e,#de,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
.l778a equ $ + 1
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
.l77e9
	db #0f,#ff,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.l77fb equ $ + 2
	db #00,#ff,#0f,#0f,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#01,#00,#ff,#00
.l7816 equ $ + 5
.l7812 equ $ + 1
	db #ff,#0f,#ff,#0f,#ff,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
	db #04,#03,#02,#01,#00,#ff,#00,#ff
.l7829
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
	db #0b,#0a,#0a,#09,#09,#08,#08,#07
	db #07,#06,#06,#05,#05,#04,#04,#03
	db #03,#02,#02,#01,#01,#00,#ff,#ff
.l7849
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#00
.l785c equ $ + 3
	db #ff,#00,#ff,#0f,#ff,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l786f equ $ + 6
	db #04,#03,#02,#01,#00,#ff,#0d,#0e
	db #ff,#0d,#0d,#0c,#0c,#0b,#0a,#09
	db #09,#08,#07,#06,#06,#05,#04,#03
	db #02,#01,#00,#ff,#00,#ff
.l7887
	dw l7899,l78a1,l78a9,l78b1
	dw l78b9,l78c1,l78c9,l78d1
	dw l78d9
.l7899
	db #00,#07
	dw l77e9
.l78a1 equ $ + 4
	db #03,#00,#01,#01,#00,#0b
	dw l77e9
.l78a9 equ $ + 4
	db #08,#0d,#01,#01,#81,#23
	dw l77fb
.l78b1 equ $ + 4
	db #01,#01,#02,#02,#00,#03
	dw l7812
.l78b9 equ $ + 4
	db #01,#01,#01,#01,#00,#07
	dw l7816
.l78c1 equ $ + 4
	db #03,#01,#01,#01,#00,#04
	dw l7829
.l78c9 equ $ + 4
	db #00,#00,#01,#01,#00,#0a
	dw l7849
.l78d1 equ $ + 4
	db #01,#01,#02,#02,#00,#07
	dw l785c
.l78d9 equ $ + 4
	db #01,#01,#01,#01,#00,#06
	dw l786f
	db #04,#01,#01,#01
.l78e1
	db #ff
;
.play_music	;l78e2
;
	ld a,(l7d88)
	rra
	ret c
	ld hl,l7726
	inc (hl)
	ld a,(hl)
	and #03
	cp #03
	jp nz,l78f5
	ld a,#01
.l78f5
	ld (l7727),a
	or a
	jp nz,l7904
	ld a,(l7728)
	xor #01
	ld (l7728),a
.l7904
	ld ix,l7680
	ld a,(l78e1)
	rlca
	ld (l78e1),a
.l790f
	ld a,(l7dc0)
	or a
	jp z,l791d
	ld a,(ix+#35)
	cp #02
	jr z,l7992
.l791d
	ld a,(ix+#1c)
	or a
	jp z,l7b29
	ld a,(ix+#18)
	ld a,(ix+#16)
	or a
	jp nz,l79da
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(ix+#2a)
	or a
	jr z,l797d
	ld a,(ix+#00)
	cp #80
	jp nc,l7970
	ld a,(l7727)
	or a
	jr z,l797d
	ld e,(ix+#22)
	ld d,(ix+#23)
	cp #02
	jr z,l7956
	srl d
	rr e
.l7956
	ld a,(l7728)
	or a
	jr z,l7963
	sbc hl,de
	jr c,l796a
	jp l797d
.l7963
	add hl,de
	ld a,h
	cp #10
	jp c,l797d
.l796a
	ld hl,#0001
	jp l797d
.l7970
	ld a,(l7726)
	and #01
	jr z,l797d
	ld l,(ix+#24)
	ld h,(ix+#25)
.l797d
	ld (l7722),hl
	ld bc,(l7722)
	ld a,(ix+#33)
	call l7660
	inc a
	ld bc,(l7723)
	call l7660
.l7992
	ld a,(l78e1)
	rla
	jp nc,l7b10
.l7999
	ld a,(ix+#1b)
	dec a
	ld (ix+#1b),a
	cp #ff
	jp nz,l7a7f
	call l7b32
	ld a,(ix+#1c)
	or a
	jr z,l7999
	ld a,(ix+#16)
	or a
	jr z,l79c7
	cp #03
	jr z,l79c7
	ld a,(ix+#20)
	ld (ix+#08),a
	ld a,(ix+#21)
	ld (ix+#09),a
	jp l7999
.l79c7
	ld c,(ix+#20)
	ld a,(ix+#33)
	call l7660
	inc a
	ld c,(ix+#21)
	call l7660
	jp l7999
.l79da
	ld a,(ix+#0e)
	or a
	jr nz,l7a31
	ld a,(ix+#0a)
	add (ix+#0d)
	ld (ix+#0a),a
	ld e,(ix+#0b)
	ld d,(ix+#0c)
	ld l,(ix+#08)
	ld h,(ix+#09)
	adc hl,de
	ld a,h
	cp #10
	jr c,l79ff
	ld hl,#0201
.l79ff
	ld a,(ix+#16)
	cp #03
	jr nz,l7a17
	ld e,(ix+#20)
	ld d,(ix+#21)
	and a
	sbc hl,de
	add hl,de
	jr c,l7a17
	xor a
	ld (ix+#18),a
	ex de,hl
.l7a17
	ld (ix+#08),l
	ld (ix+#09),h
	ld c,l
	ld a,(ix+#33)
	ld (l7722),hl
	call l7660
	ld c,(ix+#09)
	inc a
	call l7660
	jp l7992
.l7a31
	ld a,(ix+#0a)
	sub (ix+#0d)
	ld (ix+#0a),a
	ld e,(ix+#0b)
	ld d,(ix+#0c)
	ld l,(ix+#08)
	ld h,(ix+#09)
	sbc hl,de
	jr nc,l7a4d
	ld hl,#0000
.l7a4d
	ld a,(ix+#16)
	cp #03
	jr nz,l7a65
	ld e,(ix+#20)
	ld d,(ix+#21)
	and a
	sbc hl,de
	add hl,de
	jr nc,l7a65
	xor a
	ld (ix+#18),a
	ex de,hl
.l7a65
	ld (ix+#08),l
	ld (ix+#09),h
	ld c,l
	ld a,(ix+#33)
	ld (l7722),hl
	call l7660
	ld c,(ix+#09)
	inc a
	call l7660
	jp l7992
.l7a7f
	ld l,(ix+#19)
	ld h,(ix+#1a)
	ld b,(ix+#1b)
	ld a,(ix+#29)
	or a
	jr nz,l7a9f
	ld a,b
	cp (ix+#04)
	jr nc,l7a9f
.l7a94
	ld a,(hl)
	inc hl
	cp #ff
	jr nz,l7a94
	ld a,#01
	ld (ix+#29),a
.l7a9f
	ld a,(ix+#2a)
	or a
	jr nz,l7ab6
	ld a,b
	cp (ix+#27)
	jr nc,l7ab6
	ld a,(ix+#07)
	ld (ix+#28),a
	ld a,#01
	ld (ix+#2a),a
.l7ab6
	ld a,(hl)
	or a
	jp m,l7ac5
	ld (ix+#2b),a
	inc hl
	ld (ix+#19),l
	ld (ix+#1a),h
.l7ac5
	ld a,(l7dc0)
	or a
	jr z,l7ada
	ld a,(ix+#35)
	cp #01
	jr z,l7b10
	ld a,(ix+#28)
	and #01
	jp l7aee
.l7ada
	ld a,(ix+#28)
	cp #02
	jr c,l7aee
	ld hl,(l7722)
	add hl,hl
	ld c,h
	ld a,#06
	call l7660
	ld a,(ix+#28)
.l7aee
	add #2e
	ld (l7af5),a
.l7af5 equ $ + 2
	ld b,(ix+#6f)
	ld a,(ix+#32)
	ld hl,l474c
	and (hl)
	or b
	ld (hl),a
	ld c,(ix+#2b)
	ld a,(ix+#1c)
	or a
	jr nz,l7b0a
	ld c,#00
.l7b0a
	ld a,(ix+#34)
	call l7660
.l7b10
	ld a,(ix+#35)
	cp #02
	jr z,l7b1f
	ld de,#0036
	add ix,de
	jp l790f
.l7b1f
	ld a,(l474c)
	ld c,a
	ld a,#07
	call l7660
	ret
.l7b29
	ld hl,#0000
	ld (ix+#28),l
	jp l7992
.l7b32
	ld e,(ix+#11)
	ld d,(ix+#12)
	ld a,(de)
	inc de
	ld (ix+#11),e
	ld (ix+#12),d
	or a
	jp m,l7c85
	ld (ix+#1c),a
	jr z,l7bb4
	add (ix+#1d)
	ld (ix+#1f),a
	add a
	ld hl,l7729
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#20),a
	inc hl
	ld a,(hl)
	ld (l7724),hl
	ld (ix+#21),a
	ld a,(ix+#00)
	or a
	jp m,l7b8f
	dec hl
	ld e,(ix+#01)
	sla e
	ld d,#00
	add hl,de
	ld a,(ix+#20)
	sub (hl)
	ld e,a
	inc hl
	ld a,(ix+#21)
	sbc (hl)
	ld d,a
	ld b,#04
	ld a,e
.l7b81
	srl d
	rra
	djnz l7b81
	ld (ix+#22),a
	ld (ix+#23),d
	jp l7bb4
.l7b8f
	and #01
	jp z,l7ba2
	ld c,(ix+#01)
	sla c
	inc c
	ld b,#00
	and a
	sbc hl,bc
	jp l7bab
.l7ba2
	ld c,(ix+#01)
	sla c
	dec c
	ld b,#00
	add hl,bc
.l7bab
	ld a,(hl)
	inc hl
	ld (ix+#24),a
	ld a,(hl)
	ld (ix+#25),a
.l7bb4
	ld e,(ix+#11)
	ld d,(ix+#12)
	ld a,(de)
	inc de
	ld (ix+#11),e
	ld (ix+#12),d
	ld (ix+#1b),a
	ld (ix+#26),a
	sub (ix+#05)
	jr nc,l7bce
	xor a
.l7bce
	ld (ix+#27),a
	ld a,(ix+#06)
	ld (ix+#28),a
	xor a
	ld (ix+#29),a
	ld (ix+#2a),a
	ld a,(ix+#02)
	ld (ix+#19),a
	ld a,(ix+#03)
	ld (ix+#1a),a
	ld a,(ix+#16)
	or a
	ret z
	cp #03
	jr z,l7c2e
	ld hl,(l7724)
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#20)
	ld (ix+#08),l
	ld h,(ix+#21)
	ld (ix+#09),h
	and a
	sbc hl,de
	ex de,hl
	srl d
	rr e
	ld b,(ix+#17)
	ld hl,#0000
.l7c14
	add hl,de
	djnz l7c14
	ld (ix+#0b),l
	ld (ix+#0c),h
	xor a
	ld (ix+#0d),a
	ld a,(ix+#16)
	ld a,(ix+#16)
	dec a
	ld (ix+#0e),a
	jp l7c7f
.l7c2e
	xor a
	ld (ix+#0d),a
	ld (ix+#0c),a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld e,(ix+#08)
	ld d,(ix+#09)
	and a
	sbc hl,de
	jr nc,l7c4e
	inc a
	ld de,#0000
	ex de,hl
	and a
	sbc hl,de
.l7c4e
	ld (ix+#0e),a
	ld a,(ix+#17)
	cp #04
	jr nc,l7c6c
	ld b,a
.l7c59
	srl h
	rr l
	rr (ix+#0d)
	djnz l7c59
	ld (ix+#0b),l
	ld (ix+#0c),h
	jp l7c7f
.l7c6c
	xor #07
	ld b,a
.l7c6f
	sla l
	rl h
	rl (ix+#0c)
	djnz l7c6f
	ld (ix+#0b),h
	ld (ix+#0d),l
.l7c7f
	ld a,#01
	ld (ix+#18),a
	ret
.l7c85
	and #7f
	cp #7f
	jp nz,l7cd6
	xor a
	ld (ix+#16),a
	dec (ix+#15)
	jr z,l7ca4
	ld a,(ix+#13)
	ld (ix+#11),a
	ld a,(ix+#14)
	ld (ix+#12),a
	jp l7b32
.l7ca4
	ld l,(ix+#0f)
	ld h,(ix+#10)
	ld a,(hl)
	inc hl
	or a
	jp z,l7d33
	ld (ix+#15),a
	ld a,(hl)
	inc hl
	ld (ix+#13),a
	ld (ix+#11),a
	ld a,(hl)
	inc hl
	ld (ix+#14),a
	ld (ix+#12),a
	ld a,(hl)
	inc hl
	ld (ix+#1d),a
	ld a,(hl)
	inc hl
	ld (ix+#1e),a
	ld (ix+#0f),l
	ld (ix+#10),h
	jp l7b32
.l7cd6
	cp #10
	jp nc,l7cf9
	cp #00
	jr nz,l7ce2
	ld a,(ix+#1e)
.l7ce2
	add a
	ld hl,l7887
	ld e,a
	ld d,#00
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push ix
	pop de
	ld bc,#0008
	ldir
	jp l7b32
.l7cf9
	cp #10
	jp nz,l7d03
	xor a
	ld e,a
	jp l7d0a
.l7d03
	ld e,a
	and #40
	jr z,l7d0a
	xor a
	ld e,a
.l7d0a
	ld a,e
	and #03
	ld (ix+#16),a
	ld (ix+#18),a
	ld a,(ix+#20)
	ld (ix+#08),a
	ld a,(ix+#21)
	ld (ix+#09),a
	ld l,(ix+#11)
	ld h,(ix+#12)
	ld a,(hl)
	inc hl
	ld (ix+#17),a
	ld (ix+#11),l
	ld (ix+#12),h
	jp l7b32
.l7d33
	ld ix,l7680
	ld hl,l82c8
	ld (ix+#0f),l
	ld (ix+#10),h
	call l7ca4
	ld ix,l76b6
	ld hl,l837d
	ld (ix+#0f),l
	ld (ix+#10),h
	call l7ca4
	ld ix,l76ec
	ld hl,l84eb
	ld (ix+#0f),l
	ld (ix+#10),h
	call l7ca4
	ret
;
.stop_music	;l7d64
;
	push af
	push bc
	ld a,#01
	ld (l7d88),a
	ld a,#08
	ld c,#00
	call l7660
	inc a
	ld c,#00
	call l7660
	inc a
	ld c,#00
	call l7660
	pop bc
	pop af
	ret
;
.init_music	;l7d81
;
	push af
	xor a
	ld (l7d88),a
	pop af
	ret
.l7d89 equ $ + 1
.l7d88
	db #00,#00
	ld hl,#c000
	ld de,l7e7e
	and a
	sbc hl,de
	ex de,hl
	ld a,#03
	ld (l7d89),a
	ld bc,#0005
	ld ix,l82c8
.l7da0
	ld a,(ix+#00)
	or a
	jr nz,l7dad
	ld hl,l7d89
	dec (hl)
	ret z
	inc ix
.l7dad
	ld l,(ix+#01)
	ld h,(ix+#02)
	and a
	sbc hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	add ix,bc
	jr l7da0
.l7dc0
	nop
.l7dc1
	nop
	ld a,(l7dc1)
	or a
	jr z,l7e18
	ld c,a
	xor a
	ld (l7dc1),a
	ld b,#00
	ld hl,l7e2e
	add hl,bc
	ld a,(hl)
	ld (l7dc0),a
	inc hl
	ld c,(hl)
	ld a,#02
	call l7660
	inc hl
	ld c,(hl)
	ld a,#03
	call l7660
	inc hl
	ld c,(hl)
	ld a,#06
	call l7660
	inc hl
	ld c,(hl)
	ld a,#09
	call l7660
	inc hl
	ld c,(hl)
	ld a,#0b
	call l7660
	inc hl
	ld c,(hl)
	ld a,#0c
	call l7660
	inc hl
	ld c,(hl)
	ld a,#0d
	call l7660
	inc hl
	ld a,(l474c)
	or #12
	and (hl)
	ld (l474c),a
	ld c,a
	ld a,#07
	call l7660
.l7e18
	ld a,(l7dc0)
	or a
	ret z
	dec a
	ld (l7dc0),a
	ret nz
	ld a,(l474c)
	or #12
	ld (l474c),a
	ld c,a
	ld a,#07
.l7e2e equ $ + 1
	call l7660
	ld c,#00
	ld a,#09
	call l7660
	ret
	db #16,#14,#00,#1e,#10,#e8,#03,#00
	db #ed,#00,#16,#10,#00,#0a,#10,#e8
	db #03,#00,#ed,#00,#18,#0c,#00,#01
	db #10,#14,#05,#00,#ed,#00,#18,#c1
	db #0c,#15,#10,#14,#04,#00,#ed,#00
	db #14,#c1,#16,#01,#10,#14,#05,#00
	db #ef,#00,#05,#c1,#16,#1f,#0f,#14
	db #03,#00,#ef,#00,#03,#c1,#01,#0a
.l7e7e equ $ + 6
	db #0f,#14,#01,#00,#ef,#00,#80,#00
.l7e87 equ $ + 7
.l7e82 equ $ + 2
.l7e81 equ $ + 1
	db #06,#ff,#84,#91,#06,#30,#18,#37
	db #18,#30,#0c,#30,#0c,#37,#0c,#37
.l7e92 equ $ + 2
	db #0c,#ff,#88,#00,#0c,#45,#0c,#45
	db #0c,#43,#06,#45,#12,#00,#24,#00
	db #0c,#45,#0c,#45,#0c,#43,#06,#45
	db #12,#43,#06,#45,#0c,#48,#06,#45
.l7eb2 equ $ + 2
	db #0c,#ff,#00,#0c,#45,#0c,#45,#0c
	db #43,#06,#45,#12,#48,#0c,#4a,#0c
	db #48,#0c,#00,#0c,#45,#0c,#48,#0c
	db #4a,#06,#4c,#12,#4a,#06,#48,#0c
.l7ed5 equ $ + 5
	db #4a,#06,#48,#0c,#ff,#00,#0c,#43
	db #06,#44,#06,#45,#06,#48,#0c,#4a
	db #0c,#4c,#0c,#4a,#0c,#48,#12,#00
	db #0c,#4c,#06,#4a,#06,#48,#06,#45
	db #0c,#48,#0c,#45,#0c,#43,#0c,#44
.l7efc equ $ + 4
	db #06,#45,#0c,#ff,#88,#00,#0c,#39
	db #12,#3c,#0c,#3e,#0c,#40,#0c,#3e
	db #0c,#3c,#06,#3e,#06,#3c,#06,#3e
	db #06,#3e,#06,#3e,#06,#3c,#06,#3e
	db #06,#3c,#0c,#3e,#0c,#40,#0c,#43
.l7f26 equ $ + 6
	db #0c,#45,#06,#45,#0c,#ff,#88,#00
	db #0c,#45,#12,#4c,#0c,#4a,#0c,#48
	db #0c,#45,#0c,#43,#06,#45,#0c,#00
	db #0c,#45,#12,#48,#0c,#45,#0c,#43
	db #0c,#40,#0c,#43,#06,#45,#0c,#ff
.l7f48
	db #88,#00,#0c,#45,#12,#40,#0c,#45
	db #0c,#40,#0c,#3e,#0c,#3c,#06,#3e
	db #0c,#00,#0c,#40,#12,#3e,#0c,#3c
	db #0c,#39,#0c,#37,#0c,#38,#06,#39
.l7f6a equ $ + 2
	db #0c,#ff,#88,#39,#18,#39,#12,#39
	db #0c,#39,#06,#39,#0c,#39,#0c,#3c
	db #0c,#39,#18,#39,#12,#39,#0c,#39
	db #06,#39,#0c,#39,#0c,#3b,#0c,#39
	db #18,#39,#12,#39,#0c,#39,#06,#39
	db #0c,#39,#0c,#3e,#0c,#39,#18,#39
	db #12,#39,#0c,#39,#06,#39,#0c,#39
.l7fa4 equ $ + 4
	db #0c,#3c,#0c,#ff,#88,#2d,#0c,#2d
	db #12,#2f,#12,#30,#12,#2f,#12,#2d
	db #0c,#2f,#0c,#2f,#12,#30,#12,#32
	db #12,#30,#12,#2f,#0c,#30,#0c,#30
	db #12,#32,#12,#34,#12,#32,#12,#30
	db #0c,#32,#0c,#32,#12,#34,#12,#32
.l7fd6 equ $ + 6
	db #12,#30,#12,#2d,#0c,#ff,#88,#2d
	db #0c,#2d,#12,#30,#12,#32,#12,#34
	db #12,#32,#0c,#34,#0c,#32,#12,#34
	db #12,#32,#12,#30,#12,#2d,#0c,#2d
	db #30,#28,#12,#2b,#12,#2d,#0c,#2d
	db #30,#28,#12,#2f,#12,#30,#0c,#ff
.l8000
	db #88,#2d,#0c,#2d,#12,#30,#12,#32
	db #12,#34,#12,#32,#0c,#34,#0c,#32
	db #12,#34,#12,#32,#12,#30,#12,#2d
	db #0c,#2d,#30,#2d,#12,#30,#12,#32
	db #0c,#34,#0c,#32,#12,#34,#12,#32
.l802e equ $ + 6
	db #12,#30,#12,#32,#0c,#ff,#88,#34
	db #0c,#34,#12,#35,#12,#34,#12,#32
	db #12,#30,#0c,#32,#0c,#32,#12,#34
	db #12,#32,#12,#30,#12,#2f,#0c,#30
	db #0c,#30,#12,#32,#12,#30,#12,#2f
	db #12,#2d,#0c,#2f,#0c,#2f,#12,#30
	db #12,#32,#12,#30,#12,#32,#0c,#ff
.l8060
	db #88,#34,#0c,#34,#12,#35,#12,#34
	db #12,#32,#12,#30,#0c,#32,#0c,#32
	db #12,#34,#12,#32,#12,#30,#12,#2f
	db #0c,#30,#0c,#30,#12,#32,#12,#30
	db #12,#2f,#12,#2d,#0c,#2f,#0c,#2f
	db #12,#30,#12,#32,#12,#30,#12,#2f
.l8092 equ $ + 2
	db #0c,#ff,#88,#93,#02,#3b,#12,#3c
	db #12,#39,#24,#3b,#0c,#3b,#0c,#3b
	db #12,#3c,#12,#39,#24,#3c,#0c,#39
	db #0c,#3e,#12,#39,#12,#39,#24,#3c
	db #0c,#39,#0c,#40,#12,#3b,#12,#3b
.l80be equ $ + 6
	db #24,#3b,#0c,#3b,#0c,#ff,#88,#93
	db #01,#45,#0c,#45,#0c,#45,#0c,#40
	db #06,#45,#0c,#40,#06,#45,#0c,#40
	db #0c,#45,#0c,#45,#0c,#45,#0c,#45
	db #0c,#40,#06,#45,#0c,#40,#06,#45
	db #0c,#40,#0c,#45,#0c,#45,#0c,#45
	db #0c,#45,#0c,#40,#06,#45,#0c,#40
	db #06,#45,#0c,#40,#0c,#45,#0c,#45
	db #0c,#45,#0c,#45,#0c,#40,#06,#45
	db #0c,#40,#06,#45,#0c,#47,#0c,#48
.l810a equ $ + 2
	db #0c,#ff,#88,#39,#0c,#39,#0c,#3c
	db #0c,#39,#06,#3c,#0c,#39,#06,#3c
	db #0c,#3c,#0c,#39,#0c,#39,#0c,#39
	db #0c,#3c,#0c,#39,#06,#3c,#0c,#39
	db #06,#3c,#0c,#3e,#0c,#39,#0c,#39
	db #0c,#39,#0c,#3c,#0c,#39,#06,#3c
	db #0c,#39,#06,#3c,#0c,#40,#0c,#39
	db #0c,#39,#0c,#39,#0c,#3c,#0c,#39
	db #06,#3c,#0c,#39,#06,#3c,#0c,#39
	db #0c,#37,#0c,#39,#0c,#39,#0c,#3c
	db #0c,#39,#06,#3c,#0c,#39,#06,#3c
	db #0c,#3c,#0c,#39,#0c,#39,#0c,#39
	db #0c,#3c,#0c,#39,#06,#3c,#0c,#39
	db #06,#3c,#0c,#3e,#0c,#39,#0c,#39
	db #0c,#39,#0c,#3c,#0c,#39,#06,#3c
	db #0c,#39,#06,#3c,#0c,#40,#0c,#39
	db #0c,#39,#0c,#39,#0c,#3c,#0c,#39
	db #06,#37,#0c,#34,#06,#32,#0c,#30
	db #0c,#2d,#0c,#83,#21,#30,#93,#05
.l81a4 equ $ + 4
	db #87,#15,#90,#ff,#87,#2d,#c0,#ff
.l81a8
	db #86,#48,#18,#00,#24,#4f,#18,#4f
.l81b2 equ $ + 2
	db #0c,#ff,#86,#3c,#0c,#43,#18,#43
	db #0c,#00,#06,#40,#06,#40,#0c,#82
.l81c3 equ $ + 3
	db #3c,#18,#ff,#86,#3c,#0c,#43,#0c
	db #82,#3c,#0c,#86,#3c,#06,#3c,#06
	db #43,#0c,#3c,#06,#43,#0c,#3c,#06
.l81dc equ $ + 4
	db #82,#3c,#0c,#ff,#84,#91,#04,#2f
	db #18,#2b,#12,#82,#d1,#00,#34,#12
	db #84,#91,#04,#24,#0c,#24,#0c,#24
.l81f2 equ $ + 2
	db #0c,#ff,#86,#c1,#09,#48,#0c,#4f
	db #18,#4f,#0c,#48,#0c,#48,#0c,#4f
.l8204 equ $ + 4
	db #0c,#4f,#0c,#ff,#81,#21,#60,#1f
.l820e equ $ + 6
	db #60,#26,#60,#24,#60,#ff,#81,#21
	db #24,#21,#18,#21,#18,#21,#0c,#1f
	db #24,#1f,#18,#1f,#18,#1f,#0c,#26
	db #24,#26,#18,#26,#18,#26,#0c,#24
	db #24,#24,#18,#21,#18,#1f,#0c,#ff
.l8230
	db #81,#2d,#18,#2d,#0c,#21,#06,#2d
	db #0c,#21,#06,#2d,#0c,#21,#0c,#2d
	db #0c,#2b,#18,#2b,#0c,#1f,#06,#2b
	db #0c,#1f,#06,#2b,#0c,#1f,#0c,#2b
	db #0c,#32,#18,#32,#0c,#26,#06,#32
	db #0c,#26,#06,#32,#0c,#26,#0c,#32
	db #0c,#30,#18,#30,#0c,#24,#06,#30
	db #0c,#24,#06,#30,#0c,#24,#0c,#30
.l8272 equ $ + 2
	db #0c,#ff,#81,#21,#60,#1f,#60,#29
.l827c equ $ + 4
	db #60,#28,#60,#ff,#81,#2d,#18,#2d
	db #0c,#21,#06,#2d,#0c,#21,#06,#2d
	db #0c,#21,#0c,#2d,#0c,#2b,#18,#2b
	db #0c,#1f,#06,#2b,#0c,#1f,#06,#2b
	db #0c,#1f,#0c,#2b,#0c,#29,#18,#29
	db #0c,#1d,#06,#29,#0c,#1d,#06,#29
	db #0c,#1d,#0c,#29,#0c,#28,#18,#28
	db #0c,#1c,#06,#28,#0c,#1c,#06,#28
.l82be equ $ + 6
	db #0c,#1c,#0c,#28,#0c,#ff,#87,#00
	db #60,#00,#60,#00,#60,#00,#60,#ff
.l82c8
	db #20
	dw l7e82
.l82cd equ $ + 2
	db #00,#00,#01
	dw l7e92
	db #00,#00,#01
	dw l7eb2
	db #00,#00,#01
	dw l7e92
	db #00,#00,#01
	dw l7ed5
	db #00,#00,#01
	dw l7efc
	db #00,#00,#01
	dw l7f26
	db #00,#00,#01
	dw l7efc
	db #00,#00,#01
	dw l7f26
	db #00,#00,#01
	dw l7e92
	db #00,#00,#01
	dw l7eb2
	db #00,#00,#01
	dw l7e92
	db #00,#00,#01
	dw l7ed5
	db #00,#00,#01
	dw l7efc
	db #00,#00,#01
	dw l7f26
	db #00,#00,#01
	dw l7efc
	db #00,#00,#01
	dw l7f48
	db #00,#00,#03
	dw l7f6a
	db #00,#00,#40
	dw l7e7e
	db #00,#00,#02
	dw l7fa4
	db #00,#00,#01
	dw l7fd6
	db #00,#00,#01
	dw l8000
	db #00,#00,#01
	dw l802e
	db #00,#00,#01
	dw l8060
	db #00,#00,#02
	dw l8092
	db #00,#00,#03
	dw l7f6a
	db #00,#00,#40
	dw l7e7e
	db #00,#00,#02
	dw l7fa4
	db #00,#00,#01
	dw l7fd6
	db #00,#00,#01
	dw l8000
	db #00,#00,#01
	dw l802e
	db #00,#00,#01
	dw l8060
	db #00,#00,#02
	dw l8092
	db #00,#00,#02
	dw l80be
	db #00,#00,#01
	dw l810a
	db #00,#00,#01
	dw l82be
	db #00,#00,#00
.l837d
	db #20
	dw l7e7e
.l8382 equ $ + 2
	db #00,#00,#06
	dw l81a8
	db #00,#00,#20
	dw l81b2
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#03
	dw l81c3
	db #00,#00,#01
	dw l81dc
	db #00,#00,#20
	dw l7e7e
	db #00,#00,#01
	dw l82be
	db #00,#00,#00
.l84eb
	db #40
	dw l7e7e
.l84f0 equ $ + 2
	db #00,#00,#04
	dw l81f2
	db #00,#00,#02
	dw l8204
	db #00,#00,#02
	dw l820e
	db #00,#00,#0a
	dw l8230
	db #00,#00,#02
	dw l8230
	db #00,#00,#01
	dw l820e
	db #00,#00,#01
	dw l8204
	db #00,#00,#01
	dw l8204
	db #00,#00,#07
	dw l8272
	db #00,#00,#02
	dw l8230
	db #00,#00,#01
	dw l820e
	db #00,#00,#01
	dw l8204
	db #00,#00,#01
	dw l8204
	db #00,#00,#07
	dw l8272
	db #00,#00,#04
	dw l827c
	db #00,#00,#01
	dw l81a4
	db #00,#00,#01
	dw l82be
	db #00,#00,#00,#00,#00,#00
	db #40,#c4,#00,#00,#00,#00,#00,#00
.l474c			; added by Megachur
	db #00
;
; noise &7dc2 ? 7dc1 = &28 &32 &3c &46 &0a &7dc2 = 1
;
.music_info
	db "Sapiens (1986)(Loriciels)(Gilles Soulet)",0
	db "",0

	read "music_end.asm"
