; Music of Baba's Palace - Intro (2017)(Cpcretrodev.ByteRealms)(John McKlain)(StArkos)
; Ripped by Megachur the 06/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BABAPALI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #4000

	read "music_header.asm"

.l4000
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#0a,#4d,#00,#12,#40,#1b,#40
	db #3d,#40,#00,#00,#00,#00,#00,#00
	db #0d,#14,#40,#04,#00,#bc,#ff,#ff
	db #38,#34,#b0,#ff,#ff,#2c,#a8,#01
	db #00,#24,#a0,#ff,#ff,#1c,#98,#01
	db #00,#14,#90,#ff,#ff,#0c,#88,#01
	db #00,#04,#0d,#2e,#40,#0a,#00,#74
	db #0c,#38,#74,#0c,#30,#6c,#0c,#28
	db #64,#0c,#20,#5c,#0c,#18,#54,#0c
	db #10,#4c,#0c,#08,#44,#0c,#0d,#14
	db #40,#20,#00,#00,#00,#84,#40,#00
	db #85,#40,#91,#40,#d3,#40,#00,#85
	db #40,#91,#40,#d3,#40,#0e,#03,#03
	db #03,#85,#40,#91,#40,#d3,#40,#0e
	db #00,#00,#00,#85,#40,#91,#40,#d3
	db #40,#01,#5f,#40,#00,#be,#e1,#00
	db #00,#01,#0e,#8d,#0e,#7f,#0e,#85
	db #00,#5e,#e1,#00,#00,#02,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#1f,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#81,#00,#00,#06
	db #c6,#60,#01,#0e,#85,#0e,#8d,#0e
	db #7d,#00,#00
;
	ds #40e3-$,#00
;
.l40e3	; sound fx ?
;
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#ff,#33,#00,#f5,#40,#fe,#40
	db #13,#41,#00,#00,#00,#00,#00,#00
	db #0d,#f7,#40,#01,#00,#6c,#0c,#34
	db #38,#7c,#0c,#7c,#0c,#7c,#0c,#74
	db #0c,#6c,#0c,#68,#0c,#0d,#f7,#40
	db #01,#00,#78,#13,#7c,#07,#3c,#60
	db #13,#68,#07,#28,#0d,#f7,#40,#40
	db #00,#00,#00,#32,#41,#00,#33,#41
	db #33,#41,#33,#41,#01,#28,#41,#00
	db #42,#80,#00,#00,#00,#00
;
; #54f5	- player reallocated by Megachur
;
.l54f5
	db #00
;
.play_music
.l54f6		; play
;
	push ix
	push iy
	xor a
	ld (#54f4),a
.l54ff equ $ + 1
	ld a,#01
	dec a
	jp nz,l56d2
.l5505 equ $ + 1
	ld a,#01
	dec a
	jr nz,l5578
.l550a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l551f
	ld a,(l54f5)
	inc a
	ld (l54f5),a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l551f
	rra
	jr nc,l5527
	ld de,l55c8
	ldi
.l5527
	rra
	jr nc,l552f
	ld de,l562d
	ldi
.l552f
	rra
	jr nc,l5537
	ld de,l5692
	ldi
.l5537
	ld de,l55a7
	ldi
	ldi
	ld de,l560c
	ldi
	ldi
	ld de,l5671
	ldi
	ldi
	rra
	jr nc,l5554
	ld de,l5577
	ldi
.l5554
	rra
	jr nc,l555f
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l5563),de
.l555f
	ld (l550a),hl
.l5563 equ $ + 1
	ld hl,#0000
	ld (l5581),hl
	ld a,#01
	ld (l557c),a
	ld (l55a2),a
	ld (l5607),a
	ld (l566c),a
.l5577 equ $ + 1
	ld a,#01
.l5578
	ld (l5505),a
.l557c equ $ + 1
	ld a,#01
	dec a
	jr nz,l559e
.l5581 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l559b
	srl a
	jr nz,l558f
	ld a,(hl)
	inc hl
.l558f
	jr nc,l5596
	ld (#54f4),a
	jr l5599
.l5596
	ld (l56d1),a
.l5599
	ld a,#01
.l559b
	ld (l5581),hl
.l559e
	ld (l557c),a
.l55a2 equ $ + 1
	ld a,#01
	dec a
	jr nz,l5603
.l55a7 equ $ + 1
	ld hl,#0000
	call l5aa5
	ld (l55a7),hl
	jr c,l5603
	ld a,d
	rra
	jr nc,l55ba
	and #0f
	ld (l57aa),a
.l55ba
	rl d
	jr nc,l55c2
	ld (l5798),ix
.l55c2
	rl d
	jr nc,l5601
	ld a,e
.l55c8 equ $ + 1
	add #00
	ld (l57a9),a
	ld hl,#0000
	ld (l5795),hl
	rl d
	jr c,l55e1
.l55d7 equ $ + 1
	ld hl,#0000
	ld a,(l57ba)
	ld (l57b2),a
	jr l55fe
.l55e1
	ld l,b
	add hl,hl
.l55e4 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l57ba),a
	ld (l57b2),a
	ld a,(hl)
	or a
	jr z,l55fa
	ld (l58c7),a
.l55fa
	inc hl
	ld (l55d7),hl
.l55fe
	ld (l57ac),hl
.l5601
	ld a,#01
.l5603
	ld (l55a2),a
.l5607 equ $ + 1
	ld a,#01
	dec a
	jr nz,l5668
.l560c equ $ + 1
	ld hl,#0000
	call l5aa5
	ld (l560c),hl
	jr c,l5668
	ld a,d
	rra
	jr nc,l561f
	and #0f
	ld (l574b),a
.l561f
	rl d
	jr nc,l5627
	ld (l5739),ix
.l5627
	rl d
	jr nc,l5666
	ld a,e
.l562d equ $ + 1
	add #00
	ld (l574a),a
	ld hl,#0000
	ld (l5736),hl
	rl d
	jr c,l5646
.l563c equ $ + 1
	ld hl,#0000
	ld a,(l575b)
	ld (l5753),a
	jr l5663
.l5646
	ld l,b
	add hl,hl
.l5649 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l575b),a
	ld (l5753),a
	ld a,(hl)
	or a
	jr z,l565f
	ld (l58c7),a
.l565f
	inc hl
	ld (l563c),hl
.l5663
	ld (l574d),hl
.l5666
	ld a,#01
.l5668
	ld (l5607),a
.l566c equ $ + 1
	ld a,#01
	dec a
	jr nz,l56cd
.l5671 equ $ + 1
	ld hl,#0000
	call l5aa5
	ld (l5671),hl
	jr c,l56cd
	ld a,d
	rra
	jr nc,l5684
	and #0f
	ld (l56ef),a
.l5684
	rl d
	jr nc,l568c
	ld (l56dd),ix
.l568c
	rl d
	jr nc,l56cb
	ld a,e
.l5692 equ $ + 1
	add #00
	ld (l56ee),a
	ld hl,#0000
	ld (l56da),hl
	rl d
	jr c,l56ab
.l56a1 equ $ + 1
	ld hl,#0000
	ld a,(l56ff)
	ld (l56f7),a
	jr l56c8
.l56ab
	ld l,b
	add hl,hl
.l56ae equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l56ff),a
	ld (l56f7),a
	ld a,(hl)
	or a
	jr z,l56c4
	ld (l58c7),a
.l56c4
	inc hl
	ld (l56a1),hl
.l56c8
	ld (l56f1),hl
.l56cb
	ld a,#01
.l56cd
	ld (l566c),a
.l56d1 equ $ + 1
	ld a,#01
.l56d2
	ld (l54ff),a
	ld iy,l58de
.l56da equ $ + 1
	ld hl,#0000
.l56dd equ $ + 1
	ld de,#0000
	add hl,de
	ld (l56da),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l56ef equ $ + 2
.l56ee equ $ + 1
	ld de,#0000
.l56f1 equ $ + 1
	ld hl,#0000
	call l58e9
.l56f7 equ $ + 1
	ld a,#01
	dec a
	jr nz,l5700
	ld (l56f1),hl
.l56ff equ $ + 1
	ld a,#06
.l5700
	ld (l56f7),a
.l5703
	ld de,#0000
	exx
	ld de,#0000
.l570b equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l572e
	ld a,#01
	ld (l5a18),a
	call l58e9
	xor a
	ld (l5a18),a
	ld a,l
	or h
	jr z,l5726
.l5722 equ $ + 1
	ld a,#01
	dec a
	jr nz,l572b
.l5726
	ld (l570b),hl
	ld a,#06
.l572b
	ld (l5722),a
.l572e
	ld a,lx
	ex af,af'
	ld iy,l58dc
.l5736 equ $ + 1
	ld hl,#0000
.l5739 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l5736),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l574b equ $ + 2
.l574a equ $ + 1
	ld de,#0000
.l574d equ $ + 1
	ld hl,#0000
	call l58e9
.l5753 equ $ + 1
	ld a,#01
	dec a
	jr nz,l575c
	ld (l574d),hl
.l575b equ $ + 1
	ld a,#06
.l575c
	ld (l5753),a
.l575f
	ld de,#0000
	exx
	ld de,#0000
.l5767 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l578a
	ld a,#01
	ld (l5a18),a
	call l58e9
	xor a
	ld (l5a18),a
	ld a,l
	or h
	jr z,l5782
.l577e equ $ + 1
	ld a,#01
	dec a
	jr nz,l5787
.l5782
	ld (l5767),hl
	ld a,#06
.l5787
	ld (l577e),a
.l578a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l58da
.l5795 equ $ + 1
	ld hl,#0000
.l5798 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l5795),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l57aa equ $ + 2
.l57a9 equ $ + 1
	ld de,#0000
.l57ac equ $ + 1
	ld hl,#0000
	call l58e9
.l57b2 equ $ + 1
	ld a,#01
	dec a
	jr nz,l57bb
	ld (l57ac),hl
.l57ba equ $ + 1
	ld a,#06
.l57bb
	ld (l57b2),a
.l57be
	ld de,#0000
	exx
	ld de,#0000
.l57c6 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l57e9
	ld a,#01
	ld (l5a18),a
	call l58e9
	xor a
	ld (l5a18),a
	ld a,l
	or h
	jr z,l57e1
.l57dd equ $ + 1
	ld a,#01
	dec a
	jr nz,l57e6
.l57e1
	ld (l57c6),hl
	ld a,#06
.l57e6
	ld (l57dd),a
.l57e9
	ex af,af'
	or lx
.l57ec
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l58da
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
.l58c7 equ $ + 1
	cp #ff
	ret z
	ld (l58c7),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l58e1 equ $ + 7
.l58e0 equ $ + 6
.l58de equ $ + 4
.l58dc equ $ + 2
.l58da
	db #00,#00,#00,#00,#00,#00,#00,#00
.l58e8 equ $ + 6
.l58e6 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00
.l58e9
	ld b,(hl)
	inc hl
	rr b
	jp c,l5947
	rr b
	jr c,l5917
	ld a,b
	and #0f
	jr nz,l5900
	ld (iy+#07),a
	ld lx,#09
	ret
.l5900
	ld lx,#08
	sub d
	jr nc,l5907
	xor a
.l5907
	ld (iy+#07),a
	rr b
	call l5a79
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l5917
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l5927
	ld (l58e0),a
	ld lx,#00
.l5927
	ld a,b
	and #0f
	sub d
	jr nc,l592e
	xor a
.l592e
	ld (iy+#07),a
	bit 5,c
	jr nz,l5938
	inc lx
	ret
.l5938
	rr b
	bit 6,c
	call l5a6b
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l5947
	rr b
	jr nc,l595a
	ld a,(l57b2)
	ld c,a
	ld a,(l57ba)
	cp c
	jr nz,l595a
	ld a,#fe
	ld (l58c7),a
.l595a
	bit 1,b
	jp nz,l5a13
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l58e8),a
	bit 0,b
	jr z,l59c9
	bit 2,b
	call l5a6b
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l5989),a
	ld a,b
	exx
.l5989 equ $ + 1
	jr l598a
.l598a
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
	jr nc,l59a9
	inc hl
.l59a9
	bit 5,a
	jr z,l59b9
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
.l59b9
	ld (l58e6),hl
	exx
.l59bd
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l58e0),a
	ld lx,#00
	ret
.l59c9
	bit 2,b
	call l5a6b
	ld (l58e6),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l59dd),a
	ld a,b
	exx
.l59dd equ $ + 1
	jr l59de
.l59de
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
	jr z,l5a0a
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
.l5a0a
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l59bd
.l5a13
	bit 0,b
	jr z,l5a27
.l5a18 equ $ + 1
	ld a,#00
	or a
	jr z,l5a20
	ld hl,#0000
	ret
.l5a20
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l58e9
.l5a27
	ld (iy+#07),#10
	bit 5,b
	jr nz,l5a34
	ld lx,#09
	jr l5a47
.l5a34
	ld lx,#08
	ld hx,e
	bit 2,b
	call l5a6b
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l5a47
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l58e8),a
	rr b
	rr b
	bit 2,b
	call l5a6b
	ld (l58e6),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l58e0),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l5a6b
	jr z,l5a79
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
.l5a79
	bit 4,b
	jr z,l5a89
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
.l5a89
	ld a,e
	bit 3,b
	jr z,l5a96
	add (hl)
	inc hl
	cp #90
	jr c,l5a96
	ld a,#8f
.l5a96
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l5ad9
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l5aa5
	ld a,(hl)
	inc hl
	srl a
	jr c,l5acc
	sub #20
	jr c,l5ad6
	jr z,l5ac8
	dec a
	ld e,a
.l5ab3
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l5ac1
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l5ac1
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l5ac8
	ld e,(hl)
	inc hl
	jr l5ab3
.l5acc
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l5ad6
	add #20
	ret
.l5ad9
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
	dw #0009,#0009,#0008,#0008
	dw #0007,#0007,#0007,#0006
	dw #0006,#0006,#0005,#0005
	dw #0005,#0004,#0004,#0004
	dw #0004,#0004,#0003,#0003
	dw #0003,#0003,#0003,#0002
	dw #0002,#0002,#0002,#0002
	dw #0002,#0002,#0002,#0002
	dw #0001,#0001,#0001,#0001
	dw #0001,#0001,#0001,#0001
;
.real_init_music
.l5bf9
;
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
	xor a
	ld (l54f5),a
	ld hl,#0009
	add hl,de
	ld de,l56d1
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l55e4),hl
	ld (l5649),hl
	ld (l56ae),hl
	add hl,bc
	ld de,l5577
	ldi
	ld de,l55c8
	ldi
	ld de,l562d
	ldi
	ld de,l5692
	ldi
	ld de,l5563
	ldi
	ldi
	ld (l550a),hl
	ld a,#01
	ld (l54ff),a
	ld (l5505),a
	ld a,#ff
	ld (l58e8),a
	ld hl,(l55e4)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l57ac),hl
	ld (l574d),hl
	ld (l56f1),hl
	ret
	push ix
	push iy
	ld hl,l58e1
	ld bc,#0500
.l5c63
	ld (hl),c
	inc hl
	djnz l5c63
	ld a,#3f
	jp l57ec
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	rrca
	jp c,l5c81
	rrca
	jp c,l5c7d
	ld hl,(l570b)
	ret
.l5c7d
	ld hl,(l5767)
	ret
.l5c81
	ld hl,(l57c6)
	ret
.l5c85
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,#000c
	add hl,de
	ld (l5ce0),hl
	ld hl,#0000
	ld (l57c6),hl
	ld (l5767),hl
	ld (l570b),hl
	ret
	ld (l5cfc),ix
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
	jp c,l5cc8
	rrca
	jp c,l5cc1
	ld ix,l5703
	jp l5ccc
.l5cc1
	ld ix,l575f
	jp l5ccc
.l5cc8
	ld ix,l57be
.l5ccc
	ld (ix+#01),c
	ld (ix+#02),b
	ld a,e
	ld (ix+#05),a
	ld a,#0f
	sub h
	ld (ix+#06),a
	ld h,#00
	add hl,hl
.l5ce0 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,d
	or a
	jr nz,l5cec
	ld a,(hl)
.l5cec
	ld (ix+#27),a
	ld (ix+#1f),a
	inc hl
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
.l5cfc equ $ + 2
	ld ix,#0000
	ret
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	ld hl,#0000
	rrca
	jp nc,l5d0e
	ld (l57c6),hl
.l5d0e
	rrca
	jp nc,l5d15
	ld (l5767),hl
.l5d15
	rrca
	jp z,l5d1c
	ld (l570b),hl
.l5d1c
	ret
;
; #41f9
; ld hl,#4000
; push hl
; call #5bf9
; ld hl,#40e3
; ex (sp),hl
; call #5c85	; init
; pop af
; ret
;
; #41c0
; ld hl,#5fbb
; ld (hl),#01
; call #54f6	; play ?
; ld hl,#5fbf
; ld (hl),#00
; ret

; ld hl,#5fb9
; ld (hl),#64
; ld hl,#5fba
; ld (hl),#06
; ld hl,#5fbb
; ld (hl),#00
; call #544b	; stop ?
; ret
;
;
.init_music		; added by Megachur
;
	ld hl,l4000
	push hl
	call real_init_music
	pop af
	ret
;
.music_info
	db "Baba's Palace - Intro (2017)(Cpcretrodev.ByteRealms)(John McKlain)",0
	db "StArkos",0

	read "music_end.asm"
