; Music of Average Tune (2006)(Phantasy)(Factor 6)(StArkos)
; Ripped by Megachur the 27/12/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "AVERAGET.BIN"
	ENDIF

music_date_rip_day		equ 27
music_date_rip_month	equ 12
music_date_rip_year		equ 2014
music_adr				equ &9000

	read "music_header.asm"

	jp l988b
	jp l900d
	jp l9866
.l900c equ $ + 3
.l900b equ $ + 2
	db #00,#90,#00,#00
;
.play_music
.l900d
;
	xor a
	ld (l900b),a
	ld (l9844),a
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
.l901e equ $ + 1
	ld a,#00
.l9020 equ $ + 1
	cp #00
	jr z,l902a
	inc a
	ld (l901e),a
	jp l92b9
.l902a
	xor a
	ld (l901e),a
.l902e
	or a
	jp nc,l9110
	ld (l9138),a
	ld (l91a3),a
	ld (l920e),a
	ld a,#b7
	ld (l902e),a
.l9041 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l9077
.l9047 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l9074
	ld b,a
	and #1f
	bit 4,a
	jr z,l9058
	or #e0
.l9058
	ld (l9145),a
	rl b
	rl b
	jr nc,l9066
	ld a,(hl)
	ld (l91b0),a
	inc hl
.l9066
	rl b
	jr nc,l906f
	ld a,(hl)
	ld (l921b),a
	inc hl
.l906f
	ld (l9047),hl
	jr l907a
.l9074
	ld (l9047),hl
.l9077
	ld (l9041),a
.l907b equ $ + 1
.l907a
	ld a,#00
	sub #01
	jr c,l9087
	ld (l907b),a
.l9084 equ $ + 1
	ld a,#00
	jr l90a2
.l9088 equ $ + 1
.l9087
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l9095
	ld (l9088),hl
	jr l90a2
.l9095
	ld (l9084),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l9088),hl
	ld (l907b),a
	ld a,b
.l90a2
	ld (l9279),a
.l90a6 equ $ + 1
	ld hl,#0000
	ld de,l913e
	ldi
	ldi
	ld de,l91a9
	ldi
	ldi
	ld de,l9214
	ldi
	ldi
	ld (l90a6),hl
.l90c1 equ $ + 1
	ld a,#00
	or a
	jr nz,l90d3
.l90c6 equ $ + 1
	ld a,#00
	sub #01
	jr c,l90e1
	ld (l90c6),a
.l90cf equ $ + 1
	ld hl,#0000
	jr l9119
.l90d4 equ $ + 1
.l90d3
	ld a,#00
	sub #01
	jr c,l90e1
	ld (l90d4),a
	ld hl,(l90e2)
	jr l9106
.l90e2 equ $ + 1
.l90e1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr c,l90fe
	ld (l90c6),a
	xor a
	ld (l90c1),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l90e2),hl
	ex de,hl
	ld (l90cf),hl
	jr l9119
.l90fe
	ld (l90d4),a
	ld a,#01
	ld (l90c1),a
.l9106
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l90e2),hl
	ex de,hl
	jr l9119
.l9111 equ $ + 1
.l9110
	ld a,#00
	sub #01
	jr nc,l9134
.l9117 equ $ + 1
	ld hl,#0000
.l9119
	ld a,(hl)
	inc hl
	srl a
	jr c,l9131
	srl a
	jr c,l9128
	ld (l9020),a
	jr l9130
.l9128
	ld (l900b),a
.l912c equ $ + 1
	ld a,#01
	ld (l900c),a
.l9130
	xor a
.l9131
	ld (l9117),hl
.l9134
	ld (l9111),a
.l9138 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l919f
.l913e equ $ + 1
	ld hl,#0000
.l9141 equ $ + 1
	ld bc,#0100
.l9145 equ $ + 2
.l9144 equ $ + 1
	ld de,#0000
.l9148 equ $ + 2
	ld lx,#00
	call l93b6
	ld a,lx
	ld (l9148),a
	ld (l92c3),hl
	exx
	ld (l913e),hl
	ld a,c
	ld (l9141),a
	ld (l92bd),a
	xor a
	or hy
	jr nz,l919d
	ld (l92e0),a
	ld d,a
	ld a,e
	ld (l9144),a
	ld l,d
	ld h,l
	ld (l92c0),hl
.l9172 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l92f1
	ldi
	ldi
	ld de,l92e9
	ldi
	ldi
	ld de,l92e2
	ldi
	ld de,l92f3
	ldi
	ld a,(hl)
	inc hl
	ld (l92d2),hl
	ld hl,l9844
	or (hl)
	ld (hl),a
.l919d
	ld a,ly
.l919f
	ld (l9138),a
.l91a3 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l920a
.l91a9 equ $ + 1
	ld hl,#0000
.l91ac equ $ + 1
	ld bc,#0200
.l91b0 equ $ + 2
.l91af equ $ + 1
	ld de,#0000
.l91b3 equ $ + 2
	ld lx,#00
	call l93b6
	ld a,lx
	ld (l91b3),a
	ld (l9314),hl
	exx
	ld (l91a9),hl
	ld a,c
	ld (l91ac),a
	ld (l930e),a
	xor a
	or hy
	jr nz,l9208
	ld (l9331),a
	ld d,a
	ld a,e
	ld (l91af),a
	ld l,d
	ld h,l
	ld (l9311),hl
.l91dd equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l9342
	ldi
	ldi
	ld de,l933a
	ldi
	ldi
	ld de,l9333
	ldi
	ld de,l9344
	ldi
	ld a,(hl)
	inc hl
	ld (l9323),hl
	ld hl,l9844
	or (hl)
	ld (hl),a
.l9208
	ld a,ly
.l920a
	ld (l91a3),a
.l920e equ $ + 1
	ld a,#00
	sub #01
	jr nc,l9275
.l9214 equ $ + 1
	ld hl,#0000
.l9217 equ $ + 1
	ld bc,#0300
.l921b equ $ + 2
.l921a equ $ + 1
	ld de,#0000
.l921e equ $ + 2
	ld lx,#00
	call l93b6
	ld a,lx
	ld (l921e),a
	ld (l9365),hl
	exx
	ld (l9214),hl
	ld a,c
	ld (l9217),a
	ld (l935f),a
	xor a
	or hy
	jr nz,l9273
	ld (l9382),a
	ld d,a
	ld a,e
	ld (l921a),a
	ld l,d
	ld h,l
	ld (l9362),hl
.l9248 equ $ + 1
	ld hl,#0000
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l9393
	ldi
	ldi
	ld de,l938b
	ldi
	ldi
	ld de,l9384
	ldi
	ld de,l9395
	ldi
	ld a,(hl)
	inc hl
	ld (l9374),hl
	ld hl,l9844
	or (hl)
	ld (hl),a
.l9273
	ld a,ly
.l9275
	ld (l920e),a
.l9279 equ $ + 1
	ld a,#00
	sub #01
	jr c,l9283
	ld (l9279),a
	jr l92b9
.l9283
	ld a,#37
	ld (l902e),a
	ld hl,(l90a6)
.l928c equ $ + 1
	ld de,#0000
	xor a
	sbc hl,de
	jr nz,l92b9
	ld (l9041),a
	ld (l907b),a
	ld (l9111),a
.l929d equ $ + 1
	ld hl,#0000
	ld (l9047),hl
.l92a3 equ $ + 1
	ld hl,#0000
	ld (l9088),hl
.l92a9 equ $ + 1
	ld hl,#0000
	ld (l90a6),hl
.l92af equ $ + 1
	ld hl,#0000
	ld (l90e2),hl
.l92b5 equ $ + 1
	ld a,#00
	ld (l90c1),a
.l92b9
	ld hl,l9844
.l92bd equ $ + 1
	ld d,#00
	exx
.l92c0 equ $ + 1
	ld hl,#0000
.l92c3 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l92c0),hl
	ld (l94f1),hl
	ld a,(l9148)
	ld lx,a
.l92d2 equ $ + 1
	ld hl,#0000
	ld iy,l96df
	ld a,(l92e0)
	call l944b
	ex de,hl
.l92e0 equ $ + 1
	ld a,#00
.l92e2 equ $ + 1
	cp #00
	jr z,l92e8
	inc a
	jr l9305
.l92e9 equ $ + 1
.l92e8
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l9301
.l92f1 equ $ + 1
	ld de,#0000
.l92f3
	or a
	jr c,l9301
.l92f7 equ $ + 1
	ld hl,#0000
	ld (l92e9),hl
	dec a
	ld (l92e2),a
	inc a
.l9301
	ld (l92d2),de
.l9305
	ld (l92e0),a
	ld a,hx
	ld (l93b2),a
.l930e equ $ + 1
	ld d,#00
	exx
.l9311 equ $ + 1
	ld hl,#0000
.l9314 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9311),hl
	ld (l94f1),hl
	ld a,(l91b3)
	ld lx,a
.l9323 equ $ + 1
	ld hl,#0000
	ld iy,l9730
	ld a,(l9331)
	call l944b
	ex de,hl
.l9331 equ $ + 1
	ld a,#00
.l9333 equ $ + 1
	cp #00
	jr z,l9339
	inc a
	jr l9356
.l933a equ $ + 1
.l9339
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l9352
.l9342 equ $ + 1
	ld de,#0000
.l9344
	or a
	jr c,l9352
.l9348 equ $ + 1
	ld hl,#0000
	ld (l933a),hl
	dec a
	ld (l9333),a
	inc a
.l9352
	ld (l9323),de
.l9356
	ld (l9331),a
	ld a,hx
	ld (l93af),a
.l935f equ $ + 1
	ld d,#00
	exx
.l9362 equ $ + 1
	ld hl,#0000
.l9365 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9362),hl
	ld (l94f1),hl
	ld a,(l921e)
	ld lx,a
.l9374 equ $ + 1
	ld hl,#0000
	ld iy,l9781
	ld a,(l9382)
	call l944b
	ex de,hl
.l9382 equ $ + 1
	ld a,#00
.l9384 equ $ + 1
	cp #00
	jr z,l938a
	inc a
	jr l93a7
.l938b equ $ + 1
.l938a
	ld hl,#0000
	xor a
	sbc hl,de
	jr nz,l93a3
.l9393 equ $ + 1
	ld de,#0000
.l9395
	or a
	jr c,l93a3
.l9399 equ $ + 1
	ld hl,#0000
	ld (l938b),hl
	dec a
	ld (l9384),a
	inc a
.l93a3
	ld (l9374),de
.l93a7
	ld (l9382),a
	ld a,hx
	sla a
.l93af equ $ + 1
	or #00
	rla
.l93b2 equ $ + 1
	or #00
	jp l96d4
.l93b6
	ld a,(hl)
	inc hl
	srl a
	jr c,l93ef
	cp #60
	jr nc,l93f7
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l93cf
	and #0f
	ld c,a
.l93cf
	rl b
	jr nc,l93d5
	ld e,(hl)
	inc hl
.l93d5
	rl b
	jr nc,l93e7
.l93d9
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l93e3
	dec h
.l93e3
	ld ly,#00
	ret
.l93e7
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l93ef
	ld hy,#00
	add d
	ld lx,a
	jr l93e7
.l93f7
	ld hy,#01
	sub #60
	jr z,l9418
	dec a
	jr z,l942f
	dec a
	jr z,l9421
	dec a
	jr z,l93d9
	dec a
	jr z,l942b
	dec a
	jr z,l9440
	dec a
	jr z,l9437
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l9418
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l9421
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l942b
	ld c,(hl)
	inc hl
	jr l93d9
.l942f
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l9437
	ld a,(hl)
	inc hl
	ld (l900b),a
	ld a,b
	ld (l900c),a
.l9440
	ld iy,#0100
	ld e,#00
	exx
	ld hl,#0000
	ret
.l944b
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l9501
	bit 4,e
	jr z,l94b3
	ld a,(hl)
	bit 6,a
	jr z,l9480
	ld d,#08
	inc hl
	and #1f
	jr z,l9467
	ld (l97d2),a
	res 3,d
.l9467
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l9470
	xor a
.l9470
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l9480
	ld (l97d2),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l949c
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l9495
	xor a
.l9495
	ld (iy+#36),a
	ld hx,d
	jr l94c6
.l949c
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l94a5
	xor a
.l94a5
	ld (iy+#36),a
.l94a8
	ld hx,d
	ret
.l94ab
	ld (iy+#36),#00
	ld d,#09
	jr l94a8
.l94b3
	ld d,#08
	ld a,e
	and #0f
	jr z,l94ab
	exx
	sub d
	exx
	jr nc,l9495
	xor a
	ld (iy+#36),a
	ld hx,#08
.l94c6
	bit 5,e
	jr z,l94ce
	ld a,(hl)
	inc hl
	jr l94cf
.l94ce
	xor a
.l94cf
	bit 6,e
	jr z,l94d9
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l94dc
.l94d9
	ld de,#0000
.l94dc
	add lx
	cp #60
	jr c,l94e4
	ld a,#60
.l94e4
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l9614
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l94f1 equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l9501
	or a
	jr nz,l950b
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l950b
	ld a,e
	or #08
	and #09
	ld d,a
	ld (iy+#36),#10
	ld b,(hl)
	inc hl
	ld a,b
	and #03
	add a
	add #08
	ld (l983d),a
	bit 3,e
	jr z,l952d
	ld a,(hl)
	inc hl
	ld (l97d2),a
	res 3,d
	jr l952d
.l952d
	ld hx,d
	xor a
	bit 7,b
	jr z,l953f
	bit 6,b
	jr z,l953a
	ld a,(hl)
	inc hl
.l953a
	ld (l95ee),a
	ld a,#01
.l953f
	ld (l9587),a
	ld a,b
	rra
	and #0e
	ld (l9598),a
	bit 4,e
	jp nz,l95f9
	bit 1,e
	jr z,l9556
	ld a,(hl)
	inc hl
	jr l9557
.l9556
	xor a
.l9557
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l9564
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l9567
.l9564
	ld de,#0000
.l9567
	add lx
	cp #60
	jr c,l956f
	ld a,#60
.l956f
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l9614
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l94f1)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l9587 equ $ + 1
	ld a,#00
	or a
	jr nz,l9597
	ex af,af'
	bit 5,a
	jr nz,l9602
.l9590
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l9598 equ $ + 1
.l9597
	ld e,#00
	ld a,e
	srl a
	add e
	ld (l95a2),a
	ld a,c
.l95a2 equ $ + 1
	jr l95a3
.l95a3
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	srl b
	rra
	ld c,a
	jr nc,l95bc
	inc bc
.l95bc
	ld a,c
	ld (l9807),a
	ld a,b
	ld (l9822),a
	ld a,(l9587)
	or a
	jr z,l95f7
	ld a,(l9598)
	ld e,a
	srl a
	add e
	ld (l95d6),a
	ld a,b
.l95d6 equ $ + 1
	jr l95d7
.l95d7
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	sla c
	rla
	ld b,a
.l95ee equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l95f7
	pop hl
	ret
.l95f9
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l9590
.l9602
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l9807),a
	inc hl
	ld a,(hl)
	ld (l9822),a
	inc hl
	ret
.l9614
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
.l96d4
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l96df equ $ + 1
	ld a,#00
.l96e1 equ $ + 1
	cp #00
	jr z,l96f9
	ld d,#00
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l96e1),a
	exx
.l96fa equ $ + 1
.l96f9
	ld a,#00
.l96fc equ $ + 1
	cp #00
	jr z,l9714
	ld d,#01
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l96fc),a
	exx
.l9715 equ $ + 1
.l9714
	ld a,#00
.l9717 equ $ + 1
	cp #00
	jr z,l972f
	ld d,#08
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l9717),a
	exx
.l9730 equ $ + 1
.l972f
	ld a,#00
.l9732 equ $ + 1
	cp #00
	jr z,l974a
	ld d,#02
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l9732),a
	exx
.l974b equ $ + 1
.l974a
	ld a,#00
.l974d equ $ + 1
	cp #00
	jr z,l9765
	ld d,#03
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l974d),a
	exx
.l9766 equ $ + 1
.l9765
	ld a,#00
.l9768 equ $ + 1
	cp #00
	jr z,l9780
	ld d,#09
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l9768),a
	exx
.l9781 equ $ + 1
.l9780
	ld a,#00
.l9783 equ $ + 1
	cp #00
	jr z,l979b
	ld d,#04
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l9783),a
	exx
.l979c equ $ + 1
.l979b
	ld a,#00
.l979e equ $ + 1
	cp #00
	jr z,l97b6
	ld d,#05
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l979e),a
	exx
.l97b7 equ $ + 1
.l97b6
	ld a,#00
.l97b9 equ $ + 1
	cp #00
	jr z,l97d1
	ld d,#0a
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l97b9),a
	exx
.l97d2 equ $ + 1
.l97d1
	ld a,#00
.l97d4 equ $ + 1
	cp #00
	jr z,l97ec
	ld d,#06
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l97d4),a
	exx
.l97ec
	ld a,h
.l97ee equ $ + 1
	cp #c0
	jr z,l9806
	ld d,#07
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l97ee),a
	exx
.l9807 equ $ + 1
.l9806
	ld a,#00
.l9809 equ $ + 1
	cp #00
	jr z,l9821
	ld d,#0b
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l9809),a
	exx
.l9822 equ $ + 1
.l9821
	ld a,#00
.l9824 equ $ + 1
	cp #00
	jr z,l983c
	ld d,#0c
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l9824),a
	exx
.l983d equ $ + 1
.l983c
	ld a,#00
.l983f equ $ + 1
	cp #ff
	jr nz,l9849
	ld h,a
.l9844 equ $ + 1
	ld a,#00
	or a
	jr z,l985d
	ld a,h
.l9849
	ld d,#0d
	out (c),d
	exx
	out (c),c
	db #ed,#71 ; out (c),0
	exx
	out (c),a
	exx
	out (c),e
	db #ed,#71 ; out (c),0
	ld (l983f),a
.l985d
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
	ret
;
.stop_music
.l9866
;
	di
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l9715),a
	ld (l9766),a
	ld (l97b7),a
	dec a
	ld (l9717),a
	ld (l9768),a
	ld (l97b9),a
	ld (l97ee),a
	ld a,#3f
	jp l96d4
;
.real_init_music
.l988b
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l912c),a
	ld de,#0003
	add hl,de
	ld de,l9088
	ldi
	ldi
	ld de,l90a6
	ldi
	ldi
	ld de,l90e2
	ldi
	ldi
	ld de,l9172
	ldi
	ldi
	ld de,l929d
	ldi
	ldi
	ld de,l92a3
	ldi
	ldi
	ld de,l92a9
	ldi
	ldi
	ld de,l92af
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l9020),a
	ld (l901e),a
	ld (l9047),hl
	ld hl,(l90e2)
	ld (l928c),hl
	ld a,(hl)
	and #01
	ld (l90c1),a
	ld hl,(l92af)
	ld a,(hl)
	and #01
	ld (l92b5),a
	ld hl,(l9172)
	ld (l91dd),hl
	ld (l9248),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l92d2),hl
	ld (l9323),hl
	ld (l9374),hl
	ld (l92f1),hl
	ld (l9342),hl
	ld (l9393),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l92f7),de
	ld (l9348),de
	ld (l9399),de
	ld (l92e9),de
	ld (l933a),de
	ld (l938b),de
	ld a,#37
	ld (l902e),a
	ld hl,l9947
.l9937
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l993e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l993e
	jr l9937
.l9947
	jr l9949
.l9949
	dw l96df,l96fa,l9730,l974b
	dw l9781,l979c,l97d2,l9715
	dw l9766,l97b7,l9807,l9822
	dw l983d,l9041,l907b,l90c6
	dw l90d4,l9111,l92e0,l9331
	dw l9382,l9141,l91ac,l9217
	dw #ff11,l96e1,l96fc,l9732
	dw l974d,l9783,l979e,l97d4
	dw l97ee,l9717,l9768,l97b9
	dw l9809,l9824,l983f,l92e2
	dw l9333,l9384,#b703,l92f3
	dw l9344,l9395
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
.music_data
	db #53,#4b,#31,#30,#00
	db #a0,#01,#32,#00,#22,#a0,#24,#a0
	db #90,#a0,#93,#a0,#1a,#a0,#22,#a0
	db #24,#a0,#90,#a0,#05,#c0,#00,#00
	db #11,#c4,#02,#02,#0d,#7f,#11,#98
	db #a1,#e8,#a1,#2a,#a2,#98,#a1,#e8
	db #a1,#2e,#a2,#98,#a1,#6e,#a2,#02
	db #a3,#98,#a1,#6e,#a2,#02,#a3,#98
	db #a3,#6e,#a2,#02,#a3,#b0,#a3,#6e
	db #a2,#02,#a3,#98,#a1,#6e,#a2,#02
	db #a3,#98,#a1,#6e,#a2,#02,#a3,#2a
	db #a2,#e8,#a1,#02,#a3,#2a,#a2,#e8
	db #a1,#02,#a3,#98,#a1,#6e,#a2,#02
	db #a3,#98,#a1,#6e,#a2,#02,#a3,#98
	db #a3,#6e,#a2,#2e,#a2,#b0,#a3,#6e
	db #a2,#2e,#a2,#98,#a3,#6e,#a2,#02
	db #a3,#b0,#a3,#6e,#a2,#02,#a3,#2a
	db #a2,#98,#a1,#2e,#a2,#2a,#a2,#98
	db #a1,#2e,#a2,#22,#e2,#a3,#ab,#a0
	db #b5,#a0,#c4,#a0,#d1,#a0,#dc,#a0
	db #e4,#a0,#f5,#a0,#06,#a1,#1c,#a1
	db #41,#a1,#4d,#a1,#5f,#a1,#b2,#a0
	db #b5,#a0,#ff,#37,#00,#00,#00,#00
	db #b2,#a0,#c4,#a0,#00,#b7,#00,#2f
	db #0c,#0d,#2b,#0c,#08,#23,#0c,#b2
	db #a0,#d1,#a0,#00,#b7,#00,#08,#07
	db #06,#05,#04,#03,#da,#a0,#dc,#a0
	db #00,#37,#00,#1f,#24,#80,#0c,#e3
	db #a0,#e4,#a0,#00,#37,#00,#00,#f0
	db #a0,#f5,#a0,#00,#37,#00,#0f,#2e
	db #04,#2a,#07,#08,#28,#04,#28,#07
	db #01,#a1,#06,#a1,#00,#37,#00,#0f
	db #2e,#05,#2a,#09,#08,#28,#05,#28
	db #09,#1a,#a1,#1c,#a1,#00,#37,#00
	db #3e,#21,#10,#2f,#0c,#2f,#08,#2d
	db #f0,#2a,#ec,#24,#e8,#80,#0c,#b2
	db #a0,#41,#a1,#00,#b7,#00,#3f,#23
	db #10,#0f,#2f,#fe,#3e,#23,#f0,#3d
	db #23,#ef,#3b,#23,#ee,#39,#23,#ed
	db #37,#23,#ec,#35,#23,#eb,#33,#23
	db #ea,#31,#23,#e9,#4c,#a1,#4d,#a1
	db #00,#37,#00,#2f,#0c,#2f,#0c,#0f
	db #5a,#a1,#5f,#a1,#00,#37,#00,#1f
	db #21,#2e,#04,#2d,#07,#0d,#2d,#04
	db #2d,#07,#72,#a1,#98,#a1,#00,#37
	db #00,#0f,#0e,#0d,#0d,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#4c,#ff,#ff
	db #4c,#ff,#ff,#4c,#fe,#ff,#4c,#fe
	db #ff,#4c,#ff,#ff,#4c,#ff,#ff,#0c
	db #0c,#4c,#01,#00,#4c,#01,#00,#4c
	db #02,#00,#4c,#02,#00,#4c,#01,#00
	db #4c,#01,#00,#86,#80,#01,#7f,#83
	db #79,#86,#80,#02,#7f,#83,#79,#87
	db #7f,#83,#79,#7f,#83,#7f,#79,#86
	db #80,#01,#7f,#83,#79,#86,#80,#02
	db #7f,#83,#79,#87,#7f,#83,#79,#7f
	db #83,#7f,#79,#86,#80,#01,#7f,#83
	db #79,#86,#80,#02,#7f,#83,#79,#87
	db #7f,#83,#79,#7f,#83,#87,#8d,#90
	db #80,#01,#87,#8d,#83,#87,#7f,#83
	db #79,#86,#80,#02,#7f,#83,#79,#7f
	db #83,#7f,#7d,#30,#80,#03,#ce,#49
	db #ce,#31,#49,#ce,#31,#49,#ce,#31
	db #49,#ce,#31,#49,#31,#37,#ce,#4f
	db #ce,#37,#4f,#ce,#37,#4f,#ce,#37
	db #4f,#ce,#37,#4f,#37,#3b,#ce,#53
	db #ce,#3b,#53,#ce,#3b,#53,#ce,#3b
	db #53,#ce,#3b,#53,#3b,#41,#ce,#59
	db #ce,#41,#59,#ce,#41,#3f,#57,#ce
	db #3f,#ce,#57,#3b,#37,#48,#80,#04
	db #c2,#78,#80,#05,#d0,#79,#ce,#79
	db #79,#ce,#79,#79,#ce,#79,#ce,#79
	db #79,#ce,#7f,#d0,#7f,#ce,#7f,#7f
	db #d0,#7f,#ce,#7f,#ce,#7f,#7f,#7f
	db #83,#d0,#83,#ce,#83,#83,#d0,#83
	db #ce,#83,#ce,#83,#83,#ce,#7e,#80
	db #06,#d0,#7f,#ce,#7f,#7f,#ce,#83
	db #83,#ce,#7e,#80,#05,#ce,#7f,#7f
	db #c2,#30,#80,#07,#ce,#48,#80,#03
	db #ce,#60,#80,#08,#48,#80,#03,#ce
	db #30,#80,#07,#48,#80,#03,#ce,#30
	db #80,#07,#48,#80,#03,#60,#80,#08
	db #30,#80,#03,#49,#31,#30,#80,#07
	db #ce,#4e,#80,#03,#ce,#60,#80,#08
	db #4e,#80,#03,#ce,#30,#80,#07,#4e
	db #80,#03,#ce,#30,#80,#07,#4e,#80
	db #03,#ce,#60,#80,#08,#4e,#80,#03
	db #60,#80,#08,#30,#80,#07,#ce,#52
	db #80,#03,#ce,#60,#80,#08,#52,#80
	db #03,#ce,#30,#80,#07,#52,#80,#03
	db #ce,#30,#80,#07,#52,#80,#03,#60
	db #80,#08,#3a,#80,#03,#53,#3b,#30
	db #80,#07,#ce,#58,#80,#03,#ce,#60
	db #80,#08,#58,#80,#03,#ce,#30,#80
	db #07,#3e,#80,#03,#57,#30,#80,#07
	db #3e,#80,#03,#60,#80,#08,#56,#80
	db #03,#60,#80,#08,#61,#30,#80,#09
	db #ce,#60,#80,#0a,#60,#80,#04,#60
	db #80,#0a,#ce,#60,#80,#04,#60,#80
	db #0a,#60,#80,#04,#60,#80,#0a,#60
	db #80,#04,#60,#80,#0a,#61,#60,#80
	db #04,#60,#80,#0a,#ce,#36,#80,#09
	db #ce,#4f,#ce,#66,#80,#0a,#60,#80
	db #04,#ce,#66,#80,#0a,#60,#80,#04
	db #66,#80,#0a,#60,#80,#04,#ce,#66
	db #80,#0a,#60,#80,#04,#6a,#80,#0a
	db #ce,#3a,#80,#09,#ce,#53,#ce,#6a
	db #80,#0a,#60,#80,#04,#ce,#6a,#80
	db #0a,#60,#80,#04,#6a,#80,#0a,#60
	db #80,#04,#6a,#80,#0a,#6b,#60,#80
	db #04,#6a,#80,#0a,#ce,#40,#80,#09
	db #ce,#59,#60,#80,#04,#70,#80,#0a
	db #60,#80,#04,#ce,#74,#80,#0a,#60
	db #80,#04,#74,#80,#0a,#60,#80,#04
	db #74,#80,#0a,#60,#80,#04,#ce,#74
	db #80,#0a,#79,#86,#80,#0b,#e2,#8b
	db #d2,#8d,#e2,#87,#d2,#87,#83,#7f
	db #87,#83,#da,#83,#d2,#87,#da,#8d
	db #d2,#91,#c2,#90,#80,#0b,#e2,#8d
	db #d2,#87,#e2,#83,#ce,#7f,#ce,#83
	db #82,#80,#02,#86,#80,#0b,#82,#80
	db #02,#8a,#80,#0b,#86,#80,#02,#86
	db #80,#0b,#8a,#80,#02,#82,#80,#0b
	db #de,#7f,#d2,#83,#d2,#7f,#82,#80
	db #02,#7c,#80,#0b,#c2,#ff,#00
;
.init_music		; added by Megachur
;
	ld de,music_data
	jp real_init_music
;
.music_info
	db "Average Tune (2006)(Phantasy)(Factor 6)",0
	db "StArkos",0

	read "music_end.asm"
