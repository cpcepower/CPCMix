; Music of Fireball (1988)(E.S.A.T. Software)()()
; Ripped by Megachur the 07/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FIREBALL.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 07
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #891c

	read "music_header.asm"

	jp l8938	; init music interrupt
	jp l896b	; stop music interrupt
	jp l895a
	jp l8929
.l8928
	db #00
;
.init_music_1st
.l8929
;
	ld ix,l8ae3
	ld a,(ix+#09)
	nop
	nop
	nop
	nop
	ld (l8928),a
	ret
;
.real_init_music
.l8938
;
	cp #03
	ret nc
	or a
	ret z
	ld de,#ffff
	cp #02
	jr nz,l894e
	ld d,(ix+#01)
	ld e,(ix+#00)
	inc ix
	inc ix
.l894e
	ld b,(ix+#01)
	ld c,(ix+#00)
	call l89c9
	ret:nop:nop		; jp l895a - modified by Megachur
.l895a
	ld hl,l8b4f
	ld de,l8b45
	ld bc,#0009
	ldir
	ld hl,l8b45
	jp #bce3
.l896b
	ld hl,l8b45
	call #bce6
	ld c,#3f
	ld a,#07
	jp l8e5f
;
.play_music_interrupt
.l8978
;
	push ix
	push iy
	push hl
	push de
	push af
	push bc
	ld iy,l8b42
	ld ix,l8ae3
	ld a,(iy+#00)
	or a
	call nz,l8b5b
	ld a,(iy+#01)
	ld ix,l8af3
	or a
	call nz,l8b5b
	ld ix,l8b03
	ld a,(iy+#02)
	or a
	call nz,l8b5b
	ld a,(iy+#00)
	or (iy+#01)
	or (iy+#02)
	call z,l896b
	ld a,(l8b5a)
	dec a
	jr nz,l89bd
	call l8c84
	ld a,(l8b59)
.l89bd
	ld (l8b5a),a
	pop bc
	pop af
	pop de
	pop hl
	pop iy
	pop ix
	ret
.l89c9
	ld hl,l8a5d
	push bc
	push de
	ld de,l8ae3
	ld bc,#0010
	ld a,#01
	push hl
	push bc
	ldir
	pop bc
	pop hl
	ld (l8aee),a
	push hl
	push bc
	ld de,l8af3
	ldir
	pop bc
	pop hl
	inc a
	ld (l8afe),a
	ld de,l8b03
	ldir
	inc a
	ld (l8b0e),a
	ld a,#01
	ld (l8b5a),a
	ld iy,l8b42
	ld (iy+#00),a
	ld (iy+#01),a
	ld (iy+#02),a
	pop de
	pop bc
	ld hl,(l8b3c)
	ld ix,l8ae3
	ld (ix+#09),e
	ld (ix+#0a),d
	push de
	push bc
	call l8a3e
	pop bc
	pop de
	push bc
	push de
	ld ix,l8af3
	ld hl,(l8b3e)
	ld (ix+#09),e
	ld (ix+#0a),d
	call l8a3e
	pop de
	pop bc
	ld ix,l8b03
	ld hl,(l8b40)
	ld (ix+#09),e
	ld (ix+#0a),d
.l8a3e
	ld a,b
	or c
	jr z,l8a56
	push bc
.l8a43
	ld a,(hl)
	bit 7,a
	jr z,l8a4d
	call l8a6d
	jr l8a43
.l8a4d
	ld a,(hl)
	inc hl
	or a
	jr nz,l8a4d
	pop bc
	dec bc
	jr l8a3e
.l8a56
	ld (ix+#07),l
	ld (ix+#08),h
	ret
.l8a5d
	db #00,#00,#01,#00,#01,#03,#01,#00
	db #00,#00,#00,#00,#01,#01,#00,#00
.l8a6d
	and #07
	dec a
	jr nz,l8a7f
	ld a,(hl)
	inc hl
	bit 3,a
	ld a,#00
	jr z,l8a7b
	inc a
.l8a7b
	ld (ix+#02),a
	ret
.l8a7f
	dec a
	jr nz,l8a94
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
.l8a94
	dec a
	jr nz,l8a9e
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#0d),a
	ret
.l8a9e
	dec a
	jr nz,l8aa3
	inc hl
	ret
.l8aa3
	dec a
	jr nz,l8abd
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
.l8abd
	dec a
	jr nz,l8ace
	ld a,(hl)
	and #3f
	srl a
	srl a
	srl a
	ld (ix+#05),a
	inc hl
	ret
.l8ace
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
	call l8e46
	pop ix
	pop hl
	ret
.l8ae3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8aee equ $ + 3
	db #00,#00,#01,#00,#00,#00,#00,#00
.l8af3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8afe equ $ + 3
	db #00,#00,#02,#00,#00,#00,#00,#00
.l8b03
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8b0e equ $ + 3
	db #00,#00,#03,#00,#00,#00,#00,#00
.l8b13
	db #08,#08,#00,#00,#00,#00,#00,#00
.l8b1f equ $ + 4
	db #00,#00,#00,#00,#10,#09,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8b2b
	db #20,#0a,#04,#00,#00,#00,#00,#00
.l8b3a equ $ + 7
.l8b39 equ $ + 6
.l8b37 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l8b41 equ $ + 5
.l8b40 equ $ + 4
.l8b3e equ $ + 2
.l8b3c
	dw l9143,l93bd,l94fb
.l8b45 equ $ + 3
.l8b42
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8b4f equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#81
	dw l8978
	db #00,#00
.l8b5a equ $ + 1
.l8b59
	ld b,#00
.l8b5b
	ld (l8b3a),hl
	ld a,(ix+#0c)
	dec a
	jr z,l8b68
	ld (ix+#0c),a
	ret
.l8b68
	ld a,(ix+#0d)
	ld (ix+#0c),a
	ld a,(ix+#06)
	dec a
	jr z,l8b78
	ld (ix+#06),a
	ret
.l8b78
	ld h,(ix+#08)
	ld l,(ix+#07)
	ld a,(hl)
	or a
	jr nz,l8baa
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
	jr z,l8ba4
	ld a,(hl)
	or a
	jr nz,l8baa
.l8ba4
	ld b,(ix+#0b)
	jp l8e4f
.l8baa
	cp #80
	jr c,l8bb4
	call l8a6d
	ld a,(hl)
	jr l8baa
.l8bb4
	ld de,l8bd5
	ld a,(hl)
	and #0f
	add e
	ld e,a
	jr nc,l8bbf
	inc d
.l8bbf
	ld a,(de)
	ld (ix+#06),a
	ld a,(hl)
	bit 5,a
	jr z,l8be5
	inc hl
	ld (ix+#07),l
	ld (ix+#08),h
	ld b,(ix+#0b)
	jp l8e29
.l8bd5
	inc bc
	inc b
	add hl,bc
	ld b,#0c
	jr l8bdd
.l8bdd equ $ + 1
	ld bc,#0403
	add hl,bc
	add hl,bc
	ld (de),a
	inc h
.l8be5 equ $ + 2
	ld bc,#2301
	bit 6,a
	jr z,l8c01
	ld a,(hl)
	push hl
	push ix
	ld b,(ix+#0b)
	ld c,(ix+#03)
	bit 6,a
	jr z,l8bfb
	ld c,(ix+#04)
.l8bfb
	call l8df7
	pop ix
	pop hl
.l8c01
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
	call nz,l8c51
	ld a,(ix+#02)
	push ix
	call l8d74
	pop ix
	ld a,(ix+#05)
	add e
	ld b,a
	ld c,d
	push ix
	call l8d43
	pop ix
	ld b,(ix+#0b)
	jp l8e3a
.l8c41
	ld bc,#0402
	ex af,af'
	djnz l8c67
	ld b,b
	ld bc,#0402
	ex af,af'
	djnz l8c6e
	ld bc,#0402
.l8c51
	push hl
	ld de,l8c41
	ld a,c
	add e
	jr nc,l8c5a
	inc d
.l8c5a
	ld e,a
	ld a,b
	ld hl,#00ff
	cp #03
	jr z,l8c68
	dec h
	dec a
	jr nz,l8c68
.l8c67
	inc l
.l8c68
	ld a,(de)
	and h
	ld h,a
	ld a,(de)
	xor #ff
.l8c6e
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
.l8c84
	ld iy,l8b39
	ld a,#38
	ld (iy+#00),a
	ld ix,l8b13
	call l8cbd
	ld ix,l8b1f
	call l8cbd
	ld ix,l8b2b
	call l8cbd
	ld c,(iy+#00)
	ld a,#07
	jp l8e5f
.l8caa
	ld a,(hl)
	and #80
	jr z,l8cb4
.l8caf
	ld a,(hl)
	inc hl
	and #7f
	ret
.l8cb4
	ld de,#0000
	ld e,(hl)
	or a
	sbc hl,de
	jr l8caf
.l8cbd
	ld h,(ix+#06)
	ld l,(ix+#05)
	call l8caa
	ld c,a
	ld (ix+#06),h
	ld (ix+#05),l
	ld a,(iy+#00)
	jr z,l8cdd
	xor (ix+#00)
	ld (iy+#00),a
	ld a,#06
	call l8e5f
.l8cdd
	ld l,(ix+#03)
	ld h,(ix+#04)
	call l8caa
	ld (ix+#03),l
	ld (ix+#04),h
	and #0f
	ld h,#00
	ld l,a
	push hl
	pop de
	ld a,(ix+#0b)
	or a
.l8cf7
	jr z,l8cfd
	add hl,de
	dec a
	jr l8cf7
.l8cfd
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
	call l8e5f
	ld h,(ix+#08)
	ld l,(ix+#07)
	call l8caa
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
	call l8e5f
	pop af
	inc a
	ld c,h
	jp l8e5f
.l8d43
	ld hl,l8d5c
	ld a,c
	sla a
	add l
	jr nc,l8d4d
	inc h
.l8d4d
	ld l,a
	ld a,b
	inc a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
.l8d54
	dec a
	ret z
	srl h
	rr l
	jr l8d54
.l8d5c
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
.l8d74
	ld ix,l8b37
	ld (l8b37),hl
	ld hl,l8dcc
	or a
	jr nz,l8d84
	ld hl,l8dc7
.l8d84
	ld e,#00
	ld a,c
.l8d87
	cp #07
	jr c,l8d91
	or a
	sbc #07
	inc e
	jr l8d87
.l8d91
	push af
	add l
	jr nc,l8d96
	inc h
.l8d96
	ld l,a
	ld d,(hl)
	ld a,b
	or a
	jr nz,l8dda
	ld hl,l8dd3
	pop af
	add l
	jr nc,l8da4
	inc h
.l8da4
	ld l,a
	ld a,(hl)
	and (ix+#01)
	jr z,l8db1
	and (ix+#00)
	jr nz,l8dba
.l8db0
	inc d
.l8db1
	ld a,d
	cp #0c
	ret c
	inc e
	sbc #0c
	ld d,a
	ret
.l8dba
	call l8db1
	dec d
	ld a,d
	cp #0c
	ret c
	add #0c
	dec e
	ld d,a
	ret
.l8dc7
	inc b
	dec b
	rlca
	add hl,bc
	dec bc
.l8dcc
	inc c
	ld c,#10
	ld de,#1513
	rla
.l8dd3
	ld bc,#0402
	ex af,af'
	djnz l8df9
	ld b,b
.l8dda
	pop af
	ld a,b
	dec a
	jr z,l8db0
	dec a
	jr z,l8dba
	jr l8db1
.l8de4
	add hl,de
	dec b
	jr nz,l8de4
	ret
.l8de9
	ld hl,l8b13
	dec b
	ld de,#000c
	call nz,l8de4
	push hl
	pop ix
	ret
.l8df9 equ $ + 2
.l8df7
	call l8de9
	ld hl,l8e7d
	ld de,#0006
	ld b,c
	dec b
	call nz,l8de4
	inc ix
	inc ix
	inc ix
	push ix
	pop de
	ld bc,#0006
	ldir
	ret
.l8e14
	ld (ix+#03),l
	ld (ix+#04),h
	add hl,de
	ld (ix+#05),l
	ld (ix+#06),h
	add hl,de
	ld (ix+#07),l
	ld (ix+#08),h
	ret
.l8e29
	call l8de9
	ld de,#0002
	ld hl,l8e34
	jr l8e14
.l8e34
	add b
	ld bc,#0180
	adc a
.l8e3a equ $ + 1
	ld bc,#cde5
	jp (hl)
	adc l
	pop hl
	ld (ix+#09),l
	ld (ix+#0a),h
	ret
.l8e46
	push bc
	call l8de9
	pop bc
	ld (ix+#0b),c
	ret
.l8e4f
	push bc
	call l8e29
	pop bc
	ld c,b
	ld b,#00
	ld hl,l8b41
	add hl,bc
	ld a,#00
	ld (hl),a
	ret
.l8e5f
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
.l8e7d
	dw l8edd,l8f10,l8f12,l8f1b
	dw l8f32,l8f34,l8f36,l8f69
	dw l8f6b,l8f74,l8fa7,l8fa9
	dw l8fab,l8fc2,l8fc4,l8fc6
	dw l8ff9,l8ffb,l9004,l901b
	dw l901d,l9025,l9043,l9045
	dw l9047,l904d,l904f,l9051
	dw l906f,l9071,l907a,l9080
	dw l9082,l908a,l90a8,l90aa
	dw l90d3,l90d9,l90db,l9104
	dw l9113,l9115,l9117,l9126
	dw l9128,l912a,l913f,l9141
.l8edd
	db #8f,#8f,#8f,#8f,#8f,#8f,#8f,#8e
	db #8e,#8e,#8d,#8d,#8d,#8c,#8c,#8c
	db #8b,#8b,#8b,#8a,#8a,#8a,#89,#89
	db #89,#88,#88,#88,#87,#87,#87,#86
	db #86,#86,#85,#85,#85,#84,#84,#84
	db #83,#83,#83,#82,#82,#82,#81,#81
.l8f12 equ $ + 5
.l8f10 equ $ + 3
	db #81,#80,#01,#80,#01,#90,#91,#90
.l8f1b equ $ + 6
	db #8f,#8e,#8d,#8e,#8f,#08,#8f,#8f
	db #8f,#8f,#8e,#8e,#8d,#8d,#8c,#8c
	db #8b,#8a,#89,#88,#87,#86,#85,#84
.l8f34 equ $ + 7
.l8f32 equ $ + 5
	db #83,#82,#81,#80,#01,#80,#01,#8f
.l8f36 equ $ + 1
	db #01,#8b,#88,#8e,#8b,#8f,#8c,#8f
	db #8c,#8f,#8c,#8f,#8c,#8f,#8c,#8f
	db #8c,#8f,#8c,#8f,#8c,#8f,#8b,#8e
	db #8a,#8d,#89,#8c,#89,#8b,#88,#8a
	db #87,#89,#86,#88,#85,#87,#84,#86
	db #82,#85,#82,#84,#81,#83,#81,#82
.l8f6b equ $ + 6
.l8f69 equ $ + 4
	db #81,#81,#80,#02,#80,#01,#90,#91
.l8f74 equ $ + 7
	db #90,#8f,#8e,#8d,#8e,#8f,#08,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#8e,#8e
	db #8e,#8d,#8d,#8d,#8c,#8c,#8c,#8b
	db #8b,#8b,#8a,#8a,#8a,#89,#89,#89
	db #88,#88,#88,#87,#87,#87,#86,#86
	db #86,#85,#85,#85,#84,#84,#84,#83
	db #83,#83,#82,#82,#82,#81,#81,#81
.l8fab equ $ + 6
.l8fa9 equ $ + 4
.l8fa7 equ $ + 2
	db #80,#01,#80,#01,#8f,#01,#8f,#8f
	db #8f,#8f,#8e,#8e,#8d,#8d,#8c,#8c
	db #8b,#8a,#89,#88,#87,#86,#85,#84
.l8fc4 equ $ + 7
.l8fc2 equ $ + 5
	db #83,#82,#81,#80,#01,#80,#01,#8f
.l8fc6 equ $ + 1
	db #01,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #8e,#8e,#8e,#8d,#8d,#8d,#8c,#8c
	db #8c,#8b,#8b,#8b,#8a,#8a,#8a,#89
	db #89,#89,#88,#88,#88,#87,#87,#87
	db #86,#86,#86,#85,#85,#85,#84,#84
	db #84,#83,#83,#83,#82,#82,#82,#81
.l8ffb equ $ + 6
.l8ff9 equ $ + 4
	db #81,#81,#80,#01,#80,#01,#90,#91
.l9004 equ $ + 7
	db #90,#8f,#8e,#8d,#8e,#8f,#08,#8f
	db #8f,#8f,#8f,#8e,#8e,#8d,#8d,#8c
	db #8c,#8b,#8a,#89,#88,#87,#86,#85
.l901b equ $ + 6
	db #84,#83,#82,#81,#80,#01,#80,#01
.l901d
	db #90,#91,#90,#8f,#8e,#8d,#8e,#07
.l9025
	db #81,#81,#82,#82,#83,#83,#84,#84
	db #85,#85,#86,#86,#87,#87,#88,#88
	db #89,#89,#8a,#8a,#8b,#8b,#8c,#8c
.l9043 equ $ + 6
	db #8d,#8d,#8e,#8e,#8f,#01,#80,#01
.l9047 equ $ + 2
.l9045
	db #8f,#01,#86,#8a,#8c,#8e,#8f,#01
.l9051 equ $ + 4
.l904f equ $ + 2
.l904d
	db #80,#01,#8f,#01,#81,#81,#82,#82
	db #83,#83,#84,#84,#85,#85,#86,#86
	db #87,#87,#88,#88,#89,#89,#8a,#8a
	db #8b,#8b,#8c,#8c,#8d,#8d,#8e,#8e
.l9071 equ $ + 4
.l906f equ $ + 2
	db #8f,#01,#80,#01,#90,#91,#90,#8f
.l907a equ $ + 5
	db #8e,#8d,#8e,#8f,#08,#86,#8a,#8c
.l9082 equ $ + 5
.l9080 equ $ + 3
	db #8e,#8f,#01,#80,#01,#90,#91,#90
.l908a equ $ + 5
	db #8f,#8e,#8d,#8e,#07,#81,#81,#82
	db #82,#83,#83,#84,#84,#85,#85,#86
	db #86,#87,#87,#88,#88,#89,#89,#8a
	db #8a,#8b,#8b,#8c,#8c,#8d,#8d,#8e
.l90aa equ $ + 5
.l90a8 equ $ + 3
	db #8e,#8f,#01,#80,#01,#8f,#8e,#8f
	db #8f,#8f,#90,#8f,#8f,#8e,#8e,#8f
	db #8f,#90,#90,#8f,#8f,#8e,#8e,#8e
	db #8f,#90,#90,#90,#8f,#8e,#8d,#8e
	db #8f,#90,#91,#90,#8f,#8e,#8c,#8e
.l90d3 equ $ + 6
	db #8f,#90,#92,#90,#8f,#08,#86,#8a
.l90db equ $ + 6
.l90d9 equ $ + 4
	db #8c,#8e,#8f,#01,#80,#01,#8f,#90
	db #8f,#8f,#8f,#8e,#8f,#8f,#8f,#90
	db #90,#8f,#8f,#8e,#8e,#8f,#90,#90
	db #90,#8f,#8e,#8e,#8e,#8f,#90,#91
	db #90,#8f,#8e,#8d,#8e,#8f,#90,#92
.l9104 equ $ + 7
	db #90,#8f,#8e,#8c,#8e,#8f,#08,#8f
	db #8e,#8c,#8a,#88,#86,#85,#84,#83
.l9113 equ $ + 6
	db #82,#81,#81,#80,#80,#01,#81,#01
.l9117 equ $ + 2
.l9115
	db #8f,#01,#8f,#8e,#8c,#8a,#88,#86
	db #85,#84,#83,#82,#81,#81,#80,#80
.l912a equ $ + 5
.l9128 equ $ + 3
.l9126 equ $ + 1
	db #01,#90,#01,#8f,#01,#8f,#8f,#8f
	db #8f,#8e,#8d,#8c,#8b,#8a,#89,#88
	db #87,#86,#85,#84,#83,#82,#81,#80
.l9143 equ $ + 6
.l9141 equ $ + 4
.l913f equ $ + 2
	db #80,#01,#87,#01,#8f,#01,#82,#e4
	db #e6,#83,#0b,#85,#18,#96,#87,#1f
	db #89,#84,#35,#00,#33,#53,#89,#53
	db #89,#53,#89,#00,#53,#89,#53,#87
	db #53,#86,#53,#87,#00,#33,#53,#89
	db #10,#89,#50,#89,#53,#89,#00,#53
	db #89,#53,#87,#53,#86,#53,#87,#00
	db #33,#54,#89,#53,#89,#00,#53,#89
	db #53,#87,#53,#86,#53,#87,#00,#33
	db #54,#89,#53,#87,#00,#53,#89,#53
	db #87,#53,#86,#53,#87,#00,#33,#5c
	db #b8,#00,#55,#88,#00,#54,#b8,#53
	db #87,#53,#88,#00,#15,#88,#00,#53
	db #89,#53,#89,#53,#89,#53,#89,#00
	db #53,#89,#53,#89,#53,#89,#53,#89
	db #00,#53,#89,#53,#89,#53,#89,#53
	db #89,#00,#14,#89,#34,#00,#33,#53
	db #89,#53,#89,#53,#89,#00,#53,#89
	db #53,#87,#53,#86,#53,#87,#00,#33
	db #54,#89,#53,#89,#00,#53,#89,#53
	db #87,#53,#86,#53,#87,#00,#33,#54
	db #89,#53,#87,#00,#53,#89,#53,#87
	db #53,#86,#53,#87,#00,#33,#54,#89
	db #53,#87,#00,#53,#89,#53,#87,#53
	db #86,#53,#87,#00,#33,#53,#88,#54
	db #b8,#00,#55,#88,#00,#53,#b8,#54
	db #88,#53,#88,#00,#15,#88,#00,#53
	db #89,#53,#89,#53,#89,#53,#89,#00
	db #53,#89,#53,#89,#53,#89,#53,#89
	db #00,#53,#89,#53,#89,#53,#89,#53
	db #89,#00,#85,#14,#14,#89,#53,#87
	db #50,#87,#50,#8b,#00,#13,#8b,#53
	db #b9,#14,#89,#00,#14,#89,#54,#89
	db #00,#53,#88,#53,#87,#14,#87,#00
	db #14,#87,#53,#85,#53,#87,#00,#53
	db #87,#33,#34,#00,#85,#18,#35,#00
	db #35,#00,#35,#00,#35,#00,#35,#00
	db #35,#00,#35,#00,#33,#53,#89,#53
	db #89,#53,#89,#00,#53,#89,#53,#87
	db #53,#86,#53,#87,#00,#33,#54,#89
	db #53,#89,#00,#53,#89,#53,#87,#53
	db #86,#53,#87,#00,#33,#54,#89,#53
	db #87,#00,#53,#89,#53,#87,#53,#86
	db #53,#87,#00,#33,#54,#89,#53,#87
	db #00,#53,#89,#53,#87,#53,#86,#53
	db #87,#00,#33,#53,#88,#54,#b8,#00
	db #55,#88,#00,#53,#b8,#54,#88,#53
	db #88,#00,#15,#88,#00,#53,#89,#53
	db #89,#53,#89,#53,#89,#00,#53,#89
	db #53,#89,#53,#89,#53,#89,#00,#53
	db #89,#53,#89,#53,#89,#53,#89,#00
	db #85,#14,#14,#89,#53,#87,#50,#87
	db #50,#8b,#00,#13,#8b,#53,#b9,#14
	db #89,#00,#14,#89,#54,#89,#00,#53
	db #88,#53,#87,#14,#87,#00,#14,#87
	db #53,#85,#53,#87,#00,#53,#87,#33
	db #34,#00,#85,#18,#35,#00,#35,#00
	db #35,#00,#35,#00,#35,#00,#35,#00
	db #35,#00,#33,#53,#89,#53,#89,#53
	db #89,#00,#53,#89,#53,#87,#53,#86
	db #53,#87,#00,#85,#14,#33,#54,#89
	db #53,#89,#00,#53,#89,#53,#87,#53
	db #86,#53,#87,#00,#33,#54,#89,#53
	db #87,#00,#53,#89,#53,#87,#53,#86
	db #53,#87,#00,#33,#54,#89,#53,#87
	db #00,#53,#89,#53,#87,#53,#86,#53
	db #87,#00,#33,#53,#88,#54,#b8,#00
	db #55,#88,#00,#53,#b8,#54,#88,#53
	db #88,#00,#15,#88,#00,#53,#89,#53
	db #89,#53,#89,#53,#89,#00,#53,#89
	db #53,#89,#53,#89,#53,#89,#00,#53
	db #89,#53,#89,#53,#89,#53,#89,#00
	db #14,#89,#53,#87,#50,#87,#50,#8b
	db #00,#13,#8b,#53,#b9,#14,#89,#00
	db #14,#89,#54,#89,#00,#53,#88,#53
	db #87,#14,#87,#00,#14,#87,#53,#85
	db #53,#87,#00,#53,#87,#33,#34,#00
	db #35,#00,#35,#00,#35,#00,#35,#00
	db #35,#00,#35,#00,#35,#00,#35,#00
	db #35,#00,#35,#00,#35,#00,#00,#00
.l93bd
	db #82,#e4,#e6,#83,#0b,#85,#18,#96
	db #87,#1f,#89,#84,#35,#00,#35,#00
	db #35,#00,#35,#00,#35,#00,#35,#00
	db #35,#00,#35,#00,#35,#00,#33,#5c
	db #b6,#00,#55,#86,#00,#54,#b6,#53
	db #85,#53,#86,#00,#15,#86,#00,#35
	db #00,#35,#00,#35,#00,#35,#00,#35
	db #00,#35,#00,#35,#00,#35,#00,#35
	db #00,#35,#00,#35,#00,#35,#00,#33
	db #53,#88,#54,#b6,#00,#55,#86,#00
	db #53,#b6,#54,#86,#53,#86,#00,#15
	db #86,#00,#35,#00,#35,#00,#35,#00
	db #85,#14,#54,#89,#53,#87,#50,#87
	db #50,#87,#00,#15,#87,#00,#14,#87
	db #54,#b5,#00,#55,#b5,#00,#54,#83
	db #34,#00,#35,#00,#85,#18,#35,#00
	db #35,#00,#35,#00,#35,#00,#35,#00
	db #35,#00,#35,#00,#35,#00,#35,#00
	db #35,#00,#35,#00,#35,#00,#35,#00
	db #35,#00,#35,#00,#33,#53,#88,#54
	db #b6,#00,#55,#86,#00,#53,#b6,#54
	db #86,#53,#86,#00,#15,#86,#00,#35
	db #00,#35,#00,#35,#00,#85,#14,#54
	db #89,#53,#87,#50,#87,#50,#87,#00
	db #15,#87,#00,#14,#87,#54,#b5,#00
	db #55,#b5,#00,#54,#83,#34,#00,#35
	db #00,#85,#18,#35,#00,#35,#00,#35
	db #00,#35,#00,#35,#00,#35,#00,#35
	db #00,#35,#00,#35,#00,#85,#14,#35
	db #00,#35,#00,#35,#00,#35,#00,#35
	db #00,#35,#00,#33,#53,#88,#54,#b6
	db #00,#55,#86,#00,#53,#b6,#54,#86
	db #53,#86,#00,#15,#86,#00,#35,#00
	db #35,#00,#35,#00,#54,#89,#53,#87
	db #50,#87,#50,#87,#00,#15,#87,#00
	db #14,#87,#54,#b5,#00,#55,#b5,#00
	db #54,#83,#34,#00,#35,#00,#35,#00
	db #35,#00,#35,#00,#35,#00,#35,#00
	db #35,#00,#35,#00,#35,#00,#35,#00
.l94fb equ $ + 6
	db #35,#00,#35,#00,#00,#00,#82,#91
	db #93,#83,#0b,#85,#1f,#96,#87,#1f
	db #81,#84,#35,#00,#53,#85,#53,#85
	db #53,#89,#53,#8c,#00,#14,#8c,#54
	db #89,#00,#53,#85,#53,#85,#53,#89
	db #53,#8c,#00,#14,#8c,#54,#89,#00
	db #53,#85,#53,#85,#53,#89,#53,#8c
	db #00,#14,#8c,#54,#89,#00,#53,#85
	db #53,#85,#53,#89,#53,#8c,#00,#14
	db #8c,#54,#89,#00,#55,#88,#00,#15
	db #88,#00,#15,#88,#00,#15,#88,#00
	db #53,#b8,#33,#34,#00,#35,#00,#35
	db #00,#35,#00,#53,#85,#53,#85,#53
	db #89,#53,#8c,#00,#14,#8c,#54,#89
	db #00,#53,#85,#53,#85,#53,#89,#53
	db #8c,#00,#14,#8c,#54,#89,#00,#53
	db #85,#53,#85,#53,#89,#53,#8c,#00
	db #14,#8c,#54,#89,#00,#53,#85,#53
	db #85,#53,#89,#53,#8c,#00,#14,#8c
	db #54,#89,#00,#55,#88,#00,#15,#88
	db #00,#15,#88,#00,#15,#88,#00,#53
	db #88,#33,#34,#00,#35,#00,#35,#00
	db #85,#1d,#35,#00,#54,#ba,#54,#8a
	db #00,#54,#8a,#54,#89,#00,#54,#88
	db #54,#88,#00,#54,#89,#34,#00,#85
	db #1f,#53,#85,#53,#85,#53,#89,#53
	db #8c,#00,#14,#8c,#54,#89,#00,#53
	db #85,#53,#85,#53,#89,#53,#8c,#00
	db #14,#8c,#54,#89,#00,#53,#85,#53
	db #85,#53,#89,#53,#8c,#00,#14,#8c
	db #54,#89,#00,#53,#85,#53,#85,#53
	db #89,#53,#8c,#00,#14,#8c,#54,#89
	db #00,#53,#85,#53,#85,#53,#89,#53
	db #8c,#00,#14,#8c,#54,#89,#00,#53
	db #85,#53,#85,#53,#89,#53,#8c,#00
	db #14,#8c,#54,#89,#00,#53,#85,#53
	db #85,#53,#89,#53,#8c,#00,#14,#8c
	db #54,#89,#00,#53,#85,#53,#85,#53
	db #89,#53,#8c,#00,#14,#8c,#54,#89
	db #00,#55,#88,#00,#15,#88,#00,#15
	db #88,#00,#15,#88,#00,#53,#88,#33
	db #34,#00,#35,#00,#35,#00,#85,#1d
	db #35,#00,#54,#ba,#54,#8a,#00,#54
	db #8a,#54,#89,#00,#54,#88,#54,#88
	db #00,#54,#89,#34,#00,#85,#1f,#53
	db #85,#53,#85,#53,#89,#53,#8c,#00
	db #14,#8c,#54,#89,#00,#53,#85,#53
	db #85,#53,#89,#53,#8c,#00,#14,#8c
	db #54,#89,#00,#53,#85,#53,#85,#53
	db #89,#53,#8c,#00,#14,#8c,#54,#89
	db #00,#53,#85,#53,#85,#53,#89,#53
	db #8c,#00,#14,#8c,#54,#89,#00,#53
	db #85,#53,#85,#53,#89,#53,#8c,#00
	db #14,#8c,#54,#89,#00,#85,#1d,#53
	db #85,#53,#85,#53,#89,#53,#8c,#00
	db #14,#8c,#54,#89,#00,#53,#85,#53
	db #85,#53,#89,#53,#8c,#00,#14,#8c
	db #54,#89,#00,#53,#85,#53,#85,#53
	db #89,#53,#8c,#00,#14,#8c,#54,#89
	db #00,#55,#88,#00,#15,#88,#00,#15
	db #88,#00,#15,#88,#00,#53,#88,#33
	db #34,#00,#35,#00,#35,#00,#35,#00
	db #54,#ba,#54,#8a,#00,#54,#8a,#54
	db #89,#00,#54,#88,#54,#88,#00,#54
	db #89,#34,#00,#53,#85,#53,#85,#53
	db #89,#53,#8c,#00,#14,#8c,#54,#89
	db #00,#53,#85,#53,#85,#53,#89,#53
	db #8c,#00,#14,#8c,#54,#89,#00,#53
	db #85,#53,#85,#53,#89,#53,#8c,#00
	db #14,#8c,#54,#89,#00,#53,#85,#53
	db #85,#53,#89,#53,#8c,#00,#14,#8c
	db #54,#89,#00,#87,#1c,#53,#85,#53
	db #85,#53,#89,#53,#8c,#00,#87,#19
	db #14,#8c,#54,#89,#00,#87,#16,#53
	db #85,#53,#85,#53,#89,#53,#8c,#00
	db #87,#13,#14,#8c,#54,#89,#00,#00
;
;;;; play basic -> CALL &8925:IF PEEK(&8928)=150 THEN CALL 35100,0
;
.init_music
;
	call init_music_1st
	ld a,#01
	ld ix,l8ae3
	jp real_init_music
;
.play_music
;
	call play_music_interrupt
	call play_music_interrupt
	call play_music_interrupt
	call play_music_interrupt
	call play_music_interrupt
	jp play_music_interrupt
;
.music_info
	db "Fireball (1988)(E.S.A.T. Software)()",0
	db "",0

	read "music_end.asm"
