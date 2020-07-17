; Music of Vixen (1988)(Martech Games)(Jason C. Brooke)()
; Ripped by Megachur the 02/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "VIXEN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #9400
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

;
.play_music
;
	sub a
.l9402 equ $ + 1
.music_end equ $ + 1
	cp #00
	push ix
	jr z,l9442
	ld b,a
	ld ix,l977c
.l940d equ $ + 1
	ld a,#00
.l940f equ $ + 1
	add #00
	ld (l940f),a
	jr nc,l9421
	call l960b
	call l9609
	call l9609
	ld lx,l977c	;#7c
.l9422 equ $ + 1
.l9421
	ld a,#00
	ld (l97d0),a
	ld bc,l97d2
	call l9697
	ld (l97ca),hl
	ld bc,l97d3
	call l9695
	ld (l97cc),hl
	ld bc,l97d4
	call l9695
	ld (l97ce),hl
.l9441
	sub a
.l9443 equ $ + 1
.l9442
	cp #00
	jr z,l94a7
	ld hl,l9778
	dec (hl)
	jr nz,l9454
	ld (l97d4),a
	ld (l9443),a
	jr l94a7
.l9454
	ld de,(l976c)
	ld a,(l9775)
	or a
	jr z,l9474
	ld hl,l977a
	dec (hl)
	jr nz,l9474
	ld (hl),a
	ld hl,l9776
	rrc (hl)
	ld hl,(l9770)
	jr c,l9472
	ld hl,(l9772)
.l9472
	add hl,de
	ex de,hl
.l9474
	ld hl,(l976a)
	add hl,de
	ld a,(l9774)
	or a
	jr z,l948b
	ex de,hl
	ld hl,l9779
	dec (hl)
	jr nz,l948a
	ld (hl),a
	ld de,(l976e)
.l948a
	ex de,hl
.l948b
	ld (l976c),hl
	ld a,#10
	ld (l97d4),a
	ld (l97ce),hl
	ld a,l
	ld hl,l9777
	rrc (hl)
	ld hl,l977e
	res 0,(hl)
	jr nc,l94a7
	inc (hl)
	ld (l97d0),a
.l94a7
	ld hl,l977e
	ld a,#fe
	or (hl)
	dec l
	ld c,(hl)
	dec l
	rr c
	rla
	ld c,(hl)
	rr c
	rla
	ld c,a
	add a
	add a
	add a
	xor c
	ld (l97d1),a
	sub a
.l94c1 equ $ + 1
	cp #00
	ld hl,l97d6
	ld c,a
	ld de,#0cf6
	jr z,l94d0
	inc d
	inc l
	ld (l94c1),a
.l94d0
	ld a,#c0
.l94d2
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
	jp p,l94d2
	pop ix
	ret
;
.init_music
;
	push bc
	push de
	push hl
	ld de,l977d
	ld bc,#004d
	ld hl,l9402
	push hl
	ld (hl),b
.l94fa
	ld hl,l977c
	push hl
	ld (hl),b
	ldir
	ld hl,l994c
	ld c,a
	add a
	add c
	add a
	add a
	add c
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld (l940d),a
	ex (sp),ix
	ld bc,#0301
	ld a,#ff
	ld (l940f),a
.l951b
	ld a,(hl)
	ld (ix+#0f),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#2d),c
	ld (ix+#09),e
	ld (ix+#0c),d
	ld a,(de)
	ld (ix+#03),a
	inc e
	ld a,(de)
	ld (ix+#06),a
	inc lx
	djnz l951b
	pop ix
	pop hl
	ld (hl),c
	pop hl
	pop de
	pop bc
	ret
	push bc
	push de
	push hl
	add a
	ld c,a
	add a
	add a
	ld b,#00
	ld hl,l9e7e
	add hl,bc
	ld c,a
	add hl,bc
	add hl,bc
	ld de,l976a
	ld c,#0f
	sub a
	ld (l9443),a
	ldir
	ld c,#03
	ld de,l97d5
	ldir
	ld hl,(l9774)
	ld (l9779),hl
	inc a
	ld (l9443),a
	ld (l94c1),a
	pop hl
	pop de
	pop bc
	ret
	db #e0,#7a,#46,#6e,#71,#1a,#57,#82
	db #05,#38,#7b,#75,#30
	ld hl,l9441
	ex (sp),hl
;
.stop_music
;
	sub a
	ld (l9402),a
	ld (l97d2),a
	ld (l97d3),a
	ld (l97d4),a
	ret
	ld a,(ix+#15)
	ld l,(ix+#09)
	ld h,(ix+#0c)
	add #02
	cp (ix+#0f)
	jr c,l95ac
	ld a,(ix+#12)
.l95ac
	ld c,a
	add hl,bc
	ld e,(hl)
	inc l
	ld d,(hl)
	ld (ix+#15),a
	jr l961e
	ld (ix+#33),a
	jr l961e
	ld a,(de)
	inc de
	ld (ix+#48),a
	jr l961e
	ld a,(de)
	inc de
	ld (ix+#24),a
	ld a,(de)
	inc de
	ld (ix+#27),a
	ld a,(de)
	inc de
	ld (ix+#2a),a
	set 3,(ix+#4b)
	jr l961e
	ld a,(de)
	inc de
	ld (ix+#42),a
	ld a,(de)
	inc de
	ld (ix+#45),a
	add a
	ld (ix+#3f),a
	set 4,(ix+#4b)
	jr l961e
	set 7,(ix+#4b)
	set 6,(ix+#4b)
	jr l961e
	ld (ix+#4b),b
	jr l961e
	ld a,(de)
	inc de
	ld (l9757),a
	set 2,(ix+#4b)
	set 1,(ix+#4b)
	jr l961e
.l9609
	inc lx
.l960b
	dec (ix+#2d)
	ld a,(ix+#4b)
	jr nz,l964e
	and #30
	ld (ix+#4b),a
	ld e,(ix+#03)
	ld d,(ix+#06)
.l961e
	ld a,(de)
	inc de
	cp #b0
	jr c,l9642
	add #20
	jr c,l9637
	add #20
	jr c,l963d
	ld c,a
	ld hl,l9883
	add hl,bc
	ld c,(hl)
	ld (ix+#1e),c
	jr l961e
.l9637
	inc a
	ld (ix+#30),a
	jr l961e
.l963d
	ld (ix+#3c),a
	jr l961e
.l9642
	or a
	jp p,l9660
	ld c,a
	ld hl,l94fa
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l964e
	add a
	ret p
	sbc a
	or #01
	add (ix+#33)
	ld (ix+#33),a
	ret
	ld (ix+#39),#f0
	jr l9688
.l9660
	ld (ix+#18),b
	ld (ix+#1b),b
	bit 7,(ix+#33)
	ld (ix+#33),a
	jr nz,l9675
	ld (ix+#39),b
	ld (ix+#36),b
.l9675
	ld c,(ix+#1e)
	ld (ix+#21),c
	ld c,b
	sub #54
	jr c,l9685
	ld c,#02
	ld (l9422),a
.l9685
	ld (ix+#00),c
.l9688
	ld a,(ix+#30)
	ld (ix+#2d),a
	ld (ix+#06),d
	ld (ix+#03),e
	ret
.l9695
	inc lx
.l9697
	ld d,#00
	ld a,(ix+#39)
	cp #f0
	jr nc,l96bb
	sub #10
	ld (ix+#39),a
	jr nc,l96bb
	ld hl,l9990
	ld e,(ix+#3c)
	add hl,de
	ld a,(hl)
	add (ix+#36)
	ld e,a
	add hl,de
	ld a,(hl)
	inc (ix+#36)
	ld (ix+#39),a
.l96bb
	or #f0
	add #0f		; #0e
	inc a
	jr c,l96c3
	sub a
.l96c3
	ld (bc),a
	ld hl,l9979
	ld e,(ix+#21)
	inc e
	add hl,de
	ld a,(hl)
	or a
	jp p,l96da
	inc a
	jr z,l96dd
	ld e,(ix+#1e)
	dec a
	and #7f
.l96da
	ld (ix+#21),e
.l96dd
	add (ix+#33)
	add (ix+#48)
	add a
	ld hl,l97d8
	ld e,a
	add hl,de
	ld e,(hl)
	inc l
	ld d,(hl)
	ld c,(ix+#4b)
	bit 4,c
	jr z,l971e
	sub a
	or (ix+#42)
	jr nz,l96fb
	inc a
	and c
.l96fb
	ld b,(ix+#3f)
	ld l,a
	ld a,(ix+#45)
	bit 5,c
	jr nz,l970d
	sub l
	jr nz,l9713
	set 5,c
	jr l9713
.l970d
	add l
	cp b
	jr nz,l9713
	res 5,c
.l9713
	ld (ix+#45),a
	srl b
	sub b
	ld l,a
	sbc a
	ld h,a
	add hl,de
	ex de,hl
.l971e
	ld a,c
	xor #01
	ld (ix+#4b),a
	bit 3,c
	jr z,l9747
	ld b,(ix+#2a)
	djnz l9744
	ld c,(ix+#24)
	ld b,(ix+#27)
	ld l,(ix+#18)
	ld h,(ix+#1b)
	add hl,bc
	ld (ix+#18),l
	ld (ix+#1b),h
	add hl,de
	ex de,hl
	jr l9747
.l9744
	ld (ix+#2a),b
.l9747
	cpl
	and #03
	ld a,(ix+#00)
	ld c,a
	res 0,c
	rra
	jr nz,l975a
	ld hl,l97d0
.l9757 equ $ + 1
	ld (hl),#10
	or #01
.l975a
	or c
	bit 2,(ix+#4b)
	jr z,l9765
	res 1,(ix+#4b)
.l9765
	ld (ix+#00),a
	ex de,hl
	ret
.l9770 equ $ + 6
.l976e equ $ + 4
.l976c equ $ + 2
.l976a
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9779 equ $ + 7
.l9778 equ $ + 6
.l9777 equ $ + 5
.l9776 equ $ + 4
.l9775 equ $ + 3
.l9774 equ $ + 2
.l9772
	db #00,#00,#00,#00,#00,#00,#00,#00
.l977a
	db #00,#00
.l977e equ $ + 2
.l977d equ $ + 1
.l977c
	db #54,#68,#69,#73,#20,#41,#59,#20
	db #73,#6f,#75,#6e,#64,#20,#6d,#6f
	db #64,#75,#6c,#65,#20,#69,#73,#20
	db #63,#6f,#70,#79,#72,#69,#67,#68
	db #74,#20,#28,#43,#29,#20,#31,#39
	db #38,#37,#2f,#38,#38,#20,#4a,#61
	db #73,#2e,#43,#2e,#42,#72,#6f,#6f
	db #6b,#65,#2e,#20,#20,#2d,#50,#72
	db #65,#70,#61,#72,#65,#20,#74,#6f
	db #20,#64,#69,#65,#21,#2d
.l97d1 equ $ + 7
.l97d0 equ $ + 6
.l97ce equ $ + 4
.l97cc equ $ + 2
.l97ca
	db #00,#00,#00,#00,#00,#00,#00,#00
.l97d6 equ $ + 4
.l97d5 equ $ + 3
.l97d4 equ $ + 2
.l97d3 equ $ + 1
.l97d2
	db #00,#00,#00,#00,#00,#00
.l97d8
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
.l9883 equ $ + 3
.l9880
	dw l9a20,l9a20,l9a20,l9a20
	dw l9a6c,l9a6c,l9a6c,l9a6c
	dw l9a6c,l9a6c,l9c4f,l9c4f
	dw l9a6c,l9a6c,l9a6c,l9a6c
	dw l9a6c,l9a6c,l9c4f,l9c4f
	dw l9c4f,l9c4f,l9c4d,l9c4d
.l98b0
	dw l9a3f,l9a3f,l9a3f,l9a3f
	dw l9b6c,l9b6c,l9bd9,l9bd9
	dw l9cb3,l9cb3,l9cb3,l9cb3
	dw l9cb3,l9cb3,l9cb3,l9cb3
	dw l9a20,l9a20,l9a20,l9a20
	dw l9a20,l9a20,l9a20,l9a20
	dw l9b6c,l9b6c,l9bd9,l9cb3
	dw l9cb3,l9cb3,l9cb3,l9cb3
	dw l9cb3,l9cb3,l9cb3,l9d00
	dw l9d00,l9cfe,l9cfe
.l98fe
	dw l9a54,l9a54,l9a54,l9a54
	dw l9b97,l9b97,l9b97,l9b97
	dw l9b97,l9b97,l9cc5,l9cc5
	dw l9a54,l9a54,l9a54,l9a54
	dw l9a54,l9a54,l9a54,l9a54
	dw l9b97,l9b97,l9b97,l9b97
	dw l9cc5,l9cc5,l9d39,l9d39
	dw l9d37,l9d37
.l993e equ $ + 4
.l993c equ $ + 2
.l993a
	dw l9d7d,l9df3,l9e3d,l9e3d
.l9948 equ $ + 6
.l9946 equ $ + 4
	dw l9e5c,l9e5c,l99e7,l99f8
.l994a
	dw l9a08
.l994c
	db #46,#30,#08
	dw l9880
	db #4e,#08
	dw l98b0
	db #3c,#08
	dw l98fe
	db #40,#02,#00
	dw l993a
	db #02,#00
	dw l993c
	db #08,#00
	dw l993e
	db #40,#ff,#ff
	dw l9946
	db #ff,#ff
	dw l9948
	db #ff,#ff
	dw l994a
.l9979 equ $ + 6
	db #00,#01,#05,#09,#0d,#10,#13,#80
	db #0c,#0b,#07,#81,#0c,#00,#0c,#ff
	db #0c,#0c,#00,#80,#07,#04,#80,#0c
.l9990 equ $ + 5
	db #07,#84,#10,#0c,#87,#08,#17,#20
	db #24,#33,#40,#40,#49,#0d,#0e,#1d
	db #0c,#1b,#1a,#19,#08,#17,#06,#15
	db #04,#03,#02,#01,#f0,#0a,#0d,#0c
	db #1b,#1a,#19,#08,#17,#06,#f5,#0e
	db #0c,#0b,#1a,#f9,#0f,#0e,#0d,#0c
	db #1b,#ea,#ea,#ea,#ea,#ea,#b9,#b8
	db #b7,#b6,#b5,#f4,#0c,#0d,#1b,#1a
	db #19,#18,#07,#16,#05,#04,#03,#02
	db #01,#f0,#0b,#0a,#18,#17,#16,#15
	db #14,#03,#02,#01,#f0,#1c,#2b,#4a
.l99e7 equ $ + 4
	db #79,#78,#77,#f6,#c0,#86,#02,#04
	db #e1,#10,#e3,#10,#e1,#10,#e3,#0b
.l99f8 equ $ + 5
	db #0b,#10,#eb,#80,#88,#c2,#86,#02
	db #04,#e1,#28,#e3,#26,#e5,#2a,#e3
.l9a08 equ $ + 5
	db #26,#28,#eb,#80,#88,#c2,#86,#02
	db #04,#e1,#20,#8c,#23,#8c,#20,#8c
	db #23,#1e,#8c,#23,#8c,#1e,#8c,#23
.l9a20 equ $ + 5
	db #e3,#20,#eb,#80,#88,#c4,#86,#02
	db #04,#e5,#82,#32,#00,#01,#17,#82
	db #32,#00,#01,#17,#e3,#80,#e5,#82
	db #2a,#00,#01,#23,#82,#2a,#00,#01
.l9a3f equ $ + 4
	db #23,#e3,#80,#85,#c6,#e3,#5f,#5f
	db #c4,#5f,#c6,#e1,#5f,#e3,#5e,#5e
	db #e1,#5e,#c4,#5e,#c6,#5d,#5c,#5b
.l9a54 equ $ + 1
	db #85,#c6,#b1,#86,#00,#01,#e3,#28
	db #e1,#28,#28,#e3,#2b,#e1,#28,#e3
	db #28,#28,#e1,#28,#2b,#28,#28,#2b
.l9a6c equ $ + 1
	db #85,#8b,#0b,#c0,#e3,#10,#c5,#e1
	db #82,#2a,#00,#01,#23,#c0,#10,#e3
	db #c4,#8a,#82,#2a,#00,#01,#23,#e1
	db #c5,#8a,#82,#2a,#00,#01,#23,#e3
	db #c0,#8a,#10,#10,#c5,#e1,#82,#2a
	db #00,#01,#23,#c4,#8a,#82,#2a,#00
	db #01,#23,#c5,#8b,#0a,#82,#2a,#00
	db #01,#23,#8b,#09,#c0,#12,#c5,#8b
	db #08,#82,#2a,#00,#01,#23,#8b,#0b
	db #c0,#e3,#13,#c5,#e1,#82,#2a,#00
	db #01,#23,#c0,#13,#e3,#c4,#8a,#82
	db #2a,#00,#01,#23,#e1,#c5,#8a,#82
	db #2a,#00,#01,#23,#e3,#c0,#8a,#13
	db #13,#c5,#e1,#82,#2a,#00,#01,#23
	db #c4,#8a,#82,#2a,#00,#01,#23,#c5
	db #8b,#0a,#82,#2a,#00,#01,#23,#8b
	db #09,#c0,#17,#c5,#8b,#08,#82,#2a
	db #00,#01,#23,#8b,#0b,#c0,#e3,#15
	db #c5,#e1,#82,#2a,#00,#01,#23,#c0
	db #15,#e3,#c4,#8a,#82,#2a,#00,#01
	db #23,#e1,#c5,#8a,#82,#2a,#00,#01
	db #23,#e3,#c0,#8a,#15,#15,#c5,#e1
	db #82,#2a,#00,#01,#23,#c4,#8a,#82
	db #2a,#00,#01,#23,#c0,#8b,#0a,#13
	db #8b,#09,#12,#8b,#08,#10,#8b,#0b
	db #e3,#10,#c5,#e1,#82,#2a,#00,#01
	db #23,#c0,#10,#e3,#c4,#8a,#82,#2a
	db #00,#01,#23,#e1,#c5,#8a,#82,#2a
	db #00,#01,#23,#e3,#c0,#8a,#10,#10
	db #c5,#e1,#82,#2a,#00,#01,#23,#c4
	db #8a,#82,#2a,#00,#01,#23,#c0,#8b
	db #0a,#13,#8b,#09,#12,#8b,#08,#10
.l9b6c equ $ + 1
	db #85,#b0,#c2,#86,#02,#04,#ef,#28
	db #e3,#28,#23,#25,#28,#26,#28,#e7
	db #26,#ef,#86,#0c,#18,#8c,#26,#86
	db #02,#04,#ef,#25,#e5,#25,#28,#e3
	db #26,#86,#02,#04,#ef,#28,#86,#0c
.l9b97 equ $ + 4
	db #18,#8c,#28,#85,#b0,#c2,#86,#02
	db #04,#eb,#23,#86,#0c,#18,#8c,#e7
	db #23,#86,#02,#04,#e3,#20,#23,#21
	db #eb,#23,#86,#0c,#18,#8c,#23,#86
	db #02,#04,#e3,#1f,#20,#eb,#21,#86
	db #0c,#18,#8c,#21,#86,#02,#04,#e3
	db #1f,#21,#eb,#23,#86,#0c,#18,#8c
	db #23,#e1,#86,#02,#04,#8c,#25,#8c
.l9bd9 equ $ + 6
	db #23,#8c,#25,#8c,#21,#85,#c2,#86
	db #02,#04,#e1,#28,#e3,#26,#28,#e1
	db #2b,#8c,#e3,#2c,#c6,#28,#23,#c2
	db #2c,#28,#e5,#2b,#e9,#26,#ef,#86
	db #0c,#18,#8c,#26,#86,#02,#04,#e1
	db #28,#e3,#26,#28,#e5,#2d,#c6,#e3
	db #28,#23,#c2,#2d,#2d,#e5,#2f,#e3
	db #2c,#e5,#28,#c4,#e3,#b2,#28,#26
	db #23,#20,#b0,#c2,#e1,#28,#e3,#26
	db #28,#e1,#2b,#8c,#e3,#2c,#c6,#28
	db #23,#c2,#2c,#28,#e5,#2b,#e9,#26
	db #ef,#86,#0c,#18,#8c,#26,#86,#02
	db #04,#e1,#28,#e3,#26,#28,#e5,#2d
	db #c6,#e3,#28,#23,#c2,#2d,#28,#e5
	db #2c,#e9,#28,#ef,#86,#0c,#18,#8c
.l9c4f equ $ + 4
.l9c4d equ $ + 2
	db #28,#85,#89,#02,#8b,#03,#e3,#15
	db #15,#8b,#0b,#1c,#e1,#15,#8b,#03
	db #e3,#15,#8a,#15,#e1,#15,#8b,#0b
	db #e3,#1c,#8b,#03,#15,#8a,#13,#13
	db #8b,#0b,#1a,#e1,#13,#8b,#03,#e3
	db #13,#8a,#13,#e1,#13,#8b,#0b,#e3
	db #1a,#8b,#03,#13,#8a,#12,#12,#8b
	db #0b,#19,#e1,#12,#8b,#03,#e3,#12
	db #8a,#12,#e1,#12,#8b,#0b,#e3,#19
	db #8b,#03,#12,#8a,#10,#10,#8b,#0b
	db #17,#e1,#10,#8b,#03,#e3,#10,#8a
	db #10,#e1,#10,#8b,#0b,#17,#8b,#04
	db #1c,#8a,#17,#8a,#1c,#89,#00,#85
.l9cb3
	db #c3,#86,#03,#06,#e1,#28,#8c,#e3
	db #26,#e9,#28,#86,#08,#10,#ef,#8c
.l9cc5 equ $ + 2
	db #28,#85,#86,#02,#04,#c4,#e3,#23
	db #23,#e5,#25,#e3,#23,#23,#e1,#25
	db #e3,#25,#23,#e3,#23,#23,#e5,#26
	db #e3,#23,#23,#e1,#26,#e3,#26,#23
	db #e3,#21,#21,#e5,#25,#e3,#21,#21
	db #e1,#25,#e3,#25,#21,#e3,#23,#21
	db #e5,#23,#e3,#23,#23,#e1,#26,#e3
.l9d00 equ $ + 5
.l9cfe equ $ + 3
	db #25,#23,#85,#89,#02,#c3,#b0,#86
	db #01,#02,#eb,#28,#e3,#2a,#2b,#2a
	db #28,#26,#ef,#2b,#c4,#b2,#e3,#2f
	db #e1,#2f,#e3,#2d,#e1,#2b,#2d,#2f
	db #c2,#b0,#eb,#25,#e3,#2a,#2d,#2c
	db #2a,#28,#e7,#2c,#28,#c4,#b2,#e3
	db #2f,#e1,#2f,#e3,#2d,#e1,#2c,#2d
.l9d39 equ $ + 6
.l9d37 equ $ + 4
	db #2f,#89,#00,#85,#89,#02,#e3,#c3
	db #86,#01,#02,#2d,#8c,#31,#8c,#2d
	db #8c,#31,#8c,#2d,#8c,#31,#8c,#2d
	db #8c,#31,#2f,#8c,#32,#8c,#2f,#8c
	db #32,#8c,#2f,#8c,#32,#8c,#2f,#8c
	db #32,#2d,#8c,#31,#8c,#2d,#8c,#31
	db #8c,#2d,#8c,#31,#8c,#2d,#8c,#31
	db #2f,#8c,#34,#8c,#2f,#8c,#34,#8c
	db #2f,#8c,#34,#8c,#2f,#8c,#34,#89
.l9d7d equ $ + 2
	db #00,#85,#c1,#86,#03,#06,#8b,#04
	db #e3,#10,#e1,#8a,#17,#e3,#10,#e1
	db #10,#8a,#17,#8a,#10,#8a,#e3,#10
	db #e1,#8a,#17,#e3,#10,#e1,#10,#8a
	db #17,#8a,#0b,#8a,#e3,#09,#e1,#8a
	db #15,#e3,#09,#e1,#09,#8a,#15,#8a
	db #09,#8a,#e3,#09,#e1,#8a,#15,#e3
	db #09,#e1,#09,#8a,#15,#8a,#0d,#8a
	db #e3,#0e,#e1,#8a,#15,#e3,#0e,#e1
	db #0e,#8a,#15,#8a,#0e,#8a,#e3,#0e
	db #e1,#8a,#15,#e3,#0e,#e1,#0e,#8a
	db #15,#8a,#0e,#8a,#e3,#0b,#e1,#8a
	db #17,#e3,#0b,#e1,#0b,#8a,#17,#8a
	db #0b,#8a,#e3,#0b,#e1,#8a,#17,#e3
	db #0b,#e1,#0b,#8a,#17,#8a,#0f,#85
.l9df3
	db #86,#00,#01,#b4,#e3,#c4,#28,#c5
	db #28,#28,#28,#b0,#26,#e1,#28,#b4
	db #c4,#e3,#28,#e1,#28,#e3,#28,#b6
	db #e3,#21,#c5,#21,#21,#21,#b0,#26
	db #28,#b6,#c4,#21,#21,#b5,#e3,#26
	db #c5,#26,#26,#26,#b0,#26,#e1,#28
	db #b5,#c4,#e3,#26,#e1,#26,#e3,#26
	db #b6,#e3,#23,#c5,#23,#23,#23,#b0
	db #27,#28,#e1,#2a,#b6,#c4,#23,#23
.l9e3d equ $ + 2
	db #23,#85,#86,#02,#04,#c7,#ef,#23
	db #e3,#20,#21,#23,#20,#e7,#21,#f7
	db #1c,#ef,#1e,#e3,#21,#20,#1e,#1c
	db #ef,#1e,#e3,#1e,#20,#21,#23,#b0
.l9e5c equ $ + 1
	db #85,#c7,#ef,#28,#e3,#26,#25,#26
	db #28,#e7,#25,#f7,#21,#eb,#26,#e3
	db #21,#26,#25,#23,#21,#ef,#23,#c5
	db #e3,#21,#e1,#23,#e3,#21,#e1,#20
.l9e7e equ $ + 3
	db #e3,#1e,#85,#00,#00,#0b,#00,#11
	db #00,#00,#00,#ff,#ff,#00,#02,#00
	db #ff,#10,#b7,#03,#0c,#00,#00,#0f
	db #00,#0f,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#0c,#b7,#03,#09,#08
	db #00,#68,#01,#68,#01,#2b,#00,#d5
	db #7f,#00,#01,#55,#00,#12,#5a,#00
	db #0c,#d9,#ff,#00,#00,#00,#00,#0c
	db #00,#f7,#ff,#14,#01,#ab,#ff,#3c
	db #58,#1b,#09,#e8,#7f,#db,#00,#dc
	db #00,#28,#00,#d8,#7f,#00,#01,#55
	db #00,#08,#d0,#07,#09,#14,#00,#28
	db #00,#28,#00,#00,#00,#00,#00,#04
	db #00,#00,#00,#1a,#b8,#0b,#09,#00
	db #00,#5a,#00,#5a,#00,#e2,#7f,#1e
	db #00,#00,#02,#55,#00,#0c,#e8,#03
	db #09,#0f,#00,#db,#00,#db,#00,#17
	db #00,#e9,#7f,#00,#01,#55,#00,#0f
	db #60,#09,#09,#03,#00,#77,#00,#77
	db #00,#08,#00,#f8,#7f,#00,#01,#33
	db #00,#23,#2c,#01,#0e,#fe,#7f,#b4
	db #00,#b4,#00,#f4,#7f,#13,#00,#00
	db #01,#37,#00,#2c,#1c,#25,#09,#02
	db #00,#64,#00,#64,#00,#11,#00,#f2
	db #7f,#00,#01,#74,#00,#2c,#1c,#25
	db #09,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
;	
; #977c
; db "This AY sound module is copyright (C) 1987/88 Jas.C.Brooke.  -Prepare to die!-"
;
; #52e6
; ld a,#0e
; ld (#96be),a	; volume ?
; ld a,#00
; call #94ec	; init
;
.music_info
	db "Vixen (1988)(Martech Games)(Jason C. Brooke)",0
	db "This AY sound module is copyright (C) 1987/88 Jas.C.Brooke.  -Prepare to die!-",0

	read "music_end.asm"
