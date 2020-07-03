; Music of Saboteur 2 (1987)(Durell Software)(Rob Hubbard)()
; Ripped by Megachur the 25/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SABOTEU2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #b010

	read "music_header.asm"

;
.init_music	;.lb010
;
	xor a
	ld (lb523_play_music_yesno),a
	xor a
	ld (lb34c),a

	ld hl,lb524
	ld ix,lb05f
	ld b,#00
	ld c,#21	; 33
	ld a,#03
.lb02b
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
	jr nz,lb02b

	inc a
	ld (lb0c2),a
	ld (lb523_play_music_yesno),a
	ret

.lb05f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09
.lb080
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12
.lb0a1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #24
.lb0c2
	db #00
;
.play_music	;.lb0c3
;
	ld a,(lb523_play_music_yesno)
	and a
	ret z

.lb0c9 equ $ + 1
	ld a,#00
	ld (lb116),a

	ld hl,lb0c2
	dec (hl)
	jr nz,lb0ee

	ld b,(hl)
	ld ix,lb05f
	call lb24a

	ld ix,lb080
	call lb24a

	ld ix,lb0a1
;.lb0e8 equ $ + 2		; ?
	call lb24a

	ld hl,lb0c2
.lb0ed equ $ + 1
	ld (hl),#01
.lb0ee
	ld ix,lb05f
	call lb300
	ld (lb422),hl
	ld (lb42a),a

	ld ix,lb080
	call lb300
	ld (lb424),hl
	ld (lb42b),a

	ld ix,lb0a1
	call lb300
	ld (lb426),hl
	ld (lb42c),a

.lb116 equ $ + 1
	ld a,#00
	ld (lb428),a

	ld hl,lb42e
	ld d,#0c
.lb11f
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
	jp p,lb11f
	ret
;
.stop_music
;
	xor a
	ld (lb523_play_music_yesno),a
.lb140
	ld de,#0d00	; original is ld de,#d000 should be ld de,&0d00 !!!
.lb143
	call lb14d
	dec e
	jp p,lb143
	ld de,#073f

.lb14d
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
;
; jumps low adress table
;
.lb168
	db lb235-$	; #cd
	db lb21e-$	; #b5
	db lb223-$	; #b9
	db lb229-$	; #be
	db lb1e8-$	; #7c
	db lb218-$	; #ab
	db lb214-$	; #a6
	db lb182-$	; #13
	db lb205-$	; #95
	db lb1fe-$	; #8d
	db lb1c4-$	; #52
	db lb1af-$	; #3c
	db lb1d8-$	; #64
	db lb22f-$	; #ba
	db lb17a-$	; #04
	db lb238-$	; #c1
	db lb23e-$	; #c6
	db lb244-$	; #cb
.lb17a
	xor a
	ld (lb523_play_music_yesno),a
	pop hl
	jp lb140
.lb182
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
	jr nz,lb1a4

	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lb1a4
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp lb25c
.lb1af
	ld a,(ix+#20)
	ld c,a
	and #07
	ld hl,lb407
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp lb25c
.lb1c4
	ld a,(ix+#20)
	ld c,a
	and #38
	ld hl,lb407
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp lb25c
.lb1d8
	ld hl,lb407
	ld a,(ix+#20)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr lb25c
.lb1e8
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr lb25c
.lb1fe
	ld a,(de)
	inc de
	ld (lb34c),a
	jr lb25c
.lb205
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr lb25c
.lb214
	set 7,(ix+#00)
.lb218
	set 3,(ix+#00)
	jr lb25c
.lb21e
	ld (ix+#1d),b
	jr lb25c
.lb223
	ld (ix+#1d),#40
	jr lb25c
.lb229
	ld (ix+#1d),#c0
	jr lb25c
.lb22f
	set 1,(ix+#00)
	jr lb25c
.lb235
	ld (ix+#13),b
.lb238
	res 5,(ix+#00)
	jr lb292
.lb23e
	set 4,(ix+#00)
	jr lb25c
.lb244
	set 0,(ix+#1f)
	jr lb25c

.lb24a
	dec (ix+#10)
	jr nz,lb29f

	ld (ix+#00),b
	res 0,(ix+#1f)
	ld e,(ix+#01)
	ld d,(ix+#02)

.lb25c
	ld a,(de)
	inc de
	and a
	jp m,lb2b0

	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,lb26e
	ld (lb0c9),a

.lb26e
	bit 4,(ix+#00)
	jr nz,lb292
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	res 4,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.lb292
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.lb29f
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,lb2ac
	inc (ix+#12)
	ret

.lb2ac
	dec (ix+#12)
	ret
.lb2b0
	cp #b8
	jr c,lb2f8
	add #20
	jr c,lb2dc
	add #10
	jr c,lb2e3
	add #10
	jr nc,lb2d5
	ld c,a
	ld hl,lb4d8
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr lb25c
.lb2d5
	add #09
	ld (lb0ed),a
	jr lb25c
.lb2dc
	inc a
	ld (ix+#11),a
	jp lb25c
.lb2e3
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
	jp lb25c
.lb2f8
	ld hl,lb168-&80 ; lb0e8
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb300
	ld c,(ix+#00)
	bit 5,c
	jr z,lb34b
	ld a,(ix+#16)
	sub #10
	jr nc,lb333
	bit 6,c
	jr z,lb338
	add (ix+#13)
	jr nc,lb318
	sbc a
.lb318
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,lb32e
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr lb34b
.lb32e
	ld (ix+#18),a
	jr lb34b
.lb333
	ld (ix+#16),a
	jr lb34b
.lb338
	cpl
	sub #0f
	add (ix+#13)
	jr c,lb341
	sub a
.lb341
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,lb34b
	res 5,c
.lb34c equ $ + 1
.lb34b
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,lb363
	ld l,(ix+#09)	; next
	ld h,(ix+#0a)
	ld a,(hl)
.lb363
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b

	ld hl,lb430	; choix fréquence note ?
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lb3c5
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lb38e
	bit 0,c
	jr nz,lb3ac
.lb38e
	bit 5,l
	jr nz,lb39e
	sub (ix+#1b)
	jr nc,lb3a9
	set 5,(ix+#1d)
	sub a
	jr lb3a9

.lb39e
	add (ix+#1b)
	cp b
	jr c,lb3a9
	res 5,(ix+#1d)
	ld a,b
.lb3a9
	ld (ix+#1c),a
.lb3ac
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lb3b7
	dec d
.lb3b7
	add #a0
	jr c,lb3c3
.lb3bb
	sla e
	rl d
	add #18
	jr nc,lb3bb
.lb3c3
	add hl,de
	ex de,hl
.lb3c5
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,lb3f0
	ld b,(ix+#0e)
	djnz lb3ed
	ld c,(ix+#0d)
	bit 7,c
	jr z,lb3dc
	dec b
.lb3dc
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr lb3f0
.lb3ed
	ld (ix+#0e),b
.lb3f0
	bit 0,(ix+#1f)
	jr z,lb403
	res 0,(ix+#1f)
	ld a,#00
	ld (lb116),a
	ld a,#07
	jr lb414
.lb403
	cpl
	and #03
.lb407 equ $ + 1
	ld a,#38
	jr nz,lb414
	ld a,(lb0c9)
	xor #08
	ld (lb116),a
	ld a,#07
.lb414
	ld hl,lb429
	xor (hl)
	and (ix+#20)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.lb422
	defw 0	; reg0-reg1
.lb424
	defw 0	; reg2-reg3
.lb426
	defw 0	; reg4-reg5
.lb428
	db #00		; reg6
.lb429
	db #3f		; reg7
.lb42a
	db #0f		; reg8
.lb42b
	db #0f		; reg9
.lb42c
	db #0f		; reg10
	db #00		; reg11
.lb42e
	db #00		; reg12
	db #00 		; ???
;
; frequency table
;
.lb430
	defw #077c,#0708,#06b0,#0640
	defw #05ec,#0594,#0544,#04f8
	defw #04b0,#0470,#042c,#03f0
	defw #03be,#0384,#0358,#0320
	defw #02f6,#02ca,#02a2,#027c
	defw #0258,#0238,#0216,#01f8
	defw #01df,#01c2,#01ac,#0190
	defw #017b,#0165,#0151,#013e
	defw #012c,#011c,#010b,#00fc
	defw #00ef,#00e1,#00d6,#00c8
	defw #00bd,#00b2,#00a8,#009f
	defw #0096,#008e,#0085,#007e
	defw #0077,#0070,#006b,#0064
	defw #005e,#0059,#0054,#004f
	defw #004b,#0047,#0042,#003f
	defw #003b,#0038,#0035,#0032
	defw #002f,#002c,#002a,#0027
	defw #0025,#0023,#0021,#001f
	defw #001d,#001c,#001a,#0019
	defw #0017,#0016,#0015,#0013
	defw #0012,#0011,#0010,#000f
.lb4d8
	db #05,#06,#1a,#2e,#42,#00,#87,#0c
	db #18,#0c,#0c,#0c,#08,#08,#07,#13
	db #07,#00,#0c,#00,#00,#00,#08,#14
	db #08,#07,#07,#87,#0b,#17,#0b,#0b
	db #0b,#06,#06,#04,#10,#04,#00,#0c
	db #00,#00,#00,#04,#10,#04,#06,#06
	db #87,#06,#12,#06,#06,#06,#04,#04
	db #03,#0f,#03,#00,#0c,#00,#00,#00
	db #03,#0f,#03,#04,#04,#87,#00,#00
	db #00,#0c,#87
.lb523_play_music_yesno
.music_end
	db #00
.lb524	; 1st sequence ptr
	defw lb52a,lb578,lb5ee
.lb52a
	defw lb96d,lb96d,lb695,lb69f
	defw lb6c5,lb69f,lb6d0,lb6db
	defw lb6e7,lb6f8,lb6e7,lb700
	defw lb6e7,lb6f8,lb703,lb714
	defw lb759,lb759,lb770,lb770
	defw lb781,lb781,lb792,lb792
	defw lb759,lb759,lb770,lb770
	defw lb781,lb781,lb792,lb792
	defw lb7a3,lb7a3,lb7b3,lb7b3
	defw lb9dd,lb971,&0000
.lb578
	defw lb90e
	defw lb90e,lb90e,lb90e,lb90e
	defw lb90e,lb90e,lb90e,lb90e
	defw lb90e,lb90e,lb90e,lb90e
	defw lb90e,lb90e,lb90e,lb90e
	defw lb90e,lb90e,lb90e,lb949
	defw lb949,lb949,lb949,lb949
	defw lb949,lb949,lb949,lb949
	defw lb949,lb949,lb949,lb90e
	defw lb90e,lb90e,lb90e,lb90e
	defw lb90e,lb90e,lb90e,lb90e
	defw lb90e,lb949,lb949,lb949
	defw lb949,lb949,lb949,lb949
	defw lb949,lb90e,lb90e,lb90e
	defw lb90e,lb90e,lb90e,lb90e
	defw lb90e,&0000
.lb5ee
	defw lb7c2,lb7c2
	defw lb7c2,lb7c2,lb7c2,lb7c2
	defw lb7c2,lb7c2,lb7c2,lb7c2
	defw lb7e5,lb7e5,lb801,lb81d
	defw lb839,lb855,lb7c2,lb7c2
	defw lb7e5,lb7e5,lb801,lb81d
	defw lb871,lb891,lb8ad,lb8ad
	defw lb81d,lb81d,lb839,lb839
	defw lb855,lb855,lb8ad,lb8c9
	defw lb8ad,lb81d,lb8ad,lb8c9
	defw lb871,lb839,lb8e5,lb7c2
	defw lb7c2,lb7e5,lb7e5,lb839
	defw lb839,lb855,lb855,lb7c2
	defw lb7c2,lb7e5,lb7e5,lb839
	defw lb839,lb855,lb855,lb801
	defw lb801,lb7e5,lb7e5,lb903
	defw lb7c2,lb7c2,lb7c2,lb7c2
	defw lb7e5,lb7e5,lb7e5,lb7e5
	defw lb839,lb839,lb839,lb839
	defw lb855,lb855,lb855,lb855
	defw &0000

	db #89,#fc,#87

	db #89,#00,#87

	db #89,#02,#87

.lb695
	db #8a,#df,#00,#81,#03,#c1,#ff,#38
	db #8f,#87
.lb69f
	db #c0,#88,#01,#01,#82,#e5,#28,#e0
	db #27,#25,#eb,#28,#e3,#25,#27,#28
	db #e5,#2a,#e0,#28,#27,#eb,#2a,#e3
	db #2a,#2c,#2d,#e5,#2d,#e9,#28,#e7
	db #2a,#e3,#2c,#e3,#2d,#87
.lb6c5
	db #e3,#2f,#2d,#2c,#2a,#e3,#2c,#2a
	db #28,#27,#87
.lb6d0
	db #e3,#2f,#2d,#2b,#2a,#e3,#2b,#2a
	db #28,#26,#87
.lb6db
	db #83,#ef,#24,#29,#ff,#2a,#ef,#2a
	db #2f,#ff,#30,#87
.lb6e7
	db #e1,#30,#e0,#2f,#2d,#e5,#30,#e0
	db #2d,#2f,#e1,#30,#e0,#2f,#e0,#2d
	db #87
.lb6f8
	db #e1,#2f,#e0,#2d,#2c,#eb,#2f,#87
.lb700
	db #ef,#32,#87
.lb703
	db #e1,#2f,#e0,#2d,#2b,#e5,#2f,#e1
	db #2f,#e0,#2f,#30,#e1,#32,#ef,#33
	db #87
.lb714
	db #e3,#28,#e1,#27,#e3,#23,#e1,#26
	db #25,#21,#e3,#24,#e1,#23,#1f,#f7
	db #23,#e3,#2f,#e1,#2e,#e3,#2a,#e1
	db #2d,#2c,#28,#e3,#2b,#e1,#2a,#26
	db #f7,#2a,#e3,#34,#e1,#33,#e3,#2f
	db #e1,#32,#31,#2d,#e3,#30,#e1,#2f
	db #2b,#f7,#2f,#e3,#3b,#e1,#3a,#e3
	db #36,#e1,#39,#38,#34,#e3,#37,#e1
	db #36,#32,#f7,#36,#87
.lb759
	db #df,#00,#22,#03,#81,#e1,#c4,#38
	db #34,#31,#e0,#34,#e2,#38,#e0,#34
	db #31,#e1,#39,#e0,#38,#34,#87
.lb770
	db #e1,#39,#36,#31,#e0,#36,#e2,#39
	db #e0,#36,#31,#e1,#3b,#e0,#39,#38
	db #87
.lb781
	db #e1,#36,#34,#33,#e0,#34,#e2,#36
	db #e0,#34,#33,#e1,#39,#e0,#38,#34
	db #87
.lb792
	db #e1,#38,#36,#33,#e0,#36,#e2,#38
	db #e0,#36,#33,#e1,#39,#e0,#38,#36
	db #87
.lb7a3
	db #e1,#39,#38,#34,#e0,#37,#e2,#36
	db #e1,#32,#35,#e0,#34,#e0,#31,#87
.lb7b3
	db #e1,#36,#35,#31,#e0,#34,#e2,#33
	db #e1,#2f,#32,#e0,#31,#2d,#87
.lb7c2
	db #c0,#8a,#df,#00,#41,#05,#e0,#91
	db #0d,#19,#e1,#91,#0d,#81,#e0,#91
	db #0d,#19,#91,#25,#e1,#91,#0d,#e0
	db #19,#e1,#91,#19,#91,#0d,#91,#e0
	db #19,#25,#87
.lb7e5
	db #e0,#91,#12,#1e,#e1,#91,#12,#e0
	db #91,#12,#1e,#91,#2a,#e1,#91,#12
	db #e0,#1e,#e1,#91,#1e,#91,#12,#91
	db #e0,#1e,#2a,#87
.lb801
	db #e0,#91,#09,#15,#e1,#91,#09,#e0
	db #91,#09,#15,#91,#21,#e1,#91,#09
	db #e0,#15,#e1,#91,#15,#91,#09,#91
	db #e0,#15,#21,#87
.lb81d
	db #e0,#91,#0e,#1a,#e1,#91,#0e,#e0
	db #91,#0e,#1a,#91,#26,#e1,#91,#0e
	db #e0,#1a,#e1,#91,#1a,#91,#0e,#91
	db #e0,#1a,#26,#87
.lb839
	db #e0,#91,#0b,#17,#e1,#91,#0b,#e0
	db #91,#0b,#17,#91,#23,#e1,#91,#0b
	db #e0,#17,#e1,#91,#17,#91,#0b,#91
	db #e0,#17,#23,#87
.lb855
	db #e0,#91,#14,#20,#e1,#91,#14,#e0
	db #91,#14,#20,#91,#14,#e1,#91,#14
	db #e0,#20,#e1,#91,#20,#91,#14,#91
	db #e0,#20,#20,#87
.lb871
	db #e0,#91,#13,#1f,#e1,#91,#13,#e0
	db #91,#13,#1f,#91,#2b,#e1,#91,#13
	db #e0,#1f,#e1,#91,#1f,#91,#13,#91
	db #e0,#81,#1f,#88,#01,#01,#2b,#87
.lb891
	db #e0,#91,#0c,#18,#e1,#91,#0c,#e0
	db #91,#0c,#18,#91,#24,#e1,#91,#0c
	db #e0,#18,#e1,#91,#18,#91,#0c,#91
	db #e0,#18,#24,#87
.lb8ad
	db #e0,#91,#11,#1d,#e1,#91,#11,#e0
	db #91,#11,#1d,#91,#29,#e1,#91,#11
	db #e0,#1d,#e1,#91,#1d,#91,#11,#91
	db #e0,#1d,#29,#87
.lb8c9
	db #e0,#91,#10,#1c,#e1,#91,#10,#e0
	db #91,#10,#1c,#91,#28,#e1,#91,#10
	db #e0,#1c,#e1,#91,#1c,#91,#10,#91
	db #e0,#1c,#28,#87
.lb8e5
	db #df,#00,#91,#02,#82,#ef,#10,#8f
	db #8f,#ef,#12,#8f,#8f,#e7,#0b,#0d
	db #e7,#0e,#0f,#ef,#10,#e7,#12,#e7
	db #14,#15,#16,#17,#18,#87
.lb903
	db #df,#00,#91,#02,#ff,#83,#18,#17
	db #18,#20,#87
.lb90e
	db #8b,#df,#00,#01,#10,#e1,#8d,#1f
	db #c0,#8a,#84,#04,#01,#37,#8b,#e2
	db #8d,#07,#8d,#1f,#e1,#8d,#1f,#8d
	db #07,#8a,#84,#04,#01,#32,#8b,#8d
	db #1f,#8a,#84,#04,#01,#32,#e2,#8b
	db #8d,#07,#8d,#1f,#e1,#8a,#84,#04
	db #01,#37,#8b,#8d,#07,#e0,#8d,#07
	db #8d,#07,#87
.lb949
	db #8b,#df,#00,#01,#10,#e1,#8d,#1f
	db #c0,#8a,#91,#84,#04,#01,#2b,#8b
	db #8d,#1f,#8a,#91,#84,#04,#01,#2b
	db #91,#84,#04,#01,#2b,#8b,#8d,#1f
	db #e3,#8d,#07,#87
.lb96d
	db #bc,#ff,#80,#87
.lb971
	db #c0,#8a,#df,#00,#81,#03,#88,#01
	db #01,#82,#e3,#31,#e1,#30,#e3,#2c
	db #e1,#2f,#2e,#2a,#e3,#2d,#e1,#2c
	db #28,#f7,#2c,#c1,#ef,#38,#c0,#e3
	db #36,#e1,#35,#e3,#31,#e1,#34,#33
	db #2f,#e3,#32,#e1,#31,#2d,#f7,#31
	db #ef,#c1,#36,#e3,#c0,#34,#e1,#33
	db #e3,#2f,#e1,#32,#e1,#31,#2d,#e3
	db #30,#e1,#2f,#e1,#2b,#f7,#2f,#ef
	db #c1,#34,#c0,#e3,#38,#e1,#36,#e3
	db #33,#e1,#39,#38,#34,#e3,#38,#e1
	db #36,#e3,#33,#e1,#34,#33,#31,#e3
	db #38,#e1,#36,#e3,#33,#e1,#36,#34
	db #31,#ef,#33,#87
.lb9dd
	db #bc,#81,#c2,#8a,#df,#00,#81,#03
	db #ff,#3c,#c1,#3b,#c2,#3c,#c3,#3c
	db #87
;
.music_info
	db "Saboteur 2 (1987)(Durell Software)(Rob Hubbard)",0
	db "",0

	read "music_end.asm"
