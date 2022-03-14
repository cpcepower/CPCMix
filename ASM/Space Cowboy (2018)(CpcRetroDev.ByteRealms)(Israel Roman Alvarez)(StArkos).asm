; Music of Space Cowboy (2018)(CpcRetroDev.ByteRealms)(Israel Roman Alvarez)(StArkos)
; Ripped by Megachur the 11/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SPACECOW.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0040
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

.l0040
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #01,#04,#82,#00,#5a,#00,#63,#00
	db #7c,#00,#88,#00,#9a,#00,#a5,#00
	db #b3,#00,#00,#00,#00,#00,#00,#00
	db #0d,#5c,#00,#01,#00,#3c,#78,#0c
	db #74,#06,#30,#6c,#0c,#68,#06,#24
	db #60,#0c,#5c,#06,#18,#54,#0c,#50
	db #06,#0d,#5c,#00,#01,#00,#7e,#26
	db #fb,#64,#f8,#54,#f0,#0d,#5c,#00
	db #01,#00,#3e,#2c,#32,#2a,#6a,#28
	db #fe,#5e,#26,#fa,#52,#24,#f6,#0d
	db #5c,#00,#01,#00,#3e,#01,#2e,#01
	db #26,#01,#0d,#5c,#00,#01,#00,#3c
	db #74,#0c,#2c,#64,#0c,#1c,#54,#0c
	db #0d,#5c,#00,#01,#00,#f0,#10,#00
	db #03,#7c,#07,#f4,#10,#00,#03,#6c
	db #07,#e4,#10,#00,#03,#58,#07,#4c
	db #03,#08,#04,#0d,#5c,#00,#10,#00
	db #00,#00,#32,#01,#00,#33,#01,#48
	db #01,#5a,#01,#00,#33,#01,#48,#01
	db #5a,#01,#00,#79,#01,#8b,#01,#5a
	db #01,#00,#9c,#01,#8b,#01,#5a,#01
	db #00,#9c,#01,#48,#01,#5a,#01,#00
	db #b0,#01,#48,#01,#d5,#01,#00,#9c
	db #01,#c1,#01,#d5,#01,#00,#9c,#01
	db #c1,#01,#d5,#01,#00,#b0,#01,#c1
	db #01,#d5,#01,#00,#9c,#01,#f4,#01
	db #d5,#01,#00,#9c,#01,#f4,#01,#d5
	db #01,#00,#b0,#01,#c1,#01,#06,#02
	db #00,#9c,#01,#48,#01,#06,#02,#01
	db #d4,#00,#00,#c4,#e0,#00,#00,#01
	db #7b,#7b,#85,#7b,#7b,#85,#7b,#7b
	db #85,#7b,#7b,#85,#85,#83,#42,#00
	db #42,#60,#00,#42,#80,#00,#00,#8a
	db #60,#02,#4b,#4f,#06,#4b,#4f,#4b
	db #59,#00,#ba,#e0,#00,#00,#03,#7b
	db #ba,#60,#04,#06,#ba,#60,#03,#7b
	db #ba,#60,#04,#04,#ba,#60,#03,#7b
	db #ba,#60,#04,#ba,#60,#03,#ba,#60
	db #04,#c8,#e0,#00,#00,#01,#85,#85
	db #04,#85,#85,#83,#04,#83,#83,#7b
	db #7d,#7d,#00,#92,#e0,#00,#00,#05
	db #02,#53,#04,#55,#55,#04,#53,#02
	db #53,#04,#57,#5b,#8e,#e0,#00,#00
	db #01,#02,#83,#4f,#02,#83,#4f,#55
	db #02,#4f,#85,#4f,#02,#85,#53,#59
	db #94,#e0,#00,#00,#01,#04,#55,#04
	db #55,#61,#04,#5d,#02,#5d,#02,#55
	db #4f,#b0,#e0,#00,#00,#06,#6d,#6b
	db #02,#71,#6d,#6b,#02,#71,#6d,#6b
	db #02,#6d,#67,#63,#00,#a2,#e0,#00
	db #00,#03,#de,#60,#04,#b0,#60,#03
	db #71,#04,#63,#de,#60,#04,#b0,#60
	db #03,#71,#02,#de,#60,#04,#a2,#60
	db #03,#71,#71,#71,#a2,#e0,#00,#00
	db #06,#04,#6b,#6d,#04,#67,#02,#63
	db #02,#6d,#71,#73,#02,#77,#42,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
;
	ds #0210-$,#00
;
.l0210
;
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #01,#04,#64,#00,#26,#02,#2f,#02
	db #41,#02,#5a,#02,#79,#02,#00,#00
	db #00,#00,#00,#00,#0d,#28,#02,#01
	db #00,#3e,#21,#7c,#03,#38,#74,#fb
	db #70,#f6,#6c,#f6,#68,#f1,#0d,#28
	db #02,#01,#00,#7e,#2b,#0c,#7a,#2a
	db #0d,#76,#29,#10,#72,#28,#09,#2e
	db #27,#6a,#26,#09,#62,#25,#0e,#0d
	db #28,#02,#01,#00,#3c,#78,#0c,#74
	db #06,#70,#04,#2c,#68,#0c,#64,#06
	db #60,#04,#1c,#58,#0c,#54,#06,#50
	db #04,#0c,#48,#0c,#44,#06,#0d,#28
	db #02,#01,#00,#32,#01,#0d,#28,#02
	db #08,#00,#00,#00,#f2,#02,#00,#f8
	db #02,#34,#03,#59,#03,#00,#f8,#02
	db #34,#03,#f3,#02,#00,#0d,#03,#41
	db #03,#f3,#02,#00,#0d,#03,#4d,#03
	db #f3,#02,#00,#23,#03,#34,#03,#f3
	db #02,#00,#23,#03,#34,#03,#f3,#02
	db #00,#23,#03,#41,#03,#f3,#02,#00
	db #f8,#02,#4d,#03,#f3,#02,#00,#0d
	db #03,#34,#03,#f3,#02,#00,#23,#03
	db #34,#03,#f3,#02,#00,#0d,#03,#41
	db #03,#f3,#02,#00,#23,#03,#4d,#03
	db #f3,#02,#00,#0d,#03,#34,#03,#f3
	db #02,#00,#23,#03,#41,#03,#f3,#02
	db #00,#0d,#03,#4d,#03,#f3,#02,#01
	db #86,#02,#00,#42,#80,#00,#00,#00
	db #8a,#ef,#00,#00,#01,#02,#94,#60
	db #02,#42,#00,#8a,#60,#01,#42,#00
	db #94,#60,#02,#42,#00,#94,#e0,#00
	db #00,#02,#42,#00,#55,#42,#00,#98
	db #60,#01,#94,#60,#02,#98,#60,#01
	db #94,#60,#02,#9c,#e0,#00,#00,#01
	db #02,#a0,#60,#02,#9c,#60,#01,#04
	db #a0,#60,#02,#61,#8e,#ef,#00,#00
	db #03,#42,#00,#4f,#02,#55,#02,#55
	db #00,#92,#e0,#00,#00,#03,#53,#02
	db #4f,#02,#53,#02,#55,#8e,#e0,#00
	db #00,#03,#53,#02,#55,#59,#02,#5d
	db #61,#8a,#e1,#00,#00,#04,#00,#00
;
; l96d5 - player reallocated by Megachur
;
.l96d5
	db #00
.l96d6
	db #00
;
.play_music
;
	push ix
	push iy
	xor a
	ld (l96d5),a
.l96e0 equ $ + 1
	ld a,#01
	dec a
	jp nz,l98b3
.l96e6 equ $ + 1
	ld a,#01
	dec a
	jr nz,l9759
.l96eb equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l9700
	ld a,(l96d6)
	inc a
	ld (l96d6),a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l9700
	rra
	jr nc,l9708
	ld de,l97a9
	ldi
.l9708
	rra
	jr nc,l9710
	ld de,l980e
	ldi
.l9710
	rra
	jr nc,l9718
	ld de,l9873
	ldi
.l9718
	ld de,l9788
	ldi
	ldi
	ld de,l97ed
	ldi
	ldi
	ld de,l9852
	ldi
	ldi
	rra
	jr nc,l9735
	ld de,l9758
	ldi
.l9735
	rra
	jr nc,l9740
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l9744),de
.l9740
	ld (l96eb),hl
.l9744 equ $ + 1
	ld hl,#0000
	ld (l9762),hl
	ld a,#01
	ld (l975d),a
	ld (l9783),a
	ld (l97e8),a
	ld (l984d),a
.l9758 equ $ + 1
	ld a,#01
.l9759
	ld (l96e6),a
.l975d equ $ + 1
	ld a,#01
	dec a
	jr nz,l977f
.l9762 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l977c
	srl a
	jr nz,l9770
	ld a,(hl)
	inc hl
.l9770
	jr nc,l9777
	ld (l96d5),a
	jr l977a
.l9777
	ld (l98b2),a
.l977a
	ld a,#01
.l977c
	ld (l9762),hl
.l977f
	ld (l975d),a
.l9783 equ $ + 1
	ld a,#01
	dec a
	jr nz,l97e4
.l9788 equ $ + 1
	ld hl,#0000
	call l9c86
	ld (l9788),hl
	jr c,l97e4
	ld a,d
	rra
	jr nc,l979b
	and #0f
	ld (l998b),a
.l979b
	rl d
	jr nc,l97a3
	ld (l9979),ix
.l97a3
	rl d
	jr nc,l97e2
	ld a,e
.l97a9 equ $ + 1
	add #00
	ld (l998a),a
	ld hl,#0000
	ld (l9976),hl
	rl d
	jr c,l97c2
.l97b8 equ $ + 1
	ld hl,#0000
	ld a,(l999b)
	ld (l9993),a
	jr l97df
.l97c2
	ld l,b
	add hl,hl
.l97c5 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l999b),a
	ld (l9993),a
	ld a,(hl)
	or a
	jr z,l97db
	ld (l9aa8),a
.l97db
	inc hl
	ld (l97b8),hl
.l97df
	ld (l998d),hl
.l97e2
	ld a,#01
.l97e4
	ld (l9783),a
.l97e8 equ $ + 1
	ld a,#01
	dec a
	jr nz,l9849
.l97ed equ $ + 1
	ld hl,#0000
	call l9c86
	ld (l97ed),hl
	jr c,l9849
	ld a,d
	rra
	jr nc,l9800
	and #0f
	ld (l992c),a
.l9800
	rl d
	jr nc,l9808
	ld (l991a),ix
.l9808
	rl d
	jr nc,l9847
	ld a,e
.l980e equ $ + 1
	add #00
	ld (l992b),a
	ld hl,#0000
	ld (l9917),hl
	rl d
	jr c,l9827
.l981d equ $ + 1
	ld hl,#0000
	ld a,(l993c)
	ld (l9934),a
	jr l9844
.l9827
	ld l,b
	add hl,hl
.l982a equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l993c),a
	ld (l9934),a
	ld a,(hl)
	or a
	jr z,l9840
	ld (l9aa8),a
.l9840
	inc hl
	ld (l981d),hl
.l9844
	ld (l992e),hl
.l9847
	ld a,#01
.l9849
	ld (l97e8),a
.l984d equ $ + 1
	ld a,#01
	dec a
	jr nz,l98ae
.l9852 equ $ + 1
	ld hl,#0000
	call l9c86
	ld (l9852),hl
	jr c,l98ae
	ld a,d
	rra
	jr nc,l9865
	and #0f
	ld (l98d0),a
.l9865
	rl d
	jr nc,l986d
	ld (l98be),ix
.l986d
	rl d
	jr nc,l98ac
	ld a,e
.l9873 equ $ + 1
	add #00
	ld (l98cf),a
	ld hl,#0000
	ld (l98bb),hl
	rl d
	jr c,l988c
.l9882 equ $ + 1
	ld hl,#0000
	ld a,(l98e0)
	ld (l98d8),a
	jr l98a9
.l988c
	ld l,b
	add hl,hl
.l988f equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l98e0),a
	ld (l98d8),a
	ld a,(hl)
	or a
	jr z,l98a5
	ld (l9aa8),a
.l98a5
	inc hl
	ld (l9882),hl
.l98a9
	ld (l98d2),hl
.l98ac
	ld a,#01
.l98ae
	ld (l984d),a
.l98b2 equ $ + 1
	ld a,#01
.l98b3
	ld (l96e0),a
	ld iy,l9abf
.l98bb equ $ + 1
	ld hl,#0000
.l98be equ $ + 1
	ld de,#0000
	add hl,de
	ld (l98bb),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l98d0 equ $ + 2
.l98cf equ $ + 1
	ld de,#0000
.l98d2 equ $ + 1
	ld hl,#0000
	call l9aca
.l98d8 equ $ + 1
	ld a,#01
	dec a
	jr nz,l98e1
	ld (l98d2),hl
.l98e0 equ $ + 1
	ld a,#06
.l98e1
	ld (l98d8),a
.l98e4
	ld de,#0000
	exx
	ld de,#0000
.l98ec equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l990f
	ld a,#01
	ld (l9bf9),a
	call l9aca
	xor a
	ld (l9bf9),a
	ld a,l
	or h
	jr z,l9907
.l9903 equ $ + 1
	ld a,#01
	dec a
	jr nz,l990c
.l9907
	ld (l98ec),hl
	ld a,#06
.l990c
	ld (l9903),a
.l990f
	ld a,lx
	ex af,af'
	ld iy,l9abd
.l9917 equ $ + 1
	ld hl,#0000
.l991a equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9917),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l992c equ $ + 2
.l992b equ $ + 1
	ld de,#0000
.l992e equ $ + 1
	ld hl,#0000
	call l9aca
.l9934 equ $ + 1
	ld a,#01
	dec a
	jr nz,l993d
	ld (l992e),hl
.l993c equ $ + 1
	ld a,#06
.l993d
	ld (l9934),a
.l9940
	ld de,#0000
	exx
	ld de,#0000
.l9948 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l996b
	ld a,#01
	ld (l9bf9),a
	call l9aca
	xor a
	ld (l9bf9),a
	ld a,l
	or h
	jr z,l9963
.l995f equ $ + 1
	ld a,#01
	dec a
	jr nz,l9968
.l9963
	ld (l9948),hl
	ld a,#06
.l9968
	ld (l995f),a
.l996b
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l9abb
.l9976 equ $ + 1
	ld hl,#0000
.l9979 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9976),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l998b equ $ + 2
.l998a equ $ + 1
	ld de,#0000
.l998d equ $ + 1
	ld hl,#0000
	call l9aca
.l9993 equ $ + 1
	ld a,#01
	dec a
	jr nz,l999c
	ld (l998d),hl
.l999b equ $ + 1
	ld a,#06
.l999c
	ld (l9993),a
.l999f
	ld de,#0000
	exx
	ld de,#0000
.l99a7 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l99ca
	ld a,#01
	ld (l9bf9),a
	call l9aca
	xor a
	ld (l9bf9),a
	ld a,l
	or h
	jr z,l99c2
.l99be equ $ + 1
	ld a,#01
	dec a
	jr nz,l99c7
.l99c2
	ld (l99a7),hl
	ld a,#06
.l99c7
	ld (l99be),a
.l99ca
	ex af,af'
	or lx
.l99cd
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l9abb
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	out (c),a
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	pop iy
	pop ix
	ld a,(hl)
.l9aa8 equ $ + 1
	cp #ff
	ret z
	ld (l9aa8),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l9abb
	nop
	nop
.l9abd
	nop
	nop
.l9abf
	nop
	nop
.l9ac1
	nop
.l9ac2
	nop
	nop
	nop
	nop
	nop
.l9ac7
	nop
	nop
.l9ac9
	nop
.l9aca
	ld b,(hl)
	inc hl
	rr b
	jp c,l9b28
	rr b
	jr c,l9af8
	ld a,b
	and #0f
	jr nz,l9ae1
	ld (iy+#07),a
	ld lx,#09
	ret
.l9ae1
	ld lx,#08
	sub d
	jr nc,l9ae8
	xor a
.l9ae8
	ld (iy+#07),a
	rr b
	call l9c5a
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l9af8
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l9b08
	ld (l9ac1),a
	ld lx,#00
.l9b08
	ld a,b
	and #0f
	sub d
	jr nc,l9b0f
	xor a
.l9b0f
	ld (iy+#07),a
	bit 5,c
	jr nz,l9b19
	inc lx
	ret
.l9b19
	rr b
	bit 6,c
	call l9c4c
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l9b28
	rr b
	jr nc,l9b3b
	ld a,(l9993)
	ld c,a
	ld a,(l999b)
	cp c
	jr nz,l9b3b
	ld a,#fe
	ld (l9aa8),a
.l9b3b
	bit 1,b
	jp nz,l9bf4
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l9ac9),a
	bit 0,b
	jr z,l9baa
	bit 2,b
	call l9c4c
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l9b6a),a
	ld a,b
	exx
.l9b6a equ $ + 1
	jr l9b6b
.l9b6b
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	jr nc,l9b8a
	inc hl
.l9b8a
	bit 5,a
	jr z,l9b9a
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l9b9a
	ld (l9ac7),hl
	exx
.l9b9e
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l9ac1),a
	ld lx,#00
	ret
.l9baa
	bit 2,b
	call l9c4c
	ld (l9ac7),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l9bbe),a
	ld a,b
	exx
.l9bbe equ $ + 1
	jr l9bbf
.l9bbf
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	bit 5,a
	jr z,l9beb
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l9beb
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l9b9e
.l9bf4
	bit 0,b
	jr z,l9c08
.l9bf9 equ $ + 1
	ld a,#00
	or a
	jr z,l9c01
	ld hl,#0000
	ret
.l9c01
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l9aca
.l9c08
	ld (iy+#07),#10
	bit 5,b
	jr nz,l9c15
	ld lx,#09
	jr l9c28
.l9c15
	ld lx,#08
	ld hx,e
	bit 2,b
	call l9c4c
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l9c28
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l9ac9),a
	rr b
	rr b
	bit 2,b
	call l9c4c
	ld (l9ac7),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l9ac1),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l9c4c
	jr z,l9c5a
	ld a,(hl)
	inc hl
	exx
	add e
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld h,a
	ret
.l9c5a
	bit 4,b
	jr z,l9c6a
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld d,a
	exx
.l9c6a
	ld a,e
	bit 3,b
	jr z,l9c77
	add (hl)
	inc hl
	cp #90
	jr c,l9c77
	ld a,#8f
.l9c77
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l9cba
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l9c86
	ld a,(hl)
	inc hl
	srl a
	jr c,l9cad
	sub #20
	jr c,l9cb7
	jr z,l9ca9
	dec a
	ld e,a
.l9c94
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l9ca2
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l9ca2
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l9ca9
	ld e,(hl)
	inc hl
	jr l9c94
.l9cad
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l9cb7
	add #20
	ret
.l9cba
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
	dw #000f,#000e,#000d,#000d
	dw #000c,#000b,#000b,#000a
	dw #0009,#0009,#0008,#0008
	dw #0007,#0007,#0007,#0006
	dw #0006,#0006,#0005,#0005
	dw #0005,#0004,#0004,#0004
	dw #0004,#0004,#0003,#0003
	dw #0003,#0003,#0003,#0002
	dw #0002,#0002,#0002,#0002
	dw #0002,#0002,#0002,#0002
	dw #0001,#0001,#0001,#0001
	dw #0001,#0001,#0001,#0001
;
; .real_init_music
;
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
;
.real_init_music
;
	xor a
	ld (l96d6),a
	ld hl,#0009
	add hl,de
	ld de,l98b2
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l97c5),hl
	ld (l982a),hl
	ld (l988f),hl
	add hl,bc
	ld de,l9758
	ldi
	ld de,l97a9
	ldi
	ld de,l980e
	ldi
	ld de,l9873
	ldi
	ld de,l9744
	ldi
	ldi
	ld (l96eb),hl
	ld a,#01
	ld (l96e0),a
	ld (l96e6),a
	ld a,#ff
	ld (l9ac9),a
	ld hl,(l97c5)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l998d),hl
	ld (l992e),hl
	ld (l98d2),hl
	ret
;
; .stop_music ?
;
	push ix
	push iy
	ld hl,l9ac2
	ld bc,#0500
.l9e44
	ld (hl),c
	inc hl
	djnz l9e44
	ld a,#3f
	jp l99cd

	ld hl,#0002
	add hl,sp
	ld a,(hl)
	rrca
	jp c,l9e62
	rrca
	jp c,l9e5e
	ld hl,(l98ec)
	ret
.l9e5e
	ld hl,(l9948)
	ret
.l9e62
	ld hl,(l99a7)
	ret
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,#000c
	add hl,de
	ld (l9ec1),hl
	ld hl,#0000
	ld (l99a7),hl
	ld (l9948),hl
	ld (l98ec),hl
	ret
	ld (l9edd),ix
	pop af
	pop hl
	pop de
	pop bc
	pop ix
	push ix
	push bc
	push de
	push hl
	push af
	ld a,lx
	rrca
	jp c,l9ea9
	rrca
	jp c,l9ea2
	ld ix,l98e4
	jp l9ead
.l9ea2
	ld ix,l9940
	jp l9ead
.l9ea9
	ld ix,l999f
.l9ead
	ld (ix+#01),c
	ld (ix+#02),b
	ld a,e
	ld (ix+#05),a
	ld a,#0f
	sub h
	ld (ix+#06),a
	ld h,#00
	add hl,hl
.l9ec1 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,d
	or a
	jr nz,l9ecd
	ld a,(hl)
.l9ecd
	ld (ix+#27),a
	ld (ix+#1f),a
	inc hl
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
.l9edd equ $ + 2
	ld ix,#0000
	ret
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	ld hl,#0000
	rrca
	jp nc,l9eef
	ld (l99a7),hl
.l9eef
	rrca
	jp nc,l9ef6
	ld (l9948),hl
.l9ef6
	rrca
	jp z,l9efd
	ld (l98ec),hl
.l9efd
	ret
;
;	#15ef
;	ld hl,#0040
;	push hl
;	call #9dda
;	pop af
;
;	#2a40
;	ld hl,#0210
;	push hl
;	call #9dda
;	ld hl,#0210
;	ex (sp),hl
;	call #9e66
;	pop af
;
.init_music		; added by Megachur
;
	ld de,l0040
	or a
	jp z,real_init_music
	ld de,l0210
	jp real_init_music
;
.music_info
	db "Space Cowboy (2018)(CpcRetroDev.ByteRealms)(Israel Roman Alvarez)",0
	db "StArkos",0

	read "music_end.asm"
