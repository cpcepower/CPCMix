; Music of Xybots (1989)(Domark)(Matt Furniss)()
; Ripped by Megachur the 02/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "XYBOTS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #8f8d
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

	jp l901b	; init a=0->1
	jp l90a3	; play
.l8f93
.music_end
	db #00
	jp l8f9e	; init sound effects
;
.stop_music
;
.l8f97
	xor a
	ld (l8f93),a
	jp l9378
.l8f9e
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,l9899
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,l92be
	call l92f4
	set 7,(ix+#11)
	ret
.l8fc4
	db #00
.l8fcb equ $ + 6
.l8fc5
	dw #0000,#0000,#0000,#0000
.l8fd3 equ $ + 6
.l8fd1 equ $ + 4
.l8fd0 equ $ + 3
.l8fcf equ $ + 2
.l8fce equ $ + 1
.l8fcd
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8fda equ $ + 5
.l8fd9 equ $ + 4
	db #00,#00,#00,#00,#08,#00,#00,#00
.l8fe4 equ $ + 7
.l8fe3 equ $ + 6
.l8fe2 equ $ + 5
.l8fe0 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8fe8 equ $ + 3
.l8fe6 equ $ + 1
.l8fe5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8fef equ $ + 2
.l8fee equ $ + 1
	db #00,#10,#00,#00,#00,#00,#00,#00
.l8ffb equ $ + 6
.l8ffa equ $ + 5
.l8ff9 equ $ + 4
.l8ff8 equ $ + 3
.l8ff7 equ $ + 2
.l8ff5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9003 equ $ + 6
.l8ffd
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
;
.init_music
.l901b
;
	push af
	call l9378
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l9807
	add l
	ld l,a
	jr nc,l902c
	inc h
.l902c
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l8fc5),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l8fda),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l8fef),de
	xor a
	ld (l8fce),a
	ld (l8fe3),a
	ld (l8ff8),a
	ld (l8fd3),a
	ld (l8fe8),a
	ld (l8ffd),a
	cpl
	ld (l8fcf),a
	ld (l8fe4),a
	ld (l8ff9),a
	ld a,#01
	ld (l8fcd),a
	ld (l8fe2),a
	ld (l8ff7),a
	ld (l8fd0),a
	ld (l8fe5),a
	ld (l8ffa),a
	ld hl,l9003
	ld bc,#030a
.l907b
	xor a
.l907c
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l907c
	djnz l907b
	ld hl,l9845
	ld (l8fcb),hl
	ld (l8fe0),hl
	ld (l8ff5),hl
	ld a,#ff
	ld (l8fd1),a
	ld (l8fe6),a
	ld (l8ffb),a
	ld (l8f93),a
	ret
;
.play_music
.l90a3
;
	call l93b0
	ld a,(l8f93)
	and a
	ret z
	ld a,(l8fd1)
	or a
	jr z,l90bb
	ld a,(l8fe6)
	or a
	jr z,l90bb
	ld a,(l8ffb)
	or a
.l90bb
	ld (l8f93),a
	jr nz,l90ce
	ld a,(l92bd)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l8f93),a
	ret
.l90ce
	ld iy,l8fc4
	ld ix,l92be
	call l90ec
	ld iy,l8fd9
	ld ix,l92d0
	call l90ec
	ld iy,l8fee
	ld ix,l92e2
.l90ec
	call l922d
	ld a,(iy+#0b)
	and a
	jr z,l9171
.l90f5
	dec (iy+#09)
	jr z,l910c
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l9171
.l910c
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l9116
	ld a,(hl)
	cp #80
	jr c,l9151
	cp #fe
	jr nz,l9128
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l9116
.l9128
	cp #ff
	jr nz,l9131
	xor a
	ld (iy+#0d),a
	ret
.l9131
	cp #c0
	jr nc,l913e
	and #1f
	ld (iy+#09),a
	inc hl
	jp l9116
.l913e
	and #07
	add (iy+#00)
	ld de,l9003
	add e
	ld e,a
	jr nc,l914b
	inc d
.l914b
	inc hl
	ldi
	jp l9116
.l9151
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,l97e5
	add hl,bc
	ld e,(hl)
	ld hl,l97f6
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr l9177
.l9171
	ld e,(iy+#05)
	ld d,(iy+#06)
.l9179 equ $ + 2
.l9177
	dec (iy+#0c)
	jr z,l9189
	ld a,(de)
	cp #80
	call nc,l91f3
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l9189
	ld a,(de)
	cp #80
	jr c,l919a
	call l91f3
	ld a,(iy+#0b)
	and a
	jr z,l9189
	jp l90f5
.l919a
	cp #7f
	jr z,l91e6
	cp #7e
	jr nz,l91ab
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l91bf
.l91ab
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,l95dc
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l91bf
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
	jp l92f4
.l91e6
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l91f3
	ld a,(de)
	cp #88
	jr nc,l9211
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l9003
	add hl,bc
	ld c,(hl)
	ld hl,l9845
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l9211
	cp #ff
	jr nz,l921a
	ld (iy+#0b),#ff
	ret
.l921a
	cp #c0
	jr nc,l9225
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l9225
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l922d
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l9241
	res 7,(iy+#14)
	ret
.l9241
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l9275
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l9275
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l9264
	inc h
	ld (iy+#11),h
.l9264
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l92aa
.l9275
	ld hl,l9179
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l928f
	bit 6,(iy+#14)
	jr nz,l928f
	ld (iy+#13),#01
	ret
.l928f
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
.l92aa
	add a
	ld hl,l95dc
	add l
	ld l,a
	jr nc,l92b3
	inc h
.l92b3
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.l92c3 equ $ + 6
.l92c2 equ $ + 5
.l92c1 equ $ + 4
.l92be equ $ + 1
.l92bd
	db #bf,#fe,#f7,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l92d4 equ $ + 7
.l92d3 equ $ + 6
.l92d0 equ $ + 3
.l92cf equ $ + 2
	db #00,#00,#00,#fd,#ef,#12,#00,#00
.l92d5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l92e2 equ $ + 5
.l92e1 equ $ + 4
	db #00,#00,#00,#00,#00,#fb,#df,#24
.l92e7 equ $ + 2
.l92e6 equ $ + 1
.l92e5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l92f3 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00
.l92f4
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
	jr nz,l9318
	ld a,#01
.l9318
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(l92bd)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,l9341
	and (ix+#00)
.l9341
	bit 1,c
	jr z,l9348
	and (ix+#01)
.l9348
	ld (l92bd),a
	bit 2,c
	jr nz,l9359
	ld hl,l94a6
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l9359
	ld hl,#ffbf
	ld c,#fd
	ld a,(iy+#00)
	ld e,#0d
	call l955e
	ld a,(iy+#04)
	ld e,#0b
	call l955e
	inc e
	xor a
	call l955e
	ld (ix+#05),#ff
	ret
.l9378
	ld c,#fd
	ld hl,#ffbf
	ld e,#07
	ld a,(l92bd)
	or #3f
	ld (l92bd),a
	call l955e
	xor a
	inc e
	call l955e
	inc e
	call l955e
	inc e
	call l955e
	ld a,#01
	inc e
	call l955e
	inc e
	xor a
	call l955e
	inc e
	call l955e
	ld (l92cf),a
	ld (l92e1),a
	ld (l92f3),a
	ret
.l93b0
	ld a,(l92bd)
	and #3f
	cp #3f
	ret z
	ld ix,l92be
	call l9474
	ld ix,l92d0
	call l9474
	ld ix,l92e2
	call l9474
	ld ix,l92be
	ld hl,#ffbf
	ld c,#fd
	ld e,#07
	ld a,(l92bd)
	call l955e
	ld e,#00
	ld a,(l92c1)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,l93ee
	ld d,a
.l93ee
	call l955e
	inc e
	ld a,(l92c2)
	adc (ix+#0a)
	call l955e
	inc e
	ld a,(l92d3)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,l940a
	ld d,a
.l940a
	call l955e
	inc e
	ld a,(l92d4)
	adc (ix+#1c)
	call l955e
	inc e
	ld a,(l92e5)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,l9426
	ld d,a
.l9426
	call l955e
	inc e
	ld a,(l92e6)
	adc (ix+#2e)
	call l955e
	inc e
	ld a,d
	rrca
	rrca
	rrca
	call l955e
	ld e,#08
	ld a,(l9473)
	ld d,a
	ld a,(l92c3)
	cp d
	jr c,l9448
	ld a,d
.l9448
	srl a
	srl a
	srl a
	call l955e
	inc e
	ld a,(l92d5)
	cp d
	jr c,l9459
	ld a,d
.l9459
	srl a
	srl a
	srl a
	call l955e
	inc e
	ld a,(l92e7)
	cp d
	jr c,l946a
	ld a,d
.l946a
	srl a
	srl a
	srl a
	jp l955e
.l9473
	ld a,a
.l9474
	ld a,(l92bd)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l9495
	cp #ff
	jr z,l9495
	dec (ix+#06)
.l9495
	call l951c
	bit 2,(iy+#09)
	jp nz,l9515
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.l94a6
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l94b5
	ld (ix+#05),a
	ret
.l94b5
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l94c5
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l94c5
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l94d7
	cp (iy+#02)
	jr c,l94d7
	ld (ix+#05),a
	ret
.l94d7
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l94e7
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l94e7
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l94f6
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l94f6
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l9503
	ld (ix+#05),a
	ret
.l9503
	ld (ix+#05),#00
	ld a,(l92bd)
	or (ix+#02)
	ld (l92bd),a
	res 7,(ix+#11)
	ret
.l9515
	ld a,(ix+#06)
	and a
	ret nz
	jr l9503
.l951c
	ld a,(ix+#07)
	and a
	jr z,l9529
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.l9529
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
	jp p,l954d
	ld (ix+#07),#ff
	ret
.l954d
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
.l955e
	push bc
	push de
	push hl
	ld c,e
	ld de,#c000
	ld hl,#f680
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
	pop hl
	pop de
	pop bc
	ret
	db #00
	jp l958c
	jp l901b
	jp l8f9e
	jp l8f97
.l958b
	db #00
.l958c
	push ix
	push iy
	ex af,af'
	push af
	ex af,af'
	push hl
	push de
	ld a,#7f
	ld (l9473),a
	ld a,(l8f93)
	and a
	jr nz,l95a3
	call l901b
.l95a3
	ld a,(#039b)
	or a
	jr z,l95b2
	xor a
	ld (l958b),a
	call l90a3
	jr l95cf
.l95b2
	ld a,(l958b)
	or a
	call z,l8f97
	ld a,#ff
	ld (l958b),a
	ld a,(#8f8c)
	and a
	jr z,l95cc
	rrca
	call l8f9e
	xor a
	ld (#8f8c),a
.l95cc
	call l93b0
.l95cf
	pop de
	pop hl
	ex af,af'
	pop af
	ex af,af'
	pop iy
	pop ix
	ret
	db #00,#00,#00
.l95dc
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
	dw #0018
.l966e
	db #80,#02,#32,#06,#06,#81,#3d,#06
	db #3d,#06,#80,#02,#32,#06,#06,#80
	db #02,#32,#1e,#06,#81,#3d,#06,#3d
	db #06,#80,#02,#32,#06,#06,#81,#3d
	db #06,#80,#02,#32,#06,#06,#81,#3d
	db #06,#80,#02,#32,#06,#06,#80,#02
	db #32,#1e,#06,#81,#3d,#06,#3d,#06
.l96ac equ $ + 6
	db #80,#02,#32,#06,#06,#ff,#82,#06
	db #12,#06,#06,#08,#12,#06,#06,#09
	db #0c,#06,#06,#0b,#0c,#09,#06,#0b
	db #06,#0d,#06,#06,#12,#06,#06,#08
	db #12,#06,#06,#09,#0c,#06,#06,#0b
	db #06,#0d,#06,#10,#06,#0d,#06,#09
.l96db equ $ + 5
.l96d8 equ $ + 2
	db #06,#ff,#7f,#60,#ff,#83,#91,#1e
	db #18,#20,#18,#21,#18,#20,#18,#1e
	db #18,#1e,#0c,#1e,#0c,#20,#12,#21
	db #12,#92,#21,#0c,#93,#19,#60,#90
	db #84,#34,#06,#2a,#06,#31,#06,#34
	db #06,#2f,#06,#2a,#06,#36,#06,#2a
	db #06,#31,#06,#34,#06,#2f,#06,#2a
	db #06,#36,#06,#2a,#06,#31,#06,#2a
.l9718 equ $ + 2
	db #06,#ff,#82,#08,#18,#14,#0c,#08
	db #06,#0a,#0c,#0a,#0c,#0a,#06,#16
	db #0c,#14,#06,#16,#06,#0b,#18,#0b
	db #06,#0d,#06,#0b,#06,#0d,#0c,#0d
	db #0c,#0d,#06,#0e,#06,#0d,#06,#0b
.l9742 equ $ + 4
	db #06,#0a,#06,#ff,#80,#02,#32,#06
	db #06,#81,#3d,#06,#3d,#06,#80,#02
	db #32,#06,#06,#80,#02,#32,#1e,#06
	db #81,#3d,#06,#3d,#06,#80,#02,#32
	db #06,#06,#81,#3d,#06,#80,#02,#32
	db #06,#06,#81,#3d,#06,#80,#02,#32
	db #06,#06,#80,#02,#32,#1e,#06,#20
.l977c equ $ + 6
	db #06,#23,#06,#25,#06,#ff,#91,#83
	db #20,#48,#22,#18,#92,#23,#18,#91
	db #20,#18,#93,#25,#18,#26,#18,#27
	db #a8,#92,#25,#18,#91,#27,#48,#92
	db #25,#18,#23,#18,#92,#25,#18,#91
	db #27,#18,#92,#25,#18,#23,#c0,#ff
.l97a6
	db #85,#1a,#06,#1e,#06,#21,#06,#1e
	db #06,#1c,#06,#20,#06,#23,#06,#20
.l97ba equ $ + 4
	db #06,#1e,#30,#ff,#85,#2f,#06,#2f
	db #0c,#2f,#06,#32,#06,#32,#06,#34
.l97cc equ $ + 6
	db #06,#31,#06,#36,#30,#ff,#85,#2a
	db #06,#26,#0c,#26,#06,#20,#06,#28
	db #06,#2c,#06,#28,#06,#22,#30,#ff
.l97e4 equ $ + 6
.l97e3 equ $ + 5
.l97e2 equ $ + 4
.l97e1 equ $ + 3
.l97e0 equ $ + 2
.l97df equ $ + 1
.l97de
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff
.l97e5
	db l966e,l96ac,l96d8,l96db
	db l9718,l9742,l977c,l97a6
	db l97ba,l97cc,l97de,l97df
	db l97e0,l97e1,l97e2,l97e3
	db l97e4

;	db #6e,#ac,#d8,#db,#18,#42,#7c,#a6
;	db #ba,#cc,#de,#df,#e0,#e1,#e2,#e3
;	db #e4
.l97f6
	db l966e/&100,l96ac/&100,l96d8/&100,l96db/&100
	db l9718/&100,l9742/&100,l977c/&100,l97a6/&100
	db l97ba/&100,l97cc/&100,l97de/&100,l97df/&100
	db l97e0/&100,l97e1/&100,l97e2/&100,l97e3/&100
	db l97e4/&100

;	db #96,#96,#96,#96,#97,#97,#97,#97
;	db #97,#97,#97,#97,#97,#97,#97,#97
;	db #97
.l9807
	dw l9813,l981e,l982f
	dw l983f,l9841,l9843
.l9813
	db #94,#00,#83,#00,#05,#83,#00,#05
	db #88,#00,#ff
.l981e
	db #fe,#fb,#86,#01,#fe,#fe,#01,#01
	db #fe,#fb,#01,#01,#84,#04,#84,#01
	db #ff
.l982f
	db #fe,#07,#84,#02,#03,#03,#fe,#0a
	db #03,#fe,#07,#03,#06,#03,#03,#ff
.l983f
	db #07,#ff
.l9841
	db #08,#ff
.l9843
	db #09,#ff
.l9845
	db #7f,#fc,#01,#ff,#7f,#00,#00,#3c
	db #00,#01,#7f,#9d,#00,#ff,#64,#00
	db #00,#00,#00,#02,#7f,#fe,#01,#ff
	db #7f,#04,#05,#23,#00,#01,#28,#ff
	db #64,#fd,#7f,#00,#04,#02,#00,#01
	db #7f,#fd,#01,#ff,#64,#00,#03,#01
	db #00,#01,#7f,#fe,#01,#ff,#7f,#00
	db #03,#01,#00,#01,#89,#19,#00,#00
	db #00,#00,#00,#00,#89,#21,#00,#00
	db #00,#00,#00,#00,#89,#29,#00,#00
	db #00,#00,#00,#00
.l9899
	db #0f,#81,#01,#ff,#7f,#00,#00,#fb
	db #ff,#01,#6b,#00,#04,#7f,#fd,#01
	db #ff,#7f,#00,#00,#4b,#00,#03,#48
	db #00,#19,#7f,#fe,#01,#ff,#7f,#00
	db #00,#4b,#00,#02,#48,#00,#28,#7f
	db #fd,#43,#fe,#7f,#09,#03,#16,#00
	db #01,#1e,#01,#1a,#7f,#ff,#01,#ff
	db #7f,#00,#00,#72,#00,#02,#01,#00
	db #3c,#7f,#fd,#43,#fe,#7f,#09,#03
	db #16,#00,#01,#1e,#01,#1a,#0c,#fd
	db #43,#fe,#7f,#09,#03,#16,#00,#07
	db #a0,#01,#11,#08,#fd,#01,#ff,#02
	db #07,#03,#0a,#00,#05,#b8,#00,#13
	db #08,#fd,#01,#ff,#02,#07,#03,#0f
	db #00,#05,#cf,#00,#13,#0c,#fd,#01
	db #ff,#00,#03,#00,#0b,#00,#05,#53
	db #00,#21,#0c,#fd,#01,#ff,#02,#03
	db #00,#1f,#00,#05,#90,#00,#14,#0c
	db #fd,#01,#ff,#7f,#03,#00,#1f,#00
	db #05,#c9,#00,#12,#7f,#fd,#01,#fe
	db #7f,#03,#00,#1f,#00,#03,#10,#04
	db #1e,#08,#fa,#01,#ff,#64,#19,#00
	db #03,#00,#05,#00,#01,#3c,#7f,#fd
	db #01,#ff,#7f,#03,#00,#e6,#ff,#03
	db #3c,#02,#1c,#07,#e9,#01,#ff,#7f
	db #03,#00,#f8,#ff,#02,#ec,#00,#1a
	db #00
;
.music_info
	db "Xybots (1989)(Domark)(Matt Furniss)",0
	db "",0

	read "music_end.asm"
