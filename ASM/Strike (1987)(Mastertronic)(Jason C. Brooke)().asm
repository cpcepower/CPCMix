; Music of Strike (1987)(Mastertronic)(Jason C. Brooke)()
; Ripped by Megachur the 01/09/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "STRIKE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #45cf

	read "music_header.asm"

.l45cf
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l45e9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l4603
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4610 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
.l461e equ $ + 1
	ld a,#01
	or a
	jr nz,l466c
	ld b,a
	ld hl,l468e
	dec (hl)
	jr nz,l4640
	ld (hl),#05
	ld ix,l45cf
	call l471d
	ld ix,l45e9
	call l471d
	ld ix,l4603
	call l471d
.l4641 equ $ + 1
.l4640
	ld a,#00
	ld (l48c8),a
	ld ix,l45cf
	ld bc,l48ca
	call l47b2
	ld (l48c2),hl
	ld ix,l45e9
	ld bc,l48cb
	call l47b2
	ld (l48c4),hl
	ld ix,l4603
	ld bc,l48cc
	call l47b2
	ld (l48c6),hl
.l466c
	ld c,#00
	ld hl,l48ce
	ld de,#0cf6
	ld a,#c0
.l4676
	ld b,#f4
	out (c),d
	ld b,e
	out (c),a
	rlca
	out (c),c
	dec b
	outd
	ld b,e
	out (c),a
	rrca
	out (c),c
	dec d
	jp p,l4676
	ret
.l468f equ $ + 1
.l468e
	db #00,#00,#ec,#7c,#40,#70,#73,#1a
	db #52,#7b,#33,#11
;
.stop_music
;
	ld a,#3f
	ld (l461e),a
	ld (l486b),a
	ld (l48c9),a
	sub a
	ld (l48cc),a
	ret

	ld a,#01
	ld (l468f),a
	ld c,(ix+#05)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	ld a,(hl)
	inc l
	or (hl)
	jr nz,l46c1
	sbc hl,bc
	ld c,b
.l46c1
	ld d,(hl)
	dec l
	ld e,(hl)
	inc c
	inc c
	ld (ix+#05),c
	jr l4730
	ld a,(de)
	inc de
	ld (ix+#18),a
	jr l4730
	ld a,(de)
	inc de
	ld (ix+#06),b
	ld (ix+#07),b
	ld (ix+#0b),a
	set 2,(ix+#00)
	ld a,(de)
	inc de
	ld (ix+#0c),a
	jr l4730
	ld a,(de)
	inc de
	ld (ix+#16),a
	ld a,(de)
	inc de
	add a
	ld (ix+#15),a
	ld c,#40
	jr nc,l46f9
	ld c,#50
.l46f9
	srl a
	ld (ix+#17),a
	ld (ix+#00),c
	jr l4730
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l4730
	ld (ix+#00),b
	jr l4730
	ld a,(de)
	inc de
	ld (l486f),a
	set 1,(ix+#00)
	jr l4730
.l471d
	dec (ix+#0d)
	ld a,(ix+#00)
	jr nz,l476d
	and #71
	ld (ix+#00),a
	ld e,(ix+#01)
	ld d,(ix+#02)
.l4730
	ld a,(de)
	inc de
	cp #b0
	jr c,l4762
	add #20
	jr c,l474d
	add #20
	jr c,l4753
	ld c,a
	ld hl,l48d0
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#08),l
	ld (ix+#09),h
	jr l4730
.l474d
	inc a
	ld (ix+#0e),a
	jr l4730
.l4753
	ld c,a
	ld hl,l49ea
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#13),l
	ld (ix+#14),h
	jr l4730
.l4762
	ld c,a
	add a
	jr nc,l4782
	ld hl,l4610
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l476d
	bit 3,a
	ret z
	add a
	sbc a
	or #01
	add a
	add (ix+#0f)
	ld (ix+#0f),a
	ret
	ld (ix+#12),#f0
	jr l47a5
.l4782
	ld (ix+#0f),a
	ld (ix+#12),b
	ld (ix+#11),b
	ld (ix+#0a),b
	sub #a8
	ld c,#38
	jr c,l4799
	ld c,#07
	ld (l4641),a
.l4799
	ld a,c
	ld c,(ix+#19)
	and c
	ld hl,l486b
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
.l47a5
	ld a,(ix+#0e)
	ld (ix+#0d),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l47b2
	ld d,#00
	ld a,(ix+#12)
	cp #f0
	jr nc,l47d3
	sub #10
	ld (ix+#12),a
	jr nc,l47d3
	ld l,(ix+#13)
	ld h,(ix+#14)
	ld e,(ix+#11)
	add hl,de
	ld a,(hl)
	inc (ix+#11)
	ld (ix+#12),a
.l47d3
	and #0f
	ld (bc),a
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld e,(ix+#0a)
	add hl,de
	ld a,(hl)
	add a
	jr nc,l47e6
	ld e,#ff
.l47e6
	inc e
	ld (ix+#0a),e
	add (ix+#0f)
	add (ix+#18)
	ld hl,l48d0
	ld e,a
	ld (l482f),a
	add hl,de
	ld e,(hl)
	inc l
	ld d,(hl)
	ld c,(ix+#00)
	bit 6,c
	jr z,l483c
	ld b,(ix+#15)
	ld a,c
	cpl
	and #11
	ld a,(ix+#17)
	jr z,l4828
	bit 5,c
	jr nz,l481c
	sub (ix+#16)
	jr nc,l4825
	set 5,c
	sub a
	jr l4825
.l481c
	add (ix+#16)
	cp b
	jr c,l4825
	res 5,c
	ld a,b
.l4825
	ld (ix+#17),a
.l4828
	srl b
	sub b
	ld l,a
	sbc a
	ld h,a
.l482f equ $ + 1
	ld a,#00
	add #d0
	jr c,l483a
	ld b,#0c
.l4836
	add hl,hl
	add b
	jr nc,l4836
.l483a
	add hl,de
	ex de,hl
.l483c
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l4867
	ld b,(ix+#0c)
	djnz l4864
	ld c,(ix+#0b)
	bit 7,c
	jr z,l4853
	dec b
.l4853
	ld l,(ix+#06)
	ld h,(ix+#07)
	add hl,bc
	ld (ix+#06),l
	ld (ix+#07),h
	add hl,de
	ex de,hl
	jr l4867
.l4864
	ld (ix+#0c),b
.l4867
	cpl
	and #03
.l486b equ $ + 1
	ld a,#3f
	jr nz,l4875
.l486f equ $ + 1
	ld a,#10
	ld (l48c8),a
	ld a,#07
.l4875
	ld hl,l48c9
	xor (hl)
	and (ix+#19)
	xor (hl)
	ld (hl),a
	ex de,hl
	ret
;
.init_music
;
	ld hl,l4a2c
	ld ix,l45cf
	ld bc,#001a
	ld a,#03
	ld (l461e),a
.l488f
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#0d),#01
	ld (ix+#00),b
	ld (ix+#18),b
	ld (ix+#03),e
	ld (ix+#04),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	pop hl
	ld (ix+#01),e
	ld (ix+#02),d
	add ix,bc
	dec a
	jr nz,l488f
	ld (l461e),a
	inc a
	ld (l468e),a
	ret
.l48c6 equ $ + 6
.l48c4 equ $ + 4
.l48c2 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l48ce equ $ + 6
.l48cc equ $ + 4
.l48cb equ $ + 3
.l48ca equ $ + 2
.l48c9 equ $ + 1
.l48c8
	db #00,#38,#00,#00,#00,#00,#00,#00
.l48d0
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
.l4978
	dw l4a38,l4ae9,l4ae9,l4c95
	dw l4aeb,l4aeb,l4b84,l4b84
	dw l4b84,l4b84,l4c7b,#0000
.l4990
	dw l4a43,l4a4b,l4a4b,l4b3a
	dw l4b3a,l4c30,l4c30,l4b3a
	dw l4b3a,l4c8d,#0000
.l49a6
	dw l4a43,l4aeb,l4aeb,l4aab
	dw l4aab,l4aab,l4aab,l4be6
	dw l4be6,l4c2b,l4c30,l4c92
	dw #0000
	db #09,#09,#0c,#0f,#12,#17,#1a,#1d
	db #20,#80,#00,#04,#0c,#87,#00,#03
	db #0c,#87,#00,#0a,#10,#87,#00,#04
	db #00,#07,#0b,#84,#00,#07,#0a,#83
	db #00,#05,#0c,#88,#00,#04,#07,#85
.l49ea equ $ + 2
	db #00,#8c,#10,#0f,#0e,#0d,#0c,#0f
	db #0e,#0d,#0f,#10,#16,#16,#1d,#26
	db #29,#2f,#08,#17,#36,#f0,#1d,#1c
	db #1b,#1a,#f9,#0c,#1b,#1a,#19,#18
	db #16,#f5,#0e,#1d,#1a,#18,#17,#16
	db #15,#24,#f3,#1c,#1a,#18,#17,#16
	db #15,#24,#32,#41,#f0,#1b,#1a,#19
	db #f6,#0d,#0c,#18,#15,#13,#11,#f0
	db #3c,#29,#28,#f7
.l4a2c
	dw l4978,l4990,l49a6
.l4a38 equ $ + 6
	db #ff,#80,#80,#80,#80,#85,#c8,#b0
	db #86,#02,#03,#82,#fb,#50,#ff,#0e
.l4a43 equ $ + 1
	db #85,#c8,#b0,#86,#02,#02,#ff,#0e
.l4a4b equ $ + 1
	db #89,#cb,#b0,#e7,#87,#0a,#59,#e3
	db #87,#0f,#5e,#e1,#87,#14,#63,#e0
	db #87,#19,#68,#87,#19,#68,#ef,#80
	db #e7,#87,#0a,#59,#e3,#87,#0f,#5e
	db #e1,#87,#14,#63,#e0,#87,#19,#68
	db #87,#19,#68,#e9,#80,#e1,#1e,#1f
	db #1e,#e7,#87,#05,#1f,#e3,#87,#0f
	db #5e,#e1,#87,#14,#63,#e0,#87,#19
	db #68,#87,#19,#68,#cb,#e9,#80,#e1
	db #1e,#1f,#21,#e7,#87,#05,#1f,#e3
	db #87,#0f,#5e,#e1,#87,#14,#63,#e0
	db #87,#19,#68,#87,#19,#68,#ef,#80
.l4aab equ $ + 1
	db #85,#cb,#b0,#e7,#87,#0a,#59,#e3
	db #87,#0f,#5e,#e1,#87,#14,#63,#e0
	db #87,#19,#68,#87,#19,#68,#e3,#80
	db #ce,#e1,#5e,#5e,#80,#54,#54,#54
	db #cb,#e7,#87,#0a,#59,#e3,#87,#0f
	db #5e,#e1,#87,#14,#63,#e0,#87,#19
	db #68,#87,#19,#68,#e3,#80,#ce,#e1
.l4ae9 equ $ + 7
	db #5e,#5e,#80,#64,#64,#64,#85,#88
.l4aeb equ $ + 1
	db #e8,#cc,#b0,#e1,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#e0,#12,#13,#e1,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#e0,#12
	db #13,#e1,#10,#10,#10,#10,#10,#10
	db #10,#10,#10,#10,#10,#10,#10,#10
	db #10,#e0,#13,#15,#e1,#13,#13,#13
	db #13,#13,#13,#13,#13,#13,#13,#13
	db #13,#13,#13,#13,#e0,#13,#12,#85
.l4b3a
	db #c7,#b0,#e3,#21,#e1,#1f,#e3,#21
	db #e1,#1f,#1e,#1f,#21,#1f,#1e,#e3
	db #21,#e1,#1f,#e3,#1e,#e1,#1f,#20
	db #21,#e3,#1e,#e1,#1f,#e3,#1e,#cb
	db #b1,#e3,#1a,#1a,#b0,#c7,#e1,#1f
	db #21,#23,#e9,#1c,#cd,#e1,#1f,#21
	db #23,#e9,#1c,#e7,#80,#c7,#b0,#e1
	db #1f,#e3,#1e,#e1,#1f,#e3,#1e,#e1
	db #1e,#1f,#1f,#21,#23,#e5,#1f,#e3
.l4b84 equ $ + 2
	db #1a,#85,#e1,#ca,#0e,#0e,#0e,#0e
	db #68,#0e,#e3,#82,#f7,#0a,#0e,#e1
	db #0e,#0e,#0e,#0e,#68,#0e,#e3,#82
	db #f7,#0a,#0e,#e1,#0e,#0e,#0e,#0e
	db #68,#0e,#e3,#82,#f7,#0a,#0e,#e1
	db #0e,#0e,#0e,#0e,#68,#0e,#e3,#82
	db #f7,#0a,#0e,#e1,#10,#10,#10,#10
	db #68,#10,#e3,#82,#f7,#0a,#10,#e1
	db #10,#10,#10,#10,#68,#10,#e3,#82
	db #f7,#0a,#10,#e1,#13,#13,#13,#13
	db #68,#13,#e3,#82,#09,#0a,#13,#e1
	db #13,#13,#13,#13,#68,#13,#e3,#82
.l4be6 equ $ + 4
	db #09,#0a,#13,#85,#c4,#b1,#32,#32
	db #32,#32,#32,#32,#80,#80,#32,#32
	db #32,#32,#32,#32,#80,#80,#32,#32
	db #32,#32,#32,#32,#80,#80,#32,#32
	db #32,#32,#32,#32,#80,#80,#b2,#34
	db #34,#34,#34,#34,#34,#80,#80,#34
	db #34,#34,#34,#34,#34,#80,#80,#b1
	db #2b,#2b,#2b,#2b,#2b,#2b,#80,#80
	db #2b,#2b,#2b,#2b,#2b,#2b,#80,#80
.l4c30 equ $ + 6
.l4c2b equ $ + 1
	db #85,#88,#18,#86,#01,#01,#c9,#b0
	db #e1,#2a,#28,#26,#e3,#28,#e1,#2a
	db #80,#80,#2a,#28,#26,#e3,#28,#e1
	db #2a,#26,#80,#2a,#28,#26,#e3,#28
	db #e1,#2a,#80,#80,#2a,#28,#26,#e3
	db #28,#e1,#2a,#26,#80,#28,#2b,#28
	db #e3,#2a,#e1,#28,#80,#80,#28,#2b
	db #28,#e3,#26,#e1,#28,#23,#80,#26
	db #28,#2b,#e3,#28,#e1,#26,#80,#80
	db #2b,#2d,#80,#2b,#2a,#2b,#28,#80
.l4c7b equ $ + 1
	db #85,#e1,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#c8,#eb,#82,#10,#14,#0e
.l4c8d equ $ + 3
	db #e3,#80,#85,#f1,#1a,#ed,#80,#85
.l4c95 equ $ + 3
.l4c92
	db #26,#fd,#80,#88,#00,#85
;
;org #2ed6
;ld a,(#468f)
;or a
;call z,#4880 ; init
;
.music_info
	db "Strike (1987)(Mastertronic)(Jason C. Brooke)",0
	db "",0

	read "music_end.asm"
