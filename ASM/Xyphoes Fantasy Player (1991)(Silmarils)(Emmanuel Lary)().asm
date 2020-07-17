; Music of Xyphoes Fantasy Player (1991)(Silmarils)(Emmanuel Lary)()
; Ripped by Megachur the 03/06/2007
; $VER 1.5

; IFDEF FILENAME_WRITE
;	write "XYPHOESF.PLY"
; ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #62c0
FIRST_THEME				equ 0
LAST_THEME				equ 5

	read "music_header.asm"

	jp l62ee	; init music
	jp l6304	; sound fx ?
	jp l6350	; play music
;
.stop_music
;
	ld de,#0d00
.l62cc
	call l62d6
	dec d
	jp p,l62cc
	ld de,#073f
.l62d6
	xor a
	ld b,#f4
	out (c),d
	ld bc,#f6c0
	out (c),c
	out (c),a
	ld b,#f4
	out (c),e
	ld bc,#f680
	out (c),c
	out (c),a
	ret
;
.init_music
.l62ee
;
	ld hl,music_theme_list	; added by Megachur
	cp #06
	ret nc
	add a,a		
	ld b,&0
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a			; added by Megachur
	push hl
	call l6334
	pop hl
	ld (l67ac),hl
	ld de,#0004
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l67a0),de
	jp l6358
.l6304
	db #00
	or a
	ret m
	ld ix,(l67ac)
	ld h,#00
	ld l,a
	ld d,(ix+#0e)
	ld e,(ix+#0f)
	add hl,de
	ld d,(ix+#00)
	db #dd
	ld e,(hl)
	ld bc,#19dd
	add hl,hl
	ex de,hl
	add ix,de
	ld e,(ix+#00)
	ld d,(ix+#01)
	ld (l6798),de
	ld a,#01
	ld (l679c),a
	ld (l67a3),a
	ret
.l6334
	xor a
	ld hl,l676e
	ld de,l676f
	ld bc,#002f
	ld (hl),a
	ldir
	ld hl,l679e
	ld de,l679f
	ld bc,#000d
	ld (hl),a
	ldir
	ld (hl),#38
	ret
;
.play_music
.l6350
;
	db #00
	ld hl,l679f
	dec (hl)
	jp nz,l6462
.l6358
	db #00
	ld ix,(l67ac)
	ld a,(l676f)
	sub (ix+#09)
	jr nz,l6385
	ld a,(l67a0)
	sub (ix+#07)
	jr nz,l6375
	ld a,(ix+#05)
	ld (l67a0),a
	jr l6379
.l6375
	ld hl,l67a0
	inc (hl)
.l6379
	ld hl,#0000
	ld (l676e),hl
	ld (l677e),hl
	ld (l678e),hl
.l6385
	ld d,(ix+#02)
	ld e,(ix+#03)
	add ix,de
	ld h,#00
	ld a,(l67a0)
	ld l,a
	add hl,hl
	add hl,hl
	ld d,h
	ld e,l
	add hl,hl
	add hl,de
	ex de,hl
	add ix,de
	ld a,(l67a3)
	or a
	jr z,l63ab
	ld hl,l678f
	inc (hl)
	inc (hl)
	ld a,#01
	jr l63ad
.l63ab
	ld a,#02
.l63ad
	push ix
	pop hl
	ld ix,l676e
.l63b4
	push af
	ld a,(hl)
	inc hl
	ld (ix+#03),a
	ld a,(hl)
	inc hl
	ld (ix+#02),a
	ld a,(hl)
	inc hl
	ld (ix+#0f),a
	inc hl
	push hl
	ld iy,(l67ac)
	ld c,(iy+#09)
	ld b,(ix+#03)
	call l675c
	ld b,(iy+#0c)
	ld c,(iy+#0d)
	add iy,de
	add iy,bc
	push iy
	pop hl
	ld d,(ix+#00)
	ld e,(ix+#01)
	add hl,de
	ld (ix+#04),l
	ld (ix+#05),h
	ld a,(hl)
	inc hl
	ld (l642b),a
	ld a,(hl)
	or a
	jr z,l63f9
	add (ix+#0f)
.l63f9
	ld (ix+#09),a
	or a
	jr nz,l6405
	ld a,(ix+#0e)
	or a
	jr nz,l642a
.l6405
	ld iy,(l67ac)
	ld d,(iy+#00)
	ld e,(iy+#01)
	add iy,de
	ld l,(ix+#09)
	ld h,#00
	add hl,hl
	ex de,hl
	add iy,de
	ld a,(iy+#00)
	ld (ix+#0a),a
	ld a,(iy+#01)
	ld (ix+#0b),a
	ld (ix+#0e),#01
.l642b equ $ + 1
.l642a
	ld a,#00
	or a
	jr z,l6446
	add (ix+#02)
	ld (ix+#08),a
	ld l,a
	ld h,#00
	ld de,l67ae
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld (ix+#0d),a
	ld a,(hl)
	ld (ix+#0c),a
.l6446
	inc (ix+#01)
	inc (ix+#01)
	ld de,#0010
	add ix,de
	pop hl
	pop af
	dec a
	jp p,l63b4
	ld ix,(l67ac)
	ld a,(ix+#0b)
	ld (l679f),a
	ret
.l6462
	ld ix,l676e
	ld a,(ix+#0e)
	or a
	jr z,l6470
	xor a
	call l649c
.l6470
	ld ix,l677e
	ld a,(ix+#0e)
	or a
	jr z,l647f
	ld a,#01
	call l649c
.l647f
	ld ix,l678e
	ld a,(ix+#0e)
	or a
	jr z,l648e
	ld a,#02
	call l649c
.l648e
	ld hl,l67ab
	ld d,#07
.l6493
	ld e,(hl)
	call l62d6
	dec hl
	dec d
	ret m
	jr l6493
.l649c
	ld (l679e),a
	ld iy,(l67ac)
	ld d,(iy+#00)
	ld e,(iy+#01)
	add iy,de
	ld d,(ix+#0a)
	ld e,(ix+#0b)
	add iy,de
.l64b3
	ld a,(iy+#00)
	cp #ff
	jp z,l6719
	cp #f0
	jr nz,l64e0
	ld a,(l679e)
	add #08
	ld d,a
	ld e,(iy+#01)
	call l62d6
	ld h,(ix+#0a)
	ld l,(ix+#0b)
	inc hl
	inc hl
	ld (ix+#0a),h
	ld (ix+#0b),l
	inc iy
	inc iy
	jp l64b3
.l64e0
	cp #f1
	jr nz,l6518
	ld h,#00
	ld a,(l679e)
	ld l,a
	ld de,l6759
	add hl,de
	ld a,(hl)
	ld hl,l67ab
	or (hl)
	ld (hl),a
	ld a,(l679e)
	add #08
	ld d,a
	ld e,#10
	call l62d6
	ld d,#0b
	ld e,(iy+#01)
	srl e
	call l62d6
	ld de,#0c00
	call l62d6
	ld de,#0d0e
	call l62d6
	jp l6732
.l6518
	cp #f2
	jr nz,l653d
	ld a,(iy+#01)
	srl a
	ld (l67aa),a
	ld h,#00
	ld a,(l679e)
	ld l,a
	ld de,l6759
	add hl,de
	ld a,(hl)
	ld e,a
	cpl
	rlca
	rlca
	rlca
	ld hl,l67ab
	and (hl)
	or e
	ld (hl),a
	jp l6732
.l653d
	cp #f3
	jr nz,l6556
	ld d,#00
	ld e,(iy+#01)
	ld h,(ix+#0c)
	ld l,(ix+#0d)
	add hl,de
	ld (ix+#0c),h
	ld (ix+#0d),l
	jp l6732
.l6556
	cp #f4
	jr nz,l6571
	ld d,#00
	ld e,(iy+#01)
	ld h,(ix+#0c)
	ld l,(ix+#0d)
	or a
	sbc hl,de
	ld (ix+#0c),h
	ld (ix+#0d),l
	jp l6732
.l6571
	cp #f5
	jr nz,l658f
	ld a,(ix+#08)
	add (iy+#01)
	ld h,#00
	ld l,a
	ld de,l67ae
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld (ix+#0d),a
	ld a,(hl)
	ld (ix+#0c),a
	jp l6732
.l658f
	cp #f6
	jr nz,l65a8
	ld h,(ix+#0a)
	ld l,(ix+#0b)
	ld d,#00
	ld e,(iy+#01)
	or a
	sbc hl,de
	ld (ix+#0a),h
	ld (ix+#0b),l
	ret
.l65a8
	cp #f7
	jr nz,l65b3
	xor a
	ld (l67a3),a
	jp l6719
.l65b3
	cp #f8
	jr nz,l65c5
	ld hl,(l67ac)
	ld de,#000b
	add hl,de
	ld a,(iy+#01)
	ld (hl),a
	jp l6732
.l65c5
	cp #f9
	jr nz,l6605
	ld a,(l679e)
	add #08
	ld d,a
	ld e,#10
	call l62d6
	ld l,(iy+#01)
	ld h,(iy+#02)
	srl h
	rr l
	ld d,#0b
	ld e,l
	call l62d6
	ld d,#0c
	ld e,h
	call l62d6
	ld d,#0d
	ld e,(iy+#03)
	call l62d6
	ld h,(ix+#0a)
	ld l,(ix+#0b)
	ld de,#0004
	add hl,de
	ld (ix+#0a),h
	ld (ix+#0b),l
	jp l6740
.l6605
	cp #fa
	jr nz,l6629
	ld de,#0b00
	call l62d6
	ld de,#0c00
	call l62d6
	ld de,#0d00
	call l62d6
	inc iy
	inc (ix+#0b)
	jp nc,l64b3
	inc (ix+#0a)
	jp l64b3
.l6629
	cp #fc
	jr nz,l664b
	ld h,#00
	ld a,(l679e)
	ld l,a
	ld de,l6759
	add hl,de
	ld a,(hl)
	cpl
	rlca
	rlca
	rlca
	ld hl,l67ab
	and (hl)
	ld (hl),a
	dec hl
	ld a,(iy+#01)
	srl a
	ld (hl),a
	jp l6732
.l664b
	cp #fd
	jr nz,l6696
	ld h,#00
	ld a,(l679e)
	ld l,a
	ld de,l6759
	add hl,de
	ld a,(hl)
	ld hl,l67ab
	or (hl)
	ld (hl),a
	ld a,(ix+#08)
	add #30
	ld l,a
	ld h,#00
	ld de,l67ae
	add hl,hl
	add hl,de
	ld l,(hl)
	ld h,#00
	ld (l67a1),hl
	srl l
	ld e,l
	ld d,#0b
	call l62d6
	ld de,#0c00
	call l62d6
	ld d,#0d
	ld e,(iy+#01)
	call l62d6
	ld a,(l679e)
	add #08
	ld d,a
	ld e,#10
	call l62d6
	jp l6732
.l6696
	cp #fe
	jr nz,l66bc
	ld a,(iy+#01)
	or a
	jp m,l66a6
	add (ix+#08)
	jr l66a8
.l66a6
	sub #80
.l66a8
	ld h,#00
	ld l,a
	ld de,l67ae
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld (ix+#0d),a
	ld a,(hl)
	ld (ix+#0c),a
	jp l6732
.l66bc
	or a
	jr nz,l66cb
	inc (ix+#0b)
	jp nc,l6740
	inc (ix+#0a)
	jp l6740
.l66cb
	cp #01
	jr nz,l66f6
	ld h,#00
	ld a,(l679e)
	ld l,a
	ld de,l6759
	add hl,de
	ld a,(hl)
	ld e,a
	cpl
	rlc e
	rlc e
	rlc e
	ld hl,l67ab
	and (hl)
	or e
	ld (hl),a
	inc iy
	inc (ix+#0b)
	jp nc,l64b3
	inc (ix+#0a)
	jp l64b3
.l66f6
	cp #03
	jr nz,l6719
	ld hl,(l67a1)
	ld e,(iy+#01)
	ld d,#00
	xor a
	or e
	jp p,l6708
	dec d
.l6708
	add hl,de
	ld (l67a1),hl
	srl h
	rr l
	ld d,#0b
	ld e,l
	call l62d6
	jp l6732
.l6719
	xor a
	ld (ix+#0e),a
	ld h,#00
	ld a,(l679e)
	ld l,a
	ld de,l6759
	add hl,de
	ld a,(hl)
	rlca
	rlca
	rlca
	ld hl,l67ab
	or (hl)
	ld (hl),a
	jr l6740
.l6732
	ld h,(ix+#0a)
	ld l,(ix+#0b)
	inc hl
	inc hl
	ld (ix+#0a),h
	ld (ix+#0b),l
.l6740
	ld h,#00
	ld a,(l679e)
	ld l,a
	ld de,l67a4
	add hl,hl
	add hl,de
	ld d,(ix+#0c)
	ld e,(ix+#0d)
	srl d
	rr e
	ld (hl),e
	inc hl
	ld (hl),d
	ret
.l6759
	ld bc,#0402
.l675c
	xor a
	ld l,c
	ld h,a
	ld e,a
	ld d,a
	ld a,b
	ld b,#08
.l6764
	rrca
	jr nc,l676a
	ex de,hl
	add hl,de
	ex de,hl
.l676a
	add hl,hl
	djnz l6764
	ret
.l676f equ $ + 1
.l676e
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
.l677e
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
.l678f equ $ + 1
.l678e
	dw #0000,#0000,#0000,#0000
.l679c equ $ + 6
.l6798 equ $ + 2
	dw #0000,#0000,#0000,#0000
.l67a4 equ $ + 6
.l67a3 equ $ + 5
.l67a1 equ $ + 3
.l67a0 equ $ + 2
.l679f equ $ + 1
.l679e
	dw #0000,#0000,#0000,#0000
.l67ac equ $ + 6
.l67ab equ $ + 5
.l67aa equ $ + 4
	dw #0000,#0000,#3800,#0000
.l67ae
	dw #0eee,#0e17,#0d4d,#0c8e
	dw #0bd9,#0b2f,#0a8e,#09f7
	dw #0967,#08e0,#0861,#07e8
	dw #0777,#070b,#06a6,#0647
	dw #05ec,#0597,#0547,#04fb
	dw #04b3,#0470,#0430,#03f4
	dw #03bb,#0385,#0353,#0323
	dw #02f6,#02cb,#02a3,#027d
	dw #0259,#0238,#0218,#01fa
	dw #01dd,#01c2,#01a9,#0191
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010c,#00fd
	dw #00ee,#00e1,#00d4,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0086,#007e
	dw #0077,#0070,#006a,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0043,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
music_theme_list	; added by Megachur
        dw lXyphoes_Fantasy_Menu
        dw lXyphoes_Fantasy_Level_1
        dw lXyphoes_Fantasy_Level_2
        dw lXyphoes_Fantasy_Level_2bis
        dw lXyphoes_Fantasy_Level_3
        dw lXyphoes_Fantasy_Level_4
;
; #683e
; db "(c) LARY"
