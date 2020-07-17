; Music of Top Gun (1986)(Ocean Software)()()
; Ripped by Megachur the 01/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TOPGUN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #03dd
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

	db #01,#00,#6e
;
.music_end
.l03e0
;
	db #00

	jp l0426        ; play music
	ld l,(ix+#00)
	ld h,(ix+#01)
;
.real_init_music
;
	push hl
	ld hl,l0a57
	ld de,l0a58
	ld bc,#007d
	ld (hl),#00
	ldir
	pop hl
	ld (l09df),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld a,l
	ld (l0a6e),a
	ld a,h
	ld (l0a6f),a
	push hl
	add hl,de
	ld a,l
	ld (l0a98),a
	ld a,h
	ld (l0a99),a
	pop hl
	add hl,bc
	ld a,l
	ld (l0ac2),a
	ld a,h
	ld (l0ac3),a
	ld a,#01
	ld (l03e0),a
	ret
;
.play_music
.l0426
;
	ld a,(l03e0)
	or a
	ret z
	xor a
	ld (l09e2),a
	ld ix,l0a57
	call l044b
	ld a,#01
	ld (l09e2),a
	ld ix,l0a81
	call l044b
	ld a,#02
	ld (l09e2),a
	ld ix,l0aab
.l044b
	ld a,(ix+#00)
	or a
	jr z,l04c3
	dec (ix+#00)
	ld a,(ix+#08)
	or a
	jr z,l0460
	dec a
	ld (ix+#08),a
	jr l0475
.l0460
	ld a,(ix+#0a)
	or a
	jr z,l046c
	dec a
	ld (ix+#0a),a
	jr l0475
.l046c
	ld a,(ix+#09)
	ld (ix+#0a),a
	inc (ix+#0b)
.l0475
	ld a,(ix+#01)
	and #03
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l09ff
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	call l0522
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(ix+#11)
	add h
	ld h,a
	ld (ix+#0d),h
	ld a,(ix+#01)
	srl a
	srl a
	srl a
	and #07
	ld b,a
	call nz,l072b
	ld a,(ix+#01)
	rlca
	rlca
	and #03
	ld b,a
	call nz,l06ca
	call l06ee
	ld a,(ix+#02)
	and #03
	call nz,l0710
	call l0594
	call l0523
	ret
.l04c3
	ld a,(ix+#16)
	ld (ix+#24),a
	ld l,(ix+#17)
	ld h,(ix+#18)
	ld a,(hl)
	or a
	jp z,l077f
	bit 7,a
	jp nz,l0797
	cp #1a
	jp nc,l04f1
	push hl
	pop iy
	dec a
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l0a05
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	call l0522
.l04f1
	ld l,(ix+#17)
	ld h,(ix+#18)
	inc hl
	inc hl
	ld (ix+#17),l
	ld (ix+#18),h
	ld a,(l09e2)
	or a
	jp nz,l044b
	ld de,(l09df)
	push hl
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	inc hl
	inc hl
	add hl,de
	ex de,hl
	pop hl
	or a
	sbc hl,de
	jp c,l044b
	xor a
	ld (l03e0),a
;	jp #9159
	defs 2,0                ; modified by Megachur
	ret
.l0522
	jp (hl)
.l0523
	ld a,(ix+#28)
	bit 7,a
	ld c,#00
	jr z,l052e
	ld c,#ff
.l052e
	add l
	ld l,a
	ld a,h
	adc c
	ld h,a
	ld a,(l09e2)
	add a
	ld e,a
	ld c,l
	call lbd34
	ld a,e
	inc a
	ld c,h
	call lbd34
	ld a,(ix+#06)
	ld c,a
	ld a,(l09e2)
	add #08
	call lbd34
	bit 2,(ix+#02)
	jr z,l055c
	ld c,(ix+#20)
	ld a,#06
	call lbd34
.l055c
	bit 6,(ix+#02)
	jr z,l0588
	ld c,(ix+#21)
	ld a,#0b
	call lbd34
	ld c,(ix+#22)
	ld a,#0c
	call lbd34
	ld a,(ix+#02)
	and #03
	jr z,l0588
	ld a,(ix+#24)
	and #80
	jr nz,l0588
	ld c,(ix+#23)
	ld a,#0d
	call lbd34
.l0588
	ld a,(l09e1)
	or #80
	ld c,a
	ld a,#07
	call lbd34
	ret
.l0594
	call l05cd
	ld a,(ix+#24)
	and #80
	ret nz
	ld a,(ix+#0c)
	or (ix+#0d)
	call z,l063a
	bit 2,(ix+#02)
	call nz,l05eb
	bit 3,(ix+#02)
	call nz,l0654
	bit 4,(ix+#02)
	call nz,l063f
	bit 5,(ix+#02)
	jr z,l05c5
	ld (ix+#06),#10
.l05c5
	bit 6,(ix+#02)
	call nz,l060b
	ret
.l05cd
	ld a,(l09e2)
	ld d,#08
	ld e,#01
.l05d4
	or a
	jr z,l05de
	dec a
	rlc d
	rlc e
	jr l05d4
.l05de
	ld a,e
	xor #ff
	ld e,a
	ld a,(l09e1)
	and e
	or d
	ld (l09e1),a
	ret
.l05eb
	ld a,(ix+#0c)
	or (ix+#0d)
	ret z
	ld a,(l09e2)
	ld d,#08
.l05f7
	or a
	jr z,l05ff
	dec a
	rlc d
	jr l05f7
.l05ff
	ld a,d
	xor #ff
	ld d,a
	ld a,(l09e1)
	and d
	ld (l09e1),a
	ret
.l060b
	ld (ix+#21),l
	ld (ix+#22),h
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	srl (ix+#21)
	rr (ix+#22)
	ret
.l063a
	xor a
	ld (ix+#06),a
	ret
.l063f
	ld a,(l09e2)
	ld d,#01
.l0644
	or a
	jr z,l064c
	dec a
	rlc d
	jr l0644
.l064c
	ld a,(l09e1)
	or d
	ld (l09e1),a
	ret
.l0654
	push hl
	ld b,#06
.l0657
	srl h
	rr l
	djnz l0657
	ld a,l
	pop hl
	ld (ix+#20),a
	ret
.l0663
	dec (ix+#27)
	ret nz
	ld a,(ix+#25)
	ld (ix+#27),a
	ld a,(ix+#04)
	srl a
	srl a
	srl a
	srl a
	add (ix+#06)
	cp (ix+#03)
	jr c,l068a
	inc (ix+#01)
	ld a,(ix+#03)
	ld (ix+#27),#01
.l068a
	ld (ix+#06),a
	ret
.l068e
	dec (ix+#27)
	ret nz
	ld a,(ix+#26)
	ld (ix+#27),a
	ld a,(ix+#04)
	and #0f
	ld b,a
	ld c,(ix+#05)
	srl c
	srl c
	srl c
	srl c
	ld a,(ix+#03)
	cp c
	jr nc,l06b0
	ld c,a
.l06b0
	ld a,(ix+#06)
	sub b
	jr c,l06b9
	cp c
	jr nc,l06bd
.l06b9
	inc (ix+#01)
	ld a,c
.l06bd
	ld (ix+#06),a
.l06c0
	ret
.l06c1
	ld a,(ix+#01)
	xor #04
	ld (ix+#01),a
	ret
.l06ca
	ld a,(ix+#0a)
	or a
	call z,l06c1
	ld a,b
	cp #02
	jr nz,l06e1
	ld a,(ix+#01)
	and #04
	ret z
	srl h
	rr l
	ret
.l06e1
	ld a,(ix+#01)
	and #04
	ret z
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	ret
.l06ee
	ld a,(ix+#08)
	or a
	ret nz
	ld a,(ix+#0a)
	or a
	ret nz
	ld a,(ix+#0b)
	bit 0,a
	ret z
	and #03
	cp #02
	jr c,l070a
	ld a,(ix+#19)
	add l
	ld l,a
	ret
.l070a
	ld a,l
	sub (ix+#19)
	ld l,a
	ret
.l0710
	cp #01
	jr z,l0715
	ret
.l0715
	ld a,(ix+#24)
	and #7f
	jr nz,l0727
	ld a,(ix+#24)
	xor #80
	or (ix+#16)
	ld (ix+#24),a
.l0727
	dec (ix+#24)
	ret
.l072b
	ld a,(ix+#08)
	or a
	ret nz
	ld a,b
	cp #01
	jr z,l0750
	ld e,(ix+#10)
	ld d,#00
	cp #03
	jr nz,l0748
	ld a,e
	cpl
	add #01
	ld e,a
	ld a,d
	cpl
	adc #00
	ld d,a
.l0748
	add hl,de
	ld (ix+#0c),l
	ld (ix+#0d),h
	ret
.l0750
	push hl
	ld c,(ix+#10)
	ld b,#00
	ld e,(ix+#0e)
	ld d,(ix+#0f)
	or a
	sbc hl,de
	pop hl
	ret z
	jr c,l076f
	or a
	sbc hl,bc
	push hl
	or a
	sbc hl,de
	pop hl
	jr nc,l0778
	jr l0777
.l076f
	add hl,bc
	push hl
	or a
	sbc hl,de
	pop hl
	jr c,l0778
.l0777
	ex de,hl
.l0778
	ld (ix+#0c),l
	ld (ix+#0d),h
	ret
.l077f
	ld (ix+#0c),#00
	ld (ix+#0d),#00
.l0787
	inc hl
	ld a,(hl)
	cp #ff
	jp z,l0806
	ld (ix+#00),a
	call l0815
	jp l04f1
.l0797
	push hl
	res 7,a
	call l07ce
	add (ix+#15)
	ld b,#00
.l07a2
	cp #0c
	jr c,l07ab
	sub #0c
	inc b
	jr l07a2
.l07ab
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l09e3
	add hl,de
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld a,b
	or a
	jr z,l0787
.l07c1
	srl (ix+#0d)
	rr (ix+#0c)
	djnz l07c1
	jp l0787
.l07ce
	push af
	ld a,(ix+#29)
	or a
	jr z,l0804
	pop af
	push af
	add (ix+#29)
	ld b,#00
.l07dc
	cp #0c
	jr c,l07e5
	sub #0c
	inc b
	jr l07dc
.l07e5
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l09e3
	add hl,de
	ld a,(hl)
	ld (ix+#0e),a
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	ld a,b
	or a
	jr z,l0804
.l07fa
	srl (ix+#0f)
	rr (ix+#0e)
	djnz l07fa
.l0804
	pop af
	ret
.l0806
	ld a,(ix+#0c)
	ld (ix+#0e),a
	ld a,(ix+#0d)
	ld (ix+#0f),a
	jp l04f1
.l0815
	ld (ix+#06),#00
	ld a,(ix+#07)
	ld (ix+#08),a
	ld a,(ix+#01)
	and #fc
	ld (ix+#01),a
	ld (ix+#27),#01
	ret
.l082c
	ld a,(iy+#01)
	bit 7,a
	jr z,l0839
	and #0f
	ld (ix+#03),a
	ret
.l0839
	push ix
	and #0f
	ld ix,l0a57
	ld (ix+#03),a
	ld ix,l0a81
	ld (ix+#03),a
	ld ix,l0aab
	ld (ix+#03),a
	pop ix
	ret
	push hl
	push de
	push bc
	ld a,(iy+#01)
	srl a
	srl a
	srl a
	srl a
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l0a37
	add hl,de
	ld c,(hl)
	sla c
	sla c
	sla c
	sla c
	inc hl
	ld a,(hl)
	ld (ix+#25),a
	ld a,(iy+#01)
	and #0f
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l0a37
	add hl,de
	ld a,(hl)
	and #0f
	or c
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	ld (ix+#27),#01
	pop bc
	pop de
	pop hl
	ret
	ld a,(iy+#01)
	res 6,(ix+#02)
	bit 7,a
	jr z,l08ad
	set 6,(ix+#02)
	set 5,(ix+#02)
.l08ad
	res 7,a
	or a
	jr z,l08be
	set 2,(ix+#02)
	cp #20
	jr nc,l08c7
	ld (ix+#20),a
	ret
.l08be
	ld a,(ix+#02)
	and #03
	ld (ix+#02),a
	ret
.l08c7
	set 3,(ix+#02)
	cp #21
	ret c
	set 4,(ix+#02)
	bit 6,a
	ret z
	res 6,a
	res 4,a
	ld (ix+#20),a
	ret
	ret
	ld a,(iy+#01)
	or a
	jr z,l08f2
	ld (ix+#16),a
	ld a,(ix+#02)
	and #fc
	or #01
	ld (ix+#02),a
	ret
.l08f2
	ld a,(ix+#02)
	and #fc
	ld (ix+#02),a
	res 7,(ix+#24)
	ld (ix+#16),#00
	ret
	ld a,(iy+#01)
	ld (ix+#09),a
	ld (ix+#0a),a
	ret
	ret
	ld a,(iy+#01)
	and #03
	rrca
	rrca
	ld b,a
	ld a,(ix+#01)
	and #3f
	or b
	ld (ix+#01),a
	ret
	ld a,(iy+#01)
	ld (ix+#07),a
	ret
	ld a,(iy+#01)
	ld (ix+#05),a
	ret
	ld a,(iy+#01)
	xor #ff
	srl a
	srl a
	srl a
	srl a
	srl a
	srl a
	ld (ix+#19),a
	ret
	ld a,(iy+#01)
	ld (ix+#11),a
	ret
	ld a,(iy+#01)
	ld (ix+#10),a
	ret
	ret
	ld a,(iy+#01)
	and #07
	ld b,a
	sla b
	sla b
	sla b
	ld a,(ix+#01)
	and #c7
	or b
	ld (ix+#01),a
	ret
	ld a,(ix+#1c)
	or a
	jr nz,l0971
	ld a,(iy+#01)
.l0971
	dec a
	ld (ix+#1c),a
	ret z
	ld a,(ix+#1a)
	ld (ix+#17),a
	ld a,(ix+#1b)
	ld (ix+#18),a
	ret
	ld a,(ix+#17)
	ld (ix+#1a),a
	ld a,(ix+#18)
	ld (ix+#1b),a
	ret
	ld a,(ix+#1f)
	or a
	jr nz,l0999
	ld a,(iy+#01)
.l0999
	dec a
	ld (ix+#1f),a
	ret z
	ld a,(ix+#1d)
	ld (ix+#17),a
	ld a,(ix+#1e)
	ld (ix+#18),a
	ret
	ld a,(ix+#17)
	ld (ix+#1d),a
	ld a,(ix+#18)
	ld (ix+#1e),a
	ret
	ld a,(iy+#01)
	ld (ix+#15),a
	ret
	ld a,(iy+#01)
	ld (ix+#23),a
	ret
	ld a,(iy+#01)
	ld (ix+#28),a
	ret
	ret
	ld a,(iy+#01)
	add (ix+#15)
	ld (ix+#15),a
	ret
	ld a,(iy+#01)
	ld (ix+#29),a
	ret
.l09e3 equ $ + 4
.l09e2 equ $ + 3
.l09e1 equ $ + 2
.l09df
	db #00,#00,#00,#00,#dd,#0e,#07,#0e
	db #3e,#0d,#80,#0c,#cc,#0b,#23,#0b
	db #83,#0a,#ec,#09,#5d,#09,#d6,#08
	db #57,#08,#e0,#07,#44,#41,#54,#41
.l0a05 equ $ + 6
.l09ff
	dw l0663
	dw l068e
	dw l06c0
	dw l082c     ; à revoir adresses !!!
	db #55,#08,#9a,#08,#dd,#08,#de,#08
	db #03,#09,#0d,#09,#0e,#09,#20,#09
	db #27,#09,#2e,#09,#43,#09,#4a,#09
	db #51,#09,#52,#09,#68,#09,#83,#09
	db #90,#09,#ab,#09,#b8,#09,#bf,#09
	db #c6,#09,#cd,#09,#ce,#09,#d8,#09
.l0a37
	db #0f,#01,#0d,#01,#0b,#01,#09,#01
	db #07,#01,#05,#01,#03,#01,#02,#01
	db #01,#01,#01,#0a,#01,#1e,#01,#46
	db #01,#6e,#01,#b4,#01,#dc,#01,#ff
.l0a58 equ $ + 1
.l0a57
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0a6e equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0a6f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0a81 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0a99 equ $ + 2
.l0a98 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
	ld bc,l131f
	ld de,l03e0
	ld hl,#c000
	ldir
.l0aab
	ret
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0ac3 equ $ + 7
.l0ac2 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#f1
.l0ad6
	db #ce,#01,#32,#03,#01,#0e
	db #02,#1a,#0a,#19,#14,#04,#0b,#64
	db #11,#01,#96,#09,#98,#09,#9b,#09
	db #9d,#12,#9b,#12,#98,#24,#98,#1b
	db #98,#12,#10,#05,#96,#09,#98,#09
	db #9b,#09,#9d,#12,#9b,#12,#02,#17
	db #11,#01,#a4,#09,#a4,#09,#a7,#09
	db #ab,#09,#ae,#09,#ab,#09,#a9,#09
	db #a7,#09,#10,#08,#13,#01,#11,#01
	db #03,#00,#02,#18,#96,#12,#03,#21
	db #98,#09,#03,#00,#96,#09,#96,#12
	db #03,#21,#98,#12,#10,#02,#18,#02
	db #12,#02,#18,#fc,#11,#01,#03,#00
	db #96,#12,#03,#21,#98,#09,#03,#00
	db #96,#09,#96,#12,#03,#21,#98,#12
	db #10,#02,#11,#01,#03,#00,#94,#12
	db #03,#21,#98,#09,#03,#00,#94,#09
	db #94,#12,#03,#21,#98,#12,#10,#04
	db #03,#00,#02,#17,#11,#01,#a4,#09
	db #a4,#09,#a7,#09,#ab,#09,#ae,#09
	db #ab,#09,#a9,#09,#a7,#09,#10,#08
	db #13,#01,#11,#01,#03,#00,#02,#18
	db #96,#12,#03,#21,#98,#09,#03,#00
	db #96,#09,#96,#12,#03,#21,#98,#12
	db #10,#02,#18,#02,#12,#02,#18,#fc
	db #11,#01,#03,#00,#94,#12,#03,#21
	db #98,#09,#03,#00,#94,#09,#94,#12
	db #03,#21,#98,#12,#18,#02,#10,#02
	db #18,#fc,#11,#01,#03,#00,#94,#12
	db #03,#21,#98,#09,#03,#00,#94,#09
	db #94,#12,#03,#21,#98,#12,#10,#04
	db #14,#04,#13,#01,#11,#01,#03,#00
	db #9d,#12,#03,#21,#98,#09,#03,#00
	db #9d,#09,#9d,#12,#03,#21,#98,#12
	db #10,#02,#14,#02,#12,#02,#14,#04
	db #13,#01,#11,#01,#03,#00,#a0,#12
	db #03,#21,#98,#09,#03,#00,#a0,#09
	db #a0,#12,#03,#21,#98,#12,#10,#02
	db #14,#06,#12,#02,#14,#04,#13,#01
	db #11,#01,#03,#00,#98,#12,#03,#21
	db #98,#09,#03,#00,#98,#09,#98,#12
	db #03,#21,#98,#12,#10,#04,#14,#00
	db #12,#02,#14,#04,#03,#00,#98,#24
	db #98,#1b,#98,#12,#96,#09,#98,#09
	db #9b,#09,#9d,#12,#9b,#12,#01,#0c
	db #98,#24,#98,#1b,#98,#12,#96,#09
	db #98,#09,#9b,#09,#9d,#12,#9b,#12
	db #01,#0a,#98,#24,#98,#1b,#98,#12
	db #96,#09,#98,#09,#9b,#09,#9d,#12
	db #9b,#12,#01,#08,#98,#24,#98,#1b
	db #98,#12,#96,#09,#98,#09,#9b,#09
	db #9d,#12,#9b,#12,#01,#06,#98,#24
	db #98,#1b,#98,#12,#96,#09,#98,#09
	db #9b,#09,#9d,#12,#9b,#12,#01,#04
	db #98,#24,#98,#1b,#98,#12,#96,#09
	db #98,#09,#9b,#09,#9d,#12,#9b,#12
	db #01,#02,#98,#24,#98,#1b,#98,#12
	db #96,#09,#98,#09,#9b,#09,#9d,#12
	db #9b,#12,#00,#01,#01,#0e,#02,#29
	db #0a,#2c,#14,#0b,#08,#01,#19,#f9
	db #00,#3f,#11,#01,#a2,#09,#a4,#1b
	db #a4,#1b,#a4,#1b,#a4,#09,#a4,#09
	db #a4,#12,#a7,#12,#10,#02,#a2,#90
	db #11,#01,#a2,#09,#a4,#1b,#a4,#1b
	db #a4,#1b,#a4,#09,#a4,#09,#a4,#12
	db #a7,#12,#10,#02,#14,#04,#13,#01
	db #02,#19,#0b,#28,#08,#00,#bf,#09
	db #bf,#09,#bf,#09,#bf,#2d,#bf,#09
	db #bf,#09,#bf,#09,#bf,#09,#be,#12
	db #ba,#09,#bc,#99,#bf,#09,#bf,#09
	db #bf,#09,#bf,#1b,#bc,#12,#bf,#09
	db #bf,#09,#bf,#09,#bf,#09,#be,#12
	db #ba,#09,#bc,#99,#11,#01,#0b,#00
	db #c1,#24,#bf,#24,#be,#24,#ba,#24
	db #bc,#12,#ba,#09,#bc,#51,#00,#24
	db #10,#02,#11,#01,#a4,#04,#a7,#05
	db #18,#06,#10,#04,#14,#04,#11,#01
	db #a4,#04,#a7,#05,#18,#06,#10,#04
	db #14,#04,#11,#01,#a4,#04,#a7,#05
	db #18,#06,#10,#04,#14,#04,#11,#01
	db #a4,#04,#a7,#05,#18,#06,#10,#04
	db #14,#04,#12,#02,#bf,#12,#c1,#12
	db #c1,#12,#bc,#09,#bc,#12,#11,#00
	db #bc,#09,#10,#05,#bc,#12,#bf,#12
	db #c1,#12,#c1,#12,#bf,#09,#bc,#36
	db #bc,#09,#bc,#09,#bc,#09,#bf,#12
	db #c1,#12,#c1,#09,#bc,#12,#bc,#12
	db #11,#00,#bc,#09,#10,#05,#bc,#12
	db #c3,#24,#c1,#09,#bf,#12,#c3,#51
	db #0d,#28,#0f,#01,#19,#05,#c7,#63
	db #c2,#09,#c0,#09,#be,#09,#11,#01
	db #c1,#04,#c0,#05,#be,#09,#10,#02
	db #c1,#09,#c0,#09,#be,#12,#bb,#09
	db #bb,#51,#11,#01,#c0,#04,#c3,#05
	db #c5,#04,#c3,#05,#10,#09,#c0,#04
	db #be,#05,#bb,#04,#b9,#05,#b7,#04
	db #b4,#05,#b7,#04,#bb,#05,#be,#04
	db #c1,#05,#c3,#04,#c7,#05,#ca,#48
	db #02,#29,#0a,#2c,#14,#0b,#08,#01
	db #19,#f9,#0f,#00,#11,#01,#a2,#09
	db #a4,#1b,#a4,#1b,#a4,#1b,#a4,#09
	db #a4,#09,#a4,#12,#a7,#12,#10,#07
	db #11,#01,#00,#c8,#10,#c8,#00,#01
	db #01,#0e,#03,#21,#02,#07,#0a,#0e
	db #00,#3f,#11,#01,#8c,#09,#df,#09
	db #a4,#09,#8c,#09,#8c,#09,#d4,#09
	db #a4,#09,#df,#09,#10,#0a,#13,#01
	db #11,#01,#a4,#09,#df,#09,#df,#09
	db #a4,#09,#a4,#09,#df,#09,#df,#09
	db #df,#09,#10,#02,#11,#01,#a4,#09
	db #df,#09,#df,#09,#a4,#09,#a4,#09
	db #df,#09,#df,#09,#b0,#05,#b0,#04
	db #10,#02,#11,#01,#a4,#09,#df,#09
	db #df,#09,#a4,#09,#a4,#09,#df,#09
	db #df,#09,#df,#09,#10,#02,#11,#01
	db #a4,#09,#df,#09,#df,#09,#a4,#09
	db #a4,#09,#df,#09,#df,#09,#b0,#05
	db #b0,#04,#10,#02,#02,#19,#0a,#55
	db #14,#04,#19,#08,#08,#01,#03,#00
	db #ae,#90,#11,#01,#00,#09,#19,#07
	db #b0,#1b,#b0,#24,#10,#02,#19,#08
	db #ae,#90,#11,#01,#00,#09,#ac,#1b
	db #ac,#24,#10,#04,#03,#21,#02,#07
	db #0a,#0e,#12,#02,#03,#00,#02,#19
	db #0a,#55,#a9,#90,#a7,#90,#ac,#90
	db #ae,#90,#19,#07,#b0,#90,#b0,#90
	db #19,#08,#b8,#90,#b8,#90,#03,#21
	db #02,#07,#0a,#0e,#11,#01,#a4,#09
	db #df,#09,#df,#09,#a4,#09,#a4,#09
	db #df,#09,#df,#09,#df,#09,#10,#0e
	db #11,#01,#00,#c8,#10,#c8,#00
	db #01
.l0eec
	db #34,#03,#58,#05,#01,#0a,#03,#21
	db #02,#06,#0a,#0d,#11,#01,#0d,#64
	db #13,#01,#df,#06,#12,#06,#13,#01
	db #ca,#06,#12,#04,#13,#01,#c3,#06
	db #12,#04,#af,#06,#af,#06,#13,#01
	db #a4,#06,#12,#0a,#13,#01,#b7,#06
	db #12,#04,#ca,#06,#ca,#06,#10,#0b
	db #0a,#0f,#02,#05,#13,#01,#11,#01
	db #df,#06,#10,#08,#02,#08,#a4,#0c
	db #02,#05,#11,#01,#df,#06,#10,#06
	db #12,#0e,#00,#0c,#0d,#ff,#0f,#04
	db #b0,#0c,#b0,#0c,#b0,#0c,#00,#0c
	db #ab,#0c,#ab,#0c,#ab,#0c,#13,#01
	db #02,#26,#03,#00,#0a,#0e,#0f,#00
	db #a6,#0c,#a8,#0c,#aa,#0c,#ad,#0c
	db #b2,#0c,#ad,#0c,#aa,#0c,#a6,#0c
	db #a8,#0c,#aa,#0c,#ab,#0c,#af,#0c
	db #b4,#0c,#af,#0c,#ab,#0c,#a8,#0c
	db #aa,#0c,#ad,#0c,#af,#0c,#b2,#0c
	db #b6,#0c,#b2,#0c,#ad,#0c,#aa,#0c
	db #a8,#0c,#a6,#0c,#a5,#0c,#a3,#0c
	db #a1,#0c,#a1,#0c,#a3,#0c,#a5,#0c
	db #a3,#0c,#a5,#0c,#a6,#0c,#a8,#0c
	db #aa,#0c,#a8,#0c,#a6,#0c,#a5,#0c
	db #a4,#0c,#a6,#0c,#a8,#0c,#ab,#0c
	db #b0,#0c,#ad,#0c,#ab,#0c,#a8,#0c
	db #ad,#0c,#a8,#0c,#a6,#0c,#a5,#0c
	db #a1,#0c,#a3,#0c,#a5,#0c,#a8,#0c
	db #a9,#0c,#ab,#0c,#ad,#0c,#b0,#0c
	db #b5,#0c,#b0,#0c,#ad,#0c,#a9,#0c
	db #14,#06,#12,#02,#14,#00,#a6,#0c
	db #a8,#0c,#aa,#0c,#ad,#0c,#b2,#0c
	db #ad,#0c,#aa,#0c,#a6,#0c,#a8,#0c
	db #aa,#0c,#ab,#0c,#af,#0c,#b4,#0c
	db #af,#0c,#ab,#0c,#a8,#0c,#aa,#0c
	db #ad,#0c,#af,#0c,#b2,#0c,#b6,#0c
	db #b2,#0c,#ad,#0c,#aa,#0c,#a8,#0c
	db #a6,#0c,#a5,#0c,#a3,#0c,#a1,#0c
	db #a1,#0c,#a3,#0c,#a5,#0c,#a3,#0c
	db #a5,#0c,#a6,#0c,#a8,#0c,#aa,#0c
	db #a8,#0c,#a6,#0c,#a5,#0c,#a6,#0c
	db #a8,#0c,#aa,#0c,#ad,#0c,#b2,#0c
	db #af,#0c,#ad,#0c,#aa,#0c,#ad,#0c
	db #a8,#0c,#a6,#0c,#a5,#0c,#a1,#0c
	db #a3,#0c,#a5,#0c,#a8,#0c,#a6,#0c
	db #a8,#0c,#aa,#0c,#ad,#0c,#b2,#30
	db #14,#0c,#a4,#0c,#a6,#0c,#a8,#0c
	db #ab,#0c,#b0,#0c,#ad,#0c,#ab,#0c
	db #a8,#0c,#a3,#0c,#a5,#0c,#a6,#0c
	db #a8,#0c,#aa,#0c,#a8,#0c,#a6,#0c
	db #a3,#0c,#9f,#0c,#a3,#0c,#a6,#0c
	db #ab,#0c,#a9,#0c,#a6,#0c,#a3,#0c
	db #9f,#0c,#11,#01,#a1,#0c,#a8,#0c
	db #ad,#0c,#a8,#0c,#10,#08,#01,#0e
	db #11,#01,#14,#00,#02,#1a,#03,#00
	db #13,#01,#9a,#0c,#9a,#0c,#03,#21
	db #0a,#0e,#02,#03,#d4,#06,#d4,#06
	db #d4,#06,#d4,#06,#02,#08,#a4,#18
	db #02,#1a,#03,#00,#9a,#0c,#9a,#0c
	db #18,#fe,#12,#02,#14,#00,#97,#0c
	db #97,#0c,#03,#21,#02,#03,#d4,#06
	db #d4,#06,#d4,#06,#d4,#06,#02,#08
	db #a4,#18,#02,#1a,#03,#00,#9f,#0c
	db #9e,#0c,#13,#01,#02,#1a,#03,#00
	db #9c,#0c,#9c,#0c,#03,#21,#02,#03
	db #d4,#06,#d4,#06,#d4,#06,#d4,#06
	db #18,#05,#12,#02,#14,#00,#10,#04
	db #02,#1a,#03,#00,#13,#01,#9a,#0c
	db #9a,#0c,#03,#21,#0a,#0e,#02,#03
	db #d4,#06,#d4,#06,#d4,#06,#d4,#06
	db #02,#08,#a4,#18,#02,#1a,#03,#00
	db #9a,#0c,#9a,#0c,#18,#fe,#12,#02
	db #14,#00,#97,#0c,#97,#0c,#03,#21
	db #02,#03,#d4,#06,#d4,#06,#d4,#06
	db #d4,#06,#02,#08,#a4,#18,#02,#1a
	db #03,#00,#9f,#0c,#a0,#0c,#11,#01
	db #14,#00,#a1,#0c,#a1,#0c,#03,#21
	db #0a,#0e,#02,#03,#d4,#06,#d4,#06
	db #d4,#06,#d4,#06,#02,#08,#a4,#18
	db #02,#1a,#03,#00,#a1,#0c,#a1,#0c
	db #10,#04,#02,#1e,#0a,#2c,#0d,#01
	db #0f,#04,#dd,#48,#00,#64,#00,#a4
	db #dd,#30,#00,#c8,#00,#88,#03,#21
	db #02,#04,#0a,#0d,#be,#0c,#b9,#0c
	db #b6,#0c,#b2,#0c,#0f,#00,#11,#01
	db #ca,#0c,#10,#04,#02,#08,#a4,#18
	db #02,#04,#ca,#0c,#ca,#0c,#01,#0d
	db #11,#01,#ca,#0c,#10,#04,#02,#08
	db #a4,#18,#02,#04,#ca,#0c,#ca,#0c
	db #01,#0b,#11,#01,#ca,#0c,#10,#04
	db #02,#08,#a4,#18,#02,#04,#ca,#0c
	db #ca,#0c,#01,#09,#11,#01,#ca,#0c
	db #10,#04,#02,#08,#a4,#18,#02,#04
	db #ca,#0c,#ca,#0c,#01,#07,#11,#01
	db #ca,#0c,#10,#04,#02,#08,#a4,#18
	db #02,#04,#ca,#0c,#ca,#0c,#01,#05
	db #11,#01,#ca,#0c,#10,#04,#02,#08
	db #a4,#18,#02,#04,#ca,#0c,#ca,#0c
	db #01,#03,#11,#01,#ca,#0c,#10,#04
	db #02,#08,#a4,#18,#02,#04,#ca,#0c
	db #ca,#0c,#01,#01,#11,#01,#ca,#0c
	db #10,#04,#02,#08,#a4,#18,#02,#04
	db #ca,#0c,#ca,#0c,#01,#00,#00,#01
	db #01,#0a,#02,#03,#0a,#4c,#00,#c0
	db #9a,#c0,#9a,#c0,#9a,#60,#9c,#60
	db #9a,#78,#99,#48,#9a,#60,#9c,#60
	db #9a,#60,#9d,#60,#02,#19,#0a,#2c
	db #11,#01,#a0,#24,#a0,#3c,#18,#02
	db #10,#03,#14,#00,#a7,#24,#9b,#3c
	db #a9,#24,#a9,#0c,#a9,#30,#ac,#24
	db #ac,#0c,#ac,#30,#a7,#24,#a7,#0c
	db #a7,#30,#aa,#24,#9e,#3c,#11,#01
	db #a6,#24,#a6,#3c,#18,#02,#10,#03
	db #14,#00,#ad,#24,#a1,#3c,#a3,#24
	db #a3,#0c,#a3,#30,#9a,#24,#9a,#0c
	db #9a,#30,#a1,#24,#a1,#3c,#a1,#18
	db #9a,#48,#98,#30,#a4,#30,#97,#30
	db #a3,#30,#9c,#30,#a8,#30,#11,#01
	db #a1,#24,#a1,#0c,#ad,#30,#10,#04
	db #14,#0c,#02,#19,#0a,#2c,#13,#01
	db #11,#01,#9a,#18,#9a,#18,#03,#21
	db #a4,#18,#03,#00,#9a,#18,#18,#02
	db #10,#03,#18,#fa,#11,#01,#a1,#18
	db #a1,#18,#03,#21,#a4,#18,#03,#00
	db #a1,#18,#18,#02,#10,#02,#18,#fc
	db #11,#01,#98,#18,#98,#18,#03,#21
	db #a4,#18,#03,#00,#98,#18,#18,#09
	db #10,#02,#18,#ee,#9d,#18,#9d,#18
	db #03,#21,#a4,#18,#03,#00,#9d,#18
	db #14,#06,#12,#02,#14,#0c,#11,#01
	db #9a,#18,#9a,#18,#03,#21,#a4,#18
	db #03,#00,#9a,#18,#18,#02,#10,#03
	db #18,#fa,#11,#01,#a1,#18,#a1,#18
	db #03,#21,#a4,#18,#03,#00,#a1,#18
.l131f equ $ + 3
	db #18,#02,#10,#02,#18,#fc,#11,#01
	db #9a,#18,#9a,#18,#03,#21,#a4,#18
	db #03,#00,#9a,#18,#18,#07,#10,#02
	db #18,#f2,#9a,#18,#9a,#18,#03,#21
	db #a4,#18,#03,#00,#9a,#18,#14,#0c
	db #11,#01,#98,#18,#98,#18,#03,#21
	db #a4,#18,#03,#00,#9a,#18,#18,#ff
	db #10,#02,#14,#0c,#9c,#18,#9c,#18
	db #03,#21,#a4,#18,#03,#00,#9c,#18
	db #11,#01,#a1,#18,#a1,#18,#03,#21
	db #a4,#18,#03,#00,#a1,#18,#10,#03
	db #a1,#18,#a1,#18,#03,#21,#a4,#0c
	db #a4,#0c,#a4,#0c,#a4,#0c,#13,#01
	db #11,#01,#03,#00,#02,#19,#0a,#52
	db #9a,#0c,#9a,#18,#9a,#06,#9a,#06
	db #9a,#18,#9a,#0c,#9a,#0c,#18,#fe
	db #10,#02,#14,#00,#a3,#0c,#a1,#0c
	db #9f,#18,#9f,#0c,#9e,#0c,#9f,#18
	db #9c,#0c,#9e,#0c,#9f,#0c,#a0,#0c
	db #a1,#0c,#a3,#0c,#a5,#0c,#a1,#0c
	db #12,#04,#11,#01,#a6,#0c,#a6,#18
	db #a6,#06,#a6,#06,#a6,#18,#a6,#0c
	db #a6,#0c,#18,#fe,#10,#02,#14,#00
	db #a3,#0c,#a1,#0c,#9f,#18,#9f,#0c
	db #9e,#0c,#9f,#18,#11,#01,#a1,#0c
	db #ad,#18,#a1,#06,#a1,#06,#ad,#18
	db #ad,#0c,#ad,#0c,#10,#04,#02,#19
	db #0a,#2c,#13,#01,#11,#01,#9a,#18
	db #9a,#18,#03,#21,#a4,#18,#03,#00
	db #9a,#18,#18,#02,#10,#03,#18,#fa
	db #11,#01,#a1,#18,#a1,#18,#03,#21
	db #a4,#18,#03,#00,#a1,#18,#18,#02
	db #10,#02,#18,#fc,#11,#01,#98,#18
	db #98,#18,#03,#21,#a4,#18,#03,#00
	db #98,#18,#18,#fd,#10,#02,#18,#06
	db #a2,#18,#a2,#18,#a4,#0c,#a4,#0c
	db #a4,#18,#12,#02,#11,#01,#00,#c8
	db #10,#ff,#00,#01,#01,#0a,#02,#09
	db #0a,#4c,#00,#c0,#9a,#c0,#9a,#c0
	db #13,#01,#02,#19,#0a,#a8,#11,#01
	db #0b,#64,#b2,#18,#b9,#18,#b9,#18
	db #b7,#0c,#b6,#0c,#b7,#0c,#b6,#0c
	db #b4,#18,#b4,#18,#b2,#0c,#b4,#0c
	db #b6,#18,#b4,#0c,#b6,#0c,#b7,#18
	db #b6,#0c,#b2,#0c,#b6,#18,#b4,#48
	db #b2,#18,#b9,#18,#b9,#18,#b7,#0c
	db #b6,#0c,#b7,#0c,#b6,#0c,#b4,#18
	db #b4,#18,#b2,#0c,#b4,#0c,#b6,#18
	db #b4,#0c,#b6,#0c,#b7,#18,#b6,#0c
	db #b2,#0c,#b9,#60,#14,#06,#10,#02
	db #14,#00,#b2,#18,#b9,#18,#b9,#18
	db #b7,#0c,#b6,#0c,#b7,#0c,#b6,#0c
	db #b4,#18,#b4,#18,#b2,#0c,#b4,#0c
	db #b6,#18,#b4,#0c,#b6,#0c,#b7,#18
	db #b6,#0c,#b2,#0c,#b6,#18,#b4,#48
	db #b2,#18,#b9,#18,#b9,#18,#b7,#0c
	db #b6,#0c,#b7,#0c,#b6,#0c,#b4,#18
	db #b4,#18,#b2,#0c,#b4,#0c,#b6,#18
	db #b4,#0c,#b6,#0c,#b7,#18,#b6,#0c
	db #b2,#0c,#b4,#18,#b2,#30,#02,#26
	db #0a,#36,#c5,#18,#ca,#30,#be,#10
	db #c0,#10,#c2,#10,#c2,#48,#be,#18
	db #c3,#30,#bb,#10,#bd,#10,#be,#10
	db #be,#30,#c0,#30,#c2,#30,#c3,#30
	db #c5,#30,#c7,#30,#c9,#30,#ca,#18
	db #cc,#18,#12,#02,#16,#05,#11,#01
	db #9a,#0c,#9a,#18,#9a,#06,#9a,#06
	db #9a,#18,#9a,#0c,#9a,#0c,#18,#fe
	db #10,#02,#14,#00,#a3,#0c,#a1,#0c
	db #9f,#18,#9f,#0c,#9e,#0c,#9f,#18
	db #9c,#0c,#9e,#0c,#9f,#0c,#a0,#0c
	db #a1,#0c,#a3,#0c,#a5,#0c,#a1,#0c
	db #16,#00,#02,#0f,#0a,#5f,#0b,#64
	db #19,#02,#0d,#04,#0f,#01,#b0,#3c
	db #bc,#12,#bc,#12,#ba,#3c,#bc,#24
	db #b9,#10,#b7,#10,#b5,#10,#b5,#10
	db #b4,#10,#b5,#10,#b7,#18,#b0,#18
	db #d6,#30,#b0,#06,#b4,#06,#b7,#06
	db #b4,#06,#bc,#06,#b7,#06,#c0,#06
	db #bc,#06,#be,#06,#c0,#06,#c1,#06
	db #c2,#06,#0f,#04,#c5,#0c,#c4,#0c
	db #0f,#01,#c0,#06,#bc,#06,#b7,#06
	db #b4,#06,#be,#06,#ba,#06,#b5,#06
	db #c1,#06,#c0,#06,#bc,#06,#be,#06
	db #ba,#06,#bc,#18,#b3,#18,#b0,#0c
	db #db,#18,#c1,#06,#c0,#06,#db,#18
	db #b0,#06,#b2,#06,#ae,#06,#b0,#06
	db #ae,#06,#ad,#06,#a9,#06,#ab,#06
	db #ad,#06,#a9,#06,#c3,#24,#11,#01
	db #a7,#06,#a8,#06,#a4,#06,#a2,#06
	db #10,#02,#a7,#06,#a8,#06,#a4,#06
	db #a7,#12,#a4,#06,#a2,#06,#b3,#0c
	db #b0,#06,#ae,#06,#11,#01,#b3,#06
	db #b4,#06,#b0,#06,#10,#04,#11,#01
	db #b3,#06,#b4,#06,#b0,#06,#ae,#06
	db #10,#04,#11,#01,#0f,#04,#b8,#08
	db #10,#09,#0f,#01,#b7,#08,#b5,#08
	db #b4,#08,#11,#01,#cc,#06,#c8,#06
	db #ca,#06,#c6,#06,#c3,#06,#cc,#0c
	db #c8,#06,#ca,#06,#c6,#06,#c3,#06
	db #10,#02,#cc,#0c,#c8,#06,#ca,#06
	db #c6,#06,#c3,#06,#cc,#06,#cd,#1a
	db #cc,#08,#c8,#08,#ca,#08,#c8,#08
	db #c6,#08,#c8,#18,#c1,#18,#0f,#00
	db #11,#01,#c5,#04,#c9,#04,#cc,#04
	db #d1,#04,#cc,#04,#c9,#04,#10,#04
	db #11,#01,#c7,#04,#c9,#04,#cc,#04
	db #d3,#04,#cc,#04,#c9,#04,#10,#04
	db #11,#01,#c9,#04,#cc,#04,#d1,#04
	db #d5,#04,#d1,#04,#cc,#04,#10,#04
	db #11,#01,#cc,#04,#cf,#04,#d1,#04
	db #d5,#04,#d1,#04,#cf,#04,#10,#04
	db #02,#19,#0a,#a8,#11,#01,#0b,#64
	db #b2,#18,#b9,#18,#b9,#18,#b7,#0c
	db #b6,#0c,#b7,#0c,#b6,#0c,#b4,#18
	db #b4,#18,#b2,#0c,#b4,#0c,#b6,#18
	db #b4,#0c,#b6,#0c,#b7,#18,#b6,#0c
	db #b2,#0c,#b6,#18,#b4,#48,#b2,#18
	db #b9,#18,#b9,#18,#b7,#0c,#b6,#0c
	db #b7,#0c,#b6,#0c,#b4,#18,#b4,#18
	db #b2,#0c,#b4,#0c,#b6,#18,#b4,#0c
	db #b6,#0c,#b7,#18,#b6,#0c,#b2,#0c
	db #b4,#18,#b2,#48
.l598a
	db #12,#00,#16,#00,#01,#0e,#02,#88
	db #0a,#24,#0d,#05,#03,#21,#0f,#01
	db #bc,#ff,#8c,#64,#00,#01,#00,#6e
	db #00,#01,#00,#6e,#00,#01,#00
.l5934
	db #10,#00,#14,#00,#01,#0e,#02,#17
	db #0a,#2c,#03,#21,#0d,#ff,#0f,#04
	db #c8,#08,#00,#01,#00,#0b,#00,#01
	db #00,#0b,#00,#01,#12,#00,#24,#00
	db #01,#0e,#02,#18,#0a,#2c,#03,#21
	db #bc,#0a,#0d,#19,#0f,#04,#d4,#46
	db #00,#01,#01,#0e,#02,#1f,#0a,#2c
	db #03,#21,#98,#0a,#0d,#19,#0f,#04
	db #d4,#46,#00,#01,#00,#50,#00,#01
	db #0a,#2c,#03,#21,#8c,#0a,#0d,#19
	db #0f,#04,#bc,#46,#00,#01
.lbd34
.l9137
;	push de
;	ld e,c
;	ld b,#f4
;	out (c),a
;	exx
;	ld bc,#f600
;	out (c),c
;	ld a,#c0
;	out (c),a
;	nop
;	nop
;	out (c),c
;	exx
;	out (c),e
;	exx
;	add a
;	out (c),a
;	nop
;	nop
;	out (c),c
;	exx
;	pop de

	push af
	push bc		; added by Megachur

.send_data_to_psg
	di
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
	ei

	pop bc		; added by Megachur
	pop af

	ret
;
.stop_music
;
	di
	ld a,#07
	ld c,#3f
	call l9137
	xor a
	ld (l03e0),a
	ei
	ret
;
; #8697
; ld hl,#0eec
; call #03ea	; init main theme
;
; #8f24
; ld hl,#0ad6	; init autre theme
; call #03ea
;
.init_music
;
	ld hl,l0ad6     ; added by Megachur
	or a
	jr z,call_init_music
	ld hl,l0eec     ; added by Megachur
.call_init_music
	jp real_init_music
;
.music_info
	db "Top Gun (1986)(Ocean Software)()",0
	db "",0

	read "music_end.asm"
