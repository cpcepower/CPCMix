; Music of Passagers Du Vent Music Player (1986)(Infogrames)(Charles Callet)(Music Pro)
; Ripped by Megachur the 11/11/2006
; $VER 1.5

	IFDEF FILENAME_WRITE
;	write "PASSAGDV.BIN"
	ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #9000

	read "music_header.asm"
;
.init_music		; 9000
;
	call lbca7
	ld hl,l94e6
	ld (hl),#00
	ld de,l94e7
	ld bc,#0128
	ldir
	ld a,(l974a)
	ld (l960f),a
	ld bc,l9749
	ld hl,(l974b)
	add hl,bc
	ld (l9612),hl
	ld hl,(l974d)
	add hl,bc
	ld (l9614),hl
	ld hl,(l974f)
	add hl,bc
	ld (l94eb),hl
	ld hl,(l9751)
	add hl,bc
	ld (l9526),hl
	ld hl,(l9753)
	add hl,bc
	ld (l9561),hl
	ld hl,l9755
	ld (l9610),hl
	ld a,#0f
	ld (l9617),a
	ld hl,l94e0
	ld de,l94e6
	ld bc,#0005
	ldir
	ld hl,l94e0
	ld de,l9521
	ld bc,#0005
	ldir
	ld hl,l94e0
	ld de,l955c
	ld bc,#0005
	ldir
	ld c,#38
	ld a,#07
	call lbd34
	ld a,#ff
	ld (l9618),a
	ei
	ret
;
.play_music
.l9076
;
	ld a,(l9618)
	or a
	ret z
	xor a
	ld (l9618),a
	ld a,(l9617)
	ld e,a
	ld b,#03
	ld hl,l957b
.l9088
	ld a,(hl)
	and a
	jr nc,l908d
	xor a
.l908d
	cp e
	jr c,l9091
	ld a,e
.l9091
	ld c,a
	ld a,b
	add #07
	push af
	push bc
	push de
	call lbd34
	ld de,#003b
	and a
	sbc hl,de
	pop de
	pop bc
	pop af
	djnz l9088
	ld hl,l960f
	dec (hl)
	ld ix,l94e6
	xor a
.l90af
	ld (l9616),a
	ld a,(ix+#07)
	or a
	jp nz,l9334
.l90b9
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l90c3
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jr nz,l9107
	ld l,(ix+#01)
	ld h,(ix+#02)
.l90d4
	ld a,(hl)
	cp #ff
	jr nz,l90e8
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	jp l90d4
.l90e8
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l9610)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l9749
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l90c3
.l9107
	bit 7,a
	jr nz,l9171
	ld hl,l961f
	or a
	jr z,l9114
	add (ix+#20)
.l9114
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
	ld a,(l9616)
	inc a
	ld hl,l9583
	ld bc,#0014
.l9146
	add hl,bc
	dec a
	jr nz,l9146
	ldir
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l9616)
	inc a
	ld hl,l95bf
	ld bc,#0014
.l915e
	add hl,bc
	dec a
	jr nz,l915e
	ldir
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l9320
.l9171
	bit 6,a
	jr nz,l91bd
	bit 5,a
	jp z,l91aa
	push af
	ld a,#00
	ld (l9619),a
	pop af
.l9181
	and #1f
	ld b,a
	jr z,l9192
	ld c,#18
	ld a,#07
	push af
	push bc
	call lbd34
	jp l919b
.l9192
	ld c,#38
	ld a,#07
	push af
	push bc
	call lbd34
.l919b
	pop bc
	pop af
	ld c,b
	ld a,#06
	push af
	push bc
	call lbd34
	pop bc
	pop af
	jp l9320
.l91aa
	and #1f
	ld hl,l96df
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l9320
.l91bd
	bit 5,a
	jr nz,l922b
	and #1f
	add a
	add a
	add a
	ld hl,(l9612)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),#00
.l91d9
	ld a,(de)
	bit 7,a
	jr nz,l91eb
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l9203
.l91eb
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
	jr nz,l91fd
	ld b,#01
.l91fd
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l9203
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jr nz,l91d9
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l9583
	ld a,(l9616)
	inc a
.l9221
	add hl,bc
	dec a
	jr nz,l9221
	ex de,hl
	ldir
	jp l9320
.l922b
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l9242
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
.l9242
	dw l924a,l92a2,l929e,l9252
.l924a
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l9320
.l9252
	pop hl
	ld a,(hl)
	ld (l9619),a
	and #3f
	ld (l961b),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l961c),a
	ld a,(l9619)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l9619),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l9619
	or (hl)
	ld (l9619),a
	ld (l961a),a
	ld a,(l961b)
	ld (l961e),a
	ld hl,l961c
	ld b,#ff
	cp (hl)
	jr nc,l9294
	ld b,#01
.l9294
	ld a,b
	ld (l961d),a
	ld a,(l961e)
	jp l9181
.l929e
	ld a,#02
	jr l92a4
.l92a2
	ld a,#01
.l92a4
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jr z,l9315
	add a
	add a
	add a
	ld hl,(l9614)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l92c2
	ld a,(de)
	bit 7,a
	jr nz,l92d6
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
	jp l92ee
.l92d6
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
	jr nz,l92e8
	ld b,#ff
.l92e8
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l92ee
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jr nz,l92c2
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l95bf
	ld a,(l9616)
	inc a
.l930c
	add hl,bc
	dec a
	jr nz,l930c
	ex de,hl
	ldir
	jr l931a
.l9315
	ld a,#00
	ld (ix+#09),a
.l931a
	ld a,(ix+#09)
	ld (ix+#3a),a
.l9320
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l90b9
.l9334
	ld a,(l960f)
	or a
	jr nz,l933d
	dec (ix+#07)
.l933d
	ld a,(ix+#0a)
	cp #04
	jp z,l9387
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
	jr nz,l936a
	dec (hl)
	jr nz,l935d
	inc (ix+#0a)
.l935d
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l9387
.l936a
	dec (hl)
	jr nz,l937f
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
	jp l9381
.l937f
	inc hl
	inc hl
.l9381
	dec (hl)
	jr nz,l9387
	inc (ix+#0a)
.l9387
	ld a,(ix+#09)
	or a
	jp z,l9424
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
	jr nz,l93c5
	dec (hl)
	jr nz,l93a9
	inc (ix+#21)
.l93a9
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jr nz,l93b5
	ld b,#00
.l93b5
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l93f3
.l93c5
	dec (hl)
	jr nz,l93eb
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
	jr nz,l93d9
	ld b,#00
.l93d9
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l93ed
.l93eb
	inc hl
	inc hl
.l93ed
	dec (hl)
	jr nz,l93f3
	inc (ix+#21)
.l93f3
	ld a,(ix+#21)
	cp #04
	jr nz,l9424
	ld a,(ix+#09)
	cp #02
	jr nz,l9408
	ld a,#00
	ld (ix+#09),a
	jr l9424
.l9408
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l9616)
	inc a
	ld hl,l95bf
	ld bc,#0014
.l941e
	add hl,bc
	dec a
	jr nz,l941e
	ldir
.l9424
	ld c,(ix+#36)
	ld a,(l9616)
	add a
	push af
	call lbd34
	pop af
	ld c,(ix+#37)
	inc a
	call lbd34
	ld bc,#003b
	add ix,bc
	ld a,(l9616)
	inc a
	cp #03
	jp nz,l90af
	ld a,(l9619)
	or a
	jr z,l947c
	dec a
	ld (l9619),a
	or a
	jr nz,l947c
	ld a,(l961a)
	ld (l9619),a
	ld a,(l961e)
	ld hl,l961d
	add (hl)
	ld (l961e),a
	ld c,a
	ld hl,l961b
	cp (hl)
	jr z,l946f
	ld hl,l961c
	cp (hl)
	jr nz,l9477
.l946f
	ld a,(l961d)
	xor #fe
	ld (l961d),a
.l9477
	ld a,#06
	call lbd34
.l947c
	ld a,(l960f)
	or a
	jr nz,l9488
	ld a,(l974a)
	ld (l960f),a
.l9488
	call l96fc
	ld a,#ff
	ld (l9618),a
	ei
	ret
; set interrupt
	di
	ld hl,#0038
	ld de,l94d9
	ld bc,#0004
	ldir
	ld hl,#0039
	ld de,l94b7
	ld (hl),e
	inc hl
	ld (hl),d
	ei
	ret
; restore interrupt
	di
	ld hl,l94d9
	ld de,#0038
	ld bc,#0004
	ldir
	ei
	ret
;
; play_routine
;
.l94b7
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld a,(l94df)
	cp #06
	jr nz,l94ca
	call l9076
	xor a
.l94ca
	inc a
	ld (l94df),a
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ei
	reti
.l94d9
	db #00,#00,#00,#00,#00,#c9
.l94df
	db #00
.l94e0
	db #00
	dw l94e5
	dw l94e5
.l94e5
	db #ff
.l94e6
	db #00
.l94e7
	db #00,#00
	db #00,#00
.l94eb
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l9521
	db #00,#00,#00,#00,#00
.l9526
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l955c
	db #00,#00,#00,#00,#00
.l9561
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l957b
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9583
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l95bf
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l9610 equ $ + 7
.l960f equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.music_end equ $ + 7
.l9618 equ $ + 7
.l9617 equ $ + 6
.l9616 equ $ + 5
.l9614 equ $ + 3
.l9612 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l961e equ $ + 5
.l961d equ $ + 4
.l961c equ $ + 3
.l961b equ $ + 2
.l961a equ $ + 1
.l9619
	db #00,#00,#00,#00,#00,#00
.l961f
	dw #0000,#0c9c,#0be7,#0b3c
	dw #0a9b,#0a02,#0973,#08eb
	dw #086b,#07f2,#0780,#0714
	dw #06ae,#064e,#05f4,#059e
	dw #054d,#0501,#0469,#0475
	dw #0435,#03f9,#03c0,#038a
	dw #0357,#0327,#02fa,#02cf
	dw #02a7,#0281,#025d,#023b
	dw #021b,#01fc,#01e0,#01c5
	dw #01ac,#0194,#017d,#0168
	dw #0153,#0140,#012e,#011d
	dw #010d,#00fe,#00f0,#00e2
	dw #00d6,#00ca,#00be,#00b4
	dw #00aa,#00a0,#0097,#008f
	dw #0087,#007f,#0078,#0071
	dw #006b,#0065,#005f,#005a
	dw #0055,#0050,#004c,#0047
	dw #0043,#0040,#003c,#0039
	dw #0035,#0032,#0030,#002d
	dw #002a,#0028,#0026,#0024
	dw #0022,#0020,#001e,#001c
	dw #001b,#0019,#0018,#0016
	dw #0015,#0014,#0013,#0012
	dw #0011,#0010,#000f,#000e
.l96df
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
.l96eb
	db #00
.l96ec
	db #48,#04,#47,#10,#47,#40,#45,#80
	db #40,#02,#41,#01,#40,#04,#40,#01
.l96fc
	ld bc,#f40e
	out (c),c
	ld b,#f6
	in a,(c)
	and #30
	ld c,a
	or #c0
	out (c),a
	out (c),c
	inc b
	ld a,#92
	out (c),a
	push bc
	ld de,#0800
	ld hl,l96ec
.l971a
	ld a,(hl)
	inc hl
	ld b,#f6
	out (c),a
	ld b,#f4
	in a,(c)
	cpl
	and (hl)
	jr z,l9729
	scf
.l9729
	rl e
	inc hl
	dec d
	jr nz,l971a
	ld b,#f6
	ld a,#49
	out (c),a
	ld b,#f4
	in a,(c)
	cpl
	and #1f
	or e
	ld (l96eb),a
	pop bc
	ld a,#82
	out (c),a
	dec b
	out (c),c
	ret
;
;-------------------------------------------------------------------------------
.lbd34
;-------------------------------------------------------------------------------
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
	ei
	ret
;-------------------------------------------------------------------------------
.lbca7
;-------------------------------------------------------------------------------
	ld hl,normal_psg_value+10
	ld d,10
.send_data_to_psg
	ld c,(hl)
	dec hl
	di
	ld b,#f4
	out (c),d
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
	ei
	dec d
	jp p,send_data_to_psg
	ret
;-------------------------------------------------------------------------------
normal_psg_value
	db 0,0,0,0,0,0,0,&3f,0,0,0
;
; music data to load!
;
;.l9749
;	db #00
;.l974a
;	db #00
;.l974b
;	db #00,#00
;.l974d
;	db #00,#00
;.l974f
;	db #00,#00
;.l9751
;	db #00,#00
;.l9753
;	db #00,#00
;.l9755
;	db #00

;	read "music_end_v1_0.asm"
