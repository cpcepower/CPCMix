; Music of Lab Escape (2013)(Public Domain)(EgoTrip)(StArkos)
; Ripped by Megachur the 29/12/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LABESCAP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #7000

	read "music_header.asm"

	jp l7009	; init & init music interrupt
	jp l7027	; stop music interrupt
	jp l701b	; init music interrupt
;
.real_init_music
.l7009
;
	call l76d6
	ld hl,l704d
.l7010 equ $ + 1
	ld de,#0000
	ld a,d
	ld (l703c),a
	add hl,de
	ld a,(hl)
	ld (l703e),a
.l701b
	ld hl,l7030
	ld bc,#8100
	ld de,l703a
	jp #bce0
.l7027
	ld hl,l7030
	call #bce6
	jp l7730
.l7030
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
;
.play_music_interupt
.l703a
;
	di
.l703c equ $ + 1
	ld a,#00
.l703e equ $ + 1
	cp #05
	jr z,l7046
	inc a
	ld (l703c),a
	ret
.l7046
	xor a
	ld (l703c),a
	jp l7054
.l704d
	ld de,#050b
	ld (bc),a
.l7053 equ $ + 2
	ld bc,#0000
;
.play_music
.l7054
;
	call l774a
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l7053),a
.l7064 equ $ + 1
	ld a,#01
	dec a
	jp nz,l7230
.l706a equ $ + 1
	ld a,#01
	dec a
	jr nz,l70d6
.l706f equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l707d
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l707d
	rra
	jr nc,l7085
	ld de,l7126
	ldi
.l7085
	rra
	jr nc,l708d
	ld de,l718b
	ldi
.l708d
	rra
	jr nc,l7095
	ld de,l71f0
	ldi
.l7095
	ld de,l7105
	ldi
	ldi
	ld de,l716a
	ldi
	ldi
	ld de,l71cf
	ldi
	ldi
	rra
	jr nc,l70b2
	ld de,l70d5
	ldi
.l70b2
	rra
	jr nc,l70bd
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l70c1),de
.l70bd
	ld (l706f),hl
.l70c1 equ $ + 1
	ld hl,#0000
	ld (l70df),hl
	ld a,#01
	ld (l70da),a
	ld (l7100),a
	ld (l7165),a
	ld (l71ca),a
.l70d5 equ $ + 1
	ld a,#01
.l70d6
	ld (l706a),a
.l70da equ $ + 1
	ld a,#01
	dec a
	jr nz,l70fc
.l70df equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l70f9
	srl a
	jr nz,l70ed
	ld a,(hl)
	inc hl
.l70ed
	jr nc,l70f4
	ld (l7053),a
	jr l70f7
.l70f4
	ld (l722f),a
.l70f7
	ld a,#01
.l70f9
	ld (l70df),hl
.l70fc
	ld (l70da),a
.l7100 equ $ + 1
	ld a,#01
	dec a
	jr nz,l7161
.l7105 equ $ + 1
	ld hl,#0000
	call l7582
	ld (l7105),hl
	jr c,l7161
	ld a,d
	rra
	jr nc,l7118
	and #0f
	ld (l72b2),a
.l7118
	rl d
	jr nc,l7120
	ld (l72a0),ix
.l7120
	rl d
	jr nc,l715f
	ld a,e
.l7126 equ $ + 1
	add #00
	ld (l72b1),a
	ld hl,#0000
	ld (l729d),hl
	rl d
	jr c,l713f
.l7135 equ $ + 1
	ld hl,#0000
	ld a,(l72c2)
	ld (l72ba),a
	jr l715c
.l713f
	ld l,b
	add hl,hl
.l7142 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l72c2),a
	ld (l72ba),a
	ld a,(hl)
	or a
	jr z,l7158
	ld (l73ad),a
.l7158
	inc hl
	ld (l7135),hl
.l715c
	ld (l72b4),hl
.l715f
	ld a,#01
.l7161
	ld (l7100),a
.l7165 equ $ + 1
	ld a,#01
	dec a
	jr nz,l71c6
.l716a equ $ + 1
	ld hl,#0000
	call l7582
	ld (l716a),hl
	jr c,l71c6
	ld a,d
	rra
	jr nc,l717d
	and #0f
	ld (l727e),a
.l717d
	rl d
	jr nc,l7185
	ld (l726c),ix
.l7185
	rl d
	jr nc,l71c4
	ld a,e
.l718b equ $ + 1
	add #00
	ld (l727d),a
	ld hl,#0000
	ld (l7269),hl
	rl d
	jr c,l71a4
.l719a equ $ + 1
	ld hl,#0000
	ld a,(l728e)
	ld (l7286),a
	jr l71c1
.l71a4
	ld l,b
	add hl,hl
.l71a7 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l728e),a
	ld (l7286),a
	ld a,(hl)
	or a
	jr z,l71bd
	ld (l73ad),a
.l71bd
	inc hl
	ld (l719a),hl
.l71c1
	ld (l7280),hl
.l71c4
	ld a,#01
.l71c6
	ld (l7165),a
.l71ca equ $ + 1
	ld a,#01
	dec a
	jr nz,l722b
.l71cf equ $ + 1
	ld hl,#0000
	call l7582
	ld (l71cf),hl
	jr c,l722b
	ld a,d
	rra
	jr nc,l71e2
	and #0f
	ld (l724d),a
.l71e2
	rl d
	jr nc,l71ea
	ld (l723b),ix
.l71ea
	rl d
	jr nc,l7229
	ld a,e
.l71f0 equ $ + 1
	add #00
	ld (l724c),a
	ld hl,#0000
	ld (l7238),hl
	rl d
	jr c,l7209
.l71ff equ $ + 1
	ld hl,#0000
	ld a,(l725d)
	ld (l7255),a
	jr l7226
.l7209
	ld l,b
	add hl,hl
.l720c equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l725d),a
	ld (l7255),a
	ld a,(hl)
	or a
	jr z,l7222
	ld (l73ad),a
.l7222
	inc hl
	ld (l71ff),hl
.l7226
	ld (l724f),hl
.l7229
	ld a,#01
.l722b
	ld (l71ca),a
.l722f equ $ + 1
	ld a,#01
.l7230
	ld (l7064),a
	ld iy,l73c4
.l7238 equ $ + 1
	ld hl,#0000
.l723b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l7238),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l724d equ $ + 2
.l724c equ $ + 1
	ld de,#0000
.l724f equ $ + 1
	ld hl,#0000
	call l73cf
.l7255 equ $ + 1
	ld a,#01
	dec a
	jr nz,l725e
	ld (l724f),hl
.l725d equ $ + 1
	ld a,#06
.l725e
	ld (l7255),a
	ld a,lx
	ex af,af'
	ld iy,l73c2
.l7269 equ $ + 1
	ld hl,#0000
.l726c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l7269),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l727e equ $ + 2
.l727d equ $ + 1
	ld de,#0000
.l7280 equ $ + 1
	ld hl,#0000
	call l73cf
.l7286 equ $ + 1
	ld a,#01
	dec a
	jr nz,l728f
	ld (l7280),hl
.l728e equ $ + 1
	ld a,#06
.l728f
	ld (l7286),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l73c0
.l729d equ $ + 1
	ld hl,#0000
.l72a0 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l729d),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l72b2 equ $ + 2
.l72b1 equ $ + 1
	ld de,#0000
.l72b4 equ $ + 1
	ld hl,#0000
	call l73cf
.l72ba equ $ + 1
	ld a,#01
	dec a
	jr nz,l72c3
	ld (l72b4),hl
.l72c2 equ $ + 1
	ld a,#06
.l72c3
	ld (l72ba),a
	ex af,af'
	or lx
.l72c9
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l73c0
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
	call l73ab
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
.l73a9
	nop
	ret
.l73ab
	ld a,(hl)
.l73ad equ $ + 1
	cp #ff
	ret z
	ld (l73ad),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l73c0
	nop
	nop
.l73c2
	nop
	nop
.l73c4
	nop
	nop
.l73c6
	nop
.l73c7
	nop
	nop
	nop
	nop
	nop
.l73cc
	nop
	nop
.l73ce
	nop
.l73cf
	ld b,(hl)
	inc hl
	rr b
	jp c,l742d
	rr b
	jr c,l73fd
	ld a,b
	and #0f
	jr nz,l73e6
	ld (iy+#07),a
	ld lx,#09
	ret
.l73e6
	ld lx,#08
	sub d
	jr nc,l73ed
	xor a
.l73ed
	ld (iy+#07),a
	rr b
	call l7556
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l73fd
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l740d
	ld (l73c6),a
	ld lx,#00
.l740d
	ld a,b
	and #0f
	sub d
	jr nc,l7414
	xor a
.l7414
	ld (iy+#07),a
	bit 5,c
	jr nz,l741e
	inc lx
	ret
.l741e
	rr b
	bit 6,c
	call l7548
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l742d
	rr b
	jr nc,l7440
	ld a,(l72ba)
	ld c,a
	ld a,(l72c2)
	cp c
	jr nz,l7440
	ld a,#fe
	ld (l73ad),a
.l7440
	bit 1,b
	jp nz,l74f9
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l73ce),a
	bit 0,b
	jr z,l74af
	bit 2,b
	call l7548
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l746f),a
	ld a,b
	exx
.l746f equ $ + 1
	jr l7470
.l7470
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
	jr nc,l748f
	inc hl
.l748f
	bit 5,a
	jr z,l749f
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
.l749f
	ld (l73cc),hl
	exx
.l74a3
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l73c6),a
	ld lx,#00
	ret
.l74af
	bit 2,b
	call l7548
	ld (l73cc),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l74c3),a
	ld a,b
	exx
.l74c3 equ $ + 1
	jr l74c4
.l74c4
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
	jr z,l74f0
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
.l74f0
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l74a3
.l74f9
	bit 0,b
	jr z,l7504
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l73cf
.l7504
	ld (iy+#07),#10
	bit 5,b
	jr nz,l7511
	ld lx,#09
	jr l7524
.l7511
	ld lx,#08
	ld hx,e
	bit 2,b
	call l7548
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l7524
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l73ce),a
	rr b
	rr b
	bit 2,b
	call l7548
	ld (l73cc),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l73c6),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l7548
	jr z,l7556
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
.l7556
	bit 4,b
	jr z,l7566
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
.l7566
	ld a,e
	bit 3,b
	jr z,l7573
	add (hl)
	inc hl
	cp #90
	jr c,l7573
	ld a,#8f
.l7573
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l75b6
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l7582
	ld a,(hl)
	inc hl
	srl a
	jr c,l75a9
	sub #20
	jr c,l75b3
	jr z,l75a5
	dec a
	ld e,a
.l7590
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l759e
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l759e
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l75a5
	ld e,(hl)
	inc hl
	jr l7590
.l75a9
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l75b3
	add #20
	ret
.l75b6
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
;.real_init_music
.l76d6
;
	ld hl,#0008
	add hl,de
	ld de,l7010
	ldi
	ld de,l722f
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l7142),hl
	ld (l71a7),hl
	ld (l720c),hl
	add hl,bc
	ld de,l70d5
	ldi
	ld de,l7126
	ldi
	ld de,l718b
	ldi
	ld de,l71f0
	ldi
	ld de,l70c1
	ldi
	ldi
	ld (l706f),hl
	ld a,#01
	ld (l7064),a
	ld (l706a),a
	ld a,#ff
	ld (l73ce),a
	ld hl,(l7142)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l72b4),hl
	ld (l7280),hl
	ld (l724f),hl
	ret
;
.stop_music
.l7730
;
	call l774a
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	ld hl,l73c7
	ld bc,#0300
.l7741
	ld (hl),c
	inc hl
	djnz l7741
	ld a,#3f
	jp l72c9
.l774a
	ld a,i
	di
	ld a,#f3
	jp po,l7754
	ld a,#fb
.l7754
	ld (l73a9),a
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
.l8000
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#05,#ca,#01,#26,#80,#2f,#80
	db #48,#80,#98,#80,#ad,#80,#c2,#80
	db #d7,#80,#f2,#80,#07,#81,#27,#81
	db #30,#81,#80,#81,#cd,#81,#00,#00
	db #00,#00,#00,#00,#0d,#28,#80,#01
	db #00,#38,#34,#30,#2c,#28,#24,#a4
	db #ff,#ff,#a4,#fe,#ff,#a4,#ff,#ff
	db #24,#24,#24,#24,#24,#0d,#37,#80
	db #02,#00,#24,#26,#21,#26,#23,#26
	db #24,#26,#25,#26,#26,#a6,#27,#ff
	db #ff,#a6,#28,#fe,#ff,#a6,#29,#ff
	db #ff,#26,#2a,#26,#2b,#26,#2c,#26
	db #2d,#26,#2e,#26,#2f,#26,#30,#26
	db #31,#26,#32,#26,#33,#2a,#34,#2a
	db #35,#2e,#36,#2e,#37,#72,#38,#0c
	db #72,#39,#18,#76,#3a,#24,#76,#3b
	db #30,#7a,#3c,#3c,#7a,#3d,#48,#7e
	db #3e,#54,#7e,#3f,#60,#0d,#28,#80
	db #01,#00,#3c,#78,#03,#34,#70,#03
	db #2c,#68,#03,#24,#60,#03,#20,#60
	db #03,#20,#0d,#a4,#80,#01,#00,#3c
	db #78,#04,#34,#70,#04,#2c,#68,#04
	db #24,#60,#04,#20,#60,#04,#20,#0d
	db #b9,#80,#01,#00,#3c,#78,#05,#34
	db #70,#05,#2c,#68,#05,#24,#60,#05
	db #20,#60,#05,#20,#0d,#ce,#80,#01
	db #00,#7e,#26,#0c,#7c,#0a,#74,#09
	db #74,#08,#6c,#05,#6c,#04,#64,#03
	db #5c,#02,#5c,#01,#58,#01,#18,#0d
	db #28,#80,#01,#00,#3e,#01,#36,#01
	db #2e,#01,#26,#01,#1e,#01,#16,#01
	db #0e,#01,#06,#01,#0d,#28,#80,#01
	db #00,#7e,#26,#0c,#7e,#28,#0a,#76
	db #2b,#09,#76,#2f,#08,#6e,#2b,#05
	db #6e,#25,#04,#64,#03,#5c,#02,#5c
	db #01,#58,#01,#18,#0d,#28,#80,#02
	db #fe,#89,#18,#01,#00,#0d,#29,#81
	db #01,#00,#24,#26,#21,#26,#23,#26
	db #24,#26,#25,#26,#26,#a6,#27,#ff
	db #ff,#a6,#28,#fe,#ff,#a6,#29,#ff
	db #ff,#26,#2a,#26,#2b,#26,#2c,#26
	db #2d,#26,#2e,#26,#2f,#26,#30,#26
	db #31,#26,#32,#26,#33,#2a,#34,#2a
	db #35,#2e,#36,#2e,#37,#72,#38,#0c
	db #72,#39,#18,#76,#3a,#24,#76,#3b
	db #30,#7a,#3c,#3c,#7a,#3d,#48,#7e
	db #3e,#54,#7e,#3f,#60,#0d,#28,#80
	db #01,#00,#bc,#e8,#ff,#bc,#e9,#ff
	db #bc,#ea,#ff,#bc,#eb,#ff,#bc,#ec
	db #ff,#bc,#ed,#ff,#bc,#ee,#ff,#bc
	db #ef,#ff,#bc,#f0,#ff,#bc,#f1,#ff
	db #bc,#f2,#ff,#bc,#f3,#ff,#bc,#f4
	db #ff,#bc,#f5,#ff,#bc,#f6,#ff,#bc
	db #f7,#ff,#bc,#f8,#ff,#bc,#f9,#ff
	db #bc,#fa,#ff,#bc,#fb,#ff,#bc,#fc
	db #ff,#bc,#fd,#ff,#bc,#fe,#ff,#bc
	db #ff,#ff,#0d,#28,#80,#02,#fe,#89
	db #18,#12,#00,#0d,#cf,#81,#80,#00
	db #00,#00,#54,#82,#10,#91,#82,#5d
	db #82,#87,#83,#80,#10,#91,#82,#54
	db #83,#87,#83,#70,#10,#32,#87,#02
	db #88,#12,#88,#10,#10,#4a,#84,#2f
	db #8a,#cc,#85,#80,#00,#4a,#84,#4d
	db #87,#cc,#85,#00,#50,#86,#92,#84
	db #91,#87,#10,#50,#86,#92,#84,#91
	db #87,#70,#10,#2d,#88,#36,#88,#40
	db #88,#10,#10,#49,#88,#55,#82,#6e
	db #89,#80,#00,#6c,#88,#92,#84,#c0
	db #89,#10,#6c,#88,#92,#84,#c0,#89
	db #70,#10,#b2,#89,#0e,#8a,#13,#8a
	db #10,#10,#50,#86,#92,#84,#91,#87
	db #80,#10,#50,#86,#92,#84,#91,#87
	db #70,#10,#2d,#88,#36,#88,#40,#88
	db #10,#01,#dc,#81,#00,#42,#60,#00
	db #42,#80,#00,#00,#00,#84,#fd,#00
	db #00,#01,#0e,#84,#5b,#0e,#84,#59
	db #0e,#84,#57,#0e,#84,#55,#0e,#84
	db #53,#0e,#84,#51,#0e,#84,#4f,#0e
	db #84,#4d,#0e,#84,#4b,#0e,#84,#49
	db #0e,#84,#47,#0e,#84,#45,#0e,#84
	db #43,#0e,#84,#41,#06,#84,#60,#02
	db #00,#b4,#e7,#00,#00,#01,#02,#b4
	db #49,#02,#ba,#47,#02,#42,#09,#02
	db #b4,#47,#02,#b4,#49,#02,#ba,#47
	db #02,#42,#09,#02,#b4,#47,#02,#b4
	db #49,#02,#ba,#47,#02,#42,#09,#02
	db #aa,#47,#02,#aa,#49,#02,#b0,#47
	db #02,#42,#09,#02,#b4,#47,#02,#b4
	db #49,#02,#ba,#47,#02,#42,#09,#02
	db #b4,#47,#02,#b4,#49,#02,#ba,#47
	db #02,#42,#09,#02,#b4,#47,#02,#b4
	db #49,#02,#ba,#47,#02,#42,#09,#02
	db #c2,#47,#02,#c2,#49,#02,#be,#47
	db #02,#42,#09,#02,#b4,#47,#02,#b4
	db #49,#02,#ba,#47,#02,#42,#09,#02
	db #b4,#47,#02,#b4,#49,#02,#ba,#47
	db #02,#42,#09,#02,#b4,#47,#02,#b4
	db #49,#02,#ba,#47,#02,#42,#09,#02
	db #aa,#47,#02,#aa,#49,#02,#b0,#47
	db #02,#42,#09,#02,#b4,#47,#02,#b4
	db #49,#02,#ba,#47,#02,#42,#09,#02
	db #b4,#47,#02,#b4,#49,#02,#ba,#47
	db #02,#42,#09,#02,#b4,#47,#02,#b4
	db #49,#02,#ba,#47,#02,#42,#09,#02
	db #c2,#47,#02,#c2,#49,#02,#be,#47
	db #02,#42,#09,#00,#84,#e1,#00,#00
	db #01,#06,#53,#02,#4f,#06,#4b,#0a
	db #45,#10,#42,#00,#0c,#45,#06,#53
	db #02,#4f,#06,#4b,#0a,#45,#06,#84
	db #60,#02,#16,#84,#60,#01,#06,#53
	db #02,#4f,#06,#4b,#0a,#45,#1e,#45
	db #06,#53,#02,#4f,#06,#4b,#00,#b4
	db #e7,#00,#00,#01,#02,#42,#09,#02
	db #ba,#47,#02,#ba,#49,#02,#b4,#47
	db #02,#42,#09,#02,#ba,#47,#02,#ba
	db #49,#02,#b4,#47,#02,#42,#09,#02
	db #ba,#47,#02,#ba,#49,#02,#aa,#47
	db #02,#42,#09,#02,#b0,#47,#02,#b0
	db #49,#02,#b4,#47,#02,#42,#09,#02
	db #ba,#47,#02,#ba,#49,#02,#b4,#47
	db #02,#42,#09,#02,#ba,#47,#02,#ba
	db #49,#02,#b4,#47,#02,#42,#09,#02
	db #ba,#47,#02,#ba,#49,#02,#c2,#47
	db #02,#42,#09,#02,#be,#47,#02,#be
	db #49,#02,#b4,#47,#02,#42,#09,#02
	db #ba,#47,#02,#ba,#49,#02,#b4,#47
	db #02,#42,#09,#02,#ba,#47,#02,#ba
	db #49,#02,#b4,#47,#02,#42,#09,#02
	db #ba,#47,#02,#ba,#49,#02,#aa,#47
	db #02,#42,#09,#02,#b0,#47,#02,#b0
	db #49,#02,#b4,#47,#02,#42,#09,#02
	db #ba,#47,#02,#ba,#49,#02,#b4,#47
	db #02,#42,#09,#02,#ba,#47,#02,#ba
	db #49,#02,#b4,#47,#02,#42,#09,#02
	db #ba,#47,#02,#ba,#49,#02,#c2,#47
	db #02,#42,#09,#02,#be,#47,#02,#be
	db #49,#00,#b4,#e3,#00,#00,#03,#0a
	db #75,#0a,#75,#06,#79,#0a,#79,#0a
	db #79,#06,#ba,#60,#04,#0a,#7b,#0a
	db #7b,#0a,#7b,#0a,#ba,#60,#05,#06
	db #7b,#06,#c2,#60,#03,#0a,#83,#0a
	db #c4,#60,#04,#06,#be,#60,#03,#0a
	db #7f,#0a,#be,#60,#05,#06,#ba,#60
	db #04,#0a,#7b,#0a,#ba,#60,#05,#06
	db #b8,#60,#03,#0a,#79,#0a,#b8,#60
	db #05,#00,#6c,#e1,#00,#00,#06,#6c
	db #6b,#07,#6c,#41,#6c,#49,#6c,#61
	db #08,#6c,#67,#07,#6c,#41,#6c,#49
	db #6c,#61,#06,#6c,#6b,#07,#6c,#41
	db #6c,#49,#6c,#61,#08,#6c,#67,#07
	db #6c,#41,#6c,#49,#6c,#61,#06,#6c
	db #6b,#07,#6c,#41,#6c,#49,#6c,#61
	db #08,#6c,#67,#07,#6c,#41,#6c,#49
	db #6c,#61,#06,#6c,#6b,#07,#6c,#41
	db #6c,#49,#6c,#61,#08,#6c,#67,#07
	db #6c,#41,#6c,#49,#6c,#61,#06,#6c
	db #6b,#07,#6c,#41,#6c,#49,#6c,#61
	db #08,#6c,#67,#07,#6c,#41,#6c,#49
	db #6c,#61,#06,#6c,#6b,#07,#6c,#41
	db #6c,#49,#6c,#61,#08,#6c,#67,#07
	db #6c,#41,#6c,#49,#6c,#61,#06,#6c
	db #6b,#07,#6c,#41,#6c,#49,#6c,#61
	db #08,#6c,#67,#07,#6c,#41,#6c,#49
	db #6c,#61,#06,#6c,#6b,#07,#6c,#41
	db #6c,#49,#6c,#61,#08,#6c,#67,#07
	db #6c,#61,#08,#6c,#69,#07,#6c,#61
	db #06,#6c,#6b,#07,#6c,#41,#6c,#49
	db #6c,#61,#08,#6c,#67,#07,#6c,#41
	db #6c,#49,#6c,#61,#06,#6c,#6b,#07
	db #6c,#41,#6c,#49,#6c,#61,#08,#6c
	db #67,#07,#6c,#41,#6c,#49,#6c,#61
	db #06,#6c,#6b,#07,#6c,#41,#6c,#49
	db #6c,#61,#08,#6c,#67,#07,#6c,#41
	db #6c,#49,#6c,#61,#06,#6c,#6b,#07
	db #6c,#41,#6c,#49,#6c,#61,#08,#6c
	db #67,#07,#6c,#41,#6c,#49,#6c,#61
	db #06,#6c,#6b,#07,#6c,#41,#6c,#49
	db #6c,#61,#08,#6c,#67,#07,#6c,#41
	db #6c,#49,#6c,#61,#06,#6c,#6b,#07
	db #6c,#41,#6c,#49,#6c,#61,#08,#6c
	db #67,#07,#6c,#41,#6c,#49,#6c,#61
	db #06,#6c,#6b,#07,#6c,#41,#6c,#49
	db #6c,#61,#06,#6c,#67,#07,#6c,#41
	db #6c,#49,#6c,#61,#08,#02,#2d,#02
	db #2d,#02,#2d,#00,#84,#e1,#00,#00
	db #01,#02,#2d,#02,#45,#02,#2d,#02
	db #45,#02,#2d,#02,#45,#02,#2d,#02
	db #49,#02,#31,#02,#49,#02,#31,#02
	db #49,#02,#31,#02,#49,#02,#31,#02
	db #4b,#02,#33,#02,#4b,#02,#33,#02
	db #4b,#02,#33,#02,#4b,#02,#33,#02
	db #4b,#02,#33,#02,#4b,#02,#33,#02
	db #4b,#02,#63,#02,#33,#02,#1b,#02
	db #53,#02,#3b,#02,#53,#02,#3b,#02
	db #53,#02,#3b,#02,#53,#02,#3b,#02
	db #4f,#02,#37,#02,#4f,#02,#37,#02
	db #4f,#02,#37,#02,#4f,#02,#37,#02
	db #4b,#02,#33,#02,#4b,#02,#33,#02
	db #4b,#02,#33,#02,#4b,#02,#33,#02
	db #49,#02,#31,#02,#49,#02,#31,#02
	db #49,#02,#31,#02,#49,#02,#61,#00
	db #b4,#e3,#00,#00,#03,#02,#84,#60
	db #01,#02,#45,#02,#b4,#60,#03,#02
	db #84,#60,#01,#02,#45,#02,#b4,#60
	db #03,#02,#84,#60,#01,#02,#b8,#60
	db #03,#02,#88,#60,#01,#02,#49,#02
	db #b8,#60,#03,#02,#88,#60,#01,#02
	db #49,#02,#b8,#60,#03,#02,#88,#60
	db #01,#02,#ba,#60,#04,#02,#8a,#60
	db #01,#02,#4b,#02,#ba,#60,#04,#02
	db #8a,#60,#01,#02,#4b,#02,#ba,#60
	db #04,#02,#8a,#60,#01,#02,#4b,#02
	db #ba,#60,#04,#02,#8a,#60,#01,#02
	db #4b,#02,#ba,#60,#05,#02,#8a,#60
	db #01,#02,#ba,#60,#05,#02,#8a,#60
	db #01,#02,#c2,#60,#03,#02,#92,#60
	db #01,#02,#53,#02,#c2,#60,#03,#02
	db #92,#60,#01,#02,#53,#02,#c4,#60
	db #04,#02,#94,#60,#01,#02,#be,#60
	db #03,#02,#8e,#60,#01,#02,#4f,#02
	db #be,#60,#03,#02,#8e,#60,#01,#02
	db #4f,#02,#be,#60,#05,#02,#8e,#60
	db #01,#02,#ba,#60,#04,#02,#8a,#60
	db #01,#02,#4b,#02,#ba,#60,#04,#02
	db #8a,#60,#01,#02,#4b,#02,#ba,#60
	db #05,#02,#8a,#60,#01,#02,#b8,#60
	db #03,#02,#88,#60,#01,#02,#49,#02
	db #b8,#60,#03,#02,#88,#60,#01,#02
	db #49,#02,#b8,#60,#05,#02,#88,#60
	db #01,#00,#c2,#e7,#00,#00,#01,#02
	db #c2,#49,#02,#b8,#47,#02,#42,#09
	db #02,#ba,#47,#02,#ba,#49,#02,#b0
	db #47,#02,#42,#09,#00,#6c,#e0,#00
	db #00,#06,#0e,#2d,#0e,#2d,#0e,#2d
	db #0e,#2d,#0e,#2d,#0e,#2d,#0e,#2d
	db #0e,#2d,#06,#2d,#06,#2d,#06,#2d
	db #06,#2d,#06,#2d,#06,#2d,#06,#2d
	db #06,#2d,#02,#2d,#02,#2d,#02,#2d
	db #02,#2d,#02,#2d,#02,#2d,#02,#2d
	db #02,#2d,#2d,#2d,#2d,#2d,#2d,#2d
	db #2d,#2d,#2d,#2d,#2d,#2d,#2d,#2d
	db #2d,#b4,#e1,#00,#00,#01,#06,#b4
	db #47,#02,#b8,#41,#06,#b8,#47,#02
	db #ba,#41,#06,#c2,#40,#06,#c2,#47
	db #02,#be,#41,#06,#be,#47,#02,#b8
	db #41,#06,#b4,#40,#16,#b4,#60,#02
	db #02,#42,#00,#12,#c4,#60,#01,#02
	db #be,#40,#02,#ba,#40,#06,#b8,#40
	db #06,#b8,#47,#02,#ba,#41,#06,#ba
	db #47,#02,#be,#41,#06,#c4,#40,#06
	db #c4,#47,#02,#c2,#41,#06,#c2,#47
	db #02,#be,#41,#06,#ba,#40,#06,#ba
	db #47,#02,#be,#41,#06,#be,#47,#02
	db #c2,#41,#06,#b8,#40,#06,#b8,#47
	db #02,#ba,#41,#06,#ba,#47,#02,#be
	db #41,#00,#6c,#e0,#00,#00,#06,#06
	db #2d,#06,#2d,#02,#2d,#02,#2d,#02
	db #2d,#2d,#c2,#e7,#00,#00,#01,#02
	db #42,#09,#02,#b8,#47,#02,#b8,#49
	db #02,#ba,#47,#02,#42,#09,#02,#b0
	db #47,#02,#b0,#49,#00,#b8,#e0,#00
	db #00,#03,#06,#42,#00,#00,#6c,#e1
	db #00,#00,#06,#06,#6c,#60,#02,#00
	db #b8,#e1,#00,#00,#01,#06,#42,#00
	db #00,#84,#e0,#00,#00,#09,#06,#42
	db #00,#06,#5d,#0e,#33,#0e,#3d,#0e
	db #3b,#3e,#45,#0e,#5d,#0e,#33,#0e
	db #3d,#0e,#3b,#2e,#b4,#60,#0a,#0a
	db #e4,#60,#09,#00,#84,#e0,#00,#00
	db #09,#02,#84,#60,#01,#02,#6c,#60
	db #09,#02,#84,#60,#01,#02,#9c,#60
	db #09,#02,#84,#60,#01,#02,#84,#60
	db #09,#02,#84,#60,#01,#02,#72,#60
	db #09,#02,#84,#60,#01,#02,#5a,#60
	db #09,#02,#84,#60,#01,#02,#7c,#60
	db #09,#02,#84,#60,#01,#02,#7c,#60
	db #09,#02,#84,#60,#01,#02,#7a,#60
	db #09,#02,#84,#60,#01,#02,#62,#60
	db #09,#02,#84,#60,#01,#02,#7a,#60
	db #09,#02,#84,#60,#01,#02,#62,#60
	db #09,#02,#84,#60,#01,#02,#7a,#60
	db #09,#02,#84,#60,#01,#02,#62,#60
	db #09,#02,#84,#60,#01,#02,#7a,#60
	db #09,#02,#84,#60,#01,#02,#62,#60
	db #09,#02,#84,#60,#01,#02,#84,#60
	db #09,#02,#84,#60,#01,#02,#6c,#60
	db #09,#02,#84,#60,#01,#02,#9c,#60
	db #09,#02,#84,#60,#01,#02,#84,#60
	db #09,#02,#84,#60,#01,#02,#72,#60
	db #09,#02,#84,#60,#01,#02,#5a,#60
	db #09,#02,#84,#60,#01,#02,#7c,#60
	db #09,#02,#84,#60,#01,#02,#7c,#60
	db #09,#02,#84,#60,#01,#02,#7a,#60
	db #09,#02,#84,#60,#01,#02,#62,#60
	db #09,#02,#84,#60,#01,#02,#7a,#60
	db #09,#02,#84,#60,#01,#02,#62,#60
	db #09,#02,#84,#60,#01,#02,#7a,#60
	db #09,#02,#84,#60,#01,#02,#92,#60
	db #09,#02,#84,#60,#01,#02,#7a,#60
	db #09,#02,#84,#60,#01,#02,#92,#60
	db #09,#02,#84,#60,#01,#00,#6c,#e5
	db #00,#00,#0b,#0a,#2d,#02,#6c,#61
	db #01,#2e,#7a,#65,#0b,#0a,#3b,#02
	db #7a,#61,#01,#2e,#9c,#65,#0b,#0a
	db #5d,#02,#9c,#61,#01,#2e,#aa,#65
	db #0b,#0a,#6b,#02,#aa,#61,#01,#0e
	db #e4,#6d,#0b,#02,#e4,#4b,#02,#e4
	db #49,#02,#e4,#47,#02,#e4,#45,#02
	db #e4,#43,#02,#e4,#41,#02,#e4,#60
	db #0c,#00,#9c,#e0,#00,#00,#02,#0e
	db #b4,#60,#0a,#0a,#b4,#60,#09,#00
	db #cc,#e9,#00,#00,#0b,#42,#00,#08
	db #8d,#42,#00,#8d,#42,#00,#0c,#42
	db #00,#42,#00,#0c,#84,#60,#0a,#45
	db #0c,#cc,#60,#0b,#0a,#8d,#02,#8d
	db #1e,#a5,#04,#a5,#04,#a5,#02,#8d
	db #42,#00,#08,#8d,#42,#00,#8d,#42
	db #00,#0c,#42,#00,#42,#00,#0c,#84
	db #60,#0a,#45,#0c,#cc,#60,#0b,#0a
	db #8d,#02,#8d,#1e,#a5,#02,#a5,#02
	db #a5,#02,#cc,#60,#0c,#00,#42,#80
	db #00,#00,#00,#e4,#ed,#00,#00,#0b
	db #02,#e4,#4b,#02,#e4,#49,#02,#e4
	db #47,#02,#e4,#45,#02,#e4,#43,#02
	db #e4,#41,#02,#e4,#60,#0c,#00,#42
	db #80,#00,#00
;
;	#6c54
;	ld de,#8000
;	call #7000
;
.init_music		; added by Megachur
;
	ld de,l8000
	jp real_init_music
;
.music_info
	db "Lab Escape (2013)(Public Domain)(EgoTrip)",0
	db "StArkos",0

	read "music_end.asm"
