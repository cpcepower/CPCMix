; Music of Bob's Full House (1988)(Createl)(Tiny Williams)()
; Ripped by Megachur the 10/01/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOBSFULH.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #b400
FIRST_THEME				equ 0
LAST_THEME				equ 4

	read "music_header.asm"

;
.init_music
;
	push af
	call lb514
	pop af
	add a
	add a
	add a
	add #ed
	ld e,a
	adc #ba
	sub e
	ld d,a
	ld a,(de)
	inc de
	ld (lb4b4),a
	ld h,#b7
	call lb428
	call lb428
	call lb428
	ld a,#01
	ld (lb498),a
	ld (lb552),a
	ret
.lb428
	ld l,#05
	ld (hl),#01
	dec l
	xor a
	ld (hl),a
	ld l,#07
	ld (hl),a
	ld l,#09
	ld (hl),a
	ld l,#15
	ld (hl),a
	ld a,(de)
	inc de
	ld c,a
	ld a,(de)
	inc de
	ld b,a
	ld l,#02
	ld a,(bc)
	ld (hl),a
	inc bc
	inc l
	ld a,(bc)
	ld (hl),a
	inc bc
	ld l,#00
	ld (hl),c
	inc l
	ld (hl),b
	inc h
	ret
.lb44f equ $ + 1
	ld l,#00
	inc l
	dec l
	jr z,lb458
	cp l
	jr c,lb460
	ret
.lb458
	push af
	ld a,(lb542)
	ld (lb668),a
	pop af
.lb460
	ld (lb44f),a
	add a
	add #c6
	ld l,a
	adc #be
	sub l
	ld h,a
	ld de,lba02
	ldi
	ex de,hl
	ld a,(de)
	ld (hl),a
	ld d,a
	dec l
	ld e,(hl)
	xor a
	ld l,#04
	ld (hl),a
	ld l,#15
	ld (hl),a
	ld l,#16
	ld (hl),#01
	call lb739
	jp lb58d
.lb487
	ld a,(lb44f)
	or a
	ret z
	call lb4dd
	ld h,#ba
	jp lb4d0
;
.play_music
;
	call lb52e
.lb498 equ $ + 1
	ld a,#00
	or a
	jr z,lb487
	ld hl,lb552
	dec (hl)
	ld h,#b7
	call lb53f
	inc h
	call lb53f
	inc h
	call lb53f
	ld a,(lb552)
	or a
	jr nz,lb4b8
.lb4b4 equ $ + 1
	ld a,#01
	ld (lb552),a
.lb4b8
	ld a,(lb44f)
	or a
	jr nz,lb4c3
	ld a,#b9
	ld (lb4cf),a
.lb4c3
	call lb4dd
	ld h,#b7
	call lb4d0
	call lb4d0
.lb4cf equ $ + 1
	ld h,#b9
.lb4d0
	ld l,#06
	call lb4f7
	call lb4f7
	call lb4f7
	inc h
	ret
.lb4dd
	ld de,#f4f6
	ld b,e
	in a,(c)
	or #c0
	ld (lb4ff),a
	ld a,#06
.lb4eb equ $ + 1
	ld c,#01
	call lb4fb
	ld a,(lb542)
	ld c,a
	ld a,#07
	jr lb4fb
.lb4f7
	ld a,(hl)
	inc l
	ld c,(hl)
	inc l
.lb4fb
	ld b,d
	out (c),a
.lb4ff equ $ + 1
	ld a,#c0
	ld b,e
	out (c),a
	and #3f
	out (c),a
	ld b,d
	out (c),c
	ld b,e
	ld c,a
	or #80
	out (c),a
	out (c),c
	ret
.lb513
	pop af
.lb514
	xor a
	ld (lb90b),a
	ld (lb498),a
	ld (lb44f),a
	ld (lb7c3),a
	ld a,#3f
	ld (lb542),a
	ld c,a
	ld a,#07
	ld de,#f4f6
	jr lb4fb
.lb52e
	ld a,(lb44f)
	or a
	ret z
	ld hl,lba02
	ld a,h
	ld (lb4cf),a
	ld e,(hl)
	inc l
	ld d,(hl)
	jr lb556
.lb53f
	ld l,#20
.lb542 equ $ + 1
	ld a,#3f
	and (hl)
	jr nz,lb54c
	ld l,#07
	ld a,(hl)
	ld (lb4eb),a
.lb54c
	ld l,#02
	ld e,(hl)
	inc l
	ld d,(hl)
.lb552 equ $ + 1
	ld a,#00
	or a
	jr nz,lb561
.lb556
	ld l,#05
	dec (hl)
	jr z,lb58d
	call lb79c
	call lb646
.lb561
	call lb9a7
	call lb934
	call lb92d
	call lb968
	call lb7a7
	call lb8dd
	ld l,#04
	bit 5,(hl)
	ret z
	ld a,r
	and #07
	ld c,a
	ld l,#07
	ld a,(lb707)
	add c
	ld (hl),a
	ld a,(lb709)
	ld l,#09
	ld (hl),a
	ret nc
	inc (hl)
	ret
.lb58d
	ld a,(de)
	inc de
	or a
	jp m,lb5cb
.lb593
	ld l,#0c
	ld (hl),a
	ld l,#02
	ld (hl),e
	inc l
	ld (hl),d
	call lb7c2
	ld l,#14
	ld a,(hl)
	ld l,#0b
	ld (hl),a
	ld l,#0d
	ld a,(hl)
	ld l,#05
	ld (hl),a
	ld l,#18
	ld (hl),#00
	ld l,#2c
	ld a,(hl)
	srl a
	dec l
	ld (hl),a
	ld l,#0e
	call lb5bb
	inc l
.lb5bb
	ld a,(hl)
	ld c,a
	and #0f
	inc l
	ld (hl),a
	ld a,c
	rra
	rra
	rra
	rra
	and #0f
	inc l
	ld (hl),a
	ret
.lb5cb
	cp #e0
	jr nc,lb5f3
	cp #d0
	jr nc,lb603
	cp #c0
	jr nc,lb5fb
	cp #b0
	jr nc,lb62a
	ld c,h
	add a
	add #2d
	ld l,a
	adc #b8
	sub l
	ld h,a
	ld a,c
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld h,a
	ld (lb5ee),bc
.lb5ee equ $ + 1
	call #0000
	jp lb58d
.lb5f3
	sub #df
	ld l,#0d
	ld (hl),a
	jp lb58d
.lb5fb
	sub #c0
	ld l,#14
	ld (hl),a
	jp lb58d
.lb603
	sub #d0
	ld l,#14
	ld (hl),a
	ex de,hl
	ld e,#0e
	ldi
	ld e,#11
	ldi
	ex de,hl
	ld a,(de)
	rra
	rra
	rra
	rra
	and #0f
	ld l,#19
	ld (hl),a
	inc l
	ld (hl),a
	ld a,(de)
	and #0f
	ld l,#1b
	ld (hl),a
	inc l
	ld (hl),a
	inc de
	jp lb58d
.lb62a
	sub #b0
	add a
	add #8c
	ld c,a
	adc #b6
	sub c
	ld b,a
	ld a,(bc)
	ld l,#21
	ld (hl),a
	inc l
	inc bc
	ld a,(bc)
	ld (hl),a
	inc l
	ld (hl),#00
	ld l,#04
	set 0,(hl)
	jp lb58d
.lb646
	ld l,#16
	ld a,(hl)
	ld l,#05
	cp (hl)
	ret nz
	ld a,(de)
	cp #8e
	ret z
	ld l,#18
	ld (hl),#01
	ld l,#15
	ld (hl),#00
	ld l,#04
	res 1,(hl)
	ret
.lb65e
	pop af
	xor a
	ld (lb44f),a
	ld a,(lb498)
	or a
.lb668 equ $ + 1
	ld a,#00
	ld (lb542),a
	ret nz
	or #24
	ld (lb542),a
	jp lb4dd
.lb675
	call lb75d
	pop af
	ld l,#21
	ld (hl),#94
	inc l
	ld (hl),#b6
	inc l
	ld (hl),#00
	ld l,#04
	set 0,(hl)
	ld a,#18
	jp lb593
	dw lb694,lb6a0,lb6a4,lb6a6
.lb694
	db #00,#0c,#01,#0d,#02,#0e,#00,#0d
.lb6a0 equ $ + 4
	db #02,#0e,#00,#8c,#00,#00,#00,#8c
.lb6a4
	db #00,#8c
.lb6a6
	db #6e,#61,#6d,#65,#78,#41,#20,#64
	db #61,#4d,#20,#65,#68,#54,#20,#79
	db #6e,#69,#54,#20,#38,#38,#39,#31
	db #20,#29,#63,#28,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb709 equ $ + 3
.lb707 equ $ + 1
	db #00,#00,#01,#00,#08,#0f,#00,#04
	db #00,#00,#00,#00,#00,#00,#0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#08,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
.lb72d
	ld l,#04
	res 2,(hl)
	ret
.lb732
	call lb788
	ld l,#20
	jr lb73e
.lb739
	call lb788
	ld l,#1f
.lb73e
	ld a,(hl)
.lb73f
	cpl
	and c
	ld c,a
	ld l,#04
	res 4,(hl)
	res 0,(hl)
	ld a,h
	cp #b9
	jr z,lb752
.lb74d
	ld a,c
	ld (lb542),a
	ret
.lb752
	ld a,(lb44f)
	or a
	jr z,lb74d
	ld a,c
	ld (lb668),a
	ret
.lb75d
	call lb788
	ld l,#1f
	ld a,(hl)
	inc l
	or (hl)
	jr lb73f
.lb767
	call lb788
	ld l,#20
	ld a,(hl)
	cpl
	and c
	ld (lb542),a
	ld l,#04
	set 4,(hl)
	ret
.lb777
	ld l,#0b
	ld (hl),#00
.lb77b
	pop af
	ld l,#0d
	ld a,(hl)
	ld l,#05
	ld (hl),a
	ld l,#02
	ld (hl),e
	inc l
	ld (hl),d
	ret
.lb788
	ld a,(lb542)
	ld l,#1f
	or (hl)
	inc l
	or (hl)
	ld c,a
	ret
.lb792
	ld l,#15
	ld (hl),#01
	ret
.lb797
	ld l,#15
	ld (hl),#ff
	ret
.lb79c
	ld l,#15
	ld a,(hl)
	or a
	ret z
	ld l,#0c
	add (hl)
	ld (hl),a
	jr lb7c2
.lb7a7
	ld l,#04
	bit 0,(hl)
	ret z
	ld l,#21
	ld a,(hl)
	inc l
	ld b,(hl)
	inc l
	add (hl)
	ld c,a
	jr nc,lb7b7
	inc b
.lb7b7
	inc (hl)
	ld a,(bc)
	or a
	jp p,lb7bf
	ld (hl),#00
.lb7bf
	ld l,#0c
	add (hl)
.lb7c3 equ $ + 1
.lb7c2
	add #00
	add a
	add #15
	ld c,a
	adc #ba
	sub c
	ld b,a
	ld a,(bc)
	inc bc
	ld l,#07
	ld (hl),a
	ld a,(bc)
	ld l,#09
	ld (hl),a
	ld l,#04
	bit 2,(hl)
	ret z
	push de
	ld l,#27
	ld e,(hl)
	inc l
	ld d,(hl)
	ld l,#07
	ld c,(hl)
	ld l,#09
	ld b,(hl)
	ex de,hl
	add hl,bc
	ex de,hl
	ld (hl),d
	ld l,#07
	ld (hl),e
	pop de
	ld l,#29
	ld a,(hl)
	ld l,#26
	ld (hl),a
	ret
.lb7f5
	ld a,(de)
	ld (lb7c3),a
	inc de
	ret
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#02,#00,#03,#00,#09
	db #0f,#00,#04,#00,#00,#00,#00,#00
	db #00,#0f,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#02,#10,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	dw lb8bd,lb792,lb797,lb871
	dw lb88a,lb88f,lb89e,lb72d
	dw lb85b,lb86c,lb739,lb732
	dw lb75d,lb767,lb77b,lb777
	dw lb7f5,lb513,lb8f2,lb8f7
	dw lb8b5,lb65e,lb675
.lb85b
	ex de,hl
	ld e,#2a
	ldi
	ld a,(hl)
	ldi
	ld (de),a
	ex de,hl
	ld l,#04
	set 3,(hl)
	set 6,(hl)
	ret
.lb86c
	ld l,#04
	res 3,(hl)
	ret
.lb871
	ld a,(de)
	inc de
	ld l,#16
	ld (hl),a
	ld a,(de)
	rra
	rra
	rra
	rra
	and #0f
	ld l,#1d
	ld (hl),a
	inc l
	ld (hl),a
	ld a,(de)
	and #0f
	ld l,#17
	ld (hl),a
	inc de
	ret
.lb88a
	ld l,#04
	res 0,(hl)
	ret
.lb88f
	ex de,hl
	ld e,#24
	ldi
	ldi
	ldi
	ex de,hl
	ld l,#04
	set 1,(hl)
	ret
.lb89e
	ex de,hl
	ld e,#27
	ldi
	ldi
	ld e,#24
	ldi
	ldi
	ld e,#29
	ldi
	ex de,hl
	ld l,#04
	set 2,(hl)
	ret
.lb8b5
	ld l,#00
	ex de,hl
	ldi
	ldi
	ex de,hl
.lb8bd
	ld l,#00
	ld c,(hl)
	inc l
	ld b,(hl)
	ld a,(bc)
	ld e,a
	inc bc
	ld a,(bc)
	inc bc
	ld d,a
	or e
	jr z,lb8d4
	ld (hl),b
	dec l
	ld (hl),c
	inc l
	inc l
	ld (hl),e
	inc l
	ld (hl),d
	ret
.lb8d4
	ld d,b
	ld e,c
	pop bc
	ld a,(lbeb9)
	jp lb5cb
.lb8dd
	ld l,#04
	bit 4,(hl)
	ret z
	ld l,#1f
	ld a,(hl)
	inc l
	or (hl)
	ld c,a
	ld a,(lb542)
	xor c
	ld (lb542),a
	ret
.lb8f0
	inc (hl)
	ret
.lb8f2
	ld l,#04
	set 5,(hl)
	ret
.lb8f7
	ld l,#04
	res 5,(hl)
	ret
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb90b equ $ + 7
	db #00,#00,#04,#00,#05,#00,#0a,#0f
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #0f,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#04,#20,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.lb92d
	ld l,#04
	bit 2,(hl)
	jr nz,lb939
	ret
.lb934
	ld l,#04
	bit 1,(hl)
	ret z
.lb939
	ld l,#26
	dec (hl)
	jp m,lb8f0
	ld l,#25
	bit 7,(hl)
	jr nz,lb954
	ld l,#24
	ld a,(hl)
	ld l,#07
	add (hl)
	ld (hl),a
	ld l,#25
	ld a,(hl)
	ld l,#09
	adc (hl)
	ld (hl),a
	ret
.lb954
	ld l,#25
	ld c,(hl)
	res 7,c
	ld l,#07
	ld a,(hl)
	ld l,#24
	sub (hl)
	ld l,#07
	ld (hl),a
	ld l,#09
	ld a,(hl)
	sbc c
	ld (hl),a
	ret
.lb968
	ld l,#04
	bit 3,(hl)
	ret z
	bit 6,(hl)
	jr z,lb98b
	ld l,#2b
	dec (hl)
	jr nz,lb97f
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	res 6,(hl)
	ret
.lb97f
	ld l,#2a
	ld a,(hl)
	ld l,#07
	add (hl)
	ld (hl),a
	ret nc
	ld l,#09
	inc (hl)
	ret
.lb98b
	ld l,#2b
	dec (hl)
	jr nz,lb999
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	set 6,(hl)
	ret
.lb999
	ld l,#07
	ld a,(hl)
	ld l,#2a
	sub (hl)
	ld l,#07
	ld (hl),a
	ret nc
	ld l,#09
	dec (hl)
	ret
.lb9a7
	ld l,#0f
	ld a,(hl)
	or a
	jr z,lb9c2
	ld l,#19
	dec (hl)
	ret nz
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#0f
	dec (hl)
	inc l
	ld a,(hl)
	ld l,#0b
	add (hl)
	cp #0f
	ret nc
	ld (hl),a
	ret
.lb9c2
	ld l,#12
	ld a,(hl)
	or a
	jr z,lb9e0
	ld l,#1b
	dec (hl)
	ret nz
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#12
	dec (hl)
	ld l,#0b
	ld a,(hl)
	ld l,#13
	sub (hl)
	jr nc,lb9dc
	xor a
.lb9dc
	ld l,#0b
	ld (hl),a
	ret
.lb9e0
	ld l,#18
	ld a,(hl)
	or a
	ret z
	ld l,#1d
	dec (hl)
	ret nz
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#0b
	ld a,(hl)
	ld l,#17
	sub (hl)
	jr nc,lb9f6
	xor a
.lb9f6
	ld l,#0b
	ld (hl),a
	ret
	db #00,#00,#00,#00,#00,#00,#00,#00
.lba02
	db #00,#00,#00,#00,#04,#00,#05,#00
	db #0a,#0f,#00,#04,#00,#00,#00,#00
	db #00,#00,#0f,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#04,#20,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
	dw #077c,#0710,#06ab,#064b
	dw #05f0,#059b,#054b,#04ff
	dw #04b7,#0473,#0433,#03f6
	dw #03be,#0388,#0355,#0325
	dw #02f8,#02cd,#02a5,#027f
	dw #025b,#0239,#0219,#01fb
	dw #01df,#01c4,#01aa,#0193
	dw #017c,#0167,#0152,#013f
	dw #012e,#011d,#010d,#00fd
	dw #00ef,#00e2,#00d5,#00c9
	dw #00be,#00b3,#00a9,#00a0
	dw #0097,#008e,#0086,#007f
	dw #0078,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#002d,#002a,#0028
	dw #0025,#0023,#0021,#001f
	dw #001e,#001c,#001a,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
	dw #000f,#000e,#000d,#000c
	dw #000c,#000b,#000a,#000a
	dw #0009,#0009,#0008,#0008
	db #03
	dw lbb1c,lbb2a,lbb36,#0303
	dw lbb42,lbb46,lbb4a,#0303
	dw lbb4e,lbb50,lbb52,#0303
	dw lbb54,lbb56,lbb58,#0303
	dw lbb5a,lbb6a,lbb6c,#0303
.lbb1c equ $ + 6
	dw lbec3,lbec3,lbec3,lbb6e
	dw lbb97,lbb97,lbc02,lbec0
.lbb2a equ $ + 4
	dw lbb97,lbc8a,lbc92,lbca4
	dw lbcda,lbd07,lbca4,lbd45
.lbb36
	dw lbd4d,lbd74,lbd74,lbd8d
.lbb42 equ $ + 4
	dw lbd74,lbda8,lbb6e,lbdab
.lbb4a equ $ + 4
.lbb46
	dw lbc92,lbdae,lbd4d,lbdb1
.lbb54 equ $ + 6
.lbb52 equ $ + 4
.lbb50 equ $ + 2
.lbb4e
	dw lbdb4,lbde2,lbdf8,lbe0a
.lbb5a equ $ + 4
.lbb58 equ $ + 2
.lbb56
	dw lbe34,lbe4b,lbe5d,lbe5d
	dw lbe5d,lbe5d,lbe6c,lbe6c
.lbb6c equ $ + 6
.lbb6a equ $ + 4
	dw lbe6c,lbe76,lbe86,lbea7
.lbb6e
	db #dd,#12,#15,#11,#8a,#e3,#1a,#1a
	db #e1,#96,#8a,#1c,#e3,#1c,#1d,#1d
	db #e1,#96,#8a,#1f,#e3,#1f,#21,#21
	db #e1,#96,#8a,#23,#e3,#23,#24,#24
	db #e1,#96,#8a,#26,#e1,#96,#8a,#26
.lbb97 equ $ + 1
	db #80,#8a,#dd,#12,#15,#11,#e3,#18
	db #18,#e1,#96,#8a,#18,#e3,#18,#18
	db #18,#e1,#96,#8a,#18,#18,#18,#e3
	db #18,#18,#e1,#96,#8a,#18,#e3,#18
	db #18,#18,#e1,#96,#8a,#18,#18,#18
	db #e3,#11,#11,#e1,#96,#8a,#11,#e3
	db #11,#13,#13,#e1,#96,#8a,#13,#e3
	db #13,#18,#18,#e1,#96,#8a,#18,#e3
	db #18,#18,#18,#e1,#96,#8a,#18,#e3
	db #18,#15,#15,#e1,#96,#8a,#15,#e3
	db #15,#15,#15,#e1,#96,#8a,#15,#e3
	db #15,#e7,#1a,#e1,#96,#8a,#e5,#1c
	db #e3,#1d,#e1,#96,#8f,#e3,#8a,#1f
.lbc02 equ $ + 4
	db #e1,#96,#96,#80,#8a,#dd,#12,#15
	db #11,#e3,#21,#21,#e1,#96,#8a,#21
	db #e3,#21,#21,#21,#e1,#96,#8a,#21
	db #e3,#21,#1f,#1f,#e1,#96,#8a,#1f
	db #e3,#1f,#1f,#1f,#e1,#96,#8a,#1f
	db #1f,#8e,#e3,#1d,#1d,#e1,#96,#8a
	db #1d,#e3,#1d,#1d,#1d,#e1,#96,#8a
	db #1d,#e3,#1d,#1f,#1f,#e1,#96,#8a
	db #21,#e3,#21,#22,#22,#e1,#96,#8a
	db #24,#e3,#24,#21,#21,#e1,#96,#8a
	db #21,#e3,#21,#21,#21,#e1,#96,#8a
	db #21,#e3,#21,#1f,#1f,#e1,#96,#8a
	db #1f,#e3,#1f,#1f,#1f,#e1,#96,#8a
	db #1f,#e3,#1f,#1f,#1f,#e1,#96,#8a
	db #1f,#e3,#1f,#1f,#1f,#e1,#96,#8a
	db #1f,#e3,#1f,#21,#21,#e1,#96,#8a
	db #21,#e3,#21,#21,#21,#e1,#96,#8a
.lbc8a equ $ + 4
	db #21,#e3,#21,#80,#8a,#dd,#12,#15
.lbc92 equ $ + 4
	db #11,#ff,#18,#91,#8a,#db,#14,#14
	db #22,#88,#01,#02,#e7,#37,#39,#3a
.lbca4 equ $ + 6
	db #3c,#3e,#42,#43,#45,#80,#8a,#dd
	db #12,#16,#22,#86,#04,#00,#02,#80
	db #02,#88,#01,#02,#e3,#37,#3c,#37
	db #ef,#35,#e3,#37,#35,#37,#3e,#f3
	db #3c,#e3,#37,#3c,#37,#35,#8f,#35
	db #8e,#3c,#3e,#3c,#3b,#f3,#3c,#e3
	db #39,#37,#39,#3e,#8f,#3e,#8e,#f1
.lbcda equ $ + 4
	db #43,#8e,#87,#80,#8a,#dd,#12,#16
	db #22,#b1,#e3,#37,#3c,#37,#ef,#35
	db #e3,#37,#35,#37,#3e,#f3,#3c,#e3
	db #37,#3c,#37,#35,#8f,#35,#8e,#3c
	db #3e,#3c,#3b,#f3,#3c,#e3,#39,#37
	db #39,#3e,#8f,#3c,#8e,#f1,#43,#8e
.lbd07 equ $ + 1
	db #80,#8a,#dc,#13,#12,#12,#88,#01
	db #02,#eb,#39,#e3,#40,#3e,#8e,#3b
	db #ef,#37,#e3,#3e,#3c,#8e,#39,#ef
	db #35,#e3,#3c,#3b,#8e,#37,#eb,#39
	db #e7,#3b,#3c,#3e,#eb,#39,#e3,#40
	db #3e,#8e,#3b,#f3,#43,#8e,#b1,#e3
	db #4f,#8e,#4d,#4c,#8e,#4d,#4c,#8e
.lbd45 equ $ + 7
	db #51,#8e,#4f,#e7,#4d,#4f,#80,#8a
.lbd4d equ $ + 7
	db #dd,#12,#16,#22,#ff,#37,#91,#8a
	db #d8,#12,#12,#22,#e1,#32,#34,#35
	db #37,#34,#35,#37,#39,#35,#37,#39
	db #3a,#37,#39,#3b,#3c,#39,#3b,#3c
	db #3e,#3b,#3c,#3e,#40,#3c,#3e,#40
.lbd74 equ $ + 6
	db #41,#3e,#40,#41,#43,#80,#8a,#d7
	db #16,#14,#33,#88,#01,#02,#ef,#37
	db #35,#35,#37,#37,#35,#35,#37,#39
.lbd8d equ $ + 7
	db #39,#e7,#32,#34,#35,#37,#80,#8a
	db #d7,#16,#14,#33,#ef,#39,#45,#37
	db #43,#35,#41,#e7,#37,#39,#3a,#3c
	db #ef,#39,#45,#43,#8e,#30,#3c,#32
.lbdab equ $ + 5
.lbda8 equ $ + 2
	db #3e,#80,#ff,#3c,#91,#e7,#24,#91
.lbdb4 equ $ + 6
.lbdb1 equ $ + 3
.lbdae
	db #e7,#43,#91,#e7,#3c,#91,#8a,#dd
	db #12,#15,#11,#e3,#21,#21,#e1,#96
	db #8a,#21,#e3,#21,#21,#21,#e1,#96
	db #8a,#21,#e3,#21,#e3,#1a,#1a,#e1
	db #96,#8a,#1c,#e3,#1c,#1d,#e1,#96
	db #8a,#e3,#1f,#e1,#1f,#e1,#96,#96
.lbde2 equ $ + 4
	db #8a,#e7,#18,#91,#8a,#db,#14,#14
	db #22,#88,#01,#02,#e3,#39,#37,#39
	db #3e,#8f,#3e,#8e,#f1,#43,#8e,#e7
.lbdf8 equ $ + 2
	db #48,#91,#8a,#d7,#16,#14,#33,#88
	db #01,#02,#ef,#39,#39,#e7,#32,#34
.lbe0a equ $ + 4
	db #35,#37,#43,#91,#8a,#dd,#12,#15
	db #11,#e3,#1a,#1a,#e1,#96,#8a,#1a
	db #e3,#1a,#1f,#1f,#e1,#96,#8a,#1f
	db #e3,#1f,#1a,#1a,#e1,#96,#8a,#1c
	db #e3,#1c,#1d,#e1,#96,#8f,#96,#96
.lbe34 equ $ + 6
	db #96,#96,#8a,#e7,#18,#91,#8a,#db
	db #14,#14,#22,#88,#01,#02,#e3,#39
	db #3e,#39,#37,#8e,#e3,#39,#40,#ff
.lbe4b equ $ + 5
	db #3e,#e3,#8f,#3c,#91,#8a,#d7,#16
	db #14,#33,#88,#01,#03,#ef,#39,#39
.lbe5d equ $ + 7
	db #e7,#32,#34,#35,#37,#43,#91,#8a
	db #dd,#12,#15,#11,#e3,#21,#28,#e1
.lbe6c equ $ + 6
	db #96,#8a,#24,#21,#8e,#80,#e3,#24
	db #2b,#e1,#96,#8a,#27,#24,#8e,#80
.lbe76
	db #e1,#96,#96,#96,#96,#96,#96,#8a
	db #d7,#16,#14,#33,#8a,#e7,#40,#91
.lbe86
	db #8a,#db,#14,#14,#22,#e3,#40,#8e
	db #39,#ef,#3c,#e1,#4c,#48,#e3,#4c
	db #8e,#45,#ef,#48,#e3,#41,#43,#8e
	db #3c,#f1,#3f,#8e,#e7,#39,#3c,#43
.lbea7 equ $ + 1
	db #91,#8a,#d7,#16,#14,#33,#ef,#40
	db #39,#40,#39,#43,#3c,#43,#e7,#3c
.lbeb9 equ $ + 3
	db #3f,#3c,#91,#94,#ff,#8f,#8f,#8f
.lbec3 equ $ + 5
.lbec0 equ $ + 2
	db #8f,#80,#90,#02,#80,#c5,#be,#91
	db #00,#00
	dw lbece,lbeee,lbeff
.lbece
	db #8a,#dd,#11,#11,#11,#eb,#85,#08
	db #80,#12,#3c,#e3,#8f,#c5,#eb,#85
	db #07,#80,#12,#3c,#e3,#8f,#c2,#eb
	db #85,#07,#80,#12,#3c,#e3,#8f,#95
.lbeee
	db #8a,#dd,#11,#11,#11,#e9,#81,#0c
	db #82,#47,#dd,#00,#16,#18,#37,#8e
.lbeff equ $ + 1
	db #95,#8a,#dd,#11,#11,#11,#ed,#88
	db #02,#04,#85,#02,#80,#20,#00,#85
	db #02,#80,#20,#00,#85,#02,#80,#20
	db #00,#85,#02,#80,#20,#00,#95
;
; #b6a6
; db "namexA daM ehT yniT 8891 )c("
;
.music_info
	db "Bob's Full House (1988)(Createl)(Tiny Williams)",0
	db "namexA daM ehT yniT 8891 )c(",0

	read "music_end.asm"
