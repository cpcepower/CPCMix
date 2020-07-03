; Music of Shadow Warriors (1990)(Ocean Software)(Matt Furniss)()
; Ripped by Megachur the 01/01/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SHADOWWA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #b39e

	read "music_header.asm"

;
.stop_music
;
	xor a
	ld (lb3a5),a
	jp lb80d
.lb3a7 equ $ + 2
.lb3a6 equ $ + 1
.lb3a5
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb3b3 equ $ + 6
.lb3b2 equ $ + 5
.lb3b1 equ $ + 4
.lb3b0 equ $ + 3
.lb3af equ $ + 2
.lb3ad
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb3bc equ $ + 7
.lb3bb equ $ + 6
.lb3b5
	db #00,#00,#00,#00,#00,#00,#08,#00
.lb3c4 equ $ + 7
.lb3c2 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb3ca equ $ + 5
.lb3c8 equ $ + 3
.lb3c7 equ $ + 2
.lb3c6 equ $ + 1
.lb3c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb3d1 equ $ + 4
.lb3d0 equ $ + 3
	db #00,#00,#00,#10,#00,#00,#00,#00
.lb3dc equ $ + 7
.lb3db equ $ + 6
.lb3da equ $ + 5
.lb3d9 equ $ + 4
.lb3d7 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb3df equ $ + 2
.lb3dd
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb3e5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.init_music		; (1 -> 5 sound fx)
;
	push af
	call lb80d
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,lba68
	add l
	ld l,a
	jr nc,lb40e
	inc h
.lb40e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lb3a7),de
	ld e,(hl)
	inc hl
.lb418
	ld d,(hl)
	inc hl
	ld (lb3bc),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lb3d1),de
	xor a
	ld (lb3b0),a
	ld (lb3c5),a
	ld (lb3da),a
	ld (lb3b5),a
	ld (lb3ca),a
	ld (lb3df),a
	cpl
	ld (lb3b1),a
	ld (lb3c6),a
	ld (lb3db),a
	ld a,#01
	ld (lb3af),a
	ld (lb3c4),a
	ld (lb3d9),a
	ld (lb3b2),a
	ld (lb3c7),a
	ld (lb3dc),a
	ld hl,lb3e5
	ld bc,#030a
.lb45d
	xor a
.lb45e
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,lb45e
	djnz lb45d
	ld hl,lbabc
	ld (lb3ad),hl
	ld (lb3c2),hl
	ld (lb3d7),hl
	ld a,#ff
	ld (lb3b3),a
	ld (lb3c8),a
	ld (lb3dd),a
	ld (lb3a5),a
	ret
;
.play_music
;
	call lb845
	ld a,(lb3a5)
	and a
	ret z
	ld a,(lb3b3)
	or a
	jr z,lb49d
	ld a,(lb3c8)
	or a
	jr z,lb49d
	ld a,(lb3dd)
	or a
.lb49d
	ld (lb3a5),a
	jr nz,lb4b0
	ld a,(lb751)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (lb3a5),a
	ret
.lb4b0
	ld iy,lb3a6
	ld ix,lb752
	call lb4ce
	ld iy,lb3bb
	ld ix,lb764
	call lb4ce
	ld iy,lb3d0
	ld ix,lb776
.lb4ce
	call lb60f
	ld a,(iy+#0b)
	and a
	jr z,lb553
.lb4d7
	dec (iy+#09)
	jr z,lb4ee
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr lb553
.lb4ee
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.lb4f8
	ld a,(hl)
	cp #80
	jr c,lb533
	cp #fe
	jr nz,lb50a
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp lb4f8
.lb50a
	cp #ff
	jr nz,lb513
	xor a
	ld (iy+#0d),a
	ret
.lb513
	cp #c0
	jr nc,lb520
	and #1f
	ld (iy+#09),a
	inc hl
	jp lb4f8
.lb520
	and #07
	add (iy+#00)
	ld de,lb3e5
	add e
	ld e,a
	jr nc,lb52d
	inc d
.lb52d
	inc hl
	ldi
	jp lb4f8
.lb533
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,lba45
	add hl,bc
	ld e,(hl)
	ld hl,lba4e
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr lb559
.lb553
	ld e,(iy+#05)
	ld d,(iy+#06)
.lb559
	dec (iy+#0c)
	jr z,lb56b
	ld a,(de)
	cp #80
	call nc,lb5d5
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.lb56b
	ld a,(de)
	cp #80
	jr c,lb57c
	call lb5d5
	ld a,(iy+#0b)
	and a
	jr z,lb56b
	jp lb4d7
.lb57c
	cp #7f
	jr z,lb5c8
	cp #7e
	jr nz,lb58d
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp lb5a1
.lb58d
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,lb69f
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.lb5a1
	ld a,(iy+#0f)
	or #c0
	ld (iy+#14),a
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld c,a
	ld (iy+#05),e
	ld (iy+#06),d
	ld e,(iy+#07)
	ld a,(iy+#08)
	ld hy,a
	ld ly,e
	bit 7,(ix+#11)
	ret nz
	jp lb788
.lb5c8
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.lb5d5
	ld a,(de)
	cp #88
	jr nc,lb5f3
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,lb3e5
	add hl,bc
	ld c,(hl)
	ld hl,lbabc
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.lb5f3
	cp #ff
	jr nz,lb5fc
	ld (iy+#0b),#ff
	ret
.lb5fc
	cp #c0
	jr nc,lb607
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.lb607
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.lb60f
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,lb623
	res 7,(iy+#14)
	ret
.lb623
	ld d,#07
	bit 6,(iy+#14)
	jr nz,lb657
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,lb657
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,lb646
	inc h
	ld (iy+#11),h
.lb646
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp lb68c
.lb657
	ld hl,lb418
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,lb671
	bit 6,(iy+#14)
	jr nz,lb671
	ld (iy+#13),#01
	ret
.lb671
	res 6,(iy+#14)
	ld a,(hl)
	rrca
	rrca
	rrca
	and d
	ld (iy+#12),a
	ld a,(hl)
	and d
	inc a
	ld (iy+#13),a
	ld (iy+#10),l
	ld (iy+#11),h
	ld a,(iy+#0e)
.lb68c
	add a
	ld hl,lb69f
	add l
	ld l,a
	jr nc,lb695
	inc h
.lb695
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.lb69f
	dw #09fe,#096e,#08e6,#0866
	dw #07f0,#077d,#070f,#06a9
	dw #064a,#05f2,#059b,#054a
	dw #04ff,#04b7,#0474,#0433
	dw #03f7,#03c0,#0389,#0355
	dw #0325,#02f9,#02ce,#02a6
	dw #0280,#025c,#023b,#021a
	dw #01fc,#01e0,#01c4,#01ab
	dw #0193,#017c,#0167,#0153
	dw #0140,#012e,#011d,#010d
	dw #00fe,#00f0,#00e2,#00d6
	dw #00ca,#00be,#00b3,#00a9
	dw #00a0,#0097,#008e,#0086
	dw #007f,#0078,#0071,#006b
	dw #0065,#005f,#005a,#0055
	dw #0050,#004b,#0047,#0043
	dw #003f,#003c,#0038,#0035
	dw #0032,#002f,#002d,#002a
	dw #0028,#0025,#0023,#0021
	dw #001f,#001e,#001c,#001a
	dw #0019,#0017,#0016,#0015
	dw #0014,#0013,#0012,#0011
	dw #0010
.lb757 equ $ + 6
.lb756 equ $ + 5
.lb755 equ $ + 4
.lb752 equ $ + 1
.lb751
	db #bf,#fe,#f7,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb768 equ $ + 7
.lb767 equ $ + 6
.lb764 equ $ + 3
.lb763 equ $ + 2
	db #00,#00,#00,#fd,#ef,#12,#00,#00
.lb769
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb776 equ $ + 5
.lb775 equ $ + 4
	db #00,#00,#00,#00,#00,#fb,#df,#24
.lb77b equ $ + 2
.lb77a equ $ + 1
.lb779
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb787 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00
.lb788
	di
	ld a,ly
	ld (ix+#0f),a
	ld a,hy
	ld (ix+#10),a
	ld (ix+#03),l
	ld (ix+#04),h
	ld (ix+#06),c
	ld a,(iy+#05)
	ld (ix+#07),a
	ld a,(iy+#06)
	and #7f
	srl a
	jr nz,lb7ad
	ld a,#01
.lb7ad
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(lb751)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,lb7d6
	and (ix+#00)
.lb7d6
	bit 1,c
	jr z,lb7dd
	and (ix+#01)
.lb7dd
	ld (lb751),a
	bit 2,c
	jr nz,lb7ee
	ld hl,lb93b
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lb7ee
	ld hl,#ffbf
	ld c,#fd
	ld a,(iy+#00)
	ld e,#0d
	call lb9f3
	ld a,(iy+#04)
	ld e,#0b
	call lb9f3
	inc e
	xor a
	call lb9f3
	ld (ix+#05),#ff
	ret
.lb80d
	ld c,#fd
	ld hl,#ffbf
	ld e,#07
	ld a,(lb751)
	or #3f
	ld (lb751),a
	call lb9f3
	xor a
	inc e
	call lb9f3
	inc e
	call lb9f3
	inc e
	call lb9f3
	ld a,#01
	inc e
	call lb9f3
	inc e
	xor a
	call lb9f3
	inc e
	call lb9f3
	ld (lb763),a
	ld (lb775),a
	ld (lb787),a
	ret
.lb845
	ld a,(lb751)
	and #3f
	cp #3f
	ret z
	ld ix,lb752
	call lb909
	ld ix,lb764
	call lb909
	ld ix,lb776
	call lb909
	ld ix,lb752
	ld hl,#ffbf
	ld c,#fd
	ld e,#07
	ld a,(lb751)
	call lb9f3
	ld e,#00
	ld a,(lb755)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,lb883
	ld d,a
.lb883
	call lb9f3
	inc e
	ld a,(lb756)
	adc (ix+#0a)
	call lb9f3
	inc e
	ld a,(lb767)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,lb89f
	ld d,a
.lb89f
	call lb9f3
	inc e
	ld a,(lb768)
	adc (ix+#1c)
	call lb9f3
	inc e
	ld a,(lb779)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,lb8bb
	ld d,a
.lb8bb
	call lb9f3
	inc e
	ld a,(lb77a)
	adc (ix+#2e)
	call lb9f3
	inc e
	ld a,d
	rrca
	rrca
	rrca
	call lb9f3
	ld e,#08
	ld a,(lb908)
	ld d,a
	ld a,(lb757)
	cp d
	jr c,lb8dd
	ld a,d
.lb8dd
	srl a
	srl a
	srl a
	call lb9f3
	inc e
	ld a,(lb769)
	cp d
	jr c,lb8ee
	ld a,d
.lb8ee
	srl a
	srl a
	srl a
	call lb9f3
	inc e
	ld a,(lb77b)
	cp d
	jr c,lb8ff
	ld a,d
.lb8ff
	srl a
	srl a
	srl a
	jp lb9f3
.lb908
	ld a,a
.lb909
	ld a,(lb751)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,lb92a
	cp #ff
	jr z,lb92a
	dec (ix+#06)
.lb92a
	call lb9b1
	bit 2,(iy+#09)
	jp nz,lb9aa
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.lb93b
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,lb94a
	ld (ix+#05),a
	ret
.lb94a
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,lb95a
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lb95a
	ld a,(ix+#05)
	add (iy+#01)
	jp m,lb96c
	cp (iy+#02)
	jr c,lb96c
	ld (ix+#05),a
	ret
.lb96c
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,lb97c
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lb97c
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,lb98b
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lb98b
	ld a,(ix+#05)
	add (iy+#03)
	jp m,lb998
	ld (ix+#05),a
	ret
.lb998
	ld (ix+#05),#00
	ld a,(lb751)
	or (ix+#02)
	ld (lb751),a
	res 7,(ix+#11)
	ret
.lb9aa
	ld a,(ix+#06)
	and a
	ret nz
	jr lb998
.lb9b1
	ld a,(ix+#07)
	and a
	jr z,lb9be
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.lb9be
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld c,(ix+#0b)
	ld b,(ix+#0c)
	add hl,bc
	ld (ix+#09),l
	ld (ix+#0a),h
	dec (ix+#08)
	ret nz
	ld a,(iy+#06)
	and a
	ret z
	jp p,lb9e2
	ld (ix+#07),#ff
	ret
.lb9e2
	ld (ix+#08),a
	ld a,c
	cpl
	ld c,a
	ld a,b
	cpl
	ld b,a
	inc bc
	ld (ix+#0b),c
	ld (ix+#0c),b
	ret
.lb9f3
	ld d,#c0
	ld c,#00
	ld l,#80
	ld b,#f4
	out (c),e
	ld b,#f6
	out (c),d
	out (c),c
	ld b,#f4
	out (c),a
	ld b,#f6
	out (c),l
	out (c),c
	ret
	db #00,#80,#12,#0c,#12,#06,#12,#06
	db #12,#0c,#12,#06,#10,#0c,#12,#06
	db #12,#06,#12,#06,#12,#0c,#12,#06
	db #12,#06,#10,#0c,#12,#06,#12,#06
	db #12,#0c,#10,#06,#12,#30,#ff,#83
	db #12,#06,#ff,#81,#06,#06,#ff,#87
.lba45 equ $ + 7
	db #1e,#0c,#ff,#7f,#0c,#ff,#82,#25
	db #03,#27,#03,#24,#03,#ff,#7f,#09
.lba4e
	db #ff,#84,#12,#30,#ff,#7f,#30,#ff
	db #0f,#35,#39,#3d,#41,#44,#4c,#4f
	db #53,#ba,#ba,#ba,#ba,#ba,#ba,#ba
	db #ba,#ba
.lba68
	dw lba86,lba8a,lba8e,lba92
	dw lba96,lba9a,lba9e,lbaa2
	dw lbaa6,lbaaa,lbaae,lbab0
	dw lbab2,lbab6,lbaba
.lba8a equ $ + 4
.lba86
	db #fe,#f7,#11,#ff,#fe,#03,#11,#ff
.lba92 equ $ + 4
.lba8e
	db #fe,#0f,#11,#ff,#fe,#00,#12,#ff
.lba9a equ $ + 4
.lba96
	db #fe,#00,#13,#ff,#fe,#0f,#12,#ff
.lbaa2 equ $ + 4
.lba9e
	db #fe,#00,#14,#ff,#fe,#00,#15,#ff
.lbaaa equ $ + 4
.lbaa6
	db #fe,#00,#15,#ff,#fe,#0c,#16,#ff
.lbab2 equ $ + 4
.lbab0 equ $ + 2
.lbaae
	db #17,#ff,#17,#ff,#fe,#00,#18,#ff
.lbabc equ $ + 6
.lbaba equ $ + 4
.lbab6
	db #fe,#02,#18,#ff,#19,#ff,#7f,#fb
	db #00,#ff,#7f,#00,#01,#01,#00,#01
	db #7f,#f8,#00,#ff,#7f,#00,#01,#02
	db #01,#03,#7f,#f1,#00,#ff,#7f,#00
	db #00,#00,#00,#01,#7f,#f8,#00,#ff
	db #7f,#00,#00,#00,#01,#01,#7f,#fd
	db #00,#ff,#7f,#00,#00,#00,#01,#03
	db #7f,#ff,#69,#ff,#7f,#00,#03,#03
	db #00,#01,#7f,#ff,#00,#ff,#7f,#00
	db #01,#02,#00,#01,#28,#f9,#00,#ff
	db #7f,#00,#01,#02,#01,#02,#7f,#ff
	db #00,#ff,#7f,#00,#01,#00,#01,#03
	db #7f,#ff,#00,#ff,#7f,#00,#03,#01
	db #00,#03,#89,#29,#00,#00,#00,#00
	db #00,#00,#89,#21,#00,#00,#00,#00
	db #00,#00,#91,#1a,#00,#00,#00,#00
	db #00,#00,#91,#22,#00,#00,#00,#00
	db #00,#00,#91,#11,#00,#00,#00,#00
	db #00,#00,#89,#19,#00,#00,#00,#00
	db #00,#00,#89,#29,#00,#00,#00,#00
	db #00,#00,#89,#49,#00,#00,#00,#00
	db #00,#00,#0e,#fe,#01,#ff,#7f,#00
	db #04,#11,#00,#01,#53,#00,#28,#7f
	db #fc,#01,#ff,#7f,#00,#00
;
.music_info
	db "Shadow Warriors (1990)(Ocean Software)(Matt Furniss)",0
	db "",0

	read "music_end.asm"
