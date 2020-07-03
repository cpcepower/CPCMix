; Music of Renaud (1987)(Infogrames)()(Music Pro)
; Ripped by Megachur the 29/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RENAUD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #9534

	read "music_header.asm"
;
.init_music
;
	xor a
	ld (l9a38),a
	ld a,(l9a3c)
	or a
	jr nz,l955e
	ld hl,(l9c9e)
	ex de,hl
	ld hl,l95f9
	call l95ee
	ld hl,(l9ca0)
	ex de,hl
	ld hl,l95f9
	call l95ee
	ld hl,(l9ca2)
	ex de,hl
	ld hl,l95f9
	call l95ee
	jr l957c
.l955e
	ld hl,(l9c9e)
	ex de,hl
	ld hl,l95fb
	call l95ee
	ld hl,(l9ca0)
	ex de,hl
	ld hl,l95fd
	call l95ee
	ld hl,(l9ca2)
	ex de,hl
	ld hl,l95ff
	call l95ee
.l957c
	ld hl,l9a43
	ld (hl),#00
	ld de,l9a44
	ld bc,#0128
	ldir
	ld a,(l9c99)
	ld (l9b6c),a
	ld bc,l9c98
	ld hl,(l9c9a)
	add hl,bc
	ld (l9b6f),hl
	ld hl,(l9c9c)
	add hl,bc
	ld (l9b71),hl
	ld hl,(l9c9e)
	add hl,bc
	ld (l9a48),hl
	ld hl,(l9ca0)
	add hl,bc
	ld (l9a83),hl
	ld hl,(l9ca2)
	add hl,bc
	ld (l9abe),hl
	ld hl,l9ca4
	ld (l9b6d),hl
	ld a,#0f
	ld (l9b74),a
	ld hl,l9a3d
	ld de,l9a43
	ld bc,#0005
	ldir
	ld hl,l9a3d
	ld de,l9a7e
	ld bc,#0005
	ldir
	ld hl,l9a3d
	ld de,l9ab9
	ld bc,#0005
	ldir
	ld c,#38
	ld a,#07
	call lb9fa
	ld a,#ff
	ld (l9a38),a
	ret
.l95ee
	ex de,hl
	ld bc,l9c98
	add hl,bc
	ex de,hl
	ldi
	ldi
	ret
.l95ff equ $ + 6
.l95fd equ $ + 4
.l95fb equ $ + 2
.l95f9
	db #2b,#ff,#0a,#00,#13,#0b,#1c,#14
.l9601
	ei
	defs 3,0	;call #b962 test keyboard
;
.play_music
;
	ld a,(l9a38)
	or a
	ret z
	xor a
	ld (l9a38),a
	ld a,#08
	ld (l9b77),a
	cpl
	ld (l9b76),a
	ld a,(l9b74)
	ld e,a
	ld b,#03
	ld hl,l9ad8
.l9620
	ld a,(hl)
	ld c,a
	ld a,c
	cp e
	jr c,l9627
	ld a,e
.l9627
	ld c,a
	ld a,b
	add #07
	push de
	call lb9fa
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l9620
	ld hl,l9b6c
	dec (hl)
	ld ix,l9a43
	xor a
.l9641
	ld (l9b73),a
	ld a,(ix+#07)
	or a
	jp nz,l98a0
.l964b
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l9655
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jr nz,l96c3
	ld l,(ix+#01)
	ld h,(ix+#02)
.l9666
	ld a,(hl)
	cp #ff
	jr nz,l96a4
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l9a3c)
	or a
	jr nz,l9666
	push hl
	push bc
	push de
	ld a,(l9b73)
	ld c,a
	ld b,#00
	ld hl,l9a39
	add hl,bc
	push hl
	ld e,(hl)
	add a
	ld c,a
	ld hl,l9c9e
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l9c98
	add hl,bc
	ld (hl),e
	pop hl
	ld a,#2b
	ld (hl),a
	pop de
	pop bc
	pop hl
	jp l9666
.l96a4
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l9b6d)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l9c98
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l9655
.l96c3
	bit 7,a
	jr nz,l972d
	ld hl,l9b7e
	or a
	jr z,l96d0
	add (ix+#20)
.l96d0
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
	ld a,(l9b73)
	inc a
	ld hl,l9ae0
	ld bc,#0014
.l9702
	add hl,bc
	dec a
	jr nz,l9702
	ldir
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l9b73)
	inc a
	ld hl,l9b1c
	ld bc,#0014
.l971a
	add hl,bc
	dec a
	jr nz,l971a
	ldir
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l988c
.l972d
	bit 6,a
	jr nz,l9778
	bit 5,a
	jp z,l9765
	and #1f
	ld b,a
	jr z,l974d
	ld a,(l9b75)
	push hl
	ld hl,l9b76
	and (hl)
	pop hl
	ld c,a
	ld a,#07
	call lb9fa
	jp l975c
.l974d
	ld a,(l9b75)
	push hl
	ld hl,l9b77
	or (hl)
	pop hl
	ld c,a
	ld a,#07
	call lb9fa
.l975c
	ld c,b
	ld a,#06
	call lb9fa
	jp l988c
.l9765
	and #1f
	ld hl,l9c3e
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l988c
.l9778
	bit 5,a
	jr nz,l97e5
	and #1f
	add a
	add a
	add a
	ld hl,(l9b6f)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l9793
	ld a,(de)
	bit 7,a
	jr nz,l97a5
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l97bd
.l97a5
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
	jr nz,l97b7
	ld b,#01
.l97b7
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l97bd
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jr nz,l9793
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l9ae0
	ld a,(l9b73)
	inc a
.l97db
	add hl,bc
	dec a
	jr nz,l97db
	ex de,hl
	ldir
	jp l988c
.l97e5
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l97fc
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
.l97fc
	ld (bc),a
	sbc b
	ld c,#98
	ld a,(bc)
	sbc b
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l988c
	ld a,#02
	jr l9810
	ld a,#01
.l9810
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jr z,l9881
	add a
	add a
	add a
	ld hl,(l9b71)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l982e
	ld a,(de)
	bit 7,a
	jr nz,l9842
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
	jp l985a
.l9842
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
	jr nz,l9854
	ld b,#ff
.l9854
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l985a
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jr nz,l982e
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l9b1c
	ld a,(l9b73)
	inc a
.l9878
	add hl,bc
	dec a
	jr nz,l9878
	ex de,hl
	ldir
	jr l9886
.l9881
	ld a,#00
	ld (ix+#09),a
.l9886
	ld a,(ix+#09)
	ld (ix+#3a),a
.l988c
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l964b
.l98a0
	ld a,(l9b6c)
	or a
	jr nz,l98a9
	dec (ix+#07)
.l98a9
	ld a,(ix+#0a)
	cp #04
	jp z,l98f3
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
	jr nz,l98d6
	dec (hl)
	jr nz,l98c9
	inc (ix+#0a)
.l98c9
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l98f3
.l98d6
	dec (hl)
	jr nz,l98eb
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
	jp l98ed
.l98eb
	inc hl
	inc hl
.l98ed
	dec (hl)
	jr nz,l98f3
	inc (ix+#0a)
.l98f3
	ld a,(ix+#09)
	or a
	jp z,l9990
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
	jr nz,l9931
	dec (hl)
	jr nz,l9915
	inc (ix+#21)
.l9915
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jr nz,l9921
	ld b,#00
.l9921
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l995f
.l9931
	dec (hl)
	jr nz,l9957
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
	jr nz,l9945
	ld b,#00
.l9945
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l9959
.l9957
	inc hl
	inc hl
.l9959
	dec (hl)
	jr nz,l995f
	inc (ix+#21)
.l995f
	ld a,(ix+#21)
	cp #04
	jr nz,l9990
	ld a,(ix+#09)
	cp #02
	jr nz,l9974
	ld a,#00
	ld (ix+#09),a
	jr l9990
.l9974
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l9b73)
	inc a
	ld hl,l9b1c
	ld bc,#0014
.l998a
	add hl,bc
	dec a
	jr nz,l998a
	ldir
.l9990
	ld c,(ix+#36)
	ld a,(l9b73)
	add a
	call lb9fa
	ld c,(ix+#37)
	inc a
	call lb9fa
	ld bc,#003b
	add ix,bc
	ld a,(l9b77)
	rlc a
	ld (l9b77),a
	cpl
	ld (l9b76),a
	ld a,(l9b73)
	inc a
	cp #03
	jp nz,l9641
	ld a,(l9b6c)
	or a
	jr nz,l99c7
	ld a,(l9c99)
	ld (l9b6c),a
.l99c7
	ld a,#ff
	ld (l9a38),a
	ret
	push hl
	push de
	push bc
	push af
	xor a
	ld (l9a38),a
	ld a,b
	ld (l9a39),a
	ld hl,l9a3d
	ld de,l9a43
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l9a4a),a
	ld a,#ff
	ld (l9a38),a
	pop af
	pop bc
	pop de
	pop hl
	ret
	push hl
	push de
	push bc
	push af
	xor a
	ld (l9a38),a
	ld a,b
	ld (l9a3a),a
	ld a,c
	ld (l9a3b),a
	ld hl,l9a3d
	ld de,l9a7e
	ldi
	ldi
	ldi
	ldi
	ldi
	ld hl,l9a3d
	ld de,l9ab9
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l9a85),a
	ld (l9ac0),a
	ld a,#ff
	ld (l9a38),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.l9a3c equ $ + 4
.l9a3b equ $ + 3
.l9a3a equ $ + 2
.l9a39 equ $ + 1
.music_end
.l9a38
	db #ff,#2b,#2b,#2b,#ff
.l9a3d
	db #00
	dw l9a42,l9a42
.l9a42
	db #ff
.l9a4a equ $ + 7
.l9a48 equ $ + 5
.l9a44 equ $ + 1
.l9a43
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a7e equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a85 equ $ + 2
.l9a83
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9ab9 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9ac0 equ $ + 5
.l9abe equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9ad8 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9ae0 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9b1c equ $ + 1
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
.l9b71 equ $ + 6
.l9b6f equ $ + 4
.l9b6d equ $ + 2
.l9b6c equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9b77 equ $ + 4
.l9b76 equ $ + 3
.l9b75 equ $ + 2
.l9b74 equ $ + 1
.l9b73
	db #00,#00,#38,#00,#00,#00,#00,#00
.l9b7e equ $ + 3
	db #00,#00,#00,#00,#00
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
.l9c3e
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
	di
	ld hl,#0038
	ld de,l9c91
	ld bc,#0004
	ldir
	ld hl,#0039
	ld de,l9c6f
	ld (hl),e
	inc hl
	ld (hl),d
	ei
	ret
	di
	ld hl,l9c91
	ld de,#0038
	ld bc,#0004
	ldir
	ei
	ret
.l9c6f
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld a,(l9c97)
	cp #06
	jr nz,l9c82
	call l9601
	xor a
.l9c82
	inc a
	ld (l9c97),a
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ei
	reti
.l9c91
	db #00,#00,#00,#00,#00,#c9
.l9c9e equ $ + 7
.l9c9c equ $ + 5
.l9c9a equ $ + 3
.l9c99 equ $ + 2
.l9c98 equ $ + 1
.l9c97
	db #00,#00,#02,#a5,#00,#35,#01,#76
.l9ca4 equ $ + 5
.l9ca2 equ $ + 3
.l9ca0 equ $ + 1
	db #00,#85,#00,#95,#00,#ad,#01,#d2
	db #01,#f0,#01,#34,#02,#58,#02,#84
	db #02,#a9,#02,#d0,#02,#ef,#02,#11
	db #03,#42,#03,#73,#03,#a2,#03,#d1
	db #03,#00,#04,#2f,#04,#5e,#04,#8d
	db #04,#b2,#04,#e6,#04,#1d,#05,#33
	db #05,#49,#05,#5f,#05,#75,#05,#8b
	db #05,#a1,#05,#e5,#05,#3d,#06,#53
	db #06,#6e,#06,#7d,#06,#90,#06,#a6
	db #06,#ad,#06,#b4,#06,#bb,#06,#cd
	db #06,#db,#06,#e5,#06,#ef,#06,#08
	db #07,#18,#07,#45,#07,#49,#07,#78
	db #07,#83,#07,#9c,#07,#f6,#07,#29
	db #08,#45,#08,#93,#08,#a1,#08,#0a
	db #00,#01,#02,#03,#04,#05,#06,#07
	db #08,#09,#0a,#08,#09,#ff,#13,#0b
	db #0c,#0b,#0b,#0c,#0d,#0e,#0f,#10
	db #11,#12,#13,#11,#12,#ff,#1c,#14
	db #15,#14,#14,#15,#16,#17,#18,#19
	db #1a,#1b,#1c,#1a,#1b,#ff,#0f,#00
	db #0f,#00,#0f,#00,#0f,#00,#01,#0f
	db #81,#83,#01,#00,#06,#fe,#01,#0f
	db #0f,#ff,#01,#00,#01,#00,#01,#0d
	db #0d,#ff,#01,#00,#01,#00,#01,#0b
	db #0b,#ff,#01,#00,#01,#00,#01,#0f
	db #05,#ff,#01,#00,#01,#00,#01,#0f
	db #05,#ff,#04,#00,#83,#9e,#01,#0a
	db #01,#00,#01,#00,#01,#00,#01,#0a
	db #04,#00,#0a,#ff,#01,#00,#01,#0d
	db #02,#ff,#02,#00,#0b,#ff,#01,#0f
	db #01,#fb,#08,#00,#0a,#ff,#0f,#01
	db #01,#00,#84,#bc,#09,#00,#01,#0f
	db #02,#00,#0f,#ff,#01,#00,#01,#0c
	db #01,#00,#01,#f4,#01,#00,#03,#04
	db #81,#82,#01,#00,#0a,#ff,#01,#0d
	db #02,#00,#01,#00,#01,#00,#01,#0e
	db #0e,#ff,#01,#00,#01,#00,#01,#0c
	db #0c,#ff,#0e,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #82,#02,#82,#84,#82,#02,#01,#00
	db #83,#03,#83,#86,#83,#03,#01,#00
	db #84,#04,#84,#88,#84,#04,#08,#00
	db #01,#01,#01,#fe,#01,#01,#01,#02
	db #82,#02,#82,#84,#82,#03,#01,#00
	db #04,#01,#10,#00,#08,#01,#01,#00
	db #01,#7f,#03,#d8,#01,#d1,#01,#00
	db #06,#fa,#04,#fc,#08,#11,#01,#00
	db #01,#03,#01,#fa,#01,#03,#01,#00
	db #03,#07,#04,#f0,#03,#05,#08,#01
	db #35,#00,#04,#01,#04,#ff,#01,#00
	db #09,#0a,#08,#02,#0a,#07,#01,#00
	db #05,#ff,#03,#fe,#02,#fe,#01,#00
	db #04,#03,#03,#02,#04,#07,#c1,#e1
	db #03,#81,#33,#33,#83,#33,#c0,#81
	db #00,#c1,#33,#83,#33,#c0,#00,#c1
	db #33,#33,#33,#31,#31,#2f,#81,#2e
	db #83,#2f,#c0,#81,#00,#c1,#83,#2f
	db #2f,#33,#ff,#c1,#e1,#04,#83,#36
	db #36,#81,#36,#83,#36,#36,#c0,#81
	db #00,#c1,#83,#36,#34,#33,#c6,#87
	db #31,#c0,#83,#00,#c1,#2f,#2f,#31
	db #ff,#c1,#e1,#03,#83,#33,#33,#81
	db #33,#83,#33,#33,#c0,#81,#00,#00
	db #c1,#33,#83,#31,#2f,#31,#31,#2f
	db #81,#2e,#83,#2f,#c0,#81,#00,#c1
	db #83,#2f,#2f,#81,#33,#c6,#87,#36
	db #c0,#81,#00,#83,#00,#c1,#33,#33
	db #81,#33,#c6,#31,#c7,#85,#31,#83
	db #31,#2e,#c6,#85,#2f,#c1,#83,#2f
	db #81,#31,#c6,#33,#ff,#c8,#e1,#03
	db #85,#33,#c1,#83,#33,#81,#34,#c5
	db #33,#c8,#83,#33,#c1,#33,#33,#33
	db #36,#36,#81,#34,#83,#33,#c6,#85
	db #31,#c0,#81,#00,#c1,#83,#2e,#2f
	db #ff,#c1,#e1,#03,#83,#31,#31,#c0
	db #81,#00,#c1,#83,#33,#31,#c0,#81
	db #00,#c1,#83,#31,#31,#81,#33,#83
	db #34,#c0,#81,#00,#c1,#83,#34,#33
	db #81,#31,#83,#33,#c0,#81,#00,#83
	db #00,#c1,#2f,#2f,#ff,#c1,#e1,#04
	db #83,#38,#38,#81,#38,#83,#38,#c6
	db #85,#38,#c0,#81,#00,#c1,#83,#36
	db #34,#36,#36,#81,#36,#83,#34,#c6
	db #85,#33,#c0,#81,#00,#c1,#83,#31
	db #2f,#ff,#c1,#e1,#04,#83,#31,#31
	db #81,#31,#83,#31,#31,#c0,#81,#00
	db #c1,#83,#31,#33,#81,#34,#83,#33
	db #c0,#00,#c1,#81,#2f,#83,#2f,#2f
	db #34,#34,#81,#34,#83,#34,#81,#34
	db #ff,#c8,#e1,#04,#85,#34,#c1,#83
	db #33,#31,#33,#33,#31,#81,#2f,#31
	db #c8,#87,#31,#c0,#83,#00,#c1,#31
	db #81,#31,#83,#31,#c0,#81,#00,#ff
	db #c2,#e1,#04,#83,#33,#33,#81,#33
	db #83,#34,#c5,#81,#33,#c7,#e1,#01
	db #85,#33,#83,#33,#31,#c8,#2f,#c2
	db #2f,#31,#33,#31,#31,#2f,#81,#2e
	db #2f,#ff,#c8,#e1,#01,#83,#2f,#c0
	db #81,#00,#c2,#2f,#83,#31,#33,#34
	db #34,#36,#81,#34,#c5,#33,#c7,#85
	db #33,#83,#33,#31,#c8,#2f,#c2,#2f
	db #31,#81,#33,#c5,#31,#c8,#85,#31
	db #c0,#00,#83,#00,#c2,#31,#2f,#81
	db #2e,#2f,#ff,#c8,#e1,#02,#83,#2f
	db #c0,#81,#00,#c2,#33,#c6,#e1,#01
	db #36,#33,#31,#2f,#31,#2f,#2c,#2a
	db #c2,#83,#2f,#c0,#81,#00,#c6,#33
	db #36,#33,#34,#33,#31,#33,#2f,#31
	db #2f,#2c,#2a,#2c,#c2,#83,#2f,#c1
	db #e1,#05,#2f,#ff,#c7,#e1,#01,#81
	db #23,#27,#2a,#2f,#c0,#83,#00,#c6
	db #27,#c7,#81,#23,#27,#2a,#2f,#c0
	db #83,#00,#c6,#27,#c7,#81,#22,#25
	db #2a,#31,#c0,#83,#00,#c6,#2a,#c7
	db #81,#23,#27,#2a,#2f,#c0,#83,#00
	db #c6,#27,#ff,#c7,#e1,#04,#81,#23
	db #27,#2a,#2f,#c0,#83,#00,#c6,#2a
	db #c7,#81,#23,#27,#2a,#2f,#c0,#83
	db #00,#c6,#2a,#c7,#81,#22,#25,#2a
	db #31,#c0,#83,#00,#c6,#2a,#c7,#81
	db #1e,#22,#25,#2a,#c0,#83,#00,#c6
	db #27,#ff,#c7,#e1,#03,#81,#1e,#22
	db #25,#2a,#c0,#83,#00,#c6,#25,#c7
	db #81,#1e,#22,#25,#2a,#c0,#83,#00
	db #c6,#25,#c7,#81,#1c,#20,#23,#28
	db #c0,#83,#00,#c6,#23,#c7,#81,#23
	db #27,#2a,#2f,#c0,#83,#00,#c6,#2a
	db #ff,#c7,#e1,#01,#81,#1c,#20,#23
	db #28,#c0,#83,#00,#c6,#23,#c7,#81
	db #1c,#20,#23,#28,#c0,#83,#00,#c6
	db #23,#c7,#81,#23,#27,#2a,#2f,#c0
	db #83,#00,#c6,#27,#c7,#81,#23,#27
	db #2a,#2f,#c0,#83,#00,#c6,#27,#ff
	db #c7,#e1,#01,#81,#2a,#2e,#31,#36
	db #c0,#83,#00,#c6,#31,#c7,#81,#2a
	db #2e,#31,#36,#c0,#83,#00,#c6,#2f
	db #c7,#81,#2f,#33,#36,#3b,#c0,#83
	db #00,#c6,#36,#c7,#81,#2c,#2f,#34
	db #38,#c0,#83,#00,#c6,#38,#ff,#c7
	db #e1,#01,#81,#2c,#2f,#34,#38,#c0
	db #83,#00,#c6,#34,#c7,#81,#2a,#2f
	db #33,#36,#c0,#83,#00,#c6,#31,#c7
	db #81,#2a,#2e,#31,#36,#c0,#83,#00
	db #c6,#31,#c7,#81,#2a,#2e,#31,#36
	db #c0,#83,#00,#c6,#31,#ff,#c7,#e1
	db #02,#81,#2e,#2f,#33,#36,#2e,#2f
	db #33,#36,#22,#23,#27,#2a,#22,#23
	db #27,#2a,#2e,#2f,#33,#36,#2e,#31
	db #33,#36,#2a,#2c,#2e,#31,#2c,#2f
	db #31,#36,#ff,#c7,#e1,#02,#81,#2a
	db #2f,#36,#3b,#2f,#33,#36,#3b,#2c
	db #2f,#34,#3b,#2c,#2f,#34,#3b,#2f
	db #33,#36,#3b,#2f,#33,#36,#3b,#2a
	db #2f,#36,#3b,#2a,#2f,#36,#38,#3a
	db #3d,#3c,#3b,#3a,#3a,#39,#38,#36
	db #c0,#00,#83,#00,#85,#00,#ff,#c7
	db #e1,#05,#81,#31,#33,#c6,#36,#c7
	db #33,#36,#33,#c6,#31,#c7,#2f,#31
	db #2f,#c6,#2c,#c7,#2a,#2f,#2a,#c6
	db #2f,#c7,#33,#36,#33,#c6,#34,#c7
	db #33,#31,#33,#c6,#2f,#c7,#31,#2f
	db #2c,#c6,#2a,#c7,#2c,#2f,#2a,#c5
	db #e1,#01,#2a,#c7,#2c,#ff,#a0,#c6
	db #e1,#01,#83,#23,#2a,#1e,#27,#23
	db #2a,#1e,#23,#1e,#2a,#25,#22,#23
	db #27,#1e,#20,#ff,#a0,#c6,#e1,#04
	db #83,#23,#2a,#1e,#27,#23,#2a,#1e
	db #23,#1e,#2a,#25,#28,#2a,#1e,#25
	db #1e,#ff,#a0,#c6,#e1,#01,#83,#1e
	db #2a,#25,#2e,#2a,#2e,#25,#2a,#28
	db #2c,#27,#25,#23,#27,#1e,#23,#ff
	db #a0,#c6,#e1,#03,#83,#28,#2c,#23
	db #2f,#28,#2c,#27,#25,#23,#27,#1e
	db #2a,#23,#27,#1e,#23,#ff,#a0,#c6
	db #e1,#03,#83,#1e,#2a,#25,#2e,#2a
	db #31,#25,#1e,#23,#27,#23,#2a,#28
	db #2c,#23,#28,#ff,#a0,#c6,#e1,#03
	db #83,#28,#2c,#27,#25,#23,#27,#1e
	db #25,#1e,#2a,#25,#2e,#2a,#31,#28
	db #25,#ff,#a0,#c2,#e1,#01,#83,#23
	db #c4,#81,#27,#c3,#23,#c2,#83,#1e
	db #c4,#81,#2a,#c3,#27,#c2,#83,#23
	db #c4,#81,#27,#c3,#23,#c2,#83,#1e
	db #c4,#81,#2a,#c3,#27,#c2,#83,#23
	db #c4,#81,#2a,#c3,#27,#c2,#83,#23
	db #c4,#81,#27,#c3,#23,#c2,#83,#1e
	db #c4,#81,#2a,#c3,#25,#c2,#83,#1e
	db #c4,#81,#20,#c3,#22,#ff,#a0,#c2
	db #e1,#01,#83,#23,#c4,#81,#27,#c3
	db #23,#c2,#83,#25,#81,#27,#c3,#23
	db #c2,#83,#28,#c4,#81,#2c,#c3,#28
	db #c2,#83,#23,#c4,#81,#28,#c3,#23
	db #c2,#83,#23,#c4,#81,#27,#c3,#23
	db #c2,#83,#1e,#c4,#81,#27,#c3,#1e
	db #c2,#83,#23,#c4,#81,#27,#c3,#23
	db #c2,#83,#1e,#c4,#81,#23,#c3,#20
	db #c2,#1e,#c4,#31,#30,#c3,#2f,#c2
	db #2e,#c4,#2e,#2d,#c3,#2c,#c2,#83
	db #2a,#c0,#00,#85,#00,#ff,#a0,#c6
	db #e1,#03,#83,#23,#2a,#1e,#27,#23
	db #2a,#1e,#27,#23,#2a,#1e,#27,#23
	db #2a,#1e,#20,#ff,#cf,#e1,#0d,#8b
	db #0d,#e2,#0e,#01,#06,#0c,#0f,#e1
	db #0d,#89,#12,#e2,#0e,#8b,#11,#8a
	db #18,#e1,#0d,#8b,#29,#1e,#ff,#c8
	db #e1,#0b,#82,#2c,#2c,#2c,#85,#25
	db #82,#27,#27,#86,#20,#ff,#a0,#c7
	db #e1,#07,#80,#38,#38,#38,#38,#c0
	db #85,#00,#c7,#80,#38,#38,#38,#38
	db #ff,#a0,#ca,#e1,#07,#80,#3a,#38
	db #36,#35,#33,#31,#30,#2e,#2c,#2a
	db #27,#25,#20,#19,#0d,#0d,#ff,#a1
	db #cd,#e1,#00,#87,#00,#ff,#a9,#cc
	db #e1,#00,#87,#00,#ff,#b6,#cc,#e1
	db #00,#87,#00,#ff,#a0,#ce,#e1,#06
	db #83,#55,#4e,#57,#55,#54,#52,#55
	db #4d,#4d,#cb,#88,#4d,#ff,#a0,#cf
	db #e1,#09,#80,#44,#3d,#38,#31,#2c
	db #25,#20,#19,#ff,#a0,#cc,#e1,#0a
	db #80,#19,#25,#31,#3d,#ff,#a0,#cc
	db #e1,#0a,#80,#3f,#38,#2c,#20,#ff
	db #a0,#cf,#e1,#0c,#89,#11,#e1,#0d
	db #86,#18,#e1,#0c,#89,#14,#e1,#0d
	db #1e,#e1,#0c,#12,#14,#e1,#0d,#1b
	db #ff,#a0,#c8,#e1,#0a,#82,#20,#20
	db #20,#85,#1b,#82,#1b,#1b,#86,#15
	db #ff,#a1,#cb,#e1,#00,#84,#00,#a0
	db #d0,#85,#1d,#84,#29,#82,#24,#cc
	db #e1,#05,#85,#1d,#84,#18,#d1,#e1
	db #07,#82,#3a,#cc,#e1,#06,#1b,#ce
	db #50,#a1,#cb,#e1,#00,#84,#00,#a0
	db #cc,#e1,#06,#85,#1d,#ff,#c0,#84
	db #00,#ff,#a0,#c7,#e1,#09,#83,#20
	db #a6,#c8,#e1,#07,#81,#2c,#a0,#c7
	db #e1,#09,#1d,#83,#1b,#a5,#c8,#e1
	db #07,#81,#2c,#a0,#c7,#e1,#09,#83
	db #20,#a5,#c8,#e1,#07,#81,#2c,#a0
	db #e1,#0c,#38,#c9,#e1,#0a,#83,#49
	db #ff,#a1,#cb,#e1,#0c,#84,#20,#cc
	db #e1,#08,#44,#ff,#a1,#cd,#e1,#00
	db #80,#00,#ce,#00,#cd,#00,#00,#cc
	db #00,#cd,#00,#a0,#cc,#e1,#06,#81
	db #44,#50,#44,#50,#ff,#a0,#c9,#e1
	db #09,#82,#36,#36,#36,#e1,#0c,#36
	db #e1,#09,#36,#36,#34,#34,#cf,#e1
	db #06,#86,#31,#a1,#cd,#e1,#00,#82
	db #00,#a5,#cc,#e1,#07,#38,#a1,#cd
	db #e1,#00,#00,#a6,#cc,#e1,#07,#38
	db #a0,#e2,#0e,#37,#37,#37,#37,#e1
	db #0d,#84,#3e,#a1,#cd,#e1,#00,#82
	db #00,#a5,#cc,#e1,#07,#38,#a0,#e1
	db #0d,#3c,#a1,#cd,#e1,#00,#00,#a6
	db #cc,#e1,#07,#38,#a0,#c9,#e2,#0e
	db #41,#cc,#e1,#0d,#84,#3a,#ff,#a0
	db #cc,#e1,#0c,#82,#1c,#1e,#20,#1c
	db #1e,#c0,#00,#cc,#1e,#20,#21,#c0
	db #00,#cc,#23,#c0,#00,#cc,#20,#c0
	db #00,#cc,#1c,#c0,#00,#cc,#1c,#1e
	db #20,#1c,#1e,#c0,#00,#cc,#1e,#20
	db #21,#c0,#00,#cc,#23,#c0,#00,#cc
	db #1c,#ff,#a0,#ce,#e1,#08,#81,#5e
	db #5c,#5a,#59,#57,#55,#54,#52,#50
	db #4e,#4b,#49,#48,#46,#44,#42,#41
	db #3f,#3d,#3c,#3a,#38,#ff,#a0,#d0
	db #e1,#0b,#82,#1b,#1b,#1f,#22,#25
	db #25,#24,#22,#1b,#a5,#c0,#e1,#07
	db #00,#d0,#2c,#a1,#cd,#e1,#00,#00
	db #a5,#d0,#e1,#07,#2c,#a0,#cc,#e1
	db #0b,#5c,#a6,#d0,#e1,#07,#2c,#2c
	db #a0,#e1,#06,#20,#20,#24,#27,#2a
	db #2a,#29,#27,#20,#e1,#0a,#38,#a6
	db #e1,#07,#2c,#a0,#e1,#0a,#32,#a6
	db #e1,#07,#2c,#a0,#e1,#0a,#38,#e1
	db #0b,#47,#43,#ff,#a1,#c9,#e1,#06
	db #85,#44,#3d,#b1,#cb,#e1,#00,#89
	db #00,#ff,#a0,#c6,#e1,#08,#83,#25
	db #25,#19,#25,#19,#e1,#0c,#27,#27
	db #ff
	
.lb9fa
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
;
;org #0093
;call #9534	; init music
;call #9c4a	; init interrupt
;xor a
;ld (#b9ef),a
;ld b,#0a
;.l009f
;ld hl,#0000
;.l00a2
;dec hl
;ld a,h
;or l
;jr nz,l00a2
;djnz l009f
;.l00a9
;ld a,(#b9ef)
;or a
;jr z,l00a9
;call #9c61		; stop interrupt
;ld a,#07		; stop music
;ld c,#3f
;call #b9fa
;ld a,#08
;ld c,#00
;call #b9fa
;ld a,#09
;ld c,#00
;call #b9fa
;ld a,#0a
;ld c,#00
;call #b9fa
;
.music_info
	db "Renaud (1987)(Infogrames)()",0
	db "Music Pro",0

	read "music_end.asm"
