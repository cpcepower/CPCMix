; Music of Final Exams CPC Amstrad Expo 2010 - Last Part (2010)(Impact)(Lap)()
; Ripped by Megachur the 01/01/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FECAE2LP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #5000

	read "music_header.asm"

	jp l5006; init
	jp l503e; play
;
.init_music
.l5006
;
	di
	exx
	ex af,af'
	push af
	push bc
	push de
	push hl
	ei
	call l54d3
	call l54da
	call l5561
	call l5560
	call l55fd
	call l5067
	ld a,(l57c1)
.l5023
	push af
	call l5266
	pop af
	dec a
	jr nz,l5023
	pop hl
	pop de
	pop bc
	pop af
	ex af,af'
	exx
	ei
	ret
.l5033
	ld bc,#f501
.l5036
	in a,(c)
	and c
	jr z,l5036
	halt
	halt
	halt
;
.play_music
.l503e
;
	call l5266
	jp l50d0
	ld a,#40
	call l508c
	rla
	jr nc,l503e
	ld a,#45
	call l508c
	and #80
	jp nz,l5033
	di
	ld hl,#0000
	ld (#0038),hl
	pop hl
	pop de
	pop bc
	pop af
	ex af,af'
	exx
	ei
	jp #bca7
.l5067
	ld b,#0e
	ld c,#0d
	xor a
.l506c
	push bc
	call l5075
	pop bc
	dec c
	djnz l506c
	ret
.l5075
	ld b,#f4
	out (c),c
	ld bc,#f6c0
	out (c),c
	db #ed, #71 ; out (c),0
	ld b,#f4
	out (c),a
	ld bc,#f680
	out (c),c
	db #ed, #71 ; out (c),0
	ret
.l508c
	di
	ld bc,#f40e
	out (c),c
	ld bc,#f6c0
	out (c),c
	db #ed, #71 ; out (c),0
	ld bc,#f792
	out (c),c
	ld b,#f6
	out (c),a
	ld a,#f4
	in a,(#00)
	db #ed, #71 ; out (c),0
	ld bc,#f782
	out (c),c
	ei
	ret
.l50af
	ld a,(hl)
	cp #00
	jr z,l50c5
	ld (#0000),a
.l50b7
	out (c),c
	exx
	db #ed, #71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l50c5
	inc c
.l50c6
	inc de
	ld a,d
	and #03
	ld d,a
	ld (l50db),de
	ret
.l50d0
	ld de,#c080
	ld hl,#f4f6
	ld b,l
	out (c),d
	exx
.l50db equ $ + 1
	ld de,#0000
	ld l,e
	ld b,#f4
	ld c,#00
.l50e2
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l5266
	di
	ld (l5285),sp
	ld a,(l57c1)
	dec a
.l5271 equ $ + 2
	ld hx,#00
	ld iy,l5279
.l5277 equ $ + 1
	jp l5329
.l5279
	ld hl,(l5277)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld (l5277),de
.l5285 equ $ + 1
	ld sp,#0000
	ei
	ret
.l528b equ $ + 2
	ld sp,#2153
.l528c
	nop
	nop
	ld c,l
	ld d,#00
	ld a,(l57c1)
	ld e,a
	or a
	sbc hl,de
	ld (l528c),hl
	dec a
	jp nc,l5329
	ld b,d
	ld de,l52c9
	ld (l5277),de
	ld de,(l5d40)
	add hl,de
	ld (l528c),hl
	ld a,c
	ld (l52df),a
	ld (l52ca),a
	ld hl,(l50db)
	add hl,bc
	ld a,(l57c1)
	ld c,a
	add hl,bc
	ld a,h
	and #03
	ld (l5271),a
	ld a,l
	ld (l52f2),a
.l52ca equ $ + 1
.l52c9
	ld a,#00
	dec a
	jp m,l52d6
	ld iy,l52db
.l52d4 equ $ + 1
.l52d3
	jp l5329
.l52d6
	ld a,(l57c1)
	jr l52e1
.l52db
	ld a,(l57c1)
.l52df equ $ + 1
	ld b,#00
	sub b
.l52e1
	ld hl,(l52d4)
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc de
	inc de
	inc de
	inc de
	ld hl,#00a1
	add hl,de
	ex de,hl
.l52f2 equ $ + 1
	ld (hl),#00
	inc hl
	ex de,hl
	ldi
	ldi
	ldi
	ldi
	ldi
	ld iy,l5306
	dec a
	jr l52d3
.l5306
	ld hl,(l52d4)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld hl,#ad74
	add hl,de
	jr c,l531d
	ld hl,l528b
	ld (l5277),de
	ld de,l5329
.l531d
	ld (l52d4),de
	ld sp,(l5285)
	ei
	ret
.l5329 equ $ + 2
	ld sp,#3153
	add c
	ld d,(hl)
.l532d equ $ + 1
	jp l543c
	add hl,sp
	ld d,e
	ld sp,l568b
	jp l53bb
	ld b,c
	ld d,e
	ld sp,l5695
	jp l543c
	ld c,c
	ld d,e
	ld sp,l569f
	jp l53bb
	ld d,c
	ld d,e
	ld sp,l56a9
	jp l543c
	ld e,c
	ld d,e
	ld sp,l56b3
	jp l53bb
	ld h,c
	ld d,e
	ld sp,l56bd
	jp l53bb
	ld l,c
	ld d,e
	ld sp,l56c7
	jp l53bb
	ld (hl),c
	ld d,e
	ld sp,l56d1
	jp l53bb
	ld a,c
	ld d,e
	ld sp,l56db
	jp l53bb
	add c
	ld d,e
	ld sp,l56e5
	jp l53bb
	adc c
	ld d,e
	ld sp,l56ef
	jp l53bb
	sub c
	ld d,e
	ld sp,l56f9
	jp l53bb
	adc e
	ld d,d
	ld sp,l5703
	jp l53bb
	and c
	ld d,e
	ld sp,l570d
	jp l53bb
	add hl,hl
	ld d,e
	ld sp,l5717
	jp l53bb
.l53a7
	ex af,af'
	ld a,(hl)
	inc hl
	exx
	ld (de),a
	inc e
	ex af,af'
	dec a
	exx
	jp p,l53d4
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l53bb
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l53d1
	exx
	ld d,a
	exx
	add b
	jr nc,l5414
	ex af,af'
.l53c9
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l53c9
	ex af,af'
.l53d1
	exx
	pop bc
	pop hl
.l53d4
	sla c
	jr nz,l53dc
	ld c,(hl)
	inc hl
	sll c
.l53dc
	jr nc,l53a7
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l53f9
	ex af,af'
	ld a,b
	exx
	ld b,a
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
.l53ee
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l53ee
	ex af,af'
	exx
	jr l53d4
.l53f9
	ex af,af'
	ld a,d
	exx
	ld b,a
	inc b
	exx
	ld a,(hl)
	inc hl
	push hl
	push bc
	exx
	add c
	ld l,a
.l5406
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	djnz l5406
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l5414
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l541c
	ld a,(hl)
	ld (de),a
	inc l
	inc e
	djnz l541c
	push hl
	push de
	jp (iy)
.l5426
	ex af,af'
	ld a,(hl)
	inc hl
	exx
	ld (de),a
	inc de
	res 2,d
	ex af,af'
	dec a
	exx
	jp p,l5459
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l543c
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l5456
	exx
	ld d,a
	exx
	add b
	jr nc,l54bd
	ex af,af'
.l544a
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l544a
	ex af,af'
.l5456
	exx
	pop bc
	pop hl
.l5459
	sla c
	jr nz,l5461
	ld c,(hl)
	inc hl
	sll c
.l5461
	jr nc,l5426
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l5490
	ex af,af'
	ld a,b
	exx
	ld b,a
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
	ld a,d
	res 0,a
	res 1,a
	exx
	adc (hl)
	add hx
	and #fb
	inc hl
	exx
	ld h,a
.l5481
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l5481
	ex af,af'
	exx
	jr l5459
.l5490
	ex af,af'
	ld a,d
	exx
	ld b,a
	inc b
	exx
	ld a,(hl)
	inc hl
	exx
	add c
	ld l,a
	ld a,d
	res 0,a
	res 1,a
	exx
	adc (hl)
	add hx
	and #fb
	inc hl
	push hl
	push bc
	exx
	ld h,a
.l54ab
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	djnz l54ab
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l54bd
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l54c5
	ld a,(hl)
	ld (de),a
	inc hl
	res 2,h
	inc de
	res 2,d
	djnz l54c5
	push hl
	push de
	jp (iy)
.l54d3
	ld hl,(l5d40)
	ld (l528c),hl
	ret
.l54da
	ld hl,l57c4
	ld d,#40
	exx
	ld hl,(l57c2)
	inc hl
	inc hl
	push hl
	ld de,#0003
	ld a,(l57c1)
	ld b,a
	ld c,#00
.l54ef
	ld a,(hl)
	cp #01
	jr z,l5500
	exx
	ld (hl),d
	inc hl
	ld (hl),#04
	dec hl
	ld a,d
	add #08
	ld d,a
	exx
	inc c
.l5500
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l54ef
	ld hl,l57c4
	ld d,#40
	ld b,#03
	exx
	pop hl
	push hl
	ld de,#0003
	ld a,(l57c1)
	ld b,a
.l5518
	ld a,(hl)
	cp #04
	jr z,l5535
	exx
	ld a,b
	inc a
	and #03
	ld b,a
	jr nz,l552e
	ld a,c
	or a
	jr z,l552e
	dec c
	ld a,d
	add #04
	ld d,a
.l552e
	ld (hl),d
	inc hl
	ld (hl),#01
	dec hl
	inc d
	exx
.l5535
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l5518
	ld hl,l532d
	ld bc,#0007
	exx
	pop hl
	ld de,#0003
	ld a,(l57c1)
	ld b,a
.l554b
	ld a,(hl)
	cp #01
	exx
	ld de,l53bb
	jr z,l5557
	ld de,l543c
.l5557
	ld (hl),e
	inc hl
	ld (hl),d
	add hl,bc
	exx
	add hl,de
	djnz l554b
	ret
.l5560
	ret
.l5561
	ld hl,l57c4
	ld de,l50e2
	ld b,(hl)
	inc hl
	ld a,(hl)
	inc hl
	cp #01
	call z,l55e2
	call nz,l55ef
	ld b,#0d
.l5575
	push bc
	call l55bf
	ld b,(hl)
	inc hl
	ld a,(hl)
	cp #04
	call z,l55ef
	jr z,l5598
	dec hl
	dec hl
	cp (hl)
	call nz,l55e2
	jr nz,l5596
	dec hl
	ld a,(hl)
	inc hl
	sub b
	inc a
	call z,l55ea
	call nz,l55e2
.l5596
	inc hl
	inc hl
.l5598
	inc hl
	pop bc
	djnz l5575
	ex de,hl
	ld (hl),#7e
	inc hl
	ld (hl),#3c
	inc hl
	ld (hl),#28
	inc hl
	ld (hl),#0f
	inc hl
	ld (hl),#3d
	inc hl
	ex de,hl
	ld hl,l50b7
	ld bc,#000f
	ldir
	dec de
	ld hl,l50c6
	ld bc,#000a
	ldir
	ret
.l55bf
	push hl
	ld hl,l50af
	ldi
	ldi
	ld b,d
	ld c,#ff
	ld a,e
	ldi
	ldi
	ldi
	ldi
	ld (de),a
	inc de
	ld a,b
	ld (de),a
	inc de
	ld hl,l50b7
	ld bc,#000f
	ldir
	pop hl
	ret
.l55e2
	ex de,hl
	ld (hl),#26
	inc hl
	ld (hl),b
	inc hl
	ex de,hl
	ret
.l55ea
	ld a,#24
	ld (de),a
	inc de
	ret
.l55ef
	ex de,hl
	ld (hl),#3e
	inc hl
	ld (hl),b
	inc hl
	ld (hl),#b2
	inc hl
	ld (hl),#67
	inc hl
	ex de,hl
	ret
.l55fd
	ld hl,l528b
	ld (l5277),hl
	ld hl,l5329
	ld (l52d4),hl
	xor a
	ld (l5271),a
	ld hl,#0000
	ld (l50db),hl
	call l5622
	ld hl,l5681
	ld de,l5721
	ld bc,#00a0
	ldir
	ret
.l5622
	ld hl,l57c4
	exx
	ld a,(l57c1)
	ld b,a
	ld de,(l57c2)
	inc de
	inc de
	ld hl,l5681
.l5633
	push bc
	exx
	ld a,(hl)
	inc hl
	inc hl
	exx
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#00
	inc hl
	ld (hl),#00
	inc hl
	ld (hl),#40
	inc hl
	inc hl
	ex de,hl
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	push hl
	add hl,bc
	ld b,h
	ld c,l
	pop hl
	inc hl
	ex de,hl
	ld (hl),c
	inc hl
	ld (hl),b
	inc hl
	pop bc
	djnz l5633
	ret
	ld bc,l7fc5
	out (c),c
	ld hl,#0800
	ld de,#4000
	ld bc,#3800
	ldir
	ret
	ld bc,l7fc6
	out (c),c
	ld hl,#4000
	ld de,#3000
	ld bc,#1000
	ldir
	ret
.l5681
	db #00,#00,#00,#00,#00,#00,#00,#00
.l568b equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5695 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l569f equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56a9
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56b3 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56bd equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56c7 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56d1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56db equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56e5 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56ef equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l56f9
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5703 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l570d equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5717 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5721
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57c4 equ $ + 3
.l57c2 equ $ + 1
.l57c1
	db #0e,#40,#5d,#40,#01,#41,#01,#42
	db #01,#43,#01,#44,#01,#45,#01,#46
	db #01,#47,#01,#48,#01,#49,#01,#4a
	db #01,#4b,#01,#4c,#01,#4d,#01,#4e
	db #01,#4f,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5d40 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#99
	db #1d,#01,#2e,#00,#01,#fb,#02,#01
	db #ac,#05,#01,#5d,#0a,#01,#19,#0d
	db #01,#76,#13,#01,#fb,#13,#01,#41
	db #17,#01,#e3,#1a,#01,#0f,#1e,#01
	db #23,#1f,#01,#d7,#21,#01,#15,#22
	db #01,#53,#22,#ff,#ff,#ff,#ff,#ff
	db #ff,#77,#05,#1c,#52,#7b,#92,#77
	db #fa,#00,#0c,#fb,#0c,#e0,#ee,#06
	db #e8,#12,#f4,#36,#aa,#de,#fa,#19
	db #5a,#7f,#7e,#fe,#41,#ef,#4f,#fa
	db #3d,#ef,#66,#f4,#48,#f3,#48,#f4
	db #61,#ff,#f5,#91,#d0,#48,#da,#77
	db #f5,#ec,#b1,#48,#ef,#91,#db,#09
	db #e8,#39,#ff,#fa,#9a,#f9,#9a,#f4
	db #52,#f5,#b9,#d0,#09,#e6,#38,#ee
	db #57,#ec,#01,#fe,#c4,#d8,#ed,#45
	db #b1,#c5,#fa,#a7,#ef,#15,#dc,#8e
	db #f4,#ef,#a9,#ff,#ee,#bf,#f9,#20
	db #f4,#d8,#f5,#3f,#e7,#ef,#e8,#a6
	db #e1,#bf,#e3,#02,#ff,#dc,#5d,#f2
	db #b0,#e7,#8d,#f5,#f6,#f3,#1f,#bd
	db #5d,#ef,#9a,#e7,#14,#ff,#e8,#a5
	db #ee,#99,#f9,#a5,#f4,#5d,#f5,#c4
	db #fe,#b7,#b2,#15,#e3,#88,#bf,#cc
	db #e1,#18,#ea,#15,#f5,#7b,#e7,#36
	db #e9,#50,#e0,#05,#ee,#1f,#ff,#dc
	db #98,#ee,#c9,#f3,#23,#f9,#1e,#f4
	db #e2,#f5,#4a,#b0,#98,#e3,#0d,#ff
	db #b6,#67,#f5,#00,#e3,#bc,#ec,#d8
	db #e1,#ed,#ee,#a5,#db,#bc,#e8,#4e
	db #fd,#fa,#b0,#f9,#b0,#f4,#67,#f5
	db #cf,#db,#7f,#e6,#43,#18,#f0,#5d
	db #ff,#ef,#24,#c1,#e0,#ea,#20,#f5
	db #84,#e7,#41,#c9,#59,#ef,#2a,#db
	db #a1,#bf,#f4,#02,#a9,#ee,#d2,#f9
	db #34,#f4,#eb,#f5,#53,#e7,#02,#fc
	db #5f,#ff,#cd,#be,#e3,#16,#e8,#0f
	db #ce,#88,#f5,#09,#e7,#c5,#e8,#dd
	db #e7,#f6,#ff,#f9,#3f,#ee,#ae,#dc
	db #c5,#e8,#57,#fa,#b9,#f9,#b9,#f4
	db #71,#f5,#d8,#ff,#cf,#26,#e6,#56
	db #ee,#77,#ed,#5e,#de,#f8,#db,#1b
	db #f4,#8d,#be,#4b,#ef,#f2,#8c,#ef
	db #34,#dc,#ac,#a9,#e8,#7b,#fa,#3e
	db #f9,#3e,#f4,#f6,#ff,#f7,#5d,#bb
	db #a9,#ed,#81,#f5,#b8,#cd,#6f,#dd
	db #a1,#f5,#13,#e7,#cf,#bf,#c9,#87
	db #1c,#ef,#b8,#dc,#cf,#e7,#61,#fa
	db #c2,#f9,#c2,#f9,#7a,#ff,#f0,#dd
	db #dc,#92,#d5,#55,#e3,#a5,#ca,#fe
	db #eb,#33,#f5,#98,#d0,#f3,#f7,#e0
	db #22,#ef,#3c,#db,#53,#fd,#16,#18
	db #eb,#e9,#fa,#48,#f9,#48,#ff,#f4
	db #ff,#f5,#67,#d0,#b5,#f3,#78,#ed
	db #f2,#ec,#2a,#de,#19,#e8,#9c,#ff
	db #e7,#b5,#f5,#1d,#d0,#78,#f0,#09
	db #ef,#18,#ef,#c2,#dc,#3a,#f3,#77
	db #fd,#ee,#0a,#f9,#cd,#f4,#85,#f5
	db #ec,#d0,#3a,#f1,#cd,#18,#f0,#7b
	db #ff,#ec,#af,#ea,#00,#d9,#15,#ea
	db #3d,#f5,#a2,#b0,#5e,#ef,#47,#e7
	db #bf,#ff,#e9,#53,#fd,#44,#f0,#f2
	db #f9,#44,#f4,#09,#f5,#70,#dc,#20
	db #e2,#e4,#ff,#f2,#01,#e3,#33,#ca
	db #8d,#e7,#f4,#e2,#7c,#c9,#fa,#f3
	db #5c,#e2,#3d,#ff,#e9,#d7,#ee,#c8
	db #f9,#d4,#f9,#bd,#f4,#8c,#d7,#9f
	db #d4,#66,#ef,#49,#7f,#a9,#d0,#05
	db #db,#36,#f9,#aa,#cb,#00,#f3,#c8
	db #ed,#a3,#ef,#4f,#ff,#dc,#c8,#e8
	db #97,#fa,#59,#f9,#59,#f4,#12,#f5
	db #78,#e3,#29,#e0,#e4,#ff,#f2,#89
	db #ef,#18,#ec,#c0,#ea,#37,#e8,#ae
	db #f2,#1a,#ee,#04,#de,#84,#ff,#ed
	db #52,#e6,#b9,#fa,#65,#ef,#d4,#dc
	db #4c,#e8,#7d,#fb,#dd,#fe,#e1,#ff
	db #f9,#dd,#f4,#96,#f5,#fd,#d0,#4c
	db #e5,#7d,#f0,#9d,#ed,#44,#c2,#1b
	db #af,#f0,#8a,#1c,#bf,#09,#a9,#ed
	db #ab,#f4,#e9,#d7,#cb,#e7,#9f,#ff
	db #fa,#61,#f9,#61,#f4,#1a,#f5,#81
	db #e7,#31,#dc,#e8,#ed,#0d,#e3,#44
	db #bd,#dc,#9f,#a9,#db,#c3,#f5,#37
	db #d0,#f3,#f1,#24,#18,#ef,#33,#ff
	db #ef,#dc,#dc,#54,#e8,#24,#fa,#e6
	db #fa,#f2,#fe,#eb,#fa,#cf,#ef,#00
	db #f7,#c1,#54,#ef,#94,#e4,#ca,#d9
	db #23,#18,#de,#4a,#f5,#bb,#e7,#77
	db #f7,#c9,#2f,#ef,#60,#dc,#77,#e8
	db #09,#a9,#fa,#69,#f9,#69,#f4,#22
	db #ff,#f5,#89,#dc,#39,#db,#fd,#ee
	db #27,#ec,#d0,#de,#a8,#e6,#c9,#ee
	db #14,#ff,#fa,#45,#b7,#9a,#fa,#76
	db #f3,#76,#fb,#ac,#dc,#5d,#e8,#8d
	db #fa,#ee,#fe,#f9,#ee,#f7,#a6,#f6
	db #a8,#d7,#b9,#d4,#80,#e3,#d1,#f3
	db #8b,#07,#5f,#01,#fd,#01,#07,#f9
	db #00,#fa,#0c,#ee,#07,#e8,#13,#f5
	db #37,#bf,#fd,#44,#02,#fe,#4b,#f8
	db #29,#f5,#55,#f4,#25,#f2,#56,#f7
	db #4b,#ff,#f3,#48,#e9,#07,#d0,#48
	db #da,#77,#f5,#ec,#b1,#48,#ef,#91
	db #db,#09,#ff,#e8,#39,#fa,#9a,#f9
	db #9a,#f4,#52,#f5,#b9,#d0,#09,#e6
	db #38,#ee,#57,#ff,#ec,#01,#c4,#d8
	db #ed,#45,#b1,#c5,#fa,#a7,#ef,#15
	db #dc,#8e,#f1,#bf,#ff,#f0,#c1,#f9
	db #20,#f4,#d8,#f5,#3f,#e7,#ef,#e8
	db #a6,#e1,#bf,#e3,#02,#ff,#dc,#5d
	db #ef,#8c,#ea,#90,#f5,#f6,#f3,#1f
	db #bd,#5d,#ef,#9a,#e7,#14,#ff,#e8
	db #a5,#ee,#99,#f9,#a5,#f4,#5d,#f5
	db #c4,#b0,#13,#e3,#88,#c9,#e1,#ff
	db #ec,#17,#f5,#7b,#d0,#d6,#e0,#05
	db #ee,#1f,#dc,#98,#e7,#67,#fa,#2a
	db #ff,#f9,#1e,#f4,#e2,#f5,#4a,#b0
	db #98,#e3,#0d,#b6,#67,#f5,#00,#e3
	db #bc,#ff,#ec,#d8,#e1,#ed,#ee,#a5
	db #db,#bc,#e8,#4e,#fa,#b0,#f9,#b0
	db #f4,#67,#ff,#f5,#cf,#db,#7f,#e3
	db #43,#f2,#5f,#ef,#24,#be,#e0,#e7
	db #53,#e2,#db,#ff,#c9,#59,#ef,#2a
	db #db,#a1,#f1,#d2,#f0,#d4,#f9,#34
	db #f4,#eb,#f5,#53,#ff,#e7,#02,#fc
	db #5f,#cd,#be,#e3,#16,#e8,#0f,#ce
	db #88,#f5,#09,#e7,#c5,#ff,#e8,#dd
	db #e7,#f6,#f9,#3f,#ee,#ae,#dc,#c5
	db #e8,#57,#fa,#b9,#f9,#b9,#ff,#f4
	db #71,#f5,#d8,#cf,#26,#e6,#56,#ee
	db #77,#ed,#5e,#de,#f8,#db,#1b,#ff
	db #f4,#8d,#be,#4b,#f2,#8c,#ef,#34
	db #dc,#ac,#fc,#26,#eb,#7e,#fa,#3e
	db #ff,#f9,#3e,#f4,#f6,#f6,#5d,#bc
	db #aa,#ed,#81,#f2,#26,#d0,#72,#dd
	db #a1,#ff,#f5,#13,#e7,#cf,#c9,#87
	db #fc,#7a,#f2,#bb,#dc,#cf,#e4,#61
	db #fd,#c5,#ff,#f9,#c2,#f6,#7a,#f3
	db #e0,#dc,#92,#d5,#55,#e3,#a5,#c9
	db #fe,#ec,#34,#ff,#f5,#98,#d0,#f3
	db #e0,#22,#ef,#3c,#db,#53,#f3,#90
	db #ee,#e6,#f9,#48,#ff,#f4,#ff,#f5
	db #67,#d0,#b5,#f0,#f2,#f0,#f5,#e9
	db #2a,#e1,#1c,#e8,#9c,#ff,#e7,#b5
	db #f5,#1d,#d0,#78,#f0,#09,#ef,#18
	db #ef,#c2,#dc,#3a,#f3,#77,#ff,#ee
	db #c1,#f9,#cd,#f4,#85,#f5,#ec,#d0
	db #3a,#ee,#cd,#f2,#7d,#ec,#af,#ff
	db #ea,#00,#d6,#15,#e7,#71,#e2,#f8
	db #c9,#77,#ef,#47,#e7,#bf,#e9,#53
	db #ff,#fc,#39,#f1,#f3,#f9,#51,#f4
	db #09,#f5,#70,#dc,#20,#e2,#e4,#f2
	db #01,#ff,#e3,#33,#ca,#8d,#e7,#f4
	db #e2,#7c,#c9,#fa,#f3,#5c,#e2,#3d
	db #e9,#d7,#ff,#ee,#c8,#f9,#d4,#f9
	db #bd,#f4,#8c,#d7,#9f,#d4,#66,#ec
	db #b7,#d2,#07,#ff,#db,#36,#f6,#aa
	db #ce,#03,#f0,#a3,#f0,#a6,#ef,#4f
	db #dc,#c8,#e8,#97,#ff,#fa,#59,#f9
	db #59,#f4,#12,#f5,#78,#e3,#29,#e0
	db #e4,#f2,#89,#ef,#18,#ff,#ec,#c0
	db #ea,#37,#e8,#ae,#ef,#1a,#f1,#07
	db #de,#84,#ed,#52,#e6,#b9,#fb,#fa
	db #65,#ef,#d4,#dc,#4c,#e8,#7d,#fa
	db #dd,#02,#f9,#dd,#f4,#96,#ff,#f5
	db #fd,#d0,#4c,#e3,#7d,#f2,#9f,#ed
	db #44,#c0,#1b,#ee,#7a,#bf,#0c,#ff
	db #ef,#ad,#ef,#58,#dc,#d0,#e4,#9f
	db #fd,#64,#f9,#61,#f4,#1a,#f5,#81
	db #ff,#e7,#31,#d9,#e8,#f0,#10,#e3
	db #44,#d9,#9f,#dd,#c5,#f5,#37,#cd
	db #f3,#ff,#f1,#27,#f1,#35,#ef,#dc
	db #dc,#54,#e8,#24,#fa,#e6,#f8,#90
	db #fa,#cf,#ff,#ef,#00,#be,#54,#ed
	db #29,#e9,#cf,#d6,#23,#e0,#4c,#f5
	db #bb,#e7,#77,#ff,#c9,#2f,#ef,#60
	db #dc,#77,#e8,#09,#fc,#52,#fd,#6c
	db #f9,#69,#f4,#22,#ff,#f5,#89,#dc
	db #39,#db,#fd,#ee,#27,#ec,#d0,#de
	db #a8,#e6,#c9,#ee,#14,#ff,#f7,#8f
	db #ba,#9d,#f7,#57,#f6,#79,#fb,#ac
	db #dc,#5d,#e8,#8d,#fa,#ee,#fe,#f9
	db #ee,#f6,#a6,#f7,#a9,#d7,#b9,#d4
	db #80,#e3,#d1,#f3,#8b,#77,#d4,#00
	db #00,#37,#00,#ef,#fb,#ca,#de,#fb
	db #d0,#bb,#bc,#de,#fc,#d6,#e8,#d0
	db #bb,#fa,#e8,#e8,#ca,#f3,#06,#f4
	db #fb,#0c,#93,#fb,#2c,#18,#19,#fc
	db #32,#30,#31,#fc,#38,#e2,#32,#5a
	db #18,#e2,#2c,#30,#fa,#6f,#f4,#5d
	db #3f,#fb,#8e,#7e,#9f,#fb,#94,#fb
	db #fc,#fc,#9a,#ee,#94,#f3,#a5,#dc
	db #8e,#f4,#bf,#ea,#d0,#2c,#fa,#ef
	db #ed,#f4,#c9,#fb,#38,#92,#fb,#3e
	db #23,#6a,#24,#fc,#44,#fa,#3e,#ef
	db #fb,#50,#de,#fb,#56,#bb,#7e,#bc
	db #fb,#5c,#f4,#56,#ee,#63,#ee,#50
	db #e2,#6f,#d6,#ef,#30,#da,#f4,#19
	db #fa,#dc,#18,#e2,#07,#fa,#01,#3f
	db #fa,#13,#7e,#9f,#fb,#1a,#fb,#fc
	db #fc,#20,#e2,#1a,#dc,#14,#f4,#44
	db #ee,#b1,#ea,#f9,#db,#dc,#ef,#f4
	db #99,#c9,#fb,#bd,#92,#fb,#c3,#23
	db #6a,#24,#fc,#c9,#fa,#c3,#ef,#fa
	db #d5,#de,#fb,#dc,#bb,#7f,#bc,#fc
	db #e2,#e2,#dc,#dc,#d6,#f4,#06,#bd
	db #74,#ed,#48,#f4,#67,#53,#3f,#fb
	db #98,#7e,#fb,#9e,#fb,#fc,#fc,#a4
	db #ee,#9e,#ee,#f3,#af,#dc,#98,#f4
	db #c9,#7e,#ee,#67,#dc,#49,#ed,#ff
	db #c9,#a6,#fb,#43,#92,#fb,#49,#23
	db #24,#fc,#4f,#fa,#49,#ef,#a6,#fb
	db #5b,#de,#fb,#61,#bb,#bc,#fc,#67
	db #e2,#61,#de,#ee,#dc,#5b,#f4,#8c
	db #dc,#fa,#18,#ee,#1e,#dc,#0c,#fa
	db #0b,#3f,#a6,#fb,#1d,#7e,#fb,#23
	db #fb,#fc,#fc,#29,#f4,#23,#fb,#ea
	db #ee,#23,#e2,#1d,#ee,#48,#7e,#b7
	db #bc,#c9,#fb,#c8,#92,#9a,#fb,#ce
	db #23,#24,#fc,#d4,#fa,#ce,#ef,#fb
	db #e0,#de,#9d,#fb,#e6,#bb,#bc,#fc
	db #ec,#e2,#e6,#ee,#e0,#bb,#e2,#fe
	db #ea,#dc,#7f,#dc,#a4,#e8,#65,#3f
	db #fb,#a1,#7e,#fb,#a7,#fb,#7e,#fc
	db #fb,#ad,#f4,#a7,#ee,#b4,#ee,#a1
	db #e2,#c0,#f4,#95,#18,#d4,#d6,#4d
	db #ed,#76,#c9,#fb,#4c,#92,#fb,#52
	db #23,#24,#d4,#fc,#58,#fa,#52,#ef
	db #fb,#64,#de,#fb,#6a,#bb,#bc,#df
	db #fc,#70,#f4,#6a,#bb,#ee,#6a,#e2
	db #64,#ee,#8f,#e8,#34,#ee,#d1,#75
	db #30,#f4,#2d,#dc,#15,#fa,#14,#3f
	db #fb,#26,#7e,#fa,#2c,#3e,#fb,#fc
	db #fc,#33,#e2,#2d,#f4,#26,#f4,#4b
	db #e7,#4a,#7e,#d4,#d6,#c5,#e2,#f0
	db #c9,#fb,#d1,#92,#fb,#d7,#23,#24
	db #d4,#fc,#dd,#fa,#d7,#ef,#fb,#e9
	db #de,#fb,#ef,#bb,#bc,#df,#fc,#f5
	db #f4,#ef,#bb,#ed,#fb,#e2,#e9,#ee
	db #15,#b8,#89,#ee,#6f,#a9,#f9,#80
	db #3f,#fb,#ac,#7e,#fb,#b2,#fb,#fc
	db #fc,#b8,#da,#e2,#b2,#ee,#ac,#fb
	db #e2,#ca,#d6,#4b,#30,#e2,#75,#c9
	db #a6,#fb,#56,#92,#fb,#5c,#23,#24
	db #fc,#62,#fa,#5c,#92,#53,#ef,#fb
	db #6f,#de,#fb,#75,#bb,#bc,#fc,#7b
	db #e2,#75,#fd,#dc,#6f,#f4,#9f,#d6
	db #0d,#f4,#38,#e1,#d4,#f4,#00,#3f
	db #fb,#30,#4d,#7e,#fb,#36,#fb,#fc
	db #fc,#3c,#f4,#36,#fb,#ee,#36,#fa
	db #e2,#30,#fa,#73,#f3,#60,#ca,#cf
	db #fa,#bc,#18,#f4,#b6,#c9,#a6,#fb
	db #db,#92,#fb,#e1,#23,#24,#fc,#e7
	db #fa,#e1,#ef,#a7,#fb,#f3,#de,#fb
	db #f9,#bb,#bc,#fc,#ff,#e2,#f9,#dc
	db #f3,#da,#f4,#23,#e2,#92,#30,#e2
	db #b0,#db,#6b,#3f,#fb,#b5,#7e,#9f
	db #fb,#bb,#fb,#fc,#fc,#c1,#ee,#bb
	db #f3,#cc,#dc,#b5,#f4,#e6,#b5,#e8
	db #53,#18,#e7,#5f,#e8,#16,#c9,#fb
	db #60,#92,#fb,#66,#35,#23,#24,#fc
	db #6c,#fa,#66,#ef,#fb,#78,#de,#fb
	db #7e,#3f,#bb,#bc,#fc,#84,#e2,#7e
	db #f4,#78,#db,#8f,#ee,#48,#f9,#41
	db #ea,#ee,#2f,#e2,#42,#e8,#fe,#3f
	db #fb,#3a,#7e,#fb,#40,#fb,#6f,#fc
	db #fc,#46,#e8,#40,#fb,#fa,#58,#ee
	db #3a,#f9,#64,#f4,#52,#f5,#f4,#6b
	db #dc,#0a,#f3,#e5,#e8,#9c,#c9,#fb
	db #e5,#92,#fb,#eb,#35,#23,#24,#fc
	db #f1,#fa,#eb,#ef,#fb,#fd,#de,#fb
	db #03,#3b,#bb,#bc,#fc,#09,#e2,#03
	db #ee,#fd,#bb,#e2,#1b,#e8,#cd,#75
	db #18,#e8,#a8,#dc,#9c,#f4,#8f,#3f
	db #fb,#bf,#7e,#fb,#c5,#3f,#fb,#fc
	db #fb,#cb,#f4,#c5,#ee,#d2,#ee,#bf
	db #e2,#de,#dc,#8f,#d4,#ee,#a7,#ed
	db #25,#c9,#fb,#69,#92,#fb,#6f,#23
	db #24,#d4,#fc,#75,#fa,#6f,#ef,#fb
	db #81,#de,#fb,#87,#bb,#bc,#ee,#fc
	db #8d,#e2,#87,#ee,#81,#bb,#e2,#9f
	db #ca,#20,#d6,#f4,#3f,#a7,#fb,#42
	db #7e,#fb,#48,#fb,#fc,#fc,#4e,#fa
	db #48,#f3,#4d,#fa,#f4,#5b,#e8,#42
	db #ee,#67,#f9,#78,#b8,#e2,#c9,#fb
	db #ec,#92,#9a,#fa,#f2,#23,#24,#fc
	db #f9,#fa,#f3,#ef,#fb,#05,#de,#9b
	db #fb,#0b,#bb,#bc,#fc,#11,#e2,#0b
	db #de,#dc,#05,#f4,#36,#e5,#fa,#d4
	db #bd,#a9,#e8,#8b,#18,#3f,#fb,#c8
	db #7e,#fb,#ce,#3e,#fb,#fc,#fc,#d4
	db #e2,#ce,#f4,#c8,#db,#df,#b8,#67
	db #c9,#a6,#fb,#71,#92,#fb,#77,#23
	db #24,#fc,#7d,#fa,#77,#ef,#a6,#fb
	db #89,#de,#fb,#8f,#bb,#bc,#fc,#95
	db #f4,#8f,#bb,#f5,#ee,#8f,#e8,#89
	db #e7,#ad,#c4,#29,#18,#dc,#03,#3f
	db #fb,#4c,#4f,#7e,#fb,#52,#fb,#fc
	db #fc,#58,#ee,#52,#f3,#63,#dc,#4c
	db #ea,#f4,#7d,#c4,#eb,#fa,#d1,#30
	db #fa,#e3,#c9,#fb,#f6,#92,#9a,#fb
	db #fc,#23,#24,#fc,#02,#fa,#fc,#ef
	db #fb,#0e,#de,#9d,#fb,#14,#bb,#bc
	db #fc,#1a,#e2,#14,#e2,#0e,#bb,#ee
	db #38,#ca,#be,#ad,#e2,#8d,#18,#3f
	db #fb,#d0,#7e,#fb,#d6,#fb,#76,#fc
	db #fc,#dc,#e2,#d6,#ee,#d0,#fb,#e2
	db #ee,#c4,#6f,#18,#a9,#f4,#55,#c9
	db #fb,#7a,#92,#fb,#80,#23,#24,#fc
	db #86,#a9,#fa,#80,#ef,#fb,#92,#de
	db #fa,#98,#bb,#bc,#fc,#9f,#fd,#e2
	db #99,#f4,#92,#dc,#ab,#ca,#31,#e1
	db #f8,#f4,#24,#3f,#fb,#54,#4e,#7e
	db #fb,#5a,#fb,#fc,#fc,#60,#e2,#5a
	db #ee,#54,#fb,#f2,#ee,#72,#f3,#83
	db #ca,#f3,#ee,#d4,#18,#c9,#fb,#ff
	db #92,#9a,#fb,#05,#23,#24,#fc,#0b
	db #fa,#05,#ef,#fb,#17,#de,#9f,#fb
	db #1d,#bb,#bc,#fc,#23,#e2,#1d,#dc
	db #17,#f4,#47,#ca,#b6,#d4,#e1,#7c
	db #f4,#a8,#3f,#fb,#d8,#7e,#fb,#de
	db #fb,#fc,#fe,#fb,#e4,#f4,#de,#ee
	db #eb,#ee,#d8,#e2,#f7,#ca,#77,#f4
	db #57,#30,#a9,#fa,#6f,#c9,#fb,#82
	db #92,#fb,#88,#23,#24,#fc,#8e,#a9
	db #fa,#88,#ef,#fb,#9a,#de,#fb,#a0
	db #bb,#bc,#fc,#a6,#f6,#e2,#a0,#e8
	db #9a,#e7,#bd,#d0,#39,#18,#dc,#fb
	db #f4,#2c,#18,#53,#3f,#fb,#5d,#7e
	db #fb,#63,#fb,#fc,#fc,#69,#e2,#63
	db #da,#dc,#5d,#f4,#8d,#7e,#d0,#fb
	db #e8,#be,#c9,#fb,#06,#92,#99,#fa
	db #0c,#23,#24,#fc,#13,#fa,#0d,#bb
	db #bc,#ea,#1f,#c0,#fa,#fa,#a5,#3b
	db #77,#07,#d5,#00,#00,#37,#00,#00
	db #fb,#ca,#01,#fb,#d0,#03,#fb,#d6
	db #fd,#e8,#d0,#f9,#e7,#e8,#ca,#f3
	db #06,#f4,#fb,#fa,#2b,#02,#fb,#32
	db #6f,#04,#fb,#38,#e2,#32,#02,#e2
	db #2c,#f9,#6e,#f4,#5d,#dc,#2c,#fb
	db #f3,#a5,#dc,#8e,#d0,#82,#ee,#d7
	db #ed,#f4,#00,#fb,#38,#fa,#20,#7f
	db #03,#fb,#44,#fa,#3e,#ee,#38,#f9
	db #49,#e8,#5d,#e8,#38,#e8,#75,#ff
	db #d6,#ef,#ed,#dc,#e1,#06,#e1,#19
	db #dc,#ef,#d6,#ef,#ed,#cf,#d0,#2c
	db #6f,#00,#fb,#bd,#fa,#a5,#03,#fb
	db #c9,#fa,#c3,#fa,#bd,#ed,#c2,#ff
	db #e8,#e2,#dc,#d6,#f4,#06,#bd,#74
	db #e1,#54,#e8,#a5,#f4,#a4,#e1,#5a
	db #f6,#e2,#b7,#db,#c8,#ee,#e1,#ed
	db #ff,#00,#fb,#43,#fa,#2b,#03,#ff
	db #fb,#4f,#fa,#49,#e8,#43,#e8,#67
	db #db,#5a,#f4,#8c,#dc,#fa,#e7,#e0
	db #fd,#e2,#12,#dc,#e7,#e1,#fe,#dc
	db #36,#db,#4d,#db,#41,#00,#fb,#c8
	db #bf,#fa,#b0,#03,#fb,#d4,#fa,#ce
	db #e8,#c8,#e8,#ec,#ee,#e0,#e1,#fd
	db #fe,#dc,#7f,#dc,#a4,#e8,#65,#ee
	db #71,#a5,#52,#d5,#4c,#ed,#d7,#00
	db #df,#fb,#4c,#fa,#34,#03,#fb,#58
	db #fa,#52,#e8,#4c,#fa,#70,#f3,#75
	db #ff,#dc,#5e,#ee,#8f,#dc,#d2,#fa
	db #dd,#ed,#ef,#e2,#1b,#ee,#14,#e1
	db #d0,#f6,#e2,#f0,#e7,#4a,#db,#f5
	db #dc,#4b,#00,#fb,#d1,#fa,#b9,#03
	db #ff,#fb,#dd,#fa,#d7,#e8,#d1,#fa
	db #f5,#ec,#fa,#e2,#e9,#ee,#15,#b8
	db #89,#fd,#ee,#6f,#f9,#80,#be,#4b
	db #e1,#c9,#d6,#ac,#e1,#74,#00,#fb
	db #56,#bf,#fa,#3e,#03,#fb,#62,#f9
	db #9f,#e8,#56,#e8,#7b,#dc,#6f,#f4
	db #9f,#ff,#d6,#0d,#f4,#38,#e1,#d4
	db #f4,#00,#e2,#00,#e1,#11,#e8,#49
	db #d5,#23,#db,#e2,#4f,#f3,#b5,#00
	db #fb,#db,#fa,#c2,#03,#fb,#e7,#fa
	db #e1,#ff,#e8,#db,#e8,#ff,#dc,#f3
	db #f4,#23,#e2,#92,#e1,#af,#db,#6b
	db #e2,#53,#fb,#fa,#c7,#e1,#77,#ca
	db #97,#e6,#5e,#e8,#16,#00,#fb,#60
	db #fa,#48,#7f,#03,#fb,#6c,#fa,#66
	db #e8,#60,#e8,#84,#f4,#78,#da,#8f
	db #ef,#49,#ff,#ed,#f7,#dc,#3c,#e8
	db #fe,#dc,#0a,#f3,#e5,#db,#d9,#b1
	db #2e,#fa,#d3,#6f,#00,#fb,#e5,#fa
	db #cd,#03,#fb,#f1,#fa,#eb,#e8,#e5
	db #e8,#09,#ff,#ee,#fd,#e1,#1a,#e8
	db #cd,#e7,#a7,#dc,#9c,#f4,#8f,#ee
	db #8f,#ed,#a0,#ed,#b2,#83,#dc,#f6
	db #ed,#25,#00,#fb,#69,#fa,#51,#03
	db #fb,#75,#ff,#fa,#6f,#e8,#69,#e8
	db #8d,#ee,#81,#e1,#9e,#ca,#20,#d6
	db #f4,#e8,#12,#ed,#bd,#f9,#e1,#3b
	db #d0,#5b,#00,#fb,#ec,#f9,#97,#03
	db #fb,#f9,#ff,#fa,#f3,#f4,#ec,#f4
	db #f9,#e8,#11,#db,#04,#f3,#ec,#b8
	db #a4,#e8,#8b,#f6,#db,#96,#e7,#af
	db #dc,#e0,#b8,#67,#00,#fb,#71,#fa
	db #59,#03,#ff,#fb,#7d,#fa,#77,#e8
	db #71,#fa,#95,#f3,#9a,#e2,#83,#e7
	db #ad,#c4,#29,#fd,#db,#02,#dc,#eb
	db #e7,#33,#b8,#28,#e2,#71,#f9,#d6
	db #00,#fb,#f6,#bf,#fa,#dd,#03,#fb
	db #02,#fa,#fc,#e8,#f6,#e8,#1a,#e2
	db #0e,#ed,#37,#fe,#be,#ad,#e2,#8d
	db #db,#9e,#e2,#93,#e1,#ed,#c4,#d0
	db #f3,#54,#00,#df,#fb,#7a,#fa,#61
	db #03,#fb,#86,#fa,#80,#f4,#7a,#f3
	db #85,#e8,#9f,#ff,#e8,#7a,#e7,#86
	db #cb,#32,#e1,#f8,#f4,#24,#ca,#f3
	db #f4,#72,#ed,#71,#db,#b1,#47,#f9
	db #a3,#00,#fb,#ff,#fa,#e6,#03,#fb
	db #0b,#fa,#05,#ff,#e8,#ff,#e8,#23
	db #dc,#17,#f4,#47,#ca,#b6,#e1,#7c
	db #f4,#a8,#ee,#a8,#f6,#db,#88,#c4
	db #ae,#d0,#eb,#f9,#62,#00,#fb,#82
	db #fa,#69,#03,#ff,#fb,#8e,#fa,#88
	db #e8,#82,#e8,#a6,#e8,#9a,#e7,#bd
	db #d0,#39,#db,#38,#f6,#f4,#2c,#db
	db #2b,#e8,#44,#93,#38,#00,#fb,#06
	db #fa,#ee,#01,#7c,#03,#fb,#13,#f4
	db #0d,#ee,#24,#fa,#fa,#a5,#3c,#07
	db #77,#f1,#00,#00,#00,#00,#00,#00
	db #b1,#00,#1e,#3b,#3c,#f7,#51,#33
	db #22,#43,#f5,#5d,#f4,#50,#19,#32
	db #f6,#76,#e8,#50,#88,#f4,#81,#28
	db #4f,#50,#f7,#a6,#2d,#59,#5a,#8e
	db #f7,#b2,#32,#64,#65,#f7,#be,#f4
	db #b1,#f4,#a5,#50,#1c,#3c,#77,#78
	db #f6,#e3,#f4,#bd,#f4,#f9,#43,#86
	db #c8,#f6,#08,#fe,#e0,#9f,#a0,#eb
	db #15,#2b,#56,#54,#60,#52,#f4,#d6
	db #f8,#3a,#2c,#58,#57,#56,#55,#0c
	db #54,#53,#52,#51,#f1,#34,#e8,#44
	db #27,#4e,#00,#4d,#4c,#4b,#4a,#49
	db #48,#47,#46,#3b,#45,#44,#f5,#8e
	db #f2,#97,#f4,#97,#22,#fb,#88,#fa
	db #d5,#f0,#fa,#ef,#fa,#c9,#fa,#ab
	db #fa,#07,#41,#82,#80,#7e,#3c,#7c
	db #7a,#fa,#e8,#f3,#8d,#fa,#a5,#ee
	db #87,#19,#32,#ff,#f6,#fb,#f4,#ee
	db #e8,#e2,#fa,#bd,#fa,#2e,#fa,#b7
	db #fa,#3a,#fa,#b1,#ef,#f9,#46,#f4
	db #36,#f4,#2a,#3c,#fb,#d0,#fa,#6b
	db #f3,#42,#f4,#7e,#c4,#fa,#c3,#fa
	db #91,#50,#9f,#a0,#eb,#99,#2b,#56
	db #30,#54,#52,#f5,#5c,#f6,#bd,#2c
	db #58,#57,#56,#04,#55,#54,#53,#52
	db #51,#d9,#ba,#50,#27,#00,#4e,#4d
	db #4c,#4b,#4a,#49,#48,#47,#1d,#46
	db #45,#44,#f5,#13,#f3,#1d,#f4,#1c
	db #22,#fa,#0c,#f8,#fa,#5b,#fa,#73
	db #fa,#4f,#fa,#31,#fa,#8c,#41,#82
	db #80,#1e,#7e,#7c,#7a,#fa,#6d,#fe
	db #27,#fe,#58,#ec,#5b,#32,#da,#fd
	db #37,#f8,#73,#2c,#fd,#3d,#fc,#7f
	db #59,#fc,#83,#28,#db,#fd,#43,#f8
	db #8c,#1e,#fd,#12,#f8,#98,#21,#fd
	db #2a,#ec,#a4,#ef,#f4,#8c,#f8,#7f
	db #f2,#cc,#2c,#f2,#8a,#f4,#e9,#f4
	db #73,#e7,#67,#00,#2b,#57,#56,#28
	db #27,#53,#52,#24,#7e,#23,#ec,#e3
	db #e1,#91,#de,#bc,#fc,#85,#e9,#1e
	db #f4,#11,#64,#e7,#f4,#72,#f4,#4e
	db #f4,#b8,#19,#19,#fe,#9f,#f8,#c8
	db #f4,#bc,#fb,#f4,#05,#e7,#05,#f5
	db #a5,#f4,#8b,#fc,#4a,#3b,#ec,#46
	db #d0,#4e,#e0,#f4,#41,#e8,#8b,#e7
	db #ec,#2b,#57,#56,#28,#27,#0f,#53
	db #52,#24,#23,#f8,#73,#ed,#6a,#f8
	db #21,#f0,#25,#dd,#dc,#41,#f4,#a1
	db #4f,#e8,#71,#f4,#f6,#fe,#da,#21
	db #f6,#d4,#9c,#f4,#3c,#19,#19,#fe
	db #23,#f8,#4c,#f4,#40,#20,#3f,#3b
	db #3d,#3b,#fe,#d0,#ee,#68,#e8,#64
	db #3b,#dc,#64,#fd,#61,#e0,#f7,#bb
	db #f4,#b9,#f4,#d0,#de,#47,#55,#5f
	db #65,#7b,#de,#fa,#dd,#f9,#de,#fa
	db #e8,#fa,#c5,#14,#fe,#17,#fd,#fe
	db #b9,#fa,#f6,#11,#fd,#33,#fd,#0a
	db #fb,#03,#15,#2a,#fc,#15,#8b,#fa
	db #0e,#17,#2e,#2c,#fe,#2f,#2c,#f7
	db #e3,#fc,#29,#80,#f4,#dd,#6b,#78
	db #7f,#86,#97,#a0,#a9,#04,#b3,#be
	db #c9,#c9,#d5,#f4,#33,#3c,#77,#44
	db #78,#ea,#58,#32,#64,#65,#f7,#71
	db #2d,#59,#44,#5a,#f6,#7d,#28,#4f
	db #50,#f7,#8a,#43,#86,#80,#f6,#96
	db #42,#84,#83,#82,#81,#80,#7f,#03
	db #7e,#7d,#7c,#7b,#7a,#79,#fe,#6d
	db #f7,#66,#fd,#fe,#00,#fe,#92,#f8
	db #b9,#fe,#23,#fe,#87,#f8,#c5,#32
	db #fd,#70,#f6,#f8,#d1,#fe,#1e,#fe
	db #9f,#f8,#dd,#3b,#fd,#57,#ec,#e9
	db #35,#9f,#fe,#01,#6a,#6b,#f8,#02
	db #fa,#d5,#f9,#d6,#e6,#e9,#f0,#04
	db #fe,#ee,#d7,#f4,#53,#f4,#3f,#f4
	db #33,#d6,#4b,#f9,#74,#fe,#c3,#9f
	db #74,#a0,#ec,#ac,#e8,#dd,#ee,#b0
	db #4f,#fa,#e6,#59,#5a,#33,#b3,#b3
	db #f8,#f5,#fe,#9d,#c9,#c9,#f8,#01
	db #f4,#f5,#80,#f4,#15,#57,#54,#aa
	db #a7,#4b,#48,#9e,#00,#9b,#3f,#3c
	db #92,#8f,#32,#33,#30,#81,#f6,#c6
	db #de,#47,#55,#5f,#65,#de,#fa,#3e
	db #03,#6b,#78,#7f,#86,#97,#a0,#ee
	db #44,#f6,#5c,#fb,#fd,#65,#fd,#d9
	db #e6,#70,#fc,#89,#f8,#8c,#79,#fd
	db #93,#fe,#9b,#78,#78,#b8,#6f,#fd
	db #3b,#eb,#e9,#e8,#e7,#86,#4e,#9c
	db #00,#9a,#98,#96,#94,#92,#90,#8e
	db #8c,#22,#8a,#88,#f4,#0c,#50,#9f
	db #a0,#eb,#31,#4f,#b1,#e8,#30,#28
	db #fe,#48,#f7,#62,#2d,#59,#5a,#f7
	db #6e,#11,#32,#64,#65,#f6,#7a,#35
	db #6a,#6b,#f7,#87,#f8,#f4,#79,#f4
	db #86,#f4,#ff,#f4,#aa,#f3,#49,#42
	db #84,#83,#00,#82,#81,#80,#7f,#7e
	db #7d,#7c,#7b,#3f,#7a,#79,#fe,#e5
	db #f7,#de,#fb,#e5,#fc,#e9,#f8,#ec
	db #fe,#db,#f8,#fd,#dc,#f7,#f5,#f2
	db #de,#00,#12,#9c,#12,#20,#3f,#3d
	db #1a,#3b,#3b,#3c,#ee,#7c,#d0,#78
	db #3b,#f4,#a8,#22,#70,#43,#f6,#ce
	db #f4,#cd,#f3,#e4,#de,#47,#55,#5f
	db #3c,#65,#de,#fa,#f2,#fa,#f9,#fa
	db #fd,#fa,#d9,#14,#28,#c6,#fc,#11
	db #fa,#0a,#11,#21,#22,#fc,#1d,#fb
	db #17,#15,#60,#2a,#fc,#29,#fa,#22
	db #17,#2e,#2c,#2c,#2d,#60,#2c,#ee
	db #f8,#fa,#46,#6b,#78,#7f,#86,#97
	db #01,#a0,#a9,#b3,#be,#c9,#c9,#d5
	db #f9,#4b,#b1,#fa,#5f,#3c,#f4,#6c
	db #f4,#76,#32,#64,#65,#f7,#85,#11
	db #2d,#59,#5a,#f7,#91,#28,#4f,#50
	db #f7,#9d,#20,#43,#86,#f6,#a9,#42
	db #84,#83,#82,#81,#00,#80,#7f,#7e
	db #7d,#7c,#7b,#7a,#79,#ff,#fe,#81
	db #fe,#c2,#f8,#7b,#fe,#14,#fe,#a5
	db #f8,#cd,#fe,#37,#fe,#99,#be,#f8
	db #d9,#32,#fd,#84,#f8,#e5,#fe,#32
	db #fe,#b2,#f8,#f1,#3b,#f9,#fd,#6b
	db #ec,#fd,#f4,#e5,#f4,#d9,#f4,#cd
	db #1e,#1e,#fe,#11,#67,#3b,#fc,#39
	db #fc,#3e,#21,#22,#fe,#f9,#ec,#46
	db #ec,#cd,#7c,#59,#f4,#21,#f0,#29
	db #f4,#8b,#f4,#15,#e7,#09,#2b,#57
	db #01,#56,#28,#27,#53,#52,#24,#23
	db #f8,#91,#ff,#ed,#88,#f8,#3e,#f0
	db #42,#ec,#5e,#ef,#0c,#ef,#c0,#ee
	db #95,#f4,#14,#e7,#fc,#f8,#f7,#f3
	db #f4,#59,#19,#19,#fe,#40,#f8,#69
	db #f4,#5d,#c3,#f4,#a7,#f4,#89,#35
	db #35,#6a,#6b,#f8,#99,#f4,#38,#b3
	db #ee,#85,#3b,#e2,#93,#fe,#7f,#86
	db #86,#ec,#e2,#f4,#d6,#c2,#f4,#ca
	db #d0,#e2,#4f,#50,#9f,#a0,#ee,#42
	db #4f,#f8,#fe,#54,#f4,#1e,#f4,#b5
	db #ea,#42,#fe,#85,#59,#5a,#b3,#65
	db #b3,#f8,#8b,#fe,#34,#c9,#c9,#fe
	db #97,#64,#fc,#99,#e0,#fe,#9e,#f4
	db #8b,#f4,#ac,#57,#54,#aa,#a7,#4b
	db #00,#48,#9e,#9b,#3f,#3c,#92,#8f
	db #33,#40,#30,#f6,#5d,#de,#47,#55
	db #5f,#65,#de,#81,#fa,#d4,#6b,#78
	db #7f,#86,#97,#a0,#f3,#da,#fd,#f4
	db #d4,#fa,#f9,#fd,#70,#e6,#06,#fc
	db #1f,#f8,#22,#79,#fc,#1d,#bf,#fe
	db #32,#78,#d5,#05,#fb,#31,#fc,#6f
	db #eb,#68,#fd,#d1,#eb,#81,#80,#e8
	db #7f,#4e,#9c,#9a,#98,#96,#94,#92
	db #04,#90,#8e,#8c,#8a,#88,#f3,#a2
	db #50,#9f,#62,#a0,#eb,#c9,#e8,#c8
	db #28,#4f,#50,#f6,#f9,#2d,#22,#59
	db #5a,#f7,#06,#32,#64,#65,#f7,#12
	db #35,#3e,#6a,#6b,#f7,#1e,#e8,#11
	db #f4,#97,#f4,#41,#f4,#e0,#42,#00
	db #84,#83,#82,#81,#80,#7f,#7e,#7d
	db #0f,#7c,#7b,#7a,#79,#fe,#7d,#f5
	db #74,#fd,#7d,#fc,#7f,#fe,#f8,#82
	db #fe,#71,#fd,#72,#f7,#8b,#f2,#74
	db #00,#a8,#9c,#a8,#1e,#26,#3b,#3c
	db #f7,#0f,#22,#43,#f6,#1b,#f4,#0e
	db #19,#61,#32,#f6,#33,#dc,#0e,#3c
	db #28,#4f,#50,#f7,#64,#11,#2d,#59
	db #5a,#f7,#70,#32,#64,#65,#f7,#7c
	db #dc,#f4,#6f,#f4,#63,#3c,#f5,#02
	db #f4,#7b,#f4,#b5,#43,#86,#88,#f5
	db #c4,#50,#9f,#a0,#eb,#d1,#2b,#56
	db #54,#60,#52,#f5,#94,#f7,#f5,#2c
	db #58,#57,#56,#55,#08,#54,#53,#52
	db #51,#d8,#f0,#27,#4e,#4d,#00,#4c
	db #4b,#4a,#49,#48,#47,#46,#45,#75
	db #44,#f5,#4b,#f2,#55,#f5,#54,#22
	db #fb,#44,#28,#fa,#93,#f0,#fa,#ab
	db #fa,#87,#fa,#68,#fa,#c3,#41,#82
	db #80,#7e,#3e,#7c,#7a,#fa,#a5,#fe
	db #5e,#fe,#8f,#f8,#92,#f3,#91,#32
	db #de,#fd,#6e,#f8,#ab,#2c,#fd,#74
	db #f8,#b7,#fc,#67,#f8,#c3,#1e,#df
	db #fd,#49,#f8,#cf,#21,#fd,#61,#ec
	db #db,#f4,#c3,#f4,#b7,#e8,#b7,#f0
	db #fe,#1f,#f5,#18,#f4,#ab,#e7,#9f
	db #2b,#57,#56,#28,#07,#27,#53,#52
	db #24,#23,#f4,#19,#f2,#66,#e8,#cf
	db #af,#fc,#74,#4f,#f0,#f7,#59,#ef
	db #03,#e9,#55,#f3,#48,#f5,#ab,#c7
	db #f4,#84,#f4,#ee,#43,#19,#19,#fe
	db #d6,#f8,#ff,#f4,#f2,#f6,#fd,#45
	db #e6,#18,#fc,#31,#f8,#34,#79,#fd
	db #3b,#fe,#43,#78,#98,#b8,#17,#43
	db #86,#ea,#90,#e8,#8f,#86,#4e,#9c
	db #00,#9a,#98,#96,#94,#92,#90,#8e
	db #8c,#23,#8a,#88,#f4,#b4,#50,#9f
	db #a0,#ea,#d9,#e8,#d8,#11,#28,#4f
	db #50,#f7,#0a,#2d,#59,#5a,#f7,#16
	db #11,#32,#64,#65,#f7,#22,#35,#6a
	db #6b,#f7,#2e,#f0,#e8,#21,#f4,#a7
	db #f4,#51,#f4,#f1,#42,#42,#84,#83
	db #00,#82,#81,#80,#7f,#7e,#7d,#7c
	db #7b,#3f,#7a,#79,#fe,#8d,#f7,#86
	db #fb,#8c,#fc,#90,#f8,#93,#fe,#82
	db #f8,#fd,#83,#f7,#9c,#f2,#85,#00
	db #b9,#9c,#b9,#ef,#24,#2a,#3b,#30
	db #32,#f5,#1f,#f7,#2e,#f6,#25,#23
	db #ed,#2a,#e7,#1f,#80,#d7,#6e,#77
	db #07,#f7,#00,#00,#00,#00,#00,#00
	db #b1,#00,#00,#00,#50,#00,#50,#00
	db #50,#f7,#00,#50,#00,#50,#00,#50
	db #74,#50,#01,#fb,#d9,#fa,#dd,#f9
	db #de,#fe,#f6,#e3,#ce,#b1,#f9,#21
	db #f0,#dd,#e8,#d5,#00,#5a,#1d,#5a
	db #01,#ff,#fb,#3a,#fa,#3e,#f4,#38
	db #ee,#38,#fa,#55,#f9,#55,#00,#74
	db #00,#74,#df,#00,#74,#83,#74,#01
	db #fb,#ee,#fa,#f2,#fa,#f9,#f6,#f8
	db #ce,#c6,#ff,#f4,#fe,#ee,#04,#f9
	db #4b,#ca,#04,#00,#9a,#00,#9a,#00
	db #9a,#c7,#9a,#7f,#01,#fb,#d0,#fa
	db #d4,#f4,#ce,#f9,#e0,#f4,#d4,#f4
	db #e6,#00,#0a,#ff,#00,#0a,#00,#0a
	db #00,#0a,#00,#0a,#00,#0a,#00,#0a
	db #00,#0a,#00,#0a,#80,#73,#0a,#07
	db #04,#88,#fe,#00,#06,#06,#07,#fa
	db #00,#01,#01,#00,#f7,#fd,#0e,#ee
	db #06,#e8,#12,#f4,#36,#0e,#fb,#48
	db #fa,#2a,#f4,#4e,#ff,#f4,#24,#f4
	db #66,#f4,#48,#f4,#78,#e8,#06,#e0
	db #48,#cb,#67,#f4,#eb,#ff,#b2,#48
	db #ee,#90,#dc,#09,#e7,#38,#fa,#9a
	db #fa,#ab,#f4,#51,#f2,#51,#ff,#fa
	db #cb,#f0,#71,#fd,#cf,#f1,#24,#f6
	db #db,#f5,#cd,#f6,#fd,#f1,#e1,#ff
	db #f3,#16,#d9,#cd,#ed,#00,#f1,#5d
	db #fd,#47,#f0,#49,#dd,#c7,#ec,#95
	db #ff,#e5,#60,#ec,#14,#dc,#2e,#ee
	db #c1,#f2,#1a,#fa,#34,#f5,#da,#f3
	db #40,#ff,#f1,#f2,#eb,#00,#d6,#b5
	db #e2,#03,#e4,#5f,#ed,#7a,#e5,#8c
	db #f4,#f7,#ff,#d7,#b2,#da,#7b,#ee
	db #9b,#f0,#16,#eb,#25,#e7,#46,#f4
	db #b3,#f5,#5f,#ff,#f3,#c5,#b2,#16
	db #e1,#89,#ca,#e4,#e7,#4a,#f4,#d1
	db #e4,#de,#d3,#f9,#ff,#f0,#20,#db
	db #97,#e4,#67,#f4,#39,#f5,#e4,#f3
	db #4b,#dd,#fd,#f9,#6f,#ff,#dc,#c5
	db #e2,#0e,#ea,#69,#f0,#c7,#dd,#8f
	db #f4,#01,#e5,#be,#f0,#09,#ff,#dc
	db #e9,#f0,#a6,#e2,#1c,#f6,#d9,#e7
	db #50,#f4,#be,#f5,#69,#f3,#d0,#ff
	db #df,#82,#e0,#42,#ed,#f3,#f3,#2b
	db #bf,#e3,#e8,#55,#ea,#dc,#c1,#52
	db #ff,#ee,#2b,#f6,#e0,#e5,#4c,#ee
	db #d4,#f2,#2e,#fa,#48,#f5,#ed,#f3
	db #54,#fb,#f1,#a4,#f5,#15,#cc,#be
	db #e2,#17,#f6,#cd,#04,#fe,#dd,#fd
	db #bc,#7f,#04,#fe,#d8,#fb,#bc,#fd
	db #7f,#fe,#ed,#f8,#e3,#dc,#97,#f6
	db #0a,#ef,#fa,#dd,#f3,#e9,#fa,#33
	db #0e,#fe,#3f,#f7,#11,#f4,#33,#ec
	db #f6,#ff,#f3,#09,#f0,#af,#f1,#56
	db #f0,#16,#eb,#fc,#ee,#5a,#fa,#cd
	db #f5,#73,#ff,#f3,#d9,#e8,#8c,#f0
	db #10,#f5,#fa,#e9,#b1,#f1,#79,#ec
	db #21,#e8,#97,#ff,#d0,#11,#f9,#10
	db #e1,#e5,#d7,#66,#f3,#bf,#ee,#35
	db #dc,#ae,#f5,#0e,#6d,#04,#fe,#3e
	db #fd,#28,#04,#fe,#39,#fd,#41,#0e
	db #fb,#4a,#ff,#fa,#3e,#fd,#4d,#fc
	db #41,#fa,#3f,#f6,#5d,#ba,#aa,#ed
	db #21,#ef,#28,#ff,#d0,#77,#e1,#a6
	db #f4,#14,#e7,#d1,#ca,#89,#ed,#b8
	db #dc,#d1,#ee,#63,#ff,#f2,#bd,#fa
	db #d7,#fa,#8f,#ee,#de,#dd,#95,#d6
	db #57,#e2,#a6,#f2,#19,#ff,#d7,#0e
	db #e7,#06,#d8,#ef,#d3,#16,#ee,#3d
	db #ea,#b7,#eb,#46,#e6,#7f,#ff,#fa
	db #5c,#f5,#01,#f3,#68,#df,#b8,#ec
	db #da,#e7,#ed,#e8,#2b,#f3,#24,#b7
	db #fc,#e8,#04,#fe,#f2,#fd,#d0,#04
	db #fe,#ed,#fb,#d0,#fe,#fb,#fe,#fe
	db #01,#f8,#f8,#dc,#ab,#f6,#1e,#fa
	db #f2,#f4,#fe,#fa,#46,#0e,#ff,#fe
	db #52,#f7,#25,#fe,#3b,#f5,#47,#ec
	db #0a,#f3,#1d,#ee,#c3,#f0,#db,#ff
	db #e6,#c7,#ec,#11,#f4,#db,#f5,#87
	db #f3,#ed,#dd,#9f,#f3,#0b,#e2,#6e
	db #ff,#e8,#b0,#f3,#23,#d0,#11,#e8
	db #73,#ea,#f9,#cd,#0e,#f3,#b5,#ef
	db #49,#ff,#ee,#60,#e2,#4e,#ec,#45
	db #fa,#65,#f5,#0b,#f3,#71,#dd,#23
	db #e2,#e6,#ff,#ec,#33,#e9,#3b,#ca
	db #8f,#e8,#f6,#e4,#7d,#c7,#f9,#f6
	db #5d,#e1,#3b,#b6,#e8,#d6,#04,#fe
	db #d4,#fd,#bf,#04,#fe,#cf,#fd,#d7
	db #0e,#ff,#fb,#e0,#fa,#d4,#fd,#e3
	db #fc,#d7,#f9,#d4,#f5,#f4,#da,#a4
	db #f9,#19,#ff,#dc,#6f,#e8,#b8,#db
	db #0c,#d6,#32,#f8,#9f,#d1,#02,#ed
	db #62,#ee,#a5,#ff,#ee,#50,#dc,#ca
	db #e7,#fb,#f4,#67,#f5,#14,#f3,#79
	db #e6,#2c,#e4,#e4,#ff,#f0,#b6,#f0
	db #40,#e9,#44,#e8,#37,#ee,#b0,#ec
	db #b5,#ef,#06,#df,#85,#ff,#f9,#39
	db #db,#ad,#f7,#46,#ef,#d6,#dc,#ed
	db #e7,#7f,#f3,#eb,#f5,#98,#ff,#f3
	db #fe,#dd,#b0,#db,#73,#ee,#9d,#ee
	db #46,#c3,#1c,#ef,#8a,#b7,#09,#ff
	db #f3,#e3,#ee,#59,#dc,#d2,#e6,#02
	db #f4,#70,#f5,#1c,#f3,#82,#f7,#65
	db #ff,#c7,#db,#ed,#45,#e9,#4c,#d6
	db #a1,#e1,#ca,#f4,#38,#ca,#f5,#ec
	db #1f,#ff,#f9,#51,#ef,#de,#dc,#56
	db #e7,#26,#f3,#f4,#fa,#b3,#ee,#02
	db #bf,#57,#ff,#ed,#ca,#e9,#d1,#d6
	db #25,#e1,#4e,#f4,#bc,#f3,#b6,#be
	db #25,#ee,#61,#ff,#dc,#79,#e7,#0b
	db #f3,#77,#f5,#24,#f3,#8a,#dd,#3c
	db #de,#ff,#f0,#50,#ff,#e9,#54,#de
	db #a8,#e4,#5c,#ef,#16,#fc,#46,#b7
	db #99,#f8,#75,#f2,#f1,#fe,#fa,#a8
	db #dd,#60,#e7,#8f,#f4,#fc,#f8,#a8
	db #f6,#a9,#fc,#15,#04,#e9,#fe,#1f
	db #fb,#16,#fd,#0f,#06,#fe,#26,#00
	db #05,#fe,#2e,#ec,#fa,#f4,#f4,#1f
	db #ed,#2a,#04,#fe,#4b,#fd,#53,#0e
	db #0e,#fe,#f6,#40,#f8,#37,#f4,#33
	db #fc,#70,#fe,#5c,#fc,#81,#ee,#c4
	db #04,#31,#07,#38,#38,#30,#30,#31
	db #f9,#00,#fa,#0c,#ee,#07,#df,#e8
	db #13,#f5,#37,#30,#fe,#43,#fd,#4a
	db #f8,#29,#f5,#55,#f4,#25,#ff,#f5
	db #6c,#f4,#48,#f3,#48,#e9,#07,#d0
	db #48,#da,#77,#f5,#ec,#b1,#48,#fe
	db #ef,#91,#db,#09,#e8,#39,#fa,#9a
	db #f9,#9a,#f4,#52,#f5,#b9,#20,#bf
	db #fb,#ad,#21,#fb,#a1,#f3,#d0,#fb
	db #c5,#f4,#d6,#f9,#ed,#f4,#ca,#f7
	db #f4,#fb,#f2,#e1,#f5,#15,#d6,#ca
	db #21,#e2,#f5,#fa,#44,#ed,#37,#ff
	db #e1,#2c,#ee,#94,#e2,#5d,#ee,#14
	db #dc,#2c,#f3,#bf,#ee,#bf,#f9,#20
	db #ff,#f4,#d8,#f5,#3f,#ee,#ef,#ed
	db #00,#d5,#b3,#e3,#02,#e8,#fb,#f3
	db #5c,#ff,#f4,#b1,#e6,#8c,#f5,#f6
	db #f3,#1f,#e2,#bd,#db,#7b,#ef,#9a
	db #ee,#14,#ff,#e1,#9e,#ee,#99,#f9
	db #a5,#f4,#5d,#f5,#c4,#fa,#b7,#b6
	db #19,#e3,#88,#ff,#e7,#80,#e2,#fa
	db #ec,#17,#f5,#7b,#ee,#36,#ee,#7a
	db #d4,#f9,#ef,#1f,#ff,#db,#97,#e7
	db #67,#fa,#2a,#f9,#1e,#f4,#e2,#f5
	db #4a,#dc,#fa,#f9,#79,#ff,#db,#c3
	db #e3,#0d,#e8,#67,#f3,#c7,#db,#8c
	db #f5,#00,#e3,#bc,#f1,#09,#ff,#dc
	db #e8,#ef,#a5,#da,#bb,#e8,#4e,#fa
	db #b0,#f9,#b0,#f4,#67,#f5,#cf,#ff
	db #dc,#7f,#e2,#42,#f2,#5f,#ef,#24
	db #be,#e0,#e7,#53,#e9,#db,#c2,#52
	db #ff,#ef,#2a,#f4,#de,#e7,#4c,#f3
	db #d2,#ee,#d2,#f9,#34,#f4,#eb,#f5
	db #53,#fa,#ee,#a1,#f5,#15,#cd,#be
	db #e3,#16,#f4,#cb,#05,#fe,#c9,#10
	db #11,#10,#15,#05,#fe,#db,#11,#11
	db #15,#fe,#d7,#bd,#fd,#e6,#15,#fe
	db #dc,#fb,#e4,#db,#95,#f5,#09,#04
	db #fe,#21,#1e,#18,#18,#1c,#fc,#e9
	db #fe,#f4,#f9,#ef,#fa,#33,#01,#ff
	db #f5,#0f,#f4,#33,#ed,#f6,#f3,#08
	db #ef,#ae,#e7,#c4,#e8,#b9,#ee,#ad
	db #ff,#f9,#b9,#f4,#71,#f5,#d8,#e7
	db #89,#ee,#0e,#e1,#a6,#ee,#76,#ed
	db #21,#ff,#e9,#96,#f4,#69,#db,#1b
	db #f9,#0f,#e2,#e4,#d7,#64,#f2,#8c
	db #ef,#34,#a8,#dc,#ac,#20,#f4,#0d
	db #04,#fe,#36,#18,#18,#1c,#43,#05
	db #fe,#3c,#11,#11,#15,#00,#fb,#33
	db #fa,#3e,#51,#01,#fb,#26,#05,#fe
	db #57,#10,#10,#15,#f5,#5c,#ff,#fe
	db #66,#be,#ac,#ed,#81,#f4,#26,#cb
	db #70,#e0,#a4,#f5,#13,#e7,#cf,#ff
	db #c9,#87,#fd,#70,#f1,#ba,#dc,#cf
	db #e8,#61,#f9,#c1,#f9,#c2,#f8,#7a
	db #ff,#f1,#de,#dc,#92,#d5,#55,#e3
	db #a5,#f3,#59,#d6,#0b,#ec,#34,#f5
	db #98,#ff,#dc,#f3,#d4,#16,#ef,#3c
	db #e8,#b5,#ed,#46,#ed,#eb,#fa,#48
	db #f9,#48,#ff,#f4,#ff,#f5,#67,#dc
	db #b5,#e8,#da,#ec,#f1,#e9,#2a,#f2
	db #22,#fb,#e7,#42,#05,#fe,#dd,#10
	db #10,#15,#05,#fe,#f0,#11,#3f,#11
	db #15,#fe,#ec,#fd,#fb,#fe,#f1,#fb
	db #f9,#ee,#48,#e7,#8a,#a3,#fb,#23
	db #04,#fe,#35,#18,#18,#1c,#f4,#fe
	db #fa,#46,#5f,#01,#f5,#23,#05,#f4
	db #46,#ee,#0a,#f2,#1b,#ef,#c2,#ee
	db #d9,#ff,#e8,#c7,#ed,#0f,#fa,#cd
	db #f9,#cd,#f4,#85,#f5,#ec,#dc,#9c
	db #f4,#1b,#ff,#e0,#6b,#e9,#af,#f3
	db #1b,#d0,#0f,#e7,#71,#e9,#f8,#cf
	db #0e,#f3,#d2,#ff,#ef,#47,#ed,#5e
	db #e3,#4d,#fa,#44,#f3,#49,#f9,#44
	db #f4,#09,#f5,#70,#ff,#dc,#20,#e2
	db #e4,#f2,#01,#e3,#33,#ca,#8d,#e7
	db #f4,#e3,#7c,#c8,#f9,#e8,#f5,#5c
	db #e1,#3b,#e8,#d6,#04,#fe,#cc,#18
	db #18,#1c,#43,#05,#fe,#d2,#11,#11
	db #15,#00,#fb,#c9,#fa,#d4,#48,#01
	db #fb,#bd,#05,#05,#fe,#ed,#10,#10
	db #15,#ff,#f4,#f3,#dc,#a4,#f3,#4e
	db #e1,#73,#ee,#b7,#d0,#05,#db,#36
	db #f8,#aa,#ff,#fc,#b1,#c4,#67,#ec
	db #a2,#ef,#4f,#dc,#c8,#e8,#97,#fa
	db #59,#f9,#59,#ff,#f4,#12,#f5,#78
	db #e3,#29,#e0,#e4,#f3,#f8,#ee,#17
	db #ee,#c0,#e8,#35,#ff,#ed,#ae,#ed
	db #e5,#ee,#04,#de,#84,#f9,#5d,#db
	db #ad,#f9,#64,#ef,#d4,#ef,#dc,#4c
	db #e8,#7d,#fa,#dd,#38,#f9,#dd,#f4
	db #96,#f5,#fd,#dc,#ad,#ff,#d9,#71
	db #f0,#9d,#ed,#44,#c2,#1b,#f0,#8a
	db #fa,#57,#c3,#6f,#ed,#ab,#ff,#ef
	db #58,#dc,#d0,#ed,#9f,#f4,#5b,#f9
	db #61,#f4,#1a,#f5,#81,#f4,#55,#ff
	db #ce,#db,#ee,#0e,#e3,#44,#db,#9f
	db #db,#c3,#f5,#37,#cf,#f3,#ef,#25
	db #ff,#f2,#35,#ee,#db,#dc,#54,#e8
	db #24,#fa,#e6,#f8,#90,#fa,#cf,#ef
	db #00,#ff,#be,#54,#ed,#29,#e9,#cf
	db #d6,#23,#e0,#4c,#f5,#bb,#ee,#77
	db #c2,#28,#ef,#ef,#60,#dc,#77,#e8
	db #09,#20,#fa,#69,#f9,#69,#f4,#22
	db #f5,#89,#ff,#dc,#39,#dc,#fd,#ed
	db #26,#ed,#0f,#dd,#a7,#e7,#c9,#ed
	db #13,#fb,#45,#ff,#b7,#99,#f9,#75
	db #f4,#76,#fa,#ab,#dc,#5d,#e8,#8d
	db #fa,#ee,#f9,#ee,#e8,#f6,#a6,#f7
	db #a9,#fb,#14,#04,#fe,#1a,#18,#18
	db #1c,#8d,#fe,#f8,#11,#11,#15,#fb
	db #25,#f8,#2e,#05,#fe,#20,#3b,#10
	db #10,#fa,#29,#fd,#f7,#f5,#2c,#14
	db #fb,#20,#fa,#3c,#50,#30,#fc,#52
	db #38,#f9,#44,#1c,#1c,#14,#14,#de
	db #f8,#48,#f5,#69,#14,#fe,#75,#fd
	db #82,#f7,#47,#f7,#8e,#31,#0b,#88
	db #fd,#00,#0a,#08,#0c,#fd,#06,#0b
	db #09,#0f,#1a,#0d,#09,#00,#fe,#0f
	db #f4,#06,#0d,#fd,#1e,#0c,#69,#0a
	db #fa,#1e,#fa,#18,#0e,#fd,#30,#0d
	db #0a,#fa,#30,#4f,#0f,#fd,#3c,#0e
	db #0b,#f8,#3c,#fe,#26,#fe,#02,#fa
	db #2a,#ff,#f3,#4e,#fa,#43,#ed,#4f
	db #f5,#4a,#f3,#79,#f5,#62,#f3,#91
	db #e3,#4a,#ff,#c9,#66,#f2,#bb,#b4
	db #4b,#ee,#91,#dd,#0a,#e5,#38,#fb
	db #9c,#f9,#a7,#ff,#f5,#53,#f3,#b9
	db #db,#0b,#de,#2f,#f2,#e1,#f3,#15
	db #db,#cc,#fa,#29,#ff,#e4,#f7,#fa
	db #44,#f1,#49,#dd,#c6,#ec,#94,#e4
	db #5f,#ed,#14,#dc,#2d,#ff,#f2,#cc
	db #ef,#c1,#f9,#2d,#f5,#d9,#f3,#3f
	db #f3,#f1,#e9,#fd,#d6,#b4,#ff,#e2
	db #02,#e8,#fc,#f2,#5d,#f9,#b3,#e3
	db #89,#f4,#f6,#d9,#b1,#d8,#78,#ff
	db #ee,#9a,#f2,#15,#e9,#22,#e7,#45
	db #fb,#a7,#f9,#b2,#f5,#5e,#f2,#c4
	db #ff,#b3,#16,#e2,#88,#fe,#38,#ce
	db #e4,#ea,#15,#f4,#7b,#dd,#d7,#d4
	db #f9,#ff,#ef,#1f,#db,#97,#ee,#c9
	db #f2,#17,#f9,#38,#f5,#e3,#f3,#4a
	db #dd,#fc,#ff,#f8,#32,#dd,#c5,#e2
	db #0d,#e9,#68,#f1,#c7,#dd,#8e,#f4
	db #00,#e4,#bd,#ff,#f1,#09,#dc,#e8
	db #ef,#a5,#e2,#1c,#f7,#d9,#e7,#4f
	db #fb,#b2,#f9,#bd,#ff,#f5,#68,#f3
	db #cf,#de,#81,#e4,#42,#f0,#5d,#ed
	db #24,#c2,#e2,#eb,#21,#ff,#f4,#84
	db #ef,#42,#c2,#52,#ee,#2a,#f5,#df
	db #e6,#4c,#f2,#df,#ef,#d4,#ff,#f9
	db #41,#f5,#ec,#f3,#53,#f0,#a3,#f5
	db #15,#cd,#be,#e2,#16,#e8,#10,#ff
	db #f3,#09,#dc,#96,#f4,#09,#f8,#03
	db #de,#cd,#e7,#f0,#f2,#1a,#f0,#af
	db #ff,#f6,#25,#e4,#30,#e7,#f7,#f9
	db #65,#fb,#c8,#f5,#72,#f3,#d8,#e6
	db #8b,#ff,#f1,#42,#e6,#50,#ed,#9c
	db #e9,#a3,#e8,#96,#f3,#58,#dd,#1d
	db #f9,#0f,#ff,#df,#e4,#da,#67,#f2
	db #8c,#ee,#34,#dc,#ad,#e6,#7b,#fb
	db #40,#f9,#4b,#ff,#f5,#f7,#f7,#5d
	db #bb,#a9,#eb,#1f,#f5,#ba,#ce,#71
	db #de,#a2,#f4,#13,#ff,#e5,#d0,#cc
	db #8a,#ed,#b7,#dc,#d0,#ed,#62,#f4
	db #bd,#f9,#d0,#f8,#7b,#ff,#f0,#df
	db #dd,#94,#d6,#56,#e2,#a5,#f1,#00
	db #d9,#0e,#ec,#40,#f4,#98,#ff,#dd
	db #f4,#d4,#16,#ee,#3c,#e9,#b6,#ef
	db #46,#e9,#e9,#fb,#4a,#f9,#55,#ff
	db #f5,#00,#f3,#67,#de,#b7,#ec,#da
	db #e8,#ed,#ed,#bc,#f0,#7a,#d9,#89
	db #ff,#e3,#b1,#f4,#1d,#dc,#79,#e4
	db #fe,#f0,#19,#ee,#c2,#da,#3b,#e8
	db #0c,#ff,#fb,#cf,#f9,#da,#f5,#86
	db #f3,#ec,#dd,#9e,#d5,#60,#eb,#af
	db #f1,#01,#ff,#d2,#0f,#eb,#3e,#f4
	db #a2,#ef,#5f,#d1,#0e,#f1,#9f,#ee
	db #47,#ee,#5f,#ff,#e2,#4d,#fd,#45
	db #f0,#f3,#f9,#5e,#f5,#0a,#f3,#70
	db #dd,#22,#e3,#e5,#ff,#f2,#13,#e2
	db #33,#cb,#8e,#e7,#f4,#e6,#7c,#c5
	db #f6,#f5,#5c,#e4,#3b,#ff,#e4,#d3
	db #ee,#c9,#f9,#e1,#f8,#8d,#f6,#8e
	db #d6,#9f,#f9,#24,#dc,#6e,#ff,#ec
	db #49,#d6,#07,#d7,#32,#f7,#aa,#d1
	db #02,#f4,#9f,#e8,#9e,#ee,#4f,#ff
	db #dc,#c9,#e7,#98,#fb,#5b,#f9,#66
	db #f5,#13,#f3,#78,#e5,#2b,#e4,#e4
	db #ff,#f3,#b6,#ee,#3d,#e9,#43,#e8
	db #36,#ee,#af,#ec,#b4,#ef,#05,#de
	db #84,#ff,#f9,#51,#de,#ad,#f5,#43
	db #ef,#d5,#dc,#ec,#e7,#7e,#fc,#df
	db #f8,#ac,#ff,#f4,#96,#f3,#fd,#dd
	db #af,#d9,#72,#f0,#9e,#ee,#45,#c1
	db #1b,#f1,#8b,#ff,#bc,#08,#ee,#ac
	db #ee,#58,#dc,#d1,#ee,#a0,#f1,#5b
	db #fb,#71,#f5,#1b,#ff,#f3,#81,#f6
	db #57,#cd,#db,#ef,#0f,#e2,#44,#db
	db #a0,#dc,#c4,#f4,#37,#ff,#cf,#f4
	db #f2,#26,#f0,#33,#ed,#db,#dc,#55
	db #e7,#25,#fb,#e8,#fb,#f3,#ff,#fb
	db #a2,#fa,#a1,#f0,#03,#c2,#56,#f1
	db #95,#e2,#c9,#d9,#24,#de,#4a,#ff
	db #f4,#bb,#f3,#78,#be,#24,#ee,#60
	db #dc,#78,#e6,#0a,#fb,#6b,#f9,#77
	db #ff,#f5,#23,#f3,#89,#dd,#3b,#dd
	db #fe,#f1,#50,#e9,#53,#dd,#a7,#e4
	db #5c,#ff,#f0,#16,#fb,#45,#b7,#99
	db #f9,#75,#f1,#e4,#fb,#a8,#dd,#5f
	db #e7,#8e,#f8,#fb,#f0,#f9,#fb,#f8
	db #a7,#f6,#a8,#e9,#b9,#0e,#0c,#08
	db #cf,#fc,#2e,#fd,#37,#0d,#0a,#fa
	db #31,#f9,#30,#fe,#22,#fb,#46,#91
	db #fd,#22,#0a,#0a,#f4,#4a,#0c,#0a
	db #07,#fd,#59,#4f,#0c,#fd,#68,#0b
	db #09,#f4,#62,#fe,#5f,#fc,#70,#fc
	db #5e,#31,#08,#08,#f9,#7a,#fb,#87
	db #0a,#09,#06,#fc,#89,#00,#d5,#00
	db #00,#37,#00,#03,#ef,#ca,#04,#e8
	db #dc,#05,#e2,#f5,#57,#06,#e9,#14
	db #07,#e9,#2c,#08,#fd,#44,#ee,#42
	db #fd,#53,#77,#09,#fd,#5d,#fe,#59
	db #ee,#5d,#0a,#fd,#75,#fd,#70,#fa
	db #75,#bb,#ee,#7c,#0b,#fd,#94,#fe
	db #90,#ee,#94,#0c,#fc,#ac,#fe,#a8
	db #bb,#ee,#ad,#0d,#fd,#c5,#fe,#c1
	db #ee,#c5,#0e,#fd,#dd,#fe,#d9,#bf
	db #ee,#dd,#0f,#fd,#f5,#fe,#f1,#d8
	db #f5,#d5,#f8,#b1,#11,#b1,#24,#ff
	db #68,#35,#56,#2f,#b7,#c1,#bb,#fd
	db #8c,#7f,#bd,#79,#ea,#6d,#56,#34
	db #ff,#f8,#2d,#98,#f8,#a5,#e0,#de
	db #f8,#87,#a7,#e6,#93,#7c,#58,#5a
	db #68,#ff,#ad,#70,#a8,#f3,#99,#88
	db #db,#57,#83,#88,#ec,#8b,#70,#5c
	db #92,#fe,#ff,#a0,#9d,#80,#ba,#6e
	db #ba,#a6,#0f,#d9,#44,#98,#2e,#d0
	db #f8,#98,#c6,#ff,#ad,#bb,#8d,#3f
	db #e1,#e3,#9e,#19,#87,#02,#85,#a6
	db #95,#d2,#8b,#5c,#ff,#6b,#bf,#ee
	db #40,#62,#7e,#8c,#b9,#ab,#a1,#86
	db #f0,#92,#33,#82,#d9,#ff,#8c,#5c
	db #aa,#93,#95,#82,#8d,#7a,#62,#17
	db #cd,#34,#a7,#12,#9d,#3b,#ff,#b3
	db #ed,#a9,#39,#95,#29,#be,#63,#86
	db #6e,#6f,#57,#d4,#b0,#86,#32,#d5
	db #a1,#81,#9c,#66,#0b,#fd,#1f,#0a
	db #fb,#23,#09,#fe,#29,#53,#08,#fe
	db #2c,#07,#fb,#2f,#06,#06,#f9,#25
	db #fa,#29,#95,#f7,#2e,#06,#05,#fb
	db #4e,#04,#fe,#54,#03,#fb,#57,#55
	db #02,#fe,#5d,#01,#fe,#60,#03,#fd
	db #60,#00,#cf,#67,#00,#f5,#00,#00
	db #00,#00,#00,#00,#b1,#00,#0f,#fa
	db #50,#0e,#fc,#57,#fa,#f9,#50,#f3
	db #56,#94,#64,#ee,#c3,#f3,#e1,#0d
	db #fb,#fb,#0c,#9f,#fd,#01,#0b,#0b
	db #e7,#c9,#e8,#fb,#b2,#20,#da,#55
	db #dc,#ab,#ff,#e2,#d0,#a5,#e2,#c9
	db #18,#e8,#81,#dc,#74,#e7,#a3,#dc
	db #bd,#cf,#c8,#ff,#f8,#73,#dc,#31
	db #d7,#93,#e7,#4e,#c9,#4f,#f1,#ab
	db #de,#0f,#c4,#87,#ff,#d6,#ff,#e8
	db #1d,#db,#e0,#d4,#10,#b3,#9f,#e7
	db #35,#dc,#ec,#e8,#35,#ff,#c9,#ec
	db #f5,#6c,#c9,#76,#dc,#65,#d4,#70
	db #ca,#6b,#ed,#40,#e2,#3a,#b2,#c0
	db #40,#0e,#f9,#dc,#fe,#d9,#0a,#09
	db #fe,#db,#0d,#ff,#f6,#dd,#d0,#f9
	db #fb,#e7,#fd,#eb,#f5,#ef,#fc,#37
	db #fe,#d5,#fe,#ed,#03,#09,#09,#07
	db #07,#05,#05,#f2,#33,#ec,#c7,#ff
	db #e5,#aa,#e7,#b8,#e4,#c5,#e0,#8d
	db #d5,#95,#f3,#e3,#be,#9b,#b1,#27
	db #ef,#b8,#45,#bd,#5c,#ef,#e8,#0e
	db #f7,#3d,#fe,#36,#f6,#3c,#f4,#4c
	db #e5,#f8,#5e,#f8,#65,#ed,#12,#0b
	db #0a,#fe,#88,#09,#fe,#8b,#55,#08
	db #fe,#8e,#07,#fe,#91,#06,#fe,#94
	db #05,#fe,#97,#4f,#04,#fe,#9a,#03
	db #03,#b8,#6f,#e1,#cf,#cf,#d5,#ca
	db #ee,#fb,#e8,#61,#e7,#6c,#dc,#92
	db #fe,#5f,#fb,#c3,#0a,#fb,#c9,#e8
	db #49,#aa,#fc,#c8,#09,#fe,#eb,#08
	db #fe,#ee,#07,#fe,#f1,#06,#aa,#fe
	db #f4,#05,#fe,#f7,#04,#fe,#fa,#03
	db #fe,#fd,#02,#ad,#fd,#00,#01,#fe
	db #04,#00,#00,#07,#90,#07,#0f,#fa
	db #78,#54,#0e,#fc,#7f,#0d,#fb,#84
	db #0c,#fd,#8a,#0b,#0b,#fb,#dc,#78
	db #e7,#9b,#e8,#c1,#fa,#b5,#f5,#ba
	db #0e,#f9,#f1,#fe,#ee,#0f,#0a,#09
	db #0b,#0d,#f6,#f2,#d0,#0d,#ee,#fc
	db #fc,#4a,#c0,#fe,#ea,#fe,#f0,#09
	db #09,#07,#07,#05,#05,#ff,#f9,#39
	db #f3,#04,#ea,#e0,#e0,#c5,#d7,#cd
	db #c2,#88,#cf,#c7,#cf,#f7,#ff,#e2
	db #4c,#c4,#c1,#fa,#8f,#c9,#94,#b1
	db #6b,#ca,#89,#ca,#5d,#9f,#62,#f7
	db #cc,#f4,#ba,#f7,#d6,#6d,#f0,#b0
	db #0e,#f7,#d3,#fe,#cc,#f6,#d2,#f2
	db #f8,#e2,#f5,#d7,#f8,#fb,#ec,#c0
	db #0b,#0a,#fe,#1e,#09,#aa,#fe,#21
	db #08,#fe,#24,#07,#fe,#27,#06,#fe
	db #2a,#05,#a7,#fe,#2d,#04,#fd,#30
	db #03,#03,#d2,#05,#f7,#34,#d2,#aa
	db #de,#d6,#83,#c1,#7c,#0e,#f4,#f8
	db #b8,#05,#fe,#f6,#fb,#5a,#0a,#ea
	db #fc,#60,#e8,#e0,#fc,#5f,#09,#fe
	db #81,#08,#fe,#84,#07,#aa,#fe,#87
	db #06,#fe,#8a,#05,#fe,#8d,#04,#fe
	db #90,#03,#ab,#fe,#93,#02,#fd,#96
	db #01,#fe,#9a,#00,#00,#9d,#90,#9d
	db #5e,#0f,#fa,#0e,#0e,#fc,#15,#bd
	db #0e,#b7,#14,#ef,#9a,#0d,#a7,#fb
	db #b7,#0c,#fd,#bd,#0b,#0b,#f4,#ab
	db #db,#aa,#e2,#dc,#ff,#cf,#e1,#db
	db #2b,#db,#67,#ef,#cb,#e7,#3c,#d0
	db #ab,#dc,#9f,#e2,#3d,#fe,#c9,#a4
	db #c9,#24,#ed,#8a,#e2,#0b,#d6,#66
	db #f4,#c2,#ce,#cd,#0a,#aa,#fe,#30
	db #09,#fe,#33,#08,#fe,#36,#07,#fe
	db #39,#06,#a9,#fe,#3c,#05,#fe,#3f
	db #04,#fe,#42,#03,#03,#b8,#17,#fe
	db #e1,#77,#cf,#7d,#f5,#c7,#d5,#b9
	db #ac,#09,#fe,#07,#fb,#6a,#0a,#ea
	db #fc,#70,#e7,#a7,#fc,#6f,#09,#fe
	db #92,#08,#fe,#95,#07,#aa,#fe,#98
	db #06,#fe,#9b,#05,#fe,#9e,#04,#fe
	db #a1,#03,#ab,#fe,#a4,#02,#fd,#a7
	db #01,#fe,#ab,#00,#00,#ae,#90,#ae
	db #40,#0f,#fd,#1f,#0e,#0b,#0c,#0c
	db #0a,#09,#08,#0b,#0d,#0d,#0b,#fe
	db #27,#08,#07,#06,#02,#05,#04,#03
	db #02,#01,#0e,#fd,#37,#0d,#17,#0a
	db #0b,#0b,#fe,#2e,#0a,#fe,#25,#fd
	db #26,#fe,#2f,#ff,#f9,#30,#fe,#2a
	db #fe,#51,#fe,#44,#fa,#50,#fe,#5b
	db #fd,#3f,#fe,#3d,#e0,#f8,#2d,#fd
	db #4d,#d5,#f4,#00,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#fc
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#68,#00,#00,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #fc,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#68,#00,#0a,#7f,#ff
.l7fc6 equ $ + 5
.l7fc5 equ $ + 4
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#ff,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#ff
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #fe,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#69,#01,#00
	db #00
;
.music_info
	db "Final Exams CPC Amstrad Expo 2010 - Last Part (2010)(Impact)(Lap)",0
	db "",0

	read "music_end.asm"
