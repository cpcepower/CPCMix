; Music of Dancing Girl (1986)(Minipuce)()()
; Ripped by Megachur the 09/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DANCINGI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8300
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

;
.init_music
;
	ld hl,(l83b3)
	push hl
	ld h,#0d
	ld l,#02
	call #bc1a
	ld (l83b3),hl
	ld hl,#6f80
	ld (l83b1),hl
	call l837b
	ld h,#17
	ld l,#02
	call #bc1a
	push hl
	ld hl,#6f80
	ld (l8414),hl
	ld hl,#4000
	ld (l8416),hl
	call l83b9
	ld hl,#4000
	ld (l83b1),hl
	pop hl
	ld (l83b3),hl
	call l837b
	ld h,#12
	ld l,#02
	call #bc1a
	ld (l83b3),hl
	ld hl,#7200
	ld (l83b1),hl
	call l837b
	ld h,#04
	ld l,#0c
	call #bc1a
	ld (l83b3),hl
	ld hl,#7980
	ld (l83b1),hl
	call l837b
	ld h,#1f
	ld l,#0c
	call #bc1a
	ld (l83b3),hl
	ld hl,#6d00
	ld (l83b1),hl
	call l837b
	pop hl
	ld (l83b3),hl
	jp l851e
.l837b
	ld b,#08
.l837d
	push bc
	ld bc,(l83ad)
	ld b,c
.l8383
	push bc
	ld bc,(l83af)
	ld hl,(l83b1)
	ld de,(l83b3)
	ldir
	ld (l83b1),hl
	ld hl,(l83b7)
	add hl,de
	ld (l83b3),hl
	pop bc
	djnz l8383
	ld hl,(l83b5)
	ld bc,(l83b3)
	add hl,bc
	ld (l83b3),hl
	pop bc
	djnz l837d
	ret
.l83b3 equ $ + 6
.l83b1 equ $ + 4
.l83af equ $ + 2
.l83ad
	db #08,#00,#0a,#00,#00,#80,#e0,#c3
.l83b7 equ $ + 2
.l83b5
	db #80,#05,#46,#00
.l83b9
	ld bc,(l8411)
	ld ix,#0009
	ld de,(l8416)
	add ix,de
	push ix
	pop de
	ld hl,(l8414)
.l83cd
	push bc
	ld bc,(l8417)
.l83d2
	ld a,(hl)
	push bc
	ld b,#00
	rlca
	jr nc,l83db
	set 4,b
.l83db
	rlca
	jr nc,l83e0
	set 5,b
.l83e0
	rlca
	jr nc,l83e5
	set 6,b
.l83e5
	rlca
	jr nc,l83ea
	set 7,b
.l83ea
	rlca
	jr nc,l83ef
	set 0,b
.l83ef
	rlca
	jr nc,l83f4
	set 1,b
.l83f4
	rlca
	jr nc,l83f9
	set 2,b
.l83f9
	rlca
	jr nc,l83fe
	set 3,b
.l83fe
	ld a,b
	ld (de),a
	pop bc
	dec de
	inc hl
	djnz l83d2
	ld ix,#0014
	add ix,de
	push ix
	pop de
	pop bc
	djnz l83cd
.l8411
	ret
.l8417 equ $ + 5
.l8416 equ $ + 4
.l8414 equ $ + 2
	db #40,#00,#00,#50,#00,#40,#0a,#00
.l841a
	push af
	push bc
	push hl
	push ix
	call l8580
	ld hl,(l83b3)
	push hl
	ld h,#12
	ld l,#02
	call #bc1a
	ld (l83b3),hl
	ld ix,(l8461)
	ld c,(ix+#00)
	ld b,(ix+#01)
	ld (l83b1),bc
	call l837b
	ld hl,(l8461)
	inc hl
	inc hl
	ld a,(hl)
	cp #04
	jr z,l8458
	ld (l8461),hl
.l844e
	pop hl
	ld (l83b3),hl
	pop ix
	pop hl
	pop bc
	pop af
	ret
.l8458
	ld hl,l8463
	ld (l8461),hl
	jp l844e
.l8463 equ $ + 2
.l8461
	db #63,#84,#00,#72,#80,#74,#00,#77
	db #04,#04
.l846b
	ld a,(ix+#00)
	cp #04
	jr z,l84d1
	ld c,(ix+#00)
	ld b,(ix+#01)
	ld a,b
	cp #40
	jr nc,l848f
	ld a,b
	add #40
	ld b,a
	ld (l8414),bc
	push ix
	call l83b9
	pop ix
	ld bc,#4000
.l848f
	ld (l83b1),bc
	ld c,(ix+#02)
	ld b,(ix+#03)
	ld hl,(l83b3)
	add hl,bc
	ld (l83b3),hl
	ld c,(ix+#04)
	ld b,(ix+#05)
	ld (l8516),bc
	push ix
	ld hl,(l83b3)
	push hl
	call l837b
	call l841a
	pop hl
	ld (l83b3),hl
	call l84d2
	ld bc,#8000
	ld (l8516),bc
	call l84d2
	pop ix
	ld bc,#0006
	add ix,bc
	jp l846b
.l84d1
	ret
.l84d2
	ld bc,(l8516)
.l84d6
	nop
	ld (l8518),bc
	ld (l851c),hl
	ld (l851a),ix
	push af
	call l8580
	pop af
	ld bc,(l8518)
	ld hl,(l851c)
	ld ix,(l851a)
	ld a,(l8516)
	ld b,a
	ld a,(l859f)
	cp b
	jp nc,l8504
	sub b
	ld (l859f),a
	jp l84d6
.l8504
	ld a,(l8516)
	ld b,a
.l8508
	call l850e
	djnz l8508
	ret
.l850e
	push bc
	ld b,#40
.l8511
	nop
	djnz l8511
	pop bc
	ret
.l851c equ $ + 6
.l851a equ $ + 4
.l8518 equ $ + 2
.l8516
	db #04,#03,#00,#00,#00,#00,#00,#00
.l851e
	ld hl,#3f00
.l8521
	ld a,(hl)
	cp #40
	jr z,l852e
	push hl
	call l855b
	pop hl
	inc hl
	jr l8521
.l852e
	ld a,(l855a)
	cp #00
	jp l853c
	ld a,#01
	ld a,(l855a)
	ret
.l853c
	ld a,#00
	ld (l855a),a
	call #bcb6
	call #bca7
	ld hl,#3300
	ld (l8675),hl
	ld hl,#3000
	ld (l8680),hl
	ld hl,#3700
	ld (l868b),hl
	ret
.l855a
	db #00
.l855b
	ld b,a
	ld hl,l8700
.l855f
	ld a,(hl)
	cp b
	jr z,l856d
	cp #04
	jr z,l8577
	inc hl
	inc hl
	inc hl
	jp l855f
.l856d
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	jp l8577
	ld bc,l873a
.l8577
	push bc
	pop ix
	call l846b
	ret
	inc (hl)
	ld (de),a
.l8580
	ld a,#01
	call #bcad
	and #07
	jp nz,l85a1
.l858a
	ld a,#02
	call #bcad
	and #07
	jp nz,l85dc
.l8594
	ld a,#04
	call #bcad
	and #07
	jp nz,l8608
.l859e
	ret
.l859f
	nop
	nop
.l85a1
	ld hl,(l8675)
	ld ix,l8677
	ld (ix+#01),#01
	ld (ix+#06),#04
	call l8634
	ld a,(l8696)
	cp #00
	jr nz,l85d3
	ld ix,(l8675)
	ld a,(ix+#02)
	ld b,a
	ld a,(l859f)
	add b
	ld (l859f),a
	ld hl,(l8675)
	ld bc,#0004
	add hl,bc
	jp l85d6
.l85d3
	ld hl,#3300
.l85d6
	ld (l8675),hl
	jp l858a
.l85dc
	ld hl,(l8680)
	ld ix,l8682
	ld (ix+#01),#02
	ld (ix+#06),#07
	call l8634
	ld a,(l8696)
	cp #00
	jr nz,l85ff
	ld hl,(l8680)
	ld bc,#0004
	add hl,bc
	jp l8602
.l85ff
	ld hl,#3000
.l8602
	ld (l8680),hl
	jp l8594
.l8608
	ld hl,(l868b)
	ld ix,l868d
	ld (ix+#01),#04
	ld (ix+#06),#04
	call l8634
	ld a,(l8696)
	cp #00
	jr nz,l862b
	ld hl,(l868b)
	ld bc,#0004
	add hl,bc
	jp l862e
.l862b
	ld hl,#3700
.l862e
	ld (l868b),hl
	jp l859e
.l8634
	push hl
	ld a,(hl)
	inc hl
	or (hl)
	dec hl
	jp nz,l8644
	ld (ix+#01),#00
	ld (ix+#06),#00
.l8644
	ld a,#00
	ld (l8696),a
	ld a,(hl)
	cp #ff
	jr z,l866e
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (ix+#03),c
	ld (ix+#04),b
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (ix+#07),c
	ld (ix+#08),b
	push ix
	pop hl
	call #bcaa
	pop hl
	ld a,#00
	ld (l8696),a
	ret
.l866e
	ld a,#01
	ld (l8696),a
	pop hl
	ret
.l8677 equ $ + 2
.l8675
	db #00,#33,#01,#01,#00,#aa,#01,#00
.l8682 equ $ + 5
.l8680 equ $ + 3
	db #04,#00,#01,#00,#30,#02,#02,#00
.l868b equ $ + 6
	db #aa,#01,#00,#07,#00,#01,#00,#37
.l868d
	db #04,#04,#00,#aa,#01,#00,#04,#00
.l8696 equ $ + 1
	db #01,#00,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00
.l8700
	db #41,#3a,#87,#42,#54,#87,#43,#7a
	db #87,#44,#a0,#87,#45,#ba,#87,#46
	db #d4,#87,#47,#ee,#87,#48,#08,#88
	db #49,#28,#88,#4a,#48,#88,#4b,#6e
	db #88,#4c,#94,#88,#4d,#ae,#88,#4e
	db #c8,#88,#4f,#e2,#88,#50,#fc,#88
	db #51,#22,#89,#52,#48,#89,#53,#7a
.l873a equ $ + 2
	db #89,#04,#00,#45,#00,#00,#00,#01
	db #80,#6a,#00,#00,#60,#00,#00,#45
	db #00,#00,#50,#00,#80,#2a,#00,#00
	db #60,#00,#04,#04,#00,#45,#00,#00
	db #10,#00,#80,#1b,#00,#00,#20,#00
	db #80,#51,#00,#00,#40,#00,#00,#54
	db #00,#00,#50,#00,#80,#51,#00,#00
	db #40,#00,#00,#0a,#00,#00,#20,#00
	db #04,#04,#00,#45,#00,#00,#00,#01
	db #80,#5b,#00,#00,#20,#00,#80,#11
	db #00,#00,#40,#00,#00,#14,#00,#00
	db #50,#00,#80,#11,#00,#00,#40,#00
	db #00,#4a,#00,#00,#20,#00,#04,#04
	db #00,#45,#00,#00,#00,#01,#00,#59
	db #00,#00,#30,#00,#80,#5b,#00,#00
	db #60,#00,#00,#0a,#00,#00,#20,#00
	db #04,#04,#00,#45,#00,#00,#00,#01
	db #00,#19,#00,#00,#30,#00,#80,#1b
	db #00,#00,#60,#00,#00,#4a,#00,#00
	db #20,#00,#04,#04,#00,#45,#00,#00
	db #00,#01,#00,#59,#00,#00,#00,#01
	db #00,#45,#00,#00,#10,#00,#00,#19
	db #00,#00,#00,#01,#04,#04,#00,#45
	db #00,#00,#00,#01,#00,#19,#00,#00
	db #00,#01,#00,#45,#00,#00,#10,#00
	db #00,#59,#00,#00,#10,#00,#04,#04
	db #00,#45,#00,#00,#00,#01,#00,#0a
	db #00,#00,#10,#00,#80,#5b,#00,#00
	db #40,#00,#00,#5e,#00,#00,#80,#00
	db #80,#5b,#00,#00,#50,#00,#04,#04
	db #00,#45,#00,#00,#00,#01,#00,#4a
	db #00,#00,#10,#00,#80,#1b,#00,#00
	db #40,#00,#00,#1e,#00,#00,#80,#00
	db #80,#1b,#00,#00,#50,#00,#04,#04
	db #00,#45,#00,#00,#00,#01,#00,#59
	db #00,#00,#30,#00,#80,#11,#00,#00
	db #20,#00,#80,#56,#00,#00,#10,#00
	db #80,#51,#00,#00,#20,#00,#00,#0a
	db #00,#00,#50,#00,#04,#04,#00,#45
	db #00,#00,#00,#01,#00,#19,#00,#00
	db #30,#00,#80,#51,#00,#00,#20,#00
	db #80,#16,#00,#00,#10,#00,#80,#11
	db #00,#00,#20,#00,#00,#4a,#00,#00
	db #50,#00,#04,#04,#00,#45,#00,#00
	db #00,#01,#00,#4a,#00,#00,#10,#00
	db #80,#4c,#00,#00,#10,#00,#00,#0a
	db #02,#00,#10,#00,#04,#04,#00,#05
	db #00,#00,#00,#01,#00,#0a,#00,#00
	db #10,#00,#80,#0c,#00,#00,#10,#00
	db #00,#4a,#fe,#ff,#10,#00,#04,#04
	db #00,#45,#00,#00,#00,#01,#00,#4a
	db #00,#00,#10,#00,#80,#4c,#00,#00
	db #10,#00,#00,#0a,#02,#00,#10,#00
	db #04,#04,#00,#45,#00,#00,#00,#01
	db #00,#0a,#00,#00,#10,#00,#80,#0c
	db #00,#00,#10,#00,#00,#4a,#fe,#ff
	db #10,#00,#04,#04,#00,#45,#00,#00
	db #00,#01,#00,#4a,#00,#00,#40,#00
	db #80,#4c,#00,#00,#20,#00,#00,#4f
	db #00,#00,#50,#00,#80,#4c,#00,#00
	db #20,#00,#00,#4a,#00,#00,#40,#00
	db #04,#04,#00,#45,#00,#00,#00,#01
	db #00,#0a,#00,#00,#40,#00,#80,#0c
	db #00,#00,#20,#00,#00,#0f,#00,#00
	db #50,#00,#80,#0c,#00,#00,#20,#00
	db #00,#0a,#00,#00,#40,#00,#04,#04
	db #80,#60,#00,#00,#50,#01,#00,#63
	db #00,#00,#00,#05,#80,#65,#00,#00
	db #00,#01,#80,#47,#00,#00,#00,#02
	db #00,#45,#00,#00,#40,#00,#80,#42
	db #00,#00,#20,#00,#00,#45,#00,#00
	db #30,#00,#80,#47,#00,#00,#00,#01
	db #04,#04,#00,#45,#00,#00,#00,#01
	db #00,#4a,#00,#00,#30,#00,#00,#4f
	db #00,#00,#20,#00,#00,#68,#00,#00
	db #50,#02,#80,#6a,#00,#00,#50,#00
	db #00,#4a,#00,#00,#10,#00,#80,#47
	db #00,#00,#20,#00,#04,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.music_info
	db "Dancing Girl (1986)(Minipuce)()",0
	db "",0

	read "music_end.asm"
