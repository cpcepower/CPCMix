; Music of Escape from Planet of Robot Monsters (1990)(Domark)(Ben Daglish)()
; Ripped by Megachur the 06/02/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ESCFPORM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #18c0

	read "music_header.asm"

	jp l194e	; init music	a = 0
	jp l19d6	; play music
.music_end
.l18c6
	db #00
	jp l18d1	; sound fx
;
.stop_music
;
	xor a	; stop music
	ld (l18c6),a
	jp l1cac
.l18d1
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,l2240
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,l1bf2
	call l1c28
	set 7,(ix+#11)
	ret
.l18fe equ $ + 7
.l18f8 equ $ + 1
.l18f7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1906 equ $ + 7
.l1904 equ $ + 5
.l1903 equ $ + 4
.l1902 equ $ + 3
.l1901 equ $ + 2
.l1900 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l190d equ $ + 6
.l190c equ $ + 5
	db #00,#00,#00,#00,#00,#08,#00,#00
.l1916 equ $ + 7
.l1915 equ $ + 6
.l1913 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l191b equ $ + 4
.l1919 equ $ + 2
.l1918 equ $ + 1
.l1917
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1922 equ $ + 3
.l1921 equ $ + 2
	db #00,#00,#10,#00,#00,#00,#00,#00
.l192e equ $ + 7
.l192d equ $ + 6
.l192c equ $ + 5
.l192b equ $ + 4
.l192a equ $ + 3
.l1928 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1936 equ $ + 7
.l1930 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
.init_music
.l194e
;
	push af
	call l1cac
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l2090
	add l
	ld l,a
	jr nc,l195f
	inc h
.l195f
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l18f8),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l190d),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1922),de
	xor a
	ld (l1901),a
	ld (l1916),a
	ld (l192b),a
	ld (l1906),a
	ld (l191b),a
	ld (l1930),a
	cpl
	ld (l1902),a
	ld (l1917),a
	ld (l192c),a
	ld a,#01
	ld (l1900),a
	ld (l1915),a
	ld (l192a),a
	ld (l1903),a
	ld (l1918),a
	ld (l192d),a
	ld hl,l1936
	ld bc,#030a
.l19ae
	xor a
.l19af
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l19af
	djnz l19ae
	ld hl,l2142
	ld (l18fe),hl
	ld (l1913),hl
	ld (l1928),hl
	ld a,#ff
	ld (l1904),a
	ld (l1919),a
	ld (l192e),a
	ld (l18c6),a
	ret
;
.play_music
.l19d6
;
	call l1ce4
	ld a,(l18c6)
	and a
	ret z
	ld a,(l1904)
	or a
	jr z,l19ee
	ld a,(l1919)
	or a
	jr z,l19ee
	ld a,(l192e)
	or a
.l19ee
	ld (l18c6),a
	jr nz,l1a01
	ld a,(l1bf1)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l18c6),a
	ret
.l1a01
	ld iy,l18f7
	ld ix,l1bf2
	call l1a1f
	ld iy,l190c
	ld ix,l1c04
	call l1a1f
	ld iy,l1921
	ld ix,l1c16
.l1a1f
	call l1b60
	ld a,(iy+#0b)
	and a
	jr z,l1aa4
.l1a28
	dec (iy+#09)
	jr z,l1a3f
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l1aa4
.l1a3f
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l1a49
	ld a,(hl)
	cp #80
	jr c,l1a84
	cp #fe
	jr nz,l1a5b
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l1a49
.l1a5b
	cp #ff
	jr nz,l1a64
	xor a
	ld (iy+#0d),a
	ret
.l1a64
	cp #c0
	jr nc,l1a71
	and #1f
	ld (iy+#09),a
	inc hl
	jp l1a49
.l1a71
	and #07
	add (iy+#00)
	ld de,l1936
	add e
	ld e,a
	jr nc,l1a7e
	inc d
.l1a7e
	inc hl
	ldi
	jp l1a49
.l1a84
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,l2060
	add hl,bc
	ld e,(hl)
	ld hl,l2078
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr l1aaa
.l1aa4
	ld e,(iy+#05)
	ld d,(iy+#06)
.l1aaa
	dec (iy+#0c)
	jr z,l1abc
	ld a,(de)
	cp #80
	call nc,l1b26
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l1abc
	ld a,(de)
	cp #80
	jr c,l1acd
	call l1b26
	ld a,(iy+#0b)
	and a
	jr z,l1abc
	jp l1a28
.l1acd
	cp #7f
	jr z,l1b19
	cp #7e
	jr nz,l1ade
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l1af2
.l1ade
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,l1eb2
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l1af2
	ld a,(iy+#0f)
	or #c0
.l1af8 equ $ + 1
	ld (iy+#14),a
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld c,a
	ld (iy+#05),e
	ld (iy+#06),d
	ld e,(iy+#07)
	ld a,(iy+#08)
	ld hy,a
	ld ly,e
	bit 7,(ix+#11)
	ret nz
	jp l1c28
.l1b19
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l1b26
	ld a,(de)
	cp #88
	jr nc,l1b44
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l1936
	add hl,bc
	ld c,(hl)
	ld hl,l2142
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l1b44
	cp #ff
	jr nz,l1b4d
	ld (iy+#0b),#ff
	ret
.l1b4d
	cp #c0
	jr nc,l1b58
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l1b58
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l1b60
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l1b74
	res 7,(iy+#14)
	ret
.l1b74
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l1ba8
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l1ba8
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l1b97
	inc h
	ld (iy+#11),h
.l1b97
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l1bdd
.l1ba8
	ld hl,l1af8
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l1bc2
	bit 6,(iy+#14)
	jr nz,l1bc2
	ld (iy+#13),#01
	ret
.l1bc2
	res 6,(iy+#14)
	ld a,(hl)
	rrca
	rrca
	rrca
	and d
	ld (iy+#12),a
	ld a,(hl)
	and d
	inc a
	ld (iy+#13),a
	ld (iy+#10),l
	ld (iy+#11),h
	ld a,(iy+#0e)
.l1bdd
	add a
	ld hl,l1eb2
	add l
	ld l,a
	jr nc,l1be6
	inc h
.l1be6
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.l1bf7 equ $ + 7
.l1bf6 equ $ + 6
.l1bf5 equ $ + 5
.l1bf2 equ $ + 2
.l1bf1 equ $ + 1
	db #00,#bf,#fe,#f7,#09,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1c07 equ $ + 7
.l1c04 equ $ + 4
.l1c03 equ $ + 3
	db #00,#00,#00,#00,#fd,#ef,#12,#00
.l1c09 equ $ + 1
.l1c08
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1c16 equ $ + 6
.l1c15 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#fb,#df
.l1c1b equ $ + 3
.l1c1a equ $ + 2
.l1c19 equ $ + 1
	db #24,#00,#00,#00,#00,#00,#00,#00
.l1c27 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1c28
	ld a,ly
	ld (ix+#0f),a
	ld a,hy
	ld (ix+#10),a
	ld (ix+#03),l
	ld (ix+#04),h
	ld (ix+#06),c
	ld a,(iy+#05)
	ld (ix+#07),a
	ld a,(iy+#06)
	and #7f
	srl a
	jr nz,l1c4c
	ld a,#01
.l1c4c
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(l1bf1)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,l1c75
	and (ix+#00)
.l1c75
	bit 1,c
	jr z,l1c7c
	and (ix+#01)
.l1c7c
	ld (l1bf1),a
	bit 2,c
	jr nz,l1c8d
	ld hl,l1dda
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l1c8d
	ld hl,#ffbf
	ld c,#fd
	ld a,(iy+#00)
	ld e,#0d
	call l1e92
	ld a,(iy+#04)
	ld e,#0b
	call l1e92
	inc e
	xor a
	call l1e92
	ld (ix+#05),#ff
	ret
.l1cac
	ld c,#fd
	ld hl,#ffbf
	ld e,#07
	ld a,(l1bf1)
	or #3f
	ld (l1bf1),a
	call l1e92
	xor a
	inc e
	call l1e92
	inc e
	call l1e92
	inc e
	call l1e92
	ld a,#01
	inc e
	call l1e92
	inc e
	xor a
	call l1e92
	inc e
	call l1e92
	ld (l1c03),a
	ld (l1c15),a
	ld (l1c27),a
	ret
.l1ce4
	ld a,(l1bf1)
	and #3f
	cp #3f
	ret z
	ld ix,l1bf2
	call l1da8
	ld ix,l1c04
	call l1da8
	ld ix,l1c16
	call l1da8
	ld ix,l1bf2
	ld hl,#ffbf
	ld c,#fd
	ld e,#07
	ld a,(l1bf1)
	call l1e92
	ld e,#00
	ld a,(l1bf5)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,l1d22
	ld d,a
.l1d22
	call l1e92
	inc e
	ld a,(l1bf6)
	adc (ix+#0a)
	call l1e92
	inc e
	ld a,(l1c07)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,l1d3e
	ld d,a
.l1d3e
	call l1e92
	inc e
	ld a,(l1c08)
	adc (ix+#1c)
	call l1e92
	inc e
	ld a,(l1c19)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,l1d5a
	ld d,a
.l1d5a
	call l1e92
	inc e
	ld a,(l1c1a)
	adc (ix+#2e)
	call l1e92
	inc e
	ld a,d
	rrca
	rrca
	rrca
	call l1e92
	ld e,#08
	ld a,(l1da7)
	ld d,a
	ld a,(l1bf7)
	cp d
	jr c,l1d7c
	ld a,d
.l1d7c
	srl a
	srl a
	srl a
	call l1e92
	inc e
	ld a,(l1c09)
	cp d
	jr c,l1d8d
	ld a,d
.l1d8d
	srl a
	srl a
	srl a
	call l1e92
	inc e
	ld a,(l1c1b)
	cp d
	jr c,l1d9e
	ld a,d
.l1d9e
	srl a
	srl a
	srl a
	jp l1e92
.l1da7
	ld a,a
.l1da8
	ld a,(l1bf1)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l1dc9
	cp #ff
	jr z,l1dc9
	dec (ix+#06)
.l1dc9
	call l1e50
	bit 2,(iy+#09)
	jp nz,l1e49
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.l1dda
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l1de9
	ld (ix+#05),a
	ret
.l1de9
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l1df9
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l1df9
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l1e0b
	cp (iy+#02)
	jr c,l1e0b
	ld (ix+#05),a
	ret
.l1e0b
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l1e1b
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l1e1b
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l1e2a
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l1e2a
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l1e37
	ld (ix+#05),a
	ret
.l1e37
	ld (ix+#05),#00
	ld a,(l1bf1)
	or (ix+#02)
	ld (l1bf1),a
	res 7,(ix+#11)
	ret
.l1e49
	ld a,(ix+#06)
	and a
	ret nz
	jr l1e37
.l1e50
	ld a,(ix+#07)
	and a
	jr z,l1e5d
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.l1e5d
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld c,(ix+#0b)
	ld b,(ix+#0c)
	add hl,bc
	ld (ix+#09),l
	ld (ix+#0a),h
	dec (ix+#08)
	ret nz
	ld a,(iy+#06)
	and a
	ret z
	jp p,l1e81
	ld (ix+#07),#ff
	ret
.l1e81
	ld (ix+#08),a
	ld a,c
	cpl
	ld c,a
	ld a,b
	cpl
	ld b,a
	inc bc
	ld (ix+#0b),c
	ld (ix+#0c),b
	ret
.l1e92
	push bc
	ld c,e
	push de
	push hl
	ld de,#c000
	ld hl,#f680
	ld b,#f4
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ld b,#f4
	out (c),a
	ld b,h
	out (c),l
	out (c),e
	pop hl
	pop de
	pop bc
	ret
.l1eb2
	dw #09fe,#096e,#08e6,#0866
	dw #07f0,#077d,#070f,#06a9
	dw #064a,#05f2,#059b,#054a
	dw #04ff,#04b7,#0474,#0433
	dw #03f7,#03c0,#0389,#0355
	dw #0325,#02f9,#02ce,#02a6
	dw #0280,#025c,#023b,#021a
	dw #01fc,#01e0,#01c4,#01ab
	dw #0193,#017c,#0167,#0153
	dw #0140,#012e,#011d,#010d
	dw #00fe,#00f0,#00e2,#00d6
	dw #00ca,#00be,#00b3,#00a9
	dw #00a0,#0097,#008e,#0086
	dw #007f,#0078,#0071,#006b
	dw #0065,#005f,#005a,#0055
	dw #0050,#004b,#0047,#0043
	dw #003f,#003c,#0038,#0035
	dw #0032,#002f,#002d,#002a
	dw #0028,#0025,#0023,#0021
	dw #001f,#001e,#001c,#001a
	dw #0019,#0017,#0016,#0015
.l1f5a
	db #80,#0d,#0a,#0f,#0a,#81,#27,#0a
	db #80,#0f,#0a,#80,#0d,#0a,#0a,#0a
.l1f71 equ $ + 7
	db #81,#27,#0a,#80,#0a,#0a,#ff,#82
.l1f77 equ $ + 5
	db #92,#1b,#50,#90,#ff,#82,#91,#19
.l1f7d equ $ + 3
	db #50,#90,#ff,#82,#91,#17,#50,#90
.l1f83 equ $ + 1
	db #ff,#83,#27,#05,#33,#05,#27,#05
	db #27,#05,#83,#33,#05,#27,#05,#27
.l1f99 equ $ + 7
.l1f96 equ $ + 4
	db #05,#33,#05,#ff,#7f,#50,#ff,#80
	db #08,#05,#08,#05,#14,#05,#14,#05
.l1fa7 equ $ + 5
	db #08,#0a,#14,#0a,#ff,#80,#0a,#05
	db #0a,#05,#16,#05,#16,#05,#0a,#0a
.l1fb5 equ $ + 3
	db #16,#0a,#ff,#80,#0b,#05,#0b,#05
	db #17,#05,#17,#05,#0b,#0a,#17,#0a
.l1fc3 equ $ + 1
	db #ff,#80,#0d,#05,#0d,#05,#19,#05
.l1fd1 equ $ + 7
	db #19,#05,#0d,#0a,#19,#0a,#ff,#82
.l1fd7 equ $ + 5
	db #92,#14,#50,#90,#ff,#82,#92,#16
.l1fdd equ $ + 3
	db #50,#90,#ff,#84,#1e,#50,#20,#50
.l1fe9 equ $ + 7
	db #22,#50,#23,#28,#25,#28,#ff,#84
	db #27,#50,#25,#3c,#22,#14,#27,#50
.l1ff3 equ $ + 1
	db #ff,#84,#25,#05,#22,#05,#20,#05
.l2001 equ $ + 7
.l1ffd equ $ + 3
	db #22,#05,#ff,#82,#1b,#82,#ff,#7f
.l2004 equ $ + 2
	db #1e,#ff,#83,#20,#05,#2c,#05,#20
	db #05,#20,#05,#83,#2c,#05,#20,#05
.l2017 equ $ + 5
	db #20,#05,#2c,#05,#ff,#83,#22,#05
	db #2e,#05,#22,#05,#22,#05,#83,#2e
	db #05,#22,#05,#22,#05,#2e,#05,#ff
.l202a
	db #83,#23,#05,#2f,#05,#23,#05,#23
	db #05,#83,#2f,#05,#23,#05,#23,#05
.l203d equ $ + 3
	db #2f,#05,#ff,#83,#25,#05,#31,#05
	db #25,#05,#25,#05,#83,#31,#05,#25
.l2050 equ $ + 6
	db #05,#25,#05,#31,#05,#ff,#82,#1e
.l2056 equ $ + 4
	db #50,#1d,#50,#ff,#82,#22,#50,#20
.l205c equ $ + 2
	db #50,#ff,#82,#0f,#82,#ff
.l2060
;	db #5a,#71,#77,#7d,#83,#96,#99,#a7
;	db #b5,#c3,#d1,#d7,#dd,#e9,#f3,#fd
;	db #01,#04,#17,#2a,#3d,#50,#56,#5c
	db l1f5a,l1f71,l1f77,l1f7d
	db l1f83,l1f96,l1f99,l1fa7
	db l1fb5,l1fc3,l1fd1,l1fd7
	db l1fdd,l1fe9,l1ff3,l1ffd
	db l2001,l2004,l2017,l202a
	db l203d,l2050,l2056,l205c
.l2078
;	db #1f,#1f,#1f,#1f,#1f,#1f,#1f,#1f
;	db #1f,#1f,#1f,#1f,#1f,#1f,#1f,#1f
;	db #20,#20,#20,#20,#20,#20,#20,#20
	db l1f5a/&100,l1f71/&100,l1f77/&100,l1f7d/&100
	db l1f83/&100,l1f96/&100,l1f99/&100,l1fa7/&100
	db l1fb5/&100,l1fc3/&100,l1fd1/&100,l1fd7/&100
	db l1fdd/&100,l1fe9/&100,l1ff3/&100,l1ffd/&100
	db l2001/&100,l2004/&100,l2017/&100,l202a/&100
	db l203d/&100,l2050/&100,l2056/&100,l205c/&100
.l2090
	dw l2096,l20cb,l210d
.l2096
	db #fe,#ff,#88,#04,#88,#00,#82,#06
	db #82,#07,#82,#08,#82,#09,#82,#06
	db #82,#07,#82,#08,#82,#09,#88,#00
	db #fe,#01,#88,#09,#82,#06,#82,#07
	db #82,#08,#82,#09,#82,#06,#82,#07
	db #82,#08,#82,#09,#88,#00,#fe,#ff
.l20cb equ $ + 5
	db #88,#04,#88,#04,#ff,#fe,#ff,#82
	db #05,#15,#01,#02,#01,#03,#01,#02
	db #01,#03,#0a,#0b,#03,#02,#0a,#0b
	db #03,#02,#01,#02,#01,#03,#01,#02
	db #01,#03,#fe,#01,#01,#02,#01,#03
	db #01,#02,#01,#03,#0a,#0b,#03,#02
	db #0a,#0b,#03,#02,#01,#02,#01,#03
	db #01,#02,#01,#03,#fe,#ff,#01,#02
.l210d equ $ + 7
	db #01,#03,#01,#02,#01,#03,#ff,#fe
	db #ff,#82,#05,#16,#84,#05,#88,#04
	db #82,#11,#82,#12,#82,#13,#82,#14
	db #0c,#0d,#84,#0e,#0f,#82,#05,#10
	db #fe,#01,#88,#04,#88,#04,#82,#11
	db #82,#12,#82,#13,#82,#14,#0c,#0d
	db #84,#0e,#0f,#82,#05,#10,#fe,#ff
.l2142 equ $ + 4
	db #17,#84,#05,#ff,#7f,#fa,#00,#fe
	db #7f,#00,#00,#00,#00,#01,#7f,#f8
	db #00,#ff,#7f,#00,#01,#02,#00,#03
	db #50,#ff,#1e,#ff,#7f,#00,#03,#02
	db #00,#01,#7f,#f6,#00,#ff,#64,#00
	db #00,#00,#00,#01,#7f,#fe,#63,#fe
	db #7f,#00,#00,#00,#00,#01,#01,#ff
	db #00,#ff,#7f,#00,#02,#01,#00,#01
	db #7f,#f6,#00,#ff,#7f,#00,#00,#00
	db #00,#03,#7f,#fe,#50,#fe,#70,#00
	db #01,#02,#00,#01,#7f,#fa,#50,#ff
	db #7f,#00,#03,#01,#00,#01,#7f,#fa
	db #50,#ff,#7f,#00,#03,#01,#00,#01
	db #7f,#fa,#50,#ff,#7f,#00,#03,#01
	db #00,#01,#7f,#fa,#50,#ff,#7f,#00
	db #03,#01,#00,#01,#7f,#fa,#50,#ff
	db #7f,#00,#03,#01,#00,#01,#7f,#fa
	db #50,#ff,#7f,#00,#03,#01,#00,#01
	db #7f,#fa,#50,#ff,#7f,#00,#03,#01
	db #00,#01,#7f,#fa,#50,#ff,#7f,#00
	db #03,#01,#00,#01,#7f,#fa,#50,#ff
	db #7f,#00,#03,#01,#00,#01,#7f,#fa
	db #50,#ff,#7f,#00,#03,#01,#00,#01
	db #7f,#fa,#50,#ff,#7f,#00,#03,#01
	db #00,#01,#8a,#22,#3a,#00,#00,#00
	db #00,#00,#8a,#1a,#3a,#00,#00,#00
	db #00,#00,#8a,#1a,#32,#00,#00,#00
	db #00,#00,#89,#31,#00,#00,#00,#00
	db #00,#00,#89,#21,#00,#00,#00,#00
	db #00,#00,#89,#19,#00,#00,#00,#00
	db #00,#00,#89,#29,#00,#00,#00,#00
	db #00,#00,#89,#49,#00,#00,#00,#00
.l2240 equ $ + 2
	db #00,#00,#0e,#fe,#01,#ff,#7f,#00
	db #04,#11,#00,#01,#53,#00,#28,#7f
	db #fc,#01,#ff,#7f,#00,#00,#1b,#00
	db #03,#07,#00,#14,#7f,#f5,#01,#ff
	db #7f,#00,#00,#5c,#00,#03,#96,#01
	db #0a,#7f,#fe,#01,#ff,#7f,#05,#04
	db #02,#00,#01,#68,#00,#28,#03,#55
;
; #040b
; xor a
; call #194e	; init
; ld a,(#18c6); musicend
; or a
; jr nz,l0418
; call #194e; init
; .l0418
; halt
; halt
; halt
; halt
; halt
; halt
; call #19d6; play
;
.music_info
	db "Escape from Planet of Robot Monsters (1990)(Domark)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
