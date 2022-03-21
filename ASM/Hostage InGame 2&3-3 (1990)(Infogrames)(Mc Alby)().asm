; Music of Hostage InGame 2&3-3 (1990)(Infogrames)(Mc Alby)()
; Ripped by Megachur the 19/01/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HOSTAGI2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #5da6
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

	jp l5db2	; init music
	jp l5e45	; play music
	jp l5ebf	; stop music
	jp l5e00	; sound fx
;
.init_music
.l5db2
;
	add a
	add a
	add a
	add l68e1
	ld e,a
	adc l68e1/#100
	sub e
	ld d,a
	push de
	call l5ebf
	pop de
	ld a,(de)
	inc de
	ld (l5e65),a
	ld h,#62
	call l5dda
	call l5dda
	call l5dda
	ld a,#01
	ld (l5e49),a
	ld (l5f3d),a
	ret
.l5dda
	ld l,#05
	ld (hl),#01
	dec l
	xor a
	ld (hl),a
	ld l,#07
	ld (hl),a
	ld l,#09
	ld (hl),a
	ld l,#15
	ld (hl),a
	ld a,(de)
	inc de
	ld c,a
	ld a,(de)
	inc de
	ld b,a
	ld l,#02
	ld a,(bc)
	ld (hl),a
	inc bc
	inc l
	ld a,(bc)
	ld (hl),a
	inc bc
	ld l,#00
	ld (hl),c
	inc l
	ld (hl),b
	inc h
	ret
.l5e01 equ $ + 1
.l5e00
	ld l,#00
	inc l
	dec l
	jr z,l5e0c
	cp l
	jr z,l5e14
	jr nc,l5e14
	ret
.l5e0c
	push af
	ld a,(l5f2d)
	ld (l6055),a
	pop af
.l5e14
	ld (l5e01),a
	add a
	add #c0
	ld l,a
	adc #68
	sub l
	ld h,a
	ld de,l6502
	ldi
	ex de,hl
	ld a,(de)
	ld (hl),a
	ld d,a
	dec l
	ld e,(hl)
	xor a
	ld l,#04
	ld (hl),a
	ld l,#15
	ld (hl),a
	ld l,#16
	ld (hl),#01
	jp l5f78
.l5e38
	ld a,(l5e01)
	or a
	ret z
	call l5ed5
	ld h,#65
	jp l5e87
;
.play_music
.l5e45
;
	call l5ee6
.l5e49 equ $ + 1
	ld a,#00
	or a
	jr z,l5e38
	ld hl,l5f3d
	dec (hl)
	ld h,#62
	call l5ef7
	inc h
	call l5ef7
	inc h
	call l5ef7
	ld a,(l5f3d)
	or a
	jr nz,l5e69
.l5e65 equ $ + 1
	ld a,#01
	ld (l5f3d),a
.l5e69
	ld a,(l5e49)
	or a
	jr z,l5e38
	ld a,(l5e01)
	or a
	jr nz,l5e7a
	ld a,#64
	ld (l5e86),a
.l5e7a
	call l5ed5
	ld h,#62
	call l5e87
	call l5e87
.l5e86 equ $ + 1
	ld h,#64
.l5e87
	ld l,#06
	ld a,(hl)
	inc hl
	ld e,(hl)
	inc hl
	call l0daa
	ld a,(hl)
	inc hl
	ld e,(hl)
	inc hl
	call l0daa
	ld a,(hl)
	inc hl
	ld (l5eb8),a
	ld b,l
	ld l,#33
	ld a,(hl)
	and a
	jr z,l5ead
	ld l,#2e
	ld a,(hl)
	and #0f
	jr z,l5ead
	ld l,b
	jr l5eaf
.l5ead
	ld l,b
	ld a,(hl)
.l5eaf
	push af
	ld a,(l68af)
	ld d,a
	pop af
	sub d
	ld e,a
.l5eb8 equ $ + 1
	ld a,#00
	call l0daa
	inc hl
	inc h
	ret
;
.stop_music
.l5ebf
;
	xor a
	ld (l5e49),a
	ld (l5e01),a
	ld (l65d1),a
	ld a,#bf
	ld (l5f2d),a
	ld e,a
	ld a,#07
	call l0daa
	ret
.l5ed5
	ld a,#06
.l5ed8 equ $ + 1
	ld e,#01
	call l0daa
	ld a,(l5f2d)
	ld e,a
	ld a,#07
	call l0daa
	ret
.l5ee6
	ld a,(l5e01)
	or a
	ret z
	ld hl,l6502
	ld a,h
	ld (l5e86),a
	ld e,(hl)
	inc l
	ld d,(hl)
	jr l5f41
.l5ef7
	ld l,#2e
	ld a,(hl)
	and a
	jr z,l5f2a
	inc l
	ld e,(hl)
	inc l
	ld d,(hl)
	inc l
	ld a,(hl)
	add e
	ld e,a
	adc d
	sub e
	ld d,a
	ld a,(de)
	cp #80
	jr nz,l5f11
	xor a
	ld (hl),a
	jr l5ef7
.l5f11
	inc (hl)
	and a
	jr nz,l5f1e
	call l653d
	ld l,#33
	ld (hl),#00
	jr l5f37
.l5f1e
	ld (l5ed8),a
	call l6566
	ld l,#33
	ld (hl),#01
	jr l5f37
.l5f2a
	ld l,#20
.l5f2d equ $ + 1
	ld a,#00
	and (hl)
	jr nz,l5f37
	ld l,#07
	ld a,(hl)
	ld (l5ed8),a
.l5f37
	ld l,#02
	ld e,(hl)
	inc l
	ld d,(hl)
.l5f3d equ $ + 1
	ld a,#00
	or a
	jr nz,l5f4c
.l5f41
	ld l,#05
	dec (hl)
	jr z,l5f78
	call l65aa
	call l6031
.l5f4c
	call l679a
	call l6716
	call l670f
	call l674a
	call l65b5
	call l66ed
	ld l,#04
	bit 5,(hl)
	ret z
	ld a,r
	and #07
	ld c,a
	ld l,#07
	ld a,(l6207)
	add c
	ld (hl),a
	ld a,(l6209)
	ld l,#09
	ld (hl),a
	ret nc
	inc (hl)
	ret
.l5f78
	ld a,(de)
	inc de
	or a
	jp m,l5fb6
	ld l,#0c
	ld (hl),a
	ld l,#02
	ld (hl),e
	inc l
	ld (hl),d
	call l65d0
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
	call l5fa6
	inc l
.l5fa6
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
.l5fb6
	cp #e0
	jr nc,l5fde
	cp #d0
	jr nc,l5fee
	cp #c0
	jr nc,l5fe6
	cp #b0
	jr nc,l6015
	ld c,h
	add a
	add #09
	ld l,a
	adc #66
	sub l
	ld h,a
	ld a,c
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld h,a
	ld (l5fd9),bc
.l5fd9 equ $ + 1
	call #0000
	jp l5f78
.l5fde
	sub #df
	ld l,#0d
	ld (hl),a
	jp l5f78
.l5fe6
	sub #c0
	ld l,#14
	ld (hl),a
	jp l5f78
.l5fee
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
	jp l5f78
.l6015
	sub #b0
	add a
	add #bb
	ld c,a
	adc #68
	sub c
	ld b,a
	ld a,(bc)
	ld l,#21
	ld (hl),a
	inc l
	inc bc
	ld a,(bc)
	ld (hl),a
	inc l
	ld (hl),#00
	ld l,#04
	set 0,(hl)
	jp l5f78
.l6031
	ld l,#16
	ld a,(hl)
	ld l,#05
	cp (hl)
	ret nz
	ld a,(de)
	cp #8e
	ret z
	ld l,#18
	ld (hl),#01
	ld l,#15
	ld (hl),#00
	ld l,#04
	res 1,(hl)
	ret
.l6049
	pop af
	xor a
	ld (l5e01),a
	ld a,(l5f2d)
	and #db
	ld c,a
.l6055 equ $ + 1
	ld a,#00
	and #e4
	or c
	ld (l5f2d),a
	ld a,(l5e49)
	or a
	ret nz
	ld a,(l5f2d)
	or #24
	ld (l5f2d),a
	jp l5ed5
.l606c
	ld l,#15
	ld (hl),#00
	ret
.l6071
	push af
	ld a,(de)
	ld (l68b1),a
	inc de
	pop af
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
	db #00,#00,#00,#00,#00,#00,#00,#30
	db #f0,#a0,#50,#50,#50,#00,#00,#a0
	db #a0,#80,#a1,#f0,#3c,#f3,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#fc,#f1
	db #fe,#f0,#f0,#f0,#f0,#f0,#f0,#f0
	db #80,#30,#f0,#f0,#f0,#f0,#f0,#b4
	db #87,#f0,#3c,#ff,#ff,#ff,#ff,#fc
	db #f0,#f0,#f0,#fe,#f0,#d2,#f0,#78
	db #0f,#0f,#0f,#0f,#2d,#78,#e1,#50
	db #00,#70,#d0,#50,#00,#50,#50,#a0
	db #81,#f0,#b4,#f1,#ff,#f8,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f1,#ff,#ff
	db #ff,#ff,#ff,#f0,#f0,#e0,#f0,#80
	db #00,#10,#f0,#d0,#f0,#f0,#f0,#b4
	db #a5,#c3,#f0,#ff,#ff,#fc,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#a5,#b4,#e1
	db #78,#87,#0f,#1e,#e1,#78,#b4,#50
	db #50,#50,#70,#a0,#a0,#00,#21,#f0
	db #e1,#78,#f0,#ff,#fc,#f0,#f0,#f0
	db #f0,#f6,#f0,#f0,#f0,#f0,#f0,#ff
	db #ff,#ff,#ff,#fc,#f0,#e0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#f0,#87
	db #1e,#f2,#f0,#f0,#f0,#ff,#fc,#f0
	db #f0,#f0,#f0,#f0,#f0,#d2,#87,#f0
	db #f0,#f0,#f0,#f0,#f0,#f0,#69,#0a
	db #0a,#0a,#0a,#0a,#0a,#1a,#c2,#0a
	db #0a,#1a,#f0,#f0,#f0,#ff,#ff,#ff
	db #fe,#f8,#f0,#f0,#10,#f3,#ff,#ff
	db #ff,#ff,#fc,#f0,#f0,#d0,#f0,#f0
	db #b0,#f0,#f0,#f0,#f0,#f0,#f0,#a5
	db #2d,#f0,#f3,#ff,#ff,#f0,#f0,#f0
	db #f0,#f0,#f0,#f0,#f0,#3c,#f0,#f0
	db #f0,#f0,#f0,#f0,#5a,#e1,#f0
.l6207 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6209 equ $ + 1
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6502 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#04,#00
	db #05,#00,#0a,#0f,#00,#04,#00,#00
	db #00,#00,#00,#00,#0f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#04
	db #20,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6538
	ld l,#04
	res 2,(hl)
	ret
.l653d
	call l6591
	ld l,#1f
.l6542
	ld a,(hl)
.l6543
	cpl
	and c
	ld c,a
	ld l,#04
	res 4,(hl)
	ld a,h
	cp #64
	jr z,l6554
.l654f
	ld a,c
	ld (l5f2d),a
	ret
.l6554
	ld a,(l5e01)
	or a
	jr z,l654f
	ld a,c
	ld (l6055),a
	ret
.l655f
	call l6591
	ld l,#20
	jr l6542
.l6566
	call l6591
	ld l,#1f
	ld a,(hl)
	inc l
	or (hl)
	jr l6543
.l6570
	call l6591
	ld l,#20
	ld a,(hl)
	cpl
	and c
	ld (l5f2d),a
	ld l,#04
	set 4,(hl)
	ret
.l6580
	ld l,#0b
	ld (hl),#00
.l6584
	pop af
	ld l,#0d
	ld a,(hl)
	ld l,#05
	ld (hl),a
	ld l,#02
	ld (hl),e
	inc l
	ld (hl),d
	ret
.l6591
	ld a,(l5f2d)
	ld l,#1f
	or (hl)
	inc l
	or (hl)
	ld c,a
	ret
.l659b
	ld a,(de)
	ld (l68af),a
	inc de
	ret
.l65a1
	ld l,#15
	push af
	ld a,(l68b1)
	ld (hl),a
	pop af
	ret
.l65aa
	ld l,#15
	ld a,(hl)
	or a
	ret z
	ld l,#0c
	add (hl)
	ld (hl),a
	jr l65d0
.l65b5
	ld l,#04
	bit 0,(hl)
	ret z
	ld l,#21
	ld a,(hl)
	inc l
	ld b,(hl)
	inc l
	add (hl)
	ld c,a
	jr nc,l65c5
	inc b
.l65c5
	inc (hl)
	ld a,(bc)
	or a
	jp p,l65cd
	ld (hl),#00
.l65cd
	ld l,#0c
	add (hl)
.l65d1 equ $ + 1
.l65d0
	add #00
	add a
	add #ef
	ld c,a
	adc #67
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
	pop de
	ld l,#29
	ld a,(hl)
	ld l,#26
	ld (hl),a
	ret
.l6603
	ld a,(de)
	ld (l65d1),a
	inc de
	ret
	dw l66cd,l659b,l65a1,l6681
	dw l669a,l669f,l66ae,l6538
	dw l666b,l670a,l653d,l655f
	dw l6566,l6570,l6584,l6580
	dw l6603,l5ebf,l6700,l6705
	dw l66c5,l6049,l6071,l606c
	dw l663b
.l663b
	ld l,#2e
	ld a,(de)
	ld (hl),a
	inc de
	and a
	jr nz,l6647
	call l653d
	ret
.l6647
	push af
	call l6566
	pop af
	push af
	and #f0
	rrca
	rrca
	rrca
	rrca
	dec a
	add a
	add #b2
	ld c,a
	adc #68
	sub c
	ld b,a
	ld a,(bc)
	ld l,#2f
	ld (hl),a
	inc l
	inc bc
	ld a,(bc)
	ld (hl),a
	inc l
	ld (hl),#00
	pop af
	inc l
	ld (hl),a
	ret
.l666b
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
	nop
	nop
	nop
.l6681
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
.l669a
	ld l,#04
	res 0,(hl)
	ret
.l669f
	ex de,hl
	ld e,#24
	ldi
	ldi
	ldi
	ex de,hl
	ld l,#04
	set 1,(hl)
	ret
.l66ae
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
.l66c5
	ld l,#00
	ex de,hl
	ldi
	ldi
	ex de,hl
.l66cd
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
	jr z,l66e4
	ld (hl),b
	dec l
	ld (hl),c
	inc l
	inc l
	ld (hl),e
	inc l
	ld (hl),d
	ret
.l66e4
	ld d,b		; end music -> reset
	ld e,c
	pop bc
	ld a,(l68b0)
	jp l5fb6
.l66ed
	ld l,#04
	bit 4,(hl)
	ret z
	ld l,#1f
	ld a,(hl)
	inc l
	or (hl)
	ld c,a
	ld a,(l5f2d)
	xor c
	ld (l5f2d),a
	ret
.l6700
	ld l,#04
	set 5,(hl)
	ret
.l6705
	ld l,#04
	res 5,(hl)
	ret
.l670a
	ld l,#04
	res 3,(hl)
	ret
.l670f
	ld l,#04
	bit 2,(hl)
	jr nz,l671b
	ret
.l6716
	ld l,#04
	bit 1,(hl)
	ret z
.l671b
	ld l,#26
	dec (hl)
	jp m,l67ed
	ld l,#25
	bit 7,(hl)
	jr nz,l6736
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
.l6736
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
.l674a
	dec de
	ld a,(de)
	inc de
	cp #8e
	jr z,l675b
	ld l,#0d
	ld a,(hl)
	ld l,#2a
	sub (hl)
	ld l,#05
	cp (hl)
	ret c
.l675b
	ld l,#04
	bit 3,(hl)
	ret z
	bit 6,(hl)
	jr z,l677e
	ld l,#2c
	dec (hl)
	jr nz,l6772
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	res 6,(hl)
	ret
.l6772
	ld l,#2b
	ld a,(hl)
	ld l,#07
	add (hl)
	ld (hl),a
	ret nc
	ld l,#09
	inc (hl)
	ret
.l677e
	ld l,#2c
	dec (hl)
	jr nz,l678c
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	set 6,(hl)
	ret
.l678c
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
.l679a
	ld l,#0f
	ld a,(hl)
	or a
	jr z,l67b5
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
	ret nc
	ld (hl),a
	ret
.l67b5
	ld l,#12
	ld a,(hl)
	or a
	jr z,l67d3
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
	jr nc,l67cf
	xor a
.l67cf
	ld l,#0b
	ld (hl),a
	ret
.l67d3
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
	jr nc,l67e9
	xor a
.l67e9
	ld l,#0b
	ld (hl),a
	ret
.l67ed
	inc (hl)
	ret
	dw #077c,#0710,#06ab,#064b
	dw #05f0,#059b,#054b,#04ff
	dw #04b7,#0473,#0433,#03f6
	dw #03be,#0388,#0355,#0325
	dw #02f8,#02cd,#02a5,#027f
	dw #025b,#0239,#0219,#01fb
	dw #01df,#01c4,#01aa,#0193
	dw #017c,#0167,#0152,#013f
	dw #012e,#011d,#010d,#00fd
	dw #00ef,#00e2,#00d5,#00c9
	dw #00be,#00b3,#00a9,#00a0
	dw #0097,#008e,#0086,#007f
	dw #0078,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#002d,#002a,#0028
	dw #0025,#0023,#0021,#001f
	dw #001e,#001c,#001a,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
	dw #000f,#000e,#000d,#000c
	dw #000c,#000b,#000a,#000a
	dw #0009,#0009,#0008,#0008
.l68af
	db #00
.l68b1 equ $ + 1
.l68b0
	db #94,#ff
	dw l68b4
.l68b4
	db #05,#00,#00,#00,#00,#00,#80
	dw l68bd
.l68bd
	db #0c,#00,#00,#00,#80
	dw l68d6,l68c6
.l68c6
	db #8a,#df,#00,#1f,#12,#88,#01,#28
	db #05,#e5,#30,#8e,#8e,#8e,#8e,#95
.l68d6
	db #84,#8c,#82,#dc,#1b,#18,#11,#ef
	db #30,#8e,#95
.l68e1
	db #01
	dw l692b,l6915,l6945
	db #03,#01
	dw l68fd,l68f1,l6909
	db #03
.l68f1
	dw l7138,l6d28,l6e23,l6e23
.l68fd equ $ + 4
	dw #0000,l68f1,l7138,l6e8b
	dw l6f5c,l6f5c,#0000,l68fd
.l6909
	dw l7138,l6fb4,l713b,l713b
.l6915 equ $ + 4
	dw #0000,l6909,l7138,l6a96
	dw l695d,l695d,l69a8,l695d
	dw l695d,l69a8,l6a4d,#0000
.l692b equ $ + 2
	dw l6915,l7138,l6d25,l6a26
	dw l6a26,l6a26,l6a26,l6b67
	dw l6a26,l6a26,l6b67,l6abe
.l6945 equ $ + 4
	dw #0000,l692b,l7138,l6bc5
	dw l6bc5,l6bc5,l6bc5,l6c33
	dw l6bec,l6bec,l6c9c,l6b06
	dw #0000,l6945
.l695d
	db #dc,#00,#17,#11,#e5,#81,#00,#98
	db #10,#20,#1e,#8a,#2a,#8f,#2a,#2c
	db #8f,#2a,#2d,#8f,#2d,#8f,#2d,#2c
	db #8f,#28,#25,#23,#2a,#8f,#2a,#2c
	db #8f,#2a,#2d,#8f,#2d,#8f,#2d,#2c
	db #8f,#28,#25,#23,#25,#8f,#25,#27
	db #8f,#25,#28,#8f,#28,#8f,#28,#27
	db #8f,#23,#20,#1e,#25,#8f,#25,#27
	db #8f,#25,#28,#8f,#28,#8f,#28,#27
.l69a8 equ $ + 3
	db #8f,#23,#80,#dc,#00,#1f,#11,#e5
	db #8a,#20,#1e,#21,#8f,#21,#23,#8f
	db #21,#25,#8f,#25,#8f,#25,#23,#8f
	db #21,#1e,#1c,#23,#8f,#23,#25,#8f
	db #23,#27,#8f,#27,#8f,#27,#25,#8f
	db #23,#20,#1e,#25,#8f,#25,#27,#8f
	db #25,#28,#8f,#28,#8f,#28,#27,#8f
	db #23,#20,#1e,#25,#8f,#25,#27,#8f
	db #25,#28,#8f,#cf,#2c,#2c,#28,#28
	db #25,#25,#25,#25,#25,#23,#20,#1c
	db #19,#19,#25,#25,#19,#19,#25,#25
	db #19,#19,#25,#25,#25,#20,#1c,#1b
	db #1a,#1a,#26,#26,#1a,#1a,#26,#26
	db #1a,#1a,#26,#26,#26,#21,#1e,#1c
	db #1b,#1b,#27,#27,#1b,#1b,#27,#27
	db #1c,#1c,#28,#28,#1d,#1d,#29,#29
.l6a26 equ $ + 1
	db #80,#df,#11,#1a,#11,#eb,#8a,#12
	db #8f,#12,#8f,#12,#8f,#12,#8f,#12
	db #8f,#12,#8f,#12,#8f,#10,#8f,#0d
	db #8f,#0d,#8f,#0d,#8f,#0d,#8f,#0d
	db #8f,#0d,#8f,#0d,#8f,#10,#8f,#80
.l6a4d
	db #df,#11,#1a,#11,#eb,#92,#8f,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#8f,#93
.l6a96 equ $ + 1
	db #80,#df,#11,#1a,#11,#f7,#92,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #8f,#8f,#8f,#8f,#8f,#8f,#8f,#93
.l6abe equ $ + 1
	db #80,#da,#11,#1a,#11,#eb,#8a,#06
	db #06,#8f,#8f,#06,#06,#8f,#8f,#06
	db #06,#8f,#8f,#06,#06,#8f,#8f,#06
	db #06,#8f,#8f,#06,#06,#8f,#8f,#06
	db #06,#8f,#8f,#06,#06,#8f,#8f,#12
	db #12,#8f,#8f,#12,#12,#8f,#8f,#12
	db #12,#8f,#8f,#12,#12,#8f,#8f,#12
	db #12,#8f,#8f,#12,#12,#8f,#8f,#12
	db #12,#8f,#8f,#12,#12,#8f,#8f,#8f
.l6b06 equ $ + 1
	db #80,#d8,#11,#1a,#11,#eb,#8a,#96
	db #fe,#82,#8a,#1e,#1e,#8f,#8f,#1e
	db #1e,#8f,#8f,#1e,#1e,#8f,#8f,#1e
	db #1e,#8f,#8f,#1e,#1e,#97,#06,#06
	db #82,#1e,#1e,#97,#06,#06,#82,#1e
	db #1e,#97,#06,#06,#82,#1e,#1e,#97
	db #06,#06,#1e,#1e,#97,#12,#12,#82
	db #1e,#1e,#97,#12,#12,#82,#1e,#1e
	db #97,#12,#12,#82,#1e,#1e,#97,#12
	db #12,#1e,#1e,#97,#12,#12,#82,#1e
	db #1e,#97,#12,#12,#82,#1e,#1e,#97
	db #12,#12,#82,#1e,#1e,#97,#12,#12
.l6b67 equ $ + 2
	db #12,#80,#df,#11,#1a,#11,#eb,#8a
	db #09,#8f,#09,#8f,#09,#8f,#09,#8f
	db #0b,#8f,#0b,#8f,#0b,#8f,#0b,#8f
	db #0d,#8f,#0d,#8f,#0d,#8f,#0d,#8f
	db #0d,#8f,#0d,#8f,#0d,#8f,#0d,#8f
	db #e5,#19,#19,#19,#17,#14,#10,#0d
	db #0d,#19,#19,#0d,#0d,#19,#19,#0d
	db #8f,#19,#19,#19,#14,#10,#0f,#0e
	db #0e,#1a,#1a,#0e,#0e,#1a,#1a,#0e
	db #8f,#1a,#1a,#1a,#15,#12,#10,#0f
	db #0f,#1b,#1b,#0f,#0f,#1b,#1b,#10
	db #10,#1c,#1c,#11,#11,#1d,#1d,#80
.l6bc5
	db #dc,#11,#26,#11,#eb,#8a,#8f,#12
	db #8f,#12,#8f,#12,#8f,#12,#8f,#12
	db #8f,#12,#8f,#12,#8f,#10,#8f,#0d
	db #8f,#0d,#8f,#0d,#8f,#0d,#8f,#0d
.l6bec equ $ + 7
	db #8f,#0d,#8f,#0d,#8f,#10,#80,#dc
	db #11,#2f,#11,#e5,#8a,#1e,#19,#1e
	db #19,#1e,#19,#1e,#19,#1e,#19,#1e
	db #19,#1e,#19,#1e,#19,#1e,#19,#1e
	db #19,#1e,#19,#1e,#19,#1e,#19,#1e
	db #19,#1e,#19,#1c,#19,#19,#14,#19
	db #14,#19,#14,#19,#14,#19,#14,#19
	db #14,#19,#14,#19,#14,#19,#14,#19
	db #14,#19,#14,#19,#14,#19,#14,#19
.l6c33 equ $ + 6
	db #14,#19,#14,#1c,#14,#80,#de,#11
	db #26,#11,#eb,#8a,#8f,#09,#8f,#09
	db #8f,#09,#8f,#09,#8f,#0b,#8f,#0b
	db #8f,#0b,#8f,#0b,#8f,#0d,#8f,#0d
	db #8f,#0d,#8f,#0d,#8f,#0d,#8f,#0d
	db #8f,#0d,#8f,#0d,#dd,#00,#1f,#11
	db #8a,#96,#ff,#e5,#82,#8c,#21,#8e
	db #8e,#8e,#21,#8e,#8e,#8e,#21,#8e
	db #8e,#8e,#21,#8e,#21,#21,#21,#21
	db #21,#8e,#21,#8e,#8e,#8e,#21,#8e
	db #8e,#8e,#21,#8e,#21,#21,#21,#21
	db #21,#8e,#21,#8e,#8e,#8e,#21,#8e
	db #8e,#8e,#21,#8e,#21,#21,#21,#21
.l6c9c equ $ + 7
	db #21,#21,#21,#21,#8a,#97,#80,#de
	db #11,#26,#11,#e5,#8a,#15,#09,#15
	db #09,#15,#09,#15,#09,#15,#15,#09
	db #15,#09,#15,#09,#15,#09,#15,#0b
	db #17,#0b,#17,#0b,#17,#0b,#17,#0b
	db #17,#0b,#17,#0b,#17,#0b,#17,#0d
	db #19,#0d,#19,#0d,#19,#0d,#19,#0d
	db #19,#0d,#19,#0d,#19,#0d,#19,#0d
	db #19,#0d,#19,#0d,#19,#0d,#19,#0d
	db #19,#0d,#19,#0d,#19,#dd,#00,#1f
	db #11,#8a,#96,#ff,#e5,#82,#8c,#21
	db #8e,#8e,#8e,#21,#8e,#8e,#8e,#21
	db #8e,#8e,#8e,#21,#8e,#21,#21,#21
	db #21,#21,#8e,#21,#8e,#8e,#8e,#21
	db #8e,#8e,#8e,#21,#8e,#21,#21,#21
	db #21,#21,#8e,#21,#8e,#8e,#8e,#21
	db #8e,#8e,#8e,#21,#8e,#21,#21,#21
	db #21,#21,#21,#21,#21,#8a,#97,#80
.l6d28 equ $ + 3
.l6d25
	db #90,#02,#80,#90,#00,#df,#11,#18
	db #11,#e5,#8a,#96,#fe,#13,#8e,#11
	db #8e,#13,#cd,#8e,#11,#8e,#ca,#13
	db #8e,#11,#8e,#13,#8e,#11,#8e,#cf
	db #15,#8e,#13,#8e,#15,#cd,#8e,#13
	db #8e,#ca,#15,#8e,#13,#8e,#15,#8e
	db #13,#8e,#cf,#13,#8e,#11,#8e,#13
	db #cd,#8e,#11,#8e,#ca,#13,#8e,#11
	db #8e,#13,#8e,#11,#8e,#cf,#15,#8e
	db #13,#8e,#15,#cd,#8e,#13,#8e,#ca
	db #15,#8e,#13,#8e,#15,#8e,#13,#8e
	db #cf,#18,#8e,#8e,#1a,#8e,#8e,#1d
	db #8e,#1c,#8e,#8e,#18,#8e,#15,#13
	db #8e,#8c,#82,#23,#8e,#8f,#8f,#23
	db #8e,#23,#8e,#8f,#8f,#23,#23,#1f
	db #8e,#8f,#8f,#8a,#97,#1a,#8e,#8e
	db #1c,#8e,#8e,#1f,#8e,#1e,#8e,#8e
	db #1a,#8e,#17,#15,#8e,#8c,#82,#21
	db #8e,#8f,#8f,#21,#8e,#21,#8e,#8f
	db #8f,#21,#21,#21,#8e,#8f,#8f,#8a
	db #97,#1c,#8e,#8e,#1e,#8e,#8e,#21
	db #8e,#20,#8e,#8e,#17,#8e,#8e,#19
	db #8e,#1f,#1d,#8e,#1c,#8c,#82,#21
	db #97,#8a,#8e,#1a,#1f,#8e,#1d,#8e
	db #1c,#8c,#82,#21,#97,#8a,#1a,#8c
	db #82,#21,#21,#97,#8a,#18,#8e,#8e
	db #1a,#8c,#82,#21,#97,#8a,#8f,#1f
	db #8e,#8e,#8e,#1d,#1c,#8c,#82,#21
	db #97,#8a,#8f,#8e,#18,#1a,#8e,#1f
	db #8e,#8c,#82,#21,#97,#8a,#1d,#1c
	db #8e,#1a,#8e,#18,#8e,#8c,#82,#21
.l6e23 equ $ + 6
	db #97,#8a,#8f,#13,#8e,#80,#df,#11
	db #18,#11,#e5,#8a,#15,#8e,#15,#8e
	db #8c,#82,#21,#97,#8a,#8f,#15,#8e
	db #15,#8e,#15,#8e,#8c,#82,#21,#97
	db #8a,#8f,#15,#8e,#17,#8e,#17,#8e
	db #8c,#82,#21,#97,#8a,#8f,#17,#8e
	db #17,#17,#17,#8e,#8c,#82,#21,#97
	db #8a,#8f,#17,#8e,#15,#8e,#15,#8e
	db #8c,#82,#21,#97,#8a,#8f,#15,#8e
	db #15,#8e,#15,#8e,#8c,#82,#21,#97
	db #8a,#8f,#15,#8e,#17,#8e,#17,#8e
	db #8c,#82,#21,#97,#8a,#8f,#17,#8e
	db #17,#8e,#17,#8e,#8c,#82,#21,#97
.l6e8b equ $ + 6
	db #8a,#8f,#17,#8e,#84,#80,#d9,#11
	db #1f,#13,#e5,#8a,#88,#05,#01,#08
	db #98,#10,#2b,#8e,#29,#8e,#2b,#8e
	db #29,#8e,#2b,#8e,#29,#8e,#2b,#8e
	db #29,#8e,#2d,#8e,#2b,#8e,#2d,#8e
	db #2b,#8e,#2d,#8e,#2b,#8e,#2d,#8e
	db #2b,#8e,#2b,#8e,#29,#8e,#2b,#8e
	db #29,#8e,#2b,#8e,#29,#8e,#2b,#8e
	db #29,#8e,#2d,#8e,#2b,#8e,#2d,#8e
	db #2b,#8e,#2d,#8e,#2b,#8e,#2d,#8e
	db #2b,#8e,#2b,#8e,#29,#8e,#2b,#8e
	db #29,#8e,#2b,#8e,#29,#8e,#2b,#8e
	db #29,#8e,#2b,#8e,#29,#8e,#2b,#8e
	db #29,#8e,#2b,#8e,#29,#8e,#2b,#8e
	db #29,#8e,#2d,#8e,#2b,#8e,#2d,#8e
	db #2b,#8e,#2d,#8e,#2b,#8e,#2d,#8e
	db #2b,#8e,#2d,#8e,#2b,#8e,#2d,#8e
	db #2b,#8e,#2d,#8e,#2b,#8e,#2d,#8e
	db #2b,#8e,#2f,#8e,#2d,#8e,#2f,#8e
	db #2d,#8e,#2f,#8e,#2d,#8e,#2f,#8e
	db #2d,#8e,#b0,#cc,#37,#35,#8e,#34
	db #8e,#32,#8e,#37,#8e,#35,#8e,#34
	db #8e,#32,#8e,#8e,#cb,#84,#30,#8e
	db #2e,#8e,#30,#8e,#2e,#8e,#30,#8e
	db #2e,#8e,#30,#8e,#2e,#8e,#32,#8e
	db #30,#8e,#32,#8e,#30,#8e,#32,#8e
.l6f5c equ $ + 7
	db #30,#8e,#32,#8e,#30,#8e,#80,#db
	db #11,#1f,#12,#e5,#8a,#cb,#39,#34
	db #2b,#2d,#c9,#39,#34,#2b,#2d,#cb
	db #39,#34,#2b,#2d,#c9,#39,#34,#2b
	db #2d,#cb,#39,#34,#2b,#2d,#c9,#39
	db #34,#2b,#2d,#cb,#39,#34,#2b,#2d
	db #c9,#39,#34,#2b,#2d,#cb,#39,#34
	db #2b,#2d,#c9,#39,#34,#2b,#2d,#cb
	db #39,#34,#2b,#2d,#c9,#39,#34,#2b
	db #2d,#cb,#39,#34,#2b,#2d,#c9,#39
	db #34,#2b,#2d,#cb,#39,#34,#2b,#2d
.l6fb4 equ $ + 7
	db #c9,#39,#34,#2b,#2d,#84,#80,#df
	db #11,#1f,#11,#e5,#8a,#88,#05,#02
	db #08,#82,#cf,#1d,#97,#ca,#32,#8e
	db #2b,#82,#cf,#1d,#97,#ca,#32,#8e
	db #2b,#82,#cf,#1d,#97,#ca,#32,#8e
	db #2b,#82,#cf,#1d,#97,#ca,#32,#8e
	db #2b,#82,#cf,#1d,#97,#ca,#34,#8e
	db #2d,#82,#cf,#1d,#97,#ca,#34,#8e
	db #2d,#82,#cf,#1d,#97,#ca,#34,#8e
	db #2d,#82,#cf,#1d,#97,#ca,#34,#8e
	db #2d,#82,#cf,#1d,#97,#ca,#32,#8e
	db #2b,#82,#cf,#1d,#97,#ca,#32,#8e
	db #2b,#82,#cf,#1d,#97,#ca,#32,#8e
	db #2b,#82,#cf,#1d,#97,#ca,#32,#8e
	db #2b,#82,#cf,#1d,#97,#ca,#34,#8e
	db #2d,#82,#cf,#1d,#97,#ca,#34,#8e
	db #2d,#82,#cf,#1d,#97,#ca,#34,#8e
	db #2d,#82,#cf,#1d,#97,#ca,#34,#8e
	db #2d,#82,#cf,#1d,#97,#ca,#32,#8e
	db #2b,#82,#cf,#1d,#97,#ca,#32,#8e
	db #2b,#82,#cf,#1d,#97,#ca,#32,#8e
	db #2b,#82,#cf,#1d,#97,#ca,#32,#8e
	db #2b,#82,#cf,#1d,#97,#ca,#32,#8e
	db #2b,#82,#cf,#1d,#97,#ca,#32,#8e
	db #2b,#82,#cf,#1d,#97,#ca,#32,#8e
	db #2b,#82,#cf,#1d,#97,#ca,#32,#8e
	db #2b,#82,#cf,#1d,#97,#ca,#34,#8e
	db #2d,#82,#cf,#1d,#97,#ca,#34,#8e
	db #2d,#82,#cf,#1d,#97,#ca,#34,#8e
	db #2d,#82,#cf,#1d,#97,#ca,#34,#8e
	db #2d,#82,#cf,#1d,#97,#ca,#34,#8e
	db #2d,#82,#cf,#1d,#97,#ca,#34,#8e
	db #2d,#82,#cf,#1d,#97,#ca,#34,#8e
	db #2d,#82,#cf,#1d,#97,#ca,#34,#8e
	db #2d,#82,#cf,#1d,#97,#ca,#36,#8e
	db #2f,#82,#cf,#1d,#97,#ca,#36,#8e
	db #2f,#82,#cf,#1d,#97,#ca,#36,#8e
	db #2f,#82,#cf,#1d,#97,#ca,#36,#8e
	db #2f,#ca,#82,#cf,#1d,#1d,#8f,#1d
	db #8f,#1d,#8f,#1d,#8f,#1d,#8f,#1d
	db #8f,#1d,#1d,#1d,#97,#cb,#82,#cf
	db #1d,#97,#cb,#37,#8e,#30,#82,#cf
	db #1d,#97,#cb,#37,#8e,#30,#82,#cf
	db #1d,#97,#cb,#37,#8e,#30,#82,#cf
	db #1d,#97,#cb,#37,#8e,#30,#82,#cf
	db #1d,#97,#cb,#39,#8e,#32,#82,#cf
	db #1d,#97,#cb,#39,#8e,#32,#82,#cf
	db #1d,#97,#cb,#39,#8e,#32,#82,#cf
	db #1d,#97,#cb,#39,#82,#cf,#1d,#97
.l713b equ $ + 6
.l7138 equ $ + 3
	db #cb,#32,#80,#98,#00,#80,#df,#11
	db #1f,#11,#e5,#8a,#88,#05,#02,#08
	db #82,#cf,#1d,#8f,#8f,#8f,#1d,#8f
	db #8f,#8f,#1d,#8f,#1d,#1d,#1d,#8f
	db #1d,#8f,#97,#cb,#cd,#2d,#39,#2d
	db #34,#39,#39,#34,#2d,#c9,#8e,#8e
	db #2d,#34,#39,#39,#34,#2d,#84,#82
	db #cf,#1d,#8f,#8f,#8f,#1d,#8f,#8f
	db #8f,#1d,#8f,#1d,#1d,#1d,#8f,#1d
	db #8f,#97,#cb,#b5,#cd,#2d,#39,#2d
	db #34,#39,#39,#34,#2d,#c9,#8e,#8e
	db #2d,#34,#39,#39,#34,#2d,#84,#80
	db #80
.l0daa
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),e
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	ret
;
; init music
; xor a - ingame
; ld a,#01 - end theme
;
;
.music_info
	db "Hostage InGame 2&3-3 (1990)(Infogrames)(Mc Alby)",0
	db "",0

	read "music_end.asm"
