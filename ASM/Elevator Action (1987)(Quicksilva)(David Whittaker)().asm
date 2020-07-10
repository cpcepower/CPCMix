; Music of Elevator Action (1987)(Quicksilva)(David Whittaker)()
; Ripped by Megachur the 04/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE

ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #6000

	read "music_header.asm"

;
.init_music	;l6000
;
	xor a
	ld (l6472),a
	ld hl,l6473
	ld ix,l6044
	ld bc,#0020
	ld a,#03
.l6010
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#03),e
	ld (ix+#04),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	pop hl
	ld (ix+#01),e
	ld (ix+#02),d
	add ix,bc
	dec a
	jr nz,l6010
	inc a
	ld (l60a4),a
	ld (l6472),a
	ret
.l6044
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.l6064
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.l6084
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
.l60a4
	db #00
.l60a5
	db #07
;
.play_music	;l60a6
;
	ld hl,l60a5
	dec (hl)
	jr nz,l60af
;.l60ac
	ld (hl),#07
	ret
.l60af
	ld a,(l6472)
	and a
	ret z
.l60b5 equ $ + 1
	ld a,#00
	ld (l6102),a
	ld hl,l60a4
	dec (hl)
	jr nz,l60da
	ld b,(hl)
	ld ix,l6044
	call l61d0
	ld ix,l6064
	call l61d0
	ld ix,l6084
	call l61d0
	ld hl,l60a4
.l60d9 equ $ + 1
	ld (hl),#01
.l60da
	ld ix,l6044
	call l6265
	ld (l6371),hl
	ld (l6379),a
	ld ix,l6064
	call l6265
	ld (l6373),hl
	ld (l637a),a
	ld ix,l6084
	call l6265
	ld (l6375),hl
	ld (l637b),a
.l6102 equ $ + 1
	ld a,#00
	ld (l6377),a
	ld hl,l637d
	ld d,#0c
.l610b
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,l610b
	ret
;
.jumps_table
;
	db l61d0-$	; #a4
	db l61c4-$	; #97
	db l61c4-$	; #96
	db l61c4-$	; #95
	db l619f-$	; #6f
	db l61c4-$	; #93
	db l61c4-$	; #92
	db l6139-$	; #06
	db l61b5-$	; #81
	db l617b-$	; #46
	db l6166-$	; #30
	db l618f-$	; #58
	db l61ca-$	; #92
.l6139
	ld c,(ix+#05)
	ld b,(ix+#06)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l615b
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l615b
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l61dd
.l6166
	ld a,(ix+#1f)
	ld c,a
	and #07
	ld hl,l6356
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l61dd
.l617b
	ld a,(ix+#1f)
	ld c,a
	and #38
	ld hl,l6356
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l61dd
.l618f
	ld hl,l6356
	ld a,(ix+#1f)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l61dd
.l619f
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l61dd
.l61b5
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l61dd
.l61c4
	ld (ix+#1d),#c0
	jr l61dd
.l61ca
	set 1,(ix+#00)
	jr l61dd
.l61d0
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l61dd
	ld a,(de)
	inc de
	and a
	jp m,l6216
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l61ef
	ld (l60b5),a
.l61ef
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l6216
	cp #b8
	jr c,l625d
	add #20
	jr c,l6242
	add #10
	jr c,l6248
	add #10
	jr nc,l623b
	ld c,a
	ld hl,l6426
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr l61dd
.l623b
	add #09
	ld (l60d9),a
	jr l61dd
.l6242
	inc a
	ld (ix+#11),a
	jr l61dd
.l6248
	ld (ix+#19),a
	ld a,(de)
	inc de
	ld (ix+#14),a
	ld a,(de)
	inc de
	ld (ix+#15),a
	ld a,(de)
	inc de
	ld (ix+#17),a
	jp l61dd
.l625d
	ld hl,jumps_table-&80	;l60ac
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l6265
	ld c,(ix+#00)
	bit 5,c
	jr z,l62b0
	ld a,(ix+#16)
	sub #10
	jr nc,l6298
	bit 6,c
	jr z,l629d
	add (ix+#13)
	jr nc,l627d
	sbc a
.l627d
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l6293
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l62b0
.l6293
	ld (ix+#18),a
	jr l62b0
.l6298
	ld (ix+#16),a
	jr l62b0
.l629d
	cpl
	sub #0f
	add (ix+#13)
	jr c,l62a6
	sub a
.l62a6
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l62b0
	res 5,c
.l62b0
	ld b,(ix+#12)
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,l62c5
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l62c5
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l637e
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l6327
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l62f0
	bit 0,c
	jr nz,l630e
.l62f0
	bit 5,l
	jr nz,l6300
	sub (ix+#1b)
	jr nc,l630b
	set 5,(ix+#1d)
	sub a
	jr l630b
.l6300
	add (ix+#1b)
	cp b
	jr c,l630b
	res 5,(ix+#1d)
	ld a,b
.l630b
	ld (ix+#1c),a
.l630e
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l6319
	dec d
.l6319
	add #a0
	jr c,l6325
.l631d
	sla e
	rl d
	add #18
	jr nc,l631d
.l6325
	add hl,de
	ex de,hl
.l6327
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l6352
	ld b,(ix+#0e)
	djnz l634f
	ld c,(ix+#0d)
	bit 7,c
	jr z,l633e
	dec b
.l633e
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l6352
.l634f
	ld (ix+#0e),b
.l6352
	cpl
	and #03
.l6356 equ $ + 1
	ld a,#38
	jr nz,l6363
	ld a,(l60b5)
	xor #08
	ld (l6102),a
	ld a,#07
.l6363
	ld hl,l6378
	xor (hl)
	and (ix+#1f)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l6378 equ $ + 7
.l6377 equ $ + 6
.l6375 equ $ + 4
.l6373 equ $ + 2
.l6371
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l637d equ $ + 4
.l637b equ $ + 2
.l637a equ $ + 1
.l6379
	db #0f,#0f,#0f,#00,#00
.l637e
	dw #0ef8,#0e10,#0d60,#0c80
	dw #0bd8,#0b28,#0a88,#09f0
	dw #0960,#08e0,#0858,#07e0
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010b,#00fc
	dw #00ef,#00e1,#00d6,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0085,#007e
	dw #0077,#0070,#006b,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0042,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
.l6426
	db #10,#11,#14,#17,#1b,#1f,#22,#25
	db #28,#2b,#2d,#2f,#31,#33,#35,#39
	db #00,#87,#00,#03,#07,#87,#00,#04
	db #07,#87,#00,#03,#07,#0c,#87,#00
	db #04,#07,#0c,#87,#07,#0c,#0f,#87
	db #07,#0c,#10,#87,#03,#07,#0c,#87
	db #04,#07,#0c,#87,#00,#0c,#87,#00
	db #04,#87,#00,#03,#87,#00,#05,#87
	db #00,#07,#87,#00,#00,#0c,#0c,#87
	db #07,#0c,#11,#87
.l6472
.music_end
	db #00
.l6473
	dw l6479,l647d,l64a9
.l6479
	dw l64c3,#0000
.l647d
	dw l6526,l6526,l6526,l6526
	dw l6526,l6526,l6526,l6526
	dw l6526,l6526,l6526,l6526
	dw l6526,l6526,l6526,l6526
	dw l6542,l6526,l6526,l6526
	dw l6526,#0000
.l64a9
	dw l658e,l65a1,l65b8,l65a1
	dw l65d3,l65a1,l65b8,l65a1
	dw l65d3,l658e,l65ee,l658e
	dw #0000
.l64c3
	db #bb,#8a,#e1,#c9,#dd,#00,#12,#08
	db #8c,#3f,#dd,#00,#12,#08,#41,#dd
	db #00,#11,#05,#84,#04,#01,#8c,#27
	db #dd,#00,#12,#08,#8c,#3f,#8c,#3f
	db #dd,#00,#12,#08,#41,#dd,#00,#11
	db #05,#84,#04,#01,#8c,#27,#dd,#00
	db #12,#08,#41,#dd,#00,#12,#08,#e1
	db #8c,#3f,#dd,#00,#12,#08,#41,#dd
	db #00,#11,#05,#84,#04,#01,#8c,#27
	db #df,#00,#12,#08,#8b,#3f,#8a,#8c
	db #27,#8b,#41,#8a,#dd,#00,#11,#05
	db #84,#04,#01,#8c,#27,#df,#00,#12
	db #03,#41,#87
.l6526
	db #88,#01,#01,#83,#df,#00,#11,#04
	db #89,#c0,#e1,#0c,#18,#18,#0c,#16
	db #16,#0c,#15,#15,#0c,#14,#14,#0c
	db #13,#14,#13,#87
.l6542
	db #88,#01,#01,#83,#df,#00,#11,#04
	db #89,#c0,#e1,#13,#1f,#13,#1f,#13
	db #1f,#13,#1f,#13,#1f,#13,#1f,#13
	db #1f,#12,#1e,#11,#1d,#11,#1d,#11
	db #1d,#11,#1d,#11,#1d,#11,#1d,#11
	db #1d,#12,#1e,#13,#1f,#13,#1f,#13
	db #1f,#13,#1f,#13,#1f,#13,#1f,#13
	db #1f,#12,#1e,#11,#1d,#11,#1d,#11
	db #1d,#11,#1d,#15,#21,#15,#21,#15
	db #21,#15,#21,#87
.l658e
	db #88,#01,#01,#83,#da,#00,#71,#01
	db #89,#ff,#c5,#3c,#c7,#3c,#c1,#3c
	db #c5,#30,#87
.l65a1
	db #df,#00,#51,#06,#ce,#89,#e5,#30
	db #e1,#30,#2e,#e3,#2c,#e7,#2b,#e1
	db #2b,#27,#e3,#26,#eb,#24,#87
.l65b8
	db #df,#00,#11,#06,#c9,#e0,#33,#32
	db #e1,#33,#e3,#30,#e0,#3a,#39,#e1
	db #3a,#e3,#37,#e0,#3f,#3e,#e1,#3f
	db #e1,#3c,#87
.l65d3
	db #df,#00,#11,#06,#c9,#e0,#3a,#39
	db #e1,#3a,#e3,#37,#e0,#3f,#3e,#e1
	db #3f,#e3,#3c,#e0,#46,#45,#e1,#46
	db #e1,#43,#87
.l65ee
	db #df,#00,#51,#04,#c6,#e5,#2b,#2b
	db #e3,#2b,#e5,#2b,#37,#e3,#c5,#37
	db #c6,#e5,#29,#29,#e3,#29,#e5,#29
	db #35,#e3,#cf,#35,#c6,#e5,#2b,#2b
	db #e3,#2b,#e5,#2b,#37,#e3,#c5,#37
	db #c6,#e5,#29,#29,#e3,#29,#84,#ff
	db #20,#ef,#c5,#2d,#87
;
.music_info
	db "Elevator Action (1987)(Quicksilva)(David Whittaker)",0
	db "",0

	read "music_end.asm"
