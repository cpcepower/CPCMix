; Music of QuasarDisc 3 - Acte 3 - Overflow Previews - Tunnel (2002)(Futurs)()()
; Ripped by Megachur the 05/06/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "QU3A3OPT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #8000

	read "music_header.asm"

	jp l8006
	jp l8024
;
.init_music
.l8006
;
	call l8474
	call l847b
	call l8502
	call l8501
	call l859e
	call l802b
	ld a,(l8740)
.l801b
	push af
	call l8207
	pop af
	dec a
	jr nz,l801b
	ret
;
.play_music
.l8024
;
	call l8207
	call l8071
	ret
.l802b
	ld b,#0e
	ld c,#0d
	xor a
.l8030
	push bc
	call l8039
	pop bc
	dec c
	djnz l8030
	ret
.l8039
	ld b,#f4
	out (c),c
	ld bc,#f6c0
	out (c),c
	db #ed,#71 ; out (c),0
	ld b,#f4
	out (c),a
	ld bc,#f680
	out (c),c
	db #ed,#71 ; out (c),0
	ret
.l8050
	ld a,(hl)
	cp #00
	jr z,l8066
	ld (#0000),a
.l8058
	out (c),c
	exx
	db #ed,#71 ; out (c),0
	ld b,h
	out (c),a
	ld b,l
	out (c),e
	out (c),d
	exx
.l8066
	inc c
.l8067
	inc de
	ld a,d
	and #03
	ld d,a
	ld (l807c),de
	ret
.l8071
	ld de,#c080
	ld hl,#f4f6
	ld b,l
	out (c),d
	exx
.l807c equ $ + 1
	ld de,#0000
	ld l,e
	ld b,#f4
	ld c,#00
.l8083
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8207 equ $ + 4
	db #00,#00,#00,#00,#00
	ld (l8226),sp
	ld a,(l8740)
	dec a
.l8212 equ $ + 2
	ld hx,#00
	ld iy,l821a
.l8218 equ $ + 1
	jp l82ca
.l821a
	ld hl,(l8218)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld (l8218),de
.l8226 equ $ + 1
	ld sp,#0000
	nop
	ret
.l822c equ $ + 2
	jp nc,#2182
.l822d
	nop
	nop
	ld c,l
	ld d,#00
	ld a,(l8740)
	ld e,a
	or a
	sbc hl,de
	ld (l822d),hl
	dec a
	jp nc,l82ca
	ld b,d
	ld de,l826a
	ld (l8218),de
	ld de,(l8780)
	add hl,de
	ld (l822d),hl
	ld a,c
	ld (l8280),a
	ld (l826b),a
	ld hl,(l807c)
	add hl,bc
	ld a,(l8740)
	ld c,a
	add hl,bc
	ld a,h
	and #03
	ld (l8212),a
	ld a,l
	ld (l8293),a
.l826b equ $ + 1
.l826a
	ld a,#00
	dec a
	jp m,l8277
.l8273 equ $ + 3
	ld iy,l827c
.l8275 equ $ + 1
.l8274
	jp l82ca
.l8277
	ld a,(l8740)
	jr l8282
.l827c
	ld a,(l8740)
.l8280 equ $ + 1
	ld b,#00
	sub b
.l8282
	ld hl,(l8275)
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
.l8293 equ $ + 1
	ld (hl),#00
	inc hl
	ex de,hl
	ldi
	ldi
	ldi
	ldi
	ldi
	ld iy,l82a7
	dec a
	jr l8274
.l82a7
	ld hl,(l8275)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld hl,#7dd3
	add hl,de
	jr c,l82be
	ld hl,l822c
	ld (l8218),de
	ld de,l82ca
.l82be
	ld (l8275),de
	ld sp,(l8226)
	nop
	ret
.l82ca equ $ + 2
	jp nc,#3182
	nop
	add (hl)
.l82ce equ $ + 1
	jp l83dd
	jp c,#3182
	ld a,(bc)
	add (hl)
	jp l835c
	jp po,#3182
	inc d
	add (hl)
	jp l83dd
	jp pe,#3182
	ld e,#86
	jp l835c
	jp p,#3182
	jr z,l8273
	jp l83dd
	jp m,#3182
	ld (#c386),a
	ld e,h
	add e
	ld (bc),a
	add e
	ld sp,l863c
	jp l835c
	ld a,(bc)
	add e
	ld sp,l8646
	jp l835c
	ld (de),a
	add e
	ld sp,l8650
	jp l835c
	ld a,(de)
	add e
	ld sp,l865a
	jp l835c
	ld (#3183),hl
	ld h,h
	add (hl)
	jp l835c
	ld hl,(#3183)
	ld l,(hl)
	add (hl)
	jp l835c
	ld (#3183),a
	ld a,b
	add (hl)
	jp l835c
	inc l
	add d
	ld sp,l8682
	jp l835c
	ld b,d
	add e
	ld sp,l868c
	jp l835c
	jp z,#3182
	sub (hl)
	add (hl)
	jp l835c
.l8348
	ex af,af'
	ld a,(hl)
	inc hl
	exx
	ld (de),a
	inc e
	ex af,af'
	dec a
	exx
	jp p,l8375
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l835c
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l8372
	exx
	ld d,a
	exx
	add b
	jr nc,l83b5
	ex af,af'
.l836a
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l836a
	ex af,af'
.l8372
	exx
	pop bc
	pop hl
.l8375
	sla c
	jr nz,l837d
	ld c,(hl)
	inc hl
	sll c
.l837d
	jr nc,l8348
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l839a
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
.l838f
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	inc b
	jr nz,l838f
	ex af,af'
	exx
	jr l8375
.l839a
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
.l83a7
	ld a,(hl)
	inc l
	ld (de),a
	inc e
	djnz l83a7
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l83b5
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l83bd
	ld a,(hl)
	ld (de),a
	inc l
	inc e
	djnz l83bd
	push hl
	push de
	jp (iy)
.l83c7
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
	jp p,l83fa
	push hl
	push bc
	exx
	push bc
	push hl
	push de
	jp (iy)
.l83dd
	pop de
	pop hl
	pop bc
	inc b
	dec b
	jr z,l83f7
	exx
	ld d,a
	exx
	add b
	jr nc,l845e
	ex af,af'
.l83eb
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l83eb
	ex af,af'
.l83f7
	exx
	pop bc
	pop hl
.l83fa
	sla c
	jr nz,l8402
	ld c,(hl)
	inc hl
	sll c
.l8402
	jr nc,l83c7
	ld b,(hl)
	inc hl
	ld d,a
	add b
	jr nc,l8431
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
.l8422
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	inc b
	jr nz,l8422
	ex af,af'
	exx
	jr l83fa
.l8431
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
.l844c
	ld a,(hl)
	inc hl
	res 2,h
	ld (de),a
	inc de
	res 2,d
	djnz l844c
	ex af,af'
	ld b,a
	inc b
	push bc
	push hl
	push de
	jp (iy)
.l845e
	inc a
	ld b,a
	push bc
	exx
	ld a,d
	exx
	ld b,a
	inc b
.l8466
	ld a,(hl)
	ld (de),a
	inc hl
	res 2,h
	inc de
	res 2,d
	djnz l8466
	push hl
	push de
	jp (iy)
.l8474
	ld hl,(l8780)
	ld (l822d),hl
	ret
.l847b
	ld hl,l8743
	ld d,#a8
	exx
	ld hl,(l8741)
	inc hl
	inc hl
	push hl
	ld de,#0003
	ld a,(l8740)
	ld b,a
	ld c,#00
.l8490
	ld a,(hl)
	cp #01
	jr z,l84a1
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
.l84a1
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l8490
	ld hl,l8743
	ld d,#a8
	ld b,#03
	exx
	pop hl
	push hl
	ld de,#0003
	ld a,(l8740)
	ld b,a
.l84b9
	ld a,(hl)
	cp #04
	jr z,l84d6
	exx
	ld a,b
	inc a
	and #03
	ld b,a
	jr nz,l84cf
	ld a,c
	or a
	jr z,l84cf
	dec c
	ld a,d
	add #04
	ld d,a
.l84cf
	ld (hl),d
	inc hl
	ld (hl),#01
	dec hl
	inc d
	exx
.l84d6
	exx
	inc hl
	inc hl
	exx
	add hl,de
	djnz l84b9
	ld hl,l82ce
	ld bc,#0007
	exx
	pop hl
	ld de,#0003
	ld a,(l8740)
	ld b,a
.l84ec
	ld a,(hl)
	cp #01
	exx
	ld de,l835c
	jr z,l84f8
	ld de,l83dd
.l84f8
	ld (hl),e
	inc hl
	ld (hl),d
	add hl,bc
	exx
	add hl,de
	djnz l84ec
	ret
.l8501
	ret
.l8502
	ld hl,l8743
	ld de,l8083
	ld b,(hl)
	inc hl
	ld a,(hl)
	inc hl
	cp #01
	call z,l8583
	call nz,l8590
	ld b,#0d
.l8516
	push bc
	call l8560
	ld b,(hl)
	inc hl
	ld a,(hl)
	cp #04
	call z,l8590
	jr z,l8539
	dec hl
	dec hl
	cp (hl)
	call nz,l8583
	jr nz,l8537
	dec hl
	ld a,(hl)
	inc hl
	sub b
	inc a
	call z,l858b
	call nz,l8583
.l8537
	inc hl
	inc hl
.l8539
	inc hl
	pop bc
	djnz l8516
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
	ld hl,l8058
	ld bc,#000f
	ldir
	dec de
	ld hl,l8067
	ld bc,#000a
	ldir
	ret
.l8560
	push hl
	ld hl,l8050
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
	ld hl,l8058
	ld bc,#000f
	ldir
	pop hl
	ret
.l8583
	ex de,hl
	ld (hl),#26
	inc hl
	ld (hl),b
	inc hl
	ex de,hl
	ret
.l858b
	ld a,#24
	ld (de),a
	inc de
	ret
.l8590
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
.l859e
	ld hl,l822c
	ld (l8218),hl
	ld hl,l82ca
	ld (l8275),hl
	xor a
	ld (l8212),a
	ld hl,#0000
	ld (l807c),hl
	call l85c3
	ld hl,l8600
	ld de,l86a0
	ld bc,#00a0
	ldir
	ret
.l85c3
	ld hl,l8743
	exx
	ld a,(l8740)
	ld b,a
	ld de,(l8741)
	inc de
	inc de
	ld hl,l8600
.l85d4
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
	djnz l85d4
	ret
.l8600
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l863c equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8646 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8650
	db #00,#00,#00,#00,#00,#00,#00,#00
.l865a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8682 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l868c equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l86a0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8740
	db #0e
.l8741
	dw l8780
.l8743
	db #c0,#04,#c4,#01,#c8,#04,#c5,#01
	db #d0,#04,#c6,#01,#c7,#01,#cc,#01
	db #cd,#01,#ce,#01,#cf,#01,#d4,#01
	db #d5,#01,#d6,#01,#d7,#01,#d8,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00
.l8780
	db #18,#1b,#01,#2e,#00,#01,#a5,#03
	db #01,#fd,#04,#01,#59,#09,#01,#ae
	db #0a,#01,#f5,#0f,#01,#3a,#11,#01
	db #db,#12,#01,#4a,#14,#01,#05,#16
	db #01,#50,#18,#01,#27,#19,#01,#c3
	db #19,#01,#fd,#19,#01,#92,#1a,#01
	db #e4,#1f,#1e,#fe,#01,#00,#01,#00
	db #01,#ff,#01,#fe,#01,#fd,#01,#fc
	db #e3,#fa,#64,#07,#64,#54,#54,#43
	db #43,#ca,#06,#fa,#48,#f2,#48,#3e
	db #59,#59,#f2,#34,#ee,#66,#ee,#72
	db #fa,#90,#e2,#9c,#9e,#cf,#fb,#c0
	db #fc,#5c,#38,#38,#fa,#c0,#e8,#c0
	db #d6,#d2,#fa,#08,#a0,#fa,#14,#56
	db #fb,#20,#4b,#4b,#3b,#3b,#32,#7f
	db #32,#fa,#20,#e8,#20,#e2,#20,#e8
	db #62,#f0,#80,#f8,#8f,#fe,#ba,#f3
	db #fc,#1a,#ca,#86,#fa,#c8,#f2,#c8
	db #59,#59,#f2,#b4,#ee,#e6,#ec,#ee
	db #f2,#fa,#10,#e2,#1c,#9e,#fb,#40
	db #fc,#dc,#38,#38,#fa,#fa,#40,#e8
	db #40,#d6,#52,#fa,#88,#fa,#94,#56
	db #fb,#a0,#4b,#07,#4b,#3b,#3b,#32
	db #32,#fa,#a0,#e8,#a0,#e2,#a0,#ff
	db #e8,#e2,#f0,#00,#f8,#0f,#fe,#3a
	db #fc,#9a,#ca,#06,#fa,#48,#f2,#48
	db #3e,#59,#59,#f2,#34,#ee,#66,#ee
	db #72,#fa,#90,#e2,#9c,#9e,#cf,#fb
	db #c0,#fc,#5c,#38,#38,#fa,#c0,#e8
	db #c0,#d6,#d2,#fa,#08,#a0,#fa,#14
	db #56,#fb,#20,#4b,#4b,#3b,#3b,#32
	db #7f,#32,#fa,#20,#e8,#20,#e2,#20
	db #e8,#62,#f0,#80,#f8,#8f,#fe,#ba
	db #f3,#fc,#1a,#ca,#86,#fa,#c8,#f2
	db #c8,#59,#59,#f2,#b4,#ee,#e6,#ec
	db #ee,#f2,#fa,#10,#e2,#1c,#9e,#fb
	db #40,#fc,#dc,#38,#38,#fa,#fa,#40
	db #e8,#40,#d6,#52,#fa,#88,#fa,#94
	db #56,#fb,#a0,#4b,#07,#4b,#3b,#3b
	db #32,#32,#fa,#a0,#e8,#a0,#e2,#a0
	db #ff,#e8,#e2,#f0,#00,#f8,#0f,#fe
	db #3a,#fc,#9a,#ca,#06,#fa,#48,#f2
	db #48,#3e,#59,#59,#f2,#34,#ee,#66
	db #ee,#72,#fa,#90,#e2,#9c,#9e,#cf
	db #fb,#c0,#fc,#5c,#38,#38,#fa,#c0
	db #e8,#c0,#d6,#d2,#fa,#08,#a0,#fa
	db #14,#56,#fb,#20,#4b,#4b,#3b,#3b
	db #32,#7f,#32,#fa,#20,#e8,#20,#e2
	db #20,#e8,#62,#f0,#80,#f8,#8f,#fe
	db #ba,#f3,#fc,#1a,#ca,#86,#fa,#c8
	db #f2,#c8,#59,#59,#f2,#b4,#ee,#e6
	db #ec,#ee,#f2,#fa,#10,#e2,#1c,#9e
	db #fb,#40,#fc,#dc,#38,#38,#fa,#fa
	db #40,#e8,#40,#d6,#52,#fa,#88,#fa
	db #94,#56,#fb,#a0,#4b,#07,#4b,#3b
	db #3b,#32,#32,#fa,#a0,#e8,#a0,#e2
	db #a0,#ff,#e8,#e2,#f0,#00,#f8,#0f
	db #fe,#3a,#fc,#9a,#ca,#06,#fa,#48
	db #f2,#48,#3e,#59,#59,#f2,#34,#ee
	db #66,#ee,#72,#fa,#90,#e2,#9c,#9e
	db #cf,#fb,#c0,#fc,#5c,#38,#38,#fa
	db #c0,#e8,#c0,#d6,#d2,#fa,#08,#a0
	db #fa,#14,#56,#fb,#20,#4b,#4b,#3b
	db #3b,#32,#7f,#32,#fa,#20,#e8,#20
	db #e2,#20,#e8,#62,#f0,#80,#f8,#8f
	db #fe,#ba,#f3,#fc,#1a,#ca,#86,#fa
	db #c8,#f2,#c8,#59,#59,#f2,#b4,#ee
	db #e6,#ec,#ee,#f2,#fa,#10,#e2,#1c
	db #9e,#fb,#40,#fc,#dc,#38,#38,#fa
	db #fa,#40,#e8,#40,#d6,#52,#fa,#88
	db #fa,#94,#56,#fb,#a0,#4b,#07,#4b
	db #3b,#3b,#32,#32,#fa,#a0,#e8,#a0
	db #e2,#a0,#ff,#e8,#e2,#f0,#00,#f8
	db #0f,#fe,#3a,#fc,#9a,#ca,#06,#fa
	db #48,#f2,#48,#3e,#59,#59,#f2,#34
	db #ee,#66,#ee,#72,#fa,#90,#e2,#9c
	db #9e,#cf,#fb,#c0,#fc,#5c,#38,#38
	db #fa,#c0,#e8,#c0,#d6,#d2,#fa,#08
	db #a0,#fa,#14,#56,#fb,#20,#4b,#4b
	db #3b,#3b,#32,#7f,#32,#fa,#20,#e8
	db #20,#e2,#20,#e8,#62,#f0,#80,#f8
	db #8f,#fe,#ba,#f3,#fc,#1a,#ca,#86
	db #fa,#c8,#f2,#c8,#59,#59,#f2,#b4
	db #ee,#e6,#ec,#ee,#f2,#fa,#10,#e2
	db #1c,#9e,#fb,#40,#fc,#dc,#38,#38
	db #fa,#fa,#40,#e8,#40,#d6,#52,#fa
	db #88,#fa,#94,#56,#fb,#a0,#4b,#07
	db #4b,#3b,#3b,#32,#32,#fa,#a0,#e8
	db #a0,#e2,#a0,#f3,#e8,#e2,#ee,#76
	db #b2,#52,#fa,#4e,#70,#70,#fc,#5a
	db #f4,#3c,#ff,#ee,#66,#ee,#72,#fa
	db #90,#e2,#9c,#fa,#dc,#fa,#5a,#f4
	db #d6,#ee,#c6,#e0,#d6,#d2,#f4,#54
	db #fa,#0e,#4b,#4b,#3b,#3b,#32,#7f
	db #32,#f4,#fc,#ee,#26,#e2,#20,#e8
	db #62,#f0,#80,#f8,#8f,#fa,#1a,#e7
	db #ca,#86,#f4,#14,#fa,#ce,#70,#70
	db #fc,#da,#f4,#bc,#ee,#e6,#ee,#ee
	db #f2,#fa,#10,#e2,#1c,#16,#fb,#40
	db #fe,#3e,#fe,#7c,#2c,#7f,#2c,#fa
	db #40,#e8,#40,#f8,#52,#fe,#de,#e0
	db #5c,#fa,#88,#f2,#88,#ff,#c6,#48
	db #f4,#94,#ee,#e8,#f0,#00,#f8,#0f
	db #fc,#3c,#fe,#fc,#ca,#06,#cf,#fa
	db #48,#f4,#48,#70,#70,#fc,#5a,#f4
	db #3c,#ee,#66,#ee,#72,#e7,#fa,#90
	db #e2,#9c,#f8,#dc,#3b,#3b,#f0,#d4
	db #f0,#c8,#f8,#d2,#ff,#fc,#fc,#e2
	db #de,#fa,#08,#f2,#08,#c6,#c8,#f4
	db #14,#ee,#68,#f0,#80,#fd,#f8,#8f
	db #fc,#bc,#fe,#7c,#ca,#86,#fa,#c8
	db #fa,#d4,#56,#fb,#e0,#27,#4b,#4b
	db #fe,#3a,#32,#32,#fa,#e0,#e8,#e0
	db #ee,#f2,#e1,#fa,#10,#e2,#1c,#fa
	db #5c,#64,#64,#59,#59,#fe,#dc,#ff
	db #f4,#56,#ee,#46,#d6,#52,#fa,#88
	db #ee,#88,#ca,#4c,#f4,#94,#ee,#e8
	db #40,#1e,#e9,#00,#33,#fe,#01,#00
	db #01,#00,#01,#ff,#01,#fe,#01,#fd
	db #01,#fc,#e3,#fa,#30,#fd,#fb,#18
	db #ca,#06,#fa,#48,#ee,#48,#c4,#24
	db #e8,#a7,#32,#fb,#c0,#ff,#f4,#ba
	db #e8,#c0,#d6,#d2,#b2,#b4,#e2,#a2
	db #f0,#80,#f8,#8f,#e8,#7a,#ff,#dc
	db #98,#ee,#74,#ee,#b0,#d0,#b0,#e8
	db #27,#e2,#4a,#f4,#4c,#d6,#52,#ff
	db #b2,#34,#e2,#22,#f0,#00,#f8,#0f
	db #e8,#fa,#dc,#18,#ee,#f4,#ee,#30
	db #ff,#d0,#30,#e8,#a7,#e2,#ca,#f4
	db #cc,#d6,#d2,#b2,#b4,#e2,#a2,#f0
	db #80,#ff,#f8,#8f,#e8,#7a,#dc,#98
	db #ee,#74,#ee,#b0,#d0,#b0,#e8,#27
	db #e2,#4a,#ff,#f4,#4c,#d6,#52,#b2
	db #34,#e2,#22,#f0,#00,#f8,#0f,#e8
	db #fa,#dc,#18,#ff,#ee,#f4,#ee,#30
	db #d0,#30,#e8,#a7,#e2,#ca,#f4,#cc
	db #d6,#d2,#b2,#b4,#ff,#e2,#a2,#f0
	db #80,#f8,#8f,#e8,#7a,#dc,#98,#ee
	db #74,#ee,#b0,#d0,#b0,#ff,#e8,#27
	db #e2,#4a,#f4,#4c,#d6,#52,#b2,#34
	db #e2,#22,#f0,#00,#f8,#0f,#ff,#e8
	db #fa,#dc,#18,#ee,#f4,#ee,#30,#d0
	db #30,#e8,#a7,#e2,#ca,#f4,#cc,#ff
	db #d6,#d2,#b2,#b4,#e2,#a2,#f0,#80
	db #f8,#8f,#e8,#7a,#dc,#98,#ee,#74
	db #ff,#ee,#b0,#d0,#b0,#e8,#27,#e2
	db #4a,#f4,#4c,#d6,#52,#b2,#34,#e2
	db #22,#ff,#f0,#00,#f8,#0f,#e8,#fa
	db #dc,#18,#ee,#f4,#ee,#30,#d0,#30
	db #e8,#a7,#ff,#e2,#ca,#f4,#cc,#d6
	db #d2,#b2,#b4,#e2,#a2,#f0,#80,#f8
	db #8f,#e8,#7a,#ff,#dc,#98,#ee,#74
	db #ee,#b0,#d0,#b0,#e8,#27,#e2,#4a
	db #f4,#4c,#d6,#52,#ff,#b2,#34,#dc
	db #22,#ca,#5e,#a0,#7c,#e2,#e2,#be
	db #5a,#a0,#3c,#dc,#96,#ff,#ee,#3e
	db #76,#d2,#e2,#62,#be,#da,#a0,#bc
	db #dc,#16,#ee,#be,#76,#52,#ff,#e2
	db #e2,#be,#5a,#a0,#3c,#dc,#96,#ee
	db #3e,#76,#d2,#e2,#62,#be,#da,#d0
	db #a0,#bc,#dc,#16,#33,#e9,#00,#9f
	db #f0,#01,#00,#01,#00,#01,#ff,#fe
	db #fd,#7d,#c3,#fa,#38,#1f,#7d,#7d
	db #bd,#d7,#06,#e8,#00,#f4,#30,#fa
	db #48,#ee,#54,#c0,#d0,#0c,#f4,#60
	db #2d,#91,#18,#cb,#bc,#fb,#ff,#e8
	db #54,#ca,#66,#a0,#3c,#f4,#4a,#f4
	db #a8,#ee,#a8,#dc,#2c,#8e,#ea,#fe
	db #f4,#e0,#ee,#74,#be,#da,#a0,#bc
	db #f4,#ca,#f4,#28,#ee,#28,#64,#07
	db #64,#54,#54,#43,#43,#f4,#06,#fa
	db #f4,#ee,#06,#e7,#dc,#00,#e8,#94
	db #fe,#4e,#59,#59,#fc,#40,#fc,#6e
	db #f8,#48,#fe,#f6,#6e,#fa,#84,#f4
	db #66,#f4,#60,#ee,#f4,#ee,#b4,#fc
	db #50,#38,#7f,#38,#fa,#cc,#fa,#a8
	db #f4,#cc,#fa,#e4,#ee,#c6,#ee,#d2
	db #e8,#b4,#03,#4b,#4b,#3b,#3b,#32
	db #32,#fa,#2c,#fa,#08,#ff,#f4,#2c
	db #fa,#44,#ee,#26,#ee,#a2,#ee,#a8
	db #fe,#96,#fc,#0e,#f4,#86,#f9,#fa
	db #74,#ee,#86,#dc,#80,#e8,#14,#fe
	db #ce,#59,#59,#fc,#c0,#ff,#fc,#ee
	db #f8,#c8,#f6,#ee,#fa,#04,#f4,#e6
	db #f4,#e0,#ee,#74,#ee,#34,#9f,#fc
	db #d0,#38,#38,#fa,#4c,#fa,#28,#f4
	db #4c,#fa,#64,#ee,#46,#c0,#ee,#52
	db #e8,#34,#4b,#4b,#3b,#3b,#32,#32
	db #ff,#fa,#ac,#fa,#88,#f4,#ac,#fa
	db #c4,#ee,#a6,#ee,#22,#ee,#28,#fe
	db #16,#fe,#fc,#8e,#f4,#06,#fa,#f4
	db #ee,#06,#dc,#00,#e8,#94,#fe,#4e
	db #59,#7f,#59,#fc,#40,#fc,#6e,#f8
	db #48,#f6,#6e,#fa,#84,#f4,#66,#f4
	db #60,#e7,#ee,#f4,#ee,#b4,#fc,#50
	db #38,#38,#fa,#cc,#fa,#a8,#f4,#cc
	db #f0,#fa,#e4,#ee,#c6,#ee,#d2,#e8
	db #b4,#4b,#4b,#3b,#3b,#3f,#32,#32
	db #fa,#2c,#fa,#08,#f4,#2c,#fa,#44
	db #ee,#26,#ee,#a2,#ff,#ee,#a8,#fe
	db #96,#fc,#0e,#f4,#86,#fa,#74,#ee
	db #86,#dc,#80,#e8,#14,#9f,#fe,#ce
	db #59,#59,#fc,#c0,#fc,#ee,#f8,#c8
	db #f6,#ee,#fa,#04,#f9,#f4,#e6,#f4
	db #e0,#ee,#74,#ee,#34,#fc,#d0,#38
	db #38,#fa,#4c,#fc,#fa,#28,#f4,#4c
	db #fa,#64,#ee,#46,#ee,#52,#e8,#34
	db #4b,#4b,#0f,#3b,#3b,#32,#32,#fa
	db #ac,#fa,#88,#f4,#ac,#fa,#c4,#ff
	db #ee,#a6,#ee,#22,#ee,#28,#fe,#16
	db #fc,#8e,#f4,#06,#fa,#f4,#ee,#06
	db #e7,#dc,#00,#e8,#94,#fe,#4e,#59
	db #59,#fc,#40,#fc,#6e,#f8,#48,#fe
	db #f6,#6e,#fa,#84,#f4,#66,#f4,#60
	db #ee,#f4,#ee,#b4,#fc,#50,#38,#7f
	db #38,#fa,#cc,#fa,#a8,#f4,#cc,#fa
	db #e4,#ee,#c6,#ee,#d2,#e8,#b4,#03
	db #4b,#4b,#3b,#3b,#32,#32,#fa,#2c
	db #fa,#08,#ff,#f4,#2c,#fa,#44,#ee
	db #26,#ee,#a2,#ee,#a8,#fe,#96,#fc
	db #0e,#f4,#86,#f9,#fa,#74,#ee,#86
	db #dc,#80,#e8,#14,#fe,#ce,#59,#59
	db #fc,#c0,#ff,#fc,#ee,#f8,#c8,#f6
	db #ee,#fa,#04,#f4,#e6,#f4,#e0,#ee
	db #74,#ee,#34,#9f,#fc,#d0,#38,#38
	db #fa,#4c,#fa,#28,#f4,#4c,#fa,#64
	db #ee,#46,#c0,#ee,#52,#e8,#34,#4b
	db #4b,#3b,#3b,#32,#32,#ff,#fa,#ac
	db #fa,#88,#f4,#ac,#fa,#c4,#ee,#a6
	db #ee,#22,#ee,#28,#fe,#16,#fe,#fc
	db #8e,#f4,#06,#fa,#f4,#ee,#06,#dc
	db #00,#e8,#94,#fe,#4e,#59,#7f,#59
	db #fc,#40,#fc,#6e,#f8,#48,#f6,#6e
	db #fa,#84,#f4,#66,#f4,#60,#e7,#ee
	db #f4,#ee,#b4,#fc,#50,#38,#38,#fa
	db #cc,#fa,#a8,#f4,#cc,#f0,#fa,#e4
	db #ee,#c6,#ee,#d2,#e8,#b4,#4b,#4b
	db #3b,#3b,#3f,#32,#32,#fa,#2c,#fa
	db #08,#f4,#2c,#fa,#44,#ee,#26,#ee
	db #a2,#ff,#ee,#a8,#fe,#96,#fc,#0e
	db #f4,#86,#fa,#74,#ee,#86,#dc,#80
	db #e8,#14,#9f,#fe,#ce,#59,#59,#fc
	db #c0,#fc,#ee,#f8,#c8,#f6,#ee,#fa
	db #04,#f9,#f4,#e6,#f4,#e0,#ee,#74
	db #ee,#34,#fc,#d0,#38,#38,#fa,#4c
	db #fc,#fa,#28,#f4,#4c,#fa,#64,#ee
	db #46,#ee,#52,#e8,#34,#4b,#4b,#0f
	db #3b,#3b,#32,#32,#fa,#ac,#fa,#88
	db #f4,#ac,#fa,#c4,#ff,#ee,#a6,#ee
	db #22,#ee,#28,#fe,#16,#fc,#8e,#f4
	db #06,#fa,#f4,#ee,#06,#e7,#dc,#00
	db #e8,#94,#fe,#4e,#59,#59,#fc,#40
	db #fc,#6e,#f8,#48,#fe,#f6,#6e,#fa
	db #84,#f4,#66,#f4,#60,#ee,#f4,#ee
	db #b4,#fc,#50,#38,#7f,#38,#fa,#cc
	db #fa,#a8,#f4,#cc,#fa,#e4,#ee,#c6
	db #ee,#d2,#e8,#b4,#03,#4b,#4b,#3b
	db #3b,#32,#32,#fa,#2c,#fa,#08,#ff
	db #f4,#2c,#fa,#44,#ee,#26,#ee,#a2
	db #ee,#a8,#fe,#96,#fc,#0e,#f4,#86
	db #f9,#fa,#74,#ee,#86,#dc,#80,#e8
	db #14,#fe,#ce,#59,#59,#fc,#c0,#ff
	db #fc,#ee,#f8,#c8,#f6,#ee,#fa,#04
	db #f4,#e6,#f4,#e0,#ee,#74,#ee,#34
	db #9f,#fc,#d0,#38,#38,#fa,#4c,#fa
	db #28,#f4,#4c,#fa,#64,#ee,#46,#c0
	db #ee,#52,#e8,#34,#4b,#4b,#3b,#3b
	db #32,#32,#ff,#fa,#ac,#fa,#88,#f4
	db #ac,#fa,#c4,#ee,#a6,#ee,#22,#ee
	db #28,#e2,#76,#9f,#b8,#64,#70,#70
	db #fc,#4e,#fa,#6c,#fa,#48,#f4,#6c
	db #fa,#84,#f8,#f4,#66,#f4,#60,#ee
	db #f4,#ee,#b4,#a0,#0c,#4b,#4b,#3b
	db #1f,#3b,#32,#32,#fa,#2c,#fa,#08
	db #f4,#2c,#fa,#44,#ee,#26,#f3,#ee
	db #a2,#ee,#a8,#e2,#f6,#b8,#e4,#70
	db #70,#fc,#ce,#fa,#ec,#ff,#fa,#c8
	db #f4,#ec,#fa,#04,#f4,#e6,#f4,#e0
	db #ee,#74,#ee,#34,#fe,#1a,#9f,#fe
	db #5e,#2c,#2c,#fa,#4c,#fa,#28,#f4
	db #4c,#fa,#64,#f8,#46,#ff,#fe,#d2
	db #fc,#68,#f6,#78,#f8,#58,#fc,#84
	db #b2,#34,#ee,#22,#ee,#28,#fe,#fc
	db #18,#fe,#de,#f4,#06,#fa,#f4,#ee
	db #06,#dc,#00,#e8,#94,#70,#7f,#70
	db #fc,#4e,#fa,#6c,#fa,#48,#f4,#6c
	db #fa,#84,#f4,#66,#f4,#60,#e7,#ee
	db #f4,#ee,#b4,#fe,#9a,#3b,#3b,#fc
	db #da,#fc,#ce,#fa,#a8,#ff,#f4,#cc
	db #fa,#e4,#f8,#c6,#fe,#52,#fc,#e8
	db #f6,#f8,#f8,#d8,#fc,#04,#ff,#b2
	db #b4,#ee,#a2,#ee,#a8,#fc,#98,#fe
	db #5e,#f4,#86,#fa,#74,#ee,#86,#c9
	db #dc,#80,#e8,#14,#4b,#4b,#fe,#4c
	db #32,#32,#fa,#ec,#fe,#fa,#c8,#f4
	db #ec,#fa,#04,#f4,#e6,#f4,#e0,#ee
	db #74,#ee,#34,#64,#1f,#64,#59,#59
	db #fe,#d0,#fa,#4c,#fa,#28,#f4,#4c
	db #fa,#64,#fc,#ee,#46,#ee,#52,#b2
	db #34,#ee,#22,#ee,#28,#fe,#dc,#54
	db #54,#c0,#fc,#da,#f6,#08,#00,#f0
	db #01,#00,#01,#00,#01,#ff,#fe,#fd
	db #02,#01,#01,#02,#ff,#fe,#03,#be
	db #d6,#f4,#30,#fa,#48,#ee,#54,#d0
	db #0c,#f4,#60,#fc,#a3,#3f,#03,#04
	db #e8,#54,#ca,#66,#a0,#3c,#f4,#4a
	db #f4,#a8,#ee,#a8,#ff,#dc,#2c,#8e
	db #ea,#f4,#e0,#ee,#74,#be,#da,#a0
	db #bc,#f4,#ca,#f4,#28,#ff,#ee,#28
	db #ee,#be,#fa,#f4,#d6,#5e,#f4,#18
	db #dc,#94,#dc,#18,#f4,#60,#ff,#ee
	db #f4,#be,#5a,#a0,#3c,#f4,#4a,#f4
	db #a8,#ee,#a8,#e2,#f6,#88,#e4,#ff
	db #f4,#e0,#ee,#74,#be,#da,#a0,#bc
	db #f4,#ca,#f4,#28,#ee,#28,#e2,#76
	db #ff,#88,#64,#f4,#60,#ee,#f4,#be
	db #5a,#a0,#3c,#f4,#4a,#f4,#a8,#ee
	db #a8,#ff,#e2,#f6,#88,#e4,#f4,#e0
	db #ee,#74,#be,#da,#a0,#bc,#f4,#ca
	db #f4,#28,#ff,#ee,#28,#e2,#76,#88
	db #64,#f4,#60,#ee,#f4,#be,#5a,#a0
	db #3c,#f4,#4a,#ff,#f4,#a8,#ee,#a8
	db #e2,#f6,#88,#e4,#f4,#e0,#ee,#74
	db #be,#da,#a0,#bc,#ff,#f4,#ca,#f4
	db #28,#ee,#28,#e2,#76,#88,#64,#f4
	db #60,#ee,#f4,#be,#5a,#ff,#a0,#3c
	db #f4,#4a,#f4,#a8,#ee,#a8,#e2,#f6
	db #88,#e4,#f4,#e0,#ee,#74,#ff,#be
	db #da,#a0,#bc,#f4,#ca,#f4,#28,#ee
	db #28,#e2,#76,#88,#64,#f4,#60,#ff
	db #ee,#f4,#be,#5a,#a0,#3c,#f4,#4a
	db #f4,#a8,#ee,#a8,#e2,#f6,#88,#e4
	db #ff,#f4,#e0,#ee,#74,#be,#da,#a0
	db #bc,#f4,#ca,#f4,#28,#ee,#28,#e2
	db #76,#ff,#88,#64,#f4,#60,#ee,#f4
	db #be,#5a,#a0,#3c,#f4,#4a,#f4,#a8
	db #ee,#a8,#ff,#e2,#f6,#88,#e4,#f4
	db #e0,#ee,#74,#be,#da,#a0,#bc,#f4
	db #ca,#f4,#28,#ff,#ee,#28,#e2,#76
	db #88,#64,#f4,#60,#ee,#f4,#be,#5a
	db #a0,#3c,#f4,#4a,#ff,#f4,#a8,#ee
	db #a8,#e2,#f6,#88,#e4,#f4,#e0,#ee
	db #74,#be,#da,#a0,#bc,#f0,#f4,#ca
	db #f4,#28,#ee,#28,#ee,#be,#91,#7f
	db #24,#fc,#01,#01,#00,#01,#09,#01
	db #08,#01,#07,#01,#06,#01,#05,#99
	db #40,#fa,#51,#a3,#fc,#c1,#a6,#c0
	db #2d,#5a,#fc,#21,#e6,#a6,#20,#c4
	db #84,#7c,#b6,#51,#a3,#fc,#41,#a6
	db #40,#2d,#64,#5a,#fc,#a1,#a6,#a0
	db #64,#c8,#fc,#01,#4b,#96,#99,#fc
	db #07,#54,#a8,#fc,#0d,#fa,#00,#43
	db #86,#fc,#19,#9f,#f4,#0c,#38,#70
	db #fc,#2b,#f4,#24,#fa,#18,#e8,#12
	db #fa,#06,#f0,#01,#00,#01,#9f,#8e
	db #fe,#fa,#cf,#6f,#6e,#6d,#6c,#00
	db #6b,#6a,#6a,#69,#69,#68,#68,#67
	db #41,#64,#f5,#e2,#62,#64,#66,#68
	db #66,#fe,#ed,#28,#60,#60,#f7,#ee
	db #91,#f5,#00,#8e,#91,#94,#24,#97
	db #94,#fe,#0b,#8b,#8b,#cd,#0c,#87
	db #7c,#00,#72,#67,#5d,#52,#48,#3e
	db #34,#2a,#00,#20,#16,#0d,#04,#fb
	db #f2,#e9,#e0,#03,#d8,#cf,#c7,#be
	db #b6,#ad,#fb,#b9,#f9,#64,#5c,#85
	db #fe,#6a,#87,#fd,#6a,#fd,#72,#fd
	db #69,#87,#88,#8c,#fe,#6f,#85,#84
	db #84,#fe,#75,#fe,#79,#88,#89,#86
	db #fe,#7b,#84,#83,#83,#84,#fe,#81
	db #fe,#85,#88,#27,#8a,#88,#fe,#87
	db #82,#82,#fe,#8b,#fc,#90,#fa,#67
	db #80,#fe,#88,#82,#81,#80,#7f,#7e
	db #7d,#7c,#00,#7b,#7a,#79,#78,#77
	db #76,#75,#74,#90,#f5,#cb,#70,#54
	db #fb,#c0,#53,#53,#52,#52,#00,#51
	db #51,#50,#50,#4f,#4f,#4e,#4e,#04
	db #4d,#4d,#4c,#4c,#4b,#f3,#d6,#4a
	db #4b,#67,#4c,#fe,#d3,#fe,#e3,#49
	db #49,#cd,#e4,#fa,#1f,#fa,#c0,#b4
	db #f4,#2b,#59,#f5,#38,#f4,#b4,#a8
	db #fa,#50,#a7,#a7,#00,#a6,#a6,#a5
	db #a4,#a3,#a2,#a1,#a0,#00,#9f,#9f
	db #9e,#9e,#9d,#9d,#9c,#96,#c0,#e9
	db #68,#f4,#38,#58,#58,#57,#57,#56
	db #56,#3e,#55,#55,#fc,#c4,#ee,#26
	db #fd,#97,#fb,#93,#fb,#96,#55,#f9
	db #fe,#91,#fe,#af,#fe,#c8,#fe,#b3
	db #fe,#b7,#56,#57,#fe,#b9,#b0,#fd
	db #c9,#52,#fe,#bf,#ce,#c3,#52,#50
	db #4e,#4c,#3b,#4a,#48,#f9,#1f,#ef
	db #21,#f4,#80,#64,#f5,#28,#f4,#44
	db #80,#f9,#79,#95,#95,#94,#94,#93
	db #92,#91,#00,#90,#8f,#8e,#8d,#8d
	db #8c,#8c,#8b,#15,#8b,#8a,#86,#ef
	db #58,#85,#fe,#68,#87,#fd,#68,#c8
	db #fd,#70,#fd,#67,#87,#88,#fe,#6d
	db #85,#84,#84,#f0,#fe,#73,#f2,#77
	db #fe,#8d,#fe,#85,#83,#83,#82,#82
	db #00,#81,#81,#80,#80,#7f,#7f,#7e
	db #7e,#15,#7d,#7d,#77,#e9,#a0,#76
	db #fe,#b6,#78,#fd,#b6,#c8,#fd,#be
	db #fd,#b5,#78,#79,#fe,#bb,#76,#75
	db #75,#c8,#fe,#c1,#fe,#c5,#79,#7a
	db #fe,#c7,#75,#74,#74,#62,#75,#fe
	db #cd,#fe,#d1,#79,#7b,#79,#fe,#d3
	db #73,#75,#73,#fe,#d7,#e5,#dc,#fa
	db #64,#b2,#fb,#06,#e1,#fb,#0c,#ff
	db #fa,#3a,#f4,#06,#fa,#b2,#fa,#1e
	db #ee,#00,#fa,#24,#ee,#06,#fa,#4e
	db #f1,#fa,#48,#d6,#00,#f9,#b2,#fe
	db #d4,#73,#72,#71,#fa,#78,#1f,#71
	db #72,#73,#fe,#d6,#fc,#c1,#f7,#aa
	db #fa,#66,#f4,#b9,#f4,#dc,#6c,#e8
	db #60,#e2,#42,#d0,#c0,#9f,#fb,#50
	db #9d,#9c,#08,#9a,#99,#97,#96,#f4
	db #5b,#94,#96,#98,#26,#9a,#98,#fe
	db #67,#92,#92,#f1,#68,#a0,#c0,#43
	db #b6,#fb,#e0,#59,#fb,#e6,#fa,#d4
	db #38,#fb,#f2,#f4,#e6,#3b,#fa,#fb
	db #04,#fa,#f8,#ee,#e0,#f4,#04,#ee
	db #ec,#4b,#fb,#40,#4a,#00,#4a,#49
	db #49,#48,#48,#47,#47,#46,#04,#46
	db #45,#45,#44,#44,#fe,#14,#42,#42
	db #c2,#fa,#10,#fa,#5d,#41,#43,#44
	db #46,#fe,#53,#41,#38,#40,#40,#e5
	db #64,#fa,#2e,#fa,#8d,#71,#71,#72
	db #00,#72,#73,#73,#74,#74,#75,#75
	db #76,#71,#76,#fa,#c2,#fa,#a5,#fe
	db #9f,#78,#79,#78,#fe,#ab,#cb,#fd
	db #9c,#fe,#ad,#78,#7a,#fe,#b0,#75
	db #fd,#9a,#fe,#b6,#d0,#f8,#b9,#fa
	db #c9,#96,#f5,#d0,#94,#96,#98,#9a
	db #4a,#98,#fe,#db,#92,#92,#e5,#dc
	db #86,#fb,#00,#b2,#bf,#fb,#06,#e1
	db #fb,#0c,#fa,#8e,#f4,#06,#fa,#ca
	db #fa,#1e,#ee,#00,#fe,#fa,#24,#ee
	db #06,#fa,#4e,#fa,#48,#d6,#00,#f9
	db #a6,#fe,#c5,#73,#23,#72,#71,#fa
	db #78,#71,#72,#73,#fe,#c7,#fe,#b5
	db #fe,#f5,#a8,#fa,#66,#f4,#b9,#dc
	db #6c,#e8,#60,#e2,#42,#d0,#c0,#9f
	db #81,#fb,#50,#9d,#9c,#9a,#99,#97
	db #96,#f4,#5b,#04,#94,#96,#98,#9a
	db #98,#fe,#67,#92,#92,#d6,#f1,#68
	db #a0,#c0,#43,#fb,#e0,#59,#fb,#e6
	db #fa,#d4,#38,#df,#fb,#f2,#f4,#e6
	db #3b,#fb,#04,#fa,#f8,#ee,#e0,#f4
	db #04,#ee,#ec,#40,#4b,#fb,#40,#4a
	db #4a,#49,#49,#48,#48,#00,#47,#47
	db #46,#46,#45,#45,#44,#44,#98,#fe
	db #14,#42,#42,#fa,#10,#fa,#5d,#41
	db #43,#44,#46,#46,#fe,#53,#41,#40
	db #40,#e5,#64,#fa,#22,#3b,#0f,#3a
	db #3a,#39,#39,#fa,#34,#f9,#98,#f9
	db #88,#fa,#8a,#0e,#3b,#3c,#3d,#3c
	db #fe,#ab,#fe,#91,#b5,#ac,#77,#80
	db #f5,#00,#76,#76,#75,#75,#74,#74
	db #73,#06,#73,#72,#72,#71,#71,#fa
	db #2e,#fa,#1d,#6f,#33,#70,#72,#fe
	db #13,#fe,#23,#6d,#6d,#e5,#24,#fa
	db #1e,#40,#71,#fe,#41,#74,#75,#76
	db #77,#78,#79,#00,#7a,#7b,#7c,#7d
	db #7e,#7f,#80,#81,#20,#82,#86,#f5
	db #60,#84,#86,#88,#8a,#88,#9f,#fe
	db #6b,#82,#82,#f1,#6c,#fa,#48,#fa
	db #06,#fa,#66,#dc,#84,#ff,#f4,#00
	db #b8,#06,#f9,#48,#fe,#4e,#fe,#01
	db #fe,#50,#fe,#51,#fe,#52,#d4,#fe
	db #53,#ef,#20,#96,#ef,#32,#c8,#f5
	db #44,#c6,#c8,#13,#ca,#cc,#ca,#fe
	db #4f,#c4,#c4,#f7,#50,#fa,#4a,#00
	db #c7,#c6,#c5,#c4,#c3,#c2,#c1,#c0
	db #00,#bf,#be,#bd,#bc,#bb,#ba,#b9
	db #b8,#00,#b7,#b6,#b5,#b4,#b3,#b2
	db #b1,#b0,#41,#a8,#f5,#80,#a6,#a8
	db #aa,#ac,#aa,#fe,#8b,#2f,#a4,#a4
	db #b5,#8c,#86,#ef,#e0,#f4,#08,#fa
	db #fd,#ee,#20,#e8,#ee,#e0,#f4,#0a
	db #f4,#f8,#5e,#f4,#40,#5d,#5d,#5c
	db #00,#5c,#5b,#5b,#5a,#5a,#59,#59
	db #58,#c2,#fe,#55,#f6,#59,#57,#59
	db #5a,#5c,#fe,#54,#57,#28,#56,#56
	db #6d,#64,#4b,#f5,#00,#4a,#4a,#49
	db #00,#49,#48,#48,#47,#47,#46,#46
	db #45,#20,#45,#43,#f5,#18,#42,#43
	db #44,#45,#44,#9a,#fe,#23,#41,#41
	db #c1,#24,#f9,#1d,#44,#fe,#65,#45
	db #fd,#fe,#14,#fe,#12,#fe,#10,#fe
	db #0e,#fe,#0c,#fe,#0a,#4c,#f4,#00
	db #54,#54,#f5,#90,#59,#f5,#9c,#64
	db #fb,#a8,#65,#67,#05,#68,#6a,#6b
	db #6d,#70,#f5,#b4,#96,#fa,#c0,#00
	db #95,#95,#94,#94,#93,#92,#91,#90
	db #00,#8f,#8e,#8d,#8d,#8c,#8c,#8b
	db #8b,#20,#8a,#86,#f5,#d8,#84,#86
	db #88,#8a,#88,#98,#fe,#e3,#82,#82
	db #cd,#e4,#fa,#a8,#63,#63,#62,#00
	db #62,#61,#61,#60,#60,#5f,#5f,#5e
	db #01,#5e,#5d,#5d,#5c,#5c,#5b,#5b
	db #f4,#9c,#04,#57,#59,#5a,#5c,#5a
	db #fe,#43,#56,#56,#a0,#cd,#44,#77
	db #f5,#80,#76,#76,#75,#75,#74,#01
	db #74,#73,#73,#72,#72,#71,#71,#f4
	db #b4,#19,#6f,#70,#72,#fe,#93,#fe
	db #a3,#6d,#6d,#cd,#a4,#88,#f8,#9d
	db #6f,#6e,#6e,#fe,#d8,#6c,#6c,#6b
	db #00,#6b,#6a,#6a,#69,#69,#68,#68
	db #67,#c1,#fa,#20,#fa,#fd,#62,#64
	db #65,#67,#65,#fe,#03,#f5,#fe,#2a
	db #f1,#04,#f4,#98,#f4,#80,#96,#f5
	db #34,#86,#fb,#40,#5e,#b2,#fb,#46
	db #0c,#fb,#4c,#b8,#40,#fa,#8e,#a0
	db #40,#91,#60,#24,#fc,#01,#ee,#00
	db #f1,#02,#e3,#e3,#d3,#d3,#c3,#e1
	db #fd,#03,#c3,#27,#b3,#d1,#fd,#09
	db #b3,#a3,#e2,#00,#e8,#12,#fa,#42
	db #ff,#f4,#3c,#dc,#0c,#01,#1e,#01
	db #bd,#01,#bc,#01,#bb,#01,#ba,#01
	db #b9,#81,#b7,#18,#e2,#e2,#d2,#d2
	db #c2,#e1,#fd,#c3,#13,#c2,#b2,#d1
	db #fd,#c9,#b2,#a2,#e2,#c0,#e8,#d2
	db #ff,#fa,#02,#f4,#fc,#dc,#cc,#bd
	db #de,#e9,#91,#e8,#86,#e8,#92,#fa
	db #c2,#ff,#f4,#bc,#dc,#8c,#bd,#9e
	db #e9,#51,#e8,#46,#e8,#52,#fa,#82
	db #f4,#7c,#c0,#dc,#4c,#be,#5e,#f0
	db #e0,#e0,#d0,#d0,#c0,#fe,#01,#00
	db #01,#09,#34,#fe,#fd,#cc,#df,#d2
	db #fe,#cb,#f6,#f5,#f1,#7f,#e1,#ba
	db #01,#f2,#00,#f4,#f4,#c6,#61,#fd
	db #ca,#bb,#7b,#be,#60,#ff,#ee,#c0
	db #f4,#26,#e8,#38,#b8,#78,#94,#c6
	db #c4,#04,#b8,#bc,#94,#93,#ff,#fa
	db #8e,#70,#00,#01,#d6,#4f,#8f,#be
	db #45,#b8,#40,#ca,#58,#70,#00,#fa
	db #01,#d6,#4f,#8f,#be,#45,#e8,#40
	db #dc,#40,#d0,#f5,#c4,#c0,#ab,#f5
	db #d0,#b0,#f5,#dc,#a0,#f5,#e8,#90
	db #f5,#f4,#a0,#40,#ff,#64,#24,#ca
	db #b4,#ee,#08,#7c,#84,#c4,#1a,#d0
	db #f2,#e8,#28,#4c,#4b,#ff,#70,#40
	db #f4,#00,#e8,#90,#94,#f4,#04,#c0
	db #f4,#e0,#e2,#1c,#fa,#40,#33,#f1
	db #e1,#fc,#4d,#ee,#40,#e0,#d0,#fc
	db #65,#fa,#64,#33,#e1,#d1,#fc,#71
	db #ee,#64,#d0,#c0,#fc,#89,#fa,#88
	db #39,#d1,#c1,#fc,#95,#f4,#88,#fa
	db #a0,#c1,#b1,#fc,#ad,#39,#c0,#b0
	db #fc,#b3,#fa,#b2,#ee,#ac,#b1,#a1
	db #fc,#d1,#39,#b0,#a0,#fc,#d7,#fa
	db #d6,#ee,#d0,#a1,#91,#fc,#f5,#20
	db #a0,#90,#fc,#fb,#f1,#e3,#e3,#d3
	db #d3,#22,#c3,#e1,#fd,#03,#c3,#b3
	db #d1,#fd,#09,#b3,#40,#a3,#fa,#00
	db #80,#79,#a0,#fc,#01,#01,#00,#01
	db #09,#04,#fe,#89,#a9,#fc,#01,#fd
	db #be,#d6,#f4,#30,#fa,#48,#ee,#54
	db #d0,#0c,#f2,#5a,#ac,#fd,#aa,#ff
	db #e8,#54,#ca,#66,#a0,#3c,#f2,#0e
	db #f4,#aa,#f0,#aa,#dc,#2c,#8e,#ea
	db #ff,#f2,#da,#f0,#76,#be,#da,#a0
	db #bc,#f2,#8e,#f4,#2a,#de,#2a,#da
	db #f4,#df,#1d,#0e,#e7,#20,#8c,#fd
	db #3a,#e6,#20,#e2,#28,#f5,#6a,#70
	db #91,#de,#70,#e1,#e7,#a0,#8c,#fd
	db #ba,#e6,#a0,#e2,#a8,#f6,#ea,#49
	db #6f,#69,#fc,#01,#ec,#00,#6c,#fd
	db #1a,#f3,#0c,#fa,#2a,#ee,#25,#fe
	db #e8,#13,#e1,#55,#04,#1a,#dc,#0a
	db #64,#da,#65,#d6,#e7,#d0,#4c,#d7
	db #fd,#ea,#ee,#e2,#89,#e7,#00,#8c
	db #fd,#1a,#e6,#00,#dd,#08,#ff,#fb
	db #c5,#e6,#5f,#fc,#ba,#e9,#63,#fe
	db #fe,#f0,#87,#f1,#e7,#dc,#b5,#ff
	db #8a,#aa,#da,#60,#f6,#6a,#70,#c0
	db #aa,#20,#dc,#65,#f5,#5a,#9f,#d5
	db #df,#f6,#ea,#f4,#7e,#89,#fb,#0c
	db #f8,#fa,#fc,#8a,#f4,#0c,#fa,#1e
	db #ff,#c4,#00,#f2,#36,#fc,#f6,#ee
	db #36,#dc,#d0,#ee,#60,#dc,#36,#d0
	db #ba,#ff,#d0,#2a,#e8,#b4,#f8,#61
	db #fc,#3a,#ec,#62,#a2,#c2,#fa,#d4
	db #ec,#e5,#75,#4c,#fd,#fa,#e6,#e0
	db #48,#e8,#69,#e7,#d0,#6c,#fd,#ea
	db #df,#ec,#e2,#f6,#01,#89,#fb,#0c
	db #f8,#ca,#fc,#f6,#f4,#0c,#fa,#1e
	db #ff,#c4,#00,#f2,#36,#fc,#ba,#ee
	db #36,#dc,#a0,#e8,#d2,#e2,#3c,#a0
	db #fa,#fe,#e8,#b4,#f8,#61,#fc,#3a
	db #ec,#62,#a2,#c2,#fa,#d4,#ec,#e5
	db #4c,#fb,#fd,#fa,#e6,#e0,#22,#e8
	db #dc,#ba,#bb,#8a,#69,#ed,#5f,#f9
	db #5d,#3f,#6c,#6c,#fe,#4c,#f8,#6d
	db #f0,#55,#ec,#84,#f6,#4a,#ee,#90
	db #ff,#a7,#06,#ed,#1e,#f8,#6b,#fe
	db #7a,#fe,#3b,#ec,#5f,#e8,#51,#f4
	db #3a,#ff,#dc,#3a,#c4,#3a,#e4,#d5
	db #dc,#02,#ec,#e0,#e4,#fa,#ec,#45
	db #64,#2a,#d7,#dc,#ba,#5a,#2a,#69
	db #e7,#c0,#6c,#fd,#da,#f3,#cd,#f7
	db #be,#fe,#ea,#eb,#fb,#da,#ef,#f4
	db #aa,#60,#dc,#3a,#c4,#3a,#a2,#a6
	db #69,#b7,#e9,#34,#89,#fb,#4c,#f8
	db #44,#6c,#fd,#5a,#f2,#4c,#ee,#48
	db #f6,#f4,#6c,#fc,#5a,#e8,#6a,#b0
	db #46,#8c,#fd,#f6,#f9,#ee,#a9,#c0
	db #fc,#01,#ee,#00,#2a,#7f,#38,#fc
	db #01,#a9,#00,#fa,#5a,#a6,#09,#a6
	db #5d,#ac,#57,#f4,#1d,#fe,#a0,#bd
	db #a0,#71,#f4,#34,#58,#83,#f4,#9d
	db #a0,#3d,#af,#51,#38,#7f,#28,#fe
	db #a9,#50,#f8,#e8,#9c,#4c,#a8,#4c
	db #74,#e8,#1c,#ee,#28,#db,#fd,#f7
	db #f1,#03,#30,#fb,#f5,#ee,#06,#22
	db #dd,#01,#fa,#30,#ff,#fa,#54,#fa
	db #00,#ee,#30,#dc,#18,#f4,#54,#fa
	db #78,#f4,#9c,#be,#5a,#ff,#a0,#3c
	db #f4,#4a,#f4,#a8,#f4,#68,#fa,#20
	db #e2,#f6,#88,#e4,#f4,#d4,#ff,#f4
	db #74,#b8,#d4,#a0,#bc,#f4,#ca,#f4
	db #28,#f4,#e8,#fa,#a0,#e2,#76,#ff
	db #88,#64,#f4,#54,#f4,#f4,#b8,#54
	db #a0,#3c,#f4,#4a,#f4,#a8,#f4,#68
	db #ff,#fa,#20,#e2,#f6,#88,#e4,#f4
	db #d4,#f4,#74,#b8,#d4,#a0,#bc,#f4
	db #ca,#ff,#f4,#28,#f4,#e8,#fa,#a0
	db #e2,#76,#88,#64,#f4,#54,#f4,#f4
	db #b8,#54,#ff,#a0,#3c,#f4,#4a,#f4
	db #a8,#f4,#68,#fa,#20,#e2,#f6,#88
	db #e4,#f4,#d4,#ff,#f4,#74,#b8,#d4
	db #a0,#bc,#f4,#ca,#f4,#28,#f4,#e8
	db #fa,#a0,#e2,#76,#ff,#88,#64,#f4
	db #54,#f4,#f4,#b8,#54,#a0,#3c,#f4
	db #4a,#f4,#a8,#f4,#68,#ff,#fa,#20
	db #e2,#f6,#88,#e4,#f4,#d4,#f4,#74
	db #b8,#d4,#a0,#bc,#f4,#ca,#ff,#f4
	db #28,#f4,#e8,#fa,#a0,#e2,#76,#88
	db #64,#f4,#54,#f4,#f4,#b8,#54,#ff
	db #a0,#3c,#f4,#4a,#f4,#a8,#f4,#68
	db #fa,#20,#e2,#f6,#88,#e4,#f4,#d4
	db #ff,#f4,#74,#b8,#d4,#a0,#bc,#f4
	db #ca,#f4,#28,#f4,#e8,#fa,#a0,#e2
	db #76,#ff,#88,#64,#f4,#54,#f4,#f4
	db #b8,#54,#a0,#3c,#f4,#4a,#f4,#a8
	db #f4,#68,#ff,#fa,#20,#e2,#f6,#88
	db #e4,#f4,#d4,#f4,#74,#b8,#d4,#a0
	db #bc,#f4,#ca,#ff,#f4,#28,#f4,#e8
	db #fa,#a0,#e2,#76,#88,#64,#f4,#54
	db #f4,#f4,#b8,#54,#ff,#a0,#3c,#f4
	db #4a,#f4,#a8,#f4,#68,#fa,#20,#e2
	db #f6,#88,#e4,#f4,#d4,#ff,#f4,#74
	db #b8,#d4,#a0,#bc,#f4,#ca,#f4,#28
	db #f4,#e8,#fa,#a0,#ee,#be,#10,#fe
	db #01,#00,#01,#00,#01,#ff,#01,#fe
	db #01,#fd,#01,#fc,#e3,#fa,#0d,#de
	db #fb,#18,#ca,#06,#0a,#fb,#54,#f4
	db #48,#ee,#30,#d6,#30,#09,#df,#fb
	db #a2,#fa,#90,#0b,#fb,#ae,#b8,#54
	db #f4,#fb,#fa,#ae,#fa,#02,#ff,#f4
	db #a2,#be,#c0,#ee,#a8,#ee,#14,#d6
	db #de,#dc,#98,#fa,#6e,#be,#1a,#ff
	db #ee,#6e,#f4,#68,#be,#da,#f4,#7b
	db #fa,#2e,#fa,#82,#f4,#22,#be,#40
	db #ff,#ee,#28,#ee,#94,#d6,#5e,#dc
	db #18,#fa,#ee,#be,#9a,#ee,#ee,#f4
	db #e8,#ff,#be,#5a,#f4,#fb,#fa,#ae
	db #fa,#02,#f4,#a2,#be,#c0,#ee,#a8
	db #ee,#14,#ff,#d6,#de,#dc,#98,#fa
	db #6e,#be,#1a,#ee,#6e,#f4,#68,#be
	db #da,#f4,#7b,#ff,#fa,#2e,#fa,#82
	db #f4,#22,#be,#40,#ee,#28,#ee,#94
	db #d6,#5e,#dc,#18,#ff,#fa,#ee,#be
	db #9a,#ee,#ee,#f4,#e8,#be,#5a,#f4
	db #fb,#fa,#ae,#fa,#02,#ff,#f4,#a2
	db #be,#c0,#ee,#a8,#ee,#14,#d6,#de
	db #dc,#98,#fa,#6e,#be,#1a,#ff,#ee
	db #6e,#f4,#68,#be,#da,#f4,#7b,#fa
	db #2e,#fa,#82,#f4,#22,#be,#40,#ff
	db #ee,#28,#ee,#94,#d6,#5e,#dc,#18
	db #fa,#ee,#be,#9a,#ee,#ee,#f4,#e8
	db #ff,#be,#5a,#f4,#fb,#fa,#ae,#fa
	db #02,#f4,#a2,#be,#c0,#ee,#a8,#ee
	db #14,#ff,#d6,#de,#dc,#98,#fa,#6e
	db #be,#1a,#ee,#6e,#f4,#68,#be,#da
	db #f4,#7b,#ff,#fa,#2e,#fa,#82,#f4
	db #22,#be,#40,#ee,#28,#ee,#94,#d6
	db #5e,#dc,#18,#ff,#fa,#ee,#be,#9a
	db #ee,#ee,#f4,#e8,#be,#5a,#f4,#fb
	db #fa,#ae,#fa,#02,#ff,#f4,#a2,#be
	db #c0,#ee,#a8,#ee,#14,#d6,#de,#dc
	db #98,#fa,#6e,#be,#1a,#ff,#ee,#6e
	db #f4,#68,#be,#da,#f4,#7b,#fa,#2e
	db #fa,#82,#f4,#22,#be,#40,#ff,#ee
	db #28,#ee,#94,#d6,#5e,#dc,#18,#fa
	db #ee,#be,#9a,#ee,#ee,#f4,#e8,#ff
	db #be,#5a,#f4,#fb,#fa,#ae,#fa,#02
	db #f4,#a2,#be,#c0,#ee,#a8,#ee,#14
	db #ff,#d6,#de,#dc,#98,#fa,#6e,#be
	db #1a,#ee,#6e,#f4,#68,#be,#da,#f4
	db #7b,#ff,#fa,#2e,#fa,#82,#f4,#22
	db #be,#40,#ee,#28,#ee,#94,#d6,#5e
	db #dc,#18,#ff,#fa,#ee,#be,#9a,#ee
	db #ee,#f4,#e8,#be,#5a,#f4,#fb,#fa
	db #ae,#fa,#02,#ff,#f4,#a2,#be,#c0
	db #ee,#a8,#ee,#14,#d6,#de,#dc,#98
	db #fa,#6e,#be,#1a,#ff,#ee,#6e,#f4
	db #68,#be,#da,#f4,#7b,#fa,#2e,#fa
	db #82,#f4,#22,#be,#40,#e0,#ee,#28
	db #ee,#94,#ee,#05,#2f,#5f,#00,#fc
	db #01,#2d,#f5,#01,#e2,#00,#d3,#00
	db #fd,#5a,#a9,#00,#ff,#fd,#b4,#a3
	db #5a,#ac,#57,#fa,#68,#f4,#b1,#d0
	db #ed,#82,#ed,#f4,#19,#fc,#fa,#77
	db #a6,#dd,#ac,#d7,#fa,#e8,#f4,#31
	db #fd,#fc,#2c,#0e,#1f,#0e,#0c,#09
	db #d5,#a5,#e8,#00,#f4,#30,#fa,#48
	db #ee,#54,#d1,#d0,#0c,#f4,#60,#0f
	db #fe,#a3,#0d,#0c,#0a,#e8,#54,#ff
	db #ca,#66,#a0,#3c,#f4,#4a,#f4,#a8
	db #ee,#a8,#e8,#38,#82,#de,#f4,#e0
	db #fd,#ee,#74,#be,#da,#a0,#bc,#f4
	db #ca,#f4,#28,#ee,#28,#0d,#fb,#06
	db #5f,#0b,#fb,#0c,#0a,#fb,#12,#fa
	db #f4,#fa,#0c,#f4,#06,#fa,#00,#bf
	db #f4,#0c,#09,#fb,#42,#f4,#18,#e8
	db #94,#d0,#0c,#f4,#60,#ee,#f4,#ff
	db #be,#5a,#fa,#d2,#fa,#e4,#fa,#d8
	db #fa,#0d,#b2,#b4,#ee,#a2,#ee,#a8
	db #df,#f4,#44,#d0,#32,#09,#fb,#c2
	db #f4,#98,#b8,#14,#f4,#e0,#ee,#74
	db #ff,#be,#da,#fa,#52,#fa,#64,#fa
	db #58,#fa,#8d,#b2,#34,#ee,#22,#ee
	db #28,#df,#f4,#c4,#d0,#b2,#09,#fb
	db #42,#f4,#18,#b8,#94,#f4,#60,#ee
	db #f4,#ff,#be,#5a,#fa,#d2,#fa,#e4
	db #fa,#d8,#fa,#0d,#b2,#b4,#ee,#a2
	db #ee,#a8,#df,#f4,#44,#d0,#32,#09
	db #fb,#c2,#f4,#98,#b8,#14,#f4,#e0
	db #ee,#74,#ff,#be,#da,#fa,#52,#fa
	db #64,#fa,#58,#fa,#8d,#b2,#34,#ee
	db #22,#ee,#28,#df,#f4,#c4,#d0,#b2
	db #09,#fb,#42,#f4,#18,#b8,#94,#f4
	db #60,#ee,#f4,#ff,#be,#5a,#fa,#d2
	db #fa,#e4,#fa,#d8,#fa,#0d,#b2,#b4
	db #ee,#a2,#ee,#a8,#df,#f4,#44,#d0
	db #32,#09,#fb,#c2,#f4,#98,#b8,#14
	db #f4,#e0,#ee,#74,#ff,#be,#da,#fa
	db #52,#fa,#64,#fa,#58,#fa,#8d,#b2
	db #34,#ee,#22,#ee,#28,#df,#f4,#c4
	db #d0,#b2,#09,#fb,#42,#f4,#18,#b8
	db #94,#f4,#60,#ee,#f4,#ff,#be,#5a
	db #fa,#d2,#fa,#e4,#fa,#d8,#fa,#0d
	db #b2,#b4,#ee,#a2,#ee,#a8,#df,#f4
	db #44,#d0,#32,#09,#fb,#c2,#f4,#98
	db #b8,#14,#f4,#e0,#ee,#74,#ff,#be
	db #da,#fa,#52,#fa,#64,#fa,#58,#fa
	db #8d,#b2,#34,#ee,#22,#ee,#28,#df
	db #f4,#c4,#d0,#b2,#09,#fb,#42,#f4
	db #18,#b8,#94,#f4,#60,#ee,#f4,#ff
	db #be,#5a,#fa,#d2,#fa,#e4,#fa,#d8
	db #fa,#0d,#b2,#b4,#ee,#a2,#ee,#a8
	db #df,#f4,#44,#d0,#32,#09,#fb,#c2
	db #f4,#98,#b8,#14,#f4,#e0,#ee,#74
	db #ff,#be,#da,#fa,#52,#fa,#64,#fa
	db #58,#fa,#8d,#b2,#34,#ee,#22,#ee
	db #28,#df,#f4,#c4,#d0,#b2,#09,#fb
	db #42,#f4,#18,#b8,#94,#f4,#60,#ee
	db #f4,#ff,#be,#5a,#fa,#d2,#fa,#e4
	db #fa,#d8,#fa,#0d,#b2,#b4,#ee,#a2
	db #ee,#a8,#df,#f4,#44,#d0,#32,#09
	db #fb,#c2,#f4,#98,#b8,#14,#f4,#e0
	db #ee,#74,#ff,#be,#da,#fa,#52,#fa
	db #64,#fa,#58,#fa,#8d,#b2,#34,#ee
	db #22,#ee,#28,#df,#f4,#c4,#d0,#b2
	db #09,#fb,#42,#f4,#18,#b8,#94,#f4
	db #60,#ee,#f4,#ff,#be,#5a,#fa,#d2
	db #fa,#e4,#fa,#d8,#fa,#0d,#b2,#b4
	db #ee,#a2,#ee,#a8,#df,#f4,#44,#d0
	db #32,#09,#fb,#c2,#f4,#98,#b8,#14
	db #f4,#e0,#ee,#74,#ff,#be,#da,#fa
	db #52,#fa,#64,#fa,#58,#fa,#8d,#b2
	db #34,#ee,#22,#ee,#28,#c0,#f4,#c4
	db #fa,#dc,#0f,#04,#0e,#0e,#0d,#0d
	db #0c,#fc,#02,#0c,#0b,#9f,#fc,#08
	db #0b,#0a,#e2,#00,#e8,#12,#fa,#42
	db #f4,#3c,#dc,#0c,#ff,#01,#1e,#01
	db #bd,#01,#bc,#01,#bb,#01,#ba,#01
	db #b9,#01,#b8,#01,#b7,#ff,#70,#16
	db #01,#00,#01,#09,#34,#fe,#fd,#cc
	db #df,#d2,#fe,#cb,#f6,#f5,#ff,#fd
	db #ca,#bb,#02,#b8,#00,#d0,#3c,#ac
	db #48,#ee,#b4,#ee,#c0,#f4,#26,#ff
	db #e8,#38,#b8,#78,#94,#c6,#c4,#04
	db #b8,#bc,#94,#93,#fa,#8e,#70,#00
	db #ff,#01,#d6,#4f,#8f,#be,#45,#b8
	db #40,#ca,#58,#70,#00,#01,#d6,#4f
	db #8f,#ea,#be,#45,#e8,#40,#dc,#40
	db #0d,#f5,#c4,#0c,#f5,#d0,#0b,#af
	db #f5,#dc,#0a,#f5,#e8,#09,#f5,#f4
	db #a0,#40,#64,#24,#ca,#b4,#ff,#ee
	db #08,#7c,#84,#c4,#1a,#d0,#f2,#e8
	db #28,#4c,#4b,#70,#40,#f4,#00,#fc
	db #e8,#90,#94,#f4,#04,#c0,#f4,#e0
	db #e2,#1c,#e2,#40,#0e,#0d,#cc,#fc
	db #65,#e2,#64,#0d,#0c,#fc,#89,#e2
	db #88,#0c,#0b,#cc,#fc,#ad,#e2,#ac
	db #0b,#0a,#fc,#d1,#e2,#d0,#0a,#09
	db #ff,#fc,#f5,#fa,#f4,#fd,#5e,#fd
	db #87,#fc,#02,#fe,#ca,#fc,#08,#fe
	db #ee,#80,#fa,#00,#32,#fe,#01,#00
	db #01,#00,#01,#ff,#01,#fe,#01,#fd
	db #01,#fc,#3b,#fa,#2a,#ba,#a1,#c0
	db #25,#a1,#20,#c0,#80,#80,#bf,#2a
	db #a1,#40,#25,#eb,#a1,#a0,#c0,#00
	db #80,#3f,#2a,#a1,#c0,#25,#a1,#20
	db #c0,#80,#ae,#80,#bf,#2a,#a1,#40
	db #25,#a1,#a0,#c0,#00,#80,#3f,#2a
	db #ba,#a1,#c0,#25,#a1,#20,#c0,#80
	db #80,#bf,#2a,#a1,#40,#25,#eb,#a1
	db #a0,#c0,#00,#80,#3f,#2a,#a1,#c0
	db #25,#a1,#20,#c0,#80,#ae,#80,#bf
	db #2a,#a1,#40,#25,#a1,#a0,#c0,#00
	db #80,#3f,#2a,#ba,#a1,#c0,#25,#a1
	db #20,#c0,#80,#80,#bf,#2a,#a1,#40
	db #25,#fe,#a1,#a0,#a0,#40,#a0,#5f
	db #c0,#c0,#80,#ff,#c0,#80,#80,#bf
	db #21,#fe,#41,#40,#c0,#00,#80,#3f
	db #c0,#c0,#80,#ff,#c0,#80,#e0,#bf
	db #25,#e8,#a1,#e0,#c0,#40,#80,#7f
	db #32,#e9,#00,#00,#ff,#01,#00,#01
	db #00,#01,#ff,#01,#fe,#01,#fd,#01
	db #fc,#01,#fb,#01,#fa,#ff,#01,#f9
	db #01,#f8,#01,#f7,#01,#f6,#01,#f5
	db #01,#f4,#01,#f3,#01,#f2,#ff,#01
	db #f1,#01,#f0,#01,#ef,#01,#ee,#01
	db #ed,#01,#ec,#01,#eb,#01,#ea,#f0
	db #01,#e9,#01,#e8,#01,#e7,#ce,#e6
	db #0e,#6d,#ff,#01,#01,#81,#00,#0e
	db #01,#81,#80,#7f,#0e,#01,#01,#b7
	db #80,#ff,#0e,#01,#81,#80,#7f,#0e
	db #cb,#e3,#d6,#1e,#f4,#4e,#ff,#e2
	db #4e,#d6,#f4,#a6,#54,#82,#4e,#c4
	db #e4,#7c,#08,#be,#ec,#82,#ce,#ff
	db #c4,#64,#7c,#88,#be,#6c,#82,#4e
	db #c4,#e4,#7c,#08,#be,#ec,#82,#ce
	db #ff,#c4,#64,#7c,#88,#be,#6c,#82
	db #4e,#c4,#e4,#7c,#08,#be,#ec,#82
	db #ce,#ff,#c4,#64,#7c,#88,#be,#6c
	db #82,#4e,#c4,#e4,#7c,#08,#be,#ec
	db #82,#ce,#ff,#c4,#64,#7c,#88,#be
	db #6c,#82,#4e,#c4,#e4,#7c,#08,#be
	db #ec,#82,#ce,#ff,#c4,#64,#7c,#88
	db #be,#6c,#82,#4e,#c4,#e4,#7c,#08
	db #be,#ec,#82,#ce,#ff,#c4,#64,#7c
	db #88,#be,#6c,#82,#4e,#c4,#e4,#7c
	db #08,#be,#ec,#82,#ce,#80,#f4,#0b
	db #9d,#7f,#f6,#fc,#01,#01,#00,#01
	db #09,#01,#08,#01,#07,#01,#06,#01
	db #05,#9e,#40,#fa,#84,#cf,#fc,#c1
	db #d0,#c0,#fa,#f5,#dc,#d2,#76,#7e
	db #ec,#fc,#21,#a6,#20,#dc,#9c,#fa
	db #a3,#dc,#80,#8e,#c8,#84,#66,#cf
	db #fc,#41,#a6,#40,#76,#ec,#fc,#a1
	db #a6,#a0,#c4,#96,#fb,#3b,#93,#b8
	db #fc,#07,#a5,#fb,#9b,#fa,#00,#83
	db #67,#a4,#fc,#19,#f4,#0c,#6e,#dd
	db #fc,#2b,#f4,#24,#fa,#18,#fc,#e8
	db #12,#fa,#06,#01,#00,#01,#9f,#8e
	db #fe,#fa,#cf,#db,#d9,#00,#d7,#d5
	db #d3,#d1,#d0,#cf,#ce,#cd,#10,#cc
	db #cb,#c4,#f5,#e2,#c0,#c4,#c8,#cc
	db #4a,#c8,#fe,#ed,#bc,#bc,#f7,#ee
	db #9d,#f5,#00,#9c,#09,#9d,#9f,#a0
	db #9f,#fe,#0b,#9b,#9b,#cd,#0c,#00
	db #99,#95,#91,#8d,#89,#85,#81,#7d
	db #00,#79,#75,#71,#6d,#69,#66,#62
	db #5f,#00,#5b,#58,#54,#ff,#f4,#ea
	db #df,#d5,#d9,#fb,#b9,#f7,#64,#a5
	db #fe,#6e,#fe,#6c,#a3,#a3,#fc,#6c
	db #22,#a6,#a7,#fe,#70,#a3,#a2,#a2
	db #fe,#74,#a5,#00,#a7,#a7,#a8,#a6
	db #a4,#a2,#a1,#a1,#11,#a2,#a4,#a6
	db #fe,#85,#a7,#a9,#a7,#fe,#87,#3c
	db #ff,#ff,#fe,#8b,#fc,#90,#fb,#9c
	db #fe,#7d,#a1,#ff,#00,#fd,#fb,#f9
	db #f7,#f5,#f3,#f1,#ef,#02,#ed,#eb
	db #ea,#e8,#e6,#e4,#f5,#cb,#dd,#f4
	db #fd,#6e,#fc,#6e,#fd,#a2,#fe,#45
	db #9e,#fd,#3e,#9a,#99,#02,#98,#97
	db #96,#95,#94,#93,#f4,#d7,#91,#09
	db #93,#95,#97,#95,#fe,#e3,#8f,#8f
	db #cd,#e4,#ed,#fa,#1f,#fa,#c0,#f4
	db #2b,#af,#f5,#38,#f4,#b4,#cf,#fb
	db #50,#00,#ce,#cd,#cd,#cc,#cc,#cb
	db #ca,#c8,#00,#c7,#c6,#c5,#c4,#c3
	db #c2,#c2,#c1,#18,#c0,#c0,#b8,#e9
	db #68,#f4,#38,#ae,#ad,#ac,#03,#ab
	db #aa,#a9,#a8,#a7,#a6,#fd,#c5,#ee
	db #26,#14,#a4,#a5,#a6,#fb,#93,#a3
	db #fd,#aa,#a6,#a8,#02,#a9,#a7,#a5
	db #a3,#a1,#a1,#fe,#97,#a7,#00,#a9
	db #aa,#ab,#a8,#a5,#a2,#9f,#9f,#10
	db #a2,#a5,#a8,#ce,#c3,#a1,#9d,#99
	db #95,#3b,#91,#8d,#f9,#1f,#ef,#21
	db #f4,#80,#c4,#f5,#28,#f4,#44,#80
	db #f9,#79,#b7,#b7,#b6,#b5,#b5,#b4
	db #b2,#0c,#b1,#b0,#af,#ad,#fe,#8d
	db #fd,#8e,#aa,#a4,#fc,#ed,#58,#fc
	db #a7,#fc,#b0,#fd,#6b,#fe,#ac,#fd
	db #af,#a2,#a2,#f0,#fd,#b2,#f3,#78
	db #fc,#83,#fe,#bc,#a0,#ff,#fe,#fd
	db #00,#fc,#fb,#fa,#f9,#f8,#f7,#f6
	db #f5,#54,#ea,#e9,#a0,#e9,#fe,#b6
	db #eb,#fd,#b6,#e8,#e8,#88,#fd,#b8
	db #ea,#ec,#ed,#fe,#bb,#e8,#e6,#e6
	db #40,#e8,#fe,#ba,#ed,#ee,#ef,#ec
	db #ea,#e7,#18,#e4,#e4,#e7,#fe,#c4
	db #fe,#d1,#ee,#f1,#ed,#01,#ea,#e6
	db #e2,#e2,#e6,#ea,#ed,#e6,#dd,#af
	db #fa,#66,#db,#fb,#06,#58,#fb,#0c
	db #fa,#3a,#f4,#06,#fa,#b2,#ff,#fa
	db #1e,#ee,#00,#fa,#24,#ee,#06,#fa
	db #4e,#fa,#48,#d6,#00,#fa,#8f,#84
	db #fe,#c9,#e4,#e2,#e0,#de,#fa,#78
	db #df,#e1,#1f,#e3,#e5,#e7,#fc,#c1
	db #f7,#aa,#fa,#66,#f4,#b9,#dc,#6c
	db #e8,#e8,#60,#e2,#42,#d0,#c0,#c3
	db #fb,#50,#c1,#bf,#bd,#10,#bc,#ba
	db #b8,#f4,#5b,#b6,#b8,#bb,#bd,#4d
	db #bb,#fe,#67,#b4,#b4,#f1,#68,#a0
	db #c0,#83,#fb,#e0,#6d,#af,#fb,#e6
	db #fa,#d4,#6e,#fb,#f2,#f4,#e6,#75
	db #fb,#04,#f4,#fa,#f8,#ee,#e0,#f4
	db #04,#ee,#ec,#93,#fb,#40,#92,#91
	db #00,#90,#8f,#8e,#8d,#8c,#8b,#8a
	db #89,#00,#88,#87,#86,#85,#84,#83
	db #82,#81,#c1,#fa,#10,#fa,#5d,#80
	db #83,#86,#89,#86,#fe,#63,#38,#7d
	db #7d,#e5,#64,#fa,#2e,#fa,#8d,#de
	db #df,#e0,#00,#e1,#e2,#e3,#e4,#e5
	db #e6,#e7,#e8,#60,#e9,#fa,#c2,#fa
	db #a5,#e8,#ea,#eb,#ed,#eb,#90,#fe
	db #ab,#e6,#e6,#fd,#ac,#ec,#ef,#ec
	db #ea,#06,#e7,#e4,#e4,#e7,#ea,#f7
	db #b8,#fa,#c9,#b8,#82,#f5,#d0,#b6
	db #b8,#bb,#bd,#bb,#fe,#db,#b4,#55
	db #b4,#e5,#dc,#a4,#fb,#00,#db,#fb
	db #06,#58,#fb,#0c,#ff,#fa,#8e,#f4
	db #06,#fa,#ca,#fa,#1e,#ee,#00,#fa
	db #24,#ee,#06,#fa,#4e,#e0,#fa,#48
	db #d6,#00,#f9,#a6,#e6,#e4,#e2,#e0
	db #de,#81,#fa,#78,#df,#e1,#e3,#e5
	db #e7,#e9,#f4,#8a,#fd,#fa,#66,#f4
	db #b9,#dc,#6c,#e8,#60,#e2,#42,#d0
	db #c0,#c3,#fb,#50,#02,#c1,#bf,#bd
	db #bc,#ba,#b8,#f4,#5b,#b6,#09,#b8
	db #bb,#bd,#bb,#fe,#67,#b4,#b4,#f1
	db #68,#ad,#a0,#c0,#83,#fb,#e0,#af
	db #fb,#e6,#fa,#d4,#6e,#fb,#f2,#be
	db #f4,#e6,#75,#fb,#04,#fa,#f8,#ee
	db #e0,#f4,#04,#ee,#ec,#93,#80,#fb
	db #40,#92,#91,#90,#8f,#8e,#8d,#8c
	db #00,#8b,#8a,#89,#88,#87,#86,#85
	db #84,#18,#83,#82,#81,#fa,#10,#fa
	db #5d,#80,#83,#86,#26,#89,#86,#fe
	db #63,#7d,#7d,#e5,#64,#fa,#22,#74
	db #07,#73,#72,#71,#70,#6f,#fa,#34
	db #fa,#99,#fa,#88,#82,#fa,#a5,#73
	db #75,#76,#78,#76,#fe,#ab,#71,#50
	db #71,#b5,#ac,#ea,#f5,#00,#e9,#e8
	db #e7,#e6,#00,#e5,#e4,#e3,#e2,#e1
	db #e0,#df,#de,#c1,#fa,#2e,#fa,#1d
	db #da,#dd,#e0,#e3,#e0,#fe,#23,#30
	db #d7,#d7,#e5,#24,#fa,#1e,#df,#e1
	db #e3,#e5,#00,#e7,#e9,#ea,#ec,#ee
	db #f0,#f2,#f4,#01,#f6,#f8,#fa,#fc
	db #fe,#a0,#a4,#f5,#60,#04,#a2,#a4
	db #a7,#a9,#a7,#fe,#6b,#ff,#ff,#ff
	db #f1,#6c,#fa,#48,#fa,#06,#fa,#66
	db #dc,#84,#f4,#00,#b8,#06,#fa,#0d
	db #00,#de,#df,#e0,#e1,#e2,#e3,#e4
	db #e5,#1a,#e6,#e7,#e8,#fe,#53,#ef
	db #20,#b8,#ef,#32,#f6,#a4,#f5,#44
	db #f3,#fe,#5a,#fb,#f8,#fe,#4f,#f1
	db #f1,#c0,#f7,#50,#fa,#4a,#f5,#f3
	db #f2,#f1,#f0,#ef,#0c,#ed,#ec,#eb
	db #ea,#fc,#cd,#fb,#d2,#dd,#dc,#08
	db #db,#da,#d8,#cf,#f5,#80,#cc,#cf
	db #d1,#25,#d3,#d1,#fe,#8b,#ca,#ca
	db #b5,#8c,#a4,#ef,#e0,#fd,#f4,#08
	db #fa,#fd,#ee,#20,#ee,#e0,#f4,#0a
	db #f4,#f8,#b9,#f5,#40,#00,#b8,#b7
	db #b6,#b5,#b4,#b3,#b2,#b1,#04,#b0
	db #b0,#af,#ae,#af,#f5,#58,#ac,#af
	db #12,#b1,#b4,#b1,#fe,#63,#a9,#a9
	db #6d,#64,#93,#80,#f5,#00,#92,#91
	db #90,#8f,#8e,#8d,#8c,#02,#8b,#8a
	db #89,#88,#87,#83,#f5,#18,#81,#09
	db #83,#85,#87,#85,#fe,#23,#7f,#7f
	db #c1,#24,#80,#fa,#1e,#84,#85,#86
	db #87,#88,#89,#8a,#00,#8b,#8c,#8d
	db #8e,#8f,#90,#91,#92,#15,#93,#94
	db #95,#f4,#00,#a5,#f5,#90,#af,#f5
	db #9c,#40,#c4,#fb,#a8,#c7,#ca,#cd
	db #d0,#d3,#d6,#50,#dd,#f5,#b4,#b8
	db #fa,#c0,#b7,#b7,#b6,#b5,#00,#b5
	db #b4,#b2,#b1,#b0,#af,#ad,#ad,#02
	db #ac,#ac,#ab,#aa,#aa,#a4,#f5,#d8
	db #a2,#09,#a4,#a7,#a9,#a7,#fe,#e3
	db #ff,#ff,#cd,#e4,#80,#fa,#a8,#c3
	db #c2,#c1,#c0,#bf,#be,#bd,#0c,#bc
	db #bb,#ba,#b9,#fe,#c6,#fe,#c9,#b4
	db #b3,#41,#b2,#f4,#9c,#ac,#af,#b1
	db #b4,#b1,#fe,#43,#28,#a9,#a9,#cd
	db #44,#ea,#f5,#80,#e9,#e8,#e7,#00
	db #e6,#e5,#e4,#e3,#e2,#e1,#e0,#df
	db #41,#de,#f4,#b4,#da,#dd,#e0,#e3
	db #e0,#fe,#a3,#30,#d7,#d7,#cd,#a4
	db #fa,#df,#dc,#db,#da,#d9,#00,#d8
	db #d7,#d6,#d5,#d4,#d3,#d2,#d1,#03
	db #d0,#cf,#ce,#cd,#cc,#cb,#fa,#20
	db #fa,#fd,#04,#c1,#c4,#c7,#ca,#c7
	db #fe,#03,#be,#be,#ea,#f1,#04,#f4
	db #98,#f4,#80,#b8,#f5,#34,#a4,#fb
	db #40,#db,#bc,#fb,#46,#69,#fb,#4c
	db #b8,#40,#fa,#8e,#a0,#40,#9d,#f6
	db #c0,#fc,#01,#ee,#00,#00,#ff,#01
	db #00,#01,#00,#01,#ff,#01,#fe,#01
	db #fd,#01,#fc,#01,#fb,#01,#fa,#ff
	db #01,#f9,#01,#f8,#01,#f7,#01,#f6
	db #01,#f5,#01,#f4,#01,#f3,#01,#f2
	db #ff,#01,#f1,#01,#f0,#01,#ef,#01
	db #ee,#01,#ed,#01,#ec,#01,#eb,#01
	db #ea,#f0,#01,#e9,#01,#e8,#01,#e7
	db #ce,#e6,#00,#00

;
.music_info
	db "QuasarDisc 3 - Acte 3 - Overflow Previews - Tunnel (2002)(Futurs)()",0
	db "",0

	read "music_end.asm"
