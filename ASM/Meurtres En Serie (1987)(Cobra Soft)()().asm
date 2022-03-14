; Music of Meurtres En Serie (1987)(Cobra Soft)()()
; Ripped by Megachur the 27/09/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MEUTREES.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #8c00

	read "music_header.asm"

	jp l8c1c	; init + call init music interrupt
	jp l8c4f	; stop music interrupt
	jp l8c3e	; init music interrupt
	jp l8c0d	; call before init ?
.l8c0c
	nop
.l8c0d
	ld ix,l8dc7
	ld a,(ix+#09)
	nop
	nop
	nop
	nop
	ld (l8c0c),a
	ret
;
.real_init_music
.l8c1c
;
	cp #03
	ret nc
	or a
	ret z
	ld de,#ffff
	cp #02
	jr nz,l8c32
	ld d,(ix+#01)
	ld e,(ix+#00)
	inc ix
	inc ix
.l8c32
	ld b,(ix+#01)
	ld c,(ix+#00)
	call l8cad
	ret:nop:nop		; jp l8c3e - modified by Megachur
.l8c3e
	ld hl,l8e33
	ld de,l8e29
	ld bc,#0009
	ldir
	ld hl,l8e29
	jp #bce3
.l8c4f		; stop music interrupt !
	ld hl,l8e29
	nop:nop:nop		; call #bce6 - modified by Megachur
	ld c,#3f
	ld a,#07
	jp l9143
;
.real_play_music	; play music interrupt
.l8c5c
;
	push ix
	push iy
	push hl
	push de
	push af
	push bc
	ld iy,l8e26
	ld ix,l8dc7
	ld a,(iy+#00)
	or a
	call nz,l8e3f
	ld a,(iy+#01)
	ld ix,l8dd7
	or a
	call nz,l8e3f
	ld ix,l8de7
	ld a,(iy+#02)
	or a
	call nz,l8e3f
	ld a,(iy+#00)
	or (iy+#01)
	or (iy+#02)
	call z,l8c4f	; stop music interrupt
	ld a,(l8e3e)
	dec a
	jr nz,l8ca1
	call l8f68
	ld a,(l8e3d)
.l8ca1
	ld (l8e3e),a
	pop bc
	pop af
	pop de
	pop hl
	pop iy
	pop ix
	ret
.l8cad
	ld hl,l8d41
	push bc
	push de
	ld de,l8dc7
	ld bc,#0010
	ld a,#01
	push hl
	push bc
	ldir
	pop bc
	pop hl
	ld (l8dd2),a
	push hl
	push bc
	ld de,l8dd7
	ldir
	pop bc
	pop hl
	inc a
	ld (l8de2),a
	ld de,l8de7
	ldir
	inc a
	ld (l8df2),a
	ld a,#01
	ld (l8e3e),a
	ld iy,l8e26
	ld (iy+#00),a
	ld (iy+#01),a
	ld (iy+#02),a
	pop de
	pop bc
	ld hl,(l8e20)
	ld ix,l8dc7
	ld (ix+#09),e
	ld (ix+#0a),d
	push de
	push bc
	call l8d22
	pop bc
	pop de
	push bc
	push de
	ld ix,l8dd7
	ld hl,(l8e22)
	ld (ix+#09),e
	ld (ix+#0a),d
	call l8d22
	pop de
	pop bc
	ld ix,l8de7
	ld hl,(l8e24)
	ld (ix+#09),e
	ld (ix+#0a),d
.l8d22
	ld a,b
	or c
	jr z,l8d3a
	push bc
.l8d27
	ld a,(hl)
	bit 7,a
	jr z,l8d31
	call l8d51
	jr l8d27
.l8d31
	ld a,(hl)
	inc hl
	or a
	jr nz,l8d31
	pop bc
	dec bc
	jr l8d22
.l8d3a
	ld (ix+#07),l
	ld (ix+#08),h
	ret
.l8d41
	db #00,#00,#01,#00,#01,#03,#01,#00
	db #00,#00,#00,#00,#01,#01,#00,#00
.l8d51
	and #07
	dec a
	jr nz,l8d63
	ld a,(hl)
	inc hl
	bit 3,a
	ld a,#00
	jr z,l8d5f
	inc a
.l8d5f
	ld (ix+#02),a
	ret
.l8d63
	dec a
	jr nz,l8d78
	inc hl
	ld a,(hl)
	ld (ix+#00),a
	ld (ix+#0e),a
	inc hl
	ld a,(hl)
	ld (ix+#01),a
	ld (ix+#0f),a
	inc hl
	ret
.l8d78
	dec a
	jr nz,l8d82
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#0d),a
	ret
.l8d82
	dec a
	jr nz,l8d87
	inc hl
	ret
.l8d87
	dec a
	jr nz,l8da1
	inc hl
	ld a,(hl)
	and #0f
	inc a
	ld (ix+#03),a
	ld a,(hl)
	srl a
	srl a
	srl a
	srl a
	inc a
	ld (ix+#04),a
	inc hl
	ret
.l8da1
	dec a
	jr nz,l8db2
	ld a,(hl)
	and #3f
	srl a
	srl a
	srl a
	ld (ix+#05),a
	inc hl
	ret
.l8db2
	dec a
	inc hl
	ret nz
	ld a,(hl)
	inc hl
	push hl
	push ix
	ld b,(ix+#0b)
	and #0f
	ld c,a
	call l912a
	pop ix
	pop hl
	ret
.l8dc7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8dd2 equ $ + 3
	db #00,#00,#01,#00,#00,#00,#00,#00
.l8dd7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8de2 equ $ + 3
	db #00,#00,#02,#00,#00,#00,#00,#00
.l8de7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8df2 equ $ + 3
	db #00,#00,#03,#00,#00,#00,#00,#00
.l8df7
	db #08,#08,#00,#00,#00,#00,#00,#00
.l8e03 equ $ + 4
	db #00,#00,#00,#00,#10,#09,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8e0f
	db #20,#0a,#04,#00,#00,#00,#00,#00
.l8e1e equ $ + 7
.l8e1d equ $ + 6
.l8e1b equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l8e25 equ $ + 5
.l8e24 equ $ + 4
.l8e22 equ $ + 2
.l8e20
	dw l9427,l94fd,l95c5
.l8e29 equ $ + 3
.l8e26
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8e33 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#81
	dw l8c5c
.l8e3e equ $ + 3
.l8e3d equ $ + 2
	db #00,#00,#06,#00
.l8e3f
	ld (l8e1e),hl
	ld a,(ix+#0c)
	dec a
	jr z,l8e4c
	ld (ix+#0c),a
	ret
.l8e4c
	ld a,(ix+#0d)
	ld (ix+#0c),a
	ld a,(ix+#06)
	dec a
	jr z,l8e5c
	ld (ix+#06),a
	ret
.l8e5c
	ld h,(ix+#08)
	ld l,(ix+#07)
	ld a,(hl)
	or a
	jr nz,l8e8e
	inc hl
	ld d,(ix+#0e)
	ld e,(ix+#0f)
	ld (ix+#00),d
	ld (ix+#01),e
	ld b,(ix+#0a)
	ld c,(ix+#09)
	dec bc
	ld (ix+#09),c
	ld (ix+#0a),b
	ld a,b
	or c
	jr z,l8e88
	ld a,(hl)
	or a
	jr nz,l8e8e
.l8e88
	ld b,(ix+#0b)
	jp l9133
.l8e8e
	cp #80
	jr c,l8e98
	call l8d51
	ld a,(hl)
	jr l8e8e
.l8e98
	ld de,l8eb9
	ld a,(hl)
	and #0f
	add e
	ld e,a
	jr nc,l8ea3
	inc d
.l8ea3
	ld a,(de)
	ld (ix+#06),a
	ld a,(hl)
	bit 5,a
	jr z,l8ec9
	inc hl
	ld (ix+#07),l
	ld (ix+#08),h
	ld b,(ix+#0b)
	jp l910d
.l8eb9
	inc bc
	inc b
	add hl,bc
	ld b,#0c
	jr l8ec1
.l8ec1 equ $ + 1
	ld bc,#0403
	add hl,bc
	add hl,bc
	ld (de),a
	inc h
.l8ec9 equ $ + 2
	ld bc,#2301
	bit 6,a
	jr z,l8ee5
	ld a,(hl)
	push hl
	push ix
	ld b,(ix+#0b)
	ld c,(ix+#03)
	bit 6,a
	jr z,l8edf
	ld c,(ix+#04)
.l8edf
	call l90db
	pop ix
	pop hl
.l8ee5
	ld a,(hl)
	inc hl
	ld (ix+#07),l
	ld (ix+#08),h
	and #3f
	srl a
	srl a
	srl a
	srl a
	dec hl
	ld b,a
	ld a,(hl)
	and #0f
	ld c,a
	ld h,(ix+#00)
	ld l,(ix+#01)
	ld a,b
	or a
	call nz,l8f35
	ld a,(ix+#02)
	push ix
	call l9058
	pop ix
	ld a,(ix+#05)
	add e
	ld b,a
	ld c,d
	push ix
	call l9027
	pop ix
	ld b,(ix+#0b)
	jp l911e
.l8f25
	ld bc,#0402
	ex af,af'
	djnz l8f4b
	ld b,b
	ld bc,#0402
	ex af,af'
	djnz l8f52
	ld bc,#0402
.l8f35
	push hl
	ld de,l8f25
	ld a,c
	add e
	jr nc,l8f3e
	inc d
.l8f3e
	ld e,a
	ld a,b
	ld hl,#00ff
	cp #03
	jr z,l8f4c
	dec h
	dec a
	jr nz,l8f4c
.l8f4b
	inc l
.l8f4c
	ld a,(de)
	and h
	ld h,a
	ld a,(de)
	xor #ff
.l8f52
	and (ix+#00)
	or h
	ld (ix+#00),a
	ld a,(de)
	and l
	ld l,a
	ld a,(de)
	xor #ff
	and (ix+#01)
	or l
	ld (ix+#01),a
	pop hl
	ret
.l8f68
	ld iy,l8e1d
	ld a,#38
	ld (iy+#00),a
	ld ix,l8df7
	call l8fa1
	ld ix,l8e03
	call l8fa1
	ld ix,l8e0f
	call l8fa1
	ld c,(iy+#00)
	ld a,#07
	jp l9143
.l8f8e
	ld a,(hl)
	and #80
	jr z,l8f98
.l8f93
	ld a,(hl)
	inc hl
	and #7f
	ret
.l8f98
	ld de,#0000
	ld e,(hl)
	or a
	sbc hl,de
	jr l8f93
.l8fa1
	ld h,(ix+#06)
	ld l,(ix+#05)
	call l8f8e
	ld c,a
	ld (ix+#06),h
	ld (ix+#05),l
	ld a,(iy+#00)
	jr z,l8fc1
	xor (ix+#00)
	ld (iy+#00),a
	ld a,#06
	call l9143
.l8fc1
	ld l,(ix+#03)
	ld h,(ix+#04)
	call l8f8e
	ld (ix+#03),l
	ld (ix+#04),h
	and #0f
	ld h,#00
	ld l,a
	push hl
	pop de
	ld a,(ix+#0b)
	or a
.l8fdb
	jr z,l8fe1
	add hl,de
	dec a
	jr l8fdb
.l8fe1
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld c,l
	ld a,(ix+#01)
	call l9143
	ld h,(ix+#08)
	ld l,(ix+#07)
	call l8f8e
	ld (ix+#08),h
	ld (ix+#07),l
	ld de,#0000
	ld e,a
	ld hl,#0010
	or a
	sbc hl,de
	ld e,(ix+#09)
	ld d,(ix+#0a)
	or a
	add hl,de
	ld c,l
	ld a,(ix+#02)
	push af
	call l9143
	pop af
	inc a
	ld c,h
	jp l9143
.l9027
	ld hl,l9040
	ld a,c
	sla a
	add l
	jr nc,l9031
	inc h
.l9031
	ld l,a
	ld a,b
	inc a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
.l9038
	dec a
	ret z
	srl h
	rr l
	jr l9038
.l9040
	xor #0e
	jr l9052
	ld c,l
	dec c
	adc (hl)
	inc c
	jp c,#2f0b
	dec bc
	adc a
	ld a,(bc)
	rst #30
	add hl,bc
	ld l,b
	add hl,bc
.l9052
	pop hl
	ex af,af'
	ld h,c
	ex af,af'
	jp (hl)
	rlca
.l9058
	ld ix,l8e1b
	ld (l8e1b),hl
	ld hl,l90b0
	or a
	jr nz,l9068
	ld hl,l90ab
.l9068
	ld e,#00
	ld a,c
.l906b
	cp #07
	jr c,l9075
	or a
	sbc #07
	inc e
	jr l906b
.l9075
	push af
	add l
	jr nc,l907a
	inc h
.l907a
	ld l,a
	ld d,(hl)
	ld a,b
	or a
	jr nz,l90be
	ld hl,l90b7
	pop af
	add l
	jr nc,l9088
	inc h
.l9088
	ld l,a
	ld a,(hl)
	and (ix+#01)
	jr z,l9095
	and (ix+#00)
	jr nz,l909e
.l9094
	inc d
.l9095
	ld a,d
	cp #0c
	ret c
	inc e
	sbc #0c
	ld d,a
	ret
.l909e
	call l9095
	dec d
	ld a,d
	cp #0c
	ret c
	add #0c
	dec e
	ld d,a
	ret
.l90ab
	inc b
	dec b
	rlca
	add hl,bc
	dec bc
.l90b0
	inc c
	ld c,#10
	ld de,#1513
	rla
.l90b7
	ld bc,#0402
	ex af,af'
	djnz l90dd
	ld b,b
.l90be
	pop af
	ld a,b
	dec a
	jr z,l9094
	dec a
	jr z,l909e
	jr l9095
.l90c8
	add hl,de
	dec b
	jr nz,l90c8
	ret
.l90cd
	ld hl,l8df7
	dec b
	ld de,#000c
	call nz,l90c8
	push hl
	pop ix
	ret
.l90dd equ $ + 2
.l90db
	call l90cd
	ld hl,l9161
	ld de,#0006
	ld b,c
	dec b
	call nz,l90c8
	inc ix
	inc ix
	inc ix
	push ix
	pop de
	ld bc,#0006
	ldir
	ret
.l90f8
	ld (ix+#03),l
	ld (ix+#04),h
	add hl,de
	ld (ix+#05),l
	ld (ix+#06),h
	add hl,de
	ld (ix+#07),l
	ld (ix+#08),h
	ret
.l910d
	call l90cd
	ld de,#0002
	ld hl,l9118
	jr l90f8
.l9118
	add b
	ld bc,#0180
	adc a
.l911e equ $ + 1
	ld bc,#cde5
	call #e190
	ld (ix+#09),l
	ld (ix+#0a),h
	ret
.l912a
	push bc
	call l90cd
	pop bc
	ld (ix+#0b),c
	ret
.l9133
	push bc
	call l910d
	pop bc
	ld c,b
	ld b,#00
	ld hl,l8e25
	add hl,bc
	ld a,#00
	ld (hl),a
	ret
.l9143
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
.l9161
	dw l91c1,l91f4,l91f6,l91ff
	dw l9216,l9218,l921a,l924d
	dw l924f,l9258,l928b,l928d
	dw l928f,l92a6,l92a8,l92aa
	dw l92dd,l92df,l92e8,l92ff
	dw l9301,l9309,l9327,l9329
	dw l932b,l9331,l9333,l9335
	dw l9353,l9355,l935e,l9364
	dw l9366,l936e,l938c,l938e
	dw l93b7,l93bd,l93bf,l93e8
	dw l93f7,l93f9,l93fb,l940a
	dw l940c,l940e,l9423,l9425
.l91c1
	db #8f,#8f,#8f,#8f,#8f,#8f,#8f,#8e
	db #8e,#8e,#8d,#8d,#8d,#8c,#8c,#8c
	db #8b,#8b,#8b,#8a,#8a,#8a,#89,#89
	db #89,#88,#88,#88,#87,#87,#87,#86
	db #86,#86,#85,#85,#85,#84,#84,#84
	db #83,#83,#83,#82,#82,#82,#81,#81
.l91f6 equ $ + 5
.l91f4 equ $ + 3
	db #81,#80,#01,#80,#01,#90,#91,#90
.l91ff equ $ + 6
	db #8f,#8e,#8d,#8e,#8f,#08,#8f,#8f
	db #8f,#8f,#8e,#8e,#8d,#8d,#8c,#8c
	db #8b,#8a,#89,#88,#87,#86,#85,#84
.l9218 equ $ + 7
.l9216 equ $ + 5
	db #83,#82,#81,#80,#01,#80,#01,#8f
.l921a equ $ + 1
	db #01,#8b,#88,#8e,#8b,#8f,#8c,#8f
	db #8c,#8f,#8c,#8f,#8c,#8f,#8c,#8f
	db #8c,#8f,#8c,#8f,#8c,#8f,#8b,#8e
	db #8a,#8d,#89,#8c,#89,#8b,#88,#8a
	db #87,#89,#86,#88,#85,#87,#84,#86
	db #82,#85,#82,#84,#81,#83,#81,#82
.l924f equ $ + 6
.l924d equ $ + 4
	db #81,#81,#80,#02,#80,#01,#90,#91
.l9258 equ $ + 7
	db #90,#8f,#8e,#8d,#8e,#8f,#08,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#8e,#8e
	db #8e,#8d,#8d,#8d,#8c,#8c,#8c,#8b
	db #8b,#8b,#8a,#8a,#8a,#89,#89,#89
	db #88,#88,#88,#87,#87,#87,#86,#86
	db #86,#85,#85,#85,#84,#84,#84,#83
	db #83,#83,#82,#82,#82,#81,#81,#81
.l928f equ $ + 6
.l928d equ $ + 4
.l928b equ $ + 2
	db #80,#01,#80,#01,#8f,#01,#8f,#8f
	db #8f,#8f,#8e,#8e,#8d,#8d,#8c,#8c
	db #8b,#8a,#89,#88,#87,#86,#85,#84
.l92a8 equ $ + 7
.l92a6 equ $ + 5
	db #83,#82,#81,#80,#01,#80,#01,#8f
.l92aa equ $ + 1
	db #01,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #8e,#8e,#8e,#8d,#8d,#8d,#8c,#8c
	db #8c,#8b,#8b,#8b,#8a,#8a,#8a,#89
	db #89,#89,#88,#88,#88,#87,#87,#87
	db #86,#86,#86,#85,#85,#85,#84,#84
	db #84,#83,#83,#83,#82,#82,#82,#81
.l92df equ $ + 6
.l92dd equ $ + 4
	db #81,#81,#80,#01,#80,#01,#90,#91
.l92e8 equ $ + 7
	db #90,#8f,#8e,#8d,#8e,#8f,#08,#8f
	db #8f,#8f,#8f,#8e,#8e,#8d,#8d,#8c
	db #8c,#8b,#8a,#89,#88,#87,#86,#85
.l92ff equ $ + 6
	db #84,#83,#82,#81,#80,#01,#80,#01
.l9301
	db #90,#91,#90,#8f,#8e,#8d,#8e,#07
.l9309
	db #81,#81,#82,#82,#83,#83,#84,#84
	db #85,#85,#86,#86,#87,#87,#88,#88
	db #89,#89,#8a,#8a,#8b,#8b,#8c,#8c
.l9327 equ $ + 6
	db #8d,#8d,#8e,#8e,#8f,#01,#80,#01
.l932b equ $ + 2
.l9329
	db #8f,#01,#86,#8a,#8c,#8e,#8f,#01
.l9335 equ $ + 4
.l9333 equ $ + 2
.l9331
	db #80,#01,#8f,#01,#81,#81,#82,#82
	db #83,#83,#84,#84,#85,#85,#86,#86
	db #87,#87,#88,#88,#89,#89,#8a,#8a
	db #8b,#8b,#8c,#8c,#8d,#8d,#8e,#8e
.l9355 equ $ + 4
.l9353 equ $ + 2
	db #8f,#01,#80,#01,#90,#91,#90,#8f
.l935e equ $ + 5
	db #8e,#8d,#8e,#8f,#08,#86,#8a,#8c
.l9366 equ $ + 5
.l9364 equ $ + 3
	db #8e,#8f,#01,#80,#01,#90,#91,#90
.l936e equ $ + 5
	db #8f,#8e,#8d,#8e,#07,#81,#81,#82
	db #82,#83,#83,#84,#84,#85,#85,#86
	db #86,#87,#87,#88,#88,#89,#89,#8a
	db #8a,#8b,#8b,#8c,#8c,#8d,#8d,#8e
.l938e equ $ + 5
.l938c equ $ + 3
	db #8e,#8f,#01,#80,#01,#8f,#8e,#8f
	db #8f,#8f,#90,#8f,#8f,#8e,#8e,#8f
	db #8f,#90,#90,#8f,#8f,#8e,#8e,#8e
	db #8f,#90,#90,#90,#8f,#8e,#8d,#8e
	db #8f,#90,#91,#90,#8f,#8e,#8c,#8e
.l93b7 equ $ + 6
	db #8f,#90,#92,#90,#8f,#08,#86,#8a
.l93bf equ $ + 6
.l93bd equ $ + 4
	db #8c,#8e,#8f,#01,#80,#01,#8f,#90
	db #8f,#8f,#8f,#8e,#8f,#8f,#8f,#90
	db #90,#8f,#8f,#8e,#8e,#8f,#90,#90
	db #90,#8f,#8e,#8e,#8e,#8f,#90,#91
	db #90,#8f,#8e,#8d,#8e,#8f,#90,#92
.l93e8 equ $ + 7
	db #90,#8f,#8e,#8c,#8e,#8f,#08,#8f
	db #8e,#8c,#8a,#88,#86,#85,#84,#83
.l93f7 equ $ + 6
	db #82,#81,#81,#80,#80,#01,#81,#01
.l93fb equ $ + 2
.l93f9
	db #8f,#01,#8f,#8e,#8c,#8a,#88,#86
	db #85,#84,#83,#82,#81,#81,#80,#80
.l940e equ $ + 5
.l940c equ $ + 3
.l940a equ $ + 1
	db #01,#90,#01,#8f,#01,#8f,#8f,#8f
	db #8f,#8e,#8d,#8c,#8b,#8a,#89,#88
	db #87,#86,#85,#84,#83,#82,#81,#80
.l9427 equ $ + 6
.l9425 equ $ + 4
.l9423 equ $ + 2
	db #80,#01,#87,#01,#8f,#01,#82,#e4
	db #e5,#83,#08,#85,#01,#96,#87,#1f
	db #89,#8c,#35,#54,#87,#00,#54,#c7
	db #54,#88,#54,#89,#00,#54,#ca,#54
	db #87,#54,#8a,#00,#54,#c9,#54,#87
	db #54,#89,#00,#55,#ca,#54,#87,#00
	db #54,#c7,#54,#88,#54,#89,#00,#54
	db #ca,#54,#8b,#54,#8a,#00,#54,#c9
	db #54,#87,#54,#86,#00,#5c,#c9,#53
	db #87,#54,#87,#00,#54,#c8,#54,#86
	db #54,#86,#00,#55,#c6,#54,#88,#00
	db #54,#c7,#54,#83,#54,#83,#00,#54
	db #c2,#54,#84,#54,#86,#00,#5c,#c5
	db #53,#83,#54,#83,#00,#5d,#c3,#00
	db #35,#34,#00,#35,#54,#87,#00,#54
	db #c7,#54,#88,#54,#89,#00,#54,#ca
	db #54,#87,#54,#8a,#00,#54,#c9,#54
	db #87,#54,#89,#00,#55,#ca,#54,#87
	db #00,#54,#c7,#54,#88,#54,#89,#00
	db #54,#ca,#54,#8b,#54,#8a,#00,#54
	db #c9,#54,#87,#54,#86,#00,#5c,#c9
	db #53,#87,#54,#87,#00,#54,#c8,#54
	db #86,#54,#86,#00,#55,#c6,#54,#88
	db #00,#54,#c7,#54,#83,#54,#83,#00
	db #54,#c2,#54,#84,#54,#86,#00,#5c
	db #c5,#53,#83,#54,#83,#00,#5d,#c3
	db #00,#35,#34,#00,#5d,#c3,#00,#1d
.l94fd equ $ + 4
	db #c3,#00,#00,#00,#82,#99,#99,#83
	db #08,#85,#01,#96,#87,#1d,#81,#8c
	db #34,#35,#00,#14,#43,#54,#85,#54
	db #85,#00,#14,#41,#54,#85,#54,#85
	db #00,#54,#43,#54,#85,#54,#85,#00
	db #74,#54,#85,#54,#85,#00,#74,#54
	db #85,#54,#85,#00,#74,#54,#85,#54
	db #85,#00,#74,#54,#85,#54,#85,#00
	db #74,#54,#85,#54,#85,#00,#74,#54
	db #86,#54,#86,#00,#74,#54,#86,#54
	db #86,#00,#74,#54,#85,#54,#85,#00
	db #74,#54,#84,#54,#83,#00,#74,#54
	db #85,#54,#85,#00,#5d,#83,#00,#35
	db #34,#00,#35,#34,#00,#14,#43,#54
	db #85,#54,#85,#00,#14,#41,#54,#85
	db #54,#85,#00,#54,#43,#54,#85,#54
	db #85,#00,#74,#54,#85,#54,#85,#00
	db #74,#54,#85,#54,#85,#00,#74,#54
	db #85,#54,#85,#00,#74,#54,#85,#54
	db #85,#00,#74,#54,#85,#54,#85,#00
	db #74,#54,#86,#54,#86,#00,#74,#54
	db #86,#54,#86,#00,#74,#54,#85,#54
	db #85,#00,#74,#54,#84,#54,#83,#00
	db #74,#54,#85,#54,#85,#00,#5d,#83
	db #00,#35,#34,#00,#5d,#85,#00,#1d
.l95c5 equ $ + 4
	db #85,#00,#00,#00,#82,#e4,#e5,#83
	db #08,#85,#02,#8e,#87,#1d,#89,#8c
	db #34,#35,#00,#5d,#80,#00,#5d,#83
	db #00,#5d,#87,#00,#5d,#83,#00,#5d
	db #80,#00,#5d,#83,#00,#5d,#85,#00
	db #5d,#85,#00,#5d,#86,#00,#5d,#86
	db #00,#5d,#83,#00,#5d,#80,#00,#5d
	db #83,#00,#55,#83,#53,#c3,#53,#c4
	db #00,#85,#12,#54,#85,#54,#c3,#54
	db #c3,#00,#85,#10,#5d,#c3,#00,#5d
	db #80,#00,#5d,#83,#00,#5d,#87,#00
	db #5d,#83,#00,#5d,#80,#00,#5d,#83
	db #00,#5d,#85,#00,#5d,#85,#00,#5d
	db #86,#00,#5d,#86,#00,#5d,#83,#00
	db #5d,#80,#00,#5d,#83,#00,#55,#83
	db #53,#c3,#53,#c4,#00,#85,#12,#54
	db #85,#54,#c3,#54,#c3,#00,#5d,#c3
	db #00,#1d,#c3,#00,#00
;
.init_music		; added by Megachur
;
	ld a,#01
	ld ix,lbffc
	jp real_init_music
.lbffc
	dw #0000
;
.play_music		; added by Megachur
;
	ld b,6
.play_music_loop
	push bc
	call real_play_music
	pop bc
	djnz play_music_loop
	ret
;
.music_info
	db "Meurtres En Serie (1987)(Cobra Soft)()",0
	db "",0

	read "music_end.asm"
