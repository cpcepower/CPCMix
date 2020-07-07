; Music of Better Than Life Issue 3 - Intro (1996)(STS Software)(CRTC)(ST-128 Module)
; Ripped by Megachur the 27/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BETTLI3I.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #d000

	read "music_header.asm"

	jp ld033	; init
	jp ld1a5	; play
	jp ld0b9	; stop
	jp ld016	; sound fx
	ld bc,ld537
	ld de,ld566
	ld hl,ld595
	ret
.ld016
	ld ix,ld5b4
	ld (ld1d6),ix
	ld (ix+#0a),#00
	ld (ix+#0b),#20
	ld (ix+#0e),#01
	ld (ix+#0f),d
	ld a,e
	and #f0
	jp ld2e5
;
.real_init_music
.ld033
;
	ld iy,ld5e0
.ld037
	dec e
	jr z,ld044
	ld c,(iy+#00)
	ld b,(iy+#01)
	add iy,bc
	jr ld037
.ld044
	ld b,#03
	ld ix,ld527
	ld de,#002f
.ld04d
	inc iy
	inc iy
	ld (ix-#06),#01
	ld (ix+#09),#00
	ld (ix+#0b),#ff
	ld (ix+#0c),#00
	ld (ix+#0d),#0f
	ld (ix+#0e),#01
	ld (ix+#13),#00
	ld l,(iy+#00)
	ld (ix-#02),l
	ld h,(iy+#01)
	ld (ix-#01),h
	ld a,(hl)
	ld (ix-#05),a
	inc hl
	ld a,(hl)
	ld (ix-#04),a
	inc hl
	ld a,(hl)
	ld (ix-#03),a
	add ix,de
	djnz ld04d
	ld a,#01
	ld (ld1a6),a
	ld a,(iy+#04)
	ld (ld1c9),a
	ld e,#05
	add iy,de
	ld (ld5da),iy
	ld a,#38
	ld (ld1f3),a
	ld hl,ld5dc
	ld b,#04
.ld0a8
	ld (hl),#ff
	inc hl
	djnz ld0a8
	ld a,#0c
	ld c,d
	call ld25a
	ld a,#0d
	ld c,d
	call ld25a
;
.stop_music
.ld0b9
;
	ld a,#08
	ld c,#00
	call ld25a
	ld a,#09
	ld c,#00
	call ld25a
	ld a,#0a
	ld c,#00
	call ld25a
	ld a,#07
	ld c,#1f
.ld0d3 equ $ + 1
	jp ld25a
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
	dw #000f,#000e,#000d,#000c
	dw #000c,#000b,#000a,#0000
;
.play_music
.ld1a5
;
.ld1a6 equ $ + 1
	ld a,#00
	dec a
	ld (ld1a6),a
	jr nz,ld1cd
.ld1ad
	ld ix,ld527
	call ld278
	jr nc,ld217
	ld ix,ld556
	call ld278
	jr nc,ld217
	ld ix,ld585
	call ld278
	jr nc,ld217
.ld1c9 equ $ + 1
	ld a,#00
	ld (ld1a6),a
.ld1cd
	ld ix,ld527
	call ld417
.ld1d6 equ $ + 2
	ld ix,ld556
	call ld417
	ld ix,ld585
	call ld417
	ld hl,ld5dc
.ld1e6 equ $ + 1
	ld a,#00
	cp (hl)
	jr z,ld1f1
	ld (hl),a
	ld c,a
	ld a,#06
	call ld25a
.ld1f1
	inc hl
.ld1f3 equ $ + 1
	ld a,#00
	cp (hl)
	jr z,ld1fe
	ld (hl),a
	ld c,a
	ld a,#07
	call ld25a
.ld1fe
	inc hl
.ld200 equ $ + 1
	ld a,#00
	cp (hl)
	jr z,ld20b
	ld (hl),a
	ld c,a
	ld a,#0b
	call ld25a
.ld20b
	inc hl
.ld20d equ $ + 1
	ld a,#00
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp ld25a
.ld217
	ld ix,ld527
	ld b,#03
.ld21d
	ld l,(ix-#02)
	ld h,(ix-#01)
	inc hl
	inc hl
	inc hl
	ld a,(hl)
	cp #80
	jr nz,ld230
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
.ld230
	ld (ix-#02),l
	ld (ix-#01),h
	ld a,(hl)
	inc hl
	ld (ix-#05),a
	ld a,(hl)
	inc hl
	ld (ix-#04),a
	ld a,(hl)
	ld (ix-#03),a
	ld (ix+#0d),#0f
	ld (ix-#06),#01
	ld (ix+#13),#00
	ld de,#002f
	add ix,de
	djnz ld21d
	jp ld1ad
.ld25a
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
	ret
.ld278
	ld (ix+#1c),#00
	scf
	dec (ix-#06)
	ret nz
	ld l,(ix-#04)
	ld h,(ix-#03)
	ld a,(hl)
	cp #ff
	ret z
	or a
	jr z,ld2d7
	cp #fe
	jr z,ld2c8
	bit 7,a
	jr nz,ld2ba
	ld (ix+#0f),a
	inc hl
	ld e,(hl)
	bit 7,e
	jr nz,ld2a4
	inc hl
	ld a,(hl)
	call ld2e5
.ld2a4
	res 7,e
.ld2a6
	inc hl
	ld (ix-#04),l
	ld (ix-#03),h
	ld (ix+#0a),#00
	ld (ix+#0b),#20
	ld (ix-#06),e
	scf
	ret
.ld2ba
	and #7f
	ld (ix+#0f),a
	inc hl
	ld a,(hl)
	call ld2e5
	ld e,#01
	jr ld2a6
.ld2c8
	ld c,#00
	ld (ix+#0b),#ff
	ld (ix+#10),c
	ld a,(ix-#08)
	call ld25a
.ld2d7
	inc hl
	ld a,(hl)
	ld (ix-#06),a
	inc hl
	ld (ix-#04),l
	ld (ix-#03),h
	scf
	ret
.ld2e5
	ld b,a
	and #f0
	cp (ix+#0e)
	jr z,ld317
	push de
	push hl
	ld (ix+#0e),a
	ld hl,(ld5da)
	rrca
	add #20
	ld e,a
	ld d,#00
	add hl,de
	push ix
	pop de
	ld c,#08
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop hl
	pop de
	ld (ix+#0d),#0f
.ld317
	ld a,b
	and #0f
	ret z
	cp #0f
	jr z,ld361
	cp #0e
	jr z,ld37d
	cp #0d
	jr z,ld397
	cp #0c
	jr z,ld39d
	cp #0b
	jp z,ld3d2
	cp #0a
	jr z,ld34d
	cp #08
	jr z,ld34d
	cp #06
	jp z,ld3d8
	cp #02
	jp z,ld3e8
	cp #03
	jp z,ld3ee
	cp #01
	jp z,ld40c
	ret
.ld34d
	ld (ld20d),a
	ld (ix+#0c),#10
	inc hl
	ld a,(hl)
	ld (ld200),a
	xor a
	ld (ix+#09),a
	ld (ix+#13),a
	ret
.ld361
	inc hl
	ld a,(hl)
	add a
.ld364
	ld b,#00
	ld (ix+#0c),b
	ld (ix+#13),b
	push hl
	ld c,a
	ld hl,(ld5da)
	add hl,bc
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	pop hl
	ret
.ld37d
	inc hl
	xor a
	ld (ix+#09),a
	inc a
	ld (ix+#13),a
	ld a,(hl)
	and #0f
	ld (ix+#14),a
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#15),a
	ret
.ld397
	inc hl
	ld a,(hl)
	ld (ld1c9),a
	ret
.ld39d
	inc hl
	ld d,(hl)
	push hl
	ld a,d
	and #0f
	rla
	rla
	rla
	add #20
	ld bc,(ld5da)
	add #02
	ld l,a
	ld h,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#02),a
	inc hl
	ld a,(hl)
	ld (ix+#03),a
	ld a,d
	and #f0
	rra
	add #20
	add #04
	ld l,a
	ld h,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	pop hl
	ret
.ld3d2
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	ret
.ld3d8
	inc hl
	ld a,(hl)
	and #0f
	ld (ix+#0d),a
	ld a,(hl)
	and #f0
	rrca
	rrca
	rrca
	jp ld364
.ld3e8
	inc hl
	ld a,(hl)
	and #0f
	jr ld3f4
.ld3ee
	inc hl
	ld a,(hl)
	and #0f
	neg
.ld3f4
	ld (ix+#1c),a
	ld a,(hl)
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld (ix+#21),a
	ld (ix+#22),a
	xor a
	ld (ix+#1d),a
	ld (ix+#1e),a
	ret
.ld40c
	xor a
	ld (ix+#09),a
	ld (ix+#0c),a
	ld (ix+#13),a
	ret
.ld417
	ld a,(ix+#0b)
	cp #ff
	ret z
	ld e,(ix+#0a)
	ld d,#00
	ld c,d
	ld a,(ix+#0f)
	cp #68
	jr z,ld45c
	ld a,(ix+#09)
	or a
	jr z,ld438
	ld l,(ix+#08)
	ld h,a
	add hl,de
	ld c,(hl)
	jr ld455
.ld438
	ld a,(ix+#13)
	or a
	jr z,ld455
	dec a
	jr z,ld449
	dec a
	jr z,ld44d
	ld c,(ix+#15)
	jr ld452
.ld449
	ld a,#02
	jr ld452
.ld44d
	ld c,(ix+#14)
	ld a,#03
.ld452
	ld (ix+#13),a
.ld455
	ld a,(ix-#05)
	add (ix+#0f)
	add c
.ld45c
	ld c,a
	ld b,d
	ld hl,ld0d3
	add hl,bc
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld a,(ix+#1c)
	or a
	jr z,ld492
	ld l,(ix+#1d)
	ld h,(ix+#1e)
	dec (ix+#22)
	jr nz,ld4a0
	ld a,e
	ld e,(ix+#1c)
	bit 7,e
	jr z,ld480
	dec d
.ld480
	add hl,de
	ld e,a
	ld d,#00
	ld (ix+#1d),l
	ld (ix+#1e),h
	ld a,(ix+#21)
	ld (ix+#22),a
	jr ld4a0
.ld492
	ld l,(ix+#04)
	ld h,(ix+#05)
	add hl,de
	add hl,de
	push de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	pop de
.ld4a0
	add hl,bc
	ld a,(ix-#09)
	ld c,l
	call ld25a
	ld a,(ix-#09)
	inc a
	ld c,h
	call ld25a
	ld (ix+#11),l
	ld (ix+#12),h
	ld l,(ix+#00)
	ld h,(ix+#01)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,ld4d6
	ld c,(ix+#0d)
	cp c
	jr c,ld4c9
	ld a,c
.ld4c9
	ld (ix+#10),a
	or (ix+#0c)
	ld c,a
	ld a,(ix-#08)
	call ld25a
.ld4d6
	ld l,(ix+#02)
	ld h,(ix+#03)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,ld4f8
	ld c,(ix-#07)
	or a
	jr z,ld4ef
	ld (ld1e6),a
	ld a,c
	sub #40
	ld c,a
.ld4ef
	ld hl,ld4f7
	ld (hl),c
	ld hl,ld1f3
.ld4f7 equ $ + 1
	set 0,(hl)
.ld4f8
	dec (ix+#0b)
	jr nz,ld514
	ld a,(ix+#07)
	or a
	jr z,ld50d
	ld (ix+#0b),a
	ld a,(ix+#06)
	ld (ix+#0a),a
	ret
.ld50d
	ld hl,ld556
	ld (ld1d6),hl
	ret
.ld514
	inc e
	ld (ix+#0a),e
	ret
	db #a4,#43,#52,#54,#43,#00,#08,#de
.ld527 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.ld537 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#02,#09,#e6,#00
.ld556 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.ld566 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#04,#0a,#ee,#00,#00
.ld585 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.ld595 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#02,#09,#e6,#00,#00,#00
.ld5b4 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.ld5e0 equ $ + 7
.ld5dc equ $ + 3
.ld5da equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#da
	db #04,#33,#da,#60,#da,#8d,#da,#d3
	db #02,#0b,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#b3,#d8,#d3,#d8,#f3,#d8
	db #08,#00,#33,#d9,#53,#d9,#73,#d9
	db #00,#00,#b3,#d9,#d3,#d9,#f3,#d9
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#17,#02,#10,#1b,#81,#1e
	db #81,#17,#82,#1b,#81,#1e,#81,#12
	db #82,#16,#81,#19,#81,#12,#82,#16
	db #81,#19,#81,#12,#82,#16,#81,#19
	db #81,#12,#82,#16,#81,#19,#81,#17
	db #82,#1b,#81,#1e,#81,#17,#82,#1b
	db #81,#1e,#81,#ff,#a7,#10,#27,#81
	db #27,#81,#27,#81,#27,#81,#27,#81
	db #25,#81,#23,#81,#22,#81,#25,#82
	db #25,#84,#28,#82,#28,#81,#28,#81
	db #28,#81,#28,#81,#28,#81,#27,#81
	db #25,#81,#23,#87,#2a,#81,#ff,#29
	db #02,#30,#29,#02,#20,#29,#02,#30
	db #29,#02,#20,#29,#02,#30,#29,#02
	db #20,#29,#02,#30,#29,#02,#20,#29
	db #02,#30,#29,#02,#20,#29,#02,#30
	db #29,#02,#20,#29,#02,#30,#29,#02
	db #20,#29,#02,#30,#29,#02,#20,#ff
	db #17,#02,#10,#1b,#81,#1e,#81,#17
	db #82,#1b,#81,#2a,#81,#11,#82,#14
	db #81,#17,#81,#11,#82,#14,#81,#17
	db #81,#17,#82,#1b,#81,#1e,#81,#12
	db #82,#16,#81,#19,#81,#17,#82,#1b
	db #81,#1e,#81,#17,#82,#1e,#82,#ff
	db #00,#01,#aa,#10,#2a,#81,#2a,#81
	db #2a,#81,#2a,#81,#2a,#81,#27,#81
	db #28,#82,#2a,#81,#2c,#82,#2c,#81
	db #2a,#81,#28,#81,#27,#81,#27,#81
	db #28,#81,#27,#81,#25,#81,#28,#81
	db #27,#81,#25,#81,#23,#85,#23,#81
	db #27,#81,#2a,#81,#ff,#17,#02,#10
	db #1b,#81,#1e,#81,#17,#82,#1b,#81
	db #1e,#81,#12,#82,#1b,#81,#1e,#81
	db #14,#82,#1b,#81,#19,#81,#17,#82
	db #1b,#81,#1e,#81,#12,#82,#16,#81
	db #19,#81,#17,#82,#1b,#81,#1e,#81
	db #17,#82,#1b,#81,#1e,#81,#ff,#00
	db #01,#a3,#10,#27,#81,#2a,#82,#23
	db #81,#27,#81,#2a,#84,#2f,#84,#2a
	db #82,#28,#81,#27,#81,#28,#81,#27
	db #81,#25,#82,#23,#86,#23,#81,#27
	db #81,#2a,#81,#ff,#00,#01,#a3,#10
	db #27,#81,#2a,#82,#23,#81,#27,#81
	db #2a,#84,#2f,#84,#2a,#82,#28,#81
	db #27,#81,#28,#81,#27,#81,#25,#81
	db #23,#8a,#ff,#11,#02,#30,#11,#02
	db #20,#11,#02,#30,#11,#02,#20,#11
	db #02,#30,#11,#02,#20,#11,#02,#30
	db #11,#02,#20,#11,#02,#30,#11,#02
	db #20,#11,#02,#30,#11,#02,#20,#11
	db #02,#30,#11,#02,#20,#11,#02,#30
	db #11,#02,#20,#ff,#28,#03,#10,#23
	db #81,#28,#83,#23,#81,#28,#83,#23
	db #81,#28,#82,#29,#81,#2a,#81,#33
	db #81,#33,#82,#33,#81,#31,#81,#31
	db #82,#31,#81,#2f,#81,#2f,#82,#2f
	db #81,#2d,#81,#2d,#82,#2d,#81,#ff
	db #00,#01,#a3,#10,#28,#81,#2a,#81
	db #2c,#82,#2a,#81,#2c,#81,#2f,#82
	db #28,#81,#2c,#82,#23,#81,#27,#92
	db #ff,#28,#03,#10,#23,#81,#28,#83
	db #23,#81,#28,#83,#21,#81,#28,#82
	db #23,#81,#1b,#81,#1b,#82,#1b,#81
	db #1b,#82,#1b,#82,#1b,#82,#1e,#82
	db #1e,#82,#1e,#82,#1e,#81,#ff,#00
	db #01,#a3,#10,#28,#81,#2a,#81,#2c
	db #82,#2a,#81,#2c,#81,#2f,#82,#28
	db #81,#2c,#84,#23,#81,#27,#81,#27
	db #81,#27,#81,#28,#82,#27,#81,#25
	db #8a,#ff,#0f,#0e,#0d,#0c,#0b,#0b
	db #0b,#0b,#0b,#0b,#0a,#0a,#0a,#0a
	db #0a,#0a,#09,#09,#09,#09,#09,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#0f,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#02,#02,#01,#00
	db #00,#00,#05,#00,#00,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#00,#00,#30,#00,#60,#00
	db #90,#00,#c0,#00,#f0,#00,#20,#01
	db #50,#01,#80,#01,#b0,#01,#e0,#01
	db #10,#02,#40,#02,#70,#02,#a0,#02
	db #d0,#02,#00,#03,#20,#03,#40,#03
	db #60,#03,#70,#03,#80,#03,#90,#03
	db #a0,#03,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#0f,#0e,#0e,#0d,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#06,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#80,#00,#00,#01,#80,#01
	db #00,#02,#80,#02,#00,#03,#00,#04
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#8b,#d6,#00,#19,#d7
	db #00,#7e,#d7,#00,#7e,#d7,#00,#8b
	db #d6,#00,#19,#d7,#00,#7e,#d7,#00
	db #7e,#d7,#00,#25,#d8,#00,#6a,#d8
	db #00,#8b,#d6,#00,#19,#d7,#00,#7e
	db #d7,#00,#7e,#d7,#80,#33,#da,#00
	db #bd,#d6,#00,#49,#d7,#00,#b0,#d7
	db #00,#d5,#d7,#00,#bd,#d6,#00,#49
	db #d7,#00,#b0,#d7,#00,#d5,#d7,#00
	db #51,#d8,#00,#90,#d8,#00,#bd,#d6
	db #00,#49,#d7,#00,#b0,#d7,#00,#d5
	db #d7,#80,#60,#da,#00,#e8,#d6,#00
	db #e8,#d6,#00,#e8,#d6,#00,#f4,#d7
	db #00,#e8,#d6,#00,#e8,#d6,#00,#e8
	db #d6,#00,#f4,#d7,#00,#e8,#d6,#00
	db #e8,#d6,#00,#e8,#d6,#00,#e8,#d6
	db #00,#e8,#d6,#00,#f4,#d7,#80,#8d
	db #da,#00,#00
;
.init_music	; added by Megachur
;
	ld e,#01
	jp real_init_music
;
.music_info
	db "Better Than Life Issue 3 - Intro (1996)(STS Software)(CRTC)",0
	db "ST-128 Module",0

	read "music_end.asm"
