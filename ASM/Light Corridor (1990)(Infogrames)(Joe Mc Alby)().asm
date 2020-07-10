; Music of Light Corridor (1990)(Infogrames)(Joe Mc Alby)()
; Ripped by Megachur the 22/04/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LIGHTCOR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #3ff3
FIRST_THEME				equ 0
LAST_THEME				equ 12

	read "music_header.asm"
;
.init_music             ; a = 0 -> 12
;
	ld hl,init_music_table  ; added by Megachur
	add a,a
	ld b,0
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)			; added by Megachur

	jp l4076	; play music
	jp l40fc	; stop music
.set_channel0
	jp l4c18	; set_channel0
.set_channel1
	jp l4c1d	; set_channel1
.set_channel2
	jp l4c22	; set_channel2
	jp l4018	; sound effects
.l4012
	pop af
	ld l,#39
	ld (hl),#00
	ret
.l4018
	push af
	push de
	push bc
	push hl
	ld c,a
	ld a,(l23aa)
	cp #0f
	jp z,l4029
	ld a,c
	call l402e
.l4029
	pop hl
	pop bc
	pop de
	pop af
	ret
.l402e
	push af
	ld hl,l4730
	ld a,(hl)
	and a
	call nz,l4313
	xor a
	ld (l4639),a
	inc a
	ld (l4044),a
	jp l4051
.l4042
	push af
.l4044 equ $ + 1
	ld a,#00
	and a
	jp nz,l4012
	ld hl,l4730
	ld a,(hl)
	and a
	call nz,l4313
.l4051
	pop af
	ld l,#30
	ld (hl),a
	ld de,l4702
	ex af,af'
	ld a,(l41c5)
	ld (l4314),a
	ex af,af'
	jp l4063
.l4063
	add a
	add #5e
	ld l,a
	adc #5c
	sub l
	ld h,a
	ldi
	ex de,hl
	ld a,(de)
	ld (hl),a
	ld d,a
	dec l
	ld e,(hl)
	jp l4210
;
.play_music
.l4076
;
	ld hl,l4400
	call l417a
	inc h
	call l417a
	inc h
	call l417a
	inc h
	call l417a
	call l4169
	ld h,#44
	call l409b
	call l409b
	ld a,(l4730)
	and a
	jp z,l409b
	inc h
.l409b
	ld l,#06
	ld a,(hl)
	inc l
	ld c,(hl)
	call l208c
	inc l
	ld a,(hl)
	inc l
	ld c,(hl)
	call l208c
	inc l
	ld e,(hl)
	inc l
	ld a,(hl)
	call l4aca
	ld c,a
	ld l,#37
	ld a,(hl)
	and a
	jr z,l40b9
	ld c,a
.l40b9
	ld a,c
	ld l,#2f
	ld a,(hl)
	and a
	jp z,l40cc
	ld a,c
	cp #0f
	jp nz,l40cc
	ld a,#10
	jp l40f5
.l40cc
	ld l,#38
	ld a,(hl)
	ld l,a
	ld a,c
	sub l
	jp nc,l40d6
	xor a
.l40d6
	push af
	ld a,h
	cp #47
	jp nz,l40eb
	ld a,(l4639)
	and a
	jp nz,l40eb
	ld bc,(l23aa)
	jp l40ef
.l40eb
	ld bc,(l23ab)
.l40ef
	pop af
	sub c
	jp nc,l40f5
	xor a
.l40f5
	ld c,a
	ld a,e
	call l208c
	inc h
	ret
;
.stop_music
.l40fc
;
	push af
	push de
	push bc
	push hl
	ld a,#07
	ld c,#bf
	push bc
	call l208c
	pop bc
	ld a,c
	ld (l41c5),a
	ld h,#44
	call l412a
	inc h
	call l412a
	inc h
	call l412a
	inc h
	call l412a
	xor a
	ld (l489f),a
	ld (l4044),a
	pop hl
	pop bc
	pop de
	pop af
	ret
.l412a
	call l4862
.l412d
	xor a
	ld l,#30
	ld (hl),a
	ld l,#2e
	ld (hl),a
	ld l,#34
	ld (hl),a
	ld l,#35
	ld (hl),a
	inc l
	ld (hl),a
	inc l
	ld (hl),a
	ld l,#38
	ld (hl),a
	ld l,#2f
	ld (hl),a
	ld l,#16
	ld (hl),#01
	inc l
	ld (hl),a
	inc l
	ld (hl),a
	ld l,#04
	ld (hl),a
	ld l,#15
	ld (hl),a
	ld l,#05
	ld (hl),#01
	ld l,#2f
	ld a,(hl)
	ret z
	ld a,#0c
	ld c,#00
	call l208c
	ld a,#0d
	ld c,#00
	call l208c
	ret
.l4169
	ld a,#06
.l416c equ $ + 1
	ld c,#01
	call l208c
	ld a,(l41c5)
	ld c,a
	ld a,#07
	call l208c
	ret
.l417a
	ld l,#30
	ld a,(hl)
	and a
	ret z
	ld l,#04
	bit 4,(hl)
	jr z,l41c2
	ld l,#39
	ld a,(hl)
	and a
	jp nz,l41c2
.l418e equ $ + 2
.l418d equ $ + 1
	ld de,l4c9f
	ld l,#35
	ld a,(hl)
	add e
	ld e,a
	adc d
	sub e
	ld d,a
	ld a,(de)
	cp #95
	jr nz,l41a1
	xor a
	ld (hl),a
	jp l417a
.l41a1
	inc (hl)
	and a
	jp nz,l41b0
	call l4805
	ld l,#37
	ld (hl),#00
	jp l41d0
.l41b0
	ld (l416c),a
	call l482d
	ld l,#36
	ld a,(hl)
	and a
	jp z,l41d0
	inc l
	ld (hl),a
	jp l41d0
.l41c2
	ld l,#20
.l41c5 equ $ + 1
	ld a,#00
	and (hl)
	jp nz,l41d0
	ld l,#07
	ld a,(hl)
	ld (l416c),a
.l41d0
	ld l,#02
	ld e,(hl)
	inc l
	ld d,(hl)
	ld l,#05
	dec (hl)
	jp z,l4210
	call l4872
	call l42fe
	call l4af9
	call l4a3f
	call l4a37
	call l487e
	call l4a74
	ld l,#04
	bit 5,(hl)
	ret z
	ld a,(l440b)
	ld l,#0b
	ld (hl),a
	ld a,r
	and #07
	ld c,a
	ld l,#07
	ld a,(l4407)
	add c
	ld (hl),a
	ld a,(l4409)
	ld l,#09
	ld (hl),a
	ret nc
	inc (hl)
	ret
.l4210
	ld l,#2e
	ld a,(hl)
	cp #01
	call z,l4270
	ld a,(de)
	inc de
	or a
	jp m,l4279
	ld l,#39
	bit 0,(hl)
	jp z,l4234
	ld (hl),#00
	push af
	push hl
	ld hl,l4730
	call l4313
	pop hl
	call l4805
	pop af
.l4234
	ld l,#0c
	ld (hl),a
	ld l,#33
	ld (hl),#00
	ld l,#02
	ld (hl),e
	inc l
	ld (hl),d
	call l489e
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
	ld l,#2d
	ld a,(hl)
	srl a
	dec l
	ld (hl),a
	ld l,#0e
	call l4260
	inc l
.l4260
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
.l4270
	ld l,#04
	set 0,(hl)
	ld l,#23
	ld (hl),#00
	ret
.l4279
	cp #e0
	jp nc,l42aa
	cp #d0
	jp nc,l42ba
	cp #c0
	jp nc,l42b2
	cp #a8
	jp nc,l42e1
	cp #a0
	jp nc,l495b
	ld c,h
	add a
	add #e4
	ld l,a
	adc #48
	sub l
	ld h,a
	ld a,c
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld h,a
	ld (l42a5),bc
.l42a5 equ $ + 1
	call #0000
	jp l4210
.l42aa
	sub #df
	ld l,#0d
	ld (hl),a
	jp l4210
.l42b2
	sub #c0
	ld l,#14
	ld (hl),a
	jp l4210
.l42ba
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
	jp l4210
.l42e1
	sub #a8
	add a
	add #cf
	ld c,a
	adc #4c
	sub c
	ld b,a
	ld a,(bc)
	ld l,#21
	ld (hl),a
	inc l
	inc bc
	ld a,(bc)
	ld (hl),a
	ld l,#23
	ld (hl),#00
	ld l,#04
	set 0,(hl)
	jp l4210
.l42fe
	ld l,#16
	ld a,(hl)
	ld l,#05
	cp (hl)
	ret nz
	ld a,(de)
	cp #8b
	ret z
	ld l,#18
	ld (hl),#01
	ld l,#04
	res 1,(hl)
	ret
.l4312
	pop af
.l4314 equ $ + 1
.l4313
	ld a,#00
	ld (l41c5),a
	xor a
	ld (l4044),a
	call l412d
	jp l4169
.l4322
	ld l,#15
	ld (hl),#00
	ret
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#ff,#ff,#ff
	db #ff
.l4407 equ $ + 7
.l4400
	db #00,#00,#00,#00,#00,#00,#00,#00
.l440b equ $ + 3
.l4409 equ $ + 1
	db #01,#00,#08,#0f,#00,#04,#00,#00
	db #00,#00,#00,#00,#0f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#02,#00
	db #03,#00,#09,#0f,#00,#04,#00,#00
	db #00,#00,#00,#00,#0f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #10,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#04,#00
	db #05,#00,#0a,#0f,#00,#04,#00,#00
	db #00,#00,#00,#00,#0f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#04
	db #20,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4639 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4702 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#04,#00
	db #05,#00,#0a,#0f,#00,#04,#00,#00
	db #00,#00,#00,#00,#0f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#04
	db #20,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4730
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4800
	ld l,#04
	res 2,(hl)
	ret
.l4805
	call l4862
	ld l,#1f
.l480a
	ld a,(hl)
.l480b
	cpl
	and c
	ld c,a
	ld a,h
	cp #46
	jp z,l4819
.l4814
	ld a,c
	ld (l41c5),a
	ret
.l4819
	ld a,(l4730)
	and a
	jp z,l4814
	ld a,c
	ld (l4314),a
	ret
.l4825
	call l4862
	ld l,#20
	jp l480a
.l482d
	call l4862
	ld l,#1f
	ld a,(hl)
	inc l
	or (hl)
	jp l480b
.l4838
	ld l,#0b
	ld (hl),#00
	ld l,#39
	ld a,(hl)
	and a
	jp z,l484c
	ld (hl),#00
	push hl
	ld h,#47
	call l4313
	pop hl
.l484c
	pop af
	ld l,#0d
	ld a,(hl)
	ld l,#05
	ld (hl),a
	ld l,#02
	ld (hl),e
	inc l
	ld (hl),d
	ld l,#2e
	bit 0,(hl)
	ret z
	ld l,#04
	res 0,(hl)
	ret
.l4862
	ld a,(l41c5)
	ld l,#1f
	or (hl)
	inc l
	or (hl)
	ld c,a
	ret
.l486c
	ld l,#15
	ld a,(de)
	inc de
	ld (hl),a
	ret
.l4872
	ld l,#15
	ld a,(hl)
	and a
	ret z
	ld l,#0c
	add (hl)
	ld (hl),a
	jp l489e
.l487e
	ld l,#04
	bit 0,(hl)
	ret z
.l4883
	ld l,#21
	ld a,(hl)
	inc l
	ld b,(hl)
	inc l
	add (hl)
	ld c,a
	jp nc,l488f
	inc b
.l488f
	inc (hl)
	ld a,(bc)
	cp #95
	jp nz,l489b
	ld (hl),#00
	jp l4883
.l489b
	ld l,#0c
	add (hl)
.l489f equ $ + 1
.l489e
	add #00
	add #0a
	push af
	ld a,h
	cp #47
	jp nz,l48b2
	ld a,(l489f)
	ld c,a
	pop af
	sub c
	jp l48b3
.l48b2
	pop af
.l48b3
	add a
	add #58
	ld c,a
	adc #4b
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
	ld l,#29
	ld a,(hl)
	ld l,#26
	ld (hl),a
	pop de
	ret
	dw l486c,l49dd,l49f6,l4a02
	dw l4a11,l4800,l49ca,l4a32
	dw l4805,l4825,l482d,l484c
	dw l4838,l40fc,l4a28,l4a2d
	dw l4312,l4322,l49bf,l4982
	dw l497c,l4c47,l4c3f,l4976
	dw l4955,l4926,l499f,l49b0
	dw l49b5,l49ba
.l4920
	pop af
	ld l,#04
	res 4,(hl)
	ret
.l4926
	ld a,(de)
	inc de
	push af
	and #f0
	rrca
	rrca
	rrca
	rrca
	and a
	jp z,l4920
	dec a
	add a
	ld bc,l4c67
	add c
	ld c,a
	jp nc,l493e
	inc b
.l493e
	ld a,(bc)
	ld (l418d),a
	inc bc
	ld a,(bc)
	ld (l418e),a
	ld l,#04
	set 4,(hl)
	ld l,#35
	ld (hl),#00
	pop af
	and #0f
	inc l
	ld (hl),a
	ret
.l4955
	ld a,(de)
	ld l,#0d
	ld (hl),a
	inc de
	ret
.l495b
	sub #a0
	add a
	add #4b
	ld c,a
	adc #4d
	sub c
	ld b,a
	ld a,(bc)
	ld l,#31
	ld (hl),a
	inc l
	inc bc
	ld a,(bc)
	ld (hl),a
	inc l
	ld (hl),#00
	inc l
	ld (hl),#01
	jp l4210
.l4976
	ld a,(de)
	ld l,#38
	ld (hl),a
	inc de
	ret
.l497c
	ld a,(de)
	ld (l489f),a
	inc de
	ret
.l4982
	ld l,#2f
	ld a,(de)
	ld (hl),a
	inc de
	ld l,a
	push bc
	ld a,#0d
	ld c,#08
	call l208c
	ld a,#0b
	ld c,l
	call l208c
	ld a,#0c
	ld c,#00
	call l208c
	pop bc
	ret
.l499f
	ld c,#01
.l49a1
	ld l,#39
	ld (hl),#01
	push hl
	push de
	ld a,c
	call l4042
	pop de
	pop hl
	jp l484c
.l49b0
	ld c,#02
	jp l49a1
.l49b5
	ld c,#03
	jp l49a1
.l49ba
	ld c,#04
	jp l49a1
.l49bf
	ld l,#04
	ld a,(hl)
	bit 0,a
	ret z
	ld l,#2e
	ld (hl),#01
	ret
.l49ca
	ex de,hl
	ld e,#2a
	ldi
	ldi
	ld a,(hl)
	ldi
	ld (de),a
	ex de,hl
	ld l,#04
	set 3,(hl)
	set 6,(hl)
	ret
.l49dd
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
.l49f6
	ld l,#04
	res 0,(hl)
	ld l,#2e
	xor a
	ld (hl),a
	ld l,#34
	ld (hl),a
	ret
.l4a02
	ex de,hl
	ld e,#24
	ldi
	ldi
	ldi
	ex de,hl
	ld l,#04
	set 1,(hl)
	ret
.l4a11
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
.l4a28
	ld l,#04
	set 5,(hl)
	ret
.l4a2d
	ld l,#04
	res 5,(hl)
	ret
.l4a32
	ld l,#04
	res 3,(hl)
	ret
.l4a37
	ld l,#04
	bit 2,(hl)
	jp nz,l4a44
	ret
.l4a3f
	ld l,#04
	bit 1,(hl)
	ret z
.l4a44
	ld l,#26
	dec (hl)
	jp m,l4b56
	ld l,#25
	bit 7,(hl)
	jp nz,l4a60
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
.l4a60
	ld l,#07
	ld a,(hl)
	ld l,#24
	sub (hl)
	ld l,#07
	ld (hl),a
	ld l,#25
	ld c,(hl)
	res 7,c
	ld l,#09
	ld a,(hl)
	sbc c
	ld (hl),a
	ret
.l4a74
	ld l,#04
	bit 3,(hl)
	ret z
	dec de
	ld a,(de)
	inc de
	cp #8b
	jp z,l4a8b
	ld l,#0d
	ld a,(hl)
	ld l,#2a
	sub (hl)
	ld l,#05
	cp (hl)
	ret c
.l4a8b
	ld l,#04
	bit 6,(hl)
	jp z,l4aad
	ld l,#2c
	dec (hl)
	jp nz,l4aa1
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	res 6,(hl)
	ret
.l4aa1
	ld l,#2b
	ld a,(hl)
	ld l,#07
	add (hl)
	ld (hl),a
	ret nc
	ld l,#09
	inc (hl)
	ret
.l4aad
	ld l,#2c
	dec (hl)
	jp nz,l4abc
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	set 6,(hl)
	ret
.l4abc
	ld l,#07
	ld a,(hl)
	ld l,#2b
	sub (hl)
	ld l,#07
	ld (hl),a
	ret nc
	ld l,#09
	dec (hl)
	ret
.l4aca
	ld l,#34
	bit 0,(hl)
	ret z
.l4acf
	ex af,af'
	ld l,#31
	ld a,(hl)
	inc l
	ld b,(hl)
	inc l
	add (hl)
	ld c,a
	jp nc,l4adc
	inc b
.l4adc
	inc (hl)
	ld a,(bc)
	cp #ff
	jp nz,l4ae6
	dec (hl)
	dec bc
	ld a,(bc)
.l4ae6
	cp #95
	jp nz,l4af0
	ld (hl),#00
	jp l4acf
.l4af0
	ld l,#0b
	ld c,a
	ex af,af'
	ld a,(hl)
	sub c
	ret nc
	xor a
	ret
.l4af9
	ld l,#0f
	ld a,(hl)
	or a
	jp z,l4b1b
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
	jp nc,l4b17
.l4b15
	ld (hl),a
	ret
.l4b17
	ld a,#0f
	jr l4b15
.l4b1b
	ld l,#12
	ld a,(hl)
	or a
	jp z,l4b3b
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
	jp nc,l4b37
	xor a
.l4b37
	ld l,#0b
	ld (hl),a
	ret
.l4b3b
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
	jp nc,l4b52
	xor a
.l4b52
	ld l,#0b
	ld (hl),a
	ret
.l4b56
	inc (hl)
	ret
	dw #0ef8,#0e21,#0d56,#0c96
	dw #0be1,#0b37,#0a96,#09fe
	dw #096e,#08e6,#0867,#07ed
	dw #077c,#0710,#06ab,#064b
	dw #05f1,#059b,#054b,#04ff
	dw #04b7,#0473,#0433,#03f7
	dw #03be,#0388,#0355,#0326
	dw #02f8,#02ce,#02a5,#027f
	dw #025c,#023a,#021a,#01fb
	dw #01df,#01c4,#01ab,#0193
	dw #017c,#0167,#0153,#0140
	dw #012e,#011d,#010d,#00fe
	dw #00f0,#00e2,#00d5,#00c9
	dw #00be,#00b3,#00a9,#00a0
	dw #0097,#008e,#0086,#007f
	dw #0078,#0071,#006b,#0065
	dw #005f,#005a,#0055,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0039,#0035,#0032
	dw #0030,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
.l4c18
	ld h,#44
	jp l4c24
.l4c1d
	ld h,#45
	jp l4c24
.l4c22
	ld h,#46
.l4c24
	call l412a
	and a
	jp nz,l4c2d
	ld a,#01
.l4c2d
	ld l,#30
	ld (hl),a
	ld l,#02
	ld a,(de)
	ld (hl),a
	inc de
	ld a,(de)
	inc hl
	ld (hl),a
	ld l,#00
	inc de
	ld (hl),e
	inc l
	ld (hl),d
	ret
.l4c3f
	ld l,#00
	ex de,hl
	ldi
	ldi
	ex de,hl
.l4c47
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
	jp z,l4c5f
	ld (hl),b
	dec l
	ld (hl),c
	inc l
	inc l
	ld (hl),e
	inc l
	ld (hl),d
	ret
.l4c5f
	ld d,b
	ld e,c
	pop bc
	ld a,#96
	jp l4279
.l4c67
	dw l4c71,l4c7e,l4c9f,l4ca6
	dw l4cae
.l4c71
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4c7e equ $ + 5
	db #00,#00,#00,#01,#95,#02,#00,#00
	db #00,#00,#00,#00,#00,#02,#00,#00
	db #00,#00,#00,#00,#00,#02,#01,#01
	db #00,#00,#00,#00,#00,#02,#00,#00
.l4c9f equ $ + 6
	db #00,#00,#00,#00,#00,#95,#01,#00
.l4ca6 equ $ + 5
	db #00,#00,#00,#00,#95,#1e,#00,#00
.l4cae equ $ + 5
	db #00,#00,#00,#1e,#95,#02,#00,#00
	db #00,#00,#00,#00,#00,#02,#00,#00
	db #00,#00,#00,#00,#00,#02,#01,#01
	db #01,#01,#01,#00,#00,#02,#00,#00
	db #00,#00,#00,#00,#00,#95
	dw l4ced,l4cf2,l4cf5,l4d01
	dw l4d0d,l4d1e,l4d20,l4d23
	dw l4d25,l4d19,l4d2c,l4d33
	dw l4d3a,l4d3f,l4d42
.l4cf2 equ $ + 5
.l4ced
	db #14,#00,#14,#00,#95,#18,#00,#95
.l4cf5
	db #24,#18,#00,#00,#00,#00,#00,#00
.l4d01 equ $ + 4
	db #00,#00,#00,#95,#18,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#95
.l4d0d
	db #0c,#00,#00,#00,#00,#00,#00,#00
.l4d19 equ $ + 4
	db #00,#00,#00,#95,#0c,#0c,#00,#00
.l4d23 equ $ + 6
.l4d20 equ $ + 3
.l4d1e equ $ + 1
	db #95,#00,#00,#00,#0c,#95,#00,#00
.l4d2c equ $ + 7
.l4d25
	db #00,#0c,#00,#18,#00,#24,#95,#00
.l4d33 equ $ + 6
	db #0c,#00,#18,#00,#24,#95,#0c,#00
.l4d3a equ $ + 5
	db #00,#00,#00,#00,#95,#05,#05,#0c
.l4d42 equ $ + 5
.l4d3f equ $ + 2
	db #0c,#95,#0c,#00,#95,#0c,#00,#00
	db #00,#00,#00,#00,#00,#95
	dw l4d5b,l4d67,l4d74,l4d7d
	dw l4d99,l4da4,l4dc1,l4dca
.l4d5b
	dw #0000
	db #00,#01,#02,#03,#04,#05,#06,#07
.l4d67 equ $ + 2
	db #08,#ff,#00,#00,#01,#01,#02,#02
.l4d74 equ $ + 7
	db #02,#02,#01,#01,#00,#00,#95,#00
	db #02,#04,#05,#07,#08,#07,#05,#95
.l4d7d
	db #00,#00,#00,#01,#01,#01,#01,#02
	db #02,#02,#03,#03,#03,#04,#04,#04
	db #05,#05,#05,#05,#06,#06,#06,#06
.l4d99 equ $ + 4
	db #07,#07,#08,#ff,#00,#00,#00,#01
.l4da4 equ $ + 7
	db #02,#03,#04,#05,#06,#07,#ff,#00
	db #00,#00,#01,#02,#03,#04,#05,#06
	db #07,#07,#08,#08,#08,#00,#00,#00
	db #01,#02,#03,#04,#05,#06,#07,#07
.l4dc1 equ $ + 4
	db #08,#08,#08,#95,#00,#00,#01,#02
.l4dca equ $ + 5
	db #03,#04,#05,#06,#95,#00,#00,#00
	db #01,#02,#03,#ff
.l4dd1
	dw l4e49,l4e49,l4e49,l4e49
	dw l4e87,l4e87,l4e49,l4e49
	dw l4e49,l4e49,l4e49,l4e49
.l4ded equ $ + 4
	dw #0000,l4dd1,l4eec,l4eec
	dw l4eec,l4eec,l4f35,l4f35
	dw l4eec,l4eec,l4eec,l4eec
.l4e07 equ $ + 6
	dw l4fa8,#0000,l4ded,l51b4
	dw l504b,l504b,l50d3,l50d3
	dw l50a6,l513b,l51b7,l513b
	dw l51ba,l513b,l51bd,l513b
	dw l5163,l5163,l4ffa,l504b
	dw l504b,l50d3,l50d3,l50a6
	dw l513b,l51b7,l513b,l51ba
	dw l513b,l51bd,l513b,l5163
	dw l5163,l4ffa,#0000
	dw l4e07
.l4e49
	db #df,#11,#12,#11,#eb,#88,#81,#04
	db #13,#0c,#8b,#9a,#0c,#8b,#18,#9a
	db #e5,#11,#13,#eb,#0c,#8b,#9a,#88
	db #0c,#8b,#9a,#9a,#07,#0c,#8b,#9a
	db #88,#0c,#8b,#18,#9a,#e5,#11,#13
	db #eb,#0c,#8b,#9a,#0c,#8b,#dd,#00
	db #1f,#15,#eb,#89,#86,#01,#01,#01
.l4e87 equ $ + 6
	db #01,#01,#8b,#88,#87,#95,#df,#11
	db #12,#11,#eb,#88,#81,#04,#13,#0c
	db #8b,#9a,#88,#0c,#8b,#18,#9a,#88
	db #07,#0c,#8b,#9a,#88,#0c,#8b,#18
	db #9a,#88,#18,#11,#8b,#9a,#88,#11
	db #8b,#1d,#9a,#88,#0c,#11,#8b,#9a
	db #88,#11,#8b,#1d,#9a,#88,#1d,#0e
	db #8b,#9a,#88,#0e,#8b,#1a,#9a,#88
	db #09,#0e,#8b,#9a,#88,#0e,#8b,#1a
	db #9a,#88,#1a,#0c,#8b,#9a,#88,#0c
	db #8b,#18,#9a,#88,#07,#0c,#8b,#9a
	db #88,#0c,#8b,#dd,#00,#1f,#15,#eb
	db #89,#86,#01,#01,#01,#01,#01,#8b
.l4eec equ $ + 3
	db #88,#87,#95,#de,#00,#1f,#11,#eb
	db #88,#18,#aa,#18,#18,#82,#18,#8b
	db #24,#aa,#18,#82,#e5,#1d,#1f,#eb
	db #18,#aa,#18,#18,#82,#18,#8b,#18
	db #aa,#18,#82,#13,#18,#aa,#18,#18
	db #82,#18,#8b,#24,#aa,#18,#82,#e5
	db #1d,#1f,#eb,#18,#aa,#18,#18,#82
	db #18,#8b,#cf,#ab,#80,#ff,#18,#18
	db #82,#88,#dd,#00,#1f,#11,#e5,#8a
.l4f35 equ $ + 4
	db #21,#21,#91,#95,#dd,#00,#1f,#11
	db #eb,#88,#18,#aa,#18,#18,#82,#18
	db #8b,#24,#aa,#18,#82,#13,#18,#aa
	db #18,#18,#82,#18,#8b,#24,#aa,#18
	db #82,#24,#1d,#aa,#1d,#1d,#82,#1d
	db #8b,#29,#aa,#1d,#82,#18,#1d,#aa
	db #1d,#1d,#82,#1d,#8b,#29,#aa,#1d
	db #82,#29,#1a,#aa,#1a,#1a,#82,#1a
	db #8b,#26,#aa,#1a,#82,#15,#1a,#aa
	db #1a,#1a,#82,#1a,#8b,#26,#aa,#1a
	db #82,#26,#18,#aa,#18,#18,#82,#18
	db #8b,#24,#aa,#18,#82,#13,#18,#aa
	db #18,#18,#82,#18,#8b,#cf,#ab,#80
	db #ff,#18,#18,#82,#88,#dd,#00,#1f
.l4fa8 equ $ + 7
	db #11,#e5,#8a,#18,#18,#91,#95,#da
	db #15,#1f,#19,#eb,#88,#86,#0c,#04
	db #04,#ac,#30,#8b,#8b,#8b,#8b,#8b
	db #2d,#8b,#8b,#8b,#8b,#8b,#2b,#8b
	db #8b,#8b,#30,#8b,#8b,#8b,#8b,#8b
	db #2d,#8b,#8b,#8b,#8b,#8b,#2b,#8b
	db #8b,#8b,#dd,#00,#1f,#19,#8b,#8b
	db #30,#8b,#8b,#2b,#8b,#8b,#2d,#8b
	db #8b,#28,#8b,#8b,#2b,#8b,#2f,#8b
	db #30,#8b,#8b,#2b,#8b,#8b,#2d,#8b
	db #8b,#28,#8b,#8b,#2b,#8b,#82,#87
.l4ffa equ $ + 1
	db #95,#da,#15,#1f,#19,#eb,#88,#86
	db #0c,#04,#04,#ac,#8b,#8b,#8b,#2b
	db #8b,#8b,#8b,#8b,#8b,#28,#8b,#8b
	db #8b,#8b,#2f,#8b,#8b,#8b,#8b,#2b
	db #8b,#8b,#8b,#8b,#8b,#28,#8b,#8b
	db #8b,#8b,#2f,#8b,#de,#00,#1f,#19
	db #30,#8b,#8b,#2b,#8b,#8b,#2d,#8b
	db #8b,#28,#8b,#8b,#2b,#8b,#2f,#8b
	db #30,#8b,#8b,#2b,#8b,#8b,#2d,#8b
	db #8b,#28,#8b,#8b,#2b,#8b,#2f,#8b
.l504b equ $ + 2
	db #82,#95,#97,#01,#df,#00,#1f,#1a
	db #88,#86,#0c,#04,#04,#eb,#ac,#30
	db #8b,#8b,#2b,#8b,#30,#2b,#8b,#2e
	db #8b,#8b,#8b,#2d,#2e,#2d,#2b,#8b
	db #8b,#8b,#8b,#29,#2b,#29,#28,#8b
	db #2b,#2b,#8b,#8b,#8b,#8b,#e1,#24
	db #28,#29,#2b,#2d,#30,#eb,#ac,#30
	db #8b,#8b,#2b,#8b,#30,#2b,#8b,#2e
	db #2e,#8b,#8b,#2d,#2e,#2d,#2b,#8b
	db #8b,#8b,#8b,#29,#2b,#29,#28,#8b
	db #24,#8b,#8b,#82,#83,#02,#08,#1e
.l50a6 equ $ + 5
	db #8b,#8b,#8b,#8b,#95,#dd,#00,#1f
	db #11,#88,#86,#0c,#02,#04,#eb,#b2
	db #1c,#28,#28,#1c,#1c,#28,#1c,#1c
	db #1c,#28,#28,#1c,#1c,#28,#1c,#1c
	db #1c,#28,#28,#1c,#1c,#28,#1c,#1c
	db #1c,#28,#28,#1c,#1c,#28,#1c,#1c
.l50d3 equ $ + 2
	db #82,#95,#df,#00,#1f,#1a,#88,#86
	db #0c,#04,#04,#eb,#ac,#37,#8b,#8b
	db #8b,#34,#8b,#35,#37,#8b,#3c,#3b
	db #37,#8b,#82,#e2,#30,#32,#34,#35
	db #eb,#37,#34,#ac,#39,#8b,#8b,#8b
	db #35,#8b,#37,#39,#8b,#3c,#3b,#39
	db #8b,#82,#e2,#32,#34,#35,#37,#eb
	db #39,#35,#ac,#39,#8b,#8b,#8b,#35
	db #8b,#37,#39,#8b,#3c,#3b,#39,#8b
	db #82,#e2,#30,#32,#34,#35,#eb,#37
	db #34,#ac,#37,#8b,#8b,#8b,#8b,#8b
	db #8b,#8b,#82,#87,#85,#3c,#8b,#83
	db #01,#08,#3c,#8b,#8b,#8b,#8b,#8b
.l513b equ $ + 2
	db #8b,#95,#db,#1f,#1f,#1a,#88,#e2
	db #87,#24,#1f,#24,#28,#30,#2b,#30
	db #34,#24,#1f,#24,#28,#30,#2b,#30
	db #34,#3c,#37,#3c,#40,#48,#43,#48
	db #4c,#3c,#37,#3c,#40,#48,#43,#48
.l5163 equ $ + 2
	db #4c,#95,#df,#13,#15,#11,#eb,#88
	db #86,#06,#04,#04,#aa,#2b,#2b,#29
	db #2b,#8b,#29,#2b,#2d,#2e,#8b,#2d
	db #8b,#e2,#87,#a9,#2b,#2d,#2b,#8c
	db #29,#2b,#29,#8c,#28,#29,#28,#8c
	db #29,#2b,#29,#8c,#eb,#aa,#86,#06
	db #04,#04,#2b,#2b,#29,#2b,#8b,#2b
	db #26,#29,#28,#8b,#24,#8b,#e2,#87
	db #a9,#24,#26,#24,#8c,#22,#24,#22
	db #8c,#21,#22,#21,#8c,#1f,#21,#1f
.l51b7 equ $ + 6
.l51b4 equ $ + 3
	db #8c,#82,#95,#94,#00,#95,#94,#02
.l51bd equ $ + 4
.l51ba equ $ + 1
	db #95,#94,#04,#95,#94
	db #06
	db #95
.l51c0
	dw l5256,l527c,l52a1,l527c
	dw l52a1,l52c6,l527c,l52a1
	dw l52c6,l52eb,l52eb,l52c6
	dw l5310,l5256,l5277,l52a1
	dw l52c6,l527c,l52a1,l52c6
	dw l52eb,l52eb,l52c6,#0000
.l51f2 equ $ + 2
	dw l51c0,l531c,l533a,l535c
	dw l533a,l535c,l5384,l53b0
	dw l53e0,l5384,l540c,l5435
	dw l5384,l5477,l5477,l533a
	dw l535c,l5384,l53b0,l53e0
	dw l5384,l540c,l5435,l5384
.l5224 equ $ + 4
	dw #0000,l51f2,l5499,l5499
	dw l5499,l5499,l5499,l5531
	dw l5572,l5499,l5531,l5499
	dw l5499,l5531,l54e7,l55b3
	dw l5499,l5499,l5531,l5572
	dw l5499,l5531,l5499,l5499
	dw l5531,#0000,l5224
.l5256
	db #df,#11,#13,#12,#e7,#88,#86,#08
	db #06,#04,#82,#b6,#92,#98,#40,#8c
	db #8c,#8c,#8c,#0c,#8b,#0c,#ff,#8b
	db #e7,#80,#02,#0c,#91,#9c,#9c,#8b
.l527c equ $ + 6
.l5277 equ $ + 1
	db #95,#df,#17,#11,#11,#a6,#ef,#11
	db #8b,#9c,#11,#8b,#0f,#9c,#11,#13
	db #8b,#9c,#13,#8b,#13,#9c,#9c,#15
	db #8b,#9c,#15,#8b,#15,#9c,#10,#15
	db #8b,#9c,#15,#8b,#15,#e7,#9c,#9c
.l52a1 equ $ + 3
	db #9c,#8b,#95,#ef,#11,#8b,#9c,#11
	db #8b,#0f,#9c,#11,#13,#8b,#9c,#13
	db #8b,#13,#9c,#9c,#0c,#8b,#9c,#0c
	db #8b,#0c,#9c,#0c,#18,#8b,#8b,#8b
	db #8b,#8b,#e7,#8b,#9c,#9c,#8b,#95
.l52c6
	db #ef,#15,#8b,#9c,#15,#8b,#15,#9c
	db #15,#13,#8b,#9c,#13,#8b,#13,#9c
	db #9c,#0c,#8b,#9c,#0c,#8b,#0c,#9c
	db #0c,#18,#8b,#9c,#18,#8b,#18,#e7
.l52eb equ $ + 5
	db #9c,#9c,#9c,#8b,#95,#ef,#0e,#8b
	db #9c,#0e,#8b,#15,#9c,#13,#11,#8b
	db #9c,#11,#8b,#18,#9c,#17,#15,#8b
	db #9c,#15,#8b,#1c,#9c,#17,#18,#8b
	db #9c,#18,#8b,#1f,#e7,#9c,#9c,#9c
.l5310 equ $ + 2
	db #8b,#95,#82,#df,#18,#1f,#1f,#98
.l531c equ $ + 6
	db #80,#0c,#8b,#8b,#8b,#95,#de,#00
	db #18,#1e,#88,#86,#08,#01,#04,#a1
	db #98,#40,#24,#8b,#1f,#8b,#24,#8b
	db #1f,#ff,#8b,#e7,#8b,#80,#fe,#1f
.l533a equ $ + 4
	db #1f,#8b,#91,#95,#ef,#8c,#8b,#3c
	db #35,#37,#8b,#39,#35,#8b,#8b,#3c
	db #35,#37,#39,#37,#8b,#39,#8b,#8b
	db #1c,#24,#8b,#1c,#18,#15,#8b,#8b
.l535c equ $ + 6
	db #1c,#24,#8b,#1c,#18,#95,#ef,#8b
	db #8b,#3c,#35,#37,#8b,#39,#35,#8b
	db #8b,#3c,#35,#37,#39,#37,#8b,#30
	db #35,#3c,#37,#8b,#35,#37,#3c,#34
	db #8b,#8b,#8b,#8b,#8b,#e7,#8b,#80
.l5384 equ $ + 6
	db #fe,#1f,#1f,#8b,#91,#95,#ef,#84
	db #06,#00,#00,#00,#00,#15,#8b,#8b
	db #85,#1c,#24,#8b,#1c,#18,#84,#06
	db #00,#00,#00,#00,#13,#8b,#8b,#85
	db #1a,#23,#8b,#1f,#1a,#18,#1d,#24
	db #1f,#8b,#1d,#1f,#24,#98,#40,#1c
.l53b0 equ $ + 2
	db #8b,#95,#ef,#8b,#8b,#30,#29,#2b
	db #8b,#2d,#29,#8b,#8b,#2f,#2b,#2d
	db #2f,#2d,#8b,#28,#8b,#8b,#e7,#26
	db #28,#30,#8b,#8b,#8b,#2f,#2d,#30
	db #2f,#2d,#8b,#28,#8b,#26,#28,#30
	db #8b,#2f,#2d,#30,#2f,#2d,#28,#24
.l53e0 equ $ + 2
	db #21,#95,#ef,#1d,#8b,#24,#1d,#1f
	db #8b,#21,#1d,#8b,#8b,#23,#1f,#21
	db #23,#21,#8b,#e7,#24,#1f,#1d,#1f
	db #18,#1d,#1f,#1d,#24,#1f,#1d,#1f
	db #18,#1d,#1f,#1d,#ef,#24,#1f,#1d
.l540c equ $ + 6
	db #1f,#18,#1d,#1f,#1d,#95,#ef,#29
	db #28,#29,#28,#8b,#24,#8b,#8b,#2d
	db #2b,#2d,#2b,#8b,#28,#30,#8b,#30
	db #8b,#e7,#2f,#30,#2f,#8b,#ef,#2b
	db #2d,#28,#8b,#34,#8b,#39,#8b,#3c
.l5435 equ $ + 7
	db #8b,#e7,#43,#40,#3c,#37,#95,#e7
	db #3b,#8b,#3c,#39,#8b,#8b,#8b,#8b
	db #3b,#8b,#3c,#39,#8b,#8b,#40,#8b
	db #3e,#8b,#40,#8b,#3c,#8b,#3e,#8b
	db #40,#8b,#8b,#8b,#8b,#8b,#8b,#8b
	db #45,#8b,#8b,#8b,#48,#8b,#8b,#48
	db #47,#8b,#48,#8b,#45,#8b,#43,#8b
	db #40,#8b,#41,#43,#8b,#8b,#45,#8b
	db #40,#8b,#8b,#8b,#8b,#8b,#8b,#8b
.l5477 equ $ + 1
	db #95,#ef,#8b,#8b,#37,#30,#32,#8b
	db #34,#30,#8b,#8b,#37,#30,#32,#34
	db #30,#8b,#8b,#8b,#37,#30,#32,#8b
	db #34,#30,#8b,#8b,#37,#30,#32,#34
.l5499 equ $ + 3
	db #30,#8b,#95,#dd,#00,#00,#00,#e7
	db #88,#86,#02,#02,#04,#a2,#99,#2a
	db #3c,#37,#35,#37,#30,#35,#37,#35
	db #3c,#37,#35,#37,#30,#35,#37,#35
	db #3c,#37,#35,#37,#30,#35,#37,#35
	db #3c,#37,#35,#37,#30,#35,#37,#35
	db #3c,#37,#35,#37,#30,#35,#37,#35
	db #3c,#37,#35,#37,#30,#35,#37,#35
	db #3c,#37,#35,#37,#30,#35,#37,#35
	db #3c,#37,#35,#37,#30,#35,#37,#35
.l54e7 equ $ + 1
	db #95,#99,#00,#3c,#37,#35,#37,#30
	db #35,#37,#35,#cc,#3c,#37,#35,#37
	db #30,#35,#37,#35,#cc,#3c,#37,#35
	db #37,#30,#35,#37,#35,#cb,#3c,#37
	db #35,#37,#30,#35,#37,#35,#ca,#3c
	db #37,#35,#37,#30,#35,#37,#35,#ca
	db #3c,#37,#35,#37,#30,#35,#37,#35
	db #c9,#3c,#37,#35,#37,#30,#35,#37
	db #35,#c8,#3c,#37,#35,#37,#30,#35
.l5531 equ $ + 3
	db #37,#35,#95,#3c,#37,#35,#37,#30
	db #35,#37,#35,#3c,#37,#35,#37,#30
	db #35,#37,#35,#3b,#37,#32,#37,#32
	db #37,#3b,#37,#3b,#37,#32,#37,#32
	db #37,#3b,#37,#3c,#37,#35,#37,#30
	db #35,#37,#35,#3c,#37,#35,#37,#30
	db #35,#37,#35,#3c,#30,#37,#30,#35
	db #30,#37,#2b,#30,#2b,#35,#30,#37
.l5572 equ $ + 4
	db #30,#35,#30,#95,#3c,#37,#35,#37
	db #30,#35,#37,#35,#2d,#30,#35,#30
	db #35,#39,#3c,#40,#3e,#3b,#37,#3b
	db #32,#37,#3b,#3e,#43,#3e,#3b,#3e
	db #43,#3b,#37,#32,#39,#34,#32,#34
	db #39,#34,#32,#34,#3c,#34,#32,#34
	db #3b,#34,#32,#34,#39,#34,#32,#34
	db #30,#32,#2f,#30,#3c,#28,#26,#28
.l55b3 equ $ + 5
	db #3b,#26,#23,#24,#95,#d8,#13,#1f
	db #1f,#88,#86,#08,#01,#04,#a1,#99
	db #00,#f5,#8c,#ef,#8b,#37,#30,#32
	db #8b,#34,#30,#8b,#8b,#37,#30,#32
	db #34,#30,#8b,#8b,#8b,#37,#30,#32
	db #8b,#34,#30,#8b,#8b,#37,#30,#32
	db #e7,#34,#e9,#8b,#e7,#ce,#80,#fe
	db #1f,#1f,#8b,#91,#82,#95
.l55ec
	dw l51b7,l5676,l5676,l5697
	dw l56d0,l5701,l5732,l5763
	dw l5776,l57a7,l57d8,l5809
	dw l51ba,l5697,l56d0,l5701
	dw l5732,l5763,l5776,l57a7
	dw l57d8,l5809,#0000,l55ec
.l561c
	dw l59f5,l59f5,l5a1f,l5a78
	dw l5ab0,l5b05,l5b46,l5b63
	dw l5bab,l5bf3,l5c26,l5a1f
	dw l5a78,l5ab0,l5b05,l5b46
	dw l5b63,l5bab,l5bf3,l5c26
.l5648 equ $ + 4
	dw #0000,l561c,l583a,l583a
	dw l585d,l588e,l58bf,l58f0
	dw l5921,l5931,l5962,l5993
	dw l59c4,l51ba,l585d,l588e
	dw l58bf,l58f0,l5921,l5931
	dw l5962,l5993,l59c4,#0000
	dw l5648
.l5676
	db #df,#15,#24,#11,#e6,#88,#b3,#92
	db #0e,#8b,#0c,#0e,#8b,#0c,#0e,#8b
	db #0c,#0e,#11,#13,#0e,#8b,#0c,#0e
	db #8b,#0c,#0e,#11,#15,#0c,#10,#13
.l5697 equ $ + 1
	db #95,#df,#15,#24,#11,#e6,#88,#b3
	db #92,#0e,#8b,#0e,#8b,#8b,#0c,#0e
	db #8b,#0e,#8b,#8b,#0c,#0e,#8b,#0e
	db #8b,#8b,#0c,#0e,#8b,#0e,#15,#18
	db #1a,#0e,#8b,#0e,#8b,#8b,#0c,#0e
	db #8b,#0e,#8b,#8b,#0c,#0e,#8b,#0e
	db #8b,#8b,#0c,#0e,#8b,#0e,#15,#11
.l56d0 equ $ + 2
	db #0e,#95,#0e,#8b,#0e,#8b,#8b,#0c
	db #0e,#8b,#0e,#8b,#8b,#0c,#0e,#8b
	db #0e,#8b,#8b,#0c,#0e,#8b,#0e,#0c
	db #0e,#11,#13,#8b,#13,#8b,#8b,#11
	db #13,#8b,#13,#8b,#8b,#13,#11,#8b
	db #11,#0c,#8b,#0d,#0e,#8b,#0e,#15
.l5701 equ $ + 3
	db #11,#0e,#95,#0e,#8b,#0e,#8b,#8b
	db #0c,#0e,#0c,#0e,#14,#15,#15,#0e
	db #8b,#0e,#8b,#8b,#0c,#0e,#0c,#0e
	db #14,#15,#15,#11,#8b,#11,#8b,#8b
	db #0c,#11,#8b,#11,#8b,#8b,#12,#13
	db #8b,#13,#8b,#8b,#13,#18,#19,#1a
.l5732 equ $ + 4
	db #13,#14,#15,#95,#0e,#8b,#0e,#8b
	db #8b,#0e,#0e,#8b,#0e,#8b,#8b,#0e
	db #13,#8b,#13,#13,#8b,#13,#15,#8b
	db #15,#18,#19,#1a,#0e,#8b,#0e,#0e
	db #8b,#0e,#0e,#8b,#0e,#0e,#8b,#0e
	db #13,#8b,#13,#13,#8b,#13,#15,#8b
.l5763 equ $ + 5
	db #15,#18,#15,#11,#95,#82,#80,#fe
	db #26,#21,#1d,#21,#1d,#1a,#1d,#1a
	db #15,#18,#15,#10,#91,#b3,#92,#95
.l5776
	db #0e,#8b,#0e,#0c,#8b,#0d,#0e,#8b
	db #0e,#8b,#8b,#0c,#0e,#8b,#0c,#8b
	db #8b,#0c,#0e,#8b,#0c,#13,#8b,#15
	db #0e,#8b,#0e,#0c,#8b,#0d,#0e,#8b
	db #0e,#8b,#8b,#0c,#0e,#8b,#0c,#8b
	db #8b,#0c,#0e,#8b,#0c,#13,#8b,#15
.l57a7 equ $ + 1
	db #95,#0e,#8b,#0e,#0c,#8b,#0d,#0e
	db #8b,#0e,#8b,#8b,#0c,#0e,#8b,#0c
	db #8b,#8b,#0c,#13,#8b,#15,#8b,#8b
	db #0c,#0e,#8b,#0e,#0c,#8b,#0d,#0e
	db #8b,#0e,#8b,#8b,#0c,#0e,#8b,#0c
	db #8b,#8b,#15,#11,#8b,#0e,#8b,#8b
.l57d8 equ $ + 2
	db #8b,#95,#13,#8b,#8b,#13,#8b,#8b
	db #13,#8b,#0e,#13,#8b,#15,#11,#8b
	db #8b,#11,#8b,#8b,#11,#8b,#0e,#11
	db #8b,#12,#13,#8b,#8b,#13,#8b,#8b
	db #13,#8b,#0e,#13,#8b,#15,#11,#8b
	db #8b,#11,#8b,#8b,#11,#8b,#0e,#11
.l5809 equ $ + 3
	db #8b,#12,#95,#13,#8b,#8b,#13,#8b
	db #8b,#13,#8b,#0e,#13,#8b,#15,#11
	db #8b,#8b,#11,#8b,#8b,#11,#8b,#0e
	db #11,#8b,#0e,#0c,#8b,#8b,#0c,#8b
	db #8b,#0c,#8b,#0c,#0d,#8b,#0d,#0e
	db #8b,#0e,#8b,#8b,#0e,#13,#15,#11
.l583a equ $ + 4
	db #0e,#11,#0e,#95,#df,#00,#00,#00
	db #e6,#88,#b4,#a0,#99,#40,#21,#8b
	db #1f,#9a,#8b,#1f,#21,#8b,#1f,#9a
	db #24,#26,#21,#8b,#1f,#9a,#8b,#1f
.l585d equ $ + 7
	db #21,#24,#28,#9a,#23,#26,#95,#21
	db #8b,#21,#9a,#8b,#1f,#21,#8b,#21
	db #9a,#8b,#1f,#21,#8b,#21,#9a,#8b
	db #1f,#21,#8b,#21,#9a,#8b,#8b,#21
	db #8b,#21,#9a,#8b,#1f,#21,#8b,#21
	db #9a,#8b,#1f,#21,#8b,#21,#9a,#8b
	db #1f,#21,#8b,#21,#9a,#8b,#9a,#95
.l588e
	db #21,#8b,#21,#9a,#8b,#1f,#21,#8b
	db #21,#9a,#8b,#1f,#21,#8b,#21,#9a
	db #8b,#1f,#21,#8b,#21,#9a,#8b,#8b
	db #23,#8b,#23,#9a,#8b,#23,#23,#8b
	db #23,#9a,#8b,#23,#21,#8b,#21,#9a
	db #8b,#1f,#21,#8b,#9a,#9a,#8b,#9a
.l58bf equ $ + 1
	db #95,#21,#8b,#21,#9a,#8b,#1f,#21
	db #8b,#21,#9a,#8b,#1f,#21,#8b,#21
	db #9a,#8b,#1f,#21,#8b,#21,#9a,#8b
	db #21,#24,#8b,#24,#9a,#8b,#24,#24
	db #8b,#24,#9a,#8b,#25,#26,#8b,#26
	db #9a,#8b,#26,#26,#8b,#26,#9a,#8b
.l58f0 equ $ + 2
	db #9a,#95,#21,#8b,#21,#9a,#8b,#21
	db #21,#8b,#21,#9a,#8b,#21,#26,#8b
	db #26,#9a,#8b,#26,#28,#8b,#28,#9a
	db #8b,#9a,#2d,#8b,#2d,#9a,#8b,#2d
	db #2d,#8b,#2d,#9a,#8b,#2d,#32,#8b
	db #32,#9a,#8b,#32,#34,#8b,#34,#9a
.l5921 equ $ + 3
	db #8b,#9a,#95,#82,#9a,#9a,#9a,#9a
	db #9a,#9a,#9a,#9a,#9a,#9a,#9a,#9a
.l5931 equ $ + 3
	db #a0,#b4,#95,#1a,#8b,#1a,#9a,#8b
	db #19,#1a,#8b,#1a,#9a,#8b,#18,#1a
	db #8b,#18,#9a,#8b,#18,#1a,#8b,#18
	db #9a,#8b,#8b,#1a,#8b,#1a,#9a,#8b
	db #19,#1a,#8b,#1a,#9a,#8b,#18,#1a
	db #8b,#18,#9a,#8b,#18,#1a,#8b,#18
.l5962 equ $ + 4
	db #9a,#9a,#9a,#95,#1a,#8b,#1a,#9a
	db #8b,#19,#1a,#8b,#1a,#9a,#8b,#18
	db #1a,#8b,#18,#9a,#8b,#18,#1f,#8b
	db #21,#9a,#8b,#8b,#1a,#8b,#1a,#9a
	db #8b,#19,#1a,#8b,#1a,#9a,#8b,#18
	db #1a,#8b,#18,#9a,#8b,#21,#1d,#8b
.l5993 equ $ + 5
	db #1a,#9a,#9a,#9a,#95,#1f,#8b,#1a
	db #9a,#8b,#1a,#1f,#8b,#1a,#9a,#8b
	db #8b,#1d,#8b,#18,#9a,#8b,#18,#1d
	db #8b,#1a,#9a,#8b,#8b,#1f,#8b,#1a
	db #9a,#8b,#1a,#1f,#8b,#1a,#9a,#8b
	db #21,#1d,#8b,#18,#9a,#8b,#18,#1d
.l59c4 equ $ + 6
	db #8b,#1a,#9a,#8b,#1e,#95,#1f,#8b
	db #1a,#9a,#8b,#1a,#1f,#8b,#1a,#9a
	db #8b,#8b,#1d,#8b,#18,#9a,#8b,#18
	db #1d,#8b,#18,#9a,#8b,#8b,#18,#8b
	db #13,#9a,#8b,#13,#18,#8b,#18,#9a
	db #8b,#19,#1a,#8b,#1a,#9a,#8b,#8b
.l59f5 equ $ + 7
	db #9a,#9a,#9a,#9a,#9a,#9a,#95,#82
	db #df,#00,#00,#00,#86,#07,#02,#04
	db #81,#03,#15,#e6,#88,#1a,#8c,#18
	db #1a,#8c,#18,#1a,#8c,#18,#1a,#1d
	db #1f,#1a,#8c,#18,#1a,#8c,#18,#1a
	db #1d,#21,#18,#1c,#1f,#81,#00,#00
.l5a1f equ $ + 1
	db #95,#84,#18,#80,#06,#80,#04,#32
	db #e6,#8b,#8c,#85,#30,#8c,#32,#2d
	db #8b,#8b,#2b,#8c,#2c,#2d,#8c,#2d
	db #e1,#2b,#2d,#e2,#2b,#e6,#29,#2b
	db #e1,#29,#2b,#e2,#29,#e6,#28,#29
	db #24,#25,#8c,#26,#8b,#8c,#29,#8b
	db #8c,#e1,#29,#e4,#26,#e6,#8b,#29
	db #2d,#8c,#29,#e1,#29,#e4,#26,#e6
	db #29,#26,#24,#25,#8c,#84,#18,#80
	db #04,#80,#06,#26,#8b,#80,#ff,#8b
	db #8b,#80,#01,#8b,#80,#02,#8b,#91
.l5a78 equ $ + 2
	db #85,#95,#32,#8b,#8c,#30,#8c,#32
	db #35,#8c,#34,#30,#8c,#31,#32,#8b
	db #8c,#30,#8c,#81,#01,#15,#32,#38
	db #39,#39,#38,#39,#39,#81,#00,#00
	db #37,#8b,#8c,#32,#8c,#30,#2f,#8b
	db #32,#37,#8c,#32,#35,#8c,#34,#30
	db #8c,#31,#32,#8b,#8b,#8b,#8b,#8c
.l5ab0 equ $ + 2
	db #e6,#95,#84,#18,#80,#06,#80,#04
	db #3e,#8b,#8c,#3e,#85,#8b,#3d,#3c
	db #3e,#39,#37,#8b,#38,#39,#35,#32
	db #35,#32,#35,#39,#35,#39,#3e,#39
	db #3e,#87,#3e,#e2,#3c,#e1,#3e,#3c
	db #e6,#39,#e6,#3e,#e2,#3c,#e1,#3e
	db #3c,#e6,#39,#e6,#3e,#e2,#3c,#e1
	db #3e,#3c,#e6,#39,#e6,#3e,#e2,#3c
	db #e1,#3e,#3c,#e6,#39,#e6,#37,#39
	db #35,#32,#35,#32,#37,#39,#35,#32
.l5b05 equ $ + 7
	db #35,#32,#86,#07,#02,#04,#95,#cd
	db #86,#07,#08,#04,#81,#02,#15,#1a
	db #8b,#1a,#1a,#8b,#1a,#1a,#8b,#1a
	db #1a,#8b,#1a,#1f,#8b,#1f,#1f,#8b
	db #1f,#21,#8b,#21,#24,#25,#26,#1a
	db #8b,#1a,#1a,#8b,#1a,#1a,#8b,#1a
	db #1a,#8b,#1a,#1f,#8b,#1f,#1f,#8b
	db #1f,#21,#8b,#21,#24,#25,#26,#86
	db #07,#02,#04,#ce,#81,#00,#00,#95
.l5b46
	db #81,#03,#15,#84,#18,#80,#06,#80
	db #04,#32,#8b,#85,#32,#30,#8b,#31
	db #81,#00,#00,#32,#8b,#8b,#80,#ff
.l5b63 equ $ + 5
	db #8b,#8b,#8b,#91,#95,#81,#03,#15
	db #84,#18,#80,#06,#80,#04,#21,#8b
	db #21,#1f,#8b,#20,#21,#8b,#8b,#8b
	db #8c,#85,#b5,#a3,#32,#35,#8b,#32
	db #8b,#8b,#35,#39,#8b,#35,#8b,#8b
	db #8b,#84,#18,#80,#06,#80,#04,#82
	db #21,#8b,#21,#1f,#8b,#20,#21,#8b
	db #8b,#8b,#8c,#85,#b5,#a3,#30,#32
	db #8b,#30,#8b,#8b,#32,#37,#8b,#39
.l5bab equ $ + 5
	db #8b,#8b,#8b,#82,#95,#84,#18,#80
	db #06,#80,#04,#21,#8b,#21,#1f,#8b
	db #20,#21,#8b,#8b,#8b,#8c,#85,#b5
	db #a3,#32,#35,#8b,#32,#8b,#8b,#35
	db #39,#8b,#35,#8b,#8b,#8b,#82,#84
	db #18,#80,#06,#80,#04,#21,#8b,#21
	db #1f,#8b,#20,#21,#8b,#8b,#8b,#8c
	db #85,#b5,#a3,#30,#32,#8b,#30,#8b
	db #8b,#39,#35,#8b,#32,#8b,#8b,#8b
.l5bf3 equ $ + 5
	db #82,#81,#00,#00,#95,#a3,#b5,#2f
	db #8b,#8b,#2f,#8b,#8b,#2f,#8b,#30
	db #2f,#8b,#2d,#8b,#8b,#8b,#29,#8b
	db #8b,#8b,#8b,#8b,#8b,#8b,#8b,#2f
	db #8b,#8b,#2f,#8b,#8b,#2f,#8b,#30
	db #2f,#8b,#2d,#8b,#8b,#8b,#29,#8b
	db #8b,#26,#8b,#29,#8b,#8b,#8b,#95
.l5c26
	db #2f,#8b,#8b,#2f,#8b,#8b,#2f,#8b
	db #30,#2f,#8b,#2d,#8b,#8b,#8b,#29
	db #8b,#8b,#8b,#8b,#8b,#8b,#8b,#8b
	db #30,#8b,#8b,#30,#8b,#8b,#34,#8b
	db #35,#34,#8b,#32,#8b,#8b,#8b,#8b
	db #8b,#82,#81,#03,#15,#1a,#1f,#21
	db #1d,#1a,#1d,#1a,#82,#81,#00,#00
	db #95,#95,#78,#5c,#82,#5c,#8f,#5c
	db #9b,#5c,#a7,#5c,#b4,#5c,#c3,#5c
	db #cb,#5c,#ef,#5c,#13,#5d,#2b,#5d
	db #38,#5d,#df,#13,#1f,#11,#f3,#8a
	db #80,#ff,#21,#90,#df,#00,#15,#11
	db #80,#fc,#e1,#8a,#21,#88,#f3,#21
	db #90,#df,#00,#19,#11,#f3,#86,#01
	db #01,#01,#8a,#21,#90,#df,#12,#1c
	db #11,#f3,#86,#01,#01,#01,#8a,#21
	db #90,#89,#df,#00,#1f,#1f,#98,#ff
	db #86,#01,#01,#01,#5f,#90,#89,#df
	db #14,#1f,#11,#e1,#86,#06,#14,#04
	db #13,#88,#eb,#8b,#90,#df,#00,#1f
	db #11,#89,#e6,#18,#90,#df,#00,#1f
	db #15,#88,#e1,#30,#34,#37,#3c,#cd
	db #30,#34,#37,#3c,#cb,#30,#34,#37
	db #3c,#c9,#30,#34,#37,#3c,#c7,#30
	db #34,#37,#3c,#c5,#30,#34,#37,#3c
	db #90,#df,#00,#1f,#15,#88,#e1,#30
	db #2b,#29,#2b,#cd,#24,#29,#2b,#29
	db #cb,#30,#2b,#29,#2b,#c9,#24,#29
	db #2b,#29,#c7,#30,#2b,#29,#2b,#c5
	db #24,#29,#2b,#29,#90,#df,#00,#1f
	db #11,#89,#e4,#18,#df,#00,#00,#00
	db #88,#93,#02,#e9,#86,#01,#01,#01
	db #54,#8b,#93,#00,#90,#df,#00,#1f
	db #11,#89,#e4,#b5,#8a,#24,#88,#28
	db #2b,#90,#df,#00,#1f,#11,#8a,#e6
.l5d40 equ $ + 2
	db #18,#90,#b7,#51
	dw l5da7,l5e82,l5f45,#0000
.l5d4c equ $ + 2
	dw l5d40,l5df5,l5ec3,l5f87
.l5d56 equ $ + 4
	dw #0000,l5d4c,l5d60,l5e41
	dw l5f04,#0000,l5d56
.l5d60
	db #df,#13,#14,#11,#e6,#88,#10,#8b
	db #9d,#8b,#0c,#8b,#9d,#8b,#10,#8b
	db #9d,#8b,#0c,#8b,#9d,#8b,#10,#8b
	db #9d,#8b,#0c,#8b,#9d,#8b,#10,#8b
	db #9d,#8b,#0c,#8b,#9d,#9d,#10,#8b
	db #9d,#8b,#0c,#8b,#9d,#8b,#10,#8b
	db #9d,#8b,#0c,#8b,#9d,#8b,#10,#8b
	db #9d,#8b,#0c,#8b,#9d,#8b,#10,#8b
.l5da7 equ $ + 7
	db #9d,#8b,#0c,#8b,#9d,#9d,#95,#97
	db #01,#df,#12,#17,#11,#e6,#88,#b5
	db #86,#07,#02,#04,#23,#8b,#8b,#8b
	db #1f,#8b,#1c,#8b,#1f,#8b,#8b,#8b
	db #1c,#8b,#18,#8b,#1c,#8b,#1f,#8b
	db #1c,#8b,#18,#8b,#1f,#8b,#8b,#8b
	db #1c,#8b,#1f,#8b,#23,#8b,#8b,#8b
	db #1f,#8b,#1c,#8b,#1f,#8b,#8b,#8b
	db #1c,#8b,#18,#8b,#1c,#8b,#1f,#8b
	db #1c,#8b,#18,#8b,#1c,#8b,#8b,#8b
.l5df5 equ $ + 5
	db #8b,#8b,#1f,#8b,#95,#df,#11,#17
	db #17,#e6,#88,#86,#07,#02,#04,#a5
	db #2f,#8b,#8b,#8b,#2b,#8b,#8b,#2b
	db #28,#8b,#8b,#26,#28,#8b,#8b,#26
	db #28,#8b,#2b,#8b,#28,#8b,#26,#8b
	db #28,#8b,#8b,#8b,#8b,#8b,#8b,#8b
	db #2f,#8b,#8b,#8b,#2b,#8b,#8b,#2b
	db #28,#8b,#8b,#2a,#2b,#2a,#2b,#2d
	db #2f,#8b,#32,#8b,#2f,#8b,#2d,#8b
	db #2f,#8b,#8b,#8b,#8b,#8b,#8b,#8b
.l5e41 equ $ + 1
	db #95,#10,#8b,#9d,#8b,#0c,#8b,#9d
	db #8b,#10,#8b,#9d,#8b,#0c,#8b,#9d
	db #8b,#10,#8b,#9d,#8b,#0c,#8b,#9d
	db #8b,#10,#8b,#9d,#8b,#0c,#8b,#9d
	db #9d,#15,#8b,#9d,#8b,#10,#8b,#9d
	db #8b,#15,#8b,#9d,#8b,#10,#8b,#9d
	db #8b,#15,#8b,#9d,#8b,#10,#8b,#9d
	db #8b,#15,#8b,#9d,#9d,#10,#8b,#9d
.l5e82 equ $ + 2
	db #9d,#95,#23,#8b,#8b,#8b,#1f,#8b
	db #1c,#8b,#1f,#8b,#8b,#8b,#1c,#8b
	db #18,#8b,#1c,#8b,#1f,#8b,#1c,#8b
	db #18,#8b,#1f,#8b,#8b,#1a,#1c,#8b
	db #1f,#8b,#28,#8b,#8b,#8b,#24,#8b
	db #21,#8b,#24,#8b,#8b,#8b,#21,#8b
	db #1f,#8b,#21,#8b,#24,#8b,#21,#8b
	db #1f,#8b,#24,#8b,#8b,#21,#21,#8b
.l5ec3 equ $ + 3
	db #1f,#8b,#95,#28,#8b,#8b,#8b,#2a
	db #8b,#8b,#8b,#2b,#8b,#2a,#8b,#28
	db #8b,#26,#8b,#28,#8b,#26,#8b,#23
	db #8b,#21,#8b,#23,#8b,#8b,#8b,#8b
	db #8b,#8b,#8b,#2d,#8b,#8b,#2f,#30
	db #8b,#2f,#8b,#2d,#8b,#2f,#8b,#30
	db #8b,#2f,#8b,#34,#8b,#34,#8b,#30
	db #8b,#2d,#8b,#28,#8b,#8b,#8b,#8b
.l5f04 equ $ + 4
	db #8b,#8b,#8b,#95,#10,#8b,#10,#8b
	db #10,#8b,#0b,#8b,#0f,#8b,#0f,#8b
	db #0f,#8b,#0b,#8b,#13,#8b,#13,#8b
	db #13,#8b,#10,#8b,#15,#8b,#15,#8b
	db #15,#8b,#10,#8b,#15,#8b,#15,#8b
	db #15,#8b,#10,#8b,#10,#8b,#10,#8b
	db #10,#8b,#10,#8b,#0f,#8b,#0f,#8b
	db #12,#8b,#12,#8b,#15,#8b,#15,#8b
.l5f45 equ $ + 5
	db #18,#8b,#9d,#9d,#95,#b1,#23,#8b
	db #23,#8b,#23,#8b,#8b,#8b,#22,#8b
	db #22,#8b,#22,#8b,#8b,#8b,#23,#8b
	db #23,#8b,#23,#8b,#8b,#8b,#21,#8b
	db #21,#8b,#21,#8b,#8b,#8b,#21,#8b
	db #21,#8b,#21,#8b,#8b,#8b,#23,#8b
	db #23,#8b,#23,#8b,#8b,#8b,#1e,#8b
	db #1e,#8b,#21,#8b,#21,#8b,#24,#8b
.l5f87 equ $ + 7
	db #24,#8b,#27,#8b,#27,#8b,#95,#df
	db #12,#17,#11,#82,#b1,#28,#8b,#28
	db #8b,#28,#8b,#8b,#8b,#27,#8b,#27
	db #8b,#27,#8b,#8b,#8b,#26,#8b,#26
	db #8b,#26,#8b,#8b,#8b,#25,#8b,#25
	db #8b,#25,#8b,#8b,#8b,#de,#00,#16
	db #12,#24,#8b,#28,#8b,#2d,#8b,#30
	db #8b,#2f,#8b,#2b,#8b,#28,#8b,#8b
	db #8b,#27,#8b,#8b,#8b,#2a,#8b,#8b
	db #8b,#2d,#8b,#8b,#8b,#30,#8b,#8b
	db #8b,#82,#95
.l5fd3
	dw l6017,l6065,l6019,l6065
	dw l601b,l6065,l601d,l6065
	dw l615d,#0000,l5fd3
.l5fe9
	dw l6017,l60cc,l6019,l60cc
	dw l601b,l60cc,l601d,l60cc
.l5fff equ $ + 6
	dw l619e,#0000,l5fe9,l51b7
	dw l6017,l601f,l6019,l601f
	dw l601b,l601f,l601d,l601f
	dw l6118,#0000,l5fff
.l601d equ $ + 6
.l601b equ $ + 4
.l6019 equ $ + 2
.l6017
	db #e9,#95,#e8,#95,#e7,#95,#e6,#95
.l601f
	db #df,#11,#14,#11,#88,#15,#28,#15
	db #28,#10,#28,#10,#28,#14,#27,#14
	db #27,#14,#27,#14,#27,#15,#28,#15
	db #28,#10,#28,#10,#28,#14,#27,#14
	db #27,#14,#27,#14,#27,#13,#26,#13
	db #26,#0e,#26,#0e,#26,#12,#25,#12
	db #25,#12,#25,#12,#25,#13,#26,#13
	db #26,#0e,#26,#0e,#26,#12,#25,#12
.l6065 equ $ + 6
	db #25,#12,#25,#12,#25,#95,#de,#00
	db #17,#11,#88,#b5,#39,#82,#15,#9d
	db #15,#b5,#34,#82,#10,#9d,#10,#b5
	db #38,#82,#14,#9d,#14,#b5,#33,#82
	db #14,#9d,#14,#b5,#39,#82,#15,#9d
	db #15,#b5,#34,#82,#10,#9d,#10,#b5
	db #38,#82,#14,#9d,#14,#b5,#33,#82
	db #14,#9d,#9d,#b5,#37,#82,#13,#9d
	db #13,#b5,#32,#82,#0e,#9d,#0e,#b5
	db #36,#82,#12,#9d,#12,#b5,#31,#82
	db #12,#9d,#12,#b5,#37,#82,#13,#9d
	db #13,#b5,#32,#82,#0e,#9d,#0e,#b5
	db #36,#82,#12,#9d,#12,#b5,#31,#82
.l60cc equ $ + 5
	db #12,#9d,#9d,#b5,#95,#df,#00,#15
	db #11,#88,#ac,#92,#86,#07,#02,#04
	db #34,#31,#8b,#31,#34,#8b,#31,#8b
	db #33,#8b,#33,#8b,#36,#8b,#36,#8b
	db #34,#31,#8b,#31,#34,#8b,#31,#8b
	db #30,#31,#30,#2d,#2c,#8b,#38,#8b
	db #37,#8b,#32,#32,#8b,#2f,#2f,#8b
	db #31,#32,#31,#2f,#2e,#8b,#2a,#8b
	db #2b,#8b,#8b,#8b,#26,#8b,#2b,#8b
	db #2e,#2f,#2e,#2b,#2a,#8b,#8b,#8b
.l6118 equ $ + 1
	db #95,#df,#14,#2f,#11,#15,#8b,#15
	db #8b,#14,#8b,#14,#8b,#13,#8b,#13
	db #8b,#12,#8b,#19,#8b,#15,#8b,#15
	db #8b,#14,#8b,#14,#8b,#13,#8b,#13
	db #8b,#12,#8b,#19,#8b,#12,#8b,#12
	db #8b,#12,#8b,#12,#8b,#13,#8b,#13
	db #8b,#13,#8b,#13,#8b,#12,#8b,#12
	db #8b,#12,#8b,#12,#8b,#13,#8b,#13
.l615d equ $ + 6
	db #8b,#13,#8b,#13,#8b,#95,#39,#39
	db #9c,#39,#38,#38,#9d,#38,#37,#37
	db #9d,#37,#9d,#36,#3d,#8b,#39,#39
	db #9d,#39,#38,#38,#9d,#38,#37,#37
	db #9d,#37,#9d,#34,#3d,#8b,#3a,#36
	db #9d,#36,#3a,#36,#9d,#36,#3b,#37
	db #9d,#37,#3b,#37,#9d,#37,#3a,#36
	db #9d,#36,#3a,#36,#9d,#36,#3b,#37
.l619e equ $ + 7
	db #9d,#37,#3b,#37,#9d,#37,#95,#39
	db #3d,#40,#8b,#38,#3c,#3f,#8b,#37
	db #3b,#3e,#8b,#36,#8b,#8b,#8b,#39
	db #3d,#40,#3d,#38,#3c,#3f,#3c,#37
	db #3b,#3e,#37,#36,#8b,#36,#8b,#3d
	db #3a,#3d,#3a,#3d,#3a,#3d,#3a,#3e
	db #3b,#3e,#3b,#3e,#3b,#3e,#3b,#3d
	db #3a,#3d,#3a,#3d,#3a,#3d,#3a,#3e
	db #3b,#3e,#3b,#3e,#3b,#3e,#3b,#95
.l61e5 equ $ + 6
.l61df
	dw l61f7,#0000,l61df,l6240
.l61eb equ $ + 4
	dw #0000,l61e5,l51b4,l633c
	dw l62ad,l62ad,#0000,l61eb
.l61f7
	db #df,#13,#22,#11,#88,#e7,#b6,#92
	db #11,#8c,#11,#8c,#9d,#8c,#0f,#8c
	db #11,#8c,#11,#11,#9d,#1d,#11,#0f
	db #11,#8c,#11,#8c,#9d,#8c,#0f,#8c
	db #11,#8c,#11,#11,#9d,#1d,#0f,#0c
	db #13,#8c,#13,#8c,#9d,#8c,#11,#8c
	db #13,#8c,#13,#13,#9d,#1f,#13,#11
	db #13,#8c,#13,#8c,#9d,#8c,#11,#8c
	db #13,#8c,#13,#13,#9d,#1f,#11,#9d
.l6240 equ $ + 1
	db #95,#de,#00,#00,#11,#88,#e7,#99
	db #50,#a6,#1d,#1d,#29,#1d,#1d,#27
	db #1d,#1d,#29,#1d,#1d,#27,#80,#fe
	db #82,#b5,#1f,#82,#91,#a6,#29,#1d
	db #27,#1d,#1d,#29,#1d,#1d,#27,#1d
	db #1d,#29,#1d,#1d,#27,#80,#fe,#82
	db #b5,#1f,#82,#91,#a6,#29,#1d,#27
	db #1f,#1f,#2b,#1f,#1f,#29,#1f,#1f
	db #2b,#1f,#1f,#29,#80,#fe,#82,#b5
	db #1f,#82,#91,#a6,#2b,#1f,#29,#1f
	db #1f,#2b,#1f,#1f,#29,#1f,#1f,#2b
	db #1f,#1f,#29,#80,#fe,#82,#b5,#1f
	db #82,#91,#a6,#2b,#1f,#80,#fe,#82
.l62ad equ $ + 6
	db #b5,#1f,#82,#91,#a6,#95,#df,#11
	db #14,#12,#e7,#88,#86,#00,#04,#04
	db #b6,#92,#29,#8b,#8b,#83,#07,#80
	db #3c,#8b,#2c,#8b,#8b,#83,#04,#00
	db #3c,#8b,#2b,#8b,#8b,#83,#06,#80
	db #3c,#8b,#2e,#8b,#8b,#83,#06,#00
	db #50,#8b,#29,#8b,#8b,#83,#07,#80
	db #3c,#8b,#2c,#8b,#8b,#83,#04,#00
	db #3c,#8b,#2b,#8b,#8b,#83,#04,#00
	db #3c,#8b,#27,#8b,#8b,#83,#06,#80
	db #50,#8b,#2b,#8b,#8b,#83,#07,#80
	db #3c,#8b,#2e,#8b,#8b,#83,#04,#00
	db #3c,#8b,#2d,#8b,#8b,#83,#06,#80
	db #3c,#8b,#30,#8b,#8b,#83,#06,#00
	db #50,#8b,#2b,#8b,#8b,#83,#07,#80
	db #3c,#8b,#2e,#8b,#8b,#83,#04,#00
	db #3c,#8b,#2d,#8b,#8b,#83,#04,#00
	db #3c,#8b,#29,#8b,#8b,#83,#06,#80
.l633c equ $ + 5
	db #50,#8b,#94,#03,#95,#98,#80,#8c
	db #8c,#8c,#8c,#8c,#8c,#8c,#8c,#95
.l6347
.l6349 equ $ + 2
	dw l636b,l6396,l6396,#0000
.l6351 equ $ + 2
.l6353 equ $ + 4
	dw l6349,l63ec,l641f,l641f
	dw #0000,l6353
.l635b
	dw l51b7,l646a
.l635f
	dw l51b7,l649d,l51ba,l649d
	dw #0000,l635f
.l636b
	db #df,#12,#18,#11,#e5,#88,#df,#11
	db #1f,#11,#8c,#8b,#8b,#8b,#9a,#8b
	db #1c,#8b,#1f,#8b,#1c,#8b,#9a,#8b
	db #1c,#8b,#23,#8b,#1c,#8b,#9a,#8b
	db #9a,#9a,#8b,#9a,#9a,#9a,#9a,#9a
.l6396 equ $ + 3
	db #9a,#9a,#95,#df,#00,#13,#11,#eb
	db #88,#04,#a4,#b5,#23,#82,#9a,#a4
	db #b5,#21,#82,#04,#a4,#b5,#1e,#82
	db #9a,#a4,#b5,#1f,#82,#04,#a4,#b5
	db #23,#82,#9a,#a4,#b5,#21,#82,#04
	db #a4,#b5,#1e,#82,#9a,#a4,#b5,#e5
	db #1c,#82,#9a,#eb,#04,#a4,#b5,#23
	db #82,#9a,#a4,#b5,#21,#82,#04,#a4
	db #b5,#1e,#82,#9a,#a4,#b5,#1f,#82
	db #04,#a4,#b5,#23,#82,#9a,#a4,#b5
	db #21,#82,#04,#9a,#9a,#e5,#9a,#9a
.l63ec equ $ + 1
	db #95,#df,#00,#15,#11,#e5,#88,#04
	db #8b,#a4,#04,#8b,#8b,#8b,#8b,#8b
	db #82,#04,#8b,#a4,#04,#8b,#8b,#8b
	db #8b,#8b,#82,#04,#8b,#a4,#04,#8b
	db #82,#04,#8b,#a4,#04,#8b,#82,#04
	db #8b,#a4,#04,#8b,#82,#04,#8b,#a4
.l641f equ $ + 4
	db #04,#8b,#82,#95,#de,#00,#16,#11
	db #e5,#88,#86,#06,#02,#04,#26,#28
	db #2f,#28,#8b,#26,#28,#2d,#26,#28
	db #2f,#28,#8b,#26,#2d,#2b,#26,#28
	db #2f,#8b,#28,#26,#28,#2f,#32,#32
	db #31,#31,#2f,#2f,#2d,#2d,#26,#28
	db #2f,#28,#8b,#26,#28,#2d,#26,#28
	db #2f,#28,#8b,#26,#2d,#2b,#26,#28
	db #2f,#8b,#28,#26,#28,#2f,#32,#32
.l646a equ $ + 7
	db #31,#31,#2f,#2f,#2d,#2d,#95,#df
	db #00,#15,#11,#e5,#88,#10,#8b,#a4
	db #10,#8b,#8b,#8b,#8b,#8b,#82,#10
	db #8b,#a4,#10,#8b,#8b,#8b,#8b,#8b
	db #82,#10,#8b,#a4,#10,#8b,#82,#10
	db #8b,#a4,#10,#8b,#82,#10,#8b,#a4
	db #10,#8b,#82,#10,#8b,#a4,#10,#8b
.l649d equ $ + 2
	db #82,#95,#df,#00,#13,#11,#eb,#88
	db #10,#a4,#b5,#1f,#82,#10,#a4,#b5
	db #1e,#82,#10,#a4,#b5,#1a,#82,#10
	db #a4,#b5,#1c,#82,#10,#a4,#b5,#1f
	db #82,#10,#a4,#b5,#1e,#82,#10,#a4
	db #b5,#1a,#82,#10,#a4,#b5,#17,#82
	db #10,#a4,#b5,#1f,#82,#10,#a4,#b5
	db #1e,#82,#10,#a4,#b5,#1a,#82,#10
	db #a4,#b5,#1c,#82,#10,#a4,#b5,#1f
	db #82,#10,#a4,#b5,#1e,#82,#10,#a4
	db #b5,#1a,#82,#10,#a4,#b5,#17,#82
	db #95
.l64fa equ $ + 6
.l64f4
	dw l650c,#0000,l64f4,l659c
.l6500 equ $ + 4
	dw #0000,l64fa,l51b7,l6555
	dw l51ba,l6555,#0000,l6500
.l650c
	db #df,#12,#2f,#11,#e5,#88,#80,#fe
	db #13,#13,#8b,#8b,#9c,#8b,#8b,#13
	db #8b,#13,#13,#8b,#9c,#8b,#8b,#9c
	db #13,#8b,#8b,#8b,#9c,#8b,#8b,#8b
	db #13,#13,#13,#13,#9c,#8b,#13,#9c
	db #13,#13,#8b,#8b,#9c,#8b,#8b,#13
	db #8b,#13,#13,#8b,#9c,#8b,#13,#9c
	db #13,#8b,#13,#8b,#9c,#8b,#13,#9c
	db #8b,#9c,#8b,#9c,#9c,#8b,#9c,#9c
.l6555 equ $ + 1
	db #95,#df,#11,#14,#11,#e5,#88,#11
	db #8b,#8c,#14,#8b,#8c,#11,#8c,#0f
	db #8c,#11,#8c,#14,#8c,#11,#8c,#11
	db #8b,#8c,#14,#8b,#8c,#11,#8c,#0f
	db #8c,#11,#8c,#0c,#8b,#8b,#8c,#11
	db #8b,#8c,#14,#8b,#8c,#11,#8c,#0f
	db #8c,#10,#8c,#11,#8c,#14,#8c,#11
	db #8b,#8c,#14,#8b,#8c,#11,#8c,#0f
	db #8c,#10,#8c,#11,#8b,#8b,#8c,#95
.l659c
	db #df,#00,#19,#11,#e5,#88,#99,#3c
	db #86,#06,#03,#04,#1d,#1d,#8b,#20
	db #20,#8b,#1d,#8b,#22,#8b,#1d,#8b
	db #24,#8b,#8b,#8b,#29,#2c,#30,#8b
	db #8b,#8b,#8b,#8b,#8b,#8b,#8b,#8b
	db #8b,#8b,#8b,#8b,#29,#29,#8b,#2c
	db #2c,#8b,#29,#8b,#27,#8b,#28,#8b
	db #29,#8b,#2c,#8b,#29,#8b,#29,#27
	db #8b,#27,#29,#8b,#27,#8b,#28,#8b
	db #29,#8b,#8b,#8b,#95
.l65e9
	dw l6609,l6609,l6631,#0000
.l65f3 equ $ + 2
	dw l65e9,l6672,l6672,l66bc
.l65fd equ $ + 4
	dw #0000,l65f3,l51b7,l6736
	dw l6736,l6772,#0000,l65fd
.l6609
	db #df,#00,#13,#11,#e7,#88,#92,#0e
	db #8c,#0e,#8c,#9c,#8c,#0e,#8c,#0e
	db #8c,#0e,#9c,#9c,#8c,#1a,#8b,#0e
	db #8c,#0e,#8c,#9c,#8c,#0e,#8c,#0e
	db #8c,#0e,#9c,#9c,#8c,#1a,#8b,#95
.l6631
	db #13,#8c,#13,#8c,#9c,#8c,#13,#8c
	db #13,#8c,#13,#9c,#9c,#8c,#1a,#8b
	db #15,#8c,#15,#8c,#9c,#8c,#15,#8c
	db #15,#8c,#15,#9c,#9c,#8c,#1c,#8b
	db #0e,#8c,#0e,#9c,#9c,#8c,#0e,#8c
	db #0e,#8c,#0e,#9c,#9c,#10,#1a,#8b
	db #0e,#8c,#0e,#8c,#9c,#8c,#0e,#8c
	db #0e,#8c,#0e,#8c,#9c,#9c,#1a,#9c
.l6672 equ $ + 1
	db #95,#df,#11,#17,#13,#e7,#88,#b5
	db #80,#fe,#1a,#8b,#82,#91,#a4,#1a
	db #8b,#1d,#8b,#21,#8b,#82,#b5,#80
	db #fe,#1a,#8b,#82,#91,#a4,#1a,#8b
	db #1d,#8b,#21,#8b,#82,#b5,#80,#fe
	db #1a,#8b,#82,#91,#a4,#20,#8b,#8b
	db #8b,#1c,#8b,#82,#b5,#80,#fe,#1a
	db #8b,#82,#91,#a4,#1f,#8b,#82,#b5
	db #80,#fe,#37,#8b,#82,#91,#a4,#1d
.l66bc equ $ + 3
	db #8b,#82,#95,#b5,#80,#fe,#1a,#8b
	db #82,#91,#a4,#1f,#8b,#22,#8b,#26
	db #8b,#82,#b5,#80,#fe,#1a,#8b,#82
	db #91,#a4,#1f,#8b,#22,#8b,#26,#8b
	db #82,#b5,#80,#fe,#1a,#8b,#82,#91
	db #a4,#21,#8b,#8b,#8b,#25,#8b,#82
	db #b5,#80,#fe,#1a,#8b,#82,#91,#a4
	db #28,#8b,#82,#b5,#80,#fe,#37,#8b
	db #82,#91,#a4,#2d,#8b,#82,#b5,#80
	db #fe,#1a,#8b,#1a,#8b,#1a,#8b,#8b
	db #8b,#82,#b5,#80,#fe,#37,#8b,#8b
	db #8b,#37,#8b,#8b,#8b,#1a,#8b,#91
	db #a4,#29,#28,#29,#8b,#28,#8b,#82
	db #b5,#80,#fe,#1a,#8b,#91,#a4,#29
	db #8b,#82,#b5,#80,#fe,#37,#8b,#91
.l6736 equ $ + 5
	db #a4,#26,#8b,#82,#95,#df,#00,#16
	db #13,#e7,#88,#84,#04,#00,#00,#00
	db #00,#0e,#cc,#a4,#1a,#8b,#1a,#8b
	db #1d,#8b,#21,#82,#cf,#0e,#cc,#a4
	db #21,#8b,#1a,#8b,#1d,#8b,#21,#82
	db #cf,#0e,#cc,#a4,#21,#8b,#20,#8b
	db #20,#8b,#1c,#82,#cf,#0e,#cc,#a4
	db #1c,#8b,#1f,#8b,#1f,#8b,#1d,#82
.l6772 equ $ + 1
	db #95,#cf,#13,#cc,#a4,#1f,#8b,#1f
	db #8b,#22,#8b,#1a,#82,#cf,#13,#cc
	db #a4,#1a,#8b,#1f,#8b,#22,#8b,#1a
	db #82,#cf,#15,#cc,#a4,#1a,#8b,#21
	db #8b,#21,#8b,#25,#82,#cf,#15,#cc
	db #a4,#25,#8b,#28,#8b,#28,#8b,#2d
	db #82,#cf,#0e,#8c,#0e,#8c,#0e,#8b
	db #8b,#8b,#0e,#8b,#8b,#8b,#0e,#8b
	db #8b,#8b,#0e,#cc,#a4,#1a,#1d,#1a
	db #18,#1a,#1f,#21,#82,#cf,#0e,#cc
	db #a4,#1a,#1d,#1a,#8b,#18,#1f,#1a
	db #82,#95
.l67cb
	dw l6e4a,l6e93,l6eda,#0000
.l67d5 equ $ + 2
	dw l67cb,l6f04,l6f52,l6f9f
.l67df equ $ + 4
	dw #0000,l67d5,l6fc3,l7010
.l67e9 equ $ + 6
	dw l7051,#0000,l67df,l6cef
	dw l6cf8,l6d39,#0000,l67e9
.l67f3
	dw l6d5d,l6d64,l6da6,#0000
.l67fd equ $ + 2
	dw l67f3,l6dca,l6dd3,l6e19
.l6807 equ $ + 4
	dw #0000,l67fd,l6861,l693f
	dw l693f,l69cf,l69cf,l6bd2
	dw l69cf,l69cf,l6985,l6985
	dw l69cf,l69cf,l6bd2,#0000
.l6825 equ $ + 2
	dw l6807,l68aa,l6a19,l6a19
	dw l6ab2,l6b46,l68aa,l6c59
	dw l6c59,l6a19,l6a19,l6ab2
	dw l6b46,l68aa,#0000,l6825
.l6843
	dw l6bc8,l6a66,l6a66,l6afc
	dw l6b87,l6c18,l6ca8,l6ca8
	dw l6a66,l6a66,l6afc,l6b87
	dw l6c18,#0000,l6843
.l6861
	db #eb,#df,#14,#2f,#12,#88,#ac,#92
	db #15,#8b,#8b,#15,#13,#15,#8b,#10
	db #15,#10,#15,#13,#15,#13,#15,#8b
	db #10,#8b,#8b,#10,#0e,#10,#8b,#0b
	db #10,#0b,#10,#0e,#10,#0e,#10,#8b
	db #11,#8b,#8b,#11,#10,#11,#8b,#0c
	db #11,#0c,#11,#10,#11,#10,#11,#8b
	db #10,#8b,#8b,#10,#8b,#10,#0b,#10
	db #14,#8b,#8b,#14,#10,#14,#8b,#17
.l68aa equ $ + 1
	db #95,#97,#02,#eb,#df,#14,#2f,#12
	db #88,#ac,#92,#1c,#8b,#8b,#1c,#1a
	db #1c,#8b,#8b,#8b,#8b,#1c,#1a,#1c
	db #1a,#1c,#8b,#17,#8b,#8b,#17,#15
	db #17,#8b,#8b,#8b,#8b,#17,#15,#17
	db #15,#17,#8b,#18,#8b,#8b,#18,#17
	db #18,#8b,#8b,#8b,#8b,#18,#17,#18
	db #17,#18,#15,#17,#8b,#10,#17,#15
	db #17,#8b,#17,#1a,#8b,#14,#1a,#8b
	db #1a,#18,#8b,#82,#95,#eb,#df,#13
	db #24,#12,#88,#ac,#21,#8b,#8b,#21
	db #1f,#21,#8b,#1c,#21,#1c,#21,#1f
	db #21,#1f,#21,#8b,#1c,#8b,#8b,#1c
	db #1a,#1c,#8b,#17,#1c,#17,#1c,#1a
	db #1c,#1a,#1c,#8b,#1d,#8b,#8b,#1d
	db #1c,#1d,#8b,#18,#1d,#18,#1d,#1c
	db #1d,#1c,#1d,#8b,#1c,#8b,#8b,#1c
	db #8b,#1c,#17,#1c,#20,#8b,#8b,#20
.l693f equ $ + 6
	db #1c,#20,#8b,#23,#82,#95,#eb,#df
	db #00,#1f,#12,#15,#8b,#8b,#15,#13
	db #15,#8b,#10,#15,#10,#15,#13,#15
	db #13,#15,#8b,#10,#8b,#8b,#10,#0e
	db #10,#8b,#0b,#10,#0b,#10,#0e,#10
	db #0e,#10,#8b,#11,#8b,#8b,#11,#10
	db #11,#8b,#0c,#11,#0c,#11,#10,#11
	db #10,#11,#8b,#10,#8b,#8b,#10,#8b
	db #10,#0b,#10,#14,#8b,#8b,#14,#10
.l6985 equ $ + 4
	db #14,#8b,#17,#95,#eb,#df,#13,#22
	db #11,#86,#06,#02,#04,#15,#8b,#9c
	db #15,#8c,#15,#9c,#10,#15,#8b,#9c
	db #15,#8c,#15,#9c,#15,#10,#8b,#9c
	db #10,#8c,#10,#9c,#0e,#10,#8b,#9c
	db #10,#8c,#10,#9c,#9c,#11,#8b,#9c
	db #11,#8c,#11,#9c,#0c,#11,#8b,#9c
	db #11,#8c,#11,#9c,#11,#10,#8b,#9c
	db #10,#8c,#10,#9c,#10,#14,#8b,#9c
.l69cf equ $ + 6
	db #14,#8c,#14,#9c,#9c,#95,#eb,#df
	db #13,#22,#11,#86,#06,#02,#04,#18
	db #8b,#9c,#18,#8c,#18,#9c,#13,#18
	db #8b,#9c,#18,#8c,#18,#9c,#18,#13
	db #8b,#9c,#13,#8c,#13,#9c,#0e,#13
	db #8b,#9c,#13,#8c,#13,#9c,#9c,#15
	db #8b,#9c,#15,#8c,#15,#9c,#10,#15
	db #8b,#9c,#15,#8c,#15,#9c,#13,#11
	db #8b,#9c,#11,#8c,#11,#9c,#11,#13
	db #8b,#9c,#13,#8c,#13,#9c,#9c,#95
.l6a19
	db #97,#02,#eb,#df,#13,#22,#11,#82
	db #86,#06,#01,#04,#28,#8b,#8b,#24
	db #24,#8b,#8b,#8b,#23,#8b,#24,#26
	db #28,#26,#28,#24,#26,#8b,#8b,#23
	db #23,#8b,#8b,#8b,#26,#8b,#8b,#28
	db #8b,#8b,#26,#8b,#24,#8b,#8b,#21
	db #21,#8b,#8b,#8b,#1d,#8b,#21,#23
	db #24,#23,#24,#21,#23,#8b,#8b,#20
	db #20,#8b,#8b,#8b,#24,#8b,#8b,#23
.l6a66 equ $ + 5
	db #23,#8b,#8b,#8b,#95,#eb,#df,#00
	db #1f,#1f,#82,#a7,#86,#0c,#02,#04
	db #2d,#8b,#8b,#28,#28,#8b,#8b,#8b
	db #8b,#8b,#2d,#2f,#30,#2f,#30,#2d
	db #2f,#8b,#8b,#28,#28,#8b,#8b,#8b
	db #8b,#8b,#8b,#8b,#2f,#8b,#30,#2f
	db #2d,#8b,#8b,#29,#29,#8b,#8b,#8b
	db #8b,#8b,#29,#2b,#2d,#2b,#2d,#29
	db #2c,#8b,#8b,#28,#28,#8b,#8b,#8b
	db #2d,#8b,#8b,#2c,#2c,#8b,#8b,#8b
.l6ab2 equ $ + 1
	db #95,#eb,#df,#13,#22,#11,#86,#06
	db #02,#04,#28,#29,#28,#26,#28,#8b
	db #8b,#8b,#28,#29,#28,#29,#2b,#2d
	db #2f,#30,#2f,#8b,#2d,#26,#8b,#8b
	db #8b,#8b,#2f,#8b,#26,#8b,#30,#8b
	db #2f,#8b,#2d,#8b,#8b,#2b,#8b,#8b
	db #2d,#2b,#28,#8b,#8b,#26,#8b,#8b
	db #28,#8b,#24,#8b,#8b,#24,#8b,#26
	db #28,#24,#26,#8b,#8b,#28,#29,#2b
.l6afc equ $ + 3
	db #2d,#2f,#95,#eb,#df,#00,#1f,#1f
	db #86,#0c,#02,#04,#34,#8b,#8b,#30
	db #30,#8b,#8b,#8b,#8b,#8b,#34,#35
	db #37,#35,#34,#8b,#32,#8b,#8b,#2b
	db #2b,#8b,#8b,#8b,#8b,#8b,#32,#34
	db #35,#34,#32,#34,#30,#8b,#8b,#8b
	db #8b,#8b,#2f,#8b,#2d,#8b,#8b,#30
	db #8b,#2f,#2d,#30,#29,#8b,#8b,#8b
	db #8b,#8b,#8b,#8b,#30,#8b,#8b,#8b
.l6b46 equ $ + 5
	db #32,#8b,#8b,#8b,#95,#30,#8b,#8b
	db #2b,#2b,#8b,#8b,#8b,#8b,#8b,#30
	db #32,#34,#32,#30,#8b,#2f,#8b,#8b
	db #26,#26,#8b,#8b,#8b,#8b,#8b,#2f
	db #30,#32,#30,#2f,#30,#2d,#8b,#8b
	db #8b,#8b,#8b,#2b,#8b,#28,#8b,#8b
	db #2d,#8b,#2b,#28,#2d,#24,#8b,#8b
	db #24,#8b,#26,#28,#24,#2d,#8b,#2d
.l6b87 equ $ + 6
	db #8b,#2b,#8b,#2b,#8b,#95,#34,#8b
	db #8b,#30,#30,#8b,#8b,#8b,#8b,#8b
	db #34,#35,#37,#35,#34,#8b,#32,#8b
	db #8b,#2b,#2b,#8b,#8b,#8b,#8b,#8b
	db #32,#34,#35,#34,#32,#34,#30,#8b
	db #8b,#8b,#8b,#8b,#2f,#8b,#2d,#8b
	db #8b,#30,#8b,#2f,#2d,#30,#29,#8b
	db #8b,#8b,#8b,#8b,#8b,#8b,#30,#8b
.l6bc8 equ $ + 7
	db #8b,#8b,#2f,#8b,#8b,#8b,#95,#94
	db #02,#98,#c0,#88,#8c,#8c,#8c,#8c
.l6bd2 equ $ + 1
	db #95,#eb,#df,#00,#1f,#12,#15,#8b
	db #9c,#15,#13,#15,#9c,#10,#15,#10
	db #9c,#13,#15,#13,#9c,#8b,#10,#8b
	db #9c,#10,#0e,#10,#9c,#0b,#10,#0b
	db #9c,#0e,#10,#0e,#9c,#9c,#11,#8b
	db #9c,#11,#10,#11,#9c,#0c,#11,#0c
	db #9c,#10,#11,#10,#9c,#8b,#10,#8b
	db #9c,#10,#8b,#10,#9c,#10,#14,#8b
.l6c18 equ $ + 7
	db #9c,#14,#10,#14,#9c,#9c,#95,#2d
	db #8b,#8b,#8b,#8b,#8b,#8b,#8b,#8b
	db #8b,#8b,#8b,#8b,#8b,#8b,#8b,#2b
	db #8b,#8b,#8b,#8b,#2d,#2b,#26,#28
	db #8b,#8b,#8b,#8b,#8b,#8b,#8b,#29
	db #8b,#8b,#28,#28,#8b,#24,#24,#8b
	db #8b,#29,#28,#29,#28,#29,#26,#28
	db #8b,#8b,#8b,#8b,#8b,#8b,#8b,#2c
	db #8b,#8b,#8b,#2f,#8b,#8b,#8b,#95
.l6c59
	db #df,#13,#22,#11,#97,#02,#82,#84
	db #02,#00,#00,#00,#00,#8b,#8b,#28
	db #8b,#8b,#24,#24,#8b,#8b,#8b,#8b
	db #8b,#28,#29,#2b,#2d,#2f,#30,#32
	db #8b,#8b,#30,#30,#8b,#2f,#2f,#8b
	db #8b,#8b,#8b,#8b,#8b,#8b,#8b,#2f
	db #8b,#30,#2d,#8b,#28,#2f,#8b,#30
	db #28,#8b,#8b,#2f,#8b,#30,#8b,#24
	db #8b,#8b,#8b,#8b,#26,#28,#24,#26
.l6ca8 equ $ + 7
	db #8b,#8b,#28,#29,#2b,#85,#95,#df
	db #00,#1f,#1f,#82,#a7,#28,#8b,#8b
	db #24,#24,#8b,#8b,#8b,#8b,#8b,#28
	db #29,#2b,#2d,#2f,#30,#32,#8b,#8b
	db #30,#30,#8b,#2f,#2f,#8b,#8b,#8b
	db #8b,#8b,#8b,#8b,#8b,#2f,#8b,#30
	db #2d,#8b,#28,#2f,#8b,#30,#28,#8b
	db #8b,#2f,#8b,#30,#8b,#24,#8b,#8b
	db #8b,#8b,#26,#28,#24,#26,#8b,#8b
.l6cef equ $ + 6
	db #28,#29,#2b,#2d,#2b,#95,#df,#11
.l6cf8 equ $ + 7
	db #15,#16,#a7,#88,#e0,#8c,#ed,#15
	db #8b,#15,#8b,#15,#8b,#15,#8b,#15
	db #8b,#15,#8b,#15,#8b,#13,#8b,#15
	db #8b,#15,#8b,#15,#8b,#15,#8b,#15
	db #8b,#15,#8b,#15,#8b,#13,#23,#11
	db #8b,#11,#8b,#11,#8b,#11,#8b,#10
	db #8b,#10,#8b,#10,#8b,#10,#8b,#15
	db #8b,#15,#8b,#15,#8b,#15,#8b,#15
	db #8b,#15,#8b,#15,#8b,#15,#8b,#95
.l6d39
	db #11,#8b,#11,#8b,#11,#8b,#11,#8b
	db #10,#8b,#10,#8b,#10,#8b,#10,#8b
	db #15,#ef,#8b,#15,#f0,#8b,#15,#f2
	db #8b,#15,#f7,#8b,#df,#13,#1f,#16
.l6d5d equ $ + 4
	db #98,#fe,#15,#95,#df,#00,#1f,#16
.l6d64 equ $ + 3
	db #ec,#a7,#88,#24,#ed,#8b,#21,#8b
	db #24,#8b,#21,#23,#26,#8b,#24,#8b
	db #24,#21,#1f,#8b,#24,#8b,#21,#8b
	db #24,#8b,#21,#23,#26,#8b,#24,#8b
	db #24,#24,#23,#1f,#21,#8b,#1d,#8b
	db #24,#8b,#1d,#8b,#23,#8b,#1c,#8b
	db #23,#8b,#23,#2b,#24,#8b,#21,#8b
	db #24,#8b,#21,#8b,#24,#28,#21,#1f
.l6da6 equ $ + 5
	db #24,#8b,#23,#8b,#95,#21,#8b,#1d
	db #8b,#24,#8b,#1d,#8b,#23,#8b,#1c
	db #8b,#23,#8b,#23,#2b,#24,#ef,#8b
	db #21,#f0,#8b,#24,#f2,#8b,#21,#f7
	db #8b,#df,#00,#1f,#16,#98,#fe,#24
.l6dca equ $ + 1
	db #95,#94,#02,#df,#00,#1f,#16,#a7
.l6dd3 equ $ + 2
	db #ed,#88,#28,#8b,#8b,#24,#2b,#8b
	db #8b,#26,#29,#8b,#28,#8b,#28,#8b
	db #8b,#23,#28,#8b,#8b,#24,#2b,#8b
	db #8b,#26,#29,#8b,#28,#8b,#28,#8b
	db #26,#8b,#24,#8b,#8b,#26,#28,#8b
	db #30,#8b,#2f,#8b,#2b,#8b,#e3,#28
	db #29,#28,#ef,#26,#ed,#28,#8b,#21
	db #8b,#28,#8b,#2f,#8b,#8b,#30,#2d
	db #8b,#8b,#8b,#21,#8b,#26,#8b,#95
.l6e19
	db #24,#8b,#8b,#26,#28,#8b,#30,#8b
	db #2f,#8b,#2b,#8b,#e3,#28,#29,#28
	db #ef,#26,#ed,#28,#8b,#21,#ef,#8b
	db #28,#f0,#8b,#2f,#f2,#8b,#8b,#f4
	db #30,#df,#00,#1f,#16,#e2,#21,#24
	db #28,#2d,#ff,#8b,#8b,#8b,#8d,#8b
.l6e4a equ $ + 1
	db #95,#df,#1c,#1f,#13,#e9,#88,#ac
	db #92,#0a,#8b,#0a,#8b,#8b,#8b,#8b
	db #8b,#0a,#8b,#0a,#8b,#8b,#8b,#8b
	db #8b,#0a,#8b,#0a,#8b,#8b,#8b,#8b
	db #8b,#0a,#8b,#0a,#8b,#8b,#8b,#8b
	db #8b,#0c,#8b,#0c,#8b,#8b,#8b,#8b
	db #8b,#0c,#8b,#0c,#8b,#8b,#8b,#8b
	db #8b,#0a,#8b,#0a,#8b,#8b,#8b,#8b
	db #8b,#0a,#8b,#0a,#8b,#8b,#8b,#8b
.l6e93 equ $ + 2
	db #8b,#95,#df,#00,#1f,#13,#e9,#88
	db #0c,#0c,#9c,#0c,#8b,#0c,#9c,#18
	db #0c,#0c,#9c,#0c,#8b,#0c,#9c,#18
	db #0c,#0c,#9c,#0c,#8b,#0c,#9c,#18
	db #0c,#0c,#9c,#0c,#8b,#0c,#9c,#9c
	db #0e,#0e,#9c,#0e,#8b,#0e,#9c,#1a
	db #0e,#0e,#9c,#0e,#8b,#0e,#9c,#1a
	db #0c,#0c,#9c,#0c,#8b,#0c,#9c,#18
	db #0c,#0c,#9c,#0c,#8b,#0c,#9c,#9c
.l6eda equ $ + 1
	db #95,#df,#00,#1f,#13,#e9,#88,#0e
	db #0e,#9c,#0e,#8b,#0e,#9c,#1a,#0e
	db #0e,#9c,#0e,#8b,#0e,#9c,#1a,#0c
	db #0c,#9c,#0c,#8b,#0c,#9c,#18,#0c
	db #0c,#9c,#0c,#8b,#0c,#9c,#9c,#98
.l6f04 equ $ + 3
	db #fe,#0c,#95,#94,#04,#e9,#df,#00
	db #1f,#1f,#a7,#88,#86,#09,#02,#04
	db #26,#27,#26,#24,#26,#8b,#8b,#8b
	db #26,#27,#26,#24,#26,#29,#29,#2b
	db #26,#27,#26,#24,#26,#8b,#8b,#8b
	db #29,#8b,#29,#29,#2e,#2e,#2d,#8b
	db #24,#27,#2b,#27,#24,#8b,#24,#8b
	db #24,#27,#2b,#27,#24,#8b,#24,#8b
	db #2e,#26,#29,#26,#2e,#8b,#2e,#8b
	db #3a,#8b,#8b,#8b,#8b,#8b,#8b,#8b
.l6f52 equ $ + 1
	db #95,#94,#02,#e9,#df,#00,#1f,#1f
	db #a7,#86,#09,#02,#04,#28,#29,#28
	db #26,#28,#8b,#8b,#8b,#28,#29,#28
	db #26,#28,#2b,#2b,#2d,#28,#29,#28
	db #26,#28,#8b,#8b,#8b,#2b,#8b,#2b
	db #2b,#30,#30,#2f,#8b,#26,#29,#2d
	db #29,#26,#8b,#26,#8b,#26,#29,#2d
	db #29,#26,#8b,#26,#8b,#24,#28,#2b
	db #28,#24,#8b,#24,#8b,#30,#8b,#8b
.l6f9f equ $ + 6
	db #8b,#8b,#8b,#8b,#8b,#95,#26,#29
	db #2d,#26,#8b,#26,#26,#2d,#26,#29
	db #2d,#26,#30,#2f,#2d,#2b,#2d,#8b
	db #8b,#8b,#8b,#8b,#8b,#8b,#2b,#8b
	db #8b,#8b,#29,#2b,#29,#28,#98,#fa
.l6fc3 equ $ + 2
	db #8b,#95,#e9,#dd,#00,#1f,#1f,#82
	db #a7,#88,#86,#09,#01,#04,#32,#33
	db #32,#8b,#8b,#8b,#8b,#8b,#32,#33
	db #32,#8b,#8b,#8b,#8b,#8b,#35,#37
	db #35,#8b,#8b,#8b,#8b,#8b,#35,#37
	db #35,#8b,#8b,#8b,#8b,#8b,#30,#37
	db #30,#8b,#8b,#8b,#8b,#8b,#30,#37
	db #30,#8b,#8b,#8b,#8b,#8b,#3a,#35
	db #46,#3a,#35,#46,#8b,#8b,#3e,#8b
.l7010 equ $ + 7
	db #8b,#8b,#8b,#8b,#8b,#8b,#95,#30
	db #37,#3c,#37,#30,#3c,#30,#3c,#30
	db #37,#3c,#37,#30,#3c,#30,#3c,#34
	db #37,#40,#37,#34,#40,#34,#40,#34
	db #37,#40,#37,#34,#40,#3c,#40,#39
	db #3c,#3b,#39,#8b,#3c,#3b,#39,#35
	db #3c,#3b,#39,#8b,#3c,#3b,#39,#39
	db #8b,#8b,#8b,#8b,#3b,#39,#37,#8b
	db #37,#34,#37,#30,#34,#2b,#30,#95
.l7051
	db #29,#2d,#30,#35,#39,#35,#34,#35
	db #29,#2d,#30,#35,#39,#35,#34,#35
	db #29,#8b,#8b,#8b,#8b,#8b,#8b,#8b
	db #28,#8b,#8b,#8b,#26,#28,#26,#24
	db #98,#f0,#8b,#8d,#8b,#95
.l7077
	dw l51b7,l737f,l7396,l7396
	dw l73ba,l73df,l7401,l7439
	dw l7439,l7476,l74c2,l74c2
	dw l74ef,l74ef,l7511,l74ef
.l709b equ $ + 4
	dw #0000,l7077,l70fd,l7148
	dw l7148,l7189,l71ca,l720b
	dw l724c,l724c,l728d,l72ce
	dw l72ce,l72f2,l72f2,l733b
.l70bd equ $ + 6
	dw l72f2,#0000,l709b,l7776
	dw l7776,l7776,l7776,l7776
	dw l7776,l7776,l7776,l769b
	dw l76c2,l76c2,l76f4,l76f4
	dw l7735,l76f4,l7536,l7584
	dw l7584,l75b5,l75e6,l7617
	dw l765a,l765a,l769b,l76c2
	dw l76c2,l76f4,l76f4,l7735
	dw l76f4,#0000,l70bd
.l70fd
	db #df,#12,#24,#11,#e5,#86,#06,#02
	db #04,#88,#0e,#0e,#1a,#0e,#0e,#1a
	db #0e,#0e,#1a,#0e,#0e,#18,#0e,#0e
	db #1a,#0e,#0e,#0e,#1a,#0e,#0e,#1a
	db #0e,#0e,#1a,#0e,#0e,#18,#0e,#0e
	db #15,#0e,#12,#12,#1e,#12,#12,#1e
	db #12,#12,#1e,#12,#12,#1c,#12,#12
	db #1e,#12,#15,#15,#21,#15,#15,#21
	db #15,#15,#21,#15,#15,#23,#17,#17
.l7148 equ $ + 3
	db #25,#19,#95,#0e,#0e,#1a,#0e,#0e
	db #1a,#0e,#0e,#1a,#0e,#0e,#18,#0e
	db #0e,#1a,#0e,#0e,#0e,#1a,#0e,#0e
	db #1a,#0e,#0e,#1a,#0e,#0e,#18,#0e
	db #0e,#15,#0e,#0e,#0e,#1a,#0e,#0e
	db #1a,#0e,#0e,#11,#11,#1d,#11,#11
	db #1d,#11,#1d,#0c,#0c,#18,#0c,#0c
	db #18,#0c,#0c,#1a,#0e,#0e,#18,#0e
.l7189 equ $ + 4
	db #0e,#1a,#0e,#95,#11,#11,#1d,#11
	db #11,#1d,#11,#11,#1d,#11,#11,#1d
	db #11,#11,#1d,#11,#11,#11,#1d,#11
	db #11,#1d,#11,#11,#1d,#11,#11,#1d
	db #11,#11,#1d,#11,#11,#11,#1d,#11
	db #11,#1d,#11,#11,#15,#15,#21,#15
	db #15,#21,#15,#15,#13,#13,#1f,#13
	db #13,#1f,#13,#13,#1f,#13,#13,#1f
.l71ca equ $ + 5
	db #13,#13,#1f,#13,#95,#15,#15,#21
	db #15,#15,#21,#15,#15,#21,#15,#15
	db #21,#15,#15,#21,#15,#13,#13,#1f
	db #13,#13,#1f,#13,#13,#11,#11,#1d
	db #11,#11,#1d,#17,#18,#11,#11,#1d
	db #11,#11,#1d,#11,#11,#1d,#11,#11
	db #1c,#11,#11,#1d,#11,#0c,#0c,#18
	db #0c,#0c,#18,#0c,#0c,#13,#13,#1f
.l720b equ $ + 6
	db #13,#13,#1f,#13,#1f,#95,#0e,#0e
	db #1a,#0e,#0e,#1a,#0e,#0e,#1a,#0e
	db #0e,#18,#0e,#0e,#1a,#0e,#15,#15
	db #21,#15,#15,#21,#15,#15,#21,#15
	db #15,#1f,#15,#15,#21,#15,#0e,#0e
	db #1a,#0e,#0e,#1a,#0e,#0e,#1a,#0e
	db #0e,#18,#0e,#0e,#1a,#0e,#15,#15
	db #21,#15,#15,#21,#15,#15,#21,#15
.l724c equ $ + 7
	db #15,#1f,#15,#15,#1c,#15,#95,#13
	db #13,#1f,#13,#13,#1f,#13,#13,#1f
	db #13,#13,#1f,#13,#1f,#13,#13,#10
	db #10,#1c,#10,#10,#1c,#10,#10,#1c
	db #10,#10,#1c,#10,#1c,#10,#10,#11
	db #11,#1d,#11,#11,#1d,#11,#11,#1d
	db #11,#11,#1d,#11,#1d,#11,#11,#18
	db #18,#24,#18,#18,#24,#18,#18,#24
	db #18,#18,#24,#18,#24,#18,#18,#95
.l728d
	db #10,#10,#1c,#10,#8c,#10,#10,#1c
	db #10,#1c,#10,#8c,#13,#1f,#13,#8c
	db #10,#10,#1c,#10,#8c,#10,#10,#1c
	db #10,#1c,#10,#8c,#15,#21,#15,#8c
	db #10,#10,#1c,#10,#8c,#10,#10,#1c
	db #10,#1c,#10,#8c,#13,#1f,#13,#8c
	db #10,#10,#1c,#10,#8c,#10,#10,#1c
	db #10,#1c,#10,#8c,#15,#21,#15,#8c
.l72ce equ $ + 1
	db #95,#eb,#b3,#92,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#12,#12
	db #13,#13,#15,#15,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#12,#12
.l72f2 equ $ + 5
	db #13,#13,#15,#15,#95,#eb,#df,#00
	db #14,#11,#81,#06,#15,#b5,#10,#82
	db #10,#b5,#10,#82,#10,#b5,#10,#82
	db #10,#b5,#10,#82,#10,#b5,#10,#82
	db #10,#b5,#10,#82,#10,#b5,#0e,#82
	db #0e,#b5,#0e,#82,#0e,#b5,#10,#82
	db #10,#b5,#10,#82,#10,#b5,#13,#82
	db #13,#b5,#13,#82,#13,#b5,#15,#82
	db #15,#b5,#15,#82,#15,#b5,#10,#82
.l733b equ $ + 6
	db #10,#b5,#10,#82,#10,#95,#b5,#13
	db #82,#13,#b5,#13,#82,#13,#b5,#13
	db #82,#13,#b5,#13,#82,#13,#b5,#13
	db #82,#13,#b5,#13,#82,#13,#b5,#13
	db #82,#13,#b5,#13,#82,#13,#b5,#13
	db #82,#13,#b5,#13,#82,#13,#b5,#17
	db #82,#17,#b5,#17,#82,#17,#b5,#15
	db #82,#15,#b5,#15,#82,#15,#b5,#10
	db #82,#10,#b5,#10,#82,#10,#81,#00
.l737f equ $ + 2
	db #00,#95,#97,#01,#df,#15,#1f,#1f
	db #86,#0c,#02,#04,#88,#82,#98,#30
	db #1a,#1f,#1e,#8b,#1e,#26,#25,#8b
.l7396 equ $ + 1
	db #95,#eb,#ac,#92,#26,#28,#29,#2d
	db #8b,#8b,#8b,#8b,#26,#28,#29,#2b
	db #8b,#8b,#8b,#8b,#26,#28,#29,#2d
	db #8b,#26,#28,#29,#2b,#8b,#2d,#8b
.l73ba equ $ + 5
	db #26,#8b,#8b,#8b,#95,#eb,#29,#2b
	db #2d,#30,#8b,#29,#2b,#2d,#2f,#8b
	db #2b,#8b,#2d,#8b,#e5,#29,#28,#eb
	db #29,#29,#2b,#2d,#30,#8b,#32,#30
	db #2d,#2f,#8b,#32,#8b,#35,#8b,#34
.l73df equ $ + 2
	db #30,#95,#eb,#8b,#8b,#8b,#8b,#8b
	db #32,#30,#2f,#8b,#2d,#2b,#2d,#8b
	db #8b,#8b,#8b,#29,#8b,#8b,#8b,#8b
	db #2b,#29,#28,#8b,#26,#24,#8b,#23
.l7401 equ $ + 4
	db #8b,#8b,#8b,#95,#97,#01,#df,#13
	db #22,#11,#86,#06,#01,#04,#88,#eb
	db #32,#2d,#2a,#32,#2d,#2a,#32,#31
	db #30,#8b,#8b,#8b,#e5,#24,#28,#2b
	db #28,#2b,#30,#34,#37,#eb,#3e,#39
	db #36,#3e,#39,#36,#3e,#3d,#3c,#8b
	db #8b,#8b,#e5,#3c,#37,#34,#30,#2b
.l7439 equ $ + 4
	db #28,#24,#1f,#95,#eb,#2f,#2b,#26
	db #e5,#2f,#2b,#26,#2f,#2b,#26,#2f
	db #2b,#26,#2b,#eb,#2f,#2b,#28,#e5
	db #2f,#2b,#28,#2f,#2b,#28,#2f,#2b
	db #28,#2b,#eb,#2d,#29,#24,#e5,#2d
	db #29,#24,#2d,#29,#24,#2d,#29,#24
	db #29,#eb,#2b,#28,#24,#e5,#2b,#28
	db #24,#2b,#28,#24,#2b,#28,#24,#28
.l7476 equ $ + 1
	db #95,#df,#11,#25,#11,#86,#06,#02
	db #04,#e5,#97,#02,#3b,#37,#34,#37
	db #3b,#37,#34,#37,#3b,#37,#34,#37
	db #3b,#37,#34,#37,#3b,#37,#34,#37
	db #3b,#37,#34,#37,#3b,#37,#34,#37
	db #3c,#39,#34,#37,#3b,#37,#34,#37
	db #3b,#37,#34,#37,#3b,#37,#34,#37
	db #3b,#37,#34,#37,#3b,#37,#34,#37
	db #3b,#37,#34,#37,#3b,#37,#34,#37
.l74c2 equ $ + 5
	db #3c,#39,#34,#39,#95,#97,#01,#df
	db #13,#22,#11,#86,#06,#02,#04,#88
	db #eb,#34,#2f,#2b,#28,#26,#8b,#28
	db #8b,#26,#28,#8b,#26,#2b,#8b,#2d
	db #8b,#34,#2f,#2b,#28,#26,#8b,#28
	db #8b,#26,#28,#8b,#26,#2d,#8b,#2b
.l74ef equ $ + 2
	db #8b,#95,#eb,#28,#2a,#2b,#2f,#8b
	db #8b,#8b,#8b,#28,#2a,#2b,#2d,#8b
	db #8b,#8b,#8b,#28,#2a,#2b,#2f,#8b
	db #28,#2a,#2b,#2d,#8b,#2f,#8b,#28
.l7511 equ $ + 4
	db #8b,#8b,#8b,#95,#eb,#2b,#2d,#2f
	db #32,#8b,#2b,#2d,#2f,#31,#8b,#2d
	db #8b,#2f,#8b,#e5,#2b,#2a,#eb,#2b
	db #2b,#2d,#2f,#32,#8b,#34,#32,#2f
	db #31,#8b,#2d,#8b,#2f,#2b,#2a,#2b
.l7536 equ $ + 1
	db #95,#97,#01,#df,#12,#23,#11,#e5
	db #86,#06,#02,#04,#88,#b5,#9b,#8b
	db #26,#8c,#9d,#8b,#26,#8c,#9b,#8b
	db #24,#8c,#9d,#8b,#9d,#9d,#9b,#8b
	db #26,#8c,#9d,#8b,#26,#8c,#9b,#8b
	db #9d,#8b,#9d,#8b,#9d,#9d,#9b,#8b
	db #2a,#8c,#9d,#8b,#2a,#8c,#9b,#8b
	db #28,#8c,#9d,#8b,#25,#9d,#9b,#8b
	db #2d,#8c,#9d,#8b,#2d,#9d,#9b,#9d
.l7584 equ $ + 7
	db #8b,#9d,#9d,#9d,#9d,#9d,#95,#eb
	db #9b,#2d,#9d,#30,#9b,#2b,#9d,#e5
	db #2d,#9d,#eb,#9b,#2d,#9d,#30,#9b
	db #2b,#9d,#e5,#2d,#9d,#eb,#9b,#2d
	db #9d,#30,#9b,#2d,#9d,#e5,#30,#9d
	db #eb,#9b,#2b,#9d,#e5,#2d,#9d,#9b
	db #9d,#8b,#9d,#9d,#9d,#9d,#9d,#95
.l75b5
	db #eb,#9b,#29,#9d,#29,#9b,#29,#9d
	db #e5,#29,#9d,#eb,#9b,#29,#9d,#29
	db #9b,#29,#9d,#e5,#29,#9d,#eb,#9b
	db #29,#9d,#29,#9b,#2d,#9d,#e5,#2d
	db #9d,#eb,#9b,#2b,#9d,#e5,#2b,#9d
	db #9b,#9d,#2b,#9d,#9d,#9d,#9d,#9d
.l75e6 equ $ + 1
	db #95,#eb,#9b,#2d,#9d,#2d,#9b,#2d
	db #9d,#e5,#2d,#9d,#eb,#9b,#2b,#9d
	db #2b,#9b,#29,#9d,#e5,#29,#9d,#eb
	db #9b,#29,#9d,#29,#9b,#29,#9d,#e5
	db #29,#9d,#eb,#9b,#24,#9d,#e5,#24
	db #9d,#9b,#9d,#2b,#9d,#9d,#9d,#2b
.l7617 equ $ + 2
	db #9d,#95,#97,#00,#9b,#8b,#1e,#8c
	db #9d,#8b,#1e,#8c,#9b,#8b,#1e,#8c
	db #9d,#8b,#1e,#9d,#9b,#8b,#1c,#8c
	db #9d,#8b,#1c,#8c,#9b,#8b,#1c,#8c
	db #9d,#8b,#9d,#9d,#9b,#8b,#1e,#8c
	db #9d,#8b,#1e,#8c,#9b,#8b,#1e,#8c
	db #9d,#8b,#1e,#9d,#9b,#8b,#1c,#8c
	db #9d,#8b,#1c,#9d,#9b,#9d,#8b,#9d
.l765a equ $ + 5
	db #9d,#9d,#9d,#9d,#95,#9b,#8b,#23
	db #8c,#9d,#8b,#23,#8c,#9b,#8b,#23
	db #8c,#9d,#8b,#23,#9d,#9b,#8b,#23
	db #8c,#9d,#8b,#23,#8c,#9b,#8b,#9d
	db #8b,#9d,#8b,#9d,#9d,#9b,#8b,#24
	db #8c,#9d,#8b,#24,#8c,#9b,#8b,#24
	db #8c,#9d,#8b,#24,#9d,#9b,#8b,#24
	db #8c,#9d,#8b,#24,#9d,#9b,#9d,#8b
.l769b equ $ + 6
	db #9d,#9d,#9d,#9d,#9d,#95,#eb,#9d
	db #2f,#9d,#32,#9d,#2d,#9d,#2f,#9d
	db #2f,#9d,#32,#9d,#2d,#9d,#30,#9d
	db #2f,#9d,#32,#9d,#2d,#9d,#2f,#9d
	db #2f,#9d,#32,#9d,#2d,#e5,#9d,#9d
.l76c2 equ $ + 5
	db #30,#9d,#97,#01,#95,#eb,#82,#9b
	db #17,#9d,#17,#9b,#17,#9d,#e5,#17
	db #9d,#eb,#9b,#17,#9d,#19,#9b,#1a
	db #9d,#e5,#1c,#9d,#eb,#9b,#17,#9d
	db #17,#9b,#17,#9d,#e5,#17,#9d,#eb
	db #9b,#17,#9d,#e5,#19,#9d,#9b,#9d
.l76f4 equ $ + 7
	db #1a,#9d,#9d,#9d,#1c,#9d,#95,#9b
	db #10,#17,#10,#9d,#10,#17,#10,#9b
	db #10,#17,#10,#9d,#10,#17,#9d,#9b
	db #10,#17,#10,#9d,#10,#17,#10,#9b
	db #0e,#15,#0e,#9d,#0e,#15,#9d,#9b
	db #10,#17,#10,#9d,#10,#17,#10,#9b
	db #13,#1a,#13,#9d,#13,#1a,#9d,#9b
	db #15,#1c,#15,#9d,#15,#1c,#9d,#9b
	db #9d,#17,#9d,#9d,#9d,#17,#9d,#95
.l7735
	db #9b,#13,#1a,#13,#9d,#13,#1a,#13
	db #9b,#13,#1a,#13,#9d,#13,#1a,#9d
	db #9b,#13,#1a,#13,#9d,#13,#1a,#13
	db #9b,#13,#1a,#13,#9d,#13,#1a,#9d
	db #9b,#13,#1a,#13,#9d,#13,#1a,#13
	db #9b,#17,#1e,#17,#9d,#17,#1e,#9d
	db #9b,#15,#1c,#15,#9d,#15,#1c,#9d
	db #9b,#9d,#17,#9d,#9d,#9d,#17,#9d
.l7776 equ $ + 1
	db #95,#97,#01,#df,#12,#23,#11,#e5
	db #86,#06,#02,#04,#88,#b5,#9b,#8b
	db #8c,#8c,#9d,#8b,#8c,#8c,#9b,#8b
	db #8c,#8c,#9d,#8b,#8c,#9d,#9b,#8b
	db #8c,#8c,#9d,#8b,#8c,#8c,#9b,#8b
	db #9d,#8b,#9d,#8b,#9d,#9d,#9b,#8b
	db #8c,#8c,#9d,#8b,#8c,#8c,#9b,#8b
	db #8c,#8c,#9d,#8b,#8c,#9d,#9b,#8b
	db #8c,#8c,#9d,#8b,#8c,#9d,#9b,#9d
	db #8b,#9d,#9d,#9d,#9d,#9d,#95
;
.l208c		; reallocated by Megachur
;
	push af
	push bc
	ld b,a
	ld a,r
	push af
	ld a,b
	di
	ld b,#f4
	out (c),a
	ld b,#f6
;	ld a,#c0	modified by Megachur
	in a,(c)
	or #c0
;			modified by Megachur
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
	pop af
	jp po,l20b4
	ei
.l20b4
	pop bc
	pop af
	ret
.l23aa
	db #00
.l23ab
	db #05
;
.init_music0		;	#23d7
;
	push de
	push bc
	push hl
	call stop_music
	ld de,l4e07
	call set_channel0
	ld de,l4ded
	call set_channel1
	ld de,l4dd1
	call set_channel2
	pop hl
	pop bc
	pop de
	ret
.init_music1
	push de
	push bc
	push hl
	call stop_music
	ld de,l55ec
	call set_channel0
	ld de,l561c
	call set_channel1
	ld de,l5648
	call set_channel2
	pop hl
	pop bc
	pop de
	ret
.init_music2
	push de
	push bc
	push hl
	call stop_music
	ld de,l7077
	call set_channel0
	ld de,l709b
	call set_channel1
	ld de,l70bd
	call set_channel2
	pop hl
	pop bc
	pop de
	ret
.init_music3
	push de
	push bc
	push hl
	call stop_music
	ld de,l6807
	call set_channel2
	ld de,l6825
	call set_channel1
	ld de,l6843
	call set_channel0
	pop hl
	pop bc
	pop de
	ret
.init_music4
	push de
	push bc
	push hl
	call stop_music
	ld de,l67e9
	call set_channel2
	ld de,l67f3
	call set_channel1
	ld de,l67fd
	call set_channel0
	pop hl
	pop bc
	pop de
	ret
.init_music5
	push de
	push bc
	push hl
	call stop_music
	ld de,l51f2
	call set_channel0
	ld de,l5224
	call set_channel1
	ld de,l51c0
	call set_channel2
	pop hl
	pop bc
	pop de
	ret
.init_music6
	push de
	push bc
	push hl
	call stop_music
	ld de,l67d5
	call set_channel0
	ld de,l67df
	call set_channel1
	ld de,l67cb
	call set_channel2
	pop hl
	pop bc
	pop de
	ret
.init_music7
	push de
	push bc
	push hl
	call stop_music
	ld de,l635b
	call set_channel0
	ld de,l6351
	call set_channel1
	ld de,l6347
	call set_channel2
	pop hl
	pop bc
	pop de
	ret
.init_music8
	push de
	push bc
	push hl
	call stop_music
	ld de,l6500
	call set_channel0
	ld de,l64fa
	call set_channel1
	ld de,l64f4
	call set_channel2
	pop hl
	pop bc
	pop de
	ret
.init_music9
	push de
	push bc
	push hl
	call stop_music
	ld de,l65fd
	call set_channel0
	ld de,l65f3
	call set_channel1
	ld de,l65e9
	call set_channel2
	pop hl
	pop bc
	pop de
	ret
.init_music10
	push de
	push bc
	push hl
	call stop_music
	ld de,l5fff
	call set_channel0
	ld de,l5fe9
	call set_channel1
	ld de,l5fd3
	call set_channel2
	pop hl
	pop bc
	pop de
	ret
.init_music11
	push de
	push bc
	push hl
	call stop_music
	ld de,l5d40
	call set_channel0
	ld de,l5d4c
	call set_channel1
	ld de,l5d56
	call set_channel2
	pop hl
	pop bc
	pop de
	ret
.init_music12
	push de
	push bc
	push hl
	call stop_music
	ld de,l61eb
	call set_channel0
	ld de,l61e5
	call set_channel1
	ld de,l61df
	call set_channel2
	pop hl
	pop bc
	pop de
	ret
;
.init_music_table
;
	dw init_music0,init_music1,init_music2,init_music3,init_music4,init_music5      ; added by Megachur
	dw init_music6,init_music7,init_music8,init_music9,init_music10                 ; added by Megachur
	dw init_music11,init_music12                                                    ; added by Megachur
;
.music_info
	db "Light Corridor (1990)(Infogrames)(Joe Mc Alby)",0
	db "All levels music merged by Megachur",0

	read "music_end.asm"
