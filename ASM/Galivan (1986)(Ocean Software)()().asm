; Music of Galivan (1986)(Ocean Software)()()
; Ripped by Megachur the 06/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GALIVAN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #86e0

	read "music_header.asm"

;
.init_music
.play_music
;
	call l8849
	call l86ee
	jp l8c88
.l86e9
	db #00
.l86ea
	db #00
.l86eb
	db #00
.l86ec
	db #01
.l86ed
	db #09
.l86ee
	call l87e2
	ld e,#07
	call l8768
	ld hl,(l8c86)
	ld a,(l8c6e)
	and #03
	jr nz,l8704
	srl h
	rr l
.l8704
	ld (l8c7c),hl
	ld a,(l86ec)
	xor #80
	jp p,l8737
	ld (l86ec),a
	xor a
	ld (l8c73),a
	ld (l8c6f),a
	ld (l8c70),a
	ld (l8c6e),a
	ld (l894e),a
	ld (l86ea),a
	ld (l86ea),a
	ld a,#02
	ld (l8a00),a
	ld a,#05
	ld (l894d),a
	ld a,#38
	ld (l8ccf),a
.l8737
	ld a,(l86ec)
	and #7f
	ld (l86ed),a
	add a
	ld l,a
	ld h,#00
	ld de,l874c
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	jp (hl)
.l874c
	dw l883d,l895f,l8984,l899a
	dw l8984,l899a,l899a,l899a
	dw l895f,l89cc,l8a01,l8a1e
	dw l89c4,l8a3b
.l8768
	ld hl,(l8c84)
	ld a,(l8c6e)
	and e
	jr nz,l8775
	srl h
	rr l
.l8775
	ld (l8c7e),hl
	ret
.l8779
	add a
	ld l,a
	ld h,#00
	ld de,l8c22
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ret
.l8785
	add hl,bc
	ld a,(hl)
	or a
	ret z
	ld (l8cd0),a
	call l8779
	ld (l8c84),de
	ld a,#0f
	ld (l8c76),a
	xor a
	ld (l8c83),a
	ld (l8c73),a
	ret
.l87a0
	add hl,bc
	ld a,(hl)
	or a
	ret z
	call l8779
	ld (l8c86),de
	ld a,#0f
	ld (l8c75),a
	xor a
	ld (l8c82),a
	ld (l8c72),a
	ret
.l87b8
	ld (l87dd),a
	ld a,(l8c81)
	and a
	jr z,l87ce
	ld a,(l8c71)
	inc a
	cp e
	jp nz,l87ca
	xor a
.l87ca
	ld (l8c71),a
	ret nz
.l87ce
	ld a,#01
	ld (l8c81),a
	ld a,(l8c74)
	and a
	ret z
	dec a
	ld (l8c74),a
.l87dd equ $ + 1
	xor #00
	ld (l8c77),a
	ret
.l87e2
	ld a,(l8c82)
	and a
	jr z,l87f6
	ld a,(l8c72)
	inc a
	cp #02
	jp nz,l87f2
	xor a
.l87f2
	ld (l8c72),a
	ret nz
.l87f6
	ld a,#01
	ld (l8c82),a
	ld a,(l8c75)
	and a
	ret z
	dec a
	ld (l8c75),a
	ld (l8c78),a
	ret
.l8808
	ld a,(l8c83)
	and a
	jr z,l881b
	ld a,(l8c73)
	inc a
	cp e
	jp nz,l8817
	xor a
.l8817
	ld (l8c73),a
	ret nz
.l881b
	ld a,#01
	ld (l8c83),a
	ld a,(l8c76)
	and a
	ret z
	dec a
	ld (l8c76),a
	ld (l8c79),a
	ret
.l882d
	ld bc,(l8c6f)
	ld a,(l8c6e)
	inc a
	cp e
	jp nz,l883a
	xor a
.l883a
	ld (l8c6e),a
.l883d
	ret
.l883e
	ld hl,(l8c6f)
	inc hl
	ld (l8c6f),hl
	and a
	sbc hl,de
	ret
.l8849
	call l8895
	ld hl,(l88e2)
	dec hl
	ld (l88e2),hl
	ld a,h
	or l
	jr nz,l885d
	ld a,(l88e1)
	ld (l86eb),a
.l885d
	ld a,(l88e8)
	and #0f
	ld e,a
	ld a,(l88e8)
	srl a
	srl a
	srl a
	srl a
	call l87b8
	ld hl,l88e7
	ld a,(l88e0)
	add (hl)
	ld (l88e0),a
	srl a
	srl a
	srl a
	srl a
	ld (l8c7b),a
	ld a,(l88e0)
	sla a
	sla a
	sla a
	sla a
	ld (l8c7a),a
	ret
.l8895
;
;.sound_fx
;
	ld a,(l86eb)
	and a
	ret z
	dec a
	sla a
	sla a
	sla a
	ld c,a
	ld b,#00
	ld hl,l88e9
	add hl,bc
	ld a,(hl)
	ld (l88e0),a
	inc hl
	inc hl
	ld a,(hl)
	and #0f
	ld (l88e8),a
	inc hl
	ld a,(hl)
	ld (l88e7),a
	inc hl
	ld a,(hl)
	ld (l88e4),a
	inc hl
	ld a,(hl)
	ld (l88e1),a
	inc hl
	ld a,(hl)
	ld (l88e2),a
	inc hl
	ld a,(hl)
	ld (l88e3),a
	ld a,#0f
	ld (l8c74),a
	xor a
	ld (l8c81),a
	ld (l8c71),a
	ld (l86eb),a
	ld (l8c7a),a
	ret
.l88e7 equ $ + 7
.l88e4 equ $ + 4
.l88e3 equ $ + 3
.l88e2 equ $ + 2
.l88e1 equ $ + 1
.l88e0
	db #00,#00,#ff,#ff,#00,#00,#00,#00
.l88e8
	db #00
.l88e9
	db #00,#39,#00,#00,#00,#00,#00,#01
	db #00,#38,#0a,#01,#00,#01,#0f,#27
	db #16,#38,#04,#fe,#00,#01,#16,#00
	db #fc,#38,#04,#81,#00,#01,#0f,#27
	db #2c,#38,#04,#7e,#00,#01,#13,#00
.l8911
	call l883e
	ret nz
	ld a,#09
	ld (l86ec),a
	ret
.l891b
	call l883e
	ret nz
	ld a,(l86ec)
	and #7f
	inc a
	ld (l86ec),a
	ret
.l8929
	ld a,(l894d)
	inc a
	ld (l894d),a
	cp #06
	jr z,l8939
	cp #03
	jr z,l8944
	ret
.l8939
	xor a
	ld (l894d),a
	ld a,(l894e)
	inc a
	ld (l894e),a
.l8944
	ld a,(l894e)
	dec a
	ld c,a
	call l87a0
	ret
.l894d
	dec b
.l894e
	nop
.l894f
	ld e,#04
	call l8808
	ld e,#04
	call l8768
	ld e,#05
	call l882d
	ret
.l895f
	call l894f
	ret nz
	ld a,c
	cp #49
	jr nc,l8974
	ld hl,l8a56
	call l8785
	ld hl,l8bcb
	call l8929
.l8974
	ld de,#0048
	ld a,(l86ed)
	cp #08
	jr nz,l8981
	ld de,#0054
.l8981
	jp l891b
.l8984
	call l894f
	ret nz
	ld hl,l8a9f
	call l8785
	ld hl,l8bd8
	call l8929
	ld de,#0090
	jp l891b
.l899a
	call l894f
	ret nz
	ld hl,l8b2f
	call l8785
	ld hl,l8bf0
	call l8929
	ld de,#009c
	ld a,(l86ed)
	cp #07
	jr nz,l89ba
	ld de,#0018
	jp l89c1
.l89ba
	and #04
	jr z,l89c1
	ld de,#0030
.l89c1
	jp l891b
.l89c4
	ld a,(l8c86)
	add #08
	ld (l8c86),a
.l89cc
	ld a,(l8a00)
	ld e,a
	call l8808
	ld bc,#0000
	ld hl,l86e9
	ld a,(hl)
	and #0f
	jr z,l89e9
	ld (l8a00),a
	ld a,#1c
	ld (l8ccf),a
	call l8785
.l89e9
	ld hl,l86ea
	ld a,(hl)
	or a
	jr z,l89f5
	ld a,#8c
	ld (l86ec),a
.l89f5
	call l87a0
	xor a
	ld (l86ea),a
	ld (l86e9),a
	ret
.l8a00
	ld (bc),a
.l8a01
	ld e,#06
	call l8808
	ld e,#08
	call l882d
	ret nz
	ld hl,l8c0a
	call l8785
	ld hl,l8c0a
	call l87a0
	ld de,#000f
	jp l8911
.l8a1e
	ld e,#02
	call l8808
	ld e,#04
	call l882d
	ret nz
	ld hl,l8c19
	call l8785
	ld hl,l8c19
	call l87a0
	ld de,#0009
	jp l8911
.l8a3b
	ld bc,(l8c6f)
	ld e,#02
	call l8808
	ld hl,l8bd8
	call l8785
	ld hl,l8bf0
	call l87a0
	ld de,#0018
	jp l8911
.l8a56
	db #01,#00,#00,#0d,#00,#00,#11,#00
	db #00,#14,#00,#14,#19,#00,#00,#19
	db #00,#18,#19,#00,#00,#00,#00,#00
	db #01,#00,#00,#0d,#00,#00,#11,#00
	db #00,#14,#00,#14,#19,#00,#00,#19
	db #00,#18,#19,#00,#00,#1b,#19,#18
	db #14,#00,#00,#20,#00,#00,#16,#00
	db #00,#22,#00,#00,#17,#00,#00,#23
	db #00,#00,#18,#00,#00,#24,#00,#00
	db #25
.l8a9f
	db #1d,#00,#00,#00,#00,#00,#00,#00
	db #00,#1b,#00,#1d,#1b,#1d,#1b,#19
	db #00,#00,#1b,#00,#00,#1d,#00,#00
	db #1b,#00,#00,#00,#00,#00,#18,#00
	db #00,#00,#00,#00,#14,#00,#00,#00
	db #00,#00,#14,#00,#16,#18,#00,#14
	db #19,#00,#00,#00,#00,#00,#00,#00
	db #00,#19,#00,#1b,#19,#00,#00,#18
	db #00,#00,#19,#00,#00,#1b,#00,#00
	db #1b,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#18
	db #00,#00,#19,#00,#00,#1b,#00,#00
	db #1d,#00,#00,#00,#00,#00,#00,#00
	db #00,#1b,#00,#1d,#1b,#1d,#1b,#19
	db #00,#00,#1b,#00,#00,#1d,#00,#00
	db #1b,#00,#00,#00,#00,#00,#18,#00
	db #00,#00,#00,#00,#1b,#00,#00,#00
	db #00,#00,#18,#00,#00,#00,#00,#00
.l8b2f
	db #19,#00,#00,#00,#00,#00,#00,#00
	db #00,#19,#00,#1b,#1c,#00,#00,#1b
	db #00,#00,#19,#00,#00,#1b,#00,#00
	db #1b,#00,#00,#00,#00,#00,#19,#00
	db #00,#00,#00,#00,#00,#00,#00,#19
	db #00,#00,#18,#00,#00,#16,#00,#00
	db #18,#00,#19,#1b,#00,#18,#00,#00
	db #00,#00,#00,#00,#19,#00,#00,#18
	db #19,#18,#16,#00,#00,#00,#00,#00
	db #18,#00,#00,#16,#00,#00,#14,#00
	db #16,#18,#00,#14,#16,#00,#00,#00
	db #00,#00,#24,#00,#00,#00,#00,#22
	db #20,#00,#00,#00,#00,#00,#24,#00
	db #00,#00,#00,#22,#20,#00,#00,#00
	db #00,#00,#22,#00,#00,#00,#00,#20
	db #1f,#00,#00,#1b,#00,#00,#22,#00
	db #00,#00,#00,#20,#1f,#00,#00,#1b
	db #00,#00,#1f,#00,#00,#22,#00,#00
	db #1f,#1b,#16,#1b,#16,#13,#1b,#16
	db #13,#16,#13,#0f
.l8bcb
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #08,#0a,#0b,#0c,#0d
.l8bd8
	db #0d,#0d,#0d,#0d,#08,#08,#08,#08
	db #0a,#0a,#06,#06,#08,#08,#08,#08
	db #0d,#0d,#0d,#0d,#08,#08,#08,#08
.l8bf0
	db #09,#09,#0b,#0b,#0d,#0d,#0d,#0d
	db #08,#08,#0f,#0f,#11,#0e,#0f,#10
	db #11,#10,#11,#0e,#0f,#0e,#0f,#0f
	db #0f,#0f
.l8c0a
	db #0d,#00,#00,#00,#01,#00,#0d,#0d
	db #01,#0f,#01,#12,#01,#14,#01
.l8c19
	db #16,#00,#19,#16,#13,#19,#16,#13
	db #01
.l8c22
	db #00,#00,#00,#00,#00,#04,#c7,#03
	db #90,#03,#5d,#03,#2d,#03,#ff,#02
	db #d4,#02,#ab,#02,#85,#02,#61,#02
	db #3f,#02,#1e,#02,#00,#02,#e3,#01
	db #c8,#01,#af,#01,#96,#01,#80,#01
	db #6a,#01,#56,#01,#43,#01,#30,#01
	db #1f,#01,#0f,#01,#00,#01,#f2,#00
	db #e4,#00,#d7,#00,#cb,#00,#c0,#00
	db #b5,#00,#ab,#00,#a1,#00,#98,#00
	db #90,#00,#88,#00
.l8c75 equ $ + 7
.l8c74 equ $ + 6
.l8c73 equ $ + 5
.l8c72 equ $ + 4
.l8c71 equ $ + 3
.l8c70 equ $ + 2
.l8c6f equ $ + 1
.l8c6e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8c7c equ $ + 6
.l8c7b equ $ + 5
.l8c7a equ $ + 4
.l8c79 equ $ + 3
.l8c78 equ $ + 2
.l8c77 equ $ + 1
.l8c76
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8c84 equ $ + 6
.l8c83 equ $ + 5
.l8c82 equ $ + 4
.l8c81 equ $ + 3
.l8c7e
	db #00,#00,#00,#01,#01,#01,#00,#00
.l8c86
	db #00,#00
.l8c88
	ld hl,(l8c7a)
	xor a
	call l8cd1
	ld hl,(l8c7c)
	ld a,#02
	call l8cd1
	ld hl,(l8c7e)
	ld a,#04
	call l8cd1
	ld a,(l8cd0)
	ld c,a
	ld a,#06
	call l8cd9
	ld a,(l8c77)
	ld c,a
	ld a,#08
	call l8cd9
	ld a,(l8c78)
	ld c,a
	ld a,#09
	call l8cd9
	ld a,(l8c79)
	ld c,a
	ld a,#0a
	call l8cd9
	ld a,(l8ccf)
	and #3f
	ld c,a
	ld a,#07
	call l8cd9
	ret
.l8cd0 equ $ + 1
.l8ccf
	jr c,l8cd1
.l8cd1
	ld c,l
	ld e,a
	call l8cd9
	ld a,e
	inc a
	ld c,h
.l8cd9
	push bc
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
	pop bc
	ret
;
.music_info
	db "Galivan (1986)(Ocean Software)()",0
	db "",0

	read "music_end.asm"
