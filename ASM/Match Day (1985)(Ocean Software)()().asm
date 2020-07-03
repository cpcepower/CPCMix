; Music of Match Day (1985)(Ocean Software)()()
; Ripped by Megachur the 07/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MATCHDAY.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 07
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9600
FIRST_THEME				equ 0
LAST_THEME				equ 2	; 0 -> 2

	read "music_header.asm"
	
	jp l9638	; play
	jp l9621 
	jp l9640
	jp l965f	; init
	jp l9662
	jp l9665
	jp l9668
	jp l9659	; whistle !
	jp l9656	; applause
	jp l9653	; sound fx
	jp l9650	; sound fx
.l9621
	ld a,#01
	ld (l9883),a
	ld (l9a83),a
	ld (l9c83),a
	ld a,#ad
	ld (l981b),a
	ld (l9a1b),a
	ld (l9c1b),a
	ret
;
.play_music
.l9638
;
	exx
	push bc
	call l9884
	pop bc
	exx
	ret
.l9640
	ld hl,l9883
	ld a,(hl)
	or a
	ret z
	inc h
	inc h
	ld a,(hl)
	or a
	ret z
	inc h
	inc h
	ld a,(hl)
	or a
	ret
.l9650
	ld a,#10
	db #01
.l9653
	ld a,#0c
	db #01
.l9656
	ld a,#08
	db #01
.l9659
	ld a,#04
	ld (l9df2),a
	ret
.l965f
	ld e,#00
	db #01
.l9662
	ld e,#01
	db #01
.l9665
	ld e,#02
	db #01
;
.real_init_music
.l9668
;
	ld e,#03
	di
	ld ix,l9e9b
	ld d,#00
	sla e
	sla e
	sla e
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l987e),hl
	ld l,(ix+#02)
	ld h,(ix+#03)
	ld (l9a7e),hl
	ld l,(ix+#04)
	ld h,(ix+#05)
	ld (l9c7e),hl
	ld hl,l987c
	ld (l9880),hl
	ld hl,l9a7c
	ld (l9a80),hl
	ld hl,l9c7c
	ld (l9c80),hl
	xor a
	ld (l9df2),a
	ld (l9883),a
	ld (l9a83),a
	ld (l9c83),a
	ld (l987c),a
	ld (l9a7c),a
	ld (l9c7c),a
	ld (l9882),a
	ld (l9a82),a
	ld (l9c82),a
	inc a
	ld (l987d),a
	ld (l9a7d),a
	ld (l9c7d),a
	ei
	ret
.l96d1
	pop ix
	pop bc
	djnz l96e5
	pop hl
.l96d7
	ld a,(hl)
	inc hl
	add a
	jp nc,l97a9
	jr nz,l96e9
	ld e,#83
	ld a,#ff
	ld (de),a
	push hl
.l96e5
	or a
	push bc
	jp (ix)
.l96e9
	srl a
	srl a
	dec a
	jr nz,l96f7
	pop hl
	dec c
	jp p,l96d7
.l96f5
	jr l96f5
.l96f7
	dec a
	jr nz,l970a
	inc c
	ld a,c
	cp #10
.l96fe
	jr nc,l96fe
	ld e,(hl)
	inc hl
	ld a,d
	ld d,(hl)
	inc hl
	push hl
	ex de,hl
	ld d,a
	jr l96d7
.l970a
	dec a
	jr nz,l9715
	ld e,(hl)
	inc hl
	ld a,d
	ld d,(hl)
	ex de,hl
	ld d,a
	jr l96d7
.l9715
	dec a
	jr nz,l972d
	ld e,(hl)
	inc hl
	ld a,d
	ld d,(hl)
	inc hl
	push hl
	ld h,a
	ld l,#23
	ex de,hl
	ld b,#0f
.l9724
	ld a,(hl)
	ld (de),a
	inc hl
	inc de
	djnz l9724
	pop hl
	jr l96d7
.l972d
	dec a
	jr nz,l9745
	ld e,(hl)
	inc hl
	ld a,d
	ld d,(hl)
	inc hl
	push hl
	ld l,#34
	ld h,a
	ex de,hl
	ld b,#09
.l973c
	ld a,(hl)
	ld (de),a
	inc hl
	inc de
	djnz l973c
	pop hl
	jr l96d7
.l9745
	dec a
	jr nz,l975e
	ld e,(hl)
	inc hl
	ld a,d
	ld d,(hl)
	inc hl
	push hl
	ld l,#23
	ld h,a
	ex de,hl
	ld b,#1c
.l9754
	ld a,(hl)
	ld (de),a
	inc hl
	inc de
	djnz l9754
	pop hl
	jp l96d7
.l975e
	dec a
	jr nz,l9777
	ld e,(hl)
	inc hl
	ld a,d
	ld d,(hl)
	inc hl
	push hl
	ld l,#5c
	ld h,a
	ex de,hl
	ld b,#20
.l976d
	ld a,(hl)
	ld (de),a
	inc hl
	inc de
	djnz l976d
	pop hl
	jp l96d7
.l9777
	dec a
	jr nz,l9780
	ld a,(hl)
	ld (de),a
	inc hl
	jp l96d7
.l9780
	dec a
	jr nz,l9792
	ld a,(hl)
	inc hl
	push hl
	push af
	ld a,c
	add #04
	ld c,a
	cp #10
	jp c,l96d7
.l9790
	jr l9790
.l9792
	dec a
.l9793
	jr nz,l9793
	pop af
	dec a
	jr z,l979f
	pop hl
	push hl
	push af
	jp l96d7
.l979f
	pop af
	ld a,c
	sub #04
	ld c,a
	jp p,l96d7
.l97a7
	jr l97a7
.l97a9
	cp #d0
	jr c,l97c3
	jr nz,l97bb
.l97af
	ld a,(hl)
	inc hl
	add #5b
	ld e,a
	ld a,(de)
	ld b,a
	push hl
	push bc
	or a
	jp (ix)
.l97bb
	ld a,(#00ad)
	ld e,#1b
	ld (de),a
	jr l97af
.l97c3
	push af
	ld a,(hl)
	add #5b
	ld e,a
	ld a,(de)
	ld b,a
	inc hl
	pop af
	push hl
	push bc
	ld hl,l9df3
	call l97e2
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld e,#32
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	scf
	ex de,hl
	jp (ix)
.l97e2
	add l
	ld l,a
	ret nc
	inc h
	ret
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l980e equ $ + 7
.l980d equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9815 equ $ + 6
.l980f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l981c equ $ + 5
.l981b equ $ + 4
.l9819 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9823 equ $ + 4
.l9820 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l987e equ $ + 7
.l987d equ $ + 6
.l987c equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9883 equ $ + 4
.l9882 equ $ + 3
.l9880 equ $ + 1
	db #00,#00,#00,#00,#00
.l9884
	ld (l995d),sp
	ld h,#98
	ld l,#1a
	dec (hl)
	jr nz,l98d4
	ld a,(l9819)
	ld (hl),a
	ld sp,l9815
	pop de
	pop bc
	ld l,#1b
	ld l,(hl)
	jp (hl)
	ld a,e
	sub c
	ld e,a
	cp d
	jr nc,l98bf
	ld l,#14
	ld e,(hl)
	ld l,#bf
	jp (hl)
	ld a,e
	sub c
	ld e,a
	jr nc,l98ce
	ld e,#00
	ld a,#ce
	jr l98cb
	ld a,e
	add c
	ld e,a
	cp d
	jr c,l98bf
	ld l,#11
	ld c,(hl)
	ld l,#9c
	ld e,d
.l98bf
	djnz l98ca
	ld l,#12
	ld c,(hl)
	inc l
	ld b,(hl)
	inc l
	ld e,(hl)
	ld l,#a8
.l98ca
	ld a,l
.l98cb
	ld (l981b),a
.l98ce
	push bc
	push de
	ld sp,(l995d)
.l98d4
	ld c,#08
	ld l,#15
	ld e,(hl)
	call l9bb7
	ld l,#0c
	ld a,(hl)
	or a
	jr z,l98e5
	dec (hl)
	jr nz,l9922
.l98e5
	ld l,#22
	dec (hl)
	jr nz,l9922
	ld a,(l980d)
	ld (hl),a
	ld sp,l981c
	pop bc
	pop de
	pop hl
	inc b
	dec b
	jr z,l991f
	add hl,de
	djnz l991f
	dec c
	jp p,l990d
	ld c,#03
	ld a,(l980e)
	or a
	jr z,l991f
	jp p,l990d
	ld hl,(l980f)
.l990d
	ld b,#98
	ld a,(bc)
	push af
	ld a,c
	ld d,c
	add a
	add #04
	ld c,a
	ld a,(bc)
	ld e,a
	inc bc
	ld a,(bc)
	ld c,d
	ld d,a
	pop af
	ld b,a
.l991f
	push hl
	push de
	push bc
.l9922
	ld c,#00
	ld sp,(l995d)
	ld hl,(l9820)
	call l9bb1
	ld a,(l9883)
	or a
	jp nz,l9a88
	ld d,#98
	ld sp,(l9880)
	call l96d1
	ld (l9880),sp
	ld sp,(l995d)
	ld e,#82
	ex de,hl
	dec (hl)
	jp p,l9a88
	inc (hl)
	jp nc,l9a88
	xor a
	ld e,#38
	ld hl,l9823
	call l9b5d
	jp l9a88
.l995d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a0f equ $ + 2
.l9a0e equ $ + 1
.l9a0d
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a1c equ $ + 7
.l9a1b equ $ + 6
.l9a19 equ $ + 4
.l9a15
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a23 equ $ + 6
.l9a20 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a7c equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a83 equ $ + 6
.l9a82 equ $ + 5
.l9a80 equ $ + 3
.l9a7e equ $ + 1
.l9a7d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
.l9a88
	ld h,#9a
	ld l,#1a
	dec (hl)
	jr nz,l9ad4
	ld a,(l9a19)
	ld (hl),a
	ld sp,l9a15
	pop de
	pop bc
	ld l,#1b
	ld l,(hl)
	jp (hl)
	ld a,e
	sub c
	ld e,a
	cp d
	jr nc,l9abf
	ld l,#14
	ld e,(hl)
	ld l,#bf
	jp (hl)
	ld a,e
	sub c
	ld e,a
	jr nc,l9ace
	ld e,#00
	ld a,#ce
	jr l9acb
	ld a,e
	add c
	ld e,a
	cp d
	jr c,l9abf
	ld l,#11
	ld c,(hl)
	ld l,#9c
	ld e,d
.l9abf
	djnz l9aca
	ld l,#12
	ld c,(hl)
	inc l
	ld b,(hl)
	inc l
	ld e,(hl)
	ld l,#a8
.l9aca
	ld a,l
.l9acb
	ld (l9a1b),a
.l9ace
	push bc
	push de
	ld sp,(l995d)
.l9ad4
	ld c,#09
	ld l,#15
	ld e,(hl)
	call l9bb7
	ld l,#0c
	ld a,(hl)
	or a
	jr z,l9ae5
	dec (hl)
	jr nz,l9b22
.l9ae5
	ld l,#22
	dec (hl)
	jr nz,l9b22
	ld a,(l9a0d)
	ld (hl),a
	ld sp,l9a1c
	pop bc
	pop de
	pop hl
	inc b
	dec b
	jr z,l9b1f
	add hl,de
	djnz l9b1f
	dec c
	jp p,l9b0d
	ld c,#03
	ld a,(l9a0e)
	or a
	jr z,l9b1f
	jp p,l9b0d
	ld hl,(l9a0f)
.l9b0d
	ld b,#9a
	ld a,(bc)
	push af
	ld a,c
	add a
	add #04
	ld d,c
	ld c,a
	ld a,(bc)
	ld e,a
	inc bc
	ld a,(bc)
	ld c,d
	ld d,a
	pop af
	ld b,a
.l9b1f
	push hl
	push de
	push bc
.l9b22
	ld c,#02
	ld sp,(l995d)
	ld hl,(l9a20)
	call l9bb1
	ld de,l9a83
	ld a,(de)
	or a
	jp nz,l9c88
	ld sp,(l9a80)
	call l96d1
	ld (l9a80),sp
	ld sp,(l995d)
	ld e,#82
	ex de,hl
	dec (hl)
	jp p,l9c88
	inc (hl)
	jp nc,l9c88
	ld a,#01
	ld e,#38
	ld hl,l9a23
	call l9b5d
	jp l9c88
.l9b5d
	ld d,a
	push de
	add a
	add #98
	ld d,a
	ld e,#00
	ld bc,#001a
	push de
	pop ix
	ldir
	dec hl
	ldi
	ex de,hl
	ld (hl),#b3
	inc hl
	ld (hl),#04
	inc hl
	ld a,(ix+#03)
	ld (hl),a
	inc hl
	ld a,(ix+#0a)
	ld (hl),a
	inc hl
	ld a,(ix+#0b)
	ld (hl),a
	inc hl
	ld a,(ix+#0f)
	ld (hl),a
	inc hl
	ld a,(ix+#10)
	ld (hl),a
	ld a,(ix+#0d)
	ld (ix+#22),a
	pop bc
	inc b
	ld a,#09
	rra
.l9b9a
	rla
	djnz l9b9a
	ld hl,l9bb0
	ld d,a
	cpl
	and (hl)
	and #3f
	ld b,a
	ld a,d
	and c
	or b
	ld (hl),a
	ld e,a
	ld c,#07
	jp l9bb7
.l9bb0
	ccf
.l9bb1
	ld e,l
	call l9bb7
	ld e,h
	inc c
.l9bb7
	ld b,#f4
	out (c),c
	exx
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	nop
	nop
	out (c),c
	exx
	out (c),e
	exx
	add a
	out (c),a
	nop
	nop
	out (c),c
	exx
	ret
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9c0d equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9c15 equ $ + 7
.l9c0f equ $ + 1
.l9c0e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9c1c equ $ + 6
.l9c1b equ $ + 5
.l9c19 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9c23 equ $ + 5
.l9c20 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9c7d equ $ + 7
.l9c7c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9c83 equ $ + 5
.l9c82 equ $ + 4
.l9c80 equ $ + 2
.l9c7e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l9c88
	ld h,#9c
	ld l,#1a
	dec (hl)
	jr nz,l9cd4
	ld a,(l9c19)
	ld (hl),a
	ld sp,l9c15
	pop de
	pop bc
	ld l,#1b
	ld l,(hl)
	jp (hl)
	ld a,e
	sub c
	ld e,a
	cp d
	jr nc,l9cbf
	ld l,#14
	ld e,(hl)
	ld l,#bf
	jp (hl)
	ld a,e
	sub c
	ld e,a
	jr nc,l9cce
	ld e,#00
	ld a,#ce
	jr l9ccb
	ld a,e
	add c
	ld e,a
	cp d
	jr c,l9cbf
	ld l,#11
	ld c,(hl)
	ld l,#9c
	ld e,d
.l9cbf
	djnz l9cca
	ld l,#12
	ld c,(hl)
	inc l
	ld b,(hl)
	inc l
	ld e,(hl)
	ld l,#a8
.l9cca
	ld a,l
.l9ccb
	ld (l9c1b),a
.l9cce
	push bc
	push de
	ld sp,(l995d)
.l9cd4
	ld c,#0a
	ld l,#15
	ld e,(hl)
	call l9bb7
	ld l,#0c
	ld a,(hl)
	or a
	jr z,l9ce5
	dec (hl)
	jr nz,l9d22
.l9ce5
	ld l,#22
	dec (hl)
	jr nz,l9d22
	ld a,(l9c0d)
	ld (hl),a
	ld sp,l9c1c
	pop bc
	pop de
	pop hl
	inc b
	dec b
	jr z,l9d1f
	add hl,de
	djnz l9d1f
	dec c
	jp p,l9d0d
	ld c,#03
	ld a,(l9c0e)
	or a
	jr z,l9d1f
	jp p,l9d0d
	ld hl,(l9c0f)
.l9d0d
	ld b,#9c
	ld a,(bc)
	push af
	ld a,c
	add a
	add #04
	ld d,c
	ld c,a
	ld a,(bc)
	ld e,a
	inc bc
	ld a,(bc)
	ld c,d
	ld d,a
	pop af
	ld b,a
.l9d1f
	push hl
	push de
	push bc
.l9d22
	ld c,#04
	ld sp,(l995d)
	ld hl,(l9c20)
	call l9bb1
	ld de,l9c83
	ld a,(de)
	or a
	jp nz,l9d5d
	ld sp,(l9c80)
	call l96d1
	ld (l9c80),sp
	ld sp,(l995d)
	ld e,#82
	ex de,hl
	dec (hl)
	jp p,l9d5d
	inc (hl)
	jp nz,l9d5d
	jp nc,l9d5d
	ld a,#02
	ld e,#38
	ld hl,l9c23
	call l9b5d
.l9d5d
	ld hl,l9df2
	ld a,(hl)
	or a
	ret z
	and #03
	ld e,a
	ld a,(hl)
	ld (hl),#00
	ld hl,la2d3
	and #fc
	srl a
	call l97e2
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,e
	add a
	or #98
	ld b,a
	ld c,#82
	ld a,(hl)
	ld (bc),a
	push bc
	inc hl
	ld a,e
	ld e,(hl)
	inc hl
	push hl
	ld b,a
	ld c,e
	inc b
	ld a,#09
	rra
.l9d8c
	rla
	djnz l9d8c
	ld hl,l9bb0
	ld d,a
	cpl
	and (hl)
	and #3f
	ld b,a
	ld a,d
	and c
	or b
	ld (hl),a
	ld e,a
	ld c,#07
	call l9bb7
	pop hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex (sp),hl
	ex de,hl
	ld bc,#000f
	ld e,#00
	push de
	pop ix
	ldir
	pop hl
	ldi
	ldi
	ld a,(hl)
	inc hl
	push hl
	ld h,(hl)
	ld l,a
	ld bc,#0009
	ldir
	dec hl
	ldi
	ex de,hl
	ld (hl),#b3
	inc hl
	ld (hl),#04
	inc hl
	ld a,(ix+#03)
	ld (hl),a
	inc hl
	ld a,(ix+#0a)
	ld (hl),a
	inc hl
	ld a,(ix+#0b)
	ld (hl),a
	inc hl
	ld a,(ix+#0f)
	ld (hl),a
	inc hl
	ld a,(ix+#10)
	ld (hl),a
	ld a,(ix+#0d)
	ld (ix+#22),a
	pop hl
	inc hl
	ld e,(hl)
	ld c,#06
	jp l9bb7
.l9df2
	db #00
.l9df3
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04d4,#0470,#0431,#03f4
	dw #03dc,#0386,#0353,#0324
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
	dw #0030,#0028,#0027,#0025
	dw #0024,#0022,#0021,#0020
	dw #0019,#0018,#0017,#0016
.l9e9b
	dw l9eba,l9fa6,la043,#0000
	dw la1a0,la1da,la1f1,#0000
	dw la244,la270,la28a,#0000
.l9eba equ $ + 7
	db #b9,#9e,#b9,#9e,#b9,#9e,#80,#8e
	db #60,#a1,#8a,#45,#a1,#88,#36,#a1
	db #84,#2e,#9f,#84,#89,#9f,#2a,#02
	db #2d,#03,#28,#01,#2b,#03,#26,#02
	db #2a,#03,#24,#01,#28,#03,#26,#02
	db #28,#01,#26,#02,#24,#01,#23,#02
	db #26,#03,#21,#01,#24,#03,#1f,#02
	db #23,#0d,#84,#89,#9f,#2d,#03,#31
	db #09,#2d,#03,#31,#02,#2d,#03,#31
	db #01,#2d,#03,#32,#0f,#84,#2e,#9f
	db #30,#03,#2b,#03,#34,#03,#30,#03
	db #37,#03,#34,#03,#8a,#4e,#a1,#30
	db #03,#32,#03,#34,#01,#80,#26,#03
	db #2b,#03,#2f,#03,#32,#05,#2f,#01
	db #2f,#03,#2f,#03,#2f,#03,#2f,#06
	db #30,#03,#82,#84,#19,#9f,#32,#05
	db #2f,#01,#2d,#03,#2f,#03,#30,#03
	db #26,#03,#2a,#03,#2d,#03,#30,#05
	db #2d,#01,#2d,#03,#2d,#03,#2d,#03
	db #2d,#06,#2f,#03,#30,#05,#2d,#01
	db #2b,#03,#2d,#03,#2f,#03,#84,#19
	db #9f,#32,#05,#2f,#01,#30,#03,#32
	db #03,#34,#06,#34,#03,#36,#03,#37
	db #03,#37,#02,#36,#03,#36,#01,#34
	db #03,#37,#03,#32,#03,#32,#03,#34
	db #03,#32,#03,#30,#02,#2f,#03,#2f
	db #01,#2d,#03,#2b,#0c,#82,#2a,#03
	db #2d,#09,#2a,#03,#2d,#02,#2a,#03
	db #2d,#01,#2a,#03,#2b,#03,#2f,#09
	db #2b,#03,#2f,#02,#2b,#03,#2f,#01
.l9fa6 equ $ + 3
	db #2b,#03,#82,#8e,#60,#a1,#8a,#57
	db #a1,#88,#36,#a1,#84,#04,#a0,#68
	db #03,#21,#06,#21,#06,#21,#06,#24
	db #06,#26,#06,#26,#06,#26,#06,#26
	db #06,#21,#06,#21,#06,#21,#06,#24
	db #06,#26,#06,#26,#06,#26,#06,#26
	db #06,#21,#06,#21,#06,#21,#06,#24
	db #06,#26,#06,#26,#06,#26,#06,#26
	db #06,#28,#06,#28,#06,#28,#06,#2b
	db #03,#2d,#0f,#84,#04,#a0,#2b,#03
	db #24,#03,#30,#03,#2b,#03,#34,#03
	db #30,#03,#34,#03,#37,#03,#3c,#03
	db #80,#68,#0c,#26,#06,#26,#06,#26
	db #06,#26,#06,#26,#06,#26,#06,#26
	db #06,#26,#06,#24,#06,#24,#06,#24
	db #06,#24,#06,#24,#06,#24,#06,#26
	db #06,#26,#06,#26,#06,#26,#06,#26
	db #06,#26,#06,#26,#06,#26,#06,#26
	db #06,#26,#06,#1f,#06,#1f,#06,#23
	db #06,#26,#06,#24,#06,#24,#0f,#82
.la043
	db #8e,#60,#a1,#8a,#4e,#a1,#88,#36
	db #a1,#68,#09,#84,#a0,#a0,#1f,#03
	db #1e,#03,#1c,#03,#84,#1b,#a1,#23
	db #03,#1a,#03,#23,#03,#84,#1b,#a1
	db #1f,#03,#1e,#03,#1c,#03,#84,#1b
	db #a1,#23,#03,#1a,#03,#23,#03,#21
	db #03,#25,#03,#1c,#03,#25,#03,#21
	db #03,#25,#03,#1c,#03,#25,#03,#26
	db #06,#24,#06,#23,#06,#21,#06,#84
	db #a0,#a0,#1d,#03,#1c,#03,#1a,#03
	db #8a,#45,#a1,#18,#0c,#24,#0c,#8a
	db #4e,#a1,#18,#01,#80,#1f,#03,#23
	db #03,#1a,#03,#23,#03,#1f,#03,#23
	db #03,#1a,#03,#1e,#03,#1f,#03,#23
	db #03,#1a,#03,#23,#03,#21,#03,#1e
	db #03,#1c,#03,#1a,#03,#21,#03,#1e
	db #03,#1a,#03,#1e,#03,#21,#03,#1e
	db #03,#1a,#03,#1e,#03,#21,#03,#1e
	db #03,#1a,#03,#1e,#03,#1f,#03,#1e
	db #03,#1c,#03,#1a,#03,#1f,#03,#23
	db #03,#1a,#03,#23,#03,#1f,#03,#23
	db #03,#1a,#03,#1e,#03,#1f,#03,#23
	db #03,#1d,#03,#26,#03,#1c,#03,#24
	db #03,#18,#03,#1c,#03,#18,#03,#1c
	db #03,#19,#03,#1c,#03,#1a,#03,#1e
	db #03,#1f,#03,#23,#03,#21,#03,#1e
	db #03,#1a,#03,#1e,#03,#1f,#03,#82
	db #1a,#03,#1e,#03,#15,#03,#1e,#03
	db #1a,#03,#1e,#03,#15,#03,#1e,#03
	db #1f,#03,#23,#03,#1a,#03,#23,#03
	db #1f,#03,#82,#02,#04,#01,#01,#01
	db #00,#ff,#ff,#01,#00,#01,#00,#0b
	db #01,#01,#02,#01,#14,#0f,#05,#0f
	db #09,#12,#02,#01,#01,#10,#0d,#01
	db #0f,#08,#0e,#01,#01,#01,#10,#0d
	db #01,#0f,#08,#0e,#01,#04,#08,#0c
	db #10,#14,#18,#1c,#20,#24,#28,#2c
	db #30,#34,#38,#3c,#40,#44,#48,#4c
	db #50,#54,#58,#5c,#60,#64,#68,#6c
	db #70,#74,#78,#7c,#80,#05,#0a,#0f
	db #14,#19,#1e,#23,#28,#2d,#32,#37
	db #3c,#41,#46,#4b,#50,#55,#5a,#5f
	db #64,#69,#6e,#73,#78,#7d,#82,#87
.la1a0 equ $ + 5
	db #8c,#91,#96,#9b,#a0,#8e,#80,#a1
	db #8a,#45,#a1,#88,#36,#a1,#37,#02
	db #37,#01,#36,#01,#37,#0e,#88,#26
	db #a2,#39,#02,#88,#36,#a1,#39,#02
	db #37,#02,#35,#02,#34,#02,#32,#02
	db #2e,#02,#2f,#02,#32,#01,#34,#01
	db #32,#06,#32,#02,#88,#35,#a2,#2e
.la1da equ $ + 7
	db #04,#88,#36,#a1,#2b,#01,#80,#8e
	db #80,#a1,#8a,#0e,#a2,#88,#17,#a2
	db #92,#04,#68,#02,#26,#04,#26,#04
.la1f1 equ $ + 6
	db #25,#04,#25,#02,#94,#80,#8e,#80
	db #a1,#8a,#0e,#a2,#88,#17,#a2,#92
	db #04,#1f,#02,#23,#02,#23,#02,#1f
	db #02,#1e,#02,#22,#02,#19,#02,#22
	db #02,#94,#80,#03,#01,#09,#0b,#05
	db #0d,#0a,#02,#03,#01,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#ff,#00
	db #00,#00,#00,#00,#00,#ff,#ff,#01
	db #02,#01,#01,#01,#01,#06,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#01
.la244 equ $ + 1
	db #00,#88,#36,#a1,#8a,#a4,#a2,#8e
	db #cd,#a2,#32,#01,#2e,#01,#2f,#01
	db #32,#01,#2b,#03,#2f,#03,#29,#03
	db #2f,#03,#28,#03,#34,#03,#27,#03
	db #33,#03,#26,#03,#2a,#03,#26,#03
.la270 equ $ + 5
	db #2a,#03,#1f,#01,#80,#88,#36,#a1
	db #8a,#a4,#a2,#8e,#cd,#a2,#68,#07
	db #32,#06,#35,#06,#37,#06,#37,#06
	db #2d,#06,#30,#03,#32,#01,#80
.la28a
	db #88,#36,#a1,#8a,#a4,#a2,#8e,#cd
	db #a2,#68,#07,#37,#06,#32,#06,#30
	db #06,#30,#06,#32,#06,#2d,#03,#2f
	db #01,#80,#02,#01,#09,#0b,#05,#0d
	db #0a,#07,#03,#07,#0e,#15,#1c,#23
	db #2a,#31,#38,#3f,#46,#4d,#54,#5b
	db #62,#69,#70,#77,#7e,#85,#8c,#93
	db #9a,#a1,#a8,#af,#b6,#bd,#c4,#cb
	db #d2,#d9,#e0,#06,#0c,#12,#18,#1e
.la2d3 equ $ + 1
	db #24,#2a,#30,#dd,#a2,#fe,#a2,#1f
	db #a3,#40,#a3,#01,#38,#ef,#a2,#20
	db #00,#e6,#a2,#14,#01,#02,#0a,#0f
	db #02,#0f,#03,#16,#01,#01,#01,#01
	db #01,#01,#00,#01,#00,#01,#00,#01
	db #00,#01,#01,#81,#01,#07,#10,#a3
	db #00,#04,#07,#a3,#14,#02,#01,#19
	db #0f,#00,#0f,#02,#7f,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#00,#31
	db #a3,#00,#01,#28,#a3,#02,#01,#02
	db #09,#0c,#09,#0f,#0b,#06,#01,#00
	db #00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#38,#52
	db #a3,#00,#03,#49,#a3,#00,#01,#01
	db #09,#0c,#09,#0f,#0a,#0a,#01,#01
	db #01,#01,#ff,#00,#00,#00,#00,#00
	db #00,#fe,#ff,#01,#01,#00,#00
;
.init_music	; added by Megachur
;
	or a
	jp z,l965f
	dec a
	jp z,l9662
	jp l9665
;
.music_info
	db "Match Day (1985)(Ocean Software)()",0
	db "",0

	read "music_end.asm"
