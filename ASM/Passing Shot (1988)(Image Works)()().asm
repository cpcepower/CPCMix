; Music of Passing Shot (1988)(Image Works)()()
; Ripped by Megachur the 11/03/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PASSINGS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #8800
FIRST_THEME				equ 0
LAST_THEME				equ 4

	read "music_header.asm"

	jp l8842	; play interrupt
	jp l8814	; init
	jp l880d
	jp l88b6
.l880d equ $ + 1
.l880c
	db #00,#07,#f6,#01
	ld (l88a9),a
	ret
;
.init_music
.l8814
;
;	ld de,#c990	; added by Megachur
	ld (l88aa),a
	or a
	jp m,l882e
	push af
	ld a,#ff
	ld (l88a8),a
	ld (l880c),a
	pop af
	call l893a
	xor a
	ld e,#0e
	jp l8f22
.l882e
	xor a
	ld (l88a8),a
	ld (l88a9),a
	dec a
	ld (l880c),a
	call l88b6
	xor a
	ld e,#0e
	jp l8f22
.l8842
	push af
	ex af,af'
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
	ld a,#7f
	ld (l8e37),a
	ld a,(l88b2)
	and a
	jr nz,l8863
	ld a,(l88aa)
	cp #04
	call z,l893a
.l8863
	ld a,(l88a8)
	or a
	jr z,l8872
	xor a
	ld (l880c),a
	call l89c2
	jr l8891
.l8872
	ld a,(l880c)
	or a
	call z,l88b6
	ld a,#ff
	ld (l880c),a
	ld a,(l88a9)
	and a
	jr z,l888e
	rrca
	and #7f
	call l88bd
	xor a
	ld (l88a9),a
.l888e
	call l8d74
.l8891
	xor a
	ld e,#0e
	call l8f22
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
	ret
.l88aa equ $ + 4
.l88a9 equ $ + 3
.l88a8 equ $ + 2
	db #00,#00,#ff,#00,#04,#00
	jp l893a
	jp l89c2
.l88b2
	db #ff
	jp l88bd
.l88b6
	xor a
	ld (l88b2),a
	jp l8d3c
.l88bd
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,l93be
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,l8c82
	call l8cb8
	set 7,(ix+#11)
	ret
.l88e3
	db #00
.l88ea equ $ + 6
.l88e4
	dw l9311,l9131,l916f,l93b4
.l88f2 equ $ + 6
.l88f0 equ $ + 4
.l88ef equ $ + 3
.l88ee equ $ + 2
.l88ed equ $ + 1
.l88ec
	db #01,#00,#00,#0c,#ff,#2c,#02
	dw l9333
.l88f8 equ $ + 3
	db #01,#02,#82,#08
.l88ff equ $ + 6
.l88f9
	dw l9322,l91dd,l9202,l938c
.l8907 equ $ + 6
.l8905 equ $ + 4
.l8904 equ $ + 3
.l8903 equ $ + 2
.l8902 equ $ + 1
.l8901
	db #01,#00,#00,#ed,#ff,#1b,#00,#00
.l890d equ $ + 4
	db #00,#00,#00,#40,#10
.l8914 equ $ + 6
.l890e
	dw l9328,l924d,l9251,l93aa
.l891c equ $ + 6
.l891a equ $ + 4
.l8919 equ $ + 3
.l8918 equ $ + 2
.l8917 equ $ + 1
.l8916
	db #05,#00,#00,#0c,#ff,#12,#00,#00
.l8922 equ $ + 4
	db #00,#00,#00,#40,#00,#0a,#14,#1e
	db #28,#32,#3c,#46,#00,#0a,#14,#1e
	db #28,#32,#3c,#46,#00,#0a,#14,#1e
	db #28,#32,#3c,#46
.l893a
	push af
	call l8d3c
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l92ce
	add l
	ld l,a
	jr nc,l894b
	inc h
.l894b
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l88e4),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l88f9),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l890e),de
	xor a
	ld (l88ed),a
	ld (l8902),a
	ld (l8917),a
	ld (l88f2),a
	ld (l8907),a
	ld (l891c),a
	cpl
	ld (l88ee),a
	ld (l8903),a
	ld (l8918),a
	ld a,#01
	ld (l88ec),a
	ld (l8901),a
	ld (l8916),a
	ld (l88ef),a
	ld (l8904),a
	ld (l8919),a
	ld hl,l8922
	ld bc,#030a
.l899a
	xor a
.l899b
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l899b
	djnz l899a
	ld hl,l9382
	ld (l88ea),hl
	ld (l88ff),hl
	ld (l8914),hl
	ld a,#ff
	ld (l88f0),a
	ld (l8905),a
	ld (l891a),a
	ld (l88b2),a
	ret
	;
.play_music
.l89c2
	;
	call l8d74
	ld a,(l88b2)
	and a
	ret z
	ld a,(l88f0)
	or a
	jr z,l89da
	ld a,(l8905)
	or a
	jr z,l89da
	ld a,(l891a)
	or a
.l89da
	ld (l88b2),a
	jr nz,l89e8
	ld a,(l8c81)
	and #3f
	cp #3f
	ret z
	ret
.l89e8
	ld iy,l88e3
	ld ix,l8c82
	call l8a06
	ld iy,l88f8
	ld ix,l8c94
	call l8a06
	ld iy,l890d
	ld ix,l8ca6
.l8a06
	call l8b47
	ld a,(iy+#0b)
	and a
	jr z,l8a8b
.l8a0f
	dec (iy+#09)
	jr z,l8a26
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l8a8b
.l8a26
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l8a30
	ld a,(hl)
	cp #80
	jr c,l8a6b
	cp #fe
	jr nz,l8a42
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l8a30
.l8a42
	cp #ff
	jr nz,l8a4b
	xor a
	ld (iy+#0d),a
	ret
.l8a4b
	cp #c0
	jr nc,l8a58
	and #1f
	ld (iy+#09),a
	inc hl
	jp l8a30
.l8a58
	and #07
	add (iy+#00)
	ld de,l8922
	add e
	ld e,a
	jr nc,l8a65
	inc d
.l8a65
	inc hl
	ldi
	jp l8a30
.l8a6b
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,l929e
	add hl,bc
	ld e,(hl)
	ld hl,l92b6
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr l8a91
.l8a8b
	ld e,(iy+#05)
	ld d,(iy+#06)
.l8a91
	dec (iy+#0c)
	jr z,l8aa3
	ld a,(de)
	cp #80
	call nc,l8b0d
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l8aa3
	ld a,(de)
	cp #80
	jr c,l8ab4
	call l8b0d
	ld a,(iy+#0b)
	and a
	jr z,l8aa3
	jp l8a0f
.l8ab4
	cp #7f
	jr z,l8b00
	cp #7e
	jr nz,l8ac5
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l8ad9
.l8ac5
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,l8bd7
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l8ad9
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
	jp l8cb8
.l8b00
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l8b0d
	ld a,(de)
	cp #88
	jr nc,l8b2b
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l8922
	add hl,bc
	ld c,(hl)
	ld hl,l9382
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l8b2b
	cp #ff
	jr nz,l8b34
	ld (iy+#0b),#ff
	ret
.l8b34
	cp #c0
	jr nc,l8b3f
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l8b3f
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l8b47
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l8b5b
	res 7,(iy+#14)
	ret
.l8b5b
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l8b8f
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l8b8f
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l8b7e
	inc h
	ld (iy+#11),h
.l8b7e
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l8bc4
.l8b8f
	ld hl,l8c22
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l8ba9
	bit 6,(iy+#14)
	jr nz,l8ba9
	ld (iy+#13),#01
	ret
.l8ba9
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
.l8bc4
	add a
	ld hl,l8bd7
	add l
	ld l,a
	jr nc,l8bcd
	inc h
.l8bcd
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.l8bd7
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04d4,#0470,#0431,#03f4
	dw #03dc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
.l8c22 equ $ + 3
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
.l8c86 equ $ + 7
.l8c85 equ $ + 6
.l8c82 equ $ + 3
.l8c81 equ $ + 2
	db #0c,#00,#b8,#fe,#f7,#09,#71,#00
.l8c87
	db #71,#00,#00,#02,#00,#00,#01,#00
.l8c94 equ $ + 5
.l8c93 equ $ + 4
	db #89,#8e,#b4,#93,#01,#fd,#ef,#12
.l8c99 equ $ + 2
.l8c98 equ $ + 1
.l8c97
	db #92,#01,#7b,#ed,#00,#07,#0f,#00
.l8ca6 equ $ + 7
.l8ca5 equ $ + 6
	db #fb,#ff,#89,#8e,#8c,#93,#01,#fb
.l8cab equ $ + 4
.l8caa equ $ + 3
.l8ca9 equ $ + 2
	db #df,#24,#a4,#02,#73,#0c,#00,#fe
	db #b4,#00,#3c,#00,#89,#8e,#96,#93
.l8cb7
	db #01
.l8cb8
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
	jr nz,l8cdc
	ld a,#01
.l8cdc
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(l8c81)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,l8d05
	and (ix+#00)
.l8d05
	bit 1,c
	jr z,l8d0c
	and (ix+#01)
.l8d0c
	ld (l8c81),a
	bit 2,c
	jr nz,l8d1d
	ld hl,l8e6a
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l8d1d
	ld hl,#ffbf
	ld c,#fd
	ld a,(iy+#00)
	ld e,#0d
	call l8f22
	ld a,(iy+#04)
	ld e,#0b
	call l8f22
	inc e
	xor a
	call l8f22
	ld (ix+#05),#ff
	ret
.l8d3c
	ld c,#fd
	ld hl,#ffbf
	ld e,#07
	ld a,(l8c81)
	or #3f
	ld (l8c81),a
	call l8f22
	xor a
	inc e
	call l8f22
	inc e
	call l8f22
	inc e
	call l8f22
	ld a,#01
	inc e
	call l8f22
	inc e
	xor a
	call l8f22
	inc e
	call l8f22
	ld (l8c93),a
	ld (l8ca5),a
	ld (l8cb7),a
	ret
.l8d74
	ld a,(l8c81)
	and #3f
	cp #3f
	ret z
	ld ix,l8c82
	call l8e38
	ld ix,l8c94
	call l8e38
	ld ix,l8ca6
	call l8e38
	ld ix,l8c82
	ld hl,#ffbf
	ld c,#fd
	ld e,#07
	ld a,(l8c81)
	call l8f22
	ld e,#00
	ld a,(l8c85)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,l8db2
	ld d,a
.l8db2
	call l8f22
	inc e
	ld a,(l8c86)
	adc (ix+#0a)
	call l8f22
	inc e
	ld a,(l8c97)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,l8dce
	ld d,a
.l8dce
	call l8f22
	inc e
	ld a,(l8c98)
	adc (ix+#1c)
	call l8f22
	inc e
	ld a,(l8ca9)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,l8dea
	ld d,a
.l8dea
	call l8f22
	inc e
	ld a,(l8caa)
	adc (ix+#2e)
	call l8f22
	inc e
	ld a,d
	rrca
	rrca
	rrca
	call l8f22
	ld e,#08
	ld a,(l8e37)
	ld d,a
	ld a,(l8c87)
	cp d
	jr c,l8e0c
	ld a,d
.l8e0c
	srl a
	srl a
	srl a
	call l8f22
	inc e
	ld a,(l8c99)
	cp d
	jr c,l8e1d
	ld a,d
.l8e1d
	srl a
	srl a
	srl a
	call l8f22
	inc e
	ld a,(l8cab)
	cp d
	jr c,l8e2e
	ld a,d
.l8e2e
	srl a
	srl a
	srl a
	jp l8f22
.l8e37
	ld a,a
.l8e38
	ld a,(l8c81)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l8e59
	cp #ff
	jr z,l8e59
	dec (ix+#06)
.l8e59
	call l8ee0
	bit 2,(iy+#09)
	jp nz,l8ed9
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.l8e6a
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l8e79
	ld (ix+#05),a
	ret
.l8e79
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l8e89
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l8e89
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l8e9b
	cp (iy+#02)
	jr c,l8e9b
	ld (ix+#05),a
	ret
.l8e9b
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l8eab
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l8eab
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l8eba
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l8eba
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l8ec7
	ld (ix+#05),a
	ret
.l8ec7
	ld (ix+#05),#00
	ld a,(l8c81)
	or (ix+#02)
	ld (l8c81),a
	res 7,(ix+#11)
	ret
.l8ed9
	ld a,(ix+#06)
	and a
	ret nz
	jr l8ec7
.l8ee0
	ld a,(ix+#07)
	and a
	jr z,l8eed
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.l8eed
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
	jp p,l8f11
	ld (ix+#07),#ff
	ret
.l8f11
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
.l8f22
	push bc
	push de
	push hl
	ld c,e
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
	db #80,#25,#12,#2a,#12,#25,#12,#22
	db #12,#25,#12,#2a,#1b,#2a,#09,#2a
	db #12,#2e,#12,#2c,#12,#2a,#12,#29
	db #12,#2a,#12,#2c,#32,#ff,#80,#11
	db #12,#12,#12,#16,#12,#19,#12,#16
	db #12,#12,#12,#0d,#12,#06,#12,#12
	db #12,#0d,#12,#0f,#12,#11,#12,#12
	db #12,#0d,#32,#ff,#80,#20,#12,#22
	db #12,#1e,#12,#1e,#12,#1e,#12,#22
	db #1b,#22,#09,#22,#12,#25,#12,#20
	db #12,#22,#12,#25,#12,#22,#12,#29
	db #32,#ff,#80,#25,#12,#25,#12,#27
	db #12,#24,#1b,#25,#09,#27,#12,#29
	db #12,#29,#12,#2a,#12,#29,#1b,#27
	db #09,#25,#12,#27,#12,#25,#12,#24
	db #12,#25,#32,#ff,#80,#0d,#12,#0a
	db #12,#06,#12,#08,#1b,#0a,#09,#0c
	db #12,#0d,#12,#0a,#12,#06,#12,#08
	db #1b,#09,#09,#0a,#12,#06,#12,#08
	db #12,#08,#12,#0d,#32,#ff,#80,#1d
	db #12,#1d,#12,#22,#12,#1b,#1b,#1d
	db #09,#1e,#12,#20,#12,#25,#12,#22
	db #12,#25,#1b,#24,#09,#1d,#12,#22
	db #12,#1b,#12,#1b,#12,#1d,#32,#ff
	db #80,#21,#0f,#1e,#05,#1a,#14,#1e
	db #14,#21,#14,#26,#28,#2a,#0f,#28
	db #05,#26,#14,#1e,#14,#20,#14,#21
	db #32,#ff,#80,#09,#14,#0e,#14,#0e
	db #14,#0d,#14,#0b,#3c,#0e,#14,#0e
	db #14,#10,#14,#09,#32,#ff,#80,#1e
	db #0f,#1a,#05,#12,#14,#15,#14,#1c
	db #14,#1e,#28,#21,#14,#1e,#14,#15
	db #14,#17,#14,#19,#32,#ff,#80,#25
	db #05,#25,#0f,#25,#05,#2a,#14,#2a
	db #14,#2c,#14,#2c,#14,#31,#23,#2e
	db #05,#2a,#0f,#2a,#05,#2e,#0f,#2a
	db #05,#27,#14,#2f,#28,#2c,#0f,#29
	db #05,#2a,#32,#ff,#80,#0d,#05,#0d
	db #0f,#0d,#05,#12,#14,#12,#14,#0d
	db #14,#0d,#14,#12,#14,#11,#14,#0f
	db #14,#0d,#14,#0b,#14,#0b,#14,#0d
	db #14,#0d,#14,#12,#14,#0d,#14,#06
	db #50,#ff,#80,#20,#05,#20,#0f,#20
	db #05,#22,#14,#22,#14,#29,#14,#29
	db #14,#2e,#23,#2a,#05,#22,#0f,#22
	db #05,#2a,#0f,#22,#05,#1e,#14,#27
	db #28,#29,#0f,#25,#05,#22,#32,#ff
	db #85,#91,#7f,#0f,#22,#1e,#92,#22
	db #0f,#93,#22,#0a,#92,#22,#05,#7f
	db #0f,#91,#22,#0f,#92,#22,#0f,#ff
	db #85,#91,#7f,#0f,#22,#1e,#92,#22
	db #0f,#93,#22,#0a,#92,#22,#05,#7f
	db #1e,#94,#27,#0a,#27,#05,#ff,#85
	db #7f,#0f,#95,#27,#1e,#96,#27,#0f
	db #95,#27,#0a,#96,#27,#05,#7f,#0f
	db #97,#27,#0f,#96,#27,#0f,#7f,#0f
	db #95,#27,#1e,#96,#27,#0f,#95,#27
	db #0a,#96,#27,#05,#7f,#0f,#97,#27
	db #0f,#96,#27,#0a,#27,#05,#7f,#0f
	db #96,#25,#1e,#97,#25,#0f,#96,#25
	db #0a,#97,#25,#05,#7f,#0f,#98,#25
.l9131 equ $ + 7
	db #0f,#97,#25,#0f,#27,#78,#ff,#85
	db #92,#7f,#0f,#22,#1e,#91,#22,#0f
	db #99,#20,#0a,#9a,#20,#05,#7f,#0f
	db #99,#22,#0a,#93,#22,#05,#7f,#0f
	db #92,#7f,#0f,#22,#1e,#91,#22,#0f
	db #99,#20,#0a,#9a,#20,#05,#7f,#1e
	db #94,#27,#0a,#27,#05,#97,#7f,#0f
	db #20,#0a,#20,#05,#7f,#0f,#92,#20
.l916f equ $ + 5
	db #0a,#20,#05,#7f,#0f,#22,#1e,#22
	db #0f,#22,#0a,#93,#22,#05,#7f,#0f
	db #92,#22,#96,#7f,#0f,#9b,#1f,#1e
	db #1f,#0f,#1f,#0a,#93,#1f,#05,#7f
	db #0f,#9b,#1f,#96,#97,#7f,#0f,#20
	db #1e,#20,#0f,#93,#20,#0a,#92,#20
	db #05,#7f,#0f,#20,#5a,#90,#7f,#0f
	db #31,#05,#35,#05,#3a,#05,#38,#05
	db #37,#05,#35,#05,#38,#05,#37,#05
	db #35,#05,#ff,#81,#0a,#2d,#0a,#0f
	db #0a,#1e,#11,#1e,#ff,#81,#0a,#2d
	db #0a,#0f,#0a,#1e,#7f,#0f,#0a,#0a
	db #0a,#05,#ff,#81,#0f,#2d,#0f,#0f
	db #0f,#0a,#0d,#05,#7f,#0f,#0c,#0f
.l91dd equ $ + 3
	db #0a,#0f,#ff,#81,#0f,#2d,#0f,#0f
	db #0d,#1e,#0c,#0f,#0a,#0f,#0f,#2d
	db #0f,#0f,#0d,#1e,#0c,#0f,#0f,#0a
	db #0f,#05,#0f,#0f,#0f,#0a,#0a,#05
	db #0d,#0f,#0d,#0a,#08,#05,#0f,#f0
.l9202
	db #0c,#f0,#0f,#3c,#0d,#3c,#7f,#78
	db #ff,#82,#06,#0a,#06,#05,#84,#36
	db #0a,#36,#05,#83,#1e,#0a,#82,#06
	db #05,#84,#36,#0a,#36,#05,#82,#06
	db #0f,#84,#36,#0a,#36,#05,#84,#1e
	db #0a,#82,#06,#05,#84,#1e,#05,#82
	db #1e,#05,#84,#1e,#05,#ff,#82,#06
	db #0a,#06,#05,#83,#1e,#0a,#1e,#05
	db #82,#06,#0a,#06,#05,#83,#1e,#0a
.l9251 equ $ + 7
.l924d equ $ + 3
	db #1e,#05,#ff,#82,#06,#0f,#84,#36
	db #0a,#82,#06,#05,#83,#1e,#0f,#84
	db #36,#0a,#82,#06,#05,#82,#06,#0f
	db #84,#36,#0a,#82,#06,#05,#82,#06
	db #0f,#84,#36,#0a,#82,#06,#05,#ff
	db #82,#06,#0f,#84,#36,#0a,#82,#06
	db #05,#83,#1e,#0f,#84,#36,#0a,#82
	db #06,#05,#82,#06,#0a,#83,#1e,#05
	db #84,#36,#0a,#82,#06,#05,#83,#36
	db #05,#36,#05,#36,#05,#33,#05,#33
.l929e equ $ + 4
	db #05,#33,#05,#ff,#42,#60,#7e,#9c
	db #be,#e0,#02,#1c,#30,#48,#6e,#94
	db #ba,#d2,#e9,#31,#b5,#bf,#cd,#dd
.l92b6 equ $ + 4
	db #0b,#38,#4d,#72,#8f,#8f,#8f,#8f
	db #8f,#8f,#90,#90,#90,#90,#90,#90
	db #90,#90,#90,#91,#91,#91,#91,#91
	db #92,#92,#92,#92
.l92ce
	dw l92ec,l92ee,l92f0,l92f2
	dw l92f4,l92f6,l92f8,l92fc
	dw l9300,l9304,l9306,l9308
	dw l930a,l9312,l9323
.l92f2 equ $ + 6
.l92f0 equ $ + 4
.l92ee equ $ + 2
.l92ec
	db #00,#ff,#01,#ff,#02,#ff,#03,#ff
.l92f8 equ $ + 4
.l92f6 equ $ + 2
.l92f4
	db #04,#ff,#05,#ff,#fe,#05,#06,#ff
.l9300 equ $ + 4
.l92fc
	db #fe,#05,#07,#ff,#fe,#05,#08,#ff
.l930a equ $ + 6
.l9308 equ $ + 4
.l9306 equ $ + 2
.l9304
	db #09,#ff,#0a,#ff,#0b,#ff,#83,#0c
.l9312 equ $ + 6
.l9311 equ $ + 5
	db #0d,#0e,#0c,#0d,#0f,#ff,#83,#10
	db #11,#fe,#02,#10,#11,#fe,#03,#10
.l9323 equ $ + 7
.l9322 equ $ + 6
	db #fe,#00,#12,#10,#11,#13,#ff,#8c
.l9328 equ $ + 4
	db #14,#15,#85,#16,#17,#ff,#8a,#29
.l9333 equ $ + 7
	db #39,#00,#00,#00,#00,#00,#8a,#29
	db #49,#00,#00,#00,#00,#00,#8a,#29
	db #51,#00,#00,#00,#00,#00,#8a,#11
	db #39,#00,#00,#00,#00,#00,#8a,#21
	db #51,#00,#00,#00,#00,#00,#8a,#21
	db #49,#00,#00,#00,#00,#00,#8a,#21
	db #39,#00,#00,#00,#00,#00,#8a,#21
	db #31,#00,#00,#00,#00,#00,#8a,#29
	db #61,#00,#00,#00,#00,#00,#8a,#29
	db #59,#00,#00,#00,#00,#00,#8a,#29
.l9382 equ $ + 6
	db #41,#00,#00,#00,#00,#00,#7f,#ff
	db #01,#ff,#7f,#03,#04,#01,#00,#01
.l938c
	db #7f,#fe,#01,#ff,#7f,#00,#07,#05
	db #00,#01,#7f,#fa,#01,#ff,#7f,#00
	db #00,#3c,#00,#01,#7f,#fc,#01,#ff
.l93aa equ $ + 6
	db #7f,#00,#00,#3d,#00,#03,#7f,#91
	db #01,#ff,#7f,#00,#00,#00,#00,#02
.l93b4
	db #7f,#fe,#50,#fd,#7f,#00,#04,#01
.l93be equ $ + 2
	db #00,#01,#03,#ff,#7f,#ff,#7f,#00
	db #03,#0a,#00,#02,#8a,#00,#78,#7f
	db #d5,#01,#ff,#7f,#00,#00,#32,#00
	db #01,#1b,#01,#0a,#7f,#f8,#01,#ff
	db #7f,#00,#00,#fd,#ff,#01,#96,#02
	db #0a,#00,#00,#00,#00,#00,#00,#00
;
.music_info
	db "Passing Shot (1988)(Image Works)()",0
	db "",0

	read "music_end.asm"
