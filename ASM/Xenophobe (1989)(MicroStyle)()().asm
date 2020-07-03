; Music of Xenophobe (1989)(MicroStyle)()()
; Ripped by Megachur the 30/07/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "XENOPHOB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 30
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #72f2
FIRST_THEME				equ 1
LAST_THEME				equ 1

	read "music_header.asm"

.l72f2
	db #0f
.l72f3
	ld e,a
	and #0f
	add a
	ld l,a
	ld h,#00
	ld a,e
	and #f0
	ld e,a
	ld d,#00
	add hl,de
	add hl,de
	ld de,l7b91
	add hl,de
	ret
.l7307
	ld hl,#0000
	ld a,#10
.l730c
	ex af,af'
	sla c
	rl b
	adc hl,hl
	ld a,h
	cp d
	jp nz,l731a
	ld a,l
	cp e
.l731a
	jp c,l7320
	sbc hl,de
	inc bc
.l7320
	ex af,af'
	dec a
	jp nz,l730c
	ret
.l7326
	push bc
	push de
	ld hl,#0000
	ld a,#10
.l732d
	srl d
	rr e
	jp nc,l7335
	add hl,bc
.l7335
	sla c
	rl b
	dec a
	jp nz,l732d
	pop de
	pop bc
	ret
.l7340
	push bc
	ld c,l
	ld a,h
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
	pop bc
	ret
.l7362
	db #01
;
.play_music
;
	ld hl,l7362
	ld a,(hl)
	or a
	jp z,l74b7
	cp #fe
	jp c,l737f
	cp #ff
	ret nz
	ld (hl),#fe
;
.stop_music
;
	ld hl,#073f
	ld a,l
	ld (l74b1),a
	jp l7340
;
.init_music
.l737f
;
	ld (l74ad),a
	ld hl,l741c
	ld de,l741d
	ld bc,#002a
	ld (hl),#00
	ldir
	ld hl,l744c
	ld de,l744d
	ld bc,#002a
	ld (hl),#00
	ldir
	ld hl,l747c
	ld de,l747d
	ld bc,#002a
	ld (hl),#00
	ldir
	xor a
	call l73cd
	ld a,#01
	call l73cd
	ld a,#02
	call l73cd
	xor a
	ld (l7362),a
	ret
.l73bc
	ld a,(l74ad)
	ld (l7362),a
	ld a,(l74ac)
	call l73cd
	xor a
	ld (l7362),a
	ret
.l73cd
	push af
	ld a,(l7362)
	dec a
	ld l,a
	ld h,#00
	add hl,hl
	ld d,h
	ld e,l
	add hl,hl
	add hl,de
	ld de,l79e4
	add hl,de
	pop af
	or a
	jr z,l740b
	dec a
	jr z,l73f9
	ld de,#0004
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l747c),de
	ld de,l741b
	ld (l747e),de
	ret
.l73f9
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l744c),de
	ld de,l741b
	ld (l744e),de
	ret
.l740b
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l741c),de
	ld de,l741b
	ld (l741e),de
	ret
.l741e equ $ + 3
.l741d equ $ + 2
.l741c equ $ + 1
.l741b
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#5e,#77,#01,#f7
.l744e equ $ + 3
.l744d equ $ + 2
.l744c equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#65,#77,#02,#ef
.l747e equ $ + 3
.l747d equ $ + 2
.l747c equ $ + 1
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#6c,#77,#04,#df
.l74b2 equ $ + 7
.l74b1 equ $ + 6
.l74ae equ $ + 3
.l74ad equ $ + 2
.l74ac equ $ + 1
	db #04,#02,#00,#00,#00,#00,#00,#00
.l74b6 equ $ + 3
.l74b5 equ $ + 2
	db #ff,#00,#02,#00
.l74b7
	ld hl,l74b6
	dec (hl)
	jp p,l76f8
	xor a
	ld (l74ac),a
	ld iy,l741c
	call l74e8
	ld hl,l74ac
	inc (hl)
	ld iy,l744c
	call l74e8
	ld hl,l74ac
	inc (hl)
	ld iy,l747c
	call l74e8
	ld a,(l74b5)
	ld (l74b6),a
	jp l76f8
.l74e8
	dec (iy+#05)
	ret p
.l74ec
	ld l,(iy+#02)
	ld h,(iy+#03)
	ld a,h
	and l
	cp #ff
	jr z,l74fe
	ld a,h
	or l
	jr nz,l7503
	jr l7529
.l74fe
	call l73bc
	jr l74ec
.l7503
	ld a,(hl)
	cp #ff
	jr nz,l7535
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (iy+#00),l
	ld (iy+#01),h
	ld (iy+#02),e
	ld (iy+#03),d
	ex de,hl
	ld a,h
	and l
	cp #ff
	jr z,l7530
	ld a,h
	or l
	jr nz,l7503
.l7529
	ld a,(iy+#04)
	ld (iy+#05),a
	ret
.l7530
	call l73bc
	jr l74ec
.l7535
	push hl
	pop ix
	inc hl
	ld (iy+#02),l
	ld (iy+#03),h
	push af
	and #f0
	rrca
	rrca
	rrca
	ld l,a
	ld h,#00
	ld de,l7552
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	pop af
	jp (hl)
.l7552
	dw l7691,l7691,l7691,l7691
	dw l7691,l7691,l7691,l7691
	dw l75f2,l75f2,l75f2,l75f2
	dw l7588,l7588,l757a,l7572
.l7572
	and #0f
	ld (l74b5),a
	jp l74ec
.l757a
	and #0f
	ld l,(iy+#2b)
	ld h,(iy+#2c)
	inc hl
	inc hl
	ld (hl),a
	jp l74ec
.l7588
	and #1f
	add a
	ld l,a
	ld h,#00
	ld de,l79ea
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
	inc hl
	ld (iy+#0b),a
	or a
	jr z,l75b6
	push hl
	ld (iy+#08),#00
	srl a
	ld e,a
	ld d,#00
	ld hl,l7a23
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (iy+#06),e
	ld (iy+#07),d
	pop hl
.l75b6
	ld a,(hl)
	inc hl
	push hl
	srl a
	ld e,a
	ld d,#00
	ld hl,l7a02
	add hl,de
	ld a,(hl)
	ld (iy+#17),a
	inc hl
	ld a,(hl)
	ld (iy+#18),a
	pop hl
	ld a,(hl)
	inc hl
	ld (iy+#12),a
	ld a,(hl)
	inc hl
	ld (iy+#13),a
	ld a,(hl)
	inc hl
	ld (iy+#0c),a
	ld a,(hl)
	inc hl
	ld (iy+#0f),a
	ex de,hl
	ld l,(iy+#2b)
	ld h,(iy+#2c)
	inc hl
	inc hl
	inc hl
	inc hl
	inc hl
	ld (hl),e
	inc hl
	ld (hl),d
	jp l74ec
.l75f2
	and #3f
	ld (iy+#04),a
	jp l74ec
.l75fa
	ld l,(iy+#02)
	ld h,(iy+#03)
	inc hl
	inc hl
	inc hl
	ld (iy+#02),l
	ld (iy+#03),h
	xor a
	ld (iy+#25),#ff
	call l76d3
	ld a,(ix+#01)
	ld (iy+#1f),a
	ld e,(iy+#04)
	inc e
	ld d,#00
	ld a,(l74b5)
	inc a
	ld c,a
	ld b,#00
	call l7326
	ld e,(ix+#01)
	ld d,#00
	and a
	sbc hl,de
	ld (iy+#27),l
	ld (iy+#28),h
	push hl
	ld a,(iy+#04)
	ld (iy+#05),a
	ld a,(ix+#02)
	call l72f3
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (iy+#1d),e
	ld (iy+#1e),d
	push de
	ld a,(ix+#03)
	call l72f3
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (iy+#21),e
	ld (iy+#22),d
	ld a,#01
	ld (l74b2),a
	pop hl
	ex de,hl
	and a
	sbc hl,de
	jr nc,l7673
	ld a,#ff
	ld (l74b2),a
	ex de,hl
	ld hl,#0000
	and a
	sbc hl,de
.l7673
	ld b,h
	ld c,l
	pop de
	call l7307
	ld (iy+#1b),c
	ld (iy+#1c),b
	ld a,(l74b2)
	or a
	ret p
	ld hl,#0000
	and a
	sbc hl,bc
	ld (iy+#1b),l
	ld (iy+#1c),h
	ret
.l7691
	cp #7f
	jp z,l75fa
	or a
	ret z
	ld c,a
	ld a,(iy+#0b)
	or a
	jr z,l76a9
	ld a,c
	ld (iy+#0a),a
	ld (iy+#08),#00
	jr l76c9
.l76a9
	ld a,c
	ld (iy+#23),a
	ld a,c
	and #70
	ld e,a
	ld d,#00
	ld a,c
	and #0f
	add a
	ld l,a
	ld h,#00
	add hl,de
	add hl,de
	ld de,l7b91
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (iy+#29),e
	ld (iy+#2a),d
.l76c9
	xor a
	ld (iy+#16),a
	ld a,(iy+#04)
	ld (iy+#05),a
.l76d3
	ld l,(iy+#17)
	ld h,(iy+#18)
	ld (iy+#14),l
	ld (iy+#15),h
	ld l,(iy+#12)
	ld (iy+#11),l
	ld (iy+#0d),#00
	ld (iy+#0e),#01
	ld a,(iy+#0f)
	ld (iy+#10),a
	jp l7746
.l76f6
	jr c,l76f8
.l76f8
	ld a,(l74b1)
	or #38
	and #f8
	ld (l76f6),a
	call l7773
	ld iy,l741c
	call l77be
	ld iy,l744c
	call l77be
	ld iy,l747c
	call l77be
	ld a,(l775f)
	ld h,#08
	call l7739
	inc h
	ld a,(l7766)
	call l7739
	inc h
	ld a,(l776d)
	call l7739
	ld a,(l76f6)
	ld l,a
	ld h,#07
	jp l7340
.l7739
	ld l,a
	ld a,(l72f2)
	ld d,a
	ld a,l
	cp d
	jr c,l7743
	ld l,d
.l7743
	jp l7340
.l7746
	xor a
	ld l,(iy+#2b)
	ld h,(iy+#2c)
	ld (hl),#01
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	dec hl
	dec hl
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.l775f equ $ + 1
.l775e
	db #ff,#00,#00,#00,#00,#00,#00,#ff
.l776d equ $ + 7
.l7766
	db #00,#00,#00,#00,#00,#00,#ff,#00
	db #00,#00,#00,#00,#00
.l7773
	ld hl,l775e
	ld a,#03
.l7778
	ex af,af'
	ld a,(hl)
	cp #ff
	jp z,l77b4
	dec (hl)
	jp nz,l77b4
	inc hl
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc de
	ld a,(de)
	dec de
	cp #ff
	jp nz,l7797
	ld b,a
	ld a,(de)
	ld c,a
	jp l77a6
.l7797
	ld a,(de)
	inc de
	ld c,a
	or a
	ld b,#01
	jp p,l77a6
	and #0f
	ld c,a
	ld a,(de)
	inc de
	ld b,a
.l77a6
	ld (hl),d
	dec hl
	ld (hl),e
	dec hl
	ld a,c
	cp (hl)
	jp c,l77b0
	ld c,(hl)
.l77b0
	dec hl
	ld (hl),c
	dec hl
	ld (hl),b
.l77b4
	ld de,#0007
	add hl,de
	ex af,af'
	dec a
	jp nz,l7778
	ret
.l77be
	ld a,(iy+#11)
	or a
	jr z,l77d8
	dec (iy+#11)
	ld a,(l76f6)
	and (iy+#2e)
	ld (l76f6),a
	ld h,#06
	ld l,(iy+#13)
	call l7340
.l77d8
	ld a,(iy+#29)
	ld (iy+#19),a
	ld a,(iy+#2a)
	ld (iy+#1a),a
	ld a,(iy+#0b)
	or a
	jr z,l7829
	jp m,l7814
	ld l,(iy+#06)
	ld h,(iy+#07)
	ld e,(iy+#08)
	ld d,#00
	add hl,de
	ld a,(hl)
	cp #80
	jr nz,l7806
	and a
	sbc hl,de
	xor a
	ld (iy+#08),a
	ld a,(hl)
.l7806
	inc (iy+#08)
	add (iy+#0a)
	ld h,#06
	ld l,a
	call l7340
	jr l781c
.l7814
	ld h,#06
	ld l,(iy+#0a)
	call l7340
.l781c
	ld a,(l76f6)
	or (iy+#2d)
	and (iy+#2e)
	ld (l76f6),a
	ret
.l7829
	ld l,(iy+#14)
	ld h,(iy+#15)
	ld a,h
	or l
	jp z,l7924
	ld (l74ae),hl
	ld e,(iy+#16)
	ld d,#00
	add hl,de
	ld e,(hl)
	dec hl
	ld a,e
	cp #82
	jr z,l789f
	cp #81
	jr z,l7850
	cp #80
	jp z,l78db
	jp l78e3
.l7850
	ld e,(hl)
	ld l,(iy+#23)
	ld a,e
	or a
	jp m,l7867
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,l7873
	inc l
	inc l
	inc l
	jr l7873
.l7867
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,l7873
	dec l
	dec l
	dec l
.l7873
	ld a,l
	and #70
	ld c,a
	ld b,#00
	ld a,l
	and #0f
	add a
	ld l,a
	ld h,#00
	add hl,bc
	add hl,bc
	ld de,l7b91
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (iy+#19),e
	ld (iy+#1a),d
	ld (iy+#29),e
	ld (iy+#2a),d
	xor a
	ld (iy+#14),a
	ld (iy+#15),a
	jp l7924
.l789f
	ld (iy+#16),#00
	ld e,(hl)
	ld l,(iy+#23)
	ld a,e
	or a
	jp m,l78ba
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,l78c6
	inc l
	inc l
	inc l
	jr l78c6
.l78ba
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,l78c6
	dec l
	dec l
	dec l
.l78c6
	ld (iy+#23),l
	ld hl,(l74ae)
	ld e,(hl)
	ld a,(iy+#19)
	ld (iy+#29),a
	ld a,(iy+#1a)
	ld (iy+#2a),a
	jr l78e3
.l78db
	ld (iy+#16),#00
	ld hl,(l74ae)
	ld e,(hl)
.l78e3
	ld l,(iy+#23)
	ld a,e
	or a
	jp m,l78f9
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,l7905
	inc l
	inc l
	inc l
	jr l7905
.l78f9
	ld a,l
	add e
	ld l,a
	and #0f
	cp #0c
	jr c,l7905
	dec l
	dec l
	dec l
.l7905
	ld a,l
	and #70
	ld c,a
	ld b,#00
	ld a,l
	and #0f
	add a
	ld l,a
	ld h,#00
	add hl,bc
	add hl,bc
	ld de,l7b91
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (iy+#19),e
	ld (iy+#1a),d
	inc (iy+#16)
.l7924
	ld a,(iy+#25)
	or a
	jr z,l7978
	ld a,(iy+#1f)
	or a
	jr z,l793b
	dec (iy+#1f)
	ld l,(iy+#1d)
	ld h,(iy+#1e)
	jr l7972
.l793b
	ld e,(iy+#1b)
	ld d,(iy+#1c)
	ld l,(iy+#1d)
	ld h,(iy+#1e)
	add hl,de
	ld (iy+#1d),l
	ld (iy+#1e),h
	push hl
	ld l,(iy+#27)
	ld h,(iy+#28)
	dec hl
	ld (iy+#27),l
	ld (iy+#28),h
	ld a,h
	pop hl
	or a
	jp p,l7972
	ld l,(iy+#21)
	ld h,(iy+#22)
	ld (iy+#29),l
	ld (iy+#2a),h
	ld (iy+#25),#00
.l7972
	ld (iy+#19),l
	ld (iy+#1a),h
.l7978
	ld a,(iy+#0c)
	or a
	jr z,l79ce
	dec (iy+#10)
	jp p,l79b5
	ld a,(iy+#0f)
	ld (iy+#10),a
	ld a,(iy+#0d)
	add (iy+#0e)
	ld (iy+#0d),a
	ld a,(iy+#0c)
	cp (iy+#0d)
	jr nz,l79a6
	ld a,(iy+#0e)
	neg
	ld (iy+#0e),a
	ld a,(iy+#0c)
.l79a6
	neg
	cp (iy+#0d)
	jr nz,l79b5
	ld a,(iy+#0e)
	neg
	ld (iy+#0e),a
.l79b5
	ld a,(iy+#0d)
	or a
	ld d,#00
	jp p,l79c0
	ld d,#ff
.l79c0
	ld e,a
	ld l,(iy+#19)
	ld h,(iy+#1a)
	add hl,de
	ld (iy+#19),l
	ld (iy+#1a),h
.l79ce
	ld h,(iy+#2f)
	ld l,(iy+#19)
	call l7340
	inc h
	ld l,(iy+#1a)
	jp l7340
	db #00,#00,#00,#00,#00,#00
.l79ea equ $ + 6
.l79e4
	dw l7c89,l7cd5,l7d2d,l7a3c
	dw l7a46,l7a53,l7a6a,l7a90
	dw l7ab6,l7ae8,l7af3,l7b17
.l7a02 equ $ + 6
	dw l7b3d,l7b63,l7b6d,#0000
	dw l7a10,l7a12,l7a16,l7a1a
	dw l7a1f,l7a21
.l7a16 equ $ + 6
.l7a12 equ $ + 2
.l7a10
	db #fb,#82,#00,#10,#20,#80,#10,#10
.l7a1f equ $ + 7
.l7a1a equ $ + 2
	db #00,#81,#10,#02,#01,#00,#81,#00
.l7a23 equ $ + 3
.l7a21 equ $ + 1
	db #81,#10,#10,#00,#81,#2b,#7a,#32
	db #7a,#34,#7a,#00,#0a,#14,#1e,#14
	db #0a,#80,#00,#80,#00,#05,#0a,#0f
.l7a3c equ $ + 4
	db #14,#19,#1e,#80,#00,#04,#01,#14
.l7a46 equ $ + 6
	db #00,#00,#8f,#05,#00,#ff,#04,#00
	db #01,#14,#00,#00,#0f,#0c,#09,#06
.l7a53 equ $ + 3
	db #03,#00,#ff,#00,#0c,#01,#14,#00
	db #00,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.l7a6a equ $ + 2
	db #00,#ff,#00,#10,#00,#00,#03,#00
	db #8f,#14,#8e,#14,#8d,#14,#8c,#14
	db #8b,#14,#8a,#14,#89,#14,#88,#14
	db #87,#14,#86,#14,#85,#14,#84,#14
	db #83,#14,#82,#14,#81,#14,#00,#ff
.l7a90
	db #00,#00,#00,#00,#02,#00,#8f,#14
	db #8e,#14,#8d,#14,#8c,#14,#8b,#14
	db #8a,#14,#89,#14,#88,#14,#87,#14
	db #86,#14,#85,#14,#84,#14,#83,#14
.l7ab6 equ $ + 6
	db #82,#14,#81,#14,#00,#ff,#00,#18
	db #00,#00,#00,#00,#8a,#14,#8b,#14
	db #8c,#14,#8d,#14,#8e,#14,#8f,#14
	db #8f,#14,#8e,#14,#8d,#14,#8c,#14
	db #8b,#14,#8a,#14,#89,#14,#88,#14
	db #87,#14,#86,#14,#85,#14,#84,#14
	db #83,#14,#82,#14,#81,#14,#00,#ff
.l7ae8
	db #08,#00,#00,#00,#00,#00,#0f,#0a
.l7af3 equ $ + 3
	db #05,#00,#ff,#00,#14,#00,#00,#00
	db #00,#8f,#06,#8e,#0a,#8c,#0a,#8b
	db #0a,#8a,#05,#89,#05,#88,#05,#87
	db #05,#86,#05,#85,#04,#84,#03,#83
.l7b17 equ $ + 7
	db #02,#82,#02,#81,#02,#00,#ff,#00
	db #00,#02,#04,#02,#00,#8f,#14,#8e
	db #14,#8d,#14,#8c,#14,#8b,#14,#8a
	db #14,#89,#14,#88,#14,#87,#14,#86
	db #14,#85,#14,#84,#14,#83,#14,#82
.l7b3d equ $ + 5
	db #14,#81,#14,#00,#ff,#00,#18,#01
	db #0f,#02,#00,#8f,#0a,#8e,#0a,#8d
	db #0a,#8c,#0a,#8b,#0a,#8a,#0a,#89
	db #0a,#88,#0a,#87,#0a,#86,#0a,#85
	db #0a,#84,#0a,#83,#0a,#82,#0a,#81
.l7b63 equ $ + 3
	db #0a,#00,#ff,#00,#00,#00,#00,#00
.l7b6d equ $ + 5
	db #00,#80,#fe,#00,#ff,#04,#00,#00
	db #00,#00,#00,#8f,#14,#8e,#14,#8d
	db #14,#8c,#14,#8b,#14,#8a,#14,#89
	db #14,#88,#14,#87,#14,#86,#14,#85
	db #14,#84,#14,#83,#14,#82,#14,#81
.l7b91 equ $ + 1
	db #14,#00,#ff,#18,#0e,#4d,#0d,#8e
	db #0c,#da,#0b,#2f,#0b,#8f,#0a,#f7
	db #09,#68,#09,#e1,#08,#61,#08,#e9
	db #07,#00,#00,#00,#00,#00,#00,#00
	db #00,#77,#07,#0c,#07,#a7,#06,#47
	db #06,#ed,#05,#98,#05,#47,#05,#fc
	db #04,#b4,#04,#70,#04,#31,#04,#f4
	db #03,#00,#00,#00,#00,#00,#00,#00
	db #00,#bc,#03,#86,#03,#53,#03,#24
	db #03,#f6,#02,#cc,#02,#a4,#02,#7e
	db #02,#5a,#02,#38,#02,#18,#02,#fa
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#de,#01,#c3,#01,#aa,#01,#92
	db #01,#7b,#01,#66,#01,#52,#01,#3f
	db #01,#2d,#01,#1c,#01,#0c,#01,#fd
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#ef,#00,#e1,#00,#d5,#00,#c9
	db #00,#be,#00,#b3,#00,#a9,#00,#9f
	db #00,#96,#00,#8e,#00,#86,#00,#7f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#77,#00,#71,#00,#6a,#00,#64
	db #00,#5f,#00,#59,#00,#54,#00,#50
	db #00,#4b,#00,#47,#00,#43,#00,#3f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#3c,#00,#38,#00,#35,#00,#32
	db #00,#2f,#00,#2d,#00,#2a,#00,#28
	db #00,#26,#00,#24,#00,#22,#00,#20
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#1e,#00,#1c,#00,#1b,#00,#19
	db #00,#18,#00,#16,#00,#15,#00,#14
	db #00,#13,#00,#12,#00,#11,#00,#10
.l7c89 equ $ + 1
	db #00,#8c,#7d,#69,#7d,#69,#7d,#69
	db #7d,#69,#7d,#69,#7d,#69,#7d,#50
	db #7e,#69,#7d,#50,#7e,#69,#7d,#50
	db #7e,#69,#7d,#69,#7d,#69,#7d,#50
	db #7e,#69,#7d,#50,#7e,#69,#7d,#69
	db #7d,#69,#7d,#69,#7d,#e8,#7e,#31
	db #7f,#31,#7f,#9e,#7f,#69,#7d,#69
	db #7d,#69,#7d,#69,#7d,#e8,#7e,#31
	db #7f,#31,#7f,#9e,#7f,#69,#7d,#69
.l7cd5 equ $ + 5
	db #7d,#09,#80,#ff,#ff,#8c,#7d,#8f
	db #7d,#95,#7d,#95,#7d,#95,#7d,#95
	db #7d,#95,#7d,#37,#7e,#95,#7d,#37
	db #7e,#95,#7d,#37,#7e,#95,#7d,#95
	db #7d,#95,#7d,#37,#7e,#95,#7d,#37
	db #7e,#95,#7d,#b6,#7e,#95,#7d,#95
	db #7d,#95,#7d,#37,#7e,#95,#7d,#37
	db #7e,#95,#7d,#37,#7e,#a2,#7f,#95
	db #7d,#b6,#7e,#95,#7d,#95,#7d,#95
	db #7d,#37,#7e,#95,#7d,#37,#7e,#95
	db #7d,#37,#7e,#a2,#7f,#95,#7d,#95
.l7d2d equ $ + 5
	db #7d,#e3,#7f,#ff,#ff,#8c,#7d,#8f
	db #7d,#8f,#7d,#8f,#7d,#ae,#7d,#ef
	db #7d,#73,#7e,#73,#7e,#ae,#7d,#ef
	db #7d,#63,#7d,#63,#7d,#bf,#7e,#09
	db #7f,#74,#7f,#74,#7f,#9a,#7f,#63
	db #7d,#bf,#7e,#09,#7f,#74,#7f,#74
	db #7f,#9a,#7f,#8f,#7d,#8f,#7d,#25
	db #80,#ff,#ff,#ca,#e0,#bf,#20,#ef
	db #ff,#c2,#80,#29,#29,#29,#29,#29
	db #29,#29,#29,#29,#29,#29,#29,#29
	db #29,#2b,#30,#29,#29,#29,#29,#29
	db #29,#29,#29,#29,#29,#29,#29,#35
	db #34,#32,#30,#ff,#f5,#ef,#ff,#ca
	db #9f,#e0,#20,#ef,#ff,#c3,#81,#19
	db #29,#19,#29,#19,#29,#19,#80,#1b
	db #20,#81,#19,#29,#19,#29,#19,#29
	db #80,#35,#34,#32,#30,#ff,#c4,#80
	db #59,#54,#59,#54,#59,#54,#59,#5b
	db #54,#49,#54,#49,#54,#49,#54,#55
	db #49,#44,#49,#44,#49,#44,#42,#40
	db #87,#7f,#00,#42,#49,#c4,#80,#39
	db #44,#39,#44,#39,#44,#39,#44,#44
	db #49,#44,#49,#44,#49,#44,#49,#49
	db #50,#49,#50,#49,#50,#52,#54,#83
	db #7f,#00,#52,#49,#83,#49,#ff,#c4
	db #80,#54,#59,#54,#59,#81,#54,#c4
	db #80,#52,#50,#81,#52,#85,#49,#80
	db #50,#59,#50,#59,#81,#7f,#00,#50
	db #49,#80,#49,#47,#87,#44,#80,#52
	db #57,#52,#57,#81,#52,#80,#4b,#49
	db #81,#47,#4b,#47,#81,#7f,#00,#47
	db #52,#c4,#80,#4b,#54,#4b,#54,#81
	db #7f,#00,#4b,#47,#c4,#80,#49,#80
	db #7f,#00,#47,#44,#87,#44,#ff,#c3
	db #81,#17,#27,#17,#27,#17,#27,#17
	db #80,#19,#1b,#81,#14,#24,#14,#24
	db #14,#24,#80,#1b,#19,#17,#19,#ff
	db #c2,#80,#27,#27,#27,#27,#27,#27
	db #27,#27,#27,#27,#27,#27,#27,#27
	db #29,#2b,#24,#24,#24,#24,#24,#24
	db #24,#24,#24,#24,#24,#24,#2b,#29
	db #27,#29,#ff,#c4,#80,#59,#59,#57
	db #54,#59,#59,#57,#54,#59,#59,#57
	db #54,#59,#59,#57,#54,#54,#54,#52
	db #50,#54,#54,#52,#50,#54,#54,#52
	db #50,#54,#54,#52,#50,#52,#52,#50
	db #4b,#52,#52,#50,#4b,#52,#52,#50
	db #4b,#52,#52,#50,#4b,#4b,#4b,#49
	db #4b,#50,#4b,#50,#52,#54,#52,#54
	db #55,#57,#55,#57,#5b,#ff,#c3,#9b
	db #19,#80,#25,#24,#22,#20,#ff,#c4
	db #81,#49,#44,#49,#44,#49,#4b,#80
	db #50,#52,#50,#4b,#81,#49,#44,#49
	db #44,#49,#80,#47,#45,#44,#45,#44
	db #40,#81,#49,#50,#47,#50,#45,#50
	db #44,#4b,#8f,#7f,#00,#49,#44,#ff
	db #c7,#81,#39,#44,#50,#59,#50,#44
	db #39,#30,#83,#39,#40,#44,#49,#81
	db #57,#4b,#57,#4b,#42,#4b,#57,#57
	db #5b,#54,#58,#5b,#59,#59,#59,#58
	db #ff,#ca,#80,#e0,#20,#ef,#c7,#81
	db #40,#49,#54,#54,#49,#40,#82,#34
	db #83,#44,#49,#50,#84,#54,#81,#52
	db #47,#52,#47,#47,#52,#5b,#52,#58
	db #5b,#54,#58,#58,#58,#5b,#80,#54
	db #ff,#c7,#80,#39,#49,#44,#49,#50
	db #4b,#49,#4b,#39,#49,#44,#49,#50
	db #4b,#49,#4b,#50,#4b,#49,#50,#4b
	db #49,#54,#52,#50,#59,#57,#55,#5b
	db #59,#57,#59,#5b,#57,#52,#5b,#57
	db #52,#4b,#47,#42,#3b,#37,#32,#37
	db #3b,#42,#47,#49,#48,#49,#48,#49
	db #48,#49,#4b,#49,#48,#49,#48,#49
	db #4b,#48,#44,#ff,#c8,#87,#49,#83
	db #44,#49,#87,#54,#59,#82,#57,#52
	db #81,#4b,#82,#57,#81,#52,#82,#57
	db #80,#5b,#58,#54,#5b,#58,#54,#5b
	db #58,#5b,#58,#54,#5b,#58,#54,#5b
	db #58,#ff,#c8,#bf,#59,#ff,#c9,#bf
	db #49,#ff,#c3,#81,#19,#19,#80,#19
	db #19,#81,#29,#87,#19,#81,#14,#24
	db #17,#27,#87,#19,#81,#19,#19,#80
	db #19,#19,#81,#29,#87,#19,#81,#14
	db #24,#17,#27,#87,#19,#ff,#fd,#0b
	db #18,#25,#18,#25,#18,#25,#18,#25
	db #18,#25,#18,#25,#fd,#05,#25,#26
	db #27,#28,#29,#2a,#2b,#2c,#fd,#bf
	db #2f,#fe,#ff,#c2,#80,#39,#39,#39
	db #39,#39,#39,#39,#39,#29,#29,#29
	db #29,#29,#29,#29,#29,#19,#19,#19
	db #19,#19,#19,#19,#19,#09,#09,#09
	db #09,#09,#09,#09,#09,#cb,#bf,#02
	db #ff,#c3,#81,#19,#29,#19,#29,#19
	db #29,#19,#80,#1b,#20,#81,#19,#29
	db #19,#29,#19,#29,#80,#35,#34,#32
	db #30,#c6,#bf,#27,#ff,#ca,#9f,#e0
	db #20,#ef,#cb,#bf,#30,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#02,#01,#03,#08,#0a
	db #09,#0b,#04,#06,#05,#07,#0c,#0e
	db #0d,#0f,#20,#22,#21,#23,#28,#2a
	db #29,#2b,#24,#26,#25,#27,#2c,#2e
	db #2d,#2f,#10,#12,#11,#13,#18,#1a
	db #19,#1b,#14,#16,#15,#17,#1c,#1e
	db #1d,#1f,#30,#32,#31,#33,#38,#3a
	db #39,#3b,#34,#36,#35,#37,#3c,#3e
	db #3d,#3f,#80,#82,#81,#83,#88,#8a
	db #89,#8b,#84,#86,#85,#87,#8c,#8e
	db #8d,#8f,#a0,#a2,#a1,#a3,#a8,#aa
	db #a9,#ab,#a4,#a6,#a5,#a7,#ac,#ae
	db #ad,#af,#90,#92,#91,#93,#98,#9a
	db #99,#9b,#94,#96,#95,#97,#9c,#9e
	db #9d,#9f,#b0,#b2,#b1,#b3,#b8,#ba
	db #b9,#bb,#b4,#b6,#b5,#b7,#bc,#be
	db #bd,#bf,#40,#42,#41,#43,#48,#4a
	db #49,#4b,#44,#46,#45,#47,#4c,#4e
	db #4d,#4f,#60,#62,#61,#63,#68,#6a
	db #69,#6b,#64,#66,#65,#67,#6c,#6e
	db #6d,#6f,#50,#52,#51,#53,#58,#5a
	db #59,#5b,#54,#56,#55,#57,#5c,#5e
	db #5d,#5f,#70,#72,#71,#73,#78,#7a
	db #79,#7b,#74,#76,#75,#77,#7c,#7e
	db #7d,#7f,#c0,#c2,#c1,#c3,#c8,#ca
	db #c9,#cb,#c4,#c6,#c5,#c7,#cc,#ce
	db #cd,#cf,#e0,#e2,#e1,#e3,#e8,#ea
	db #e9,#eb,#e4,#e6,#e5,#e7,#ec,#ee
	db #ed,#ef,#d0,#d2,#d1,#d3,#d8,#da
	db #d9,#db,#d4,#d6,#d5,#d7,#dc,#de
	db #dd,#df,#f0,#f2,#f1,#f3,#f8,#fa
	db #f9,#fb,#f4,#f6,#f5,#f7,#fc,#fe
	db #fd,#ff,#ff
;
.music_info
	db "Xenophobe (1989)(MicroStyle)()",0
	db "",0

	read "music_end.asm"
