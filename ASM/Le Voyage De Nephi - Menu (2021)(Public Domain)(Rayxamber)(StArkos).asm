; Music of Le Voyage De Nephi - Menu (2021)(Public Domain)(Rayxamber)(StArkos)
; Ripped by Megachur the 10/04/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LEVOYDNM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #8c8d

	read "music_header.asm"

	jp l8c96	; init & init music interrupt
	jp l8cbf	; stop music interrupt
	jp l8cb3	; init music interrupt
;
.init_music
.l8c96
;
	ld hl,l8c9f
	ld e,(hl)
	inc hl
	ld d,(hl)
	jp l8ca1
.l8c9f
	dw l9630
.l8ca1
	call l936e
	ld hl,l8ce5
.l8ca8 equ $ + 1
	ld de,#0000
	ld a,d
	ld (l8cd4),a
	add hl,de
	ld a,(hl)
	ld (l8cd6),a
.l8cb3
	ld hl,l8cc8
	ld bc,#8100
	ld de,l8cd2
	ret:nop:nop		; jp #bce0 - modified by Megachur
.l8cbf
	ld hl,l8cc8
	call #bce6
	jp l93c8
.l8cc8
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
;
.play_music_interrupt
.l8cd2		; play music interrupt
;
	di
.l8cd4 equ $ + 1
	ld a,#00
.l8cd6 equ $ + 1
	cp #05
	jr z,l8cde
	inc a
	ld (l8cd4),a
	ret
;
.play_music
.l8cde		; play
;
	xor a
	ld (l8cd4),a
	jp l8cec
.l8ce5
	ld de,#050b
	ld (bc),a
.l8ceb equ $ + 2
	ld bc,#0000
.l8cec
	call l93e2
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l8ceb),a
.l8cfc equ $ + 1
	ld a,#01
	dec a
	jp nz,l8ec8
.l8d02 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8d6e
.l8d07 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l8d15
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l8d15
	rra
	jr nc,l8d1d
	ld de,l8dbe
	ldi
.l8d1d
	rra
	jr nc,l8d25
	ld de,l8e23
	ldi
.l8d25
	rra
	jr nc,l8d2d
	ld de,l8e88
	ldi
.l8d2d
	ld de,l8d9d
	ldi
	ldi
	ld de,l8e02
	ldi
	ldi
	ld de,l8e67
	ldi
	ldi
	rra
	jr nc,l8d4a
	ld de,l8d6d
	ldi
.l8d4a
	rra
	jr nc,l8d55
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l8d59),de
.l8d55
	ld (l8d07),hl
.l8d59 equ $ + 1
	ld hl,#0000
	ld (l8d77),hl
	ld a,#01
	ld (l8d72),a
	ld (l8d98),a
	ld (l8dfd),a
	ld (l8e62),a
.l8d6d equ $ + 1
	ld a,#01
.l8d6e
	ld (l8d02),a
.l8d72 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8d94
.l8d77 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l8d91
	srl a
	jr nz,l8d85
	ld a,(hl)
	inc hl
.l8d85
	jr nc,l8d8c
	ld (l8ceb),a
	jr l8d8f
.l8d8c
	ld (l8ec7),a
.l8d8f
	ld a,#01
.l8d91
	ld (l8d77),hl
.l8d94
	ld (l8d72),a
.l8d98 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8df9
.l8d9d equ $ + 1
	ld hl,#0000
	call l921a
	ld (l8d9d),hl
	jr c,l8df9
	ld a,d
	rra
	jr nc,l8db0
	and #0f
	ld (l8f4a),a
.l8db0
	rl d
	jr nc,l8db8
	ld (l8f38),ix
.l8db8
	rl d
	jr nc,l8df7
	ld a,e
.l8dbe equ $ + 1
	add #00
	ld (l8f49),a
	ld hl,#0000
	ld (l8f35),hl
	rl d
	jr c,l8dd7
.l8dcd equ $ + 1
	ld hl,#0000
	ld a,(l8f5a)
	ld (l8f52),a
	jr l8df4
.l8dd7
	ld l,b
	add hl,hl
.l8dda equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l8f5a),a
	ld (l8f52),a
	ld a,(hl)
	or a
	jr z,l8df0
	ld (l9045),a
.l8df0
	inc hl
	ld (l8dcd),hl
.l8df4
	ld (l8f4c),hl
.l8df7
	ld a,#01
.l8df9
	ld (l8d98),a
.l8dfd equ $ + 1
	ld a,#01
	dec a
	jr nz,l8e5e
.l8e02 equ $ + 1
	ld hl,#0000
	call l921a
	ld (l8e02),hl
	jr c,l8e5e
	ld a,d
	rra
	jr nc,l8e15
	and #0f
	ld (l8f16),a
.l8e15
	rl d
	jr nc,l8e1d
	ld (l8f04),ix
.l8e1d
	rl d
	jr nc,l8e5c
	ld a,e
.l8e23 equ $ + 1
	add #00
	ld (l8f15),a
	ld hl,#0000
	ld (l8f01),hl
	rl d
	jr c,l8e3c
.l8e32 equ $ + 1
	ld hl,#0000
	ld a,(l8f26)
	ld (l8f1e),a
	jr l8e59
.l8e3c
	ld l,b
	add hl,hl
.l8e3f equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l8f26),a
	ld (l8f1e),a
	ld a,(hl)
	or a
	jr z,l8e55
	ld (l9045),a
.l8e55
	inc hl
	ld (l8e32),hl
.l8e59
	ld (l8f18),hl
.l8e5c
	ld a,#01
.l8e5e
	ld (l8dfd),a
.l8e62 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8ec3
.l8e67 equ $ + 1
	ld hl,#0000
	call l921a
	ld (l8e67),hl
	jr c,l8ec3
	ld a,d
	rra
	jr nc,l8e7a
	and #0f
	ld (l8ee5),a
.l8e7a
	rl d
	jr nc,l8e82
	ld (l8ed3),ix
.l8e82
	rl d
	jr nc,l8ec1
	ld a,e
.l8e88 equ $ + 1
	add #00
	ld (l8ee4),a
	ld hl,#0000
	ld (l8ed0),hl
	rl d
	jr c,l8ea1
.l8e97 equ $ + 1
	ld hl,#0000
	ld a,(l8ef5)
	ld (l8eed),a
	jr l8ebe
.l8ea1
	ld l,b
	add hl,hl
.l8ea4 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l8ef5),a
	ld (l8eed),a
	ld a,(hl)
	or a
	jr z,l8eba
	ld (l9045),a
.l8eba
	inc hl
	ld (l8e97),hl
.l8ebe
	ld (l8ee7),hl
.l8ec1
	ld a,#01
.l8ec3
	ld (l8e62),a
.l8ec7 equ $ + 1
	ld a,#01
.l8ec8
	ld (l8cfc),a
	ld iy,l905c
.l8ed0 equ $ + 1
	ld hl,#0000
.l8ed3 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8ed0),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l8ee5 equ $ + 2
.l8ee4 equ $ + 1
	ld de,#0000
.l8ee7 equ $ + 1
	ld hl,#0000
	call l9067
.l8eed equ $ + 1
	ld a,#01
	dec a
	jr nz,l8ef6
	ld (l8ee7),hl
.l8ef5 equ $ + 1
	ld a,#06
.l8ef6
	ld (l8eed),a
	ld a,lx
	ex af,af'
	ld iy,l905a
.l8f01 equ $ + 1
	ld hl,#0000
.l8f04 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8f01),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l8f16 equ $ + 2
.l8f15 equ $ + 1
	ld de,#0000
.l8f18 equ $ + 1
	ld hl,#0000
	call l9067
.l8f1e equ $ + 1
	ld a,#01
	dec a
	jr nz,l8f27
	ld (l8f18),hl
.l8f26 equ $ + 1
	ld a,#06
.l8f27
	ld (l8f1e),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l9058
.l8f35 equ $ + 1
	ld hl,#0000
.l8f38 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8f35),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l8f4a equ $ + 2
.l8f49 equ $ + 1
	ld de,#0000
.l8f4c equ $ + 1
	ld hl,#0000
	call l9067
.l8f52 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8f5b
	ld (l8f4c),hl
.l8f5a equ $ + 1
	ld a,#06
.l8f5b
	ld (l8f52),a
	ex af,af'
	or lx
.l8f61
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l9058
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
	call l9043
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
.l9041
	nop
	ret
.l9043
	ld a,(hl)
.l9045 equ $ + 1
	cp #ff
	ret z
	ld (l9045),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l905f equ $ + 7
.l905e equ $ + 6
.l905c equ $ + 4
.l905a equ $ + 2
.l9058
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9066 equ $ + 6
.l9064 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00
.l9067
	ld b,(hl)
	inc hl
	rr b
	jp c,l90c5
	rr b
	jr c,l9095
	ld a,b
	and #0f
	jr nz,l907e
	ld (iy+#07),a
	ld lx,#09
	ret
.l907e
	ld lx,#08
	sub d
	jr nc,l9085
	xor a
.l9085
	ld (iy+#07),a
	rr b
	call l91ee
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l9095
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l90a5
	ld (l905e),a
	ld lx,#00
.l90a5
	ld a,b
	and #0f
	sub d
	jr nc,l90ac
	xor a
.l90ac
	ld (iy+#07),a
	bit 5,c
	jr nz,l90b6
	inc lx
	ret
.l90b6
	rr b
	bit 6,c
	call l91e0
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l90c5
	rr b
	jr nc,l90d8
	ld a,(l8f52)
	ld c,a
	ld a,(l8f5a)
	cp c
	jr nz,l90d8
	ld a,#fe
	ld (l9045),a
.l90d8
	bit 1,b
	jp nz,l9191
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l9066),a
	bit 0,b
	jr z,l9147
	bit 2,b
	call l91e0
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l9107),a
	ld a,b
	exx
.l9107 equ $ + 1
	jr l9108
.l9108
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
	jr nc,l9127
	inc hl
.l9127
	bit 5,a
	jr z,l9137
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
.l9137
	ld (l9064),hl
	exx
.l913b
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l905e),a
	ld lx,#00
	ret
.l9147
	bit 2,b
	call l91e0
	ld (l9064),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l915b),a
	ld a,b
	exx
.l915b equ $ + 1
	jr l915c
.l915c
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
	jr z,l9188
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
.l9188
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l913b
.l9191
	bit 0,b
	jr z,l919c
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l9067
.l919c
	ld (iy+#07),#10
	bit 5,b
	jr nz,l91a9
	ld lx,#09
	jr l91bc
.l91a9
	ld lx,#08
	ld hx,e
	bit 2,b
	call l91e0
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l91bc
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l9066),a
	rr b
	rr b
	bit 2,b
	call l91e0
	ld (l9064),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l905e),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l91e0
	jr z,l91ee
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
.l91ee
	bit 4,b
	jr z,l91fe
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
.l91fe
	ld a,e
	bit 3,b
	jr z,l920b
	add (hl)
	inc hl
	cp #90
	jr c,l920b
	ld a,#8f
.l920b
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l924e
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l921a
	ld a,(hl)
	inc hl
	srl a
	jr c,l9241
	sub #20
	jr c,l924b
	jr z,l923d
	dec a
	ld e,a
.l9228
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l9236
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l9236
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l923d
	ld e,(hl)
	inc hl
	jr l9228
.l9241
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l924b
	add #20
	ret
.l924e
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
.l936e
	ld hl,#0008
	add hl,de
	ld de,l8ca8
	ldi
	ld de,l8ec7
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l8dda),hl
	ld (l8e3f),hl
	ld (l8ea4),hl
	add hl,bc
	ld de,l8d6d
	ldi
	ld de,l8dbe
	ldi
	ld de,l8e23
	ldi
	ld de,l8e88
	ldi
	ld de,l8d59
	ldi
	ldi
	ld (l8d07),hl
	ld a,#01
	ld (l8cfc),a
	ld (l8d02),a
	ld a,#ff
	ld (l9066),a
	ld hl,(l8dda)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l8f4c),hl
	ld (l8f18),hl
	ld (l8ee7),hl
	ret
;
.stop_music
.l93c8
;
	call l93e2
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	ld hl,l905f
	ld bc,#0300
.l93d9
	ld (hl),c
	inc hl
	djnz l93d9
	ld a,#3f
	jp l8f61
.l93e2
	ld a,i
	di
	ld a,#f3
	jp po,l93ec
	ld a,#fb
.l93ec
	ld (l9041),a
	ret
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
.l9630
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#53,#00,#46,#96,#4f,#96
	db #59,#96,#65,#96,#7a,#96,#00,#00
	db #00,#00,#00,#00,#0d,#48,#96,#03
	db #00,#3c,#3c,#bc,#ff,#ff,#0d,#52
	db #96,#06,#00,#3c,#20,#30,#18,#24
	db #10,#18,#0d,#60,#96,#01,#00,#7c
	db #e8,#74,#e8,#30,#2c,#28,#24,#20
	db #1c,#18,#14,#10,#0c,#08,#04,#0d
	db #48,#96,#10,#00,#38,#34,#34,#30
	db #2c,#2c,#2c,#28,#28,#24,#20,#1c
	db #18,#14,#0c,#04,#0d,#48,#96,#40
	db #00,#00,#00,#16,#97,#00,#84,#98
	db #84,#98,#57,#97,#00,#84,#98,#84
	db #98,#57,#97,#00,#35,#98,#27,#97
	db #3b,#97,#00,#35,#98,#27,#97,#3b
	db #97,#00,#17,#97,#27,#97,#3b,#97
	db #00,#17,#97,#27,#97,#3b,#97,#00
	db #35,#98,#27,#97,#3b,#97,#00,#35
	db #98,#27,#97,#3b,#97,#00,#6e,#98
	db #27,#97,#57,#97,#00,#3d,#98,#27
	db #97,#57,#97,#00,#5c,#98,#27,#97
	db #79,#97,#00,#5c,#98,#27,#97,#93
	db #97,#00,#5c,#98,#27,#97,#b1,#97
	db #00,#5c,#98,#27,#97,#93,#97,#00
	db #5c,#98,#27,#97,#d3,#97,#00,#5c
	db #98,#27,#97,#d3,#97,#00,#5c,#98
	db #27,#97,#01,#98,#00,#5c,#98,#27
	db #97,#01,#98,#01,#95,#96,#00,#82
	db #e7,#00,#00,#01,#2a,#4d,#0a,#49
	db #06,#3b,#2e,#39,#06,#3f,#00,#a8
	db #e0,#00,#00,#02,#0a,#61,#0a,#65
	db #06,#5b,#1e,#53,#0a,#51,#0a,#57
	db #06,#5b,#00,#6a,#e0,#00,#00,#03
	db #0a,#43,#0a,#2b,#0a,#43,#0a,#2b
	db #06,#43,#06,#23,#0a,#3b,#0a,#23
	db #06,#3b,#0e,#21,#06,#27,#00,#90
	db #e0,#00,#00,#04,#02,#5b,#02,#5f
	db #0a,#51,#02,#5b,#02,#5f,#0e,#65
	db #0a,#5f,#06,#53,#02,#5b,#02,#5f
	db #0e,#5b,#02,#5f,#0e,#57,#0a,#53
	db #00,#b8,#e0,#00,#00,#04,#02,#77
	db #02,#73,#0e,#6f,#06,#73,#16,#5f
	db #02,#5b,#02,#61,#0a,#65,#0a,#57
	db #16,#53,#00,#b8,#e0,#00,#00,#04
	db #02,#73,#02,#77,#02,#6f,#02,#79
	db #2e,#79,#02,#73,#02,#77,#73,#6f
	db #02,#73,#0e,#5f,#02,#61,#02,#5b
	db #00,#9e,#e0,#00,#00,#04,#02,#61
	db #02,#5b,#1e,#73,#02,#77,#02,#73
	db #0e,#5f,#02,#61,#02,#5b,#1a,#69
	db #02,#5f,#06,#65,#02,#53,#02,#57
	db #02,#5b,#00,#ca,#e0,#00,#00,#04
	db #02,#87,#02,#91,#02,#87,#02,#81
	db #02,#77,#02,#6f,#02,#73,#0e,#96
	db #60,#02,#02,#5b,#02,#5f,#02,#61
	db #06,#ae,#60,#04,#0e,#77,#0e,#79
	db #0e,#7d,#06,#9a,#60,#02,#02,#5f
	db #00,#b6,#e0,#00,#00,#04,#6f,#73
	db #79,#77,#73,#6f,#73,#65,#69,#5f
	db #57,#5b,#06,#5b,#02,#5f,#02,#61
	db #02,#65,#02,#57,#0e,#77,#6f,#73
	db #79,#77,#73,#6f,#73,#65,#69,#5f
	db #57,#5f,#06,#5b,#02,#5f,#02,#61
	db #02,#65,#02,#69,#00,#42,#60,#00
	db #42,#89,#00,#00,#00,#82,#e5,#00
	db #00,#04,#02,#3f,#02,#35,#02,#43
	db #22,#43,#02,#3f,#02,#3b,#02,#35
	db #02,#3b,#2e,#2b,#02,#27,#42,#00
	db #21,#02,#1d,#00,#6a,#e0,#00,#00
	db #04,#06,#21,#06,#23,#2e,#2b,#06
	db #27,#06,#2f,#1e,#35,#00,#82,#e5
	db #00,#00,#04,#02,#3f,#02,#35,#02
	db #43,#22,#43,#02,#3f,#02,#3b,#02
	db #35,#02,#3b,#00,#42,#80,#00,#00

; #8100
; ld a,#00
; ld hl,#0000
; ld bc,#0000
; ld de,#0000
; call #8c8d

; ld de,l9630	; music data
; call l936e

;
.music_info
	db "Le Voyage De Nephi - Menu (2021)(Public Domain)(Rayxamber)",0
	db "StArkos",0

	read "music_end.asm"
