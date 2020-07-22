; Music of Fractale SlideShow 2 (1992)(Nephilim)(Weee)(Multi Trimbal Replay)
; Ripped by Megachur the 30/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FRACTAS2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 30
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9000

	read "music_header.asm"

	jp l97fc
.l9003
	jp l90c9
	jp l911c
.l9009
	jp l918b
.l900e equ $ + 2
.l900d equ $ + 1
.l900c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l9018
	jp l9041
.l901b
	jp l904d
.l901e
	jp l9059
	jp l9071
	jp l907f
	jp l908d
	jp l912e
.l9030 equ $ + 3
.l902f equ $ + 2
.l902e equ $ + 1
.l902d
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
	jp l9065
	jp l909b
.l9041
	ld (l96e4),hl
	ld (l96dc),hl
	ld a,#01
	ld (l96d8),a
	ret
.l904d
	ld (l96e6),hl
	ld (l96de),hl
	ld a,#01
	ld (l96d9),a
	ret
.l9059
	ld (l96e8),hl
	ld (l96e0),hl
	ld a,#01
	ld (l96da),a
	ret
.l9065
	ld (l96ea),hl
	ld (l96e2),hl
	ld a,#01
	ld (l96db),a
	ret
.l9071
	ld (l96cc),hl
	sbc hl,hl
	ld (l96c4),hl
	ld a,#01
	ld (l96d4),a
	ret
.l907f
	ld (l96ce),hl
	sbc hl,hl
	ld (l96c6),hl
	ld a,#01
	ld (l96d5),a
	ret
.l908d
	ld (l96d0),hl
	sbc hl,hl
	ld (l96c8),hl
	ld a,#01
	ld (l96d6),a
	ret
.l909b
	ld (l96d2),hl
	sbc hl,hl
	ld (l96ca),hl
	ld a,#01
	ld (l96d7),a
	ret
.l90a9
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
.l90c7
	ei
	ret
;
.stop_music
.l90c9
;
	ld (l96ec),hl
	and #03
	ld (l97c7),a
	sub a
	ld (l902e),a
	ld a,#3f
	ld (l969c),a
	ld hl,l969d
	ld (hl),#00
	ld de,l969e
	ld bc,#001d
	ldir
	sub a
	ld (l96d4),a
	ld (l96d8),a
	ld (l96d5),a
	ld (l96d9),a
	ld (l96d6),a
	ld (l96da),a
	ld (l96d7),a
	ld (l96db),a
	ld (l900c),a
	ld (l900d),a
	ld (l900e),a
	ld a,(l902d)
	or a
	jr z,l9117
	ld a,(l97c6)
	ld (l90c7),a
	jr l911b
.l9117
	sub a
	ld (l90c7),a
.l911b
	ret
.l911c
	ld a,#07
	ld c,#3f
	jp l90a9

	ld hl,l96bb
	ld de,l9009
	ld b,#81
	jp #bcd7
.l912e
	ld a,(l97c7)
	or a
	jr z,l9156
	cp #02
	jr z,l9144
	ld a,hx
	cp #01
	jr nz,l9156
	ld a,lx
	ld (l902e),a
	ret
.l9144
	ld d,lx
	ld e,hy
	ld a,hx
	add a
	ld c,a
	ld b,#00
	ld hl,l902f
	add hl,bc
	ld (hl),d
	inc hl
	ld (hl),e
	ret
.l9156
	ld hl,l969d
	ld e,hx
	ld d,#00
	add hl,de
	sla e
	sla e
	add hl,de
	ex de,hl
	ld hl,(l96ec)
	ld b,#00
	ld c,lx
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld ix,#0000
	add ix,de
	ld (ix+#01),c
	ld (ix+#02),b
	ld a,hy
	ld (ix+#03),a
	ld a,ly
	ld (ix+#04),a
	ld a,#01
	ld (ix+#00),a
	ret
;
.play_music
.l918b
;
	ld a,(l97c7)
	or a
	jr z,l91ab
	sub a
	ld (l902e),a
	ld hl,l902f
	ld de,l9030
	ld (hl),#ff
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
.l91ab
	ld a,(l96d8)
	or a
	call nz,l9205
	ld a,(l96d9)
	or a
	call nz,l922f
	ld a,(l96da)
	or a
	call nz,l9259
	ld a,(l96db)
	or a
	call nz,l9283
	ld a,(l96d4)
	or a
	call nz,l92ad
	ld a,(l96d5)
	or a
	call nz,l9301
	ld a,(l96d6)
	or a
	call nz,l9356
	ld a,(l96d7)
	or a
	call nz,l93ab
	ld ix,l969d
	ld a,(ix+#00)
	or a
	call nz,l941b
	ld ix,l96a2
	ld a,(ix+#00)
	or a
	call nz,l94f9
	ld ix,l96a7
	ld a,(ix+#00)
	or a
	call nz,l95d8
	ret
.l9205
	ld a,(l96d4)
	or a
	ret nz
	ld de,(l96dc)
	ld ix,#0000
	add ix,de
	inc de
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	dec de
	or l
	jr nz,l9222
	ld de,(l96e4)
.l9222
	ld (l96dc),de
	ld l,(ix+#00)
	ld h,(ix+#01)
	jp l9071
.l922f
	ld a,(l96d5)
	or a
	ret nz
	ld de,(l96de)
	ld ix,#0000
	add ix,de
	inc de
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	dec de
	or l
	jr nz,l924c
	ld de,(l96e6)
.l924c
	ld (l96de),de
	ld l,(ix+#00)
	ld h,(ix+#01)
	jp l907f
.l9259
	ld a,(l96d6)
	or a
	ret nz
	ld de,(l96e0)
	ld ix,#0000
	add ix,de
	inc de
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	dec de
	or l
	jr nz,l9276
	ld de,(l96e8)
.l9276
	ld (l96e0),de
	ld l,(ix+#00)
	ld h,(ix+#01)
	jp l908d
.l9283
	ld a,(l96d7)
	or a
	ret nz
	ld de,(l96e2)
	ld ix,#0000
	add ix,de
	inc de
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	dec de
	or l
	jr nz,l92a0
	ld de,(l96ea)
.l92a0
	ld (l96e2),de
	ld l,(ix+#00)
	ld h,(ix+#01)
	jp l909b
.l92ad
	ld ix,l96c4
	ld e,(ix+#00)
	ld d,(ix+#01)
	inc de
	ld (ix+#00),e
	ld (ix+#01),d
	dec de
	ld ix,l96cc
	ld c,(ix+#00)
	ld b,(ix+#01)
	ld iy,#0000
	add iy,bc
	ld l,(iy+#00)
	ld h,(iy+#01)
	sbc hl,de
	ld a,h
	or l
	ret nz
	ld hl,#0005
	add hl,bc
	ld (ix+#00),l
	ld (ix+#01),h
	ld a,(iy+#04)
	ld e,a
	inc a
	jr z,l92fd
	ld c,(iy+#02)
	ld b,(iy+#03)
	ld lx,e
	sub a
	ld hx,a
	ld hy,b
	ld ly,c
	jp l912e
.l92fd
	ld (l96d4),a
	ret
.l9301
	ld ix,l96c6
	ld e,(ix+#00)
	ld d,(ix+#01)
	inc de
	ld (ix+#00),e
	ld (ix+#01),d
	dec de
	ld ix,l96ce
	ld c,(ix+#00)
	ld b,(ix+#01)
	ld iy,#0000
	add iy,bc
	ld l,(iy+#00)
	ld h,(iy+#01)
	sbc hl,de
	ld a,h
	or l
	ret nz
	ld hl,#0005
	add hl,bc
	ld (ix+#00),l
	ld (ix+#01),h
	ld a,(iy+#04)
	ld e,a
	inc a
	jr z,l9352
	ld c,(iy+#02)
	ld b,(iy+#03)
	ld lx,e
	ld a,#01
	ld hx,a
	ld hy,b
	ld ly,c
	jp l912e
.l9352
	ld (l96d5),a
	ret
.l9356
	ld ix,l96c8
	ld e,(ix+#00)
	ld d,(ix+#01)
	inc de
	ld (ix+#00),e
	ld (ix+#01),d
	dec de
	ld ix,l96d0
	ld c,(ix+#00)
	ld b,(ix+#01)
	ld iy,#0000
	add iy,bc
	ld l,(iy+#00)
	ld h,(iy+#01)
	sbc hl,de
	ld a,h
	or l
	ret nz
	ld hl,#0005
	add hl,bc
	ld (ix+#00),l
	ld (ix+#01),h
	ld a,(iy+#04)
	ld e,a
	inc a
	jr z,l93a7
	ld c,(iy+#02)
	ld b,(iy+#03)
	ld lx,e
	ld a,#02
	ld hx,a
	ld hy,b
	ld ly,c
	jp l912e
.l93a7
	ld (l96d6),a
	ret
.l93ab
	ld ix,l96ca
	ld e,(ix+#00)
	ld d,(ix+#01)
	inc de
	ld (ix+#00),e
	ld (ix+#01),d
	dec de
	ld ix,l96d2
	ld c,(ix+#00)
	ld b,(ix+#01)
	ld iy,#0000
	add iy,bc
	ld l,(iy+#00)
	ld h,(iy+#01)
	sbc hl,de
	ld a,h
	or l
	ret nz
	ld hl,#0005
	add hl,bc
	ld (ix+#00),l
	ld (ix+#01),h
	ld a,(iy+#04)
	ld e,a
	inc a
	jr z,l93fc
	ld c,(iy+#02)
	ld b,(iy+#03)
	ld lx,e
	ld a,#03
	ld hx,a
	ld hy,b
	ld ly,c
	jp l912e
.l93fc
	ld (l96d7),a
	ret
.l9400
	ld (l969d),a
	ld (l900c),a
	ld a,(l969c)
	or #09
	ld (l969c),a
	ld c,a
	ld a,#07
	call l90a9
	ld a,#0d
	ld c,#00
	jp l90a9
.l941b
	ld e,(ix+#01)
	ld d,(ix+#02)
	ld iy,#0000
	add iy,de
	ld a,(iy+#02)
	ld i,a
	and #80
	jr z,l943e
	ld h,#ff
	ld a,i
	ld l,a
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	jr l941b
.l943e
	ex de,hl
	ld de,#0004
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	ld b,(ix+#04)
	ld c,(ix+#03)
	ld a,b
	or a
	jr z,l9400
	ld a,(iy+#01)
	or a
	jr z,l9400
	dec b
	ld (ix+#04),b
	ld a,(iy+#03)
	add c
	ld l,a
	ld h,#00
	add hl,hl
	ld ix,l96ee
	ex de,hl
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld e,(iy+#00)
	sub a
	bit 7,e
	jr z,l947c
	xor #ff
.l947c
	ld d,a
	add hl,de
	sub a
	ld c,l
	call l90a9
	ld a,#01
	ld c,h
	call l90a9
	ld a,(l969c)
	or #08
	ld (l969c),a
	ld a,(iy+#02)
	or a
	jr z,l94a5
	ld c,a
	ld a,#06
	call l90a9
	ld a,(l969c)
	and #f7
	ld (l969c),a
.l94a5
	ld c,(iy+#01)
	ld d,c
	ld a,#08
	call l90a9
	ld a,d
	and #10
	jr z,l94cc
	ld a,d
	ld c,#08
	and #08
	jr z,l94bc
	inc c
	inc c
.l94bc
	ld a,#0d
	call l90a9
	ld a,d
	and #07
	ld c,a
	ld a,#0b
	call l90a9
	ld d,#0c
.l94cc
	ld a,d
	ld (l900c),a
	ld a,(l969c)
	and #fe
	ld (l969c),a
	ld c,a
	ld a,#07
	jp l90a9
.l94de
	ld (l96a2),a
	ld (l900d),a
	ld a,(l969c)
	or #12
	ld (l969c),a
	ld c,a
	ld a,#07
	call l90a9
	ld a,#0d
	ld c,#00
	jp l90a9
.l94f9
	ld e,(ix+#01)
	ld d,(ix+#02)
	ld iy,#0000
	add iy,de
	ld a,(iy+#02)
	ld i,a
	and #80
	jr z,l951c
	ld h,#ff
	ld a,i
	ld l,a
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	jr l94f9
.l951c
	ex de,hl
	ld de,#0004
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	ld b,(ix+#04)
	ld c,(ix+#03)
	ld a,b
	or a
	jr z,l94de
	ld a,(iy+#01)
	or a
	jr z,l94de
	dec b
	ld (ix+#04),b
	ld a,(iy+#03)
	add c
	ld l,a
	ld h,#00
	add hl,hl
	ld ix,l96ee
	ex de,hl
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld e,(iy+#00)
	sub a
	bit 7,e
	jr z,l955a
	xor #ff
.l955a
	ld d,a
	add hl,de
	ld a,#02
	ld c,l
	call l90a9
	ld a,#03
	ld c,h
	call l90a9
	ld a,(l969c)
	or #10
	ld (l969c),a
	ld a,(iy+#02)
	or a
	jr z,l9584
	ld c,a
	ld a,#06
	call l90a9
	ld a,(l969c)
	and #ef
	ld (l969c),a
.l9584
	ld c,(iy+#01)
	ld d,c
	ld a,#09
	call l90a9
	ld a,d
	and #10
	jr z,l95ab
	ld a,d
	ld c,#08
	and #08
	jr z,l959b
	inc c
	inc c
.l959b
	ld a,#0d
	call l90a9
	ld a,d
	and #07
	ld c,a
	ld a,#0b
	call l90a9
	ld d,#0c
.l95ab
	ld a,d
	ld (l900d),a
	ld a,(l969c)
	and #fd
	ld (l969c),a
	ld c,a
	ld a,#07
	jp l90a9
.l95bd	; reset music
	ld (l96a7),a
	ld (l900e),a
	ld a,(l969c)
	or #24
	ld (l969c),a
	ld c,a
	ld a,#07
	call l90a9
	ld a,#0d
	ld c,#00
	jp l90a9
.l95d8
	ld e,(ix+#01)
	ld d,(ix+#02)
	ld iy,#0000
	add iy,de
	ld a,(iy+#02)
	ld i,a
	and #80
	jr z,l95fb
	ld h,#ff
	ld a,i
	ld l,a
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	jr l95d8
.l95fb
	ex de,hl
	ld de,#0004
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	ld b,(ix+#04)
	ld c,(ix+#03)
	ld a,b
	or a
	jr z,l95bd	; go to reset music
	ld a,(iy+#01)
	or a
	jr z,l95bd
	dec b
	ld (ix+#04),b
	ld a,(iy+#03)
	add c
	ld l,a
	ld h,#00
	add hl,hl
	ld ix,l96ee
	ex de,hl
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld e,(iy+#00)
	sub a
	bit 7,e
	jr z,l9639
	xor #ff
.l9639
	ld d,a
	add hl,de
	ld a,#04
	ld c,l
	call l90a9
	ld a,#05
	ld c,h
	call l90a9
	ld a,(l969c)
	or #20
	ld (l969c),a
	ld a,(iy+#02)
	or a
	jr z,l9663
	ld c,a
	ld a,#06
	call l90a9
	ld a,(l969c)
	and #df
	ld (l969c),a
.l9663
	ld c,(iy+#01)
	ld d,c
	ld a,#0a
	call l90a9
	ld a,d
	and #10
	jr z,l968a
	ld a,d
	ld c,#08
	and #08
	jr z,l967a
	inc c
	inc c
.l967a
	ld a,#0d
	call l90a9
	ld a,d
	and #07
	ld c,a
	ld a,#0b
	call l90a9
	ld d,#0c
.l968a
	ld a,d
	ld (l900e),a
	ld a,(l969c)
	and #fb
	ld (l969c),a
	ld c,a
	ld a,#07
	jp l90a9
.l969c
	ccf
.l969d
	nop
.l969e
	nop
	nop
	nop
	nop
.l96a7 equ $ + 5
.l96a2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l96bb equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l96c8 equ $ + 6
.l96c6 equ $ + 4
.l96c4 equ $ + 2
	db #00,#00,#2d,#00,#2d,#00,#2d,#00
.l96d0 equ $ + 6
.l96ce equ $ + 4
.l96cc equ $ + 2
.l96ca
	dw #0000,l98e9,l998e,l9a51
.l96d9 equ $ + 7
.l96d8 equ $ + 6
.l96d7 equ $ + 5
.l96d6 equ $ + 4
.l96d5 equ $ + 3
.l96d4 equ $ + 2
.l96d2
	dw #0000,#0000,#0000,#0101
.l96db equ $ + 1
.l96da
	dw #0001
.l96e2 equ $ + 6
.l96e0 equ $ + 4
.l96de equ $ + 2
.l96dc
	dw l9825,l985f,l9899,#0000
.l96ea equ $ + 6
.l96e8 equ $ + 4
.l96e6 equ $ + 2
.l96e4
	dw l9825,l985f,l9899,#0000
.l96ec
	dw l9817
.l96ee
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
	dw #03bc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
	dw #00ef,#00e1,#00d5,#00c9
	dw #00be,#00b3,#00a9,#009f
	dw #0096,#008e,#0086,#007f
	dw #0077,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
	dw #000f,#000e,#000d,#000d
	dw #000c,#000b,#000b,#000a
	dw #0009,#0009,#0008,#0000
.l97c7 equ $ + 1
.l97c6
	db #fb,#00,#2d,#2d,#2d,#20,#4d,#55
	db #4c,#54,#49,#20,#54,#49,#4d,#42
	db #52,#41,#4c,#20,#52,#45,#50,#4c
	db #41,#59,#20,#52,#4f,#55,#54,#49
	db #4e,#45,#20,#42,#59,#20,#57,#45
	db #45,#45,#21,#20,#4f,#46,#20,#47
	db #43,#53,#20,#2d,#2d,#2d
;
.init_music
.l97fc
;
	ld a,#00
	ld hl,l9817
	call l9003
	ld hl,l9825
	call l9018
	ld hl,l985f
	call l901b
	ld hl,l9899
	call l901e
	ret
.l9817
	dw l9e02,l9fa6,l9eaa,l9f06
.l9825 equ $ + 6
	dw l9f2e,l9e32,#0000,l98d5
	dw l98d5,l98d5,l98d5,l98d5
	dw l98d5,l98d5,l98d5,l98d5
	dw l98d5,l98d5,l98d5,l98d5
	dw l98d5,l98d5,l98d5,l98d5
	dw l98d5,l98d5,l98d5,l98d5
	dw l98d5,l98d5,l9c95,l9c95
	dw l98d5,l98d5,l98d5,#0000
.l985f
	dw l997a,l9984,l9984,l9984
	dw l9984,l9984,l9984,l9984
	dw l9984,l9984,l9984,l9984
	dw l9984,l9984,l9984,l9984
	dw l9984,l9984,l9984,l9984
	dw l9984,l9984,l9984,l9d67
	dw l9d67,l9984,l9984,l9984
.l9899 equ $ + 2
	dw #0000,l997f,l9a0b,l9a10
	dw l9a10,l9a3d,l9a3d,l9a10
	dw l9a10,l9add,l9b55,l9bd7
	dw l9add,l9a3d,l9a3d,l9a10
	dw l9a10,l9c18,l9c18,l9a3d
	dw l9a3d,l9c18,l9c18,l9a10
	dw l9d3a,l9d3a,l9a10,l9a3d
	dw l9a3d
.l98d5 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#ff,#1a
	db #0a,#0c,#00,#ff,#1a,#0a,#18,#00
	db #ff,#1a,#0a,#2a,#00,#ff,#1a,#0a
.l98e9
	db #36,#00,#ff,#1a,#0a,#42,#00,#ff
	db #1a,#0a,#48,#00,#ff,#1a,#0a,#54
	db #00,#ff,#1a,#0a,#60,#00,#ff,#1d
	db #0a,#6c,#00,#ff,#1d,#0a,#78,#00
	db #ff,#1d,#0a,#8a,#00,#ff,#1d,#0a
	db #96,#00,#ff,#1d,#0a,#a2,#00,#ff
	db #1d,#0a,#a8,#00,#ff,#1d,#0a,#b4
	db #00,#ff,#1d,#0a,#c0,#00,#ff,#18
	db #0a,#cc,#00,#ff,#18,#0a,#d8,#00
	db #ff,#18,#0a,#ea,#00,#ff,#18,#0a
	db #f6,#00,#ff,#18,#0a,#02,#01,#ff
	db #18,#0a,#08,#01,#ff,#18,#0a,#14
	db #01,#ff,#18,#0a,#20,#01,#ff,#1a
	db #0a,#2c,#01,#ff,#1a,#0a,#38,#01
	db #ff,#1a,#0a,#4a,#01,#ff,#1a,#0a
	db #56,#01,#ff,#1a,#0a,#62,#01,#ff
	db #1a,#0a,#68,#01,#ff,#1a,#0a,#74
	db #01,#ff,#1a,#0a,#7f,#01,#00,#00
.l997f equ $ + 6
.l997a equ $ + 1
	db #ff,#7f,#01,#00,#00,#ff,#7f,#01
.l9984 equ $ + 3
	db #00,#00,#ff,#00,#00,#ff,#15,#06
.l998e equ $ + 5
	db #18,#00,#ff,#15,#06,#30,#00,#ff
	db #15,#06,#48,#00,#ff,#15,#06,#54
	db #00,#ff,#15,#06,#5a,#00,#ff,#15
	db #06,#60,#00,#ff,#15,#06,#78,#00
	db #ff,#15,#06,#90,#00,#ff,#15,#06
	db #96,#00,#ff,#15,#06,#a2,#00,#ff
	db #15,#06,#ae,#00,#ff,#15,#06,#b4
	db #00,#ff,#15,#06,#c0,#00,#ff,#15
	db #06,#d8,#00,#ff,#15,#06,#f0,#00
	db #ff,#15,#06,#08,#01,#ff,#15,#06
	db #14,#01,#ff,#15,#06,#1a,#01,#ff
	db #15,#06,#20,#01,#ff,#15,#06,#38
	db #01,#ff,#15,#06,#50,#01,#ff,#15
	db #06,#56,#01,#ff,#15,#06,#62,#01
	db #ff,#15,#06,#6e,#01,#ff,#15,#06
	db #74,#01,#ff,#15,#06,#7f,#01,#00
.l9a10 equ $ + 7
.l9a0b equ $ + 2
	db #00,#ff,#7f,#01,#00,#00,#ff,#00
	db #00,#ff,#26,#08,#54,#00,#ff,#28
	db #08,#60,#00,#ff,#29,#08,#b4,#00
	db #ff,#28,#08,#ba,#00,#ff,#26,#08
	db #c0,#00,#ff,#24,#08,#14,#01,#ff
	db #28,#08,#20,#01,#ff,#26,#08,#7f
.l9a3d equ $ + 4
	db #01,#00,#00,#ff,#00,#00,#ff,#26
	db #02,#0c,#00,#ff,#26,#02,#18,#00
	db #ff,#29,#02,#24,#00,#ff,#26,#02
.l9a51
	db #30,#00,#ff,#29,#02,#42,#00,#ff
	db #26,#02,#4e,#00,#ff,#29,#02,#60
	db #00,#ff,#29,#02,#6c,#00,#ff,#29
	db #02,#78,#00,#ff,#2d,#02,#84,#00
	db #ff,#29,#02,#90,#00,#ff,#2d,#02
	db #a2,#00,#ff,#29,#02,#ae,#00,#ff
	db #2d,#02,#c0,#00,#ff,#24,#02,#cc
	db #00,#ff,#24,#02,#d8,#00,#ff,#28
	db #02,#e4,#00,#ff,#24,#02,#f0,#00
	db #ff,#28,#02,#02,#01,#ff,#24,#02
	db #0e,#01,#ff,#28,#02,#20,#01,#ff
	db #2d,#02,#26,#01,#ff,#2d,#02,#32
	db #01,#ff,#2d,#02,#38,#01,#ff,#2b
	db #02,#44,#01,#ff,#2b,#02,#4a,#01
	db #ff,#2b,#02,#56,#01,#ff,#24,#02
	db #5c,#01,#ff,#24,#02,#68,#01,#ff
	db #24,#02,#74,#01,#0c,#26,#02,#7f
.l9add equ $ + 4
	db #01,#00,#00,#ff,#00,#00,#ff,#3e
	db #04,#18,#00,#ff,#40,#04,#30,#00
	db #ff,#41,#04,#48,#00,#ff,#3e,#04
	db #54,#00,#ff,#40,#04,#60,#00,#ff
	db #41,#04,#6c,#00,#ff,#43,#04,#78
	db #00,#ff,#45,#04,#84,#00,#ff,#41
	db #04,#90,#00,#ff,#45,#04,#b4,#00
	db #ff,#40,#04,#ba,#00,#ff,#3e,#04
	db #c0,#00,#ff,#3c,#04,#d8,#00,#ff
	db #3e,#04,#f0,#00,#ff,#40,#04,#08
	db #01,#ff,#3e,#04,#14,#01,#ff,#40
	db #04,#20,#01,#ff,#3e,#04,#2c,#01
	db #ff,#40,#04,#38,#01,#ff,#41,#04
	db #44,#01,#ff,#40,#04,#50,#01,#ff
	db #3e,#04,#74,#01,#ff,#3c,#04,#7f
.l9b55 equ $ + 4
	db #01,#00,#00,#ff,#00,#00,#ff,#3e
	db #04,#18,#00,#ff,#40,#04,#30,#00
	db #ff,#41,#04,#48,#00,#ff,#3e,#04
	db #54,#00,#ff,#40,#04,#60,#00,#ff
	db #41,#04,#6c,#00,#ff,#43,#04,#78
	db #00,#ff,#45,#04,#84,#00,#ff,#41
	db #04,#90,#00,#ff,#45,#04,#b4,#00
	db #ff,#40,#04,#ba,#00,#ff,#3e,#04
	db #c0,#00,#ff,#3c,#04,#d8,#00,#ff
	db #3e,#04,#f0,#00,#ff,#40,#04,#08
	db #01,#ff,#3e,#04,#14,#01,#ff,#40
	db #04,#20,#01,#ff,#3e,#04,#2c,#01
	db #ff,#40,#04,#38,#01,#ff,#41,#04
	db #44,#01,#ff,#40,#04,#50,#01,#ff
	db #41,#04,#5c,#01,#ff,#40,#04,#68
	db #01,#ff,#41,#04,#74,#01,#ff,#43
.l9bd7 equ $ + 6
	db #04,#7f,#01,#00,#00,#ff,#00,#00
	db #ff,#45,#04,#30,#00,#ff,#45,#04
	db #60,#00,#ff,#45,#04,#90,#00,#ff
	db #45,#04,#c0,#00,#ff,#45,#04,#f0
	db #00,#ff,#45,#04,#20,#01,#ff,#45
	db #04,#44,#01,#ff,#41,#04,#50,#01
	db #ff,#40,#04,#5c,#01,#ff,#41,#04
	db #68,#01,#ff,#40,#04,#74,#01,#ff
.l9c18 equ $ + 7
	db #3c,#04,#7f,#01,#00,#00,#ff,#00
	db #00,#ff,#32,#02,#24,#00,#ff,#32
	db #02,#30,#00,#ff,#32,#02,#3c,#00
	db #ff,#34,#02,#48,#00,#ff,#35,#02
	db #54,#00,#ff,#37,#02,#60,#00,#ff
	db #3c,#02,#84,#00,#ff,#3c,#02,#90
	db #00,#ff,#3c,#02,#9c,#00,#ff,#37
	db #02,#a8,#00,#ff,#35,#02,#b4,#00
	db #ff,#37,#02,#c0,#00,#ff,#30,#02
	db #e4,#00,#ff,#30,#02,#f0,#00,#ff
	db #30,#02,#fc,#00,#ff,#34,#02,#08
	db #01,#ff,#35,#02,#14,#01,#ff,#34
	db #02,#20,#01,#ff,#32,#02,#62,#01
	db #ff,#35,#02,#68,#01,#ff,#34,#02
	db #6e,#01,#ff,#35,#02,#74,#01,#ff
	db #34,#02,#7a,#01,#ff,#30,#02,#7f
.l9c95 equ $ + 4
	db #01,#00,#00,#ff,#00,#00,#ff,#1a
	db #0a,#0c,#00,#ff,#26,#0a,#18,#00
	db #ff,#1a,#0a,#24,#00,#ff,#26,#0a
	db #30,#00,#ff,#1a,#0a,#3c,#00,#ff
	db #26,#0a,#48,#00,#ff,#1a,#0a,#54
	db #00,#ff,#26,#0a,#60,#00,#ff,#1d
	db #0a,#6c,#00,#ff,#29,#0a,#78,#00
	db #ff,#1d,#0a,#84,#00,#ff,#29,#0a
	db #90,#00,#ff,#1d,#0a,#9c,#00,#ff
	db #29,#0a,#a8,#00,#ff,#1d,#0a,#b4
	db #00,#ff,#29,#0a,#c0,#00,#ff,#18
	db #0a,#cc,#00,#ff,#24,#0a,#d8,#00
	db #ff,#18,#0a,#e4,#00,#ff,#24,#0a
	db #f0,#00,#ff,#18,#0a,#fc,#00,#ff
	db #24,#0a,#08,#01,#ff,#18,#0a,#14
	db #01,#ff,#24,#0a,#20,#01,#ff,#1a
	db #0a,#2c,#01,#ff,#26,#0a,#38,#01
	db #ff,#1a,#0a,#44,#01,#ff,#26,#0a
	db #50,#01,#ff,#1a,#0a,#5c,#01,#ff
	db #26,#0a,#68,#01,#ff,#1a,#0a,#74
	db #01,#ff,#26,#0a,#7f,#01,#00,#00
.l9d3a equ $ + 1
	db #ff,#00,#00,#ff,#1a,#08,#54,#00
	db #ff,#1c,#08,#60,#00,#ff,#1d,#08
	db #b4,#00,#ff,#1c,#08,#ba,#00,#ff
	db #1a,#08,#c0,#00,#ff,#18,#08,#14
	db #01,#ff,#1c,#08,#20,#01,#ff,#1a
.l9d67 equ $ + 6
	db #08,#7f,#01,#00,#00,#ff,#00,#00
	db #ff,#15,#00,#0c,#00,#ff,#1a,#06
	db #24,#00,#ff,#1a,#06,#30,#00,#ff
	db #15,#00,#3c,#00,#ff,#1a,#06,#54
	db #00,#ff,#1a,#06,#60,#00,#ff,#15
	db #00,#6c,#00,#ff,#1a,#06,#84,#00
	db #ff,#1a,#06,#90,#00,#ff,#15,#00
	db #9c,#00,#ff,#1a,#06,#a2,#00,#ff
	db #15,#00,#a8,#00,#ff,#15,#00,#ae
	db #00,#ff,#15,#00,#b4,#00,#ff,#1a
	db #06,#c0,#00,#ff,#15,#00,#cc,#00
	db #ff,#1a,#06,#e4,#00,#ff,#1a,#06
	db #f0,#00,#ff,#15,#00,#fc,#00,#ff
	db #1a,#06,#14,#01,#ff,#1a,#06,#20
	db #01,#ff,#15,#00,#2c,#01,#ff,#1a
	db #06,#44,#01,#ff,#1a,#06,#50,#01
	db #ff,#15,#00,#5c,#01,#ff,#1a,#06
	db #62,#01,#ff,#15,#00,#6e,#01,#ff
	db #15,#00,#74,#01,#ff,#15,#00,#7a
	db #01,#ff,#15,#00,#7f,#01,#00,#00
.l9e02 equ $ + 1
	db #ff,#00,#0e,#08,#4e,#00,#0c,#08
	db #4e,#00,#0c,#08,#4e,#00,#0a,#08
	db #4e,#00,#09,#08,#4e,#00,#09,#08
	db #4e,#00,#08,#08,#4e,#00,#08,#08
	db #4e,#00,#06,#08,#4e,#00,#03,#08
	db #4e,#00,#01,#08,#4e,#00,#00,#00
.l9e32 equ $ + 1
	db #00,#00,#0b,#01,#0c,#00,#0d,#00
	db #00,#00,#0c,#00,#00,#00,#0c,#00
	db #00,#01,#0b,#00,#00,#02,#0b,#00
	db #00,#02,#0b,#00,#00,#02,#0a,#00
	db #00,#02,#0a,#00,#00,#01,#0a,#00
	db #00,#00,#09,#00,#00,#00,#09,#00
	db #00,#00,#09,#00,#00,#00,#08,#00
	db #00,#01,#08,#00,#00,#02,#08,#00
	db #00,#02,#08,#00,#00,#02,#07,#00
	db #00,#02,#07,#00,#00,#01,#07,#00
	db #00,#00,#06,#00,#00,#00,#06,#00
	db #00,#00,#05,#00,#00,#00,#05,#00
	db #00,#01,#04,#00,#00,#02,#03,#00
	db #00,#02,#02,#00,#00,#02,#01,#00
	db #00,#02,#01,#00,#00,#00,#00,#00
.l9eaa equ $ + 1
	db #00,#00,#0b,#00,#0c,#00,#0b,#00
	db #0c,#00,#0b,#00,#f4,#00,#0a,#00
	db #00,#00,#0a,#00,#0c,#00,#0a,#00
	db #0c,#00,#0a,#00,#f4,#00,#09,#00
	db #00,#01,#09,#00,#0c,#00,#09,#00
	db #0c,#ff,#09,#00,#f4,#fe,#08,#00
	db #00,#ff,#08,#00,#0c,#00,#08,#00
	db #0c,#01,#08,#00,#0c,#00,#07,#00
	db #00,#ff,#07,#00,#f4,#fe,#07,#00
	db #00,#ff,#07,#00,#0c,#00,#07,#00
	db #0c,#01,#07,#00,#0c,#00,#07,#00
.l9f06 equ $ + 5
	db #00,#00,#00,#e8,#00,#00,#0e,#01
	db #20,#00,#0c,#05,#1d,#00,#0a,#09
	db #1a,#00,#09,#09,#1a,#00,#08,#0d
	db #17,#00,#07,#13,#14,#00,#07,#13
	db #14,#00,#04,#17,#11,#00,#01,#1b
.l9f2e equ $ + 5
	db #0e,#00,#00,#00,#00,#ff,#0c,#00
	db #00,#ff,#0e,#00,#00,#ff,#0e,#00
	db #00,#ff,#0e,#00,#00,#00,#0d,#00
	db #00,#01,#0d,#00,#00,#01,#0d,#00
	db #00,#01,#0c,#00,#00,#01,#0c,#00
	db #00,#00,#0c,#00,#00,#ff,#0c,#00
	db #00,#ff,#0c,#00,#00,#ff,#0b,#00
	db #00,#ff,#0b,#00,#00,#00,#0b,#00
	db #00,#01,#0b,#00,#00,#01,#0a,#00
	db #00,#01,#0a,#00,#00,#01,#0a,#00
	db #00,#00,#0a,#00,#00,#ff,#0a,#00
	db #00,#ff,#09,#00,#00,#ff,#09,#00
	db #00,#ff,#09,#00,#00,#00,#09,#00
	db #00,#01,#09,#00,#00,#01,#08,#00
	db #00,#01,#08,#00,#00,#01,#08,#00
.l9fa6 equ $ + 5
	db #00,#00,#00,#e0,#00,#00,#0b,#01
	db #0c,#00,#0f,#00,#00,#00,#0d,#00
	db #00,#00,#0c,#00,#00,#00,#0b,#00
	db #00,#00,#0b,#00,#00,#00,#0a,#00
	db #00,#00,#0a,#00,#00,#00,#09,#00
	db #00,#00,#09,#00,#00,#00,#09,#00
	db #00,#00,#08,#00,#00,#00,#08,#00
	db #00,#00,#08,#00,#00,#00,#07,#00
	db #0c,#00,#00,#ec,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
; #97c8
; db "--- MULTI TIMBRAL REPLAY ROUTINE BY WEEE! OF GCS ---"
;
; #a03a
; call #918b	; play
;
.music_info
	db "Fractale SlideShow 2 (1992)(Nephilim)(Weee)",0
	db "--- MULTI TIMBRAL REPLAY ROUTINE BY WEEE! OF GCS ---",0

	read "music_end.asm"
