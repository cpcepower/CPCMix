; Music of Terramex (1988)(Grandslam)(Ben Daglish)()
; Ripped by Megachur the 22/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TERRAMEX.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #b000

	read "music_header.asm"

	jp lb780	; init music
	jp lb1c3	; play music
.lb007 equ $ + 1
;
.music_end
.lb006
;
	db #00,#05,#08,#41,#0d,#0a,#02,#33
	db #00,#0f,#00,#08,#17,#0d,#0a,#02
	db #7f,#00,#0f,#00,#08,#81,#06,#0a
	db #02,#7f,#00,#0d,#09,#08,#41,#08
	db #0a,#02,#1c,#00,#0f,#1c,#08,#41
	db #7c,#0a,#02,#15,#08,#0f,#00,#08
	db #21,#07,#0a,#02,#7f,#08,#0f,#01
	db #08,#41,#09,#0a,#02,#ff,#00,#0f
	db #1c,#08,#41,#7c,#0a,#02,#15,#08
	db #0f,#00,#08,#81,#09,#0a,#02,#7f
	db #00,#0d,#00,#08,#11,#09,#0a,#02
	db #7f,#00,#0d,#00,#08,#11,#09,#0a
	db #02,#7f,#00,#0c,#00,#08,#00,#00
	db #00,#02,#7f,#00,#0f,#00,#08,#00
	db #00,#00,#02,#7f,#00,#00,#00,#08
	db #00,#00,#00,#02,#7f,#00,#00,#00
	db #08,#00,#00,#00,#02,#7f,#00,#00
	db #00,#08,#00,#00,#00,#02,#7f,#00
	db #00,#00,#08,#00,#00,#00,#02,#7f
	db #00,#00,#00,#08,#00,#00,#00,#02
	db #7f,#00,#00,#00,#08,#00,#00,#00
	db #02,#7f,#00,#00,#00,#08,#00,#00
	db #00,#02,#7f,#00,#00,#00,#08,#00
	db #00,#00,#02,#7f,#00,#00,#00,#08
	db #00,#00,#00,#02,#7f,#00,#00,#00
	db #08,#00,#00,#00,#02,#7f,#00,#00
	db #00,#08,#00,#00,#00,#02,#7f,#00
	db #00,#00,#08,#00,#00,#00,#02,#7f
	db #00,#00,#00,#08,#00,#00,#00,#02
	db #7f,#00,#00,#00,#08,#00,#00,#00
.lb0fa equ $ + 4
	db #02,#7f,#00,#00,#00,#09,#12,#1b
	db #24,#2d,#36,#3f,#00,#09,#12,#1b
	db #24,#2d,#36,#3f,#00,#09,#12,#1b
	db #24,#2d,#36,#3f,#00,#09,#12,#1b
	db #24,#2d,#36,#3f,#00,#09,#12,#1b
	db #24,#2d,#36,#3f,#00,#09,#12,#1b
.lb12d equ $ + 7
.lb12c equ $ + 6
.lb12a equ $ + 4
	db #24,#2d,#36,#3f,#00,#00,#00,#b8
.lb135 equ $ + 7
.lb133 equ $ + 5
.lb132 equ $ + 4
	db #0f,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb151 equ $ + 3
.lb150 equ $ + 2
.lb14f equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb162 equ $ + 4
.lb15f equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb17d equ $ + 7
.lb17c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb17e
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb18c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb18f equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb1ab equ $ + 5
.lb1aa equ $ + 4
.lb1a9 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb1bd equ $ + 7
.lb1bb equ $ + 5
.lb1b9 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb1c2 equ $ + 4
.lb1bf equ $ + 1
	db #00,#00,#00,#00,#00
;
.play_music
.lb1c3
;
	ld hl,lb12c
	ld a,(lb135)
	dec a
	jr nz,lb1d0
	ld (lb135),a
	inc (hl)
.lb1d0
	ld a,(lb162)
	dec a
	jr nz,lb1da
	ld (lb162),a
	inc (hl)
.lb1da
	ld a,(lb18f)
	dec a
	jr nz,lb1e4
	ld (lb18f),a
	inc (hl)
.lb1e4
	xor a
	ld (lb1c2),a
	ld ix,lb132
	ld (lb3bb),a
	ld hl,(lb12a)
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lb2f6),hl
	ld (lb7b8),hl
	ld (lb7cb),hl
	ld (lb7e9),hl
	ld de,(lb1b9)
	call lb2c4
	ld ix,lb15f
	ld a,#01
	ld (lb1c2),a
	ld hl,(lb12a)
	inc hl
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lb2f6),hl
	ld (lb7b8),hl
	ld (lb7cb),hl
	ld (lb7e9),hl
	ld a,#08
	ld (lb3bb),a
	ld de,(lb1bb)
	call lb2c4
	ld ix,lb18c
	ld a,#02
	ld (lb1c2),a
	ld hl,(lb12a)
	ld de,#0004
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lb2f6),hl
	ld (lb7b8),hl
	ld (lb7cb),hl
	ld (lb7e9),hl
	ld a,#10
	ld (lb3bb),a
	ld de,(lb1bd)
	call lb2c4
	ld de,&c000
	ld hl,#f680
	ld a,(lb12c)
	or a
	jr nz,lb2bb
.lb26b
	ld c,#00
	ld a,(lb14f)
	call lbd1f
	inc c
	ld a,(lb150)
	call lbd1f
	inc c
	ld a,(lb17c)
	call lbd1f
	inc c
	ld a,(lb17d)
	call lbd1f
	inc c
.lb28a equ $ + 1
	ld a,#00
	cp #01
	jr nc,lb2a4
	ld a,(lb1a9)
	call lbd1f
	inc c
	ld a,(lb1aa)
	call lbd1f
	ld c,#0a
	ld a,(lb1ab)
	call lbd1f
.lb2a4
	ld c,#07
	ld a,(lb12d)
	call lbd1f
	ld c,#08
	ld a,(lb151)
	call lbd1f
	inc c
	ld a,(lb17e)
	call lbd1f
.lb2bb
	xor a
	ld (lb12c),a
	ld c,#0e
	jp lbd1f
.lb2c4
	ld a,(ix+#03)
	or a
	jp nz,lb535
	ld a,(ix+#11)
	cp #ff
	jr z,lb2d6
	ld (ix+#11),#00
.lb2d6
	ld l,(ix+#02)
	ld h,#00
	add hl,de
	ld a,(hl)
	cp #ff
	jr nz,lb34d
	ld a,(ix+#04)
	or a
	jr z,lb2f0
	dec (ix+#04)
	ld (ix+#02),#00
	jr lb2d6
.lb2f0
	ld l,(ix+#00)
	ld h,#00
.lb2f6 equ $ + 1
	ld bc,lb948
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	cp #ff
	jp z,lb760
	bit 7,a
	jp z,lb32a
	ld l,a
	and #1f
	ld (lb1bf),a
	ld a,l
	and #60
	srl a
	srl a
	srl a
	ld (lb31a),a
.lb31a equ $ + 1
.lb319
	jr lb319
	jp lb7c5
	nop
	jp lb7fc
	nop
	jp lb7b2
	nop
	jp lb7d8
.lb32a
	ld c,a
	ld a,(lb1c2)
	add a
	ld e,a
	ld d,#00
	ld b,d
	ld hl,lba00
	add hl,bc
	ld a,(hl)
	ld hl,lba1b
	add hl,bc
	ld b,(hl)
	ld hl,lb1b9
	add hl,de
	ld (hl),a
	inc hl
	ld (hl),b
	ld e,a
	ld d,b
	ld (ix+#02),#00
	jp lb2d6
.lb34d
	bit 7,a
	jp z,lb4a9
	cp #a0
	jr nz,lb36f
	inc (ix+#02)
	call lb806
	ld (ix+#16),a
	ld (ix+#03),a
	inc (ix+#02)
	xor a
	ld (ix+#1d),a
	ld (ix+#1e),a
	jp lb53e
.lb36f
	cp #90
	jr c,lb3b8
	cp #c0
	jr c,lb3a0
	ld (ix+#15),a
	and #1f
	ld (ix+#14),a
	inc (ix+#02)
	call lb806
	ld (ix+#12),a
	inc (ix+#02)
	call lb806
	ld (ix+#13),a
	inc (ix+#02)
	call lb806
	ld (ix+#11),a
	inc (ix+#02)
	jp lb2d6
.lb3a0
	cp #bf
	jr nz,lb3aa
	ld (ix+#11),#00
	jr lb3b2
.lb3aa
	and #0f
	add a
	add a
	add a
	ld (ix+#10),a
.lb3b2
	inc (ix+#02)
	jp lb2d6
.lb3b8
	and #0f
.lb3bb equ $ + 1
	add #00
	ld l,a
	ld h,#00
	ld bc,lb0fa
	add hl,bc
	ld l,(hl)
	ld h,#00
	ld bc,lb007
	add hl,bc
	push hl
	pop iy
	ld a,(iy+#08)
	ld (ix+#2b),a
	ld hl,lb12d
	ld a,(lb1c2)
	or a
	jr nz,lb3ec
	res 3,(hl)
	set 0,(hl)
	bit 7,(iy+#02)
	jr nz,lb40d
	set 3,(hl)
	res 0,(hl)
	jr lb40d
.lb3ec
	dec a
	jr nz,lb3ff
	set 1,(hl)
	res 4,(hl)
	bit 7,(iy+#02)
	jr nz,lb40d
	res 1,(hl)
	set 4,(hl)
	jr lb40d
.lb3ff
	set 2,(hl)
	res 5,(hl)
	bit 7,(iy+#02)
	jr nz,lb40d
	res 2,(hl)
	set 5,(hl)
.lb40d
	ld (ix+#24),#0f
	ld (ix+#25),#01
	ld a,(iy+#03)
	push af
	and #f0
	jr z,lb43b
	rrca
	rrca
	rrca
	rrca
	ld c,a
	ld b,#00
	ld hl,lbcff
	add hl,bc
	ld a,(hl)
	bit 7,a
	jr nz,lb432
	ld (ix+#24),a
	jr lb43b
.lb432
	and #7f
	ld (ix+#25),a
	ld (ix+#24),#01
.lb43b
	ld a,(iy+#04)
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld (ix+#20),a
	ld (ix+#21),#0f
	ld (ix+#22),#01
	pop af
	and #0f
	jr z,lb46e
	ld c,a
	ld b,#00
	ld hl,lbd0f
	add hl,bc
	ld a,(hl)
	bit 7,(hl)
	jr nz,lb465
	ld (ix+#21),a
	jr lb46e
.lb465
	and #7f
	ld (ix+#22),a
	ld (ix+#21),#01
.lb46e
	ld (ix+#27),#0f
	ld (ix+#28),#01
	ld a,(iy+#04)
	and #0f
	jr z,lb497
	ld c,a
	ld b,#00
	ld hl,lbd0f
	add hl,bc
	ld a,(hl)
	bit 7,a
	jr nz,lb48e
	ld (ix+#27),a
	jr lb497
.lb48e
	and #7f
	ld (ix+#28),a
	ld (ix+#27),#01
.lb497
	ld a,(iy+#05)
	ld (ix+#06),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	inc (ix+#02)
	jp lb2d6
.lb4a9
	add #14
	add (ix+#01)
	ld c,a
	ld b,#00
	ld (ix+#1c),a
	ld hl,lb80f
	add hl,bc
	ld a,(hl)
	ld hl,lb86f
	add hl,bc
	ld h,(hl)
	ld l,a
	ld c,(ix+#09)
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
	set 0,(ix+#2a)
	xor a
	ld (ix+#26),a
	ld (ix+#23),a
	ld (ix+#29),a
	ld (ix+#1f),a
	res 7,(ix+#25)
	res 7,(ix+#22)
	res 7,(ix+#28)
	ld l,(ix+#02)
	ld h,#00
	inc l
	add hl,de
	ld a,(hl)
	inc (ix+#02)
	inc (ix+#02)
	ex af,af'
	ld a,(ix+#0b)
	or a
	jr z,lb50a
	ld l,a
	ld h,#00
	ld bc,lb8c7
	add hl,bc
	ld a,(hl)
	ld (ix+#0a),a
	ld (ix+#0c),#01
.lb50a
	ld a,(ix+#10)
	or a
	jr z,lb528
	ld l,a
	ld h,#00
	ld bc,lb8f0
	add hl,bc
	ld a,(hl)
	and #78
	srl a
	srl a
	srl a
	inc a
	ld (ix+#18),a
	ld (ix+#17),#01
.lb528
	ld a,(ix+#15)
	and #1f
	ld (ix+#14),a
	ex af,af'
	ld (ix+#03),a
	ret
.lb535
	cp (ix+#06)
	jr nz,lb53e
	res 0,(ix+#2a)
.lb53e
	ld a,(ix+#16)
	or a
	jr z,lb54d
	dec (ix+#16)
	ret nz
	ld (ix+#03),#00
	ret
.lb54d
	dec (ix+#03)
	ld a,(lb12c)
	or a
	ret nz
	bit 0,(ix+#2a)
	jr z,lb5bf
	bit 7,(ix+#25)
	jr nz,lb58c
	inc (ix+#26)
	ld a,(ix+#26)
	cp (ix+#25)
	jr nz,lb5e9
	ld (ix+#26),#00
	ld a,(ix+#24)
	add (ix+#1f)
	cp (ix+#2b)
	jr c,lb587
	ld a,(ix+#2b)
	ld (ix+#1f),a
	set 7,(ix+#25)
	jr lb5e9
.lb587
	ld (ix+#1f),a
	jr lb5e9
.lb58c
	bit 7,(ix+#22)
	jr nz,lb5e9
	inc (ix+#23)
	ld a,(ix+#23)
	cp (ix+#22)
	jr nz,lb5e9
	ld (ix+#23),#00
	ld a,(ix+#1f)
	sub (ix+#21)
	jr nc,lb5b5
.lb5a9
	ld a,(ix+#20)
	ld (ix+#1f),a
	set 7,(ix+#22)
	jr lb5e9
.lb5b5
	cp (ix+#20)
	jr c,lb5a9
	ld (ix+#1f),a
	jr lb5e9
.lb5bf
	bit 7,(ix+#28)
	jr nz,lb5e9
	inc (ix+#29)
	ld a,(ix+#29)
	cp (ix+#28)
	jr nz,lb5e9
	ld (ix+#29),#00
	ld a,(ix+#1f)
	sub (ix+#27)
	jr nc,lb5e6
	ld (ix+#1f),#00
	set 7,(ix+#28)
	jr lb5e9
.lb5e6
	ld (ix+#1f),a
.lb5e9
	ld a,(ix+#0b)
	or a
	jp z,lb674
	ld a,(ix+#0a)
	or a
	jr z,lb606
	bit 7,a
	jr z,lb600
	and #7f
	jr z,lb674
	jr lb606
.lb600
	dec (ix+#0a)
	jp lb674
.lb606
	ld a,(ix+#0c)
	and #7f
	add (ix+#0b)
	ld l,a
	ld h,#00
	ld bc,lb8c7
	add hl,bc
	ld a,(hl)
	ld (lb1bf),a
	bit 7,a
	jr z,lb639
	neg
	ld (lb1bf),a
	bit 7,(ix+#0c)
	jr nz,lb645
.lb628
	ld hl,lb1bf
	ld a,(ix+#1d)
	sub (hl)
	ld (ix+#1d),a
	jr nc,lb653
	dec (ix+#1e)
	jr lb653
.lb639
	ld a,(lb1bf)
	ld (lb1bf),a
	bit 7,(ix+#0c)
	jr nz,lb628
.lb645
	ld a,(lb1bf)
	add (ix+#1d)
	ld (ix+#1d),a
	jr nc,lb653
	inc (ix+#1e)
.lb653
	inc (ix+#0c)
	ld a,(ix+#0c)
	and #7f
	cp #08
	jr nz,lb674
	ld a,(ix+#0c)
	xor #89
	ld (ix+#0c),a
	cp #01
	jr nz,lb674
	ld a,(ix+#0a)
	or a
	jr z,lb674
	dec (ix+#0a)
.lb674
	ld a,(ix+#10)
	or a
	jp z,lb70f
	dec (ix+#18)
	jp nz,lb70f
	add (ix+#17)
	ld l,a
	ld h,#00
	ld bc,lb8f0
	add hl,bc
	ld a,(ix+#17)
	bit 7,a
	jr nz,lb6ee
	or a
	jr nz,lb6a1
	ld a,(hl)
	and #38
	srl a
	srl a
	srl a
	or a
	jr nz,lb6a2
.lb6a1
	ld a,(hl)
.lb6a2
	ld c,a
	and #07
	ld (ix+#18),a
	ld a,c
	and #f8
	srl a
	srl a
	srl a
	add (ix+#1c)
	ld c,a
	ld b,#00
	ld hl,lb80f
	add hl,bc
	ld a,(hl)
	ld hl,lb86f
	add hl,bc
	ld h,(hl)
	ld l,a
	ld c,(ix+#09)
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
	inc (ix+#17)
	ld l,(ix+#10)
	ld h,#00
	ld bc,lb8f0
	add hl,bc
	ld a,(hl)
	and #07
	inc a
	cp (ix+#17)
	jr nz,lb70f
	bit 7,(hl)
	ld a,#ff
	jr z,lb6e8
	xor a
.lb6e8
	ld (ix+#17),a
	jp lb70f
.lb6ee
	cp #ff
	jr nz,lb70f
	dec (ix+#17)
	ld c,(ix+#1c)
	ld b,#00
	ld hl,lb80f
	add hl,bc
	ld a,(hl)
	ld hl,lb86f
	add hl,bc
	ld h,(hl)
	ld l,a
	ld c,(ix+#09)
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
.lb70f
	ld a,(ix+#14)
	or a
	jr z,lb71a
	dec (ix+#14)
	jr lb75f
.lb71a
	ld a,(ix+#11)
	or a
	jr z,lb75f
	cp #ff
	jr z,lb727
	dec (ix+#11)
.lb727
	ld a,(ix+#15)
	and #20
	jr z,lb747
	ld l,(ix+#1d)
	ld h,(ix+#1e)
	ld c,(ix+#12)
	ld b,(ix+#13)
	srl b
	rr c
	add hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
	jr lb75f
.lb747
	ld l,(ix+#1d)
	ld h,(ix+#1e)
	ld c,(ix+#12)
	ld b,(ix+#13)
	srl b
	rr c
	sbc hl,bc
	ld (ix+#1d),l
	ld (ix+#1e),h
.lb75f
	ret
.lb760  ; stop music
	xor a
	ld (lb151),a
	ld (lb17e),a
	ld (lb1ab),a
	ld (lb151),a
	ld (lb17e),a
	ld (lb1ab),a
	ld (lb006),a
	ld de,&c000
	ld hl,#f680
	pop af
	jp lb26b
;
.init_music     ; a = 0
.lb780
;
	push af
	ld (lb28a),a
	add a
	ld l,a
	add a
	add l
	ld l,a
	ld h,#00
	ld de,lb930
	add hl,de
	ld (lb12a),hl
	ld hl,lb80e
	ld (lb1b9),hl
	ld (lb1bb),hl
	ld (lb1bd),hl
	ld hl,lb132
	ld de,lb133
	ld bc,#0086
	ld (hl),#00
	ldir
	ld a,#01
	ld (lb006),a
	pop af
	ret
.lb7b2
	ld l,(ix+#00)
	ld h,#00
.lb7b8 equ $ + 1
	ld bc,lb948
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	ld (ix+#09),a
	jp lb2f0
.lb7c5
	ld l,(ix+#00)
	ld h,#00
.lb7cb equ $ + 1
	ld bc,lb948
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
	ld (ix+#01),a
	jp lb2f0
.lb7d8
	ld a,(lb3bb)
	ld c,a
	ld a,(lb1bf)
	add c
	ld (lb7f1),a
	ld l,(ix+#00)
	ld h,#00
.lb7e9 equ $ + 1
	ld bc,lb948
	add hl,bc
	ld a,(hl)
	inc (ix+#00)
.lb7f1 equ $ + 1
	ld l,#00
	ld h,#00
	ld bc,lb0fa
	add hl,bc
	ld (hl),a
	jp lb2f0
.lb7fc
	ld a,(lb1bf)
	dec a
	ld (ix+#04),a
	jp lb2f0
.lb806
	ld l,(ix+#02)
	ld h,#00
	add hl,de
	ld a,(hl)
	ret
.lb80f equ $ + 1
.lb80e
	db #ff,#ee,#18,#4d,#8e,#da,#2f,#8f
	db #f7,#68,#e1,#61,#e9,#77,#0c,#a7
	db #47,#ed,#98,#47,#fc,#b4,#70,#31
	db #f4,#bc,#86,#53,#24,#f6,#cc,#a4
	db #7e,#5a,#38,#18,#fa,#de,#c3,#aa
	db #92,#7b,#66,#52,#3f,#2d,#1c,#0c
	db #fd,#ef,#e1,#d5,#c9,#be,#b3,#a9
	db #9f,#96,#8e,#86,#7f,#77,#71,#6a
	db #64,#5f,#59,#54,#50,#4b,#47,#43
	db #3f,#3c,#38,#35,#32,#2f,#2d,#2a
	db #28,#26,#24,#22,#20,#1e,#1c,#1b
	db #19,#18,#16,#15,#14,#13,#12,#11
.lb86f equ $ + 1
	db #10,#0e,#0e,#0d,#0c,#0b,#0b,#0a
	db #09,#09,#08,#08,#07,#07,#07,#06
	db #06,#05,#05,#05,#04,#04,#04,#04
	db #03,#03,#03,#03,#03,#02,#02,#02
	db #02,#02,#02,#02,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb8c7 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#28,#01,#00,#ff,#00,#01,#00
	db #ff,#10,#12,#14,#16,#20,#40,#50
	db #80,#03,#15,#27,#15,#16,#04,#27
	db #10,#14,#17,#02,#40,#52,#10,#16
.lb8f0 equ $ + 2
	db #82,#65,#62,#16,#16,#82,#10,#17
	db #16,#16,#29,#65,#00,#00,#00,#00
	db #00,#00,#8a,#19,#39,#00,#00,#00
	db #00,#00,#8a,#21,#39,#00,#00,#00
	db #00,#00,#8a,#29,#49,#00,#00,#00
	db #00,#00,#8a,#19,#41,#00,#00,#00
	db #00,#00,#89,#b1,#00,#00,#00,#00
	db #00,#00,#87
	db #11,#32,#62,#a2,#62,#32,#11
.lb930
	dw lb948,lb97b,lb9a3,lb9ce
	dw lb9d8,lb9ef,lb948,lb97b
	dw lb9a3,lb948,lb97b,lb9a3
.lb948
	db #a3,#00,#03,#80,#f9,#a4,#05,#80
	db #f4,#a8,#05,#80,#f7,#05,#80,#f9
	db #05,#80,#fc,#05,#80,#fa,#05,#80
	db #f4,#ac,#05,#80,#f7,#05,#80,#f9
	db #05,#80,#fc,#05,#80,#fa,#05,#80
	db #00,#a6,#0a,#80,#02,#0a,#0a,#80
.lb97b equ $ + 3
	db #f6,#0f,#ff,#c0,#0a,#a3,#00,#03
	db #80,#f9,#a4,#05,#80,#00,#c0,#00
	db #06,#06,#0c,#1a,#e0,#48,#a4,#0d
	db #80,#02,#0d,#0d,#10,#80,#00,#12
	db #12,#13,#e6,#51,#13,#e6,#5a,#13
.lb9a3 equ $ + 3
	db #00,#00,#ff,#be,#02,#a6,#02,#80
	db #0c,#a8,#07,#08,#80,#0e,#08,#80
	db #0c,#09,#09,#ac,#07,#08,#80,#0e
	db #08,#80,#0c,#09,#09,#1a,#1a,#80
	db #00,#a3,#0b,#0e,#0e,#80,#02,#0e
.lb9ce equ $ + 6
	db #0e,#11,#14,#be,#02,#ff,#a6,#0a
	db #80,#02,#0a,#0a,#80,#f6,#0f,#ff
.lb9d8
	db #a4,#1a,#e0,#48,#a4,#0d,#80,#02
	db #0d,#0d,#10,#80,#00,#12,#12,#13
.lb9ef equ $ + 7
	db #13,#e6,#51,#13,#01,#01,#ff,#1a
	db #1a,#a3,#0b,#0e,#0e,#80,#02,#0e
	db #0e,#11,#14,#be,#02,#ff,#ff,#ff
.lba00
	db #36,#40,#4f,#5c,#64,#75,#8b,#bf
	db #da,#f5,#11,#53,#95,#98,#fa,#28
	db #4a,#aa,#d8,#e7,#f3,#f7,#f8,#f9
	db #fa,#fb,#fc,#ba,#ba,#ba,#ba,#ba
.lba1b
	db #ba,#ba,#ba,#ba,#ba,#bb,#bb,#bb
	db #bb,#bb,#bc,#bc,#bc,#bc,#bc,#bc
	db #bc,#bc,#bc,#bc,#bc,#bc,#80,#09
	db #6c,#08,#36,#04,#36,#06,#d8,#ff
	db #81,#e0,#46,#00,#ff,#34,#6c,#33
	db #36,#2f,#36,#31,#d8,#bf,#ff,#82
	db #93,#12,#12,#12,#06,#12,#06,#12
	db #06,#12,#12,#ff,#80,#09,#6c,#08
	db #36,#04,#36,#ff,#81,#e0,#46,#00
	db #ff,#34,#6c,#33,#36,#2f,#36,#31
	db #d8,#31,#d8,#bf,#ff,#83,#06,#12
	db #12,#06,#12,#06,#12,#06,#12,#12
	db #06,#12,#10,#06,#10,#06,#10,#06
	db #12,#12,#ff,#84,#34,#6c,#33,#5a
	db #31,#09,#2f,#09,#31,#d8,#34,#5a
	db #36,#09,#34,#09,#33,#5a,#31,#09
	db #2f,#09,#31,#d8,#34,#6c,#33,#5a
	db #31,#09,#2f,#09,#2d,#5a,#2f,#09
	db #2d,#09,#2b,#5a,#2d,#09,#2b,#09
	db #2a,#12,#a0,#c6,#a0,#d8,#ff,#85
	db #91,#2a,#09,#31,#09,#2f,#09,#2d
	db #09,#2c,#09,#2a,#09,#28,#09,#2a
	db #09,#2c,#09,#2d,#09,#2c,#09,#28
	db #09,#ff,#85,#91,#28,#09,#31,#09
	db #2f,#09,#2d,#09,#2b,#09,#2a,#09
	db #28,#09,#2a,#09,#2b,#09,#2d,#09
	db #2f,#09,#2d,#09,#ff,#85,#91,#26
	db #09,#2b,#09,#2d,#09,#32,#09,#34
	db #09,#32,#09,#30,#09,#2d,#09,#2b
	db #09,#28,#09,#26,#09,#24,#09,#90
	db #ff,#86,#06,#0c,#09,#0c,#08,#0c
	db #06,#0c,#04,#0c,#06,#0c,#08,#0c
	db #04,#0c,#06,#0c,#09,#0c,#08,#0c
	db #06,#0c,#0b,#0c,#09,#0c,#08,#0c
	db #06,#0c,#07,#0c,#09,#0c,#0b,#0c
	db #07,#0c,#09,#0c,#07,#0c,#06,#0c
	db #02,#0c,#04,#0c,#06,#0c,#08,#0c
	db #04,#0c,#05,#0c,#06,#0c,#08,#0c
	db #05,#0c,#ff,#86,#09,#0c,#0d,#0c
	db #0b,#0c,#09,#0c,#08,#0c,#09,#0c
	db #0b,#0c,#08,#0c,#09,#0c,#0d,#0c
	db #0b,#0c,#09,#0c,#0f,#0c,#0d,#0c
	db #0b,#0c,#09,#0c,#0b,#0c,#0c,#0c
	db #0e,#0c,#0b,#0c,#0e,#0c,#0b,#0c
	db #09,#0c,#06,#0c,#08,#0c,#09,#0c
	db #0b,#0c,#08,#0c,#08,#0c,#09,#0c
	db #0b,#0c,#08,#0c,#ff,#a0,#90,#ff
	db #86,#92,#2a,#12,#2a,#06,#80,#96
	db #12,#0c,#86,#92,#2a,#12,#93,#28
	db #12,#80,#96,#12,#0c,#86,#93,#28
	db #0c,#92,#2a,#12,#2a,#06,#80,#96
	db #12,#0c,#86,#92,#2a,#12,#94,#2a
	db #12,#80,#96,#12,#0c,#86,#94,#2a
	db #0c,#93,#2b,#12,#2b,#06,#80,#96
	db #12,#0c,#86,#93,#2b,#12,#95,#2a
	db #12,#80,#96,#12,#0c,#86,#95,#2a
	db #0c,#93,#28,#12,#28,#06,#80,#96
	db #12,#0c,#93,#86,#28,#12,#95,#29
	db #12,#80,#96,#12,#0c,#86,#95,#29
	db #0c,#ff,#87,#31,#24,#2f,#06,#2d
	db #06,#2f,#24,#2d,#06,#2c,#06,#2d
	db #24,#2c,#06,#2a,#06,#27,#12,#28
	db #12,#2a,#0c,#2b,#24,#2d,#06,#2b
	db #06,#2a,#12,#28,#12,#26,#0c,#26
	db #12,#23,#12,#26,#0c,#25,#30,#ff
	db #80,#12,#30,#10,#30,#0e,#30,#0d
	db #30,#0c,#30,#0b,#30,#09,#30,#0b
	db #30,#10,#60,#10,#60,#10,#6c,#10
	db #6c,#10,#d8,#10,#d8,#10,#d8,#10
	db #d8,#ff,#86,#92,#2a,#12,#2a,#06
	db #80,#96,#12,#0c,#86,#92,#2a,#12
	db #93,#28,#12,#80,#96,#12,#0c,#86
	db #93,#28,#0c,#95,#2a,#12,#2a,#06
	db #80,#96,#12,#0c,#86,#95,#2a,#12
	db #94,#28,#12,#80,#96,#12,#0c,#86
	db #94,#28,#0c,#2b,#12,#2b,#06,#80
	db #96,#12,#0c,#86,#94,#2b,#12,#93
	db #2b,#12,#80,#96,#12,#0c,#86,#93
	db #2b,#0c,#94,#28,#12,#28,#06,#80
	db #96,#12,#0c,#94,#86,#28,#12,#2a
	db #12,#80,#96,#12,#0c,#86,#94,#2a
	db #0c,#ff,#87,#31,#24,#2f,#06,#2d
	db #06,#2f,#24,#2d,#06,#2c,#06,#2d
	db #24,#2c,#06,#2a,#06,#28,#12,#2a
	db #12,#2d,#0c,#2b,#24,#2d,#06,#2b
	db #06,#2f,#12,#2d,#12,#2b,#0c,#28
	db #12,#25,#12,#28,#0c,#27,#30,#ff
	db #86,#92,#2a,#12,#2a,#12,#2a,#12
	db #2a,#12,#2a,#0c,#2a,#0c,#ff,#86
	db #92,#2a,#12,#2a,#12,#2a,#12,#2a
	db #12,#90,#ff,#87,#34,#c0,#ff,#ff
	db #ff,#ff,#ff,#ff,#a0,#c0,#ff,#0f
.lbcff
	db #0f,#0f,#0d,#08,#06,#05,#04,#03
	db #01,#82,#83,#83,#89,#90,#99,#0f
.lbd0f
	db #0d,#07,#04,#03,#02,#02,#01,#01
	db #82,#85,#88,#89,#9c,#ae,#cb
.lbd1f
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
;
; #4a61
; ld a,(#b006)
; or a
; call z,#b000
; call #b003
;
.music_info
	db "Terramex (1988)(Grandslam)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
