; Music of Ikari Warrior (1986)(Elite Systems Ltd.)(David Sher)()
; Ripped by Megachur the 01/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "IKARIWAR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #8000

	read "music_header.asm"

.l8007 equ $ + 7
.l8006 equ $ + 6
.l8005 equ $ + 5
.l8004 equ $ + 4
.l8003 equ $ + 3
.l8002 equ $ + 2
.l8001 equ $ + 1
.l8000
	db #00,#00,#00,#00,#01,#00,#00,#02
.l800f equ $ + 7
.l800e equ $ + 6
.l800d equ $ + 5
.l800c equ $ + 4
.l800b equ $ + 3
.l800a equ $ + 2
.l8008
	db #00,#00,#00,#00,#00,#00,#01,#00
.l8017 equ $ + 7
.l8016 equ $ + 6
.l8015 equ $ + 5
.l8014 equ $ + 4
.l8012 equ $ + 2
.l8011 equ $ + 1
.l8010
	db #00,#02,#00,#00,#0f,#00,#00,#00
.l801e equ $ + 6
.l801c equ $ + 4
.l801b equ $ + 3
.l801a equ $ + 2
.l8019 equ $ + 1
.l8018
	db #01,#00,#00,#02,#00,#00,#00,#00
.l8027 equ $ + 7
.l8026 equ $ + 6
.l8025 equ $ + 5
.l8024 equ $ + 4
.l8023 equ $ + 3
.l8022 equ $ + 2
.l8021 equ $ + 1
.l8020
	db #00,#00,#00,#00,#0a,#38,#00,#01
.l802e equ $ + 6
.l802d equ $ + 5
.l802c equ $ + 4
.l802b equ $ + 3
.l802a equ $ + 2
.l8029 equ $ + 1
.l8028
	db #01,#02,#00,#00,#02,#01
	dw l8031
.l8030
	db #00
.l8031
	db #0c,#0e,#0d,#0c,#0c,#0c,#0c,#0c
	db #0b,#0b,#0b,#0b,#0b,#0b,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#09,#09,#09
	db #09,#08,#08,#08,#07,#07,#07,#06
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#01,#00,#ff
.l805d
	db #0b,#0d,#0c,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#0a,#09,#09
	db #09,#09,#09,#09,#09,#08,#08,#08
	db #08,#07,#07,#07,#06,#06,#06,#05
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #02,#01,#00,#ff
.l8089
	db #0d,#0e,#0f,#0f,#0f,#0f,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0a,#0a,#0a,#0a
	db #0a,#09,#09,#09,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#05,#05
	db #05,#04,#04,#04,#03,#03,#03,#02
	db #02,#02,#01,#01,#01,#00,#00
.l80df equ $ + 7
.l80de equ $ + 6
.l80dd equ $ + 5
.l80db equ $ + 3
.l80da equ $ + 2
.l80d9 equ $ + 1
	db #ff,#02,#01
	dw l8089
	db #00,#02,#01
.l80e0
	dw l805d
.l80e2
	db #00
.l80e3
	ld a,(l802a)
	and #01
	jp z,l80f8
	ld d,#00
	ld e,#08
	jp z,l80f8
	ld hl,l8000
	call l812d
.l80f8
	ld a,(l802a)
	and #02
	jp z,l810a
	ld d,#02
	ld e,#09
	ld hl,l800a
	call l812d
.l810a
	ld a,(l802a)
	and #04
	jp z,l811c
	ld d,#04
	ld e,#0a
	ld hl,l8014
	call l812d
.l811c
	ld a,(l8025)
	ld c,#07
	call l8142
	ld a,(l8024)
	ld c,#06
	call l8142
	ret
.l812d
	ld a,(hl)
	inc hl
	ld c,e
	inc e
	call l8142
	ld a,(hl)
	inc hl
	ld c,d
	inc d
	call l8142
	ld a,(hl)
	ld c,d
	inc d
	call l8142
	ret
.l8142
;	push af
;	push bc
;	di
;	ld b,#f4
;	out (c),a
;	ld a,#c0
;	ld b,#f6
;	out (c),a
;	xor a
;	out (c),a
;	ld b,#f4
;	out (c),c
;	ld bc,#f680
;	out (c),c
;	out (c),a
;	pop bc
;	pop af
;	ei
	di		; disable interrupt
	push af
	push bc

	ld b,a
	ld a,c
	ld c,b

	ld b,#f4	; PPI Port A Data
	out (c),a	; Send register number to PPI Port A Data

	ld b,#f6	; PPI Port C
	in a,(c)	; read PPI Port C value
	or #c0		; &11000000 - set PSG fonction selection value to "Select PSG register"
	out (c),a	; send value to PPI Port C
	and #3f		; &00111111 - set PSG fonction selection value to "Inactive"
	out (c),a	; send value to PPI Port C

	ld b,#f4	; PPI Port A Data
	out (c),c	; send data to PPI Port A 

	ld b,#f6	; PPI Port C
	ld c,a		; c = "Inactive" = a
	or #80		; &10000000 - set PSG fonction selection value to "Write to selected PSG register"
	out (c),a	; send value to PPI Port C
	out (c),c	; send "Inactive" to PPI Port C

	pop bc
	pop af
	ei		; enable interrupt
	ret
.l8165 equ $ + 1
.l8164
	db #00,#00
.l8166
	ld d,a
	and #0f
	sla a
	ld b,#00
	ld c,a
	ld ix,l81b8
	add ix,bc
	ld a,(ix+#00)
	ld (l8164),a
	ld a,(ix+#01)
	ld (l8165),a
	ld a,d
	and #70
	srl a
	srl a
	srl a
	srl a
	cp #05
	jr z,l81b7
	jr c,l81a7
	or a
	ld hl,l8164
	srl (hl)
	inc hl
	rr (hl)
	cp #06
	jr z,l81b7
	or a
	dec hl
	srl (hl)
	inc hl
	rr (hl)
	jr l81b7
.l81a7
	ld b,a
	ld a,#05
	sub b
	ld b,a
.l81ac
	ld hl,l8165
	sla (hl)
	dec hl
	rl (hl)
	inc hl
	djnz l81ac
.l81b7
	ret
.l81b8
	db #00,#00,#00,#77,#00,#71,#00,#6a
	db #00,#64,#00,#5f,#00,#59,#00,#54
	db #00,#50,#00,#4b,#00,#47,#00,#43
	db #00,#3f,#04,#03,#02,#01,#00
.l81d7
	ld a,(l802a)
	and #01
	ret z
	ld a,(l802d)
	dec a
	ld (l802d),a
	cp #00
	ret nz
	ld a,(l802c)
	ld (l802d),a
	ld hl,(l802e)
	ld a,(hl)
	cp #ff
	ret z
	ld (l8000),a
	inc hl
	ld (l802e),hl
	ld c,#08
	call l8142
	ret
.l8201
	ld a,(l802a)
	and #02
	ret z
	ld a,(l80da)
	dec a
	ld (l80da),a
	cp #00
	ret nz
	ld a,(l80d9)
	ld (l80da),a
	ld hl,(l80db)
	ld a,(hl)
	cp #ff
	ret z
	ld (l800a),a
	inc hl
	ld (l80db),hl
	ld c,#09
	call l8142
	ret
.l822b
	ld a,(l802a)
	and #04
	ret z
	ld a,(l8017)
	cp #00
	ret nz
	ld a,(l80df)
	dec a
	ld (l80df),a
	cp #00
	ret nz
	ld a,(l80de)
	ld (l80df),a
	ld hl,(l80e0)
	ld a,(hl)
	cp #ff
	ret z
	ld (l8014),a
	inc hl
	ld (l80e0),hl
	ld c,#0a
	call l8142
	ret
;
.play_music	;825b
;
	push af
	ld a,(l8027)
	dec a
	ld (l8027),a
	cp #00
	jr z,l8269
	pop af
	ret
.l8269
	push bc
	push de
	push hl
	push ix
	push iy
	ld a,#01
	ld (l8027),a
	call l828a
	call l81d7
	call l8201
	call l822b
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l828a
	ld a,(l8028)
	dec a
	ld (l8028),a
	ret nz
	ld a,(l8029)
	ld (l8028),a
.l8298
	ld a,(l802b)
	and #01
	jp z,l8304
	ld a,(l8003)
	cp #00
	jp nz,l8542
	ld a,(l8004)
	dec a
	ld (l8004),a
	cp #00
	jr z,l82c5
	ld hl,l8007
	cp (hl)
	jp nz,l8304
	jp nc,l8304
	ld a,#00
	ld (l8030),a
	jp l8304
.l82c5
	ld hl,(l8005)
	ld a,(hl)
	cp #00
	jp z,l83e9
	cp #c8
	jp c,l82db
	cp #f0
	jp c,l849a
	jp l8542
.l82db
	ld (l8004),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l8005),hl
	cp #00
	jp nz,l82ef
	call l846d
	jp l8304
.l82ef
	call l8166
	ld a,(l8164)
	ld (l8002),a
	ld a,(l8165)
	ld (l8001),a
	ld hl,l8031
	ld (l802e),hl
.l8304
	ld a,(l802b)
	and #02
	jp z,l8370
	ld a,(l800d)
	cp #00
	jp nz,l8545
	ld a,(l800e)
	dec a
	ld (l800e),a
	cp #00
	jr z,l8331
	ld hl,l8011
	cp (hl)
	jp nz,l8370
	jp nc,l8370
	ld a,#00
	ld (l80dd),a
	jp l8370
.l8331
	ld hl,(l800f)
	ld a,(hl)
	cp #00
	jp z,l8415
	cp #c8
	jp c,l8347
	cp #f0
	jp c,l84da
	jp l8545
.l8347
	ld (l800e),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l800f),hl
	cp #00
	jp nz,l835b
	call l847c
	jp l8370
.l835b
	call l8166
	ld a,(l8164)
	ld (l800c),a
	ld a,(l8165)
	ld (l800b),a
	ld hl,l8089
	ld (l80db),hl
.l8370
	ld a,(l802b)
	and #04
	jp z,l83e5
	ld a,(l8017)
	cp #00
	jp z,l8386
	call l8548
	jp l83e5
.l8386
	ld a,(l8018)
	dec a
	ld (l8018),a
	cp #00
	jr z,l83a3
	ld hl,l801b
	cp (hl)
	jp nz,l83e5
	jp nc,l83e5
	ld a,#00
	ld (l80e2),a
	jp l83e5
.l83a3
	ld hl,(l8019)
	ld a,(hl)
	cp #00
	jp z,l8441
	cp #c8
	jp c,l83bc
	cp #f0
	jp c,l850a
	call l8548
	jp l83e5
.l83bc
	ld (l8018),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l8019),hl
	cp #00
	jp nz,l83d0
	call l848b
	jp l83e5
.l83d0
	call l8166
	ld a,(l8164)
	ld (l8016),a
	ld a,(l8165)
	ld (l8015),a
	ld hl,l805d
	ld (l80e0),hl
.l83e5
	call l80e3
	ret
.l83e9
	ld hl,(l8008)
	ld a,(hl)
	cp #00
	jr nz,l83f9
	inc hl
	ld a,(hl)
	cp #00
	jr z,l840d
	dec hl
	ld a,(hl)
.l83f9
	ld (l8005),a
	inc hl
	ld a,(hl)
	ld (l8006),a
	inc hl
	ld (l8008),hl
	ld a,#01
	ld (l8004),a
	jp l8298
.l840d
	ld hl,l86b8
	ld (l8008),hl
	jr l83e9
.l8415
	ld hl,(l8012)
	ld a,(hl)
	cp #00
	jr nz,l8425
	inc hl
	ld a,(hl)
	cp #00
	jr z,l8439
	dec hl
	ld a,(hl)
.l8425
	ld (l800f),a
	inc hl
	ld a,(hl)
	ld (l8010),a
	inc hl
	ld (l8012),hl
	ld a,#01
	ld (l800e),a
	jp l8304
.l8439
	ld hl,l86e0
	ld (l8012),hl
	jr l8415
.l8441
	ld hl,(l801c)
	ld a,(hl)
	cp #00
	jr nz,l8451
	inc hl
	ld a,(hl)
	cp #00
	jr z,l8465
	dec hl
	ld a,(hl)
.l8451
	ld (l8019),a
	inc hl
	ld a,(hl)
	ld (l801a),a
	inc hl
	ld (l801c),hl
	ld a,#01
	ld (l8018),a
	jp l8370
.l8465
	ld hl,l8702
	ld (l801c),hl
	jr l8441
.l846d
	ld a,(l802a)
	and #01
	ret z
	ld a,#00
	ld (l8002),a
	ld (l8001),a
	ret
.l847c
	ld a,(l802a)
	and #02
	ret z
	ld a,#00
	ld (l800c),a
	ld (l800b),a
	ret
.l848b
	ld a,(l802a)
	and #04
	ret z
	ld a,#00
	ld (l8016),a
	ld (l8015),a
	ret
.l849a
	cp #c8
	jr nz,l84a6
	inc hl
	ld a,(hl)
	ld (l8000),a
	jp l84ce
.l84a6
	cp #da
	jr nz,l84b2
	inc hl
	ld a,(hl)
	ld (l8007),a
	jp l84ce
.l84b2
	cp #de
	jp nz,l84c2
	ld a,#00
	ld (l802a),a
	ld (l802b),a
	jp l84ce
.l84c2
	cp #c9
	jr nz,l84ce
	inc hl
	ld a,(hl)
	ld (l8029),a
	ld (l8028),a
.l84ce
	inc hl
	ld (l8005),hl
	ld a,#01
	ld (l8004),a
	jp l8298
.l84da
	cp #c8
	jr nz,l84e6
	inc hl
	ld a,(hl)
	ld (l800a),a
	jp l84fe
.l84e6
	cp #da
	jr nz,l84f2
	inc hl
	ld a,(hl)
	ld (l8011),a
	jp l84fe
.l84f2
	cp #ca
	jr nz,l84fe
	inc hl
	ld a,(hl)
	ld (l80d9),a
	ld (l80da),a
.l84fe
	inc hl
	ld (l800f),hl
	ld a,#01
	ld (l800e),a
	jp l8304
.l850a
	cp #c8
	jr nz,l8516
	inc hl
	ld a,(hl)
	ld (l8014),a
	jp l852e
.l8516
	cp #da
	jr nz,l8522
	inc hl
	ld a,(hl)
	ld (l801b),a
	jp l852e
.l8522
	cp #ca
	jr nz,l852e
	inc hl
	ld a,(hl)
	ld (l80de),a
	ld (l80df),a
.l852e
	inc hl
	ld (l8019),hl
	ld a,#01
	ld (l8018),a
	jp l8370
.l853a
	dw l8602,l8602,l8602,l8602
.l8542
	jp l8298
.l8545
	jp l8304
.l8548
	ld (l8021),a
	ld a,(l802a)
	and #04
	ret z
	ld a,(l8017)
	cp #00
	jp nz,l85af
	inc hl
	ld a,(hl)
	ld (l8020),a
	inc hl
	ld (l8019),hl
	ld a,(l8021)
	ld (l8017),a
	sub #f0
	sla a
	ld hl,l853a
	ld b,#00
	ld c,a
	add hl,bc
	ld b,h
	ld c,l
	ld a,(bc)
	ld l,a
	inc bc
	ld a,(bc)
	ld h,a
	ld a,(l8025)
	ld (l8026),a
	ld a,(l8014)
	ld (l8023),a
	ld a,(hl)
	cp #00
	jp z,l859d
	ld b,#df
	ld a,(l8025)
	and b
	ld (l8025),a
	ld a,#01
	ld (l8022),a
	jp l85ab
.l859d
	ld b,#fb
	ld a,(l8025)
	and b
	ld (l8025),a
	ld a,#00
	ld (l8022),a
.l85ab
	inc hl
	ld (l801e),hl
.l85af
	ld a,(l8020)
	dec a
	ld (l8020),a
	cp #00
	jp z,l85e2
	ld hl,(l801e)
	ld a,(hl)
	ld (l8014),a
	inc hl
	ld a,(l8022)
	cp #00
	jp z,l85d2
	ld a,(hl)
	ld (l8024),a
	jp l85da
.l85d2
	ld a,(hl)
	ld (l8016),a
	inc hl
	ld (l8015),a
.l85da
	inc hl
	ld (l801e),hl
	call l80e3
	ret
.l85e2
	ld a,(l8026)
	ld (l8025),a
	ld a,(l8023)
	ld (l8014),a
	ld a,#01
	ld (l8018),a
	ld a,#00
	ld (l8017),a
	ld (l8016),a
	ld (l8015),a
	call l80e3
	ret
.l8602
	db #01,#0f,#06,#0a,#06,#08,#06,#06
	db #06,#04,#06,#02,#06,#01,#06,#00
	db #06,#00,#06,#00,#06,#00,#06,#00
	db #06,#00,#06,#00,#06,#00,#06,#00
	db #06,#00,#06,#00,#06,#00,#06,#00
	db #06,#00,#06,#00,#06,#00,#06,#00
	db #06,#00,#06,#00,#06,#00,#06,#00
	db #06,#00,#06,#01,#0f,#01,#0e,#0a
	db #0d,#0f,#0c,#14,#0b,#19,#0a,#1e
	db #0a,#19,#0a,#1e,#0a,#19,#09,#1e
	db #08,#19,#07,#1e,#06,#19,#05,#1e
	db #04,#19,#03,#1e,#02,#19,#01,#1e
	db #01,#19,#00,#1e,#00,#1e
;
.init_music	;l8668
;
	ld a,#07
	ld (l802a),a
	ld (l802b),a
	ld a,#38
	ld (l8025),a
	ld a,#01
	ld (l8004),a
	ld (l800e),a
	ld (l8018),a
	ld a,#02
	ld (l8029),a
	ld (l8028),a
	ld hl,l8736
	ld (l8005),hl
	ld hl,l86ba
	ld (l8008),hl
	ld hl,l884f
	ld (l800f),hl
	ld hl,l86e2
	ld (l8012),hl
	ld hl,l8972
	ld (l8019),hl
	ld hl,l8704
	ld (l801c),hl
	ld a,#00
	ld (l8003),a
	ld (l800d),a
	ld (l8017),a
	ret
.l86b8
	dw l8736
.l86ba
	dw l873f,l873f,l873f,l873f
	dw l873f,l8743,l8743,l87b1
	dw l8743,l8743,l87b1,l8743
	dw l8743,l87f7,l87f7,l8743
	dw l8743,&0000,&0000
.l86e0
	dw l884f
.l86e2
	dw l8858,l885c,l88aa,l88aa
	dw l885c,l88aa,l88aa,l885c
	dw l88aa,l88aa,l890e,l890e
	dw l88aa,l88aa,&0000,&0000
.l8702
	dw l8972
.l8704
	dw l897b,l897b,l897b,l897b
	dw l89c5,l8a05,l8a05,l897b
	dw l897b,l897b,l89c5,l8a05
	dw l8a05,l897b,l897b,l897b
	dw l89c5,l8a05,l8a05,l8a05
	dw l8a05,l8a05,l8a05,&0000
	dw &0000
.l8736
	db #c8,#0a,#c9,#02,#da,#02,#00,#00
	db #00
.l873f
	db #c0,#00,#00,#00
.l8743
	db #12,#56,#03,#56,#03,#56,#06,#56
	db #0c,#55,#06,#53,#09,#55,#03,#4a
	db #15,#4a,#03,#4a,#03,#4c,#03,#51
	db #03,#53,#03,#55,#12,#56,#03,#56
	db #03,#56,#06,#56,#0c,#58,#06,#5a
	db #21,#55,#03,#4a,#03,#4c,#03,#51
	db #03,#53,#03,#55,#12,#56,#03,#56
	db #03,#56,#06,#56,#0c,#55,#06,#53
	db #09,#55,#03,#5a,#1e,#5a,#06,#5a
	db #12,#58,#03,#58,#03,#58,#06,#58
	db #0c,#5c,#06,#58,#12,#5a,#03,#5a
	db #03,#5a,#06,#5a,#0c,#61,#06,#5a
	db #24,#5c,#04,#58,#04,#58,#04,#58
	db #24,#5a,#0c,#00,#00,#00
.l87b1
	db #24,#55,#0c,#53,#18,#51,#0c,#53
	db #0c,#55,#24,#53,#0c,#51,#18,#4c
	db #0c,#51,#0c,#53,#24,#51,#0c,#4c
	db #18,#4a,#0c,#49,#0c,#4a,#60,#4c
	db #24,#55,#0c,#53,#18,#51,#0c,#53
	db #0c,#55,#24,#53,#0c,#51,#18,#4c
	db #0c,#51,#0c,#53,#18,#51,#0c,#4c
	db #0c,#4a,#18,#4c,#0c,#51,#0c,#53
	db #48,#51,#18,#00,#00,#00
.l87f7
	db #12,#55,#03,#55,#03,#55,#06,#55
	db #0c,#53,#06,#51,#09,#53,#03,#4c
	db #1e,#4c,#06,#53,#12,#51,#03,#56
	db #03,#56,#06,#56,#0c,#55,#06,#53
	db #09,#55,#03,#4c,#24,#4c,#12,#55
	db #03,#55,#03,#55,#06,#55,#0c,#53
	db #06,#51,#09,#53,#03,#4c,#1e,#4c
	db #06,#4c,#12,#51,#03,#56,#03,#56
	db #06,#56,#0c,#55,#06,#56,#12,#53
	db #03,#58,#03,#58,#06,#58,#0c,#53
	db #06,#58,#30,#5a,#30,#00,#00,#00
.l884f
	db #c8,#0a,#ca,#04,#da,#02,#00,#00
	db #00
.l8858
	db #c0,#00,#00,#00
.l885c
	db #24,#2a,#0c,#25,#18,#2a,#0c,#2c
	db #0c,#31,#24,#28,#0c,#23,#18,#28
	db #0c,#2a,#0c,#2c,#24,#2a,#0c,#25
	db #18,#2a,#0c,#2c,#0c,#31,#24,#35
	db #0c,#2c,#0c,#35,#0c,#33,#0c,#31
	db #0c,#2c,#24,#2a,#0c,#25,#18,#2a
	db #0c,#2c,#0c,#31,#24,#28,#0c,#23
	db #18,#28,#0c,#2a,#0c,#2c,#24,#2a
	db #0c,#25,#18,#28,#0c,#2a,#0c,#2c
	db #48,#2a,#18,#00,#00,#00
.l88aa
	db #ca,#01,#0c,#26,#0c,#21,#0c,#26
	db #06,#21,#06,#1c,#0c,#2a,#0c,#25
	db #0c,#2a,#06,#35,#06,#35,#0c,#33
	db #0c,#2a,#0c,#33,#06,#31,#06,#2c
	db #0c,#2a,#0c,#25,#0c,#2a,#09,#2a
	db #03,#28,#0c,#26,#0c,#21,#0c,#26
	db #06,#31,#06,#2c,#0c,#2a,#0c,#25
	db #0c,#2a,#06,#25,#06,#25,#0c,#28
	db #0c,#28,#0c,#28,#0c,#28,#0c,#26
	db #0c,#26,#0c,#26,#0c,#26,#0c,#28
	db #0c,#28,#0c,#28,#04,#28,#04,#28
	db #04,#28,#0c,#2a,#0c,#25,#0c,#2a
	db #0c,#25,#00,#00
.l890e
	db #0c
	db #2a,#0c,#25,#0c,#2a,#06,#25,#06
	db #2a,#0c,#28,#0c,#23,#0c,#28,#06
	db #23,#06,#28,#0c,#26,#0c,#21,#0c
	db #26,#06,#21,#06,#26,#0c,#25,#0c
	db #1c,#0c,#25,#06,#1c,#06,#2c,#0c
	db #2a,#0c,#25,#0c,#2a,#06,#25,#06
	db #2a,#0c,#28,#0c,#23,#0c,#28,#06
	db #23,#06,#28,#0c,#26,#0c,#21,#0c
	db #26,#06,#21,#06,#26,#0c,#28,#0c
	db #23,#0c,#28,#06,#23,#06,#28,#0c
	db #2a,#0c,#25,#0c,#2a,#06,#25,#06
	db #25,#0c,#2a,#0c,#25,#0c,#2a,#0c
	db #25,#00,#00
.l8972
	db #c8,#0a,#ca,#02,#da,#02,#00,#00
	db #00
.l897b
	db #f0,#0c,#f0,#04,#f0,#04,#f0,#04
	db #f0,#0c,#f0,#04,#f0,#04,#f0,#04
	db #f0,#0c,#f0,#04,#f0,#04,#f0,#04
	db #f0,#04,#f0,#04,#f0,#04,#f0,#04
	db #f0,#04,#f0,#04,#f0,#0c,#f0,#04
	db #f0,#04,#f0,#04,#f0,#0c,#f0,#04
	db #f0,#04,#f0,#04,#f0,#0c,#f0,#04
	db #f0,#04,#f0,#04,#f0,#04,#f0,#04
	db #f0,#04,#f0,#04,#f0,#04,#f0,#04
	db #00,#00
.l89c5
	db #f0,#0c,#f0,#04,#f0,#04,#f0,#04
	db #f0,#0c,#f0,#04,#f0,#04,#f0,#04
	db #f0,#0c,#f0,#04,#f0,#04,#f0,#04
	db #f0,#04,#f0,#04,#f0,#04,#f0,#04
	db #f0,#04,#f0,#04,#f0,#0c,#f0,#04
	db #f0,#04,#f0,#04,#f0,#0c,#f0,#04
	db #f0,#04,#f0,#04,#f0,#0c,#f0,#04
	db #f0,#04,#f0,#04,#f0,#18,#00,#00
.l8a05
	db #f0,#06,#f0,#03,#f0,#03,#f0,#06
	db #f0,#03,#f0,#03,#f0,#06,#f0,#03
	db #f0,#03,#f0,#03,#f0,#03,#f0,#03
	db #f0,#03,#f0,#06,#f0,#03,#f0,#03
	db #f0,#06,#f0,#03,#f0,#03,#f0,#06
	db #f0,#03,#f0,#03,#f0,#03,#f0,#03
	db #f0,#03,#f0,#03,#f0,#06,#f0,#03
	db #f0,#03,#f0,#06,#f0,#03,#f0,#03
	db #f0,#06,#f0,#03,#f0,#03,#f0,#03
	db #f0,#03,#f0,#03,#f0,#03,#f0,#06
	db #f0,#03,#f0,#03,#f0,#06,#f0,#03
	db #f0,#03,#f0,#06,#f0,#03,#f0,#03
	db #f0,#03,#f0,#03,#f0,#03,#f0,#03
	db #f0,#06,#f0,#03,#f0,#03,#f0,#06
	db #f0,#03,#f0,#03,#f0,#06,#f0,#03
	db #f0,#03,#f0,#03,#f0,#03,#f0,#03
	db #f0,#03,#f0,#06,#f0,#03,#f0,#03
	db #f0,#06,#f0,#03,#f0,#03,#f0,#06
	db #f0,#03,#f0,#03,#f0,#03,#f0,#03
	db #f0,#03,#f0,#03,#f0,#06,#f0,#03
	db #f0,#03,#f0,#06,#f0,#03,#f0,#03
	db #f0,#06,#f0,#03,#f0,#03,#f0,#03
	db #f0,#03,#f0,#03,#f0,#03,#f0,#06
	db #f0,#03,#f0,#03,#f0,#06,#f0,#03
	db #f0,#03,#f0,#06,#f0,#03,#f0,#03
	db #f0,#03,#f0,#03,#f0,#03,#f0,#03
	db #f0,#06,#f0,#03,#f0,#03,#f0,#06
	db #f0,#03,#f0,#03,#f0,#06,#f0,#03
	db #f0,#03,#f0,#03,#f0,#03,#f0,#03
	db #f0,#03,#f0,#06,#f0,#03,#f0,#03
	db #f0,#06,#f0,#03,#f0,#03,#f0,#06
	db #f0,#03,#f0,#03,#f0,#03,#f0,#03
	db #f0,#03,#f0,#03,#00,#00
;
; #8d26
; xor a
; ld (#802a),a
; ld (#802b),a
; jp l8668	init music
;
.music_info
	db "Ikari Warrior (1986)(Elite Systems Ltd.)(David Sher)",0
	db "",0

	read "music_end.asm"
