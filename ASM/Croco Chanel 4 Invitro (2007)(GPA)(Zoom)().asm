; Music of Croco Chanel 4 Invitro (2007)(GPA)(Zoom)()
; Ripped by Megachur the 04/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CROCOC4I.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #5400

	read "music_header.asm"

;
.init_music
;
	call l586e
	call l5875
	call l58fc
	call l58fb
	call l5998
	call l5425
	ld a,(l5b3a)
.l5415
	push af
	call l5601
	pop af
	dec a
	jr nz,l5415
	ret
;
.play_music
.l541e
;
	call l5601
	call l546b
	ret
;
.stop_music
.l5425
;
	ld b,#0e
	ld c,#0d
	xor a
.l542a
	push bc
	call l5433
	pop bc
	dec c
	djnz l542a
	ret
.l5433
	ld b,#f4
	out (c),c
	ld bc,#f6c0
	out (c),c
	db #ed,#71 ; out (c),0
	ld b,#f4
	out (c),a
	ld bc,#f680
	out (c),c
	db #ed,#71 ; out (c),0
	ret
.l544a
	ld a,(hl)
	cp #00
	jr z,l5460
	ld (l0000),a
.l5452
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l5460
	inc c
.l5461
	inc de
	ld a,d
	and #03
	ld d,a
	ld (l5476),de
	ret
.l546b
	ld de,#c080
	ld hl,#f4f6
	ld b,l
	out (c),d
	exx
.l5476 equ $ + 1
	ld de,#0000
	ld l,e
	ld b,#f4
	ld c,#00
.l547d
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
	db #00,#00,#00,#00
.l5601
	di
	ld (l5620),sp
	ld a,(l5b3a)
	dec a
.l560c equ $ + 2
	ld hx,#00
	ld iy,l5614
.l5612 equ $ + 1
	jp l56c4
.l5614
	ld hl,(l5612)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld (l5612),de
.l5620 equ $ + 1
	ld sp,#0000
	ei
	ret
.l5626 equ $ + 2
	call z,#2156
.l5627
	nop
	nop
	ld c,l
	ld d,#00
	ld a,(l5b3a)
	ld e,a
	or a
	sbc hl,de
	ld (l5627),hl
	dec a
	jp nc,l56c4
	ld b,d		; reset music
	ld de,l5664
	ld (l5612),de
	ld de,(l5b5d)
	add hl,de
	ld (l5627),hl
	ld a,c
	ld (l567a),a
	ld (l5665),a
	ld hl,(l5476)
	add hl,bc
	ld a,(l5b3a)
	ld c,a
	add hl,bc
	ld a,h
	and #03
	ld (l560c),a
	ld a,l
	ld (l568d),a
.l5665 equ $ + 1
.l5664
	ld a,#00
	dec a
	jp m,l5671
	ld iy,l5676
.l566f equ $ + 1
.l566e
	jp l56c4
.l5671
	ld a,(l5b3a)
	jr l567c
.l5676
	ld a,(l5b3a)
.l567a equ $ + 1
	ld b,#00
	sub b
.l567c
	ld hl,(l566f)
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc de
	inc de
	inc de
	inc de
	ld hl,#00a1
	add hl,de
	ex de,hl
.l568d equ $ + 1
	ld (hl),#00
	inc hl
	ex de,hl
	ldi
	ldi
	ldi
	ldi
	ldi
	ld iy,l56a1
	dec a
	jr l566e
.l56a1
	ld hl,(l566f)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld hl,#a9d9
	add hl,de
	jr c,l56b8
	ld hl,l5626
	ld (l5612),de
	ld de,l56c4
.l56b8
	ld (l566f),de
	ld sp,(l5620)
	ei
	ret
.l56c4 equ $ + 2
	call z,#3156
	jp m,#c359
.l56c8
	rst #10
	ld d,a
	call nc,#3156
	inc b
	ld e,d
	jp l5756
	call c,#3156
	ld c,#5a
	jp l57d7
	call po,#3156
	jr l5739
	jp l5756
	call pe,#3156
	ld (#c35a),hl
	rst #10
	ld d,a
	call p,#3156
	inc l
	ld e,d
	jp l5756
	call m,#3156
	ld (hl),#5a
	jp l5756
	inc b
	ld d,a
	ld sp,l5a40
	jp l5756
	inc c
	ld d,a
	ld sp,l5a4a
	jp l5756
	inc d
	ld d,a
	ld sp,l5a54
	jp l5756
	inc e
	ld d,a
	ld sp,l5a5e
	jp l5756
	inc h
	ld d,a
	ld sp,l5a68
	jp l5756
	inc l
	ld d,a
	ld sp,l5a72
	jp l5756
	ld h,#56
	ld sp,l5a7c
	jp l5756
	inc a
	ld d,a
	ld sp,l5a86
.l5739 equ $ + 2
	jp l5756
	call nz,#3156
	sub b
	ld e,d
	jp l5756
.l5742
	ex af,af'
	ld a,(hl)
	inc hl
	exx
	ld (de),a
	inc e
	ex af,af'
	dec a
	exx
	jp p,l576f
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l5756
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l576c
	exx
	ld d,a
	exx
	add b
	jr nc,l57af
	ex af,af'
.l5764
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l5764
	ex af,af'
.l576c
	exx
	pop bc
	pop hl
.l576f
	sla c
	jr nz,l5777
	ld c,(hl)
	inc hl
	sll c
.l5777
	jr nc,l5742
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l5794
	ex af,af'
	ld a,b
	exx
	ld b,a
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
.l5789
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l5789
	ex af,af'
	exx
	jr l576f
.l5794
	ex af,af'
	ld a,d
	exx
	ld b,a
	inc b
	exx
	ld a,(hl)
	inc hl
	push hl
	push bc
	exx
	add c
	ld l,a
.l57a1
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	djnz l57a1
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l57af
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l57b7
	ld a,(hl)
	ld (de),a
	inc l
	inc e
	djnz l57b7
	push hl
	push de
	jp (iy)
.l57c1
	ex af,af'
	ld a,(hl)
	inc hl
	exx
	ld (de),a
	inc de
	res 2,d
	ex af,af'
	dec a
	exx
	jp p,l57f4
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l57d7
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l57f1
	exx
	ld d,a
	exx
	add b
	jr nc,l5858
	ex af,af'
.l57e5
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l57e5
	ex af,af'
.l57f1
	exx
	pop bc
	pop hl
.l57f4
	sla c
	jr nz,l57fc
	ld c,(hl)
	inc hl
	sll c
.l57fc
	jr nc,l57c1
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l582b
	ex af,af'
	ld a,b
	exx
	ld b,a
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
	ld a,d
	res 0,a
	res 1,a
	exx
	adc (hl)
	add hx
	and #fb
	inc hl
	exx
	ld h,a
.l581c
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l581c
	ex af,af'
	exx
	jr l57f4
.l582b
	ex af,af'
	ld a,d
	exx
	ld b,a
	inc b
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
	ld a,d
	res 0,a
	res 1,a
	exx
	adc (hl)
	add hx
	and #fb
	inc hl
	push hl
	push bc
	exx
	ld h,a
.l5846
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	djnz l5846
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l5858
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l5860
	ld a,(hl)
	ld (de),a
	inc hl
	res 2,h
	inc de
	res 2,d
	djnz l5860
	push hl
	push de
	jp (iy)
.l586e
	ld hl,(l5b5d)
	ld (l5627),hl
	ret
.l5875
	ld hl,l5b3d
	ld d,#40
	exx
	ld hl,(l5b3b)
	inc hl
	inc hl
	push hl
	ld de,#0003
	ld a,(l5b3a)
	ld b,a
	ld c,#00
.l588a
	ld a,(hl)
	cp #01
	jr z,l589b
	exx
	ld (hl),d
	inc hl
	ld (hl),#04
	dec hl
	ld a,d
	add #08
	ld d,a
	exx
	inc c
.l589b
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l588a
	ld hl,l5b3d
	ld d,#40
	ld b,#03
	exx
	pop hl
	push hl
	ld de,#0003
	ld a,(l5b3a)
	ld b,a
.l58b3
	ld a,(hl)
	cp #04
	jr z,l58d0
	exx
	ld a,b
	inc a
	and #03
	ld b,a
	jr nz,l58c9
	ld a,c
	or a
	jr z,l58c9
	dec c
	ld a,d
	add #04
	ld d,a
.l58c9
	ld (hl),d
	inc hl
	ld (hl),#01
	dec hl
	inc d
	exx
.l58d0
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l58b3
	ld hl,l56c8
	ld bc,#0007
	exx
	pop hl
	ld de,#0003
	ld a,(l5b3a)
	ld b,a
.l58e6
	ld a,(hl)
	cp #01
	exx
	ld de,l5756
	jr z,l58f2
	ld de,l57d7
.l58f2
	ld (hl),e
	inc hl
	ld (hl),d
	add hl,bc
	exx
	add hl,de
	djnz l58e6
	ret
.l58fb
	ret
.l58fc
	ld hl,l5b3d
	ld de,l547d
	ld b,(hl)
	inc hl
	ld a,(hl)
	inc hl
	cp #01
	call z,l597d
	call nz,l598a
	ld b,#0d
.l5910
	push bc
	call l595a
	ld b,(hl)
	inc hl
	ld a,(hl)
	cp #04
	call z,l598a
	jr z,l5933
	dec hl
	dec hl
	cp (hl)
	call nz,l597d
	jr nz,l5931
	dec hl
	ld a,(hl)
	inc hl
	sub b
	inc a
	call z,l5985
	call nz,l597d
.l5931
	inc hl
	inc hl
.l5933
	inc hl
	pop bc
	djnz l5910
	ex de,hl
	ld (hl),#7e
	inc hl
	ld (hl),#3c
	inc hl
	ld (hl),#28
	inc hl
	ld (hl),#0f
	inc hl
	ld (hl),#3d
	inc hl
	ex de,hl
	ld hl,l5452
	ld bc,#000f
	ldir
	dec de
	ld hl,l5461
	ld bc,#000a
	ldir
	ret
.l595a
	push hl
	ld hl,l544a
	ldi
	ldi
	ld b,d
	ld c,#ff
	ld a,e
	ldi
	ldi
	ldi
	ldi
	ld (de),a
	inc de
	ld a,b
	ld (de),a
	inc de
	ld hl,l5452
	ld bc,#000f
	ldir
	pop hl
	ret
.l597d
	ex de,hl
	ld (hl),#26
	inc hl
	ld (hl),b
	inc hl
	ex de,hl
	ret
.l5985
	ld a,#24
	ld (de),a
	inc de
	ret
.l598a
	ex de,hl
	ld (hl),#3e
	inc hl
	ld (hl),b
	inc hl
	ld (hl),#b2
	inc hl
	ld (hl),#67
	inc hl
	ex de,hl
	ret
.l5998
	ld hl,l5626
	ld (l5612),hl
	ld hl,l56c4
	ld (l566f),hl
	xor a
	ld (l560c),a
	ld hl,#0000
	ld (l5476),hl
	call l59bd
	ld hl,l59fa
	ld de,l5a9a
	ld bc,#00a0
	ldir
	ret
.l59bd
	ld hl,l5b3d
	exx
	ld a,(l5b3a)
	ld b,a
	ld de,(l5b3b)
	inc de
	inc de
	ld hl,l59fa
.l59ce
	push bc
	exx
	ld a,(hl)
	inc hl
	inc hl
	exx
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#00
	inc hl
	ld (hl),#00
	inc hl
	ld (hl),#40
	inc hl
	inc hl
	ex de,hl
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	push hl
	add hl,bc
	ld b,h
	ld c,l
	pop hl
	inc hl
	ex de,hl
	ld (hl),c
	inc hl
	ld (hl),b
	inc hl
	pop bc
	djnz l59ce
	ret
.l59fa
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a40 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a4a
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a54 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a5e equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a68 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a72
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a7c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a86 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a9a
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
.l5b3d equ $ + 3
.l5b3b equ $ + 1
.l5b3a
	db #0e,#5d,#5b,#40,#04,#c4,#01,#c8
	db #04,#c5,#01,#d0,#04,#c6,#01,#c7
	db #01,#cc,#01,#cd,#01,#ce,#01,#cf
	db #01,#d4,#01,#d5,#01,#d6,#01,#d7
.l5b5d equ $ + 3
	db #01,#d8,#01,#40,#1a,#01,#2e,#00
	db #01,#72,#06,#01,#d3,#06,#01,#3c
	db #0b,#01,#7d,#0c,#01,#3a,#0e,#01
	db #52,#0f,#01,#20,#10,#01,#71,#11
	db #01,#57,#13,#01,#56,#14,#01,#95
	db #15,#01,#cd,#15,#01,#05,#16,#ff
	db #ff,#ff,#ff,#ff,#ff,#4c,#37,#4c
	db #a6,#f1,#00,#fe,#11,#53,#f7,#12
	db #ee,#0c,#e8,#2d,#18,#ba,#ba,#5d
	db #fd,#48,#fa,#42,#8b,#8b,#46,#8c
	db #fd,#54,#7c,#7c,#3e,#fd,#5a,#ac
	db #00,#6e,#6e,#7f,#37,#fd,#b4,#a6
	db #5a,#9a,#54,#fa,#79,#46,#c0,#a6
	db #da,#01,#d4,#8c,#13,#d3,#8b,#44
	db #87,#fe,#7d,#fe,#84,#7d,#7d,#0e
	db #7e,#7e,#7f,#7f,#fe,#89,#fe,#87
	db #b6,#83,#79,#04,#75,#72,#6e,#6b
	db #68,#fd,#e0,#69,#69,#0f,#6a,#6a
	db #6b,#6b,#fe,#e6,#fe,#e4,#ea,#e0
	db #fd,#15,#fc,#fd,#fd,#fc,#7b,#f8
	db #cd,#fd,#04,#fc,#d7,#f2,#0b,#8b
	db #8c,#63,#8c,#fa,#c9,#f4,#1c,#a6
	db #4f,#9e,#fe,#2a,#fc,#2a,#0f,#8d
	db #8d,#8e,#8e,#fe,#49,#fe,#47,#c9
	db #43,#f4,#34,#00,#7d,#80,#82,#85
	db #88,#8b,#8f,#92,#04,#96,#99,#9d
	db #a0,#a6,#fb,#a0,#a7,#a7,#3b,#a8
	db #a8,#fe,#a6,#fa,#a0,#ca,#a4,#4c
	db #fe,#e7,#fd,#ea,#00,#27,#94,#27
	db #27,#28,#28,#17,#8b,#40,#17,#fd
	db #f6,#f8,#7c,#f8,#f8,#f9,#f9,#f8
	db #f3,#88,#fe,#33,#fb,#2f,#de,#06
	db #fa,#00,#68,#34,#68,#01,#68,#69
	db #69,#6a,#6a,#6b,#6b,#fe,#42,#f1
	db #fe,#40,#fe,#3e,#fe,#4b,#ee,#6d
	db #53,#29,#53,#fd,#62,#0f,#54,#54
	db #55,#55,#fe,#66,#fc,#62,#e5,#62
	db #fb,#61,#1f,#5d,#2e,#5d,#fd,#92
	db #fa,#3c,#fa,#90,#ee,#8a,#fa,#36
	db #30,#8b,#46,#fc,#50,#ca,#00,#7d
	db #80,#82,#85,#78,#88,#fc,#5c,#f1
	db #51,#fa,#00,#fa,#a8,#5e,#5e,#5f
	db #78,#5f,#fe,#1a,#fc,#16,#d4,#16
	db #f4,#60,#ba,#5d,#ba,#88,#fd,#5e
	db #a6,#53,#a6,#fd,#64,#a7,#a7,#a8
	db #78,#a8,#fe,#68,#fc,#64,#fe,#71
	db #fa,#5c,#bb,#bb,#bc,#6a,#bc,#fe
	db #7a,#fe,#62,#8b,#fe,#80,#6e,#fe
	db #50,#46,#ba,#fe,#86,#37,#fa,#86
	db #fa,#80,#fe,#14,#4a,#fe,#98,#3e
	db #ff,#fa,#92,#f4,#80,#ee,#a4,#ee
	db #92,#fa,#c8,#ee,#aa,#ee,#8c,#f4
	db #c8,#b1,#da,#aa,#83,#d3,#d1,#be
	db #9e,#94,#4a,#7c,#fe,#a0,#0b,#62
	db #4a,#25,#3e,#fe,#a6,#31,#fa,#a6
	db #e2,#a0,#10,#8b,#46,#6e,#fe,#d0
	db #5d,#46,#23,#37,#b1,#fe,#d6,#2e
	db #fa,#d6,#f4,#d0,#3e,#3e,#1f,#fd
	db #ee,#11,#37,#37,#1b,#fd,#f4,#2e
	db #2e,#17,#fd,#fa,#a1,#fe,#9d,#53
	db #fd,#02,#54,#54,#55,#55,#fe,#06
	db #e8,#fc,#02,#f8,#02,#fe,#eb,#46
	db #fd,#1a,#47,#47,#48,#7b,#48,#fe
	db #1e,#fc,#1a,#fe,#27,#fe,#cd,#4a
	db #fd,#2c,#fa,#18,#f6,#fa,#30,#fa
	db #2a,#fa,#00,#fe,#97,#5d,#fd,#4a
	db #fe,#91,#a6,#c0,#fd,#50,#fe,#e5
	db #8b,#8b,#8c,#8c,#7c,#3e,#00,#7c
	db #7c,#7d,#7d,#75,#3a,#75,#75,#00
	db #76,#76,#6e,#37,#6e,#6e,#6f,#6f
	db #ff,#fa,#48,#fa,#66,#fa,#72,#f4
	db #60,#f4,#5a,#f4,#54,#fa,#96,#f4
	db #4e,#1c,#ba,#5d,#ba,#fd,#b6,#fa
	db #a8,#fa,#ba,#f8,#7c,#00,#f8,#f8
	db #f9,#f9,#ea,#75,#ea,#ea,#00,#eb
	db #eb,#dd,#6e,#dd,#dd,#de,#de,#e3
	db #fa,#cc,#f4,#b4,#f4,#a2,#94,#4a
	db #94,#fd,#f8,#fa,#ea,#ff,#fa,#f6
	db #fa,#f0,#f4,#de,#fa,#9c,#f4,#84
	db #f4,#6c,#fa,#90,#e8,#8a,#fe,#f4
	db #9c,#f7,#f6,#fa,#05,#fa,#11,#fd
	db #71,#fd,#d2,#fe,#c8,#f8,#1f,#4c
	db #4c,#a6,#f1,#80,#fb,#bf,#f9,#94
	db #ee,#8c,#e8,#ad,#dd,#fe,#78,#fd
	db #0f,#5d,#fa,#c2,#fe,#5e,#fd,#5d
	db #46,#fe,#58,#b7,#fd,#57,#3e,#ac
	db #80,#fe,#34,#37,#fd,#34,#a6,#da
	db #f4,#d4,#84,#a0,#9f,#dd,#db,#d9
	db #d1,#fb,#03,#d2,#d2,#3e,#d3,#d3
	db #fe,#09,#fa,#03,#b5,#07,#fe,#97
	db #fe,#61,#8c,#6f,#8c,#fa,#57,#fa
	db #60,#94,#fb,#72,#f4,#6c,#fe,#91
	db #fc,#85,#a0,#fa,#7e,#6e,#fd,#90
	db #6f,#6f,#70,#70,#71,#74,#71,#fe
	db #96,#fe,#94,#f6,#90,#7c,#fd,#a8
	db #7d,#7d,#0e,#7e,#7e,#7f,#7f,#fe
	db #ae,#fe,#ac,#f6,#a8,#a6,#43,#53
	db #fc,#86,#a7,#a7,#a8,#a8,#fe,#c6
	db #fa,#84,#d0,#d6,#c4,#f4,#7e,#ba
	db #fb,#08,#bb,#bb,#bc,#bc,#e0,#fe
	db #0e,#fa,#08,#fa,#0c,#ba,#b9,#b8
	db #b7,#b6,#00,#b5,#b5,#b4,#b4,#b3
	db #b1,#b0,#ae,#05,#ad,#ac,#ab,#aa
	db #a9,#fb,#f3,#a5,#d2,#ce,#bf,#fd
	db #06,#5d,#fc,#18,#fa,#c0,#ee,#68
	db #ee,#0e,#b8,#8a,#dc,#38,#03,#8b
	db #46,#8b,#8b,#8c,#8c,#fe,#06,#fc
	db #06,#0d,#8d,#8d,#8e,#8e,#fe,#10
	db #fa,#08,#7c,#fd,#1c,#03,#7d,#7d
	db #7e,#7e,#7f,#7f,#fe,#22,#fe,#20
	db #a0,#fc,#1c,#6e,#fd,#2e,#6f,#6f
	db #70,#70,#71,#71,#71,#fe,#34,#fe
	db #32,#fc,#2e,#5d,#2e,#5d,#fd,#42
	db #0e,#5e,#5e,#5f,#5f,#fe,#46,#fc
	db #42,#d3,#42,#69,#00,#76,#82,#8f
	db #9b,#a6,#b2,#bd,#c9,#10,#d5,#e1
	db #46,#fb,#88,#47,#47,#48,#48,#a1
	db #fe,#8e,#4a,#fb,#94,#4b,#4b,#4c
	db #4c,#fe,#9a,#43,#53,#fb,#a0,#54
	db #54,#55,#55,#fe,#a6,#fa,#a0,#fc
	db #ee,#a4,#fa,#94,#fa,#bc,#ee,#6a
	db #ed,#2e,#f5,#d1,#8b,#44,#60,#87
	db #ee,#1c,#ba,#07,#79,#75,#72,#6e
	db #6b,#40,#68,#fd,#60,#69,#69,#6a
	db #6a,#6b,#6b,#e2,#fe,#66,#fe,#64
	db #ea,#60,#8b,#46,#8b,#fd,#7d,#7c
	db #78,#3e,#f6,#4b,#fd,#84,#fc,#57
	db #f2,#8b,#8b,#8c,#8c,#c6,#fa,#49
	db #f4,#9c,#a6,#4f,#9e,#fe,#aa,#fc
	db #aa,#8d,#1e,#8d,#8e,#8e,#fe,#c9
	db #fe,#c7,#c9,#c3,#f4,#b4,#7d,#00
	db #80,#82,#85,#88,#8b,#8f,#92,#96
	db #08,#99,#9d,#a0,#a6,#fb,#20,#a7
	db #a7,#a8,#76,#a8,#fe,#26,#fa,#20
	db #ca,#24,#4c,#fe,#67,#fd,#6a,#27
	db #00,#94,#27,#27,#28,#28,#17,#8b
	db #17,#80,#fd,#76,#f8,#7c,#f8,#f8
	db #f9,#f9,#ba,#21,#5d,#ba,#fd,#82
	db #bb,#bb,#bc,#bc,#fe,#86,#e0,#fc
	db #82,#b0,#82,#dc,#3c,#8b,#46,#8b
	db #8b,#8c,#61,#8c,#fe,#06,#fc,#06
	db #8d,#8d,#8e,#8e,#fe,#10,#a0,#fa
	db #08,#7c,#fd,#1c,#7d,#7d,#7e,#7e
	db #7f,#74,#7f,#fe,#22,#fe,#20,#fc
	db #1c,#6e,#fd,#2e,#6f,#6f,#0e,#70
	db #70,#71,#71,#fe,#34,#fe,#32,#fc
	db #2e,#5d,#21,#2e,#5d,#fd,#42,#5e
	db #5e,#5f,#5f,#fe,#46,#c4,#fc,#42
	db #b0,#42,#53,#29,#53,#fd,#a2,#54
	db #54,#38,#55,#55,#fe,#a6,#fc,#a2
	db #b0,#a2,#a6,#53,#8b,#ab,#fe,#00
	db #6e,#fe,#a0,#46,#fe,#06,#37,#fa
	db #06,#fa,#00,#af,#fe,#40,#4a,#fe
	db #18,#3e,#fa,#12,#f4,#00,#ee,#24
	db #ee,#12,#fb,#fa,#48,#ee,#2a,#ee
	db #0c,#f4,#48,#da,#2a,#83,#d3,#51
	db #be,#1e,#10,#94,#4a,#7c,#fe,#20
	db #62,#4a,#25,#3e,#b1,#fe,#26,#31
	db #fa,#26,#e2,#20,#8b,#46,#6e,#fe
	db #50,#0b,#5d,#46,#23,#37,#fe,#56
	db #2e,#fa,#56,#f4,#50,#11,#3e,#3e
	db #1f,#fd,#6e,#37,#37,#1b,#fd,#74
	db #1a,#2e,#2e,#17,#fd,#7a,#fe,#1d
	db #53,#fd,#82,#54,#1e,#54,#55,#55
	db #fe,#86,#fc,#82,#f8,#82,#fe,#6b
	db #46,#87,#fd,#9a,#47,#47,#48,#48
	db #fe,#9e,#fc,#9a,#fe,#a7,#bf,#fe
	db #4d,#4a,#fd,#ac,#fa,#98,#fa,#b0
	db #fa,#aa,#fa,#80,#fe,#17,#6c,#5d
	db #fd,#ca,#fe,#11,#a6,#fd,#d0,#fe
	db #65,#8b,#8b,#00,#8c,#8c,#7c,#3e
	db #7c,#7c,#7d,#7d,#00,#75,#3a,#75
	db #75,#76,#76,#6e,#37,#0f,#6e,#6e
	db #6f,#6f,#fa,#c8,#fa,#e6,#fa,#f2
	db #f4,#e0,#f1,#f4,#da,#f4,#d4,#fa
	db #16,#f4,#ce,#ba,#5d,#ba,#fd,#36
	db #c0,#fa,#28,#fa,#3a,#f8,#7c,#f8
	db #f8,#f9,#f9,#00,#ea,#75,#ea,#ea
	db #eb,#eb,#dd,#6e,#0e,#dd,#dd,#de
	db #de,#fa,#4c,#f4,#34,#f4,#22,#94
	db #3f,#4a,#94,#fd,#78,#fa,#6a,#fa
	db #76,#fa,#70,#f4,#5e,#fa,#1c,#ff
	db #f4,#04,#f4,#ec,#fa,#10,#e8,#0a
	db #f4,#1c,#f7,#76,#fa,#85,#fa,#91
	db #e1,#fd,#f1,#fd,#52,#fe,#48,#f8
	db #53,#29,#53,#fd,#02,#0e,#54,#54
	db #55,#55,#fe,#06,#fc,#02,#f8,#02
	db #46,#21,#23,#46,#fd,#1a,#47,#47
	db #48,#48,#fe,#1e,#c7,#fc,#1a,#fe
	db #27,#4a,#25,#4a,#fd,#2c,#fa,#18
	db #fa,#30,#ff,#fa,#2a,#fa,#00,#fa
	db #ac,#f4,#64,#f4,#be,#fa,#b2,#f4
	db #ac,#f4,#b2,#f3,#f4,#a0,#ee,#c4
	db #fa,#96,#f4,#4e,#ba,#5d,#fd,#f7
	db #fc,#f3,#fc,#fd,#bc,#3a,#00,#fc
	db #2e,#fd,#30,#fd,#8c,#fe,#48,#70
	db #70,#3f,#71,#71,#fe,#92,#fa,#5c
	db #fa,#ce,#fa,#86,#f4,#f0,#a6,#f6
	db #03,#3a,#1d,#3a,#3a,#3b,#3b,#40
	db #56,#fa,#76,#1f,#3e,#1f,#3e,#fd
	db #de,#fa,#d6,#fa,#82,#fa,#e2,#fa
	db #ac,#8f,#fa,#e8,#4c,#4c,#a6,#f1
	db #00,#fd,#3e,#f7,#12,#ee,#0c,#8f
	db #e8,#2d,#ba,#ba,#5d,#fd,#48,#fa
	db #42,#fe,#96,#fd,#95,#6e,#46,#fe
	db #cc,#fd,#cb,#3e,#ac,#00,#fe,#c6
	db #fd,#c5,#37,#f0,#a6,#5a,#94,#54
	db #a0,#6e,#a0,#df,#01,#3f,#01,#00
	db #f1,#00,#f4,#11,#ee,#0c,#d0,#2f
	db #01,#00,#01,#9f,#f7,#01,#9e,#01
	db #9d,#01,#43,#73,#5a,#01,#fe,#e7
	db #fc,#ea,#f5,#e9,#f9,#12,#fa,#01
	db #fa,#01,#e7,#01,#e6,#65,#e4,#01
	db #01,#f0,#7f,#fe,#ee,#74,#04,#44
	db #01,#63,#01,#9f,#01,#9e,#01,#9d
	db #34,#9b,#01,#ff,#fe,#67,#fc,#6a
	db #f5,#69,#12,#7a,#01,#7a,#01,#67
	db #01,#66,#01,#65,#e7,#01,#64,#01
	db #63,#62,#61,#01,#01,#f0,#ff,#ee
	db #f4,#01,#c4,#c0,#a3,#c3,#40,#43
	db #97,#a0,#59,#00,#76,#89,#a8,#b3
	db #cb,#db,#eb,#fb,#40,#0b,#fa,#20
	db #1b,#2b,#3b,#4b,#5b,#6b,#02,#ce
	db #e6,#f6,#06,#16,#26,#fa,#32,#36
	db #00,#46,#56,#66,#76,#86,#f9,#11
	db #21,#10,#31,#41,#51,#fa,#44,#61
	db #71,#81,#91,#00,#a1,#b1,#20,#38
	db #48,#58,#68,#78,#87,#f4,#56,#2c
	db #25,#67,#b4,#f8,#6b,#fa,#68,#fa
	db #74,#00,#44,#54,#64,#74,#84,#94
	db #a4,#b4,#00,#c4,#d4,#e4,#f4,#04
	db #14,#24,#34,#8a,#ec,#80,#53,#29
	db #46,#fe,#a4,#37,#e2,#a4,#5d,#2f
	db #2e,#4a,#fe,#c8,#3e,#ee,#bc,#fc
	db #dd,#fe,#e3,#e2,#d4,#ff,#fb,#d1
	db #e1,#06,#fe,#01,#fe,#f7,#fe,#25
	db #fd,#2c,#fe,#f6,#fe,#ff,#37,#25
	db #4a,#fd,#2b,#fd,#28,#4a,#fe,#34
	db #dc,#3f,#01,#a4,#c2,#01,#a3,#dc
	db #a2,#8b,#44,#87,#7c,#fd,#89,#7d
	db #07,#7d,#7e,#7e,#7f,#7f,#fe,#8f
	db #fe,#8d,#f3,#89,#db,#fe,#78,#fd
	db #43,#34,#e2,#a4,#fe,#7a,#46,#fe
	db #c8,#fd,#64,#ff,#f0,#be,#fc,#dd
	db #fc,#36,#e4,#d6,#da,#a4,#fd,#6a
	db #fc,#2c,#fd,#f5,#f0,#fe,#7d,#fd
	db #76,#f9,#30,#fa,#3f,#a6,#4f,#9e
	db #8b,#81,#fd,#49,#8c,#8c,#8d,#8d
	db #8e,#8e,#fe,#4f,#ef,#fe,#4d,#f3
	db #49,#fe,#25,#46,#fe,#64,#fd,#03
	db #e4,#66,#fe,#28,#7f,#4a,#fe,#88
	db #fd,#24,#f0,#7e,#fc,#9d,#fc,#f6
	db #e4,#96,#fb,#91,#dd,#e1,#c6,#fb
	db #28,#29,#fd,#ec,#fe,#b6,#fe,#bf
	db #25,#fd,#36,#68,#29,#fd,#e8,#fe
	db #44,#25,#fa,#ff,#7c,#3e,#7c,#01
	db #7c,#7d,#7d,#7e,#7e,#7f,#7f,#fe
	db #0c,#fb,#fe,#0a,#fe,#08,#f2,#08
	db #fe,#f8,#fd,#c3,#34,#e2,#24,#fe
	db #fa,#7f,#46,#fe,#48,#fd,#e4,#f0
	db #3e,#fc,#5d,#fc,#b6,#e4,#56,#db
	db #24,#ff,#fd,#76,#fb,#ab,#fd,#a8
	db #fe,#fd,#fd,#f6,#f9,#b0,#dc,#bf
	db #fe,#a5,#7b,#46,#fe,#e4,#fd,#83
	db #e4,#e6,#fe,#81,#4a,#fe,#08,#fd
	db #a4,#ff,#f0,#fe,#fc,#1d,#fc,#76
	db #e4,#16,#fb,#11,#e1,#46,#fe,#41
	db #fd,#aa,#75,#29,#fd,#6c,#fe,#36
	db #fe,#3f,#25,#fd,#b6,#29,#fd,#68
	db #91,#fe,#e2,#25,#e2,#fb,#80,#7c
	db #68,#53,#fd,#86,#b7,#fa,#80,#f1
	db #fb,#92,#fe,#89,#4a,#fd,#98,#f2
	db #8c,#fc,#88,#df,#fa,#ad,#ee,#a4
	db #2e,#fb,#c8,#f2,#b6,#f6,#9a,#b0
	db #86,#fc,#fa,#a7,#fa,#37,#2f,#fb
	db #40,#53,#46,#fe,#64,#fe,#47,#fa
	db #40,#4f,#97,#fb,#52,#53,#4a,#fe
	db #48,#fe,#59,#f3,#4c,#fb,#47,#ed
	db #fa,#6f,#f4,#64,#fa,#7f,#e9,#fb
	db #88,#f8,#52,#3e,#fc,#94,#3f,#46
	db #31,#fd,#9a,#d0,#40,#fa,#cd,#e0
	db #76,#fc,#ba,#fa,#f7,#46,#76,#fb
	db #00,#6e,#5d,#4a,#fd,#06,#fa,#00
	db #bb,#f7,#fb,#12,#e8,#06,#fa,#2d
	db #ee,#24,#f1,#fb,#48,#ee,#36,#a0
	db #00,#5d,#44,#fb,#c0,#68,#fe,#e5
	db #fd,#c6,#fa,#c0,#a2,#fb,#d2,#ed
	db #e8,#c6,#fa,#ed,#ee,#e4,#d5,#fb
	db #08,#ee,#f6,#e9,#fb,#20,#b7,#fe
	db #be,#3e,#fd,#26,#fa,#20,#74,#fb
	db #32,#e8,#26,#fa,#4d,#ed,#ee,#44
	db #fa,#08,#ee,#56,#2f,#fb,#80,#fe
	db #1e,#37,#fd,#86,#bf,#fa,#80,#97
	db #fb,#92,#e8,#86,#fa,#af,#f4,#a4
	db #fa,#bf,#fa,#3e,#fa,#ee,#b6,#d0
	db #80,#fa,#0d,#a6,#b6,#d0,#b0,#76
	db #fb,#a0,#6e,#37,#5d,#4a,#fd,#a6
	db #fa,#a0,#bb,#fb,#b2,#e8,#a6,#fa
	db #cd,#b1,#ee,#c4,#e2,#fb,#e8,#e8
	db #d6,#7c,#68,#53,#fd,#06,#bd,#fa
	db #00,#f1,#fb,#12,#e8,#06,#fa,#2d
	db #ee,#24,#2e,#fb,#48,#d1,#ee,#36
	db #a0,#00,#97,#fb,#c0,#53,#46,#37
	db #fd,#c6,#bd,#fa,#c0,#4c,#fb,#d2
	db #e8,#c6,#fa,#ed,#ee,#e4,#74,#fb
	db #08,#d1,#ee,#f6,#a0,#c0,#76,#fb
	db #80,#6e,#5d,#4a,#fd,#86,#bd,#fa
	db #80,#bb,#fb,#92,#e8,#86,#fa,#ad
	db #ee,#a4,#f1,#fb,#c8,#d7,#ee,#b6
	db #a0,#80,#44,#fb,#40,#68,#fe,#7d
	db #fd,#46,#fa,#40,#7b,#a2,#fb,#52
	db #e8,#46,#fa,#6d,#ee,#64,#d5,#fb
	db #88,#ee,#76,#6d,#e9,#fb,#a0,#fe
	db #3e,#3e,#fd,#a6,#fa,#a0,#74,#fb
	db #b2,#fa,#e8,#a6,#fa,#cd,#ee,#c4
	db #fa,#8e,#ee,#d6,#e2,#fb,#00,#7c
	db #fe,#fe,#9d,#fd,#06,#fa,#00,#fa
	db #28,#e8,#06,#fa,#2d,#ee,#24,#2e
	db #e8,#fb,#48,#ee,#36,#a0,#00,#97
	db #fb,#c0,#53,#46,#37,#de,#fd,#c6
	db #fa,#c0,#4c,#fb,#d2,#e8,#c6,#fa
	db #ed,#ee,#e4,#74,#e8,#fb,#08,#ee
	db #f6,#a0,#c0,#76,#fb,#80,#6e,#5d
	db #4a,#de,#fd,#86,#fa,#80,#bb,#fb
	db #92,#e8,#86,#fa,#ad,#ee,#a4,#f1
	db #eb,#fb,#c8,#ee,#b6,#a0,#80,#44
	db #fb,#40,#68,#fe,#7d,#fd,#46,#bd
	db #fa,#40,#a2,#fb,#52,#e8,#46,#fa
	db #6d,#ee,#64,#d5,#fb,#88,#b6,#ee
	db #76,#e9,#fb,#a0,#fe,#3e,#3e,#fd
	db #a6,#fa,#a0,#74,#fd,#fb,#b2,#e8
	db #a6,#fa,#cd,#ee,#c4,#fa,#8e,#ee
	db #d6,#e2,#fb,#00,#7d,#7c,#fe,#9d
	db #fd,#06,#fa,#00,#fa,#28,#fe,#09
	db #4a,#fd,#18,#f7,#f2,#0c,#fc,#08
	db #fa,#2d,#ee,#24,#2e,#fb,#48,#f2
	db #36,#f6,#1a,#e8,#b0,#06,#fc,#7a
	db #fa,#b7,#2f,#fb,#c0,#53,#46,#37
	db #d3,#fd,#c6,#fa,#c0,#97,#fb,#d2
	db #53,#4a,#fe,#c8,#fe,#d9,#fb,#f3
	db #cc,#fb,#c7,#fa,#ef,#f4,#e4,#fa
	db #ff,#e9,#fb,#08,#f8,#d2,#4f,#3e
	db #fc,#14,#46,#31,#fd,#1a,#d0,#c0
	db #fa,#4d,#e0,#f6,#d1,#fc,#3a,#fa
	db #77,#76,#fb,#80,#6e,#5d,#4a,#fd
	db #86,#bd,#fa,#80,#bb,#fb,#92,#e8
	db #86,#fa,#ad,#ee,#a4,#f1,#fb,#c8
	db #d7,#ee,#b6,#a0,#80,#44,#fb,#40
	db #68,#fe,#65,#fd,#46,#fa,#40,#7b
	db #a2,#fb,#52,#e8,#46,#fa,#6d,#ee
	db #64,#d5,#fb,#88,#ee,#76,#6d,#e9
	db #fb,#a0,#fe,#3e,#3e,#fd,#a6,#fa
	db #a0,#74,#fb,#b2,#e3,#e8,#a6,#fa
	db #cd,#d6,#d5,#97,#4c,#97,#fc,#02
	db #fb,#01,#1e,#4c,#a6,#4c,#fd,#0e
	db #e8,#00,#e2,#0c,#e8,#18,#f1,#31
	db #f8,#f1,#fc,#62,#fb,#61,#f8,#7c
	db #f8,#fd,#6e,#c6,#e8,#60,#fa,#7e
	db #2e,#17,#2e,#fc,#92,#fb,#91,#17
	db #3f,#8b,#17,#fd,#9e,#e8,#90,#fa
	db #ae,#01,#00,#01,#ff,#01,#fe,#c0
	db #36,#fd,#47,#86,#02,#ab,#59,#00
	db #03,#89,#a8,#00,#fc,#20,#01,#fa
	db #20,#fa,#2b,#ff,#fa,#28,#f6,#28
	db #fd,#36,#f5,#3f,#d0,#4f,#fb,#26
	db #f9,#84,#f0,#70,#ff,#f8,#a0,#f4
	db #80,#01,#a4,#01,#af,#01,#ae,#01
	db #ad,#01,#ac,#2b,#aa,#6f,#03,#fb
	db #80,#f4,#7a,#01,#fb,#92,#e8,#86
	db #fa,#af,#ee,#a4,#77,#02,#fb,#c8
	db #ee,#b6,#a0,#80,#05,#fb,#40,#f4
	db #3a,#fa,#28,#ff,#e8,#46,#f4,#22
	db #ee,#6a,#ee,#76,#a0,#40,#fc,#00
	db #fe,#03,#f4,#fa,#fd,#f4,#2e,#ee
	db #0c,#fa,#2f,#e8,#24,#ee,#36,#40
	db #00,#02,#fb,#20,#f7,#f4,#1a,#f4
	db #0e,#ee,#2c,#d0,#f0,#05,#fb,#80
	db #f4,#7a,#f4,#20,#fb,#ee,#8c,#ee
	db #1a,#f4,#b0,#ee,#b6,#40,#80,#03
	db #fb,#a0,#f4,#9a,#7f,#01,#fb,#b2
	db #e8,#a6,#fa,#cf,#ee,#c4,#e8,#be
	db #b8,#a0,#fa,#8e,#ff,#8e,#ee,#fa
	db #a8,#e8,#a2,#e8,#a8,#e8,#e4,#8e
	db #ae,#fc,#80,#fe,#83,#f7,#f4,#7a
	db #f4,#6e,#ee,#8c,#10,#50,#02,#fb
	db #a0,#f4,#9a,#f4,#8e,#ff,#ee,#ac
	db #88,#10,#e8,#be,#a0,#00,#fa,#a8
	db #e8,#a2,#e8,#a8,#e8,#e4,#fe,#8e
	db #ae,#fc,#80,#fe,#83,#f4,#7a,#f4
	db #6e,#ee,#8c,#10,#50,#02,#fe,#fb
	db #a0,#f4,#9a,#f4,#8e,#ee,#ac,#88
	db #10,#e8,#be,#a0,#00,#05,#ff,#fb
	db #c0,#f4,#ba,#fa,#a8,#e8,#c6,#f4
	db #a2,#ee,#ea,#ee,#f6,#a0,#c0,#ff
	db #fc,#80,#fe,#83,#f4,#7a,#f4,#ae
	db #ee,#8c,#fa,#af,#e8,#a4,#ee,#b6
	db #bf,#40,#80,#02,#fb,#a0,#f4,#9a
	db #f4,#8e,#ee,#ac,#d0,#cf,#fe,#c3
	db #ff,#fa,#bf,#fb,#03,#fb,#87,#e8
	db #00,#e2,#0c,#e8,#18,#f4,#5a,#f9
	db #82,#fe,#e9,#61,#9a,#fa,#01,#30
	db #01,#2f,#01,#2e,#66,#2d,#47,#86
	db #00,#81,#a1,#00,#b3,#cb,#db,#eb
	db #fb,#0b,#fa,#60,#00,#1b,#2b,#3b
	db #4b,#5b,#6b,#ce,#e6,#08,#f6,#06
	db #16,#26,#fa,#72,#36,#46,#56,#00
	db #66,#76,#86,#f9,#11,#21,#31,#41
	db #40,#51,#fa,#84,#61,#71,#81,#91
	db #a1,#b1,#02,#20,#38,#48,#58,#68
	db #78,#f4,#96,#2c,#1c,#25,#67,#b4
	db #f8,#ab,#fa,#a8,#fa,#b4,#37,#c7
	db #2b,#5f,#a8,#fe,#c3,#2f,#fb,#c6
	db #97,#fb,#cc,#fa,#c0,#fe,#fa,#ba
	db #f4,#cc,#fa,#de,#fa,#c6,#ee,#e4
	db #e8,#d8,#d0,#c0,#53,#2f,#29,#46
	db #fe,#50,#37,#e8,#50,#fa,#6d,#f3
	db #62,#71,#c1,#6e,#9e,#fb,#10,#fa
	db #04,#4f,#fb,#1c,#fa,#10,#fa,#f8
	db #2e,#e3,#fb,#2e,#f4,#f2,#34,#80
	db #a6,#8b,#6e,#fd,#0c,#e2,#b2,#ff
	db #f4,#0c,#f4,#2a,#dc,#88,#d0,#0c
	db #fa,#dc,#f4,#42,#5e,#ee,#d0,#4f
	db #8b,#fa,#44,#f8,#d1,#a6,#fd,#86
	db #e2,#fb,#8c,#f4,#32,#df,#f4,#8c
	db #fa,#86,#f1,#fb,#b0,#f4,#a4,#fa
	db #bf,#fa,#98,#f4,#b0,#fc,#ee,#b0
	db #cd,#8c,#fd,#1e,#e8,#c2,#fa,#28
	db #fa,#34,#a6,#8b,#7d,#6e,#fd,#46
	db #f4,#7a,#fa,#3a,#f4,#4c,#fa,#46
	db #2f,#fb,#70,#ee,#ee,#64,#e8,#58
	db #d0,#40,#9e,#fb,#d0,#ee,#c4,#fa
	db #b8,#2e,#ef,#fb,#ee,#ee,#34,#fa
	db #22,#e2,#fb,#0c,#f4,#f4,#f4,#0c
	db #fa,#06,#ff,#fc,#30,#fe,#33,#f4
	db #24,#fa,#3f,#fa,#18,#f4,#30,#ee
	db #30,#cd,#0c,#f5,#fd,#9e,#e8,#42
	db #f4,#fa,#fe,#a6,#8b,#fd,#c6,#44
	db #fb,#cc,#ff,#f4,#b4,#f4,#cc,#fa
	db #c6,#f4,#ae,#fa,#ea,#fa,#ff,#ee
	db #d8,#f4,#0e,#17,#ba,#94,#7c,#fd
	db #26,#e9,#fb,#2c,#f4,#d2,#f4,#2c
	db #b8,#fa,#26,#74,#f5,#50,#fa,#4a
	db #ee,#5f,#37,#a1,#21,#1f,#a8,#82
	db #6b,#fa,#77,#f9,#f6,#f5,#86,#f4
	db #32,#f4,#8c,#ff,#ee,#86,#f4,#aa
	db #e8,#98,#a6,#80,#fa,#28,#01,#80
	db #01,#7f,#01,#7e,#f8,#67,#7d,#01
	db #ca,#01,#d5,#01,#d4,#fd,#d2,#37
	db #c7,#5f,#61,#a8,#fe,#d9,#f4,#ca
	db #2c,#25,#67,#b4,#fe,#eb,#ff,#f4
	db #d0,#fa,#e8,#ee,#d6,#f4,#f4,#e8
	db #d0,#dc,#d6,#e2,#1e,#be,#18,#ff
	db #01,#fa,#01,#f9,#ca,#58,#ee,#e8
	db #52,#40,#ee,#6c,#01,#00,#01,#ff
	db #ff,#e8,#9a,#d6,#d5,#6a,#40,#dc
	db #36,#fa,#a8,#01,#00,#01,#ff,#e8
	db #9a,#fe,#d6,#d5,#6a,#40,#dc,#36
	db #fa,#a8,#3a,#00,#fa,#80,#4c,#8b
	db #00,#bf,#9c,#00,#01,#fa,#60,#fa
	db #6b,#fa,#68,#f6,#68,#fd,#76,#f5
	db #7f,#af,#ce,#8f,#02,#fd,#c2,#05
	db #fb,#c6,#fc,#c2,#fe,#cf,#fa,#c0
	db #ff,#f6,#bc,#f8,#d0,#fa,#e9,#fa
	db #c6,#ec,#e4,#ea,#da,#d0,#c0,#eb
	db #50,#df,#e5,#64,#70,#c0,#04,#fb
	db #10,#ec,#04,#f0,#fa,#fa,#28,#34
	db #80,#7f,#00,#fb,#0c,#e2,#b2,#f4
	db #0c,#f2,#2a,#de,#8a,#b2,#0c,#6a
	db #fa,#ef,#d0,#4f,#fa,#44,#fa,#2c
	db #03,#fb,#8c,#f4,#32,#f4,#8c,#f4
	db #02,#ff,#f4,#a4,#f2,#aa,#f6,#b2
	db #ee,#b0,#a0,#8c,#f4,#7a,#f6,#3c
	db #f2,#7e,#7b,#05,#fb,#70,#ec,#64
	db #ea,#5a,#d0,#40,#04,#fb,#d0,#ec
	db #c4,#df,#f0,#ba,#ee,#3a,#03,#fb
	db #0c,#f4,#f4,#f4,#0c,#f8,#9a,#f0
	db #fc,#ff,#f2,#2a,#f6,#32,#4c,#fa
	db #f4,#de,#ee,#de,#fc,#22,#fc,#d6
	db #f6,#d4,#ff,#f4,#2c,#ee,#a2,#f4
	db #fc,#f2,#fc,#fa,#3e,#f0,#40,#f4
	db #6e,#f4,#56,#ff,#e8,#80,#ee,#fc
	db #ee,#b0,#a6,#80,#f8,#54,#01,#82
	db #01,#81,#01,#80,#f8,#69,#7f,#01
	db #ca,#01,#d5,#01,#d4,#fd,#d2,#01
	db #01,#02,#ff,#fd,#d8,#f2,#ca,#fc
	db #e9,#f4,#d0,#fa,#e8,#ec,#d6,#f6
	db #f6,#e6,#d0,#ff,#de,#d8,#e2,#1e
	db #be,#18,#01,#fa,#01,#f9,#ca,#58
	db #ec,#ed,#54,#42,#ff,#ee,#6c,#01
	db #00,#01,#ff,#e8,#9a,#d6,#d5,#6a
	db #40,#dc,#36,#fa,#a8,#ff,#01,#00
	db #01,#ff,#e8,#9a,#d6,#d5,#6a,#40
	db #dc,#36,#fa,#a8,#3a,#00,#c0,#fa
	db #80,#4c,#8b,#00,#ac,#a1,#00,#0a
	db #b9,#60,#05,#fe,#a8,#fe,#5f,#09
	db #08,#2f,#07,#06,#fe,#a9,#04,#fa
	db #a8,#fa,#b4,#fa,#a2,#ee,#54,#fe
	db #fa,#ba,#f4,#cc,#ee,#c6,#f4,#ea
	db #e8,#d8,#c4,#c0,#dc,#9c,#14,#aa
	db #fe,#66,#09,#fe,#83,#08,#fe,#86
	db #07,#fe,#89,#06,#c2,#fe,#8c,#fd
	db #7a,#0e,#04,#04,#03,#fe,#95,#07
	db #0f,#02,#02,#01,#0b,#e1,#19,#a0
	db #fc,#e2,#bc,#fa,#28,#ff,#a6,#e0
	db #01,#da,#43,#d9,#d6,#55,#6a,#c0
	db #dc,#b6,#fa,#28,#01,#80,#ff,#01
	db #7f,#e8,#1a,#e2,#55,#fa,#44,#f4
	db #79,#70,#c6,#dc,#b6,#fa,#28,#ff
	db #01,#80,#01,#7f,#01,#7e,#67,#7d
	db #01,#ca,#01,#d5,#01,#d4,#fd,#d2
	db #6d,#0a,#fb,#d6,#f4,#ca,#05,#fe
	db #e8,#fe,#d5,#09,#f4,#d0,#ff,#fa
	db #e8,#ee,#d6,#f4,#f4,#e8,#d0,#dc
	db #d6,#e2,#1e,#be,#18,#01,#fa,#ff
	db #01,#f9,#ca,#58,#ee,#e8,#52,#40
	db #ee,#6c,#01,#00,#01,#ff,#e8,#9a
	db #ff,#d6,#d5,#6a,#40,#dc,#36,#fa
	db #a8,#01,#00,#01,#ff,#e8,#9a,#d6
	db #d5,#f8,#6a,#40,#dc,#36,#fa,#a8
	db #3a,#00,#46,#85,#18,#be,#a0,#00
	db #38,#fc,#61,#fa,#60,#fa,#6b,#d0
	db #60,#f7,#9c,#18,#72,#1c,#f9,#ac
	db #fa,#a8,#fa,#b4,#08,#28,#fe,#c1
	db #2c,#78,#2c,#fc,#c0,#fe,#c9,#f6
	db #c6,#fb,#c4,#08,#0c,#0c,#f9,#f1
	db #cc,#ee,#c9,#f4,#ed,#ea,#db,#fd
	db #a5,#3c,#3c,#fc,#20,#fa,#f8,#a0
	db #f7,#20,#fa,#b7,#f4,#2f,#f7,#4c
	db #28,#ec,#51,#28,#18,#2a,#2a,#0a
	db #fb,#6e,#fa,#68,#20,#30,#30,#1f
	db #20,#22,#22,#dc,#c0,#fc,#3e,#fe
	db #48,#fa,#3e,#f6,#aa,#ff,#ef,#a8
	db #f7,#3b,#f0,#b6,#e9,#a8,#e7,#cb
	db #d7,#b4,#fd,#2b,#01,#80,#ff,#01
	db #7f,#ee,#1a,#d0,#4f,#fa,#d2,#d6
	db #26,#a0,#f0,#f0,#ec,#fd,#1f,#fb
	db #e6,#c3,#fd,#2b,#61,#80,#e2,#7f
	db #5e,#3d,#18,#fd,#9f,#dd,#e3,#f1
	db #fc,#c0,#fe,#c9,#f6,#c6,#fb,#c4
	db #08,#0c,#0c,#fa,#cc,#ff,#8e,#24
	db #fa,#55,#ee,#4a,#f6,#56,#fe,#48
	db #fa,#79,#fa,#74,#fe,#3c,#ff,#f6
	db #87,#f4,#32,#f4,#8c,#ee,#86,#f1
	db #aa,#eb,#9b,#a6,#80,#fa,#28,#be
	db #d0,#e0,#0c,#fb,#70,#46,#b6,#d6
	db #d0,#01,#9a,#a9,#99,#0c,#c8,#fb
	db #b0,#16,#f6,#10,#30,#fe,#a1,#34
	db #34,#14,#ee,#f5,#a6,#fa,#a0,#fd
	db #b2,#10,#f2,#aa,#f9,#be,#d1,#d0
	db #18,#e9,#01,#00,#01,#00,#2f,#fe
	db #1c,#fb,#d0,#18,#38,#fe,#d7,#3f
	db #3c,#3c,#fa,#d0,#f7,#d0,#f9,#cf
	db #f8,#d4,#fa,#e8,#eb,#d6,#ff,#f7
	db #f7,#e5,#d0,#df,#d9,#e2,#1e,#be
	db #18,#01,#fa,#01,#f9,#ca,#58,#f7
	db #eb,#e8,#55,#43,#ee,#6c,#d0,#60
	db #0c,#fb,#f0,#46,#36,#d6,#50,#af
	db #0a,#1a,#18,#fb,#d0,#08,#d7,#d6
	db #70,#40,#d6,#30,#fa,#a8,#ff,#01
	db #00,#01,#ff,#ed,#8e,#d0,#d0,#71
	db #41,#d6,#30,#fa,#a8,#3a,#00,#a8
	db #fa,#80,#2c,#ad,#8c,#24,#a1,#e0
	db #0b,#bf,#fb,#00,#08,#fb,#06,#fa
	db #00,#e2,#00,#f4,#18,#ee,#2a,#e8
	db #4d,#df,#01,#06,#eb,#05,#00,#fb
	db #7a,#46,#c0,#01,#da,#01,#79,#b8
	db #d8,#1b,#0c,#0d,#0e,#7f,#82,#fd
	db #80,#0a,#fe,#07,#f4,#80,#fd,#eb
	db #04,#fd,#2a,#fd,#19,#eb,#19,#bb
	db #c2,#d3,#8a,#0d,#fb,#b8,#5a,#0c
	db #fb,#be,#0b,#fb,#c4,#fa,#2e,#09
	db #fb,#d0,#08,#af,#fb,#d6,#07,#fb
	db #dc,#06,#fb,#e2,#fa,#2b,#ee,#e8
	db #ca,#40,#fe,#fd,#00,#f4,#fd,#fa
	db #ca,#eb,#fd,#d9,#00,#fd,#4b,#fe
	db #61,#0f,#ff,#fd,#8c,#fd,#8a,#fa
	db #87,#d9,#93,#ca,#00,#e2,#5a,#fa
	db #8a,#cd,#19,#ff,#f7,#87,#fa,#55
	db #f7,#b4,#f7,#47,#fa,#6d,#fa,#62
	db #fa,#6e,#fa,#77,#cf,#01,#80,#85
	db #7f,#0d,#0e,#fd,#fa,#ed,#04,#ee
	db #00,#fa,#18,#3f,#09,#09,#fd,#fd
	db #f9,#ff,#ca,#36,#ee,#30,#f4,#72
	db #e2,#30,#ff,#ca,#84,#dc,#cc,#c4
	db #66,#d9,#ae,#ea,#68,#fb,#80,#fe
	db #50,#fc,#87,#fd,#fa,#80,#e2,#80
	db #f4,#98,#ee,#aa,#e8,#cd,#46,#86
	db #00,#a1,#a0,#17,#0d,#0e,#0f,#9d
	db #02,#0a,#f5,#66,#e2,#60,#d0,#36
	db #ff,#9a,#00,#be,#25,#fd,#c0,#fd
	db #8d,#eb,#68,#7c,#82,#fd,#7d,#f1
	db #fb,#fa,#df,#07,#f7,#62,#b2,#bc
	db #f7,#2b,#ee,#28,#0e,#fb,#ac,#0d
	db #ad,#fb,#b2,#0c,#fb,#b8,#0b,#fb
	db #be,#c4,#52,#0c,#fe,#40,#ff,#7f
	db #02,#fd,#00,#fd,#9d,#f4,#00,#eb
	db #84,#fd,#aa,#fd,#99,#eb,#99,#d5
	db #bb,#42,#d3,#0a,#0d,#fb,#38,#0c
	db #fb,#3e,#0b,#fb,#44,#aa,#fa,#ae
	db #09,#fb,#50,#08,#fb,#56,#07,#fb
	db #5c,#06,#f7,#fb,#62,#fa,#ab,#ee
	db #68,#fe,#09,#0f,#7c,#82,#fd,#7d
	db #f1,#fb,#f5,#df,#07,#fa,#39,#a0
	db #80,#e8,#40,#0e,#fb,#b8,#0d,#fb
	db #be,#5a,#0c,#fb,#c4,#0b,#fb,#ca
	db #fa,#28,#09,#fb,#d6,#08,#aa,#fb
	db #dc,#07,#fb,#e2,#06,#fb,#e8,#05
	db #fb,#ee,#04,#bc,#fb,#f4,#03,#fb
	db #fa,#f7,#04,#01,#03,#88,#02,#0d
	db #0e,#f3,#fd,#7a,#ed,#84,#ee,#80
	db #fa,#98,#09,#09,#fd,#7d,#f9,#7f
	db #ff,#ca,#b6,#ee,#b0,#f4,#f2,#e2
	db #b0,#ca,#04,#dc,#4c,#c4,#e6,#d9
	db #2e,#ff,#e8,#e8,#eb,#02,#ee,#00
	db #d6,#6a,#b2,#76,#dc,#78,#43,#06
	db #fd,#7d,#ff,#f7,#e1,#fc,#7c,#fb
	db #92,#f7,#80,#f7,#9b,#91,#ea,#eb
	db #13,#f4,#10,#ff,#39,#7a,#fb,#00
	db #fe,#fa,#fc,#07,#fa,#00,#e2,#00
	db #f4,#18,#ee,#2a,#f7,#e8,#4d,#01
	db #06,#df,#05,#fa,#85,#0b,#ef,#8c
	db #f4,#5c,#fa,#a9,#55,#06,#ef,#b0
	db #03,#ef,#c2,#01,#f5,#d4,#00,#a1
	db #e0,#01,#aa,#fb,#00,#02,#fb,#06
	db #03,#fb,#0c,#04,#fb,#12,#05,#aa
	db #fb,#18,#06,#fb,#1e,#07,#fb,#24
	db #08,#fb,#2a,#09,#a8,#fb,#30,#0a
	db #77,#36,#00,#a1,#c0,#0f,#0e,#0c
	db #10,#0b,#0a,#09,#fa,#20,#08,#07
	db #06,#05,#39,#04,#03,#d0,#20,#f9
	db #5c,#fd,#68,#0e,#0d,#fa,#4c,#eb
	db #fa,#68,#fa,#74,#f4,#7f,#0c,#fe
	db #8c,#0b,#fe,#8f,#fd,#bd,#55,#09
	db #fe,#95,#08,#fe,#98,#07,#fe,#9b
	db #06,#fe,#9e,#7f,#05,#fe,#a1,#fc
	db #7a,#f8,#a7,#f4,#b4,#f4,#aa,#e8
	db #bc,#fd,#98,#fd,#fd,#e2,#f4,#80
	db #fa,#e0,#ee,#b0,#df,#aa,#eb,#25
	db #00,#dd,#40,#f7,#01,#a4,#01,#a3
	db #dc,#a2,#fe,#36,#09,#fd,#86,#e8
	db #8b,#5b,#e4,#ff,#e5,#48,#01,#a4
	db #9d,#a3,#e2,#c5,#64,#24,#f4,#44
	db #eb,#7a,#ee,#80,#ff,#f4,#8f,#f4
	db #53,#f1,#b3,#e8,#9b,#df,#95,#e8
	db #cb,#eb,#41,#d0,#80,#7f,#00,#fb
	db #70,#8b,#b6,#eb,#be,#d0,#40,#ee
	db #d0,#97,#82,#f1,#6f,#bf,#0a,#fa
	db #00,#fb,#b0,#8b,#f6,#eb,#fe,#10
	db #80,#ee,#d0,#97,#82,#ff,#f1,#6f
	db #01,#fa,#01,#f9,#01,#f8,#01,#f7
	db #01,#f6,#01,#f5,#c4,#f4,#7f,#00
	db #fb,#f0,#8b,#36,#eb,#3e,#d0,#c0
	db #ee,#50,#97,#02,#f1,#ef,#af,#64
	db #7a,#00,#d7,#d6,#0d,#01,#00,#01
	db #00,#01,#ff,#01,#fe,#a0,#71,#fc
	db #00,#4d,#8c,#00,#81,#a1,#00,#0f
	db #0e,#0c,#0b,#0a,#09,#fa,#60,#03
	db #08,#07,#06,#05,#04,#03,#d0,#60
	db #f9,#9c,#9d,#fd,#a8,#0e,#0d,#fa
	db #8c,#fa,#a8,#f7,#b4,#0e,#fd,#5e
	db #ff,#fb,#aa,#f6,#c6,#fb,#c4,#f9
	db #bd,#f5,#d0,#ee,#c9,#f4,#ed,#e7
	db #db,#aa,#d4,#c4,#07,#fe,#50,#08
	db #fe,#53,#09,#fe,#56,#0a,#aa,#fe
	db #59,#0b,#fe,#5c,#0c,#fe,#5f,#0d
	db #fe,#62,#0e,#ff,#fe,#65,#fc,#38
	db #fe,#6b,#fe,#48,#fc,#6f,#fd,#6b
	db #fd,#59,#f7,#74,#fc,#73,#c3,#d3
	db #b0,#f9,#2b,#01,#84,#01,#83,#f2
	db #1e,#0b,#0a,#00,#09,#08,#07,#06
	db #05,#04,#03,#02,#7f,#01,#fe,#48
	db #dd,#5c,#70,#c0,#f1,#fe,#f9,#7d
	db #e9,#c6,#f9,#2b,#fc,#65,#84,#e2
	db #7f,#5e,#3d,#fe,#9a,#f6,#89,#55
	db #eb,#0b,#0a,#08,#09,#08,#07,#06
	db #ee,#4a,#05,#04,#03,#3f,#02,#01
	db #fb,#49,#fd,#9f,#fb,#7a,#fa,#74
	db #fa,#67,#fa,#86,#ff,#f4,#32,#f4
	db #8c,#ee,#86,#f1,#aa,#eb,#9b,#a6
	db #80,#fa,#28,#01,#80,#fe,#01,#7f
	db #01,#7e,#6d,#7d,#fe,#c8,#01,#d0
	db #01,#d1,#01,#d0,#00,#01,#0a,#09
	db #08,#07,#06,#06,#0c,#fe,#d6,#75
	db #0b,#fd,#ce,#fb,#d0,#fa,#dc,#0e
	db #fd,#e8,#0d,#fe,#d8,#97,#fc,#e3
	db #07,#0f,#fe,#f4,#0e,#fe,#da,#fd
	db #f4,#fe,#f6,#7f,#0d,#fa,#f4,#fa
	db #ed,#fa,#06,#f4,#f4,#f4,#0c,#ee
	db #06,#f1,#2a,#ff,#eb,#1b,#a6,#00
	db #01,#fa,#01,#f9,#ca,#58,#eb,#e8
	db #55,#43,#ee,#6c,#ff,#01,#00,#01
	db #ff,#ee,#9a,#fe,#c8,#d2,#d1,#70
	db #40,#d6,#30,#fa,#a8,#ff,#01,#00
	db #01,#ff,#ee,#9a,#fe,#c8,#d2,#d1
	db #70,#40,#d6,#30,#fa,#a8,#e0,#3a
	db #00,#fa,#80,#4c,#8a,#00,#ff,#01
	db #00,#01,#00,#01,#ff,#01,#fe,#01
	db #fd,#01,#fc,#01,#fb,#01,#fa,#ff
	db #01,#f9,#01,#f8,#01,#f7,#01,#f6
	db #01,#f5,#01,#f4,#01,#f3,#01,#f2
	db #ff,#01,#f1,#01,#f0,#01,#ef,#01
	db #ee,#01,#ed,#01,#ec,#01,#eb,#01
	db #ea,#e0,#01,#e9,#01,#e8,#a7,#e7
	db #00,#ff,#01,#00,#01,#00,#01,#ff
	db #01,#fe,#01,#fd,#01,#fc,#01,#fb
	db #01,#fa,#ff,#01,#f9,#01,#f8,#01
	db #f7,#01,#f6,#01,#f5,#01,#f4,#01
	db #f3,#01,#f2,#ff,#01,#f1,#01,#f0
	db #01,#ef,#01,#ee,#01,#ed,#01,#ec
	db #01,#eb,#01,#ea,#e0,#01,#e9,#01
	db #e8,#a7,#e7,#ff,#ff,#01,#00,#01
	db #00,#01,#ff,#01,#fe,#01,#fd,#01
	db #fc,#01,#fb,#01,#fa,#ff,#01,#f9
	db #01,#f8,#01,#f7,#01,#f6,#01,#f5
	db #01,#f4,#01,#f3,#01,#f2,#ff,#01
	db #f1,#01,#f0,#01,#ef,#01,#ee,#01
	db #ed,#01,#ec,#01,#eb,#01,#ea,#e0
	db #01,#e9,#01,#e8,#a7,#e6,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#6f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ed,#00
	db #00
.l0000
	db #00
;
; #0264
; ld bc,#7fc7
; out (c),c
; call #5400	; init
;
; #029e
; ld bc,#7fc7
; out (c),c
; call #541e	; play
; ld bc,#7fc0
; out (c),c
;
.music_info
	db "Croco Chanel 4 Invitro (2007)(GPA)(Zoom)",0
	db "",0

	read "music_end.asm"
