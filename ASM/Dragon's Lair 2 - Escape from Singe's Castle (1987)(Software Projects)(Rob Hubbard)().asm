; Music of Dragon's Lair 2 - Escape from Singe's Castle (1987)(Software Projects)(Rob Hubbard)()
; Ripped by Megachur the 02/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DRAGONL2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #1340
FIRST_THEME				equ 0
LAST_THEME				equ 16

	read "music_header.asm"

; theme = a=0->16

; 0 level 7
; 1 level 5
; 2 level 4
; 3 level 2
; 4 level 3
; 5 level 6
; 6 level 8
; 7 level 1
; 8 intro
; 9 game over

	jp l1350        ; init music
	jp l13fd        ; play music
	jp l1349        ; stop music
;
.stop_music
.l1349
;
	xor a
	ld (l180f),a
	jp l147a
;
init_music
.l1350
;
	push af
	xor a
	ld (l180f),a
	pop af
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l1810
	add hl,bc
	ld ix,l139d
	ld c,#20
	ld a,#03
.l1369
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#03),e
	ld (ix+#04),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	pop hl
	ld (ix+#01),e
	ld (ix+#02),d
	add ix,bc
	dec a
	jr nz,l1369
	inc a
	ld (l14a2),a
	ld (l180f),a
	ret
.l139d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.l13bd
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.l13dd
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
;
.play_music
.l13fd
;
	ld a,(l180f)
	and a
	ret z
.l1403 equ $ + 1
	ld a,#00
	ld (l1450),a
	ld hl,l14a2
	dec (hl)
	jr nz,l1428
	ld b,(hl)
	ld ix,l139d
	call l1577
	ld ix,l13bd
	call l1577
	ld ix,l13dd
	call l1577
.l1423
	ld hl,l14a2
.l1427 equ $ + 1
	ld (hl),#01
.l1428
	ld ix,l139d
	call l1623
	ld (l1743),hl
	ld (l174b),a
	ld ix,l13bd
	call l1623
	ld (l1745),hl
	ld (l174c),a
	ld ix,l13dd
	call l1623
	ld (l1747),hl
	ld (l174d),a
.l1450 equ $ + 1
	ld a,#00
	ld (l1749),a
	ld hl,l1750
	ld d,#0d
.l1459
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,l1459
	ret
.l147a
	ld de,#0d00	; original is ld de,#d000 should be ld de,&0d00 !!!
.l147d
	call l1487
	dec e
	jp p,l147d
	ld de,#073f
.l1487
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	ret
.l14a2
	db #00,#bf,#a7,#ab,#b0,#6e,#9d,#98
	db #13,#87,#7f,#4d,#3c,#5b,#ac,#04
	db #b3,#b8,#bd
	xor a
	ld (l180f),a
	pop hl
	jp l147a
	ld c,(ix+#05)
	ld b,(ix+#06)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l14df
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l14df
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l1589
	ld a,(ix+#1f)
	ld c,a
	and #07
	ld hl,l1728
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l1589
	ld a,(ix+#1f)
	ld c,a
	and #38
	ld hl,l1728
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l1589
	ld hl,l1728
	ld a,(ix+#1f)
	cpl
	and (hl)
	ld (hl),a
	jr l1589
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l1589
	ld a,(de)
	inc de
	ld (l1403),a
	jr l1589
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l1589
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l1589
	ld (ix+#1d),b
	jr l1589
	ld (ix+#1d),#40
	jr l1589
	ld (ix+#1d),#c0
	jr l1589
	set 1,(ix+#00)
	jr l1589
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l15b6
	set 4,(ix+#00)
	jr l1589
	set 0,(ix+#1e)
	jr l1589
.l1577
	dec (ix+#10)
	jr nz,l15c3
	ld (ix+#00),b
	res 0,(ix+#1e)
	ld e,(ix+#01)
	ld d,(ix+#02)
.l1589
	ld a,(de)
	inc de
	and a
	jp m,l15d4
	ld (ix+#12),a
	bit 4,(ix+#00)
	jr nz,l15b6
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	res 4,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l15b6
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l15c3
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l15d0
	inc (ix+#12)
	ret
.l15d0
	dec (ix+#12)
	ret
.l15d4
	cp #b8
	jr c,l161b
	add #20
	jr c,l1600
	add #10
	jr c,l1606
	add #10
	jr nc,l15f9
	ld c,a
	ld hl,l17f9
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr l1589
.l15f9
	add #09
	ld (l1427),a
	jr l1589
.l1600
	inc a
	ld (ix+#11),a
	jr l1589
.l1606
	ld (ix+#19),a
	ld a,(de)
	inc de
	ld (ix+#14),a
	ld a,(de)
	inc de
	ld (ix+#15),a
	ld a,(de)
	inc de
	ld (ix+#17),a
	jp l1589
.l161b
	ld hl,l1423
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l1623
	ld c,(ix+#00)
	bit 5,c
	jr z,l166e
	ld a,(ix+#16)
	sub #10
	jr nc,l1656
	bit 6,c
	jr z,l165b
	add (ix+#13)
	jr nc,l163b
	sbc a
.l163b
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l1651
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l166e
.l1651
	ld (ix+#18),a
	jr l166e
.l1656
	ld (ix+#16),a
	jr l166e
.l165b
	cpl
	sub #0f
	add (ix+#13)
	jr c,l1664
	sub a
.l1664
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l166e
	res 5,c
.l166e
	ld a,(ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #54
	jr c,l1684
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l1684
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l1751
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l16e6
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l16af
	bit 0,c
	jr nz,l16cd
.l16af
	bit 5,l
	jr nz,l16bf
	sub (ix+#1b)
	jr nc,l16ca
	set 5,(ix+#1d)
	sub a
	jr l16ca
.l16bf
	add (ix+#1b)
	cp b
	jr c,l16ca
	res 5,(ix+#1d)
	ld a,b
.l16ca
	ld (ix+#1c),a
.l16cd
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l16d8
	dec d
.l16d8
	add #a0
	jr c,l16e4
.l16dc
	sla e
	rl d
	add #18
	jr nc,l16dc
.l16e4
	add hl,de
	ex de,hl
.l16e6
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l1711
	ld b,(ix+#0e)
	djnz l170e
	ld c,(ix+#0d)
	bit 7,c
	jr z,l16fd
	dec b
.l16fd
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l1711
.l170e
	ld (ix+#0e),b
.l1711
	bit 0,(ix+#1e)
	jr z,l1724
	res 0,(ix+#1e)
	ld a,#00
	ld (l1450),a
	ld a,#07
	jr l1735
.l1724
	cpl
	and #03
.l1728 equ $ + 1
	ld a,#38
	jr nz,l1735
	ld a,(l1403)
	xor #08
	ld (l1450),a
	ld a,#07
.l1735
	ld hl,l174a
	xor (hl)
	and (ix+#1f)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l174a equ $ + 7
.l1749 equ $ + 6
.l1747 equ $ + 4
.l1745 equ $ + 2
.l1743
	db #00,#00,#00,#00,#00,#00,#00,#38
.l1750 equ $ + 5
.l174d equ $ + 2
.l174c equ $ + 1
.l174b
	db #0f,#0f,#0d,#00,#00,#00
.l1751
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010b,#00fc
	dw #00ef,#00e1,#00d6,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0085,#007e
	dw #0077,#0070,#006b,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0042,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
.l17f9
	db #05,#06,#09,#0c,#0f,#00,#87,#00
	db #04,#07,#87,#00,#03,#00,#87,#00
	db #05,#00,#87,#00,#0c,#87
.music_end
.l180f
	db #00
.l1810
	dw l1b43,l1b57,l1b6b
	dw l1b43,l1b53,l1b81
	dw l1b43,l1b5d,l1b67
	dw l1b43,l1b69,l1b6d
	dw l1b43,l1b4d,l1b8b
	dw l1b43,l1b5d,l1b77
	dw l1b43,l1b51,l1b85
	dw l1b43,l1b6f,l1b73
	dw l184c,l1874,l1898
	dw l1acd,l1ad3,l1ad9
	dw level2_1,level2_2,level2_3
	dw level3_1,level3_2,level3_3
	dw level4_1,level4_2,level4_3
	dw level5_1,level5_2,level5_3
	dw level6_1,level6_2,level6_3
	dw level7_1,level7_2,level7_3
	dw level8_1,level8_2,level8_3
.l184c
	dw l18c8,l18e9
	dw l1901,l18e9,l1906,l190b
	dw l1936,l1942,l1942,l1942
	dw l194d,l196e,l196e,l1936
	dw l1982,l1994,l1994,l1994
	dw l1994,#0000
.l1874
	dw l199e,l19c5,l19dc,l19c5
	dw l19e1,l19e6,l1a0d,l1b23
	dw l1b23,l1b23,l1a18,l1a27
	dw l1a27,l1a0d,l1a3b,l1a4e
	dw l1a4e,#0000
.l1898
	dw l1a58,l1a58,l1a58,l1a58
	dw l1a58,l1a58,l1a58,l1a58
	dw l1a58,l1a6e,l1a6e,l1a6e
	dw l1a7e,l1a89,l1a89,l1a89
	dw l1a9f,l1aab,l1aab,l1a7e
	dw l1abb,l1a58,l1a58,#0000
.l18c8
	db #bc,#c0,#8a,#df,#00,#31,#05,#88
	db #01,#01,#82,#e1,#29,#e0,#29,#29
	db #e1,#29,#24,#29,#2b,#e3,#2d,#e9
	db #2d,#e1,#24,#29,#2d,#ff,#83,#2e
	db #87
.l18e9
	db #e1,#82,#2d,#e0,#2d,#2d,#e1,#2d
	db #e3,#2e,#e1,#2e,#e3,#2d,#e1,#30
	db #e0,#30,#30,#e1,#30,#e3,#2e,#87
.l1901
	db #e1,#2d,#e3,#2b,#87
.l1906
	db #e1,#29,#e3,#2b,#87
.l190b
	db #e1,#2d,#e0,#2d,#2d,#e1,#2d,#e3
	db #2e,#e1,#2d,#e3,#29,#e1,#2b,#e0
	db #2b,#2b,#e1,#2b,#e3,#29,#e1,#29
	db #e3,#2b,#e1,#2f,#e0,#2f,#2f,#e1
	db #2f,#e3,#2f,#e1,#30,#32,#30,#83
	db #ef,#2f,#87
.l1936
	db #e0,#81,#3c,#39,#3a,#e4,#3c,#e7
	db #90,#85,#3c,#87
.l1942
	db #e1,#c4,#42,#42,#42,#42,#42,#42
	db #42,#42,#87
.l194d
	db #e1,#42,#36,#41,#36,#41,#3d,#3a
	db #36,#41,#3d,#3a,#41,#3d,#36,#3a
	db #3d,#42,#41,#3d,#41,#3f,#3a,#36
	db #3a,#36,#35,#fb,#c0,#31,#eb,#8f
	db #87
.l196e
	db #e0,#3d,#3a,#3b,#e4,#3d,#e7,#90
	db #85,#3d,#e1,#2f,#e3,#2f,#e1,#2e
	db #e3,#2c,#29,#87
.l1982
	db #e1,#2e,#e3,#2e,#e1,#2d,#e3,#2b
	db #28,#29,#2b,#2c,#29,#2b,#2c,#2e
	db #2b,#87
.l1994
	db #e0,#30,#32,#30,#32,#30,#32,#30
	db #32,#87
.l199e
	db #c0,#8a
	db #df,#00,#31,#05,#88,#01,#01,#e1
	db #82,#24,#e0,#24,#24,#e1,#24,#21
	db #24,#24,#e3,#29,#e9,#29,#e1,#21
	db #24,#29,#29,#24,#29,#2b,#29,#24
	db #2b,#2d,#ef,#2b,#87
.l19c5
	db #e1,#29,#e0,#29,#29,#e1,#29,#e3
	db #2b,#e1,#2b,#e3,#29,#e1,#2d,#e0
	db #2d,#2d,#e1,#2d,#e3,#2b,#87
.l19dc
	db #e1,#29,#e3,#28,#87
.l19e1
	db #e1,#26,#e3,#28,#87
.l19e6
	db #e1,#29,#e0,#29,#29,#e1,#29,#e3
	db #29,#e1,#24,#e3,#29,#e1,#2b,#26
	db #2b,#e3,#2f,#e1,#2d,#e3,#2b,#e1
	db #2b,#e0,#2b,#2b,#e1,#2b,#e3,#2b
	db #e1,#2d,#2f,#2d,#ef,#2b,#87
.l1a0d
	db #e0,#39,#35,#37,#e4,#39,#e7,#90
	db #85,#39,#87
.l1a18
	db #e1,#36,#31,#36,#3b,#36,#31,#36
	db #38,#36,#31,#36,#f5,#35,#87
.l1a27
	db #e0,#3a,#36,#38,#e4,#3a,#e7,#90
	db #85,#3a,#e1,#2c,#e3,#2c,#e1,#2a
	db #e3,#29,#25,#87
.l1a3b
	db #e1,#2b,#e3,#2b,#e1,#29,#e3,#28
	db #24,#24,#28,#29,#24,#e3,#28,#29
	db #2b,#28,#87
.l1a4e
	db #e1,#2d,#24,#29,#30,#2d,#24,#29
	db #30,#87
.l1a58
	db #8a,#df,#00,#91,#01,#c0,#e5,#91
	db #11,#e5,#91,#11,#e0,#91,#11,#91
	db #11,#91,#11,#91,#11,#87
.l1a6e
	db #e5,#91,#13,#e5,#91,#13,#e0,#91
	db #13,#91,#13,#91,#13,#91,#13,#87
.l1a7e
	db #e0,#35,#30,#34,#e4,#35,#e7,#90
	db #85,#35,#87
.l1a89
	db #e3,#91,#12,#91,#12,#91,#12,#e1
	db #80,#e5,#91,#12,#e3,#91,#12,#e5
	db #91,#12,#e1,#91,#12,#87
.l1a9f
	db #f9,#80,#e1,#25,#2a,#e3,#2f,#e0
	db #2e,#e8,#2c,#87
.l1aab
	db #e0,#36,#31,#35,#e4,#36,#e7,#90
	db #85,#36,#e3,#1b,#20,#1d,#23,#87
.l1abb
	db #e1,#18,#e3,#18,#e1,#18,#e3,#18
	db #18,#11,#18,#1d,#18,#11,#18,#1d
	db #18,#87
.l1acd
	dw l1adf,l1aeb,#0000
.l1ad3
	dw l1adf,l1b02,#0000
.l1ad9
	dw l1adf,l1b16,#0000
.l1adf
	db #bc,#c0,#8a,#df,#00,#41,#04,#88
	db #01,#01,#82,#87
.l1aeb
	db #89,#0a,#8d,#e3,#1d,#e0,#30,#2e
	db #e9,#30,#e1,#1d,#1d,#2d,#2e,#30
	db #f1,#8d,#86,#2d,#3c,#8e,#87
.l1b02
	db #e3,#1d,#e7,#29,#e3,#89,#1f,#8d
	db #29,#e1,#1d,#1d,#29,#2b,#2d,#f1
	db #86,#2b,#39,#87
.l1b16
	db #ef,#11,#e1,#11,#11,#29,#29,#29
	db #f1,#86,#29,#35,#87
.l1b23
	db #ff,#80,#87
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00
.l1b43
	dw l1cc8,l1cc8,l1cde,l1cc8
.l1b51 equ $ + 6
.l1b4d equ $ + 2
	dw l1cc8,l1cc8,l1cde,l1cc8
.l1b53
	dw l1ce9,l1ce9
.l1b5d equ $ + 6
.l1b57
	dw l1cf4,l1cc8,l1ce9,l1ce9
	dw l1cde,l1cc8,l1bb0,l1c18
.l1b6d equ $ + 6
.l1b6b equ $ + 4
.l1b69 equ $ + 2
.l1b67
	dw l1bb0,l1c18,l1b95,#0000
.l1b6f
	dw l1c56,#0000
.l1b73
	dw l1cc8,l1cc8
.l1b77
	dw l1cde,l1cc8,l1cc8,l1cc8
.l1b85 equ $ + 6
.l1b81 equ $ + 2
	dw l1cde,l1cc8,l1ce9,l1ce9
.l1b8b equ $ + 4
	dw l1cf4,l1cc8,l1ce9,l1ce9
	dw l1cde,l1cc8,#0000
.l1b95
	db #dc,#00,#61,#01,#ef,#c1,#37,#37
	db #35,#37,#37,#37,#35,#37,#c2,#32
	db #32,#34,#c1,#37,#c2,#32,#32,#c1
	db #35,#37,#87
.l1bb0
	db #bf,#c0,#8a,#de,#00,#61,#01,#88
	db #01,#01,#eb,#83,#2f,#e0,#2f,#90
	db #2d,#e1,#90,#2f,#eb,#90,#84,#ff
	db #5c,#30,#e3,#90,#32,#e0,#30,#e1
	db #90,#2f,#ea,#90,#2d,#e0,#84,#ff
	db #04,#2f,#84,#01,#04,#90,#30,#ef
	db #90,#2f,#eb,#32,#e0,#32,#90,#30
	db #e1,#90,#84,#ff,#0a,#32,#eb,#90
	db #84,#ff,#5d,#34,#e3,#90,#35,#e0
	db #34,#e1,#90,#32,#e2,#90,#30,#e0
	db #30,#e1,#90,#2f,#e2,#90,#2d,#e0
	db #2d,#90,#2b,#e1,#90,#29,#eb,#2b
	db #e1,#2f,#e0,#90,#2d,#90,#2b,#87
.l1c18
	db #eb,#29,#e3,#32,#eb,#2d,#e3,#35
	db #e1,#84,#ff,#07,#32,#e9,#90,#34
	db #e3,#84,#ff,#1a,#30,#e0,#90,#32
	db #30,#e9,#32,#e1,#2f,#e0,#90,#2d
	db #90,#2b,#eb,#29,#e3,#84,#ff,#1a
	db #32,#eb,#90,#84,#ff,#5d,#90,#34
	db #e3,#90,#35,#e7,#35,#30,#e0,#2f
	db #90,#2d,#ed,#90,#2f,#87
.l1c56
	db #8b,#d6,#00,#01,#11,#e2,#89,#1e
	db #8d,#24,#d7,#00,#01,#01,#89,#19
	db #8d,#24,#d8,#00,#01,#01,#89,#14
	db #8d,#24,#d9,#00,#01,#01,#89,#10
	db #8d,#24,#da,#00,#01,#01,#89,#0c
	db #8d,#24,#db,#00,#01,#01,#89,#08
	db #24,#dc,#00,#01,#01,#89,#04,#24
	db #dd,#00,#01,#01,#89,#00,#24,#8f
	db #dc,#00,#01,#01,#89,#04,#24,#db
	db #00,#01,#01,#89,#08,#8d,#24,#da
	db #00,#01,#01,#89,#0c,#8d,#24,#d9
	db #00,#01,#01,#89,#10,#8d,#24,#d8
	db #00,#01,#01,#89,#14,#8d,#24,#89
	db #19,#8d,#24,#89,#1e,#8d,#24,#8d
	db #24,#87
.l1cc8
	db #bf,#8a,#df,#00,#51,#04,#c0,#88
	db #02,#02,#82,#e1,#13,#1f,#2b,#1f
	db #e1,#13,#1f,#2b,#1f,#87
.l1cde
	db #e1,#11,#1d,#29,#1d,#e1,#11,#1d
	db #29,#1d,#87
.l1ce9
	db #e1,#0e,#1a,#26,#1a,#e1,#0e,#1a
	db #26,#1a,#87
.l1cf4
	db #e1,#0c,#18,#24,#18,#e1,#0c,#18
	db #24,#18,#87
;
; added by Megachur
;	
	read "Dragons_lair_2_0_level7.asm"
	read "Dragons_lair_2_1_level5.asm"
	read "Dragons_lair_2_2_level4.asm"
	read "Dragons_lair_2_3_level2.asm"
	read "Dragons_lair_2_4_level3.asm"
	read "Dragons_lair_2_5_level6.asm"
	read "Dragons_lair_2_6_level8.asm"

;
.music_info
	db "Dragon's Lair 2 - Escape from Singe's Castle (1987)(Software Projects)(Rob Hubbard)",0
	db "All levels music and main theme merged by Megachur",0

	read "music_end.asm"
