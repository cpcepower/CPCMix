; Music of Thunder Blade (1988)(U.S. Gold)()()
; Ripped by Megachur the 13/06/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THUNDEBL.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 13
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #e100
FIRST_THEME				equ 1
LAST_THEME				equ 3	; 1 -> 3 (4 -> 8 Sound Fx)

	read "music_header.asm"

	jp le163	; play

.le10a equ $ + 7
.le109 equ $ + 6
.le104 equ $ + 1
.le103
	db #00,#01,#06,#00,#01,#00,#00,#00
.le112 equ $ + 7
.le110 equ $ + 5
.le10e equ $ + 3
.le10c equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.le113
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.le139
	cp #07
	jr nz,le143
	ld a,c
	ld (le161),a
	ld a,#07
.le143
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
.le162 equ $ + 1
.le161
	db #00,#00
;
.play_music
.le163
;
	push hl
	push bc
	push de
	push af
	push ix
	push iy
	ld a,(le104)
	cp #ff
	jr nz,le177
	call le393
	jr le183
.le177
	cp #fe
	jr nz,le180
	call le432
	jr le183
.le180
	call le18c
.le183
	pop iy
	pop ix
	pop af
	pop de
	pop bc
	pop hl
	ret
.le18c
	ld a,(le104)
;
.init_music
;
	ld (le162),a
	ld c,a
	ld a,#ff
	ld (le104),a
	ld a,c
	ld iy,le98c
	cp #01
	jp z,le293
	ld iy,le984
	cp #02
	jp z,le293
	ld iy,le97c
	cp #03
	jp z,le293
	cp #00
	jr nz,le1c0
	ld a,#fd
	ld (le104),a
	jp le2da
.le1c0
	ld a,#fe
	ld (le104),a
	ld iy,le5f5
	ld a,c
	cp #04
	jp z,le611
	ld iy,le5fc
	cp #05
	jp z,le611
	ld iy,le603
	cp #06
	jp z,le611
	ld iy,le60a
	cp #07
	jp z,le611
	ret
.le1eb
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
.le293
	call le2da
	ld ix,le112
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld (le10c),hl
	ld (le10a),hl
	call le319
	inc ix
	ld l,(iy+#02)
	ld h,(iy+#03)
	ld (le10e),hl
	ld (le10a),hl
	call le319
	inc ix
	ld l,(iy+#04)
	ld h,(iy+#05)
	ld (le110),hl
	ld (le10a),hl
	call le319
	ld a,#07
	ld c,(iy+#06)
	call le139
	ld a,#06
	ld c,#05
	jp le139
.le2da
	xor a
	ld (le103),a
	ld b,#00
.le2e0
	push bc
	ld a,b
	cp #06
	jr nz,le2e8
	ld b,#08
.le2e8
	ld a,b
	ld c,#00
	call le139
	pop bc
	inc b
	ld a,b
	cp #0b
	jr nz,le2e0
	ld c,#3f
	ld a,#07
	call le139
	ld hl,le112
	ld de,le113
	ld bc,#0026
	ld (hl),#00
	ldir
	ld ix,le112
	ld a,#01
	ld (ix+#09),a
	ld (ix+#0a),a
	ld (ix+#0b),a
	ret
.le319
	ld hl,(le10a)
	ld a,(ix+#0f)
	ld e,a
	ld d,#00
	add hl,de
	ld a,(hl)
	cp #ff
	jp z,le364
	cp #95
	jp z,le376
	cp #9e
	jr nz,le346
	inc hl
	ld a,(hl)
	ld (ix+#15),a
	inc hl
	ld a,(ix+#0f)
	add #02
	ld (ix+#0f),a
	ld (ix+#18),a
	jp le319
.le346
	cp #9d
	jr nz,le375
	dec (ix+#15)
	jr z,le358
	ld a,(ix+#18)
	ld (ix+#0f),a
	jp le319
.le358
	inc hl
	ld a,(hl)
	cp #ff
	jr z,le364
	inc (ix+#0f)
	jp le319
.le364
	call le2da
	ld a,#01
	ld (le103),a
	ld a,(le162)
	cp #01
	ret nz
	ld (le104),a
.le375
	ret
.le376
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#00),a
	inc hl
	ld a,(hl)
	ld (ix+#03),a
	ld a,(ix+#0f)
	add #05
	ld (ix+#0f),a
	ret
.le393
	xor a
	ld (le109),a
	ld hl,(le10c)
	ld (le10a),hl
	ld ix,le112
	call le3cc
	ld a,#01
	ld (le109),a
	ld hl,(le10e)
	ld (le10a),hl
	inc ix
	call le3cc
	ld a,#02
	ld (le109),a
	ld hl,(le110)
	ld (le10a),hl
	inc ix
	call le3cc
	ld a,(le103)
	and a
	ret nz
	jp le432
.le3cc
	dec (ix+#09)
	ret nz
.le3d0
	ld l,(ix+#00)
	ld h,(ix+#03)
	ld e,(ix+#06)
	ld d,#00
	add hl,de
	ld a,#80
	and (hl)
	jr z,le405
	inc (ix+#06)
	ld a,#94
	cp (hl)
	jr nz,le3fe
	ld (ix+#06),#00
	dec (ix+#12)
	jp nz,le3d0
	call le319
	ld a,(le103)
	and a
	ret nz
	jp le3d0
.le3fe
	ld a,(hl)
	ld (ix+#24),a
	jp le3d0
.le405
	ld a,(ix+#06)
	add #02
	ld (ix+#06),a
	ld (ix+#1b),#00
	ld a,(ix+#0c)
	add (hl)
	sub #0c
	sla a
	ld e,a
	inc hl
	ld a,(hl)
	srl a
	ld c,a
	add c
	add c
	ld (ix+#09),a
	ld hl,le1eb
	add hl,de
	ld a,(hl)
	ld (ix+#1e),a
	inc hl
	ld a,(hl)
	ld (ix+#21),a
	ret
.le432
	ld ix,le112
	xor a
	ld (le109),a
	call le451
	inc ix
	ld a,#01
	ld (le109),a
	call le451
	inc ix
	ld a,#02
	ld (le109),a
	jp le451
.le451
	ld a,(ix+#1b)
	ld c,a
	ld b,#00
	ld l,(ix+#24)
	res 7,l
	ld h,b
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,le4d5
	add hl,de
	add hl,bc
	ld a,(hl)
	cp #ff
	jr nz,le473
	ld (ix+#1b),#00
	jp le451
.le473
	ld c,a
	ld a,(le109)
	add #08
	call le139
	ld a,(ix+#1b)
	cp #0f
	jr z,le486
	inc (ix+#1b)
.le486
	ld bc,#0010
	add hl,bc
	ld a,(hl)
	and a
	jr nz,le496
	ld l,(ix+#1e)
	ld h,(ix+#21)
	jr le4c0
.le496
	and #80
	jr z,le4af
	ld c,(ix+#1e)
	ld b,(ix+#21)
	ld a,(hl)
	neg
	ld l,a
	ld h,#00
	add hl,bc
	ld (ix+#1e),l
	ld (ix+#21),h
	jr le4c0
.le4af
	ld c,(hl)
	ld b,#00
	ld l,(ix+#1e)
	ld h,(ix+#21)
	sbc hl,bc
	ld (ix+#1e),l
	ld (ix+#21),h
.le4c0
	ld c,l
	ld a,(le109)
	sla a
	call le139
	ld c,h
	ld a,(le109)
	sla a
	add #01
	call le139
	ret
.le4d5
	db #0f,#0d,#0a,#08,#06,#04,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#0a,#0a,#0a,#0a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #ff,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #02,#02,#fe,#fe,#fe,#fe,#02,#02
	db #02,#02,#fe,#fe,#fe,#fe,#02,#02
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#0a,#0a,#0a,#0a
	db #0f,#0c,#0f,#0c,#0f,#0c,#0f,#0c
	db #0f,#0c,#0f,#0c,#0d,#0b,#0a,#09
	db #0f,#0d,#0a,#08,#06,#04,#02,#02
	db #02,#02,#00,#00,#00,#00,#00,#00
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#00,#00,#00,#00,#00,#00
	db #0c,#0c,#0c,#0a,#08,#06,#04,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0c,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0a,#0d,#0f,#0d,#08,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0a,#0d,#00,#00,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.le5fc equ $ + 7
.le5f5
	db #ed,#02,#01,#85,#00,#0a,#14,#f6
.le603 equ $ + 6
	db #01,#00,#86,#00,#08,#0a,#f6,#01
.le60a equ $ + 5
	db #00,#87,#00,#0a,#05,#db,#04,#02
	db #88,#00
	ld b,#0a
.le611
	ld a,(le161)
	and (iy+#00)
	or (iy+#01)
	ld c,a
	ld a,#07
	call le139
	ld e,(iy+#02)
	ld d,#00
	ld ix,le112
	add ix,de
	ld a,(iy+#03)
	ld (ix+#24),a
	ld (ix+#1b),d
	ld a,(iy+#04)
	ld (ix+#1e),a
	ld a,(iy+#05)
	ld (ix+#21),a
	ld a,#06
	ld c,(iy+#06)
	jp le139
.le648
	db #01,#08,#01,#08,#01,#08,#01,#08
	db #01,#08,#01,#08,#01,#08,#01,#08
	db #01,#08,#01,#08,#01,#08,#01,#08
	db #01,#08,#01,#08,#01,#08,#01,#08
	db #01,#08,#01,#08,#01,#08,#01,#08
	db #01,#08,#01,#08,#01,#08,#01,#08
.le679 equ $ + 1
	db #94,#01,#08,#01,#08,#01,#08,#01
	db #08,#01,#08,#01,#08,#01,#04,#01
.le68e equ $ + 6
	db #04,#01,#04,#01,#04,#94,#01,#08
	db #01,#08,#01,#08,#01,#08,#01,#08
	db #01,#08,#05,#04,#04,#04,#03,#04
.le6a3 equ $ + 3
	db #02,#04,#94,#01,#08,#01,#08,#01
	db #08,#01,#04,#01,#08,#04,#04,#03
	db #04,#02,#04,#01,#08,#01,#04,#01
.le6ba equ $ + 2
	db #04,#94,#80,#01,#08,#01,#08,#01
	db #08,#01,#08,#01,#08,#01,#08,#01
	db #08,#01,#08,#01,#08,#01,#08,#01
	db #08,#01,#08,#01,#04,#01,#04,#01
.le6da equ $ + 2
	db #08,#94,#9e,#02,#95,#08,#00
	dw le6ba
	db #95,#01,#00
	dw le648
	db #95,#01,#00
	dw le679
	db #95,#01,#00
	dw le648
	db #95,#01,#00
	dw le68e
	db #95,#08,#00
	dw le6a3
	db #95,#14,#00
	dw le6ba
.le701 equ $ + 2
	db #9d,#00,#81,#0c,#04,#0a,#08,#0a
	db #04,#0c,#08,#0f,#04,#0c,#10,#0c
	db #04,#11,#04,#11,#04,#0f,#04,#0f
	db #04,#0c,#04,#0a,#08,#0a,#04,#0c
.le725 equ $ + 6
	db #08,#0f,#04,#0c,#14,#94,#0c,#08
	db #0c,#08,#0c,#04,#0c,#08,#0c,#04
	db #0c,#08,#0c,#08,#11,#04,#11,#04
	db #13,#04,#11,#04,#0c,#08,#0c,#08
	db #0c,#04,#0c,#08,#0c,#04,#0c,#08
.le74a equ $ + 3
	db #0c,#08,#94,#0c,#08,#18,#10,#0c
	db #08,#0c,#08,#18,#10,#0c,#08,#94
.le757
	db #0c,#08,#18,#10,#0c,#08,#0c,#08
.le766 equ $ + 7
	db #18,#10,#13,#04,#18,#04,#94,#95
	db #08,#15
	dw le701
	db #9e,#02,#95,#01,#09
	dw le74a
	db #95,#01,#0b
	dw le74a
	db #95,#02,#0c
	dw le74a
	db #9d,#9e,#02,#95,#01,#09
	dw le757
	db #95,#01,#0b
	dw le757
	db #95,#02,#0c
	dw le74a
	db #9d,#9e,#06,#95,#01,#15
	dw le725
	db #95,#01,#13
	dw le725
	db #95,#01,#11
	dw le725
	db #95,#01,#13
	dw le725
	db #9d,#9e,#02,#95,#01,#09
	dw le74a
	db #95,#01,#0b
	dw le74a
	db #95,#02,#0c
	dw le74a
	db #9d,#9e,#02,#95,#01,#09
	dw le757
	db #95,#01,#0b
	dw le757
	db #95,#02,#0c
	dw le74a
.le7cb equ $ + 2
	db #9d,#00,#2d,#10,#2d,#08,#30,#10
	db #2d,#08,#30,#10,#34,#08,#32,#08
	db #34,#08,#32,#10,#30,#08,#2d,#10
	db #2d,#08,#30,#10,#2d,#08,#30,#10
	db #34,#08,#32,#08,#34,#08,#32,#10
	db #30,#08,#2d,#10,#2d,#08,#30,#10
	db #2d,#08,#30,#10,#34,#08,#32,#08
	db #34,#08,#32,#10,#30,#08,#37,#70
.le80a equ $ + 1
	db #94,#82,#39,#70,#37,#70,#35,#70
	db #37,#70,#39,#70,#37,#70,#35,#70
	db #37,#70,#2d,#40,#2f,#40,#30,#80
	db #2d,#40,#2f,#40,#30,#80,#39,#40
	db #3b,#40,#3c,#80,#2d,#40,#2f,#40
	db #30,#40,#3c,#40,#39,#08,#00,#48
	db #3e,#10,#39,#10,#37,#08,#00,#68
	db #35,#08,#00,#48,#35,#10,#35,#10
	db #37,#08,#00,#68,#39,#08,#00,#48
	db #3e,#10,#39,#10,#37,#08,#00,#68
	db #35,#08,#00,#48,#35,#10,#35,#10
	db #37,#08,#00,#68,#39,#08,#2d,#48
	db #3e,#10,#39,#10,#37,#08,#2b,#68
	db #35,#08,#29,#48,#35,#10,#35,#10
	db #37,#08,#2b,#68,#39,#08,#2d,#48
	db #3e,#10,#39,#10,#37,#08,#2b,#68
	db #35,#08,#29,#48,#35,#10,#35,#10
.le896 equ $ + 5
	db #37,#08,#2b,#68,#94,#2d,#40,#2f
	db #40,#30,#80,#2d,#40,#2f,#40,#30
	db #80,#39,#40,#3b,#40,#3c,#80,#2d
	db #40,#2f,#40,#30,#40,#3c,#40,#94
.le8b1
	db #95,#01,#0c
	dw le80a
	db #95,#01,#0c
	dw le7cb
	db #95,#01,#18
	dw le7cb
	db #95,#01,#0c
	dw le896
	db #ff,#80,#01,#08,#01,#08,#06,#08
	db #01,#08,#94,#0c,#08,#0b,#08,#09
.le8d9 equ $ + 4
	db #04,#07,#20,#94,#95,#02,#00,#c6
.le8e4 equ $ + 7
	db #e8,#95,#01,#00,#d0,#e8,#ff,#82
	db #07,#04,#13,#04,#09,#04,#15,#04
	db #0b,#04,#17,#04,#0c,#04,#18,#04
	db #0e,#04,#1a,#04,#10,#04,#1c,#04
	db #11,#04,#1d,#04,#13,#04,#1f,#04
	db #15,#04,#15,#08,#15,#08,#13,#04
	db #15,#20,#94,#81,#07,#04,#07,#04
	db #09,#04,#09,#04,#0b,#04,#0b,#04
	db #0c,#04,#0c,#04,#0e,#04,#0e,#04
	db #10,#04,#10,#04,#11,#04,#11,#04
	db #13,#04,#13,#04,#15,#04,#15,#08
.le93c equ $ + 7
	db #15,#08,#13,#04,#15,#20,#94,#95
.le942 equ $ + 5
	db #01,#18,#10,#e9,#ff,#95,#01,#24
	dw le8e4
.le948 equ $ + 1
	db #ff,#82,#09,#04,#09,#04,#0c,#04
	db #09,#04,#0c,#04,#0e,#04,#0c,#04
	db #09,#04,#07,#04,#04,#04,#07,#04
.le962 equ $ + 3
	db #09,#20,#94,#82,#21,#20,#1f,#0c
.le96a equ $ + 3
	db #21,#20,#94,#95,#01,#00
	dw le962
.le970 equ $ + 1
	db #ff,#95,#01,#30
	dw le948
.le976 equ $ + 1
	db #ff,#95,#01,#30
	dw le948
	db #ff
.le97c
	dw le96a,le970,le976
	dw #0038
.le984
	dw le8d9,le93c,le942
	dw #0030
.le98c
	dw le6da,le766,le8b1
	db #30,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
;
.music_info
	db "Thunder Blade (1988)(U.S. Gold)()",0
	db "",0

	read "music_end.asm"
