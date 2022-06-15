; Music of Rulez! Mag 1 - Music 4 (2014)(CPCRulez)(Aleksandr Ekshibarov)(ProTracker 3.5)
; Ripped by Megachur the 25/05/2022 
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RULEM1M4.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #1656

	read "music_header.asm"

.l1656
	db #00
.l1657
	dw l25dd
.l1659
	ld hl,l1656
	set 7,(hl)
	bit 0,(hl)
	ret z
	pop hl
	ld hl,l1d6f
	inc (hl)
	ld hl,l1d33
	inc (hl)
	xor a
	ld h,a
	ld l,a
	ld (l1d7d),a
	ld (l1d7e),hl
	jp l1bf5
;
.real_init_music
.l1676
;
	ld (l17df),hl
	ld (l1975),hl
	push hl
	ld de,#0064
	add hl,de
	ld a,(hl)
	ld (l1b7c),a
	push hl
	pop ix
	add hl,de
	ld (l1657),hl
	ld e,(ix+#02)
	add hl,de
	inc hl
	ld (l1b1e),hl
	pop de
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,de
	ld (l1b2b),hl
	ld hl,#00a9
	add hl,de
	ld (l196e),hl
	ld hl,#0069
	add hl,de
	ld (l17d8),hl
	ld hl,l1656
	res 7,(hl)
	ld de,l1ce3
	ld bc,l1de6
.l16b8
	ld a,(de)
	inc de
	cp #1e
	jr nc,l16c4
	ld h,a
	ld a,(de)
	ld l,a
	inc de
	jr l16cb
.l16c4
	push de
	ld d,#00
	ld e,a
	add hl,de
	add hl,de
	pop de
.l16cb
	ld a,h
	ld (bc),a
	dec bc
	ld a,l
	ld (bc),a
	dec bc
	sub #f0
	jr nz,l16b8
	ld hl,l1d18
	ld (hl),a
	ld de,l1d19
	ld bc,#006c
	ldir
	inc a
	ld (l1d6f),a
	ld hl,#f001
	ld (l1d33),hl
	ld (l1d50),hl
	ld (l1d6d),hl
	ld hl,l1cdf
	ld (l1b08),hl
	ld (l1d25),hl
	ld (l1d42),hl
	ld (l1d5f),hl
	ld (l1d27),hl
	ld (l1d44),hl
	ld (l1d61),hl
	ld a,(ix-#57)
	sub #30
	jr c,l1714
	cp #0a
	jr c,l1716
.l1714
	ld a,#06
.l1716
	ld (l18c4),a
	push af
	cp #04
	ld a,(ix-#01)
	rla
	and #07
	ld hl,l1c8f
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
	ld (l1757),a
	ex de,hl
	pop bc
	add hl,bc
	ld a,(de)
	add #9f
	ld c,a
	adc #1c
	sub c
	ld b,a
	push bc
	ld de,l1e75
	push de
	ld b,#0c
.l1746
	push bc
	ld c,(hl)
	inc hl
	push hl
	ld b,(hl)
	push de
	ex de,hl
	ld de,#0017
	ld hx,#08
.l1753
	srl b
	rr c
.l1757
	and a
	ld a,c
	adc d
	ld (hl),a
	inc hl
	ld a,b
	adc d
	ld (hl),a
	add hl,de
	dec hx
	jr nz,l1753
	pop de
	inc de
	inc de
	pop hl
	inc hl
	pop bc
	djnz l1746
	pop hl
	pop de
	ld a,e
	cp #ab
	jr nz,l1778
	ld a,#fd
	ld (l1ea3),a
.l1778
	ld a,(de)
	and a
	jr z,l178d
	rra
	push af
	add a
	ld c,a
	add hl,bc
	pop af
	jr nc,l1786
	dec (hl)
	dec (hl)
.l1786
	inc (hl)
	and a
	sbc hl,bc
	inc de
	jr l1778
.l178d
	pop af
	cp #05
	ld hl,#0011
	ld d,h
	ld e,h
	ld a,#17
	jr nc,l179c
	dec l
	ld e,l
	xor a
.l179c
	ld (l17ab),a
	ld ix,l1d85
	ld c,#10
.l17a5
	push hl
	add hl,de
	ex de,hl
	sbc hl,hl
.l17aa
	ld a,l
.l17ab
	rla
	ld a,h
	adc #00
	ld (ix+#00),a
	inc ix
	add hl,de
	inc c
	ld a,c
	and #0f
	jr nz,l17aa
	pop hl
	ld a,e
	cp #77
	jr nz,l17c2
	inc e
.l17c2
	ld a,c
	and a
	jr nz,l17a5
	jp l1bf5
.l17c9
	ld (ix+#08),#00
	call l1966
	ld a,(bc)
	inc bc
	rrca
.l17d3
	add a
.l17d4
	ld e,a
	ld d,#00
.l17d8 equ $ + 1
	ld hl,l257c
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l17df equ $ + 1
	ld hl,l2513
	add hl,de
	ld (ix+#03),l
	ld (ix+#04),h
	jr l182b
.l17ea
	rlca
	rlca
	rlca
	rlca
	ld (ix+#10),a
	jr l182e
.l17f3
	ld (ix+#08),a
	ld (ix-#0c),a
	jr l182e
.l17fb
	dec a
	jr nz,l1805
	ld a,(bc)
	inc bc
	ld (ix+#05),a
	jr l182e
.l1805
	call l194a
	jr l182e
.l180a
	call l1966
	jr l182b
.l180f
	ld (ix+#08),a
	ld (ix-#0c),a
	call nz,l194a
	ld a,(bc)
	inc bc
	jr l17d4
.l181c
	ld a,(ix+#06)
	ld (l18a8),a
	ld l,(ix-#06)
	ld h,(ix-#05)
	ld (l18ca),hl
.l182b
	ld de,l2010
.l182e
	ld a,(bc)
	inc bc
	add e
	jr c,l17c9
	add d
	jr z,l187f
	jr c,l17d3
	add e
	jr z,l1860
	jr c,l17ea
	add e
	jr z,l17f3
	jr c,l17fb
	add #60
	jr c,l1866
	add e
	jr c,l180a
	add d
	jr c,l185b
	add e
	jr c,l180f
	add a
	ld e,a
	ld hl,#f89f
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
	jr l182b
.l185b
	ld (l1d73),a
	jr l182e
.l1860
	res 0,(ix+#09)
	jr l186e
.l1866
	ld (ix+#06),a
	set 0,(ix+#09)
	xor a
.l186e
	ld (l187d),sp
	ld sp,ix
	ld h,a
	ld l,a
	push hl
	push hl
	push hl
	push hl
	push hl
	push hl
.l187d equ $ + 1
	ld sp,#0102
.l187f
	ld a,(ix+#05)
	ld (ix+#0f),a
	ret
	res 2,(ix+#09)
	ld a,(bc)
	inc bc
	inc bc
	inc bc
	ld (ix+#0a),a
	ld (ix-#07),a
	ld de,l1e75
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
.l18a8 equ $ + 1
	ld a,#34
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
.l18c4 equ $ + 1
	ld a,#06
	cp #06
	jr c,l18d2
.l18ca equ $ + 1
	ld de,#0000
	ld (ix-#06),e
	ld (ix-#05),d
.l18d2
	ld a,(bc)
	inc bc
	ex af,af'
	ld a,(bc)
	inc bc
	and a
	jr z,l18db
	ex de,hl
.l18db
	sbc hl,de
	jp p,l18e5
	cpl
	ex af,af'
	neg
	ex af,af'
.l18e5
	ld (ix+#0c),a
	ex af,af'
	ld (ix+#0b),a
	ld (ix-#02),#00
	ret
	set 2,(ix+#09)
	ld a,(bc)
	inc bc
	ld (ix+#0a),a
	and a
	jr nz,l1904
	ld a,(l18c4)
	cp #07
	sbc a
	inc a
.l1904
	ld (ix-#07),a
	ld a,(bc)
	inc bc
	ex af,af'
.l190a
	ld a,(bc)
	inc bc
	jr l18e5
	ld a,(bc)
	inc bc
	ld (ix-#0b),a
	ret
	ld a,(bc)
	inc bc
	ld (ix-#0c),a
	ret
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
	ld a,(bc)
	inc bc
	ld (l1beb),a
	ld (l1d72),a
	ld a,(bc)
	inc bc
	ld l,a
	ld a,(bc)
	inc bc
	ld h,a
	ld (l1bee),hl
	ret
	ld a,(bc)
	inc bc
	ld (l1b7c),a
	ret
.l194a
	ld (ix+#08),e
	ld (l1d82),a
	ld a,(bc)
	inc bc
	ld h,a
	ld a,(bc)
	inc bc
	ld l,a
	ld (l1d83),hl
	xor a
	ld (ix-#0c),a
	ld (l1d72),a
	ld h,a
	ld l,a
	ld (l1d70),hl
	ret
.l1966
	add a
	ld e,a
	ld d,#00
	ld (ix-#0c),d
.l196e equ $ + 1
	ld hl,l25bc
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l1975 equ $ + 1
	ld hl,l2513
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	ret
	ld h,l
	add hl,de
	pop af
	jr l190a
	jr l1994
	add hl,de
	inc d
	add hl,de
	ld a,(de)
	add hl,de
	ld h,l
	add hl,de
	ld h,l
	add hl,de
	ld (#4419),a
	add hl,de
	ld h,l
.l1994
	add hl,de
	ld h,l
	add hl,de
	ld h,l
	add hl,de
	ld h,l
	add hl,de
	ld h,l
	add hl,de
	ld h,l
	add hl,de
.l199f
	xor a
	ld (l1d7f),a
	bit 0,(ix+#15)
	push hl
	jp z,l1acd
	ld (l1a18),sp
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
	jr c,l19c2
	ld a,e
.l19c2
	ld (ix+#00),a
	ld a,(ix+#12)
	add (hl)
	jp p,l19cd
	xor a
.l19cd
	cp #60
	jr c,l19d3
	ld a,#5f
.l19d3
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
	jr c,l19ee
	ld a,e
.l19ee
	ld (ix+#01),a
	pop bc
	pop hl
	ld e,(ix+#08)
	ld d,(ix+#09)
	add hl,de
	bit 6,b
	jr z,l1a04
	ld (ix+#08),l
	ld (ix+#09),h
.l1a04
	ex de,hl
	ex af,af'
	ld l,a
	ld h,#00
	ld sp,l1e75
	add hl,sp
	ld sp,hl
	pop hl
	add hl,de
	ld e,(ix+#06)
	ld d,(ix+#07)
	add hl,de
.l1a18 equ $ + 1
	ld sp,#0100
	ex (sp),hl
	xor a
	or (ix+#05)
	jr z,l1a5f
	dec (ix+#05)
	jr nz,l1a5f
	ld a,(ix+#16)
	ld (ix+#05),a
	ld l,(ix+#17)
	ld h,(ix+#18)
	ld a,h
	add hl,de
	ld (ix+#06),l
	ld (ix+#07),h
	bit 2,(ix+#15)
	jr nz,l1a5f
	ld e,(ix+#19)
	ld d,(ix+#1a)
	and a
	jr z,l1a4a
	ex de,hl
.l1a4a
	sbc hl,de
	jp m,l1a5f
	ld a,(ix+#13)
	ld (ix+#12),a
	xor a
	ld (ix+#05),a
	ld (ix+#06),a
	ld (ix+#07),a
.l1a5f
	ld a,(ix+#02)
	bit 7,c
	jr z,l1a79
	bit 6,c
	jr z,l1a71
	cp #0f
	jr z,l1a79
	inc a
	jr l1a76
.l1a71
	cp #f1
	jr z,l1a79
	dec a
.l1a76
	ld (ix+#02),a
.l1a79
	ld l,a
	ld a,b
	and #0f
	add l
	jp p,l1a82
	xor a
.l1a82
	cp #10
	jr c,l1a88
	ld a,#0f
.l1a88
	or (ix+#1c)
	ld l,a
	ld h,#00
	ld de,l1d75
	add hl,de
	ld a,(hl)
	bit 0,c
	jr nz,l1a9a
	or (ix+#14)
.l1a9a
	ld (l1d7f),a
	bit 7,b
	ld a,c
	jr z,l1abb
	rla
	rla
	sra a
	sra a
	sra a
	add (ix+#04)
	bit 5,b
	jr z,l1ab4
	ld (ix+#04),a
.l1ab4
	ld hl,l1bca
	add (hl)
	ld (hl),a
	jr l1ac9
.l1abb
	rra
	add (ix+#03)
	ld (l1d74),a
	bit 5,b
	jr z,l1ac9
	ld (ix+#03),a
.l1ac9
	ld a,b
	rra
	and #48
.l1acd
	ld hl,l1d7c
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
	jr c,l1aec
	ld a,(ix+#0c)
.l1aec
	ld (ix+#0a),a
	ret
;
.play_music
.l1af0	; play music
;
	xor a
	ld (l1bca),a
	ld (l1d7c),a
	dec a
	ld (l1d82),a
	ld hl,l1d6f
	dec (hl)
	jr nz,l1b80
	ld hl,l1d33
	dec (hl)
	jr nz,l1b53
.l1b08 equ $ + 1
	ld bc,l2684
	ld a,(bc)
	and a
	jr nz,l1b48
	ld d,a
	ld (l1d73),a
	ld hl,(l1657)
	inc hl
	ld a,(hl)
	inc a
	jr nz,l1b22
	call l1659
.l1b1e equ $ + 1
	ld hl,l25df
	ld a,(hl)
	inc a
.l1b22
	ld (l1657),hl
	dec a
	add a
	ld e,a
	rl d
.l1b2b equ $ + 1
	ld hl,l25f8
	add hl,de
	ld de,(l17df)
	ld (l1b46),sp
	ld sp,hl
	pop hl
	add hl,de
	ld b,h
	ld c,l
	pop hl
	add hl,de
	ld (l1b5e),hl
	pop hl
	add hl,de
	ld (l1b72),hl
.l1b46 equ $ + 1
	ld sp,#0104
.l1b48
	ld ix,l1d24
	call l181c
	ld (l1b08),bc
.l1b53
	ld hl,l1d50
	dec (hl)
	jr nz,l1b67
	ld ix,l1d41
.l1b5e equ $ + 1
	ld bc,l2694
	call l181c
	ld (l1b5e),bc
.l1b67
	ld hl,l1d6d
	dec (hl)
	jr nz,l1b7b
	ld ix,l1d5e
.l1b72 equ $ + 1
	ld bc,l26b4
	call l181c
	ld (l1b72),bc
.l1b7c equ $ + 1
.l1b7b
	ld a,#08
	ld (l1d6f),a
.l1b80
	ld ix,l1d18
	ld hl,(l1d75)
	call l199f
	call l1c2d
	ld (l1d75),hl
	ld a,(l1d7f)
	ld (l1d7d),a
	ld ix,l1d35
	ld hl,(l1d77)
	call l199f
	call l1c2d
	ld (l1d77),hl
	ld a,(l1d7f)
	ld (l1d7e),a
	ld ix,l1d52
	ld hl,(l1d79)
	call l199f
	call l1c2d
	ld (l1d79),hl
	ld hl,(l1d73)
	ld a,h
	add l
	srl a
	jr nc,l1bc6
	inc a
.l1bc6
	ld (l1d7b),a
.l1bca equ $ + 1
	ld a,#00
	ld e,a
	add a
	sbc a
	ld d,a
	ld hl,(l1d83)
	add hl,de
	ld de,(l1d70)
	add hl,de
	push de
	call l1c54
	pop de
	ld (l1d80),hl
	xor a
	ld hl,l1d72
	or (hl)
	jr z,l1bf5
	dec (hl)
	jr nz,l1bf4
.l1beb equ $ + 1
	ld a,#3e
	ld (hl),a
.l1bee equ $ + 1
	ld hl,l2121
	add hl,de
	ld (l1d70),hl
.l1bf4
	xor a
.l1bf5
	ld hl,l1d75
.l1bf8
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
	jr nz,l1bf8
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
.l1c2d
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
	jr nc,l1c3c
	inc h
.l1c3c
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
.l1c54
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
	jr nc,l1c77
	inc b
.l1c77
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
.l1c8f
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
.l1ce3 equ $ + 4
.l1cdf
	db #00,#01,#00,#90,#0d,#d8,#69,#70
	db #76,#7d,#85,#8d,#95,#9d,#a8,#b1
	db #bb,#0c,#da,#62,#68,#6d,#75,#7b
	db #83,#8a,#92,#9c,#a4,#af,#b8,#0e
	db #08,#6a,#72,#78,#7e,#86,#90,#96
	db #a0,#aa,#b4,#be,#0f,#c0,#78,#88
	db #80,#90,#98,#a0,#b0,#a8,#e0,#b0
.l1d19 equ $ + 2
.l1d18 equ $ + 1
	db #e8,#00,#1d,#00,#00,#00,#00,#00
.l1d25 equ $ + 6
.l1d24 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#af,#31
.l1d27
	db #af,#30,#10,#15,#00,#00,#01,#00
.l1d35 equ $ + 6
.l1d33 equ $ + 4
	db #00,#00,#00,#00,#05,#f0,#1d,#1d
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1d44 equ $ + 5
.l1d42 equ $ + 3
.l1d41 equ $ + 2
	db #00,#00,#00,#b2,#31,#eb,#2d,#04
	db #34,#00,#00,#01,#00,#00,#00,#00
.l1d52 equ $ + 3
.l1d50 equ $ + 1
	db #00,#01,#f0,#00,#1c,#00,#00,#00
.l1d5e equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1d61 equ $ + 2
.l1d5f
	db #af,#31,#ef,#2e,#10,#2d,#00,#00
.l1d6d equ $ + 6
	db #01,#00,#00,#00,#00,#00,#05,#d0
.l1d75 equ $ + 6
.l1d74 equ $ + 5
.l1d73 equ $ + 4
.l1d72 equ $ + 3
.l1d70 equ $ + 1
.l1d6f
	db #04,#00,#00,#00,#00,#00,#81,#02
.l1d7e equ $ + 7
.l1d7d equ $ + 6
.l1d7c equ $ + 5
.l1d7b equ $ + 4
.l1d79 equ $ + 2
.l1d77
	db #6b,#00,#9e,#00,#00,#30,#00,#00
.l1d85 equ $ + 6
.l1d83 equ $ + 4
.l1d82 equ $ + 3
.l1d80 equ $ + 1
.l1d7f
	db #00,#00,#00,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#01,#01,#01,#01,#01,#00,#00
	db #00,#00,#01,#01,#01,#01,#01,#01
	db #01,#01,#02,#02,#02,#02,#00,#00
	db #00,#01,#01,#01,#01,#01,#02,#02
	db #02,#02,#02,#03,#03,#03,#00,#00
	db #01,#01,#01,#01,#02,#02,#02,#02
	db #03,#03,#03,#03,#04,#04,#00,#00
	db #01,#01,#01,#02,#02,#02,#03,#03
	db #03,#04,#04,#04,#05,#05,#00,#00
	db #01,#01,#02,#02,#02,#03,#03,#04
.l1de6 equ $ + 7
	db #04,#04,#05,#05,#06,#06,#00,#00
	db #01,#01,#02,#02,#03,#03,#04,#04
	db #05,#05,#06,#06,#07,#07,#00,#01
	db #01,#02,#02,#03,#03,#04,#04,#05
	db #05,#06,#06,#07,#07,#08,#00,#01
	db #01,#02,#02,#03,#04,#04,#05,#05
	db #06,#07,#07,#08,#08,#09,#00,#01
	db #01,#02,#03,#03,#04,#05,#05,#06
	db #07,#07,#08,#09,#09,#0a,#00,#01
	db #01,#02,#03,#04,#04,#05,#06,#07
	db #07,#08,#09,#0a,#0a,#0b,#00,#01
	db #02,#02,#03,#04,#05,#06,#06,#07
	db #08,#09,#0a,#0a,#0b,#0c,#00,#01
	db #02,#03,#03,#04,#05,#06,#07,#08
	db #09,#0a,#0a,#0b,#0c,#0d,#00,#01
	db #02,#03,#04,#05,#06,#07,#07,#08
	db #09,#0a,#0b,#0c,#0d,#0e,#00,#01
	db #02,#03,#04,#05,#06,#07,#08,#09
.l1e75 equ $ + 6
	db #0a,#0b,#0c,#0d,#0e,#0f,#f8,#0e
	db #10,#0e,#60,#0d,#80,#0c,#d8,#0b
	db #28,#0b,#88,#0a,#f0,#09,#60,#09
	db #e0,#08,#58,#08,#e0,#07,#7c,#07
	db #08,#07,#b0,#06,#40,#06,#ec,#05
	db #94,#05,#44,#05,#f8,#04,#b0,#04
.l1ea3 equ $ + 4
	db #70,#04,#2c,#04,#fd,#03,#be,#03
	db #84,#03,#58,#03,#20,#03,#f6,#02
	db #ca,#02,#a2,#02,#7c,#02,#58,#02
	db #38,#02,#16,#02,#f8,#01,#df,#01
	db #c2,#01,#ac,#01,#90,#01,#7b,#01
	db #65,#01,#51,#01,#3e,#01,#2c,#01
	db #1c,#01,#0a,#01,#fc,#00,#ef,#00
	db #e1,#00,#d6,#00,#c8,#00,#bd,#00
	db #b2,#00,#a8,#00,#9f,#00,#96,#00
	db #8e,#00,#85,#00,#7e,#00,#77,#00
	db #70,#00,#6b,#00,#64,#00,#5e,#00
	db #59,#00,#54,#00,#4f,#00,#4b,#00
	db #47,#00,#42,#00,#3f,#00,#3b,#00
	db #38,#00,#35,#00,#32,#00,#2f,#00
	db #2c,#00,#2a,#00,#27,#00,#25,#00
	db #23,#00,#21,#00,#1f,#00,#1d,#00
	db #1c,#00,#1a,#00,#19,#00,#17,#00
	db #16,#00,#15,#00,#13,#00,#12,#00
	db #11,#00,#10,#00,#0f,#00,#c5,#32
	db #a1,#1f,#41,#ed,#43,#9f,#1f,#22
	db #a2,#1f,#32,#37,#20,#32,#33,#20
	db #79,#32,#39,#20,#32,#3b,#20,#cd
	db #1b,#20,#11,#31,#20,#cd,#a4,#1f
	db #cd,#23,#20,#11,#34,#20,#cd,#a4
	db #1f,#3a,#3e,#20,#cb,#6f,#28,#f0
	db #cd,#23,#20,#11,#35,#20,#2a,#a2
	db #1f,#cd,#a4,#1f,#2a,#3e,#20,#7d
	db #fe,#40,#20,#d6,#7c,#fe,#80,#20
	db #d1,#c1,#3a,#a1,#1f,#2a,#a2,#1f
	db #24,#24,#0c,#79,#fe,#ca,#20,#0a
	db #3e,#c1,#4f,#3a,#a1,#1f,#3c,#32
	db #a1,#1f,#3a,#a1,#1f,#10,#97,#c9
	db #c6,#c6,#1a,#70,#c4,#f3,#01,#7e
	db #fb,#ed,#78,#87,#30,#11,#e6,#e1
	db #3e,#ff,#20,#67,#1a,#13,#0c,#ed
	db #79,#0d,#3e,#05,#3d,#20,#fd,#ed
	db #78,#87,#30,#fb,#87,#38,#21,#87
	db #38,#0d,#3e,#0a,#3d,#20,#fd,#ed
	db #78,#e6,#10,#20,#df,#18,#3c,#7e
	db #0c,#ed,#79,#0d,#23,#ed,#78,#f2
	db #dc,#1f,#e6,#20,#20,#f1,#18,#12
	db #87,#30,#0f,#0c,#ed,#78,#0d,#77
	db #23,#ed,#78,#f2,#f0,#1f,#e6,#20
	db #20,#f1,#21,#3e,#20,#ed,#78,#87
	db #30,#fb,#e6,#20,#28,#0d,#0c,#ed
	db #78,#0d,#77,#23,#3e,#04,#3d,#20
.l2010 equ $ + 1
	db #fd,#18,#ea,#ed,#78,#e6,#0f,#32
	db #4a,#20,#c9,#c9,#01,#7e,#fa,#3e
	db #01,#ed,#79,#c9,#21,#3e,#20,#11
	db #3f,#20,#36,#00,#01,#0b,#00,#ed
	db #b0,#c9,#0f,#00,#1a,#08,#46,#00
	db #1a,#00,#c6,#02,#c6,#14,#00,#40
	db #80,#00,#1a,#00,#c6,#02,#00,#00
	db #00,#00,#00,#00,#ff,#f3,#7e,#23
	db #dd,#67,#06,#34,#fd,#21,#13,#24
	db #d5,#78,#d6,#04,#e6,#0f,#20,#03
	db #11,#01,#00,#0e,#10,#cd,#fe,#20
	db #cb,#11,#30,#f9,#fd,#71,#00,#e5
	db #0c,#21,#00,#00,#37,#ed,#6a,#0d
	db #20,#fb,#fd,#73,#34,#fd,#72,#68
.l2082 equ $ + 3
	db #19,#eb,#fd,#23,#e1,#10,#d2,#d1
	db #0e,#01,#cd,#fe,#20,#38,#15,#0e
	db #ff,#0c,#cd,#fe,#20,#30,#fa,#79
	db #fe,#10,#c8,#38,#0b,#d5,#16,#10
	db #cd,#f0,#20,#d1,#ed,#b0,#18,#e0
	db #d5,#cd,#d7,#20,#c5,#f1,#08,#11
	db #30,#02,#0b,#78,#b1,#28,#0a,#11
	db #20,#04,#0b,#78,#b1,#28,#02,#1e
	db #10,#cd,#f0,#20,#7b,#81,#4f,#cd
	db #d7,#20,#d1,#e5,#62,#6b,#ed,#42
	db #08,#f5,#c1,#ed,#b0,#e1,#18,#b0
	db #fd,#21,#13,#24,#06,#00,#fd,#09
	db #fd,#56,#00,#cd,#f0,#20,#79,#fd
	db #86,#34,#4f,#78,#fd,#8e,#68,#47
	db #c9,#01,#00,#00,#15,#f8,#cd,#fe
	db #20,#cb,#11,#cb,#10,#18,#f5,#dd
	db #7c,#cb,#3f,#dd,#67,#c0,#7e,#23
	db #1f,#dd,#67,#c9,#12,#c5,#05,#00
	db #27,#c4,#06,#00,#02,#c8,#02,#00
	db #15,#c8,#02,#00,#22,#c1,#04,#00
.l2121 equ $ + 2
	db #13,#c1,#03,#00,#13,#c5,#02,#00
	db #13,#c7,#03,#00,#14,#c1,#03,#00
	db #14,#c4,#04,#00,#14,#c8,#02,#00
	db #1c,#c1,#10,#00,#1e,#c1,#0a,#00
	db #1d,#c5,#05,#00,#0f,#c1,#04,#00
	db #04,#c1,#09,#00,#03,#c1,#09,#00
	db #11,#c1,#02,#00,#0f,#c7,#03,#00
	db #15,#c5,#03,#00,#01,#c6,#04,#00
	db #0a,#c8,#03,#00,#25,#c1,#03,#00
	db #09,#c1,#0d,#00,#05,#c1,#07,#00
	db #22,#c5,#03,#00,#26,#c1,#0a,#00
	db #00,#c7,#02,#00,#16,#c1,#04,#00
	db #06,#c1,#09,#00,#08,#c4,#06,#00
	db #0b,#c1,#07,#00,#23,#c1,#07,#00
	db #1f,#c1,#02,#00,#24,#c1,#03,#00
	db #0b,#c7,#03,#00,#0c,#c1,#08,#00
	db #0c,#c8,#08,#00,#0e,#c2,#06,#00
	db #11,#c3,#03,#00,#01,#c4,#02,#00
	db #0d,#c1,#0e,#00,#02,#c1,#05,#00
	db #10,#c5,#05,#00,#15,#c1,#04,#00
	db #10,#c1,#05,#00,#11,#c8,#02,#00
	db #11,#c6,#03,#00,#0e,#c8,#02,#00
	db #02,#c6,#02,#00,#27,#c1,#03,#00
	db #01,#c1,#03,#00,#0f,#c4,#04,#00
	db #0a,#c5,#03,#00,#05,#c7,#02,#00
	db #24,#c4,#03,#00,#07,#c1,#0e,#00
	db #12,#c2,#05,#00,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#16,#c5,#02,#00
	db #1a,#c7,#03,#00,#16,#c7,#03,#00
	db #19,#c5,#03,#00,#19,#c7,#03,#00
	db #1a,#c4,#03,#00,#1a,#c1,#03,#00
	db #1b,#c1,#03,#00,#01,#00,#02,#03
	db #03,#01,#03,#01,#05,#00,#02,#03
	db #00,#04,#00,#00,#00,#01,#00,#01
	db #00,#00,#02,#02,#03,#03,#04,#06
	db #06,#06,#09,#0a,#00,#01,#00,#01
	db #02,#01,#02,#01,#03,#02,#04,#03
	db #05,#02,#08,#04,#00,#00,#00,#00
	db #01,#03,#04,#08,#10,#18,#1a,#22
	db #24,#44,#45,#49,#51,#52,#62,#63
	db #01,#02,#04,#05,#07,#08,#09,#0d
.l2466 equ $ + 7
.l2461 equ $ + 2
	db #11,#19,#21,#31,#71,#b1,#f1,#f1
	db #01,#02,#04,#05,#07,#0b,#0d,#11
	db #13,#1b,#1f,#2f,#37,#57,#5b,#5b
	db #01,#02,#03,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#00,#00,#00,#00
	db #67
	ld a,(ix+#00)
	inc ix
	ld ly,a
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld (iy+#02),l
	ld (iy+#03),h
	ld (iy+#04),e
	ld (iy+#05),d
	exx
	djnz l2466
	ret
	ld hl,l24df
	push hl
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(ix+#02)
	ld (l2b69),a
	jp (hl)
.l24df
	ld de,#0003
	add ix,de
	call l2461
	ld a,(ix+#00)
	ld (l2b6a),a
	inc ix
	push ix
	call l2082
	pop ix
	ld b,(ix+#00)
	inc ix
	push bc
	ld (l2564),sp
	ld a,(ix+#00)
	add a
	add a
	ld l,a
	ld h,#d6
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld a,(hl)
	ex af,af'
	inc hl
	ld a,(hl)
	exx
	ld b,a
	ex af,af'
.l2513
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
.l2564 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#06,#20,#00,#ea
.l257c equ $ + 1
	db #00,#00,#00,#00,#00,#58,#09,#7e
	db #09,#c0,#09,#00,#00,#46,#0a,#b4
	db #0a,#be,#0a,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#c4,#0a,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l25bc equ $ + 1
	db #00,#22,#0b,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#25,#0b,#00,#00,#00,#00,#00
.l25df equ $ + 4
.l25dd equ $ + 2
	db #00,#00,#00,#03,#06,#09,#0c,#09
	db #0c,#0f,#30,#21,#24,#27,#2a,#0f
	db #12,#18,#1b,#18,#1e,#15,#15,#2d
.l25f8 equ $ + 5
	db #33,#36,#39,#36,#3c,#18,#1b,#18
	db #1e,#ff,#68,#01,#8e,#01,#92,#01
	db #a8,#01,#ce,#01,#e0,#01,#ee,#01
	db #14,#02,#27,#02,#a8,#01,#35,#02
	db #e0,#01,#ee,#01,#54,#02,#27,#02
	db #67,#02,#a6,#02,#92,#01,#d5,#02
	db #69,#05,#51,#03,#d5,#02,#1b,#07
	db #43,#07,#91,#05,#af,#05,#d8,#05
	db #91,#05,#4c,#06,#78,#06,#91,#05
	db #ec,#06,#78,#06,#a8,#01,#72,#03
	db #a3,#03,#ee,#01,#3a,#04,#6d,#04
	db #a8,#01,#06,#05,#a3,#03,#ee,#01
	db #37,#05,#6d,#04,#a9,#07,#ce,#01
	db #ee,#07,#d5,#02,#2b,#03,#51,#03
	db #72,#08,#14,#02,#b7,#08,#a9,#07
	db #35,#02,#ee,#07,#72,#08,#54,#02
	db #b7,#08,#72,#08,#3b,#09,#b7,#08
	db #f0,#22,#cf,#b1,#02,#71,#74,#78
.l2684 equ $ + 1
	db #74,#71,#74,#78,#74,#6d,#71,#74
	db #71,#6d,#71,#74,#71,#74,#78,#7b
.l2694 equ $ + 1
	db #78,#74,#78,#7b,#78,#6c,#70,#73
	db #70,#6c,#70,#73,#70,#00,#b1,#40
	db #c0,#00,#1a,#00,#23,#10,#40,#cf
	db #b1,#10,#7d,#bb,#00,#2d,#79,#bb
.l26b4 equ $ + 1
	db #00,#3c,#74,#bb,#00,#2f,#78,#00
	db #f0,#22,#cf,#b1,#02,#71,#74,#78
	db #74,#71,#74,#78,#74,#71,#74,#78
	db #74,#71,#74,#78,#74,#6d,#71,#74
	db #71,#6d,#71,#74,#71,#6d,#71,#74
	db #71,#6d,#71,#74,#71,#00,#fc,#0c
	db #ce,#b1,#0c,#7d,#40,#b1,#04,#7b
	db #7d,#79,#78,#76,#b1,#20,#79,#00
	db #1a,#00,#23,#10,#40,#cf,#b1,#20
	db #7d,#bb,#00,#2d,#79,#00,#f0,#22
	db #cf,#b1,#02,#74,#78,#7b,#78,#74
	db #78,#7b,#78,#74,#78,#7b,#78,#74
	db #78,#7b,#78,#6c,#6f,#73,#6f,#6c
	db #6f,#73,#6f,#6c,#6f,#73,#6f,#6c
	db #6f,#73,#6f,#00,#fc,#0c,#ce,#b1
	db #0c,#80,#40,#b1,#04,#80,#80,#7d
	db #7b,#7d,#b1,#10,#80,#7f,#00,#1a
	db #00,#3c,#10,#40,#cf,#b1,#20,#74
	db #bb,#00,#2f,#78,#00,#fc,#0c,#ce
	db #b1,#0c,#7d,#40,#b1,#02,#7d,#7f
	db #b1,#04,#80,#7f,#7d,#80,#b1,#0c
	db #80,#b1,#02,#80,#82,#b1,#04,#84
	db #82,#80,#84,#00,#f0,#0c,#ce,#b1
	db #14,#84,#b1,#02,#85,#84,#b1,#04
	db #82,#7d,#b1,#10,#80,#7f,#00,#f0
	db #22,#cf,#b1,#02,#71,#74,#78,#74
	db #71,#74,#78,#74,#6d,#71,#74,#71
	db #6d,#71,#74,#71,#74,#78,#7b,#78
	db #74,#78,#7b,#78,#b1,#01,#6c,#d2
	db #8c,#e1,#70,#d2,#8c,#e1,#73,#d2
	db #74,#e1,#70,#d2,#74,#e1,#6c,#d2
	db #5c,#e1,#70,#d2,#5c,#e1,#73,#d3
	db #74,#e1,#70,#d3,#74,#00,#f0,#04
	db #cf,#b1,#04,#74,#d4,#b1,#02,#74
	db #c0,#d2,#74,#74,#d4,#74,#d2,#74
	db #d3,#b1,#10,#74,#d2,#b1,#04,#74
	db #d4,#74,#d2,#b1,#02,#74,#74,#d4
	db #74,#d2,#74,#8c,#8c,#74,#74,#5c
	db #5c,#d3,#74,#74,#00,#f0,#04,#cf
	db #b1,#02,#74,#e1,#74,#d4,#74,#e1
	db #74,#d2,#74,#e1,#74,#d4,#74,#e1
	db #74,#d2,#74,#e1,#71,#d4,#74,#e1
	db #71,#d2,#6d,#e1,#71,#d4,#74,#e1
	db #71,#d2,#74,#e1,#78,#d4,#7b,#e1
	db #78,#d2,#74,#e1,#78,#d4,#7b,#e1
	db #78,#b1,#01,#6c,#d2,#8c,#e1,#70
	db #d2,#8c,#e1,#73,#d2,#74,#e1,#70
	db #d2,#74,#e1,#6c,#d2,#5c,#e1,#70
	db #d2,#5c,#e1,#73,#d3,#74,#e1,#70
	db #d3,#74,#00,#b1,#0a,#c0,#f0,#04
	db #cf,#b1,#04,#74,#d4,#b1,#0c,#74
	db #d2,#b1,#04,#74,#d4,#b1,#0c,#74
	db #d2,#b1,#04,#74,#d4,#b1,#02,#74
	db #d2,#8c,#8c,#74,#74,#b1,#08,#c0
	db #00,#1a,#00,#23,#10,#40,#cf,#b1
	db #10,#7d,#bb,#00,#2d,#79,#bb,#00
	db #3c,#74,#bb,#00,#2f,#b1,#08,#78
	db #d2,#b0,#b1,#02,#5c,#5c,#d3,#74
	db #74,#00,#fc,#0c,#ce,#b1,#08,#7d
	db #cd,#b1,#02,#d0,#cc,#d0,#40,#ce
	db #b1,#04,#7c,#7d,#7f,#80,#7d,#b1
	db #08,#7b,#cd,#b1,#02,#d0,#cc,#d0
	db #cb,#d0,#ca,#d0,#ce,#b1,#08,#79
	db #cd,#b1,#02,#d0,#cc,#d0,#cb,#d0
	db #ca,#d0,#00,#f0,#04,#ce,#b1,#02
	db #74,#d8,#bb,#00,#23,#cf,#b1,#06
	db #7d,#d4,#b0,#cd,#b1,#01,#74,#ca
	db #74,#d8,#bb,#00,#23,#cf,#b1,#06
	db #7d,#d2,#b0,#cd,#b1,#02,#74,#d8
	db #bb,#00,#23,#cf,#b1,#06,#7d,#d4
	db #b0,#cd,#b1,#01,#74,#ca,#74,#d8
	db #bb,#00,#23,#cf,#b1,#02,#7d,#d4
	db #b0,#cd,#b1,#01,#74,#ca,#74,#d8
	db #bb,#00,#23,#cf,#b1,#02,#7d,#d2
	db #b0,#cd,#74,#d8,#bb,#00,#2d,#cf
	db #b1,#06,#79,#d4,#b0,#cd,#b1,#01
	db #74,#ca,#74,#d8,#bb,#00,#2d,#cf
	db #b1,#06,#79,#d2,#b0,#cd,#b1,#02
	db #74,#d8,#bb,#00,#2d,#cf,#b1,#06
	db #79,#d4,#b0,#cd,#b1,#01,#74,#ca
	db #74,#d8,#bb,#00,#2d,#cf,#b1,#02
	db #79,#d4,#b0,#cd,#b1,#01,#74,#ca
	db #74,#d8,#bb,#00,#2d,#cf,#b1,#02
	db #79,#00,#fc,#0c,#ce,#b1,#08,#7b
	db #cd,#b1,#02,#d0,#cc,#d0,#40,#ce
	db #b1,#04,#7d,#7b,#79,#78,#76,#b1
	db #08,#78,#cd,#b1,#02,#d0,#cc,#d0
	db #cb,#d0,#ca,#d0,#c9,#d0,#c8,#d0
	db #c7,#d0,#c6,#d0,#c5,#d0,#c4,#d0
	db #c3,#d0,#c2,#d0,#00,#f0,#04,#cd
	db #b1,#02,#74,#d8,#bb,#00,#3c,#cf
	db #b1,#06,#74,#d4,#b0,#cd,#b1,#01
	db #74,#ca,#74,#d8,#bb,#00,#3c,#cf
	db #b1,#06,#74,#d2,#b0,#cd,#b1,#02
	db #74,#d8,#bb,#00,#3c,#cf,#b1,#06
	db #74,#d4,#b0,#cd,#b1,#01,#74,#ca
	db #74,#d8,#bb,#00,#3c,#cf,#b1,#02
	db #74,#d4,#b0,#cd,#b1,#01,#74,#ca
	db #74,#d8,#bb,#00,#3c,#cf,#b1,#02
	db #74,#d2,#b0,#cd,#78,#d8,#bb,#00
	db #2f,#cf,#b1,#06,#78,#d4,#b0,#cd
	db #b1,#01,#78,#ca,#78,#d8,#bb,#00
	db #2f,#cf,#b1,#06,#78,#d2,#b0,#cd
	db #b1,#02,#78,#d8,#bb,#00,#2f,#cf
	db #b1,#06,#78,#d2,#b0,#b1,#01,#a8
	db #d8,#bb,#00,#2f,#78,#d2,#b0,#a8
	db #d8,#bb,#00,#2f,#78,#d2,#b0,#90
	db #d8,#bb,#00,#2f,#78,#d2,#b0,#90
	db #d8,#bb,#00,#2f,#78,#00,#fc,#0c
	db #ce,#b1,#08,#74,#cd,#b1,#02,#d0
	db #cc,#d0,#40,#ce,#b1,#04,#76,#78
	db #76,#74,#73,#b1,#08,#74,#cd,#b1
	db #02,#d0,#cc,#d0,#cd,#b1,#04,#76
	db #ce,#b1,#08,#73,#cd,#b1,#02,#d0
	db #cc,#d0,#cb,#d0,#ca,#d0,#00,#f0
	db #0c,#ce,#b1,#08,#78,#cd,#b1,#02
	db #d0,#cc,#d0,#ce,#b1,#04,#79,#78
	db #76,#74,#73,#b1,#08,#78,#cd,#b1
	db #02,#d0,#cc,#d0,#cb,#d0,#ca,#d0
	db #c9,#d0,#c8,#d0,#c7,#d0,#c6,#d0
	db #c5,#d0,#c4,#d0,#c3,#d0,#c2,#d0
	db #00,#b1,#0a,#c0,#f0,#04,#cf,#b1
	db #04,#74,#d4,#b1,#0c,#74,#d2,#b1
	db #04,#74,#d4,#b1,#0c,#74,#d2,#b1
	db #04,#74,#d4,#b1,#02,#74,#d2,#8c
	db #8c,#74,#74,#d7,#74,#76,#74,#76
	db #00,#f0,#04,#cf,#b1,#08,#74,#d4
	db #b1,#04,#74,#d3,#5c,#d2,#b1,#10
	db #74,#b1,#08,#74,#d4,#b1,#04,#74
	db #d3,#5c,#d2,#b1,#10,#74,#00,#f0
	db #0e,#cf,#b1,#0e,#79,#ce,#b1,#02
	db #d0,#cd,#d0,#cc,#d0,#cf,#b1,#04
	db #79,#7d,#79,#b1,#0e,#78,#ce,#b1
	db #02,#d0,#cd,#d0,#cc,#d0,#cb,#d0
	db #ca,#d0,#cf,#79,#78,#79,#78,#00
	db #1a,#00,#2d,#10,#40,#cf,#b1,#04
	db #79,#bb,#00,#16,#b1,#02,#85,#bb
	db #00,#16,#85,#bb,#00,#2d,#b1,#04
	db #79,#bb,#00,#16,#85,#bb,#00,#2d
	db #79,#bb,#00,#16,#b1,#02,#85,#bb
	db #00,#16,#85,#bb,#00,#2d,#79,#bb
	db #00,#16,#85,#bb,#00,#2d,#79,#bb
	db #00,#16,#85,#bb,#00,#3c,#b1,#04
	db #74,#bb,#00,#1e,#b1,#02,#80,#bb
	db #00,#1e,#80,#bb,#00,#3c,#b1,#04
	db #74,#bb,#00,#1e,#80,#bb,#00,#3c
	db #74,#bb,#00,#1e,#b1,#02,#80,#bb
	db #00,#1e,#80,#bb,#00,#3c,#74,#bb
	db #00,#1e,#80,#bb,#00,#3c,#74,#bb
	db #00,#1e,#80,#00,#f0,#0e,#cf,#b1
.l2b6a equ $ + 7
.l2b69 equ $ + 6
	db #0e,#76,#ce,#b1,#02,#d0,#cd,#d0
	db #cc,#d0,#cb,#d0,#ca,#d0,#cf,#78
	db #76,#78,#76,#b1,#0e,#78,#ce,#b1
	db #02,#d0,#cd,#d0,#cc,#d0,#cb,#d0
	db #ca,#d0,#cf,#74,#76,#74,#76,#00
	db #1a,#00,#28,#10,#40,#cf,#b1,#04
	db #7b,#bb,#00,#14,#b1,#02,#87,#bb
	db #00,#14,#87,#bb,#00,#28,#b1,#04
	db #7b,#bb,#00,#14,#87,#bb,#00,#28
	db #7b,#bb,#00,#14,#b1,#02,#87,#bb
	db #00,#14,#87,#bb,#00,#28,#7b,#bb
	db #00,#14,#87,#bb,#00,#28,#7b,#bb
	db #00,#14,#87,#bb,#00,#3c,#b1,#04
	db #74,#bb,#00,#1e,#b1,#02,#80,#bb
	db #00,#1e,#80,#bb,#00,#3c,#b1,#04
	db #74,#bb,#00,#1e,#80,#bb,#00,#3c
	db #74,#bb,#00,#1e,#b1,#02,#80,#bb
	db #00,#1e,#80,#bb,#00,#3c,#74,#bb
	db #00,#1e,#80,#bb,#00,#3c,#74,#bb
	db #00,#1e,#80,#00,#f0,#0e,#cf,#b1
	db #0e,#76,#ce,#b1,#02,#d0,#cd,#d0
	db #cc,#d0,#cb,#d0,#ca,#d0,#cf,#78
	db #76,#78,#76,#b1,#0e,#74,#ce,#b1
	db #02,#d0,#cd,#d0,#cc,#d0,#cb,#d0
	db #ca,#d0,#c9,#d0,#c8,#d0,#c7,#d0
	db #c6,#d0,#00,#b1,#0a,#c0,#f0,#04
	db #cf,#b1,#04,#74,#d4,#b1,#0c,#74
	db #d2,#b1,#04,#74,#d4,#b1,#0c,#74
	db #d2,#b1,#04,#74,#d4,#b1,#02,#74
	db #d2,#8c,#8c,#74,#74,#5c,#5c,#d3
	db #74,#74,#00,#1a,#00,#23,#10,#40
	db #cf,#b1,#04,#7d,#bb,#00,#12,#b1
	db #02,#89,#bb,#00,#12,#89,#bb,#00
	db #23,#b1,#04,#7d,#bb,#00,#12,#89
	db #bb,#00,#2d,#79,#bb,#00,#16,#b1
	db #02,#85,#bb,#00,#16,#85,#bb,#00
	db #2d,#b1,#04,#79,#bb,#00,#16,#85
	db #bb,#00,#3c,#74,#bb,#00,#1e,#b1
	db #02,#80,#bb,#00,#1e,#80,#bb,#00
	db #3c,#b1,#04,#74,#bb,#00,#1e,#80
	db #bb,#00,#2f,#78,#bb,#00,#18,#b1
	db #02,#84,#bb,#00,#18,#84,#bb,#00
	db #2f,#b1,#04,#78,#bb,#00,#18,#84
	db #00,#f0,#04,#cf,#b1,#02,#71,#e1
	db #74,#d4,#78,#e1,#74,#d2,#71,#e1
	db #74,#d4,#78,#e1,#74,#d2,#71,#e1
	db #74,#d4,#78,#e1,#74,#d2,#71,#e1
	db #74,#d4,#78,#e1,#74,#d2,#6d,#e1
	db #71,#d4,#74,#e1,#71,#d2,#6d,#e1
	db #71,#d4,#74,#e1,#71,#d2,#6d,#e1
	db #71,#d4,#74,#e1,#71,#d2,#6d,#e1
	db #71,#d4,#74,#e1,#71,#00,#1a,#00
	db #23,#10,#40,#cf,#b1,#04,#7d,#bb
	db #00,#12,#b1,#02,#89,#bb,#00,#12
	db #89,#bb,#00,#23,#7d,#d2,#b0,#74
	db #d8,#bb,#00,#12,#89,#d4,#b0,#74
	db #d8,#bb,#00,#23,#b1,#04,#7d,#bb
	db #00,#12,#b1,#02,#89,#bb,#00,#12
	db #89,#bb,#00,#23,#7d,#bb,#00,#12
	db #89,#bb,#00,#23,#7d,#bb,#00,#12
	db #89,#bb,#00,#2d,#b1,#04,#79,#bb
	db #00,#16,#b1,#02,#85,#bb,#00,#16
	db #85,#bb,#00,#2d,#79,#d2,#b0,#74
	db #d8,#bb,#00,#16,#85,#d4,#b0,#74
	db #d8,#bb,#00,#2d,#b1,#04,#79,#bb
	db #00,#16,#b1,#02,#85,#bb,#00,#16
	db #85,#bb,#00,#2d,#79,#bb,#00,#16
	db #85,#bb,#00,#2d,#79,#bb,#00,#16
	db #85,#00,#f0,#04,#cf,#b1,#02,#74
	db #e1,#78,#d4,#7b,#e1,#78,#d2,#74
	db #e1,#78,#d4,#7b,#e1,#78,#d2,#74
	db #e1,#78,#d4,#7b,#e1,#78,#d2,#74
	db #e1,#78,#d4,#7b,#e1,#78,#d2,#6c
	db #e1,#6f,#d4,#73,#e1,#6f,#d2,#6c
	db #e1,#6f,#d4,#73,#e1,#6f,#d2,#6c
	db #e1,#6f,#d4,#73,#e1,#6f,#d2,#6c
	db #e1,#6f,#d4,#73,#e1,#6f,#00,#1a
	db #00,#3c,#10,#40,#cf,#b1,#04,#74
	db #bb,#00,#1e,#b1,#02,#80,#bb,#00
	db #1e,#80,#bb,#00,#3c,#74,#d2,#b0
	db #74,#d8,#bb,#00,#1e,#80,#d4,#b0
	db #74,#d8,#bb,#00,#3c,#b1,#04,#74
	db #bb,#00,#1e,#b1,#02,#80,#bb,#00
	db #1e,#80,#bb,#00,#3c,#74,#bb,#00
	db #1e,#80,#bb,#00,#3c,#74,#bb,#00
	db #1e,#80,#bb,#00,#2f,#b1,#04,#78
	db #bb,#00,#18,#b1,#02,#84,#bb,#00
	db #18,#84,#bb,#00,#2f,#78,#d2,#b0
	db #74,#d8,#bb,#00,#18,#84,#d4,#b0
	db #74,#d8,#bb,#00,#2f,#b1,#04,#78
	db #bb,#00,#18,#b1,#02,#84,#bb,#00
	db #18,#84,#bb,#00,#2f,#78,#bb,#00
	db #18,#84,#bb,#00,#2f,#78,#bb,#00
	db #18,#84,#00,#f0,#0c,#ce,#b1,#14
	db #84,#b1,#02,#85,#84,#b1,#04,#82
	db #7d,#b1,#10,#80,#b1,#08,#7f,#d7
	db #cf,#b1,#02,#74,#76,#74,#76,#00
	db #08,#09,#00,#8f,#80,#01,#00,#8f
	db #00,#02,#00,#8e,#00,#03,#00,#8d
	db #00,#04,#00,#8c,#00,#05,#00,#8a
	db #00,#06,#00,#87,#80,#06,#00,#83
	db #00,#08,#00,#00,#00,#00,#0f,#10
	db #10,#0f,#40,#00,#00,#0f,#80,#00
	db #02,#0f,#c0,#00,#04,#0e,#00,#01
	db #06,#0d,#40,#01,#08,#0c,#80,#01
	db #0a,#0b,#c0,#01,#0a,#0a,#00,#02
	db #0a,#09,#40,#02,#0a,#08,#80,#02
	db #0a,#07,#c0,#02,#08,#06,#00,#03
	db #06,#05,#40,#03,#04,#04,#80,#03
	db #02,#03,#c0,#03,#00,#00,#00,#00
	db #20,#21,#00,#1e,#00,#00,#00,#1d
	db #00,#00,#00,#1c,#00,#00,#00,#1b
	db #00,#00,#00,#1a,#00,#00,#00,#1a
	db #00,#00,#00,#1a,#00,#00,#00,#1a
	db #00,#00,#00,#1a,#00,#00,#00,#1a
	db #00,#00,#00,#1a,#00,#00,#00,#19
	db #00,#00,#00,#18,#00,#00,#00,#17
	db #00,#00,#00,#16,#00,#00,#00,#16
	db #00,#00,#00,#16,#00,#00,#00,#16
	db #00,#00,#00,#16,#00,#00,#00,#16
	db #00,#00,#00,#16,#00,#00,#00,#15
	db #00,#00,#00,#14,#00,#00,#00,#13
	db #00,#00,#00,#12,#00,#00,#00,#11
	db #00,#00,#00,#10,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#13,#1b
	db #00,#8f,#00,#00,#00,#8f,#00,#00
	db #00,#8e,#00,#00,#00,#8e,#00,#00
	db #00,#8e,#00,#00,#00,#8e,#00,#00
	db #00,#8e,#00,#00,#00,#8e,#00,#00
	db #00,#8e,#00,#00,#00,#8e,#00,#00
	db #00,#8e,#00,#00,#00,#8e,#00,#00
	db #00,#8e,#00,#00,#00,#8e,#00,#00
	db #00,#8e,#00,#00,#00,#8e,#00,#00
	db #00,#8e,#00,#00,#00,#8e,#00,#00
	db #00,#8e,#00,#00,#00,#8e,#02,#00
	db #00,#8e,#04,#00,#00,#8e,#02,#00
	db #00,#8e,#00,#00,#00,#8e,#fe,#ff
	db #00,#8e,#fc,#ff,#00,#8e,#fe,#ff
	db #00,#8e,#00,#00,#01,#02,#00,#8e
	db #00,#00,#00,#8e,#00,#00,#00,#01
	db #00,#90,#00,#00,#16,#17,#00,#8d
	db #01,#f0,#00,#8c,#01,#f0,#00,#8b
	db #02,#f0,#00,#8b,#02,#f0,#00,#8b
	db #03,#f0,#00,#8b,#03,#f0,#00,#8b
	db #02,#f0,#00,#8b,#02,#f0,#00,#8b
	db #01,#f0,#00,#8a,#01,#f0,#00,#8a
	db #00,#00,#00,#8a,#00,#00,#00,#8a
	db #01,#f0,#00,#8a,#01,#f0,#00,#89
	db #02,#f0,#00,#89,#02,#f0,#00,#89
	db #03,#f0,#00,#88,#03,#f0,#00,#87
	db #02,#f0,#00,#86,#02,#f0,#00,#85
	db #01,#f0,#00,#84,#00,#00,#00,#80
	db #00,#00,#00,#01,#00,#05,#06,#fc
	db #fc,#fd,#fe,#ff,#00,#18,#00,#00
	db #00,#17,#00,#00,#00,#16,#00,#00
	db #00,#15,#00,#00,#00,#14,#00,#00
	db #00,#13,#00,#00,#00,#12,#00,#00
	db #00,#11,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#20,#00,#8f
	db #00,#00,#00,#8e,#00,#00,#00,#8d
	db #00,#00,#00,#8c,#00,#00,#00,#8b
	db #00,#00,#00,#8a,#00,#00,#00,#89
	db #00,#00,#00,#88,#00,#00,#00,#87
	db #00,#00,#00,#86,#00,#00,#00,#85
	db #00,#00,#00,#84,#00,#00,#00,#83
	db #00,#00,#00,#82,#00,#00,#00,#81
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#18,#1f
	db #04,#0f,#1e,#00,#00,#0f,#96,#00
	db #00,#0e,#5a,#00,#00,#0e,#d2,#00
	db #00,#0d,#96,#00,#00,#0d,#0e,#01
	db #00,#0c,#d2,#00,#00,#0c,#4a,#01
	db #00,#0b,#0e,#01,#00,#0b,#86,#01
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
	db #00,#00,#00,#00,#00,#01,#00,#00
	db #20,#0c,#0c,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#06,#20,#fa,#fb,#fc,#fd,#fe
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#01,#c0,#f4,#ed,#79
	db #06,#f6,#ed,#49,#ed,#71,#05,#ed
	db #a3,#01,#80,#f6,#ed,#49,#ed,#71
	db #3c,#fe,#0d,#20,#e6,#7e,#a7,#f8
	db #3e,#0d,#01,#c0,#f4,#ed,#79,#06
	db #f6,#ed,#49,#ed,#71,#05,#ed,#a3
	db #01,#80,#f6,#ed,#49,#ed,#71,#c9
	db #44,#4d,#29,#54,#5d,#29,#eb,#19
	db #eb,#29,#7a,#85,#30,#01,#24,#81
	db #6f,#7c,#88,#cb,#3f,#cb,#1d,#cb
	db #3f,#cb,#1d,#cb,#3f,#cb,#1d,#cb
	db #3f,#cb,#1d,#67,#d0,#23,#c9,#06
	db #00,#4c,#55,#58,#29,#cb,#18,#eb
	db #19,#79,#88,#cb,#13,#cb,#12,#cb
	db #10,#19,#88,#4f,#cb,#13,#cb,#12
	db #cb,#10,#7c,#83,#6f,#79,#8a,#30
	db #01,#04,#cb,#38,#1f,#cb,#1d,#cb
	db #38,#1f,#cb,#1d,#cb,#38,#1f,#cb
	db #1d,#cb,#38,#1f,#cb,#1d,#67,#d0
	db #23,#c9,#64,#2a,#65,#00,#01,#0c
	db #01,#0c,#94,#35,#30,#0e,#60,#20
	db #60,#21,#01,#05,#09,#0b,#0d,#0f
	db #13,#15,#19,#25,#3d,#00,#5d,#00
	db #31,#37,#4d,#53,#5f,#71,#82,#8c
	db #9c,#9e,#a0,#a6,#a8,#aa,#ac,#ae
	db #ae,#00,#57,#1f,#23,#25,#29,#2d
	db #2f,#33,#bf,#00,#1d,#21,#23,#27
	db #2b,#2d,#31,#55,#bd,#bf,#00,#1b
	db #21,#25,#29,#2b,#3b,#4d,#5f,#bb
	db #bd,#bf,#00,#01,#00,#90,#0d,#d8
	db #69,#70,#76,#7d,#85,#8d,#95,#9d
	db #a8,#b1,#bb,#0c,#da,#62,#68,#6d
	db #75,#7b,#83,#8a,#92,#9c,#a4,#af
	db #b8,#0e,#08,#6a,#72,#78,#7e,#86
	db #90,#96,#a0,#aa,#b4,#be,#0f,#c0
	db #78,#88,#80,#90,#98,#a0,#b0,#a8
	db #e0,#b0,#e8,#00,#03,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #30,#2b,#36,#2a,#01,#28,#00,#00
	db #01,#00,#00,#00,#00,#00,#01,#f0
	db #00,#0b,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#30,#2b,#ac
	db #2a,#04,#24,#00,#00,#01,#00,#00
	db #00,#00,#00,#02,#f0,#00,#03,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#30,#2b,#f2,#2a,#02,#28
	db #00,#10,#01,#00,#00,#00,#00,#00
	db #02,#f0,#02,#00,#00,#00,#00,#00
	db #d6,#00,#0e,#01,#d6,#00,#00,#3c
	db #00,#00,#00,#28,#00,#ff,#47,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #01,#01,#01,#01,#02,#02,#02,#02
	db #00,#00,#00,#01,#01,#01,#01,#01
	db #02,#02,#02,#02,#02,#03,#03,#03
	db #00,#00,#01,#01,#01,#01,#02,#02
	db #02,#02,#03,#03,#03,#03,#04,#04
	db #00,#00,#01,#01,#01,#02,#02,#02
	db #03,#03,#03,#04,#04,#04,#05,#05
	db #00,#00,#01,#01,#02,#02,#02,#03
	db #03,#04,#04,#04,#05,#05,#06,#06
	db #00,#00,#01,#01,#02,#02,#03,#03
	db #04,#04,#05,#05,#06,#06,#07,#07
	db #00,#01,#01,#02,#02,#03,#03,#04
	db #04,#05,#05,#06,#06,#07,#07,#08
	db #00,#01,#01,#02,#02,#03,#04,#04
	db #05,#05,#06,#07,#07,#08,#08,#09
	db #00,#01,#01,#02,#03,#03,#04,#05
	db #05,#06,#07,#07,#08,#09,#09,#0a
	db #00,#01,#01,#02,#03,#04,#04,#05
	db #06,#07,#07,#08,#09,#0a,#0a,#0b
	db #00,#01,#02,#02,#03,#04,#05,#06
	db #06,#07,#08,#09,#0a,#0a,#0b,#0c
	db #00,#01,#02,#03,#03,#04,#05,#06
	db #07,#08,#09,#0a,#0a,#0b,#0c,#0d
	db #00,#01,#02,#03,#04,#05,#06,#07
	db #07,#08,#09,#0a,#0b,#0c,#0d,#0e
	db #00,#01,#02,#03,#04,#05,#06,#07
	db #08,#09,#0a,#0b,#0c,#0d,#0e,#0f
	db #f8,#0e,#10,#0e,#60,#0d,#80,#0c
	db #d8,#0b,#28,#0b,#88,#0a,#f0,#09
	db #60,#09,#e0,#08,#58,#08,#e0,#07
	db #7c,#07,#08,#07,#b0,#06,#40,#06
	db #ec,#05,#94,#05,#44,#05,#f8,#04
	db #b0,#04,#70,#04,#2c,#04,#fd,#03
	db #be,#03,#84,#03,#58,#03,#20,#03
	db #f6,#02,#ca,#02,#a2,#02,#7c,#02
	db #58,#02,#38,#02,#16,#02,#f8,#01
	db #df,#01,#c2,#01,#ac,#01,#90,#01
	db #7b,#01,#65,#01,#51,#01,#3e,#01
	db #2c,#01,#1c,#01,#0a,#01,#fc,#00
	db #ef,#00,#e1,#00,#d6,#00,#c8,#00
	db #bd,#00,#b2,#00,#a8,#00,#9f,#00
	db #96,#00,#8e,#00,#85,#00,#7e,#00
	db #77,#00,#70,#00,#6b,#00,#64,#00
	db #5e,#00,#59,#00,#54,#00,#4f,#00
	db #4b,#00,#47,#00,#42,#00,#3f,#00
	db #3b,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2c,#00,#2a,#00,#27,#00
	db #25,#00,#23,#00,#21,#00,#1f,#00
	db #1d,#00,#1c,#00,#1a,#00,#19,#00
	db #17,#00,#16,#00,#15,#00,#13,#00
	db #12,#00,#11,#00,#10,#00,#0f,#00
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#40,#c8
	db #02,#02,#02,#03,#03,#03,#03,#05
	db #06,#04,#00,#03,#00,#00,#03,#01
	db #00,#03,#02,#04,#06,#01,#05,#07
	db #08,#09,#09,#09,#00,#09,#0c,#0d
	db #00,#02,#03,#04,#05,#05,#01,#02
	db #03,#02,#06,#04,#02,#07,#06,#07
	db #00,#01,#01,#01,#01,#05,#09,#0d
	db #15,#1d,#25,#2d,#4d,#8d,#9d,#9e
	db #a6,#a7,#a8,#b0,#01,#02,#0a,#0e
	db #1e,#5e,#60,#80,#00,#00,#00,#00
	db #00,#01,#01,#01,#01,#02,#06,#0e
	db #1e,#3e,#5e,#60,#64,#6c,#70,#b0
	db #c0,#c4,#44,#84,#01,#02,#04,#06
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#02,#04,#06,#08,#08,#0a,#1a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #00,#00,#00,#00,#af,#ac,#aa,#a8
	db #a5,#a3,#a1,#9f,#9d,#9b,#99,#97
	db #96,#94,#92,#91,#8f,#8e,#8c,#8b
	db #8a,#89,#87,#86,#86,#85,#84,#83
	db #82,#82,#81,#81,#81,#81,#81,#81
	db #81,#81,#81,#81,#81,#81,#81,#82
	db #82,#83,#84,#85,#86,#86,#87,#89
	db #8a,#8b,#8c,#8e,#8f,#91,#92,#94
	db #96,#97,#99,#9b,#9d,#9f,#a1,#a3
	db #a5,#a8,#aa,#ac,#af,#b1,#b4,#b6
	db #b9,#bc,#be,#c1,#c4,#c6,#c9,#cc
	db #cf,#d2,#d5,#d8,#db,#de,#e1,#e4
	db #e7,#ea,#ed,#f0,#f3,#f7,#fa,#fd
	db #00,#01,#01,#02,#03,#03,#04,#05
	db #06,#06,#07,#08,#08,#09,#0a,#0b
	db #0b,#0c,#0d,#0e,#0e,#0f,#10,#10
	db #11,#12,#13,#13,#14,#15,#16,#16
	db #17,#18,#19,#19,#1a,#1b,#1c,#1d
	db #1d,#1e,#1f,#20,#20,#21,#22,#23
	db #24,#24,#25,#26,#27,#28,#28,#29
	db #2a,#2b,#2c,#2c,#2d,#2e,#2f,#30
	db #30,#31,#32,#33,#34,#35,#35,#36
	db #37,#38,#39,#3a,#3a,#3b,#3c,#3d
	db #3e,#3f,#40,#41,#41,#42,#43,#44
	db #45,#46,#47,#48,#48,#49,#4a,#4b
	db #4c,#4d,#4e,#4f,#50,#51,#51,#52
	db #53,#54,#55,#56,#57,#58,#59,#5a
	db #5b,#5c,#5d,#5e,#5e,#5f,#60,#61
	db #62,#63,#64,#65,#66,#67,#68,#69
	db #6a,#6b,#6c,#6d,#6e,#6f,#70,#71
	db #72,#73,#74,#75,#76,#77,#78,#79
	db #7a,#7b,#7c,#7d,#7e,#7f,#80,#81
	db #82,#83,#84,#85,#87,#88,#89,#8a
	db #8b,#8c,#8d,#8e,#8f,#90,#91,#92
	db #93,#95,#96,#97,#98,#99,#9a,#9b
	db #9c,#9d,#9f,#a0,#a1,#a2,#a3,#a4
	db #a5,#a6,#a8,#a9,#aa,#ab,#ac,#ad
	db #af,#b0,#b1,#b2,#b3,#b4,#b6,#b7
	db #b8,#b9,#ba,#bc,#bd,#be,#bf,#c0
	db #c2,#c3,#c4,#c5,#c6,#c8,#c9,#ca
	db #cb,#cd,#ce,#cf,#d0,#d2,#d3,#d4
	db #d6,#d7,#d8,#d9,#db,#dc,#dd,#de
	db #e0,#e1,#e2,#e4,#e5,#e6,#e8,#e9
	db #ea,#ec,#ed,#ee,#f0,#f1,#f2,#f4
	db #f5,#f6,#f8,#f9,#fa,#fc,#fd,#ff
	db #00,#00,#00,#95,#00,#52,#95,#ce
	db #00,#2b,#52,#75,#95,#b3,#ce,#e8
	db #00,#16,#2b,#3f,#52,#64,#75,#86
	db #95,#a4,#b3,#c1,#ce,#db,#e8,#f4
	db #00,#0b,#16,#21,#2b,#35,#3f,#49
	db #52,#5b,#64,#6d,#75,#7d,#86,#8d
	db #95,#9d,#a4,#ac,#b3,#ba,#c1,#c8
	db #ce,#d5,#db,#e1,#e8,#ee,#f4,#fa
	db #00,#05,#0b,#10,#16,#1b,#21,#26
	db #2b,#30,#35,#3a,#3f,#44,#49,#4d
	db #52,#57,#5b,#60,#64,#68,#6d,#71
	db #75,#79,#7d,#81,#86,#8a,#8d,#91
	db #95,#99,#9d,#a1,#a4,#a8,#ac,#af
	db #b3,#b6,#ba,#bd,#c1,#c4,#c8,#cb
	db #ce,#d1,#d5,#d8,#db,#de,#e1,#e5
	db #e8,#eb,#ee,#f1,#f4,#f7,#fa,#fd
	db #00,#02,#05,#08,#0b,#0e,#10,#13
	db #16,#19,#1b,#1e,#21,#23,#26,#28
	db #2b,#2e,#30,#33,#35,#38,#3a,#3d
	db #3f,#41,#44,#46,#49,#4b,#4d,#50
	db #52,#54,#57,#59,#5b,#5d,#60,#62
	db #64,#66,#68,#6a,#6d,#6f,#71,#73
	db #75,#77,#79,#7b,#7d,#7f,#81,#84
	db #86,#88,#8a,#8c,#8d,#8f,#91,#93
	db #95,#97,#99,#9b,#9d,#9f,#a1,#a2
	db #a4,#a6,#a8,#aa,#ac,#ad,#af,#b1
	db #b3,#b5,#b6,#b8,#ba,#bc,#bd,#bf
	db #c1,#c2,#c4,#c6,#c8,#c9,#cb,#cd
	db #ce,#d0,#d1,#d3,#d5,#d6,#d8,#da
	db #db,#dd,#de,#e0,#e1,#e3,#e5,#e6
	db #e8,#e9,#eb,#ec,#ee,#ef,#f1,#f2
	db #f4,#f5,#f7,#f8,#fa,#fb,#fd,#fe
	db #f0,#00,#01,#01,#02,#02,#02,#02
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #05,#05,#05,#05,#05,#05,#05,#05
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#02,#03,#04,#05,#06,#07
	db #08,#09,#0a,#0b,#0c,#0d,#0e,#0f
	db #00,#02,#04,#06,#08,#0a,#0c,#0e
	db #10,#12,#14,#16,#18,#1a,#1c,#1e
	db #00,#03,#06,#09,#0c,#0f,#12,#15
	db #18,#1b,#1e,#21,#24,#27,#2a,#2d
	db #00,#04,#08,#0c,#10,#14,#18,#1c
	db #20,#24,#28,#2c,#30,#34,#38,#3c
	db #00,#05,#0a,#0f,#14,#19,#1e,#23
	db #28,#2d,#32,#37,#3c,#41,#46,#4b
	db #00,#06,#0c,#12,#18,#1e,#24,#2a
	db #30,#36,#3c,#42,#48,#4e,#54,#5a
	db #00,#07,#0e,#15,#1c,#23,#2a,#31
	db #38,#3f,#46,#4d,#54,#5b,#62,#69
	db #00,#08,#10,#18,#20,#28,#30,#38
	db #40,#48,#50,#58,#60,#68,#70,#78
	db #00,#09,#12,#1b,#24,#2d,#36,#3f
	db #48,#51,#5a,#63,#6c,#75,#7e,#87
	db #00,#0a,#14,#1e,#28,#32,#3c,#46
	db #50,#5a,#64,#6e,#78,#82,#8c,#96
	db #00,#0b,#16,#21,#2c,#37,#42,#4d
	db #58,#63,#6e,#79,#84,#8f,#9a,#a5
	db #00,#0c,#18,#24,#30,#3c,#48,#54
	db #60,#6c,#78,#84,#90,#9c,#a8,#b4
	db #00,#0d,#1a,#27,#34,#41,#4e,#5b
	db #68,#75,#82,#8f,#9c,#a9,#b6,#c3
	db #00,#0e,#1c,#2a,#38,#46,#54,#62
	db #70,#7e,#8c,#9a,#a8,#b6,#c4,#d2
	db #00,#0f,#1e,#2d,#3c,#4b,#5a,#69
	db #78,#87,#96,#a5,#b4,#c3,#d2,#e1
	db #00,#00,#5a,#a5,#f0,#a5,#0a,#55
	db #af,#5f,#f0,#f0,#a0,#50,#f0,#a0
	db #f0,#f5,#fa,#f5,#0f,#0f,#0a,#05
	db #0f,#0a,#0f,#5a,#0f,#5f,#ff,#ff
	db #aa,#55,#ff,#aa,#ff,#fa,#ff,#af
	db #02,#0e,#07,#e0,#1f,#f8,#3f,#fc
	db #3f,#fc,#7f,#fe,#7f,#fe,#7f,#fe
	db #7f,#fe,#7f,#fe,#7f,#fe,#3f,#fc
	db #3f,#fc,#1f,#f8,#07,#e0,#02,#10
	db #00,#00,#1f,#f8,#20,#04,#4f,#f2
	db #5f,#fa,#5f,#fa,#5f,#fa,#5f,#fa
	db #5f,#fa,#5f,#fa,#5f,#fa,#5f,#fa
	db #4f,#f2,#20,#04,#1f,#f8,#00,#00
	db #01,#06,#3c,#7e,#7e,#7e,#7e,#3c
	db #01,#08,#00,#00,#31,#4a,#84,#4a
	db #31,#00,#01,#08,#00,#38,#44,#78
	db #44,#78,#40,#40,#01,#08,#24,#24
	db #18,#10,#28,#28,#28,#10,#01,#08
	db #0c,#10,#08,#18,#24,#24,#18,#00
	db #01,#08,#00,#00,#1c,#20,#38,#20
	db #1c,#00,#02,#06,#03,#c0,#07,#e0
	db #07,#e0,#07,#e0,#07,#e0,#03,#c0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00

;
.init_music		; added by Megachur
;
	ld hl,l2513
	jp real_init_music

;
.music_info
	db "Rulez! Mag 1 - Music 4 (2014)(CPCRulez)(Aleksandr Ekshibarov)",0
	db "ProTracker 3.5",0

	read "music_end.asm"
