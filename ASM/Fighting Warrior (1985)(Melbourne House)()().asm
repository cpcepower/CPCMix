; Music of Fighting Warrior (1985)(Melbourne House)()()
; Ripped by Megachur the 15/02/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FIGHTINW.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #7728

	read "music_header.asm"

	ld hl,l7734
	ld (#0039),hl
	ld a,#c3
	ld (#0038),a
	ret
.l7734	; interrupt (set raster color and play music)
	push af
	push bc
	push de
	push hl
	ld hl,l78d2
	push hl
	ld b,#f5
	in a,(c)
	and #01
	jr z,l7749
	ld a,#05
	ld (l78dc),a
.l7749
	ld a,(l78dc)
	inc a
	ld (l78dc),a
	ld hl,(l78dd)
	dec a
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
	dw l7782,l7787,l77b9,l7825
	dw l7854,l789e,l7782,l7787
	dw l778a,l780c,l783e,l786a
.l7776
	dw l7782,l7787,l7782,l7787
	dw l7782,l7783
.l7782
	ret
.l7783
	xor a
	ld (l78dc),a
.l7787
	jp l78d9
.l778a
	ld bc,#7f14
	out (c),c
	ld c,#45
	out (c),c
	ld c,#00
	out (c),c
	ld c,#45
	out (c),c
	ld c,#01
	out (c),c
	ld c,#44
	out (c),c
	ld c,#02
	out (c),c
	ld c,#5e
	out (c),c
	ld c,#03
	out (c),c
	ld c,#54
	out (c),c
	ld bc,#7f8d
	out (c),c
	ret
.l77b9
	ld bc,#7f14
	out (c),c
	ld c,#43
	out (c),c
	ld c,#00
	out (c),c
	ld c,#43
	out (c),c
	ld c,#01
	out (c),c
	ld a,(#ef78)
	cp #03
	ld c,#4c
	jr nc,l77de
	ld a,r
	and #1f
	or #40
	ld c,a
.l77de
	out (c),c
	ld c,#02
	out (c),c
	ld c,#5a
	bit 0,(iy+#01)
	jr nz,l77ee
	ld c,#5e
.l77ee
	out (c),c
	ld c,#03
	out (c),c
	ld a,(#ef79)
	cp #03
	ld c,#54
	jr nc,l7804
	ld a,r
	and #1f
	or #40
	ld c,a
.l7804
	out (c),c
	ld bc,#7f8d
	out (c),c
	ret
.l780c
	ld c,#9b
.l780e
	dec c
	jr nz,l780e
	ld bc,#7f14
	out (c),c
	ld c,#4c
	out (c),c
	ld c,#00
	out (c),c
	ld c,#4c
	out (c),c
	jp l78d9
.l7825
	ld c,#9b
.l7827
	dec c
	jr nz,l7827
	ld bc,#7f14
	out (c),c
	ld c,#4a
	out (c),c
	ld c,#00
	out (c),c
	ld c,#4a
	out (c),c
	jp l78d9
.l783e
	ld bc,#7f1f
	out (c),c
	ld c,#40
	out (c),c
	push hl
	pop hl
	push hl
	pop hl
	ld c,#00
	out (c),c
	ld c,#4b
	out (c),c
	ret
.l7854
	ld bc,#7f14
	out (c),c
	ld c,#4b
	out (c),c
	push hl
	pop hl
	push hl
	pop hl
	ld c,#00
	out (c),c
	ld c,#4b
	out (c),c
	ret
.l786a
	xor a
	ld (l78dc),a
	ld bc,#7f14
	out (c),c
	ld c,#54
	out (c),c
	ld c,#01
	out (c),c
	ld c,#4b
	out (c),c
	ld c,#02
	out (c),c
	ld c,#46
	out (c),c
	ld c,#03
	out (c),c
	ld c,#47
	out (c),c
	ld c,#00
	out (c),c
	ld c,#45
	out (c),c
	ld c,#8c
	out (c),c
	jp l78d9
.l789e
	xor a
	ld (l78dc),a
	ld bc,#7f14
	out (c),c
	ld c,#54
	out (c),c
	ld c,#01
	out (c),c
	ld c,#4b
	out (c),c
	ld c,#02
	out (c),c
	ld c,#46
	out (c),c
	ld c,#03
	out (c),c
	ld c,#47
	out (c),c
	ld c,#00
	out (c),c
	ld c,#43
	out (c),c
	ld c,#8c
	out (c),c
	jp l78d9
.l78d2
	pop hl
	pop de
	pop bc
	pop af
	ei
	reti
.l78da equ $ + 1
;
.real_play_music
.l78d9
;
	jp l7b87
.l78dc
	db #00
.l78dd
	dw l7776
.l78df
	db #45,#2f,#15,#2d,#15,#2f,#15,#30
	db #15,#33,#15,#34,#15,#33,#5d,#2f
	db #15,#2d,#15,#2f,#15,#2d,#2d,#2c
	db #2d,#28,#15,#26,#15,#28,#15,#2c
	db #15,#29,#15,#28,#09,#2c,#09,#2d
	db #09,#2f,#09,#30,#09,#33,#09,#30
	db #45,#2f,#45,#2f,#15,#2d,#15,#2f
	db #15,#30,#15,#33,#15,#34,#15,#33
	db #5d,#2f,#15,#2d,#15,#2f,#15,#2d
	db #2d,#2c,#2d,#28,#15,#26,#15,#28
	db #15,#2c,#15,#29,#2d,#28,#09,#2f
	db #09,#30,#09,#33,#09,#30,#5d,#2f
	db #15,#2d,#15,#2f,#15,#30,#15,#33
	db #15,#34,#15,#33,#75,#2f,#15,#2d
	db #15,#2f,#15,#2d,#2d,#2c,#2d,#28
	db #15,#26,#15,#28,#15,#2c,#15,#29
	db #09,#28,#09,#2c,#09,#2d,#09,#2f
	db #09,#30,#09,#33,#45,#2f,#15,#2d
	db #15,#2f,#15,#30,#15,#30,#15,#33
	db #15,#30,#2d,#2f,#15,#2d,#15,#2f
	db #15,#2d,#2d,#2c,#2d,#28,#15,#26
	db #15,#28,#15,#2c,#15,#29,#5d,#28
	db #15,#33,#15,#30,#15,#2f,#09,#2d
	db #09,#2b,#15,#2a,#09,#2b,#09,#2a
	db #09,#28,#09,#27,#15,#24,#09,#2c
	db #09,#2d,#09,#2f,#09,#30,#09,#33
	db #09,#30,#09,#2f,#03,#2e,#03,#2f
	db #03,#2e,#03,#2f,#03,#2e,#03,#2f
	db #15,#2d,#15,#2f,#15,#33,#15,#30
	db #15,#2f,#09,#2d,#09,#2b,#15,#2a
	db #09,#2b,#09,#2a,#09,#28,#09,#27
	db #15,#24,#15,#24,#15,#23,#15,#24
	db #15,#28,#09,#30,#09,#33,#09,#34
	db #09,#35,#09,#34,#03,#33,#03,#34
	db #03,#33,#03,#34,#03,#33,#15,#28
	db #15,#29,#15,#2c,#15,#2d,#15,#2f
	db #15,#30,#15,#33,#15,#30,#75,#2f
	db #09,#34,#09,#35,#15,#38,#15,#35
	db #15,#34,#15,#32,#15,#30,#15,#2f
	db #15,#2d,#15,#29,#09,#2c,#09,#2d
	db #09,#2c,#2d,#29,#15,#1c,#09,#20
	db #09,#21,#09,#23,#09,#24,#09,#24
	db #15,#28,#15,#29,#15,#2c,#15,#2d
	db #15,#2f,#15,#30,#15,#33,#15,#30
	db #15,#2f,#09,#47,#09,#49,#09,#4b
	db #09,#4c,#09,#4e,#09,#4c,#09,#4b
	db #03,#4c,#03,#4b,#03,#4c,#03,#4b
	db #03,#4c,#09,#4b,#09,#2f,#09,#28
	db #09,#29,#15,#2c,#15,#29,#15,#28
	db #15,#26,#15,#24,#15,#23,#15,#21
	db #15,#1d,#09,#20,#09,#21,#09,#20
	db #09,#1d,#73,#20,#00,#00,#00,#00
.l7a7f
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
.l7b27
	db #00
.l7b28
	dw l78df
.l7b2a
	db #00
.l7b2b
	push af
	push bc
	ld a,b
	ld bc,#f4f4
	out (c),a
	ld bc,#f6f6
	ld a,#c0
	out (c),a
	xor a
	out (c),a
	pop bc
	ld a,c
	ld bc,#f4f4
	out (c),a
	ld bc,#f6f6
	ld a,#80
	out (c),a
	xor a
	out (c),a
	pop af
	ret
.l7b50
	push bc
	ld b,#00
	call l7b2b
	pop bc
	ld c,b
	ld b,#01
	jp l7b2b
.l7b5d
	ld b,#08
	ld a,(l7b2a)
	ld c,a
	jp l7b2b
.l7b66
	rla
	ld c,a
	ld b,#00
	ld hl,l7a7f
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	jp l7b50
.l7b74
	ld bc,#073e
	jp l7b2b
.l7b7a
	ld bc,#073f
	call l7b2b
	xor a
	ld (l7b2a),a
	jp l7b5d
;
.init_music
.l7b87
;
	push hl
	push af
	ld hl,l7b9b
	ld (l78da),hl
	ld hl,l78df
	ld (l7b28),hl
	call l7b7a
	pop af
	pop hl
	ret
.l7b9b
	ld hl,(l7b28)
	ld a,(hl)
	or a
	jr nz,l7ba9
	ld hl,l78df
	ld (l7b28),hl
	ret
.l7ba9
	bit 7,a
	jr nz,l7bb2
	call l7b74
	jr l7bb5
.l7bb2
	call l7b7a
.l7bb5
	and #7f
	ld (l7b27),a
	inc hl
	ld a,(hl)
	push hl
	call l7b66
	pop hl
	inc hl
	ld (l7b28),hl
	xor a
	ld (l7b2a),a
	call l7b5d
	ld hl,l7bd3
	ld (l78da),hl
	ret
.l7bd4 equ $ + 1
.l7bd3
	ld a,#07
	or a
	jr z,l7be8
	dec a
	ld (l7bd4),a
	ld a,(l7b2a)
	add #02
	ld (l7b2a),a
	call l7b5d
	ret
.l7be8
	ld a,#07
	ld (l7bd4),a
	ld hl,l7bf4
	ld (l78da),hl
	ret
.l7bf4
	ld a,(l7b27)
	dec a
	ld (l7b27),a
	ret nz
	ld hl,l7c03
	ld (l78da),hl
	ret
.l7c04 equ $ + 1
.l7c03
	ld a,#01
	or a
	jr z,l7c18
	dec a
	ld (l7c04),a
	ld a,(l7b2a)
	sub #05
	ld (l7b2a),a
	jp l7b5d
	ret
.l7c18
	ld a,#01
	ld (l7c04),a
	ld hl,l7b9b
	ld (l78da),hl
	ret
	db #00,#00
;
.play_music	; added by Megachur
;
	call real_play_music
	call real_play_music
	jp real_play_music
;
; #704d
; ld hl,#7776
; ld (#78dd),hl
;
.music_info
	db "Fighting Warrior (1985)(Melbourne House)()",0
	db "",0

	read "music_end.asm"
