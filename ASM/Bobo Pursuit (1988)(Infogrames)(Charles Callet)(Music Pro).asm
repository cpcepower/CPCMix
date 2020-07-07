; Music of Bobo Pursuit (1988)(Infogrames)(Charles Callet)(Music Pro)
; Ripped by Megachur the 01/01/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOBOPURS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #197b

	read "music_header.asm"

	xor a
	ld (l1f20),a
	ld (l1f24),a
	ld hl,l217e
	ld de,(l1ef4)
	ld (hl),d
	inc hl
	ld (hl),e
;
.init_music
;
	xor a
	ld (l1f20),a
	ld (l1f24),a
	ld hl,l1f2b
	ld (hl),#00
	ld de,l1f2c
	ld bc,#0128
	ldir
	ld a,(l2155)
	ld (l2054),a
	ld bc,l2154
	ld hl,(l2156)
	add hl,bc
	ld (l2057),hl
	ld hl,(l2158)
	add hl,bc
	ld (l2059),hl
	ld hl,(l215a)
	add hl,bc
	ld (l1f30),hl
	ld hl,(l215c)
	add hl,bc
	ld (l1f6b),hl
	ld hl,(l215e)
	add hl,bc
	ld (l1fa6),hl
	ld hl,l2160
	ld (l2055),hl
	ld a,#0f
	ld (l205c),a
	ld hl,l1f25
	ld de,l1f2b
	ld bc,#0005
	ldir
	ld hl,l1f25
	ld de,l1f66
	ld bc,#0005
	ldir
	ld hl,l1f25
	ld de,l1fa1
	ld bc,#0005
	ldir
	ld a,#ff
	ld (l1f20),a
	ld c,#38
	ld a,#07
	jp l2132
	ld a,#0f
.l1a06
	push af
	ld a,#0a
	ld (#13e9),a
.l1a0c
	ld a,(#13e9)
	cp #14
	jr nz,l1a0c
	pop af
	dec a
	ld (l205c),a
	or a
	jr nz,l1a06
	ret
;
.play_music
;
	ld a,(l1f20)
	or a
	ret z
	xor a
	ld (l1f20),a
	ld a,#08
	ld (l205f),a
	cpl
	ld (l205e),a
	ld a,(l205c)
	ld e,a
	ld b,#03
	ld hl,l1fc0
.l1a37
	ld a,(hl)
	ld c,a
	ld a,c
	cp e
	jp c,l1a3f
	ld a,e
.l1a3f
	ld c,a
	ld a,b
	add #07
	push de
	call l2132
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l1a37
	ld hl,l2054
	dec (hl)
	ld ix,l1f2b
	xor a
.l1a59
	ld (l205b),a
	ld a,(ix+#07)
	or a
	jp nz,l1d10
.l1a63
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l1a6d
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jp nz,l1ac8
	ld l,(ix+#01)
	ld h,(ix+#02)
.l1a7f
	ld a,(hl)
	cp #ff
	jp nz,l1aa9
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l1f24)
	or a
	jp z,l1a7f
	push hl
	push bc
	ld a,(l1f21)
	ld (l217e),a
	xor a
	ld (l1f21),a
	pop bc
	pop hl
	jp l1a7f
.l1aa9
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l2055)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l2154
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l1a6d
.l1ac8
	bit 7,a
	jp nz,l1b38
	ld hl,l2066
	or a
	jp z,l1ad7
	add (ix+#20)
.l1ad7
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld e,(hl)
	ld (ix+#36),e
	ld (ix+#38),e
	inc hl
	ld e,(hl)
	ld (ix+#37),e
	ld (ix+#39),e
	ld (ix+#0a),#00
	ld (ix+#21),#00
	ld (ix+#1f),#00
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ex de,hl
	ld a,(l205b)
	inc a
	ld hl,l1fc8
	ld bc,#0014
.l1b09
	add hl,bc
	dec a
	jp nz,l1b09
	call l1e86
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l205b)
	inc a
	ld hl,l2004
	ld bc,#0014
.l1b23
	add hl,bc
	dec a
	jp nz,l1b23
	call l1e86
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l1cfc
.l1b38
	bit 6,a
	jp nz,l1b8b
	bit 5,a
	jp z,l1b78
	push af
	xor a
	ld (l2060),a
	pop af
.l1b48
	and #1f
	ld b,a
	jp z,l1b60
	ld a,(l205d)
	push hl
	ld hl,l205e
	and (hl)
	pop hl
	ld c,a
	ld a,#07
	call l2132
	jp l1b6f
.l1b60
	ld a,(l205d)
	push hl
	ld hl,l205f
	or (hl)
	pop hl
	ld c,a
	ld a,#07
	call l2132
.l1b6f
	ld c,b
	ld a,#06
	call l2132
	jp l1cfc
.l1b78
	and #1f
	ld hl,l2126
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l1cfc
.l1b8b
	bit 5,a
	jp nz,l1bfe
	and #1f
	add a
	add a
	add a
	ld hl,(l2057)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l1ba7
	ld a,(de)
	bit 7,a
	jp nz,l1bba
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l1bd3
.l1bba
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#ff
	bit 7,a
	jp nz,l1bcd
	ld b,#01
.l1bcd
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l1bd3
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jp nz,l1ba7
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l1fc8
	ld a,(l205b)
	inc a
.l1bf2
	add hl,bc
	dec a
	jp nz,l1bf2
	ex de,hl
	call l1e86
	jp l1cfc
.l1bfe
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l1c15
	and #1f
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l1c15
	dec e
	inc e
	ld (hl),a
	inc e
	ld (hl),d
	inc e
	dec h
	inc e
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l1cfc
	pop hl
	ld a,(hl)
	ld (l2060),a
	and #3f
	ld (l2062),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l2063),a
	ld a,(l2060)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l2060),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l2060
	or (hl)
	ld (l2060),a
	ld (l2061),a
	ld a,(l2062)
	ld (l2065),a
	ld hl,l2063
	ld b,#ff
	cp (hl)
	jp nc,l1c68
	ld b,#01
.l1c68
	ld a,b
	ld (l2064),a
	ld a,(l2065)
	jp l1b48
	ld a,#02
	jp l1c79
	ld a,#01
.l1c79
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jp z,l1cf1
	add a
	add a
	add a
	ld hl,(l2059)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l1c98
	ld a,(de)
	bit 7,a
	jp nz,l1cad
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	neg
	ld (hl),a
	jp l1cc6
.l1cad
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#01
	bit 7,a
	jp nz,l1cc0
	ld b,#ff
.l1cc0
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l1cc6
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jp nz,l1c98
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l2004
	ld a,(l205b)
	inc a
.l1ce5
	add hl,bc
	dec a
	jp nz,l1ce5
	ex de,hl
	call l1e86
	jp l1cf6
.l1cf1
	ld a,#00
	ld (ix+#09),a
.l1cf6
	ld a,(ix+#09)
	ld (ix+#3a),a
.l1cfc
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l1a63
.l1d10
	ld a,(l2054)
	or a
	jp nz,l1d1a
	dec (ix+#07)
.l1d1a
	ld a,(ix+#0a)
	cp #04
	jp z,l1d68
	push ix
	pop hl
	ld b,a
	add a
	add a
	add b
	add #0b
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	or a
	jp nz,l1d49
	dec (hl)
	jp nz,l1d3c
	inc (ix+#0a)
.l1d3c
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l1d68
.l1d49
	dec (hl)
	jp nz,l1d5f
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	dec hl
	jp l1d61
.l1d5f
	inc hl
	inc hl
.l1d61
	dec (hl)
	jp nz,l1d68
	inc (ix+#0a)
.l1d68
	ld a,(ix+#09)
	or a
	jp z,l1e0d
	push ix
	pop hl
	ld a,(ix+#21)
	ld b,a
	add a
	add a
	add b
	add #22
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	or a
	jp nz,l1da8
	dec (hl)
	jp nz,l1d8c
	inc (ix+#21)
.l1d8c
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,l1d98
	inc b
.l1d98
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l1dd8
.l1da8
	dec (hl)
	jp nz,l1dcf
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	push hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,l1dbd
	inc b
.l1dbd
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l1dd1
.l1dcf
	inc hl
	inc hl
.l1dd1
	dec (hl)
	jp nz,l1dd8
	inc (ix+#21)
.l1dd8
	ld a,(ix+#21)
	cp #04
	jp nz,l1e0d
	ld a,(ix+#09)
	cp #02
	jp nz,l1def
	xor a
	ld (ix+#09),a
	jp l1e0d
.l1def
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l205b)
	inc a
	ld hl,l2004
	ld bc,#0014
.l1e05
	add hl,bc
	dec a
	jp nz,l1e05
	call l1e86
.l1e0d
	ld c,(ix+#36)
	ld a,(l205b)
	add a
	call l2132
	ld c,(ix+#37)
	inc a
	call l2132
	ld bc,#003b
	add ix,bc
	ld a,(l205f)
	rlc a
	ld (l205f),a
	cpl
	ld (l205e),a
	ld a,(l205b)
	inc a
	cp #03
	jp nz,l1a59
	ld a,(l2060)
	or a
	jp z,l1e73
	dec a
	ld (l2060),a
	or a
	jp nz,l1e73
	ld a,(l2061)
	ld (l2060),a
	ld a,(l2065)
	ld hl,l2064
	add (hl)
	ld (l2065),a
	ld c,a
	ld hl,l2062
	cp (hl)
	jp z,l1e66
	ld hl,l2063
	cp (hl)
	jp nz,l1e6e
.l1e66
	ld a,(l2064)
	xor #fe
	ld (l2064),a
.l1e6e
	ld a,#06
	call l2132
.l1e73
	ld a,(l2054)
	or a
	jp nz,l1e80
	ld a,(l2155)
	ld (l2054),a
.l1e80
	ld a,#ff
	ld (l1f20),a
	ret
.l1e86
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ret
	ld e,a
	ld d,#00
	add hl,de
	add hl,de
	ld a,(hl)
	inc hl
	ld b,(hl)
	ld l,a
	ld h,b
	ret
	push bc
	push hl
	push de
	push af
	xor a
	ld (l1f20),a
	ld hl,l217e
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld (l1ef4),de
	ld (hl),#ff
	dec hl
	ld (hl),#00
	ld hl,l1f25
	ld de,l1f2b
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l1f32),a
	ld (l1f21),a
	dec a
	ld (l1f20),a
	ld (l1f24),a
	pop af
	pop de
	pop hl
	pop bc
	ret
.l1ef4
	nop
	nop
	push hl
	push de
	push bc
	push af
	xor a
	ld (l1f20),a
	pop af
	push af
	ld (l1f21),a
	ld hl,l1f25
	ld de,l1f2b
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l1f32),a
	dec a
	ld (l1f20),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.l1f25 equ $ + 5
.l1f24 equ $ + 4
.l1f21 equ $ + 1
.l1f20
	db #00,#00,#00,#00,#ff,#00
	dw l1f2a,l1f2a
.l1f30 equ $ + 6
.l1f2c equ $ + 2
.l1f2b equ $ + 1
.l1f2a
	db #ff,#00,#00,#00,#00,#00,#00,#00
.l1f32
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1f66 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1f6b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1fa1 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1fa6 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1fc0 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1fc8 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2004 equ $ + 2
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
.l2059 equ $ + 7
.l2057 equ $ + 5
.l2055 equ $ + 3
.l2054 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2061 equ $ + 7
.l2060 equ $ + 6
.l205f equ $ + 5
.l205e equ $ + 4
.l205d equ $ + 3
.l205c equ $ + 2
.l205b equ $ + 1
	db #00,#00,#00,#38,#00,#00,#00,#00
.l2066 equ $ + 4
.l2065 equ $ + 3
.l2064 equ $ + 2
.l2063 equ $ + 1
.l2062
	db #00,#00,#00,#00,#00,#00
	dw #0c9c,#0be7,#0b3c,#0a9b
	dw #0a02,#0973,#08eb,#086b
	dw #07f2,#0780,#0714,#06ae
	dw #064e,#05f4,#059e,#054d
	dw #0501,#0469,#0475,#0435
	dw #03f9,#03c0,#038a,#0357
	dw #0327,#02fa,#02cf,#02a7
	dw #0281,#025d,#023b,#021b
	dw #01fc,#01e0,#01c5,#01ac
	dw #0194,#017d,#0168,#0153
	dw #0140,#012e,#011d,#010d
	dw #00fe,#00f0,#00e2,#00d6
	dw #00ca,#00be,#00b4,#00aa
	dw #00a0,#0097,#008f,#0087
	dw #007f,#0078,#0071,#006b
	dw #0065,#005f,#005a,#0055
	dw #0050,#004c,#0047,#0043
	dw #0040,#003c,#0039,#0035
	dw #0032,#0030,#002d,#002a
	dw #0028,#0026,#0024,#0022
	dw #0020,#001e,#001c,#001b
	dw #0019,#0018,#0016,#0015
	dw #0014,#0013,#0012,#0011
	dw #0010,#000f,#000e
.l2126
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
.l2132
	push af
	push bc
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
	pop bc
	pop af
	ret
.l215a equ $ + 6
.l2158 equ $ + 4
.l2156 equ $ + 2
.l2155 equ $ + 1
.l2154
	db #00,#05,#00,#02,#00,#03,#2a,#00
.l2160 equ $ + 4
.l215e equ $ + 2
.l215c
	db #2e,#00,#32,#00,#36,#00,#48,#00
	db #5c,#00,#a1,#00,#b4,#00,#d9,#00
	db #12,#01,#2a,#01,#37,#01,#47,#01
	db #5c,#01,#95,#01,#ac,#01,#cc,#01
.l217e equ $ + 2
	db #f9,#01,#02,#05,#03,#ff,#06,#09
	db #07,#ff,#0a,#0d,#0b,#ff,#e0,#00
	db #a0,#c9,#e1,#11,#83,#56,#56,#56
	db #56,#56,#56,#56,#56,#89,#56,#ff
	db #e0,#00,#a0,#c9,#e2,#05,#81,#2d
	db #2c,#2b,#2a,#26,#23,#21,#cd,#e2
	db #04,#84,#26,#ff,#e0,#00,#a0,#cd
	db #e2,#04,#81,#3d,#c2,#e2,#05,#3e
	db #cd,#e2,#04,#41,#c2,#e2,#05,#42
	db #cd,#e2,#04,#44,#c2,#e2,#05,#45
	db #cd,#e2,#04,#49,#c2,#e2,#05,#4a
	db #cd,#e2,#04,#38,#c2,#e2,#05,#39
	db #cd,#e2,#04,#3c,#c2,#e2,#05,#3d
	db #cd,#e2,#04,#3f,#c2,#e2,#05,#40
	db #cd,#e2,#04,#44,#c2,#e2,#05,#45
	db #ff,#e0,#fb,#a0,#cd,#e2,#04,#81
	db #39,#c2,#e2,#05,#3e,#cd,#e2,#04
	db #42,#84,#43,#ff,#e0,#00,#a0,#cd
	db #e2,#04,#81,#3d,#c2,#e2,#05,#3e
	db #cd,#e2,#04,#41,#c2,#e2,#05,#42
	db #cd,#e2,#04,#44,#c2,#e2,#05,#45
	db #cd,#e2,#04,#49,#c2,#e2,#05,#4a
	db #ff,#e0,#00,#a0,#cd,#e2,#04,#81
	db #3d,#c2,#e2,#05,#3e,#cd,#e2,#04
	db #41,#c2,#e2,#05,#42,#cd,#e2,#04
	db #44,#c2,#e2,#05,#45,#cd,#e2,#04
	db #49,#c2,#e2,#05,#4a,#cd,#e2,#04
	db #38,#c2,#e2,#05,#39,#cd,#e2,#04
	db #3c,#c2,#e2,#05,#3d,#cd,#e2,#04
	db #3f,#ff,#e0,#00,#a0,#cd,#e1,#04
	db #81,#0e,#1a,#26,#32,#0e,#1a,#26
	db #32,#15,#21,#2d,#39,#15,#21,#2d
	db #39,#ff,#e0,#00,#a0,#cd,#e1,#04
	db #81,#1c,#21,#31,#84,#32,#ff,#e0
	db #00,#a0,#cd,#e1,#04,#81,#0e,#1a
	db #26,#32,#0e,#1a,#26,#32,#ff,#e0
	db #00,#a0,#cd,#e1,#04,#81,#0e,#1a
	db #26,#32,#0e,#1a,#26,#32,#15,#21
	db #2d,#39,#15,#ff,#e0,#00,#a0,#c1
	db #e1,#0a,#83,#1a,#a5,#d1,#e1,#02
	db #29,#a0,#c1,#e1,#0a,#81,#38,#c2
	db #e2,#05,#3e,#cd,#e1,#04,#56,#c1
	db #e1,#0a,#1a,#83,#15,#a5,#d1,#e1
	db #02,#29,#a0,#c1,#e1,#0a,#81,#33
	db #c2,#e2,#05,#39,#cd,#e1,#04,#51
	db #c1,#e1,#0a,#15,#ff,#e0,#fb,#a0
	db #c1,#e1,#0a,#81,#15,#e2,#00,#51
	db #a5,#d1,#e1,#02,#29,#a0,#c1,#e1
	db #0a,#84,#1f,#ff,#e0,#00,#a0,#c1
	db #e1,#0a,#83,#1a,#a5,#d1,#e1,#02
	db #29,#a0,#c1,#e1,#0a,#81,#38,#c2
	db #e2,#05,#3e,#cd,#e1,#04,#56,#c1
	db #e1,#0a,#1a,#ff,#e0,#00,#a0,#c1
	db #e1,#0a,#83,#1a,#a5,#d1,#e1,#02
	db #29,#a0,#c1,#e1,#0a,#81,#38,#c2
	db #e2,#05,#3e,#cd,#e1,#04,#56,#c1
	db #e1,#0a,#1a,#83,#15,#a5,#d1,#e1
	db #02,#29,#a0,#c1,#e1,#0a,#81,#33
	db #ff,#e0,#00,#a0,#c0,#84,#39,#ff
	db #0f,#00,#0f,#00,#0f,#00,#0f,#00
	db #01,#0f,#83,#ad,#01,#00,#01,#00
	db #01,#0d,#0d,#ff,#01,#00,#01,#00
	db #01,#0b,#0b,#ff,#01,#00,#01,#00
	db #01,#09,#09,#ff,#01,#00,#01,#00
	db #01,#07,#07,#ff,#01,#00,#01,#00
	db #01,#0f,#82,#88,#08,#00,#83,#a1
	db #01,#0a,#01,#00,#03,#00,#84,#a8
	db #01,#0c,#01,#00,#03,#00,#18,#00
	db #01,#0c,#01,#00,#03,#00,#01,#00
	db #01,#0e,#01,#00,#03,#00,#87,#e2
	db #01,#0e,#01,#00,#82,#9c,#62,#00
	db #01,#0f,#07,#00,#84,#bc,#01,#00
	db #01,#0f,#04,#ff,#08,#00,#88,#d3
	db #01,#0a,#01,#00,#01,#f6,#01,#00
	db #01,#0c,#01,#00,#01,#f4,#01,#00
	db #01,#0e,#01,#00,#01,#f2,#01,#00
	db #01,#0f,#82,#9e,#01,#00,#01,#00
	db #01,#0d,#0d,#ff,#01,#00,#01,#00
	db #01,#0b,#0b,#ff,#01,#00,#01,#00
	db #01,#09,#09,#ff,#01,#00,#01,#00
	db #01,#0e,#01,#00,#01,#f2,#01,#00
	db #01,#0c,#91,#e3,#a1,#63,#a1,#63
	db #05,#03,#08,#00,#01,#00,#0f,#ff
	db #01,#0d,#04,#ff,#08,#00,#8a,#d3
	db #01,#0b,#04,#ff,#08,#00,#8c,#d3
	db #01,#09,#04,#ff,#08,#00,#95,#d3
	db #01,#07,#04,#ff,#08,#00,#9e,#da
	db #01,#0d,#03,#00,#08,#ff,#05,#00
	db #01,#0e,#86,#92,#89,#89,#82,#92
	db #01,#0f,#02,#00,#0c,#ff,#0c,#01
	db #01,#0d,#0c,#ff,#0d,#01,#0e,#ff
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#84,#08,#82,#88,#84,#08
	db #01,#00,#01,#3c,#03,#ec,#01,#ef
	db #86,#86,#01,#f1,#01,#2b,#01,#e5
	db #88,#08,#82,#04,#04,#fe,#03,#02
	db #04,#00,#82,#04,#04,#ff,#82,#04
	db #85,#0a,#03,#fd,#85,#0a,#01,#05
	db #01,#00,#01,#63,#03,#e2,#01,#d1
	db #01,#04,#01,#38,#03,#ec,#01,#f1
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #82,#04,#04,#02,#04,#fc,#04,#02
	db #01,#00,#01,#f4,#01,#f5,#01,#ef
	db #01,#00,#01,#63,#02,#d8,#01,#d1
	db #06,#00,#01,#ff,#01,#00,#01,#01
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #08,#00,#01,#01,#01,#01,#01,#01
	db #01,#f6,#01,#0a,#01,#01,#01,#ff
	db #01,#02,#01,#f7,#02,#01,#01,#05
	db #06,#00,#01,#ff,#01,#00,#01,#01
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #08,#00,#01,#01,#01,#01,#01,#01
	db #01,#00,#01,#00,#01,#01,#01,#ff
	db #01,#00,#01,#63,#02,#d8,#01,#d1
	db #06,#00,#01,#ff,#01,#00,#01,#01
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #08,#00,#01,#01,#01,#01,#01,#01
	db #01,#00,#01,#00,#01,#01,#01,#ff
	db #01,#00,#01,#63,#02,#d8,#01,#d1
	db #06,#00,#01,#ff,#01,#00,#01,#01
	db #08,#00,#01,#01,#01,#fe,#01,#01
	db #08,#00,#01,#01,#01,#01,#01,#01
	db #01,#00,#01,#00,#01,#01,#01,#ff
;
.music_info
	db "Bobo Pursuit (1988)(Infogrames)(Charles Callet)",0
	db "Music Pro",0

	read "music_end.asm"
