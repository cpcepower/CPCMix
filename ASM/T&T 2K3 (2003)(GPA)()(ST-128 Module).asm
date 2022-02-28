; Music of T&T 2K3 (2003)(GPA)()(ST-128 Module).asm
; Ripped by Megachur the 20/02/2021
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "TT2K3.BIN"
	ENDIF

music_date_rip_day		equ 20
music_date_rip_month	equ 02
music_date_rip_year		equ 2021
music_adr				equ #7ff0

	read "music_header.asm"

	jp l7ff9
	jp l808d
	jp l8071
;
.init_music
.l7ff9
;
	xor a
	ld hl,l85a4
	call l806a
	ld hl,l85d2
	call l806a
	ld hl,l8600
	call l806a
	ld ix,l85a0
	ld iy,l862a
	ld de,#002e
	ld b,#03
.l8019
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l8019
	ld hl,l84b9
	ld (hl),#06
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l84b5),hl
	ld (l84b7),hl
	ld a,#0c
	ld c,d
	call l8495
	ld a,#0d
	ld c,d
	jp l8495
.l806a
	ld b,#2a
.l806c
	ld (hl),a
	inc hl
	djnz l806c
	ret
;
.stop_music
.l8071
;
	ld a,#07
	ld c,#3f
	call l8495
	ld a,#08
	ld c,#00
	call l8495
	ld a,#09
	ld c,#00
	call l8495
	ld a,#0a
	ld c,#00
	jp l8495
;
.play_music
.l808d
;
	ld hl,l84bb
	dec (hl)
	ld ix,l85a0
	ld bc,l85ae
	call l812f
	ld ix,l85ce
	ld bc,l85dc
	call l812f
	ld ix,l85fc
	ld bc,l860a
	call l812f
	ld hl,l84b4
	ld de,l84bb
	ld b,#06
	call l810c
	ld b,#07
	call l810c
	ld b,#0b
	call l810c
	ld b,#0d
	call l810c
	ld de,l84bb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l85bf
	call l80e5
	ld hl,l85ed
	call l80e5
	ld hl,l861b
.l80e5
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l80fa
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l80fa
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l810c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l8495
.l8117
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l8495
.l812f
	ld a,(l84bb)
	or a
	jp nz,l81e7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l81e7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l8117
	or a
	jp z,l81dc
	ld r,a
	and #7f
	cp #10
	jr c,l81b7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l832f
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l8190
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l8190
	rrca
	ld c,a
	ld hl,l8630
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l81af
	ld (ix+#1e),b
.l81af
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l81d0
.l81b7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l84c0
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add e
	add h
	add l
	add (hl)
	add h
.l81d0
	ld a,d
	or a
	jr nz,l81de
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l81de
.l81dc
	ld a,(hl)
	inc hl
.l81de
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l81e7
	ld a,(ix+#17)
	or a
	jr nz,l81fd
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l81fd
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l8213
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l8213
	ld a,(ix+#0d)
	or a
	jr z,l8221
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l823f
.l8221
	ld a,(ix+#1a)
	or a
	jp z,l8246
	ld c,a
	cp #03
	jr nz,l822e
	xor a
.l822e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l823f
	ld a,(ix+#18)
	dec c
	jr z,l823f
	ld a,(ix+#19)
.l823f
	add (ix+#07)
	ld b,d
	call l832f
.l8246
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l826e
	dec (ix+#1b)
	jr nz,l826e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l82a6
.l826e
	ld a,(ix+#29)
	or a
	jr z,l82a6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l829d
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l8294
	ld (ix+#29),#ff
	jr l829d
.l8294
	cp (ix+#2b)
	jr nz,l829d
	ld (ix+#29),#01
.l829d
	ld b,d
	or a
	jp p,l82a3
	dec b
.l82a3
	ld c,a
	jr l82b1
.l82a6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l82b1
	pop hl
	bit 7,(ix+#14)
	jr z,l82ba
	ld h,d
	ld l,d
.l82ba
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l8495
	ld c,h
	ld a,(ix+#02)
	call l8495
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l830d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l82fc
	dec (ix+#09)
	jr nz,l82fc
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l82f4
	xor a
	jr l82f9
.l82f4
	cp #10
	jr nz,l82f9
	dec a
.l82f9
	ld (ix+#1e),a
.l82fc
	ld a,b
	sub (ix+#1e)
	jr nc,l8303
	xor a
.l8303
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l8495
.l830d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l84bc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l832b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l832b
	ld (l84bc),hl
	ret
.l832f
	ld hl,l84de
	cp #61
	jr nc,l8339
	add a
	ld c,a
	add hl,bc
.l8339
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l8343
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l8468
	ld (ix+#1e),a
	jp l81d0
.l8355
	dec b
.l8356
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l8361
	neg
.l8361
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l81d0
.l8377
	dec b
	jr l837b
.l837a
	inc b
.l837b
	call l8468
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l81d0
.l838a
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l844d
.l839b
	ld a,(hl)
	inc hl
	or a
	jr z,l83bd
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l83bd
	ld (ix+#29),a
	jp l81d0
.l83c3
	dec hl
	ld a,(hl)
	and #0f
	ld (l84bf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l84be),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l81d0
.l83dd
	ld a,(hl)
	or a
	jr z,l83ee
	call l846a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l81d0
.l83ee
	ld hl,#0101
	ld (l84ba),hl
	jp l81d0
.l83f7
	call l8468
	ld (ix+#1e),a
	jp l81d0
.l8400
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l8479
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l8479
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l81d0
.l8422
	ld a,(hl)
	inc hl
	ld (l84b9),a
	jp l81d0
.l842a
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l81d0
.l8449
	call l8468
	add a
.l844d
	ld b,#00
	ld c,a
	push hl
	ld hl,l86b0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l81d0
.l8468
	ld a,(hl)
	inc hl
.l846a
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l8479
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l8630
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l8495
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
.l84b4
	ret
.l84bc equ $ + 7
.l84bb equ $ + 6
.l84ba equ $ + 5
.l84b9 equ $ + 4
.l84b7 equ $ + 2
.l84b5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l84bf equ $ + 2
.l84be equ $ + 1
	db #38,#00,#00
.l84c0
	dw l8343,l8356,l8355,l837a
	dw l8377,l838a,l839b,l83c3
	dw l83dd,l83c3,l83f7,l8400
	dw l8422,l842a,l8449
.l84de
	dw #0000,#0e18,#0d4d,#0c8e
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
	dw #000f
.l85a4 equ $ + 4
.l85a0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l85ae equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85bf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85ce equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l85d2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l85dc equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85ed equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l85fc equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l8600
	db #00,#00,#00,#00,#00,#00,#00,#00
.l860a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l861b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l862a equ $ + 2
	db #00,#00,#10,#88,#3d,#88,#6a,#88
.l8630
	db #d0,#86,#10,#87,#30,#87,#16,#07
	db #d0,#86,#50,#87,#30,#87,#00,#00
	db #d0,#86,#70,#87,#30,#87,#16,#0a
	db #d0,#86,#90,#87,#b0,#87,#1f,#01
	db #d0,#86,#d0,#87,#f0,#87,#00,#00
	db #c2,#3f,#c2,#3f,#c2,#3f,#00,#00
	db #c2,#3f,#c2,#3f,#c2,#3f,#00,#00
	db #c2,#3f,#c2,#3f,#c2,#3f,#00,#00
	db #c2,#3f,#c2,#3f,#c2,#3f,#00,#00
	db #c2,#3f,#c2,#3f,#c2,#3f,#00,#00
	db #c2,#3f,#c2,#3f,#c2,#3f,#00,#00
	db #c2,#3f,#c2,#3f,#c2,#3f,#00,#00
	db #c2,#3f,#c2,#3f,#c2,#3f,#00,#00
	db #c2,#3f,#c2,#3f,#c2,#3f,#00,#00
	db #c2,#3f,#c2,#3f,#c2,#3f,#00,#00
	db #c2,#3f,#c2,#3f,#c2,#3f,#00,#00
.l86b0
	db #c2,#3f,#c2,#3f,#c2,#3f,#c2,#3f
	db #c2,#3f,#c2,#3f,#c2,#3f,#c2,#3f
	db #c2,#3f,#c2,#3f,#c2,#3f,#c2,#3f
	db #c2,#3f,#c2,#3f,#c2,#3f,#c2,#3f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0b,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0b,#0a,#0b,#0b,#0a,#0b,#0b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0b,#09,#08,#09,#0a,#0a,#0a,#0a
	db #0a,#0a,#0b,#0b,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#09,#09,#08,#08,#07
	db #07,#07,#08,#08,#07,#07,#08,#08
	db #0f,#0b,#0f,#0f,#00,#00,#0c,#0c
	db #06,#06,#00,#00,#00,#00,#00,#00
	db #00,#00,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#97,#88,#00,#a6,#88,#00,#b7
	db #88,#00,#ba,#88,#00,#ba,#88,#00
	db #ba,#88,#00,#fe,#88,#00,#ba,#88
	db #00,#fe,#88,#00,#42,#89,#00,#a4
	db #89,#00,#42,#89,#00,#a4,#89,#00
	db #06,#8a,#80,#1f,#88,#00,#09,#8a
	db #00,#16,#8a,#00,#39,#8a,#00,#b7
	db #88,#00,#b7,#88,#00,#59,#8a,#00
	db #da,#8a,#00,#59,#8a,#00,#da,#8a
	db #00,#5b,#8b,#00,#dc,#8b,#00,#5b
	db #8b,#00,#dc,#8b,#00,#5d,#8c,#80
	db #4c,#88,#00,#8b,#8c,#00,#8f,#8c
	db #00,#b4,#8c,#00,#b7,#88,#00,#b7
	db #88,#00,#bd,#8c,#00,#ce,#8c,#00
	db #bd,#8c,#00,#ce,#8c,#00,#e0,#8c
	db #00,#fa,#8c,#00,#e0,#8c,#00,#fa
	db #8c,#00,#18,#8d,#80,#79,#88,#2a
	db #0b,#8b,#0b,#89,#0b,#87,#0b,#45
	db #0b,#43,#09,#00,#20,#ff,#2a,#0b
	db #01,#10,#0b,#82,#0b,#83,#0b,#65
	db #0b,#a7,#0b,#48,#0b,#cf,#ff,#00
	db #40,#ff,#2a,#3d,#03,#04,#36,#30
	db #04,#2a,#30,#02,#36,#30,#04,#2a
	db #30,#02,#36,#30,#04,#2a,#30,#02
	db #36,#30,#04,#2a,#30,#02,#36,#30
	db #02,#2a,#30,#02,#2a,#30,#04,#36
	db #30,#04,#2a,#30,#02,#36,#30,#04
	db #2a,#30,#02,#36,#30,#04,#2a,#30
	db #02,#36,#30,#04,#2a,#30,#02,#36
	db #30,#02,#2a,#30,#02,#ff,#28,#3d
	db #03,#04,#34,#30,#04,#28,#30,#02
	db #34,#30,#04,#28,#30,#02,#34,#30
	db #04,#28,#30,#02,#34,#30,#04,#28
	db #30,#02,#34,#30,#02,#28,#30,#02
	db #28,#30,#04,#34,#30,#04,#28,#30
	db #02,#34,#30,#04,#28,#30,#02,#34
	db #30,#04,#28,#30,#02,#34,#30,#04
	db #28,#30,#02,#34,#30,#02,#28,#30
	db #02,#ff,#26,#3d,#03,#02,#51,#20
	db #02,#32,#30,#02,#51,#20,#02,#26
	db #30,#02,#32,#30,#02,#51,#20,#02
	db #26,#30,#02,#32,#30,#02,#51,#20
	db #02,#26,#30,#02,#32,#30,#02,#51
	db #20,#02,#26,#30,#02,#32,#30,#02
	db #26,#30,#02,#23,#30,#02,#4e,#20
	db #02,#2f,#30,#02,#4e,#20,#02,#23
	db #30,#02,#2f,#30,#02,#4e,#20,#02
	db #23,#30,#02,#2f,#30,#02,#4e,#20
	db #02,#23,#30,#02,#2f,#30,#02,#4e
	db #20,#02,#23,#30,#02,#2f,#30,#02
	db #23,#30,#02,#ff,#21,#3d,#03,#02
	db #55,#20,#02,#2d,#30,#02,#55,#20
	db #02,#21,#30,#02,#2d,#30,#02,#55
	db #20,#02,#21,#30,#02,#2d,#30,#02
	db #55,#20,#02,#21,#30,#02,#2d,#30
	db #02,#55,#20,#02,#21,#30,#02,#2d
	db #30,#02,#21,#30,#02,#20,#30,#02
	db #53,#20,#02,#2c,#30,#02,#53,#20
	db #02,#20,#30,#02,#2c,#30,#02,#53
	db #20,#02,#20,#30,#02,#2c,#30,#02
	db #53,#20,#02,#20,#30,#02,#2c,#30
	db #02,#53,#20,#02,#20,#30,#02,#2c
	db #30,#02,#20,#30,#02,#ff,#fe,#40
	db #ff,#1e,#0b,#8b,#0b,#89,#0b,#87
	db #0b,#45,#0b,#03,#24,#ff,#00,#04
	db #5a,#1d,#06,#03,#4e,#10,#03,#58
	db #10,#03,#4e,#10,#03,#53,#10,#03
	db #55,#10,#03,#58,#10,#02,#5a,#10
	db #03,#5a,#1b,#43,#5a,#1b,#05,#21
	db #ff,#0d,#06,#06,#3b,#40,#14,#98
	db #0d,#02,#a7,#00,#a1,#00,#98,#00
	db #96,#00,#98,#00,#98,#00,#96,#00
	db #fe,#01,#0d,#06,#05,#09,#00,#18
	db #ff,#ce,#20,#c9,#20,#c5,#20,#c9
	db #20,#ce,#20,#c9,#20,#c5,#20,#c9
	db #20,#ce,#20,#c9,#20,#c5,#20,#c9
	db #20,#ce,#20,#c9,#20,#c5,#20,#c9
	db #20,#ce,#20,#c9,#20,#c5,#20,#c9
	db #20,#ce,#20,#c9,#20,#c5,#20,#c9
	db #20,#ce,#20,#c9,#20,#c5,#20,#c9
	db #20,#ce,#20,#c9,#20,#c5,#20,#c9
	db #20,#ce,#20,#c9,#20,#c5,#20,#c9
	db #20,#ce,#20,#c9,#20,#c5,#20,#c9
	db #20,#ce,#20,#c9,#20,#c5,#20,#c9
	db #20,#ce,#20,#c9,#20,#c5,#20,#c9
	db #20,#ce,#20,#c9,#20,#c5,#20,#c9
	db #20,#ce,#20,#c9,#20,#c5,#20,#c9
	db #20,#ce,#20,#c9,#20,#c5,#20,#c9
	db #20,#ce,#20,#c9,#20,#c5,#20,#c9
	db #20,#ff,#ce,#20,#c7,#20,#c4,#20
	db #c7,#20,#ce,#20,#c7,#20,#c4,#20
	db #c7,#20,#ce,#20,#c7,#20,#c4,#20
	db #c7,#20,#ce,#20,#c7,#20,#c4,#20
	db #c7,#20,#ce,#20,#c7,#20,#c4,#20
	db #c7,#20,#ce,#20,#c7,#20,#c4,#20
	db #c7,#20,#ce,#20,#c7,#20,#c4,#20
	db #c7,#20,#ce,#20,#c7,#20,#c4,#20
	db #c7,#20,#cc,#20,#c7,#20,#c4,#20
	db #c7,#20,#cc,#20,#c7,#20,#c4,#20
	db #c7,#20,#cc,#20,#c7,#20,#c4,#20
	db #c7,#20,#cc,#20,#c7,#20,#c4,#20
	db #c7,#20,#cc,#20,#c7,#20,#c4,#20
	db #c7,#20,#cc,#20,#c7,#20,#c4,#20
	db #c7,#20,#cc,#20,#c7,#20,#c4,#20
	db #c7,#20,#cc,#20,#c7,#20,#c4,#20
	db #c7,#20,#ff,#ca,#20,#c5,#20,#c2
	db #20,#c5,#20,#ca,#20,#c5,#20,#c2
	db #20,#c5,#20,#ca,#20,#c5,#20,#c2
	db #20,#c5,#20,#ca,#20,#c5,#20,#c2
	db #20,#c5,#20,#ca,#20,#c5,#20,#c2
	db #20,#c5,#20,#ca,#20,#c5,#20,#c2
	db #20,#c5,#20,#ca,#20,#c5,#20,#c2
	db #20,#c5,#20,#ca,#20,#c5,#20,#c2
	db #20,#c5,#20,#c7,#20,#c2,#20,#be
	db #20,#c2,#20,#c7,#20,#c2,#20,#be
	db #20,#c2,#20,#c7,#20,#c2,#20,#be
	db #20,#c2,#20,#c7,#20,#c2,#20,#be
	db #20,#c2,#20,#c7,#20,#c2,#20,#be
	db #20,#c2,#20,#c7,#20,#c2,#20,#be
	db #20,#c2,#20,#c7,#20,#c2,#20,#be
	db #20,#c2,#20,#c7,#20,#c2,#20,#be
	db #20,#c2,#20,#ff,#c9,#20,#c5,#20
	db #c0,#20,#c5,#20,#c9,#20,#c5,#20
	db #c0,#20,#c5,#20,#c9,#20,#c5,#20
	db #c0,#20,#c5,#20,#c9,#20,#c5,#20
	db #c0,#20,#c5,#20,#c9,#20,#c5,#20
	db #c0,#20,#c5,#20,#c9,#20,#c5,#20
	db #c0,#20,#c5,#20,#c9,#20,#c5,#20
	db #c0,#20,#c5,#20,#c9,#20,#c5,#20
	db #c0,#20,#c5,#20,#cc,#20,#c7,#20
	db #c0,#20,#c7,#20,#cc,#20,#c7,#20
	db #c0,#20,#c7,#20,#cc,#20,#c7,#20
	db #c0,#20,#c7,#20,#cc,#20,#c7,#20
	db #c0,#20,#c7,#20,#cc,#20,#c7,#20
	db #c0,#20,#c7,#20,#cc,#20,#c7,#20
	db #c0,#20,#c7,#20,#cc,#20,#c7,#20
	db #c0,#20,#c7,#20,#cc,#20,#c7,#20
	db #c0,#20,#c7,#20,#ff,#ce,#20,#c9
	db #20,#c5,#20,#c9,#20,#4e,#2b,#11
	db #c9,#20,#c5,#20,#c9,#20,#4e,#2b
	db #12,#c9,#20,#c5,#20,#c9,#20,#4e
	db #2b,#13,#c9,#20,#c5,#20,#c9,#20
	db #4e,#2b,#84,#fe,#08,#0b,#84,#0b
	db #05,#18,#ff,#0d,#02,#40,#ff,#1e
	db #1d,#08,#02,#5a,#1d,#06,#03,#4e
	db #10,#03,#58,#10,#03,#4e,#10,#03
	db #53,#10,#03,#55,#10,#03,#58,#10
	db #02,#5a,#10,#03,#5a,#1b,#43,#5a
	db #1b,#05,#23,#ff,#00,#06,#34,#40
	db #1c,#1c,#40,#1e,#ff,#49,#2e,#0c
	db #14,#4c,#20,#08,#4e,#20,#14,#4c
	db #20,#04,#49,#20,#0c,#ff,#49,#20
	db #20,#47,#20,#20,#ff,#45,#20,#40
	db #ff,#45,#20,#20,#44,#20,#20,#ff
	db #51,#21,#00,#1d,#02,#11,#01,#02
	db #11,#01,#02,#11,#01,#4e,#20,#10
	db #4e,#20,#04,#4c,#20,#08,#55,#20
	db #04,#ff,#00,#10,#55,#20,#04,#58
	db #20,#08,#53,#20,#14,#53,#20,#04
	db #55,#20,#08,#02,#11,#01,#02,#11
	db #01,#02,#11,#01,#02,#11,#01,#ff
	db #51,#20,#04,#0b,#41,#0b,#42,#0b
	db #43,#0b,#44,#0b,#45,#fe,#28,#ff
;
.music_info
	db "T&T 2K3 (2003)(GPA)()",0
	db "ST-128 Module",0

	read "music_end.asm"
