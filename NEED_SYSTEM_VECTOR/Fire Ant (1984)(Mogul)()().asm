; Music of Fire Ant (1984)(Mogul)()()
; Ripped by Megachur the 26/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FIREANT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #a073
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

.la073
	ld a,#0a
	ld hl,#9991
	call la171
	call z,la120
	ld a,#08
	ld hl,#998f
	call la171
	call z,#9cc3
	ld a,#14
	ld hl,#9990
	call la171
	call z,#9f9d
	call la2ee
	ld a,#05
	ld hl,#9993
	call la171
	call z,la238
	ld a,#09
	call #bb1e
	scf
	ret nz
	ld hl,#998e
	ld a,#0a
	call la171
	call z,la0d8
	ld a,(#992a)
	cp #01
	jr nz,la0d3
	ld ix,#98d7
	dec (ix+#05)
	jr nz,la0d3
	ld (ix+#05),#0a
	ld a,(ix+#00)
	xor #01
	ld (ix+#00),a
	call #9a91
.la0d3
	call #bd19
	jr la073
.la0d8
	ld ix,#98e0
	ld b,(iy+#01)
	di
.la0e0
	push bc
	ld a,(ix+#05)
	cp #03
	call nz,#9a91
	ld de,#0009
	add ix,de
	pop bc
	djnz la0e0
	ei
	ld hl,#98e0
	ld b,(iy+#01)
.la0f8
	ld a,(hl)
	xor #01
	ld (hl),a
	ld de,#0009
	add hl,de
	djnz la0f8
	ret
.la103
	ld de,#9984
	ld bc,#0009
	ldir
	ret
.la10c
	and #f8
	cp #38
	jr z,la11d
	and #18
	srl a
	srl a
	srl a
	add #0b
	ret
.la11d
	ld a,#0f
	ret
.la120
	ld hl,#98e0
	ld ix,#9984
	ld b,(iy+#01)
.la12a
	push bc
	push hl
	call la103
	ex (sp),hl
	push hl
	ld a,(#9989)
	cp #02
	jr nz,la162
	call #a023
	cp #0f
	jr nc,la15a
	xor a
	ld (#9989),a
	ld a,(#9984)
	call la10c
	push af
	call #bc35
	ld a,c
	cp #1a
	jr z,la154
	ld c,#0f
.la154
	pop af
	ld b,#0f
	call #bc32
.la15a
	call z,#9ff8
	call #9f07
	jr z,la15a
.la162
	pop hl
	ld de,#9984
	ex de,hl
	ld bc,#0009
	ldir
	pop hl
	pop bc
	djnz la12a
	ret
.la171
	dec (hl)
	ret nz
	ld (hl),a
	ret
	ld e,a
	cp #0a
	jp z,la255
	cp #20
	jp z,la20c
	cp #21
	jp z,la20c
	ld hl,(#9920)
.la188
	ld a,(hl)
	cp e
	jp z,la33a
	inc hl
	inc hl
	inc hl
	or a
	jr nz,la188
	ld a,#01
	or a
	ret
.la197
	ld hl,#98d4
	ld de,#98d1
	ld b,#03
.la19f
	ld a,(de)
	cp (hl)
	ret c
	jr nz,la1a8
	inc hl
	inc de
	djnz la19f
.la1a8
	ld hl,#98d1
	ld de,#98d4
	ld bc,#0003
	ldir
	ld a,#01
	ld (#992c),a
	ret
.la1b9
	ld bc,#170b
	ld hl,#98d1
	call la1cb
	call la197
	ld hl,#98d4
	ld bc,#180b
.la1cb
	ld e,#03
	ld a,#30
.la1cf
	push de
	push hl
	rld
	call #99ef
	inc c
	pop hl
	rld
	push hl
	call #99ef
	inc c
	pop hl
	rld
	inc hl
	pop de
	dec e
	jr nz,la1cf
	ret
.la1e8
	ld de,(#98d2)
	ld a,d
	add l
	daa
	ld d,a
	ld a,e
	adc h
	daa
	ld e,a
	ld (#98d2),de
	ld a,(#98d1)
	adc #00
	daa
	ld (#98d1),a
	ret
	ld c,a
	call la1e8
	add c
	daa
	ld (#98d1),a
	ret
.la20c
	ld a,(ix+#00)
	and #f8
	ret nz
	ld a,#78
	ld (#98b1),a
	ld bc,(#9926)
	call #99b6
	inc c
	call #99b6
	ld a,#0c
.la224
	push af
	call #bc35
	pop af
	push af
	ld c,#1a
	call #bc32
	pop af
	inc a
	and #0f
	jr nz,la224
	jp la2a2
.la238
	ld a,(#98b1)
	or a
	ret z
	dec a
	ld (#98b1),a
	ret nz
	ld a,#0c
.la244
	push af
	call #bc35
	pop af
	push af
	ld c,b
	call #bc32
	pop af
	inc a
	and #0f
	jr nz,la244
	ret
.la255
	ld a,(ix+#00)
	and #f8
	ret nz
	pop hl
	pop bc
	pop de
	push de
	push bc
	push hl
	call #99b6
	ld hl,#0100
	call la1e8
	call la1b9
	push ix
	ld hl,la45a
	ld a,#02
	call #bcbf	; init env/ent ?
	ld hl,la495
	call la326
	pop ix
	ld a,#01
	or a
	ret
	ld c,(ix+#01)
	ld b,(ix+#02)
	inc b
	call #9b02
	ld a,(hl)
	or a
	ret nz
	ld a,#ae
	ld (#9a79),a
	ld a,#0a
	call #9a6d
	xor a
	ld (#9a79),a
	ret
	jp #9a6d
.la2a2
	ld hl,la48c
	jp la326
	ld hl,la49e
	jp la326
	ld hl,la4a7
	jp la326
	ld hl,la4b0
	ld a,(#98c9)
	ld (la4b5),a
	jp la326
	ld hl,la468
	call la326
	ld hl,#0100
	call la1e8
	call la1b9
	inc a
	ret
	call #99b6
	inc c
	call #99b6
	inc c
	call #99b6
	inc b
	call #99b6
	dec c
	call #99b6
	dec c
	jp #99b6
	ld hl,la471
	jp la326
.la2ee
	ld a,(#98cb)
	or a
	ret z
	ld hl,#98c8
	ld ix,(#9924)
	jp (ix)
	ld hl,la47a
	jp la326
	ld hl,la483
	jp la326
	ld hl,la4b9
	jp la326
	ld hl,la4c2
	jp la326
.la314
	ld bc,#0201
.la317
	ld a,c
	push bc
	call #bcad
	pop bc
	and #80
	ret z
	rl c
	djnz la317
	scf
	ret
.la326
	push ix
	push hl
	call la314
	ld a,c
	pop hl
	pop ix
	ret c
	push ix
	ld (hl),a
	call #bcaa
	pop ix
	ret
.la33a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(ix+#00)
	and #f8
	jp (hl)
	ld b,#b7
	ld de,#c000
	ld hl,#c800
.la34d
	push bc
	ld bc,#0050
	push hl
	push de
	ldir
	pop hl
	ld bc,#0050
	ld a,#08
	add h
	ld h,a
	jr nc,la363
	or #c0
	ld h,a
	add hl,bc
.la363
	ex de,hl
	pop hl
	ld a,#08
	add h
	ld h,a
	jr nc,la36f
	or #c0
	ld h,a
	add hl,bc
.la36f
	pop bc
	djnz la34d
	ret
	db #de,#01,#0a,#00,#aa,#01,#0a,#00
	db #7b,#01,#0a,#00,#3f,#01,#0a,#00
	db #66,#01,#0a,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#00,#00
	db #01,#81
.la395 equ $ + 2
	dw la397,la853
.la397
	ld a,#04
	call #bcad
	and #07
	ret z
	ld a,#3c
	call #bb1e
	jr z,la3ab
	ld a,#01
	ld (#98c5),a
.la3ab
	ld a,#24
	call #bb1e
	jr z,la3b6
	xor a
	ld (#98c5),a
.la3b6		; play music ?
	ld a,(#98c5)
	or a
	ret nz
;
.play_music
;
	ld hl,(la395)
	ld a,(hl)
	or a
	jr z,la3f6
	dec a
	inc hl
	ld c,(hl)
	ld (la395),hl
	jr z,la3f0
	ld l,a
	ld h,#00
	add hl,hl
	ld de,#a9ec
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	dec c
	ld hl,la411
	jr nz,la3e5
	ld hl,(la395)
	inc hl
	ld (la395),hl
	ld hl,la411
.la3e5
	ld (hl),e
	inc hl
	ld (hl),d
	ld de,#0004
	sbc hl,de
	jp la3fd
.la3f0
	ld hl,la417
	jp la3fd
;
.init_music
.la3f6
;
	ld hl,la7f8
	ld (la395),hl
	ret
.la3fd
	push ix
	call #bcaa
	pop ix
	ret
	db #04,#00,#00,#00,#00,#00,#0d,#28
.la411 equ $ + 4
	db #00,#04,#00,#00,#3f,#01,#00,#0d
.la417 equ $ + 2
	db #14,#00,#04,#00,#00,#00,#00,#00
	db #00,#14,#00,#01,#81,#d0,#07,#04
	db #05,#01,#28,#00,#0f,#01,#04,#00
	db #64,#0f,#ff,#32,#03,#0f,#01,#07
	db #0a,#00,#28,#0f,#ff,#0d,#02,#10
	db #00,#05,#8e,#c8,#00,#03,#00,#0f
	db #05,#0f,#ff,#02,#00,#00,#0f,#03
	db #00,#02,#02,#0c,#01,#02,#0c,#ff
.la45a equ $ + 5
	db #02,#81,#01,#fe,#01,#01,#05,#9c
	db #02,#03,#14,#64,#05,#03,#00,#64
.la468 equ $ + 3
	db #14,#9c,#05,#02,#01,#00,#32,#00
.la471 equ $ + 4
	db #00,#00,#28,#00,#01,#02,#00,#00
.la47a equ $ + 5
	db #00,#0f,#00,#00,#00,#01,#00,#00
.la483 equ $ + 6
	db #b8,#0b,#00,#0f,#f0,#00,#02,#04
.la48c equ $ + 7
	db #00,#d0,#07,#00,#00,#78,#01,#01
	db #00,#01,#98,#08,#00,#0f,#4c,#04
.la495
	db #01,#00,#02,#f4,#01,#00,#0f,#0a
.la49e equ $ + 1
	db #00,#01,#00,#00,#00,#00,#00,#0f
.la4a7 equ $ + 2
	db #01,#00,#01,#05,#00,#46,#00,#00
.la4b0 equ $ + 3
	db #0f,#f8,#ff,#01,#06,#00,#00,#00
.la4b9 equ $ + 4
.la4b5
	db #01,#02,#ff,#ff,#01,#00,#00,#a0
.la4c2 equ $ + 5
	db #0f,#01,#0f,#c2,#01,#01,#03,#03
	db #e8,#03,#1e,#00,#ff,#ff,#0b,#00
	db #0f,#f0,#00,#02,#04,#00,#d0,#07
	db #00,#00,#78,#01,#01,#00,#01,#98
	db #08,#00,#0f,#4c,#04,#01,#00,#02
	db #f4,#01,#00,#0f,#0a,#00,#01,#00
	db #00,#00,#00,#00,#0f,#01,#00,#01
	db #05,#00,#46,#00,#00,#0f,#f8,#ff
	db #01,#06,#00,#00,#00,#01,#02,#ff
	db #ff,#01,#00,#00,#a0,#0f,#01,#0f
	db #c2,#01,#01,#03,#03,#e8,#03,#1e
	db #00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la7f8
	db #0a,#0c,#0a,#06,#01,#06,#0a,#06
	db #02,#01,#02,#03,#05,#06,#01,#08
	db #0a,#01,#0c,#08,#01,#08,#0b,#08
	db #05,#01,#05,#08,#05,#02,#01,#02
	db #03,#05,#08,#01,#0a,#0b,#01,#0e
	db #0a,#01,#0c,#10,#0c,#0a,#01,#0a
	db #0c,#0a,#06,#01,#06,#08,#0a,#0c
	db #01,#0e,#0f,#01,#11,#0e,#01,#10
	db #0e,#0b,#06,#01,#0b,#0e,#01,#0c
	db #0a,#01,#06,#02,#06,#0a,#01,#02
	db #05,#08,#0c,#01,#08,#05,#01,#08
	db #06
	db #01,#01
.la853
	db #01,#0a,#0c,#0a,#06,#01,#06,#0a
	db #06,#02,#01,#02,#03,#05,#06,#01
	db #08,#0a,#01,#0c,#08,#01,#08,#0b
	db #08,#05,#01,#05,#08,#05,#02,#01
	db #02,#03,#05,#08,#01,#0a,#0b,#01
	db #0e,#0a,#01,#0c,#10,#0c,#0a,#01
	db #0a,#0c,#0a,#06,#01,#06,#08,#0a
	db #0c,#01,#0e,#0f,#01,#11,#0e,#01
	db #10,#0e,#0b,#06,#01,#0b,#0e,#01
	db #0c,#0a,#01,#06,#02,#06,#0a,#01
	db #02,#05,#08,#0c,#01,#08,#05,#01
	db #08,#06,#01,#01,#01,#01,#01,#0a
	db #0c,#0a,#06,#02,#03,#05,#06,#01
	db #06,#0a,#06,#02,#06,#08,#09,#0a
	db #01,#02,#03,#05,#06,#01,#08,#0a
	db #01,#0c,#08,#01,#08,#0b,#08,#05
	db #02,#03,#04,#05,#01,#05,#08,#05
	db #02,#08,#09,#0a,#0b,#01,#02,#03
	db #05,#08,#01,#0a,#0b,#01,#0e,#0a
	db #09,#0a,#01,#01,#0c,#10,#0c,#0a
	db #06,#08,#09,#0a,#01,#0a,#0c,#0a
	db #06,#01,#0c,#0d,#0e,#0f,#01,#06
	db #08,#0a,#0c,#01,#0e,#0f,#01,#11
	db #0e,#0d,#0e,#01,#10,#0e,#0b,#06
	db #01,#0b,#0e,#01,#0c,#0a,#01,#06
	db #02,#06,#0a,#01,#02,#05,#08,#0c
	db #01,#08,#05,#01,#08,#06,#01,#10
	db #0e,#0b,#06,#01,#0b,#0e,#01,#0c
	db #0a,#06,#02,#0a,#08,#0a,#0b,#01
	db #02,#05,#08,#0c,#01,#08,#05,#01
	db #08,#06,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #00,#00
;
; a3f0 play sound ?
; a3f6 reinit music
;
.music_info
	db "Fire Ant (1984)(Mogul)()",0
	db "",0

	read "music_end.asm"
