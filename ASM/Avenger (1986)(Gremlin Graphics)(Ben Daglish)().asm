; Music of Avenger (1986)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 22/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AVENGER.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #6d0a

	read "music_header.asm"

.music_end
.l6d0a
	db #00
.l6d0b
	jp l6d53	; #6d53

	ld l,(ix+#00)
	ld h,(ix+#01)
;
.init_music
.l6d14
;
	ld hl,lb3e4		; #b3e4
	push hl
	ld hl,l7396
	ld de,l7397
	ld bc,#007d
	ld (hl),#00
	ldir
	pop hl
	ld (l7322),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld a,l
	ld (l73ad),a
	ld a,h
	ld (l73ae),a
	push hl
	add hl,de
	ld a,l
	ld (l73d7),a
	ld a,h
	ld (l73d8),a
	pop hl
	add hl,bc
	ld a,l
	ld (l7401),a
	ld a,h
	ld (l7402),a
	ld a,#01
	ld (l6d0a),a
	ret

;
.l6d53
.play_music
;
	ld a,(l6d0a)
	or a
	ret z

	xor a
	ld (l7325),a
	ld ix,l7396
	call l6d78

	ld a,#01
	ld (l7325),a
	ld ix,l73c0
	call l6d78

	ld a,#02
	ld (l7325),a
	ld ix,l73ea
.l6d78
	ld a,(ix+#00)
	or a
	jr z,l6df4
	dec (ix+#00)
	ld a,(ix+#08)
	or a
	jr z,l6d8d
	dec a
	ld (ix+#08),a
	jr l6da2
.l6d8d
	ld a,(ix+#0a)
	or a
	jr z,l6d99
	dec a
	ld (ix+#0a),a
	jr l6da2
.l6d99
	ld a,(ix+#09)
	ld (ix+#0a),a
	inc (ix+#0b)
.l6da2
	ld a,(ix+#01)
	and #03
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l733e
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	call l6e65

	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(ix+#11)
	add h
	ld h,a
	ld (ix+#0d),h
	ld a,(ix+#01)
	srl a
	srl a
	srl a
	and #07
	ld b,a
	call nz,l706e
	ld a,(ix+#01)
	rlca
	rlca
	and #03
	ld b,a
	call nz,l700d
	call l7031
	ld a,(ix+#02)
	and #03
	call nz,l7053
	call l6ed7
	call l6e66
	ld c,#0e
	jp l97bc
.l6df4

	ld a,(ix+#16)
	ld (ix+#24),a
	ld l,(ix+#17)
	ld h,(ix+#18)
	ld a,(hl)
	or a
	jp z,l70c2
	bit 7,a
	jp nz,l70da
	cp #1a
	jp nc,l6e22
	push hl
	pop iy
	dec a
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l7344
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	call l6e65
.l6e22
	ld l,(ix+#17)
	ld h,(ix+#18)
	inc hl
	inc hl
	ld (ix+#17),l
	ld (ix+#18),h
	ld a,(l7325)
	or a
	jp nz,l6d78
	ld de,(&7322)
	push hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	inc hl
	inc hl
	add hl,de
	ex de,hl
	pop hl
	or a
	sbc hl,de
	jp c,l6d78
	xor a
	ld (l6d0a),a
	ld c,#08
	xor a
	call l97bc
	inc c
	xor a
	call l97bc
	inc c
	xor a
	call l97bc
	ld c,#0e
	jp l97bc
.l6e65
	jp (hl)
.l6e66
	ld a,(ix+#28)
	bit 7,a
	ld c,#00
	jr z,l6e71
	ld c,#ff
.l6e71
	add l
	ld l,a
	ld a,h
	adc c
	ld h,a
	ld a,(l7325)
	add a
	ld e,a
	ld c,l
	call l6cff
	ld a,e
	inc a
	ld c,h
	call l6cff
	ld a,(ix+#06)
	ld c,a
	ld a,(l7325)
	add #08
	call l6cff
	bit 2,(ix+#02)
	jr z,l6e9f
	ld c,(ix+#20)
	ld a,#06
	call l6cff
.l6e9f
	bit 6,(ix+#02)
	jr z,l6ecb
	ld c,(ix+#21)
	ld a,#0b
	call l6cff
	ld c,(ix+#22)
	ld a,#0c
	call l6cff
	ld a,(ix+#02)
	and #03
	jr z,l6ecb
	ld a,(ix+#24)
	and #80
	jr nz,l6ecb
	ld c,(ix+#23)
	ld a,#0d
	call l6cff
.l6ecb
	ld a,(l7324)
	or #80
	ld c,a
	ld a,#07
	call l6cff
	ret
.l6ed7
	call l6f10
	ld a,(ix+#24)
	and #80
	ret nz
	ld a,(ix+#0c)
	or (ix+#0d)
	call z,l6f7d
	bit 2,(ix+#02)
	call nz,l6f2e
	bit 3,(ix+#02)
	call nz,l6f97
	bit 4,(ix+#02)
	call nz,l6f82
	bit 5,(ix+#02)
	jr z,l6f08
	ld (ix+#06),#10
.l6f08
	bit 6,(ix+#02)
	call nz,l6f4e
	ret
.l6f10
	ld a,(l7325)
	ld d,#08
	ld e,#01
.l6f17
	or a
	jr z,l6f21
	dec a
	rlc d
	rlc e
	jr l6f17
.l6f21
	ld a,e
	xor #ff
	ld e,a
	ld a,(l7324)
	and e
	or d
	ld (l7324),a
	ret
.l6f2e
	ld a,(ix+#0c)
	or (ix+#0d)
	ret z
	ld a,(l7325)
	ld d,#08
.l6f3a
	or a
	jr z,l6f42
	dec a
	rlc d
	jr l6f3a
.l6f42
	ld a,d
	xor #ff
	ld d,a
	ld a,(l7324)
	and d
	ld (l7324),a
	ret
.l6f4e
	ld (ix+#21),l
	ld (ix+#22),h
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	ret
.l6f7d
	xor a
	ld (ix+#06),a
	ret
.l6f82
	ld a,(l7325)
	ld d,#01
.l6f87
	or a
	jr z,l6f8f
	dec a
	rlc d
	jr l6f87
.l6f8f
	ld a,(l7324)
	or d
	ld (l7324),a
	ret
.l6f97
	push hl
	ld b,#06
.l6f9a
	srl h
	rr l
	djnz l6f9a
	ld a,l
	pop hl
	ld (ix+#20),a
	ret
.l6fa6
	dec (ix+#27)
	ret nz
	ld a,(ix+#25)
	ld (ix+#27),a
	ld a,(ix+#04)
	srl a
	srl a
	srl a
	srl a
	add (ix+#06)
	cp (ix+#03)
	jr c,l6fcd
	inc (ix+#01)
	ld a,(ix+#03)
	ld (ix+#27),#01
.l6fcd
	ld (ix+#06),a
	ret
.l6fd1
	dec (ix+#27)
	ret nz
	ld a,(ix+#26)
	ld (ix+#27),a
	ld a,(ix+#04)
	and #0f
	ld b,a
	ld c,(ix+#05)
	srl c
	srl c
	srl c
	srl c
	ld a,(ix+#03)
	cp c
	jr nc,l6ff3
	ld c,a
.l6ff3
	ld a,(ix+#06)
	sub b
	jr c,l6ffc
	cp c
	jr nc,l7000
.l6ffc
	inc (ix+#01)
	ld a,c
.l7000
	ld (ix+#06),a
.l7003
	ret
.l7004
	ld a,(ix+#01)
	xor #04
	ld (ix+#01),a
	ret
.l700d
	ld a,(ix+#0a)
	or a
	call z,l7004
	ld a,b
	cp #02
	jr nz,l7024
	ld a,(ix+#01)
	and #04
	ret z
	srl h
	rr l
	ret
.l7024
	ld a,(ix+#01)
	and #04
	ret z
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	ret
.l7031
	ld a,(ix+#08)
	or a
	ret nz
	ld a,(ix+#0a)
	or a
	ret nz
	ld a,(ix+#0b)
	bit 0,a
	ret z
	and #03
	cp #02
	jr c,l704d
	ld a,(ix+#19)
	add l
	ld l,a
	ret
.l704d
	ld a,l
	sub (ix+#19)
	ld l,a
	ret
.l7053
	cp #01
	jr z,l7058
	ret
.l7058
	ld a,(ix+#24)
	and #7f
	jr nz,l706a
	ld a,(ix+#24)
	xor #80
	or (ix+#16)
	ld (ix+#24),a
.l706a
	dec (ix+#24)
	ret
.l706e
	ld a,(ix+#08)
	or a
	ret nz
	ld a,b
	cp #01
	jr z,l7093
	ld e,(ix+#10)
	ld d,#00
	cp #03
	jr nz,l708b
	ld a,e
	cpl
	add #01
	ld e,a
	ld a,d
	cpl
	adc #00
	ld d,a
.l708b
	add hl,de
	ld (ix+#0c),l
	ld (ix+#0d),h
	ret
.l7093
	push hl
	ld c,(ix+#10)
	ld b,#00
	ld e,(ix+#0e)
	ld d,(ix+#0f)
	or a
	sbc hl,de
	pop hl
	ret z
	jr c,l70b2
	or a
	sbc hl,bc
	push hl
	or a
	sbc hl,de
	pop hl
	jr nc,l70bb
	jr l70ba
.l70b2
	add hl,bc
	push hl
	or a
	sbc hl,de
	pop hl
	jr c,l70bb
.l70ba
	ex de,hl
.l70bb
	ld (ix+#0c),l
	ld (ix+#0d),h
	ret
.l70c2
	ld (ix+#0c),#00
	ld (ix+#0d),#00
.l70ca
	inc hl
	ld a,(hl)
	cp #ff
	jp z,l7149
	ld (ix+#00),a
	call l7158
	jp l6e22
.l70da
	push hl
	res 7,a
	call l7111
	add (ix+#15)
	ld b,#00
.l70e5
	cp #0c
	jr c,l70ee
	sub #0c
	inc b
	jr l70e5
.l70ee
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l7326
	add hl,de
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld a,b
	or a
	jr z,l70ca
.l7104
	srl (ix+#0d)
	rr (ix+#0c)
	djnz l7104
	jp l70ca
.l7111
	push af
	ld a,(ix+#29)
	or a
	jr z,l7147
	pop af
	push af
	add (ix+#29)
	ld b,#00
.l711f
	cp #0c
	jr c,l7128
	sub #0c
	inc b
	jr l711f
.l7128
	ld l,a
	ld h,#00
	add hl,hl
	ld de,#7326
	add hl,de
	ld a,(hl)
	ld (ix+#0e),a
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	ld a,b
	or a
	jr z,l7147
.l713d
	srl (ix+#0f)
	rr (ix+#0e)
	djnz l713d
.l7147
	pop af
	ret
.l7149
	ld a,(ix+#0c)
	ld (ix+#0e),a
	ld a,(ix+#0d)
	ld (ix+#0f),a
	jp l6e22
.l7158
	ld (ix+#06),#00
	ld a,(ix+#07)
	ld (ix+#08),a
	ld a,(ix+#01)
	and #fc
	ld (ix+#01),a
	ld (ix+#27),#01
	ret
.l716f
	ld a,(iy+#01)
	bit 7,a
	jr z,l717c
	and #0f
	ld (ix+#03),a
	ret
.l717c
	push ix
	and #0f
	ld ix,l7396
	ld (ix+#03),a
	ld ix,l73c0
	ld (ix+#03),a
	ld ix,l73ea
	ld (ix+#03),a
	pop ix
	ret
.l7198
	push hl
	push de
	push bc
	ld a,(iy+#01)
	srl a
	srl a
	srl a
	srl a
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l7376
	add hl,de
	ld c,(hl)
	sla c
	sla c
	sla c
	sla c
	inc hl
	ld a,(hl)
	ld (ix+#25),a
	ld a,(iy+#01)
	and #0f
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l7376
	add hl,de
	ld a,(hl)
	and #0f
	or c
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	ld (ix+#27),#01
	pop bc
	pop de
	pop hl
	ret
.l71dd
	ld a,(iy+#01)
	res 6,(ix+#02)
	bit 7,a
	jr z,l71f0
	set 6,(ix+#02)
	set 5,(ix+#02)
.l71f0
	res 7,a
	or a
	jr z,l7201
	set 2,(ix+#02)
	cp #20
	jr nc,l720a
	ld (ix+#20),a
	ret
.l7201
	ld a,(ix+#02)
	and #03
	ld (ix+#02),a
	ret
.l720a
	set 3,(ix+#02)
	cp #21
	ret c
	set 4,(ix+#02)
	bit 6,a
	ret z
	res 6,a
	res 4,a
	ld (ix+#20),a
	ret
.l7220
	ret
.l7221
	ld a,(iy+#01)
	or a
	jr z,l7235
	ld (ix+#16),a
	ld a,(ix+#02)
	and #fc
	or #01
	ld (ix+#02),a
	ret
.l7235
	ld a,(ix+#02)
	and #fc
	ld (ix+#02),a
	res 7,(ix+#24)
	ld (ix+#16),#00
	ret
.l7246
	ld a,(iy+#01)
	ld (ix+#09),a
	ld (ix+#0a),a
	ret
.l7250
	ret
.l7251
	ld a,(iy+#01)
	and #03
	rrca
	rrca
	ld b,a
	ld a,(ix+#01)
	and #3f
	or b
	ld (ix+#01),a
	ret
.l7263
	ld a,(iy+#01)
	ld (ix+#07),a
	ret
.l726a
	ld a,(iy+#01)
	ld (ix+#05),a
	ret
.l7271
	ld a,(iy+#01)
	xor #ff
	srl a
	srl a
	srl a
	srl a
	srl a
	srl a
	ld (ix+#19),a
	ret
.l7286
	ld a,(iy+#01)
	ld (ix+#11),a
	ret
.l728d
	ld a,(iy+#01)
	ld (ix+#10),a
	ret
.l7294
	ret
.l7295
	ld a,(iy+#01)
	and #07
	ld b,a
	sla b
	sla b
	sla b
	ld a,(ix+#01)
	and #c7
	or b
	ld (ix+#01),a
	ret
.l72ab
	ld a,(ix+#1c)
	or a
	jr nz,l72b4
	ld a,(iy+#01)
.l72b4
	dec a
	ld (ix+#1c),a
	ret z
	ld a,(ix+#1a)
	ld (ix+#17),a
	ld a,(ix+#1b)
	ld (ix+#18),a
	ret
.l72c6
	ld a,(ix+#17)
	ld (ix+#1a),a
	ld a,(ix+#18)
	ld (ix+#1b),a
	ret
.l72d3
	ld a,(ix+#1f)
	or a
	jr nz,l72dc
	ld a,(iy+#01)
.l72dc
	dec a
	ld (ix+#1f),a
	ret z
	ld a,(ix+#1d)
	ld (ix+#17),a
	ld a,(ix+#1e)
	ld (ix+#18),a
	ret
.l72ee
	ld a,(ix+#17)
	ld (ix+#1d),a
	ld a,(ix+#18)
	ld (ix+#1e),a
	ret
.l72fb
	ld a,(iy+#01)
	ld (ix+#15),a
	ret
.l7302
	ld a,(iy+#01)
	ld (ix+#23),a
	ret
.l7309
	ld a,(iy+#01)
	ld (ix+#28),a
	ret
.l7310	
	ret
.l7311	
	ld a,(iy+#01)
	add (ix+#15)
	ld (ix+#15),a
	ret
.l731b
	ld a,(iy+#01)
	ld (ix+#29),a
	ret

.l7322
	db #00,#00

.l7324
	db &00
.l7325
	db &00
.l7326
	db #dd,#0e,#07,#0e,#3e,#0d,#80,#0c
	db #cc,#0b,#23,#0b,#83,#0a,#ec,#09
	db #5d,#09,#d6,#08,#57,#08,#e0,#07

.l733e
	dw l6fa6,l6fd1,l7003


;
; jump tables
;
.l7344
	dw l716f,l7198,l71dd,l7220
	dw l7221,l7246,l7250,l7251
	dw l7263,l726a,l7271,l7286
	dw l728d,l7294,l7295,l72ab
	dw l72c6,l72d3,l72ee,l72fb
	dw l7302,l7309,l7310,l7311
	dw l731b


.l7376
	db #0f,#01,#0d,#01,#0b,#01,#09,#01
	db #07,#01,#05,#01,#03,#01,#02,#01
	db #01,#01,#01,#0a,#01,#1e,#01,#46
	db #01,#6e,#01,#b4,#01,#dc,#01,#ff


.l7397 equ $ +1
.l7396
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
.l73ad
	db #00
.l73ae
	db #00
	db #00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l73c0
	db #00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l73d7
	db #00
.l73d8
	db #00
	db #00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
	db #00,#00,#00,#00
	db #00,#00,#00,#00
.l73ea
	db #00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
.l7401
	db #00
.l7402
	db #00
	db #00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00

.l7414
	db #00,#00

.l97bc
	push bc
	ld b,a
	ld a,c
	ld c,b
	ld b,#f4	; PPI Port A Data
	out (c),a	; Send register number to PPI Port A Data

	ld b,#f6	; PPI Port C
	in a,(c)	; read PPI Port C value
	or #c0		; &11000000 - set PSG fonction selection value to "Select PSG register"
	out (c),a	; send value to PPI Port C
	and #3f		; &00111111 - set PSG fonction selection value to "Inactive"
	out (c),a	; send value to PPI Port C

	ld b,#f4	; PPI Port A Data
	out (c),c	; send data to PPI Port A 

	ld b,#f6	; PPI Port C
	ld c,a		; c = "Inactive" = a
	or #80		; &10000000 - set PSG fonction selection value to "Write to selected PSG register"
	out (c),a	; send value to PPI Port C
	out (c),c	; send "Inactive" to PPI Port C
	pop bc
	ret

.lb3e4
	db #3e,#01,#3c,#02,#01,#0a,#02,#12
	db #0a,#3f,#11,#01,#c8,#ff,#08,#01
	db #cf,#0c,#03,#21,#08,#00,#d4,#06
	db #d4,#06,#03,#00,#08,#01,#c3,#0c
	db #03,#21,#08,#00,#d4,#06,#d4,#06
	db #03,#00,#08,#01,#cf,#06,#cf,#06
	db #cf,#06,#cf,#06,#c3,#0c,#03,#21
	db #08,#00,#d4,#06,#d4,#06,#03,#00
	db #10,#16,#11,#01,#c8,#ff,#08,#01
	db #d6,#0c,#03,#21,#08,#00,#d4,#06
	db #d4,#06,#03,#00,#08,#01,#d3,#0c
	db #03,#21,#08,#00,#d4,#06,#d4,#06
	db #03,#00,#08,#01,#d1,#06,#d3,#06
	db #d1,#06,#ce,#06,#ca,#0c,#03,#21
	db #08,#00,#d4,#06,#d4,#06,#03,#00
	db #10,#08,#13,#01,#16,#0a,#0b,#01
	db #11,#01,#03,#00,#98,#0c,#03,#21
	db #b0,#06,#b0,#06,#03,#00,#9b,#0c
	db #03,#21,#b0,#06,#b0,#06,#03,#00
	db #9d,#0c,#03,#21,#b0,#06,#b0,#06
	db #03,#00,#96,#0c,#03,#21,#b0,#0c
	db #10,#04,#03,#00,#11,#01,#a7,#06
	db #a9,#06,#a7,#06,#a4,#06,#a2,#0c
	db #9f,#0c,#a2,#0c,#98,#0c,#98,#18
	db #10,#02,#02,#19,#11,#01,#98,#0c
	db #9b,#0c,#9f,#18,#9d,#18,#98,#18
	db #10,#02,#02,#18,#11,#00,#03,#00
	db #ab,#0c,#03,#21,#d4,#06,#d4,#06
	db #03,#00,#9f,#0c,#03,#21,#d4,#06
	db #d4,#06,#10,#04,#12,#02,#02,#18
	db #11,#00,#03,#00,#ab,#0c,#03,#21
	db #d4,#06,#d4,#06,#03,#00,#9f,#0c
	db #03,#21,#d4,#06,#d4,#06,#10,#04
	db #11,#01,#c8,#ff,#08,#01,#cd,#0c
	db #03,#21,#08,#00,#d4,#06,#d4,#06
	db #03,#00,#08,#01,#c1,#0c,#03,#21
	db #08,#00,#d4,#06,#d4,#06,#03,#00
	db #08,#01,#cd,#06,#cd,#06,#cd,#06
	db #cd,#06,#c1,#0c,#03,#21,#08,#00
	db #d4,#06,#d4,#06,#03,#00,#10,#0a
	db #00,#01

.lb526
	db #01,#0e,#02,#18,#0a,#2c,#00,#c0
	db #13,#01,#11,#01,#98,#0c,#9f,#06
	db #9f,#06,#9f,#0c,#9f,#0c,#a2,#0c
	db #9f,#0c,#9d,#0c,#9b,#0c,#10,#04
	db #11,#01,#9b,#0c,#a2,#06,#a2,#06
	db #a4,#0c,#a2,#0c,#9f,#0c,#9d,#0c
	db #9b,#0c,#98,#0c,#10,#04,#12,#02
	db #11,#01,#9f,#06,#a2,#06,#a4,#0c
	db #a6,#0c,#a2,#0c,#a4,#18,#9d,#18
	db #10,#04,#11,#01,#9a,#06,#a1,#06
	db #a3,#0c,#a1,#0c,#9e,#0c,#9a,#18
	db #a6,#18,#10,#08,#13,#01,#11,#01
	db #0b,#32,#98,#0c,#98,#06,#96,#06
	db #9b,#0c,#98,#0c,#9d,#0c,#9b,#0c
	db #9a,#0c,#96,#0c,#10,#04,#11,#01
	db #c4,#06,#c6,#06,#c4,#06,#c1,#06
	db #bf,#0c,#bc,#0c,#bf,#0c,#b5,#0c
	db #b5,#18,#10,#03,#c3,#06,#c8,#06
	db #c6,#06,#c3,#06,#c3,#0c,#bf,#0c
	db #c5,#0c,#c1,#0c,#c5,#0c,#c6,#0c
	db #11,#01,#ab,#06,#ae,#06,#b0,#06
	db #b2,#06,#b5,#06,#b2,#06,#b0,#06
	db #ae,#06,#10,#04,#12,#02,#11,#01
	db #08,#02,#ab,#06,#ae,#06,#b0,#06
	db #b2,#06,#b5,#06,#b2,#06,#b0,#06
	db #ae,#06,#10,#04,#08,#00,#11,#01
	db #9d,#0c,#a4,#06,#a4,#06,#a7,#0c
	db #a4,#06,#a2,#06,#a0,#0c,#9d,#0c
	db #9b,#0c,#9d,#0c,#10,#04,#11,#01
	db #9d,#06,#9f,#06,#a2,#0c,#a4,#0c
	db #a7,#0c,#a9,#30,#10,#04,#11,#01
	db #00,#c8,#10,#c8,#00,#01
	
.lb624
	db #01,#0e,#02,#18,#0a,#2c,#0b,#64
	db #00,#c0,#11,#01,#bc,#0c,#bf,#06
	db #bf,#06,#c3,#0c,#bf,#0c,#c1,#06
	db #c3,#06,#c1,#06,#bf,#06,#bc,#0c
	db #ba,#0c,#b7,#0c,#b7,#06,#ba,#06
	db #bc,#0c,#bf,#0c,#be,#30,#14,#0c
	db #08,#02,#10,#02,#14,#00,#08,#00
	db #11,#01,#bf,#06,#c1,#06,#c3,#06
	db #c6,#06,#c8,#0c,#c6,#0c,#c3,#06
	db #c1,#06,#bf,#0c,#c1,#0c,#bf,#0c
	db #c3,#06,#c1,#06,#bf,#0c,#bc,#0c
	db #ba,#0c,#ba,#30,#08,#02,#10,#02
	db #08,#00,#11,#01,#bc,#06,#bf,#06
	db #c1,#06,#c3,#06,#c6,#0c,#c3,#06
	db #c1,#06,#c3,#06,#c1,#06,#bf,#0c
	db #bc,#0c,#ba,#0c,#bc,#0c,#bc,#06
	db #bf,#06,#c1,#06,#c3,#06,#bf,#06
	db #bc,#06,#ba,#30,#08,#02,#10,#02
	db #08,#00,#11,#01,#c3,#06,#c6,#06
	db #c8,#06,#cb,#06,#c8,#0c,#c6,#06
	db #c3,#06,#c6,#0c,#c3,#0c,#c1,#0c
	db #bf,#0c,#bc,#06,#bf,#06,#c3,#0c
	db #c6,#0c,#bc,#0c,#bf,#18,#c6,#18
	db #08,#02,#10,#02,#11,#01,#c3,#06
	db #c6,#06,#c8,#0c,#ca,#0c,#c6,#0c
	db #c8,#18,#c1,#18,#10,#02,#11,#01
	db #c3,#06,#c6,#06,#c8,#06,#ca,#06
	db #cd,#06,#ca,#0c,#c6,#06,#cb,#0c
	db #cd,#0c,#c8,#0c,#c6,#0c,#08,#02
	db #10,#02,#08,#00,#11,#01,#be,#06
	db #c0,#06,#c2,#06,#c5,#06,#c7,#0c
	db #c5,#0c,#c2,#0c,#c0,#0c,#be,#0c
	db #bb,#0c,#be,#06,#c0,#06,#c2,#06
	db #c5,#06,#c7,#0c,#c5,#0c,#c2,#30
	db #be,#06,#c0,#06,#c2,#06,#c5,#06
	db #c7,#0c,#c5,#0c,#c2,#0c,#c0,#0c
	db #be,#0c,#bb,#0c,#c2,#06,#c3,#06
	db #c2,#0c,#be,#0c,#bb,#0c,#be,#30
	db #08,#02,#10,#02,#13,#01,#02,#19
	db #0a,#36,#11,#01,#c8,#18,#d2,#18
	db #d1,#18,#cd,#18,#10,#03,#c8,#0c
	db #cb,#0c,#cd,#0c,#d1,#0c,#cf,#0c
	db #ca,#0c,#cd,#0c,#cb,#0c,#11,#01
	db #cb,#06,#cd,#06,#cb,#06,#c8,#06
	db #c6,#0c,#c3,#0c,#c6,#0c,#bc,#0c
	db #bc,#18,#10,#03,#cb,#06,#cd,#06
	db #cb,#06,#c8,#06,#c6,#0c,#c3,#0c
	db #c1,#0c,#c6,#0c,#c1,#0c,#c2,#0c
	db #cf,#06,#cf,#06,#cf,#06,#cf,#06
	db #cd,#0c,#cd,#0c,#ca,#0c,#ca,#0c
	db #c8,#0c,#c6,#0c,#c8,#06,#c8,#06
	db #ca,#0c,#cd,#0c,#ca,#0c,#cf,#30
	db #12,#02,#d3,#06,#d3,#06,#d3,#06
	db #d3,#06,#cf,#0c,#cd,#0c,#ca,#0c
	db #c8,#0c,#c7,#0c,#c3,#0c,#c1,#0c
	db #c3,#0c,#c8,#0c,#c5,#0c,#c7,#30
	db #08,#00,#11,#01,#c1,#18,#c6,#0c
	db #bc,#0c,#c1,#18,#c4,#18,#c6,#0c
	db #c4,#0c,#c1,#18,#bf,#18,#bc,#18
	db #08,#02,#10,#02,#13,#01,#11,#00
	db #c1,#06,#c3,#06,#c6,#0c,#c8,#0c
	db #cb,#0c,#cd,#30,#10,#02,#08,#00
	db #12,#02,#11,#01,#00,#c8,#10,#c8
	db #00,#01,#c9,#21,#40,#9c,#cd,#49
	db #83,#c8,#06,#64,#10,#fe,#2b,#7c
	db #b5,#20,#f3,#c9,#00
;
.l6cff
;
	push bc
	push af
	ld b,a
	ld a,c
	ld c,b
	call l97bc
	pop af
	pop bc
	ret
;
; #6000
;
; di
; call &6d14
;
;loop
;	ld a,(l6d0a)
;	or a
;	call z,#6d14
;
;	ld bc,#f500
;.la645
;	in a,(c)
;	and #01
;	jr z,la645
;
;	call #6d0b
;
; 	jr loop
;
.music_info
	db "Avenger (1986)(Gremlin Graphics)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
