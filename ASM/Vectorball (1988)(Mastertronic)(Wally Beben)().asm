; Music of Vectorball (1988)(Mastertronic)(Wally Beben)()
; Ripped by Megachur the 15/08/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "VECTORBA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #53e0
FIRST_THEME				equ 1
LAST_THEME				equ 1

	read "music_header.asm"

;
.play_music
;
	ld a,(l53e8)
	or a
	ret nz
	jp l545d
.l53e8
	db #00
;
.init_music
;
	di
	or a
	jp z,l5452
	dec a		; a = 1 -> 0
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,l5ba7
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l59a9),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l596a),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l5973),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l597c),de
	ld hl,l5984
	ld (l5968),hl
	ld (l5971),hl
	ld (l597a),hl
	ld (l596c),hl
	ld (l5975),hl
	ld (l597e),hl
	ld a,#08
	dec a
	ld (l5966),a
	xor a
	ld (l53e8),a
	ld a,#3f
	ld (l5994),a
	ld a,#01
	ld (l596f),a
	ld (l5978),a
	ld (l5981),a
	ld (l59ac),a
	ld (l59ad),a
	ld (l59ae),a
	ei
	ret
;
.stop_music
.l5452
;
	ld a,#01
	ld (l53e8),a
	ld de,#073f
	jp l5820
.l545d
	ld hl,l5963
	inc (hl)
	ld a,(hl)
	and #1f
	ld (hl),a
	inc hl
	inc (hl)
	ld a,(hl)
	and #1f
	ld (hl),a
	inc hl
	inc (hl)
	ld a,(hl)
	and #1f
	ld (hl),a
	ld a,(l5966)
	inc a
	and #1f
	ld (l5966),a
	and #07
	jr nz,l5482
	xor a
	ld (l59a2),a
.l5482
	call l54a0
	xor a
	call l5850
	ld a,#01
	call l5850
	ld a,#02
	call l5850
	call l57f3
	call l56c2
	ld e,#00
	ld b,#06
	jp l5841
.l54a0
	ld c,#01
	ld a,(l596f)
	dec a
	ld (l596f),a
	jr nz,l54dd
	ld a,(l5970)
	ld (l596f),a
	ld a,(l59ac)
	dec a
	ld (l59ac),a
	jr nz,l54dd
	ld a,(l56bf)
	and #01
	jr nz,l54c4
	ld (l569b),a
.l54c4
	ld a,(l59ab)
	ld (l59ac),a
	ld ix,l5968
	xor a
	ld (l5963),a
	ld a,#08
	call l555e
	ld (l5986),a
	call l5719
.l54dd
	ld c,#02
	ld a,(l5978)
	dec a
	ld (l5978),a
	jr nz,l551a
	ld a,(l5979)
	ld (l5978),a
	ld a,(l59ad)
	dec a
	ld (l59ad),a
	jr nz,l551a
	ld a,(l56c0)
	and #01
	jr nz,l5501
	ld (l56a3),a
.l5501
	ld a,(l59ab)
	ld (l59ad),a
	ld ix,l5971
	xor a
	ld (l5964),a
	ld a,#10
	call l555e
	ld (l5987),a
	call l5719
.l551a
	ld c,#03
	ld a,(l5981)
	dec a
	ld (l5981),a
	jr nz,l5557
	ld a,(l5982)
	ld (l5981),a
	ld a,(l59ae)
	dec a
	ld (l59ae),a
	jr nz,l5557
	ld a,(l56c1)
	and #01
	jr nz,l553e
	ld (l56ab),a
.l553e
	ld a,(l59ab)
	ld (l59ae),a
	ld ix,l597a
	xor a
	ld (l5965),a
	ld a,#20
	call l555e
	ld (l5988),a
	call l5719
.l5557
	ld e,#00
	ld b,#0b
	jp l5841
.l555e
	ld hl,l5994
	or (hl)
	ld (hl),a
	xor a
	ld (l5585),a
	ld e,(ix+#04)
	ld d,(ix+#05)
.l556d
	ld a,(de)
	cp #60
	jp c,l55e2
	cp #ff
	jp z,l5605
	cp #fd
	jr nz,l5586
	inc de
	ld a,#01
	ld (l5585),a
	ld a,(de)
	jr l55e2
.l5585
	nop
.l5586
	cp #fc
	jr nz,l5595
	inc de
	ld a,(de)
	inc de
	push de
	ld b,a
	call l5797
	pop de
	jr l556d
.l5595
	cp #f7
	jr nz,l55aa
	inc de
	ld a,(de)
	inc de
	ld (l59ab),a
	ld (l59ac),a
	ld (l59ad),a
	ld (l59ae),a
	jr l556d
.l55aa
	cp #fb
	jr nz,l55b9
	inc de
	ld a,(de)
	ld (ix+#07),a
	ld (ix+#08),a
	inc de
	jr l556d
.l55b9
	cp #fa
	jr nz,l55c5
	inc de
	ld a,(de)
	inc de
	call l564a
	jr l556d
.l55c5
	cp #f6
	jr nz,l55d9
	inc de
	ld a,(de)
	ld b,a
	inc de
	ld a,(de)
	inc de
	push de
	call l5661
	ld a,#ff
	ld (de),a
	pop de
	jr l556d
.l55d9
	cp #f8
	jr nz,l55e2
	pop hl
	pop hl
	jp l5452
.l55e2
	inc de
	ld (ix+#04),e
	ld (ix+#05),d
	ld d,#00
	ld b,a
	add (ix+#06)
	ld b,a
	add a
	ld e,a
	ld hl,l5889
	ld a,(l5585)
	or a
	jr z,l55fe
	ld hl,l5947
.l55fe
	add hl,de
	ld d,(hl)
	inc hl
	ld e,(hl)
	ex de,hl
	ld a,b
	ret
.l5605
	ld l,(ix+#00)
	ld h,(ix+#01)
.l560b
	ld a,(hl)
	inc hl
	cp #fe
	jr nz,l5618
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	jr l560b
.l5618
	cp #f9
	jr nz,l5623
	ld a,(hl)
	inc hl
	call l564a
	jr l560b
.l5623
	cp #ff
	jr nz,l562f
	ld l,(ix+#02)
	ld h,(ix+#03)
	jr l560b
.l562f
	ld (ix+#00),l
	ld (ix+#01),h
	add a
	ld e,a
	ld d,#00
	ld hl,(l59a9)
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#04),e
	ld (ix+#05),d
	jp l556d
.l564a
	push hl
	push de
	ld hl,l599f
	push af
	and #03
	ld e,a
	ld d,#00
	add hl,de
	pop af
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (hl),a
	pop de
	pop hl
	ret
.l5661
	push af
	rrca
	and #03
	ld hl,l56bf
	ld e,a
	ld d,#00
	add hl,de
	pop af
	push de
	ld (hl),a
	ex de,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,l569b
	add hl,de
	pop de
	push hl
	ld hl,l56b3
	add hl,de
	add hl,de
	add hl,de
	add hl,de
	pop de
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l5693
	ld c,b
.l5688
	srl c
	jr nc,l568f
	ld a,(hl)
	ld (de),a
	inc de
.l568f
	inc hl
	ret z
	jr l5688
.l5693
	db #03,#04,#05,#07,#08,#09,#0a,#0c
.l569b
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56a3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56ab
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56b3
	dw l569b,l569b,l56a3,l56a3
	dw l56ab,l56ab
.l56c1 equ $ + 2
.l56c0 equ $ + 1
.l56bf
	db #00,#00,#00
.l56c2
	ld a,(l569b)
	or a
	ld e,#00
	call nz,l56db
	ld a,(l56a3)
	or a
	ld e,#04
	call nz,l56db
	ld a,(l56ab)
	or a
	ld e,#08
	ret z
.l56db
	ld d,#00
	ld hl,l56b3
	add hl,de
	push de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l56e5
	ld a,(de)
	inc de
	cp #ff
	jr nz,l56f3
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	dec hl
	dec hl
	jr l56e5
.l56f3
	ld (hl),d
	dec hl
	ld (hl),e
	pop de
	push af
	ld a,e
	rrca
	rrca
	and #03
	ld c,a
	add a
	ld e,a
	ld b,#00
	ld hl,l5986
	add hl,bc
	pop af
	add (hl)
	add a
	ld c,a
	ld hl,l5889
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l598d
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	ret
.l5719
	ld a,(l5585)
	or a
	jp nz,l575d
	ld a,l
	or h
	ret z
	ld a,c
	push hl
	add a
	dec a
	ld hl,l598d
	ld d,#00
	ld e,a
	add hl,de
	pop de
	ld (hl),e
	dec hl
	ld (hl),d
	ld hl,l599f
	ld e,c
	ld d,#00
	dec e
	add hl,de
	ld a,(hl)
	dec hl
	dec hl
	dec hl
	ld (hl),a
	ld hl,l598a
	add hl,de
	ld a,(hl)
	ld hl,l5995
	add hl,de
	ld (hl),a
	ld hl,l5994
	dec c
	jp nz,l5752
	res 0,(hl)
.l5752
	dec c
	jp nz,l5758
	res 1,(hl)
.l5758
	dec c
	ret nz
	res 2,(hl)
	ret
.l575d
	ld a,h
	ld (l5993),a
	ld a,l
	and #f0
	cp #00
	jp z,l5788
	rrca
	rrca
	rrca
	rrca
.l576d
	ld hl,l599c
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	ld hl,l5994
	dec c
	jr nz,l577f
	res 3,(hl)
	ret
.l577f
	dec c
	jr nz,l5785
	res 4,(hl)
	ret
.l5785
	res 5,(hl)
	ret
.l5788
	ld a,l
	and #0f
	ld hl,l5995
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	xor a
	jr l576d
.l5797
	ld a,b
	and #03
	ld c,a
	ld a,b
	bit 2,b
	jr nz,l57a1
	ret
.l57a1
	bit 3,b
	jp nz,l57d0
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld b,a
	xor a
	cp c
	jr z,l57bf
	ld hl,l598a
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),b
	ld b,#00
	jp l57e2
.l57bf
	ld hl,l598a
	call l57ca
	ld b,#00
	jp l57ec
.l57ca
	ld (hl),b
	inc hl
	ld (hl),b
	inc hl
	ld (hl),b
	ret
.l57d0
	and #e0
	bit 4,b
	jr z,l57da
	ld (l5989),a
	ret
.l57da
	rlca
	rlca
	rlca
	ld b,a
	xor a
	cp c
	jr z,l57ec
.l57e2
	ld d,#00
	ld e,c
	ld hl,l599f
	add hl,de
	dec hl
	ld (hl),b
	ret
.l57ec
	ld hl,l599f
	jp l57ca
	add hl,hl
.l57f3
	ld hl,l598d
	ld a,(l5989)
	ld c,a
	bit 5,c
	call nz,l580b
	inc hl
	inc hl
	bit 6,c
	call nz,l580b
	inc hl
	inc hl
	bit 7,c
	ret z
.l580b
	ld a,(l5966)
	ld e,(hl)
	inc hl
	ld d,(hl)
	rrca
	rrca
	rrca
	dec de
	dec de
	jr nc,l581c
	inc de
	inc de
	inc de
	inc de
.l581c
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.l5820
	push bc
	ld b,#f4
	out (c),d
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),e
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	pop bc
	inc d
	ret
.l5841
	ld hl,l598d
	ld d,#00
	add hl,de
	ld d,e
.l5848
	ld e,(hl)
	inc hl
	call l5820
	djnz l5848
	ret
.l5850
	ld hl,l5995
	ld c,a
	ld e,a
	ld d,#00
	add hl,de
	ex de,hl
	ld hl,#0007
	add hl,de
	ld a,(hl)
	cp #00
	ret z
	push de
	dec a
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,l59af
	add hl,de
	push hl
	ld hl,l5963
	ld b,#00
	add hl,bc
	ld e,(hl)
	pop hl
	ld d,#00
	add hl,de
	ld a,(hl)
	pop hl
	cp (hl)
	ret z
	ld (hl),a
	ld a,c
	add #08
	ld e,a
	ld b,#01
	jp l5841
.l5889
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
	dw #0013,#0012,#0000
.l5947
	db #7b,#e0,#7b,#e0,#7b,#e0,#7b,#e0
	db #7b,#e0,#7b,#e0,#7b,#e0,#7b,#e0
	db #7b,#e0,#7b,#e0,#7b,#e0,#7b,#e0
.l5966 equ $ + 7
.l5965 equ $ + 6
.l5964 equ $ + 5
.l5963 equ $ + 4
	db #7b,#e0,#7b,#e0,#00,#00,#00,#00
	db #00
.l596c equ $ + 4
.l596a equ $ + 2
.l5968
	dw l5984,l5baf,l5c61
.l5970 equ $ + 2
.l596f equ $ + 1
	db #00,#01,#01
.l5975 equ $ + 4
.l5973 equ $ + 2
.l5971
	dw l5984,l5c00,l5c61
.l5979 equ $ + 2
.l5978 equ $ + 1
	db #00,#01,#01
.l597e equ $ + 4
.l597c equ $ + 2
.l597a
	dw l5984,l5c51,l5c61
.l5987 equ $ + 7
.l5986 equ $ + 6
.l5984 equ $ + 4
.l5982 equ $ + 2
.l5981 equ $ + 1
	db #00,#01,#01,#00,#ff,#ff,#00,#00
.l598d equ $ + 5
.l598a equ $ + 2
.l5989 equ $ + 1
.l5988
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5995 equ $ + 5
.l5994 equ $ + 4
.l5993 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l599f equ $ + 7
.l599c equ $ + 4
	db #00,#00,#00,#00,#01,#02,#03,#01
.l59a2 equ $ + 2
	db #02,#03,#00,#00,#00,#00,#00,#00
.l59af equ $ + 7
.l59ae equ $ + 6
.l59ad equ $ + 5
.l59ac equ $ + 4
.l59ab equ $ + 3
.l59a9 equ $ + 1
	db #00,#00,#00,#04,#01,#01,#01,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#02
	db #02,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09,#00,#08,#00,#09,#00,#08,#00
	db #09,#00,#08,#00,#09,#00,#08,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0c
	db #0c,#0b,#0b,#0a,#0a,#09,#09,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#0e
	db #0e,#0e,#0e,#0d,#0d,#0d,#0d,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0c,#0b,#0c,#0a,#0c,#0b,#0c,#0a
	db #0c,#0b,#0c,#0a,#0c,#0b,#0c,#0a
	db #0b,#0a,#0a,#09,#09,#09,#09,#08
	db #08,#08,#08,#08,#08,#08,#08,#0d
	db #0d,#0e,#0e,#0d,#0d,#0e,#0e,#0d
	db #0d,#0d,#0d,#0e,#0e,#0e,#0e,#0d
	db #0d,#0d,#0d,#0e,#0e,#0e,#0e,#0d
	db #0d,#0d,#0d,#0e,#0e,#0e,#0e,#0b
	db #0d,#0c,#0b,#0d,#0c,#0b,#0d,#0c
	db #0b,#0d,#0c,#0b,#0d,#0c,#0b,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#09
	db #09,#09,#09,#08,#08,#08,#08,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#08
	db #08,#08,#08,#07,#07,#07,#07,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0d
	db #0c,#0d,#0c,#0d,#0c,#0d,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0b
	db #0c,#0b,#0c,#0b,#0c,#0b,#0c,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#0a
	db #0b,#0a,#0b,#0a,#0b,#0a,#0b,#0a
	db #0b,#0a,#0b,#0a,#0b,#0a,#0a,#09
	db #09,#09,#09,#09,#09,#09,#09,#08
	db #08,#08,#08,#08,#08,#08,#08,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#09,#09,#09,#09,#08
	db #08,#08,#08,#07,#07,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#01,#01,#00,#00,#00,#00,#0c
	db #02,#0c,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
.l5b8f
	dw l5c61,l5c64,l5c71,l5c85
	dw l5d0b,l5dbf,l5e46,l5e9a
	dw l5ef0,l5f4b,l5f96,l5fb7
.l5ba7
	dw l5b8f,l5baf,l5c00,l5c51
.l5baf
	db #fe,#00,#01,#01,#01,#01,#fe,#03
	db #01,#01,#01,#01,#fe,#fe,#01,#01
	db #01,#01,#fe,#00,#01,#01,#01,#01
	db #01,#01,#01,#01,#fe,#fe,#01,#01
	db #01,#01,#fe,#03,#01,#01,#01,#01
	db #fe,#05,#01,#01,#fe,#fb,#01,#01
	db #fe,#00,#01,#01,#fe,#fc,#01,#01
	db #fe,#f9,#01,#01,#fe,#fb,#01,#01
	db #fe,#00,#01,#01,#fe,#03,#01,#01
	db #fe,#05,#01,#01,#fe,#fb,#01,#01
.l5c00 equ $ + 1
	db #ff,#fe,#00,#02,#02,#02,#02,#fe
	db #03,#02,#02,#02,#02,#fe,#fe,#02
	db #02,#02,#02,#fe,#00,#02,#02,#02
	db #02,#02,#02,#02,#02,#fe,#fe,#02
	db #02,#02,#02,#fe,#03,#02,#02,#02
	db #02,#fe,#05,#02,#02,#fe,#fb,#02
	db #02,#fe,#00,#02,#02,#fe,#fc,#02
	db #02,#fe,#f9,#02,#02,#fe,#fb,#02
	db #02,#fe,#00,#02,#02,#fe,#03,#02
	db #02,#fe,#05,#02,#02,#fe,#fb,#02
.l5c51 equ $ + 2
	db #02,#ff,#fe,#00,#03,#04,#fe,#0c
	db #05,#fe,#00,#06,#07,#08,#09,#0a
.l5c64 equ $ + 5
.l5c61 equ $ + 2
	db #0b,#ff,#f7,#04,#ff,#fa,#10,#fb
	db #02,#18,#18,#24,#18,#18,#18,#22
.l5c71 equ $ + 2
	db #24,#ff,#fb,#04,#fd,#08,#fa,#21
	db #f6,#8a,#03,#fb,#02,#30,#3c,#fd
.l5c85 equ $ + 6
	db #08,#fd,#08,#3c,#30,#ff,#fa,#52
	db #fb,#08,#30,#37,#3c,#3a,#fb,#04
	db #39,#3a,#fb,#02,#39,#35,#fb,#08
	db #37,#fa,#e2,#37,#fa,#52,#fb,#02
	db #33,#35,#fb,#08,#37,#3a,#fb,#04
	db #39,#3a,#37,#33,#fb,#06,#31,#fb
	db #08,#2e,#fa,#d2,#fb,#0a,#2e,#fa
	db #e2,#fb,#08,#2e,#fa,#52,#2e,#35
	db #fb,#04,#37,#fb,#02,#35,#fb,#06
	db #33,#fb,#04,#35,#fb,#02,#32,#33
	db #35,#fb,#06,#3a,#fb,#04,#38,#fb
	db #02,#35,#33,#fb,#08,#35,#fa,#e2
	db #fb,#04,#35,#fa,#52,#37,#fb,#02
	db #30,#2e,#fb,#04,#30,#fb,#02,#2e
	db #fb,#04,#33,#fb,#02,#2e,#fb,#04
	db #30,#33,#30,#fb,#02,#3a,#39,#35
	db #fb,#08,#37,#fa,#e2,#fb,#02,#37
.l5d0b equ $ + 4
	db #fb,#10,#5e,#ff,#fa,#62,#fb,#04
	db #3c,#3c,#fb,#02,#3a,#3c,#40,#fb
	db #04,#43,#fb,#02,#40,#fb,#04,#3c
	db #fb,#02,#3a,#3c,#fb,#04,#37,#fb
	db #02,#3a,#3c,#40,#43,#fb,#04,#48
	db #fb,#02,#46,#fb,#08,#43,#fa,#d2
	db #fb,#02,#43,#fa,#e2,#fb,#08,#43
	db #fa,#62,#fb,#02,#46,#fb,#04,#44
	db #fb,#06,#41,#fb,#02,#3e,#41,#44
	db #fb,#06,#46,#fb,#02,#44,#fb,#06
	db #46,#fb,#02,#41,#3e,#3f,#41,#fb
	db #08,#3a,#fb,#02,#3c,#3e,#3f,#fb
	db #08,#41,#fa,#e2,#fb,#02,#41,#fa
	db #62,#fb,#04,#43,#3f,#fb,#02,#41
	db #43,#44,#fb,#06,#43,#fb,#04,#3f
	db #fb,#02,#41,#43,#44,#fb,#06,#43
	db #fb,#04,#46,#fb,#02,#48,#46,#44
	db #fb,#08,#46,#fa,#e2,#fb,#04,#46
	db #fa,#62,#fb,#02,#3f,#43,#46,#fb
	db #08,#48,#45,#fb,#04,#41,#3f,#3e
	db #3c,#fb,#06,#3e,#fb,#02,#37,#3b
	db #3e,#43,#fb,#06,#47,#fb,#04,#43
	db #fb,#02,#41,#40,#fb,#04,#3e,#ff
.l5dbf
	db #fa,#72,#f6,#80,#05,#fb,#18,#30
	db #fb,#08,#37,#33,#fb,#10,#30,#fb
	db #04,#2c,#30,#fb,#08,#35,#30,#fb
	db #06,#2d,#fb,#02,#29,#fb,#04,#2d
	db #30,#fb,#10,#32,#fb,#08,#35,#fb
	db #04,#37,#f6,#80,#04,#35,#fa,#82
	db #fb,#04,#34,#fb,#08,#30,#fb,#04
	db #2b,#fb,#02,#2e,#fb,#04,#30,#fb
	db #06,#30,#fb,#02,#30,#32,#fb,#08
	db #33,#fa,#e2,#fb,#04,#33,#fa,#82
	db #2e,#fb,#02,#31,#fb,#06,#33,#fb
	db #04,#37,#fb,#02,#35,#33,#fb,#04
	db #35,#30,#fb,#02,#2e,#fb,#06,#30
	db #fb,#04,#35,#30,#fb,#02,#33,#35
	db #33,#30,#fb,#08,#32,#fb,#04,#37
	db #fb,#02,#3b,#3e,#fb,#04,#41,#fb
.l5e46 equ $ + 7
	db #02,#40,#41,#fb,#08,#3e,#ff,#fa
	db #92,#fb,#02,#3c,#3c,#3c,#3c,#3a
	db #3c,#3c,#3a,#3c,#3c,#40,#43,#46
	db #45,#fb,#04,#43,#40,#fb,#02,#41
	db #40,#41,#40,#3c,#37,#3a,#3c,#3a
	db #fb,#04,#3c,#fb,#02,#3a,#3c,#3e
	db #3f,#3f,#3f,#3a,#3d,#3c,#3d,#fb
	db #04,#3f,#fb,#02,#3f,#3f,#3a,#fb
	db #04,#3d,#fb,#02,#3d,#3f,#43,#44
	db #43,#fb,#04,#3f,#fb,#02,#3d,#3f
	db #43,#46,#43,#44,#46,#43,#3f,#fb
	db #04,#3d,#ff
.l5e9a
	db #fa,#52,#fb,#08,#3a,#fb,#04,#3e
	db #3f,#fb,#06,#41,#fb,#02,#3e,#fb
	db #04,#3f,#41,#46,#fb,#02,#44,#43
	db #fb,#08,#41,#fb,#02,#3a,#3e,#3f
	db #3e,#fb,#08,#3a,#fb,#04,#3c,#fb
	db #02,#3c,#3a,#fb,#08,#3c,#fb,#04
	db #46,#fb,#02,#43,#41,#43,#3c,#40
	db #43,#46,#4a,#4d,#fb,#0a,#4c,#fa
	db #32,#fb,#04,#fd,#08,#fb,#02,#fd
	db #08,#fd,#08,#fb,#04,#fd,#08,#fb
.l5ef0 equ $ + 6
	db #02,#fd,#08,#fd,#08,#ff,#fa,#a2
	db #fb,#08,#3c,#fb,#04,#3a,#fb,#02
	db #3c,#fb,#04,#3c,#3c,#fb,#02,#3c
	db #fb,#04,#3a,#3c,#fb,#06,#3c,#fb
	db #02,#3c,#fb,#04,#3a,#3c,#3c,#fb
	db #02,#3a,#fb,#04,#3c,#fb,#02,#3a
	db #fb,#04,#3c,#fb,#08,#3a,#fb,#04
	db #3a,#fb,#02,#38,#fb,#08,#3a,#fb
	db #02,#3a,#fb,#04,#38,#3a,#3a,#fb
	db #02,#38,#fb,#04,#3a,#fb,#02,#38
	db #fb,#04,#3a,#fb,#02,#38,#3a,#fb
	db #04,#3a,#fb,#02,#38,#fb,#06,#3a
.l5f4b equ $ + 1
	db #ff,#fa,#b2,#fb,#04,#46,#fb,#02
	db #43,#3f,#fb,#04,#48,#fb,#02,#44
	db #3f,#fb,#04,#46,#fb,#02,#43,#3f
	db #44,#46,#3f,#43,#44,#43,#3f,#4b
	db #fb,#10,#49,#fb,#02,#43,#44,#43
	db #3f,#3c,#41,#43,#3c,#43,#45,#fb
	db #04,#41,#fb,#02,#3c,#41,#3f,#fb
	db #06,#3c,#fb,#02,#3e,#3f,#fb,#06
	db #3e,#fb,#02,#43,#41,#40,#3e,#3c
.l5f96 equ $ + 4
	db #fb,#10,#3e,#ff,#fa,#c2,#fb,#18
	db #30,#fb,#08,#30,#fb,#20,#2c,#fb
	db #10,#29,#fb,#04,#30,#fb,#06,#35
	db #fb,#06,#32,#fb,#10,#37,#fb,#04
.l5fb7 equ $ + 5
	db #41,#fb,#0c,#43,#ff,#fa,#62,#fb
	db #08,#3c,#fb,#04,#3e,#40,#43,#fb
	db #08,#40,#fb,#04,#3c,#3f,#fb,#02
	db #41,#43,#fb,#0a,#46,#fb,#02,#43
	db #44,#43,#fb,#08,#3f,#fb,#04,#41
	db #3c,#fb,#02,#3a,#3c,#fb,#06,#41
	db #fb,#02,#48,#46,#fb,#06,#48,#fb
	db #04,#3c,#fb,#06,#3e,#fb,#02,#43
	db #41,#43,#4a,#48,#fb,#10,#4a,#ff
;
.music_info
	db "Vectorball (1988)(Mastertronic)(Wally Beben)",0
	db "",0

	read "music_end.asm"
