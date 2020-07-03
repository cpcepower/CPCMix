; Music of This Musicdisk Is About 20% Cooler - A (Epyteor)(2012)(SuTeKH)(StarkOs)
; Ripped by Megachur the 20/02/2015
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "THMIA2CA.BIN"
	ENDIF

music_date_rip_day		equ 20
music_date_rip_month	equ 02
music_date_rip_year		equ 2015
music_adr				equ &8300

	read "music_header.asm"

	jp l8b72
	jp l830d
	jp l8b56
.l830c equ $ + 3
.l830b equ $ + 2
	db #00,#83,#00,#00
;
.play_music
.l830d
;
	xor a
	ld (l830b),a
	ld (l8b3d),a
.l8315 equ $ + 1
	ld a,#03
.l8317 equ $ + 1
	cp #05
	jr z,l8321
	inc a
	ld (l8315),a
	jp l85b0
.l8321
	xor a
	ld (l8315),a
.l8325
	or a
	jp nc,l8407
	ld (l842f),a
	ld (l849a),a
	ld (l8505),a
	ld a,#b7
	ld (l8325),a
.l8338 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l836e
.l833e equ $ + 1
	ld hl,l8cad
	ld a,(hl)
	inc hl
	srl a
	jr c,l836b
	ld b,a
	and #1f
	bit 4,a
	jr z,l834f
	or #e0
.l834f
	ld (l843c),a
	rl b
	rl b
	jr nc,l835d
	ld a,(hl)
	ld (l84a7),a
	inc hl
.l835d
	rl b
	jr nc,l8366
	ld a,(hl)
	ld (l8512),a
	inc hl
.l8366
	ld (l833e),hl
	jr l8371
.l836b
	ld (l833e),hl
.l836e
	ld (l8338),a
.l8372 equ $ + 1
.l8371
	ld a,#04
	sub #01
	jr c,l837e
	ld (l8372),a
.l837b equ $ + 1
	ld a,#3f
	jr l8399
.l837f equ $ + 1
.l837e
	ld hl,l8cb0
	ld a,(hl)
	inc hl
	srl a
	jr c,l838c
	ld (l837f),hl
	jr l8399
.l838c
	ld (l837b),a
	ld b,a
	ld a,(hl)
	inc hl
	ld (l837f),hl
	ld (l8372),a
	ld a,b
.l8399
	ld (l8570),a
.l839d equ $ + 1
	ld hl,l8cb6
	ld de,l8435
	ldi
	ldi
	ld de,l84a0
	ldi
	ldi
	ld de,l850b
	ldi
	ldi
	ld (l839d),hl
.l83b8 equ $ + 1
	ld a,#00
	or a
	jr nz,l83ca
.l83bd equ $ + 1
	ld a,#03
	sub #01
	jr c,l83d8
	ld (l83bd),a
.l83c6 equ $ + 1
	ld hl,l8fe7
	jr l8410
.l83cb equ $ + 1
.l83ca
	ld a,#00
	sub #01
	jr c,l83d8
	ld (l83cb),a
	ld hl,(l83d9)
	jr l83fd
.l83d9 equ $ + 1
.l83d8
	ld hl,l8cd1
	ld a,(hl)
	inc hl
	srl a
	jr c,l83f5
	ld (l83bd),a
	xor a
	ld (l83b8),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l83d9),hl
	ex de,hl
	ld (l83c6),hl
	jr l8410
.l83f5
	ld (l83cb),a
	ld a,#01
	ld (l83b8),a
.l83fd
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l83d9),hl
	ex de,hl
	jr l8410
.l8408 equ $ + 1
.l8407
	ld a,#6c
	sub #01
	jr nc,l842b
.l840e equ $ + 1
	ld hl,l8fe9
.l8410
	ld a,(hl)
	inc hl
	srl a
	jr c,l8428
	srl a
	jr c,l841f
	ld (l8317),a
	jr l8427
.l841f
	ld (l830b),a
.l8423 equ $ + 1
	ld a,#01
	ld (l830c),a
.l8427
	xor a
.l8428
	ld (l840e),hl
.l842b
	ld (l8408),a
.l842f equ $ + 1
	ld a,#00
	sub #01
	jr nc,l8496
.l8435 equ $ + 1
	ld hl,l8e05
.l8438 equ $ + 1
	ld bc,#0100
.l843c equ $ + 2
.l843b equ $ + 1
	ld de,#0001
.l843f equ $ + 2
	ld lx,#3b
	call l86af
	ld a,lx
	ld (l843f),a
	ld (l85ba),hl
	exx
	ld (l8435),hl
	ld a,c
	ld (l8438),a
	ld (l85b4),a
	xor a
	or hy
	jr nz,l8494
	ld (l85d7),a
	ld d,a
	ld a,e
	ld (l843b),a
	ld l,d
	ld h,l
	ld (l85b7),hl
.l8469 equ $ + 1
	ld hl,l8cd4
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l85e8
	ldi
	ldi
	ld de,l85e0
	ldi
	ldi
	ld de,l85d9
	ldi
	ld de,l85ea
	ldi
	ld a,(hl)
	inc hl
	ld (l85c9),hl
	ld hl,l8b3d
	or (hl)
	ld (hl),a
.l8494
	ld a,ly
.l8496
	ld (l842f),a
.l849a equ $ + 1
	ld a,#00
	sub #01
	jr nc,l8501
.l84a0 equ $ + 1
	ld hl,l8e58
.l84a3 equ $ + 1
	ld bc,#0200
.l84a7 equ $ + 2
.l84a6 equ $ + 1
	ld de,#0003
.l84aa equ $ + 2
	ld lx,#24
	call l86af
	ld a,lx
	ld (l84aa),a
	ld (l860c),hl
	exx
	ld (l84a0),hl
	ld a,c
	ld (l84a3),a
	ld (l8606),a
	xor a
	or hy
	jr nz,l84ff
	ld (l8629),a
	ld d,a
	ld a,e
	ld (l84a6),a
	ld l,d
	ld h,l
	ld (l8609),hl
.l84d4 equ $ + 1
	ld hl,l8cd4
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l863a
	ldi
	ldi
	ld de,l8632
	ldi
	ldi
	ld de,l862b
	ldi
	ld de,l863c
	ldi
	ld a,(hl)
	inc hl
	ld (l861b),hl
	ld hl,l8b3d
	or (hl)
	ld (hl),a
.l84ff
	ld a,ly
.l8501
	ld (l849a),a
.l8505 equ $ + 1
	ld a,#00
	sub #01
	jr nc,l856c
.l850b equ $ + 1
	ld hl,l8ec6
.l850e equ $ + 1
	ld bc,#0300
.l8512 equ $ + 2
.l8511 equ $ + 1
	ld de,#0000
.l8515 equ $ + 2
	ld lx,#32
	call l86af
	ld a,lx
	ld (l8515),a
	ld (l865e),hl
	exx
	ld (l850b),hl
	ld a,c
	ld (l850e),a
	ld (l8658),a
	xor a
	or hy
	jr nz,l856a
	ld (l867b),a
	ld d,a
	ld a,e
	ld (l8511),a
	ld l,d
	ld h,l
	ld (l865b),hl
.l853f equ $ + 1
	ld hl,l8cd4
	ex de,hl
	add hl,hl
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,l868c
	ldi
	ldi
	ld de,l8684
	ldi
	ldi
	ld de,l867d
	ldi
	ld de,l868e
	ldi
	ld a,(hl)
	inc hl
	ld (l866d),hl
	ld hl,l8b3d
	or (hl)
	ld (hl),a
.l856a
	ld a,ly
.l856c
	ld (l8505),a
.l8570 equ $ + 1
	ld a,#2a
	sub #01
	jr c,l857a
	ld (l8570),a
	jr l85b0
.l857a
	ld a,#37
	ld (l8325),a
	ld hl,(l839d)
.l8583 equ $ + 1
	ld de,l8cce
	xor a
	sbc hl,de
	jr nz,l85b0
	ld (l8338),a
	ld (l8372),a
	ld (l8408),a
.l8594 equ $ + 1
	ld hl,l8caa
	ld (l833e),hl
.l859a equ $ + 1
	ld hl,l8cae
	ld (l837f),hl
.l85a0 equ $ + 1
	ld hl,l8cb0
	ld (l839d),hl
.l85a6 equ $ + 1
	ld hl,l8cce
	ld (l83d9),hl
.l85ac equ $ + 1
	ld a,#00
	ld (l83b8),a
.l85b0
	ld hl,l8b3d
.l85b4 equ $ + 1
	ld d,#00
	exx
.l85b7 equ $ + 1
	ld hl,#0000
.l85ba equ $ + 1
	ld de,#0000
	add hl,de
	ld (l85b7),hl
	ld (l87ea),hl
	ld a,(l843f)
	ld lx,a
.l85c9 equ $ + 1
	ld hl,l8d05
	ld iy,l89d8
	ld a,(l85d7)
	call l8744
	ex de,hl
.l85d7 equ $ + 1
	ld a,#00
.l85d9 equ $ + 1
	cp #00
	jr z,l85df
	inc a
	jr l85fc
.l85e0 equ $ + 1
.l85df
	ld hl,l8d09
	xor a
	sbc hl,de
	jr nz,l85f8
.l85e8 equ $ + 1
	ld de,l8cf3
.l85ea
	or a
	jr c,l85f8
.l85ee equ $ + 1
	ld hl,l8cf6
	ld (l85e0),hl
	dec a
	ld (l85d9),a
	inc a
.l85f8
	ld (l85c9),de
.l85fc
	ld (l85d7),a
	ld a,hx
	ld (l86ab),a
	exx
.l8606 equ $ + 1
	ld d,#00
	exx
.l8609 equ $ + 1
	ld hl,#0000
.l860c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8609),hl
	ld (l87ea),hl
	ld a,(l84aa)
	ld lx,a
.l861b equ $ + 1
	ld hl,l8cf3
	ld iy,l8a29
	ld a,(l8629)
	call l8744
	ex de,hl
.l8629 equ $ + 1
	ld a,#00
.l862b equ $ + 1
	cp #ff
	jr z,l8631
	inc a
	jr l864e
.l8632 equ $ + 1
.l8631
	ld hl,l8cf6
	xor a
	sbc hl,de
	jr nz,l864a
.l863a equ $ + 1
	ld de,l8cf3
.l863c
	or a
	jr c,l864a
.l8640 equ $ + 1
	ld hl,l8cf6
	ld (l8632),hl
	dec a
	ld (l862b),a
	inc a
.l864a
	ld (l861b),de
.l864e
	ld (l8629),a
	ld a,hx
	ld (l86a8),a
	exx
.l8658 equ $ + 1
	ld d,#00
	exx
.l865b equ $ + 1
	ld hl,#0000
.l865e equ $ + 1
	ld de,#0000
	add hl,de
	ld (l865b),hl
	ld (l87ea),hl
	ld a,(l8515)
	ld lx,a
.l866d equ $ + 1
	ld hl,l8cf3
	ld iy,l8a7a
	ld a,(l867b)
	call l8744
	ex de,hl
.l867b equ $ + 1
	ld a,#04
.l867d equ $ + 1
	cp #ff
	jr z,l8683
	inc a
	jr l86a0
.l8684 equ $ + 1
.l8683
	ld hl,l8cf6
	xor a
	sbc hl,de
	jr nz,l869c
.l868c equ $ + 1
	ld de,l8cf3
.l868e
	scf
	jr c,l869c
.l8692 equ $ + 1
	ld hl,l8cf6
	ld (l8684),hl
	dec a
	ld (l867d),a
	inc a
.l869c
	ld (l866d),de
.l86a0
	ld (l867b),a
	ld a,hx
	sla a
.l86a8 equ $ + 1
	or #00
	rla
.l86ab equ $ + 1
	or #08
	jp l89cd
.l86af
	ld a,(hl)
	inc hl
	srl a
	jr c,l86e8
	cp #60
	jr nc,l86f0
	ld hy,#00
	add d
	ld lx,a
	ld b,(hl)
	inc hl
	ld a,b
	rra
	jr nc,l86c8
	and #0f
	ld c,a
.l86c8
	rl b
	jr nc,l86ce
	ld e,(hl)
	inc hl
.l86ce
	rl b
	jr nc,l86e0
.l86d2
	ld a,(hl)
	inc hl
	exx
	ld l,a
	ld h,#00
	rla
	jr nc,l86dc
	dec h
.l86dc
	ld ly,#00
	ret
.l86e0
	exx
	ld hl,#0000
	ld ly,#00
	ret
.l86e8
	ld hy,#00
	add d
	ld lx,a
	jr l86e0
.l86f0
	ld hy,#01
	sub #60
	jr z,l8711
	dec a
	jr z,l8728
	dec a
	jr z,l871a
	dec a
	jr z,l86d2
	dec a
	jr z,l8724
	dec a
	jr z,l8739
	dec a
	jr z,l8730
	dec a
	exx
	ld ly,a
	ld hl,#0000
	ret
.l8711
	ld a,(hl)
	inc hl
	exx
	ld ly,a
	ld hl,#0000
	ret
.l871a
	ld c,(hl)
	inc hl
	exx
	ld ly,#00
	ld hl,#0000
	ret
.l8724
	ld c,(hl)
	inc hl
	jr l86d2
.l8728
	ld ly,#ff
	exx
	ld hl,#0000
	ret
.l8730
	ld a,(hl)
	inc hl
	ld (l830b),a
	ld a,b
	ld (l830c),a
.l8739
	ld iy,#0000
	ld e,#00
	exx
	ld hl,#0000
	ret
.l8744
	ld e,(hl)
	inc hl
	bit 7,e
	jp nz,l87fa
	bit 4,e
	jr z,l87ac
	ld a,(hl)
	bit 6,a
	jr z,l8779
	ld d,#08
	inc hl
	and #1f
	jr z,l8760
	ld (l8acb),a
	res 3,d
.l8760
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l8769
	xor a
.l8769
	ld (iy+#36),a
	ld hx,d
	ld a,(hl)
	ld (iy+#00),a
	inc hl
	ld a,(hl)
	ld (iy+#1b),a
	inc hl
	ret
.l8779
	ld (l8acb),a
	inc hl
	ld d,#01
	bit 5,a
	jr z,l8795
	res 0,d
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l878e
	xor a
.l878e
	ld (iy+#36),a
	ld hx,d
	jr l87bf
.l8795
	ld a,e
	and #0f
	exx
	sub d
	exx
	jr nc,l879e
	xor a
.l879e
	ld (iy+#36),a
.l87a1
	ld hx,d
	ret
.l87a4
	ld (iy+#36),#00
	ld d,#09
	jr l87a1
.l87ac
	ld d,#08
	ld a,e
	and #0f
	jr z,l87a4
	exx
	sub d
	exx
	jr nc,l87b9
	xor a
.l87b9
	ld (iy+#36),a
	ld hx,#08
.l87bf
	bit 5,e
	jr z,l87c7
	ld a,(hl)
	inc hl
	jr l87c8
.l87c7
	xor a
.l87c8
	bit 6,e
	jr z,l87d2
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l87d5
.l87d2
	ld de,#0000
.l87d5
	add lx
	cp #60
	jr c,l87dd
	ld a,#5f
.l87dd
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l890d
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
.l87ea equ $ + 1
	ld hl,#0000
	sra h
	rr l
	add hl,bc
	add hl,de
	ld (iy+#00),l
	ld (iy+#1b),h
	pop hl
	ret
.l87fa
	or a
	jr nz,l8804
	ld a,e
	exx
	and #40
	or (hl)
	ld (hl),a
	exx
.l8804
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
	ld (l8b36),a
	bit 3,e
	jr z,l8826
	ld a,(hl)
	inc hl
	ld (l8acb),a
	res 3,d
	jr l8826
.l8826
	ld hx,d
	xor a
	bit 7,b
	jr z,l8838
	bit 6,b
	jr z,l8833
	ld a,(hl)
	inc hl
.l8833
	ld (l88e7),a
	ld a,#01
.l8838
	ld (l8880),a
	ld a,b
	rra
	and #0e
	ld (l8891),a
	bit 4,e
	jp nz,l88f2
	bit 1,e
	jr z,l884f
	ld a,(hl)
	inc hl
	jr l8850
.l884f
	xor a
.l8850
	ex af,af'
	ld a,e
	ex af,af'
	bit 2,e
	jr z,l885d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	jr l8860
.l885d
	ld de,#0000
.l8860
	add lx
	cp #60
	jr c,l8868
	ld a,#5f
.l8868
	push hl
	add a
	ld l,a
	ld h,#00
	ld bc,l890d
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l87ea)
	sra h
	rr l
	add hl,bc
	add hl,de
	ld c,l
	ld b,h
.l8880 equ $ + 1
	ld a,#00
	or a
	jr nz,l8890
	ex af,af'
	bit 5,a
	jr nz,l88fb
.l8889
	ld a,c
	ld (iy+#00),c
	ld (iy+#1b),b
.l8891 equ $ + 1
.l8890
	ld e,#0a
	ld a,e
	srl a
	add e
	ld (l889b),a
	ld a,c
.l889b equ $ + 1
	jr l88ab
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
.l88ab
	srl b
	rra
	srl b
	rra
	ld c,a
	jr nc,l88b5
	inc bc
.l88b5
	ld a,c
	ld (l8b00),a
	ld a,b
	ld (l8b1b),a
	ld a,(l8880)
	or a
	jr z,l88f0
	ld a,(l8891)
	ld e,a
	srl a
	add e
	ld (l88cf),a
	ld a,b
.l88cf equ $ + 1
	jr l88d0
.l88d0
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
.l88e7 equ $ + 1
	ld hl,#0000
	add hl,bc
	ld (iy+#00),l
	ld (iy+#1b),h
.l88f0
	pop hl
	ret
.l88f2
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	push hl
	bit 5,e
	jr z,l8889
.l88fb
	pop hl
	ld (iy+#00),c
	ld (iy+#1b),b
	ld a,(hl)
	ld (l8b00),a
	inc hl
	ld a,(hl)
	ld (l8b1b),a
	inc hl
	ret
.l890d
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
.l89cd
	ld h,a
	ld b,#f4
	exx
	ld bc,#f6c0
	ld e,#80
	exx
.l89d8 equ $ + 1
	ld a,#71
.l89da equ $ + 1
	cp #71
	jr z,l89f2
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
	ld (l89da),a
	exx
.l89f3 equ $ + 1
.l89f2
	ld a,#00
.l89f5 equ $ + 1
	cp #00
	jr z,l8a0d
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
	ld (l89f5),a
	exx
.l8a0e equ $ + 1
.l8a0d
	ld a,#00
.l8a10 equ $ + 1
	cp #00
	jr z,l8a28
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
	ld (l8a10),a
	exx
.l8a29 equ $ + 1
.l8a28
	ld a,#1c
.l8a2b equ $ + 1
	cp #1c
	jr z,l8a43
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
	ld (l8a2b),a
	exx
.l8a44 equ $ + 1
.l8a43
	ld a,#01
.l8a46 equ $ + 1
	cp #01
	jr z,l8a5e
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
	ld (l8a46),a
	exx
.l8a5f equ $ + 1
.l8a5e
	ld a,#00
.l8a61 equ $ + 1
	cp #00
	jr z,l8a79
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
	ld (l8a61),a
	exx
.l8a7a equ $ + 1
.l8a79
	ld a,#bd
.l8a7c equ $ + 1
	cp #bd
	jr z,l8a94
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
	ld (l8a7c),a
	exx
.l8a95 equ $ + 1
.l8a94
	ld a,#00
.l8a97 equ $ + 1
	cp #00
	jr z,l8aaf
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
	ld (l8a97),a
	exx
.l8ab0 equ $ + 1
.l8aaf
	ld a,#00
.l8ab2 equ $ + 1
	cp #00
	jr z,l8aca
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
	ld (l8ab2),a
	exx
.l8acb equ $ + 1
.l8aca
	ld a,#05
.l8acd equ $ + 1
	cp #05
	jr z,l8ae5
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
	ld (l8acd),a
	exx
.l8ae5
	ld a,h
.l8ae7 equ $ + 1
	cp #3f
	jr z,l8aff
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
	ld (l8ae7),a
	exx
.l8b00 equ $ + 1
.l8aff
	ld a,#24
.l8b02 equ $ + 1
	cp #24
	jr z,l8b1a
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
	ld (l8b02),a
	exx
.l8b1b equ $ + 1
.l8b1a
	ld a,#00
.l8b1d equ $ + 1
	cp #00
	jr z,l8b35
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
	ld (l8b1d),a
	exx
.l8b36 equ $ + 1
.l8b35
	ld a,#0c
.l8b38 equ $ + 1
	cp #0c
	jr nz,l8b41
	ld h,a
.l8b3d equ $ + 1
	ld a,#00
	or a
	ret z
	ld a,h
.l8b41
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
	ld (l8b38),a
	ret
;
.stop_music
.l8b56
;
	xor a
	ld (l8a0e),a
	ld (l8a5f),a
	ld (l8ab0),a
	dec a
	ld (l8a10),a
	ld (l8a61),a
	ld (l8ab2),a
	ld (l8ae7),a
	ld a,#3f
	jp l89cd
;
.real_init_music
.l8b72
;
	ld hl,#0006
	add hl,de
	ld a,(hl)
	ld (l8423),a
	ld de,#0003
	add hl,de
	ld de,l837f
	ldi
	ldi
	ld de,l839d
	ldi
	ldi
	ld de,l83d9
	ldi
	ldi
	ld de,l8469
	ldi
	ldi
	ld de,l8594
	ldi
	ldi
	ld de,l859a
	ldi
	ldi
	ld de,l85a0
	ldi
	ldi
	ld de,l85a6
	ldi
	ldi
	ld a,(hl)
	inc hl
	ld (l8317),a
	ld (l8315),a
	ld (l833e),hl
	ld hl,(l83d9)
	ld (l8583),hl
	ld a,(hl)
	and #01
	ld (l83b8),a
	ld hl,(l85a6)
	ld a,(hl)
	and #01
	ld (l85ac),a
	ld hl,(l8469)
	ld (l84d4),hl
	ld (l853f),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld bc,#0007
	add hl,bc
	ld (l85c9),hl
	ld (l861b),hl
	ld (l866d),hl
	ld (l85e8),hl
	ld (l863a),hl
	ld (l868c),hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l85ee),de
	ld (l8640),de
	ld (l8692),de
	ld (l85e0),de
	ld (l8632),de
	ld (l8684),de
	ld a,#37
	ld (l8325),a
	ld hl,l8c2e
.l8c1e
	ld a,(hl)
	or a
	ret z
	ld b,a
	inc hl
	ld a,(hl)
	inc hl
.l8c25
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (de),a
	djnz l8c25
	jr l8c1e
.l8c2e
	jr l8c30
.l8c30
	dw l89d8,l89f3,l8a29,l8a44
	dw l8a7a,l8a95,l8acb,l8a0e
	dw l8a5f,l8ab0,l8b00,l8b1b
	dw l8b36,l8338,l8372,l83bd
	dw l83cb,l8408,l85d7,l8629
	dw l867b,l8438,l84a3,l850e
	dw #ff11,l89da,l89f5,l8a2b
	dw l8a46,l8a7c,l8a97,l8acd
	dw l8ae7,l8a10,l8a61,l8ab2
	dw l8b02,l8b1d,l8b38,l85d9
	dw l862b,l867d,#b703,l85ea
	dw l863c,l868e,#0000,#0000
.l8c90
	db #53,#4b,#31,#30,#90,#8c,#01,#32
	db #00,#ae,#8c,#b0,#8c,#ce,#8c,#d4
	db #8c,#aa,#8c,#ae,#8c,#b0,#8c,#ce
.l8cae equ $ + 6
.l8cad equ $ + 5
.l8caa equ $ + 2
	db #8c,#05,#c0,#00,#00,#07,#7f,#04
.l8cb6 equ $ + 6
.l8cb0
	db #ee,#8d,#30,#8e,#a4,#8e,#ee,#8d
	db #30,#8e,#ef,#8e,#ee,#8d,#30,#8e
	db #a4,#8e,#ee,#8d,#30,#8e,#ef,#8e
.l8cce equ $ + 6
	db #37,#8f,#7d,#8f,#e5,#8f,#06,#e7
.l8cd4 equ $ + 4
.l8cd1 equ $ + 1
	db #8f,#01,#e9,#8f,#ec,#8c,#f6,#8c
	db #09,#8d,#28,#8d,#3f,#8d,#59,#8d
	db #70,#8d,#8f,#8d,#aa,#8d,#c9,#8d
	db #db,#8d,#e4,#8d,#f3,#8c,#f6,#8c
.l8cf6 equ $ + 6
.l8cf3 equ $ + 3
	db #ff,#37,#00,#00,#00,#00,#f3,#8c
	db #09,#8d,#00,#b7,#00,#2c,#02,#2c
.l8d05 equ $ + 5
	db #02,#2b,#02,#2a,#02,#29,#02,#27
.l8d09 equ $ + 1
	db #02,#25,#8d,#28,#8d,#00,#37,#00
	db #1d,#05,#82,#16,#02,#82,#16,#02
	db #82,#16,#02,#82,#16,#02,#82,#16
	db #02,#8a,#16,#05,#02,#82,#16,#02
	db #f3,#8c,#3f,#8d,#00,#b7,#00,#1f
	db #6b,#ef,#00,#1f,#69,#e1,#00,#1e
	db #67,#be,#00,#1d,#65,#1c,#01,#56
	db #8d,#59,#8d,#00,#37,#00,#1f,#6b
	db #ef,#00,#1f,#69,#e1,#00,#1e,#67
	db #be,#00,#1d,#65,#1c,#01,#82,#16
	db #02,#60,#8d,#70,#8d,#00,#37,#00
	db #6f,#02,#ff,#ff,#6f,#02,#ff,#ff
	db #6f,#02,#01,#00,#6f,#02,#01,#00
	db #f3,#8c,#8f,#8d,#00,#b7,#00,#6f
	db #02,#ff,#ff,#6f,#03,#ff,#ff,#6f
	db #04,#01,#00,#6f,#04,#01,#00,#6f
	db #04,#ff,#ff,#6f,#04,#ff,#ff,#f3
	db #8c,#aa,#8d,#00,#b7,#00,#6f,#02
	db #ff,#ff,#6f,#01,#ff,#ff,#4f,#01
	db #00,#4f,#01,#00,#4f,#ff,#ff,#4f
	db #ff,#ff,#f3,#8c,#c9,#8d,#00,#b7
	db #00,#6f,#02,#ff,#ff,#6f,#02,#ff
	db #ff,#6f,#03,#01,#00,#6f,#03,#01
	db #00,#6f,#03,#ff,#ff,#6f,#03,#ff
	db #ff,#f3,#8c,#db,#8d,#00,#b7,#00
	db #2f,#02,#2f,#01,#0f,#2f,#ff,#2f
	db #fe,#2f,#fd,#e2,#8d,#e4,#8d,#00
	db #37,#00,#29,#02,#eb,#8d,#ee,#8d
	db #00,#37,#00,#82,#14,#02,#78,#80
	db #01,#81,#87,#79,#81,#87,#79,#81
	db #79,#81,#87,#79,#81,#87,#79,#81
.l8e05 equ $ + 5
	db #6f,#77,#7d,#6f,#77,#7d,#6f,#77
	db #6f,#77,#7d,#6f,#77,#7d,#6f,#77
	db #6b,#73,#79,#6b,#73,#79,#6b,#73
	db #6b,#73,#79,#6b,#73,#79,#6b,#73
	db #6f,#77,#7d,#6f,#77,#7d,#6f,#77
	db #6f,#77,#7d,#6f,#77,#7d,#6f,#77
	db #60,#80,#02,#ca,#78,#80,#02,#ce
	db #48,#80,#03,#ca,#60,#80,#02,#d0
	db #ca,#60,#80,#02,#ca,#60,#80,#04
	db #ca,#48,#80,#02,#ca,#56,#80,#02
	db #ca,#6e,#80,#02,#ce,#48,#80,#03
.l8e58
	db #ca,#56,#80,#02,#d0,#ca,#56,#80
	db #02,#ca,#6e,#80,#04,#ca,#56,#80
	db #02,#ca,#52,#80,#02,#ca,#6a,#80
	db #02,#ce,#48,#80,#03,#ca,#52,#80
	db #02,#d0,#ca,#52,#80,#02,#ca,#6a
	db #80,#04,#ca,#52,#80,#02,#ca,#56
	db #80,#02,#ca,#6e,#80,#02,#ce,#48
	db #80,#03,#ca,#56,#80,#02,#d0,#ca
	db #56,#80,#02,#ca,#6e,#80,#04,#ca
	db #56,#80,#04,#ca,#60,#80,#05,#d0
	db #ca,#60,#80,#05,#ca,#60,#80,#05
	db #d0,#ca,#60,#80,#05,#ca,#60,#80
	db #06,#ca,#60,#80,#05,#ca,#60,#80
.l8ec6 equ $ + 6
	db #06,#64,#80,#05,#d0,#ca,#d6,#56
	db #80,#05,#ca,#56,#80,#06,#ca,#5e
	db #80,#05,#ca,#5e,#80,#07,#5a,#80
	db #05,#d0,#ca,#d6,#56,#80,#05,#5b
	db #5f,#ca,#5e,#80,#08,#ca,#60,#80
	db #06,#64,#80,#05,#d0,#ca,#c2,#60
	db #80,#05,#d0,#ca,#6e,#80,#05,#ca
	db #68,#80,#05,#d0,#ca,#64,#80,#05
	db #ca,#64,#80,#07,#ca,#64,#80,#05
	db #ca,#64,#80,#05,#d2,#ca,#d6,#56
	db #80,#05,#ca,#56,#80,#06,#ca,#5e
	db #80,#05,#ca,#5e,#80,#09,#52,#80
	db #05,#d0,#ca,#d6,#56,#80,#05,#5b
	db #5f,#ca,#5e,#80,#08,#ca,#60,#80
	db #06,#64,#80,#05,#d0,#ca,#c2,#78
	db #80,#01,#81,#87,#79,#81,#87,#79
	db #81,#79,#81,#87,#79,#81,#87,#79
	db #81,#6f,#77,#7d,#6f,#77,#7d,#6f
	db #77,#6f,#77,#7d,#6f,#77,#7d,#6f
	db #77,#6b,#73,#79,#6b,#73,#79,#6b
	db #73,#6b,#73,#79,#6b,#73,#79,#6b
	db #73,#6f,#77,#7d,#6f,#77,#7d,#6f
	db #77,#6f,#77,#7d,#6f,#77,#7d,#7c
	db #c0,#0a,#10,#c6,#10,#60,#80,#0b
	db #ca,#78,#80,#0b,#d0,#ca,#60,#80
	db #0b,#d0,#ca,#60,#80,#0b,#ca,#78
	db #80,#0b,#ca,#48,#80,#0b,#ca,#56
	db #80,#0b,#ca,#6e,#80,#0b,#d0,#ca
	db #56,#80,#0b,#d0,#ca,#56,#80,#0b
	db #ca,#6e,#80,#0b,#ca,#56,#80,#0b
	db #ca,#52,#80,#0b,#ca,#6a,#80,#0b
	db #d0,#ca,#52,#80,#0b,#d0,#ca,#52
	db #80,#0b,#ca,#6a,#80,#0b,#ca,#52
	db #80,#0b,#ca,#56,#80,#0b,#ca,#6e
	db #80,#0b,#d0,#ca,#56,#80,#0b,#d0
	db #ca,#56,#80,#0b,#ca,#6e,#80,#0b
.l8fe7 equ $ + 7
	db #ce,#c6,#10,#c6,#10,#ca,#c2,#14
.l8fe9 equ $ + 1
	db #ff,#14,#7b,#38,#00,#00,#00
;
.init_music
;
;	org #8082
	ld de,l8c90
	jp real_init_music
;
.music_info
	db "This Musicdisk Is About 20% Cooler - A (Epyteor)(2012)(SuTeKH)",0
	db "StarkOs",0

	read "music_end.asm"
