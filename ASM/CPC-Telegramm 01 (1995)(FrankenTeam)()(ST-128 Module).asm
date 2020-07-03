; Music of CPC-Telegramm 01 (1995)(FrankenTeam)()(ST-128 Module)
; Ripped by Megachur the 15/03/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPC01MSI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #161a

	read "music_header.asm"

	jp l1623
	jp l16b7
	jp l169b
;
.init_music
.l1623
;
	xor a
	ld hl,l1bce
	call l1694
	ld hl,l1bfc
	call l1694
	ld hl,l1c2a
	call l1694
	ld ix,l1bca
	ld iy,l1c54
	ld de,#002e
	ld b,#03
.l1643
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l1643
	ld hl,l1ae3
	ld (hl),#06
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l1adf),hl
	ld (l1ae1),hl
	ld a,#0c
	ld c,d
	call l1abf
	ld a,#0d
	ld c,d
	jp l1abf
.l1694
	ld b,#2a
.l1696
	ld (hl),a
	inc hl
	djnz l1696
	ret
;
.stop_music
.l169b
;
	ld a,#07
	ld c,#3f
	call l1abf
	ld a,#08
	ld c,#00
	call l1abf
	ld a,#09
	ld c,#00
	call l1abf
	ld a,#0a
	ld c,#00
	jp l1abf
;
.play_music
.l16b7
;
	ld hl,l1ae5
	dec (hl)
	ld ix,l1bca
	ld bc,l1bd8
	call l1759
	ld ix,l1bf8
	ld bc,l1c06
	call l1759
	ld ix,l1c26
	ld bc,l1c34
	call l1759
	ld hl,l1ade
	ld de,l1ae5
	ld b,#06
	call l1736
	ld b,#07
	call l1736
	ld b,#0b
	call l1736
	ld b,#0d
	call l1736
	ld de,l1ae5
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l1be9
	call l170f
	ld hl,l1c17
	call l170f
	ld hl,l1c45
.l170f
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l1724
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l1724
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l1736
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l1abf
.l1741
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l1abf
.l1759
	ld a,(l1ae5)
	or a
	jp nz,l1811
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l1811
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l1741
	or a
	jp z,l1806
	ld r,a
	and #7f
	cp #10
	jr c,l17e1
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #fb
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l1959
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l17ba
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l17ba
	rrca
	ld c,a
	ld hl,l1c5a
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l17d9
	ld (ix+#1e),b
.l17d9
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l17fa
.l17e1
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l1aea
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add (hl)
	add a
	add a
	add h
	add l
.l17fa
	ld a,d
	or a
	jr nz,l1808
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l1808
.l1806
	ld a,(hl)
	inc hl
.l1808
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l1811
	ld a,(ix+#17)
	or a
	jr nz,l1827
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l1827
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l183d
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l183d
	ld a,(ix+#0d)
	or a
	jr z,l184b
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l1869
.l184b
	ld a,(ix+#1a)
	or a
	jp z,l1870
	ld c,a
	cp #03
	jr nz,l1858
	xor a
.l1858
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l1869
	ld a,(ix+#18)
	dec c
	jr z,l1869
	ld a,(ix+#19)
.l1869
	add (ix+#07)
	ld b,d
	call l1959
.l1870
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l1898
	dec (ix+#1b)
	jr nz,l1898
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l18d0
.l1898
	ld a,(ix+#29)
	or a
	jr z,l18d0
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l18c7
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l18be
	ld (ix+#29),#ff
	jr l18c7
.l18be
	cp (ix+#2b)
	jr nz,l18c7
	ld (ix+#29),#01
.l18c7
	ld b,d
	or a
	jp p,l18cd
	dec b
.l18cd
	ld c,a
	jr l18db
.l18d0
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l18db
	pop hl
	bit 7,(ix+#14)
	jr z,l18e4
	ld h,d
	ld l,d
.l18e4
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l1abf
	ld c,h
	ld a,(ix+#02)
	call l1abf
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l1937
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l1926
	dec (ix+#09)
	jr nz,l1926
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l191e
	xor a
	jr l1923
.l191e
	cp #10
	jr nz,l1923
	dec a
.l1923
	ld (ix+#1e),a
.l1926
	ld a,b
	sub (ix+#1e)
	jr nc,l192d
	xor a
.l192d
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l1abf
.l1937
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l1ae6)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l1955
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l1955
	ld (l1ae6),hl
	ret
.l1959
	ld hl,l1b08
	cp #61
	jr nc,l1963
	add a
	ld c,a
	add hl,bc
.l1963
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l196d
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l1a92
	ld (ix+#1e),a
	jp l17fa
.l197f
	dec b
.l1980
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l198b
	neg
.l198b
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l17fa
.l19a1
	dec b
	jr l19a5
.l19a4
	inc b
.l19a5
	call l1a92
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l17fa
.l19b4
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l1a77
.l19c5
	ld a,(hl)
	inc hl
	or a
	jr z,l19e7
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l19e7
	ld (ix+#29),a
	jp l17fa
.l19ed
	dec hl
	ld a,(hl)
	and #0f
	ld (l1ae9),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l1ae8),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l17fa
.l1a07
	ld a,(hl)
	or a
	jr z,l1a18
	call l1a94
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l17fa
.l1a18
	ld hl,#0101
	ld (l1ae4),hl
	jp l17fa
.l1a21
	call l1a92
	ld (ix+#1e),a
	jp l17fa
.l1a2a
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l1aa3
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l1aa3
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l17fa
.l1a4c
	ld a,(hl)
	inc hl
	ld (l1ae3),a
	jp l17fa
.l1a54
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l17fa
.l1a73
	call l1a92
	add a
.l1a77
	ld b,#00
	ld c,a
	push hl
	ld hl,l1cda
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l17fa
.l1a92
	ld a,(hl)
	inc hl
.l1a94
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l1aa3
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l1c5a
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l1abf
	di
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
	ei
.l1ade
	ret
.l1ae6 equ $ + 7
.l1ae5 equ $ + 6
.l1ae4 equ $ + 5
.l1ae3 equ $ + 4
.l1ae1 equ $ + 2
.l1adf
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1ae9 equ $ + 2
.l1ae8 equ $ + 1
	db #38,#00,#00
.l1aea
	dw l196d,l1980,l197f,l19a4
	dw l19a1,l19b4,l19c5,l19ed
	dw l1a07,l19ed,l1a21,l1a2a
	dw l1a4c,l1a54,l1a73
.l1b08
	nop
	nop
	jr l1b1a
	ld c,l
	dec c
	adc (hl)
	inc c
	jp c,#2f0b
	dec bc
	adc a
	ld a,(bc)
	rst #30
	add hl,bc
	ld l,b
	add hl,bc
.l1b1a
	pop hl
	ex af,af'
	ld h,c
	ex af,af'
	jp (hl)
	rlca
	ld (hl),a
	rlca
	inc c
	rlca
	and a
	ld b,#47
	ld b,#ed
	dec b
	sbc b
	dec b
	ld b,a
	dec b
	call m,#b404
	inc b
	ld (hl),b
	inc b
	ld sp,#f404
	inc bc
	cp h
	inc bc
	add (hl)
	inc bc
	ld d,e
	inc bc
	inc h
	inc bc
	or #02
	call z,#a402
	ld (bc),a
	ld a,(hl)
	ld (bc),a
	ld e,d
	ld (bc),a
	jr c,l1b4e
	jr l1b50
.l1b50 equ $ + 2
.l1b4e
	jp m,#de01
	ld bc,#01c3
	xor d
	ld bc,#0192
	ld a,e
	ld bc,#0166
	ld d,d
	ld bc,#013f
	dec l
	ld bc,#011c
	inc c
	ld bc,#00fd
	rst #28
	nop
	pop hl
	nop
	push de
	nop
	ret
	nop
	cp (hl)
	nop
	or e
	nop
	xor c
	nop
	sbc a
	nop
	sub (hl)
	nop
	adc (hl)
	nop
	add (hl)
	nop
	ld a,a
	nop
	ld (hl),a
	nop
	ld (hl),c
	nop
	ld l,d
	nop
	ld h,h
	nop
	ld e,a
	nop
	ld e,c
	nop
	ld d,h
	nop
	ld d,b
	nop
	ld c,e
	nop
	ld b,a
	nop
	ld b,e
	nop
	ccf
	nop
	inc a
	nop
	jr c,l1b9c
.l1b9c
	dec (hl)
	nop
	ld (#2f00),a
	nop
	dec l
	nop
	ld hl,(#2800)
	nop
	ld h,#00
	inc h
	nop
	ld (l2000),hl
	nop
	ld e,#00
	inc e
	nop
	dec de
	nop
	add hl,de
	nop
	jr l1bba
.l1bba
	ld d,#00
	dec d
	nop
	inc d
	nop
	inc de
	nop
	ld (de),a
	nop
	ld de,#1000
	nop
	rrca
	nop
.l1bca
	ex af,af'
.l1bce equ $ + 3
	db #00,#01,#08,#00,#00,#00,#00,#00
.l1bd8 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1be9 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1bf8 equ $ + 5
	db #00,#00,#00,#00,#00,#09,#02,#03
.l1bfc equ $ + 1
	db #10,#00,#00,#00,#00,#00,#00,#00
.l1c06 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1c17 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1c2a equ $ + 7
.l1c26 equ $ + 3
	db #00,#00,#00,#0a,#04,#05,#20,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1c34 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1c45 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1c5a equ $ + 7
.l1c54 equ $ + 1
	db #00,#7a,#21,#f8,#21,#76,#22,#f3
	db #ed,#3d,#e5,#9d,#e6,#b1,#0f,#f4
	db #ed,#bd,#e6,#fd,#e6,#31,#11,#fa
	db #1c,#3a,#1d,#5a,#1d,#1a,#06,#7a
	db #1d,#ba,#1d,#5a,#1d,#18,#08,#da
	db #1d,#1a,#1e,#3a,#1e,#00,#00,#5a
	db #1e,#9a,#1e,#ba,#1e,#16,#0a,#da
	db #1e,#1a,#1f,#ba,#1e,#1a,#00,#ec
	db #d5,#2f,#9e,#2f,#9e,#43,#c8,#ec
	db #d5,#2f,#9e,#2f,#9e,#43,#c8,#3a
	db #1f,#7a,#1f,#5a,#1d,#16,#0a,#9a
	db #1f,#da,#1f,#5a,#1d,#16,#0a,#2f
	db #9e,#2f,#9e,#2f,#9e,#43,#c8,#fa
	db #1f,#3a,#20,#5a,#1d,#1e,#02,#2f
	db #9e,#2f,#9e,#2f,#9e,#43,#c8,#2f
	db #9e,#ec,#d5,#ec,#d5,#00,#00,#5a
.l1cda equ $ + 7
	db #20,#9a,#20,#5a,#1d,#00,#00,#ec
	db #d5,#ba,#20,#da,#20,#fa,#20,#1a
	db #21,#ec,#d5,#3a,#21,#5a,#21,#ec
	db #d5,#ec,#d5,#ec,#d5,#ec,#d5,#ec
	db #d5,#ec,#d5,#ec,#d5,#ec,#d5,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0b
	db #0b,#0b,#0b,#0c,#0c,#0c,#0c,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#0b
	db #0c,#0c,#0c,#0b,#0b,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#00
	db #00,#20,#00,#40,#00,#60,#00,#a0
	db #00,#e0,#00,#00,#00,#20,#00,#40
	db #00,#60,#00,#a0,#00,#e0,#00,#00
	db #00,#20,#00,#40,#00,#60,#00,#80
	db #00,#a0,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#0a
	db #0a,#09,#09,#08,#08,#06,#05,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #00,#06,#08,#0b,#10,#02,#00,#06
	db #08,#0b,#10,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#01,#00,#01,#00,#0f
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0c
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#02,#00,#03,#00,#02
	db #00,#01,#00,#ff,#ff,#fe,#ff,#fd
	db #ff,#fe,#ff,#ff,#ff,#01,#00,#03
	db #00,#05,#00,#03,#00,#01,#00,#ff
	db #ff,#fd,#ff,#fb,#ff,#fd,#ff,#ff
	db #ff,#01,#00,#04,#00,#07,#00,#04
	db #00,#01,#00,#ff,#ff,#fc,#ff,#f9
	db #ff,#fc,#ff,#ff,#ff,#00,#00,#0f
	db #0f,#0e,#0e,#0d,#0d,#0d,#0d,#0d
	db #0c,#0c,#0c,#0c,#0c,#0d,#0d,#0d
	db #0d,#0d,#0c,#0c,#0c,#0c,#0c,#0d
	db #0d,#0d,#0d,#0d,#0c,#0c,#0c,#00
	db #00,#00,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#09
	db #09,#09,#09,#0a,#0a,#0a,#0a,#0b
	db #0b,#0b,#0b,#0b,#0c,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0b,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#ff
	db #ff,#fe,#ff,#ff,#ff,#00,#00,#01
	db #00,#02,#00,#01,#00,#00,#00,#00
	db #00,#01,#00,#02,#00,#03,#00,#02
	db #00,#01,#00,#ff,#ff,#fe,#ff,#fd
	db #ff,#fe,#ff,#ff,#ff,#02,#00,#03
	db #00,#04,#00,#03,#00,#02,#00,#0f
	db #0e,#0d,#0d,#0d,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0b,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0d,#0d,#0d,#0d,#0d,#ff
.l2000 equ $ + 5
	db #ff,#ff,#ff,#fe,#ff,#fe,#ff,#fd
	db #ff,#fd,#ff,#fc,#ff,#fc,#ff,#fb
	db #ff,#fb,#ff,#fa,#ff,#fa,#ff,#f9
	db #ff,#f9,#ff,#f8,#ff,#f8,#ff,#f7
	db #ff,#f7,#ff,#f6,#ff,#f6,#ff,#f5
	db #ff,#f5,#ff,#f4,#ff,#f4,#ff,#f3
	db #ff,#f3,#ff,#f2,#ff,#f2,#ff,#f1
	db #ff,#f1,#ff,#f0,#ff,#f0,#ff,#0d
	db #0d,#0d,#0d,#0d,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0b,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0d,#0d,#0d,#0d,#0d,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#01,#00,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0c
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#fe,#fe,#fe,#00,#00,#00
	db #fe,#fe,#fe,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0c
	db #00,#00,#0c,#0c,#00,#00,#0c,#0c
	db #00,#00,#0c,#0c,#00,#00,#0c,#0c
	db #00,#00,#0c,#0c,#00,#00,#0c,#0c
	db #00,#00,#0c,#0c,#00,#00,#0c,#00
	db #00,#00,#02,#02,#02,#00,#00,#00
	db #02,#02,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#04,#04,#07,#07,#00,#00,#04
	db #04,#07,#07,#00,#00,#04,#04,#07
	db #07,#00,#00,#04,#04,#07,#07,#00
	db #00,#04,#04,#07,#07,#00,#00,#00
	db #00,#03,#03,#07,#07,#00,#00,#03
	db #03,#07,#07,#00,#00,#03,#03,#07
	db #07,#00,#00,#03,#03,#07,#07,#00
	db #00,#03,#03,#07,#07,#00,#00,#00
	db #e8,#23,#00,#eb,#23,#00,#02,#24
	db #00,#eb,#23,#00,#02,#24,#00,#f4
	db #22,#00,#f4,#22,#00,#f4,#22,#00
	db #f4,#22,#00,#f4,#22,#00,#f4,#22
	db #00,#f4,#22,#00,#f4,#22,#02,#f4
	db #22,#02,#f4,#22,#02,#f4,#22,#02
	db #f4,#22,#02,#f4,#22,#02,#f4,#22
	db #02,#f4,#22,#02,#f4,#22,#02,#f4
	db #22,#02,#f4,#22,#03,#f4,#22,#03
	db #f4,#22,#03,#f4,#22,#03,#f4,#22
	db #03,#f4,#22,#03,#f4,#22,#03,#f4
	db #22,#03,#f4,#22,#04,#f4,#22,#04
	db #f4,#22,#04,#35,#23,#04,#52,#23
	db #04,#35,#23,#04,#52,#23,#04,#7d
	db #23,#04,#52,#23,#04,#7d,#23,#04
	db #9a,#23,#80,#7a,#21,#00,#3c,#26
	db #00,#da,#25,#00,#da,#25,#00,#da
	db #25,#00,#da,#25,#00,#da,#25,#00
	db #da,#25,#00,#96,#25,#00,#b8,#25
	db #00,#96,#25,#00,#b8,#25,#00,#da
	db #25,#00,#da,#25,#02,#9f,#26,#02
	db #bf,#26,#02,#9f,#26,#02,#bf,#26
	db #02,#da,#25,#02,#da,#25,#02,#88
	db #24,#02,#ac,#24,#02,#88,#24,#02
	db #ac,#24,#03,#13,#24,#03,#4c,#24
	db #03,#13,#24,#03,#4c,#24,#03,#88
	db #24,#03,#ac,#24,#03,#88,#24,#03
	db #ac,#24,#04,#da,#25,#04,#da,#25
	db #04,#e8,#23,#04,#e8,#23,#04,#e8
	db #23,#04,#e8,#23,#04,#d3,#24,#04
	db #1b,#25,#04,#d3,#24,#04,#43,#25
	db #80,#f8,#21,#00,#e8,#23,#00,#df
	db #26,#00,#df,#26,#00,#df,#26,#00
	db #df,#26,#00,#df,#26,#00,#df,#26
	db #00,#df,#26,#00,#df,#26,#00,#df
	db #26,#00,#df,#26,#00,#df,#26,#00
	db #df,#26,#02,#df,#26,#02,#df,#26
	db #02,#df,#26,#02,#df,#26,#02,#df
	db #26,#02,#df,#26,#02,#df,#26,#02
	db #df,#26,#02,#df,#26,#02,#df,#26
	db #03,#df,#26,#03,#df,#26,#03,#df
	db #26,#03,#df,#26,#03,#df,#26,#03
	db #df,#26,#03,#df,#26,#03,#df,#26
	db #04,#df,#26,#04,#df,#26,#04,#df
	db #26,#04,#df,#26,#04,#df,#26,#04
	db #df,#26,#04,#df,#26,#04,#df,#26
	db #04,#df,#26,#04,#ee,#26,#80,#76
	db #22,#31,#5f,#61,#31,#50,#02,#38
	db #41,#40,#34,#5f,#21,#2d,#50,#02
	db #2f,#60,#04,#31,#50,#02,#2f,#50
	db #02,#38,#41,#20,#2f,#5f,#21,#bb
	db #50,#af,#50,#2c,#50,#02,#2d,#60
	db #06,#2d,#50,#02,#38,#41,#40,#2d
	db #5f,#41,#34,#60,#06,#34,#50,#02
	db #38,#41,#40,#2f,#5f,#21,#2c,#50
	db #02,#ff,#50,#91,#00,#10,#50,#90
	db #02,#4e,#90,#04,#50,#90,#02,#4e
	db #90,#06,#4e,#cb,#22,#51,#90,#10
	db #53,#9f,#22,#50,#91,#e0,#ff,#55
	db #91,#60,#57,#90,#02,#58,#90,#02
	db #57,#90,#02,#58,#90,#02,#5a,#90
	db #02,#57,#90,#04,#55,#90,#02,#53
	db #90,#0a,#5d,#90,#04,#5c,#90,#02
	db #5a,#90,#08,#5c,#90,#02,#58,#90
	db #10,#ff,#50,#91,#00,#10,#50,#90
	db #02,#4e,#90,#04,#50,#90,#02,#4e
	db #90,#06,#4e,#cb,#22,#51,#90,#10
	db #53,#3f,#22,#50,#91,#e0,#ff,#55
	db #9d,#06,#06,#57,#90,#02,#58,#90
	db #02,#57,#90,#02,#58,#90,#02,#5a
	db #90,#02,#57,#90,#04,#55,#90,#02
	db #53,#90,#0a,#5d,#90,#04,#5c,#90
	db #02,#5a,#90,#08,#5c,#90,#02,#58
	db #90,#02,#58,#9d,#0c,#02,#58,#fb
	db #15,#58,#fb,#16,#58,#fb,#17,#58
	db #fb,#18,#58,#fb,#19,#58,#fb,#1a
	db #58,#fb,#1b,#58,#fb,#1c,#58,#fb
	db #1d,#58,#fb,#3f,#ff,#fe,#40,#ff
	db #50,#91,#00,#10,#50,#90,#02,#4e
	db #90,#0b,#4e,#cb,#32,#51,#90,#10
	db #53,#9f,#22,#50,#91,#e0,#ff,#55
	db #91,#00,#10,#57,#90,#10,#5d,#90
	db #10,#5d,#9f,#24,#5c,#91,#e0,#ff
	db #50,#a1,#20,#4e,#a0,#02,#4c,#a0
	db #02,#4e,#a0,#04,#50,#a0,#02,#4c
	db #a0,#02,#50,#a0,#02,#4e,#a0,#02
	db #4c,#a0,#02,#4b,#a0,#02,#47,#a0
	db #08,#fe,#02,#51,#a1,#40,#50,#a0
	db #02,#4e,#a0,#08,#49,#a0,#02,#4c
	db #a0,#02,#4c,#2f,#44,#47,#a1,#a0
	db #ff,#4c,#a1,#20,#4c,#a0,#02,#4b
	db #a0,#02,#49,#a0,#04,#49,#a0,#02
	db #47,#a0,#02,#49,#a0,#02,#4b,#a0
	db #0e,#fe,#02,#49,#a1,#20,#4b,#a0
	db #02,#4c,#a0,#02,#4c,#a0,#04,#4c
	db #a0,#02,#4e,#a0,#02,#50,#a0,#02
	db #51,#a0,#02,#50,#a0,#02,#4c,#a0
	db #02,#4c,#a0,#0a,#ff,#50,#2f,#63
	db #50,#20,#02,#4c,#20,#04,#50,#20
	db #02,#4e,#20,#12,#4c,#20,#04,#fe
	db #02,#4c,#2f,#23,#50,#20,#02,#4e
	db #20,#02,#50,#20,#02,#47,#20,#12
	db #ff,#4c,#2f,#63,#4c,#20,#02,#4b
	db #20,#02,#4b,#20,#02,#4c,#20,#02
	db #4b,#20,#12,#4c,#20,#04,#fe,#02
	db #4c,#2f,#23,#4c,#20,#02,#4c,#20
	db #02,#4c,#20,#02,#47,#20,#12,#ff
	db #00,#02,#4c,#ab,#11,#ce,#a0,#d0
	db #a0,#50,#ab,#12,#53,#ab,#21,#50
	db #a0,#02,#4c,#a1,#20,#4e,#af,#24
	db #50,#a1,#20,#4e,#a0,#02,#cc,#a0
	db #4b,#a0,#02,#c9,#a0,#47,#a0,#0a
	db #49,#a0,#02,#49,#a0,#02,#4c,#a0
	db #02,#ce,#a0,#50,#a0,#02,#ce,#a0
	db #4c,#a0,#02,#cb,#a0,#4c,#a0,#02
	db #49,#af,#14,#4c,#a1,#00,#10,#ff
	db #49,#ab,#41,#4b,#a0,#02,#4c,#a0
	db #06,#4c,#a0,#02,#4e,#a0,#02,#4b
	db #a0,#04,#4c,#a0,#02,#4b,#a0,#0a
	db #4c,#a0,#08,#50,#a0,#02,#4e,#a0
	db #02,#50,#a0,#02,#4c,#a0,#12,#ff
	db #49,#ab,#41,#4b,#a0,#02,#4c,#a0
	db #06,#4c,#a0,#02,#4e,#a0,#02,#4b
	db #a0,#04,#4c,#a0,#02,#4b,#a0,#0a
	db #4c,#a0,#08,#50,#a0,#02,#4e,#a0
	db #02,#50,#a0,#02,#4c,#a0,#03,#4c
	db #fb,#13,#cc,#fd,#0c,#4c,#fb,#14
	db #4c,#fb,#15,#4c,#fb,#16,#4c,#fb
	db #17,#4c,#fb,#18,#4c,#fb,#19,#4c
	db #fb,#1a,#4c,#fb,#1b,#4c,#fb,#1c
	db #4c,#fb,#1d,#4c,#fb,#1f,#4c,#fd
	db #3c,#02,#ff,#50,#a0,#0c,#4e,#a0
	db #02,#4c,#a0,#02,#4b,#a0,#04,#49
	db #a0,#02,#4b,#a0,#0a,#4c,#a0,#08
	db #50,#a0,#02,#4e,#a0,#02,#4c,#a0
	db #02,#47,#a0,#12,#ff,#49,#a0,#08
	db #4b,#a0,#02,#47,#a0,#02,#44,#a0
	db #02,#40,#a0,#02,#42,#a0,#10,#4c
	db #a0,#08,#4c,#a0,#02,#4e,#a0,#02
	db #50,#a0,#02,#4c,#a0,#12,#ff,#55
	db #31,#20,#d8,#30,#50,#30,#02,#d8
	db #30,#55,#30,#02,#4c,#30,#02,#49
	db #30,#02,#4c,#30,#02,#50,#30,#02
	db #53,#30,#02,#4e,#30,#02,#4b,#30
	db #02,#47,#30,#02,#4b,#30,#02,#4e
	db #30,#02,#53,#30,#02,#57,#30,#02
	db #55,#30,#02,#51,#30,#02,#4c,#30
	db #02,#45,#30,#02,#55,#30,#02,#58
	db #30,#02,#51,#30,#02,#49,#30,#02
	db #40,#30,#02,#50,#30,#02,#53,#30
	db #02,#4c,#30,#02,#58,#30,#02,#4c
	db #30,#02,#53,#30,#02,#47,#30,#02
	db #ff,#55,#3d,#06,#02,#d8,#30,#50
	db #30,#02,#d8,#30,#55,#30,#02,#4c
	db #30,#02,#49,#30,#02,#4c,#30,#02
	db #50,#30,#02,#53,#30,#02,#4e,#30
	db #02,#4b,#30,#02,#47,#30,#02,#4b
	db #30,#02,#4e,#30,#02,#53,#30,#02
	db #57,#30,#02,#55,#30,#02,#51,#30
	db #02,#4c,#30,#02,#45,#30,#02,#55
	db #30,#02,#58,#30,#02,#51,#30,#02
	db #49,#30,#02,#40,#30,#02,#50,#30
	db #02,#53,#30,#02,#4c,#30,#02,#58
	db #30,#02,#4c,#30,#02,#53,#30,#02
	db #47,#30,#02,#ff,#50,#a0,#0e,#ce
	db #a0,#cc,#a0,#4b,#a0,#04,#49,#a0
	db #02,#4b,#a0,#0a,#4c,#a0,#0a,#50
	db #a0,#02,#4e,#a0,#02,#4c,#a0,#02
	db #47,#a0,#10,#ff,#49,#a0,#0a,#4b
	db #a0,#02,#47,#a0,#02,#40,#a0,#02
	db #42,#a0,#10,#4c,#a0,#0a,#d0,#a0
	db #ce,#a0,#50,#a0,#02,#53,#a0,#02
	db #4c,#a0,#10,#ff,#49,#2f,#07,#10
	db #47,#2f,#06,#10,#45,#20,#10,#4c
	db #20,#10,#ff,#49,#2f,#07,#10,#47
	db #2f,#06,#10,#45,#20,#10,#4c,#20
	db #02,#4c,#fb,#14,#4c,#fb,#15,#4c
	db #fb,#16,#4c,#fb,#17,#4c,#fb,#18
	db #4c,#fb,#19,#4c,#fb,#1a,#4c,#fb
	db #1b,#4c,#fb,#1c,#4c,#fb,#1d,#4c
	db #fb,#1e,#4c,#fb,#3f,#ff
;
.music_info
	db "CPC-Telegramm 01 (1995)(FrankenTeam)()",0
	db "ST-128 Module - MSI-Demo",0

	read "music_end.asm"
