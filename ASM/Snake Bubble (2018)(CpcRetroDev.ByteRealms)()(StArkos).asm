; Music of Snake Bubble (2018)(CpcRetroDev.ByteRealms)()(StArkos)
; Ripped by Megachur the 11/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SNAKEBUB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0334

	read "music_header.asm"

.l0334
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#3a,#00,#46,#03,#4f,#03
	db #6c,#03,#00,#00,#00,#00,#00,#00
	db #0d,#48,#03,#01,#00,#22,#22,#62
	db #21,#0c,#5c,#f4,#1c,#58,#e8,#18
	db #54,#0c,#54,#f4,#10,#50,#e8,#0c
	db #4c,#0c,#54,#f4,#14,#0d,#48,#03
	db #01,#00,#1e,#21,#1c,#1c,#1c,#1c
	db #1c,#1c,#0c,#0d,#76,#03,#40,#00
	db #00,#00,#91,#03,#00,#92,#03,#b8
	db #03,#df,#03,#00,#05,#04,#2b,#04
	db #52,#04,#01,#80,#03,#00,#42,#80
	db #00,#00,#d2,#60,#01,#06,#9b,#06
	db #97,#06,#a1,#06,#93,#06,#9b,#06
	db #97,#06,#a1,#06,#93,#06,#9b,#06
	db #97,#06,#a1,#06,#93,#06,#9b,#06
	db #97,#06,#a1,#00,#42,#80,#00,#00
	db #02,#d2,#60,#01,#06,#9b,#06,#97
	db #06,#a1,#06,#93,#06,#9b,#06,#97
	db #06,#a1,#06,#93,#06,#9b,#06,#97
	db #06,#a1,#06,#93,#06,#9b,#06,#97
	db #06,#a1,#00,#42,#80,#00,#00,#ba
	db #60,#02,#06,#83,#06,#7f,#06,#7f
	db #06,#83,#06,#71,#06,#85,#06,#6d
	db #06,#89,#06,#7f,#06,#85,#06,#7b
	db #06,#83,#06,#6d,#06,#7f,#06,#71
	db #00,#42,#80,#00,#00,#d2,#60,#01
	db #06,#9b,#06,#97,#06,#a1,#06,#9b
	db #06,#9d,#06,#9b,#06,#97,#06,#93
	db #06,#9b,#06,#97,#06,#a1,#06,#9b
	db #06,#9d,#06,#9b,#06,#97,#00,#42
	db #80,#00,#00,#02,#d2,#60,#01,#06
	db #9b,#06,#97,#06,#a1,#06,#9b,#06
	db #9d,#06,#9b,#06,#97,#06,#93,#06
	db #9b,#06,#97,#06,#a1,#06,#9b,#06
	db #9d,#06,#9b,#06,#97,#00,#42,#80
	db #00,#00,#ba,#60,#02,#06,#83,#06
	db #7f,#06,#7f,#06,#83,#06,#71,#06
	db #85,#06,#6d,#06,#89,#06,#7f,#06
	db #85,#06,#7b,#06,#83,#06,#6d,#06
	db #7f,#06,#71,#00,#54,#31,#30,#01
	db #40,#42,#0f,#02,#06,#3a,#00,#89
	db #04,#92,#04,#af,#04,#00,#00,#00
	db #00,#00,#00,#0d,#8b,#04,#01,#00
	db #22,#22,#62,#21,#0c,#5c,#f4,#1c
	db #58,#e8,#18,#54,#0c,#54,#f4,#10
	db #50,#e8,#0c,#4c,#0c,#54,#f4,#14
	db #0d,#8b,#04,#01,#00,#1e,#21,#1c
	db #1c,#1c,#1c,#1c,#1c,#0c,#0d,#b9
	db #04,#40,#00,#00,#00,#d4,#04,#00
	db #d5,#04,#eb,#04,#02,#05,#00,#28
	db #05,#3e,#05,#55,#05,#01,#c3,#04
	db #00,#42,#80,#00,#00,#d2,#60,#01
	db #0e,#97,#0e,#93,#0e,#97,#0e,#93
	db #0e,#97,#0e,#93,#0e,#97,#00,#42
	db #80,#00,#00,#02,#d2,#60,#01,#0e
	db #97,#0e,#93,#0e,#97,#0e,#93,#0e
	db #97,#0e,#93,#0e,#97,#00,#da,#e0
	db #00,#00,#02,#06,#6b,#06,#9b,#06
	db #6b,#06,#97,#06,#67,#06,#97,#06
	db #67,#06,#89,#06,#59,#06,#89,#06
	db #59,#06,#8d,#06,#5d,#06,#8d,#06
	db #5d,#04,#42,#00,#42,#80,#00,#00
	db #d2,#60,#01,#0e,#9b,#0e,#97,#0e
	db #a1,#0e,#9b,#0e,#9d,#0e,#9b,#0e
	db #97,#00,#42,#80,#00,#00,#02,#d2
	db #60,#01,#0e,#9b,#0e,#97,#0e,#a1
	db #0e,#9b,#0e,#9d,#0e,#9b,#0e,#97
	db #00,#da,#e0,#00,#00,#02,#06,#6b
	db #06,#9b,#06,#6b,#06,#97,#06,#67
	db #06,#97,#06,#67,#06,#89,#06,#59
	db #06,#89,#06,#59,#06,#8d,#06,#5d
	db #06,#8d,#06,#5d,#04,#42,#00,#00
	db #00,#00,#00,#00
;
; #741a - player reallocated by Megachur
;
;
.play_music
;
	push ix
	push iy
	xor a
	ld (l7418),a
.l7423 equ $ + 1
	ld a,#01
	dec a
	jp nz,l75f6
.l7429 equ $ + 1
	ld a,#01
	dec a
	jr nz,l749c
.l742e equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l7443
	ld a,(l7419)
	inc a
	ld (l7419),a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l7443
	rra
	jr nc,l744b
	ld de,l74ec
	ldi
.l744b
	rra
	jr nc,l7453
	ld de,l7551
	ldi
.l7453
	rra
	jr nc,l745b
	ld de,l75b6
	ldi
.l745b
	ld de,l74cb
	ldi
	ldi
	ld de,l7530
	ldi
	ldi
	ld de,l7595
	ldi
	ldi
	rra
	jr nc,l7478
	ld de,l749b
	ldi
.l7478
	rra
	jr nc,l7483
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l7487),de
.l7483
	ld (l742e),hl
.l7487 equ $ + 1
	ld hl,#0000
	ld (l74a5),hl
	ld a,#01
	ld (l74a0),a
	ld (l74c6),a
	ld (l752b),a
	ld (l7590),a
.l749b equ $ + 1
	ld a,#01
.l749c
	ld (l7429),a
.l74a0 equ $ + 1
	ld a,#01
	dec a
	jr nz,l74c2
.l74a5 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l74bf
	srl a
	jr nz,l74b3
	ld a,(hl)
	inc hl
.l74b3
	jr nc,l74ba
	ld (l7418),a
	jr l74bd
.l74ba
	ld (l75f5),a
.l74bd
	ld a,#01
.l74bf
	ld (l74a5),hl
.l74c2
	ld (l74a0),a
.l74c6 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7527
.l74cb equ $ + 1
	ld hl,#0000
	call l79c9
	ld (l74cb),hl
	jr c,l7527
	ld a,d
	rra
	jr nc,l74de
	and #0f
	ld (l76ce),a
.l74de
	rl d
	jr nc,l74e6
	ld (l76bc),ix
.l74e6
	rl d
	jr nc,l7525
	ld a,e
.l74ec equ $ + 1
	add #00
	ld (l76cd),a
	ld hl,#0000
	ld (l76b9),hl
	rl d
	jr c,l7505
.l74fb equ $ + 1
	ld hl,#0000
	ld a,(l76de)
	ld (l76d6),a
	jr l7522
.l7505
	ld l,b
	add hl,hl
.l7508 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l76de),a
	ld (l76d6),a
	ld a,(hl)
	or a
	jr z,l751e
	ld (l77eb),a
.l751e
	inc hl
	ld (l74fb),hl
.l7522
	ld (l76d0),hl
.l7525
	ld a,#01
.l7527
	ld (l74c6),a
.l752b equ $ + 1
	ld a,#01
	dec a
	jr nz,l758c
.l7530 equ $ + 1
	ld hl,#0000
	call l79c9
	ld (l7530),hl
	jr c,l758c
	ld a,d
	rra
	jr nc,l7543
	and #0f
	ld (l766f),a
.l7543
	rl d
	jr nc,l754b
	ld (l765d),ix
.l754b
	rl d
	jr nc,l758a
	ld a,e
.l7551 equ $ + 1
	add #00
	ld (l766e),a
	ld hl,#0000
	ld (l765a),hl
	rl d
	jr c,l756a
.l7560 equ $ + 1
	ld hl,#0000
	ld a,(l767f)
	ld (l7677),a
	jr l7587
.l756a
	ld l,b
	add hl,hl
.l756d equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l767f),a
	ld (l7677),a
	ld a,(hl)
	or a
	jr z,l7583
	ld (l77eb),a
.l7583
	inc hl
	ld (l7560),hl
.l7587
	ld (l7671),hl
.l758a
	ld a,#01
.l758c
	ld (l752b),a
.l7590 equ $ + 1
	ld a,#01
	dec a
	jr nz,l75f1
.l7595 equ $ + 1
	ld hl,#0000
	call l79c9
	ld (l7595),hl
	jr c,l75f1
	ld a,d
	rra
	jr nc,l75a8
	and #0f
	ld (l7613),a
.l75a8
	rl d
	jr nc,l75b0
	ld (l7601),ix
.l75b0
	rl d
	jr nc,l75ef
	ld a,e
.l75b6 equ $ + 1
	add #00
	ld (l7612),a
	ld hl,#0000
	ld (l75fe),hl
	rl d
	jr c,l75cf
.l75c5 equ $ + 1
	ld hl,#0000
	ld a,(l7623)
	ld (l761b),a
	jr l75ec
.l75cf
	ld l,b
	add hl,hl
.l75d2 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l7623),a
	ld (l761b),a
	ld a,(hl)
	or a
	jr z,l75e8
	ld (l77eb),a
.l75e8
	inc hl
	ld (l75c5),hl
.l75ec
	ld (l7615),hl
.l75ef
	ld a,#01
.l75f1
	ld (l7590),a
.l75f5 equ $ + 1
	ld a,#01
.l75f6
	ld (l7423),a
	ld iy,l7802
.l75fe equ $ + 1
	ld hl,#0000
.l7601 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l75fe),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l7613 equ $ + 2
.l7612 equ $ + 1
	ld de,#0000
.l7615 equ $ + 1
	ld hl,#0000
	call l780d
.l761b equ $ + 1
	ld a,#01
	dec a
	jr nz,l7624
	ld (l7615),hl
.l7623 equ $ + 1
	ld a,#06
.l7624
	ld (l761b),a
.l7627
	ld de,#0000
	exx
	ld de,#0000
.l762f equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l7652
	ld a,#01
	ld (l793c),a
	call l780d
	xor a
	ld (l793c),a
	ld a,l
	or h
	jr z,l764a
.l7646 equ $ + 1
	ld a,#01
	dec a
	jr nz,l764f
.l764a
	ld (l762f),hl
	ld a,#06
.l764f
	ld (l7646),a
.l7652
	ld a,lx
	ex af,af'
	ld iy,l7800
.l765a equ $ + 1
	ld hl,#0000
.l765d equ $ + 1
	ld de,#0000
	add hl,de
	ld (l765a),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l766f equ $ + 2
.l766e equ $ + 1
	ld de,#0000
.l7671 equ $ + 1
	ld hl,#0000
	call l780d
.l7677 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7680
	ld (l7671),hl
.l767f equ $ + 1
	ld a,#06
.l7680
	ld (l7677),a
.l7683
	ld de,#0000
	exx
	ld de,#0000
.l768b equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l76ae
	ld a,#01
	ld (l793c),a
	call l780d
	xor a
	ld (l793c),a
	ld a,l
	or h
	jr z,l76a6
.l76a2 equ $ + 1
	ld a,#01
	dec a
	jr nz,l76ab
.l76a6
	ld (l768b),hl
	ld a,#06
.l76ab
	ld (l76a2),a
.l76ae
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l77fe
.l76b9 equ $ + 1
	ld hl,#0000
.l76bc equ $ + 1
	ld de,#0000
	add hl,de
	ld (l76b9),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l76ce equ $ + 2
.l76cd equ $ + 1
	ld de,#0000
.l76d0 equ $ + 1
	ld hl,#0000
	call l780d
.l76d6 equ $ + 1
	ld a,#01
	dec a
	jr nz,l76df
	ld (l76d0),hl
.l76de equ $ + 1
	ld a,#06
.l76df
	ld (l76d6),a
.l76e2
	ld de,#0000
	exx
	ld de,#0000
.l76ea equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l770d
	ld a,#01
	ld (l793c),a
	call l780d
	xor a
	ld (l793c),a
	ld a,l
	or h
	jr z,l7705
.l7701 equ $ + 1
	ld a,#01
	dec a
	jr nz,l770a
.l7705
	ld (l76ea),hl
	ld a,#06
.l770a
	ld (l7701),a
.l770d
	ex af,af'
	or lx
.l7710
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l77fe
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	out (c),a
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	pop iy
	pop ix
	ld a,(hl)
.l77eb equ $ + 1
	cp #ff
	ret z
	ld (l77eb),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l7805 equ $ + 7
.l7804 equ $ + 6
.l7802 equ $ + 4
.l7800 equ $ + 2
.l77fe
	db #00,#00,#00,#00,#00,#00,#00,#00
.l780c equ $ + 6
.l780a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00
.l780d
	ld b,(hl)
	inc hl
	rr b
	jp c,l786b
	rr b
	jr c,l783b
	ld a,b
	and #0f
	jr nz,l7824
	ld (iy+#07),a
	ld lx,#09
	ret
.l7824
	ld lx,#08
	sub d
	jr nc,l782b
	xor a
.l782b
	ld (iy+#07),a
	rr b
	call l799d
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l783b
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l784b
	ld (l7804),a
	ld lx,#00
.l784b
	ld a,b
	and #0f
	sub d
	jr nc,l7852
	xor a
.l7852
	ld (iy+#07),a
	bit 5,c
	jr nz,l785c
	inc lx
	ret
.l785c
	rr b
	bit 6,c
	call l798f
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l786b
	rr b
	jr nc,l787e
	ld a,(l76d6)
	ld c,a
	ld a,(l76de)
	cp c
	jr nz,l787e
	ld a,#fe
	ld (l77eb),a
.l787e
	bit 1,b
	jp nz,l7937
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l780c),a
	bit 0,b
	jr z,l78ed
	bit 2,b
	call l798f
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l78ad),a
	ld a,b
	exx
.l78ad equ $ + 1
	jr l78ae
.l78ae
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	jr nc,l78cd
	inc hl
.l78cd
	bit 5,a
	jr z,l78dd
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l78dd
	ld (l780a),hl
	exx
.l78e1
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l7804),a
	ld lx,#00
	ret
.l78ed
	bit 2,b
	call l798f
	ld (l780a),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l7901),a
	ld a,b
	exx
.l7901 equ $ + 1
	jr l7902
.l7902
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	bit 5,a
	jr z,l792e
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l792e
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l78e1
.l7937
	bit 0,b
	jr z,l794b
.l793c equ $ + 1
	ld a,#00
	or a
	jr z,l7944
	ld hl,#0000
	ret
.l7944
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l780d
.l794b
	ld (iy+#07),#10
	bit 5,b
	jr nz,l7958
	ld lx,#09
	jr l796b
.l7958
	ld lx,#08
	ld hx,e
	bit 2,b
	call l798f
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l796b
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l780c),a
	rr b
	rr b
	bit 2,b
	call l798f
	ld (l780a),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l7804),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l798f
	jr z,l799d
	ld a,(hl)
	inc hl
	exx
	add e
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld h,a
	ret
.l799d
	bit 4,b
	jr z,l79ad
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld d,a
	exx
.l79ad
	ld a,e
	bit 3,b
	jr z,l79ba
	add (hl)
	inc hl
	cp #90
	jr c,l79ba
	ld a,#8f
.l79ba
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l79fd
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l79c9
	ld a,(hl)
	inc hl
	srl a
	jr c,l79f0
	sub #20
	jr c,l79fa
	jr z,l79ec
	dec a
	ld e,a
.l79d7
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l79e5
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l79e5
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l79ec
	ld e,(hl)
	inc hl
	jr l79d7
.l79f0
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l79fa
	add #20
	ret
.l79fd
	db #ee,#0e,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
	db #0f,#00,#0e,#00,#0d,#00,#0d,#00
	db #0c,#00,#0b,#00,#0b,#00,#0a,#00
	db #09,#00,#09,#00,#08,#00,#08,#00
	db #07,#00,#07,#00,#07,#00,#06,#00
	db #06,#00,#06,#00,#05,#00,#05,#00
	db #05,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#03,#00,#03,#00
	db #03,#00,#03,#00,#03,#00,#02,#00
	db #02,#00,#02,#00,#02,#00,#02,#00
	db #02,#00,#02,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
;
; .real_init_music
;
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
;
.real_init_music
;
	xor a
	ld (l7419),a
	ld hl,#0009
	add hl,de
	ld de,l75f5
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l7508),hl
	ld (l756d),hl
	ld (l75d2),hl
	add hl,bc
	ld de,l749b
	ldi
	ld de,l74ec
	ldi
	ld de,l7551
	ldi
	ld de,l75b6
	ldi
	ld de,l7487
	ldi
	ldi
	ld (l742e),hl
	ld a,#01
	ld (l7423),a
	ld (l7429),a
	ld a,#ff
	ld (l780c),a
	ld hl,(l7508)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l76d0),hl
	ld (l7671),hl
	ld (l7615),hl
	ret
	push ix
	push iy
	ld hl,l7805
	ld bc,#0500
.l7b87
	ld (hl),c
	inc hl
	djnz l7b87
	ld a,#3f
	jp l7710
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	rrca
	jp c,l7ba5
	rrca
	jp c,l7ba1
	ld hl,(l762f)
	ret
.l7ba1
	ld hl,(l768b)
	ret
.l7ba5
	ld hl,(l76ea)
	ret
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,#000c
	add hl,de
	ld (l7c04),hl
	ld hl,#0000
	ld (l76ea),hl
	ld (l768b),hl
	ld (l762f),hl
	ret
	ld (l7c20),ix
	pop af
	pop hl
	pop de
	pop bc
	pop ix
	push ix
	push bc
	push de
	push hl
	push af
	ld a,lx
	rrca
	jp c,l7bec
	rrca
	jp c,l7be5
	ld ix,l7627
	jp l7bf0
.l7be5
	ld ix,l7683
	jp l7bf0
.l7bec
	ld ix,l76e2
.l7bf0
	ld (ix+#01),c
	ld (ix+#02),b
	ld a,e
	ld (ix+#05),a
	ld a,#0f
	sub h
	ld (ix+#06),a
	ld h,#00
	add hl,hl
.l7c04 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,d
	or a
	jr nz,l7c10
	ld a,(hl)
.l7c10
	ld (ix+#27),a
	ld (ix+#1f),a
	inc hl
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
.l7c20 equ $ + 2
	ld ix,#0000
	ret
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	ld hl,#0000
	rrca
	jp nc,l7c32
	ld (l76ea),hl
.l7c32
	rrca
	jp nc,l7c39
	ld (l768b),hl
.l7c39
	rrca
	jp z,l7c40
	ld (l762f),hl
.l7c40
	ret
;
; #4a7b
; ld de,#0334
; call #7b24
;
.l7418
	db #00
.l7419
	db #00
;
.init_music		; added by Megachur
;
	ld de,l0334
	jp real_init_music
;
.music_info
	db "Snake Bubble (2018)(CpcRetroDev.ByteRealms)()",0
	db "StArkos",0

	read "music_end.asm"
