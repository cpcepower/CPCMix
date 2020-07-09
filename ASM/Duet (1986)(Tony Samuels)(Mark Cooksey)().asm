; Music of Duet (1986)(Tony Samuels)(Mark Cooksey)()
; Ripped by Megachur the 24/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DUET.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #5b40

	read "music_header.asm"

.l5b47 equ $ + 7
.l5b46 equ $ + 6
.l5b45 equ $ + 5
.l5b44 equ $ + 4
.l5b43 equ $ + 3
.l5b42 equ $ + 2
.l5b41 equ $ + 1
.l5b40
	db #00,#00,#00,#00,#01,#00,#00,#02
.l5b4f equ $ + 7
.l5b4e equ $ + 6
.l5b4d equ $ + 5
.l5b4c equ $ + 4
.l5b4b equ $ + 3
.l5b4a equ $ + 2
.l5b48
	db #00,#00,#00,#00,#00,#00,#01,#00
.l5b57 equ $ + 7
.l5b56 equ $ + 6
.l5b55 equ $ + 5
.l5b54 equ $ + 4
.l5b52 equ $ + 2
.l5b51 equ $ + 1
.l5b50
	db #00,#02,#00,#00,#0f,#00,#00,#00
.l5b5e equ $ + 6
.l5b5c equ $ + 4
.l5b5b equ $ + 3
.l5b5a equ $ + 2
.l5b59 equ $ + 1
.l5b58
	db #01,#00,#00,#02,#00,#00,#00,#00
.l5b67 equ $ + 7
.l5b66 equ $ + 6
.l5b65 equ $ + 5
.l5b64 equ $ + 4
.l5b63 equ $ + 3
.l5b62 equ $ + 2
.l5b61 equ $ + 1
.l5b60
	db #00,#00,#00,#00,#0a,#38,#00,#01
.l5b6e equ $ + 6
.l5b6d equ $ + 5
.l5b6c equ $ + 4
.l5b6b equ $ + 3
.l5b6a equ $ + 2
.l5b69 equ $ + 1
.l5b68
	db #01,#02,#01,#01,#02,#01
	dw l5b71
.l5b70
	db #00
.l5b71
	db #0c,#0e,#0d,#0c,#0c,#0c,#0c,#0c
	db #0b,#0b,#0b,#0b,#0b,#0b,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#09,#09,#09
	db #09,#08,#08,#08,#07,#07,#07,#06
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#01,#00,#ff
.l5b9d
	db #0b,#0d,#0c,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#0a,#09,#09
	db #09,#09,#09,#09,#09,#08,#08,#08
	db #08,#07,#07,#07,#06,#06,#06,#05
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #02,#01,#00,#ff
.l5bc9
	db #0a,#0d,#0e,#0f,#0f,#0f,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0a,#0a,#0a,#0a
	db #0a,#09,#09,#09,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#05,#05
	db #05,#04,#04,#04,#03,#03,#03,#02
	db #02,#02,#01,#01,#01,#00,#00,#ff
.l5c1a equ $ + 1
.l5c19
	db #02,#01
.l5c1b
	dw l5bc9
.l5c1f equ $ + 2
.l5c1e equ $ + 1
.l5c1d
	db #00,#02,#01
.l5c20
	dw l5b9d
.l5c22
	db #00
.l5c23
	ld a,(l5b6a)
	and #01
	jp z,l5c38
	ld d,#00
	ld e,#08
	jp z,l5c38
	ld hl,l5b40
	call l5c6d
.l5c38
	ld a,(l5b6a)
	and #02
	jp z,l5c4a
	ld d,#02
	ld e,#09
	ld hl,l5b4a
	call l5c6d
.l5c4a
	ld a,(l5b6a)
	and #04
	jp z,l5c5c
	ld d,#04
	ld e,#0a
	ld hl,l5b54
	call l5c6d
.l5c5c
	ld a,(l5b65)
	ld c,#07
	call l5c82
	ld a,(l5b64)
	ld c,#06
	call l5c82
	ret
.l5c6d
	ld a,(hl)
	inc hl
	ld c,e
	inc e
	call l5c82
	ld a,(hl)
	inc hl
	ld c,d
	inc d
	call l5c82
	ld a,(hl)
	ld c,d
	inc d
	call l5c82
	ret
.l5c82
	push af
	push bc
	di
	ld b,a
	ld a,c
	ld c,b
	ld b,#f4
	out (c),a
	ld a,#c0
	ld b,#f6
	out (c),a
	xor a
	out (c),a
	ld b,#f4
	out (c),c
	ld bc,#f680
	out (c),c
	out (c),a
	pop bc
	pop af
	ei
	ret
.l5ca4
	db #00
.l5ca5
	db #00
.l5ca6
	ld d,a
	and #0f
	sla a
	ld b,#00
	ld c,a
	ld ix,l5cf8
	add ix,bc
	ld a,(ix+#00)
	ld (l5ca4),a
	ld a,(ix+#01)
	ld (l5ca5),a
	ld a,d
	and #70
	srl a
	srl a
	srl a
	srl a
	cp #05
	jr z,l5cf7
	jr c,l5ce7
	or a
	ld hl,l5ca4
	srl (hl)
	inc hl
	rr (hl)
	cp #06
	jr z,l5cf7
	or a
	dec hl
	srl (hl)
	inc hl
	rr (hl)
	jr l5cf7
.l5ce7
	ld b,a
	ld a,#05
	sub b
	ld b,a
.l5cec
	ld hl,l5ca5
	sla (hl)
	dec hl
	rl (hl)
	inc hl
	djnz l5cec
.l5cf7
	ret
.l5cf8
	db #00,#00,#00,#77,#00,#71,#00,#6a
	db #00,#64,#00,#5f,#00,#59,#00,#54
	db #00,#50,#00,#4b,#00,#47,#00,#43
	db #00,#3f,#04,#03,#02,#01,#00
.l5d17
	ld a,(l5b6a)
	and #01
	ret z
	ld a,(l5b6d)
	dec a
	ld (l5b6d),a
	cp #00
	ret nz
	ld a,(l5b6c)
	ld (l5b6d),a
	ld hl,(l5b6e)
	ld a,(hl)
	cp #ff
	ret z
	ld (l5b40),a
	inc hl
	ld (l5b6e),hl
	ld c,#08
	call l5c82
	ret
.l5d41
	ld a,(l5b6a)
	and #02
	ret z
	ld a,(l5c1a)
	dec a
	ld (l5c1a),a
	cp #00
	ret nz
	ld a,(l5c19)
	ld (l5c1a),a
	ld hl,(l5c1b)
	ld a,(hl)
	cp #ff
	ret z
	ld (l5b4a),a
	inc hl
	ld (l5c1b),hl
	ld c,#09
	call l5c82
	ret
.l5d6b
	ld a,(l5b6a)
	and #04
	ret z
	ld a,(l5b57)
	cp #00
	ret nz
	ld a,(l5c1f)
	dec a
	ld (l5c1f),a
	cp #00
	ret nz
	ld a,(l5c1e)
	ld (l5c1f),a
	ld hl,(l5c20)
	ld a,(hl)
	cp #ff
	ret z
	ld (l5b54),a
	inc hl
	ld (l5c20),hl
	ld c,#0a
	call l5c82
	ret
;
.play_music
;.l5d9b
;
	push af
	ld a,(l5b67)
	dec a
	ld (l5b67),a
	cp #00
	jr z,l5da9
	pop af
	ret
.l5da9
	push bc
	push de
	push hl
	push ix
	push iy
	ld a,#01
	ld (l5b67),a
	call l5dca
	call l5d17
	call l5d41
	call l5d6b
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l5dca
	ld a,(l5b68)
	dec a
	ld (l5b68),a
	ret nz
	ld a,(l5b69)
	ld (l5b68),a
.l5dd8
	ld a,(l5b6b)
	and #01
	jp z,l5e44
	ld a,(l5b43)
	cp #00
	jp nz,l6082
	ld a,(l5b44)
	dec a
	ld (l5b44),a
	cp #00
	jr z,l5e05
	ld hl,l5b47
	cp (hl)
	jp nz,l5e44
	jp nc,l5e44
	ld a,#00
	ld (l5b70),a
	jp l5e44
.l5e05
	ld hl,(l5b45)
	ld a,(hl)
	cp #00
	jp z,l5f29
	cp #c8
	jp c,l5e1b
	cp #f0
	jp c,l5fda
	jp l6082
.l5e1b
	ld (l5b44),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l5b45),hl
	cp #00
	jp nz,l5e2f
	call l5fad
	jp l5e44
.l5e2f
	call l5ca6
	ld a,(l5ca4)
	ld (l5b42),a
	ld a,(l5ca5)
	ld (l5b41),a
	ld hl,l5b71
	ld (l5b6e),hl
.l5e44
	ld a,(l5b6b)
	and #02
	jp z,l5eb0
	ld a,(l5b4d)
	cp #00
	jp nz,l6085
	ld a,(l5b4e)
	dec a
	ld (l5b4e),a
	cp #00
	jr z,l5e71
	ld hl,l5b51
	cp (hl)
	jp nz,l5eb0
	jp nc,l5eb0
	ld a,#00
	ld (l5c1d),a
	jp l5eb0
.l5e71
	ld hl,(l5b4f)
	ld a,(hl)
	cp #00
	jp z,l5f55
	cp #c8
	jp c,l5e87
	cp #f0
	jp c,l601a
	jp l6085
.l5e87
	ld (l5b4e),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l5b4f),hl
	cp #00
	jp nz,l5e9b
	call l5fbc
	jp l5eb0
.l5e9b
	call l5ca6
	ld a,(l5ca4)
	ld (l5b4c),a
	ld a,(l5ca5)
	ld (l5b4b),a
	ld hl,l5bc9
	ld (l5c1b),hl
.l5eb0
	ld a,(l5b6b)
	and #04
	jp z,l5f25
	ld a,(l5b57)
	cp #00
	jp z,l5ec6
	call l6088
	jp l5f25
.l5ec6
	ld a,(l5b58)
	dec a
	ld (l5b58),a
	cp #00
	jr z,l5ee3
	ld hl,l5b5b
	cp (hl)
	jp nz,l5f25
	jp nc,l5f25
	ld a,#00
	ld (l5c22),a
	jp l5f25
.l5ee3
	ld hl,(l5b59)
	ld a,(hl)
	cp #00
	jp z,l5f81
	cp #c8
	jp c,l5efc
	cp #f0
	jp c,l604a
	call l6088
	jp l5f25
.l5efc
	ld (l5b58),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l5b59),hl
	cp #00
	jp nz,l5f10
	call l5fcb
	jp l5f25
.l5f10
	call l5ca6
	ld a,(l5ca4)
	ld (l5b56),a
	ld a,(l5ca5)
	ld (l5b55),a
	ld hl,l5b9d
	ld (l5c20),hl
.l5f25
	call l5c23
	ret
.l5f29
	ld hl,(l5b48)
	ld a,(hl)
	cp #00
	jr nz,l5f39
	inc hl
	ld a,(hl)
	cp #00
	jr z,l5f4d
	dec hl
	ld a,(hl)
.l5f39
	ld (l5b45),a
	inc hl
	ld a,(hl)
	ld (l5b46),a
	inc hl
	ld (l5b48),hl
	ld a,#01
	ld (l5b44),a
	jp l5dd8
.l5f4d
	ld hl,l61e1
	ld (l5b48),hl
	jr l5f29
.l5f55
	ld hl,(l5b52)
	ld a,(hl)
	cp #00
	jr nz,l5f65
	inc hl
	ld a,(hl)
	cp #00
	jr z,l5f79
	dec hl
	ld a,(hl)
.l5f65
	ld (l5b4f),a
	inc hl
	ld a,(hl)
	ld (l5b50),a
	inc hl
	ld (l5b52),hl
	ld a,#01
	ld (l5b4e),a
	jp l5e44
.l5f79
	ld hl,l6219
	ld (l5b52),hl
	jr l5f55
.l5f81
	ld hl,(l5b5c)
	ld a,(hl)
	cp #00
	jr nz,l5f91
	inc hl
	ld a,(hl)
	cp #00
	jr z,l5fa5
	dec hl
	ld a,(hl)
.l5f91
	ld (l5b59),a
	inc hl
	ld a,(hl)
	ld (l5b5a),a
	inc hl
	ld (l5b5c),hl
	ld a,#01
	ld (l5b58),a
	jp l5eb0
.l5fa5
	ld hl,l6253
	ld (l5b5c),hl
	jr l5f81
.l5fad
	ld a,(l5b6a)
	and #01
	ret z
	ld a,#00
	ld (l5b42),a
	ld (l5b41),a
	ret
.l5fbc
	ld a,(l5b6a)
	and #02
	ret z
	ld a,#00
	ld (l5b4c),a
	ld (l5b4b),a
	ret
.l5fcb
	ld a,(l5b6a)
	and #04
	ret z
	ld a,#00
	ld (l5b56),a
	ld (l5b55),a
	ret
.l5fda
	cp #c8
	jr nz,l5fe6
	inc hl
	ld a,(hl)
	ld (l5b40),a
	jp l600e
.l5fe6
	cp #da
	jr nz,l5ff2
	inc hl
	ld a,(hl)
	ld (l5b47),a
	jp l600e
.l5ff2
	cp #de
	jp nz,l6002
	ld a,#00
	ld (l5b6a),a
	ld (l5b6b),a
	jp l600e
.l6002
	cp #c9
	jr nz,l600e
	inc hl
	ld a,(hl)
	ld (l5b69),a
	ld (l5b68),a
.l600e
	inc hl
	ld (l5b45),hl
	ld a,#01
	ld (l5b44),a
	jp l5dd8
.l601a
	cp #c8
	jr nz,l6026
	inc hl
	ld a,(hl)
	ld (l5b4a),a
	jp l603e
.l6026
	cp #da
	jr nz,l6032
	inc hl
	ld a,(hl)
	ld (l5b51),a
	jp l603e
.l6032
	cp #ca
	jr nz,l603e
	inc hl
	ld a,(hl)
	ld (l5c19),a
	ld (l5c1a),a
.l603e
	inc hl
	ld (l5b4f),hl
	ld a,#01
	ld (l5b4e),a
	jp l5e44
.l604a
	cp #c8
	jr nz,l6056
	inc hl
	ld a,(hl)
	ld (l5b54),a
	jp l606e
.l6056
	cp #da
	jr nz,l6062
	inc hl
	ld a,(hl)
	ld (l5b5b),a
	jp l606e
.l6062
	cp #ca
	jr nz,l606e
	inc hl
	ld a,(hl)
	ld (l5c1e),a
	ld (l5c1f),a
.l606e
	inc hl
	ld (l5b59),hl
	ld a,#01
	ld (l5b58),a
	jp l5eb0
.l607a
	dw l6167,l6142,l6142,l6142
.l6082
	jp l5dd8
.l6085
	jp l5e44
.l6088
	ld (l5b61),a
	ld a,(l5b6a)
	and #04
	ret z
	ld a,(l5b57)
	cp #00
	jp nz,l60ef
	inc hl
	ld a,(hl)
	ld (l5b60),a
	inc hl
	ld (l5b59),hl
	ld a,(l5b61)
	ld (l5b57),a
	sub #f0
	sla a
	ld hl,l607a
	ld b,#00
	ld c,a
	add hl,bc
	ld b,h
	ld c,l
	ld a,(bc)
	ld l,a
	inc bc
	ld a,(bc)
	ld h,a
	ld a,(l5b65)
	ld (l5b66),a
	ld a,(l5b54)
	ld (l5b63),a
	ld a,(hl)
	cp #00
	jp z,l60dd
	ld b,#df
	ld a,(l5b65)
	and b
	ld (l5b65),a
	ld a,#01
	ld (l5b62),a
	jp l60eb
.l60dd
	ld b,#fb
	ld a,(l5b65)
	and b
	ld (l5b65),a
	ld a,#00
	ld (l5b62),a
.l60eb
	inc hl
	ld (l5b5e),hl
.l60ef
	ld a,(l5b60)
	dec a
	ld (l5b60),a
	cp #00
	jp z,l6122
	ld hl,(l5b5e)
	ld a,(hl)
	ld (l5b54),a
	inc hl
	ld a,(l5b62)
	cp #00
	jp z,l6112
	ld a,(hl)
	ld (l5b64),a
	jp l611a
.l6112
	ld a,(hl)
	ld (l5b56),a
	inc hl
	ld (l5b55),a
.l611a
	inc hl
	ld (l5b5e),hl
	call l5c23
	ret
.l6122
	ld a,(l5b66)
	ld (l5b65),a
	ld a,(l5b63)
	ld (l5b54),a
	ld a,#01
	ld (l5b58),a
	ld a,#00
	ld (l5b57),a
	ld (l5b56),a
	ld (l5b55),a
	call l5c23
	ret
.l6142
	db #01,#0f,#01,#0e,#1e,#0d,#01,#0c
	db #1e,#0b,#01,#0a,#1e,#09,#01,#08
	db #1e,#07,#01,#06,#1e,#05,#01,#04
	db #1e,#03,#01,#02,#1e,#02,#01,#01
.l6167 equ $ + 5
	db #1e,#01,#01,#00,#1e,#01,#0f,#01
	db #0e,#0a,#0d,#0f,#0c,#14,#0b,#19
	db #0a,#1e,#0a,#19,#0a,#1e,#0a,#19
	db #09,#1e,#08,#19,#07,#1e,#06,#19
	db #05,#1e,#04,#19,#03,#1e,#02,#19
	db #01,#1e,#01,#19,#00,#1e,#00,#1e
;
.init_music
;.l6192
;
	ld a,#07
	ld (l5b6a),a
	ld (l5b6b),a
	ld a,#38
	ld (l5b65),a
	ld a,#01
	ld (l5b44),a
	ld (l5b4e),a
	ld (l5b58),a
	ld a,#02
	ld (l5b69),a
	ld (l5b68),a
	ld hl,l6283
	ld (l5b45),hl
	ld hl,l61d9
	ld (l5b48),hl
	ld hl,l660b
	ld (l5b4f),hl
	ld hl,l6213
	ld (l5b52),hl
	ld hl,l6400
	ld (l5b59),hl
	ld hl,l624b
	ld (l5b5c),hl
	ret
.l61d9 equ $ + 2
	dw l6283,l6293,l6407,l6407
.l61e1 equ $ + 2
	dw l6297,l629d,l62a5,l629d
	dw l62a5,l6327,l633a,l633a
	dw l6384,l6384,l633a,l633a
	dw l6384,l6384,l633a,l6384
	dw l64f6,l6585,l633a,l633a
	dw l6384,l6384,l63e6,#0000
.l6213 equ $ + 4
	dw #0000,l660b,l6613,l661b
.l6219 equ $ + 2
	dw l6293,l6631,l6635,l6631
	dw l6635,l6667,l6679,l6679
	dw l6679,l6679,l6679,l6679
	dw l6679,l6679,l6679,l6679
	dw l6679,l6679,l6679,l6679
	dw l6679,l6679,l66bb,#0000
.l624b equ $ + 4
	dw #0000,l6400,l6407,l6407
.l6253 equ $ + 4
	dw l6293,l6497,l64a3,l64a7
	dw l64a3,l64a7,l64e4,l64f6
	dw l64f6,l6585,l6585,l64f6
	dw l64f6,l6585,l6585,l6384
	dw l633a,l6585,l64f6,l6556
	dw l6556,l6556,l6556,l65f5
	dw #0000,#0000
.l6283
	db #c8,#0a,#c9,#03,#da,#01,#00,#00
	db #14,#00,#00,#00,#0d,#00,#00,#00
.l6297 equ $ + 4
.l6293
	db #00,#00,#00,#00,#00,#00,#00,#00
.l629d equ $ + 2
	db #00,#00,#c9,#02,#03,#51,#03,#53
.l62a5 equ $ + 2
	db #00,#00,#03,#55,#03,#53,#03,#51
	db #03,#53,#03,#51,#03,#4c,#0c,#4a
	db #03,#4a,#03,#4c,#03,#51,#03,#4c
	db #03,#4a,#03,#4c,#03,#4a,#03,#48
	db #0c,#4a,#03,#51,#03,#53,#03,#55
	db #03,#53,#03,#51,#03,#53,#03,#51
	db #03,#4c,#0c,#4a,#03,#4a,#03,#4c
	db #03,#51,#03,#4c,#03,#4a,#03,#4c
	db #03,#4a,#03,#48,#12,#4a,#09,#55
	db #06,#51,#03,#55,#0c,#53,#03,#51
	db #03,#53,#03,#55,#03,#53,#03,#51
	db #03,#4c,#03,#51,#03,#53,#03,#51
	db #03,#4c,#03,#4a,#03,#48,#03,#4a
	db #03,#4c,#03,#4a,#03,#48,#03,#46
	db #03,#45,#03,#46,#03,#48,#03,#46
	db #03,#45,#03,#43,#06,#41,#03,#3c
.l6327 equ $ + 4
	db #12,#3a,#00,#00,#06,#4a,#06,#45
	db #06,#41,#06,#45,#06,#49,#06,#45
.l633a equ $ + 7
	db #06,#3c,#06,#45,#00,#00,#00,#03
	db #4a,#03,#4c,#06,#51,#06,#51,#03
	db #4c,#03,#4a,#03,#49,#03,#4a,#06
	db #4c,#06,#4c,#03,#4a,#03,#49,#03
	db #4a,#03,#4c,#06,#51,#06,#51,#03
	db #4c,#03,#4a,#03,#46,#03,#48,#06
	db #4a,#0c,#4a,#03,#4a,#03,#4c,#06
	db #51,#06,#51,#03,#4c,#03,#4a,#03
	db #49,#03,#4a,#06,#4c,#06,#4c,#03
	db #4a,#03,#49,#2a,#4a,#06,#00,#00
.l6384 equ $ + 1
	db #00,#03,#51,#03,#4c,#06,#4a,#06
	db #4a,#03,#4c,#03,#51,#03,#4c,#03
	db #4a,#03,#49,#03,#4a,#03,#4c,#03
	db #51,#03,#53,#03,#4c,#03,#55,#03
	db #53,#03,#51,#03,#53,#03,#55,#03
	db #5a,#03,#59,#03,#5a,#03,#5a,#03
	db #56,#03,#55,#03,#56,#03,#53,#03
	db #56,#03,#55,#03,#56,#03,#55,#03
	db #51,#03,#4c,#03,#51,#03,#4a,#03
	db #51,#03,#4c,#03,#51,#03,#53,#03
	db #4c,#03,#4a,#03,#4c,#03,#49,#03
	db #4c,#03,#4a,#03,#4c,#18,#4a,#18
.l63e6 equ $ + 3
	db #5a,#00,#00,#c9,#02,#06,#4a,#06
	db #51,#06,#55,#06,#5a,#06,#45,#06
	db #49,#06,#4c,#06,#55,#48,#4a,#3c
.l6400 equ $ + 5
	db #00,#c9,#03,#00,#00,#da,#01,#c8
.l6407 equ $ + 4
	db #0c,#00,#00,#00,#05,#00,#00,#00
	db #03,#4a,#03,#5a,#03,#4a,#03,#53
	db #03,#55,#03,#4a,#03,#51,#03,#4a
	db #03,#55,#03,#4a,#03,#4c,#03,#53
	db #03,#4a,#03,#55,#03,#4a,#03,#5a
	db #03,#4a,#03,#53,#03,#55,#03,#4a
	db #03,#51,#03,#4a,#03,#55,#03,#4a
	db #03,#4c,#03,#53,#03,#4a,#03,#51
	db #03,#4a,#03,#55,#03,#4a,#03,#5a
	db #03,#4a,#03,#53,#03,#55,#03,#4a
	db #03,#51,#03,#4a,#03,#55,#03,#4a
	db #03,#4c,#03,#53,#03,#4a,#03,#55
	db #03,#4a,#03,#5a,#03,#4a,#03,#53
	db #03,#55,#03,#4a,#03,#51,#03,#4a
	db #03,#55,#03,#4a,#03,#4c,#03,#53
	db #03,#55,#03,#5c,#03,#55,#03,#5a
	db #03,#55,#03,#59,#03,#53,#03,#5a
	db #03,#53,#03,#5c,#03,#53,#03,#59
.l6497 equ $ + 4
	db #03,#53,#00,#00,#00,#00,#00,#51
	db #03,#4c,#2a,#51,#06,#00,#00,#00
.l64a7 equ $ + 4
.l64a3
	db #06,#00,#00,#00,#09,#38,#09,#2c
	db #12,#31,#03,#4a,#03,#48,#03,#46
	db #09,#43,#12,#31,#09,#38,#09,#2c
	db #12,#31,#03,#4a,#03,#48,#03,#46
	db #09,#43,#12,#41,#09,#48,#06,#45
	db #03,#48,#12,#4c,#09,#38,#09,#33
	db #09,#35,#09,#2c,#09,#31,#09,#28
	db #09,#2a,#09,#2c,#12,#31,#00,#00
.l64e4 equ $ + 1
	db #00,#f0,#0c,#f2,#0c,#f0,#0c,#f2
	db #0c,#00,#00,#00,#18,#41,#18,#3c
.l64f6 equ $ + 3
	db #00,#00,#00,#03,#41,#03,#43,#06
	db #45,#06,#45,#03,#43,#03,#41,#03
	db #3c,#03,#41,#06,#43,#06,#43,#03
	db #41,#03,#3c,#03,#41,#03,#43,#06
	db #45,#06,#45,#03,#43,#03,#41,#03
	db #3a,#03,#3c,#06,#46,#0c,#46,#03
	db #41,#03,#43,#06,#45,#06,#45,#03
	db #43,#03,#41,#03,#3c,#03,#41,#06
	db #43,#06,#43,#03,#41,#03,#3c,#03
	db #5a,#03,#55,#03,#56,#03,#53,#03
	db #55,#03,#51,#03,#53,#03,#4c,#03
	db #51,#03,#4a,#03,#4c,#03,#49,#0c
.l6556 equ $ + 3
	db #4a,#00,#00,#f0,#0c,#f2,#0c,#f0
	db #09,#f0,#03,#f2,#0c,#f0,#06,#f0
	db #06,#f2,#06,#f2,#06,#f0,#0c,#f2
	db #09,#f2,#03,#f0,#0c,#f2,#0c,#f0
	db #06,#f0,#06,#f2,#06,#f2,#06,#f0
	db #0c,#f2,#0c,#f0,#0c,#f2,#0c,#00
.l6585 equ $ + 2
	db #00,#00,#03,#4a,#03,#45,#06,#45
	db #06,#45,#03,#45,#03,#4a,#06,#45
	db #06,#43,#06,#45,#06,#45,#03,#51
	db #03,#4c,#03,#4a,#03,#4c,#03,#51
	db #03,#55,#03,#53,#03,#55,#03,#56
	db #03,#53,#03,#52,#03,#53,#03,#4a
	db #03,#53,#03,#52,#03,#53,#03,#51
	db #03,#4a,#03,#49,#03,#4a,#03,#45
	db #03,#4a,#03,#49,#03,#4a,#03,#4c
	db #03,#49,#03,#45,#03,#49,#03,#45
	db #03,#49,#03,#45,#03,#49,#03,#5a
	db #03,#55,#03,#56,#03,#53,#03,#55
	db #03,#51,#03,#53,#03,#4c,#03,#51
	db #03,#4a,#03,#4c,#03,#49,#0c,#4a
.l65f5 equ $ + 2
	db #00,#00,#06,#41,#06,#45,#06,#4a
	db #06,#51,#06,#39,#06,#3c,#06,#45
	db #06,#49,#48,#42,#3c,#00,#00,#00
.l660b
	db #c8,#0c,#da,#01,#ca,#05,#00,#00
.l6613
	db #0a,#00,#00,#00,#0d,#00,#00,#00
.l661b
	db #00,#00,#00,#00,#30,#26,#30,#23
	db #30,#25,#12,#25,#03,#00,#ca,#02
.l6631 equ $ + 6
	db #33,#2a,#06,#00,#00,#00,#06,#00
.l6635 equ $ + 2
	db #00,#00,#ca,#01,#09,#31,#09,#28
	db #12,#2a,#09,#26,#09,#28,#12,#2a
	db #09,#31,#09,#28,#12,#2a,#09,#26
	db #09,#28,#12,#2a,#12,#31,#12,#28
	db #09,#31,#09,#28,#09,#2a,#09,#25
	db #09,#26,#09,#21,#09,#23,#09,#25
.l6667 equ $ + 4
	db #12,#2a,#00,#00,#09,#1a,#03,#1a
	db #09,#1a,#03,#1a,#09,#25,#03,#25
.l6679 equ $ + 6
	db #09,#35,#03,#35,#00,#00,#09,#1a
	db #03,#1a,#09,#2a,#03,#2a,#09,#1c
	db #03,#1c,#09,#29,#03,#29,#09,#21
	db #03,#21,#09,#2a,#03,#2a,#09,#23
	db #03,#23,#09,#33,#03,#33,#09,#25
	db #03,#25,#09,#35,#03,#35,#09,#25
	db #03,#25,#09,#15,#03,#15,#09,#1a
	db #03,#1a,#09,#2a,#03,#2a,#09,#1a
	db #03,#1a,#09,#2a,#03,#2a,#00,#00
.l66bb
	db #ca,#02,#18,#1a,#18,#25,#48,#1a
	db #3c,#00,#00
;
.music_info
	db "Duet (1986)(Tony Samuels)(Mark Cooksey)",0
	db "",0

	read "music_end.asm"
