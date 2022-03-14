; Music of One (1986)(Titus)()()
; Ripped by Megachur the 23/08/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ONE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #188c

	read "music_header.asm"

.l188c
	ld a,(l1abd)
	ld b,#03
.l1891
	rra
	push af
	push bc
	jp nc,l18b7
.l1897
	pop bc
	pop af
	djnz l1891
	ld a,(l1abc)
	or a
	ret z
;
.init_music
;
	ld hl,l1b48	; reinit music ?
	ld (l19bc),hl
	ld hl,l1ba6
	ld (l19be),hl
	ld hl,l1c08
	ld (l19c0),hl
	xor a
	ld (l1abc),a
	ret
.l18b7
	ld a,#03
	sub b
	push af
	sla a
	ld hl,l19bc
	add l
	ld l,a
	ld a,#00
	adc h
	ld h,a
	push hl
	pop ix
	ld l,(ix+#00)
	ld h,(ix+#01)
.l18cf
	ld a,(hl)
	inc hl
	or a
	jp m,l1987
	push af
	and #0f
	sla a
	ld bc,l19c2
	add c
	ld c,a
	ld a,#00
	adc b
	ld b,a
	ld a,(bc)
	ld e,a
	inc bc
	ld a,(bc)
	ld d,a
	pop af
	srl a
	srl a
	srl a
	srl a
	and #07
	jr z,l18fc
	ld b,a
.l18f6
	srl d
	rr e
	djnz l18f6
.l18fc
	pop af
	push af
	sla a
	sla a
	ld bc,l1acf
	add c
	ld c,a
	ld a,#00
	adc b
	ld b,a
	ld a,e
	ld (bc),a
	inc bc
	ld a,d
	ld (bc),a
	inc bc
	ld a,(hl)
	inc hl
	push af
	srl a
	srl a
	srl a
	srl a
	bit 3,a
	jp nz,l19ec
	res 3,a
	sla a
	ld (bc),a
.l1926
	pop af
	and #0f
	bit 3,a
	push af
	res 3,a
	ld de,l19da
	ld b,a
	ld a,(de)
	or a
	jr z,l193b
.l1936
	srl a
	djnz l1936
	dec a
.l193b
	ld c,a
	pop af
	jp z,l1945
	ld a,c
	srl c
	add c
	ld c,a
.l1945
	ld de,l1ae0
	pop af
	ld b,a
	add e
	ld e,a
	ld a,#00
	adc d
	ld d,a
	ld a,c
	ld (de),a
	ld a,b
	sla a
	sla a
	add b
	ld de,l19db
	add e
	ld e,a
	ld a,#00
	adc d
	ld d,a
	ld a,(de)
	or a
	jr z,l196a
	dec a
	ld (de),a
	jp l197e
.l196a
	inc de
	inc de
	ld a,(de)
	or a
	jr z,l197e
	dec a
	ld (de),a
	dec de
	ld a,(de)
	dec de
	ld (de),a
	inc de
	inc de
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
.l197e
	ld (ix+#00),l
	ld (ix+#01),h
	jp l1897
.l1987
	res 7,a
	or a
	jp nz,l1996
	ld a,#01
	ld (l1abc),a
	pop af
	jp l1897
.l1996
	ld de,l19db
	ld c,a
	pop af
	push af
	ld b,a
	sla a
	sla a
	add b
	add e
	ld e,a
	ld a,#00
	adc d
	ld d,a
	ld a,c
	ld (de),a
	inc de
	ld (de),a
	inc de
	ld a,(hl)
	inc hl
	ld (de),a
	inc de
	ld a,l
	ld (de),a
	inc de
	ld a,h
	ld (de),a
	jp l18cf
	ld a,#10
	ld (bc),a
.l19bc
	ld d,b
	dec de
.l19be
	or d
	dec de
.l19c0
	jr l19de
.l19c2
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
.l19de equ $ + 4
.l19db equ $ + 1
.l19da
	dw #0050,#0017,l1b74,#1400
	dw #dc00,#001b,#0021,l1c4e
.l19ea
	dw #0080
.l19ec
	push hl
	ld hl,l1add
	ld (hl),a
	dec hl
	ld (hl),#05
	dec hl
	ld (hl),#00
	ld a,#01
	ld (l1ae3),a
	pop hl
	ld a,#10
	ld (bc),a
	jp l1926
;
.real_play_music
.l1a03
;
	ld a,#07
	ld c,#38
	call l1a97
	ld hl,l1ae0
	ld bc,#0801
	ld a,(l1abd)
	ld d,a
.l1a14
	ld a,(hl)
	or a
	jp z,l1a2a
	srl d
	jp nc,l1a2f
	dec a
	ld (hl),a
	or a
	jp z,l1a71
.l1a24
	inc hl
	sla c
	djnz l1a14
	ret
.l1a2a
	srl d
	jp l1a24
.l1a2f
	push bc
	push de
	push hl
	ld a,(l1abd)
	or c
	ld (l1abd),a
	ld a,#08
	sub b
	cp #04
	push af
	sla a
	sla a
	ld b,a
	ld hl,l1acf
	add l
	ld l,a
	ld a,#00
	add h
	ld h,a
	ld a,b
	ld de,l1abe
	add e
	ld e,a
	ld a,#00
	add d
	ld d,a
	pop af
	jp nc,l1a8e
	ld b,#03
.l1a5d
	ld a,(hl)
	ld c,a
	ld a,(de)
	inc hl
	inc de
	push af
	push bc
	call l1a97
	pop bc
	pop af
	djnz l1a5d
.l1a6b
	pop hl
	pop de
	pop bc
	jp l1a24
.l1a71
	push bc
	push de
	push hl
	ld a,c
	cpl
	ld hl,l1abd
	and (hl)
	ld (hl),a
	ld a,#10
	sub b
	cp #0b
	jp nc,l1a88
	ld c,#00
	call l1a97
.l1a88
	pop hl
	pop de
	pop bc
	jp l1a24
.l1a8e
	ld a,(hl)
	ld c,a
	ld a,(de)
	call l1a97
	jp l1a6b
.l1a97
	push bc
	ld bc,#f782
	out (c),c
	pop bc
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
.l1abe equ $ + 2
.l1abd equ $ + 1
.l1abc
	db #00,#07,#00,#01,#08,#00,#02,#03
	db #09,#00,#04,#05,#0a,#00,#0b,#0c
.l1acf equ $ + 3
	db #0d,#00,#06,#3e,#01,#08,#00,#7d
	db #02,#08,#00,#3e,#01,#08,#00,#00
	db #00
.l1ae3 equ $ + 6
.l1ae0 equ $ + 3
.l1add
	db #00,#00,#00,#17,#17,#17,#00,#00
	db #00,#00,#00
; .l1ae8		; keyboard test !
	ld a,(l1b47)
	or a
	jr nz,l1b28
	ld bc,#f782
	out (c),c
	ld bc,#f40e
	out (c),c
	ld b,#f6
	in a,(c)
	and #3f
	ld c,a
	or #c0
	out (c),a
	out (c),c
	ld bc,#f792
	out (c),c
	ld c,#09
.l1b0c
	ld b,#f6
	in a,(c)
	and #30
	or c
	or #40
	out (c),a
	ld b,#f4
	in a,(c)
	cpl
	or a
	jr nz,l1b28
	dec c
	jp p,l1b0c
	xor a
	ld (l1b47),a
	ret
.l1b28
	ld a,#01
	ld (l1b47),a
	ld ix,l19bc
	ld hl,l19ea
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#02),l
	ld (ix+#03),h
	ld (ix+#04),l
	ld (ix+#05),h
	ret
.l1b48 equ $ + 1
.l1b47
	db #00,#30,#4a,#37,#4a,#40,#4a,#37
	db #4a,#30,#4a,#35,#4a,#40,#4a,#30
	db #42,#40,#03,#30,#4a,#37,#4a,#40
	db #4a,#37,#4a,#30,#43,#32,#43,#34
	db #43,#35,#42,#37,#43,#30,#4a,#30
.l1b74 equ $ + 5
	db #42,#40,#03,#97,#01,#37,#4a,#32
	db #4a,#34,#4a,#36,#4a,#37,#4a,#39
	db #42,#32,#43,#37,#4a,#37,#42,#40
	db #03,#35,#42,#39,#43,#40,#42,#3b
	db #43,#40,#4a,#37,#4a,#30,#43,#32
	db #43,#34,#43,#35,#42,#37,#43,#30
.l1ba6 equ $ + 7
	db #4a,#30,#42,#30,#03,#80,#00,#40
	db #42,#40,#43,#3b,#42,#3b,#43,#30
	db #4a,#27,#4a,#40,#42,#3b,#43,#39
	db #42,#40,#43,#44,#4a,#44,#42,#40
	db #03,#40,#42,#40,#43,#3b,#42,#3b
	db #43,#30,#4a,#27,#4a,#37,#42,#37
	db #43,#39,#42,#35,#43,#34,#4a,#34
	db #42,#40,#03,#94,#01,#3b,#4a,#40
	db #4a,#3b,#4a,#39,#4a,#3b,#4a,#40
	db #4a,#3b,#4a,#3b,#42,#40,#03,#40
	db #4a,#40,#42,#32,#43,#30,#4a,#27
	db #4a,#37,#42,#37,#43,#39,#42,#35
	db #43,#34,#4a,#34,#42,#40,#03,#80
.l1c08 equ $ + 1
	db #00,#44,#43,#47,#43,#44,#43,#42
	db #43,#45,#43,#42,#43,#40,#4a,#37
	db #4a,#44,#43,#44,#43,#44,#43,#45
	db #43,#47,#43,#49,#43,#47,#4a,#47
	db #42,#40,#03,#44,#43,#47,#43,#44
	db #43,#42,#43,#45,#43,#42,#43,#40
	db #4a,#37,#4a,#44,#43,#42,#43,#40
	db #43,#42,#43,#39,#43,#3b,#43,#40
.l1c4e equ $ + 7
	db #4a,#40,#42,#40,#03,#a1,#01,#42
	db #43,#42,#43,#42,#43,#42,#43,#44
	db #43,#46,#43,#47,#4a,#42,#4a,#47
	db #43,#47,#43,#47,#43,#46,#43,#47
	db #43,#49,#43,#47,#4a,#47,#42,#40
	db #03,#49,#43,#47,#43,#45,#43,#44
	db #43,#44,#43,#42,#43,#40,#4a,#37
	db #4a,#44,#43,#42,#43,#40,#43,#42
	db #43,#39,#43,#3b,#43,#40,#4a,#40
	db #42,#40,#03,#80,#00,#24,#00,#03
	db #07,#00,#aa,#00,#3f,#00,#c0,#00
	db #10,#00,#02,#00,#41,#09,#2a,#52
	db #e5,#02,#04,#27,#ff,#00,#ae,#23
	db #f9,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80
; #1827
;	ld (#1889),sp
;	ld sp,#1887
;	push af
;	push bc
;	push de
;	push hl
;	push ix
;	push iy
;	ld a,(#188b)
;	inc a
;	cp #06
;	jr nz,l183f
;	xor a
;.l183f
;	ld (#188b),a
;	jr nz,l1850
;	call #1a03	; play music
;	call #1a03	; play music
;	call #188c	; play music
;	call #1ae8
;.l1850
;	pop iy
;	pop ix
;	pop hl
;	pop de
;	pop bc
;	pop af
;	ld sp,(#1889)
;	ei
;	reti
;
.play_music
;
	call real_play_music
	call real_play_music
	jp l188c
;
.music_info
	db "One (1986)(Titus)()",0
	db "",0

	read "music_end.asm"
