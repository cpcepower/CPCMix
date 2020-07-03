; Music of Thomas The Tank Engine (1990)(Alternative Software)()()
; Ripped by Megachur the 18/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THOMATTE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #b9f0

	read "music_header.asm"

	jp lba13	; play
	jp lbc2b	; init
	ret
	ret
	ret
	jp lba5a
.lba03 equ $ + 7
.lb9fe equ $ + 2
	db #08,#08,#00,#c9,#c9,#c9,#01,#40
	db #21,#00,#00
	ld (lba19),hl
	ld c,#07
	ld a,#2a
	call lbd38
	jr lba1b
;
.play_music
.lba13
;
	push af
	push bc
	push de
	push hl
	push ix
.lba19
	db #18,#e9
.lba1b
	call lbc37
	ld hl,lbb86
	ld a,(hl)
	ld bc,(lba03)
	sub c
	ld (hl),a
	sbc a
	ld (lbb85),a
	jr nc,lba32
	ld a,#f0
	add (hl)
	ld (hl),a
.lba32
	call lbb87
	ld ix,lba72
	call lbab8
	ld ix,lba84
	call lbab8
	ld ix,lba96
	call lbab8
	sub a
	ld (lbb85),a
	ld c,#00
	call lbd62
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
;
.stop_music
.lba5a
;
	push af
	push bc
	push de
	push hl
	sub a
	ld (lb9fe),a
	ld hl,lbd86
	ld (lbc21),hl
	call lbc68
	pop hl
	pop de
	pop bc
	pop af
	ret
.lba72 equ $ + 2
.lba70
	db #ff,#ff,#70,#ba,#00,#00,#04,#0a
.lba7f equ $ + 7
.lba7c equ $ + 4
.lba7b equ $ + 3
.lba7a equ $ + 2
.lba78
	db #70,#ba,#00,#02,#00,#00,#01,#01
.lba84 equ $ + 4
	db #00,#00,#00,#00,#70,#ba,#00,#00
.lba8e equ $ + 6
.lba8d equ $ + 5
.lba8c equ $ + 4
.lba8a equ $ + 2
	db #00,#08,#70,#ba,#01,#02,#6d,#ba
.lba96 equ $ + 6
.lba91 equ $ + 1
	db #01,#01,#00,#08,#00,#00,#70,#ba
.lba9f equ $ + 7
.lba9e equ $ + 6
.lba9c equ $ + 4
	db #00,#00,#02,#09,#70,#ba,#00,#02
.lbaa3 equ $ + 3
.lbaa0
	db #6d,#ba,#01,#01,#00,#05,#00,#00
	db #38,#73,#39,#30,#41,#49,#48,#49
	db #30,#60,#3e,#58,#79,#7c,#75,#89
.lbab8
	call lbb17
	dec (ix+#0d)
	ret nz
	ld a,(ix+#0c)
	ld (ix+#0d),a
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(hl)
	inc hl
	inc a
	jr z,lbb08
	dec a
	ld c,(ix+#05)
	call lbd31
	ld a,(hl)
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld b,a
	ld a,(ix+#0f)
	and #03
	jr z,lbaf3
	ld a,#1f
	sub b
	ld c,#06
	bit 2,(ix+#0f)
	call nz,lbd38
.lbaf3
	ld a,(ix+#02)
	add (ix+#03)
	ld (ix+#02),a
	add b
	call lbc89
	ex de,hl
	ld c,(ix+#04)
	call lbd24
	ret
.lbb08
	bit 1,(ix+#0f)
	ret z
	res 1,(ix+#0f)
	ld (ix+#0e),a
	jp lbd38
.lbb17
	ld a,(lbb85)
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
	jr nz,lbb69
	rlca
	rlca
	ld hl,lbcae
	add (hl)
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	add (hl)
	inc hl
	ld (ix+#02),a
.lbb55
	call lbd1f
	ld (ix+#0d),#01
	ld (ix+#0c),e
	ld (ix+#03),d
	ld (ix+#00),l
	ld (ix+#01),h
	ret
.lbb69
	dec a
	rlca
	rlca
	ld c,a
	ld b,#00
	ld hl,lbe10
	add hl,bc
	call lbd1f
	ld a,(hl)
	ld c,#07
	call lbd38
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#02),a
	ex de,hl
	jr lbb55
.lbb86 equ $ + 1
.lbb85
	db #00,#00
.lbb87
	ld a,(lba7a)
	dec a
	ret nz
	ld hl,(lba78)
	ld a,(hl)
	inc a
	ret nz
	ld hl,(lbc21)
.lbb95
	inc hl
	ld a,(hl)
	dec hl
	cp #00
	jr nz,lbbc2
	ld a,(hl)
	inc hl
	inc hl
	cp #0b
	jr z,lbbf1
	cp #40
	jr z,lbc01
	cp #34
	jr z,lbbe4
	cp #0d
	jr z,lbc0a
	cp #c9
	jr z,lbc1b
	cp #35
	jr z,lbc12
	ld hl,lbd86
	ld (lbc21),hl
	sub a
	ld (lb9fe),a
	ret
.lbbc2
	call lbc25
	ld (lba7b),a
	ld (lba78),de
	call lbc25
	ld (lba8d),a
	ld (lba8a),de
	call lbc25
	ld (lba9f),a
	ld (lba9c),de
	ld (lbc21),hl
	ret
.lbbe4
	call lbd1f
	ex de,hl
	ld (lbc23),de
	ld (lbc21),hl
	jr lbb95
.lbbf1
	call lbd1f
	ld (lba7c),de
	call lbd1f
	ld (lba8e),de
	jr lbb95
.lbc01
	call lbd1f
	ld (lbaa0),de
	jr lbb95
.lbc0a
	ld a,(hl)
	ld (lbcae),a
	inc hl
	inc hl
	jr lbb95
.lbc12
	ld a,(hl)
	ld (lba03),a
	inc hl
	inc hl
	jp lbb95
.lbc1b
	ld hl,(lbc23)
	jp lbb95
.lbc21
	add (hl)
	cp l
.lbc23
	add (hl)
	cp l
.lbc25
	call lbd1f
	ld a,(de)
	inc de
	ret
;
.init_music
.lbc2b
;
	push af
	ld a,#01
	ld (lb9fe),a
	ld (lbc36),a
	pop af
	ret
.lbc36
	db #00
.lbc37
	ld a,(lbc36)
	or a
	ret z
	ld de,lbe3b
	ld (lbc21),de
	ld a,#01
	ld (lba7a),a
	ld (lba8c),a
	ld (lba9e),a
	ld (lba7f),a
	ld (lba91),a
	ld (lbaa3),a
	ld a,#38
	ld c,#07
	call lbd38
	sub a
	ld (lbb85),a
	ld (lbb86),a
	ld (lbc36),a
.lbc68
	ld hl,lba70
	ld (lba78),hl
	ld (lba8a),hl
	ld (lba9c),hl
	ld (lba72),hl
	ld (lba84),hl
	ld (lba96),hl
	ld c,#08
	sub a
	ld h,a
	ld l,a
	call lbd38
	inc c
	jp lbd24
.lbc89
	push af
	push bc
	push hl
	ld b,#02
	sub #04
.lbc90
	cp #30
	jr c,lbc99
	sub #30
	inc b
	jr lbc90
.lbc99
	ld l,a
	ld h,#00
	add hl,hl
	ld de,lbcaf
	add hl,de
	call lbd1f
.lbca4
	srl d
	rr e
	djnz lbca4
	pop hl
	pop bc
	pop af
	ret
.lbcae
	db #70
.lbcaf
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
	ld hl,(#2b45)
	ld (#3b33),hl
	ld a,(#223b)
	ld d,d
	jr nc,lbd65
	ld c,e
	ld c,(hl)
	ld b,a
	ld e,e
.lbd1f
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ret
.lbd24
	push af
	ld a,l
	call lbd38
	inc c
	ld a,h
	call lbd38
	dec c
	pop af
	ret
.lbd31
	or a
	jr z,lbd38
	srl a
	add #08
.lbd38
	push af
	push bc
	call lbd50
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
.lbd50
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
.lbd62
	push bc
	push af
	push bc
.lbd65
	ld c,#0e
	call lbd50
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
.lbd86
	db #00,#00,#01,#00,#00,#00,#01,#ff
.lbd8e
	db #d0,#02,#00,#0f,#00,#0a,#00,#08
	db #00,#06,#00,#03,#00,#02,#00,#02
	db #00,#01,#00,#01,#00,#01,#00,#01
.lbdac equ $ + 6
	db #00,#01,#00,#00,#00,#ff,#00,#03
	db #00,#0f,#00,#08,#00,#06,#00,#03
	db #00,#03,#00,#03,#00,#03,#01,#03
	db #ff,#03,#01,#03,#ff,#03,#01,#03
	db #ff,#02,#01,#02,#ff,#02,#01,#02
	db #ff,#01,#00,#01,#00,#01,#00,#01
.lbdda equ $ + 4
	db #00,#00,#01,#ff,#00,#02,#00,#0f
	db #fe,#08,#ff,#06,#00,#03,#ff,#03
	db #ff,#03,#ff,#03,#fe,#03,#fe,#03
	db #fd,#03,#fd,#03,#fc,#03,#fc,#03
	db #fb,#03,#fb,#03,#fa,#03,#fa,#03
	db #f9,#03,#f9,#03,#f8,#03,#f8,#03
	db #f7,#03,#f7,#01,#f6,#01,#f6,#00
.lbe10 equ $ + 2
	db #01,#ff,#1c,#be,#2a,#00,#34,#be
	db #2a,#00,#27,#be,#2a,#00,#03,#00
	db #02,#00,#0a,#00,#04,#00,#00,#00
	db #ff,#04,#00,#08,#1e,#06,#18,#03
	db #15,#01,#14,#00,#01,#ff,#01,#00
.lbe3b equ $ + 5
	db #0c,#0f,#00,#00,#ff,#35,#00,#42
	db #00,#0d,#00,#4a,#00,#0b,#00
	dw lbdac,lbd8e,#0034,lbec7
	dw #0034,lbf43,#0034,lbec7
	dw #0034,lbf43,lbf84,lbf84
	dw lbfc9,lbf88,lbf88,lbfc9
	dw lbf8c,lbf8c,lbfc9,lbf90
	dw lbf90,lbfc9
	dw #000b,lbdda,lbd8e,lbf96
	dw lbfa6,lbfda,lbf9c,lbfaf
	dw lbfda,#000d,#0042,lbf96
	dw lbfa6,lbfda,lbf9c,lbfaf
	dw lbfda,#000d,#003a,lbf96
	dw lbfa6,lbfda,lbf9c,lbfaf
	dw lbfda,#000d,#004a,#000b
	dw lbdac,lbd8e,lbfb5,lbfc2
	dw lbfc9,lbfbf,lbfc7,lbfe3
	dw lbef9,lbef9,lbef9,lbef9
.lbec7 equ $ + 6
	dw lbef9,lbef9,#0000,lbefc
	dw lbf0b,lbfc9,lbf02,lbf0b
	dw lbfc9,lbf08,lbf0e,lbfc9
	dw lbef9,lbf0e,lbfc9,lbf11
	dw lbf3d,lbfc9,lbf17,lbf40
	dw lbfc9,lbf29,lbf3d,lbfc9
	dw lbf33,lbf40,lbfc9
.lbefc equ $ + 5
.lbef9 equ $ + 2
	db #c9,#00,#10,#00,#ff,#04,#0f,#11
.lbf02 equ $ + 3
	db #13,#14,#ff,#04,#00,#16,#18,#00
.lbf0e equ $ + 7
.lbf0b equ $ + 4
.lbf08 equ $ + 1
	db #ff,#10,#10,#ff,#08,#14,#0f,#08
.lbf11 equ $ + 2
	db #10,#0b,#04,#11,#0d,#11,#0f,#ff
.lbf17
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0c
.lbf29 equ $ + 2
	db #0f,#ff,#02,#11,#00,#0c,#00,#0c
.lbf33 equ $ + 4
	db #00,#11,#0f,#ff,#02,#00,#00,#00
.lbf3d equ $ + 6
	db #0d,#0f,#0d,#0f,#0d,#ff,#08,#11
.lbf43 equ $ + 4
.lbf40 equ $ + 1
	db #0a,#08,#0f,#0a,#5d,#bf,#79,#bf
	db #c9,#bf,#61,#bf,#79,#bf,#c9,#bf
	db #6b,#bf,#7c,#bf,#c9,#bf,#6f,#bf
	db #7f,#bf,#c9,#bf,#c9,#00,#08,#0f
	db #0f,#ff,#02,#00,#00,#00,#0d,#0f
	db #0d,#0f,#00,#ff,#08,#10,#10,#ff
	db #02,#00,#0b,#00,#00,#0d,#00,#0e
	db #00,#ff,#08,#12,#0b,#08,#10,#0b
.lbf84 equ $ + 5
	db #04,#10,#0b,#0d,#0e,#08,#0f,#12
.lbf8c equ $ + 5
.lbf88 equ $ + 1
	db #ff,#08,#0b,#0f,#ff,#08,#10,#00
.lbf96 equ $ + 7
.lbf90 equ $ + 1
	db #ff,#04,#00,#10,#0f,#0e,#ff,#04
.lbf9c equ $ + 5
	db #00,#11,#11,#11,#ff,#02,#11,#11
.lbfa6 equ $ + 7
	db #00,#11,#00,#00,#00,#00,#ff,#02
	db #0d,#0d,#0d,#00,#11,#00,#11,#00
.lbfb5 equ $ + 6
.lbfaf
	db #02,#14,#14,#00,#19,#ff,#02,#14
	db #14,#14,#14,#00,#10,#12,#00,#ff
.lbfc2 equ $ + 3
.lbfbf
	db #10,#10,#ff,#04,#14,#00,#14,#12
.lbfc9 equ $ + 2
.lbfc7
	db #10,#10,#01,#01,#00,#00,#00,#02
	db #00,#00,#02,#01,#00,#00,#00,#02
.lbfda equ $ + 3
	db #00,#00,#02,#02,#01,#01,#02,#02
.lbfe3 equ $ + 4
	db #01,#01,#02,#02,#02,#02,#00,#02
	db #00,#03,#ff,#f9,#0b,#f9,#0b,#ae
	db #16,#d2,#00,#53,#b9,#25,#00,#e9
	db #07,#00,#80,#a2,#b9,#89,#7f,#98
	db #00
; #61f7
; .l61f7
	; call #b9f3	; init music
	; ld b,#f5
; .l61fc
	; in a,(c)
	; rrca
	; jr nc,l61fc
	; call #811a
	; call #b9f0
	; ld de,#0320
; .l620a
	; dec de
	; ld a,d
	; or e
	; jr nz,l620a
	; ld hl,#7ecb
	; call #7e96
	; ld a,(#b9fe)	; end music ?
	; and a
	; jr z,l61f7
;
.music_info
	db "Thomas The Tank Engine (1990)(Alternative Software)()",0
	db "",0

	read "music_end.asm"
