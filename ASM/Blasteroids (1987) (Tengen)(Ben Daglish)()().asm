; Music of Blasteroids (1987) (Tengen)(Ben Daglish)()()
; Ripped by Megachur the 08/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BLASTERO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #9800
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

	jp l9807
	jp l980e
.l9806
.music_end
	db #00
.l9807
	ld a,#01
	ld e,a
	call l9c2f
	ret
.l980e
	ld e,a
	ld a,c
	ld (l9a8b),a
	call l9cb7
	ret
	db #00
.l9818
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04d4,#0470,#0431,#03f4
	dw #03dc,#0386,#0353,#0324
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
	dw #001e,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
.l98c3 equ $ + 3
.l98c2 equ $ + 2
	db #18,#00,#3f,#fe,#f7,#09
.l98c8 equ $ + 2
.l98c7 equ $ + 1
.l98c6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l98d5 equ $ + 7
.l98d4 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#fd
.l98da equ $ + 4
.l98d9 equ $ + 3
.l98d8 equ $ + 2
	db #ef,#12,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l98ec equ $ + 6
.l98eb equ $ + 5
.l98ea equ $ + 4
.l98e7 equ $ + 1
.l98e6
	db #00,#fb,#df,#24,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l98f9 equ $ + 3
.l98f8 equ $ + 2
	db #00,#00,#00,#00
.l98fa
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
	jr nz,l991e
	ld a,#01
.l991e
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(l98c2)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,l9947
	and (ix+#00)
.l9947
	bit 1,c
	jr z,l994e
	and (ix+#01)
.l994e
	ld (l98c2),a
	bit 2,c
	jr nz,l995f
	ld hl,l9abe
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l995f
	call l9b76
	ld a,(iy+#00)
	ld c,#0d
	call l9b8d
	ld a,(iy+#04)
	ld c,#0b
	call l9b8d
	inc c
	xor a
	call l9b8d
	ld (ix+#05),#ff
	jp l9b82
.l997e
	call l9b76
	ld c,#07
	ld a,(l98c2)
	or #3f
	ld (l98c2),a
	call l9b8d
	xor a
	inc c
	call l9b8d
	inc c
	call l9b8d
	inc c
	call l9b8d
	ld a,#01
	inc c
	call l9b8d
	inc c
	xor a
	call l9b8d
	inc c
	call l9b8d
	ld (l98d4),a
	ld (l98e6),a
	ld (l98f8),a
	jp l9b82
.l99b6
	ld a,(l98c2)
	and #3f
	cp #3f
	ret z
	ld ix,l98c3
	call l9a8c
	ld ix,l98d5
	call l9a8c
	ld ix,l98e7
	call l9a8c
	call l9b76
	ld ix,l98c3
	ld c,#07
	ld a,(l98c2)
	call l9b8d
	ld c,#00
	ld a,(l98c6)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,l99f4
	ld (l98f9),a
.l99f4
	call l9b8d
	inc c
	ld a,(l98c7)
	adc (ix+#0a)
	call l9b8d
	inc c
	ld a,(l98d8)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,l9a12
	ld (l98f9),a
.l9a12
	call l9b8d
	inc c
	ld a,(l98d9)
	adc (ix+#1c)
	call l9b8d
	inc c
	ld a,(l98ea)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,l9a30
	ld (l98f9),a
.l9a30
	call l9b8d
	inc c
	ld a,(l98eb)
	adc (ix+#2e)
	call l9b8d
	inc c
	ld a,(l98f9)
	rrca
	rrca
	rrca
	call l9b8d
	ld c,#08
	ld a,#7f
	ld d,a
	ld a,(l98c8)
	cp d
	jr c,l9a53
	ld a,d
.l9a53
	srl a
	srl a
	srl a
	push de
	ld d,#c0
	call l9b8d
	pop de
	inc c
	ld a,(l98da)
	cp d
	jr c,l9a68
	ld a,d
.l9a68
	srl a
	srl a
	srl a
	push de
	ld d,#c0
	call l9b8d
	pop de
	inc c
	ld a,(l98ec)
	cp d
	jr c,l9a7d
	ld a,d
.l9a7d
	srl a
	srl a
	srl a
	ld d,#c0
	call l9b8d
	jp l9b82
.l9a8b
	db #00
.l9a8c
	ld a,(l98c2)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l9aad
	cp #ff
	jr z,l9aad
	dec (ix+#06)
.l9aad
	call l9b34
	bit 2,(iy+#09)
	jp nz,l9b2d
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.l9abe
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l9acd
	ld (ix+#05),a
	ret
.l9acd
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l9add
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l9add
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l9aef
	cp (iy+#02)
	jr c,l9aef
	ld (ix+#05),a
	ret
.l9aef
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l9aff
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l9aff
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l9b0e
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l9b0e
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l9b1b
	ld (ix+#05),a
	ret
.l9b1b
	ld (ix+#05),#00
	ld a,(l98c2)
	or (ix+#02)
	ld (l98c2),a
	res 7,(ix+#11)
	ret
.l9b2d
	ld a,(ix+#06)
	and a
	ret nz
.l9b33 equ $ + 1
	jr l9b1b
.l9b34
	ld a,(ix+#07)
	and a
	jr z,l9b41
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.l9b41
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
	jp p,l9b65
	ld (ix+#07),#ff
	ret
.l9b65
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
.l9b76
	ld bc,#f782
	out (c),c
	ld de,#c000
	ld hl,#f680
	ret
.l9b82
	ld bc,#f40e
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ret
.l9b8d
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
	ret
	jp l9c2f	; init
	jp l9cb7	; play
	jp l9bb0	; init sound effects
;
.stop_music
;
	xor a
	ld (l9806),a
	jp l997e
.l9bb0
	di
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,la253
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,l98c3
	call l98fa
	set 7,(ix+#11)
	ei
	ret
.l9bdf equ $ + 7
.l9bd9 equ $ + 1
.l9bd8
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9be7 equ $ + 7
.l9be5 equ $ + 5
.l9be4 equ $ + 4
.l9be3 equ $ + 3
.l9be2 equ $ + 2
.l9be1 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9bee equ $ + 6
.l9bed equ $ + 5
	db #00,#00,#00,#00,#00,#08,#00,#00
.l9bf7 equ $ + 7
.l9bf6 equ $ + 6
.l9bf4 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9bfc equ $ + 4
.l9bfa equ $ + 2
.l9bf9 equ $ + 1
.l9bf8
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9c03 equ $ + 3
.l9c02 equ $ + 2
	db #00,#00,#10,#00,#00,#00,#00,#00
.l9c0f equ $ + 7
.l9c0e equ $ + 6
.l9c0d equ $ + 5
.l9c0c equ $ + 4
.l9c0b equ $ + 3
.l9c09 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9c17 equ $ + 7
.l9c11 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
.init_music
.l9c2f
;
	push af			; theme a=0,1,
	call l997e
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,la183
	add l
	ld l,a
	jr nc,l9c40
	inc h
.l9c40
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l9bd9),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l9bee),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l9c03),de
	xor a
	ld (l9be2),a
	ld (l9bf7),a
	ld (l9c0c),a
	ld (l9be7),a
	ld (l9bfc),a
	ld (l9c11),a
	cpl
	ld (l9be3),a
	ld (l9bf8),a
	ld (l9c0d),a
	ld a,#01
	ld (l9be1),a
	ld (l9bf6),a
	ld (l9c0b),a
	ld (l9be4),a
	ld (l9bf9),a
	ld (l9c0e),a
	ld hl,l9c17
	ld bc,#030a
.l9c8f
	xor a
.l9c90
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l9c90
	djnz l9c8f
	ld hl,la1eb
	ld (l9bdf),hl
	ld (l9bf4),hl
	ld (l9c09),hl
	ld a,#ff
	ld (l9be5),a
	ld (l9bfa),a
	ld (l9c0f),a
	ld (l9806),a
	ret
;
.play_music
.l9cb7
;
	call l99b6
	ld a,(l9806)
	and a
	ret z
	ld a,(l9be5)
	ld hl,l9bfa
	or (hl)
	ld hl,l9c0f
	or (hl)
	ld (l9806),a
	jr nz,l9ce1
	xor a
	ld (l9806),a
	ld a,(l98c2)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l9806),a
	ret
.l9ce1
	ld iy,l9bd8
	ld ix,l98c3
	call l9cff
	ld iy,l9bed
	ld ix,l98d5
	call l9cff
	ld iy,l9c02
	ld ix,l98e7
.l9cff
	call l9e40
	ld a,(iy+#0b)
	and a
	jr z,l9d84
.l9d08
	dec (iy+#09)
	jr z,l9d1f
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l9d84
.l9d1f
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l9d29
	ld a,(hl)
	cp #80
	jr c,l9d64
	cp #fe
	jr nz,l9d3b
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l9d29
.l9d3b
	cp #ff
	jr nz,l9d44
	xor a
	ld (iy+#0d),a
	ret
.l9d44
	cp #c0
	jr nc,l9d51
	and #1f
	ld (iy+#09),a
	inc hl
	jp l9d29
.l9d51
	and #07
	add (iy+#00)
	ld de,l9c17
	add e
	ld e,a
	jr nc,l9d5e
	inc d
.l9d5e
	inc hl
	ldi
	jp l9d29
.l9d64
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,la161
	add hl,bc
	ld e,(hl)
	ld hl,la172
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr l9d8a
.l9d84
	ld e,(iy+#05)
	ld d,(iy+#06)
.l9d8a
	dec (iy+#0c)
	jr z,l9d9c
	ld a,(de)
	cp #80
	call nc,l9e06
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l9d9c
	ld a,(de)
	cp #80
	jr c,l9dad
	call l9e06
	ld a,(iy+#0b)
	and a
	jr z,l9d9c
	jp l9d08
.l9dad
	cp #7f
	jr z,l9df9
	cp #7e
	jr nz,l9dbe
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l9dd2
.l9dbe
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,l9818
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l9dd2
	ld a,(iy+#0f)
	or #c0
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
	jp l98fa
.l9df9
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l9e06
	ld a,(de)
	cp #88
	jr nc,l9e24
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l9c17
	add hl,bc
	ld c,(hl)
	ld hl,la1eb
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l9e24
	cp #ff
	jr nz,l9e2d
	ld (iy+#0b),#ff
	ret
.l9e2d
	cp #c0
	jr nc,l9e38
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l9e38
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l9e40
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l9e54
	res 7,(iy+#14)
	ret
.l9e54
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l9e88
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l9e88
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l9e77
	inc h
	ld (iy+#11),h
.l9e77
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l9ebd
.l9e88
	ld hl,l9b33
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l9ea2
	bit 6,(iy+#14)
	jr nz,l9ea2
	ld (iy+#13),#01
	ret
.l9ea2
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
.l9ebd
	add a
	ld hl,l9818
	add l
	ld l,a
	jr nc,l9ec6
	inc h
.l9ec6
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.l9ed0
	db #80,#06,#0c,#06,#06,#06,#0c,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
.l9ee4 equ $ + 4
	db #0c,#06,#06,#ff,#80,#06,#0c,#06
	db #06,#06,#0c,#06,#06,#06,#0c,#06
	db #06,#06,#0c,#06,#06,#01,#0c,#01
	db #06,#01,#0c,#01,#06,#01,#06,#01
	db #06,#01,#06,#01,#0c,#01,#06,#ff
.l9f08
	db #06,#0c,#06,#06,#06,#06,#06,#06
.l9f15 equ $ + 5
	db #06,#06,#06,#24,#ff,#7f,#48,#ff
.l9f18
	db #81,#91,#19,#0c,#19,#06,#19,#0c
	db #19,#06,#19,#06,#19,#06,#19,#06
.l9f2d equ $ + 5
	db #19,#0c,#19,#06,#ff,#81,#92,#19
	db #0c,#19,#06,#19,#0c,#19,#06,#19
	db #06,#19,#06,#19,#06,#19,#0c,#19
.l9f42 equ $ + 2
	db #06,#ff,#81,#92,#19,#0c,#19,#06
.l9f4f equ $ + 7
	db #19,#0c,#19,#06,#25,#24,#ff,#81
	db #93,#17,#0c,#17,#06,#17,#0c,#17
	db #06,#17,#06,#17,#06,#17,#06,#17
.l9f64 equ $ + 4
	db #0c,#17,#06,#ff,#81,#91,#23,#0c
	db #23,#06,#23,#0c,#23,#06,#23,#12
.l9f74 equ $ + 4
	db #93,#1e,#12,#ff,#23,#36,#1e,#12
	db #25,#36,#1e,#12,#27,#1e,#25,#06
	db #23,#12,#27,#12,#25,#12,#1e,#36
	db #27,#1e,#25,#06,#23,#12,#27,#12
	db #25,#12,#1e,#36,#23,#1e,#22,#06
	db #20,#12,#23,#12,#1e,#36,#1e,#12
	db #23,#36,#1e,#12,#25,#36,#1e,#12
	db #27,#1e,#25,#06,#23,#12,#27,#12
	db #25,#12,#1e,#36,#27,#1e,#25,#06
	db #23,#12,#27,#12,#25,#12,#1e,#36
	db #23,#1e,#22,#06,#20,#12,#23,#12
	db #23,#1e,#21,#06,#1f,#12,#23,#12
	db #23,#1e,#22,#06,#20,#12,#22,#12
.l9fdb equ $ + 3
	db #23,#48,#ff,#93,#1b,#36,#1b,#12
	db #1c,#36,#19,#12,#17,#1e,#19,#06
	db #1b,#12,#17,#12,#16,#12,#16,#36
	db #17,#1e,#19,#06,#1b,#12,#17,#12
	db #16,#12,#16,#36,#14,#1e,#16,#06
	db #17,#12,#14,#12,#16,#36,#16,#12
	db #1b,#12,#82,#2f,#02,#31,#02,#33
	db #02,#34,#02,#36,#02,#38,#02,#3a
	db #02,#3b,#02,#3a,#02,#38,#02,#36
	db #02,#34,#02,#33,#02,#31,#02,#2f
	db #08,#81,#1b,#12,#1c,#12,#82,#31
	db #02,#33,#02,#34,#02,#36,#02,#38
	db #02,#3a,#02,#3b,#02,#3d,#02,#3b
	db #02,#3a,#02,#38,#02,#36,#02,#34
	db #02,#33,#02,#31,#08,#81,#19,#12
	db #17,#1e,#19,#06,#1b,#12,#17,#12
	db #16,#12,#16,#36,#17,#1e,#19,#06
	db #1b,#12,#17,#12,#16,#12,#16,#36
	db #1b,#1e,#1b,#06,#1b,#12,#1b,#12
	db #1a,#1e,#1a,#06,#1a,#12,#1a,#12
	db #19,#1e,#19,#06,#19,#12,#19,#12
.la083 equ $ + 3
	db #1b,#48,#ff,#81,#01,#0c,#0d,#1e
.la08f equ $ + 7
	db #0d,#06,#07,#18,#04,#18,#ff,#83
	db #06,#06,#84,#36,#06,#36,#06,#36
	db #06,#85,#1e,#06,#84,#36,#06,#36
	db #06,#83,#06,#06,#06,#06,#84,#36
	db #06,#36,#06,#36,#06,#85,#1e,#06
	db #84,#36,#06,#36,#06,#36,#06,#ff
.la0b8
	db #85,#1e,#06,#1e,#06,#1e,#06,#1e
	db #06,#1e,#06,#1e,#06,#1e,#06,#1e
	db #06,#83,#1e,#06,#1e,#06,#1e,#06
	db #1e,#06,#1b,#06,#1b,#06,#1b,#06
.la0db equ $ + 3
	db #1b,#06,#ff,#86,#27,#06,#2a,#06
	db #2d,#54,#7f,#60,#2a,#06,#2d,#06
	db #30,#54,#7f,#60,#2d,#06,#30,#06
	db #33,#24,#30,#06,#33,#06,#36,#24
	db #39,#06,#38,#06,#36,#06,#34,#06
	db #33,#06,#31,#06,#30,#06,#2f,#06
	db #2d,#06,#2c,#06,#2a,#06,#28,#06
	db #27,#06,#25,#06,#24,#06,#23,#06
	db #21,#06,#23,#06,#24,#06,#25,#06
	db #27,#06,#28,#06,#2a,#06,#2c,#06
	db #2d,#06,#2f,#06,#30,#06,#31,#06
	db #33,#06,#34,#06,#36,#06,#38,#06
.la13e equ $ + 6
.la13d equ $ + 5
	db #39,#c0,#7f,#c0,#ff,#ff,#ff,#00
	db #00,#14,#00,#38,#00,#45,#00,#48
	db #00,#5d,#00,#72,#00,#7f,#00,#94
	db #00,#a4,#00,#0b,#01,#b3,#01,#bf
	db #01,#e8,#01,#0b,#02,#6d,#02,#6e
	db #02
.la161
	db l9ed0,l9ee4,l9f08,l9f15
	db l9f18,l9f2d,l9f42,l9f4f
	db l9f64,l9f74,l9fdb,la083
	db la08f,la0b8,la0db,la13d
	db la13e
;	db #d0,#e4,#08,#15,#18,#2d,#42,#4f
;	db #64,#74,#db,#83,#8f,#b8,#db,#3d
;	db #3e
.la172
	db l9ed0/&100,l9ee4/&100,l9f08/&100,l9f15/&100
	db l9f18/&100,l9f2d/&100,l9f42/&100,l9f4f/&100
	db l9f64/&100,l9f74/&100,l9fdb/&100,la083/&100
	db la08f/&100,la0b8/&100,la0db/&100,la13d/&100
	db la13e/&100
;	db #9e,#9e,#9f,#9f,#9f,#9f,#9f,#9f
;	db #9f,#9f,#9f,#a0,#a0,#a0,#a0,#a1
;	db #a1
.la183
	dw la18f,la1b2,la1ba
	dw la1c4,la1d1,la1db
.la18f
	db #fe,#04,#84,#00,#fe,#09,#00,#00
	db #01,#01,#fe,#06,#00,#fe,#04,#02
	db #fe,#09,#00,#00,#01,#01,#fe,#06
	db #00,#fe,#05,#00,#fe,#04,#00,#fe
.la1b2 equ $ + 3
	db #09,#02,#ff,#fe,#04,#04,#05,#05
.la1ba equ $ + 3
	db #06,#0a,#ff,#fe,#10,#00,#00,#fe
.la1c4 equ $ + 5
	db #04,#07,#08,#09,#ff,#fe,#00,#8f
	db #0b,#fe,#03,#8b,#0b,#fe,#06,#8b
.la1d1 equ $ + 2
	db #0b,#ff,#fe,#00,#83,#0c,#0d,#90
.la1db equ $ + 4
	db #0c,#91,#0c,#ff,#fe,#00,#c1,#46
	db #84,#0b,#fe,#07,#0e,#fe,#0a,#0e
.la1eb equ $ + 4
	db #fe,#01,#0e,#ff,#7f,#fc,#01,#ff
	db #7f,#00,#04,#08,#00,#01,#7f,#ff
	db #01,#ff,#7f,#00,#03,#01,#00,#01
	db #7f,#f8,#01,#ff,#64,#00,#00,#00
	db #00,#01,#7f,#fc,#01,#ff,#7f,#00
	db #00,#3c,#00,#01,#7f,#f7,#01,#ff
	db #64,#01,#00,#00,#00,#02,#7f,#fd
	db #01,#ff,#7f,#01,#00,#3c,#00,#03
	db #08,#ff,#01,#ff,#01,#0f,#04,#01
	db #00,#05,#7f,#fc,#01,#ff,#7f,#81
	db #00,#1e,#00,#01,#89,#29,#00,#00
	db #00,#00,#00,#00,#89,#39,#00,#00
	db #00,#00,#00,#00,#89,#61,#00,#00
.la253 equ $ + 4
	db #00,#00,#00,#00,#7f,#fb,#01,#ff
	db #7f,#00,#01,#0c,#00,#01,#23,#00
	db #0a,#08,#ff,#01,#ff,#68,#ff,#00
	db #00,#00,#05,#35,#02,#46,#7f,#f6
	db #01,#ff,#7f,#00,#00,#3e,#00,#03
	db #35,#02,#0a,#7f,#fa,#01,#ff,#7f
	db #00,#00,#15,#00,#03,#94,#00,#0a
	db #7f,#ff,#01,#ff,#7f,#00,#00,#46
	db #00,#02,#94,#00,#5a,#00,#00
;
.music_info
	db "Blasteroids (1987) (Tengen)(Ben Daglish)()",0
	db "",0

	read "music_end.asm"
