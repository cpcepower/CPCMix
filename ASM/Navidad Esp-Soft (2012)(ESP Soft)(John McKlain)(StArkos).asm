; Music of Navidad Esp-Soft (2012)(ESP Soft)(John McKlain)(StArkos)
; Ripped by Megachur the 05/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "NAVIDAES.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

.l8000
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#08,#a8,#00,#18,#80,#21,#80
	db #32,#80,#4f,#80,#6b,#80,#7e,#80
	db #00,#00,#00,#00,#00,#00,#0d,#1a
	db #80,#01,#00,#7e,#2d,#04,#38,#74
	db #fe,#70,#fb,#68,#f3,#60,#f1,#0d
	db #1a,#80,#01,#00,#32,#01,#1e,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#1a,#80,#01
	db #00,#7a,#25,#09,#76,#25,#06,#72
	db #26,#03,#2e,#28,#2a,#29,#26,#09
	db #22,#0a,#1e,#0c,#1a,#0c,#1a,#15
	db #0d,#1a,#80,#03,#00,#3c,#38,#38
	db #34,#30,#2c,#28,#24,#20,#1c,#18
	db #14,#10,#0c,#0d,#1a,#80,#01,#00
	db #bc,#ff,#ff,#3c,#3c,#38,#38,#38
	db #34,#34,#b4,#ff,#ff,#30,#30,#30
	db #2c,#2c,#2c,#28,#a8,#ff,#ff,#28
	db #24,#24,#24,#20,#20,#20,#9c,#ff
	db #ff,#1c,#1c,#18,#18,#18,#14,#14
	db #94,#ff,#ff,#10,#10,#10,#0c,#0c
	db #0c,#0d,#1a,#80,#30,#00,#00,#00
	db #cb,#80,#00,#b9,#81,#cc,#80,#19
	db #82,#00,#e8,#81,#4b,#81,#6d,#82
	db #01,#ba,#80,#00,#80,#e1,#00,#00
	db #01,#42,#00,#ba,#60,#02,#8a,#60
	db #03,#42,#00,#ba,#60,#02,#80,#60
	db #01,#42,#00,#ba,#60,#02,#8a,#60
	db #03,#42,#00,#ba,#60,#02,#80,#60
	db #01,#42,#00,#ba,#60,#02,#8a,#60
	db #03,#42,#00,#ba,#60,#02,#80,#60
	db #01,#42,#00,#8a,#65,#03,#8a,#41
	db #42,#00,#ba,#60,#02,#80,#60,#01
	db #42,#00,#ba,#60,#02,#8a,#60,#03
	db #42,#00,#ba,#60,#02,#80,#60,#01
	db #42,#00,#ba,#60,#02,#8a,#60,#03
	db #42,#00,#ba,#60,#02,#80,#60,#01
	db #42,#00,#ba,#60,#02,#8a,#60,#03
	db #42,#00,#ba,#60,#02,#80,#60,#01
	db #42,#00,#ba,#60,#02,#8a,#60,#03
	db #42,#00,#4b,#80,#e1,#00,#00,#01
	db #42,#00,#ba,#60,#02,#8a,#60,#03
	db #42,#00,#ba,#60,#02,#80,#60,#01
	db #42,#00,#ba,#60,#02,#8a,#60,#03
	db #42,#00,#ba,#60,#02,#80,#60,#01
	db #42,#00,#ba,#60,#02,#8a,#60,#03
	db #42,#00,#ba,#60,#02,#80,#60,#01
	db #42,#00,#8a,#65,#03,#8a,#41,#42
	db #00,#42,#00,#80,#60,#01,#42,#00
	db #42,#00,#8a,#65,#03,#42,#00,#42
	db #00,#8a,#43,#42,#00,#42,#00,#8a
	db #41,#42,#00,#42,#00,#4b,#42,#00
	db #80,#65,#01,#80,#41,#02,#8a,#60
	db #03,#04,#8a,#45,#8a,#43,#8a,#41
	db #4b,#72,#e7,#00,#00,#04,#04,#41
	db #04,#29,#04,#41,#04,#33,#02,#42
	db #00,#41,#02,#29,#42,#00,#02,#29
	db #2d,#02,#31,#33,#04,#41,#02,#42
	db #00,#35,#02,#42,#00,#42,#00,#42
	db #00,#02,#37,#0a,#49,#04,#45,#00
	db #84,#e7,#00,#00,#04,#02,#45,#04
	db #45,#49,#02,#49,#04,#49,#45,#02
	db #45,#45,#02,#49,#06,#29,#04,#37
	db #42,#00,#42,#00,#45,#02,#42,#00
	db #45,#04,#45,#42,#00,#02,#45,#02
	db #41,#3d,#02,#41,#04,#29,#2d,#02
	db #31,#ba,#e5,#00,#00,#05,#42,#00
	db #7b,#7b,#42,#00,#42,#00,#79,#42
	db #00,#79,#79,#42,#00,#42,#00,#75
	db #42,#00,#79,#75,#42,#00,#6b,#02
	db #42,#00,#f4,#c7,#05,#00,#42,#00
	db #42,#00,#42,#00,#b4,#c5,#00,#00
	db #42,#00,#79,#75,#42,#00,#42,#00
	db #6b,#42,#00,#42,#00,#71,#42,#00
	db #42,#00,#75,#42,#00,#79,#75,#42
	db #00,#6d,#04,#dc,#c7,#fc,#ff,#42
	db #00,#42,#00,#42,#00,#a6,#e5,#00
	db #00,#05,#02,#6b,#04,#6d,#71,#02
	db #75,#04,#71,#67,#02,#6b,#6d,#02
	db #71,#04,#f4,#c7,#05,#00,#42,#00
	db #42,#00,#42,#00,#42,#80,#00,#00
	db #04,#b4,#45,#04,#75,#04,#75,#04
	db #75,#02,#71,#6d,#02,#71,#04,#dc
	db #c7,#fc,#ff,#42,#00,#42,#00,#42
	db #00,#00,#00,#00,#00,#00,#00,#00
	
	ds #8500-$,#00
	
.l8500	; sound fx ?
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#ff,#2a,#01,#1c,#85,#25,#85
	db #71,#85,#82,#85,#9e,#85,#b1,#85
	db #ce,#85,#04,#86,#00,#00,#00,#00
	db #00,#00,#0d,#1e,#85,#01,#00,#3c
	db #78,#0c,#b8,#ff,#ff,#f4,#ff,#ff
	db #0c,#38,#70,#0c,#b4,#fe,#ff,#f0
	db #fe,#ff,#0c,#30,#6c,#0c,#b0,#ff
	db #ff,#e8,#ff,#ff,#0c,#2c,#68,#0c
	db #a8,#fe,#ff,#e4,#fe,#ff,#0c,#28
	db #60,#0c,#a4,#ff,#ff,#e0,#ff,#ff
	db #0c,#20,#5c,#0c,#a0,#fe,#ff,#d8
	db #fe,#ff,#0c,#1c,#58,#0c,#98,#ff
	db #ff,#d4,#ff,#ff,#0c,#18,#0d,#1e
	db #85,#01,#00,#7e,#2d,#04,#38,#74
	db #fe,#70,#fb,#68,#f3,#60,#f1,#0d
	db #1e,#85,#01,#00,#7a,#25,#09,#76
	db #25,#06,#72,#26,#03,#2e,#28,#2a
	db #29,#26,#09,#22,#0a,#1e,#0c,#1a
	db #0c,#1a,#15,#0d,#1e,#85,#03,#00
	db #3c,#38,#38,#34,#30,#2c,#28,#24
	db #20,#1c,#18,#14,#10,#0c,#0d,#1e
	db #85,#01,#00,#32,#01,#1e,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#0d,#1e,#85,#01,#00
	db #bc,#ff,#ff,#3c,#3c,#38,#38,#38
	db #34,#34,#b4,#ff,#ff,#30,#30,#30
	db #2c,#2c,#2c,#28,#a8,#ff,#ff,#28
	db #24,#24,#24,#20,#20,#20,#9c,#ff
	db #ff,#1c,#1c,#18,#18,#18,#14,#14
	db #94,#ff,#ff,#10,#10,#10,#0c,#0c
	db #0c,#0d,#1e,#85,#01,#00,#34,#74
	db #02,#74,#04,#34,#74,#02,#74,#04
	db #34,#74,#02,#74,#04,#34,#74,#02
	db #74,#04,#34,#74,#02,#74,#04,#34
	db #74,#02,#74,#04,#34,#74,#02,#74
	db #04,#34,#74,#02,#74,#04,#34,#74
	db #02,#74,#04,#0d,#1e,#85,#40,#00
	db #00,#00,#46,#86,#00,#47,#86,#47
	db #86,#47,#86,#01,#3c,#86,#00,#42
	db #80,#00,#00,#00,#00,#00,#00,#00
;

	ds #9000-$,#00

.l9000
	db #00,#00,#01,#00,#00,#04,#00,#04
	db #02,#01,#04,#00,#00,#00,#00,#00
	db #00,#01,#01,#01,#03,#01,#03,#00
	db #02,#04,#00,#02,#05,#00,#06,#09
	db #00,#01,#01,#02,#00,#01,#02,#01
	db #02,#00,#02,#02,#01,#03,#03,#04
	db #00,#01,#02,#03,#01,#02,#03,#05
	db #06,#07,#17,#18,#28,#2c,#2e,#3e
	db #3f,#40,#41,#42,#01,#02,#04,#06
	db #08,#10,#12,#1a,#1b,#1f,#2f,#30
	db #34,#54,#55,#95,#01,#02,#04,#06
	db #0a,#0b,#0d,#11,#13,#17,#18,#1c
	db #20,#22,#2a,#32,#01,#02,#04,#08
	db #00,#00,#00,#00,#00,#00,#00,#00
;
; #17d9
;
;
; #166f - player reallocated by Megachur
;
.l166f
	di
	ld iy,l9000
	ld a,#80
	ld b,#34
	push de
.l1679
	ld i,a
	ld a,b
	sub #04
	and #0f
	jr nz,l1685
	ld de,#0001
.l1685
	ld c,#10
	ld a,i
.l1689
	call l1726
	rl c
	jr nc,l1689
	ld (iy+#00),c
	push hl
	ld hl,#0001
.l1698 equ $ + 1
	jp nc,#0d29
	jr nz,l1698
	ld (iy+#34),e
	ld (iy+#68),d
	add hl,de
	ex de,hl
	inc iy
	pop hl
	djnz l1679
	inc c
.l16aa
	pop de
.l16ab
	ldir
.l16ad
	ld c,#01
	call l1726
	jr c,l16ab
	ld c,#ff
.l16b6
	inc c
	call l1726
	jr nc,l16b6
	bit 4,c
	jr z,l16cb
	bit 0,c
	ret z
	push de
	ld d,#10
	call l1718
	jr l16aa
.l16cb
	push de
	call l16fe
	push bc
	pop ix
	ld de,#0230
	inc b
	djnz l16dc
	dec c
	jr z,l16e3
	dec c
.l16dc
	ld de,#0420
	jr z,l16e3
	ld e,#10
.l16e3
	call l1718
	ld i,a
	ld a,e
	add c
	ld c,a
	ld a,i
	call l16fe
	pop de
	push hl
	ld h,d
	ld l,e
	sbc hl,bc
	push ix
	pop bc
	ldir
	pop hl
	jr l16ad
.l16fe
	ld iy,l9000
	ld b,#00
	add iy,bc
	ld d,(iy+#00)
	call l1718
	push hl
	ld l,(iy+#34)
	ld h,(iy+#68)
	add hl,bc
	ld b,h
	ld c,l
	pop hl
	ret
.l1718
	ld bc,#0000
.l171b
	dec d
	ret m
	call l1726
	rl c
	rl b
	jr l171b
.l1726
	add a
	ret nz
	ld a,(hl)
	inc hl
	adc a
	ei
	ret
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	push hl
	ld hl,#26f2
	ld de,l8500
	push de
	call l166f
	pop de
	call l1edd
	pop hl
	ld de,l8000
	push de
	call l166f
	pop de
	jp l1e83	; init music
.l17e4
	db #00
;
.play_music
.l17e5		; play music
;
	xor a
	ld (l17e4),a
.l17ea equ $ + 1
	ld a,#84
	dec a
	jp nz,l19b6
.l17f0 equ $ + 1
	ld a,#01
	dec a
	jr nz,l185c
.l17f5 equ $ + 1
	ld hl,#7f90
	ld a,(hl)
	inc hl
	rra
	jr nc,l1803
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l1803
	rra
	jr nc,l180b
	ld de,l18ac
	ldi
.l180b
	rra
	jr nc,l1813
	ld de,l1911
	ldi
.l1813
	rra
	jr nc,l181b
	ld de,l1976
	ldi
.l181b
	ld de,l188b
	ldi
	ldi
	ld de,l18f0
	ldi
	ldi
	ld de,l1955
	ldi
	ldi
	rra
	jr nc,l1838
	ld de,l185b
	ldi
.l1838
	rra
	jr nc,l1843
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1847),de
.l1843
	ld (l17f5),hl
.l1847 equ $ + 1
	ld hl,#0000
	ld (l1865),hl
	ld a,#01
	ld (l1860),a
	ld (l1886),a
	ld (l18eb),a
	ld (l1950),a
.l185b equ $ + 1
	ld a,#01
.l185c
	ld (l17f0),a
.l1860 equ $ + 1
	ld a,#01
	dec a
	jr nz,l1882
.l1865 equ $ + 1
	ld hl,#0002
	ld a,(hl)
	inc hl
	srl a
	jr nc,l187f
	srl a
	jr nz,l1873
	ld a,(hl)
	inc hl
.l1873
	jr nc,l187a
	ld (l17e4),a
	jr l187d
.l187a
	ld (l19b5),a
.l187d
	ld a,#01
.l187f
	ld (l1865),hl
.l1882
	ld (l1860),a
.l1886 equ $ + 1
	ld a,#01
	dec a
	jr nz,l18e7
.l188b equ $ + 1
	ld hl,#0002
	call l1d2f
	ld (l188b),hl
	jr c,l18e7
	ld a,d
	rra
	jr nc,l189e
	and #0f
	ld (l1a38),a
.l189e
	rl d
	jr nc,l18a6
	ld (l1a26),ix
.l18a6
	rl d
	jr nc,l18e5
	ld a,e
.l18ac equ $ + 1
	add #00
	ld (l1a37),a
	ld hl,#0000
	ld (l1a23),hl
	rl d
	jr c,l18c5
.l18bb equ $ + 1
	ld hl,#0000
	ld a,(l1a48)
	ld (l1a40),a
	jr l18e2
.l18c5
	ld l,b
	add hl,hl
.l18c8 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l1a48),a
	ld (l1a40),a
	ld a,(hl)
	or a
	jr z,l18de
	ld (l1b51),a
.l18de
	inc hl
	ld (l18bb),hl
.l18e2
	ld (l1a3a),hl
.l18e5
	ld a,#01
.l18e7
	ld (l1886),a
.l18eb equ $ + 1
	ld a,#01
	dec a
	jr nz,l194c
.l18f0 equ $ + 1
	ld hl,#0002
	call l1d2f
	ld (l18f0),hl
	jr c,l194c
	ld a,d
	rra
	jr nc,l1903
	and #0f
	ld (l1a04),a
.l1903
	rl d
	jr nc,l190b
	ld (l19f2),ix
.l190b
	rl d
	jr nc,l194a
	ld a,e
.l1911 equ $ + 1
	add #00
	ld (l1a03),a
	ld hl,#0000
	ld (l19ef),hl
	rl d
	jr c,l192a
.l1920 equ $ + 1
	ld hl,#0000
	ld a,(l1a14)
	ld (l1a0c),a
	jr l1947
.l192a
	ld l,b
	add hl,hl
.l192d equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l1a14),a
	ld (l1a0c),a
	ld a,(hl)
	or a
	jr z,l1943
	ld (l1b51),a
.l1943
	inc hl
	ld (l1920),hl
.l1947
	ld (l1a06),hl
.l194a
	ld a,#01
.l194c
	ld (l18eb),a
.l1950 equ $ + 1
	ld a,#01
	dec a
	jr nz,l19b1
.l1955 equ $ + 1
	ld hl,#0002
	call l1d2f
	ld (l1955),hl
	jr c,l19b1
	ld a,d
	rra
	jr nc,l1968
	and #0f
	ld (l19d3),a
.l1968
	rl d
	jr nc,l1970
	ld (l19c1),ix
.l1970
	rl d
	jr nc,l19af
	ld a,e
.l1976 equ $ + 1
	add #00
	ld (l19d2),a
	ld hl,#0000
	ld (l19be),hl
	rl d
	jr c,l198f
.l1985 equ $ + 1
	ld hl,#0000
	ld a,(l19e3)
	ld (l19db),a
	jr l19ac
.l198f
	ld l,b
	add hl,hl
.l1992 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l19e3),a
	ld (l19db),a
	ld a,(hl)
	or a
	jr z,l19a8
	ld (l1b51),a
.l19a8
	inc hl
	ld (l1985),hl
.l19ac
	ld (l19d5),hl
.l19af
	ld a,#01
.l19b1
	ld (l1950),a
.l19b5 equ $ + 1
	ld a,#89
.l19b6
	ld (l17ea),a
	ld iy,l1b68
.l19be equ $ + 1
	ld hl,#0000
.l19c1 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l19be),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l19d3 equ $ + 2
.l19d2 equ $ + 1
	ld de,#0089
.l19d5 equ $ + 1
	ld hl,#0003
	call l1b73
.l19db equ $ + 1
	ld a,#06
	dec a
	jr nz,l19e4
	ld (l19d5),hl
.l19e3 equ $ + 1
	ld a,#06
.l19e4
	ld (l19db),a
	ld a,lx
	ex af,af'
	ld iy,l1b66
.l19ef equ $ + 1
	ld hl,#0000
.l19f2 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l19ef),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l1a04 equ $ + 2
.l1a03 equ $ + 1
	ld de,#0089
.l1a06 equ $ + 1
	ld hl,#0003
	call l1b73
.l1a0c equ $ + 1
	ld a,#06
	dec a
	jr nz,l1a15
	ld (l1a06),hl
.l1a14 equ $ + 1
	ld a,#06
.l1a15
	ld (l1a0c),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l1b64
.l1a23 equ $ + 1
	ld hl,#0000
.l1a26 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l1a23),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l1a38 equ $ + 2
.l1a37 equ $ + 1
	ld de,#0089
.l1a3a equ $ + 1
	ld hl,#0003
	call l1b73
.l1a40 equ $ + 1
	ld a,#06
	dec a
	jr nz,l1a49
	ld (l1a3a),hl
.l1a48 equ $ + 1
	ld a,#06
.l1a49
	ld (l1a40),a
.l1a4c
	ld de,#0000
	exx
	ld de,#002d
.l1a54 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l1a77
	ld a,#01
	ld (l1ca2),a
	call l1b73
	xor a
	ld (l1ca2),a
	ld a,l
	or h
	jr z,l1a6f
.l1a6b equ $ + 1
	ld a,#01
	dec a
	jr nz,l1a74
.l1a6f
	ld (l1a54),hl
	ld a,#06
.l1a74
	ld (l1a6b),a
.l1a77
	ex af,af'
	or lx
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l1b64
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	out (c),a
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	ld a,(hl)
.l1b51 equ $ + 1
	cp #09
	ret z
	ld (l1b51),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l1b64
	add b
	nop
.l1b66
	add b
	nop
.l1b68
	add b
	nop
.l1b6a
	ld a,a
	djnz l1b6d
.l1b6d
	djnz l1b6f
.l1b70 equ $ + 1
.l1b6f
	djnz l1b72
	nop
.l1b72
	add hl,bc
.l1b73
	ld b,(hl)
	inc hl
	rr b
	jp c,l1bd1
	rr b
	jr c,l1ba1
	ld a,b
	and #0f
	jr nz,l1b8a
	ld (iy+#07),a
	ld lx,#09
	ret
.l1b8a
	ld lx,#08
	sub d
	jr nc,l1b91
	xor a
.l1b91
	ld (iy+#07),a
	rr b
	call l1d03
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l1ba1
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l1bb1
	ld (l1b6a),a
	ld lx,#00
.l1bb1
	ld a,b
	and #0f
	sub d
	jr nc,l1bb8
	xor a
.l1bb8
	ld (iy+#07),a
	bit 5,c
	jr nz,l1bc2
	inc lx
	ret
.l1bc2
	rr b
	bit 6,c
	call l1cf5
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l1bd1
	rr b
	jr nc,l1be4
	ld a,(l1a40)
	ld c,a
	ld a,(l1a48)
	cp c
	jr nz,l1be4
	ld a,#fe
	ld (l1b51),a
.l1be4
	bit 1,b
	jp nz,l1c9d
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l1b72),a
	bit 0,b
	jr z,l1c53
	bit 2,b
	call l1cf5
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l1c13),a
	ld a,b
	exx
.l1c13 equ $ + 1
	jr l1c14
.l1c14
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
	jr nc,l1c33
	inc hl
.l1c33
	bit 5,a
	jr z,l1c43
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
.l1c43
	ld (l1b70),hl
	exx
.l1c47
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l1b6a),a
	ld lx,#00
	ret
.l1c53
	bit 2,b
	call l1cf5
	ld (l1b70),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l1c67),a
	ld a,b
	exx
.l1c67 equ $ + 1
	jr l1c68
.l1c68
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
	bit 5,a
	jr z,l1c94
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
.l1c94
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l1c47
.l1c9d
	bit 0,b
	jr z,l1cb1
.l1ca2 equ $ + 1
	ld a,#00
	or a
	jr z,l1caa
	ld hl,#0000
	ret
.l1caa
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l1b73
.l1cb1
	ld (iy+#07),#10
	bit 5,b
	jr nz,l1cbe
	ld lx,#09
	jr l1cd1
.l1cbe
	ld lx,#08
	ld hx,e
	bit 2,b
	call l1cf5
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l1cd1
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l1b72),a
	rr b
	rr b
	bit 2,b
	call l1cf5
	ld (l1b70),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l1b6a),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l1cf5
	jr z,l1d03
	ld a,(hl)
	inc hl
	exx
	add e
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld h,a
	ret
.l1d03
	bit 4,b
	jr z,l1d13
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld d,a
	exx
.l1d13
	ld a,e
	bit 3,b
	jr z,l1d20
	add (hl)
	inc hl
	cp #90
	jr c,l1d20
	ld a,#8f
.l1d20
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l1d63
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l1d2f
	ld a,(hl)
	inc hl
	srl a
	jr c,l1d56
	sub #20
	jr c,l1d60
	jr z,l1d52
	dec a
	ld e,a
.l1d3d
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l1d4b
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l1d4b
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l1d52
	ld e,(hl)
	inc hl
	jr l1d3d
.l1d56
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l1d60
	add #20
	ret
.l1d63
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
	dw #0002,#0002,#0002,#0002
	dw #0002,#0002,#0002,#0002
	dw #0001,#0001,#0001,#0001
	dw #0001,#0001,#0001,#0001
;
.real_init_music
.l1e83
;
	ld hl,#0009
	add hl,de
	ld de,l19b5
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l18c8),hl
	ld (l192d),hl
	ld (l1992),hl
	add hl,bc
	ld de,l185b
	ldi
	ld de,l18ac
	ldi
	ld de,l1911
	ldi
	ld de,l1976
	ldi
	ld de,l1847
	ldi
	ldi
	ld (l17f5),hl
	ld a,#01
	ld (l17ea),a
	ld (l17f0),a
	ld a,#ff
	ld (l1b72),a
	ld hl,(l18c8)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l1a3a),hl
	ld (l1a06),hl
	ld (l19d5),hl
	ret
;
.init_music_sound_fx
;
	ld de,l8500
	jr l1e83
.l1edd
	ld hl,#000c
	add hl,de
	ld (l1ef8),hl
	ld hl,#0000
	ld (l1a54),hl
	ret
	push bc
	ld a,#00
	ld ix,l1a4c
	ld (ix+#05),h
	ld h,a
	add hl,hl
.l1ef8 equ $ + 1
	ld bc,#850c
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	ld (ix+#27),a
	ld (ix+#1f),a
	inc hl
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
	pop bc
	ret
	ld a,e
	ld hl,l1a54
	ld (hl),a
	inc hl
	ld (hl),a
	ret
;
; ld de,#8000
; push de
; call #166f
; pop de
;
.init_music		; added by Megachur
;
	ld de,l8000
	jp real_init_music
;
.music_info
	db "Navidad Esp-Soft (2012)(ESP Soft)(John McKlain)",0
	db "StArkos",0

	read "music_end.asm"
