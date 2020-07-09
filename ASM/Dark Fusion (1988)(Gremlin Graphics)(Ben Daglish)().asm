; Music of Dark Fusion (1988)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 14/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DARKFUSI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #6b02

	read "music_header.asm"
	
	jp l6b90	; init
	jp l6c18	; play
.l6b08
.music_end
	db #00
	jp l6b13	; init sound effetcs
;
.stop_music
;
	xor a
	ld (l6b08),a
	jp l6f8b
.l6b13
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,l7487
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,l6ed0
	call l6f07
	set 7,(ix+#11)
	ret
.l6b40 equ $ + 7
.l6b3a equ $ + 1
.l6b39
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6b48 equ $ + 7
.l6b46 equ $ + 5
.l6b45 equ $ + 4
.l6b44 equ $ + 3
.l6b43 equ $ + 2
.l6b42 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6b4f equ $ + 6
.l6b4e equ $ + 5
	db #00,#00,#00,#00,#00,#08,#00,#00
.l6b58 equ $ + 7
.l6b57 equ $ + 6
.l6b55 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6b5d equ $ + 4
.l6b5b equ $ + 2
.l6b5a equ $ + 1
.l6b59
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6b64 equ $ + 3
.l6b63 equ $ + 2
	db #00,#00,#10,#00,#00,#00,#00,#00
.l6b70 equ $ + 7
.l6b6f equ $ + 6
.l6b6e equ $ + 5
.l6b6d equ $ + 4
.l6b6c equ $ + 3
.l6b6a equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6b78 equ $ + 7
.l6b72 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
.init_music
.l6b90
;
	push af
	call l6f8b
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l73c1
	add l
	ld l,a
	jr nc,l6ba1
	inc h
.l6ba1
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l6b3a),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l6b4f),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l6b64),de
	xor a
	ld (l6b43),a
	ld (l6b58),a
	ld (l6b6d),a
	ld (l6b48),a
	ld (l6b5d),a
	ld (l6b72),a
	cpl
	ld (l6b44),a
	ld (l6b59),a
	ld (l6b6e),a
	ld a,#01
	ld (l6b42),a
	ld (l6b57),a
	ld (l6b6c),a
	ld (l6b45),a
	ld (l6b5a),a
	ld (l6b6f),a
	ld hl,l6b78
	ld bc,#030a
.l6bf0
	xor a
.l6bf1
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l6bf1
	djnz l6bf0
	ld hl,l7425
	ld (l6b40),hl
	ld (l6b55),hl
	ld (l6b6a),hl
	ld a,#ff
	ld (l6b46),a
	ld (l6b5b),a
	ld (l6b70),a
	ld (l6b08),a
	ret
;
.play_music
.l6c18
;

	call l6fcf
	ld a,(l6b08)
	and a
	ret z
	ld a,(l6b46)
	ld hl,l6b5b
	or (hl)
	ld hl,l6b70
	or (hl)
	ld (l6b08),a
	jr nz,l6c42
	xor a
	ld (l6b08),a
	ld a,(l6ecf)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l6b08),a
	ret
.l6c42
	ld iy,l6b39
	ld ix,l6ed0
	call l6c60
	ld iy,l6b4e
	ld ix,l6ee2
	call l6c60
	ld iy,l6b63
	ld ix,l6ef4
.l6c60
	call l6da1
	ld a,(iy+#0b)
	and a
	jr z,l6ce5
.l6c69
	dec (iy+#09)
	jr z,l6c80
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l6ce5
.l6c80
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l6c8a
	ld a,(hl)
	cp #80
	jr c,l6cc5
	cp #fe
	jr nz,l6c9c
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l6c8a
.l6c9c
	cp #ff
	jr nz,l6ca5
	xor a
	ld (iy+#0d),a
	ret
.l6ca5
	cp #c0
	jr nc,l6cb2
	and #1f
	ld (iy+#09),a
	inc hl
	jp l6c8a
.l6cb2
	and #07
	add (iy+#00)
	ld de,l6b78
	add e
	ld e,a
	jr nc,l6cbf
	inc d
.l6cbf
	inc hl
	ldi
	jp l6c8a
.l6cc5
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,l739f
	add hl,bc
	ld e,(hl)
	ld hl,l73b0
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr l6ceb
.l6ce5
	ld e,(iy+#05)
	ld d,(iy+#06)
.l6ceb
	dec (iy+#0c)
	jr z,l6cfd
	ld a,(de)
	cp #80
	call nc,l6d67
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l6cfd
	ld a,(de)
	cp #80
	jr c,l6d0e
	call l6d67
	ld a,(iy+#0b)
	and a
	jr z,l6cfd
	jp l6c69
.l6d0e
	cp #7f
	jr z,l6d5a
	cp #7e
	jr nz,l6d1f
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l6d33
.l6d1f
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,l6e31
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l6d33
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
	jp l6f07
.l6d5a
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l6d67
	ld a,(de)
	cp #88
	jr nc,l6d85
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l6b78
.l6d77
	add hl,bc
	ld c,(hl)
	ld hl,l7425
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l6d85
	cp #ff
	jr nz,l6d8e
	ld (iy+#0b),#ff
	ret
.l6d8e
	cp #c0
	jr nc,l6d99
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l6d99
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l6da1
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l6db5
	res 7,(iy+#14)
	ret
.l6db5
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l6de9
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l6de9
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l6dd8
	inc h
	ld (iy+#11),h
.l6dd8
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l6e1e
.l6de9
	ld hl,l6d77
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l6e03
	bit 6,(iy+#14)
	jr nz,l6e03
	ld (iy+#13),#01
	ret
.l6e03
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
.l6e1e
	add a
	ld hl,l6e31
	add l
	ld l,a
	jr nc,l6e27
	inc h
.l6e27
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.l6e31
	dw #0a8f,#09f7,#0968,#08e1
	dw #0861,#07e9,#0777,#070c
	dw #06a7,#0647,#05ed,#0598
	dw #0547,#04fc,#04d4,#0470
	dw #0431,#03f4,#03dc,#0386
	dw #0353,#0324,#02f6,#02cc
	dw #02a4,#027e,#025a,#0238
	dw #0218,#01fa,#01de,#01c3
	dw #01aa,#0192,#017b,#0166
	dw #0152,#013f,#012d,#011c
	dw #010c,#00fd,#00ef,#00e1
	dw #00d5,#00c9,#00be,#00b3
	dw #00a9,#009f,#0096,#008e
	dw #0086,#007f,#0077,#0071
	dw #006a,#0064,#005f,#0059
	dw #0054,#0050,#004b,#0047
	dw #0043,#003f,#003c,#0038
	dw #0035,#0032,#002f,#002d
	dw #002a,#0028,#0026,#0024
	dw #0022,#0020,#0018
.l6ed5 equ $ + 6
.l6ed4 equ $ + 5
.l6ed3 equ $ + 4
.l6ed0 equ $ + 1
.l6ecf
	db #3f,#fe,#f7,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6ee6 equ $ + 7
.l6ee5 equ $ + 6
.l6ee2 equ $ + 3
.l6ee1 equ $ + 2
	db #00,#00,#00,#fd,#ef,#12,#00,#00
.l6ee7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6ef4 equ $ + 5
.l6ef3 equ $ + 4
	db #00,#00,#00,#00,#00,#fb,#df,#24
.l6ef9 equ $ + 2
.l6ef8 equ $ + 1
.l6ef7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6f06 equ $ + 7
.l6f05 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6f07
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
	jr nz,l6f2b
	ld a,#01
.l6f2b
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(l6ecf)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,l6f54
	and (ix+#00)
.l6f54
	bit 1,c
	jr z,l6f5b
	and (ix+#01)
.l6f5b
	ld (l6ecf),a
	bit 2,c
	jr nz,l6f6c
	ld hl,l70bd
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l6f6c
	call l7175
	ld a,(iy+#00)
	ld c,#0d
	call l718c
	ld a,(iy+#04)
	ld c,#0b
	call l718c
	inc c
	xor a
	call l718c
	ld (ix+#05),#ff
	jp l7181
.l6f8b
	call l7175
	ld c,#07
	ld a,(l6ecf)
	or #3f
	ld (l6ecf),a
	call l718c
	xor a
	inc c
	call l718c
	inc c
	call l718c
	inc c
	call l718c
	ld a,#0a
	inc c
	call l718c
	inc c
	xor a
	call l718c
	ld a,#09
	inc c
	call l718c
	xor a
	ld (l6ee1),a
	ld (l6ef3),a
	ld (l6f05),a
	ld (l6ed5),a
	ld (l6ee7),a
	ld (l6ef9),a
	jp l7181
.l6fcf
	ld a,(l6ecf)
	and #3f
	cp #3f
	ret z
	ld ix,l6ed0
	call l708b
	ld ix,l6ee2
	call l708b
	ld ix,l6ef4
	call l708b
	call l7175
	ld ix,l6ed0
	ld c,#07
	ld a,(l6ecf)
	call l718c
	ld c,#00
	ld a,(l6ed3)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,l700d
	ld (l6f06),a
.l700d
	call l718c
	inc c
	ld a,(l6ed4)
	adc (ix+#0a)
	call l718c
	inc c
	ld a,(l6ee5)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,l702b
	ld (l6f06),a
.l702b
	call l718c
	inc c
	ld a,(l6ee6)
	adc (ix+#1c)
	call l718c
	inc c
	ld a,(l6ef7)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,l7049
	ld (l6f06),a
.l7049
	call l718c
	inc c
	ld a,(l6ef8)
	adc (ix+#2e)
	call l718c
	inc c
	ld a,(l6f06)
	rrca
	rrca
	rrca
	call l718c
	ld c,#08
	ld a,(l6ed5)
	srl a
	srl a
	srl a
	call l718c
	inc c
	ld a,(l6ee7)
	srl a
	srl a
	srl a
	call l718c
	inc c
	ld a,(l6ef9)
	srl a
	srl a
	srl a
	call l718c
	jp l7181
.l708b
	ld a,(l6ecf)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l70ac
	cp #ff
	jr z,l70ac
	dec (ix+#06)
.l70ac
	call l7133
	bit 2,(iy+#09)
	jp nz,l712c
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.l70bd
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l70cc
	ld (ix+#05),a
	ret
.l70cc
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l70dc
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l70dc
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l70ee
	cp (iy+#02)
	jr c,l70ee
	ld (ix+#05),a
	ret
.l70ee
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l70fe
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l70fe
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l710d
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l710d
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l711a
	ld (ix+#05),a
	ret
.l711a
	ld (ix+#05),#00
	ld a,(l6ecf)
	or (ix+#02)
	ld (l6ecf),a
	res 7,(ix+#11)
	ret
.l712c
	ld a,(ix+#06)
	and a
	ret nz
	jr l711a
.l7133
	ld a,(ix+#07)
	and a
	jr z,l7140
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.l7140
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
	jp p,l7164
	ld (ix+#07),#ff
	ret
.l7164
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
.l7175
	ld bc,#f782
	out (c),c
	ld de,#c000
	ld hl,#f680
	ret
.l7181
	ld bc,#f40e
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ret
.l718c
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
.s00
	db #80,#0d,#0f,#0d,#05,#81,#3d,#05
	db #38,#05,#31,#05,#2c,#05,#80,#12
	db #0f,#12,#05,#81,#3d,#05,#36,#05
	db #31,#05,#2a,#05,#80,#0b,#0f,#0b
	db #05,#81,#3d,#05,#36,#05,#2f,#05
	db #2a,#05,#80,#12,#0f,#12,#05,#81
	db #3d,#05,#36,#05,#31,#05,#2a,#05
	db #ff
.s01
	db #7f,#a0,#7f,#a0,#ff
.s02
	db #82,#2c
	db #05,#81,#28,#05,#82,#25,#05,#81
	db #2c,#05,#83,#28,#05,#81,#25,#05
	db #84,#2c,#05,#81,#28,#05,#82,#2d
	db #05,#81,#2a,#05,#82,#25,#05,#81
	db #2d,#05,#83,#2a,#05,#81,#25,#05
	db #84,#2a,#05,#81,#2d,#05,#82,#2a
	db #05,#81,#27,#05,#82,#23,#05,#81
	db #2a,#05,#83,#27,#05,#81,#23,#05
	db #84,#27,#05,#81,#2a,#05,#82,#2d
	db #05,#81,#2a,#05,#82,#25,#05,#81
	db #2d,#05,#83,#2a,#05,#81,#25,#05
	db #84,#2a,#05,#81,#2d,#05,#ff
.s03
	db #80
	db #0d,#0f,#0d,#05,#85,#2a,#0a,#81
	db #31,#05,#2c,#05,#80,#12,#0f,#12
	db #05,#85,#2a,#0a,#81,#31,#05,#2a
	db #05,#80,#0b,#0f,#0b,#05,#85,#2a
	db #0a,#81,#2f,#05,#2a,#05,#80,#12
	db #0f,#12,#05,#85,#2a,#0a,#81,#31
	db #05,#2a,#05,#ff
.s04
	db #86,#2c,#82,#2a
	db #05,#28,#05,#2a,#05,#2c,#05,#2a
	db #05,#28,#05,#2a,#05,#28,#05,#25
	db #0a,#25,#0a,#23,#05,#25,#23,#31
	db #05,#7f,#55,#ff
.s05
	db #31,#50,#34,#05
	db #33,#05,#31,#05,#2a,#05,#2c,#05
	db #2f,#05,#2e,#05,#2a,#05,#28,#05
	db #27,#05,#23,#05,#25,#05,#28,#05
	db #2a,#05,#2c,#05,#2d,#05,#90,#ff
.s06
	db #28,#05,#2f,#05,#34,#05,#3b,#05
	db #2a,#05,#31,#05,#36,#05,#3d,#a5
	db #7f,#a0,#ff
.s07
	db #80,#10,#0a,#10,#0a
	db #85,#2a,#0a,#81,#31,#05,#2a,#05
	db #ff
.s08
	db #87,#25,#05,#25,#05,#25,#05
	db #25,#05,#20,#05,#20,#05,#1b,#05
	db #1b,#05,#ff
.s09
	db #91,#ff
.s10
	db #87,#17,#0f
	db #17,#05,#23,#0a,#23,#05,#20,#0a
	db #20,#0a,#20,#05,#1b,#0a,#1b,#05
	db #1b,#05,#17,#0f,#17,#05,#23,#0a
	db #23,#05,#20,#0a,#20,#05,#20,#05
	db #20,#05,#1b,#05,#1b,#05,#1b,#05
	db #1b,#05,#ff
.s11
	db #80,#0d,#0a,#0d,#0a
	db #85,#1e,#05,#80,#10,#05,#11,#05
	db #12,#0f,#12,#0a,#85,#1e,#05,#80
	db #10,#05,#0f,#05,#0b,#0f,#0b,#0a
	db #85,#1e,#05,#80,#10,#05,#11,#05
	db #12,#0f,#12,#0a,#85,#1e,#0a,#1e
	db #05,#1e,#05,#ff
.s12
	db #80,#31,#50,#2f
	db #46,#2c,#05,#2a,#05,#2c,#05,#2f
	db #05,#31,#05,#34,#05,#31,#14,#7f
	db #28,#7f,#50,#ff
.s13
	db #34,#05,#33,#05
	db #31,#05,#34,#05,#33,#05,#31,#05
	db #34,#05,#33,#05,#31,#05,#2e,#05
	db #2c,#05,#2a,#05,#28,#05,#2e,#05
	db #2f,#05,#31,#05,#ff
.s14
	db #28,#05,#2f
	db #05,#34,#05,#3b,#05,#2a,#05,#31
	db #05,#36,#05,#3d,#19,#ff
.s15
	db #87,#17
	db #14,#ff
.s16
	db #80,#0d,#0a,#0d,#0a,#ff
.l739f
	db s00,s01,s02,s03,s04,s05,s06,s07
	db s08,s09,s10,s11,s12,s13,s14,s15
	db s16
;	db #9f,#d8,#dd,#3e,#73,#93,#b7,#ca
;	db #d8,#ea,#ec,#1a,#4b,#63,#84,#95
;	db #99
.l73b0
	db s00/&100,s01/&100,s02/&100,s03/&100,s04/&100,s05/&100,s06/&100,s07/&100
	db s08/&100,s09/&100,s10/&100,s11/&100,s12/&100,s13/&100,s14/&100,s15/&100
	db s16/&100
;	db #71,#71,#71,#72,#72,#72,#72,#72
;	db #72,#72,#72,#73,#73,#73,#73,#73
;	db #73
.l73c1
	dw l73c7,l73e8,l73ff
.l73c7
	db #fe,#f4
	db #87,#00,#fe,#f6,#85,#03,#fe,#f4
	db #07,#87,#03,#fe,#f6,#85,#03,#fe
	db #f4,#07,#fe,#00,#84,#0b,#fe,#02
	db #86,#0b,#fe,#f4,#07,#10,#ff
.l73e8
	db #87
	db #02,#fe,#02,#85,#02,#fe,#00,#08
	db #87,#02,#fe,#02,#85,#02,#fe,#00
	db #08,#8a,#0a,#08,#0f,#ff
.l73ff
	db #01,#04
	db #04,#05,#fe,#02,#04,#04,#05,#fe
	db #00,#06,#09,#04,#04,#05,#fe,#02
	db #09,#04,#04,#05,#fe,#00,#06,#01
	db #fe,#0e,#c0,#50,#0c,#0c,#84,#0d
	db #fe,#00,#0e,#ff
.l7425
	db #7f,#fb,#01,#ff,#7f,#00,#05,#04
	db #00,#01,#7f,#fc,#01,#ff,#64,#00
	db #01,#01,#00,#01,#7f,#f7,#01,#ff
	db #73,#00,#00,#00,#00,#03,#08,#ff
	db #01,#ff,#02,#00,#00,#00,#00,#05
	db #08,#ff,#01,#ff,#03,#00,#00,#00
	db #00,#05,#7f,#fc,#01,#ff,#73,#00
	db #00,#3c,#00,#03,#7f,#f7,#64,#9d
	db #7f,#1e,#04,#02,#00,#01,#7f,#f9
	db #01,#ff,#73,#00,#00,#3c,#00,#01
	db #08,#f7,#64,#9d,#01,#1e,#04,#01
	db #00,#05,#89,#61,#00,#00,#00,#00
	db #00,#00
.l7487
	db #7f,#fa,#01,#ff,#7f,#00,#00,#7e
	db #00,#02,#87,#02,#06,#7f,#ff,#01
	db #ff,#7f,#00,#00,#5f,#00,#02,#58
	db #00,#05,#08,#ff,#01,#ff,#00,#00
	db #02,#20,#00,#05,#7b,#00,#32,#7f
	db #f8,#01,#ff,#7f,#00,#02,#11,#00
	db #01,#54,#00,#05,#7f,#e6,#01,#ff
	db #7f,#00,#01,#0e,#00,#01,#54,#00
	db #03,#0a,#ff,#01,#ff,#03,#00,#00
	db #03,#00,#05,#44,#00,#05,#7f,#fd
	db #01,#ff,#7f,#00,#03,#0f,#00,#01
	db #72,#00,#05,#7f,#ed,#01,#ff,#7f
	db #00,#00,#c6,#ff,#01,#1e,#07,#04
	db #08,#ff,#01,#ff,#02,#00,#05,#06
	db #00,#05,#26,#00,#13,#7f,#fa,#01
	db #ff,#7f,#05,#00,#a8,#ff,#02,#dc
	db #00,#04,#7f,#c8,#01,#ff,#7f,#ff
	db #00,#00,#00,#01,#4f,#00,#03,#7f
	db #fa,#01,#ff,#7f,#00,#02,#01,#00
	db #01,#40,#00,#05,#7f,#f4,#01,#ff
	db #7f,#00,#00,#3e,#00,#03,#10,#00
	db #05,#00,#00
;
; #04d6
; xor a
; call #6b02	; init
;
; #04f6 ; #6b05 ; play
; ld a,(#6b08)	; test end music
; and a
; jr nz,#04da
;
.music_info
	db "Dark Fusion (1988)(Gremlin Graphics)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
