; Music of Walthery Slide Show - Intro (19xx)(Mortel)()(ST-128 Module)
; Ripped by Megachur the 25/12/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "WALTHSSI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #1500

	read "music_header.asm"

	jp l1509
	jp l159d
	jp l1581
;
.init_music
.l1509
;
	xor a
	ld hl,l1ab4
	call l157a
	ld hl,l1ae2
	call l157a
	ld hl,l1b10
	call l157a
	ld ix,l1ab0
	ld iy,l1b3a
	ld de,#002e
	ld b,#03
.l1529
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
	djnz l1529
	ld hl,l19c9
	ld (hl),#04
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l19c5),hl
	ld (l19c7),hl
	ld a,#0c
	ld c,d
	call l19a5
	ld a,#0d
	ld c,d
	jp l19a5
.l157a
	ld b,#2a
.l157c
	ld (hl),a
	inc hl
	djnz l157c
	ret
;
.stop_music
.l1581
;
	ld a,#07
	ld c,#3f
	call l19a5
	ld a,#08
	ld c,#00
	call l19a5
	ld a,#09
	ld c,#00
	call l19a5
	ld a,#0a
	ld c,#00
	jp l19a5
;
.play_music
.l159d
;
	ld hl,l19cb
	dec (hl)
	ld ix,l1ab0
	ld bc,l1abe
	call l163f
	ld ix,l1ade
	ld bc,l1aec
	call l163f
	ld ix,l1b0c
	ld bc,l1b1a
	call l163f
	ld hl,l19c4
	ld de,l19cb
	ld b,#06
	call l161c
	ld b,#07
	call l161c
	ld b,#0b
	call l161c
	ld b,#0d
	call l161c
	ld de,l19cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l1acf
	call l15f5
	ld hl,l1afd
	call l15f5
	ld hl,l1b2b
.l15f5
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
	jr nz,l160a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l160a
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
.l161c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l19a5
.l1627
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l19a5
.l163f
	ld a,(l19cb)
	or a
	jp nz,l16f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l16f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l1627
	or a
	jp z,l16ec
	ld r,a
	and #7f
	cp #10
	jr c,l16c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l183f
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
	jr z,l16a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l16a0
	rrca
	ld c,a
	ld hl,l1b40
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
	jr z,l16bf
	ld (ix+#1e),b
.l16bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l16e0
.l16c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l19d0
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
	add e
	add h
	add l
	add (hl)
	add h
.l16e0
	ld a,d
	or a
	jr nz,l16ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l16ee
.l16ec
	ld a,(hl)
	inc hl
.l16ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l16f7
	ld a,(ix+#17)
	or a
	jr nz,l170d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l170d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l1723
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l1723
	ld a,(ix+#0d)
	or a
	jr z,l1731
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l174f
.l1731
	ld a,(ix+#1a)
	or a
	jp z,l1756
	ld c,a
	cp #03
	jr nz,l173e
	xor a
.l173e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l174f
	ld a,(ix+#18)
	dec c
	jr z,l174f
	ld a,(ix+#19)
.l174f
	add (ix+#07)
	ld b,d
	call l183f
.l1756
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l177e
	dec (ix+#1b)
	jr nz,l177e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l17b6
.l177e
	ld a,(ix+#29)
	or a
	jr z,l17b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l17ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l17a4
	ld (ix+#29),#ff
	jr l17ad
.l17a4
	cp (ix+#2b)
	jr nz,l17ad
	ld (ix+#29),#01
.l17ad
	ld b,d
	or a
	jp p,l17b3
	dec b
.l17b3
	ld c,a
	jr l17c1
.l17b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l17c1
	pop hl
	bit 7,(ix+#14)
	jr z,l17ca
	ld h,d
	ld l,d
.l17ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l19a5
	ld c,h
	ld a,(ix+#02)
	call l19a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l181d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l180c
	dec (ix+#09)
	jr nz,l180c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l1804
	xor a
	jr l1809
.l1804
	cp #10
	jr nz,l1809
	dec a
.l1809
	ld (ix+#1e),a
.l180c
	ld a,b
	sub (ix+#1e)
	jr nc,l1813
	xor a
.l1813
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l19a5
.l181d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l19cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l183b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l183b
	ld (l19cc),hl
	ret
.l183f
	ld hl,l19ee
	cp #61
	jr nc,l1849
	add a
	ld c,a
	add hl,bc
.l1849
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l1853
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l1978
	ld (ix+#1e),a
	jp l16e0
.l1865
	dec b
.l1866
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l1871
	neg
.l1871
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
	jp l16e0
.l1887
	dec b
	jr l188b
.l188a
	inc b
.l188b
	call l1978
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l16e0
.l189a
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
	jp l195d
.l18ab
	ld a,(hl)
	inc hl
	or a
	jr z,l18cd
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
.l18cd
	ld (ix+#29),a
	jp l16e0
.l18d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l19cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l19ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l16e0
.l18ed
	ld a,(hl)
	or a
	jr z,l18fe
	call l197a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l16e0
.l18fe
	ld hl,#0101
	ld (l19ca),hl
	jp l16e0
.l1907
	call l1978
	ld (ix+#1e),a
	jp l16e0
.l1910
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l1989
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l1989
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l16e0
.l1932
	ld a,(hl)
	inc hl
	ld (l19c9),a
	jp l16e0
.l193a
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
	jp l16e0
.l1959
	call l1978
	add a
.l195d
	ld b,#00
	ld c,a
	push hl
	ld hl,l1bc0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l16e0
.l1978
	ld a,(hl)
	inc hl
.l197a
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
.l1989
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l1b40
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l19a5
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
.l19c4
	ret
.l19cc equ $ + 7
.l19cb equ $ + 6
.l19ca equ $ + 5
.l19c9 equ $ + 4
.l19c7 equ $ + 2
.l19c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l19cf equ $ + 2
.l19ce equ $ + 1
	db #38,#00,#00
.l19d0
	dw l1853,l1866,l1865,l188a
	dw l1887,l189a,l18ab,l18d3
	dw l18ed,l18d3,l1907,l1910
	dw l1932,l193a,l1959
.l19ee
	dw #0000,#0e18,#0d4d,#0c8e
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
	dw #000f
.l1ab4 equ $ + 4
.l1ab0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l1abe equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1acf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1ade equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l1ae2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l1aec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1afd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1b0c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l1b10
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1b1a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1b2b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1b3a equ $ + 2
	db #00,#00,#a0,#1e,#d0,#1e,#00,#1f
.l1b40
	db #d2,#d4,#d2,#d4,#d2,#d4,#00,#00
	db #e0,#1b,#20,#1c,#40,#1c,#40,#00
	db #60,#1c,#a0,#1c,#c0,#1c,#80,#00
	db #e0,#1c,#20,#1d,#40,#1d,#c0,#00
	db #d2,#d4,#d2,#d4,#d2,#d4,#00,#00
	db #d2,#d4,#d2,#d4,#d2,#d4,#00,#00
	db #d2,#d4,#d2,#d4,#d2,#d4,#00,#00
	db #60,#1d,#a0,#1d,#c0,#1d,#9a,#06
	db #e0,#1d,#20,#1e,#40,#1c,#48,#08
	db #d2,#d4,#d2,#d4,#d2,#d4,#00,#00
	db #d2,#d4,#d2,#d4,#d2,#d4,#00,#00
	db #d2,#d4,#d2,#d4,#d2,#d4,#00,#00
	db #d2,#d4,#d2,#d4,#d2,#d4,#00,#00
	db #d2,#d4,#d2,#d4,#d2,#d4,#00,#00
	db #d2,#d4,#d2,#d4,#d2,#d4,#00,#00
	db #d2,#d4,#d2,#d4,#d2,#d4,#00,#00
.l1bc0
	db #40,#1e,#60,#1e,#80,#1e,#d2,#d4
	db #d2,#d4,#d2,#d4,#d2,#d4,#d2,#d4
	db #d2,#d4,#d2,#d4,#d2,#d4,#d2,#d4
	db #d2,#d4,#d2,#d4,#d2,#d4,#d2,#d4
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #0e,#0d,#0c,#0b,#0a,#0c,#0b,#0a
	db #09,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #90,#01,#e0,#01,#30,#02,#80,#02
	db #d0,#02,#20,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #08,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#65,#01,#3e,#01,#00,#00
	db #c3,#04,#65,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#06,#07,#07,#00,#00
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
	db #0d,#0b,#09,#07,#05,#03,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0d,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #00,#05,#08,#00,#05,#08,#00,#05
	db #08,#00,#05,#08,#00,#05,#08,#00
	db #05,#08,#00,#05,#08,#00,#05,#08
	db #00,#05,#08,#00,#05,#08,#00,#05
	db #00,#00,#05,#05,#09,#09,#00,#00
	db #05,#05,#09,#09,#00,#00,#05,#05
	db #09,#09,#00,#00,#05,#05,#09,#09
	db #00,#00,#05,#05,#09,#09,#00,#00
	db #00,#00,#04,#04,#07,#07,#00,#00
	db #04,#04,#07,#07,#00,#00,#04,#04
	db #07,#07,#00,#00,#04,#04,#07,#07
	db #00,#00,#04,#04,#07,#07,#00,#00
	db #00,#30,#1f,#00,#30,#1f,#00,#30
	db #1f,#00,#30,#1f,#00,#30,#1f,#00
	db #30,#1f,#00,#30,#1f,#00,#75,#1f
	db #00,#75,#1f,#00,#75,#1f,#00,#75
	db #1f,#00,#30,#1f,#00,#75,#1f,#00
	db #75,#1f,#00,#75,#1f,#80,#a9,#1e
	db #00,#e6,#1f,#00,#e9,#1f,#00,#4e
	db #20,#00,#4e,#20,#00,#4e,#20,#00
	db #4e,#20,#00,#4e,#20,#00,#ef,#20
	db #00,#ef,#20,#00,#ef,#20,#00,#ef
	db #20,#00,#4e,#20,#00,#ef,#20,#00
	db #ef,#20,#00,#ef,#20,#80,#d9,#1e
	db #00,#00,#21,#00,#00,#21,#00,#00
	db #21,#00,#34,#21,#00,#7a,#21,#00
	db #34,#21,#00,#7a,#21,#00,#b8,#21
	db #00,#fa,#21,#00,#b8,#21,#00,#fa
	db #21,#00,#3c,#22,#00,#b8,#21,#00
	db #fa,#21,#00,#b8,#21,#80,#09,#1f
	db #28,#18,#1e,#04,#2f,#18,#14,#04
	db #2d,#18,#16,#04,#2f,#18,#14,#02
	db #28,#18,#1e,#06,#2f,#18,#14,#04
	db #2d,#18,#16,#04,#23,#18,#28,#04
	db #28,#18,#1e,#04,#2f,#18,#14,#04
	db #2d,#18,#16,#04,#2f,#18,#14,#02
	db #2a,#18,#1b,#04,#23,#18,#28,#02
	db #2b,#18,#19,#04,#23,#18,#28,#04
	db #26,#18,#22,#04,#ff,#24,#18,#26
	db #03,#fe,#01,#a4,#18,#26,#fe,#01
	db #24,#18,#26,#03,#fe,#01,#a4,#18
	db #26,#fe,#01,#24,#18,#26,#03,#fe
	db #01,#26,#18,#22,#03,#fe,#01,#a6
	db #18,#22,#fe,#01,#26,#18,#22,#03
	db #fe,#01,#a6,#18,#22,#fe,#01,#26
	db #18,#22,#03,#fe,#01,#21,#18,#2d
	db #03,#fe,#01,#a1,#18,#2d,#fe,#01
	db #21,#18,#2d,#03,#fe,#01,#a1,#18
	db #2d,#fe,#01,#21,#18,#2d,#03,#fe
	db #01,#24,#18,#26,#03,#fe,#01,#a4
	db #18,#26,#fe,#01,#23,#18,#28,#03
	db #fe,#01,#a3,#18,#28,#fe,#01,#23
	db #18,#28,#03,#fe,#01,#ff,#00,#40
	db #ff,#2f,#20,#02,#31,#70,#02,#b1
	db #70,#b1,#70,#31,#70,#02,#2f,#30
	db #02,#31,#70,#02,#31,#70,#02,#2f
	db #20,#02,#31,#70,#02,#31,#70,#02
	db #2f,#20,#02,#31,#70,#02,#2f,#30
	db #02,#31,#70,#02,#2f,#20,#02,#af
	db #20,#af,#30,#2f,#20,#02,#31,#70
	db #02,#b1,#70,#b1,#70,#31,#70,#02
	db #2f,#30,#02,#31,#70,#02,#31,#70
	db #02,#2f,#20,#02,#31,#70,#02,#2f
	db #20,#02,#2f,#20,#02,#2f,#20,#02
	db #2f,#30,#02,#31,#70,#02,#2f,#30
	db #02,#b1,#30,#b1,#30,#ff,#af,#20
	db #c7,#86,#02,#b1,#70,#c7,#86,#02
	db #b1,#70,#c7,#86,#02,#b1,#70,#c7
	db #86,#02,#af,#30,#c7,#86,#02,#b1
	db #70,#c7,#86,#02,#b1,#70,#c7,#86
	db #02,#af,#20,#c7,#86,#02,#b1,#70
	db #c7,#86,#02,#b1,#70,#c7,#86,#02
	db #af,#20,#c7,#86,#02,#b1,#70,#c7
	db #16,#02,#af,#30,#c7,#16,#02,#b1
	db #70,#c7,#86,#02,#af,#20,#c7,#86
	db #02,#af,#20,#c7,#86,#02,#af,#20
	db #c7,#86,#02,#b1,#70,#c7,#86,#02
	db #b1,#70,#c7,#86,#02,#b1,#70,#c7
	db #86,#02,#af,#30,#c7,#86,#02,#b1
	db #70,#c7,#86,#02,#b1,#70,#c7,#86
	db #02,#af,#20,#c7,#86,#02,#b1,#70
	db #c7,#86,#02,#af,#20,#c7,#86,#02
	db #af,#20,#c7,#86,#02,#af,#20,#c7
	db #86,#02,#af,#30,#c7,#86,#02,#b1
	db #70,#c7,#86,#02,#af,#30,#c7,#86
	db #02,#b1,#30,#c7,#86,#02,#ff,#43
	db #86,#11,#10,#45,#86,#12,#10,#48
	db #86,#22,#10,#45,#86,#12,#10,#ff
	db #28,#10,#04,#2f,#10,#04,#2d,#10
	db #04,#2f,#10,#02,#28,#10,#06,#2f
	db #10,#04,#2d,#10,#04,#23,#10,#04
	db #28,#10,#04,#2f,#10,#04,#2d,#10
	db #04,#2f,#10,#02,#2a,#10,#04,#23
	db #10,#02,#2b,#10,#04,#23,#10,#04
	db #26,#10,#04,#ff,#40,#80,#02,#43
	db #80,#02,#47,#80,#02,#cb,#80,#03
	db #11,#01,#03,#11,#0c,#4c,#80,#02
	db #4e,#80,#02,#4e,#80,#02,#03,#11
	db #01,#03,#11,#01,#4e,#80,#04,#4f
	db #80,#06,#4e,#80,#06,#4a,#80,#06
	db #47,#80,#02,#4a,#80,#02,#47,#80
	db #02,#cf,#80,#ca,#80,#c7,#80,#c3
	db #80,#cc,#80,#c7,#80,#c3,#80,#be
	db #80,#ff,#40,#80,#02,#43,#80,#02
	db #47,#80,#02,#cb,#80,#03,#11,#01
	db #03,#11,#0c,#4f,#80,#02,#51,#80
	db #02,#d2,#80,#03,#11,#03,#51,#80
	db #04,#53,#80,#06,#4f,#80,#06,#51
	db #80,#06,#4f,#80,#02,#4e,#80,#02
	db #4f,#80,#02,#4e,#80,#02,#4c,#80
	db #02,#4a,#80,#02,#47,#80,#02,#ff
	db #47,#80,#02,#03,#11,#01,#03,#11
	db #03,#4c,#80,#06,#48,#80,#04,#49
	db #80,#02,#03,#11,#01,#03,#11,#05
	db #45,#80,#04,#47,#80,#04,#40,#80
	db #10,#c0,#80,#c3,#80,#c7,#80,#cc
	db #80,#c3,#80,#c7,#80,#cc,#80,#cf
	db #80,#c7,#80,#cc,#80,#cf,#80,#d3
	db #80,#cc,#80,#cf,#80,#d3,#80,#d8
	db #80,#ff,#47,#80,#02,#03,#11,#01
	db #03,#11,#03,#4c,#80,#06,#48,#80
	db #04,#49,#80,#02,#03,#11,#01,#03
	db #11,#05,#45,#80,#04,#47,#80,#04
	db #4c,#80,#10,#cf,#80,#ce,#80,#cc
	db #80,#ca,#80,#ce,#80,#ca,#80,#c5
	db #80,#c2,#80,#cc,#80,#c7,#80,#c3
	db #80,#c0,#80,#c7,#80,#c3,#80,#c2
	db #80,#be,#80,#ff,#40,#80,#30,#03
	db #11,#01,#03,#11,#01,#03,#11,#01
	db #03,#11,#01,#03,#11,#01,#03,#11
	db #01,#03,#11,#01,#03,#11,#01,#03
	db #11,#01,#03,#11,#01,#03,#11,#01
	db #03,#11,#01,#03,#11,#01,#03,#11
	db #01,#03,#12,#01,#03,#12,#01,#ff
;
.music_info
	db "Walthery Slide Show - Intro (19xx)(Mortel)()",0
	db "ST-128 Module",0

	read "music_end.asm"
