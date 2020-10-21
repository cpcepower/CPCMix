; Music of VS4 (1987)(Bretagne Edit presse)(Arnaud Linz)()
; Ripped by Megachur the 31/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "XTRI2M10.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 31
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000
NEED_SYSTEM_VECTOR 		equ 1

	read "music_header.asm"

	ld c,#ff
	xor a
	ld hl,l8009
	jp #bd16
.l8009
	ld hl,l892b
	ld a,#01
	call #bcbf
	ld a,#01
	call #bc0e
	ld b,#1a
	ld c,b
	call #bc38
	xor a
	ld bc,#0000
	call #bc32
	ld bc,#1a1a
	ld a,#01
	call #bc32
	ld b,#14
	ld c,b
	ld a,#02
	call #bc32
	ld b,#0f
	ld c,b
	ld a,#03
	call #bc32
	ld hl,#8b39
	ld (#8b1c),hl
	ld hl,#f800
.l8044
	ld a,r
	and #1f
	ld e,a
	ld d,#00
	add hl,de
	xor a
	cp h
	jr z,l8058
	set 6,h
	set 7,h
	ld (hl),#01
	jr l8044
.l8058
	ld h,#12
	ld l,#0a
	call #bb75
	ld a,#01
	call #bb90
	xor a
	call #bb96
	ld hl,l8960
	call l872c
	ld h,#0d
	ld l,h
	call #bb75
	ld hl,l8966
	call l872c
.l807a
	ld a,(#f800)
	ld hl,#f801
	ld de,#f800
	ld bc,#0800
	ldir
	ld (#ffff),a
	call #8aa2
	ld a,#4c
	call #bb1e
	jp z,l807a
	call #bb00
	ld a,#c9
	ld (#bdee),a
	call #bca7
	jp #95c9
	xor a
	ld bc,#0000
	call #bc32
	ld bc,#1a1a
	push bc
	call #bc38
	pop bc
	ld a,#01
	call #bc32
	ld b,#14
	ld c,b
	ld a,#02
	call #bc32
	ld a,#03
	ld b,#0f
	ld c,b
	call #bc32
	ld a,#01
	call #bc0e
	ld a,#f0
	ld h,#00
	ld d,#27
	ld l,#17
	ld e,#18
	call #bc44
	ld h,#00
	ld l,#15
	call #bc1a
	ld d,h
	ld e,l
	ld b,#0a
.l80e5
	push bc
	push de
	ld a,#1b
	ld b,#10
	call l87d0
	pop de
	ld hl,#0004
	add hl,de
	ex de,hl
	push de
	ld a,#1c
	ld b,#10
	call l87d0
	pop de
	ld hl,#0004
	add hl,de
	ex de,hl
	pop bc
	djnz l80e5
	ld a,#01
	call #bb90
	xor a
	call #bb96
	ld hl,#0101
	call #bb75
	ld a,#d4
	call #bb5a
	ld h,#28
	ld l,#01
	call #bb75
	ld a,#d5
	call #bb5a
	ld hl,#0109
	call #bb75
	ld a,#d7
	call #bb5a
	ld hl,#010a
	call #bb75
	ld a,#8f
	call #bb5a
	ld hl,#010b
	call #bb75
	ld a,#d4
	call #bb5a
	ld h,#28
	ld l,#09
	call #bb75
	ld a,#d6
	call #bb5a
	ld h,#28
	ld l,#0a
	call #bb75
	ld a,#8f
	call #bb5a
	ld h,#28
	ld l,#0b
	call #bb75
	ld a,#d5
	call #bb5a
	ld a,#01
	call #bbde
	ld de,#0140
	ld hl,#00e6
	call #bbea
	ld de,#0000
	ld hl,#0020
	call #bbf9
	ld de,#0010
	ld hl,#fff0
	call #bbed
	ld de,#ffe0
	ld hl,#0000
	call #bbf9
	ld a,#01
	call #bbb4
	ld h,#06
	ld d,#0b
	ld l,#16
	ld e,#16
	call #bb66
	ld a,#02
	call #bb96
	ld a,#03
	call #bb90
	call #bb6c
	ld a,#02
	call #bbb4
	ld h,#1c
	ld l,#16
	ld d,#21
	ld e,#16
	call #bb66
	ld a,#02
	call #bb96
	ld a,#03
	call #bb90
	call #bb6c
	ld a,#03
	call #bbb4
	ld h,#01
	ld d,#26
	ld l,#18
	ld e,#18
	call #bb66
	ld a,#03
	call #bb96
	ld a,#02
	call #bb90
	call #bb6c
	xor a
	call #bbb4
	ld a,#01
	call #bb96
	ld a,#03
	call #bb90
	ld h,#07
	ld l,#18
	call #bb75
	ld hl,l892f
	call l872c
	ld h,#1d
	ld l,#18
	call #bb75
	ld hl,l8935
	call l872c
	ld hl,#0000
	ld (l89bb),hl
	ld hl,#2710
	ld (l89bd),hl
	call l8736
	ld a,#ff
	ld h,#00
	ld d,#27
	ld l,#0e
	ld e,#14
	call #bc44
	ld a,r
	ld (l89d4),a
	ld a,r
	ld (l89d5),a
	ld a,r
	ld (l89d6),a
	ld a,r
	ld (l89d7),a
	ld a,r
	ld (l89d8),a
	ld a,r
	ld (l89d9),a
	ld (l89da),a
	ld a,r
	ld (l89db),a
	ld (l89dc),a
	ld a,r
	ld (l89dd),a
	ld (l89de),a
	ld a,r
	ld (l89df),a
	ld (l89e0),a
	ld a,r
	ld (l89e1),a
	ld (l89e2),a
	call l885e
	call #bb00
.l8275
	ld a,r
	and #3f
	cp #14
	jr nc,l8275
	ld (l88f3),a
	ld hl,l88ca
	ld b,#28
.l8285
	ld a,(l88f3)
	ld c,a
	ld a,r
	xor c
	push bc
	ld b,#00
.l828f
	djnz l828f
	pop bc
	ld c,a
	ld a,r
	xor c
	ld c,a
	ld a,r
	xor c
	and #3f
	cp #14
	jr nc,l8285
	ld (hl),a
	ld (l88f3),a
	inc hl
	djnz l8285
	call l870f
	call l82f1
	call l842b
.l82b0
	ld hl,l88f5
	call #bcaa
	call l82f1
	call l840c
	call l82f1
	call #bb24
	bit 4,a
	call nz,l8621
	cp #02
	jp z,l84da
	cp #01
	jp z,l8502
	cp #08
	jp z,l852b
	cp #04
	jp z,l85a6
	cp #0a
	jp z,l8558
	cp #06
	jp z,l85d3
	cp #09
	jp z,l857f
	cp #05
	jp z,l85fa
	jr l82b0
.l82f1
	ld b,#05
	ld hl,l89d4
.l82f6
	push bc
	push hl
.l82f8
	ld a,(l89ce)
	ld c,(hl)
	sub c
	ld c,#12
	add c
	ld (l89d1),a
	cp #22
	jp nc,l83bc
	ld de,#0005
	add hl,de
	ld a,(l89cf)
	ld c,(hl)
	sub c
	ld c,#08
	add c
	ld (l89d2),a
	cp #12
	jp nc,l83bc
	add hl,de
	ld c,(hl)
	ld a,#2e
	sub c
	srl a
	ld (l89d3),a
	cp #17
	jp nc,l83bc
	ld a,(l89d1)
	ld h,a
	ld a,(l89d2)
	ld l,a
	call #bc1a
	ld a,(l89d3)
	cp #01
	jp z,l83cc
	cp #02
	jp z,l83cc
	cp #03
	jp z,l83cc
	cp #05
	jp z,l83cf
	cp #06
	jp z,l83cf
	cp #07
	jp z,l83cf
	cp #09
	jp z,l83d3
	cp #0a
	jp z,l83d3
	cp #0b
	jp z,l83d3
	cp #0d
	jp z,l83d7
	cp #0e
	jp z,l83d7
	cp #0f
	jp z,l83d7
	cp #11
	jp z,l83db
	cp #12
	jp z,l83db
	cp #13
	jp z,l83db
	cp #15
	jp z,l83df
	cp #16
	jp z,l83df
	cp #17
	jp z,l83df
.l8393
	ld b,#1f
	ld d,h
	ld e,l
	push de
	push af
	call l87b5
	pop af
	inc a
	inc a
	pop de
	inc de
	inc de
	inc de
	inc de
	push de
	ld b,#1f
	call l87b5
	pop de
.l83ab
	nop
	ld a,(l89d3)
	cp #14
	call z,l83e3
	pop hl
	inc hl
	pop bc
	dec b
	jp nz,l82f6
	ret
.l83bc
	ld bc,#0190
.l83bf
	dec bc
	ld a,b
	or c
	jr nz,l83bf
	pop hl
	inc hl
	pop bc
	dec b
	jp nz,l82f6
	ret
.l83cc
	xor a
	jr l8393
.l83cf
	ld a,#04
	jr l8393
.l83d3
	ld a,#08
	jr l8393
.l83d7
	ld a,#0c
	jr l8393
.l83db
	ld a,#10
	jr l8393
.l83df
	ld a,#14
	jr l8393
.l83e3
	ld hl,l8919
	call #bcaa
	ld bc,#0606
	ld a,#02
	call #bc32
	ld hl,(l89bd)
	ld de,#0032
	scf
	ccf
	sbc hl,de
	jp c,l8759
	ld (l89bd),hl
	call l8736
	ld bc,#1414
	ld a,#02
	jp #bc32
.l840c
	ld a,(l88f4)
	inc a
	ld (l88f4),a
	cp #0a
	call z,l842b
	ld hl,l89d4
	ld de,l89bf
	ld b,#0f
.l8420
	ld c,(hl)
	ld a,(de)
	add c
	ld (hl),a
	inc hl
	inc de
	djnz l8420
	jp l8497
.l842b
	xor a
	ld (l88f4),a
	ld bc,l89bf
	ld hl,l89d4
	ld de,l89ce
	call l84c4
	ld hl,l89d5
	call l84c4
	ld hl,l89d6
	call l84c4
	ld hl,l89d7
	call l84c4
	ld hl,l89d8
	call l84c4
	ld de,l89cf
	ld hl,l89d9
	call l84c4
	ld hl,l89da
	call l84c4
	ld hl,l89db
	call l84c4
	ld hl,l89dc
	call l84c4
	ld hl,l89dd
	call l84c4
	ld de,l89d0
	xor a
	ld (de),a
	ld hl,l89de
	call l84c4
	ld hl,l89df
	call l84c4
	ld hl,l89e0
	call l84c4
	ld hl,l89e1
	call l84c4
	ld hl,l89e2
	jp l84c4
.l8497
	ld de,#0005
	ld b,#05
	ld hl,l89d4
.l849f
	push hl
	ld a,(l89ce)
	cp (hl)
	jr nz,l84bf
	add hl,de
	ld a,(l89cf)
	cp (hl)
	jr nz,l84bf
	add hl,de
	xor a
	cp (hl)
	jr nz,l84bf
	pop hl
	push hl
	ld a,r
	ld (hl),a
	add hl,de
	ld a,r
	ld (hl),a
	add hl,de
	ld a,r
	ld (hl),a
.l84bf
	pop hl
	inc hl
	djnz l849f
	ret
.l84c4
	ld a,(hl)
	push bc
	ld b,a
	ld a,(de)
	cp b
	jr z,l84d3
	jr c,l84d6
	ld a,#01
.l84cf
	pop bc
	ld (bc),a
	inc bc
	ret
.l84d3
	xor a
	jr l84cf
.l84d6
	ld a,#ff
	jr l84cf
.l84da
	call l82f1
	call l870f
.l84e0
	ld hl,l88ca
	ld b,#28
.l84e5
	ld a,(hl)
	inc a
	cp #15
	call z,l8500
	ld (hl),a
	inc hl
	djnz l84e5
	call l870f
	ld a,(l89cf)
	inc a
	ld (l89cf),a
	call l82f1
	jp l82b0
.l8500
	xor a
	ret
.l8502
	call l82f1
	call l870f
.l8508
	ld hl,l88ca
	ld b,#28
.l850d
	ld a,(hl)
	dec a
	cp #ff
	call z,l8528
	ld (hl),a
	inc hl
	djnz l850d
	call l870f
	ld a,(l89cf)
	dec a
	ld (l89cf),a
	call l82f1
	jp l82b0
.l8528
	ld a,#14
	ret
.l852b
	call l82f1
	ld a,(l88ca)
	ld (l88f3),a
	call l870f
	ld hl,l88cb
	ld de,l88ca
	ld bc,#0028
	ldir
	ld a,(l88f3)
	ld (l88f2),a
	call l870f
	ld a,(l89ce)
	dec a
	ld (l89ce),a
	call l82f1
	jp l82b0
.l8558
	ld a,(l88ca)
	ld (l88f3),a
	call l82f1
	call l870f
	ld hl,l88cb
	ld de,l88ca
	ld bc,#0028
	ldir
	ld a,(l88f3)
	ld (l88f2),a
	ld a,(l89ce)
	dec a
	ld (l89ce),a
	jp l84e0
.l857f
	ld a,(l88ca)
	ld (l88f3),a
	call l82f1
	call l870f
	ld hl,l88cb
	ld de,l88ca
	ld bc,#0028
	ldir
	ld a,(l88f3)
	ld (l88f2),a
	ld a,(l89ce)
	dec a
	ld (l89ce),a
	jp l8508
.l85a6
	ld a,(l88f2)
	ld (l88f3),a
	call l82f1
	call l870f
	ld hl,l88f1
	ld de,l88f2
	ld bc,#0028
	lddr
	ld a,(l88f3)
	ld (l88ca),a
	call l870f
	ld a,(l89ce)
	inc a
	ld (l89ce),a
	call l82f1
	jp l82b0
.l85d3
	ld a,(l88f2)
	ld (l88f3),a
	call l82f1
	call l870f
	ld hl,l88f1
	ld de,l88f2
	ld bc,#0028
	lddr
	ld a,(l88f3)
	ld (l88ca),a
	ld a,(l89ce)
	inc a
	ld (l89ce),a
	jp l84e0
.l85fa
	ld a,(l88f2)
	ld (l88f3),a
	call l82f1
	call l870f
	ld hl,l88f1
	ld de,l88f2
	ld bc,#0028
	lddr
	ld a,(l88f3)
	ld (l88ca),a
	ld a,(l89ce)
	inc a
	ld (l89ce),a
	jp l8508
.l8621
	res 4,a
	push af
	ld hl,(l89bd)
	ld de,#000b
	sbc hl,de
	ld (l89bd),hl
	jp c,l8764
	call l86cc
	ld hl,l88fe
	call #bcaa
	call l8736
	call l86cc
	ld b,#05
	ld ix,l89d4
.l8647
	ld a,(l89ce)
	cp (ix+#00)
	jp nz,l86ae
	ld a,(l89cf)
	cp (ix+#05)
	jp nz,l86ae
	ld a,#2e
	cp (ix+#0a)
	jp c,l86ae
	push bc
	ld a,#c9
	ld (l83ab),a
	ld d,hx
	ld e,lx
	ex de,hl
	call l82f8
	xor a
	ld (l83ab),a
	call l86b6
	push de
	push ix
	ld hl,l8922
	call #bcaa
	pop ix
	ld a,r
	ld (ix+#00),a
	ld a,r
	ld (ix+#05),a
	ld a,#ff
	ld (ix+#0a),a
	ld hl,(l89bb)
	ld de,#0064
	add hl,de
	ld (l89bb),hl
	ld de,#09c4
	scf
	ccf
	sbc hl,de
	pop de
	jp z,#94af
	push de
	call l8736
	pop de
	call l86b6
	pop bc
.l86ae
	inc ix
	dec b
	jp nz,l8647
	pop af
	ret
.l86b6
	ld a,#1f
	ld b,a
	push de
	call l87b5
	pop de
	push de
	dec de
	dec de
	dec de
	dec de
	ld a,#1d
	ld b,#1f
	call l87b5
	pop de
	ret
.l86cc
	ld hl,#e2d2
	ld b,#26
.l86d1
	ld a,(hl)
	cpl
	ld (hl),a
	call #bc29
	ld a,(hl)
	cpl
	ld (hl),a
	call l8833
	inc hl
	push hl
	call l8833
	ld a,(hl)
	cpl
	ld (hl),a
	call #bc29
	ld a,(hl)
	cpl
	ld (hl),a
	pop hl
	inc hl
	djnz l86d1
	ret
.l86f0
	ld e,a
	ld d,#00
	push bc
	ld b,#06
	call l8706
	push de
	ld e,a
	ld d,#00
	ld b,#04
	call l8706
	pop hl
	add hl,de
	pop bc
	ret
.l8706
	scf
	ccf
	sla e
	rl d
	djnz l8706
	ret
.l870f
	ld hl,l88ca
	ld bc,#c000
.l8715
	push hl
	ld a,(hl)
	call l86f0
	push bc
	sla c
	add hl,bc
	pop bc
	ld a,(hl)
	xor #01
	ld (hl),a
	pop hl
	inc hl
	inc c
	ld a,c
	cp #27
	jr nz,l8715
	ret
.l872c
	ld a,(hl)
	cp #ff
	ret z
	call #bb5a
	inc hl
	jr l872c
.l8736
	push af
	ld a,#01
	call #bbb4
	ld a,#1e
	call #bb5a
	ld hl,(l89bb)
	call #89e3
	ld a,#02
	call #bbb4
	ld a,#1e
	call #bb5a
	ld hl,(l89bd)
	call #89e3
	pop af
	ret
.l8759
	ld b,#14
	ld c,b
	ld a,#02
	call #bc32
	call #bca7
.l8764
	ld a,#03
	call #bbb4
	ld hl,l8976
	call l872c
	ld hl,#0000
	ld (l89bd),hl
	ld hl,l8910
	call #bcaa
	ld hl,#c000
.l877e
	ld a,r
	srl a
	srl a
	srl a
	ld e,a
	ld d,#00
	adc hl,de
	set 6,h
	set 7,h
	jr c,l8796
	ld c,#ff
	ld (hl),c
	jr l877e
.l8796
	ld a,#04
	call #bcad
	and #80
	jr nz,l8796
	ld hl,l898f
	call l872c
	call l8736
.l87a8
	ld a,#2f
	call #bb1e
	jr z,l87a8
	ld sp,#c000
	jp l8009
.l87b5
	call l884d
.l87b8
	push bc
	push de
	call l87c6
	pop de
	ex de,hl
	call l8833
	ex de,hl
	pop bc
	djnz l87b8
.l87c6
	ld b,#04
.l87c8
	ld a,(de)
	xor (hl)
	ld (de),a
	inc de
	inc hl
	djnz l87c8
	ret
.l87d0
	call l884d
.l87d3
	push bc
	push de
	ld bc,#0004
	ldir
	pop de
	ex de,hl
	call l8833
	ex de,hl
	pop bc
	djnz l87d3
	ret
	call l884d
.l87e7
	push bc
	push de
	call l87f6
	pop de
	ex de,hl
	call l8833
	ex de,hl
	pop bc
	djnz l87e7
	ret
.l87f6
	ld b,#04
.l87f8
	ld a,(hl)
	ld c,a
	or a
	jr z,l8816
	and #88
	call z,l881b
	ld a,c
	and #44
	call z,l8821
	ld a,c
	and #22
	call z,l8827
	ld a,c
	and #11
	call z,l882d
	ld a,c
	ld (de),a
.l8816
	inc de
	inc hl
	djnz l87f8
	ret
.l881b
	ld a,(de)
	and #88
	or c
	ld c,a
	ret
.l8821
	ld a,(de)
	and #44
	or c
	ld c,a
	ret
.l8827
	ld a,(de)
	and #22
	or c
	ld c,a
	ret
.l882d
	ld a,(de)
	and #11
	or c
	ld c,a
	ret
.l8833
	ld a,h
	add #08
	ld h,a
	and #38
	ret nz
	ld a,h
	sub #40
	ld h,a
	ld a,l
	add #50
	ld l,a
	ret nc
	inc h
	ld a,h
	and #07
	ret nz
	ld a,h
	sub #08
	ld h,a
	ret
.l884d
	push bc
	push de
	ld b,#06
	ld e,a
	ld d,#00
	call l8706
	ld hl,#2000
	add hl,de
	pop de
	pop bc
	ret
.l885e
	ld a,#03
	call #bbb4
	ld hl,l893d
	call l872c
.l8869
	ld a,#2f
	call #bb1e
	jr z,l8869
	call #bb6c
	ld hl,l8955
	call l872c
	ld a,#1f
	ld (l88f2),a
	ld hl,#c460
.l8881
	push hl
	inc hl
	pop de
	ex de,hl
	push hl
	ld (hl),#00
	ld bc,#004f
	ldir
	ld a,(l88f2)
	ld (l890c),a
	ld hl,l8907
	call #bcaa
.l8899
	ld a,#01
	call #bcad
	and #80
	or a
	jr nz,l8899
	ld a,(l88f2)
	cp #01
	call nz,l88c2
	pop hl
	call #bc26
	push hl
	ld de,#c690
	scf
	ccf
	sbc hl,de
	jr z,l88bd
	pop hl
	jp l8881
.l88bd
	pop hl
	call #bb6c
	ret
.l88c2
	dec a
	ld (l88f2),a
	ret
.l88cb equ $ + 4
.l88ca equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l88f5 equ $ + 6
.l88f4 equ $ + 5
.l88f3 equ $ + 4
.l88f2 equ $ + 3
.l88f1 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#01,#00
.l88fe equ $ + 7
	db #00,#e8,#03,#01,#05,#19,#00,#02
	db #00,#01,#64,#00,#00,#07,#14,#00
.l890c equ $ + 5
.l8907
	db #01,#00,#00,#00,#00,#1f,#0a,#32
.l8910 equ $ + 1
	db #00,#04,#00,#00,#00,#00,#0c,#0f
.l8919 equ $ + 2
	db #f4,#01,#04,#00,#01,#c8,#00,#00
.l8922 equ $ + 3
	db #0a,#14,#00,#04,#00,#00,#00,#00
	db #1f,#0f,#1e,#00
.l892f equ $ + 4
.l892b
	db #01,#14,#05,#01,#53,#43,#4f,#52
.l8935 equ $ + 2
	db #45,#ff,#45,#4e,#45,#52,#47,#49
.l893d equ $ + 2
	db #45,#ff,#0c,#07
	db #56,#53,#34,#20,#2d,#20,#50,#41
	db #52,#45,#20,#41,#20,#44,#45,#43
.l8955 equ $ + 6
	db #4f,#4c,#4c,#45,#52,#ff,#0c,#44
	db #45,#43,#4f,#4c,#4c,#41,#47,#45
.l8966 equ $ + 7
.l8960 equ $ + 1
	db #ff,#56,#20,#53,#20,#34,#ff,#50
	db #41,#52,#20,#41,#52,#4e,#41,#55
.l8976 equ $ + 7
	db #44,#20,#4c,#49,#4e,#5a,#ff,#56
	db #41,#49,#53,#53,#45,#41,#55,#20
	db #53,#50,#41,#54,#49,#41,#4c,#20
	db #44,#45,#54,#52,#55,#49,#54,#ff
.l898f
	db #0c,#3c,#45,#53,#50,#41,#43,#45
	db #3e,#20,#50,#4f,#55,#52,#20,#52
	db #45,#4a,#4f,#55,#45,#52,#ff,#0c
	db #56,#45,#4e,#55,#53,#20,#2d,#20
	db #41,#54,#54,#45,#52,#49,#53,#53
.l89bd equ $ + 6
.l89bb equ $ + 4
	db #41,#47,#45,#ff,#00,#00,#60,#ea
.l89bf
	db #00,#00,#00,#00,#00,#00,#00,#00
.l89ce equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#32
.l89d6 equ $ + 7
.l89d5 equ $ + 6
.l89d4 equ $ + 5
.l89d3 equ $ + 4
.l89d2 equ $ + 3
.l89d1 equ $ + 2
.l89d0 equ $ + 1
.l89cf
	db #32,#00,#00,#00,#00,#00,#00,#00
.l89de equ $ + 7
.l89dd equ $ + 6
.l89dc equ $ + 5
.l89db equ $ + 4
.l89da equ $ + 3
.l89d9 equ $ + 2
.l89d8 equ $ + 1
.l89d7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l89df
	db #00,#00,#00,#00
;
.music_info
	db "VS4 (1987)(Bretagne Edit presse)(Arnaud Linz)",0
	db "",0

	read "music_end.asm"
