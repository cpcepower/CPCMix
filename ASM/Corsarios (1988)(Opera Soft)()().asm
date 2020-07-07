; Music of Corsarios (1988)(Opera Soft)()()
; Ripped by Megachur the 09/07/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CORSARIO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #5677

	read "music_header.asm"

.l5677
	db #86,#04,#8e,#28,#a1,#58,#90,#01
	db #f9,#58,#01,#3f,#80,#01,#90,#01
	db #a0,#58,#8e,#06,#f9,#58,#00,#50
	db #3c,#00,#86,#0d,#8e,#02,#f9,#58
	db #90,#01,#a0,#58,#98,#04,#00,#43
	db #0c,#00,#00,#50,#0c,#00,#00,#43
	db #0c,#00,#98,#02,#00,#35,#0c,#00
	db #9a,#00,#3c,#06,#00,#00,#43,#0c
	db #00,#98,#02,#00,#3c,#0c,#00,#9a
	db #00,#3c,#06,#00,#00,#43,#0c,#00
	db #00,#3c,#0c,#00,#98,#02,#00,#35
	db #0c,#00,#9a,#00,#3c,#06,#00,#00
	db #43,#0c,#00,#98,#02,#00,#50,#0c
	db #00,#9a,#00,#50,#06,#00,#00,#59
	db #0c,#00,#00,#50,#0c,#00,#98,#02
	db #00,#35,#0c,#00,#9a,#00,#3c,#06
	db #00,#00,#43,#0c,#00,#98,#02,#00
	db #3c,#0c,#00,#9a,#00,#3c,#06,#00
	db #00,#43,#0c,#00,#00,#3c,#0c,#00
	db #98,#02,#00,#35,#0c,#00,#9a,#00
	db #2d,#06,#00,#00,#2a,#0c,#00,#9c
	db #26,#57,#00,#28,#12,#00,#9a,#8e
	db #0a,#f9,#58,#00,#28,#66,#00,#86
	db #00,#8e,#01,#a0,#58,#00,#00,#f0
	db #00,#90,#01,#a3,#58,#86,#0b,#98
	db #02,#98,#02,#00,#43,#18,#00,#00
	db #50,#12,#00,#00,#59,#2a,#00,#00
	db #50,#0c,#00,#00,#43,#18,#00,#00
	db #3c,#12,#00,#9c,#62,#57,#00,#47
	db #36,#00,#9a,#00,#35,#36,#00,#9a
	db #86,#00,#90,#01,#a0,#58,#00,#00
.l5774 equ $ + 5
	db #bc,#01,#92,#91,#56,#86,#04,#90
	db #01,#f9,#58,#8e,#28,#a1,#58,#00
	db #d5,#80,#01,#90,#01,#a0,#58,#8e
	db #06,#f9,#58,#00,#35,#3c,#00,#86
	db #0d,#8e,#02,#f9,#58,#90,#01,#a0
	db #58,#98,#04,#00,#24,#0c,#00,#00
	db #2a,#0c,#00,#00,#24,#0c,#00,#98
	db #02,#00,#1c,#0c,#00,#9a,#00,#20
	db #06,#00,#00,#24,#0c,#00,#98,#02
	db #00,#20,#0c,#00,#9a,#00,#20,#06
	db #00,#00,#24,#0c,#00,#00,#20,#0c
	db #00,#98,#02,#00,#1c,#0c,#00,#9a
	db #00,#20,#06,#00,#00,#24,#0c,#00
	db #98,#02,#00,#2a,#0c,#00,#9a,#00
	db #2a,#06,#00,#00,#2f,#0c,#00,#00
	db #2a,#0c,#00,#98,#02,#00,#1c,#0c
	db #00,#9a,#00,#20,#06,#00,#00,#24
	db #0c,#00,#98,#02,#00,#20,#0c,#00
	db #9a,#00,#20,#06,#00,#00,#24,#0c
	db #00,#00,#20,#0c,#00,#98,#02,#00
	db #1c,#0c,#00,#9a,#00,#18,#06,#00
	db #00,#16,#0c,#00,#9c,#23,#58,#00
	db #15,#12,#00,#9a,#8e,#0a,#f9,#58
	db #00,#15,#66,#00,#86,#00,#90,#01
	db #a0,#58,#00,#00,#f0,#00,#86,#0b
	db #98,#02,#00,#6a,#2a,#00,#00,#77
	db #36,#00,#00,#86,#2a,#00,#00,#8e
	db #36,#00,#00,#9f,#2a,#00,#00,#8e
	db #36,#00,#00,#86,#2a,#00,#00,#6a
	db #36,#00,#9a,#86,#00,#00,#00,#bc
.l5863 equ $ + 4
	db #01,#92,#8e,#57,#86,#0d,#8c,#03
	db #8e,#01,#f9,#58,#02,#7e,#0c,#00
	db #98,#02,#02,#7e,#06,#00,#9a,#8e
	db #02,#f9,#58,#88,#00,#00,#12,#00
	db #8a,#8e,#01,#f9,#58,#98,#02,#02
	db #7e,#0c,#00,#9a,#02,#7e,#06,#00
	db #88,#00,#00,#0c,#00,#98,#02,#00
	db #00,#06,#00,#9a,#8a,#92,#63,#58
.l589f
	db #80,#81,#01,#80,#01,#ff,#80,#86
	db #0c,#8e,#01,#b5,#58,#8c,#08,#88
	db #00,#00,#14,#00,#8a,#80,#01,#01
	db #01,#fe,#fe,#fe,#fe,#fe,#fe,#fd
	db #81,#86,#0d,#8c,#08,#88,#00,#00
	db #03,#00,#8a,#80,#86,#00,#8e,#01
	db #da,#58,#90,#02,#dd,#58,#00,#10
	db #14,#00,#80,#0f,#f1,#80,#14,#f0
	db #80,#8e,#01,#fb,#58,#86,#00,#8c
	db #00,#88,#00,#00,#14,#00,#8e,#03
	db #f9,#58,#86,#0f,#00,#00,#32,#00
	db #8a,#80,#ff,#80,#01,#80,#86,#0d
	db #90,#02,#18,#59,#00,#be,#0c,#00
	db #00,#c9,#0c,#00,#00,#d5,#0c,#00
	db #00,#e1,#0c,#00,#00,#ef,#0c,#00
	db #80,#02,#80,#86,#0f,#8c,#1f,#88
	db #00,#00,#03,#00,#8a,#80,#86,#00
	db #8c,#1e,#8e,#01,#33,#59,#88,#00
	db #00,#0e,#00,#80,#02,#80,#86,#0c
	db #8e,#03,#44,#59,#8c,#1e,#88,#00
	db #00,#2d,#00,#8a,#80,#01,#01,#01
	db #fe,#fe,#fe,#fe,#fe,#fe,#fd,#81
	db #86,#0e,#8e,#02,#f9,#58,#00,#24
	db #0c,#00,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	
;#79d2
.l79d3 equ $ + 1
.l79d2
	db #40,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l79ec equ $ + 2
	db #00,#00,#40,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7a06 equ $ + 4
	db #00,#00,#00,#00,#40,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7a21 equ $ + 7
.l7a20 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7a23 equ $ + 1
.l7a22
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7a37 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7a4b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	
;&9e00
	
.l9e00
	bit 2,(ix+#00)
	ret nz
	ld a,(ix+#0f)
	or a
	jr z,l9e0f
	dec (ix+#0f)
	ret
.l9e0f
	ld a,(ix+#10)
	ld (ix+#0f),a
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	ld a,#80
	cp (hl)
	jr nz,l9e2a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	cp (hl)
	ret z
	jr l9e34
.l9e2a
	ld a,#81
	cp (hl)
	jr nz,l9e34
	set 2,(ix+#00)
	ret
.l9e34
	ld c,(hl)
	inc hl
	ld (ix+#0d),l
	ld (ix+#0e),h
	ld l,(ix+#01)
	ld h,(ix+#02)
	ld b,#00
	bit 7,c
	jr z,l9e49
	dec b
.l9e49
	add hl,bc
	ld (ix+#01),l
	ld (ix+#02),h
	ret
.l9e51
	ld l,(ix+#11)
	ld h,(ix+#12)
	ld e,(hl)
	ld d,#00
	bit 7,e
	jr nz,l9e61
	dec hl
	ld e,#84
.l9e61
	res 7,e
	push hl
	ld hl,lb600
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	jp (hl)
.l9e6d
	pop hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	ld (ix+#11),l
	ld (ix+#12),h
	jp l9f56
.l9e7d
	pop hl
	ld (ix+#00),#81
	inc hl
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld (ix+#01),e
	ld (ix+#02),d
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	dec de
	ld (ix+#03),e
	ld (ix+#04),d
	ld a,(ix+#16)
	bit 7,a
	jr z,l9e9f
	xor a
.l9e9f
	ld (ix+#15),a
	ld e,(ix+#05)
	ld d,(ix+#06)
	ld (ix+#07),e
	ld (ix+#08),d
	ld a,(ix+#0a)
	ld (ix+#09),a
	ld e,(ix+#0b)
	ld d,(ix+#0c)
	ld (ix+#0d),e
	ld (ix+#0e),d
	ld a,(ix+#10)
	ld (ix+#0f),a
	jp l9f4e
.l9ec9
	pop hl
	inc hl
	ld a,(hl)
	or #80
	ld (l7a20),a
	jp l9f4e
.l9ed4
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),e
	ld (ix+#06),d
	jp l9f4e
.l9ee7
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#10),a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#0b),e
	ld (ix+#0c),d
	jp l9f4e
.l9efa
	pop hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#11),e
	ld (ix+#12),d
	ret
.l9f06
	call l9fa4
	call l9f67
	dec b
	jr z,l9efa
	inc b
	call l9f56
	call l9f9a
	pop hl
	inc hl
	inc hl
	jp l9f4e
.l9f1c
	pop hl
	ld l,(ix+#13)
	ld h,(ix+#14)
	ld e,(ix+#17)
	ld d,(ix+#18)
	or a
	sbc hl,de
	jr z,l9f38
	call l9f67
	ld (ix+#11),e
	ld (ix+#12),d
	ret
.l9f38
	ld (ix+#00),#01
	ld (ix+#15),#00
	ret
.l9f41
	pop hl
	inc hl
	ld a,(hl)
	inc hl
	ld c,(hl)
	push hl
	call l1012
	jp l9f4d
.l9f4d
	pop hl
.l9f4e
	inc hl
	ld (ix+#11),l
	ld (ix+#12),h
	ret
.l9f56
	ld l,(ix+#13)
	ld h,(ix+#14)
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (ix+#13),l
	ld (ix+#14),h
	ret
.l9f67
	ld l,(ix+#13)
	ld h,(ix+#14)
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld (ix+#13),l
	ld (ix+#14),h
	ret
.l9f78
	pop hl
	inc hl
	ld b,(hl)
	ex de,hl
	call l9f56
	call l9f9a
	ex de,hl
	jr l9f4e
.l9f85
	call l9fa4
	call l9f67
	dec b
	jr z,l9f4d
	pop hl
	ld l,e
	ld h,d
	push hl
	call l9f56
	call l9f9a
	jr l9f4d
.l9f9a
	ld l,(ix+#13)
	ld h,(ix+#14)
	ld (hl),b
	inc hl
	jr l9fac
.l9fa4
	ld l,(ix+#13)
	ld h,(ix+#14)
	dec hl
	ld b,(hl)
.l9fac
	ld (ix+#13),l
	ld (ix+#14),h
	ret
.l9fb3
	ld hl,l7a21
	ld a,(l7a22)
	cp #03
	jr nz,l9fc2
	res 3,(hl)
	jp l9f4d
.l9fc2
	cp #02
	jr nz,l9fcb
	res 4,(hl)
	jp l9f4d
.l9fcb
	res 5,(hl)
	jp l9f4d
.l9fd0
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#16),a
	jp l9f4e
.l9fd9
	ld hl,l7a21
	ld a,(l7a22)
	cp #03
	jr nz,l9fe8
	set 3,(hl)
	jp l9f4d
.l9fe8
	cp #02
	jr nz,l9ff1
	set 4,(hl)
	jp l9f4d
.l9ff1
	set 5,(hl)
	jp l9f4d
.l9ff6
	pop hl
	ld (ix+#00),#01
	ld (ix+#15),#00
	ret
;&b600
.lb600
	dw l9ff6,l9e6d,l9e7d,l9fd0
	dw l9fb3,l9fd9,l9ec9,l9ed4
	dw l9ee7,l9efa,l9f1c,l9f41
	dw l9f78,l9f85,l9f06
.lb61e
	db #80
.lb61f	; init music
	di
	push hl
	push de
	push bc
	ld hl,l79d2
	ld (hl),#00
	ld de,l79d3
	ld bc,#004e
	ldir
	ld a,#38
	ld (l7a21),a
	pop bc
	pop de
	pop hl
	xor a
	push af
	call lb686
	pop af
	push bc
	pop bc
	push de
	pop hl
	ld a,#01
	push af
	call lb686
	pop af
	push bc
	pop hl
	ld a,#02
	push af
	call lb686
	pop af
	ei
	ret
	xor a
	call lb66a
	jp z,lb686
	inc a
	call lb66a
	jp z,lb686
	inc a
	call lb66a
	jp z,lb686
	ret
.lb66a
	ld c,a
	or a
	jr z,lb67f
	dec a
	jr z,lb678
	ld a,(l7a06)
	bit 7,a
	ld a,c
	ret
.lb678
	ld a,(l79ec)
	bit 7,a
	ld a,c
	ret
.lb67f
	ld a,(l79d2)
	bit 7,a
	ld a,c
	ret
.lb686
	push af
	push ix
	push de
	or a
	jr nz,lb696
	ld ix,l79d2
	ld de,l7a23
	jr lb6a9
.lb696
	dec a
	jr nz,lb6a2
	ld ix,l79ec
	ld de,l7a37
	jr lb6a9
.lb6a2
	ld ix,l7a06
	ld de,l7a4b
.lb6a9
	ld (ix+#11),l
	ld (ix+#12),h
	ld hl,lb61e
	ld (ix+#05),l
	ld (ix+#06),h
	ld (ix+#0b),l
	ld (ix+#0c),h
	ld (ix+#13),e
	ld (ix+#17),e
	ld (ix+#14),d
	ld (ix+#18),d
	xor a
	set 7,a
	ld (ix+#00),a
	xor a
	ld (ix+#03),a
	ld (ix+#04),a
	pop de
	pop ix
	pop af
	ret
;
.play_music
.lb6dc
;
	push ix
	ld ix,l79d2
	ld a,#01
	call lb780
	ld ix,l79ec
	ld a,#02
	call lb780
	ld ix,l7a06
	ld a,#03
	call lb780
	call lb6ff
	pop ix
	ret
.lb6ff
	ld ix,l79d2
	bit 6,(ix+#00)
	jr nz,lb721
	ld a,#0a
	ld c,(ix+#15)
	call l1012
	ld a,#04
	ld c,(ix+#01)
	call l1012
	ld a,#05
	ld c,(ix+#02)
	call l1012
.lb721
	ld ix,l79ec
	bit 6,(ix+#00)
	jr nz,lb743
	ld a,#09
	ld c,(ix+#15)
	call l1012
	ld a,#02
	ld c,(ix+#01)
	call l1012
	ld a,#03
	ld c,(ix+#02)
	call l1012
.lb743
	ld ix,l7a06
	bit 6,(ix+#00)
	jr nz,lb765
	ld a,#08
	ld c,(ix+#15)
	call l1012
	ld a,#00
	ld c,(ix+#01)
	call l1012
	ld a,#01
	ld c,(ix+#02)
	call l1012
.lb765
	ld a,(l7a21)
	ld c,a
	ld a,#07
	call l1012
	ld a,(l7a20)
	bit 7,a
	ret z
	res 7,a
	ld (l7a20),a
	ld c,a
	ld a,#06
	call l1012
	ret
.lb780
	bit 7,(ix+#00)
	jr nz,lb78b
	set 6,(ix+#00)
	ret
.lb78b
	ld (l7a22),a
	ld c,(ix+#03)
	ld b,(ix+#04)
	ld a,c
	or b
	jr z,lb7a6
	dec bc
	ld (ix+#03),c
	ld (ix+#04),b
	call lb7b6
	call l9e00
	ret
.lb7a6
	bit 0,(ix+#00)
	jr nz,lb7b1
	call l9e51
	jr lb7a6
.lb7b1
	res 0,(ix+#00)
	ret
.lb7b6
	bit 1,(ix+#00)
	ret nz
	ld a,(ix+#09)
	or a
	jr z,lb7c5
	dec (ix+#09)
	ret
.lb7c5
	ld a,(ix+#0a)
	ld (ix+#09),a
	ld l,(ix+#07)
	ld h,(ix+#08)
	ld a,#80
	cp (hl)
	jr nz,lb7e0
	ld l,(ix+#05)
	ld h,(ix+#06)
	cp (hl)
	ret z
	jr lb7ea
.lb7e0
	ld a,#81
	cp (hl)
	jr nz,lb7ea
	set 1,(ix+#00)
	ret
.lb7ea
	ld c,(hl)
	inc hl
	ld (ix+#07),l
	ld (ix+#08),h
	ld a,(ix+#15)
	add c
	ld c,a
	bit 7,a
	jr z,lb7fc
	xor a
.lb7fc
	ld (ix+#15),a
	ret
;
.l1012	; #1012 - reallocated by Megachur
;
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
	ret
;
.stop_music	; #03df  - reallocated by Megachur
;
	ld hl,l589f
	ld de,l589f
	ld bc,l589f
	jp lb61f
;
.init_music
;
	ld hl,l5677
	ld de,l5863
	ld bc,l5774
	jp lb61f
;
; call #b6dc	; play
;
.music_info
	db "Corsarios (1988)(Opera Soft)()",0
	db "",0

	read "music_end.asm"
