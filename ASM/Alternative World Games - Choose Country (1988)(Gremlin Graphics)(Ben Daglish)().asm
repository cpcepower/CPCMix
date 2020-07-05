; Music of Alternative World Games - Choose Country (1988)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 09/02/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ALTWOGCC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #3000
FIRST_THEME				equ 0
LAST_THEME				equ 7

	read "music_header.asm"

	jp l3090
	jp l3118
;
.music_end
.l3006
;
	db #00
;
	jp l3011
;
.stop_music
;
	xor a
	ld (l3006),a
	jp l349a
.l3011
	di
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,l4298
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,l33dc
	call l3413
	set 7,(ix+#11)
	ei
	ret
.l3040 equ $ + 7
.l303a equ $ + 1
.l3039
	db #00,#a4,#41,#00,#3a,#19,#3a,#05
.l3048 equ $ + 7
.l3046 equ $ + 5
.l3045 equ $ + 4
.l3044 equ $ + 3
.l3043 equ $ + 2
.l3042 equ $ + 1
	db #42,#01,#fc,#ff,#47,#00,#40,#00
.l304f equ $ + 6
.l304e equ $ + 5
	db #00,#00,#00,#00,#40,#08,#a8,#41
.l3058 equ $ + 7
.l3057 equ $ + 6
.l3055 equ $ + 4
	db #1a,#3a,#33,#3a,#05,#42,#01,#fc
.l305d equ $ + 4
.l305b equ $ + 2
.l305a equ $ + 1
.l3059
	db #ff,#47,#00,#38,#00,#69,#42,#01
.l3064 equ $ + 3
.l3063 equ $ + 2
	db #01,#40,#10,#ac,#41,#34,#3a,#45
.l3070 equ $ + 7
.l306f equ $ + 6
.l306e equ $ + 5
.l306d equ $ + 4
.l306c equ $ + 3
.l306a equ $ + 1
	db #3a,#fb,#41,#01,#fc,#ff,#47,#00
.l3078 equ $ + 7
.l3072 equ $ + 1
	db #1c,#00,#60,#42,#01,#01,#40,#00
	db #0a,#14,#1e,#28,#32,#3c,#46,#00
	db #0a,#14,#1e,#28,#32,#3c,#46,#00
	db #0a,#14,#1e,#28,#32,#3c,#46
;
.init_music
.l3090
;
	push af
	call l349a
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l4074
	add l
	ld l,a
	jr nc,l30a1
	inc h
.l30a1
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l303a),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l304f),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l3064),de
	xor a
	ld (l3043),a
	ld (l3058),a
	ld (l306d),a
	ld (l3048),a
	ld (l305d),a
	ld (l3072),a
	cpl
	ld (l3044),a
	ld (l3059),a
	ld (l306e),a
	ld a,#01
	ld (l3042),a
	ld (l3057),a
	ld (l306c),a
	ld (l3045),a
	ld (l305a),a
	ld (l306f),a
	ld hl,l3078
	ld bc,#030a
.l30f0
	xor a
.l30f1
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l30f1
	djnz l30f0
	ld hl,l41fb
	ld (l3040),hl
	ld (l3055),hl
	ld (l306a),hl
	ld a,#ff
	ld (l3046),a
	ld (l305b),a
	ld (l3070),a
	ld (l3006),a
	ret
;
.play_music
.l3118
;
	call l34c3
	ld a,(l3006)
	and a
	ret z
	ld a,(l3046)
	ld hl,l305b
	or (hl)
	ld hl,l3070
	or (hl)
	ld (l3006),a
	jr nz,l3142
	xor a
	ld (l3006),a
	ld a,(l33db)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l3006),a
	ret
.l3142
	ld iy,l3039
	ld ix,l33dc
	call l3160
	ld iy,l304e
	ld ix,l33ee
	call l3160
	ld iy,l3063
	ld ix,l3400
.l3160
	call l32a1
	ld a,(iy+#0b)
	and a
	jr z,l31e5
.l3169
	dec (iy+#09)
	jr z,l3180
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l31e5
.l3180
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l318a
	ld a,(hl)
	cp #80
	jr c,l31c5
	cp #fe
	jr nz,l319c
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l318a
.l319c
	cp #ff
	jr nz,l31a5
	xor a
	ld (iy+#0d),a
	ret
.l31a5
	cp #c0
	jr nc,l31b2
	and #1f
	ld (iy+#09),a
	inc hl
	jp l318a
.l31b2
	and #07
	add (iy+#00)
	ld de,l3078
	add e
	ld e,a
	jr nc,l31bf
	inc d
.l31bf
	inc hl
	ldi
	jp l318a
.l31c5
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,l400a
	add hl,bc
	ld e,(hl)
	ld hl,l403f
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr l31eb
.l31e5
	ld e,(iy+#05)
	ld d,(iy+#06)
.l31eb
	dec (iy+#0c)
	jr z,l31fd
	ld a,(de)
	cp #80
	call nc,l3267
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l31fd
	ld a,(de)
	cp #80
	jr c,l320e
	call l3267
	ld a,(iy+#0b)
	and a
	jr z,l31fd
	jp l3169
.l320e
	cp #7f
	jr z,l325a
	cp #7e
	jr nz,l321f
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l3233
.l321f
	add (iy+#0a)
	add #13
	ld (iy+#0e),a
	ld hl,l3331
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l3233
	ld a,(iy+#0f)
	or #c0
	ld (iy+#14),a
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld c,a
	ld (iy+#05),e
	ld (iy+#06),d
	ld e,(iy+#07)
	ld a,(iy+#08)
	ld hy,a
	ld ly,e
	bit 7,(ix+#11)
	ret nz
	jp l3413
.l325a
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l3267
	ld a,(de)
	cp #88
	jr nc,l3285
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l3078
	add hl,bc
	ld c,(hl)
	ld hl,l41fb
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l3285
	cp #ff
	jr nz,l328e
	ld (iy+#0b),#ff
	ret
.l328e
	cp #c0
	jr nc,l3299
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l3299
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l32a1
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l32b5
	res 7,(iy+#14)
	ret
.l32b5
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l32e9
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l32e9
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l32d8
	inc h
	ld (iy+#11),h
.l32d8
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l331e
.l32e9
	ld hl,l3b57
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l3303
	bit 6,(iy+#14)
	jr nz,l3303
	ld (iy+#13),#01
	ret
.l3303
	res 6,(iy+#14)
	ld a,(hl)
	rrca
	rrca
	rrca
	and d
	ld (iy+#12),a
	ld a,(hl)
	and d
	inc a
	ld (iy+#13),a
	ld (iy+#10),l
	ld (iy+#11),h
	ld a,(iy+#0e)
.l331e
	add a
	ld hl,l3331
	add l
	ld l,a
	jr nc,l3327
	inc h
.l3327
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.l3331
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04d4,#0470,#0431,#03f4
	dw #03dc,#0386,#0353,#0324
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
.l33e0 equ $ + 7
.l33df equ $ + 6
.l33dc equ $ + 3
.l33db equ $ + 2
	db #18,#00,#3f,#fe,#f7,#09,#5f,#00
.l33e1
	db #00,#00,#00,#02,#00,#00,#ff,#ff
.l33ee equ $ + 5
.l33ed equ $ + 4
	db #01,#36,#05,#42,#01,#fd,#ef,#12
.l33f3 equ $ + 2
.l33f2 equ $ + 1
.l33f1
	db #96,#00,#00,#00,#00,#02,#00,#00
.l3400 equ $ + 7
.l33ff equ $ + 6
	db #ff,#ff,#01,#36,#05,#42,#01,#fb
.l3405 equ $ + 4
.l3404 equ $ + 3
.l3403 equ $ + 2
	db #df,#24,#f6,#02,#00,#00,#00,#02
	db #00,#00,#ff,#ff,#01,#36,#fb,#41
.l3413 equ $ + 2
.l3412 equ $ + 1
.l3411
	db #01,#71,#f3
	ld a,ly
	ld (ix+#0f),a
	ld a,hy
	ld (ix+#10),a
	ld (ix+#03),l
	ld (ix+#04),h
	ld (ix+#06),c
	ld a,(iy+#05)
	ld (ix+#07),a
	ld a,(iy+#06)
	and #7f
	srl a
	jr nz,l3438
	ld a,#01
.l3438
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(l33db)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,l3461
	and (ix+#00)
.l3461
	bit 1,c
	jr z,l3468
	and (ix+#01)
.l3468
	ld (l33db),a
	bit 2,c
	jr nz,l347a
	ld hl,l35b1
	ld (ix+#0d),l
	ld (ix+#0e),h
	ei
	ret
.l347a
	call l3669
	ld a,(iy+#00)
	ld c,#0d
	call l3680
	ld a,(iy+#04)
	ld c,#0b
	call l3680
	inc c
	xor a
	call l3680
	ld (ix+#05),#ff
	ei
	jp l3675
.l349a
	call l3669
	ld c,#07
	ld a,(l33db)
	or #3f
	ld (l33db),a
	call l3680
	xor a
	inc c
	call l3680
	inc c
	call l3680
	inc c
	call l3680
	ld (l33ed),a
	ld (l33ff),a
	ld (l3411),a
	jp l3675
.l34c3
	ld a,(l33db)
	and #3f
	cp #3f
	ret z
	ld ix,l33dc
	call l357f
	ld ix,l33ee
	call l357f
	ld ix,l3400
	call l357f
	call l3669
	ld ix,l33dc
	ld c,#07
	ld a,(l33db)
	call l3680
	ld c,#00
	ld a,(l33df)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,l3501
	ld (l3412),a
.l3501
	call l3680
	inc c
	ld a,(l33e0)
	adc (ix+#0a)
	call l3680
	inc c
	ld a,(l33f1)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,l351f
	ld (l3412),a
.l351f
	call l3680
	inc c
	ld a,(l33f2)
	adc (ix+#1c)
	call l3680
	inc c
	ld a,(l3403)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,l353d
	ld (l3412),a
.l353d
	call l3680
	inc c
	ld a,(l3404)
	adc (ix+#2e)
	call l3680
	inc c
	ld a,(l3412)
	rrca
	rrca
	rrca
	call l3680
	ld c,#08
	ld a,(l33e1)
	srl a
	srl a
	srl a
	call l3680
	inc c
	ld a,(l33f3)
	srl a
	srl a
	srl a
	call l3680
	inc c
	ld a,(l3405)
	srl a
	srl a
	srl a
	call l3680
	jp l3675
.l357f
	ld a,(l33db)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l35a0
	cp #ff
	jr z,l35a0
	dec (ix+#06)
.l35a0
	call l3627
	bit 2,(iy+#09)
	jp nz,l3620
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.l35b1
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l35c0
	ld (ix+#05),a
	ret
.l35c0
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l35d0
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l35d0
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l35e2
	cp (iy+#02)
	jr c,l35e2
	ld (ix+#05),a
	ret
.l35e2
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l35f2
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l35f2
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l3601
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l3601
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l360e
	ld (ix+#05),a
	ret
.l360e
	ld (ix+#05),#00
	ld a,(l33db)
	or (ix+#02)
	ld (l33db),a
	res 7,(ix+#11)
	ret
.l3620
	ld a,(ix+#06)
	and a
	ret nz
	jr l360e
.l3627
	ld a,(ix+#07)
	and a
	jr z,l3634
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.l3634
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld c,(ix+#0b)
	ld b,(ix+#0c)
	add hl,bc
	ld (ix+#09),l
	ld (ix+#0a),h
	dec (ix+#08)
	ret nz
	ld a,(iy+#06)
	and a
	ret z
	jp p,l3658
	ld (ix+#07),#ff
	ret
.l3658
	ld (ix+#08),a
	ld a,c
	cpl
	ld c,a
	ld a,b
	cpl
	ld b,a
	inc bc
	ld (ix+#0b),c
	ld (ix+#0c),b
	ret
.l3669
	ld bc,#f782
	out (c),c
	ld de,#c000
	ld hl,#f680
	ret
.l3675
	ld bc,#f40e
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ret
.l3680
	ld b,#f4
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ld b,#f4
	out (c),a
	ld b,h
	out (c),l
	out (c),e
	ret
.l3693
	db #80,#06,#0c,#12,#0c,#0d,#0c,#06
.l369d equ $ + 2
	db #0c,#ff,#80,#06,#0c,#12,#0c,#ff
.l36a3
	db #81,#1e,#18,#1e,#24,#22,#0c,#1f
	db #0c,#1e,#0c,#22,#18,#22,#24,#25
	db #0c,#23,#0c,#22,#0c,#23,#18,#23
	db #24,#26,#0c,#25,#0c,#23,#0c,#22
	db #18,#1f,#18,#1e,#0c,#1e,#0c,#1e
.l36cd equ $ + 2
	db #14,#ff,#81,#19,#18,#19,#24,#1e
	db #0c,#1c,#0c,#19,#0c,#1e,#18,#1e
	db #24,#22,#0c,#1f,#0c,#1e,#0c,#1f
	db #18,#1f,#24,#23,#0c,#21,#0c,#1f
	db #0c,#1e,#18,#1c,#18,#19,#0c,#19
.l36fa equ $ + 7
.l36f7 equ $ + 4
	db #0c,#19,#18,#ff,#7f,#04,#ff,#81
	db #22,#24,#22,#0c,#23,#0c,#23,#18
	db #22,#0c,#23,#12,#22,#06,#20,#0c
	db #1e,#0c,#1d,#30,#25,#18,#23,#18
	db #22,#06,#1e,#06,#23,#06,#20,#06
	db #25,#0c,#23,#0c,#22,#18,#14,#18
.l3726 equ $ + 3
	db #1e,#30,#ff,#80,#06,#18,#0a,#18
	db #0b,#18,#82,#25,#18,#80,#08,#18
	db #0b,#18,#0d,#18,#01,#18,#12,#18
	db #11,#18,#0f,#18,#0d,#18,#0b,#18
	db #0d,#18,#12,#0c,#0d,#0c,#06,#18
.l374c equ $ + 1
	db #ff,#81,#1e,#24,#1e,#0c,#1b,#0c
	db #1b,#18,#1b,#0c,#14,#12,#16,#06
	db #17,#0c,#18,#0c,#19,#0c,#1b,#06
	db #1d,#06,#1e,#06,#20,#06,#22,#06
	db #23,#06,#22,#18,#20,#18,#1e,#0c
	db #20,#0c,#22,#0c,#1d,#0c,#1e,#18
.l3780 equ $ + 5
	db #1d,#18,#16,#30,#ff,#81,#25,#18
	db #23,#18,#20,#0c,#21,#0c,#23,#18
	db #20,#0c,#21,#0c,#23,#18,#21,#0c
.l3798 equ $ + 5
	db #20,#0c,#1e,#18,#ff,#81,#21,#18
	db #20,#18,#1d,#0c,#1e,#0c,#20,#18
	db #1d,#0c,#1e,#0c,#20,#18,#1e,#0c
	db #1d,#0c,#1e,#0c,#25,#18,#25,#0c
	db #20,#18,#1d,#0c,#1e,#0c,#20,#18
	db #1d,#0c,#1e,#0c,#20,#18,#1e,#18
.l37c8 equ $ + 5
	db #19,#18,#15,#30,#ff,#80,#06,#30
.l37cc equ $ + 1
	db #ff,#81,#1e,#18,#20,#06,#23,#06
	db #22,#06,#20,#06,#25,#0c,#25,#0c
	db #25,#06,#27,#06,#22,#06,#23,#06
	db #20,#0c,#20,#0c,#20,#06,#23,#06
	db #22,#06,#20,#06,#1e,#06,#25,#06
	db #20,#06,#22,#06,#1e,#0c,#1e,#0c
.l37fc equ $ + 1
	db #ff,#81,#19,#18,#1d,#06,#20,#06
	db #1e,#06,#1d,#06,#22,#0c,#22,#0c
	db #22,#06,#22,#06,#1e,#06,#1e,#06
	db #1d,#0c,#1d,#0c,#1d,#06,#20,#06
	db #1e,#06,#1d,#06,#19,#06,#22,#06
	db #1d,#06,#1d,#06,#19,#0c,#19,#0c
.l382c equ $ + 1
	db #ff,#06,#0c,#0d,#0c,#12,#0c,#06
.l3835 equ $ + 2
	db #0c,#ff,#84,#94,#22,#0c,#22,#0c
	db #20,#12,#22,#0c,#22,#0c,#22,#06
	db #20,#0c,#20,#0c,#22,#0c,#22,#0c
	db #20,#06,#20,#0c,#22,#1e,#7f,#18
	db #92,#25,#0c,#25,#0c,#23,#12,#25
	db #0c,#25,#0c,#25,#06,#23,#0c,#23
	db #0c,#25,#0c,#25,#0c,#23,#06,#23
.l3871 equ $ + 6
	db #0c,#25,#1e,#7f,#60,#ff,#85,#c1
	db #00,#01,#0c,#1b,#0c,#86,#36,#06
	db #36,#06,#91,#83,#19,#0c,#86,#90
	db #36,#06,#36,#06,#85,#c1,#00,#01
	db #ff,#1b,#06,#1b,#06,#1b,#06,#1b
	db #06,#c2,#91,#83,#19,#0c,#86,#90
.l38a0 equ $ + 5
	db #36,#06,#36,#06,#ff,#85,#c1,#00
	db #01,#ff,#1b,#0c,#1b,#0c,#1b,#06
.l38b1 equ $ + 6
	db #1b,#06,#82,#2a,#36,#ff,#80,#06
	db #14,#0d,#14,#12,#14,#0d,#14,#ff
.l38bb
	db #87,#31,#14,#33,#1e,#31,#05,#2f
	db #05,#2e,#3c,#2c,#0a,#2a,#0a,#29
	db #14,#27,#14,#29,#14,#29,#78,#2a
	db #14,#2c,#1e,#2a,#05,#29,#05,#27
	db #3c,#29,#0a,#2a,#0a,#2c,#14,#2e
	db #14,#2f,#50,#2f,#50,#2e,#50,#ff
.l38ee equ $ + 3
.l38eb
	db #06,#50,#ff,#81,#31,#14,#33,#0f
	db #31,#05,#2e,#14,#2e,#14,#2e,#0f
	db #2d,#05,#2e,#0f,#2f,#05,#2e,#28
	db #2f,#14,#2c,#0f,#31,#05,#2e,#28
	db #2a,#14,#27,#0f,#2c,#05,#25,#28
.l3914 equ $ + 1
	db #ff,#81,#2e,#14,#2f,#0f,#2e,#05
	db #2a,#14,#2a,#14,#2a,#0f,#29,#05
	db #2a,#0f,#2c,#05,#2a,#28,#2c,#14
	db #29,#0f,#2c,#05,#2a,#28,#27,#14
.l393a equ $ + 7
	db #24,#0f,#27,#05,#29,#28,#ff,#80
	db #01,#14,#0d,#14,#06,#14,#05,#14
.l394a equ $ + 7
	db #03,#14,#08,#14,#0d,#28,#ff,#81
	db #2a,#14,#2c,#04,#2e,#08,#2c,#04
	db #2a,#08,#29,#04,#27,#0c,#27,#0c
	db #27,#14,#27,#04,#29,#0c,#29,#0c
	db #27,#0c,#29,#08,#29,#05,#2a,#0c
.l3970 equ $ + 5
	db #2a,#0c,#2a,#30,#ff,#81,#22,#14
	db #25,#04,#2a,#08,#25,#04,#22,#08
	db #25,#04,#23,#0c,#23,#0c,#20,#14
	db #20,#04,#20,#0c,#20,#0c,#20,#0c
	db #20,#08,#20,#05,#22,#0c,#22,#0c
.l3996 equ $ + 3
	db #22,#30,#ff,#80,#06,#0c,#12,#0c
	db #7f,#0c,#0b,#0c,#17,#0c,#7f,#0c
.l39a4 equ $ + 1
	db #ff,#81,#2c,#0c,#2e,#0c,#31,#0c
	db #25,#0c,#27,#06,#2a,#12,#2a,#0c
	db #2c,#0c,#2f,#0c,#23,#0c,#25,#24
	db #2a,#0c,#2d,#0c,#21,#06,#21,#06
	db #23,#0c,#26,#0c,#26,#0c,#25,#0c
.l39d2 equ $ + 7
	db #29,#0c,#2c,#0c,#2a,#18,#ff,#81
	db #29,#0c,#2a,#0c,#2e,#0c,#22,#0c
	db #23,#06,#27,#12,#27,#0c,#28,#0c
	db #2c,#0c,#20,#0c,#21,#24,#26,#0c
	db #2a,#0c,#1e,#06,#1e,#06,#1f,#0c
	db #23,#0c,#23,#0c,#20,#0c,#25,#0c
.l3a00 equ $ + 5
	db #29,#0c,#22,#18,#ff,#81,#31,#10
	db #2e,#08,#2a,#18,#2e,#18,#31,#18
	db #36,#30,#3a,#10,#38,#08,#36,#18
.l3a1a equ $ + 7
	db #2e,#18,#30,#18,#31,#48,#ff,#81
	db #2e,#10,#2a,#08,#22,#18,#25,#18
	db #2c,#18,#2e,#30,#35,#10,#35,#08
	db #2e,#18,#2a,#18,#2c,#18,#29,#48
.l3a34 equ $ + 1
	db #ff,#7f,#30,#80,#12,#18,#11,#18
	db #0f,#48,#06,#18,#0a,#18,#08,#18
.l3a46 equ $ + 3
	db #0d,#48,#ff,#80,#12,#12,#1e,#12
	db #1e,#12,#12,#12,#1e,#12,#0a,#12
	db #0b,#12,#17,#12,#17,#12,#0b,#12
	db #17,#12,#0c,#12,#0d,#12,#19,#12
	db #19,#12,#0d,#12,#19,#12,#19,#12
	db #12,#12,#0d,#12,#0a,#12,#12,#30
.l3a74 equ $ + 1
	db #ff,#80,#12,#12,#22,#12,#22,#12
	db #12,#12,#22,#12,#1d,#12,#0b,#12
	db #27,#12,#27,#12,#0b,#12,#27,#12
	db #27,#12,#0d,#12,#29,#12,#29,#12
	db #0d,#12,#29,#12,#29,#12,#12,#12
.l3aa2 equ $ + 7
	db #22,#12,#25,#12,#2a,#30,#ff,#81
	db #25,#1e,#2e,#06,#25,#0c,#2e,#06
	db #25,#24,#26,#12,#27,#1e,#2f,#06
	db #27,#0c,#2f,#06,#27,#24,#28,#12
	db #29,#1e,#2c,#06,#29,#0c,#28,#06
	db #27,#1e,#29,#06,#27,#0c,#26,#06
	db #25,#12,#2e,#12,#2e,#12,#2e,#30
.l3ad4 equ $ + 1
	db #ff,#81,#30,#19,#31,#19,#31,#18
	db #31,#18,#30,#17,#31,#17,#31,#16
	db #31,#16,#30,#15,#31,#15,#31,#14
	db #31,#14,#30,#13,#31,#13,#33,#09
	db #31,#09,#2e,#12,#2e,#11,#2f,#11
	db #2f,#10,#2f,#10,#2e,#0f,#2f,#0f
	db #2f,#0e,#2f,#0e,#2e,#0d,#2f,#0d
	db #2f,#0c,#2f,#0c,#2e,#0b,#2f,#0b
	db #31,#05,#2f,#05,#2c,#0a,#2d,#09
	db #2e,#09,#2e,#09,#2e,#09,#2e,#24
.l3b24 equ $ + 1
	db #ff,#81,#2d,#19,#2e,#19,#2e,#18
	db #2e,#18,#2d,#17,#2e,#17,#2e,#16
	db #2e,#16,#2d,#15,#2e,#15,#2e,#14
	db #2e,#14,#2d,#13,#2e,#13,#2f,#09
	db #2e,#09,#2a,#12,#2b,#11,#2c,#11
	db #2c,#10,#2c,#10,#2b,#0f,#2c,#0f
.l3b57 equ $ + 4
	db #2c,#0e,#2c,#0e,#2b,#0d,#2c,#0d
	db #2c,#0c,#2c,#0c,#2b,#0b,#2c,#0b
	db #2e,#05,#2c,#05,#29,#0a,#29,#09
	db #25,#09,#25,#09,#25,#09,#25,#24
.l3b74 equ $ + 1
	db #ff,#80,#06,#32,#12,#30,#06,#2e
	db #12,#2c,#06,#2a,#12,#28,#06,#26
	db #12,#24,#01,#22,#0d,#20,#01,#1e
	db #0d,#1c,#01,#1a,#0d,#18,#01,#16
	db #0d,#14,#06,#12,#12,#09,#12,#09
.l3b9e equ $ + 3
	db #12,#24,#ff,#81,#2a,#2d,#2c,#0f
	db #2e,#1e,#2c,#1e,#2f,#1e,#2e,#1e
	db #2c,#0f,#29,#0f,#2a,#1e,#33,#2d
	db #31,#0f,#2f,#1e,#2e,#1e,#2c,#1e
.l3bc2 equ $ + 7
	db #2e,#0f,#2a,#0f,#31,#3c,#ff,#80
	db #12,#1e,#0d,#1e,#06,#1e,#0d,#1e
	db #0b,#1e,#06,#1e,#0d,#1e,#06,#1e
	db #0b,#1e,#06,#1e,#0d,#1e,#06,#1e
.l3be2 equ $ + 7
	db #08,#1e,#0c,#1e,#0d,#3c,#ff,#81
	db #22,#2d,#29,#0f,#25,#1e,#29,#1e
	db #27,#1e,#25,#1e,#29,#0f,#20,#0f
	db #22,#1e,#2a,#2d,#2e,#0f,#29,#1e
	db #25,#1e,#24,#1e,#27,#0f,#27,#0f
.l3c06 equ $ + 3
	db #29,#3c,#ff,#87,#36,#14,#36,#1e
	db #35,#0a,#31,#28,#31,#3c,#35,#14
	db #35,#1e,#33,#0a,#2f,#64,#35,#14
	db #35,#1e,#33,#0a,#2f,#28,#2f,#3c
	db #2c,#14,#2e,#1e,#2f,#0a,#31,#3c
	db #31,#14,#32,#64,#2f,#14,#36,#1e
	db #32,#0a,#31,#64,#2e,#14,#2c,#14
	db #2a,#14,#31,#28,#31,#3c,#31,#14
	db #3a,#1e,#38,#0a,#3a,#07,#3d,#07
.l3c50 equ $ + 5
	db #3a,#06,#36,#c8,#ff,#81,#2c,#1e
	db #2d,#0a,#2f,#14,#34,#14,#2f,#14
	db #2d,#14,#2c,#28,#31,#14,#2f,#14
	db #2d,#14,#2c,#14,#2a,#14,#2c,#14
	db #2d,#28,#2a,#1e,#2c,#0a,#2d,#14
	db #36,#14,#2d,#14,#2c,#14,#2a,#28
	db #2f,#14,#2d,#14,#2c,#14,#2a,#14
	db #28,#14,#2a,#14,#2c,#28,#34,#1e
	db #33,#0a,#31,#14,#30,#14,#31,#14
	db #33,#14,#2c,#28,#38,#1e,#2a,#0a
	db #34,#14,#33,#14,#34,#14,#36,#14
	db #2f,#28,#39,#1e,#38,#0a,#36,#14
	db #34,#14,#33,#1e,#31,#0a,#2f,#14
	db #2d,#14,#2c,#14,#2c,#14,#2a,#14
.l3cc2 equ $ + 7
	db #2a,#0a,#2c,#0a,#28,#50,#ff,#80
	db #10,#14,#04,#14,#10,#14,#14,#14
	db #0b,#14,#0b,#14,#10,#14,#04,#14
	db #09,#14,#08,#14,#06,#14,#04,#14
	db #06,#14,#0d,#14,#12,#14,#06,#14
	db #09,#14,#08,#14,#06,#14,#06,#14
	db #01,#14,#0d,#14,#12,#14,#06,#14
	db #0f,#14,#0f,#14,#10,#14,#0b,#14
	db #10,#14,#0b,#14,#10,#14,#04,#14
	db #0d,#14,#0f,#14,#10,#14,#14,#14
	db #10,#14,#12,#14,#14,#14,#08,#14
	db #0d,#14,#0f,#14,#10,#14,#14,#14
	db #0d,#14,#09,#14,#0b,#28,#06,#14
	db #08,#14,#09,#14,#06,#14,#0b,#14
	db #09,#14,#08,#14,#06,#14,#04,#14
	db #08,#14,#09,#14,#0b,#14,#10,#14
.l3d40 equ $ + 5
	db #04,#14,#10,#28,#ff,#81,#23,#14
	db #23,#14,#20,#14,#1c,#14,#20,#14
	db #1e,#14,#23,#28,#1c,#14,#1c,#14
	db #1b,#14,#23,#14,#21,#14,#1d,#14
	db #21,#28,#25,#14,#25,#14,#1e,#14
	db #21,#14,#1e,#14,#1d,#14,#19,#28
	db #1e,#14,#1e,#14,#23,#14,#27,#14
	db #20,#14,#27,#14,#23,#28,#20,#14
	db #20,#14,#20,#14,#1b,#14,#20,#14
	db #21,#14,#23,#28,#20,#14,#20,#14
	db #20,#14,#24,#14,#20,#14,#1e,#14
	db #1c,#14,#1b,#14,#21,#14,#23,#14
	db #25,#14,#21,#14,#1e,#14,#1e,#14
	db #1c,#14,#1b,#14,#23,#14,#1c,#14
.l3db2 equ $ + 7
	db #19,#14,#1b,#14,#20,#50,#ff,#87
	db #2c,#28,#2a,#28,#2c,#28,#2e,#28
	db #31,#28,#2e,#28,#2c,#50,#2e,#28
	db #31,#28,#33,#28,#31,#14,#33,#14
	db #38,#28,#35,#28,#33,#28,#31,#28
	db #2e,#28,#31,#28,#33,#50,#38,#28
	db #36,#28,#38,#50,#2e,#28,#31,#28
	db #33,#28,#31,#28,#2e,#3c,#31,#14
	db #2c,#50,#33,#28,#36,#28,#38,#50
	db #36,#28,#38,#28,#33,#28,#31,#28
	db #33,#28,#31,#14,#2e,#14,#2c,#50
.l3e04 equ $ + 1
	db #ff,#87,#14,#28,#12,#28,#14,#28
	db #16,#28,#19,#28,#16,#28,#14,#50
	db #12,#28,#16,#28,#17,#28,#16,#14
	db #17,#14,#18,#28,#19,#28,#14,#14
	db #15,#14,#16,#28,#12,#28,#16,#28
	db #12,#28,#17,#28,#14,#28,#0f,#28
	db #14,#50,#1b,#28,#19,#28,#17,#28
	db #16,#28,#12,#28,#16,#28,#19,#50
	db #17,#28,#17,#28,#17,#50,#1b,#28
	db #14,#28,#1b,#28,#19,#28,#1b,#28
.l3e5a equ $ + 7
	db #19,#14,#16,#14,#14,#50,#ff,#87
	db #2c,#28,#2a,#28,#2c,#28,#2e,#28
	db #31,#28,#2e,#28,#2c,#50,#1e,#28
	db #1e,#28,#1e,#50,#20,#28,#20,#28
	db #1e,#28,#1d,#28,#1e,#28,#1e,#28
	db #1e,#50,#23,#28,#22,#28,#23,#50
	db #22,#28,#22,#28,#23,#28,#1e,#28
	db #1e,#28,#1e,#28,#20,#50,#23,#28
	db #23,#28,#20,#50,#22,#28,#23,#28
	db #27,#28,#25,#28,#27,#28,#25,#14
.l3ea8 equ $ + 5
	db #22,#14,#20,#50,#ff,#81,#23,#06
	db #20,#12,#21,#06,#23,#18,#25,#12
	db #27,#06,#28,#12,#27,#06,#28,#12
	db #2c,#06,#23,#24,#27,#06,#25,#06
	db #23,#18,#27,#12,#28,#06,#2a,#18
	db #2a,#12,#2a,#06,#2a,#18,#28,#12
	db #27,#06,#28,#3c,#27,#0c,#28,#12
	db #25,#06,#23,#18,#25,#12,#27,#06
	db #28,#12,#27,#06,#28,#12,#2a,#06
	db #27,#24,#2a,#06,#28,#06,#27,#12
	db #27,#06,#27,#12,#25,#06,#23,#12
	db #25,#06,#2a,#2a,#2a,#06,#28,#12
.l3f08 equ $ + 5
	db #25,#06,#23,#60,#ff,#80,#7f,#1e
	db #10,#18,#0b,#18,#10,#18,#0b,#18
	db #10,#18,#0b,#18,#10,#18,#0b,#18
	db #12,#18,#0b,#18,#12,#18,#0b,#18
	db #10,#18,#04,#18,#04,#18,#04,#18
	db #04,#18,#0b,#18,#10,#18,#0d,#18
	db #0b,#18,#06,#18,#0b,#18,#06,#18
	db #0b,#18,#06,#18,#0b,#18,#06,#18
.l3f46 equ $ + 3
	db #0b,#60,#ff,#80,#7f,#1e,#14,#18
	db #0b,#18,#14,#18,#0b,#18,#14,#18
	db #0b,#18,#14,#18,#0b,#18,#15,#18
	db #0b,#18,#15,#18,#0b,#18,#14,#18
	db #14,#48,#20,#18,#20,#18,#20,#18
	db #22,#18,#1e,#60,#1b,#18,#06,#18
.l3f7a equ $ + 7
	db #1b,#18,#19,#18,#1b,#60,#ff,#81
	db #23,#1e,#23,#0a,#23,#28,#28,#28
	db #28,#1e,#27,#0a,#27,#50,#23,#1e
	db #23,#0a,#23,#28,#2a,#28,#2a,#1e
	db #28,#0a,#28,#50,#2c,#3c,#2c,#14
	db #2a,#14,#2a,#14,#2a,#3c,#28,#14
	db #27,#28,#25,#50,#22,#28,#23,#78
	db #ff,#81,#20,#1e,#20,#0a,#20,#28
	db #20,#28,#21,#1e,#21,#0a,#21,#50
	db #1b,#1e,#1b,#0a,#1b,#28,#23,#28
	db #20,#1e,#20,#0a,#20,#50,#23,#3c
	db #23,#14,#23,#14,#23,#14,#22,#3c
	db #22,#14,#23,#28,#20,#50,#1e,#28
	db #1b,#78,#ff,#80,#04,#28,#04,#28
	db #04,#28,#0b,#28,#0b,#50,#0b,#28
	db #0b,#28,#0f,#28,#10,#28,#10,#50
	db #10,#3c,#10,#14,#0f,#14,#0f,#14
	db #0d,#28,#06,#28,#0b,#28,#10,#28
	db #0d,#28,#06,#28,#0b,#78,#ff
.l400a
	db l3693,l369d,l36a3,l36cd
	db l36f7,l36fa,l3726,l374c
	db l3780,l3798,l37c8,l37cc
	db l37fc,l382c,l3835,l3871
	db l38a0,l38b1,l38bb,l38eb
	db l38ee,l3914,l393a,l394a
	db l3970,l3996,l39a4,l39d2
	db l3a00,l3a1a,l3a34,l3a46
	db l3a74,l3aa2,l3ad4,l3b24
	db l3b74,l3b9e,l3bc2,l3be2
	db l3c06,l3c50,l3cc2,l3d40
	db l3db2,l3e04,l3e5a,l3ea8
	db l3f08,l3f46,l3f7a
	;db #93,#9d,#a3,#cd,#f7,#fa,#26,#4c
	;db #80,#98,#c8,#cc,#fc,#2c,#35,#71
	;db #a0,#b1,#bb,#eb,#ee,#14,#3a,#4a
	;db #70,#96,#a4,#d2,#00,#1a,#34,#46
	;db #74,#a2,#d4,#24,#74,#9e,#c2,#e2
	;db #06,#50,#c2,#40,#b2,#04,#5a,#a8
	;db #08,#46,#7a,#ac,#de
.l403f
	db l3693/&100,l369d/&100,l36a3/&100,l36cd/&100
	db l36f7/&100,l36fa/&100,l3726/&100,l374c/&100
	db l3780/&100,l3798/&100,l37c8/&100,l37cc/&100
	db l37fc/&100,l382c/&100,l3835/&100,l3871/&100
	db l38a0/&100,l38b1/&100,l38bb/&100,l38eb/&100
	db l38ee/&100,l3914/&100,l393a/&100,l394a/&100
	db l3970/&100,l3996/&100,l39a4/&100,l39d2/&100
	db l3a00/&100,l3a1a/&100,l3a34/&100,l3a46/&100
	db l3a74/&100,l3aa2/&100,l3ad4/&100,l3b24/&100
	db l3b74/&100,l3b9e/&100,l3bc2/&100,l3be2/&100
	db l3c06/&100,l3c50/&100,l3cc2/&100,l3d40/&100
	db l3db2/&100,l3e04/&100,l3e5a/&100,l3ea8/&100
	db l3f08/&100,l3f46/&100,l3f7a/&100
	
	;db #36,#36,#36,#36,#36,#36,#37,#37
	;db #37,#37,#37,#37,#37,#38,#38,#38
	;db #38,#38,#38,#38,#38,#39,#39,#39
	;db #39,#39,#39,#39,#3a,#3a,#3a,#3a
	;db #3a,#3a,#3a,#3b,#3b,#3b,#3b,#3b
	;db #3c,#3c,#3c,#3d,#3d,#3e,#3e,#3e
	;db #3f,#3f,#3f,#3f,#3f
.l4074
	dw l40e0,l4101,l4106,l410a
	dw l410c,l410e,l4110,l4113
	dw l4115,l4126,l4128,l412a
	dw l413c,l4140,l4142,l4146
	dw l4149,l414b,l4163,l4167
	dw l4169,l416b,l417e,l4180
	dw l4182,l419b,l419e,l41a1
	dw l41a5,l41a9,l41ad,l41af
	dw l41b1,l41b3,l41b5,l41b7
	dw l41b9,l41d6,l41d8,l41db
	dw l41dd,l41df,l41e1,l41e3
	dw l41e7,l41e9,l41eb,l41ed
	dw l41ef,l41f1,l41f3,l41f5
	dw l41f7,l41f9
.l40e0
	db #84,#00,#fe,#01,#00,#00,#fe,#00
	db #01,#fe,#fe,#01,#fe,#00,#01,#01
	db #84,#00,#fe,#01,#00,#00,#fe,#00
	db #01,#fe,#fe,#01,#fe,#00,#01,#0a
.l4106 equ $ + 6
.l4101 equ $ + 1
	db #ff,#02,#04,#02,#04,#ff,#04,#02
.l410e equ $ + 6
.l410c equ $ + 4
.l410a equ $ + 2
	db #03,#ff,#05,#ff,#06,#ff,#07,#ff
.l4115 equ $ + 5
.l4113 equ $ + 3
.l4110
	db #08,#08,#ff,#09,#ff,#01,#fe,#07
	db #86,#01,#fe,#00,#01,#01,#fe,#07
.l4126 equ $ + 6
	db #86,#01,#fe,#00,#0a,#ff,#0b,#ff
.l412a equ $ + 2
.l4128
	db #0c,#ff,#01,#fe,#07,#01,#fe,#00
	db #01,#fe,#fe,#01,#fe,#07,#01,#01
.l413c equ $ + 4
	db #fe,#00,#0d,#ff,#8f,#01,#0a,#ff
.l4146 equ $ + 6
.l4142 equ $ + 2
.l4140
	db #0e,#ff,#83,#0f,#10,#ff,#04,#12
.l414b equ $ + 3
.l4149 equ $ + 1
	db #ff,#12,#ff,#85,#04,#c0,#50,#11
	db #11,#fe,#ff,#11,#11,#fe,#00,#11
	db #11,#fe,#05,#11,#fe,#07,#11,#fe
.l4167 equ $ + 7
.l4163 equ $ + 3
	db #00,#13,#ff,#11,#11,#16,#ff,#14
.l416b equ $ + 3
.l4169 equ $ + 1
	db #ff,#15,#ff,#01,#fe,#04,#01,#fe
	db #05,#01,#fe,#06,#01,#fe,#07,#01
.l417e equ $ + 6
	db #01,#fe,#00,#01,#0a,#ff,#17,#ff
.l4182 equ $ + 2
.l4180
	db #18,#ff,#83,#04,#19,#fe,#fe,#19
	db #fe,#fc,#19,#fe,#fb,#19,#fe,#00
	db #19,#fe,#fe,#19,#fe,#fc,#19,#fe
.l419e equ $ + 6
.l419b equ $ + 3
	db #fb,#19,#ff,#1a,#1a,#ff,#1b,#1b
.l41a5 equ $ + 5
.l41a1 equ $ + 1
	db #ff,#fe,#fc,#1c,#ff,#fe,#fc,#1d
.l41af equ $ + 7
.l41ad equ $ + 5
.l41a9 equ $ + 1
	db #ff,#fe,#fc,#1e,#ff,#1f,#ff,#20
.l41b7 equ $ + 7
.l41b5 equ $ + 5
.l41b3 equ $ + 3
.l41b1 equ $ + 1
	db #ff,#21,#ff,#29,#ff,#2a,#ff,#2b
.l41b9 equ $ + 1
	db #ff,#c0,#5a,#8f,#04,#11,#11,#fe
	db #07,#84,#11,#fe,#00,#11,#fe,#05
	db #11,#11,#fe,#00,#11,#11,#fe,#07
.l41d6 equ $ + 6
	db #11,#11,#fe,#00,#13,#ff,#28,#ff
.l41df equ $ + 7
.l41dd equ $ + 5
.l41db equ $ + 3
.l41d8
	db #04,#28,#ff,#22,#ff,#23,#ff,#24
.l41e7 equ $ + 7
.l41e3 equ $ + 3
.l41e1 equ $ + 1
	db #ff,#2c,#ff,#c7,#5a,#2d,#ff,#2e
.l41ef equ $ + 7
.l41ed equ $ + 5
.l41eb equ $ + 3
.l41e9 equ $ + 1
	db #ff,#2f,#ff,#30,#ff,#31,#ff,#32
.l41f7 equ $ + 7
.l41f5 equ $ + 5
.l41f3 equ $ + 3
.l41f1 equ $ + 1
	db #ff,#33,#ff,#34,#ff,#25,#ff,#26
.l41f9 equ $ + 1
	db #ff,#27,#ff
.l41fb
	db #35,#fe,#03,#fe,#7f,#00,#03,#01
	db #00,#01,#1e,#fe,#03,#fe,#7f,#00
	db #03,#01,#00,#01,#46,#fe,#03,#fe
	db #7f,#00,#00,#00,#00,#02,#46,#fd
	db #03,#fe,#7f,#00,#00,#00,#00,#01
	db #46,#f6,#28,#fe,#7f,#00,#00,#00
	db #00,#01,#46,#fd,#00,#fe,#7f,#00
	db #00,#99,#00,#01,#7f,#e5,#03,#fe
	db #7f,#00,#00,#00,#00,#02,#3c,#ff
	db #03,#fe,#7f,#00,#00,#00,#00,#01
	db #3c,#fe,#00,#fe,#7f,#00,#03,#01
	db #00,#01,#3c,#ff,#00,#fe,#7f,#00
	db #00,#00,#00,#01,#89,#c1,#00,#00
	db #00,#00,#00,#00,#8a,#29,#49,#00
	db #00,#00,#00,#00,#8a,#21,#39,#00
	db #00,#00,#00,#00,#8a,#19,#41,#00
	db #00,#00,#00,#00,#8a,#21,#49,#00
	db #00,#00,#00,#00,#89,#61,#00,#00
	db #00,#00,#00,#00,#8a,#19,#39,#00
	db #00,#00,#00,#00,#00
.l4298
	db #00,#00,#00,#00,#7f,#00,#00,#00
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
;
.music_info
	db "Alternative World Games - Choose Country (1988)(Gremlin Graphics)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
