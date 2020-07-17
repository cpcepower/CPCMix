; Music of Zap 't' Balls - Amstrad International Version (1992)(Elmsoft Game-Service)(Weee)()
; Ripped by Megachur the 29/01/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ZAPTBAIV.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #9c00

	read "music_header.asm"

	jp la2ac	; init music
.l9c03
	jp l9c9c
	jp l9ce0
.l9c09
	jp l9d27	; play music
.l9c0e equ $ + 2
.l9c0d equ $ + 1
.l9c0c
	db #0c,#0c,#0f,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l9c18
	jp l9c2e
.l9c1b
	jp l9c3a
.l9c1e
	jp l9c46
	jp l9c52
	jp l9c60
	jp l9c6e
	jp l9cf2
.l9c2d
	db #01
.l9c2e
	ld (la1cb),hl
	ld (la1c5),hl
	ld a,#01
	ld (la1c2),a
	ret
.l9c3a
	ld (la1cd),hl
	ld (la1c7),hl
	ld a,#01
	ld (la1c3),a
	ret
.l9c46
	ld (la1cf),hl
	ld (la1c9),hl
	ld a,#01
	ld (la1c4),a
	ret
.l9c52
	ld (la1b9),hl
	sbc hl,hl
	ld (la1b3),hl
	ld a,#01
	ld (la1bf),a
	ret
.l9c60
	ld (la1bb),hl
	sbc hl,hl
	ld (la1b5),hl
	ld a,#01
	ld (la1c0),a
	ret
.l9c6e
	ld (la1bd),hl
	sbc hl,hl
	ld (la1b7),hl
	ld a,#01
	ld (la1c1),a
	ret
.l9c7c
	push hl
	ld h,buffer/&100
	ld l,a
	ld (hl),c
	pop hl
	ret
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
.l9c9a
	ei
	ret
.l9c9c
	ld (la1d1),hl
	ld a,#3f
	ld (la18b),a
	ld hl,la18c
	ld (hl),#00
	ld de,la18d
	ld bc,#001d
	ldir
	sub a
	ld (la1bf),a
	ld (la1c2),a
	ld (la1c0),a
	ld (la1c3),a
	ld (la1c1),a
	ld (la1c4),a
	ld (l9c0c),a
	ld (l9c0d),a
	ld (l9c0e),a
	ld a,(l9c2d)
	or a
	jr z,l9cdb
	ld a,(la2ab)
	ld (l9c9a),a
	jr l9cdf
.l9cdb
	sub a
	ld (l9c9a),a
.l9cdf
	ret
.l9ce0
	ld a,#07
	ld c,#3f
	jp l9c7c
;
.init_interrupt_music
;
	ld hl,la1aa
	ld de,l9c09
	ld b,#81
	jp #bcd7
.l9cf2
	ld hl,la18c
	ld e,hx
	ld d,#00
	add hl,de
	sla e
	sla e
	add hl,de
	ex de,hl
	ld hl,(la1d1)
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
.real_play_music
.l9d27
;
	ld a,(la1c2)
	or a
	call nz,l9d73
	ld a,(la1c3)
	or a
	call nz,l9d9d
	ld a,(la1c4)
	or a
	call nz,l9dc7
	ld a,(la1bf)
	or a
	call nz,l9df1
	ld a,(la1c0)
	or a
	call nz,l9e45
	ld a,(la1c1)
	or a
	call nz,l9e9a
	ld ix,la18c
	ld a,(ix+#00)
	or a
	call nz,l9f0a
	ld ix,la191
	ld a,(ix+#00)
	or a
	call nz,l9fe8
	ld ix,la196
	ld a,(ix+#00)
	or a
	call nz,la0c7
	ret
.l9d73
	ld a,(la1bf)
	or a
	ret nz
	ld de,(la1c5)
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
	jr nz,l9d90
	ld de,(la1cb)
.l9d90
	ld (la1c5),de
	ld l,(ix+#00)
	ld h,(ix+#01)
	jp l9c52
.l9d9d
	ld a,(la1c0)
	or a
	ret nz
	ld de,(la1c7)
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
	jr nz,l9dba
	ld de,(la1cd)
.l9dba
	ld (la1c7),de
	ld l,(ix+#00)
	ld h,(ix+#01)
	jp l9c60
.l9dc7
	ld a,(la1c1)
	or a
	ret nz
	ld de,(la1c9)
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
	jr nz,l9de4
	ld de,(la1cf)
.l9de4
	ld (la1c9),de
	ld l,(ix+#00)
	ld h,(ix+#01)
	jp l9c6e
.l9df1
	ld ix,la1b3
	ld e,(ix+#00)
	ld d,(ix+#01)
	inc de
	ld (ix+#00),e
	ld (ix+#01),d
	dec de
	ld ix,la1b9
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
	jr z,l9e41
	ld c,(iy+#02)
	ld b,(iy+#03)
	ld lx,e
	sub a
	ld hx,a
	ld hy,b
	ld ly,c
	jp l9cf2
.l9e41
	ld (la1bf),a
	ret
.l9e45
	ld ix,la1b5
	ld e,(ix+#00)
	ld d,(ix+#01)
	inc de
	ld (ix+#00),e
	ld (ix+#01),d
	dec de
	ld ix,la1bb
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
	jr z,l9e96
	ld c,(iy+#02)
	ld b,(iy+#03)
	ld lx,e
	ld a,#01
	ld hx,a
	ld hy,b
	ld ly,c
	jp l9cf2
.l9e96
	ld (la1c0),a
	ret
.l9e9a
	ld ix,la1b7
	ld e,(ix+#00)
	ld d,(ix+#01)
	inc de
	ld (ix+#00),e
	ld (ix+#01),d
	dec de
	ld ix,la1bd
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
	jr z,l9eeb
	ld c,(iy+#02)
	ld b,(iy+#03)
	ld lx,e
	ld a,#02
	ld hx,a
	ld hy,b
	ld ly,c
	jp l9cf2
.l9eeb
	ld (la1c1),a
	ret
.l9eef
	ld (la18c),a
	ld (l9c0c),a
	ld a,(la18b)
	or #09
	ld (la18b),a
	ld c,a
	ld a,#07
	call l9c7c
	ld a,#0d
	ld c,#00
	jp l9c7c
.l9f0a
	ld e,(ix+#01)
	ld d,(ix+#02)
	ld iy,#0000
	add iy,de
	ld a,(iy+#02)
	ld i,a
	and #80
	jr z,l9f2d
	ld h,#ff
	ld a,i
	ld l,a
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	jr l9f0a
.l9f2d
	ex de,hl
	ld de,#0004
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	ld b,(ix+#04)
	ld c,(ix+#03)
	ld a,b
	or a
	jr z,l9eef
	ld a,(iy+#01)
	or a
	jr z,l9eef
	dec b
	ld (ix+#04),b
	ld a,(iy+#03)
	add c
	ld l,a
	ld h,#00
	add hl,hl
	ld ix,la1d3
	ex de,hl
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld e,(iy+#00)
	sub a
	bit 7,e
	jr z,l9f6b
	xor #ff
.l9f6b
	ld d,a
	add hl,de
	sub a
	ld c,l
	call l9c7c
	ld a,#01
	ld c,h
	call l9c7c
	ld a,(la18b)
	or #08
	ld (la18b),a
	ld a,(iy+#02)
	or a
	jr z,l9f94
	ld c,a
	ld a,#06
	call l9c7c
	ld a,(la18b)
	and #f7
	ld (la18b),a
.l9f94
	ld c,(iy+#01)
	ld d,c
	ld a,#08
	call l9c7c
	ld a,d
	and #10
	jr z,l9fbb
	ld a,d
	ld c,#08
	and #08
	jr z,l9fab
	inc c
	inc c
.l9fab
	ld a,#0d
	call l9c7c
	ld a,d
	and #07
	ld c,a
	ld a,#0b
	call l9c7c
	ld d,#0c
.l9fbb
	ld a,d
	ld (l9c0c),a
	ld a,(la18b)
	and #fe
	ld (la18b),a
	ld c,a
	ld a,#07
	jp l9c7c
.l9fcd
	ld (la191),a
	ld (l9c0d),a
	ld a,(la18b)
	or #12
	ld (la18b),a
	ld c,a
	ld a,#07
	call l9c7c
	ld a,#0d
	ld c,#00
	jp l9c7c
.l9fe8
	ld e,(ix+#01)
	ld d,(ix+#02)
	ld iy,#0000
	add iy,de
	ld a,(iy+#02)
	ld i,a
	and #80
	jr z,la00b
	ld h,#ff
	ld a,i
	ld l,a
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	jr l9fe8
.la00b
	ex de,hl
	ld de,#0004
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	ld b,(ix+#04)
	ld c,(ix+#03)
	ld a,b
	or a
	jr z,l9fcd
	ld a,(iy+#01)
	or a
	jr z,l9fcd
	dec b
	ld (ix+#04),b
	ld a,(iy+#03)
	add c
	ld l,a
	ld h,#00
	add hl,hl
	ld ix,la1d3
	ex de,hl
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld e,(iy+#00)
	sub a
	bit 7,e
	jr z,la049
	xor #ff
.la049
	ld d,a
	add hl,de
	ld a,#02
	ld c,l
	call l9c7c
	ld a,#03
	ld c,h
	call l9c7c
	ld a,(la18b)
	or #10
	ld (la18b),a
	ld a,(iy+#02)
	or a
	jr z,la073
	ld c,a
	ld a,#06
	call l9c7c
	ld a,(la18b)
	and #ef
	ld (la18b),a
.la073
	ld c,(iy+#01)
	ld d,c
	ld a,#09
	call l9c7c
	ld a,d
	and #10
	jr z,la09a
	ld a,d
	ld c,#08
	and #08
	jr z,la08a
	inc c
	inc c
.la08a
	ld a,#0d
	call l9c7c
	ld a,d
	and #07
	ld c,a
	ld a,#0b
	call l9c7c
	ld d,#0c
.la09a
	ld a,d
	ld (l9c0d),a
	ld a,(la18b)
	and #fd
	ld (la18b),a
	ld c,a
	ld a,#07
	jp l9c7c
.la0ac
	ld (la196),a
	ld (l9c0e),a
	ld a,(la18b)
	or #24
	ld (la18b),a
	ld c,a
	ld a,#07
	call l9c7c
	ld a,#0d
	ld c,#00
	jp l9c7c
.la0c7
	ld e,(ix+#01)
	ld d,(ix+#02)
	ld iy,#0000
	add iy,de
	ld a,(iy+#02)
	ld i,a
	and #80
	jr z,la0ea
	ld h,#ff
	ld a,i
	ld l,a
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	jr la0c7
.la0ea
	ex de,hl
	ld de,#0004
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	ld b,(ix+#04)
	ld c,(ix+#03)
	ld a,b
	or a
	jr z,la0ac
	ld a,(iy+#01)
	or a
	jr z,la0ac
	dec b
	ld (ix+#04),b
	ld a,(iy+#03)
	add c
	ld l,a
	ld h,#00
	add hl,hl
	ld ix,la1d3
	ex de,hl
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld e,(iy+#00)
	sub a
	bit 7,e
	jr z,la128
	xor #ff
.la128
	ld d,a
	add hl,de
	ld a,#04
	ld c,l
	call l9c7c
	ld a,#05
	ld c,h
	call l9c7c
	ld a,(la18b)
	or #20
	ld (la18b),a
	ld a,(iy+#02)
	or a
	jr z,la152
	ld c,a
	ld a,#06
	call l9c7c
	ld a,(la18b)
	and #df
	ld (la18b),a
.la152
	ld c,(iy+#01)
	ld d,c
	ld a,#0a
	call l9c7c
	ld a,d
	and #10
	jr z,la179
	ld a,d
	ld c,#08
	and #08
	jr z,la169
	inc c
	inc c
.la169
	ld a,#0d
	call l9c7c
	ld a,d
	and #07
	ld c,a
	ld a,#0b
	call l9c7c
	ld d,#0c
.la179
	ld a,d
	ld (l9c0e),a
	ld a,(la18b)
	and #fb
	ld (la18b),a
	ld c,a
	ld a,#07
	jp l9c7c
.la18c equ $ + 1
.la18b
	jr la18e
.la18e equ $ + 1
.la18d
	dw la4d0
.la191 equ $ + 2
	db #2d,#03,#01
	dw la3a4
.la196 equ $ + 2
	db #25,#0a,#01
	dw lac1f
	db #00,#6c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la1aa equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.la1b7 equ $ + 6
.la1b5 equ $ + 4
.la1b3 equ $ + 2
	db #00,#00,#20,#00,#20,#00,#20,#00
.la1bd equ $ + 4
.la1bb equ $ + 2
.la1b9
	dw laeb4,ladba,lad79
.la1c4 equ $ + 5
.la1c3 equ $ + 4
.la1c2 equ $ + 3
.la1c1 equ $ + 2
.la1c0 equ $ + 1
.la1bf
	db #01,#01,#01,#01,#01,#01
.la1cb equ $ + 6
.la1c9 equ $ + 4
.la1c7 equ $ + 2
.la1c5
	dw la320,la324,la36c,la2e4
.la1d1 equ $ + 4
.la1cf equ $ + 2
.la1cd
	dw la324,la346,la2c6
.la1d3
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
.la2ab
	ei
;
.init_music
.la2ac
;
	sub a
	ld hl,la2c6
	call l9c03
	ld hl,la2e4
	call l9c18
	ld hl,la324
	call l9c1b
	ld hl,la346
	call l9c1e
	ret
.la2c6
	dw la4a4,la374,la394,la3dc
	dw la3ec,la3fc,la44c,laa68
	dw la8c4,laa14,lab8a,la424
.la2e4 equ $ + 6
	dw lac0f,la3b8,lad44,la540
	dw la540,la540,la540,la540
	dw la540,la540,la540,la540
	dw la540,la540,la540,la540
	dw la540,la540,la540,la540
	dw la540,la540,la540,la540
	dw la540,la540,la540,la5d1
	dw la5d1,la5d1,la5d1,la838
.la324 equ $ + 6
.la320 equ $ + 2
	dw laeaa,laeaa,#0000,la7d9
	dw la7d9,la63a,la63a,la63a
	dw la63a,la838,la838,la9dd
	dw la9dd,labe2,labe2,lad7e
	dw lada6,lada6,lada6,#0000
.la346
	dw la743,la743,la743,la743
	dw la7de,la7de,laae0,laae0
	dw la8e8,la8e8,lac77,lac77
	dw la63a,la63a,lad74,lad74
.la36c equ $ + 6
	dw lad74,lad74,lad74,lad74
	dw lad74,lad74,#0000
.la374
	db #00,#0f,#01,#16,#00,#0f,#00,#0a
	db #00,#0e,#00,#04,#00,#0c,#00,#fe
	db #00,#0b,#00,#f8,#00,#0a,#00,#f2
	db #00,#09,#00,#e6,#00,#00,#00,#00
.la394
	db #00,#0f,#01,#10,#00,#0f,#03,#0d
	db #00,#0d,#06,#0a,#00,#0c,#00,#07
.la3a4
	db #00,#0b,#00,#04,#00,#09,#00,#01
	db #00,#07,#00,#fe,#00,#05,#00,#fb
.la3b8 equ $ + 4
	db #00,#00,#00,#00,#00,#0e,#01,#10
	db #00,#0e,#03,#0d,#00,#0c,#06,#0a
	db #00,#0b,#00,#07,#00,#0a,#00,#04
	db #00,#08,#00,#01,#00,#06,#00,#fe
	db #00,#04,#00,#fb,#00,#00,#00,#00
.la3dc
	db #00,#0d,#01,#3a,#00,#0c,#02,#3a
	db #00,#0b,#03,#3a,#00,#00,#fc,#00
.la3ec
	db #00,#0f,#01,#3e,#00,#0d,#0b,#3e
	db #00,#0b,#15,#3e,#00,#00,#00,#00
.la3fc
	db #00,#0f,#00,#00,#00,#0e,#00,#00
	db #00,#0d,#00,#00,#00,#0d,#00,#00
	db #00,#0c,#00,#00,#00,#0c,#00,#00
	db #00,#0c,#00,#00,#00,#0c,#00,#00
	db #00,#0b,#00,#00,#00,#00,#fc,#00
.la424
	db #00,#0f,#00,#0c,#00,#0e,#00,#0c
	db #00,#0d,#00,#0c,#00,#0d,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0b,#00,#0c,#00,#00,#fc,#00
.la44c
	db #00,#0d,#00,#0c,#00,#0d,#00,#0c
	db #00,#0b,#00,#0c,#00,#0b,#00,#0c
	db #00,#09,#00,#0c,#00,#09,#00,#0c
	db #00,#08,#00,#0c,#00,#09,#00,#0c
	db #00,#08,#00,#0c,#00,#09,#00,#0c
	db #00,#07,#00,#0c,#00,#08,#00,#0c
	db #00,#07,#00,#0c,#00,#08,#00,#0c
	db #00,#07,#00,#0c,#00,#08,#00,#0c
	db #00,#06,#00,#0c,#00,#06,#00,#0c
	db #00,#04,#00,#0c,#00,#04,#00,#0c
	db #00,#02,#00,#0c,#00,#00,#00,#00
.la4a4
	db #ce,#0f,#01,#00,#e2,#0e,#00,#f4
	db #f6,#0e,#00,#f4,#fc,#0d,#00,#f4
	db #fe,#0d,#00,#f4,#00,#0d,#00,#f4
	db #04,#0c,#00,#f4,#08,#0c,#00,#f4
	db #04,#0c,#00,#f4,#00,#0b,#00,#f4
.la4d0 equ $ + 4
	db #04,#0c,#00,#f4,#08,#0b,#00,#f4
	db #04,#0b,#00,#f4,#00,#0b,#00,#f4
	db #04,#0a,#00,#f4,#08,#0b,#00,#f4
	db #04,#0a,#00,#f4,#00,#0a,#00,#f4
	db #04,#0a,#00,#f4,#08,#09,#00,#f4
	db #04,#0a,#00,#f4,#00,#09,#00,#f4
	db #04,#09,#00,#f4,#08,#09,#00,#f4
	db #04,#08,#00,#f4,#00,#09,#00,#f4
	db #04,#08,#00,#f4,#08,#08,#00,#f4
	db #04,#08,#00,#f4,#00,#07,#00,#f4
	db #04,#08,#00,#f4,#08,#07,#00,#f4
	db #04,#07,#00,#f4,#00,#07,#00,#f4
	db #04,#06,#00,#f4,#08,#07,#00,#f4
	db #04,#06,#00,#f4,#00,#06,#00,#f4
.la540 equ $ + 4
	db #00,#00,#e0,#00,#00,#00,#0e,#2d
	db #00,#0e,#00,#07,#2d,#00,#15,#00
	db #0e,#2d,#00,#1c,#00,#0e,#25,#04
	db #23,#00,#0e,#2d,#00,#2a,#00,#0e
	db #31,#06,#31,#00,#07,#2d,#00,#38
	db #00,#0e,#2b,#00,#46,#00,#07,#2b
	db #00,#4d,#00,#0e,#2b,#00,#54,#00
	db #0e,#25,#04,#5b,#00,#0e,#2b,#00
	db #62,#00,#0e,#31,#06,#69,#00,#07
	db #2b,#00,#70,#00,#0e,#30,#00,#7e
	db #00,#07,#30,#00,#85,#00,#0e,#30
	db #00,#8c,#00,#0e,#25,#04,#93,#00
	db #0e,#30,#00,#9a,#00,#0e,#31,#06
	db #a1,#00,#07,#30,#00,#a8,#00,#0e
	db #32,#00,#b6,#00,#07,#32,#00,#bd
	db #00,#0e,#32,#00,#c4,#00,#0e,#25
	db #04,#cb,#00,#0e,#32,#00,#d2,#00
	db #0e,#31,#06,#d9,#00,#07,#32,#00
.la5d1 equ $ + 5
	db #df,#00,#00,#00,#ff,#00,#00,#0e
	db #2d,#00,#0e,#00,#07,#2d,#00,#15
	db #00,#0e,#2d,#00,#23,#00,#0e,#2d
	db #00,#31,#00,#07,#2d,#00,#38,#00
	db #0e,#2b,#00,#46,#00,#07,#2b,#00
	db #4d,#00,#0e,#2b,#00,#5b,#00,#0e
	db #2b,#00,#69,#00,#07,#2b,#00,#70
	db #00,#0e,#30,#00,#7e,#00,#07,#30
	db #00,#85,#00,#0e,#30,#00,#93,#00
	db #0e,#30,#00,#a1,#00,#07,#30,#00
	db #a8,#00,#0e,#32,#00,#b6,#00,#07
	db #32,#00,#bd,#00,#0e,#32,#00,#cb
	db #00,#0e,#32,#00,#d9,#00,#07,#32
.la63a equ $ + 6
	db #00,#df,#00,#00,#00,#ff,#00,#00
	db #07,#39,#0c,#07,#00,#07,#3b,#0c
	db #0e,#00,#07,#3c,#0c,#15,#00,#07
	db #3b,#0c,#1c,#00,#07,#3c,#0c,#23
	db #00,#0e,#40,#0c,#31,#00,#07,#3c
	db #0c,#38,#00,#07,#3b,#0c,#3f,#00
	db #07,#39,#0c,#46,#00,#07,#3b,#0c
	db #4d,#00,#07,#3c,#0c,#54,#00,#0e
	db #3e,#0c,#62,#00,#0e,#37,#0c,#70
	db #00,#07,#30,#0c,#77,#00,#07,#32
	db #0c,#7e,#00,#0e,#34,#0c,#8c,#00
	db #07,#37,#0c,#93,#00,#07,#34,#0c
	db #9a,#00,#07,#37,#0c,#a1,#00,#07
	db #39,#0c,#a8,#00,#0e,#39,#0c,#b6
	db #00,#07,#39,#0c,#bd,#00,#07,#3b
	db #0c,#c4,#00,#07,#3c,#0c,#cb,#00
	db #07,#39,#0c,#d2,#00,#07,#3b,#0c
	db #d9,#00,#07,#3c,#0c,#e0,#00,#07
	db #39,#0c,#e7,#00,#07,#3b,#0c,#ee
	db #00,#07,#3c,#0c,#f5,#00,#07,#3b
	db #0c,#fc,#00,#07,#3c,#0c,#03,#01
	db #0e,#40,#0c,#11,#01,#07,#3c,#0c
	db #18,#01,#07,#3b,#0c,#1f,#01,#07
	db #39,#0c,#26,#01,#07,#3b,#0c,#2d
	db #01,#07,#3c,#0c,#34,#01,#0e,#3e
	db #0c,#42,#01,#0e,#37,#0c,#50,#01
	db #07,#3c,#0c,#57,#01,#07,#39,#0c
	db #5e,#01,#07,#37,#0c,#65,#01,#07
	db #3b,#0c,#6c,#01,#07,#3c,#0c,#73
	db #01,#0e,#40,#0c,#81,#01,#07,#3c
	db #0c,#88,#01,#07,#3e,#0c,#8f,#01
	db #0e,#3c,#0c,#9d,#01,#07,#32,#0c
	db #a4,#01,#07,#34,#0c,#ab,#01,#15
.la743 equ $ + 7
	db #36,#0c,#bf,#01,#00,#00,#ff,#00
	db #00,#0e,#34,#0a,#0e,#00,#1c,#39
	db #0a,#2a,#00,#0e,#34,#0a,#38,#00
	db #07,#37,#0a,#3f,#00,#0e,#39,#0a
	db #4d,#00,#0e,#32,#0a,#5b,#00,#07
	db #30,#0a,#62,#00,#0e,#32,#0a,#70
	db #00,#15,#34,#0a,#85,#00,#15,#37
	db #0a,#9a,#00,#0e,#34,#0a,#a8,#00
	db #1c,#36,#0a,#c4,#00,#07,#39,#0a
	db #cb,#00,#07,#3b,#0a,#d2,#00,#0e
	db #3c,#0a,#e0,#00,#15,#2d,#0a,#f5
	db #00,#15,#30,#0a,#0a,#01,#0e,#34
	db #0a,#18,#01,#2a,#32,#0a,#42,#01
	db #07,#30,#0a,#49,#01,#07,#32,#0a
	db #50,#01,#15,#34,#0a,#65,#01,#15
	db #37,#0a,#7a,#01,#07,#37,#0a,#81
	db #01,#07,#34,#0a,#88,#01,#15,#36
	db #0a,#9d,#01,#0e,#39,#0a,#ab,#01
	db #07,#3b,#0a,#b2,#01,#0e,#3c,#0a
.la7d9 equ $ + 5
	db #bf,#01,#00,#00,#ff,#bf,#01,#00
.la7de equ $ + 2
	db #00,#ff,#00,#00,#2a,#39,#0e,#2a
	db #00,#07,#3b,#0e,#31,#00,#07,#3c
	db #0e,#38,#00,#1c,#3b,#0e,#54,#00
	db #1c,#37,#0e,#70,#00,#2a,#34,#0e
	db #9a,#00,#0e,#30,#0e,#a8,#00,#38
	db #32,#0e,#e0,#00,#2a,#34,#0e,#0a
	db #01,#07,#39,#0e,#11,#01,#07,#3c
	db #0e,#18,#01,#2a,#3e,#0e,#42,#01
	db #07,#37,#0e,#49,#01,#07,#3e,#0e
	db #50,#01,#1c,#40,#0e,#6c,#01,#1c
	db #3c,#0e,#88,#01,#38,#3e,#0e,#bf
.la838 equ $ + 4
	db #01,#00,#00,#ff,#0e,#00,#15,#43
	db #10,#23,#00,#15,#41,#10,#38,#00
	db #1c,#40,#10,#54,#00,#07,#43,#10
	db #5b,#00,#31,#43,#10,#8c,#00,#0e
	db #47,#10,#9a,#00,#07,#47,#10,#a1
	db #00,#0e,#45,#10,#af,#00,#0e,#45
	db #10,#bd,#00,#07,#45,#10,#c4,#00
	db #0e,#43,#10,#d2,#00,#07,#41,#10
	db #d9,#00,#15,#41,#10,#ee,#00,#15
	db #45,#10,#03,#01,#15,#43,#10,#18
	db #01,#1c,#40,#10,#34,#01,#07,#45
	db #10,#3b,#01,#23,#45,#10,#5e,#01
	db #07,#47,#10,#65,#01,#0e,#45,#10
	db #73,#01,#0e,#43,#10,#81,#01,#07
	db #43,#10,#88,#01,#0e,#40,#10,#96
	db #01,#0e,#45,#10,#a4,#01,#07,#43
	db #10,#ab,#01,#07,#43,#10,#b2,#01
	db #0e,#41,#10,#bf,#01,#00,#00,#ff
.la8c4
	db #00,#0f,#00,#eb,#00,#0d,#00,#ea
	db #00,#0e,#00,#e9,#00,#0c,#00,#e8
	db #00,#0c,#00,#e7,#00,#09,#00,#e6
	db #00,#09,#00,#e5,#00,#06,#00,#e4
.la8e8 equ $ + 4
	db #00,#00,#00,#00,#0e,#00,#07,#45
	db #14,#15,#00,#07,#47,#14,#1c,#00
	db #07,#48,#14,#23,#00,#07,#34,#16
	db #2a,#00,#07,#3b,#16,#31,#00,#07
	db #3c,#16,#38,#00,#0e,#3e,#16,#46
	db #00,#07,#4a,#14,#4d,#00,#0e,#3b
	db #16,#5b,#00,#07,#39,#16,#62,#00
	db #0e,#37,#16,#70,#00,#0e,#30,#16
	db #7e,#00,#07,#34,#16,#85,#00,#07
	db #4c,#14,#8c,#00,#07,#32,#16,#93
	db #00,#07,#34,#16,#9a,#00,#0e,#30
	db #16,#a8,#00,#07,#32,#16,#af,#00
	db #07,#4a,#14,#b6,#00,#07,#4c,#14
	db #bd,#00,#0e,#4e,#14,#cb,#00,#07
	db #4a,#14,#d2,#00,#0e,#4c,#14,#e0
	db #00,#0e,#30,#16,#ee,#00,#07,#2f
	db #16,#f5,#00,#0e,#30,#16,#03,#01
	db #07,#2d,#16,#0a,#01,#07,#2f,#16
	db #11,#01,#07,#30,#16,#18,#01,#07
	db #32,#16,#1f,#01,#07,#43,#14,#26
	db #01,#07,#45,#14,#2d,#01,#0e,#2f
	db #16,#3b,#01,#07,#2d,#16,#42,#01
	db #0e,#2b,#16,#50,#01,#0e,#28,#16
	db #5e,#01,#07,#48,#14,#65,#01,#0e
	db #2b,#16,#73,#01,#07,#4c,#14,#7a
	db #01,#0e,#30,#16,#88,#01,#07,#32
	db #16,#8f,#01,#07,#4e,#14,#96,#01
	db #07,#36,#16,#9d,#01,#07,#37,#16
	db #a4,#01,#07,#39,#16,#ab,#01,#07
	db #36,#16,#b2,#01,#07,#37,#16,#b9
	db #01,#07,#39,#16,#bf,#01,#00,#00
.la9dd equ $ + 1
	db #ff,#00,#00,#38,#3c,#12,#38,#00
	db #1c,#3b,#12,#54,#00,#1c,#37,#12
	db #70,#00,#38,#34,#12,#a8,#00,#38
	db #39,#12,#e0,#00,#38,#3c,#12,#18
	db #01,#38,#37,#12,#50,#01,#38,#34
	db #12,#88,#01,#1c,#39,#12,#a4,#01
	db #1c,#3b,#12,#bf,#01,#00,#00,#ff
.laa14
	db #02,#0e,#00,#00,#00,#0e,#00,#00
	db #01,#0d,#00,#00,#02,#0c,#00,#00
	db #00,#0c,#00,#00,#01,#0c,#00,#00
	db #02,#0b,#00,#00,#00,#0b,#00,#00
	db #00,#0a,#00,#00,#02,#0a,#00,#00
	db #00,#09,#00,#00,#01,#09,#00,#00
	db #00,#08,#00,#00,#00,#08,#00,#00
	db #02,#09,#00,#00,#00,#09,#00,#00
	db #01,#0a,#00,#00,#02,#0a,#00,#00
	db #00,#0b,#00,#00,#00,#0b,#00,#00
.laa68 equ $ + 4
	db #00,#00,#c0,#00,#00,#10,#00,#0c
	db #00,#10,#00,#0c,#00,#10,#00,#0c
	db #00,#10,#00,#0c,#00,#10,#00,#0c
	db #00,#10,#00,#0c,#00,#10,#00,#0c
	db #00,#10,#00,#0c,#00,#10,#00,#0c
	db #00,#10,#00,#0c,#00,#10,#00,#0c
	db #02,#10,#00,#0c,#fe,#10,#00,#0c
	db #02,#10,#00,#0c,#fe,#10,#00,#0c
	db #02,#10,#00,#0c,#fe,#10,#00,#0c
	db #02,#10,#00,#0c,#04,#10,#00,#0c
	db #08,#10,#00,#0c,#04,#10,#00,#0c
	db #02,#10,#00,#0c,#00,#10,#00,#0c
	db #fe,#10,#00,#0c,#fc,#10,#00,#0c
	db #f8,#10,#00,#0c,#fc,#10,#00,#0c
	db #fe,#10,#00,#0c,#00,#10,#00,#0c
.laae0 equ $ + 4
	db #00,#00,#e0,#00,#23,#00,#07,#34
	db #16,#2a,#00,#07,#3b,#16,#31,#00
	db #07,#3c,#16,#38,#00,#15,#3e,#16
	db #4d,#00,#0e,#3b,#16,#5b,#00,#07
	db #39,#16,#62,#00,#0e,#37,#16,#70
	db #00,#0e,#30,#16,#7e,#00,#0e,#34
	db #16,#8c,#00,#07,#32,#16,#93,#00
	db #07,#34,#16,#9a,#00,#0e,#30,#16
	db #a8,#00,#38,#32,#16,#e0,#00,#0e
	db #30,#16,#ee,#00,#07,#2f,#16,#f5
	db #00,#0e,#30,#16,#03,#01,#07,#2d
	db #16,#0a,#01,#07,#2f,#16,#11,#01
	db #07,#30,#16,#18,#01,#15,#32,#16
	db #2d,#01,#0e,#2f,#16,#3b,#01,#07
	db #2d,#16,#42,#01,#0e,#2b,#16,#50
	db #01,#15,#28,#16,#65,#01,#15,#2b
	db #16,#7a,#01,#0e,#30,#16,#88,#01
	db #0e,#32,#16,#96,#01,#07,#36,#16
	db #9d,#01,#07,#37,#16,#a4,#01,#07
	db #39,#16,#ab,#01,#07,#36,#16,#b2
	db #01,#07,#37,#16,#b9,#01,#07,#39
.lab8a equ $ + 6
	db #16,#bf,#01,#00,#00,#ff,#00,#0d
	db #00,#00,#00,#0b,#00,#00,#00,#0a
	db #00,#00,#00,#0a,#00,#00,#00,#08
	db #00,#00,#00,#07,#00,#00,#00,#08
	db #00,#00,#00,#07,#00,#00,#00,#07
	db #00,#00,#00,#08,#00,#00,#00,#06
	db #00,#00,#00,#06,#00,#00,#00,#07
	db #00,#00,#00,#06,#00,#00,#00,#06
	db #00,#00,#00,#07,#00,#00,#00,#05
	db #00,#00,#00,#04,#00,#00,#00,#04
	db #00,#00,#00,#02,#00,#00,#00,#01
.labe2 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #e0,#00,#18,#5b,#00,#0e,#25,#1a
	db #cb,#00,#0e,#25,#1a,#d9,#00,#0e
	db #25,#1a,#e0,#00,#e0,#00,#18,#ab
	db #01,#0e,#25,#1a,#b2,#01,#0e,#25
	db #1a,#b9,#01,#0e,#25,#1a,#bf,#01
.lac0f equ $ + 3
	db #00,#00,#ff,#00,#0f,#01,#6b,#00
	db #0f,#01,#6b,#00,#0f,#02,#6b,#00
.lac1f equ $ + 3
	db #0f,#02,#6b,#00,#0f,#03,#6b,#00
	db #0e,#03,#6b,#00,#0e,#04,#6b,#00
	db #0e,#04,#6b,#00,#0e,#05,#6b,#00
	db #0d,#05,#6b,#00,#0d,#06,#6b,#00
	db #0d,#06,#6b,#00,#0d,#07,#6b,#00
	db #0c,#07,#6b,#00,#0c,#08,#6b,#00
	db #0c,#08,#6b,#00,#0c,#09,#6b,#00
	db #0b,#09,#6b,#00,#0b,#0a,#6b,#00
	db #0a,#0b,#6b,#00,#0a,#0c,#6b,#00
	db #09,#0d,#6b,#00,#08,#0f,#6b,#00
	db #07,#11,#6b,#00,#05,#17,#6b,#00
.lac77 equ $ + 3
	db #00,#00,#00,#00,#00,#07,#3b,#0e
	db #07,#00,#07,#3c,#0e,#0e,#00,#07
	db #3e,#0e,#15,#00,#07,#40,#0e,#1c
	db #00,#07,#3c,#0e,#23,#00,#07,#3e
	db #0e,#2a,#00,#07,#40,#0e,#31,#00
	db #07,#3c,#0e,#38,#00,#07,#3b,#0e
	db #3f,#00,#07,#3c,#0e,#46,#00,#07
	db #3e,#0e,#4d,#00,#07,#3b,#0e,#54
	db #00,#07,#3c,#0e,#5b,#00,#07,#3e
	db #0e,#62,#00,#07,#39,#0e,#69,#00
	db #07,#40,#0e,#70,#00,#07,#3c,#0e
	db #77,#00,#07,#40,#0e,#7e,#00,#07
	db #3e,#0e,#85,#00,#07,#40,#0e,#8c
	db #00,#07,#39,#0e,#93,#00,#07,#40
	db #0e,#9a,#00,#07,#37,#0e,#a1,#00
	db #07,#40,#0e,#a8,#00,#07,#39,#0e
	db #af,#00,#07,#40,#0e,#b6,#00,#07
	db #3b,#0e,#bd,#00,#07,#40,#0e,#c4
	db #00,#07,#3c,#0e,#cb,#00,#07,#40
	db #0e,#d2,#00,#07,#3b,#0e,#d9,#00
	db #15,#40,#0e,#ee,#00,#07,#34,#1c
	db #f5,#00,#0e,#37,#1c,#03,#01,#15
	db #3c,#1c,#18,#01,#1c,#3b,#1c,#34
	db #01,#0e,#37,#1c,#42,#01,#0e,#3e
	db #1c,#50,#01,#38,#3c,#1c,#88,#01
	db #38,#3b,#1c,#bf,#01,#00,#00,#ff
.lad44
	db #00,#0e,#00,#0c,#00,#0d,#00,#00
	db #00,#0c,#00,#18,#00,#0c,#00,#0c
	db #00,#0b,#00,#00,#00,#0b,#00,#18
	db #00,#0b,#00,#0c,#00,#0b,#00,#00
	db #00,#0a,#00,#18,#00,#0a,#00,#0c
	db #00,#0a,#00,#00,#00,#00,#f4,#00
.lad74
	db #1c,#00,#70,#00,#18
.lad7e equ $ + 5
.lad79
	db #6f,#00,#00,#00,#ff,#00,#00,#70
	db #21,#02,#70,#00,#70,#21,#02,#e0
	db #00,#70,#21,#02,#50,#01,#70,#21
	db #02,#88,#01,#70,#00,#18,#9d,#01
	db #70,#00,#18,#b2,#01,#70,#00,#18
.lada6 equ $ + 5
	db #bf,#01,#00,#00,#ff,#00,#00,#0e
	db #21,#02,#0e,#00,#07,#2d,#08,#15
	db #00,#07,#2d,#08,#1c,#00,#0e,#25
	db #04
.ladba
	db #2a,#00,#07,#2d,#08,#31,#00,#07
	db #25,#04,#38,#00,#0e,#21,#02,#46
	db #00,#07,#2d,#08,#4d,#00,#0e,#25
	db #04,#5b,#00,#07,#25,#04,#62,#00
	db #07,#25,#04,#69,#00,#07,#2d,#08
	db #70,#00,#0e,#21,#02,#7e,#00,#07
	db #2d,#08,#85,#00,#07,#2d,#08,#8c
	db #00,#07,#25,#04,#93,#00,#07,#25
	db #04,#9a,#00,#07,#2d,#08,#a1,#00
	db #07,#25,#04,#a8,#00,#0e,#21,#02
	db #b6,#00,#07,#2d,#08,#bd,#00,#07
	db #2d,#08,#c4,#00,#0e,#25,#04,#d2
	db #00,#07,#25,#04,#d9,#00,#07,#25
	db #04,#e0,#00,#0e,#21,#02,#ee,#00
	db #07,#2d,#08,#f5,#00,#07,#2d,#08
	db #fc,#00,#0e,#25,#04,#0a,#01,#07
	db #2d,#08,#11,#01,#07,#25,#04,#18
	db #01,#0e,#21,#02,#26,#01,#07,#2d
	db #08,#2d,#01,#07,#2d,#08,#34,#01
	db #07,#25,#04,#3b,#01,#07,#25,#04
	db #42,#01,#07,#2d,#08,#49,#01,#07
	db #25,#04,#50,#01,#0e,#21,#02,#5e
	db #01,#07,#2d,#08,#65,#01,#07,#21
	db #02,#6c,#01,#0e,#25,#04,#7a,#01
	db #07,#25,#04,#81,#01,#07,#25,#04
	db #88,#01,#0e,#21,#02,#96,#01,#07
	db #2d,#08,#9d,#01,#07,#2d,#08,#a4
	db #01,#07,#25,#04,#ab,#01,#07,#25
	db #04,#b2,#01,#07,#25,#04,#b9,#01
	db #07,#25,#04,#bf,#01,#00,#00,#ff
.laeaa
	db #00,#00,#15,#2d,#00,#15,#00,#0e
	db #2d,#00
.laeb4
	db #23,#00,#0e,#2d,#00,#31,#00,#07
	db #2d,#00,#38,#00,#15,#2b,#00,#4d
	db #00,#0e,#2b,#00,#5b,#00,#0e,#2b
	db #00,#69,#00,#07,#2b,#00,#70,#00
	db #15,#30,#00,#85,#00,#0e,#30,#00
	db #93,#00,#0e,#30,#00,#a1,#00,#07
	db #30,#00,#a8,#00,#15,#26,#00,#bd
	db #00,#0e,#26,#00,#cb,#00,#0e,#26
	db #00,#d9,#00,#07,#26,#00,#df,#00
	db #00,#00,#ff
	
	nop
buffer
	ds 16,#00

;
.play_music	; added by Megachur
;
	call real_play_music
	ld hl,#000d+buffer
	ld de,#f6f4
.ld839
	ld c,(hl)
	ld b,e
	out (c),l
	ld b,d
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,e
	out (c),c
	ld b,d
	ld c,a
	or #80
	out (c),a
	out (c),c
	dec l
	jp p,ld839
	ret
;
.music_info
	db "Zap 't' Balls - Amstrad International Version (1992)(Elmsoft Game-Service)(Weee)",0
	db "",0

	read "music_end.asm"
