; Music of Count Count Duckula 2 (1992)(Alternative Software)()()
; Ripped by Megachur the 18/02/2007
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "COUNTDU2.BIN"
	ENDIF

music_date_rip_day		equ 18
music_date_rip_month	equ 02
music_date_rip_year		equ 2007
music_adr				equ &90f5

	read "music_header.asm"

.l90f5
	db &06
;
.play_music_interrupt	; was called on interrupt 38 - warning code is missing in player - don't use it !
;
	di
	push hl
	push de
	push bc
	push af
	push ix
	ld a,(l90f5)
	dec a
	ld (l90f5),a
	and a
	jr nz,l910e
	ld a,#06
	ld (l90f5),a
	jr l911e
.l910e
	cp #05
	jr nz,l9117
	call l9151
	jr l911e
.l9117
	cp #01
	jr nz,l911e
	call l9128
.l911e
	pop ix
	pop af
	pop bc
	pop de
	pop hl
	ei
	reti
.l9127
	db &00
.l9128
	ld a,(l9127)
	cp #00
	ret nz
	ld a,#00
	ld e,#0b
	call #48c1
	ld a,#01
	ld e,#0a
	call #48c1
	ld a,#02
	ld e,#15
	call #48c1
	ld a,#03
	ld e,#14
	call #48c1
	ld a,(#5b4c)
	call #48d1
	ret
.l9151
	ld a,(l9127)
	cp #00
	jr nz,l9168
	call #4831
	ld a,(#5b4c)
	call #48d1
	jp l9168
.l9166 equ $ + 2
.l9165 equ $ + 1
.l9164
	db &01,&00,&00
.l9167
	db &01
;
.play_music
.l9168
;
	ld a,(l9167)
	and a
	jr nz,l91d4
	ld a,(l9165)
	and a
	jr z,l91d4
	ld (l972f),a
	push af
	add a
	ld hl,l9740
	ld e,a
	ld d,#00
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(l9730)
	bit 0,a
.l9188
	call l95bd
	pop af
	ld (l966f),a
	ld a,(l9730)
	res 0,a
	ld (l9730),a
	push hl
	ld hl,l96f2
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l9730
	set 0,(hl)
	pop hl
	ld a,#00
	ld (l9165),a
	ld (l972f),a
	jr l91d4
	ld a,(l9730)
	bit 1,a
	jr nz,l9188
	call l95c8
	pop af
	ld (l9670),a
	ld a,(l9730)
	res 1,a
	ld (l9730),a
	ld hl,l970b
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l9730
	set 1,(hl)
	ld a,#00
	ld (l9165),a
.l91d4
	ld a,(l9730)
	bit 0,a
	jr z,l91e6
	ld a,#03
	ld (l9589),a
	ld ix,l9691
	jr l91ea
.l91e6
	ld ix,l967f
.l91ea
	ld hl,l96a5
	ld (l9673),hl
	ld a,#08
	ld (l9675),a
	ld a,#f6
	ld (l9676),a
	ld a,(l9164)
	and a
	jr z,l9209
	ld a,(l9166)
	and a
	jr nz,l9209
	call l92f9
.l9209
	ld a,(l9730)
	bit 0,a
	jr z,l9222
	ld a,#00
	ld (l9589),a
	ld hl,l96f0
	ld (l9673),hl
	ld ix,l967f
	call l92f9
.l9222
	ld a,(l9730)
	bit 1,a
	jr z,l9234
	ld a,#03
	ld (l9589),a
	ld ix,l9691
	jr l9238
.l9234
	ld ix,l9681
.l9238
	ld hl,l96be
	ld (l9673),hl
	ld a,#07
	ld (l9675),a
	ld a,#ed
	ld (l9676),a
	ld a,(l9164)
	and a
	jr z,l9257
	ld a,(l9166)
	and a
	jr nz,l9257
	call l92f9
.l9257
	ld a,(l9730)
	bit 1,a
	jr z,l9270
	ld a,#00
	ld (l9589),a
	ld hl,l9709
	ld (l9673),hl
	ld ix,l9681
	call l92f9
.l9270
	ld a,(l9164)
	and a
	jr z,l9293
	ld a,(l9166)
	and a
	jr nz,l9293
	ld hl,l96d7
	ld (l9673),hl
	ld ix,l9683
	ld a,#06
	ld (l9675),a
	ld a,#db
	ld (l9676),a
	call l92f9
.l9293
	ld a,#0a
	ld hl,l9689
	ld c,(hl)
	call l92dd
	ld a,#09
	dec hl
	ld c,(hl)
	call l92dd
	ld a,#08
	dec hl
	ld c,(hl)
	call l92dd
	ld a,#07
	dec hl
	ld c,(hl)
	call l92dd
	ld a,#05
	dec hl
	dec hl
	ld c,(hl)
	call l92dd
	ld a,#04
	dec hl
	ld c,(hl)
	call l92dd
	ld a,#03
	dec hl
	ld c,(hl)
	call l92dd
	ld a,#02
	dec hl
	ld c,(hl)
	call l92dd
	ld a,#01
	dec hl
	ld c,(hl)
	call l92dd
	ld a,#00
	dec hl
	ld c,(hl)
	call l92dd
	ret
.l92dd
	ld d,a
	ld e,c
	push af
	ld b,#f4
	out (c),d
	ld bc,#f6c0
	out (c),c
	xor a
	out (c),a
	ld b,#f4
	out (c),e
	ld bc,#f680
	out (c),c
	out (c),a
	pop af
	ret
.l92f9
	ld a,(hl)
	ld e,a
	inc hl
	or (hl)
	jr z,l930c
	dec a
	jr nc,l9303
	dec (hl)
.l9303
	dec hl
	ld (hl),a
	call l954d
	call l94a0
	ret
.l930c
	ld hl,(l9673)
	ld de,#0005
	add hl,de
	ld e,l
	ld d,h
	inc hl
	inc hl
	ldi
	ldi
	ld hl,(l9673)
	ld de,#0015
	add hl,de
	ld a,(hl)
	dec hl
	ld (hl),a
	ld hl,(l9673)
	inc hl
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
.l932d
	ld a,(bc)
	cp #00
	jr z,l9364
	cp #04
	jr z,l9354
	ld (ix+#00),a
	inc bc
	ld a,(bc)
	ld (ix+#01),a
.l933e
	inc bc
	ld a,(bc)
	ld e,a
	inc bc
	ld a,(bc)
	ld d,a
	dec de
	ld hl,(l9673)
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	inc bc
	ld (hl),c
	inc hl
	ld (hl),b
	call l954d
	ret
.l9354
	ld hl,(l9673)
	ld de,#0005
	add hl,de
	ld de,l9726
	ld (hl),e
	inc hl
	ld (hl),d
	inc bc
	jr l933e
.l9364
	inc bc
	ld a,(bc)
	ld e,a
	ld d,#00
	ld hl,l936e
	add hl,de
	jp (hl)
.l936e
	db #00,#00,#00
	jp l938f
	jp l93f5
	jp l9412
	jp l9433
	jp l945d
	jp l9469
	jp l93c7
	jp l93c7
	jp #0000
	jp l93ea
.l938f
	db #00
.l9390
	ld hl,(l9673)
	ld de,#0009
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc de
	ld a,(de)
	and a
	jr z,l93b6
	cp #01
	jr z,l93e6
	dec de
	ld a,(de)
	ld c,a
	inc de
	ld a,(de)
	ld b,a
	inc de
	ld (hl),d
	dec hl
	ld (hl),e
	ld hl,(l9673)
	inc hl
	inc hl
	inc hl
	jp l932d
.l93b6
	ld hl,(l9673)
	ld de,#0009
	add hl,de
	ld e,l
	ld d,h
	inc hl
	inc hl
	ldi
	ldi
	jr l9390
.l93c7
	ld a,(l9730)
	ld hl,l9676
	and (hl)
	ld (l9730),a
	ld a,(l9675)
	ld (l93d9),a
.l93d9 equ $ + 2
	ld (ix+#00),#00
	ld a,#00
	ld (l9165),a
	ld a,#ff
	ld (l966d),a
	ret
.l93e6
	call l9592
	ret
.l93ea
	inc bc
	ld a,(bc)
	push af
	inc bc
	ld a,(bc)
	ld b,a
	pop af
	ld c,a
	jp l9454
.l93f5
	inc bc
	ld hl,(l9673)
	ld de,#0005
	add hl,de
	ld a,(bc)
	ld e,a
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	ld (hl),a
	inc hl
	ld (hl),e
	inc hl
	ld (hl),a
	inc bc
	ld hl,(l9673)
	inc hl
	inc hl
	inc hl
	jp l932d
.l9412
	inc bc
	ld hl,(l9673)
	ld de,#000d
	add hl,de
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	jp l9453
.l9433
	ld a,#99
	ld hl,(l9673)
	ld de,#0013
	add hl,de
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	ld (hl),a
	inc hl
	inc bc
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	inc bc
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	inc bc
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	inc bc
	ld (hl),a
.l9453
	inc bc
.l9454
	ld hl,(l9673)
	inc hl
	inc hl
	inc hl
	jp l932d
.l945d
	ld hl,(l9673)
	ld de,#0013
	add hl,de
	ld (hl),#00
	jp l9453
.l9469
	ld hl,(l9673)
	ld de,#000d
	add hl,de
	ld (hl),#00
	jp l9453
	jr l947c
	push de
	ld e,c
	ld d,b
	ld c,#fd
.l947c
	inc de
	ld a,(de)
	cp #ff
	jr z,l948b
	cp #fe
	jp z,l9492
	inc de
	ld a,(de)
	jr l947c
.l948b
	ld c,e
	ld b,d
	pop de
	inc bc
	jp l9453
.l9492
	ld c,e
	ld b,d
	pop de
	ld hl,(l9673)
	inc hl
	inc hl
	inc bc
	inc bc
	ld (hl),c
	inc hl
	ld (hl),b
	ret
.l94a0
	ld hl,(l9673)
	ld de,#000d
	add hl,de
	ld a,(hl)
	and a
	jp z,l9506
	inc hl
	cp #02
	jr z,l94db
	ld e,(hl)
	ld a,(ix+#00)
	sub e
	jr nc,l94bb
	dec (ix+#01)
.l94bb
	ld (ix+#00),a
	inc hl
	ld d,(hl)
	inc hl
	ld a,(hl)
	ld e,a
	cp (ix+#01)
	jr c,l94d9
	ld a,d
	cp (ix+#00)
	jr c,l94d9
	ld (ix+#01),e
	dec hl
	ld (ix+#00),d
	dec hl
	dec hl
	ld (hl),#00
.l94d9
	jr l954c
.l94db
	ld e,(hl)
	ld a,(ix+#00)
	ld d,a
	add e
	jr nc,l94e6
	inc (ix+#01)
.l94e6
	ld (ix+#00),a
	inc hl
	ld d,(hl)
	inc hl
	ld a,(hl)
	ld e,a
	cp (ix+#01)
	jr nc,l9504
	ld a,d
	cp (ix+#00)
	jr nc,l9504
	ld (ix+#01),e
	dec hl
	ld (ix+#00),d
	dec hl
	dec hl
	ld (hl),#00
.l9504
	jr l954c
.l9506
	ld hl,(l9673)
	ld de,#0013
	add hl,de
	ld a,(hl)
	and a
	jr z,l954c
	ld e,a
	ld b,h
	ld c,l
	inc hl
	ld a,#00
	cp (hl)
	jr z,l951e
	dec (hl)
	jp l954c
.l951e
	inc hl
	inc hl
	ld a,(hl)
	dec a
	ld (hl),a
	jr nz,l954c
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	rlc e
	jr c,l953d
	inc hl
	ld a,(ix+#00)
	add (hl)
	ld (ix+#00),a
	jr nc,l954a
	inc (ix+#01)
	jp l954a
.l953d
	inc hl
	ld a,(ix+#00)
	sub (hl)
	ld (ix+#00),a
	jr nc,l954a
	dec (ix+#01)
.l954a
	ld a,e
	ld (bc),a
.l954c
	ret
.l954d
	ld hl,(l9673)
	ld de,#0005
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(l9675)
	ld (l956b),a
	ld a,(de)
	cp #ff
	jr nz,l9563
	ret
.l9563
	sub #02
	jr nc,l9569
	ld a,#00
.l956b equ $ + 2
.l9569
	ld (ix+#00),a
	inc de
	ld a,(l9686)
	ld b,a
	ld a,(l9676)
	push af
	and b
	ld b,a
	ld a,(de)
	ld c,a
	pop af
	rr a
	jr nc,l9586
	rlc c
	rr a
	jr nc,l9586
	rlc c
.l9586
	ld a,c
	or b
.l9589 equ $ + 1
	jr l958a
.l958a
	ld (l9686),a
	inc de
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.l9592
	di
	call l959d
	call l95b4
	call l95d9
	ret
.l959d
	ld a,#0d
	ld e,#00
.l95a1
	push af
	call l92dd
	pop af
	dec a
	and a
	jr z,l95ac
	jr l95a1
.l95ac
	ld a,#07
	ld c,#3f
	call l92dd
	ret
.l95b4
	ld b,#0d
	ld hl,l967f
	call l95d3
	ret
.l95bd
	ld b,#19
	push hl
	ld hl,l96f0
	call l95d3
	pop hl
	ret
.l95c8
	ld b,#19
	push hl
	ld hl,l9709
	call l95d3
	pop hl
	ret
.l95d3
	ld (hl),#00
	inc hl
	djnz l95d3
	ret
.l95d9
	ld b,#7d
	ld hl,l96a5
.l95de
	ld (hl),#00
	inc hl
	djnz l95de
	ret
	di
;
.real_init_music
.l95e4
;
	call l9592
	ld hl,l9164
	ld a,(hl)
	add a
	add a
	add a
	ld e,a
	ld d,#00
	ld hl,l9732
	add hl,de
	ld a,(hl)
	ld (l96b0),a
	inc hl
	ld a,(hl)
	ld (l96b1),a
	inc hl
	ld a,(hl)
	ld (l96c9),a
	inc hl
	ld a,(hl)
	ld (l96ca),a
	inc hl
	ld a,(hl)
	ld (l96e2),a
	inc hl
	ld a,(hl)
	ld (l96e3),a
	inc hl
	inc hl
	ld de,l967a
	ld hl,l96ae
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l96c7
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l96e0
	ld (hl),e
	inc hl
	ld (hl),d
	ld de,l9678
	ld hl,l96a7
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l96c0
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l96d9
	ld (hl),e
	inc hl
	ld (hl),d
	ret
	ld e,a
	ld a,(l966f)
	cp e
	jr nz,l9657
	ld a,(l9730)
	res 0,a
	ld (l9730),a
	ld a,#00
	ld (l9687),a
	call l95bd
.l9657
	ld a,(l9670)
	cp e
	ret nz
	ld a,(l9730)
	res 1,a
	ld (l9730),a
	ld a,#00
	ld (l9688),a
	call l95c8
	ret
.l9673 equ $ + 6
.l9670 equ $ + 3
.l966f equ $ + 2
.l966d
	db #00,#00,#00,#00,#00,#00,#00,#00
.l967a equ $ + 5
.l9678 equ $ + 3
.l9676 equ $ + 1
.l9675
	db #00,#00,#00,#00,#03,#00,#00,#00
.l9683 equ $ + 6
.l9681 equ $ + 4
.l967f equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9689 equ $ + 4
.l9688 equ $ + 3
.l9687 equ $ + 2
.l9686 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9691 equ $ + 4
	db #00,#08,#09,#0a,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l96a7 equ $ + 2
.l96a5
	db #00,#00,#00,#00,#04,#00,#00,#00
.l96b1 equ $ + 4
.l96b0 equ $ + 3
.l96ae equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l96c0 equ $ + 3
.l96be equ $ + 1
	db #00,#00,#00,#00,#00,#04,#00,#00
.l96ca equ $ + 5
.l96c9 equ $ + 4
.l96c7 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l96d9 equ $ + 4
.l96d7 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#04,#00
.l96e3 equ $ + 6
.l96e2 equ $ + 5
.l96e0 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l96f2 equ $ + 5
.l96f0 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#04
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l970b equ $ + 6
.l9709 equ $ + 4
	db #00,#00,#00,#00,#0a,#00,#00,#00
	db #04,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9726 equ $ + 1
	db #00,#00,#00,#ff,#10,#01,#ff,#0f
.l9730 equ $ + 3
.l972f equ $ + 2
	db #08,#ff,#00,#00,#00
.l9732
	dw #0000,#0000,#0000,#0000
	dw l9918,l991e,l992e
.l9740
	db #00,#00
	dw l97ca
	db #00,#00,#00,#00,#00,#00
	dw l9756
	db #00,#00
	dw l9766,l97a0,l97fa,l98c5
.l9756
	db #00,#06
	dw l9760
.l9760 equ $ + 6
	db #20,#00,#02,#00,#00,#18,#0f,#08
.l9766 equ $ + 4
	db #09,#08,#ff,#00,#00,#06
	dw l979c
	db #00,#09,#01,#14,#38,#00,#00,#00
	db #8e,#00,#08,#00,#00,#09,#02,#1e
	db #8e,#00,#00,#00,#38,#00,#07,#00
	db #00,#09,#01,#14,#38,#00,#00,#00
	db #8e,#00,#08,#00,#00,#09,#02,#1e
	db #8e,#00,#00,#00,#38,#00,#07,#00
.l97a0 equ $ + 6
.l979c equ $ + 2
	db #00,#18,#0f,#08,#ff,#00,#00,#06
	db #c6,#97,#8e,#00,#02,#00,#1c,#01
	db #02,#00,#8e,#00,#02,#00,#1c,#01
	db #02,#00,#8e,#00,#02,#00,#1c,#01
	db #02,#00,#8e,#00,#02,#00,#1c,#01
	db #02,#00,#00,#18,#0f,#08,#ff,#00
.l97ca
	db #00,#06,#ee,#97,#38,#02,#01,#00
	db #04,#00,#01,#00,#aa,#01,#01,#00
	db #04,#00,#01,#00,#1c,#01,#01,#00
	db #04,#00,#01,#00,#d5,#00,#04,#00
	db #01,#00,#00,#18,#0f,#00,#0e,#00
	db #09,#00,#08,#00,#00,#00,#ff,#00
.l97fa
	db #00,#06,#16,#98,#00,#0c,#01,#01
	db #05,#00,#05,#00,#01,#00,#00,#09
	db #02,#01,#53,#03,#00,#00,#6a,#00
	db #48,#00,#00,#18,#0f,#08,#0f,#08
	db #0f,#08,#0f,#08,#0f,#08,#0f,#08
	db #0f,#08,#0f,#08,#0f,#08,#0f,#08
	db #0f,#08,#0f,#08,#0f,#08,#0f,#08
	db #0f,#08,#0f,#08,#0e,#08,#0e,#08
	db #0e,#08,#0e,#08,#0e,#08,#0e,#08
	db #0e,#08,#0e,#08,#0e,#08,#0e,#08
	db #0c,#08,#0c,#08,#0c,#08,#0c,#08
	db #0c,#08,#0c,#08,#0c,#08,#0c,#08
	db #0c,#08,#0c,#08,#0a,#08,#0a,#08
	db #0a,#08,#0a,#08,#0a,#08,#0a,#08
	db #0a,#08,#0a,#08,#0a,#08,#0a,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#06,#08,#06,#08
	db #06,#08,#06,#08,#06,#08,#06,#08
	db #06,#08,#06,#08,#06,#08,#06,#08
	db #04,#08,#04,#08,#04,#08,#04,#08
	db #04,#08,#04,#08,#04,#08,#04,#08
	db #04,#08,#04,#08,#02,#08,#02,#08
	db #02,#08,#02,#08,#02,#08,#02,#08
	db #02,#08,#02,#08,#02,#08,#02,#08
.l98c5 equ $ + 3
	db #00,#00,#ff,#00,#06,#d7,#98,#00
	db #09,#01,#32,#35,#00,#08,#00,#53
	db #03,#18,#00,#00,#18,#0f,#08,#0f
	db #08,#0f,#08,#0f,#08,#0f,#08,#0f
	db #08,#0f,#08,#0f,#08,#0f,#08,#0f
	db #08,#0f,#08,#0f,#08,#0f,#08,#0f
	db #08,#0f,#08,#0f,#08,#04,#08,#04
	db #08,#04,#08,#04,#08,#04,#08,#04
	db #08,#04,#08,#04,#08,#04,#08,#04
	db #01,#02,#08,#02,#08,#02,#08,#02
	db #08,#00,#08,#ff,#0b,#00
.l9918
	dw l9b80,l998a,#0000
.l991e
	dw l9952,l9af0,l9af0,l9af0
	dw l9af0,l9b3e,l9b3e,#0000
.l992e
	dw l996e,l9bc4,l9bc4,l9bc4
	dw l9c70,l9bc4,l9bc4,l9bc4
	dw l9cf2,l9c22,l9c22,#0000
	db #04,#00,#60,#00,#00,#03,#04,#00
.l9952 equ $ + 4
	db #54,#00,#00,#03,#00,#06,#ce,#9d
	db #00,#0c,#01,#01,#02,#00,#02,#00
	db #08,#00,#00,#09,#01,#45,#2a,#00
	db #00,#00,#47,#05,#60,#00,#00,#03
.l996e
	db #00,#06,#c5,#9d,#00,#0c,#01,#01
	db #02,#00,#02,#00,#08,#00,#00,#09
	db #01,#45,#1c,#00,#00,#00,#86,#03
.l998a equ $ + 4
	db #60,#00,#00,#03,#00,#06,#fd,#9d
	db #00,#0c,#01,#01,#01,#00,#01,#00
	db #08,#00,#be,#00,#06,#00,#be,#00
	db #06,#00,#a9,#00,#0c,#00,#be,#00
	db #0c,#00,#a9,#00,#0c,#00,#be,#00
	db #06,#00,#8e,#00,#1e,#00,#8e,#00
	db #0c,#00,#be,#00,#06,#00,#be,#00
	db #06,#00,#a9,#00,#0c,#00,#a9,#00
	db #0c,#00,#a9,#00,#0c,#00,#be,#00
	db #06,#00,#8e,#00,#18,#00,#04,#00
	db #06,#00,#8e,#00,#0c,#00,#a9,#00
	db #0c,#00,#71,#00,#0c,#00,#71,#00
	db #0c,#00,#7f,#00,#0c,#00,#7f,#00
	db #0c,#00,#7f,#00,#0c,#00,#8e,#00
	db #06,#00,#7f,#00,#12,#00,#8e,#00
	db #54,#00,#04,#00,#0c,#00,#be,#00
	db #06,#00,#be,#00,#06,#00,#a9,#00
	db #0c,#00,#be,#00,#0c,#00,#a9,#00
	db #0c,#00,#be,#00,#06,#00,#8e,#00
	db #18,#00,#04,#00,#06,#00,#8e,#00
	db #0c,#00,#be,#00,#06,#00,#be,#00
	db #06,#00,#a9,#00,#0c,#00,#a9,#00
	db #0c,#00,#a9,#00,#0c,#00,#be,#00
	db #06,#00,#8e,#00,#18,#00,#04,#00
	db #06,#00,#8e,#00,#0c,#00,#a9,#00
	db #0c,#00,#71,#00,#0c,#00,#71,#00
	db #0c,#00,#7f,#00,#0c,#00,#7f,#00
	db #0c,#00,#7f,#00,#0c,#00,#8e,#00
	db #06,#00,#7f,#00,#12,#00,#8e,#00
	db #54,#00,#04,#00,#0c,#00,#00,#0c
	db #01,#01,#02,#00,#02,#00,#08,#00
	db #a9,#00,#06,#00,#a9,#00,#06,#00
	db #71,#00,#06,#00,#71,#00,#12,#00
	db #7f,#00,#0c,#00,#8e,#00,#06,#00
	db #71,#00,#2a,#00,#a9,#00,#06,#00
	db #a9,#00,#06,#00,#71,#00,#0c,#00
	db #71,#00,#0c,#00,#7f,#00,#0c,#00
	db #8e,#00,#06,#00,#a9,#00,#2a,#00
	db #a9,#00,#06,#00,#a9,#00,#06,#00
	db #71,#00,#06,#00,#71,#00,#12,#00
	db #7f,#00,#0c,#00,#8e,#00,#06,#00
	db #71,#00,#2a,#00,#a9,#00,#06,#00
	db #a9,#00,#06,#00,#71,#00,#0c,#00
	db #71,#00,#0c,#00,#5f,#00,#0c,#00
	db #5f,#00,#06,#00,#54,#00,#36,#00
.l9af0 equ $ + 2
	db #00,#03,#00,#06,#9c,#9d,#a4,#02
	db #0c,#00,#38,#02,#0c,#00,#fa,#01
	db #0c,#00,#38,#02,#06,#00,#a4,#02
	db #0c,#00,#a4,#02,#06,#00,#38,#02
	db #0c,#00,#fa,#01,#0c,#00,#c3,#01
	db #0c,#00,#a4,#02,#0c,#00,#38,#02
	db #0c,#00,#fa,#01,#0c,#00,#38,#02
	db #06,#00,#a4,#02,#0c,#00,#38,#02
	db #06,#00,#fa,#01,#0c,#00,#c3,#01
	db #0c,#00,#f6,#02,#0c,#00,#00,#03
.l9b3e
	db #a4,#02,#0c,#00,#a4,#02,#0c,#00
	db #04,#00,#12,#00,#a4,#02,#06,#00
	db #38,#02,#0c,#00,#fa,#01,#0c,#00
	db #c3,#01,#06,#00,#38,#02,#12,#00
	db #a4,#02,#0c,#00,#a4,#02,#0c,#00
	db #04,#00,#12,#00,#a4,#02,#06,#00
	db #38,#02,#0c,#00,#fa,#01,#0c,#00
	db #c3,#01,#0c,#00,#38,#02,#0c,#00
.l9b80 equ $ + 2
	db #00,#03,#00,#06,#8d,#9d,#00,#09
	db #02,#c8,#a7,#06,#00,#00,#a9,#00
	db #18,#00,#00,#06,#8d,#9d,#00,#09
	db #02,#c8,#a7,#06,#00,#00,#a9,#00
	db #18,#00,#00,#06,#8d,#9d,#00,#09
	db #02,#c8,#a7,#06,#00,#00,#a9,#00
	db #18,#00,#00,#06,#8d,#9d,#00,#09
	db #02,#c8,#a7,#06,#00,#00,#a9,#00
.l9bc4 equ $ + 6
	db #0c,#00,#00,#12,#00,#03,#00,#06
	db #8d,#9d,#00,#09,#02,#c8,#a7,#06
	db #00,#00,#a9,#00,#0c,#00,#a9,#00
	db #0c,#00,#00,#06,#d7,#9d,#00,#09
	db #02,#45,#a7,#06,#00,#00,#d5,#00
	db #0c,#00,#00,#06,#8d,#9d,#00,#09
	db #02,#c8,#a7,#06,#00,#00,#a9,#00
	db #06,#00,#a9,#00,#12,#00,#a9,#00
	db #0c,#00,#00,#06,#d7,#9d,#00,#09
	db #02,#45,#a7,#06,#00,#00,#d5,#00
	db #0c,#00,#00,#06,#8d,#9d,#00,#09
	db #02,#c8,#a7,#06,#00,#00,#a9,#00
.l9c22 equ $ + 4
	db #0c,#00,#00,#03,#00,#06,#6c,#9d
	db #00,#09,#02,#45,#a7,#06,#00,#00
	db #d5,#00,#0c,#00,#d5,#00,#0c,#00
	db #04,#00,#12,#00,#d5,#00,#06,#00
	db #d5,#00,#0c,#00,#d5,#00,#0c,#00
	db #d5,#00,#06,#00,#d5,#00,#12,#00
	db #d5,#00,#0c,#00,#d5,#00,#0c,#00
	db #04,#00,#12,#00,#d5,#00,#06,#00
	db #d5,#00,#0c,#00,#d5,#00,#0c,#00
	db #d5,#00,#0c,#00,#d5,#00,#0c,#00
.l9c70 equ $ + 2
	db #00,#03,#00,#06,#8d,#9d,#00,#09
	db #02,#c8,#a7,#06,#00,#00,#a9,#00
	db #06,#00,#00,#06,#f8,#9d,#24,#00
	db #06,#00,#24,#00,#06,#00,#24,#00
	db #06,#00,#00,#06,#6c,#9d,#00,#09
	db #02,#45,#a7,#06,#00,#00,#d5,#00
	db #06,#00,#00,#06,#f8,#9d,#24,#00
	db #06,#00,#24,#00,#06,#00,#24,#00
	db #06,#00,#00,#06,#8d,#9d,#00,#09
	db #02,#c8,#a7,#06,#00,#00,#a9,#00
	db #06,#00,#00,#06,#f8,#9d,#24,#00
	db #06,#00,#24,#00,#06,#00,#24,#00
	db #06,#00,#00,#06,#6c,#9d,#00,#09
	db #02,#45,#a7,#06,#00,#00,#6a,#00
	db #06,#00,#00,#06,#f8,#9d,#24,#00
	db #06,#00,#24,#00,#06,#00,#24,#00
.l9cf2 equ $ + 4
	db #06,#00,#00,#03,#00,#06,#8d,#9d
	db #00,#09,#02,#c8,#a7,#06,#00,#00
	db #a9,#00,#06,#00,#00,#06,#f8,#9d
	db #24,#00,#06,#00,#24,#00,#06,#00
	db #24,#00,#06,#00,#00,#06,#6c,#9d
	db #00,#09,#02,#45,#a7,#06,#00,#00
	db #d5,#00,#06,#00,#00,#06,#f8,#9d
	db #24,#00,#06,#00,#24,#00,#06,#00
	db #24,#00,#06,#00,#00,#06,#8d,#9d
	db #00,#09,#02,#c8,#a7,#06,#00,#00
	db #a9,#00,#06,#00,#00,#06,#6c,#9d
	db #00,#09,#02,#45,#a7,#06,#00,#00
	db #6a,#00,#06,#00,#6a,#00,#06,#00
	db #6a,#00,#06,#00,#6a,#00,#06,#00
	db #6a,#00,#06,#00,#6a,#00,#06,#00
	db #6a,#00,#06,#00,#00,#03,#0f,#00
	db #0f,#08,#0f,#08,#0f,#00,#0f,#08
	db #0f,#00,#0c,#08,#0c,#00,#09,#08
	db #07,#00,#07,#08,#07,#00,#06,#08
	db #06,#00,#06,#08,#05,#08,#ff,#0f
	db #00,#0f,#08,#0f,#08,#0f,#08,#07
	db #08,#03,#08,#00,#08,#ff,#0f,#08
	db #0f,#08,#0f,#08,#0f,#08,#0f,#08
	db #0f,#08,#0f,#08,#0f,#08,#0e,#08
	db #0d,#08,#0c,#08,#0c,#08,#0b,#08
	db #0a,#08,#0a,#08,#09,#08,#09,#08
	db #08,#08,#07,#08,#07,#08,#ff,#0e
	db #08,#0d,#08,#0d,#08,#0d,#08,#ff
	db #0e,#08,#0d,#08,#0d,#08,#0d,#08
	db #ff,#0f,#01,#0e,#01,#0e,#01,#0d
	db #01,#0d,#01,#0c,#01,#0b,#01,#0b
	db #01,#09,#01,#07,#01,#07,#01,#07
	db #01,#06,#01,#06,#01,#06,#01,#05
	db #01,#ff,#0d,#01,#00,#01,#ff,#0f
	db #08,#0f,#08,#0f,#08,#0f,#08,#0f
	db #08,#0e,#08,#0d,#08,#0d,#08,#0c
	db #08,#0b,#08,#0a,#08,#09,#08,#08
	db #08,#07,#08,#06,#08,#05,#08,#04
	db #08,#03,#08,#02,#08,#00,#08,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#70,#9c,#00,#6a,#fd,#12
	db #bd,#9c,#fd,#50,#6d,#9c,#fd,#13
	db #cd,#9c,#02,#6a,#00,#06,#fd,#07
	db #4d,#9d,#00,#06,#fd,#08,#4d,#9d
	db #fd,#06,#db,#9c,#23,#03,#0f,#00
	db #0f,#08,#0f,#08,#0f,#00,#0f,#08
	db #0f,#00,#0c,#08,#0c,#00,#09,#08
	db #07,#00,#07,#08,#07,#00,#06,#08
	db #06,#00,#06,#08,#05,#08,#ff,#0f
	db #00,#fd,#06,#f1,#98,#06,#07,#08
	db #03,#08,#00,#08,#ff,#fd,#12,#26
	db #98,#1d,#0d,#08,#0c,#08,#0c,#08
	db #0b,#08,#0a,#08,#0a,#08,#09,#08
	db #09,#08,#08,#08,#07,#08,#07,#08
	db #ff,#0e,#08,#0d,#08,#0d,#08,#0d
	db #fd,#08,#c3,#9d,#28,#0d,#08,#ff
	db #0f,#01,#0e,#01,#0e,#01,#0d,#01
	db #0d,#01,#0c,#01,#0b,#01,#0b,#01
	db #09,#01,#07,#01,#07,#01,#07,#01
	db #06,#01,#06,#01,#06,#01,#05,#01
	db #ff,#0d,#01,#00,#01,#ff,#fd,#0e
	db #a2,#9d,#00,#0d,#fd,#06,#b1,#9d
	db #fd,#07,#bb,#9d,#06,#06,#08,#05
	db #08,#04,#08,#03,#fd,#06,#10,#99
	db #67,#ff,#f3,#cd,#0f,#00,#3b,#3b
	db #e1,#01,#c9,#95,#09,#5e,#23,#56
	db #01,#11,#00,#09,#7e,#23,#4e,#fe
	db #ff,#ca,#cf,#32,#fe,#50,#30,#08
	db #3c,#4f,#06,#00,#ed,#b0,#18,#ec
	db #fe,#a0,#30,#08,#d6,#4d,#4f,#06
	db #00,#af,#18,#70,#fe,#f0,#30,#09
	db #d6,#9c,#4f,#06,#00,#7e,#23,#18
	db #63,#fe,#fd,#20,#05,#06,#00,#23
	db #18,#07,#fe,#fe,#20,#0f,#23,#46
	db #23,#d5,#5e,#23,#56,#23,#e3,#eb
	db #ed,#b0,#e1,#18,#b7,#d6,#f0,#20
	db #0c,#7e,#23,#c6,#51,#4f,#06,#00
	db #30,#09,#04,#18,#06,#3d,#20,#07
	db #23,#46,#23,#ed,#b0,#18,#9d,#3d
	db #20,#08,#af,#f5,#7e,#23,#c6,#53
	db #18,#13,#3d,#20,#06,#23,#46,#23
	db #af,#18,#19,#3d,#20,#10,#7e,#23
	db #f5,#7e,#23,#c6,#54,#4f,#06,#00
	db #30,#01,#04,#f1,#18,#06,#7e,#23
	db #4e,#23,#46,#23,#e5,#0b,#62,#6b
	db #13,#77,#ed,#b0,#e1,#18,#c6,#00
	db #00,#00,#0d,#01,#00,#01,#ff,#fd
	db #0e,#a2,#9d,#00,#0d,#fd,#06,#b1
	db #9d,#fd,#07,#bb,#9d,#06,#06,#08
	db #05,#08,#04,#08,#03,#fd,#06,#10
	db #99,#67,#ff,#f3,#cd,#0f,#00,#3b
	db #3b,#e1,#01,#c9,#95,#09,#5e,#23
	db #56,#01,#11,#00,#09,#7e,#23,#4e
	db #fe,#ff,#ca,#cf,#32,#fe,#50,#30
	db #08,#3c,#4f,#06,#00,#ed,#b0,#18
	db #ec,#fe,#a0,#30,#08,#d6,#4d,#4f
	db #06,#00,#af,#18,#70,#fe,#f0,#30
	db #09,#d6,#9c,#4f,#06,#00,#7e,#23
	db #18,#63,#fe,#fd,#20,#05,#06,#00
	db #23,#18,#07,#fe,#fe,#20,#0f,#23
	db #46,#23,#d5,#5e,#23,#56,#23,#e3
	db #eb,#ed,#b0,#e1,#18,#b7,#d6,#f0
	db #20,#0c,#7e,#23,#c6,#51,#4f,#06
	db #00,#30,#09,#04,#18,#06,#3d,#20
	db #07,#23,#46,#23,#ed,#b0,#18,#9d
	db #3d,#20,#08,#af,#f5,#7e,#23,#c6
	db #53,#18,#13,#3d,#20,#06,#23,#46
	db #23,#af,#18,#19,#3d,#20,#10,#7e
	db #23,#f5,#7e,#23,#c6,#54,#4f,#06
	db #00,#30,#01,#04,#f1,#18,#06,#7e
	db #23,#4e,#23,#46,#23,#e5,#0b,#62
	db #6b,#13,#77,#ed,#b0,#e1,#18,#c6
	db #50,#ff,#f3,#cd,#0f,#00,#3b,#3b
	db #e1,#01,#fa,#8f,#09,#5e,#23,#56
	db #01,#11,#00,#09,#7e,#23,#4e,#fe
	db #ff,#ca,#10,#23,#fe,#50,#30,#08
	db #3c,#4f,#06,#00,#ed,#b0,#18,#ec
	db #fe,#a0,#30,#08,#d6,#4d,#4f,#06
	db #00,#af,#18,#70,#fe,#f0,#30,#09
	db #d6,#9c,#4f,#06,#00,#7e,#23,#18
	db #63,#fe,#fd,#20,#05,#06,#00,#23
	db #18,#07,#fe,#fe,#20,#0f,#23,#46
	db #23,#d5,#5e,#23,#56,#23,#e3,#eb
	db #ed,#b0,#e1,#18,#b7,#d6,#f0,#20
	db #0c,#7e,#23,#c6,#51,#4f,#06,#00
	db #30,#09,#04,#18,#06,#3d,#20,#07
	db #23,#46,#23,#ed,#b0,#18,#9d,#3d
	db #20,#08,#af,#f5,#7e,#23,#c6,#53
	db #18,#13,#3d,#20,#06,#23,#46,#23
	db #af,#18,#19,#3d,#20,#10,#7e,#23
	db #f5,#7e,#23,#c6,#54,#4f,#06,#00
	db #30,#01,#04,#f1,#18,#06,#7e,#23
	db #4e,#23,#46,#23,#e5,#0b,#62,#6b
	db #13,#77,#ed,#b0,#e1,#18,#c6
;
;.l48c1
;	push af
;	push bc
;	and #0f
;	ld b,#7f
;	out (c),a
;	ld a,e
;	or #40
;	out (c),a
;	pop bc
;	pop af
;	ret
;
.init_music		; added by Megachur
;
	ld a,1
	ld (l9164),a
	call real_init_music
	ld a,&01
	ld (l9127),a
	ld (l9167),a
	dec a
	ld (l9166),a
	ret
;
.music_info
	db "Count Duckula 2 (1992)(Alternative Software)()",0
	db "",0

	read "music_end.asm"
