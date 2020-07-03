; Music of Sooty and Sweep (1989)(Alternative Software)()()
; Ripped by Megachur the 27/07/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SOOTYANS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #4b00

	read "music_header.asm"

	jp l4b1e
	jp l4ce1
	jp l4b65
.l4b0a equ $ + 1
.music_end
.l4b09
	db #00,#3c,#c9,#c9,#c9,#00
.l4b0f
	ld hl,#0000
	ld (l4b24),hl
	ld c,#07
	ld a,#2a
	call l4e00
	jr l4b26
;
.play_music
.l4b1e
;
	push af
	push bc
	push de
	push hl
	push ix
.l4b24
	jr l4b0f
.l4b26
	call l4ced
	ld hl,l4c93
	ld a,(hl)
	ld bc,(l4b0a)
	sub c
	ld (hl),a
	sbc a
	ld (l4c92),a
	jr nc,l4b3d
	ld a,#f0
	add (hl)
	ld (hl),a
.l4b3d
	call l4c94
	ld ix,l4b7d
	call l4bc3
	ld ix,l4b8f
	call l4bc3
	ld ix,l4ba1
	call l4bc3
	sub a
	ld (l4c92),a
	ld c,#00
	call l4e2a
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
;
.stop_music
.l4b65
;
	push af
	push bc
	push de
	push hl
	sub a
	ld (l4b09),a
	ld hl,l4e4e
	ld (l4cd9),hl
	call l4d1e
	pop hl
	pop de
	pop bc
	pop af
	ret
.l4b7d equ $ + 2
.l4b7b
	db #ff,#ff,#7b,#4b,#00,#00,#04,#0a
.l4b8a equ $ + 7
.l4b86 equ $ + 3
.l4b85 equ $ + 2
.l4b83
	db #7b,#4b,#00,#02,#76,#4e,#01,#01
.l4b8f equ $ + 4
.l4b8e equ $ + 3
.l4b8b
	db #00,#00,#00,#00,#7b,#4b,#00,#00
.l4b98 equ $ + 5
.l4b97 equ $ + 4
.l4b95 equ $ + 2
	db #00,#08,#7b,#4b,#01,#02,#56,#4e
.l4ba1 equ $ + 6
.l4ba0 equ $ + 5
.l4b9d equ $ + 2
.l4b9c equ $ + 1
	db #01,#01,#00,#08,#00,#00,#7b,#4b
.l4baa equ $ + 7
.l4ba9 equ $ + 6
.l4ba7 equ $ + 4
	db #00,#00,#02,#09,#7b,#4b,#00,#02
.l4bb2 equ $ + 7
.l4baf equ $ + 4
.l4bae equ $ + 3
	db #79,#4b,#01,#01,#00,#05,#00,#00
	db #38,#73,#39,#30,#41,#49,#48,#49
	db #30,#60,#3e,#58,#79,#7c,#75,#89
.l4bc3
	call l4c26
	dec (ix+#0d)
	ret nz
	ld a,(ix+#0c)
	ld (ix+#0d),a
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(hl)
	inc hl
	inc a
	jr z,l4c13
	dec a
	ld c,(ix+#05)
	call l4df9
	ld a,(hl)
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld b,a
	ld a,(ix+#0f)
	and #03
	jr z,l4bfe
	ld a,#1f
	sub b
	ld c,#06
	bit 2,(ix+#0f)
	call nz,l4e00
.l4bfe
	ld a,(ix+#02)
	add (ix+#03)
	ld (ix+#02),a
	add b
	call l4d52
	ex de,hl
	ld c,(ix+#04)
	call l4dec
	ret
.l4c13
	bit 1,(ix+#0f)
	ret z
	res 1,(ix+#0f)
	ld (ix+#0e),a
	ld c,#07
	ld a,#38
	jp l4e00
.l4c26
	ld a,(l4c92)
	or a
	ret z
	dec (ix+#08)
	ret nz
	ld a,(ix+#09)
	ld (ix+#08),a
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld a,(hl)
	inc a
	ret z
	inc hl
	dec a
	ld (ix+#06),l
	ld (ix+#07),h
	or a
	ret z
	bit 1,(ix+#0f)
	ret nz
	bit 0,(ix+#0f)
	jr nz,l4c76
	rlca
	rlca
	add #7a
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	add (hl)
	inc hl
	ld (ix+#02),a
.l4c62
	call l4de7
	ld (ix+#0d),#01
	ld (ix+#0c),e
	ld (ix+#03),d
	ld (ix+#00),l
	ld (ix+#01),h
	ret
.l4c76
	dec a
	rlca
	rlca
	ld c,a
	ld b,#00
	ld hl,l4ea0
	add hl,bc
	call l4de7
	ld a,(hl)
	ld c,#07
	call l4e00
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#02),a
	ex de,hl
	jr l4c62
.l4c92
	nop
.l4c93
	nop
.l4c94
	ld a,(l4b85)
	dec a
	ret nz
	ld hl,(l4b83)
	ld a,(hl)
	inc a
	ret nz
	ld hl,(l4cd9)
	inc hl
	ld a,(hl)
	dec hl
	cp #00
	jr nz,l4cb7
	ld a,(hl)	; stop music !?
	inc hl
	inc hl
	ld hl,l4e4e
	ld (l4cd9),hl
	sub a
	ld (l4b09),a
	ret
.l4cb7
	call l4cdb
	ld (l4b86),a
	ld (l4b83),de
	call l4cdb
	ld (l4b98),a
	ld (l4b95),de
	call l4cdb
	ld (l4baa),a
	ld (l4ba7),de
	ld (l4cd9),hl
	ret
.l4cd9
	dw l4e4e
.l4cdb
	call l4de7
	ld a,(de)
	inc de
	ret
;
.init_music
.l4ce1
;
	push af
	ld a,#01
	ld (l4b09),a
	ld (l4cec),a
	pop af
	ret
.l4cec
	nop
.l4ced
	ld a,(l4cec)
	or a
	ret z
	ld de,l4ec6
	ld (l4cd9),de
	ld a,#01
	ld (l4b85),a
	ld (l4b97),a
	ld (l4ba9),a
	ld (l4b8a),a
	ld (l4b9c),a
	ld (l4bae),a
	ld a,#38
	ld c,#07
	call l4e00
	sub a
	ld (l4c92),a
	ld (l4c93),a
	ld (l4cec),a
.l4d1e
	ld hl,l4b7b
	ld (l4b83),hl
	ld (l4b95),hl
	ld (l4ba7),hl
	ld (l4b7d),hl
	ld (l4b8f),hl
	ld (l4ba1),hl
	sub a
	ld (l4b8b),a
	ld (l4b9d),a
	ld (l4baf),a
	ld (l4b8e),a
	ld (l4ba0),a
	ld (l4bb2),a
	ld c,#08
	sub a
	ld h,a
	ld l,a
	call l4e00
	inc c
	jp l4dec
.l4d52
	push af
	push bc
	push hl
	ld b,#02
	sub #04
.l4d59
	cp #30
	jr c,l4d62
	sub #30
	inc b
	jr l4d59
.l4d62
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l4d77
	add hl,de
	call l4de7
.l4d6d
	srl d
	rr e
	djnz l4d6d
	pop hl
	pop bc
	pop af
	ret
.l4d77
	dw #0eee,#0eb7,#0e81,#0e4b
	dw #0e17,#0de3,#0db0,#0d7e
	dw #0d4d,#0d1c,#0cec,#0cbc
	dw #0c8d,#0c5f,#0c32,#0c05
	dw #0bd9,#0bae,#0b83,#0b58
	dw #0b2f,#0b06,#0add,#0ab5
	dw #0a8e,#0a67,#0a41,#0a1b
	dw #09f6,#09d2,#09ae,#098a
	dw #0967,#0945,#0923,#0901
	dw #08e0,#08bf,#089f,#0880
	dw #0861,#0842,#0823,#0806
	dw #07e8,#07cb,#07ae,#0792
	db #2a,#45,#2b,#22,#33,#3b,#3a,#3b
	db #22,#52,#30,#4a,#4b,#4e,#47,#5b
.l4de7
	db #5e,#23,#56,#23,#c9
.l4dec
	push af
	ld a,l
	call l4e00
	inc c
	ld a,h
	call l4e00
	dec c
	pop af
	ret
.l4df9
	or a
	jr z,l4e00
	srl a
	add #08
.l4e00
	push af
	push bc
	call l4e18
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #80
	out (c),a
	xor #80
	out (c),a
	pop bc
	pop af
	ret
.l4e18
	push af
	ld b,#f4
	out (c),c
	ld bc,#f6c0
	in a,(c)
	or c
	out (c),a
	xor c
	out (c),a
	pop af
	ret
.l4e2a
	push bc
	push af
	push bc
	ld c,#0e
	call l4e18
	pop bc
	pop af
	ld b,#f7
	ld a,#92
	out (c),a
	push bc
	set 6,c
	ld b,#f6
	out (c),c
	ld b,#f4
	in a,(c)
	pop bc
	push af
	ld a,#82
	out (c),a
	pop af
	pop bc
	ret
.l4e4e
	db #00,#00,#01,#00,#00,#00,#01,#ff
	db #a0,#01,#00,#0f,#00,#08,#00,#04
	db #00,#04,#00,#03,#00,#03,#00,#03
	db #00,#03,#00,#02,#00,#02,#00,#02
	db #00,#01,#00,#01,#00,#00,#00,#ff
	db #00,#04,#00,#0a,#00,#07,#00,#06
	db #00,#06,#00,#05,#01,#05,#ff,#04
	db #01,#04,#ff,#03,#02,#03,#fe,#02
	db #02,#02,#fe,#02,#02,#02,#fe,#01
	db #02,#01,#fe,#01,#02,#01,#fe,#00
.l4ea0 equ $ + 2
	db #01,#ff,#a8,#4e,#28,#3c,#bf,#4e
	db #2a,#00,#01,#fc,#0f,#08,#04,#04
	db #07,#04,#04,#03,#03,#03,#02,#02
	db #02,#02,#01,#02,#01,#01,#00,#00
	db #ff,#01,#00,#0c,#0f,#00,#00,#ff
.l4ec6
	db #5e,#4f,#99,#4f,#24,#50,#5e,#4f
	db #ab,#4f,#24,#50,#61,#4f,#99,#4f
	db #24,#50,#6b,#4f,#9c,#4f,#2d,#50
	db #6e,#4f,#ab,#4f,#24,#50,#78,#4f
	db #ae,#4f,#2d,#50,#7b,#4f,#99,#4f
	db #24,#50,#6b,#4f,#9c,#4f,#2d,#50
	db #85,#4f,#ab,#4f,#24,#50,#8f,#4f
	db #bd,#4f,#2d,#50,#61,#4f,#99,#4f
	db #2d,#50,#6b,#4f,#0f,#50,#2d,#50
	db #6e,#4f,#ab,#4f,#2d,#50,#78,#4f
	db #18,#50,#2d,#50,#ee,#4f,#99,#4f
	db #24,#50,#f8,#4f,#ab,#4f,#24,#50
	db #02,#50,#ab,#4f,#24,#50,#0c,#50
	db #c2,#4f,#2d,#50,#5e,#4f,#cb,#4f
	db #24,#50,#02,#50,#ab,#4f,#24,#50
	db #0c,#50,#d4,#4f,#24,#50,#5e,#4f
	db #d9,#4f,#36,#50,#21,#50,#eb,#4f
	db #5e,#4f,#5e,#4f,#5e,#4f,#5e,#4f
	db #5e,#4f,#5e,#4f,#5e,#4f,#00,#00
	db #10,#00,#ff,#02,#11,#0f,#11,#0f
	db #11,#12,#0c,#0d,#ff,#10,#0f,#ff
	db #02,#0f,#0d,#0f,#0d,#0f,#11,#0a
	db #0c,#ff,#10,#0d,#ff,#02,#11,#0f
	db #11,#0f,#11,#0f,#11,#0d,#ff,#02
	db #0f,#0d,#0f,#11,#0f,#00,#00,#00
	db #ff,#02,#14,#16,#12,#14,#11,#12
	db #0f,#11,#ff,#08,#11,#0d,#01,#0f
	db #00,#00,#00,#00,#18,#19,#1b,#1d
	db #00,#00,#00,#1b,#ff,#08,#0f,#0c
	db #01,#0d,#00,#00,#00,#00,#16,#18
	db #19,#1b,#00,#00,#00,#19,#ff,#04
	db #14,#12,#11,#0f,#02,#0d,#2c,#2a
	db #2c,#29,#2c,#2a,#2c,#02,#2c,#25
	db #2a,#25,#29,#25,#27,#25,#04,#0d
	db #25,#20,#1e,#01,#1d,#00,#00,#00
	db #1b,#00,#00,#00,#19,#00,#00,#00
	db #00,#19,#1d,#20,#ff,#10,#25,#ff
	db #02,#11,#0f,#11,#0f,#11,#00,#0d
	db #00,#ff,#02,#0a,#08,#0a,#08,#0a
	db #00,#11,#00,#ff,#02,#0c,#0d,#0f
	db #11,#12,#14,#16,#18,#ff,#10,#19
	db #ff,#02,#08,#0a,#0c,#0d,#0f,#11
	db #12,#14,#02,#0c,#0d,#0f,#11,#12
	db #14,#16,#18,#10,#19,#ff,#02,#01
	db #00,#02,#02,#00,#00,#02,#00,#02
	db #01,#00,#02,#01,#01,#00,#02,#00
	db #02,#01,#00,#02,#02,#02,#02,#02
	db #02,#fe,#fd
;
.music_info
	db "Sooty and Sweep (1989)(Alternative Software)()",0
	db "",0

	read "music_end.asm"
