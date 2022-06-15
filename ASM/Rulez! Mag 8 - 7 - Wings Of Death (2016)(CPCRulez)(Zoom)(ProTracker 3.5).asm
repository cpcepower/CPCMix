; Music of Rulez! Mag 8 - 7 - Wings Of Death (2016)(CPCRulez)(Zoom)(ProTracker 3.5)
; Ripped by Megachur the 10/04/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RULEZM87.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #134c

	read "music_header.asm"

;
.init_music
;
	ld hl,l2306
	jr l1371
.l1352 equ $ + 1
.l1351
	db #00,#00,#00
;
;.stop_music
.l1354
;
	ld hl,l1351
	set 7,(hl)
	bit 0,(hl)
	ret z
	pop hl
	ld hl,l1a6a
	inc (hl)
	ld hl,l1a2e
	inc (hl)
	xor a
	ld h,a
	ld l,a
	ld (l1a78),a
	ld (l1a79),hl
	jp l18f0
;
.real_init_music
.l1371
;
	ld (l14da),hl
	ld (l1670),hl
	push hl
	ld de,#0064
	add hl,de
	ld a,(hl)
	ld (l1877),a
	push hl
	pop ix
	add hl,de
	ld (l1352),hl
	ld e,(ix+#02)
	add hl,de
	inc hl
	ld (l1819),hl
	pop de
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,de
	ld (l1826),hl
	ld hl,#00a9
	add hl,de
	ld (l1669),hl
	ld hl,#0069
	add hl,de
	ld (l14d3),hl
	ld hl,l1351
	res 7,(hl)
	ld de,l19de
	ld bc,l1ae1
.l13b3
	ld a,(de)
	inc de
	cp #1e
	jr nc,l13bf
	ld h,a
	ld a,(de)
	ld l,a
	inc de
	jr l13c6
.l13bf
	push de
	ld d,#00
	ld e,a
	add hl,de
	add hl,de
	pop de
.l13c6
	ld a,h
	ld (bc),a
	dec bc
	ld a,l
	ld (bc),a
	dec bc
	sub #f0
	jr nz,l13b3
	ld hl,l1a13
	ld (hl),a
	ld de,l1a14
	ld bc,#006c
	ldir
	inc a
	ld (l1a6a),a
	ld hl,#f001
	ld (l1a2e),hl
	ld (l1a4b),hl
	ld (l1a68),hl
	ld hl,l19da
	ld (l1803),hl
	ld (l1a20),hl
	ld (l1a3d),hl
	ld (l1a5a),hl
	ld (l1a22),hl
	ld (l1a3f),hl
	ld (l1a5c),hl
	ld a,(ix-#57)
	sub #30
	jr c,l140f
	cp #0a
	jr c,l1411
.l140f
	ld a,#06
.l1411
	ld (l15bf),a
	push af
	cp #04
	ld a,(ix-#01)
	rla
	and #07
	ld hl,l198a
	push de
	ld d,b
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	srl e
	sbc a
	and #a7
	ld (l1452),a
	ex de,hl
	pop bc
	add hl,bc
	ld a,(de)
	add #9a
	ld c,a
	adc #19
	sub c
	ld b,a
	push bc
	ld de,l1b70
	push de
	ld b,#0c
.l1441
	push bc
	ld c,(hl)
	inc hl
	push hl
	ld b,(hl)
	push de
	ex de,hl
	ld de,#0017
	ld hx,#08
.l144e
	srl b
	rr c
.l1452
	add hl,de
	ld a,c
	adc d
	ld (hl),a
	inc hl
	ld a,b
	adc d
	ld (hl),a
	add hl,de
	dec hx
	jr nz,l144e
	pop de
	inc de
	inc de
	pop hl
	inc hl
	pop bc
	djnz l1441
	pop hl
	pop de
	ld a,e
	cp #a6
	jr nz,l1473
	ld a,#fd
	ld (l1b9e),a
.l1473
	ld a,(de)
	and a
	jr z,l1488
	rra
	push af
	add a
	ld c,a
	add hl,bc
	pop af
	jr nc,l1481
	dec (hl)
	dec (hl)
.l1481
	inc (hl)
	and a
	sbc hl,bc
	inc de
	jr l1473
.l1488
	pop af
	cp #05
	ld hl,#0011
	ld d,h
	ld e,h
	ld a,#17
	jr nc,l1497
	dec l
	ld e,l
	xor a
.l1497
	ld (l14a6),a
	ld ix,l1a80
	ld c,#10
.l14a0
	push hl
	add hl,de
	ex de,hl
	sbc hl,hl
.l14a5
	ld a,l
.l14a6
	ld a,l
	ld a,h
	adc #00
	ld (ix+#00),a
	inc ix
	add hl,de
	inc c
	ld a,c
	and #0f
	jr nz,l14a5
	pop hl
	ld a,e
	cp #77
	jr nz,l14bd
	inc e
.l14bd
	ld a,c
	and a
	jr nz,l14a0
	jp l18f0
.l14c4
	ld (ix+#08),#00
	call l1661
	ld a,(bc)
	inc bc
	rrca
.l14ce
	add a
.l14cf
	ld e,a
	ld d,#00
.l14d3 equ $ + 1
	ld hl,#2121
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l14da equ $ + 1
.l14d9
	ld hl,l14d9
	add hl,de
	ld (ix+#03),l
	ld (ix+#04),h
	jr l1526
.l14e5
	rlca
	rlca
	rlca
	rlca
	ld (ix+#10),a
	jr l1529
.l14ee
	ld (ix+#08),a
	ld (ix-#0c),a
	jr l1529
.l14f6
	dec a
	jr nz,l1500
	ld a,(bc)
	inc bc
	ld (ix+#05),a
	jr l1529
.l1500
	call l1645
	jr l1529
.l1505
	call l1661
	jr l1526
.l150a
	ld (ix+#08),a
	ld (ix-#0c),a
	call nz,l1645
	ld a,(bc)
	inc bc
	jr l14cf
.l1517
	ld a,(ix+#06)
	ld (l15a3),a
	ld l,(ix-#06)
	ld h,(ix-#05)
	ld (l15c5),hl
.l1526
	ld de,#2010
.l1529
	ld a,(bc)
	inc bc
	add e
	jr c,l14c4
	add d
	jr z,l157a
	jr c,l14ce
	add e
	jr z,l155b
	jr c,l14e5
	add e
	jr z,l14ee
	jr c,l14f6
	add #60
	jr c,l1561
	add e
	jr c,l1505
	add d
	jr c,l1556
	add e
	jr c,l150a
	add a
	ld e,a
	ld hl,#f59a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
	jr l1526
.l1556
	ld (l1a6e),a
	jr l1529
.l155b
	res 0,(ix+#09)
	jr l1569
.l1561
	ld (ix+#06),a
	set 0,(ix+#09)
	xor a
.l1569
	ld (l1578),sp
	ld sp,ix
	ld h,a
	ld l,a
	push hl
	push hl
	push hl
	push hl
	push hl
	push hl
.l1578 equ $ + 1
	ld sp,#3131
.l157a
	ld a,(ix+#05)
	ld (ix+#0f),a
	ret
.l1581
	res 2,(ix+#09)
	ld a,(bc)
	inc bc
	inc bc
	inc bc
	ld (ix+#0a),a
	ld (ix-#07),a
	ld de,l1b70
	ld a,(ix+#06)
	ld (ix+#07),a
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
.l15a3 equ $ + 1
	ld a,#3e
	ld (ix+#06),a
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	pop hl
	sbc hl,de
	ld (ix+#0d),l
	ld (ix+#0e),h
	ld e,(ix-#06)
	ld d,(ix-#05)
.l15bf equ $ + 1
	ld a,#3e
	cp #06
	jr c,l15cd
.l15c5 equ $ + 1
	ld de,#1111
	ld (ix-#06),e
	ld (ix-#05),d
.l15cd
	ld a,(bc)
	inc bc
	ex af,af'
	ld a,(bc)
	inc bc
	and a
	jr z,l15d6
	ex de,hl
.l15d6
	sbc hl,de
	jp p,l15e0
	cpl
	ex af,af'
	neg
	ex af,af'
.l15e0
	ld (ix+#0c),a
	ex af,af'
	ld (ix+#0b),a
	ld (ix-#02),#00
	ret
.l15ec
	set 2,(ix+#09)
	ld a,(bc)
	inc bc
	ld (ix+#0a),a
	and a
	jr nz,l15ff
	ld a,(l15bf)
	cp #07
	sbc a
	inc a
.l15ff
	ld (ix-#07),a
	ld a,(bc)
	inc bc
	ex af,af'
	ld a,(bc)
	inc bc
	jr l15e0
.l1609
	ld a,(bc)
	inc bc
	ld (ix-#0b),a
	ret
.l160f
	ld a,(bc)
	inc bc
	ld (ix-#0c),a
	ret
.l1615
	ld a,(bc)
	inc bc
	ld (ix-#01),a
	ld (ix-#02),a
	ld a,(bc)
	inc bc
	ld (ix+#00),a
	xor a
	ld (ix-#07),a
	ld (ix-#06),a
	ld (ix-#05),a
	ret
.l162d
	ld a,(bc)
	inc bc
	ld (l18e6),a
	ld (l1a6d),a
	ld a,(bc)
	inc bc
	ld l,a
	ld a,(bc)
	inc bc
	ld h,a
	ld (l18e9),hl
	ret
.l163f
	ld a,(bc)
	inc bc
	ld (l1877),a
	ret
.l1645
	ld (ix+#08),e
	ld (l1a7d),a
	ld a,(bc)
	inc bc
	ld h,a
	ld a,(bc)
	inc bc
	ld l,a
	ld (l1a7e),hl
	xor a
	ld (ix-#0c),a
	ld (l1a6d),a
	ld h,a
	ld l,a
	ld (l1a6b),hl
.l1660
	ret
.l1661
	add a
	ld e,a
	ld d,#00
	ld (ix-#0c),d
.l1669 equ $ + 1
	ld hl,#2121
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l1670 equ $ + 1
.l166f
	ld hl,l166f
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	ret
	dw l1660,l15ec,l1581,l1609
	dw l160f,l1615,l1660,l1660
	dw l162d,l163f,l1660,l1660
	dw l1660,l1660,l1660,l1660
.l169a
	xor a
	ld (l1a7a),a
	bit 0,(ix+#15)
	push hl
	jp z,l17c8
	ld (l1713),sp
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	ld sp,hl
	pop de
	ld h,a
	ld a,(ix+#00)
	ld l,a
	add hl,sp
	inc a
	cp d
	jr c,l16bd
	ld a,e
.l16bd
	ld (ix+#00),a
	ld a,(ix+#12)
	add (hl)
	jp p,l16c8
	xor a
.l16c8
	cp #60
	jr c,l16ce
	ld a,#5f
.l16ce
	add a
	ex af,af'
	ld l,(ix+#0f)
	ld h,(ix+#10)
	ld sp,hl
	pop de
	ld h,#00
	ld a,(ix+#01)
	ld b,a
	add a
	add a
	ld l,a
	add hl,sp
	ld sp,hl
	ld a,b
	inc a
	cp d
	jr c,l16e9
	ld a,e
.l16e9
	ld (ix+#01),a
	pop bc
	pop hl
	ld e,(ix+#08)
	ld d,(ix+#09)
	add hl,de
	bit 6,b
	jr z,l16ff
	ld (ix+#08),l
	ld (ix+#09),h
.l16ff
	ex de,hl
	ex af,af'
	ld l,a
	ld h,#00
	ld sp,l1b70
	add hl,sp
	ld sp,hl
	pop hl
	add hl,de
	ld e,(ix+#06)
	ld d,(ix+#07)
	add hl,de
.l1713 equ $ + 1
	ld sp,#3131
	ex (sp),hl
	xor a
	or (ix+#05)
	jr z,l175a
	dec (ix+#05)
	jr nz,l175a
	ld a,(ix+#16)
	ld (ix+#05),a
	ld l,(ix+#17)
	ld h,(ix+#18)
	ld a,h
	add hl,de
	ld (ix+#06),l
	ld (ix+#07),h
	bit 2,(ix+#15)
	jr nz,l175a
	ld e,(ix+#19)
	ld d,(ix+#1a)
	and a
	jr z,l1745
	ex de,hl
.l1745
	sbc hl,de
	jp m,l175a
	ld a,(ix+#13)
	ld (ix+#12),a
	xor a
	ld (ix+#05),a
	ld (ix+#06),a
	ld (ix+#07),a
.l175a
	ld a,(ix+#02)
	bit 7,c
	jr z,l1774
	bit 6,c
	jr z,l176c
	cp #0f
	jr z,l1774
	inc a
	jr l1771
.l176c
	cp #f1
	jr z,l1774
	dec a
.l1771
	ld (ix+#02),a
.l1774
	ld l,a
	ld a,b
	and #0f
	add l
	jp p,l177d
	xor a
.l177d
	cp #10
	jr c,l1783
	ld a,#0f
.l1783
	or (ix+#1c)
	ld l,a
	ld h,#00
	ld de,l1a70
	add hl,de
	ld a,(hl)
	bit 0,c
	jr nz,l1795
	or (ix+#14)
.l1795
	ld (l1a7a),a
	bit 7,b
	ld a,c
	jr z,l17b6
	rla
	rla
	sra a
	sra a
	sra a
	add (ix+#04)
	bit 5,b
	jr z,l17af
	ld (ix+#04),a
.l17af
	ld hl,l18c5
	add (hl)
	ld (hl),a
	jr l17c4
.l17b6
	rra
	add (ix+#03)
	ld (l1a6f),a
	bit 5,b
	jr z,l17c4
	ld (ix+#03),a
.l17c4
	ld a,b
	rra
	and #48
.l17c8
	ld hl,l1a77
	or (hl)
	rrca
	ld (hl),a
	pop hl
	xor a
	or (ix+#0a)
	ret z
	dec (ix+#0a)
	ret nz
	xor (ix+#15)
	ld (ix+#15),a
	rra
	ld a,(ix+#0b)
	jr c,l17e7
	ld a,(ix+#0c)
.l17e7
	ld (ix+#0a),a
	ret
;
.play_music
;
	xor a
	ld (l18c5),a
	ld (l1a77),a
	dec a
	ld (l1a7d),a
	ld hl,l1a6a
	dec (hl)
	jr nz,l187b
	ld hl,l1a2e
	dec (hl)
	jr nz,l184e
.l1803 equ $ + 1
	ld bc,#0101
	ld a,(bc)
	and a
	jr nz,l1843
	ld d,a
	ld (l1a6e),a
	ld hl,(l1352)
	inc hl
	ld a,(hl)
	inc a
	jr nz,l181d
	call l1354
.l1819 equ $ + 1
	ld hl,#2121
	ld a,(hl)
	inc a
.l181d
	ld (l1352),hl
	dec a
	add a
	ld e,a
	rl d
.l1826 equ $ + 1
	ld hl,#2121
	add hl,de
	ld de,(l14da)
	ld (l1841),sp
	ld sp,hl
	pop hl
	add hl,de
	ld b,h
	ld c,l
	pop hl
	add hl,de
	ld (l1859),hl
	pop hl
	add hl,de
	ld (l186d),hl
.l1841 equ $ + 1
	ld sp,#3131
.l1843
	ld ix,l1a1f
	call l1517
	ld (l1803),bc
.l184e
	ld hl,l1a4b
	dec (hl)
	jr nz,l1862
	ld ix,l1a3c
.l1859 equ $ + 1
	ld bc,#0101
	call l1517
	ld (l1859),bc
.l1862
	ld hl,l1a68
	dec (hl)
	jr nz,l1876
	ld ix,l1a59
.l186d equ $ + 1
	ld bc,#0101
	call l1517
	ld (l186d),bc
.l1877 equ $ + 1
.l1876
	ld a,#3e
	ld (l1a6a),a
.l187b
	ld ix,l1a13
	ld hl,(l1a70)
	call l169a
	call l1928
	ld (l1a70),hl
	ld a,(l1a7a)
	ld (l1a78),a
	ld ix,l1a30
	ld hl,(l1a72)
	call l169a
	call l1928
	ld (l1a72),hl
	ld a,(l1a7a)
	ld (l1a79),a
	ld ix,l1a4d
	ld hl,(l1a74)
	call l169a
	call l1928
	ld (l1a74),hl
	ld hl,(l1a6e)
	ld a,h
	add l
	srl a
	jr nc,l18c1
	inc a
.l18c1
	ld (l1a76),a
.l18c5 equ $ + 1
	ld a,#3e
	ld e,a
	add a
	sbc a
	ld d,a
	ld hl,(l1a7e)
	add hl,de
	ld de,(l1a6b)
	add hl,de
	push de
	call l194f
	pop de
	ld (l1a7b),hl
	xor a
	ld hl,l1a6d
	or (hl)
	jr z,l18f0
	dec (hl)
	jr nz,l18ef
.l18e6 equ $ + 1
	ld a,#3e
	ld (hl),a
.l18e9 equ $ + 1
	ld hl,#2121
	add hl,de
	ld (l1a6b),hl
.l18ef
	xor a
.l18f0
	ld hl,l1a70
.l18f3
	ld bc,#f4c0
	out (c),a
	ld b,#f6
	out (c),c
	db #ed,#71 ; out (c),0
	dec b
	outi
	ld bc,#f680
	out (c),c
	db #ed,#71 ; out (c),0
	inc a
	cp #0d
	jr nz,l18f3
	ld a,(hl)
	and a
	ret m
	ld a,#0d
	ld bc,#f4c0
	out (c),a
	ld b,#f6
	out (c),c
	db #ed,#71 ; out (c),0
	dec b
	outi
	ld bc,#f680
	out (c),c
	db #ed,#71 ; out (c),0
	ret
.l1928
	ld b,h
	ld c,l
	add hl,hl
	ld d,h
	ld e,l
	add hl,hl
	ex de,hl
	add hl,de
	ex de,hl
	add hl,hl
	ld a,d
	add l
	jr nc,l1937
	inc h
.l1937
	add c
	ld l,a
	ld a,h
	adc b
	srl a
	rr l
	srl a
	rr l
	srl a
	rr l
	srl a
	rr l
	ld h,a
	ret nc
	inc hl
	ret
.l194f
	ld b,#00
	ld c,h
	ld d,l
	ld e,b
	add hl,hl
	rr b
	ex de,hl
	add hl,de
	ld a,c
	adc b
	rl e
	rl d
	rl b
	add hl,de
	adc b
	ld c,a
	rl e
	rl d
	rl b
	ld a,h
	add e
	ld l,a
	ld a,c
	adc d
	jr nc,l1972
	inc b
.l1972
	srl b
	rra
	rr l
	srl b
	rra
	rr l
	srl b
	rra
	rr l
	srl b
	rra
	rr l
	ld h,a
	ret nc
	inc hl
	ret
.l198a
	db #64,#2a,#65,#00,#01,#0c,#01,#0c
	db #94,#35,#30,#0e,#60,#20,#60,#21
	db #01,#05,#09,#0b,#0d,#0f,#13,#15
	db #19,#25,#3d,#00,#5d,#00,#31,#37
	db #4d,#53,#5f,#71,#82,#8c,#9c,#9e
	db #a0,#a6,#a8,#aa,#ac,#ae,#ae,#00
	db #57,#1f,#23,#25,#29,#2d,#2f,#33
	db #bf,#00,#1d,#21,#23,#27,#2b,#2d
	db #31,#55,#bd,#bf,#00,#1b,#21,#25
	db #29,#2b,#3b,#4d,#5f,#bb,#bd,#bf
.l19de equ $ + 4
.l19da
	db #00,#01,#00,#90,#0d,#d8,#69,#70
	db #76,#7d,#85,#8d,#95,#9d,#a8,#b1
	db #bb,#0c,#da,#62,#68,#6d,#75,#7b
	db #83,#8a,#92,#9c,#a4,#af,#b8,#0e
	db #08,#6a,#72,#78,#7e,#86,#90,#96
	db #a0,#aa,#b4,#be,#0f,#c0,#78,#88
	db #80,#90,#98,#a0,#b0,#a8,#e0,#b0
	db #e8
.l1a14 equ $ + 1
.l1a13
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1a22 equ $ + 7
.l1a20 equ $ + 5
.l1a1f equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1a30 equ $ + 5
.l1a2e equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1a3f equ $ + 4
.l1a3d equ $ + 2
.l1a3c equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1a4d equ $ + 2
.l1a4b
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1a5a equ $ + 7
.l1a59 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1a5c equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1a6a equ $ + 7
.l1a68 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1a72 equ $ + 7
.l1a70 equ $ + 5
.l1a6f equ $ + 4
.l1a6e equ $ + 3
.l1a6d equ $ + 2
.l1a6b
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1a7a equ $ + 7
.l1a79 equ $ + 6
.l1a78 equ $ + 5
.l1a77 equ $ + 4
.l1a76 equ $ + 3
.l1a74 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1a80 equ $ + 5
.l1a7e equ $ + 3
.l1a7d equ $ + 2
.l1a7b
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
.l1ae1 equ $ + 6
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1b70 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1b9e equ $ + 3
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#c5,#00,#00
	db #40,#c5,#00,#d7,#44,#c5,#00,#ef
	db #46,#c5,#00,#be,#4c,#c5,#00,#9d
	db #51,#c5,#00,#90,#42,#c5,#00,#ae
	db #54,#c5,#00,#fb,#58,#f3,#fc,#f6
	db #f6,#fc,#f6,#ff,#fe,#fc,#f6,#fc
	db #f6,#fc,#f6,#00,#66,#ff,#f8,#fc
	db #fc,#ff,#fc,#fc,#f6,#fc,#f6,#fc
	db #f6,#ff,#fc,#00,#00,#f3,#fc,#f6
	db #f6,#fc,#f0,#fc,#f0,#fc,#f0,#fc
	db #f6,#f7,#fc,#00,#00,#ff,#f8,#fc
	db #fc,#fc,#f6,#fc,#f6,#fc,#f6,#fc
	db #f6,#ff,#fc,#00,#00,#ff,#fe,#fc
	db #f0,#ff,#f8,#fc,#f0,#fc,#f0,#fc
	db #f0,#ff,#fe,#00,#00,#ff,#fe,#fc
	db #f0,#ff,#f8,#fc,#f0,#fc,#f0,#fc
	db #f0,#fc,#f0,#00,#00,#f3,#fc,#f6
	db #f6,#fc,#f0,#fc,#fe,#fc,#f6,#fc
	db #fe,#f7,#f6,#00,#66,#fc,#f6,#fc
	db #f6,#ff,#fe,#fc,#f6,#fc,#f6,#fc
	db #f6,#fc,#f6,#00,#66,#f7,#fe,#f1
	db #f8,#f1,#f8,#f1,#f8,#f1,#f8,#f1
	db #f8,#f7,#fe,#00,#00,#f1,#fe,#f0
	db #f6,#f0,#f6,#f0,#f6,#fc,#f6,#fc
	db #f6,#f7,#fc,#00,#00,#fc,#f6,#fc
	db #fc,#fd,#f8,#ff,#f0,#fd,#f8,#fc
	db #fc,#fc,#f6,#00,#66,#fc,#f0,#fc
	db #f0,#fc,#f0,#fc,#f0,#fc,#f0,#fc
	db #f0,#ff,#fe,#00,#00,#fc,#f6,#fe
	db #fe,#ff,#fe,#fd,#f6,#fc,#f6,#fc
	db #f6,#fc,#f6,#00,#66,#fc,#f6,#fe
	db #f6,#ff,#f6,#fd,#fe,#fc,#fe,#fc
	db #f6,#fc,#f6,#00,#00,#f3,#fc,#f6
	db #f6,#fc,#f6,#fc,#f6,#fc,#f6,#fc
	db #fc,#f7,#f8,#00,#00,#ff,#fc,#fc
	db #f6,#fc,#f6,#fc,#f6,#ff,#fc,#fc
	db #f0,#fc,#f0,#00,#00,#f3,#fc,#f6
	db #f6,#fc,#f6,#fc,#f6,#fc,#f6,#fd
	db #fc,#f6,#fc,#00,#66,#ff,#fc,#fc
	db #f6,#fc,#f6,#ff,#fc,#fd,#f8,#fc
	db #fc,#fc,#f6,#00,#33,#f7,#fc,#fc
	db #f6,#f7,#f0,#f1,#fc,#f4,#f6,#fc
	db #f6,#f7,#fc,#00,#00,#f7,#fe,#f1
	db #f8,#f1,#f8,#f1,#f8,#f1,#f8,#f1
	db #f8,#f1,#f8,#00,#00,#fc,#f6,#fc
	db #f6,#fc,#f6,#fc,#f6,#fc,#f6,#fc
	db #f6,#f7,#fc,#00,#00,#fc,#f6,#fc
	db #f6,#fc,#f6,#fc,#f6,#fc,#fc,#fd
	db #f8,#f7,#f0,#00,#00,#fc,#f6,#fc
	db #f6,#fc,#f6,#fd,#f6,#ff,#fe,#fe
	db #fe,#fc,#f6,#00,#00,#fc,#f6,#f6
	db #fc,#f3,#f8,#f3,#f8,#f6,#fc,#fc
	db #f6,#fc,#f6,#00,#00,#fc,#f6,#fc
	db #f6,#fc,#f6,#f7,#fc,#f1,#f8,#f1
	db #f8,#f1,#f8,#00,#00,#ff,#fe,#f0
	db #fc,#f1,#f8,#f3,#f0,#f6,#f0,#fc
	db #f0,#ff,#fe,#00,#00,#f0,#e0,#b0
	db #e0,#f0,#e0,#a0,#a0,#50,#40,#a0
	db #a0,#50,#40,#00,#00,#f0,#e0,#b0
	db #a0,#f0,#e0,#a0,#a0,#50,#40,#a0
	db #a0,#50,#40,#00,#00,#f0,#e0,#f0
	db #e0,#f0,#e0,#a0,#a0,#50,#40,#a0
	db #a0,#50,#40,#00,#00,#f0,#e0,#b0
	db #e0,#f0,#e0,#a0,#a0,#50,#40,#a0
	db #a0,#50,#40,#00,#00,#f0,#e0,#f0
	db #f0,#f0,#e0,#a0,#a0,#50,#40,#a0
	db #a0,#50,#40,#00,#00,#f0,#e0,#50
	db #50,#f0,#e0,#00,#00,#50,#40,#00
	db #00,#50,#40,#00,#00,#f0,#e0,#f0
	db #f0,#f0,#e0,#a0,#a0,#50,#40,#a0
	db #a0,#50,#40,#00,#00,#f0,#e0,#f0
	db #f0,#f0,#e0,#b0,#f0,#50,#e0,#a0
	db #a0,#50,#60,#00,#00,#00,#00,#00
	db #00,#00,#7c,#c6,#c6,#c6,#c6,#7c
	db #00,#00,#38,#78,#18,#18,#18,#7e
	db #00,#00,#7c,#c6,#06,#7c,#c0,#fe
	db #00,#00,#7c,#c6,#1c,#06,#c6,#7c
	db #00,#00,#18,#38,#78,#d8,#fe,#18
	db #00,#00,#fe,#c0,#fc,#06,#c6,#7c
	db #00,#00,#7c,#c0,#fc,#c6,#c6,#7c
	db #00,#00,#fe,#06,#0c,#18,#30,#30
	db #00,#00,#7c,#c6,#7c,#c6,#c6,#7c
	db #00,#00,#7c,#c6,#c6,#7e,#06,#7c
	db #00,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00
;
	ds #2306-$
;
.l2306
	db #50,#72,#6f,#54,#72,#61,#63,#6b
	db #65,#72,#20,#33,#2e,#35,#20,#63
	db #6f,#6d,#70,#69,#6c,#61,#74,#69
	db #6f,#6e,#20,#6f,#66,#20,#2e,#57
	db #69,#6e,#67,#73,#2e,#4f,#66,#2e
	db #44,#65,#61,#74,#68,#2e,#6c,#6f
	db #6f,#70,#65,#64,#2e,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#62
	db #79,#20,#2e,#7a,#30,#30,#6d,#2e
	db #31,#31,#2f,#32,#30,#30,#33,#2e
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#01,#03,#36,#00,#00
	db #01,#00,#00,#84,#0b,#92,#0b,#98
	db #0b,#ae,#0b,#c8,#0b,#de,#0b,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#20,#0c,#23,#0c,#28,#0c,#2d
	db #0c,#35,#0c,#3d,#0c,#45,#0c,#4a
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#03,#06,#09,#0c,#0f
	db #36,#12,#15,#18,#1b,#1e,#21,#24
	db #27,#2a,#2d,#30,#33,#12,#15,#18
	db #1b,#00,#00,#39,#3c,#3f,#42,#39
	db #3c,#45,#48,#45,#48,#4b,#4b,#4e
	db #4e,#51,#51,#54,#57,#5a,#5d,#54
	db #57,#5a,#5d,#12,#15,#18,#1b,#ff
	db #c0,#01,#02,#02,#3f,#02,#5e,#02
	db #02,#02,#3f,#02,#6d,#02,#02,#02
	db #3f,#02,#74,#02,#02,#02,#3f,#02
	db #7b,#02,#02,#02,#3f,#02,#82,#02
	db #02,#02,#3f,#02,#90,#02,#02,#02
	db #c0,#02,#18,#03,#02,#02,#45,#03
	db #99,#03,#02,#02,#c0,#02,#c9,#03
	db #02,#02,#45,#03,#ff,#03,#06,#04
	db #5a,#04,#ff,#03,#06,#04,#b2,#04
	db #ff,#03,#06,#04,#09,#05,#ff,#03
	db #06,#04,#61,#05,#b8,#05,#d1,#05
	db #24,#06,#7c,#06,#06,#04,#5a,#04
	db #9d,#06,#d1,#05,#24,#06,#b6,#06
	db #06,#04,#cb,#06,#89,#02,#02,#02
	db #3f,#02,#21,#07,#02,#02,#43,#07
	db #9b,#07,#02,#02,#61,#05,#c7,#07
	db #02,#02,#43,#07,#f8,#07,#02,#02
	db #61,#05,#0c,#08,#02,#02,#43,#07
	db #32,#08,#02,#02,#61,#05,#55,#08
	db #ae,#08,#02,#09,#36,#09,#8f,#09
	db #e3,#09,#17,#0a,#06,#04,#70,#0a
	db #a4,#0a,#06,#04,#5a,#04,#bd,#0a
	db #06,#04,#d1,#0a,#a4,#0a,#06,#04
	db #25,#0b,#7d,#0b,#ae,#08,#61,#05
	db #b1,#01,#d0,#f1,#02,#c8,#b1,#02
	db #85,#42,#85,#85,#41,#85,#42,#85
	db #85,#41,#85,#42,#85,#85,#41,#85
	db #42,#85,#85,#41,#83,#42,#83,#41
	db #83,#42,#83,#41,#85,#42,#85,#85
	db #41,#85,#42,#85,#85,#41,#85,#42
	db #85,#85,#41,#85,#42,#85,#85,#41
	db #88,#42,#88,#41,#83,#42,#b1,#01
	db #83,#00,#f1,#02,#cf,#b1,#02,#85
	db #42,#85,#85,#41,#85,#42,#85,#85
	db #41,#85,#42,#85,#85,#41,#85,#42
	db #85,#85,#41,#83,#42,#83,#41,#83
	db #42,#83,#41,#85,#42,#85,#85,#41
	db #85,#42,#85,#85,#41,#85,#42,#85
	db #85,#41,#85,#42,#85,#85,#41,#88
	db #42,#88,#41,#83,#42,#83,#00,#f0
	db #06,#cf,#b1,#01,#74,#d2,#b1,#1f
	db #61,#d3,#b1,#01,#74,#d2,#b1,#17
	db #61,#d4,#b1,#02,#76,#d3,#b1,#01
	db #74,#d2,#b1,#05,#61,#00,#f7,#04
	db #cf,#01,#b1,#04,#78,#01,#fe,#ff
	db #40,#b1,#3c,#79,#00,#f0,#04,#cf
	db #b1,#40,#79,#00,#f7,#04,#cf,#b1
	db #40,#7c,#00,#f7,#04,#cf,#b1,#40
	db #7e,#00,#f7,#04,#cf,#b1,#40,#80
	db #00,#f0,#04,#cf,#b1,#40,#80,#00
	db #f7,#0c,#cf,#b1,#04,#77,#ca,#b1
	db #02,#d0,#cf,#b1,#04,#79,#ca,#b1
	db #02,#d0,#cf,#b1,#0c,#79,#b1,#04
	db #7c,#79,#7e,#ca,#b1,#02,#d0,#cf
	db #b1,#04,#7c,#ca,#b1,#02,#d0,#cf
	db #b1,#10,#79,#b1,#02,#77,#79,#00
	db #f0,#06,#cf,#b1,#02,#74,#f6,#0a
	db #6d,#f0,#08,#76,#f6,#0a,#61,#40
	db #61,#d3,#74,#d4,#76,#f6,#0a,#6d
	db #f0,#06,#74,#f6,#0a,#6d,#f0,#08
	db #76,#f6,#0a,#6d,#6d,#f0,#06,#74
	db #d4,#76,#f6,#0a,#61,#f0,#06,#74
	db #f6,#0a,#69,#f0,#08,#76,#f6,#0a
	db #5d,#5d,#f0,#06,#74,#d4,#76,#f6
	db #0a,#69,#f0,#06,#74,#f6,#0a,#69
	db #f0,#08,#76,#f6,#0a,#69,#69,#f0
	db #06,#74,#d4,#76,#f6,#0a,#5d,#00
	db #f7,#0c,#cf,#b1,#04,#7b,#ca,#b1
	db #02,#d0,#cf,#b1,#04,#7b,#ca,#b1
	db #02,#d0,#cf,#79,#7b,#b1,#06,#7c
	db #7e,#b1,#04,#80,#01,#7e,#01,#fe
	db #ff,#40,#b1,#14,#80,#01,#b1,#08
	db #d0,#01,#08,#00,#00,#f0,#06,#cf
	db #b1,#02,#74,#f6,#0a,#6b,#f0,#08
	db #76,#f6,#0a,#5f,#5f,#f0,#06,#74
	db #d4,#76,#f6,#0a,#6b,#f0,#06,#74
	db #f6,#0a,#6b,#f0,#08,#76,#f6,#0a
	db #6b,#6b,#f0,#06,#74,#d4,#76,#f6
	db #0a,#5f,#f0,#06,#74,#f6,#0a,#6d
	db #f0,#08,#76,#f6,#0a,#61,#61,#f0
	db #06,#74,#d4,#76,#f6,#0a,#6d,#f0
	db #06,#74,#d4,#76,#76,#f6,#0a,#6d
	db #f0,#08,#76,#d3,#74,#d4,#76,#76
	db #00,#f7,#0c,#cf,#b1,#04,#77,#ca
	db #b1,#02,#d0,#cf,#b1,#04,#79,#ca
	db #b1,#02,#d0,#cf,#b1,#0c,#79,#b1
	db #04,#7c,#79,#7e,#ca,#b1,#02,#d0
	db #cf,#b1,#04,#7c,#ca,#b1,#02,#d0
	db #cf,#b1,#10,#79,#b1,#02,#7e,#80
	db #00,#f7,#0c,#cf,#b1,#04,#83,#ca
	db #b1,#02,#d0,#cf,#b1,#04,#80,#ca
	db #b1,#02,#d0,#cf,#83,#80,#83,#b1
	db #04,#85,#83,#b1,#06,#85,#01,#b1
	db #02,#83,#01,#fc,#ff,#40,#b1,#16
	db #85,#01,#b1,#04,#d0,#01,#08,#00
	db #ce,#b1,#02,#d0,#cd,#d0,#00,#f0
	db #04,#cc,#b1,#40,#61,#00,#f3,#0a
	db #cf,#b1,#02,#85,#f2,#02,#85,#85
	db #f3,#0a,#85,#f2,#02,#85,#85,#f3
	db #0a,#85,#f2,#02,#85,#85,#f3,#0a
	db #85,#f2,#02,#85,#85,#f4,#0a,#85
	db #f2,#02,#85,#f4,#0a,#85,#f2,#02
	db #85,#f3,#0a,#85,#f2,#02,#85,#85
	db #f3,#0a,#85,#f2,#02,#85,#85,#f3
	db #0a,#85,#f2,#02,#85,#85,#f3,#0a
	db #85,#f2,#02,#85,#85,#f5,#0a,#85
	db #f2,#02,#85,#f3,#0a,#85,#f2,#02
	db #85,#00,#f0,#06,#cf,#b1,#02,#74
	db #f6,#0a,#6d,#f0,#08,#76,#f6,#0a
	db #61,#40,#61,#d3,#74,#d4,#76,#f6
	db #0a,#6d,#f0,#06,#74,#f6,#0a,#6d
	db #f0,#08,#76,#f6,#0a,#6d,#6d,#f0
	db #06,#74,#d4,#76,#f6,#0a,#61,#f0
	db #06,#74,#f6,#0a,#6d,#f0,#08,#76
	db #f6,#0a,#61,#40,#61,#d3,#74,#d4
	db #76,#f6,#0a,#6d,#f0,#06,#74,#f6
	db #0a,#6d,#f0,#08,#76,#f6,#0a,#6d
	db #6d,#f0,#06,#74,#d4,#76,#f6,#0a
	db #61,#00,#f0,#06,#cf,#b1,#02,#74
	db #f6,#0a,#6d,#f0,#08,#76,#f6,#0a
	db #61,#40,#61,#d3,#74,#d4,#76,#f6
	db #0a,#6d,#f0,#06,#74,#f6,#0a,#6d
	db #f0,#08,#76,#f6,#0a,#6d,#6d,#f0
	db #06,#74,#d4,#76,#f6,#0a,#61,#f0
	db #06,#74,#f6,#0a,#6d,#f0,#08,#76
	db #f6,#0a,#61,#f0,#08,#76,#76,#f6
	db #0a,#6d,#f0,#08,#76,#76,#f6,#0a
	db #6d,#f0,#08,#76,#76,#f6,#0a,#6d
	db #f0,#06,#74,#d4,#76,#f6,#0a,#61
	db #00,#f0,#06,#cf,#b1,#02,#74,#f6
	db #0a,#61,#f0,#08,#76,#f6,#0a,#61
	db #40,#61,#d3,#74,#d4,#76,#f6,#0a
	db #61,#f0,#06,#74,#f6,#0a,#61,#f0
	db #08,#76,#f6,#0a,#61,#61,#f0,#06
	db #74,#d4,#76,#f6,#0a,#61,#f0,#06
	db #74,#f6,#0a,#61,#f0,#08,#76,#f6
	db #0a,#61,#40,#61,#d3,#74,#d4,#76
	db #f6,#0a,#61,#f0,#06,#74,#f6,#0a
	db #61,#f0,#08,#76,#f6,#0a,#61,#61
	db #f0,#06,#74,#d4,#76,#f6,#0a,#61
	db #00,#f0,#06,#cf,#b1,#02,#74,#f6
	db #0a,#61,#f0,#08,#76,#f6,#0a,#61
	db #40,#61,#d3,#74,#d4,#76,#f6,#0a
	db #61,#f0,#06,#74,#f6,#0a,#61,#f0
	db #08,#76,#f6,#0a,#61,#61,#f0,#06
	db #74,#d4,#76,#f6,#0a,#61,#f0,#06
	db #74,#f6,#0a,#61,#f0,#08,#76,#f6
	db #0a,#61,#f0,#08,#76,#76,#f6,#0a
	db #61,#f0,#08,#76,#76,#f6,#0a,#61
	db #f0,#08,#76,#76,#f6,#0a,#61,#f0
	db #06,#74,#d4,#76,#f6,#0a,#61,#00
	db #f7,#0c,#cf,#b1,#02,#7e,#80,#83
	db #b1,#16,#85,#b1,#02,#83,#85,#b1
	db #18,#88,#b1,#02,#8a,#8c,#8d,#8a
	db #00,#f3,#02,#cf,#b1,#02,#8a,#42
	db #8a,#8a,#f3,#0a,#8a,#f2,#02,#8a
	db #8a,#f3,#0a,#8a,#f2,#02,#8a,#8a
	db #f3,#0a,#8a,#f2,#02,#8a,#8a,#f4
	db #0a,#8a,#f2,#02,#8a,#f4,#0a,#8a
	db #f2,#02,#8a,#f3,#0a,#8a,#f2,#02
	db #8a,#8a,#f3,#0a,#8a,#f2,#02,#8a
	db #8a,#f3,#0a,#8a,#f2,#02,#8a,#8a
	db #f3,#0a,#8a,#f2,#02,#8a,#8a,#f5
	db #0a,#8a,#f2,#02,#8a,#f3,#0a,#8a
	db #f2,#02,#8a,#00,#f0,#06,#cf,#b1
	db #02,#74,#f6,#0a,#72,#f0,#08,#76
	db #f6,#0a,#66,#40,#66,#d3,#74,#d4
	db #76,#f6,#0a,#72,#f0,#06,#74,#f6
	db #0a,#72,#f0,#08,#76,#f6,#0a,#72
	db #72,#f0,#06,#74,#d4,#76,#f6,#0a
	db #66,#f0,#06,#74,#f6,#0a,#72,#f0
	db #08,#76,#f6,#0a,#66,#40,#66,#d3
	db #74,#d4,#76,#f6,#0a,#72,#f0,#06
	db #74,#f6,#0a,#72,#f0,#08,#76,#f6
	db #0a,#72,#72,#f0,#06,#74,#d4,#76
	db #f6,#0a,#66,#00,#f7,#04,#cf,#01
	db #b1,#04,#8a,#01,#ff,#ff,#40,#8c
	db #ce,#b1,#08,#d0,#cd,#d0,#cc,#d0
	db #cb,#d0,#ca,#d0,#c9,#d0,#c8,#01
	db #d0,#01,#06,#00,#00,#f7,#0c,#cf
	db #b1,#02,#7e,#80,#83,#b1,#16,#85
	db #b1,#02,#83,#85,#b1,#18,#88,#b1
	db #02,#8a,#8c,#8f,#91,#00,#f7,#04
	db #cf,#b1,#08,#91,#ce,#d0,#cd,#d0
	db #cc,#d0,#cb,#d0,#ca,#d0,#c9,#d0
	db #c8,#d0,#00,#f0,#06,#cf,#b1,#02
	db #74,#f6,#0a,#6d,#f0,#08,#76,#f6
	db #0a,#61,#40,#61,#d3,#74,#d4,#76
	db #f6,#0a,#6d,#f0,#06,#74,#f6,#0a
	db #6d,#f0,#08,#76,#f6,#0a,#6d,#6d
	db #f0,#06,#74,#d4,#76,#f6,#0a,#61
	db #f0,#06,#74,#f6,#0a,#6d,#f0,#08
	db #76,#f6,#0a,#61,#40,#61,#d3,#74
	db #d4,#76,#f6,#0a,#6d,#f0,#06,#74
	db #f6,#0a,#6d,#f0,#08,#76,#f6,#0a
	db #6d,#6d,#f0,#06,#74,#d4,#76,#76
	db #00,#f7,#0c,#cf,#01,#b1,#04,#77
	db #01,#fc,#ff,#40,#b1,#18,#79,#47
	db #b1,#04,#7c,#b1,#10,#7e,#b1,#02
	db #7c,#b1,#04,#80,#b1,#06,#7e,#b1
	db #04,#7c,#00,#f0,#06,#b1,#02,#74
	db #f6,#0a,#69,#f0,#08,#76,#f6,#0a
	db #5d,#5d,#f0,#06,#74,#d4,#76,#f6
	db #0a,#69,#f0,#06,#74,#f6,#0a,#69
	db #f0,#08,#76,#f6,#0a,#69,#69,#f0
	db #06,#74,#d4,#76,#f6,#0a,#5d,#f0
	db #06,#cf,#74,#f6,#0a,#6b,#f0,#08
	db #76,#f6,#0a,#5f,#5f,#f0,#06,#74
	db #d4,#76,#f6,#0a,#6b,#f0,#06,#74
	db #f6,#0a,#6b,#f0,#08,#76,#f6,#0a
	db #6b,#6b,#f0,#06,#74,#d4,#76,#f6
	db #0a,#5f,#00,#f7,#04,#cf,#01,#b1
	db #04,#7e,#01,#fe,#ff,#40,#80,#ce
	db #b1,#08,#d0,#cd,#d0,#cc,#d0,#cb
	db #d0,#ca,#d0,#c9,#b1,#04,#d0,#01
	db #b1,#06,#d0,#01,#08,#00,#47,#cf
	db #b1,#02,#85,#b1,#04,#88,#00,#f7
	db #0c,#cf,#b1,#04,#85,#83,#b1,#02
	db #80,#7e,#7c,#79,#77,#ca,#d0,#cf
	db #b1,#06,#79,#b1,#02,#7b,#7c,#7e
	db #b1,#04,#80,#7e,#b1,#02,#7c,#79
	db #77,#74,#b1,#04,#72,#b1,#06,#74
	db #ca,#b1,#02,#d0,#cf,#83,#85,#00
	db #f7,#0c,#cf,#b1,#38,#85,#01,#b1
	db #04,#d0,#01,#08,#00,#ce,#b1,#02
	db #d0,#cd,#d0,#00,#f7,#0c,#cf,#b1
	db #02,#8a,#88,#85,#83,#8a,#88,#85
	db #83,#8a,#88,#85,#88,#8a,#8c,#8a
	db #8c,#8f,#8c,#8a,#8c,#8f,#8c,#8a
	db #8c,#8f,#8c,#8f,#8c,#8f,#91,#8f
	db #8c,#00,#f7,#04,#cf,#01,#b1,#02
	db #8f,#01,#fe,#ff,#40,#b1,#06,#91
	db #ce,#b1,#08,#d0,#cd,#d0,#cc,#d0
	db #cb,#d0,#ca,#d0,#c9,#d0,#c8,#01
	db #d0,#01,#08,#00,#00,#b1,#01,#d0
	db #f3,#0a,#c8,#b1,#02,#80,#f2,#02
	db #80,#80,#f3,#0a,#80,#f2,#02,#80
	db #80,#f3,#0a,#80,#f2,#02,#80,#80
	db #f3,#0a,#80,#f2,#02,#80,#80,#f4
	db #0a,#80,#f2,#02,#80,#f4,#0a,#80
	db #f2,#02,#80,#f3,#0a,#80,#f2,#02
	db #80,#80,#f3,#0a,#80,#f2,#02,#80
	db #80,#f3,#0a,#80,#f2,#02,#80,#80
	db #f3,#0a,#80,#f2,#02,#80,#80,#f5
	db #0a,#80,#f2,#02,#80,#f3,#0a,#80
	db #f2,#02,#b1,#01,#80,#00,#f3,#0a
	db #cf,#b1,#02,#80,#f2,#02,#80,#80
	db #f3,#0a,#80,#f2,#02,#80,#80,#f3
	db #0a,#80,#f2,#02,#80,#80,#f3,#0a
	db #80,#f2,#02,#80,#80,#f4,#0a,#80
	db #f2,#02,#80,#f4,#0a,#80,#f2,#02
	db #80,#f3,#0a,#80,#f2,#02,#80,#80
	db #f3,#0a,#80,#f2,#02,#80,#80,#f3
	db #0a,#80,#f2,#02,#80,#80,#f3,#0a
	db #80,#f2,#02,#80,#80,#f5,#0a,#80
	db #f2,#02,#80,#f3,#0a,#80,#f2,#02
	db #80,#00,#f0,#06,#cf,#b1,#02,#74
	db #f6,#0a,#5c,#5c,#68,#5c,#5c,#68
	db #5c,#5c,#68,#5c,#5c,#f0,#08,#76
	db #f6,#0a,#5c,#68,#5c,#f0,#06,#74
	db #f6,#0a,#5c,#5c,#68,#5c,#5c,#68
	db #5c,#5c,#68,#5c,#5c,#f0,#08,#76
	db #f6,#0a,#5c,#68,#5c,#00,#b1,#01
	db #d0,#f3,#0a,#c8,#b1,#02,#83,#f2
	db #02,#83,#83,#f3,#0a,#83,#f2,#02
	db #83,#83,#f3,#0a,#83,#f2,#02,#83
	db #83,#f3,#0a,#83,#f2,#02,#83,#83
	db #f4,#0a,#83,#f2,#02,#83,#f4,#0a
	db #83,#f2,#02,#83,#f3,#0a,#83,#f2
	db #02,#83,#83,#f3,#0a,#83,#f2,#02
	db #83,#83,#f3,#0a,#83,#f2,#02,#83
	db #83,#f3,#0a,#83,#f2,#02,#83,#83
	db #f5,#0a,#83,#f2,#02,#83,#f3,#0a
	db #83,#f2,#02,#b1,#01,#83,#00,#f3
	db #0a,#cf,#b1,#02,#83,#f2,#02,#83
	db #83,#f3,#0a,#83,#f2,#02,#83,#83
	db #f3,#0a,#83,#f2,#02,#83,#83,#f3
	db #0a,#83,#f2,#02,#83,#83,#f4,#0a
	db #83,#f2,#02,#83,#f4,#0a,#83,#f2
	db #02,#83,#f3,#0a,#83,#f2,#02,#83
	db #83,#f3,#0a,#83,#f2,#02,#83,#83
	db #f3,#0a,#83,#f2,#02,#83,#83,#f3
	db #0a,#83,#f2,#02,#83,#83,#f5,#0a
	db #83,#f2,#02,#83,#f3,#0a,#83,#f2
	db #02,#83,#00,#f0,#06,#cf,#b1,#02
	db #74,#f6,#0a,#5f,#5f,#6b,#5f,#5f
	db #6b,#5f,#5f,#6b,#5f,#5f,#f0,#08
	db #76,#f6,#0a,#5f,#6b,#5f,#f0,#06
	db #74,#f6,#0a,#5f,#5f,#6b,#5f,#5f
	db #6b,#5f,#5f,#6b,#5f,#5f,#f0,#08
	db #76,#f6,#0a,#5f,#6b,#5f,#00,#b1
	db #01,#d0,#f3,#0a,#c8,#b1,#02,#85
	db #f2,#02,#85,#85,#f3,#0a,#85,#f2
	db #02,#85,#85,#f3,#0a,#85,#f2,#02
	db #85,#85,#f3,#0a,#85,#f2,#02,#85
	db #85,#f4,#0a,#85,#f2,#02,#85,#f4
	db #0a,#85,#f2,#02,#85,#f3,#0a,#85
	db #f2,#02,#85,#85,#f3,#0a,#85,#f2
	db #02,#85,#85,#f3,#0a,#85,#f2,#02
	db #85,#85,#f3,#0a,#85,#f2,#02,#85
	db #85,#f5,#0a,#85,#f2,#02,#85,#f3
	db #0a,#85,#f2,#02,#b1,#01,#85,#00
	db #f0,#06,#cf,#b1,#02,#74,#f6,#0a
	db #61,#61,#6d,#61,#61,#6d,#61,#61
	db #6d,#61,#61,#f0,#08,#76,#f6,#0a
	db #61,#6d,#61,#f0,#06,#74,#f6,#0a
	db #61,#61,#6d,#61,#61,#6d,#61,#61
	db #6d,#61,#61,#f0,#08,#76,#f6,#0a
	db #61,#6d,#61,#00,#f7,#0c,#cf,#b1
	db #1c,#79,#b1,#02,#7b,#79,#b1,#06
	db #80,#7e,#b1,#04,#7c,#b1,#06,#7b
	db #7c,#b1,#04,#7e,#00,#f7,#0c,#cf
	db #b1,#18,#79,#b1,#02,#79,#77,#79
	db #7e,#b1,#1c,#79,#b1,#02,#7c,#7e
	db #00,#f0,#06,#cf,#b1,#02,#74,#f6
	db #0a,#69,#f0,#08,#76,#f6,#0a,#69
	db #5d,#f0,#06,#74,#d4,#76,#f6,#0a
	db #69,#f0,#06,#74,#f6,#0a,#69,#f0
	db #08,#76,#f6,#0a,#69,#69,#f0,#06
	db #74,#d4,#76,#f6,#0a,#69,#f0,#06
	db #74,#f6,#0a,#69,#f0,#08,#76,#f6
	db #0a,#5d,#5d,#f0,#06,#74,#d4,#76
	db #f6,#0a,#69,#f0,#06,#74,#d4,#76
	db #76,#f6,#0a,#69,#f0,#08,#76,#d3
	db #74,#d4,#76,#76,#00,#f0,#06,#b1
	db #02,#74,#f6,#0a,#5f,#f0,#08,#76
	db #f6,#0a,#6b,#5f,#f0,#06,#74,#d4
	db #76,#f6,#0a,#6b,#f0,#06,#74,#f6
	db #0a,#6b,#f0,#08,#76,#f6,#0a,#6b
	db #6b,#f0,#06,#74,#d4,#76,#f6,#0a
	db #5f,#f0,#06,#cf,#74,#f6,#0a,#6b
	db #f0,#08,#76,#f6,#0a,#5f,#5f,#f0
	db #06,#74,#d4,#76,#f6,#0a,#6b,#f0
	db #06,#74,#f6,#0a,#6b,#f0,#08,#76
	db #f6,#0a,#6b,#6b,#f0,#06,#74,#d4
	db #76,#f6,#0a,#5f,#00,#f7,#0c,#cf
	db #b1,#40,#80,#00,#02,#03,#15,#0f
	db #00,#00,#01,#8f,#00,#00,#81,#8e
	db #00,#00,#00,#01,#01,#8f,#00,#00
	db #04,#05,#15,#4f,#fa,#00,#01,#cf
	db #20,#01,#01,#ce,#30,#01,#01,#ce
	db #93,#00,#01,#90,#00,#00,#05,#06
	db #0b,#0f,#b6,#00,#01,#cf,#a9,#00
	db #01,#cf,#83,#00,#0d,#4e,#9a,#00
	db #13,#1e,#00,#00,#8b,#1d,#00,#00
	db #04,#05,#01,#8e,#00,#00,#01,#8f
	db #00,#00,#01,#8f,#00,#00,#41,#8f
	db #00,#00,#81,#8e,#00,#00,#01,#10
	db #01,#8e,#00,#00,#01,#8f,#00,#00
	db #01,#8f,#00,#00,#01,#8f,#00,#00
	db #01,#8f,#00,#00,#01,#8f,#01,#00
	db #01,#8f,#01,#00,#01,#8f,#02,#00
	db #01,#8f,#02,#00,#01,#8f,#03,#00
	db #01,#8f,#03,#00,#01,#8f,#02,#00
	db #01,#8f,#02,#00,#01,#8f,#01,#00
	db #01,#8f,#01,#00,#81,#8f,#00,#00
	db #00,#01,#00,#02,#03,#0c,#0c,#00
	db #02,#03,#0c,#00,#f4,#00,#06,#00
	db #00,#03,#03,#07,#07,#00,#06,#00
	db #00,#02,#02,#07,#07,#00,#06,#00
	db #00,#05,#05,#07,#07,#02,#03,#00
	db #0c,#00,#02,#03,#00,#13,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00


;
; #08c7
;	call #17eb
;
.music_info
	db "Rulez! Mag 8 - 7 - Wings Of Death (2016)(CPCRulez)(Zoom)",0
	db "ProTracker 3.5",0

	read "music_end.asm"
