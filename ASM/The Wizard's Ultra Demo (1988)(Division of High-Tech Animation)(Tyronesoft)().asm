; Music of The Wizard's Ultra Demo (1988)(Division of High-Tech Animation)(Tyronesoft)()
; Ripped by Megachur the 21/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THEWIZUD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #2c01

	read "music_header.asm"

	db #54,#59,#52,#4f,#4e,#45,#53,#4f
	db #46,#54,#20,#31,#39,#38,#37,#2e
	db #20,#44,#48,#41
;
;
.init_music
.play_music
.l2c15		; play
;
	call l2c20
	call l2db7
	jp l36f8
.l2c1e
	db #00
.l2c1f
	ex af,af'
.l2c20
	ld a,(l2c1e)
	or a
	jr z,l2c38
	ld (l2c1f),a
	xor a
	ld (l2c1e),a
	ld l,a
	ld h,a
	ld (l36c6),hl
	ld (l36c8),hl
	ld (l36ca),hl
.l2c38
	call l2c88
	ld a,(l2c1f)
	or a
	jp m,l2c57
	xor a
	ld (l36b8),a
	ld (l36b9),a
	ld (l36b7),a
	ld a,#0f
	ld (l36c0),a
	ld (l36c1),a
	ld (l36c2),a
.l2c57
	ld a,(l2c1f)
	or #80
	ld (l2c1f),a
	and #7f
	add a
	ld l,a
	ld h,#00
	ld de,l2c6e
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	jp (hl)
.l2c6e
	dw l2c94,l2f12,l2f56,l2f86
	dw l3014,l304b,l307b,l30af
	dw l30df,l30e6,l310d,l310d
	dw l3133
.l2c88
	ld a,(l2c1f)
	or a
	ret nz
	xor a
	ld (l36c4),a
	ld (l36c5),a
.l2c94
	ret
.l2c95
	add hl,bc
	ld a,(hl)
	or a
	ret z
	add a
	ld l,a
	ld h,#00
	cp #02
	jr z,l2ca6
	sla e
	ld d,#00
	add hl,de
.l2ca6
	ld de,l35f5
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l36ca),de
	ld a,(l36c2)
	ld (l36bf),a
	xor a
	ld (l36d0),a
	ld (l36bc),a
	ret
.l2cbf
	add hl,bc
	ld a,(hl)
	or a
	ret z
	add a
	ld l,a
	ld h,#00
	cp #02
	jr z,l2cd0
	sla e
	ld d,#00
	add hl,de
.l2cd0
	ld de,l35f5
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l36c8),de
	ld a,(l36c1)
	ld (l36be),a
	xor a
	ld (l36cf),a
	ld (l36bb),a
	ret
.l2ce9
	ld (l2d0e),a
	ld a,(l36ce)
	and a
	jr z,l2cff
	ld a,(l36ba)
	inc a
	cp e
	jp nz,l2cfb
	xor a
.l2cfb
	ld (l36ba),a
	ret nz
.l2cff
	ld a,#01
	ld (l36ce),a
	ld a,(l36bd)
	and a
	ret z
	dec a
	ld (l36bd),a
.l2d0e equ $ + 1
	xor #00
	ld (l36c3),a
	ret
.l2d13
	ld (l2d38),a
	ld a,(l36cf)
	and a
	jr z,l2d29
	ld a,(l36bb)
	inc a
	cp e
	jp nz,l2d25
	xor a
.l2d25
	ld (l36bb),a
	ret nz
.l2d29
	ld a,#01
	ld (l36cf),a
	ld a,(l36be)
	and a
	ret z
	dec a
	ld (l36be),a
.l2d38 equ $ + 1
	xor #00
	ld (l36c4),a
	ret
.l2d3d
	ld (l2d62),a
	ld a,(l36d0)
	and a
	jr z,l2d53
	ld a,(l36bc)
	inc a
	cp e
	jp nz,l2d4f
	xor a
.l2d4f
	ld (l36bc),a
	ret nz
.l2d53
	ld a,#01
	ld (l36d0),a
	ld a,(l36bf)
	and a
	ret z
	dec a
	ld (l36bf),a
.l2d62 equ $ + 1
	xor #00
	ld (l36c5),a
	ret
.l2d67
	ld hl,(l36ca)
	ld a,h
	or l
	ret z
	ld a,(l36cc)
	inc a
	cp d
	jp nz,l2d76
	xor a
.l2d76
	ld (l36cc),a
	ret nz
	ld hl,(l36ca)
	ld d,#00
	ld a,(l36cd)
	xor #ff
	ld (l36cd),a
	jr z,l2d8e
	add hl,de
	ld (l36ca),hl
	ret
.l2d8e
	and a
	sbc hl,de
	ld (l36ca),hl
	ret
.l2d95
	ld bc,(l36b8)
	ld a,(l36b7)
	inc a
	cp e
	jp nz,l2da2
	xor a
.l2da2
	ld (l36b7),a
	ret
.l2da6
	ld hl,(l36b8)
	inc hl
	ld (l36b8),hl
	and a
	sbc hl,de
	ret nz
	ld a,#09
	ld (l2c1f),a
	ret
.l2db7
	call l2e12
	ld a,(l2e78)
	or a
	ret z
	ld hl,(l2e79)
	dec hl
	ld (l2e79),hl
	ld a,h
	or l
	jr nz,l2dd0
	ld a,(l2e78)
	ld (l2e80),a
.l2dd0
	ld a,(l2e7f)
	and #0f
	ld e,a
	ld a,(l2e7f)
	and #f0
	rra
	rra
	rra
	rra
	call l2ce9
	ld a,(l2e7b)
	ld hl,l2e7c
	cp (hl)
	jr z,l2ded
	inc (hl)
	ret
.l2ded
	xor a
	ld (l2e7c),a
	ld hl,l2e7e
	ld a,(l2e77)
	add (hl)
	ld (l2e77),a
	ld (l3740),a
	and #f0
	rra
	rra
	rra
	rra
	ld (l36c7),a
	ld a,(l2e77)
	add a
	add a
	add a
	add a
	ld (l36c6),a
	ret
.l2e12
	ld a,(l2e81)
	and a
	jr z,l2e22
	ld (l2e80),a
	xor a
	ld (l2e81),a
	ld (l3008),a
.l2e22
	ld a,(l2e80)
	and a
	ret z
	cp #01
	jr nz,l2e2e
	ld (l3008),a
.l2e2e
	dec a
	add a
	add a
	add a
	ld c,a
	ld b,#00
	ld hl,l2e82
	add hl,bc
	ld a,(hl)
	ld (l2e77),a
	inc hl
	ld a,(hl)
	ld (l373f),a
	inc hl
	ld a,(hl)
	ld (l2e7f),a
	inc hl
	ld a,(hl)
	ld (l2e7e),a
	inc hl
	ld a,(hl)
	ld (l2e7b),a
	inc hl
	ld a,(hl)
	ld (l2e78),a
	inc hl
	ld a,(hl)
	ld (l2e79),a
	inc hl
	ld a,(hl)
	ld (l2e7a),a
	ld a,(l36c0)
	ld (l36bd),a
	xor a
	ld (l2e7c),a
	ld (l36ce),a
	ld (l36ba),a
	ld (l2e80),a
	ld (l36c6),a
	ret
.l2e7e equ $ + 7
.l2e7c equ $ + 5
.l2e7b equ $ + 4
.l2e7a equ $ + 3
.l2e79 equ $ + 2
.l2e78 equ $ + 1
.l2e77
	db #00,#01,#00,#00,#00,#00,#00,#00
.l2e82 equ $ + 3
.l2e81 equ $ + 2
.l2e80 equ $ + 1
.l2e7f
	db #00,#00,#00,#00,#39,#10,#00,#00
	db #00,#e8,#fd,#00,#31,#02,#01,#00
	db #01,#64,#00,#0b,#31,#01,#00,#00
	db #01,#01,#00,#02,#31,#01,#00,#00
	db #01,#01,#00,#00,#31,#04,#ff,#00
	db #01,#de,#00,#01,#30,#02,#b9,#01
	db #01,#3c,#00,#dc,#38,#05,#41,#01
	db #01,#3c,#00,#0f,#31,#02,#00,#00
	db #01,#0c,#00,#00,#38,#02,#16,#02
	db #01,#50,#00,#08,#38,#02,#00,#00
	db #01,#50,#00,#00,#38,#02,#08,#04
	db #01,#50,#00,#0a,#38,#0f,#01,#03
	db #01,#82,#00,#64,#30,#04,#2c,#00
	db #01,#78,#00,#ff,#31,#0f,#01,#04
	db #01,#bc,#01,#de,#30,#01,#00,#00
	db #01,#0a,#00,#0e,#38,#01,#00,#00
	db #12,#0c,#00,#ff,#31,#20,#00,#00
	db #01,#90,#01,#0e,#38,#01,#00,#00
	db #01,#0c,#00
.l2f12
	call l36d1
	ld e,#02
	ld d,#03
	call l2d67
	ld e,#03
	call l2d95
	ret nz
	ld a,c
	and #3f
	ld c,a
	ld hl,l3184
	ld e,#18
	call l2c95
	ld a,(l36b8)
	and #f8
	cp #38
	jr z,l2f3f
	ld hl,l3144
	ld e,#30
	call l2cbf
.l2f3f
	ld a,c
	and #01
	jr z,l2f50
	ld a,c
	sra a
	and #07
	ld c,a
	ld hl,l2fe8
	call l3009
.l2f50
	ld de,#00b0
	jp l2da6
.l2f56
	call l36de
	ld e,#02
	ld d,#03
	call l2d67
	ld e,#06
	call l2d95
	ret nz
	ld hl,l31d4
	ld e,#18
	call l2c95
	ld hl,l31c4
	ld e,#24
	call l2cbf
	ld a,c
	and #0f
	ld c,a
	ld hl,l2ff0
	call l3009
	ld de,#0010
	jp l2da6
.l2f86
	ld a,(l36c2)
	or a
	jr z,l2fa9
	ld a,(l30f9)
	cp #10
	jr nz,l2fa9
	ld a,(l36b8)
	ld e,a
	ld a,#80
	sub e
	sra a
	sra a
	sra a
	ld (l36c2),a
	ld (l36c1),a
	ld (l36c0),a
.l2fa9
	call l36de
	ld e,#01
	ld d,#06
	call l2d67
	ld e,#06
	call l2d95
	ret nz
	ld hl,l31e4
	ld e,#24
	call l2c95
	ld hl,l3264
	ld e,#18
	call l2cbf
	ld a,(l36b8)
	cp #7c
	jr z,l2fda
	ld a,c
	and #07
	ld c,a
	ld hl,l2fe0
	call l3009
.l2fda
	ld de,#0080
	jp l2da6
.l2fe0
	db #00,#00,#00,#00,#02,#00,#00,#00
.l2fe8
	db #03,#00,#03,#00,#04,#03,#04,#04
.l2ff0
	db #05,#00,#00,#00,#00,#00,#00,#04
	db #03,#03,#00,#04,#03,#03,#00,#04
.l3000
	db #04,#00,#00,#00,#03,#00,#00,#00
.l3008
	db #01
.l3009
	ld a,(l3008)
	or a
	ret z
	add hl,bc
	ld a,(hl)
	ld (l2e80),a
	ret
.l3014
	call l36eb
	ld e,#02
	ld d,#01
	call l2d67
	ld e,#06
	call l2d95
	ret nz
	ld hl,l3364
	ld e,#18
	call l2cbf
	ld hl,l32e4
	ld e,#24
	call l2c95
	ld a,(l36b8)
	cp #7c
	jr z,l3045
	ld a,c
	and #07
	ld c,a
	ld hl,l2fe0
	call l3009
.l3045
	ld de,#0080
	jp l2da6
.l304b
	call l36de
	ld e,#02
	ld d,#03
	call l2d67
	ld e,#06
	call l2d95
	ret nz
	ld hl,l3464
	ld e,#18
	call l2cbf
	ld hl,l33e4
	ld e,#24
	call l2c95
	ld a,c
	and #07
	ld c,a
	ld hl,l2fe8
	call l3009
	ld de,#0080
	jp l2da6
.l307b
	call l36eb
	ld e,#02
	ld d,#03
	call l2d67
	ld e,#06
	call l2d95
	ret nz
	ld a,c
	and #3f
	ld c,a
	ld hl,l3524
	ld e,#18
	call l2cbf
	ld hl,l34e4
	ld e,#24
	call l2c95
	ld a,c
	and #07
	ld c,a
	ld hl,l2fe0
	call l3009
	ld de,#0080
	jp l2da6
.l30af
	call l36eb
	ld e,#01
	ld d,#06
	call l2d67
	ld e,#06
	call l2d95
	ret nz
	ld hl,l359c
	ld e,#18
	call l2cbf
	ld hl,l3564
	ld e,#24
	call l2c95
	ld a,c
	and #07
	ld c,a
	ld hl,l3000
	call l3009
	ld de,#0028
	jp l2da6
.l30df
	xor a
	ld (l30f9),a
	ld (l36cc),a
.l30e6
	ld hl,l30fb
	ld de,(l30f9)
	add hl,de
	ld a,(hl)
	ld (l2c1f),a
	ld hl,l30f9
	inc (hl)
	jp l2c20
.l30fb equ $ + 2
.l30f9
	db #00,#00,#01,#02,#03,#04,#05,#01
	db #02,#06,#07,#0b,#03,#04,#05,#01
	db #02,#03,#0c
	ex af,af'
.l310d
	call l36d1
	ld e,#01
	ld d,#06
	call l2d67
	ld e,#03
	call l2d95
	ret nz
	ld hl,l35d4
	ld e,#18
	call l2cbf
	ld hl,l35d4
	ld e,#1f
	call l2c95
	ld de,#0018
	jp l2da6
.l3133		; end music
	ld a,#0f
	ld (l36c0),a
	ld (l36c1),a
	ld (l36c2),a
	ld de,#00c8
	jp l2da6
.l3144
	db #00,#11,#00,#00,#00,#11,#00,#00
	db #00,#11,#00,#00,#00,#11,#00,#11
	db #00,#11,#00,#11,#00,#11,#00,#00
	db #00,#11,#00,#00,#00,#11,#00,#00
	db #00,#11,#00,#00,#00,#11,#00,#00
	db #00,#11,#00,#00,#00,#11,#00,#11
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0c,#0d,#0e,#0f,#10,#11,#12
.l3184
	db #00,#11,#00,#00,#00,#11,#00,#00
	db #00,#14,#00,#15,#00,#11,#00,#00
	db #00,#11,#00,#00,#00,#0f,#00,#00
	db #00,#0e,#00,#00,#00,#0f,#00,#00
	db #00,#11,#00,#00,#00,#11,#00,#00
	db #00,#14,#00,#15,#00,#0f,#00,#11
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#11,#12,#13,#14,#15,#16,#17
.l31c4
	db #1e,#1e,#00,#1e,#1f,#1f,#00,#1f
	db #20,#20,#00,#20,#21,#21,#00,#21
.l31d4
	db #08,#12,#00,#12,#13,#13,#00,#13
	db #14,#14,#00,#14,#15,#15,#00,#15
.l31e4
	db #19,#1a,#1d,#00,#1d,#00,#1a,#1d
	db #1f,#1d,#19,#00,#18,#16,#00,#00
	db #19,#1a,#1d,#00,#1d,#1d,#1a,#1d
	db #22,#22,#20,#00,#1d,#00,#00,#1d
	db #1d,#1f,#22,#00,#22,#00,#22,#00
	db #1f,#00,#1d,#00,#19,#00,#18,#16
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #19,#1a,#1d,#00,#1d,#00,#1a,#1d
	db #1f,#1d,#19,#00,#18,#16,#00,#00
	db #19,#1a,#1d,#00,#1f,#00,#1a,#1d
	db #00,#00,#00,#00,#00,#1d,#1f,#20
	db #21,#21,#20,#1f,#1d,#1a,#1d,#00
	db #1d,#1c,#1b,#19,#00,#18,#16,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3264
	db #0a,#00,#0a,#00,#71,#0e,#13,#11
	db #0a,#00,#0a,#00,#07,#08,#09,#00
	db #0a,#00,#0a,#00,#0d,#0e,#13,#11
	db #0a,#00,#0a,#00,#13,#12,#11,#09
	db #0a,#00,#0a,#00,#0d,#0e,#13,#11
	db #0a,#00,#0a,#00,#07,#08,#09,#00
	db #0a,#00,#16,#00,#07,#00,#13,#00
	db #08,#00,#14,#00,#09,#00,#15,#00
	db #0a,#00,#0a,#00,#71,#0e,#13,#11
	db #0a,#00,#0a,#00,#07,#08,#09,#00
	db #0a,#00,#0a,#00,#0d,#0e,#13,#11
	db #0a,#00,#0a,#00,#13,#12,#11,#09
	db #11,#00,#11,#00,#14,#15,#1a,#18
	db #11,#00,#11,#00,#0e,#0f,#11,#00
	db #0a,#00,#0a,#00,#0d,#0e,#13,#11
	db #0a,#00,#00,#00,#00,#00,#00,#00
.l32e4
	db #1d,#00,#00,#1d,#1f,#1d,#20,#21
	db #00,#00,#00,#00,#1f,#00,#1a,#00
	db #1d,#00,#1d,#00,#1e,#1f,#1a,#1d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #1d,#00,#00,#1d,#1f,#1d,#20,#21
	db #00,#00,#00,#00,#1f,#00,#1e,#00
	db #1f,#00,#1f,#00,#1f,#1d,#1a,#16
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #16,#17,#1a,#00,#1a,#00,#16,#1a
	db #21,#20,#1f,#00,#1f,#1e,#1d,#00
	db #1c,#00,#1c,#00,#1c,#1b,#1c,#18
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #14,#15,#18,#00,#18,#00,#15,#18
	db #1d,#1c,#1b,#00,#1d,#1e,#1f,#21
	db #22,#00,#22,#00,#1f,#1d,#1a,#00
	db #1d,#00,#00,#00,#00,#00,#00,#00
.l3364
	db #11,#00,#11,#00,#14,#15,#1a,#18
	db #11,#00,#11,#00,#0e,#0f,#11,#00
	db #0a,#00,#0a,#00,#0d,#0e,#13,#11
	db #0a,#00,#0a,#00,#13,#12,#11,#09
	db #11,#00,#11,#00,#14,#15,#1a,#18
	db #11,#00,#11,#00,#0e,#0f,#11,#00
	db #0a,#00,#0a,#00,#0d,#0e,#13,#11
	db #0a,#00,#0a,#00,#09,#00,#08,#00
	db #07,#00,#07,#00,#0a,#0b,#10,#0e
	db #07,#00,#07,#00,#10,#0f,#0e,#00
	db #0c,#00,#0c,#00,#0f,#10,#15,#13
	db #0c,#00,#0c,#00,#15,#14,#13,#00
	db #11,#00,#11,#00,#14,#15,#1a,#18
	db #11,#00,#11,#00,#1a,#19,#18,#00
	db #16,#00,#16,#00,#0d,#0e,#13,#00
	db #11,#00,#00,#00,#00,#00,#00,#00
.l33e4
	db #0a,#00,#0a,#00,#1d,#1c,#1d,#1c
	db #1d,#1f,#00,#1d,#00,#00,#1b,#00
	db #0a,#00,#0a,#00,#1a,#19,#1a,#19
	db #1a,#1b,#00,#1a,#00,#00,#19,#00
	db #0c,#00,#0c,#00,#18,#17,#18,#17
	db #18,#1a,#00,#18,#00,#17,#16,#00
	db #15,#00,#15,#00,#16,#16,#00,#00
	db #17,#00,#17,#00,#18,#18,#00,#00
	db #0a,#00,#0a,#00,#1d,#1c,#1d,#1c
	db #1d,#1f,#00,#1d,#00,#00,#1b,#00
	db #0a,#00,#0a,#00,#1a,#19,#1a,#19
	db #1a,#1b,#00,#1a,#00,#00,#19,#00
	db #0c,#00,#0c,#00,#18,#17,#18,#17
	db #18,#1a,#00,#18,#00,#17,#18,#00
	db #19,#19,#00,#19,#1a,#1a,#00,#1a
	db #1b,#1b,#00,#1b,#1c,#1c,#00,#1c
.l3464
	db #0a,#00,#0a,#00,#26,#25,#26,#25
	db #26,#27,#00,#26,#00,#00,#24,#00
	db #0a,#00,#0a,#00,#22,#21,#22,#21
	db #22,#24,#00,#22,#00,#00,#22,#00
	db #0c,#00,#0c,#00,#21,#20,#21,#20
	db #21,#22,#00,#21,#00,#20,#1f,#00
	db #1d,#00,#1d,#00,#1f,#1f,#00,#00
	db #20,#00,#20,#00,#21,#21,#00,#00
	db #0a,#00,#0a,#00,#26,#25,#26,#25
	db #26,#27,#00,#26,#00,#00,#24,#00
	db #0a,#00,#0a,#00,#22,#21,#22,#21
	db #22,#24,#00,#22,#00,#00,#22,#00
	db #0c,#00,#0c,#00,#21,#20,#21,#20
	db #21,#22,#00,#21,#00,#20,#21,#00
	db #0d,#0d,#00,#0d,#0e,#0e,#00,#0e
	db #0f,#0f,#00,#0f,#10,#10,#00,#10
.l34e4
	db #19,#1a,#1d,#00,#1d,#00,#1a,#1d
	db #1f,#1f,#1e,#1d,#1d,#00,#00,#00
	db #19,#1a,#1d,#00,#1d,#00,#1a,#1d
	db #00,#19,#00,#00,#18,#16,#00,#00
	db #19,#1a,#1d,#00,#1d,#00,#1a,#1d
	db #1f,#1f,#1e,#1d,#1d,#00,#00,#00
	db #19,#1a,#1d,#00,#1d,#00,#1a,#1d
	db #22,#22,#1f,#22,#22,#00,#00,#00
.l3524
	db #16,#00,#16,#00,#16,#19,#1a,#00
	db #18,#00,#16,#00,#16,#00,#11,#13
	db #16,#00,#16,#00,#16,#19,#1a,#00
	db #18,#00,#16,#00,#16,#00,#11,#13
	db #16,#00,#16,#00,#16,#19,#1a,#00
	db #18,#00,#16,#00,#16,#00,#11,#13
	db #16,#00,#16,#00,#16,#19,#1a,#00
	db #18,#00,#16,#00,#16,#00,#11,#13
.l3564
	db #19,#1a,#1d,#00,#1d,#00,#1a,#1d
	db #1f,#1f,#1e,#1d,#00,#1d,#1f,#22
	db #22,#22,#21,#20,#00,#00,#1f,#1f
	db #1e,#1d,#00,#00,#1c,#1c,#1b,#1a
	db #00,#00,#19,#19,#18,#16,#00,#00
	db #0c,#0d,#0e,#0f,#10,#11,#12,#13
	db #14,#15,#16,#17,#18,#19,#1a,#1b
.l359c
	db #16,#00,#16,#00,#16,#19,#1a,#00
	db #18,#00,#16,#00,#16,#00,#11,#13
	db #16,#00,#16,#00,#16,#19,#1a,#00
	db #18,#00,#16,#00,#16,#00,#11,#13
	db #16,#00,#16,#00,#16,#16,#00,#00
	db #11,#12,#13,#14,#15,#16,#17,#18
	db #19,#18,#17,#16,#15,#14,#13,#12
.l35d4
	db #00,#11,#12,#13,#14,#15,#16,#17
	db #18,#19,#1a,#1b,#1c,#1d,#1e,#1f
	db #20,#21,#20,#1f,#1e,#1d,#1c,#1b
	db #1a,#19,#18,#17,#16,#15,#14,#13
	db #12
.l35f5
	dw #0000,#0000
	dw #0e41,#0d74,#0cb3,#0bfd
	dw #0b50,#0aae,#0a14,#0983
	dw #08fb,#087a,#0800,#078d
	dw #0721,#06ba,#0659,#05fe
	dw #05a8,#0557,#050a,#04c2
	dw #047d,#043d,#0400,#03c7
	dw #0390,#035d,#032d,#02ff
	dw #02d4,#02ab,#0285,#0261
	dw #023f,#021e,#0200,#01e3
	dw #01c8,#01af,#0196,#0180
	dw #016a,#0156,#0143,#0130
	dw #011f,#010f,#0100,#00f2
	dw #00e4,#00d7,#00cb,#00c0
	dw #00b5,#00ab,#00a1,#0098
	dw #0090,#0088,#0080,#0079
	dw #0071,#006c,#0066,#0060
	dw #005b,#0055,#0051,#004c
	dw #0048,#0044,#0040,#003c
	dw #0039,#0036,#0033,#0030
	dw #002d,#002b,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0017,#0015,#0014,#0013
	dw #0012,#0011,#0010
.l36be equ $ + 7
.l36bd equ $ + 6
.l36bc equ $ + 5
.l36bb equ $ + 4
.l36ba equ $ + 3
.l36b9 equ $ + 2
.l36b8 equ $ + 1
.l36b7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l36c6 equ $ + 7
.l36c5 equ $ + 6
.l36c4 equ $ + 5
.l36c3 equ $ + 4
.l36c2 equ $ + 3
.l36c1 equ $ + 2
.l36c0 equ $ + 1
.l36bf
	db #00,#0f,#08,#04,#00,#00,#00,#00
.l36c7
	db #00
.l36cd equ $ + 5
.l36cc equ $ + 4
.l36ca equ $ + 2
.l36c8
	db #00,#00,#00,#00,#00,#00
.l36d0 equ $ + 2
.l36cf equ $ + 1
.l36ce
	db #00,#00,#00
.l36d1
	xor a
	ld e,#01
	call l2d13
	xor a
	ld e,#02
	call l2d3d
	ret
.l36de
	xor a
	ld e,#02
	call l2d13
	xor a
	ld e,#02
	call l2d3d
	ret
.l36eb
	xor a
	ld e,#01
	call l2d13
	xor a
	ld e,#01
	call l2d3d
	ret
.l36f8
	ld hl,(l36c6)
	xor a
	call l3741
	ld hl,(l36c8)
	ld a,#02
	call l3741
	ld hl,(l36ca)
	ld a,#04
	call l3741
	ld a,(l3740)
	ld c,a
	ld a,#06
	call l3749
	ld a,(l36c3)
	ld c,a
	ld a,#08
	call l3749
	ld a,(l36c4)
	ld c,a
	ld a,#09
	call l3749
	ld a,(l36c5)
	ld c,a
	ld a,#0a
	call l3749
	ld a,(l373f)
	and #3f
	ld c,a
	ld a,#07
	call l3749
	ret
.l3740 equ $ + 1
.l373f
	dw #0038
.l3741
	ld c,l
	ld e,a
	call l3749
	ld a,e
	inc a
	ld c,h
.l3749
	push af
	ld b,#f7
	ld a,#82
	out (c),a
	ld b,#f6
	ld a,#c0
	out (c),a
	ld b,#f4
	pop af
	out (c),a
	ld b,#f6
	xor a
	out (c),a
	ld a,#80
	out (c),a
	ld b,#f4
	ld a,c
	out (c),a
	ld b,#f6
	xor a
	out (c),a
	ret
	db #ff,#00
;
; test player !
;
; ld d,#01
; .l3773
; ld b,#f5
; in a,(c)
; rra
; jr nc,l3773
; .l377a
; in a,(c)
; rra
; jr c,l377a
; push bc
; push de
; push hl
; call l2c15
; pop hl
; pop de
; pop bc
; dec d
; jr nz,l3773
; ret
;
; #2c01
; db "TYRONESOFT 1987. DHA"
;
.music_info
	db "The Wizard's Ultra Demo (1988)(Division of High-Tech Animation)(Tyronesoft)",0
	db "",0

	read "music_end.asm"
