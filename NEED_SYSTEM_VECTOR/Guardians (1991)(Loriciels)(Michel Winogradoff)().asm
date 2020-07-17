; Music of Guardians (1991)(Loriciels)(Michel Winogradoff)()
; Ripped by Megachur the 25/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GUARDIAN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #1500
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

.l1500
	call l16e9
	ld hl,#c000
	ld (l1a8a),hl
	call l170b

	ld hl,#c000
	ld de,#4000
	ld bc,#4000
	ldir			; clear screen
	ld b,#09
	ld hl,l1661
	ld de,#4000
	call #bc77
	ld hl,#4000
	call #bc83
	call #bc7a		; load file

	ld de,#4000
	ld hl,#c01e
	ld (l1a8a),hl
	ld bc,#0050
	ld (l1a88),bc
	ld a,#28
	ld (l1a8c),a
	ld a,#14
	ld (l1a8d),a
	call l171c
	ld hl,l1aad
	ld (l1a8a),hl
	ld b,#08
	ld hl,l166b
	ld de,#4000
	call #bc77
	ld hl,#4000
	call #bc83
	call #bc7a
	ld b,#f5
.l1564
	in a,(c)
	rra
	jr nc,l1564
	halt
	halt
	halt
	call l16e9

	ld hl,#4000
	ld de,#c000
	ld bc,#4000
	ldir

	ld b,#f5
.l157c
	in a,(c)
	rra
	jr nc,l157c
	halt
	halt
	halt
	ld hl,l1aad
	ld (l1a8a),hl
	call l16b9
.l158d
	call l17a6
	ld a,(l178b)
	cp #00
.l1595
	di
	jp nz,l1595
	ei
.l159a		; init music ?
	ld hl,l15a3
	ld (l1a88),hl
	jp l1695
.l15a3
	ld hl,l1a9c
	ld (l1a8a),hl
	call l16ce
	ld b,#0e
.l15ae
	push bc
	dec b
	ld a,b
	ld c,#00
	call l19ea
	pop bc
	djnz l15ae
	ld a,#07
	ld c,#38
	call l19ea
	ld a,#08
	ld c,#0c
	call l19ea
	ld a,#09
	ld c,#0c
	call l19ea
	ld a,#0a
	ld c,#10
	call l19ea
	ld a,#01
	ld (l1abe),a
.l15da
	ld hl,l1a8f
	ld b,#0a
.l15df
	ld a,(hl)
	cp #ff
	jr nz,l15e9
	inc hl
	djnz l15df
	jr l15da
.l15e9
	ld b,#0e
.l15eb
	push bc
	dec b
	ld a,b
	ld c,#00
	call l19ea
	pop bc
	djnz l15eb
	ld a,#07
	ld c,#3f
	call l19ea
	ld hl,l1606
	ld (l1a88),hl
	jp l1680
.l1606
	ld hl,l159a
	ld bc,l158d
	xor a
	sbc hl,bc
	ld b,l
	ld hl,l158d
	ld de,l1636
.l1616
	ld a,(hl)
	ld c,a
	ld a,(de)
	cp c
	jp nz,l1500
	inc hl
	inc de
	djnz l1616
	ld hl,l165d
	ld bc,l1643
	push bc
	xor a
	sbc hl,bc
	ld b,h
	ld c,l
	pop hl
	ld de,#4000
	ldir
	jp #4000
.l1636
	call l17a6
	ld a,(l178b)
	cp #00
	di
	jp nz,l1595
	ei
.l1643
	ld b,#0b
	ld hl,l1674
	ld de,#0170
	call #bc77
	ld hl,#0170
	call #bc83
	call #bc7a
	ld hl,#4000
	jp #0170
.l165d
	jp l18f2
	ret
.l1661
	db #56,#45,#4e,#55,#53,#2e,#42,#49
.l166b equ $ + 2
	db #4e,#00,#4d,#41,#52,#53,#2e,#42
.l1674 equ $ + 3
	db #49,#4e,#00,#4a,#55,#50,#49,#54
	db #45,#52,#2e,#42,#49,#4e,#00
.l1680
	di
	ld hl,(l1a7a)
	ld sp,hl
	ld hl,l1a7c
	ld de,#0038
	ld bc,#0008
	ldir
	ei
	ld hl,(l1a88)
	jp (hl)
.l1695
	di
	ld hl,#0038
	ld de,l1a7c
	ld bc,#0008
	ldir
	ld hl,l165d
	ld de,#0038
	ld bc,#0004
	ldir
	ld (l1a7a),sp
	ld hl,l1a78
	ld sp,hl
	ei
	ld hl,(l1a88)
	jp (hl)
.l16b9
	ld a,#0f
	ld hl,(l1a8a)
.l16be
	ld b,(hl)
	ld c,(hl)
	push af
	push hl
	call #bc32
	pop hl
	pop af
	inc hl
	dec a
	cp #ff
	jr nz,l16be
	ret
.l16ce
	ld a,#0f
	ld hl,(l1a8a)
.l16d3
	push af
	ld b,#7f
	and #0f
	ld c,a
	out (c),c
	ld a,(hl)
	or #40
	ld c,a
	out (c),c
	inc hl
	pop af
	dec a
	cp #ff
	jr nz,l16d3
	ret
.l16e9
	ld a,#0f
.l16eb
	ld bc,#0000
	push af
	call #bc32
	pop af
	dec a
	cp #ff
	jr nz,l16eb
	ret
	ld a,#0f
	ld e,#54
	ld b,#7f
.l16ff
	ld c,a
	out (c),c
	ld c,e
	out (c),c
	dec a
	cp #ff
	jr nz,l16ff
	ret
.l170b
	xor a
	ld hl,(l1a8a)
	ld b,#80
.l1711
	push bc
	ld b,#80
.l1714
	ld (hl),a
	inc hl
	djnz l1714
	pop bc
	djnz l1711
	ret
.l171c
	ld hl,(l1a8a)
	ld bc,l1d8c
	ld iy,(l1a88)
	add iy,bc
	ld a,(l1a8c)
	ld b,a
.l172c
	push bc
	ld a,(l1a8d)
	ld b,a
.l1731
	push bc
	push hl
	ld a,(de)
	ld c,(iy+#00)
	ld b,(iy+#01)
	add hl,bc
	ld (hl),a
	inc de
	pop hl
	inc hl
	pop bc
	djnz l1731
	ld hl,(l1a8a)
	inc iy
	inc iy
	pop bc
	djnz l172c
	ret
.l174d
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
	set 6,c
	ld b,#0a
	ld hl,l1a8f
	ld a,#ff
	ld (l1a8e),a
.l1771
	push bc
	dec b
	ld a,b
	ld b,#f6
	or c
	out (c),a
	ld b,#f4
	in a,(c)
	ld (hl),a
	inc hl
	pop bc
	djnz l1771
	pop bc
	ld a,#82
	out (c),a
	dec b
	out (c),c
	ret
.l178c equ $ + 1
.l178b
	db #00,#42,#00,#28,#00,#c1,#03,#c1
.l1796 equ $ + 3
.l1795 equ $ + 2
	db #2a,#ff,#27,#c4,#c9,#c5,#c1,#c6
.l179f equ $ + 4
	db #c2,#c7,#c3,#c8,#20,#27,#20,#28
	db #00,#c1,#03
.l17a6
	di
	ld a,(#a8a6)
	ld (l1795),a
	xor a
	ld (l178b),a
	ld bc,#fa7e
	ld a,#01
	out (c),a
	call l17ea
	call l1896
	call l1855
.l17c1
	ld d,#27
	call l17f7
	ld bc,#fa7e
	xor a
	out (c),a
	ld a,(l1795)
	ld (#a8a6),a
	ei
	ret
.l17d4
	push bc
	ld bc,#fb7e
	push af
.l17d9
	in a,(c)
	add a
	jr nc,l17d9
	pop af
	inc c
	out (c),a
	ld a,#05
.l17e4
	dec a
	nop
	jr nz,l17e4
	pop bc
	ret
.l17ea
	ld bc,#ea60
.l17ed
	dec bc
	push ix
	pop ix
	ld a,b
	or c
	jr nz,l17ed
	ret
.l17f7
	push bc
	push hl
.l17f9
	ld hl,l1795
	ld a,d
	cp (hl)
	jr z,l182f
	ld a,#0f
	call l17d4
	xor a
	call l17d4
	ld a,d
	call l17d4
	ld a,d
	sub (hl)
	jr nc,l1813
	neg
.l1813
	ld c,#00
	inc a
	ld b,a
.l1817
	ld a,#12
.l1819
	dec a
	jr nz,l1819
	dec bc
	ld a,b
	or c
	jr nz,l1817
	ld a,#08
	call l17d4
	call l1832
	jr nz,l17f9
	ld a,d
	ld (l1795),a
.l182f
	pop hl
	pop bc
	ret
.l1832
	ld bc,#fb7e
	ld hl,l179f
	push hl
.l1839
	in a,(c)
	cp #c0
	jr c,l1839
	inc c
	in a,(c)
	dec c
	ld (hl),a
	inc hl
	ld a,#05
.l1847
	dec a
	jr nz,l1847
	in a,(c)
	and #10
	jr nz,l1839
	pop hl
	ld a,(hl)
	and #c0
	ret
.l1855
	ld ix,l178c
	ld (ix+#00),#42
	ld (ix+#05),#03
	ld hl,l178c
	ld b,#09
.l1866
	ld a,(hl)
	inc hl
	call l17d4
	djnz l1866
	ld bc,#fb7e
	ld de,#0207
	ld hl,l178b
	jr l1882
.l1878
	ld a,d
	or e
	jr z,l1882
	inc c
	in a,(c)
	ld (hl),a
	dec c
	dec de
.l1882
	in a,(c)
	jp p,l1882
	and #20
	jr nz,l1878
	ld a,(l178b)
	cp #f7
	ret nz
	xor a
	ld (l178b),a
	ret
.l1896
	ld d,#28
	call l17f7
	ld b,#09
	ld ix,l179f
	ld de,l1796
.l18a4
	push bc
	ld a,#4a
	call l17d4
	xor a
	call l17d4
	call l1832
	ld a,(ix+#06)
	sub #02
	jr nz,l18e7
	ld a,(ix+#05)
	cp #c1
	jr c,l18e7
	cp #ca
	jr nc,l18e7
	ld (de),a
	inc de
	pop bc
	djnz l18a4
	ld b,#09
	ld de,l1796
.l18cd
	push bc
	ld a,#4a
	call l17d4
	xor a
	call l17d4
	call l1832
	ld a,(ix+#05)
	ex de,hl
	cp (hl)
	jr nz,l18e7
	inc hl
	ex de,hl
	pop bc
	djnz l18cd
	ret
.l18e7
	pop bc
	ld a,#01
	ld (l178b),a
	ld hl,l17c1
	ex (sp),hl
	ret
;
.l18f2		; music player
;
	di
	push hl
	push de
	push bc
	push af
	ld b,#f5
	in a,(c)
	rra
	jr nc,l1901
	call l174d
.l1901
	ld a,(l1abe)
	cp #01
	jp nz,l19e4
	ld a,(l1abf)
	dec a
	ld (l1abf),a
	jp z,l1922
	cp #0e
	jp nz,l194f
	ld c,#00
	ld a,#08
	call l19ea
	jp l194f
.l1922
	ld hl,(l1ac2)
	ld a,(hl)
	cp #ff
	jp nz,l193a
	ld hl,l1d1f	; reset music !
	ld (l1ac6),hl
	ld hl,l1b49
	ld (l1ac4),hl
	ld hl,l1ac8
.l193a
	xor a
	ld c,(hl)
	call l19ea
	inc hl
	ld a,(hl)
	ld (l1abf),a
	inc hl
	ld (l1ac2),hl
	ld a,#08
	ld c,#0d
	call l19ea
.l194f
	ld a,(l1ac0)
	dec a
	ld (l1ac0),a
	jp z,l1967
	cp #10
	jp p,l1991
	ld c,a
	ld a,#09
	call l19ea
	jp l1991
.l1967
	ld hl,(l1ac4)
	ld a,(hl)
	cp #ff
	jp nz,l1973
	ld hl,l1b49
.l1973
	ld a,#02
	ld c,(hl)
	call l19ea
	inc hl
	ld a,#03
	ld c,(hl)
	call l19ea
	inc hl
	ld a,(hl)
	ld (l1ac0),a
	inc hl
	inc hl
	ld (l1ac4),hl
	ld a,#09
	ld c,#0c
	call l19ea
.l1991
	ld a,(l1ac1)
	dec a
	ld (l1ac1),a
	jp nz,l19e4
	ld hl,(l1ac6)
	ld a,(hl)
	cp #ff
	jp nz,l19a7
	ld hl,l1d1f
.l19a7
	ld a,#04
	ld c,(hl)
	call l19ea
	inc hl
	ld a,(hl)
	ld (l1ac1),a
	inc hl
	ld c,(hl)
	inc hl
	ld (l1ac6),hl
	ld hl,l1d74
	sla c
	sla c
	ld b,#00
	add hl,bc
	ld a,#05
	ld c,(hl)
	call l19ea
	inc hl
	ld a,#07
	ld c,(hl)
	call l19ea
	inc hl
	ld a,#06
	ld c,(hl)
	call l19ea
	inc hl
	ld a,#0c
	ld c,(hl)
	call l19ea
	ld a,#0d
	ld c,#09
	call l19ea
.l19e4
	pop af
	pop bc
	pop de
	pop hl
	ei
	ret
.l19ea
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
	ret
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
.l1a7c equ $ + 4
.l1a7a equ $ + 2
.l1a78
	db #00,#00,#00,#00,#c3,#41,#b9,#c9
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1a8f equ $ + 7
.l1a8e equ $ + 6
.l1a8d equ $ + 5
.l1a8c equ $ + 4
.l1a8a equ $ + 2
.l1a88
	db #a3,#15,#ad,#1a,#28,#14,#00,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#30,#00,#40
.l1a9c
	db #0b,#03,#0a,#0e,#0c,#1c,#1c,#14
	db #0b,#13,#1b,#17,#1f,#15,#04,#14
.l1aad equ $ + 1
	db #ff,#1a,#19,#18,#0f,#06,#03,#03
	db #00,#1a,#14,#17,#0b,#0e,#02,#01
.l1ac2 equ $ + 6
.l1ac1 equ $ + 5
.l1ac0 equ $ + 4
.l1abf equ $ + 3
.l1abe equ $ + 2
	db #00,#ff,#00,#01,#01,#01,#c8,#1a
.l1ac8 equ $ + 4
.l1ac6 equ $ + 2
.l1ac4
	db #49,#1b,#1f,#1d,#6a,#ff,#8e,#55
	db #71,#55,#8e,#aa,#8e,#1c,#6a,#1c
	db #5f,#1c,#6a,#ff,#8e,#55,#71,#2a
	db #6a,#2a,#5f,#aa,#47,#55,#6a,#ff
	db #8e,#55,#71,#55,#8e,#aa,#8e,#1c
	db #6a,#1c,#5f,#1c,#6a,#ff,#8e,#55
	db #6a,#2a,#71,#2a,#7f,#55,#71,#2a
	db #7f,#2a,#8e,#55,#6a,#ff,#8e,#55
	db #71,#55,#8e,#aa,#8e,#1c,#6a,#1c
	db #5f,#1c,#6a,#ff,#8e,#55,#71,#2a
	db #6a,#2a,#5f,#aa,#47,#55,#6a,#ff
	db #8e,#55,#71,#55,#8e,#aa,#8e,#1c
	db #6a,#1c,#5f,#1c,#6a,#ff,#8e,#55
	db #50,#2a,#54,#2a,#5f,#2a,#6a,#2a
	db #54,#2a,#5f,#2a,#6a,#2a,#5f,#2a
	db #47,#ff,#47,#ff,#00,#aa,#00,#ff
.l1b49 equ $ + 5
	db #00,#ff,#00,#aa,#ff,#1c,#01,#55
	db #00,#1c,#01,#2a,#00,#1c,#01,#2a
	db #00,#1c,#01,#2a,#00,#1c,#01,#2a
	db #00,#1c,#01,#55,#00,#00,#00,#55
	db #00,#1c,#01,#55,#00,#00,#00,#55
	db #00,#1c,#01,#55,#00,#1c,#01,#55
	db #00,#1c,#01,#2a,#00,#1c,#01,#2a
	db #00,#1c,#01,#2a,#00,#1c,#01,#2a
	db #00,#1c,#01,#55,#00,#00,#00,#55
	db #00,#1c,#01,#2a,#00,#1c,#01,#2a
	db #00,#3f,#01,#2a,#00,#e1,#00,#2a
	db #00,#1c,#01,#55,#00,#1c,#01,#55
	db #00,#1c,#01,#2a,#00,#1c,#01,#2a
	db #00,#1c,#01,#2a,#00,#1c,#01,#2a
	db #00,#1c,#01,#55,#00,#00,#00,#55
	db #00,#1c,#01,#2a,#00,#1c,#01,#2a
	db #00,#d5,#00,#2a,#00,#e1,#00,#2a
	db #00,#1c,#01,#2a,#00,#3f,#01,#2a
	db #00,#1c,#01,#55,#00,#1c,#01,#2a
	db #00,#1c,#01,#2a,#00,#1c,#01,#2a
	db #00,#1c,#01,#2a,#00,#1c,#01,#55
	db #00,#00,#00,#55,#00,#1c,#01,#2a
	db #00,#1c,#01,#2a,#00,#7b,#01,#2a
	db #00,#52,#01,#2a,#00,#1c,#01,#55
	db #00,#3f,#01,#55,#00,#3f,#01,#2a
	db #00,#3f,#01,#2a,#00,#3f,#01,#2a
	db #00,#3f,#01,#2a,#00,#3f,#01,#55
	db #00,#00,#00,#55,#00,#52,#01,#2a
	db #00,#1c,#01,#2a,#00,#2d,#01,#2a
	db #00,#52,#01,#2a,#00,#7b,#01,#2a
	db #00,#aa,#01,#2a,#00,#3f,#01,#55
	db #00,#3f,#01,#2a,#00,#3f,#01,#2a
	db #00,#3f,#01,#2a,#00,#3f,#01,#2a
	db #00,#3f,#01,#55,#00,#00,#00,#55
	db #00,#2d,#01,#2a,#00,#2d,#01,#2a
	db #00,#52,#01,#2a,#00,#ef,#00,#2a
	db #00,#1c,#01,#55,#00,#52,#01,#55
	db #00,#52,#01,#2a,#00,#52,#01,#2a
	db #00,#52,#01,#2a,#00,#52,#01,#2a
	db #00,#52,#01,#55,#00,#00,#00,#55
	db #00,#52,#01,#55,#00,#00,#00,#55
	db #00,#3f,#01,#2a,#00,#52,#01,#2a
	db #00,#aa,#01,#55,#00,#aa,#01,#2a
	db #00,#aa,#01,#2a,#00,#aa,#01,#2a
	db #00,#aa,#01,#2a,#00,#aa,#01,#55
	db #00,#00,#00,#55,#00,#aa,#01,#2a
	db #00,#aa,#01,#2a,#00,#7b,#01,#2a
	db #00,#e1,#00,#2a,#00,#1c,#01,#55
	db #00,#1c,#01,#55,#00,#1c,#01,#2a
	db #00,#1c,#01,#2a,#00,#1c,#01,#2a
	db #00,#1c,#01,#2a,#00,#1c,#01,#55
	db #00,#00,#00,#55,#00,#1c,#01,#55
	db #00,#00,#00,#55,#00,#1c,#01,#55
	db #00,#1c,#01,#55,#00,#1c,#01,#2a
	db #00,#1c,#01,#2a,#00,#1c,#01,#2a
	db #00,#1c,#01,#2a,#00,#1c,#01,#55
	db #00,#00,#00,#55,#00,#1c,#01,#2a
	db #00,#1c,#01,#2a,#00,#d5,#00,#2a
	db #00,#e1,#00,#2a,#00,#1c,#01,#55
.l1d1f equ $ + 3
	db #00,#ff,#ff,#50,#55,#00,#38,#2a
	db #01,#38,#2a,#01,#22,#2a,#02,#00
	db #2a,#03,#00,#2a,#03,#00,#2a,#03
	db #00,#2a,#03,#00,#2a,#03,#00,#55
	db #04,#00,#2a,#05,#00,#2a,#03,#50
	db #2a,#00,#00,#2a,#03,#00,#55,#00
	db #38,#2a,#01,#38,#2a,#01,#22,#2a
	db #02,#00,#2a,#03,#00,#2a,#03,#00
	db #2a,#03,#00,#55,#03,#00,#2a,#03
	db #00,#2a,#03,#00,#2a,#05,#00,#2a
	db #03,#50,#2a,#00,#00,#2a,#03,#ff
.l1d74
	db #04,#18,#14,#04,#02,#38,#00,#06
	db #01,#38,#00,#06,#00,#1c,#00,#01
	db #00,#1c,#00,#0c,#00,#1c,#19,#02
.l1d8c
	db #00,#00,#00,#08,#00,#10,#00,#18
	db #00,#20,#00,#28,#00,#30,#00,#38
	db #50,#00,#50,#08,#50,#10,#50,#18
	db #50,#20,#50,#28,#50,#30,#50,#38
	db #a0,#00,#a0,#08,#a0,#10,#a0,#18
	db #a0,#20,#a0,#28,#a0,#30,#a0,#38
	db #f0,#00,#f0,#08,#f0,#10,#f0,#18
	db #f0,#20,#f0,#28,#f0,#30,#f0,#38
	db #40,#01,#40,#09,#40,#11,#40,#19
	db #40,#21,#40,#29,#40,#31,#40,#39
	db #90,#01,#90,#09,#90,#11,#90,#19
	db #90,#21,#90,#29,#90,#31,#90,#39
	db #e0,#01,#e0,#09,#e0,#11,#e0,#19
	db #e0,#21,#e0,#29,#e0,#31,#e0,#39
	db #30,#02,#30,#0a,#30,#12,#30,#1a
	db #30,#22,#30,#2a,#30,#32,#30,#3a
	db #80,#02,#80,#0a,#80,#12,#80,#1a
	db #80,#22,#80,#2a,#80,#32,#80,#3a
	db #d0,#02,#d0,#0a,#d0,#12,#d0,#1a
	db #d0,#22,#d0,#2a,#d0,#32,#d0,#3a
	db #20,#03,#20,#0b,#20,#13,#20,#1b
	db #20,#23,#20,#2b,#20,#33,#20,#3b
	db #70,#03,#70,#0b,#70,#13,#70,#1b
	db #70,#23,#70,#2b,#70,#33,#70,#3b
	db #c0,#03,#c0,#0b,#c0,#13,#c0,#1b
	db #c0,#23,#c0,#2b,#c0,#33,#c0,#3b
	db #10,#04,#10,#0c,#10,#14,#10,#1c
	db #10,#24,#10,#2c,#10,#34,#10,#3c
	db #60,#04,#60,#0c,#60,#14,#60,#1c
	db #60,#24,#60,#2c,#60,#34,#60,#3c
	db #b0,#04,#b0,#0c,#b0,#14,#b0,#1c
	db #b0,#24,#b0,#2c,#b0,#34,#b0,#3c
	db #00,#05,#00,#0d,#00,#15,#00,#1d
	db #00,#25,#00,#2d,#00,#35,#00,#3d
	db #50,#05,#50,#0d,#50,#15,#50,#1d
	db #50,#25,#50,#2d,#50,#35,#50,#3d
	db #a0,#05,#a0,#0d,#a0,#15,#a0,#1d
	db #a0,#25,#a0,#2d,#a0,#35,#a0,#3d
	db #f0,#05,#f0,#0d,#f0,#15,#f0,#1d
	db #f0,#25,#f0,#2d,#f0,#35,#f0,#3d
	db #40,#06,#40,#0e,#40,#16,#40,#1e
	db #40,#26,#40,#2e,#40,#36,#40,#3e
	db #90,#06,#90,#0e,#90,#16,#90,#1e
	db #90,#26,#90,#2e,#90,#36,#90,#3e
	db #e0,#06,#e0,#0e,#e0,#16,#e0,#1e
	db #e0,#26,#e0,#2e,#e0,#36,#e0,#3e
	db #30,#07,#30,#0f,#30,#17,#30,#1f
	db #30,#27,#30,#2f,#30,#37,#30,#3f
	db #80,#07,#80,#0f,#80,#17,#80,#1f
	db #80,#27,#80,#2f,#80,#37,#80,#3f
	db #00,#00,#00,#00
;
; #165d
; jp #18f2	; interrupt set at #38
;
.music_info
	db "Guardians (1991)(Loriciels)(Michel Winogradoff)",0
	db "",0

	read "music_end.asm"
