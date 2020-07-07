; Music of Gemini Wing (1989)(Virgin Games)(Barry Leitch)()
; Ripped by Megachur the 10/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GEMINIWI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #184d
FIRST_THEME				equ 1
LAST_THEME				equ 2

	read "music_header.asm"

.l184d
	push bc
	ld c,l
	ld a,h
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
	pop bc
	ret
.l186f
	db #00
	db #00
;
.play_music
.l1871
;
	ld a,(l186f)
	or a
	jp z,l1a4e
	cp #fe
	jp nz,l189c
	add #01
	ret nz
	ld hl,#073f
	ld a,l
	ld (l1a48),a
	call l184d
	ld a,#fe
	ld (l186f),a
	ld hl,l1fb7
	ld (l1939),hl
	ld (l1991),hl
	ld (l19e9),hl
	ret
.l189c
	ld (l1a42),a
	ld hl,l1939
	ld de,l193a
	ld bc,#0053
	ld (hl),#00
	ldir
	ld hl,l1991
	ld de,l1992
	ld bc,#0053
	ld (hl),#00
	ldir
	ld hl,l19e9
	ld de,l19ea
	ld bc,#0053
	ld (hl),#00
	ldir
	xor a
	call l18ea
	ld a,#01
	call l18ea
	ld a,#03
	call l18ea
	xor a
	ld (l186f),a
	ret
.l18d9
	ld a,(l1a42)
	ld (l186f),a
	ld a,(l1a41)
	call l18ea
	xor a
	ld (l186f),a
	ret
.l18ea
	push af
	ld a,(l186f)
	dec a
	ld l,a
	ld h,#00
	add hl,hl
	ld d,h
	ld e,l
	add hl,hl
	add hl,de
	ld de,l2011
	add hl,de
	pop af
	or a
	jr z,l1928
	dec a
	jr z,l1916
	ld de,#0004
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l19e9),de
	ld de,l1938
	ld (l19eb),de
	ret
.l1916
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1991),de
	ld de,l1938
	ld (l1993),de
	ret
.l1928
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1939),de
	ld de,l1938
	ld (l193b),de
	ret
.l193b equ $ + 3
.l193a equ $ + 2
.l1939 equ $ + 1
.l1938
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#4a,#1a,#00
.l1959 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#f7,#00
.l1993 equ $ + 3
.l1992 equ $ + 2
.l1991 equ $ + 1
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#4a,#1a,#00
.l19b1 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#02,#ef,#02
.l19eb equ $ + 3
.l19ea equ $ + 2
.l19e9 equ $ + 1
	db #03,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#4a,#1a,#00
.l1a09 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#04,#df,#04
.l1a47 equ $ + 7
.l1a45 equ $ + 5
.l1a43 equ $ + 3
.l1a42 equ $ + 2
.l1a41 equ $ + 1
	db #05,#00,#00,#00,#00,#00,#00,#00
.l1a49 equ $ + 1
.l1a48
	db #00,#00,#ff,#00
.l1a4c
	ld (bc),a
.l1a4d
	ld (bc),a
.l1a4e
	ld hl,l1a4d
	dec (hl)
	jp p,l1ce3
	xor a
	ld (l1a41),a
	ld iy,l1939
	call l1a81
	ld a,#01
	ld (l1a41),a
	ld iy,l1991
	call l1a81
	ld a,#02
	ld (l1a41),a
	ld iy,l19e9
	call l1a81
	ld a,(l1a4c)
	ld (l1a4d),a
	jp l1ce3
.l1a81
	dec (iy+#06)
	ret p
.l1a85
	ld l,(iy+#02)
	ld h,(iy+#03)
	ld a,h
	cp #ff
	jr z,l1a96
.l1a90
	ld a,h
	or l
	jr nz,l1aa0
	jr l1ac5
.l1a96
	ld a,l
	cp #ff
	jr nz,l1a90
	call l18d9
	jr l1a85
.l1aa0
	ld a,(hl)
	cp #ff
	jr nz,l1ad6
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (iy+#00),l
	ld (iy+#01),h
	ld (iy+#02),e
	ld (iy+#03),d
	ex de,hl
	ld a,h
	cp #ff
	jr z,l1acc
.l1ac1
	ld a,h
	or l
	jr nz,l1aa0
.l1ac5
	ld a,(iy+#04)
	ld (iy+#06),a
	ret
.l1acc
	ld a,l
	cp #ff
	jr nz,l1ac1
	call l18d9
	jr l1a85
.l1ad6
	push hl
	pop ix
	inc hl
	ld (iy+#02),l
	ld (iy+#03),h
	push af
	and #f0
	rrca
	rrca
	rrca
	ld l,a
	ld h,#00
	ld de,l1af3
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	pop af
	jp (hl)
.l1af3
	dw l1c68,l1c68,l1c68,l1c68
	dw l1c68,l1c68,l1c68,l1c68
	dw l1b8d,l1b8d,l1b8d,l1b8d
	dw l1b23,l1b23,l1b1b,l1b13
.l1b13
	and #0f
	ld (l1a4c),a
	jp l1a85
.l1b1b
	and #0f
	ld (iy+#1e),a
	jp l1a85
.l1b23
	and #1f
	add a
	ld l,a
	ld h,#00
	ld de,l2049
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
	inc hl
	ld (iy+#0e),a
	or a
	jr z,l1b55
	push hl
	ld (iy+#0a),#00
	ld (iy+#0b),#00
	srl a
	ld e,a
	ld d,#00
	ld hl,l211d
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (iy+#08),e
	ld (iy+#09),d
	pop hl
.l1b55
	ld a,(hl)
	inc hl
	push hl
	srl a
	ld e,a
	ld d,#00
	ld hl,l205f
	add hl,de
	ld a,(hl)
	ld (iy+#3e),a
	inc hl
	ld a,(hl)
	ld (iy+#3f),a
	pop hl
	ld a,(hl)
	inc hl
	ld (iy+#36),a
	ld a,(hl)
	inc hl
	ld (iy+#38),a
	ld a,(hl)
	inc hl
	ld (iy+#10),a
	ld a,(hl)
	inc hl
	ld (iy+#16),a
	ld (iy+#1c),l
	ld (iy+#1d),h
	inc hl
	ld a,(hl)
	ld (iy+#53),a
	jp l1a85
.l1b8d
	and #3f
	ld (iy+#04),a
	jp l1a85
.l1b95
	ld l,(iy+#02)
	ld h,(iy+#03)
	inc hl
	inc hl
	inc hl
	ld (iy+#02),l
	ld (iy+#03),h
	xor a
	ld (iy+#4e),a
	ld (iy+#4c),#ff
	ld (iy+#22),a
	ld (iy+#23),a
	ld l,(iy+#3e)
	ld h,(iy+#3f)
	ld (iy+#3a),l
	ld (iy+#3b),h
	ld a,(iy+#36)
	ld (iy+#1a),a
	ld (iy+#12),#00
	ld (iy+#14),#01
	ld a,(iy+#16)
	ld (iy+#18),a
	ld a,(iy+#53)
	ld (iy+#4e),a
	ld hl,#0000
	ld (l1a45),hl
	ld e,(ix+#01)
	ld d,#00
	ld a,(l1a4c)
	ld c,a
	ld b,#00
	call #1833
	ld (iy+#46),l
	ld (iy+#47),h
	ld a,(iy+#04)
	sub (ix+#01)
	inc a
	ld e,a
	ld d,#00
	ld a,(l1a4c)
	inc a
	ld c,a
	ld b,#00
	call #1833
	ld (iy+#4f),l
	ld (iy+#50),h
	push hl
	ld a,(iy+#04)
	ld (iy+#06),a
	ld a,(ix+#02)
	call #1800
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (iy+#44),e
	ld (iy+#45),d
	push de
	ld a,(ix+#03)
	call #1800
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (iy+#48),e
	ld (iy+#49),d
	ld a,#01
	ld (l1a49),a
	pop hl
	ex de,hl
	and a
	sbc hl,de
	jr nc,l1c4a
	ld a,#ff
	ld (l1a49),a
	ex de,hl
	ld hl,#0000
	and a
	sbc hl,de
.l1c4a
	ld b,h
	ld c,l
	pop de
	call #1814
	ld (iy+#42),c
	ld (iy+#43),b
	ld a,(l1a49)
	or a
	ret p
	ld hl,#0000
	and a
	sbc hl,bc
	ld (iy+#42),l
	ld (iy+#43),h
	ret
.l1c68
	cp #7f
	jp z,l1b95
	or a
	ret z
	ld c,a
	ld a,(iy+#0e)
	or a
	jr z,l1c84
	ld a,c
	ld (iy+#0c),a
	ld (iy+#0a),#00
	ld (iy+#0b),#00
	jr l1ca4
.l1c84
	ld a,c
	ld (iy+#4a),a
	ld a,c
	and #70
	ld e,a
	ld d,#00
	ld a,c
	and #0f
	add a
	ld l,a
	ld h,#00
	add hl,de
	add hl,de
	ld de,l2384
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (iy+#51),e
	ld (iy+#52),d
.l1ca4
	xor a
	ld (iy+#4e),a
	ld (iy+#22),a
	ld (iy+#23),a
	ld (iy+#3c),a
	ld (iy+#3d),a
	ld l,(iy+#3e)
	ld h,(iy+#3f)
	ld (iy+#3a),l
	ld (iy+#3b),h
	ld l,(iy+#36)
	ld (iy+#1a),l
	ld (iy+#12),#00
	ld (iy+#14),#01
	ld a,(iy+#16)
	ld (iy+#18),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld a,(iy+#53)
	ld (iy+#4e),a
	ret
.l1ce1
	nop
	nop
.l1ce3
	ld a,(l1a48)
	or #38
	and #f8
	ld (l1ce1),a
	ld iy,l1939
	call l1d27
	ld iy,l1991
	call l1d27
	ld iy,l19e9
	call l1d27
	ld a,(l1959)
	ld l,a
	ld h,#08
	call l184d
	inc h
	ld a,(l19b1)
	ld l,a
	call l184d
	inc h
	ld a,(l1a09)
	ld l,a
	call l184d
	ld a,(l1ce1)
	ld (l2010),a
	ld l,a
	ld h,#07
	jp l184d
.l1d27
	ld l,(iy+#1c)
	ld h,(iy+#1d)
	ld e,(iy+#22)
	ld d,(iy+#23)
	add hl,de
	inc hl
	ld a,(hl)
	dec hl
	cp #ff
	jr z,l1d68
	ld a,(hl)
	or a
	jp m,l1d49
	inc de
	ld (iy+#22),e
	ld (iy+#23),d
	jr l1d68
.l1d49
	ld a,(iy+#4e)
	or a
	jr z,l1d54
	dec (iy+#4e)
	jr l1d68
.l1d54
	inc de
	inc de
	inc hl
	inc hl
	ld (iy+#22),e
	ld (iy+#23),d
	inc hl
	ld a,(hl)
	dec hl
	cp #ff
	jr z,l1d68
	ld (iy+#4e),a
.l1d68
	ld a,(hl)
	and #0f
	cp (iy+#1e)
	jr c,l1d73
	ld a,(iy+#1e)
.l1d73
	ld (iy+#20),a
	ld a,(iy+#1a)
	or a
	jr z,l1d90
	dec (iy+#1a)
	ld a,(l1ce1)
	and (iy+#55)
	ld (l1ce1),a
	ld h,#06
	ld l,(iy+#38)
	call l184d
.l1d90
	ld a,(iy+#51)
	ld (iy+#40),a
	ld a,(iy+#52)
	ld (iy+#41),a
	ld a,(iy+#0e)
	or a
	jr z,l1dea
	jp m,l1dd5
	ld l,(iy+#08)
	ld h,(iy+#09)
	ld e,(iy+#0a)
	ld d,(iy+#0b)
	add hl,de
	ld a,(hl)
	cp #80
	jr nz,l1dc2
	and a
	sbc hl,de
	xor a
	ld (iy+#0a),a
	ld (iy+#0b),a
	ld a,(hl)
.l1dc2
	inc (iy+#0a)
	jr nz,l1dca
	inc (iy+#0b)
.l1dca
	add (iy+#0c)
	ld h,#06
	ld l,a
	call l184d
	jr l1ddd
.l1dd5
	ld h,#06
	ld l,(iy+#0c)
	call l184d
.l1ddd
	ld a,(l1ce1)
	or (iy+#54)
	and (iy+#55)
	ld (l1ce1),a
	ret
.l1dea
	ld l,(iy+#3a)
	ld h,(iy+#3b)
	ld a,h
	or l
	jp z,l1ef3
	ld (l1a43),hl
	ld e,(iy+#3c)
	ld d,(iy+#3d)
	add hl,de
	ld e,(hl)
	dec hl
	ld a,e
	cp #82
	jr z,l1e61
	cp #81
	jr z,l1e12
	cp #80
	jp z,l1ea1
	jp l1ead
.l1e12
	ld e,(hl)
	ld l,(iy+#4a)
	ld a,e
	or a
	jp m,l1e29
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,l1e35
	inc l
	inc l
	inc l
	jr l1e35
.l1e29
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,l1e35
	dec l
	dec l
	dec l
.l1e35
	ld a,l
	and #70
	ld c,a
	ld b,#00
	ld a,l
	and #0f
	add a
	ld l,a
	ld h,#00
	add hl,bc
	add hl,bc
	ld de,l2384
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (iy+#40),e
	ld (iy+#41),d
	ld (iy+#51),e
	ld (iy+#52),d
	xor a
	ld (iy+#3a),a
	ld (iy+#3b),a
	jp l1ef3
.l1e61
	ld (iy+#3c),#00
	ld (iy+#3d),#00
	ld e,(hl)
	ld l,(iy+#4a)
	ld a,e
	or a
	jp m,l1e80
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,l1e8c
	inc l
	inc l
	inc l
	jr l1e8c
.l1e80
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,l1e8c
	dec l
	dec l
	dec l
.l1e8c
	ld (iy+#4a),l
	ld hl,(l1a43)
	ld e,(hl)
	ld a,(iy+#40)
	ld (iy+#51),a
	ld a,(iy+#41)
	ld (iy+#52),a
	jr l1ead
.l1ea1
	ld (iy+#3c),#00
	ld (iy+#3d),#00
	ld hl,(l1a43)
	ld e,(hl)
.l1ead
	ld l,(iy+#4a)
	ld a,e
	or a
	jp m,l1ec3
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,l1ecf
	inc l
	inc l
	inc l
	jr l1ecf
.l1ec3
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,l1ecf
	dec l
	dec l
	dec l
.l1ecf
	ld a,l
	and #70
	ld c,a
	ld b,#00
	ld a,l
	and #0f
	add a
	ld l,a
	ld h,#00
	add hl,bc
	add hl,bc
	ld de,l2384
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (iy+#40),e
	ld (iy+#41),d
	inc (iy+#3c)
	jr nz,l1ef3
	inc (iy+#3c)
.l1ef3
	ld a,(iy+#4c)
	or a
	jr z,l1f4e
	ld a,(iy+#46)
	or (iy+#47)
	jr z,l1f0c
	dec (iy+#46)
	jp p,l1f4e
	dec (iy+#47)
	jr l1f4e
.l1f0c
	ld hl,(l1a45)
	inc hl
	ld (l1a45),hl
	ld e,(iy+#42)
	ld d,(iy+#43)
	ld l,(iy+#44)
	ld h,(iy+#45)
	add hl,de
	ld (iy+#44),l
	ld (iy+#45),h
	ld (iy+#40),l
	ld (iy+#41),h
	dec (iy+#4f)
	jp p,l1f4e
	dec (iy+#50)
	jp p,l1f4e
	ld a,(iy+#48)
	ld (iy+#51),a
	ld (iy+#40),a
	ld a,(iy+#49)
	ld (iy+#52),a
	ld (iy+#41),a
	ld (iy+#4c),#00
.l1f4e
	ld a,(iy+#10)
	or a
	jp z,l1fa5
	dec (iy+#18)
	jp nz,l1f8c
	ld a,(iy+#16)
	ld (iy+#18),a
	ld a,(iy+#12)
	add (iy+#14)
	ld (iy+#12),a
	ld a,(iy+#10)
	cp (iy+#12)
	jr nz,l1f7d
	ld a,(iy+#14)
	neg
	ld (iy+#14),a
	ld a,(iy+#10)
.l1f7d
	neg
	cp (iy+#12)
	jr nz,l1f8c
	ld a,(iy+#14)
	neg
	ld (iy+#14),a
.l1f8c
	ld a,(iy+#12)
	or a
	ld d,#00
	jp p,l1f97
	ld d,#ff
.l1f97
	ld e,a
	ld l,(iy+#40)
	ld h,(iy+#41)
	add hl,de
	ld (iy+#40),l
	ld (iy+#41),h
.l1fa5
	ld h,(iy+#56)
	ld l,(iy+#40)
	call l184d
	ld h,(iy+#57)
	ld l,(iy+#41)
	jp l184d
.l1fb7
	db #00,#00,#00,#00,#00,#00
	ld a,#c3
	ld (#0038),a
	ld hl,l1fd6
	ld (#0039),hl
	ld a,#01
;
.init_music
;
	ld (l186f),a
	ld a,(l186f)
	ld (l1fd5),a
	ei
	ret
.l1fd6 equ $ + 1
.l1fd5
	ld bc,#08f5
	push af
	push bc
	push de
	push hl
	exx
	push bc
	push de
	push hl
	push ix
	push iy
	ld b,#f5
	in a,(c)
	rra
	jr nc,l1ff4
	xor a
	ld (l1a47),a
	ld a,#ff
	ld (l200f),a
.l1ff4
	ld hl,l200f
	inc (hl)
	ld a,(hl)
	cp #03
	call z,l1871
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	exx
	pop hl
	pop de
	pop bc
	pop af
	ex af,af'
	pop af
	ei
	reti
.l200f
	inc bc
.l2010
	db #00
.l2011
	db #8e,#24,#96,#24,#a4,#24,#7c,#24
	db #82,#24,#88,#24,#21,#20,#34,#20
	db #67,#65,#6d,#69,#6e,#69,#20,#77
	db #69,#6e,#67,#73,#20,#74,#69,#74
	db #6c,#65,#00,#47,#65,#6d,#69,#6e
	db #69,#20,#57,#69,#6e,#67,#73,#20
	db #48,#69,#73,#63,#6f,#72,#65,#00
.l2049
	db #40,#21,#4d,#21,#58,#21,#7e,#21
	db #a4,#21,#ca,#21,#f0,#21,#16,#22
	db #3a,#22,#60,#22,#86,#22
.l205f
	db #00,#00,#81,#20,#83,#20,#85,#20
	db #89,#20,#8c,#20,#90,#20,#93,#20
	db #98,#20,#9b,#20,#a8,#20,#ad,#20
	db #c6,#20,#d8,#20,#ef,#20,#f2,#20
	db #05,#21,#fb,#82,#00,#80,#10,#10
	db #00,#81,#10,#00,#81,#10,#10,#00
	db #81,#10,#14,#80,#10,#20,#10,#20
	db #80,#10,#00,#81,#01,#00,#00,#00
	db #01,#00,#00,#00,#01,#00,#00,#00
	db #81,#10,#10,#00,#00,#81,#24,#24
	db #00,#00,#20,#20,#00,#00,#1c,#1c
	db #00,#00,#1a,#1a,#00,#00,#18,#18
	db #00,#00,#16,#16,#00,#00,#81,#70
	db #60,#50,#40,#30,#20,#10,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #81,#70,#00,#60,#00,#50,#00,#40
	db #00,#30,#00,#20,#00,#10,#00,#70
	db #60,#50,#40,#30,#20,#10,#00,#82
	db #10,#00,#81,#60,#58,#50,#57,#56
	db #55,#54,#55,#56,#57,#58,#60,#50
	db #40,#30,#20,#10,#00,#82,#00,#02
	db #04,#05,#06,#05,#04,#02,#04,#06
	db #08,#0a,#08,#06,#08,#0a,#14,#1e
	db #14,#0f,#14,#1e,#28,#32
.l211d
	db #3c,#80,#27,#21,#2f,#21,#31,#21
	db #39,#21,#1e,#19,#14,#0f,#0a,#05
	db #00,#80,#00,#80,#00,#05,#0a,#0f
	db #14,#19,#1e,#80,#00,#14,#00,#1e
	db #00,#0a,#80,#00,#04,#01,#14,#00
	db #00,#0f,#0f,#0f,#0f,#0f,#00,#ff
	db #04,#00,#01,#14,#00,#00,#0f,#0a
	db #05,#00,#ff,#00,#10,#01,#03,#01
	db #02,#8f,#02,#8e,#02,#8d,#02,#8c
	db #05,#8b,#05,#8a,#05,#89,#05,#88
	db #05,#87,#05,#86,#05,#85,#05,#84
	db #05,#83,#05,#82,#05,#81,#05,#00
	db #ff,#00,#0c,#00,#00,#03,#00,#8f
	db #14,#8e,#14,#8d,#14,#8c,#14,#8b
	db #14,#8a,#14,#89,#14,#88,#14,#87
	db #14,#86,#14,#85,#14,#84,#14,#83
	db #14,#82,#14,#81,#14,#00,#ff,#00
	db #14,#00,#00,#02,#00,#8f,#14,#8e
	db #14,#8d,#14,#8c,#14,#8b,#14,#8a
	db #14,#89,#14,#88,#14,#87,#14,#86
	db #14,#85,#14,#84,#14,#83,#14,#82
	db #14,#81,#14,#00,#ff,#00,#00,#01
	db #01,#01,#02,#8f,#14,#8e,#14,#8d
	db #14,#8c,#14,#8b,#14,#8a,#14,#89
	db #14,#88,#14,#87,#14,#86,#14,#85
	db #14,#84,#14,#83,#14,#82,#14,#81
	db #14,#00,#ff,#00,#14,#02,#03,#01
	db #04,#8f,#0a,#8e,#0a,#8d,#0a,#8c
	db #0a,#8b,#0a,#8a,#0a,#89,#0a,#88
	db #0a,#87,#0a,#86,#0a,#85,#0a,#84
	db #0a,#83,#0a,#82,#0a,#81,#0a,#00
	db #ff,#00,#00,#00,#00,#00,#00,#8f
	db #14,#8d,#0a,#8c,#0a,#8b,#0a,#8a
	db #05,#89,#05,#88,#05,#87,#05,#86
	db #05,#85,#04,#84,#03,#83,#02,#82
	db #02,#81,#02,#00,#ff,#00,#20,#02
	db #03,#02,#00,#8f,#0a,#8e,#0a,#8d
	db #0a,#8c,#0a,#8b,#0a,#8a,#0a,#89
	db #0a,#88,#0a,#87,#0a,#86,#0a,#85
	db #0a,#84,#0a,#83,#0a,#82,#0a,#81
	db #0a,#00,#ff,#00,#00,#01,#0f,#02
	db #00,#8f,#0a,#8e,#0a,#8d,#0a,#8c
	db #0a,#8b,#0a,#8a,#0a,#89,#0a,#88
	db #0a,#87,#0a,#86,#0a,#85,#0a,#84
	db #0a,#83,#0a,#82,#0a,#81,#0a,#00
	db #ff,#00,#00,#00,#00,#00,#00,#80
	db #ff,#00,#ff,#18,#0e,#4d,#0d,#8e
	db #0c,#da,#0b,#2f,#0b,#8f,#0a,#f7
	db #09,#68,#09,#e1,#08,#61,#08,#e9
	db #07,#00,#00,#00,#00,#00,#00,#00
	db #00,#77,#07,#0c,#07,#a7,#06,#47
	db #06,#ed,#05,#98,#05,#47,#05,#fc
	db #04,#b4,#04,#70,#04,#31,#04,#f4
	db #03,#00,#00,#00,#00,#00,#00,#00
	db #00,#bc,#03,#86,#03,#53,#03,#24
	db #03,#f6,#02,#cc,#02,#a4,#02,#7e
	db #02,#5a,#02,#38,#02,#18,#02,#fa
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#de,#01,#c3,#01,#aa,#01,#92
	db #01,#7b,#01,#66,#01,#52,#01,#3f
	db #01,#2d,#01,#1c,#01,#0c,#01,#fd
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#ef,#00,#e1,#00,#d5,#00,#c9
	db #00,#be,#00,#b3,#00,#a9,#00,#9f
	db #00,#96,#00,#8e,#00,#86,#00,#7f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#77,#00,#71,#00,#6a,#00,#64
	db #00,#5f,#00,#59,#00,#54,#00,#50
	db #00,#4b,#00,#47,#00,#43,#00,#3f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#3c,#00,#38,#00,#35,#00,#32
	db #00,#2f,#00,#2d,#00,#2a,#00,#28
	db #00,#26,#00,#24,#00,#22,#00,#20
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#1e,#00,#1c,#00,#1b,#00,#19
	db #00,#18,#00,#16,#00,#15,#00,#14
	db #00,#13,#00,#12,#00,#11,#00
.l2384
	db #10,#00,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
	db #b2,#24,#83,#27,#00,#00,#b2,#24
	db #cb,#27,#00,#00,#b2,#24,#02,#28
	db #00,#00,#b2,#24,#b4,#24,#15,#26
	db #00,#00,#b2,#24,#df,#25,#94,#26
	db #94,#26,#94,#26,#d7,#26,#00,#00
	db #b2,#24,#75,#25,#06,#27,#06,#27
	db #06,#27,#5c,#27,#00,#00,#ef,#ff
	db #f5,#c2,#80,#40,#47,#85,#40,#82
	db #50,#47,#81,#40,#80,#42,#49,#85
	db #42,#82,#52,#49,#81,#42,#80,#44
	db #4b,#85,#44,#82,#54,#4b,#81,#44
	db #80,#45,#50,#85,#45,#80,#45,#50
	db #85,#45,#80,#45,#50,#45,#40,#80
	db #45,#50,#45,#40,#80,#45,#50,#45
	db #40,#80,#45,#50,#45,#40,#80,#47
	db #52,#47,#42,#80,#47,#52,#47,#42
	db #80,#47,#52,#47,#42,#80,#47,#52
	db #47,#42,#80,#49,#54,#49,#44,#80
	db #49,#54,#49,#44,#80,#49,#54,#49
	db #44,#80,#49,#54,#49,#44,#80,#49
	db #54,#49,#44,#80,#49,#54,#49,#44
	db #80,#49,#54,#49,#44,#80,#49,#54
	db #49,#44,#80,#49,#54,#49,#44,#80
	db #47,#52,#47,#42,#80,#45,#50,#45
	db #40,#80,#44,#4b,#44,#2b,#81,#59
	db #80,#49,#49,#83,#49,#80,#59,#54
	db #50,#49,#44,#49,#44,#40,#81,#57
	db #80,#47,#47,#83,#47,#80,#57,#47
	db #52,#57,#52,#4b,#47,#42,#81,#55
	db #80,#45,#45,#83,#45,#80,#55,#54
	db #50,#49,#50,#54,#50,#45,#9f,#4b
	db #ff,#ca,#bf,#20,#c3,#81,#25,#25
	db #25,#25,#25,#25,#25,#25,#27,#27
	db #27,#27,#27,#27,#27,#27,#29,#29
	db #29,#29,#29,#29,#29,#29,#29,#29
	db #29,#29,#29,#29,#29,#29,#29,#24
	db #27,#22,#25,#20,#24,#1b,#81,#29
	db #80,#19,#19,#83,#19,#82,#29,#24
	db #81,#19,#81,#27,#80,#17,#17,#83
	db #17,#82,#27,#22,#81,#17,#81,#25
	db #80,#15,#15,#83,#15,#82,#25,#20
	db #81,#15,#82,#24,#24,#80,#24,#24
	db #82,#14,#14,#80,#14,#14,#82,#24
	db #24,#80,#24,#24,#82,#24,#24,#80
	db #24,#2b,#ff,#ca,#bf,#20,#c4,#87
	db #50,#83,#47,#50,#87,#52,#83,#47
	db #52,#87,#50,#83,#49,#50,#8f,#59
	db #81,#59,#54,#57,#52,#55,#50,#54
	db #4b,#87,#49,#82,#50,#54,#81,#59
	db #87,#57,#82,#47,#52,#81,#57,#87
	db #55,#82,#45,#50,#81,#55,#9f,#54
	db #ff,#c4,#87,#54,#49,#57,#52,#55
	db #83,#59,#55,#87,#54,#80,#54,#52
	db #50,#4b,#50,#4b,#49,#4b,#83,#49
	db #44,#80,#49,#44,#49,#50,#4b,#49
	db #47,#4b,#83,#50,#4b,#80,#5b,#57
	db #52,#57,#52,#4b,#47,#4b,#87,#50
	db #83,#55,#50,#80,#54,#4b,#44,#54
	db #4b,#44,#54,#4b,#54,#5b,#57,#56
	db #57,#56,#54,#56,#8b,#54,#81,#54
	db #59,#8b,#5b,#80,#59,#57,#54,#57
	db #87,#54,#83,#50,#55,#80,#54,#52
	db #50,#4b,#50,#4b,#49,#4b,#50,#4b
	db #49,#4b,#50,#52,#54,#58,#93,#59
	db #80,#49,#4a,#4b,#50,#51,#52,#53
	db #54,#55,#56,#57,#58,#5b,#85,#59
	db #54,#83,#4b,#83,#4b,#bf,#49,#ff
	db #c2,#80,#59,#50,#54,#49,#50,#54
	db #49,#50,#49,#50,#54,#49,#50,#54
	db #49,#50,#47,#4b,#52,#47,#4b,#52
	db #47,#4b,#47,#4b,#52,#47,#4b,#52
	db #47,#4b,#45,#49,#50,#45,#49,#50
	db #45,#49,#45,#49,#50,#45,#49,#50
	db #45,#49,#44,#48,#4b,#44,#48,#4b
	db #44,#48,#44,#48,#4b,#44,#48,#4b
	db #44,#48,#ff,#c2,#80,#49,#59,#83
	db #59,#81,#59,#82,#59,#54,#81,#4b
	db #83,#49,#80,#49,#4a,#4b,#50,#51
	db #52,#53,#54,#55,#56,#57,#58,#5b
	db #82,#59,#59,#81,#50,#82,#50,#80
	db #50,#4b,#50,#4b,#50,#83,#49,#bf
	db #49,#ff,#c3,#80,#29,#81,#19,#80
	db #29,#81,#19,#80,#29,#19,#29,#81
	db #19,#80,#29,#81,#19,#80,#29,#19
	db #80,#27,#81,#17,#80,#27,#81,#17
	db #80,#27,#17,#27,#81,#17,#80,#27
	db #81,#17,#80,#27,#17,#80,#25,#81
	db #15,#80,#25,#81,#15,#80,#25,#15
	db #25,#81,#15,#80,#25,#81,#15,#80
	db #25,#15,#80,#24,#81,#14,#80,#24
	db #81,#14,#80,#24,#14,#2b,#81,#1b
	db #80,#2b,#81,#1b,#80,#2b,#1b,#ff
	db #c3,#80,#29,#29,#83,#29,#81,#29
	db #82,#29,#24,#81,#1b,#83,#19,#80
	db #19,#1a,#1b,#20,#21,#22,#23,#24
	db #25,#26,#27,#28,#2b,#85,#29,#20
	db #83,#1b,#83,#19,#bf,#19,#ff,#f8
	db #c5,#84,#55,#80,#51,#53,#55,#83
	db #56,#55,#84,#53,#80,#50,#51,#53
	db #87,#55,#83,#51,#55,#85,#53,#80
	db #51,#50,#83,#51,#55,#87,#53,#84
	db #55,#80,#48,#51,#55,#83,#56,#55
	db #53,#82,#58,#80,#56,#83,#55,#53
	db #85,#51,#81,#55,#85,#53,#80,#51
	db #50,#84,#51,#80,#4a,#50,#51,#81
	db #55,#53,#51,#53,#bf,#51,#ff,#ca
	db #b7,#20,#c0,#82,#30,#80,#30,#81
	db #30,#80,#30,#30,#30,#c5,#84,#55
	db #80,#48,#51,#55,#83,#56,#55,#53
	db #82,#58,#80,#56,#83,#55,#53,#85
	db #51,#81,#55,#85,#53,#80,#51,#50
	db #84,#51,#80,#4a,#50,#51,#81,#55
	db #53,#51,#53,#be,#51,#ff,#c3,#83
	db #21,#21,#26,#26,#23,#23,#21,#81
	db #21,#20,#83,#1a,#1a,#18,#18,#16
	db #16,#81,#18,#18,#1a,#20,#82,#21
	db #80,#21,#81,#18,#21,#82,#26,#80
	db #26,#81,#21,#26,#82,#23,#80,#23
	db #81,#18,#23,#83,#21,#81,#21,#20
	db #82,#1a,#80,#1a,#81,#15,#1a,#82
	db #18,#80,#18,#81,#13,#18,#82,#16
	db #80,#16,#81,#11,#16,#82,#18,#80
	db #18,#81,#13,#20,#83,#21,#26,#25
	db #23,#af,#25,#ff,#08,#20,#06,#40
	db #07,#40,#07,#20,#07,#04,#06,#20
	db #06,#10,#05,#10,#04,#08,#05,#20
	db #04,#20,#04,#10,#04,#40,#05,#40
	db #04,#04,#03,#08,#08,#08,#06,#04
	db #07,#10,#06,#08,#05,#04,#06,#80
	db #07,#08,#07,#80,#05,#08,#08,#80
	db #3a,#f6,#28,#1e,#41,#83,#21,#ff
	db #28,#ed,#5b,#07,#29,#19,#3e,#40
	db #77,#21,#fa,#28,#22,#f2,#54,#cd
	db #96,#54,#3e,#00,#32,#f6,#28,#21
	db #58,#28,#22,#f7,#28,#2a,#f7,#28
	db #7e,#32,#c2,#28,#23,#7e,#32,#c7
	db #28,#23,#22,#f7,#28,#3e,#02,#cd
	db #dc,#51,#e6,#04,#28,#10,#3a,#f6
	db #28,#3c,#32,#f6,#28,#fe,#1a,#20
	db #dc,#af,#32,#f9,#28,#c9,#3a,#f6
	db #28,#1e,#41,#83,#21,#ff,#28,#ed
	db #5b,#07,#29,#19,#77,#32,#f9,#28
	db #21,#fa,#28,#22,#f2,#54,#cd,#96
	db #54,#c9,#00,#00,#00,#00,#08,#0c
	db #0c,#01,#07,#41,#42,#43,#44,#45
	db #46,#47,#48,#00,#00,#f3,#cd,#f1
	db #49,#21,#c7,#29,#22,#f2,#54,#cd
	db #96,#54,#cd,#96,#54,#3e,#08,#cd
	db #dc,#51,#e6,#04,#28,#1d,#cd,#8c
	db #28,#3a,#f9,#28,#b7,#28,#ee,#cd
	db #43,#29,#3a,#07,#29,#3c,#e6,#07
	db #32,#07,#29,#06,#0c,#cd,#8a,#56
	db #c3,#19,#29,#cd,#f1,#49,#c9,#af
	db #32,#85,#29,#2a,#85,#29,#29,#29
	db #29,#11,#0c,#79,#19,#eb,#21,#ff
	db #28,#06,#00,#7e,#4f,#1a,#b9,#20
	db #0a,#04,#13,#23,#78,#fe,#08,#28
	db #0e,#18,#f0,#3a,#85,#29,#3c,#32
	db #85,#29,#fe,#08,#20,#d5,#c9,#3a
	db #85,#29,#3c,#32,#42,#58,#21,#0d
	db #56,#22,#f2,#54,#e1,#c3,#3f,#29
	db #c9,#00,#00,#4c,#45,#56,#45,#4c
	db #4f,#4e,#45,#4c,#45,#56,#45,#4c
	db #54,#57,#4f,#4c,#45,#56,#45,#4c
	db #54,#48,#52,#4c,#45,#56,#45,#4c
	db #46,#4f,#55,#4c,#45,#56,#45,#4c
	db #46,#49,#56,#4c,#45,#56,#45,#4c
	db #53,#49,#58,#4c,#45,#56,#45,#4c
	db #53,#45,#56,#4c,#45,#56,#45,#4c
	db #45,#49,#47,#20,#00,#02,#01,#03
	db #54,#59,#50,#45,#20,#50,#41,#53
	db #53,#57,#4f,#52,#44,#20,#46,#4f
	db #52,#20,#4c,#45,#56,#45,#4c,#20
	db #52,#45,#51,#55,#49,#52,#45,#44
	db #14,#06,#14,#01,#03,#50,#52,#45
	db #53,#53,#20,#42,#52,#45,#41,#4b
	db #20,#54,#4f,#20,#45,#58,#49,#54
	db #21,#00,#00
;
; play #1871
;
;
.music_info
	db "Gemini Wing (1989)(Virgin Games)(Barry Leitch)",0
	db "",0

	read "music_end.asm"
