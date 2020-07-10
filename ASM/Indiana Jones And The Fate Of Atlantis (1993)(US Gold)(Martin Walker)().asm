; Music of Indiana Jones And The Fate Of Atlantis (1993)(US Gold)(Martin Walker)()
; Ripped by Megachur the 27/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "INJATFOA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #4000

	read "music_header.asm"

	db #23,#19
	jp l4249        ; stop music
	jp l4604        ; init music a = 0
	jp l4293        ; play music2
	jp l4732        ; play music1
	push af         ; play music
	call c,l4604
	pop af
	jr nz,l4019
	xor a
	ld (l40e7),a
;
.play_music
;
.l4019
	call l4732
	jp l4293
.l4026 equ $ + 7
.l4024 equ $ + 5
.l4022 equ $ + 3
.l4020 equ $ + 1
.l401f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l402e equ $ + 7
.l402c equ $ + 5
.l402a equ $ + 3
.l4028 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4032 equ $ + 3
.l4030 equ $ + 1
	db #00,#00,#00,#ff,#0f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4040 equ $ + 1
	db #00,#34,#16,#f1,#20,#04,#af,#32
	db #17,#11,#cd,#62,#17,#c3,#c3,#12
	db #08,#ff,#00,#00,#00,#00,#23,#00
.l405e equ $ + 7
.l405d equ $ + 6
.l405c equ $ + 5
	db #20,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09,#12,#24,#08,#10,#20,#00,#00
.l4076 equ $ + 7
	db #00,#01,#01,#01,#01,#01,#01,#0f
.l407c equ $ + 5
	db #00,#0f,#00,#0f,#00,#00,#00,#00
.l4082 equ $ + 3
	db #00,#00,#00,#ff,#fe,#f7,#f6,#ff
.l408e equ $ + 7
	db #fd,#ef,#ed,#ff,#fb,#df,#db,#00
.l4090 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#09,#12,#24,#08,#10,#20
	db #00,#00,#00,#01,#01,#01,#01,#01
.l40ae equ $ + 7
.l40a8 equ $ + 1
	db #01,#0f,#00,#0f,#00,#0f,#00,#00
	db #00,#00,#00,#00,#00,#ff,#fe,#f7
	db #f6,#ff,#fd,#ef,#ed,#ff,#fb,#df
.l40c0 equ $ + 1
	db #db,#00,#01,#01,#01,#01,#04,#03
	db #02,#04,#03,#02,#01,#03,#02,#01
.l40d3 equ $ + 4
	db #03,#02,#02,#01,#01,#20,#10,#08
	db #04,#20,#20,#10,#10,#10,#08,#02
.l40e6 equ $ + 7
	db #08,#04,#01,#02,#02,#01,#01,#00
.l40ee equ $ + 7
.l40ed equ $ + 6
.l40ec equ $ + 5
.l40eb equ $ + 4
.l40ea equ $ + 3
.l40e8 equ $ + 1
.music_end
.l40e7
	db #00,#0f,#00,#00,#00,#00,#00,#00
.l40f0 equ $ + 1
.l40ef
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#ff
.l4139 equ $ + 2
	db #ff,#ff,#00,#00,#00,#00,#00,#00
.l4145 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4151 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4159 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l4161
	dw #0fff,#0fff,#0fff,#0fff
	dw #0fff,#0fff,#0fff,#0fff
	dw #0fff,#0fff,#0fff,#0fd2
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
;
.stop_music
.l4249
;
	call l4282
	ld hl,l4d0c
	ld (l4026),hl
	ld hl,l500c
	ld (l4024),hl
	di
	ld b,#03
	ld ix,l4032
	ld de,#000e
.l4262
	xor a
	ld (ix+#03),a
	ld (ix+#04),a
	dec a
	ld (ix+#00),a
	ld (ix+#06),a
	add ix,de
	djnz l4262
	call l4720
	ld hl,#ffff
	ld (l40ee),hl
	ld (l40ef),hl
	ei
	ret
.l4282
	ld hl,l4032
	ld de,l4040
	ld bc,#000e
	ldir
	ld bc,#000e
	ldir
	ret
.l4293
	ld a,#ff
	ld (l405d),a
	ld a,#1f
	ld (l405c),a
	ld a,#02
	ld (l4020),a
.l42a2
	ld ix,l405e
	ld iy,l4032
	ld bc,(l4020)
	add ix,bc
	ld a,c
	and a
	jr z,l42bd
	ld c,#0e
	add iy,bc
	dec a
	jr z,l42bd
	add iy,bc
.l42bd
	ld a,(iy+#00)
	inc a
	jr z,l42e3
	dec a
	cp #30
	jr c,l4301
	cp #30
	ld a,(iy+#06)
	jr nc,l42d5
	cp #30
	jr nc,l4301
	jr l42d9
.l42d5
	cp #30
	jr nc,l4301
.l42d9
	ld a,(iy+#03)
	and a
	jr z,l4301
	ld (iy+#00),#ff
.l42e3
	ld hl,l40ee
	ld bc,(l4020)
	add hl,bc
	ld a,(hl)
	and a
	jr z,l42f6
	ld a,(iy+#04)
	and a
	jp nz,l4380
.l42f6
	ld (iy+#03),#00
	ld (iy+#04),#00
	jp l45e8
.l4301
	ld l,(iy+#00)
	ld (iy+#06),l
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,(l4024)
	add hl,de
	ld (iy+#07),l
	ld (iy+#08),h
	push hl
	ex (sp),ix
	ld a,(ix+#00)
	ld (iy+#05),a
	ld a,(ix+#02)
	ld (iy+#0b),a
	ld a,(ix+#03)
	ld (iy+#04),a
	ld a,(ix+#04)
	ld (iy+#09),a
	ld a,(ix+#05)
	ld (iy+#0a),a
	ld a,(ix+#0b)
	ld (iy+#0c),a
	ld (iy+#0d),#ff
	ld l,(ix+#06)
	ld h,#00
	pop ix
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,(l4026)
	add hl,de
	ex de,hl
	ld hl,l407c
	ld bc,(l4020)
	sla c
	add hl,bc
	ld (hl),e
	inc hl
	ld (hl),d
	inc de
	inc de
	ld a,(de)
	ld (ix+#15),a
	ld (ix+#0f),b
	ld (ix+#12),#01
	ld hl,l4076
	add hl,bc
	ld (hl),b
	inc hl
	ld (hl),b
	ld (iy+#03),#32
	ld (iy+#00),#ff
	jp l44eb
.l4380
	ld a,(iy+#03)
	and a
	jr z,l4389
	dec (iy+#03)
.l4389
	dec (iy+#0c)
	jp p,l43a4
	ld l,(iy+#07)
	ld h,(iy+#08)
	ld bc,#000b
	add hl,bc
	ld a,(hl)
	ld (iy+#0c),a
	ld a,(iy+#0d)
	cpl
	ld (iy+#0d),a
.l43a4
	ld a,(iy+#0b)
	and a
	jr nz,l43e8
	ld l,(iy+#07)
	ld h,(iy+#08)
	inc hl
	ld a,(hl)
	ld (iy+#05),a
	ld a,(iy+#04)
	inc a
	jr z,l43eb
	dec (iy+#04)
	jr nz,l43eb
	ld hl,l4076
	ld bc,(l4020)
	sla c
	add hl,bc
	ld (hl),b
	inc hl
	ld (hl),b
	call l4600
	or (ix+#09)
	ld c,a
	ld b,#07
	call l4ce8
	ld a,(l4020)
	add #08
	ld b,a
	ld c,(ix+#06)
	call l4ce8
	jp l45e8
.l43e8
	dec (iy+#0b)
.l43eb
	ld l,(iy+#07)
	ld h,(iy+#08)
	ld bc,#000d
	add hl,bc
	ld a,(hl)
	and a
	jp z,l4482
	cp #01
	jr nz,l4416
.l43fe
	ld l,(iy+#07)
	ld h,(iy+#08)
	ld bc,#000e
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(iy+#09)
	ld h,(iy+#0a)
	and a
	sbc hl,de
	jr l442e
.l4416
	cp #02
	jr nz,l4436
.l441a
	ld l,(iy+#07)
	ld h,(iy+#08)
	ld bc,#000e
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(iy+#09)
	ld h,(iy+#0a)
	add hl,de
.l442e
	ld (iy+#09),l
	ld (iy+#0a),h
	jr l4482
.l4436
	cp #03
	ld c,(iy+#0b)
	jr nz,l4443
	ld a,c
	and a
	jr nz,l43fe
	jr l4482
.l4443
	cp #04
	jr nz,l444d
	ld a,c
	and a
	jr nz,l441a
	jr l4482
.l444d
	cp #05
	jr nz,l4457
	ld a,c
	and a
	jr nz,l43fe
	jr l441a
.l4457
	cp #06
	jr nz,l4461
	ld a,c
	and a
	jr nz,l441a
	jr l43fe
.l4461
	cp #07
	jr nz,l446b
	ld a,c
	and a
	jr z,l43fe
	jr l4482
.l446b
	cp #08
	jr nz,l4475
	ld a,c
	and a
	jr z,l441a
	jr l4482
.l4475
	cp #09
	jr nz,l4482
	bit 7,(iy+#0d)
	jp nz,l43fe
	jr l441a
.l4482
	ld l,(iy+#07)
	ld h,(iy+#08)
	ld bc,#0007
	add hl,bc
	ld a,(hl)
	and a
	jr z,l44eb
	ld l,(iy+#07)
	ld h,(iy+#08)
	ld bc,#0007
	add hl,bc
	bit 0,(hl)
	jr z,l44aa
	ld a,(iy+#09)
	ld c,(iy+#0a)
	ld (iy+#0a),a
	ld (iy+#09),c
.l44aa
	ld l,(iy+#07)
	ld h,(iy+#08)
	ld bc,#0007
	add hl,bc
	bit 1,(hl)
	jr z,l44d0
	ld bc,#0007
	add hl,bc
	ld a,(hl)
	inc hl
	add (iy+#09)
	ld c,a
	ld a,(hl)
	adc (iy+#0a)
	ld (iy+#0a),a
	dec hl
	dec hl
	ld a,(hl)
	xor c
	ld (iy+#09),a
.l44d0
	ld l,(iy+#07)
	ld h,(iy+#08)
	ld bc,#0007
	add hl,bc
	bit 3,(hl)
	jr z,l44eb
	ld a,(iy+#0c)
	and a
	jr nz,l44eb
	ld c,#05
	add hl,bc
	ld a,(hl)
	ld (iy+#09),a
.l44eb
	ld hl,l407c
	ld bc,(l4020)
	sla c
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	bit 7,(ix+#12)
	jr nz,l4558
	dec (ix+#12)
	jr nz,l4558
	ld hl,l4076
	add hl,bc
	ld a,(hl)
	ld l,(ix+#0f)
	ld h,b
	add hl,de
	inc hl
	add (hl)
	cp #10
	jr c,l451a
	cp #80
	ld a,#0f
	jr c,l451a
	xor a
.l451a
	ld hl,l4076
	add hl,bc
	ld (hl),a
	dec (ix+#15)
	jr z,l452f
	ld l,(ix+#0f)
	ld h,b
	add hl,de
	ld a,(hl)
	ld (ix+#12),a
	jr l4558
.l452f
	ld a,(ix+#0f)
	add #03
	ld (ix+#0f),a
	ld l,a
	ld h,b
	add hl,de
	ld a,(hl)
	cp #c0
	jr c,l4548
	and #3f
	ld (ix+#0f),a
	ld l,a
	ld h,b
	add hl,de
	ld a,(hl)
.l4548
	ld (ix+#12),a
	ld a,(ix+#0f)
	cp #0f
	jr z,l4558
	inc hl
	inc hl
	ld a,(hl)
	ld (ix+#15),a
.l4558
	ld bc,(l4020)
	sla c
	sla c
	ld a,c
	add (iy+#05)
	ld c,a
	ld hl,l4082
	add hl,bc
	ld a,(l405d)
	and (hl)
	ld (l405d),a
	ld b,#07
	call l4600
	or (ix+#09)
	and (hl)
	ld b,#07
	and #3f
	ld c,a
	push af
	call l4ce8
	pop af
	and (ix+#0c)
	jr nz,l459b
	ld a,(iy+#09)
	rla
	ld a,(iy+#0a)
	rla
	and #1f
	ld hl,l405c
	cp (hl)
	jr z,l459b
	jr nc,l459b
	ld (hl),a
.l459b
	ld c,(iy+#09)
	ld (ix+#00),c
	ld a,(l4020)
	add a
	ld b,a
	push bc
	call l4ce8
	pop bc
	ld c,(iy+#0a)
	ld (ix+#03),c
	inc b
	call l4ce8
	ld hl,l4076
	ld bc,(l4020)
	sla c
	add hl,bc
	ld e,(hl)
	ld a,(iy+#01)
	ld d,b
	and a
	jr z,l45cd
	ld b,a
.l45c8
	ld a,e
	add d
	ld d,a
	djnz l45c8
.l45cd
	ld l,d
	ld h,b
	ld e,l
	ld d,h
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,de
	ld a,h
	rl l
	adc #00
	ld (ix+#06),a
	ld c,a
	ld a,(l4020)
	add #08
	ld b,a
	call l4ce8
.l45e8
	ld hl,l4020
	dec (hl)
	bit 7,(hl)
	jp z,l42a2
	ld a,(l40e7)
	bit 7,a
	ret nz
	ld bc,(l405c)
	ld b,#06
	jp l4ce8
.l4600
	ld a,(l401f)
	ret
;
.init_music
.l4604
;
	di
	call l4282
	ld hl,l4d0c
	ld (l4026),hl
	ld hl,l500c
	ld (l4024),hl
	ld hl,l530c
	ld (l4028),hl
	ld hl,l53dc
	ld (l402a),hl
	ld hl,l5464
	ld (l402c),hl
	ld hl,l583a
	ld (l4030),hl
	ld hl,l581a
	ld (l402e),hl
	ex de,hl
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,de
	ld bc,#0010
	ld de,l4151
	ldir
	ld a,#02
	ld (l4020),a
	ld iy,l40f0
.l464c
	ld (iy+#00),#00
	ld (iy+#06),#00
	ld (iy+#0f),#00
	ld (iy+#1b),#01
	ld (iy+#27),#ff
	ld a,(iy+#48)
	ld (iy+#03),a
	call l46a5
	dec iy
	ld hl,l4020
	dec (hl)
	jp p,l464c
	xor a
	ld (l40ec),a
	ld (l40ea),a
	dec a
	ld (l40e6),a
	ld (l40e7),a
	ld hl,#000f
	ld (l40e8),hl
	call l4720
	ei
	ret
.l468b
	add hl,hl
	ld a,h
	ld c,l
	ld hl,#0000
	ld b,#10
.l4693
	adc hl,hl
	sbc hl,de
	jr nc,l469a
	add hl,de
.l469a
	rl c
	rla
	djnz l4693
	cpl
	ld h,a
	ld a,c
	cpl
	ld l,a
	ret
.l46a5
	ld hl,l4151
	ld bc,(l4020)
	sla c
	add hl,bc
	ld b,(hl)
	inc hl
	ld c,(hl)
	ld hl,(l4030)
	add hl,bc
	ld b,h
	ld c,l
.l46b8
	inc (iy+#03)
	ld l,(iy+#03)
	ld h,#00
	add hl,bc
	ld a,(hl)
	cp #fd
	jr c,l46dc
	jr z,l46d2
	ld (iy+#0c),a
	inc hl
	ld a,(hl)
	dec a
	ld (iy+#03),a
	ret
.l46d2
	inc (iy+#03)
	inc hl
	ld a,(hl)
	ld (l40e6),a
	jr l46b8
.l46dc
	bit 6,(hl)
	jr z,l4713
	bit 7,(iy+#0f)
	jr nz,l46fe
	ld (iy+#0f),#ff
	ld a,(hl)
	and #3f
	ld (iy+#12),a
	inc (iy+#03)
	inc hl
	push hl
	and a
	sbc hl,bc
	ld (iy+#15),l
	pop hl
	jr l4713
.l46fe
	dec (iy+#12)
	jr nz,l4709
	ld (iy+#0f),#00
	jr l46b8
.l4709
	ld a,(iy+#15)
	ld (iy+#03),a
	ld l,a
	ld h,#00
	add hl,bc
.l4713
	ld a,(hl)
	ld (iy+#09),a
	inc (iy+#03)
	inc hl
	ld a,(hl)
	ld (iy+#0c),a
	ret
.l4720
	ld bc,#0800
	call l4ce8
	ld bc,#0900
	call l4ce8
	ld bc,#0a00
	jp l4ce8
.l4732
	ld a,#ff
	ld (l405d),a
	ld a,#1f
	ld (l405c),a
	ld a,(l40e7)
	bit 7,a
	ret z
	ld a,#1f
	ld (l408e),a
	ld a,(l40e6)
	bit 7,a
	jr nz,l4761
	ld hl,l40ea
	dec (hl)
	jp p,l4761
	ld (hl),a
	ld hl,(l40e8)
	dec hl
	ld (l40e8),hl
	ld a,h
	or l
	jr z,l47a9
.l4761
	ld a,#02
	ld (l4020),a
.l4766
	ld bc,(l4020)
	ld a,c
	and a
	ld hl,#0000
	jr z,l4778
	ld l,#0e
	dec a
	jr z,l4778
	sla l
.l4778
	ld (l4022),hl
	ld iy,l40ee
	add iy,bc
	ld b,h
	ld c,l
	ld ix,l4032
	add ix,bc
	ld a,(ix+#03)
	and a
	jr z,l4793
	ld (iy+#00),#ff
.l4793
	ld a,(l40ec)
	and a
	jp nz,l48f4
	dec (iy+#1b)
	jp nz,l48f4
	ld a,(iy+#0c)
	cp #fe
	jr c,l47b7
	jr nz,l47b0
.l47a9
	xor a
	ld (l40e7),a
	jp l4720
.l47b0
	ld (iy+#06),#00
	call l46a5
.l47b7
	ld l,(iy+#0c)
	ld h,#00
	add hl,hl
	ld bc,(l402a)
	add hl,bc
	ld b,(hl)
	inc hl
	ld c,(hl)
	ld hl,(l402c)
	add hl,bc
	ld b,h
	ld c,l
	ld a,#ff
	ld (l40eb),a
	ld l,(iy+#06)
	ld h,#00
	ld (iy+#2a),h
	ld (iy+#24),h
	add hl,bc
	ld a,(hl)
	ld (iy+#18),a
	and #3f
	ld (iy+#1b),a
	bit 6,(iy+#18)
	jr z,l4801
	ld ix,l4090
	ld de,(l4020)
	add ix,de
	ld (ix+#0f),#09
	ld (ix+#12),#01
	ld (ix+#15),#01
.l4801
	bit 7,(iy+#18)
	jr z,l4818
	inc hl
	inc (iy+#06)
	ld a,(hl)
	bit 7,a
	jr z,l4815
	ld (iy+#2a),a
	jr l4818
.l4815
	ld (l40eb),a
.l4818
	inc hl
	inc (iy+#06)
	ld a,(hl)
	ld (iy+#3c),a
	and #7f
	ld (iy+#21),a
	add a
	add #61
	ld e,a
	adc #41
	sub e
	ld d,a
	ld ix,l4145
	ld bc,(l4020)
	sla c
	add ix,bc
	ld a,(de)
	ld (ix+#00),a
	inc de
	ld a,(de)
	ld (ix+#01),a
	ld a,(iy+#00)
	and a
	jr z,l485c
	ld ix,l4032
	ld bc,(l4022)
	add ix,bc
	ld a,(ix+#03)
	and a
	jr nz,l485c
	ld (iy+#3c),#00
.l485c
	ld a,(l40eb)
	bit 7,a
	jr nz,l486f
	cp (iy+#27)
	jr z,l486f
	ld (iy+#27),a
	ld (iy+#3c),#00
.l486f
	bit 7,(iy+#3c)
	jr nz,l48c0
	push hl
	ld l,(iy+#27)
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ex de,hl
	ld hl,l4139
	ld bc,(l4020)
	sla c
	add hl,bc
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,(l4028)
	add hl,de
	ex (sp),hl
	pop ix
	ld a,(ix+#00)
	ld (iy+#1e),a
	ld a,(ix+#02)
	ld (iy+#3f),a
	ld a,(ix+#07)
	ld (iy+#42),a
	ld a,(ix+#0f)
	ld (iy+#30),a
	ld ix,l4032
	ld bc,(l4022)
	add ix,bc
	ld a,(ix+#03)
	and a
	jr nz,l48c0
	ld (iy+#00),#00
.l48c0
	inc hl
	inc (iy+#06)
	ld a,(hl)
	cp #ff
	jr nz,l48d5
	ld (iy+#06),#00
	dec (iy+#09)
	jr nz,l48d5
	call l46a5
.l48d5
	bit 7,(iy+#00)
	jp nz,l4cae
	ld ix,l4139
	ld bc,(l4020)
	sla c
	add ix,bc
	ld (ix+#12),b
	ld (ix+#13),b
	ld (iy+#45),b
	jp l4a97
.l48f4
	bit 7,(iy+#00)
	jp nz,l4cae
	ld ix,l4139
	ld bc,(l4020)
	sla c
	add ix,bc
	ld a,(iy+#2a)
	and a
	jr z,l492c
	ld h,(ix+#0d)
	ld l,(ix+#0c)
	ld c,a
	cp #c0
	jr c,l491e
	and #3f
	ld c,a
	add hl,bc
	jr l4923
.l491e
	and #3f
	ld c,a
	sbc hl,bc
.l4923
	ld (ix+#0c),l
	ld (ix+#0d),h
	jp l49ee
.l492c
	ld a,(iy+#30)
	and a
	jr z,l4938
	dec (iy+#30)
	jp l49ee
.l4938
	ld a,(iy+#42)
	and a
	jp nz,l49ee
	ld e,(ix+#00)
	ld d,(ix+#01)
	ld hl,(l4028)
	add hl,de
	ld c,#0e
	add hl,bc
	ld a,(hl)
	and a
	jp z,l49ee
	bit 7,(ix+#13)
	jr nz,l49a9
	ld e,a
	ld d,#00
	ld hl,l40c0
	add hl,de
	ld a,(hl)
	ld (iy+#39),a
	ld hl,l40d3
	add hl,de
	ld a,(hl)
	ld (ix+#12),a
	ld (iy+#33),d
	ld (iy+#36),d
	ld l,(iy+#21)
	ld h,d
	add hl,hl
	ld de,l4161
	add hl,de
	ld a,(hl)
	ld c,a
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld b,a
	ld (ix+#0d),a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld h,b
	ld l,c
	and a
	sbc hl,de
	ld e,(ix+#12)
	ld d,(ix+#13)
	call l468b
	ld a,h
	or l
	jr nz,l499d
	ld hl,#0001
.l499d
	ld (ix+#06),l
	ld (ix+#07),h
	ld (ix+#13),#ff
	jr l49ee
.l49a9
	ld e,(ix+#06)
	ld d,(ix+#07)
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	bit 7,(iy+#2d)
	jr nz,l49be
	add hl,de
	jr l49c1
.l49be
	and a
	sbc hl,de
.l49c1
	ld (ix+#0c),l
	ld (ix+#0d),h
	bit 7,(iy+#33)
	jr nz,l49e5
	inc (iy+#36)
	ld a,(iy+#36)
	cp (iy+#39)
	jr c,l49ee
	ld (iy+#33),#ff
	ld a,(iy+#2d)
	cpl
	ld (iy+#2d),a
	jr l49ee
.l49e5
	dec (iy+#36)
	jr nz,l49ee
	ld (iy+#33),#00
.l49ee
	ld h,(ix+#01)
	ld l,(ix+#00)
	bit 0,(iy+#3f)
	jr z,l4a08
	ld a,(iy+#45)
	srl a
	and #03
	ld e,a
	ld d,#00
	add hl,de
	jp l4ad6
.l4a08
	bit 1,(iy+#3f)
	jr z,l4a40
	bit 0,(iy+#45)
	jr nz,l4a1b
	ld l,(iy+#21)
	ld h,#00
	jr l4a31
.l4a1b
	ld bc,(l4028)
	add hl,bc
	ld bc,#000d
	add hl,bc
	ld l,(hl)
	ld h,b
	bit 7,l
	jr z,l4a31
	ld a,l
	and #7f
	add (iy+#21)
	ld l,a
.l4a31
	add hl,hl
	ld de,l4161
	ex de,hl
	add hl,de
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
.l4a40
	bit 2,(iy+#3f)
	jr z,l4a81
	ld l,(ix+#00)
	ld h,(ix+#01)
	bit 0,(iy+#45)
	jr nz,l4a5a
	ld bc,(l4028)
	add hl,bc
	ld a,(hl)
	jr l4a5c
.l4a5a
	ld a,#02
.l4a5c
	ld (iy+#1e),a
	ld bc,(l4028)
	ld l,(ix+#00)
	ld h,(ix+#01)
	add hl,bc
	ld bc,#0004
	add hl,bc
	ld a,(ix+#0c)
	add (hl)
	ld c,a
	ld a,(ix+#0d)
	adc b
	ld b,a
	rla
	jr c,l4a81
	ld (ix+#0c),c
	ld (ix+#0d),b
.l4a81
	bit 3,(iy+#3f)
	jr z,l4a97
	ld a,(iy+#45)
	and #03
	add (ix+#00)
	ld l,a
	adc (ix+#01)
	sub l
	ld h,a
	jr l4ad6
.l4a97
	bit 4,(iy+#3f)
	jr z,l4abe
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(iy+#42)
	ld bc,(l4028)
	and a
	jr z,l4ab3
	add hl,bc
	ld bc,#0008
	jr l4ab9
.l4ab3
	bit 7,(iy+#24)
	jr nz,l4abe
.l4ab9
	add hl,bc
	ld a,(hl)
	ld (iy+#1e),a
.l4abe
	bit 5,(iy+#3f)
	jr z,l4b16
	ld a,(iy+#42)
	and a
	jr z,l4afd
	ld a,(iy+#45)
	add (ix+#00)
	ld l,a
	adc (ix+#01)
	sub l
	ld h,a
.l4ad6
	ld bc,(l4028)
	add hl,bc
	ld bc,#0009
	add hl,bc
	ld a,(hl)
	ld l,a
	ld h,b
	bit 7,a
	jr z,l4b06
	and #7f
	ld l,a
	cp #40
	jr nc,l4af3
	add (iy+#21)
	ld l,a
	jr l4b06
.l4af3
	and #3f
	ld l,a
	ld a,(iy+#21)
	sub l
	ld l,a
	jr l4b06
.l4afd
	bit 7,(iy+#24)
	jr nz,l4b16
	ld l,(iy+#21)
.l4b06
	ld h,#00
	add hl,hl
	ld bc,l4161
	add hl,bc
	ld a,(hl)
	inc hl
	ld (ix+#0c),a
	ld a,(hl)
	ld (ix+#0d),a
.l4b16
	bit 7,(iy+#3c)
	jr nz,l4b68
	ld a,(iy+#45)
	and a
	jr nz,l4b68
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld bc,(l4028)
	add hl,bc
	inc hl
	ld l,(hl)
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld bc,(l4026)
	add hl,bc
	ex de,hl
	ld hl,l40ae
	ld bc,(l4020)
	sla c
	add hl,bc
	ld (hl),e
	inc hl
	ld (hl),d
	ld ix,l4090
	ld bc,(l4020)
	add ix,bc
	inc de
	inc de
	ld a,(de)
	ld (ix+#15),a
	ld (ix+#0f),b
	ld (ix+#12),#01
	ld hl,l40a8
	sla c
	add hl,bc
	ld (hl),b
	inc hl
	ld (hl),b
.l4b68
	ld bc,(l4020)
	ld ix,l4090
	add ix,bc
	sla c
	ld hl,l40ae
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#0f)
	ld h,b
	add hl,de
	ex de,hl
	bit 7,(ix+#12)
	jr nz,l4bef
	dec (ix+#12)
	jr nz,l4bef
	ld hl,l40a8
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	dec hl
	inc de
	ld a,(de)
	dec de
	add c
	ld c,a
	adc b
	sub c
	ld b,a
	ld a,c
	cp #10
	jr c,l4bab
	cp #80
	jr c,l4ba9
	ld c,#00
	jr l4bab
.l4ba9
	ld c,#0f
.l4bab
	ld (hl),c
	inc hl
	ld (hl),b
	dec (ix+#15)
	jr z,l4bb9
	ld a,(de)
	ld (ix+#12),a
	jr l4bef
.l4bb9
	ld a,(ix+#0f)
	add #03
	ld (ix+#0f),a
	ld hl,l40ae
	ld bc,(l4020)
	sla c
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,a
	ld h,b
	add hl,de
	ld a,(hl)
	cp #c0
	jr c,l4bdf
	and #3f
	ld (ix+#0f),a
	ld l,a
	ld h,b
	add hl,de
	ld a,(hl)
.l4bdf
	ld (ix+#12),a
	ld a,(ix+#0f)
	cp #0f
	jr z,l4bef
	inc hl
	inc hl
	ld a,(hl)
	ld (ix+#15),a
.l4bef
	ld a,(l405d)
	and #38
	cp #38
	jr z,l4c00
	ld a,(iy+#1e)
	and #fd
	ld (iy+#1e),a
.l4c00
	call l4600
	or (ix+#09)
	ld c,(iy+#1e)
	ld hl,(l4020)
	ld b,h
	add hl,hl
	add hl,hl
	add hl,bc
	ld bc,l4082
	add hl,bc
	and (hl)
	push af
	ld c,a
	ld b,#07
	call l4ce8
	ld hl,l4145
	ld bc,(l4020)
	sla c
	add hl,bc
	ex de,hl
	pop af
	and (ix+#0c)
	jr nz,l4c3e
	ld a,(de)
	rla
	inc de
	ld a,(de)
	dec de
	rla
	and #1f
	ld hl,l408e
	cp (hl)
	jr z,l4c3e
	jr nc,l4c3e
	ld (hl),a
.l4c3e
	ld a,(de)
	inc de
	ld l,a
	ld a,(de)
	ld h,a
	ld a,(l4020)
	and a
	jr z,l4c56
	ld d,#00
	ld e,h
	cp #01
	jr nz,l4c53
	add hl,de
	jr l4c56
.l4c53
	and a
	sbc hl,de
.l4c56
	ld (ix+#00),l
	ld (ix+#03),h
	ld c,h
	add a
	ld b,a
	push bc
	ld c,l
	call l4ce8
	pop bc
	inc b
	call l4ce8
	ld hl,l40a8
	ld bc,(l4020)
	sla c
	add hl,bc
	ld e,(hl)
	ld a,(l40e8)
	ld d,b
	and a
	jr z,l4c81
	ld b,a
.l4c7c
	ld a,e
	add d
	ld d,a
	djnz l4c7c
.l4c81
	ld l,d
	ld h,b
	ld e,l
	ld d,h
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,de
	ld a,h
	rl l
	adc #00
	ld (ix+#06),a
	ld c,a
	ld a,(l4020)
	add #08
	ld b,a
	call l4ce8
	ld a,(iy+#42)
	and a
	jr nz,l4ca8
	ld (iy+#24),#ff
	jr l4cab
.l4ca8
	dec (iy+#42)
.l4cab
	inc (iy+#45)
.l4cae
	ld hl,l4020
	dec (hl)
	jp p,l4766
	ld hl,l40ec
	dec (hl)
	jp p,l4cd0
	ld hl,l40ed
	dec (hl)
	jp p,l4cc5
	ld (hl),#07
.l4cc5
	ld e,(hl)
	ld d,#00
	ld hl,l4159
	add hl,de
	ld a,(hl)
	ld (l40ec),a
.l4cd0
	ld a,(l405d)
	and #38
	cp #38
	jr z,l4cdf
	ld a,(l405c)
	ld (l408e),a
.l4cdf
	ld bc,(l408e)
	ld b,#06
	jp l4ce8
.l4ce8
	ld a,b
	cp #07
	jr nz,l4cf1
	ld a,c
	ld (l401f),a
.l4cf1
	ld a,b
	ld b,#f4
	out (c),a
	ld b,#f6
	ld a,#c0
	out (c),a
	xor a
	out (c),a
	ld b,#f4
	out (c),c
	ld bc,#f680
	out (c),c
	out (c),a
	ret
	ret
.l4d0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#0c,#01,#08,#00,#01,#05,#ff
	db #02,#80,#00,#00,#00,#00,#00,#00
	db #01,#08,#01,#30,#01,#01,#30,#ff
	db #01,#c3,#00,#00,#00,#00,#00,#00
	db #01,#09,#01,#01,#fd,#03,#40,#00
	db #03,#c0,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#04,#01,#03,#04,#01
	db #05,#01,#ff,#05,#1a,#00,#01,#c6
	db #01,#02,#01,#04,#01,#03,#05,#01
	db #03,#03,#ff,#03,#c6,#00,#00,#00
	db #01,#07,#01,#04,#01,#03,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#0d,#01,#01,#00,#01,#80,#00
	db #00,#00,#00,#00,#05,#ff,#0f,#80
	db #01,#0c,#01,#08,#00,#01,#03,#ff
	db #06,#80,#00,#00,#00,#00,#00,#00
	db #01,#08,#01,#04,#ff,#08,#01,#08
	db #01,#01,#ff,#08,#32,#00,#01,#c0
	db #01,#06,#01,#03,#01,#04,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#08,#01,#04,#ff,#08,#01,#08
	db #01,#01,#ff,#08,#20,#00,#01,#c0
	db #01,#05,#01,#04,#01,#03,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #38,#04,#02,#01,#01,#03,#0e,#00
	db #01,#2e,#ff,#03,#c3,#00,#00,#00
	db #01,#01,#01,#04,#01,#09,#11,#ff
	db #09,#c3,#00,#00,#00,#00,#00,#00
	db #01,#0b,#01,#01,#fc,#04,#02,#00
	db #01,#c0,#00,#00,#00,#00,#00,#00
	db #01,#07,#01,#03,#01,#04,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#0d,#01,#08,#00,#01,#01,#ff
	db #08,#80,#00,#00,#00,#00,#00,#00
	db #01,#08,#01,#09,#05,#01,#0a,#ff
	db #05,#c3,#00,#00,#00,#00,#00,#00
	db #01,#0e,#01,#01,#fe,#01,#01,#01
	db #01,#c3,#00,#00,#00,#00,#00,#00
	db #01,#0f,#01,#01,#00,#01,#01,#ff
	db #0f,#80,#00,#00,#00,#00,#00,#00
	db #01,#0c,#01,#01,#ff,#01,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#0f,#01,#01,#00,#01,#01,#fc
	db #04,#80,#00,#00,#00,#00,#00,#00
	db #01,#0e,#01,#01,#ff,#0f,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#0e,#01,#01,#ff,#01,#01,#01
	db #01,#c3,#00,#00,#00,#00,#00,#00
	db #01,#0f,#01,#01,#00,#01,#01,#ff
	db #03,#01,#01,#01,#c6,#00,#00,#00
	db #01,#0d,#01,#0a,#00,#01,#02,#ff
	db #0f,#80,#00,#00,#00,#00,#00,#00
	db #01,#0c,#01,#02,#01,#03,#01,#00
	db #01,#01,#ff,#0f,#80,#00,#00,#00
	db #01,#0d,#01,#03,#01,#01,#01,#ff
	db #02,#04,#00,#01,#02,#ff,#0f,#80
	db #01,#0e,#01,#02,#fc,#01,#02,#04
	db #01,#c3,#00,#00,#00,#00,#00,#00
	db #01,#0f,#01,#0a,#00,#01,#04,#ff
	db #0f,#80,#00,#00,#00,#00,#00,#00
	db #01,#0f,#01,#06,#00,#01,#05,#ff
	db #0f,#80,#00,#00,#00,#00,#00,#00
	db #01,#0e,#01,#01,#ff,#0f,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#0d,#01,#01,#00,#01,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#0d,#01,#01,#ff,#01,#01,#01
	db #01,#c3,#00,#00,#00,#00,#00,#00
	db #01,#0e,#01,#0a,#00,#01,#03,#ff
	db #0f,#80,#00,#00,#00,#00,#00,#00
	db #01,#0a,#01,#01,#01,#04,#08,#00
	db #01,#04,#ff,#0f,#80,#00,#00,#00
	db #01,#0d,#01,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#0d,#01,#10,#00,#01,#01,#ff
	db #0f,#80,#00,#00,#00,#00,#00,#00
	db #01,#06,#01,#05,#01,#07,#32,#00
	db #04,#10,#ff,#0f,#80,#00,#00,#00
	db #01,#09,#01,#04,#01,#05,#04,#ff
	db #0f,#80,#00,#00,#00,#00,#00,#00
	db #01,#0a,#01,#01,#01,#04,#0c,#00
	db #01,#07,#ff,#0f,#80,#00,#00,#00
	db #01,#09,#01,#05,#01,#06,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#0c,#01,#02,#01,#03,#01,#00
	db #01,#01,#ff,#0f,#80,#00,#00,#00
	db #01,#0c,#01,#01,#fd,#01,#01,#01
	db #01,#c3,#00,#00,#00,#00,#00,#00
	db #01,#0c,#01,#01,#ff,#0f,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#09,#01,#06,#01,#03,#32,#00
	db #01,#80,#00,#0f,#08,#ff,#0f,#80
	db #01,#07,#01,#18,#01,#05,#18,#01
	db #01,#18,#ff,#01,#c6,#00,#00,#00
.l500c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #03,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #03,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#04,#ff,#08,#00,#02,#00
	db #03,#00,#00,#02,#00,#09,#00,#80
	db #01,#01,#01,#ff,#00,#24,#03,#00
	db #03,#00,#00,#01,#00,#09,#00,#02
	db #01,#01,#01,#ff,#00,#1f,#04,#02
	db #03,#00,#00,#00,#01,#00,#00,#00
	db #01,#01,#01,#ff,#00,#20,#05,#02
	db #03,#00,#00,#00,#01,#00,#00,#00
	db #01,#01,#01,#ff,#0f,#ff,#06,#08
	db #03,#00,#00,#01,#08,#00,#00,#01
	db #01,#01,#01,#ff,#0f,#ff,#06,#02
	db #03,#00,#00,#15,#0e,#09,#02,#00
	db #01,#01,#01,#ff,#0e,#00,#0c,#02
	db #03,#00,#00,#04,#a5,#00,#00,#00
	db #01,#01,#01,#ff,#00,#80,#09,#00
	db #03,#00,#00,#00,#00,#09,#00,#01
	db #01,#01,#01,#ff,#09,#00,#0a,#0a
	db #03,#00,#00,#01,#0e,#09,#01,#00
	db #01,#01,#01,#ff,#00,#20,#0b,#00
	db #03,#00,#00,#00,#00,#09,#00,#00
	db #03,#02,#04,#ff,#0f,#00,#0c,#00
	db #03,#00,#00,#02,#00,#09,#00,#98
	db #01,#01,#04,#ff,#00,#20,#0d,#01
	db #03,#00,#00,#01,#00,#09,#05,#2e
	db #02,#02,#01,#ff,#0f,#ff,#0e,#00
	db #03,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#ff,#0c,#00,#0f,#08
	db #03,#00,#00,#08,#03,#02,#82,#80
	db #01,#01,#01,#ff,#0a,#00,#10,#0a
	db #03,#00,#00,#00,#0f,#00,#00,#00
	db #01,#01,#01,#ff,#09,#28,#10,#0a
	db #03,#00,#00,#0a,#0f,#09,#00,#00
	db #01,#01,#01,#ff,#0c,#00,#12,#00
	db #03,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#ff,#09,#00,#10,#0a
	db #03,#00,#00,#01,#0c,#09,#01,#00
	db #01,#02,#01,#09,#09,#80,#14,#02
	db #03,#00,#00,#00,#0c,#05,#00,#30
	db #01,#02,#01,#03,#06,#00,#14,#02
	db #03,#00,#00,#00,#0c,#05,#00,#30
	db #01,#01,#01,#02,#0f,#00,#16,#02
	db #04,#00,#00,#00,#0c,#00,#00,#60
	db #01,#01,#01,#01,#00,#68,#17,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#12,#03,#00,#18,#08
	db #01,#00,#00,#0a,#04,#00,#00,#00
	db #01,#01,#01,#30,#00,#2b,#19,#00
	db #01,#00,#00,#00,#00,#09,#00,#01
	db #03,#02,#04,#1e,#0c,#00,#1a,#00
	db #02,#00,#00,#02,#00,#02,#01,#00
	db #01,#01,#04,#0a,#03,#48,#1b,#02
	db #03,#00,#00,#00,#36,#05,#00,#05
	db #02,#03,#07,#24,#0b,#00,#1c,#09
	db #02,#00,#00,#01,#00,#02,#01,#01
	db #02,#02,#17,#08,#0d,#0e,#1d,#01
	db #02,#00,#00,#00,#02,#08,#00,#80
	db #03,#02,#0e,#16,#0f,#ff,#1e,#09
	db #01,#00,#00,#01,#0e,#04,#02,#00
	db #03,#02,#31,#1a,#0f,#ff,#1f,#09
	db #01,#00,#00,#01,#0f,#04,#02,#00
	db #01,#01,#01,#06,#00,#39,#20,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#06,#00,#4b,#20,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#21,#01,#30,#22,#08
	db #01,#00,#00,#13,#02,#00,#00,#00
	db #03,#02,#04,#20,#04,#00,#23,#00
	db #03,#00,#00,#02,#00,#09,#01,#00
	db #03,#02,#04,#31,#07,#00,#24,#02
	db #02,#00,#00,#02,#00,#09,#01,#00
	db #01,#01,#01,#ff,#07,#18,#25,#02
	db #03,#00,#00,#00,#d7,#02,#00,#00
	db #01,#01,#01,#12,#07,#18,#26,#01
	db #03,#00,#00,#00,#00,#02,#00,#10
	db #01,#01,#ff,#80,#00,#18,#27,#00
	db #01,#00,#00,#02,#00,#09,#00,#01
	db #01,#02,#01,#40,#0f,#00,#28,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#40,#00,#3c,#29,#08
	db #02,#00,#00,#01,#00,#01,#00,#ab
	db #03,#03,#01,#ff,#00,#60,#2a,#00
	db #02,#00,#00,#00,#00,#02,#00,#01
	db #01,#01,#03,#0f,#01,#06,#2b,#02
	db #03,#00,#00,#00,#12,#05,#00,#03
	db #02,#02,#01,#12,#00,#00,#2c,#0a
	db #04,#00,#00,#00,#01,#19,#09,#18
	db #02,#02,#0d,#01,#0f,#00,#2d,#09
	db #04,#00,#00,#00,#01,#0d,#04,#02
	db #03,#01,#11,#09,#05,#00,#2c,#03
	db #04,#00,#00,#01,#2c,#00,#00,#00
	db #01,#01,#01,#ff,#03,#00,#2f,#0a
	db #01,#00,#00,#00,#04,#02,#00,#18
.l530c
	db #01,#00,#20,#00,#00,#00,#00,#01
	db #02,#10,#00,#00,#00,#00,#00,#ff
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#ff
	db #01,#2e,#08,#00,#00,#00,#00,#00
	db #00,#80,#85,#89,#8c,#00,#00,#ff
	db #01,#07,#30,#00,#00,#00,#00,#01
	db #02,#3c,#00,#00,#00,#00,#09,#10
	db #01,#07,#20,#00,#00,#00,#00,#02
	db #00,#8c,#8c,#00,#00,#00,#07,#18
	db #02,#13,#34,#00,#00,#00,#00,#01
	db #03,#30,#00,#00,#00,#00,#00,#ff
	db #01,#08,#30,#00,#00,#00,#00,#01
	db #01,#8c,#00,#00,#00,#00,#09,#18
	db #01,#21,#00,#00,#00,#00,#00,#01
	db #02,#8c,#8c,#00,#00,#00,#0a,#10
	db #01,#21,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#07,#0c
	db #01,#15,#20,#00,#00,#00,#00,#02
	db #00,#87,#87,#00,#00,#00,#0c,#0c
	db #01,#11,#30,#00,#00,#00,#00,#01
	db #02,#3c,#00,#00,#00,#00,#09,#10
	db #01,#07,#00,#00,#00,#00,#00,#01
	db #02,#8c,#8c,#00,#00,#00,#0a,#10
	db #01,#01,#30,#00,#00,#00,#00,#01
	db #02,#3c,#00,#00,#00,#00,#09,#10
.l53dc
	db #03,#b2,#00,#b2,#01,#65,#02,#a3
	db #02,#b5,#01,#6f,#02,#e1,#02,#62
	db #00,#48,#02,#78,#ff,#ff,#00,#56
	db #00,#72,#00,#64,#01,#79,#02,#48
	db #00,#2c,#00,#3e,#02,#70,#01,#8d
	db #00,#8a,#02,#c9,#01,#83,#ff,#ff
	db #01,#25,#01,#9f,#ff,#ff,#00,#92
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#01,#b7,#01,#33,#02,#2a
	db #00,#80,#01,#51,#01,#5b,#00,#a0
	db #03,#04,#03,#18,#03,#12,#02,#17
	db #02,#07,#00,#00,#ff,#ff,#01,#39
	db #00,#0e,#02,#98,#01,#c9,#03,#26
	db #03,#38,#03,#32,#01,#db,#01,#e3
	db #00,#1e,#00,#d3,#00,#eb,#00,#fb
	db #03,#a0,#01,#eb,#03,#7f,#03,#44
	db #01,#1f,#03,#5e,#02,#90,#02,#86
.l5464
	db #92,#03,#17,#03,#17,#03,#17,#06
	db #17,#0c,#17,#06,#17,#ff,#92,#0a
	db #23,#03,#23,#03,#23,#06,#23,#06
	db #23,#06,#23,#06,#23,#ff,#92,#0a
	db #23,#03,#23,#03,#23,#06,#23,#06
	db #23,#0c,#23,#ff,#b0,#02,#3b,#30
	db #39,#30,#39,#30,#3b,#30,#3b,#30
	db #39,#30,#38,#30,#b8,#ff,#98,#02
	db #38,#18,#3a,#18,#38,#58,#b8,#ff
	db #92,#03,#25,#03,#25,#03,#25,#06
	db #25,#0c,#19,#06,#19,#ff,#92,#03
	db #25,#03,#25,#03,#25,#06,#27,#0c
	db #2e,#06,#2c,#ff,#92,#03,#20,#03
	db #20,#03,#20,#06,#20,#0c,#2c,#06
	db #20,#ff,#92,#03,#1e,#03,#1e,#03
	db #1e,#06,#1e,#0c,#2a,#06,#2a,#ff
	db #98,#03,#22,#0c,#22,#08,#16,#04
	db #16,#ff,#b0,#03,#1f,#18,#2b,#18
	db #1f,#ff,#b0,#03,#1d,#06,#18,#2a
	db #18,#30,#1d,#06,#19,#2a,#19,#ff
	db #b0,#03,#1d,#06,#1b,#2a,#0f,#30
	db #19,#06,#25,#12,#25,#06,#27,#12
	db #27,#ff,#b0,#03,#1d,#30,#9d,#30
	db #1f,#30,#1f,#30,#1d,#06,#18,#92
	db #04,#3c,#0c,#3e,#0c,#3f,#b0,#03
	db #1d,#06,#18,#92,#04,#3f,#0c,#3e
	db #0c,#3c,#ff,#b0,#04,#41,#18,#3f
	db #18,#3c,#18,#3a,#18,#3c,#30,#bc
	db #30,#44,#18,#41,#18,#3c,#30,#3a
	db #30,#37,#ff,#98,#04,#35,#0c,#38
	db #0c,#37,#18,#35,#18,#30,#30,#2e
	db #30,#3a,#ff,#98,#04,#3c,#0c,#38
	db #0c,#37,#18,#35,#18,#30,#18,#2e
	db #18,#30,#18,#2c,#18,#2b,#30,#1d
	db #30,#9d,#30,#19,#30,#99,#30,#16
	db #30,#96,#30,#12,#30,#92,#ff,#b0
	db #04,#9d,#70,#9d,#ff,#83,#09,#41
	db #03,#3f,#03,#3c,#03,#4b,#03,#46
	db #03,#48,#ff,#83,#09,#41,#03,#3f
	db #ff,#b0,#0c,#17,#30,#23,#30,#17
	db #30,#23,#30,#17,#24,#23,#0c,#23
	db #18,#23,#18,#17,#18,#23,#18,#17
	db #ff,#83,#06,#36,#03,#34,#03,#38
	db #03,#3b,#ff,#83,#06,#34,#03,#32
	db #03,#36,#03,#39,#ff,#83,#06,#44
	db #03,#42,#03,#38,#03,#3b,#ff,#83
	db #06,#42,#03,#40,#03,#31,#03,#3d
	db #ff,#83,#06,#3d,#03,#38,#03,#31
	db #03,#3d,#ff,#83,#06,#3f,#03,#38
	db #03,#31,#03,#3d,#ff,#98,#02,#41
	db #18,#bf,#18,#35,#18,#b3,#18,#3e
	db #18,#bc,#18,#3e,#18,#bc,#ff,#8c
	db #0b,#35,#0c,#38,#0c,#37,#0c,#33
	db #18,#35,#18,#3c,#0c,#38,#0c,#3a
	db #0c,#37,#0c,#33,#30,#30,#ff,#98
	db #02,#41,#18,#bf,#18,#35,#18,#b3
	db #18,#3e,#18,#bc,#18,#3e,#18,#be
	db #ff,#88,#07,#35,#04,#36,#04,#38
	db #14,#3a,#24,#41,#06,#3f,#06,#3d
	db #0c,#3a,#ff,#98,#07,#37,#18,#37
	db #30,#3c,#ff,#b0,#07,#37,#18,#3a
	db #18,#3c,#ff,#92,#06,#23,#03,#23
	db #03,#23,#06,#23,#0c,#17,#06,#17
	db #12,#23,#03,#23,#03,#23,#06,#23
	db #06,#17,#06,#17,#06,#17,#ff,#92
	db #05,#23,#06,#23,#18,#23,#12,#23
	db #06,#23,#0c,#23,#0c,#23,#ff,#92
	db #05,#23,#06,#23,#18,#23,#12,#23
	db #06,#23,#0c,#23,#88,#04,#38,#04
	db #39,#ff,#86,#04,#3b,#1e,#40,#08
	db #36,#04,#38,#24,#39,#08,#3b,#04
	db #3b,#0c,#44,#08,#42,#04,#3b,#0c
	db #44,#08,#42,#04,#3b,#30,#44,#ff
	db #a4,#04,#28,#08,#2c,#04,#2f,#24
	db #26,#08,#28,#04,#26,#18,#2f,#0c
	db #2d,#0c,#2c,#18,#35,#0c,#36,#0c
	db #38,#ff,#92,#0a,#19,#03,#14,#03
	db #14,#06,#14,#0c,#14,#06,#19,#ff
	db #83,#0b,#49,#03,#4d,#2a,#50,#ff
	db #92,#03,#16,#03,#16,#03,#16,#06
	db #18,#0c,#16,#06,#1d,#ff,#89,#0b
	db #4d,#09,#49,#0c,#51,#12,#50,#ff
	db #8c,#07,#41,#06,#44,#1e,#43,#ff
	db #8c,#03,#19,#58,#99,#88,#04,#35
	db #04,#36,#ff,#86,#04,#38,#2a,#3d
	db #24,#bd,#08,#33,#04,#35,#30,#36
	db #18,#38,#18,#36,#ff,#88,#04,#35
	db #04,#36,#06,#38,#1e,#3d,#24,#bd
	db #08,#33,#04,#35,#30,#31,#30,#2c
	db #ff,#88,#07,#29,#04,#2a,#04,#2c
	db #14,#2e,#24,#35,#06,#33,#06,#32
	db #0c,#2e,#18,#2b,#18,#32,#30,#37
	db #ff,#88,#08,#35,#04,#36,#04,#38
	db #14,#3a,#24,#41,#06,#3f,#06,#3e
	db #0c,#3a,#18,#37,#18,#2b,#88,#07
	db #32,#08,#30,#08,#2f,#08,#30,#08
	db #2f,#08,#2b,#ff,#83,#06,#41,#03
	db #3f,#03,#3c,#03,#4b,#03,#46,#03
	db #48,#ff,#83,#06,#41,#03,#3f,#ff
	db #83,#06,#37,#03,#39,#03,#3b,#03
	db #3e,#03,#41,#03,#43,#ff,#83,#09
	db #35,#03,#38,#03,#35,#03,#3a,#03
	db #36,#ff,#83,#09,#35,#03,#35,#ff
	db #83,#09,#37,#03,#38,#03,#37,#03
	db #3c,#03,#3a,#ff,#8c,#0b,#35,#0c
	db #38,#0c,#37,#0c,#33,#18,#38,#18
	db #3c,#0c,#38,#0c,#3a,#0c,#36,#0c
	db #33,#18,#30,#18,#2e,#ff,#b0,#0b
	db #30,#70,#b0,#18,#41,#30,#48,#08
	db #46,#08,#45,#08,#41,#30,#3f,#30
	db #3c,#98,#02,#3d,#18,#bf,#18,#3d
	db #18,#bf,#30,#3c,#70,#bc,#ff,#98
	db #02,#3d,#18,#bf,#18,#3d,#18,#bf
	db #98,#0b,#3f,#18,#3c,#30,#48,#98
	db #02,#3d,#18,#bf,#18,#3d,#18,#bf
	db #b0,#04,#3f,#18,#46,#18,#48,#ff
	db #b0,#02,#3b,#30,#39,#30,#38,#30
	db #38,#30,#3b,#30,#39,#30,#38,#30
.l581a equ $ + 6
	db #3b,#ff,#8c,#00,#30,#ff,#00,#00
	db #00,#4c,#00,#98,#ff,#ff,#01,#01
	db #01,#01,#01,#01,#01,#01,#00,#de
	db #00,#e2,#00,#e6,#ff,#ff,#02,#01
.l583a equ $ + 6
	db #01,#01,#02,#01,#01,#01,#43,#01
	db #2d,#01,#30,#40,#01,#30,#01,#38
	db #01,#10,#04,#11,#02,#08,#01,#0b
	db #01,#0d,#01,#0c,#01,#0d,#02,#08
	db #42,#02,#24,#01,#14,#40,#01,#1b
	db #01,#27,#01,#01,#42,#02,#0c,#02
	db #0d,#40,#01,#39,#01,#3a,#01,#3b
	db #01,#40,#15,#18,#01,#22,#42,#02
	db #0c,#02,#0d,#40,#42,#01,#2d,#01
	db #30,#40,#02,#2d,#01,#30,#01,#0c
	db #ff,#00,#01,#2f,#04,#25,#04,#26
	db #08,#25,#03,#02,#01,#05,#0c,#02
	db #20,#0e,#42,#03,#0e,#01,#16,#40
	db #44,#01,#16,#01,#0e,#40,#42,#03
	db #0e,#01,#16,#40,#44,#01,#16,#01
	db #0e,#40,#02,#13,#02,#19,#02,#21
	db #01,#32,#01,#36,#01,#32,#01,#37
	db #43,#15,#18,#01,#22,#40,#1a,#18
	db #02,#22,#01,#32,#01,#36,#01,#32
	db #01,#37,#04,#3d,#ff,#00,#03,#2c
	db #01,#2b,#01,#23,#01,#0f,#01,#07
	db #01,#12,#01,#09,#01,#43,#01,#07
	db #01,#42,#01,#0b,#01,#31,#01,#03
	db #01,#04,#01,#15,#01,#06,#15,#18
	db #01,#22,#05,#28,#01,#2a,#05,#29
	db #0b,#28,#42,#06,#33,#01,#35,#06
	db #34,#01,#35,#40,#02,#19,#02,#1b
	db #01,#19,#01,#3f,#01,#41,#01,#3e
	db #01,#3c,#ff,#00,#01,#00,#ff,#00
	db #01,#00,#ff,#00,#01,#00,#ff,#3a
	db #e5,#00,#b7,#fa,#2d,#59,#32,#32
	db #40,#3a,#e6,#00,#b7,#fa,#37,#59
	db #32,#40,#40,#3a,#e7,#00,#b7,#fa
	db #41,#59,#32,#4e,#40,#3e,#ff,#32
	db #e5,#00,#32,#e6,#00,#32,#e7,#00
	db #cd,#08,#40,#cd,#53,#59,#c9,#c5
	db #06,#7f,#0e,#10,#ed,#49,#06,#7f
	db #0e,#54,#ed,#49,#c1,#c9,#18,#00
	db #80,#e0,#f8,#fe,#f8,#e0,#80,#00
	db #02,#0e,#3e,#fe,#3e,#0e,#02,#00
	db #38,#38,#92,#7c,#10,#28,#28,#28
	db #38,#38,#10,#fe,#10,#28,#44,#82
	db #38,#38,#12,#7c,#90,#28,#24,#22
	db #38,#38,#90,#7c,#12,#28,#48,#88
	db #00,#3c,#18,#3c,#3c,#3c,#18,#00
	db #3c,#ff,#ff,#18,#0c,#18,#30,#18
	db #18,#3c,#7e,#18,#18,#7e,#3c,#18
	db #00,#24,#66,#ff,#66,#24,#00,#b1
	db #8c,#4f,#f8,#51,#ed,#34,#ab,#23
	db #13,#68,#56,#c9,#24,#19,#4b,#64
	db #8d,#49,#9f,#69,#95,#37,#3e,#af
	db #7c,#7f,#e5,#3e,#29,#7c,#37,#e5
	db #af,#44,#27,#e6,#67,#34,#bb,#ef
	db #47,#72,#5a,#18,#1e,#18,#6b,#b6
	db #99,#4a,#6b,#8a,#f7,#9d,#f7,#19
	db #58,#9f,#67,#32,#cf,#26,#be,#c5
	db #94,#6c,#57,#c2,#9b,#ab,#4c,#15
	db #09,#b5,#da,#3c,#5a,#fe,#46,#b8
	db #03,#66,#4c,#ab,#56,#a4,#52,#c6
	db #9f,#12,#ee,#27,#e5,#de,#3e,#47
	db #ce,#ab,#d6,#a4,#52,#ad,#9f,#cb
	db #c0,#fa,#3c,#96,#a1,#95,#79,#f2
	db #68,#55,#f6,#a0,#28,#d4,#7e,#2b
	db #a9,#ea,#89,#89,#57,#64,#2b,#3a
	db #93,#7f,#7f,#71,#3a,#eb,#27,#93
	db #64,#7f,#3a,#3a,#7f,#27,#71,#8c
	db #d5,#41,#54,#f1,#59,#02,#a6,#4c
	db #e3,#f5,#7a,#b3,#37,#ff,#91,#65
	db #ac,#fc,#58,#80,#69,#d3,#b8,#a5
	db #1e,#74,#0d,#bc,#72,#97,#65,#60
	db #02,#87,#7c,#58,#8a,#75,#ee,#3c
	db #64,#c9,#ad,#4c,#bc,#58,#72,#37
	db #56,#ad,#e0,#e4,#ec,#75,#7a,#e9
	db #f9,#72,#3b,#7d,#6d,#b4,#68,#18
	db #bc,#91,#16,#1f,#83,#41,#54,#77
	db #50,#31,#04,#44,#66,#bc,#c1,#d1
	db #63,#e8,#e1,#f4,#f0,#7a,#78,#a6
	db #25,#c5,#1c,#19,#1c,#2d,#31,#7c
	db #1a,#b0,#95,#28,#e6,#ab,#e7,#d3
	db #12,#25,#ff,#4e,#50,#8e,#62,#c4
	db #88,#47,#b4,#de,#f8,#53,#9a,#a3
	db #0d,#b4,#61,#4c,#50,#df,#76,#16
	db #1c,#44,#62,#b1,#47,#d2,#6c,#90
	db #26,#2d,#dc,#48,#9a,#1b,#a2,#22
	db #ba,#9a,#2c,#d7,#50,#60,#a1,#2c
	db #d4,#d2,#35,#a9,#9a,#c1,#06,#d2
	db #86,#75,#2a,#b6,#eb,#69,#e1,#af
	db #bd,#5d,#af,#19,#34,#7d,#35,#da
	db #f5,#d4,#f5,#61,#a1,#7d,#5d,#7d
	db #1c,#e1,#7a,#16,#5e,#bc,#a4,#28
	db #9c,#6c,#6c,#c6,#f6,#b1,#c9,#4c
	db #eb,#cf,#d4,#b2,#8c,#73,#c7,#dc
	db #2c,#c9,#c6,#85,#d1,#17,#f4,#37
	db #a3,#00,#30,#00,#00,#a5,#cf,#57
	db #a5,#cf,#a0,#a5,#cf,#18,#a6,#cf
	db #07,#a6,#cf,#03,#a6,#cf,#fe,#a4
	db #cf,#7f,#a5,#cf,#99,#a5,#cf,#c6
	db #a5,#cf,#53,#a6,#cf,#92,#a6,#30
	db #cd,#07,#00,#02,#24,#00,#03,#07
	db #00,#b3,#00,#3f,#00,#c0,#00,#10
	db #00,#00,#00,#c1,#09,#2a,#52,#e5
	db #02,#04,#03,#ff,#00,#62,#fd,#e3
;	db #80,#80,#80,#80,#80,#80,#80,#80
;	db #80,#80,#80,#80,#80,#ff,#ff,#ff
;	db #ff,#ff,#ff,#ff,#ff,#ff,#fe,#00
;	db #00,#00,#00,#00,#00,#00,#00,#00
;	db #00,#00,#00,#00,#24,#00,#03,#07
;	db #00,#aa,#00,#3f,#00,#c0,#00,#10
;	db #00,#02,#00,#41,#09,#2a,#52,#e5
;	db #02,#04,#00,#00,#00,#de,#50,#5e
;	db #6f,#f1,#8c,#80,#80,#80,#80,#80
;	db #80,#80,#80,#80,#80,#ff,#ff,#ff
;	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
;	db #fe,#00,#00,#00,#00,#00,#00,#00
;	db #00,#00,#00,#00,#00,#00,#0a,#00
;	db #5f,#5f,#5f,#5f,#30,#a9,#90,#a8
;	db #a9,#a8,#b9,#a8,#00,#00,#18,#00
;	db #30,#31,#30,#30,#30,#a9,#d0,#a8
;	db #e9,#a8,#f9,#a8,#e5,#e5,#e5,#e5
;	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
;	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
;	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
;	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
;	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
;	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
;	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
;	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
;	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
;	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
;	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
;	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
;	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
;	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
;	db #e5,#e5,#e5,#e5,#e5,#e5,#e5,#e5
;	db #e5,#e5,#e5,#e5,#e5,#a2,#4f,#38
;	db #87,#1d,#d7,#71,#e8,#6e,#54,#d2
;	db #90,#1a,#7e,#fc,#03,#df,#7e,#bf
;	db #de,#72,#7a,#81,#43,#0f,#34,#1e
;	db #5f,#09,#e8,#54,#6b,#b5,#8e,#7c
;	db #a6,#53,#63,#cf,#cb,#46,#5b,#1a
;	db #1b,#a8,#08,#68,#6c,#a1,#22,#a0
;	db #b1,#86,#8a,#82,#c6,#1b,#2a,#08
;	db #1a,#6c,#a8,#22,#68,#b1,#a1,#8a
;	db #a0,#c6,#86,#2b,#82,#cc,#24,#d5
;	db #79,#a0,#6d,#db,#fc,#71,#51,#a6
;	db #e6,#18,#1c,#97,#94,#02,#37,#25
;	db #58,#83,#25,#97,#56,#c1,#bc,#42
;	db #50,#f2,#fb,#a2,#a0,#0c,#af,#45
;	db #b3,#f7,#86,#a3,#33,#de,#80,#d6
;	db #1e,#da,#39,#f7,#6e,#1f,#55,#6a
;	db #ea,#58,#d5,#69,#f0,#c7,#03,#61
;	db #86,#cc,#a0,#bc,#e3,#a3,#41,#bc
;	db #ea,#c8,#d1,#a2,#8b,#45,#69,#24
;	db #b9,#2e,#4f,#86,#49,#fa,#6c,#58
;	db #52,#86,#79,#08,#fa,#d3,#e1,#5d
;	db #0e,#86,#41,#d4,#62,#77,#24,#9d
;	db #9a,#10,#55,#ea,#02,#cc,#0e,#58
;	db #fe,#cc,#eb,#8c,#49,#9c,#e7,#34
;	db #16,#67,#56,#77,#ac,#ed,#3c,#f8
;	db #63,#9a,#98,#47,#98,#ec,#a8,#36
;	db #59,#41,#3d,#51,#2d,#a7,#89,#8c
;	db #8e,#9c,#77,#76,#d4,#18,#0e,#a5
;	db #47,#51,#2d,#ad,#89,#18,#25,#0f
;	db #e1,#d0,#51,#95,#01,#89,#51,#d6
;	db #a0,#77,#8c,#d4,#9c,#9a,#79,#55
;	db #18,#9a,#18,#d1,#73,#6f,#8e,#51
;	db #73,#f1,#d1,#51,#95,#aa,#89,#c7
;	db #e8,#66,#9b,#b0,#a3,#c2,#40,#c9
;	db #aa,#02,#cc,#d0,#ca,#00,#00,#3e
;	db #bc,#32,#83,#a1,#f3,#d9,#c5,#d9
;	db #d5,#11,#fd,#a1,#ed,#a0,#ed,#a0
;	db #ed,#a0,#11,#00,#a2,#3a,#fd,#a1
;	db #06,#00,#4f,#ed,#b0,#14,#14,#1e
;	db #00,#4f,#ed,#b0,#11,#00,#a3,#cd
;	db #d6,#a1,#14,#14,#cd,#d6,#a1,#d9
;	db #d1,#3a,#fe,#a1,#4f,#3a,#ff,#a1
;	db #b7,#20,#03,#32,#83,#a1,#67,#d9
;	db #e5,#dd,#e1,#3a,#fd,#a1,#3d,#4f
;	db #06,#01,#d9,#d9,#cd,#b8,#a1,#d9
;	db #b9,#28,#0c,#bc,#28,#22,#12,#13
;	db #18,#f1,#79,#12,#13,#18,#ec,#d9
;	db #cd,#b8,#a1,#d9,#b7,#28,#f3,#fe
;	db #01,#28,#1a,#3c,#47,#d9,#cd,#b8
;	db #a1,#d9,#12,#13,#10,#fc,#18,#d3
;	db #d9,#cd,#b8,#a1,#d9,#06,#03,#12
;	db #13,#10,#fc,#18,#c6,#c1,#d9,#c9
;	db #59,#10,#0c,#dd,#6e,#00,#dd,#66
;	db #01,#dd,#23,#dd,#23,#06,#10,#29
;	db #16,#a3,#30,#02,#16,#a5,#1a,#15
;	db #1f,#1a,#d8,#5f,#18,#e3,#eb,#1a
;	db #13,#87,#cb,#16,#2c,#87,#cb,#16
;	db #2c,#87,#cb,#16,#2c,#87,#cb,#16
;	db #2c,#87,#cb,#16,#2c,#87,#cb,#16
;	db #2c,#87,#cb,#16,#2c,#87,#cb,#16
;	db #2c,#20,#dc,#eb,#c9,#80,#0a,#05
;	db #01,#bd,#8b,#11,#d0,#56,#21,#9c
;	db #72,#c5,#c3,#2f,#a1,#00,#1a,#20
;	db #dc,#eb,#c9,#80,#0a,#05,#00,#1a
;	db #2e,#01,#22,#00,#3a,#77,#ac,#fe
;	db #80,#20,#07

; #8727
; ld a,#01
; call #4005	; init
; call #4002	; stop music
;
; #8397
; ld a,#00	; init main theme
; call #4005	; init
;
;	call #400b to play
;
.music_info
	db "Indiana Jones And The Fate Of Atlantis (1993)(US Gold)(Martin Walker)",0
	db "",0

	read "music_end.asm"
