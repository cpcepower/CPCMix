; Music of Pixel Free (2022)(Public Domain)(Glafouk)(StArkos)
; Ripped by Megachur the 09/06/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PIXELFRE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #14d3

	read "music_header.asm"

	jp l14dc	; init
	jp l15a1	; play
	jp l158f	; stop
;
.real_init_music
.l14dc
;
	ld de,#0004
	add hl,de
	ld de,l1e84
	ldi
	ldi
	ld de,l1eb8
	ldi
	ldi
.l14ef equ $ + 1
	ld de,l168a
	ldi
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l1c6e),bc
	ld (l1c98),bc
	add a
	ld e,a
	ld d,#00
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,#0005
	add hl,de
	ld de,l181f
	ldi
	ld de,l1678
	ldi
	ld (l15b5),hl
	ld hl,l1559
	ld bc,#0e00
	call l1556
.l1524
	inc c
	ld hl,l1573
	ld b,#03
	call l1556
	ld hl,l1577
	ld bc,#0db7
	call l1556
	ld a,#ff
	ld (l1bff),a
	ld hl,(l168a)
	ld e,(hl)
	inc hl
.l1540
	ld d,(hl)
	ex de,hl
	inc hl
	ld (l1d1c),hl
	ld (l1aa3),hl
	ld (l1ad2),hl
	ld (l1b01),hl
	ret
.l1550
	ld e,(hl)
.l1551
	inc hl
	ld d,(hl)
	inc hl
.l1554
	ld a,c
	ld (de),a
.l1556
	djnz l1550
	ret
.l1559
	inc h
	jr l1581
	jr l1551
	jr l1554
	jr l1524
	add hl,de
	jp #8619
	jr l14ef
	jr l15bf
	add hl,de
	ld d,(hl)
	add hl,de
	inc h
	ld a,(de)
	dec h
	ld a,(de)
.l1573 equ $ + 2
	ld bc,#b01c
	dec d
	xor d
	dec d
.l1577
	ld h,#18
	push af
	jr l1540
	add hl,de
	ld b,l
	jr l1594
	add hl,de
.l1581
	ex (sp),hl
	add hl,de
	ld l,h
	jr l15c1
	add hl,de
	ld a,(bc)
	ld a,(de)
	adc b
	jr l15e3
	add hl,de
	ld h,#1a
;
.stop_music
.l158f
;
	ld (l1c1e),sp
	xor a
.l1594
	ld l,a
	ld h,a
	ld (l1b8e),a
	ld (l1bbd),hl
	ld a,#3f
	jp l1b20
;
.play_music
.l15a1
;
	ld (l1c1e),sp
	xor a
	ld (l1fd2),a
.l15aa equ $ + 1
	ld a,#01
	dec a
	jp nz,l1820
.l15b0 equ $ + 1
	ld a,#01
	dec a
	jr nz,l15f8
.l15b5 equ $ + 1
	ld sp,#0000
	pop hl
	ld a,l
	or h
	jr nz,l15bf
	pop hl
	ld sp,hl
	pop hl
.l15c1 equ $ + 2
.l15bf
	ld (l1642),hl
	pop hl
	ld (l16e3),hl
	pop hl
	ld (l1787),hl
	pop hl
	ld (l15b5),sp
	ld sp,hl
	pop hl
	ld c,l
	ld a,h
	ld (l167a),a
	pop hl
	ld a,l
	ld (l171e),a
	ld a,h
	ld (l17c2),a
	pop hl
	ld (l1602),hl
.l15e3
	pop hl
	ld (l161f),hl
	xor a
	ld (l15fc),a
	ld (l1619),a
	ld (l1636),a
	ld (l16d7),a
	ld (l177b),a
	ld a,c
.l15f8
	ld (l15b0),a
.l15fc equ $ + 1
	ld a,#00
	sub #01
	jr nc,l1615
.l1602 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l1612
	jr nz,l160e
	ld a,(hl)
	inc hl
.l160e
	ld (l181f),a
	xor a
.l1612
	ld (l1602),hl
.l1615
	ld (l15fc),a
.l1619 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l1632
.l161f equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l162f
	jr nz,l162b
	ld a,(hl)
	inc hl
.l162b
	ld (l1fd2),a
	xor a
.l162f
	ld (l161f),hl
.l1632
	ld (l1619),a
.l1636 equ $ + 1
	ld a,#00
	sub #01
	jr c,l1641
	ld (l1636),a
	jp l16d6
.l1642 equ $ + 1
.l1641
	ld hl,#0000
	ld c,(hl)
	inc hl
	ld a,c
	and #3f
	cp #3c
	jr c,l1677
	sub #3c
	jp z,l1c21
	dec a
	jr z,l1667
	dec a
	jr z,l165c
	ld a,(hl)
	inc hl
	jr l1679
.l165c
	ld a,c
	rlca
	rlca
	and #03
	inc a
	ld (l1636),a
	jr l16d3
.l1667
	ld a,(hl)
	ld (l1636),a
	inc hl
	jr l16d3
.l166f equ $ + 1
.l166e
	ld de,#0000
	ld (l1aa3),de
	jr l169b
.l1678 equ $ + 1
.l1677
	add #00
.l167a equ $ + 1
.l1679
	add #00
	ld (l1a98),a
	rl c
	jr nc,l166e
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	add hl,hl
.l168a equ $ + 1
	ld de,#0000
	add hl,de
	ld sp,hl
	pop hl
	ld a,(hl)
	inc hl
	ld (l16ac),a
	ld (l1aa3),hl
	ld (l166f),hl
	exx
.l169b
	ex de,hl
	xor a
	ld l,a
	ld h,a
	ld (l1886),hl
	ld (l185c),a
	ld (l1879),a
	ld (l1aa1),a
.l16ac equ $ + 1
	ld a,#00
	ld (l1aaf),a
	ld a,#b7
	ld (l1888),a
	ld a,(l18de)
	ld (l18dd),a
	ld a,(l18e2)
	ld (l18e1),a
	ld hl,(l18df)
	ld (l1849),hl
	ld hl,(l18e3)
	ld (l1870),hl
	ex de,hl
	rl c
	jp c,l1c29
.l16d3
	ld (l1642),hl
.l16d7 equ $ + 1
.l16d6
	ld a,#00
	sub #01
	jr c,l16e2
	ld (l16d7),a
	jp l177a
.l16e3 equ $ + 1
.l16e2
	ld hl,#0000
	ld c,(hl)
	inc hl
	ld a,c
	and #3f
	cp #3c
	jr c,l1718
	sub #3c
	jp z,l1c36
	dec a
	jr z,l1708
	dec a
	jr z,l16fd
	ld a,(hl)
	inc hl
	jr l171d
.l16fd
	ld a,c
	rlca
	rlca
	and #03
	inc a
	ld (l16d7),a
	jr l1777
.l1708
	ld a,(hl)
	ld (l16d7),a
	inc hl
	jr l1777
.l1710 equ $ + 1
.l170f
	ld de,#0000
	ld (l1ad2),de
	jr l173f
.l1718
	ld b,a
	ld a,(l1678)
	add b
.l171e equ $ + 1
.l171d
	add #00
	ld (l1ac7),a
	rl c
	jr nc,l170f
	ld a,(hl)
	inc hl
	exx
	ld e,a
	ld d,#00
	ld hl,(l168a)
	add hl,de
	add hl,de
	ld sp,hl
	pop hl
	ld a,(hl)
	inc hl
	ld (l1750),a
	ld (l1ad2),hl
	ld (l1710),hl
	exx
.l173f
	ex de,hl
	xor a
	ld l,a
	ld h,a
	ld (l1955),hl
	ld (l192b),a
	ld (l1948),a
	ld (l1ad0),a
.l1750 equ $ + 1
	ld a,#00
	ld (l1ade),a
	ld a,#b7
	ld (l1957),a
	ld a,(l19ad)
	ld (l19ac),a
	ld a,(l19b1)
	ld (l19b0),a
	ld hl,(l19ae)
	ld (l1918),hl
	ld hl,(l19b2)
	ld (l193f),hl
	ex de,hl
	rl c
	jp c,l1c3e
.l1777
	ld (l16e3),hl
.l177b equ $ + 1
.l177a
	ld a,#00
	sub #01
	jr c,l1786
	ld (l177b),a
	jp l181e
.l1787 equ $ + 1
.l1786
	ld hl,#0000
	ld c,(hl)
	inc hl
	ld a,c
	and #3f
	cp #3c
	jr c,l17bc
	sub #3c
	jp z,l1c4b
	dec a
	jr z,l17ac
	dec a
	jr z,l17a1
	ld a,(hl)
	inc hl
	jr l17c1
.l17a1
	ld a,c
	rlca
	rlca
	and #03
	inc a
	ld (l177b),a
	jr l181b
.l17ac
	ld a,(hl)
	ld (l177b),a
	inc hl
	jr l181b
.l17b4 equ $ + 1
.l17b3
	ld de,#0000
	ld (l1b01),de
	jr l17e3
.l17bc
	ld b,a
	ld a,(l1678)
	add b
.l17c2 equ $ + 1
.l17c1
	add #00
	ld (l1af6),a
	rl c
	jr nc,l17b3
	ld a,(hl)
	inc hl
	exx
	ld e,a
	ld d,#00
	ld hl,(l168a)
	add hl,de
	add hl,de
	ld sp,hl
	pop hl
	ld a,(hl)
	inc hl
	ld (l17f4),a
	ld (l1b01),hl
	ld (l17b4),hl
	exx
.l17e3
	ex de,hl
	xor a
	ld l,a
	ld h,a
	ld (l1a24),hl
	ld (l19fa),a
	ld (l1a17),a
	ld (l1aff),a
.l17f4 equ $ + 1
	ld a,#00
	ld (l1b0d),a
	ld a,#b7
	ld (l1a26),a
	ld a,(l1a7c)
	ld (l1a7b),a
	ld a,(l1a80)
	ld (l1a7f),a
	ld hl,(l1a7d)
	ld (l19e7),hl
	ld hl,(l1a81)
	ld (l1a0e),hl
	ex de,hl
	rl c
	jp c,l1c53
.l181b
	ld (l1787),hl
.l181f equ $ + 1
.l181e
	ld a,#00
.l1820
	ld (l15aa),a
.l1824 equ $ + 1
	ld hl,#0000
	or a
	jr nc,l183f
	ld de,#0000
	add hl,de
	bit 7,h
	jr z,l1835
	ld h,#00
	jr l183c
.l1835
	ld a,h
	cp #10
	jr c,l183c
	ld h,#0f
.l183c
	ld (l1824),hl
.l183f
	ld a,h
	ld (l1aa6),a
	ld c,#00
	or a
	jr nc,l1869
.l1849 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	cp #80
	jr nz,l1856
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
.l1856
	ld c,a
	ld a,(l18dd)
	ld d,a
.l185c equ $ + 1
	ld a,#00
	inc a
	cp d
	jr c,l1866
	inc hl
	ld (l1849),hl
	xor a
.l1866
	ld (l185c),a
.l1869
	ld de,#0000
	or a
	jr nc,l1885
.l1870 equ $ + 1
	ld sp,#0000
	pop de
	pop hl
	ld a,(l18e1)
	ld b,a
.l1879 equ $ + 1
	ld a,#00
	inc a
	cp b
	jr c,l1882
	ld (l1870),hl
	xor a
.l1882
	ld (l1879),a
.l1886 equ $ + 1
.l1885
	ld hl,#0000
.l1888
	or a
	jr nc,l18ea
	ld lx,c
	ld bc,#0000
	or a
	nop
	add hl,bc
.l1894 equ $ + 1
	ld a,#00
	add #00
	ld (l1894),a
	jr nc,l189d
	inc hl
.l189d
	ld (l1886),hl
.l18a0
	ld a,#00
	or a
	jr z,l18e8
	ld (l18e6),hl
	ld c,l
	ld b,h
	ex af,af'
	ld a,(l1a98)
	add a
	ld l,a
	ex af,af'
	ld h,#00
	ld sp,l1fd3
	add hl,sp
	ld sp,hl
	pop hl
	dec sp
	dec sp
	add hl,bc
	ld bc,#0000
	rra
	jr nc,l18c9
	or a
	sbc hl,bc
	jr nc,l18e5
	jr l18cd
.l18c9
	sbc hl,bc
	jr c,l18e5
.l18cd
	ld l,c
	ld h,b
	pop bc
	or a
	sbc hl,bc
	ld (l1886),hl
	ld a,#b7
	ld (l1888),a
	jr l18e8
.l18dd
	nop
.l18de
	nop
.l18df
	nop
	nop
.l18e1
	nop
.l18e2
	nop
.l18e3
	nop
	nop
.l18e6 equ $ + 1
.l18e5
	ld hl,#0000
.l18e8
	ld c,lx
.l18ea
	add hl,de
	ld (l1a95),hl
	ld a,c
	ld (l1a9a),a
.l18f3 equ $ + 1
	ld hl,#0000
	or a
	jr nc,l190e
	ld de,#0000
	add hl,de
	bit 7,h
	jr z,l1904
	ld h,#00
	jr l190b
.l1904
	ld a,h
	cp #10
	jr c,l190b
	ld h,#0f
.l190b
	ld (l18f3),hl
.l190e
	ld a,h
	ld (l1ad5),a
	ld c,#00
	or a
	jr nc,l1938
.l1918 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	cp #80
	jr nz,l1925
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
.l1925
	ld c,a
	ld a,(l19ac)
	ld d,a
.l192b equ $ + 1
	ld a,#00
	inc a
	cp d
	jr c,l1935
	inc hl
	ld (l1918),hl
	xor a
.l1935
	ld (l192b),a
.l1938
	ld de,#0000
	or a
	jr nc,l1954
.l193f equ $ + 1
	ld sp,#0000
	pop de
	pop hl
	ld a,(l19b0)
	ld b,a
.l1948 equ $ + 1
	ld a,#00
	inc a
	cp b
	jr c,l1951
	ld (l193f),hl
	xor a
.l1951
	ld (l1948),a
.l1955 equ $ + 1
.l1954
	ld hl,#0000
.l1957
	or a
	jr nc,l19b9
	ld lx,c
	ld bc,#0000
	or a
	nop
	add hl,bc
.l1963 equ $ + 1
	ld a,#00
	add #00
	ld (l1963),a
	jr nc,l196c
	inc hl
.l196c
	ld (l1955),hl
.l196f
	ld a,#00
	or a
	jr z,l19b7
	ld (l19b5),hl
	ld c,l
	ld b,h
	ex af,af'
	ld a,(l1ac7)
	add a
	ld l,a
	ex af,af'
	ld h,#00
	ld sp,l1fd3
	add hl,sp
	ld sp,hl
	pop hl
	dec sp
	dec sp
	add hl,bc
	ld bc,#0000
	rra
	jr nc,l1998
	or a
	sbc hl,bc
	jr nc,l19b4
	jr l199c
.l1998
	sbc hl,bc
	jr c,l19b4
.l199c
	ld l,c
	ld h,b
	pop bc
	or a
	sbc hl,bc
	ld (l1955),hl
	ld a,#b7
	ld (l1957),a
	jr l19b7
.l19ac
	nop
.l19ad
	nop
.l19ae
	nop
	nop
.l19b0
	nop
.l19b1
	nop
.l19b2
	nop
	nop
.l19b5 equ $ + 1
.l19b4
	ld hl,#0000
.l19b7
	ld c,lx
.l19b9
	add hl,de
	ld (l1ac4),hl
	ld a,c
	ld (l1ac9),a
.l19c2 equ $ + 1
	ld hl,#0000
	or a
	jr nc,l19dd
	ld de,#0000
	add hl,de
	bit 7,h
	jr z,l19d3
	ld h,#00
	jr l19da
.l19d3
	ld a,h
	cp #10
	jr c,l19da
	ld h,#0f
.l19da
	ld (l19c2),hl
.l19dd
	ld a,h
	ld (l1b04),a
	ld c,#00
	or a
	jr nc,l1a07
.l19e7 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	cp #80
	jr nz,l19f4
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
.l19f4
	ld c,a
	ld a,(l1a7b)
	ld d,a
.l19fa equ $ + 1
	ld a,#00
	inc a
	cp d
	jr c,l1a04
	inc hl
	ld (l19e7),hl
	xor a
.l1a04
	ld (l19fa),a
.l1a07
	ld de,#0000
	or a
	jr nc,l1a23
.l1a0e equ $ + 1
	ld sp,#0000
	pop de
	pop hl
	ld a,(l1a7f)
	ld b,a
.l1a17 equ $ + 1
	ld a,#00
	inc a
	cp b
	jr c,l1a20
	ld (l1a0e),hl
	xor a
.l1a20
	ld (l1a17),a
.l1a24 equ $ + 1
.l1a23
	ld hl,#0000
.l1a26
	or a
	jr nc,l1a88
	ld lx,c
	ld bc,#0000
	or a
	nop
	add hl,bc
.l1a32 equ $ + 1
	ld a,#00
	add #00
	ld (l1a32),a
	jr nc,l1a3b
	inc hl
.l1a3b
	ld (l1a24),hl
.l1a3e
	ld a,#00
	or a
	jr z,l1a86
	ld (l1a84),hl
	ld c,l
	ld b,h
	ex af,af'
	ld a,(l1af6)
	add a
	ld l,a
	ex af,af'
	ld h,#00
	ld sp,l1fd3
	add hl,sp
	ld sp,hl
	pop hl
	dec sp
	dec sp
	add hl,bc
	ld bc,#0000
	rra
	jr nc,l1a67
	or a
	sbc hl,bc
	jr nc,l1a83
	jr l1a6b
.l1a67
	sbc hl,bc
	jr c,l1a83
.l1a6b
	ld l,c
	ld h,b
	pop bc
	or a
	sbc hl,bc
	ld (l1a24),hl
	ld a,#b7
	ld (l1a26),a
	jr l1a86
.l1a7b
	nop
.l1a7c
	nop
.l1a7d
	nop
	nop
.l1a7f
	nop
.l1a80
	nop
.l1a81
	nop
	nop
.l1a84 equ $ + 1
.l1a83
	ld hl,#0000
.l1a86
	ld c,lx
.l1a88
	add hl,de
	ld (l1af3),hl
	ld a,c
	ld (l1af8),a
	ld sp,(l1c1e)
.l1a95 equ $ + 1
.l1a94
	ld hl,#0000
.l1a98 equ $ + 1
	ld a,#00
.l1a9a equ $ + 1
	add #00
	ld e,a
	ld d,#00
	exx
.l1aa1 equ $ + 2
	ld ly,#00
.l1aa3 equ $ + 1
	ld hl,#0000
.l1aa6 equ $ + 1
	ld de,#e00f
	call l1c9d
	ld a,ly
	inc a
.l1aaf equ $ + 1
	cp #00
	jr c,l1ab6
	ld (l1aa3),hl
	xor a
.l1ab6
	ld (l1aa1),a
	ld a,e
	ld (l1b8e),a
	srl d
	exx
	ld (l1b2c),hl
.l1ac4 equ $ + 1
.l1ac3
	ld hl,#0000
.l1ac7 equ $ + 1
	ld a,#00
.l1ac9 equ $ + 1
	add #00
	ld e,a
	ld d,#00
	exx
.l1ad0 equ $ + 2
	ld ly,#00
.l1ad2 equ $ + 1
	ld hl,#0000
.l1ad5 equ $ + 1
	ld e,#0f
	nop
	call l1c9d
	ld a,ly
	inc a
.l1ade equ $ + 1
	cp #00
	jr c,l1ae5
	ld (l1ad2),hl
	xor a
.l1ae5
	ld (l1ad0),a
	ld a,e
	ld (l1bbd),a
	srl d
	exx
	ld (l1b4b),hl
.l1af3 equ $ + 1
.l1af2
	ld hl,#0000
.l1af6 equ $ + 1
	ld a,#00
.l1af8 equ $ + 1
	add #00
	ld e,a
	ld d,#00
	exx
.l1aff equ $ + 2
	ld ly,#00
.l1b01 equ $ + 1
	ld hl,#0000
.l1b04 equ $ + 1
	ld e,#0f
	nop
	call l1c9d
	ld a,ly
	inc a
.l1b0d equ $ + 1
	cp #00
	jr c,l1b14
	ld (l1b01),hl
	xor a
.l1b14
	ld (l1aff),a
	ld a,e
	ld (l1bbe),a
	ld a,d
	exx
	ld (l1b6c),hl
.l1b20
	ld bc,#f680
	ld e,#c0
	out (c),e
	exx
	ld bc,#f401
.l1b2c equ $ + 1
	ld hl,#0000
	db #ed,#71 ; out (c),0
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),l
	exx
	out (c),c
	out (c),e
	exx
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),h
	exx
	out (c),c
	out (c),e
	exx
.l1b4b equ $ + 1
	ld hl,#0000
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),l
	exx
	out (c),c
	out (c),e
	exx
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),h
	exx
	out (c),c
	out (c),e
	exx
.l1b6c equ $ + 1
	ld hl,#0000
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),l
	exx
	out (c),c
	out (c),e
	exx
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),h
	exx
	out (c),c
	out (c),e
	exx
.l1b8e equ $ + 2
.l1b8d equ $ + 1
	ld hl,#0000
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),l
	exx
	out (c),c
	out (c),e
	exx
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),c
	out (c),e
	exx
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),h
	exx
	out (c),c
	out (c),e
	exx
.l1bbe equ $ + 2
.l1bbd equ $ + 1
	ld hl,#0000
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),l
	exx
	out (c),c
	out (c),e
	exx
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),h
	exx
	out (c),c
	out (c),e
	exx
.l1bde equ $ + 1
	ld hl,#0000
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),l
	exx
	out (c),c
	out (c),e
	exx
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),h
	exx
	out (c),c
	out (c),e
	exx
.l1bff equ $ + 1
	ld a,#ff
.l1c01 equ $ + 1
	or #00
.l1c03 equ $ + 1
	ld l,#00
	cp l
	jr z,l1c1d
	ld a,l
	ld (l1bff),a
	inc c
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),c
	out (c),e
	xor a
	ld (l1c01),a
.l1c1e equ $ + 1
.l1c1d
	ld sp,#0000
	ret
.l1c21
	ld (l1636),a
	bit 6,c
	jp z,l16d3
.l1c29
	ld iy,l18a0
	ld ix,l1a94
	ld de,l16d3
	jr l1c5e
.l1c36
	ld (l16d7),a
	bit 6,c
	jp z,l1777
.l1c3e
	ld iy,l196f
	ld ix,l1ac3
	ld de,l1777
	jr l1c5e
.l1c4b
	ld (l177b),a
	bit 6,c
	jp z,l181b
.l1c53
	ld iy,l1a3e
	ld ix,l1af2
	ld de,l181b
.l1c5e
	ld (l1c8c),de
	ex de,hl
	ld a,(de)
	inc de
	sla a
	jr c,l1c8e
	exx
	ld l,a
	ld h,#00
.l1c6e equ $ + 1
	ld de,#0000
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l1c74
	ld a,(de)
	inc de
	ld (l1c85),a
	and #fe
	ld l,a
	ld h,#00
	ld sp,l1e2d
	add hl,sp
	ld sp,hl
	ret
.l1c85 equ $ + 1
.l1c84
	ld a,#00
	rra
	jr c,l1c74
	exx
	ex de,hl
.l1c8c equ $ + 1
	jp #0000
.l1c8e
	srl a
	exx
	ld h,a
	exx
	ld a,(de)
	inc de
	exx
	ld l,a
.l1c98 equ $ + 1
	ld de,#0000
	add hl,de
	jr l1c74
.l1c9d
	ld a,(hl)
	inc hl
	ld b,a
	rra
	jp c,l1d66
	rra
	jr c,l1d23
	rra
	jr c,l1ce1
.l1caa
	and #0f
	sub e
	jr nc,l1cb0
	xor a
.l1cb0
	ld e,a
	rl b
	jr nc,l1cbf
	ld a,(hl)
	inc hl
	ld (l1b8d),a
	set 2,d
	res 5,d
	ret
.l1cbf
	set 2,d
	ret
.l1cc2
	and #0f
	sub e
	jr nc,l1cc8
	xor a
.l1cc8
	ld e,a
.l1cc9
	rl b
	jr nc,l1cd1
	ld c,#00
	jr l1cd4
.l1cd1
	ld b,(hl)
	ld c,b
	inc hl
.l1cd4
	call l1dac
	ld a,c
	and #1f
	ret z
	ld (l1b8d),a
	res 5,d
	ret
.l1ce1
	call l1dfd
	ld (l1ced),a
	ld a,b
	exx
	ld (l1bde),hl
.l1ced equ $ + 1
	jr l1cee
.l1cee
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	rla
	jr nc,l1d19
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l1d19
	exx
	ret
.l1d1c equ $ + 1
.l1d1b
	ld hl,#0000
	inc hl
	xor a
	ld b,a
	jr l1caa
.l1d23
	rra
	jr c,l1d1b
	call l1dfd
	ld (l1d31),a
	ld a,b
	exx
	ld e,l
	ld d,h
.l1d31 equ $ + 1
	jr l1d32
.l1d32
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	jr nc,l1d51
	inc hl
.l1d51
	rla
	jr nc,l1d60
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l1d60
	ld (l1bde),hl
	ex de,hl
	exx
	ret
.l1d66
	rra
	jr c,l1d80
	rra
	jp nc,l1cc2
	exx
	push hl
	push de
	exx
	call l1dfd
	exx
	ld (l1bde),hl
	pop de
	pop hl
	exx
	rl b
	jp l1dac
.l1d80
	rra
	jr c,l1da5
	ld e,#10
	rra
	jr nc,l1d93
	ld c,a
	ld a,ly
	or a
	jr nz,l1d92
	ld a,e
	ld (l1c01),a
.l1d92
	ld a,c
.l1d93
	and #07
	add #08
	ld (l1c03),a
	call l1cc9
	exx
	ld (l1bde),hl
	exx
	set 2,d
	ret
.l1da5
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l1c9d
.l1dac
	jr nc,l1dc2
	exx
	ex de,hl
	add hl,hl
	ld bc,l1fd3
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	exx
	rl b
	rl b
	rl b
	ret
.l1dc2
	rl b
	jr c,l1dee
	rl b
	jr nc,l1dd0
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
.l1dd0
	rl b
	jr nc,l1de0
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
	exx
.l1de0
	exx
	ex de,hl
	add hl,hl
	ld bc,l1fd3
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	exx
	ret
.l1dee
	ld a,(hl)
	inc hl
	exx
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	ld h,a
	exx
	rl b
	rl b
	ret
.l1dfd
	ld e,#10
	rra
	jr nc,l1e0d
	ld c,a
	ld a,ly
	or a
	jr nz,l1e0c
	dec a
	ld (l1c01),a
.l1e0c
	ld a,c
.l1e0d
	and #07
	add #08
	ld (l1c03),a
	rl b
	jr nc,l1e1f
	ld a,(hl)
	inc hl
	ld (l1b8d),a
	res 5,d
.l1e1f
	ld c,(hl)
	ld b,c
	inc hl
	rl b
	call l1dac
	ld a,c
	rla
	rla
	and #1c
	ret
.l1e2d
	dw l1e51,l1e54,l1e71,l1e7d
	dw l1eaa,l1eb1,l1ede,l1ee5
	dw l1ef6,l1f22,l1efd,l1f34
	dw l1f3b,l1f7e,l1fa6,l1fba
	dw l1fc2,l1fca
.l1e51
	xor a
	jr l1e56
.l1e54
	ld a,(de)
	inc de
.l1e56
	ld (iy-#7b),a
	xor a
	ld (iy-#1a),a
	ld (iy-#19),a
	ld a,#b7
	ld (iy-#18),a
	ld (iy-#34),a
	ld (iy-#5b),a
	ld (iy-#7a),a
	jp l1c84
.l1e71
	ld a,(de)
	inc de
	ld (iy-#7b),a
	ld (iy-#7a),#b7
	jp l1c84
.l1e7d
	ld a,(de)
	inc de
	ld l,a
	ld h,#00
	add hl,hl
.l1e84 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld a,(bc)
	inc bc
	ld (iy+#3d),a
	ld (iy+#3e),a
	ld (iy-#57),c
	ld (iy-#56),b
	ld (iy+#3f),c
	ld (iy+#40),b
	ld (iy-#5b),#37
	xor a
	ld (iy-#44),a
	jp l1c84
.l1eaa
	ld (iy-#5b),#b7
	jp l1c84
.l1eb1
	ld a,(de)
	inc de
	ld l,a
	ld h,#00
	add hl,hl
.l1eb8 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld a,(bc)
	inc bc
	ld (iy+#41),a
	ld (iy+#42),a
	ld (iy-#30),c
	ld (iy-#2f),b
	ld (iy+#43),c
	ld (iy+#44),b
	ld (iy-#34),#37
	xor a
	ld (iy-#27),a
	jp l1c84
.l1ede
	ld (iy-#34),#b7
	jp l1c84
.l1ee5
	ld a,(de)
	inc de
	ld (iy-#76),a
	ld a,(de)
	inc de
	ld (iy-#75),a
	ld (iy-#7a),#37
	jp l1c84
.l1ef6
	ld (iy-#7a),#b7
	jp l1c84
.l1efd
	ld (iy-#0f),#00
	ld (iy-#0e),#09
	ld (iy-#0b),#c6
	ld (iy-#04),#23
.l1f0d
	ld (iy-#18),#37
	ld (iy+#01),#00
	ld a,(de)
	inc de
	ld (iy-#0a),a
	ld a,(de)
	inc de
	ld (iy-#12),a
	jp l1c84
.l1f22
	ld (iy-#0f),#ed
	ld (iy-#0e),#42
	ld (iy-#0b),#d6
	ld (iy-#04),#2b
	jr l1f0d
.l1f34
	ld (iy-#18),#b7
	jp l1c84
.l1f3b
	ld a,(de)
	inc de
	ld (l1f66),de
	add a
	ld l,a
	ld h,#00
	ld bc,l1fd3
	add hl,bc
	ld sp,hl
	pop de
	ld (iy+#1d),e
	ld (iy+#1e),d
	ld a,(ix+#04)
	add a
	ld l,a
	ld h,#00
	add hl,bc
	ld sp,hl
	pop hl
	ld c,(iy-#1a)
	ld b,(iy-#19)
	add hl,bc
	or a
	sbc hl,de
.l1f66 equ $ + 1
	ld de,#0000
	jr c,l1f90
	ld (iy+#01),#01
	ld (iy-#0f),#ed
	ld (iy-#0e),#42
	ld (iy-#0b),#d6
	ld (iy-#04),#2b
.l1f7e
	ld a,(de)
	inc de
	ld (iy-#0a),a
	ld a,(de)
	inc de
	ld (iy-#12),a
	ld a,#37
	ld (iy-#18),a
	jp l1c84
.l1f90
	ld (iy+#01),#02
	ld (iy-#0f),#00
	ld (iy-#0e),#09
	ld (iy-#0b),#c6
	ld (iy-#04),#23
	jr l1f7e
.l1fa6
	ld a,(de)
	inc de
	ld (ix+#04),a
	ld a,#b7
	ld (iy-#18),a
	xor a
	ld (iy-#1a),a
	ld (iy-#19),a
	jp l1c84
.l1fba
	ld a,(de)
	inc de
	ld (ix+#1b),a
	jp l1c84
.l1fc2
	ld a,(de)
	inc de
	ld (iy+#3d),a
	jp l1c84
.l1fca
	ld a,(de)
	inc de
	ld (iy+#41),a
	jp l1c84
.l1fd2
	db #00
.l1fd3
	dw #0eee,#0e18,#0d4d,#0c8e
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
	dw #000f,#000e,#000d,#000d
	dw #000c,#000b,#000b,#000a
	dw #0009,#0009,#0008,#0008
	dw #0007,#0007,#0007,#0006
	dw #0006,#0006,#0005,#0005
	dw #0005,#0004,#0004,#0004
	dw #0004,#0004,#0003,#0003
	dw #0003,#0003,#0003,#0002
.l20d3
	db #41,#54,#32,#30,#e1,#20,#e1,#20
	db #e1,#20,#a3,#21,#a3,#21,#f1,#20
	db #f4,#20,#02,#21,#11,#21,#2d,#21
	db #39,#21,#62,#21,#69,#21,#00,#00
	db #06,#02,#f9,#f1,#e9,#e1,#d9,#d1
	db #c9,#c1,#b9,#b1,#07,#fe,#20,#01
	db #79,#46,#0f,#79,#40,#0a,#79,#40
	db #06,#71,#40,#03,#f1,#06,#01,#79
	db #4b,#0c,#71,#4a,#0d,#69,#49,#10
	db #69,#48,#09,#61,#07,#51,#46,#09
	db #41,#45,#0e,#31,#04,#21,#03,#19
	db #02,#06,#01,#f8,#01,#e8,#01,#d8
	db #01,#c0,#01,#a8,#01,#06,#01,#05
	db #83,#10,#f8,#ff,#05,#83,#08,#fa
	db #ff,#05,#83,#06,#fc,#ff,#05,#83
	db #04,#fe,#ff,#05,#81,#02,#05,#82
	db #fe,#ff,#05,#82,#fc,#ff,#05,#82
	db #fa,#ff,#05,#82,#f8,#ff,#06,#01
	db #02,#22,#0c,#07,#63,#21,#01,#f9
	db #79,#20,#ff,#ff,#f1,#71,#20,#01
	db #00,#e9,#69,#20,#ff,#ff,#e1,#61
	db #20,#01,#00,#d9,#59,#20,#ff,#ff
	db #d1,#51,#20,#01,#00,#c9,#49,#20
	db #ff,#ff,#c1,#39,#20,#01,#00,#b1
	db #29,#20,#ff,#ff,#a1,#19,#20,#01
	db #00,#91,#09,#20,#ff,#ff,#00,#06
	db #02,#00,#01,#00,#0f,#03,#14,#36
	db #22,#56,#22,#90,#22,#2e,#22,#cf
	db #22,#38,#23,#90,#22,#2e,#22,#f1
	db #22,#56,#22,#90,#22,#2e,#22,#12
	db #23,#74,#23,#09,#24,#2e,#22,#36
	db #22,#56,#22,#b1,#23,#2e,#22,#cf
	db #22,#38,#23,#b1,#23,#2e,#22,#f1
	db #22,#56,#22,#b1,#23,#2e,#22,#12
	db #23,#74,#23,#49,#24,#2e,#22,#a4
	db #24,#56,#22,#b1,#23,#2e,#22,#e8
	db #24,#38,#23,#b1,#23,#2e,#22,#2d
	db #25,#56,#22,#b1,#23,#2e,#22,#72
	db #25,#74,#23,#49,#24,#2e,#22,#be
	db #25,#56,#22,#b1,#23,#2e,#22,#13
	db #26,#38,#23,#b1,#23,#2e,#22,#6c
	db #26,#56,#22,#b1,#23,#2e,#22,#be
	db #26,#74,#23,#49,#24,#2e,#22,#00
	db #00,#aa,#21,#40,#00,#00,#00,#10
	db #27,#11,#27,#89,#01,#7e,#09,#7e
	db #15,#3c,#09,#7e,#09,#3d,#08,#15
	db #fe,#07,#3c,#09,#7e,#09,#7e,#15
	db #3c,#09,#7e,#09,#3d,#08,#15,#fe
	db #13,#3d,#7f,#81,#02,#7e,#81,#04
	db #7e,#81,#03,#7e,#81,#04,#7e,#81
	db #02,#7e,#81,#04,#3c,#01,#3c,#81
	db #03,#7e,#81,#04,#7e,#81,#02,#7e
	db #81,#04,#7e,#81,#03,#7e,#81,#04
	db #7e,#81,#02,#7e,#81,#04,#3c,#01
	db #3c,#81,#03,#3c,#81,#04,#01,#01
	db #3c,#81,#03,#3d,#7f,#bf,#11,#06
	db #fe,#80,#00,#7e,#81,#06,#3c,#80
	db #00,#3c,#84,#06,#3c,#80,#00,#3c
	db #89,#06,#3c,#80,#00,#7e,#84,#06
	db #3c,#3f,#11,#3c,#80,#00,#3c,#8b
	db #06,#7e,#09,#3c,#80,#00,#fe,#bf
	db #11,#06,#3c,#80,#00,#3c,#8d,#06
	db #3c,#80,#00,#3d,#06,#89,#06,#7e
	db #80,#00,#3d,#7f,#84,#01,#7e,#04
	db #7e,#10,#3c,#04,#7e,#04,#3d,#08
	db #10,#fe,#02,#3c,#04,#7e,#04,#7e
	db #10,#3c,#04,#7e,#04,#3d,#08,#10
	db #7e,#13,#3c,#0e,#3d,#7f,#80,#01
	db #7e,#00,#7e,#0c,#3c,#00,#7e,#00
	db #3d,#08,#0c,#3d,#06,#07,#7e,#07
	db #7e,#13,#3c,#07,#7e,#07,#3d,#08
	db #13,#7e,#10,#3c,#13,#3d,#7f,#89
	db #01,#7e,#09,#7e,#15,#3c,#09,#7e
	db #09,#3d,#08,#15,#3c,#13,#7e,#0e
	db #3c,#09,#7e,#09,#7e,#15,#3c,#09
	db #7e,#09,#3d,#08,#15,#3c,#18,#3c
	db #13,#3c,#15,#3d,#7f,#81,#02,#7e
	db #81,#04,#7e,#81,#03,#7e,#81,#04
	db #7e,#81,#02,#7e,#81,#04,#7e,#81
	db #03,#7e,#81,#04,#7e,#81,#02,#7e
	db #81,#04,#7e,#81,#03,#7e,#81,#04
	db #3c,#01,#3c,#81,#02,#3c,#81,#04
	db #01,#01,#3c,#01,#3c,#81,#03,#3c
	db #81,#04,#3c,#01,#3c,#81,#03,#3d
	db #7f,#81,#02,#7e,#81,#04,#7e,#81
	db #03,#7e,#81,#04,#7e,#81,#02,#7e
	db #81,#04,#3c,#01,#3c,#81,#03,#7e
	db #81,#04,#7e,#81,#02,#7e,#81,#04
	db #7e,#81,#03,#7e,#81,#04,#7e,#81
	db #02,#3c,#81,#04,#01,#01,#3c,#81
	db #02,#3c,#81,#03,#3c,#01,#3c,#81
	db #04,#3c,#81,#03,#3d,#7f,#bf,#11
	db #06,#7e,#bf,#4d,#05,#3c,#3f,#4d
	db #3c,#37,#3c,#81,#06,#3c,#bf,#4d
	db #05,#3c,#84,#06,#3c,#bf,#50,#05
	db #3c,#89,#06,#3c,#b7,#05,#3c,#3f
	db #4d,#3c,#84,#06,#3c,#3f,#11,#3c
	db #bf,#4d,#05,#3c,#8b,#06,#7e,#09
	db #3c,#bf,#4d,#05,#3c,#3f,#4d,#3c
	db #37,#3c,#bf,#11,#06,#3c,#bf,#4d
	db #05,#3c,#8d,#06,#3c,#bf,#50,#05
	db #7e,#3f,#52,#3c,#3f,#50,#3c,#89
	db #06,#7e,#b7,#05,#3d,#7f,#bf,#11
	db #06,#fe,#80,#00,#7e,#81,#06,#3c
	db #80,#00,#3c,#84,#06,#3c,#80,#00
	db #3c,#89,#06,#3c,#80,#00,#7e,#84
	db #06,#3c,#3f,#11,#3c,#80,#00,#3c
	db #8b,#06,#7e,#09,#3c,#80,#00,#fe
	db #bf,#11,#06,#3c,#80,#00,#3c,#89
	db #06,#3c,#80,#00,#3d,#06,#bf,#11
	db #06,#7e,#80,#00,#3d,#7f,#bf,#11
	db #06,#7e,#bf,#4d,#05,#3c,#3f,#4d
	db #3c,#37,#3c,#81,#06,#3c,#bf,#4d
	db #05,#3c,#84,#06,#3c,#bf,#50,#05
	db #3c,#89,#06,#3c,#b7,#05,#3c,#3f
	db #4d,#3c,#84,#06,#3c,#3f,#11,#3c
	db #bf,#4d,#05,#3c,#8b,#06,#7e,#09
	db #3c,#bf,#54,#05,#3c,#3f,#54,#3c
	db #3f,#57,#3c,#bf,#11,#06,#3c,#bf
	db #54,#05,#3c,#89,#06,#3c,#bf,#57
	db #05,#7e,#3f,#54,#3c,#3f,#51,#3c
	db #bf,#11,#06,#7e,#bf,#54,#05,#3d
	db #7f,#89,#01,#3c,#ad,#07,#3c,#89
	db #01,#7e,#15,#3c,#09,#3c,#ad,#07
	db #3c,#89,#01,#3c,#b1,#07,#fe,#2d
	db #3c,#95,#01,#7e,#ac,#07,#3c,#87
	db #01,#3c,#09,#3c,#ad,#07,#3c,#89
	db #01,#7e,#15,#3c,#09,#3c,#a8,#07
	db #3c,#89,#01,#3c,#af,#07,#3c,#2d
	db #7e,#28,#3c,#95,#01,#7e,#ab,#07
	db #3c,#93,#01,#3d,#7f,#84,#01,#7e
	db #04,#7e,#10,#3c,#04,#3c,#ad,#07
	db #3c,#84,#01,#3c,#a8,#07,#fe,#2b
	db #3c,#90,#01,#7e,#b1,#07,#3c,#82
	db #01,#3c,#04,#3c,#ad,#07,#3c,#84
	db #01,#7e,#10,#3c,#04,#3c,#a8,#07
	db #3c,#84,#01,#3c,#ab,#07,#3c,#2d
	db #3c,#31,#3c,#2d,#3c,#90,#01,#3c
	db #ab,#07,#3c,#93,#01,#3c,#ad,#07
	db #3d,#7f,#80,#01,#7e,#00,#3c,#ab
	db #07,#3c,#8c,#01,#3c,#00,#3c,#ad
	db #07,#3c,#80,#01,#3c,#b0,#07,#7e
	db #2d,#3c,#32,#3c,#8c,#01,#3c,#ab
	db #07,#7e,#2d,#3c,#87,#01,#7e,#07
	db #7e,#13,#3c,#07,#3c,#b2,#07,#3c
	db #87,#01,#3c,#ab,#07,#7e,#2d,#3c
	db #30,#3c,#93,#01,#3c,#ab,#07,#3c
	db #90,#01,#3c,#ad,#07,#3d,#7f,#89
	db #01,#7e,#09,#3c,#ad,#07,#3c,#95
	db #01,#3c,#09,#3c,#ab,#07,#3c,#89
	db #01,#3c,#ad,#07,#7e,#2f,#3c,#28
	db #3c,#95,#01,#3c,#13,#3c,#ab,#07
	db #3c,#8e,#01,#3c,#09,#3c,#ad,#07
	db #3c,#89,#01,#3c,#ad,#07,#3c,#95
	db #01,#3c,#09,#3c,#b1,#07,#3c,#89
	db #01,#3c,#ab,#07,#3c,#2d,#7e,#2d
	db #3c,#95,#01,#3c,#18,#3c,#13,#3c
	db #15,#3d,#7f,#89,#01,#3c,#b4,#07
	db #3c,#89,#01,#7e,#15,#3c,#09,#3c
	db #bf,#4d,#07,#3c,#89,#01,#3c,#bf
	db #51,#07,#3c,#3f,#54,#7e,#3f,#51
	db #3c,#95,#01,#3c,#bf,#4f,#07,#3c
	db #3f,#51,#3c,#87,#01,#3c,#09,#3c
	db #bf,#4d,#07,#3c,#89,#01,#3c,#bf
	db #4d,#07,#3c,#95,#01,#3c,#09,#3c
	db #b4,#07,#3c,#89,#01,#3c,#bf,#4d
	db #07,#3c,#37,#7e,#34,#3c,#95,#01
	db #7e,#b7,#07,#3c,#93,#01,#3d,#7f
	db #84,#01,#3c,#bf,#4d,#07,#3c,#84
	db #01,#7e,#10,#3c,#04,#3c,#bf,#4f
	db #07,#3c,#84,#01,#3c,#bf,#51,#07
	db #3c,#3f,#4f,#7e,#34,#3c,#90,#01
	db #7e,#bf,#4d,#07,#3c,#82,#01,#3c
	db #04,#3c,#b7,#07,#3c,#84,#01,#3c
	db #b7,#07,#3c,#90,#01,#3c,#04,#3c
	db #bf,#4f,#07,#3c,#84,#01,#3c,#bf
	db #51,#07,#3c,#3f,#4d,#3c,#37,#3c
	db #3f,#4d,#3c,#90,#01,#3c,#b7,#07
	db #3c,#93,#01,#3c,#bf,#4d,#07,#3d
	db #7f,#80,#01,#7e,#00,#3c,#b4,#07
	db #3c,#8c,#01,#3c,#00,#3c,#b7,#07
	db #3c,#80,#01,#3c,#bf,#54,#07,#3c
	db #3f,#51,#7e,#3f,#4f,#3c,#8c,#01
	db #7e,#bf,#4d,#07,#7e,#87,#01,#3c
	db #b4,#07,#3c,#87,#01,#3c,#b4,#07
	db #3c,#93,#01,#3c,#07,#3c,#b4,#07
	db #3c,#87,#01,#3c,#b7,#07,#3c,#3f
	db #4d,#3c,#34,#3c,#32,#3c,#93,#01
	db #3c,#b4,#07,#3c,#90,#01,#3c,#b7
	db #07,#3d,#7f,#89,#01,#7e,#09,#3c
	db #bf,#4d,#07,#3c,#95,#01,#3c,#09
	db #3c,#b7,#07,#3c,#89,#01,#3c,#b4
	db #07,#7e,#37,#3c,#3f,#4f,#3c,#95
	db #01,#3c,#13,#3c,#bf,#4d,#07,#3c
	db #8e,#01,#3c,#09,#3c,#b7,#07,#3c
	db #89,#01,#3c,#b7,#07,#3c,#95,#01
	db #3c,#09,#3c,#bf,#4d,#07,#3c,#89
	db #01,#3c,#bf,#51,#07,#3c,#3f,#4d
	db #7e,#37,#3c,#95,#01,#3c,#18,#3c
	db #13,#3c,#15,#3d,#7f,#ff,#ff,#00
	db #00
;
.init_music		; #0495 - added by Megachur
;
	ld hl,l20d3
	xor a
	jp real_init_music	; #14dc

;
.music_info
	db "Pixel Free (2022)(Public Domain)(Glafouk)",0
	db "StArkos",0

	read "music_end.asm"
