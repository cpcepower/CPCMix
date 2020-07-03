; Music of Intox (19xx)(Malibu Crackers)(Jochen Hippel)(COSO)
; Ripped by Megachur the 28/02/2015
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "INTOX.BIN"
	ENDIF

music_date_rip_day		equ 28
music_date_rip_month	equ 02
music_date_rip_year		equ 2015
music_adr				equ &4000
first_theme				equ 0
last_theme				equ 1	; 0 -> 1

	read "music_header.asm"

; 28/01/2018 - corrected some wrong data in music data
	
	jp l4014	; init a=1,2,
	jp l4039
	jp l40a9	; play
	jp l400c
.l400c
	ld (l4982),hl
	ld (l4984),de
	ret
;
.real_init_music
.l4014
;
	call l4056
	or a
	jr z,l4050
	ld hl,(l497e)
	dec a
	add a
	ld c,a
	add a
	add c
	ld d,#00
	ld e,a
	add hl,de
	inc hl
	ld c,(hl)
	inc hl
	inc hl
	ld b,(hl)
	inc hl
	inc hl
	ld l,(hl)
	ld h,l
	ld (l4798),hl
	xor a
	ld (l48b2),a
	jp l45e8
.l4039
	call l4056
	ld hl,(l4980)
	add a
	add a
	ld d,#00
	ld e,a
	add hl,de
	inc hl
	ld a,(hl)
	ld (l4896),a
	inc hl
	inc hl
	ld c,(hl)
	jp l46e2
.l4050
	inc a
	ld (l479a),a
	jr l40a9
.l4056
	push af
	ld a,(l48ae)
	or a
	jr nz,l40a7
	ld (l4897),a
	inc a
	ld (l48ae),a
	ld bc,(l4982)
	push bc
	pop ix
	ld h,(ix+#06)
	ld l,(ix+#07)
	add hl,bc
	ld (l4976),hl
	ld h,(ix+#0a)
	ld l,(ix+#0b)
	add hl,bc
	ld (l4978),hl
	ld h,(ix+#0e)
	ld l,(ix+#0f)
	add hl,bc
	ld (l497a),hl
	ld h,(ix+#12)
	ld l,(ix+#13)
	add hl,bc
	ld (l497c),hl
	ld h,(ix+#16)
	ld l,(ix+#17)
	add hl,bc
	ld (l497e),hl
	ld h,(ix+#1a)
	ld l,(ix+#1b)
	add hl,bc
	ld (l4980),hl
.l40a7
	pop af
	ret
;
.play_music
.l40a9
;
	ld hl,l48aa
	ld a,(hl)
	or a
	jr z,l40da
	inc hl
	dec (hl)
	jp p,l40da
	ld (hl),a
	inc hl
	inc (hl)
	ld a,(hl)
	cp #0a
	jr nz,l40c9
	xor a
	ld (hl),a
	dec hl
	ld (hl),a
	dec hl
	ld (hl),a
	inc a
	ld (l479a),a
	jr l40e0
.l40c9
	ld hl,l4898
	ld d,#00
	ld e,a
	add hl,de
	ld a,(hl)
	ld (l47d7),a
	ld (l4815),a
	ld (l4853),a
.l40da
	ld a,(l479a)
	or a
	jr z,l40ec
.l40e0
	xor a
	ld hl,l478d
	ld (hl),a
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	jp l4180
.l40ec
	ld hl,l4798
	dec (hl)
	jr nz,l410b
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	ld ix,l479b
	call l41c4
	ld ix,l47d9
	call l41c4
	ld ix,l4817
	call l41c4
.l410b
	ld ix,l479b
	call l4306
	ld (l478d),a
	ld (l4785),hl
	ld ix,l47d9
	call l4306
	ld (l478e),a
	ld (l4787),hl
	ld ix,l4817
	call l4306
	ld (l478f),a
	ld (l4789),hl
	ld a,(l4895)
	or a
	jr z,l4180
	push af
	ld ix,l4855
	call l4306
	ld (l4170),hl
	ld (l417e),a
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	ld e,(ix+#0e)
	ld d,#00
	add hl,de
	ld a,(hl)
	cp #e1
	jr nz,l415b
	xor a
	ld (l4895),a
.l415b
	pop af
	add a
	ld c,a
	ld b,#00
	ld hl,l4790
	add hl,bc
	ld b,h
	ld c,l
	ld a,(bc)
	inc bc
	ld d,#00
	ld e,a
	ld hl,l4785
	add hl,de
.l4170 equ $ + 1
	ld de,#0000
	ld (hl),e
	inc hl
	ld (hl),d
	ld a,(bc)
	ld hl,l4785
	ld d,#00
	ld e,a
	add hl,de
.l417e equ $ + 1
	ld a,#00
	ld (hl),a
.l4180
	ld hl,l4893
	ld c,(hl)
	ld a,(l48b2)
	or a
	jr z,l418e
	ld a,c
	or #c0
	ld c,a
.l418e
	ld a,c
	ld (l478c),a
	inc hl
	ld a,(hl)
	srl a
	ld (l478b),a
	ld hl,l478f
	ld d,#0a
	ld a,(l48b2)
	or a
	jr z,l41a6
	dec d
	dec hl
.l41a6
	xor a
.l41a7
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f6c0
	out (c),c
	out (c),a
	ld b,#f4
	out (c),e
	ld bc,#f680
	out (c),c
	out (c),a
	dec hl
	dec d
	jp p,l41a7
	ret
.l41c4
	dec (ix+#26)
	ret p
	ld a,(ix+#27)
	ld (ix+#26),a
	ld l,(ix+#22)
	ld h,(ix+#23)
.l41d4
	ld a,(hl)
	inc hl
	cp #ff
	jr nz,l424c
	ld l,(ix+#00)
	ld h,(ix+#01)
	dec (ix+#34)
	jr nz,l41f4
	ld a,(ix+#35)	; reset music
	ld (ix+#34),a
	xor a
	ld (ix+#04),a
	ld (ix+#05),a
	jr l41fb
.l41f4
	ld c,(ix+#04)
	ld b,(ix+#05)
	add hl,bc
.l41fb
	ld c,(hl)
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2c),a
	ld a,(hl)
	inc hl
	ld (ix+#16),a
	ld a,(hl)
	ld b,a
	and #f0
	cp #f0
	jr nz,l4217
	ld a,b
	and #0f
	ld (ix+#28),a
	jr l4221
.l4217
	cp #e0
	jr nz,l4221
	ld a,b
	and #0f
	ld (l4799),a
.l4221
	ld l,(ix+#04)
	ld h,(ix+#05)
	ld de,#000c
	add hl,de
	ld (ix+#04),l
	ld (ix+#05),h
	ld h,#00
	ld l,c
	ld de,(l497a)
	add hl,hl
	nop
	add hl,de
	nop
	nop
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld hl,(l4982)
	add hl,de
	ld (ix+#22),l
	ld (ix+#23),h
	jr l41d4
.l424c
	cp #fe
	jr nz,l425b
	ld a,(hl)
	inc hl
	ld (ix+#26),a
	ld (ix+#27),a
	jp l41d4
.l425b
	cp #fd
	jr nz,l426e
	ld a,(hl)
	inc hl
	ld (ix+#26),a
	ld (ix+#27),a
	ld (ix+#22),l
	ld (ix+#23),h
	ret
.l426e
	ld (ix+#08),a
	ld a,(hl)
	inc hl
	ld (ix+#09),a
	and #e0
	jr z,l427f
	ld a,(hl)
	inc hl
	ld (ix+#1f),a
.l427f
	ld (ix+#22),l
	ld (ix+#23),h
	xor a
	ld (ix+#39),a
	ld (ix+#3a),a
	ld (ix+#3b),a
	ld a,(ix+#08)
	or a
	ret m
	ld a,(ix+#09)
	and #1f
	add (ix+#16)
	ld h,#00
	ld l,a
	ld de,(l4978)
	add hl,hl
	nop
	add hl,de
	nop
	nop
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld hl,(l4982)
	add hl,de
	ld a,(hl)
	inc hl
	ld (ix+#17),a
	ld (ix+#18),a
	ld c,(hl)
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#1b),a
	ld (ix+#2e),#40
	ld a,(hl)
	inc hl
	ld (ix+#1c),a
	ld (ix+#1d),a
	ld a,(hl)
	inc hl
	ld (ix+#1e),a
	ld (ix+#0a),l
	ld (ix+#0b),h
	ld a,(ix+#09)
	and #40
	jr z,l42df
	ld c,(ix+#1f)
.l42df
	ld h,#00
	ld l,c
	ld de,(l4976)
	add hl,hl
	nop
	add hl,de
	nop
	nop
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld hl,(l4982)
	add hl,de
	ld (ix+#12),l
	ld (ix+#13),h
	xor a
	ld (ix+#30),a
	ld (ix+#1a),a
	ld (ix+#19),a
	ld (ix+#0e),a
	ret
.l4306
	xor a
	ld (ix+#20),a
.l430a
	ld a,(ix+#1a)
	or a
	jr z,l4317
	dec a
	ld (ix+#1a),a
	jp l445a
.l4317
	ld l,(ix+#12)
	ld h,(ix+#13)
	ld e,(ix+#30)
	ld d,#00
	add hl,de
.l4323
	ld a,(hl)
	cp #e1
	jp z,l4457
	cp #e0
	jr nz,l433c
	inc hl
	ld a,(hl)
	and #3f
	ld d,#00
	ld e,a
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld a,(hl)
.l433c
	cp #e2
	jr nz,l434c
	xor a
	ld (ix+#0e),a
	inc a
	ld (ix+#17),a
	inc hl
	inc e
	jr l4323
.l434c
	cp #e9
	jr nz,l43a2
	inc hl
	ld a,(hl)
	srl a
	ld bc,#f40b
	out (c),c
	ld bc,#f6c0
	out (c),c
	ld c,#00
	out (c),c
	ld b,#f4
	out (c),a
	ld bc,#f680
	out (c),c
	xor a
	out (c),a
	ld bc,#f40c
	out (c),c
	ld bc,#f6c0
	out (c),c
	out (c),a
	ld b,#f4
	out (c),a
	ld bc,#f680
	out (c),c
	out (c),a
	ld bc,#f40d
	out (c),c
	ld bc,#f6c0
	out (c),c
	out (c),a
	ld bc,#f40a
	out (c),c
	ld bc,#f680
	out (c),c
	out (c),a
	inc hl
	inc e
	inc e
	jr l4323
.l43a2
	cp #e7
	jr nz,l43d9
	xor a
	ld (l48b2),a
	inc hl
	inc e
	jp l4323
	cp #e7
	jr nz,l43d9
	inc hl
	ld a,(hl)
	ld h,#00
	ld d,h
	ld e,l
	ld l,a
	ld bc,(l4976)
	add hl,hl
	add hl,hl
	add hl,bc
	inc hl
	inc hl
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld hl,(l4982)
	add hl,de
	xor a
	ld e,a
	ld d,a
	ld (ix+#30),a
	ld (ix+#12),l
	ld (ix+#13),h
	jp l4323
.l43d9
	cp #e8
	jr nz,l43ea
	inc hl
	ld a,(hl)
	ld (ix+#1a),a
	inc e
	inc e
	ld (ix+#30),e
	jp l430a
.l43ea
	cp #e4
	jr nz,l43fc
	xor a
	ld (ix+#2a),a
	inc hl
	ld a,(hl)
	ld (ix+#20),a
	inc hl
	inc e
	inc e
	jr l4452
.l43fc
	cp #e5
	jr nz,l440b
	ld (ix+#2a),#01
	inc e
	ld (ix+#30),e
	jp l430a
.l440b
	cp #e6
	jr nz,l4417
	ld (ix+#2a),#02
	inc hl
	inc e
	jr l4452
.l4417
	cp #e3
	jr nz,l442b
	inc e
	inc e
	inc e
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	ld a,(hl)
	ld (ix+#1c),a
	inc hl
	jr l4452
.l442b
	cp #ea
	jr nz,l4452
	inc e
	inc e
	inc e
	ld (ix+#30),e
	inc hl
	ld a,(hl)
	ld h,#00
	ld l,a
	ld de,(l4984)
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,de
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld hl,(l4984)
	add hl,de
	ld (l48b4),hl
	ld a,#ff
	ld (l48b2),a
	ret
.l4452
	ld a,(hl)
	ld (ix+#2b),a
	inc e
.l4457
	ld (ix+#30),e
.l445a
	ld a,(ix+#19)
	or a
	jr z,l4466
	dec a
	ld (ix+#19),a
	jr l44a9
.l4466
	dec (ix+#17)
	jr nz,l44a9
	ld a,(ix+#18)
	ld (ix+#17),a
.l4471
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	ld e,(ix+#0e)
	ld d,#00
	add hl,de
	ld a,(hl)
	cp #e8
	jr nz,l448f
	inc (ix+#0e)
	inc (ix+#0e)
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	jr l445a
.l448f
	cp #e1
	jr z,l44a9
	cp #e0
	jr nz,l44a2
	inc hl
	ld a,(hl)
	and #3f
	sub #05
	ld (ix+#0e),a
	jr l4471
.l44a2
	ld a,(hl)
	ld (ix+#2d),a
	inc (ix+#0e)
.l44a9
	ld a,(ix+#2b)
	or a
	jp m,l44b6
	add (ix+#08)
	add (ix+#2c)
.l44b6
	and #7f
	add a
	ld c,a
	ld d,#00
	ld e,a
	ld hl,l48b6
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,c
	ld (l4576),a
	ld (l4581),de
	ld h,#00
	ld l,(ix+#21)
	ld bc,l4771
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(ix+#2a)
	or a
	jr nz,l44ec
	ld a,(l4893)
	and b
	and d
	ld (l4893),a
	jr l451c
.l44ec
	cp #01
	jr nz,l4514
	ld a,(l4893)
	or c
	and d
	ld (l4893),a
	ld a,(ix+#08)
	ld (ix+#20),a
	ld a,(ix+#2b)
	or a
	jp p,l450c
	and #7f
	ld (ix+#20),a
	jr l451c
.l450c
	add (ix+#20)
	ld (ix+#20),a
	jr l451c
.l4514
	ld a,(l4893)
	and b
	or e
	ld (l4893),a
.l451c
	ld a,(ix+#20)
	or a
	jr z,l4529
	and #1f
	xor #1f
	ld (l4894),a
.l4529
	ld a,(ix+#1e)
	or a
	jr z,l4535
	dec a
	ld (ix+#1e),a
	jr l4586
.l4535
	ld a,(ix+#1c)
	add a
	ld b,a
	ld c,(ix+#1d)
	ld a,(ix+#2e)
	or a
	jp p,l4548
	bit 0,a
	jr nz,l456b
.l4548
	bit 5,a
	jr nz,l455b
	ld a,c
	sub (ix+#1b)
	ld c,a
	jr nc,l4568
	set 5,(ix+#2e)
	ld c,#00
	jr l4568
.l455b
	ld a,c
	add (ix+#1b)
	ld c,a
	cp b
	jr c,l4568
	res 5,(ix+#2e)
	ld c,b
.l4568
	ld (ix+#1d),c
.l456b
	srl b
	ld a,c
	sub b
	ld l,a
	ld h,#00
	jr nc,l4575
	dec h
.l4576 equ $ + 1
.l4575
	ld a,#00
	sra h
	rr l
	sra h
	rr l
	nop
.l4581 equ $ + 1
	ld de,#0000
	add hl,de
	jr l4589
.l4586
	ld hl,(l4581)
.l4589
	ld a,(ix+#2e)
	xor #01
	ld (ix+#2e),a
	bit 5,(ix+#09)
	jr z,l45d9
	push hl
	ld a,(ix+#1f)
	ld e,a
	ld hl,#0000
	or a
	jp p,l45a5
	dec h
	dec l
.l45a5
	sla e
	adc hl,hl
	sla e
	adc hl,hl
	sla e
	adc hl,hl
	sla e
	adc hl,hl
	sla e
	adc hl,hl
	sla e
	adc hl,hl
	ld a,(ix+#39)
	add e
	ld (ix+#39),a
	jr nc,l45c7
	inc hl
.l45c7
	ld c,(ix+#3a)
	ld b,(ix+#3b)
	add hl,bc
	ld (ix+#3a),l
	ld (ix+#3b),h
	ex de,hl
	pop hl
	or a
	sbc hl,de
.l45d9
	ld a,(ix+#2d)
	sub (ix+#28)
	jp p,l45e3
	xor a
.l45e3
	srl h
	rr l
	ret
.l45e8
	inc b
	ld a,b
	sub c
	ld b,a
	xor a
	ld hl,l48aa
	ld (hl),a
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	ld ix,l479b
	xor a
	call l4611
	ld a,#04
	call l4611
	ld a,#08
	call l4611
	ld hl,l479a
	xor a
	ld (hl),a
	dec hl
	ld a,(hl)
	dec hl
	ld (hl),a
	ret
.l4611
	ld hl,l477d
	ld (ix+#0a),l
	ld (ix+#0b),h
	ld (ix+#12),l
	ld (ix+#13),h
	ld (ix+#21),a
	xor a
	ld (ix+#2d),a
	ld (ix+#08),a
	ld (ix+#09),a
	ld (ix+#30),a
	ld (ix+#31),a
	ld (ix+#0e),a
	ld (ix+#0f),a
	ld (ix+#19),a
	ld (ix+#1a),a
	ld (ix+#1b),a
	ld (ix+#1c),a
	ld (ix+#1d),a
	ld (ix+#1e),a
	ld (ix+#1f),a
	ld (ix+#20),a
	ld (ix+#26),a
	ld (ix+#27),a
	ld (ix+#28),a
	ld (ix+#29),a
	ld (ix+#2b),a
	ld (ix+#3c),a
	inc a
	ld (ix+#17),a
	ld (ix+#18),a
	inc a
	ld (ix+#2a),a
	ld a,#0c
	ld (ix+#04),a
	ld (ix+#05),#00
	ld hl,(l497c)
	ld e,(ix+#21)
	ld d,#00
	add hl,de
	push hl
	ld h,#00
	ld l,c
	add hl,hl
	add hl,hl
	ld d,h
	ld e,l
	add hl,hl
	add hl,de
	pop de
	add hl,de
	ld (ix+#00),l
	ld (ix+#01),h
	push hl
	ld l,(hl)
	ld h,#00
	ld de,(l497a)
	add hl,hl
	nop
	add hl,de
	nop
	nop
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld hl,(l4982)
	add hl,de
	ld (ix+#22),l
	ld (ix+#23),h
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#2c),a
	inc hl
	ld a,(hl)
	ld (ix+#16),a
	inc hl
	ld a,(hl)
	ld (ix+#34),b
	ld (ix+#35),b
	ld (l46c9),a
	and #f0
	cp #f0
	jr nz,l46cf
.l46c9 equ $ + 1
	ld a,#00
	and #0f
	ld (ix+#3c),a
.l46cf
	xor a
	ld (ix+#2d),a
	ld (ix+#39),a
	ld (ix+#3a),a
	ld (ix+#3b),a
	ld de,#003e
	add ix,de
	ret
.l46e2
	or a
	jp z,l4770
	ld ix,l4855
	ld (ix+#08),a
	ld a,(l4897)
	ld e,a
	add a
	add a
	ld (ix+#21),a
	ld a,e
	inc a
	ld (l4895),a
	xor a
	ld (ix+#16),a
	ld (ix+#19),a
	ld (ix+#1a),a
	ld (ix+#0e),a
	ld (ix+#0f),a
	ld (ix+#1f),a
	ld (ix+#39),a
	ld (ix+#3a),a
	ld (ix+#3b),a
	ld (ix+#30),a
	ld (ix+#31),a
	ld (ix+#2e),#40
	ld a,c
	and #1f
	ld h,#00
	ld l,a
	ld de,(l4978)
	add hl,hl
	add hl,hl
	add hl,de
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld hl,(l4982)
	add hl,de
	ld a,(hl)
	ld (ix+#17),a
	ld (ix+#18),a
	inc hl
	ld c,(hl)
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	ld a,(hl)
	ld (ix+#1c),a
	ld (ix+#1d),a
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	inc hl
	ld (ix+#0a),l
	ld (ix+#0b),h
	ld h,#00
	ld l,c
	ld de,(l4976)
	add hl,hl
	add hl,hl
	add hl,de
	inc hl
	inc hl
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld hl,(l4982)
	add hl,de
	ld (ix+#12),l
	ld (ix+#13),h
.l4770
	ret
.l4771
	db #01,#fe,#08,#f7,#02,#fd,#10,#ef
	db #04,#fb,#20,#df
.l477d
	db #01,#00,#00,#00,#00,#00,#e1,#00
.l4785
	db #00,#00
.l4787
	db #00,#00
.l4789
	db #00,#00
.l478b
	db #00
.l478c
	db #3f
.l478d
	db #00
.l478e
	db #00
.l478f
	db #00
.l4790
	db #00,#00,#00,#08,#02,#09,#04,#0a
.l4798
	db #04
.l4799
	db #04
.l479a
	db #00
.l479b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l47d7
	db #00,#00
.l47d9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l4815
	db #00,#00
.l4817
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l4853
	db #00,#00
.l4855
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l4893
	db #00
.l4894
	db #00
.l4895
	db #00
.l4896
	db #00
.l4897
	db #00
.l4898
	db #00,#01,#02,#03,#04,#05,#06,#07
	db #08,#09,#0a,#0b,#0f,#0f,#0f,#0f
	db #0f,#0f
.l48aa
	db #00,#00,#00,#00
.l48ae
	db #00,#00,#00,#00
.l48b2
	db #00,#00
.l48b4
	db #00,#00
.l48b6
	dw #0eee,#0e17,#0d4d,#0c8e
	dw #0bd9,#0b2f,#0a8e,#09f7
	dw #0967,#08e0,#0861,#07e8
	dw #0777,#070b,#06a6,#0647
	dw #05ec,#0597,#0547,#04fb
	dw #04b3,#0470,#0430,#03f4
	dw #03bb,#0385,#0353,#0323
	dw #02f6,#02cb,#02a3,#027d
	dw #0259,#0238,#0218,#01fa
	dw #01dd,#01c2,#01a9,#0191
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010c,#00fd
	dw #00ee,#00e1,#00d4,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0086,#007e
	dw #0077,#0070,#006a,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0043,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
.l4976
	db #00,#00
.l4978
	db #00,#00
.l497a
	db #00,#00
.l497c
	db #00,#00
.l497e
	db #00,#00
.l4980
	db #00,#00
.l4982
	db #00,#00
.l4984
	db #00,#00

.music_data	; COSO
	db #43,#4f,#53,#4f,#00,#00,#00,#40
	db #00,#00,#00,#a4,#00,#00,#01,#6e
	db #00,#00,#07,#2c,#00,#00,#0a,#8c
	db #00,#00,#0a,#9e,#00,#00,#00,#00
	db #4d,#4d,#4d,#45,#00,#08,#00,#09
	db #00,#2f,#00,#47,#00,#40,#00,#03
	db #00,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#52,#00,#5c,#00,#71,#00,#78
	db #00,#7d,#00,#81,#00,#8c,#00,#93
	db #00,#9b,#e2,#e5,#93,#e6,#97,#90
	db #88,#81,#00,#e1,#e2,#e5,#93,#e9
	db #10,#e6,#9d,#9f,#e5,#93,#e4,#90
	db #e6,#9d,#9a,#96,#95,#93,#91,#90
	db #e1,#e2,#e4,#93,#0c,#e6,#00,#e1
	db #e2,#e6,#00,#00,#e1,#e2,#e6,#00
	db #e1,#e2,#e9,#1e,#00,#e9,#3c,#00
	db #e6,#00,#00,#e1,#e2,#e9,#1e,#00
	db #e6,#00,#e1,#e2,#e6,#03,#07,#0a
	db #0c,#e0,#02,#e2,#e6,#00,#05,#09
	db #0c,#e0,#02,#00,#00,#b8,#00,#c3
	db #00,#d8,#00,#e2,#00,#f9,#01,#39
	db #01,#41,#01,#49,#01,#5f,#01,#66
	db #01,#00,#05,#0c,#05,#0d,#0f,#0f
	db #0d,#0c,#e1,#01,#01,#00,#00,#00
	db #0d,#0f,#0f,#0f,#0d,#0c,#0e,#0d
	db #0a,#06,#05,#04,#03,#02,#01,#e1
	db #01,#02,#06,#0c,#04,#0e,#0f,#0e
	db #0d,#e1,#01,#03,#04,#04,#00,#0a
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #e1,#03,#04,#05,#0a,#05,#0f,#0e
	db #0d,#0d,#0c,#0b,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#03
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#04,#05,#0a,#0f,#0f,#0e
	db #e1,#01,#04,#05,#0b,#0f,#0f,#0e
	db #e1,#01,#04,#04,#08,#00,#0e,#0d
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#01,#00,#e1,#01
	db #05,#00,#00,#00,#10,#e1,#01,#06
	db #00,#00,#00,#10,#e1,#00,#01,#ce
	db #01,#d1,#01,#f4,#02,#17,#02,#3a
	db #02,#5d,#02,#6a,#02,#73,#02,#78
	db #02,#7b,#02,#88,#02,#94,#02,#a0
	db #02,#c3,#02,#e6,#03,#07,#03,#2a
	db #03,#4d,#03,#70,#03,#91,#03,#b4
	db #03,#dd,#04,#06,#04,#29,#04,#4c
	db #04,#6f,#04,#79,#04,#a2,#04,#cb
	db #05,#06,#05,#30,#05,#5a,#05,#7f
	db #05,#90,#05,#b3,#05,#bd,#05,#e7
	db #06,#0a,#06,#2d,#06,#39,#06,#3f
	db #06,#50,#06,#75,#06,#9a,#06,#ab
	db #06,#cc,#06,#f1,#07,#08,#fd,#1f
	db #ff,#fe,#01,#0c,#00,#18,#00,#0c
	db #02,#0c,#02,#0c,#01,#0c,#00,#0c
	db #02,#07,#02,#0a,#00,#16,#02,#0c
	db #00,#18,#00,#0c,#01,#18,#00,#0f
	db #00,#16,#02,#ff,#fe,#01,#11,#02
	db #11,#02,#11,#00,#1d,#02,#11,#01
	db #1d,#02,#11,#00,#11,#02,#11,#00
	db #11,#02,#11,#02,#1d,#02,#13,#01
	db #13,#02,#16,#02,#0a,#02,#ff,#fe
	db #01,#24,#00,#24,#00,#30,#00,#24
	db #00,#2e,#00,#30,#00,#24,#00,#24
	db #00,#24,#00,#30,#00,#2e,#00,#2b
	db #00,#24,#00,#2e,#00,#30,#00,#24
	db #00,#ff,#fe,#01,#24,#00,#24,#00
	db #30,#00,#24,#00,#2e,#00,#30,#00
	db #24,#00,#33,#00,#24,#00,#24,#00
	db #30,#00,#24,#00,#2e,#00,#24,#00
	db #30,#00,#30,#00,#ff,#fd,#03,#fe
	db #07,#2e,#00,#30,#00,#fe,#03,#2b
	db #00,#ff,#fe,#07,#30,#00,#2b,#00
	db #2e,#00,#ff,#fe,#17,#0c,#00,#ff
	db #fd,#17,#ff,#fe,#0b,#0c,#00,#fe
	db #03,#0c,#02,#0c,#02,#0c,#00,#ff
	db #fe,#03,#2e,#00,#ae,#20,#08,#fe
	db #17,#b0,#00,#ff,#fd,#03,#2e,#00
	db #ae,#20,#08,#fe,#13,#b0,#00,#ff
	db #fe,#01,#33,#00,#33,#02,#30,#00
	db #33,#00,#33,#02,#30,#00,#33,#00
	db #33,#02,#30,#00,#2e,#00,#2b,#00
	db #2a,#00,#29,#00,#27,#00,#24,#00
	db #22,#00,#ff,#fe,#01,#27,#00,#27
	db #01,#18,#00,#18,#00,#18,#01,#18
	db #00,#18,#01,#24,#00,#18,#00,#18
	db #01,#24,#00,#18,#00,#22,#00,#22
	db #01,#24,#00,#24,#01,#ff,#fd,#03
	db #fe,#01,#33,#00,#33,#01,#30,#00
	db #33,#00,#33,#01,#30,#00,#33,#00
	db #33,#01,#30,#00,#2e,#00,#2b,#00
	db #2a,#00,#29,#00,#27,#00,#ff,#fe
	db #01,#24,#00,#18,#00,#18,#02,#18
	db #00,#18,#02,#24,#00,#18,#00,#18
	db #02,#24,#00,#18,#00,#22,#00,#22
	db #02,#24,#00,#24,#02,#27,#00,#27
	db #02,#ff,#fe,#01,#30,#00,#30,#02
	db #2e,#00,#30,#00,#33,#00,#24,#00
	db #2e,#00,#30,#00,#30,#02,#2e,#00
	db #29,#00,#2a,#00,#2b,#00,#2b,#02
	db #2e,#00,#2e,#02,#ff,#fe,#01,#30
	db #00,#30,#02,#29,#00,#2a,#00,#2b
	db #00,#2e,#00,#27,#00,#29,#00,#29
	db #02,#2b,#00,#2b,#02,#2e,#00,#2e
	db #02,#33,#00,#33,#02,#2e,#00,#ff
	db #fd,#03,#fe,#01,#30,#00,#30,#01
	db #2e,#00,#30,#00,#33,#00,#24,#00
	db #2e,#01,#30,#00,#30,#01,#2e,#00
	db #29,#00,#2a,#00,#2b,#00,#2b,#01
	db #ff,#fe,#01,#33,#01,#2e,#00,#30
	db #00,#30,#01,#29,#00,#29,#00,#2b
	db #00,#2e,#00,#27,#00,#29,#00,#29
	db #01,#2b,#00,#2b,#01,#2e,#00,#2e
	db #01,#33,#00,#ff,#fe,#01,#30,#00
	db #30,#02,#33,#00,#30,#00,#30,#02
	db #35,#00,#30,#00,#30,#02,#37,#00
	db #30,#00,#30,#02,#35,#00,#30,#00
	db #30,#02,#fe,#00,#33,#00,#33,#02
	db #2e,#00,#2e,#02,#ff,#fe,#00,#33
	db #00,#33,#01,#2e,#00,#2e,#01,#fe
	db #01,#30,#00,#30,#02,#33,#00,#30
	db #00,#30,#02,#35,#00,#30,#00,#30
	db #02,#37,#00,#30,#00,#30,#02,#35
	db #00,#30,#00,#30,#02,#ff,#fe,#01
	db #30,#00,#30,#02,#29,#00,#2a,#00
	db #2b,#00,#2e,#00,#27,#00,#29,#00
	db #29,#02,#27,#00,#27,#02,#24,#00
	db #24,#02,#22,#00,#22,#02,#2e,#00
	db #ff,#fe,#01,#33,#01,#2e,#00,#30
	db #00,#30,#01,#29,#00,#29,#00,#2b
	db #00,#2e,#00,#27,#00,#29,#00,#29
	db #01,#27,#00,#27,#01,#24,#00,#24
	db #01,#22,#00,#ff,#fe,#01,#24,#00
	db #24,#00,#24,#00,#24,#00,#24,#00
	db #24,#00,#24,#00,#24,#00,#24,#00
	db #24,#00,#24,#00,#24,#00,#24,#00
	db #24,#00,#24,#00,#24,#00,#ff,#fe
	db #03,#22,#20,#0a,#fe,#1b,#a4,#00
	db #ff,#fe,#01,#30,#00,#30,#02,#34
	db #00,#30,#00,#30,#02,#35,#00,#30
	db #00,#30,#02,#37,#00,#30,#00,#30
	db #02,#35,#00,#30,#00,#30,#02,#fe
	db #00,#34,#00,#34,#02,#2b,#00,#2b
	db #02,#ff,#fe,#00,#34,#00,#34,#01
	db #2b,#00,#2b,#01,#fe,#01,#30,#00
	db #30,#02,#34,#00,#30,#00,#30,#02
	db #35,#00,#30,#00,#30,#02,#37,#00
	db #30,#00,#30,#02,#35,#00,#30,#00
	db #30,#02,#ff,#fe,#01,#0c,#00,#fe
	db #03,#0c,#00,#fe,#01,#18,#01,#fe
	db #03,#0c,#00,#fe,#01,#18,#01,#0c
	db #00,#fe,#02,#18,#01,#fe,#00,#18
	db #01,#0c,#00,#0c,#00,#18,#01,#fe
	db #01,#0c,#00,#fe,#00,#0c,#00,#fe
	db #01,#0c,#00,#fe,#00,#0c,#00,#0c
	db #00,#fe,#01,#0c,#00,#ff,#fe,#01
	db #24,#00,#30,#40,#07,#30,#00,#24
	db #00,#30,#40,#07,#30,#00,#24,#00
	db #30,#40,#07,#30,#40,#07,#30,#00
	db #30,#40,#07,#2b,#00,#24,#00,#30
	db #40,#07,#30,#00,#30,#40,#07,#ff
	db #fe,#01,#24,#00,#30,#40,#08,#30
	db #00,#24,#00,#30,#40,#08,#30,#00
	db #24,#00,#30,#40,#08,#30,#40,#08
	db #30,#00,#30,#40,#08,#2b,#00,#24
	db #00,#30,#40,#08,#30,#00,#30,#40
	db #08,#ff,#fe,#01,#24,#02,#24,#04
	db #0c,#00,#18,#03,#0c,#01,#30,#03
	db #0c,#00,#0c,#00,#2e,#03,#fe,#03
	db #0c,#00,#fe,#01,#30,#03,#0c,#01
	db #0c,#00,#0c,#00,#0c,#00,#ff,#fe
	db #15,#24,#00,#fe,#01,#24,#02,#fe
	db #05,#2b,#00,#fe,#01,#2b,#02,#ff
	db #fe,#01,#29,#00,#29,#02,#27,#00
	db #29,#00,#2b,#00,#2e,#00,#2e,#02
	db #2b,#00,#2e,#00,#30,#00,#30,#02
	db #30,#01,#2b,#00,#2e,#00,#29,#00
	db #29,#01,#ff,#fe,#03,#29,#20,#09
	db #fe,#1b,#ab,#00,#ff,#fd,#01,#2b
	db #00,#2e,#00,#30,#00,#fe,#00,#2b
	db #00,#2e,#00,#2b,#00,#2e,#00,#2b
	db #00,#2e,#00,#2b,#00,#2e,#00,#29
	db #00,#2e,#00,#2b,#00,#fe,#04,#2e
	db #00,#fe,#07,#2e,#20,#03,#ff,#fe
	db #01,#33,#00,#33,#02,#30,#00,#33
	db #00,#33,#02,#30,#00,#33,#00,#33
	db #02,#30,#00,#33,#00,#33,#02,#30
	db #00,#33,#00,#33,#02,#2e,#00,#30
	db #00,#ff,#fe,#01,#35,#00,#35,#02
	db #30,#00,#35,#00,#35,#02,#30,#00
	db #35,#00,#35,#02,#30,#00,#35,#00
	db #35,#02,#30,#00,#35,#00,#35,#02
	db #2e,#00,#30,#00,#ff,#fe,#03,#35
	db #00,#b5,#20,#06,#fe,#17,#b7,#00
	db #ff,#fe,#1f,#37,#20,#80,#ff,#fe
	db #05,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#fe,#03,#0c,#00,#0c,#00,#ff
	db #fe,#01,#30,#00,#30,#02,#2b,#00
	db #2b,#02,#24,#00,#24,#02,#30,#00
	db #2b,#00,#2b,#02,#fe,#03,#24,#00
	db #fe,#01,#30,#00,#30,#02,#2b,#00
	db #24,#00,#24,#02,#ff,#fe,#01,#30
	db #00,#30,#02,#29,#00,#29,#02,#24
	db #00,#24,#02,#30,#00,#29,#00,#29
	db #02,#fe,#03,#24,#00,#fe,#01,#30
	db #00,#30,#02,#29,#00,#24,#00,#24
	db #02,#ff,#fe,#05,#0c,#00,#0c,#00
	db #0c,#00,#0c,#00,#fe,#03,#0f,#00
	db #11,#00,#ff,#fe,#03,#18,#00,#fe
	db #01,#18,#00,#fe,#03,#18,#00,#fe
	db #01,#0c,#01,#fe,#03,#18,#00,#fe
	db #09,#18,#00,#fe,#01,#0c,#01,#fe
	db #03,#18,#00,#ff,#fe,#01,#2e,#00
	db #2e,#02,#29,#00,#29,#02,#24,#00
	db #24,#02,#2e,#00,#29,#00,#29,#02
	db #fe,#03,#24,#00,#fe,#01,#2e,#00
	db #2e,#02,#29,#00,#24,#00,#24,#02
	db #ff,#fe,#05,#18,#00,#16,#00,#13
	db #00,#fe,#03,#11,#00,#fe,#01,#0f
	db #00,#fe,#03,#0f,#00,#0a,#00,#ff
	db #fe,#01,#0c,#01,#0c,#01,#0c,#01
	db #0c,#01,#0c,#00,#0c,#00,#0c,#01
	db #0c,#01,#0c,#01,#0c,#01,#0c,#01
	db #0c,#01,#0c,#00,#0c,#01,#0c,#00
	db #0c,#01,#ff,#00,#10,#00,#05,#f0
	db #12,#00,#06,#f2,#03,#00,#03,#f5
	db #11,#00,#05,#f0,#13,#00,#06,#f2
	db #03,#00,#03,#f4,#10,#00,#05,#f0
	db #12,#00,#06,#f2,#03,#00,#03,#f3
	db #16,#00,#05,#f0,#17,#00,#06,#f2
	db #03,#00,#03,#f2,#10,#00,#05,#f0
	db #12,#00,#06,#f2,#03,#00,#02,#f1
	db #11,#00,#05,#f0,#13,#00,#06,#f2
	db #03,#00,#02,#f1,#10,#00,#05,#f0
	db #12,#00,#06,#f2,#03,#00,#02,#f1
	db #16,#00,#05,#f0,#17,#00,#06,#f2
	db #03,#00,#02,#f1,#1c,#18,#08,#f0
	db #03,#00,#02,#f1,#01,#00,#00,#00
	db #1c,#18,#08,#f0,#03,#00,#02,#f1
	db #02,#00,#00,#00,#1c,#18,#08,#f0
	db #03,#00,#02,#f2,#01,#00,#00,#00
	db #1c,#18,#08,#f0,#03,#00,#02,#f3
	db #02,#00,#00,#00,#1c,#18,#08,#f0
	db #1d,#00,#02,#f1,#01,#00,#00,#00
	db #1c,#0c,#08,#f4,#1e,#00,#02,#f1
	db #02,#00,#00,#00,#1c,#0c,#08,#f8
	db #1d,#00,#02,#f1,#01,#00,#00,#00
	db #1c,#0c,#08,#fc,#1e,#00,#02,#f1
	db #02,#00,#00,#00,#20,#00,#05,#f0
	db #1d,#00,#02,#f1,#01,#00,#00,#00
	db #21,#00,#05,#00,#1e,#00,#02,#f1
	db #02,#00,#00,#00,#22,#00,#05,#00
	db #1d,#00,#02,#f1,#01,#00,#00,#00
	db #23,#00,#05,#00,#1e,#00,#02,#f1
	db #02,#00,#00,#00,#24,#00,#05,#00
	db #1d,#00,#02,#f1,#01,#00,#00,#00
	db #25,#00,#05,#00,#1e,#00,#02,#f1
	db #02,#00,#00,#00,#26,#00,#05,#00
	db #1d,#00,#02,#f1,#01,#00,#00,#00
	db #27,#24,#08,#00,#1e,#00,#02,#f1
	db #02,#00,#00,#00,#20,#03,#05,#f0
	db #1d,#03,#02,#f1,#01,#03,#00,#00
	db #21,#03,#05,#00,#1e,#03,#02,#f1
	db #02,#03,#00,#00,#22,#03,#05,#00
	db #1d,#03,#02,#f1,#01,#03,#00,#00
	db #23,#03,#05,#00,#1e,#03,#02,#f1
	db #02,#03,#00,#00,#24,#03,#05,#00
	db #1d,#03,#02,#f1,#01,#03,#00,#00
	db #25,#03,#05,#00,#1e,#03,#02,#f1
	db #02,#03,#00,#00,#26,#03,#05,#00
	db #1d,#03,#02,#f1,#01,#03,#00,#00
	db #00,#03,#08,#00,#1e,#03,#02,#f1
	db #02,#03,#00,#00,#19,#00,#08,#f0
	db #1d,#00,#02,#f1,#19,#e8,#05,#f2
	db #00,#00,#00,#f0,#1e,#00,#02,#f1
	db #00,#e8,#00,#00,#00,#00,#00,#f0
	db #1d,#00,#02,#f1,#00,#e8,#00,#00
	db #00,#00,#00,#f0,#1e,#00,#02,#f1
	db #00,#e8,#00,#00,#29,#00,#05,#f0
	db #1d,#00,#02,#f1,#00,#e8,#00,#00
	db #2a,#00,#05,#f0,#1e,#00,#02,#f1
	db #00,#e8,#00,#00,#29,#00,#05,#f0
	db #1d,#00,#02,#f1,#00,#e8,#00,#00
	db #2a,#00,#05,#f0,#1e,#00,#02,#f1
	db #00,#e8,#00,#00,#29,#00,#05,#f0
	db #1d,#00,#02,#f1,#28,#00,#00,#f0
	db #2a,#00,#05,#f0,#1e,#00,#02,#f1
	db #2b,#00,#00,#f0,#29,#00,#05,#f0
	db #1d,#00,#02,#f1,#28,#00,#00,#f0
	db #2a,#00,#05,#f0,#1e,#00,#02,#f1
	db #2b,#00,#00,#f0,#29,#03,#05,#f0
	db #1d,#03,#02,#f1,#28,#03,#00,#f0
	db #2a,#03,#05,#f0,#1e,#03,#02,#f1
	db #2b,#03,#00,#f0,#29,#03,#05,#f0
	db #1d,#03,#02,#f1,#28,#03,#00,#f0
	db #2a,#03,#05,#f0,#1e,#03,#02,#f1
	db #2b,#03,#00,#f0,#2a,#07,#05,#f0
	db #1d,#00,#02,#f1,#28,#00,#00,#f0
	db #2d,#07,#05,#f0,#1e,#00,#02,#f1
	db #2b,#00,#00,#f0,#2a,#07,#05,#f0
	db #1d,#00,#02,#f1,#28,#00,#00,#f0
	db #2d,#07,#05,#f0,#1e,#00,#02,#f1
	db #2b,#00,#00,#f0,#1c,#0c,#08,#f0
	db #2c,#e8,#00,#f1,#1f,#00,#00,#f0
	db #1c,#0c,#08,#f0,#2c,#e8,#00,#f1
	db #1f,#00,#00,#f0,#1c,#0c,#08,#f0
	db #2c,#e8,#00,#f1,#1f,#00,#00,#f0
	db #1c,#0c,#08,#f0,#2c,#e8,#00,#f1
	db #1f,#00,#00,#f0,#20,#05,#05,#f0
	db #1d,#05,#02,#f1,#01,#05,#00,#00
	db #21,#05,#05,#00,#1e,#05,#02,#f1
	db #02,#05,#00,#00,#22,#05,#05,#00
	db #1d,#05,#02,#f1,#01,#05,#00,#00
	db #23,#05,#05,#00,#1e,#05,#02,#f1
	db #02,#05,#00,#00,#24,#05,#05,#00
	db #1d,#05,#02,#f1,#01,#05,#00,#00
	db #25,#05,#05,#00,#1e,#05,#02,#f1
	db #02,#05,#00,#00,#26,#05,#05,#00
	db #1d,#05,#02,#f1,#01,#05,#00,#00
	db #2f,#05,#01,#f0,#1e,#05,#03,#f1
	db #2e,#05,#00,#f0,#14,#00,#05,#f0
	db #15,#00,#06,#f2,#19,#e8,#05,#f0
	db #14,#00,#05,#f0,#15,#00,#06,#f2
	db #19,#f4,#05,#f0,#1a,#fc,#05,#f0
	db #1b,#fc,#06,#f2,#19,#f0,#05,#f0
	db #1a,#fc,#05,#f0,#1b,#fc,#06,#f2
	db #19,#fc,#05,#f0,#14,#f9,#05,#f0
	db #15,#f9,#06,#f2,#19,#f9,#05,#f0
	db #14,#f9,#05,#f0,#15,#f9,#06,#f2
	db #19,#ed,#05,#f0,#1a,#fb,#05,#f0
	db #1b,#fb,#06,#f2,#19,#ef,#05,#f0
	db #1a,#fb,#05,#f0,#1b,#fb,#06,#f2
	db #19,#fb,#05,#f0,#00,#00,#00,#3f
	db #00,#03,#00,#40,#00,#47,#00,#03
	db #00,#00
;
.init_music	; added by Megachur
;
	push af
	ld de,#003b
	ld hl,music_data	; 4986 - COSO
	call l400c
	pop af
	inc a
	jp real_init_music

;
.music_info
	db "Intox (19xx)(Malibu Crackers)(Jochen Hippel)",0
	db "COSO",0

	read "music_end.asm"
