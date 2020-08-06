; Music of Firewall Wars (2016)(CpcRetroDev.ByteRealms)()(StArkos)
; Ripped by Megachur the 16/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FIREWALW.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0106
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

;
.l0106
;
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#21,#00,#16,#01,#1f,#01
	db #00,#00,#00,#00,#00,#00,#0d,#18
	db #01,#01,#00,#3c,#38,#34,#30,#2c
	db #28,#24,#20,#1c,#18,#14,#10,#0c
	db #08,#04,#0d,#18,#01,#40,#00,#00
	db #00,#43,#01,#00,#44,#01,#50,#01
	db #5c,#01,#01,#39,#01,#00,#9e,#e0
	db #00,#00,#01,#5d,#5b,#59,#57,#55
	db #53,#00,#b2,#e0,#00,#00,#01,#71
	db #6f,#6d,#6b,#69,#67,#00,#bc,#e0
	db #00,#00,#01,#7b,#79,#77,#75,#73
	db #71,#00,#00
;
.l0169
;
	db #41,#54,#31,#30,#01
	db #40,#42,#0f,#01,#06,#21,#00,#79
	db #01,#82,#01,#00,#00,#00,#00,#00
	db #00,#0d,#7b,#01,#01,#00,#3c,#38
	db #34,#30,#2c,#28,#24,#20,#1c,#18
	db #14,#10,#0c,#08,#04,#0d,#7b,#01
	db #40,#00,#00,#00,#a6,#01,#00,#a7
	db #01,#eb,#01,#0f,#02,#01,#9c,#01
	db #00,#8c,#e0,#00,#00,#01,#4d,#53
	db #4d,#4d,#4d,#41,#4d,#4d,#4d,#53
	db #4d,#4d,#4d,#59,#4d,#4d,#4d,#53
	db #4d,#4d,#4d,#41,#4d,#4d,#4d,#53
	db #4d,#4d,#4d,#59,#4d,#4d,#4d,#53
	db #4d,#4d,#4d,#41,#4d,#4d,#4d,#53
	db #4d,#4d,#4d,#59,#4d,#4d,#4d,#53
	db #4d,#4d,#4d,#41,#4d,#4d,#4d,#53
	db #4d,#4d,#4d,#59,#4d,#92,#e0,#00
	db #00,#01,#02,#4d,#08,#4b,#4d,#0a
	db #4b,#02,#4b,#04,#4d,#06,#53,#4d
	db #0e,#53,#02,#4d,#08,#4b,#4d,#0a
	db #4b,#02,#4b,#04,#4d,#06,#53,#4d
	db #00,#8c,#e0,#00,#00,#01,#06,#53
	db #06,#4d,#06,#57,#06,#4d,#06,#53
	db #06,#4d,#06,#57,#06,#4d,#06,#53
	db #06,#4d,#06,#57,#06,#4d,#06,#53
	db #06,#4d,#06,#57,#00
;
	ds #0233-$,#00
;
.l0233
;
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#2a,#00,#45,#02,#4e,#02
	db #58,#02,#00,#00,#00,#00,#00,#00
	db #0d,#47,#02,#01,#00,#18,#30,#3c
	db #30,#18,#0d,#47,#02,#01,#00,#1a
	db #30,#32,#29,#3e,#26,#3e,#26,#32
	db #29,#1a,#30,#0d,#47,#02,#40,#00
	db #00,#00,#8e,#02,#00,#8f,#02,#94
	db #02,#16,#03,#00,#5a,#03,#5f,#03
	db #e0,#03,#00,#24,#04,#29,#04,#2e
	db #04,#00,#72,#04,#b6,#04,#bb,#04
	db #01,#6f,#02,#00,#42,#80,#00,#00
	db #00,#42,#80,#00,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#a8,#e0,#00,#00,#01
	db #83,#7f,#83,#69,#83,#7f,#83,#69
	db #83,#7f,#83,#69,#83,#7f,#83,#69
	db #83,#7f,#83,#69,#83,#7f,#83,#69
	db #83,#7f,#83,#69,#83,#7f,#83,#69
	db #83,#7f,#83,#69,#83,#7f,#83,#69
	db #83,#7f,#83,#69,#83,#7f,#83,#69
	db #83,#7f,#83,#69,#83,#7f,#83,#69
	db #83,#7f,#83,#69,#83,#7f,#83,#42
	db #80,#00,#00,#00,#42,#80,#00,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#00,#a6,#e0,#00
	db #00,#01,#81,#7d,#81,#67,#81,#7d
	db #81,#67,#81,#7d,#81,#67,#81,#7d
	db #81,#67,#81,#7d,#81,#67,#81,#7d
	db #81,#67,#81,#7d,#81,#67,#81,#7d
	db #81,#67,#81,#7d,#81,#67,#81,#7d
	db #81,#67,#81,#7d,#81,#67,#81,#7d
	db #81,#67,#81,#7d,#81,#67,#81,#7d
	db #81,#67,#81,#7d,#81,#67,#81,#7d
	db #81,#42,#80,#00,#00,#00,#42,#80
	db #00,#00,#00,#a2,#e0,#00,#00,#01
	db #69,#67,#63,#69,#67,#63,#69,#67
	db #63,#69,#67,#63,#69,#67,#63,#67
	db #6d,#6b,#67,#6d,#6b,#67,#6d,#6b
	db #67,#6d,#6b,#67,#6d,#6b,#67,#6b
	db #71,#6f,#6b,#71,#6f,#6b,#71,#6f
	db #6b,#71,#6f,#6b,#71,#6f,#6b,#6f
	db #75,#73,#6f,#75,#73,#6f,#75,#73
	db #6f,#75,#73,#6f,#75,#73,#6f,#8a
	db #e0,#00,#00,#02,#4b,#4b,#4b,#4b
	db #4b,#4b,#4b,#4b,#4b,#4b,#4b,#4b
	db #4b,#4b,#4b,#4f,#4f,#4f,#4f,#4f
	db #4f,#4f,#4f,#4f,#4f,#4f,#4f,#4f
	db #4f,#4f,#4f,#53,#53,#53,#53,#53
	db #53,#53,#53,#53,#53,#53,#53,#53
	db #53,#53,#53,#55,#55,#55,#55,#55
	db #55,#55,#55,#55,#55,#55,#55,#55
	db #55,#55,#55,#42,#80,#00,#00,#00
	db #a2,#e0,#00,#00,#01,#69,#67,#63
	db #69,#67,#63,#69,#67,#63,#69,#67
	db #63,#69,#67,#63,#67,#6d,#6b,#67
	db #6d,#6b,#67,#6d,#6b,#67,#6d,#6b
	db #67,#6d,#6b,#67,#6b,#71,#6f,#6b
	db #71,#6f,#6b,#71,#6f,#6b,#71,#6f
	db #6b,#71,#6f,#6b,#6f,#75,#73,#6f
	db #75,#73,#6f,#75,#73,#6f,#75,#73
	db #6f,#75,#73,#6f,#00
;
; #74fc - player relocated by Megachur
;
.l74fd equ $ + 1
.l74fc
	db #00,#00
;
.play_music
;
	push ix
	push iy
	xor a
	ld (l74fc),a
.l7507 equ $ + 1
	ld a,#01
	dec a
	jp nz,l76da
.l750d equ $ + 1
	ld a,#01
	dec a
	jr nz,l7580
.l7512 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l7527
	ld a,(l74fd)
	inc a
	ld (l74fd),a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l7527
	rra
	jr nc,l752f
	ld de,l75d0
	ldi
.l752f
	rra
	jr nc,l7537
	ld de,l7635
	ldi
.l7537
	rra
	jr nc,l753f
	ld de,l769a
	ldi
.l753f
	ld de,l75af
	ldi
	ldi
	ld de,l7614
	ldi
	ldi
	ld de,l7679
	ldi
	ldi
	rra
	jr nc,l755c
	ld de,l757f
	ldi
.l755c
	rra
	jr nc,l7567
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l756b),de
.l7567
	ld (l7512),hl
.l756b equ $ + 1
	ld hl,#0000
	ld (l7589),hl
	ld a,#01
	ld (l7584),a
	ld (l75aa),a
	ld (l760f),a
	ld (l7674),a
.l757f equ $ + 1
	ld a,#01
.l7580
	ld (l750d),a
.l7584 equ $ + 1
	ld a,#01
	dec a
	jr nz,l75a6
.l7589 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l75a3
	srl a
	jr nz,l7597
	ld a,(hl)
	inc hl
.l7597
	jr nc,l759e
	ld (l74fc),a
	jr l75a1
.l759e
	ld (l76d9),a
.l75a1
	ld a,#01
.l75a3
	ld (l7589),hl
.l75a6
	ld (l7584),a
.l75aa equ $ + 1
	ld a,#01
	dec a
	jr nz,l760b
.l75af equ $ + 1
	ld hl,#0000
	call l7aad
	ld (l75af),hl
	jr c,l760b
	ld a,d
	rra
	jr nc,l75c2
	and #0f
	ld (l77b2),a
.l75c2
	rl d
	jr nc,l75ca
	ld (l77a0),ix
.l75ca
	rl d
	jr nc,l7609
	ld a,e
.l75d0 equ $ + 1
	add #00
	ld (l77b1),a
	ld hl,#0000
	ld (l779d),hl
	rl d
	jr c,l75e9
.l75df equ $ + 1
	ld hl,#0000
	ld a,(l77c2)
	ld (l77ba),a
	jr l7606
.l75e9
	ld l,b
	add hl,hl
.l75ec equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l77c2),a
	ld (l77ba),a
	ld a,(hl)
	or a
	jr z,l7602
	ld (l78cf),a
.l7602
	inc hl
	ld (l75df),hl
.l7606
	ld (l77b4),hl
.l7609
	ld a,#01
.l760b
	ld (l75aa),a
.l760f equ $ + 1
	ld a,#01
	dec a
	jr nz,l7670
.l7614 equ $ + 1
	ld hl,#0000
	call l7aad
	ld (l7614),hl
	jr c,l7670
	ld a,d
	rra
	jr nc,l7627
	and #0f
	ld (l7753),a
.l7627
	rl d
	jr nc,l762f
	ld (l7741),ix
.l762f
	rl d
	jr nc,l766e
	ld a,e
.l7635 equ $ + 1
	add #00
	ld (l7752),a
	ld hl,#0000
	ld (l773e),hl
	rl d
	jr c,l764e
.l7644 equ $ + 1
	ld hl,#0000
	ld a,(l7763)
	ld (l775b),a
	jr l766b
.l764e
	ld l,b
	add hl,hl
.l7651 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l7763),a
	ld (l775b),a
	ld a,(hl)
	or a
	jr z,l7667
	ld (l78cf),a
.l7667
	inc hl
	ld (l7644),hl
.l766b
	ld (l7755),hl
.l766e
	ld a,#01
.l7670
	ld (l760f),a
.l7674 equ $ + 1
	ld a,#01
	dec a
	jr nz,l76d5
.l7679 equ $ + 1
	ld hl,#0000
	call l7aad
	ld (l7679),hl
	jr c,l76d5
	ld a,d
	rra
	jr nc,l768c
	and #0f
	ld (l76f7),a
.l768c
	rl d
	jr nc,l7694
	ld (l76e5),ix
.l7694
	rl d
	jr nc,l76d3
	ld a,e
.l769a equ $ + 1
	add #00
	ld (l76f6),a
	ld hl,#0000
	ld (l76e2),hl
	rl d
	jr c,l76b3
.l76a9 equ $ + 1
	ld hl,#0000
	ld a,(l7707)
	ld (l76ff),a
	jr l76d0
.l76b3
	ld l,b
	add hl,hl
.l76b6 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l7707),a
	ld (l76ff),a
	ld a,(hl)
	or a
	jr z,l76cc
	ld (l78cf),a
.l76cc
	inc hl
	ld (l76a9),hl
.l76d0
	ld (l76f9),hl
.l76d3
	ld a,#01
.l76d5
	ld (l7674),a
.l76d9 equ $ + 1
	ld a,#01
.l76da
	ld (l7507),a
	ld iy,l78e6
.l76e2 equ $ + 1
	ld hl,#0000
.l76e5 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l76e2),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l76f7 equ $ + 2
.l76f6 equ $ + 1
	ld de,#0000
.l76f9 equ $ + 1
	ld hl,#0000
	call l78f1
.l76ff equ $ + 1
	ld a,#01
	dec a
	jr nz,l7708
	ld (l76f9),hl
.l7707 equ $ + 1
	ld a,#06
.l7708
	ld (l76ff),a
.l770b
	ld de,#0000
	exx
	ld de,#0000
.l7713 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l7736
	ld a,#01
	ld (l7a20),a
	call l78f1
	xor a
	ld (l7a20),a
	ld a,l
	or h
	jr z,l772e
.l772a equ $ + 1
	ld a,#01
	dec a
	jr nz,l7733
.l772e
	ld (l7713),hl
	ld a,#06
.l7733
	ld (l772a),a
.l7736
	ld a,lx
	ex af,af'
	ld iy,l78e4
.l773e equ $ + 1
	ld hl,#0000
.l7741 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l773e),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l7753 equ $ + 2
.l7752 equ $ + 1
	ld de,#0000
.l7755 equ $ + 1
	ld hl,#0000
	call l78f1
.l775b equ $ + 1
	ld a,#01
	dec a
	jr nz,l7764
	ld (l7755),hl
.l7763 equ $ + 1
	ld a,#06
.l7764
	ld (l775b),a
.l7767
	ld de,#0000
	exx
	ld de,#0000
.l776f equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l7792
	ld a,#01
	ld (l7a20),a
	call l78f1
	xor a
	ld (l7a20),a
	ld a,l
	or h
	jr z,l778a
.l7786 equ $ + 1
	ld a,#01
	dec a
	jr nz,l778f
.l778a
	ld (l776f),hl
	ld a,#06
.l778f
	ld (l7786),a
.l7792
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l78e2
.l779d equ $ + 1
	ld hl,#0000
.l77a0 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l779d),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l77b2 equ $ + 2
.l77b1 equ $ + 1
	ld de,#0000
.l77b4 equ $ + 1
	ld hl,#0000
	call l78f1
.l77ba equ $ + 1
	ld a,#01
	dec a
	jr nz,l77c3
	ld (l77b4),hl
.l77c2 equ $ + 1
	ld a,#06
.l77c3
	ld (l77ba),a
.l77c6
	ld de,#0000
	exx
	ld de,#0000
.l77ce equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l77f1
	ld a,#01
	ld (l7a20),a
	call l78f1
	xor a
	ld (l7a20),a
	ld a,l
	or h
	jr z,l77e9
.l77e5 equ $ + 1
	ld a,#01
	dec a
	jr nz,l77ee
.l77e9
	ld (l77ce),hl
	ld a,#06
.l77ee
	ld (l77e5),a
.l77f1
	ex af,af'
	or lx
.l77f4
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l78e2
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
.l78cf equ $ + 1
	cp #ff
	ret z
	ld (l78cf),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l78e2
	nop
	nop
.l78e4
	nop
	nop
.l78e6
	nop
	nop
.l78e8
	nop
.l78e9
	nop
	nop
	nop
	nop
	nop
.l78ee
	nop
	nop
.l78f0
	nop
.l78f1
	ld b,(hl)
	inc hl
	rr b
	jp c,l794f
	rr b
	jr c,l791f
	ld a,b
	and #0f
	jr nz,l7908
	ld (iy+#07),a
	ld lx,#09
	ret
.l7908
	ld lx,#08
	sub d
	jr nc,l790f
	xor a
.l790f
	ld (iy+#07),a
	rr b
	call l7a81
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l791f
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l792f
	ld (l78e8),a
	ld lx,#00
.l792f
	ld a,b
	and #0f
	sub d
	jr nc,l7936
	xor a
.l7936
	ld (iy+#07),a
	bit 5,c
	jr nz,l7940
	inc lx
	ret
.l7940
	rr b
	bit 6,c
	call l7a73
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l794f
	rr b
	jr nc,l7962
	ld a,(l77ba)
	ld c,a
	ld a,(l77c2)
	cp c
	jr nz,l7962
	ld a,#fe
	ld (l78cf),a
.l7962
	bit 1,b
	jp nz,l7a1b
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l78f0),a
	bit 0,b
	jr z,l79d1
	bit 2,b
	call l7a73
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l7991),a
	ld a,b
	exx
.l7991 equ $ + 1
	jr l7992
.l7992
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
	jr nc,l79b1
	inc hl
.l79b1
	bit 5,a
	jr z,l79c1
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
.l79c1
	ld (l78ee),hl
	exx
.l79c5
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l78e8),a
	ld lx,#00
	ret
.l79d1
	bit 2,b
	call l7a73
	ld (l78ee),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l79e5),a
	ld a,b
	exx
.l79e5 equ $ + 1
	jr l79e6
.l79e6
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
	jr z,l7a12
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
.l7a12
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l79c5
.l7a1b
	bit 0,b
	jr z,l7a2f
.l7a20 equ $ + 1
	ld a,#00
	or a
	jr z,l7a28
	ld hl,#0000
	ret
.l7a28
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l78f1
.l7a2f
	ld (iy+#07),#10
	bit 5,b
	jr nz,l7a3c
	ld lx,#09
	jr l7a4f
.l7a3c
	ld lx,#08
	ld hx,e
	bit 2,b
	call l7a73
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l7a4f
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l78f0),a
	rr b
	rr b
	bit 2,b
	call l7a73
	ld (l78ee),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l78e8),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l7a73
	jr z,l7a81
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
.l7a81
	bit 4,b
	jr z,l7a91
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
.l7a91
	ld a,e
	bit 3,b
	jr z,l7a9e
	add (hl)
	inc hl
	cp #90
	jr c,l7a9e
	ld a,#8f
.l7a9e
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l7ae1
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l7aad
	ld a,(hl)
	inc hl
	srl a
	jr c,l7ad4
	sub #20
	jr c,l7ade
	jr z,l7ad0
	dec a
	ld e,a
.l7abb
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l7ac9
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l7ac9
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l7ad0
	ld e,(hl)
	inc hl
	jr l7abb
.l7ad4
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l7ade
	add #20
	ret
.l7ae1
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
.real_init_music
;
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
	xor a
	ld (l74fd),a
	ld hl,#0009
	add hl,de
	ld de,l76d9
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l75ec),hl
	ld (l7651),hl
	ld (l76b6),hl
	add hl,bc
	ld de,l757f
	ldi
	ld de,l75d0
	ldi
	ld de,l7635
	ldi
	ld de,l769a
	ldi
	ld de,l756b
	ldi
	ldi
	ld (l7512),hl
	ld a,#01
	ld (l7507),a
	ld (l750d),a
	ld a,#ff
	ld (l78f0),a
	ld hl,(l75ec)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l77b4),hl
	ld (l7755),hl
	ld (l76f9),hl
	ret
	push ix
	push iy
	ld hl,l78e9
	ld bc,#0500
.l7c6b
	ld (hl),c
	inc hl
	djnz l7c6b
	ld a,#3f
	jp l77f4
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	rrca
	jp c,l7c89
	rrca
	jp c,l7c85
	ld hl,(l7713)
	ret
.l7c85
	ld hl,(l776f)
	ret
.l7c89
	ld hl,(l77ce)
	ret
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,#000c
	add hl,de
	ld (l7ce8),hl
	ld hl,#0000
	ld (l77ce),hl
	ld (l776f),hl
	ld (l7713),hl
	ret
	ld (l7d04),ix
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
	jp c,l7cd0
	rrca
	jp c,l7cc9
	ld ix,l770b
	jp l7cd4
.l7cc9
	ld ix,l7767
	jp l7cd4
.l7cd0
	ld ix,l77c6
.l7cd4
	ld (ix+#01),c
	ld (ix+#02),b
	ld a,e
	ld (ix+#05),a
	ld a,#0f
	sub h
	ld (ix+#06),a
	ld h,#00
	add hl,hl
.l7ce8 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,d
	or a
	jr nz,l7cf4
	ld a,(hl)
.l7cf4
	ld (ix+#27),a
	ld (ix+#1f),a
	inc hl
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
.l7d04 equ $ + 2
	ld ix,#0000
	ret
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	ld hl,#0000
	rrca
	jp nc,l7d16
	ld (l77ce),hl
.l7d16
	rrca
	jp nc,l7d1d
	ld (l776f),hl
.l7d1d
	rrca
	jp z,l7d24
	ld (l7713),hl
.l7d24
	ret
;
; #9f61
; ld hl,#0106	; game over
; push hl
; call #7c01
; pop af
;
; #533e
; ld hl,#0169	; credits
; push hl
; call #7c01
; pop af
;
; #4a98
; ld hl,#0233	; sound fx
; push hl
; call #7c01
;
.init_music		; added by Megachur
;
	ld hl,l0106
	or a
	jr z,call_init_music

	ld hl,l0169

.call_init_music
	push hl
	call real_init_music
	pop af
	ret
;
.music_info
	db "Firewall Wars (2016)(CpcRetroDev.ByteRealms)()",0
	db "StArkos",0

	read "music_end.asm"
