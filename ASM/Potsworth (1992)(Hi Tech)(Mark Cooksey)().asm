; Music of Potsworth (1992)(Hi Tech)(Mark Cooksey)()
; Ripped by Megachur the 02/09/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "POTSWORT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #7592
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

	jp l7baf	; init music
	jp l7d37	; init music 1
	jp l7e26	; init music 2
	jp l762c	; play music
.l75a5 equ $ + 7
.l75a3 equ $ + 5
.l75a2 equ $ + 4
.l75a1 equ $ + 3
.l75a0 equ $ + 2
.l759f equ $ + 1
.l759e
	db #00,#00,#00,#00,#01,#00,#00,#00
.l75a7 equ $ + 1
	db #00,#00,#00,#02,#01
.l75ad equ $ + 2
.l75ab
	dw l7b6f,l7b6f
	db #00,#00,#02,#01,#00,#00,#00,#00
.l75be equ $ + 7
	db #02,#01,#00,#00,#00,#00,#00,#00
.l75c1 equ $ + 2
.l75bf
	db #00,#01,#02,#00,#00,#00,#00,#00
.l75ce equ $ + 7
.l75cd equ $ + 6
.l75cc equ $ + 5
.l75cb equ $ + 4
.l75ca equ $ + 3
.l75c9 equ $ + 2
.l75c8 equ $ + 1
.l75c7
	db #01,#00,#00,#00,#00,#00,#00,#01
.l75d3 equ $ + 4
.l75d1 equ $ + 2
.l75cf
	db #00,#00,#00,#00,#00,#00,#02,#01
.l75d9 equ $ + 2
.l75d7
	dw l7b6f,l7b6f
	db #00,#00,#02,#01,#00,#00,#00,#00
.l75ea equ $ + 7
	db #02,#01,#00,#00,#00,#00,#00,#00
.l75ed equ $ + 2
.l75eb
	db #00,#01,#02,#00,#00,#00,#00,#00
.l75fa equ $ + 7
.l75f9 equ $ + 6
.l75f8 equ $ + 5
.l75f7 equ $ + 4
.l75f6 equ $ + 3
.l75f5 equ $ + 2
.l75f4 equ $ + 1
.l75f3
	db #02,#00,#00,#00,#00,#00,#00,#01
.l75ff equ $ + 4
.l75fd equ $ + 2
.l75fb
	db #00,#00,#00,#00,#00,#00,#02,#01
.l7605 equ $ + 2
.l7603
	dw l7b6f,l7b6f
	db #00,#00,#02,#01,#00,#00,#00,#00
.l7616 equ $ + 7
	db #02,#01,#00,#00,#00,#00,#00,#00
.l7619 equ $ + 2
.l7617
	db #00,#01,#02,#00,#00,#00,#00,#00
.l7626 equ $ + 7
.l7625 equ $ + 6
.l7623 equ $ + 4
.l7622 equ $ + 3
.l7621 equ $ + 2
.l7620 equ $ + 1
.l761f
	db #02,#00,#00,#00,#00,#00,#01,#01
.l762b equ $ + 4
.l762a equ $ + 3
.l7629 equ $ + 2
.l7628 equ $ + 1
.l7627
	db #02,#00,#00,#00,#00
;
.play_music
.l762c
;
	push af
	ld a,(l7625)
	dec a
	ld (l7625),a
	jr z,l7638
	pop af
	ret
.l7638
	push bc
	push de
	push hl
	push ix
	ld a,#01
	ld (l7625),a
	call l76ad
	call l77ec
	call l786a
	ld a,(l75a1)
	and a
	jp z,l7664
	ld a,(l75c7)
	dec a
	ld (l75c7),a
	jr nz,l7664
	ld a,(l75c1)
	ld (l75c7),a
	call l7a0f
.l7664
	call l77f8
	call l786a
	ld a,(l75cd)
	and a
	jp z,l7684
	ld a,(l75f3)
	dec a
	ld (l75f3),a
	jp nz,l7684
	ld a,(l75ed)
	ld (l75f3),a
	call l7a0f
.l7684
	call l7804
	call l786a
	ld a,(l75f9)
	and a
	jp z,l76a3
	ld a,(l761f)
	dec a
	ld (l761f),a
	jr nz,l76a3
	ld a,(l7619)
	ld (l761f),a
	call l7a0f
.l76a3
	call l7ae0
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l76ad
	ld a,(l7626)
	dec a
	ld (l7626),a
	ret nz
	ld a,(l7627)
	ld (l7626),a
.l76bb
	ld a,(l7629)
	and #01
	jp z,l7721
	call l77ec
	ld a,(l75a1)
	and a
	jp nz,l796d
	ld a,(l75a2)
	dec a
	ld (l75a2),a
	jr z,l76d9
	jp l7721
.l76d9
	ld hl,(l75a3)
	ld a,(hl)
	and a
	jp z,l7824
	cp #c8
	jp c,l76ee
	cp #f0
	jp c,l789b
	jp l796d
.l76ee
	ld (l75a2),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l75a3),hl
	and a
	jp nz,l76fd
	jr l7721
.l76fd
	call l7a5a
	ld a,(l7a58)
	ld (l75a0),a
	ld (l75c8),a
	ld (l75be),a
	ld a,(l7a59)
	ld (l759f),a
	ld (l75bf),a
	ld (l75c9),a
	ld hl,(l75ad)
	ld (l75ab),hl
	call l7810
.l7721
	ld a,(l7629)
	and #02
	jp z,l7787
	call l77f8
	ld a,(l75cd)
	and a
	jp nz,l7976
	ld a,(l75ce)
	dec a
	ld (l75ce),a
	jr z,l773f
	jp l7787
.l773f
	ld hl,(l75cf)
	ld a,(hl)
	and a
	jp z,l782a
	cp #c8
	jp c,l7754
	cp #f0
	jp c,l78a1
	jp l7976
.l7754
	ld (l75ce),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l75cf),hl
	and a
	jp nz,l7763
	jr l7787
.l7763
	call l7a5a
	ld a,(l7a58)
	ld (l75cc),a
	ld (l75f4),a
	ld (l75ea),a
	ld a,(l7a59)
	ld (l75cb),a
	ld (l75f5),a
	ld (l75eb),a
	ld hl,(l75d9)
	ld (l75d7),hl
	call l7810
.l7787
	ld a,(l7629)
	and #04
	jp z,l77e8
	call l7804
	ld a,(l75f9)
	and a
	jp nz,l797f
	ld a,(l75fa)
	dec a
	ld (l75fa),a
	jr nz,l77e8
	ld hl,(l75fb)
	ld a,(hl)
	and a
	jp z,l7830
	cp #c8
	jp c,l77b7
	cp #f0
	jp c,l78a7
	jp l797f
.l77b7
	ld (l75fa),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l75fb),hl
	and a
	jp z,l77e8
	call l7a5a
	ld a,(l7a58)
	ld (l75f8),a
	ld (l7620),a
	ld (l7616),a
	ld a,(l7a59)
	ld (l75f7),a
	ld (l7621),a
	ld (l7617),a
	ld hl,(l7605)
	ld (l7603),hl
	call l7810
.l77e8
	call l7ae0
	ret
.l77ec
	push af
	ld ix,l759e
	ld a,#01
	ld (l762a),a
	pop af
	ret
.l77f8
	push af
	ld ix,l75ca
	ld a,#02
	ld (l762a),a
	pop af
	ret
.l7804
	push af
	ld ix,l75f6
	ld a,#04
	ld (l762a),a
	pop af
	ret
.l7810
	xor a
	ld (ix+#1f),a
	ld (ix+#17),a
	ld a,(ix+#15)
	ld (ix+#16),a
	ld a,(ix+#1b)
	ld (ix+#1c),a
	ret
.l7824
	call l7836
	jp l76bb
.l782a
	call l7836
	jp l7721
.l7830
	call l7836
	jp l7787
.l7836
	ld l,(ix+#07)
	ld h,(ix+#08)
	ld a,(hl)
	and a
	jr nz,l7847
	inc hl
	ld a,(hl)
	and a
	jr z,l785c
	dec hl
	ld a,(hl)
.l7847
	ld (ix+#05),a
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#07),l
	ld (ix+#08),h
	ld a,#01
	ld (ix+#04),a
	ret
.l785c
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld (ix+#07),l
	ld (ix+#08),h
	jr l7836
.l786a
	ld a,(l762a)
	ld b,a
	ld a,(l7628)
	and b
	ret z
	ld a,(ix+#03)
	and a
	ret nz
	ld a,(ix+#0c)
	dec a
	ld (ix+#0c),a
	ret nz
	ld a,(ix+#0b)
	ld (ix+#0c),a
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	ld a,(hl)
	cp #ff
	ret z
	ld (ix+#00),a
	inc hl
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l789b
	call l78ad
	jp l76bb
.l78a1
	call l78ad
	jp l7721
.l78a7
	call l78ad
	jp l7787
.l78ad
	ld a,(hl)
	cp #c8
	jp nz,l78b3
.l78b3
	cp #c9
	jp nz,l78c3
	inc hl
	ld a,(hl)
	ld (l7627),a
	ld (l7626),a
	jp l7960
.l78c3
	cp #ca
	jp nz,l78d5
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	inc hl
	ld a,(hl)
	ld (ix+#10),a
	jp l7960
.l78d5
	cp #cb
	jp nz,l78e2
	inc hl
	ld a,(hl)
	ld (ix+#0b),a
	ld (ix+#0c),a
.l78e2
	cp #dd
	jp nz,l78f1
	inc hl
	ld a,(hl)
	ld (ix+#23),a
	ld a,#01
	ld (ix+#29),a
.l78f1
	cp #d0
	jp nz,l7912
	inc hl
	ld a,(hl)
	ld (ix+#14),a
	ld (ix+#13),a
	inc hl
	ld a,(hl)
	ld (ix+#15),a
	ld (ix+#16),a
	xor a
	ld (ix+#17),a
	ld a,#01
	ld (ix+#12),a
	jp l7960
.l7912
	cp #d5
	jp nz,l791e
	xor a
	ld (ix+#12),a
	jp l7960
.l791e
	cp #d1
	jp nz,l7949
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	ld (ix+#1a),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	ld (ix+#1c),a
	inc hl
	ld a,(hl)
	ld (ix+#1d),a
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	xor a
	ld (ix+#1f),a
	ld a,#01
	ld (ix+#18),a
	jp l7960
.l7949
	cp #d6
	jp nz,l7954
	xor a
	ld (ix+#18),a
	jr l7960
.l7954
	cp #de
	jp nz,l7960
	xor a
	ld (l7628),a
	ld (l7629),a
.l7960
	inc hl
	ld (ix+#05),l
	ld (ix+#06),h
	ld a,#01
	ld (ix+#04),a
	ret
.l796d
	call l77ec
	call l7988
	jp l7721
.l7976
	call l77f8
	call l7988
	jp l7787
.l797f
	call l7804
	call l7988
	jp l77e8
.l7988
	ld (l762b),a
	ld a,(l7628)
	ld b,a
	ld a,(l762a)
	and b
	ret z
	ld a,(ix+#03)
	and a
	jp nz,l7a04
	inc hl
	ld a,(hl)
	ld (ix+#22),a
	inc hl
	ld (ix+#05),l
	ld (ix+#06),h
	ld a,(l762b)
	ld (ix+#03),a
	sub #f0
	sla a
	ld hl,l7b61
	ld b,#00
	ld c,a
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld h,b
	ld l,c
	ld a,(l7623)
	ld (ix+#27),a
	ld a,(ix+#00)
	ld (ix+#26),a
	ld a,(hl)
	and a
	jp z,l79eb
	ld a,(l762a)
	sla a
	sla a
	sla a
	ld b,a
	ld a,#ff
	xor b
	ld b,a
	ld a,(l7623)
	and b
	ld (l7623),a
	ld a,#01
	ld (ix+#28),a
	jp l79fd
.l79eb
	ld b,#ff
	ld a,(l762a)
	xor b
	ld b,a
	ld a,(l7623)
	and b
	ld (l7623),a
	xor a
	ld (ix+#28),a
.l79fd
	inc hl
	ld (ix+#24),l
	ld (ix+#25),h
.l7a04
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jp z,l7a3c
	ret
.l7a0f
	ld l,(ix+#24)
	ld h,(ix+#25)
	ld a,(hl)
	cp #ff
	jr z,l7a35
	ld (ix+#00),a
	inc hl
	ld a,(ix+#28)
	and a
	jp z,l7a2b
	ld a,(hl)
	ld (l7622),a
	jr l7a34
.l7a2b
	ld a,(hl)
	ld (ix+#02),a
	inc hl
	ld a,(hl)
	ld (ix+#01),a
.l7a34
	inc hl
.l7a35
	ld (ix+#24),l
	ld (ix+#25),h
	ret
.l7a3c
	ld a,(ix+#27)
	ld (l7623),a
	ld a,(ix+#26)
	ld (ix+#00),a
	ld a,#01
	ld (ix+#04),a
	xor a
	ld (ix+#03),a
	ld (ix+#01),a
	ld (ix+#02),a
	ret
.l7a58
	nop
.l7a59
	nop
.l7a5a
	ld d,a
	and #0f
	sla a
	ld b,#00
	ld c,a
	push ix
	ld ix,l7ab0
	add ix,bc
	ld a,(ix+#00)
	ld (l7a58),a
	ld a,(ix+#01)
	ld (l7a59),a
	ld a,d
	and #70
	srl a
	srl a
	srl a
	srl a
	cp #05
	jr z,l7aad
	jr c,l7a9d
	or a
	ld hl,l7a58
	srl (hl)
	inc hl
	rr (hl)
	cp #06
	jr z,l7aad
	or a
	dec hl
	srl (hl)
	inc hl
	rr (hl)
	jr l7aad
.l7a9d
	ld b,a
	ld a,#05
	sub b
	ld b,a
.l7aa2
	ld hl,l7a59
	sla (hl)
	dec hl
	rl (hl)
	inc hl
	djnz l7aa2
.l7aad
	pop ix
	ret
.l7ab0
	db #00,#00,#00,#77,#00,#71,#00,#6a
	db #00,#64,#00,#5f,#00,#59,#00,#54
	db #00,#50,#00,#4b,#00,#47,#00,#43
	db #00,#3f
	db #04,#03,#02,#01,#00
	ld a,(l7628)
	ld b,a
	ld a,(l762a)
	and b
	ret z
	xor a
	ld (ix+#01),a
	ld (ix+#02),a
	ret
.l7ae0
	ld a,(l7628)
	and #01
	jp z,l7af5
	ld d,#00
	ld e,#08
	jp z,l7af5
	ld hl,l759e
	call l7b2a
.l7af5
	ld a,(l7628)
	and #02
	jp z,l7b07
	ld d,#02
	ld e,#09
	ld hl,l75ca
	call l7b2a
.l7b07
	ld a,(l7628)
	and #04
	jp z,l7b19
	ld d,#04
	ld e,#0a
	ld hl,l75f6
	call l7b2a
.l7b19
	ld a,(l7623)
	ld c,#07
	call l7b3f
	ld a,(l7622)
	ld c,#06
	call l7b3f
	ret
.l7b2a
	ld a,(hl)
	inc hl
	ld c,e
	inc e
	call l7b3f
	ld a,(hl)
	inc hl
	ld c,d
	inc d
	call l7b3f
	ld a,(hl)
	ld c,d
	inc d
	call l7b3f
	ret
.l7b3f
	push af
	push bc
	di
	ld b,a
	ld a,c
	ld c,b
	ld b,#f4
	out (c),a
	ld a,#c0
	ld b,#f6
	out (c),a
	xor a
	out (c),a
	ld b,#f4
	out (c),c
	ld bc,#f680
	out (c),c
	out (c),a
	pop bc
	pop af
	nop
	ret
.l7b61
	dw l7b69,l7b69,l7b6b,l7b6d
.l7b6f equ $ + 6
.l7b6d equ $ + 4
.l7b6b equ $ + 2
.l7b69
	db #01,#ff,#01,#ff,#00,#ff,#0a,#09
	db #08,#07,#07,#06,#06,#06,#05,#05
	db #05,#04,#04,#04,#04,#03,#03,#03
	db #03,#02,#02,#02,#02,#02,#02,#01
	db #01,#01,#01,#01,#00,#ff,#0c,#0b
	db #0b,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #03,#03,#03,#02,#02,#02,#01,#01
	db #01,#01,#01,#01,#00,#ff
.l7baf
	ld hl,l7c29
	ld (l75a3),hl
	ld hl,l7c13
	ld (l75a5),hl
	ld hl,l7c11
	ld (l75a7),hl
	ld hl,l7c9f
	ld (l75cf),hl
	ld hl,l7c1b
	ld (l75d1),hl
	ld hl,l7c19
	ld (l75d3),hl
	ld hl,l7ceb
	ld (l75fb),hl
	ld hl,l7c23
	ld (l75fd),hl
	ld hl,l7c21
	ld (l75ff),hl
.l7be5
	ld a,#07
	ld (l7628),a
	ld (l7629),a
	ld a,#38
	ld (l7623),a
	ld a,#01
	ld (l75a2),a
	ld (l75ce),a
	ld (l75fa),a
	ld a,#02
	ld (l7626),a
	ld (l7627),a
	ld a,#00
	ld (l75a1),a
	ld (l75cd),a
	ld (l75f9),a
	ret
.l7c13 equ $ + 2
.l7c11
	dw l7c29,l7c34,#0000,#0000
.l7c1b equ $ + 2
.l7c19
	dw l7c9f,l7ca8,#0000,#0000
.l7c23 equ $ + 2
.l7c21
	dw l7ceb,l7cf4,#0000,#0000
.l7c29
	db #c9,#01,#cb,#02,#ca,#6f,#7b,#dd
.l7c34 equ $ + 3
	db #01,#00,#00,#08,#55,#08,#56,#08
	db #58,#08,#55,#10,#53,#10,#58,#08
	db #51,#08,#53,#08,#55,#08,#51,#10
	db #4c,#10,#55,#08,#4a,#08,#4c,#08
	db #51,#08,#53,#08,#55,#08,#51,#08
	db #48,#08,#45,#08,#43,#08,#45,#08
	db #46,#08,#48,#08,#4a,#08,#4c,#08
	db #51,#08,#53,#08,#55,#08,#56,#08
	db #58,#08,#55,#10,#53,#10,#58,#08
	db #51,#08,#53,#08,#55,#08,#51,#10
	db #4c,#10,#55,#08,#4a,#08,#4c,#08
	db #51,#08,#53,#08,#55,#08,#51,#08
	db #48,#08,#55,#10,#53,#10,#58,#20
.l7c9f equ $ + 6
	db #51,#60,#00,#de,#00,#00,#cb,#02
.l7ca8 equ $ + 7
	db #dd,#01,#ca,#6f,#7b,#00,#00,#10
	db #31,#10,#41,#10,#2c,#10,#3c,#10
	db #2a,#10,#3a,#10,#28,#10,#38,#10
	db #26,#10,#36,#10,#25,#10,#31,#10
	db #23,#10,#33,#10,#28,#10,#38,#10
	db #31,#10,#41,#10,#2c,#10,#3c,#10
	db #2a,#10,#3a,#10,#28,#10,#38,#10
	db #26,#10,#36,#10,#25,#10,#31,#10
	db #33,#10,#28,#20,#31,#60,#00,#de
.l7ceb equ $ + 2
	db #00,#00,#cb,#02,#dd,#01,#ca,#6f
.l7cf4 equ $ + 3
	db #7b,#00,#00,#10,#00,#10,#45,#10
	db #00,#10,#43,#10,#00,#10,#41,#10
	db #00,#10,#3c,#10,#00,#10,#3a,#10
	db #00,#10,#35,#10,#00,#10,#36,#10
	db #00,#10,#3c,#10,#00,#10,#45,#10
	db #00,#10,#43,#10,#00,#10,#41,#10
	db #00,#10,#3c,#10,#00,#10,#3a,#10
	db #00,#10,#35,#10,#36,#10,#36,#20
	db #35,#60,#00,#de,#00,#00
.l7d37
	ld hl,l7d88
	ld (l75a3),hl
	ld hl,l7d72
	ld (l75a5),hl
	ld hl,l7d70
	ld (l75a7),hl
	ld hl,l7dbc
	ld (l75cf),hl
	ld hl,l7d7a
	ld (l75d1),hl
	ld hl,l7d78
	ld (l75d3),hl
	ld hl,l7dec
	ld (l75fb),hl
	ld hl,l7d82
	ld (l75fd),hl
	ld hl,l7d80
	ld (l75ff),hl
	jp l7be5
.l7d72 equ $ + 2
.l7d70
	dw l7d88,l7d93,#0000,#0000
.l7d7a equ $ + 2
.l7d78
	dw l7dbc,l7dc3,#0000,#0000
.l7d82 equ $ + 2
.l7d80
	dw l7dec,l7df3,#0000,#0000
.l7d88
	db #c9,#01,#cb,#03,#ca,#6f,#7b,#dd
.l7d93 equ $ + 3
	db #01,#00,#00,#20,#58,#10,#56,#10
	db #55,#20,#53,#20,#58,#20,#61,#10
	db #5c,#10,#5a,#20,#58,#20,#55,#20
	db #58,#10,#56,#10,#55,#20,#53,#20
	db #58,#20,#5a,#20,#5c,#30,#61,#60
.l7dbc equ $ + 4
	db #00,#de,#00,#00,#cb,#03,#ca,#6f
.l7dc3 equ $ + 3
	db #7b,#00,#00,#20,#55,#10,#53,#10
	db #51,#20,#4c,#20,#4c,#20,#5a,#10
	db #58,#10,#56,#20,#55,#20,#51,#20
	db #55,#10,#53,#10,#51,#20,#4c,#20
	db #4c,#20,#56,#20,#58,#30,#55,#60
.l7dec equ $ + 4
	db #00,#de,#00,#00,#cb,#03,#ca,#6f
.l7df3 equ $ + 3
	db #7b,#00,#00,#10,#21,#10,#28,#20
	db #31,#10,#23,#10,#28,#20,#33,#10
	db #26,#10,#2a,#20,#36,#10,#21,#10
	db #28,#20,#31,#10,#21,#10,#28,#20
	db #31,#10,#23,#10,#28,#20,#33,#10
	db #26,#10,#31,#10,#28,#10,#18,#30
	db #21,#60,#00,#de,#00,#00
;
;.init_music
.l7e26
;
	ld hl,l7ea7
	ld (l75a3),hl
	ld hl,l7e61
	ld (l75a5),hl
	ld hl,l7e5f
	ld (l75a7),hl
	ld hl,l7f4c
	ld (l75cf),hl
	ld hl,l7e71
	ld (l75d1),hl
	ld hl,l7e6f
	ld (l75d3),hl
	ld hl,l7faa
	ld (l75fb),hl
	ld hl,l7e8d
	ld (l75fd),hl
	ld hl,l7e8b
	ld (l75ff),hl
	jp l7be5
.l7e61 equ $ + 2
.l7e5f
	dw l7ea7,l7eb0,l7eb0,l7f16
	dw l7eb0,l7fa5,#0000,#0000
.l7e71 equ $ + 2
.l7e6f
	dw l7f4c,l7f53,l7f53,l7f65
	dw l7f53,l7f53,l7f65,l7f85
	dw l7f53,l7f53,l7f65,l7fa5
.l7e8d equ $ + 6
.l7e8b equ $ + 4
	dw #0000,#0000,l7faa,l7fb1
	dw l7fb1,l7fc3,l7fb1,l7fb1
	dw l7fc3,l7fdf,l7fb1,l7fb1
	dw l7fc3,l7fa5,#0000,#0000
.l7ea7
	db #c9,#01,#cb,#02,#ca,#6f,#7b,#00
.l7eb0 equ $ + 1
	db #00,#10,#51,#08,#53,#10,#55,#08
	db #58,#10,#5a,#08,#61,#10,#5a,#08
	db #58,#10,#55,#08,#51,#10,#55,#08
	db #51,#10,#53,#08,#48,#10,#4a,#08
	db #4c,#10,#51,#08,#53,#10,#55,#08
	db #58,#10,#5a,#08,#61,#10,#5a,#08
	db #58,#10,#55,#08,#51,#10,#55,#08
	db #51,#30,#53,#10,#51,#08,#53,#10
	db #55,#08,#58,#10,#5a,#08,#61,#10
	db #5a,#08,#58,#18,#55,#10,#55,#08
	db #51,#30,#53,#10,#55,#08,#58,#10
	db #56,#08,#55,#10,#53,#08,#56,#10
.l7f16 equ $ + 7
	db #55,#08,#53,#60,#51,#00,#00,#10
	db #5a,#08,#61,#10,#5c,#08,#5a,#10
	db #58,#08,#5c,#10,#5a,#08,#58,#10
	db #56,#08,#5a,#10,#58,#08,#56,#30
	db #55,#10,#5a,#08,#61,#10,#5c,#08
	db #5a,#10,#58,#08,#5c,#10,#5a,#08
	db #58,#10,#57,#08,#57,#10,#58,#08
.l7f4c equ $ + 5
	db #5a,#30,#58,#00,#00,#cb,#02,#ca
.l7f53 equ $ + 4
	db #6f,#7b,#00,#00,#18,#31,#18,#35
	db #18,#2a,#18,#3a,#18,#33,#18,#36
.l7f65 equ $ + 6
	db #18,#28,#18,#33,#00,#00,#18,#31
	db #18,#35,#18,#2b,#18,#35,#18,#2a
	db #18,#36,#18,#29,#18,#36,#18,#28
	db #18,#35,#18,#28,#18,#33,#18,#31
.l7f85 equ $ + 6
	db #18,#28,#30,#31,#00,#00,#18,#36
	db #18,#3a,#18,#35,#18,#38,#18,#33
	db #18,#38,#18,#31,#18,#35,#18,#36
	db #18,#3a,#18,#35,#18,#38,#18,#33
.l7fa5 equ $ + 6
	db #18,#37,#30,#28,#00,#00,#60,#00
.l7faa equ $ + 3
	db #de,#00,#00,#cb,#02,#ca,#8f,#7b
.l7fb1 equ $ + 2
	db #00,#00,#18,#00,#18,#38,#18,#00
	db #18,#41,#18,#00,#18,#3a,#18,#00
.l7fc3 equ $ + 4
	db #18,#36,#00,#00,#18,#00,#18,#38
	db #18,#00,#18,#38,#18,#00,#18,#3a
	db #18,#00,#18,#39,#18,#00,#18,#38
	db #18,#00,#18,#36,#60,#48,#00,#00
.l7fdf
	db #18,#00,#18,#41,#18,#00,#18,#3c
	db #18,#00,#18,#3c,#18,#00,#18,#38
	db #18,#00,#18,#41,#18,#00,#18,#3c
	db #18,#00,#18,#3a,#30,#3c,#00,#00
	db #00
	db #3f,#3f,#3f,#3f,#3f,#3f,#3f,#3f
	db #3f,#3f,#3f,#3f,#3f,#3f,#3f,#3f
	db #3f,#3f,#3f,#3f,#3f,#3f,#3f,#3f
	db #3f,#3f,#3f,#50,#3f,#3f,#3f,#3f
	db #30,#39,#4f,#49,#4c,#4b,#4d,#3f
	db #38,#37,#55,#59,#48,#4a,#4e,#3f
	db #36,#35,#52,#54,#47,#46,#42,#56
	db #34,#33,#45,#57,#53,#44,#43,#58
	db #31,#32,#3f,#51,#3f,#41,#3f,#5a
	db #3f,#3f,#3f,#3f,#3f,#3f,#3f,#3f
	db #54,#5c,#4c,#4e,#59,#43,#54,#56
	db #47,#45,#58,#55,#57,#53,#40,#4b
;
init_music_0	equ l7e26
init_music_1	equ l7baf
init_music_2	equ l7d37
init_music_3	equ l7e26
;
.init_music	; added by Megachur
;
	or a
	jp z,init_music_0
	dec a
	jp z,init_music_1
	dec a
	jp z,init_music_2
	jp init_music_3
;
.music_info
	db "Potsworth (1992)(Hi Tech)(Mark Cooksey)",0
	db "",0

	read "music_end.asm"
