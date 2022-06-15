; Music of Red Sunset. Demo Xmas'18 - InGame (2018)(ESP Soft)(John McKlain)(StArkos)
; Ripped by Megachur the 24/03/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "REDSDX18.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #6000

	read "music_header.asm"

.l6000
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#08,#ce,#00,#1e,#60,#27,#60
	db #37,#60,#49,#60,#66,#60,#86,#60
	db #90,#60,#a0,#60,#b9,#60,#00,#00
	db #00,#00,#00,#00,#0d,#20,#60,#01
	db #00,#7a,#2d,#0c,#7c,#09,#74,#06
	db #70,#03,#28,#24,#0d,#33,#60,#01
	db #00,#ec,#01,#00,#0c,#b4,#fe,#ff
	db #b0,#02,#00,#ac,#fe,#ff,#0d,#39
	db #60,#01,#00,#7a,#2e,#fe,#76,#29
	db #fc,#72,#29,#fa,#6e,#29,#f8,#6a
	db #29,#f6,#66,#29,#f4,#62,#29,#f1
	db #5e,#29,#ef,#0d,#20,#60,#01,#00
	db #74,#13,#38,#34,#30,#30,#b0,#ff
	db #ff,#b0,#fe,#ff,#b0,#ff,#ff,#30
	db #b0,#01,#00,#b0,#02,#00,#b0,#01
	db #00,#30,#30,#0d,#6e,#60,#01,#00
	db #7a,#29,#0c,#3a,#26,#0d,#88,#60
	db #01,#00,#74,#01,#b8,#01,#00,#b0
	db #ff,#ff,#a8,#01,#00,#0d,#92,#60
	db #01,#00,#74,#01,#b8,#01,#00,#b4
	db #ff,#ff,#b0,#01,#00,#ac,#ff,#ff
	db #a8,#01,#00,#a4,#ff,#ff,#0d,#20
	db #60,#01,#00,#74,#01,#38,#34,#30
	db #30,#b0,#ff,#ff,#b0,#fd,#ff,#b0
	db #ff,#ff,#30,#30,#b0,#01,#00,#b0
	db #03,#00,#b0,#01,#00,#30,#30,#0d
	db #c1,#60,#20,#f4,#00,#00,#61,#61
	db #00,#82,#63,#62,#61,#82,#63,#1e
	db #00,#00,#00,#35,#64,#62,#61,#1c
	db #62,#40,#00,#a5,#63,#62,#61,#1c
	db #62,#00,#35,#64,#62,#61,#9c,#62
	db #00,#a5,#63,#62,#61,#9c,#62,#00
	db #35,#64,#62,#61,#1c,#62,#00,#a5
	db #63,#62,#61,#1c,#62,#00,#35,#64
	db #62,#61,#9c,#62,#00,#a5,#63,#62
	db #61,#9c,#62,#0e,#02,#02,#02,#35
	db #64,#62,#61,#1c,#62,#00,#a5,#63
	db #62,#61,#1c,#62,#00,#35,#64,#62
	db #61,#9c,#62,#00,#a5,#63,#62,#61
	db #9c,#62,#00,#35,#64,#62,#61,#1c
	db #62,#00,#a5,#63,#62,#61,#1c,#62
	db #00,#35,#64,#62,#61,#9c,#62,#00
	db #a5,#63,#62,#61,#9c,#62,#01,#e7
	db #60,#00,#6c,#e1,#00,#00,#01,#84
	db #60,#02,#b4,#60,#03,#9c,#60,#02
	db #6c,#60,#01,#84,#60,#02,#b4,#60
	db #03,#9c,#60,#02,#6c,#60,#01,#84
	db #60,#02,#b4,#60,#03,#9c,#60,#02
	db #6c,#60,#01,#2d,#b4,#60,#03,#6c
	db #60,#01,#6c,#60,#02,#6c,#60,#01
	db #b4,#60,#03,#9c,#60,#02,#6c,#60
	db #01,#84,#60,#02,#b4,#60,#03,#9c
	db #60,#02,#6c,#60,#01,#84,#60,#02
	db #b4,#60,#03,#9c,#60,#02,#6c,#60
	db #01,#2d,#b4,#60,#03,#9c,#60,#02
	db #76,#60,#01,#8e,#60,#02,#b4,#60
	db #03,#a6,#60,#02,#76,#60,#01,#8e
	db #60,#02,#b4,#60,#03,#a6,#60,#02
	db #76,#60,#01,#8e,#60,#02,#b4,#60
	db #03,#a6,#60,#02,#76,#60,#01,#37
	db #b4,#60,#03,#76,#60,#01,#92,#60
	db #02,#7a,#60,#01,#b4,#60,#03,#aa
	db #60,#02,#7a,#60,#01,#92,#60,#02
	db #b4,#60,#03,#aa,#60,#02,#7a,#60
	db #01,#92,#60,#02,#b4,#60,#03,#aa
	db #60,#02,#7a,#60,#01,#3b,#b4,#60
	db #03,#aa,#60,#02,#b4,#e3,#00,#00
	db #04,#02,#83,#c2,#47,#cc,#43,#cc
	db #47,#d0,#43,#d0,#c7,#10,#00,#d2
	db #c3,#00,#00,#91,#8d,#91,#8d,#85
	db #8d,#75,#02,#b4,#c7,#10,#00,#c2
	db #c3,#00,#00,#c2,#47,#cc,#43,#cc
	db #47,#d0,#43,#d0,#c7,#10,#00,#d2
	db #c3,#00,#00,#91,#8d,#91,#8d,#85
	db #8d,#7f,#02,#be,#c7,#10,#00,#c4
	db #c3,#00,#00,#c4,#47,#cc,#43,#cc
	db #47,#d0,#43,#d0,#c7,#10,#00,#d2
	db #c3,#00,#00,#91,#8d,#91,#8d,#85
	db #93,#9b,#02,#da,#c7,#10,#00,#d6
	db #c3,#00,#00,#93,#97,#42,#80,#10
	db #00,#d2,#c0,#00,#00,#91,#93,#42
	db #80,#10,#00,#c4,#c0,#00,#00,#8d
	db #91,#93,#91,#89,#da,#e3,#00,#00
	db #04,#42,#80,#10,#00,#da,#c5,#00
	db #00,#42,#80,#10,#00,#da,#cb,#00
	db #00,#d2,#43,#91,#8d,#42,#80,#10
	db #00,#cc,#c5,#00,#00,#42,#80,#10
	db #00,#cc,#cb,#00,#00,#42,#80,#10
	db #00,#cc,#c3,#00,#00,#91,#42,#80
	db #10,#00,#d2,#c0,#00,#00,#42,#80
	db #10,#00,#d2,#c5,#00,#00,#42,#80
	db #10,#00,#d2,#cb,#00,#00,#d0,#43
	db #8d,#c4,#40,#42,#80,#10,#00,#c4
	db #c5,#00,#00,#42,#80,#10,#00,#c4
	db #cb,#00,#00,#42,#80,#10,#00,#c4
	db #cf,#00,#00,#42,#80,#10,#00,#c4
	db #d3,#00,#00,#be,#43,#42,#80,#10
	db #00,#be,#c5,#00,#00,#42,#80,#10
	db #00,#be,#cb,#00,#00,#42,#80,#10
	db #00,#c2,#c3,#00,#00,#c4,#40,#42
	db #80,#10,#00,#c4,#c5,#00,#00,#42
	db #80,#10,#00,#c4,#cb,#00,#00,#42
	db #80,#10,#00,#c2,#c3,#00,#00,#8d
	db #42,#80,#10,#00,#d0,#c0,#00,#00
	db #42,#80,#10,#00,#d0,#c5,#00,#00
	db #42,#80,#10,#00,#d0,#cb,#00,#00
	db #42,#80,#10,#00,#d2,#c3,#00,#00
	db #d0,#40,#42,#80,#10,#00,#d0,#c5
	db #00,#00,#42,#80,#10,#00,#d0,#cb
	db #00,#00,#42,#80,#10,#00,#d0,#cf
	db #00,#00,#42,#80,#10,#00,#d0,#d3
	db #00,#00,#42,#60,#00,#42,#80,#00
	db #00,#24,#ba,#f7,#fe,#ff,#05,#42
	db #15,#42,#13,#42,#11,#42,#0f,#42
	db #0d,#42,#0b,#42,#09,#42,#07,#42
	db #00,#42,#00,#42,#00,#aa,#e5,#00
	db #00,#04,#42,#00,#42,#80,#10,#00
	db #9c,#e0,#00,#00,#06,#9c,#60,#07
	db #5d,#92,#60,#08,#5d,#42,#00,#42
	db #00,#61,#63,#42,#00,#42,#00,#61
	db #aa,#60,#04,#42,#00,#42,#00,#42
	db #80,#10,#00,#9c,#e0,#00,#00,#06
	db #9c,#60,#07,#5d,#92,#60,#08,#5d
	db #42,#00,#42,#00,#61,#63,#42,#00
	db #42,#00,#61,#b4,#60,#04,#42,#00
	db #42,#00,#42,#80,#10,#00,#a6,#e0
	db #00,#00,#06,#a6,#60,#07,#67,#a2
	db #60,#08,#67,#42,#00,#42,#00,#6b
	db #6d,#42,#00,#42,#00,#6b,#b8,#60
	db #04,#42,#00,#42,#00,#42,#80,#10
	db #00,#aa,#e0,#00,#00,#06,#aa,#60
	db #07,#6b,#a2,#60,#08,#61,#42,#00
	db #42,#00,#61,#63,#42,#00,#42,#00
	db #61,#42,#80,#10,#00,#aa,#e5,#00
	db #00,#04,#42,#00,#42,#80,#10,#00
	db #9c,#e0,#00,#00,#06,#9c,#60,#07
	db #5d,#92,#60,#08,#5d,#42,#00,#42
	db #00,#61,#63,#42,#00,#42,#00,#61
	db #aa,#60,#04,#42,#00,#42,#00,#42
	db #80,#10,#00,#9c,#e0,#00,#00,#06
	db #9c,#60,#07,#5d,#92,#60,#08,#5d
	db #42,#00,#42,#00,#61,#63,#42,#00
	db #42,#00,#61,#b4,#60,#04,#42,#00
	db #42,#00,#42,#80,#10,#00,#94,#e0
	db #00,#00,#06,#94,#60,#07,#55,#92
	db #60,#08,#55,#42,#00,#42,#00,#53
	db #55,#42,#00,#42,#00,#5d,#b8,#60
	db #04,#42,#00,#42,#00,#42,#80,#10
	db #00,#a2,#e0,#00,#00,#06,#a2,#60
	db #07,#63,#a6,#60,#08,#61,#42,#00
	db #42,#00,#61,#63,#42,#00,#42,#00
	db #61,#42,#80,#10,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
; #6600 - sound fx ?
;
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#ff,#b0,#00,#18,#66,#21,#66
	db #45,#66,#5c,#66,#7c,#66,#9c,#66
	db #00,#00,#00,#00,#00,#00,#0d,#1a
	db #66,#01,#00,#f4,#ff,#ff,#12,#f0
	db #01,#00,#24,#f4,#ff,#ff,#32,#f0
	db #01,#00,#24,#ec,#ff,#ff,#12,#e8
	db #ff,#ff,#09,#e0,#01,#00,#03,#98
	db #01,#00,#0d,#1a,#66,#02,#00,#7a
	db #33,#01,#76,#36,#fb,#72,#39,#f9
	db #6e,#37,#f7,#66,#3b,#f5,#5e,#37
	db #f3,#0d,#1a,#66,#01,#00,#3c,#7c
	db #04,#7c,#09,#74,#0b,#74,#10,#30
	db #70,#04,#70,#09,#68,#0b,#68,#10
	db #1c,#5c,#04,#5c,#09,#54,#0b,#54
	db #10,#0d,#1a,#66,#01,#00,#f4,#fe
	db #ff,#27,#f4,#fe,#ff,#11,#f4,#02
	db #00,#17,#f0,#fe,#ff,#21,#ec,#02
	db #00,#0f,#e8,#02,#00,#06,#a4,#fe
	db #ff,#0d,#1a,#66,#04,#00,#7a,#35
	db #03,#7a,#37,#01,#76,#38,#ff,#72
	db #39,#fd,#6e,#3a,#fb,#6a,#3b,#f9
	db #62,#3c,#f7,#5e,#3c,#f5,#5a,#3c
	db #fb,#0d,#1a,#66,#40,#00,#00,#00
	db #cc,#66,#00,#cd,#66,#cd,#66,#cd
	db #66,#01,#c2,#66,#00,#42,#80,#00
;
; #0721 - player reallocated by Megachur
;
;
.play_music
.l0721		; play music
;
.l0722 equ $ + 1
	ld a,#01
	dec a
	jp nz,l08c2
.l0728 equ $ + 1
	ld a,#01
	dec a
	jr nz,l078e
.l072d equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l073b
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l073b
	rra
	jr nc,l0743
	ld de,l07b8
	ldi
.l0743
	rra
	jr nc,l074b
	ld de,l081d
	ldi
.l074b
	rra
	jr nc,l0753
	ld de,l0882
	ldi
.l0753
	ld de,l0797
	ldi
	ldi
	ld de,l07fc
	ldi
	ldi
	ld de,l0861
	ldi
	ldi
	rra
	jr nc,l0770
	ld de,l078d
	ldi
.l0770
	rra
	jr nc,l077b
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
.l0777
	ld (l077f),de
.l077b
	ld (l072d),hl
.l077f equ $ + 1
	ld hl,#0000
	ld a,#01
	ld (l0792),a
	ld (l07f7),a
	ld (l085c),a
.l078d equ $ + 1
	ld a,#01
.l078e
	ld (l0728),a
.l0792 equ $ + 1
	ld a,#01
	dec a
	jr nz,l07f3
.l0797 equ $ + 1
	ld hl,#0000
	call l0c91
	ld (l0797),hl
	jr c,l07f3
	ld a,d
	rra
	jr nc,l07aa
	and #0f
	ld (l099a),a
.l07aa
	rl d
	jr nc,l07b2
	ld (l0988),ix
.l07b2
	rl d
	jr nc,l07f1
	ld a,e
.l07b8 equ $ + 1
	add #00
	ld (l0999),a
	ld hl,#0000
	ld (l0985),hl
	rl d
	jr c,l07d1
.l07c7 equ $ + 1
	ld hl,#0000
	ld a,(l09aa)
	ld (l09a2),a
	jr l07ee
.l07d1
	ld l,b
	add hl,hl
.l07d4 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l09aa),a
	ld (l09a2),a
	ld a,(hl)
	or a
	jr z,l07ea
.l07e9 equ $ + 2
	ld (l0ab3),a
.l07ea
	inc hl
	ld (l07c7),hl
.l07ee
	ld (l099c),hl
.l07f1
	ld a,#01
.l07f3
	ld (l0792),a
.l07f7 equ $ + 1
	ld a,#01
	dec a
	jr nz,l0858
.l07fc equ $ + 1
	ld hl,#0000
	call l0c91
	ld (l07fc),hl
	jr c,l0858
	ld a,d
	rra
	jr nc,l080f
	and #0f
	ld (l093b),a
.l080f
	rl d
	jr nc,l0817
	ld (l0929),ix
.l0817
	rl d
	jr nc,l0856
	ld a,e
.l081d equ $ + 1
	add #00
	ld (l093a),a
	ld hl,#0000
	ld (l0926),hl
	rl d
	jr c,l0836
.l082c equ $ + 1
	ld hl,#0000
	ld a,(l094b)
	ld (l0943),a
	jr l0853
.l0836
	ld l,b
	add hl,hl
.l0839 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l094b),a
	ld (l0943),a
	ld a,(hl)
	or a
	jr z,l084f
	ld (l0ab3),a
.l084f
	inc hl
	ld (l082c),hl
.l0853
	ld (l093d),hl
.l0856
	ld a,#01
.l0858
	ld (l07f7),a
.l085c equ $ + 1
	ld a,#01
	dec a
	jr nz,l08bd
.l0861 equ $ + 1
	ld hl,#0000
	call l0c91
	ld (l0861),hl
	jr c,l08bd
	ld a,d
	rra
	jr nc,l0874
	and #0f
	ld (l08df),a
.l0874
	rl d
	jr nc,l087c
	ld (l08cd),ix
.l087c
	rl d
	jr nc,l08bb
	ld a,e
.l0882 equ $ + 1
	add #00
	ld (l08de),a
	ld hl,#0000
	ld (l08ca),hl
	rl d
	jr c,l089b
.l0891 equ $ + 1
	ld hl,#0000
	ld a,(l08ef)
	ld (l08e7),a
	jr l08b8
.l089b
	ld l,b
	add hl,hl
.l089e equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l08ef),a
	ld (l08e7),a
	ld a,(hl)
	or a
	jr z,l08b4
	ld (l0ab3),a
.l08b4
	inc hl
	ld (l0891),hl
.l08b8
	ld (l08e1),hl
.l08bb
	ld a,#01
.l08bd
	ld (l085c),a
.l08c1 equ $ + 1
	ld a,#01
.l08c2
	ld (l0722),a
	ld iy,l0aca
.l08ca equ $ + 1
	ld hl,#0000
.l08cd equ $ + 1
	ld de,#0000
	add hl,de
	ld (l08ca),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l08df equ $ + 2
.l08de equ $ + 1
	ld de,#0000
.l08e1 equ $ + 1
	ld hl,#0000
	call l0ad5
.l08e7 equ $ + 1
	ld a,#01
	dec a
	jr nz,l08f0
	ld (l08e1),hl
.l08ef equ $ + 1
	ld a,#06
.l08f0
	ld (l08e7),a
.l08f3
	ld de,#0000
	exx
	ld de,#0000
.l08fb equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l091e
	ld a,#01
	ld (l0c04),a
	call l0ad5
	xor a
	ld (l0c04),a
	ld a,l
	or h
	jr z,l0916
.l0912 equ $ + 1
	ld a,#01
	dec a
	jr nz,l091b
.l0916
	ld (l08fb),hl
	ld a,#06
.l091b
	ld (l0912),a
.l091e
	ld a,lx
	ex af,af'
	ld iy,l0ac8
.l0926 equ $ + 1
	ld hl,#0000
.l0929 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l0926),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l093b equ $ + 2
.l093a equ $ + 1
	ld de,#0000
.l093d equ $ + 1
	ld hl,#0000
	call l0ad5
.l0943 equ $ + 1
	ld a,#01
	dec a
	jr nz,l094c
	ld (l093d),hl
.l094b equ $ + 1
	ld a,#06
.l094c
	ld (l0943),a
.l094f
	ld de,#0000
	exx
	ld de,#0000
.l0957 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l097a
	ld a,#01
	ld (l0c04),a
	call l0ad5
	xor a
.l0968 equ $ + 2
	ld (l0c04),a
	ld a,l
	or h
	jr z,l0972
.l096e equ $ + 1
	ld a,#01
	dec a
	jr nz,l0977
.l0972
	ld (l0957),hl
	ld a,#06
.l0977
	ld (l096e),a
.l097a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l0ac6
.l0985 equ $ + 1
	ld hl,#0000
.l0988 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l0985),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l099a equ $ + 2
.l0999 equ $ + 1
	ld de,#0000
.l099c equ $ + 1
	ld hl,#0000
	call l0ad5
.l09a2 equ $ + 1
	ld a,#01
	dec a
	jr nz,l09ab
	ld (l099c),hl
.l09aa equ $ + 1
	ld a,#06
.l09ab
	ld (l09a2),a
.l09ae
	ld de,#0000
	exx
	ld de,#0000
.l09b6 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l09d9
	ld a,#01
	ld (l0c04),a
	call l0ad5
	xor a
	ld (l0c04),a
	ld a,l
	or h
	jr z,l09d1
.l09cd equ $ + 1
	ld a,#01
	dec a
	jr nz,l09d6
.l09d1
	ld (l09b6),hl
	ld a,#06
.l09d6
	ld (l09cd),a
.l09d9
	ex af,af'
	or lx
.l09dc
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l0ac6
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
.l09f7
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
.l0a8f
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
	ld a,(hl)
.l0ab3 equ $ + 1
	cp #ff
	ret z
	ld (l0ab3),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l0ac6
	nop
	nop
.l0ac8
	nop
	nop
.l0aca
	nop
	nop
.l0acc
	nop
.l0acd
	nop
	nop
	nop
	nop
	nop
.l0ad2
	nop
	nop
.l0ad4
	nop
.l0ad5
	ld b,(hl)
	inc hl
	rr b
	jp c,l0b33
	rr b
	jr c,l0b03
	ld a,b
	and #0f
	jr nz,l0aec
	ld (iy+#07),a
	ld lx,#09
	ret
.l0aec
	ld lx,#08
	sub d
	jr nc,l0af3
	xor a
.l0af3
	ld (iy+#07),a
	rr b
	call l0c65
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l0b03
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l0b13
	ld (l0acc),a
	ld lx,#00
.l0b13
	ld a,b
	and #0f
	sub d
	jr nc,l0b1a
	xor a
.l0b1a
	ld (iy+#07),a
	bit 5,c
	jr nz,l0b24
	inc lx
	ret
.l0b24
	rr b
	bit 6,c
	call l0c57
	ld (iy+#00),l
.l0b2f equ $ + 1
	ld (iy+#01),h
	exx
	ret
.l0b33
	rr b
	jr nc,l0b46
	ld a,(l09a2)
	ld c,a
	ld a,(l09aa)
	cp c
	jr nz,l0b46
	ld a,#fe
	ld (l0ab3),a
.l0b46
	bit 1,b
	jp nz,l0bff
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l0ad4),a
	bit 0,b
	jr z,l0bb5
	bit 2,b
	call l0c57
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l0b75),a
	ld a,b
	exx
.l0b75 equ $ + 1
	jr l0b76
.l0b76
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
	jr nc,l0b95
	inc hl
.l0b95
	bit 5,a
	jr z,l0ba5
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
.l0ba5
	ld (l0ad2),hl
	exx
.l0ba9
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l0acc),a
	ld lx,#00
	ret
.l0bb5
	bit 2,b
	call l0c57
	ld (l0ad2),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l0bc9),a
	ld a,b
	exx
.l0bc9 equ $ + 1
	jr l0bca
.l0bca
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
.l0bda
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	bit 5,a
	jr z,l0bf6
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
.l0bf6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l0ba9
.l0bff
	bit 0,b
	jr z,l0c13
.l0c04 equ $ + 1
	ld a,#00
	or a
	jr z,l0c0c
	ld hl,#0000
	ret
.l0c0c
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l0ad5
.l0c13
	ld (iy+#07),#10
	bit 5,b
	jr nz,l0c20
	ld lx,#09
	jr l0c33
.l0c20
	ld lx,#08
	ld hx,e
	bit 2,b
	call l0c57
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l0c33
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l0ad4),a
	rr b
	rr b
	bit 2,b
	call l0c57
	ld (l0ad2),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l0acc),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l0c57
	jr z,l0c65
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
.l0c65
	bit 4,b
	jr z,l0c75
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
.l0c75
	ld a,e
	bit 3,b
	jr z,l0c82
	add (hl)
	inc hl
	cp #90
	jr c,l0c82
	ld a,#8f
.l0c82
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l0cc5
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
.l0c8e
	ld l,a
	add hl,de
	ret
.l0c91
	ld a,(hl)
	inc hl
	srl a
	jr c,l0cb8
	sub #20
	jr c,l0cc2
	jr z,l0cb4
	dec a
	ld e,a
.l0c9f
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l0cad
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l0cad
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l0cb4
	ld e,(hl)
	inc hl
	jr l0c9f
.l0cb8
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l0cc2
	add #20
	ret
.l0cc5
	dw #0eee,l0e18,l0d4d,l0c8e
	dw l0bda,l0b2f,l0a8f,l09f7
	dw l0968,l08e1,l0861,l07e9
	dw l0777,#070c,#06a7,#0647
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
.l0d4d
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
.real_init_music
.l0e49		; init music - de = data
;
	ld hl,#0009
	add hl,de
	ld de,l08c1
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l07d4),hl
	ld (l0839),hl
	ld (l089e),hl
	add hl,bc
	ld de,l078d
	ldi
	ld de,l07b8
	ldi
	ld de,l081d
	ldi
	ld de,l0882
	ldi
	ld de,l077f
	ldi
	ldi
.l0e18 equ $ + 1
	ld (l072d),hl
	ld a,#01
	ld (l0722),a
	ld (l0728),a
	ld a,#ff
	ld (l0ad4),a
	ld hl,(l07d4)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l099c),hl
	ld (l093d),hl
	ld (l08e1),hl
	ret
	ld hl,l0acd
	ld bc,#0300
.l0e40
	ld (hl),c
	inc hl
	djnz l0e40
	ld a,#3f
	jp l09dc
	ld hl,#000c
	add hl,de
	ld (l0e83),hl
	ld hl,#0000
	ld (l09b6),hl
	ld (l0957),hl
	ld (l08fb),hl
	ret
	ld ix,l09ae
	or a
	jr z,l0e6f
	ld ix,l094f
	dec a
	jr z,l0e6f
	ld ix,l08f3
.l0e6f
	ld (ix+#01),c
	ld (ix+#02),b
	ld a,e
	ld (ix+#05),a
	ld a,#0f
	sub h
	ld (ix+#06),a
	ld h,#00
	add hl,hl
.l0e83 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,d
	or a
	jr nz,l0e8f
	ld a,(hl)
.l0e8f
	ld (ix+#27),a
	ld (ix+#1f),a
	inc hl
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
	ret
	ld a,e
	ld hl,l09b6
	or a
	jr z,l0eaf
	ld hl,l0957
	dec a
	jr z,l0eaf
	ld hl,l08fb
	dec a
.l0eaf
	ld (hl),a
	inc hl
	ld (hl),a
	ret
;
.init_music		; added by Megachur
;
	ld de,l6000
	jp real_init_music

;	#150b
;	ld de,#6600	; init sound fx ?
;	jp #0de5
;	ret
;	ld de,#8000	; init menu music
;	jp #0de5
;	ret
;	ld de,#6000	; init ingame music
;	jp #0de5
;.l151f		; music interupt
;	exx
;	push de
;	push hl
;	push bc
;	push ix
;	push iy
;	call #0721	; play music
;	pop iy
;	pop ix
;	pop bc
;	pop hl
;	pop de
;	exx
;	ret
;	ret
;	ld de,#6600	; init sound fx ?
;	call #0e49
;	ret

;
.music_info
	db "Red Sunset. Demo Xmas'18 - InGame (2018)(ESP Soft)(John McKlain)",0
	db "StArkos",0

	read "music_end.asm"
