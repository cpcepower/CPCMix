; Music of CPC-Telegramm 03 - Yeah! That's Music (1995)(FrankenTeam)(Kangaroo)(ST-128 Module)
; Ripped by Megachur the 16/03/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPC03TSM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #16c4

	read "music_header.asm"

	jp l16cd
	jp l1761
	jp l1745
;
.init_music
.l16cd
;
	xor a
	ld hl,l1c78
	call l173e
	ld hl,l1ca6
	call l173e
	ld hl,l1cd4
	call l173e
	ld ix,l1c74
	ld iy,l1cfe
	ld de,#002e
	ld b,#03
.l16ed
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
	djnz l16ed
	ld hl,l1b8d
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
	ld (l1b89),hl
	ld (l1b8b),hl
	ld a,#0c
	ld c,d
	call l1b69
	ld a,#0d
	ld c,d
	jp l1b69
.l173e
	ld b,#2a
.l1740
	ld (hl),a
	inc hl
	djnz l1740
	ret
;
.stop_music
.l1745
;
	ld a,#07
	ld c,#3f
	call l1b69
	ld a,#08
	ld c,#00
	call l1b69
	ld a,#09
	ld c,#00
	call l1b69
	ld a,#0a
	ld c,#00
	jp l1b69
;
.play_music
.l1761
;
	ld hl,l1b8f
	dec (hl)
	ld ix,l1c74
	ld bc,l1c82
	call l1803
	ld ix,l1ca2
	ld bc,l1cb0
	call l1803
	ld ix,l1cd0
	ld bc,l1cde
	call l1803
	ld hl,l1b88
	ld de,l1b8f
	ld b,#06
	call l17e0
	ld b,#07
	call l17e0
	ld b,#0b
	call l17e0
	ld b,#0d
	call l17e0
	ld de,l1b8f
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l1c93
	call l17b9
	ld hl,l1cc1
	call l17b9
	ld hl,l1cef
.l17b9
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
	jr nz,l17ce
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l17ce
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
.l17e0
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l1b69
.l17eb
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l1b69
.l1803
	ld a,(l1b8f)
	or a
	jp nz,l18bb
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l18bb
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l17eb
	or a
	jp z,l18b0
	ld r,a
	and #7f
	cp #10
	jr c,l188b
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l1a03
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
	jr z,l1864
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l1864
	rrca
	ld c,a
	ld hl,l1d04
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
	jr z,l1883
	ld (ix+#1e),b
.l1883
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l18a4
.l188b
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l1b94
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
.l18a4
	ld a,d
	or a
	jr nz,l18b2
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l18b2
.l18b0
	ld a,(hl)
	inc hl
.l18b2
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l18bb
	ld a,(ix+#17)
	or a
	jr nz,l18d1
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l18d1
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l18e7
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l18e7
	ld a,(ix+#0d)
	or a
	jr z,l18f5
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l1913
.l18f5
	ld a,(ix+#1a)
	or a
	jp z,l191a
	ld c,a
	cp #03
	jr nz,l1902
	xor a
.l1902
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l1913
	ld a,(ix+#18)
	dec c
	jr z,l1913
	ld a,(ix+#19)
.l1913
	add (ix+#07)
	ld b,d
	call l1a03
.l191a
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l1942
	dec (ix+#1b)
	jr nz,l1942
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l197a
.l1942
	ld a,(ix+#29)
	or a
	jr z,l197a
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l1971
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l1968
	ld (ix+#29),#ff
	jr l1971
.l1968
	cp (ix+#2b)
	jr nz,l1971
	ld (ix+#29),#01
.l1971
	ld b,d
	or a
	jp p,l1977
	dec b
.l1977
	ld c,a
	jr l1985
.l197a
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l1985
	pop hl
	bit 7,(ix+#14)
	jr z,l198e
	ld h,d
	ld l,d
.l198e
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l1b69
	ld c,h
	ld a,(ix+#02)
	call l1b69
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l19e1
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l19d0
	dec (ix+#09)
	jr nz,l19d0
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l19c8
	xor a
	jr l19cd
.l19c8
	cp #10
	jr nz,l19cd
	dec a
.l19cd
	ld (ix+#1e),a
.l19d0
	ld a,b
	sub (ix+#1e)
	jr nc,l19d7
	xor a
.l19d7
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l1b69
.l19e1
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l1b90)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l19ff
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l19ff
	ld (l1b90),hl
	ret
.l1a03
	ld hl,l1bb2
	cp #61
	jr nc,l1a0d
	add a
	ld c,a
	add hl,bc
.l1a0d
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l1a17
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l1b3c
	ld (ix+#1e),a
	jp l18a4
.l1a29
	dec b
.l1a2a
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l1a35
	neg
.l1a35
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
	jp l18a4
.l1a4b
	dec b
	jr l1a4f
.l1a4e
	inc b
.l1a4f
	call l1b3c
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l18a4
.l1a5e
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
	jp l1b21
.l1a6f
	ld a,(hl)
	inc hl
	or a
	jr z,l1a91
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
.l1a91
	ld (ix+#29),a
	jp l18a4
.l1a97
	dec hl
	ld a,(hl)
	and #0f
	ld (l1b93),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l1b92),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l18a4
.l1ab1
	ld a,(hl)
	or a
	jr z,l1ac2
	call l1b3e
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l18a4
.l1ac2
	ld hl,#0101
	ld (l1b8e),hl
	jp l18a4
.l1acb
	call l1b3c
	ld (ix+#1e),a
	jp l18a4
.l1ad4
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l1b4d
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l1b4d
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l18a4
.l1af6
	ld a,(hl)
	inc hl
	ld (l1b8d),a
	jp l18a4
.l1afe
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
	jp l18a4
.l1b1d
	call l1b3c
	add a
.l1b21
	ld b,#00
	ld c,a
	push hl
	ld hl,l1d84
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l18a4
.l1b3c
	ld a,(hl)
	inc hl
.l1b3e
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
.l1b4d
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l1d04
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l1b69
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
.l1b88
	ret
.l1b90 equ $ + 7
.l1b8f equ $ + 6
.l1b8e equ $ + 5
.l1b8d equ $ + 4
.l1b8b equ $ + 2
.l1b89
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1b93 equ $ + 2
.l1b92 equ $ + 1
	db #38,#00,#00
.l1b94
	dw l1a17,l1a2a,l1a29,l1a4e
	dw l1a4b,l1a5e,l1a6f,l1a97
	dw l1ab1,l1a97,l1acb,l1ad4
	dw l1af6,l1afe,l1b1d
.l1bb2
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
.l1c74 equ $ + 2
	dw #000f,#0008
.l1c78 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l1c82 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1c93 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1ca2 equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l1ca6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1cb0 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1cc1 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1cd4 equ $ + 6
.l1cd0 equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1cde
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1cef equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1d04 equ $ + 6
.l1cfe
	db #24,#1f,#39,#1f,#4e,#1f,#ac,#e0
	db #a6,#9f,#a6,#9f,#10,#c9,#a4,#1d
	db #e4,#1d,#04,#1e,#00,#00,#95,#d6
	db #a6,#9f,#a6,#9f,#10,#c9,#95,#d6
	db #a6,#9f,#a6,#9f,#10,#c9,#95,#d6
	db #b5,#e7,#f5,#e7,#7f,#10,#ac,#e0
	db #a6,#9f,#a6,#9f,#10,#c9,#95,#d6
	db #15,#e8,#55,#e8,#7f,#10,#24,#1e
	db #64,#1e,#84,#1e,#00,#00,#96,#d6
	db #a6,#9f,#a6,#9f,#10,#c9,#a4,#1e
	db #e4,#1e,#84,#1e,#08,#18,#24,#1e
	db #04,#1f,#84,#1e,#00,#00,#35,#e9
	db #a6,#9f,#55,#e9,#10,#c9,#a6,#9f
	db #a6,#9f,#a7,#9f,#11,#c9,#a7,#9f
	db #a7,#9f,#a7,#9f,#11,#c9,#a7,#9f
	db #96,#d6,#96,#d6,#00,#00,#96,#d6
.l1d84 equ $ + 6
	db #96,#d6,#96,#d6,#00,#00,#96,#d6
	db #96,#d6,#96,#d6,#96,#d6,#96,#d6
	db #96,#d6,#96,#d6,#96,#d6,#96,#d6
	db #96,#d6,#96,#d6,#96,#d6,#96,#d6
	db #96,#d6,#96,#d6,#96,#d6,#00,#00
	db #30,#00,#60,#00,#90,#00,#c0,#00
	db #f0,#00,#20,#01,#50,#01,#80,#01
	db #b0,#01,#e0,#01,#10,#02,#40,#02
	db #70,#02,#a0,#02,#d0,#02,#00,#03
	db #20,#03,#40,#03,#60,#03,#70,#03
	db #80,#03,#90,#03,#a0,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0d,#0d
	db #0c,#0c,#0b,#0a,#09,#08,#08,#07
	db #07,#06,#05,#04,#04,#04,#04,#03
	db #02,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#06,#00
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#09,#09,#08,#08,#07
	db #07,#06,#06,#05,#05,#04,#04,#03
	db #03,#03,#03,#03,#03,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#0d,#0c
	db #0b,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#0f,#0e
	db #0d,#0d,#0d,#0c,#0c,#0c,#0c,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#07,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#00,#63
	db #1f,#00,#63,#1f,#00,#63,#1f,#00
	db #63,#1f,#00,#63,#1f,#00,#63,#1f
	db #80,#24,#1f,#00,#85,#1f,#00,#85
	db #1f,#00,#85,#1f,#00,#85,#1f,#00
	db #85,#1f,#00,#85,#1f,#80,#39,#1f
	db #00,#e6,#1f,#00,#e6,#1f,#00,#e9
	db #1f,#00,#e9,#1f,#00,#4a,#20,#00
	db #4a,#20,#80,#4e,#1f,#47,#90,#0c
	db #49,#90,#04,#4a,#90,#06,#4c,#90
	db #06,#4a,#90,#04,#49,#90,#06,#47
	db #90,#06,#49,#90,#04,#42,#90,#06
	db #43,#90,#06,#42,#90,#04,#ff,#2f
	db #70,#02,#2f,#70,#02,#40,#10,#02
	db #2f,#70,#02,#2f,#70,#02,#2f,#70
	db #02,#40,#10,#02,#2f,#70,#02,#2b
	db #70,#02,#2b,#70,#02,#40,#10,#02
	db #2b,#70,#02,#2b,#70,#02,#2b,#70
	db #02,#40,#10,#02,#2b,#70,#02,#28
	db #70,#02,#28,#70,#02,#40,#10,#02
	db #28,#70,#02,#28,#70,#02,#28,#70
	db #02,#40,#10,#02,#28,#70,#02,#2a
	db #70,#02,#2a,#70,#02,#40,#10,#02
	db #2a,#70,#02,#2a,#70,#02,#2a,#70
	db #02,#40,#10,#02,#2a,#70,#02,#ff
	db #00,#40,#ff,#4a,#a0,#02,#47,#a0
	db #02,#4a,#a0,#02,#47,#a0,#02,#4c
	db #a0,#02,#47,#a0,#02,#4e,#a0,#02
	db #47,#a0,#02,#4f,#a0,#02,#47,#a0
	db #02,#4e,#a0,#02,#47,#a0,#02,#4a
	db #a0,#02,#47,#a0,#02,#4c,#a0,#02
	db #47,#a0,#02,#4e,#a0,#02,#47,#a0
	db #02,#4c,#a0,#02,#47,#a0,#02,#4a
	db #a0,#02,#47,#a0,#02,#4e,#a0,#02
	db #47,#a0,#02,#4c,#a0,#02,#47,#a0
	db #02,#4a,#a0,#02,#47,#a0,#02,#49
	db #a0,#02,#4a,#a0,#02,#49,#a0,#02
	db #47,#a0,#02,#ff,#4a,#70,#02,#49
	db #70,#02,#47,#70,#02,#c5,#70,#47
	db #70,#03,#49,#70,#02,#4a,#70,#02
	db #4c,#70,#02,#4e,#70,#04,#4f,#70
	db #04,#4e,#70,#02,#4c,#70,#02,#4e
	db #70,#02,#4f,#70,#02,#4e,#70,#04
	db #4a,#70,#04,#4a,#70,#02,#4c,#70
	db #02,#4a,#70,#02,#49,#70,#04,#45
	db #70,#02,#47,#70,#02,#49,#70,#02
	db #4a,#70,#02,#49,#70,#02,#47,#70
	db #02,#c5,#70,#c7,#70,#ff
;
.music_info
	db "CPC-Telegramm 03 - Yeah! That's Music (1995)(FrankenTeam)(Kangaroo)",0
	db "ST-128 Module",0

	read "music_end.asm"
