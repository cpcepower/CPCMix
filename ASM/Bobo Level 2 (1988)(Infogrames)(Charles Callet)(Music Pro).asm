; Music of Bobo Level 2 (1988)(Infogrames)(Charles Callet)(Music Pro)
; Ripped by Megachur the 01/01/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOBOLEV2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #3aaf

	read "music_header.asm"

	xor a
	ld (l4054),a
	ld (l4058),a
	ld hl,l42ea
	ld de,(l4028)
	ld (hl),d
	inc hl
	ld (hl),e
;
.init_music
;
	xor a
	ld (l4054),a
	ld (l4058),a
	ld hl,l405f
	ld (hl),#00
	ld de,l4060
	ld bc,#0128
	ldir
	ld a,(l4289)
	ld (l4188),a
	ld bc,l4288
	ld hl,(l428a)
	add hl,bc
	ld (l418b),hl
	ld hl,(l428c)
	add hl,bc
	ld (l418d),hl
	ld hl,(l428e)
	add hl,bc
	ld (l4064),hl
	ld hl,(l4290)
	add hl,bc
	ld (l409f),hl
	ld hl,(l4292)
	add hl,bc
	ld (l40da),hl
	ld hl,l4294
	ld (l4189),hl
	ld a,#0f
	ld (l4190),a
	ld hl,l4059
	ld de,l405f
	ld bc,#0005
	ldir
	ld hl,l4059
	ld de,l409a
	ld bc,#0005
	ldir
	ld hl,l4059
	ld de,l40d5
	ld bc,#0005
	ldir
	ld a,#ff
	ld (l4054),a
	ld c,#38
	ld a,#07
	jp l4266
	ld a,#0f
.l3b3a
	push af
	ld a,#0a
	ld (#26c8),a
.l3b40
	ld a,(#26c8)
	cp #14
	jr nz,l3b40
	pop af
	dec a
	ld (l4190),a
	or a
	jr nz,l3b3a
	ret
;
.play_music
;
	ld a,(l4054)
	or a
	ret z
	xor a
	ld (l4054),a
	ld a,#08
	ld (l4193),a
	cpl
	ld (l4192),a
	ld a,(l4190)
	ld e,a
	ld b,#03
	ld hl,l40f4
.l3b6b
	ld a,(hl)
	ld c,a
	ld a,c
	cp e
	jp c,l3b73
	ld a,e
.l3b73
	ld c,a
	ld a,b
	add #07
	push de
	call l4266
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l3b6b
	ld hl,l4188
	dec (hl)
	ld ix,l405f
	xor a
.l3b8d
	ld (l418f),a
	ld a,(ix+#07)
	or a
	jp nz,l3e44
.l3b97
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l3ba1
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jp nz,l3bfc
	ld l,(ix+#01)
	ld h,(ix+#02)
.l3bb3
	ld a,(hl)
	cp #ff
	jp nz,l3bdd
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l4058)
	or a
	jp z,l3bb3
	push hl
	push bc
	ld a,(l4055)
	ld (l42ea),a
	xor a
	ld (l4055),a
	pop bc
	pop hl
	jp l3bb3
.l3bdd
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l4189)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l4288
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l3ba1
.l3bfc
	bit 7,a
	jp nz,l3c6c
	ld hl,l419a
	or a
	jp z,l3c0b
	add (ix+#20)
.l3c0b
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
	ld a,(l418f)
	inc a
	ld hl,l40fc
	ld bc,#0014
.l3c3d
	add hl,bc
	dec a
	jp nz,l3c3d
	call l3fba
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l418f)
	inc a
	ld hl,l4138
	ld bc,#0014
.l3c57
	add hl,bc
	dec a
	jp nz,l3c57
	call l3fba
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l3e30
.l3c6c
	bit 6,a
	jp nz,l3cbf
	bit 5,a
	jp z,l3cac
	push af
	xor a
	ld (l4194),a
	pop af
.l3c7c
	and #1f
	ld b,a
	jp z,l3c94
	ld a,(l4191)
	push hl
	ld hl,l4192
	and (hl)
	pop hl
	ld c,a
	ld a,#07
	call l4266
	jp l3ca3
.l3c94
	ld a,(l4191)
	push hl
	ld hl,l4193
	or (hl)
	pop hl
	ld c,a
	ld a,#07
	call l4266
.l3ca3
	ld c,b
	ld a,#06
	call l4266
	jp l3e30
.l3cac
	and #1f
	ld hl,l425a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l3e30
.l3cbf
	bit 5,a
	jp nz,l3d32
	and #1f
	add a
	add a
	add a
	ld hl,(l418b)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l3cdb
	ld a,(de)
	bit 7,a
	jp nz,l3cee
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l3d07
.l3cee
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
	jp nz,l3d01
	ld b,#01
.l3d01
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l3d07
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jp nz,l3cdb
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l40fc
	ld a,(l418f)
	inc a
.l3d26
	add hl,bc
	dec a
	jp nz,l3d26
	ex de,hl
	call l3fba
	jp l3e30
.l3d32
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l3d49
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
.l3d49
	ld d,c
	dec a
	xor e
	dec a
	and (hl)
	dec a
	ld e,c
	dec a
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l3e30
	pop hl
	ld a,(hl)
	ld (l4194),a
	and #3f
	ld (l4196),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l4197),a
	ld a,(l4194)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l4194),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l4194
	or (hl)
	ld (l4194),a
	ld (l4195),a
	ld a,(l4196)
	ld (l4199),a
	ld hl,l4197
	ld b,#ff
	cp (hl)
	jp nc,l3d9c
	ld b,#01
.l3d9c
	ld a,b
	ld (l4198),a
	ld a,(l4199)
	jp l3c7c
	ld a,#02
	jp l3dad
	ld a,#01
.l3dad
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jp z,l3e25
	add a
	add a
	add a
	ld hl,(l418d)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l3dcc
	ld a,(de)
	bit 7,a
	jp nz,l3de1
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
	jp l3dfa
.l3de1
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
	jp nz,l3df4
	ld b,#ff
.l3df4
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l3dfa
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jp nz,l3dcc
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l4138
	ld a,(l418f)
	inc a
.l3e19
	add hl,bc
	dec a
	jp nz,l3e19
	ex de,hl
	call l3fba
	jp l3e2a
.l3e25
	ld a,#00
	ld (ix+#09),a
.l3e2a
	ld a,(ix+#09)
	ld (ix+#3a),a
.l3e30
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l3b97
.l3e44
	ld a,(l4188)
	or a
	jp nz,l3e4e
	dec (ix+#07)
.l3e4e
	ld a,(ix+#0a)
	cp #04
	jp z,l3e9c
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
	jp nz,l3e7d
	dec (hl)
	jp nz,l3e70
	inc (ix+#0a)
.l3e70
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l3e9c
.l3e7d
	dec (hl)
	jp nz,l3e93
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
	jp l3e95
.l3e93
	inc hl
	inc hl
.l3e95
	dec (hl)
	jp nz,l3e9c
	inc (ix+#0a)
.l3e9c
	ld a,(ix+#09)
	or a
	jp z,l3f41
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
	jp nz,l3edc
	dec (hl)
	jp nz,l3ec0
	inc (ix+#21)
.l3ec0
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,l3ecc
	inc b
.l3ecc
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l3f0c
.l3edc
	dec (hl)
	jp nz,l3f03
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
	jp nz,l3ef1
	inc b
.l3ef1
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l3f05
.l3f03
	inc hl
	inc hl
.l3f05
	dec (hl)
	jp nz,l3f0c
	inc (ix+#21)
.l3f0c
	ld a,(ix+#21)
	cp #04
	jp nz,l3f41
	ld a,(ix+#09)
	cp #02
	jp nz,l3f23
	xor a
	ld (ix+#09),a
	jp l3f41
.l3f23
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l418f)
	inc a
	ld hl,l4138
	ld bc,#0014
.l3f39
	add hl,bc
	dec a
	jp nz,l3f39
	call l3fba
.l3f41
	ld c,(ix+#36)
	ld a,(l418f)
	add a
	call l4266
	ld c,(ix+#37)
	inc a
	call l4266
	ld bc,#003b
	add ix,bc
	ld a,(l4193)
	rlc a
	ld (l4193),a
	cpl
	ld (l4192),a
	ld a,(l418f)
	inc a
	cp #03
	jp nz,l3b8d
	ld a,(l4194)
	or a
	jp z,l3fa7
	dec a
	ld (l4194),a
	or a
	jp nz,l3fa7
	ld a,(l4195)
	ld (l4194),a
	ld a,(l4199)
	ld hl,l4198
	add (hl)
	ld (l4199),a
	ld c,a
	ld hl,l4196
	cp (hl)
	jp z,l3f9a
	ld hl,l4197
	cp (hl)
	jp nz,l3fa2
.l3f9a
	ld a,(l4198)
	xor #fe
	ld (l4198),a
.l3fa2
	ld a,#06
	call l4266
.l3fa7
	ld a,(l4188)
	or a
	jp nz,l3fb4
	ld a,(l4289)
	ld (l4188),a
.l3fb4
	ld a,#ff
	ld (l4054),a
	ret
.l3fba
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
	ld (l4054),a
	ld hl,l42ea
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld (l4028),de
	ld (hl),#ff
	dec hl
	ld (hl),#00
	ld hl,l4059
	ld de,l405f
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l4066),a
	ld (l4055),a
	dec a
	ld (l4054),a
	ld (l4058),a
	pop af
	pop de
	pop hl
	pop bc
	ret
.l4028
	nop
	nop
	push hl
	push de
	push bc
	push af
	xor a
	ld (l4054),a
	pop af
	push af
	ld (l4055),a
	ld hl,l4059
	ld de,l405f
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l4066),a
	dec a
	ld (l4054),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.l4059 equ $ + 5
.l4058 equ $ + 4
.l4055 equ $ + 1
.l4054
	db #00,#00,#00,#00,#ff,#00
	dw l405e,l405e
.l4064 equ $ + 6
.l4060 equ $ + 2
.l405f equ $ + 1
.l405e
	db #ff,#00,#00,#00,#00,#00,#00,#00
.l4066
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l409a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l409f equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l40d5 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l40da equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l40f4 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l40fc equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4138 equ $ + 2
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
.l418d equ $ + 7
.l418b equ $ + 5
.l4189 equ $ + 3
.l4188 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4195 equ $ + 7
.l4194 equ $ + 6
.l4193 equ $ + 5
.l4192 equ $ + 4
.l4191 equ $ + 3
.l4190 equ $ + 2
.l418f equ $ + 1
	db #00,#00,#00,#38,#00,#00,#00,#00
.l419a equ $ + 4
.l4199 equ $ + 3
.l4198 equ $ + 2
.l4197 equ $ + 1
.l4196
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
.l425a
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
.l4266
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
.l428e equ $ + 6
.l428c equ $ + 4
.l428a equ $ + 2
.l4289 equ $ + 1
.l4288
	db #00,#02,#42,#09,#42,#0a,#62,#00
.l4294 equ $ + 4
.l4292 equ $ + 2
.l4290
	db #74,#00,#89,#00,#9e,#00,#be,#00
	db #de,#00,#e6,#00,#0c,#01,#23,#01
	db #3c,#01,#5c,#01,#7c,#01,#9c,#01
	db #bc,#01,#dc,#01,#04,#02,#51,#02
	db #9e,#02,#cd,#02,#fc,#02,#41,#03
	db #86,#03,#cb,#03,#18,#04,#65,#04
	db #c7,#04,#e5,#04,#f3,#04,#fc,#04
	db #05,#05,#10,#05,#72,#05,#db,#05
	db #44,#06,#8b,#06,#d3,#06,#3c,#07
	db #a5,#07,#0e,#08,#77,#08,#ed,#08
	db #0c,#09,#1c,#09,#25,#09,#2e,#09
.l42ea equ $ + 2
	db #37,#09,#02,#00,#01,#02,#03,#04
	db #05,#06,#07,#06,#07,#08,#09,#08
	db #09,#0a,#0b,#ff,#0c,#0d,#0e,#0f
	db #10,#10,#10,#10,#11,#10,#10,#12
	db #0c,#0d,#13,#14,#13,#14,#14,#15
	db #ff,#1b,#1c,#1d,#1c,#20,#20,#20
	db #20,#21,#20,#1b,#1c,#1d,#1c,#22
	db #23,#22,#23,#23,#24,#ff,#e0,#00
	db #a0,#c9,#e1,#05,#82,#2d,#39,#36
	db #32,#36,#32,#31,#34,#31,#2f,#32
	db #2f,#2d,#39,#36,#32,#36,#32,#3b
	db #37,#32,#37,#32,#2f,#ff,#e0,#00
	db #a0,#c9,#e1,#05,#82,#2d,#39,#36
	db #32,#36,#32,#2f,#37,#34,#2f,#32
	db #2f,#2a,#2d,#36,#32,#36,#32,#2b
	db #2d,#31,#36,#34,#2d,#ff,#e0,#00
	db #a0,#c0,#8b,#30,#30,#ff,#e0,#00
	db #a0,#c9,#e1,#05,#84,#36,#cd,#e1
	db #04,#89,#39,#c9,#e1,#05,#84,#36
	db #3b,#39,#32,#34,#cd,#e1,#04,#36
	db #89,#39,#c9,#e1,#05,#84,#36,#3b
	db #39,#31,#32,#ff,#e0,#00,#a0,#c9
	db #e1,#05,#84,#34,#cd,#e1,#04,#89
	db #37,#c9,#e1,#05,#84,#34,#39,#37
	db #32,#34,#ff,#e0,#00,#a0,#c9,#e1
	db #05,#84,#36,#cd,#e1,#04,#88,#39
	db #c9,#e1,#05,#84,#36,#35,#36,#35
	db #34,#2f,#31,#ff,#e0,#00,#a0,#cd
	db #e2,#04,#82,#2d,#39,#36,#32,#36
	db #32,#31,#34,#31,#2f,#32,#2f,#2d
	db #39,#36,#32,#36,#32,#3b,#37,#32
	db #37,#32,#2f,#ff,#e0,#00,#a0,#cd
	db #e2,#04,#82,#2d,#39,#36,#32,#36
	db #32,#3b,#37,#32,#3b,#37,#32,#39
	db #36,#32,#39,#36,#32,#34,#31,#2d
	db #34,#31,#2d,#ff,#e0,#02,#a0,#cd
	db #e2,#04,#82,#2d,#39,#36,#32,#36
	db #32,#31,#34,#31,#2f,#32,#2f,#2d
	db #39,#36,#32,#36,#32,#3b,#37,#32
	db #37,#32,#2f,#ff,#e0,#02,#a0,#cd
	db #e2,#04,#82,#2d,#39,#36,#32,#36
	db #32,#3b,#37,#32,#3b,#37,#32,#39
	db #36,#32,#39,#36,#32,#34,#31,#2d
	db #34,#31,#2d,#ff,#e0,#f6,#a0,#cd
	db #e2,#04,#82,#2d,#39,#36,#32,#36
	db #32,#3b,#37,#32,#3b,#37,#32,#39
	db #36,#32,#39,#36,#32,#34,#31,#2d
	db #34,#31,#2d,#ff,#e0,#02,#a0,#cd
	db #e2,#04,#82,#2d,#39,#36,#32,#36
	db #32,#3b,#37,#32,#3b,#37,#32,#39
	db #36,#32,#39,#36,#32,#34,#31,#2d
	db #2d,#2f,#31,#85,#32,#3e,#c9,#e1
	db #05,#32,#30,#ff,#e0,#00,#a0,#c1
	db #e2,#0a,#82,#2c,#c2,#e2,#05,#2d
	db #c1,#e2,#0a,#38,#31,#c2,#e2,#05
	db #32,#2f,#c1,#e2,#0a,#30,#c2,#e2
	db #05,#31,#31,#c1,#e2,#0a,#2e,#c2
	db #e2,#05,#2f,#2f,#c1,#e2,#0a,#2c
	db #c2,#e2,#05,#2d,#c1,#e2,#0a,#38
	db #34,#c2,#e2,#05,#36,#32,#c1,#e2
	db #0a,#3a,#c2,#e2,#05,#3b,#3b,#c1
	db #e2,#0a,#33,#c2,#e2,#05,#34,#34
	db #ff,#e0,#00,#a0,#c1,#e2,#0a,#82
	db #38,#c2,#e2,#05,#39,#c1,#e2,#0a
	db #38,#31,#c2,#e2,#05,#32,#32,#c1
	db #e2,#0a,#36,#c2,#e2,#05,#37,#c1
	db #e2,#0a,#36,#30,#c2,#e2,#05,#31
	db #31,#c1,#e2,#0a,#35,#c2,#e2,#05
	db #36,#c1,#e2,#0a,#35,#2e,#c2,#e2
	db #05,#2f,#2f,#c1,#e2,#0a,#33,#c2
	db #e2,#05,#34,#c1,#e2,#0a,#33,#2c
	db #c2,#e2,#05,#2d,#2d,#ff,#e0,#00
	db #a0,#c6,#e2,#05,#82,#2d,#c2,#2d
	db #c6,#39,#36,#c2,#36,#32,#c6,#31
	db #c2,#31,#31,#c6,#2f,#c2,#2f,#2f
	db #c6,#2d,#c2,#2d,#c6,#39,#36,#c2
	db #36,#32,#c6,#3b,#c2,#3b,#3b,#c6
	db #34,#c2,#34,#34,#ff,#e0,#00,#a0
	db #c6,#e2,#05,#82,#39,#c2,#39,#c6
	db #39,#32,#c2,#32,#32,#c6,#37,#c2
	db #37,#c6,#37,#31,#c2,#31,#31,#c6
	db #36,#c2,#36,#c6,#36,#2f,#c2,#2f
	db #2f,#c6,#34,#c2,#34,#c6,#34,#2d
	db #c2,#2d,#2d,#ff,#e0,#00,#a0,#c1
	db #e2,#0a,#82,#2c,#c2,#e2,#05,#2d
	db #c3,#2d,#c4,#2d,#c5,#2d,#c2,#2e
	db #c1,#e2,#0a,#2e,#c2,#e2,#05,#2f
	db #c3,#2f,#c4,#2f,#c5,#2f,#c2,#30
	db #c1,#e2,#0a,#30,#c2,#e2,#05,#31
	db #c3,#31,#c4,#31,#c5,#31,#c2,#30
	db #c1,#e2,#0a,#2e,#c2,#e2,#05,#2f
	db #c3,#2f,#c4,#2f,#c5,#2f,#c2,#2a
	db #ff,#e0,#09,#a0,#c1,#e2,#0a,#82
	db #27,#c2,#e2,#05,#28,#c3,#28,#c4
	db #28,#c5,#28,#c2,#28,#c1,#e2,#0a
	db #28,#c2,#e2,#05,#29,#c3,#29,#c4
	db #29,#c5,#29,#c2,#29,#c1,#e2,#0a
	db #2a,#c2,#e2,#05,#2b,#c3,#2b,#c4
	db #2b,#c5,#2b,#c2,#2b,#c1,#e2,#0a
	db #2a,#c2,#e2,#05,#2b,#c3,#2b,#c4
	db #2b,#c5,#2b,#c2,#28,#ff,#e0,#00
	db #a0,#c1,#e2,#0a,#82,#2c,#c2,#e2
	db #05,#2d,#c3,#2d,#c4,#2d,#c5,#2d
	db #c2,#2e,#c1,#e2,#0a,#2e,#c2,#e2
	db #05,#2f,#c3,#2f,#c4,#2f,#c5,#2f
	db #c2,#30,#c1,#e2,#0a,#30,#c2,#e2
	db #05,#31,#c3,#31,#c4,#31,#c5,#31
	db #c2,#30,#c1,#e2,#0a,#2c,#c2,#e2
	db #05,#2d,#c3,#2d,#c4,#2d,#c5,#2d
	db #c2,#2d,#ff,#e0,#02,#a0,#c1,#e2
	db #0a,#82,#2c,#c2,#e2,#05,#2d,#c1
	db #e2,#0a,#38,#31,#c2,#e2,#05,#32
	db #2f,#c1,#e2,#0a,#30,#c2,#e2,#05
	db #31,#31,#c1,#e2,#0a,#2e,#c2,#e2
	db #05,#2f,#2f,#c1,#e2,#0a,#2c,#c2
	db #e2,#05,#2d,#c1,#e2,#0a,#38,#34
	db #c2,#e2,#05,#36,#32,#c1,#e2,#0a
	db #3a,#c2,#e2,#05,#3b,#3b,#c1,#e2
	db #0a,#33,#c2,#e2,#05,#34,#34,#ff
	db #e0,#02,#a0,#c1,#e2,#0a,#82,#38
	db #c2,#e2,#05,#39,#c1,#e2,#0a,#38
	db #31,#c2,#e2,#05,#32,#32,#c1,#e2
	db #0a,#36,#c2,#e2,#05,#37,#c1,#e2
	db #0a,#36,#30,#c2,#e2,#05,#31,#31
	db #c1,#e2,#0a,#35,#c2,#e2,#05,#36
	db #c1,#e2,#0a,#35,#2e,#c2,#e2,#05
	db #2f,#2f,#c1,#e2,#0a,#33,#c2,#e2
	db #05,#34,#c1,#e2,#0a,#33,#2c,#c2
	db #e2,#05,#2d,#2d,#ff,#e0,#f6,#a0
	db #c1,#e2,#0a,#82,#38,#c2,#e2,#05
	db #39,#c1,#e2,#0a,#38,#31,#c2,#e2
	db #05,#32,#32,#c1,#e2,#0a,#36,#c2
	db #e2,#05,#37,#c1,#e2,#0a,#36,#30
	db #c2,#e2,#05,#31,#31,#c1,#e2,#0a
	db #35,#c2,#e2,#05,#36,#c1,#e2,#0a
	db #35,#2e,#c2,#e2,#05,#2f,#2f,#c1
	db #e2,#0a,#33,#c2,#e2,#05,#34,#c1
	db #e2,#0a,#33,#c2,#e2,#05,#2d,#2f
	db #31,#cd,#e2,#04,#85,#32,#3e,#c2
	db #e2,#05,#82,#26,#c3,#26,#c2,#26
	db #c3,#24,#c2,#24,#c3,#24,#ff,#e0
	db #00,#e3,#56,#5f,#df,#e2,#00,#80
	db #00,#00,#81,#00,#82,#00,#80,#00
	db #83,#00,#82,#00,#81,#00,#80,#00
	db #82,#00,#85,#00,#ff,#e0,#00,#a0
	db #ca,#e1,#12,#83,#4e,#c9,#e1,#11
	db #87,#53,#ff,#e0,#00,#a0,#d7,#e1
	db #0b,#86,#3e,#ff,#e0,#00,#a0,#d7
	db #e1,#0d,#84,#26,#ff,#e0,#00,#a0
	db #c2,#e2,#05,#81,#43,#3e,#37,#ff
	db #e0,#00,#a0,#c1,#e2,#0a,#82,#1a
	db #c2,#e2,#05,#1a,#a1,#cf,#e2,#00
	db #00,#a5,#d1,#e1,#02,#29,#d2,#29
	db #a0,#c2,#e2,#05,#15,#c1,#e2,#0a
	db #1b,#c2,#e2,#05,#1c,#a1,#cf,#e2
	db #00,#00,#a5,#d1,#e1,#02,#29,#d2
	db #29,#a0,#c2,#e2,#05,#15,#c1,#e2
	db #0a,#1d,#c2,#e2,#05,#1e,#1a,#c1
	db #e2,#0a,#1d,#c2,#e2,#05,#1e,#1a
	db #c1,#e2,#0a,#1e,#c2,#e2,#05,#1f
	db #a1,#cf,#e2,#00,#00,#a5,#d1,#e1
	db #02,#29,#d2,#29,#a0,#c2,#e2,#05
	db #1a,#ff,#e0,#00,#a0,#c1,#e2,#0a
	db #82,#1e,#c2,#e2,#05,#1e,#a1,#cf
	db #e2,#00,#00,#a5,#d1,#e1,#02,#29
	db #d2,#29,#a0,#c2,#e2,#05,#1e,#c1
	db #e2,#0a,#1b,#c2,#e2,#05,#1c,#a1
	db #cf,#e2,#00,#00,#a5,#d1,#e1,#02
	db #29,#d2,#29,#a0,#c2,#e2,#05,#1c
	db #c1,#e2,#0a,#1a,#c2,#e2,#05,#1a
	db #a1,#cf,#e2,#00,#00,#a5,#d1,#e1
	db #02,#29,#d2,#29,#a0,#c2,#e2,#05
	db #1a,#c1,#e2,#0a,#15,#c2,#e2,#05
	db #15,#a1,#cf,#e2,#00,#00,#a5,#d1
	db #e1,#02,#29,#d2,#29,#a0,#c2,#e2
	db #05,#15,#ff,#e0,#00,#a0,#c1,#e2
	db #0a,#82,#1a,#c2,#e2,#05,#1a,#a1
	db #cf,#e2,#00,#00,#a5,#d1,#e1,#02
	db #29,#d2,#29,#a0,#c2,#e2,#05,#15
	db #c1,#e2,#0a,#1b,#c2,#e2,#05,#1c
	db #a1,#cf,#e2,#00,#00,#a5,#d1,#e1
	db #02,#29,#d2,#29,#a0,#c2,#e2,#05
	db #15,#c1,#e2,#0a,#1d,#c2,#e2,#05
	db #1e,#a2,#d0,#e2,#00,#00,#a5,#d1
	db #e1,#02,#29,#d2,#29,#a0,#c2,#e2
	db #05,#1a,#c1,#e2,#0a,#1e,#c2,#e2
	db #05,#1f,#a1,#cf,#e2,#00,#00,#a5
	db #d1,#e1,#02,#29,#d2,#29,#a0,#c2
	db #e2,#05,#1a,#ff,#e0,#00,#a0,#c1
	db #e2,#0a,#82,#1a,#c2,#e2,#05,#1a
	db #c3,#1a,#c4,#1a,#c5,#1a,#c2,#15
	db #c1,#e2,#0a,#1b,#c2,#e2,#05,#1c
	db #c3,#1c,#c4,#1c,#c5,#1c,#c2,#15
	db #c1,#e2,#0a,#1d,#c2,#e2,#05,#1e
	db #1a,#c1,#e2,#0a,#1d,#c2,#e2,#05
	db #1e,#1a,#c1,#e2,#0a,#1e,#c2,#e2
	db #05,#1f,#c3,#1f,#c4,#1f,#c5,#1f
	db #c2,#1a,#ff,#e0,#00,#a0,#c1,#e2
	db #0a,#82,#21,#c2,#e2,#05,#21,#c3
	db #21,#c4,#21,#c5,#21,#c2,#15,#c1
	db #e2,#0a,#1f,#c2,#e2,#05,#1f,#c3
	db #1f,#c4,#1f,#c5,#1f,#c2,#15,#c1
	db #e2,#0a,#1d,#c2,#e2,#05,#1e,#1a
	db #c1,#e2,#0a,#1d,#c2,#e2,#05,#1e
	db #1a,#c1,#e2,#0a,#1c,#c2,#e2,#05
	db #1c,#c3,#1c,#a5,#d1,#e1,#02,#29
	db #26,#24,#ff,#e0,#00,#a0,#c1,#e2
	db #0a,#82,#1a,#c2,#e2,#05,#1a,#a1
	db #cf,#e2,#00,#00,#a5,#d1,#e1,#02
	db #29,#d2,#29,#a0,#c2,#e2,#05,#1a
	db #c1,#e2,#0a,#1c,#c2,#e2,#05,#1c
	db #a1,#cf,#e2,#00,#00,#a5,#d1,#e1
	db #02,#29,#d2,#29,#a0,#c2,#e2,#05
	db #1c,#c1,#e2,#0a,#1e,#c2,#e2,#05
	db #1e,#a1,#cf,#e2,#00,#00,#a5,#d1
	db #e1,#02,#29,#d2,#29,#a0,#c2,#e2
	db #05,#1e,#c1,#e2,#0a,#1c,#c2,#e2
	db #05,#1c,#a1,#cf,#e2,#00,#00,#a5
	db #d1,#e1,#02,#29,#d2,#29,#a0,#c2
	db #e2,#05,#15,#ff,#e0,#00,#a0,#c1
	db #e2,#0a,#82,#19,#c2,#e2,#05,#19
	db #a1,#cf,#e2,#00,#00,#a5,#d1,#e1
	db #02,#29,#d2,#29,#a0,#c2,#e2,#05
	db #19,#c1,#e2,#0a,#1a,#c2,#e2,#05
	db #1a,#a1,#cf,#e2,#00,#00,#a5,#d1
	db #e1,#02,#29,#d2,#29,#a0,#c2,#e2
	db #05,#1a,#c1,#e2,#0a,#1c,#c2,#e2
	db #05,#1c,#a1,#cf,#e2,#00,#00,#a5
	db #d1,#e1,#02,#29,#d2,#29,#a0,#c2
	db #e2,#05,#1c,#c1,#e2,#0a,#15,#c2
	db #e2,#05,#15,#a1,#cf,#e2,#00,#00
	db #a5,#d1,#e1,#02,#29,#d2,#29,#a0
	db #c2,#e2,#05,#15,#ff,#e0,#00,#a0
	db #c1,#e2,#0a,#82,#1c,#c2,#e2,#05
	db #1c,#a1,#cf,#e2,#00,#00,#a5,#d1
	db #e1,#02,#29,#d2,#29,#a0,#c2,#e2
	db #05,#17,#c1,#e2,#0a,#1d,#c2,#e2
	db #05,#1e,#a1,#cf,#e2,#00,#00,#a5
	db #d1,#e1,#02,#29,#d2,#29,#a0,#c2
	db #e2,#05,#17,#c1,#e2,#0a,#1f,#c2
	db #e2,#05,#20,#a2,#d0,#e2,#00,#00
	db #a5,#d1,#e1,#02,#29,#d2,#29,#a0
	db #c2,#e2,#05,#1c,#c1,#e2,#0a,#20
	db #c2,#e2,#05,#21,#a1,#cf,#e2,#00
	db #00,#a5,#d1,#e1,#02,#29,#d2,#29
	db #a0,#c2,#e2,#05,#1c,#ff,#e0,#00
	db #a0,#c1,#e2,#0a,#82,#20,#c2,#e2
	db #05,#20,#a1,#cf,#e2,#00,#00,#a5
	db #d1,#e1,#02,#29,#d2,#29,#a0,#c2
	db #e2,#05,#20,#c1,#e2,#0a,#1d,#c2
	db #e2,#05,#1e,#a1,#cf,#e2,#00,#00
	db #a5,#d1,#e1,#02,#29,#d2,#29,#a0
	db #c2,#e2,#05,#1e,#c1,#e2,#0a,#1c
	db #c2,#e2,#05,#1c,#a1,#cf,#e2,#00
	db #00,#a5,#d1,#e1,#02,#29,#d2,#29
	db #a0,#c2,#e2,#05,#1c,#c1,#e2,#0a
	db #17,#c2,#e2,#05,#17,#a1,#cf,#e2
	db #00,#00,#a5,#d1,#e1,#02,#29,#d2
	db #29,#a0,#c2,#e2,#05,#17,#ff,#e0
	db #00,#a0,#c1,#e2,#0a,#82,#20,#c2
	db #e2,#05,#20,#a1,#cf,#e2,#00,#00
	db #a5,#d1,#e1,#02,#29,#d2,#29,#a0
	db #c2,#e2,#05,#20,#c1,#e2,#0a,#1d
	db #c2,#e2,#05,#1e,#a1,#cf,#e2,#00
	db #00,#a5,#d1,#e1,#02,#29,#d2,#29
	db #a0,#c2,#e2,#05,#1e,#c1,#e2,#0a
	db #1c,#c2,#e2,#05,#1c,#a1,#cf,#e2
	db #00,#00,#a5,#d1,#e1,#02,#29,#d2
	db #29,#a0,#c2,#e2,#05,#1c,#c1,#e2
	db #0a,#17,#c2,#e2,#05,#17,#a1,#cf
	db #e2,#00,#00,#a0,#c2,#e2,#05,#17
	db #19,#1b,#85,#1c,#10,#a2,#d0,#e2
	db #00,#84,#00,#a1,#cf,#82,#00,#84
	db #00,#ce,#82,#00,#ff,#e0,#00,#e3
	db #56,#5f,#df,#e2,#00,#81,#00,#00
	db #00,#00,#82,#00,#80,#00,#82,#00
	db #81,#00,#80,#00,#00,#81,#00,#80
	db #00,#84,#00,#ff,#e0,#ee,#a0,#c1
	db #e2,#0a,#81,#37,#c9,#e1,#05,#38
	db #c2,#83,#50,#ff,#e0,#06,#a0,#d7
	db #e1,#0b,#86,#33,#ff,#e0,#00,#a0
	db #d7,#e1,#0d,#84,#1d,#ff,#e0,#00
	db #a2,#de,#e2,#00,#86,#00,#ff,#e0
	db #00,#a0,#c2,#e2,#05,#81,#47,#43
	db #3e,#ff,#0f,#00,#0f,#00,#0f,#00
	db #0f,#00,#01,#0f,#83,#ad,#01,#00
	db #01,#00,#01,#0d,#0d,#ff,#01,#00
	db #01,#00,#01,#0b,#0b,#ff,#01,#00
	db #01,#00,#01,#09,#09,#ff,#01,#00
	db #01,#00,#01,#07,#07,#ff,#01,#00
	db #01,#00,#01,#0f,#82,#88,#08,#00
	db #83,#a1,#01,#0a,#01,#00,#03,#00
	db #84,#a8,#01,#0c,#01,#00,#03,#00
	db #18,#00,#01,#0b,#01,#00,#03,#00
	db #01,#00,#01,#0e,#01,#00,#03,#00
	db #87,#e2,#01,#0e,#01,#00,#82,#9c
	db #62,#00,#01,#0f,#07,#00,#84,#bc
	db #01,#00,#01,#0f,#04,#ff,#08,#00
	db #88,#d3,#01,#0a,#01,#00,#01,#f6
	db #01,#00,#01,#0c,#01,#00,#01,#f4
	db #01,#00,#01,#0e,#01,#00,#01,#f2
	db #01,#00,#01,#0f,#0f,#ff,#01,#00
	db #01,#00,#01,#0d,#0d,#ff,#01,#00
	db #01,#00,#01,#0b,#0b,#ff,#01,#00
	db #01,#00,#01,#09,#09,#ff,#01,#00
	db #01,#00,#01,#0e,#01,#00,#01,#f2
	db #01,#00,#01,#0c,#91,#e3,#a1,#63
	db #a1,#63,#05,#03,#08,#00,#01,#00
	db #0f,#ff,#01,#0d,#04,#ff,#08,#00
	db #8a,#d3,#01,#0b,#04,#ff,#08,#00
	db #8c,#d3,#01,#09,#04,#ff,#08,#00
	db #95,#d3,#01,#07,#04,#ff,#08,#00
	db #9e,#da,#01,#0d,#03,#00,#08,#ff
	db #05,#00,#01,#0e,#86,#92,#89,#89
	db #82,#92,#07,#02,#01,#f2,#0c,#00
	db #0c,#00,#01,#0f,#03,#00,#01,#ff
	db #82,#9c,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#84,#08,#82,#88
	db #84,#08,#01,#00,#01,#3c,#03,#ec
	db #01,#ef,#86,#86,#01,#f1,#01,#2b
	db #01,#e5,#88,#08,#82,#04,#04,#fe
	db #03,#02,#04,#00,#82,#04,#04,#ff
	db #82,#04,#85,#0a,#03,#fd,#85,#0a
	db #01,#05,#01,#00,#01,#63,#03,#e2
	db #01,#d1,#01,#04,#01,#38,#03,#ec
	db #01,#f1,#08,#00,#01,#01,#01,#fe
	db #01,#01,#82,#04,#01,#07,#04,#00
	db #02,#00,#01,#00,#01,#f4,#01,#f5
	db #01,#ef,#01,#00,#01,#63,#02,#d8
	db #01,#d1,#02,#00,#01,#0c,#01,#06
	db #01,#08,#08,#00,#01,#01,#01,#fe
	db #01,#01,#08,#00,#01,#01,#01,#01
	db #01,#01,#01,#f6,#01,#0a,#01,#01
	db #01,#ff,#01,#02,#01,#f7,#02,#01
	db #01,#05,#06,#00,#01,#04,#01,#01
	db #01,#04,#08,#00,#01,#01,#01,#fe
	db #01,#01,#08,#00,#01,#01,#01,#01
	db #01,#01,#01,#00,#01,#00,#01,#01
	db #01,#ff,#01,#00,#01,#63,#02,#d8
	db #01,#d1,#06,#00,#01,#ff,#01,#00
	db #01,#01,#08,#00,#01,#01,#01,#fe
	db #01,#01,#08,#00,#01,#01,#01,#01
	db #01,#01,#01,#00,#01,#00,#01,#01
	db #01,#ff,#01,#00,#01,#63,#02,#d8
	db #01,#d1,#06,#00,#01,#ff,#01,#00
	db #01,#01,#08,#00,#01,#01,#01,#fe
	db #01,#01,#08,#00,#01,#01,#01,#01
	db #01,#01,#01,#00,#01,#00,#01,#01
	db #01,#ff,#00,#c0,#0c,#cc,#30,#f0
	db #3c,#fc,#03,#c3,#0f,#cf,#33,#f3
	db #3f,#ff,#00,#f0,#0f,#ff
;
.music_info
	db "Bobo Level 2 (1988)(Infogrames)(Charles Callet)",0
	db "Music Pro",0

	read "music_end.asm"
